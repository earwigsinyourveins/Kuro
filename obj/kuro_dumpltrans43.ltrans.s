	.file	"<artificial>"
	.text
	.p2align 4
	.def	__Z11hio_read16bP10HIO_HANDLE.part.0;	.scl	3;	.type	32;	.endef
__Z11hio_read16bP10HIO_HANDLE.part.0:
LFB0:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	%ebx, (%esp)
	.cfi_offset 3, -12
	movl	8(%eax), %ebx
	movl	8(%ebx), %ecx
	movl	4(%ebx), %edx
	testl	%ecx, %ecx
	js	L2
	testl	%edx, %edx
	js	L3
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	movl	%ecx, %esi
	subl	%edx, %esi
	cmpl	$1, %esi
	jle	L5
	movl	4(%esp), %esi
	.cfi_restore 6
L2:
	movl	(%ebx), %eax
	movzwl	(%eax,%edx), %eax
	addl	$2, %edx
	movl	%edx, 4(%ebx)
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	rolw	$8, %ax
	ret
	.p2align 4,,10
	.p2align 3
L5:
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	4(%esp), %esi
	.cfi_restore 6
	movl	%ecx, %edx
L3:
	movl	%edx, 4(%ebx)
	movl	$-1, 12(%eax)
	movl	$-1, %eax
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE0:
	.p2align 4
	.def	__Z11hio_read32bP10HIO_HANDLE.part.0;	.scl	3;	.type	32;	.endef
__Z11hio_read32bP10HIO_HANDLE.part.0:
LFB3:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	%ebx, (%esp)
	.cfi_offset 3, -12
	movl	8(%eax), %ebx
	movl	8(%ebx), %ecx
	movl	4(%ebx), %edx
	testl	%ecx, %ecx
	js	L9
	testl	%edx, %edx
	js	L10
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	movl	%ecx, %esi
	subl	%edx, %esi
	cmpl	$3, %esi
	jle	L12
	movl	4(%esp), %esi
	.cfi_restore 6
L9:
	movl	(%ebx), %eax
	movl	(%eax,%edx), %eax
	addl	$4, %edx
	movl	%edx, 4(%ebx)
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	bswap	%eax
	ret
	.p2align 4,,10
	.p2align 3
L12:
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	4(%esp), %esi
	.cfi_restore 6
	movl	%ecx, %edx
L10:
	movl	%edx, 4(%ebx)
	movl	$-1, 12(%eax)
	movl	$-1, %eax
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE3:
	.p2align 4
	.def	__ZL10xlat_volfxP9xmp_event;	.scl	3;	.type	32;	.endef
__ZL10xlat_volfxP9xmp_event:
LFB6:
	.cfi_startproc
	movzbl	2(%eax), %ecx
	movl	%eax, %edx
	movb	$0, 2(%edx)
	movl	%ecx, %eax
	cmpl	$64, %ecx
	jg	L15
	addl	$1, %eax
	movb	%al, 2(%edx)
	ret
	.p2align 4,,10
	.p2align 3
L15:
	cmpb	$124, %cl
	ja	L17
	leal	-75(%ecx), %ecx
	cmpb	$49, %cl
	ja	L18
	movzbl	%cl, %ecx
	jmp	*L20(,%ecx,4)
	.section .rdata,"dr"
	.align 4
L20:
	.long	L24
	.long	L24
	.long	L24
	.long	L24
	.long	L24
	.long	L24
	.long	L24
	.long	L24
	.long	L24
	.long	L24
	.long	L23
	.long	L23
	.long	L23
	.long	L23
	.long	L23
	.long	L23
	.long	L23
	.long	L23
	.long	L23
	.long	L23
	.long	L22
	.long	L22
	.long	L22
	.long	L22
	.long	L22
	.long	L22
	.long	L22
	.long	L22
	.long	L22
	.long	L22
	.long	L21
	.long	L21
	.long	L21
	.long	L21
	.long	L21
	.long	L21
	.long	L21
	.long	L21
	.long	L21
	.long	L21
	.long	L19
	.long	L19
	.long	L19
	.long	L19
	.long	L19
	.long	L19
	.long	L19
	.long	L19
	.long	L19
	.long	L19
	.text
	.p2align 4,,10
	.p2align 3
L17:
	cmpb	$-54, %cl
	ja	L25
	cmpb	$-64, %cl
	ja	L26
	addl	$-128, %eax
	cmpb	$64, %al
	ja	L36
	sall	$2, %eax
	cmpl	$192, %ecx
	movl	$-1, %ecx
	movb	$8, 5(%edx)
	cmove	%ecx, %eax
	movb	%al, 6(%edx)
	ret
	.p2align 4,,10
	.p2align 3
L22:
	subl	$95, %eax
	movb	$-63, 5(%edx)
	movb	%al, 6(%edx)
	ret
	.p2align 4,,10
	.p2align 3
L23:
	subl	$85, %eax
	movb	$-64, 5(%edx)
	movb	%al, 6(%edx)
	ret
	.p2align 4,,10
	.p2align 3
L24:
	subl	$75, %eax
	movb	$-61, 5(%edx)
	movb	%al, 6(%edx)
	ret
	.p2align 4,,10
	.p2align 3
L21:
	leal	92(,%eax,4), %eax
	movb	$2, 5(%edx)
	movb	%al, 6(%edx)
	ret
	.p2align 4,,10
	.p2align 3
L19:
	leal	52(,%eax,4), %eax
	movb	$1, 5(%edx)
	movb	%al, 6(%edx)
	ret
	.p2align 4,,10
	.p2align 3
L26:
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	$-128, %eax
	movb	$3, 5(%edx)
	movl	$134480128, 2(%esp)
	movl	$1614815248, 6(%esp)
	movw	%ax, 10(%esp)
	movzbl	-191(%esp,%ecx), %eax
	movb	%al, 6(%edx)
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L25:
	addl	$53, %eax
	cmpb	$9, %al
	ja	L37
	movb	$4, 5(%edx)
	movb	%al, 6(%edx)
	ret
	.p2align 4,,10
	.p2align 3
L18:
	subl	$65, %eax
	movb	$-62, 5(%edx)
	movb	%al, 6(%edx)
	ret
	.p2align 4,,10
	.p2align 3
L36:
	ret
	.p2align 4,,10
	.p2align 3
L37:
	ret
	.cfi_endproc
LFE6:
	.p2align 4
	.globl	__Z28libxmp_mix_mono_8bit_nearestP11mixer_voicePiiiiiiii
	.def	__Z28libxmp_mix_mono_8bit_nearestP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
__Z28libxmp_mix_mono_8bit_nearestP11mixer_voicePiiiiiiii:
LFB7:
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
	subl	$16, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	16(%ebp), %esi
	movl	8(%ebp), %eax
	movl	12(%ebp), %ecx
	testl	%esi, %esi
	je	L45
	fldl	32(%eax)
	movl	92(%eax), %edi
	fnstcw	14(%esp)
	movzwl	14(%esp), %eax
	orb	$12, %ah
	movw	%ax, 12(%esp)
	fld	%st(0)
	fldcw	12(%esp)
	fistpq	(%esp)
	fldcw	14(%esp)
	fldcw	12(%esp)
	fistl	8(%esp)
	fldcw	14(%esp)
	fildl	8(%esp)
	fsubrp	%st, %st(1)
	fmuls	LC0
	fldcw	12(%esp)
	fistpl	8(%esp)
	fldcw	14(%esp)
	movl	8(%esp), %edx
	addl	$32768, %edx
	movl	%edx, %ebx
	movzwl	%dx, %edx
	sarl	$16, %ebx
	addl	(%esp), %ebx
	.p2align 6
	.p2align 4
	.p2align 3
L40:
	movsbl	(%edi,%ebx), %eax
	addl	28(%ebp), %edx
	addl	$4, %ecx
	sall	$8, %eax
	imull	20(%ebp), %eax
	addl	%eax, -4(%ecx)
	movl	%edx, %eax
	sarl	$16, %eax
	movzwl	%dx, %edx
	addl	%eax, %ebx
	subl	$1, %esi
	jne	L40
L45:
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
LFE7:
	.p2align 4
	.globl	__Z29libxmp_mix_mono_16bit_nearestP11mixer_voicePiiiiiiii
	.def	__Z29libxmp_mix_mono_16bit_nearestP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
__Z29libxmp_mix_mono_16bit_nearestP11mixer_voicePiiiiiiii:
LFB8:
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
	subl	$16, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	16(%ebp), %esi
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	testl	%esi, %esi
	je	L54
	fldl	32(%eax)
	movl	92(%eax), %edi
	fnstcw	14(%esp)
	movzwl	14(%esp), %eax
	orb	$12, %ah
	movw	%ax, 12(%esp)
	fld	%st(0)
	fldcw	12(%esp)
	fistpq	(%esp)
	fldcw	14(%esp)
	fldcw	12(%esp)
	fistl	8(%esp)
	fldcw	14(%esp)
	fildl	8(%esp)
	fsubrp	%st, %st(1)
	fmuls	LC0
	fldcw	12(%esp)
	fistpl	8(%esp)
	fldcw	14(%esp)
	movl	8(%esp), %eax
	addl	$32768, %eax
	movl	%eax, %ebx
	movzwl	%ax, %eax
	sarl	$16, %ebx
	addl	(%esp), %ebx
	.p2align 5
	.p2align 4
	.p2align 3
L49:
	addl	28(%ebp), %eax
	addl	$4, %edx
	movswl	(%edi,%ebx,2), %ecx
	imull	20(%ebp), %ecx
	addl	%ecx, -4(%edx)
	movl	%eax, %ecx
	movzwl	%ax, %eax
	sarl	$16, %ecx
	addl	%ecx, %ebx
	subl	$1, %esi
	jne	L49
L54:
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
LFE8:
	.p2align 4
	.globl	__Z30libxmp_mix_stereo_8bit_nearestP11mixer_voicePiiiiiiii
	.def	__Z30libxmp_mix_stereo_8bit_nearestP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
__Z30libxmp_mix_stereo_8bit_nearestP11mixer_voicePiiiiiiii:
LFB9:
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
	subl	$24, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	16(%ebp), %esi
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	testl	%esi, %esi
	je	L63
	movl	92(%eax), %ebx
	fldl	32(%eax)
	fnstcw	22(%esp)
	movl	%ebx, 16(%esp)
	movzwl	22(%esp), %eax
	orb	$12, %ah
	movw	%ax, 20(%esp)
	fld	%st(0)
	fldcw	20(%esp)
	fistpq	8(%esp)
	fldcw	22(%esp)
	fldcw	20(%esp)
	fistl	4(%esp)
	fldcw	22(%esp)
	fildl	4(%esp)
	fsubrp	%st, %st(1)
	fmuls	LC0
	fldcw	20(%esp)
	fistpl	4(%esp)
	fldcw	22(%esp)
	movl	4(%esp), %ecx
	addl	$32768, %ecx
	movl	%ecx, %ebx
	movzwl	%cx, %ecx
	sarl	$16, %ebx
	addl	8(%esp), %ebx
	.p2align 6
	.p2align 4
	.p2align 3
L58:
	movl	16(%esp), %eax
	movl	24(%ebp), %edi
	addl	28(%ebp), %ecx
	movsbl	(%eax,%ebx), %eax
	sall	$8, %eax
	imull	%eax, %edi
	addl	%edi, (%edx)
	addl	$8, %edx
	imull	20(%ebp), %eax
	addl	%eax, -4(%edx)
	movl	%ecx, %eax
	movzwl	%cx, %ecx
	sarl	$16, %eax
	addl	%eax, %ebx
	subl	$1, %esi
	jne	L58
L63:
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
LFE9:
	.p2align 4
	.globl	__Z31libxmp_mix_stereo_16bit_nearestP11mixer_voicePiiiiiiii
	.def	__Z31libxmp_mix_stereo_16bit_nearestP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
__Z31libxmp_mix_stereo_16bit_nearestP11mixer_voicePiiiiiiii:
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
	andl	$-8, %esp
	subl	$24, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	16(%ebp), %esi
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	testl	%esi, %esi
	je	L72
	movl	92(%edx), %ebx
	fldl	32(%edx)
	fnstcw	22(%esp)
	movl	%ebx, 16(%esp)
	movzwl	22(%esp), %edx
	orb	$12, %dh
	movw	%dx, 20(%esp)
	fld	%st(0)
	fldcw	20(%esp)
	fistpq	8(%esp)
	fldcw	22(%esp)
	fldcw	20(%esp)
	fistl	4(%esp)
	fldcw	22(%esp)
	fildl	4(%esp)
	fsubrp	%st, %st(1)
	fmuls	LC0
	fldcw	20(%esp)
	fistpl	4(%esp)
	fldcw	22(%esp)
	movl	4(%esp), %edx
	addl	$32768, %edx
	movl	%edx, %ebx
	movzwl	%dx, %edx
	sarl	$16, %ebx
	addl	8(%esp), %ebx
	.p2align 6
	.p2align 4
	.p2align 3
L67:
	movl	16(%esp), %edi
	addl	28(%ebp), %edx
	movswl	(%edi,%ebx,2), %ecx
	movl	24(%ebp), %edi
	imull	%ecx, %edi
	addl	%edi, (%eax)
	addl	$8, %eax
	imull	20(%ebp), %ecx
	addl	%ecx, -4(%eax)
	movl	%edx, %ecx
	movzwl	%dx, %edx
	sarl	$16, %ecx
	addl	%ecx, %ebx
	subl	$1, %esi
	jne	L67
L72:
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
LFE10:
	.p2align 4
	.globl	__Z27libxmp_mix_mono_8bit_linearP11mixer_voicePiiiiiiii
	.def	__Z27libxmp_mix_mono_8bit_linearP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
__Z27libxmp_mix_mono_8bit_linearP11mixer_voicePiiiiiiii:
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
	andl	$-8, %esp
	subl	$24, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %eax
	movl	12(%ebp), %edi
	movl	16(%ebp), %ebx
	movl	92(%eax), %ecx
	fnstcw	22(%esp)
	movl	%ecx, 16(%esp)
	movzwl	22(%esp), %edx
	orb	$12, %dh
	movw	%dx, 20(%esp)
	fldl	32(%eax)
	fld	%st(0)
	fldcw	20(%esp)
	fistpq	8(%esp)
	fldcw	22(%esp)
	movl	8(%esp), %ecx
	fldcw	20(%esp)
	fistl	8(%esp)
	fldcw	22(%esp)
	fildl	8(%esp)
	fsubrp	%st, %st(1)
	fmuls	LC0
	fldcw	20(%esp)
	fistpl	8(%esp)
	fldcw	22(%esp)
	movl	8(%esp), %edx
	cmpl	32(%ebp), %ebx
	jle	L79
	movl	72(%eax), %eax
	subl	32(%ebp), %ebx
	movl	%ebx, 4(%esp)
	xorl	%ebx, %ebx
	movl	%eax, 8(%esp)
	.p2align 4
	.p2align 3
L76:
	movl	16(%esp), %eax
	movsbl	(%eax,%ecx), %esi
	movsbl	1(%eax,%ecx), %eax
	sall	$8, %esi
	sall	$8, %eax
	subl	%esi, %eax
	movl	%eax, %edi
	movl	%edx, %eax
	addl	28(%ebp), %edx
	sarl	%eax
	imull	%eax, %edi
	movl	%edi, %eax
	sarl	$15, %eax
	addl	%esi, %eax
	movl	8(%esp), %esi
	sarl	$8, %esi
	imull	%esi, %eax
	movl	12(%ebp), %esi
	addl	%eax, (%esi,%ebx,4)
	movl	36(%ebp), %eax
	addl	$1, %ebx
	addl	%eax, 8(%esp)
	movl	%edx, %eax
	movzwl	%dx, %edx
	sarl	$16, %eax
	addl	%eax, %ecx
	cmpl	%ebx, 4(%esp)
	jne	L76
	movl	4(%esp), %eax
	leal	(%esi,%eax,4), %edi
L75:
	movl	32(%ebp), %eax
	testl	%eax, %eax
	je	L85
	.p2align 4
	.p2align 3
L78:
	movl	16(%esp), %eax
	addl	$4, %edi
	movsbl	(%eax,%ecx), %ebx
	movsbl	1(%eax,%ecx), %eax
	sall	$8, %ebx
	sall	$8, %eax
	subl	%ebx, %eax
	movl	%eax, %esi
	movl	%edx, %eax
	addl	28(%ebp), %edx
	sarl	%eax
	imull	%eax, %esi
	movl	%esi, %eax
	sarl	$15, %eax
	addl	%ebx, %eax
	imull	20(%ebp), %eax
	addl	%eax, -4(%edi)
	movl	%edx, %eax
	sarl	$16, %eax
	movzwl	%dx, %edx
	addl	%eax, %ecx
	subl	$1, 32(%ebp)
	jne	L78
L85:
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
L79:
	.cfi_restore_state
	movl	%ebx, 32(%ebp)
	jmp	L75
	.cfi_endproc
LFE11:
	.p2align 4
	.globl	__Z28libxmp_mix_mono_16bit_linearP11mixer_voicePiiiiiiii
	.def	__Z28libxmp_mix_mono_16bit_linearP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
__Z28libxmp_mix_mono_16bit_linearP11mixer_voicePiiiiiiii:
LFB12:
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
	subl	$24, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %edx
	movl	12(%ebp), %edi
	movl	16(%ebp), %ebx
	movl	92(%edx), %eax
	fnstcw	22(%esp)
	movl	%eax, 16(%esp)
	movzwl	22(%esp), %eax
	orb	$12, %ah
	movw	%ax, 20(%esp)
	fldl	32(%edx)
	fld	%st(0)
	fldcw	20(%esp)
	fistpq	8(%esp)
	fldcw	22(%esp)
	movl	8(%esp), %ecx
	fldcw	20(%esp)
	fistl	8(%esp)
	fldcw	22(%esp)
	fildl	8(%esp)
	fsubrp	%st, %st(1)
	fmuls	LC0
	fldcw	20(%esp)
	fistpl	8(%esp)
	fldcw	22(%esp)
	movl	8(%esp), %eax
	cmpl	32(%ebp), %ebx
	jle	L92
	movl	72(%edx), %esi
	subl	32(%ebp), %ebx
	movl	%ebx, 4(%esp)
	xorl	%ebx, %ebx
	movl	%esi, 8(%esp)
	.p2align 4
	.p2align 3
L89:
	movl	16(%esp), %edx
	movswl	(%edx,%ecx,2), %esi
	movswl	2(%edx,%ecx,2), %edx
	subl	%esi, %edx
	movl	%edx, %edi
	movl	%eax, %edx
	addl	28(%ebp), %eax
	sarl	%edx
	imull	%edx, %edi
	movl	%edi, %edx
	movl	36(%ebp), %edi
	sarl	$15, %edx
	addl	%esi, %edx
	movl	8(%esp), %esi
	addl	%edi, 8(%esp)
	sarl	$8, %esi
	imull	%esi, %edx
	movl	12(%ebp), %esi
	addl	%edx, (%esi,%ebx,4)
	movl	%eax, %edx
	addl	$1, %ebx
	movzwl	%ax, %eax
	sarl	$16, %edx
	addl	%edx, %ecx
	cmpl	%ebx, 4(%esp)
	jne	L89
	movl	4(%esp), %ebx
	leal	(%esi,%ebx,4), %edi
L88:
	movl	32(%ebp), %edx
	testl	%edx, %edx
	je	L98
	.p2align 6
	.p2align 4
	.p2align 3
L91:
	movl	16(%esp), %esi
	movl	16(%esp), %ebx
	addl	$4, %edi
	movswl	(%ebx,%ecx,2), %ebx
	movswl	2(%esi,%ecx,2), %edx
	subl	%ebx, %edx
	movl	%edx, %esi
	movl	%eax, %edx
	addl	28(%ebp), %eax
	sarl	%edx
	imull	%edx, %esi
	movl	%esi, %edx
	sarl	$15, %edx
	addl	%ebx, %edx
	imull	20(%ebp), %edx
	addl	%edx, -4(%edi)
	movl	%eax, %edx
	sarl	$16, %edx
	movzwl	%ax, %eax
	addl	%edx, %ecx
	subl	$1, 32(%ebp)
	jne	L91
L98:
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
L92:
	.cfi_restore_state
	movl	%ebx, 32(%ebp)
	jmp	L88
	.cfi_endproc
LFE12:
	.p2align 4
	.globl	__Z29libxmp_mix_stereo_8bit_linearP11mixer_voicePiiiiiiii
	.def	__Z29libxmp_mix_stereo_8bit_linearP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
__Z29libxmp_mix_stereo_8bit_linearP11mixer_voicePiiiiiiii:
LFB13:
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
	subl	$24, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %eax
	movl	12(%ebp), %edi
	movl	16(%ebp), %esi
	movl	92(%eax), %ecx
	fnstcw	22(%esp)
	movl	%ecx, 16(%esp)
	movzwl	22(%esp), %edx
	orb	$12, %dh
	movw	%dx, 20(%esp)
	fldl	32(%eax)
	fld	%st(0)
	fldcw	20(%esp)
	fistpq	8(%esp)
	fldcw	22(%esp)
	movl	8(%esp), %ecx
	fldcw	20(%esp)
	fistl	8(%esp)
	fldcw	22(%esp)
	fildl	8(%esp)
	fsubrp	%st, %st(1)
	fmuls	LC0
	fldcw	20(%esp)
	fistpl	8(%esp)
	fldcw	22(%esp)
	movl	8(%esp), %edx
	cmpl	32(%ebp), %esi
	jle	L105
	movl	72(%eax), %ebx
	movl	76(%eax), %eax
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	movl	%edi, %ebx
	.p2align 4
	.p2align 3
L102:
	movl	16(%esp), %eax
	movl	%edx, %edi
	addl	28(%ebp), %edx
	sarl	%edi
	subl	$1, 8(%esp)
	movsbl	(%eax,%ecx), %esi
	movsbl	1(%eax,%ecx), %eax
	sall	$8, %esi
	sall	$8, %eax
	subl	%esi, %eax
	imull	%edi, %eax
	movl	4(%esp), %edi
	sarl	$15, %eax
	addl	%esi, %eax
	movl	%edi, %esi
	sarl	$8, %esi
	imull	%eax, %esi
	addl	%esi, (%ebx)
	movl	40(%ebp), %esi
	addl	$8, %ebx
	addl	%edi, %esi
	movl	(%esp), %edi
	movl	%esi, 4(%esp)
	movl	%edi, %esi
	sarl	$8, %esi
	imull	%eax, %esi
	movl	36(%ebp), %eax
	addl	%esi, -4(%ebx)
	leal	(%edi,%eax), %esi
	movl	%edx, %eax
	movzwl	%dx, %edx
	sarl	$16, %eax
	movl	%esi, (%esp)
	addl	%eax, %ecx
	movl	8(%esp), %eax
	cmpl	%eax, 32(%ebp)
	jne	L102
	movl	%eax, %ebx
	movl	16(%ebp), %eax
	movl	12(%ebp), %edi
	subl	%ebx, %eax
	leal	(%edi,%eax,8), %edi
L101:
	movl	8(%esp), %eax
	testl	%eax, %eax
	je	L111
	.p2align 4
	.p2align 3
L104:
	movl	16(%esp), %eax
	movsbl	(%eax,%ecx), %ebx
	movsbl	1(%eax,%ecx), %eax
	sall	$8, %ebx
	sall	$8, %eax
	subl	%ebx, %eax
	movl	%eax, %esi
	movl	%edx, %eax
	addl	28(%ebp), %edx
	sarl	%eax
	imull	%eax, %esi
	movl	%esi, %eax
	sarl	$15, %eax
	addl	%ebx, %eax
	movl	24(%ebp), %ebx
	imull	%eax, %ebx
	addl	%ebx, (%edi)
	addl	$8, %edi
	imull	20(%ebp), %eax
	addl	%eax, -4(%edi)
	movl	%edx, %eax
	movzwl	%dx, %edx
	sarl	$16, %eax
	addl	%eax, %ecx
	subl	$1, 8(%esp)
	jne	L104
L111:
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
L105:
	.cfi_restore_state
	movl	%esi, 8(%esp)
	jmp	L101
	.cfi_endproc
LFE13:
	.p2align 4
	.globl	__Z30libxmp_mix_stereo_16bit_linearP11mixer_voicePiiiiiiii
	.def	__Z30libxmp_mix_stereo_16bit_linearP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
__Z30libxmp_mix_stereo_16bit_linearP11mixer_voicePiiiiiiii:
LFB14:
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
	subl	$24, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %edx
	movl	12(%ebp), %edi
	movl	16(%ebp), %esi
	movl	92(%edx), %eax
	fnstcw	22(%esp)
	movl	%eax, 16(%esp)
	movzwl	22(%esp), %eax
	orb	$12, %ah
	movw	%ax, 20(%esp)
	fldl	32(%edx)
	fld	%st(0)
	fldcw	20(%esp)
	fistpq	8(%esp)
	fldcw	22(%esp)
	movl	8(%esp), %ecx
	fldcw	20(%esp)
	fistl	8(%esp)
	fldcw	22(%esp)
	fildl	8(%esp)
	fsubrp	%st, %st(1)
	fmuls	LC0
	fldcw	20(%esp)
	fistpl	8(%esp)
	fldcw	22(%esp)
	movl	8(%esp), %eax
	cmpl	32(%ebp), %esi
	jle	L118
	movl	72(%edx), %ebx
	movl	%esi, 8(%esp)
	movl	%ebx, (%esp)
	movl	76(%edx), %ebx
	movl	%ebx, 4(%esp)
	movl	%edi, %ebx
	.p2align 4
	.p2align 3
L115:
	movl	16(%esp), %edx
	movl	%eax, %edi
	addl	28(%ebp), %eax
	sarl	%edi
	subl	$1, 8(%esp)
	movswl	(%edx,%ecx,2), %esi
	movswl	2(%edx,%ecx,2), %edx
	subl	%esi, %edx
	imull	%edi, %edx
	movl	4(%esp), %edi
	sarl	$15, %edx
	addl	%esi, %edx
	movl	%edi, %esi
	sarl	$8, %esi
	imull	%edx, %esi
	addl	%esi, (%ebx)
	movl	40(%ebp), %esi
	addl	$8, %ebx
	addl	%edi, %esi
	movl	(%esp), %edi
	movl	%esi, 4(%esp)
	movl	%edi, %esi
	sarl	$8, %esi
	imull	%edx, %esi
	addl	%esi, -4(%ebx)
	movl	36(%ebp), %esi
	movl	%eax, %edx
	sarl	$16, %edx
	movzwl	%ax, %eax
	addl	%edi, %esi
	addl	%edx, %ecx
	movl	8(%esp), %edi
	movl	%esi, (%esp)
	cmpl	%edi, 32(%ebp)
	jne	L115
	movl	16(%ebp), %esi
	movl	%edi, %ebx
	movl	12(%ebp), %edi
	subl	%ebx, %esi
	leal	(%edi,%esi,8), %edi
L114:
	movl	8(%esp), %edx
	testl	%edx, %edx
	je	L124
	.p2align 4
	.p2align 3
L117:
	movl	16(%esp), %esi
	movl	16(%esp), %ebx
	movswl	2(%esi,%ecx,2), %edx
	movswl	(%ebx,%ecx,2), %ebx
	subl	%ebx, %edx
	movl	%edx, %esi
	movl	%eax, %edx
	addl	28(%ebp), %eax
	sarl	%edx
	imull	%edx, %esi
	movl	%esi, %edx
	sarl	$15, %edx
	addl	%ebx, %edx
	movl	24(%ebp), %ebx
	imull	%edx, %ebx
	addl	%ebx, (%edi)
	addl	$8, %edi
	imull	20(%ebp), %edx
	addl	%edx, -4(%edi)
	movl	%eax, %edx
	movzwl	%ax, %eax
	sarl	$16, %edx
	addl	%edx, %ecx
	subl	$1, 8(%esp)
	jne	L117
L124:
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
L118:
	.cfi_restore_state
	movl	%esi, 8(%esp)
	jmp	L114
	.cfi_endproc
LFE14:
	.p2align 4
	.globl	__Z34libxmp_mix_mono_8bit_linear_filterP11mixer_voicePiiiiiiii
	.def	__Z34libxmp_mix_mono_8bit_linear_filterP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
__Z34libxmp_mix_mono_8bit_linear_filterP11mixer_voicePiiiiiiii:
LFB15:
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
	subl	$48, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %ecx
	movl	16(%ebp), %edx
	movl	92(%ecx), %eax
	fnstcw	46(%esp)
	movl	%eax, 8(%esp)
	movzwl	46(%esp), %eax
	orb	$12, %ah
	movw	%ax, 44(%esp)
	fldl	32(%ecx)
	fld	%st(0)
	fldcw	44(%esp)
	fistpq	32(%esp)
	fldcw	46(%esp)
	movl	32(%esp), %edi
	fldcw	44(%esp)
	fistl	32(%esp)
	fldcw	46(%esp)
	fildl	32(%esp)
	fsubrp	%st, %st(1)
	fmuls	LC0
	fldcw	44(%esp)
	fistpl	32(%esp)
	fldcw	46(%esp)
	movl	32(%esp), %esi
	movl	104(%ecx), %eax
	movl	%eax, 32(%esp)
	movl	108(%ecx), %eax
	movl	%eax, 24(%esp)
	movl	112(%ecx), %eax
	movl	%eax, 20(%esp)
	movl	116(%ecx), %eax
	movl	%eax, 16(%esp)
	movl	120(%ecx), %eax
	movl	%eax, 12(%esp)
	cmpl	32(%ebp), %edx
	jle	L131
	movl	72(%ecx), %eax
	subl	32(%ebp), %edx
	movl	%esi, 40(%esp)
	xorl	%esi, %esi
	movl	%edx, 4(%esp)
	movl	%eax, 28(%esp)
	jmp	L128
	.p2align 4,,10
	.p2align 3
L132:
	movl	%eax, 32(%esp)
L128:
	movl	8(%esp), %ebx
	movl	40(%esp), %edx
	movsbl	(%ebx,%edi), %eax
	movsbl	1(%ebx,%edi), %ecx
	sarl	%edx
	sall	$8, %eax
	sall	$8, %ecx
	subl	%eax, %ecx
	imull	%edx, %ecx
	sarl	$15, %ecx
	addl	%eax, %ecx
	movl	20(%esp), %eax
	imull	%ecx
	movl	%eax, %ecx
	movl	%edx, %ebx
	movl	32(%esp), %eax
	imull	16(%esp)
	addl	%eax, %ecx
	movl	24(%esp), %eax
	adcl	%edx, %ebx
	imull	12(%esp)
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	%eax, %ecx
	movl	$65535, %eax
	movl	28(%esp), %ebx
	shrdl	$16, %edx, %ecx
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	$-65536, %eax
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%ebx, %ecx
	addl	36(%ebp), %ebx
	sarl	$8, %ecx
	movl	%ebx, 28(%esp)
	movl	%ecx, %edx
	movl	12(%ebp), %ecx
	imull	%eax, %edx
	addl	%edx, (%ecx,%esi,4)
	movl	40(%esp), %edx
	addl	$1, %esi
	addl	28(%ebp), %edx
	movzwl	%dx, %ebx
	movl	%edx, %ecx
	movl	%ebx, 40(%esp)
	movl	32(%esp), %ebx
	sarl	$16, %ecx
	addl	%ecx, %edi
	movl	%ebx, 24(%esp)
	cmpl	%esi, 4(%esp)
	jne	L132
	movl	4(%esp), %ebx
	movl	40(%esp), %esi
	movl	%eax, 28(%esp)
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	(%eax,%ebx,4), %eax
	movl	%eax, 12(%ebp)
	movl	32(%ebp), %eax
	testl	%eax, %eax
	je	L137
L135:
	movl	%esi, 40(%esp)
	movl	12(%ebp), %esi
	movl	%ecx, 8(%ebp)
	jmp	L130
	.p2align 4,,10
	.p2align 3
L134:
	movl	%eax, 28(%esp)
L130:
	movl	8(%esp), %ebx
	movl	40(%esp), %edx
	movsbl	(%ebx,%edi), %eax
	movsbl	1(%ebx,%edi), %ecx
	sarl	%edx
	sall	$8, %eax
	sall	$8, %ecx
	subl	%eax, %ecx
	imull	%edx, %ecx
	sarl	$15, %ecx
	addl	%eax, %ecx
	movl	20(%esp), %eax
	imull	%ecx
	movl	%eax, %ecx
	movl	%edx, %ebx
	movl	28(%esp), %eax
	imull	16(%esp)
	addl	%eax, %ecx
	movl	32(%esp), %eax
	adcl	%edx, %ebx
	imull	12(%esp)
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	%eax, %ecx
	movl	$65535, %eax
	movl	20(%ebp), %ebx
	shrdl	$16, %edx, %ecx
	movl	40(%esp), %edx
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	$-65536, %eax
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	addl	28(%ebp), %edx
	addl	$4, %esi
	movl	%edx, %ecx
	sarl	$16, %ecx
	imull	%eax, %ebx
	addl	%ebx, -4(%esi)
	movzwl	%dx, %ebx
	addl	%ecx, %edi
	subl	$1, 32(%ebp)
	movl	%ebx, 40(%esp)
	movl	28(%esp), %ebx
	movl	%ebx, 32(%esp)
	jne	L134
	movl	8(%ebp), %ecx
L129:
	movl	%eax, 104(%ecx)
	movl	28(%esp), %eax
	movl	%eax, 108(%ecx)
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
L131:
	.cfi_restore_state
	movl	32(%esp), %eax
	movl	%edx, 32(%ebp)
	movl	%eax, 28(%esp)
	movl	24(%esp), %eax
	movl	%eax, 32(%esp)
	movl	32(%ebp), %eax
	testl	%eax, %eax
	jne	L135
	.p2align 4
	.p2align 3
L137:
	movl	32(%esp), %esi
	movl	28(%esp), %eax
	movl	%esi, 28(%esp)
	jmp	L129
	.cfi_endproc
LFE15:
	.p2align 4
	.globl	__Z35libxmp_mix_mono_16bit_linear_filterP11mixer_voicePiiiiiiii
	.def	__Z35libxmp_mix_mono_16bit_linear_filterP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
__Z35libxmp_mix_mono_16bit_linear_filterP11mixer_voicePiiiiiiii:
LFB16:
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
	subl	$48, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %ecx
	movl	16(%ebp), %edx
	movl	92(%ecx), %eax
	fnstcw	46(%esp)
	movl	%eax, 8(%esp)
	movzwl	46(%esp), %eax
	orb	$12, %ah
	movw	%ax, 44(%esp)
	fldl	32(%ecx)
	fld	%st(0)
	fldcw	44(%esp)
	fistpq	32(%esp)
	fldcw	46(%esp)
	movl	32(%esp), %edi
	fldcw	44(%esp)
	fistl	32(%esp)
	fldcw	46(%esp)
	fildl	32(%esp)
	fsubrp	%st, %st(1)
	fmuls	LC0
	fldcw	44(%esp)
	fistpl	32(%esp)
	fldcw	46(%esp)
	movl	32(%esp), %esi
	movl	104(%ecx), %eax
	movl	%eax, 32(%esp)
	movl	108(%ecx), %eax
	movl	%eax, 24(%esp)
	movl	112(%ecx), %eax
	movl	%eax, 20(%esp)
	movl	116(%ecx), %eax
	movl	%eax, 16(%esp)
	movl	120(%ecx), %eax
	movl	%eax, 12(%esp)
	cmpl	32(%ebp), %edx
	jle	L143
	movl	72(%ecx), %eax
	subl	32(%ebp), %edx
	movl	%esi, 40(%esp)
	xorl	%esi, %esi
	movl	%edx, 4(%esp)
	movl	%eax, 28(%esp)
	jmp	L140
	.p2align 4,,10
	.p2align 3
L144:
	movl	%eax, 32(%esp)
L140:
	movl	8(%esp), %ebx
	movl	40(%esp), %edx
	movswl	(%ebx,%edi,2), %eax
	movswl	2(%ebx,%edi,2), %ecx
	sarl	%edx
	subl	%eax, %ecx
	imull	%edx, %ecx
	sarl	$15, %ecx
	addl	%eax, %ecx
	movl	20(%esp), %eax
	imull	%ecx
	movl	%eax, %ecx
	movl	%edx, %ebx
	movl	32(%esp), %eax
	imull	16(%esp)
	addl	%eax, %ecx
	movl	24(%esp), %eax
	adcl	%edx, %ebx
	imull	12(%esp)
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	%eax, %ecx
	movl	$65535, %eax
	movl	28(%esp), %ebx
	shrdl	$16, %edx, %ecx
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	$-65536, %eax
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%ebx, %ecx
	addl	36(%ebp), %ebx
	sarl	$8, %ecx
	movl	%ebx, 28(%esp)
	movl	%ecx, %edx
	movl	12(%ebp), %ecx
	imull	%eax, %edx
	addl	%edx, (%ecx,%esi,4)
	movl	40(%esp), %edx
	addl	$1, %esi
	addl	28(%ebp), %edx
	movzwl	%dx, %ebx
	movl	%edx, %ecx
	movl	%ebx, 40(%esp)
	movl	32(%esp), %ebx
	sarl	$16, %ecx
	addl	%ecx, %edi
	movl	%ebx, 24(%esp)
	cmpl	%esi, 4(%esp)
	jne	L144
	movl	4(%esp), %ebx
	movl	40(%esp), %esi
	movl	%eax, 28(%esp)
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	(%eax,%ebx,4), %eax
	movl	%eax, 12(%ebp)
	movl	32(%ebp), %eax
	testl	%eax, %eax
	je	L149
L147:
	movl	%esi, 40(%esp)
	movl	12(%ebp), %esi
	movl	%ecx, 8(%ebp)
	jmp	L142
	.p2align 4,,10
	.p2align 3
L146:
	movl	%eax, 28(%esp)
L142:
	movl	8(%esp), %ebx
	movl	40(%esp), %edx
	movswl	(%ebx,%edi,2), %eax
	movswl	2(%ebx,%edi,2), %ecx
	sarl	%edx
	subl	%eax, %ecx
	imull	%edx, %ecx
	sarl	$15, %ecx
	addl	%eax, %ecx
	movl	20(%esp), %eax
	imull	%ecx
	movl	%eax, %ecx
	movl	%edx, %ebx
	movl	28(%esp), %eax
	imull	16(%esp)
	addl	%eax, %ecx
	movl	32(%esp), %eax
	adcl	%edx, %ebx
	imull	12(%esp)
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	%eax, %ecx
	movl	$65535, %eax
	movl	20(%ebp), %ebx
	shrdl	$16, %edx, %ecx
	movl	40(%esp), %edx
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	$-65536, %eax
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	addl	28(%ebp), %edx
	addl	$4, %esi
	movl	%edx, %ecx
	sarl	$16, %ecx
	imull	%eax, %ebx
	addl	%ebx, -4(%esi)
	movzwl	%dx, %ebx
	addl	%ecx, %edi
	subl	$1, 32(%ebp)
	movl	%ebx, 40(%esp)
	movl	28(%esp), %ebx
	movl	%ebx, 32(%esp)
	jne	L146
	movl	8(%ebp), %ecx
L141:
	movl	%eax, 104(%ecx)
	movl	28(%esp), %eax
	movl	%eax, 108(%ecx)
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
L143:
	.cfi_restore_state
	movl	32(%esp), %eax
	movl	%edx, 32(%ebp)
	movl	%eax, 28(%esp)
	movl	24(%esp), %eax
	movl	%eax, 32(%esp)
	movl	32(%ebp), %eax
	testl	%eax, %eax
	jne	L147
	.p2align 4
	.p2align 3
L149:
	movl	32(%esp), %esi
	movl	28(%esp), %eax
	movl	%esi, 28(%esp)
	jmp	L141
	.cfi_endproc
LFE16:
	.p2align 4
	.globl	__Z36libxmp_mix_stereo_8bit_linear_filterP11mixer_voicePiiiiiiii
	.def	__Z36libxmp_mix_stereo_8bit_linear_filterP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
__Z36libxmp_mix_stereo_8bit_linear_filterP11mixer_voicePiiiiiiii:
LFB17:
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
	subl	$64, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %ecx
	movl	16(%ebp), %ebx
	movl	92(%ecx), %eax
	fnstcw	62(%esp)
	movl	%eax, 12(%esp)
	movzwl	62(%esp), %eax
	orb	$12, %ah
	movw	%ax, 60(%esp)
	fldl	32(%ecx)
	fld	%st(0)
	fldcw	60(%esp)
	fistpq	48(%esp)
	fldcw	62(%esp)
	movl	104(%ecx), %eax
	movl	%eax, 44(%esp)
	fldcw	60(%esp)
	fistl	56(%esp)
	fldcw	62(%esp)
	fildl	56(%esp)
	fsubrp	%st, %st(1)
	fmuls	LC0
	fldcw	60(%esp)
	fistpl	56(%esp)
	fldcw	62(%esp)
	movl	108(%ecx), %eax
	movl	%eax, 20(%esp)
	movl	112(%ecx), %eax
	movl	%eax, 16(%esp)
	movl	116(%ecx), %eax
	movl	%eax, 32(%esp)
	movl	120(%ecx), %eax
	movl	%eax, 28(%esp)
	movl	96(%ecx), %eax
	movl	%eax, 40(%esp)
	movl	100(%ecx), %eax
	movl	%eax, 24(%esp)
	cmpl	32(%ebp), %ebx
	jle	L155
	movl	72(%ecx), %eax
	movl	%ebx, 36(%esp)
	movl	%eax, (%esp)
	movl	76(%ecx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	jmp	L152
	.p2align 4,,10
	.p2align 3
L156:
	movl	%ecx, 40(%esp)
	movl	%eax, 44(%esp)
L152:
	movl	48(%esp), %edi
	movl	12(%esp), %esi
	movl	56(%esp), %ecx
	movsbl	(%esi,%edi), %eax
	movsbl	1(%esi,%edi), %edx
	sarl	%ecx
	sall	$8, %eax
	sall	$8, %edx
	subl	%eax, %edx
	imull	%ecx, %edx
	sarl	$15, %edx
	addl	%eax, %edx
	movl	16(%esp), %eax
	imull	%edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	40(%esp), %eax
	imull	32(%esp)
	movl	%eax, %ecx
	movl	%edx, %ebx
	movl	24(%esp), %eax
	addl	%esi, %ecx
	adcl	%edi, %ebx
	imull	28(%esp)
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	%eax, %ecx
	movl	$65535, %eax
	shrdl	$16, %edx, %ecx
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	$-65536, %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	movl	32(%esp), %eax
	imull	44(%esp)
	addl	%eax, %esi
	movl	28(%esp), %eax
	adcl	%edx, %edi
	imull	20(%esp)
	addl	%esi, %eax
	movl	4(%esp), %esi
	adcl	%edi, %edx
	movl	%eax, %ebx
	movl	$65535, %eax
	movl	(%esp), %edi
	shrdl	$16, %edx, %ebx
	cmpl	%eax, %ebx
	cmovg	%eax, %ebx
	movl	$-65536, %eax
	cmpl	%eax, %ebx
	cmovge	%ebx, %eax
	movl	%esi, %ebx
	addl	40(%ebp), %esi
	sarl	$8, %ebx
	movl	%esi, 4(%esp)
	movl	%ebx, %edx
	movl	8(%esp), %ebx
	imull	%ecx, %edx
	addl	%edx, (%ebx)
	movl	%edi, %edx
	addl	$8, %ebx
	sarl	$8, %edx
	movl	%ebx, 8(%esp)
	imull	%eax, %edx
	addl	%edx, -4(%ebx)
	movl	36(%ebp), %edx
	leal	(%edi,%edx), %esi
	movl	56(%esp), %edx
	addl	28(%ebp), %edx
	movl	%esi, (%esp)
	movzwl	%dx, %edi
	movl	%edx, %esi
	movl	%edi, 56(%esp)
	sarl	$16, %esi
	addl	%esi, 48(%esp)
	subl	$1, 36(%esp)
	movl	44(%esp), %ebx
	movl	40(%esp), %edi
	movl	36(%esp), %esi
	movl	%ebx, 20(%esp)
	movl	%edi, 24(%esp)
	cmpl	%esi, 32(%ebp)
	jne	L156
	movl	%eax, 24(%esp)
	movl	16(%ebp), %eax
	movl	%ecx, %edi
	movl	12(%ebp), %ebx
	movl	8(%ebp), %ecx
	subl	%esi, %eax
	leal	(%ebx,%eax,8), %eax
	movl	%eax, 12(%ebp)
	movl	36(%esp), %eax
	testl	%eax, %eax
	je	L161
L159:
	movl	%edi, 20(%esp)
	movl	%ecx, 8(%ebp)
	jmp	L154
	.p2align 4,,10
	.p2align 3
L158:
	movl	%ecx, 20(%esp)
	movl	%ebx, 24(%esp)
L154:
	movl	48(%esp), %edi
	movl	12(%esp), %esi
	movl	56(%esp), %ecx
	movsbl	(%esi,%edi), %eax
	movsbl	1(%esi,%edi), %edx
	sarl	%ecx
	sall	$8, %eax
	sall	$8, %edx
	subl	%eax, %edx
	imull	%ecx, %edx
	sarl	$15, %edx
	addl	%eax, %edx
	movl	16(%esp), %eax
	imull	%edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	20(%esp), %eax
	imull	32(%esp)
	movl	%eax, %ecx
	movl	%edx, %ebx
	movl	40(%esp), %eax
	addl	%esi, %ecx
	adcl	%edi, %ebx
	imull	28(%esp)
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	%eax, %ecx
	movl	$65535, %eax
	shrdl	$16, %edx, %ecx
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	$-65536, %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	movl	32(%esp), %eax
	imull	24(%esp)
	addl	%eax, %esi
	movl	28(%esp), %eax
	adcl	%edx, %edi
	imull	44(%esp)
	addl	%esi, %eax
	movl	24(%ebp), %esi
	adcl	%edi, %edx
	movl	%eax, %ebx
	movl	$65535, %eax
	movl	24(%esp), %edi
	shrdl	$16, %edx, %ebx
	cmpl	%eax, %ebx
	movl	%edi, 44(%esp)
	cmovg	%eax, %ebx
	movl	$-65536, %eax
	cmpl	%eax, %ebx
	cmovl	%eax, %ebx
	imull	%ecx, %esi
	movl	%esi, %eax
	movl	12(%ebp), %esi
	addl	$8, 12(%ebp)
	addl	%eax, (%esi)
	movl	20(%ebp), %esi
	imull	%ebx, %esi
	movl	%esi, %eax
	movl	12(%ebp), %esi
	addl	%eax, -4(%esi)
	movl	56(%esp), %eax
	addl	28(%ebp), %eax
	movl	%eax, %edx
	movzwl	%ax, %esi
	movl	20(%esp), %eax
	sarl	$16, %edx
	movl	%esi, 56(%esp)
	addl	%edx, 48(%esp)
	movl	%eax, 40(%esp)
	subl	$1, 36(%esp)
	jne	L158
	movl	%ecx, %esi
	movl	8(%ebp), %ecx
	movl	%eax, %edi
	movl	%ebx, %eax
L153:
	movl	%eax, 104(%ecx)
	movl	24(%esp), %eax
	movl	%esi, 96(%ecx)
	movl	%eax, 108(%ecx)
	movl	%edi, 100(%ecx)
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
L155:
	.cfi_restore_state
	movl	24(%esp), %eax
	movl	40(%esp), %edi
	movl	%ebx, 36(%esp)
	movl	%eax, 40(%esp)
	movl	44(%esp), %eax
	movl	%eax, 24(%esp)
	movl	20(%esp), %eax
	movl	%eax, 44(%esp)
	movl	36(%esp), %eax
	testl	%eax, %eax
	jne	L159
	.p2align 4
	.p2align 3
L161:
	movl	44(%esp), %ebx
	movl	24(%esp), %eax
	movl	%edi, %esi
	movl	40(%esp), %edi
	movl	%ebx, 24(%esp)
	jmp	L153
	.cfi_endproc
LFE17:
	.p2align 4
	.globl	__Z37libxmp_mix_stereo_16bit_linear_filterP11mixer_voicePiiiiiiii
	.def	__Z37libxmp_mix_stereo_16bit_linear_filterP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
__Z37libxmp_mix_stereo_16bit_linear_filterP11mixer_voicePiiiiiiii:
LFB18:
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
	subl	$64, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %ecx
	movl	16(%ebp), %ebx
	movl	92(%ecx), %eax
	fnstcw	62(%esp)
	movl	%eax, 12(%esp)
	movzwl	62(%esp), %eax
	orb	$12, %ah
	movw	%ax, 60(%esp)
	fldl	32(%ecx)
	fld	%st(0)
	fldcw	60(%esp)
	fistpq	48(%esp)
	fldcw	62(%esp)
	movl	104(%ecx), %eax
	movl	%eax, 44(%esp)
	fldcw	60(%esp)
	fistl	56(%esp)
	fldcw	62(%esp)
	fildl	56(%esp)
	fsubrp	%st, %st(1)
	fmuls	LC0
	fldcw	60(%esp)
	fistpl	56(%esp)
	fldcw	62(%esp)
	movl	108(%ecx), %eax
	movl	%eax, 20(%esp)
	movl	112(%ecx), %eax
	movl	%eax, 16(%esp)
	movl	116(%ecx), %eax
	movl	%eax, 32(%esp)
	movl	120(%ecx), %eax
	movl	%eax, 28(%esp)
	movl	96(%ecx), %eax
	movl	%eax, 40(%esp)
	movl	100(%ecx), %eax
	movl	%eax, 24(%esp)
	cmpl	32(%ebp), %ebx
	jle	L167
	movl	72(%ecx), %eax
	movl	%ebx, 36(%esp)
	movl	%eax, (%esp)
	movl	76(%ecx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	jmp	L164
	.p2align 4,,10
	.p2align 3
L168:
	movl	%ecx, 40(%esp)
	movl	%eax, 44(%esp)
L164:
	movl	48(%esp), %edi
	movl	12(%esp), %esi
	movl	56(%esp), %ecx
	movswl	(%esi,%edi,2), %eax
	movswl	2(%esi,%edi,2), %edx
	sarl	%ecx
	subl	%eax, %edx
	imull	%ecx, %edx
	sarl	$15, %edx
	addl	%eax, %edx
	movl	16(%esp), %eax
	imull	%edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	40(%esp), %eax
	imull	32(%esp)
	movl	%eax, %ecx
	movl	%edx, %ebx
	movl	24(%esp), %eax
	addl	%esi, %ecx
	adcl	%edi, %ebx
	imull	28(%esp)
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	%eax, %ecx
	movl	$65535, %eax
	shrdl	$16, %edx, %ecx
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	$-65536, %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	movl	32(%esp), %eax
	imull	44(%esp)
	addl	%eax, %esi
	movl	28(%esp), %eax
	adcl	%edx, %edi
	imull	20(%esp)
	addl	%esi, %eax
	movl	4(%esp), %esi
	adcl	%edi, %edx
	movl	%eax, %ebx
	movl	$65535, %eax
	movl	(%esp), %edi
	shrdl	$16, %edx, %ebx
	cmpl	%eax, %ebx
	cmovg	%eax, %ebx
	movl	$-65536, %eax
	cmpl	%eax, %ebx
	cmovge	%ebx, %eax
	movl	%esi, %ebx
	addl	40(%ebp), %esi
	sarl	$8, %ebx
	movl	%esi, 4(%esp)
	movl	%ebx, %edx
	movl	8(%esp), %ebx
	imull	%ecx, %edx
	addl	%edx, (%ebx)
	movl	%edi, %edx
	addl	$8, %ebx
	sarl	$8, %edx
	movl	%ebx, 8(%esp)
	imull	%eax, %edx
	addl	%edx, -4(%ebx)
	movl	36(%ebp), %edx
	leal	(%edi,%edx), %esi
	movl	56(%esp), %edx
	addl	28(%ebp), %edx
	movl	%esi, (%esp)
	movzwl	%dx, %edi
	movl	%edx, %esi
	movl	%edi, 56(%esp)
	sarl	$16, %esi
	addl	%esi, 48(%esp)
	subl	$1, 36(%esp)
	movl	44(%esp), %ebx
	movl	40(%esp), %edi
	movl	36(%esp), %esi
	movl	%ebx, 20(%esp)
	movl	%edi, 24(%esp)
	cmpl	%esi, 32(%ebp)
	jne	L168
	movl	%eax, 24(%esp)
	movl	16(%ebp), %eax
	movl	%ecx, %edi
	movl	12(%ebp), %ebx
	movl	8(%ebp), %ecx
	subl	%esi, %eax
	leal	(%ebx,%eax,8), %eax
	movl	%eax, 12(%ebp)
	movl	36(%esp), %eax
	testl	%eax, %eax
	je	L173
L171:
	movl	%edi, 20(%esp)
	movl	%ecx, 8(%ebp)
	jmp	L166
	.p2align 4,,10
	.p2align 3
L170:
	movl	%ecx, 20(%esp)
	movl	%ebx, 24(%esp)
L166:
	movl	48(%esp), %edi
	movl	12(%esp), %esi
	movl	56(%esp), %ecx
	movswl	(%esi,%edi,2), %eax
	movswl	2(%esi,%edi,2), %edx
	sarl	%ecx
	subl	%eax, %edx
	imull	%ecx, %edx
	sarl	$15, %edx
	addl	%eax, %edx
	movl	16(%esp), %eax
	imull	%edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	20(%esp), %eax
	imull	32(%esp)
	movl	%eax, %ecx
	movl	%edx, %ebx
	movl	40(%esp), %eax
	addl	%esi, %ecx
	adcl	%edi, %ebx
	imull	28(%esp)
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	%eax, %ecx
	movl	$65535, %eax
	shrdl	$16, %edx, %ecx
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	$-65536, %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	movl	32(%esp), %eax
	imull	24(%esp)
	addl	%eax, %esi
	movl	28(%esp), %eax
	adcl	%edx, %edi
	imull	44(%esp)
	addl	%esi, %eax
	movl	24(%ebp), %esi
	adcl	%edi, %edx
	movl	%eax, %ebx
	movl	$65535, %eax
	movl	24(%esp), %edi
	shrdl	$16, %edx, %ebx
	movl	20(%ebp), %edx
	cmpl	%eax, %ebx
	movl	%edi, 44(%esp)
	cmovg	%eax, %ebx
	movl	$-65536, %eax
	cmpl	%eax, %ebx
	cmovl	%eax, %ebx
	imull	%ecx, %esi
	imull	%ebx, %edx
	movl	%esi, %eax
	movl	12(%ebp), %esi
	addl	$8, 12(%ebp)
	addl	%eax, (%esi)
	movl	12(%ebp), %esi
	movl	56(%esp), %eax
	addl	28(%ebp), %eax
	addl	%edx, -4(%esi)
	movl	%eax, %edx
	movzwl	%ax, %esi
	movl	20(%esp), %eax
	sarl	$16, %edx
	movl	%esi, 56(%esp)
	addl	%edx, 48(%esp)
	movl	%eax, 40(%esp)
	subl	$1, 36(%esp)
	jne	L170
	movl	%ecx, %esi
	movl	8(%ebp), %ecx
	movl	%eax, %edi
	movl	%ebx, %eax
L165:
	movl	%eax, 104(%ecx)
	movl	24(%esp), %eax
	movl	%esi, 96(%ecx)
	movl	%eax, 108(%ecx)
	movl	%edi, 100(%ecx)
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
L167:
	.cfi_restore_state
	movl	24(%esp), %eax
	movl	40(%esp), %edi
	movl	%ebx, 36(%esp)
	movl	%eax, 40(%esp)
	movl	44(%esp), %eax
	movl	%eax, 24(%esp)
	movl	20(%esp), %eax
	movl	%eax, 44(%esp)
	movl	36(%esp), %eax
	testl	%eax, %eax
	jne	L171
	.p2align 4
	.p2align 3
L173:
	movl	44(%esp), %ebx
	movl	24(%esp), %eax
	movl	%edi, %esi
	movl	40(%esp), %edi
	movl	%ebx, 24(%esp)
	jmp	L165
	.cfi_endproc
LFE18:
	.p2align 4
	.globl	__Z27libxmp_mix_mono_8bit_splineP11mixer_voicePiiiiiiii
	.def	__Z27libxmp_mix_mono_8bit_splineP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
__Z27libxmp_mix_mono_8bit_splineP11mixer_voicePiiiiiiii:
LFB19:
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
	subl	$24, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %edx
	movl	16(%ebp), %ecx
	movl	92(%edx), %edi
	fnstcw	22(%esp)
	movzwl	22(%esp), %eax
	orb	$12, %ah
	movw	%ax, 20(%esp)
	fldl	32(%edx)
	fld	%st(0)
	fldcw	20(%esp)
	fistpq	8(%esp)
	fldcw	22(%esp)
	movl	8(%esp), %eax
	fldcw	20(%esp)
	fistl	8(%esp)
	fldcw	22(%esp)
	fildl	8(%esp)
	fsubrp	%st, %st(1)
	fmuls	LC0
	fldcw	20(%esp)
	fistpl	8(%esp)
	fldcw	22(%esp)
	cmpl	32(%ebp), %ecx
	jle	L179
	movl	72(%edx), %ebx
	subl	32(%ebp), %ecx
	movl	$0, 16(%esp)
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	.p2align 4
	.p2align 3
L176:
	movl	8(%esp), %esi
	movsbl	-1(%edi,%eax), %edx
	sarl	$6, %esi
	movswl	__ZL17cubic_spline_lut0(%esi,%esi), %ecx
	movswl	__ZL17cubic_spline_lut1(%esi,%esi), %ebx
	imull	%ecx, %edx
	movsbl	(%edi,%eax), %ecx
	imull	%ebx, %ecx
	leal	(%edx,%ecx), %ebx
	movsbl	2(%edi,%eax), %edx
	movswl	__ZL17cubic_spline_lut3(%esi,%esi), %ecx
	movswl	__ZL17cubic_spline_lut2(%esi,%esi), %esi
	imull	%ecx, %edx
	movsbl	1(%edi,%eax), %ecx
	imull	%esi, %ecx
	movl	4(%esp), %esi
	addl	%ebx, %edx
	movl	12(%ebp), %ebx
	addl	%ecx, %edx
	movl	%esi, %ecx
	addl	36(%ebp), %esi
	sarl	$8, %ecx
	sarl	$6, %edx
	movl	%esi, 4(%esp)
	imull	%ecx, %edx
	movl	16(%esp), %ecx
	addl	$1, 16(%esp)
	addl	%edx, (%ebx,%ecx,4)
	movl	8(%esp), %edx
	addl	28(%ebp), %edx
	movl	%edx, %ecx
	movzwl	%dx, %esi
	sarl	$16, %ecx
	movl	%esi, 8(%esp)
	movl	16(%esp), %esi
	addl	%ecx, %eax
	cmpl	%esi, (%esp)
	jne	L176
	movl	12(%ebp), %ebx
	movl	(%esp), %esi
	leal	(%ebx,%esi,4), %ebx
	movl	%ebx, 12(%ebp)
L175:
	movl	32(%ebp), %edx
	testl	%edx, %edx
	je	L185
	.p2align 4
	.p2align 3
L178:
	movl	8(%esp), %ebx
	movsbl	-1(%edi,%eax), %edx
	addl	$4, 12(%ebp)
	sarl	$6, %ebx
	movswl	__ZL17cubic_spline_lut0(%ebx,%ebx), %ecx
	movswl	__ZL17cubic_spline_lut1(%ebx,%ebx), %esi
	imull	%ecx, %edx
	movsbl	(%edi,%eax), %ecx
	imull	%esi, %ecx
	movswl	__ZL17cubic_spline_lut3(%ebx,%ebx), %esi
	movswl	__ZL17cubic_spline_lut2(%ebx,%ebx), %ebx
	addl	%edx, %ecx
	movsbl	2(%edi,%eax), %edx
	imull	%esi, %edx
	movl	12(%ebp), %esi
	addl	%ecx, %edx
	movsbl	1(%edi,%eax), %ecx
	imull	%ebx, %ecx
	addl	%ecx, %edx
	sarl	$6, %edx
	imull	20(%ebp), %edx
	addl	%edx, -4(%esi)
	movl	8(%esp), %edx
	addl	28(%ebp), %edx
	movl	%edx, %ecx
	movzwl	%dx, %esi
	sarl	$16, %ecx
	movl	%esi, 8(%esp)
	addl	%ecx, %eax
	subl	$1, 32(%ebp)
	jne	L178
L185:
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
L179:
	.cfi_restore_state
	movl	%ecx, 32(%ebp)
	jmp	L175
	.cfi_endproc
LFE19:
	.p2align 4
	.globl	__Z28libxmp_mix_mono_16bit_splineP11mixer_voicePiiiiiiii
	.def	__Z28libxmp_mix_mono_16bit_splineP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
__Z28libxmp_mix_mono_16bit_splineP11mixer_voicePiiiiiiii:
LFB20:
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
	subl	$32, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %eax
	movl	16(%ebp), %ecx
	movl	92(%eax), %edi
	fnstcw	30(%esp)
	movzwl	30(%esp), %edx
	orb	$12, %dh
	movw	%dx, 28(%esp)
	fldl	32(%eax)
	fld	%st(0)
	fldcw	28(%esp)
	fistpq	16(%esp)
	fldcw	30(%esp)
	movl	16(%esp), %ebx
	fldcw	28(%esp)
	fistl	16(%esp)
	fldcw	30(%esp)
	movl	%ebx, 24(%esp)
	fildl	16(%esp)
	fsubrp	%st, %st(1)
	fmuls	LC0
	fldcw	28(%esp)
	fistpl	16(%esp)
	fldcw	30(%esp)
	cmpl	32(%ebp), %ecx
	jle	L192
	movl	72(%eax), %eax
	subl	32(%ebp), %ecx
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, 12(%esp)
	.p2align 4
	.p2align 3
L189:
	movl	16(%esp), %ebx
	movl	24(%esp), %esi
	sarl	$6, %ebx
	addl	$2147483647, %esi
	movswl	2(%edi,%esi,2), %eax
	movswl	__ZL17cubic_spline_lut1(%ebx,%ebx), %edx
	movswl	__ZL17cubic_spline_lut0(%ebx,%ebx), %ecx
	imull	%edx, %eax
	movswl	(%edi,%esi,2), %edx
	imull	%ecx, %edx
	leal	(%eax,%edx), %ecx
	movswl	6(%edi,%esi,2), %eax
	movswl	__ZL17cubic_spline_lut3(%ebx,%ebx), %edx
	movswl	__ZL17cubic_spline_lut2(%ebx,%ebx), %ebx
	imull	%edx, %eax
	movswl	4(%edi,%esi,2), %edx
	movl	12(%esp), %esi
	imull	%ebx, %edx
	movl	8(%esp), %ebx
	addl	%ecx, %eax
	movl	12(%ebp), %ecx
	addl	%edx, %eax
	movl	%esi, %edx
	addl	36(%ebp), %esi
	sarl	$8, %edx
	sarl	$14, %eax
	movl	%esi, 12(%esp)
	imull	%edx, %eax
	addl	%eax, (%ecx,%ebx,4)
	movl	16(%esp), %eax
	addl	$1, %ebx
	addl	28(%ebp), %eax
	movl	%ebx, 8(%esp)
	movl	%eax, %edx
	movzwl	%ax, %eax
	sarl	$16, %edx
	movl	%eax, 16(%esp)
	addl	%edx, 24(%esp)
	cmpl	%ebx, 4(%esp)
	jne	L189
	movl	12(%ebp), %eax
	movl	4(%esp), %ebx
	leal	(%eax,%ebx,4), %eax
	movl	%eax, 12(%ebp)
L188:
	movl	32(%ebp), %eax
	testl	%eax, %eax
	je	L198
	.p2align 4
	.p2align 3
L191:
	movl	16(%esp), %ecx
	movl	24(%esp), %ebx
	addl	$4, 12(%ebp)
	sarl	$6, %ecx
	addl	$2147483647, %ebx
	movswl	__ZL17cubic_spline_lut1(%ecx,%ecx), %edx
	movswl	2(%edi,%ebx,2), %eax
	movswl	__ZL17cubic_spline_lut0(%ecx,%ecx), %esi
	imull	%edx, %eax
	movswl	(%edi,%ebx,2), %edx
	imull	%esi, %edx
	movswl	__ZL17cubic_spline_lut3(%ecx,%ecx), %esi
	movswl	__ZL17cubic_spline_lut2(%ecx,%ecx), %ecx
	addl	%eax, %edx
	movswl	6(%edi,%ebx,2), %eax
	imull	%esi, %eax
	movl	12(%ebp), %esi
	addl	%edx, %eax
	movswl	4(%edi,%ebx,2), %edx
	imull	%ecx, %edx
	addl	%edx, %eax
	sarl	$14, %eax
	imull	20(%ebp), %eax
	addl	%eax, -4(%esi)
	movl	16(%esp), %eax
	addl	28(%ebp), %eax
	movl	%eax, %edx
	movzwl	%ax, %eax
	sarl	$16, %edx
	addl	%edx, 24(%esp)
	subl	$1, 32(%ebp)
	movl	%eax, 16(%esp)
	jne	L191
L198:
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
L192:
	.cfi_restore_state
	movl	%ecx, 32(%ebp)
	jmp	L188
	.cfi_endproc
LFE20:
	.p2align 4
	.globl	__Z29libxmp_mix_stereo_8bit_splineP11mixer_voicePiiiiiiii
	.def	__Z29libxmp_mix_stereo_8bit_splineP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
__Z29libxmp_mix_stereo_8bit_splineP11mixer_voicePiiiiiiii:
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
	subl	$32, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %edx
	movl	12(%ebp), %edi
	movl	16(%ebp), %ebx
	movl	92(%edx), %eax
	fnstcw	30(%esp)
	movl	%eax, 24(%esp)
	movzwl	30(%esp), %eax
	orb	$12, %ah
	movw	%ax, 28(%esp)
	fldl	32(%edx)
	fld	%st(0)
	fldcw	28(%esp)
	fistpq	16(%esp)
	fldcw	30(%esp)
	movl	16(%esp), %eax
	fldcw	28(%esp)
	fistl	16(%esp)
	fldcw	30(%esp)
	fildl	16(%esp)
	fsubrp	%st, %st(1)
	fmuls	LC0
	fldcw	28(%esp)
	fistpl	16(%esp)
	fldcw	30(%esp)
	cmpl	32(%ebp), %ebx
	jle	L205
	movl	72(%edx), %ecx
	movl	%ebx, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	76(%edx), %ecx
	movl	%ecx, 8(%esp)
	movl	%edi, %ecx
	.p2align 4
	.p2align 3
L202:
	movl	16(%esp), %esi
	movl	24(%esp), %edi
	subl	$1, 12(%esp)
	sarl	$6, %esi
	movsbl	-1(%edi,%eax), %edx
	movswl	__ZL17cubic_spline_lut0(%esi,%esi), %ebx
	imull	%ebx, %edx
	movsbl	(%edi,%eax), %ebx
	movswl	__ZL17cubic_spline_lut1(%esi,%esi), %edi
	imull	%edi, %ebx
	movl	24(%esp), %edi
	addl	%edx, %ebx
	movsbl	2(%edi,%eax), %edx
	movswl	__ZL17cubic_spline_lut3(%esi,%esi), %edi
	movswl	__ZL17cubic_spline_lut2(%esi,%esi), %esi
	imull	%edi, %edx
	movl	24(%esp), %edi
	addl	%ebx, %edx
	movsbl	1(%edi,%eax), %ebx
	movl	8(%esp), %edi
	imull	%esi, %ebx
	movl	12(%esp), %esi
	addl	%ebx, %edx
	movl	%edi, %ebx
	addl	40(%ebp), %edi
	movl	%edi, 8(%esp)
	movl	4(%esp), %edi
	sarl	$6, %edx
	sarl	$8, %ebx
	imull	%edx, %ebx
	addl	%ebx, (%ecx)
	addl	$8, %ecx
	movl	%edi, %ebx
	addl	36(%ebp), %edi
	sarl	$8, %ebx
	movl	%edi, 4(%esp)
	imull	%edx, %ebx
	movl	16(%esp), %edx
	addl	28(%ebp), %edx
	addl	%ebx, -4(%ecx)
	movl	%edx, %ebx
	movzwl	%dx, %edi
	sarl	$16, %ebx
	movl	%edi, 16(%esp)
	addl	%ebx, %eax
	cmpl	%esi, 32(%ebp)
	jne	L202
	movl	16(%ebp), %edx
	movl	12(%ebp), %edi
	subl	%esi, %edx
	leal	(%edi,%edx,8), %edi
L201:
	movl	12(%esp), %edx
	testl	%edx, %edx
	je	L211
	.p2align 4
	.p2align 3
L204:
	movl	16(%esp), %ebx
	movl	24(%esp), %esi
	sarl	$6, %ebx
	movsbl	-1(%esi,%eax), %edx
	movswl	__ZL17cubic_spline_lut0(%ebx,%ebx), %ecx
	imull	%ecx, %edx
	movsbl	(%esi,%eax), %ecx
	movswl	__ZL17cubic_spline_lut1(%ebx,%ebx), %esi
	imull	%esi, %ecx
	movl	24(%esp), %esi
	addl	%edx, %ecx
	movsbl	2(%esi,%eax), %edx
	movswl	__ZL17cubic_spline_lut3(%ebx,%ebx), %esi
	movswl	__ZL17cubic_spline_lut2(%ebx,%ebx), %ebx
	imull	%esi, %edx
	movl	24(%esp), %esi
	addl	%ecx, %edx
	movsbl	1(%esi,%eax), %ecx
	imull	%ebx, %ecx
	addl	%ecx, %edx
	movl	24(%ebp), %ecx
	sarl	$6, %edx
	imull	%edx, %ecx
	addl	%ecx, (%edi)
	addl	$8, %edi
	imull	20(%ebp), %edx
	addl	%edx, -4(%edi)
	movl	16(%esp), %edx
	addl	28(%ebp), %edx
	movl	%edx, %ecx
	sarl	$16, %ecx
	addl	%ecx, %eax
	subl	$1, 12(%esp)
	movzwl	%dx, %ecx
	movl	%ecx, 16(%esp)
	jne	L204
L211:
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
L205:
	.cfi_restore_state
	movl	%ebx, 12(%esp)
	jmp	L201
	.cfi_endproc
LFE21:
	.p2align 4
	.globl	__Z30libxmp_mix_stereo_16bit_splineP11mixer_voicePiiiiiiii
	.def	__Z30libxmp_mix_stereo_16bit_splineP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
__Z30libxmp_mix_stereo_16bit_splineP11mixer_voicePiiiiiiii:
LFB22:
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
	subl	$32, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %eax
	movl	12(%ebp), %edi
	movl	16(%ebp), %ecx
	movl	92(%eax), %ebx
	fnstcw	30(%esp)
	movl	%ebx, 24(%esp)
	movzwl	30(%esp), %edx
	orb	$12, %dh
	movw	%dx, 28(%esp)
	fldl	32(%eax)
	fld	%st(0)
	fldcw	28(%esp)
	fistpq	16(%esp)
	fldcw	30(%esp)
	movl	16(%esp), %ebx
	fldcw	28(%esp)
	fistl	16(%esp)
	fldcw	30(%esp)
	movl	%ebx, 8(%esp)
	fildl	16(%esp)
	fsubrp	%st, %st(1)
	fmuls	LC0
	fldcw	28(%esp)
	fistpl	16(%esp)
	fldcw	30(%esp)
	cmpl	32(%ebp), %ecx
	jle	L218
	movl	72(%eax), %ebx
	movl	76(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%edi, %edx
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	.p2align 4
	.p2align 3
L215:
	movl	8(%esp), %edi
	movl	16(%esp), %ebx
	subl	$1, 12(%esp)
	leal	2147483647(%edi), %esi
	movl	24(%esp), %edi
	sarl	$6, %ebx
	movswl	__ZL17cubic_spline_lut1(%ebx,%ebx), %ecx
	movswl	2(%edi,%esi,2), %eax
	imull	%ecx, %eax
	movswl	(%edi,%esi,2), %ecx
	movswl	__ZL17cubic_spline_lut0(%ebx,%ebx), %edi
	imull	%edi, %ecx
	movl	24(%esp), %edi
	addl	%eax, %ecx
	movswl	6(%edi,%esi,2), %eax
	movswl	__ZL17cubic_spline_lut3(%ebx,%ebx), %edi
	movswl	__ZL17cubic_spline_lut2(%ebx,%ebx), %ebx
	imull	%edi, %eax
	movl	24(%esp), %edi
	addl	%ecx, %eax
	movswl	4(%edi,%esi,2), %ecx
	movl	4(%esp), %esi
	imull	%ebx, %ecx
	addl	%ecx, %eax
	movl	%esi, %ecx
	addl	40(%ebp), %esi
	movl	%esi, 4(%esp)
	movl	(%esp), %esi
	sarl	$14, %eax
	sarl	$8, %ecx
	imull	%eax, %ecx
	addl	%ecx, (%edx)
	addl	$8, %edx
	movl	%esi, %ecx
	addl	36(%ebp), %esi
	sarl	$8, %ecx
	movl	%esi, (%esp)
	imull	%eax, %ecx
	movl	16(%esp), %eax
	addl	28(%ebp), %eax
	addl	%ecx, -4(%edx)
	movl	%eax, %ecx
	movzwl	%ax, %eax
	movl	%eax, 16(%esp)
	sarl	$16, %ecx
	movl	12(%esp), %eax
	addl	%ecx, 8(%esp)
	cmpl	%eax, 32(%ebp)
	jne	L215
	movl	12(%ebp), %edi
	movl	16(%ebp), %eax
	subl	12(%esp), %eax
	leal	(%edi,%eax,8), %edi
L214:
	movl	12(%esp), %eax
	testl	%eax, %eax
	je	L224
	.p2align 4
	.p2align 3
L217:
	movl	16(%esp), %ecx
	movl	8(%esp), %ebx
	movl	24(%esp), %esi
	sarl	$6, %ecx
	addl	$2147483647, %ebx
	movswl	2(%esi,%ebx,2), %eax
	movswl	__ZL17cubic_spline_lut1(%ecx,%ecx), %edx
	imull	%edx, %eax
	movswl	(%esi,%ebx,2), %edx
	movswl	__ZL17cubic_spline_lut0(%ecx,%ecx), %esi
	imull	%esi, %edx
	movl	24(%esp), %esi
	addl	%eax, %edx
	movswl	6(%esi,%ebx,2), %eax
	movswl	__ZL17cubic_spline_lut3(%ecx,%ecx), %esi
	movswl	__ZL17cubic_spline_lut2(%ecx,%ecx), %ecx
	imull	%esi, %eax
	movl	24(%esp), %esi
	addl	%edx, %eax
	movswl	4(%esi,%ebx,2), %edx
	imull	%ecx, %edx
	addl	%edx, %eax
	movl	24(%ebp), %edx
	sarl	$14, %eax
	imull	%eax, %edx
	addl	%edx, (%edi)
	addl	$8, %edi
	imull	20(%ebp), %eax
	addl	%eax, -4(%edi)
	movl	16(%esp), %eax
	addl	28(%ebp), %eax
	movl	%eax, %edx
	movzwl	%ax, %eax
	sarl	$16, %edx
	addl	%edx, 8(%esp)
	subl	$1, 12(%esp)
	movl	%eax, 16(%esp)
	jne	L217
L224:
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
L218:
	.cfi_restore_state
	movl	%ecx, 12(%esp)
	jmp	L214
	.cfi_endproc
LFE22:
	.p2align 4
	.globl	__Z34libxmp_mix_mono_8bit_spline_filterP11mixer_voicePiiiiiiii
	.def	__Z34libxmp_mix_mono_8bit_spline_filterP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
__Z34libxmp_mix_mono_8bit_spline_filterP11mixer_voicePiiiiiiii:
LFB23:
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
	subl	$48, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %ecx
	movl	16(%ebp), %edx
	movl	92(%ecx), %esi
	fnstcw	46(%esp)
	movzwl	46(%esp), %eax
	orb	$12, %ah
	movw	%ax, 44(%esp)
	fldl	32(%ecx)
	fld	%st(0)
	fldcw	44(%esp)
	fistpq	32(%esp)
	fldcw	46(%esp)
	movl	104(%ecx), %eax
	movl	%eax, 28(%esp)
	movl	32(%esp), %edi
	fldcw	44(%esp)
	fistl	32(%esp)
	fldcw	46(%esp)
	fildl	32(%esp)
	fsubrp	%st, %st(1)
	fmuls	LC0
	fldcw	44(%esp)
	fistpl	32(%esp)
	fldcw	46(%esp)
	movl	108(%ecx), %eax
	movl	%eax, 24(%esp)
	movl	112(%ecx), %eax
	movl	%eax, 20(%esp)
	movl	116(%ecx), %eax
	movl	%eax, 16(%esp)
	movl	120(%ecx), %eax
	movl	%eax, 12(%esp)
	cmpl	32(%ebp), %edx
	jle	L231
	movl	72(%ecx), %eax
	subl	32(%ebp), %edx
	movl	%esi, 40(%esp)
	xorl	%esi, %esi
	movl	%edx, 4(%esp)
	movl	%eax, 8(%esp)
	jmp	L228
	.p2align 4,,10
	.p2align 3
L232:
	movl	%eax, 28(%esp)
L228:
	movl	32(%esp), %edx
	movl	40(%esp), %ebx
	sarl	$6, %edx
	movsbl	-1(%ebx,%edi), %ecx
	movswl	__ZL17cubic_spline_lut0(%edx,%edx), %eax
	imull	%eax, %ecx
	movsbl	(%ebx,%edi), %eax
	movswl	__ZL17cubic_spline_lut1(%edx,%edx), %ebx
	imull	%ebx, %eax
	movl	40(%esp), %ebx
	addl	%ecx, %eax
	movsbl	2(%ebx,%edi), %ecx
	movswl	__ZL17cubic_spline_lut3(%edx,%edx), %ebx
	movswl	__ZL17cubic_spline_lut2(%edx,%edx), %edx
	imull	%ebx, %ecx
	movl	40(%esp), %ebx
	addl	%eax, %ecx
	movsbl	1(%ebx,%edi), %eax
	imull	%edx, %eax
	addl	%eax, %ecx
	movl	20(%esp), %eax
	sarl	$6, %ecx
	imull	%ecx
	movl	%eax, %ecx
	movl	%edx, %ebx
	movl	28(%esp), %eax
	imull	16(%esp)
	addl	%eax, %ecx
	movl	24(%esp), %eax
	adcl	%edx, %ebx
	imull	12(%esp)
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	%eax, %ecx
	movl	$65535, %eax
	movl	8(%esp), %ebx
	shrdl	$16, %edx, %ecx
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	$-65536, %eax
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%ebx, %ecx
	addl	36(%ebp), %ebx
	sarl	$8, %ecx
	movl	%ebx, 8(%esp)
	movl	%ecx, %edx
	movl	12(%ebp), %ecx
	imull	%eax, %edx
	addl	%edx, (%ecx,%esi,4)
	movl	32(%esp), %edx
	addl	$1, %esi
	addl	28(%ebp), %edx
	movzwl	%dx, %ebx
	movl	%edx, %ecx
	movl	%ebx, 32(%esp)
	movl	28(%esp), %ebx
	sarl	$16, %ecx
	addl	%ecx, %edi
	movl	%ebx, 24(%esp)
	cmpl	%esi, 4(%esp)
	jne	L232
	movl	40(%esp), %esi
	movl	4(%esp), %ebx
	movl	%eax, 40(%esp)
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	(%eax,%ebx,4), %eax
	movl	%eax, 12(%ebp)
	movl	32(%ebp), %eax
	testl	%eax, %eax
	je	L237
L235:
	movl	%ecx, 8(%ebp)
	jmp	L230
	.p2align 4,,10
	.p2align 3
L234:
	movl	%eax, 40(%esp)
L230:
	movl	32(%esp), %edx
	movsbl	-1(%esi,%edi), %ecx
	sarl	$6, %edx
	movswl	__ZL17cubic_spline_lut0(%edx,%edx), %eax
	movswl	__ZL17cubic_spline_lut1(%edx,%edx), %ebx
	imull	%eax, %ecx
	movsbl	(%esi,%edi), %eax
	imull	%ebx, %eax
	movswl	__ZL17cubic_spline_lut3(%edx,%edx), %ebx
	movswl	__ZL17cubic_spline_lut2(%edx,%edx), %edx
	addl	%ecx, %eax
	movsbl	2(%esi,%edi), %ecx
	imull	%ebx, %ecx
	addl	%eax, %ecx
	movsbl	1(%esi,%edi), %eax
	imull	%edx, %eax
	addl	%eax, %ecx
	movl	20(%esp), %eax
	sarl	$6, %ecx
	imull	%ecx
	movl	%eax, %ecx
	movl	%edx, %ebx
	movl	40(%esp), %eax
	imull	16(%esp)
	addl	%eax, %ecx
	movl	28(%esp), %eax
	adcl	%edx, %ebx
	imull	12(%esp)
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	%eax, %ecx
	movl	$65535, %eax
	movl	20(%ebp), %ebx
	shrdl	$16, %edx, %ecx
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	$-65536, %eax
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	addl	$4, 12(%ebp)
	imull	%eax, %ebx
	movl	%ebx, %edx
	movl	12(%ebp), %ebx
	addl	%edx, -4(%ebx)
	movl	32(%esp), %edx
	addl	28(%ebp), %edx
	movl	%edx, %ecx
	movzwl	%dx, %ebx
	sarl	$16, %ecx
	movl	%ebx, 32(%esp)
	movl	40(%esp), %ebx
	addl	%ecx, %edi
	subl	$1, 32(%ebp)
	movl	%ebx, 28(%esp)
	jne	L234
	movl	8(%ebp), %ecx
L229:
	movl	%eax, 104(%ecx)
	movl	40(%esp), %eax
	movl	%eax, 108(%ecx)
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
L231:
	.cfi_restore_state
	movl	28(%esp), %eax
	movl	%edx, 32(%ebp)
	movl	%eax, 40(%esp)
	movl	24(%esp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	testl	%eax, %eax
	jne	L235
	.p2align 4
	.p2align 3
L237:
	movl	28(%esp), %esi
	movl	40(%esp), %eax
	movl	%esi, 40(%esp)
	jmp	L229
	.cfi_endproc
LFE23:
	.p2align 4
	.globl	__Z35libxmp_mix_mono_16bit_spline_filterP11mixer_voicePiiiiiiii
	.def	__Z35libxmp_mix_mono_16bit_spline_filterP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
__Z35libxmp_mix_mono_16bit_spline_filterP11mixer_voicePiiiiiiii:
LFB24:
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
	subl	$48, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %ecx
	movl	16(%ebp), %edx
	movl	92(%ecx), %eax
	fnstcw	46(%esp)
	movl	%eax, 40(%esp)
	movzwl	46(%esp), %eax
	orb	$12, %ah
	movw	%ax, 44(%esp)
	fldl	32(%ecx)
	fld	%st(0)
	fldcw	44(%esp)
	fistpq	32(%esp)
	fldcw	46(%esp)
	movl	32(%esp), %eax
	fldcw	44(%esp)
	fistl	32(%esp)
	fldcw	46(%esp)
	movl	%eax, 24(%esp)
	fildl	32(%esp)
	fsubrp	%st, %st(1)
	fmuls	LC0
	fldcw	44(%esp)
	fistpl	32(%esp)
	fldcw	46(%esp)
	movl	104(%ecx), %eax
	movl	%eax, 28(%esp)
	movl	108(%ecx), %eax
	movl	%eax, 20(%esp)
	movl	112(%ecx), %eax
	movl	%eax, 16(%esp)
	movl	116(%ecx), %eax
	movl	%eax, 12(%esp)
	movl	120(%ecx), %eax
	movl	%eax, 8(%esp)
	cmpl	32(%ebp), %edx
	jle	L243
	movl	72(%ecx), %eax
	subl	32(%ebp), %edx
	xorl	%edi, %edi
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	jmp	L240
	.p2align 4,,10
	.p2align 3
L244:
	movl	%esi, 28(%esp)
L240:
	movl	24(%esp), %eax
	movl	32(%esp), %edx
	movl	40(%esp), %esi
	leal	2147483647(%eax), %ebx
	sarl	$6, %edx
	movswl	2(%esi,%ebx,2), %ecx
	movswl	__ZL17cubic_spline_lut1(%edx,%edx), %eax
	imull	%eax, %ecx
	movswl	(%esi,%ebx,2), %eax
	movswl	__ZL17cubic_spline_lut0(%edx,%edx), %esi
	imull	%esi, %eax
	movl	40(%esp), %esi
	addl	%ecx, %eax
	movswl	6(%esi,%ebx,2), %ecx
	movswl	__ZL17cubic_spline_lut3(%edx,%edx), %esi
	movswl	__ZL17cubic_spline_lut2(%edx,%edx), %edx
	imull	%esi, %ecx
	movl	40(%esp), %esi
	addl	%eax, %ecx
	movswl	4(%esi,%ebx,2), %eax
	movl	$-65536, %esi
	imull	%edx, %eax
	addl	%eax, %ecx
	movl	16(%esp), %eax
	sarl	$14, %ecx
	imull	%ecx
	movl	%eax, %ecx
	movl	%edx, %ebx
	movl	28(%esp), %eax
	imull	12(%esp)
	addl	%eax, %ecx
	movl	20(%esp), %eax
	adcl	%edx, %ebx
	imull	8(%esp)
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	%eax, %ecx
	movl	$65535, %eax
	movl	4(%esp), %ebx
	shrdl	$16, %edx, %ecx
	movl	32(%esp), %edx
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	%ebx, %eax
	cmpl	%esi, %ecx
	cmovge	%ecx, %esi
	movl	12(%ebp), %ecx
	sarl	$8, %eax
	addl	36(%ebp), %ebx
	addl	28(%ebp), %edx
	movl	%ebx, 4(%esp)
	imull	%esi, %eax
	addl	%eax, (%ecx,%edi,4)
	movl	28(%esp), %eax
	movzwl	%dx, %ebx
	movl	%ebx, 32(%esp)
	sarl	$16, %edx
	addl	$1, %edi
	addl	%edx, 24(%esp)
	movl	%eax, 20(%esp)
	cmpl	%edi, (%esp)
	jne	L244
	movl	12(%ebp), %eax
	movl	(%esp), %edi
	movl	8(%ebp), %ecx
	leal	(%eax,%edi,4), %eax
	movl	%eax, 12(%ebp)
	movl	32(%ebp), %eax
	testl	%eax, %eax
	je	L249
L247:
	movl	%esi, 20(%esp)
	movl	40(%esp), %esi
	movl	%ecx, 8(%ebp)
	jmp	L242
	.p2align 4,,10
	.p2align 3
L246:
	movl	%eax, 20(%esp)
L242:
	movl	24(%esp), %eax
	movl	32(%esp), %edx
	leal	2147483647(%eax), %ebx
	sarl	$6, %edx
	movswl	2(%esi,%ebx,2), %ecx
	movswl	__ZL17cubic_spline_lut1(%edx,%edx), %eax
	movswl	__ZL17cubic_spline_lut0(%edx,%edx), %edi
	imull	%eax, %ecx
	movswl	(%esi,%ebx,2), %eax
	imull	%edi, %eax
	movswl	__ZL17cubic_spline_lut3(%edx,%edx), %edi
	movswl	__ZL17cubic_spline_lut2(%edx,%edx), %edx
	addl	%ecx, %eax
	movswl	6(%esi,%ebx,2), %ecx
	imull	%edi, %ecx
	addl	%eax, %ecx
	movswl	4(%esi,%ebx,2), %eax
	imull	%edx, %eax
	addl	%eax, %ecx
	movl	16(%esp), %eax
	sarl	$14, %ecx
	imull	%ecx
	movl	%eax, %ecx
	movl	%edx, %ebx
	movl	20(%esp), %eax
	imull	12(%esp)
	addl	%eax, %ecx
	movl	28(%esp), %eax
	adcl	%edx, %ebx
	imull	8(%esp)
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	%eax, %ecx
	movl	$65535, %eax
	movl	20(%ebp), %ebx
	shrdl	$16, %edx, %ecx
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	$-65536, %eax
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	addl	$4, 12(%ebp)
	imull	%eax, %ebx
	movl	%ebx, %edx
	movl	12(%ebp), %ebx
	addl	%edx, -4(%ebx)
	movl	32(%esp), %edx
	addl	28(%ebp), %edx
	movl	%edx, %ecx
	movzwl	%dx, %edi
	sarl	$16, %ecx
	addl	%ecx, 24(%esp)
	subl	$1, 32(%ebp)
	movl	%edi, 32(%esp)
	movl	20(%esp), %edi
	movl	%edi, 28(%esp)
	jne	L246
	movl	8(%ebp), %ecx
	movl	%edi, %esi
	movl	%eax, 104(%ecx)
	movl	%esi, 108(%ecx)
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
L243:
	.cfi_restore_state
	movl	20(%esp), %eax
	movl	28(%esp), %esi
	movl	%edx, 32(%ebp)
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	testl	%eax, %eax
	jne	L247
L249:
	movl	%esi, %eax
	movl	28(%esp), %esi
	movl	%eax, 104(%ecx)
	movl	%esi, 108(%ecx)
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
LFE24:
	.p2align 4
	.globl	__Z36libxmp_mix_stereo_8bit_spline_filterP11mixer_voicePiiiiiiii
	.def	__Z36libxmp_mix_stereo_8bit_spline_filterP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
__Z36libxmp_mix_stereo_8bit_spline_filterP11mixer_voicePiiiiiiii:
LFB25:
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
	subl	$72, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %ecx
	movl	16(%ebp), %ebx
	movl	92(%ecx), %eax
	fnstcw	70(%esp)
	movl	%eax, 64(%esp)
	movzwl	70(%esp), %eax
	orb	$12, %ah
	movw	%ax, 68(%esp)
	fldl	32(%ecx)
	fld	%st(0)
	fldcw	68(%esp)
	fistpq	56(%esp)
	fldcw	70(%esp)
	movl	104(%ecx), %eax
	movl	56(%esp), %edi
	fldcw	68(%esp)
	fistl	56(%esp)
	fldcw	70(%esp)
	fildl	56(%esp)
	fsubrp	%st, %st(1)
	fmuls	LC0
	fldcw	68(%esp)
	fistpl	56(%esp)
	fldcw	70(%esp)
	movl	%eax, 48(%esp)
	movl	108(%ecx), %eax
	movl	100(%ecx), %esi
	movl	%eax, 16(%esp)
	movl	112(%ecx), %eax
	movl	%eax, 12(%esp)
	movl	116(%ecx), %eax
	movl	%eax, 36(%esp)
	movl	120(%ecx), %eax
	movl	%eax, 32(%esp)
	movl	96(%ecx), %eax
	movl	%eax, 44(%esp)
	cmpl	32(%ebp), %ebx
	jle	L255
	movl	72(%ecx), %eax
	movl	%esi, 4(%esp)
	movl	%ebx, 40(%esp)
	movl	%eax, 8(%esp)
	movl	76(%ecx), %eax
	movl	%eax, 20(%esp)
	movl	12(%ebp), %eax
	movl	%eax, %esi
	jmp	L252
	.p2align 4,,10
	.p2align 3
L256:
	movl	52(%esp), %eax
	movl	%ecx, 48(%esp)
	movl	%eax, 44(%esp)
L252:
	movl	56(%esp), %ecx
	movl	64(%esp), %ebx
	sarl	$6, %ecx
	movsbl	-1(%ebx,%edi), %edx
	movswl	__ZL17cubic_spline_lut0(%ecx,%ecx), %eax
	imull	%eax, %edx
	movsbl	(%ebx,%edi), %eax
	movswl	__ZL17cubic_spline_lut1(%ecx,%ecx), %ebx
	imull	%ebx, %eax
	movl	64(%esp), %ebx
	addl	%edx, %eax
	movsbl	2(%ebx,%edi), %edx
	movswl	__ZL17cubic_spline_lut3(%ecx,%ecx), %ebx
	movswl	__ZL17cubic_spline_lut2(%ecx,%ecx), %ecx
	imull	%ebx, %edx
	movl	64(%esp), %ebx
	addl	%eax, %edx
	movsbl	1(%ebx,%edi), %eax
	imull	%ecx, %eax
	addl	%eax, %edx
	movl	12(%esp), %eax
	sarl	$6, %edx
	imull	%edx
	movl	%eax, 24(%esp)
	movl	44(%esp), %eax
	movl	%edx, 28(%esp)
	imull	36(%esp)
	movl	%edx, %ecx
	movl	%eax, %edx
	addl	24(%esp), %edx
	adcl	28(%esp), %ecx
	movl	%ecx, %ebx
	movl	4(%esp), %eax
	movl	%edx, %ecx
	imull	32(%esp)
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	%eax, %ecx
	movl	$65535, %eax
	movl	$-65536, %ebx
	shrdl	$16, %edx, %ecx
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	36(%esp), %eax
	cmpl	$-65536, %ecx
	cmovge	%ecx, %ebx
	imull	48(%esp)
	movl	24(%esp), %ecx
	movl	%ebx, 52(%esp)
	movl	28(%esp), %ebx
	addl	%eax, %ecx
	movl	32(%esp), %eax
	adcl	%edx, %ebx
	imull	16(%esp)
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	%eax, %ecx
	movl	$65535, %eax
	movl	20(%esp), %ebx
	shrdl	$16, %edx, %ecx
	cmpl	%eax, %ecx
	movl	%ebx, %edx
	cmovg	%eax, %ecx
	movl	$-65536, %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	movl	52(%esp), %eax
	sarl	$8, %edx
	imull	%edx, %eax
	addl	%eax, (%esi)
	movl	8(%esp), %edx
	addl	$8, %esi
	addl	40(%ebp), %ebx
	subl	$1, 40(%esp)
	movl	%edx, %eax
	addl	36(%ebp), %edx
	movl	%ebx, 20(%esp)
	sarl	$8, %eax
	movl	%edx, 8(%esp)
	movl	40(%esp), %ebx
	imull	%ecx, %eax
	addl	%eax, -4(%esi)
	movl	56(%esp), %eax
	addl	28(%ebp), %eax
	movl	%eax, %edx
	movzwl	%ax, %eax
	sarl	$16, %edx
	movl	%eax, 56(%esp)
	movl	44(%esp), %eax
	addl	%edx, %edi
	movl	48(%esp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 16(%esp)
	cmpl	%ebx, 32(%ebp)
	jne	L256
	movl	12(%ebp), %esi
	movl	16(%ebp), %eax
	movl	%ecx, 20(%esp)
	subl	40(%esp), %eax
	movl	8(%ebp), %ecx
	leal	(%esi,%eax,8), %eax
	movl	%eax, 12(%ebp)
	movl	40(%esp), %eax
	testl	%eax, %eax
	je	L261
L259:
	movl	%edi, 24(%esp)
	movl	%ecx, 8(%ebp)
	jmp	L254
	.p2align 4,,10
	.p2align 3
L258:
	movl	%ecx, 52(%esp)
	movl	%eax, 20(%esp)
L254:
	movl	56(%esp), %ecx
	movl	64(%esp), %esi
	movl	24(%esp), %edi
	sarl	$6, %ecx
	movsbl	-1(%esi,%edi), %edx
	movswl	__ZL17cubic_spline_lut0(%ecx,%ecx), %eax
	movswl	__ZL17cubic_spline_lut1(%ecx,%ecx), %ebx
	imull	%eax, %edx
	movsbl	(%esi,%edi), %eax
	imull	%ebx, %eax
	movswl	__ZL17cubic_spline_lut3(%ecx,%ecx), %ebx
	movswl	__ZL17cubic_spline_lut2(%ecx,%ecx), %ecx
	addl	%edx, %eax
	movsbl	2(%esi,%edi), %edx
	imull	%ebx, %edx
	addl	%eax, %edx
	movsbl	1(%esi,%edi), %eax
	imull	%ecx, %eax
	addl	%eax, %edx
	movl	12(%esp), %eax
	sarl	$6, %edx
	imull	%edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	52(%esp), %eax
	imull	36(%esp)
	movl	%eax, %ecx
	movl	%edx, %ebx
	movl	44(%esp), %eax
	addl	%esi, %ecx
	adcl	%edi, %ebx
	imull	32(%esp)
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	%eax, %ecx
	movl	$65535, %eax
	shrdl	$16, %edx, %ecx
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	$-65536, %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	movl	36(%esp), %eax
	imull	20(%esp)
	addl	%eax, %esi
	movl	32(%esp), %eax
	adcl	%edx, %edi
	imull	48(%esp)
	addl	%esi, %eax
	movl	24(%ebp), %esi
	adcl	%edi, %edx
	movl	%eax, %ebx
	movl	$65535, %eax
	shrdl	$16, %edx, %ebx
	cmpl	%eax, %ebx
	cmovg	%eax, %ebx
	movl	$-65536, %eax
	cmpl	%eax, %ebx
	cmovge	%ebx, %eax
	imull	%ecx, %esi
	movl	%esi, %edx
	movl	12(%ebp), %esi
	addl	$8, 12(%ebp)
	addl	%edx, (%esi)
	movl	20(%ebp), %esi
	imull	%eax, %esi
	movl	%esi, %edx
	movl	12(%ebp), %esi
	addl	%edx, -4(%esi)
	movl	56(%esp), %edx
	addl	28(%ebp), %edx
	movl	%edx, %esi
	movzwl	%dx, %edi
	sarl	$16, %esi
	addl	%esi, 24(%esp)
	movl	20(%esp), %ebx
	subl	$1, 40(%esp)
	movl	%edi, 56(%esp)
	movl	52(%esp), %edi
	movl	%ebx, 48(%esp)
	movl	%edi, 44(%esp)
	jne	L258
	movl	%ecx, %esi
	movl	8(%ebp), %ecx
L253:
	movl	%eax, 104(%ecx)
	movl	20(%esp), %eax
	movl	%esi, 96(%ecx)
	movl	%eax, 108(%ecx)
	movl	52(%esp), %eax
	movl	%eax, 100(%ecx)
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
L255:
	.cfi_restore_state
	movl	44(%esp), %eax
	movl	%ebx, 40(%esp)
	movl	%esi, 44(%esp)
	movl	%eax, 52(%esp)
	movl	48(%esp), %eax
	movl	%eax, 20(%esp)
	movl	16(%esp), %eax
	movl	%eax, 48(%esp)
	movl	40(%esp), %eax
	testl	%eax, %eax
	jne	L259
	.p2align 4
	.p2align 3
L261:
	movl	44(%esp), %eax
	movl	48(%esp), %edi
	movl	52(%esp), %esi
	movl	%eax, 52(%esp)
	movl	20(%esp), %eax
	movl	%edi, 20(%esp)
	jmp	L253
	.cfi_endproc
LFE25:
	.p2align 4
	.globl	__Z37libxmp_mix_stereo_16bit_spline_filterP11mixer_voicePiiiiiiii
	.def	__Z37libxmp_mix_stereo_16bit_spline_filterP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
__Z37libxmp_mix_stereo_16bit_spline_filterP11mixer_voicePiiiiiiii:
LFB26:
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
	subl	$64, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %ecx
	movl	16(%ebp), %ebx
	movl	92(%ecx), %eax
	fnstcw	62(%esp)
	movl	%eax, 12(%esp)
	movzwl	62(%esp), %eax
	orb	$12, %ah
	movw	%ax, 60(%esp)
	fldl	32(%ecx)
	fld	%st(0)
	fldcw	60(%esp)
	fistpq	48(%esp)
	fldcw	62(%esp)
	movl	48(%esp), %eax
	fldcw	60(%esp)
	fistl	48(%esp)
	fldcw	62(%esp)
	movl	%eax, 28(%esp)
	fildl	48(%esp)
	fsubrp	%st, %st(1)
	fmuls	LC0
	fldcw	60(%esp)
	fistpl	48(%esp)
	fldcw	62(%esp)
	movl	104(%ecx), %eax
	movl	%eax, 56(%esp)
	movl	108(%ecx), %eax
	movl	%eax, 20(%esp)
	movl	112(%ecx), %eax
	movl	%eax, 16(%esp)
	movl	116(%ecx), %eax
	movl	%eax, 36(%esp)
	movl	120(%ecx), %eax
	movl	%eax, 32(%esp)
	movl	96(%ecx), %eax
	movl	%eax, 44(%esp)
	movl	100(%ecx), %eax
	movl	%eax, 24(%esp)
	cmpl	32(%ebp), %ebx
	jle	L267
	movl	72(%ecx), %eax
	movl	%ebx, 40(%esp)
	movl	%eax, (%esp)
	movl	76(%ecx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	jmp	L264
	.p2align 4,,10
	.p2align 3
L268:
	movl	%ecx, 44(%esp)
	movl	%eax, 56(%esp)
L264:
	movl	28(%esp), %eax
	movl	48(%esp), %ecx
	movl	12(%esp), %edi
	leal	2147483647(%eax), %ebx
	sarl	$6, %ecx
	movswl	2(%edi,%ebx,2), %edx
	movswl	__ZL17cubic_spline_lut1(%ecx,%ecx), %eax
	movswl	__ZL17cubic_spline_lut0(%ecx,%ecx), %esi
	imull	%eax, %edx
	movswl	(%edi,%ebx,2), %eax
	imull	%esi, %eax
	movswl	__ZL17cubic_spline_lut3(%ecx,%ecx), %esi
	movswl	__ZL17cubic_spline_lut2(%ecx,%ecx), %ecx
	addl	%edx, %eax
	movswl	6(%edi,%ebx,2), %edx
	imull	%esi, %edx
	addl	%eax, %edx
	movswl	4(%edi,%ebx,2), %eax
	imull	%ecx, %eax
	addl	%eax, %edx
	movl	16(%esp), %eax
	sarl	$14, %edx
	imull	%edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	44(%esp), %eax
	imull	36(%esp)
	movl	%eax, %ecx
	movl	%edx, %ebx
	movl	24(%esp), %eax
	addl	%esi, %ecx
	adcl	%edi, %ebx
	imull	32(%esp)
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	%eax, %ecx
	movl	$65535, %eax
	shrdl	$16, %edx, %ecx
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	$-65536, %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	movl	36(%esp), %eax
	imull	56(%esp)
	addl	%eax, %esi
	movl	32(%esp), %eax
	adcl	%edx, %edi
	imull	20(%esp)
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, %ebx
	movl	$65535, %eax
	movl	4(%esp), %edi
	shrdl	$16, %edx, %ebx
	cmpl	%eax, %ebx
	movl	%edi, %esi
	cmovg	%eax, %ebx
	movl	$-65536, %eax
	cmpl	%eax, %ebx
	cmovge	%ebx, %eax
	sarl	$8, %esi
	movl	(%esp), %ebx
	addl	40(%ebp), %edi
	movl	%esi, %edx
	movl	8(%esp), %esi
	movl	%edi, 4(%esp)
	imull	%ecx, %edx
	addl	%edx, (%esi)
	movl	%ebx, %edx
	addl	$8, %esi
	addl	36(%ebp), %ebx
	sarl	$8, %edx
	movl	%esi, 8(%esp)
	imull	%eax, %edx
	movl	%ebx, (%esp)
	addl	%edx, -4(%esi)
	movl	48(%esp), %edx
	movl	56(%esp), %ebx
	addl	28(%ebp), %edx
	movl	%edx, %edi
	subl	$1, 40(%esp)
	movl	40(%esp), %esi
	movl	%ebx, 20(%esp)
	movl	44(%esp), %ebx
	sarl	$16, %edi
	addl	%edi, 28(%esp)
	movzwl	%dx, %edi
	movl	%edi, 48(%esp)
	movl	%ebx, 24(%esp)
	cmpl	%esi, 32(%ebp)
	jne	L268
	movl	%eax, 24(%esp)
	movl	16(%ebp), %eax
	movl	%ecx, %edi
	movl	8(%ebp), %ecx
	subl	%esi, %eax
	movl	12(%ebp), %esi
	leal	(%esi,%eax,8), %eax
	movl	%eax, 12(%ebp)
	movl	40(%esp), %eax
	testl	%eax, %eax
	je	L273
L271:
	movl	%edi, 20(%esp)
	movl	%ecx, 8(%ebp)
	jmp	L266
	.p2align 4,,10
	.p2align 3
L270:
	movl	%ecx, 20(%esp)
	movl	%ebx, 24(%esp)
L266:
	movl	48(%esp), %ecx
	movl	28(%esp), %ebx
	movl	12(%esp), %edi
	addl	$2147483647, %ebx
	sarl	$6, %ecx
	movswl	2(%edi,%ebx,2), %edx
	movswl	__ZL17cubic_spline_lut1(%ecx,%ecx), %eax
	movswl	__ZL17cubic_spline_lut0(%ecx,%ecx), %esi
	imull	%eax, %edx
	movswl	(%edi,%ebx,2), %eax
	imull	%esi, %eax
	movswl	__ZL17cubic_spline_lut3(%ecx,%ecx), %esi
	movswl	__ZL17cubic_spline_lut2(%ecx,%ecx), %ecx
	addl	%edx, %eax
	movswl	6(%edi,%ebx,2), %edx
	imull	%esi, %edx
	addl	%eax, %edx
	movswl	4(%edi,%ebx,2), %eax
	imull	%ecx, %eax
	addl	%eax, %edx
	movl	16(%esp), %eax
	sarl	$14, %edx
	imull	%edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	20(%esp), %eax
	imull	36(%esp)
	movl	%eax, %ecx
	movl	%edx, %ebx
	movl	44(%esp), %eax
	addl	%esi, %ecx
	adcl	%edi, %ebx
	imull	32(%esp)
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	%eax, %ecx
	movl	$65535, %eax
	shrdl	$16, %edx, %ecx
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	$-65536, %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	movl	36(%esp), %eax
	imull	24(%esp)
	addl	%eax, %esi
	movl	32(%esp), %eax
	adcl	%edx, %edi
	imull	56(%esp)
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, %ebx
	movl	$65535, %eax
	shrdl	$16, %edx, %ebx
	movl	24(%ebp), %edx
	cmpl	%eax, %ebx
	cmovg	%eax, %ebx
	movl	$-65536, %eax
	cmpl	%eax, %ebx
	cmovl	%eax, %ebx
	imull	%ecx, %edx
	movl	%edx, %eax
	movl	12(%ebp), %edx
	addl	$8, 12(%ebp)
	addl	%eax, (%edx)
	movl	20(%ebp), %edx
	imull	%ebx, %edx
	movl	%edx, %eax
	movl	12(%ebp), %edx
	addl	%eax, -4(%edx)
	movl	48(%esp), %eax
	addl	28(%ebp), %eax
	movl	%eax, %edx
	movzwl	%ax, %edi
	sarl	$16, %edx
	addl	%edx, 28(%esp)
	movl	24(%esp), %esi
	subl	$1, 40(%esp)
	movl	20(%esp), %eax
	movl	%edi, 48(%esp)
	movl	%esi, 56(%esp)
	movl	%eax, 44(%esp)
	jne	L270
	movl	%ecx, %esi
	movl	8(%ebp), %ecx
	movl	%eax, %edi
	movl	%ebx, %eax
L265:
	movl	%eax, 104(%ecx)
	movl	24(%esp), %eax
	movl	%esi, 96(%ecx)
	movl	%eax, 108(%ecx)
	movl	%edi, 100(%ecx)
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
L267:
	.cfi_restore_state
	movl	24(%esp), %eax
	movl	44(%esp), %edi
	movl	%ebx, 40(%esp)
	movl	%eax, 44(%esp)
	movl	56(%esp), %eax
	movl	%eax, 24(%esp)
	movl	20(%esp), %eax
	movl	%eax, 56(%esp)
	movl	40(%esp), %eax
	testl	%eax, %eax
	jne	L271
	.p2align 4
	.p2align 3
L273:
	movl	56(%esp), %ebx
	movl	24(%esp), %eax
	movl	%edi, %esi
	movl	44(%esp), %edi
	movl	%ebx, 24(%esp)
	jmp	L265
	.cfi_endproc
LFE26:
	.p2align 4
	.def	__ZL11midi_nibbleP12context_dataP12channel_dataiP11midi_stream.part.0;	.scl	3;	.type	32;	.endef
__ZL11midi_nibbleP12context_dataP12channel_dataiP11midi_stream.part.0:
LFB27:
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
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	24(%esp), %ebp
	movl	%ecx, (%esp)
	movl	0(%ebp), %ebx
L301:
	cmpb	$0, (%ebx)
	je	L319
	addl	$1, %ebx
	movl	%ebx, 0(%ebp)
	movzbl	-1(%ebx), %edx
	leal	-48(%edx), %eax
	movl	%edx, %ecx
	cmpl	$9, %eax
	jbe	L274
	leal	-65(%edx), %eax
	cmpl	$5, %eax
	jbe	L320
	subl	$97, %ecx
	cmpb	$25, %cl
	ja	L301
	movzbl	%cl, %ecx
	jmp	*L281(,%ecx,4)
	.section .rdata,"dr"
	.align 4
L281:
	.long	L286
	.long	L286
	.long	L303
	.long	L301
	.long	L301
	.long	L301
	.long	L301
	.long	L290
	.long	L301
	.long	L301
	.long	L301
	.long	L301
	.long	L289
	.long	L288
	.long	L287
	.long	L286
	.long	L301
	.long	L301
	.long	L286
	.long	L301
	.long	L285
	.long	L284
	.long	L301
	.long	L283
	.long	L282
	.long	L280
	.text
	.p2align 4,,10
	.p2align 3
L289:
	movl	(%esp), %edi
	cmpl	704(%esi), %edi
	jnb	L286
	movl	716(%esi), %eax
	movl	4(%eax,%edi,8), %eax
	cmpl	712(%esi), %eax
	jnb	L286
	testl	%eax, %eax
	js	L286
	imull	$136, %eax, %eax
	addl	720(%esi), %eax
	jne	L321
	.p2align 4
	.p2align 3
L286:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
L292:
	movl	%ecx, 4(%ebp)
L274:
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
L280:
	.cfi_restore_state
	movl	8(%ebp), %eax
L291:
	testl	%eax, %eax
	js	L301
	movl	%eax, %ecx
	sarl	$4, %eax
	andl	$15, %ecx
	andl	$15, %eax
	jmp	L292
	.p2align 4,,10
	.p2align 3
L282:
	movl	472(%edi), %eax
L318:
	movl	$127, %edx
	sarl	%eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
L317:
	movl	%eax, %ecx
	sarl	$4, %eax
	andl	$15, %ecx
	jmp	L292
	.p2align 4,,10
	.p2align 3
L283:
	movl	440(%edi), %eax
	jmp	L318
	.p2align 4,,10
	.p2align 3
L284:
	movl	44(%edi), %eax
	movl	76(%edi), %edx
	imull	56(%edi), %edx
	imull	328(%esi), %edx
	imull	80(%edi), %edx
	testl	%eax, %eax
	js	L295
	movl	1460(%esi), %ecx
	cmpl	%ecx, %eax
	jl	L322
	movl	9820(%esi), %ebx
	addl	%ecx, %ebx
	cmpl	%ebx, %eax
	jge	L295
	subl	%ecx, %eax
	imull	$764, %eax, %eax
	addl	9828(%esi), %eax
L297:
	testl	%eax, %eax
	je	L295
	movl	32(%eax), %eax
	imull	%edx, %eax
	shrl	$24, %eax
	je	L304
L323:
	cmpl	$127, %eax
	jbe	L317
	movl	$7, %eax
	movl	$15, %ecx
	jmp	L292
	.p2align 4,,10
	.p2align 3
L285:
	movl	436(%edi), %eax
	movl	$127, %edx
	sarl	$3, %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	$1, %edx
	testl	%eax, %eax
	cmovle	%edx, %eax
	movl	%eax, %ecx
	sarl	$4, %eax
	andl	$15, %ecx
	jmp	L292
	.p2align 4,,10
	.p2align 3
L287:
	movl	228(%edi), %eax
	jmp	L291
	.p2align 4,,10
	.p2align 3
L288:
	movl	16(%edi), %eax
	movl	%eax, %ecx
	sarl	$4, %eax
	andl	$15, %ecx
	andl	$7, %eax
	jmp	L292
	.p2align 4,,10
	.p2align 3
L290:
	movl	(%esp), %eax
	movl	%eax, %ecx
	sarl	$4, %eax
	andl	$15, %ecx
	andl	$15, %eax
	jmp	L292
	.p2align 4,,10
	.p2align 3
L303:
	addl	$4, %esp
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
	movzbl	88(%eax), %ecx
	xorl	%eax, %eax
	shrb	$3, %cl
	andl	$1, %ecx
	jmp	L292
	.p2align 4,,10
	.p2align 3
L322:
	imull	$764, %eax, %eax
	addl	1496(%esi), %eax
	jmp	L297
	.p2align 4,,10
	.p2align 3
L295:
	movl	$64, %eax
	imull	%edx, %eax
	shrl	$24, %eax
	jne	L323
L304:
	xorl	%eax, %eax
	movl	$1, %ecx
	jmp	L292
	.p2align 4,,10
	.p2align 3
L319:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$-1, %eax
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
L320:
	.cfi_restore_state
	addl	$4, %esp
	.cfi_def_cfa_offset 20
	leal	-55(%edx), %eax
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
LFE27:
	.p2align 4
	.def	__ZL9midi_byteP12context_dataP12channel_dataiP11midi_stream;	.scl	3;	.type	32;	.endef
__ZL9midi_byteP12context_dataP12channel_dataiP11midi_stream:
LFB30:
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
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %esi
	movl	4(%esi), %ebx
	testl	%ebx, %ebx
	jns	L331
	movl	%esi, (%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	call	__ZL11midi_nibbleP12context_dataP12channel_dataiP11midi_stream.part.0
	movl	4(%esi), %ebp
	movl	4(%esp), %edx
	movl	8(%esp), %ecx
	movl	%eax, %ebx
	testl	%ebp, %ebp
	jns	L332
L326:
	movl	%esi, (%esp)
	movl	%edi, %eax
	call	__ZL11midi_nibbleP12context_dataP12channel_dataiP11midi_stream.part.0
	movl	%eax, %ebp
L327:
	movl	%ebx, %eax
	movl	$-1, %edx
	sall	$4, %eax
	orl	%ebp, %eax
	orl	%ebx, %ebp
	cmovs	%edx, %eax
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
L332:
	.cfi_restore_state
	movl	$-1, 4(%esi)
	jmp	L327
	.p2align 4,,10
	.p2align 3
L331:
	movl	$-1, 4(%esi)
	jmp	L326
	.cfi_endproc
LFE30:
	.p2align 4
	.def	__ZL17get_subinstrumentP12context_dataii;	.scl	3;	.type	32;	.endef
__ZL17get_subinstrumentP12context_dataii:
LFB32:
	.cfi_startproc
	cmpl	1460(%eax), %edx
	jnb	L347
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	imull	$764, %edx, %edx
	addl	1496(%eax), %edx
	movl	36(%edx), %ebx
	testl	%ebx, %ebx
	jle	L336
	cmpl	$120, %ecx
	ja	L337
	movzbl	512(%edx,%ecx,2), %eax
	cmpl	%eax, %ebx
	jle	L336
	cmpl	$255, %eax
	je	L336
	sall	$6, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	addl	756(%edx), %eax
	ret
	.p2align 4,,10
	.p2align 3
L336:
	.cfi_restore_state
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L347:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L337:
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	756(%edx), %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE32:
	.section	.text.unlikely,"x"
LCOLDB2:
	.text
LHOTB2:
	.p2align 4
	.def	__ZL21reset_envelopes_carryP12context_dataP12channel_data;	.scl	3;	.type	32;	.endef
__ZL21reset_envelopes_carryP12context_dataP12channel_data:
LFB34:
	.cfi_startproc
	movl	%eax, %ecx
	movl	44(%edx), %eax
	cmpl	1460(%ecx), %eax
	jnb	L356
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	1496(%ecx), %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	imull	$764, %eax, %ebx
	movl	36(%esi,%ebx), %esi
	testl	%esi, %esi
	jle	L348
	andl	$-17, 8(%edx)
	testl	%eax, %eax
	js	L350
	movl	1460(%ecx), %esi
	cmpl	%esi, %eax
	jl	L359
	movl	9820(%ecx), %ebx
	addl	%esi, %ebx
	cmpl	%ebx, %eax
	jge	L350
	subl	%esi, %eax
	imull	$764, %eax, %ebx
	addl	9828(%ecx), %ebx
L352:
	testb	$32, 44(%ebx)
	jne	L353
	movl	$-1, 96(%edx)
L353:
	testb	$32, 200(%ebx)
	jne	L354
	movl	$-1, 100(%edx)
L354:
	testb	$32, 356(%ebx)
	jne	L348
	movl	$-1, 104(%edx)
L348:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L356:
	ret
	.p2align 4,,10
	.p2align 3
L359:
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	addl	1496(%ecx), %ebx
	jmp	L352
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__ZL21reset_envelopes_carryP12context_dataP12channel_data.cold;	.scl	3;	.type	32;	.endef
__ZL21reset_envelopes_carryP12context_dataP12channel_data.cold:
LFSB34:
L350:
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	44, %eax
	ud2
	.cfi_endproc
LFE34:
	.text
	.section	.text.unlikely,"x"
LCOLDE2:
	.text
LHOTE2:
	.p2align 4
	.def	__ZL19set_effect_defaultsP12context_dataiP17xmp_subinstrumentP12channel_datai;	.scl	3;	.type	32;	.endef
__ZL19set_effect_defaultsP12context_dataiP17xmp_subinstrumentP12channel_datai:
LFB35:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	testl	%ecx, %ecx
	je	L361
	testl	%edx, %edx
	js	L361
	testb	$4, 2612(%ebx)
	jne	L362
	movl	16(%ecx), %edx
	movl	%edx, 40(%eax)
L362:
	movl	4(%ecx), %edx
	movl	%edx, 80(%eax)
	movl	56(%ecx), %edx
	testb	$-128, %dl
	je	L363
	leal	-256(%edx,%edx), %edx
	movl	%edx, 404(%eax)
L363:
	movl	$256, 412(%eax)
	movl	60(%ecx), %edx
	testb	$-128, %dl
	je	L364
	leal	-256(%edx,%edx), %edx
	movl	%edx, 408(%eax)
L364:
	movl	12(%ebp), %edx
	xorl	$1, %edx
	movl	%edx, 416(%eax)
	movl	24(%ecx), %edx
	movl	%edx, 208(%eax)
	movl	28(%ecx), %ebx
	leal	2(%ebx), %edx
	sarl	$2, %edx
	movl	%edx, 204(%eax)
	movl	20(%ecx), %edx
	movl	%edx, 200(%eax)
	movl	32(%ecx), %edx
	movl	$0, 124(%eax)
	movl	%edx, 216(%eax)
	movl	$0, 144(%eax)
L361:
	movlps	LC3, %xmm0
	xorl	%edx, %edx
	movl	$0, 60(%eax)
	movw	%dx, 248(%eax)
	movb	$0, 172(%eax)
	movlps	%xmm0, 188(%eax)
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE35:
	.p2align 4
	.def	__ZL11is_same_sidP12context_dataiii;	.scl	3;	.type	32;	.endef
__ZL11is_same_sidP12context_dataiii:
LFB41:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	imull	$480, %edx, %edx
	movl	%ebx, (%esp)
	.cfi_offset 3, -16
	movl	%eax, %ebx
	movl	%esi, 4(%esp)
	.cfi_offset 6, -12
	movl	1460(%eax), %esi
	addl	376(%eax), %edx
	cmpl	%esi, %ecx
	jnb	L378
	imull	$764, %ecx, %ecx
	addl	1496(%eax), %ecx
	movl	36(%ecx), %eax
	testl	%eax, %eax
	jle	L378
	cmpl	$120, 16(%esp)
	ja	L379
	movl	%edi, 8(%esp)
	.cfi_offset 7, -8
	movl	16(%esp), %edi
	movzbl	512(%ecx,%edi,2), %edi
	cmpl	%edi, %eax
	jle	L405
	movl	%edi, %eax
	cmpl	$255, %edi
	je	L405
	sall	$6, %eax
	addl	756(%ecx), %eax
	movl	8(%esp), %edi
	.cfi_restore 7
	movl	%eax, %ecx
	movl	44(%edx), %eax
	cmpl	%esi, %eax
	jb	L380
L382:
	movl	(%esp), %ebx
	movl	4(%esp), %esi
	xorl	%eax, %eax
	addl	$12, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L405:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movl	8(%esp), %edi
	.cfi_restore 7
L378:
	xorl	%ecx, %ecx
L377:
	movl	44(%edx), %eax
	cmpl	%esi, %eax
	jnb	L382
L380:
	imull	$764, %eax, %eax
	addl	1496(%ebx), %eax
	movl	36(%eax), %ebx
	testl	%ebx, %ebx
	jle	L382
	movl	16(%edx), %edx
	cmpl	$120, %edx
	ja	L383
	movzbl	512(%eax,%edx,2), %edx
	cmpl	$255, %edx
	je	L382
	cmpl	%edx, %ebx
	jle	L382
	sall	$6, %edx
	addl	756(%eax), %edx
	movl	%edx, %eax
	jmp	L384
	.p2align 4,,10
	.p2align 3
L379:
	movl	756(%ecx), %ecx
	jmp	L377
	.p2align 4,,10
	.p2align 3
L383:
	movl	756(%eax), %eax
L384:
	testl	%ecx, %ecx
	je	L382
	testl	%eax, %eax
	je	L382
	movl	40(%eax), %eax
	cmpl	%eax, 40(%ecx)
	sete	%al
	movl	(%esp), %ebx
	movl	4(%esp), %esi
	addl	$12, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	movzbl	%al, %eax
	ret
	.cfi_endproc
LFE41:
	.p2align 4
	.def	__ZL11get_lfo_modP3lfo.part.0;	.scl	3;	.type	32;	.endef
__ZL11get_lfo_modP3lfo.part.0:
LFB42:
	.cfi_startproc
	movl	%eax, %edx
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	L407
	jg	L408
	testl	%eax, %eax
	je	L409
	cmpl	$1, %eax
	jne	L413
	movl	12(%edx), %eax
	leal	0(,%eax,8), %ecx
	movl	$255, %eax
	subl	%ecx, %eax
	imull	8(%edx), %eax
	ret
	.p2align 4,,10
	.p2align 3
L408:
	cmpl	$3, %eax
	jne	L413
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	%edx, (%esp)
	call	_rand
	movl	(%esp), %edx
	andl	$511, %eax
	subl	$256, %eax
	imull	8(%edx), %eax
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L413:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L407:
	cmpl	$31, 12(%edx)
	movl	$255, %ecx
	movl	$-255, %eax
	cmovle	%ecx, %eax
	imull	8(%edx), %eax
	ret
	.p2align 4,,10
	.p2align 3
L409:
	movl	12(%edx), %eax
	movl	__ZL9sine_wave(,%eax,4), %eax
	imull	8(%edx), %eax
	ret
	.cfi_endproc
LFE42:
	.p2align 4
	.globl	__ZL18SCRIPT_ParseStringPPcS_.lto_priv.0
	.def	__ZL18SCRIPT_ParseStringPPcS_.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL18SCRIPT_ParseStringPPcS_.lto_priv.0:
LFB43:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	addl	$1, %edx
	movl	%esi, 20(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	%edi, 24(%esp)
	movl	(%eax), %eax
	testl	%eax, %eax
	.cfi_offset 7, -12
	je	L470
L421:
	movzbl	(%ebx), %eax
	cmpb	$34, %al
	jne	L469
	jmp	L435
	.p2align 4,,10
	.p2align 3
L436:
	movl	(%esi), %edi
	movl	%edx, %ecx
	subl	%ebx, %ecx
	leal	-1(%edi,%ecx), %ecx
	cmpb	$32, %al
	je	L455
	cmpb	$9, %al
	je	L455
	addl	$1, %edx
	movb	%al, (%ecx)
	movzbl	-1(%edx), %eax
L469:
	testb	%al, %al
	jne	L436
L420:
	movl	16(%esp), %ebx
	movl	20(%esp), %esi
	movl	%edx, %eax
	movl	24(%esp), %edi
	addl	$32, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L435:
	.cfi_restore_state
	movzbl	1(%ebx), %eax
	leal	2(%ebx), %edi
	testb	%al, %al
	je	L452
	xorl	%ecx, %ecx
L447:
	cmpb	$34, %al
	je	L438
	cmpb	$92, %al
	jne	L439
	movzbl	1(%edx), %eax
	leal	2(%edx), %ebx
	cmpb	$114, %al
	je	L440
	ja	L441
	testb	%al, %al
	je	L453
	cmpb	$110, %al
	jne	L443
	movl	(%esi), %eax
	movl	%ebx, %edx
	movb	$10, (%eax,%ecx)
	jmp	L445
	.p2align 4,,10
	.p2align 3
L455:
	movb	$0, (%ecx)
	jmp	L420
	.p2align 4,,10
	.p2align 3
L470:
	movl	%ebp, 28(%esp)
	.cfi_offset 5, -8
	movzbl	(%ebx), %ecx
	cmpb	$34, %cl
	je	L471
	xorl	%eax, %eax
	testb	%cl, %cl
	je	L424
	.p2align 4
	.p2align 3
L431:
	movl	%eax, %edi
	addl	$1, %eax
	cmpb	$32, %cl
	je	L454
	cmpb	$9, %cl
	je	L454
	movzbl	(%ebx,%eax), %ecx
	testb	%cl, %cl
	jne	L431
	leal	2(%edi), %ebp
L426:
	movl	%ebp, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, 12(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	%eax, %edi
	testl	%eax, %eax
	je	L434
	movl	%ebp, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	%edi, (%esi)
	movl	12(%esp), %edx
	movl	28(%esp), %ebp
	.cfi_restore 5
	jmp	L421
	.p2align 4,,10
	.p2align 3
L439:
	movl	(%esi), %edx
	movb	%al, (%edx,%ecx)
	movl	%edi, %edx
L445:
	movzbl	(%edx), %eax
	leal	1(%edx), %edi
	addl	$1, %ecx
	testb	%al, %al
	jne	L447
L452:
	movl	%edi, %edx
	jmp	L420
	.p2align 4,,10
	.p2align 3
L438:
	movl	(%esi), %eax
	movl	%edi, %edx
	movb	$0, (%eax,%ecx)
	jmp	L420
	.p2align 4,,10
	.p2align 3
L471:
	.cfi_offset 5, -8
	movzbl	1(%ebx), %ecx
	leal	2(%ebx), %ebp
	movl	%edx, %edi
	xorl	%eax, %eax
	testb	%cl, %cl
	jne	L427
	jmp	L424
	.p2align 4,,10
	.p2align 3
L473:
	movl	%ebp, %edi
L430:
	movzbl	(%edi), %ecx
	leal	1(%edi), %ebp
	testb	%cl, %cl
	je	L472
	addl	$1, %eax
L427:
	cmpb	$34, %cl
	je	L428
	cmpb	$92, %cl
	jne	L473
	cmpb	$0, 1(%edi)
	je	L428
	addl	$2, %edi
	jmp	L430
	.p2align 4,,10
	.p2align 3
L441:
	.cfi_restore 5
	cmpb	$116, %al
	jne	L443
	movl	(%esi), %eax
	movl	%ebx, %edx
	movb	$9, (%eax,%ecx)
	jmp	L445
	.p2align 4,,10
	.p2align 3
L454:
	.cfi_offset 5, -8
	movl	%eax, %ebp
	jmp	L426
L428:
	leal	1(%eax), %ebp
	jmp	L426
L440:
	.cfi_restore 5
	movl	(%esi), %eax
	movl	%ebx, %edx
	movb	$13, (%eax,%ecx)
	jmp	L445
L443:
	movl	(%esi), %edx
	movb	%al, (%edx,%ecx)
	movl	%ebx, %edx
	jmp	L445
L453:
	movl	%ebx, %edx
	jmp	L420
L472:
	.cfi_offset 5, -8
	leal	2(%eax), %ebp
	jmp	L426
L434:
	movl	$1, %eax
	call	__Z13handle_memerri
L424:
	movl	$1, %ebp
	jmp	L426
	.cfi_endproc
LFE43:
	.p2align 4
	.globl	_SCRIPT_GetStringPtr
	.def	_SCRIPT_GetStringPtr;	.scl	2;	.type	32;	.endef
_SCRIPT_GetStringPtr:
LFB44:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%esi, 16(%esp)
	.cfi_offset 6, -8
	movl	%ecx, %esi
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %ecx
	testl	%ecx, %ecx
	je	L477
	movl	(%ecx), %ecx
	testl	%ecx, %ecx
	je	L477
	call	_SCRIPT_SectionExists
	testl	%eax, %eax
	je	L477
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -12
	movl	4(%eax), %ebx
	testl	%ebx, %ebx
	jne	L479
	jmp	L488
	.p2align 4,,10
	.p2align 3
L480:
	movl	%eax, %ebx
L479:
	movl	%esi, 4(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L478
	movl	8(%ebx), %eax
	cmpl	%eax, %ebx
	jne	L480
L488:
	movl	12(%esp), %ebx
	.cfi_restore 3
L477:
	movl	$1, %ecx
	movl	16(%esp), %esi
	addl	$20, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	movl	%ecx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L478:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	%eax, 8(%esp)
	movl	4(%ebx), %edx
	movl	24(%esp), %eax
	call	__ZL18SCRIPT_ParseStringPPcS_.lto_priv.0
	movl	8(%esp), %ecx
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	16(%esp), %esi
	addl	$20, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	movl	%ecx, %eax
	ret
	.cfi_endproc
LFE44:
	.p2align 4
	.globl	_SCRIPT_GetString
	.def	_SCRIPT_GetString;	.scl	2;	.type	32;	.endef
_SCRIPT_GetString:
LFB48:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%esi, 16(%esp)
	.cfi_offset 6, -8
	movl	%ecx, %esi
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %ecx
	testl	%ecx, %ecx
	je	L492
	movl	(%ecx), %ecx
	testl	%ecx, %ecx
	je	L492
	call	_SCRIPT_SectionExists
	testl	%eax, %eax
	je	L492
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -12
	movl	4(%eax), %ebx
	testl	%ebx, %ebx
	jne	L494
	jmp	L503
	.p2align 4,,10
	.p2align 3
L495:
	movl	%eax, %ebx
L494:
	movl	%esi, 4(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L493
	movl	8(%ebx), %eax
	cmpl	%eax, %ebx
	jne	L495
L503:
	movl	12(%esp), %ebx
	.cfi_restore 3
L492:
	movl	$1, %ecx
	movl	16(%esp), %esi
	addl	$20, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	movl	%ecx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L493:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	4(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	24(%esp), %eax
	call	__ZL18SCRIPT_ParseStringPPcS_.lto_priv.0
	movl	8(%esp), %ecx
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	16(%esp), %esi
	addl	$20, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	movl	%ecx, %eax
	ret
	.cfi_endproc
LFE48:
	.p2align 4
	.globl	_SCRIPT_GetNumber.part.0.isra.0
	.def	_SCRIPT_GetNumber.part.0.isra.0;	.scl	2;	.type	32;	.endef
_SCRIPT_GetNumber.part.0.isra.0:
LFB50:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%esi, 20(%esp)
	.cfi_offset 6, -8
	movl	%ecx, %esi
	call	_SCRIPT_SectionExists
	testl	%eax, %eax
	je	L504
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -12
	movl	4(%eax), %ebx
	testl	%ebx, %ebx
	jne	L507
	jmp	L519
	.p2align 4,,10
	.p2align 3
L510:
	movl	%eax, %ebx
L507:
	movl	%esi, 4(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L506
	movl	8(%ebx), %eax
	cmpl	%ebx, %eax
	jne	L510
L519:
	movl	16(%esp), %ebx
	.cfi_restore 3
L504:
	movl	20(%esp), %esi
	addl	$24, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L506:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	4(%ebx), %eax
	cmpb	$48, (%eax)
	jne	L508
	cmpb	$120, 1(%eax)
	je	L520
L508:
	leal	12(%esp), %edx
	movl	$10, 8(%esp)
	movl	%edx, 4(%esp)
L518:
	movl	%eax, (%esp)
	call	_strtol
	movl	28(%esp), %ecx
	movl	%eax, (%ecx)
	jmp	L519
	.p2align 4,,10
	.p2align 3
L520:
	leal	12(%esp), %edx
	movl	$16, 8(%esp)
	addl	$2, %eax
	movl	%edx, 4(%esp)
	jmp	L518
	.cfi_endproc
LFE50:
	.p2align 4
	.globl	_SCRIPT_FreeSection.part.0
	.def	_SCRIPT_FreeSection.part.0;	.scl	2;	.type	32;	.endef
_SCRIPT_FreeSection.part.0:
LFB51:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	4(%eax), %eax
	movl	8(%eax), %ebx
	cmpl	%ebx, %eax
	je	L522
	.p2align 4
	.p2align 3
L523:
	movl	(%eax), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	4(%esi), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	4(%esi), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	%ebx, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	%ebx, 4(%esi)
	movl	8(%ebx), %ebx
	cmpl	%eax, %ebx
	jne	L523
L522:
	movl	(%eax), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	4(%esi), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	4(%esi), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	(%esi), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE51:
	.p2align 4
	.globl	_SCRIPT_AddEntry.part.0
	.def	_SCRIPT_AddEntry.part.0;	.scl	2;	.type	32;	.endef
_SCRIPT_AddEntry.part.0:
LFB52:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$32, %esp
	movl	%ebx, -12(%ebp)
	.cfi_offset 3, -20
	movl	8(%ebp), %ebx
	movl	%edi, -4(%ebp)
	.cfi_offset 7, -12
	movl	%ecx, %edi
	movl	%ebx, -16(%ebp)
	call	_SCRIPT_AddSection
	testl	%eax, %eax
	je	L527
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	movl	%eax, %ebx
	testl	%edi, %edi
	je	L529
	movl	4(%eax), %esi
	testl	%esi, %esi
	jne	L531
	jmp	L529
	.p2align 4,,10
	.p2align 3
L539:
	movl	%eax, %esi
L531:
	movl	%edi, 4(%esp)
	movl	(%esi), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L530
	movl	8(%esi), %eax
	cmpl	%eax, %esi
	jne	L539
L529:
	movl	$16, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L532
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	%eax, 8(%eax)
	movl	%eax, 12(%eax)
	movl	%edi, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %edx
	movl	%eax, -24(%ebp)
	movl	%edx, (%esp)
	movl	%edx, -20(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	movl	-20(%ebp), %edx
	subl	$4, %esp
	testl	%eax, %eax
	je	L555
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, -20(%ebp)
	call	_strcpy
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %ecx
	movb	$0, (%ecx,%eax)
	movl	%ecx, (%esi)
	movl	4(%ebx), %eax
	testl	%eax, %eax
	je	L556
	.p2align 4
	.p2align 4
	.p2align 3
L536:
	movl	%eax, %ecx
	movl	8(%eax), %eax
	cmpl	%eax, %ecx
	jne	L536
	movl	%esi, 8(%eax)
	movl	%eax, 12(%esi)
L530:
	movl	4(%esi), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	movl	-16(%ebp), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %edi
	movl	%eax, %ebx
	movl	%edi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L538
	movl	-16(%ebp), %eax
	movl	%ecx, (%esp)
	movl	%ecx, -16(%ebp)
	movl	%eax, 4(%esp)
	call	_strcpy
	movl	-16(%ebp), %ecx
	movb	$0, (%ecx,%ebx)
	movl	%ecx, 4(%esi)
	movl	-8(%ebp), %esi
	.cfi_restore 6
L527:
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
L538:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%edi, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L556:
	movl	%esi, 4(%ebx)
	jmp	L530
L555:
	movl	%edx, %eax
	call	__Z13handle_memerri
L532:
	movl	$16, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE52:
	.p2align 4
	.globl	_SCRIPT_PutString
	.def	_SCRIPT_PutString;	.scl	2;	.type	32;	.endef
_SCRIPT_PutString:
LFB53:
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
	subl	$20, %esp
	.cfi_def_cfa_offset 40
	movl	40(%esp), %ebx
	movl	%edx, 12(%esp)
	movl	%ecx, 16(%esp)
	testl	%ebx, %ebx
	je	L558
	movzbl	(%ebx), %eax
	testb	%al, %al
	je	L576
	movl	%ebx, 4(%esp)
	movl	$3, %esi
	movl	$-33554452, %ebp
	movl	%edi, 8(%esp)
	jmp	L564
	.p2align 6
	.p2align 4,,10
	.p2align 3
L578:
	addl	$1, 4(%esp)
	movl	4(%esp), %eax
	addl	$2, %esi
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L588
L564:
	leal	-9(%eax), %ebx
	xorl	%edx, %edx
	btl	%ebx, %ebp
	setnc	%cl
	cmpb	$25, %bl
	cmovbe	%ecx, %edx
	cmpb	$92, %al
	je	L578
	testb	%dl, %dl
	jne	L578
	cmpb	$32, %al
	sbbl	$-1, %esi
	addl	$1, 4(%esp)
	movl	4(%esp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	L564
	.p2align 4
	.p2align 3
L588:
	movl	40(%esp), %ebx
	movl	8(%esp), %edi
	movl	%esi, %eax
L559:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 36
	subl	$4, %esp
	.cfi_def_cfa_offset 40
	movl	%eax, %ebp
	testl	%eax, %eax
	je	L565
	movb	$34, (%eax)
	leal	1(%eax), %edx
	movzbl	(%ebx), %eax
	testb	%al, %al
	je	L567
	movl	$29788, %esi
	movl	$28252, %ecx
	.p2align 4
	.p2align 3
L566:
	cmpb	$13, %al
	je	L589
	cmpb	$10, %al
	je	L590
	cmpb	$9, %al
	je	L591
	cmpb	$34, %al
	je	L579
	cmpb	$92, %al
	je	L579
	cmpb	$31, %al
	jbe	L569
	movb	%al, (%edx)
	addl	$1, %edx
L569:
	movzbl	1(%ebx), %eax
	addl	$1, %ebx
	testb	%al, %al
	jne	L566
	.p2align 4
	.p2align 3
L567:
	movl	$34, %ecx
	movw	%cx, (%edx)
	cmpl	$19, %edi
	ja	L574
	movl	__ZL11scriptfiles.lto_priv.0(,%edi,4), %eax
	testl	%eax, %eax
	je	L574
	movl	16(%esp), %ecx
	movl	12(%esp), %edx
	movl	%ebp, (%esp)
	movl	%edi, %eax
	call	_SCRIPT_AddEntry.part.0
L574:
	movl	%ebp, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 36
	subl	$4, %esp
	.cfi_def_cfa_offset 40
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
L589:
	.cfi_restore_state
	movl	$29276, %eax
	addl	$1, %ebx
	addl	$2, %edx
	movw	%ax, -2(%edx)
	movzbl	(%ebx), %eax
	testb	%al, %al
	jne	L566
	jmp	L567
	.p2align 4,,10
	.p2align 3
L590:
	addl	$1, %ebx
	movw	%cx, (%edx)
	addl	$2, %edx
	movzbl	(%ebx), %eax
	testb	%al, %al
	jne	L566
	jmp	L567
	.p2align 4,,10
	.p2align 3
L579:
	movb	$92, (%edx)
	movzbl	(%ebx), %eax
	addl	$1, %ebx
	addl	$2, %edx
	movb	%al, -1(%edx)
	movzbl	(%ebx), %eax
	testb	%al, %al
	jne	L566
	jmp	L567
	.p2align 4,,10
	.p2align 3
L591:
	addl	$1, %ebx
	movw	%si, (%edx)
	addl	$2, %edx
	movzbl	(%ebx), %eax
	testb	%al, %al
	jne	L566
	jmp	L567
	.p2align 4,,10
	.p2align 3
L558:
	movl	$3, (%esp)
	movl	_g_sm_heap, %ecx
	movl	$3, %esi
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 36
	subl	$4, %esp
	.cfi_def_cfa_offset 40
	movl	%eax, %ebp
	testl	%eax, %eax
	jne	L592
L565:
	movl	%esi, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L592:
	movb	$34, 0(%ebp)
	leal	1(%ebp), %edx
	jmp	L567
L576:
	movl	$3, %eax
	movl	$3, %esi
	jmp	L559
	.cfi_endproc
LFE53:
	.p2align 4
	.globl	__Z22libxmp_init_instrumentP11module_data
	.def	__Z22libxmp_init_instrumentP11module_data;	.scl	2;	.type	32;	.endef
__Z22libxmp_init_instrumentP11module_data:
LFB55:
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
	subl	$24, %esp
	movl	140(%eax), %eax
	testl	%eax, %eax
	jg	L607
L594:
	movl	144(%ebx), %eax
	testl	%eax, %eax
	jle	L596
	cmpl	$1024, %eax
	jg	L603
	imull	$52, %eax, %esi
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L598
	movl	%esi, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, -20(%ebp)
	call	_memset
	movl	144(%ebx), %esi
	movl	-20(%ebp), %edx
	sall	$4, %esi
	movl	%edx, 180(%ebx)
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L608
	movl	%esi, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, -20(%ebp)
	call	_memset
	movl	-20(%ebp), %edx
	movl	144(%ebx), %eax
	movl	%edx, 8488(%ebx)
	testl	%eax, %eax
	jle	L596
	fildl	1264(%ebx)
	fstpl	(%edx)
	cmpl	$1, 144(%ebx)
	jle	L596
	movl	$1, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L602:
	fildl	1264(%ebx)
	movl	%eax, %edx
	addl	$1, %eax
	sall	$4, %edx
	addl	8488(%ebx), %edx
	fstpl	(%edx)
	cmpl	%eax, 144(%ebx)
	jg	L602
L596:
	xorl	%eax, %eax
L593:
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
L607:
	.cfi_restore_state
	imull	$764, %eax, %esi
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L595
	movl	%esi, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, -20(%ebp)
	call	_memset
	movl	-20(%ebp), %edx
	movl	%edx, 176(%ebx)
	jmp	L594
	.p2align 4,,10
	.p2align 3
L598:
	movl	$52, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L608:
	movl	$16, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L595:
	movl	$764, %eax
	call	__Z13handle_memerri
L603:
	movl	$-1, %eax
	jmp	L593
	.cfi_endproc
LFE55:
	.p2align 4
	.globl	__Z22libxmp_realloc_samplesP11module_datai
	.def	__Z22libxmp_realloc_samplesP11module_datai;	.scl	2;	.type	32;	.endef
__Z22libxmp_realloc_samplesP11module_datai:
LFB56:
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
	subl	$24, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	testl	%edx, %edx
	js	L610
	movl	%eax, %ebx
	movl	_g_sm_heap, %ecx
	movl	180(%eax), %eax
	movl	%edx, %esi
	je	L629
	imull	$52, %edx, %edx
	movl	%edx, 4(%esp)
	movl	%edx, -20(%ebp)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	movl	%eax, %edi
	testl	%eax, %eax
	jne	L615
	movl	-20(%ebp), %edx
	testl	%edx, %edx
	jne	L616
	testl	%eax, %eax
	je	L610
L615:
	movl	%esi, %edx
	movl	%edi, 180(%ebx)
	sall	$4, %edx
	movl	%edx, 4(%esp)
	movl	8488(%ebx), %eax
	movl	%edx, -20(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	movl	%eax, %ecx
	testl	%eax, %eax
	jne	L627
	movl	-20(%ebp), %edx
	testl	%edx, %edx
	jne	L616
	testl	%eax, %eax
	je	L610
L627:
	movl	144(%ebx), %eax
	movl	%ecx, 8488(%ebx)
	cmpl	%eax, %esi
	jg	L630
L619:
	movl	%esi, 144(%ebx)
	xorl	%eax, %eax
L609:
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
L629:
	.cfi_restore_state
	movl	$0, 144(%ebx)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	movl	8488(%ebx), %eax
	subl	$4, %esp
	movl	$0, 180(%ebx)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	xorl	%eax, %eax
	subl	$4, %esp
	movl	$0, 8488(%ebx)
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
L630:
	.cfi_restore_state
	movl	%ecx, -24(%ebp)
	movl	%esi, %ecx
	subl	%eax, %ecx
	imull	$52, %eax, %eax
	imull	$52, %ecx, %edx
	movl	%ecx, -20(%ebp)
	movl	$0, 4(%esp)
	addl	%eax, %edi
	movl	%edx, 8(%esp)
	movl	%edi, (%esp)
	call	_memset
	movl	144(%ebx), %eax
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %ecx
	movl	$0, 4(%esp)
	sall	$4, %eax
	sall	$4, %edx
	addl	%eax, %ecx
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	call	_memset
	movl	144(%ebx), %eax
	cmpl	%eax, %esi
	jle	L619
	.p2align 5
	.p2align 4
	.p2align 3
L620:
	fildl	1264(%ebx)
	movl	%eax, %edx
	addl	$1, %eax
	sall	$4, %edx
	addl	8488(%ebx), %edx
	fstpl	(%edx)
	cmpl	%eax, %esi
	jne	L620
	jmp	L619
	.p2align 4,,10
	.p2align 3
L616:
	movl	%edx, %eax
	call	__Z13handle_memerri
L610:
	movl	$-1, %eax
	jmp	L609
	.cfi_endproc
LFE56:
	.p2align 4
	.globl	__Z19libxmp_init_patternP10xmp_module
	.def	__Z19libxmp_init_patternP10xmp_module;	.scl	2;	.type	32;	.endef
__Z19libxmp_init_patternP10xmp_module:
LFB58:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	132(%eax), %eax
	movl	_g_sm_heap, %ecx
	leal	0(,%eax,4), %ebx
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	testl	%eax, %eax
	je	L632
	movl	%ebx, 8(%esp)
	movl	%eax, %edi
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	128(%esi), %eax
	movl	%edi, 172(%esi)
	movl	_g_sm_heap, %ecx
	leal	0(,%eax,4), %ebx
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, %edi
	testl	%eax, %eax
	je	L632
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	%edi, 168(%esi)
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
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
L632:
	.cfi_restore_state
	movl	$4, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE58:
	.p2align 4
	.globl	__Z20libxmp_alloc_patternP10xmp_modulei
	.def	__Z20libxmp_alloc_patternP10xmp_modulei;	.scl	2;	.type	32;	.endef
__Z20libxmp_alloc_patternP10xmp_modulei:
LFB59:
	.cfi_startproc
	cmpl	%edx, 128(%eax)
	jle	L643
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%esi, 20(%esp)
	movl	168(%eax), %ecx
	.cfi_offset 6, -16
	leal	(%ecx,%edx,4), %esi
	movl	(%esi), %ecx
	testl	%ecx, %ecx
	jne	L639
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	_g_sm_heap, %ecx
	movl	%edi, 24(%esp)
	movl	%ebp, 28(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	136(%eax), %eax
	movl	%edx, 12(%esp)
	leal	4(,%eax,4), %edi
	movl	%edi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	%eax, %ebp
	testl	%eax, %eax
	je	L640
	movl	%edi, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	%ebp, (%esi)
	movl	168(%ebx), %eax
	movl	12(%esp), %ebx
	movl	24(%esp), %edi
	.cfi_restore 7
	movl	28(%esp), %ebp
	.cfi_restore 5
	cmpl	$1, (%eax,%ebx,4)
	movl	16(%esp), %ebx
	.cfi_restore 3
	sbbl	%eax, %eax
L638:
	movl	20(%esp), %esi
	addl	$32, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L640:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%edi, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L639:
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 7
	movl	$-1, %eax
	jmp	L638
	.p2align 4,,10
	.p2align 3
L643:
	.cfi_def_cfa_offset 4
	.cfi_restore 6
	movl	$-1, %eax
	ret
	.cfi_endproc
LFE59:
	.p2align 4
	.globl	__Z18libxmp_alloc_trackP10xmp_moduleii
	.def	__Z18libxmp_alloc_trackP10xmp_moduleii;	.scl	2;	.type	32;	.endef
__Z18libxmp_alloc_trackP10xmp_moduleii:
LFB60:
	.cfi_startproc
	testl	%edx, %edx
	js	L658
	cmpl	%edx, 132(%eax)
	jle	L658
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	%edi, 28(%esp)
	movl	%ebx, 20(%esp)
	.cfi_offset 7, -12
	.cfi_offset 3, -20
	movl	172(%eax), %ebx
	leal	(%ebx,%edx,4), %edi
	movl	(%edi), %ebx
	testl	%ebx, %ebx
	jne	L650
	testl	%ecx, %ecx
	jle	L650
	leal	4(,%ecx,8), %ebx
	movl	%esi, 24(%esp)
	.cfi_offset 6, -16
	movl	%ecx, %esi
	movl	_g_sm_heap, %ecx
	movl	%ebx, (%esp)
	movl	%ebp, 32(%esp)
	.cfi_offset 5, -8
	movl	%eax, %ebp
	movl	%edx, 12(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 36
	subl	$4, %esp
	.cfi_def_cfa_offset 40
	testl	%eax, %eax
	je	L651
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 16(%esp)
	call	_memset
	movl	16(%esp), %ecx
	movl	%ecx, (%edi)
	movl	12(%esp), %edi
	movl	172(%ebp), %eax
	movl	(%eax,%edi,4), %eax
	testl	%eax, %eax
	je	L661
	movl	%esi, (%eax)
	movl	24(%esp), %esi
	.cfi_restore 6
	xorl	%eax, %eax
	movl	32(%esp), %ebp
	.cfi_restore 5
L647:
	movl	20(%esp), %ebx
	movl	28(%esp), %edi
	addl	$36, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L651:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%ebx, %eax
	call	__Z13handle_memerri
L661:
	movl	24(%esp), %esi
	.cfi_restore 6
	movl	32(%esp), %ebp
	.cfi_restore 5
	.p2align 4
	.p2align 3
L650:
	movl	$-1, %eax
	jmp	L647
	.p2align 4,,10
	.p2align 3
L658:
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	.cfi_restore 7
	movl	$-1, %eax
	ret
	.cfi_endproc
LFE60:
	.p2align 4
	.globl	__Z30libxmp_alloc_tracks_in_patternP10xmp_modulei
	.def	__Z30libxmp_alloc_tracks_in_patternP10xmp_modulei;	.scl	2;	.type	32;	.endef
__Z30libxmp_alloc_tracks_in_patternP10xmp_modulei:
LFB61:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%esi, 8(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	136(%eax), %eax
	testl	%eax, %eax
	jle	L666
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	movl	%edi, 12(%esp)
	.cfi_offset 7, -12
	leal	0(,%edx,4), %edi
	movl	%edx, (%esp)
	movl	%eax, %edx
	movl	%ebp, 16(%esp)
	.cfi_offset 5, -8
	jmp	L665
	.p2align 4,,10
	.p2align 3
L677:
	movl	168(%esi), %eax
	movl	(%eax,%edi), %eax
	movl	%ebp, 4(%eax,%ebx,4)
	movl	136(%esi), %edx
	addl	$1, %ebx
	cmpl	%ebx, %edx
	jle	L676
L665:
	movl	168(%esi), %eax
	imull	(%esp), %edx
	movl	(%eax,%edi), %eax
	leal	(%edx,%ebx), %ebp
	movl	(%eax), %ecx
	movl	%ebp, %edx
	movl	%esi, %eax
	call	__Z18libxmp_alloc_trackP10xmp_moduleii
	cmpl	$-1, %eax
	jne	L677
	movl	4(%esp), %ebx
	.cfi_remember_state
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
L676:
	.cfi_restore_state
	movl	4(%esp), %ebx
	.cfi_restore 3
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	16(%esp), %ebp
	.cfi_restore 5
L666:
	movl	8(%esp), %esi
	xorl	%eax, %eax
	addl	$20, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE61:
	.p2align 4
	.globl	__Z18libxmp_copy_adjustPcPhi.isra.0
	.def	__Z18libxmp_copy_adjustPcPhi.isra.0;	.scl	2;	.type	32;	.endef
__Z18libxmp_copy_adjustPcPhi.isra.0:
LFB63:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%ecx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	leal	1(%ecx), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	call	_memset
	movl	%esi, 4(%esp)
	xorl	%esi, %esi
	movl	%edi, 8(%esp)
	movl	%ebx, (%esp)
	call	_strncpy
	movzbl	(%ebx), %ebp
	movl	%ebp, %eax
	testb	%al, %al
	jne	L679
	jmp	L678
	.p2align 4,,10
	.p2align 3
L684:
	movl	%ebp, %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	*__imp__isprint
	movl	%ebp, %edx
	testb	%dl, %dl
	js	L688
	testl	%eax, %eax
	jne	L680
L688:
	movb	$46, (%ebx,%esi)
L680:
	addl	$1, %esi
	movzbl	(%ebx,%esi), %ebp
	movl	%ebp, %eax
	testb	%al, %al
	je	L697
L679:
	cmpl	%esi, %edi
	jg	L684
	cmpb	$0, (%ebx)
	jne	L698
L678:
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
L686:
	.cfi_restore_state
	movb	$0, -1(%ebx,%eax)
L697:
	cmpb	$0, (%ebx)
	je	L678
L698:
	movl	%ebx, (%esp)
	call	_strlen
	cmpb	$32, -1(%ebx,%eax)
	je	L686
	addl	$12, %esp
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
LFE63:
	.p2align 4
	.globl	__Z15libxmp_set_typeP11module_dataPKcz
	.def	__Z15libxmp_set_typeP11module_dataPKcz;	.scl	2;	.type	32;	.endef
__Z15libxmp_set_typeP11module_dataPKcz:
LFB64:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	leal	32(%esp), %eax
	movl	$64, 4(%esp)
	movl	%eax, 16(%esp)
	movl	%eax, 12(%esp)
	movl	28(%esp), %eax
	movl	%eax, 8(%esp)
	movl	24(%esp), %eax
	addl	$64, %eax
	movl	%eax, (%esp)
	call	*__imp___vsnprintf
	cmpl	$63, %eax
	jbe	L699
	movl	24(%esp), %eax
	movb	$0, 127(%eax)
L699:
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE64:
	.p2align 4
	.globl	__Z26libxmp_alloc_subinstrumentP10xmp_moduleii.part.0
	.def	__Z26libxmp_alloc_subinstrumentP10xmp_moduleii.part.0;	.scl	2;	.type	32;	.endef
__Z26libxmp_alloc_subinstrumentP10xmp_moduleii.part.0:
LFB67:
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
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%ecx, %ebx
	sall	$6, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 36
	movl	176(%eax), %ebp
	movl	_g_sm_heap, %ecx
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	testl	%eax, %eax
	je	L707
	movl	%ebx, 8(%esp)
	imull	$764, %esi, %esi
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 12(%esp)
	call	_memset
	movl	12(%esp), %edx
	movl	%edx, 756(%ebp,%esi)
	movl	176(%edi), %eax
	cmpl	$1, 756(%eax,%esi)
	sbbl	%eax, %eax
	addl	$16, %esp
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
L707:
	.cfi_restore_state
	movl	$64, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE67:
	.p2align 4
	.globl	__Z11hio_read16lP10HIO_HANDLE
	.def	__Z11hio_read16lP10HIO_HANDLE;	.scl	2;	.type	32;	.endef
__Z11hio_read16lP10HIO_HANDLE:
LFB68:
	.cfi_startproc
	cmpl	$1, (%eax)
	je	L718
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L718:
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	8(%eax), %ecx
	movl	8(%ecx), %ebx
	movl	4(%ecx), %edx
	movl	%ebx, %esi
	testl	%ebx, %ebx
	js	L710
	testl	%edx, %edx
	js	L711
	subl	%edx, %ebx
	cmpl	$1, %ebx
	jle	L713
L710:
	movl	(%ecx), %eax
	movzwl	(%eax,%edx), %eax
	addl	$2, %edx
	movl	%edx, 4(%ecx)
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
L713:
	.cfi_restore_state
	movl	%esi, %edx
L711:
	movl	%edx, 4(%ecx)
	movl	$-1, 12(%eax)
	movl	$-1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE68:
	.p2align 4
	.globl	__Z11hio_read32lP10HIO_HANDLE
	.def	__Z11hio_read32lP10HIO_HANDLE;	.scl	2;	.type	32;	.endef
__Z11hio_read32lP10HIO_HANDLE:
LFB72:
	.cfi_startproc
	cmpl	$1, (%eax)
	je	L729
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L729:
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	8(%eax), %ecx
	movl	8(%ecx), %ebx
	movl	4(%ecx), %edx
	movl	%ebx, %esi
	testl	%ebx, %ebx
	js	L721
	testl	%edx, %edx
	js	L722
	subl	%edx, %ebx
	cmpl	$3, %ebx
	jle	L724
L721:
	movl	(%ecx), %eax
	movl	(%eax,%edx), %eax
	addl	$4, %edx
	movl	%edx, 4(%ecx)
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
L724:
	.cfi_restore_state
	movl	%esi, %edx
L722:
	movl	%edx, 4(%ecx)
	movl	$-1, 12(%eax)
	movl	$-1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE72:
	.p2align 4
	.globl	__Z9hio_read8P10HIO_HANDLE.part.0
	.def	__Z9hio_read8P10HIO_HANDLE.part.0;	.scl	2;	.type	32;	.endef
__Z9hio_read8P10HIO_HANDLE.part.0:
LFB76:
	.cfi_startproc
	movl	8(%eax), %edx
	movl	%eax, %ecx
	movl	4(%edx), %eax
	testl	%eax, %eax
	js	L731
	cmpl	%eax, 8(%edx)
	jle	L731
	movl	(%edx), %ecx
	movzbl	(%ecx,%eax), %ecx
	addl	$1, %eax
	movl	%eax, 4(%edx)
	movl	%ecx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L731:
	movl	$-1, 12(%ecx)
	movl	$-1, %ecx
	movl	%ecx, %eax
	ret
	.cfi_endproc
LFE76:
	.p2align 4
	.globl	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	.def	__Z8hio_readPvjjP10HIO_HANDLE.part.0;	.scl	2;	.type	32;	.endef
__Z8hio_readPvjjP10HIO_HANDLE.part.0:
LFB79:
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
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$20, %esp
	.cfi_def_cfa_offset 40
	movl	40(%esp), %edi
	movl	8(%edi), %ecx
	movl	4(%ecx), %ebp
	testl	%ebp, %ebp
	js	L734
	movl	%edx, %ebx
	testl	%edx, %edx
	je	L734
	testl	%esi, %esi
	je	L734
	movl	8(%ecx), %edx
	subl	%ebp, %edx
	testl	%edx, %edx
	jle	L739
	movl	%ebx, %edi
	addl	(%ecx), %ebp
	imull	%esi, %edi
	cmpl	%edi, %edx
	jnb	L736
	movl	%edx, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	call	_memcpy
	movl	12(%esp), %edx
	movl	16(%esp), %ecx
	movl	%edx, %eax
	addl	%edx, 4(%ecx)
	xorl	%edx, %edx
	divl	%ebx
	jmp	L737
	.p2align 4,,10
	.p2align 3
L734:
	xorl	%eax, %eax
L737:
	cmpl	%eax, %esi
	je	L733
L735:
	movl	40(%esp), %ebx
	movl	$-1, 12(%ebx)
L733:
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
L736:
	.cfi_restore_state
	movl	%edi, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 12(%esp)
	call	_memcpy
	movl	12(%esp), %ecx
	movl	%esi, %eax
	addl	%edi, 4(%ecx)
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
L739:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	L735
	.cfi_endproc
LFE79:
	.p2align 4
	.globl	__Z17libxmp_read_titleP10HIO_HANDLEPci
	.def	__Z17libxmp_read_titleP10HIO_HANDLEPci;	.scl	2;	.type	32;	.endef
__Z17libxmp_read_titleP10HIO_HANDLEPci:
LFB80:
	.cfi_startproc
	testl	%edx, %edx
	jne	L755
	ret
	.p2align 4,,10
	.p2align 3
L755:
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%eax, %esi
	movl	%ecx, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	andl	$-16, %eax
	movl	%eax, %ebx
	xorl	%eax, %eax
	subl	$68, %esp
	.cfi_def_cfa_offset 80
	movl	$0, -15(%edx,%ecx)
	movl	$0, -11(%edx,%ecx)
	movl	$0, -7(%edx,%ecx)
	movl	$0, -3(%edx,%ecx)
L743:
	movl	$0, (%edx,%eax)
	movl	$0, 4(%edx,%eax)
	movl	$0, 8(%edx,%eax)
	movl	$0, 12(%edx,%eax)
	addl	$16, %eax
	cmpl	%ebx, %eax
	jb	L743
	movl	%edx, %ebx
	xorl	%eax, %eax
	cmpl	$1, (%esi)
	jne	L745
	movl	%esi, (%esp)
	movl	$1, %edx
	leal	4(%esp), %eax
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
L745:
	movb	$0, 4(%esp,%eax)
	movl	%eax, %ecx
	leal	4(%esp), %edx
	movl	%ebx, %eax
	call	__Z18libxmp_copy_adjustPcPhi.isra.0
	addl	$68, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE80:
	.p2align 4
	.globl	__ZL8s3m_testP10HIO_HANDLEPci.lto_priv.0
	.def	__ZL8s3m_testP10HIO_HANDLEPci.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL8s3m_testP10HIO_HANDLEPci.lto_priv.0:
LFB84:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	%ebx, (%esp)
	.cfi_offset 3, -12
	movl	12(%esp), %ebx
	movl	20(%esp), %edx
	cmpl	$1, (%ebx)
	jne	L763
	movl	%edx, %ecx
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	addl	$44, %ecx
	js	L759
	movl	8(%ebx), %esi
	movl	8(%esi), %eax
	cmpl	%ecx, %eax
	cmovg	%ecx, %eax
	movl	%eax, 4(%esi)
	cmpl	$-1, 12(%ebx)
	je	L775
L761:
	cmpl	$1, (%ebx)
	je	L762
L774:
	movl	4(%esp), %esi
	.cfi_restore 6
L763:
	movl	(%esp), %ebx
	movl	$-1, %eax
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
L759:
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	$22, 12(%ebx)
L762:
	movl	%ebx, %eax
	movl	%edx, 20(%esp)
	call	__Z11hio_read32bP10HIO_HANDLE.part.0
	cmpl	$1396920909, %eax
	jne	L774
	cmpl	$1, (%ebx)
	jne	L774
	movl	20(%esp), %edx
	movl	%edx, %ecx
	addl	$29, %ecx
	js	L776
	movl	8(%ebx), %esi
	movl	8(%esi), %eax
	cmpl	%ecx, %eax
	cmovg	%ecx, %eax
	movl	%eax, 4(%esi)
	cmpl	$-1, 12(%ebx)
	je	L777
L766:
	cmpl	$1, (%ebx)
	jne	L774
	jmp	L765
	.p2align 4,,10
	.p2align 3
L776:
	movl	$22, 12(%ebx)
L765:
	movl	%ebx, %eax
	movl	%edx, 20(%esp)
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	cmpb	$16, %al
	jne	L774
	cmpl	$1, (%ebx)
	jne	L767
	movl	20(%esp), %edx
	testl	%edx, %edx
	js	L778
	movl	8(%ebx), %ecx
	movl	8(%ecx), %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	%eax, 4(%ecx)
	cmpl	$-1, 12(%ebx)
	je	L779
L767:
	movl	16(%esp), %edx
	movl	%ebx, %eax
	movl	$28, %ecx
	call	__Z17libxmp_read_titleP10HIO_HANDLEPci
	movl	4(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	(%esp), %ebx
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
L778:
	.cfi_restore_state
	movl	$22, 12(%ebx)
	jmp	L767
	.p2align 4,,10
	.p2align 3
L775:
	movl	$0, 12(%ebx)
	jmp	L761
	.p2align 4,,10
	.p2align 3
L777:
	movl	$0, 12(%ebx)
	jmp	L766
	.p2align 4,,10
	.p2align 3
L779:
	movl	$0, 12(%ebx)
	jmp	L767
	.cfi_endproc
LFE84:
	.p2align 4
	.globl	__ZL7it_testP10HIO_HANDLEPci.lto_priv.0
	.def	__ZL7it_testP10HIO_HANDLEPci.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL7it_testP10HIO_HANDLEPci.lto_priv.0:
LFB90:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$68, %esp
	.cfi_def_cfa_offset 76
	movl	76(%esp), %edx
	movl	80(%esp), %ebx
	cmpl	$1, (%edx)
	je	L788
L781:
	addl	$68, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	$-1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L788:
	.cfi_restore_state
	movl	%edx, %eax
	call	__Z11hio_read32bP10HIO_HANDLE.part.0
	cmpl	$1229803597, %eax
	jne	L781
	testl	%ebx, %ebx
	movl	76(%esp), %edx
	je	L785
	movl	$0, 20(%ebx)
	xorl	%ecx, %ecx
	movl	$0, (%ebx)
	movl	$0, 4(%ebx)
	movl	$0, 8(%ebx)
	movl	$0, 12(%ebx)
	movl	$0, 16(%ebx)
	movl	$0, 23(%ebx)
	cmpl	$1, (%edx)
	je	L789
L784:
	leal	4(%esp), %edx
	movl	%ebx, %eax
	movb	$0, 4(%esp,%ecx)
	call	__Z18libxmp_copy_adjustPcPhi.isra.0
L785:
	addl	$68, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L789:
	.cfi_restore_state
	movl	%edx, (%esp)
	movl	$26, %ecx
	movl	$1, %edx
	leal	4(%esp), %eax
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	movl	%eax, %ecx
	jmp	L784
	.cfi_endproc
LFE90:
	.p2align 4
	.def	__ZL13read_envelopeP12xmp_envelopeP11it_envelopeP10HIO_HANDLE;	.scl	3;	.type	32;	.endef
__ZL13read_envelopeP12xmp_envelopeP11it_envelopeP10HIO_HANDLE:
LFB91:
	.cfi_startproc
	cmpl	$1, (%ecx)
	je	L816
	movl	$-1, %eax
	ret
L816:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%edx, %esi
	movl	$1, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$92, %esp
	.cfi_def_cfa_offset 112
	movl	%ecx, (%esp)
	leal	10(%esp), %eax
	movl	$82, %ecx
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	cmpl	$82, %eax
	jne	L791
	movzbl	10(%esp), %ebp
	movl	$25, %edx
	movl	%ebx, 4(%esp)
	movl	%esi, %edi
	leal	91(%esp), %ecx
	movl	%ebp, %eax
	movb	%al, (%esi)
	movzbl	11(%esp), %eax
	cmpb	%dl, %al
	cmova	%edx, %eax
	leal	6(%esi), %edx
	movb	%al, 1(%esi)
	movl	12(%esp), %eax
	movl	%eax, 2(%esi)
	leal	16(%esp), %eax
	.p2align 5
	.p2align 4
	.p2align 3
L792:
	movzbl	(%eax), %ebx
	addl	$3, %eax
	addl	$4, %edx
	movb	%bl, -4(%edx)
	movzwl	-2(%eax), %ebx
	movw	%bx, -2(%edx)
	cmpl	%eax, %ecx
	jne	L792
	movl	4(%esp), %ebx
	movl	%ebp, %edx
	andl	$1, %ebp
	andl	$1, %edx
	movl	%ebp, (%ebx)
	movzbl	(%esi), %eax
	testb	$2, %al
	je	L793
	orl	$4, %edx
	movzbl	%dl, %edx
	movl	%edx, (%ebx)
	movzbl	(%esi), %eax
L793:
	testb	$4, %al
	je	L794
	orl	$18, (%ebx)
	movzbl	(%esi), %eax
L794:
	testb	$8, %al
	je	L795
	orl	$32, (%ebx)
L795:
	movzbl	1(%esi), %eax
	movl	%eax, 4(%ebx)
	movzbl	4(%esi), %edx
	movl	%edx, 12(%ebx)
	movzbl	5(%esi), %edx
	movl	%edx, 16(%ebx)
	movzbl	2(%esi), %edx
	movl	%edx, 20(%ebx)
	movzbl	3(%esi), %edx
	movl	%edx, 24(%ebx)
	leal	-1(%eax), %edx
	cmpl	$24, %edx
	ja	L796
	addl	$30, %ebx
	leal	(%esi,%eax,4), %edx
	.p2align 5
	.p2align 4
	.p2align 3
L797:
	movzwl	8(%edi), %eax
	addl	$4, %edi
	addl	$4, %ebx
	movw	%ax, -6(%ebx)
	movsbw	2(%edi), %ax
	movw	%ax, -4(%ebx)
	cmpl	%edx, %edi
	jne	L797
L799:
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
L796:
	.cfi_restore_state
	andl	$-2, (%ebx)
	jmp	L799
L791:
	addl	$92, %esp
	.cfi_def_cfa_offset 20
	movl	$-1, %eax
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
LFE91:
	.section .rdata,"dr"
LC8:
	.ascii "Impulse Tracker\0"
	.text
	.p2align 4
	.globl	__ZL7it_loadP11module_dataP10HIO_HANDLEi.lto_priv.0
	.def	__ZL7it_loadP11module_dataP10HIO_HANDLEi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL7it_loadP11module_dataP10HIO_HANDLEi.lto_priv.0:
LFB92:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
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
	subl	$3380, %esp
	movl	(%ecx), %eax
	movl	8(%ecx), %edi
	movl	%eax, -3284(%ebp)
	movl	4(%ecx), %eax
	movl	%edi, -3300(%ebp)
	movl	%eax, -3280(%ebp)
	cmpl	$1, (%eax)
	je	L1443
L818:
	movl	$-1, -3328(%ebp)
L1410:
	movl	-3328(%ebp), %eax
	leal	-16(%ebp), %esp
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
L1443:
	.cfi_restore_state
	call	__Z11hio_read32bP10HIO_HANDLE.part.0
	movl	%eax, -3020(%ebp)
	cmpl	$1229803597, %eax
	jne	L818
	movl	-3280(%ebp), %eax
	cmpl	$1, (%eax)
	je	L821
L1432:
	movb	$0, -2990(%ebp)
L822:
	xorl	%eax, %eax
L824:
	movl	-3280(%ebp), %edi
	movb	%al, -2989(%ebp)
	movl	%edi, %eax
	call	__Z11hio_read16lP10HIO_HANDLE
	movw	%ax, -2988(%ebp)
	movl	%edi, %eax
	call	__Z11hio_read16lP10HIO_HANDLE
	movw	%ax, -2986(%ebp)
	movl	%edi, %eax
	call	__Z11hio_read16lP10HIO_HANDLE
	movw	%ax, -2984(%ebp)
	movl	%edi, %eax
	call	__Z11hio_read16lP10HIO_HANDLE
	movw	%ax, -2982(%ebp)
	movl	%edi, %eax
	call	__Z11hio_read16lP10HIO_HANDLE
	movw	%ax, -2980(%ebp)
	movl	%edi, %eax
	call	__Z11hio_read16lP10HIO_HANDLE
	movw	%ax, -2978(%ebp)
	movl	%edi, %eax
	call	__Z11hio_read16lP10HIO_HANDLE
	movw	%ax, -2976(%ebp)
	movl	%edi, %eax
	call	__Z11hio_read16lP10HIO_HANDLE
	movw	%ax, -2974(%ebp)
	cmpl	$1, (%edi)
	je	L825
	movl	$0, -2972(%ebp)
	xorl	%ecx, %ecx
	movw	%cx, -2968(%ebp)
L826:
	movl	-3280(%ebp), %edi
	movl	%edi, %eax
	call	__Z11hio_read16lP10HIO_HANDLE
	movw	%ax, -2966(%ebp)
	movl	%edi, %eax
	call	__Z11hio_read32lP10HIO_HANDLE
	movl	%eax, -2964(%ebp)
	movl	%edi, %eax
	call	__Z11hio_read32lP10HIO_HANDLE
	movl	%eax, -2960(%ebp)
	cmpl	$1, (%edi)
	je	L1444
L836:
	movl	-3280(%ebp), %eax
	movl	12(%eax), %edi
	movl	$0, 12(%eax)
	movl	%edi, -3328(%ebp)
	testl	%edi, %edi
	jne	L818
	movl	-3284(%ebp), %edi
	movl	-3016(%ebp), %eax
	movzwl	-2984(%ebp), %ebx
	movzwl	-2986(%ebp), %esi
	movl	%eax, (%edi)
	movl	-3012(%ebp), %eax
	cmpl	$255, %ebx
	movzwl	-2982(%ebp), %edx
	movb	$0, 26(%edi)
	movl	%eax, 4(%edi)
	movl	-3008(%ebp), %eax
	setg	%cl
	cmpl	$255, %esi
	movl	%esi, 140(%edi)
	movl	%eax, 8(%edi)
	movl	-3004(%ebp), %eax
	movl	%ebx, 144(%edi)
	movl	%eax, 12(%edi)
	movl	-3000(%ebp), %eax
	movl	%edx, 128(%edi)
	movl	%eax, 16(%edi)
	movl	-2996(%ebp), %eax
	movl	%eax, 20(%edi)
	movzwl	-2992(%ebp), %eax
	movw	%ax, 24(%edi)
	movzwl	-2988(%ebp), %eax
	movl	%eax, 156(%edi)
	setg	%al
	orb	%cl, %al
	jne	L818
	cmpl	$255, %edx
	jg	L818
	testl	%esi, %esi
	je	L1156
	leal	0(,%esi,4), %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -3304(%ebp)
	testl	%eax, %eax
	je	L1395
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	144(%edi), %ebx
L837:
	leal	0(,%ebx,4), %esi
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -3316(%ebp)
	testl	%eax, %eax
	je	L982
	movl	%esi, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	-3284(%ebp), %eax
	movl	128(%eax), %esi
	leal	0(,%esi,4), %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -3308(%ebp)
	testl	%eax, %eax
	je	L1395
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	-3308(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movzbl	-2970(%ebp), %eax
	movl	-3284(%ebp), %edi
	movl	%eax, 148(%edi)
	movzbl	-2969(%ebp), %eax
	movl	%eax, 152(%edi)
	movzwl	-2976(%ebp), %eax
	movw	%ax, -3312(%ebp)
	testb	$8, %al
	je	L843
	movl	-3284(%ebp), %eax
	movl	$2, 1300(%eax)
L843:
	testb	$1, -3312(%ebp)
	jne	L844
	movl	-3284(%ebp), %eax
	leal	-2956(%ebp), %edx
	leal	-2892(%ebp), %ebx
	addl	$184, %eax
	jmp	L847
	.p2align 4,,10
	.p2align 3
L1445:
	testb	%cl, %cl
	jns	L846
	orl	$2, 8(%eax)
L846:
	movzbl	64(%edx), %ecx
	addl	$1, %edx
	movl	$128, (%eax)
	addl	$12, %eax
	movl	%ecx, -8(%eax)
	cmpl	%edx, %ebx
	je	L848
L847:
	movzbl	(%edx), %ecx
	cmpb	$100, %cl
	jne	L1445
	orl	$16, 8(%eax)
	jmp	L846
L848:
	movl	-3284(%ebp), %eax
	movl	-3280(%ebp), %edi
	movl	156(%eax), %ecx
	movl	(%edi), %edx
	addl	$952, %eax
	cmpl	$256, %ecx
	jg	L854
	cmpl	$1, %edx
	je	L1446
L855:
	movl	-3284(%ebp), %edi
	movl	140(%edi), %edx
	testl	%edx, %edx
	jle	L858
	movl	-3304(%ebp), %esi
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L859:
	movl	-3280(%ebp), %eax
	call	__Z11hio_read32lP10HIO_HANDLE
	movl	%eax, (%esi,%ebx,4)
	addl	$1, %ebx
	cmpl	%ebx, 140(%edi)
	jg	L859
L858:
	movl	-3284(%ebp), %esi
	movl	144(%esi), %eax
	testl	%eax, %eax
	jle	L860
	movl	-3316(%ebp), %ebx
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L861:
	movl	-3280(%ebp), %eax
	call	__Z11hio_read32lP10HIO_HANDLE
	movl	%eax, (%ebx,%edi,4)
	addl	$1, %edi
	cmpl	%edi, 144(%esi)
	jg	L861
L860:
	movl	-3284(%ebp), %esi
	movl	128(%esi), %eax
	testl	%eax, %eax
	jle	L862
	movl	-3308(%ebp), %ebx
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L863:
	movl	-3280(%ebp), %eax
	call	__Z11hio_read32lP10HIO_HANDLE
	movl	%eax, (%ebx,%edi,4)
	addl	$1, %edi
	cmpl	%edi, 128(%esi)
	jg	L863
L862:
	movzwl	-2974(%ebp), %edx
	movzwl	-3312(%ebp), %ecx
	movl	%edx, %eax
	andw	$128, %cx
	andl	$8, %eax
	orw	%cx, %ax
	je	L864
	andl	$2, %edx
	je	L865
	movl	-3280(%ebp), %edi
	movl	%edi, %eax
	call	__Z11hio_read16lP10HIO_HANDLE
	movl	12(%edi), %edx
	movl	$0, 12(%edi)
	testl	%edx, %edx
	jne	L866
	testw	%ax, %ax
	jne	L1447
L865:
	movl	$4608, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L868
	movl	$4608, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	-3284(%ebp), %eax
	movl	-3280(%ebp), %edi
	movl	%ebx, 8492(%eax)
	cmpl	$1, (%edi)
	jne	L866
	movl	8(%edi), %ecx
	movl	4(%ecx), %eax
	addl	$288, %eax
	js	L869
	movl	8(%ecx), %edx
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	movl	%edx, 4(%ecx)
	cmpl	$-1, 12(%edi)
	je	L1448
L870:
	movl	-3280(%ebp), %edi
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L871:
	cmpl	$1, (%edi)
	je	L1449
	.p2align 4
	.p2align 3
L866:
	movl	-3308(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-3316(%ebp), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-3304(%ebp), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L818
L869:
	movl	-3280(%ebp), %eax
	movl	$22, 12(%eax)
	jmp	L866
L1449:
	movl	-3284(%ebp), %ecx
	movl	%esi, %ebx
	movl	$1, %edx
	sall	$5, %ebx
	movl	8492(%ecx), %eax
	movl	%edi, (%esp)
	movl	$32, %ecx
	addl	%ebx, %eax
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	cmpl	$31, %eax
	jbe	L866
	movl	-3284(%ebp), %ecx
	addl	$1, %esi
	addl	8492(%ecx), %ebx
	movb	$0, 31(%ebx)
	cmpl	$16, %esi
	jne	L871
	xorl	%esi, %esi
	movl	%ecx, %edi
	.p2align 4
	.p2align 3
L872:
	movl	-3280(%ebp), %eax
	cmpl	$1, (%eax)
	jne	L866
	movl	-3280(%ebp), %ecx
	movl	8492(%edi), %eax
	movl	%esi, %ebx
	movl	$1, %edx
	sall	$5, %ebx
	movl	%ecx, (%esp)
	leal	512(%eax,%ebx), %eax
	movl	$32, %ecx
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	cmpl	$31, %eax
	jbe	L866
	addl	8492(%edi), %ebx
	addl	$1, %esi
	movb	$0, 543(%ebx)
	cmpl	$128, %esi
	jne	L872
L864:
	movl	-3312(%ebp), %edi
	movl	-3284(%ebp), %esi
	movl	$8363, 1264(%esi)
	notl	%edi
	movl	%edi, -3320(%ebp)
	movl	$LC8, 4(%esp)
	movl	%esi, (%esp)
	call	__Z15libxmp_set_typeP11module_dataPKcz
	andl	$4, %edi
	je	L873
	movl	144(%esi), %eax
	movl	%eax, 140(%esi)
L873:
	movl	-3284(%ebp), %edi
	movl	%edi, %eax
	call	__Z22libxmp_init_instrumentP11module_data
	cmpl	$-1, %eax
	je	L866
	movl	140(%edi), %eax
	movl	%edi, %edx
	testl	%eax, %eax
	jle	L874
	movl	-3320(%ebp), %eax
	xorl	%edi, %edi
	jmp	L937
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1396:
	addl	$1, %edi
	cmpl	%edi, 140(%edx)
	jle	L874
L937:
	testb	$4, %al
	jne	L1396
	movl	%edi, -3288(%ebp)
L875:
	movl	-3288(%ebp), %eax
	movl	-3284(%ebp), %edi
	movl	-3304(%ebp), %esi
	imull	$764, %eax, %ebx
	addl	176(%edi), %ebx
	movl	-3300(%ebp), %edi
	addl	(%esi,%eax,4), %edi
	movl	%edi, %eax
	movl	-3280(%ebp), %edi
	movl	(%edi), %edx
	cmpw	$511, -2978(%ebp)
	jbe	L877
	cmpl	$1, %edx
	jne	L866
	testl	%eax, %eax
	js	L869
	movl	8(%edi), %ecx
	movl	8(%ecx), %edx
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	movl	%edx, 4(%ecx)
	cmpl	$-1, 12(%edi)
	je	L1450
L878:
	movups	LC9, %xmm3
	movl	-3280(%ebp), %eax
	movups	%xmm3, -3272(%ebp)
	cmpl	$1, (%eax)
	jne	L866
	movl	-3280(%ebp), %edi
	leal	-3256(%ebp), %eax
	movl	$64, %ecx
	movl	$1, %edx
	movl	%edi, (%esp)
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	cmpl	$64, %eax
	jne	L866
	movl	-3256(%ebp), %eax
	movl	%eax, %edx
	bswap	%edx
	movl	%edx, -2828(%ebp)
	cmpl	$1229999433, %eax
	jne	L866
	movl	-3252(%ebp), %eax
	xorl	%edx, %edx
	movl	%eax, -2824(%ebp)
	movl	-3248(%ebp), %eax
	movl	%eax, -2820(%ebp)
	movl	-3244(%ebp), %eax
	movl	%eax, -2816(%ebp)
	movzwl	-3240(%ebp), %eax
	movw	%ax, -2812(%ebp)
	movzbl	-3238(%ebp), %eax
	movb	%al, -2810(%ebp)
	movzbl	-3237(%ebp), %eax
	cmpb	$4, %al
	cmovnb	%edx, %eax
	leal	-2771(%ebp), %edx
	movb	%al, -2809(%ebp)
	movl	-3236(%ebp), %eax
	movl	%eax, -2808(%ebp)
	movl	-3232(%ebp), %eax
	movl	%eax, -2804(%ebp)
	movzwl	-3228(%ebp), %eax
	movw	%ax, -2800(%ebp)
	movzbl	-3226(%ebp), %eax
	movb	%al, -2798(%ebp)
	movl	-3224(%ebp), %eax
	movl	%eax, -2796(%ebp)
	movl	-3220(%ebp), %eax
	movl	%eax, -2792(%ebp)
	movl	-3216(%ebp), %eax
	movl	%eax, -2788(%ebp)
	movl	-3212(%ebp), %eax
	movl	%eax, -2784(%ebp)
	movl	-3208(%ebp), %eax
	movl	%eax, -2780(%ebp)
	movl	-3204(%ebp), %eax
	movl	%eax, -2776(%ebp)
	movzwl	-3200(%ebp), %eax
	movw	%ax, -2772(%ebp)
	leal	-2796(%ebp), %eax
	.p2align 4
	.p2align 4
	.p2align 3
L883:
	cmpb	$0, (%eax)
	jne	L882
	movb	$32, (%eax)
L882:
	addl	$1, %eax
	cmpl	%eax, %edx
	jne	L883
	leal	-2772(%ebp), %eax
	leal	-2797(%ebp), %edx
	.p2align 4
	.p2align 4
	.p2align 3
L884:
	cmpb	$32, (%eax)
	jne	L885
	movb	$0, (%eax)
	subl	$1, %eax
	cmpl	%edx, %eax
	jne	L884
L885:
	movzwl	-3198(%ebp), %eax
	movw	%ax, -2770(%ebp)
	movl	-3196(%ebp), %eax
	movl	%eax, -2768(%ebp)
	movl	-3280(%ebp), %eax
	cmpl	$1, (%eax)
	jne	L866
	movl	-3280(%ebp), %edi
	leal	-2764(%ebp), %eax
	movl	$240, %ecx
	movl	$1, %edx
	movl	%edi, (%esp)
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	cmpl	$240, %eax
	jne	L866
	movl	$25, %ecx
	leal	-2796(%ebp), %edx
	movl	%ebx, %eax
	call	__Z18libxmp_copy_adjustPcPhi.isra.0
	movzwl	-2808(%ebp), %eax
	movl	%edi, %ecx
	leal	-3128(%ebp), %edx
	movb	$0, -3127(%ebp)
	sall	$6, %eax
	movl	%eax, 40(%ebx)
	leal	44(%ebx), %eax
	call	__ZL13read_envelopeP12xmp_envelopeP11it_envelopeP10HIO_HANDLE
	cmpl	$-1, %eax
	je	L866
	leal	200(%ebx), %eax
	movl	%edi, %ecx
	leal	-3128(%ebp), %edx
	call	__ZL13read_envelopeP12xmp_envelopeP11it_envelopeP10HIO_HANDLE
	cmpl	$-1, %eax
	je	L866
	leal	356(%ebx), %eax
	movl	%edi, %ecx
	leal	-3128(%ebp), %edx
	call	__ZL13read_envelopeP12xmp_envelopeP11it_envelopeP10HIO_HANDLE
	cmpl	$-1, %eax
	je	L866
	movzbl	-3127(%ebp), %edx
	testb	$1, 200(%ebx)
	je	L887
	movl	204(%ebx), %esi
	leal	230(%ebx), %eax
	leal	(%eax,%esi,4), %ecx
	testl	%esi, %esi
	jle	L1397
	movl	%ecx, %esi
	subl	%eax, %esi
	andl	$4, %esi
	je	L893
	leal	234(%ebx), %eax
	addw	$32, 230(%ebx)
	cmpl	%ecx, %eax
	je	L1409
	.p2align 4
	.p2align 4
	.p2align 3
L893:
	addw	$32, (%eax)
	addw	$32, 4(%eax)
	addl	$8, %eax
	cmpl	%ecx, %eax
	jne	L893
L1409:
	testb	$1, 44(%ebx)
	je	L891
	movl	48(%ebx), %eax
	testl	%eax, %eax
	jne	L891
	movl	204(%ebx), %esi
L894:
	movl	$1, 48(%ebx)
L890:
	testl	%esi, %esi
	jne	L891
	movl	$1, 204(%ebx)
L891:
	movl	356(%ebx), %eax
	testb	$1, %al
	je	L896
	movl	360(%ebx), %ecx
	testl	%ecx, %ecx
	jne	L896
	movl	$1, 360(%ebx)
L896:
	cmpb	$0, -3128(%ebp)
	js	L897
	testb	%dl, %dl
	je	L899
	movzbl	%dl, %edx
	movl	%ebx, %eax
	leal	(%ebx,%edx,4), %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L901:
	imulw	$50, 386(%eax), %dx
	addl	$4, %eax
	movw	%dx, 382(%eax)
	cmpl	%ecx, %eax
	jne	L901
L899:
	leal	-2524(%ebp), %eax
	movl	$480, 8(%esp)
	xorl	%esi, %esi
	movl	$255, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	xorl	%eax, %eax
	jmp	L905
	.p2align 4,,10
	.p2align 3
L902:
	movl	-2524(%ebp,%edx,4), %ecx
	cmpl	$-1, %ecx
	jne	L904
	movl	%esi, -2524(%ebp,%edx,4)
	movl	%esi, %ecx
	movl	%edx, -1564(%ebp,%esi,4)
	addl	$1, %esi
L904:
	movb	%cl, 512(%ebx,%eax,2)
	movzbl	-2764(%ebp,%eax,2), %edx
	subl	%eax, %edx
	movb	%dl, 513(%ebx,%eax,2)
	addl	$1, %eax
	cmpl	$120, %eax
	je	L1451
L905:
	movzbl	-2763(%ebp,%eax,2), %edx
	subl	$1, %edx
	cmpl	$119, %edx
	jbe	L902
	xorl	%edx, %edx
	movb	$-1, 512(%ebx,%eax,2)
	movb	%dl, 513(%ebx,%eax,2)
	addl	$1, %eax
	cmpl	$120, %eax
	jne	L905
L1451:
	movzbl	-2804(%ebp), %eax
	movl	%esi, 36(%ebx)
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, 32(%ebx)
	testl	%esi, %esi
	je	L931
	movl	%esi, %edi
	sall	$6, %edi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L908
	movl	%edi, 8(%esp)
	xorl	%edi, %edi
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, -3292(%ebp)
	call	_memset
	movl	-3292(%ebp), %edx
	movl	%edx, 756(%ebx)
	jmp	L909
	.p2align 4,,10
	.p2align 3
L911:
	movl	756(%ebx), %edx
L909:
	movzbl	-2811(%ebp), %ecx
	movl	%edi, %eax
	sall	$6, %eax
	addl	%edx, %eax
	movl	%ecx, -3292(%ebp)
	movzbl	-2809(%ebp), %edx
	movzbl	-2810(%ebp), %ecx
	movss	-3292(%ebp), %xmm2
	movss	-3272(%ebp,%edx,4), %xmm0
	movl	%ecx, -3296(%ebp)
	movzbl	-2803(%ebp), %ecx
	movss	-3296(%ebp), %xmm1
	movl	%ecx, %edx
	sall	$2, %ecx
	unpcklps	%xmm0, %xmm1
	testb	%dl, %dl
	movl	$-1, %edx
	movss	-1564(%ebp,%edi,4), %xmm0
	cmovns	%ecx, %edx
	addl	$1, %edi
	unpcklps	%xmm2, %xmm0
	movlhps	%xmm1, %xmm0
	movl	%edx, 8(%eax)
	movups	%xmm0, 40(%eax)
	movzbl	-2770(%ebp), %edx
	movl	%edx, 56(%eax)
	movzbl	-2769(%ebp), %edx
	movl	%edx, 60(%eax)
	movzwl	-2802(%ebp), %edx
	movl	%edx, 36(%eax)
	cmpl	%esi, %edi
	jne	L911
	jmp	L931
	.p2align 4,,10
	.p2align 3
L877:
	cmpl	$1, %edx
	jne	L866
	testl	%eax, %eax
	js	L869
	movl	-3280(%ebp), %edi
	movl	8(%edi), %ecx
	movl	8(%ecx), %edx
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	movl	%edx, 4(%ecx)
	cmpl	$-1, 12(%edi)
	je	L1452
L913:
	movl	-3280(%ebp), %eax
	cmpl	$1, (%eax)
	jne	L866
	movl	-3280(%ebp), %edi
	leal	-3192(%ebp), %eax
	movl	$64, %ecx
	movl	$1, %edx
	movl	%edi, (%esp)
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	cmpl	$64, %eax
	jne	L866
	movl	-3192(%ebp), %eax
	movl	%eax, %edx
	bswap	%edx
	movl	%edx, -584(%ebp)
	cmpl	$1229999433, %eax
	jne	L866
	movl	-3188(%ebp), %eax
	leal	-527(%ebp), %edx
	movl	%eax, -580(%ebp)
	movl	-3184(%ebp), %eax
	movl	%eax, -576(%ebp)
	movl	-3180(%ebp), %eax
	movl	%eax, -572(%ebp)
	movl	-3176(%ebp), %eax
	movl	%eax, -568(%ebp)
	movzwl	-3172(%ebp), %eax
	movw	%ax, -564(%ebp)
	movl	-3168(%ebp), %eax
	movl	%eax, -560(%ebp)
	movzwl	-3164(%ebp), %eax
	movw	%ax, -556(%ebp)
	movzbl	-3162(%ebp), %eax
	movb	%al, -554(%ebp)
	movl	-3160(%ebp), %eax
	movl	%eax, -552(%ebp)
	movl	-3156(%ebp), %eax
	movl	%eax, -548(%ebp)
	movl	-3152(%ebp), %eax
	movl	%eax, -544(%ebp)
	movl	-3148(%ebp), %eax
	movl	%eax, -540(%ebp)
	movl	-3144(%ebp), %eax
	movl	%eax, -536(%ebp)
	movl	-3140(%ebp), %eax
	movl	%eax, -532(%ebp)
	movzwl	-3136(%ebp), %eax
	movw	%ax, -528(%ebp)
	leal	-552(%ebp), %eax
	.p2align 4
	.p2align 4
	.p2align 3
L917:
	cmpb	$0, (%eax)
	jne	L916
	movb	$32, (%eax)
L916:
	addl	$1, %eax
	cmpl	%edx, %eax
	jne	L917
	leal	-528(%ebp), %eax
	leal	-553(%ebp), %edx
	.p2align 4
	.p2align 4
	.p2align 3
L918:
	cmpb	$32, (%eax)
	jne	L919
	movb	$0, (%eax)
	subl	$1, %eax
	cmpl	%edx, %eax
	jne	L918
L919:
	movl	-3280(%ebp), %eax
	cmpl	$1, (%eax)
	jne	L866
	movl	-3280(%ebp), %edi
	leal	-520(%ebp), %eax
	movl	$240, %ecx
	movl	$1, %edx
	movl	%edi, (%esp)
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	cmpl	$240, %eax
	jne	L866
	cmpl	$1, (%edi)
	jne	L866
	movl	-3280(%ebp), %edi
	leal	-280(%ebp), %eax
	movl	$200, %ecx
	movl	$1, %edx
	movl	%edi, (%esp)
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	cmpl	$200, %eax
	jne	L866
	cmpl	$1, (%edi)
	jne	L866
	movl	-3280(%ebp), %edi
	leal	-80(%ebp), %eax
	movl	$50, %ecx
	movl	$1, %edx
	movl	%edi, (%esp)
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	cmpl	$50, %eax
	jne	L866
	leal	-552(%ebp), %edx
	movl	%ebx, %eax
	movl	$25, %ecx
	call	__Z18libxmp_copy_adjustPcPhi.isra.0
	movzwl	-560(%ebp), %eax
	sall	$7, %eax
	movl	%eax, 40(%ebx)
	movzbl	-567(%ebp), %eax
	movl	%eax, %edx
	andl	$1, %edx
	testb	$2, %al
	je	L1433
	orl	$4, %edx
L1433:
	movzbl	%dl, %edx
	movl	%edx, 44(%ebx)
	testb	$4, %al
	je	L923
	orl	$18, 44(%ebx)
L923:
	testb	$8, %al
	je	L924
	orl	$34, 44(%ebx)
L924:
	movzbl	-566(%ebp), %eax
	movl	%eax, 64(%ebx)
	movzbl	-565(%ebp), %eax
	movl	%eax, 68(%ebx)
	movzbl	-564(%ebp), %eax
	movl	%eax, 56(%ebx)
	movzbl	-563(%ebp), %eax
	movl	%eax, 60(%ebx)
	xorl	%eax, %eax
	jmp	L925
	.p2align 4
	.p2align 4,,10
	.p2align 3
L926:
	addl	$1, %eax
	cmpl	$25, %eax
	je	L866
L925:
	cmpb	$-1, -80(%ebp,%eax,2)
	jne	L926
	movl	%eax, 48(%ebx)
	testl	%eax, %eax
	je	L927
	subl	$1, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L928:
	movzbl	-80(%ebp,%eax,2), %edx
	movw	%dx, 72(%ebx,%eax,4)
	movzbl	-79(%ebp,%eax,2), %edx
	movw	%dx, 74(%ebx,%eax,4)
	subl	$1, %eax
	jnb	L928
L927:
	leal	-2044(%ebp), %eax
	movl	$480, 8(%esp)
	xorl	%esi, %esi
	movl	$255, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	xorl	%eax, %eax
	jmp	L929
	.p2align 4,,10
	.p2align 3
L932:
	movl	-2044(%ebp,%edx,4), %ecx
	cmpl	$-1, %ecx
	jne	L934
	movl	%esi, -2044(%ebp,%edx,4)
	movl	%esi, %ecx
	movl	%edx, -1080(%ebp,%esi,4)
	addl	$1, %esi
L934:
	movb	%cl, 512(%ebx,%eax,2)
	movzbl	-520(%ebp,%eax,2), %edx
	subl	%eax, %edx
	movb	%dl, 513(%ebx,%eax,2)
	addl	$1, %eax
	cmpl	$120, %eax
	je	L1453
L929:
	movzbl	-519(%ebp,%eax,2), %edx
	subl	$1, %edx
	cmpl	$119, %edx
	jbe	L932
	xorl	%edx, %edx
	movb	$0, 512(%ebx,%eax,2)
	movb	%dl, 513(%ebx,%eax,2)
	addl	$1, %eax
	cmpl	$120, %eax
	jne	L929
L1453:
	xorl	%eax, %eax
	movl	%esi, 36(%ebx)
	movw	%ax, 752(%ebx)
	movl	$64, 32(%ebx)
	testl	%esi, %esi
	jne	L1454
L931:
	movl	-3284(%ebp), %edi
	addl	$1, -3288(%ebp)
	movl	-3288(%ebp), %eax
	cmpl	%eax, 140(%edi)
	jg	L875
L874:
	movl	-3284(%ebp), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	jle	L938
	movl	$0, -3288(%ebp)
	xorl	%esi, %esi
L1038:
	movl	-3280(%ebp), %edi
	cmpl	$1, (%edi)
	jne	L866
	movl	-3316(%ebp), %eax
	movl	-3288(%ebp), %ebx
	movl	-3300(%ebp), %ecx
	addl	(%eax,%ebx,4), %ecx
	js	L869
	movl	8(%edi), %edx
	movl	8(%edx), %eax
	cmpl	%ecx, %eax
	cmovg	%ecx, %eax
	movl	%eax, 4(%edx)
	cmpl	$-1, 12(%edi)
	je	L1455
L939:
	testb	$4, -3320(%ebp)
	je	L940
	movl	-3284(%ebp), %eax
	movl	176(%eax), %ebx
	movl	$64, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L908
	movl	$0, 48(%eax)
	xorl	%edx, %edx
	movl	$0, 52(%eax)
	movl	$0, 56(%eax)
	movl	$0, 60(%eax)
L941:
	movl	$0, (%eax,%edx)
	movl	$0, 4(%eax,%edx)
	movl	$0, 8(%eax,%edx)
	movl	$0, 12(%eax,%edx)
	addl	$16, %edx
	cmpl	$48, %edx
	jb	L941
	movl	%eax, 756(%ebx,%esi)
	movl	-3284(%ebp), %eax
	movl	176(%eax), %eax
	movl	756(%eax,%esi), %eax
	testl	%eax, %eax
	je	L866
L940:
	movl	-3280(%ebp), %eax
	cmpl	$1, (%eax)
	jne	L866
	movl	-3280(%ebp), %edi
	leal	-584(%ebp), %eax
	movl	$80, %ecx
	movl	$1, %edx
	movl	%edi, (%esp)
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	cmpl	$80, %eax
	jne	L866
	movl	-584(%ebp), %eax
	movl	%eax, %edx
	bswap	%edx
	movl	%edx, -1080(%ebp)
	cmpl	$1397771593, %eax
	je	L1456
L944:
	movl	-3284(%ebp), %edi
	addl	$1, -3288(%ebp)
	addl	$764, %esi
	movl	-3288(%ebp), %eax
	cmpl	%eax, 144(%edi)
	jg	L1038
L938:
	movl	-3280(%ebp), %eax
	movl	-3284(%ebp), %ebx
	movl	$0, 12(%eax)
	movl	128(%ebx), %edx
	movl	%edx, %ecx
	testl	%edx, %edx
	jle	L1173
	movl	$0, -3324(%ebp)
	movl	%eax, %edi
	movl	$0, -3288(%ebp)
L1064:
	movl	-3308(%ebp), %eax
	movl	-3288(%ebp), %esi
	movl	(%eax,%esi,4), %eax
	testl	%eax, %eax
	je	L1059
	cmpl	$1, (%edi)
	jne	L1041
	addl	-3300(%ebp), %eax
	js	L1457
	movl	8(%edi), %ecx
	movl	8(%ecx), %edx
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	movl	%edx, 4(%ecx)
	cmpl	$-1, 12(%edi)
	je	L1458
L1041:
	movl	%edi, %eax
	call	__Z11hio_read16lP10HIO_HANDLE
	movl	%eax, %esi
	movl	%edi, %eax
	call	__Z11hio_read16lP10HIO_HANDLE
	movzwl	%ax, %eax
	movl	%eax, -3296(%ebp)
	xorl	%eax, %eax
L1043:
	movl	$0, -584(%ebp,%eax)
	movl	$0, -580(%ebp,%eax)
	movl	$0, -576(%ebp,%eax)
	movl	$0, -572(%ebp,%eax)
	addl	$16, %eax
	cmpl	$64, %eax
	jb	L1043
	movl	%edi, %eax
	call	__Z11hio_read16lP10HIO_HANDLE
	movl	%edi, %eax
	call	__Z11hio_read16lP10HIO_HANDLE
	movl	-3296(%ebp), %eax
	cmpl	$1024, %eax
	jle	L1459
	movl	-3308(%ebp), %eax
	movl	-3288(%ebp), %esi
	movl	$0, (%eax,%esi,4)
	movl	128(%ebx), %edx
L1059:
	addl	$1, -3288(%ebp)
	cmpl	-3288(%ebp), %edx
	jg	L1064
	movl	-3324(%ebp), %edi
	movl	%edx, %ecx
	leal	1(%edi), %eax
	imull	%eax, %ecx
L1039:
	movl	-3284(%ebp), %edi
	movl	%eax, 136(%edi)
	movl	%edi, %eax
	movl	%ecx, 132(%edi)
	call	__Z19libxmp_init_patternP10xmp_module
	movl	128(%edi), %eax
	testl	%eax, %eax
	jle	L1065
	movl	$0, -3356(%ebp)
	movl	-3280(%ebp), %esi
L1137:
	movl	-3356(%ebp), %edi
	movl	-3284(%ebp), %ebx
	movl	%edi, %edx
	movl	%ebx, %eax
	call	__Z20libxmp_alloc_patternP10xmp_modulei
	cmpl	$-1, %eax
	je	L866
	leal	0(,%edi,4), %eax
	movl	%eax, -3360(%ebp)
	movl	-3308(%ebp), %eax
	movl	(%eax,%edi,4), %eax
	testl	%eax, %eax
	je	L1460
	cmpl	$1, (%esi)
	jne	L866
	addl	-3300(%ebp), %eax
	js	L869
	movl	8(%esi), %edx
	movl	8(%edx), %ecx
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	%ecx, 4(%edx)
	cmpl	$-1, 12(%esi)
	je	L1461
L1069:
	leal	-1080(%ebp), %edx
	xorl	%eax, %eax
	movl	%edx, -3364(%ebp)
L1070:
	movl	$0, (%edx,%eax)
	movl	$0, 4(%edx,%eax)
	movl	$0, 8(%edx,%eax)
	movl	$0, 12(%edx,%eax)
	addl	$16, %eax
	cmpl	$64, %eax
	jb	L1070
	leal	-584(%ebp), %eax
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	%esi, %eax
	movl	$0, -2044(%ebp)
	movl	$0, -2040(%ebp)
	call	__Z11hio_read16lP10HIO_HANDLE
	movl	%eax, %ebx
	movl	%esi, %eax
	call	__Z11hio_read16lP10HIO_HANDLE
	movl	-3284(%ebp), %ecx
	movl	-3360(%ebp), %edx
	movzwl	%ax, %edi
	movl	168(%ecx), %eax
	movl	%edi, -3324(%ebp)
	movl	(%eax,%edx), %eax
	movl	-3356(%ebp), %edx
	movl	%edi, (%eax)
	movl	%ecx, %eax
	call	__Z30libxmp_alloc_tracks_in_patternP10xmp_modulei
	cmpl	$-1, %eax
	je	L866
	xorl	%eax, %eax
L1073:
	movl	$0, -1564(%ebp,%eax)
	movl	$0, -1560(%ebp,%eax)
	movl	$0, -1556(%ebp,%eax)
	movl	$0, -1552(%ebp,%eax)
	addl	$16, %eax
	cmpl	$64, %eax
	jb	L1073
	movl	%esi, %eax
	call	__Z11hio_read16lP10HIO_HANDLE
	movl	%esi, %eax
	call	__Z11hio_read16lP10HIO_HANDLE
	movl	-3324(%ebp), %edi
	testl	%edi, %edi
	je	L1067
	movl	$0, -3292(%ebp)
	movzwl	%bx, %eax
	movl	%eax, -3288(%ebp)
	jmp	L1076
L1462:
	movl	12(%esi), %eax
	movl	$0, 12(%esi)
	testl	%eax, %eax
	jne	L866
L1135:
	addl	$1, -3292(%ebp)
	movl	%ebx, -3288(%ebp)
L1078:
	movl	-3292(%ebp), %edi
	cmpl	%edi, -3324(%ebp)
	jle	L1067
L1076:
	movl	-3288(%ebp), %ebx
	subl	$1, %ebx
	js	L1067
	cmpl	$1, (%esi)
	jne	L1462
	movl	%esi, %eax
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	movl	12(%esi), %edx
	movl	$0, 12(%esi)
	testl	%edx, %edx
	jne	L866
	testb	%al, %al
	je	L1135
	leal	63(%eax), %edi
	andl	$63, %edi
	testb	%al, %al
	js	L1079
	movzbl	-1564(%ebp,%edi), %edx
	movl	%ebx, -3288(%ebp)
	movl	%edx, %ecx
	movb	%dl, -3296(%ebp)
	movl	%edx, %eax
	andl	$2, %ecx
	andl	$1, %eax
	movb	%cl, -3350(%ebp)
	movl	%edx, %ecx
	andl	$4, %ecx
	movb	%cl, -3348(%ebp)
	movl	%edx, %ecx
	andl	$8, %ecx
	movb	%cl, -3344(%ebp)
	movl	%edx, %ecx
	andl	$16, %ecx
	movb	%cl, -3340(%ebp)
	movl	%edx, %ecx
	andl	$32, %ecx
	movb	%cl, -3336(%ebp)
	movl	%edx, %ecx
	andl	$64, %ecx
	movb	%cl, -3332(%ebp)
L1080:
	movl	-3284(%ebp), %ecx
	leal	-2044(%ebp), %ebx
	cmpl	136(%ecx), %edi
	jge	L1084
L1083:
	movl	-3284(%ebp), %ebx
	movl	-3360(%ebp), %ecx
	movl	168(%ebx), %edx
	movl	(%edx,%ecx), %edx
	movl	4(%edx,%edi,4), %ecx
	movl	172(%ebx), %edx
	movl	(%edx,%ecx,4), %edx
	movl	-3292(%ebp), %ecx
	leal	4(%edx,%ecx,8), %ebx
L1084:
	testb	%al, %al
	jne	L1463
L1085:
	cmpb	$0, -3350(%ebp)
	jne	L1464
	cmpb	$0, -3348(%ebp)
	jne	L1465
L1089:
	cmpb	$0, -3344(%ebp)
	jne	L1466
L1091:
	cmpb	$0, -3340(%ebp)
	je	L1128
	movzbl	-584(%ebp,%edi,8), %eax
	movb	%al, (%ebx)
L1128:
	cmpb	$0, -3336(%ebp)
	je	L1082
	movzbl	-583(%ebp,%edi,8), %eax
	movb	%al, 1(%ebx)
L1082:
	cmpb	$0, -3332(%ebp)
	jne	L1467
L1130:
	cmpb	$0, -3296(%ebp)
	jns	L1078
	movzwl	-581(%ebp,%edi,8), %eax
	movw	%ax, 3(%ebx)
	jmp	L1078
L887:
	testb	$1, 44(%ebx)
	je	L891
	movl	48(%ebx), %eax
	testl	%eax, %eax
	jne	L891
	movl	$1, 48(%ebx)
	jmp	L891
L897:
	orl	$8, %eax
	movl	%eax, 356(%ebx)
	testb	%dl, %dl
	je	L899
	movzbl	%dl, %edx
	movl	%ebx, %eax
	leal	(%ebx,%edx,4), %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L900:
	movzwl	386(%eax), %edx
	addl	$4, %eax
	leal	128(,%edx,4), %edx
	movw	%dx, 382(%eax)
	cmpl	%eax, %ecx
	jne	L900
	jmp	L899
	.p2align 4,,10
	.p2align 3
L1454:
	movl	%esi, %edi
	sall	$6, %edi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L908
	movl	%edi, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, -3292(%ebp)
	call	_memset
	movl	-3292(%ebp), %edx
	movl	%edx, 756(%ebx)
	movl	-1080(%ebp), %eax
	movl	%eax, 40(%edx)
	movzbl	-558(%ebp), %eax
	movl	%eax, 44(%edx)
	xorl	%eax, %eax
	cmpb	$0, -557(%ebp)
	setne	%al
	movl	$0, 52(%edx)
	movl	%eax, 48(%edx)
	movl	$-1, 8(%edx)
	cmpl	$1, %esi
	je	L931
	movl	$1, %edx
	leal	-1080(%ebp), %edi
	.p2align 6
	.p2align 4
	.p2align 3
L936:
	movl	(%edi,%edx,4), %ecx
	movl	%edx, %eax
	sall	$6, %eax
	addl	756(%ebx), %eax
	movl	%ecx, 40(%eax)
	movzbl	-558(%ebp), %ecx
	movl	%ecx, 44(%eax)
	xorl	%ecx, %ecx
	cmpb	$0, -557(%ebp)
	setne	%cl
	addl	$1, %edx
	movl	$0, 52(%eax)
	movl	%ecx, 48(%eax)
	movl	$-1, 8(%eax)
	cmpl	%esi, %edx
	jne	L936
	jmp	L931
L1452:
	movl	$0, 12(%edi)
	jmp	L913
L1450:
	movl	$0, 12(%edi)
	jmp	L878
L1456:
	movl	-3288(%ebp), %ecx
	movl	-3284(%ebp), %ebx
	leal	-1035(%ebp), %edx
	imull	$52, %ecx, %eax
	movl	%eax, -3372(%ebp)
	addl	180(%ebx), %eax
	movl	%eax, %edi
	movl	%ecx, %eax
	sall	$4, %eax
	addl	8488(%ebx), %eax
	movl	%eax, -3332(%ebp)
	movl	-580(%ebp), %eax
	movl	%eax, -1076(%ebp)
	movl	-576(%ebp), %eax
	movl	%eax, -1072(%ebp)
	movl	-572(%ebp), %eax
	movl	%eax, -1068(%ebp)
	movl	-568(%ebp), %eax
	movl	%eax, -1064(%ebp)
	movl	-564(%ebp), %eax
	movl	%eax, -1060(%ebp)
	movl	-560(%ebp), %eax
	movl	%eax, -1056(%ebp)
	movl	-556(%ebp), %eax
	movl	%eax, -1052(%ebp)
	movl	-552(%ebp), %eax
	movl	%eax, -1048(%ebp)
	movl	-548(%ebp), %eax
	movl	%eax, -1044(%ebp)
	movl	-544(%ebp), %eax
	movl	%eax, -1040(%ebp)
	movzwl	-540(%ebp), %eax
	movw	%ax, -1036(%ebp)
	leal	-1060(%ebp), %eax
	.p2align 4
	.p2align 4
	.p2align 3
L946:
	cmpb	$0, (%eax)
	jne	L945
	movb	$32, (%eax)
L945:
	addl	$1, %eax
	cmpl	%edx, %eax
	jne	L946
	leal	-1036(%ebp), %eax
	leal	-1061(%ebp), %edx
	.p2align 4
	.p2align 4
	.p2align 3
L947:
	cmpb	$32, (%eax)
	jne	L948
	movb	$0, (%eax)
	subl	$1, %eax
	cmpl	%eax, %edx
	jne	L947
L948:
	movzwl	-538(%ebp), %eax
	movups	-536(%ebp), %xmm0
	movlps	-520(%ebp), %xmm4
	movzbl	-1062(%ebp), %edx
	movw	%ax, -1034(%ebp)
	movl	-512(%ebp), %eax
	movups	%xmm0, -1032(%ebp)
	movl	%eax, -1008(%ebp)
	movl	-508(%ebp), %eax
	movlps	%xmm4, -1016(%ebp)
	movl	%eax, -1004(%ebp)
	testb	$2, %dl
	jne	L950
	movss	%xmm0, -3292(%ebp)
	movl	44(%edi), %ebx
	movl	-3292(%ebp), %eax
L951:
	movl	%eax, 32(%edi)
	movl	-1028(%ebp), %eax
	movl	%eax, 36(%edi)
	movl	-1024(%ebp), %eax
	movl	%eax, 40(%edi)
	movzbl	%dl, %eax
	movl	%eax, %ecx
	sarl	$4, %eax
	sarl	$3, %ecx
	andl	$4, %eax
	andl	$2, %ecx
	orl	%ecx, %eax
	movl	%edx, %ecx
	andl	$32, %ecx
	orl	%ecx, %eax
	movl	%edx, %ecx
	sarb	%cl
	andl	$64, %ecx
	orl	%ecx, %eax
	orl	%ebx, %eax
	andl	$32, %edx
	movl	%eax, 44(%edi)
	je	L952
	movl	-1016(%ebp), %eax
	movl	-3332(%ebp), %ecx
	movl	%eax, 8(%ecx)
	movl	-1012(%ebp), %eax
	movl	%eax, 12(%ecx)
L952:
	testb	$4, -3320(%ebp)
	je	L953
	movl	-3284(%ebp), %ecx
	movl	-3288(%ebp), %ebx
	movl	176(%ecx), %eax
	movl	$64, 32(%eax,%esi)
	movl	176(%ecx), %eax
	movzbl	-1061(%ebp), %edx
	movl	756(%eax,%esi), %eax
	movl	%edx, (%eax)
	movl	176(%ecx), %eax
	xorl	%edx, %edx
	movl	756(%eax,%esi), %eax
	movl	$128, 8(%eax)
	movl	176(%ecx), %eax
	movl	756(%eax,%esi), %eax
	movl	%ebx, 40(%eax)
	movl	32(%edi), %ebx
	movl	176(%ecx), %eax
	testl	%ebx, %ebx
	movl	%ecx, %ebx
	setne	%dl
	movl	%edx, 36(%eax,%esi)
	movl	176(%ecx), %eax
	leal	-1060(%ebp), %edx
	movl	$25, %ecx
	addl	%esi, %eax
	call	__Z18libxmp_copy_adjustPcPhi.isra.0
	movl	140(%ebx), %eax
	testl	%eax, %eax
	jle	L955
	movl	-3284(%ebp), %ebx
	movl	%esi, -3340(%ebp)
	xorl	%ecx, %ecx
	movl	%edi, -3336(%ebp)
	xorl	%edi, %edi
	movl	176(%ebx), %edx
L954:
	leal	(%edx,%ecx), %esi
	xorl	%ebx, %ebx
	movl	36(%esi), %eax
	testl	%eax, %eax
	jle	L969
	movl	%edi, -3324(%ebp)
	jmp	L968
	.p2align 6
	.p2align 4,,10
	.p2align 3
L964:
	leal	(%edx,%ecx), %esi
	addl	$1, %ebx
	cmpl	36(%esi), %ebx
	jge	L1468
L968:
	movl	756(%esi), %edi
	movl	%ebx, %eax
	sall	$6, %eax
	addl	%eax, %edi
	movl	%edi, %esi
	movl	-3288(%ebp), %edi
	cmpl	%edi, 40(%esi)
	jne	L964
	movzbl	-1061(%ebp), %edx
	movl	%edx, (%esi)
	movzbl	-1063(%ebp), %edx
	movl	%edx, 4(%esi)
	movzbl	-1004(%ebp), %edx
	movl	%edx, 28(%esi)
	movzbl	-1003(%ebp), %edx
	addl	%edx, %edx
	movl	%edx, 24(%esi)
	movzbl	-1001(%ebp), %edx
	movl	%edx, 20(%esi)
	movzbl	-1002(%ebp), %edi
	movl	$255, %edx
	subl	%edi, %edx
	movl	-3284(%ebp), %edi
	sarl	%edx
	movl	%edx, 32(%esi)
	movl	176(%edi), %edx
	addl	756(%edx,%ecx), %eax
	movl	%eax, %edi
	movl	-1020(%ebp), %eax
	testl	%eax, %eax
	jle	L1469
	movl	%eax, -3292(%ebp)
	fildl	-3292(%ebp)
	fdivs	LC10
	movl	%ecx, -3296(%ebp)
	fstpl	(%esp)
	call	_log
	fmuls	LC11
	movl	-3296(%ebp), %ecx
	fnstcw	-3274(%ebp)
	fdivl	LC12
	movzwl	-3274(%ebp), %eax
	orb	$12, %ah
	movw	%ax, -3276(%ebp)
	fldcw	-3276(%ebp)
	fistpl	-3292(%ebp)
	fldcw	-3274(%ebp)
	movl	-3292(%ebp), %eax
	testl	%eax, %eax
	leal	127(%eax), %edx
	cmovns	%eax, %edx
	sarl	$7, %edx
	movl	%edx, 12(%edi)
	cltd
	shrl	$25, %edx
	addl	%edx, %eax
	andl	$127, %eax
	subl	%edx, %eax
	movl	%eax, 16(%edi)
	movzbl	-1033(%ebp), %eax
	testb	%al, %al
	js	L1470
L967:
	movl	-3284(%ebp), %eax
	movl	$-1, 8(%esi)
	addl	$1, %ebx
	movl	176(%eax), %edx
	leal	(%edx,%ecx), %esi
	cmpl	36(%esi), %ebx
	jl	L968
L1468:
	movl	-3324(%ebp), %edi
L969:
	movl	-3284(%ebp), %eax
	addl	$1, %edi
	addl	$764, %ecx
	cmpl	140(%eax), %edi
	jl	L954
	movl	-3336(%ebp), %edi
	movl	-3340(%ebp), %esi
L955:
	testb	$1, -1062(%ebp)
	je	L944
	movl	32(%edi), %eax
	cmpl	$1, %eax
	jle	L944
	cmpl	$268435456, %eax
	jg	L866
	movl	-3280(%ebp), %eax
	cmpl	$1, (%eax)
	jne	L866
	movl	-3300(%ebp), %ecx
	addl	-1008(%ebp), %ecx
	js	L1471
	movl	-3280(%ebp), %ebx
	movl	8(%ebx), %edx
	movl	8(%edx), %eax
	cmpl	%ecx, %eax
	cmovg	%ecx, %eax
	movl	%eax, 4(%edx)
	cmpl	$-1, 12(%ebx)
	je	L1472
L971:
	movl	40(%edi), %eax
	movl	32(%edi), %ebx
	movl	%eax, -3292(%ebp)
	cmpl	%ebx, %eax
	jg	L972
	cmpl	36(%edi), %eax
	jle	L972
L973:
	movzbl	-1034(%ebp), %edx
	movl	$16384, %ecx
	movl	%edx, %eax
	notl	%eax
	andl	$1, %eax
	addl	%eax, %eax
	cmpb	$-1, %dl
	cmove	%ecx, %eax
	movl	%eax, -3364(%ebp)
	testb	$8, -1062(%ebp)
	je	L975
	movl	-3280(%ebp), %eax
	movl	4(%eax), %edx
	movl	%edx, %eax
	subl	-1008(%ebp), %eax
	testl	%eax, %eax
	jle	L944
	movl	%ebx, %ecx
	sarl	$3, %ecx
	cmpl	%eax, %ecx
	jle	L976
	testl	%edx, %edx
	jle	L976
	leal	0(,%eax,8), %ebx
	movl	%ebx, 32(%edi)
	cmpl	%ebx, -3292(%ebp)
	jle	L977
	movl	%ebx, 40(%edi)
L977:
	cmpl	36(%edi), %ebx
	jg	L978
	andl	$-3, 44(%edi)
L978:
	movl	-3332(%ebp), %eax
	testl	%eax, %eax
	je	L976
	cmpl	12(%eax), %ebx
	jge	L979
	movl	%ebx, 12(%eax)
	movl	32(%edi), %ebx
L979:
	movl	-3332(%ebp), %eax
	cmpl	%ebx, 8(%eax)
	jl	L976
	andl	$-97, 44(%edi)
L976:
	addl	%ebx, %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -3360(%ebp)
	testl	%eax, %eax
	je	L982
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movzbl	-1034(%ebp), %eax
	andl	$4, %eax
	movb	%al, -3351(%ebp)
	movl	32(%edi), %eax
	movl	%eax, -3332(%ebp)
	testb	$2, -1062(%ebp)
	je	L1473
	movl	-3332(%ebp), %eax
	testl	%eax, %eax
	je	L986
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	-3360(%ebp), %eax
	movl	%esi, -3296(%ebp)
	movw	%dx, -3340(%ebp)
	xorl	%edi, %edi
	xorl	%esi, %esi
	movw	%cx, -3350(%ebp)
	movb	$0, -3292(%ebp)
	movl	%eax, -3356(%ebp)
	xorl	%eax, %eax
L1011:
	testl	%esi, %esi
	je	L1474
L985:
	movl	-3332(%ebp), %ecx
	movl	%esi, -3348(%ebp)
	movl	%edi, %edx
	movl	$0, -3324(%ebp)
	movl	-3280(%ebp), %edi
	cmpl	%esi, %ecx
	cmova	%esi, %ecx
	movl	%ecx, -3336(%ebp)
L1010:
	movzbl	-3292(%ebp), %esi
	leal	-1(%esi), %ecx
	movl	%esi, -3344(%ebp)
	cmpl	$31, %ecx
	jbe	L987
L1426:
	movl	-3296(%ebp), %esi
L986:
	movl	-3360(%ebp), %edi
	movl	-3364(%ebp), %ecx
	xorl	%edx, %edx
	movl	%edi, 4(%esp)
	movl	-3284(%ebp), %ebx
	orl	$16, %ecx
	movl	-3372(%ebp), %eax
	addl	180(%ebx), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__Z18libxmp_load_sampleP11module_dataP10HIO_HANDLEiP10xmp_samplePKv
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L944
	.p2align 4,,10
	.p2align 3
L1156:
	movl	$0, -3304(%ebp)
	jmp	L837
L854:
	cmpl	$1, %edx
	je	L1475
L856:
	movl	-3284(%ebp), %eax
	movl	$256, 156(%eax)
	jmp	L855
L1475:
	movl	-3280(%ebp), %edi
	movl	$256, %ecx
	movl	%edi, (%esp)
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	movl	-3284(%ebp), %eax
	movl	156(%eax), %eax
	movl	%eax, -3288(%ebp)
	subl	$256, %eax
	cmpl	$1, (%edi)
	jne	L856
	movl	8(%edi), %edx
	addl	4(%edx), %eax
	js	L1476
	movl	8(%edx), %ecx
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	-3280(%ebp), %eax
	movl	%ecx, 4(%edx)
	cmpl	$-1, 12(%eax)
	jne	L856
	movl	$0, 12(%eax)
	jmp	L856
L1455:
	movl	$0, 12(%edi)
	jmp	L939
L908:
	movl	$64, %eax
	call	__Z13handle_memerri
L953:
	movl	%edi, %eax
	movl	$25, %ecx
	leal	-1060(%ebp), %edx
	call	__Z18libxmp_copy_adjustPcPhi.isra.0
	movl	-3284(%ebp), %ebx
	movl	140(%ebx), %eax
	testl	%eax, %eax
	jle	L955
	movl	%esi, -3340(%ebp)
	movl	176(%ebx), %edx
	xorl	%ecx, %ecx
	movl	%edi, -3336(%ebp)
	xorl	%edi, %edi
L963:
	leal	(%edx,%ecx), %esi
	movl	36(%esi), %eax
	testl	%eax, %eax
	jle	L956
	movl	%edi, -3324(%ebp)
	xorl	%ebx, %ebx
	jmp	L958
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1478:
	leal	(%edx,%ecx), %esi
	addl	$1, %ebx
	cmpl	36(%esi), %ebx
	jge	L1477
L958:
	movl	756(%esi), %edi
	movl	%ebx, %eax
	sall	$6, %eax
	addl	%eax, %edi
	movl	%edi, %esi
	movl	-3288(%ebp), %edi
	cmpl	%edi, 40(%esi)
	jne	L1478
	movzbl	-1061(%ebp), %edx
	movl	%edx, (%esi)
	movzbl	-1063(%ebp), %edx
	movl	%edx, 4(%esi)
	movzbl	-1004(%ebp), %edx
	movl	%edx, 28(%esi)
	movzbl	-1003(%ebp), %edx
	addl	%edx, %edx
	movl	%edx, 24(%esi)
	movzbl	-1001(%ebp), %edx
	movl	%edx, 20(%esi)
	movzbl	-1002(%ebp), %edi
	movl	$255, %edx
	subl	%edi, %edx
	movl	-3284(%ebp), %edi
	sarl	%edx
	movl	%edx, 32(%esi)
	movl	176(%edi), %edx
	addl	756(%edx,%ecx), %eax
	movl	%eax, %edi
	movl	-1020(%ebp), %eax
	testl	%eax, %eax
	jle	L1479
	movl	%eax, -3292(%ebp)
	fildl	-3292(%ebp)
	fdivs	LC10
	movl	%ecx, -3296(%ebp)
	fstpl	(%esp)
	call	_log
	fmuls	LC11
	movl	-3296(%ebp), %ecx
	fnstcw	-3274(%ebp)
	fdivl	LC12
	movzwl	-3274(%ebp), %eax
	orb	$12, %ah
	movw	%ax, -3276(%ebp)
	fldcw	-3276(%ebp)
	fistpl	-3292(%ebp)
	fldcw	-3274(%ebp)
	movl	-3292(%ebp), %eax
	testl	%eax, %eax
	leal	127(%eax), %edx
	cmovns	%eax, %edx
	sarl	$7, %edx
	movl	%edx, 12(%edi)
	cltd
	shrl	$25, %edx
	addl	%edx, %eax
	andl	$127, %eax
	subl	%edx, %eax
	movl	%eax, 16(%edi)
L962:
	movzbl	-1033(%ebp), %eax
	testb	%al, %al
	jns	L1434
	andl	$127, %eax
	sall	$2, %eax
	movl	%eax, 8(%esi)
L1434:
	movl	-3284(%ebp), %eax
	addl	$1, %ebx
	movl	176(%eax), %edx
	leal	(%edx,%ecx), %esi
	cmpl	36(%esi), %ebx
	jl	L958
L1477:
	movl	-3324(%ebp), %edi
L956:
	movl	-3284(%ebp), %eax
	addl	$1, %edi
	addl	$764, %ecx
	cmpl	140(%eax), %edi
	jl	L963
	movl	-3336(%ebp), %edi
	movl	-3340(%ebp), %esi
	jmp	L955
L950:
	movl	$1, 44(%edi)
	movl	$1, %ebx
	movl	-1032(%ebp), %eax
	jmp	L951
L1447:
	movl	-3280(%ebp), %edi
	cmpl	$1, (%edi)
	jne	L866
	movl	8(%edi), %edx
	movzwl	%ax, %eax
	movl	4(%edx), %ecx
	leal	(%ecx,%eax,8), %ecx
	testl	%ecx, %ecx
	js	L869
	movl	8(%edx), %eax
	cmpl	%ecx, %eax
	cmovg	%ecx, %eax
	movl	%eax, 4(%edx)
	movl	-3280(%ebp), %eax
	cmpl	$-1, 12(%eax)
	jne	L865
	movl	$0, 12(%eax)
	jmp	L865
L972:
	andl	$-3, 44(%edi)
	jmp	L973
L1459:
	testl	%eax, %eax
	je	L1441
	movl	%ebx, -3344(%ebp)
	movzwl	%si, %esi
	movl	-3324(%ebp), %ebx
	movl	$0, -3292(%ebp)
	jmp	L1046
L1480:
	movl	12(%edi), %eax
	movl	$0, 12(%edi)
	testl	%eax, %eax
	jne	L866
L1062:
	addl	$1, -3292(%ebp)
	movl	-3324(%ebp), %esi
L1048:
	movl	-3296(%ebp), %ecx
	cmpl	%ecx, -3292(%ebp)
	jge	L1440
L1046:
	movl	%esi, %eax
	subl	$1, %eax
	movl	%eax, -3324(%ebp)
	js	L1440
	cmpl	$1, (%edi)
	jne	L1480
	movl	%edi, %eax
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	movl	12(%edi), %edx
	movl	$0, 12(%edi)
	testl	%edx, %edx
	jne	L866
	movzbl	%al, %edx
	testl	%edx, %edx
	je	L1062
	subl	$1, %edx
	andl	$63, %edx
	cmpl	%edx, %ebx
	cmovl	%edx, %ebx
	testb	%al, %al
	js	L1049
	movzbl	-584(%ebp,%edx), %eax
	movl	-3324(%ebp), %esi
	movl	%eax, %ecx
	andl	$2, %ecx
	movb	%cl, -3332(%ebp)
	movl	%eax, %ecx
	andl	$8, %ecx
	movb	%cl, -3340(%ebp)
	movl	%eax, %ecx
	andl	$4, %eax
	movb	%al, -3336(%ebp)
	andl	$1, %ecx
L1050:
	testb	%cl, %cl
	jne	L1481
	cmpb	$0, -3332(%ebp)
	jne	L1482
L1054:
	cmpb	$0, -3336(%ebp)
	jne	L1483
L1056:
	cmpb	$0, -3340(%ebp)
	je	L1048
	cmpl	$1, (%edi)
	je	L1484
L1058:
	subl	$2, %esi
	jmp	L1048
L1479:
	movl	$0, 12(%edi)
	movl	$0, 16(%edi)
	jmp	L962
L1469:
	movl	$0, 12(%edi)
	movl	$0, 16(%edi)
	movzbl	-1033(%ebp), %eax
	testb	%al, %al
	jns	L967
L1470:
	andl	$127, %eax
	sall	$2, %eax
	movl	%eax, 8(%esi)
	movl	-3284(%ebp), %eax
	movl	176(%eax), %edx
	jmp	L964
L1444:
	movl	-3280(%ebp), %edi
	leal	-2956(%ebp), %eax
	movl	$1, %ecx
	movl	$64, %edx
	movl	%edi, (%esp)
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	cmpl	$1, (%edi)
	jne	L836
	movl	%edi, (%esp)
	leal	-2892(%ebp), %eax
	movl	$1, %ecx
	movl	$64, %edx
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	jmp	L836
L825:
	movl	-3280(%ebp), %edi
	movl	%edi, %eax
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	movb	%al, -2972(%ebp)
	movl	%eax, %ebx
	cmpl	$1, (%edi)
	je	L827
	movb	$0, -2971(%ebp)
	jmp	L828
	.p2align 4,,10
	.p2align 3
L821:
	movl	-3280(%ebp), %edi
	leal	-3016(%ebp), %eax
	movl	$1, %ecx
	movl	$26, %edx
	movl	%edi, (%esp)
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	cmpl	$1, (%edi)
	jne	L1432
	movl	-3280(%ebp), %edi
	movl	%edi, %eax
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	movb	%al, -2990(%ebp)
	movl	%edi, %eax
	cmpl	$1, (%edi)
	jne	L822
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	jmp	L824
L827:
	movl	-3280(%ebp), %edi
	movl	%edi, %eax
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	movb	%al, -2971(%ebp)
	cmpl	$1, (%edi)
	je	L829
L828:
	movb	$0, -2970(%ebp)
	jmp	L830
	.p2align 4,,10
	.p2align 3
L1483:
	cmpl	$1, (%edi)
	je	L1485
L1057:
	subl	$1, %esi
	jmp	L1056
L1481:
	cmpl	$1, (%edi)
	je	L1486
L1053:
	subl	$1, %esi
	cmpb	$0, -3332(%ebp)
	je	L1054
L1482:
	cmpl	$1, (%edi)
	je	L1487
L1055:
	subl	$1, %esi
	jmp	L1054
L829:
	movl	-3280(%ebp), %edi
	movl	%edi, %eax
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	movb	%al, -2970(%ebp)
	cmpl	$1, (%edi)
	je	L831
L830:
	movb	$0, -2969(%ebp)
	jmp	L832
	.p2align 4,,10
	.p2align 3
L831:
	movl	-3280(%ebp), %edi
	movl	%edi, %eax
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	movb	%al, -2969(%ebp)
	cmpl	$1, (%edi)
	je	L833
L832:
	movb	$0, -2968(%ebp)
L835:
	xorl	%eax, %eax
	jmp	L834
L833:
	movl	-3280(%ebp), %edi
	movl	%edi, %eax
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	movb	%al, -2968(%ebp)
	movl	%edi, %eax
	cmpl	$1, (%edi)
	jne	L835
	call	__Z9hio_read8P10HIO_HANDLE.part.0
L834:
	movb	%al, -2967(%ebp)
	cmpb	$-128, %bl
	jbe	L826
	jmp	L818
L1049:
	cmpl	$1, (%edi)
	je	L1051
	movb	$0, -584(%ebp,%edx)
	subl	$2, %esi
	jmp	L1048
L1476:
	movl	-3280(%ebp), %eax
	movl	$22, 12(%eax)
	jmp	L856
L1397:
	testb	$1, 44(%ebx)
	je	L890
	movl	48(%ebx), %edi
	testl	%edi, %edi
	je	L894
	jmp	L890
L1395:
	movl	%esi, %eax
	call	__Z13handle_memerri
L1448:
	movl	$0, 12(%edi)
	jmp	L870
L1457:
	movl	$22, 12(%edi)
	jmp	L1041
L844:
	movl	-3284(%ebp), %edi
	leal	-2956(%ebp), %eax
	leal	-2892(%ebp), %ebx
	leal	184(%edi), %edx
	jmp	L853
	.p2align 4,,10
	.p2align 3
L849:
	testb	%cl, %cl
	jns	L851
	orl	$2, 8(%edx)
L850:
	movl	$255, (%edx)
L852:
	movzbl	64(%eax), %ecx
	addl	$1, %eax
	addl	$12, %edx
	movl	%ecx, -8(%edx)
	cmpl	%ebx, %eax
	je	L848
L853:
	movzbl	(%eax), %ecx
	cmpb	$100, %cl
	jne	L849
	orl	$16, 8(%edx)
	jmp	L850
L851:
	sall	$2, %ecx
	movl	%ecx, (%edx)
	cmpl	$255, %ecx
	jle	L852
	jmp	L850
	.p2align 4,,10
	.p2align 3
L982:
	movl	%ebx, %eax
	call	__Z13handle_memerri
L1440:
	movl	%ebx, -3324(%ebp)
	movl	-3344(%ebp), %ebx
L1441:
	movl	128(%ebx), %edx
	jmp	L1059
L975:
	movl	$0, 4(%esp)
	movl	-3284(%ebp), %edi
	movl	-3372(%ebp), %eax
	addl	180(%edi), %eax
	movl	%eax, (%esp)
	movl	-3364(%ebp), %ecx
	movl	%edi, %eax
	movl	-3280(%ebp), %edx
	call	__Z18libxmp_load_sampleP11module_dataP10HIO_HANDLEiP10xmp_samplePKv
	jmp	L944
L1446:
	movl	%edi, (%esp)
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	jmp	L855
L868:
	movl	$4608, %eax
	call	__Z13handle_memerri
L1498:
	movl	$4, %esi
	xorl	%ebx, %ebx
	jmp	L995
L997:
	shrdl	$1, %eax, %ebx
	subl	$1, %edx
	shrl	%eax
	subl	$1, %esi
	je	L996
L995:
	testl	%edx, %edx
	jne	L997
	cmpl	$1, (%edi)
	jne	L1426
	movl	8(%edi), %edx
	movl	4(%edx), %eax
	testl	%eax, %eax
	js	L1426
	cmpl	%eax, 8(%edx)
	jle	L1426
	movl	%edi, %eax
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	movl	%eax, %edx
	movzbl	%al, %eax
	shrdl	$1, %edx, %ebx
	shrl	%eax
	movl	$7, %edx
	subl	$1, %esi
	jne	L997
L996:
	movl	%ebx, %ecx
	shrl	$28, %ecx
	addl	$1, %ecx
	cmpb	-3292(%ebp), %cl
	jnb	L998
	movl	-3336(%ebp), %ebx
	cmpl	%ebx, -3324(%ebp)
	jnb	L1488
	movb	%cl, -3292(%ebp)
L999:
	movzbl	-3292(%ebp), %esi
	movl	%esi, -3344(%ebp)
L987:
	movl	-3344(%ebp), %esi
	xorl	%ebx, %ebx
	jmp	L989
	.p2align 5
	.p2align 4,,10
	.p2align 3
L991:
	shrdl	$1, %eax, %ebx
	subl	$1, %edx
	shrl	%eax
	subl	$1, %esi
	je	L990
L989:
	testl	%edx, %edx
	jne	L991
	cmpl	$1, (%edi)
	jne	L1426
	movl	8(%edi), %edx
	movl	4(%edx), %eax
	testl	%eax, %eax
	js	L1426
	cmpl	%eax, 8(%edx)
	jle	L1426
	movl	%edi, %eax
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	movl	%eax, %edx
	movzbl	%al, %eax
	shrdl	$1, %edx, %ebx
	shrl	%eax
	movl	$7, %edx
	subl	$1, %esi
	jne	L991
L990:
	movl	-3344(%ebp), %esi
	movl	%esi, %ecx
	negl	%ecx
	shrl	%cl, %ebx
	cmpb	$6, -3292(%ebp)
	jbe	L1489
	cmpb	$16, -3292(%ebp)
	jbe	L1490
	cmpb	$17, -3292(%ebp)
	jne	L1004
	cmpl	$65535, %ebx
	ja	L1491
L1006:
	movswl	-3350(%ebp), %ecx
	movl	-3356(%ebp), %esi
	addl	%ebx, %ecx
	movl	-3324(%ebp), %ebx
	addw	%cx, -3340(%ebp)
	movw	%cx, -3350(%ebp)
	cmpb	$0, -3351(%ebp)
	cmovne	-3340(%ebp), %cx
	movw	%cx, (%esi,%ebx,2)
L1004:
	addl	$1, -3324(%ebp)
	movl	-3336(%ebp), %ecx
	cmpl	%ecx, -3324(%ebp)
	jb	L987
L1436:
	movl	-3348(%ebp), %esi
	movl	%edx, %edi
L1000:
	movl	-3336(%ebp), %ecx
	movl	-3356(%ebp), %edx
	subl	%ecx, -3332(%ebp)
	subl	%ecx, %esi
	leal	(%edx,%ecx,2), %ecx
	movl	-3332(%ebp), %edx
	movl	%ecx, -3356(%ebp)
	testl	%edx, %edx
	jg	L1011
	jmp	L1426
	.p2align 4,,10
	.p2align 3
L1466:
	cmpl	$1, (%esi)
	je	L1492
	movb	$0, 3(%ebx)
	cmpl	$1, (%esi)
	jne	L1493
L1154:
	movl	%esi, %eax
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	movzbl	3(%ebx), %edx
	movb	%al, 4(%ebx)
	movzbl	__ZL2fx.lto_priv.0(%edx), %edx
	movb	%dl, 3(%ebx)
	cmpb	$16, %dl
	je	L1096
	cmpb	$15, %dl
	jbe	L1121
	movl	%eax, %ecx
	shrb	$4, %cl
	movb	%cl, -3344(%ebp)
	movl	%eax, %ecx
	andl	$15, %ecx
	movb	%cl, -3348(%ebp)
	cmpb	$-2, %dl
	je	L1098
	cmpb	$-1, %dl
	je	L1119
	cmpb	$29, %dl
	jne	L1121
	testb	%al, %al
	je	L1153
	testb	$16, -3312(%ebp)
	je	L1153
	movzbl	-3344(%ebp), %eax
	movzbl	-3348(%ebp), %ecx
	addl	$1, %eax
	addl	$1, %ecx
	sall	$4, %eax
	orl	%ecx, %eax
	movb	%al, 4(%ebx)
L1121:
	movb	%dl, -581(%ebp,%edi,8)
	movb	%al, -580(%ebp,%edi,8)
L1094:
	subl	$2, -3288(%ebp)
	jmp	L1091
L1464:
	xorl	%eax, %eax
	cmpl	$1, (%esi)
	je	L1494
L1088:
	movb	%al, 1(%ebx)
	subl	$1, -3288(%ebp)
	movb	%al, -583(%ebp,%edi,8)
	cmpb	$0, -3348(%ebp)
	je	L1089
L1465:
	xorl	%eax, %eax
	cmpl	$1, (%esi)
	je	L1495
L1090:
	movb	%al, 2(%ebx)
	movb	%al, -582(%ebp,%edi,8)
	movl	%ebx, %eax
	call	__ZL10xlat_volfxP9xmp_event
	subl	$1, -3288(%ebp)
	jmp	L1089
L1463:
	cmpl	$1, (%esi)
	je	L1496
L1086:
	movb	%al, (%ebx)
	subl	$1, -3288(%ebp)
	movb	%al, -584(%ebp,%edi,8)
	jmp	L1085
L1467:
	movzbl	-582(%ebp,%edi,8), %eax
	movb	%al, 2(%ebx)
	movl	%ebx, %eax
	call	__ZL10xlat_volfxP9xmp_event
	jmp	L1130
L1460:
	movl	168(%ebx), %eax
	movl	(%eax,%edi,4), %eax
	movl	$64, (%eax)
	movl	136(%ebx), %eax
	testl	%eax, %eax
	jle	L1067
	xorl	%ebx, %ebx
L1068:
	imull	-3356(%ebp), %eax
	movl	$64, %ecx
	leal	(%eax,%ebx), %edi
	movl	-3284(%ebp), %eax
	movl	%edi, %edx
	call	__Z18libxmp_alloc_trackP10xmp_moduleii
	cmpl	$-1, %eax
	je	L866
	movl	-3284(%ebp), %ecx
	movl	-3360(%ebp), %edx
	movl	168(%ecx), %eax
	movl	(%eax,%edx), %eax
	movl	%edi, 4(%eax,%ebx,4)
	movl	136(%ecx), %eax
	addl	$1, %ebx
	cmpl	%ebx, %eax
	jg	L1068
L1067:
	movl	-3284(%ebp), %edi
	addl	$1, -3356(%ebp)
	movl	-3356(%ebp), %eax
	cmpl	%eax, 128(%edi)
	jg	L1137
L1065:
	movl	-3308(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-3316(%ebp), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-3304(%ebp), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	testb	$1, -2974(%ebp)
	jne	L1497
L1138:
	movl	-3284(%ebp), %edi
	movzwl	-3312(%ebp), %esi
	movl	$128, 1272(%edi)
	movl	1292(%edi), %eax
	movl	$48, 1280(%edi)
	movl	$3, 1296(%edi)
	movl	%eax, %edx
	orl	$1763167267, %eax
	orl	$1767360547, %edx
	testl	$32, %esi
	cmovne	%edx, %eax
	movl	%eax, %edx
	andl	$-1048577, %eax
	orl	$2621440, %edx
	orl	$8388608, %eax
	testw	$16, %si
	cmove	%edx, %eax
	movl	%eax, %edx
	andl	$-1073774593, %edx
	testb	$4, -3320(%ebp)
	cmovne	%edx, %eax
	movl	%eax, 1292(%edi)
	movzbl	-2972(%ebp), %eax
	movl	%eax, 1276(%edi)
	movzbl	-2971(%ebp), %eax
	movl	%eax, 1284(%edi)
	jmp	L1410
	.p2align 4,,10
	.p2align 3
L1079:
	cmpl	$1, (%esi)
	je	L1081
	movl	-3284(%ebp), %eax
	subl	$2, -3288(%ebp)
	movb	$0, -1564(%ebp,%edi)
	cmpl	%edi, 136(%eax)
	jle	L1078
	movb	$0, -3296(%ebp)
	xorl	%eax, %eax
	movb	$0, -3332(%ebp)
	movb	$0, -3336(%ebp)
	movb	$0, -3340(%ebp)
	movb	$0, -3344(%ebp)
	movb	$0, -3348(%ebp)
	movb	$0, -3350(%ebp)
	jmp	L1083
L1489:
	leal	-1(%esi), %ecx
	movl	$1, %esi
	sall	%cl, %esi
	cmpl	%ebx, %esi
	je	L1498
L993:
	movl	$16, %ecx
	subb	-3292(%ebp), %cl
	sall	%cl, %ebx
	movswl	%bx, %ebx
	sarl	%cl, %ebx
	jmp	L1006
L1490:
	movl	$17, %ecx
	movl	$65535, %esi
	subl	-3344(%ebp), %ecx
	sarl	%cl, %esi
	movl	%esi, %ecx
	leal	-8(%esi), %esi
	addl	$8, %ecx
	cmpl	%ebx, %ecx
	jb	L1002
	cmpl	%ebx, %esi
	jnb	L1002
	subl	%esi, %ebx
	cmpb	-3292(%ebp), %bl
	movl	%ebx, %ecx
	sbbb	$-1, %cl
	movb	%cl, -3292(%ebp)
L1003:
	movl	-3336(%ebp), %ecx
	cmpl	%ecx, -3324(%ebp)
	jb	L1010
	jmp	L1436
	.p2align 4,,10
	.p2align 3
L1492:
	movl	%esi, %eax
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	cmpb	$31, %al
	jbe	L1093
	cmpl	$1, (%esi)
	jne	L1094
	movl	%esi, %eax
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	jmp	L1094
L1496:
	movl	%esi, %eax
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	movl	%eax, %edx
	movl	$-126, %eax
	cmpb	$-2, %dl
	je	L1086
	movl	$-127, %eax
	cmpb	$-1, %dl
	je	L1086
	leal	1(%edx), %ecx
	cmpb	$120, %dl
	movl	$-125, %eax
	cmovb	%ecx, %eax
	jmp	L1086
	.p2align 4,,10
	.p2align 3
L1494:
	movl	%esi, %eax
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	jmp	L1088
L1002:
	cmpb	$16, -3292(%ebp)
	je	L1006
	jmp	L993
L1495:
	movl	%esi, %eax
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	jmp	L1090
L1493:
	movl	$255, %eax
	movw	%ax, 3(%ebx)
L1119:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	xorl	%edx, %edx
	movw	%cx, 3(%ebx)
	jmp	L1121
L1081:
	movl	%esi, %eax
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	subl	$2, -3288(%ebp)
	movl	%eax, %edx
	andl	$1, %eax
	movl	%edx, %ecx
	movb	%dl, -3296(%ebp)
	andl	$2, %ecx
	movb	%dl, -1564(%ebp,%edi)
	movb	%cl, -3350(%ebp)
	movl	%edx, %ecx
	andl	$4, %ecx
	movb	%cl, -3348(%ebp)
	movl	%edx, %ecx
	andl	$8, %ecx
	movb	%cl, -3344(%ebp)
	movl	%edx, %ecx
	andl	$16, %ecx
	movb	%cl, -3340(%ebp)
	movl	%edx, %ecx
	andl	$32, %ecx
	movb	%cl, -3336(%ebp)
	movl	%edx, %ecx
	andl	$64, %ecx
	movb	%cl, -3332(%ebp)
	jmp	L1080
L1458:
	movl	$0, 12(%edi)
	jmp	L1041
L1484:
	movl	%edi, %eax
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	cmpl	$1, (%edi)
	jne	L1058
	movl	%edi, %eax
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	jmp	L1058
L1487:
	movl	%edi, %eax
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	jmp	L1055
L1486:
	movl	%edi, %eax
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	jmp	L1053
L1485:
	movl	%edi, %eax
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	jmp	L1057
L1471:
	movl	$22, 12(%eax)
	jmp	L866
L998:
	addl	$1, %ecx
	movb	%cl, -3292(%ebp)
	movl	-3336(%ebp), %ecx
	cmpl	%ecx, -3324(%ebp)
	jb	L999
	jmp	L1436
	.p2align 4,,10
	.p2align 3
L1472:
	movl	$0, 12(%ebx)
	jmp	L971
L1093:
	movb	%al, 3(%ebx)
	cmpl	$1, (%esi)
	je	L1154
L820:
	movzbl	%al, %eax
	movb	$0, 4(%ebx)
	movzbl	__ZL2fx.lto_priv.0(%eax), %edx
	movb	%dl, 3(%ebx)
	cmpb	$-2, %dl
	je	L1152
	cmpb	$-1, %dl
	je	L1119
	xorl	%eax, %eax
	cmpb	$29, %dl
	jne	L1121
L1153:
	movzbl	3(%ebx), %edx
	movzbl	4(%ebx), %eax
	jmp	L1121
L1491:
	leal	1(%ebx), %ecx
	movb	%cl, -3292(%ebp)
	jmp	L1003
L1051:
	movl	%edi, %eax
	movl	%edx, -3324(%ebp)
	subl	$2, %esi
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	movl	%eax, %edx
	movl	%eax, %ecx
	andl	$2, %edx
	andl	$1, %ecx
	movb	%dl, -3332(%ebp)
	movl	%eax, %edx
	andl	$4, %edx
	movb	%dl, -3336(%ebp)
	movl	%eax, %edx
	andl	$8, %edx
	movb	%dl, -3340(%ebp)
	movl	-3324(%ebp), %edx
	movb	%al, -584(%ebp,%edx)
	jmp	L1050
L1473:
	movl	-3332(%ebp), %eax
	testl	%eax, %eax
	je	L986
	movl	-3360(%ebp), %eax
	xorl	%edi, %edi
	xorl	%edx, %edx
	xorl	%ebx, %ebx
	movb	$0, -3348(%ebp)
	movb	$0, -3350(%ebp)
	movb	$0, -3292(%ebp)
	movl	%eax, -3368(%ebp)
L1037:
	testl	%ebx, %ebx
	je	L1499
L1012:
	movl	-3332(%ebp), %eax
	movl	%esi, -3296(%ebp)
	movl	$0, -3324(%ebp)
	movl	-3280(%ebp), %esi
	cmpl	%ebx, %eax
	cmova	%ebx, %eax
	movl	%eax, -3336(%ebp)
L1036:
	movzbl	-3292(%ebp), %eax
	movl	%eax, -3340(%ebp)
	subl	$1, %eax
	cmpl	$31, %eax
	ja	L1426
	movl	%ebx, -3344(%ebp)
L1014:
	movl	%edi, %eax
	movl	-3340(%ebp), %ebx
	xorl	%edi, %edi
	jmp	L1016
L1018:
	shrdl	$1, %edx, %edi
	subl	$1, %eax
	shrl	%edx
	subl	$1, %ebx
	je	L1500
L1016:
	testl	%eax, %eax
	jne	L1018
	cmpl	$1, (%esi)
	jne	L1426
	movl	8(%esi), %edx
	movl	4(%edx), %eax
	testl	%eax, %eax
	js	L1426
	cmpl	%eax, 8(%edx)
	jle	L1426
	movl	%esi, %eax
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	movzbl	%al, %edx
	shrdl	$1, %eax, %edi
	shrl	%edx
	subl	$1, %ebx
	je	L1501
	movl	$7, %eax
	shrdl	$1, %edx, %edi
	subl	$1, %eax
	shrl	%edx
	subl	$1, %ebx
	jne	L1016
L1500:
	movl	%edi, %ebx
	movl	%eax, %edi
L1017:
	movzbl	-3340(%ebp), %ecx
	movl	%ebx, %eax
	negl	%ecx
	shrl	%cl, %eax
	cmpb	$6, -3292(%ebp)
	jbe	L1502
	movw	%ax, -3356(%ebp)
	cmpb	$8, -3292(%ebp)
	jbe	L1503
	cmpb	$9, -3292(%ebp)
	jne	L1032
	cmpw	$255, %ax
	ja	L1437
L1033:
	movzbl	-3350(%ebp), %eax
	addw	-3356(%ebp), %ax
	addb	%al, -3348(%ebp)
	movzbl	-3348(%ebp), %ecx
	cmpb	$0, -3351(%ebp)
	movb	%al, -3350(%ebp)
	movl	-3324(%ebp), %ebx
	cmovne	%ecx, %eax
	movl	-3368(%ebp), %ecx
	movb	%al, (%ecx,%ebx)
L1032:
	addl	$1, -3324(%ebp)
	movl	-3336(%ebp), %ecx
	cmpl	%ecx, -3324(%ebp)
	jnb	L1439
L1026:
	movzbl	-3292(%ebp), %eax
	movl	%eax, -3340(%ebp)
	jmp	L1014
L1502:
	movl	-3340(%ebp), %ecx
	movzwl	%ax, %ebx
	movl	$1, %eax
	subl	$1, %ecx
	sall	%cl, %eax
	cmpl	%ebx, %eax
	je	L1504
L1020:
	movl	$8, %ecx
	movl	%ebx, %eax
	subb	-3292(%ebp), %cl
	sall	%cl, %eax
	movsbl	%al, %eax
	sarl	%cl, %eax
	movl	%eax, -3356(%ebp)
	jmp	L1033
L1503:
	movl	$9, %ecx
	movl	$255, %ebx
	subl	-3340(%ebp), %ecx
	sarl	%cl, %ebx
	movl	%ebx, %ecx
	leal	-4(%ebx), %ebx
	addl	$4, %ecx
	cmpw	%ax, %cx
	jb	L1029
	cmpw	%ax, %bx
	jnb	L1029
	subl	%ebx, %eax
	cmpb	-3292(%ebp), %al
	jb	L1030
L1437:
L1031:
	addl	$1, %eax
	movl	-3344(%ebp), %ebx
	movl	-3336(%ebp), %ecx
	movb	%al, -3292(%ebp)
	cmpl	%ecx, -3324(%ebp)
	jb	L1036
	movl	-3296(%ebp), %esi
L1027:
	movl	-3336(%ebp), %eax
	addl	%eax, -3368(%ebp)
	subl	%eax, %ebx
	subl	%eax, -3332(%ebp)
	jne	L1037
	jmp	L986
	.p2align 4,,10
	.p2align 3
L1030:
	movl	-3336(%ebp), %ebx
	cmpl	%ebx, -3324(%ebp)
	jnb	L1505
	movb	%al, -3292(%ebp)
	jmp	L1026
L1501:
	movl	%edi, %ebx
	movl	$7, %edi
	jmp	L1017
L1504:
	movl	%edi, %eax
	movl	$3, %ebx
	movl	%esi, %edi
	xorl	%esi, %esi
	jmp	L1022
L1024:
	shrdl	$1, %edx, %esi
	subl	$1, %eax
	shrl	%edx
	subl	$1, %ebx
	je	L1506
L1022:
	testl	%eax, %eax
	jne	L1024
	cmpl	$1, (%edi)
	jne	L1426
	movl	8(%edi), %edx
	movl	4(%edx), %eax
	testl	%eax, %eax
	js	L1426
	cmpl	%eax, 8(%edx)
	jle	L1426
	movl	%edi, %eax
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	movzbl	%al, %edx
	shrdl	$1, %eax, %esi
	shrl	%edx
	subl	$1, %ebx
	je	L1507
	movl	$7, %eax
	jmp	L1024
L1506:
	movl	%esi, %ebx
	movl	%edi, %esi
	movl	%eax, %edi
L1023:
	movl	%ebx, %eax
	shrl	$29, %eax
	addl	$1, %eax
	cmpb	-3292(%ebp), %al
	jb	L1030
	addl	$1, %eax
	movl	-3336(%ebp), %ecx
	movb	%al, -3292(%ebp)
	cmpl	%ecx, -3324(%ebp)
	jb	L1026
L1439:
	movl	-3296(%ebp), %esi
	movl	-3344(%ebp), %ebx
	jmp	L1027
L1029:
	cmpb	$7, -3292(%ebp)
	je	L1508
	movb	$8, -3292(%ebp)
	jmp	L1033
L1507:
	movl	%esi, %ebx
	movl	%edi, %esi
	movl	$7, %edi
	jmp	L1023
L1474:
	movl	-3280(%ebp), %eax
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	movl	$16384, %esi
	call	__Z11hio_read16lP10HIO_HANDLE
	xorl	%ecx, %ecx
	movw	%bx, -3350(%ebp)
	xorl	%eax, %eax
	movw	%cx, -3340(%ebp)
	movb	$17, -3292(%ebp)
	jmp	L985
L1499:
	movl	-3280(%ebp), %eax
	xorl	%edi, %edi
	movl	$32768, %ebx
	call	__Z11hio_read16lP10HIO_HANDLE
	movb	$0, -3348(%ebp)
	xorl	%edx, %edx
	movb	$0, -3350(%ebp)
	movb	$9, -3292(%ebp)
	jmp	L1012
L1508:
	movzwl	%ax, %ebx
	jmp	L1020
L1096:
	cmpb	$-128, %al
	ja	L1119
	jmp	L1121
	.p2align 4,,10
	.p2align 3
L1461:
	movl	$0, 12(%esi)
	jmp	L1069
L1505:
	movb	%al, -3292(%ebp)
	movl	-3296(%ebp), %esi
	movl	-3344(%ebp), %ebx
	jmp	L1027
L1497:
	movzwl	-2966(%ebp), %edi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edi, %esi
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1139
	movl	-3284(%ebp), %ecx
	movl	%eax, 1220(%ecx)
	movl	-3280(%ebp), %eax
	cmpl	$1, (%eax)
	jne	L1140
	movl	-3300(%ebp), %eax
	addl	-2964(%ebp), %eax
	js	L1509
	movl	-3280(%ebp), %ebx
	movl	8(%ebx), %edx
	movl	8(%edx), %ecx
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	%ecx, 4(%edx)
	cmpl	$-1, 12(%ebx)
	je	L1510
L1140:
	subl	$1, %edi
	xorl	%ebx, %ebx
	cmpw	$1, %si
	jbe	L1511
	movl	-3284(%ebp), %esi
	jmp	L1145
L1144:
	movl	1220(%esi), %edx
	movb	%al, (%edx,%ebx)
	addl	$1, %ebx
	cmpl	%edi, %ebx
	je	L1146
L1145:
	movl	-3280(%ebp), %ecx
	movl	$46, %eax
	cmpl	$1, (%ecx)
	jne	L1144
	movl	%ecx, %eax
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	movzbl	%al, %edx
	cmpb	$13, %al
	je	L1182
	leal	-32(%edx), %ecx
	cmpl	$95, %ecx
	jbe	L1144
	cmpl	$10, %edx
	je	L1144
	cmpl	$9, %edx
	movl	$46, %eax
	movl	$9, %edx
	cmove	%edx, %eax
	jmp	L1144
L1139:
	movl	%edi, %eax
	call	__Z13handle_memerri
L1511:
	testw	%si, %si
	je	L1138
	xorl	%ebx, %ebx
L1146:
	movl	-3284(%ebp), %eax
	movl	1220(%eax), %eax
	movb	$0, (%eax,%ebx)
	jmp	L1138
L1182:
	movl	$10, %eax
	jmp	L1144
L1510:
	xorl	%edx, %edx
	movl	%edx, 12(%ebx)
	jmp	L1140
L1509:
	movl	-3280(%ebp), %eax
	movl	$22, 12(%eax)
	jmp	L1140
L1488:
	movb	%cl, -3292(%ebp)
	movl	-3348(%ebp), %esi
	movl	%edx, %edi
	jmp	L1000
	.p2align 4,,10
	.p2align 3
L1152:
	movl	-3364(%ebp), %eax
	movb	$14, 3(%ebx)
	leal	(%eax,%edi), %edx
L1101:
	movzbl	(%edx), %eax
	movl	%eax, %edx
	movb	%al, 4(%ebx)
	andl	$15, %eax
	shrb	$4, %dl
L1104:
	cmpb	$15, %dl
	ja	L1119
	movzbl	%dl, %ecx
	jmp	*L1107(,%ecx,4)
	.section .rdata,"dr"
	.align 4
L1107:
	.long	L1119
	.long	L1120
	.long	L1119
	.long	L1118
	.long	L1117
	.long	L1116
	.long	L1115
	.long	L1114
	.long	L1113
	.long	L1112
	.long	L1111
	.long	L1110
	.long	L1109
	.long	L1109
	.long	L1108
	.long	L1106
	.text
L1173:
	movl	$1, %eax
	jmp	L1039
L1098:
	movl	-3364(%ebp), %ecx
	movb	$14, 3(%ebx)
	leal	(%ecx,%edi), %edx
	cmpb	$0, -3344(%ebp)
	jne	L1102
	testb	%al, %al
	je	L1101
	movb	%al, (%edx)
	jmp	L1119
L1102:
	movb	%al, (%edx)
	movzbl	-3348(%ebp), %eax
	movzbl	-3344(%ebp), %edx
	jmp	L1104
L1108:
	movb	$-120, 3(%ebx)
	movl	$-120, %edx
	movb	%al, 4(%ebx)
	jmp	L1121
L1109:
	sall	$4, %edx
	movl	$1, %ecx
	testb	%al, %al
	cmovne	%eax, %ecx
	movl	%edx, %eax
	movl	$14, %edx
	orl	%ecx, %eax
	movb	%al, 4(%ebx)
	jmp	L1121
L1110:
	orl	$96, %eax
	movl	$14, %edx
	movb	%al, 4(%ebx)
	jmp	L1121
L1111:
	movb	$-116, 3(%ebx)
	movl	$-116, %edx
	movb	%al, 4(%ebx)
	jmp	L1121
L1112:
	cmpb	$1, %al
	jbe	L1512
	subl	$14, %eax
	cmpb	$1, %al
	jbe	L1125
	movzbl	4(%ebx), %eax
	movl	$14, %edx
	jmp	L1121
L1113:
	sall	$4, %eax
	movb	$8, 3(%ebx)
	movb	%al, 4(%ebx)
	jmp	L1121
L1114:
	movzbl	4(%ebx), %eax
	movb	$-125, 3(%ebx)
	movl	$-125, %edx
	andl	$15, %eax
	movb	%al, 4(%ebx)
	jmp	L1121
L1117:
	orl	$112, %eax
	movl	$14, %edx
	movb	%al, 4(%ebx)
	jmp	L1121
L1118:
	orl	$64, %eax
	movl	$14, %edx
	movb	%al, 4(%ebx)
	jmp	L1121
L1120:
	orl	$48, %eax
	movl	$14, %edx
	movb	%al, 4(%ebx)
	jmp	L1121
L1106:
	movb	$-67, 3(%ebx)
	movl	$-67, %edx
	movb	%al, 4(%ebx)
	jmp	L1121
L1115:
	orl	$-32, %eax
	movl	$14, %edx
	movb	%al, 4(%ebx)
	jmp	L1121
L1116:
	cmpb	$3, %al
	ja	L1119
	movb	$-117, 3(%ebx)
	movl	$-117, %edx
	movb	%al, 4(%ebx)
	jmp	L1121
L1125:
	movb	$-113, 3(%ebx)
	movl	$-113, %edx
	movb	%al, 4(%ebx)
	jmp	L1121
L1512:
	movb	$-115, 3(%ebx)
	movl	$-115, %edx
	movb	%al, 4(%ebx)
	jmp	L1121
	.cfi_endproc
LFE92:
	.p2align 4
	.globl	__ZL8mod_testP10HIO_HANDLEPci.lto_priv.0
	.def	__ZL8mod_testP10HIO_HANDLEPci.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL8mod_testP10HIO_HANDLEPci.lto_priv.0:
LFB116:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$8, %esp
	.cfi_def_cfa_offset 20
	movl	20(%esp), %ebx
	movl	28(%esp), %esi
	cmpl	$1, (%ebx)
	jne	L1520
	movl	%esi, %edx
	addl	$1080, %edx
	js	L1516
	movl	8(%ebx), %ecx
	movl	8(%ecx), %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	%eax, 4(%ecx)
	cmpl	$-1, 12(%ebx)
	je	L1529
L1518:
	cmpl	$1, (%ebx)
	je	L1519
L1520:
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	$-1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L1516:
	.cfi_restore_state
	movl	$22, 12(%ebx)
L1519:
	movl	%ebx, (%esp)
	leal	4(%esp), %eax
	movl	$4, %ecx
	movl	$1, %edx
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	cmpl	$3, %eax
	jbe	L1520
	cmpb	$67, 6(%esp)
	jne	L1522
	cmpb	$72, 7(%esp)
	jne	L1522
	movzbl	4(%esp), %eax
	subl	$48, %eax
	cmpl	$9, %eax
	ja	L1523
	movzbl	5(%esp), %edx
	leal	-48(%edx), %ecx
	cmpl	$9, %ecx
	jbe	L1530
	.p2align 4
	.p2align 3
L1522:
	cmpb	$67, 5(%esp)
	jne	L1523
	cmpb	$72, 6(%esp)
	je	L1531
	.p2align 4
	.p2align 3
L1523:
	cmpl	$776678989, 4(%esp)
	jne	L1520
L1524:
	cmpl	$1, (%ebx)
	jne	L1526
	testl	%esi, %esi
	js	L1532
	movl	8(%ebx), %edx
	movl	8(%edx), %eax
	cmpl	%esi, %eax
	cmovg	%esi, %eax
	movl	%eax, 4(%edx)
	cmpl	$-1, 12(%ebx)
	je	L1533
L1526:
	movl	24(%esp), %edx
	movl	%ebx, %eax
	movl	$20, %ecx
	call	__Z17libxmp_read_titleP10HIO_HANDLEPci
	addl	$8, %esp
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
L1532:
	.cfi_restore_state
	movl	$22, 12(%ebx)
	jmp	L1526
	.p2align 4,,10
	.p2align 3
L1531:
	cmpb	$78, 7(%esp)
	jne	L1523
	movzbl	4(%esp), %eax
	subl	$49, %eax
	cmpb	$8, %al
	ja	L1523
	jmp	L1524
	.p2align 4,,10
	.p2align 3
L1530:
	leal	(%eax,%eax,4), %eax
	leal	-49(%edx,%eax,2), %eax
	cmpl	$31, %eax
	ja	L1522
	jmp	L1524
	.p2align 4,,10
	.p2align 3
L1529:
	movl	$0, 12(%ebx)
	jmp	L1518
	.p2align 4,,10
	.p2align 3
L1533:
	movl	$0, 12(%ebx)
	jmp	L1526
	.cfi_endproc
LFE116:
	.section .rdata,"dr"
LC13:
	.ascii "Protracker\0"
LC14:
	.ascii "Fasttracker\0"
LC16:
	.ascii "CH\0"
LC17:
	.ascii "CHN\0"
	.text
	.p2align 4
	.globl	__ZL8mod_loadP11module_dataP10HIO_HANDLEi.lto_priv.0
	.def	__ZL8mod_loadP11module_dataP10HIO_HANDLEi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL8mod_loadP11module_dataP10HIO_HANDLEi.lto_priv.0:
LFB117:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-8, %esp
	xorl	%eax, %eax
	movl	$31, %edx
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
	subl	$1156, %esp
	movl	(%ecx), %esi
	movl	4(%ecx), %edi
	orl	$4, 1292(%esi)
	movl	$31, 144(%esi)
	movl	%eax, 136(%esi)
	movl	%edx, 140(%esi)
	movl	$1, 1300(%esi)
	movl	(%edi), %eax
	cmpl	$1, %eax
	je	L1648
L1535:
	leal	-1080(%ebp), %ebx
	movl	%ebx, -1120(%ebp)
	jmp	L1547
L1541:
	movl	%edi, %eax
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	movl	%eax, %edx
	movl	(%edi), %eax
	movb	%dl, 25(%ebx)
	cmpl	$1, %eax
	jne	L1542
	movl	%edi, %eax
	call	__Z11hio_read16bP10HIO_HANDLE.part.0
	movl	%eax, %edx
	movl	(%edi), %eax
	movw	%dx, 26(%ebx)
	cmpl	$1, %eax
	jne	L1544
	movl	%edi, %eax
	addl	$30, %ebx
	call	__Z11hio_read16bP10HIO_HANDLE.part.0
	movl	%eax, %edx
	movl	(%edi), %eax
	movw	%dx, -2(%ebx)
	leal	-150(%ebp), %edx
	cmpl	%ebx, %edx
	je	L1546
L1547:
	cmpl	$1, %eax
	jne	L1647
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$22, %edx
	movl	%ebx, %eax
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	movl	(%edi), %eax
	cmpl	$1, %eax
	jne	L1647
	movl	%edi, %eax
	call	__Z11hio_read16bP10HIO_HANDLE.part.0
	movl	%eax, %edx
	movl	(%edi), %eax
	movw	%dx, 22(%ebx)
	cmpl	$1, %eax
	jne	L1537
	movl	%edi, %eax
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	movl	%eax, %edx
	movl	(%edi), %eax
	movb	%dl, 24(%ebx)
	cmpl	$1, %eax
	je	L1541
	jmp	L1540
	.p2align 4,,10
	.p2align 3
L1647:
	xorl	%edx, %edx
	movw	%dx, 22(%ebx)
L1537:
	movb	$0, 24(%ebx)
L1540:
	movb	$0, 25(%ebx)
L1542:
	xorl	%edx, %edx
	movw	%dx, 26(%ebx)
L1544:
	xorl	%ecx, %ecx
	addl	$30, %ebx
	leal	-150(%ebp), %edx
	movw	%cx, -2(%ebx)
	cmpl	%ebx, %edx
	jne	L1647
L1546:
	cmpl	$1, %eax
	je	L1548
	movb	$0, -150(%ebp)
L1549:
	movb	$0, -149(%ebp)
L1551:
	movl	$0, -1108(%ebp)
	leal	-1108(%ebp), %eax
	movl	$0, -1104(%ebp)
	cmpl	$1, (%edi)
	je	L1649
L1552:
	movl	12(%edi), %eax
	movl	$0, 12(%edi)
	testl	%eax, %eax
	jne	L1553
	movl	136(%esi), %eax
	testl	%eax, %eax
	jne	L1554
	cmpl	$776678989, -1108(%ebp)
	je	L1650
	cmpw	$18499, -1106(%ebp)
	je	L1651
	cmpw	$18499, -1107(%ebp)
	je	L1652
L1553:
	movl	$-1, %eax
L1641:
	leal	-16(%ebp), %esp
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
L1652:
	.cfi_restore_state
	cmpb	$78, -1105(%ebp)
	jne	L1553
	movzbl	-1108(%ebp), %eax
	leal	-48(%eax), %edx
	cmpl	$9, %edx
	ja	L1553
L1605:
	subl	$48, %eax
	movl	%eax, 136(%esi)
L1554:
	leal	-1100(%ebp), %eax
	movl	$20, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	_strncpy
	movzbl	-150(%ebp), %eax
	movl	%eax, 156(%esi)
	cmpl	160(%esi), %eax
	jle	L1653
L1564:
	movl	-36(%ebp), %eax
	movl	%eax, 1064(%esi)
	movl	-32(%ebp), %eax
	movl	%eax, 1068(%esi)
	movl	-28(%ebp), %eax
	movl	%eax, 1072(%esi)
	movl	-24(%ebp), %eax
	movl	%eax, 1076(%esi)
	xorl	%eax, %eax
L1565:
	movl	-136(%ebp,%eax), %edx
	movl	-144(%ebp,%eax), %ebx
	movl	-140(%ebp,%eax), %ecx
	movl	%edx, -1124(%ebp)
	movl	-148(%ebp,%eax), %edx
	movl	%ebx, 956(%esi,%eax)
	movl	%edx, 952(%esi,%eax)
	movl	%ecx, 960(%esi,%eax)
	movl	-1124(%ebp), %ebx
	movl	%ebx, 964(%esi,%eax)
	addl	$16, %eax
	cmpl	$112, %eax
	jb	L1565
	leal	952(%esi), %edx
	leal	1080(%esi), %ecx
	jmp	L1569
	.p2align 4,,10
	.p2align 3
L1654:
	cmpl	128(%esi), %eax
	jle	L1568
	movl	%eax, 128(%esi)
L1568:
	addl	$1, %edx
	cmpl	%edx, %ecx
	je	L1567
L1569:
	movzbl	(%edx), %eax
	testb	%al, %al
	jns	L1654
L1567:
	addl	$1, 128(%esi)
	movl	%esi, %eax
	call	__Z22libxmp_init_instrumentP11module_data
	cmpl	$-1, %eax
	je	L1641
	movl	140(%esi), %eax
	testl	%eax, %eax
	jle	L1570
	movl	-1120(%ebp), %ebx
	movl	%esi, -1124(%ebp)
	movl	$0, -1120(%ebp)
	movl	%edi, -1136(%ebp)
L1573:
	movl	-1124(%ebp), %esi
	movl	-1120(%ebp), %edx
	movl	$1, %ecx
	movl	%esi, %eax
	call	__Z26libxmp_alloc_subinstrumentP10xmp_moduleii.part.0
	cmpl	$-1, %eax
	je	L1641
	imull	$764, -1120(%ebp), %edi
	movzwl	22(%ebx), %eax
	addl	%eax, %eax
	movl	%edi, -1128(%ebp)
	addl	176(%esi), %edi
	movl	%edi, -1132(%ebp)
	movl	756(%edi), %ecx
	imull	$52, -1120(%ebp), %edi
	addl	180(%esi), %edi
	movl	%eax, 32(%edi)
	movzwl	26(%ebx), %edx
	leal	(%edx,%edx), %esi
	movl	%esi, 36(%edi)
	movzwl	28(%ebx), %edx
	leal	(%esi,%edx,2), %edx
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	xorl	%eax, %eax
	movl	%edx, 40(%edi)
	cmpw	$1, 28(%ebx)
	jbe	L1571
	xorl	%eax, %eax
	cmpl	$3, %edx
	setg	%al
	addl	%eax, %eax
L1571:
	movl	%eax, 44(%edi)
	movzbl	24(%ebx), %eax
	movl	-1124(%ebp), %edx
	sall	$4, %eax
	movsbl	%al, %eax
	movl	%eax, 16(%ecx)
	movsbl	25(%ebx), %eax
	movl	$128, 8(%ecx)
	movl	%eax, (%ecx)
	movl	-1120(%ebp), %eax
	movl	%eax, 40(%ecx)
	movl	-1128(%ebp), %eax
	movl	$22, %ecx
	addl	176(%edx), %eax
	movl	%ebx, %edx
	call	__Z18libxmp_copy_adjustPcPhi.isra.0
	movl	32(%edi), %esi
	testl	%esi, %esi
	jle	L1572
	movl	-1132(%ebp), %eax
	movl	$1, 36(%eax)
L1572:
	movl	-1124(%ebp), %eax
	addl	$1, -1120(%ebp)
	addl	$30, %ebx
	movl	-1120(%ebp), %esi
	cmpl	%esi, 140(%eax)
	jg	L1573
	movl	-1136(%ebp), %edi
	movl	%eax, %esi
L1570:
	movl	136(%esi), %eax
	cmpl	$63, %eax
	jg	L1553
	imull	128(%esi), %eax
	movl	%eax, 132(%esi)
	movl	%esi, %eax
	call	__Z19libxmp_init_patternP10xmp_module
	movl	136(%esi), %ebx
	sall	$8, %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1574
	movl	128(%esi), %ebx
	testl	%ebx, %ebx
	jle	L1576
	movl	%edi, -1152(%ebp)
	movl	%esi, %ebx
	xorl	%esi, %esi
	movl	%eax, -1148(%ebp)
L1575:
	movl	%esi, %edx
	movl	%ebx, %eax
	call	__Z20libxmp_alloc_patternP10xmp_modulei
	cmpl	$-1, %eax
	je	L1579
	leal	0(,%esi,4), %eax
	movl	%esi, %edx
	movl	%eax, -1140(%ebp)
	movl	168(%ebx), %eax
	movl	(%eax,%esi,4), %eax
	movl	$64, (%eax)
	movl	%ebx, %eax
	call	__Z30libxmp_alloc_tracks_in_patternP10xmp_modulei
	cmpl	$-1, %eax
	je	L1579
	movl	-1152(%ebp), %eax
	cmpl	$1, (%eax)
	je	L1655
L1579:
	movl	-1148(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L1553
L1653:
	movl	$0, 160(%esi)
	jmp	L1564
L1650:
	movl	$4, 136(%esi)
	jmp	L1554
L1651:
	movzbl	-1108(%ebp), %eax
	leal	-48(%eax), %edx
	cmpl	$9, %edx
	ja	L1553
	movzbl	-1107(%ebp), %ecx
	leal	-48(%ecx), %ebx
	cmpl	$9, %ebx
	ja	L1559
	leal	(%edx,%edx,4), %eax
	leal	-48(%ecx,%eax,2), %eax
	movl	%eax, 136(%esi)
	jmp	L1554
L1648:
	movl	%edi, (%esp)
	leal	-1100(%ebp), %eax
	movl	$1, %ecx
	movl	$20, %edx
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	movl	(%edi), %eax
	jmp	L1535
L1649:
	movl	%edi, (%esp)
	movl	$4, %ecx
	movl	$1, %edx
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	jmp	L1552
L1548:
	movl	%edi, %eax
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	movb	%al, -150(%ebp)
	cmpl	$1, (%edi)
	jne	L1549
	movl	%edi, %eax
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	movb	%al, -149(%ebp)
	cmpl	$1, (%edi)
	jne	L1551
	movl	%edi, (%esp)
	leal	-148(%ebp), %eax
	movl	$1, %ecx
	movl	$128, %edx
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	jmp	L1551
L1655:
	movl	-1152(%ebp), %eax
	movl	136(%ebx), %edx
	movl	$1, %ecx
	movl	%eax, (%esp)
	movl	-1148(%ebp), %eax
	sall	$8, %edx
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	testl	%eax, %eax
	je	L1579
	movl	%esi, -1156(%ebp)
	movl	-1148(%ebp), %edi
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L1580:
	leal	0(,%eax,8), %esi
	movl	%esi, -1128(%ebp)
	addl	$4, %esi
	movl	%esi, -1136(%ebp)
	movl	136(%ebx), %esi
	testl	%esi, %esi
	jle	L1597
	movl	%ebx, %esi
	movl	%eax, -1144(%ebp)
	xorl	%ebx, %ebx
	jmp	L1594
	.p2align 4,,10
	.p2align 3
L1659:
	cmpb	$6, %cl
	je	L1588
	ja	L1589
	cmpb	$2, %cl
	jbe	L1656
	cmpb	$5, %cl
	jne	L1592
	movb	$3, 7(%eax)
	.p2align 4
	.p2align 3
L1592:
	addl	$4, %edi
	addl	$1, %ebx
	cmpl	%ebx, 136(%esi)
	jle	L1657
L1594:
	movl	168(%esi), %eax
	movl	-1140(%ebp), %edx
	movl	(%eax,%edx), %eax
	movl	4(%eax,%ebx,4), %edx
	movl	172(%esi), %eax
	movl	(%eax,%edx,4), %ecx
	movzbl	2(%edi), %eax
	xorl	%edx, %edx
	andl	$15, %eax
	movl	%ecx, -1124(%ebp)
	movb	%al, -1120(%ebp)
	movl	-1136(%ebp), %eax
	movl	$0, (%ecx,%eax)
	movl	$0, 4(%ecx,%eax)
	movzbl	(%edi), %eax
	movzbl	1(%edi), %ecx
	sall	$8, %eax
	andl	$3840, %eax
	addl	%ecx, %eax
	je	L1581
	movl	%eax, -1132(%ebp)
	fildl	-1132(%ebp)
	fdivrs	LC18
	fstpl	(%esp)
	call	_log
	fmuls	LC19
	fdivl	LC12
	fldz
	fxch	%st(1)
	fcomi	%st(1), %st
	fstp	%st(1)
	jb	L1640
	fnstcw	-1110(%ebp)
	fadds	LC21
	movzwl	-1110(%ebp), %eax
	orb	$12, %ah
	movw	%ax, -1112(%ebp)
	fldcw	-1112(%ebp)
	frndint
	fldcw	-1110(%ebp)
L1584:
	faddl	LC22
	fldcw	-1112(%ebp)
	fistpl	-1132(%ebp)
	fldcw	-1110(%ebp)
	movl	-1132(%ebp), %edx
L1581:
	movl	-1124(%ebp), %eax
	addl	-1128(%ebp), %eax
	movb	%dl, 4(%eax)
	movzbl	(%edi), %edx
	movzbl	2(%edi), %ecx
	andl	$-16, %edx
	shrb	$4, %cl
	orl	%ecx, %edx
	movb	%dl, 5(%eax)
	cmpb	$8, -1120(%ebp)
	je	L1658
	movzbl	-1120(%ebp), %ecx
	movb	%cl, 7(%eax)
	movzbl	3(%edi), %edx
	movb	%dl, 8(%eax)
L1586:
	movzbl	7(%eax), %ecx
	testb	%dl, %dl
	je	L1659
	cmpb	$14, %cl
	jne	L1592
	andl	$-17, %edx
	cmpb	$-96, %dl
	jne	L1592
	movl	-1124(%ebp), %eax
	xorl	%ecx, %ecx
	addl	$4, %edi
	addl	$1, %ebx
	movl	-1128(%ebp), %edx
	movw	%cx, 7(%eax,%edx)
	cmpl	%ebx, 136(%esi)
	jg	L1594
	.p2align 4
	.p2align 3
L1657:
	movl	-1144(%ebp), %eax
	movl	%esi, %ebx
L1597:
	addl	$1, %eax
	cmpl	$64, %eax
	jne	L1580
	movl	-1156(%ebp), %esi
	addl	$1, %esi
	cmpl	%esi, 128(%ebx)
	jg	L1575
	movl	-1152(%ebp), %edi
	movl	-1148(%ebp), %eax
	movl	%ebx, %esi
L1576:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	$LC13, %edx
	movl	$LC14, %eax
	subl	$4, %esp
	cmpl	$4, 136(%esi)
	cmove	%edx, %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z15libxmp_set_typeP11module_dataPKcz
	movl	144(%esi), %ecx
	testl	%ecx, %ecx
	jle	L1599
	movl	$0, -1120(%ebp)
	movl	%edi, %ebx
	movl	%esi, %edi
	xorl	%esi, %esi
L1601:
	movl	180(%edi), %eax
	addl	%esi, %eax
	movl	32(%eax), %edx
	testl	%edx, %edx
	je	L1600
	movl	%eax, (%esp)
	xorl	%ecx, %ecx
	movl	%ebx, %edx
	movl	%edi, %eax
	movl	$0, 4(%esp)
	call	__Z18libxmp_load_sampleP11module_dataP10HIO_HANDLEiP10xmp_samplePKv
L1600:
	addl	$1, -1120(%ebp)
	addl	$52, %esi
	movl	-1120(%ebp), %eax
	cmpl	%eax, 144(%edi)
	jg	L1601
	movl	%edi, %esi
L1599:
	cmpl	$4, 136(%esi)
	jle	L1602
	movl	$1, 1296(%esi)
	movl	1292(%esi), %eax
	movl	$0, 1300(%esi)
	andl	$-5, %eax
	orl	$33558560, %eax
	movl	%eax, 1292(%esi)
L1602:
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
	.p2align 4,,10
	.p2align 3
L1658:
	.cfi_restore_state
	movzbl	8(%eax), %edx
	jmp	L1586
	.p2align 4,,10
	.p2align 3
L1640:
	fnstcw	-1110(%ebp)
	fsubs	LC21
	movzwl	-1110(%ebp), %eax
	andb	$-13, %ah
	orb	$8, %ah
	movw	%ax, -1114(%ebp)
	movzwl	-1110(%ebp), %eax
	fldcw	-1114(%ebp)
	frndint
	fldcw	-1110(%ebp)
	orb	$12, %ah
	movw	%ax, -1112(%ebp)
	jmp	L1584
	.p2align 4,,10
	.p2align 3
L1589:
	cmpb	$10, %cl
	jne	L1592
L1591:
	movb	$0, 7(%eax)
	jmp	L1592
	.p2align 4,,10
	.p2align 3
L1588:
	movb	$4, 7(%eax)
	jmp	L1592
	.p2align 4,,10
	.p2align 3
L1656:
	testb	%cl, %cl
	jne	L1591
	jmp	L1592
L1559:
	cmpw	$18499, -1107(%ebp)
	jne	L1553
	cmpb	$78, -1105(%ebp)
	jne	L1553
	jmp	L1605
L1574:
	movl	%ebx, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE117:
	.section .rdata,"dr"
LC24:
	.ascii "Scream Tracker 3\0"
	.text
	.p2align 4
	.globl	__ZL8s3m_loadP11module_dataP10HIO_HANDLEi.lto_priv.0
	.def	__ZL8s3m_loadP11module_dataP10HIO_HANDLEi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL8s3m_loadP11module_dataP10HIO_HANDLEi.lto_priv.0:
LFB128:
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
	subl	$380, %esp
	movl	8(%ecx), %eax
	movl	4(%ecx), %esi
	movl	(%ecx), %edi
	movl	%eax, -356(%ebp)
	cmpl	$1, (%esi)
	je	L1832
L1661:
	movl	$-1, %eax
L1746:
L1824:
	leal	-16(%ebp), %esp
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
L1832:
	.cfi_restore_state
	movl	%esi, (%esp)
	movl	$96, %ecx
	movl	$1, %edx
	leal	-208(%ebp), %eax
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	cmpl	$96, %eax
	jne	L1661
	movl	-208(%ebp), %eax
	movlps	-176(%ebp), %xmm0
	movl	%eax, -112(%ebp)
	movl	-204(%ebp), %eax
	movlps	%xmm0, -336(%ebp)
	movl	%eax, -108(%ebp)
	movl	-200(%ebp), %eax
	movlps	%xmm0, -80(%ebp)
	movl	%eax, -104(%ebp)
	movl	-196(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	-192(%ebp), %eax
	movl	%eax, -96(%ebp)
	movl	-188(%ebp), %eax
	movl	%eax, -92(%ebp)
	movl	-184(%ebp), %eax
	movl	%eax, -88(%ebp)
	movzbl	-178(%ebp), %eax
	movb	%al, -83(%ebp)
	movl	-168(%ebp), %eax
	movl	%eax, -72(%ebp)
	movzwl	-174(%ebp), %eax
	orw	-176(%ebp), %ax
	orw	-172(%ebp), %ax
	cmpw	$255, %ax
	movzwl	-166(%ebp), %eax
	seta	%bl
	subl	$1, %eax
	cmpw	$1, %ax
	seta	%al
	orb	%al, %bl
	movb	%bl, -344(%ebp)
	jne	L1661
	movl	-164(%ebp), %eax
	movl	-154(%ebp), %ecx
	movl	-150(%ebp), %ebx
	movl	%eax, %edx
	movl	%ecx, -58(%ebp)
	bswap	%edx
	movl	%edx, -68(%ebp)
	movl	-160(%ebp), %edx
	movl	%ebx, -54(%ebp)
	movl	%edx, -64(%ebp)
	movzwl	-156(%ebp), %edx
	movw	%dx, -60(%ebp)
	movzwl	-146(%ebp), %edx
	movw	%dx, -50(%ebp)
	movl	-144(%ebp), %edx
	movl	%edx, -48(%ebp)
	movl	-140(%ebp), %edx
	movl	%edx, -44(%ebp)
	movl	-136(%ebp), %edx
	movl	%edx, -40(%ebp)
	movl	-132(%ebp), %edx
	movl	%edx, -36(%ebp)
	movl	-128(%ebp), %edx
	movl	%edx, -32(%ebp)
	movl	-124(%ebp), %edx
	movl	%edx, -28(%ebp)
	movl	-120(%ebp), %edx
	movl	%edx, -24(%ebp)
	movl	-116(%ebp), %edx
	movl	%edx, -20(%ebp)
	cmpl	$1297236819, %eax
	jne	L1661
	leal	-112(%ebp), %edx
	movl	$28, %ecx
	movl	%edi, %eax
	call	__Z18libxmp_copy_adjustPcPhi.isra.0
	movlps	-336(%ebp), %xmm0
	movlps	%xmm0, -304(%ebp)
	movzwl	-302(%ebp), %eax
	leal	(%eax,%eax), %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -360(%ebp)
	testl	%eax, %eax
	je	L1662
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movzwl	-76(%ebp), %eax
	leal	(%eax,%eax), %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -352(%ebp)
	testl	%eax, %eax
	je	L1662
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movzwl	-74(%ebp), %eax
	testb	$16, %al
	je	L1664
	movl	$1, 1300(%edi)
L1664:
	testb	$64, %al
	je	L1665
	orl	$64, 1292(%edi)
L1665:
	movzbl	-63(%ebp), %eax
	movzbl	-61(%ebp), %edx
	movl	$0, 136(%edi)
	movl	$48, 1280(%edi)
	movl	%eax, 148(%edi)
	movzbl	-62(%ebp), %eax
	movl	%eax, 152(%edi)
	cmpw	$1, -70(%ebp)
	je	L1833
	cmpb	$2, %dl
	je	L1747
	cmpb	$18, %dl
	je	L1834
	movl	%edx, %ecx
	movl	%edx, %ebx
	movl	$48, %eax
	andl	$128, %ecx
	andl	$127, %ebx
	jne	L1835
L1667:
	movl	%eax, 1284(%edi)
	testl	%ecx, %ecx
	je	L1836
L1671:
	movb	$1, -344(%ebp)
L1670:
	movl	%esi, -336(%ebp)
	xorl	%eax, %eax
	leal	-48(%ebp), %ecx
	movzbl	-344(%ebp), %esi
	jmp	L1675
	.p2align 4,,10
	.p2align 3
L1838:
	andl	$24, %edx
	leal	(%eax,%eax,2), %ebx
	cmpb	$1, %dl
	sbbl	%edx, %edx
	andb	$112, %dl
	addl	$192, %edx
	movl	%edx, 172(%edi,%ebx,4)
L1672:
	cmpl	$32, %eax
	je	L1837
L1675:
	movzbl	(%ecx,%eax), %edx
	addl	$1, %eax
	cmpb	$-1, %dl
	je	L1672
	movl	%eax, 136(%edi)
	testb	$16, %dl
	jne	L1673
	movl	%esi, %ebx
	testb	%bl, %bl
	jne	L1838
L1673:
	leal	(%eax,%eax,2), %edx
	movl	$128, 172(%edi,%edx,4)
	cmpl	$32, %eax
	jne	L1675
L1837:
	movzwl	-80(%ebp), %edx
	movl	-336(%ebp), %esi
	leal	952(%edi), %ebx
	cmpw	$256, %dx
	ja	L1676
	movzwl	%dx, %ecx
	xorl	%eax, %eax
	movl	%ecx, 156(%edi)
	cmpl	$1, (%esi)
	je	L1839
L1677:
	cmpl	%ecx, %eax
	jne	L1678
L1679:
	testl	%ecx, %ecx
	jle	L1840
	movl	$-1, 128(%edi)
	leal	(%ebx,%ecx), %edx
	.p2align 4
	.p2align 3
L1684:
	movzbl	(%ebx), %eax
	cmpb	$-3, %al
	ja	L1683
	cmpl	128(%edi), %eax
	jle	L1683
	movl	%eax, 128(%edi)
L1683:
	addl	$1, %ebx
	cmpl	%ebx, %edx
	jne	L1684
	movl	128(%edi), %eax
	movzwl	-76(%ebp), %edx
	addl	$1, %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	%eax, 128(%edi)
	testl	%eax, %eax
	je	L1678
	imull	136(%edi), %eax
	movzwl	-78(%ebp), %edx
	movl	%edx, 140(%edi)
	movl	%eax, 132(%edi)
	movl	%edx, 144(%edi)
	testw	%dx, %dx
	je	L1685
	movl	-360(%ebp), %ebx
	movl	%edi, -336(%ebp)
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L1686:
	movl	%esi, %eax
	call	__Z11hio_read16lP10HIO_HANDLE
	movw	%ax, (%ebx,%edi,2)
	movzwl	-78(%ebp), %eax
	addl	$1, %edi
	cmpl	%edi, %eax
	jg	L1686
	movl	-336(%ebp), %edi
L1685:
	cmpw	$0, -76(%ebp)
	je	L1687
	movl	-352(%ebp), %ebx
	movl	%edi, -336(%ebp)
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L1688:
	movl	%esi, %eax
	call	__Z11hio_read16lP10HIO_HANDLE
	movw	%ax, (%ebx,%edi,2)
	movzwl	-76(%ebp), %eax
	addl	$1, %edi
	cmpl	%edi, %eax
	jg	L1688
	movl	-336(%ebp), %edi
L1687:
	addb	$4, -59(%ebp)
	jne	L1689
	movl	%edi, -336(%ebp)
	leal	184(%edi), %ebx
	addl	$568, %edi
	jmp	L1691
	.p2align 4,,10
	.p2align 3
L1690:
	cmpb	$0, -59(%ebp)
	jne	L1825
L1841:
	addl	$12, %ebx
	cmpl	%ebx, %edi
	je	L1825
L1691:
	cmpl	$1, (%esi)
	jne	L1690
	movl	%esi, %eax
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	testb	$32, %al
	je	L1690
	sall	$4, %eax
	andl	$240, %eax
	movl	%eax, (%ebx)
	cmpb	$0, -59(%ebp)
	je	L1841
L1825:
	movl	-336(%ebp), %edi
L1689:
	movl	$8363, 1264(%edi)
	cmpw	$4864, -72(%ebp)
	jne	L1692
	orl	$64, 1292(%edi)
L1692:
	movl	$LC24, 4(%esp)
	movl	%edi, (%esp)
	call	__Z15libxmp_set_typeP11module_dataPKcz
	orl	$16, 1292(%edi)
	movl	%edi, %eax
	call	__Z19libxmp_init_patternP10xmp_module
	movl	128(%edi), %ecx
	testl	%ecx, %ecx
	jle	L1693
	xorl	%ebx, %ebx
	jmp	L1730
	.p2align 4,,10
	.p2align 3
L1694:
	addl	$1, %ebx
	cmpl	%ebx, 128(%edi)
	jle	L1693
L1730:
	movl	%ebx, %edx
	movl	%edi, %eax
	call	__Z20libxmp_alloc_patternP10xmp_modulei
	cmpl	$-1, %eax
	je	L1678
	leal	0(,%ebx,4), %eax
	movl	%ebx, %edx
	movl	%eax, -344(%ebp)
	movl	168(%edi), %eax
	movl	(%eax,%ebx,4), %eax
	movl	$64, (%eax)
	movl	%edi, %eax
	call	__Z30libxmp_alloc_tracks_in_patternP10xmp_modulei
	cmpl	$-1, %eax
	je	L1678
	movl	-352(%ebp), %eax
	movzwl	(%eax,%ebx,2), %eax
	testw	%ax, %ax
	je	L1694
	cmpl	$1, (%esi)
	jne	L1695
	sall	$4, %eax
	addl	-356(%ebp), %eax
	js	L1842
	movl	8(%esi), %ecx
	movl	8(%ecx), %edx
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	movl	%edx, 4(%ecx)
	cmpl	$-1, 12(%esi)
	je	L1843
L1695:
	movl	%esi, %eax
	call	__Z11hio_read16lP10HIO_HANDLE
	xorl	%ecx, %ecx
	movzwl	%ax, %eax
	subl	$2, %eax
	movl	%eax, -348(%ebp)
	js	L1694
	movl	%ebx, -364(%ebp)
	.p2align 4
	.p2align 3
L1697:
	movl	168(%edi), %eax
	movl	-344(%ebp), %ebx
	movl	(%eax,%ebx), %eax
	cmpl	%ecx, (%eax)
	jle	L1827
	cmpl	$1, (%esi)
	je	L1698
	movl	12(%esi), %eax
	movl	$0, 12(%esi)
	testl	%eax, %eax
	jne	L1678
L1699:
	addl	$1, %ecx
	jmp	L1697
	.p2align 4,,10
	.p2align 3
L1698:
	movl	%esi, %eax
	movl	%ecx, -336(%ebp)
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	movl	%eax, %ebx
	movl	12(%esi), %eax
	movl	$0, 12(%esi)
	testl	%eax, %eax
	jne	L1678
	testb	%bl, %bl
	movl	-336(%ebp), %ecx
	je	L1699
	movl	%ebx, %eax
	leal	-296(%ebp), %edx
	andl	$31, %eax
	movl	%edx, -336(%ebp)
	movl	%eax, -328(%ebp)
	cmpl	%eax, 136(%edi)
	jle	L1702
	movl	-344(%ebp), %eax
	movl	168(%edi), %edx
	movl	(%edx,%eax), %edx
	movl	-328(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	172(%edi), %eax
	movl	(%eax,%edx,4), %eax
	leal	4(%eax,%ecx,8), %eax
	movl	%eax, -336(%ebp)
L1702:
	testb	$32, %bl
	jne	L1703
	testb	$64, %bl
	jne	L1704
	testb	%bl, %bl
	jns	L1697
	cmpl	$1, (%esi)
	je	L1711
L1851:
	movl	-336(%ebp), %eax
	movb	$0, 3(%eax)
	cmpl	$1, (%esi)
	je	L1712
	movl	$255, %edx
	movw	%dx, 3(%eax)
L1713:
	movl	-336(%ebp), %eax
	xorl	%ebx, %ebx
	movw	%bx, 3(%eax)
	.p2align 4
	.p2align 3
L1716:
	subl	$2, -348(%ebp)
L1710:
	movl	-348(%ebp), %edx
	testl	%edx, %edx
	jns	L1697
L1827:
	movl	-364(%ebp), %ebx
	addl	$1, %ebx
	cmpl	%ebx, 128(%edi)
	jg	L1730
L1693:
	movl	%edi, %eax
	call	__Z22libxmp_init_instrumentP11module_data
	cmpl	$-1, %eax
	je	L1678
	movl	140(%edi), %eax
	testl	%eax, %eax
	jle	L1731
	movl	$0, -336(%ebp)
	movl	%edi, -348(%ebp)
	movl	%esi, %edi
L1745:
	movl	-348(%ebp), %eax
	movl	176(%eax), %ebx
	movl	180(%eax), %eax
	movl	%eax, -368(%ebp)
	movl	$64, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1732
	imull	$764, -336(%ebp), %eax
	movl	%eax, -372(%ebp)
	addl	%ebx, %eax
	movl	%eax, -364(%ebp)
	xorl	%eax, %eax
	movl	$0, 48(%esi)
	movl	$0, 52(%esi)
	movl	$0, 56(%esi)
	movl	$0, 60(%esi)
L1733:
	movl	$0, (%esi,%eax)
	movl	$0, 4(%esi,%eax)
	movl	$0, 8(%esi,%eax)
	movl	$0, 12(%esi,%eax)
	addl	$16, %eax
	cmpl	$48, %eax
	jb	L1733
	movl	-364(%ebp), %eax
	movl	%esi, 756(%eax)
	cmpl	$1, (%edi)
	jne	L1735
	movl	-360(%ebp), %eax
	movl	-336(%ebp), %ecx
	movzwl	(%eax,%ecx,2), %eax
	sall	$4, %eax
	addl	-356(%ebp), %eax
	js	L1844
	movl	8(%edi), %ecx
	movl	8(%ecx), %edx
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	movl	%edx, 4(%ecx)
	cmpl	$-1, 12(%edi)
	je	L1845
L1735:
	movl	-336(%ebp), %eax
	movl	$128, 8(%esi)
	movl	%eax, 40(%esi)
	cmpl	$1, (%edi)
	jne	L1678
	movl	%edi, (%esp)
	movl	$80, %ecx
	movl	$1, %edx
	leal	-208(%ebp), %eax
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	cmpl	$80, %eax
	jne	L1678
	movzbl	-208(%ebp), %eax
	cmpb	$1, %al
	ja	L1678
	movl	-207(%ebp), %edx
	movl	-192(%ebp), %ecx
	movl	%edx, -288(%ebp)
	movl	-203(%ebp), %edx
	movl	%ecx, -272(%ebp)
	movl	%edx, -284(%ebp)
	movl	-199(%ebp), %edx
	movl	%edx, -280(%ebp)
	movzbl	-195(%ebp), %edx
	movb	%dl, -276(%ebp)
	movzwl	-194(%ebp), %edx
	movw	%dx, -274(%ebp)
	cmpl	$268435456, %ecx
	ja	L1678
	movzbl	-180(%ebp), %ebx
	movlps	-188(%ebp), %xmm1
	movzwl	-178(%ebp), %edx
	movb	%bl, -373(%ebp)
	movb	%bl, -260(%ebp)
	movl	-178(%ebp), %ebx
	movlps	%xmm1, -344(%ebp)
	movl	%ebx, -258(%ebp)
	movl	-160(%ebp), %ebx
	movlps	%xmm1, -268(%ebp)
	movl	%ebx, -240(%ebp)
	movl	-156(%ebp), %ebx
	movl	%ebx, -236(%ebp)
	movl	-152(%ebp), %ebx
	movl	%ebx, -232(%ebp)
	movl	-148(%ebp), %ebx
	movl	%ebx, -228(%ebp)
	movl	-144(%ebp), %ebx
	movl	%ebx, -224(%ebp)
	movl	-140(%ebp), %ebx
	movl	%ebx, -220(%ebp)
	movl	-136(%ebp), %ebx
	movl	%ebx, -216(%ebp)
	movl	-132(%ebp), %ebx
	bswap	%ebx
	movl	%ebx, -212(%ebp)
	cmpl	$1397900115, -132(%ebp)
	je	L1761
	testb	$1, %al
	jne	L1678
L1761:
	imull	$52, -336(%ebp), %eax
	movl	-368(%ebp), %ebx
	movw	%dx, -328(%ebp)
	movlps	-344(%ebp), %xmm3
	addl	%eax, %ebx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	movlps	%xmm3, -320(%ebp)
	setne	%al
	movl	-316(%ebp), %edx
	movlps	%xmm3, -312(%ebp)
	movl	%eax, -380(%ebp)
	movl	-328(%ebp), %eax
	movl	%edx, -368(%ebp)
	shrl	$7, %eax
	movl	%ecx, 32(%ebx)
	movl	-364(%ebp), %ecx
	andl	$2, %eax
	movl	%eax, %edx
	orl	$1, %edx
	testb	$4, -327(%ebp)
	cmovne	%edx, %eax
	movl	-380(%ebp), %edx
	movl	%edx, 36(%ecx)
	movl	-344(%ebp), %ecx
	movl	-368(%ebp), %edx
	movl	%eax, 44(%ebx)
	movl	%ecx, 36(%ebx)
	movl	%edx, 40(%ebx)
	movl	$16384, -344(%ebp)
	cmpb	$4, -328(%ebp)
	je	L1740
	xorl	%eax, %eax
	cmpw	$1, -70(%ebp)
	setne	%al
	addl	%eax, %eax
	movl	%eax, -344(%ebp)
L1740:
	movzbl	-373(%ebp), %eax
	movl	-348(%ebp), %ecx
	leal	-240(%ebp), %edx
	movl	%eax, (%esi)
	movl	-372(%ebp), %eax
	movl	$0, -212(%ebp)
	addl	176(%ecx), %eax
	movl	$28, %ecx
	call	__Z18libxmp_copy_adjustPcPhi.isra.0
	movzwl	-256(%ebp), %eax
	testl	%eax, %eax
	je	L1846
	movl	%eax, -328(%ebp)
	fildl	-328(%ebp)
	fdivs	LC10
	fstpl	(%esp)
	call	_log
	fmuls	LC11
	fnstcw	-322(%ebp)
	fdivl	LC12
	movzwl	-322(%ebp), %eax
	orb	$12, %ah
	movw	%ax, -324(%ebp)
	fldcw	-324(%ebp)
	fistpl	-328(%ebp)
	fldcw	-322(%ebp)
	movl	-328(%ebp), %eax
	testl	%eax, %eax
	leal	127(%eax), %edx
	cmovns	%eax, %edx
	sarl	$7, %edx
	movl	%edx, 12(%esi)
	cltd
	shrl	$25, %edx
	addl	%edx, %eax
	andl	$127, %eax
	subl	%edx, %eax
	movl	%eax, 16(%esi)
L1742:
	cmpl	$1, (%edi)
	jne	L1678
	movzbl	-276(%ebp), %eax
	movzwl	-274(%ebp), %edx
	sall	$16, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-356(%ebp), %eax
	js	L1828
	movl	8(%edi), %ecx
	movl	8(%ecx), %edx
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	movl	%edx, 4(%ecx)
	cmpl	$-1, 12(%edi)
	je	L1847
L1744:
	movl	$0, 4(%esp)
	movl	%edi, %edx
	movl	%ebx, (%esp)
	movl	-348(%ebp), %esi
	movl	-344(%ebp), %ecx
	movl	%esi, %eax
	call	__Z18libxmp_load_sampleP11module_dataP10HIO_HANDLEiP10xmp_samplePKv
	addl	$1, -336(%ebp)
	movl	-336(%ebp), %ecx
	cmpl	%ecx, 140(%esi)
	jg	L1745
	movl	-348(%ebp), %edi
L1731:
	movl	-352(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-360(%ebp), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	xorl	%eax, %eax
	subl	$4, %esp
	orl	$1761608225, 1292(%edi)
	movl	$2, 1296(%edi)
	jmp	L1824
	.p2align 4,,10
	.p2align 3
L1703:
	movb	$13, -328(%ebp)
	cmpl	$1, (%esi)
	je	L1848
L1706:
	movzbl	-328(%ebp), %eax
	movl	-336(%ebp), %edx
	movb	%al, (%edx)
	xorl	%eax, %eax
	cmpl	$1, (%esi)
	je	L1849
L1707:
	movl	-336(%ebp), %edx
	subl	$2, -348(%ebp)
	movb	%al, 1(%edx)
	testb	$64, %bl
	je	L1708
L1704:
	movl	$1, %eax
	cmpl	$1, (%esi)
	je	L1850
L1709:
	movl	-336(%ebp), %edx
	subl	$1, -348(%ebp)
	movb	%al, 2(%edx)
L1708:
	testb	%bl, %bl
	jns	L1710
	cmpl	$1, (%esi)
	jne	L1851
L1711:
	movl	%esi, %eax
	movl	%ecx, -328(%ebp)
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	movl	-336(%ebp), %ecx
	movb	%al, 3(%ecx)
	cmpl	$1, (%esi)
	movl	-328(%ebp), %ecx
	je	L1712
	movb	$0, -368(%ebp)
	xorl	%ebx, %ebx
	movb	$0, -328(%ebp)
	jmp	L1714
L1828:
	movl	%edi, %esi
L1743:
	movl	$22, 12(%esi)
L1678:
	movl	-352(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-360(%ebp), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L1661
L1842:
	movl	$22, 12(%esi)
	jmp	L1695
	.p2align 4,,10
	.p2align 3
L1850:
	movl	%esi, %eax
	movl	%ecx, -328(%ebp)
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	movl	-328(%ebp), %ecx
	addl	$1, %eax
	jmp	L1709
	.p2align 4,,10
	.p2align 3
L1849:
	movl	%esi, %eax
	movl	%ecx, -328(%ebp)
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	movl	-328(%ebp), %ecx
	jmp	L1707
	.p2align 4,,10
	.p2align 3
L1848:
	movl	%esi, %eax
	movl	%ecx, -368(%ebp)
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	movb	$-127, -328(%ebp)
	movl	-368(%ebp), %ecx
	cmpb	$-2, %al
	movl	%eax, %edx
	je	L1706
	shrb	$4, %al
	movb	%dl, -328(%ebp)
	leal	(%eax,%eax,2), %eax
	movb	%al, -368(%ebp)
	movl	%edx, %eax
	andl	$15, %eax
	movl	%eax, %edx
	movzbl	-368(%ebp), %eax
	leal	13(%edx,%eax,4), %eax
	xorl	%edx, %edx
	cmpb	$-1, -328(%ebp)
	cmove	%edx, %eax
	movb	%al, -328(%ebp)
	jmp	L1706
	.p2align 4,,10
	.p2align 3
L1676:
	movl	$256, 156(%edi)
	cmpl	$1, (%esi)
	jne	L1678
	movl	%esi, (%esp)
	movl	$256, %ecx
	movl	$1, %edx
	movl	%ebx, %eax
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	cmpl	%eax, 156(%edi)
	jne	L1678
	cmpl	$1, (%esi)
	jne	L1678
	movl	8(%esi), %edx
	movzwl	-80(%ebp), %ecx
	movl	4(%edx), %eax
	leal	-256(%ecx,%eax), %ecx
	testl	%ecx, %ecx
	js	L1743
	movl	8(%edx), %eax
	cmpl	%ecx, %eax
	cmovg	%ecx, %eax
	movl	%eax, 4(%edx)
	cmpl	$-1, 12(%esi)
	je	L1681
L1830:
	movl	156(%edi), %ecx
	jmp	L1679
	.p2align 4,,10
	.p2align 3
L1712:
	movl	%esi, %eax
	movl	%ecx, -372(%ebp)
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	movl	-372(%ebp), %ecx
	movl	%eax, %ebx
	shrb	$4, %al
	movb	%al, -328(%ebp)
	movl	%ebx, %eax
	andl	$15, %eax
	movb	%al, -368(%ebp)
	movl	-336(%ebp), %eax
	movzbl	3(%eax), %eax
L1714:
	movl	-336(%ebp), %edx
	movb	%bl, 4(%edx)
	cmpb	$26, %al
	jbe	L1715
L1831:
	xorl	%ebx, %ebx
	movw	%bx, 3(%edx)
	jmp	L1716
L1715:
	movzbl	%al, %eax
	movl	-336(%ebp), %edx
	movzbl	__ZL2fx.lto_priv.1(%eax), %eax
	movb	%al, 3(%edx)
	cmpb	$-2, %al
	je	L1717
	cmpb	$-1, %al
	je	L1713
	cmpb	$8, %al
	je	L1718
	cmpb	$-85, %al
	jne	L1716
	cmpb	$31, %bl
	ja	L1716
	jmp	L1831
	.p2align 4,,10
	.p2align 3
L1833:
	movl	%edx, %ecx
	andl	$15, %edx
	leal	1(%edx), %eax
	movl	$127, %edx
	andl	$16, %ecx
	sall	$4, %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	%eax, 1284(%edi)
	testl	%ecx, %ecx
	jne	L1671
L1836:
	movl	$780903145, %ecx
	leal	0(,%eax,8), %eax
	imull	%ecx
	sarl	%edx
L1668:
	movl	%edx, 1284(%edi)
	jmp	L1670
L1718:
	cmpb	$-92, %bl
	je	L1852
	movzbl	%bl, %eax
	movl	$255, %ebx
	addl	%eax, %eax
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	movl	-336(%ebp), %ebx
	movb	%al, 4(%ebx)
	jmp	L1716
L1717:
	movl	-336(%ebp), %eax
	movb	$14, 3(%eax)
	movzbl	-328(%ebp), %eax
	cmpb	$12, %al
	ja	L1716
	jmp	*L1720(,%eax,4)
	.section .rdata,"dr"
	.align 4
L1720:
	.long	L1716
	.long	L1727
	.long	L1726
	.long	L1725
	.long	L1724
	.long	L1713
	.long	L1713
	.long	L1713
	.long	L1723
	.long	L1713
	.long	L1713
	.long	L1721
	.long	L1719
	.text
	.p2align 4,,10
	.p2align 3
L1843:
	movl	$0, 12(%esi)
	jmp	L1695
L1835:
	andl	$112, %edx
	movzbl	%bl, %eax
	movl	$16, %edx
	cmove	%edx, %eax
	jmp	L1667
L1852:
	movl	-336(%ebp), %eax
	movl	$397, %edx
	movw	%dx, 3(%eax)
	jmp	L1716
L1662:
	movl	$2, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1846:
	movl	$0, 12(%esi)
	movl	$0, 16(%esi)
	jmp	L1742
L1844:
	movl	$22, 12(%edi)
	jmp	L1735
L1747:
	movl	$23, %edx
	jmp	L1668
L1845:
	movl	$0, 12(%edi)
	jmp	L1735
L1847:
	movl	$0, 12(%edi)
	jmp	L1744
L1834:
	movl	$32, 1284(%edi)
	jmp	L1671
L1840:
	movl	$0, 128(%edi)
	jmp	L1678
L1732:
	movl	$64, %eax
	call	__Z13handle_memerri
L1839:
	movl	%esi, (%esp)
	movl	$1, %edx
	movl	%ebx, %eax
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	movl	156(%edi), %ecx
	jmp	L1677
L1681:
	movl	$0, 12(%esi)
	jmp	L1830
L1719:
	cmpb	$0, -368(%ebp)
	jne	L1716
	jmp	L1713
L1727:
	movzbl	-368(%ebp), %eax
	movl	-336(%ebp), %ebx
	orl	$48, %eax
	movb	%al, 4(%ebx)
	jmp	L1716
L1726:
	leal	-8(%ebx), %eax
	movl	-336(%ebp), %ebx
	andl	$15, %eax
	orl	$80, %eax
	movb	%al, 4(%ebx)
	jmp	L1716
L1725:
	movzbl	-368(%ebp), %eax
	movl	-336(%ebp), %ebx
	orl	$64, %eax
	movb	%al, 4(%ebx)
	jmp	L1716
L1724:
	movzbl	-368(%ebp), %eax
	movl	-336(%ebp), %ebx
	orl	$112, %eax
	movb	%al, 4(%ebx)
	jmp	L1716
L1723:
	movzbl	-368(%ebp), %eax
	movl	-336(%ebp), %ebx
	sall	$4, %eax
	movb	$8, 3(%ebx)
	movb	%al, 4(%ebx)
	jmp	L1716
L1721:
	movzbl	-368(%ebp), %eax
	movl	-336(%ebp), %ebx
	orl	$96, %eax
	movb	%al, 4(%ebx)
	jmp	L1716
	.cfi_endproc
LFE128:
	.p2align 4
	.globl	__Z14libxmp_lfo_getP12context_dataP3lfoi
	.def	__Z14libxmp_lfo_getP12context_dataP3lfoi;	.scl	2;	.type	32;	.endef
__Z14libxmp_lfo_getP12context_dataP3lfoi:
LFB131:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	movl	%edx, %eax
	movl	2616(%ebx), %edx
	movl	4(%eax), %ecx
	cmpl	$2, %edx
	je	L1854
	cmpl	$3, %edx
	je	L1854
	cmpl	$1, %edx
	jne	L1877
	testl	%esi, %esi
	jne	L1885
L1877:
	testl	%ecx, %ecx
	je	L1853
L1860:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__ZL11get_lfo_modP3lfo.part.0
	.p2align 4,,10
	.p2align 3
L1854:
	.cfi_restore_state
	testl	%ecx, %ecx
	je	L1853
	cmpl	$2, (%eax)
	jne	L1860
	xorl	%ecx, %ecx
	cmpl	$31, 12(%eax)
	jle	L1886
L1853:
	movl	%ecx, %eax
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
L1885:
	.cfi_restore_state
	testl	%ecx, %ecx
	je	L1853
	cmpl	$1, (%eax)
	jne	L1860
	movl	12(%eax), %ebx
	leal	32(%ebx), %ecx
	sarl	$31, %ecx
	shrl	$26, %ecx
	leal	32(%ecx,%ebx), %edx
	andl	$63, %edx
	subl	%ecx, %edx
	leal	-255(,%edx,8), %ecx
	imull	8(%eax), %ecx
	jmp	L1853
	.p2align 4,,10
	.p2align 3
L1886:
	movl	8(%eax), %eax
	movl	%eax, %ecx
	sall	$8, %ecx
	subl	%eax, %ecx
	jmp	L1853
	.cfi_endproc
LFE131:
	.p2align 4
	.globl	__Z20libxmp_adjust_stringPc.isra.0
	.def	__Z20libxmp_adjust_stringPc.isra.0;	.scl	2;	.type	32;	.endef
__Z20libxmp_adjust_stringPc.isra.0:
LFB137:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%eax, (%esp)
	movl	%ebx, 4(%esp)
	movl	%esi, 8(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	%eax, %esi
	call	_strlen
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1888
	movl	%edi, 12(%esp)
	movl	%ebp, 16(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	xorl	%ebp, %ebp
	.p2align 4
	.p2align 3
L1891:
	movzbl	(%esi,%ebp), %edi
	movl	%edi, %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	*__imp__isprint
	testl	%eax, %eax
	je	L1895
	movl	%edi, %eax
	testb	%al, %al
	jns	L1889
L1895:
	movb	$32, (%esi,%ebp)
	movl	%esi, (%esp)
	call	_strlen
	movl	%eax, %ebx
L1889:
	addl	$1, %ebp
	cmpl	%ebx, %ebp
	jb	L1891
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	16(%esp), %ebp
	.cfi_restore 5
L1888:
	cmpb	$0, (%esi)
	jne	L1892
	jmp	L1887
	.p2align 4,,10
	.p2align 3
L1894:
	movb	$0, -1(%esi,%ebx)
	cmpb	$0, (%esi)
	je	L1887
	movl	%esi, (%esp)
	call	_strlen
	movl	%eax, %ebx
L1892:
	cmpb	$32, -1(%esi,%ebx)
	je	L1894
L1887:
	movl	4(%esp), %ebx
	movl	8(%esp), %esi
	addl	$20, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE137:
	.p2align 4
	.globl	__ZL14check_envelopeP12xmp_envelope.lto_priv.0
	.def	__ZL14check_envelopeP12xmp_envelope.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL14check_envelopeP12xmp_envelope.lto_priv.0:
LFB138:
	.cfi_startproc
	movl	4(%eax), %edx
	leal	-1(%edx), %ecx
	cmpl	$31, %ecx
	jbe	L1906
	andl	$-2, (%eax)
L1906:
	cmpl	20(%eax), %edx
	jle	L1907
	cmpl	24(%eax), %edx
	jle	L1907
L1908:
	cmpl	12(%eax), %edx
	jle	L1909
	cmpl	16(%eax), %edx
	jg	L1905
L1909:
	andl	$-3, (%eax)
L1905:
	ret
	.p2align 4,,10
	.p2align 3
L1907:
	andl	$-5, (%eax)
	jmp	L1908
	.cfi_endproc
LFE138:
	.p2align 4
	.globl	__ZL12do_anticlickP12context_dataiPii.lto_priv.0
	.def	__ZL12do_anticlickP12context_dataiPii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL12do_anticlickP12context_dataiPii.lto_priv.0:
LFB139:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	imull	$136, %edx, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_offset 3, -20
	movl	%eax, %ebx
	andl	$-8, %esp
	subl	$24, %esp
	addl	720(%eax), %edx
	movl	1292(%eax), %ecx
	movl	80(%edx), %edi
	movl	84(%edx), %eax
	movl	$0, 80(%edx)
	movl	$0, 84(%edx)
	movl	%eax, 8(%esp)
	orl	%edi, %eax
	movl	%edi, (%esp)
	je	L1911
	sarl	$3, %ecx
	testl	%esi, %esi
	je	L1927
	cmpl	8(%ebp), %ecx
	cmovg	8(%ebp), %ecx
L1914:
	testl	%ecx, %ecx
	jle	L1911
	movl	$16777216, %eax
	xorl	%edx, %edx
	idivl	%ecx
	subl	$1, %ecx
	movl	%eax, 20(%esp)
	imull	%ecx, %eax
	movl	%eax, %edi
	testb	$4, 1260(%ebx)
	je	L1915
	movl	(%esp), %ecx
	movl	%ecx, %ebx
	sarl	$31, %ebx
	testl	%eax, %eax
	jle	L1911
	movl	%ecx, 8(%esp)
	movl	%ebx, 12(%esp)
	.p2align 6
	.p2align 4
	.p2align 3
L1918:
	movl	%edi, %eax
	movl	12(%esp), %edx
	addl	$4, %esi
	subl	20(%esp), %edi
	sarl	$8, %eax
	imull	%eax, %eax
	imull	%eax, %edx
	movl	%edx, %ebx
	mull	8(%esp)
	leal	(%ebx,%edx), %eax
	addl	%eax, -4(%esi)
	testl	%edi, %edi
	jg	L1918
L1911:
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
L1915:
	.cfi_restore_state
	testl	%eax, %eax
	jle	L1911
	movl	8(%esp), %eax
	cltd
	movl	%eax, 8(%esp)
	movl	(%esp), %eax
	movl	%edx, 12(%esp)
	cltd
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	.p2align 6
	.p2align 4
	.p2align 3
L1917:
	movl	%edi, %ecx
	movl	8(%esp), %eax
	movl	12(%esp), %ebx
	sarl	$8, %ecx
	subl	20(%esp), %edi
	imull	%ecx, %ecx
	mull	%ecx
	movl	(%esp), %eax
	imull	%ecx, %ebx
	addl	%edx, %ebx
	mull	%ecx
	addl	%ebx, (%esi)
	movl	4(%esp), %ebx
	addl	$8, %esi
	imull	%ecx, %ebx
	addl	%edx, %ebx
	addl	%ebx, -4(%esi)
	testl	%edi, %edi
	jg	L1917
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
L1927:
	.cfi_restore_state
	movl	1284(%ebx), %esi
	jmp	L1914
	.cfi_endproc
LFE139:
	.p2align 4
	.globl	__ZL22init_sample_wraparoundP10mixer_dataP9loop_dataP11mixer_voiceP10xmp_sample.lto_priv.0
	.def	__ZL22init_sample_wraparoundP10mixer_dataP9loop_dataP11mixer_voiceP10xmp_sample.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL22init_sample_wraparoundP10mixer_dataP9loop_dataP11mixer_voiceP10xmp_sample.lto_priv.0:
LFB140:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	92(%ecx), %eax
	testl	%eax, %eax
	je	L1929
	movl	16(%ebx), %ebx
	testl	%ebx, %ebx
	je	L1929
	movl	%edi, 12(%esp)
	.cfi_offset 7, -12
	movl	24(%esp), %edi
	testb	$2, 44(%edi)
	je	L1947
	movl	%esi, 8(%esp)
	movl	%ebp, 16(%esp)
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	movl	%eax, (%edx)
	movl	56(%ecx), %eax
	movl	%eax, 4(%edx)
	movl	60(%ecx), %eax
	movl	%eax, 8(%edx)
	movl	88(%ecx), %esi
	andl	$4, %esi
	movl	%esi, %eax
	shrl	$2, %eax
	xorl	$1, %eax
	movl	%eax, 12(%edx)
	movl	24(%esp), %eax
	movl	44(%eax), %eax
	movl	$1, 20(%edx)
	andl	$1, %eax
	movl	%eax, 16(%edx)
	movl	88(%ecx), %edi
	movl	92(%ecx), %ebx
	movl	56(%ecx), %ebp
	andl	$16, %edi
	movl	60(%ecx), %ecx
	movl	%edi, (%esp)
	testl	%eax, %eax
	je	L1932
	leal	(%ebx,%ebp,2), %ebp
	leal	(%ebx,%ecx,2), %eax
	testl	%esi, %esi
	je	L1933
	movzwl	-2(%ebp), %ecx
	movl	%ecx, 24(%edx)
	testl	%edi, %edi
	je	L1948
	movzwl	0(%ebp), %ecx
	movw	%cx, -2(%ebp)
	movzwl	(%eax), %ecx
	movl	%ecx, 28(%edx)
L1936:
	movzwl	-2(%eax), %ecx
	movzwl	2(%eax), %ebx
	movw	%cx, (%eax)
	leal	2(%eax), %ecx
	movl	%ebx, 32(%edx)
	movzwl	-4(%eax), %eax
	jmp	L1937
	.p2align 4,,10
	.p2align 3
L1947:
	.cfi_restore 5
	.cfi_restore 6
	movl	12(%esp), %edi
	.cfi_restore 7
L1929:
	movl	$0, 20(%edx)
	movl	4(%esp), %ebx
	addl	$20, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1932:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	leal	(%ebx,%ebp), %edi
	leal	(%ebx,%ecx), %eax
	testl	%esi, %esi
	je	L1938
	movzbl	-1(%edi), %ecx
	movl	(%esp), %ebx
	movl	%ecx, 24(%edx)
	testl	%ebx, %ebx
	je	L1949
	movzbl	(%edi), %ecx
	movb	%cl, -1(%edi)
	movzbl	(%eax), %ecx
	movl	%ecx, 28(%edx)
L1941:
	movzbl	-1(%eax), %ecx
	movzbl	1(%eax), %ebx
	movb	%cl, (%eax)
	leal	1(%eax), %ecx
	movl	%ebx, 32(%edx)
	movzbl	-2(%eax), %eax
	jmp	L1942
	.p2align 4,,10
	.p2align 3
L1938:
	movzbl	(%eax), %ecx
	movl	%ecx, 28(%edx)
	movl	(%esp), %ecx
	testl	%ecx, %ecx
	jne	L1941
L1940:
	movzbl	(%edi), %ecx
	movb	%cl, (%eax)
	leal	1(%eax), %ecx
	movzbl	1(%eax), %eax
	movl	%eax, 32(%edx)
	movzbl	1(%edi), %eax
L1942:
	movb	%al, (%ecx)
	movl	8(%esp), %esi
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
L1933:
	.cfi_restore_state
	movzwl	(%eax), %ecx
	movl	(%esp), %esi
	movl	%ecx, 28(%edx)
	testl	%esi, %esi
	jne	L1936
L1935:
	movzwl	0(%ebp), %ecx
	movw	%cx, (%eax)
	leal	2(%eax), %ecx
	movzwl	2(%eax), %eax
	movl	%eax, 32(%edx)
	movzwl	2(%ebp), %eax
L1937:
	movw	%ax, (%ecx)
	movl	8(%esp), %esi
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
L1948:
	.cfi_restore_state
	movzwl	-2(%eax), %ecx
	movw	%cx, -2(%ebp)
	movzwl	(%eax), %ecx
	movl	%ecx, 28(%edx)
	jmp	L1935
	.p2align 4,,10
	.p2align 3
L1949:
	movzbl	-1(%eax), %ecx
	movb	%cl, -1(%edi)
	movzbl	(%eax), %ecx
	movl	%ecx, 28(%edx)
	jmp	L1940
	.cfi_endproc
LFE140:
	.p2align 4
	.globl	__ZL16adjust_voice_endP12context_dataP11mixer_voiceP10xmp_sampleP17extra_sample_data.lto_priv.0
	.def	__ZL16adjust_voice_endP12context_dataP11mixer_voiceP10xmp_sampleP17extra_sample_data.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL16adjust_voice_endP12context_dataP11mixer_voiceP10xmp_sampleP17extra_sample_data.lto_priv.0:
LFB141:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%eax, %esi
	movl	88(%edx), %eax
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	andl	$-17, %ebx
	movl	%ebx, 88(%edx)
	movl	44(%ecx), %ebx
	cmpl	$0, 12(%esp)
	je	L1951
	movl	1464(%esi), %esi
	cmpl	%esi, 52(%edx)
	jge	L1951
	testb	$32, %bl
	je	L1951
	testb	$1, %al
	jne	L1951
	movl	12(%esp), %esi
	movl	8(%esi), %ebx
	movl	%ebx, 56(%edx)
	movl	12(%esi), %ebx
	movl	%ebx, 60(%edx)
	testb	$64, 44(%ecx)
	je	L1950
	orl	$16, %eax
	movl	%eax, 88(%edx)
L1974:
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
L1951:
	.cfi_restore_state
	andl	$2, %ebx
	jne	L1973
	movl	$0, 56(%edx)
L1971:
	movl	32(%ecx), %eax
	movl	%eax, 60(%edx)
L1950:
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
L1973:
	.cfi_restore_state
	movl	36(%ecx), %ebx
	movl	%ebx, 56(%edx)
	testb	$16, 44(%ecx)
	je	L1954
	testb	$4, %al
	je	L1971
L1954:
	movl	40(%ecx), %ebx
	movl	%ebx, 60(%edx)
	testb	$4, 44(%ecx)
	je	L1950
	orl	$16, %eax
	movl	%eax, 88(%edx)
	jmp	L1974
	.cfi_endproc
LFE141:
	.p2align 4
	.globl	__ZL15loop_repositionP12context_dataP11mixer_voiceP10xmp_sampleP17extra_sample_data.lto_priv.0
	.def	__ZL15loop_repositionP12context_dataP11mixer_voiceP10xmp_sampleP17extra_sample_data.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL15loop_repositionP12context_dataP11mixer_voiceP10xmp_sampleP17extra_sample_data.lto_priv.0:
LFB142:
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
	andl	$-8, %esp
	subl	$12, %esp
	.cfi_offset 3, -20
	movl	88(%edx), %eax
	movl	%eax, %ecx
	orl	$4, %eax
	andl	$4, %ecx
	movl	%eax, 88(%edx)
	movl	%ecx, %ebx
	shrl	$2, %ebx
	xorl	$1, %ebx
	testl	%ecx, %ecx
	je	L1982
L1976:
	fldl	32(%edx)
	testb	$16, %al
	jne	L1977
	movl	60(%edx), %ecx
	subl	56(%edx), %ecx
	movl	%ecx, 8(%esp)
	fildl	8(%esp)
	testb	$8, %al
	jne	L1978
	fsubrp	%st, %st(1)
	movl	%ebx, %eax
	fstpl	32(%edx)
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
L1977:
	.cfi_restore_state
	xorl	$8, %eax
	movl	%eax, 88(%edx)
	testb	$8, %al
	jne	L1983
	movl	56(%edx), %eax
	addl	%eax, %eax
	movl	%eax, 8(%esp)
	fildl	8(%esp)
	movl	%ebx, %eax
	fsubp	%st, %st(1)
	fstpl	32(%edx)
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
L1983:
	.cfi_restore_state
	movl	60(%edx), %eax
	addl	%eax, %eax
	subl	1304(%esi), %eax
	movl	%eax, 8(%esp)
	fildl	8(%esp)
	movl	%ebx, %eax
	fsubp	%st, %st(1)
	fstpl	32(%edx)
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
L1978:
	.cfi_restore_state
	faddp	%st, %st(1)
	movl	%ebx, %eax
	fstpl	32(%edx)
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
L1982:
	.cfi_restore_state
	movl	8(%ebp), %eax
	movl	%edi, %ecx
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__ZL16adjust_voice_endP12context_dataP11mixer_voiceP10xmp_sampleP17extra_sample_data.lto_priv.0
	movl	88(%edx), %eax
	jmp	L1976
	.cfi_endproc
LFE142:
	.p2align 4
	.globl	__Z21libxmp_mixer_voiceposP12context_dataidi.constprop.0
	.def	__Z21libxmp_mixer_voiceposP12context_dataidi.constprop.0;	.scl	2;	.type	32;	.endef
__Z21libxmp_mixer_voiceposP12context_dataidi.constprop.0:
LFB144:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	imull	$136, %edx, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	andl	$-8, %esp
	subl	$20, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	fldl	8(%ebp)
	addl	720(%eax), %edx
	movl	52(%edx), %ebx
	movl	1464(%eax), %esi
	fstpl	12(%esp)
	cmpl	%esi, %ebx
	jge	L1985
	imull	$52, %ebx, %ecx
	movl	%ebx, %esi
	addl	1500(%eax), %ecx
	sall	$4, %esi
	addl	9808(%eax), %esi
	testb	$-128, 45(%ecx)
	je	L2002
L1984:
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
L1985:
	.cfi_restore_state
	movl	%ebx, %ecx
	subl	%esi, %ecx
	xorl	%esi, %esi
	imull	$52, %ecx, %ecx
	addl	9832(%eax), %ecx
	testb	$-128, 45(%ecx)
	jne	L1984
L2002:
	fldl	12(%esp)
	movl	%eax, 8(%esp)
	fstpl	32(%edx)
	movl	%esi, (%esp)
	call	__ZL16adjust_voice_endP12context_dataP11mixer_voiceP10xmp_sampleP17extra_sample_data.lto_priv.0
	fildl	60(%edx)
	fldl	12(%esp)
	movl	88(%edx), %eax
	fcomip	%st(1), %st
	jb	L2000
	fstpl	32(%edx)
	testb	$8, %al
	jne	L1993
	movl	44(%ecx), %edi
	movl	%edi, 12(%esp)
	andl	$2, %edi
	jne	L1991
	movl	8(%esp), %edi
	cmpl	1464(%edi), %ebx
	jge	L1993
	testb	$32, 12(%esp)
	je	L1993
	testb	$1, %al
	jne	L1993
	.p2align 4
	.p2align 3
L1991:
	movl	%esi, (%esp)
	movl	8(%esp), %eax
	call	__ZL15loop_repositionP12context_dataP11mixer_voiceP10xmp_sampleP17extra_sample_data.lto_priv.0
	movl	88(%edx), %eax
	jmp	L1993
	.p2align 4,,10
	.p2align 3
L2003:
	fstp	%st(0)
	jmp	L1993
	.p2align 4,,10
	.p2align 3
L2004:
	fstp	%st(0)
L1993:
	orl	$2, %eax
	movl	$0, 72(%edx)
	movl	%eax, 88(%edx)
	movl	$0, 76(%edx)
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
L2000:
	.cfi_restore_state
	testb	$8, %al
	je	L2003
	fldl	12(%esp)
	fldl	LC26
	fcomip	%st(1), %st
	fstp	%st(0)
	jb	L2004
	fstpl	32(%edx)
	jmp	L1993
	.cfi_endproc
LFE144:
	.p2align 4
	.globl	__ZL23reset_sample_wraparoundP9loop_data.part.0.lto_priv.0
	.def	__ZL23reset_sample_wraparoundP9loop_data.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL23reset_sample_wraparoundP9loop_data.part.0.lto_priv.0:
LFB147:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	(%eax), %edx
	movl	4(%eax), %esi
	movl	8(%eax), %ecx
	movl	12(%eax), %ebx
	cmpl	$0, 16(%eax)
	je	L2006
	testl	%ebx, %ebx
	je	L2011
L2007:
	movl	28(%eax), %ebx
	movw	%bx, (%edx,%ecx,2)
	movl	32(%eax), %eax
	movw	%ax, 2(%edx,%ecx,2)
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
L2006:
	.cfi_restore_state
	testl	%ebx, %ebx
	jne	L2009
	movl	24(%eax), %ebx
	movb	%bl, -1(%edx,%esi)
L2009:
	movl	28(%eax), %ebx
	movb	%bl, (%edx,%ecx)
	movl	32(%eax), %eax
	movb	%al, 1(%edx,%ecx)
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
L2011:
	.cfi_restore_state
	movl	24(%eax), %ebx
	movw	%bx, -2(%edx,%esi,2)
	jmp	L2007
	.cfi_endproc
LFE147:
	.p2align 4
	.globl	__Z21libxmp_note_to_periodP12context_dataiid.isra.0
	.def	__Z21libxmp_note_to_periodP12context_dataiid.isra.0;	.scl	2;	.type	32;	.endef
__Z21libxmp_note_to_periodP12context_dataiid.isra.0:
LFB149:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-8, %esp
	subl	$24, %esp
	movl	2620(%eax), %eax
	movl	%edx, 16(%esp)
	fildl	16(%esp)
	movl	%ecx, 16(%esp)
	fildl	16(%esp)
	fld	%st(0)
	fmuls	LC27
	fadd	%st(2), %st
	cmpl	$2, %eax
	je	L2013
	cmpl	$3, %eax
	je	L2014
	fstp	%st(1)
	fstp	%st(1)
	fdivs	LC19
	fstpl	8(%esp)
	flds	LC30
	fstpl	(%esp)
	call	_pow
	fdivrs	LC18
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L2014:
	.cfi_restore_state
	fstp	%st(0)
	fstpl	16(%esp)
	fdivs	LC19
	fstpl	8(%esp)
	flds	LC30
	fstpl	(%esp)
	call	_pow
	fmuls	LC10
	fmuls	LC31
	faddl	16(%esp)
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L2013:
	.cfi_restore_state
	fstp	%st(1)
	fstp	%st(1)
	fsubrs	LC28
	fmuls	LC29
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE149:
	.p2align 4
	.def	__ZL12do_toneportaP12context_dataP12channel_datai;	.scl	3;	.type	32;	.endef
__ZL12do_toneportaP12context_dataP12channel_datai:
LFB150:
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
	andl	$-8, %esp
	subl	$8, %esp
	movl	16(%edx), %edi
	movl	%ecx, 4(%esp)
	movl	44(%edx), %ecx
	xorl	%edx, %edx
	imull	$764, %ecx, %eax
	addl	1496(%esi), %eax
	cmpl	$120, %edi
	ja	L2020
	movzbl	512(%eax,%edi,2), %edx
L2020:
	movl	%edx, %edi
	sall	$6, %edi
	cmpl	%edx, 36(%eax)
	movl	$0, %edx
	cmovg	%edi, %edx
	movl	4(%esp), %edi
	subl	$1, %edi
	cmpl	$120, %edi
	ja	L2024
	cmpl	1460(%esi), %ecx
	jb	L2035
L2024:
	fldl	336(%ebx)
L2023:
	fldl	24(%ebx)
	fxch	%st(1)
	xorl	%eax, %eax
	fcomip	%st(1), %st
	fstp	%st(0)
	seta	%al
	leal	-1(%eax,%eax), %eax
	movl	%eax, 344(%ebx)
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
L2035:
	.cfi_restore_state
	movl	108(%ebx), %ecx
	addl	756(%eax), %edx
	movl	%edx, 4(%esp)
	xorl	%edx, %edx
	cmpl	$120, %ecx
	ja	L2025
	movsbl	513(%eax,%ecx,2), %edx
L2025:
	movl	4(%esp), %eax
	movl	40(%ebx), %ecx
	addl	12(%eax), %edi
	movl	%esi, %eax
	addl	%edi, %edx
	call	__Z21libxmp_note_to_periodP12context_dataiid.isra.0
	fstl	336(%ebx)
	jmp	L2023
	.cfi_endproc
LFE150:
	.p2align 4
	.def	__Z17libxmp_process_fxP12context_dataP12channel_dataiP9xmp_eventi;	.scl	3;	.type	32;	.endef
__Z17libxmp_process_fxP12context_dataP12channel_dataiP9xmp_eventi:
LFB151:
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
	subl	$24, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	12(%ebp), %edi
	movl	%ecx, 12(%esp)
	movl	8(%ebp), %ecx
	cmpl	$3, 2616(%eax)
	je	L2037
	movl	16(%edx), %ebx
	movl	%ebx, 108(%edx)
L2037:
	movzbl	(%ecx), %ebx
	movb	%bl, 8(%esp)
	testl	%edi, %edi
	jne	L2038
	movzbl	4(%ecx), %ebx
	movzbl	3(%ecx), %esi
	movb	%bl, 16(%esp)
L2039:
	movl	%esi, %ebx
	cmpb	$-61, %bl
	ja	L2519
	movzbl	%bl, %esi
	jmp	*L2042(,%esi,4)
	.section .rdata,"dr"
	.align 4
L2042:
	.long	L2099
	.long	L2098
	.long	L2097
	.long	L2096
	.long	L2095
	.long	L2094
	.long	L2093
	.long	L2092
	.long	L2091
	.long	L2090
	.long	L2089
	.long	L2088
	.long	L2087
	.long	L2086
	.long	L2085
	.long	L2084
	.long	L2083
	.long	L2082
	.long	L2519
	.long	L2519
	.long	L2081
	.long	L2080
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2079
	.long	L2519
	.long	L2078
	.long	L2519
	.long	L2077
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2076
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2075
	.long	L2074
	.long	L2073
	.long	L2072
	.long	L2071
	.long	L2070
	.long	L2519
	.long	L2069
	.long	L2068
	.long	L2067
	.long	L2066
	.long	L2065
	.long	L2064
	.long	L2063
	.long	L2062
	.long	L2061
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2060
	.long	L2059
	.long	L2519
	.long	L2058
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2057
	.long	L2056
	.long	L2055
	.long	L2054
	.long	L2053
	.long	L2052
	.long	L2519
	.long	L2519
	.long	L2051
	.long	L2050
	.long	L2049
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2519
	.long	L2048
	.long	L2047
	.long	L2046
	.long	L2045
	.long	L2044
	.long	L2043
	.long	L2041
	.text
L2099:
	movl	2612(%eax), %eax
L2100:
	testl	$536870912, %eax
	je	L2106
	cmpb	$0, 16(%esp)
	je	L2519
L2106:
	movzbl	16(%esp), %ecx
	movb	$0, 172(%edx)
	movl	$3, 188(%edx)
	movl	%ecx, %eax
	andl	$15, %ecx
	shrb	$4, %al
	movb	%cl, 174(%edx)
	movb	%al, 173(%edx)
L2519:
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
L2038:
	.cfi_restore_state
	movzbl	6(%ecx), %ebx
	movzbl	5(%ecx), %esi
	movb	%bl, 16(%esp)
	jmp	L2039
L2093:
	orl	$16, (%edx)
L2089:
	testb	$32, 2612(%eax)
	jne	L2520
	cmpb	$0, 16(%esp)
	jne	L2179
	movl	264(%edx), %ecx
	movb	%cl, 16(%esp)
	testb	%cl, %cl
	je	L2180
L2179:
	movl	(%edx), %ecx
	movl	16(%esp), %edi
	movl	%ecx, %esi
	andl	$15, %edi
	orl	$1, %esi
	movl	%esi, (%edx)
	movzbl	16(%esp), %esi
	movl	%esi, %ebx
	movl	%esi, 264(%edx)
	shrb	$4, %bl
	movb	%bl, 12(%esp)
	movzbl	%bl, %esi
	testb	$2, 2613(%eax)
	je	L2532
	negl	%edi
	testb	$15, 16(%esp)
	cmovne	%edi, %esi
	movl	%esi, 252(%edx)
L2323:
	testb	$32, 2612(%eax)
	je	L2519
	movl	264(%edx), %ebx
	notl	%ebx
	testb	$-16, %bl
	je	L2188
	andl	$15, %ebx
	jne	L2519
L2188:
	movl	252(%edx), %eax
	orl	$65, %ecx
	movl	%ecx, (%edx)
	movl	%eax, 256(%edx)
	jmp	L2519
L2057:
	fldl	2576(%eax)
	fmuls	LC33
	fnstcw	22(%esp)
	fdivs	LC34
	movzbl	16(%esp), %ebx
	movzwl	22(%esp), %edx
	orb	$12, %dh
	movw	%dx, 20(%esp)
	fadds	LC21
	fldcw	20(%esp)
	fistpl	12(%esp)
	fldcw	22(%esp)
	movl	12(%esp), %edx
	fldl	2576(%eax)
	fmull	2568(%eax)
	movzbl	%dl, %ecx
	cmpl	%edx, %ebx
	cmovl	%ecx, %ebx
	movl	%ebx, 16(%esp)
	fildl	16(%esp)
	movl	%ebx, 20(%eax)
	fdivrp	%st, %st(1)
	fstpl	48(%eax)
	jmp	L2519
L2097:
	movl	2612(%eax), %ecx
	testb	$16, %cl
	je	L2120
	cmpb	$0, 16(%esp)
	jne	L2121
	movzbl	264(%edx), %ebx
	movb	%bl, 16(%esp)
L2122:
	testb	$32, %cl
	je	L2127
L2123:
	testl	%edi, %edi
	je	L2128
	andb	$8, %ch
	jne	L2127
L2128:
	movzbl	16(%esp), %ebx
	movl	%ebx, %ecx
	shrb	$4, %cl
	cmpb	$14, %cl
	je	L2130
	cmpb	$15, %cl
	jne	L2127
	andl	$15, %ebx
	movb	%bl, 16(%esp)
L2052:
	cmpb	$0, 16(%esp)
	je	L2519
L2218:
	movzbl	16(%esp), %ebx
	orl	$128, (%edx)
	movw	%bx, 16(%esp)
	filds	16(%esp)
	fstpl	320(%edx)
	jmp	L2519
L2098:
	movl	2612(%eax), %ecx
	testb	$16, %cl
	je	L2107
	cmpb	$0, 16(%esp)
	jne	L2108
	movzbl	264(%edx), %ebx
	movb	%bl, 16(%esp)
L2109:
	testb	$32, %cl
	je	L2114
L2110:
	testl	%edi, %edi
	je	L2115
	andb	$8, %ch
	jne	L2114
L2115:
	movzbl	16(%esp), %ebx
	movl	%ebx, %ecx
	shrb	$4, %cl
	cmpb	$14, %cl
	je	L2117
	cmpb	$15, %cl
	jne	L2114
	andl	$15, %ebx
	movb	%bl, 16(%esp)
L2053:
	cmpb	$0, 16(%esp)
	je	L2519
L2214:
	movzbl	16(%esp), %ebx
	orl	$128, (%edx)
	negl	%ebx
	movl	%ebx, 16(%esp)
	fildl	16(%esp)
	fstpl	320(%edx)
	jmp	L2519
L2299:
	cmpb	$15, %cl
	jne	L2298
	cmpb	$0, 12(%esp)
	je	L2298
	andb	$-16, 16(%esp)
	movl	%edi, 304(%edx)
L2073:
	movzbl	16(%esp), %eax
	orl	$1024, (%edx)
	testb	%al, %al
	je	L2519
	movl	%eax, %ecx
	andl	$15, %ecx
L2300:
	movzbl	16(%esp), %ebx
	movzbl	%cl, %ecx
	shrb	$4, %bl
	movzbl	%bl, %eax
	subl	%ecx, %eax
	movl	%eax, 300(%edx)
	jmp	L2519
L2326:
	movzbl	4(%esp), %edx
	movb	%dl, 16(%esp)
L2051:
	cmpl	$2, 2616(%eax)
	je	L2533
L2238:
	movzbl	16(%esp), %ebx
	movl	%ebx, 340(%eax)
	jmp	L2519
L2072:
	movzbl	16(%esp), %ecx
	cmpb	$12, %cl
	ja	L2519
	movzbl	%cl, %ebx
	jmp	*L2305(,%ebx,4)
	.section .rdata,"dr"
	.align 4
L2305:
	.long	L2317
	.long	L2316
	.long	L2315
	.long	L2314
	.long	L2313
	.long	L2312
	.long	L2311
	.long	L2310
	.long	L2309
	.long	L2308
	.long	L2307
	.long	L2306
	.long	L2304
	.text
L2055:
	testb	$16, 2612(%eax)
	je	L2232
	cmpb	$0, 16(%esp)
	jne	L2233
L2526:
	movzbl	264(%edx), %esi
	.p2align 4
	.p2align 3
L2182:
	orl	$64, (%edx)
	movl	%esi, 256(%edx)
	jmp	L2519
L2074:
	cmpb	$0, 16(%esp)
	jne	L2297
	movl	304(%edx), %ecx
	movb	%cl, 16(%esp)
	testb	%cl, %cl
	je	L2519
L2297:
	movzbl	16(%esp), %edi
	movl	(%edx), %esi
	movl	%edi, %ebx
	movl	%edi, %ecx
	shrb	$4, %bl
	andl	$15, %ecx
	movb	%bl, 12(%esp)
	testb	$32, 2612(%eax)
	je	L2298
	cmpb	$15, %bl
	jne	L2299
	testb	%cl, %cl
	je	L2299
	orl	$1024, %esi
	movl	%edi, 304(%edx)
	movl	%esi, (%edx)
	movb	%cl, 16(%esp)
	jmp	L2300
L2049:
	movzbl	16(%esp), %ebx
	orl	$2, (%edx)
	movl	%ebx, %eax
	shrb	$4, %bl
	andl	$15, %eax
	movzbl	%bl, %ebx
	subl	%ebx, %eax
	movl	%eax, 372(%edx)
	jmp	L2519
L2050:
	movl	2612(%eax), %eax
	testb	$16, %al
	je	L2102
	cmpb	$0, 16(%esp)
	jne	L2103
	movzbl	264(%edx), %ecx
	movb	%cl, 16(%esp)
	jmp	L2100
L2075:
	movzbl	16(%esp), %ebx
	cmpl	2588(%eax), %ebx
	jg	L2519
	movl	%ebx, 56(%edx)
	jmp	L2519
L2076:
	movzbl	16(%esp), %eax
	orl	$128, (%edx)
	shrb	$4, %al
	cmpb	$1, %al
	je	L2294
	cmpb	$2, %al
	jne	L2519
	movzbl	16(%esp), %ebx
	andl	$15, %ebx
L2131:
	movzbl	%bl, %eax
	movl	%eax, 16(%esp)
	fildl	16(%esp)
	fmuls	LC36
	fstpl	320(%edx)
	jmp	L2519
L2077:
	testb	$16, 2612(%eax)
	je	L2287
	cmpb	$0, 16(%esp)
	jne	L2288
	movzbl	264(%edx), %ecx
	movb	%cl, 16(%esp)
L2289:
	movzbl	16(%esp), %ebx
	movl	%ebx, %ecx
	andl	$15, %ebx
	shrb	$4, %cl
	movb	%bl, 249(%edx)
	movb	%cl, 248(%edx)
	cmpl	$1, 2616(%eax)
	je	L2534
	testb	%cl, %cl
	movl	$1, %eax
	cmove	%eax, %ecx
	movb	%cl, 248(%edx)
	testb	%bl, %bl
	jne	L2293
	movb	$1, 249(%edx)
L2293:
	orl	$134217728, (%edx)
	jmp	L2519
L2079:
	testb	$16, 2612(%eax)
	je	L2275
	cmpb	$0, 16(%esp)
	jne	L2276
	movzbl	264(%edx), %eax
	movb	%al, 16(%esp)
L2277:
	movzbl	16(%esp), %ebx
	orl	$2, (%edx)
	movl	%ebx, %eax
	shrb	$4, %bl
	andl	$15, %eax
	movzbl	%bl, %ebx
	subl	%ebx, %eax
	movl	%eax, 372(%edx)
	jmp	L2519
L2056:
	movl	(%edx), %esi
	orl	$16, %esi
	cmpb	$0, 16(%esp)
	jne	L2153
	movl	128(%edx), %ecx
	movb	%cl, 16(%esp)
	testb	$16, 2612(%eax)
	je	L2535
	testb	%cl, %cl
	jne	L2536
	movl	%esi, (%edx)
	jmp	L2519
L2078:
	testb	$16, 2612(%eax)
	je	L2282
	cmpb	$0, 16(%esp)
	jne	L2283
	movzbl	264(%edx), %eax
	movb	%al, 16(%esp)
L2282:
	movzbl	16(%esp), %eax
	testb	%al, %al
	je	L2285
	movzbl	%al, %ebx
L2284:
	movl	%ebx, 232(%edx)
	sarl	$4, %ebx
	movl	%ebx, 240(%edx)
L2285:
	cmpb	$0, 8(%esp)
	je	L2286
	movl	232(%edx), %eax
	andl	$15, %eax
	addl	$1, %eax
	movl	%eax, 236(%edx)
L2286:
	orl	$262144, (%edx)
	movl	$0, 244(%edx)
	jmp	L2519
L2091:
	movl	2612(%eax), %eax
	testb	$4, %al
	jne	L2519
L2169:
	testl	$67108864, %eax
	je	L2170
	andl	$1, %edi
	jne	L2537
L2170:
	movzbl	16(%esp), %ebx
	movl	%ebx, 368(%edx)
L2171:
	movl	$0, 88(%edx)
	movl	$0, 384(%edx)
	jmp	L2519
L2094:
	movl	44(%edx), %ecx
	cmpl	1460(%eax), %ecx
	jnb	L2519
	imull	$764, %ecx, %ecx
	addl	1496(%eax), %ecx
	movl	36(%ecx), %ebx
	testl	%ebx, %ebx
	jle	L2519
	movzbl	8(%esp), %ecx
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	call	__ZL12do_toneportaP12context_dataP12channel_datai
	movl	8(%esp), %edx
	movl	12(%esp), %eax
	orl	$4, (%edx)
	jmp	L2089
L2092:
	movl	(%edx), %ecx
	orl	$32, %ecx
	testb	$16, 2612(%eax)
	je	L2162
	cmpb	$0, 16(%esp)
	jne	L2163
	movzbl	264(%edx), %eax
	movb	%al, 16(%esp)
L2164:
	movzbl	16(%esp), %eax
	movl	%ecx, (%edx)
	andl	$15, %eax
	jne	L2165
L2168:
	movzbl	16(%esp), %ebx
	shrb	$4, %bl
	je	L2519
L2166:
	movzbl	%bl, %ebx
	movl	%ebx, 136(%edx)
	jmp	L2519
L2095:
	movl	(%edx), %esi
	orl	$16, %esi
	cmpb	$0, 16(%esp)
	jne	L2143
	movl	128(%edx), %ecx
	movb	%cl, 16(%esp)
	testb	$16, 2612(%eax)
	je	L2538
	testb	%cl, %cl
	jne	L2539
	movl	%esi, (%edx)
	jmp	L2519
L2064:
	movzbl	16(%esp), %ebx
	movw	%bx, 222(%edx)
	jmp	L2519
L2065:
	movl	16(%esp), %ebx
	andl	$3, %ebx
	movl	%ebx, 152(%edx)
	jmp	L2519
L2066:
	orl	$524288, (%edx)
	testb	$15, 16(%esp)
	jne	L2540
L2319:
	movzbl	16(%esp), %ebx
	shrb	$4, %bl
	je	L2519
	movzbl	%bl, %ebx
	movl	%ebx, 156(%edx)
	jmp	L2519
L2067:
	movzbl	16(%esp), %ecx
	orl	$2, (%edx)
	testb	%cl, %cl
	je	L2519
	movl	%ecx, %eax
	andl	$15, %ecx
	shrb	$4, %al
	cmpb	$15, %al
	je	L2541
	movzbl	%al, %eax
	cmpb	$15, %cl
	je	L2542
	movl	$0, 376(%edx)
	movzbl	%cl, %ebx
	subl	%eax, %ebx
	movl	%ebx, 372(%edx)
	jmp	L2519
L2068:
	movl	368(%eax), %edi
	testl	%edi, %edi
	jne	L2519
	movl	$3, 368(%eax)
	movzbl	16(%esp), %ebx
	movl	%ebx, 364(%eax)
	jmp	L2519
L2069:
	movzbl	16(%esp), %ebx
	movl	%ebx, %ecx
	shrb	$4, %cl
	jne	L2243
	orl	$2097152, (%edx)
	testb	%bl, %bl
	je	L2529
	movzbl	16(%esp), %ebx
	negl	%ebx
	movl	%ebx, 400(%edx)
L2529:
	movl	20(%eax), %ebx
L2245:
	fldl	2576(%eax)
	fmull	2568(%eax)
	movl	%ebx, 16(%esp)
	fildl	16(%esp)
	fdivrp	%st, %st(1)
	fstpl	48(%eax)
	jmp	L2519
L2070:
	movzbl	16(%esp), %ebx
	movl	%ebx, 408(%edx)
	jmp	L2519
L2071:
	movzbl	16(%esp), %ebx
	movl	%ebx, 404(%edx)
	jmp	L2519
L2080:
	movzbl	16(%esp), %ebx
	testb	$4, 2615(%eax)
	jne	L2543
L2271:
	movl	%ebx, 100(%edx)
L2272:
	movl	%ebx, 96(%edx)
	movl	%ebx, 104(%edx)
	jmp	L2519
L2081:
	movzbl	16(%esp), %ebx
	addl	$1, %ebx
	movl	%ebx, 64(%edx)
	jmp	L2519
L2085:
	movl	2612(%eax), %esi
	movl	%esi, (%esp)
	andl	$16, %esi
	je	L2191
	cmpb	$0, 16(%esp)
	jne	L2192
	movl	264(%edx), %esi
	movl	%esi, %ebx
	movb	%bl, 16(%esp)
	andl	$15, %ebx
	movb	%bl, 4(%esp)
	movl	%esi, %ebx
	shrb	$4, %bl
	movzbl	%bl, %esi
	jmp	*L2194(,%esi,4)
	.section .rdata,"dr"
	.align 4
L2194:
	.long	L2207
	.long	L2206
	.long	L2205
	.long	L2204
	.long	L2203
	.long	L2202
	.long	L2201
	.long	L2200
	.long	L2199
	.long	L2198
	.long	L2197
	.long	L2196
	.long	L2195
	.long	L2519
	.long	L2326
	.long	L2193
	.text
L2086:
	movl	$1, 332(%eax)
	movzbl	16(%esp), %ecx
	movl	%ecx, %edx
	movl	%ecx, %ebx
	shrb	$4, %dl
	andl	$15, %ebx
	movzbl	%dl, %edx
	leal	(%edx,%edx,4), %edx
	leal	(%ebx,%edx,2), %edx
	movl	%edx, 344(%eax)
	jmp	L2519
L2087:
	movzbl	16(%esp), %ebx
	orl	$4096, (%edx)
	movl	%ebx, 76(%edx)
	cmpb	$0, 92(%edx)
	je	L2519
	movzbl	93(%edx), %edx
	imull	$480, %edx, %edx
	addl	376(%eax), %edx
	movl	%ebx, 76(%edx)
	jmp	L2519
L2088:
	movl	$1, 332(%eax)
	movzbl	16(%esp), %ebx
	movl	$0, 344(%eax)
	movl	%ebx, 336(%eax)
	jmp	L2519
L2083:
	movzbl	16(%esp), %ebx
	movl	2592(%eax), %edx
	cmpl	%edx, %ebx
	cmovg	%edx, %ebx
	movl	%ebx, 328(%eax)
	jmp	L2519
L2084:
	testb	$16, 2615(%eax)
	jne	L2240
	testb	$1, 32(%eax)
	jne	L2240
	cmpb	$31, 16(%esp)
	ja	L2057
	.p2align 4
	.p2align 3
L2240:
	movzbl	16(%esp), %edx
	testb	%dl, %dl
	je	L2519
	movzbl	%dl, %ebx
L2241:
	movl	%ebx, 16(%eax)
	jmp	L2519
L2082:
	cmpb	$0, 16(%esp)
	jne	L2270
	movl	292(%edx), %ecx
	movb	%cl, 16(%esp)
	testb	%cl, %cl
	je	L2519
L2270:
	movzbl	16(%esp), %ecx
	orl	$1048576, (%edx)
	movl	%ecx, %ebx
	movl	%ecx, 292(%edx)
	shrb	$4, %cl
	movl	%ebx, %edi
	movzbl	%cl, %esi
	andl	$15, %ebx
	andl	$15, %edi
	testb	$32, 2612(%eax)
	je	L2265
	movl	%edi, %eax
	cmpb	$15, %al
	jne	L2266
	testb	%cl, %cl
	je	L2266
	movl	$0, 284(%edx)
	movl	%esi, 288(%edx)
	jmp	L2519
L2090:
	testb	$16, 2612(%eax)
	je	L2172
	cmpb	$0, 16(%esp)
	jne	L2173
	movzbl	264(%edx), %eax
	movb	%al, 16(%esp)
L2174:
	orl	$256, (%edx)
	cmpb	$0, 8(%esp)
	je	L2177
	movzbl	16(%esp), %eax
	sall	$8, %eax
	movw	%ax, 220(%edx)
	movl	%eax, 224(%edx)
L2177:
	cmpb	$0, 1(%ecx)
	je	L2519
	movzbl	16(%esp), %ebx
	sall	$8, %ebx
	movl	%ebx, 224(%edx)
	jmp	L2519
L2058:
	movzbl	16(%esp), %eax
	addl	$-128, %eax
	cwtl
	movl	%eax, 40(%edx)
	jmp	L2519
L2096:
	cmpb	$0, 16(%esp)
	jne	L2133
	movl	2612(%eax), %ecx
	movl	352(%edx), %ebx
	testb	$16, %cl
	je	L2544
	testb	%bl, %bl
	jne	L2545
L2139:
	andl	$131072, %ecx
	je	L2142
	cmpb	$0, 8(%esp)
	je	L2546
L2142:
	movl	44(%edx), %ecx
	cmpl	1460(%eax), %ecx
	jnb	L2519
	imull	$764, %ecx, %ecx
	addl	1496(%eax), %ecx
	movl	36(%ecx), %esi
	testl	%esi, %esi
	jle	L2519
	movzbl	8(%esp), %ecx
	movl	%edx, 16(%esp)
	call	__ZL12do_toneportaP12context_dataP12channel_datai
	movl	16(%esp), %edx
	orl	$4, (%edx)
	jmp	L2519
L2045:
	testb	$16, 2612(%eax)
	je	L2247
	cmpb	$0, 16(%esp)
	jne	L2248
	movzbl	264(%edx), %ebx
L2249:
	orl	$8192, (%edx)
	movl	%ebx, 260(%edx)
	jmp	L2519
L2046:
	movl	16(%eax), %ecx
	testl	%ecx, %ecx
	je	L2519
	movss	420(%edx), %xmm1
	movss	LC37, %xmm0
	comiss	%xmm1, %xmm0
	jbe	L2519
	movzbl	16(%esp), %ebx
	xorps	%xmm0, %xmm0
	orl	$268435456, (%edx)
	cvtsi2ssl	%ebx, %xmm0
	movss	%xmm0, 424(%edx)
	subss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	16(%eax), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, 428(%edx)
	jmp	L2519
L2061:
	movl	12(%esp), %edi
	cmpl	704(%eax), %edi
	jnb	L2519
	movl	716(%eax), %edx
	movl	4(%edx,%edi,8), %edx
	cmpl	712(%eax), %edx
	jnb	L2519
	testl	%edx, %edx
	js	L2519
	imull	$136, %edx, %edx
	addl	720(%eax), %edx
	testb	$16, 44(%edx)
	je	L2519
	movl	88(%edx), %eax
	movl	%eax, %ecx
	orl	$8, %eax
	andl	$-9, %ecx
	cmpb	$0, 16(%esp)
	cmove	%ecx, %eax
	movl	%eax, 88(%edx)
	jmp	L2519
L2062:
	movl	348(%eax), %esi
	testl	%esi, %esi
	jne	L2519
	movl	$1, 332(%eax)
	movzbl	16(%esp), %ebx
	movl	%ebx, 344(%eax)
	jmp	L2519
L2063:
	movzbl	16(%esp), %ebx
	movl	%ebx, 384(%edx)
	jmp	L2519
L2054:
	testb	$16, 2612(%eax)
	je	L2235
	cmpb	$0, 16(%esp)
	jne	L2236
L2528:
	movzbl	264(%edx), %ecx
	.p2align 4
	.p2align 3
L2184:
	negl	%ecx
	orl	$64, (%edx)
	movl	%ecx, 256(%edx)
	jmp	L2519
L2059:
	movzbl	16(%esp), %ebx
	orl	$8192, (%edx)
	testb	%bl, %bl
	je	L2519
	movl	%ebx, %eax
	negl	%ebx
	shrb	$4, %al
	movzbl	%al, %eax
	cmove	%ebx, %eax
	movl	%eax, 260(%edx)
	jmp	L2519
L2060:
	testb	$16, 2612(%eax)
	je	L2240
	cmpb	$0, 16(%esp)
	jne	L2239
	movzbl	264(%edx), %edx
	movb	%dl, 16(%esp)
	jmp	L2240
L2043:
	testb	$16, 2612(%eax)
	je	L2255
	cmpb	$0, 16(%esp)
	jne	L2256
	movzbl	264(%edx), %ebx
L2257:
	orl	$33554432, (%edx)
	movl	%ebx, 268(%edx)
	jmp	L2519
L2047:
	movzbl	16(%esp), %ebx
	xorps	%xmm0, %xmm0
	orl	$268435456, (%edx)
	movl	$0x00000000, 428(%edx)
	cvtsi2ssl	%ebx, %xmm0
	movss	%xmm0, 420(%edx)
	jmp	L2519
L2048:
	movl	16(%esp), %ebx
	andl	$15, %ebx
	movl	%ebx, 432(%edx)
	jmp	L2519
L2041:
	testb	$16, 2612(%eax)
	je	L2259
	cmpb	$0, 16(%esp)
	jne	L2260
	movzbl	264(%edx), %ebx
L2261:
	negl	%ebx
	orl	$33554432, (%edx)
	movl	%ebx, 268(%edx)
	jmp	L2519
L2044:
	testb	$16, 2612(%eax)
	je	L2251
	cmpb	$0, 16(%esp)
	jne	L2252
	movzbl	264(%edx), %ebx
L2253:
	negl	%ebx
	orl	$8192, (%edx)
	movl	%ebx, 260(%edx)
	jmp	L2519
L2306:
	orl	$16777216, 4(%edx)
	jmp	L2519
L2307:
	andl	$-8388609, 4(%edx)
	jmp	L2519
L2308:
	orl	$8388608, 4(%edx)
	jmp	L2519
L2309:
	andl	$-4194305, 4(%edx)
	jmp	L2519
L2310:
	orl	$4194304, 4(%edx)
	jmp	L2519
L2311:
	testb	$-128, 2613(%eax)
	je	L2519
	movl	12(%esp), %edi
	cmpl	704(%eax), %edi
	jnb	L2519
	movl	716(%eax), %edx
	movl	4(%edx,%edi,8), %edx
	cmpl	712(%eax), %edx
	jnb	L2519
	testl	%edx, %edx
	js	L2519
	imull	$136, %edx, %edx
	addl	720(%eax), %edx
	movl	$3, 64(%edx)
	jmp	L2519
L2312:
	testb	$-128, 2613(%eax)
	je	L2519
	movl	12(%esp), %edi
	cmpl	704(%eax), %edi
	jnb	L2519
	movl	716(%eax), %edx
	movl	4(%edx,%edi,8), %edx
	cmpl	712(%eax), %edx
	jnb	L2519
	testl	%edx, %edx
	js	L2519
	imull	$136, %edx, %edx
	addl	720(%eax), %edx
	movl	$2, 64(%edx)
	jmp	L2519
L2313:
	testb	$-128, 2613(%eax)
	je	L2519
	movl	12(%esp), %edi
	cmpl	704(%eax), %edi
	jnb	L2519
	movl	716(%eax), %edx
	movl	4(%edx,%edi,8), %edx
	cmpl	712(%eax), %edx
	jnb	L2519
	testl	%edx, %edx
	js	L2519
	imull	$136, %edx, %edx
	addl	720(%eax), %edx
	movl	$1, 64(%edx)
	jmp	L2519
L2314:
	testb	$-128, 2613(%eax)
	je	L2519
	movl	12(%esp), %edi
	cmpl	704(%eax), %edi
	jnb	L2519
	movl	716(%eax), %edx
	movl	4(%edx,%edi,8), %edx
	cmpl	712(%eax), %edx
	jnb	L2519
	testl	%edx, %edx
	js	L2519
	imull	$136, %edx, %edx
	xorl	%ebx, %ebx
	addl	720(%eax), %edx
	movl	%ebx, 64(%edx)
	jmp	L2519
L2315:
	movl	$3, %ecx
L2530:
	movl	12(%esp), %edx
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
	jmp	__Z20libxmp_virt_pastnoteP12context_dataii
L2316:
	.cfi_restore_state
	movl	$2, %ecx
	jmp	L2530
L2317:
	xorl	%ecx, %ecx
	jmp	L2530
L2304:
	andl	$-16777217, 4(%edx)
	jmp	L2519
L2392:
	movl	2612(%eax), %eax
	movl	%eax, (%esp)
L2196:
	testb	$16, (%esp)
	je	L2228
	cmpb	$0, 4(%esp)
	je	L2528
	movzbl	4(%esp), %ecx
	movl	%ecx, 264(%edx)
	jmp	L2184
L2391:
	movl	2612(%eax), %eax
	movl	%eax, (%esp)
L2197:
	testb	$16, (%esp)
	je	L2225
	cmpb	$0, 4(%esp)
	je	L2526
	movzbl	4(%esp), %esi
	movl	%esi, 264(%edx)
	jmp	L2182
L2198:
	movzbl	4(%esp), %eax
	orl	$262144, (%edx)
	movl	$0, 240(%edx)
	movl	%eax, 232(%edx)
	addl	$1, %eax
	movl	%eax, 236(%edx)
	movl	$0, 244(%edx)
	jmp	L2519
L2390:
	movl	2612(%eax), %eax
	movl	%eax, (%esp)
L2199:
	movzbl	4(%esp), %ebx
	movl	(%esp), %eax
	sall	$4, %ebx
	movb	%bl, 16(%esp)
	jmp	L2169
L2200:
	movl	16(%esp), %ebx
	andl	$3, %ebx
	movl	%ebx, 132(%edx)
	jmp	L2519
L2201:
	movl	352(%eax), %edx
	movl	12(%esp), %edi
	leal	(%edx,%edi,8), %ecx
	cmpb	$0, 4(%esp)
	jne	L2222
	movl	8(%eax), %edx
	movl	%edx, (%ecx)
	testb	$4, 2615(%eax)
	je	L2519
	movl	%edx, 344(%eax)
	jmp	L2519
L2202:
	testb	$4, 2615(%eax)
	je	L2327
	cmpb	$0, 8(%esp)
	je	L2519
L2327:
	movzbl	4(%esp), %eax
	sall	$4, %eax
	movsbl	%al, %eax
	movl	%eax, 40(%edx)
	jmp	L2519
L2193:
	movzbl	4(%esp), %eax
	movl	%eax, 388(%edx)
	jmp	L2519
L2195:
	movzbl	4(%esp), %eax
	orl	$262144, (%edx)
	orl	$8, 8(%edx)
	movl	$16, 240(%edx)
	addl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, 232(%edx)
	movl	%eax, 236(%edx)
	jmp	L2519
L2204:
	movl	8(%edx), %eax
	movl	%eax, %ecx
	orb	$2, %ah
	andb	$-3, %ch
	cmpb	$0, 4(%esp)
	cmove	%ecx, %eax
	movl	%eax, 8(%edx)
	jmp	L2519
L2207:
	movl	2616(%eax), %ecx
	testl	%ecx, %ecx
	jne	L2519
	cmpl	$1, 2620(%eax)
	jne	L2519
	movl	4(%esp), %edx
	notl	%edx
	andl	$1, %edx
	movl	%edx, 1248(%eax)
	jmp	L2519
L2203:
	movl	16(%esp), %ebx
	andl	$3, %ebx
	movl	%ebx, 112(%edx)
	jmp	L2519
L2389:
	movl	2612(%eax), %eax
	movl	%eax, (%esp)
L2205:
	testb	$16, (%esp)
	je	L2216
	cmpb	$0, 4(%esp)
	jne	L2217
	movzbl	264(%edx), %eax
	movb	%al, 16(%esp)
	jmp	L2052
L2206:
	cmpb	$0, 4(%esp)
	jne	L2213
	movzbl	264(%edx), %eax
	movb	%al, 16(%esp)
	jmp	L2053
	.p2align 4,,10
	.p2align 3
L2520:
	movzbl	16(%esp), %ebx
	movl	%eax, %esi
	jmp	L2178
	.p2align 4,,10
	.p2align 3
L2181:
	cmpb	$15, %al
	jne	L2183
	testb	%cl, %cl
	jne	L2547
L2183:
	testb	%bl, %bl
	jne	L2521
	movl	264(%edx), %ecx
	movzbl	%cl, %ebx
	testb	%cl, %cl
	je	L2548
L2178:
	movl	%ebx, %ecx
	movl	%ebx, %eax
	andl	$15, %ecx
	shrb	$4, %al
	cmpb	$15, %cl
	jne	L2181
	testb	%al, %al
	je	L2181
	movl	%ebx, 264(%edx)
	movzbl	%al, %esi
	jmp	L2182
L2548:
	movl	%esi, %eax
L2180:
	movl	(%edx), %ecx
	movl	%ecx, %ebx
	orl	$1, %ebx
	movl	%ebx, (%edx)
	jmp	L2323
L2298:
	orl	$512, %esi
	movl	%edi, 304(%edx)
	movzbl	12(%esp), %ebx
	movl	%esi, (%edx)
	movzbl	%cl, %esi
	negl	%esi
	testb	$2, 2613(%eax)
	je	L2301
	testb	%cl, %cl
	cmovne	%esi, %ebx
	movl	%ebx, 296(%edx)
	jmp	L2519
L2243:
	cmpb	$1, %cl
	je	L2549
	movzbl	16(%esp), %ebx
	movl	%ebx, 20(%eax)
	jmp	L2245
L2287:
	cmpb	$0, 16(%esp)
	jne	L2290
	movzbl	251(%edx), %ecx
	movb	%cl, 16(%esp)
	jmp	L2289
L2107:
	cmpb	$0, 16(%esp)
	jne	L2112
	movzbl	328(%edx), %ebx
	movb	%bl, 16(%esp)
	jmp	L2109
L2275:
	cmpb	$0, 16(%esp)
	jne	L2278
	movzbl	380(%edx), %eax
	movb	%al, 16(%esp)
	jmp	L2277
L2172:
	cmpb	$0, 16(%esp)
	jne	L2175
	movzbl	228(%edx), %eax
	movb	%al, 16(%esp)
	jmp	L2174
L2127:
	orl	$8, (%edx)
	cmpb	$0, 16(%esp)
	jne	L2550
	movl	312(%edx), %eax
	testl	%eax, %eax
	jns	L2519
	negl	%eax
	movl	%eax, 312(%edx)
	jmp	L2519
L2235:
	cmpb	$0, 16(%esp)
	jne	L2237
	movzbl	276(%edx), %ecx
	jmp	L2184
L2247:
	cmpb	$0, 16(%esp)
	jne	L2250
	movzbl	272(%edx), %ebx
	jmp	L2249
L2191:
	movzbl	16(%esp), %ebx
	andl	$15, %ebx
	movb	%bl, 4(%esp)
	movzbl	16(%esp), %ebx
	shrb	$4, %bl
	movzbl	%bl, %esi
	jmp	*L2320(,%esi,4)
	.section .rdata,"dr"
	.align 4
L2320:
	.long	L2207
	.long	L2211
	.long	L2216
	.long	L2204
	.long	L2203
	.long	L2202
	.long	L2201
	.long	L2200
	.long	L2199
	.long	L2198
	.long	L2197
	.long	L2196
	.long	L2195
	.long	L2519
	.long	L2326
	.long	L2193
	.text
L2388:
	movl	2612(%eax), %eax
	movl	%eax, (%esp)
L2211:
	testb	$16, (%esp)
	jne	L2206
	cmpb	$0, 4(%esp)
	jne	L2215
	movzbl	360(%edx), %eax
	movb	%al, 16(%esp)
	jmp	L2053
L2216:
	cmpb	$0, 4(%esp)
	jne	L2219
	movzbl	364(%edx), %eax
	movb	%al, 16(%esp)
	jmp	L2052
	.p2align 4,,10
	.p2align 3
L2153:
	movzbl	16(%esp), %ecx
	movl	%ecx, 128(%edx)
	testb	$16, 2612(%eax)
	je	L2517
L2156:
	movl	%ecx, 264(%edx)
L2517:
	movzbl	16(%esp), %eax
	movl	%esi, (%edx)
	movl	%eax, %ecx
	andl	$15, %ecx
	jne	L2159
	shrb	$4, %al
	movl	%eax, %ebx
L2160:
	movzbl	%bl, %ebx
	movl	%ebx, 116(%edx)
	jmp	L2519
L2232:
	cmpb	$0, 16(%esp)
	jne	L2234
L2527:
	movzbl	276(%edx), %esi
	jmp	L2182
L2162:
	cmpb	$0, 16(%esp)
	jne	L2167
	movzbl	148(%edx), %eax
	movb	%al, 16(%esp)
	jmp	L2164
L2133:
	movzbl	16(%esp), %ebx
	movl	%ebx, 352(%edx)
	movl	2612(%eax), %ecx
	testb	$16, %cl
	je	L2137
L2136:
	movl	%ebx, 264(%edx)
	movl	2612(%eax), %ecx
L2137:
	andb	$4, %ch
	je	L2141
	movl	%ebx, 328(%edx)
L2141:
	movl	%ebx, 348(%edx)
	movl	2612(%eax), %ecx
	jmp	L2139
L2143:
	movzbl	16(%esp), %edi
	movl	%edi, 128(%edx)
	movl	%edi, %ecx
	testb	$16, 2612(%eax)
	je	L2551
L2146:
	movzbl	16(%esp), %eax
	movl	%ecx, 264(%edx)
	movl	%esi, (%edx)
	testb	$15, %al
	jne	L2149
L2523:
	shrb	$4, %al
	movl	%eax, %ebx
L2150:
	movzbl	%bl, %ebx
	movl	%ebx, 116(%edx)
	jmp	L2519
L2120:
	cmpb	$0, 16(%esp)
	jne	L2125
	movzbl	328(%edx), %ebx
	movb	%bl, 16(%esp)
	jmp	L2122
L2114:
	orl	$8, (%edx)
	cmpb	$0, 16(%esp)
	jne	L2552
	movl	312(%edx), %eax
	testl	%eax, %eax
	jle	L2519
	negl	%eax
	movl	%eax, 312(%edx)
	jmp	L2519
L2259:
	cmpb	$0, 16(%esp)
	jne	L2262
	movzbl	272(%edx), %ebx
	jmp	L2261
L2251:
	cmpb	$0, 16(%esp)
	jne	L2254
	movzbl	272(%edx), %ebx
	jmp	L2253
L2102:
	cmpb	$0, 16(%esp)
	jne	L2105
	movzbl	196(%edx), %ecx
	movb	%cl, 16(%esp)
	jmp	L2100
L2255:
	cmpb	$0, 16(%esp)
	jne	L2258
	movzbl	272(%edx), %ebx
	jmp	L2257
L2521:
	movb	%bl, 16(%esp)
	movl	%esi, %eax
	jmp	L2179
L2533:
	movl	340(%eax), %edx
	testl	%edx, %edx
	jne	L2519
	jmp	L2238
L2547:
	movl	%ebx, 264(%edx)
	movzbl	%cl, %ecx
	jmp	L2184
L2532:
	negl	%edi
	cmpb	$0, 12(%esp)
	cmove	%edi, %esi
	movl	%esi, 252(%edx)
	jmp	L2323
L2534:
	orb	$-128, 250(%edx)
	jmp	L2293
L2543:
	movl	44(%edx), %ecx
	testl	%ecx, %ecx
	js	L2272
	movl	1460(%eax), %esi
	cmpl	%esi, %ecx
	jge	L2273
	imull	$764, %ecx, %ecx
	addl	1496(%eax), %ecx
L2274:
	testl	%ecx, %ecx
	je	L2272
	testb	$2, 44(%ecx)
	je	L2272
	jmp	L2271
L2540:
	movl	16(%esp), %eax
	sall	$4, %eax
	andl	$240, %eax
	movl	%eax, 160(%edx)
	jmp	L2319
L2535:
	movl	%esi, (%edx)
	andl	$15, %ecx
	je	L2161
L2159:
	movzbl	%cl, %ecx
	movl	%ecx, 120(%edx)
L2161:
	movzbl	16(%esp), %ebx
	shrb	$4, %bl
	je	L2519
	jmp	L2160
L2163:
	movzbl	16(%esp), %eax
	movl	%ecx, (%edx)
	movl	%eax, 264(%edx)
	movl	%eax, %ebx
	andl	$15, %eax
	je	L2525
L2165:
	movzbl	%al, %eax
	movl	%eax, 140(%edx)
	jmp	L2168
L2551:
	movzbl	16(%esp), %eax
	movl	%esi, (%edx)
	testb	$15, %al
	je	L2523
	movl	%edi, %ecx
L2149:
	sall	$2, %ecx
	andl	$60, %ecx
	movl	%ecx, 120(%edx)
L2152:
	movzbl	16(%esp), %ebx
	shrb	$4, %bl
	je	L2519
	jmp	L2150
L2294:
	movzbl	16(%esp), %ebx
	andl	$15, %ebx
L2118:
	movzbl	%bl, %eax
	movl	%eax, 16(%esp)
	fildl	16(%esp)
	fmuls	LC35
	fstpl	320(%edx)
	jmp	L2519
L2301:
	cmpb	$0, 12(%esp)
	cmove	%esi, %ebx
	movl	%ebx, 296(%edx)
	jmp	L2519
L2265:
	movl	$0, 288(%edx)
	negl	%ebx
	testb	%cl, %cl
	cmove	%ebx, %esi
	movl	%esi, 284(%edx)
	jmp	L2519
L2236:
	movzbl	16(%esp), %ecx
	movl	%ecx, 264(%edx)
	jmp	L2184
L2239:
	movzbl	16(%esp), %ebx
	movl	%ebx, 264(%edx)
	jmp	L2241
L2544:
	testb	%bl, %bl
	je	L2139
	movzbl	%bl, %ebx
	jmp	L2137
L2167:
	movzbl	16(%esp), %eax
	movl	%ecx, (%edx)
	movl	%eax, 148(%edx)
	movl	%eax, %ebx
	andl	$15, %eax
	jne	L2165
L2525:
	movl	%ebx, %ecx
	shrb	$4, %cl
	movl	%ecx, %ebx
	jmp	L2166
L2173:
	movzbl	16(%esp), %eax
	movl	%eax, 264(%edx)
	jmp	L2174
L2278:
	movzbl	16(%esp), %eax
	movl	%eax, 380(%edx)
	jmp	L2277
L2192:
	movzbl	16(%esp), %esi
	movl	%esi, %ebx
	movl	%esi, 264(%edx)
	andl	$15, %ebx
	movb	%bl, 4(%esp)
	movzbl	16(%esp), %ebx
	shrb	$4, %bl
	movzbl	%bl, %esi
	jmp	*L2208(,%esi,4)
	.section .rdata,"dr"
	.align 4
L2208:
	.long	L2207
	.long	L2388
	.long	L2389
	.long	L2204
	.long	L2203
	.long	L2202
	.long	L2201
	.long	L2200
	.long	L2390
	.long	L2198
	.long	L2391
	.long	L2392
	.long	L2195
	.long	L2519
	.long	L2326
	.long	L2193
	.text
L2250:
	movzbl	16(%esp), %ebx
	movl	%ebx, 272(%edx)
	jmp	L2249
L2233:
	movzbl	16(%esp), %esi
	movl	%esi, 264(%edx)
	jmp	L2182
L2252:
	movzbl	16(%esp), %ebx
	movl	%ebx, 264(%edx)
	jmp	L2253
L2262:
	movzbl	16(%esp), %ebx
	movl	%ebx, 272(%edx)
	jmp	L2261
L2108:
	movzbl	16(%esp), %esi
	movl	%esi, 264(%edx)
	movl	2612(%eax), %ecx
	testb	$32, %cl
	jne	L2110
L2511:
	orl	$8, (%edx)
L2113:
	movl	%esi, %ecx
	negl	%ecx
	movl	%ecx, 312(%edx)
	testb	$4, 2613(%eax)
	je	L2519
	movl	%esi, 352(%edx)
	jmp	L2519
L2125:
	movzbl	16(%esp), %esi
	movl	%esi, 328(%edx)
	movl	2612(%eax), %ecx
	testb	$32, %cl
	jne	L2123
L2512:
	orl	$8, (%edx)
L2126:
	movl	%esi, 312(%edx)
	testb	$4, 2613(%eax)
	je	L2519
	movl	%esi, 352(%edx)
	jmp	L2519
L2234:
	movzbl	16(%esp), %esi
	movl	%esi, 276(%edx)
	jmp	L2182
L2288:
	movzbl	16(%esp), %ecx
	movl	%ecx, 264(%edx)
	jmp	L2289
L2103:
	movzbl	16(%esp), %eax
	movl	%eax, 264(%edx)
	jmp	L2106
L2254:
	movzbl	16(%esp), %ebx
	movl	%ebx, 272(%edx)
	jmp	L2253
L2546:
	movl	344(%edx), %edi
	testl	%edi, %edi
	je	L2519
	jmp	L2142
L2121:
	movzbl	16(%esp), %esi
	movl	%esi, 264(%edx)
	movl	2612(%eax), %ecx
	testb	$32, %cl
	jne	L2123
	jmp	L2512
L2175:
	movzbl	16(%esp), %eax
	movl	%eax, 228(%edx)
	jmp	L2174
L2538:
	andl	$15, %ecx
	movl	%esi, (%edx)
	je	L2152
	movzbl	16(%esp), %edi
	movl	%edi, %ecx
	jmp	L2149
L2290:
	movzbl	16(%esp), %ecx
	movb	%cl, 251(%edx)
	jmp	L2289
L2258:
	movzbl	16(%esp), %ebx
	movl	%ebx, 272(%edx)
	jmp	L2257
L2283:
	movzbl	16(%esp), %ebx
	movl	%ebx, 264(%edx)
	jmp	L2284
L2276:
	movzbl	16(%esp), %eax
	movl	%eax, 264(%edx)
	jmp	L2277
L2112:
	movzbl	16(%esp), %esi
	movl	%esi, 328(%edx)
	movl	2612(%eax), %ecx
	testb	$32, %cl
	jne	L2110
	jmp	L2511
L2260:
	movzbl	16(%esp), %ebx
	movl	%ebx, 264(%edx)
	jmp	L2261
L2248:
	movzbl	16(%esp), %ebx
	movl	%ebx, 264(%edx)
	jmp	L2249
L2237:
	movzbl	16(%esp), %ecx
	movl	%ecx, 276(%edx)
	jmp	L2184
L2256:
	movzbl	16(%esp), %ebx
	movl	%ebx, 264(%edx)
	jmp	L2257
L2105:
	movzbl	16(%esp), %eax
	movl	%eax, 196(%edx)
	jmp	L2106
L2541:
	movl	$0, 372(%edx)
	movzbl	%cl, %ebx
	movl	%ebx, 376(%edx)
	jmp	L2519
L2549:
	movl	16(%esp), %ebx
	orl	$2097152, (%edx)
	andl	$15, %ebx
	movl	%ebx, 400(%edx)
	movl	20(%eax), %ebx
	jmp	L2245
L2537:
	cmpb	$-127, (%ecx)
	jne	L2170
	cmpb	$14, 3(%ecx)
	jne	L2170
	movzbl	4(%ecx), %eax
	shrb	$4, %al
	cmpb	$13, %al
	jne	L2170
	jmp	L2171
	.p2align 4,,10
	.p2align 3
L2273:
	movl	9820(%eax), %edi
	addl	%esi, %edi
	cmpl	%edi, %ecx
	jge	L2272
	subl	%esi, %ecx
	imull	$764, %ecx, %ecx
	addl	9828(%eax), %ecx
	jmp	L2274
L2266:
	cmpb	$15, %cl
	jne	L2267
	movl	%edi, %eax
	testb	%al, %al
	je	L2267
	movl	$0, 284(%edx)
	negl	%ebx
	movl	%ebx, 288(%edx)
	jmp	L2519
L2550:
	movzbl	16(%esp), %esi
	jmp	L2126
L2552:
	movzbl	16(%esp), %esi
	jmp	L2113
L2117:
	movzbl	16(%esp), %ebx
	orl	$128, (%edx)
	andl	$15, %ebx
	jmp	L2118
L2130:
	movzbl	16(%esp), %ebx
	orl	$128, (%edx)
	andl	$15, %ebx
	jmp	L2131
L2542:
	movl	$0, 372(%edx)
	negl	%eax
	movl	%eax, 376(%edx)
	jmp	L2519
L2267:
	movl	$0, 288(%edx)
	negl	%ebx
	testb	%cl, %cl
	cmove	%ebx, %esi
	movl	%esi, 284(%edx)
	jmp	L2519
L2536:
	movzbl	%cl, %ecx
	jmp	L2156
L2545:
	movzbl	%bl, %ebx
	jmp	L2136
L2539:
	movzbl	%cl, %ecx
	jmp	L2146
L2222:
	movl	4(%ecx), %edx
	testl	%edx, %edx
	je	L2223
	subl	$1, %edx
	movl	%edx, 4(%ecx)
	je	L2224
	movl	12(%esp), %edx
	addl	$1, %edx
	movl	%edx, 348(%eax)
	jmp	L2519
L2228:
	cmpb	$0, 4(%esp)
	jne	L2230
	movzbl	280(%edx), %ecx
	jmp	L2184
L2225:
	cmpb	$0, 4(%esp)
	je	L2527
	movzbl	4(%esp), %esi
	movl	%esi, 276(%edx)
	jmp	L2182
L2230:
	movzbl	4(%esp), %ecx
	movl	%ecx, 280(%edx)
	jmp	L2184
L2217:
	movzbl	4(%esp), %eax
	movl	%eax, 264(%edx)
	movb	%al, 16(%esp)
	jmp	L2218
L2215:
	movzbl	4(%esp), %eax
	movl	%eax, 360(%edx)
	movb	%al, 16(%esp)
	jmp	L2214
L2219:
	movzbl	4(%esp), %eax
	movl	%eax, 364(%edx)
	movb	%al, 16(%esp)
	jmp	L2218
L2213:
	movzbl	4(%esp), %eax
	movl	%eax, 264(%edx)
	movb	%al, 16(%esp)
	jmp	L2214
L2223:
	movzbl	4(%esp), %edx
	movl	%edx, 4(%ecx)
	movl	12(%esp), %edx
	addl	$1, %edx
	movl	%edx, 348(%eax)
	jmp	L2519
L2224:
	testb	$1, 2612(%eax)
	je	L2519
	movl	352(%eax), %edx
	movl	8(%eax), %eax
	movl	12(%esp), %edi
	addl	$1, %eax
	movl	%eax, (%edx,%edi,8)
	jmp	L2519
	.cfi_endproc
LFE151:
	.p2align 4
	.def	__ZL10set_periodP12context_dataiP17xmp_subinstrumentP12channel_datai;	.scl	3;	.type	32;	.endef
__ZL10set_periodP12context_dataiP17xmp_subinstrumentP12channel_datai:
LFB156:
	.cfi_startproc
	testl	%ecx, %ecx
	je	L2568
	testl	%edx, %edx
	jns	L2572
L2568:
	ret
	.p2align 4,,10
	.p2align 3
L2572:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-8, %esp
	subl	$8, %esp
	movl	8(%ebp), %ecx
	movl	%eax, 4(%esp)
	movl	40(%ecx), %ecx
	movl	%edx, (%esp)
	call	__Z21libxmp_note_to_periodP12context_dataiid.isra.0
	movl	8(%ebp), %eax
	fldl	24(%eax)
	movl	4(%esp), %eax
	testb	$4, 2612(%eax)
	jne	L2573
	fxch	%st(1)
	movl	8(%ebp), %eax
	fstl	336(%eax)
	jmp	L2556
	.p2align 4,,10
	.p2align 3
L2575:
	fxch	%st(1)
	jmp	L2556
	.p2align 4,,10
	.p2align 3
L2576:
	fxch	%st(1)
	.p2align 4
	.p2align 3
L2556:
	fld1
	fcomip	%st(2), %st
	fstp	%st(1)
	ja	L2557
	movl	12(%ebp), %eax
	testl	%eax, %eax
	jne	L2574
L2557:
	movl	8(%ebp), %eax
	fstpl	24(%eax)
	jmp	L2553
	.p2align 4,,10
	.p2align 3
L2574:
	fstp	%st(0)
L2553:
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L2573:
	.cfi_restore_state
	movl	(%esp), %edx
	testl	%edx, %edx
	je	L2575
	testb	$1, 12(%ebp)
	je	L2576
	fxch	%st(1)
	movl	8(%ebp), %eax
	fstl	336(%eax)
	fld1
	fcomip	%st(2), %st
	fstp	%st(1)
	ja	L2557
	fstp	%st(0)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE156:
	.p2align 4
	.def	__ZL14read_event_modP12context_dataP9xmp_eventi.isra.0;	.scl	3;	.type	32;	.endef
__ZL14read_event_modP12context_dataP9xmp_eventi.isra.0:
LFB159:
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
	movl	%edx, %esi
	pushl	%ebx
	.cfi_offset 3, -20
	imull	$480, %ecx, %ebx
	andl	$-8, %esp
	subl	$56, %esp
	addl	376(%eax), %ebx
	movl	$0, (%ebx)
	movzbl	3(%edx), %eax
	movl	%ecx, 44(%esp)
	subl	$3, %eax
	movl	$1, 52(%esp)
	testb	$-3, %al
	je	L2578
	movzbl	5(%edx), %eax
	subl	$3, %eax
	testb	$-3, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 52(%esp)
L2578:
	movzbl	1(%esi), %eax
	testb	%al, %al
	je	L2647
	leal	-1(%eax), %ecx
	xorl	%edx, %edx
	movl	$2048, %eax
	andl	$-1028, 8(%ebx)
	movl	%edx, 4(%ebx)
	movl	%ecx, %edx
	movl	%ecx, 40(%esp)
	movl	$65536, 68(%ebx)
	movl	%eax, (%ebx)
	movl	$0, 220(%ebx)
	cmpl	1460(%edi), %ecx
	jnb	L2581
	imull	$764, %ecx, %ecx
	movl	1496(%edi), %eax
	movl	%ecx, 36(%esp)
	movl	36(%eax,%ecx), %ecx
	testl	%ecx, %ecx
	jle	L2581
	movzbl	(%esi), %ecx
	movl	%edi, %eax
	movb	%cl, 48(%esp)
	subl	$1, %ecx
	call	__ZL17get_subinstrumentP12context_dataii
	movl	52(%esp), %edx
	testl	%edx, %edx
	je	L2582
	testl	%eax, %eax
	je	L2652
	cmpb	$0, 92(%ebx)
	jne	L2648
	movl	(%eax), %eax
	movl	%eax, 76(%ebx)
	.p2align 4
	.p2align 3
L2647:
	movzbl	(%esi), %eax
	movb	%al, 48(%esp)
L2648:
	movl	44(%ebx), %eax
	movl	$0, 32(%esp)
	movl	$0, 36(%esp)
	movl	%eax, 40(%esp)
L2580:
	cmpb	$0, 48(%esp)
	je	L2651
	orl	$65536, (%ebx)
	movzbl	(%esi), %eax
	cmpb	$-127, %al
	je	L2653
	movl	52(%esp), %ecx
	testl	%ecx, %ecx
	jne	L2651
	leal	-1(%eax), %ecx
	movl	%eax, 48(%esp)
	cmpl	$120, %ecx
	ja	L2651
	andl	$-5, 8(%ebx)
	movl	40(%esp), %eax
	movl	%ecx, 16(%ebx)
	cmpl	1460(%edi), %eax
	jnb	L2592
	imull	$764, %eax, %eax
	addl	1496(%edi), %eax
	movl	36(%eax), %edx
	movl	%edx, 28(%esp)
	testl	%edx, %edx
	jle	L2592
	movl	48(%esp), %edx
	movl	%eax, 24(%esp)
	movzbl	510(%eax,%edx,2), %eax
	cmpl	$255, %eax
	je	L2592
	cmpl	%eax, 28(%esp)
	jle	L2592
	movl	24(%esp), %edx
	sall	$6, %eax
	addl	756(%edx), %eax
	testb	$1, 36(%esp)
	jne	L2592
	testl	%eax, %eax
	je	L2592
	movl	%ecx, %edx
	addl	12(%eax), %edx
	movl	%eax, 36(%esp)
	movl	%edx, %eax
	movl	24(%esp), %edx
	movsbl	513(%edx,%ecx,2), %edx
	addl	%edx, %eax
	movl	%eax, 48(%esp)
	movl	36(%esp), %eax
	movl	40(%eax), %edx
	movl	1464(%edi), %eax
	cmpl	%eax, %edx
	jnb	L2588
	movl	%edx, 36(%esp)
	imull	$52, %edx, %edx
	addl	1500(%edi), %edx
	movl	48(%edx), %edx
	testl	%edx, %edx
	je	L2588
	cmpl	%eax, 36(%esp)
	movl	36(%esp), %eax
	setl	%dl
	notl	%eax
	shrl	$31, %eax
	testb	%al, %dl
	je	L2588
	movl	48(%esp), %eax
	movl	$0, 20(%esp)
	movl	40(%esp), %ecx
	movl	44(%esp), %edx
	movl	$0, 16(%esp)
	movl	%eax, 4(%esp)
	movl	36(%esp), %eax
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edi, %eax
	movl	$0, 8(%esp)
	call	__Z20libxmp_virt_setpatchP12context_dataiiiiiiii
	movl	36(%esp), %eax
	movl	16(%ebx), %ecx
	movl	%eax, 52(%ebx)
	movl	44(%ebx), %eax
	movl	%eax, 40(%esp)
	jmp	L2588
	.p2align 4,,10
	.p2align 3
L2651:
	movl	$-1, 48(%esp)
	movl	16(%ebx), %ecx
L2588:
	movl	40(%esp), %edx
	movl	%edi, %eax
	call	__ZL17get_subinstrumentP12context_dataii
	movl	52(%esp), %ecx
	movl	48(%esp), %edx
	movl	%ebx, (%esp)
	movl	%eax, 36(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, %ecx
	movl	%edi, %eax
	call	__ZL19set_effect_defaultsP12context_dataiP17xmp_subinstrumentP12channel_datai
	cmpb	$0, 1(%esi)
	je	L2593
	testl	%ecx, %ecx
	jne	L2654
L2593:
	movzbl	2(%esi), %eax
	testb	%al, %al
	jne	L2602
L2595:
	movl	%esi, (%esp)
	movl	44(%esp), %ecx
	movl	%ebx, %edx
	movl	%edi, %eax
	movl	$1, 4(%esp)
	call	__Z17libxmp_process_fxP12context_dataP12channel_dataiP9xmp_eventi
	movl	%esi, (%esp)
	movl	44(%esp), %ecx
	movl	%ebx, %edx
	movl	$0, 4(%esp)
	movl	%edi, %eax
	call	__Z17libxmp_process_fxP12context_dataP12channel_dataiP9xmp_eventi
	movl	52(%esp), %eax
	movl	36(%esp), %esi
	movl	%ebx, (%esp)
	movl	48(%esp), %edx
	movl	%eax, 4(%esp)
	movl	%esi, %ecx
	movl	%edi, %eax
	call	__ZL10set_periodP12context_dataiP17xmp_subinstrumentP12channel_datai
	testl	%esi, %esi
	je	L2577
L2601:
	movl	48(%esp), %eax
	testl	%eax, %eax
	jns	L2655
L2597:
	movl	(%ebx), %eax
	testb	$1, %ah
	je	L2598
L2657:
	testb	$4, 2612(%edi)
	jne	L2599
	testb	$2, 32(%edi)
	je	L2600
L2599:
	movl	224(%ebx), %edx
	addl	%edx, 220(%ebx)
L2600:
	andb	$-2, %ah
	movl	%eax, (%ebx)
L2598:
	movl	32(%esp), %eax
	testl	%eax, %eax
	je	L2577
	testb	$16, 1(%ebx)
	jne	L2577
	cmpb	$0, 92(%ebx)
	jne	L2577
	movl	36(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 76(%ebx)
L2577:
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
L2654:
	.cfi_restore_state
	movl	40(%esp), %eax
	cmpl	1460(%edi), %eax
	jnb	L2594
	imull	$764, %eax, %eax
	addl	1496(%edi), %eax
	movl	36(%eax), %edx
	testl	%edx, %edx
	jle	L2594
	movl	$-1, %eax
	andl	$-17, 8(%ebx)
	movl	%eax, 96(%ebx)
	movl	%eax, 100(%ebx)
	movl	$-1, 104(%ebx)
L2594:
	movzbl	2(%esi), %eax
	testb	%al, %al
	je	L2656
L2602:
	subl	$1, %eax
	orl	$4096, (%ebx)
	andl	$-2, 4(%ebx)
	movl	%eax, 76(%ebx)
	jmp	L2595
	.p2align 4,,10
	.p2align 3
L2655:
	movl	%eax, 12(%ebx)
	movl	44(%esp), %esi
	cmpl	704(%edi), %esi
	jnb	L2597
	movl	716(%edi), %eax
	movl	4(%eax,%esi,8), %edx
	cmpl	712(%edi), %edx
	jnb	L2597
	testl	%edx, %edx
	js	L2597
	fildl	220(%ebx)
	movl	%edi, %eax
	fstpl	(%esp)
	call	__Z21libxmp_mixer_voiceposP12context_dataidi.constprop.0
	movl	(%ebx), %eax
	testb	$1, %ah
	je	L2598
	jmp	L2657
	.p2align 4,,10
	.p2align 3
L2581:
	movl	44(%esp), %edx
	movl	%edi, %eax
	call	__Z24libxmp_virt_resetchannelP12context_datai
	movzbl	(%esi), %eax
	movl	$1, 32(%esp)
	movl	$1, 36(%esp)
	movb	%al, 48(%esp)
	movl	44(%ebx), %eax
	movl	%eax, 40(%esp)
	jmp	L2580
	.p2align 4,,10
	.p2align 3
L2653:
	orl	$1026, 8(%ebx)
	movl	16(%ebx), %ecx
	movl	$0, 32(%esp)
	movl	$-1, 48(%esp)
	jmp	L2588
	.p2align 4,,10
	.p2align 3
L2656:
	movl	$1, 4(%esp)
	movl	44(%esp), %ecx
	movl	%ebx, %edx
	movl	%edi, %eax
	movl	%esi, (%esp)
	call	__Z17libxmp_process_fxP12context_dataP12channel_dataiP9xmp_eventi
	movl	%esi, (%esp)
	movl	44(%esp), %ecx
	movl	%ebx, %edx
	movl	$0, 4(%esp)
	movl	%edi, %eax
	call	__Z17libxmp_process_fxP12context_dataP12channel_dataiP9xmp_eventi
	movl	52(%esp), %eax
	movl	36(%esp), %ecx
	movl	%ebx, (%esp)
	movl	48(%esp), %edx
	movl	%eax, 4(%esp)
	movl	%edi, %eax
	call	__ZL10set_periodP12context_dataiP17xmp_subinstrumentP12channel_datai
	jmp	L2601
	.p2align 4,,10
	.p2align 3
L2582:
	movl	40(%esp), %edx
	movl	36(%esp), %ecx
	movl	%edx, 44(%ebx)
	movl	1496(%edi), %edx
	movl	40(%edx,%ecx), %edx
	movl	%edx, 72(%ebx)
	testl	%eax, %eax
	je	L2649
	movl	2612(%edi), %edx
	andl	$4, %edx
	movl	%edx, 36(%esp)
	je	L2658
	movl	16(%eax), %eax
	movl	%eax, 40(%ebx)
L2649:
	movzbl	(%esi), %eax
	movl	$0, 36(%esp)
	movl	$1, 32(%esp)
	movb	%al, 48(%esp)
	jmp	L2580
	.p2align 4,,10
	.p2align 3
L2658:
	movzbl	(%esi), %eax
	movl	$1, 32(%esp)
	movb	%al, 48(%esp)
	jmp	L2580
	.p2align 4,,10
	.p2align 3
L2592:
	movl	$0, (%ebx)
	movl	$0, 32(%esp)
	movl	$-1, 48(%esp)
	jmp	L2588
	.p2align 4,,10
	.p2align 3
L2652:
	movl	44(%ebx), %eax
	movl	$0, 36(%esp)
	movl	%eax, 40(%esp)
	movl	52(%esp), %eax
	movl	%eax, 32(%esp)
	jmp	L2580
	.cfi_endproc
LFE159:
	.p2align 4
	.globl	__ZL12get_envelopeP12xmp_envelopeii.lto_priv.0
	.def	__ZL12get_envelopeP12xmp_envelopeii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL12get_envelopeP12xmp_envelopeii.lto_priv.0:
LFB163:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, (%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%edx, %eax
	movl	%ecx, %edx
	testl	%eax, %eax
	js	L2662
	testb	$1, (%ebx)
	je	L2662
	movl	4(%ebx), %ecx
	testl	%ecx, %ecx
	jle	L2662
	movl	%edi, 8(%esp)
	leal	-2(%ecx,%ecx), %edx
	.cfi_offset 7, -12
	leal	28(%ebx), %edi
	movl	%esi, 4(%esp)
	.cfi_offset 6, -16
	movswl	24(%ebx,%ecx,4), %esi
	cmpl	%esi, %eax
	jge	L2667
	cmpl	$1, %ecx
	je	L2667
	movl	%ebp, 12(%esp)
	.cfi_offset 5, -8
	.p2align 4
	.p2align 4
	.p2align 3
L2663:
	movl	%edx, %esi
	subl	$2, %edx
	movswl	28(%ebx,%edx,2), %ecx
	je	L2668
	cmpl	%ecx, %eax
	jl	L2663
L2668:
	movswl	(%edi,%esi,2), %edx
	movswl	-2(%edi,%esi,2), %ebx
	cmpl	%edx, %eax
	movl	%edx, %ebp
	cmovle	%eax, %ebp
	cmpl	%ebp, %ecx
	jg	L2681
	movswl	2(%edi,%esi,2), %esi
	cmpl	%edx, %ecx
	je	L2666
	subl	%ebx, %esi
	subl	%ecx, %eax
	movl	8(%esp), %edi
	.cfi_restore 7
	movl	12(%esp), %ebp
	.cfi_restore 5
	imull	%esi, %eax
	movl	%edx, %esi
	subl	%ecx, %esi
	cltd
	idivl	%esi
	movl	4(%esp), %esi
	.cfi_restore 6
	addl	%eax, %ebx
	movl	%ebx, %eax
	movl	(%esp), %ebx
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2662:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %ebx
L2659:
	movl	%ebx, %eax
	movl	(%esp), %ebx
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2681:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	4(%esp), %esi
	.cfi_restore 6
	movl	8(%esp), %edi
	.cfi_restore 7
	movl	12(%esp), %ebp
	.cfi_restore 5
	jmp	L2659
	.p2align 4,,10
	.p2align 3
L2667:
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movswl	2(%edi,%edx,2), %ebx
	movl	4(%esp), %esi
	.cfi_restore 6
	movl	8(%esp), %edi
	.cfi_restore 7
	movl	%ebx, %eax
	movl	(%esp), %ebx
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2666:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%esi, %ebx
	movl	8(%esp), %edi
	.cfi_restore 7
	movl	4(%esp), %esi
	.cfi_restore 6
	movl	12(%esp), %ebp
	.cfi_restore 5
	jmp	L2659
	.cfi_endproc
LFE163:
	.p2align 4
	.globl	__ZL15update_envelopeP12xmp_envelopeiiii.lto_priv.0
	.def	__ZL15update_envelopeP12xmp_envelopeiiii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL15update_envelopeP12xmp_envelopeiiii.lto_priv.0:
LFB164:
	.cfi_startproc
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	%ebp, 36(%esp)
	.cfi_offset 5, -8
	movl	%ecx, %ebp
	movl	%ebx, 24(%esp)
	cmpl	$65534, %edx
	.cfi_offset 3, -20
	jg	L2683
	addl	$1, %edx
	js	L2705
L2683:
	movl	(%eax), %ecx
	testb	$1, %cl
	je	L2686
	movl	4(%eax), %ebx
	testl	%ebx, %ebx
	jle	L2686
	movl	%ecx, %ebx
	movl	%edi, 32(%esp)
	andl	$2, %ecx
	andl	$4, %ebx
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	movl	20(%eax), %ebx
	movl	%ebx, 16(%esp)
	movl	24(%eax), %ebx
	movl	%ebx, 12(%esp)
	movl	12(%eax), %ebx
	addl	%ebx, %ebx
	movl	%ebx, 8(%esp)
	movl	%ecx, %ebx
	movl	48(%esp), %ecx
	shrl	%ebx
	andl	$1, %ebx
	testl	%ecx, %ecx
	.cfi_offset 7, -12
	je	L2687
	movl	16(%eax), %edi
	leal	(%edi,%edi), %ecx
	testb	$1, 44(%esp)
	je	L2688
	testb	%bl, %bl
	je	L2688
	movswl	28(%eax,%ecx,2), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %edx
	je	L2735
	cmpl	$1, %ebp
	jne	L2734
L2690:
	movl	4(%esp), %edi
	testl	%edi, %edi
	je	L2734
	movl	12(%esp), %edi
	movswl	28(%eax,%edi,4), %ecx
	cmpl	%ecx, %edx
	jle	L2734
	movl	16(%esp), %edi
	movswl	28(%eax,%edi,4), %ebx
	movl	32(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L2682
	.p2align 4,,10
	.p2align 3
L2687:
	.cfi_restore_state
	movl	4(%esp), %edi
	movl	%esi, 28(%esp)
	.cfi_offset 6, -16
	movl	12(%esp), %esi
	shrl	$2, %edi
	movl	%edi, %ecx
	addl	%esi, %esi
	andb	%cl, %bl
	movl	%esi, 20(%esp)
	movb	%bl, 12(%esp)
	jne	L2736
	movl	4(%esp), %ebx
	testl	%ebx, %ebx
	jne	L2694
	movl	(%esp), %ecx
	testl	%ecx, %ecx
	je	L2732
	movl	8(%esp), %esi
	movswl	28(%eax,%esi,2), %ebx
	leal	1(%ebx), %eax
	cmpl	%eax, %edx
	jle	L2737
L2732:
	movl	28(%esp), %esi
	.cfi_restore 6
L2734:
	movl	32(%esp), %edi
	.cfi_restore 7
L2686:
	movl	%edx, %ebx
L2682:
	movl	%ebx, %eax
	movl	36(%esp), %ebp
	movl	24(%esp), %ebx
	addl	$40, %esp
	.cfi_restore 3
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2736:
	.cfi_def_cfa_offset 44
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpl	8(%esp), %esi
	movl	%ebp, %ecx
	movswl	28(%eax,%esi,2), %edi
	sete	%bl
	xorl	$1, %ecx
	andl	%ecx, %ebx
	leal	1(%edi), %ecx
	movl	%edi, %esi
	xorl	$1, %ebx
	movb	%bl, 12(%esp)
	cmpl	%ecx, %edx
	jle	L2692
	movzbl	%bl, %ebx
	movb	$0, 12(%esp)
	leal	(%ebx,%ebx), %edi
	movl	%edx, %ebx
	movl	%edi, 48(%esp)
L2693:
	cmpl	%ebx, %esi
	jg	L2733
	movl	8(%esp), %edi
	cmpl	%edi, 20(%esp)
	setne	%dl
	orb	12(%esp), %dl
	jne	L2700
	testb	$2, 48(%esp)
	jne	L2733
L2700:
	movl	16(%esp), %esi
	movl	32(%esp), %edi
	.cfi_restore 7
	movswl	28(%eax,%esi,4), %ebx
	movl	28(%esp), %esi
	.cfi_restore 6
	jmp	L2682
	.p2align 4,,10
	.p2align 3
L2688:
	.cfi_offset 7, -12
	andl	$1, %ebp
	jne	L2690
	testb	%bl, %bl
	je	L2690
	movswl	28(%eax,%ecx,2), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %edx
	jne	L2734
	movl	%esi, 28(%esp)
	.cfi_offset 6, -16
	movl	8(%esp), %esi
	movl	32(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movswl	28(%eax,%esi,2), %ebx
	movl	28(%esp), %esi
	.cfi_restore 6
	jmp	L2682
	.p2align 4,,10
	.p2align 3
L2737:
	.cfi_restore_state
	cmpl	%ebx, %edx
	cmovle	%edx, %ebx
	cmpl	$1, %ebp
	je	L2732
L2733:
	movl	28(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	32(%esp), %edi
	.cfi_restore 7
	jmp	L2682
	.p2align 4,,10
	.p2align 3
L2692:
	.cfi_restore_state
	cmpb	$0, 12(%esp)
	je	L2702
	movl	8(%esp), %edi
	movswl	28(%eax,%edi,2), %ebx
	leal	1(%ebx), %ecx
	cmpl	%ecx, %edx
	jle	L2723
	movb	$0, 12(%esp)
	movl	%edx, %ebx
	movl	$2, 48(%esp)
L2697:
	movl	20(%esp), %esi
	movswl	28(%eax,%esi,2), %edi
	movl	%edi, %esi
	jmp	L2693
	.p2align 4,,10
	.p2align 3
L2702:
	movl	%ebp, %ebx
	xorl	$1, %ebx
	andl	$1, %ebx
	movb	%bl, 12(%esp)
	movl	%edx, %ebx
	jmp	L2697
L2705:
	.cfi_restore 6
	.cfi_restore 7
	movl	$-1, %ebx
	jmp	L2682
	.p2align 4,,10
	.p2align 3
L2735:
	.cfi_offset 7, -12
	movl	8(%esp), %edi
	movswl	28(%eax,%edi,2), %ebx
	movl	32(%esp), %edi
	.cfi_restore 7
	jmp	L2682
	.p2align 4,,10
	.p2align 3
L2723:
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpl	%ebx, %edx
	movzbl	12(%esp), %ecx
	movl	$2, 48(%esp)
	cmovle	%edx, %ebx
	cmpl	$1, %ebp
	cmove	%edx, %ebx
	movl	$0, %edx
	cmove	%edx, %ecx
	movb	%cl, 12(%esp)
	jmp	L2697
L2694:
	movl	20(%esp), %edi
	movswl	28(%eax,%edi,2), %esi
	leal	1(%esi), %ebx
	cmpl	%ebx, %edx
	jle	L2702
	movl	(%esp), %edi
	movl	%edx, %ebx
	movl	%edi, 48(%esp)
	jmp	L2693
	.cfi_endproc
LFE164:
	.p2align 4
	.globl	__ZL18execute_midi_macroP12context_dataP12channel_dataiP10midi_macroi.lto_priv.0
	.def	__ZL18execute_midi_macroP12context_dataP12channel_dataiP10midi_macroi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL18execute_midi_macroP12context_dataP12channel_dataiP10midi_macroi.lto_priv.0:
LFB167:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$36, %esp
	movl	%ebx, -12(%ebp)
	.cfi_offset 3, -20
	movl	12(%ebp), %ebx
	movl	%edi, -4(%ebp)
	.cfi_offset 7, -12
	movl	%edx, %edi
	movl	8(%ebp), %edx
	movl	%ebx, 20(%esp)
	cmpb	$0, (%edx)
	je	L2738
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	movlps	LC42, %xmm0
	movl	$-1, %esi
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	jmp	L2750
	.p2align 4,,10
	.p2align 3
L2761:
	leal	12(%esp), %eax
	movl	8(%esp), %ecx
	movl	%edx, 12(%esp)
	movl	%edi, %edx
	movl	%eax, (%esp)
	movl	4(%esp), %eax
	movl	%esi, 16(%esp)
	call	__ZL11midi_nibbleP12context_dataP12channel_dataiP11midi_stream.part.0
	movl	12(%esp), %edx
	movl	%eax, %esi
	movl	16(%esp), %eax
	testl	%eax, %eax
	jns	L2758
L2740:
	movl	%eax, 16(%esp)
	leal	12(%esp), %eax
	movl	8(%esp), %ecx
	movl	%esi, %ebx
	movl	%eax, (%esp)
	movl	4(%esp), %eax
	movl	%edx, 12(%esp)
	movl	%edi, %edx
	call	__ZL11midi_nibbleP12context_dataP12channel_dataiP11midi_stream.part.0
	movl	12(%esp), %edx
	movl	16(%esp), %esi
L2741:
	movl	%eax, %ecx
	orl	%ebx, %ecx
	js	L2742
	sall	$4, %ebx
	orl	%eax, %ebx
	cmpl	$240, %ebx
	je	L2759
L2743:
	subl	$250, %ebx
	cmpl	$5, %ebx
	ja	L2742
	movl	$37, %eax
	btl	%ebx, %eax
	jnc	L2742
	movlps	%xmm0, 404(%edi)
L2742:
	cmpb	$0, (%edx)
	je	L2760
L2750:
	testl	%esi, %esi
	js	L2761
	movl	$-1, %eax
	jmp	L2740
	.p2align 4,,10
	.p2align 3
L2759:
	leal	12(%esp), %eax
	movl	8(%esp), %ecx
	movl	%edx, 12(%esp)
	movl	%edi, %edx
	movl	%eax, (%esp)
	movl	4(%esp), %eax
	movl	%esi, 16(%esp)
	call	__ZL9midi_byteP12context_dataP12channel_dataiP11midi_stream
	movl	%eax, %ebx
	leal	-240(%eax), %eax
	cmpl	$1, %eax
	jbe	L2744
	movl	12(%esp), %edx
	movl	16(%esp), %esi
	jmp	L2743
	.p2align 4,,10
	.p2align 3
L2758:
	movl	%esi, %ebx
	movl	$-1, %esi
	jmp	L2741
	.p2align 4,,10
	.p2align 3
L2744:
	leal	12(%esp), %eax
	movl	4(%esp), %esi
	movl	8(%esp), %ecx
	movl	%edi, %edx
	movl	%eax, (%esp)
	sall	$8, %ebx
	movl	%esi, %eax
	andl	$3840, %ebx
	call	__ZL9midi_byteP12context_dataP12channel_dataiP11midi_stream
	movl	8(%esp), %ecx
	movl	%edi, %edx
	orl	%eax, %ebx
	leal	12(%esp), %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__ZL9midi_byteP12context_dataP12channel_dataiP11midi_stream
	movl	%ebx, %ecx
	movl	12(%esp), %edx
	movl	16(%esp), %esi
	orl	%eax, %ecx
	cmpl	$127, %ecx
	ja	L2742
	testl	%ebx, %ebx
	je	L2747
	cmpl	$1, %ebx
	jne	L2742
	addl	%eax, %eax
	movl	%eax, 408(%edi)
	cmpb	$0, (%edx)
	jne	L2750
	.p2align 4
	.p2align 3
L2760:
	movl	-8(%ebp), %esi
	.cfi_restore 6
L2738:
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
L2747:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	addl	%eax, %eax
	movl	%eax, 404(%edi)
	jmp	L2742
	.cfi_endproc
LFE167:
	.p2align 4
	.globl	__ZL14reset_channelsP12context_data.lto_priv.0
	.def	__ZL14reset_channelsP12context_data.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL14reset_channelsP12context_data.lto_priv.0:
LFB168:
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
	movl	704(%eax), %edx
	testl	%edx, %edx
	jle	L2763
	xorl	%edi, %edi
	movl	%eax, %edx
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L2764:
	movl	376(%edx), %ebx
	movl	%edx, 20(%esp)
	addl	$1, %edi
	movl	$480, 8(%esp)
	addl	%esi, %ebx
	movl	$0, 4(%esp)
	addl	$480, %esi
	movl	%ebx, (%esp)
	call	_memset
	movl	20(%esp), %edx
	movlps	LC43, %xmm0
	movl	$-1, 16(%ebx)
	movlps	%xmm0, 44(%ebx)
	movl	2588(%edx), %eax
	movl	%eax, 76(%ebx)
	cmpl	%edi, 704(%edx)
	jg	L2764
	movl	%edx, %esi
L2763:
	movl	700(%esi), %eax
	testl	%eax, %eax
	jle	L2762
	leal	1504(%esi), %edi
	xorl	%eax, %eax
	jmp	L2773
	.p2align 4,,10
	.p2align 3
L2788:
	addl	9816(%esi), %ecx
	cmpl	%eax, %ecx
	jle	L2766
	movl	$64, 56(%edx)
	movl	$128, %ecx
L2767:
	movl	%ecx, 368(%edx)
	movl	$255, 404(%edx)
	movl	8(%edi), %ecx
	testb	$4, %cl
	jne	L2787
	movb	$0, 92(%edx)
L2769:
	testb	$16, 8(%edi)
	je	L2772
	movl	$1, 384(%edx)
L2772:
	addl	$1, %eax
	addl	$12, %edi
	cmpl	%eax, 700(%esi)
	jle	L2762
L2773:
	movl	1456(%esi), %ecx
	imull	$480, %eax, %edx
	addl	376(%esi), %edx
	cmpl	%eax, %ecx
	jle	L2788
L2766:
	movl	4(%edi), %ecx
	movl	%ecx, 56(%edx)
	movl	(%edi), %ecx
	jmp	L2767
	.p2align 4,,10
	.p2align 3
L2787:
	sarl	$4, %ecx
	andl	$3, %ecx
	addl	$1, %ecx
	movb	%cl, 92(%edx)
	testl	%eax, %eax
	je	L2769
	movl	%eax, 20(%esp)
	leal	1512(%esi), %ebx
	xorl	%ecx, %ecx
	movl	%edi, 12(%esp)
	movl	%esi, 16(%esp)
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L2771:
	testb	$4, (%ebx)
	je	L2770
	movl	16(%esp), %eax
	movl	376(%eax), %edi
	movzbl	92(%edx), %eax
	addl	%esi, %edi
	cmpb	%al, 92(%edi)
	jne	L2770
	movzbl	20(%esp), %eax
	movb	%al, 93(%edi)
	movb	%cl, 93(%edx)
	.p2align 4
	.p2align 3
L2770:
	movl	20(%esp), %eax
	addl	$1, %ecx
	addl	$12, %ebx
	addl	$480, %esi
	cmpl	%eax, %ecx
	jne	L2771
	movl	12(%esp), %edi
	movl	16(%esp), %esi
	jmp	L2769
	.p2align 4,,10
	.p2align 3
L2762:
	addl	$24, %esp
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
LFE168:
	.p2align 4
	.globl	__ZL13update_volumeP12context_datai.lto_priv.0
	.def	__ZL13update_volumeP12context_datai.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL13update_volumeP12context_datai.lto_priv.0:
LFB169:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	imull	$480, %edx, %ecx
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	addl	376(%eax), %ecx
	movl	12(%eax), %eax
	movl	(%ecx), %ebx
	cltd
	idivl	16(%esi)
	testl	%edx, %edx
	jne	L2790
	testb	$64, 2612(%esi)
	je	L2791
L2790:
	testl	$1048576, %ebx
	je	L2792
	movl	284(%ecx), %eax
	addl	%eax, 328(%esi)
	movl	(%ecx), %ebx
L2792:
	testb	$1, %bl
	je	L2843
L2793:
	movl	252(%ecx), %eax
	addl	%eax, 76(%ecx)
L2794:
	testb	$32, %bh
	je	L2795
	movl	260(%ecx), %eax
	addl	%eax, 76(%ecx)
L2795:
	testb	$2, %bh
	je	L2796
	movl	296(%ecx), %eax
	addl	%eax, 56(%ecx)
L2796:
	movl	12(%esi), %eax
	cltd
	idivl	16(%esi)
	testl	%edx, %edx
	je	L2791
L2797:
	movl	76(%ecx), %eax
	testl	%eax, %eax
	js	L2844
L2802:
	movl	2588(%esi), %edx
	cmpl	%edx, %eax
	jg	L2845
L2803:
	movl	328(%esi), %eax
	testl	%eax, %eax
	js	L2846
L2804:
	movl	2592(%esi), %edx
	cmpl	%edx, %eax
	jg	L2847
L2805:
	movl	56(%ecx), %eax
	testl	%eax, %eax
	js	L2848
L2806:
	movl	2588(%esi), %edx
	cmpl	%edx, %eax
	jg	L2849
L2807:
	cmpb	$0, 92(%ecx)
	je	L2789
	movzbl	93(%ecx), %eax
	movl	76(%ecx), %edx
	imull	$480, %eax, %eax
	addl	376(%esi), %eax
	movl	%edx, 76(%eax)
L2789:
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
L2791:
	.cfi_restore_state
	testb	$64, %bl
	je	L2798
	movl	256(%ecx), %eax
	addl	%eax, 76(%ecx)
L2798:
	testl	$33554432, %ebx
	je	L2799
	movl	368(%esi), %eax
	testl	%eax, %eax
	jne	L2850
L2800:
	movl	268(%ecx), %eax
	addl	%eax, 76(%ecx)
L2799:
	testb	$4, %bh
	je	L2801
	movl	300(%ecx), %eax
	addl	%eax, 56(%ecx)
L2801:
	andl	$1048576, %ebx
	je	L2797
	movl	288(%ecx), %eax
	addl	%eax, 328(%esi)
	movl	76(%ecx), %eax
	testl	%eax, %eax
	jns	L2802
L2844:
	movl	$0, 76(%ecx)
	movl	328(%esi), %eax
	testl	%eax, %eax
	jns	L2804
L2846:
	movl	$0, 328(%esi)
	movl	56(%ecx), %eax
	testl	%eax, %eax
	jns	L2806
L2848:
	movl	$0, 56(%ecx)
	jmp	L2807
	.p2align 4,,10
	.p2align 3
L2843:
	testb	$1, 4(%ecx)
	je	L2794
	jmp	L2793
	.p2align 4,,10
	.p2align 3
L2849:
	movl	%edx, 56(%ecx)
	jmp	L2807
	.p2align 4,,10
	.p2align 3
L2847:
	movl	%edx, 328(%esi)
	jmp	L2805
	.p2align 4,,10
	.p2align 3
L2845:
	movl	%edx, 76(%ecx)
	jmp	L2803
	.p2align 4,,10
	.p2align 3
L2850:
	testb	$2, %al
	je	L2799
	jmp	L2800
	.cfi_endproc
LFE169:
	.p2align 4
	.globl	__ZL10next_orderP12context_data.lto_priv.0
	.def	__ZL10next_orderP12context_data.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL10next_orderP12context_data.lto_priv.0:
LFB170:
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
	subl	$16, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	1448(%eax), %esi
	movl	2612(%eax), %edi
	movl	(%eax), %edx
	movl	%esi, 12(%esp)
	movl	1476(%eax), %esi
	andl	$134217728, %edi
	je	L2858
	movl	%esi, 8(%esp)
	xorl	%edi, %edi
	jmp	L2863
	.p2align 4,,10
	.p2align 3
L2880:
	movzbl	2272(%eax,%ebx), %ecx
	movl	%ebx, %edx
	cmpb	$-1, %cl
	je	L2859
	cmpl	%ecx, 12(%esp)
	jg	L2857
L2863:
	leal	1(%edx), %ebx
	cmpl	8(%esp), %ebx
	jl	L2880
L2859:
	movl	60(%eax), %ecx
	movl	1480(%eax), %edi
	movl	%ecx, 4(%esp)
	movl	7756(%eax,%ecx,8), %edx
	cmpl	8(%esp), %edi
	jg	L2879
	movzbl	2272(%eax,%edi), %ecx
	cmpl	12(%esp), %ecx
	jge	L2879
	cmpl	%edx, %ebx
	jge	L2862
	.p2align 4
	.p2align 3
L2879:
	movzbl	2272(%eax,%edx), %ecx
	movl	$1, %edi
	cmpl	%ecx, 12(%esp)
	jle	L2863
L2857:
	movl	%edx, (%eax)
	leal	0(,%edx,4), %ebx
	testl	%edi, %edi
	je	L2864
	leal	(%ebx,%edx), %esi
	movl	2640(%eax,%esi,4), %esi
	movl	%esi, 328(%eax)
L2864:
	addl	%edx, %ebx
	fildl	2644(%eax,%ebx,4)
	movl	1488(%eax), %ebx
	fstpl	40(%eax)
	movl	(%ebx,%ecx,4), %ecx
	movl	(%ecx), %ebx
	movl	344(%eax), %ecx
	movl	%edx, 4(%eax)
	movl	$0, 344(%eax)
	movl	%ebx, 356(%eax)
	cmpl	%ecx, %ebx
	movl	$0, %ebx
	cmovle	%ebx, %ecx
	movl	$0, 12(%eax)
	movl	%ecx, 8(%eax)
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
	.p2align 5
	.p2align 4,,10
	.p2align 3
L2853:
	.cfi_restore_state
	movzbl	2272(%eax,%ebx), %ecx
	movl	%ebx, %edx
L2855:
	cmpl	12(%esp), %ecx
	jl	L2857
L2858:
	leal	1(%edx), %ebx
	cmpl	%esi, %ebx
	jl	L2853
	movl	60(%eax), %edx
	movl	1480(%eax), %edi
	movl	%edx, 8(%esp)
	movl	7756(%eax,%edx,8), %edx
	cmpl	%esi, %edi
	jg	L2878
	movzbl	2272(%eax,%edi), %ecx
	cmpl	%ecx, 12(%esp)
	jle	L2878
	cmpl	%ebx, %edx
	jle	L2881
	.p2align 4
	.p2align 3
L2878:
	movzbl	2272(%eax,%edx), %ecx
	movl	$1, %edi
	jmp	L2855
	.p2align 4,,10
	.p2align 3
L2862:
	movzbl	64(%eax,%edi), %ebx
	cmpl	4(%esp), %ebx
	jne	L2879
L2867:
	movl	%edi, %edx
	movl	$1, %edi
	jmp	L2857
	.p2align 4,,10
	.p2align 3
L2881:
	movzbl	64(%eax,%edi), %ebx
	cmpl	%ebx, 8(%esp)
	jne	L2878
	jmp	L2867
	.cfi_endproc
LFE170:
	.p2align 4
	.globl	__ZL8next_rowP12context_data.lto_priv.0
	.def	__ZL8next_rowP12context_data.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL8next_rowP12context_data.lto_priv.0:
LFB172:
	.cfi_startproc
	movl	332(%eax), %edx
	movl	$0, 12(%eax)
	movl	$0, 340(%eax)
	testl	%edx, %edx
	je	L2883
	movl	$0, 332(%eax)
	movl	336(%eax), %edx
	cmpl	$-1, %edx
	je	L2884
	movl	$-1, 336(%eax)
	subl	$1, %edx
	movl	%edx, (%eax)
L2884:
	jmp	__ZL10next_orderP12context_data.lto_priv.0
	.p2align 4,,10
	.p2align 3
L2883:
	movl	364(%eax), %edx
	testl	%edx, %edx
	je	L2892
	subl	$1, %edx
	movl	%edx, 364(%eax)
	movl	348(%eax), %edx
	testl	%edx, %edx
	jne	L2887
L2893:
	movl	8(%eax), %edx
L2888:
	cmpl	356(%eax), %edx
	jge	L2884
	ret
	.p2align 4,,10
	.p2align 3
L2892:
	movl	348(%eax), %edx
	addl	$1, 8(%eax)
	movl	$0, 368(%eax)
	testl	%edx, %edx
	je	L2893
L2887:
	movl	352(%eax), %ecx
	movl	-8(%ecx,%edx,8), %edx
	movl	$0, 348(%eax)
	movl	%edx, 8(%eax)
	jmp	L2888
	.cfi_endproc
LFE172:
	.p2align 4
	.globl	__ZL20update_from_ord_infoP12context_data.lto_priv.0
	.def	__ZL20update_from_ord_infoP12context_data.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL20update_from_ord_infoP12context_data.lto_priv.0:
LFB174:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	andl	$-8, %esp
	subl	$8, %esp
	.cfi_offset 3, -12
	movl	(%eax), %ecx
	leal	0(,%ecx,4), %edx
	leal	(%edx,%ecx), %ebx
	movl	2632(%eax,%ebx,4), %ebx
	testl	%ebx, %ebx
	je	L2895
	movl	%ebx, 16(%eax)
L2895:
	addl	%ecx, %edx
	leal	(%eax,%edx,4), %edx
	movl	2636(%edx), %ecx
	movl	%ecx, 20(%eax)
	movl	2640(%edx), %ebx
	movl	%ecx, 4(%esp)
	movl	%ebx, 328(%eax)
	fildl	2644(%edx)
	movl	-4(%ebp), %ebx
	fstpl	40(%eax)
	fldl	2576(%eax)
	fmull	2568(%eax)
	fildl	4(%esp)
	fdivrp	%st, %st(1)
	fstpl	48(%eax)
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE174:
	.p2align 4
	.globl	__ZL19check_end_of_moduleP12context_data.lto_priv.0
	.def	__ZL19check_end_of_moduleP12context_data.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL19check_end_of_moduleP12context_data.lto_priv.0:
LFB175:
	.cfi_startproc
	movl	%eax, %edx
	movl	60(%eax), %eax
	sall	$4, %eax
	addl	372(%edx), %eax
	movl	8(%eax), %ecx
	cmpl	%ecx, (%edx)
	je	L2903
L2900:
	ret
	.p2align 4,,10
	.p2align 3
L2903:
	movl	4(%eax), %ecx
	cmpl	%ecx, 8(%edx)
	jne	L2900
	movl	360(%edx), %ecx
	testl	%ecx, %ecx
	jne	L2902
	addl	$1, 56(%edx)
	movl	12(%eax), %ecx
L2902:
	subl	$1, %ecx
	movl	%ecx, 360(%edx)
	ret
	.cfi_endproc
LFE175:
	.p2align 4
	.globl	_xmp_end_player.part.0
	.def	_xmp_end_player.part.0;	.scl	2;	.type	32;	.endef
_xmp_end_player.part.0:
LFB177:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorps	%xmm0, %xmm0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 3, -16
	movl	%eax, %ebx
	subl	$4, %esp
	movups	%xmm0, 700(%eax)
	movl	$1, 9836(%eax)
	movl	720(%eax), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	716(%ebx), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	376(%ebx), %eax
	subl	$4, %esp
	movl	$0, 716(%ebx)
	movl	$0, 720(%ebx)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	352(%ebx), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	1280(%ebx), %eax
	subl	$4, %esp
	movl	$0, 376(%ebx)
	movl	$0, 352(%ebx)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	1284(%ebx), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, 1280(%ebx)
	movl	$0, 1284(%ebx)
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE177:
	.p2align 4
	.globl	_xmp_release_module
	.def	_xmp_release_module;	.scl	2;	.type	32;	.endef
_xmp_release_module:
LFB180:
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
	subl	$4, %esp
	cmpl	$1, 9836(%eax)
	jg	L2948
L2907:
	movl	$0, 9836(%ebx)
	movl	1492(%ebx), %eax
	testl	%eax, %eax
	je	L2908
	movl	1452(%ebx), %edx
	testl	%edx, %edx
	jle	L2909
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L2910:
	movl	(%eax,%esi,4), %eax
	addl	$1, %esi
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	1492(%ebx), %eax
	subl	$4, %esp
	cmpl	%esi, 1452(%ebx)
	jg	L2910
L2909:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, 1492(%ebx)
L2908:
	movl	1488(%ebx), %eax
	testl	%eax, %eax
	je	L2911
	movl	1448(%ebx), %edi
	testl	%edi, %edi
	jle	L2912
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L2913:
	movl	(%eax,%esi,4), %eax
	addl	$1, %esi
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	1488(%ebx), %eax
	subl	$4, %esp
	cmpl	%esi, 1448(%ebx)
	jg	L2913
L2912:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, 1488(%ebx)
L2911:
	movl	1496(%ebx), %eax
	testl	%eax, %eax
	je	L2914
	movl	1460(%ebx), %esi
	testl	%esi, %esi
	jle	L2915
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L2916:
	imull	$764, %esi, %edi
	addl	$1, %esi
	movl	756(%eax,%edi), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	1496(%ebx), %eax
	subl	$4, %esp
	movl	760(%eax,%edi), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	1496(%ebx), %eax
	subl	$4, %esp
	cmpl	%esi, 1460(%ebx)
	jg	L2916
L2915:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, 1496(%ebx)
L2914:
	movl	1500(%ebx), %edx
	testl	%edx, %edx
	je	L2917
	movl	1464(%ebx), %ecx
	testl	%ecx, %ecx
	jle	L2918
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L2920:
	imull	$52, %edi, %esi
	addl	%edx, %esi
	movl	48(%esi), %eax
	testl	%eax, %eax
	je	L2919
	subl	$4, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, 48(%esi)
	movl	1500(%ebx), %edx
L2919:
	addl	$1, %edi
	cmpl	%edi, 1464(%ebx)
	jg	L2920
L2918:
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, 1500(%ebx)
L2917:
	movl	9808(%ebx), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	9812(%ebx), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	9804(%ebx), %eax
	subl	$4, %esp
	movl	$0, 9808(%ebx)
	movl	$0, 9812(%ebx)
	testl	%eax, %eax
	je	L2921
	movl	1476(%ebx), %edx
	testl	%edx, %edx
	jle	L2922
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L2923:
	movl	(%eax,%esi,4), %eax
	addl	$1, %esi
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	9804(%ebx), %eax
	subl	$4, %esp
	cmpl	1476(%ebx), %esi
	jl	L2923
L2922:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, 9804(%ebx)
L2921:
	movl	372(%ebx), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	2540(%ebx), %eax
	subl	$4, %esp
	movl	$0, 372(%ebx)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	2528(%ebx), %eax
	subl	$4, %esp
	movl	$0, 2540(%ebx)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	2532(%ebx), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, 2528(%ebx)
	movl	$0, 2532(%ebx)
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
L2948:
	.cfi_restore_state
	call	_xmp_end_player.part.0
	jmp	L2907
	.cfi_endproc
LFE180:
	.section	.text.unlikely,"x"
LCOLDB44:
	.text
LHOTB44:
	.p2align 4
	.globl	__Z17libxmp_read_eventP12context_dataP9xmp_eventi.isra.0
	.def	__Z17libxmp_read_eventP12context_dataP9xmp_eventi.isra.0;	.scl	2;	.type	32;	.endef
__Z17libxmp_read_eventP12context_dataP9xmp_eventi.isra.0:
LFB185:
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
	imull	$480, %ecx, %eax
	.cfi_offset 6, -16
	movl	%edx, %esi
	pushl	%ebx
	andl	$-8, %esp
	addl	$-128, %esp
	.cfi_offset 3, -20
	movl	376(%edi), %edx
	movl	%eax, 112(%esp)
	addl	%eax, %edx
	movzbl	1(%esi), %eax
	movl	%ecx, 116(%esp)
	testb	%al, %al
	je	L2950
	movl	%eax, 48(%edx)
L2950:
	movl	8(%edx), %eax
	testb	$32, %al
	je	L2951
	orl	$4, %eax
	movl	%eax, 8(%edx)
L2951:
	movl	116(%esp), %eax
	cmpl	1456(%edi), %eax
	jge	L3618
	movl	2616(%edi), %ebx
	cmpl	$2, %ebx
	je	L2967
	cmpl	$3, %ebx
	je	L2968
	cmpl	$1, %ebx
	je	L2969
	movl	116(%esp), %ecx
	leal	-12(%ebp), %esp
	movl	%esi, %edx
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
	jmp	__ZL14read_event_modP12context_dataP9xmp_eventi.isra.0
	.p2align 4,,10
	.p2align 3
L3618:
	.cfi_restore_state
	movl	112(%esp), %ebx
	addl	376(%edi), %ebx
	movl	$0, (%ebx)
	movzbl	1(%esi), %eax
	testb	%al, %al
	jne	L3619
L2949:
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
L3619:
	.cfi_restore_state
	movl	$0, 220(%ebx)
	xorl	%edx, %edx
	subl	$1, %eax
	movl	%edx, 4(%ebx)
	movl	8(%ebx), %edx
	movl	%eax, 112(%esp)
	movl	$2048, %eax
	movl	%eax, (%ebx)
	movl	%edx, %eax
	andl	$-1028, %eax
	movl	%eax, 8(%ebx)
	movl	1460(%edi), %ecx
	movl	%eax, 100(%esp)
	movl	112(%esp), %eax
	cmpl	%eax, %ecx
	jle	L2954
	imull	$764, %eax, %eax
	addl	1496(%edi), %eax
	movl	%eax, 104(%esp)
L2955:
	movl	104(%esp), %eax
	testl	%eax, %eax
	je	L2956
	movl	40(%eax), %ecx
	movl	%ecx, 72(%ebx)
L2956:
	movl	112(%esp), %ecx
	movl	$67584, (%ebx)
	movl	%ecx, 44(%ebx)
	movzbl	(%esi), %ecx
	cmpb	$-127, %cl
	je	L3620
	cmpb	$-125, %cl
	je	L3621
	cmpb	$-126, %cl
	je	L3622
	andl	$-1032, %edx
	subl	$1, %ecx
	movl	$65536, 68(%ebx)
	movl	%ecx, 16(%ebx)
	movl	%edx, 8(%ebx)
	movl	1460(%edi), %edx
	cmpl	112(%esp), %edx
	jg	L2961
	movl	9820(%edi), %eax
	addl	%edx, %eax
	movl	%eax, 100(%esp)
	movl	112(%esp), %eax
	cmpl	%eax, 100(%esp)
	jle	L2961
	movl	104(%esp), %eax
	movl	756(%eax), %eax
	movl	%eax, 100(%esp)
	testl	%eax, %eax
	je	L2949
	movl	40(%eax), %edx
	addl	12(%eax), %ecx
	movl	%ecx, 104(%esp)
	imull	$52, %edx, %eax
	addl	9832(%edi), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	L2964
	testl	%edx, %edx
	js	L2964
	cmpl	9824(%edi), %edx
	jge	L2964
	addl	1464(%edi), %edx
	movl	%ecx, 4(%esp)
	movl	%edi, %eax
	movl	%edx, (%esp)
	movl	112(%esp), %ecx
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 96(%esp)
	movl	116(%esp), %edx
	call	__Z20libxmp_virt_setpatchP12context_dataiiiiiiii
	movl	96(%esp), %edx
	movl	%edx, 52(%ebx)
	jmp	L2964
	.p2align 4,,10
	.p2align 3
L2968:
	movl	4(%esi), %edx
	movl	(%esi), %eax
	movl	112(%esp), %ebx
	addl	376(%edi), %ebx
	movl	%edx, 124(%esp)
	movzbl	2(%esi), %edx
	movzbl	1(%esi), %ecx
	movl	%eax, 120(%esp)
	movb	%dl, 96(%esp)
	movzbl	3(%esi), %edx
	movzbl	(%esi), %eax
	movb	%cl, 104(%esp)
	movb	%dl, 84(%esp)
	movzbl	5(%esi), %edx
	movb	%al, 100(%esp)
	movzbl	%al, %esi
	movb	%dl, 68(%esp)
	movl	44(%ebx), %edx
	movl	%edx, 92(%esp)
	testb	%cl, %cl
	jne	L3104
	testb	%al, %al
	jne	L3623
	movl	$0, (%ebx)
	movl	2612(%edi), %eax
	movl	%eax, 60(%esp)
	andl	$32768, %eax
	movl	%eax, 64(%esp)
L3594:
	movzbl	84(%esp), %eax
	movb	$0, 104(%esp)
	movl	$0, 80(%esp)
	movl	$0, 44(%esp)
	subl	$3, %eax
	andl	$-3, %eax
L3108:
	movl	92(%esp), %ecx
	movl	$1, %edx
	movl	%ecx, 76(%esp)
	testb	%al, %al
	jne	L3113
L3119:
	movl	8(%ebx), %eax
	fldl	24(%ebx)
	fldz
	movl	%eax, %ecx
	andl	$3, %ecx
	movl	%ecx, 72(%esp)
	setne	%cl
	fcomip	%st(1), %st
	fstp	%st(0)
	jnb	L3120
	testb	$4, %al
	jne	L3120
	testl	%edx, %edx
	jne	L3121
L3120:
	cmpb	$0, 104(%esp)
	jne	L3139
	movl	76(%esp), %eax
	movl	$0, 40(%esp)
	movl	$0, 64(%esp)
	movl	%eax, 72(%esp)
	movl	$0, 56(%esp)
	movl	$0, 88(%esp)
	movl	$0, 48(%esp)
	movl	$0, 52(%esp)
L3124:
	testl	%esi, %esi
	jne	L3149
	movl	80(%esp), %eax
	orl	88(%esp), %eax
	movb	$0, 48(%esp)
	movl	%eax, 112(%esp)
	movl	$-1, 92(%esp)
L3152:
	movl	112(%esp), %ecx
	testl	%ecx, %ecx
	jne	L3624
L3199:
	movl	1460(%edi), %eax
	movl	72(%esp), %ecx
	cmpl	%eax, %ecx
	jnb	L3205
	imull	$764, %ecx, %ecx
	movl	1496(%edi), %edx
	movl	%edx, 36(%esp)
	movl	36(%edx,%ecx), %edx
	testl	%edx, %edx
	jle	L3205
L3156:
	movl	44(%ebx), %edx
	cmpl	%eax, %edx
	jnb	L3206
	cmpl	%edx, 76(%esp)
	je	L3206
	imull	$764, %edx, %eax
	movl	36(%esp), %edx
	movl	36(%edx,%eax), %eax
	testl	%eax, %eax
	jle	L3206
	movl	$-1, %eax
	andl	$-17, 8(%ebx)
	movl	%eax, 96(%ebx)
	movl	%eax, 100(%ebx)
	movl	$-1, 104(%ebx)
L3206:
	movl	76(%esp), %eax
	movl	%eax, 44(%ebx)
	movl	1496(%edi), %eax
	movl	40(%eax,%ecx), %eax
	movl	%eax, 72(%ebx)
L3205:
	cmpb	$0, 104(%esp)
	je	L3157
L3202:
	movl	8(%ebx), %eax
	testb	$16, %al
	jne	L3625
L3157:
	movl	56(%esp), %eax
	testl	%eax, %eax
	je	L3211
	cmpb	$0, 100(%esp)
	jne	L3213
L3252:
	movl	$65536, 68(%ebx)
L3166:
	movl	52(%esp), %esi
	testl	%esi, 80(%esp)
	jne	L3626
L3217:
	movl	44(%ebx), %esi
	movl	16(%ebx), %ecx
	movl	%edi, %eax
	movl	%esi, %edx
	call	__ZL17get_subinstrumentP12context_dataii
	movl	%ebx, (%esp)
	movl	92(%esp), %edx
	movl	%eax, %ecx
	movl	%eax, 88(%esp)
	movl	112(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%edi, %eax
	call	__ZL19set_effect_defaultsP12context_dataiP17xmp_subinstrumentP12channel_datai
	testl	%ecx, %ecx
	je	L3219
	cmpb	$0, 48(%esp)
	je	L3219
	movl	8(%ecx), %eax
	testl	%eax, %eax
	js	L3220
	movl	%eax, 368(%ebx)
	movl	$0, 384(%ebx)
L3220:
	movl	8(%ebx), %eax
	testb	$8, %al
	jne	L3627
	movl	40(%esp), %edx
	testl	%edx, %edx
	je	L3224
	testb	$64, 2614(%edi)
	je	L3223
L3224:
	movl	%edi, %eax
	movl	%ebx, %edx
	call	__ZL21reset_envelopes_carryP12context_dataP12channel_data
	movl	8(%ebx), %eax
L3223:
	andl	$-9, %eax
	movl	%eax, 8(%ebx)
L3219:
	cmpb	$0, 96(%esp)
	je	L3225
	testb	$8, 8(%ebx)
	je	L3311
	cmpb	$0, 104(%esp)
	je	L3225
L3311:
	movzbl	96(%esp), %eax
	orl	$4096, (%ebx)
	subl	$1, %eax
	movl	%eax, 76(%ebx)
L3225:
	movzbl	100(%esp), %eax
	leal	120(%esp), %esi
	movl	116(%esp), %ecx
	movl	%ebx, %edx
	andl	$-65536, 220(%ebx)
	movb	%al, 120(%esp)
	movzbl	104(%esp), %eax
	movl	%esi, (%esp)
	movb	%al, 121(%esp)
	movzbl	96(%esp), %eax
	movl	$0, 4(%esp)
	movb	%al, 122(%esp)
	movzbl	84(%esp), %eax
	movb	%al, 123(%esp)
	movzbl	68(%esp), %eax
	movb	%al, 125(%esp)
	movl	%edi, %eax
	call	__Z17libxmp_process_fxP12context_dataP12channel_dataiP9xmp_eventi
	movl	%esi, (%esp)
	movl	116(%esp), %ecx
	movl	%ebx, %edx
	movl	$1, 4(%esp)
	movl	%edi, %eax
	call	__Z17libxmp_process_fxP12context_dataP12channel_dataiP9xmp_eventi
	movl	112(%esp), %eax
	movl	92(%esp), %esi
	movl	%ebx, (%esp)
	movl	88(%esp), %ecx
	movl	%eax, 4(%esp)
	movl	%esi, %edx
	movl	%edi, %eax
	call	__ZL10set_periodP12context_dataiP17xmp_subinstrumentP12channel_datai
	movl	88(%esp), %eax
	testl	%eax, %eax
	je	L2949
	testl	%esi, %esi
	js	L3227
	movl	%esi, 12(%ebx)
L3228:
	movl	116(%esp), %esi
	cmpl	704(%edi), %esi
	jnb	L3229
	movl	716(%edi), %eax
	movl	4(%eax,%esi,8), %edx
	cmpl	712(%edi), %edx
	jnb	L3229
	testl	%edx, %edx
	js	L3229
	fildl	220(%ebx)
	movl	%edi, %eax
	fstpl	(%esp)
	call	__Z21libxmp_mixer_voiceposP12context_dataidi.constprop.0
L3229:
	movl	64(%esp), %esi
	testl	%esi, %esi
	je	L2949
	testb	$16, 1(%ebx)
	jne	L2949
	movl	88(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 76(%ebx)
	jmp	L2949
	.p2align 4,,10
	.p2align 3
L2961:
	cmpl	$120, %ecx
	ja	L2949
	movl	112(%esp), %eax
	cmpl	%edx, %eax
	jnb	L2949
	imull	$764, %eax, %edx
	addl	1496(%edi), %edx
	movl	36(%edx), %eax
	movl	%eax, 100(%esp)
	testl	%eax, %eax
	jle	L2949
	leal	256(%ecx), %eax
	movl	%eax, 92(%esp)
	movzbl	512(%edx,%ecx,2), %eax
	cmpl	$255, %eax
	je	L2949
	cmpl	%eax, 100(%esp)
	jle	L2949
	sall	$6, %eax
	addl	756(%edx), %eax
	movl	%eax, 100(%esp)
	movl	%eax, %edx
	je	L2949
	addl	12(%eax), %ecx
	movl	92(%esp), %eax
	movl	%ecx, 96(%esp)
	movl	104(%esp), %ecx
	movsbl	1(%ecx,%eax,2), %eax
	movl	96(%esp), %ecx
	addl	%ecx, %eax
	movl	40(%edx), %ecx
	movl	%eax, 104(%esp)
	movl	1464(%edi), %eax
	movl	%ecx, 96(%esp)
	cmpl	%eax, %ecx
	jnb	L2964
	imull	$52, %ecx, %edx
	addl	1500(%edi), %edx
	movl	48(%edx), %edx
	testl	%edx, %edx
	je	L2964
	movl	%ecx, %edx
	notl	%edx
	shrl	$31, %edx
	cmpl	%eax, %ecx
	setl	%al
	testb	%dl, %al
	jne	L3628
	.p2align 4
	.p2align 3
L2964:
	movl	104(%esp), %edx
	movl	100(%esp), %ecx
	movl	%ebx, (%esp)
	movl	%edi, %eax
	movl	$0, 4(%esp)
	call	__ZL19set_effect_defaultsP12context_dataiP17xmp_subinstrumentP12channel_datai
	movl	%ebx, (%esp)
	movl	104(%esp), %edx
	movl	%edi, %eax
	movl	$0, 4(%esp)
	call	__ZL10set_periodP12context_dataiP17xmp_subinstrumentP12channel_datai
	cmpb	$0, 1(%esi)
	jne	L3629
L2966:
	movzbl	2(%esi), %eax
	movl	116(%esp), %esi
	subl	$1, %eax
	movl	%eax, 76(%ebx)
	movl	104(%esp), %eax
	movl	%eax, 12(%ebx)
	cmpl	704(%edi), %esi
	jnb	L2949
	movl	716(%edi), %eax
	movl	4(%eax,%esi,8), %edx
	cmpl	712(%edi), %edx
	jnb	L2949
	testl	%edx, %edx
	js	L2949
	fildl	220(%ebx)
	movl	%edi, %eax
	fstpl	(%esp)
	call	__Z21libxmp_mixer_voiceposP12context_dataidi.constprop.0
	jmp	L2949
	.p2align 4,,10
	.p2align 3
L2969:
	movl	16(%edi), %eax
	cmpl	%eax, 12(%edi)
	jge	L2949
	movl	112(%esp), %eax
	addl	376(%edi), %eax
	movl	4(%esi), %edx
	movzbl	2(%esi), %ecx
	movl	%eax, 112(%esp)
	movl	(%esi), %eax
	movl	%edx, 124(%esp)
	movzbl	(%esi), %edx
	movl	%eax, 120(%esp)
	movzbl	1(%esi), %eax
	movb	%dl, 76(%esp)
	movb	%al, 88(%esp)
	movzbl	3(%esi), %eax
	movzwl	4(%esi), %esi
	movb	%cl, 84(%esp)
	movb	%al, 104(%esp)
	movl	%esi, %eax
	movw	%si, 72(%esp)
	movw	%si, 96(%esp)
	movzbl	%ah, %eax
	movl	112(%esp), %esi
	testb	%cl, %cl
	jne	L3630
	movl	$0, (%esi)
	movzbl	76(%esp), %esi
	cmpb	$20, 104(%esp)
	je	L3631
L2972:
	movzbl	104(%esp), %ecx
	cmpb	$3, %cl
	je	L2982
	cmpb	$5, %cl
	je	L2982
L2974:
	subl	$3, %eax
	testb	$-3, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 92(%esp)
L2983:
	movzbl	88(%esp), %eax
	movl	%eax, 80(%esp)
	testl	%eax, %eax
	jne	L3632
	movl	112(%esp), %eax
	testl	%esi, %esi
	je	L3603
	orl	$65536, (%eax)
	cmpl	$129, %esi
	je	L3633
	cmpl	$131, %esi
	jne	L3265
	movl	112(%esp), %eax
	movb	$0, 60(%esp)
	movl	$130, %ecx
	movl	$0, 100(%esp)
	orl	$1, 8(%eax)
	movzbl	92(%esp), %eax
	movl	$0, 68(%esp)
	andl	$1, %eax
	movl	$130, 96(%esp)
	movb	%al, 52(%esp)
	.p2align 4
	.p2align 3
L3047:
	movl	112(%esp), %eax
	movl	48(%eax), %eax
	movl	%eax, 64(%esp)
	subl	$1, %eax
	cmpl	1460(%edi), %eax
	jnb	L3056
	imull	$764, %eax, %eax
	addl	1496(%edi), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jle	L3056
L3058:
	movl	68(%esp), %esi
	testl	%esi, %esi
	je	L3634
L3056:
	movl	116(%esp), %edx
	movl	%edi, %eax
	movl	%ecx, 68(%esp)
	call	__Z24libxmp_virt_resetchannelP12context_datai
	movl	68(%esp), %ecx
L3060:
	movl	112(%esp), %eax
	movl	44(%eax), %esi
	movl	100(%esp), %eax
	xorl	$1, %eax
	andl	$1, %eax
	movb	%al, 64(%esp)
	cmpl	$120, 96(%esp)
	ja	L3057
	cmpl	1460(%edi), %esi
	jnb	L3064
	imull	$764, %esi, %eax
	movl	1496(%edi), %edx
	addl	%eax, %edx
	movl	%eax, 96(%esp)
	movl	36(%edx), %eax
	movl	%eax, 100(%esp)
	testl	%eax, %eax
	jle	L3064
	leal	256(%ecx), %eax
	movl	%eax, 68(%esp)
	movzbl	512(%edx,%ecx,2), %eax
	cmpl	$255, %eax
	je	L3064
	cmpl	%eax, 100(%esp)
	jle	L3064
	sall	$6, %eax
	addl	756(%edx), %eax
	andl	$1, %ebx
	movl	%eax, 68(%esp)
	jne	L3065
	testl	%eax, %eax
	je	L3065
	movl	12(%eax), %ebx
	leal	256(%ecx), %eax
	movsbl	1(%edx,%eax,2), %edx
	movl	112(%esp), %eax
	addl	%ecx, %ebx
	leal	-12(%ebx,%edx), %edx
	cmpl	$118, %edx
	jbe	L3066
	andl	$-65537, (%eax)
	movl	16(%eax), %ecx
	movb	$0, 68(%esp)
	movl	$-1, 100(%esp)
	.p2align 4
	.p2align 3
L2994:
	movl	%esi, %edx
	movl	%edi, %eax
	call	__ZL17get_subinstrumentP12context_dataii
	movl	100(%esp), %edx
	movl	%eax, %ebx
	movl	92(%esp), %eax
	movl	%ebx, %ecx
	movl	%eax, 4(%esp)
	movl	112(%esp), %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__ZL19set_effect_defaultsP12context_dataiP17xmp_subinstrumentP12channel_datai
	testl	%ebx, %ebx
	movzbl	60(%esp), %eax
	setne	96(%esp)
	andb	64(%esp), %al
	andb	96(%esp), %al
	jne	L3635
L2975:
	movzbl	84(%esp), %eax
	testb	%al, %al
	je	L3073
	movl	112(%esp), %esi
	subl	$1, %eax
	movl	%eax, 76(%esi)
	movl	8(%esi), %eax
	orl	$4096, (%esi)
	testb	$4, %al
	je	L3073
	andl	$-1028, %eax
	movl	$65536, 68(%esi)
	movl	%eax, 8(%esi)
L3073:
	movzbl	76(%esp), %eax
	movl	112(%esp), %edx
	leal	120(%esp), %esi
	movl	116(%esp), %ecx
	movb	%al, 120(%esp)
	movzbl	88(%esp), %eax
	movl	$0, 220(%edx)
	movb	%al, 121(%esp)
	movzbl	84(%esp), %eax
	movl	$1, 4(%esp)
	movb	%al, 122(%esp)
	movzbl	104(%esp), %eax
	movl	%esi, (%esp)
	movb	%al, 123(%esp)
	movzwl	72(%esp), %eax
	movw	%ax, 124(%esp)
	movl	%edi, %eax
	call	__Z17libxmp_process_fxP12context_dataP12channel_dataiP9xmp_eventi
	movl	%esi, (%esp)
	movl	116(%esp), %ecx
	movl	%edi, %eax
	movl	$0, 4(%esp)
	movl	112(%esp), %edx
	call	__Z17libxmp_process_fxP12context_dataP12channel_dataiP9xmp_eventi
	cmpb	$0, 68(%esp)
	jne	L3636
	movl	100(%esp), %eax
	testl	%eax, %eax
	js	L3077
	cmpb	$0, 96(%esp)
	je	L3077
	movl	112(%esp), %eax
	fldl	24(%eax)
	fstl	104(%esp)
	fld1
	fcomip	%st(1), %st
	fstp	%st(0)
	ja	L3075
	movl	92(%esp), %eax
	testl	%eax, %eax
	jne	L3076
L3075:
	movl	112(%esp), %esi
	movl	100(%esp), %edx
	movl	%edi, %eax
	movl	40(%esi), %ecx
	call	__Z21libxmp_note_to_periodP12context_dataiid.isra.0
	fstpl	24(%esi)
L3076:
	movl	112(%esp), %eax
	movl	100(%esp), %esi
	movl	220(%eax), %edx
	movl	%esi, 12(%eax)
	testb	$4, 2615(%edi)
	je	L3079
	imull	$52, 40(%ebx), %eax
	addl	1500(%edi), %eax
	cmpl	%edx, 32(%eax)
	jle	L3637
L3079:
	movl	116(%esp), %esi
	cmpl	704(%edi), %esi
	jnb	L3078
	movl	716(%edi), %eax
	movl	4(%eax,%esi,8), %eax
	cmpl	712(%edi), %eax
	jnb	L3078
	testl	%eax, %eax
	js	L3078
	movl	%edx, 116(%esp)
	fildl	116(%esp)
	movl	%eax, %edx
	movl	%edi, %eax
	fstpl	(%esp)
	call	__Z21libxmp_mixer_voiceposP12context_dataidi.constprop.0
L3078:
	movl	80(%esp), %esi
	testl	%esi, %esi
	je	L2949
	movl	112(%esp), %edi
	movl	(%edi), %eax
	movl	%eax, 116(%esp)
	testb	$16, %ah
	jne	L2949
	movl	(%ebx), %eax
	movl	%eax, 76(%edi)
	jmp	L2949
	.p2align 4,,10
	.p2align 3
L2967:
	movl	112(%esp), %ebx
	addl	376(%edi), %ebx
	movl	$1, 112(%esp)
	movl	$0, (%ebx)
	movzbl	3(%esi), %eax
	subl	$3, %eax
	testb	$-3, %al
	je	L3080
	movzbl	5(%esi), %eax
	subl	$3, %eax
	testb	$-3, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 112(%esp)
L3080:
	movzbl	1(%esi), %eax
	movl	116(%esp), %ecx
	cmpl	704(%edi), %ecx
	jnb	L3081
	movl	716(%edi), %edx
	movl	4(%edx,%ecx,8), %edx
	cmpl	712(%edi), %edx
	jnb	L3081
	testl	%edx, %edx
	js	L3081
L3082:
	testb	%al, %al
	je	L3590
	movlps	LC40, %xmm0
	leal	-1(%eax), %edx
	andl	$-1028, 8(%ebx)
	movl	$65536, 68(%ebx)
	movl	$0, 220(%ebx)
	movlps	%xmm0, (%ebx)
	cmpl	1460(%edi), %edx
	jnb	L3086
	imull	$764, %edx, %eax
	movl	1496(%edi), %ecx
	movl	36(%ecx,%eax), %ecx
	testl	%ecx, %ecx
	jle	L3086
	movl	44(%ebx), %ecx
	movl	%ecx, 100(%esp)
	cmpl	%ecx, %edx
	je	L3638
	movl	112(%esp), %ecx
	testl	%ecx, %ecx
	jne	L3088
	movl	%edx, 44(%ebx)
	movl	1496(%edi), %ecx
	movl	%edx, 100(%esp)
	movl	$1, %edx
	movl	40(%ecx,%eax), %eax
	movl	$1, 92(%esp)
	movl	%eax, 72(%ebx)
	movzbl	(%esi), %eax
	movb	%al, 104(%esp)
	jmp	L3085
	.p2align 4,,10
	.p2align 3
L3086:
	movl	$0, (%ebx)
L3590:
	movzbl	(%esi), %eax
	movl	$0, 92(%esp)
	xorl	%edx, %edx
	movb	%al, 104(%esp)
	movl	44(%ebx), %eax
	movl	%eax, 100(%esp)
L3085:
	cmpb	$0, 104(%esp)
	je	L3591
	orl	$65536, (%ebx)
	movzbl	(%esi), %eax
	cmpb	$-127, %al
	je	L3639
	movl	112(%esp), %ecx
	testl	%ecx, %ecx
	je	L3092
	movl	$-1, 104(%esp)
	movl	16(%ebx), %ecx
	testl	%edx, %edx
	je	L3090
	movl	$0, 220(%ebx)
	jmp	L3090
	.p2align 4,,10
	.p2align 3
L3623:
	movl	452(%ebx), %eax
	movl	%eax, 44(%esp)
	testl	%eax, %eax
	je	L3106
	movb	%al, 104(%esp)
L3104:
	movl	$0, 452(%ebx)
	movl	$0, (%ebx)
	movl	2612(%edi), %eax
	movl	%eax, %ecx
	movl	%eax, 60(%esp)
	andl	$32768, %ecx
	movl	%ecx, 64(%esp)
	testl	$8388608, %eax
	je	L3107
	cmpb	$-127, 100(%esp)
	je	L3640
L3107:
	movzbl	104(%esp), %eax
	testb	%al, %al
	je	L3109
	cmpl	1460(%edi), %eax
	jg	L3593
	movzbl	100(%esp), %ecx
	leal	-1(%ecx), %edx
	cmpb	$120, %dl
	ja	L3593
	subl	$1, %eax
	movl	%eax, 76(%esp)
	imull	$764, %eax, %eax
	addl	1496(%edi), %eax
	movzbl	510(%eax,%esi,2), %eax
	cmpl	$255, %eax
	je	L3112
	cmpl	1464(%edi), %eax
	jl	L3593
L3112:
	movl	$0, 120(%esp)
	movl	$0, 124(%esp)
L3596:
	movl	$0, 80(%esp)
	movb	$0, 68(%esp)
	movb	$0, 100(%esp)
	movl	$0, 44(%esp)
	movb	$0, 104(%esp)
	movb	$0, 96(%esp)
	movb	$0, 84(%esp)
	.p2align 4
	.p2align 3
L3113:
	movzbl	68(%esp), %eax
	xorl	%edx, %edx
	subl	$3, %eax
	testb	$-3, %al
	sete	%dl
	jmp	L3119
	.p2align 4,,10
	.p2align 3
L3591:
	movl	$-1, 104(%esp)
	movl	16(%ebx), %ecx
L3090:
	movl	100(%esp), %edx
	movl	%edi, %eax
	call	__ZL17get_subinstrumentP12context_dataii
	movl	112(%esp), %ecx
	movl	104(%esp), %edx
	movl	%ebx, (%esp)
	movl	%eax, 96(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, %ecx
	movl	%edi, %eax
	call	__ZL19set_effect_defaultsP12context_dataiP17xmp_subinstrumentP12channel_datai
	cmpb	$0, 1(%esi)
	je	L3098
	testl	%ecx, %ecx
	jne	L3641
L3098:
	movzbl	2(%esi), %eax
	testb	%al, %al
	jne	L3240
L3100:
	movl	%esi, (%esp)
	movl	116(%esp), %ecx
	movl	%ebx, %edx
	movl	%edi, %eax
	movl	$1, 4(%esp)
	call	__Z17libxmp_process_fxP12context_dataP12channel_dataiP9xmp_eventi
	movl	%esi, (%esp)
	movl	116(%esp), %ecx
	movl	%ebx, %edx
	movl	$0, 4(%esp)
	movl	%edi, %eax
	call	__Z17libxmp_process_fxP12context_dataP12channel_dataiP9xmp_eventi
	movl	112(%esp), %eax
	movl	96(%esp), %esi
	movl	%ebx, (%esp)
	movl	104(%esp), %edx
	movl	%eax, 4(%esp)
	movl	%esi, %ecx
	movl	%edi, %eax
	call	__ZL10set_periodP12context_dataiP17xmp_subinstrumentP12channel_datai
	testl	%esi, %esi
	je	L2949
L3239:
	movl	104(%esp), %eax
	testl	%eax, %eax
	jns	L3642
L3101:
	movl	92(%esp), %ecx
	testl	%ecx, %ecx
	je	L3102
	testb	$16, 1(%ebx)
	jne	L3103
	movl	96(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 76(%ebx)
	jmp	L2949
	.p2align 4,,10
	.p2align 3
L3240:
	subl	$1, %eax
	orl	$4096, (%ebx)
	movl	%eax, 76(%ebx)
	jmp	L3100
	.p2align 4,,10
	.p2align 3
L2954:
	movl	9820(%edi), %eax
	movl	$0, 104(%esp)
	addl	%ecx, %eax
	movl	%eax, 96(%esp)
	movl	112(%esp), %eax
	cmpl	%eax, 96(%esp)
	jle	L2956
	subl	%ecx, %eax
	imull	$764, %eax, %eax
	addl	9828(%edi), %eax
	movl	%eax, 104(%esp)
	jmp	L2955
	.p2align 4,,10
	.p2align 3
L3102:
	testb	$16, 2612(%edi)
	je	L2949
	testb	$16, 1(%ebx)
	je	L2949
L3238:
	movl	76(%ebx), %eax
	imull	328(%edi), %eax
	cltd
	idivl	2588(%edi)
	movl	%eax, 76(%ebx)
	jmp	L2949
	.p2align 4,,10
	.p2align 3
L3081:
	movzbl	%al, %edx
	subl	$1, %edx
	cmpl	%edx, 44(%ebx)
	sete	%dl
	movzbl	%dl, %edx
	andl	%edx, 112(%esp)
	jmp	L3082
	.p2align 4,,10
	.p2align 3
L3630:
	andb	$127, 250(%esi)
	movl	$0, (%esi)
	movzbl	%dl, %esi
	cmpb	$20, 104(%esp)
	jne	L2972
	cmpb	$0, 96(%esp)
	jne	L2974
L2973:
	movl	112(%esp), %esi
	movl	44(%esi), %esi
	movl	%esi, 52(%esp)
	cmpl	1460(%edi), %esi
	jnb	L3608
	imull	$764, 52(%esp), %ecx
	addl	1496(%edi), %ecx
	movl	36(%ecx), %edx
	testl	%edx, %edx
	jle	L3608
	movl	44(%ecx), %ecx
	andl	$1, %ecx
	movl	%ecx, 100(%esp)
	je	L2980
	subl	$3, %eax
	testb	$-3, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 92(%esp)
	movzbl	88(%esp), %eax
	movl	%eax, 80(%esp)
	testl	%eax, %eax
	je	L3605
	movb	$20, 56(%esp)
	xorl	%esi, %esi
	movb	$20, 104(%esp)
	.p2align 4
	.p2align 3
L2977:
	subl	$1, %eax
	movl	%eax, 68(%esp)
	cmpl	1460(%edi), %eax
	jnb	L3606
	imull	$764, 68(%esp), %eax
	addl	1496(%edi), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jle	L3606
L2989:
	testl	%esi, %esi
	sete	%dl
	cmpl	$128, %esi
	setg	%al
	orb	%al, %dl
	movb	%dl, 60(%esp)
	je	L3258
	movl	112(%esp), %eax
	movl	16(%eax), %ecx
	movl	44(%eax), %edx
	movl	%edi, %eax
	movl	%ecx, 48(%esp)
	movl	%edx, 52(%esp)
	call	__ZL17get_subinstrumentP12context_dataii
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	L2991
	movl	116(%esp), %eax
	leal	(%eax,%eax,2), %eax
	movl	1504(%edi,%eax,4), %edx
	movl	112(%esp), %eax
	movl	%edx, 64(%esp)
	movl	(%ecx), %edx
	movl	%edx, 76(%eax)
	testb	$16, 2613(%edi)
	jne	L2992
	movl	64(%esp), %edx
	leal	-128(%edx), %eax
	movl	%eax, 64(%esp)
	movl	8(%ecx), %eax
	leal	-128(%eax), %edx
	movl	64(%esp), %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovs	%eax, %ecx
	movl	$128, %eax
	subl	%ecx, %eax
	imull	%edx, %eax
	testl	%eax, %eax
	leal	127(%eax), %ecx
	cmovns	%eax, %ecx
	movl	64(%esp), %eax
	sarl	$7, %ecx
	leal	128(%eax,%ecx), %eax
	movl	112(%esp), %ecx
	movl	%eax, 368(%ecx)
L2992:
	imull	$764, 52(%esp), %eax
	addl	1496(%edi), %eax
	movl	40(%eax), %eax
	movl	112(%esp), %ecx
	movl	%eax, 72(%ecx)
	movl	$4096, %eax
L2991:
	cmpl	$131, %esi
	je	L2993
	orb	$8, %ah
L2990:
	movl	112(%esp), %ecx
	movl	%eax, (%ecx)
	movl	8(%ecx), %eax
	movl	$0, 4(%ecx)
	movl	%eax, %edx
	andl	$-1156, %eax
	movl	$65536, 68(%ecx)
	andl	$-1155, %edx
	cmpl	$0, 100(%esp)
	cmovne	%edx, %eax
	movl	68(%esp), %edx
	movl	%eax, 8(%ecx)
	cmpl	1460(%edi), %edx
	jnb	L2997
	imull	$764, %edx, %eax
	addl	1496(%edi), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jle	L2997
	movl	92(%esp), %eax
	movl	$0, 68(%esp)
	testl	%eax, %eax
	jne	L2999
	movl	%edx, 44(%ecx)
L2999:
	movl	112(%esp), %eax
	leal	-1(%esi), %ecx
	movb	$32, 250(%eax)
	cmpl	$127, %ecx
	jbe	L3643
	testl	%esi, %esi
	jne	L3009
	movl	100(%esp), %eax
	movl	$1, 80(%esp)
	movb	$0, 68(%esp)
	xorl	$1, %eax
	movb	$1, 60(%esp)
	andl	$1, %eax
	movl	$-1, 100(%esp)
	movb	%al, 64(%esp)
	movl	112(%esp), %eax
	movl	16(%eax), %ecx
	movl	44(%eax), %esi
	jmp	L2994
	.p2align 4,,10
	.p2align 3
L3641:
	movl	100(%esp), %eax
	cmpl	1460(%edi), %eax
	jnb	L3099
	imull	$764, %eax, %eax
	addl	1496(%edi), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jle	L3099
	movl	$-1, %eax
	andl	$-17, 8(%ebx)
	movl	%eax, 96(%ebx)
	movl	%eax, 100(%ebx)
	movl	$-1, 104(%ebx)
L3099:
	movzbl	2(%esi), %eax
	testb	%al, %al
	jne	L3240
	movl	$1, 4(%esp)
	movl	116(%esp), %ecx
	movl	%ebx, %edx
	movl	%edi, %eax
	movl	%esi, (%esp)
	call	__Z17libxmp_process_fxP12context_dataP12channel_dataiP9xmp_eventi
	movl	%esi, (%esp)
	movl	116(%esp), %ecx
	movl	%ebx, %edx
	movl	$0, 4(%esp)
	movl	%edi, %eax
	call	__Z17libxmp_process_fxP12context_dataP12channel_dataiP9xmp_eventi
	movl	112(%esp), %eax
	movl	96(%esp), %ecx
	movl	%ebx, (%esp)
	movl	104(%esp), %edx
	movl	%eax, 4(%esp)
	movl	%edi, %eax
	call	__ZL10set_periodP12context_dataiP17xmp_subinstrumentP12channel_datai
	jmp	L3239
	.p2align 4,,10
	.p2align 3
L3593:
	movzbl	84(%esp), %eax
	movl	$0, 80(%esp)
	movl	$0, 44(%esp)
	subl	$3, %eax
	andl	$-3, %eax
	jmp	L3108
	.p2align 4,,10
	.p2align 3
L3103:
	testb	$16, 2612(%edi)
	jne	L3238
	jmp	L2949
	.p2align 4,,10
	.p2align 3
L3109:
	movzbl	100(%esp), %eax
	subl	$1, %eax
	cmpb	$120, %al
	ja	L3594
	movl	48(%ebx), %eax
	movl	1460(%edi), %edx
	subl	$1, %eax
	cmpl	%edx, %eax
	jnb	L3595
	imull	$764, %eax, %ecx
	addl	1496(%edi), %ecx
	cmpl	$0, 36(%ecx)
	jle	L3595
	cmpl	%edx, %eax
	jge	L3594
	movzbl	510(%ecx,%esi,2), %eax
	cmpl	$255, %eax
	je	L3118
	cmpl	1464(%edi), %eax
	jl	L3594
L3118:
	movl	92(%esp), %eax
	movl	$0, 120(%esp)
	movl	$0, 124(%esp)
	movl	%eax, 76(%esp)
	jmp	L3596
	.p2align 4,,10
	.p2align 3
L3639:
	orl	$1026, 8(%ebx)
	movl	16(%ebx), %ecx
	movl	$0, 92(%esp)
	movl	$-1, 104(%esp)
	jmp	L3090
	.p2align 4,,10
	.p2align 3
L3640:
	movzbl	84(%esp), %eax
	movzbl	104(%esp), %edx
	subl	$3, %eax
	subl	$1, %edx
	andl	$-3, %eax
	cmpl	1460(%edi), %edx
	jnb	L3276
	imull	$764, %edx, %edx
	addl	1496(%edi), %edx
	xorl	%ecx, %ecx
	movb	$-127, 100(%esp)
	movl	36(%edx), %edx
	movl	$0, 44(%esp)
	testl	%edx, %edx
	setg	%cl
	movl	%ecx, 80(%esp)
	jmp	L3108
L3651:
	movl	72(%ebx), %edx
	testl	%edx, %edx
	je	L3208
	cmpl	68(%ebx), %edx
	jge	L3208
	.p2align 4
	.p2align 3
L3211:
	testl	%esi, %esi
	je	L3166
	cmpb	$0, 100(%esp)
	je	L3166
	movl	8(%ebx), %eax
L3214:
	andb	$-5, %ah
	movl	%eax, 8(%ebx)
	jmp	L3166
L3146:
	movl	76(%esp), %eax
	movl	$1, 64(%esp)
	movl	%eax, 72(%esp)
	movl	48(%esp), %eax
	movl	%eax, 52(%esp)
	.p2align 4
	.p2align 3
L3149:
	movl	(%ebx), %edx
	movl	%edx, %eax
	orl	$65536, %eax
	movl	%eax, (%ebx)
	movl	8(%ebx), %eax
	movl	%eax, %ecx
	orl	$64, %ecx
	movl	%ecx, 8(%ebx)
	cmpl	$131, %esi
	je	L3644
	cmpl	$130, %esi
	je	L3645
	cmpl	$129, %esi
	je	L3646
	cmpl	$0, 44(%esp)
	jne	L3601
	subl	$1, %esi
	movl	%esi, 60(%esp)
	movl	88(%esp), %esi
	testl	%esi, %esi
	je	L3177
	movl	%eax, %ecx
	movl	52(%esp), %esi
	andl	$4, %ecx
	orl	%ecx, %esi
	jne	L3647
	cmpl	$120, 60(%esp)
	ja	L3181
	movl	60(%esp), %eax
	movl	%eax, 108(%ebx)
L3181:
	movl	$0, 52(%esp)
L3602:
	movl	2612(%edi), %eax
	movb	$0, 48(%esp)
	movl	$-1, 92(%esp)
	movl	%eax, 60(%esp)
	.p2align 4
	.p2align 3
L3168:
	movl	88(%esp), %eax
	movl	%eax, 112(%esp)
	testb	$64, 62(%esp)
	je	L3199
	cmpb	$0, 104(%esp)
	jne	L3154
	movl	1460(%edi), %eax
	movl	72(%esp), %ecx
	cmpl	%eax, %ecx
	jnb	L3203
	imull	$764, %ecx, %ecx
	movl	1496(%edi), %edx
	movl	%edx, 36(%esp)
	movl	36(%edx,%ecx), %edx
	testl	%edx, %edx
	jg	L3156
L3203:
	movl	88(%esp), %eax
	movl	%eax, 112(%esp)
	jmp	L3157
	.p2align 4,,10
	.p2align 3
L3624:
	movl	2612(%edi), %eax
	movl	%eax, 60(%esp)
	jmp	L3168
	.p2align 4,,10
	.p2align 3
L3139:
	movzbl	104(%esp), %eax
	subl	$1, %eax
	movl	%eax, 52(%esp)
	testl	%esi, %esi
	jne	L3597
	testb	%cl, %cl
	je	L3597
	movl	%ebx, %edx
	movl	%edi, %eax
	call	__ZL21reset_envelopes_carryP12context_dataP12channel_data
L3597:
	movl	$0, 40(%esp)
	movl	$0, 88(%esp)
	movl	$0, 48(%esp)
L3127:
	movl	$2048, (%ebx)
	movl	$1, 56(%esp)
L3143:
	movl	$0, 4(%ebx)
	movl	52(%esp), %ecx
	movl	1460(%edi), %eax
	movl	%ecx, 72(%esp)
	cmpl	%eax, %ecx
	jnb	L3144
	movl	%ecx, 60(%esp)
	imull	$764, %ecx, %ecx
	movl	1496(%edi), %edx
	movl	%edx, 36(%esp)
	movl	36(%edx,%ecx), %edx
	testl	%edx, %edx
	jle	L3144
	testl	%esi, %esi
	je	L3145
	movl	92(%esp), %ecx
	cmpl	%ecx, 60(%esp)
	je	L3146
	movl	88(%esp), %eax
	testl	%eax, %eax
	je	L3147
	movl	2612(%edi), %ecx
	movl	%ecx, 60(%esp)
	andl	$4194304, %ecx
	je	L3148
	movl	%eax, 64(%esp)
	movl	76(%esp), %ecx
	movl	48(%esp), %eax
	movl	%ecx, 72(%esp)
	movl	%eax, 52(%esp)
	jmp	L3149
	.p2align 4,,10
	.p2align 3
L3144:
	movl	64(%esp), %eax
	testl	%eax, %eax
	jne	L3169
	movl	$0, 76(%ebx)
L3169:
	movl	76(%esp), %eax
	movl	$0, (%ebx)
	movl	$0, 64(%esp)
	movl	%eax, 72(%esp)
	movl	48(%esp), %eax
	movl	$1, 44(%esp)
	movl	%eax, 52(%esp)
	jmp	L3124
	.p2align 4,,10
	.p2align 3
L3642:
	movl	%eax, 12(%ebx)
	movl	116(%esp), %esi
	cmpl	704(%edi), %esi
	jnb	L3101
	movl	716(%edi), %eax
	movl	4(%eax,%esi,8), %edx
	cmpl	712(%edi), %edx
	jnb	L3101
	testl	%edx, %edx
	js	L3101
	fildl	220(%ebx)
	movl	%edi, %eax
	fstpl	(%esp)
	call	__Z21libxmp_mixer_voiceposP12context_dataidi.constprop.0
	jmp	L3101
	.p2align 4,,10
	.p2align 3
L3227:
	movl	40(%esp), %eax
	testl	%eax, %eax
	je	L3229
	jmp	L3228
	.p2align 4,,10
	.p2align 3
L3626:
	orl	$2048, (%ebx)
	movl	116(%esp), %esi
	cmpl	704(%edi), %esi
	jnb	L3218
	movl	716(%edi), %eax
	movl	4(%eax,%esi,8), %edx
	cmpl	712(%edi), %edx
	jnb	L3218
	testl	%edx, %edx
	js	L3218
	movl	$0, (%esp)
	movl	%edi, %eax
	movl	$0, 4(%esp)
	call	__Z21libxmp_mixer_voiceposP12context_dataidi.constprop.0
L3218:
	andl	$-1156, 8(%ebx)
	movl	$65536, 68(%ebx)
	jmp	L3217
	.p2align 4,,10
	.p2align 3
L2982:
	movl	$1, 92(%esp)
	jmp	L2983
	.p2align 4,,10
	.p2align 3
L3632:
	movzbl	104(%esp), %ecx
	movl	$0, 100(%esp)
	movb	%cl, 56(%esp)
	jmp	L2977
	.p2align 4,,10
	.p2align 3
L3620:
	movl	100(%esp), %edx
	orl	$1026, %edx
	movl	%edx, 8(%ebx)
	jmp	L2949
	.p2align 4,,10
	.p2align 3
L3606:
	cmpl	$131, %esi
	je	L3648
L2988:
	movl	112(%esp), %ecx
	xorl	%edx, %edx
	movl	$2048, %eax
	movl	%edx, 4(%ecx)
	movl	100(%esp), %edx
	movl	%eax, (%ecx)
	movl	8(%ecx), %eax
	testl	%edx, %edx
	jne	L3236
	andl	$-1156, %eax
	movl	$65536, 68(%ecx)
	movl	%eax, 8(%ecx)
	movl	92(%esp), %eax
	movl	$0, (%ecx)
	testl	%eax, %eax
	je	L3649
	movl	$0, 92(%esp)
L3233:
	movl	112(%esp), %eax
	movl	$1, 80(%esp)
	movb	$0, 68(%esp)
	movl	16(%eax), %ecx
	movl	44(%eax), %esi
	movb	$32, 250(%eax)
	movl	100(%esp), %eax
	movl	$-1, 100(%esp)
	testl	%eax, %eax
	movl	92(%esp), %eax
	movl	$1, 92(%esp)
	setne	60(%esp)
	xorl	$1, %eax
	andl	$1, %eax
	movb	%al, 64(%esp)
	jmp	L2994
	.p2align 4,,10
	.p2align 3
L3213:
	movl	8(%ebx), %eax
	movl	$65536, 68(%ebx)
	andb	$124, %al
	movl	%eax, 8(%ebx)
	testl	%esi, %esi
	jne	L3214
	jmp	L3166
	.p2align 4,,10
	.p2align 3
L3077:
	testl	%ebx, %ebx
	je	L2949
	movl	100(%esp), %eax
	testl	%eax, %eax
	js	L3078
	jmp	L3076
	.p2align 4,,10
	.p2align 3
L3636:
	movl	112(%esp), %esi
	movl	100(%esp), %edx
	movl	%edi, %eax
	movl	40(%esi), %ecx
	call	__Z21libxmp_note_to_periodP12context_dataiid.isra.0
	fstpl	336(%esi)
	cmpb	$0, 96(%esp)
	je	L2949
	fldl	24(%esi)
	fstl	104(%esp)
	fld1
	fcomip	%st(1), %st
	fstp	%st(0)
	jbe	L3076
	jmp	L3075
	.p2align 4,,10
	.p2align 3
L3621:
	movl	100(%esp), %edx
	orl	$1, %edx
	movl	%edx, 8(%ebx)
	jmp	L2949
	.p2align 4,,10
	.p2align 3
L3595:
	movzbl	84(%esp), %eax
	movb	$0, 104(%esp)
	movl	$0, 80(%esp)
	subl	$3, %eax
	movl	$1, 44(%esp)
	andl	$-3, %eax
	jmp	L3108
	.p2align 4,,10
	.p2align 3
L3644:
	orl	$65, %eax
	movb	$0, 48(%esp)
	xorl	%esi, %esi
	movl	%eax, 8(%ebx)
	movl	80(%esp), %eax
	orl	88(%esp), %eax
	movl	$0, 56(%esp)
	movl	%eax, 112(%esp)
	movl	$0, 64(%esp)
	movl	$-1, 92(%esp)
	jmp	L3152
	.p2align 4,,10
	.p2align 3
L3643:
	movl	%eax, %esi
	movl	44(%eax), %eax
	movl	%eax, 96(%esp)
	movl	%eax, %edx
	movl	%edi, %eax
	call	__ZL17get_subinstrumentP12context_dataii
	testl	%eax, %eax
	je	L3004
	movl	116(%esp), %edx
	leal	(%edx,%edx,2), %edx
	movl	1504(%edi,%edx,4), %edx
	movl	%edx, 80(%esp)
	movl	(%eax), %edx
	movl	%edx, 76(%esi)
	testb	$16, 2613(%edi)
	jne	L3005
	movl	80(%esp), %edx
	movl	8(%eax), %eax
	addl	$-128, %edx
	addl	$-128, %eax
	movl	%edx, %esi
	negl	%edx
	movl	%eax, 80(%esp)
	movl	%edx, %eax
	movl	$128, %edx
	cmovs	%esi, %eax
	subl	%eax, %edx
	movl	80(%esp), %eax
	imull	%edx, %eax
	testl	%eax, %eax
	leal	127(%eax), %edx
	cmovns	%eax, %edx
	sarl	$7, %edx
	leal	128(%edx,%esi), %eax
	movl	112(%esp), %esi
	movl	%eax, 368(%esi)
L3005:
	imull	$764, 96(%esp), %esi
	addl	1496(%edi), %esi
	movl	40(%esi), %eax
	movl	112(%esp), %esi
	movl	%eax, 72(%esi)
L3006:
	movl	112(%esp), %eax
	orl	$69632, (%eax)
	movl	92(%esp), %eax
	testl	%eax, %eax
	je	L3007
	movl	100(%esp), %eax
	movb	$1, 60(%esp)
	xorl	$1, %eax
	andl	$1, %eax
	movb	%al, 64(%esp)
L3008:
	cmpb	$0, 88(%esp)
	je	L3266
L3246:
	movl	68(%esp), %eax
	testl	%eax, %eax
	je	L3650
	movl	116(%esp), %edx
	movl	%edi, %eax
	call	__Z24libxmp_virt_resetchannelP12context_datai
	movl	112(%esp), %eax
	movl	$-1, 100(%esp)
	movl	16(%eax), %ecx
	movl	44(%eax), %esi
	movl	92(%esp), %eax
	movl	%eax, 80(%esp)
	movl	68(%esp), %eax
	movb	$0, 68(%esp)
	movl	%eax, 92(%esp)
	jmp	L2994
	.p2align 4,,10
	.p2align 3
L3092:
	leal	-1(%eax), %ecx
	cmpl	$120, %ecx
	ja	L3591
	andl	$-5, 8(%ebx)
	movl	100(%esp), %edx
	movl	%ecx, 16(%ebx)
	cmpl	1460(%edi), %edx
	jnb	L3094
	imull	$764, %edx, %edx
	addl	1496(%edi), %edx
	movl	%edx, 104(%esp)
	movl	36(%edx), %edx
	movl	%edx, 96(%esp)
	testl	%edx, %edx
	jle	L3094
	leal	255(%eax), %edx
	movl	%edx, 84(%esp)
	movl	104(%esp), %edx
	movzbl	510(%edx,%eax,2), %eax
	cmpl	%eax, 96(%esp)
	jle	L3094
	cmpl	$255, %eax
	je	L3094
	sall	$6, %eax
	addl	756(%edx), %eax
	je	L3094
	movl	%ecx, %edx
	addl	12(%eax), %edx
	movl	%eax, 96(%esp)
	movl	%edx, 88(%esp)
	movl	104(%esp), %eax
	movl	84(%esp), %edx
	movsbl	1(%eax,%edx,2), %edx
	movl	88(%esp), %eax
	addl	%edx, %eax
	movl	%eax, 104(%esp)
	movl	96(%esp), %eax
	movl	40(%eax), %edx
	movl	1464(%edi), %eax
	cmpl	%eax, %edx
	jnb	L3090
	movl	%edx, 96(%esp)
	imull	$52, %edx, %edx
	addl	1500(%edi), %edx
	movl	48(%edx), %edx
	testl	%edx, %edx
	je	L3090
	movl	96(%esp), %edx
	notl	%edx
	shrl	$31, %edx
	cmpl	%eax, 96(%esp)
	setl	%al
	testb	%dl, %al
	je	L3090
	xorl	%eax, %eax
	movl	100(%esp), %ecx
	movl	116(%esp), %edx
	movl	%eax, 20(%esp)
	movl	%eax, 16(%esp)
	movl	%eax, 12(%esp)
	movl	%eax, 8(%esp)
	movl	104(%esp), %eax
	movl	%eax, 4(%esp)
	movl	96(%esp), %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__Z20libxmp_virt_setpatchP12context_dataiiiiiiii
	movl	96(%esp), %eax
	movl	16(%ebx), %ecx
	movl	%eax, 52(%ebx)
	movl	44(%ebx), %eax
	movl	%eax, 100(%esp)
	jmp	L3090
	.p2align 4,,10
	.p2align 3
L3625:
	movl	1460(%edi), %ecx
	movl	76(%esp), %edx
	movl	%ecx, 88(%esp)
	testl	%edx, %edx
	js	L3208
	cmpl	%ecx, %edx
	jge	L3209
	imull	$764, 72(%esp), %edx
	addl	1496(%edi), %edx
L3210:
	testl	%edx, %edx
	je	L3208
	movl	44(%edx), %edx
	notl	%edx
	andl	$33, %edx
	je	L3651
L3208:
	movl	44(%ebx), %edx
	cmpl	88(%esp), %edx
	jnb	L3157
	imull	$764, %edx, %edx
	addl	1496(%edi), %edx
	movl	36(%edx), %edx
	testl	%edx, %edx
	jle	L3157
	andl	$-17, %eax
	movl	$-1, 96(%ebx)
	movl	%eax, 8(%ebx)
	jmp	L3157
L3645:
	orl	$332, %eax
	movl	$0, 24(%ebx)
	movl	116(%esp), %edx
	movl	%eax, 8(%ebx)
	movl	%edi, %eax
	movl	$0, 28(%ebx)
	call	__Z24libxmp_virt_resetchannelP12context_datai
L3601:
	movl	80(%esp), %eax
	orl	88(%esp), %eax
	movb	$0, 48(%esp)
	xorl	%esi, %esi
	movl	%eax, 112(%esp)
	movl	$-1, 92(%esp)
	jmp	L3152
	.p2align 4,,10
	.p2align 3
L3121:
	cmpb	$9, 84(%esp)
	je	L3128
	cmpb	$0, 104(%esp)
	jne	L3129
	movl	76(%esp), %eax
	movl	$0, 40(%esp)
	movl	%eax, 72(%esp)
L3599:
	movl	$0, 64(%esp)
	movl	$0, 56(%esp)
	movl	$1, 88(%esp)
	movl	$0, 48(%esp)
	movl	$0, 52(%esp)
	jmp	L3124
	.p2align 4,,10
	.p2align 3
L3627:
	cmpl	1460(%edi), %esi
	jnb	L3223
	imull	$764, %esi, %esi
	addl	1496(%edi), %esi
	movl	36(%esi), %ecx
	testl	%ecx, %ecx
	jle	L3223
	movlps	LC41, %xmm0
	movl	$-1, 104(%ebx)
	andl	$-17, %eax
	movlps	%xmm0, 96(%ebx)
	jmp	L3223
	.p2align 4,,10
	.p2align 3
L3629:
	movl	44(%ebx), %eax
	cmpl	1460(%edi), %eax
	jnb	L2966
	imull	$764, %eax, %eax
	addl	1496(%edi), %eax
	movl	36(%eax), %ecx
	testl	%ecx, %ecx
	jle	L2966
	movl	$-1, %eax
	andl	$-17, 8(%ebx)
	movl	%eax, 96(%ebx)
	movl	%eax, 100(%ebx)
	movl	$-1, 104(%ebx)
	jmp	L2966
	.p2align 4,,10
	.p2align 3
L3106:
	movl	$0, (%ebx)
	movl	2612(%edi), %eax
	movl	%eax, %ecx
	movl	%eax, 60(%esp)
	andl	$32768, %ecx
	movl	%ecx, 64(%esp)
	testl	$8388608, %eax
	je	L3109
	cmpb	$-127, 100(%esp)
	jne	L3109
	movzbl	84(%esp), %eax
	movl	$0, 80(%esp)
	movb	$-127, 100(%esp)
	subl	$3, %eax
	andl	$-3, %eax
	jmp	L3108
	.p2align 4,,10
	.p2align 3
L3631:
	cmpb	$0, 96(%esp)
	jne	L2974
	movzbl	88(%esp), %ecx
	orb	%al, %cl
	jne	L2973
	movl	112(%esp), %esi
	movl	%edi, %eax
	movl	16(%esi), %ecx
	movl	44(%esi), %edx
	call	__ZL17get_subinstrumentP12context_dataii
	movl	%esi, (%esp)
	movl	$-1, %edx
	movl	$0, 4(%esp)
	movl	%eax, %ebx
	movl	%eax, %ecx
	movl	%edi, %eax
	call	__ZL19set_effect_defaultsP12context_dataiP17xmp_subinstrumentP12channel_datai
	testl	%ebx, %ebx
	movb	$0, 68(%esp)
	movl	$0, 92(%esp)
	movl	$0, 80(%esp)
	movl	$-1, 100(%esp)
	setne	96(%esp)
	jmp	L3073
	.p2align 4,,10
	.p2align 3
L3635:
	cmpl	1460(%edi), %esi
	jnb	L3072
	imull	$764, %esi, %edx
	addl	1496(%edi), %edx
	movb	%al, 96(%esp)
	movl	36(%edx), %edx
	testl	%edx, %edx
	jle	L2975
	movl	112(%esp), %esi
	movlps	LC41, %xmm0
	andl	$-17, 8(%esi)
	movl	$-1, 104(%esi)
	movlps	%xmm0, 96(%esi)
L3072:
	movb	%al, 96(%esp)
	jmp	L2975
	.p2align 4,,10
	.p2align 3
L3646:
	movl	44(%ebx), %ecx
	cmpl	1460(%edi), %ecx
	jnb	L3173
	imull	$764, %ecx, %ecx
	addl	1496(%edi), %ecx
	movl	36(%ecx), %esi
	testl	%esi, %esi
	jle	L3173
	movl	44(%ecx), %esi
	andl	$7, %esi
	cmpl	$3, %esi
	je	L3652
L3173:
	orl	$1090, %eax
	movl	%eax, %ecx
L3175:
	orl	$67174400, %edx
	xorl	%eax, %eax
	movl	%ecx, 8(%ebx)
	cmpb	$0, 104(%esp)
	setne	%al
	andl	%eax, 64(%esp)
	movl	80(%esp), %eax
	xorl	%esi, %esi
	orl	88(%esp), %eax
	movl	%edx, (%ebx)
	movl	%eax, 112(%esp)
	movb	$0, 48(%esp)
	movl	$0, 56(%esp)
	movl	$-1, 92(%esp)
	jmp	L3152
	.p2align 4,,10
	.p2align 3
L3622:
	movl	100(%esp), %edx
	movl	$0, 24(%ebx)
	movl	%edi, %eax
	movl	$0, 28(%ebx)
	orl	$4, %edx
	movl	%edx, 8(%ebx)
	movl	116(%esp), %edx
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
	jmp	__Z24libxmp_virt_resetchannelP12context_datai
	.p2align 4,,10
	.p2align 3
L3064:
	.cfi_restore_state
	movl	112(%esp), %eax
	andl	$-5, 8(%eax)
	movl	%ecx, 16(%eax)
	movl	$65536, 68(%eax)
L3069:
	movl	112(%esp), %eax
	movb	$0, 68(%esp)
	movl	$0, 80(%esp)
	movl	$0, (%eax)
	movl	$-1, 100(%esp)
	jmp	L2994
L3290:
	movl	48(%esp), %eax
	movl	$-1, 92(%esp)
	movb	$0, 48(%esp)
	movl	%eax, 52(%esp)
	movl	88(%esp), %eax
	movl	%eax, 64(%esp)
	.p2align 4
	.p2align 3
L3154:
	movl	%edi, %eax
	movl	%ebx, %edx
	call	__ZL21reset_envelopes_carryP12context_dataP12channel_data
	movl	1460(%edi), %eax
	movl	72(%esp), %ecx
	cmpl	%eax, %ecx
	jnb	L3201
	movl	1496(%edi), %edx
	imull	$764, %ecx, %ecx
	movl	%edx, 36(%esp)
	movl	88(%esp), %edx
	movl	%edx, 112(%esp)
	movl	36(%esp), %edx
	movl	36(%edx,%ecx), %edx
	testl	%edx, %edx
	jg	L3156
L3201:
	movl	88(%esp), %eax
	movl	%eax, 112(%esp)
	jmp	L3202
L3145:
	movl	8(%ebx), %ecx
	testb	$1, %ch
	je	L3150
	movl	92(%esp), %edx
	cmpl	%edx, 72(%esp)
	je	L3653
	movl	88(%esp), %ecx
	movl	%ecx, 92(%esp)
	testl	%ecx, %ecx
	je	L3285
	movl	2612(%edi), %ecx
	movl	%ecx, 60(%esp)
	andl	$4194304, %ecx
	je	L3148
	movl	76(%esp), %ecx
	movl	%ecx, 72(%esp)
	cmpb	$0, 104(%esp)
	jne	L3290
	cmpl	%eax, %ecx
	jnb	L3165
	imull	$764, %ecx, %ecx
	movl	36(%esp), %edx
	cmpl	$0, 36(%edx,%ecx)
	jle	L3654
L3291:
	movl	88(%esp), %edx
	movl	$-1, 92(%esp)
	movl	%edx, 64(%esp)
	movl	48(%esp), %edx
	movb	$0, 48(%esp)
	movl	%edx, 52(%esp)
	movl	64(%esp), %edx
	movl	%edx, 112(%esp)
	jmp	L3156
	.p2align 4,,10
	.p2align 3
L3236:
	movl	112(%esp), %ecx
	andl	$-1155, %eax
	movl	%eax, 8(%ecx)
L3235:
	movl	112(%esp), %eax
	movl	92(%esp), %ecx
	movl	$65536, 68(%eax)
	movl	$0, (%eax)
	testl	%ecx, %ecx
	je	L3655
	movl	$0, 100(%esp)
	jmp	L3233
L3637:
	movl	116(%esp), %edx
	movl	%edi, %eax
	call	__Z24libxmp_virt_resetchannelP12context_datai
	jmp	L3078
L3608:
	subl	$3, %eax
	testb	$-3, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 92(%esp)
	movzbl	88(%esp), %eax
	movl	%eax, 80(%esp)
	testl	%eax, %eax
	je	L3605
	movl	$1, 100(%esp)
	xorl	%esi, %esi
	movb	$20, 56(%esp)
	movb	$20, 104(%esp)
	jmp	L2977
L3209:
	movl	88(%esp), %ecx
	addl	9820(%edi), %ecx
	movl	%ecx, %edx
	movl	76(%esp), %ecx
	cmpl	%ecx, %edx
	jle	L3208
	movl	%ecx, %edx
	subl	88(%esp), %edx
	imull	$764, %edx, %edx
	addl	9828(%edi), %edx
	jmp	L3210
L3276:
	movb	$-127, 100(%esp)
	movl	$0, 80(%esp)
	movl	$0, 44(%esp)
	jmp	L3108
L3009:
	movl	112(%esp), %eax
	orl	$65536, (%eax)
	cmpl	$129, %esi
	je	L3656
	movl	92(%esp), %esi
	testl	%esi, %esi
	jne	L3657
	movl	%ecx, 96(%esp)
	cmpb	$0, 88(%esp)
	jne	L3658
	movl	$1, 80(%esp)
	movb	$0, 52(%esp)
	movb	$1, 60(%esp)
	jmp	L3047
L2993:
	movl	112(%esp), %ebx
	orl	$65536, %eax
	movl	48(%esp), %ecx
	movb	$0, 68(%esp)
	movl	$0, 80(%esp)
	movl	52(%esp), %esi
	movl	%eax, (%ebx)
	movl	100(%esp), %eax
	orl	$1, 8(%ebx)
	xorl	$1, %eax
	movl	$-1, 100(%esp)
	andl	$1, %eax
	movb	%al, 64(%esp)
	jmp	L2994
L3638:
	movzbl	(%esi), %eax
	movl	$1, 92(%esp)
	xorl	%edx, %edx
	movb	%al, 104(%esp)
	jmp	L3085
L3128:
	movl	60(%esp), %edx
	andl	$4194304, %edx
	movl	%edx, 48(%esp)
	je	L3133
	cmpb	$0, 104(%esp)
	jne	L3134
	movl	76(%esp), %eax
	movl	$1, 40(%esp)
	movl	%eax, 72(%esp)
	jmp	L3599
L3673:
	movl	112(%esp), %eax
	movl	$1, 80(%esp)
	movb	$1, 60(%esp)
	movl	44(%eax), %esi
	movl	100(%esp), %eax
	xorl	$1, %eax
	andl	$1, %eax
	movb	%al, 64(%esp)
L3057:
	movl	112(%esp), %eax
	movb	$0, 68(%esp)
	movl	$-1, 100(%esp)
	movl	16(%eax), %ecx
	jmp	L2994
L2997:
	movl	112(%esp), %eax
	movl	$0, (%eax)
	movl	92(%esp), %eax
	testl	%eax, %eax
	jne	L3659
	movl	$1, 68(%esp)
	jmp	L2999
L3004:
	movl	112(%esp), %eax
	movl	$0, 76(%eax)
	jmp	L3006
L3258:
	movl	$2048, %eax
	jmp	L2990
L3088:
	movzbl	(%esi), %ecx
	movl	%edi, %eax
	movb	%cl, 104(%esp)
	subl	$1, %ecx
	call	__ZL17get_subinstrumentP12context_dataii
	testl	%eax, %eax
	je	L3274
	movl	(%eax), %eax
	movl	112(%esp), %edx
	movl	$0, 92(%esp)
	movl	%eax, 76(%ebx)
	movzbl	(%esi), %eax
	movb	%al, 104(%esp)
	jmp	L3085
L3129:
	movzbl	104(%esp), %eax
	subl	$1, %eax
	movl	%eax, 52(%esp)
	testl	%esi, %esi
	jne	L3307
	movl	$0, 40(%esp)
	testb	%cl, %cl
	je	L3307
L3130:
	testb	$64, 62(%esp)
	jne	L3135
	movl	8(%ebx), %eax
	andl	$64, %eax
	movl	%eax, 48(%esp)
	jne	L3135
	movl	92(%esp), %ecx
	cmpl	%ecx, 52(%esp)
	je	L3243
	movl	$1, 88(%esp)
	jmp	L3127
	.p2align 4,,10
	.p2align 3
L3135:
	movl	%ebx, %edx
	movl	%edi, %eax
	call	__ZL21reset_envelopes_carryP12context_dataP12channel_data
	movl	$0, 88(%esp)
	movl	$0, 48(%esp)
	jmp	L3127
	.p2align 4,,10
	.p2align 3
L3648:
	movl	112(%esp), %eax
	movl	$0, 80(%esp)
	orl	$1, 8(%eax)
	movl	$65536, (%eax)
L3603:
	movl	44(%eax), %eax
	movl	%eax, 52(%esp)
L2978:
	movl	112(%esp), %esi
	movl	52(%esp), %edx
	movl	%edi, %eax
	movl	16(%esi), %ecx
	call	__ZL17get_subinstrumentP12context_dataii
	movl	%esi, (%esp)
	movl	$-1, %edx
	movl	%eax, %ebx
	movl	92(%esp), %eax
	movl	%ebx, %ecx
	movl	%eax, 4(%esp)
	movl	%edi, %eax
	call	__ZL19set_effect_defaultsP12context_dataiP17xmp_subinstrumentP12channel_datai
	testl	%ebx, %ebx
	movb	$0, 68(%esp)
	movl	$-1, 100(%esp)
	setne	96(%esp)
	jmp	L2975
L3177:
	cmpl	$120, 60(%esp)
	ja	L3297
	movl	$1, 56(%esp)
	movl	$1, %esi
L3179:
	movl	%ecx, %eax
	movl	60(%esp), %edx
	shrl	$3, %eax
	andl	$1, %eax
	orl	%eax, 64(%esp)
	movl	%ecx, %eax
	andl	$-5, %eax
	movl	%edx, 16(%ebx)
	movl	%eax, 8(%ebx)
	movl	72(%esp), %eax
	cmpl	1460(%edi), %eax
	jnb	L3182
	imull	$764, %eax, %eax
	addl	1496(%edi), %eax
	movl	36(%eax), %ecx
	testl	%ecx, %ecx
	jle	L3182
	addl	$256, %edx
	movl	%edx, 92(%esp)
	movl	60(%esp), %edx
	movzbl	512(%eax,%edx,2), %edx
	cmpl	%edx, %ecx
	jle	L3182
	cmpl	$255, %edx
	je	L3182
	sall	$6, %edx
	movl	%edx, %ecx
	addl	756(%eax), %ecx
	movl	%ecx, 44(%esp)
	je	L3182
	movl	92(%esp), %edx
	movzbl	1(%eax,%edx,2), %eax
	movl	$0, 60(%ebx)
	movb	%al, 32(%esp)
	movl	12(%ecx), %eax
	movl	40(%ecx), %ecx
	movl	%eax, 92(%esp)
	cmpl	1464(%edi), %ecx
	jnb	L3298
	imull	$52, %ecx, %eax
	addl	1500(%edi), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	movl	$-1, %eax
	cmovne	%ecx, %eax
	movl	%eax, 36(%esp)
L3183:
	movl	48(%esp), %edx
	movl	44(%esp), %eax
	testl	%edx, %edx
	jne	L3184
	movl	48(%eax), %edx
L3185:
	movsbl	32(%esp), %eax
	movl	92(%esp), %ecx
	addl	60(%esp), %ecx
	addl	%eax, %ecx
	movl	%ecx, 92(%esp)
	movl	44(%esp), %ecx
	movl	52(%ecx), %eax
	movl	%edx, 16(%esp)
	movl	60(%esp), %edx
	movl	%eax, 20(%esp)
	movl	44(%ecx), %eax
	movl	%edx, 8(%esp)
	movl	92(%esp), %edx
	movl	%eax, 12(%esp)
	movl	76(%esp), %ecx
	movl	%edi, %eax
	movl	%edx, 4(%esp)
	movl	36(%esp), %edx
	movl	%edx, (%esp)
	movl	116(%esp), %edx
	call	__Z20libxmp_virt_setpatchP12context_dataiiiiiiii
	movl	%eax, %ecx
	movl	44(%esp), %eax
	movzbl	36(%eax), %edx
	testl	%edx, %edx
	jne	L3660
L3192:
	movl	44(%esp), %eax
	movl	%edx, 84(%ebx)
	movzbl	37(%eax), %eax
	testl	%eax, %eax
	jne	L3661
L3193:
	movl	%eax, 88(%ebx)
	testl	%ecx, %ecx
	js	L2949
	cmpl	%ecx, 116(%esp)
	je	L3195
	imull	$480, %ecx, %edx
	testl	%ecx, %ecx
	jne	L3662
L3196:
	movl	376(%edi), %eax
	movl	$0, (%eax,%edx)
L3195:
	movl	80(%esp), %eax
	orl	88(%esp), %eax
	movl	%eax, 112(%esp)
	movl	92(%esp), %eax
	notl	%eax
	shrl	$31, %eax
	movl	%eax, 48(%esp)
	movl	36(%esp), %eax
	testl	%eax, %eax
	js	L3152
	movl	%eax, 52(%ebx)
	jmp	L3152
L3298:
	movl	$-1, 36(%esp)
	jmp	L3183
L3066:
	movl	8(%eax), %ebx
	movl	%ecx, 16(%eax)
	movl	$65536, 68(%eax)
	movl	%ebx, %edx
	andl	$-5, %edx
	movl	%edx, 8(%eax)
	movl	96(%esp), %edx
	addl	1496(%edi), %edx
	testb	$1, 44(%edx)
	jne	L3068
	movl	112(%esp), %eax
	andl	$-1032, %ebx
	movl	96(%esp), %edx
	movl	%ebx, 8(%eax)
	addl	1496(%edi), %edx
L3068:
	movl	68(%esp), %eax
	movl	%ecx, %ebx
	addl	12(%eax), %ebx
	leal	256(%ecx), %eax
	movsbl	1(%edx,%eax,2), %edx
	movl	68(%esp), %eax
	addl	%ebx, %edx
	movl	40(%eax), %ebx
	movl	1464(%edi), %eax
	testl	%edx, %edx
	movl	%edx, 100(%esp)
	setg	%dl
	andb	52(%esp), %dl
	movb	%dl, 68(%esp)
	cmpl	%eax, %ebx
	jnb	L2994
	imull	$52, %ebx, %edx
	addl	1500(%edi), %edx
	movl	48(%edx), %edx
	testl	%edx, %edx
	je	L2994
	cmpl	%eax, %ebx
	movl	%ebx, %eax
	notl	%eax
	setl	%dl
	shrl	$31, %eax
	testb	%al, %dl
	je	L2994
	movl	100(%esp), %eax
	xorl	%ecx, %ecx
	movl	116(%esp), %edx
	movl	%ebx, (%esp)
	movl	%ecx, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, %ecx
	movl	%eax, 4(%esp)
	movl	%edi, %eax
	call	__Z20libxmp_virt_setpatchP12context_dataiiiiiiii
	movl	112(%esp), %eax
	movl	16(%eax), %ecx
	movl	44(%eax), %esi
	movl	%ebx, 52(%eax)
	jmp	L2994
L3605:
	movb	$20, 104(%esp)
	jmp	L2978
	.p2align 4,,10
	.p2align 3
L3182:
	movl	80(%esp), %eax
	orl	88(%esp), %eax
	movl	$0, (%ebx)
	movl	%eax, 112(%esp)
	movl	$0, 64(%esp)
	movb	$0, 48(%esp)
	movl	$-1, 92(%esp)
	jmp	L3152
L3150:
	movl	64(%esp), %eax
	testl	%eax, %eax
	jne	L3162
	testb	$4, %cl
	jne	L3663
L3162:
	movl	52(%esp), %esi
	andl	$-65, %ecx
	cmpl	%esi, 92(%esp)
	je	L3664
	movl	16(%ebx), %eax
	movl	%ecx, 8(%ebx)
	leal	1(%eax), %esi
	movl	88(%esp), %eax
	testl	%eax, %eax
	je	L3147
	movl	2612(%edi), %eax
	movl	%eax, 60(%esp)
	testl	$4194304, %eax
	je	L3148
	movl	76(%esp), %ecx
	movl	%ecx, 72(%esp)
	testl	%esi, %esi
	jne	L3289
	cmpb	$0, 104(%esp)
	jne	L3290
	movl	1460(%edi), %eax
	cmpl	%eax, %ecx
	jnb	L3165
	imull	$764, %ecx, %ecx
	movl	1496(%edi), %edx
	movl	%edx, 36(%esp)
	cmpl	$0, 36(%edx,%ecx)
	jg	L3291
	movl	88(%esp), %eax
	movl	48(%esp), %ecx
	movl	$-1, 92(%esp)
	movb	$0, 48(%esp)
	movl	%eax, 64(%esp)
	movl	%ecx, 52(%esp)
	movl	%eax, 112(%esp)
	jmp	L3157
	.p2align 4,,10
	.p2align 3
L3655:
	movl	112(%esp), %eax
	movb	$32, 250(%eax)
	testl	%esi, %esi
	je	L3604
	movl	112(%esp), %eax
	movl	$1, 100(%esp)
	movl	$65536, (%eax)
	cmpl	$129, %esi
	je	L3263
L3588:
	movl	$1, 80(%esp)
	movl	$1, %eax
L3048:
	leal	-1(%esi), %ecx
	movl	80(%esp), %esi
	cmpb	$0, 88(%esp)
	movl	%eax, 80(%esp)
	movl	%ecx, 96(%esp)
	movl	%esi, 68(%esp)
	movb	$0, 52(%esp)
	movb	$0, 60(%esp)
	je	L3047
	jmp	L3058
	.p2align 4,,10
	.p2align 3
L3634:
	xorl	%ebx, %ebx
	jmp	L3060
L3647:
	andb	$124, %al
	orl	$67584, %edx
	xorl	%esi, %esi
	orl	$64, %eax
	movl	%edx, (%ebx)
	movl	%eax, 8(%ebx)
	movl	%eax, %ecx
	cmpl	$120, 60(%esp)
	jbe	L3179
	jmp	L3602
L3307:
	movl	$0, 40(%esp)
L3132:
	movl	$1, 88(%esp)
	movl	92(%esp), %ecx
	movl	$0, 48(%esp)
	cmpl	%ecx, 52(%esp)
	jne	L3127
	testb	$64, 2614(%edi)
	jne	L3127
L3243:
	leal	-1(%esi), %eax
	movl	92(%esp), %ecx
	movl	116(%esp), %edx
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__ZL11is_same_sidP12context_dataiii
	testl	%eax, %eax
	movl	%eax, 88(%esp)
	movl	92(%esp), %eax
	je	L3283
	movl	72(%esp), %edx
	movl	%eax, 52(%esp)
	movl	$0, 48(%esp)
	testl	%edx, %edx
	je	L3127
	xorl	%ecx, %ecx
	movl	%ecx, 56(%esp)
	jmp	L3143
L3147:
	leal	-1(%esi), %eax
L3153:
	movl	52(%esp), %ecx
	movl	116(%esp), %edx
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__ZL11is_same_sidP12context_dataiii
	movl	%eax, 64(%esp)
	testl	%eax, %eax
	movl	52(%esp), %eax
	movl	%eax, 76(%esp)
	jne	L3292
	movl	$1, 64(%esp)
	movl	$1, 52(%esp)
	jmp	L3124
L3633:
	movzbl	104(%esp), %eax
	movl	$0, 100(%esp)
	movl	$0, 68(%esp)
	movb	%al, 56(%esp)
	movb	$0, 60(%esp)
L3010:
	movl	112(%esp), %esi
	movl	1460(%edi), %edx
	movl	8(%esi), %eax
	movl	44(%esi), %esi
	cmpb	$0, 84(%esp)
	jne	L3586
	cmpb	$12, 56(%esp)
	je	L3586
	cmpb	$14, 56(%esp)
	je	L3665
	cmpl	%edx, %esi
	jnb	L3036
	imull	$764, %esi, %edx
	addl	1496(%edi), %edx
	movl	36(%edx), %ecx
	testl	%ecx, %ecx
	jg	L3666
L3036:
	movl	$0, 80(%esp)
	orl	$1026, %eax
L3042:
	movl	112(%esp), %ecx
	movl	%eax, 8(%ecx)
	cmpb	$0, 88(%esp)
	jne	L3033
L3031:
	movzbl	92(%esp), %eax
	movl	$128, 96(%esp)
	movl	$128, %ecx
	andl	$1, %eax
	movb	%al, 52(%esp)
	jmp	L3047
	.p2align 4,,10
	.p2align 3
L3586:
	cmpl	%edx, %esi
	jnb	L3017
	imull	$764, %esi, %edx
	addl	1496(%edi), %edx
	movl	36(%edx), %ecx
	testl	%ecx, %ecx
	jle	L3017
	movl	44(%edx), %ecx
	testb	$1, %cl
	je	L3017
L3024:
	andl	$7, %ecx
	cmpl	$3, %ecx
	je	L3667
	orl	$1026, %eax
	movl	%eax, 80(%esp)
L3041:
	movzbl	92(%esp), %eax
	movl	80(%esp), %ecx
	andl	$1, %eax
	movb	%al, 52(%esp)
	movl	100(%esp), %eax
	xorl	$1, %eax
	andl	$1, %eax
	movb	%al, 64(%esp)
	movl	112(%esp), %eax
	movl	%ecx, 8(%eax)
	cmpb	$14, 56(%esp)
	je	L3668
L3043:
	cmpb	$0, 88(%esp)
	je	L3267
L3612:
	movl	68(%esp), %eax
	testl	%eax, %eax
	jne	L3054
	movl	112(%esp), %eax
	movl	$0, 80(%esp)
	movb	$0, 68(%esp)
	movl	$-1, 100(%esp)
	movl	16(%eax), %ecx
	jmp	L2994
L3017:
	orl	$1, %eax
	jmp	L3042
L3668:
	movzbl	96(%esp), %eax
	shrb	$4, %al
	cmpb	$13, %al
	jne	L3043
	testb	$15, 96(%esp)
	je	L3043
	movl	112(%esp), %eax
	movl	%ecx, %edx
	andl	$-1155, %edx
	movl	%edx, 8(%eax)
	cmpb	$0, 88(%esp)
	jne	L3612
L3267:
	movl	$128, 96(%esp)
	movl	$128, %ecx
	movl	$0, 80(%esp)
	jmp	L3047
L3665:
	cmpb	$-48, 96(%esp)
	sete	%cl
	cmpl	%edx, %esi
	jnb	L3577
	imull	$764, %esi, %edx
	addl	1496(%edi), %edx
	cmpl	$0, 36(%edx)
	jg	L3669
L3577:
	cmpb	$0, 88(%esp)
	je	L3036
	testb	%cl, %cl
	je	L3036
L3037:
	movl	112(%esp), %ebx
	orl	$1, %eax
	movl	%eax, 8(%ebx)
L3033:
	movl	100(%esp), %eax
	xorl	$1, %eax
	andl	$1, %eax
	movb	%al, 64(%esp)
	movl	68(%esp), %eax
	testl	%eax, %eax
	je	L3057
	movl	116(%esp), %edx
	movl	%edi, %eax
	call	__Z24libxmp_virt_resetchannelP12context_datai
	movl	112(%esp), %eax
	movb	$0, 68(%esp)
	movl	$-1, 100(%esp)
	movl	16(%eax), %ecx
	movl	44(%eax), %esi
	jmp	L2994
L3660:
	movl	%ecx, 32(%esp)
	movl	%edx, 48(%esp)
	call	_rand
	movl	48(%esp), %edx
	movl	%eax, 60(%esp)
	movl	$100, %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	leal	1(%eax), %ecx
	movl	60(%esp), %eax
	cltd
	idivl	%ecx
	movl	32(%esp), %ecx
	jmp	L3192
L3184:
	cmpl	$1, 44(%eax)
	je	L3670
L3186:
	movl	2612(%edi), %edx
	andl	$32768, %edx
	je	L3185
	movl	116(%esp), %eax
	cmpl	704(%edi), %eax
	jnb	L3191
	movl	716(%edi), %eax
	movl	116(%esp), %ecx
	movl	4(%eax,%ecx,8), %eax
	cmpl	712(%edi), %eax
	jnb	L3191
	testl	%eax, %eax
	js	L3191
	imull	$136, %eax, %eax
	addl	720(%edi), %eax
	movl	$0, 64(%eax)
L3191:
	xorl	%edx, %edx
	jmp	L3185
L3266:
	movl	92(%esp), %eax
	movb	$1, 52(%esp)
	movl	$-1, %ecx
	movl	$1, 92(%esp)
	movl	%eax, 80(%esp)
	movl	$-1, 96(%esp)
	jmp	L3047
L3007:
	movl	%ecx, 96(%esp)
	movl	$1, 80(%esp)
	movb	$0, 52(%esp)
	movb	$1, 60(%esp)
	jmp	L3058
L3661:
	movl	$64, %edx
	movl	%ecx, 48(%esp)
	cmpl	%edx, %eax
	cmovle	%eax, %edx
	movl	%edx, 60(%esp)
	call	_rand
	movl	60(%esp), %ecx
	leal	1(%ecx), %edx
	shrl	%ecx
	movl	%edx, 60(%esp)
	cltd
	idivl	60(%esp)
	movl	%edx, %eax
	subl	%ecx, %eax
	movl	48(%esp), %ecx
	jmp	L3193
L3292:
	movl	48(%esp), %eax
	movl	%eax, 52(%esp)
	jmp	L3124
L3133:
	andl	$-17, %eax
	movl	%eax, 8(%ebx)
	cmpb	$0, 104(%esp)
	jne	L3137
	movl	76(%esp), %eax
	movl	$0, 64(%esp)
	movl	$0, 56(%esp)
	movl	%eax, 72(%esp)
	movl	$0, 52(%esp)
	movl	$1, 40(%esp)
	movl	$1, 88(%esp)
	jmp	L3124
L3094:
	movl	$0, (%ebx)
	movl	$0, 92(%esp)
	movl	$-1, 104(%esp)
	jmp	L3090
L3148:
	leal	-1(%esi), %eax
	movl	52(%esp), %ecx
	movl	116(%esp), %edx
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__ZL11is_same_sidP12context_dataiii
	movl	%eax, 64(%esp)
	testl	%eax, %eax
	je	L3398
	movl	52(%esp), %eax
	movl	%eax, 76(%esp)
	movl	48(%esp), %eax
	movl	%eax, 52(%esp)
	jmp	L3124
L3659:
	movl	100(%esp), %eax
	movl	%eax, 92(%esp)
	movl	80(%esp), %eax
	movl	%eax, 100(%esp)
	jmp	L3233
L3297:
	movl	80(%esp), %eax
	movb	$0, 48(%esp)
	movl	$1, %esi
	movl	$1, 56(%esp)
	movl	%eax, 112(%esp)
	movl	$-1, 92(%esp)
	jmp	L3152
L3656:
	movl	$1, 80(%esp)
	movb	$1, 60(%esp)
	jmp	L3010
L3628:
	movl	104(%esp), %eax
	movl	%ecx, (%esp)
	movl	$0, 20(%esp)
	movl	112(%esp), %ecx
	movl	%eax, 4(%esp)
	movl	116(%esp), %edx
	movl	%edi, %eax
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	call	__Z20libxmp_virt_setpatchP12context_dataiiiiiiii
	movl	96(%esp), %eax
	movl	%eax, 52(%ebx)
	jmp	L2964
L3398:
	movl	52(%esp), %edx
	movl	%esi, %ecx
	movl	%edi, %eax
	call	__ZL17get_subinstrumentP12context_dataii
	testl	%eax, %eax
	je	L3671
	movl	(%eax), %eax
	movl	%eax, 76(%ebx)
	movl	52(%esp), %eax
	movl	%eax, 76(%esp)
	testl	%esi, %esi
	jne	L3295
	movl	2612(%edi), %eax
	movb	$0, 48(%esp)
	movl	$-1, 92(%esp)
	movl	$1, 52(%esp)
	movl	$1, 88(%esp)
	movl	%eax, 60(%esp)
	jmp	L3168
L3283:
	movl	%eax, 52(%esp)
	movl	$1, 88(%esp)
	movl	$1, 48(%esp)
	jmp	L3127
L3274:
	movl	112(%esp), %edx
	movl	%edx, 92(%esp)
	jmp	L3085
L3054:
	movl	116(%esp), %edx
	movl	%edi, %eax
	call	__Z24libxmp_virt_resetchannelP12context_datai
	movl	112(%esp), %eax
	movb	$0, 68(%esp)
	movl	$0, 80(%esp)
	movl	16(%eax), %ecx
	movl	44(%eax), %esi
	movl	$-1, 100(%esp)
	jmp	L2994
L3604:
	movl	44(%eax), %eax
	movl	$1, 80(%esp)
	movl	%eax, 52(%esp)
	jmp	L2978
L2980:
	movl	112(%esp), %esi
	subl	$3, %eax
	orl	$1, 8(%esi)
	testb	$-3, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 92(%esp)
	movzbl	88(%esp), %eax
	movl	%eax, 80(%esp)
	testl	%eax, %eax
	jne	L2981
	movb	$0, 104(%esp)
	jmp	L2978
L3662:
	movl	376(%edi), %eax
	movl	$480, 8(%esp)
	movl	%edx, 60(%esp)
	leal	(%eax,%edx), %ecx
	addl	112(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	_memcpy
	movl	60(%esp), %edx
	jmp	L3196
L3664:
	movl	80(%esp), %eax
	orl	88(%esp), %eax
	movl	%ecx, 8(%ebx)
	xorl	%esi, %esi
	movl	%eax, 112(%esp)
	movl	76(%esp), %eax
	orl	$2048, (%ebx)
	movl	%eax, 72(%esp)
	movl	48(%esp), %eax
	movl	$1, 64(%esp)
	movl	%eax, 52(%esp)
	movb	$0, 48(%esp)
	movl	$-1, 92(%esp)
	jmp	L3152
L3137:
	movzbl	104(%esp), %eax
	movl	$1, 40(%esp)
	subl	$1, %eax
	movl	%eax, 52(%esp)
	testl	%esi, %esi
	jne	L3132
	testb	%cl, %cl
	je	L3132
	movl	2612(%edi), %eax
	movl	%eax, 60(%esp)
	jmp	L3130
L3134:
	movzbl	104(%esp), %eax
	subl	$1, %eax
	movl	%eax, 52(%esp)
	testl	%esi, %esi
	jne	L3308
	movl	$1, 40(%esp)
	testb	%cl, %cl
	jne	L3135
L3308:
	xorl	%ecx, %ecx
	movl	$1, 40(%esp)
	movl	$1, 88(%esp)
	movl	%ecx, 48(%esp)
	jmp	L3127
L3653:
	movl	80(%esp), %eax
	orl	88(%esp), %eax
	movl	$1, 64(%esp)
	movl	%eax, 112(%esp)
	movl	76(%esp), %eax
	movl	$-1, 92(%esp)
	movl	%eax, 72(%esp)
	movl	48(%esp), %eax
	movb	$0, 48(%esp)
	movl	%eax, 52(%esp)
	jmp	L3152
L3285:
	movl	$-1, %eax
	jmp	L3153
L3650:
	movl	112(%esp), %eax
	movb	$0, 68(%esp)
	movl	$-1, 100(%esp)
	movl	16(%eax), %ecx
	movl	44(%eax), %esi
	movl	92(%esp), %eax
	movl	$1, 92(%esp)
	movl	%eax, 80(%esp)
	jmp	L2994
L3265:
	movl	92(%esp), %edx
	movl	$0, 100(%esp)
	xorl	%eax, %eax
	testl	%edx, %edx
	je	L3048
	xorl	%eax, %eax
	movb	$1, 64(%esp)
	movl	%eax, 92(%esp)
	movl	%eax, 68(%esp)
	movb	$0, 60(%esp)
	jmp	L3008
L3649:
	movl	112(%esp), %eax
	movb	$32, 250(%eax)
	testl	%esi, %esi
	je	L3604
	movl	112(%esp), %eax
	movl	$65536, (%eax)
	cmpl	$129, %esi
	jne	L3588
L3263:
	movl	$1, 80(%esp)
	movl	$1, 68(%esp)
	movb	$0, 60(%esp)
	jmp	L3010
L3652:
	movl	56(%ecx), %esi
	movswl	72(%ecx,%esi,4), %esi
	movl	%eax, %ecx
	orb	$-64, %cl
	cmpl	96(%ebx), %esi
	jne	L3173
	jmp	L3175
L2981:
	movl	80(%esp), %eax
	subl	$1, %eax
	movl	%eax, 68(%esp)
	cmpl	1460(%edi), %eax
	jb	L3672
	movl	112(%esp), %esi
	movl	$2048, %eax
	xorl	%edx, %edx
	movb	$0, 56(%esp)
	movb	$0, 104(%esp)
	andl	$-1155, 8(%esi)
	movl	%eax, (%esi)
	movl	%edx, 4(%esi)
	xorl	%esi, %esi
	jmp	L3235
L3295:
	movl	$1, 52(%esp)
	movl	$1, 88(%esp)
	jmp	L3149
L3670:
	movl	112(%esp), %eax
	addl	376(%edi), %eax
	movl	%eax, 48(%esp)
	movl	44(%eax), %eax
	testl	%eax, %eax
	js	L3187
	movl	1460(%edi), %edx
	cmpl	%edx, %eax
	jge	L3188
	imull	$764, %eax, %eax
	addl	1496(%edi), %eax
	movl	%eax, 28(%esp)
L3189:
	movl	48(%esp), %edx
	movl	92(%esp), %eax
	addl	16(%edx), %eax
	movl	40(%edx), %ecx
	movl	%eax, 24(%esp)
	movl	108(%edx), %eax
	movl	28(%esp), %edx
	movsbl	513(%edx,%eax,2), %eax
	movl	24(%esp), %edx
	addl	%eax, %edx
	movl	%edi, %eax
	call	__Z21libxmp_note_to_periodP12context_dataiid.isra.0
	movl	48(%esp), %edx
	fstpl	24(%edx)
	jmp	L3186
L3663:
	movl	116(%esp), %esi
	cmpl	704(%edi), %esi
	jnb	L3162
	movl	716(%edi), %eax
	movl	4(%eax,%esi,8), %edx
	cmpl	712(%edi), %edx
	jnb	L3162
	testl	%edx, %edx
	js	L3162
	xorl	%eax, %eax
	movl	%eax, (%esp)
	movl	%eax, 4(%esp)
	movl	%edi, %eax
	call	__Z21libxmp_mixer_voiceposP12context_dataidi.constprop.0
	movl	44(%ebx), %eax
	movl	8(%ebx), %ecx
	movl	%eax, 92(%esp)
	jmp	L3162
L3671:
	movl	52(%esp), %eax
	movl	%eax, 76(%esp)
	testl	%esi, %esi
	jne	L3294
	movb	$0, 48(%esp)
	movl	$1, 64(%esp)
	movl	$-1, 92(%esp)
	movl	$1, 52(%esp)
	movl	$1, 88(%esp)
	jmp	L3168
L3667:
	movl	56(%edx), %ecx
	movswl	72(%edx,%ecx,4), %ecx
	movl	%eax, %edx
	orl	$1026, %edx
	movl	%edx, 80(%esp)
	movl	112(%esp), %edx
	cmpl	96(%edx), %ecx
	jne	L3041
	orb	$-128, %al
	movl	%eax, 80(%esp)
	jmp	L3041
L3666:
	movl	44(%edx), %ecx
	testb	$1, %cl
	jne	L3024
	cmpb	$0, 88(%esp)
	je	L3025
L3026:
	movl	112(%esp), %ebx
	orl	$1026, %eax
	xorl	%ecx, %ecx
	movl	%ecx, 80(%esp)
	movl	%eax, 8(%ebx)
	jmp	L3033
L3025:
	movl	112(%esp), %esi
	orl	$1026, %eax
	movl	%eax, 8(%esi)
	xorl	%esi, %esi
	movl	%esi, 80(%esp)
	jmp	L3031
L3165:
	cmpl	$0, 56(%esp)
	jne	L3158
	movl	88(%esp), %eax
	movl	48(%esp), %esi
	movl	$-1, 92(%esp)
	movb	$0, 48(%esp)
	movl	%eax, 64(%esp)
	movl	%esi, 52(%esp)
	movl	%eax, 112(%esp)
	jmp	L3166
L3672:
	imull	$764, 68(%esp), %eax
	addl	1496(%edi), %eax
	xorl	%esi, %esi
	movl	$1, 100(%esp)
	cmpl	$0, 36(%eax)
	jle	L3257
	movb	$0, 56(%esp)
	movb	$0, 104(%esp)
	jmp	L2989
L3669:
	movl	44(%edx), %ecx
	testb	$1, %cl
	jne	L3024
	cmpb	$0, 88(%esp)
	je	L3025
	cmpb	$-48, 96(%esp)
	je	L3037
	jmp	L3026
L3294:
	movl	$1, 64(%esp)
	movl	$1, 52(%esp)
	movl	$1, 88(%esp)
	jmp	L3149
L3657:
	movl	100(%esp), %eax
	movb	$1, 60(%esp)
	xorl	$1, %eax
	andl	$1, %eax
	movb	%al, 64(%esp)
	jmp	L3246
L3188:
	movl	9820(%edi), %ecx
	addl	%edx, %ecx
	cmpl	%ecx, %eax
	jge	L3187
	subl	%edx, %eax
	imull	$764, %eax, %eax
	addl	9828(%edi), %eax
	movl	%eax, 28(%esp)
	jmp	L3189
L3158:
	cmpb	$0, 100(%esp)
	jne	L3251
	movl	48(%esp), %eax
	movl	$1, 112(%esp)
	movb	$0, 48(%esp)
	movl	%eax, 52(%esp)
	movl	$-1, 92(%esp)
	movl	$1, 64(%esp)
	jmp	L3252
L3257:
	movb	$0, 104(%esp)
	movb	$0, 56(%esp)
	jmp	L2988
L3289:
	movl	88(%esp), %eax
	movl	%eax, 64(%esp)
	movl	48(%esp), %eax
	movl	%eax, 52(%esp)
	jmp	L3149
L3251:
	movl	48(%esp), %eax
	andl	$-132, 8(%ebx)
	movl	$65536, 68(%ebx)
	movl	%eax, 52(%esp)
	movb	$0, 48(%esp)
	movl	$1, 64(%esp)
	movl	$-1, 92(%esp)
	movl	$1, 112(%esp)
	jmp	L3166
L3654:
	movl	92(%esp), %edx
	movl	48(%esp), %eax
	movl	$-1, 92(%esp)
	movb	$0, 48(%esp)
	movl	%edx, 64(%esp)
	movl	%eax, 52(%esp)
	movl	%edx, 112(%esp)
	jmp	L3157
L3658:
	cmpl	$0, 68(%esp)
	je	L3673
	movl	68(%esp), %eax
	movb	$0, 52(%esp)
	movb	$1, 60(%esp)
	movl	%eax, 80(%esp)
	jmp	L3056
L3065:
	movl	112(%esp), %eax
	movl	8(%eax), %ebx
	movl	%ecx, 16(%eax)
	movl	$65536, 68(%eax)
	movl	%ebx, %edx
	andl	$-5, %edx
	movl	%edx, 8(%eax)
	cmpl	$0, 68(%esp)
	je	L3069
	movl	1496(%edi), %eax
	movl	96(%esp), %edx
	testb	$1, 44(%eax,%edx)
	jne	L3069
	movl	%ebx, %eax
	movl	112(%esp), %ebx
	andl	$-1032, %eax
	movl	%eax, 8(%ebx)
	jmp	L3069
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__Z17libxmp_read_eventP12context_dataP9xmp_eventi.isra.0.cold;	.scl	3;	.type	32;	.endef
__Z17libxmp_read_eventP12context_dataP9xmp_eventi.isra.0.cold:
LFSB185:
L3187:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	48(%esp), %eax
	movl	108(%eax), %eax
	movzbl	513(%eax,%eax), %eax
	ud2
	.cfi_endproc
LFE185:
	.text
	.section	.text.unlikely,"x"
LCOLDE44:
	.text
LHOTE44:
	.section .rdata,"dr"
	.align 4
__ZL2fx.lto_priv.1:
	.ascii "\377\243\13\15\12\2\1\3\4\35\264\6\5\377\377\11\377\33\7\376\253\254\20\377\10\377\377"
	.align 32
__ZL17cubic_spline_lut2:
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	41
	.word	49
	.word	58
	.word	66
	.word	75
	.word	83
	.word	92
	.word	100
	.word	109
	.word	118
	.word	127
	.word	136
	.word	145
	.word	154
	.word	163
	.word	172
	.word	182
	.word	191
	.word	200
	.word	210
	.word	219
	.word	229
	.word	238
	.word	248
	.word	258
	.word	268
	.word	277
	.word	287
	.word	297
	.word	307
	.word	317
	.word	327
	.word	338
	.word	348
	.word	358
	.word	369
	.word	379
	.word	389
	.word	400
	.word	411
	.word	421
	.word	432
	.word	443
	.word	453
	.word	464
	.word	475
	.word	486
	.word	497
	.word	508
	.word	520
	.word	531
	.word	542
	.word	553
	.word	565
	.word	576
	.word	588
	.word	599
	.word	611
	.word	622
	.word	634
	.word	646
	.word	658
	.word	669
	.word	681
	.word	693
	.word	705
	.word	717
	.word	729
	.word	742
	.word	754
	.word	766
	.word	778
	.word	791
	.word	803
	.word	816
	.word	828
	.word	841
	.word	854
	.word	866
	.word	879
	.word	892
	.word	905
	.word	917
	.word	930
	.word	943
	.word	956
	.word	970
	.word	983
	.word	996
	.word	1009
	.word	1022
	.word	1036
	.word	1049
	.word	1063
	.word	1076
	.word	1090
	.word	1103
	.word	1117
	.word	1131
	.word	1144
	.word	1158
	.word	1172
	.word	1186
	.word	1200
	.word	1214
	.word	1228
	.word	1242
	.word	1256
	.word	1270
	.word	1284
	.word	1298
	.word	1313
	.word	1327
	.word	1342
	.word	1356
	.word	1370
	.word	1385
	.word	1400
	.word	1414
	.word	1429
	.word	1444
	.word	1458
	.word	1473
	.word	1488
	.word	1503
	.word	1518
	.word	1533
	.word	1548
	.word	1563
	.word	1578
	.word	1593
	.word	1608
	.word	1624
	.word	1639
	.word	1654
	.word	1670
	.word	1685
	.word	1701
	.word	1716
	.word	1732
	.word	1747
	.word	1763
	.word	1779
	.word	1794
	.word	1810
	.word	1826
	.word	1842
	.word	1858
	.word	1874
	.word	1890
	.word	1906
	.word	1922
	.word	1938
	.word	1954
	.word	1970
	.word	1986
	.word	2003
	.word	2019
	.word	2035
	.word	2052
	.word	2068
	.word	2084
	.word	2101
	.word	2117
	.word	2134
	.word	2151
	.word	2167
	.word	2184
	.word	2201
	.word	2218
	.word	2234
	.word	2251
	.word	2268
	.word	2285
	.word	2302
	.word	2319
	.word	2336
	.word	2353
	.word	2370
	.word	2387
	.word	2405
	.word	2422
	.word	2439
	.word	2456
	.word	2474
	.word	2491
	.word	2509
	.word	2526
	.word	2543
	.word	2561
	.word	2579
	.word	2596
	.word	2614
	.word	2631
	.word	2649
	.word	2667
	.word	2685
	.word	2702
	.word	2720
	.word	2738
	.word	2756
	.word	2774
	.word	2792
	.word	2810
	.word	2828
	.word	2846
	.word	2864
	.word	2882
	.word	2901
	.word	2919
	.word	2937
	.word	2955
	.word	2974
	.word	2992
	.word	3010
	.word	3029
	.word	3047
	.word	3066
	.word	3084
	.word	3103
	.word	3121
	.word	3140
	.word	3159
	.word	3177
	.word	3196
	.word	3215
	.word	3233
	.word	3252
	.word	3271
	.word	3290
	.word	3309
	.word	3328
	.word	3347
	.word	3366
	.word	3385
	.word	3404
	.word	3423
	.word	3442
	.word	3461
	.word	3480
	.word	3499
	.word	3518
	.word	3538
	.word	3557
	.word	3576
	.word	3595
	.word	3615
	.word	3634
	.word	3654
	.word	3673
	.word	3693
	.word	3712
	.word	3732
	.word	3751
	.word	3771
	.word	3790
	.word	3810
	.word	3829
	.word	3849
	.word	3869
	.word	3889
	.word	3908
	.word	3928
	.word	3948
	.word	3968
	.word	3988
	.word	4007
	.word	4027
	.word	4047
	.word	4067
	.word	4087
	.word	4107
	.word	4127
	.word	4147
	.word	4167
	.word	4188
	.word	4208
	.word	4228
	.word	4248
	.word	4268
	.word	4288
	.word	4309
	.word	4329
	.word	4349
	.word	4370
	.word	4390
	.word	4410
	.word	4431
	.word	4451
	.word	4471
	.word	4492
	.word	4512
	.word	4533
	.word	4553
	.word	4574
	.word	4595
	.word	4615
	.word	4636
	.word	4656
	.word	4677
	.word	4698
	.word	4718
	.word	4739
	.word	4760
	.word	4780
	.word	4801
	.word	4822
	.word	4843
	.word	4864
	.word	4885
	.word	4905
	.word	4926
	.word	4947
	.word	4968
	.word	4989
	.word	5010
	.word	5031
	.word	5052
	.word	5073
	.word	5094
	.word	5115
	.word	5136
	.word	5157
	.word	5178
	.word	5199
	.word	5221
	.word	5242
	.word	5263
	.word	5284
	.word	5305
	.word	5327
	.word	5348
	.word	5369
	.word	5390
	.word	5412
	.word	5433
	.word	5454
	.word	5476
	.word	5497
	.word	5518
	.word	5540
	.word	5561
	.word	5582
	.word	5604
	.word	5625
	.word	5647
	.word	5668
	.word	5690
	.word	5711
	.word	5733
	.word	5754
	.word	5776
	.word	5797
	.word	5819
	.word	5841
	.word	5862
	.word	5884
	.word	5905
	.word	5927
	.word	5949
	.word	5970
	.word	5992
	.word	6014
	.word	6035
	.word	6057
	.word	6079
	.word	6101
	.word	6122
	.word	6144
	.word	6166
	.word	6188
	.word	6209
	.word	6231
	.word	6253
	.word	6275
	.word	6297
	.word	6318
	.word	6340
	.word	6362
	.word	6384
	.word	6406
	.word	6428
	.word	6450
	.word	6472
	.word	6493
	.word	6515
	.word	6537
	.word	6559
	.word	6581
	.word	6603
	.word	6625
	.word	6647
	.word	6669
	.word	6691
	.word	6713
	.word	6735
	.word	6757
	.word	6779
	.word	6801
	.word	6823
	.word	6845
	.word	6867
	.word	6889
	.word	6911
	.word	6934
	.word	6956
	.word	6978
	.word	7000
	.word	7022
	.word	7044
	.word	7066
	.word	7088
	.word	7110
	.word	7132
	.word	7155
	.word	7177
	.word	7199
	.word	7221
	.word	7243
	.word	7265
	.word	7288
	.word	7310
	.word	7332
	.word	7354
	.word	7376
	.word	7398
	.word	7421
	.word	7443
	.word	7465
	.word	7487
	.word	7509
	.word	7531
	.word	7554
	.word	7576
	.word	7598
	.word	7620
	.word	7643
	.word	7665
	.word	7687
	.word	7709
	.word	7731
	.word	7754
	.word	7776
	.word	7798
	.word	7820
	.word	7842
	.word	7865
	.word	7887
	.word	7909
	.word	7931
	.word	7954
	.word	7976
	.word	7998
	.word	8020
	.word	8042
	.word	8065
	.word	8087
	.word	8109
	.word	8131
	.word	8154
	.word	8176
	.word	8198
	.word	8220
	.word	8242
	.word	8265
	.word	8287
	.word	8309
	.word	8331
	.word	8353
	.word	8376
	.word	8398
	.word	8420
	.word	8442
	.word	8464
	.word	8487
	.word	8509
	.word	8531
	.word	8553
	.word	8575
	.word	8597
	.word	8620
	.word	8642
	.word	8664
	.word	8686
	.word	8708
	.word	8730
	.word	8752
	.word	8775
	.word	8797
	.word	8819
	.word	8841
	.word	8863
	.word	8885
	.word	8907
	.word	8929
	.word	8951
	.word	8974
	.word	8996
	.word	9018
	.word	9040
	.word	9062
	.word	9084
	.word	9106
	.word	9128
	.word	9150
	.word	9172
	.word	9194
	.word	9216
	.word	9238
	.word	9260
	.word	9282
	.word	9304
	.word	9326
	.word	9348
	.word	9370
	.word	9392
	.word	9414
	.word	9436
	.word	9458
	.word	9479
	.word	9501
	.word	9523
	.word	9545
	.word	9567
	.word	9589
	.word	9611
	.word	9633
	.word	9653
	.word	9676
	.word	9698
	.word	9720
	.word	9742
	.word	9763
	.word	9784
	.word	9806
	.word	9829
	.word	9851
	.word	9872
	.word	9893
	.word	9915
	.word	9936
	.word	9959
	.word	9981
	.word	10002
	.word	10023
	.word	10045
	.word	10068
	.word	10088
	.word	10110
	.word	10132
	.word	10152
	.word	10175
	.word	10196
	.word	10217
	.word	10239
	.word	10260
	.word	10283
	.word	10303
	.word	10325
	.word	10346
	.word	10368
	.word	10389
	.word	10410
	.word	10431
	.word	10453
	.word	10474
	.word	10496
	.word	10517
	.word	10538
	.word	10560
	.word	10581
	.word	10602
	.word	10623
	.word	10644
	.word	10666
	.word	10687
	.word	10708
	.word	10728
	.word	10750
	.word	10772
	.word	10792
	.word	10814
	.word	10834
	.word	10856
	.word	10876
	.word	10898
	.word	10918
	.word	10939
	.word	10959
	.word	10982
	.word	11002
	.word	11023
	.word	11043
	.word	11064
	.word	11084
	.word	11107
	.word	11127
	.word	11148
	.word	11168
	.word	11189
	.word	11209
	.word	11231
	.word	11251
	.word	11272
	.word	11292
	.word	11313
	.word	11333
	.word	11354
	.word	11374
	.word	11394
	.word	11415
	.word	11436
	.word	11457
	.word	11477
	.word	11498
	.word	11518
	.word	11538
	.word	11559
	.word	11578
	.word	11599
	.word	11619
	.word	11640
	.word	11660
	.word	11680
	.word	11700
	.word	11720
	.word	11741
	.word	11761
	.word	11780
	.word	11801
	.word	11821
	.word	11839
	.word	11860
	.word	11880
	.word	11900
	.word	11920
	.word	11940
	.word	11960
	.word	11980
	.word	11998
	.word	12019
	.word	12039
	.word	12059
	.word	12079
	.word	12097
	.word	12118
	.word	12137
	.word	12157
	.word	12176
	.word	12195
	.word	12215
	.word	12235
	.word	12254
	.word	12273
	.word	12293
	.word	12312
	.word	12332
	.word	12351
	.word	12370
	.word	12390
	.word	12408
	.word	12427
	.word	12448
	.word	12466
	.word	12485
	.word	12504
	.word	12524
	.word	12542
	.word	12562
	.word	12580
	.word	12599
	.word	12618
	.word	12637
	.word	12655
	.word	12675
	.word	12694
	.word	12712
	.word	12731
	.word	12750
	.word	12768
	.word	12787
	.word	12806
	.word	12823
	.word	12842
	.word	12860
	.word	12879
	.word	12898
	.word	12916
	.word	12934
	.word	12953
	.word	12971
	.word	12989
	.word	13008
	.word	13026
	.word	13044
	.word	13062
	.word	13080
	.word	13098
	.word	13116
	.word	13134
	.word	13152
	.word	13170
	.word	13188
	.word	13205
	.word	13224
	.word	13241
	.word	13258
	.word	13277
	.word	13294
	.word	13312
	.word	13330
	.word	13347
	.word	13365
	.word	13383
	.word	13399
	.word	13417
	.word	13435
	.word	13451
	.word	13469
	.word	13486
	.word	13504
	.word	13521
	.word	13538
	.word	13556
	.word	13572
	.word	13589
	.word	13607
	.word	13623
	.word	13641
	.word	13657
	.word	13673
	.word	13691
	.word	13707
	.word	13724
	.word	13741
	.word	13758
	.word	13775
	.word	13791
	.word	13808
	.word	13823
	.word	13840
	.word	13857
	.word	13873
	.word	13890
	.word	13906
	.word	13923
	.word	13939
	.word	13955
	.word	13971
	.word	13986
	.word	14003
	.word	14019
	.word	14035
	.word	14051
	.word	14067
	.word	14082
	.word	14099
	.word	14115
	.word	14130
	.word	14146
	.word	14161
	.word	14177
	.word	14192
	.word	14208
	.word	14223
	.word	14239
	.word	14254
	.word	14270
	.word	14285
	.word	14301
	.word	14316
	.word	14330
	.word	14346
	.word	14361
	.word	14376
	.word	14391
	.word	14406
	.word	14420
	.word	14435
	.word	14450
	.word	14465
	.word	14480
	.word	14494
	.word	14509
	.word	14523
	.word	14538
	.word	14553
	.word	14567
	.word	14582
	.word	14595
	.word	14610
	.word	14625
	.word	14638
	.word	14653
	.word	14668
	.word	14681
	.word	14696
	.word	14709
	.word	14723
	.word	14737
	.word	14752
	.word	14764
	.word	14778
	.word	14793
	.word	14806
	.word	14819
	.word	14833
	.word	14846
	.word	14860
	.word	14874
	.word	14887
	.word	14900
	.word	14913
	.word	14927
	.word	14940
	.word	14953
	.word	14966
	.word	14979
	.word	14992
	.word	15004
	.word	15017
	.word	15031
	.word	15043
	.word	15056
	.word	15067
	.word	15081
	.word	15094
	.word	15106
	.word	15118
	.word	15131
	.word	15143
	.word	15155
	.word	15167
	.word	15180
	.word	15192
	.word	15205
	.word	15216
	.word	15228
	.word	15240
	.word	15252
	.word	15264
	.word	15276
	.word	15287
	.word	15299
	.word	15310
	.word	15321
	.word	15333
	.word	15345
	.word	15356
	.word	15367
	.word	15379
	.word	15390
	.word	15401
	.word	15412
	.word	15423
	.word	15433
	.word	15446
	.word	15456
	.word	15467
	.word	15478
	.word	15489
	.word	15499
	.word	15509
	.word	15520
	.word	15530
	.word	15540
	.word	15552
	.word	15562
	.word	15572
	.word	15582
	.word	15592
	.word	15602
	.word	15613
	.word	15623
	.word	15633
	.word	15642
	.word	15652
	.word	15662
	.word	15672
	.word	15681
	.word	15691
	.word	15700
	.word	15709
	.word	15719
	.word	15729
	.word	15738
	.word	15747
	.word	15756
	.word	15765
	.word	15774
	.word	15783
	.word	15792
	.word	15801
	.word	15810
	.word	15818
	.word	15827
	.word	15836
	.word	15843
	.word	15853
	.word	15861
	.word	15870
	.word	15877
	.word	15886
	.word	15894
	.word	15903
	.word	15910
	.word	15918
	.word	15926
	.word	15934
	.word	15941
	.word	15949
	.word	15957
	.word	15964
	.word	15973
	.word	15980
	.word	15988
	.word	15995
	.word	16002
	.word	16009
	.word	16015
	.word	16023
	.word	16030
	.word	16038
	.word	16044
	.word	16052
	.word	16058
	.word	16064
	.word	16071
	.word	16077
	.word	16085
	.word	16092
	.word	16097
	.word	16104
	.word	16109
	.word	16116
	.word	16122
	.word	16128
	.word	16133
	.word	16140
	.word	16146
	.word	16151
	.word	16158
	.word	16163
	.word	16169
	.word	16174
	.word	16180
	.word	16185
	.word	16191
	.word	16196
	.word	16201
	.word	16206
	.word	16211
	.word	16216
	.word	16220
	.word	16225
	.word	16230
	.word	16235
	.word	16239
	.word	16244
	.word	16247
	.word	16253
	.word	16257
	.word	16262
	.word	16265
	.word	16269
	.word	16274
	.word	16278
	.word	16282
	.word	16285
	.word	16290
	.word	16293
	.word	16297
	.word	16299
	.word	16304
	.word	16307
	.word	16309
	.word	16314
	.word	16317
	.word	16320
	.word	16322
	.word	16326
	.word	16329
	.word	16331
	.word	16335
	.word	16337
	.word	16340
	.word	16342
	.word	16345
	.word	16347
	.word	16349
	.word	16351
	.word	16354
	.word	16357
	.word	16358
	.word	16360
	.word	16361
	.word	16364
	.word	16366
	.word	16366
	.word	16369
	.word	16370
	.word	16371
	.word	16373
	.word	16374
	.word	16376
	.word	16377
	.word	16377
	.word	16379
	.word	16379
	.word	16380
	.word	16381
	.word	16381
	.word	16381
	.word	16382
	.word	16383
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.align 32
__ZL17cubic_spline_lut3:
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-2
	.word	-2
	.word	-2
	.word	-2
	.word	-2
	.word	-3
	.word	-3
	.word	-3
	.word	-4
	.word	-4
	.word	-4
	.word	-5
	.word	-5
	.word	-6
	.word	-6
	.word	-6
	.word	-7
	.word	-7
	.word	-8
	.word	-8
	.word	-9
	.word	-9
	.word	-10
	.word	-10
	.word	-11
	.word	-11
	.word	-12
	.word	-13
	.word	-13
	.word	-14
	.word	-14
	.word	-15
	.word	-16
	.word	-16
	.word	-17
	.word	-18
	.word	-19
	.word	-19
	.word	-20
	.word	-21
	.word	-22
	.word	-22
	.word	-23
	.word	-24
	.word	-25
	.word	-26
	.word	-26
	.word	-27
	.word	-28
	.word	-29
	.word	-30
	.word	-31
	.word	-32
	.word	-33
	.word	-34
	.word	-35
	.word	-36
	.word	-37
	.word	-38
	.word	-39
	.word	-40
	.word	-41
	.word	-42
	.word	-43
	.word	-44
	.word	-45
	.word	-46
	.word	-47
	.word	-48
	.word	-49
	.word	-51
	.word	-52
	.word	-53
	.word	-54
	.word	-55
	.word	-57
	.word	-58
	.word	-59
	.word	-60
	.word	-61
	.word	-63
	.word	-64
	.word	-65
	.word	-67
	.word	-68
	.word	-69
	.word	-70
	.word	-72
	.word	-73
	.word	-75
	.word	-76
	.word	-77
	.word	-79
	.word	-80
	.word	-82
	.word	-83
	.word	-84
	.word	-86
	.word	-87
	.word	-89
	.word	-90
	.word	-92
	.word	-93
	.word	-95
	.word	-96
	.word	-98
	.word	-99
	.word	-101
	.word	-102
	.word	-104
	.word	-106
	.word	-107
	.word	-109
	.word	-110
	.word	-112
	.word	-114
	.word	-115
	.word	-117
	.word	-119
	.word	-120
	.word	-122
	.word	-124
	.word	-125
	.word	-127
	.word	-129
	.word	-130
	.word	-132
	.word	-134
	.word	-136
	.word	-137
	.word	-139
	.word	-141
	.word	-143
	.word	-145
	.word	-146
	.word	-148
	.word	-150
	.word	-152
	.word	-154
	.word	-156
	.word	-157
	.word	-159
	.word	-161
	.word	-163
	.word	-165
	.word	-167
	.word	-169
	.word	-171
	.word	-173
	.word	-175
	.word	-176
	.word	-178
	.word	-180
	.word	-182
	.word	-184
	.word	-186
	.word	-188
	.word	-190
	.word	-192
	.word	-194
	.word	-196
	.word	-198
	.word	-200
	.word	-202
	.word	-205
	.word	-207
	.word	-209
	.word	-211
	.word	-213
	.word	-215
	.word	-217
	.word	-219
	.word	-221
	.word	-223
	.word	-225
	.word	-228
	.word	-230
	.word	-232
	.word	-234
	.word	-236
	.word	-238
	.word	-240
	.word	-243
	.word	-245
	.word	-247
	.word	-249
	.word	-251
	.word	-254
	.word	-256
	.word	-258
	.word	-260
	.word	-263
	.word	-265
	.word	-267
	.word	-269
	.word	-272
	.word	-274
	.word	-276
	.word	-278
	.word	-281
	.word	-283
	.word	-285
	.word	-288
	.word	-290
	.word	-292
	.word	-295
	.word	-297
	.word	-299
	.word	-302
	.word	-304
	.word	-306
	.word	-309
	.word	-311
	.word	-313
	.word	-316
	.word	-318
	.word	-320
	.word	-323
	.word	-325
	.word	-328
	.word	-330
	.word	-332
	.word	-335
	.word	-337
	.word	-340
	.word	-342
	.word	-345
	.word	-347
	.word	-349
	.word	-352
	.word	-354
	.word	-357
	.word	-359
	.word	-362
	.word	-364
	.word	-367
	.word	-369
	.word	-372
	.word	-374
	.word	-377
	.word	-379
	.word	-382
	.word	-384
	.word	-387
	.word	-389
	.word	-392
	.word	-394
	.word	-397
	.word	-399
	.word	-402
	.word	-404
	.word	-407
	.word	-409
	.word	-412
	.word	-414
	.word	-417
	.word	-419
	.word	-422
	.word	-424
	.word	-427
	.word	-430
	.word	-432
	.word	-435
	.word	-437
	.word	-440
	.word	-442
	.word	-445
	.word	-448
	.word	-450
	.word	-453
	.word	-455
	.word	-458
	.word	-461
	.word	-463
	.word	-466
	.word	-468
	.word	-471
	.word	-474
	.word	-476
	.word	-479
	.word	-481
	.word	-484
	.word	-487
	.word	-489
	.word	-492
	.word	-495
	.word	-497
	.word	-500
	.word	-502
	.word	-505
	.word	-508
	.word	-510
	.word	-513
	.word	-516
	.word	-518
	.word	-521
	.word	-523
	.word	-526
	.word	-529
	.word	-531
	.word	-534
	.word	-537
	.word	-539
	.word	-542
	.word	-545
	.word	-547
	.word	-550
	.word	-553
	.word	-555
	.word	-558
	.word	-561
	.word	-563
	.word	-566
	.word	-569
	.word	-571
	.word	-574
	.word	-577
	.word	-579
	.word	-582
	.word	-585
	.word	-587
	.word	-590
	.word	-593
	.word	-595
	.word	-598
	.word	-601
	.word	-603
	.word	-606
	.word	-609
	.word	-611
	.word	-614
	.word	-617
	.word	-619
	.word	-622
	.word	-625
	.word	-627
	.word	-630
	.word	-633
	.word	-635
	.word	-638
	.word	-641
	.word	-643
	.word	-646
	.word	-649
	.word	-651
	.word	-654
	.word	-657
	.word	-659
	.word	-662
	.word	-665
	.word	-667
	.word	-670
	.word	-672
	.word	-675
	.word	-678
	.word	-680
	.word	-683
	.word	-686
	.word	-688
	.word	-691
	.word	-694
	.word	-696
	.word	-699
	.word	-702
	.word	-704
	.word	-707
	.word	-709
	.word	-712
	.word	-715
	.word	-717
	.word	-720
	.word	-723
	.word	-725
	.word	-728
	.word	-730
	.word	-733
	.word	-736
	.word	-738
	.word	-741
	.word	-744
	.word	-746
	.word	-749
	.word	-751
	.word	-754
	.word	-757
	.word	-759
	.word	-762
	.word	-764
	.word	-767
	.word	-769
	.word	-772
	.word	-775
	.word	-777
	.word	-780
	.word	-782
	.word	-785
	.word	-787
	.word	-790
	.word	-793
	.word	-795
	.word	-798
	.word	-800
	.word	-803
	.word	-805
	.word	-808
	.word	-810
	.word	-813
	.word	-815
	.word	-818
	.word	-820
	.word	-823
	.word	-825
	.word	-828
	.word	-830
	.word	-833
	.word	-835
	.word	-838
	.word	-840
	.word	-843
	.word	-845
	.word	-848
	.word	-850
	.word	-853
	.word	-855
	.word	-858
	.word	-860
	.word	-863
	.word	-865
	.word	-867
	.word	-870
	.word	-872
	.word	-875
	.word	-877
	.word	-880
	.word	-882
	.word	-884
	.word	-887
	.word	-889
	.word	-892
	.word	-894
	.word	-896
	.word	-899
	.word	-901
	.word	-903
	.word	-906
	.word	-908
	.word	-911
	.word	-913
	.word	-915
	.word	-918
	.word	-920
	.word	-922
	.word	-924
	.word	-927
	.word	-929
	.word	-931
	.word	-934
	.word	-936
	.word	-938
	.word	-941
	.word	-943
	.word	-945
	.word	-947
	.word	-950
	.word	-952
	.word	-954
	.word	-956
	.word	-958
	.word	-961
	.word	-963
	.word	-965
	.word	-967
	.word	-969
	.word	-972
	.word	-974
	.word	-976
	.word	-978
	.word	-980
	.word	-982
	.word	-985
	.word	-987
	.word	-989
	.word	-991
	.word	-993
	.word	-995
	.word	-997
	.word	-999
	.word	-1002
	.word	-1004
	.word	-1006
	.word	-1008
	.word	-1010
	.word	-1012
	.word	-1014
	.word	-1016
	.word	-1018
	.word	-1020
	.word	-1022
	.word	-1024
	.word	-1026
	.word	-1028
	.word	-1030
	.word	-1032
	.word	-1034
	.word	-1036
	.word	-1038
	.word	-1040
	.word	-1042
	.word	-1044
	.word	-1046
	.word	-1047
	.word	-1049
	.word	-1051
	.word	-1053
	.word	-1055
	.word	-1057
	.word	-1059
	.word	-1061
	.word	-1062
	.word	-1064
	.word	-1066
	.word	-1068
	.word	-1070
	.word	-1071
	.word	-1073
	.word	-1075
	.word	-1077
	.word	-1079
	.word	-1080
	.word	-1082
	.word	-1084
	.word	-1085
	.word	-1087
	.word	-1089
	.word	-1091
	.word	-1092
	.word	-1094
	.word	-1096
	.word	-1097
	.word	-1099
	.word	-1101
	.word	-1102
	.word	-1104
	.word	-1105
	.word	-1107
	.word	-1109
	.word	-1110
	.word	-1112
	.word	-1113
	.word	-1115
	.word	-1116
	.word	-1118
	.word	-1119
	.word	-1121
	.word	-1122
	.word	-1124
	.word	-1125
	.word	-1127
	.word	-1128
	.word	-1130
	.word	-1131
	.word	-1133
	.word	-1134
	.word	-1135
	.word	-1137
	.word	-1138
	.word	-1140
	.word	-1141
	.word	-1142
	.word	-1144
	.word	-1145
	.word	-1146
	.word	-1148
	.word	-1149
	.word	-1150
	.word	-1151
	.word	-1153
	.word	-1154
	.word	-1155
	.word	-1156
	.word	-1158
	.word	-1159
	.word	-1160
	.word	-1161
	.word	-1162
	.word	-1163
	.word	-1165
	.word	-1166
	.word	-1167
	.word	-1168
	.word	-1169
	.word	-1170
	.word	-1171
	.word	-1172
	.word	-1173
	.word	-1174
	.word	-1175
	.word	-1176
	.word	-1177
	.word	-1178
	.word	-1179
	.word	-1180
	.word	-1181
	.word	-1182
	.word	-1183
	.word	-1184
	.word	-1185
	.word	-1186
	.word	-1187
	.word	-1187
	.word	-1188
	.word	-1189
	.word	-1190
	.word	-1191
	.word	-1192
	.word	-1192
	.word	-1193
	.word	-1194
	.word	-1195
	.word	-1195
	.word	-1196
	.word	-1197
	.word	-1197
	.word	-1198
	.word	-1199
	.word	-1199
	.word	-1200
	.word	-1201
	.word	-1201
	.word	-1202
	.word	-1202
	.word	-1203
	.word	-1204
	.word	-1204
	.word	-1205
	.word	-1205
	.word	-1206
	.word	-1206
	.word	-1207
	.word	-1207
	.word	-1207
	.word	-1208
	.word	-1208
	.word	-1209
	.word	-1209
	.word	-1209
	.word	-1210
	.word	-1210
	.word	-1210
	.word	-1211
	.word	-1211
	.word	-1211
	.word	-1211
	.word	-1212
	.word	-1212
	.word	-1212
	.word	-1212
	.word	-1213
	.word	-1213
	.word	-1213
	.word	-1213
	.word	-1213
	.word	-1213
	.word	-1213
	.word	-1213
	.word	-1214
	.word	-1214
	.word	-1214
	.word	-1214
	.word	-1214
	.word	-1214
	.word	-1214
	.word	-1214
	.word	-1213
	.word	-1213
	.word	-1213
	.word	-1213
	.word	-1213
	.word	-1213
	.word	-1213
	.word	-1213
	.word	-1212
	.word	-1212
	.word	-1212
	.word	-1212
	.word	-1212
	.word	-1211
	.word	-1211
	.word	-1211
	.word	-1210
	.word	-1210
	.word	-1210
	.word	-1209
	.word	-1209
	.word	-1208
	.word	-1208
	.word	-1208
	.word	-1207
	.word	-1207
	.word	-1206
	.word	-1206
	.word	-1205
	.word	-1205
	.word	-1204
	.word	-1204
	.word	-1203
	.word	-1202
	.word	-1202
	.word	-1201
	.word	-1200
	.word	-1200
	.word	-1199
	.word	-1198
	.word	-1198
	.word	-1197
	.word	-1196
	.word	-1195
	.word	-1195
	.word	-1194
	.word	-1193
	.word	-1192
	.word	-1191
	.word	-1190
	.word	-1189
	.word	-1188
	.word	-1187
	.word	-1187
	.word	-1186
	.word	-1185
	.word	-1184
	.word	-1182
	.word	-1181
	.word	-1180
	.word	-1179
	.word	-1178
	.word	-1177
	.word	-1176
	.word	-1175
	.word	-1174
	.word	-1172
	.word	-1171
	.word	-1170
	.word	-1169
	.word	-1167
	.word	-1166
	.word	-1165
	.word	-1163
	.word	-1162
	.word	-1161
	.word	-1159
	.word	-1158
	.word	-1156
	.word	-1155
	.word	-1153
	.word	-1152
	.word	-1150
	.word	-1149
	.word	-1147
	.word	-1146
	.word	-1144
	.word	-1143
	.word	-1141
	.word	-1139
	.word	-1138
	.word	-1136
	.word	-1134
	.word	-1133
	.word	-1131
	.word	-1129
	.word	-1127
	.word	-1125
	.word	-1124
	.word	-1122
	.word	-1120
	.word	-1118
	.word	-1116
	.word	-1114
	.word	-1112
	.word	-1110
	.word	-1108
	.word	-1106
	.word	-1104
	.word	-1102
	.word	-1100
	.word	-1098
	.word	-1096
	.word	-1094
	.word	-1092
	.word	-1089
	.word	-1087
	.word	-1085
	.word	-1083
	.word	-1080
	.word	-1078
	.word	-1076
	.word	-1074
	.word	-1071
	.word	-1069
	.word	-1066
	.word	-1064
	.word	-1062
	.word	-1059
	.word	-1057
	.word	-1054
	.word	-1052
	.word	-1049
	.word	-1047
	.word	-1044
	.word	-1041
	.word	-1039
	.word	-1036
	.word	-1033
	.word	-1031
	.word	-1028
	.word	-1025
	.word	-1022
	.word	-1020
	.word	-1017
	.word	-1014
	.word	-1011
	.word	-1008
	.word	-1005
	.word	-1002
	.word	-999
	.word	-997
	.word	-994
	.word	-991
	.word	-987
	.word	-984
	.word	-981
	.word	-978
	.word	-975
	.word	-972
	.word	-969
	.word	-966
	.word	-962
	.word	-959
	.word	-956
	.word	-953
	.word	-949
	.word	-946
	.word	-943
	.word	-939
	.word	-936
	.word	-932
	.word	-929
	.word	-925
	.word	-922
	.word	-918
	.word	-915
	.word	-911
	.word	-908
	.word	-904
	.word	-900
	.word	-897
	.word	-893
	.word	-889
	.word	-886
	.word	-882
	.word	-878
	.word	-874
	.word	-870
	.word	-866
	.word	-863
	.word	-859
	.word	-855
	.word	-851
	.word	-847
	.word	-843
	.word	-839
	.word	-835
	.word	-831
	.word	-826
	.word	-822
	.word	-818
	.word	-814
	.word	-810
	.word	-806
	.word	-801
	.word	-797
	.word	-793
	.word	-788
	.word	-784
	.word	-780
	.word	-775
	.word	-771
	.word	-766
	.word	-762
	.word	-757
	.word	-753
	.word	-748
	.word	-744
	.word	-739
	.word	-734
	.word	-730
	.word	-725
	.word	-720
	.word	-715
	.word	-711
	.word	-706
	.word	-701
	.word	-696
	.word	-691
	.word	-686
	.word	-682
	.word	-677
	.word	-672
	.word	-667
	.word	-662
	.word	-656
	.word	-651
	.word	-646
	.word	-641
	.word	-636
	.word	-631
	.word	-626
	.word	-620
	.word	-615
	.word	-610
	.word	-604
	.word	-599
	.word	-594
	.word	-588
	.word	-583
	.word	-577
	.word	-572
	.word	-566
	.word	-561
	.word	-555
	.word	-550
	.word	-544
	.word	-538
	.word	-533
	.word	-527
	.word	-521
	.word	-515
	.word	-510
	.word	-504
	.word	-498
	.word	-492
	.word	-486
	.word	-480
	.word	-474
	.word	-468
	.word	-462
	.word	-456
	.word	-450
	.word	-444
	.word	-438
	.word	-432
	.word	-425
	.word	-419
	.word	-413
	.word	-407
	.word	-400
	.word	-394
	.word	-388
	.word	-381
	.word	-375
	.word	-368
	.word	-362
	.word	-355
	.word	-349
	.word	-342
	.word	-336
	.word	-329
	.word	-322
	.word	-316
	.word	-309
	.word	-302
	.word	-295
	.word	-289
	.word	-282
	.word	-275
	.word	-268
	.word	-261
	.word	-254
	.word	-247
	.word	-240
	.word	-233
	.word	-226
	.word	-219
	.word	-212
	.word	-205
	.word	-198
	.word	-190
	.word	-183
	.word	-176
	.word	-169
	.word	-161
	.word	-154
	.word	-146
	.word	-139
	.word	-132
	.word	-124
	.word	-117
	.word	-109
	.word	-101
	.word	-94
	.word	-86
	.word	-78
	.word	-71
	.word	-63
	.word	-55
	.word	-47
	.word	-40
	.word	-32
	.word	-24
	.word	-16
	.word	-8
	.align 32
__ZL17cubic_spline_lut1:
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16384
	.word	16383
	.word	16382
	.word	16381
	.word	16381
	.word	16381
	.word	16380
	.word	16379
	.word	16379
	.word	16377
	.word	16377
	.word	16376
	.word	16374
	.word	16373
	.word	16371
	.word	16370
	.word	16369
	.word	16366
	.word	16366
	.word	16364
	.word	16361
	.word	16360
	.word	16358
	.word	16357
	.word	16354
	.word	16351
	.word	16349
	.word	16347
	.word	16345
	.word	16342
	.word	16340
	.word	16337
	.word	16335
	.word	16331
	.word	16329
	.word	16326
	.word	16322
	.word	16320
	.word	16317
	.word	16314
	.word	16309
	.word	16307
	.word	16304
	.word	16299
	.word	16297
	.word	16293
	.word	16290
	.word	16285
	.word	16282
	.word	16278
	.word	16274
	.word	16269
	.word	16265
	.word	16262
	.word	16257
	.word	16253
	.word	16247
	.word	16244
	.word	16239
	.word	16235
	.word	16230
	.word	16225
	.word	16220
	.word	16216
	.word	16211
	.word	16206
	.word	16201
	.word	16196
	.word	16191
	.word	16185
	.word	16180
	.word	16174
	.word	16169
	.word	16163
	.word	16158
	.word	16151
	.word	16146
	.word	16140
	.word	16133
	.word	16128
	.word	16122
	.word	16116
	.word	16109
	.word	16104
	.word	16097
	.word	16092
	.word	16085
	.word	16077
	.word	16071
	.word	16064
	.word	16058
	.word	16052
	.word	16044
	.word	16038
	.word	16030
	.word	16023
	.word	16015
	.word	16009
	.word	16002
	.word	15995
	.word	15988
	.word	15980
	.word	15973
	.word	15964
	.word	15957
	.word	15949
	.word	15941
	.word	15934
	.word	15926
	.word	15918
	.word	15910
	.word	15903
	.word	15894
	.word	15886
	.word	15877
	.word	15870
	.word	15861
	.word	15853
	.word	15843
	.word	15836
	.word	15827
	.word	15818
	.word	15810
	.word	15801
	.word	15792
	.word	15783
	.word	15774
	.word	15765
	.word	15756
	.word	15747
	.word	15738
	.word	15729
	.word	15719
	.word	15709
	.word	15700
	.word	15691
	.word	15681
	.word	15672
	.word	15662
	.word	15652
	.word	15642
	.word	15633
	.word	15623
	.word	15613
	.word	15602
	.word	15592
	.word	15582
	.word	15572
	.word	15562
	.word	15552
	.word	15540
	.word	15530
	.word	15520
	.word	15509
	.word	15499
	.word	15489
	.word	15478
	.word	15467
	.word	15456
	.word	15446
	.word	15433
	.word	15423
	.word	15412
	.word	15401
	.word	15390
	.word	15379
	.word	15367
	.word	15356
	.word	15345
	.word	15333
	.word	15321
	.word	15310
	.word	15299
	.word	15287
	.word	15276
	.word	15264
	.word	15252
	.word	15240
	.word	15228
	.word	15216
	.word	15205
	.word	15192
	.word	15180
	.word	15167
	.word	15155
	.word	15143
	.word	15131
	.word	15118
	.word	15106
	.word	15094
	.word	15081
	.word	15067
	.word	15056
	.word	15043
	.word	15031
	.word	15017
	.word	15004
	.word	14992
	.word	14979
	.word	14966
	.word	14953
	.word	14940
	.word	14927
	.word	14913
	.word	14900
	.word	14887
	.word	14874
	.word	14860
	.word	14846
	.word	14833
	.word	14819
	.word	14806
	.word	14793
	.word	14778
	.word	14764
	.word	14752
	.word	14737
	.word	14723
	.word	14709
	.word	14696
	.word	14681
	.word	14668
	.word	14653
	.word	14638
	.word	14625
	.word	14610
	.word	14595
	.word	14582
	.word	14567
	.word	14553
	.word	14538
	.word	14523
	.word	14509
	.word	14494
	.word	14480
	.word	14465
	.word	14450
	.word	14435
	.word	14420
	.word	14406
	.word	14391
	.word	14376
	.word	14361
	.word	14346
	.word	14330
	.word	14316
	.word	14301
	.word	14285
	.word	14270
	.word	14254
	.word	14239
	.word	14223
	.word	14208
	.word	14192
	.word	14177
	.word	14161
	.word	14146
	.word	14130
	.word	14115
	.word	14099
	.word	14082
	.word	14067
	.word	14051
	.word	14035
	.word	14019
	.word	14003
	.word	13986
	.word	13971
	.word	13955
	.word	13939
	.word	13923
	.word	13906
	.word	13890
	.word	13873
	.word	13857
	.word	13840
	.word	13823
	.word	13808
	.word	13791
	.word	13775
	.word	13758
	.word	13741
	.word	13724
	.word	13707
	.word	13691
	.word	13673
	.word	13657
	.word	13641
	.word	13623
	.word	13607
	.word	13589
	.word	13572
	.word	13556
	.word	13538
	.word	13521
	.word	13504
	.word	13486
	.word	13469
	.word	13451
	.word	13435
	.word	13417
	.word	13399
	.word	13383
	.word	13365
	.word	13347
	.word	13330
	.word	13312
	.word	13294
	.word	13277
	.word	13258
	.word	13241
	.word	13224
	.word	13205
	.word	13188
	.word	13170
	.word	13152
	.word	13134
	.word	13116
	.word	13098
	.word	13080
	.word	13062
	.word	13044
	.word	13026
	.word	13008
	.word	12989
	.word	12971
	.word	12953
	.word	12934
	.word	12916
	.word	12898
	.word	12879
	.word	12860
	.word	12842
	.word	12823
	.word	12806
	.word	12787
	.word	12768
	.word	12750
	.word	12731
	.word	12712
	.word	12694
	.word	12675
	.word	12655
	.word	12637
	.word	12618
	.word	12599
	.word	12580
	.word	12562
	.word	12542
	.word	12524
	.word	12504
	.word	12485
	.word	12466
	.word	12448
	.word	12427
	.word	12408
	.word	12390
	.word	12370
	.word	12351
	.word	12332
	.word	12312
	.word	12293
	.word	12273
	.word	12254
	.word	12235
	.word	12215
	.word	12195
	.word	12176
	.word	12157
	.word	12137
	.word	12118
	.word	12097
	.word	12079
	.word	12059
	.word	12039
	.word	12019
	.word	11998
	.word	11980
	.word	11960
	.word	11940
	.word	11920
	.word	11900
	.word	11880
	.word	11860
	.word	11839
	.word	11821
	.word	11801
	.word	11780
	.word	11761
	.word	11741
	.word	11720
	.word	11700
	.word	11680
	.word	11660
	.word	11640
	.word	11619
	.word	11599
	.word	11578
	.word	11559
	.word	11538
	.word	11518
	.word	11498
	.word	11477
	.word	11457
	.word	11436
	.word	11415
	.word	11394
	.word	11374
	.word	11354
	.word	11333
	.word	11313
	.word	11292
	.word	11272
	.word	11251
	.word	11231
	.word	11209
	.word	11189
	.word	11168
	.word	11148
	.word	11127
	.word	11107
	.word	11084
	.word	11064
	.word	11043
	.word	11023
	.word	11002
	.word	10982
	.word	10959
	.word	10939
	.word	10918
	.word	10898
	.word	10876
	.word	10856
	.word	10834
	.word	10814
	.word	10792
	.word	10772
	.word	10750
	.word	10728
	.word	10708
	.word	10687
	.word	10666
	.word	10644
	.word	10623
	.word	10602
	.word	10581
	.word	10560
	.word	10538
	.word	10517
	.word	10496
	.word	10474
	.word	10453
	.word	10431
	.word	10410
	.word	10389
	.word	10368
	.word	10346
	.word	10325
	.word	10303
	.word	10283
	.word	10260
	.word	10239
	.word	10217
	.word	10196
	.word	10175
	.word	10152
	.word	10132
	.word	10110
	.word	10088
	.word	10068
	.word	10045
	.word	10023
	.word	10002
	.word	9981
	.word	9959
	.word	9936
	.word	9915
	.word	9893
	.word	9872
	.word	9851
	.word	9829
	.word	9806
	.word	9784
	.word	9763
	.word	9742
	.word	9720
	.word	9698
	.word	9676
	.word	9653
	.word	9633
	.word	9611
	.word	9589
	.word	9567
	.word	9545
	.word	9523
	.word	9501
	.word	9479
	.word	9458
	.word	9436
	.word	9414
	.word	9392
	.word	9370
	.word	9348
	.word	9326
	.word	9304
	.word	9282
	.word	9260
	.word	9238
	.word	9216
	.word	9194
	.word	9172
	.word	9150
	.word	9128
	.word	9106
	.word	9084
	.word	9062
	.word	9040
	.word	9018
	.word	8996
	.word	8974
	.word	8951
	.word	8929
	.word	8907
	.word	8885
	.word	8863
	.word	8841
	.word	8819
	.word	8797
	.word	8775
	.word	8752
	.word	8730
	.word	8708
	.word	8686
	.word	8664
	.word	8642
	.word	8620
	.word	8597
	.word	8575
	.word	8553
	.word	8531
	.word	8509
	.word	8487
	.word	8464
	.word	8442
	.word	8420
	.word	8398
	.word	8376
	.word	8353
	.word	8331
	.word	8309
	.word	8287
	.word	8265
	.word	8242
	.word	8220
	.word	8198
	.word	8176
	.word	8154
	.word	8131
	.word	8109
	.word	8087
	.word	8065
	.word	8042
	.word	8020
	.word	7998
	.word	7976
	.word	7954
	.word	7931
	.word	7909
	.word	7887
	.word	7865
	.word	7842
	.word	7820
	.word	7798
	.word	7776
	.word	7754
	.word	7731
	.word	7709
	.word	7687
	.word	7665
	.word	7643
	.word	7620
	.word	7598
	.word	7576
	.word	7554
	.word	7531
	.word	7509
	.word	7487
	.word	7465
	.word	7443
	.word	7421
	.word	7398
	.word	7376
	.word	7354
	.word	7332
	.word	7310
	.word	7288
	.word	7265
	.word	7243
	.word	7221
	.word	7199
	.word	7177
	.word	7155
	.word	7132
	.word	7110
	.word	7088
	.word	7066
	.word	7044
	.word	7022
	.word	7000
	.word	6978
	.word	6956
	.word	6934
	.word	6911
	.word	6889
	.word	6867
	.word	6845
	.word	6823
	.word	6801
	.word	6779
	.word	6757
	.word	6735
	.word	6713
	.word	6691
	.word	6669
	.word	6647
	.word	6625
	.word	6603
	.word	6581
	.word	6559
	.word	6537
	.word	6515
	.word	6493
	.word	6472
	.word	6450
	.word	6428
	.word	6406
	.word	6384
	.word	6362
	.word	6340
	.word	6318
	.word	6297
	.word	6275
	.word	6253
	.word	6231
	.word	6209
	.word	6188
	.word	6166
	.word	6144
	.word	6122
	.word	6101
	.word	6079
	.word	6057
	.word	6035
	.word	6014
	.word	5992
	.word	5970
	.word	5949
	.word	5927
	.word	5905
	.word	5884
	.word	5862
	.word	5841
	.word	5819
	.word	5797
	.word	5776
	.word	5754
	.word	5733
	.word	5711
	.word	5690
	.word	5668
	.word	5647
	.word	5625
	.word	5604
	.word	5582
	.word	5561
	.word	5540
	.word	5518
	.word	5497
	.word	5476
	.word	5454
	.word	5433
	.word	5412
	.word	5390
	.word	5369
	.word	5348
	.word	5327
	.word	5305
	.word	5284
	.word	5263
	.word	5242
	.word	5221
	.word	5199
	.word	5178
	.word	5157
	.word	5136
	.word	5115
	.word	5094
	.word	5073
	.word	5052
	.word	5031
	.word	5010
	.word	4989
	.word	4968
	.word	4947
	.word	4926
	.word	4905
	.word	4885
	.word	4864
	.word	4843
	.word	4822
	.word	4801
	.word	4780
	.word	4760
	.word	4739
	.word	4718
	.word	4698
	.word	4677
	.word	4656
	.word	4636
	.word	4615
	.word	4595
	.word	4574
	.word	4553
	.word	4533
	.word	4512
	.word	4492
	.word	4471
	.word	4451
	.word	4431
	.word	4410
	.word	4390
	.word	4370
	.word	4349
	.word	4329
	.word	4309
	.word	4288
	.word	4268
	.word	4248
	.word	4228
	.word	4208
	.word	4188
	.word	4167
	.word	4147
	.word	4127
	.word	4107
	.word	4087
	.word	4067
	.word	4047
	.word	4027
	.word	4007
	.word	3988
	.word	3968
	.word	3948
	.word	3928
	.word	3908
	.word	3889
	.word	3869
	.word	3849
	.word	3829
	.word	3810
	.word	3790
	.word	3771
	.word	3751
	.word	3732
	.word	3712
	.word	3693
	.word	3673
	.word	3654
	.word	3634
	.word	3615
	.word	3595
	.word	3576
	.word	3557
	.word	3538
	.word	3518
	.word	3499
	.word	3480
	.word	3461
	.word	3442
	.word	3423
	.word	3404
	.word	3385
	.word	3366
	.word	3347
	.word	3328
	.word	3309
	.word	3290
	.word	3271
	.word	3252
	.word	3233
	.word	3215
	.word	3196
	.word	3177
	.word	3159
	.word	3140
	.word	3121
	.word	3103
	.word	3084
	.word	3066
	.word	3047
	.word	3029
	.word	3010
	.word	2992
	.word	2974
	.word	2955
	.word	2937
	.word	2919
	.word	2901
	.word	2882
	.word	2864
	.word	2846
	.word	2828
	.word	2810
	.word	2792
	.word	2774
	.word	2756
	.word	2738
	.word	2720
	.word	2702
	.word	2685
	.word	2667
	.word	2649
	.word	2631
	.word	2614
	.word	2596
	.word	2579
	.word	2561
	.word	2543
	.word	2526
	.word	2509
	.word	2491
	.word	2474
	.word	2456
	.word	2439
	.word	2422
	.word	2405
	.word	2387
	.word	2370
	.word	2353
	.word	2336
	.word	2319
	.word	2302
	.word	2285
	.word	2268
	.word	2251
	.word	2234
	.word	2218
	.word	2201
	.word	2184
	.word	2167
	.word	2151
	.word	2134
	.word	2117
	.word	2101
	.word	2084
	.word	2068
	.word	2052
	.word	2035
	.word	2019
	.word	2003
	.word	1986
	.word	1970
	.word	1954
	.word	1938
	.word	1922
	.word	1906
	.word	1890
	.word	1874
	.word	1858
	.word	1842
	.word	1826
	.word	1810
	.word	1794
	.word	1779
	.word	1763
	.word	1747
	.word	1732
	.word	1716
	.word	1701
	.word	1685
	.word	1670
	.word	1654
	.word	1639
	.word	1624
	.word	1608
	.word	1593
	.word	1578
	.word	1563
	.word	1548
	.word	1533
	.word	1518
	.word	1503
	.word	1488
	.word	1473
	.word	1458
	.word	1444
	.word	1429
	.word	1414
	.word	1400
	.word	1385
	.word	1370
	.word	1356
	.word	1342
	.word	1327
	.word	1313
	.word	1298
	.word	1284
	.word	1270
	.word	1256
	.word	1242
	.word	1228
	.word	1214
	.word	1200
	.word	1186
	.word	1172
	.word	1158
	.word	1144
	.word	1131
	.word	1117
	.word	1103
	.word	1090
	.word	1076
	.word	1063
	.word	1049
	.word	1036
	.word	1022
	.word	1009
	.word	996
	.word	983
	.word	970
	.word	956
	.word	943
	.word	930
	.word	917
	.word	905
	.word	892
	.word	879
	.word	866
	.word	854
	.word	841
	.word	828
	.word	816
	.word	803
	.word	791
	.word	778
	.word	766
	.word	754
	.word	742
	.word	729
	.word	717
	.word	705
	.word	693
	.word	681
	.word	669
	.word	658
	.word	646
	.word	634
	.word	622
	.word	611
	.word	599
	.word	588
	.word	576
	.word	565
	.word	553
	.word	542
	.word	531
	.word	520
	.word	508
	.word	497
	.word	486
	.word	475
	.word	464
	.word	453
	.word	443
	.word	432
	.word	421
	.word	411
	.word	400
	.word	389
	.word	379
	.word	369
	.word	358
	.word	348
	.word	338
	.word	327
	.word	317
	.word	307
	.word	297
	.word	287
	.word	277
	.word	268
	.word	258
	.word	248
	.word	238
	.word	229
	.word	219
	.word	210
	.word	200
	.word	191
	.word	182
	.word	172
	.word	163
	.word	154
	.word	145
	.word	136
	.word	127
	.word	118
	.word	109
	.word	100
	.word	92
	.word	83
	.word	75
	.word	66
	.word	58
	.word	49
	.word	41
	.word	32
	.word	24
	.word	16
	.word	8
	.align 32
__ZL17cubic_spline_lut0:
	.word	0
	.word	-8
	.word	-16
	.word	-24
	.word	-32
	.word	-40
	.word	-47
	.word	-55
	.word	-63
	.word	-71
	.word	-78
	.word	-86
	.word	-94
	.word	-101
	.word	-109
	.word	-117
	.word	-124
	.word	-132
	.word	-139
	.word	-146
	.word	-154
	.word	-161
	.word	-169
	.word	-176
	.word	-183
	.word	-190
	.word	-198
	.word	-205
	.word	-212
	.word	-219
	.word	-226
	.word	-233
	.word	-240
	.word	-247
	.word	-254
	.word	-261
	.word	-268
	.word	-275
	.word	-282
	.word	-289
	.word	-295
	.word	-302
	.word	-309
	.word	-316
	.word	-322
	.word	-329
	.word	-336
	.word	-342
	.word	-349
	.word	-355
	.word	-362
	.word	-368
	.word	-375
	.word	-381
	.word	-388
	.word	-394
	.word	-400
	.word	-407
	.word	-413
	.word	-419
	.word	-425
	.word	-432
	.word	-438
	.word	-444
	.word	-450
	.word	-456
	.word	-462
	.word	-468
	.word	-474
	.word	-480
	.word	-486
	.word	-492
	.word	-498
	.word	-504
	.word	-510
	.word	-515
	.word	-521
	.word	-527
	.word	-533
	.word	-538
	.word	-544
	.word	-550
	.word	-555
	.word	-561
	.word	-566
	.word	-572
	.word	-577
	.word	-583
	.word	-588
	.word	-594
	.word	-599
	.word	-604
	.word	-610
	.word	-615
	.word	-620
	.word	-626
	.word	-631
	.word	-636
	.word	-641
	.word	-646
	.word	-651
	.word	-656
	.word	-662
	.word	-667
	.word	-672
	.word	-677
	.word	-682
	.word	-686
	.word	-691
	.word	-696
	.word	-701
	.word	-706
	.word	-711
	.word	-715
	.word	-720
	.word	-725
	.word	-730
	.word	-734
	.word	-739
	.word	-744
	.word	-748
	.word	-753
	.word	-757
	.word	-762
	.word	-766
	.word	-771
	.word	-775
	.word	-780
	.word	-784
	.word	-788
	.word	-793
	.word	-797
	.word	-801
	.word	-806
	.word	-810
	.word	-814
	.word	-818
	.word	-822
	.word	-826
	.word	-831
	.word	-835
	.word	-839
	.word	-843
	.word	-847
	.word	-851
	.word	-855
	.word	-859
	.word	-863
	.word	-866
	.word	-870
	.word	-874
	.word	-878
	.word	-882
	.word	-886
	.word	-889
	.word	-893
	.word	-897
	.word	-900
	.word	-904
	.word	-908
	.word	-911
	.word	-915
	.word	-918
	.word	-922
	.word	-925
	.word	-929
	.word	-932
	.word	-936
	.word	-939
	.word	-943
	.word	-946
	.word	-949
	.word	-953
	.word	-956
	.word	-959
	.word	-962
	.word	-966
	.word	-969
	.word	-972
	.word	-975
	.word	-978
	.word	-981
	.word	-984
	.word	-987
	.word	-991
	.word	-994
	.word	-997
	.word	-999
	.word	-1002
	.word	-1005
	.word	-1008
	.word	-1011
	.word	-1014
	.word	-1017
	.word	-1020
	.word	-1022
	.word	-1025
	.word	-1028
	.word	-1031
	.word	-1033
	.word	-1036
	.word	-1039
	.word	-1041
	.word	-1044
	.word	-1047
	.word	-1049
	.word	-1052
	.word	-1054
	.word	-1057
	.word	-1059
	.word	-1062
	.word	-1064
	.word	-1066
	.word	-1069
	.word	-1071
	.word	-1074
	.word	-1076
	.word	-1078
	.word	-1080
	.word	-1083
	.word	-1085
	.word	-1087
	.word	-1089
	.word	-1092
	.word	-1094
	.word	-1096
	.word	-1098
	.word	-1100
	.word	-1102
	.word	-1104
	.word	-1106
	.word	-1108
	.word	-1110
	.word	-1112
	.word	-1114
	.word	-1116
	.word	-1118
	.word	-1120
	.word	-1122
	.word	-1124
	.word	-1125
	.word	-1127
	.word	-1129
	.word	-1131
	.word	-1133
	.word	-1134
	.word	-1136
	.word	-1138
	.word	-1139
	.word	-1141
	.word	-1143
	.word	-1144
	.word	-1146
	.word	-1147
	.word	-1149
	.word	-1150
	.word	-1152
	.word	-1153
	.word	-1155
	.word	-1156
	.word	-1158
	.word	-1159
	.word	-1161
	.word	-1162
	.word	-1163
	.word	-1165
	.word	-1166
	.word	-1167
	.word	-1169
	.word	-1170
	.word	-1171
	.word	-1172
	.word	-1174
	.word	-1175
	.word	-1176
	.word	-1177
	.word	-1178
	.word	-1179
	.word	-1180
	.word	-1181
	.word	-1182
	.word	-1184
	.word	-1185
	.word	-1186
	.word	-1187
	.word	-1187
	.word	-1188
	.word	-1189
	.word	-1190
	.word	-1191
	.word	-1192
	.word	-1193
	.word	-1194
	.word	-1195
	.word	-1195
	.word	-1196
	.word	-1197
	.word	-1198
	.word	-1198
	.word	-1199
	.word	-1200
	.word	-1200
	.word	-1201
	.word	-1202
	.word	-1202
	.word	-1203
	.word	-1204
	.word	-1204
	.word	-1205
	.word	-1205
	.word	-1206
	.word	-1206
	.word	-1207
	.word	-1207
	.word	-1208
	.word	-1208
	.word	-1208
	.word	-1209
	.word	-1209
	.word	-1210
	.word	-1210
	.word	-1210
	.word	-1211
	.word	-1211
	.word	-1211
	.word	-1212
	.word	-1212
	.word	-1212
	.word	-1212
	.word	-1212
	.word	-1213
	.word	-1213
	.word	-1213
	.word	-1213
	.word	-1213
	.word	-1213
	.word	-1213
	.word	-1213
	.word	-1214
	.word	-1214
	.word	-1214
	.word	-1214
	.word	-1214
	.word	-1214
	.word	-1214
	.word	-1214
	.word	-1213
	.word	-1213
	.word	-1213
	.word	-1213
	.word	-1213
	.word	-1213
	.word	-1213
	.word	-1213
	.word	-1212
	.word	-1212
	.word	-1212
	.word	-1212
	.word	-1211
	.word	-1211
	.word	-1211
	.word	-1211
	.word	-1210
	.word	-1210
	.word	-1210
	.word	-1209
	.word	-1209
	.word	-1209
	.word	-1208
	.word	-1208
	.word	-1207
	.word	-1207
	.word	-1207
	.word	-1206
	.word	-1206
	.word	-1205
	.word	-1205
	.word	-1204
	.word	-1204
	.word	-1203
	.word	-1202
	.word	-1202
	.word	-1201
	.word	-1201
	.word	-1200
	.word	-1199
	.word	-1199
	.word	-1198
	.word	-1197
	.word	-1197
	.word	-1196
	.word	-1195
	.word	-1195
	.word	-1194
	.word	-1193
	.word	-1192
	.word	-1192
	.word	-1191
	.word	-1190
	.word	-1189
	.word	-1188
	.word	-1187
	.word	-1187
	.word	-1186
	.word	-1185
	.word	-1184
	.word	-1183
	.word	-1182
	.word	-1181
	.word	-1180
	.word	-1179
	.word	-1178
	.word	-1177
	.word	-1176
	.word	-1175
	.word	-1174
	.word	-1173
	.word	-1172
	.word	-1171
	.word	-1170
	.word	-1169
	.word	-1168
	.word	-1167
	.word	-1166
	.word	-1165
	.word	-1163
	.word	-1162
	.word	-1161
	.word	-1160
	.word	-1159
	.word	-1158
	.word	-1156
	.word	-1155
	.word	-1154
	.word	-1153
	.word	-1151
	.word	-1150
	.word	-1149
	.word	-1148
	.word	-1146
	.word	-1145
	.word	-1144
	.word	-1142
	.word	-1141
	.word	-1140
	.word	-1138
	.word	-1137
	.word	-1135
	.word	-1134
	.word	-1133
	.word	-1131
	.word	-1130
	.word	-1128
	.word	-1127
	.word	-1125
	.word	-1124
	.word	-1122
	.word	-1121
	.word	-1119
	.word	-1118
	.word	-1116
	.word	-1115
	.word	-1113
	.word	-1112
	.word	-1110
	.word	-1109
	.word	-1107
	.word	-1105
	.word	-1104
	.word	-1102
	.word	-1101
	.word	-1099
	.word	-1097
	.word	-1096
	.word	-1094
	.word	-1092
	.word	-1091
	.word	-1089
	.word	-1087
	.word	-1085
	.word	-1084
	.word	-1082
	.word	-1080
	.word	-1079
	.word	-1077
	.word	-1075
	.word	-1073
	.word	-1071
	.word	-1070
	.word	-1068
	.word	-1066
	.word	-1064
	.word	-1062
	.word	-1061
	.word	-1059
	.word	-1057
	.word	-1055
	.word	-1053
	.word	-1051
	.word	-1049
	.word	-1047
	.word	-1046
	.word	-1044
	.word	-1042
	.word	-1040
	.word	-1038
	.word	-1036
	.word	-1034
	.word	-1032
	.word	-1030
	.word	-1028
	.word	-1026
	.word	-1024
	.word	-1022
	.word	-1020
	.word	-1018
	.word	-1016
	.word	-1014
	.word	-1012
	.word	-1010
	.word	-1008
	.word	-1006
	.word	-1004
	.word	-1002
	.word	-999
	.word	-997
	.word	-995
	.word	-993
	.word	-991
	.word	-989
	.word	-987
	.word	-985
	.word	-982
	.word	-980
	.word	-978
	.word	-976
	.word	-974
	.word	-972
	.word	-969
	.word	-967
	.word	-965
	.word	-963
	.word	-961
	.word	-958
	.word	-956
	.word	-954
	.word	-952
	.word	-950
	.word	-947
	.word	-945
	.word	-943
	.word	-941
	.word	-938
	.word	-936
	.word	-934
	.word	-931
	.word	-929
	.word	-927
	.word	-924
	.word	-922
	.word	-920
	.word	-918
	.word	-915
	.word	-913
	.word	-911
	.word	-908
	.word	-906
	.word	-903
	.word	-901
	.word	-899
	.word	-896
	.word	-894
	.word	-892
	.word	-889
	.word	-887
	.word	-884
	.word	-882
	.word	-880
	.word	-877
	.word	-875
	.word	-872
	.word	-870
	.word	-867
	.word	-865
	.word	-863
	.word	-860
	.word	-858
	.word	-855
	.word	-853
	.word	-850
	.word	-848
	.word	-845
	.word	-843
	.word	-840
	.word	-838
	.word	-835
	.word	-833
	.word	-830
	.word	-828
	.word	-825
	.word	-823
	.word	-820
	.word	-818
	.word	-815
	.word	-813
	.word	-810
	.word	-808
	.word	-805
	.word	-803
	.word	-800
	.word	-798
	.word	-795
	.word	-793
	.word	-790
	.word	-787
	.word	-785
	.word	-782
	.word	-780
	.word	-777
	.word	-775
	.word	-772
	.word	-769
	.word	-767
	.word	-764
	.word	-762
	.word	-759
	.word	-757
	.word	-754
	.word	-751
	.word	-749
	.word	-746
	.word	-744
	.word	-741
	.word	-738
	.word	-736
	.word	-733
	.word	-730
	.word	-728
	.word	-725
	.word	-723
	.word	-720
	.word	-717
	.word	-715
	.word	-712
	.word	-709
	.word	-707
	.word	-704
	.word	-702
	.word	-699
	.word	-696
	.word	-694
	.word	-691
	.word	-688
	.word	-686
	.word	-683
	.word	-680
	.word	-678
	.word	-675
	.word	-672
	.word	-670
	.word	-667
	.word	-665
	.word	-662
	.word	-659
	.word	-657
	.word	-654
	.word	-651
	.word	-649
	.word	-646
	.word	-643
	.word	-641
	.word	-638
	.word	-635
	.word	-633
	.word	-630
	.word	-627
	.word	-625
	.word	-622
	.word	-619
	.word	-617
	.word	-614
	.word	-611
	.word	-609
	.word	-606
	.word	-603
	.word	-601
	.word	-598
	.word	-595
	.word	-593
	.word	-590
	.word	-587
	.word	-585
	.word	-582
	.word	-579
	.word	-577
	.word	-574
	.word	-571
	.word	-569
	.word	-566
	.word	-563
	.word	-561
	.word	-558
	.word	-555
	.word	-553
	.word	-550
	.word	-547
	.word	-545
	.word	-542
	.word	-539
	.word	-537
	.word	-534
	.word	-531
	.word	-529
	.word	-526
	.word	-523
	.word	-521
	.word	-518
	.word	-516
	.word	-513
	.word	-510
	.word	-508
	.word	-505
	.word	-502
	.word	-500
	.word	-497
	.word	-495
	.word	-492
	.word	-489
	.word	-487
	.word	-484
	.word	-481
	.word	-479
	.word	-476
	.word	-474
	.word	-471
	.word	-468
	.word	-466
	.word	-463
	.word	-461
	.word	-458
	.word	-455
	.word	-453
	.word	-450
	.word	-448
	.word	-445
	.word	-442
	.word	-440
	.word	-437
	.word	-435
	.word	-432
	.word	-430
	.word	-427
	.word	-424
	.word	-422
	.word	-419
	.word	-417
	.word	-414
	.word	-412
	.word	-409
	.word	-407
	.word	-404
	.word	-402
	.word	-399
	.word	-397
	.word	-394
	.word	-392
	.word	-389
	.word	-387
	.word	-384
	.word	-382
	.word	-379
	.word	-377
	.word	-374
	.word	-372
	.word	-369
	.word	-367
	.word	-364
	.word	-362
	.word	-359
	.word	-357
	.word	-354
	.word	-352
	.word	-349
	.word	-347
	.word	-345
	.word	-342
	.word	-340
	.word	-337
	.word	-335
	.word	-332
	.word	-330
	.word	-328
	.word	-325
	.word	-323
	.word	-320
	.word	-318
	.word	-316
	.word	-313
	.word	-311
	.word	-309
	.word	-306
	.word	-304
	.word	-302
	.word	-299
	.word	-297
	.word	-295
	.word	-292
	.word	-290
	.word	-288
	.word	-285
	.word	-283
	.word	-281
	.word	-278
	.word	-276
	.word	-274
	.word	-272
	.word	-269
	.word	-267
	.word	-265
	.word	-263
	.word	-260
	.word	-258
	.word	-256
	.word	-254
	.word	-251
	.word	-249
	.word	-247
	.word	-245
	.word	-243
	.word	-240
	.word	-238
	.word	-236
	.word	-234
	.word	-232
	.word	-230
	.word	-228
	.word	-225
	.word	-223
	.word	-221
	.word	-219
	.word	-217
	.word	-215
	.word	-213
	.word	-211
	.word	-209
	.word	-207
	.word	-205
	.word	-202
	.word	-200
	.word	-198
	.word	-196
	.word	-194
	.word	-192
	.word	-190
	.word	-188
	.word	-186
	.word	-184
	.word	-182
	.word	-180
	.word	-178
	.word	-176
	.word	-175
	.word	-173
	.word	-171
	.word	-169
	.word	-167
	.word	-165
	.word	-163
	.word	-161
	.word	-159
	.word	-157
	.word	-156
	.word	-154
	.word	-152
	.word	-150
	.word	-148
	.word	-146
	.word	-145
	.word	-143
	.word	-141
	.word	-139
	.word	-137
	.word	-136
	.word	-134
	.word	-132
	.word	-130
	.word	-129
	.word	-127
	.word	-125
	.word	-124
	.word	-122
	.word	-120
	.word	-119
	.word	-117
	.word	-115
	.word	-114
	.word	-112
	.word	-110
	.word	-109
	.word	-107
	.word	-106
	.word	-104
	.word	-102
	.word	-101
	.word	-99
	.word	-98
	.word	-96
	.word	-95
	.word	-93
	.word	-92
	.word	-90
	.word	-89
	.word	-87
	.word	-86
	.word	-84
	.word	-83
	.word	-82
	.word	-80
	.word	-79
	.word	-77
	.word	-76
	.word	-75
	.word	-73
	.word	-72
	.word	-70
	.word	-69
	.word	-68
	.word	-67
	.word	-65
	.word	-64
	.word	-63
	.word	-61
	.word	-60
	.word	-59
	.word	-58
	.word	-57
	.word	-55
	.word	-54
	.word	-53
	.word	-52
	.word	-51
	.word	-49
	.word	-48
	.word	-47
	.word	-46
	.word	-45
	.word	-44
	.word	-43
	.word	-42
	.word	-41
	.word	-40
	.word	-39
	.word	-38
	.word	-37
	.word	-36
	.word	-35
	.word	-34
	.word	-33
	.word	-32
	.word	-31
	.word	-30
	.word	-29
	.word	-28
	.word	-27
	.word	-26
	.word	-26
	.word	-25
	.word	-24
	.word	-23
	.word	-22
	.word	-22
	.word	-21
	.word	-20
	.word	-19
	.word	-19
	.word	-18
	.word	-17
	.word	-16
	.word	-16
	.word	-15
	.word	-14
	.word	-14
	.word	-13
	.word	-13
	.word	-12
	.word	-11
	.word	-11
	.word	-10
	.word	-10
	.word	-9
	.word	-9
	.word	-8
	.word	-8
	.word	-7
	.word	-7
	.word	-6
	.word	-6
	.word	-6
	.word	-5
	.word	-5
	.word	-4
	.word	-4
	.word	-4
	.word	-3
	.word	-3
	.word	-3
	.word	-2
	.word	-2
	.word	-2
	.word	-2
	.word	-2
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.align 32
__ZL9sine_wave:
	.long	0
	.long	24
	.long	49
	.long	74
	.long	97
	.long	120
	.long	141
	.long	161
	.long	180
	.long	197
	.long	212
	.long	224
	.long	235
	.long	244
	.long	250
	.long	253
	.long	255
	.long	253
	.long	250
	.long	244
	.long	235
	.long	224
	.long	212
	.long	197
	.long	180
	.long	161
	.long	141
	.long	120
	.long	97
	.long	74
	.long	49
	.long	24
	.long	0
	.long	-24
	.long	-49
	.long	-74
	.long	-97
	.long	-120
	.long	-141
	.long	-161
	.long	-180
	.long	-197
	.long	-212
	.long	-224
	.long	-235
	.long	-244
	.long	-250
	.long	-253
	.long	-255
	.long	-253
	.long	-250
	.long	-244
	.long	-235
	.long	-224
	.long	-212
	.long	-197
	.long	-180
	.long	-161
	.long	-141
	.long	-120
	.long	-97
	.long	-74
	.long	-49
	.long	-24
	.align 32
__ZL2fx.lto_priv.0:
	.ascii "\377\243\13\216\12\2\1\3\4\35\264\6\5\200\201\11\211\33\7\376\207\254\20\21\10\212\276\377\277\377\377\377"
	.align 4
LC0:
	.long	1199570944
	.align 8
LC3:
	.long	1
	.long	0
	.align 16
LC9:
	.long	0
	.long	2
	.long	3
	.long	3
	.align 4
LC10:
	.long	1174580224
	.align 4
LC11:
	.long	1153433600
	.align 8
LC12:
	.long	-17155601
	.long	1072049730
	.align 4
LC18:
	.long	1180041216
	.align 4
LC19:
	.long	1094713344
	.align 4
LC21:
	.long	1056964608
	.align 8
LC22:
	.long	0
	.long	1072693248
	.align 8
LC26:
	.long	-1717986918
	.long	1069128089
	.align 4
LC27:
	.long	1006632960
	.align 4
LC28:
	.long	1131413504
	.align 4
LC29:
	.long	1098907648
	.align 4
LC30:
	.long	1073741824
	.align 4
LC31:
	.long	1023410176
	.align 4
LC33:
	.long	1101004800
	.align 4
LC34:
	.long	1092616192
	.align 4
LC35:
	.long	-1098907648
	.align 4
LC36:
	.long	1048576000
	.align 4
LC37:
	.long	1124073472
	.align 8
LC40:
	.long	2048
	.long	0
	.align 8
LC41:
	.long	-1
	.long	-1
	.align 8
LC42:
	.long	254
	.long	0
	.align 8
LC43:
	.long	-1
	.long	1
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_rand;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_SCRIPT_SectionExists;	.scl	2;	.type	32;	.endef
	.def	_strcasecmp;	.scl	2;	.type	32;	.endef
	.def	_strtol;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_SCRIPT_AddSection;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_strncpy;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_log;	.scl	2;	.type	32;	.endef
	.def	__Z18libxmp_load_sampleP11module_dataP10HIO_HANDLEiP10xmp_samplePKv;	.scl	2;	.type	32;	.endef
	.def	_pow;	.scl	2;	.type	32;	.endef
	.def	__Z20libxmp_virt_pastnoteP12context_dataii;	.scl	2;	.type	32;	.endef
	.def	__Z20libxmp_virt_setpatchP12context_dataiiiiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z24libxmp_virt_resetchannelP12context_datai;	.scl	2;	.type	32;	.endef
