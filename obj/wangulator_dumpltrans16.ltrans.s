	.file	"<artificial>"
	.text
	.p2align 4
	.globl	__ZL24_internal_getcolumnwidthi.lto_priv.0
	.def	__ZL24_internal_getcolumnwidthi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL24_internal_getcolumnwidthi.lto_priv.0:
LFB0:
	.cfi_startproc
	movl	4(%esp), %edx
	testl	%edx, %edx
	leal	7(%edx), %eax
	cmovns	%edx, %eax
	sarl	$3, %eax
	subl	$1, %eax
	ret
	.cfi_endproc
LFE0:
	.p2align 4
	.globl	__ZL22_internal_getrowheighti.lto_priv.0
	.def	__ZL22_internal_getrowheighti.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL22_internal_getrowheighti.lto_priv.0:
LFB2:
	.cfi_startproc
	movl	4(%esp), %edx
	testl	%edx, %edx
	leal	7(%edx), %eax
	cmovns	%edx, %eax
	sarl	$3, %eax
	ret
	.cfi_endproc
LFE2:
	.p2align 4
	.globl	__ZL25_internal_clearbackgroundii.lto_priv.0
	.def	__ZL25_internal_clearbackgroundii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL25_internal_clearbackgroundii.lto_priv.0:
LFB4:
	.cfi_startproc
	ret
	.cfi_endproc
LFE4:
	.p2align 4
	.globl	__ZL17_internal_gettimev.lto_priv.0
	.def	__ZL17_internal_gettimev.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL17_internal_gettimev.lto_priv.0:
LFB6:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE6:
	.p2align 4
	.def	__ZL24OSD_AdjustEditorPositionR9osdedit_t;	.scl	3;	.type	32;	.endef
__ZL24OSD_AdjustEditorPositionR9osdedit_t:
LFB7:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	xorl	%edx, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	(%eax), %esi
	movl	%eax, %ebx
	movw	%dx, 10(%eax)
	cmpb	$0, (%esi)
	je	L11
	movl	$1, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L8:
	movswl	%ax, %ecx
	movw	%ax, 10(%ebx)
	addl	$1, %eax
	movl	%ecx, %edx
	cmpb	$0, (%esi,%ecx)
	jne	L8
L7:
	movzwl	12(%ebx), %eax
	movw	%dx, 8(%ebx)
	cmpw	%dx, %ax
	jle	L9
	movl	_osd, %eax
	movw	%dx, 14(%ebx)
	movl	1148(%eax), %eax
	subl	%eax, %edx
	addw	$4, %dx
	movw	%dx, 12(%ebx)
	js	L14
L6:
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
L9:
	.cfi_restore_state
	movzwl	14(%ebx), %ecx
	cmpw	%dx, %cx
	jg	L6
	subl	%ecx, %eax
	movw	%dx, 14(%ebx)
	addl	%edx, %eax
	movw	%ax, 12(%ebx)
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
L14:
	.cfi_restore_state
	subl	$4, %eax
	movw	%ax, 14(%ebx)
	xorl	%eax, %eax
	movw	%ax, 12(%ebx)
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
L11:
	.cfi_restore_state
	xorl	%edx, %edx
	jmp	L7
	.cfi_endproc
LFE7:
	.p2align 4
	.def	__ZL12osd_strtokenPcPS_Pi;	.scl	3;	.type	32;	.endef
__ZL12osd_strtokenPcPS_Pi:
LFB8:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%ecx, %ebp
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
	movl	%eax, %ebx
	movl	$0, (%ecx)
	testl	%eax, %eax
	jne	L58
	jmp	L59
	.p2align 4
	.p2align 4,,10
	.p2align 3
L19:
	addl	$1, %ebx
L58:
	movzbl	(%ebx), %eax
	cmpb	$32, %al
	je	L19
	cmpb	$59, %al
	je	L60
	testb	%al, %al
	je	L61
	cmpb	$34, %al
	je	L23
	movzbl	(%ebx), %edx
	movl	%ebx, %eax
	testb	%dl, %dl
	jne	L24
	jmp	L25
	.p2align 4,,10
	.p2align 3
L62:
	cmpb	$32, %dl
	je	L31
	movzbl	1(%eax), %edx
	addl	$1, %eax
	testb	%dl, %dl
	je	L25
L24:
	cmpb	$59, %dl
	jne	L62
L31:
	movzbl	(%eax), %edx
	movl	%ebx, %esi
	testb	%dl, %dl
	je	L30
L33:
	leal	1(%eax), %ecx
	movb	$0, (%eax)
	movl	%ecx, (%edi)
	cmpb	$59, %dl
	jne	L15
	movl	$1, 0(%ebp)
L15:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
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
L23:
	.cfi_restore_state
	movzbl	1(%ebx), %edx
	leal	1(%ebx), %esi
	movl	%esi, %ecx
	testb	%dl, %dl
	je	L38
	movl	%esi, %ebx
	jmp	L28
	.p2align 4,,10
	.p2align 3
L39:
	movl	%ebx, %eax
L27:
	movb	%dl, (%ecx)
	movzbl	1(%eax), %edx
	addl	$1, %ecx
	leal	1(%eax), %ebx
	testb	%dl, %dl
	je	L63
L28:
	leal	1(%ebx), %eax
	cmpb	$34, %dl
	je	L26
	cmpb	$92, %dl
	jne	L39
	movzbl	1(%ebx), %edx
	cmpb	$110, %dl
	je	L40
	cmpb	$114, %dl
	movl	$13, %ebx
	cmove	%ebx, %edx
	addl	$1, %ecx
	leal	1(%eax), %ebx
	movb	%dl, -1(%ecx)
	movzbl	1(%eax), %edx
	testb	%dl, %dl
	jne	L28
L63:
	movl	%ebx, %eax
L26:
	movb	$0, (%ecx)
	movzbl	(%eax), %edx
	testb	%dl, %dl
	jne	L33
L30:
	movl	$0, (%edi)
L64:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
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
L59:
	.cfi_restore_state
	movl	(%edx), %ebx
	xorl	%esi, %esi
	testl	%ebx, %ebx
	jne	L58
	jmp	L15
	.p2align 4,,10
	.p2align 3
L40:
	movl	$10, %edx
	jmp	L27
	.p2align 4,,10
	.p2align 3
L25:
	movl	$0, (%edi)
	movl	%ebx, %esi
	jmp	L64
	.p2align 4,,10
	.p2align 3
L61:
	movl	$0, (%edi)
	xorl	%esi, %esi
L65:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
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
L60:
	.cfi_restore_state
	addl	$1, %ebx
	movl	$1, 0(%ebp)
	xorl	%esi, %esi
	movl	%ebx, (%edi)
	jmp	L65
L38:
	movl	%esi, %eax
	jmp	L26
	.cfi_endproc
LFE8:
	.p2align 4
	.def	__ZL9FloatDownP13PriorityQHeapi;	.scl	3;	.type	32;	.endef
__ZL9FloatDownP13PriorityQHeapi:
LFB9:
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
	jmp	L77
	.p2align 4,,10
	.p2align 3
L82:
	movl	(%esp), %edi
	movl	12(%esp), %esi
	leal	(%edi,%ecx,8), %ebx
	movl	(%esi), %esi
	movl	(%ebx), %edi
	movss	24(%esi), %xmm1
	movss	24(%edi), %xmm0
	comiss	%xmm1, %xmm0
	ja	L73
	ucomiss	%xmm0, %xmm1
	jp	L74
	jne	L74
	movss	28(%edi), %xmm0
	comiss	28(%esi), %xmm0
	jnb	L73
L74:
	movl	%ecx, 0(%ebp,%eax,4)
	movl	%eax, 4(%ebx)
	movl	%edx, %eax
L77:
	movl	8(%esp), %edi
	leal	(%eax,%eax), %edx
	movl	0(%ebp,%eax,8), %ecx
	movl	8(%edi), %ebx
	cmpl	%edx, %ebx
	jle	L68
	movl	4(%ebp,%eax,8), %esi
	movl	(%esp), %edi
	movl	%esi, 4(%esp)
	movl	(%edi,%esi,8), %esi
	movl	(%edi,%ecx,8), %edi
	movss	24(%esi), %xmm1
	movss	24(%edi), %xmm0
	comiss	%xmm1, %xmm0
	ja	L69
	ucomiss	%xmm0, %xmm1
	jp	L68
	jne	L68
	movss	28(%edi), %xmm0
	comiss	28(%esi), %xmm0
	jb	L68
L69:
	movl	4(%esp), %ecx
	addl	$1, %edx
L68:
	cmpl	%edx, %ebx
	jge	L82
L73:
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
LFE9:
	.p2align 4
	.def	__ZL7FloatUpP13PriorityQHeapi.isra.0;	.scl	3;	.type	32;	.endef
__ZL7FloatUpP13PriorityQHeapi.isra.0:
LFB11:
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
	je	L84
	movl	%ebx, 12(%esp)
	movl	%ebp, 24(%esp)
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	movl	(%esi,%eax,4), %ecx
	movl	%edi, 8(%esp)
	jmp	L89
	.p2align 4,,10
	.p2align 3
L98:
	ucomiss	%xmm0, %xmm1
	jp	L86
	jne	L86
	movss	28(%ebp), %xmm0
	comiss	28(%edi), %xmm0
	jnb	L85
L86:
	movl	%ecx, (%esi,%edx,4)
	movl	%edx, 4(%ebx)
	movl	%eax, %ebx
	movl	%eax, %edx
	sarl	%ebx
	movl	(%esi,%ebx,4), %ecx
	je	L97
	movl	%ebx, %eax
L89:
	movl	4(%esp), %edi
	movl	(%esp), %ebp
	leal	(%edi,%ecx,8), %ebx
	movl	0(%ebp), %ebp
	movl	(%ebx), %edi
	movss	24(%ebp), %xmm0
	movss	24(%edi), %xmm1
	comiss	%xmm1, %xmm0
	jbe	L98
L85:
	movl	8(%esp), %edi
	movl	12(%esp), %ebx
	.cfi_restore 3
	leal	(%esi,%edx,4), %ecx
	movl	24(%esp), %ebp
	.cfi_restore 5
L84:
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
L97:
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
	jmp	L84
	.cfi_endproc
LFE11:
	.p2align 4
	.def	__ZL16pqHeapExtractMinP13PriorityQHeap;	.scl	3;	.type	32;	.endef
__ZL16pqHeapExtractMinP13PriorityQHeap:
LFB12:
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
	jle	L99
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
	jg	L102
L99:
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
L102:
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
LFE12:
	.p2align 4
	.def	__ZL12pqExtractMinP9PriorityQ;	.scl	3;	.type	32;	.endef
__ZL12pqExtractMinP9PriorityQ:
LFB13:
	.cfi_startproc
	movl	%eax, %ecx
	movl	12(%eax), %eax
	movl	(%ecx), %edx
	testl	%eax, %eax
	je	L119
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
	je	L105
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
	ja	L104
	ucomiss	%xmm0, %xmm1
	jp	L124
	jne	L124
	movss	28(%esi), %xmm0
	comiss	28(%edi), %xmm0
	jnb	L104
L124:
	movl	8(%esp), %edi
	.cfi_restore 7
	movl	12(%esp), %ebp
	.cfi_restore 5
L105:
	subl	$1, %eax
	jmp	L110
	.p2align 5
	.p2align 4,,10
	.p2align 3
L125:
	movl	-4(%ebx,%eax,4), %edx
	subl	$1, %eax
	movl	(%edx), %edx
	testl	%edx, %edx
	jne	L103
L110:
	movl	%eax, 12(%ecx)
	testl	%eax, %eax
	jg	L125
L103:
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
L104:
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
L119:
	movl	%edx, %eax
	jmp	__ZL16pqHeapExtractMinP13PriorityQHeap
	.cfi_endproc
LFE13:
	.section	.text.unlikely,"x"
LCOLDB0:
	.text
LHOTB0:
	.p2align 4
	.def	__ZL15IsWindingInsidePK14TESStesselatori.isra.0;	.scl	3;	.type	32;	.endef
__ZL15IsWindingInsidePK14TESStesselatori.isra.0:
LFB15:
	.cfi_startproc
	cmpl	$4, %eax
	ja	L134
	jmp	*L129(,%eax,4)
	.section .rdata,"dr"
	.align 4
L129:
	.long	L133
	.long	L132
	.long	L131
	.long	L130
	.long	L128
	.text
	.p2align 4,,10
	.p2align 3
L130:
	movl	%edx, %eax
	shrl	$31, %eax
	ret
	.p2align 4,,10
	.p2align 3
L128:
	leal	1(%edx), %eax
	cmpl	$2, %eax
	seta	%al
	movzbl	%al, %eax
	ret
	.p2align 4,,10
	.p2align 3
L133:
	movl	%edx, %eax
	andl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
L132:
	xorl	%eax, %eax
	testl	%edx, %edx
	setne	%al
	ret
	.p2align 4,,10
	.p2align 3
L131:
	xorl	%eax, %eax
	testl	%edx, %edx
	setg	%al
	ret
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__ZL15IsWindingInsidePK14TESStesselatori.isra.0.cold;	.scl	3;	.type	32;	.endef
__ZL15IsWindingInsidePK14TESStesselatori.isra.0.cold:
LFSB15:
L134:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE15:
	.text
	.section	.text.unlikely,"x"
LCOLDE0:
	.text
LHOTE0:
	.p2align 4
	.def	__ZL13VertexWeightsP10TESSvertexPKS_S2_Pf;	.scl	3;	.type	32;	.endef
__ZL13VertexWeightsP10TESSvertexPKS_S2_Pf:
LFB16:
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
LFE16:
	.section .rdata,"dr"
LC4:
	.ascii "%s\0"
LC5:
	.ascii "source/build/src/osd.cpp\0"
	.text
	.p2align 4
	.def	__ZL12osdfunc_echoPK13osdfuncparm_t;	.scl	3;	.type	32;	.endef
__ZL12osdfunc_echoPK13osdfuncparm_t:
LFB17:
	.cfi_startproc
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	jns	L155
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L155:
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	24(%esp), %eax
	movl	12(%eax), %eax
	movl	$LC4, 12(%esp)
	movl	$274, 8(%esp)
	addl	$5, %eax
	movl	$LC5, 4(%esp)
	movl	%eax, 16(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	xorl	%eax, %eax
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE17:
	.section .rdata,"dr"
LC6:
	.ascii "'%s' is '%f'\0"
LC7:
	.ascii "%s [%d-%d]: %s\0"
LC8:
	.ascii "'%s' is '%d'\0"
LC9:
	.ascii "%s [%d%c%d]: %s\0"
LC10:
	.ascii "'%s' is '%s'\0"
LC11:
	.ascii "%s: %s\0"
	.text
	.p2align 4
	.def	__ZL16osdfunc_printvari.isra.0;	.scl	3;	.type	32;	.endef
__ZL16osdfunc_printvari.isra.0:
LFB22:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	sall	$4, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	andl	$-8, %esp
	subl	$44, %esp
	.cfi_offset 3, -12
	movl	_osd, %edx
	addl	1180(%edx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %edx
	andl	$63, %edx
	jmp	*L159(,%edx,4)
	.section .rdata,"dr"
	.align 4
L159:
	.long	L158
	.long	L163
	.long	L161
	.long	L158
	.long	L162
	.long	L158
	.long	L158
	.long	L158
	.long	L161
	.long	L158
	.long	L158
	.long	L158
	.long	L158
	.long	L158
	.long	L158
	.long	L158
	.long	L160
	.long	L158
	.long	L158
	.long	L158
	.long	L158
	.long	L158
	.long	L158
	.long	L158
	.long	L158
	.long	L158
	.long	L158
	.long	L158
	.long	L158
	.long	L158
	.long	L158
	.long	L158
	.long	L158
	.text
	.p2align 4,,10
	.p2align 3
L161:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	jns	L168
L156:
	movl	-4(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L163:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L156
	movl	8(%eax), %edx
	movl	%eax, 40(%esp)
	flds	(%edx)
	fstpl	20(%esp)
	movl	(%eax), %edx
	movl	$LC6, 12(%esp)
	movl	%edx, 16(%esp)
	movl	$2233, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L156
	movl	40(%esp), %eax
	movl	4(%eax), %edx
	movl	%edx, 28(%esp)
	movl	20(%eax), %edx
	movl	%edx, 24(%esp)
	movl	16(%eax), %edx
	movl	%edx, 20(%esp)
	movl	(%eax), %eax
	movl	$LC7, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2234, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L156
	.p2align 4,,10
	.p2align 3
L160:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L156
	movl	8(%eax), %edx
	movl	%eax, 40(%esp)
	movl	%edx, 20(%esp)
	movl	(%eax), %edx
	movl	$LC10, 12(%esp)
	movl	%edx, 16(%esp)
	movl	$2250, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L156
	movl	40(%esp), %eax
	movl	4(%eax), %edx
	movl	%edx, 20(%esp)
	movl	(%eax), %eax
	movl	$LC11, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2251, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L156
	.p2align 4,,10
	.p2align 3
L162:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L156
	movl	8(%eax), %edx
	movl	%eax, 40(%esp)
	movl	(%edx), %edx
	movl	%edx, 20(%esp)
	movl	(%eax), %edx
	movl	$LC8, 12(%esp)
	movl	%edx, 16(%esp)
	movl	$2246, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L156
	movl	40(%esp), %eax
	movl	4(%eax), %edx
	movl	%edx, 28(%esp)
	movl	20(%eax), %edx
	movl	%edx, 24(%esp)
	movl	16(%eax), %edx
	movl	%edx, 20(%esp)
	movl	(%eax), %eax
	movl	$LC7, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2247, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L156
	.p2align 4,,10
	.p2align 3
L158:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L156
	movl	8(%eax), %edx
	movl	%eax, 40(%esp)
	fldl	(%edx)
	fstpl	20(%esp)
	movl	(%eax), %edx
	movl	$LC6, 12(%esp)
	movl	%edx, 16(%esp)
	movl	$2237, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L156
	movl	40(%esp), %eax
	movl	4(%eax), %edx
	movl	%edx, 28(%esp)
	movl	20(%eax), %edx
	movl	%edx, 24(%esp)
	movl	16(%eax), %edx
	movl	%edx, 20(%esp)
	movl	(%eax), %eax
	movl	$LC7, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2238, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L156
	.p2align 4,,10
	.p2align 3
L168:
	movl	8(%eax), %edx
	movl	%eax, 40(%esp)
	movl	(%edx), %edx
	movl	%edx, 20(%esp)
	movl	(%eax), %edx
	movl	$LC8, 12(%esp)
	movl	%edx, 16(%esp)
	movl	$2242, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L156
	movl	40(%esp), %eax
	movl	12(%eax), %edx
	movl	4(%eax), %ebx
	movl	20(%eax), %ecx
	andl	$8, %edx
	movl	%ebx, 32(%esp)
	cmpl	$1, %edx
	movl	%ecx, 28(%esp)
	sbbl	%edx, %edx
	andl	$-2, %edx
	addl	$47, %edx
	movl	%edx, 24(%esp)
	movl	16(%eax), %edx
	movl	%edx, 20(%esp)
	movl	(%eax), %eax
	movl	$LC9, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2243, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE22:
	.section .rdata,"dr"
LC13:
	.ascii "Removed alias %s ('%s')\0"
LC14:
	.ascii "%s is not an alias...\0"
	.text
	.p2align 4
	.def	__ZL15osdfunc_unaliasPK13osdfuncparm_t;	.scl	3;	.type	32;	.endef
__ZL15osdfunc_unaliasPK13osdfuncparm_t:
LFB23:
	.cfi_startproc
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	44(%esp), %eax
	movl	(%eax), %edx
	movl	$1, %eax
	testl	%edx, %edx
	jle	L169
	movl	_osd, %eax
	movl	%ebx, 24(%esp)
	.cfi_offset 3, -20
	movl	1184(%eax), %ebx
	testl	%ebx, %ebx
	je	L171
	movl	44(%esp), %eax
	movl	%edi, 32(%esp)
	cmpl	$1, %edx
	movl	%esi, 28(%esp)
	movl	%ebp, 36(%esp)
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	movl	8(%eax), %eax
	movl	(%eax), %esi
	sete	%al
	movl	%eax, %edi
	.p2align 4
	.p2align 3
L176:
	movl	(%ebx), %ebp
	movl	%esi, (%esp)
	movl	%ebp, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L172
	movl	%edi, %eax
	testb	%al, %al
	jne	L191
L172:
	movl	4(%ebx), %ebx
	testl	%ebx, %ebx
	jne	L176
	movl	28(%esp), %esi
	.cfi_restore 6
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %ebp
	.cfi_restore 5
L171:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	jns	L192
L175:
	movl	24(%esp), %ebx
	.cfi_restore 3
	xorl	%eax, %eax
L169:
	addl	$40, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L192:
	.cfi_def_cfa_offset 44
	.cfi_offset 3, -20
	movl	44(%esp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	$LC14, 12(%esp)
	movl	$517, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	24(%esp), %ebx
	.cfi_restore 3
	xorl	%eax, %eax
	jmp	L169
	.p2align 4,,10
	.p2align 3
L191:
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$4919, 12(%ebx)
	je	L193
	testl	%eax, %eax
	jns	L194
	movl	28(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %ebp
	.cfi_restore 5
	jmp	L175
L193:
	.cfi_restore_state
	testl	%eax, %eax
	jns	L195
L174:
	movl	$57005, 12(%ebx)
	movl	28(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %ebp
	.cfi_restore 5
	jmp	L175
L194:
	.cfi_restore_state
	movl	%ebp, 16(%esp)
	movl	$LC14, 12(%esp)
	movl	$510, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	28(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %ebp
	.cfi_restore 5
	jmp	L175
L195:
	.cfi_restore_state
	movl	8(%ebx), %eax
	movl	%ebp, 16(%esp)
	movl	$LC13, 12(%esp)
	movl	%eax, 20(%esp)
	movl	$506, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L174
	.cfi_endproc
LFE23:
	.p2align 4
	.def	__ZL12pqHeapInsertP9TESSallocP13PriorityQHeapPv;	.scl	3;	.type	32;	.endef
__ZL12pqHeapInsertP9TESSallocP13PriorityQHeapPv:
LFB24:
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
	jle	L197
	movl	4(%edi), %ecx
	testl	%ecx, %ecx
	je	L198
	movl	4(%ebx), %eax
	addl	%edx, %edx
	movl	(%ebx), %ecx
	movl	%edx, 12(%ebx)
	leal	4(,%edx,4), %edx
	movl	%eax, 16(%esp)
	movl	4(%edi), %eax
	cmpl	$__ZL11heapReallocPvS_j.lto_priv.0, %eax
	jne	L199
	movl	%ecx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, 4(%esp)
	movl	%edx, 12(%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 32
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	testl	%eax, %eax
	je	L210
L200:
	movl	12(%ebx), %edx
	movl	4(%ebx), %ecx
	movl	%eax, (%ebx)
	movl	4(%edi), %eax
	leal	8(,%edx,8), %edx
	cmpl	$__ZL11heapReallocPvS_j.lto_priv.0, %eax
	jne	L202
	movl	%ecx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, 4(%esp)
	movl	%edx, 12(%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 32
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	testl	%eax, %eax
	jne	L208
	movl	12(%esp), %edx
	testl	%edx, %edx
	jne	L211
L203:
	testl	%eax, %eax
	je	L204
L208:
	movl	%eax, 4(%ebx)
L197:
	movl	16(%ebx), %edi
	testl	%edi, %edi
	je	L212
	movl	4(%ebx), %edx
	leal	0(,%edi,8), %eax
	movl	4(%edx,%eax), %edx
	movl	%edx, 16(%ebx)
L206:
	movl	(%ebx), %edx
	movl	%edi, (%edx,%esi,4)
	movl	4(%ebx), %edx
	movl	%esi, 4(%edx,%eax)
	movl	4(%ebx), %edx
	movl	%ebp, (%edx,%eax)
	movl	20(%ebx), %eax
	testl	%eax, %eax
	jne	L213
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
L212:
	.cfi_restore_state
	leal	0(,%esi,8), %eax
	movl	%esi, %edi
	jmp	L206
	.p2align 4,,10
	.p2align 3
L213:
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
L199:
	.cfi_restore_state
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	12(%edi), %edx
	movl	%ecx, 12(%esp)
	movl	%edx, (%esp)
	call	*%eax
	testl	%eax, %eax
	jne	L200
	movl	12(%esp), %ecx
	movl	%ecx, (%ebx)
L198:
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
L202:
	.cfi_restore_state
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	12(%edi), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L203
	.p2align 4,,10
	.p2align 3
L204:
	movl	16(%esp), %eax
	movl	%eax, 4(%ebx)
	jmp	L198
	.p2align 4,,10
	.p2align 3
L210:
	movl	12(%esp), %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L211:
	movl	%edx, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE24:
	.p2align 4
	.globl	__ZL8heapFreePvS_.lto_priv.0
	.def	__ZL8heapFreePvS_.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL8heapFreePvS_.lto_priv.0:
LFB29:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	_g_sm_heap, %ecx
	movl	12(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 4
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE29:
	.p2align 4
	.globl	__ZL9heapAllocPvj.lto_priv.0
	.def	__ZL9heapAllocPvj.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL9heapAllocPvj.lto_priv.0:
LFB32:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	_g_sm_heap, %ecx
	movl	12(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 4
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	testl	%eax, %eax
	je	L220
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L220:
	.cfi_restore_state
	movl	12(%esp), %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE32:
	.p2align 4
	.def	__ZL6pqInitP9TESSallocP9PriorityQ.isra.0;	.scl	3;	.type	32;	.endef
__ZL6pqInitP9TESSallocP9PriorityQ.isra.0:
LFB36:
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
	jne	L222
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
	je	L223
	movl	%eax, 8(%esi)
L224:
	movl	12(%esi), %eax
	leal	-4(%ebx,%eax,4), %eax
	movl	%eax, 16(%esp)
	cmpl	%ebx, %eax
	jb	L226
	movl	4(%esi), %edx
	movl	%ebx, %eax
L227:
	movl	%edx, (%eax)
	addl	$4, %edx
	addl	$4, %eax
	cmpl	%eax, 16(%esp)
	jnb	L227
L226:
	movl	16(%esp), %eax
	movl	%ebx, 40(%esp)
	movl	$2016473283, 24(%esp)
	movl	%eax, 44(%esp)
	leal	40(%esp), %eax
	movl	%eax, 20(%esp)
L253:
	leal	40(%ebx), %eax
	movl	%eax, 32(%esp)
	cmpl	16(%esp), %eax
	jnb	L228
	movl	%esi, 36(%esp)
L243:
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
L229:
	comiss	%xmm0, %xmm1
	movl	4(%ebp), %ebx
	leal	4(%ebp), %edi
	movl	%ebx, 8(%esp)
	ja	L236
	ucomiss	%xmm0, %xmm1
	jp	L241
	jne	L241
	movss	28(%esi), %xmm0
	comiss	28(%eax), %xmm0
	jb	L241
L236:
	movl	-4(%ecx), %ebx
	leal	-4(%ecx), %eax
	movl	(%ebx), %edx
	movss	24(%edx), %xmm0
	comiss	%xmm1, %xmm0
	jbe	L233
	jmp	L277
	.p2align 4,,10
	.p2align 3
L279:
	movl	%ecx, %eax
L233:
	ucomiss	%xmm1, %xmm0
	jp	L237
	jne	L237
	movss	28(%edx), %xmm0
	comiss	28(%esi), %xmm0
	jnb	L278
L237:
	movl	-4(%eax), %ebx
	leal	-4(%eax), %ecx
	movl	(%ebx), %edx
	movss	24(%edx), %xmm0
	comiss	%xmm1, %xmm0
	jbe	L279
L232:
	movl	8(%esp), %esi
	movl	%ebx, (%edi)
	movl	%esi, (%ecx)
	cmpl	%ecx, %edi
	jnb	L240
L280:
	movl	12(%esp), %eax
	movl	(%eax), %esi
	movss	24(%esi), %xmm1
L241:
	movl	4(%edi), %eax
	movl	%edi, %ebp
	movl	(%eax), %eax
	movss	24(%eax), %xmm0
	jmp	L229
	.p2align 4,,10
	.p2align 3
L278:
	movl	8(%esp), %esi
	movl	%eax, %ecx
	movl	%ebx, (%edi)
	addl	$4, %eax
	movl	%esi, (%ecx)
	cmpl	%ecx, %edi
	jb	L280
L240:
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
	jl	L258
	movl	%ebx, %edx
	movl	%eax, %ebx
	leal	40(%ebx), %edi
	movl	%edx, %eax
	movl	%edi, 32(%esp)
L242:
	movl	20(%esp), %edi
	movl	%eax, -8(%edi)
	movl	%ebp, -4(%edi)
	movl	16(%esp), %edi
	cmpl	%edi, 32(%esp)
	jb	L243
	movl	36(%esp), %esi
L228:
	leal	4(%ebx), %edx
	cmpl	%edx, 16(%esp)
	jb	L244
	movl	%esi, %ecx
L251:
	movl	(%edx), %ebp
	movl	%edx, %eax
	cmpl	%edx, %ebx
	jnb	L246
	movl	%edx, 8(%esp)
	jmp	L245
	.p2align 4,,10
	.p2align 3
L281:
	ucomiss	%xmm0, %xmm1
	jp	L248
	jne	L248
	movss	28(%edi), %xmm0
	comiss	28(%esi), %xmm0
	jnb	L275
L248:
	movl	%edx, (%eax)
	subl	$4, %eax
	cmpl	%eax, %ebx
	jnb	L275
L245:
	movl	-4(%eax), %edx
	movl	0(%ebp), %esi
	movl	(%edx), %edi
	movss	24(%esi), %xmm1
	movss	24(%edi), %xmm0
	comiss	%xmm1, %xmm0
	jbe	L281
L275:
	movl	8(%esp), %edx
L246:
	movl	%ebp, (%eax)
	addl	$4, %edx
	cmpl	%edx, 16(%esp)
	jnb	L251
	movl	%ecx, %esi
L244:
	movl	20(%esp), %edi
	leal	40(%esp), %ecx
	leal	-8(%edi), %eax
	cmpl	%ecx, %eax
	jb	L252
	movl	-8(%edi), %ebx
	movl	-4(%edi), %edi
	movl	%eax, 20(%esp)
	movl	%edi, 16(%esp)
	jmp	L253
L277:
	movl	%eax, %edx
	movl	%ecx, %eax
	movl	%edx, %ecx
	jmp	L232
L258:
	movl	16(%esp), %edx
	movl	%ebp, 16(%esp)
	movl	%edx, %ebp
	jmp	L242
L252:
	movl	12(%esi), %eax
	movl	$1, 20(%esi)
	movl	%eax, 16(%esi)
	movl	(%esi), %esi
	movl	8(%esi), %ebx
	testl	%ebx, %ebx
	jle	L254
L255:
	movl	%ebx, %edx
	movl	%esi, %eax
	call	__ZL9FloatDownP13PriorityQHeapi
	subl	$1, %ebx
	jne	L255
L254:
	movl	$1, 20(%esi)
	movl	452(%esp), %ebp
	.cfi_restore 5
	movl	$1, %eax
L221:
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
L222:
	.cfi_restore_state
	movl	%edi, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, %ebx
	movl	%eax, 8(%esi)
	xorl	%eax, %eax
	testl	%ebx, %ebx
	je	L221
	movl	%ebp, 452(%esp)
	.cfi_offset 5, -8
	jmp	L224
L223:
	movl	%edi, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE36:
	.p2align 4
	.globl	__ZL21_internal_drawosdchariicii.lto_priv.0
	.def	__ZL21_internal_drawosdchariicii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL21_internal_drawosdchariicii.lto_priv.0:
LFB37:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movzbl	40(%esp), %eax
	movl	$0, 20(%esp)
	movl	$-1, 12(%esp)
	movb	%al, 26(%esp)
	leal	26(%esp), %eax
	movl	%eax, 16(%esp)
	movswl	__ZL13whiteColorIdx, %eax
	movb	$0, 27(%esp)
	movl	%eax, 8(%esp)
	movl	36(%esp), %eax
	leal	4(,%eax,8), %eax
	movl	%eax, 4(%esp)
	movl	32(%esp), %eax
	leal	4(,%eax,8), %eax
	movl	%eax, (%esp)
	call	_printext256
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE37:
	.p2align 4
	.globl	__ZL20_internal_drawosdstriiPKciii.lto_priv.0
	.def	__ZL20_internal_drawosdstriiPKciii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL20_internal_drawosdstriiPKciii.lto_priv.0:
LFB39:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	$1023, %eax
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$1048, %esp
	.cfi_def_cfa_offset 1064
	movl	1076(%esp), %ebx
	movl	1072(%esp), %esi
	leal	24(%esp), %edi
	movl	%edi, (%esp)
	cmpl	%eax, %ebx
	movl	%esi, 4(%esp)
	cmovg	%eax, %ebx
	movl	%ebx, 8(%esp)
	call	_memcpy
	movl	_osd, %edx
	movb	$0, 24(%esp,%ebx)
	movl	20(%edx), %eax
	cmpl	%eax, %esi
	jb	L286
	leal	32768(%eax), %ecx
	cmpl	%ecx, %esi
	jnb	L286
	subl	%eax, %esi
	movl	24(%edx), %eax
	movzbl	(%eax,%esi), %eax
	andb	$31, %al
	movl	%eax, 1084(%esp)
L286:
	movl	__ZL13whiteColorIdx, %eax
	testl	%eax, %eax
	js	L288
	movzbl	1084(%esp), %edx
	movl	_palookup(,%edx,4), %edx
	movzbl	(%edx,%eax), %eax
L288:
	cwtl
	movl	%edi, 16(%esp)
	movl	%eax, 8(%esp)
	movl	1068(%esp), %eax
	movl	$0, 20(%esp)
	leal	4(,%eax,8), %eax
	movl	$-1, 12(%esp)
	movl	%eax, 4(%esp)
	movl	1064(%esp), %eax
	leal	4(,%eax,8), %eax
	movl	%eax, (%esp)
	call	_printext256
	addl	$1048, %esp
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
	.cfi_endproc
LFE39:
	.p2align 4
	.globl	__ZL23_internal_drawosdcursoriiii.lto_priv.0
	.def	__ZL23_internal_drawosdcursoriiii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL23_internal_drawosdcursoriiii.lto_priv.0:
LFB41:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	$95, %eax
	movl	56(%esp), %edx
	movw	%ax, 26(%esp)
	testl	%edx, %edx
	je	L291
	movb	$35, 26(%esp)
L291:
	movl	__ZL13whiteColorIdx, %eax
	testl	%eax, %eax
	jns	L306
	movl	%ebp, 40(%esp)
	xorl	%ecx, %ecx
	movl	%esi, 32(%esp)
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	$256, %esi
	movl	%edi, 36(%esp)
	.cfi_offset 7, -12
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L292:
	movzbl	_curpalette(,%ecx,4), %eax
	subl	$188, %eax
/APP
 # 387 "source/build/src/osd.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movzbl	_curpalette+1(,%ecx,4), %eax
	subl	$220, %eax
/APP
 # 388 "source/build/src/osd.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%eax, %edx
	movzbl	_curpalette+2(,%ecx,4), %eax
	subl	$252, %eax
/APP
 # 389 "source/build/src/osd.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%edx, %eax
	cmpl	%esi, %eax
	cmovl	%eax, %esi
	movl	$1, %eax
	cmovl	%ecx, %ebp
	cmovl	%eax, %edi
	addl	$1, %ecx
	cmpl	$256, %ecx
	jne	L292
	movl	%edi, %eax
	testb	%al, %al
	je	L305
	movl	32(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	36(%esp), %edi
	.cfi_restore 7
	movl	%ebp, __ZL13whiteColorIdx
	movl	40(%esp), %ebp
	.cfi_restore 5
	addl	$44, %esp
	.cfi_def_cfa_offset 4
	ret
L305:
	.cfi_restore_state
	movl	32(%esp), %esi
	.cfi_restore 6
	movl	36(%esp), %edi
	.cfi_restore 7
	movl	40(%esp), %ebp
	.cfi_restore 5
	addl	$44, %esp
	.cfi_def_cfa_offset 4
	ret
L306:
	.cfi_def_cfa_offset 48
	cwtl
	leal	26(%esp), %edx
	movl	$0, 20(%esp)
	movl	%eax, 8(%esp)
	movl	52(%esp), %eax
	movl	%edx, 16(%esp)
	leal	6(,%eax,8), %eax
	movl	$-1, 12(%esp)
	movl	%eax, 4(%esp)
	movl	48(%esp), %eax
	leal	4(,%eax,8), %eax
	movl	%eax, (%esp)
	call	_printext256
	addl	$44, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE41:
	.p2align 4
	.def	__ZL9osd_cleari;	.scl	3;	.type	32;	.endef
__ZL9osd_cleari:
LFB43:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ebx, -12(%ebp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	_osd, %eax
	movl	%edi, -4(%ebp)
	movl	$32768, 8(%esp)
	movl	$32, 4(%esp)
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	.cfi_offset 7, -12
	call	_memset
	movl	_osd, %edx
	movl	$32768, 8(%esp)
	movl	1132(%edx), %eax
	sall	$5, %eax
	addl	1136(%edx), %eax
	movl	%eax, 4(%esp)
	movl	24(%edx), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	_osd, %eax
	movl	$1, 32(%eax)
	addl	$8, %eax
	movl	%eax, (%esp)
	call	_SDL_AtomicLock
	movl	_osd, %eax
	movl	$0, 12(%eax)
	testl	%ebx, %ebx
	jne	L317
L308:
	addl	$8, %eax
	movl	%eax, (%esp)
	call	_SDL_AtomicUnlock
	movl	-12(%ebp), %ebx
	movl	-4(%ebp), %edi
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
L317:
	.cfi_restore_state
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	movl	(%eax), %esi
	movl	$-1, %eax
	xorl	%ebx, %ebx
	movl	%eax, 4(%esi)
	movl	%eax, 8(%esi)
	movl	$0, 12(%esi)
	.p2align 4
	.p2align 3
L309:
	movl	(%esi), %eax
	movl	_g_sm_heap, %ecx
	movl	(%eax,%ebx), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	movl	(%esi), %eax
	subl	$4, %esp
	movl	$0, (%eax,%ebx)
	addl	$4, %ebx
	cmpl	$4096, %ebx
	jne	L309
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L310:
	movl	(%esi), %edx
	movl	$0, (%edx,%eax)
	addl	$4, %eax
	cmpl	$4096, %eax
	jne	L310
	movl	_osd, %eax
	movl	-8(%ebp), %esi
	.cfi_restore 6
	jmp	L308
	.cfi_endproc
LFE43:
	.p2align 4
	.def	__ZL13osdfunc_clearPK13osdfuncparm_t;	.scl	3;	.type	32;	.endef
__ZL13osdfunc_clearPK13osdfuncparm_t:
LFB45:
	.cfi_startproc
	movl	$1, %eax
	call	__ZL9osd_cleari
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE45:
	.section .rdata,"dr"
LC16:
	.ascii "%.*s\0"
	.text
	.p2align 4
	.globl	__Z6mi_logPKcPv
	.def	__Z6mi_logPKcPv;	.scl	2;	.type	32;	.endef
__Z6mi_logPKcPv:
LFB46:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	testl	%ebx, %ebx
	je	L319
	cmpb	$10, (%ebx)
	je	L319
	movl	%ebx, (%esp)
	call	_strlen
	testl	%eax, %eax
	jne	L322
	jmp	L324
	.p2align 4
	.p2align 4,,10
	.p2align 3
L323:
	subl	$1, %eax
	je	L321
L322:
	cmpb	$10, -1(%ebx,%eax)
	je	L323
L321:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$7, %edx
	jg	L332
L319:
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L332:
	.cfi_restore_state
	movl	%ebx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC16, 12(%esp)
	movl	$780, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$8, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
L324:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	L321
	.cfi_endproc
LFE46:
	.p2align 4
	.def	__Z20OSD_UpdateDrawBufferb;	.scl	3;	.type	32;	.endef
__Z20OSD_UpdateDrawBufferb:
LFB48:
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
	movl	%edi, %ecx
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	movl	_osd, %eax
	testb	%cl, %cl
	je	L334
	movl	(%eax), %ebx
	movl	12(%ebx), %edx
	testl	%edx, %edx
	je	L333
	cmpl	$1024, %edx
	je	L342
	movl	12(%eax), %ecx
	movl	%eax, %esi
	cmpl	%edx, %ecx
	je	L333
L340:
	movl	%edx, 20(%esp)
	movl	(%ebx), %ebx
	movl	%eax, %edx
	movl	%edi, %eax
	movb	%al, 27(%esp)
	movl	(%ebx,%ecx,4), %ebp
	.p2align 4
	.p2align 3
L355:
	addl	$1, %ecx
	movl	%edx, 16(%esp)
	andl	$1023, %ecx
	movl	%ecx, 12(%edx)
	movl	1136(%esi), %eax
	movl	1132(%esi), %edi
	movzbl	0(%ebp), %ebx
	movl	%eax, 12(%esp)
	.p2align 4
	.p2align 3
L354:
	cmpb	$10, %bl
	je	L357
	cmpb	$13, %bl
	je	L357
	cmpb	$94, %bl
	je	L370
L348:
	movl	20(%esi), %edx
	movl	28(%esi), %eax
	movb	%bl, (%edx,%eax)
	movl	%edi, %eax
	movl	24(%esi), %edx
	movl	28(%esi), %ecx
	sall	$5, %eax
	addb	12(%esp), %al
	movb	%al, (%edx,%ecx)
	movl	28(%esi), %eax
	addl	$1, %eax
	cmpl	1148(%esi), %eax
	je	L353
	movl	%eax, 28(%esi)
L347:
	movl	%ebp, %ebx
L346:
	leal	1(%ebx), %ebp
	movzbl	1(%ebx), %ebx
	testb	%bl, %bl
	jne	L354
	movl	16(%esp), %edx
	movl	(%edx), %eax
	movl	12(%edx), %ecx
	movl	(%eax), %eax
	movl	(%eax,%ecx,4), %ebp
	cmpl	%ecx, 20(%esp)
	jne	L355
	cmpb	$0, 27(%esp)
	je	L371
L333:
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
L357:
	.cfi_restore_state
	movl	$0, 28(%esi)
	cmpb	$13, 0(%ebp)
	je	L347
L368:
	movl	_osd, %ebx
	movl	$32768, %ecx
	movl	1148(%ebx), %edx
	movl	20(%ebx), %eax
	subl	%edx, %ecx
	movl	%eax, 4(%esp)
	addl	%edx, %eax
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	_memmove
	movl	1148(%ebx), %eax
	movl	$32, 4(%esp)
	movl	%eax, 8(%esp)
	movl	20(%ebx), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	1148(%ebx), %edx
	movl	24(%ebx), %eax
	movl	$32768, %ecx
	subl	%edx, %ecx
	movl	%eax, 4(%esp)
	addl	%edx, %eax
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	_memmove
	movl	1148(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	1136(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebx), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	32(%ebx), %eax
	cmpl	36(%ebx), %eax
	jge	L347
	addl	$1, %eax
	movl	%eax, 32(%ebx)
	jmp	L347
	.p2align 4,,10
	.p2align 3
L370:
	movzbl	1(%ebp), %eax
	leal	-48(%eax), %edx
	cmpl	$9, %edx
	ja	L349
	movzbl	2(%ebp), %eax
	subl	$48, %eax
	cmpl	$9, %eax
	jbe	L350
	xorl	%edx, %edx
	leal	1(%ebp), %ebx
	movw	%dx, 29(%esp)
	movzbl	1(%ebp), %eax
	movb	%al, 29(%esp)
L369:
	leal	29(%esp), %eax
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_strtol
	movl	%eax, 12(%esp)
	jmp	L346
	.p2align 4,,10
	.p2align 3
L349:
	movl	%eax, (%esp)
	call	*__imp__toupper
	cmpl	$83, %eax
	je	L372
	cmpl	$79, %eax
	jne	L348
	movl	1136(%esi), %eax
	movl	1132(%esi), %edi
	leal	1(%ebp), %ebx
	movl	%eax, 12(%esp)
	jmp	L346
	.p2align 4,,10
	.p2align 3
L353:
	movl	$0, 28(%esi)
	jmp	L368
	.p2align 4,,10
	.p2align 3
L350:
	xorl	%eax, %eax
	movb	$0, 31(%esp)
	leal	2(%ebp), %ebx
	movw	%ax, 29(%esp)
	movzbl	1(%ebp), %eax
	movb	%al, 29(%esp)
	movzbl	2(%ebp), %eax
	movb	%al, 30(%esp)
	jmp	L369
	.p2align 4,,10
	.p2align 3
L372:
	movzbl	2(%ebp), %eax
	leal	2(%ebp), %ebx
	leal	-48(%eax), %edx
	cmpl	$9, %edx
	cmovbe	%eax, %edi
	jmp	L346
L334:
	leal	8(%eax), %ebp
	movl	%eax, 12(%esp)
	movl	%ebp, (%esp)
	call	_SDL_AtomicLock
	movl	12(%esp), %eax
	movl	(%eax), %ebx
	movl	12(%ebx), %edx
	testl	%edx, %edx
	je	L341
	movl	_osd, %esi
	cmpl	$1024, %edx
	je	L373
	movl	12(%eax), %ecx
	cmpl	%edx, %ecx
	jne	L340
L341:
	movl	%ebp, (%esp)
	call	_SDL_AtomicUnlock
L374:
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
L371:
	.cfi_restore_state
	leal	8(%edx), %ebp
	movl	%ebp, (%esp)
	call	_SDL_AtomicUnlock
	jmp	L374
L373:
	movl	8(%ebx), %edx
	movl	12(%eax), %ecx
	cmpl	%edx, %ecx
	jne	L340
	jmp	L341
	.p2align 4,,10
	.p2align 3
L342:
	movl	8(%ebx), %edx
	movl	12(%eax), %ecx
	cmpl	%edx, %ecx
	je	L333
	movl	%eax, %esi
	jmp	L340
	.cfi_endproc
LFE48:
	.p2align 4
	.def	__ZL14osd_findsymbolPKcP7_symbol;	.scl	3;	.type	32;	.endef
__ZL14osd_findsymbolPKcP7_symbol:
LFB50:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	_osd, %ecx
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -16
	movl	1184(%ecx), %ebx
	testl	%ebx, %ebx
	je	L375
	movl	%eax, (%esp)
	testl	%edx, %edx
	movl	%esi, 16(%esp)
	cmovne	%edx, %ebx
	.cfi_offset 6, -12
	movl	%eax, %esi
	movl	%edi, 20(%esp)
	.cfi_offset 7, -8
	call	_strlen
	movl	%eax, %edi
	.p2align 4
	.p2align 3
L379:
	cmpl	$57005, 12(%ebx)
	je	L378
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	L378
	movl	%edi, 8(%esp)
	movl	(%ebx), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strncasecmp
	testl	%eax, %eax
	je	L390
L378:
	movl	4(%ebx), %ebx
	testl	%ebx, %ebx
	jne	L379
L390:
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	20(%esp), %edi
	.cfi_restore 7
L375:
	movl	%ebx, %eax
	movl	12(%esp), %ebx
	addl	$24, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE50:
	.section .rdata,"dr"
LC17:
	.ascii "Cvar '%s' is read-only.\0"
LC18:
	.ascii "%f\0"
LC19:
	.ascii "%s %f\0"
LC20:
	.ascii "%lf\0"
LC21:
	.ascii "%s %d\0"
LC22:
	.ascii "%s %s\0"
LC23:
	.ascii "r_pr\0"
	.text
	.p2align 4
	.globl	__Z15osdcmd_cvar_setPK13osdfuncparm_t
	.def	__Z15osdcmd_cvar_setPK13osdfuncparm_t;	.scl	2;	.type	32;	.endef
__Z15osdcmd_cvar_setPK13osdfuncparm_t:
LFB51:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$__ZL7h_cvars, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	andl	$-8, %esp
	subl	$36, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	8(%ebp), %esi
	movl	4(%esi), %edx
	call	_hash_findcase
	movl	_osd, %ecx
	movl	%eax, %edx
	sall	$4, %eax
	addl	1180(%ecx), %eax
	movl	(%eax), %ebx
	movl	12(%ebx), %eax
	testb	$64, %al
	jne	L435
	movl	(%esi), %ecx
	testl	%ecx, %ecx
	je	L436
	andl	$63, %eax
	jmp	*L397(,%eax,4)
	.section .rdata,"dr"
	.align 4
L397:
	.long	L396
	.long	L401
	.long	L399
	.long	L396
	.long	L400
	.long	L396
	.long	L396
	.long	L396
	.long	L399
	.long	L396
	.long	L396
	.long	L396
	.long	L396
	.long	L396
	.long	L396
	.long	L396
	.long	L398
	.long	L396
	.long	L396
	.long	L396
	.long	L396
	.long	L396
	.long	L396
	.long	L396
	.long	L396
	.long	L396
	.long	L396
	.long	L396
	.long	L396
	.long	L396
	.long	L396
	.long	L396
	.long	L396
	.text
L436:
	movl	%edx, %eax
	call	__ZL16osdfunc_printvari.isra.0
L393:
	leal	-8(%ebp), %esp
	xorl	%eax, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
L435:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L393
	movl	(%ebx), %eax
	movl	$LC17, 12(%esp)
	movl	$2269, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L393
L399:
	movl	20(%ebx), %ecx
	movl	16(%ebx), %edx
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%esi), %eax
	movl	%ecx, 28(%esp)
	movl	(%eax), %eax
	movl	%edx, 32(%esp)
	movl	%eax, (%esp)
	call	_strtol
	movl	28(%esp), %ecx
	movl	32(%esp), %edx
	movl	8(%ebx), %esi
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	cmpl	%eax, %edx
	cmovl	%ecx, %edx
	movl	%edx, (%esi)
	movl	12(%ebx), %eax
	movl	%eax, %edx
	andl	$63, %edx
	cmpl	$8, %edx
	jne	L407
	movl	8(%ebx), %eax
	xorl	%edx, %edx
	movl	(%eax), %esi
	testl	%esi, %esi
	setne	%dl
	movl	%edx, (%eax)
	movl	12(%ebx), %eax
L407:
	movl	_osd, %edx
	orb	$32, %ah
	movl	%eax, 12(%ebx)
	movl	3240(%edx), %ecx
	testl	%ecx, %ecx
	jne	L393
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	jns	L437
L403:
	movl	%eax, %edx
	andl	$7168, %edx
	cmpl	$2048, %edx
	je	L409
	cmpl	$4096, %edx
	je	L410
	cmpl	$1024, %edx
	je	L411
	testb	$4, %ah
	je	L393
L411:
	movl	$4, 8(%esp)
	movl	$LC23, 4(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	_strncmp
	testl	%eax, %eax
	jne	L412
	cmpl	$4, _rendmode
	jne	L393
L412:
	movl	$0, 8(%ebp)
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	jmp	__Z17osdcmd_restartvidPK13osdfuncparm_t
L400:
	.cfi_restore_state
	movl	20(%ebx), %edx
	movl	16(%ebx), %ecx
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%esi), %eax
	movl	%edx, 28(%esp)
	movl	(%eax), %eax
	movl	%ecx, 32(%esp)
	movl	%eax, (%esp)
	call	_strtoul
	movl	28(%esp), %edx
	movl	32(%esp), %ecx
	movl	8(%ebx), %esi
	cmpl	%eax, %edx
	cmova	%eax, %edx
	cmpl	%eax, %ecx
	cmovnb	%ecx, %edx
	movl	%edx, (%esi)
	movl	12(%ebx), %eax
	movl	_osd, %edx
	orb	$32, %ah
	movl	%eax, 12(%ebx)
	movl	3240(%edx), %edx
	testl	%edx, %edx
	jne	L393
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L403
	movl	8(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 20(%esp)
	movl	(%ebx), %eax
	movl	$LC21, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2318, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L404
L396:
	movl	8(%ebx), %eax
	movl	$LC20, 4(%esp)
	movl	%eax, 8(%esp)
	movl	8(%esi), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_sscanf
	movl	8(%ebx), %eax
	fldl	(%eax)
	fildl	16(%ebx)
	fcomi	%st(1), %st
	jnb	L438
	fstp	%st(0)
	fildl	20(%ebx)
	fxch	%st(1)
	fcomi	%st(1), %st
	fcmovnb	%st(1), %st
	fstp	%st(1)
	jmp	L405
L438:
	fstp	%st(1)
L405:
	fstpl	(%eax)
	movl	12(%ebx), %eax
	movl	_osd, %edx
	orb	$32, %ah
	movl	%eax, 12(%ebx)
	movl	3240(%edx), %edx
	testl	%edx, %edx
	jne	L393
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L403
	movl	8(%ebx), %eax
	fldl	(%eax)
	fstpl	20(%esp)
	movl	(%ebx), %eax
	movl	$LC19, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2295, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L404
L401:
	movl	8(%ebx), %eax
	movl	$LC18, 4(%esp)
	movl	%eax, 8(%esp)
	movl	8(%esi), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_sscanf
	xorps	%xmm0, %xmm0
	movl	8(%ebx), %eax
	cvtsi2ssl	16(%ebx), %xmm0
	movss	(%eax), %xmm2
	comiss	%xmm2, %xmm0
	jnb	L402
	xorps	%xmm1, %xmm1
	cvtsi2ssl	20(%ebx), %xmm1
	movaps	%xmm1, %xmm0
	cmpless	%xmm2, %xmm0
	andps	%xmm0, %xmm1
	andnps	%xmm2, %xmm0
	orps	%xmm1, %xmm0
L402:
	movss	%xmm0, (%eax)
	movl	12(%ebx), %eax
	movl	_osd, %edx
	orb	$32, %ah
	movl	%eax, 12(%ebx)
	movl	3240(%edx), %ecx
	testl	%ecx, %ecx
	jne	L393
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L403
	movl	8(%ebx), %eax
	flds	(%eax)
	fstpl	20(%esp)
	movl	(%ebx), %eax
	movl	$LC19, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2285, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L404
L398:
	movl	20(%ebx), %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	8(%esi), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebx), %eax
	movl	%eax, (%esp)
	call	_strncpy
	movl	8(%ebx), %edx
	movl	20(%ebx), %eax
	movb	$0, -1(%edx,%eax)
	movl	12(%ebx), %eax
	movl	_osd, %edx
	orb	$32, %ah
	movl	%eax, 12(%ebx)
	movl	3240(%edx), %esi
	testl	%esi, %esi
	jne	L393
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L403
	movl	8(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	(%ebx), %eax
	movl	$LC22, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2328, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L404:
	movl	_osd, %eax
	movl	3240(%eax), %ecx
	testl	%ecx, %ecx
	jne	L393
	movl	12(%ebx), %eax
	jmp	L403
L409:
	xorl	%eax, %eax
	call	__Z19gltexinvalidatetypei
L410:
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L416:
	movl	_texcache+44(,%ebx,4), %eax
	testl	%eax, %eax
	jne	L415
	jmp	L413
	.p2align 4
	.p2align 4,,10
	.p2align 3
L414:
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L413
L415:
	movl	8(%eax), %edx
	testl	%edx, %edx
	jne	L414
	movzwl	34(%eax), %edx
	movl	%edx, %ecx
	orb	$-128, %cl
	andl	$16, %edx
	movw	%cx, 34(%eax)
	je	L414
	movl	4(%eax), %edx
	orw	$128, 34(%edx)
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L415
	.p2align 4
	.p2align 3
L413:
	addl	$1, %ebx
	cmpl	$8192, %ebx
	jne	L416
	movl	$1, %eax
	call	_clearskins
	cmpl	$4, _rendmode
	jne	L393
	call	_polymer_texinvalidate
	jmp	L393
L437:
	movl	8(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 20(%esp)
	movl	(%ebx), %eax
	movl	$LC21, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2309, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L404
	.cfi_endproc
LFE51:
	.p2align 4
	.globl	__ZL11heapReallocPvS_j.lto_priv.0
	.def	__ZL11heapReallocPvS_j.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL11heapReallocPvS_j.lto_priv.0:
LFB27:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	_g_sm_heap, %ecx
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -16
	movl	40(%esp), %ebx
	movl	%esi, 24(%esp)
	.cfi_offset 6, -12
	movl	44(%esp), %esi
	cmpl	$16384, %ebx
	jbe	L462
	testl	%esi, %esi
	je	L463
	movl	%ebx, %eax
	xorl	%edx, %edx
	subl	12(%ecx), %eax
	divl	4(%ecx)
	movl	(%ecx), %edx
	cmpl	%edx, %eax
	jnb	L444
	addl	$1, %eax
	movl	%edi, 28(%esp)
	sall	$4, %eax
	.cfi_offset 7, -8
	movl	%eax, %edi
	cmpl	%esi, %eax
	jb	L445
L451:
	movl	28(%esp), %edi
	.cfi_restore 7
	movl	%ebx, %edx
L439:
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
L444:
	.cfi_restore_state
	movl	$8, %eax
	cmpl	%eax, %esi
	cmovnb	%esi, %eax
	subl	$1, %eax
	shrl	$4, %eax
	cmpl	%edx, %eax
	jb	L464
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
	jb	L450
	movl	%eax, %ecx
	shrl	%ecx
	subl	%ecx, %eax
	cmpl	%eax, %esi
	jb	L450
	leal	(%edx,%ebx), %eax
	testb	$7, %al
	je	L451
L450:
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
	je	L449
	cmpl	%edi, %esi
	movl	%edi, %ecx
	cmovbe	%esi, %ecx
	cmpb	$0, __mi_cpu_has_fsrm
	je	L452
	movl	%ebx, %esi
	movl	%eax, %edi
/APP
 # 2169 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	rep movsb
 # 0 "" 2
/NO_APP
L453:
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
L462:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	movl	%esi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	%eax, %edx
L441:
	testl	%edx, %edx
	jne	L439
	testl	%esi, %esi
	je	L439
	movl	%edi, 28(%esp)
	.cfi_offset 7, -8
L449:
	movl	%esi, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L464:
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
	jmp	L441
	.p2align 4,,10
	.p2align 3
L445:
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
	jmp	L441
	.p2align 4,,10
	.p2align 3
L463:
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 32
	xorl	%edx, %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	jmp	L439
	.p2align 4,,10
	.p2align 3
L452:
	.cfi_offset 7, -8
	movl	%ecx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 12(%esp)
	call	_memcpy
	movl	12(%esp), %edx
	jmp	L453
	.cfi_endproc
LFE27:
	.p2align 4
	.def	__ZL7EdgeLeqP14TESStesselatorP12ActiveRegionS2_;	.scl	3;	.type	32;	.endef
__ZL7EdgeLeqP14TESStesselatorP12ActiveRegionS2_:
LFB73:
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
	je	L485
	movl	16(%ecx), %ecx
	cmpl	%ebx, %edx
	je	L486
	movl	%edx, 4(%esp)
	call	__ZL11tesedgeEvalPK10TESSvertexS1_S1_.lto_priv.0
	movl	4(%esp), %edx
	movl	16(%esi), %ecx
	movl	%ebx, %eax
	fstps	(%esp)
	call	__ZL11tesedgeEvalPK10TESSvertexS1_S1_.lto_priv.0
	xorl	%eax, %eax
	movss	(%esp), %xmm5
	fstps	4(%esp)
	comiss	4(%esp), %xmm5
	setnb	%al
L465:
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
L486:
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
	ja	L487
L474:
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
L485:
	.cfi_restore_state
	movl	16(%esi), %edx
	movss	24(%edx), %xmm0
	cmpl	%ebx, %eax
	je	L488
	movss	24(%eax), %xmm1
	xorps	%xmm3, %xmm3
	movaps	%xmm1, %xmm4
	subss	24(%ebx), %xmm4
	subss	%xmm1, %xmm0
	movaps	%xmm4, %xmm1
	addss	%xmm0, %xmm1
	comiss	%xmm3, %xmm1
	jbe	L474
	movss	28(%eax), %xmm1
L484:
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
L487:
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
	jmp	L465
	.p2align 4,,10
	.p2align 3
L488:
	movl	16(%ecx), %ecx
	movss	24(%ecx), %xmm1
	comiss	%xmm1, %xmm0
	ja	L468
	ucomiss	%xmm0, %xmm1
	jp	L469
	jne	L469
	movss	28(%edx), %xmm2
	comiss	28(%ecx), %xmm2
	jnb	L468
L469:
	movaps	%xmm0, %xmm4
	subss	24(%eax), %xmm4
	subss	%xmm0, %xmm1
	xorps	%xmm3, %xmm3
	movaps	%xmm4, %xmm0
	addss	%xmm1, %xmm0
	comiss	%xmm3, %xmm0
	jbe	L474
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
	jmp	L465
	.p2align 4,,10
	.p2align 3
L468:
	movaps	%xmm1, %xmm4
	subss	24(%ebx), %xmm4
	subss	%xmm1, %xmm0
	xorps	%xmm3, %xmm3
	movaps	%xmm4, %xmm1
	addss	%xmm0, %xmm1
	comiss	%xmm3, %xmm1
	jbe	L474
	movss	28(%ecx), %xmm1
	jmp	L484
	.cfi_endproc
LFE73:
	.section .rdata,"dr"
LC24:
	.ascii "sprite\0"
	.align 4
LC25:
	.ascii "%s:%d: Sprite number out of range (0 .. %d)\0"
LC26:
	.ascii "source/build/src/mhk.cpp\0"
	.align 4
LC27:
	.ascii "%s:%d: Ignoring '%s': missing or invalid sprite number\0"
	.align 4
LC28:
	.ascii "%s:%d: warning: max light count %d exceeded, ignoring further light defs\0"
	.text
	.p2align 4
	.globl	_engineLoadMHK
	.def	_engineLoadMHK;	.scl	2;	.type	32;	.endef
_engineLoadMHK:
LFB75:
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
	andl	$-16, %esp
	subl	$124, %esp
	movl	%eax, 104(%esp)
	movl	$0, 116(%esp)
	movl	$-1, 108(%esp)
	call	_engineClearLightsFromMHK
	testl	%ebx, %ebx
	je	L490
	movl	$1048576, 8(%esp)
	movl	$0, 4(%esp)
	movl	_spriteext, %eax
	movl	%eax, (%esp)
	call	_memset
	movl	$166400, 8(%esp)
	movl	$0, 4(%esp)
	movl	_spritesmooth, %eax
	movl	%eax, (%esp)
	call	_memset
	movl	%ebx, 4(%esp)
	movl	$__ZZ13engineLoadMHKE2fn, (%esp)
	call	_strcpy
	movl	%ebx, %eax
	call	_scriptfile_fromfile
	movl	%eax, 116(%esp)
	movl	%eax, %ebx
L491:
	testl	%ebx, %ebx
	je	L493
	leal	116(%esp), %eax
	movl	$0, 100(%esp)
	movl	%eax, 92(%esp)
	leal	112(%esp), %eax
	movss	92(%esp), %xmm5
	movl	%eax, 92(%esp)
	movss	92(%esp), %xmm6
	unpcklps	%xmm6, %xmm5
	movlps	%xmm5, 92(%esp)
	.p2align 4
	.p2align 3
L494:
	movl	%ebx, %eax
	call	_scriptfile_gettoken
	movl	%eax, %edi
	testl	%eax, %eax
	je	L498
	xorl	%esi, %esi
	movl	$LC24, %eax
	jmp	L500
	.p2align 4,,10
	.p2align 3
L588:
	addl	$1, %esi
	movl	__ZZ13engineLoadMHKE11legaltokens(,%esi,8), %eax
	testl	%eax, %eax
	je	L499
L500:
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L588
L499:
	movl	8(%ebx), %eax
	movl	%eax, 112(%esp)
	cmpb	$0, __ZGVZ13engineLoadMHKE14ignoreThisShit
	jne	L501
	movlps	92(%esp), %xmm4
	movb	$1, __ZGVZ13engineLoadMHKE14ignoreThisShit
	movlps	%xmm4, __ZZ13engineLoadMHKE14ignoreThisShit
L501:
	movl	104(%esp), %ecx
	movl	__ZZ13engineLoadMHKE11legaltokens+4(,%esi,8), %eax
	testl	%ecx, %ecx
	je	L589
	cmpl	$15, %eax
	ja	L494
	jmp	*L504(,%eax,4)
	.section .rdata,"dr"
	.align 4
L504:
	.long	L519
	.long	L518
	.long	L517
	.long	L516
	.long	L515
	.long	L514
	.long	L513
	.long	L512
	.long	L511
	.long	L510
	.long	L509
	.long	L508
	.long	L507
	.long	L506
	.long	L505
	.long	L503
	.text
	.p2align 4,,10
	.p2align 3
L589:
	cmpl	$15, %eax
	jne	L494
L503:
	movl	100(%esp), %eax
	testl	%eax, %eax
	jne	L494
	leal	120(%esp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getnumber
	movl	116(%esp), %eax
	leal	120(%esp), %edx
	movl	120(%esp), %edi
	call	_scriptfile_getnumber
	movss	120(%esp), %xmm0
	movl	116(%esp), %eax
	leal	120(%esp), %edx
	movss	%xmm0, 36(%esp)
	call	_scriptfile_getnumber
	movss	120(%esp), %xmm2
	movl	116(%esp), %eax
	leal	120(%esp), %edx
	movss	%xmm2, 40(%esp)
	call	_scriptfile_getnumber
	movss	120(%esp), %xmm1
	movl	116(%esp), %eax
	leal	120(%esp), %edx
	movss	%xmm1, 44(%esp)
	call	_scriptfile_getnumber
	movl	120(%esp), %eax
	leal	120(%esp), %edx
	movl	%eax, 80(%esp)
	movl	116(%esp), %eax
	call	_scriptfile_getnumber
	movl	120(%esp), %eax
	leal	120(%esp), %edx
	movl	%eax, 76(%esp)
	movl	116(%esp), %eax
	call	_scriptfile_getnumber
	movl	120(%esp), %eax
	leal	120(%esp), %edx
	movl	%eax, 72(%esp)
	movl	116(%esp), %eax
	call	_scriptfile_getnumber
	movl	120(%esp), %eax
	leal	120(%esp), %edx
	movl	%eax, 68(%esp)
	movl	116(%esp), %eax
	call	_scriptfile_getnumber
	movl	120(%esp), %eax
	leal	120(%esp), %edx
	movl	%eax, 88(%esp)
	movl	116(%esp), %eax
	call	_scriptfile_getnumber
	movl	120(%esp), %eax
	leal	120(%esp), %edx
	movl	%eax, 64(%esp)
	movl	116(%esp), %eax
	call	_scriptfile_getnumber
	movl	120(%esp), %eax
	leal	120(%esp), %edx
	movl	%eax, 60(%esp)
	movl	116(%esp), %eax
	call	_scriptfile_getnumber
	movss	120(%esp), %xmm3
	movl	116(%esp), %eax
	leal	120(%esp), %edx
	movss	%xmm3, 48(%esp)
	call	_scriptfile_getnumber
	movl	120(%esp), %eax
	leal	120(%esp), %edx
	movl	%eax, 56(%esp)
	movl	116(%esp), %eax
	call	_scriptfile_getnumber
	movl	120(%esp), %eax
	leal	120(%esp), %edx
	movl	%eax, 52(%esp)
	movl	116(%esp), %eax
	call	_scriptfile_getnumber
	movl	120(%esp), %eax
	leal	120(%esp), %edx
	movl	%eax, 84(%esp)
	movl	116(%esp), %eax
	call	_scriptfile_getsymbol
	cmpl	$4, _rendmode
	movss	48(%esp), %xmm3
	movss	44(%esp), %xmm1
	movss	40(%esp), %xmm2
	movss	36(%esp), %xmm0
	jne	L575
	cmpw	$1024, __ZL15maphacklightcnt.lto_priv.0
	je	L590
	cmpl	$1023, _lightcount
	jg	L575
	movzbl	84(%esp), %eax
	cmpl	_pr_maxlightpriority, %eax
	jg	L575
	movl	_pr_lighting, %eax
	testl	%eax, %eax
	je	L575
	cmpw	$-1, %di
	je	L575
	cmpw	_numsectors, %di
	jge	L575
	xorl	%ebx, %ebx
	jmp	L558
	.p2align 5
	.p2align 4,,10
	.p2align 3
L591:
	addl	$1, %ebx
	cmpl	$1024, %ebx
	je	L575
L558:
	imull	$270, %ebx, %ecx
	testb	$1, _prlights+254(%ecx)
	jne	L591
	unpcklps	%xmm3, %xmm1
	unpcklps	%xmm2, %xmm0
	leal	_prlights(%ecx), %eax
	movl	120(%esp), %esi
	movlhps	%xmm1, %xmm0
	movups	%xmm0, _prlights(%ecx)
	movl	80(%esp), %ecx
	movl	%esi, %edx
	movw	%di, 26(%eax)
	movl	%ecx, 16(%eax)
	movzwl	60(%esp), %ecx
	movw	%si, 34(%eax)
	movw	%cx, 20(%eax)
	movzwl	64(%esp), %ecx
	movw	%cx, 22(%eax)
	movzwl	88(%esp), %ecx
	movw	%cx, 24(%eax)
	movzbl	76(%esp), %ecx
	movb	%cl, 28(%eax)
	movzbl	72(%esp), %ecx
	movb	%cl, 29(%eax)
	movzbl	68(%esp), %ecx
	movb	%cl, 30(%eax)
	movzbl	84(%esp), %ecx
	movb	%cl, 31(%eax)
	movzbl	56(%esp), %ecx
	movb	%cl, 32(%eax)
	movzbl	52(%esp), %ecx
	movb	%cl, 33(%eax)
	movl	$-1, %ecx
	movw	%cx, 36(%eax)
	movzbl	38(%eax), %ecx
	andl	$-4, %ecx
	orl	$1, %ecx
	movb	%cl, 38(%eax)
	cmpw	$0, 88(%esp)
	jne	L592
L559:
	imull	$270, %ebx, %edi
	movl	%ebx, %esi
	movzbl	_prlights+254(%edi), %eax
	movl	$0, _prlights+266(%edi)
	movl	$0, _prlights+262(%edi)
	andl	$-8, %eax
	orl	$1, %eax
	movb	%al, _prlights+254(%edi)
	movswl	%bx, %eax
	call	_polymer_culllight.lto_priv.0
	testl	%eax, %eax
	je	L562
	orb	$2, _prlights+254(%edi)
L562:
	movswl	__ZL15maphacklightcnt.lto_priv.0, %eax
	addl	$1, _lightcount
	leal	1(%eax), %edx
	movw	%si, __ZL12maphacklight.lto_priv.0(%eax,%eax)
	movw	%dx, __ZL15maphacklightcnt.lto_priv.0
	jmp	L575
	.p2align 4,,10
	.p2align 3
L498:
	movl	%ebx, %eax
	call	_scriptfile_close
	xorl	%eax, %eax
L489:
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
L505:
	.cfi_restore_state
	movl	108(%esp), %eax
	testl	%eax, %eax
	js	L578
	sall	$6, %eax
	xorl	%edx, %edx
	addl	_spriteext, %eax
	andw	$-16, 12(%eax)
	movw	%dx, 20(%eax)
	movl	$0, 24(%eax)
	movl	$0, 28(%eax)
	movl	$0, 32(%eax)
	movl	$0, 36(%eax)
	movl	$0, 40(%eax)
	movl	$0, 44(%eax)
	movl	$0, 48(%eax)
	jmp	L494
L512:
	leal	120(%esp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L575
	movl	108(%esp), %eax
	testl	%eax, %eax
	js	L580
	movl	120(%esp), %edx
	sall	$6, %eax
	addl	_spriteext, %eax
	movl	116(%esp), %ebx
	movl	%edx, 32(%eax)
	jmp	L494
L508:
	leal	120(%esp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L575
	movl	108(%esp), %eax
	testl	%eax, %eax
	js	L580
	movl	120(%esp), %edx
	sall	$6, %eax
	addl	_spriteext, %eax
	movl	116(%esp), %ebx
	movl	%edx, 48(%eax)
	jmp	L494
L509:
	leal	120(%esp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L575
	movl	108(%esp), %eax
	testl	%eax, %eax
	js	L580
	movl	120(%esp), %edx
	sall	$6, %eax
	addl	_spriteext, %eax
	movl	116(%esp), %ebx
	movl	%edx, 44(%eax)
	jmp	L494
L516:
	movl	108(%esp), %eax
	testl	%eax, %eax
	js	L578
	sall	$6, %eax
	addl	_spriteext, %eax
	orw	$2, 12(%eax)
	jmp	L494
L517:
	movl	108(%esp), %eax
	testl	%eax, %eax
	js	L578
	sall	$6, %eax
	addl	_spriteext, %eax
	orw	$1, 12(%eax)
	jmp	L494
L518:
	leal	120(%esp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L575
	movl	108(%esp), %eax
	testl	%eax, %eax
	js	L580
	movl	120(%esp), %edx
	sall	$6, %eax
	addl	_spriteext, %eax
	movl	116(%esp), %ebx
	movw	%dx, 20(%eax)
	jmp	L494
L519:
	movl	%ebx, %eax
	leal	108(%esp), %edx
	call	_scriptfile_getnumber
	movl	116(%esp), %esi
	movl	%esi, %ebx
	testl	%eax, %eax
	jne	L494
	cmpl	$16383, 108(%esp)
	jbe	L494
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jge	L593
L520:
	movl	$-1, 108(%esp)
	movl	%esi, %ebx
	jmp	L494
L514:
	leal	120(%esp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L575
	movl	108(%esp), %eax
	testl	%eax, %eax
	js	L580
	movl	120(%esp), %edx
	sall	$6, %eax
	addl	_spriteext, %eax
	movl	116(%esp), %ebx
	movw	%dx, 26(%eax)
	jmp	L494
L515:
	leal	120(%esp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L575
	movl	108(%esp), %eax
	testl	%eax, %eax
	js	L580
	movl	120(%esp), %edx
	sall	$6, %eax
	addl	_spriteext, %eax
	movl	116(%esp), %ebx
	movw	%dx, 24(%eax)
	jmp	L494
L513:
	leal	120(%esp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L575
	movl	108(%esp), %eax
	testl	%eax, %eax
	js	L580
	movl	120(%esp), %edx
	sall	$6, %eax
	addl	_spriteext, %eax
	movl	116(%esp), %ebx
	movl	%edx, 28(%eax)
	jmp	L494
L506:
	movl	108(%esp), %eax
	testl	%eax, %eax
	js	L578
	sall	$6, %eax
	addl	_spriteext, %eax
	orw	$8, 12(%eax)
	jmp	L494
L507:
	movl	108(%esp), %eax
	testl	%eax, %eax
	js	L578
	sall	$6, %eax
	addl	_spriteext, %eax
	orw	$4, 12(%eax)
	jmp	L494
L510:
	leal	120(%esp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L575
	movl	108(%esp), %eax
	testl	%eax, %eax
	js	L580
	movl	120(%esp), %edx
	sall	$6, %eax
	addl	_spriteext, %eax
	movl	116(%esp), %ebx
	movl	%edx, 40(%eax)
	jmp	L494
L511:
	leal	120(%esp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L575
	movl	108(%esp), %eax
	testl	%eax, %eax
	js	L580
	movl	120(%esp), %edx
	sall	$6, %eax
	addl	_spriteext, %eax
	movl	116(%esp), %ebx
	movl	%edx, 36(%eax)
	jmp	L494
L580:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jge	L577
	.p2align 4
	.p2align 3
L575:
	movl	116(%esp), %ebx
	jmp	L494
L578:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L494
L577:
	movl	__ZZ13engineLoadMHKE14ignoreThisShit+4, %eax
	movl	(%eax), %esi
	movl	__ZZ13engineLoadMHKE14ignoreThisShit, %eax
	movl	(%eax), %ebx
	movl	%esi, %edx
	movl	%ebx, %eax
	call	_scriptfile_getlinum
	movl	%esi, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%ebx), %eax
	movl	$LC27, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$147, 8(%esp)
	movl	$LC26, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	116(%esp), %ebx
	jmp	L494
L490:
	cmpb	$0, __ZZ13engineLoadMHKE2fn
	jne	L492
	movl	116(%esp), %ebx
	jmp	L491
L492:
	movl	$__ZZ13engineLoadMHKE2fn, %eax
	call	_scriptfile_fromfile
	movl	%eax, 116(%esp)
	movl	%eax, %ebx
	jmp	L491
L593:
	movl	112(%esp), %edx
	movl	%esi, %eax
	call	_scriptfile_getlinum
	movl	$16383, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%esi), %eax
	movl	$LC25, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$162, 8(%esp)
	movl	$LC26, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	116(%esp), %esi
	jmp	L520
L590:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	116(%esp), %ebx
	movl	$1, 100(%esp)
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L494
	movl	112(%esp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getlinum
	movl	$1024, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%ebx), %eax
	movl	$LC28, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$318, 8(%esp)
	movl	$LC26, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L575
L592:
	movl	%edx, 88(%esp)
	call	_polymer_processspotlight.lto_priv.0
	testw	%si, %si
	jle	L559
	movswl	%si, %edi
	movl	88(%esp), %edx
	cmpb	$63, _picanm+3(%edi,%edi,4)
	ja	L594
L560:
	movl	_waloff(,%edi,4), %esi
	testl	%esi, %esi
	je	L595
L561:
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edi, %eax
	call	_texcache_fetch
	jmp	L559
L493:
	movb	$0, __ZZ13engineLoadMHKE2fn
	movl	$-1, %eax
	jmp	L489
L595:
	movswl	%dx, %eax
	call	_tileLoad
	jmp	L561
L594:
	movl	%edi, %eax
	call	_animateoffs
	leal	(%esi,%eax), %edx
	movswl	%dx, %edi
	jmp	L560
	.cfi_endproc
LFE75:
	.p2align 4
	.globl	__ZL16OSD_CvarModifiedPK9osdcvar_t.lto_priv.0
	.def	__ZL16OSD_CvarModifiedPK9osdcvar_t.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL16OSD_CvarModifiedPK9osdcvar_t.lto_priv.0:
LFB84:
	.cfi_startproc
	movl	_osd, %edx
	testl	%edx, %edx
	je	L599
	movl	%eax, %edx
	movl	(%eax), %eax
	movl	8(%eax), %ecx
	testl	%ecx, %ecx
	je	L599
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	movl	12(%eax), %eax
	movl	%eax, %ebx
	andl	$63, %ebx
	cmpl	$16, %ebx
	je	L600
	ja	L601
	movl	(%ecx), %ecx
	cmpl	%ecx, 8(%edx)
	jne	L600
L602:
	shrl	$13, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	andl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
L601:
	.cfi_restore_state
	fldl	(%ecx)
	fldl	8(%edx)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L600
	je	L602
L600:
	movl	-4(%ebp), %ebx
	movl	$1, %eax
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L599:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE84:
	.p2align 4
	.globl	__ZL15OSD_HistoryPrevv.lto_priv.0
	.def	__ZL15OSD_HistoryPrevv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL15OSD_HistoryPrevv.lto_priv.0:
LFB85:
	.cfi_startproc
	movl	_osd, %edx
	movl	1092(%edx), %eax
	movl	1088(%edx), %ecx
	subl	$1, %eax
	cmpl	%eax, %ecx
	jl	L619
	ret
	.p2align 4,,10
	.p2align 3
L619:
	addl	$1, %ecx
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	44(%edx), %eax
	movl	%ecx, 1088(%edx)
	movl	60(%edx,%ecx,4), %ecx
	movl	$512, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 12(%esp)
	call	_memcpy
	movl	12(%esp), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 4
	leal	44(%edx), %eax
	jmp	__ZL24OSD_AdjustEditorPositionR9osdedit_t
	.cfi_endproc
LFE85:
	.p2align 4
	.globl	__ZL15OSD_HistoryNextv.lto_priv.0
	.def	__ZL15OSD_HistoryNextv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL15OSD_HistoryNextv.lto_priv.0:
LFB86:
	.cfi_startproc
	movl	_osd, %edx
	movl	1088(%edx), %eax
	testl	%eax, %eax
	js	L620
	jne	L622
	xorl	%eax, %eax
	movl	$0, 52(%edx)
	movw	%ax, 56(%edx)
	movzwl	1148(%edx), %eax
	movl	$-1, 1088(%edx)
	subl	$4, %eax
	movw	%ax, 58(%edx)
	ret
	.p2align 4,,10
	.p2align 3
L620:
	ret
	.p2align 4,,10
	.p2align 3
L622:
	subl	$1, %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	44(%edx), %ecx
	movl	%eax, 1088(%edx)
	movl	60(%edx,%eax,4), %eax
	movl	$512, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	movl	%edx, 12(%esp)
	call	_memcpy
	movl	12(%esp), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 4
	leal	44(%edx), %eax
	jmp	__ZL24OSD_AdjustEditorPositionR9osdedit_t
	.cfi_endproc
LFE86:
	.p2align 4
	.globl	__Z17OSD_ResizeDisplayii
	.def	__Z17OSD_ResizeDisplayii;	.scl	2;	.type	32;	.endef
__Z17OSD_ResizeDisplayii:
LFB87:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	_osd, %ecx
	movl	3248(%ecx), %eax
	movl	12(%eax), %eax
	cmpl	$__ZL24_internal_getcolumnwidthi.lto_priv.0, %eax
	jne	L626
	testl	%ebx, %ebx
	leal	7(%ebx), %eax
	cmovns	%ebx, %eax
	movl	%ecx, %ebx
	sarl	$3, %eax
	leal	-1(%eax), %edi
L627:
	movl	$32768, %eax
	xorl	%edx, %edx
	movl	%edi, 1148(%ecx)
	idivl	%edi
	movl	%eax, 36(%ecx)
	movl	3248(%ebx), %eax
	movl	16(%eax), %eax
	cmpl	$__ZL22_internal_getrowheighti.lto_priv.0, %eax
	jne	L628
	testl	%esi, %esi
	leal	7(%esi), %eax
	cmovns	%esi, %eax
	sarl	$3, %eax
L629:
	subl	$2, %eax
	movl	__ZL7osdrows, %esi
	movl	%eax, %edx
	movl	%eax, __ZL10osdmaxrows
	sarl	%edx
	testl	%esi, %esi
	je	L631
	cmpl	%esi, %eax
	movl	$1, %edx
	cmovg	%esi, %eax
	cmpl	$1, %esi
	cmovg	%eax, %edx
L631:
	movl	%edx, 1144(%ecx)
	cmpl	$-1, __ZL10osdrowscur.lto_priv.0
	je	L632
	movl	%edx, __ZL10osdrowscur.lto_priv.0
L632:
	xorl	%eax, %eax
	xorl	%edx, %edx
	movl	$0, 28(%ecx)
	movw	%ax, 1152(%ecx)
	movzwl	1148(%ebx), %eax
	movw	%dx, 56(%ebx)
	movl	$-1, __ZL13whiteColorIdx
	subl	$4, %eax
	movw	%ax, 58(%ebx)
	xorl	%eax, %eax
	call	__ZL9osd_cleari
	addl	$8, %esp
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
	jmp	__Z20OSD_UpdateDrawBufferb
	.p2align 4,,10
	.p2align 3
L626:
	.cfi_restore_state
	movl	%ecx, 4(%esp)
	movl	%ebx, (%esp)
	call	*%eax
	movl	_osd, %ebx
	movl	4(%esp), %ecx
	movl	%eax, %edi
	jmp	L627
	.p2align 4,,10
	.p2align 3
L628:
	movl	%ecx, 4(%esp)
	movl	%esi, (%esp)
	call	*%eax
	movl	_osd, %ebx
	movl	4(%esp), %ecx
	jmp	L629
	.cfi_endproc
LFE87:
	.section .rdata,"dr"
LC29:
	.ascii "osdrows\0"
LC30:
	.ascii "osdtextmode\0"
LC31:
	.ascii "osdhistorydepth\0"
	.text
	.p2align 4
	.def	__ZL19osdcmd_cvar_set_osdPK13osdfuncparm_t;	.scl	3;	.type	32;	.endef
__ZL19osdcmd_cvar_set_osdPK13osdfuncparm_t:
LFB88:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -12
	movl	20(%esp), %ebx
	movl	%ebx, (%esp)
	call	__Z15osdcmd_cvar_setPK13osdfuncparm_t
	movl	4(%ebx), %ebx
	movl	$LC29, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L637
	movl	__ZL10osdmaxrows, %edx
	movl	__ZL7osdrows, %ecx
	movl	%edx, %eax
	sarl	%eax
	testl	%ecx, %ecx
	je	L639
	cmpl	%edx, %ecx
	movl	$1, %eax
	cmovle	%ecx, %edx
	cmpl	$1, %ecx
	cmovg	%edx, %eax
L639:
	movl	_osd, %edx
	movl	%eax, 1144(%edx)
	cmpl	$-1, __ZL10osdrowscur.lto_priv.0
	je	L640
	movl	%eax, __ZL10osdrowscur.lto_priv.0
L640:
	movl	8(%esp), %ebx
	xorl	%eax, %eax
	addl	$16, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L637:
	.cfi_restore_state
	movl	$LC30, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L651
	movl	$LC31, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L640
	movl	%esi, 12(%esp)
	.cfi_offset 6, -8
	movl	_osd, %esi
	leal	60(%esi), %ebx
	addl	$1084, %esi
	.p2align 4
	.p2align 3
L645:
	movl	(%ebx), %eax
	movl	_g_sm_heap, %ecx
	addl	$4, %ebx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$0, -4(%ebx)
	cmpl	%esi, %ebx
	jne	L645
	movl	12(%esp), %esi
	.cfi_restore 6
	movl	8(%esp), %ebx
	xorl	%eax, %eax
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
L651:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -12
	movl	_osd, %eax
	xorl	%edx, %edx
	movl	1140(%eax), %ecx
	testl	%ecx, %ecx
	setne	%dl
	movl	%edx, 1140(%eax)
	movl	3248(%eax), %edx
	jne	L652
	cmpl	$__ZL17default_callbacks, %edx
	je	L653
L644:
	cmpl	$200, _qsetmode
	jne	L640
	movl	_ydim, %edx
	movl	_xdim, %eax
	call	__Z17OSD_ResizeDisplayii
	jmp	L640
L652:
	movl	$__ZL17default_callbacks, %ecx
	cmpl	%ecx, %edx
	je	L644
L643:
	movl	%ecx, 3248(%eax)
	jmp	L644
L653:
	movl	$__ZL14user_callbacks.lto_priv.0, %ecx
	jmp	L643
	.cfi_endproc
LFE88:
	.p2align 4
	.globl	__Z16OSD_CaptureInputi
	.def	__Z16OSD_CaptureInputi;	.scl	2;	.type	32;	.endef
__Z16OSD_CaptureInputi:
LFB91:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	leal	0(,%ebx,4), %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	_osd, %edx
	movl	$0, _g_mouseBits
	movl	1172(%edx), %eax
	andl	$-53, %eax
	orl	%ecx, %eax
	testl	%ebx, %ebx
	movl	%eax, 1172(%edx)
	movzbl	_g_mouseLockedToWindow, %eax
	movl	$0, %edx
	cmovne	%edx, %eax
	call	_mouseGrabInput
	movl	_osd, %eax
	movl	3248(%eax), %eax
	movl	28(%eax), %eax
	cmpl	$__Z14SetGamePalettei, %eax
	jne	L665
L656:
	xorl	%eax, %eax
L657:
	movl	$0, _g_keyAsciiFIFO(%eax)
	addl	$16, %eax
	movl	$0, _g_keyAsciiFIFO-12(%eax)
	movl	$0, _g_keyAsciiFIFO-8(%eax)
	movl	$0, _g_keyAsciiFIFO-4(%eax)
	cmpl	$64, %eax
	jb	L657
	movb	$0, _g_keyAsciiEnd
	movb	$0, _g_keyAsciiPos
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L665:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	*%eax
	jmp	L656
	.cfi_endproc
LFE91:
	.p2align 4
	.globl	__Z8OSD_Drawv
	.def	__Z8OSD_Drawv;	.scl	2;	.type	32;	.endef
__Z8OSD_Drawv:
LFB94:
	.cfi_startproc
	movl	_osd, %edx
	testl	%edx, %edx
	je	L735
	subl	$60, %esp
	.cfi_def_cfa_offset 64
	movl	__ZL10osdrowscur.lto_priv.0, %eax
	movl	%ebx, 44(%esp)
	testl	%eax, %eax
	.cfi_offset 3, -20
	je	L741
L668:
	xorl	%eax, %eax
	call	__Z20OSD_UpdateDrawBufferb
	movl	_osd, %eax
	movl	__ZL10osdrowscur.lto_priv.0, %edx
	cmpl	%edx, 1144(%eax)
	je	L742
	movl	%esi, 48(%esp)
	.cfi_offset 6, -16
	jle	L743
	movzbl	1154(%eax), %eax
	cmpl	$-1, %edx
	jl	L672
	cmpb	$1, %al
	je	L672
	cmpl	$-1, %edx
	je	L738
	cmpb	$-1, %al
	je	L673
L738:
	leal	36(%esp), %esi
	.p2align 4
	.p2align 3
L677:
	movl	%esi, %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	$1000, %eax
	imull	40(%esp)
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	48(%esp), %esi
	.cfi_restore 6
	movl	%eax, %edx
	imull	$1000, 36(%esp), %eax
	addl	%edx, %eax
	movl	%eax, __ZL10osdscrtime.lto_priv.0
	movl	_osd, %eax
L670:
	testb	$2, 1172(%eax)
	je	L666
	movl	__ZL10osdrowscur.lto_priv.0, %ebx
	testl	%ebx, %ebx
	je	L666
	movl	%esi, 48(%esp)
	movl	%edi, 52(%esp)
	movl	%ebp, 56(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movzwl	1152(%eax), %esi
	movl	32(%eax), %ebp
	movl	1148(%eax), %edi
	subl	%esi, %ebp
	cmpl	%ebx, %ebp
	cmovg	%ebx, %ebp
	call	_videoBeginDrawing
	movl	_osd, %eax
	movl	3248(%eax), %edx
	movl	20(%edx), %edx
	cmpl	$__ZL25_internal_clearbackgroundii.lto_priv.0, %edx
	jne	L744
L682:
	testl	%ebp, %ebp
	jle	L683
	subl	$1, %ebx
	imull	%edi, %esi
	movl	1148(%eax), %edx
	movl	%ebx, %edi
	subl	%ebp, %edi
	jmp	L684
	.p2align 4,,10
	.p2align 3
L745:
	movl	1136(%eax), %ebp
	movl	3248(%eax), %ecx
	movl	%ebp, 20(%esp)
	movl	1132(%eax), %ebp
	movl	%edx, 12(%esp)
	movl	%ebp, 16(%esp)
	movl	20(%eax), %edx
	movl	%ebx, 4(%esp)
	subl	$1, %ebx
	addl	%esi, %edx
	movl	$0, (%esp)
	movl	%edx, 8(%esp)
	call	*4(%ecx)
	movl	_osd, %eax
	movl	1148(%eax), %edx
	addl	%edx, %esi
	cmpl	%edi, %ebx
	je	L683
L684:
	leal	(%esi,%edx), %ecx
	cmpl	$32768, %ecx
	jle	L745
L683:
	movl	1172(%eax), %edx
	movl	$2, 28(%esp)
	movl	$0, 24(%esp)
	notl	%edx
	andl	$80, %edx
	je	L746
L685:
	movl	1116(%eax), %ebx
	testl	%ebx, %ebx
	je	L747
L686:
	movl	1120(%eax), %edi
	movzwl	1152(%eax), %esi
	movl	32(%eax), %ecx
	movl	3248(%eax), %edx
	movl	%edi, 32(%esp)
	movzwl	%si, %edi
	subl	$1, %ecx
	movl	(%edx), %ebp
	movl	__ZL10osdrowscur.lto_priv.0, %edx
	cmpl	%ecx, %edi
	je	L748
	testw	%si, %si
	je	L689
	cmpl	$__ZL21_internal_drawosdchariicii.lto_priv.0, %ebp
	jne	L690
	movl	$94, %ebp
	movw	%bp, 36(%esp)
L740:
	leal	36(%esp), %eax
	movl	$0, 20(%esp)
	movl	%eax, 16(%esp)
	movswl	__ZL13whiteColorIdx, %eax
	movl	$-1, 12(%esp)
	movl	%eax, 8(%esp)
	leal	4(,%edx,8), %eax
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	_printext256
	movl	_osd, %eax
	movl	__ZL10osdrowscur.lto_priv.0, %edx
L689:
	movl	3248(%eax), %esi
	movl	1172(%eax), %ecx
	movl	%edx, %edi
	movl	1120(%eax), %ebp
	movl	(%esi), %esi
	testb	$64, %cl
	je	L691
	cmpw	$0, 1152(%eax)
	setne	%al
	movzbl	%al, %eax
	cmpl	$__ZL21_internal_drawosdchariicii.lto_priv.0, %esi
	jne	L692
	leal	36(%esp), %ecx
	leal	4(,%edx,8), %edx
	movl	$0, 20(%esp)
	movl	$67, %edi
	movl	%ecx, 16(%esp)
	movswl	__ZL13whiteColorIdx, %ecx
	leal	4(,%eax,8), %eax
	movl	$-1, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movw	%di, 36(%esp)
	call	_printext256
L693:
	movl	_osd, %eax
	movl	__ZL10osdrowscur.lto_priv.0, %edx
	movl	1172(%eax), %ecx
	testb	$16, %cl
	je	L694
	movl	3248(%eax), %esi
	andl	$64, %ecx
	movl	1120(%eax), %ebp
	movl	%edx, %edi
	movl	(%esi), %esi
	je	L706
	cmpw	$1, 1152(%eax)
	movl	$1, %eax
	sbbl	$-1, %eax
L695:
	cmpl	$__ZL21_internal_drawosdchariicii.lto_priv.0, %esi
	jne	L696
	leal	36(%esp), %edx
	leal	4(,%eax,8), %eax
	movl	$0, 20(%esp)
	movl	$72, %esi
	movl	%edx, 16(%esp)
	movswl	__ZL13whiteColorIdx, %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	leal	4(,%edi,8), %edx
	movl	%edx, 4(%esp)
	movl	$-1, 12(%esp)
	movw	%si, 36(%esp)
	call	_printext256
	movl	_osd, %eax
	movl	__ZL10osdrowscur.lto_priv.0, %edx
L694:
	movl	3248(%eax), %ecx
	movl	(%ecx), %ecx
	cmpl	$__ZL21_internal_drawosdchariicii.lto_priv.0, %ecx
	jne	L697
	leal	36(%esp), %eax
	movl	$0, 20(%esp)
	movl	$62, %ecx
	movl	%eax, 16(%esp)
	movswl	__ZL13whiteColorIdx, %eax
	movl	$-1, 12(%esp)
	movl	%eax, 8(%esp)
	leal	4(,%edx,8), %eax
	movl	%eax, 4(%esp)
	movl	28(%esp), %eax
	movw	%cx, 36(%esp)
	leal	4(,%eax,8), %eax
	movl	%eax, (%esp)
	call	_printext256
L698:
	movl	_osd, %eax
	movl	1148(%eax), %edi
	movswl	56(%eax), %edx
	movswl	52(%eax), %ebx
	leal	-4(%edi), %ecx
	movl	24(%esp), %edi
	movl	%edx, %esi
	subl	%edx, %ebx
	subl	%edi, %ecx
	cmpl	%ebx, %ecx
	cmovg	%ebx, %ecx
	movl	%ecx, %ebx
	subl	$1, %ebx
	js	L699
	leal	2(%ecx,%edi), %edi
	jmp	L702
	.p2align 4,,10
	.p2align 3
L750:
	leal	36(%esp), %eax
	movl	$0, 20(%esp)
	movl	%eax, 16(%esp)
	movswl	__ZL13whiteColorIdx, %eax
	movl	$-1, 12(%esp)
	movl	%eax, 8(%esp)
	leal	4(,%ebp,8), %eax
	movl	%eax, 4(%esp)
	leal	4(,%edi,8), %eax
	movl	%eax, (%esp)
	movb	$0, 37(%esp)
	movb	%dl, 36(%esp)
	call	_printext256
L701:
	movl	_osd, %eax
	subl	$1, %ebx
	subl	$1, %edi
	movswl	56(%eax), %edx
	cmpl	$-1, %ebx
	je	L749
L702:
	movl	3248(%eax), %ecx
	movl	44(%eax), %ebp
	movl	(%ecx), %ecx
	addl	%ebx, %ebp
	movzbl	0(%ebp,%edx), %edx
	movl	__ZL10osdrowscur.lto_priv.0, %ebp
	cmpl	$__ZL21_internal_drawosdchariicii.lto_priv.0, %ecx
	je	L750
	movl	1128(%eax), %esi
	movl	%esi, 16(%esp)
	movl	1124(%eax), %eax
	movl	%edx, 8(%esp)
	addl	%eax, %eax
	movl	%ebp, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%edi, (%esp)
	call	*%ecx
	jmp	L701
	.p2align 4,,10
	.p2align 3
L743:
	.cfi_restore 5
	.cfi_restore 7
	cmpl	$-1, %edx
	jl	L672
L673:
	leal	36(%esp), %esi
	movl	%esi, %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	$1000, %eax
	imull	40(%esp)
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	imull	$1000, 36(%esp), %ebx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	subl	__ZL10osdscrtime.lto_priv.0, %ebx
	addl	%eax, %ebx
	jmp	L680
	.p2align 4,,10
	.p2align 3
L681:
	movl	_osd, %eax
	movl	1144(%eax), %eax
	movl	$200, (%esp)
	movl	%eax, 4(%esp)
	call	_tabledivide32.lto_priv.1
	subl	%eax, %ebx
	movl	__ZL10osdrowscur.lto_priv.0, %eax
	subl	$1, %eax
	movl	%eax, __ZL10osdrowscur.lto_priv.0
	testl	%eax, %eax
	jle	L677
L680:
	cmpl	$-1, %ebx
	jne	L681
	jmp	L677
	.p2align 4,,10
	.p2align 3
L672:
	leal	36(%esp), %esi
	movl	%esi, %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	$1000, %eax
	imull	40(%esp)
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	imull	$1000, 36(%esp), %ebx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	subl	__ZL10osdscrtime.lto_priv.0, %ebx
	addl	%eax, %ebx
	jmp	L676
	.p2align 4,,10
	.p2align 3
L678:
	movl	_osd, %eax
	movl	1144(%eax), %eax
	movl	$200, (%esp)
	movl	%eax, 4(%esp)
	call	_tabledivide32.lto_priv.1
	movl	_osd, %edx
	subl	%eax, %ebx
	movl	__ZL10osdrowscur.lto_priv.0, %eax
	addl	$1, %eax
	movl	%eax, __ZL10osdrowscur.lto_priv.0
	cmpl	%eax, 1144(%edx)
	jle	L677
L676:
	cmpl	$-1, %ebx
	jne	L678
	jmp	L677
	.p2align 4,,10
	.p2align 3
L666:
	.cfi_restore 6
	movl	44(%esp), %ebx
	addl	$60, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L742:
	.cfi_restore_state
	movb	$0, 1154(%eax)
	jmp	L670
	.p2align 4,,10
	.p2align 3
L741:
	movl	1172(%edx), %ecx
	movl	%ecx, %eax
	andl	$-3, %ecx
	shrl	%eax
	notl	%eax
	andl	$1, %eax
	leal	(%eax,%eax), %ebx
	orl	%ebx, %ecx
	movl	%ecx, 1172(%edx)
	call	__Z16OSD_CaptureInputi
	jmp	L668
	.p2align 4,,10
	.p2align 3
L748:
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpl	$__ZL21_internal_drawosdchariicii.lto_priv.0, %ebp
	jne	L688
	movl	$126, %eax
	movw	%ax, 36(%esp)
	jmp	L740
	.p2align 4,,10
	.p2align 3
L746:
	xorl	%ecx, %ecx
	cmpw	$0, 1152(%eax)
	setne	%cl
	leal	2(%ecx), %edi
	movl	%ecx, 24(%esp)
	movl	%edi, 28(%esp)
	jmp	L685
	.p2align 4,,10
	.p2align 3
L747:
	leal	36(%esp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	$120, %eax
	imull	40(%esp)
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	%eax, %edx
	imull	$120, 36(%esp), %eax
	addl	%edx, %eax
	sall	$4, %eax
	andl	$2047, %eax
	movzwl	_sintable(%eax,%eax), %ebx
	movl	_osd, %eax
	sarw	$11, %bx
	movswl	%bx, %ebx
	jmp	L686
	.p2align 4,,10
	.p2align 3
L749:
	movswl	%dx, %esi
L699:
	movl	24(%esp), %ecx
	movswl	54(%eax), %edx
	subl	%esi, %ecx
	leal	3(%ecx,%edx), %ebx
	movl	__ZL10osdkeytime.lto_priv.0, %ecx
	movl	3248(%eax), %edx
	movl	%ecx, 12(%esp)
	movl	1172(%eax), %eax
	movl	%ebx, (%esp)
	andl	$8, %eax
	movl	%eax, 8(%esp)
	movl	__ZL10osdrowscur.lto_priv.0, %eax
	movl	%eax, 4(%esp)
	call	*8(%edx)
	movl	_osd, %eax
	movl	1164(%eax), %edx
	testl	%edx, %edx
	je	L703
	movl	3248(%eax), %edx
	movzbl	1170(%eax), %edi
	leal	36(%esp), %eax
	movl	4(%edx), %esi
	call	_enet_gettime.constprop.0.isra.0
	movl	$120, %eax
	imull	40(%esp)
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	_osd, %ecx
	movl	%eax, %edx
	imull	$120, 36(%esp), %eax
	movzbl	1168(%ecx), %ebp
	addl	%edx, %eax
	movl	1148(%ecx), %edx
	movl	%edi, 20(%esp)
	sall	$4, %eax
	andl	$2047, %eax
	subl	%ebp, %edx
	movzwl	_sintable(%eax,%eax), %eax
	movl	%ebp, 12(%esp)
	sarw	$11, %ax
	cwtl
	movl	%eax, 16(%esp)
	movl	1164(%ecx), %eax
	xorl	%ecx, %ecx
	cmpl	%ebx, %edx
	setle	%cl
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	movl	__ZL10osdrowscur.lto_priv.0, %eax
	subl	%ecx, %eax
	movl	%eax, 4(%esp)
	call	*%esi
L703:
	movl	48(%esp), %esi
	.cfi_restore 6
	movl	52(%esp), %edi
	.cfi_restore 7
	movl	56(%esp), %ebp
	.cfi_restore 5
	movl	44(%esp), %ebx
	addl	$60, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	_videoEndDrawing
	.p2align 4,,10
	.p2align 3
L735:
	ret
	.p2align 4,,10
	.p2align 3
L691:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	andl	$16, %ecx
	je	L694
L706:
	movl	$1, %eax
	jmp	L695
	.p2align 4,,10
	.p2align 3
L697:
	movl	1120(%eax), %eax
	movl	%ebx, 12(%esp)
	movl	$62, 8(%esp)
	movl	%eax, 16(%esp)
	movl	28(%esp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*%ecx
	jmp	L698
	.p2align 4,,10
	.p2align 3
L744:
	movl	__ZL10osdrowscur.lto_priv.0, %ecx
	addl	$1, %ecx
	movl	%ecx, 4(%esp)
	movl	1148(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	_osd, %eax
	jmp	L682
	.p2align 4,,10
	.p2align 3
L692:
	movl	%ebp, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	$67, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*%esi
	jmp	L693
	.p2align 4,,10
	.p2align 3
L696:
	movl	%eax, (%esp)
	movl	%ebp, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	$72, 8(%esp)
	movl	%edi, 4(%esp)
	call	*%esi
	movl	_osd, %eax
	movl	__ZL10osdrowscur.lto_priv.0, %edx
	jmp	L694
L688:
	movl	32(%esp), %eax
	movl	%ebx, 12(%esp)
	movl	$126, 8(%esp)
	movl	%eax, 16(%esp)
L739:
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	*%ebp
	movl	_osd, %eax
	movl	__ZL10osdrowscur.lto_priv.0, %edx
	jmp	L689
L690:
	movl	32(%esp), %eax
	movl	%ebx, 12(%esp)
	movl	$94, 8(%esp)
	movl	%eax, 16(%esp)
	jmp	L739
	.cfi_endproc
LFE94:
	.p2align 4
	.globl	__Z8OSD_PutsPKc
	.def	__Z8OSD_PutsPKc;	.scl	2;	.type	32;	.endef
__Z8OSD_PutsPKc:
LFB99:
	.cfi_startproc
	cmpb	$0, (%eax)
	je	L798
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%edi, 24(%esp)
	.cfi_offset 7, -12
	movl	_osd, %edi
	testl	%edi, %edi
	je	L751
	movl	%ebx, 16(%esp)
	movl	%fs:44, %edx
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	__tls_index, %eax
	movl	%esi, 20(%esp)
	movl	%ebp, 28(%esp)
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	movl	(%edx,%eax,4), %eax
	movl	__mi_heap_default@secrel32(%eax), %ebp
	movl	196(%ebp), %eax
	movl	8(%eax), %esi
	testl	%esi, %esi
	je	L802
	movl	(%esi), %edx
	addw	$1, 16(%eax)
	movl	%edx, 8(%eax)
L755:
	movl	%ebx, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %edx
	movl	%eax, %ebp
	movl	%edx, (%esp)
	movl	%edx, 12(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	testl	%eax, %eax
	je	L756
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 12(%esp)
	call	_strcpy
	movl	12(%esp), %ecx
	leal	4(%edi), %edx
	movb	$0, (%ecx,%ebp)
	movl	$0, (%esi)
	movl	%ecx, 4(%esi)
	movl	$0, 8(%esi)
	movl	4(%edi), %eax
L757:
	movl	%eax, (%esi)
	lock cmpxchgl	%esi, (%edx)
	jne	L757
	.p2align 4
	.p2align 3
L801:
	movl	_osd, %eax
L758:
	leal	4(%eax), %edx
	movl	4(%eax), %eax
L759:
	testl	%eax, %eax
	je	L762
L761:
	movl	(%eax), %ecx
	lock cmpxchgl	%ecx, (%edx)
	movl	%eax, %ebx
	jne	L759
	testl	%eax, %eax
	je	L762
	movl	$1, %edx
	lock xaddl	%edx, 8(%eax)
	testl	%edx, %edx
	jne	L801
	movl	_osd, %esi
	movl	4(%eax), %edi
	movl	1104(%esi), %eax
	testl	%eax, %eax
	je	L768
	movl	1156(%esi), %edx
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	%edx, 8(%esp)
	call	_strncmp
	testl	%eax, %eax
	jne	L768
	movl	__ZZL20OSD_FilterConsoleMsgPPcE8errorCnt, %ecx
	movl	16(%esi), %eax
	leal	1(%ecx), %edx
	movl	%edx, __ZZL20OSD_FilterConsoleMsgPPcE8errorCnt
	cmpl	%edx, %eax
	jnb	L768
	cmpl	%eax, %ecx
	jg	L803
	movl	$56, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	%eax, %edi
	testl	%eax, %eax
	je	L767
	movl	$1663070831, 4(%eax)
	movl	$1953396079, 8(%eax)
	movl	$1668834592, 12(%eax)
	movl	$1701078373, 16(%eax)
	movl	$1864507492, 20(%eax)
	movl	$1869374579, 24(%eax)
	movl	$1953850215, 28(%eax)
	movl	$577136239, 32(%eax)
	movl	$1867259937, 36(%eax)
	movl	$1852401511, 40(%eax)
	movl	$1953701991, 44(%eax)
	movl	$1701867631, 48(%eax)
	movl	$667236, 52(%eax)
	movl	$1920091402, (%eax)
	movl	_osd, %esi
	.p2align 4
	.p2align 3
L768:
	addl	$8, %esi
	movl	%esi, (%esp)
	call	_SDL_AtomicLock
	movl	_osd, %eax
	movl	(%eax), %esi
	cmpl	$1024, 12(%esi)
	je	L804
L769:
	movl	4(%esi), %eax
	xorl	%edx, %edx
	cmpl	$1023, %eax
	je	L770
	movl	12(%esi), %ecx
	leal	1(%eax), %edx
	cmpl	$1023, %ecx
	jg	L770
	addl	$1, %ecx
	movl	%ecx, 12(%esi)
L770:
	movl	8(%esi), %eax
	movl	%edx, 4(%esi)
	cmpl	%eax, %edx
	je	L777
	cmpl	$-1, %eax
	je	L775
L773:
	movl	(%esi), %eax
	movl	%edi, (%eax,%edx,4)
	movl	_osd, %eax
	addl	$8, %eax
	movl	%eax, (%esp)
	call	_SDL_AtomicUnlock
L766:
	movl	%ebx, %eax
	call	_mi_free
	movl	_osd, %eax
	leal	4(%eax), %edx
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	L761
	.p2align 4
	.p2align 3
L762:
	movl	_osd, %eax
	movl	4(%eax), %edx
	testl	%edx, %edx
	jne	L758
	movl	16(%esp), %ebx
	.cfi_restore 3
	movl	20(%esp), %esi
	.cfi_restore 6
	movl	28(%esp), %ebp
	.cfi_restore 5
L751:
	movl	24(%esp), %edi
	addl	$32, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L777:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpl	$-1, %eax
	je	L775
	movl	(%esi), %edx
	movl	_g_sm_heap, %ecx
	movl	(%edx,%eax,4), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 32
	movl	8(%esi), %eax
	movl	4(%esi), %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 36
L775:
	leal	1(%eax), %ecx
	sarl	$31, %ecx
	shrl	$22, %ecx
	leal	1(%eax,%ecx), %eax
	andl	$1023, %eax
	subl	%ecx, %eax
	movl	%eax, 8(%esi)
	jmp	L773
	.p2align 4,,10
	.p2align 3
L798:
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	ret
	.p2align 4,,10
	.p2align 3
L804:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$1, %eax
	call	__Z20OSD_UpdateDrawBufferb
	movl	_osd, %eax
	movl	(%eax), %esi
	jmp	L769
	.p2align 4,,10
	.p2align 3
L803:
	addl	$2, %eax
	movl	%eax, __ZZL20OSD_FilterConsoleMsgPPcE8errorCnt
	jmp	L766
L756:
	movl	12(%esp), %eax
	call	__Z13handle_memerri
L802:
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	movl	$12, %edx
	movl	%ebp, %eax
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L755
	xorl	%ecx, %ecx
	movl	$12, %edx
	movl	%ebp, %eax
	call	__Z15mi_heap_try_newP9mi_heap_sjb
	movl	%eax, %esi
	jmp	L755
L767:
	movl	$56, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE99:
	.p2align 4
	.globl	__Z10OSD_PrintfPKcz
	.def	__Z10OSD_PrintfPKcz;	.scl	2;	.type	32;	.endef
__Z10OSD_PrintfPKcz:
LFB112:
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
	movl	52(%esp), %edi
	movl	%edi, (%esp)
	call	_strlen
	cmpl	$1, %eax
	jbe	L822
	movl	$1, %ebx
	.p2align 3
	.p2align 4
	.p2align 3
L807:
	addl	%ebx, %ebx
	cmpl	%ebx, %eax
	jg	L807
	movl	$16, %eax
	cmpl	%eax, %ebx
	cmovl	%eax, %ebx
L806:
	xorl	%ebp, %ebp
	leal	56(%esp), %esi
	jmp	L810
	.p2align 4,,10
	.p2align 3
L825:
	movl	%esi, 28(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%ebp, (%esp)
	call	*__imp___vsnprintf
	cmpl	%ebx, %eax
	jb	L833
L810:
	addl	%ebx, %ebx
	movl	%ebp, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%ebx, 4(%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 44
	subl	$8, %esp
	.cfi_def_cfa_offset 52
	movl	%eax, %ebp
	testl	%eax, %eax
	jne	L825
	testl	%ebx, %ebx
	je	L825
	movl	%ebx, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L833:
	movl	%eax, 20(%esp)
	movl	%ebp, %eax
	call	__Z8OSD_PutsPKc
	movl	20(%esp), %edx
	cmpb	$10, -1(%ebp,%edx)
	jne	L812
	movb	$0, -1(%ebp,%edx)
L812:
	movl	_osd, %eax
	movl	%edx, 20(%esp)
	movl	1156(%eax), %ebx
	movl	%ebx, 8(%esp)
	movl	1104(%eax), %eax
	movl	%ebp, (%esp)
	movl	%eax, 4(%esp)
	call	_strncmp
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ebx
	movl	20(%esp), %edx
	movb	$0, _g_useLogCallback
	cmpl	$1, %eax
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	sbbl	%ecx, %ecx
	andl	$-2, %ecx
	cmpl	%ebx, %eax
	cmovl	%ebx, %eax
	cmpl	%eax, %ecx
	jle	L834
L814:
	movl	%ebp, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, 20(%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 48
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	movb	$1, _g_useLogCallback
	movl	20(%esp), %eax
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
L822:
	.cfi_restore_state
	movl	$16, %ebx
	jmp	L806
	.p2align 4,,10
	.p2align 3
L834:
	movzbl	0(%ebp), %ebx
	movl	%ebp, %edi
	testb	%bl, %bl
	je	L815
	movl	%ecx, 20(%esp)
	movl	%ebp, %esi
	movl	%edx, 24(%esp)
	jmp	L821
	.p2align 5
	.p2align 4,,10
	.p2align 3
L816:
	movb	%bl, (%edi)
	addl	$1, %esi
	movzbl	(%esi), %ebx
	addl	$1, %edi
L819:
	testb	%bl, %bl
	je	L835
L821:
	cmpb	$94, %bl
	jne	L816
	movzbl	1(%esi), %eax
	leal	-48(%eax), %ecx
	cmpl	$9, %ecx
	jbe	L836
	movl	%eax, (%esp)
	call	*__imp__toupper
	cmpl	$79, %eax
	je	L837
	cmpl	$83, %eax
	jne	L816
	movzbl	2(%esi), %eax
	subl	$48, %eax
	cmpl	$9, %eax
	ja	L816
L832:
	movzbl	3(%esi), %ebx
	addl	$3, %esi
	jmp	L819
	.p2align 4,,10
	.p2align 3
L835:
	movl	20(%esp), %ecx
	movl	24(%esp), %edx
L815:
	movb	$0, (%edi)
	movl	%ebp, 16(%esp)
	movl	$LC4, 12(%esp)
	movl	$1721, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	%ecx, (%esp)
	movl	%edx, 20(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	20(%esp), %edx
	jmp	L814
	.p2align 4,,10
	.p2align 3
L836:
	movzbl	2(%esi), %eax
	movl	%eax, %ebx
	subl	$48, %eax
	cmpl	$9, %eax
	jbe	L832
	addl	$2, %esi
	jmp	L819
L837:
	movzbl	2(%esi), %ebx
	addl	$2, %esi
	jmp	L819
	.cfi_endproc
LFE112:
	.section .rdata,"dr"
	.align 4
LC32:
	.ascii "fileinfo: file '%s' not found.\0"
	.align 4
LC37:
	.ascii "fileinfo: %s\12  File size: %d bytes\12  CRC-32:    %08X (%.1fms)\12  xxHash:    %08X (%.1fms)\12\0"
	.text
	.p2align 4
	.def	__ZL16osdfunc_fileinfoPK13osdfuncparm_t;	.scl	3;	.type	32;	.endef
__ZL16osdfunc_fileinfoPK13osdfuncparm_t:
LFB114:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	movl	$1, %eax
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
	subl	$156, %esp
	movl	(%ecx), %esi
	movl	%esi, -112(%ebp)
	cmpl	$1, (%esi)
	je	L882
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
	.p2align 4,,10
	.p2align 3
L882:
	.cfi_restore_state
	movl	8(%esi), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L840
	xorl	%edx, %edx
	call	_kopen4load.part.0
	movl	%eax, -104(%ebp)
	cmpl	$-1, %eax
	je	L840
	leal	-72(%ebp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	-72(%ebp), %esi
	movl	-68(%ebp), %ebx
	movl	$65536, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -100(%ebp)
	testl	%eax, %eax
	je	L883
	movl	%ebx, %eax
	movl	%ebx, -88(%ebp)
	fildl	-88(%ebp)
	cltd
	testl	%edx, %edx
	js	L884
L844:
	fstpl	-88(%ebp)
	fldl	-88(%ebp)
	fmuls	LC34
	xorl	%ebx, %ebx
	fdivs	LC35
	movl	%esi, -88(%ebp)
	movl	-100(%ebp), %esi
	fildl	-88(%ebp)
	fmuls	LC34
	faddp	%st, %st(1)
	fstpl	-88(%ebp)
	.p2align 4
	.p2align 3
L845:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$65536, %ecx
	movl	%esi, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-104(%ebp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	movl	%ebx, %ecx
	movl	%eax, %edx
	movl	%eax, %edi
	movl	%esi, %eax
	call	_Bcrc32
	movl	%eax, %ebx
	cmpl	$65536, %edi
	je	L845
	movl	%eax, -120(%ebp)
	leal	-72(%ebp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	-68(%ebp), %eax
	fildl	-68(%ebp)
	cltd
	testl	%edx, %edx
	js	L885
L846:
	fstpl	-96(%ebp)
	fldl	-96(%ebp)
	fmuls	LC34
	xorl	%edx, %edx
	fdivs	LC35
	xorl	%ecx, %ecx
	fildl	-72(%ebp)
	fmuls	LC34
	faddp	%st, %st(1)
	fsubl	-88(%ebp)
	fstpl	-128(%ebp)
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-104(%ebp), %eax
	call	__Z15klseek_internaliiiPKhPiS1_
	leal	-72(%ebp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	-68(%ebp), %eax
	fildl	-68(%ebp)
	cltd
	testl	%edx, %edx
	js	L886
L847:
	fstpl	-88(%ebp)
	fldl	-88(%ebp)
	fmuls	LC34
	xorl	%edi, %edi
	fdivs	LC35
	movl	$0, -48(%ebp)
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	movups	LC36, %xmm0
	movl	$0, -44(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	movups	%xmm0, -64(%ebp)
	fildl	-72(%ebp)
	fmuls	LC34
	faddp	%st, %st(1)
	fstpl	-136(%ebp)
	.p2align 4
	.p2align 3
L854:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$65536, %ecx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-100(%ebp), %edx
	movl	-104(%ebp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	addl	%eax, %ebx
	movl	%eax, %ecx
	movl	%eax, -96(%ebp)
	movl	%ebx, -72(%ebp)
	orl	%eax, %ebx
	xorl	%eax, %eax
	cmpl	$15, %ebx
	seta	%al
	orl	%esi, %eax
	movl	%eax, -68(%ebp)
	leal	(%ecx,%edi), %eax
	cmpl	$15, %eax
	jbe	L887
	movl	-100(%ebp), %edx
	movl	-96(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%ebp)
	testl	%edi, %edi
	jne	L888
L850:
	movl	-108(%ebp), %eax
	subl	$16, %eax
	movl	%eax, -88(%ebp)
	cmpl	%edx, %eax
	jb	L851
	movl	-64(%ebp), %esi
	movl	-60(%ebp), %ebx
	movl	%edx, -116(%ebp)
	movl	%edx, %edi
	movl	-56(%ebp), %ecx
	movl	-52(%ebp), %eax
	.p2align 4
	.p2align 3
L852:
	imull	$-2048144777, (%edi), %edx
	addl	$16, %edi
	addl	%esi, %edx
	roll	$13, %edx
	imull	$-1640531535, %edx, %esi
	imull	$-2048144777, -12(%edi), %edx
	addl	%ebx, %edx
	roll	$13, %edx
	imull	$-1640531535, %edx, %ebx
	imull	$-2048144777, -8(%edi), %edx
	addl	%ecx, %edx
	roll	$13, %edx
	imull	$-1640531535, %edx, %ecx
	imull	$-2048144777, -4(%edi), %edx
	addl	%eax, %edx
	roll	$13, %edx
	imull	$-1640531535, %edx, %eax
	cmpl	%edi, -88(%ebp)
	jnb	L852
	movl	-116(%ebp), %edx
	movl	-88(%ebp), %edi
	movl	%esi, -64(%ebp)
	movl	%ebx, -60(%ebp)
	subl	%edx, %edi
	movl	%ecx, -56(%ebp)
	movl	%eax, -52(%ebp)
	andl	$-16, %edi
	leal	16(%edx,%edi), %edx
L851:
	cmpl	-108(%ebp), %edx
	jb	L853
	movl	-32(%ebp), %edi
L849:
	movl	-68(%ebp), %esi
	movl	-72(%ebp), %ebx
	cmpl	$65536, -96(%ebp)
	je	L854
	movl	-56(%ebp), %edx
	leal	374761393(%edx), %eax
	testl	%esi, %esi
	je	L856
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %ecx
	roll	$12, %edx
	roll	%eax
	roll	$7, %ecx
	addl	%ecx, %eax
	addl	%edx, %eax
	movl	-52(%ebp), %edx
	rorl	$14, %edx
	addl	%edx, %eax
L856:
	movl	%edi, %esi
	addl	%ebx, %eax
	andl	$15, %esi
	testl	$12, %edi
	je	L864
	leal	-72(%ebp), %ecx
	leal	(%ecx,%esi), %ebx
L858:
	imull	$-1028477379, 24(%ecx), %edx
	addl	$4, %ecx
	addl	%edx, %eax
	movl	%ebx, %edx
	rorl	$15, %eax
	subl	%ecx, %edx
	imull	$668265263, %eax, %eax
	cmpl	$3, %edx
	ja	L858
	leal	-4(%esi), %edx
	andl	$3, %edi
	andl	$-4, %edx
	leal	-44(%ebp,%edx), %edx
L857:
	testl	%edi, %edi
	je	L859
	addl	%edx, %edi
L860:
	movzbl	(%edx), %ecx
	addl	$1, %edx
	imull	$374761393, %ecx, %ecx
	addl	%ecx, %eax
	roll	$11, %eax
	imull	$-1640531535, %eax, %eax
	cmpl	%edi, %edx
	jne	L860
L859:
	movl	%eax, %ebx
	shrl	$15, %ebx
	xorl	%eax, %ebx
	imull	$-2048144777, %ebx, %ebx
	movl	%ebx, %eax
	shrl	$13, %eax
	xorl	%eax, %ebx
	imull	$-1028477379, %ebx, %ebx
	movl	%ebx, %eax
	shrl	$16, %eax
	xorl	%eax, %ebx
	leal	-80(%ebp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	-76(%ebp), %eax
	fildl	-76(%ebp)
	cltd
	testl	%edx, %edx
	jns	L861
	fadds	LC33
L861:
	fstpl	-88(%ebp)
	fldl	-88(%ebp)
	fmuls	LC34
	flds	LC35
	movl	-100(%ebp), %eax
	fdivrp	%st, %st(1)
	fildl	-80(%ebp)
	fmuls	LC34
	faddp	%st, %st(1)
	fsubl	-136(%ebp)
	fstpl	-88(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-104(%ebp), %esi
	subl	$4, %esp
	movl	%esi, %eax
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	fldl	-88(%ebp)
	movl	%ebx, 24(%esp)
	fstpl	28(%esp)
	fldl	-128(%ebp)
	fstpl	16(%esp)
	movl	-120(%ebp), %ebx
	movl	%eax, 8(%esp)
	movl	%ebx, 12(%esp)
	movl	-112(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	$LC37, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	movl	%esi, %eax
	call	_kclose
L842:
	xorl	%eax, %eax
L889:
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
	.p2align 4,,10
	.p2align 3
L853:
	.cfi_restore_state
	movl	-108(%ebp), %edi
	leal	-48(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	subl	%edx, %edi
	movl	%edi, 8(%esp)
	call	_memcpy
	movl	%edi, -32(%ebp)
	jmp	L849
	.p2align 4,,10
	.p2align 3
L888:
	movl	$16, %edx
	leal	-48(%ebp,%edi), %eax
	subl	%edi, %edx
	movl	%edx, 8(%esp)
	movl	-100(%ebp), %esi
	movl	%eax, (%esp)
	movl	%esi, 4(%esp)
	call	_memcpy
	imull	$-2048144777, -48(%ebp), %eax
	addl	-64(%ebp), %eax
	roll	$13, %eax
	imull	$-1640531535, %eax, %eax
	movl	%eax, -64(%ebp)
	imull	$-2048144777, -44(%ebp), %eax
	addl	-60(%ebp), %eax
	roll	$13, %eax
	imull	$-1640531535, %eax, %eax
	movl	%eax, -60(%ebp)
	imull	$-2048144777, -40(%ebp), %eax
	addl	-56(%ebp), %eax
	roll	$13, %eax
	imull	$-1640531535, %eax, %eax
	movl	%eax, -56(%ebp)
	imull	$-2048144777, -36(%ebp), %eax
	addl	-52(%ebp), %eax
	roll	$13, %eax
	imull	$-1640531535, %eax, %eax
	movl	%eax, -52(%ebp)
	movl	$16, %eax
	subl	-32(%ebp), %eax
	leal	(%esi,%eax), %edx
	movl	$0, -32(%ebp)
	jmp	L850
	.p2align 4,,10
	.p2align 3
L887:
	movl	%ecx, 8(%esp)
	movl	-100(%ebp), %eax
	leal	-48(%ebp,%edi), %edi
	movl	%ecx, %esi
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_memcpy
	addl	-32(%ebp), %esi
	movl	%esi, -32(%ebp)
	movl	%esi, %edi
	jmp	L849
	.p2align 4,,10
	.p2align 3
L886:
	fadds	LC33
	jmp	L847
	.p2align 4,,10
	.p2align 3
L885:
	fadds	LC33
	jmp	L846
	.p2align 4,,10
	.p2align 3
L884:
	fadds	LC33
	jmp	L844
L864:
	movl	%esi, %edi
	leal	-48(%ebp), %edx
	jmp	L857
	.p2align 4,,10
	.p2align 3
L840:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L842
	movl	-112(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	$LC32, 12(%esp)
	movl	$287, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC5, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	xorl	%eax, %eax
	jmp	L889
L883:
	movl	$65536, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE114:
	.section .rdata,"dr"
LC38:
	.ascii "Symbol listing for %s:\0"
LC39:
	.ascii "Symbol listing:\0"
LC40:
	.ascii "%s*%-*s\0"
LC41:
	.ascii "^O%-*s\0"
LC42:
	.ascii "%s\12\0"
LC43:
	.ascii "Found %d symbols\0"
	.text
	.p2align 4
	.def	__ZL19osdfunc_listsymbolsPK13osdfuncparm_t;	.scl	3;	.type	32;	.endef
__ZL19osdfunc_listsymbolsPK13osdfuncparm_t:
LFB133:
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
	movl	$1, %esi
	pushl	%ebx
	subl	$56, %esp
	.cfi_offset 3, -20
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	cmpl	$1, %ecx
	jg	L890
	movl	_osd, %edi
	movl	1184(%edi), %ebx
	testl	%ebx, %ebx
	je	L892
	movl	%ecx, -16(%ebp)
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L896:
	cmpl	$57005, 12(%ebx)
	je	L894
	movl	8(%ebx), %ecx
	testl	%ecx, %ecx
	je	L894
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	_strlen
	cmpl	%eax, %esi
	cmovl	%eax, %esi
L894:
	movl	4(%ebx), %ebx
	testl	%ebx, %ebx
	jne	L896
	movl	-16(%ebp), %ecx
	testl	%esi, %esi
	je	L890
	movl	1148(%edi), %eax
	testl	%eax, %eax
	jle	L892
	leal	18(%eax,%esi), %eax
	leal	3(%esi), %edx
	shrl	$2, %eax
	movl	%edx, -20(%ebp)
	sall	$2, %eax
	call	___chkstk_ms
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	subl	%eax, %esp
	leal	39(%esp), %eax
	andl	$-16, %eax
	movl	%eax, -24(%ebp)
	movb	$0, (%eax)
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$1, %ecx
	je	L927
	testl	%eax, %eax
	jns	L928
L899:
	movl	$0, -40(%ebp)
	testl	%ecx, %ecx
	jne	L898
L900:
	movl	1148(%edi), %eax
	addl	$15, %eax
	shrl	$2, %eax
	sall	$2, %eax
	call	___chkstk_ms
	movl	1184(%edi), %ebx
	subl	%eax, %esp
	movl	$0, -36(%ebp)
	leal	39(%esp), %eax
	andl	$-16, %eax
	testl	%ebx, %ebx
	je	L901
	movl	$0, -16(%ebp)
	movl	%eax, %edi
	movl	%esi, -44(%ebp)
	jmp	L908
	.p2align 4
	.p2align 4,,10
	.p2align 3
L903:
	movl	4(%ebx), %ebx
	testl	%ebx, %ebx
	je	L929
L908:
	cmpl	$57005, 12(%ebx)
	je	L903
	movl	8(%ebx), %edx
	testl	%edx, %edx
	je	L903
	movl	8(%ebp), %eax
	movl	(%ebx), %esi
	cmpl	$1, (%eax)
	jne	L905
	movl	-40(%ebp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_strncmp
	testl	%eax, %eax
	jne	L903
L905:
	movl	%esi, %edx
	movl	$__ZL7h_cvars, %eax
	call	_hash_find
	movl	_osd, %esi
	movb	$0, (%edi)
	movl	(%ebx), %ecx
	movl	1148(%esi), %edx
	cmpl	$511, %eax
	ja	L906
	sall	$4, %eax
	addl	1180(%esi), %eax
	movl	%edx, -32(%ebp)
	movl	%ecx, -28(%ebp)
	call	__ZL16OSD_CvarModifiedPK9osdcvar_t.lto_priv.0
	movl	-28(%ebp), %ecx
	movl	-32(%ebp), %edx
	testl	%eax, %eax
	jne	L930
L906:
	movl	%ecx, 16(%esp)
	movl	-20(%ebp), %eax
	movl	$LC41, 8(%esp)
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%edi, (%esp)
	call	*__imp___snprintf
	movl	%eax, %esi
L907:
	movl	%edi, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcat
	movl	_osd, %eax
	addl	%esi, -16(%ebp)
	movl	-16(%ebp), %ecx
	addl	$1, -36(%ebp)
	movl	1148(%eax), %eax
	subl	-20(%ebp), %eax
	cmpl	%ecx, %eax
	jge	L903
	movl	-24(%ebp), %esi
	movl	$LC42, (%esp)
	movl	%esi, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	movb	$0, (%esi)
	movl	4(%ebx), %ebx
	movl	$0, -16(%ebp)
	testl	%ebx, %ebx
	jne	L908
	.p2align 4
	.p2align 3
L929:
	movl	-16(%ebp), %eax
	testl	%eax, %eax
	jne	L931
L901:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	jns	L932
L892:
	xorl	%esi, %esi
L890:
	leal	-12(%ebp), %esp
	movl	%esi, %eax
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
L930:
	.cfi_restore_state
	movl	%ecx, 20(%esp)
	movl	-44(%ebp), %eax
	addl	$2, %eax
	movl	%eax, 16(%esp)
	movl	1112(%esi), %eax
	movl	$LC40, 8(%esp)
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%edi, (%esp)
	call	*__imp___snprintf
	movl	%eax, %esi
	jmp	L907
	.p2align 4,,10
	.p2align 3
L932:
	movl	-36(%ebp), %eax
	movl	$LC43, 12(%esp)
	xorl	%esi, %esi
	movl	$581, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L890
	.p2align 4,,10
	.p2align 3
L931:
	movl	-24(%ebp), %eax
	movl	$LC42, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L901
	.p2align 4,,10
	.p2align 3
L927:
	testl	%eax, %eax
	jns	L933
L898:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, -40(%ebp)
	jmp	L900
	.p2align 4,,10
	.p2align 3
L928:
	movl	$LC39, 12(%esp)
	movl	$546, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	8(%ebp), %eax
	movl	_osd, %edi
	movl	(%eax), %ecx
	jmp	L899
L933:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	$LC38, 12(%esp)
	movl	$544, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	8(%ebp), %eax
	movl	_osd, %edi
	movl	(%eax), %ecx
	jmp	L899
	.cfi_endproc
LFE133:
	.section .rdata,"dr"
LC44:
	.ascii "%sCommand history:\12\0"
LC45:
	.ascii "%4d '%s'\0"
	.text
	.p2align 4
	.def	__ZL15osdfunc_historyPK13osdfuncparm_t;	.scl	3;	.type	32;	.endef
__ZL15osdfunc_historyPK13osdfuncparm_t:
LFB134:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	_osd, %eax
	movl	%ebx, 24(%esp)
	movl	%esi, 28(%esp)
	movl	1112(%eax), %eax
	movl	$LC44, (%esp)
	movl	%eax, 4(%esp)
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	call	__Z10OSD_PrintfPKcz
	movl	_osd, %esi
	movl	1084(%esi), %ebx
	subl	$1, %ebx
	js	L935
	movl	%edi, 32(%esp)
	.cfi_offset 7, -8
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L939:
	movl	60(%esi,%ebx,4), %edx
	testl	%edx, %edx
	je	L937
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	testl	%eax, %eax
	js	L937
	movl	%edx, 20(%esp)
	movl	1096(%esi), %eax
	addl	$1, %edi
	addl	%edi, %eax
	subl	1092(%esi), %eax
	movl	$LC45, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$624, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L937:
	subl	$1, %ebx
	jnb	L939
	movl	32(%esp), %edi
	.cfi_restore 7
L935:
	movl	24(%esp), %ebx
	movl	28(%esp), %esi
	xorl	%eax, %eax
	addl	$36, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE134:
	.section .rdata,"dr"
	.align 4
LC46:
	.ascii "%sFound %d possible completions for \"%s\":\12\0"
LC47:
	.ascii "  \0"
LC48:
	.ascii "%-*s\0"
LC49:
	.ascii "\12\0"
	.align 4
LC50:
	.ascii "%sPress TAB again to cycle through matches\12\0"
	.align 4
LC51:
	.ascii "Buffer full! Consider increasing 'osdhistorydepth' beyond current value of %d.\0"
	.text
	.p2align 4
	.globl	__Z14OSD_HandleCharc
	.def	__Z14OSD_HandleCharc;	.scl	2;	.type	32;	.endef
__Z14OSD_HandleCharc:
LFB135:
	.cfi_startproc
	subl	$76, %esp
	.cfi_def_cfa_offset 80
	movl	%ebx, 60(%esp)
	.cfi_offset 3, -20
	movl	_osd, %ebx
	testl	%ebx, %ebx
	je	L943
	movl	1172(%ebx), %ecx
	testb	$4, %cl
	je	L943
	movl	%eax, %edx
	cmpb	$9, %al
	je	L946
	movl	$0, __ZZ14OSD_HandleCharcE9lastmatch
	cmpb	$23, %al
	ja	L947
	testb	%al, %al
	je	L948
	cmpb	$23, %al
	ja	L949
	movzbl	%al, %eax
	jmp	*L951(,%eax,4)
	.section .rdata,"dr"
	.align 4
L951:
	.long	L949
	.long	L963
	.long	L962
	.long	L961
	.long	L949
	.long	L960
	.long	L959
	.long	L949
	.long	L958
	.long	L949
	.long	L949
	.long	L957
	.long	L956
	.long	L955
	.long	L954
	.long	L949
	.long	L953
	.long	L949
	.long	L949
	.long	L949
	.long	L949
	.long	L952
	.long	L949
	.long	L950
	.text
	.p2align 4,,10
	.p2align 3
L946:
	movl	__ZZ14OSD_HandleCharcE9lastmatch, %eax
	movl	%esi, 64(%esp)
	testl	%eax, %eax
	.cfi_offset 6, -16
	je	L1110
	movl	48(%ebx), %esi
	movl	4(%eax), %edx
	movl	%esi, %eax
	call	__ZL14osd_findsymbolPKcP7_symbol
	movl	$2147483647, 20(%esp)
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L1111
L1101:
	movl	%edi, 68(%esp)
	movl	%ebp, 72(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
L976:
	movswl	54(%ebx), %eax
	movl	%eax, 24(%esp)
	movl	%eax, %edx
	testl	%eax, %eax
	jle	L991
	movl	44(%ebx), %edx
	jmp	L993
	.p2align 4
	.p2align 4,,10
	.p2align 3
L992:
	subl	$1, %eax
	je	L1112
L993:
	cmpb	$32, -1(%edx,%eax)
	jne	L992
	movl	%eax, 24(%esp)
	movl	%eax, %edx
L991:
	movw	%dx, 52(%ebx)
	movl	(%ecx), %esi
	xorl	%edi, %edi
	movzbl	(%esi), %ebp
	movzwl	24(%esp), %esi
	movl	%ebp, %eax
	testb	%al, %al
	jne	L994
	jmp	L995
	.p2align 4,,10
	.p2align 3
L1113:
	movl	20(%esp), %ebp
	movswl	%dx, %esi
	cmpl	%ebp, %esi
	jge	L996
	movl	24(%esp), %edx
	addl	44(%ebx), %edx
	movb	%al, (%edx,%edi)
	movzwl	52(%ebx), %eax
	addl	$1, %edi
	leal	1(%eax), %esi
	movw	%si, 52(%ebx)
	movl	(%ecx), %eax
	movl	%esi, %edx
	movzbl	(%eax,%edi), %eax
	testb	%al, %al
	je	L995
L994:
	cmpw	$511, %dx
	jle	L1113
L996:
	movl	%edx, %esi
L995:
	movl	_osd, %eax
	movw	%dx, 54(%ebx)
	movw	%dx, 58(%ebx)
	subw	1148(%eax), %si
	addw	$4, %si
	js	L998
	movw	%si, 56(%ebx)
L999:
	movl	64(%esp), %esi
	.cfi_restore 6
	movl	68(%esp), %edi
	.cfi_restore 7
	movl	%ecx, __ZZ14OSD_HandleCharcE9lastmatch
	movl	72(%esp), %ebp
	.cfi_restore 5
L948:
	xorl	%eax, %eax
L942:
	movl	60(%esp), %ebx
	addl	$76, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L943:
	.cfi_restore_state
	movl	60(%esp), %ebx
	movzbl	%al, %eax
	addl	$76, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1112:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%eax, 24(%esp)
	xorl	%edx, %edx
	jmp	L991
	.p2align 4,,10
	.p2align 3
L998:
	xorl	%esi, %esi
	movw	%si, 56(%ebx)
	movl	1148(%eax), %eax
	subl	$4, %eax
	movw	%ax, 58(%ebx)
	jmp	L999
	.p2align 4,,10
	.p2align 3
L1110:
	.cfi_restore 5
	.cfi_restore 7
	movswl	54(%ebx), %edx
	testl	%edx, %edx
	jle	L968
	movl	44(%ebx), %eax
	jmp	L971
	.p2align 4
	.p2align 4,,10
	.p2align 3
L969:
	subl	$1, %edx
	je	L968
L971:
	cmpb	$32, -1(%eax,%edx)
	jne	L969
L968:
	movswl	52(%ebx), %ecx
	xorl	%eax, %eax
	cmpl	%ecx, %edx
	jl	L970
	jmp	L1114
	.p2align 5
	.p2align 4,,10
	.p2align 3
L973:
	movl	48(%ebx), %esi
	addl	$1, %edx
	movb	%cl, (%esi,%eax)
	movswl	52(%ebx), %ecx
	addl	$1, %eax
	cmpl	%edx, %ecx
	jle	L972
L970:
	movl	44(%ebx), %ecx
	movzbl	(%ecx,%edx), %ecx
	cmpb	$32, %cl
	jne	L973
	movl	48(%ebx), %edx
	movb	$0, (%edx,%eax)
	testl	%eax, %eax
	jne	L1115
	movl	64(%esp), %esi
	.cfi_restore 6
	jmp	L942
	.p2align 4,,10
	.p2align 3
L947:
	cmpb	$127, %al
	je	L948
	.p2align 4
	.p2align 3
L949:
	cmpb	$31, %dl
	jbe	L948
	andl	$8, %ecx
	movl	%esi, 64(%esp)
	.cfi_offset 6, -16
	movzwl	52(%ebx), %esi
	jne	L1014
	cmpw	$512, %si
	je	L1107
	movswl	54(%ebx), %eax
	cmpw	%si, %ax
	jl	L1116
L1015:
	addl	$1, %esi
	movw	%si, 52(%ebx)
L1016:
	movl	44(%ebx), %ecx
	leal	1(%eax), %esi
	movw	%si, 54(%ebx)
	movb	%dl, (%ecx,%eax)
	movzwl	58(%ebx), %eax
	cmpw	%ax, 54(%ebx)
	jle	L1107
	addl	$1, %eax
	addw	$1, 56(%ebx)
	movw	%ax, 58(%ebx)
	movl	64(%esp), %esi
	.cfi_restore 6
	jmp	L948
	.p2align 4,,10
	.p2align 3
L963:
	movzwl	1148(%ebx), %eax
	movl	$0, 54(%ebx)
	subl	$4, %eax
	movw	%ax, 58(%ebx)
	jmp	L948
	.p2align 4,,10
	.p2align 3
L955:
	movswl	52(%ebx), %eax
	testw	%ax, %ax
	jle	L1025
	movl	%esi, 64(%esp)
	movl	44(%ebx), %edx
	movb	$0, (%edx,%eax)
	movl	60(%ebx), %eax
	.cfi_offset 6, -16
	movl	1084(%ebx), %esi
	testl	%eax, %eax
	je	L1001
	movl	44(%ebx), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_strcmp
	testl	%eax, %eax
	je	L1002
L1001:
	movl	%edi, 68(%esp)
	movl	56(%ebx,%esi,4), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	.cfi_offset 7, -12
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 76
	movl	1084(%ebx), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	movl	$0, 56(%ebx,%eax,4)
	leal	-1(,%eax,4), %eax
	movl	%eax, 8(%esp)
	leal	60(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	64(%ebx), %eax
	movl	%eax, (%esp)
	call	_memmove
	movl	44(%ebx), %esi
	movl	$512, (%esp)
	movl	_g_sm_heap, %ecx
	movl	_osd, %edi
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	je	L1003
	movl	%eax, 60(%edi)
	movl	_osd, %eax
	movl	60(%eax), %edi
	movl	%esi, (%esp)
	call	_strlen
	movl	$511, %edx
	movl	%esi, 4(%esp)
	addl	$1, %eax
	movl	%edi, (%esp)
	cmpl	%edx, %eax
	cmova	%edx, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	movb	$0, 511(%edi)
	movl	1092(%ebx), %eax
	movl	1084(%ebx), %esi
	cmpl	%esi, %eax
	jge	L1005
	addl	$1, %eax
	movl	%eax, 1092(%ebx)
L1005:
	addl	$1, 1096(%ebx)
	movl	68(%esp), %edi
	.cfi_restore 7
L1002:
	movl	1100(%ebx), %eax
	leal	1(%eax), %edx
	movl	%edx, 1100(%ebx)
	cmpl	%esi, %eax
	je	L1117
L1006:
	movl	$-1, 1088(%ebx)
	movl	_osd, %eax
	movl	64(%esp), %esi
	.cfi_restore 6
L1000:
	xorl	%edx, %edx
	movl	$0, 52(%ebx)
	movw	%dx, 56(%ebx)
	movl	1148(%eax), %eax
	subl	$4, %eax
	movw	%ax, 58(%ebx)
	jmp	L948
	.p2align 4,,10
	.p2align 3
L961:
	movswl	52(%ebx), %eax
	movl	44(%ebx), %edx
	movb	$0, (%edx,%eax)
	movl	44(%ebx), %eax
	movl	$LC42, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	xorl	%eax, %eax
	movl	$0, 52(%ebx)
	movw	%ax, 56(%ebx)
	movl	_osd, %eax
	movl	1148(%eax), %eax
	subl	$4, %eax
	movw	%ax, 58(%ebx)
	movl	44(%ebx), %eax
	movb	$0, (%eax)
	jmp	L948
	.p2align 4,,10
	.p2align 3
L954:
	call	__ZL15OSD_HistoryNextv.lto_priv.0
	jmp	L948
	.p2align 4,,10
	.p2align 3
L960:
	movzwl	52(%ebx), %eax
	movl	1148(%ebx), %edx
	movw	%ax, 54(%ebx)
	movw	%ax, 58(%ebx)
	addl	$4, %eax
	subw	%dx, %ax
	js	L964
	movw	%ax, 56(%ebx)
	jmp	L948
	.p2align 4,,10
	.p2align 3
L959:
	movzwl	54(%ebx), %eax
	cmpw	52(%ebx), %ax
	jge	L948
	addl	$1, %eax
	movw	%ax, 54(%ebx)
	jmp	L948
	.p2align 4,,10
	.p2align 3
L962:
	movzwl	54(%ebx), %eax
	testw	%ax, %ax
	jle	L948
	subl	$1, %eax
	movw	%ax, 54(%ebx)
	jmp	L948
	.p2align 4,,10
	.p2align 3
L950:
	movl	%ebp, 72(%esp)
	.cfi_offset 5, -8
	movzwl	54(%ebx), %ebp
	testw	%bp, %bp
	jle	L1109
	movswl	52(%ebx), %ecx
	testw	%cx, %cx
	jle	L1109
	movswl	%bp, %eax
	movl	%esi, 64(%esp)
	movl	%eax, 20(%esp)
	movl	%edi, 68(%esp)
	movl	44(%ebx), %edx
	.p2align 4
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.p2align 4
	.p2align 3
L1008:
	cmpb	$32, -1(%edx,%eax)
	jne	L1011
	subl	$1, %eax
	jne	L1008
L1028:
	xorl	%edi, %edi
	xorl	%esi, %esi
L1009:
	cmpw	%cx, %bp
	jl	L1118
L1013:
	addl	%esi, %ecx
	movw	%di, 54(%ebx)
	subl	%ebp, %ecx
	movw	%cx, 52(%ebx)
	cmpw	%di, 56(%ebx)
	jle	L1108
	movl	_osd, %eax
	movw	%di, 56(%ebx)
	movl	1148(%eax), %eax
	leal	-4(%esi,%eax), %esi
	movw	%si, 58(%ebx)
L1108:
	movl	64(%esp), %esi
	.cfi_restore 6
	movl	68(%esp), %edi
	.cfi_restore 7
L1109:
	movl	72(%esp), %ebp
	.cfi_restore 5
	jmp	L948
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1012:
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	subl	$1, %eax
	je	L1028
L1011:
	cmpb	$32, -1(%edx,%eax)
	jne	L1012
	movl	%eax, %esi
	movl	%eax, %edi
	jmp	L1009
	.p2align 4,,10
	.p2align 3
L957:
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movswl	54(%ebx), %eax
	movl	$512, %edx
	subl	%eax, %edx
	addl	44(%ebx), %eax
	movl	$0, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, (%esp)
	call	_memset
	movzwl	54(%ebx), %eax
	movw	%ax, 52(%ebx)
	jmp	L948
	.p2align 4,,10
	.p2align 3
L953:
	call	__ZL15OSD_HistoryPrevv.lto_priv.0
	jmp	L948
	.p2align 4,,10
	.p2align 3
L952:
	movswl	54(%ebx), %eax
	testw	%ax, %ax
	jle	L948
	movswl	52(%ebx), %edx
	testw	%dx, %dx
	je	L948
	movl	%ebx, %ecx
	cmpw	%dx, %ax
	jl	L1119
L1007:
	subl	%eax, %edx
	movl	$0, 54(%ebx)
	movw	%dx, 52(%ebx)
	movl	1148(%ecx), %eax
	subl	$4, %eax
	movw	%ax, 58(%ebx)
	jmp	L948
	.p2align 4,,10
	.p2align 3
L958:
	movswl	54(%ebx), %eax
	testw	%ax, %ax
	je	L948
	movswl	52(%ebx), %edx
	testw	%dx, %dx
	je	L948
	andl	$8, %ecx
	jne	L965
	cmpw	%dx, %ax
	jl	L1120
L966:
	subl	$1, %edx
	movw	%dx, 52(%ebx)
L965:
	movzwl	56(%ebx), %edx
	subl	$1, %eax
	movw	%ax, 54(%ebx)
	cmpw	%dx, %ax
	jge	L948
	subl	$1, %edx
	subw	$1, 58(%ebx)
	movw	%dx, 56(%ebx)
	jmp	L948
	.p2align 4,,10
	.p2align 3
L956:
	movl	$1, %eax
	call	__ZL9osd_cleari
	jmp	L948
	.p2align 4,,10
	.p2align 3
L1111:
	.cfi_offset 6, -16
	xorl	%edx, %edx
	movl	%esi, %eax
	call	__ZL14osd_findsymbolPKcP7_symbol
	movl	%eax, %ecx
	testl	%eax, %eax
	jne	L1101
L1107:
	movl	64(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L948
	.p2align 4,,10
	.p2align 3
L972:
	.cfi_restore_state
	movl	%edi, 68(%esp)
	movl	48(%ebx), %edx
	movb	$0, (%edx,%eax)
	.cfi_offset 7, -12
L1019:
	movl	48(%ebx), %edi
	xorl	%edx, %edx
	movl	%edi, %eax
	movl	%edi, 44(%esp)
	call	__ZL14osd_findsymbolPKcP7_symbol
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L1100
	movl	%ebp, 72(%esp)
	movl	4(%eax), %edx
	testl	%edx, %edx
	.cfi_offset 5, -8
	je	L974
	movl	%eax, 20(%esp)
	movl	%edi, %eax
	call	__ZL14osd_findsymbolPKcP7_symbol
	movl	20(%esp), %ecx
	testl	%eax, %eax
	je	L974
	xorl	%ebp, %ebp
	movl	%ecx, 56(%esp)
	movl	__imp__tolower, %esi
	movl	$1, 48(%esp)
	movl	$2147483647, 20(%esp)
	movl	%ebp, 36(%esp)
	movl	%ebx, 52(%esp)
	movl	%ecx, %ebx
	.p2align 4
	.p2align 3
L975:
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	36(%esp), %edi
	movl	4(%ebx), %edx
	movl	%ebx, __ZZ14OSD_HandleCharcE9lastmatch
	cmpl	%eax, %edi
	cmovge	%edi, %eax
	movl	%eax, 36(%esp)
	testl	%edx, %edx
	je	L980
	movl	44(%esp), %eax
	call	__ZL14osd_findsymbolPKcP7_symbol
	movl	%eax, %edi
	testl	%eax, %eax
	je	L980
	cmpl	%ebx, %eax
	je	L980
	movl	(%edi), %eax
	addl	$1, 48(%esp)
	movl	%edi, 40(%esp)
	movl	%eax, 32(%esp)
	movl	(%ebx), %eax
	xorl	%ebx, %ebx
	movl	%eax, 28(%esp)
	jmp	L977
	.p2align 4,,10
	.p2align 3
L979:
	movl	%edi, %eax
	testb	%al, %al
	je	L978
	movl	%ebp, %eax
	testb	%al, %al
	je	L978
	addl	$1, %ebx
L977:
	movl	32(%esp), %eax
	movzbl	(%eax,%ebx), %edi
	movl	%edi, %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	*%esi
	movl	28(%esp), %ecx
	movl	%eax, 24(%esp)
	movzbl	(%ecx,%ebx), %ebp
	movl	%ebp, %ecx
	movzbl	%cl, %eax
	movl	%eax, (%esp)
	call	*%esi
	cmpl	%eax, 24(%esp)
	je	L979
L978:
	movl	20(%esp), %eax
	movl	40(%esp), %edi
	cmpl	%ebx, %eax
	cmovle	%eax, %ebx
	movl	%ebx, 20(%esp)
	movl	%edi, %ebx
	jmp	L975
L974:
	movl	$2147483647, 20(%esp)
	jmp	L976
L1025:
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movl	%ebx, %eax
	jmp	L1000
L964:
	xorl	%eax, %eax
	subl	$4, %edx
	movw	%ax, 56(%ebx)
	movw	%dx, 58(%ebx)
	jmp	L948
L980:
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	44(%esp), %eax
	movl	56(%esp), %ecx
	movl	36(%esp), %ebp
	movl	52(%esp), %ebx
	movl	%eax, 12(%esp)
	movl	48(%esp), %eax
	movl	%ecx, 24(%esp)
	leal	3(%ebp), %edi
	xorl	%ebp, %ebp
	movl	%eax, 8(%esp)
	movl	_osd, %eax
	movl	1112(%eax), %eax
	movl	$LC46, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	movl	$LC47, (%esp)
	call	__Z10OSD_PrintfPKcz
	movl	24(%esp), %ecx
	movl	%ecx, %esi
	jmp	L982
	.p2align 4,,10
	.p2align 3
L984:
	testl	%edx, %edx
	je	L983
L987:
	movl	%esi, %ecx
	movl	%edx, %esi
L982:
	cmpl	%esi, __ZZ14OSD_HandleCharcE9lastmatch
	je	L1121
	movl	(%esi), %eax
	movl	%edi, 4(%esp)
	movl	$LC48, (%esp)
	movl	%eax, 8(%esp)
	movl	%esi, __ZZ14OSD_HandleCharcE9lastmatch
	call	__Z10OSD_PrintfPKcz
	movl	__ZZ14OSD_HandleCharcE9lastmatch, %eax
	movl	4(%eax), %edx
	testl	%edx, %edx
	je	L983
	movl	48(%ebx), %eax
	addl	%edi, %ebp
	call	__ZL14osd_findsymbolPKcP7_symbol
	movl	%eax, %edx
	movl	_osd, %eax
	movl	1148(%eax), %eax
	subl	%edi, %eax
	cmpl	%ebp, %eax
	jge	L984
	movl	$LC49, (%esp)
	movl	%edx, 24(%esp)
	call	__Z10OSD_PrintfPKcz
	movl	24(%esp), %edx
	testl	%edx, %edx
	je	L1022
	cmpl	%edx, __ZZ14OSD_HandleCharcE9lastmatch
	je	L988
	movl	$LC47, (%esp)
	movl	%edx, 24(%esp)
	call	__Z10OSD_PrintfPKcz
	movl	24(%esp), %edx
L988:
	xorl	%ebp, %ebp
	jmp	L987
L1121:
	movl	%ecx, %esi
L983:
	testl	%ebp, %ebp
	je	L1022
	movl	$LC49, (%esp)
	call	__Z10OSD_PrintfPKcz
L1022:
	movl	_osd, %eax
	movl	%esi, 24(%esp)
	movl	1112(%eax), %eax
	movl	$LC50, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	movl	24(%esp), %ecx
	jmp	L976
L1100:
	.cfi_restore 5
	movl	64(%esp), %esi
	.cfi_restore 6
	movl	68(%esp), %edi
	.cfi_restore 7
	jmp	L948
L1014:
	.cfi_offset 6, -16
	movswl	54(%ebx), %eax
	cmpw	%si, %ax
	jne	L1016
	leal	1(%eax), %ecx
	movw	%cx, 52(%ebx)
	jmp	L1016
L1114:
	movl	48(%ebx), %eax
	movb	$0, (%eax)
	movl	64(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L948
L1117:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L1006
	movl	%esi, 1100(%ebx)
	movl	%esi, 16(%esp)
	movl	$LC51, 12(%esp)
	movl	$1271, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1006
L1118:
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	20(%esp), %ebp
	subl	%ebp, %ecx
	movl	%ecx, 8(%esp)
	leal	(%edx,%ebp), %ecx
	addl	%eax, %edx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	_memmove
	movzwl	52(%ebx), %ecx
	movzwl	54(%ebx), %ebp
	jmp	L1013
L1119:
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movl	44(%ebx), %ecx
	subl	%eax, %edx
	movl	%edx, 8(%esp)
	addl	%ecx, %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	call	_memmove
	movzwl	52(%ebx), %edx
	movzwl	54(%ebx), %eax
	movl	_osd, %ecx
	jmp	L1007
L1115:
	.cfi_offset 6, -16
	movl	%edi, 68(%esp)
	.cfi_offset 7, -12
	jmp	L1019
L1120:
	.cfi_restore 6
	.cfi_restore 7
	movl	44(%ebx), %ecx
	subl	%eax, %edx
	movl	%edx, 8(%esp)
	leal	(%ecx,%eax), %edx
	leal	-1(%ecx,%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_memmove
	movzwl	52(%ebx), %edx
	movzwl	54(%ebx), %eax
	jmp	L966
L1116:
	.cfi_offset 6, -16
	movl	%edi, 68(%esp)
	movswl	%si, %ecx
	.cfi_offset 7, -12
	movl	44(%ebx), %edi
	subl	%eax, %ecx
	movb	%dl, 20(%esp)
	movl	%ecx, 8(%esp)
	leal	(%edi,%eax), %ecx
	leal	1(%edi,%eax), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_memmove
	movzwl	52(%ebx), %esi
	movswl	54(%ebx), %eax
	movzbl	20(%esp), %edx
	movl	68(%esp), %edi
	.cfi_restore 7
	jmp	L1015
L1003:
	.cfi_offset 7, -12
	movl	$512, %eax
	movl	%ebp, 72(%esp)
	.cfi_offset 5, -8
	call	__Z13handle_memerri
	.cfi_endproc
LFE135:
	.p2align 4
	.globl	__ZL13osd_addsymbolPKc.lto_priv.0
	.def	__ZL13osd_addsymbolPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL13osd_addsymbolPKc.lto_priv.0:
LFB138:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	_osd, %edx
	movl	%ebx, 12(%esp)
	cmpl	$511, 3236(%edx)
	.cfi_offset 3, -20
	jg	L1134
	movl	$16, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	%edi, 20(%esp)
	movl	%ebp, 24(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 28
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1124
	movl	$0, (%eax)
	movl	_osd, %ebp
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	1184(%ebp), %edi
	testl	%edi, %edi
	je	L1142
	movl	(%edi), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jg	L1128
	jmp	L1143
	.p2align 4,,10
	.p2align 3
L1130:
	movl	%esi, 4(%esp)
	movl	(%edi), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jg	L1129
L1128:
	movl	%edi, %ebp
	movl	4(%edi), %edi
	testl	%edi, %edi
	jne	L1130
L1129:
	movl	%ebx, 4(%ebp)
	movl	%edi, 4(%ebx)
L1127:
	movl	%esi, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %edx
	movl	%eax, %ebp
	movl	%edx, (%esp)
	movl	%edx, 8(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 28
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1131
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movb	$0, (%edi,%ebp)
	movl	%edi, (%esp)
	call	_strlen
	testl	%eax, %eax
	je	L1132
	addl	%edi, %eax
	movl	%edi, %ebp
	movl	%eax, 8(%esp)
	.p2align 4
	.p2align 3
L1133:
	movzbl	0(%ebp), %eax
	addl	$1, %ebp
	movl	%eax, (%esp)
	call	*__imp__tolower
	movb	%al, -1(%ebp)
	cmpl	%ebp, 8(%esp)
	jne	L1133
L1132:
	movl	_osd, %eax
	movl	%esi, %edx
	movl	3236(%eax), %ecx
	movl	$1, (%esp)
	movl	$__ZL5h_osd, %eax
	call	_hash_add
	movl	_osd, %eax
	movl	%edi, %edx
	movl	3236(%eax), %ecx
	movl	$1, (%esp)
	movl	$__ZL5h_osd, %eax
	call	_hash_add
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 28
	movl	_osd, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	movl	3236(%eax), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 3236(%eax)
	movl	%ebx, 1188(%eax,%edx,4)
	movl	%ebx, %eax
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
L1134:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	12(%esp), %ebx
	addl	$28, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1142:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%eax, 1184(%ebp)
	jmp	L1127
	.p2align 4,,10
	.p2align 3
L1143:
	movl	%ebx, 1184(%ebp)
	movl	%edi, 4(%ebx)
	jmp	L1127
	.p2align 4,,10
	.p2align 3
L1124:
	movl	$16, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1131:
	movl	8(%esp), %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE138:
	.p2align 4
	.globl	__ZL19osd_findexactsymbolPKc.lto_priv.0
	.def	__ZL19osd_findexactsymbolPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL19osd_findexactsymbolPKc.lto_priv.0:
LFB140:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%esi, 16(%esp)
	.cfi_offset 6, -12
	movl	_osd, %esi
	movl	1184(%esi), %edx
	testl	%edx, %edx
	je	L1144
	movl	%ebx, 12(%esp)
	movl	%eax, %edx
	.cfi_offset 3, -16
	movl	%eax, %ebx
	movl	$__ZL5h_osd, %eax
	call	_hash_find
	testl	%eax, %eax
	js	L1160
L1146:
	movl	1188(%esi,%eax,4), %edx
	movl	12(%esp), %ebx
	.cfi_restore 3
L1144:
	movl	16(%esp), %esi
	movl	%edx, %eax
	addl	$24, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1160:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	movl	%ebx, (%esp)
	movl	%edi, 20(%esp)
	.cfi_offset 7, -8
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %edx
	movl	%eax, %edi
	movl	%edx, (%esp)
	movl	%edx, 8(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1147
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movb	$0, (%esi,%edi)
	movl	%esi, (%esp)
	call	_strlen
	testl	%eax, %eax
	je	L1148
	movl	%esi, %ebx
	leal	(%esi,%eax), %edi
	.p2align 4
	.p2align 3
L1149:
	movzbl	(%ebx), %eax
	addl	$1, %ebx
	movl	%eax, (%esp)
	call	*__imp__tolower
	movb	%al, -1(%ebx)
	cmpl	%ebx, %edi
	jne	L1149
L1148:
	movl	%esi, %edx
	movl	$__ZL5h_osd, %eax
	call	_hash_find
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%eax, 8(%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%edx, %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	movl	8(%esp), %eax
	testl	%eax, %eax
	js	L1159
	movl	_osd, %esi
	movl	20(%esp), %edi
	.cfi_restore 7
	jmp	L1146
	.p2align 4,,10
	.p2align 3
L1147:
	.cfi_restore_state
	movl	8(%esp), %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1159:
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	20(%esp), %edi
	.cfi_restore 7
	jmp	L1144
	.cfi_endproc
LFE140:
	.section .rdata,"dr"
	.align 4
LC52:
	.ascii "%s%s: unknown command or cvar\12\0"
	.text
	.p2align 4
	.def	__ZL12osdfunc_helpPK13osdfuncparm_t;	.scl	3;	.type	32;	.endef
__ZL12osdfunc_helpPK13osdfuncparm_t:
LFB141:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	$1, %eax
	movl	28(%esp), %edx
	cmpl	$1, (%edx)
	je	L1169
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1169:
	.cfi_restore_state
	movl	8(%edx), %eax
	movl	(%eax), %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	movl	28(%esp), %edx
	testl	%eax, %eax
	je	L1170
	movl	(%eax), %edx
	movl	%eax, 20(%esp)
	movl	$__ZL7h_cvars, %eax
	call	_hash_findcase
	movl	20(%esp), %ecx
	testl	%eax, %eax
	js	L1164
	call	__ZL16osdfunc_printvari.isra.0
L1165:
	xorl	%eax, %eax
L1171:
	addl	$24, %esp
	.cfi_remember_state
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
	testl	%eax, %eax
	js	L1165
	movl	8(%ecx), %eax
	movl	$LC4, 12(%esp)
	movl	$600, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	xorl	%eax, %eax
	jmp	L1171
	.p2align 4,,10
	.p2align 3
L1170:
	movl	8(%edx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	_osd, %eax
	movl	1112(%eax), %eax
	movl	$LC52, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	xorl	%eax, %eax
	jmp	L1171
	.cfi_endproc
LFE141:
	.section .rdata,"dr"
	.align 4
LC53:
	.ascii "toggle: bad cvar name '%s' or wrong cvar type or complexity.\0"
	.align 4
LC54:
	.ascii "toggle: cvar '%s' is read only.\0"
	.text
	.p2align 4
	.def	__ZL14osdfunc_togglePK13osdfuncparm_t;	.scl	3;	.type	32;	.endef
__ZL14osdfunc_togglePK13osdfuncparm_t:
LFB143:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	$1, %eax
	movl	48(%esp), %ecx
	cmpl	$1, (%ecx)
	je	L1205
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1205:
	.cfi_restore_state
	movl	%esi, 32(%esp)
	movl	%ebp, 40(%esp)
	movl	%ebx, 28(%esp)
	movl	8(%ecx), %eax
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	.cfi_offset 3, -20
	movl	(%eax), %ebx
	movl	$__ZL7h_cvars, %eax
	movl	%ebx, %edx
	call	_hash_find
	movl	%eax, %esi
	movl	_osd, %eax
	movl	%eax, %ebp
	cmpl	$-1, %esi
	je	L1206
L1174:
	movl	1180(%ebp), %eax
	sall	$4, %esi
	movl	(%eax,%esi), %eax
	testb	$14, 12(%eax)
	jne	L1207
L1177:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	jns	L1208
L1180:
	movl	28(%esp), %ebx
	.cfi_restore 3
	movl	32(%esp), %esi
	.cfi_restore 6
	xorl	%eax, %eax
	movl	40(%esp), %ebp
	.cfi_restore 5
L1210:
	addl	$44, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1207:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	%ebx, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	cmpl	$__Z15osdcmd_cvar_setPK13osdfuncparm_t, 12(%eax)
	jne	L1177
	movl	_osd, %eax
	movl	1180(%eax), %eax
	movl	(%eax,%esi), %eax
	movl	12(%eax), %edx
	testb	$64, %dl
	jne	L1209
	movl	8(%eax), %ecx
	andl	$14, %edx
	cmpl	$4, %edx
	movl	(%ecx), %ebx
	leal	1(%ebx), %edx
	movl	%edx, (%ecx)
	je	L1181
	cmpl	20(%eax), %edx
	jle	L1182
	movl	8(%eax), %edx
	movl	16(%eax), %ecx
	movl	%ecx, (%edx)
L1182:
	movl	12(%eax), %edx
	andl	$63, %edx
	cmpl	$8, %edx
	jne	L1183
	movl	8(%eax), %edx
	xorl	%ecx, %ecx
	movl	(%edx), %ebp
	testl	%ebp, %ebp
	setne	%cl
	movl	%ecx, (%edx)
L1183:
	movl	_osd, %edx
	movl	3240(%edx), %ebx
	testl	%ebx, %ebx
	jne	L1185
	movl	__ZN6loguru18g_stderr_verbosityE, %ecx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ebx
	cmpl	%ebx, %ecx
	cmovl	%ebx, %ecx
	testl	%ecx, %ecx
	js	L1185
	movl	8(%eax), %edx
	movl	(%edx), %edx
	movl	%edx, 20(%esp)
	movl	(%eax), %eax
	movl	$LC21, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$745, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	_osd, %edx
	jmp	L1185
	.p2align 4,,10
	.p2align 3
L1208:
	movl	48(%esp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	$LC53, 12(%esp)
	movl	$721, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	28(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	32(%esp), %esi
	.cfi_restore 6
	xorl	%eax, %eax
	movl	40(%esp), %ebp
	.cfi_restore 5
	jmp	L1210
	.p2align 4,,10
	.p2align 3
L1206:
	.cfi_restore_state
	movl	1176(%eax), %ecx
	movl	%ecx, %esi
	movl	%ecx, 24(%esp)
	subl	$1, %esi
	js	L1175
	movl	%edi, 36(%esp)
	.cfi_offset 7, -12
	movl	1180(%eax), %edi
	jmp	L1176
	.p2align 4,,10
	.p2align 3
L1212:
	subl	$1, %esi
	jb	L1211
L1176:
	movl	%esi, %eax
	sall	$4, %eax
	movl	(%edi,%eax), %eax
	movl	(%eax), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L1212
	movl	36(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L1174
	.p2align 4,,10
	.p2align 3
L1211:
	.cfi_restore_state
	movl	36(%esp), %edi
	.cfi_restore 7
	jmp	L1177
	.p2align 4,,10
	.p2align 3
L1181:
	cmpl	%edx, 20(%eax)
	jnb	L1187
	movl	8(%eax), %edx
	movl	16(%eax), %ecx
	movl	%ecx, (%edx)
L1187:
	movl	_osd, %edx
	movl	3240(%edx), %ecx
	testl	%ecx, %ecx
	je	L1213
L1185:
	movl	1180(%edx), %eax
	movl	(%eax,%esi), %eax
	orl	$8192, 12(%eax)
	jmp	L1180
L1175:
	cmpl	$-1, %esi
	jne	L1174
	jmp	L1177
	.p2align 4,,10
	.p2align 3
L1209:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L1180
	movl	(%eax), %eax
	movl	$LC54, 12(%esp)
	movl	$729, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1180
L1213:
	movl	__ZN6loguru18g_stderr_verbosityE, %ecx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ebx
	cmpl	%ebx, %ecx
	cmovl	%ebx, %ecx
	testl	%ecx, %ecx
	js	L1185
	movl	8(%eax), %edx
	movl	(%edx), %edx
	movl	%edx, 20(%esp)
	movl	(%eax), %eax
	movl	$LC21, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$754, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	_osd, %edx
	jmp	L1185
	.cfi_endproc
LFE143:
	.section .rdata,"dr"
LC56:
	.ascii "alias\0"
	.align 4
LC57:
	.ascii "alias: creates an alias for calling multiple commands\0"
LC58:
	.ascii "clear\0"
	.align 4
LC59:
	.ascii "clear: clears the console text buffer\0"
LC60:
	.ascii "echo\0"
	.align 4
LC61:
	.ascii "echo [text]: echoes text to the console\0"
LC62:
	.ascii "exec\0"
	.align 4
LC63:
	.ascii "exec <scriptfile>: executes a script\0"
LC64:
	.ascii "fileinfo\0"
	.align 4
LC65:
	.ascii "fileinfo <file>: gets a file's information\0"
LC66:
	.ascii "help\0"
	.align 4
LC67:
	.ascii "help: displays help for a cvar or command; \"listsymbols\" to show all commands\0"
LC68:
	.ascii "history\0"
	.align 4
LC69:
	.ascii "history: displays the console command history\0"
LC70:
	.ascii "listsymbols\0"
	.align 4
LC71:
	.ascii "listsymbols: lists all registered functions, cvars and aliases\0"
LC72:
	.ascii "toggle\0"
	.align 4
LC73:
	.ascii "toggle: toggles the value of a boolean cvar\0"
LC74:
	.ascii "unalias\0"
	.align 4
LC75:
	.ascii "unalias: removes a command alias\0"
	.text
	.p2align 4
	.globl	__Z8OSD_Initv
	.def	__Z8OSD_Initv;	.scl	2;	.type	32;	.endef
__Z8OSD_Initv:
LFB145:
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
	pushl	%ebx
	subl	$56, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	$3252, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1215
	movl	$__ZL24_internal_getcolumnwidthi.lto_priv.0, -40(%ebp)
	movss	-40(%ebp), %xmm1
	movl	%eax, %ebx
	movss	LC76, %xmm0
	movl	$__ZL20_internal_drawosdstriiPKciii.lto_priv.0, -40(%ebp)
	movss	-40(%ebp), %xmm2
	movl	$__ZL19_internal_onshowosdi.lto_priv.0, -56(%ebp)
	unpcklps	%xmm1, %xmm0
	movss	LC77, %xmm1
	unpcklps	%xmm2, %xmm1
	movaps	%xmm1, %xmm3
	movss	-56(%ebp), %xmm1
	movl	$__ZL25_internal_clearbackgroundii.lto_priv.0, -56(%ebp)
	movlhps	%xmm0, %xmm3
	movss	-56(%ebp), %xmm2
	movss	LC78, %xmm0
	movups	%xmm3, -40(%ebp)
	unpcklps	%xmm1, %xmm0
	movss	LC79, %xmm1
	unpcklps	%xmm2, %xmm1
	movaps	%xmm1, %xmm4
	movlhps	%xmm0, %xmm4
	movups	%xmm4, -56(%ebp)
	movl	$3252, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	__tls_index, %esi
	movl	%fs:44, %eax
	movl	%ebx, _osd
	movl	(%eax,%esi,4), %eax
	movl	__mi_heap_default@secrel32(%eax), %edi
	movl	200(%edi), %eax
	movl	8(%eax), %ebx
	testl	%ebx, %ebx
	je	L1262
	movl	(%ebx), %edx
	addw	$1, 16(%eax)
	movl	%edx, 8(%eax)
L1218:
	movl	$0, (%ebx)
	movl	$1, %ecx
	movl	$4096, %edx
	movl	%fs:44, %eax
	movl	(%eax,%esi,4), %eax
	movl	$-1, %esi
	movl	__mi_heap_default@secrel32(%eax), %eax
	movl	$0, (%esp)
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	movl	$0, 12(%ebx)
	movl	%eax, (%ebx)
	movl	%esi, 4(%ebx)
	movl	%esi, 8(%ebx)
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L1219:
	movl	(%eax,%esi), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	(%ebx), %eax
	subl	$4, %esp
	movl	$0, (%eax,%esi)
	movl	(%ebx), %edx
	addl	$4, %esi
	movl	%edx, %eax
	cmpl	$4096, %esi
	jne	L1219
	xorl	%eax, %eax
	jmp	L1220
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1263:
	movl	(%ebx), %edx
L1220:
	movl	$0, (%edx,%eax)
	addl	$4, %eax
	cmpl	$4096, %eax
	jne	L1263
	movl	_osd, %eax
	movups	-40(%ebp), %xmm5
	movups	-56(%ebp), %xmm6
	movl	%ebx, (%eax)
	movl	_osd, %ebx
	movl	3244(%ebx), %eax
	movl	$0, 8(%ebx)
	movl	$__ZL17default_callbacks, 3248(%ebx)
	movups	%xmm5, __ZL17default_callbacks
	movups	%xmm6, __ZL17default_callbacks+16
	testl	%eax, %eax
	je	L1221
L1222:
	movl	$32768, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1223
	movl	%eax, 20(%ebx)
	movl	_osd, %ebx
	movl	$32768, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1223
	movl	%eax, 24(%ebx)
	movl	_osd, %ebx
	movl	$512, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1225
	movl	%eax, 44(%ebx)
	movl	_osd, %ebx
	movl	$512, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1225
	movl	%eax, 48(%ebx)
	movl	$32768, 8(%esp)
	movl	$32, 4(%esp)
	movl	_osd, %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	_osd, %edx
	movl	$32768, 8(%esp)
	movl	1132(%edx), %eax
	sall	$5, %eax
	addl	1136(%edx), %eax
	movl	%eax, 4(%esp)
	movl	24(%edx), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	_osd, %ebx
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	leal	1188(%ebx), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	$128, %edx
	movl	$1, %eax
	movl	$0, 3236(%ebx)
	movl	%eax, 32(%ebx)
	movl	$__ZL5h_osd, %eax
	movl	%edx, 36(%ebx)
	movl	$0, 1176(%ebx)
	movl	$1, 40(%ebx)
	movl	$60, 1148(%ebx)
	movl	$4096, 16(%ebx)
	movl	$32, 1084(%ebx)
	call	_hash_init
	movl	$__ZL7h_cvars, %eax
	call	_hash_init
	call	_mi_register_output.constprop.0
	cmpb	$0, __ZGVZ8OSD_InitvE9cvars_osd
	je	L1264
L1227:
	movl	$__ZZ8OSD_InitvE9cvars_osd, %ebx
	movl	$__ZL19osdcmd_cvar_set_osdPK13osdfuncparm_t, %esi
	.p2align 4
	.p2align 3
L1229:
	testb	$2, 13(%ebx)
	movl	$__Z15osdcmd_cvar_setPK13osdfuncparm_t, %edx
	movl	%ebx, %eax
	cmovne	%esi, %edx
	addl	$24, %ebx
	call	__Z16OSD_RegisterCvarP13osdcvardata_tPFiPK13osdfuncparm_tE
	cmpl	$__ZZ8OSD_InitvE9cvars_osd+264, %ebx
	jne	L1229
	movl	_osd, %eax
	testl	%eax, %eax
	je	L1265
	movl	$LC56, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L1266
L1231:
	movl	$LC57, 8(%eax)
	movl	$__ZL13osdfunc_aliasPK13osdfuncparm_t, 12(%eax)
	movl	_osd, %eax
	testl	%eax, %eax
	je	L1267
	movl	$LC58, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L1268
L1233:
	movl	$LC59, 8(%eax)
	movl	$__ZL13osdfunc_clearPK13osdfuncparm_t, 12(%eax)
	movl	_osd, %eax
	testl	%eax, %eax
	je	L1269
	movl	$LC60, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L1270
L1235:
	movl	$LC61, 8(%eax)
	movl	$__ZL12osdfunc_echoPK13osdfuncparm_t, 12(%eax)
	movl	_osd, %eax
	testl	%eax, %eax
	je	L1271
	movl	$LC62, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L1272
L1237:
	movl	_osd, %edi
	movl	$LC63, 8(%eax)
	movl	$__ZL12osdfunc_execPK13osdfuncparm_t, 12(%eax)
	testl	%edi, %edi
	je	L1273
	movl	$LC64, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L1274
L1239:
	movl	_osd, %esi
	movl	$LC65, 8(%eax)
	movl	$__ZL16osdfunc_fileinfoPK13osdfuncparm_t, 12(%eax)
	testl	%esi, %esi
	je	L1275
	movl	$LC66, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L1276
L1241:
	movl	_osd, %ebx
	movl	$LC67, 8(%eax)
	movl	$__ZL12osdfunc_helpPK13osdfuncparm_t, 12(%eax)
	testl	%ebx, %ebx
	je	L1277
	movl	$LC68, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L1278
L1243:
	movl	_osd, %ecx
	movl	$LC69, 8(%eax)
	movl	$__ZL15osdfunc_historyPK13osdfuncparm_t, 12(%eax)
	testl	%ecx, %ecx
	je	L1279
	movl	$LC70, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L1280
L1245:
	movl	_osd, %edx
	movl	$LC71, 8(%eax)
	movl	$__ZL19osdfunc_listsymbolsPK13osdfuncparm_t, 12(%eax)
	testl	%edx, %edx
	je	L1281
	movl	$LC72, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L1282
L1247:
	movl	$LC73, 8(%eax)
	movl	$__ZL14osdfunc_togglePK13osdfuncparm_t, 12(%eax)
	movl	_osd, %eax
	testl	%eax, %eax
	je	L1283
	movl	$LC74, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L1284
L1249:
	movl	$LC75, 8(%eax)
	movl	$__ZL15osdfunc_unaliasPK13osdfuncparm_t, 12(%eax)
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
L1221:
	.cfi_restore_state
	movl	$41, 3244(%ebx)
	jmp	L1222
L1264:
	movl	_osd, %eax
	movb	$1, __ZGVZ8OSD_InitvE9cvars_osd
	leal	40(%eax), %edx
	movl	%edx, __ZZ8OSD_InitvE9cvars_osd+8
	leal	1128(%eax), %edx
	movl	%edx, __ZZ8OSD_InitvE9cvars_osd+32
	leal	1124(%eax), %edx
	movl	%edx, __ZZ8OSD_InitvE9cvars_osd+56
	leal	1136(%eax), %edx
	movl	%edx, __ZZ8OSD_InitvE9cvars_osd+80
	leal	1132(%eax), %edx
	movl	%edx, __ZZ8OSD_InitvE9cvars_osd+104
	leal	1120(%eax), %edx
	movl	%edx, __ZZ8OSD_InitvE9cvars_osd+128
	leal	1116(%eax), %edx
	movl	%edx, __ZZ8OSD_InitvE9cvars_osd+152
	leal	1140(%eax), %edx
	movl	%edx, __ZZ8OSD_InitvE9cvars_osd+200
	leal	16(%eax), %edx
	addl	$1084, %eax
	movl	%edx, __ZZ8OSD_InitvE9cvars_osd+224
	movl	%eax, __ZZ8OSD_InitvE9cvars_osd+248
	jmp	L1227
L1284:
	movl	$LC74, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	$LC74, (%eax)
	jmp	L1249
L1270:
	movl	$LC60, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	$LC60, (%eax)
	jmp	L1235
L1271:
	call	__Z8OSD_Initv
	movl	$LC62, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	jne	L1237
L1272:
	movl	$LC62, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	$LC62, (%eax)
	jmp	L1237
L1273:
	call	__Z8OSD_Initv
	movl	$LC64, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	jne	L1239
L1274:
	movl	$LC64, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	$LC64, (%eax)
	jmp	L1239
L1275:
	call	__Z8OSD_Initv
	movl	$LC66, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	jne	L1241
L1276:
	movl	$LC66, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	$LC66, (%eax)
	jmp	L1241
L1277:
	call	__Z8OSD_Initv
	movl	$LC68, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	jne	L1243
	jmp	L1278
L1266:
	movl	$LC56, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	$LC56, (%eax)
	jmp	L1231
L1267:
	call	__Z8OSD_Initv
	movl	$LC58, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	jne	L1233
L1268:
	movl	$LC58, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	$LC58, (%eax)
	jmp	L1233
L1269:
	call	__Z8OSD_Initv
	movl	$LC60, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	jne	L1235
	jmp	L1270
L1265:
	call	__Z8OSD_Initv
	movl	$LC56, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	jne	L1231
	jmp	L1266
L1278:
	movl	$LC68, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	$LC68, (%eax)
	jmp	L1243
L1279:
	call	__Z8OSD_Initv
	movl	$LC70, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	jne	L1245
L1280:
	movl	$LC70, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	$LC70, (%eax)
	jmp	L1245
L1281:
	call	__Z8OSD_Initv
	movl	$LC72, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	jne	L1247
L1282:
	movl	$LC72, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	$LC72, (%eax)
	jmp	L1247
L1283:
	call	__Z8OSD_Initv
	movl	$LC74, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	jne	L1249
	jmp	L1284
L1223:
	movl	$32768, %eax
	call	__Z13handle_memerri
L1225:
	movl	$512, %eax
	call	__Z13handle_memerri
L1215:
	movl	$3252, %eax
	call	__Z13handle_memerri
L1262:
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	movl	$16, %edx
	movl	%edi, %eax
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L1218
	xorl	%ecx, %ecx
	movl	$16, %edx
	movl	%edi, %eax
	call	__Z15mi_heap_try_newP9mi_heap_sjb
	movl	%eax, %ebx
	jmp	L1218
	.cfi_endproc
LFE145:
	.p2align 4
	.globl	__Z16OSD_RegisterCvarP13osdcvardata_tPFiPK13osdfuncparm_tE
	.def	__Z16OSD_RegisterCvarP13osdcvardata_tPFiPK13osdfuncparm_tE;	.scl	2;	.type	32;	.endef
__Z16OSD_RegisterCvarP13osdcvardata_tPFiPK13osdfuncparm_tE:
LFB155:
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
	subl	$20, %esp
	movl	_osd, %edi
	movl	%edx, -20(%ebp)
	testl	%edi, %edi
	je	L1300
L1286:
	movl	1176(%edi), %eax
	leal	1(%eax), %esi
	sall	$4, %esi
	movl	%esi, 4(%esp)
	movl	1180(%edi), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	testl	%eax, %eax
	jne	L1295
	testl	%esi, %esi
	jne	L1287
L1295:
	movl	%eax, 1180(%edi)
	movl	_osd, %eax
	movl	(%ebx), %edx
	movl	1176(%eax), %ecx
	movl	$1, (%esp)
	movl	$__ZL7h_cvars, %eax
	call	_hash_add
	movl	_osd, %ecx
	movl	12(%ebx), %edx
	movl	1176(%ecx), %eax
	movl	1180(%ecx), %esi
	andl	$63, %edx
	movl	%eax, %edi
	sall	$4, %edi
	addl	%esi, %edi
	movl	%edi, -24(%ebp)
	cmpl	$8, %edx
	ja	L1289
	testl	%edx, %edx
	je	L1290
	movl	$278, %edi
	btl	%edx, %edi
	jnc	L1290
	movl	8(%ebx), %eax
	movl	-24(%ebp), %esi
	movl	(%eax), %eax
	movl	%eax, 8(%esi)
	movl	1176(%ecx), %eax
	movl	1180(%ecx), %esi
L1290:
	leal	1(%eax), %edx
	sall	$4, %eax
	movl	%edx, 1176(%ecx)
	movl	%ebx, (%esi,%eax)
	movl	_osd, %eax
	movl	4(%ebx), %esi
	movl	(%ebx), %ebx
	testl	%eax, %eax
	je	L1301
L1293:
	movl	%ebx, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L1302
L1294:
	movl	-20(%ebp), %ebx
	movl	%esi, 8(%eax)
	movl	%ebx, 12(%eax)
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
L1289:
	.cfi_restore_state
	cmpl	$32, %edx
	jne	L1290
	movl	8(%ebx), %eax
	fldl	(%eax)
	movl	-24(%ebp), %eax
	fstpl	8(%eax)
	movl	1176(%ecx), %eax
	movl	1180(%ecx), %esi
	jmp	L1290
	.p2align 4,,10
	.p2align 3
L1287:
	movl	%esi, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1300:
	call	__Z8OSD_Initv
	movl	_osd, %edi
	jmp	L1286
	.p2align 4,,10
	.p2align 3
L1302:
	movl	%ebx, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	%ebx, (%eax)
	jmp	L1294
	.p2align 4,,10
	.p2align 3
L1301:
	call	__Z8OSD_Initv
	jmp	L1293
	.cfi_endproc
LFE155:
	.section .rdata,"dr"
LC80:
	.ascii "Alias listing:\0"
LC81:
	.ascii "     %s '%s'\0"
LC82:
	.ascii "No aliases found.\0"
LC83:
	.ascii "alias %s '%s'\0"
	.align 4
LC84:
	.ascii "Cannot override a function or cvar with an alias!\0"
	.text
	.p2align 4
	.def	__ZL13osdfunc_aliasPK13osdfuncparm_t;	.scl	3;	.type	32;	.endef
__ZL13osdfunc_aliasPK13osdfuncparm_t:
LFB156:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %eax
	movl	%ebx, 28(%esp)
	movl	%esi, 32(%esp)
	movl	%edi, 36(%esp)
	movl	(%eax), %eax
	testl	%eax, %eax
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	jle	L1349
	movl	_osd, %edi
	movl	48(%esp), %ecx
	movl	%ebp, 40(%esp)
	.cfi_offset 5, -8
	leal	1188(%edi), %ebx
	movl	8(%ecx), %ebp
	cmpl	$1, %eax
	je	L1312
	addl	$3236, %edi
	jmp	L1317
	.p2align 4,,10
	.p2align 3
L1350:
	movl	(%esi), %eax
	movl	%eax, 4(%esp)
	movl	0(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L1314
	movl	12(%esi), %eax
	cmpl	$57005, %eax
	je	L1314
	cmpl	$4919, %eax
	jne	L1315
L1314:
	addl	$4, %ebx
	cmpl	%edi, %ebx
	je	L1313
L1317:
	movl	(%ebx), %esi
	testl	%esi, %esi
	jne	L1350
L1313:
	movl	4(%ebp), %edi
	movl	%edi, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %edx
	movl	%eax, %esi
	movl	%edx, (%esp)
	movl	%edx, 24(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 44
	subl	$4, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1321
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	48(%esp), %eax
	movb	$0, (%ebx,%esi)
	movl	8(%eax), %eax
	movl	(%eax), %edi
	movl	%edi, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %edx
	movl	%eax, %ebp
	movl	%edx, (%esp)
	movl	%edx, 24(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 44
	subl	$4, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	%eax, %esi
	movl	24(%esp), %edx
	je	L1351
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movb	$0, (%esi,%ebp)
	movl	_osd, %edx
	testl	%edx, %edx
	je	L1352
L1324:
	movl	%esi, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L1353
L1325:
	movl	%ebx, 8(%eax)
	movl	$4919, 12(%eax)
	movl	_osd, %eax
	movl	3240(%eax), %eax
	testl	%eax, %eax
	je	L1354
L1348:
	movl	40(%esp), %ebp
	.cfi_restore 5
L1311:
	movl	28(%esp), %ebx
	movl	32(%esp), %esi
	xorl	%eax, %eax
	movl	36(%esp), %edi
	addl	$44, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L1321:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	24(%esp), %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1349:
	.cfi_restore 5
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L1305
	movl	$LC80, 12(%esp)
	movl	$443, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L1305:
	movl	_osd, %esi
	xorl	%edi, %edi
	leal	1188(%esi), %ebx
	addl	$3236, %esi
	jmp	L1310
	.p2align 4,,10
	.p2align 3
L1307:
	addl	$4, %ebx
	cmpl	%ebx, %esi
	je	L1306
L1310:
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L1306
	cmpl	$4919, 12(%eax)
	jne	L1307
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	addl	$1, %edi
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L1307
	movl	8(%eax), %edx
	movl	%edx, 20(%esp)
	movl	(%eax), %eax
	movl	$LC81, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$452, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1307
	.p2align 4,,10
	.p2align 3
L1306:
	testl	%edi, %edi
	jne	L1311
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L1311
	movl	$LC82, 12(%esp)
	movl	$457, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1311
L1354:
	.cfi_offset 5, -8
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L1348
	movl	48(%esp), %eax
	movl	12(%eax), %eax
	movl	$LC4, 12(%esp)
	movl	$488, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	40(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L1311
L1315:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L1348
	movl	$LC84, 12(%esp)
	movl	$479, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	40(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L1311
L1353:
	.cfi_restore_state
	movl	%esi, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	%esi, (%eax)
	jmp	L1325
L1352:
	call	__Z8OSD_Initv
	jmp	L1324
L1351:
	movl	%edx, %eax
	call	__Z13handle_memerri
L1312:
	leal	3236(%edi), %eax
	movl	%eax, 24(%esp)
	.p2align 4
	.p2align 3
L1320:
	movl	(%ebx), %esi
	testl	%esi, %esi
	je	L1313
	movl	(%esi), %edi
	movl	%edi, 4(%esp)
	movl	0(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L1318
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$4919, 12(%esi)
	je	L1355
	testl	%eax, %eax
	js	L1348
	movl	%edi, 16(%esp)
	movl	$LC14, 12(%esp)
	movl	$473, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	40(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L1311
	.p2align 4,,10
	.p2align 3
L1318:
	.cfi_restore_state
	addl	$4, %ebx
	cmpl	24(%esp), %ebx
	jne	L1320
	jmp	L1313
	.p2align 4,,10
	.p2align 3
L1355:
	testl	%eax, %eax
	js	L1348
	movl	8(%esi), %eax
	movl	%edi, 16(%esp)
	movl	$LC83, 12(%esp)
	movl	%eax, 20(%esp)
	movl	$471, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	40(%esp), %ebp
	.cfi_restore 5
	jmp	L1311
	.cfi_endproc
LFE156:
	.section .rdata,"dr"
LC85:
	.ascii "  >%s\0"
	.text
	.p2align 4
	.globl	__Z12OSD_DispatchPKcb.constprop.0
	.def	__Z12OSD_DispatchPKcb.constprop.0;	.scl	2;	.type	32;	.endef
__Z12OSD_DispatchPKcb.constprop.0:
LFB158:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%eax, %ebp
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$1076, %esp
	.cfi_def_cfa_offset 1096
	movl	%eax, (%esp)
	movl	%eax, 20(%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %edi
	movl	%eax, %ebx
	movl	%edi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 1092
	subl	$4, %esp
	.cfi_def_cfa_offset 1096
	testl	%eax, %eax
	je	L1357
	movl	%ebp, 4(%esp)
	movl	%eax, %esi
	movl	%eax, (%esp)
	call	_strcpy
	movb	$0, (%esi,%ebx)
	movl	_osd, %eax
	movl	3240(%eax), %ecx
	testl	%ecx, %ecx
	je	L1358
L1359:
	movl	%esi, 24(%esp)
	movl	%esi, %ebx
	.p2align 4
	.p2align 3
L1376:
	movl	%ebx, %eax
	leal	32(%esp), %ecx
	leal	28(%esp), %edx
	call	__ZL12osd_strtokenPcPS_Pi
	movl	28(%esp), %ebx
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1361
	cmpb	$47, (%eax)
	jne	L1362
	cmpb	$47, 1(%eax)
	je	L1375
L1362:
	movl	%edi, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1397
	leal	52(%esp), %eax
	movl	$1024, 8(%esp)
	xorl	%ebp, %ebp
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
L1367:
	cmpl	$256, %ebp
	setne	%bl
	.p2align 4
	.p2align 3
L1388:
	movl	28(%esp), %eax
	testl	%eax, %eax
	je	L1369
	movl	32(%esp), %edx
	testl	%edx, %edx
	jne	L1369
	xorl	%eax, %eax
	leal	32(%esp), %ecx
	leal	28(%esp), %edx
	call	__ZL12osd_strtokenPcPS_Pi
	testl	%eax, %eax
	je	L1388
	testb	%bl, %bl
	je	L1388
	addl	$1, %ebp
	movl	%eax, 48(%esp,%ebp,4)
	jmp	L1367
	.p2align 4,,10
	.p2align 3
L1369:
	movl	%eax, %ebx
	leal	52(%esp), %eax
	movl	%ebp, 36(%esp)
	movl	%eax, 44(%esp)
	movl	20(%esp), %eax
	movl	%edi, 40(%esp)
	movl	%eax, 48(%esp)
	movl	12(%esi), %eax
	cmpl	$4919, %eax
	je	L1398
	cmpl	$57005, %eax
	je	L1361
	leal	36(%esp), %edi
	movl	%edi, (%esp)
	call	*%eax
	cmpl	$1, %eax
	je	L1399
L1361:
	testl	%ebx, %ebx
	je	L1375
	movl	32(%esp), %eax
	testl	%eax, %eax
	jne	L1376
L1375:
	movl	24(%esp), %esi
L1396:
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 1092
	subl	$4, %esp
	.cfi_def_cfa_offset 1096
	addl	$1076, %esp
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
L1398:
	.cfi_restore_state
	movl	8(%esi), %eax
	call	__Z12OSD_DispatchPKcb.constprop.0
	jmp	L1361
L1399:
	movl	(%esi), %edx
	movl	$__ZL7h_cvars, %eax
	call	_hash_findcase
	testl	%eax, %eax
	js	L1373
	call	__ZL16osdfunc_printvari.isra.0
	jmp	L1361
L1358:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L1359
	movl	20(%esp), %eax
	movl	$LC85, 12(%esp)
	movl	$2022, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1359
L1397:
	movl	%edi, (%esp)
	movl	24(%esp), %esi
	call	_strlen
	cmpl	$9, %eax
	ja	L1400
L1365:
	cmpb	$0, _m32_osd_tryscript
	jne	L1396
	movl	_osd, %eax
	movl	%edi, 8(%esp)
	movl	1112(%eax), %eax
	movl	$LC52, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L1396
L1400:
	movl	$9, 8(%esp)
	movl	$__ZZ12OSD_DispatchPKcbE11s_gamefunc_, 4(%esp)
	movl	%edi, (%esp)
	call	_strncmp
	testl	%eax, %eax
	je	L1396
	jmp	L1365
L1373:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L1361
	movl	8(%esi), %eax
	movl	$LC4, 12(%esp)
	movl	$2083, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1361
L1357:
	movl	%edi, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE158:
	.section .rdata,"dr"
LC86:
	.ascii "Executing %s\0"
LC87:
	.ascii "\15\12\0"
LC88:
	.ascii "Error reading '%s'!\0"
	.text
	.p2align 4
	.globl	__Z8OSD_ExecPKc
	.def	__Z8OSD_ExecPKc;	.scl	2;	.type	32;	.endef
__Z8OSD_ExecPKc:
LFB161:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	%ebx, 28(%esp)
	movl	%esi, 32(%esp)
	movl	%edi, 36(%esp)
	movl	$0, 24(%esp)
	testl	%eax, %eax
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	je	L1403
	xorl	%edx, %edx
	movl	%eax, %edi
	call	_kopen4load.part.0
	movl	%eax, %esi
	cmpl	$-1, %eax
	jne	L1422
L1403:
	movl	$1, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 44
	subl	$4, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1423
L1413:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 44
	movl	$1, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 48
	movl	28(%esp), %ebx
	movl	32(%esp), %esi
	movl	36(%esp), %edi
	addl	$44, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1423:
	.cfi_restore_state
	movl	%ebp, 40(%esp)
	movl	$1, %edx
	.cfi_offset 5, -8
L1415:
	movl	%edx, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1422:
	.cfi_restore 5
	movl	%ebp, 40(%esp)
	.cfi_offset 5, -8
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	movl	%eax, %ebp
	leal	1(%eax), %edx
	testl	%eax, %eax
	jg	L1424
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, 20(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 44
	subl	$4, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, %ebx
	movl	20(%esp), %edx
	testl	%eax, %eax
	je	L1415
L1410:
	movl	%esi, %eax
	call	_kclose
	movl	40(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L1413
	.p2align 4,,10
	.p2align 3
L1424:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	testl	%eax, %eax
	jns	L1425
L1405:
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, 20(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 44
	subl	$4, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	%eax, %ebx
	movl	20(%esp), %edx
	je	L1415
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	%ebp, %ecx
	movl	%ebx, %edx
	movl	%esi, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	%eax, %ebp
	je	L1426
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1410
	movl	%edi, 16(%esp)
	movl	$LC88, 12(%esp)
	movl	$197, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1410
	.p2align 4,,10
	.p2align 3
L1425:
	movl	%edi, 16(%esp)
	movl	$LC86, 12(%esp)
	movl	$190, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	movl	%edx, 20(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	20(%esp), %edx
	jmp	L1405
	.p2align 4,,10
	.p2align 3
L1426:
	movl	%esi, %eax
	call	_kclose
	movb	$0, (%ebx,%ebp)
	leal	24(%esp), %ecx
	movl	%ebx, %eax
	movl	$LC87, %edx
	call	_Bstrtoken.constprop.0
	movl	_osd, %edx
	movl	3240(%edx), %ecx
	leal	1(%ecx), %esi
	movl	%esi, 3240(%edx)
	testl	%eax, %eax
	je	L1408
	.p2align 4
	.p2align 3
L1407:
	call	__Z12OSD_DispatchPKcb.constprop.0
	xorl	%eax, %eax
	leal	24(%esp), %ecx
	movl	$LC87, %edx
	call	_Bstrtoken.constprop.0
	testl	%eax, %eax
	jne	L1407
	movl	_osd, %edx
	movl	3240(%edx), %eax
	leal	-1(%eax), %ecx
L1408:
	movl	%ecx, 3240(%edx)
	movl	_g_sm_heap, %ecx
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 44
	xorl	%eax, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 48
	movl	40(%esp), %ebp
	.cfi_restore 5
	movl	28(%esp), %ebx
	movl	32(%esp), %esi
	movl	36(%esp), %edi
	addl	$44, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE161:
	.section .rdata,"dr"
LC89:
	.ascii "exec: file '%s' not found.\0"
	.text
	.p2align 4
	.def	__ZL12osdfunc_execPK13osdfuncparm_t;	.scl	3;	.type	32;	.endef
__ZL12osdfunc_execPK13osdfuncparm_t:
LFB162:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	$1, %eax
	movl	24(%esp), %edx
	cmpl	$1, (%edx)
	je	L1435
L1427:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1435:
	.cfi_restore_state
	movl	8(%edx), %eax
	movl	(%eax), %eax
	call	__Z8OSD_ExecPKc
	movl	24(%esp), %edx
	testl	%eax, %eax
	je	L1427
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-1, %eax
	jge	L1436
	xorl	%eax, %eax
L1437:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1436:
	.cfi_restore_state
	movl	8(%edx), %eax
	movl	(%eax), %eax
	movl	$LC89, 12(%esp)
	movl	$267, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC5, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	xorl	%eax, %eax
	jmp	L1437
	.cfi_endproc
LFE162:
	.section .rdata,"dr"
LC90:
	.ascii "maybe_alloc_palookup\0"
LC91:
	.ascii "source/build/src/palette.cpp\0"
LC92:
	.ascii "NULL palette!\0"
	.align 4
LC93:
	.ascii "fatal_exit(%s) at %s:%d in %s()\12\0"
	.text
	.p2align 4
	.globl	__ZL20maybe_alloc_palookupi.lto_priv.0
	.def	__ZL20maybe_alloc_palookupi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL20maybe_alloc_palookupi.lto_priv.0:
LFB165:
	.cfi_startproc
	movl	_palookup(,%eax,4), %edx
	testl	%edx, %edx
	je	L1439
	testl	%eax, %eax
	je	L1458
	cmpl	_palookup, %edx
	je	L1439
L1458:
	ret
	.p2align 4,,10
	.p2align 3
L1439:
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	subl	$24, %esp
	.cfi_def_cfa_offset 36
	movswl	_numshades, %eax
	movl	_g_sm_heap, %ecx
	movl	$16, 4(%esp)
	addl	$1, %eax
	sall	$8, %eax
	movl	%eax, (%esp)
	movl	%eax, %esi
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj
	.cfi_def_cfa_offset 28
	subl	$8, %esp
	.cfi_def_cfa_offset 36
	movl	%eax, %edx
	testl	%eax, %eax
	je	L1441
	movl	%eax, _palookup(,%ebx,4)
	movswl	_numshades, %eax
	movl	%edx, (%esp)
	addl	$1, %eax
	movl	$0, 4(%esp)
	sall	$8, %eax
	movl	%eax, 8(%esp)
	call	_memset
	movl	_palookup(,%ebx,4), %edx
	testl	%edx, %edx
	je	L1460
L1438:
	addl	$24, %esp
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
L1460:
	.cfi_restore_state
	movl	$LC90, 16(%esp)
	movl	$463, 12(%esp)
	movl	$LC91, 8(%esp)
	movl	$LC92, 4(%esp)
	movl	$LC93, (%esp)
	call	_initprintf
	movl	_g_sm_heap, %eax
	testl	%eax, %eax
	je	L1443
	call	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0
	movl	_g_sm_heap, %edx
	testl	%edx, %edx
	je	L1443
	movl	372(%edx), %eax
	testl	%eax, %eax
	je	L1444
	movl	%edx, 20(%esp)
	call	_mi_free
	movl	20(%esp), %edx
L1444:
	movl	%edx, %eax
	call	_mi_free
L1443:
	movl	$LC92, 4(%esp)
	movl	$0, (%esp)
	call	*__imp__FatalAppExitA@8
	.cfi_def_cfa_offset 28
	subl	$8, %esp
	.cfi_def_cfa_offset 36
	jmp	L1438
	.p2align 4,,10
	.p2align 3
L1441:
	movl	%esi, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE165:
	.p2align 4
	.globl	_paletteSetBlendTable
	.def	_paletteSetBlendTable;	.scl	2;	.type	32;	.endef
_paletteSetBlendTable:
LFB170:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	movl	_blendtable(,%eax,4), %eax
	testl	%eax, %eax
	je	L1465
L1462:
	movl	$65536, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1465:
	.cfi_restore_state
	movl	$65536, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, 12(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	testl	%eax, %eax
	je	L1463
	movl	%eax, _blendtable(,%ebx,4)
	movl	12(%esp), %edx
	jmp	L1462
	.p2align 4,,10
	.p2align 3
L1463:
	movl	$65536, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE170:
	.p2align 4
	.globl	_handle_blend
	.def	_handle_blend;	.scl	2;	.type	32;	.endef
_handle_blend:
LFB172:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	testb	%al, %al
	movl	_glad_glBlendFunc, %eax
	je	L1470
	movzbl	%dl, %edx
	movzbl	%cl, %ecx
	sall	$4, %edx
	leal	_glblend(%edx,%ecx,8), %edx
	movzbl	5(%edx), %ecx
	movl	__ZZ12handle_blendE15blendFuncTokens.lto_priv.0(,%ecx,4), %ecx
	movl	%ecx, 4(%esp)
	movzbl	4(%edx), %edx
	movl	__ZZ12handle_blendE15blendFuncTokens.lto_priv.0(,%edx,4), %edx
	movl	%edx, (%esp)
	call	*%eax
	.cfi_def_cfa_offset 8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1470:
	.cfi_restore_state
	movl	$771, 4(%esp)
	movl	$770, (%esp)
	call	*%eax
	.cfi_def_cfa_offset 8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE172:
	.p2align 4
	.globl	_paletteFreeLookupTable
	.def	_paletteFreeLookupTable;	.scl	2;	.type	32;	.endef
_paletteFreeLookupTable:
LFB174:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	_palookup, %edx
	testl	%eax, %eax
	jne	L1472
	testl	%edx, %edx
	je	L1483
	movl	$1, %eax
	jmp	L1475
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1474:
	addl	$1, %eax
	cmpl	$256, %eax
	je	L1484
L1475:
	cmpl	%edx, _palookup(,%eax,4)
	jne	L1474
	movl	$0, _palookup(,%eax,4)
	addl	$1, %eax
	cmpl	$256, %eax
	jne	L1475
L1484:
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	$0, _palookup
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1472:
	.cfi_restore_state
	movl	_palookup(,%eax,4), %ecx
	cmpl	%edx, %ecx
	je	L1483
	movl	%ecx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%eax, 4(%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	4(%esp), %eax
L1483:
	movl	$0, _palookup(,%eax,4)
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE174:
	.p2align 4
	.globl	_paletteSetColorTable
	.def	_paletteSetColorTable;	.scl	2;	.type	32;	.endef
_paletteSetColorTable:
LFB176:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	movl	_basepaltable(,%eax,4), %eax
	testl	%eax, %eax
	je	L1490
L1486:
	movl	$768, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	cmpl	$2, _rendmode
	jg	L1491
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1491:
	.cfi_restore_state
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z17uploadbasepalettei
	.p2align 4,,10
	.p2align 3
L1490:
	.cfi_restore_state
	movl	$768, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, 12(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	testl	%eax, %eax
	je	L1487
	movl	%eax, _basepaltable(,%ebx,4)
	movl	12(%esp), %edx
	jmp	L1486
	.p2align 4,,10
	.p2align 3
L1487:
	movl	$768, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE176:
	.p2align 4
	.globl	_videoSetPalette.constprop.0
	.def	_videoSetPalette.constprop.0;	.scl	2;	.type	32;	.endef
_videoSetPalette.constprop.0:
LFB178:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movzbl	%al, %edx
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
	movzbl	_curbasepal, %eax
	movl	_basepaltable, %ebx
	movb	$0, _curbasepal
	movb	%al, 6(%esp)
	movzbl	_basepalreset, %eax
	movb	$0, _basepalreset
	movb	%al, 7(%esp)
	movl	$15, %eax
	cmpb	%al, %dl
	cmovbe	%edx, %eax
	testb	%dl, %dl
	cmove	%edx, %eax
	movl	%eax, _curbrightness
	call	_videoSetGamma
	movl	_rendmode, %ecx
	testl	%ecx, %ecx
	je	L1494
	movl	_gammabrightness, %eax
	xorl	%edi, %edi
	testl	%eax, %eax
	je	L1494
L1495:
	movl	%ecx, (%esp)
	sall	$8, %edi
	movl	%ebx, %edx
	xorl	%eax, %eax
	addl	$_britable, %edi
	.p2align 4
	.p2align 3
L1496:
	movzbl	(%edx), %esi
	addl	$3, %edx
	movl	%esi, %ecx
	movb	%cl, _curpalette(,%eax,4)
	movzbl	-2(%edx), %ebp
	movl	%ebp, %ebx
	movb	%bl, _curpalette+1(,%eax,4)
	movzbl	-1(%edx), %ebx
	movb	$0, _curpalette+3(,%eax,4)
	movb	%bl, _curpalette+2(,%eax,4)
	movzbl	(%edi,%ebx), %ebx
	movb	$0, _curpalettefaded+3(,%eax,4)
	movb	%bl, _curpalettefaded+2(,%eax,4)
	movl	%ebp, %ebx
	movzbl	%bl, %ebp
	movzbl	(%edi,%ebp), %ebx
	movb	%bl, _curpalettefaded+1(,%eax,4)
	movzbl	(%edi,%esi), %ebx
	movb	%bl, _curpalettefaded(,%eax,4)
	addl	$1, %eax
	cmpl	$256, %eax
	jne	L1496
	movl	$1024, %edx
	movl	$_curpalettefaded, %eax
	call	_XXH3_hashLong_64b_default.constprop.0
	movl	__ZZ15videoSetPaletteE14lastpalettesum, %edi
	movl	__ZZ15videoSetPaletteE14lastpalettesum+4, %ebp
	movl	%eax, %esi
	movl	%edx, %ebx
	movl	(%esp), %ecx
	movl	%edi, %eax
	movl	%ebp, %edx
	xorl	%esi, %eax
	xorl	%ebx, %edx
	orl	%edx, %eax
	jne	L1497
	movl	_g_lastpalettesum, %eax
	movl	_g_lastpalettesum+4, %edx
	xorl	%edi, %eax
	xorl	%ebp, %edx
	orl	%edx, %eax
	je	L1498
L1497:
	cmpl	$8, _bpp
	jg	L1498
	cmpb	$0, _nogl
	je	L1514
	movl	__ZL11sdl_surface.lto_priv.0, %eax
	testl	%eax, %eax
	je	L1498
	movl	__ZL6buffer.lto_priv.1, %edx
	testl	%edx, %edx
	je	L1498
	movl	4(%eax), %eax
	movl	20(%eax), %ecx
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	call	__Z22softsurface_setPalettePvjjj.part.0.constprop.0
	movl	_rendmode, %ecx
L1498:
	movl	%esi, __ZZ15videoSetPaletteE14lastpalettesum
	movl	%ebx, __ZZ15videoSetPaletteE14lastpalettesum+4
	movl	%esi, _g_lastpalettesum
	movl	%ebx, _g_lastpalettesum+4
	cmpl	$2, %ecx
	jle	L1501
	movzbl	6(%esp), %eax
	orb	7(%esp), %al
	je	L1515
L1502:
	movl	$2, %eax
	call	__Z19gltexinvalidatetypei
	movl	$3, %eax
	call	__Z19gltexinvalidatetypei
	cmpl	$4, _rendmode
	je	L1516
L1501:
	xorl	%eax, %eax
	movb	$0, _palfadergb+2
	movw	%ax, _palfadergb
	movb	$0, _palfadedelta
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
L1494:
	.cfi_restore_state
	movl	_curbrightness, %edi
	jmp	L1495
L1515:
	xorl	%esi, %edi
	xorl	%ebx, %ebp
	orl	%ebp, %edi
	je	L1501
	movl	_gammabrightness, %edx
	testl	%edx, %edx
	jne	L1501
	jmp	L1502
L1514:
	movl	__ZL6buffer.lto_priv.0, %eax
	testl	%eax, %eax
	je	L1498
	call	__Z20glsurface_setPalettePv.part.0.constprop.0
	movl	_rendmode, %ecx
	jmp	L1498
L1516:
	call	_polymer_texinvalidate
	jmp	L1501
	.cfi_endproc
LFE178:
	.p2align 4
	.globl	_paletteGetColor
	.def	_paletteGetColor;	.scl	2;	.type	32;	.endef
_paletteGetColor:
LFB188:
	.cfi_startproc
	movl	_gammabrightness, %ecx
	testl	%ecx, %ecx
	je	L1518
	movl	_rendmode, %edx
	testl	%edx, %edx
	jne	L1523
L1518:
	movl	_curbrightness, %edx
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movzbl	_curpalette+1(,%eax,4), %ebx
	movzbl	_curpalette+2(,%eax,4), %ecx
	movzbl	_curpalette(,%eax,4), %esi
	sall	$8, %edx
	movzbl	_britable(%edx,%esi), %eax
	movb	_britable(%ebx,%edx), %ah
	movzbl	_britable(%edx,%ecx), %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	movzwl	%ax, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	sall	$16, %edx
	orl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1523:
	movl	_curpalette(,%eax,4), %eax
	ret
	.cfi_endproc
LFE188:
	.p2align 4
	.globl	_paletteMakeLookupTable.part.0
	.def	_paletteMakeLookupTable.part.0;	.scl	2;	.type	32;	.endef
_paletteMakeLookupTable.part.0:
LFB189:
	.cfi_startproc
	subl	$80, %esp
	.cfi_def_cfa_offset 84
	movl	%edi, 72(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	movzbl	92(%esp), %eax
	movl	%ebx, 64(%esp)
	.cfi_offset 3, -20
	movzbl	84(%esp), %ebx
	orb	88(%esp), %bl
	movl	%edx, 28(%esp)
	movb	%cl, 59(%esp)
	orl	%ecx, %ebx
	movb	%al, _g_noFloorPal(%edi)
	testl	%edx, %edx
	je	L1547
	movl	%edi, %eax
	call	__ZL20maybe_alloc_palookupi.lto_priv.0
	testb	%bl, %bl
	jne	L1531
	cmpw	$0, _numshades
	jle	L1532
	movl	%ebp, 76(%esp)
	movl	$256, %ebx
	xorl	%ecx, %ecx
	movl	%esi, 68(%esp)
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	28(%esp), %esi
L1533:
	movl	%ecx, 16(%esp)
	leal	-256(%ebx), %eax
	movl	%eax, %ebp
	.p2align 6
	.p2align 4
	.p2align 3
L1534:
	movl	_palookup, %ecx
	movzbl	(%esi,%eax), %edx
	addl	%ebp, %ecx
	movzbl	(%ecx,%edx), %ecx
	movl	_palookup(,%edi,4), %edx
	movb	%cl, (%edx,%eax)
	addl	$1, %eax
	cmpl	%eax, %ebx
	jne	L1534
	movl	16(%esp), %ecx
	movswl	_numshades, %eax
	subl	$256, %esi
	addl	$256, %ebx
	addl	$1, %ecx
	cmpl	%eax, %ecx
	jl	L1533
	movl	68(%esp), %esi
	.cfi_restore 6
	movl	76(%esp), %ebp
	.cfi_restore 5
L1532:
	movzbl	59(%esp), %eax
	movb	%al, _palookupfog(,%edi,4)
	movzbl	84(%esp), %eax
	movb	%al, _palookupfog+1(,%edi,4)
	movzbl	88(%esp), %eax
	movb	%al, _palookupfog+2(,%edi,4)
	movl	64(%esp), %ebx
	movl	72(%esp), %edi
	addl	$80, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L1547:
	.cfi_restore_state
	testb	%bl, %bl
	je	L1548
	cmpb	$1, __ZZ22paletteMakeLookupTableE5idmap
	je	L1549
L1543:
	movl	%edi, %eax
	call	__ZL20maybe_alloc_palookupi.lto_priv.0
	movl	$__ZZ22paletteMakeLookupTableE5idmap, 28(%esp)
L1531:
	movswl	_numshades, %eax
	testl	%eax, %eax
	jle	L1532
	movl	%ebp, 76(%esp)
	.cfi_offset 5, -8
	xorl	%ebp, %ebp
	movl	%esi, 68(%esp)
	.cfi_offset 6, -16
	movl	_palookup(,%edi,4), %esi
	movl	$0, 44(%esp)
	movl	%esi, 24(%esp)
	movzbl	88(%esp), %esi
	movl	$0, 48(%esp)
	movl	%esi, 32(%esp)
	movzbl	84(%esp), %esi
	movl	%edi, 60(%esp)
	movl	%esi, 36(%esp)
	movzbl	59(%esp), %esi
	movl	%esi, 40(%esp)
L1536:
	subl	$1, %eax
	movl	48(%esp), %edx
	xorl	%edi, %edi
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	44(%esp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_tabledivide64.lto_priv.6
	movl	%ebp, 52(%esp)
	movl	%eax, 16(%esp)
	.p2align 4
	.p2align 3
L1535:
	movl	28(%esp), %eax
	movl	16(%esp), %edx
	movzbl	(%eax,%edi), %eax
	leal	(%eax,%eax,2), %esi
	movl	32(%esp), %eax
	movzbl	_palette+2(%esi), %ebx
	subl	%ebx, %eax
/APP
 # 612 "source/build/src/palette.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movzbl	_palette+1(%esi), %ebp
	movl	16(%esp), %edx
	movl	%eax, 20(%esp)
	movl	36(%esp), %eax
	subl	%ebp, %eax
/APP
 # 611 "source/build/src/palette.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movzbl	_palette(%esi), %esi
	movl	%eax, %ecx
	movl	40(%esp), %eax
	movl	16(%esp), %edx
	subl	%esi, %eax
/APP
 # 610 "source/build/src/palette.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$0, 4(%esp)
	addl	20(%esp), %ebx
	leal	0(%ebp,%ecx), %edx
	addl	%esi, %eax
	movl	$255, (%esp)
	movl	%ebx, %ecx
	call	_paletteGetClosestColorWithBlacklist
	movl	24(%esp), %ebx
	movb	%al, (%ebx,%edi)
	addl	$1, %edi
	cmpl	$256, %edi
	jne	L1535
	movl	52(%esp), %ebp
	movswl	_numshades, %eax
	addl	$256, 24(%esp)
	addl	$1, %ebp
	addl	$65536, 44(%esp)
	adcl	$0, 48(%esp)
	cmpl	%ebp, %eax
	jg	L1536
	movl	60(%esp), %edi
	movl	68(%esp), %esi
	.cfi_restore 6
	movl	76(%esp), %ebp
	.cfi_restore 5
	jmp	L1532
L1548:
	movl	_palookup, %eax
	movl	%eax, _palookup(,%edi,4)
	movl	64(%esp), %ebx
	movl	72(%esp), %edi
	addl	$80, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L1549:
	.cfi_restore_state
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1529:
	movb	%al, __ZZ22paletteMakeLookupTableE5idmap(%eax)
	leal	1(%eax), %edx
	addl	$2, %eax
	movb	%dl, __ZZ22paletteMakeLookupTableE5idmap(%edx)
	cmpl	$256, %eax
	jne	L1529
	jmp	L1543
	.cfi_endproc
LFE189:
	.p2align 4
	.globl	__ZL15png_write_chunkjPKcPKhj.lto_priv.0
	.def	__ZL15png_write_chunkjPKcPKhj.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL15png_write_chunkjPKcPKhj.lto_priv.0:
LFB190:
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
	movl	%edx, %ebx
	subl	$212, %esp
	movl	%eax, -132(%ebp)
	movl	(%edi), %eax
	movl	%ecx, -136(%ebp)
	movl	_g_sm_heap, %ecx
	movl	%eax, -172(%ebp)
	testl	%eax, %eax
	jne	L1799
	movl	-132(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -176(%ebp)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1666
	movl	-176(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	_memset
	movl	(%ebx), %eax
	movl	-132(%ebp), %edi
	movl	%eax, (%esi)
	leal	4(%esi), %eax
	movl	%edi, 8(%esp)
	movl	-136(%ebp), %edi
	movl	%eax, (%esp)
	movl	%edi, 4(%esp)
	call	_memcpy
L1664:
	movl	-132(%ebp), %eax
	leal	-72(%ebp), %ebx
	bswap	%eax
	movl	%eax, -72(%ebp)
	movl	_png+4, %eax
	movl	%ebx, (%esp)
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	$4, 4(%esp)
	call	_fwrite
	movl	_png+4, %eax
	movl	$1, 8(%esp)
	movl	%eax, 12(%esp)
	movl	-176(%ebp), %edi
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	_fwrite
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	_Bcrc32
	movl	%edi, %edx
	movl	%eax, %ecx
	movl	%esi, %eax
	call	_Bcrc32
	bswap	%eax
	movl	%eax, -72(%ebp)
	movl	_png+4, %eax
	movl	%ebx, (%esp)
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	$4, 4(%esp)
	call	_fwrite
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
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
L1799:
	.cfi_restore_state
	movl	-132(%ebp), %edi
	movl	$138547365, %eax
	movl	%edi, %edx
	shrl	$10, %edx
	mull	%edx
	leal	5(%edx,%edx,4), %eax
	leal	128(%edi,%eax), %esi
	imull	$110, %edi, %eax
	movl	$1374389535, %edi
	mull	%edi
	shrl	$5, %edx
	subl	$-128, %edx
	cmpl	%edx, %esi
	cmovnb	%esi, %edx
	leal	4(%edx), %eax
	movl	%edx, -200(%ebp)
	movl	%eax, -176(%ebp)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1666
	movl	-176(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	_memset
	movl	(%ebx), %eax
	movl	%eax, (%esi)
	xorl	%eax, %eax
	movl	$0, -72(%ebp)
	movl	$0, -68(%ebp)
L1660:
	movl	$0, -64(%ebp,%eax)
	movl	$0, -60(%ebp,%eax)
	movl	$0, -56(%ebp,%eax)
	movl	$0, -52(%ebp,%eax)
	addl	$16, %eax
	cmpl	$48, %eax
	jb	L1660
	movss	LC98, %xmm0
	movl	$_miniz_def_free_func, -84(%ebp)
	movss	-84(%ebp), %xmm1
	movl	$1, -24(%ebp)
	unpcklps	%xmm1, %xmm0
	movlps	%xmm0, -40(%ebp)
	movl	$319296, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1800
	leal	-80(%ebp), %eax
	movl	$44, %edx
	movl	$0, (%edi)
	movl	%eax, -84(%ebp)
	leal	-76(%ebp), %eax
	movss	-84(%ebp), %xmm3
	movl	%eax, -84(%ebp)
	leal	4(%esi), %eax
	movss	-84(%ebp), %xmm4
	movl	%eax, -168(%ebp)
	movl	$28800, %eax
	movl	%eax, 8(%edi)
	unpcklps	%xmm4, %xmm3
	leal	168562(%edi), %eax
	movl	%edx, 12(%edi)
	movlps	%xmm3, -192(%ebp)
	movl	$0, 4(%edi)
	movl	$1, 20(%edi)
	movl	$12, 16(%edi)
	movl	$65536, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movups	LC95, %xmm0
	leal	37491(%edi), %eax
	movl	$0, 104(%edi)
	movl	%eax, 40(%edi)
	leal	37490(%edi), %eax
	movups	%xmm0, 56(%edi)
	xorps	%xmm0, %xmm0
	movl	%eax, -180(%ebp)
	movl	%eax, 44(%edi)
	leal	234098(%edi), %eax
	movups	%xmm0, 72(%edi)
	movups	%xmm0, 88(%edi)
	movups	LC96, %xmm0
	movl	%eax, 48(%edi)
	movl	%eax, 52(%edi)
	leal	144(%edi), %eax
	movups	%xmm0, 24(%edi)
	movb	$0, 37490(%edi)
	movl	$0, 108(%edi)
	movl	%eax, -144(%ebp)
	movl	$33025, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	leal	33170(%edi), %eax
	movl	$576, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	xorl	%eax, %eax
	movl	$0, 33794(%edi)
	movl	$0, 33798(%edi)
	movl	$0, 33802(%edi)
	movl	$0, 33806(%edi)
L1553:
	movl	$0, 33746(%edi,%eax)
	movl	$0, 33750(%edi,%eax)
	movl	$0, 33754(%edi,%eax)
	movl	$0, 33758(%edi,%eax)
	addl	$16, %eax
	cmpl	$48, %eax
	jb	L1553
	movl	-200(%ebp), %eax
	movl	%esi, -204(%ebp)
	movl	$0, -196(%ebp)
	movl	%eax, -140(%ebp)
	jmp	L1659
	.p2align 4,,10
	.p2align 3
L1656:
	movl	%edi, %eax
	call	_tdefl_flush_output_buffer.lto_priv.0
	movl	-80(%ebp), %edx
	addl	%edx, -136(%ebp)
	subl	%edx, -132(%ebp)
	movl	-76(%ebp), %edx
	addl	%edx, -168(%ebp)
	subl	%edx, -140(%ebp)
	addl	%edx, -196(%ebp)
	movl	24(%edi), %edx
	movl	%eax, 108(%edi)
	movl	%edx, -24(%ebp)
L1560:
	cmpl	$1, %eax
	je	L1658
	movl	-140(%ebp), %edx
	testl	%edx, %edx
	je	L1788
L1659:
	movl	-132(%ebp), %eax
	movl	-168(%ebp), %esi
	movl	$0, 140(%edi)
	movl	-140(%ebp), %ebx
	movl	-136(%ebp), %ecx
	movl	$4, 128(%edi)
	movl	%eax, -80(%ebp)
	movlps	-192(%ebp), %xmm2
	movl	%ebx, -76(%ebp)
	movl	%esi, 116(%edi)
	movl	(%edi), %esi
	movl	%ecx, 112(%edi)
	movl	%ecx, 132(%edi)
	movl	%eax, 136(%edi)
	movlps	%xmm2, 120(%edi)
	testl	%esi, %esi
	jne	L1555
	movl	108(%edi), %ebx
	testl	%ebx, %ebx
	jne	L1555
	testl	%eax, %eax
	setne	%dl
	testl	%ecx, %ecx
	sete	%al
	testb	%al, %dl
	jne	L1555
	movl	92(%edi), %ecx
	orl	$1, 104(%edi)
	testl	%ecx, %ecx
	jne	L1656
	movl	96(%edi), %eax
	movl	%eax, -184(%ebp)
	testl	%eax, %eax
	jne	L1656
	movl	-132(%ebp), %eax
	movl	32(%edi), %ecx
	movl	%eax, -96(%ebp)
	movl	-136(%ebp), %eax
	movl	%eax, -84(%ebp)
	.p2align 4
	.p2align 3
L1559:
	movl	-96(%ebp), %eax
	testl	%eax, %eax
	jne	L1643
L1806:
	testl	%ecx, %ecx
	je	L1801
	movl	36(%edi), %eax
	movl	%eax, -100(%ebp)
	addl	%ecx, %eax
	cmpl	$1, %eax
	jbe	L1802
L1561:
	movl	28(%edi), %eax
	movl	-96(%ebp), %ebx
	movl	-84(%ebp), %edx
	movl	%eax, -88(%ebp)
	movl	$258, %eax
	subl	%ecx, %eax
	cmpl	%ebx, %eax
	cmova	%ebx, %eax
	leal	(%eax,%ecx), %esi
	subl	%eax, %ebx
	movl	%esi, -104(%ebp)
	movl	%ebx, -96(%ebp)
	testl	%edx, %edx
	je	L1803
	movl	-88(%ebp), %esi
	leal	(%esi,%ecx), %ebx
	movl	-104(%ebp), %esi
	leal	-2(%ebx), %ecx
	movl	%ecx, %edx
	andl	$32767, %edx
	movzbl	144(%edi,%edx), %edx
	movb	%dl, -92(%ebp)
	leal	-1(%ebx), %edx
	andl	$32767, %edx
	movzbl	144(%edi,%edx), %edx
	movl	%esi, 32(%edi)
	movb	%dl, -108(%ebp)
	movl	-84(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -112(%ebp)
	cmpl	%eax, %edx
	je	L1568
	movzbl	-92(%ebp), %eax
	movzbl	-108(%ebp), %esi
	movl	%ebx, %edx
	andl	$32767, %edx
	sall	$5, %eax
	movl	%edx, -116(%ebp)
	movl	-84(%ebp), %edx
	xorl	%esi, %eax
	movl	%ecx, %esi
	movl	%eax, -92(%ebp)
	movl	-112(%ebp), %eax
	subl	%edx, %esi
	subl	%ebx, %edx
	movl	%edx, -108(%ebp)
	movl	-116(%ebp), %edx
	addl	%eax, %esi
	movl	%esi, -84(%ebp)
	.p2align 4
	.p2align 3
L1567:
	movl	-108(%ebp), %esi
	movzbl	2(%esi,%ecx), %ebx
	movb	%bl, 144(%edi,%edx)
	cmpl	$256, %edx
	ja	L1566
	movb	%bl, 32912(%edi,%edx)
L1566:
	movl	-92(%ebp), %eax
	movl	%ecx, %esi
	addl	$1, %edx
	andl	$32767, %esi
	andl	$32767, %edx
	sall	$5, %eax
	xorl	%ebx, %eax
	andl	$32767, %eax
	leal	84280(%eax), %ebx
	movl	%eax, -92(%ebp)
	movzwl	2(%edi,%ebx,2), %eax
	movw	%ax, 103026(%edi,%esi,2)
	movw	%cx, 2(%edi,%ebx,2)
	addl	$1, %ecx
	cmpl	-84(%ebp), %ecx
	jne	L1567
L1568:
	movl	-112(%ebp), %eax
	movl	%eax, -84(%ebp)
L1563:
	movl	-100(%ebp), %ebx
	movl	$32768, %eax
	subl	-104(%ebp), %eax
	movl	80(%edi), %esi
	cmpl	%ebx, %eax
	cmova	%ebx, %eax
	movl	%esi, -116(%ebp)
	movl	%eax, -92(%ebp)
	movl	%eax, 36(%edi)
	testl	%esi, %esi
	jne	L1572
	movl	-88(%ebp), %esi
	movl	8(%edi), %ecx
	andl	$32767, %esi
	movl	%esi, -112(%ebp)
	testl	$589824, %ecx
	je	L1573
	testl	%eax, %eax
	je	L1589
	testl	$524288, %ecx
	je	L1804
L1778:
	movl	-112(%ebp), %ebx
	testl	%ebx, %ebx
	je	L1589
	movl	$0, -128(%ebp)
	movl	$2, %esi
L1614:
	testl	$131072, %ecx
	je	L1613
	cmpl	$5, %esi
	jbe	L1586
L1613:
	movl	-116(%ebp), %eax
	testl	%eax, %eax
	je	L1805
L1611:
	cmpl	%esi, -116(%ebp)
	jnb	L1581
	movl	40(%edi), %edx
	movl	84(%edi), %eax
	addl	$1, 60(%edi)
	leal	1(%edx), %ecx
	movl	%ecx, 40(%edi)
	movb	%al, (%edx)
	movl	44(%edi), %edx
	shrb	(%edx)
	movl	56(%edi), %edx
	movl	40(%edi), %ebx
	subl	$1, %edx
	je	L1617
	movl	%edx, 56(%edi)
L1618:
	movzbl	%al, %eax
	addw	$1, 33170(%edi,%eax,2)
	cmpl	$127, %esi
	jbe	L1619
	leal	-3(%esi), %eax
	movl	-128(%ebp), %ecx
	addl	%esi, 60(%edi)
	movb	%al, (%ebx)
	movl	40(%edi), %eax
	subl	$1, %ecx
	movb	%cl, 1(%eax)
	movl	%ecx, %edx
	movl	40(%edi), %eax
	shrl	$8, %edx
	movb	%dl, 2(%eax)
	movl	44(%edi), %ebx
	addl	$3, 40(%edi)
	movzbl	(%ebx), %eax
	shrb	%al
	orl	$-128, %eax
	movb	%al, (%ebx)
	movl	56(%edi), %eax
	movl	40(%edi), %ebx
	subl	$1, %eax
	je	L1620
	movl	%eax, 56(%edi)
L1621:
	cmpl	$511, %ecx
	ja	L1622
	movzbl	_s_tdefl_small_dist_sym.lto_priv.0(%ecx), %eax
L1623:
	addw	$1, 33746(%edi,%eax,2)
	movzwl	_s_tdefl_len_sym.lto_priv.0-6(%esi,%esi), %eax
	addw	$1, 33170(%edi,%eax,2)
L1794:
	movl	$0, 80(%edi)
L1795:
	movl	28(%edi), %eax
	movl	%eax, -88(%ebp)
	movl	32(%edi), %eax
	movl	%eax, -104(%ebp)
	movl	36(%edi), %eax
	movl	%eax, -92(%ebp)
L1624:
	movl	-88(%ebp), %eax
	movl	-104(%ebp), %ecx
	movl	$32768, %edx
	addl	%esi, %eax
	subl	%esi, %ecx
	movl	%eax, 28(%edi)
	movl	-92(%ebp), %eax
	movl	%ecx, 32(%edi)
	addl	%esi, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	movl	%eax, 36(%edi)
	leal	103018(%edi), %eax
	cmpl	%ebx, %eax
	jb	L1637
	movl	60(%edi), %eax
	cmpl	$31744, %eax
	jbe	L1559
	subl	-180(%ebp), %ebx
	imull	$115, %ebx, %ebx
	shrl	$7, %ebx
	cmpl	%eax, %ebx
	jnb	L1637
	testb	$8, 10(%edi)
	je	L1559
	.p2align 4
	.p2align 3
L1637:
	movl	-84(%ebp), %eax
	xorl	%edx, %edx
	movl	%eax, 132(%edi)
	movl	-96(%ebp), %eax
	movl	%eax, 136(%edi)
	movl	%edi, %eax
	call	_tdefl_flush_block.lto_priv.0
	testl	%eax, %eax
	jne	L1639
	movl	-96(%ebp), %eax
	movl	32(%edi), %ecx
	testl	%eax, %eax
	je	L1806
L1643:
	movl	36(%edi), %eax
	movl	%eax, -100(%ebp)
	addl	%ecx, %eax
	cmpl	$1, %eax
	ja	L1561
	movl	28(%edi), %eax
	movl	%ecx, %edx
	movl	%eax, -88(%ebp)
	leal	-2(%eax,%ecx), %ebx
	jmp	L1562
	.p2align 4,,10
	.p2align 3
L1571:
	addl	$1, -84(%ebp)
	movl	-84(%ebp), %eax
	subl	$1, -96(%ebp)
	movzbl	-1(%eax), %ecx
	movl	-88(%ebp), %eax
	addl	%edx, %eax
	movb	%cl, -104(%ebp)
	andl	$32767, %eax
	movb	%cl, 144(%edi,%eax)
	cmpl	$256, %eax
	ja	L1569
	movb	%cl, 32912(%edi,%eax)
L1569:
	movl	-100(%ebp), %eax
	addl	$1, %edx
	leal	1(%ebx), %ecx
	movl	%edx, 32(%edi)
	addl	%edx, %eax
	movl	%ecx, -92(%ebp)
	cmpl	$2, %eax
	jbe	L1570
	movl	%ecx, %eax
	movl	%ebx, %esi
	andl	$32767, %eax
	andl	$32767, %esi
	movzbl	144(%edi,%eax), %eax
	sall	$5, %eax
	movl	%eax, %ecx
	movzbl	144(%edi,%esi), %eax
	sall	$10, %eax
	xorl	%ecx, %eax
	movzbl	-104(%ebp), %ecx
	xorl	%ecx, %eax
	andl	$32767, %eax
	addl	$84280, %eax
	movzwl	2(%edi,%eax,2), %ecx
	movw	%cx, 103026(%edi,%esi,2)
	movw	%bx, 2(%edi,%eax,2)
L1570:
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %ebx
	testl	%eax, %eax
	je	L1779
L1562:
	cmpl	$257, %edx
	jbe	L1571
L1779:
	movl	%edx, -104(%ebp)
	jmp	L1563
L1666:
	movl	-176(%ebp), %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1572:
	movl	-88(%ebp), %eax
	movl	8(%edi), %ecx
	andl	$32767, %eax
	movl	%eax, -112(%ebp)
	testl	$589824, %ecx
	je	L1577
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L1578
	testl	$524288, %ecx
	je	L1807
L1591:
	cmpl	$3, -116(%ebp)
	jne	L1808
	.p2align 4
	.p2align 3
L1581:
	movl	-116(%ebp), %ebx
	movl	40(%edi), %edx
	movl	76(%edi), %eax
	addl	%ebx, 60(%edi)
	leal	-3(%ebx), %ecx
	movb	%cl, (%edx)
	movl	40(%edi), %edx
	subl	$1, %eax
	movl	%eax, %ecx
	movb	%al, 1(%edx)
	movl	40(%edi), %edx
	shrl	$8, %ecx
	movb	%cl, 2(%edx)
	movl	44(%edi), %ebx
	addl	$3, 40(%edi)
	movzbl	(%ebx), %edx
	shrb	%dl
	orl	$-128, %edx
	movb	%dl, (%ebx)
	movl	56(%edi), %edx
	movl	40(%edi), %ebx
	subl	$1, %edx
	je	L1625
	movl	%edx, 56(%edi)
L1626:
	cmpl	$511, %eax
	ja	L1627
	movzbl	_s_tdefl_small_dist_sym.lto_priv.0(%eax), %eax
L1628:
	addw	$1, 33746(%edi,%eax,2)
	movl	-116(%ebp), %eax
	movzwl	_s_tdefl_len_sym.lto_priv.0-6(%eax,%eax), %eax
	addw	$1, 33170(%edi,%eax,2)
	movl	80(%edi), %eax
	leal	-1(%eax), %esi
	jmp	L1794
	.p2align 4,,10
	.p2align 3
L1573:
	cmpl	$2, -104(%ebp)
	jbe	L1589
	movl	12(%edi), %eax
	subl	$1, %eax
	movl	%eax, -124(%ebp)
	je	L1778
	movl	$2, %esi
L1673:
	movl	-112(%ebp), %eax
	movl	-144(%ebp), %ebx
	movl	$0, -128(%ebp)
	movl	%ecx, -164(%ebp)
	addl	%eax, %ebx
	addl	%esi, %eax
	movzbl	143(%edi,%eax), %edx
	movl	%ebx, -160(%ebp)
	movzbl	144(%edi,%eax), %ebx
	movl	-112(%ebp), %eax
	movb	%dl, -120(%ebp)
	movzwl	-88(%ebp), %edx
	movb	%bl, -100(%ebp)
	movw	%dx, -108(%ebp)
	jmp	L1592
	.p2align 4,,10
	.p2align 3
L1595:
	movzwl	103026(%edi,%eax,2), %eax
	testw	%ax, %ax
	je	L1787
	movzwl	-108(%ebp), %edx
	subl	%eax, %edx
	movzwl	%dx, %edx
	cmpl	%edx, -92(%ebp)
	jb	L1787
	andl	$32767, %eax
	movzbl	-100(%ebp), %ebx
	leal	(%esi,%eax), %ecx
	cmpb	%bl, 144(%edi,%ecx)
	je	L1809
	movzwl	103026(%edi,%eax,2), %eax
	testw	%ax, %ax
	je	L1787
L1811:
	movzwl	-108(%ebp), %edx
	subl	%eax, %edx
	movzwl	%dx, %edx
	cmpl	%edx, -92(%ebp)
	jb	L1787
	andl	$32767, %eax
	movzbl	-100(%ebp), %ebx
	leal	(%esi,%eax), %ecx
	cmpb	%bl, 144(%edi,%ecx)
	je	L1810
L1598:
	subl	$1, -124(%ebp)
	je	L1787
L1592:
	movzwl	103026(%edi,%eax,2), %eax
	testw	%ax, %ax
	je	L1787
	movzwl	-88(%ebp), %edx
	subl	%eax, %edx
	movzwl	%dx, %edx
	cmpl	%edx, -92(%ebp)
	jb	L1787
	andl	$32767, %eax
	movzbl	-100(%ebp), %ebx
	leal	(%esi,%eax), %ecx
	cmpb	%bl, 144(%edi,%ecx)
	jne	L1595
	movzbl	-120(%ebp), %ebx
	cmpb	%bl, 143(%edi,%ecx)
	jne	L1595
L1596:
	testl	%edx, %edx
	je	L1787
	movl	-144(%ebp), %ecx
	movl	%eax, -148(%ebp)
	movl	%esi, -156(%ebp)
	movl	-104(%ebp), %esi
	leal	(%ecx,%eax), %ebx
	movl	-160(%ebp), %eax
	movl	%edx, -152(%ebp)
	xorl	%ecx, %ecx
	movl	%ebx, %edx
	.p2align 4
	.p2align 4
	.p2align 3
L1600:
	movzbl	(%edx,%ecx), %ebx
	cmpb	%bl, (%eax,%ecx)
	jne	L1599
	addl	$1, %ecx
	cmpl	%esi, %ecx
	jne	L1600
	movl	-148(%ebp), %eax
	movl	-152(%ebp), %edx
	movl	-156(%ebp), %esi
	cmpl	-104(%ebp), %esi
	jnb	L1598
L1602:
	movl	-164(%ebp), %ecx
	movl	-104(%ebp), %esi
	movl	%edx, -128(%ebp)
	jmp	L1593
	.p2align 4,,10
	.p2align 3
L1809:
	movzbl	-120(%ebp), %ebx
	cmpb	%bl, 143(%edi,%ecx)
	je	L1596
	movzwl	103026(%edi,%eax,2), %eax
	testw	%ax, %ax
	jne	L1811
	.p2align 4
	.p2align 3
L1787:
	movl	-164(%ebp), %ecx
L1593:
	cmpl	$3, %esi
	je	L1812
L1605:
	movl	-112(%ebp), %ebx
	cmpl	%ebx, -128(%ebp)
	jne	L1614
L1609:
	movl	-116(%ebp), %eax
	testl	%eax, %eax
	jne	L1581
	movl	-128(%ebp), %eax
	movl	%eax, -112(%ebp)
	.p2align 4
	.p2align 3
L1589:
	movl	-112(%ebp), %eax
	movl	40(%edi), %edx
	movzbl	144(%edi,%eax), %eax
	leal	1(%edx), %ecx
	addl	$1, 60(%edi)
	movl	%ecx, 40(%edi)
	movb	%al, (%edx)
	movl	44(%edi), %edx
	shrb	(%edx)
	movl	56(%edi), %edx
	movl	40(%edi), %ebx
	subl	$1, %edx
	je	L1629
	movl	%edx, 56(%edi)
L1630:
	addw	$1, 33170(%edi,%eax,2)
L1796:
	movl	28(%edi), %eax
	movl	-172(%ebp), %esi
	movl	%eax, -88(%ebp)
	movl	32(%edi), %eax
	movl	%eax, -104(%ebp)
	movl	36(%edi), %eax
	movl	%eax, -92(%ebp)
	jmp	L1624
	.p2align 4,,10
	.p2align 3
L1810:
	movzbl	-120(%ebp), %ebx
	cmpb	%bl, 143(%edi,%ecx)
	jne	L1598
	jmp	L1596
	.p2align 4,,10
	.p2align 3
L1577:
	movl	-116(%ebp), %esi
	cmpl	-104(%ebp), %esi
	jnb	L1578
	xorl	%eax, %eax
	cmpl	$31, %esi
	seta	%al
	movl	12(%edi,%eax,4), %eax
	subl	$1, %eax
	movl	%eax, -124(%ebp)
	jne	L1673
	jmp	L1591
	.p2align 4,,10
	.p2align 3
L1812:
	cmpl	$8191, -128(%ebp)
	jbe	L1608
L1586:
	movl	-116(%ebp), %eax
	testl	%eax, %eax
	je	L1589
	jmp	L1581
	.p2align 4,,10
	.p2align 3
L1578:
	cmpl	$3, -116(%ebp)
	je	L1581
	movl	-112(%ebp), %eax
	testl	%eax, %eax
	je	L1581
	andl	$131072, %ecx
	je	L1679
	cmpl	$5, -116(%ebp)
	jbe	L1581
L1679:
	movl	$0, -128(%ebp)
	movl	-116(%ebp), %esi
	jmp	L1611
	.p2align 4,,10
	.p2align 3
L1802:
	movl	28(%edi), %eax
	movl	%ecx, -104(%ebp)
	movl	%eax, -88(%ebp)
	jmp	L1563
	.p2align 4,,10
	.p2align 3
L1803:
	movl	%esi, 32(%edi)
	jmp	L1563
	.p2align 4,,10
	.p2align 3
L1805:
	movl	-128(%ebp), %eax
	testl	%eax, %eax
	je	L1589
	cmpl	$127, %esi
	seta	%dl
L1612:
	movl	%ecx, %eax
	movl	40(%edi), %ebx
	andl	$65536, %eax
	orl	20(%edi), %eax
	jne	L1680
	testb	%dl, %dl
	je	L1631
L1680:
	leal	-3(%esi), %eax
	movl	-128(%ebp), %edx
	addl	%esi, 60(%edi)
	movb	%al, (%ebx)
	movl	40(%edi), %eax
	subl	$1, %edx
	movb	%dl, 1(%eax)
	movl	%edx, %ecx
	movl	40(%edi), %eax
	shrl	$8, %ecx
	movb	%cl, 2(%eax)
	movl	44(%edi), %ebx
	addl	$3, 40(%edi)
	movzbl	(%ebx), %eax
	shrb	%al
	orl	$-128, %eax
	movb	%al, (%ebx)
	movl	56(%edi), %eax
	movl	40(%edi), %ebx
	subl	$1, %eax
	je	L1633
	movl	%eax, 56(%edi)
L1634:
	cmpl	$511, %edx
	ja	L1635
	movzbl	_s_tdefl_small_dist_sym.lto_priv.0(%edx), %eax
L1636:
	addw	$1, 33746(%edi,%eax,2)
	movzwl	_s_tdefl_len_sym.lto_priv.0-6(%esi,%esi), %eax
	addw	$1, 33170(%edi,%eax,2)
	jmp	L1795
	.p2align 4,,10
	.p2align 3
L1599:
	movl	-156(%ebp), %esi
	movl	-148(%ebp), %eax
	movl	-152(%ebp), %edx
	cmpl	%ecx, %esi
	jnb	L1598
	cmpl	-104(%ebp), %ecx
	je	L1602
	movl	-112(%ebp), %esi
	movl	%edx, -128(%ebp)
	addl	%ecx, %esi
	movzbl	144(%edi,%esi), %ebx
	movb	%bl, -100(%ebp)
	movzbl	143(%edi,%esi), %ebx
	movl	%ecx, %esi
	movb	%bl, -120(%ebp)
	jmp	L1598
	.p2align 4,,10
	.p2align 3
L1629:
	leal	1(%ebx), %edx
	movl	%ebx, 44(%edi)
	movl	$8, 56(%edi)
	movl	%edx, %ebx
	movl	%edx, 40(%edi)
	jmp	L1630
	.p2align 4,,10
	.p2align 3
L1619:
	movl	-112(%ebp), %eax
	movzbl	144(%edi,%eax), %eax
	movl	%esi, 80(%edi)
	movl	%eax, 84(%edi)
	movl	-128(%ebp), %eax
	movl	%eax, 76(%edi)
	jmp	L1796
	.p2align 4,,10
	.p2align 3
L1617:
	leal	1(%ebx), %edx
	movl	%ebx, 44(%edi)
	movl	$8, 56(%edi)
	movl	%edx, %ebx
	movl	%edx, 40(%edi)
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1627:
	andl	$127, %ecx
	movzbl	_s_tdefl_large_dist_sym.lto_priv.0(%ecx), %eax
	jmp	L1628
	.p2align 4,,10
	.p2align 3
L1625:
	leal	1(%ebx), %edx
	movl	%ebx, 44(%edi)
	movl	$8, 56(%edi)
	movl	%edx, %ebx
	movl	%edx, 40(%edi)
	jmp	L1626
	.p2align 4,,10
	.p2align 3
L1635:
	andl	$127, %ecx
	movzbl	_s_tdefl_large_dist_sym.lto_priv.0(%ecx), %eax
	jmp	L1636
	.p2align 4,,10
	.p2align 3
L1633:
	leal	1(%ebx), %eax
	movl	%ebx, 44(%edi)
	movl	$8, 56(%edi)
	movl	%eax, %ebx
	movl	%eax, 40(%edi)
	jmp	L1634
	.p2align 4,,10
	.p2align 3
L1622:
	movl	%edx, %eax
	andl	$127, %eax
	movzbl	_s_tdefl_large_dist_sym.lto_priv.0(%eax), %eax
	jmp	L1623
	.p2align 4,,10
	.p2align 3
L1620:
	leal	1(%ebx), %eax
	movl	%ebx, 44(%edi)
	movl	$8, 56(%edi)
	movl	%eax, %ebx
	movl	%eax, 40(%edi)
	jmp	L1621
L1801:
	movl	$0, 136(%edi)
	movl	-84(%ebp), %eax
	movl	%eax, 132(%edi)
	testb	$48, 9(%edi)
	je	L1647
	movl	-136(%ebp), %esi
	testl	%esi, %esi
	je	L1647
L1645:
	movl	24(%edi), %eax
	movl	-136(%ebp), %ebx
	movzwl	%ax, %esi
	shrl	$16, %eax
	movl	%eax, -104(%ebp)
	movl	-84(%ebp), %eax
	subl	%ebx, %eax
	je	L1650
	movl	$1584310703, %edx
	movl	%eax, -148(%ebp)
	movl	-148(%ebp), %ecx
	mull	%edx
	shrl	$11, %edx
	imull	$5552, %edx, %eax
	subl	%eax, %ecx
	movl	%ecx, -112(%ebp)
	cmpl	$7, %ecx
	ja	L1677
	testl	%ecx, %ecx
	je	L1813
	.p2align 4
	.p2align 3
L1652:
	movl	-112(%ebp), %ecx
	movl	-104(%ebp), %edx
	movl	%ebx, -84(%ebp)
	movl	%ebx, %eax
	subl	-184(%ebp), %ecx
	addl	%ebx, %ecx
	.p2align 4
	.p2align 4
	.p2align 3
L1655:
	movzbl	(%eax), %ebx
	addl	$1, %eax
	addl	%ebx, %esi
	addl	%esi, %edx
	cmpl	%ecx, %eax
	jne	L1655
	movl	-112(%ebp), %ebx
	movl	-84(%ebp), %eax
	movl	%edx, -104(%ebp)
	subl	-184(%ebp), %eax
	addl	%eax, %ebx
L1654:
	movl	$-2146992015, %ecx
	movl	%esi, %eax
	mull	%ecx
	shrl	$15, %edx
	imull	$65521, %edx, %eax
	subl	%eax, %esi
	movl	-104(%ebp), %eax
	mull	%ecx
	movl	%edx, %ecx
	shrl	$15, %ecx
	imull	$65521, %ecx, %eax
	movl	-112(%ebp), %ecx
	subl	%eax, -104(%ebp)
	subl	%ecx, -148(%ebp)
	movl	$5552, -112(%ebp)
	je	L1650
L1651:
	movl	-112(%ebp), %eax
	movl	%ebx, -120(%ebp)
	movl	%esi, -84(%ebp)
	leal	-8(%eax), %ecx
	shrl	$3, %eax
	movl	%edi, -128(%ebp)
	leal	-1(%eax), %edx
	leal	(%ebx,%eax,8), %eax
	movl	%ecx, -124(%ebp)
	movl	%eax, -108(%ebp)
	movl	%edx, -116(%ebp)
	movl	%ebx, %edx
	.p2align 4
	.p2align 3
L1653:
	movzbl	(%edx), %eax
	addl	-84(%ebp), %eax
	addl	$8, %edx
	movl	%eax, %esi
	movzbl	-7(%edx), %eax
	movzbl	-5(%edx), %edi
	movl	%esi, -88(%ebp)
	leal	(%eax,%esi), %ecx
	movzbl	-6(%edx), %eax
	movzbl	-4(%edx), %esi
	movl	%ecx, -92(%ebp)
	leal	(%eax,%ecx), %ebx
	movzbl	-2(%edx), %ecx
	movzbl	-1(%edx), %eax
	addl	%ebx, %edi
	movl	%ebx, -96(%ebp)
	movzbl	-3(%edx), %ebx
	addl	%edi, %esi
	addl	%esi, %ebx
	addl	%ebx, %ecx
	addl	%ecx, %eax
	movl	%ecx, -100(%ebp)
	movl	%eax, -84(%ebp)
	movl	-88(%ebp), %eax
	addl	-92(%ebp), %eax
	addl	-96(%ebp), %eax
	addl	%edi, %eax
	movl	-84(%ebp), %edi
	addl	%esi, %eax
	addl	%ebx, %eax
	addl	-100(%ebp), %eax
	addl	%edi, %eax
	addl	%eax, -104(%ebp)
	cmpl	%edx, -108(%ebp)
	jne	L1653
	movl	-124(%ebp), %ecx
	movl	-116(%ebp), %eax
	movl	%edi, %esi
	movl	-120(%ebp), %ebx
	movl	-128(%ebp), %edi
	andl	$-8, %ecx
	leal	8(%ebx,%eax,8), %ebx
	leal	8(%ecx), %eax
	movl	%eax, -184(%ebp)
	cmpl	-112(%ebp), %eax
	jb	L1652
	jmp	L1654
L1804:
	movl	-104(%ebp), %eax
	testl	%eax, %eax
	je	L1589
L1580:
	movl	-112(%ebp), %ebx
	xorl	%esi, %esi
	leal	-1(%ebx), %eax
	andl	$32767, %eax
	movzbl	144(%edi,%eax), %edx
	leal	(%edi,%ebx), %eax
	movl	-104(%ebp), %ebx
	jmp	L1584
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1814:
	addl	$1, %esi
	cmpl	%ebx, %esi
	je	L1583
L1584:
	cmpb	144(%eax,%esi), %dl
	je	L1814
L1583:
	cmpl	$2, %esi
	jbe	L1586
	cmpl	$3, %esi
	je	L1604
	movl	-172(%ebp), %eax
	movl	%eax, -128(%ebp)
	jmp	L1605
L1807:
	movl	-104(%ebp), %eax
	testl	%eax, %eax
	jne	L1580
	jmp	L1581
	.p2align 4,,10
	.p2align 3
L1631:
	movl	-112(%ebp), %eax
	movzbl	144(%edi,%eax), %eax
	movl	%esi, 80(%edi)
	movl	-172(%ebp), %esi
	movl	%eax, 84(%edi)
	movl	-128(%ebp), %eax
	movl	%eax, 76(%edi)
	jmp	L1624
L1808:
	movl	-112(%ebp), %edx
	testl	%edx, %edx
	je	L1581
	movl	$0, -128(%ebp)
	movl	-116(%ebp), %esi
	jmp	L1614
L1639:
	jns	L1815
L1797:
	movl	-80(%ebp), %edx
	movl	108(%edi), %eax
	addl	%edx, -136(%ebp)
	subl	%edx, -132(%ebp)
	movl	-76(%ebp), %edx
	addl	%edx, -168(%ebp)
	subl	%edx, -140(%ebp)
	addl	%edx, -196(%ebp)
	movl	24(%edi), %edx
	movl	%edx, -24(%ebp)
	testl	%eax, %eax
	jns	L1560
L1788:
	movl	-204(%ebp), %esi
L1557:
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-200(%ebp), %eax
	subl	$4, %esp
	movl	%eax, -132(%ebp)
	jmp	L1664
L1658:
	movl	-204(%ebp), %esi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-196(%ebp), %eax
	subl	$4, %esp
	leal	4(%eax), %edi
	movl	%eax, -132(%ebp)
	movl	%edi, -176(%ebp)
	jmp	L1664
L1604:
	cmpl	$1, -112(%ebp)
	je	L1674
	testl	$131072, %ecx
	jne	L1586
	movl	-116(%ebp), %eax
	testl	%eax, %eax
	jne	L1675
	movl	-172(%ebp), %eax
	xorl	%edx, %edx
	movl	%eax, -128(%ebp)
	jmp	L1612
L1555:
	movl	$-2, 108(%edi)
	movl	-204(%ebp), %esi
	jmp	L1557
L1650:
	movl	-104(%ebp), %eax
	sall	$16, %eax
	addl	%esi, %eax
	movl	%eax, 24(%edi)
L1649:
	movl	32(%edi), %ebx
	testl	%ebx, %ebx
	jne	L1656
	cmpl	$0, 136(%edi)
	jne	L1656
L1647:
	movl	92(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1656
	movl	$4, %edx
	movl	%edi, %eax
	call	_tdefl_flush_block.lto_priv.0
	testl	%eax, %eax
	js	L1797
	movl	$1, 96(%edi)
	jmp	L1656
L1608:
	movl	-112(%ebp), %ebx
	cmpl	%ebx, -128(%ebp)
	je	L1609
	testl	$131072, %ecx
	jne	L1586
	jmp	L1613
	.p2align 4,,10
	.p2align 3
L1800:
	movl	$319296, %eax
	call	__Z13handle_memerri
L1674:
	movl	$1, -128(%ebp)
	jmp	L1609
L1675:
	movl	-172(%ebp), %eax
	movl	%eax, -128(%ebp)
	jmp	L1611
L1813:
	movl	%esi, %eax
	movl	$-2146992015, %ecx
	movl	$5552, -112(%ebp)
	mull	%ecx
	movl	%edx, %eax
	shrl	$15, %eax
	imull	$65521, %eax, %eax
	subl	%eax, %esi
	movl	-104(%ebp), %eax
	mull	%ecx
	shrl	$15, %edx
	imull	$65521, %edx, %eax
	subl	%eax, -104(%ebp)
	jmp	L1651
L1815:
	testb	$48, 9(%edi)
	je	L1649
	cmpl	$0, -136(%ebp)
	je	L1649
	movl	132(%edi), %eax
	movl	%eax, -84(%ebp)
	jmp	L1645
L1677:
	movl	-136(%ebp), %ebx
	jmp	L1651
	.cfi_endproc
LFE190:
	.p2align 4
	.globl	__ZL12CreateBucketP11BucketAlloc.lto_priv.0
	.def	__ZL12CreateBucketP11BucketAlloc.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL12CreateBucketP11BucketAlloc.lto_priv.0:
LFB215:
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
	jne	L1817
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	testl	%eax, %eax
	je	L1827
L1818:
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
	je	L1820
	.p2align 4
	.p2align 4
	.p2align 3
L1821:
	movl	%edx, %ecx
	subl	8(%ebx), %edx
	movl	%ecx, (%edx)
	cmpl	%edx, %eax
	jne	L1821
L1820:
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
L1817:
	.cfi_restore_state
	movl	%esi, 4(%esp)
	movl	12(%edx), %edx
	movl	%edx, (%esp)
	call	*%eax
	xorl	%edx, %edx
	testl	%eax, %eax
	jne	L1818
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
L1827:
	.cfi_restore_state
	movl	%esi, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE215:
	.p2align 4
	.def	__ZL14tessMeshDeleteP8TESSmeshP12TESShalfEdge;	.scl	3;	.type	32;	.endef
__ZL14tessMeshDeleteP8TESSmeshP12TESShalfEdge:
LFB216:
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
	je	L1829
	movl	8(%edi), %ebp
	movl	%ebp, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L1830:
	movl	%ebx, 20(%eax)
	movl	12(%eax), %eax
	cmpl	%eax, %ebp
	jne	L1830
	movl	(%edi), %ebx
	movl	4(%edi), %eax
	movl	$1, (%esp)
	movl	%eax, 4(%ebx)
	movl	%ebx, (%eax)
	movl	148(%esi), %eax
	movl	(%eax), %ebx
	movl	%ebx, (%edi)
	movl	%edi, (%eax)
L1829:
	cmpl	%edx, 8(%edx)
	je	L1855
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
	je	L1856
L1833:
	cmpl	%ecx, 8(%ecx)
	je	L1857
L1838:
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
L1841:
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
L1828:
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
L1856:
	.cfi_restore_state
	movl	148(%esi), %edi
	movl	(%edi), %ebx
	testl	%ebx, %ebx
	je	L1834
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L1834
L1835:
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
L1837:
	movl	%ebx, 20(%eax)
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	L1837
	cmpl	%ecx, 8(%ecx)
	jne	L1838
L1857:
	movl	16(%ecx), %edi
	movl	8(%edi), %ebx
	movl	%ebx, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L1839:
	movl	$0, 16(%eax)
	movl	8(%eax), %eax
	cmpl	%eax, %ebx
	jne	L1839
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
L1840:
	movl	$0, 20(%eax)
	movl	12(%eax), %eax
	cmpl	%eax, %ecx
	jne	L1840
	movl	(%ebx), %ecx
	movl	4(%ebx), %eax
	movl	%eax, 4(%ecx)
	movl	%ecx, (%eax)
	movl	148(%esi), %eax
	movl	(%eax), %ecx
	movl	%ecx, (%ebx)
	movl	%ebx, (%eax)
	jmp	L1841
	.p2align 4,,10
	.p2align 3
L1834:
	movl	%edi, %eax
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	__ZL12CreateBucketP11BucketAlloc.lto_priv.0
	testl	%eax, %eax
	je	L1828
	movl	(%edi), %ebx
	movl	4(%esp), %edx
	movl	(%esp), %ecx
	movl	(%ebx), %eax
	jmp	L1835
	.p2align 4,,10
	.p2align 3
L1855:
	movl	16(%edx), %edi
	movl	8(%edi), %ebx
	movl	%ebx, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L1832:
	movl	$0, 16(%eax)
	movl	8(%eax), %eax
	cmpl	%eax, %ebx
	jne	L1832
	movl	(%edi), %ebx
	movl	4(%edi), %eax
	movl	%eax, 4(%ebx)
	movl	%ebx, (%eax)
	movl	144(%esi), %eax
	movl	(%eax), %ebx
	movl	%ebx, (%edi)
	movl	%edi, (%eax)
	jmp	L1833
	.cfi_endproc
LFE216:
	.p2align 4
	.def	__ZL8MakeEdgeP8TESSmeshP12TESShalfEdge.isra.0;	.scl	3;	.type	32;	.endef
__ZL8MakeEdgeP8TESSmeshP12TESShalfEdge.isra.0:
LFB222:
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
	je	L1859
	movl	(%eax), %ebx
	testl	%ebx, %ebx
	je	L1859
L1860:
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
L1858:
	movl	-4(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L1859:
	.cfi_restore_state
	movl	%ecx, %eax
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	__ZL12CreateBucketP11BucketAlloc.lto_priv.0
	testl	%eax, %eax
	je	L1862
	movl	4(%esp), %ecx
	movl	(%esp), %edx
	movl	(%ecx), %eax
	movl	(%eax), %ebx
	jmp	L1860
	.p2align 4,,10
	.p2align 3
L1862:
	xorl	%eax, %eax
	jmp	L1858
	.cfi_endproc
LFE222:
	.p2align 4
	.def	__ZL15tessMeshConnectP8TESSmeshP12TESShalfEdgeS2_;	.scl	3;	.type	32;	.endef
__ZL15tessMeshConnectP8TESSmeshP12TESShalfEdgeS2_:
LFB223:
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
	je	L1867
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
	je	L1869
	movl	8(%eax), %edi
	movl	%edi, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L1870:
	movl	%esi, 20(%eax)
	movl	12(%eax), %eax
	cmpl	%eax, %edi
	jne	L1870
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
L1869:
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
	je	L1888
L1887:
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	20(%esp), %edi
	.cfi_restore 7
L1867:
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
L1888:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	8(%esp), %eax
	movl	148(%eax), %esi
	movl	(%esi), %ecx
	testl	%ecx, %ecx
	je	L1873
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L1873
L1874:
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
L1875:
	movl	%ecx, 20(%eax)
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	L1875
	jmp	L1887
	.p2align 4,,10
	.p2align 3
L1873:
	movl	%esi, %eax
	movl	%edx, (%esp)
	call	__ZL12CreateBucketP11BucketAlloc.lto_priv.0
	testl	%eax, %eax
	je	L1877
	movl	(%esi), %ecx
	movl	(%esp), %edx
	movl	(%ecx), %eax
	jmp	L1874
L1877:
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	20(%esp), %edi
	.cfi_restore 7
	xorl	%edx, %edx
	jmp	L1867
	.cfi_endproc
LFE223:
	.p2align 4
	.def	__ZL13TopLeftRegionP14TESStesselatorP12ActiveRegion;	.scl	3;	.type	32;	.endef
__ZL13TopLeftRegionP14TESStesselatorP12ActiveRegion:
LFB224:
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
L1890:
	movl	4(%ebx), %eax
	movl	4(%eax), %eax
	movl	(%eax), %ebx
	movl	(%ebx), %eax
	cmpl	%edx, 16(%eax)
	je	L1890
	movl	24(%ebx), %edx
	testl	%edx, %edx
	jne	L1896
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
L1896:
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
	je	L1893
	movl	(%ebx), %edx
	movl	(%esi), %eax
	movl	%ecx, (%esp)
	call	__ZL14tessMeshDeleteP8TESSmeshP12TESShalfEdge
	testl	%eax, %eax
	je	L1893
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
L1893:
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
LFE224:
	.p2align 4
	.globl	__Z17createBucketAllocP9TESSallocjj
	.def	__Z17createBucketAllocP9TESSallocjj;	.scl	2;	.type	32;	.endef
__Z17createBucketAllocP9TESSallocjj:
LFB227:
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
	jne	L1898
	movl	$20, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	movl	-16(%ebp), %edx
	subl	$4, %esp
	testl	%eax, %eax
	movl	%eax, %ebx
	je	L1904
L1899:
	movl	%esi, 16(%ebx)
	movl	%ebx, %eax
	movl	%edx, 8(%ebx)
	movl	%edi, 12(%ebx)
	movl	$0, (%ebx)
	movl	$0, 4(%ebx)
	call	__ZL12CreateBucketP11BucketAlloc.lto_priv.0
	testl	%eax, %eax
	je	L1905
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
L1898:
	.cfi_restore_state
	movl	$20, 4(%esp)
	movl	12(%esi), %ecx
	movl	%ecx, (%esp)
	call	*%eax
	movl	-16(%ebp), %edx
	movl	%eax, %ebx
	jmp	L1899
	.p2align 4,,10
	.p2align 3
L1905:
	movl	8(%esi), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L1901
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	xorl	%ebx, %ebx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1906:
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
L1904:
	.cfi_restore_state
	movl	$20, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1901:
	movl	%ebx, 4(%esp)
	movl	12(%esi), %edx
	xorl	%ebx, %ebx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L1906
	.cfi_endproc
LFE227:
	.p2align 4
	.globl	__ZL17deleteBucketAllocP11BucketAlloc.lto_priv.0
	.def	__ZL17deleteBucketAllocP11BucketAlloc.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL17deleteBucketAllocP11BucketAlloc.lto_priv.0:
LFB228:
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
	je	L1908
	.p2align 4
	.p2align 3
L1909:
	movl	%ebx, %eax
	movl	(%ebx), %ebx
	movl	%eax, 4(%esp)
	movl	12(%esi), %eax
	movl	%eax, (%esp)
	call	*8(%esi)
	testl	%ebx, %ebx
	jne	L1909
L1908:
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
LFE228:
	.p2align 4
	.globl	__ZL16tessMeshMakeEdgeP8TESSmesh.lto_priv.0
	.def	__ZL16tessMeshMakeEdgeP8TESSmesh.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL16tessMeshMakeEdgeP8TESSmesh.lto_priv.0:
LFB229:
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
	je	L1916
	movl	0(%ebp), %eax
	testl	%eax, %eax
	je	L1916
L1917:
	movl	%eax, (%ebx)
L1918:
	movl	144(%edi), %ebx
	movl	(%ebx), %esi
	testl	%esi, %esi
	je	L1919
	movl	(%esi), %eax
	testl	%eax, %eax
	je	L1919
L1920:
	movl	%eax, (%ebx)
L1921:
	movl	148(%edi), %edx
	movl	(%edx), %ebx
	testl	%ebx, %ebx
	je	L1922
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L1922
L1923:
	movl	%eax, (%edx)
	testl	%ebp, %ebp
	je	L1962
	testl	%esi, %esi
	je	L1963
	movl	140(%edi), %eax
	leal	68(%edi), %edx
	call	__ZL8MakeEdgeP8TESSmeshP12TESShalfEdge.isra.0
	movl	%eax, %edx
	testl	%eax, %eax
	je	L1931
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
L1933:
	movl	%ebp, 16(%eax)
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jne	L1933
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
L1934:
	movl	%esi, 16(%edx)
	movl	8(%edx), %edx
	cmpl	%edx, %ecx
	jne	L1934
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
L1935:
	movl	%ebx, 20(%edx)
	movl	12(%edx), %edx
	cmpl	%eax, %edx
	jne	L1935
L1915:
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
L1919:
	.cfi_restore_state
	movl	%ebx, %eax
	call	__ZL12CreateBucketP11BucketAlloc.lto_priv.0
	testl	%eax, %eax
	je	L1939
	movl	(%ebx), %esi
	movl	(%esi), %eax
	jmp	L1920
	.p2align 4,,10
	.p2align 3
L1916:
	movl	%ebx, %eax
	call	__ZL12CreateBucketP11BucketAlloc.lto_priv.0
	testl	%eax, %eax
	je	L1938
	movl	(%ebx), %ebp
	movl	0(%ebp), %eax
	jmp	L1917
	.p2align 4,,10
	.p2align 3
L1922:
	movl	%edx, %eax
	movl	%edx, (%esp)
	call	__ZL12CreateBucketP11BucketAlloc.lto_priv.0
	testl	%eax, %eax
	je	L1924
	movl	(%esp), %edx
	movl	(%edx), %ebx
	movl	(%ebx), %eax
	jmp	L1923
	.p2align 4,,10
	.p2align 3
L1963:
	testl	%ebp, %ebp
	je	L1962
	movl	144(%edi), %eax
	movl	(%eax), %edx
	movl	%edx, 0(%ebp)
	movl	%ebp, (%eax)
L1962:
	testl	%esi, %esi
	je	L1929
	movl	144(%edi), %eax
	movl	(%eax), %edx
	movl	%edx, (%esi)
	movl	%esi, (%eax)
L1929:
	movl	148(%edi), %eax
	movl	(%eax), %edx
	movl	%edx, (%ebx)
	movl	%ebx, (%eax)
L1931:
	xorl	%eax, %eax
L1965:
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
L1939:
	.cfi_restore_state
	xorl	%esi, %esi
	jmp	L1921
	.p2align 4,,10
	.p2align 3
L1924:
	testl	%ebp, %ebp
	je	L1964
	movl	144(%edi), %eax
	movl	(%eax), %edx
	movl	%edx, 0(%ebp)
	movl	%ebp, (%eax)
	testl	%esi, %esi
	je	L1931
	movl	144(%edi), %eax
	movl	(%eax), %edx
	movl	%edx, (%esi)
	movl	%esi, (%eax)
	xorl	%eax, %eax
	jmp	L1965
	.p2align 4,,10
	.p2align 3
L1938:
	xorl	%ebp, %ebp
	jmp	L1918
L1964:
	testl	%esi, %esi
	je	L1931
	movl	144(%edi), %eax
	movl	(%eax), %edx
	movl	%edx, (%esi)
	movl	%esi, (%eax)
	xorl	%eax, %eax
	jmp	L1915
	.cfi_endproc
LFE229:
	.p2align 4
	.globl	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	.def	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0:
LFB230:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%edi, 20(%esp)
	cmpl	%ecx, %edx
	.cfi_offset 7, -12
	je	L1967
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
	je	L1968
	movl	8(%edi), %esi
	movl	%esi, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L1969:
	movl	%ebx, 16(%eax)
	movl	8(%eax), %eax
	cmpl	%eax, %esi
	jne	L1969
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
	jne	L2003
	movl	8(%edx), %eax
	movl	8(%ecx), %ebx
	movl	4(%eax), %esi
	movl	%ecx, 12(%esi)
	movl	4(%ebx), %esi
	movl	%edx, 12(%esi)
	movl	%ebx, 8(%edx)
	movl	%eax, 8(%ecx)
L1979:
	movl	(%esp), %eax
	movl	148(%eax), %esi
	movl	(%esi), %ebx
	testl	%ebx, %ebx
	je	L1976
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L1976
L1977:
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
L1978:
	movl	%ebx, 20(%eax)
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	L1978
	movl	20(%ecx), %eax
	movl	%ecx, 8(%eax)
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %ebp
	.cfi_restore 5
L1967:
	movl	$1, %edi
	movl	%edi, %eax
	movl	20(%esp), %edi
	addl	$28, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1968:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	20(%edx), %ebp
	movl	20(%eax), %ebx
	xorl	%edi, %edi
	cmpl	%ebx, %ebp
	je	L2004
L1981:
	movl	8(%ebp), %esi
	movl	%esi, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L1971:
	movl	%ebx, 20(%eax)
	movl	12(%eax), %eax
	cmpl	%eax, %esi
	jne	L1971
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
	je	L2005
L2002:
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %ebp
	.cfi_restore 5
L1966:
	movl	%edi, %eax
	movl	20(%esp), %edi
	addl	$28, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1976:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%esi, %eax
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	__ZL12CreateBucketP11BucketAlloc.lto_priv.0
	movl	%eax, %edi
	testl	%eax, %eax
	je	L2002
	movl	(%esi), %ebx
	movl	4(%esp), %edx
	movl	(%esp), %ecx
	movl	(%ebx), %eax
	jmp	L1977
	.p2align 4,,10
	.p2align 3
L2003:
	movl	$1, %edi
	jmp	L1981
	.p2align 4,,10
	.p2align 3
L2005:
	movl	$1, %edi
L1980:
	movl	(%esp), %eax
	movl	144(%eax), %esi
	movl	(%esi), %ebx
	testl	%ebx, %ebx
	je	L1973
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L1973
L1974:
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
L1975:
	movl	%ebx, 16(%eax)
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jne	L1975
	movl	16(%ecx), %eax
	movl	%ecx, 8(%eax)
	testl	%edi, %edi
	jne	L2002
	jmp	L1979
	.p2align 4,,10
	.p2align 3
L2004:
	movl	8(%edx), %eax
	movl	8(%ecx), %ebx
	movl	4(%eax), %esi
	movl	%ecx, 12(%esi)
	movl	4(%ebx), %esi
	movl	%edx, 12(%esi)
	movl	%ebx, 8(%edx)
	movl	%eax, 8(%ecx)
	jmp	L1980
	.p2align 4,,10
	.p2align 3
L1973:
	movl	%esi, %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	call	__ZL12CreateBucketP11BucketAlloc.lto_priv.0
	testl	%eax, %eax
	je	L1983
	movl	(%esi), %ebx
	movl	8(%esp), %edx
	movl	4(%esp), %ecx
	movl	(%ebx), %eax
	jmp	L1974
L1983:
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	16(%esp), %esi
	.cfi_restore 6
	xorl	%edi, %edi
	movl	24(%esp), %ebp
	.cfi_restore 5
	jmp	L1966
	.cfi_endproc
LFE230:
	.p2align 4
	.def	__ZL17FinishLeftRegionsP14TESStesselatorP12ActiveRegionPKS1_;	.scl	3;	.type	32;	.endef
__ZL17FinishLeftRegionsP14TESStesselatorP12ActiveRegionPKS1_:
LFB231:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%ebp, 28(%esp)
	.cfi_offset 5, -8
	movl	(%edx), %ebp
	movl	%ecx, 12(%esp)
	cmpl	%ecx, %edx
	je	L2006
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	%edi, 24(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	movl	%esi, 20(%esp)
	.cfi_offset 6, -16
	jmp	L2013
	.p2align 4,,10
	.p2align 3
L2027:
	movl	8(%esp), %ecx
	movl	$0, 24(%ebx)
	movl	%ecx, (%ebx)
	movl	%ebx, 24(%ecx)
L2008:
	cmpl	%ecx, 8(%ebp)
	je	L2012
	movl	4(%ecx), %eax
	movl	%ecx, 8(%esp)
	movl	12(%eax), %edx
	movl	(%edi), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	je	L2011
	movl	(%edi), %eax
	movl	8(%esp), %ecx
	movl	%ebp, %edx
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	je	L2011
L2012:
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
	je	L2025
L2013:
	movl	4(%ebx), %eax
	movl	$0, 24(%ebx)
	movl	%ebx, %esi
	movl	8(%eax), %eax
	movl	(%eax), %ebx
	movl	16(%ebp), %eax
	movl	(%ebx), %ecx
	cmpl	%eax, 16(%ecx)
	je	L2008
	movl	24(%ebx), %eax
	testl	%eax, %eax
	je	L2026
	movl	8(%ebp), %eax
	movl	4(%ecx), %ecx
	movl	4(%eax), %edx
	movl	(%edi), %eax
	call	__ZL15tessMeshConnectP8TESSmeshP12TESShalfEdgeS2_
	testl	%eax, %eax
	je	L2011
	movl	%eax, 8(%esp)
	movl	(%ebx), %edx
	movl	(%edi), %eax
	call	__ZL14tessMeshDeleteP8TESSmeshP12TESShalfEdge
	testl	%eax, %eax
	jne	L2027
L2011:
	addl	$152, %edi
	movl	$1, 4(%esp)
	movl	%edi, (%esp)
	call	*__imp__longjmp
	.p2align 4,,10
	.p2align 3
L2025:
	movl	16(%esp), %ebx
	.cfi_restore 3
	movl	20(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %edi
	.cfi_restore 7
L2006:
	movl	%ebp, %eax
	movl	28(%esp), %ebp
	addl	$32, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2026:
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
LFE231:
	.p2align 4
	.globl	__ZL17tessMeshSplitEdgeP8TESSmeshP12TESShalfEdge.lto_priv.0
	.def	__ZL17tessMeshSplitEdgeP8TESSmeshP12TESShalfEdge.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL17tessMeshSplitEdgeP8TESSmeshP12TESShalfEdge.lto_priv.0:
LFB234:
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
	je	L2028
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
	je	L2030
	movl	(%esi), %eax
	testl	%eax, %eax
	je	L2030
L2031:
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
L2032:
	movl	%esi, 16(%eax)
	movl	8(%eax), %eax
	cmpl	%eax, %ecx
	jne	L2032
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
L2028:
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
L2030:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%edi, %eax
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	__ZL12CreateBucketP11BucketAlloc.lto_priv.0
	testl	%eax, %eax
	je	L2033
	movl	(%edi), %esi
	movl	4(%esp), %edx
	movl	(%esp), %ecx
	movl	(%esi), %eax
	jmp	L2031
L2033:
	movl	16(%esp), %edi
	.cfi_restore 7
	movl	20(%esp), %ebp
	.cfi_restore 5
	xorl	%edx, %edx
	jmp	L2028
	.cfi_endproc
LFE234:
	.p2align 4
	.def	__ZL19CheckForRightSpliceP14TESStesselatorP12ActiveRegion;	.scl	3;	.type	32;	.endef
__ZL19CheckForRightSpliceP14TESStesselatorP12ActiveRegion:
LFB236:
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
	ja	L2043
	ucomiss	%xmm0, %xmm1
	jp	L2044
	jne	L2044
	movss	28(%eax), %xmm2
	movss	28(%edx), %xmm3
	comiss	%xmm2, %xmm3
	jb	L2044
	movl	4(%ebp), %ecx
	movaps	%xmm1, %xmm4
	subss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	movl	16(%ecx), %edi
	subss	24(%edi), %xmm4
	movaps	%xmm4, %xmm5
	addss	%xmm0, %xmm5
	comiss	%xmm1, %xmm5
	ja	L2092
L2065:
	ucomiss	%xmm3, %xmm2
	jp	L2067
	jne	L2067
	cmpl	%edx, %eax
	je	L2070
	movl	32(%eax), %ebx
	movl	8(%esp), %eax
	movl	76(%eax), %ecx
	testl	%ebx, %ebx
	jns	L2093
	movl	4(%ecx), %eax
	notl	%ebx
	movl	$0, (%eax,%ebx,4)
	movl	12(%ecx), %eax
	testl	%eax, %eax
	jle	L2058
	movl	8(%ecx), %ebx
	jmp	L2059
	.p2align 5
	.p2align 4,,10
	.p2align 3
L2060:
	subl	$1, %eax
	movl	%eax, 12(%ecx)
	je	L2058
L2059:
	movl	-4(%ebx,%eax,4), %edx
	movl	(%edx), %edx
	testl	%edx, %edx
	je	L2060
L2058:
	movl	4(%ebp), %eax
	movl	%esi, %ecx
	movl	12(%eax), %edx
	movl	8(%esp), %eax
	movl	(%eax), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	jne	L2042
L2050:
	movl	8(%esp), %eax
	movl	$1, 4(%esp)
	addl	$152, %eax
	movl	%eax, (%esp)
	call	*__imp__longjmp
	.p2align 4,,10
	.p2align 3
L2043:
	movl	4(%ebp), %ecx
	movaps	%xmm1, %xmm3
	subss	%xmm1, %xmm0
	xorps	%xmm2, %xmm2
	movl	16(%ecx), %edi
	subss	24(%edi), %xmm3
	movaps	%xmm3, %xmm1
	addss	%xmm0, %xmm1
	comiss	%xmm2, %xmm1
	jbe	L2067
	movss	28(%eax), %xmm1
	movaps	%xmm1, %xmm4
	subss	28(%edx), %xmm1
	subss	28(%edi), %xmm4
	mulss	%xmm3, %xmm1
	mulss	%xmm4, %xmm0
	addss	%xmm1, %xmm0
	comiss	%xmm2, %xmm0
	jbe	L2067
L2068:
	xorl	%eax, %eax
L2042:
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
L2044:
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
	ja	L2094
L2061:
	movl	$1, 20(%ebx)
	movl	4(%ecx), %eax
	movl	8(%esp), %ebx
	movl	(%eax), %eax
	movl	$1, 20(%eax)
	movl	4(%esi), %edx
	movl	(%ebx), %eax
	call	__ZL17tessMeshSplitEdgeP8TESSmeshP12TESShalfEdge.lto_priv.0
	testl	%eax, %eax
	je	L2050
	movl	4(%ebp), %eax
	movl	%esi, %ecx
	movl	12(%eax), %edx
	movl	(%ebx), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	je	L2050
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
L2067:
	.cfi_restore_state
	movl	8(%esp), %eax
	movl	%ecx, %edx
	movl	(%eax), %eax
	call	__ZL17tessMeshSplitEdgeP8TESSmeshP12TESShalfEdge.lto_priv.0
	testl	%eax, %eax
	je	L2050
	movl	4(%ebp), %eax
	movl	%esi, %edx
	movl	12(%eax), %ecx
	movl	8(%esp), %eax
	movl	(%eax), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	je	L2050
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
L2094:
	.cfi_restore_state
	movss	28(%edx), %xmm0
	movaps	%xmm0, %xmm2
	subss	28(%edi), %xmm0
	subss	28(%eax), %xmm2
	mulss	%xmm1, %xmm0
	mulss	%xmm4, %xmm2
	addss	%xmm2, %xmm0
	comiss	%xmm0, %xmm3
	ja	L2068
	jmp	L2061
	.p2align 4,,10
	.p2align 3
L2070:
	movl	$1, %eax
	jmp	L2042
	.p2align 4,,10
	.p2align 3
L2093:
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
	jg	L2053
	cmpl	$1, %edx
	jle	L2054
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
	ja	L2054
	ucomiss	%xmm0, %xmm1
	jp	L2055
	jne	L2055
	movss	28(%eax), %xmm0
	comiss	28(%edx), %xmm0
	jnb	L2054
L2055:
	movl	(%edi), %eax
	movl	12(%esp), %ecx
	movl	4(%edi), %edx
	call	__ZL7FloatUpP13PriorityQHeapi.isra.0
	.p2align 4
	.p2align 3
L2053:
	movl	28(%esp), %ecx
	movl	$0, (%ecx)
	movl	16(%edi), %eax
	movl	%eax, 4(%ecx)
	movl	%ebx, 16(%edi)
	jmp	L2058
L2054:
	movl	12(%esp), %edx
	movl	%edi, %eax
	call	__ZL9FloatDownP13PriorityQHeapi
	jmp	L2053
L2092:
	movaps	%xmm2, %xmm5
	subss	28(%edi), %xmm5
	mulss	%xmm5, %xmm0
	movaps	%xmm2, %xmm5
	subss	%xmm3, %xmm5
	mulss	%xmm5, %xmm4
	addss	%xmm4, %xmm0
	comiss	%xmm1, %xmm0
	ja	L2068
	jmp	L2065
	.cfi_endproc
LFE236:
	.p2align 4
	.globl	__ZL16dictInsertBeforeP4DictP8DictNodePv.lto_priv.0
	.def	__ZL16dictInsertBeforeP4DictP8DictNodePv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL16dictInsertBeforeP4DictP8DictNodePv.lto_priv.0:
LFB239:
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
L2097:
	movl	8(%ebx), %ebx
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L2096
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%esi), %eax
	movl	%eax, (%esp)
	call	*20(%esi)
	testl	%eax, %eax
	je	L2097
L2096:
	movl	16(%esi), %esi
	movl	(%esi), %eax
	testl	%eax, %eax
	je	L2098
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L2098
L2099:
	movl	%edx, (%esi)
	movl	%edi, (%eax)
	movl	4(%ebx), %edx
	movl	%edx, 4(%eax)
	movl	%eax, 8(%edx)
	movl	%ebx, 8(%eax)
	movl	%eax, 4(%ebx)
L2095:
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
L2098:
	.cfi_restore_state
	movl	%esi, %eax
	call	__ZL12CreateBucketP11BucketAlloc.lto_priv.0
	testl	%eax, %eax
	je	L2101
	movl	(%esi), %eax
	movl	(%eax), %edx
	jmp	L2099
L2101:
	xorl	%eax, %eax
	jmp	L2095
	.cfi_endproc
LFE239:
	.p2align 4
	.def	__ZL14AddRegionBelowP14TESStesselatorP12ActiveRegionP12TESShalfEdge;	.scl	3;	.type	32;	.endef
__ZL14AddRegionBelowP14TESStesselatorP12ActiveRegionP12TESShalfEdge:
LFB240:
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
	je	L2112
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L2112
L2113:
	movl	%eax, (%ecx)
	movl	%ebx, %ecx
	movl	%edi, (%ebx)
	movl	4(%edx), %edx
	movl	72(%esi), %eax
	call	__ZL16dictInsertBeforeP4DictP8DictNodePv.lto_priv.0
	movl	%eax, 4(%ebx)
	testl	%eax, %eax
	je	L2114
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
L2112:
	.cfi_restore_state
	movl	%ecx, %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	call	__ZL12CreateBucketP11BucketAlloc.lto_priv.0
	testl	%eax, %eax
	je	L2114
	movl	12(%esp), %ecx
	movl	8(%esp), %edx
	movl	(%ecx), %ebx
	movl	(%ebx), %eax
	jmp	L2113
	.p2align 4,,10
	.p2align 3
L2114:
	addl	$152, %esi
	movl	$1, 4(%esp)
	movl	%esi, (%esp)
	call	*__imp__longjmp
	.cfi_endproc
LFE240:
	.p2align 4
	.def	__ZL13AddRightEdgesP14TESStesselatorP12ActiveRegionP12TESShalfEdgePKS3_S4_i;	.scl	3;	.type	32;	.endef
__ZL13AddRightEdgesP14TESStesselatorP12ActiveRegionP12TESShalfEdgePKS3_S4_i:
LFB241:
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
L2126:
	movl	4(%ebx), %ecx
	movl	%edi, %edx
	movl	%ebp, %eax
	call	__ZL14AddRegionBelowP14TESStesselatorP12ActiveRegionP12TESShalfEdge
	movl	8(%ebx), %ebx
	cmpl	%esi, %ebx
	jne	L2126
	movl	4(%edi), %eax
	movl	8(%esp), %ecx
	movl	8(%eax), %eax
	movl	(%eax), %esi
	movl	(%esi), %eax
	movl	4(%eax), %ebx
	testl	%ecx, %ecx
	je	L2149
L2127:
	movl	8(%esp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, 16(%ebx)
	jne	L2135
	movl	$1, 12(%esp)
	jmp	L2129
	.p2align 4,,10
	.p2align 3
L2133:
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
	jne	L2128
	movl	%edx, %ebx
	movl	%eax, %esi
L2129:
	movl	8(%esp), %eax
	cmpl	%eax, 8(%ebx)
	je	L2130
	movl	4(%ebx), %eax
	movl	%ebx, %ecx
	movl	12(%eax), %edx
	movl	0(%ebp), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	je	L2132
	movl	8(%esp), %eax
	movl	%ebx, %ecx
	movl	4(%eax), %eax
	movl	12(%eax), %edx
	movl	0(%ebp), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	je	L2132
L2130:
	movl	8(%edi), %edx
	subl	28(%ebx), %edx
	movl	%edx, 8(%esi)
	movl	68(%ebp), %eax
	call	__ZL15IsWindingInsidePK14TESStesselatori.isra.0
	movl	12(%esp), %edx
	movl	%eax, 12(%esi)
	movl	$1, 20(%edi)
	testl	%edx, %edx
	jne	L2133
	movl	%edi, %edx
	movl	%ebp, %eax
	call	__ZL19CheckForRightSpliceP14TESStesselatorP12ActiveRegion
	testl	%eax, %eax
	je	L2133
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
	jne	L2133
L2132:
	leal	152(%ebp), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__longjmp
L2135:
	movl	%edi, %esi
	.p2align 4
	.p2align 3
L2128:
	movl	16(%esp), %eax
	movl	$1, 20(%esi)
	testl	%eax, %eax
	jne	L2150
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
L2150:
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
L2149:
	.cfi_restore_state
	movl	8(%ebx), %eax
	movl	%eax, 8(%esp)
	jmp	L2127
	.cfi_endproc
LFE241:
	.p2align 4
	.def	__ZL17CheckForIntersectP14TESStesselatorP12ActiveRegion;	.scl	3;	.type	32;	.endef
__ZL17CheckForIntersectP14TESStesselatorP12ActiveRegion:
LFB242:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$144, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	4(%edx), %esi
	movl	%eax, -48(%ebp)
	movl	8(%esi), %ecx
	movl	%esi, -108(%ebp)
	movl	(%ecx), %edi
	movl	(%edx), %ecx
	movl	(%edi), %esi
	movl	16(%ecx), %ebx
	movl	%edi, -100(%ebp)
	movl	%ecx, -92(%ebp)
	movl	16(%esi), %edi
	cmpl	%edi, %ebx
	je	L2152
	movl	4(%esi), %eax
	movss	28(%edi), %xmm4
	movl	4(%ecx), %ecx
	movss	28(%ebx), %xmm7
	movl	%eax, -116(%ebp)
	movl	16(%eax), %eax
	movl	%ecx, -112(%ebp)
	movl	16(%ecx), %ecx
	movss	28(%eax), %xmm5
	movss	%xmm4, -64(%ebp)
	movss	28(%ecx), %xmm6
	movl	%ecx, -68(%ebp)
	movaps	%xmm5, %xmm0
	movl	%eax, -52(%ebp)
	cmpless	%xmm4, %xmm0
	movaps	%xmm6, %xmm2
	movss	%xmm5, -80(%ebp)
	andps	%xmm0, %xmm4
	andnps	%xmm5, %xmm0
	movaps	%xmm4, %xmm1
	orps	%xmm0, %xmm1
	movaps	%xmm7, %xmm0
	cmpnless	%xmm6, %xmm0
	andps	%xmm0, %xmm2
	andnps	%xmm7, %xmm0
	orps	%xmm2, %xmm0
	comiss	%xmm1, %xmm0
	ja	L2152
	movss	24(%edi), %xmm3
	movss	24(%ebx), %xmm5
	comiss	%xmm5, %xmm3
	movss	%xmm3, -40(%ebp)
	ja	L2158
	ucomiss	%xmm3, %xmm5
	jp	L2159
	jne	L2159
	movss	-64(%ebp), %xmm1
	comiss	%xmm7, %xmm1
	jb	L2159
L2158:
	movl	-52(%ebp), %eax
	movss	-40(%ebp), %xmm2
	movaps	%xmm5, %xmm3
	movss	24(%eax), %xmm1
	subss	%xmm5, %xmm2
	subss	%xmm1, %xmm3
	movss	%xmm1, -88(%ebp)
	xorps	%xmm1, %xmm1
	movaps	%xmm3, %xmm0
	addss	%xmm2, %xmm0
	comiss	%xmm1, %xmm0
	ja	L2471
L2162:
	movl	-68(%ebp), %eax
	movss	24(%eax), %xmm1
	movss	%xmm1, -84(%ebp)
	movss	-84(%ebp), %xmm1
	comiss	%xmm1, %xmm5
	ja	L2333
L2474:
	ucomiss	%xmm1, %xmm5
	jp	L2448
	jne	L2448
	comiss	%xmm6, %xmm7
	jnb	L2472
L2448:
	movl	-68(%ebp), %eax
	movl	%ebx, -72(%ebp)
	movaps	%xmm5, %xmm1
	movss	%xmm6, -96(%ebp)
	movl	%eax, -44(%ebp)
	movss	%xmm7, -76(%ebp)
L2167:
	movss	-40(%ebp), %xmm2
	movss	-88(%ebp), %xmm0
	comiss	%xmm0, %xmm2
	ja	L2336
L2475:
	ucomiss	%xmm0, %xmm2
	jp	L2337
	jne	L2337
	movss	-64(%ebp), %xmm4
	movss	-80(%ebp), %xmm3
	comiss	%xmm3, %xmm4
	jb	L2449
	movl	-52(%ebp), %eax
	movl	%edi, -56(%ebp)
	movss	%xmm4, -104(%ebp)
	movl	%eax, -60(%ebp)
	movss	%xmm3, -32(%ebp)
	jmp	L2170
	.p2align 4,,10
	.p2align 3
L2471:
	movaps	%xmm7, %xmm0
	subss	-64(%ebp), %xmm0
	mulss	%xmm3, %xmm0
	movaps	%xmm7, %xmm3
	subss	-80(%ebp), %xmm3
	mulss	%xmm2, %xmm3
	addss	%xmm3, %xmm0
	comiss	%xmm1, %xmm0
	jbe	L2162
	.p2align 4
	.p2align 3
L2152:
	xorl	%ebx, %ebx
L2151:
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
L2159:
	.cfi_restore_state
	movl	-68(%ebp), %eax
	movss	-40(%ebp), %xmm1
	movss	24(%eax), %xmm3
	movaps	%xmm3, %xmm2
	movss	%xmm3, -84(%ebp)
	movaps	%xmm1, %xmm3
	subss	%xmm2, %xmm3
	movaps	%xmm5, %xmm2
	subss	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	movaps	%xmm3, %xmm0
	addss	%xmm2, %xmm0
	comiss	%xmm1, %xmm0
	ja	L2473
L2165:
	movl	-52(%ebp), %eax
	movss	24(%eax), %xmm1
	movss	%xmm1, -88(%ebp)
	movss	-84(%ebp), %xmm1
	comiss	%xmm1, %xmm5
	jbe	L2474
L2333:
	movss	-40(%ebp), %xmm2
	movss	-88(%ebp), %xmm0
	movl	%ebx, -44(%ebp)
	movl	-68(%ebp), %eax
	movss	-84(%ebp), %xmm1
	movss	%xmm7, -96(%ebp)
	comiss	%xmm0, %xmm2
	movss	%xmm6, -76(%ebp)
	movl	%eax, -72(%ebp)
	jbe	L2475
L2336:
	movss	-64(%ebp), %xmm3
	movl	-52(%ebp), %eax
	movl	%edi, -56(%ebp)
	movss	-88(%ebp), %xmm0
	movss	%xmm3, -104(%ebp)
	movss	-80(%ebp), %xmm3
	movl	%eax, -60(%ebp)
	movss	%xmm3, -32(%ebp)
L2170:
	comiss	%xmm1, %xmm0
	ja	L2173
	ucomiss	%xmm1, %xmm0
	jp	L2450
	jne	L2450
	movss	-32(%ebp), %xmm3
	comiss	-76(%ebp), %xmm3
	jb	L2450
	.p2align 4
	.p2align 3
L2173:
	movl	-44(%ebp), %eax
	movl	%edx, -120(%ebp)
	movss	24(%eax), %xmm1
	comiss	%xmm0, %xmm1
	ja	L2176
	ucomiss	%xmm0, %xmm1
	jp	L2469
	jne	L2469
	movss	-96(%ebp), %xmm3
	comiss	-32(%ebp), %xmm3
	jnb	L2176
L2469:
	movaps	%xmm1, %xmm2
	addss	%xmm0, %xmm2
	mulss	LC3, %xmm2
	movss	%xmm2, -36(%ebp)
L2179:
	movss	-96(%ebp), %xmm3
	movss	-76(%ebp), %xmm2
	comiss	%xmm2, %xmm3
	ja	L2209
	ucomiss	%xmm3, %xmm2
	jp	L2454
	jne	L2454
	movl	-72(%ebp), %eax
	comiss	24(%eax), %xmm1
	jb	L2454
	.p2align 4
	.p2align 3
L2209:
	movss	-104(%ebp), %xmm4
	movss	-32(%ebp), %xmm2
	comiss	%xmm2, %xmm4
	ja	L2212
	ucomiss	%xmm4, %xmm2
	jp	L2345
	jne	L2345
	movl	-56(%ebp), %edx
	movl	-60(%ebp), %ecx
	movss	24(%edx), %xmm1
	movl	%ecx, %eax
	comiss	%xmm0, %xmm1
	cmpless	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	cmovb	%edx, %ecx
	cmovnb	%edx, %eax
	andps	%xmm0, %xmm1
	andnps	%xmm4, %xmm0
	movl	%ecx, -60(%ebp)
	orps	%xmm1, %xmm0
	movl	%eax, -56(%ebp)
	movss	%xmm0, -32(%ebp)
L2212:
	movss	-32(%ebp), %xmm1
	movss	-76(%ebp), %xmm4
	comiss	%xmm4, %xmm1
	ja	L2215
	ucomiss	%xmm1, %xmm4
	jp	L2455
	jne	L2455
	movl	-60(%ebp), %eax
	movss	24(%eax), %xmm0
	movl	-72(%ebp), %eax
	comiss	24(%eax), %xmm0
	jb	L2455
	.p2align 4
	.p2align 3
L2215:
	movl	-44(%ebp), %eax
	movss	-32(%ebp), %xmm2
	movss	28(%eax), %xmm3
	comiss	%xmm2, %xmm3
	ja	L2218
	ucomiss	%xmm2, %xmm3
	jp	L2470
	jne	L2470
	movl	-60(%ebp), %edx
	movss	24(%eax), %xmm0
	movss	24(%edx), %xmm1
	comiss	%xmm1, %xmm0
	movss	%xmm1, -76(%ebp)
	jnb	L2221
L2470:
	movss	-32(%ebp), %xmm0
	addss	%xmm3, %xmm0
	mulss	LC3, %xmm0
L2222:
	movl	-48(%ebp), %eax
	movl	80(%eax), %eax
	movss	24(%eax), %xmm1
	comiss	-36(%ebp), %xmm1
	jbe	L2461
	movss	28(%eax), %xmm0
	movss	%xmm1, -36(%ebp)
L2256:
	movss	-40(%ebp), %xmm4
	comiss	%xmm5, %xmm4
	jbe	L2462
	movss	-36(%ebp), %xmm3
	comiss	%xmm5, %xmm3
	jbe	L2260
	movss	28(%ebx), %xmm0
	ucomiss	%xmm0, %xmm7
	jp	L2386
	je	L2262
L2386:
	movss	%xmm5, -36(%ebp)
L2264:
	ucomiss	-84(%ebp), %xmm1
	jp	L2286
	jne	L2286
	ucomiss	28(%eax), %xmm6
	jp	L2286
	jne	L2286
L2288:
	ucomiss	-88(%ebp), %xmm1
	jp	L2292
	jne	L2292
	movss	-80(%ebp), %xmm7
	ucomiss	28(%eax), %xmm7
	jp	L2292
	jne	L2292
L2294:
	movl	-48(%ebp), %eax
	movl	-112(%ebp), %edx
	movss	%xmm0, -32(%ebp)
	movl	(%eax), %eax
	call	__ZL17tessMeshSplitEdgeP8TESSmeshP12TESShalfEdge.lto_priv.0
	testl	%eax, %eax
	je	L2297
	movl	-48(%ebp), %eax
	movl	4(%esi), %edx
	movl	(%eax), %eax
	call	__ZL17tessMeshSplitEdgeP8TESSmeshP12TESShalfEdge.lto_priv.0
	testl	%eax, %eax
	je	L2297
	movl	4(%esi), %eax
	movl	-92(%ebp), %esi
	movl	12(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%esi, %ecx
	movl	(%eax), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	je	L2297
	movl	16(%esi), %eax
	movss	-36(%ebp), %xmm6
	movss	-32(%ebp), %xmm0
	movss	%xmm6, 24(%eax)
	movl	16(%esi), %eax
	movss	%xmm0, 28(%eax)
	movl	-48(%ebp), %eax
	movl	16(%esi), %edx
	movl	76(%eax), %esi
	movl	%edx, -32(%ebp)
	movl	20(%esi), %edx
	testl	%edx, %edx
	jne	L2476
	movl	12(%esi), %eax
	movl	16(%esi), %edx
	movl	%eax, -36(%ebp)
	addl	$1, %eax
	movl	%eax, 12(%esi)
	cmpl	%edx, %eax
	jl	L2312
	movl	-48(%ebp), %ecx
	movl	116(%ecx), %eax
	testl	%eax, %eax
	je	L2313
	movl	4(%esi), %eax
	movl	%eax, -40(%ebp)
	leal	(%edx,%edx), %eax
	sall	$3, %edx
	movl	%eax, 16(%esi)
	movl	116(%ecx), %eax
	cmpl	$__ZL11heapReallocPvS_j.lto_priv.0, %eax
	jne	L2314
	movl	%edx, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%edx, -44(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	testl	%eax, %eax
	jne	L2446
	movl	-44(%ebp), %edx
	testl	%edx, %edx
	jne	L2477
L2315:
	testl	%eax, %eax
	je	L2316
L2446:
	movl	%eax, 4(%esi)
	jmp	L2317
	.p2align 4,,10
	.p2align 3
L2473:
	movss	-64(%ebp), %xmm0
	subss	%xmm7, %xmm0
	mulss	%xmm3, %xmm0
	movss	-64(%ebp), %xmm3
	subss	%xmm6, %xmm3
	mulss	%xmm2, %xmm3
	addss	%xmm3, %xmm0
	comiss	%xmm0, %xmm1
	ja	L2152
	jmp	L2165
	.p2align 4,,10
	.p2align 3
L2176:
	movl	-56(%ebp), %eax
	movss	24(%eax), %xmm3
	comiss	%xmm1, %xmm3
	movss	%xmm3, -36(%ebp)
	ja	L2180
	ucomiss	%xmm3, %xmm1
	jp	L2181
	jne	L2181
	movss	-104(%ebp), %xmm3
	comiss	-96(%ebp), %xmm3
	jb	L2181
L2180:
	movl	-44(%ebp), %ecx
	movl	-60(%ebp), %edx
	movss	%xmm0, -144(%ebp)
	movl	-72(%ebp), %eax
	movss	%xmm1, -140(%ebp)
	movss	%xmm5, -136(%ebp)
	movss	%xmm6, -132(%ebp)
	movss	%xmm7, -128(%ebp)
	call	__ZL11tesedgeEvalPK10TESSvertexS1_S1_.lto_priv.0
	movl	-56(%ebp), %ecx
	movl	-44(%ebp), %edx
	fstps	-36(%ebp)
	movl	-60(%ebp), %eax
	movss	-36(%ebp), %xmm2
	movss	%xmm2, -124(%ebp)
	call	__ZL11tesedgeEvalPK10TESSvertexS1_S1_.lto_priv.0
	movss	-124(%ebp), %xmm2
	xorps	%xmm3, %xmm3
	movss	-128(%ebp), %xmm7
	fstps	-36(%ebp)
	movss	-36(%ebp), %xmm6
	movss	-136(%ebp), %xmm5
	movss	-140(%ebp), %xmm1
	movss	-144(%ebp), %xmm0
	addss	%xmm2, %xmm6
	comiss	%xmm6, %xmm3
	movss	-132(%ebp), %xmm6
	jbe	L2184
	movss	-36(%ebp), %xmm4
	xorps	LC2, %xmm4
	xorps	LC2, %xmm2
	movss	%xmm4, -36(%ebp)
L2184:
	xorps	%xmm4, %xmm4
	movaps	%xmm2, %xmm3
	cmpnltss	%xmm4, %xmm3
	andps	%xmm2, %xmm3
	movss	-36(%ebp), %xmm2
	cmpnltss	%xmm4, %xmm2
	movss	-36(%ebp), %xmm4
	andps	%xmm4, %xmm2
	comiss	%xmm3, %xmm2
	jb	L2451
	xorps	%xmm4, %xmm4
	ucomiss	%xmm4, %xmm2
	jp	L2192
	je	L2469
L2192:
	addss	%xmm3, %xmm2
	divss	%xmm2, %xmm3
	movaps	%xmm1, %xmm2
	subss	%xmm0, %xmm2
	mulss	%xmm2, %xmm3
	addss	%xmm0, %xmm3
	movss	%xmm3, -36(%ebp)
	jmp	L2179
	.p2align 4,,10
	.p2align 3
L2218:
	movl	-60(%ebp), %eax
	movss	24(%eax), %xmm1
	movss	%xmm1, -76(%ebp)
L2221:
	movl	-56(%ebp), %eax
	movss	28(%eax), %xmm4
	comiss	%xmm3, %xmm4
	movss	%xmm4, -60(%ebp)
	jbe	L2456
	movl	-44(%ebp), %edx
	movss	24(%edx), %xmm1
	movss	%xmm1, -44(%ebp)
	movss	24(%eax), %xmm1
	movss	%xmm1, -56(%ebp)
L2225:
	movl	-72(%ebp), %eax
	movss	%xmm5, -128(%ebp)
	movss	%xmm6, -124(%ebp)
	movss	28(%eax), %xmm1
	movss	24(%eax), %xmm0
	movss	%xmm7, -104(%ebp)
	movss	%xmm3, 8(%esp)
	movss	-44(%ebp), %xmm6
	movss	%xmm3, -96(%ebp)
	movss	%xmm6, 4(%esp)
	movss	-32(%ebp), %xmm7
	movss	%xmm7, (%esp)
	movss	-76(%ebp), %xmm2
	call	__ZL12testransEvalPK10TESSvertexS1_S1_.isra.0
	movss	-60(%ebp), %xmm5
	fstps	-72(%ebp)
	movss	%xmm5, 8(%esp)
	movss	-56(%ebp), %xmm5
	movss	%xmm5, 4(%esp)
	movss	-96(%ebp), %xmm3
	movss	%xmm3, (%esp)
	movss	-44(%ebp), %xmm2
	movss	-32(%ebp), %xmm1
	movss	-76(%ebp), %xmm0
	movss	%xmm3, -56(%ebp)
	call	__ZL12testransEvalPK10TESSvertexS1_S1_.isra.0
	movss	-72(%ebp), %xmm4
	xorps	%xmm1, %xmm1
	movss	-56(%ebp), %xmm3
	fstps	-44(%ebp)
	movss	-44(%ebp), %xmm2
	movss	-104(%ebp), %xmm7
	movaps	%xmm4, %xmm0
	movss	-124(%ebp), %xmm6
	movss	-128(%ebp), %xmm5
	addss	%xmm2, %xmm0
	comiss	%xmm0, %xmm1
	jbe	L2230
	xorps	LC2, %xmm4
	xorps	LC2, %xmm2
L2230:
	xorps	%xmm0, %xmm0
	movaps	%xmm4, %xmm1
	cmpnltss	%xmm0, %xmm1
	andps	%xmm4, %xmm1
	movaps	%xmm0, %xmm4
	movaps	%xmm2, %xmm0
	cmpnltss	%xmm4, %xmm0
	andps	%xmm2, %xmm0
	comiss	%xmm1, %xmm0
	jb	L2457
	ucomiss	%xmm4, %xmm0
	jp	L2238
	je	L2470
L2238:
	movaps	%xmm0, %xmm2
	addss	%xmm1, %xmm2
	divss	%xmm2, %xmm1
	movaps	%xmm1, %xmm0
	movss	-32(%ebp), %xmm1
	subss	%xmm1, %xmm3
	mulss	%xmm3, %xmm0
	addss	%xmm1, %xmm0
	jmp	L2222
	.p2align 4,,10
	.p2align 3
L2455:
	movl	-44(%ebp), %eax
	movl	-56(%ebp), %edx
	movss	-76(%ebp), %xmm1
	movl	%edx, -44(%ebp)
	movl	-60(%ebp), %edx
	movl	%eax, -56(%ebp)
	movl	-72(%ebp), %eax
	movss	%xmm1, -32(%ebp)
	movl	%edx, -72(%ebp)
	movl	%eax, -60(%ebp)
	jmp	L2215
	.p2align 4,,10
	.p2align 3
L2454:
	movl	-72(%ebp), %eax
	movl	-44(%ebp), %edx
	movss	-96(%ebp), %xmm1
	movl	%edx, -72(%ebp)
	movl	%eax, -44(%ebp)
	movss	%xmm1, -76(%ebp)
	jmp	L2209
	.p2align 4,,10
	.p2align 3
L2450:
	movss	-96(%ebp), %xmm0
	movl	-44(%ebp), %ecx
	movl	-56(%ebp), %eax
	movss	-104(%ebp), %xmm3
	movss	-76(%ebp), %xmm4
	movl	%ecx, -56(%ebp)
	movl	%eax, -44(%ebp)
	movl	-72(%ebp), %ecx
	movl	-60(%ebp), %eax
	movss	%xmm0, -104(%ebp)
	movss	-32(%ebp), %xmm0
	movl	%ecx, -60(%ebp)
	movss	%xmm0, -76(%ebp)
	movaps	%xmm1, %xmm0
	movl	%eax, -72(%ebp)
	movss	%xmm3, -96(%ebp)
	movss	%xmm4, -32(%ebp)
	jmp	L2173
	.p2align 4,,10
	.p2align 3
L2292:
	movss	-36(%ebp), %xmm2
	movaps	%xmm1, %xmm7
	subss	-88(%ebp), %xmm7
	xorps	%xmm5, %xmm5
	subss	%xmm1, %xmm2
	movaps	%xmm7, %xmm3
	addss	%xmm2, %xmm3
	comiss	%xmm5, %xmm3
	ja	L2478
L2290:
	cmpl	-52(%ebp), %eax
	je	L2479
	cmpl	-68(%ebp), %eax
	je	L2480
	movaps	%xmm1, %xmm5
	subss	-84(%ebp), %xmm5
	xorps	%xmm7, %xmm7
	movaps	%xmm5, %xmm3
	addss	%xmm2, %xmm3
	comiss	%xmm7, %xmm3
	ja	L2481
L2303:
	movl	-120(%ebp), %eax
	movl	-92(%ebp), %edi
	movss	%xmm0, -32(%ebp)
	movl	-48(%ebp), %ebx
	movl	$1, 20(%eax)
	movl	-108(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	$1, 20(%eax)
	movl	4(%edi), %edx
	movl	(%ebx), %eax
	call	__ZL17tessMeshSplitEdgeP8TESSmeshP12TESShalfEdge.lto_priv.0
	testl	%eax, %eax
	je	L2297
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
	movss	24(%ebx), %xmm6
	subss	%xmm1, %xmm2
	movss	%xmm6, -88(%ebp)
L2305:
	subss	-88(%ebp), %xmm1
	movaps	%xmm2, %xmm3
	xorps	%xmm4, %xmm4
	addss	%xmm1, %xmm3
	comiss	%xmm4, %xmm3
	ja	L2482
L2307:
	movl	-100(%ebp), %eax
	movl	-48(%ebp), %ebx
	movl	$1, 20(%eax)
	movl	-120(%ebp), %eax
	movl	$1, 20(%eax)
	movl	4(%esi), %edx
	movl	(%ebx), %eax
	call	__ZL17tessMeshSplitEdgeP8TESSmeshP12TESShalfEdge.lto_priv.0
	testl	%eax, %eax
	je	L2297
	movl	80(%ebx), %edx
	movl	16(%esi), %eax
	movss	24(%edx), %xmm0
	movss	%xmm0, 24(%eax)
	movl	80(%ebx), %edx
	movl	16(%esi), %eax
	movss	28(%edx), %xmm0
	movss	%xmm0, 28(%eax)
	jmp	L2152
	.p2align 4,,10
	.p2align 3
L2181:
	movl	-72(%ebp), %eax
	movaps	%xmm0, %xmm3
	movaps	%xmm1, %xmm2
	subss	%xmm0, %xmm2
	movss	24(%eax), %xmm4
	subss	%xmm4, %xmm3
	movss	%xmm2, -128(%ebp)
	movss	%xmm3, -124(%ebp)
	movss	-36(%ebp), %xmm3
	movaps	%xmm3, %xmm2
	subss	%xmm4, %xmm2
	movaps	%xmm1, %xmm4
	subss	%xmm3, %xmm4
	xorps	%xmm3, %xmm3
	movss	%xmm2, -140(%ebp)
	movss	%xmm4, -136(%ebp)
	addss	%xmm2, %xmm4
	movss	-128(%ebp), %xmm2
	addss	-124(%ebp), %xmm2
	comiss	%xmm3, %xmm2
	movss	%xmm4, -132(%ebp)
	ja	L2194
	xorps	%xmm2, %xmm2
	comiss	%xmm2, %xmm4
	ja	L2483
L2196:
	movss	-36(%ebp), %xmm2
	addss	%xmm0, %xmm2
	mulss	LC3, %xmm2
	movss	%xmm2, -36(%ebp)
	jmp	L2179
	.p2align 4,,10
	.p2align 3
L2286:
	movss	-36(%ebp), %xmm2
	movaps	%xmm1, %xmm7
	subss	-84(%ebp), %xmm7
	xorps	%xmm5, %xmm5
	subss	%xmm1, %xmm2
	movaps	%xmm7, %xmm3
	addss	%xmm2, %xmm3
	comiss	%xmm5, %xmm3
	jbe	L2290
	movss	28(%eax), %xmm3
	movaps	%xmm3, %xmm4
	subss	%xmm6, %xmm3
	subss	%xmm0, %xmm4
	mulss	%xmm2, %xmm3
	mulss	%xmm7, %xmm4
	addss	%xmm3, %xmm4
	comiss	%xmm5, %xmm4
	jb	L2288
	jmp	L2290
	.p2align 4,,10
	.p2align 3
L2462:
	ucomiss	-40(%ebp), %xmm5
	jp	L2387
	je	L2265
L2387:
	movss	-36(%ebp), %xmm3
	movss	-40(%ebp), %xmm2
	comiss	%xmm2, %xmm3
	ja	L2484
	movss	-40(%ebp), %xmm3
	ucomiss	-36(%ebp), %xmm3
	jp	L2280
	jne	L2280
	movss	28(%edi), %xmm2
	comiss	%xmm2, %xmm0
	jb	L2280
	movss	-40(%ebp), %xmm7
	movaps	%xmm2, %xmm0
	movss	%xmm7, -36(%ebp)
	jmp	L2269
	.p2align 4,,10
	.p2align 3
L2461:
	ucomiss	-36(%ebp), %xmm1
	jp	L2256
	jne	L2256
	movss	28(%eax), %xmm2
	comiss	%xmm0, %xmm2
	jb	L2256
	movaps	%xmm2, %xmm0
	movss	%xmm1, -36(%ebp)
	jmp	L2256
	.p2align 4,,10
	.p2align 3
L2456:
	movl	-44(%ebp), %eax
	ucomiss	-60(%ebp), %xmm3
	movss	24(%eax), %xmm1
	movl	-56(%ebp), %eax
	movss	%xmm1, -44(%ebp)
	jp	L2226
	jne	L2226
	movss	24(%eax), %xmm4
	comiss	%xmm1, %xmm4
	movss	%xmm4, -56(%ebp)
	jnb	L2225
L2228:
	movl	-72(%ebp), %eax
	movss	-32(%ebp), %xmm4
	movss	24(%eax), %xmm1
	movss	28(%eax), %xmm0
	movaps	%xmm4, %xmm2
	movss	%xmm1, -96(%ebp)
	movaps	%xmm3, %xmm1
	subss	%xmm0, %xmm2
	subss	-60(%ebp), %xmm3
	subss	%xmm4, %xmm1
	movss	-60(%ebp), %xmm4
	subss	%xmm0, %xmm4
	movaps	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm4, -104(%ebp)
	addss	%xmm3, %xmm4
	movss	%xmm4, -72(%ebp)
	movaps	%xmm0, %xmm4
	xorps	%xmm0, %xmm0
	comiss	%xmm0, %xmm4
	ja	L2485
	movss	-72(%ebp), %xmm1
	xorps	%xmm2, %xmm2
	comiss	%xmm2, %xmm1
	ja	L2486
L2332:
	movss	-60(%ebp), %xmm0
	addss	-32(%ebp), %xmm0
	mulss	LC3, %xmm0
	jmp	L2222
	.p2align 4,,10
	.p2align 3
L2260:
	movaps	%xmm5, %xmm2
	movl	%ebx, %edx
L2276:
	ucomiss	-36(%ebp), %xmm2
	jp	L2280
	jne	L2280
	movss	28(%edx), %xmm3
	comiss	%xmm3, %xmm0
	jnb	L2487
L2280:
	ucomiss	-36(%ebp), %xmm5
	jp	L2269
	jne	L2269
L2275:
	ucomiss	%xmm0, %xmm7
	jp	L2269
	je	L2262
L2269:
	movss	-40(%ebp), %xmm7
	ucomiss	-36(%ebp), %xmm7
	jp	L2264
	jne	L2264
	movss	-64(%ebp), %xmm7
	ucomiss	%xmm0, %xmm7
	jp	L2264
	jne	L2264
L2262:
	movl	-120(%ebp), %edx
	movl	-48(%ebp), %eax
	call	__ZL19CheckForRightSpliceP14TESStesselatorP12ActiveRegion
	jmp	L2152
	.p2align 4,,10
	.p2align 3
L2345:
	movl	-60(%ebp), %eax
	movl	-56(%ebp), %edx
	movss	-104(%ebp), %xmm1
	movl	%edx, -60(%ebp)
	movl	%eax, -56(%ebp)
	movss	%xmm1, -32(%ebp)
	jmp	L2212
	.p2align 4,,10
	.p2align 3
L2337:
	movss	-80(%ebp), %xmm4
	movss	%xmm4, -104(%ebp)
L2468:
	movss	-64(%ebp), %xmm4
	movl	-52(%ebp), %eax
	movl	%edi, -60(%ebp)
	movss	-40(%ebp), %xmm0
	movl	%eax, -56(%ebp)
	movss	%xmm4, -32(%ebp)
	jmp	L2170
	.p2align 4,,10
	.p2align 3
L2265:
	movss	-64(%ebp), %xmm4
	comiss	%xmm7, %xmm4
	jb	L2464
	movss	-36(%ebp), %xmm3
	comiss	%xmm5, %xmm3
	jbe	L2260
	movss	28(%ebx), %xmm0
	movss	%xmm5, -36(%ebp)
	jmp	L2275
	.p2align 4,,10
	.p2align 3
L2451:
	addss	%xmm2, %xmm3
	divss	%xmm3, %xmm2
	movaps	%xmm0, %xmm3
	subss	%xmm1, %xmm3
	mulss	%xmm3, %xmm2
	addss	%xmm1, %xmm2
	movss	%xmm2, -36(%ebp)
	jmp	L2179
	.p2align 4,,10
	.p2align 3
L2457:
	addss	%xmm0, %xmm1
	divss	%xmm1, %xmm0
	movss	-32(%ebp), %xmm1
	subss	%xmm3, %xmm1
	mulss	%xmm1, %xmm0
	addss	%xmm3, %xmm0
	jmp	L2222
	.p2align 4,,10
	.p2align 3
L2226:
	movss	24(%eax), %xmm1
	movss	%xmm1, -56(%ebp)
	jmp	L2228
	.p2align 4,,10
	.p2align 3
L2484:
	movss	28(%edi), %xmm0
	movss	%xmm2, -36(%ebp)
	jmp	L2269
	.p2align 4,,10
	.p2align 3
L2449:
	movss	-80(%ebp), %xmm3
	movss	%xmm3, -104(%ebp)
	jmp	L2468
	.p2align 4,,10
	.p2align 3
L2472:
	movl	-68(%ebp), %eax
	movl	%ebx, -44(%ebp)
	movss	%xmm7, -96(%ebp)
	movl	%eax, -72(%ebp)
	movss	%xmm6, -76(%ebp)
	jmp	L2167
	.p2align 4,,10
	.p2align 3
L2464:
	movss	-36(%ebp), %xmm4
	movss	-40(%ebp), %xmm3
	comiss	%xmm3, %xmm4
	jbe	L2465
	movss	28(%edi), %xmm0
	movss	%xmm3, -36(%ebp)
	jmp	L2275
	.p2align 4,,10
	.p2align 3
L2485:
	movss	-76(%ebp), %xmm0
	subss	-44(%ebp), %xmm0
	movaps	%xmm0, %xmm4
	movss	-76(%ebp), %xmm0
	subss	-96(%ebp), %xmm0
	mulss	%xmm2, %xmm4
	xorps	%xmm2, %xmm2
	mulss	%xmm0, %xmm1
	addss	%xmm1, %xmm4
	movss	-72(%ebp), %xmm1
	comiss	%xmm2, %xmm1
	movaps	%xmm4, %xmm2
	ja	L2331
	movss	LC99, %xmm3
	xorps	%xmm0, %xmm0
L2242:
	xorps	%xmm1, %xmm1
	comiss	%xmm4, %xmm1
	jbe	L2488
	comiss	%xmm1, %xmm2
	movaps	%xmm2, %xmm3
	xorps	LC2, %xmm3
	seta	%dl
	comiss	%xmm0, %xmm1
	seta	%al
L2245:
	testb	%dl, %dl
	je	L2247
	xorps	%xmm3, %xmm3
L2247:
	testb	%al, %al
	je	L2249
	xorps	%xmm0, %xmm0
L2249:
	comiss	%xmm3, %xmm0
	jnb	L2489
	addss	%xmm0, %xmm3
	movss	-32(%ebp), %xmm1
	divss	%xmm3, %xmm0
	movss	-60(%ebp), %xmm3
	subss	%xmm3, %xmm1
	mulss	%xmm1, %xmm0
	addss	%xmm3, %xmm0
	jmp	L2222
	.p2align 4,,10
	.p2align 3
L2194:
	movss	-32(%ebp), %xmm2
	movss	-124(%ebp), %xmm3
	movaps	%xmm2, %xmm4
	subss	-96(%ebp), %xmm4
	subss	-76(%ebp), %xmm2
	mulss	-128(%ebp), %xmm2
	mulss	%xmm4, %xmm3
	movss	-132(%ebp), %xmm4
	addss	%xmm2, %xmm3
	xorps	%xmm2, %xmm2
	comiss	%xmm2, %xmm4
	ja	L2195
	movss	LC99, %xmm4
	movss	%xmm3, -124(%ebp)
	movss	%xmm4, -128(%ebp)
	xorps	%xmm4, %xmm4
L2197:
	xorps	%xmm2, %xmm2
	comiss	-124(%ebp), %xmm2
	jbe	L2199
	xorps	LC2, %xmm3
	movss	%xmm4, -128(%ebp)
L2199:
	movaps	%xmm3, %xmm4
	xorps	%xmm2, %xmm2
	cmpnltss	%xmm2, %xmm4
	movss	-128(%ebp), %xmm2
	andps	%xmm3, %xmm4
	movaps	%xmm2, %xmm3
	movss	%xmm4, -124(%ebp)
	xorps	%xmm4, %xmm4
	cmpnltss	%xmm4, %xmm3
	andps	%xmm2, %xmm3
	comiss	-124(%ebp), %xmm3
	jnb	L2490
	movss	-124(%ebp), %xmm4
	movss	-36(%ebp), %xmm2
	addss	%xmm3, %xmm4
	divss	%xmm4, %xmm3
	movaps	%xmm0, %xmm4
	subss	%xmm2, %xmm4
	mulss	%xmm4, %xmm3
	addss	%xmm2, %xmm3
	movss	%xmm3, -36(%ebp)
	jmp	L2179
	.p2align 4,,10
	.p2align 3
L2487:
	movaps	%xmm3, %xmm0
	movss	%xmm2, -36(%ebp)
	jmp	L2280
	.p2align 4,,10
	.p2align 3
L2312:
	movl	4(%esi), %eax
L2317:
	movl	-36(%ebp), %edx
	movl	-32(%ebp), %esi
	movl	%esi, (%eax,%edx,4)
	movl	%edx, %esi
	notl	%esi
L2311:
	movl	-32(%ebp), %eax
	movl	%esi, 32(%eax)
	movl	-92(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	$268435455, 32(%eax)
	je	L2491
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
	movl	-120(%ebp), %eax
	movl	$1, 20(%eax)
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	$1, 20(%eax)
	jmp	L2152
	.p2align 4,,10
	.p2align 3
L2482:
	movss	28(%eax), %xmm3
	movl	-52(%ebp), %eax
	movaps	%xmm3, %xmm5
	subss	%xmm0, %xmm3
	subss	28(%eax), %xmm5
	mulss	%xmm1, %xmm3
	mulss	%xmm5, %xmm2
	addss	%xmm3, %xmm2
	comiss	%xmm2, %xmm4
	jb	L2152
	jmp	L2307
	.p2align 4,,10
	.p2align 3
L2481:
	movss	28(%eax), %xmm3
	movaps	%xmm3, %xmm4
	subss	%xmm6, %xmm3
	subss	%xmm0, %xmm4
	mulss	%xmm2, %xmm3
	mulss	%xmm5, %xmm4
	addss	%xmm3, %xmm4
	comiss	%xmm7, %xmm4
	jb	L2305
	jmp	L2303
	.p2align 4,,10
	.p2align 3
L2478:
	movss	28(%eax), %xmm3
	movaps	%xmm3, %xmm4
	subss	-80(%ebp), %xmm3
	subss	%xmm0, %xmm4
	mulss	%xmm2, %xmm3
	mulss	%xmm7, %xmm4
	addss	%xmm3, %xmm4
	comiss	%xmm4, %xmm5
	jb	L2294
	jmp	L2290
	.p2align 4,,10
	.p2align 3
L2483:
	xorps	%xmm3, %xmm3
L2195:
	movss	-104(%ebp), %xmm2
	movaps	%xmm2, %xmm4
	subss	-76(%ebp), %xmm2
	subss	-96(%ebp), %xmm4
	mulss	-136(%ebp), %xmm2
	mulss	-140(%ebp), %xmm4
	addss	%xmm2, %xmm4
	movaps	%xmm4, %xmm2
	xorps	LC2, %xmm2
	movss	%xmm2, -128(%ebp)
	movaps	%xmm3, %xmm2
	subss	%xmm4, %xmm2
	movss	%xmm2, -124(%ebp)
	jmp	L2197
	.p2align 4,,10
	.p2align 3
L2486:
	xorps	%xmm2, %xmm2
L2331:
	movss	-56(%ebp), %xmm1
	movaps	%xmm2, %xmm4
	movaps	%xmm1, %xmm0
	subss	-96(%ebp), %xmm1
	subss	-44(%ebp), %xmm0
	mulss	-104(%ebp), %xmm0
	mulss	%xmm3, %xmm1
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm3
	subss	%xmm0, %xmm4
	xorps	LC2, %xmm3
	jmp	L2242
	.p2align 4,,10
	.p2align 3
L2476:
	movl	(%esi), %edx
	movl	-32(%ebp), %ecx
	addl	$112, %eax
	call	__ZL12pqHeapInsertP9TESSallocP13PriorityQHeapPv
	movl	%eax, %esi
	jmp	L2311
	.p2align 4,,10
	.p2align 3
L2479:
	movl	-48(%ebp), %eax
	movl	-112(%ebp), %edx
	movl	(%eax), %eax
	call	__ZL17tessMeshSplitEdgeP8TESSmeshP12TESShalfEdge.lto_priv.0
	testl	%eax, %eax
	je	L2297
	movl	4(%esi), %edx
	movl	-48(%ebp), %esi
	movl	-92(%ebp), %ecx
	movl	(%esi), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L2297
	movl	-120(%ebp), %edx
	movl	%esi, %eax
	movl	%esi, -48(%ebp)
	call	__ZL13TopLeftRegionP14TESStesselatorP12ActiveRegion
	movl	%eax, %esi
	testl	%eax, %eax
	je	L2297
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
	jmp	L2151
	.p2align 4,,10
	.p2align 3
L2465:
	movss	-40(%ebp), %xmm2
	movl	%edi, %edx
	jmp	L2276
	.p2align 4,,10
	.p2align 3
L2480:
	movl	-48(%ebp), %ebx
	movl	-116(%ebp), %edx
	movl	(%ebx), %eax
	call	__ZL17tessMeshSplitEdgeP8TESSmeshP12TESShalfEdge.lto_priv.0
	testl	%eax, %eax
	je	L2297
	movl	4(%esi), %eax
	movl	12(%eax), %ecx
	movl	-92(%ebp), %eax
	movl	12(%eax), %edx
	movl	(%ebx), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L2297
	movl	-120(%ebp), %edi
	movl	(%edi), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %edx
	.p2align 5
	.p2align 4
	.p2align 3
L2302:
	movl	4(%edi), %eax
	movl	4(%eax), %eax
	movl	(%eax), %edi
	movl	(%edi), %eax
	movl	4(%eax), %eax
	cmpl	16(%eax), %edx
	je	L2302
	movl	4(%edi), %eax
	movl	-120(%ebp), %edx
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
	jmp	L2151
	.p2align 4,,10
	.p2align 3
L2488:
	comiss	%xmm2, %xmm1
	seta	%dl
	comiss	%xmm1, %xmm0
	movaps	%xmm3, %xmm0
	movaps	%xmm2, %xmm3
	seta	%al
	jmp	L2245
	.p2align 4,,10
	.p2align 3
L2489:
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	L2252
	je	L2332
L2252:
	addss	%xmm3, %xmm0
	movss	-32(%ebp), %xmm1
	divss	%xmm0, %xmm3
	movss	-60(%ebp), %xmm0
	subss	%xmm1, %xmm0
	mulss	%xmm0, %xmm3
	addss	%xmm3, %xmm1
	movaps	%xmm1, %xmm0
	jmp	L2222
	.p2align 4,,10
	.p2align 3
L2490:
	ucomiss	%xmm4, %xmm3
	jp	L2207
	je	L2196
L2207:
	movss	-124(%ebp), %xmm2
	addss	%xmm2, %xmm3
	divss	%xmm3, %xmm2
	movaps	%xmm2, %xmm4
	movss	-36(%ebp), %xmm2
	subss	%xmm0, %xmm2
	mulss	%xmm2, %xmm4
	addss	%xmm0, %xmm4
	movss	%xmm4, -36(%ebp)
	jmp	L2179
L2316:
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esi)
L2313:
	movl	$268435455, %esi
	jmp	L2311
L2314:
	movl	%edx, 8(%esp)
	movl	-40(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-48(%ebp), %edx
	movl	124(%edx), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L2315
L2477:
	movl	%edx, %eax
	call	__Z13handle_memerri
L2297:
	movl	$1, 4(%esp)
	movl	-48(%ebp), %eax
	addl	$152, %eax
	movl	%eax, (%esp)
	call	*__imp__longjmp
L2491:
	movl	-48(%ebp), %eax
	movl	76(%eax), %ebx
	movl	(%ebx), %esi
	testl	%esi, %esi
	je	L2319
	movl	120(%eax), %eax
	movl	4(%esi), %edx
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L2320
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	pushl	%eax
L2321:
	movl	-48(%ebp), %eax
	movl	(%esi), %edx
	movl	120(%eax), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L2322
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	pushl	%eax
L2323:
	movl	-48(%ebp), %eax
	movl	120(%eax), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L2324
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	pushl	%eax
L2319:
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	L2325
	movl	-48(%ebp), %edx
	movl	120(%edx), %edx
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %edx
	jne	L2326
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	pushl	%edi
L2325:
	movl	4(%ebx), %eax
	testl	%eax, %eax
	je	L2327
	movl	-48(%ebp), %edx
	movl	120(%edx), %edx
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %edx
	jne	L2328
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	pushl	%esi
L2327:
	movl	-48(%ebp), %eax
	movl	120(%eax), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L2329
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	pushl	%ecx
L2330:
	movl	-48(%ebp), %eax
	xorl	%edx, %edx
	movl	%edx, 76(%eax)
	addl	$152, %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__longjmp
L2328:
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	124(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	jmp	L2327
L2329:
	movl	%ebx, 4(%esp)
	movl	-48(%ebp), %ebx
	movl	124(%ebx), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L2330
L2322:
	movl	%edx, 4(%esp)
	movl	-48(%ebp), %edx
	movl	124(%edx), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L2323
L2320:
	movl	%edx, 4(%esp)
	movl	-48(%ebp), %edx
	movl	124(%edx), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L2321
L2324:
	movl	%esi, 4(%esp)
	movl	-48(%ebp), %edx
	movl	124(%edx), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L2319
L2326:
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	124(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	jmp	L2325
	.cfi_endproc
LFE242:
	.p2align 4
	.def	__ZL16WalkDirtyRegionsP14TESStesselatorP12ActiveRegion;	.scl	3;	.type	32;	.endef
__ZL16WalkDirtyRegionsP14TESStesselatorP12ActiveRegion:
LFB253:
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
L2493:
	movl	20(%edi), %ebx
	testl	%ebx, %ebx
	jne	L2494
L2555:
	movl	20(%ebp), %ecx
	testl	%ecx, %ecx
	jne	L2495
	movl	4(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L2492
	movl	20(%eax), %edx
	testl	%edx, %edx
	je	L2492
	movl	%ebp, %edi
	movl	%eax, %ebp
L2495:
	movl	$0, 20(%ebp)
	movl	0(%ebp), %ebx
	movl	(%edi), %esi
	movl	4(%ebx), %eax
	movl	4(%esi), %ecx
	movl	16(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	16(%ecx), %ecx
	cmpl	%ecx, %eax
	je	L2497
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
	ja	L2498
	ucomiss	%xmm0, %xmm1
	jp	L2499
	jne	L2499
	movss	28(%edx), %xmm2
	comiss	28(%eax), %xmm2
	jnb	L2498
L2499:
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
	ja	L2552
L2508:
	movl	12(%esp), %eax
	movl	16(%esp), %edx
	movl	$1, 20(%eax)
	movl	8(%esp), %eax
	movl	$1, 20(%ebp)
	movl	(%eax), %eax
	call	__ZL17tessMeshSplitEdgeP8TESSmeshP12TESShalfEdge.lto_priv.0
	movl	%eax, 12(%esp)
	testl	%eax, %eax
	je	L2506
	movl	16(%esp), %edx
	movl	8(%esp), %eax
	movl	4(%edx), %ecx
	movl	(%eax), %eax
	movl	12(%ebx), %edx
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	je	L2506
	movl	12(%esp), %ecx
	movl	12(%ebp), %edx
	movl	4(%ecx), %eax
	movl	20(%eax), %eax
	movb	%dl, 21(%eax)
	movl	24(%edi), %eax
	testl	%eax, %eax
	jne	L2553
L2511:
	movl	24(%ebp), %ecx
	testl	%ecx, %ecx
	jne	L2554
L2512:
	movl	4(%esi), %ecx
	movl	4(%ebx), %eax
	movl	16(%esi), %edx
	movl	%ecx, 12(%esp)
	movl	16(%eax), %eax
	movl	16(%ecx), %ecx
	cmpl	%edx, 16(%ebx)
	je	L2513
	cmpl	%ecx, %eax
	je	L2514
L2519:
	movl	24(%ebp), %edx
	testl	%edx, %edx
	jne	L2514
	movl	24(%edi), %edx
	testl	%edx, %edx
	jne	L2514
	movl	8(%esp), %edx
	movl	80(%edx), %edx
	cmpl	%ecx, %edx
	je	L2525
	cmpl	%eax, %edx
	je	L2525
	.p2align 4
	.p2align 3
L2514:
	movl	8(%esp), %eax
	movl	%ebp, %edx
	call	__ZL19CheckForRightSpliceP14TESStesselatorP12ActiveRegion
L2517:
	movl	16(%esi), %eax
	cmpl	%eax, 16(%ebx)
	jne	L2493
	movl	4(%esi), %ecx
	movl	4(%ebx), %eax
	movl	%ecx, 12(%esp)
	movl	16(%eax), %eax
	movl	16(%ecx), %ecx
L2513:
	cmpl	%ecx, %eax
	je	L2520
	movl	20(%edi), %ebx
	testl	%ebx, %ebx
	je	L2555
	.p2align 4
	.p2align 3
L2494:
	movl	4(%edi), %eax
	movl	%edi, %ebp
	movl	8(%eax), %eax
	movl	(%eax), %edi
	jmp	L2493
	.p2align 4,,10
	.p2align 3
L2497:
	movl	16(%esi), %eax
	cmpl	%eax, 16(%ebx)
	jne	L2514
L2520:
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
	je	L2506
	movl	4(%edi), %eax
	movl	4(%eax), %eax
	movl	(%eax), %ebp
	jmp	L2493
	.p2align 4,,10
	.p2align 3
L2498:
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
	ja	L2556
L2502:
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
	je	L2506
	movl	16(%esp), %eax
	movl	%ecx, 12(%esp)
	movl	4(%eax), %edx
	movl	8(%esp), %eax
	movl	(%eax), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	je	L2506
	movl	12(%esp), %ecx
	movl	12(%ebp), %edx
	movl	20(%ecx), %eax
	movb	%dl, 21(%eax)
	movl	24(%edi), %eax
	testl	%eax, %eax
	je	L2511
L2553:
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
	je	L2506
	movl	4(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %edi
	movl	(%edi), %esi
	jmp	L2512
	.p2align 4,,10
	.p2align 3
L2556:
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
	jbe	L2502
L2504:
	movl	12(%esp), %edx
	cmpl	%edx, 16(%esi)
	jne	L2519
	jmp	L2493
	.p2align 4,,10
	.p2align 3
L2552:
	movss	28(%eax), %xmm1
	movaps	%xmm1, %xmm2
	subss	28(%edx), %xmm2
	movl	20(%esp), %edx
	subss	28(%edx), %xmm1
	mulss	%xmm3, %xmm2
	mulss	%xmm0, %xmm1
	addss	%xmm1, %xmm2
	comiss	%xmm5, %xmm2
	jbe	L2508
	movl	16(%ebx), %edx
	movl	%edx, 12(%esp)
	jmp	L2504
	.p2align 4,,10
	.p2align 3
L2525:
	movl	8(%esp), %eax
	movl	%ebp, %edx
	call	__ZL17CheckForIntersectP14TESStesselatorP12ActiveRegion
	testl	%eax, %eax
	je	L2517
L2492:
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
L2554:
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
	je	L2506
	movl	4(%edi), %eax
	movl	4(%eax), %eax
	movl	(%eax), %ebp
	movl	0(%ebp), %ebx
	jmp	L2512
L2506:
	movl	8(%esp), %eax
	movl	$1, 4(%esp)
	addl	$152, %eax
	movl	%eax, (%esp)
	call	*__imp__longjmp
	.cfi_endproc
LFE253:
	.p2align 4
	.def	__ZL10SweepEventP14TESStesselatorP10TESSvertex;	.scl	3;	.type	32;	.endef
__ZL10SweepEventP14TESStesselatorP10TESSvertex:
LFB255:
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
	jmp	L2558
	.p2align 4
	.p2align 4,,10
	.p2align 3
L2591:
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	je	L2685
L2558:
	movl	24(%eax), %ebx
	testl	%ebx, %ebx
	je	L2591
	movl	12(%esp), %edi
	movl	%ebx, %edx
	movl	%edi, %eax
	call	__ZL13TopLeftRegionP14TESStesselatorP12ActiveRegion
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L2573
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
	je	L2686
	movl	$1, 8(%esp)
	movl	12(%esp), %eax
	movl	%edi, %ecx
	movl	%ebx, %edx
	movl	%esi, 4(%esp)
	movl	%esi, (%esp)
	call	__ZL13AddRightEdgesP14TESStesselatorP12ActiveRegionP12TESShalfEdgePKS3_S4_i
L2557:
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
L2685:
	.cfi_restore_state
	movl	4(%edx), %eax
	movl	%eax, 32(%esp)
	movl	12(%esp), %eax
	movl	72(%eax), %edi
	movl	%edi, %ebp
L2560:
	movl	4(%ebp), %ebp
	movl	0(%ebp), %esi
	testl	%esi, %esi
	je	L2559
	leal	32(%esp), %eax
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%edi), %eax
	movl	%eax, (%esp)
	call	*20(%edi)
	testl	%eax, %eax
	je	L2560
	movl	0(%ebp), %esi
L2559:
	movl	4(%esi), %eax
	movl	8(%eax), %edx
	movl	(%edx), %ebp
	testl	%ebp, %ebp
	je	L2557
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
	ja	L2687
L2562:
	ucomiss	%xmm6, %xmm1
	jp	L2566
	jne	L2566
	movl	16(%esp), %edi
	movss	28(%edx), %xmm2
	ucomiss	28(%edi), %xmm2
	jp	L2566
	jne	L2566
	movl	12(%esp), %eax
	movl	8(%edi), %ecx
	movl	20(%esp), %edx
	movl	(%eax), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	jne	L2557
	jmp	L2573
	.p2align 4,,10
	.p2align 3
L2686:
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
	je	L2593
	movl	12(%esp), %eax
	movl	%ebx, %edx
	call	__ZL17CheckForIntersectP14TESStesselatorP12ActiveRegion
L2593:
	movl	12(%esp), %ecx
	movl	16(%esi), %edx
	movl	80(%ecx), %eax
	movss	24(%edx), %xmm1
	movl	(%ecx), %ecx
	movss	24(%eax), %xmm0
	movl	%ecx, 20(%esp)
	ucomiss	%xmm0, %xmm1
	jp	L2594
	jne	L2594
	movss	28(%edx), %xmm2
	movss	28(%eax), %xmm3
	ucomiss	%xmm3, %xmm2
	jp	L2596
	je	L2688
L2596:
	movl	16(%esp), %eax
	movl	16(%eax), %eax
	movss	24(%eax), %xmm4
	ucomiss	%xmm4, %xmm0
	jp	L2603
	jne	L2603
	movss	28(%eax), %xmm0
	ucomiss	%xmm3, %xmm0
	jp	L2611
	jne	L2611
L2608:
	movl	16(%esp), %eax
	movl	%ebp, %edx
	movl	4(%eax), %eax
	movl	12(%eax), %ecx
	movl	20(%esp), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	je	L2573
	movl	24(%esp), %edx
	movl	12(%esp), %eax
	xorl	%ecx, %ecx
	call	__ZL17FinishLeftRegionsP14TESStesselatorP12ActiveRegionPKS1_
	movl	%eax, %ebp
L2600:
	movl	8(%ebp), %ecx
	movl	12(%esp), %eax
	movl	%edi, 4(%esp)
	movl	%ebx, %edx
	movl	$1, 8(%esp)
	movl	%edi, (%esp)
	call	__ZL13AddRightEdgesP14TESStesselatorP12ActiveRegionP12TESShalfEdgePKS3_S4_i
	jmp	L2557
L2566:
	ucomiss	%xmm0, %xmm1
	jp	L2569
	jne	L2569
	movl	16(%esp), %edi
	movss	28(%ecx), %xmm0
	ucomiss	28(%edi), %xmm0
	jp	L2569
	je	L2571
L2569:
	movl	12(%esp), %edi
	movl	28(%esp), %edx
	movl	(%edi), %eax
	call	__ZL17tessMeshSplitEdgeP8TESSmeshP12TESShalfEdge.lto_priv.0
	testl	%eax, %eax
	je	L2573
	movl	24(%esi), %ecx
	testl	%ecx, %ecx
	je	L2574
	movl	20(%esp), %eax
	movl	8(%eax), %edx
	movl	(%edi), %eax
	call	__ZL14tessMeshDeleteP8TESSmeshP12TESShalfEdge
	testl	%eax, %eax
	je	L2573
	movl	$0, 24(%esi)
L2574:
	movl	16(%esp), %eax
	movl	20(%esp), %ecx
	movl	8(%eax), %edx
	movl	12(%esp), %eax
	movl	(%eax), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	jne	L2589
L2573:
	movl	12(%esp), %eax
	movl	$1, 4(%esp)
	addl	$152, %eax
	movl	%eax, (%esp)
	call	*__imp__longjmp
	.p2align 4,,10
	.p2align 3
L2687:
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
	jp	L2564
	je	L2562
L2564:
	movl	0(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %edx
	movss	24(%edx), %xmm1
	comiss	%xmm1, %xmm0
	ja	L2579
	ucomiss	%xmm0, %xmm1
	jp	L2580
	jne	L2580
	comiss	28(%edx), %xmm7
	jb	L2580
L2579:
	movl	12(%esi), %edi
	testl	%edi, %edi
	je	L2689
L2583:
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
	je	L2573
	movl	%esi, %ebp
	movl	24(%ebp), %eax
	testl	%eax, %eax
	je	L2588
L2690:
	movl	12(%esp), %eax
	movl	0(%ebp), %edx
	movl	(%eax), %eax
	call	__ZL14tessMeshDeleteP8TESSmeshP12TESShalfEdge
	testl	%eax, %eax
	je	L2573
	movl	$0, 24(%ebp)
	movl	%ebx, 0(%ebp)
	movl	%ebp, 24(%ebx)
L2589:
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
L2580:
	.cfi_restore_state
	movl	12(%esi), %ecx
	testl	%ecx, %ecx
	jne	L2585
	movl	24(%ebp), %edx
	testl	%edx, %edx
	je	L2584
L2585:
	cmpl	%esi, %ebp
	je	L2583
	movl	8(%eax), %eax
	movl	16(%esp), %ecx
	movl	4(%eax), %edx
	movl	12(%esp), %eax
	movl	8(%ecx), %ecx
	movl	(%eax), %eax
	call	__ZL15tessMeshConnectP8TESSmeshP12TESShalfEdgeS2_
	testl	%eax, %eax
	je	L2573
	movl	4(%eax), %ebx
	movl	24(%ebp), %eax
	testl	%eax, %eax
	jne	L2690
L2588:
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
	jmp	L2589
	.p2align 4,,10
	.p2align 3
L2689:
	movl	24(%esi), %ebx
	testl	%ebx, %ebx
	jne	L2583
L2584:
	movl	16(%esp), %eax
	movl	%esi, %edx
	movl	8(%eax), %ecx
	movl	12(%esp), %eax
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	call	__ZL13AddRightEdgesP14TESStesselatorP12ActiveRegionP12TESShalfEdgePKS3_S4_i
	jmp	L2557
L2594:
	movl	16(%esp), %ecx
	movl	16(%ecx), %ecx
	movss	24(%ecx), %xmm2
	ucomiss	%xmm0, %xmm2
	jp	L2604
	jne	L2604
	movss	28(%eax), %xmm0
	ucomiss	28(%ecx), %xmm0
	jp	L2606
	je	L2608
L2606:
	comiss	%xmm2, %xmm1
	jbe	L2617
L2614:
	movl	16(%esp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %esi
L2617:
	movl	8(%ebp), %eax
	movl	%esi, %ecx
	movl	4(%eax), %edx
	movl	20(%esp), %eax
	call	__ZL15tessMeshConnectP8TESSmeshP12TESShalfEdgeS2_
	movl	%eax, %esi
	testl	%eax, %eax
	je	L2573
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
L2571:
	.cfi_restore_state
	movl	4(%eax), %eax
	movl	(%eax), %esi
	movl	(%esi), %edx
	movl	4(%esi), %eax
	movl	4(%edx), %edx
	cmpl	16(%edx), %ecx
	je	L2571
	movl	8(%eax), %eax
	movl	(%eax), %ecx
	movl	(%ecx), %eax
	movl	24(%ecx), %edx
	movl	4(%eax), %edi
	movl	%edi, 20(%esp)
	movl	8(%edi), %ebp
	testl	%edx, %edx
	je	L2575
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
	je	L2573
	movl	4(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 20(%esp)
L2575:
	movl	16(%esp), %eax
	movl	20(%esp), %ecx
	movl	8(%eax), %edx
	movl	12(%esp), %eax
	movl	(%eax), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	je	L2573
	movl	4(%ebp), %eax
	movl	16(%ebp), %edx
	movl	16(%eax), %eax
	movss	24(%edx), %xmm0
	movss	24(%eax), %xmm1
	comiss	%xmm1, %xmm0
	ja	L2620
	ucomiss	%xmm0, %xmm1
	jp	L2576
	jne	L2576
	movss	28(%edx), %xmm0
	ucomiss	28(%eax), %xmm0
	cmovnb	%ebp, %ebx
L2576:
	movl	20(%esp), %eax
	movl	%esi, %edx
	movl	8(%eax), %ecx
	movl	12(%esp), %eax
	movl	$1, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%ebp, (%esp)
	call	__ZL13AddRightEdgesP14TESStesselatorP12ActiveRegionP12TESShalfEdgePKS3_S4_i
	jmp	L2557
L2604:
	comiss	%xmm2, %xmm1
	ja	L2614
	ucomiss	%xmm1, %xmm2
	jp	L2617
	jne	L2617
	movss	28(%ecx), %xmm0
	movss	28(%edx), %xmm2
L2611:
	comiss	%xmm0, %xmm2
	jb	L2617
	jmp	L2614
L2603:
	comiss	%xmm4, %xmm1
	ja	L2614
	jmp	L2617
L2688:
	movl	4(%edi), %eax
	movl	%esi, %ecx
	movl	12(%eax), %edx
	movl	20(%esp), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	je	L2573
	movl	12(%esp), %esi
	movl	%ebx, %edx
	movl	%esi, %eax
	call	__ZL13TopLeftRegionP14TESStesselatorP12ActiveRegion
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L2573
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
	jp	L2600
	jne	L2600
	movss	28(%edx), %xmm0
	ucomiss	28(%eax), %xmm0
	jp	L2600
	jne	L2600
	movl	12(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 20(%esp)
	jmp	L2608
L2620:
	movl	%ebp, %ebx
	jmp	L2576
	.cfi_endproc
LFE255:
	.p2align 4
	.globl	__Z13tessTesselateP14TESStesselatoriiiiPKf.constprop.0
	.def	__Z13tessTesselateP14TESStesselatoriiiiPKf.constprop.0;	.scl	2;	.type	32;	.endef
__Z13tessTesselateP14TESStesselatoriiiiPKf.constprop.0:
LFB261:
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
	je	L2692
	movl	120(%edi), %edx
	movl	124(%edi), %ecx
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %edx
	jne	L2693
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2694:
	movl	-116(%ebp), %eax
	movl	$0, 92(%eax)
L2692:
	movl	-116(%ebp), %edi
	movl	104(%edi), %eax
	testl	%eax, %eax
	je	L2695
	movl	120(%edi), %edx
	movl	124(%edi), %ecx
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %edx
	jne	L2696
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2697:
	movl	-116(%ebp), %eax
	movl	$0, 104(%eax)
L2695:
	movl	-116(%ebp), %edi
	movl	96(%edi), %eax
	testl	%eax, %eax
	je	L2698
	movl	120(%edi), %edx
	movl	124(%edi), %ecx
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %edx
	jne	L2699
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2700:
	movl	-116(%ebp), %eax
	movl	$0, 96(%eax)
L2698:
	movl	-116(%ebp), %eax
	movl	$0, 88(%eax)
	addl	$152, %eax
	movl	$2, -84(%eax)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp___setjmp3
	movl	%eax, -136(%ebp)
	testl	%eax, %eax
	jne	L2704
	movl	-116(%ebp), %eax
	movl	(%eax), %ebx
	testl	%ebx, %ebx
	je	L2704
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
	jne	L3083
L2705:
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
L2717:
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
	ja	L2983
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
L2740:
	xorps	%xmm0, %xmm0
	leal	(%edx,%eax), %ecx
	addl	%esi, %edx
	addl	%ebx, %eax
	comiss	%xmm0, %xmm1
	jbe	L3084
	movss	LC99, %xmm1
	movss	LC100, %xmm0
L2741:
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
	je	L2742
	.p2align 4
	.p2align 3
L2743:
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
	jne	L2743
	movl	-172(%ebp), %eax
	testl	%eax, %eax
	jne	L3085
L2744:
	movl	(%esi), %eax
	cmpl	%eax, %ecx
	je	L2751
	movss	24(%eax), %xmm0
	movl	-116(%ebp), %edx
	movss	%xmm0, 52(%edx)
	movss	%xmm0, 44(%edx)
	movss	28(%eax), %xmm0
	movss	%xmm0, 56(%edx)
	movss	%xmm0, 48(%edx)
L2752:
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	je	L2751
L3086:
	movss	24(%eax), %xmm0
	movss	44(%edx), %xmm1
	comiss	%xmm0, %xmm1
	jbe	L2761
	movss	%xmm0, 44(%edx)
L2761:
	comiss	52(%edx), %xmm0
	jbe	L2753
	movss	%xmm0, 52(%edx)
L2753:
	movss	28(%eax), %xmm0
	movss	48(%edx), %xmm1
	comiss	%xmm0, %xmm1
	jbe	L2755
	movss	%xmm0, 48(%edx)
L2755:
	comiss	56(%edx), %xmm0
	jbe	L2752
	movss	%xmm0, 56(%edx)
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	jne	L3086
L2751:
	movl	-116(%ebp), %eax
	movl	(%eax), %esi
L2762:
	movl	68(%esi), %ebx
	leal	68(%esi), %edx
	cmpl	%ebx, %edx
	je	L2763
	movl	%edx, -124(%ebp)
	movl	(%ebx), %edi
	jmp	L2778
	.p2align 4,,10
	.p2align 3
L2985:
	movl	%edi, %ebx
L2772:
	movl	(%ebx), %edi
	cmpl	%ebx, -124(%ebp)
	je	L3087
L2778:
	movl	4(%ebx), %eax
	movl	16(%ebx), %edx
	movl	12(%ebx), %esi
	movl	16(%eax), %eax
	movss	24(%edx), %xmm0
	ucomiss	24(%eax), %xmm0
	jp	L2766
	jne	L2766
	movss	28(%edx), %xmm0
	ucomiss	28(%eax), %xmm0
	jp	L2766
	jne	L2766
	movl	12(%esi), %ecx
	cmpl	%ecx, %ebx
	je	L2769
	movl	-116(%ebp), %eax
	movl	%ebx, %ecx
	movl	%esi, %edx
	movl	(%eax), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	je	L2902
	movl	-116(%ebp), %eax
	movl	%ebx, %edx
	movl	(%eax), %eax
	call	__ZL14tessMeshDeleteP8TESSmeshP12TESShalfEdge
	testl	%eax, %eax
	je	L2902
	movl	%esi, %ebx
	movl	12(%esi), %esi
	.p2align 4
	.p2align 3
L2766:
	cmpl	%ebx, 12(%esi)
	jne	L2985
	movl	%ebx, %ecx
L2769:
	cmpl	%ecx, %esi
	je	L2986
	cmpl	%edi, %esi
	je	L2774
	movl	%edi, %ebx
	cmpl	4(%edi), %esi
	je	L2774
L2775:
	movl	-116(%ebp), %eax
	movl	%esi, %edx
	movl	%ecx, -128(%ebp)
	movl	(%eax), %eax
	call	__ZL14tessMeshDeleteP8TESSmeshP12TESShalfEdge
	movl	-128(%ebp), %ecx
	testl	%eax, %eax
	je	L2902
L2773:
	cmpl	%ecx, %ebx
	je	L2776
	cmpl	%ecx, 4(%ebx)
	je	L2776
L2777:
	movl	-116(%ebp), %eax
	movl	%ecx, %edx
	movl	(%eax), %eax
	call	__ZL14tessMeshDeleteP8TESSmeshP12TESShalfEdge
	testl	%eax, %eax
	jne	L2772
	.p2align 4
	.p2align 3
L2902:
	movl	$1, 4(%esp)
	movl	-116(%ebp), %eax
	addl	$152, %eax
	movl	%eax, (%esp)
	call	*__imp__longjmp
L2949:
	movl	%edx, 4(%esp)
	movl	-116(%ebp), %esi
	movl	124(%esi), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, 104(%esi)
	testl	%eax, %eax
	jne	L2951
L2956:
	movl	-116(%ebp), %eax
	movl	$1, 4(%eax)
L2952:
	movl	-120(%ebp), %edi
	movl	140(%edi), %eax
	call	__ZL17deleteBucketAllocP11BucketAlloc.lto_priv.0
	movl	144(%edi), %eax
	call	__ZL17deleteBucketAllocP11BucketAlloc.lto_priv.0
	movl	148(%edi), %eax
	call	__ZL17deleteBucketAllocP11BucketAlloc.lto_priv.0
	movl	-116(%ebp), %esi
	movl	120(%esi), %eax
	movl	124(%esi), %edx
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L2973
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2974:
	movl	-116(%ebp), %eax
	movl	4(%eax), %ecx
	movl	$0, (%eax)
	testl	%ecx, %ecx
	je	L2691
L2704:
	movl	$0, -152(%ebp)
L2691:
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
L2776:
	.cfi_restore_state
	movl	(%ebx), %ebx
	jmp	L2777
	.p2align 4,,10
	.p2align 3
L2774:
	movl	(%edi), %ebx
	jmp	L2775
	.p2align 4,,10
	.p2align 3
L2986:
	movl	%edi, %ebx
	jmp	L2773
L3087:
	movl	-116(%ebp), %eax
	movl	(%eax), %esi
L2763:
	movl	(%esi), %eax
	movl	-136(%ebp), %edi
	movl	%esi, %ecx
	cmpl	%eax, %esi
	je	L2779
	.p2align 4
	.p2align 4
	.p2align 3
L2780:
	movl	(%eax), %eax
	addl	$1, %edi
	cmpl	%eax, %ecx
	jne	L2780
L2779:
	movl	-116(%ebp), %eax
	movl	148(%eax), %esi
	movl	112(%eax), %eax
	movl	%esi, -220(%ebp)
	cmpl	$__ZL9heapAllocPvj.lto_priv.0, %eax
	jne	L2781
	movl	$28, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L3081
L2782:
	movl	-116(%ebp), %eax
	movl	112(%eax), %eax
	cmpl	$__ZL9heapAllocPvj.lto_priv.0, %eax
	jne	L2784
	movl	$28, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L3081
L2785:
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
	jne	L2787
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -244(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L2788
	movl	%eax, (%esi)
L2789:
	movl	-116(%ebp), %eax
	movl	-236(%ebp), %edx
	movl	112(%eax), %eax
	sall	$3, %edx
	cmpl	$__ZL9heapAllocPvj.lto_priv.0, %eax
	jne	L2792
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -248(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L2793
	movl	%eax, 4(%esi)
L2794:
	movl	(%esi), %eax
	movl	$0, 16(%esi)
	movl	$0, 20(%esi)
	movl	$__ZL10tesvertLeqPK10TESSvertexS1_.lto_priv.0, 24(%esi)
	movl	$1, 4(%eax)
	movl	4(%esi), %eax
	movl	$0, 8(%eax)
	movl	-116(%ebp), %eax
	movl	%esi, (%ebx)
	leal	0(,%edi,4), %esi
	movl	112(%eax), %eax
	cmpl	$__ZL9heapAllocPvj.lto_priv.0, %eax
	jne	L3088
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L2805
	movl	%eax, 4(%ebx)
L2806:
	movl	-116(%ebp), %eax
	movl	$0, 12(%ebx)
	movl	%edi, 16(%ebx)
	movl	$0, 20(%ebx)
	leal	112(%eax), %esi
	movl	$__ZL10tesvertLeqPK10TESSvertexS1_.lto_priv.0, 24(%ebx)
	movl	%ebx, 76(%eax)
	movl	(%eax), %eax
	movl	%esi, -188(%ebp)
	movl	(%eax), %edi
	cmpl	%edi, %eax
	je	L2817
	movl	%eax, -140(%ebp)
	jmp	L2827
L3092:
	movl	-116(%ebp), %eax
	movl	116(%eax), %eax
	testl	%eax, %eax
	je	L3089
	leal	(%edx,%edx), %eax
	movl	4(%ebx), %ecx
	sall	$3, %edx
	movl	%eax, 16(%ebx)
	movl	-116(%ebp), %eax
	movl	%ecx, -204(%ebp)
	movl	116(%eax), %eax
	cmpl	$__ZL11heapReallocPvS_j.lto_priv.0, %eax
	jne	L2823
	movl	%edx, 4(%esp)
	movl	%edx, -224(%ebp)
	movl	%ecx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	testl	%eax, %eax
	jne	L3055
	movl	-224(%ebp), %edx
	testl	%edx, %edx
	jne	L3090
L2824:
	testl	%eax, %eax
	je	L2825
L3055:
	movl	%eax, 4(%ebx)
L2826:
	movl	%edi, (%eax,%esi,4)
	notl	%esi
L2819:
	movl	%esi, 32(%edi)
	cmpl	$268435455, %esi
	je	L3068
	movl	(%edi), %edi
	cmpl	%edi, -140(%ebp)
	je	L2817
L2827:
	movl	20(%ebx), %eax
	testl	%eax, %eax
	jne	L3091
	movl	12(%ebx), %esi
	movl	16(%ebx), %edx
	leal	1(%esi), %eax
	movl	%eax, 12(%ebx)
	cmpl	%edx, %eax
	jge	L3092
	movl	4(%ebx), %eax
	jmp	L2826
L3091:
	movl	(%ebx), %edx
	movl	-188(%ebp), %eax
	movl	%edi, %ecx
	call	__ZL12pqHeapInsertP9TESSallocP13PriorityQHeapPv
	movl	%eax, %esi
	jmp	L2819
L3084:
	movaps	%xmm0, %xmm1
	movss	LC101, %xmm0
	jmp	L2741
L2983:
	movl	%edx, -216(%ebp)
	movl	%ebx, %edi
	movl	$4, %esi
	movl	$8, %eax
	jmp	L2740
L2693:
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	*%edx
	jmp	L2694
L2696:
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	*%edx
	jmp	L2697
L2699:
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	*%edx
	jmp	L2700
L3085:
	movl	-116(%ebp), %eax
	movl	(%eax), %edx
	movl	44(%edx), %ebx
	leal	44(%edx), %edi
	cmpl	%ebx, %edi
	je	L2744
	movl	%edx, %eax
L2977:
	movl	%eax, -332(%ebp)
	xorps	%xmm2, %xmm2
	movl	%edx, -336(%ebp)
	movl	%ecx, -328(%ebp)
	movl	%esi, %ecx
	.p2align 4
	.p2align 3
L2747:
	movl	8(%ebx), %esi
	movl	28(%esi), %eax
	testl	%eax, %eax
	jle	L2745
	movl	%edi, -168(%ebp)
	movl	%esi, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L2746:
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
	jne	L2746
	movl	-168(%ebp), %edi
L2745:
	movl	(%ebx), %ebx
	cmpl	%ebx, %edi
	jne	L2747
	xorps	%xmm0, %xmm0
	movl	%ecx, %esi
	movl	-332(%ebp), %eax
	movl	-336(%ebp), %edx
	comiss	%xmm2, %xmm0
	movl	-328(%ebp), %ecx
	jbe	L2744
	jmp	L3077
L2750:
	movss	28(%edx), %xmm0
	xorps	LC2, %xmm0
	movss	%xmm0, 28(%edx)
L3077:
	movl	(%edx), %edx
	cmpl	%eax, %edx
	jne	L2750
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
	jmp	L2744
L2823:
	movl	%edx, 8(%esp)
	movl	-204(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	-116(%ebp), %ecx
	movl	124(%ecx), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L2824
L3089:
	movl	$268435455, 32(%edi)
	movl	-140(%ebp), %eax
L2822:
	cmpl	%edi, %eax
	jne	L2830
L2817:
	movl	-116(%ebp), %edi
	movl	%ebx, %ecx
	movl	124(%edi), %edx
	movl	112(%edi), %eax
	call	__ZL6pqInitP9TESSallocP9PriorityQ.isra.0
	movl	124(%edi), %edx
	movl	%eax, -152(%ebp)
	testl	%eax, %eax
	je	L2830
	movl	-116(%ebp), %eax
	movl	112(%eax), %eax
	cmpl	$__ZL9heapAllocPvj.lto_priv.0, %eax
	jne	L2847
	movl	$24, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L3093
L2848:
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
	movss	LC102, %xmm6
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
	call	__ZL11AddSentinelP14TESStesselatorfff.lto_priv.0
	movss	-348(%ebp), %xmm1
	movss	-344(%ebp), %xmm0
	movl	%edi, %eax
	movss	-276(%ebp), %xmm2
	call	__ZL11AddSentinelP14TESStesselatorfff.lto_priv.0
	movl	76(%ebx), %eax
	call	__ZL12pqExtractMinP9PriorityQ
	movl	%eax, %edi
	testl	%eax, %eax
	jne	L2859
	jmp	L3094
	.p2align 4,,10
	.p2align 3
L2852:
	movl	8(%eax), %esi
	movl	-4(%esi,%edx,4), %edx
	movl	8(%ecx), %esi
	movl	(%edx), %edx
	testl	%esi, %esi
	je	L2853
	movl	(%ecx), %esi
	movl	4(%ecx), %ecx
	movss	24(%edx), %xmm1
	movl	4(%esi), %esi
	movl	(%ecx,%esi,8), %ecx
	movss	24(%ecx), %xmm0
	comiss	%xmm0, %xmm1
	ja	L2991
	ucomiss	%xmm1, %xmm0
	jp	L2990
	jne	L2990
	movss	28(%edx), %xmm2
	comiss	28(%ecx), %xmm2
	jnb	L2991
L2990:
	movaps	%xmm1, %xmm0
	.p2align 4
	.p2align 3
L2854:
	ucomiss	24(%edi), %xmm0
	jp	L2856
	jne	L2856
	movss	28(%edx), %xmm0
	ucomiss	28(%edi), %xmm0
	jp	L2856
	jne	L2856
	call	__ZL12pqExtractMinP9PriorityQ
	movl	8(%edi), %edx
	movl	8(%eax), %ecx
	movl	(%ebx), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	je	L2902
L2859:
	movl	76(%ebx), %eax
	movl	12(%eax), %edx
	movl	(%eax), %ecx
	testl	%edx, %edx
	jne	L2852
	movl	(%ecx), %edx
	movl	4(%edx), %esi
	movl	4(%ecx), %edx
	movl	(%edx,%esi,8), %edx
L2853:
	testl	%edx, %edx
	je	L2856
	movss	24(%edx), %xmm0
	jmp	L2854
	.p2align 4,,10
	.p2align 3
L2991:
	movl	%ecx, %edx
	jmp	L2854
	.p2align 4,,10
	.p2align 3
L2856:
	movl	%edi, %edx
	movl	%ebx, %eax
	call	__ZL10SweepEventP14TESStesselatorP10TESSvertex
	movl	76(%ebx), %eax
	call	__ZL12pqExtractMinP9PriorityQ
	movl	%eax, %edi
	testl	%eax, %eax
	jne	L2859
L3094:
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
	je	L2860
	movl	%edi, -324(%ebp)
L2861:
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
	jne	L2861
	movl	-324(%ebp), %edi
L2860:
	movl	16(%ebx), %eax
	call	__ZL17deleteBucketAllocP11BucketAlloc.lto_priv.0
	movl	-116(%ebp), %esi
	movl	120(%esi), %eax
	movl	124(%esi), %edx
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L2862
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2865:
	movl	-116(%ebp), %eax
	movl	76(%eax), %esi
	movl	(%esi), %ebx
	testl	%ebx, %ebx
	je	L2864
	movl	-116(%ebp), %eax
	movl	4(%ebx), %edx
	movl	120(%eax), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L2866
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2869:
	movl	-116(%ebp), %eax
	movl	(%ebx), %edx
	movl	120(%eax), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L3095
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2872:
	movl	-116(%ebp), %eax
	movl	120(%eax), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L3096
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2864:
	movl	8(%esi), %eax
	testl	%eax, %eax
	je	L2874
	movl	-116(%ebp), %ecx
	movl	120(%ecx), %edx
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %edx
	jne	L2875
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2874:
	movl	4(%esi), %eax
	testl	%eax, %eax
	je	L2877
	movl	-116(%ebp), %ecx
	movl	120(%ecx), %edx
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %edx
	jne	L2878
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2877:
	movl	-116(%ebp), %eax
	movl	120(%eax), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L2880
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2883:
	movl	-116(%ebp), %eax
	movl	(%eax), %esi
	movl	44(%esi), %eax
	movl	%esi, -120(%ebp)
	addl	$44, %esi
	movl	%esi, -156(%ebp)
	cmpl	%esi, %eax
	je	L2882
	movl	(%eax), %ebx
	movl	-156(%ebp), %esi
	jmp	L2885
	.p2align 5
	.p2align 4,,10
	.p2align 3
L2887:
	movl	(%ebx), %edx
	movl	%ebx, %eax
	cmpl	%ebx, %esi
	je	L3097
	movl	%edx, %ebx
L2885:
	movl	8(%eax), %edx
	movl	12(%edx), %eax
	cmpl	12(%eax), %edx
	jne	L2887
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
	jne	L2887
	jmp	L2902
L2830:
	movl	-116(%ebp), %eax
	movl	76(%eax), %ebx
	movl	(%ebx), %esi
	testl	%esi, %esi
	je	L2829
	movl	-116(%ebp), %eax
	movl	4(%esi), %edx
	movl	120(%eax), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L2832
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2835:
	movl	-116(%ebp), %eax
	movl	(%esi), %edx
	movl	120(%eax), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L3098
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2838:
	movl	-116(%ebp), %eax
	movl	120(%eax), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L3099
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2829:
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	L2840
	movl	-116(%ebp), %edi
	movl	120(%edi), %edx
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %edx
	jne	L2841
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2840:
	movl	4(%ebx), %eax
	testl	%eax, %eax
	je	L2843
	movl	-116(%ebp), %edi
	movl	120(%edi), %edx
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %edx
	jne	L2844
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2843:
	movl	-116(%ebp), %eax
	movl	120(%eax), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L2802
L3078:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2783:
	movl	-116(%ebp), %eax
	movl	$0, 76(%eax)
	jmp	L2902
L3104:
	movl	-272(%ebp), %edi
L2882:
	movl	-116(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	jne	L2919
L2923:
	movl	-120(%ebp), %esi
	movl	(%esi), %eax
	movl	%esi, %edi
	cmpl	%eax, %esi
	je	L2921
	.p2align 4
	.p2align 4
	.p2align 3
L2920:
	movl	$-1, 36(%eax)
	movl	(%eax), %eax
	cmpl	%eax, %edi
	jne	L2920
L2921:
	movl	-120(%ebp), %eax
	movl	-136(%ebp), %esi
	movl	44(%eax), %edx
	movl	%esi, %ebx
	cmpl	-156(%ebp), %edx
	je	L3100
	movl	%edi, -240(%ebp)
	movl	-156(%ebp), %edi
	jmp	L2944
	.p2align 5
	.p2align 4,,10
	.p2align 3
L2946:
	movl	(%edx), %edx
	cmpl	%edi, %edx
	je	L3101
L2944:
	movl	$-1, 16(%edx)
	cmpb	$0, 21(%edx)
	je	L2946
	movl	8(%edx), %eax
	.p2align 5
	.p2align 4
	.p2align 3
L2948:
	movl	16(%eax), %ecx
	cmpl	$-1, 36(%ecx)
	jne	L2947
	movl	%ebx, 36(%ecx)
	addl	$1, %ebx
L2947:
	movl	12(%eax), %eax
	cmpl	8(%edx), %eax
	jne	L2948
	movl	%esi, 16(%edx)
	movl	(%edx), %edx
	addl	$1, %esi
	cmpl	%edi, %edx
	jne	L2944
L3101:
	leal	(%esi,%esi,2), %eax
	movl	-240(%ebp), %edi
	leal	0(,%eax,4), %edx
L2945:
	movl	-116(%ebp), %eax
	movl	%esi, 108(%eax)
	movl	%eax, %esi
	movl	112(%eax), %eax
	cmpl	$__ZL9heapAllocPvj.lto_priv.0, %eax
	jne	L2949
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -252(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L2950
	movl	%eax, 104(%esi)
L2951:
	movl	-116(%ebp), %esi
	movl	112(%esi), %eax
	movl	%ebx, 100(%esi)
	leal	(%ebx,%ebx,2), %ebx
	sall	$2, %ebx
	cmpl	$__ZL9heapAllocPvj.lto_priv.0, %eax
	jne	L2953
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L2958
	movl	%eax, 92(%esi)
L2955:
	movl	-116(%ebp), %esi
	movl	100(%esi), %ecx
	movl	112(%esi), %eax
	movl	%ecx, -300(%ebp)
	leal	0(,%ecx,4), %ebx
	cmpl	$__ZL9heapAllocPvj.lto_priv.0, %eax
	jne	L2957
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L2958
	movl	%eax, 96(%esi)
L2959:
	movl	-120(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edi
	je	L2960
	movl	-116(%ebp), %ecx
L2962:
	movl	36(%eax), %edx
	cmpl	$-1, %edx
	je	L2961
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
L2961:
	movl	(%eax), %eax
	cmpl	%eax, %edi
	jne	L2962
L2960:
	movl	-120(%ebp), %eax
	movl	-156(%ebp), %ebx
	movl	44(%eax), %ecx
	cmpl	%ecx, %ebx
	je	L2952
	movl	-116(%ebp), %eax
	movl	104(%eax), %eax
	jmp	L2972
L2963:
	movl	(%ecx), %ecx
	cmpl	%ecx, %ebx
	je	L2952
L2972:
	cmpb	$0, 21(%ecx)
	je	L2963
	movl	8(%ecx), %esi
	movl	-136(%ebp), %edx
	.p2align 5
	.p2align 4
	.p2align 3
L2964:
	movl	16(%esi), %edi
	addl	$4, %eax
	addl	$1, %edx
	movl	36(%edi), %edi
	movl	%edi, -4(%eax)
	movl	12(%esi), %esi
	cmpl	8(%ecx), %esi
	jne	L2964
	cmpl	$2, %edx
	jg	L2963
	movl	$3, %esi
	movl	%eax, %edi
	subl	%edx, %esi
	sall	$2, %esi
	cmpl	$16, %esi
	jnb	L2965
	testl	$8, %esi
	jne	L3102
	movl	%esi, %edi
	andl	$4, %edi
	jne	L3103
	testl	%esi, %esi
	je	L2966
	movb	$-1, (%eax)
L2966:
	movl	$2, %esi
	subl	%edx, %esi
	leal	4(%eax,%esi,4), %eax
	jmp	L2963
L3097:
	movl	-116(%ebp), %eax
	movl	(%eax), %esi
	movl	44(%esi), %eax
	movl	%esi, -120(%ebp)
	addl	$44, %esi
	movl	%esi, -156(%ebp)
	cmpl	%eax, %esi
	je	L2882
	movl	(%eax), %ecx
	movl	%edi, -272(%ebp)
	movl	%ecx, %edi
	movl	-156(%ebp), %ecx
	jmp	L2889
	.p2align 4
	.p2align 4,,10
	.p2align 3
L2917:
	movl	(%edi), %edx
	movl	%edi, %eax
	cmpl	%edi, %ecx
	je	L3104
	movl	%edx, %edi
L2889:
	cmpb	$0, 21(%eax)
	je	L2917
	movl	8(%eax), %ebx
	jmp	L2890
	.p2align 4,,10
	.p2align 3
L3105:
	movss	28(%edx), %xmm2
	comiss	28(%eax), %xmm2
	jb	L2894
L2891:
	movl	8(%ebx), %eax
	movl	4(%eax), %ebx
L2890:
	movl	4(%ebx), %eax
	movl	16(%ebx), %edx
	movl	16(%eax), %eax
	movss	24(%edx), %xmm1
	movss	24(%eax), %xmm0
	comiss	%xmm0, %xmm1
	ja	L2891
	ucomiss	%xmm1, %xmm0
	jp	L2894
	je	L3105
	jmp	L2894
	.p2align 4,,10
	.p2align 3
L3106:
	movss	28(%eax), %xmm1
	comiss	28(%edx), %xmm1
	jb	L2896
L2895:
	movl	12(%ebx), %ebx
	movl	4(%ebx), %eax
	movl	16(%ebx), %edx
	movl	16(%eax), %eax
	movss	24(%edx), %xmm1
	movss	24(%eax), %xmm0
L2894:
	comiss	%xmm1, %xmm0
	ja	L2895
	ucomiss	%xmm0, %xmm1
	jp	L2896
	je	L3106
L2896:
	movl	8(%ebx), %edx
	movl	4(%edx), %esi
	cmpl	%esi, 12(%ebx)
	je	L2994
	movl	16(%esi), %edx
	movl	%ecx, -180(%ebp)
	movl	%edi, -184(%ebp)
	movss	24(%edx), %xmm1
	comiss	%xmm0, %xmm1
	ja	L2899
L3107:
	ucomiss	%xmm0, %xmm1
	jp	L2900
	jne	L2900
	movss	28(%edx), %xmm0
	comiss	28(%eax), %xmm0
	jnb	L2899
L2900:
	movl	12(%esi), %eax
	cmpl	%eax, %ebx
	je	L2911
	movl	%ebx, %edx
	jmp	L2910
	.p2align 4,,10
	.p2align 3
L2912:
	movl	-120(%ebp), %eax
	call	__ZL15tessMeshConnectP8TESSmeshP12TESShalfEdgeS2_
	testl	%eax, %eax
	je	L2902
	movl	4(%eax), %edx
	movl	12(%esi), %eax
	cmpl	%eax, %edx
	je	L2911
L2910:
	movl	8(%edx), %eax
	movl	4(%eax), %ecx
	movl	4(%ecx), %ebx
	movl	16(%ecx), %eax
	movl	16(%ebx), %ebx
	movss	24(%eax), %xmm0
	movss	24(%ebx), %xmm1
	comiss	%xmm0, %xmm1
	ja	L2912
	ucomiss	%xmm1, %xmm0
	jp	L2913
	jne	L2913
	movss	28(%ebx), %xmm1
	comiss	28(%eax), %xmm1
	jnb	L2912
L2913:
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
	jbe	L2912
	movss	28(%edi), %xmm1
	movaps	%xmm1, %xmm2
	subss	28(%ebx), %xmm1
	subss	28(%eax), %xmm2
	mulss	%xmm0, %xmm1
	mulss	%xmm3, %xmm2
	addss	%xmm1, %xmm2
	comiss	%xmm6, %xmm2
	jnb	L2912
	movl	%edx, %eax
L2911:
	movl	12(%eax), %ebx
L2909:
	movl	12(%ebx), %eax
	cmpl	%eax, %esi
	je	L3072
	movl	4(%ebx), %eax
	movl	16(%esi), %edx
	movl	16(%eax), %eax
	movss	24(%edx), %xmm1
	movss	24(%eax), %xmm0
	comiss	%xmm0, %xmm1
	jbe	L3107
L2899:
	movl	12(%esi), %edx
	cmpl	%ebx, %edx
	je	L2904
	movl	%esi, %ecx
	jmp	L2903
	.p2align 4,,10
	.p2align 3
L2905:
	movl	-120(%ebp), %eax
	call	__ZL15tessMeshConnectP8TESSmeshP12TESShalfEdgeS2_
	testl	%eax, %eax
	je	L2902
	movl	4(%eax), %ecx
	movl	12(%ecx), %edx
	cmpl	%ebx, %edx
	je	L3079
L2903:
	movl	4(%edx), %eax
	movl	16(%edx), %esi
	movl	16(%eax), %eax
	movss	24(%esi), %xmm1
	movss	24(%eax), %xmm0
	comiss	%xmm0, %xmm1
	ja	L2905
	ucomiss	%xmm1, %xmm0
	jp	L2906
	jne	L2906
	movss	28(%esi), %xmm1
	comiss	28(%eax), %xmm1
	jnb	L2905
L2906:
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
	jbe	L2905
	movss	28(%edi), %xmm1
	movaps	%xmm1, %xmm2
	subss	28(%esi), %xmm1
	subss	28(%eax), %xmm2
	mulss	%xmm0, %xmm1
	mulss	%xmm3, %xmm2
	addss	%xmm1, %xmm2
	comiss	%xmm2, %xmm7
	jnb	L2905
L3079:
	movl	%ecx, %esi
L2904:
	movl	8(%esi), %eax
	movl	4(%eax), %esi
	jmp	L2909
L2965:
	movl	$-1, -16(%eax,%esi)
	movl	$-1, -12(%eax,%esi)
	movl	$-1, -8(%eax,%esi)
	movl	$-1, -4(%eax,%esi)
	subl	$1, %esi
	cmpl	$16, %esi
	jb	L2966
	movl	%eax, -308(%ebp)
	andl	$-16, %esi
	movl	%esi, -304(%ebp)
	xorl	%esi, %esi
L2970:
	movl	$-1, (%edi,%esi)
	movl	$-1, 4(%edi,%esi)
	movl	$-1, 8(%edi,%esi)
	movl	$-1, 12(%edi,%esi)
	addl	$16, %esi
	cmpl	-304(%ebp), %esi
	jb	L2970
	movl	-308(%ebp), %eax
	jmp	L2966
L2781:
	movl	$28, 4(%esp)
	movl	-116(%ebp), %esi
	movl	124(%esi), %ecx
	movl	%ecx, (%esp)
	call	*%eax
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L2783
	jmp	L2782
L2919:
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
	jne	L2922
	jmp	L2932
	.p2align 4
	.p2align 4,,10
	.p2align 3
L2924:
	movl	(%esi), %esi
	cmpl	%edx, %esi
	je	L3108
L2922:
	cmpb	$0, 21(%esi)
	je	L2924
	movl	%edx, -312(%ebp)
	movl	8(%esi), %ebx
	movl	%eax, -316(%ebp)
	movl	-160(%ebp), %edx
	jmp	L2931
L2926:
	movl	$1, 32(%ebx)
	movl	32(%ecx), %eax
	testl	%eax, %eax
	je	L3109
L2927:
	movl	12(%ebx), %ebx
	cmpl	8(%esi), %ebx
	je	L3110
L2931:
	movl	4(%ebx), %ecx
	movl	20(%ecx), %eax
	testl	%eax, %eax
	je	L2925
	cmpb	$0, 21(%eax)
	jne	L2926
L2925:
	movl	$0, 32(%ebx)
	movl	12(%ebx), %ebx
	cmpl	8(%esi), %ebx
	jne	L2931
L3110:
	movl	-316(%ebp), %eax
	movl	-312(%ebp), %edx
	addl	$1, %eax
	jmp	L2924
L3109:
	movl	(%edx), %eax
	testl	%eax, %eax
	je	L2929
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	je	L2929
L2930:
	movl	%ecx, (%edx)
	movl	%edi, 4(%eax)
	movl	%eax, %edi
	movl	%ebx, (%eax)
	jmp	L2927
L2929:
	movl	%edx, %eax
	movl	%edx, -352(%ebp)
	call	__ZL12CreateBucketP11BucketAlloc.lto_priv.0
	movl	-352(%ebp), %edx
	testl	%eax, %eax
	je	L2927
	movl	(%edx), %eax
	movl	(%eax), %ecx
	jmp	L2930
L2932:
	movl	-160(%ebp), %eax
	call	__ZL17deleteBucketAllocP11BucketAlloc.lto_priv.0
	jmp	L2923
L3108:
	testl	%edi, %edi
	je	L2932
	imull	%eax, %eax
	movl	%eax, -196(%ebp)
	movl	-136(%ebp), %eax
	movl	%eax, -144(%ebp)
	jmp	L2933
L2934:
	addl	$1, -144(%ebp)
	testl	%edi, %edi
	je	L2932
L2933:
	movl	-196(%ebp), %esi
	cmpl	%esi, -144(%ebp)
	je	L2932
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
	ja	L2934
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
	je	L3111
L2935:
	movl	-268(%ebp), %edi
	movl	-176(%ebp), %esi
	cmpl	8(%edi), %esi
	je	L3112
L2936:
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
L2942:
	movl	(%ebx), %esi
	movl	32(%esi), %eax
	testl	%eax, %eax
	jne	L2938
	movl	4(%esi), %ecx
	movl	20(%ecx), %eax
	testl	%eax, %eax
	je	L2938
	cmpb	$0, 21(%eax)
	jne	L3113
L2938:
	addl	$4, %ebx
	leal	-24(%ebp), %eax
	cmpl	%ebx, %eax
	jne	L2942
	jmp	L2934
L3113:
	movl	-160(%ebp), %eax
	movl	$1, 32(%ecx)
	movl	$1, 32(%esi)
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L2940
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	je	L2940
L2941:
	movl	-160(%ebp), %edx
	movl	%ecx, (%edx)
	movl	%edi, 4(%eax)
	movl	%eax, %edi
	movl	%esi, (%eax)
	jmp	L2938
L2784:
	movl	$28, 4(%esp)
	movl	-116(%ebp), %esi
	movl	124(%esi), %ecx
	movl	%ecx, (%esp)
	call	*%eax
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L2785
	jmp	L2786
L3081:
	movl	$28, %eax
	call	__Z13handle_memerri
L3072:
	movl	-180(%ebp), %ecx
	movl	-184(%ebp), %edi
L2898:
	movl	12(%eax), %edx
	cmpl	12(%edx), %ebx
	je	L2917
	movl	%ecx, -320(%ebp)
	movl	-120(%ebp), %esi
	movl	%eax, %ecx
	jmp	L2918
L3115:
	movl	4(%eax), %ecx
	movl	12(%ecx), %edx
	cmpl	12(%edx), %ebx
	je	L3114
L2918:
	movl	%esi, %eax
	call	__ZL15tessMeshConnectP8TESSmeshP12TESShalfEdgeS2_
	testl	%eax, %eax
	jne	L3115
	jmp	L2902
L2825:
	movl	-204(%ebp), %esi
	movl	-140(%ebp), %eax
	movl	%esi, 4(%ebx)
	movl	$268435455, 32(%edi)
	jmp	L2822
L2787:
	movl	%edx, 4(%esp)
	movl	-116(%ebp), %ecx
	movl	124(%ecx), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, (%esi)
	testl	%eax, %eax
	jne	L2789
	jmp	L2798
L2742:
	movl	-172(%ebp), %edx
	testl	%edx, %edx
	je	L2762
	movl	44(%esi), %ebx
	leal	44(%esi), %edi
	movl	%esi, %edx
	cmpl	%edi, %ebx
	jne	L2977
	jmp	L2751
	.p2align 4,,10
	.p2align 3
L3088:
	movl	%esi, 4(%esp)
	movl	-116(%ebp), %esi
	movl	124(%esi), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, 4(%ebx)
	testl	%eax, %eax
	jne	L2806
	movl	-116(%ebp), %eax
	movl	(%ebx), %esi
	movl	120(%eax), %eax
	movl	4(%esi), %edx
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L2807
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2810:
	movl	-116(%ebp), %eax
	movl	(%esi), %edx
	movl	120(%eax), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L3116
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2813:
	movl	-116(%ebp), %eax
	movl	120(%eax), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L3117
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L2843
L2792:
	movl	%edx, 4(%esp)
	movl	-116(%ebp), %ecx
	movl	124(%ecx), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, 4(%esi)
	testl	%eax, %eax
	jne	L2794
	movl	-116(%ebp), %eax
	movl	(%esi), %edx
	movl	120(%eax), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L2795
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2798:
	movl	-116(%ebp), %eax
	movl	120(%eax), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L3118
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2786:
	movl	-116(%ebp), %eax
	movl	$0, (%ebx)
	movl	120(%eax), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	je	L3078
L2802:
	movl	%ebx, 4(%esp)
	movl	-116(%ebp), %edi
	movl	124(%edi), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L2783
L2940:
	movl	-160(%ebp), %eax
	call	__ZL12CreateBucketP11BucketAlloc.lto_priv.0
	testl	%eax, %eax
	je	L2938
	movl	-160(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %ecx
	jmp	L2941
L2866:
	movl	%edx, 4(%esp)
	movl	-116(%ebp), %ecx
	movl	124(%ecx), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L2869
L3090:
	movl	%edx, %eax
	call	__Z13handle_memerri
L3083:
	movl	(%ebx), %ecx
	xorl	%eax, %eax
L2706:
	movss	12(%ecx,%eax,4), %xmm0
	leal	-100(%ebp), %esi
	movl	%ecx, -76(%ebp,%eax,4)
	movl	%ecx, -64(%ebp,%eax,4)
	movss	%xmm0, (%esi,%eax,4)
	movss	%xmm0, -88(%ebp,%eax,4)
	addl	$1, %eax
	cmpl	$3, %eax
	jne	L2706
	cmpl	%ecx, %ebx
	je	L2707
	movl	%ebx, -232(%ebp)
	movl	%ecx, %edx
	movl	%ecx, -340(%ebp)
L2713:
	movl	-136(%ebp), %eax
L2712:
	leal	-88(%ebp), %ebx
	movss	12(%edx,%eax,4), %xmm0
	movl	%eax, %ecx
	movss	(%ebx,%eax,4), %xmm1
	comiss	%xmm0, %xmm1
	jbe	L2708
	movl	%edx, -64(%ebp,%eax,4)
	movss	%xmm0, (%ebx,%eax,4)
L2708:
	comiss	(%esi,%ecx,4), %xmm0
	jbe	L2710
	movl	%edx, -76(%ebp,%ecx,4)
	movss	%xmm0, (%esi,%ecx,4)
L2710:
	addl	$1, %eax
	cmpl	$3, %eax
	jne	L2712
	movl	(%edx), %edx
	cmpl	%edx, -232(%ebp)
	jne	L2713
	movl	-232(%ebp), %ebx
	movl	-340(%ebp), %ecx
L2707:
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
	ja	L2979
	movaps	%xmm3, %xmm0
	movaps	%xmm2, %xmm1
L2714:
	comiss	%xmm0, %xmm1
	jnb	L3119
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
	je	L2718
	movl	$0x00000000, -228(%ebp)
	xorl	%eax, %eax
L2720:
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
	jbe	L2719
	movss	%xmm0, -292(%ebp)
	movl	%edi, %eax
	movss	%xmm6, -296(%ebp)
	movss	%xmm5, -280(%ebp)
	movss	%xmm1, -228(%ebp)
L2719:
	movl	(%ecx), %ecx
	cmpl	%ecx, %ebx
	jne	L2720
	testb	%al, %al
	je	L2721
	movss	-280(%ebp), %xmm7
	movss	%xmm7, -112(%ebp)
	movss	-296(%ebp), %xmm7
	movss	%xmm7, -108(%ebp)
	movss	-292(%ebp), %xmm7
	movss	%xmm7, -104(%ebp)
L2721:
	xorps	%xmm0, %xmm0
	comiss	-228(%ebp), %xmm0
	jnb	L2718
L2722:
	movl	$1, -172(%ebp)
	movss	-108(%ebp), %xmm2
	movss	-112(%ebp), %xmm0
	movss	-104(%ebp), %xmm1
	jmp	L2705
L2953:
	movl	%ebx, 4(%esp)
	movl	-116(%ebp), %esi
	movl	124(%esi), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, 92(%esi)
	testl	%eax, %eax
	je	L2956
	jmp	L2955
L2994:
	movl	%esi, %eax
	jmp	L2898
L2973:
	movl	-120(%ebp), %edi
	movl	%edx, (%esp)
	movl	%edi, 4(%esp)
	call	*%eax
	jmp	L2974
L3112:
	movl	%edx, 8(%edi)
	jmp	L2936
L3111:
	movl	-200(%ebp), %edi
	movl	-148(%ebp), %esi
	movl	%edi, 8(%esi)
	jmp	L2935
L3114:
	movl	-320(%ebp), %ecx
	jmp	L2917
L2847:
	movl	$24, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L2848
	movl	-116(%ebp), %eax
	movl	$0, 72(%eax)
	addl	$152, %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__longjmp
L3100:
	xorl	%edx, %edx
	jmp	L2945
L2957:
	movl	%ebx, 4(%esp)
	movl	-116(%ebp), %esi
	movl	124(%esi), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, 96(%esi)
	testl	%eax, %eax
	je	L2956
	jmp	L2959
L2958:
	movl	%ebx, %eax
	call	__Z13handle_memerri
L3102:
	movl	$-1, (%eax)
	movl	$-1, 4(%eax)
	movl	$-1, -8(%eax,%esi)
	movl	$-1, -4(%eax,%esi)
	jmp	L2966
L2844:
	movl	%eax, 4(%esp)
	movl	-116(%ebp), %eax
	movl	124(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	jmp	L2843
L2841:
	movl	%eax, 4(%esp)
	movl	-116(%ebp), %eax
	movl	124(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	jmp	L2840
L3099:
	movl	%esi, 4(%esp)
	movl	-116(%ebp), %edi
	movl	124(%edi), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L2829
L3098:
	movl	%edx, 4(%esp)
	movl	-116(%ebp), %edi
	movl	124(%edi), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L2838
L2862:
	movl	%ebx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	jmp	L2865
L2950:
	movl	-252(%ebp), %eax
	call	__Z13handle_memerri
L2979:
	movl	$2, %eax
	jmp	L2714
L2805:
	movl	%esi, %eax
	call	__Z13handle_memerri
L2793:
	movl	-248(%ebp), %eax
	call	__Z13handle_memerri
L2875:
	movl	%eax, 4(%esp)
	movl	-116(%ebp), %eax
	movl	124(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	jmp	L2874
L2788:
	movl	-244(%ebp), %eax
	call	__Z13handle_memerri
L2880:
	movl	%esi, 4(%esp)
	movl	-116(%ebp), %esi
	movl	124(%esi), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L2883
L2878:
	movl	%eax, 4(%esp)
	movl	-116(%ebp), %eax
	movl	124(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	jmp	L2877
L2832:
	movl	%edx, 4(%esp)
	movl	-116(%ebp), %edi
	movl	124(%edi), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L2835
L3068:
	movl	-140(%ebp), %eax
	jmp	L2822
L3093:
	movl	$24, %eax
	call	__Z13handle_memerri
L3096:
	movl	%ebx, 4(%esp)
	movl	-116(%ebp), %ecx
	movl	124(%ecx), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L2864
L3095:
	movl	%edx, 4(%esp)
	movl	-116(%ebp), %ecx
	movl	124(%ecx), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L2872
L3119:
	movl	-116(%ebp), %eax
	movl	$0x00000000, -112(%ebp)
	xorl	%ecx, %ecx
	movss	LC100, %xmm1
	movl	$0x00000000, -108(%ebp)
	movl	$1, -172(%ebp)
	leal	20(%eax), %edx
	leal	32(%eax), %ebx
	movss	%xmm1, -104(%ebp)
	movaps	%xmm1, %xmm2
	jmp	L2717
L3118:
	movl	%esi, 4(%esp)
	movl	-116(%ebp), %edi
	movl	124(%edi), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L2786
L2718:
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
	jmp	L2722
L3103:
	movl	$-1, (%eax)
	movl	$-1, -4(%eax,%esi)
	jmp	L2966
L3117:
	movl	%esi, 4(%esp)
	movl	-116(%ebp), %edi
	movl	124(%edi), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L2843
L2795:
	movl	%edx, 4(%esp)
	movl	-116(%ebp), %edi
	movl	124(%edi), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L2798
L3116:
	movl	%edx, 4(%esp)
	movl	-116(%ebp), %edi
	movl	124(%edi), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L2813
L2807:
	movl	%edx, 4(%esp)
	movl	-116(%ebp), %edi
	movl	124(%edi), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L2810
	.cfi_endproc
LFE261:
	.globl	_png
	.bss
	.align 4
_png:
	.space 19
	.globl	_palookupfog
	.align 32
_palookupfog:
	.space 1024
	.data
	.align 32
__ZZ22paletteMakeLookupTableE5idmap:
	.ascii "\1\0"
	.space 254
	.globl	__ZL11sdl_surface.lto_priv.0
	.bss
	.align 4
__ZL11sdl_surface.lto_priv.0:
	.space 4
	.globl	_palfadergb
	.align 4
_palfadergb:
	.space 4
.lcomm __ZZ15videoSetPaletteE14lastpalettesum,8,8
	.globl	_palfadedelta
_palfadedelta:
	.space 1
	.globl	_gammabrightness
	.align 4
_gammabrightness:
	.space 4
	.globl	_curbasepal
_curbasepal:
	.space 1
	.globl	__ZZ12handle_blendE15blendFuncTokens.lto_priv.0
	.section .rdata,"dr"
	.align 32
__ZZ12handle_blendE15blendFuncTokens.lto_priv.0:
	.long	0
	.long	1
	.long	768
	.long	769
	.long	770
	.long	771
	.long	772
	.long	773
	.long	774
	.long	775
	.align 4
__ZZ12OSD_DispatchPKcbE11s_gamefunc_:
	.ascii "gamefunc_\0"
.lcomm __ZZL20OSD_FilterConsoleMsgPPcE8errorCnt,4,4
	.globl	__ZL10osdkeytime.lto_priv.0
	.bss
	.align 4
__ZL10osdkeytime.lto_priv.0:
	.space 4
	.globl	__ZL10osdscrtime.lto_priv.0
	.align 4
__ZL10osdscrtime.lto_priv.0:
	.space 4
.lcomm __ZZ14OSD_HandleCharcE9lastmatch,4,4
	.section .rdata,"dr"
LC103:
	.ascii "osdclipboard\0"
	.align 4
LC104:
	.ascii "paste text into console from system clipboard with RMB\0"
LC105:
	.ascii "osdeditpal\0"
LC106:
	.ascii "console input text palette\0"
LC107:
	.ascii "osdeditshade\0"
LC108:
	.ascii "console input text shade\0"
LC109:
	.ascii "osdtextpal\0"
	.align 4
LC110:
	.ascii "unformatted console text palette\0"
LC111:
	.ascii "osdtextshade\0"
	.align 4
LC112:
	.ascii "unformatted console text shade\0"
LC113:
	.ascii "osdpromptpal\0"
LC114:
	.ascii "console prompt palette\0"
LC115:
	.ascii "osdpromptshade\0"
LC116:
	.ascii "console prompt shade\0"
	.align 4
LC117:
	.ascii "lines of text to display in console\0"
	.align 4
LC118:
	.ascii "console character mode: 0: sprites  1: simple glyphs\0"
LC119:
	.ascii "osdlogcutoff\0"
	.align 4
LC120:
	.ascii "maximum number of error messages to log to the console\0"
	.align 4
LC121:
	.ascii "number of lines of command history to cycle through with the up and down cursor keys\0"
	.data
	.align 32
__ZZ8OSD_InitvE9cvars_osd:
	.long	LC103
	.long	LC104
	.space 4
	.long	8
	.long	0
	.long	1
	.long	LC105
	.long	LC106
	.space 4
	.long	2
	.long	0
	.long	255
	.long	LC107
	.long	LC108
	.space 4
	.long	2
	.long	0
	.long	7
	.long	LC109
	.long	LC110
	.space 4
	.long	2
	.long	0
	.long	255
	.long	LC111
	.long	LC112
	.space 4
	.long	2
	.long	0
	.long	7
	.long	LC113
	.long	LC114
	.space 4
	.long	2
	.long	0
	.long	255
	.long	LC115
	.long	LC116
	.space 4
	.long	2
	.long	-128
	.long	127
	.long	LC29
	.long	LC117
	.long	__ZL7osdrows
	.long	514
	.long	0
	.long	540
	.long	LC30
	.long	LC118
	.space 4
	.long	520
	.long	0
	.long	1
	.long	LC119
	.long	LC120
	.space 4
	.long	2
	.long	-1
	.long	4096
	.long	LC31
	.long	LC121
	.space 4
	.long	514
	.long	32
	.long	256
.lcomm __ZGVZ8OSD_InitvE9cvars_osd,8,8
	.align 4
__ZL5h_osd:
	.long	256
	.space 8
	.long	0
.lcomm __ZL17default_callbacks,32,32
	.align 4
__ZL10osdmaxrows:
	.long	540
.lcomm __ZL7osdrows,4,4
	.align 4
__ZL13whiteColorIdx:
	.long	-1
	.align 4
__ZL7h_cvars:
	.long	256
	.space 8
	.long	0
.lcomm __ZZ13engineLoadMHKE14ignoreThisShit,8,8
.lcomm __ZGVZ13engineLoadMHKE14ignoreThisShit,8,8
	.section .rdata,"dr"
LC122:
	.ascii "angleoff\0"
LC123:
	.ascii "angoff\0"
LC124:
	.ascii "notmd2\0"
LC125:
	.ascii "notmd3\0"
LC126:
	.ascii "notmd\0"
LC127:
	.ascii "nomd2anim\0"
LC128:
	.ascii "nomd3anim\0"
LC129:
	.ascii "nomdanim\0"
LC130:
	.ascii "pitch\0"
LC131:
	.ascii "roll\0"
LC132:
	.ascii "mdxoff\0"
LC133:
	.ascii "mdyoff\0"
LC134:
	.ascii "mdzoff\0"
LC135:
	.ascii "mdpivxoff\0"
LC136:
	.ascii "mdpivyoff\0"
LC137:
	.ascii "mdpivzoff\0"
LC138:
	.ascii "mdpivotxoff\0"
LC139:
	.ascii "mdpivotyoff\0"
LC140:
	.ascii "mdpivotzoff\0"
LC141:
	.ascii "mdposxoff\0"
LC142:
	.ascii "mdposyoff\0"
LC143:
	.ascii "mdposzoff\0"
LC144:
	.ascii "mdpositionxoff\0"
LC145:
	.ascii "mdpositionyoff\0"
LC146:
	.ascii "mdpositionzoff\0"
LC147:
	.ascii "away1\0"
LC148:
	.ascii "away2\0"
LC149:
	.ascii "mhkreset\0"
LC150:
	.ascii "light\0"
	.align 32
__ZZ13engineLoadMHKE11legaltokens:
	.long	LC24
	.long	0
	.long	LC122
	.long	1
	.long	LC123
	.long	1
	.long	LC124
	.long	2
	.long	LC125
	.long	2
	.long	LC126
	.long	2
	.long	LC127
	.long	3
	.long	LC128
	.long	3
	.long	LC129
	.long	3
	.long	LC130
	.long	4
	.long	LC131
	.long	5
	.long	LC132
	.long	6
	.long	LC133
	.long	7
	.long	LC134
	.long	8
	.long	LC135
	.long	6
	.long	LC136
	.long	7
	.long	LC137
	.long	8
	.long	LC138
	.long	6
	.long	LC139
	.long	7
	.long	LC140
	.long	8
	.long	LC141
	.long	9
	.long	LC142
	.long	10
	.long	LC143
	.long	11
	.long	LC144
	.long	9
	.long	LC145
	.long	10
	.long	LC146
	.long	11
	.long	LC147
	.long	12
	.long	LC148
	.long	13
	.long	LC149
	.long	14
	.long	LC150
	.long	15
	.long	0
	.long	-1
.lcomm __ZZ13engineLoadMHKE2fn,256,32
	.align 16
LC2:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 4
LC3:
	.long	1056964608
	.align 4
LC33:
	.long	1602224128
	.align 4
LC34:
	.long	1148846080
	.align 4
LC35:
	.long	1315859240
	.align 16
LC36:
	.long	606295903
	.long	-2048139858
	.long	4919
	.long	1640536454
	.align 4
LC76:
	.long	__ZL23_internal_drawosdcursoriiii.lto_priv.0
	.align 4
LC77:
	.long	__ZL21_internal_drawosdchariicii.lto_priv.0
	.align 4
LC78:
	.long	__ZL17_internal_gettimev.lto_priv.0
	.align 4
LC79:
	.long	__ZL22_internal_getrowheighti.lto_priv.0
	.align 16
LC95:
	.long	8
	.long	0
	.long	0
	.long	0
	.align 16
LC96:
	.long	1
	.long	0
	.long	0
	.long	0
	.align 4
LC98:
	.long	_miniz_def_alloc_func
	.set	LC99,LC2
	.align 4
LC100:
	.long	1065353216
	.align 4
LC101:
	.long	-1082130432
	.align 4
LC102:
	.long	1008981770
	.def	___udivdi3;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_strcasecmp;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_printext256;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_SDL_AtomicLock;	.scl	2;	.type	32;	.endef
	.def	_SDL_AtomicUnlock;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_memmove;	.scl	2;	.type	32;	.endef
	.def	_strtol;	.scl	2;	.type	32;	.endef
	.def	_strncasecmp;	.scl	2;	.type	32;	.endef
	.def	_hash_findcase;	.scl	2;	.type	32;	.endef
	.def	_strncmp;	.scl	2;	.type	32;	.endef
	.def	__Z17osdcmd_restartvidPK13osdfuncparm_t;	.scl	2;	.type	32;	.endef
	.def	_strtoul;	.scl	2;	.type	32;	.endef
	.def	_sscanf;	.scl	2;	.type	32;	.endef
	.def	_strncpy;	.scl	2;	.type	32;	.endef
	.def	__Z19gltexinvalidatetypei;	.scl	2;	.type	32;	.endef
	.def	_clearskins;	.scl	2;	.type	32;	.endef
	.def	_polymer_texinvalidate;	.scl	2;	.type	32;	.endef
	.def	_mi_usable_size;	.scl	2;	.type	32;	.endef
	.def	__ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_sjjjb.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	__ZL11tesedgeEvalPK10TESSvertexS1_S1_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_engineClearLightsFromMHK;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_fromfile;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_gettoken;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_getnumber;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_getsymbol;	.scl	2;	.type	32;	.endef
	.def	_polymer_culllight.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_close;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_getlinum;	.scl	2;	.type	32;	.endef
	.def	_polymer_processspotlight.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_texcache_fetch;	.scl	2;	.type	32;	.endef
	.def	_tileLoad;	.scl	2;	.type	32;	.endef
	.def	_animateoffs;	.scl	2;	.type	32;	.endef
	.def	_mouseGrabInput;	.scl	2;	.type	32;	.endef
	.def	__Z14SetGamePalettei;	.scl	2;	.type	32;	.endef
	.def	_enet_gettime.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	_videoBeginDrawing;	.scl	2;	.type	32;	.endef
	.def	_tabledivide32.lto_priv.1;	.scl	2;	.type	32;	.endef
	.def	_videoEndDrawing;	.scl	2;	.type	32;	.endef
	.def	__Z18_mi_malloc_genericP9mi_heap_sjbj;	.scl	2;	.type	32;	.endef
	.def	__Z15mi_heap_try_newP9mi_heap_sjb;	.scl	2;	.type	32;	.endef
	.def	_kopen4load.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z14kread_internaliPviPKhPKiPi;	.scl	2;	.type	32;	.endef
	.def	_Bcrc32;	.scl	2;	.type	32;	.endef
	.def	__Z15klseek_internaliiiPKhPiS1_;	.scl	2;	.type	32;	.endef
	.def	__Z20kfilelength_internaliPKhPiS1_.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_kclose;	.scl	2;	.type	32;	.endef
	.def	_hash_find;	.scl	2;	.type	32;	.endef
	.def	_strcat;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	_hash_add;	.scl	2;	.type	32;	.endef
	.def	__ZL19_internal_onshowosdi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_hash_init;	.scl	2;	.type	32;	.endef
	.def	_mi_register_output.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_Bstrtoken.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj;	.scl	2;	.type	32;	.endef
	.def	_initprintf;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z17uploadbasepalettei;	.scl	2;	.type	32;	.endef
	.def	_videoSetGamma;	.scl	2;	.type	32;	.endef
	.def	_XXH3_hashLong_64b_default.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z22softsurface_setPalettePvjjj.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z20glsurface_setPalettePv.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.6;	.scl	2;	.type	32;	.endef
	.def	_paletteGetClosestColorWithBlacklist;	.scl	2;	.type	32;	.endef
	.def	_fwrite;	.scl	2;	.type	32;	.endef
	.def	_miniz_def_free_func;	.scl	2;	.type	32;	.endef
	.def	_tdefl_flush_output_buffer.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_tdefl_flush_block.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL12testransEvalPK10TESSvertexS1_S1_.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZL10tesvertLeqPK10TESSvertexS1_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL11AddSentinelP14TESStesselatorfff.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_miniz_def_alloc_func;	.scl	2;	.type	32;	.endef
