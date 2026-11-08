	.file	"<artificial>"
	.text
	.p2align 4
	.def	__ZL14AL_ResetVoicesv;	.scl	3;	.type	32;	.endef
__ZL14AL_ResetVoicesv:
LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$__ZL5Voice.lto_priv.0, %eax
	xorl	%edx, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$0, __ZL10Voice_Pool.lto_priv.0
	movl	%edi, -4(%ebp)
	.cfi_offset 7, -12
	xorl	%edi, %edi
	movl	%ebx, -12(%ebp)
	.cfi_offset 3, -20
	jmp	L4
	.p2align 4,,10
	.p2align 3
L11:
	addl	$1, %edx
	movl	%eax, (%ecx)
	addl	$44, %eax
	cmpl	$18, %edx
	je	L10
L4:
	xorl	%ebx, %ebx
	cmpl	$8, %edx
	movl	%edi, %ecx
	movl	%edx, 8(%eax)
	setg	%bl
	movl	$0, 12(%eax)
	movl	%eax, %edi
	movl	$0, 16(%eax)
	movl	$-1, 20(%eax)
	movl	$-1, 32(%eax)
	movl	%ebx, 36(%eax)
	movl	$0, 40(%eax)
	movl	$0, (%eax)
	movl	%ecx, 4(%eax)
	testl	%ecx, %ecx
	jne	L11
	addl	$1, %edx
	movl	%eax, __ZL10Voice_Pool.lto_priv.0
	addl	$44, %eax
	cmpl	$18, %edx
	jne	L4
L10:
	movl	$832, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL7Channel.lto_priv.0, (%esp)
	movl	%edi, __ZL10Voice_Pool.lto_priv.0+4
	call	_memset
	movl	$__ZL7Channel.lto_priv.0+24, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L5:
	xorl	%edx, %edx
	movl	$90, (%eax)
	addl	$52, %eax
	movl	$64, -44(%eax)
	movl	$131272, -32(%eax)
	movw	%dx, -28(%eax)
	cmpl	$__ZL7Channel.lto_priv.0+856, %eax
	jne	L5
	movl	-12(%ebp), %ebx
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.p2align 4
	.def	__ZL12AL_FlushCardi;	.scl	3;	.type	32;	.endef
__ZL12AL_FlushCardi:
LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%ecx, %ecx
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	sall	$7, %edi
	movl	$3, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	andw	$256, %di
	xorl	%ebx, %ebx
	leal	160(%edi), %ebp
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	jmp	L14
	.p2align 4,,10
	.p2align 3
L16:
	movl	__ZL9slotVoice.lto_priv.0(,%ecx,8), %eax
	addl	$1, %ebp
	movsbl	__ZL10offsetSlot.lto_priv.0(%eax), %ebx
	movl	__ZL9slotVoice.lto_priv.0+4(,%ecx,8), %eax
	movzbl	__ZL10offsetSlot.lto_priv.0(%eax), %esi
L14:
	movzwl	%bp, %eax
	xorl	%edx, %edx
	movl	%ecx, (%esp)
	call	_OPL3_WriteRegBuffered.constprop.0
	leal	16(%ebp), %eax
	xorl	%edx, %edx
	movzwl	%ax, %eax
	call	_OPL3_WriteRegBuffered.constprop.0
	leal	224(%edi,%ebx), %eax
	xorl	%edx, %edx
	movzwl	%ax, %eax
	call	_OPL3_WriteRegBuffered.constprop.0
	movl	%esi, %eax
	xorl	%edx, %edx
	movsbl	%al, %esi
	leal	224(%edi,%esi), %eax
	movzwl	%ax, %eax
	call	_OPL3_WriteRegBuffered.constprop.0
	leal	96(%edi,%ebx), %eax
	movl	$255, %edx
	movzwl	%ax, %eax
	call	_OPL3_WriteRegBuffered.constprop.0
	leal	96(%edi,%esi), %eax
	movl	$255, %edx
	movzwl	%ax, %eax
	call	_OPL3_WriteRegBuffered.constprop.0
	leal	128(%edi,%ebx), %eax
	movl	$255, %edx
	movzwl	%ax, %eax
	call	_OPL3_WriteRegBuffered.constprop.0
	leal	128(%edi,%esi), %eax
	movl	$255, %edx
	movzwl	%ax, %eax
	call	_OPL3_WriteRegBuffered.constprop.0
	leal	64(%edi,%ebx), %eax
	movl	$255, %edx
	movzwl	%ax, %eax
	call	_OPL3_WriteRegBuffered.constprop.0
	leal	64(%edi,%esi), %eax
	movl	$255, %edx
	movzwl	%ax, %eax
	call	_OPL3_WriteRegBuffered.constprop.0
	movl	(%esp), %ecx
	addl	$1, %ecx
	cmpl	$9, %ecx
	jne	L16
	addl	$4, %esp
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
LFE1:
	.p2align 4
	.globl	__ZL16AL_ProgramChangeii.lto_priv.0
	.def	__ZL16AL_ProgramChangeii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL16AL_ProgramChangeii.lto_priv.0:
LFB4:
	.cfi_startproc
	movl	4(%esp), %eax
	cmpl	$15, %eax
	jg	L17
	imull	$52, %eax, %eax
	movl	8(%esp), %edx
	movl	%edx, __ZL7Channel.lto_priv.0+8(%eax)
L17:
	ret
	.cfi_endproc
LFE4:
	.p2align 4
	.globl	__ZL12AL_SetVolumei.lto_priv.0
	.def	__ZL12AL_SetVolumei.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL12AL_SetVolumei.lto_priv.0:
LFB5:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	$255, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, __ZL9AL_Volume.lto_priv.0
	ret
	.cfi_endproc
LFE5:
	.p2align 4
	.def	__ZL10AL_NoteOffiii.part.0;	.scl	3;	.type	32;	.endef
__ZL10AL_NoteOffiii.part.0:
LFB6:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	%esi, 4(%esp)
	.cfi_offset 6, -12
	movl	%eax, %esi
	imull	$52, %eax, %eax
	movl	__ZL7Channel.lto_priv.0(%eax), %eax
	testl	%eax, %eax
	jne	L24
	jmp	L20
	.p2align 4
	.p2align 4,,10
	.p2align 3
L22:
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L20
L24:
	cmpl	%edx, 12(%eax)
	jne	L22
	movl	8(%eax), %eax
	cmpl	$-1, %eax
	je	L20
	movl	%edi, 8(%esp)
	.cfi_offset 7, -8
	imull	$44, %eax, %edi
	leal	-9(%eax), %ecx
	cmpl	$8, %eax
	movl	%ebx, (%esp)
	.cfi_offset 3, -16
	cmovle	%eax, %ecx
	xorl	%eax, %eax
	leal	__ZL5Voice.lto_priv.0(%edi), %ebx
	cmpl	$0, 36(%ebx)
	movl	$0, 40(%ebx)
	sete	%al
	movzbl	__ZL5Voice.lto_priv.0+25(%edi), %edx
	sall	$8, %eax
	leal	176(%eax,%ecx), %eax
	movzwl	%ax, %eax
	call	_OPL3_WriteRegBuffered.constprop.0
	movl	4(%ebx), %edx
	movl	__ZL5Voice.lto_priv.0(%edi), %eax
	testl	%edx, %edx
	je	L41
	movl	%eax, (%edx)
	testl	%eax, %eax
	je	L42
L28:
	movl	%edx, 4(%eax)
L29:
	movl	$0, __ZL5Voice.lto_priv.0(%edi)
	movl	__ZL10Voice_Pool.lto_priv.0+4, %eax
	movl	%eax, 4(%ebx)
	testl	%eax, %eax
	je	L30
	movl	%ebx, (%eax)
L31:
	movl	%ebx, __ZL10Voice_Pool.lto_priv.0+4
	movl	8(%esp), %edi
	.cfi_restore 7
	movl	(%esp), %ebx
	.cfi_restore 3
L20:
	movl	4(%esp), %esi
	addl	$12, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L41:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	imull	$52, %esi, %ecx
	movl	%eax, __ZL7Channel.lto_priv.0(%ecx)
	testl	%eax, %eax
	jne	L28
L42:
	imull	$52, %esi, %esi
	movl	%edx, __ZL7Channel.lto_priv.0+4(%esi)
	jmp	L29
	.p2align 4,,10
	.p2align 3
L30:
	movl	%ebx, __ZL10Voice_Pool.lto_priv.0
	jmp	L31
	.cfi_endproc
LFE6:
	.p2align 4
	.globl	__ZL10AL_NoteOffiii.lto_priv.0
	.def	__ZL10AL_NoteOffiii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL10AL_NoteOffiii.lto_priv.0:
LFB9:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	8(%esp), %edx
	cmpl	$15, %eax
	jg	L43
	jmp	__ZL10AL_NoteOffiii.part.0
	.p2align 4,,10
	.p2align 3
L43:
	ret
	.cfi_endproc
LFE9:
	.p2align 4
	.globl	__Z15SDLDrv_GetErrorv
	.def	__Z15SDLDrv_GetErrorv;	.scl	2;	.type	32;	.endef
__Z15SDLDrv_GetErrorv:
LFB10:
	.cfi_startproc
	movl	__ZL9ErrorCode.lto_priv.1, %eax
	ret
	.cfi_endproc
LFE10:
	.section .rdata,"dr"
LC0:
	.ascii "SDL Audio ok.\0"
LC1:
	.ascii "SDL Audio uninitialized.\0"
	.align 4
LC2:
	.ascii "SDL Audio: error in Init or InitSubSystem.\0"
	.align 4
LC3:
	.ascii "SDL Audio: error in OpenAudio.\0"
LC4:
	.ascii "Unknown SDL Audio error code.\0"
	.text
	.p2align 4
	.globl	__Z18SDLDrv_ErrorStringi
	.def	__Z18SDLDrv_ErrorStringi;	.scl	2;	.type	32;	.endef
__Z18SDLDrv_ErrorStringi:
LFB11:
	.cfi_startproc
	movl	__ZL9ErrorCode.lto_priv.1, %edx
L47:
	movl	4(%esp), %eax
	addl	$1, %eax
	cmpl	$4, %eax
	ja	L48
	jmp	*L50(,%eax,4)
	.section .rdata,"dr"
	.align 4
L50:
	.long	L54
	.long	L53
	.long	L55
	.long	L51
	.long	L49
	.text
	.p2align 4,,10
	.p2align 3
L55:
	movl	$LC1, %eax
	ret
	.p2align 4,,10
	.p2align 3
L53:
	movl	$LC0, %eax
	ret
	.p2align 4,,10
	.p2align 3
L54:
	movl	%edx, 4(%esp)
	jmp	L47
	.p2align 4,,10
	.p2align 3
L49:
	movl	$LC3, %eax
	ret
	.p2align 4,,10
	.p2align 3
L51:
	movl	$LC2, %eax
	ret
L48:
	movl	$LC4, %eax
	ret
	.cfi_endproc
LFE11:
	.p2align 4
	.def	_tsf_hydra_read_pmod;	.scl	3;	.type	32;	.endef
_tsf_hydra_read_pmod:
LFB12:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%edx, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 24
	movl	%eax, 4(%esp)
	movl	(%edx), %eax
	movl	$2, 8(%esp)
	movl	%eax, (%esp)
	call	*4(%edx)
	leal	2(%esi), %eax
	movl	$2, 8(%esp)
	movl	%eax, 4(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	*4(%ebx)
	leal	4(%esi), %eax
	movl	$2, 8(%esp)
	movl	%eax, 4(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	*4(%ebx)
	leal	6(%esi), %eax
	movl	$2, 8(%esp)
	addl	$8, %esi
	movl	%eax, 4(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	*4(%ebx)
	movl	%esi, 4(%esp)
	movl	$2, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	*4(%ebx)
	addl	$12, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE12:
	.def	_tsf_hydra_read_imod;	.scl	3;	.type	32;	.endef
	.set	_tsf_hydra_read_imod,_tsf_hydra_read_pmod
	.p2align 4
	.def	_tsf_riffchunk_read;	.scl	3;	.type	32;	.endef
_tsf_riffchunk_read:
LFB13:
	.cfi_startproc
	testl	%eax, %eax
	je	L59
	cmpl	$7, 4(%eax)
	jbe	L84
L59:
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%ecx, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	$4, 8(%esp)
	movl	%edx, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	call	*4(%ecx)
	testl	%eax, %eax
	je	L61
	movzbl	(%esi), %eax
	subl	$33, %eax
	cmpb	$88, %al
	jbe	L85
L61:
	addl	$12, %esp
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
L84:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L85:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	leal	4(%esi), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	*4(%ebx)
	testl	%eax, %eax
	je	L61
	testl	%edi, %edi
	je	L62
	movl	4(%esi), %edx
	movl	4(%edi), %eax
	leal	8(%edx), %ecx
	cmpl	%ecx, %eax
	jb	L61
	subl	%edx, %eax
	subl	$8, %eax
	movl	%eax, 4(%edi)
L62:
	movzbl	(%esi), %eax
	cmpb	$82, %al
	je	L86
	cmpb	$76, %al
	jne	L64
	cmpb	$73, 1(%esi)
	jne	L64
	cmpb	$83, 2(%esi)
	jne	L64
	cmpb	$84, 3(%esi)
	jne	L64
L65:
	movl	$4, 8(%esp)
	movl	%esi, 4(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	*4(%ebx)
	testl	%eax, %eax
	je	L61
	movzbl	(%esi), %eax
	subl	$33, %eax
	cmpb	$88, %al
	ja	L61
	subl	$4, 4(%esi)
L64:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	$1, %eax
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
L86:
	.cfi_restore_state
	cmpb	$73, 1(%esi)
	jne	L64
	cmpb	$70, 2(%esi)
	jne	L64
	cmpb	$70, 3(%esi)
	jne	L64
	testl	%edi, %edi
	jne	L61
	jmp	L65
	.cfi_endproc
LFE13:
	.p2align 4
	.def	_tsf_region_operator;	.scl	3;	.type	32;	.endef
_tsf_region_operator:
LFB14:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%ebp, 16(%esp)
	.cfi_offset 5, -8
	movl	24(%esp), %ebp
	cmpb	$0, __ZGVZ19tsf_region_operatorE8genMetas
	jne	L88
	movb	$22, __ZZ19tsf_region_operatorE8genMetas+51
	movb	$23, __ZZ19tsf_region_operatorE8genMetas+53
	movb	$24, __ZZ19tsf_region_operatorE8genMetas+55
	movb	$25, __ZZ19tsf_region_operatorE8genMetas+57
	movb	$26, __ZZ19tsf_region_operatorE8genMetas+59
	movb	$27, __ZZ19tsf_region_operatorE8genMetas+61
	movb	$28, __ZZ19tsf_region_operatorE8genMetas+63
	movb	$29, __ZZ19tsf_region_operatorE8genMetas+65
	movb	$14, __ZZ19tsf_region_operatorE8genMetas+67
	movb	$15, __ZZ19tsf_region_operatorE8genMetas+69
	movb	$16, __ZZ19tsf_region_operatorE8genMetas+71
	movb	$17, __ZZ19tsf_region_operatorE8genMetas+73
	movb	$18, __ZZ19tsf_region_operatorE8genMetas+75
	movb	$19, __ZZ19tsf_region_operatorE8genMetas+77
	movb	$20, __ZZ19tsf_region_operatorE8genMetas+79
	movb	$21, __ZZ19tsf_region_operatorE8genMetas+81
	movb	$1, __ZGVZ19tsf_region_operatorE8genMetas
L88:
	testl	%ecx, %ecx
	je	L89
	cmpw	$58, %dx
	ja	L87
	movzwl	%dx, %edx
	movl	%esi, 8(%esp)
	movzbl	__ZZ19tsf_region_operatorE8genMetas(%edx,%edx), %eax
	.cfi_offset 6, -16
	movzbl	__ZZ19tsf_region_operatorE8genMetas+1(%edx,%edx), %esi
	andl	$15, %eax
	cmpb	$9, %al
	ja	L134
	movzbl	%al, %eax
	jmp	*L92(,%eax,4)
	.section .rdata,"dr"
	.align 4
L92:
	.long	L134
	.long	L100
	.long	L99
	.long	L98
	.long	L97
	.long	L96
	.long	L95
	.long	L94
	.long	L93
	.long	L91
	.text
	.p2align 4,,10
	.p2align 3
L135:
	.cfi_offset 7, -12
	movl	8(%esp), %esi
	.cfi_restore 6
	movl	12(%esp), %edi
	.cfi_restore 7
L87:
	movl	4(%esp), %ebx
	movl	16(%esp), %ebp
	addl	$20, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L89:
	.cfi_restore_state
	movl	%esi, 8(%esp)
	movl	$__ZZ19tsf_region_operatorE8genMetas, %eax
	movss	LC16, %xmm3
	movl	%edi, 12(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%ebx, (%esp)
	jmp	L116
	.p2align 4,,10
	.p2align 3
L136:
	cmpb	$1, %bl
	jne	L104
	movl	(%esp), %edi
	andl	$-16, %edx
	movss	0(%ebp,%ecx,4), %xmm0
	leal	(%edi,%ecx,4), %esi
	addss	(%esi), %xmm0
	cmpb	$-112, %dl
	je	L105
	ja	L106
	cmpb	$112, %dl
	je	L118
	cmpb	$-128, %dl
	je	L119
	cmpb	$96, %dl
	jne	L108
	movss	LC5, %xmm2
	movss	LC6, %xmm1
	.p2align 4
	.p2align 3
L107:
	comiss	%xmm0, %xmm1
	jbe	L131
	movss	%xmm1, (%esi)
	.p2align 4
	.p2align 3
L104:
	addl	$2, %eax
	movl	$__ZZ19tsf_region_operatorE8genMetas+118, %edi
	cmpl	%eax, %edi
	je	L135
L116:
	movzbl	(%eax), %edx
	movzbl	1(%eax), %ecx
	movl	%edx, %esi
	andl	$15, %esi
	movl	%esi, %ebx
	cmpb	$2, %bl
	je	L102
	cmpb	$3, %bl
	jne	L136
	movl	(%esp), %edi
	movl	0(%ebp,%ecx,4), %edx
	addl	%edx, (%edi,%ecx,4)
	jmp	L104
	.p2align 4,,10
	.p2align 3
L102:
	movzbl	%cl, %edi
	movl	(%esp), %ecx
	andl	$-16, %edx
	leal	(%ecx,%edi,4), %esi
	movl	(%esi), %ecx
	addl	0(%ebp,%edi,4), %ecx
	movl	%ecx, (%esi)
	cmpb	$48, %dl
	je	L123
	ja	L114
	cmpb	$16, %dl
	je	L124
	movl	$13500, %ebx
	movl	$1500, %edi
	cmpb	$32, %dl
	jne	L104
	.p2align 4
	.p2align 3
L113:
	cmpl	%edi, %ecx
	jge	L115
	movl	%edi, (%esi)
	jmp	L104
	.p2align 4,,10
	.p2align 3
L131:
	minss	%xmm0, %xmm2
	movss	%xmm2, (%esi)
	jmp	L104
	.p2align 4,,10
	.p2align 3
L106:
	cmpb	$-80, %dl
	je	L121
	cmpb	$-64, %dl
	je	L122
	cmpb	$-96, %dl
	jne	L108
	mulss	LC17, %xmm0
	xorps	%xmm1, %xmm1
	movss	LC12, %xmm2
	jmp	L107
	.p2align 4,,10
	.p2align 3
L115:
	cmpl	%ebx, %ecx
	jle	L104
	movl	%ebx, (%esi)
	jmp	L104
	.p2align 4,,10
	.p2align 3
L114:
	cmpb	$64, %dl
	je	L126
	cmpb	$80, %dl
	jne	L104
	movl	$4500, %ebx
	movl	$-16000, %edi
	jmp	L113
	.p2align 4,,10
	.p2align 3
L123:
	movl	$960, %ebx
	xorl	%edi, %edi
	jmp	L113
	.p2align 4,,10
	.p2align 3
L126:
	movl	$960, %ebx
	movl	$-960, %edi
	jmp	L113
	.p2align 4,,10
	.p2align 3
L124:
	movl	$12000, %ebx
	movl	$-12000, %edi
	jmp	L113
	.p2align 4,,10
	.p2align 3
L105:
	movss	LC10, %xmm2
	mulss	%xmm3, %xmm0
	movss	LC11, %xmm1
	jmp	L107
	.p2align 4,,10
	.p2align 3
L122:
	movss	LC15, %xmm2
	xorps	%xmm1, %xmm1
	jmp	L107
	.p2align 4,,10
	.p2align 3
L121:
	movss	LC14, %xmm2
	xorps	%xmm1, %xmm1
	jmp	L107
	.p2align 4,,10
	.p2align 3
L108:
	movss	%xmm0, (%esi)
	jmp	L104
	.p2align 4,,10
	.p2align 3
L119:
	movss	LC8, %xmm2
	movss	LC9, %xmm1
	jmp	L107
	.p2align 4,,10
	.p2align 3
L118:
	movss	LC7, %xmm2
	movss	LC6, %xmm1
	jmp	L107
L91:
	.cfi_restore 7
	movswl	(%ecx), %eax
	movl	%eax, 40(%ebx)
	movl	8(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L87
L100:
	.cfi_restore_state
	movl	%esi, %eax
	xorps	%xmm0, %xmm0
	movzbl	%al, %esi
	movswl	(%ecx), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, (%ebx,%esi,4)
	movl	8(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L87
L99:
	.cfi_restore_state
	movl	%esi, %eax
	movzbl	%al, %esi
	movswl	(%ecx), %eax
	movl	%eax, (%ebx,%esi,4)
	movl	8(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L87
L98:
	.cfi_restore_state
	movl	%esi, %eax
	movzbl	%al, %esi
	movswl	(%ecx), %eax
	addl	%eax, (%ebx,%esi,4)
	movl	8(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L87
L97:
	.cfi_restore_state
	movl	%esi, %eax
	movzbl	%al, %esi
	movswl	(%ecx), %eax
	sall	$15, %eax
	addl	%eax, (%ebx,%esi,4)
	movl	8(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L87
L96:
	.cfi_restore_state
	movzbl	(%ecx), %eax
	movb	%al, 8(%ebx)
	movzbl	1(%ecx), %eax
	movb	%al, 9(%ebx)
	movl	8(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L87
L95:
	.cfi_restore_state
	movzbl	(%ecx), %eax
	movb	%al, 10(%ebx)
	movzbl	1(%ecx), %eax
	movb	%al, 11(%ebx)
	movl	8(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L87
L94:
	.cfi_restore_state
	movzwl	(%ecx), %eax
	movl	$2, %edx
	andl	$3, %eax
	cmpw	$3, %ax
	je	L101
	xorl	%edx, %edx
	cmpw	$1, %ax
	sete	%dl
L101:
	movl	%edx, (%ebx)
	movl	8(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L87
L93:
	.cfi_restore_state
	movzwl	(%ecx), %eax
	movl	%eax, 12(%ebx)
	movl	8(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L87
L134:
	.cfi_restore_state
	movl	8(%esp), %esi
	.cfi_restore 6
	jmp	L87
	.cfi_endproc
LFE14:
	.p2align 4
	.def	_tsf_voice_lfo_process;	.scl	3;	.type	32;	.endef
_tsf_voice_lfo_process:
LFB15:
	.cfi_startproc
	movl	%edx, %ecx
	movl	(%eax), %edx
	cmpl	%ecx, %edx
	jg	L146
	xorps	%xmm0, %xmm0
	movss	8(%eax), %xmm1
	cvtsi2ssl	%ecx, %xmm0
	mulss	%xmm1, %xmm0
	addss	4(%eax), %xmm0
	comiss	LC18, %xmm0
	movss	%xmm0, 4(%eax)
	jbe	L145
	xorps	LC19, %xmm1
	movss	%xmm1, 8(%eax)
	movss	LC20, %xmm1
	subss	%xmm0, %xmm1
	movss	%xmm1, 4(%eax)
	ret
	.p2align 4,,10
	.p2align 3
L145:
	movss	LC21, %xmm2
	comiss	%xmm0, %xmm2
	ja	L147
	ret
	.p2align 4,,10
	.p2align 3
L146:
	subl	%ecx, %edx
	movl	%edx, (%eax)
	ret
	.p2align 4,,10
	.p2align 3
L147:
	xorps	LC19, %xmm1
	movss	%xmm1, 8(%eax)
	movss	LC22, %xmm1
	subss	%xmm0, %xmm1
	movss	%xmm1, 4(%eax)
	ret
	.cfi_endproc
LFE15:
	.p2align 4
	.def	_tsf_voice_interpolate;	.scl	3;	.type	32;	.endef
_tsf_voice_interpolate:
LFB17:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movaps	%xmm0, %xmm4
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	4(%edx), %ebx
	movss	(%eax,%ebx,4), %xmm1
	cmpl	$1, %ecx
	je	L149
	cmpl	$2, %ecx
	je	L150
	movss	%xmm1, (%esp)
	flds	(%esp)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L150:
	.cfi_restore_state
	movl	(%edx), %ecx
	movaps	%xmm1, %xmm2
	movaps	%xmm4, %xmm5
	movss	LC11, %xmm6
	movss	LC10, %xmm7
	mulss	%xmm4, %xmm5
	movss	(%eax,%ecx,4), %xmm0
	movl	8(%edx), %ecx
	movl	12(%edx), %edx
	mulss	%xmm0, %xmm6
	movss	(%eax,%ecx,4), %xmm3
	mulss	(%eax,%edx,4), %xmm7
	movss	%xmm6, (%esp)
	movaps	%xmm7, %xmm6
	movss	LC23, %xmm7
	mulss	%xmm7, %xmm2
	mulss	%xmm3, %xmm7
	addss	(%esp), %xmm2
	subss	%xmm7, %xmm2
	movss	LC24, %xmm7
	mulss	%xmm1, %xmm7
	addss	%xmm6, %xmm2
	mulss	%xmm4, %xmm2
	subss	%xmm7, %xmm0
	movaps	%xmm3, %xmm7
	addss	%xmm3, %xmm7
	mulss	LC10, %xmm3
	addss	(%esp), %xmm3
	addss	%xmm7, %xmm0
	mulss	%xmm5, %xmm2
	mulss	%xmm4, %xmm3
	subss	%xmm6, %xmm0
	mulss	%xmm5, %xmm0
	addss	%xmm2, %xmm0
	addss	%xmm3, %xmm0
	addss	%xmm0, %xmm1
	movss	%xmm1, (%esp)
	flds	(%esp)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L149:
	.cfi_restore_state
	movl	8(%edx), %edx
	movss	(%eax,%edx,4), %xmm2
	mulss	%xmm0, %xmm2
	movss	LC18, %xmm0
	subss	%xmm4, %xmm0
	mulss	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, (%esp)
	flds	(%esp)
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE17:
	.p2align 4
	.globl	__Z15SF2Drv_GetErrorv
	.def	__Z15SF2Drv_GetErrorv;	.scl	2;	.type	32;	.endef
__Z15SF2Drv_GetErrorv:
LFB18:
	.cfi_startproc
	movl	__ZL9ErrorCode.lto_priv.2, %eax
	ret
	.cfi_endproc
LFE18:
	.p2align 4
	.def	__ZL13SF2_SetVolumei;	.scl	3;	.type	32;	.endef
__ZL13SF2_SetVolumei:
LFB19:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	$255, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, __ZL10SF2_Volume
	ret
	.cfi_endproc
LFE19:
	.section .rdata,"dr"
LC26:
	.ascii "SF2 ok.\0"
LC27:
	.ascii "SF2 bank error.\0"
LC28:
	.ascii "Unknown SF2 error.\0"
	.text
	.p2align 4
	.globl	__Z18SF2Drv_ErrorStringi
	.def	__Z18SF2Drv_ErrorStringi;	.scl	2;	.type	32;	.endef
__Z18SF2Drv_ErrorStringi:
LFB20:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	__ZL9ErrorCode.lto_priv.2, %edx
	testl	%eax, %eax
	je	L158
L161:
	cmpl	$1, %eax
	je	L159
	cmpl	$-1, %eax
	je	L160
	movl	$LC28, %eax
	ret
	.p2align 4,,10
	.p2align 3
L159:
	movl	$LC27, %eax
	ret
	.p2align 4,,10
	.p2align 3
L160:
	movl	%edx, %eax
	testl	%eax, %eax
	jne	L161
L158:
	movl	$LC26, %eax
	ret
	.cfi_endproc
LFE20:
	.p2align 4
	.globl	__Z20SF2Drv_MIDI_SetTempoii
	.def	__Z20SF2Drv_MIDI_SetTempoii;	.scl	2;	.type	32;	.endef
__Z20SF2Drv_MIDI_SetTempoii:
LFB21:
	.cfi_startproc
	movl	8(%esp), %ecx
	imull	4(%esp), %ecx
	movl	$-2004318071, %eax
	movl	$0, _MV_MIDIRenderTimer
	imull	%ecx
	addl	%ecx, %edx
	sarl	$31, %ecx
	sarl	$5, %edx
	subl	%ecx, %edx
	movl	%edx, _MV_MIDIRenderTempo
	ret
	.cfi_endproc
LFE21:
	.p2align 4
	.globl	__Z17WinMMDrv_GetErrorv
	.def	__Z17WinMMDrv_GetErrorv;	.scl	2;	.type	32;	.endef
__Z17WinMMDrv_GetErrorv:
LFB23:
	.cfi_startproc
	movl	__ZL9ErrorCode.lto_priv.3, %eax
	ret
	.cfi_endproc
LFE23:
	.section .rdata,"dr"
LC29:
	.ascii "MME ok.\0"
	.align 4
LC30:
	.ascii "MIDI error: failed opening stream.\0"
	.align 4
LC31:
	.ascii "MIDI error: failed starting stream.\0"
	.align 4
LC32:
	.ascii "MIDI error: failed creating play thread quit event.\0"
	.align 4
LC33:
	.ascii "MIDI error: failed creating play thread.\0"
	.align 4
LC34:
	.ascii "MIDI error: failed creating play mutex.\0"
LC35:
	.ascii "Unknown MME error code.\0"
	.text
	.p2align 4
	.globl	__Z20WinMMDrv_ErrorStringi
	.def	__Z20WinMMDrv_ErrorStringi;	.scl	2;	.type	32;	.endef
__Z20WinMMDrv_ErrorStringi:
LFB24:
	.cfi_startproc
	movl	__ZL9ErrorCode.lto_priv.3, %edx
L165:
	movl	4(%esp), %eax
	addl	$1, %eax
	cmpl	$6, %eax
	ja	L166
	jmp	*L168(,%eax,4)
	.section .rdata,"dr"
	.align 4
L168:
	.long	L174
	.long	L173
	.long	L175
	.long	L171
	.long	L170
	.long	L169
	.long	L167
	.text
	.p2align 4,,10
	.p2align 3
L175:
	movl	$LC30, %eax
	ret
	.p2align 4,,10
	.p2align 3
L173:
	movl	$LC29, %eax
	ret
	.p2align 4,,10
	.p2align 3
L174:
	movl	%edx, 4(%esp)
	jmp	L165
	.p2align 4,,10
	.p2align 3
L167:
	movl	$LC34, %eax
	ret
	.p2align 4,,10
	.p2align 3
L171:
	movl	$LC31, %eax
	ret
	.p2align 4,,10
	.p2align 3
L170:
	movl	$LC32, %eax
	ret
	.p2align 4,,10
	.p2align 3
L169:
	movl	$LC33, %eax
	ret
L166:
	movl	$LC35, %eax
	ret
	.cfi_endproc
LFE24:
	.p2align 4
	.globl	__Z26WinMMDrv_MIDI_HaltPlaybackv
	.def	__Z26WinMMDrv_MIDI_HaltPlaybackv;	.scl	2;	.type	32;	.endef
__Z26WinMMDrv_MIDI_HaltPlaybackv:
LFB25:
	.cfi_startproc
	movl	$0, __ZL17midiStreamRunning
	ret
	.cfi_endproc
LFE25:
	.p2align 4
	.def	__ZL10write_flacPKvjjPv;	.scl	3;	.type	32;	.endef
__ZL10write_flacPKvjjPv:
LFB26:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE26:
	.p2align 4
	.def	__ZL9seek_flacPvxi;	.scl	3;	.type	32;	.endef
__ZL9seek_flacPvxi:
LFB27:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %ecx
	xorl	%eax, %eax
	movl	12(%esp), %ebx
	movl	4(%ecx), %edx
	cmpl	$0, 20(%esp)
	je	L179
	movl	%edx, %eax
	cmpl	$2, 20(%esp)
	je	L179
	movl	8(%ecx), %eax
L179:
	addl	%ebx, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	movl	%eax, 8(%ecx)
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE27:
	.p2align 4
	.def	__ZL9tell_flacPv;	.scl	3;	.type	32;	.endef
__ZL9tell_flacPv:
LFB28:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%edx, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	movl	8(%eax), %eax
	ret
	.cfi_endproc
LFE28:
	.p2align 4
	.def	__ZL8eof_flacPv;	.scl	3;	.type	32;	.endef
__ZL8eof_flacPv:
LFB29:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	4(%eax), %edx
	cmpl	%edx, 8(%eax)
	sete	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc
LFE29:
	.p2align 4
	.globl	__ZL10close_flacPv.lto_priv.0
	.def	__ZL10close_flacPv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL10close_flacPv.lto_priv.0:
LFB30:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE30:
	.p2align 4
	.def	__Z16seek_flac_streamPK19FLAC__StreamDecoderyPv;	.scl	3;	.type	32;	.endef
__Z16seek_flac_streamPK19FLAC__StreamDecoderyPv:
LFB31:
	.cfi_startproc
	movl	16(%esp), %edx
	movl	8(%esp), %ecx
	movl	4(%edx), %eax
	cmpl	%ecx, %eax
	cmova	%ecx, %eax
	movl	%eax, 8(%edx)
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE31:
	.p2align 4
	.def	__Z16tell_flac_streamPK19FLAC__StreamDecoderPyPv;	.scl	3;	.type	32;	.endef
__Z16tell_flac_streamPK19FLAC__StreamDecoderPyPv:
LFB32:
	.cfi_startproc
	movl	12(%esp), %edx
	movl	8(%esp), %eax
	movl	8(%edx), %ecx
	movl	$0, 4(%eax)
	movl	%ecx, (%eax)
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE32:
	.p2align 4
	.def	__Z18length_flac_streamPK19FLAC__StreamDecoderPyPv;	.scl	3;	.type	32;	.endef
__Z18length_flac_streamPK19FLAC__StreamDecoderPyPv:
LFB33:
	.cfi_startproc
	movl	12(%esp), %edx
	movl	8(%esp), %eax
	movl	4(%edx), %ecx
	movl	$0, 4(%eax)
	movl	%ecx, (%eax)
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE33:
	.p2align 4
	.def	__Z15eof_flac_streamPK19FLAC__StreamDecoderPv;	.scl	3;	.type	32;	.endef
__Z15eof_flac_streamPK19FLAC__StreamDecoderPv:
LFB34:
	.cfi_startproc
	movl	8(%esp), %eax
	movl	4(%eax), %edx
	cmpl	%edx, 8(%eax)
	sete	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc
LFE34:
	.p2align 4
	.def	__ZL18MV_GetNextWAVBlockP9VoiceNode;	.scl	3;	.type	32;	.endef
__ZL18MV_GetNextWAVBlockP9VoiceNode:
LFB35:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	12(%esp), %eax
	movl	80(%eax), %ebx
	testl	%ebx, %ebx
	je	L194
	movl	24(%eax), %esi
	movl	108(%eax), %edx
	subl	96(%eax), %edx
L195:
	movl	%edx, 108(%eax)
	movl	$32768, %edx
	movl	72(%eax), %ecx
	cmpl	%edx, %ebx
	movl	%esi, 16(%eax)
	cmovbe	%ebx, %edx
	imull	68(%eax), %ecx
	subl	%edx, %ebx
	sarl	$3, %ecx
	movl	%ebx, 80(%eax)
	imull	%edx, %ecx
	sall	$16, %edx
	movl	%edx, 96(%eax)
	addl	%ecx, %esi
	movl	%esi, 24(%eax)
	movl	$1, %eax
L193:
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
L194:
	.cfi_restore_state
	movl	28(%eax), %esi
	testl	%esi, %esi
	je	L197
	movl	40(%eax), %ebx
	xorl	%edx, %edx
	jmp	L195
	.p2align 4,,10
	.p2align 3
L197:
	xorl	%eax, %eax
	jmp	L193
	.cfi_endproc
LFE35:
	.p2align 4
	.globl	__ZL9FX_BadFmtPcjiiiiiiiii.lto_priv.0
	.def	__ZL9FX_BadFmtPcjiiiiiiiii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL9FX_BadFmtPcjiiiiiiiii.lto_priv.0:
LFB36:
	.cfi_startproc
	movl	$5, _MV_ErrorCode
	movl	$-1, %eax
	ret
	.cfi_endproc
LFE36:
	.p2align 4
	.globl	__ZL11FX_BadFmt3DPcjiiiiiii.lto_priv.0
	.def	__ZL11FX_BadFmt3DPcjiiiiiii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL11FX_BadFmt3DPcjiiiiiii.lto_priv.0:
LFB37:
	.cfi_startproc
	movl	$5, _MV_ErrorCode
	movl	$-1, %eax
	ret
	.cfi_endproc
LFE37:
	.p2align 4
	.def	__ZL17_MIDI_ResetTracksv;	.scl	3;	.type	32;	.endef
__ZL17_MIDI_ResetTracksv:
LFB38:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	__ZL14_MIDI_Division, %eax
	movl	$0, __ZL10_MIDI_Tick
	movl	$1, __ZL10_MIDI_Beat
	movl	%eax, __ZL18_MIDI_TicksPerBeat
	movl	__ZL15_MIDI_NumTracks, %eax
	movl	$1, __ZL13_MIDI_Measure
	movl	$0, __ZL10_MIDI_Time
	movl	$4, __ZL21_MIDI_BeatsPerMeasure
	movl	$4, __ZL14_MIDI_TimeBase
	movl	$0, __MIDI_PositionInTicks
	movl	$0, __ZL18_MIDI_ActiveTracks
	movl	$0, __ZL13_MIDI_Context
	movl	%eax, 4(%esp)
	testl	%eax, %eax
	jle	L201
	movl	%edi, 20(%esp)
	movl	__ZL14_MIDI_TrackPtr, %ecx
	.cfi_offset 7, -12
	xorl	%edi, %edi
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	xorl	%ebp, %ebp
	movl	%ebx, 12(%esp)
	movl	%esi, 16(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	$0, (%esp)
	jmp	L207
	.p2align 4,,10
	.p2align 3
L205:
	movl	%eax, 8(%ecx)
	movzbl	300(%ecx), %eax
	leal	1(%edi), %edx
	movl	$1, %ebx
	movl	%esi, 24(%ecx)
	testw	%ax, %ax
	movw	%ax, 12(%ecx)
	cmovne	%edx, %edi
	cmovne	%ebx, %ebp
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ebx, %ebx
	movw	%ax, 14(%ecx)
	addl	$304, %ecx
	addl	$1, (%esp)
	movl	(%esp), %eax
	movw	%dx, -288(%ecx)
	movw	%bx, -276(%ecx)
	cmpl	%eax, 4(%esp)
	je	L217
L207:
	movl	(%ecx), %esi
	movl	%esi, 4(%ecx)
	movzbl	(%esi), %eax
	leal	1(%esi), %edx
	movl	%edx, 4(%ecx)
	testb	%al, %al
	jns	L205
	movl	%esi, 8(%esp)
	andl	$127, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L204:
	movzbl	(%edx), %ebx
	sall	$7, %eax
	addl	$1, %edx
	movl	%edx, 4(%ecx)
	movl	%ebx, %esi
	andl	$127, %esi
	addl	%esi, %eax
	testb	%bl, %bl
	js	L204
	movl	8(%esp), %esi
	jmp	L205
	.p2align 4,,10
	.p2align 3
L217:
	movl	%ebp, %eax
	testb	%al, %al
	je	L216
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	%edi, __ZL18_MIDI_ActiveTracks
	movl	24(%esp), %ebp
	.cfi_restore 5
	movl	20(%esp), %edi
	.cfi_restore 7
L201:
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
L216:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	20(%esp), %edi
	.cfi_restore 7
	movl	24(%esp), %ebp
	.cfi_restore 5
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE38:
	.p2align 4
	.def	__ZL17_MIDI_AdvanceTickv;	.scl	3;	.type	32;	.endef
__ZL17_MIDI_AdvanceTickv:
LFB40:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	__ZL22_MIDI_FPSecondsPerTick, %eax
	addl	%eax, __ZL10_MIDI_Time
	movl	__ZL10_MIDI_Tick, %eax
	movl	__ZL18_MIDI_TicksPerBeat, %ebx
	addl	$1, __MIDI_PositionInTicks
	leal	1(%eax), %edx
	movl	__ZL10_MIDI_Beat, %eax
	leal	1(%eax), %ecx
	cmpl	%ebx, %edx
	jle	L229
	.p2align 4
	.p2align 4
	.p2align 3
L221:
	subl	%ebx, %edx
	movl	%ecx, %eax
	addl	$1, %ecx
	cmpl	%ebx, %edx
	jg	L221
	movl	%edx, __ZL10_MIDI_Tick
	movl	%eax, __ZL10_MIDI_Beat
L220:
	movl	__ZL21_MIDI_BeatsPerMeasure, %ecx
	cmpl	%ecx, %eax
	jle	L218
	movl	__ZL13_MIDI_Measure, %ebx
	leal	1(%ebx), %edx
	.p2align 4
	.p2align 4
	.p2align 3
L223:
	subl	%ecx, %eax
	movl	%edx, %ebx
	addl	$1, %edx
	cmpl	%ecx, %eax
	jg	L223
	movl	%eax, __ZL10_MIDI_Beat
	movl	%ebx, __ZL13_MIDI_Measure
L218:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L229:
	.cfi_restore_state
	movl	%edx, __ZL10_MIDI_Tick
	jmp	L220
	.cfi_endproc
LFE40:
	.p2align 4
	.def	__ZL22_MIDI_SetChannelVolumeii;	.scl	3;	.type	32;	.endef
__ZL22_MIDI_SetChannelVolumeii:
LFB41:
	.cfi_startproc
	movl	%edx, __ZL19_MIDI_ChannelVolume(,%eax,4)
	movl	%eax, %ecx
	movl	__ZL11_MIDI_Funcs.lto_priv.0, %eax
	testl	%eax, %eax
	je	L240
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	movl	12(%eax), %ebx
	testl	%ebx, %ebx
	je	L230
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	L243
L232:
	movl	%edx, 8(%esp)
	movl	$7, 4(%esp)
	movl	%ecx, (%esp)
	call	*%ebx
L230:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L243:
	.cfi_restore_state
	imull	__ZL17_MIDI_TotalVolume, %edx
	movl	$255, 4(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, (%esp)
	call	_tabledivide32.lto_priv.1
	movl	12(%esp), %ecx
	movl	%eax, %edx
	movl	__ZL11_MIDI_Funcs.lto_priv.0, %eax
	movl	12(%eax), %ebx
	jmp	L232
	.p2align 4,,10
	.p2align 3
L240:
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	ret
	.cfi_endproc
LFE41:
	.p2align 4
	.def	__ZL29_MIDI_InterpretControllerInfoP5trackiiii;	.scl	3;	.type	32;	.endef
__ZL29_MIDI_InterpretControllerInfoP5trackiiii:
LFB42:
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
	movl	%edx, %esi
	pushl	%ebx
	andl	$-8, %esp
	subl	$60, %esp
	.cfi_offset 3, -20
	movl	8(%ebp), %edx
	cmpl	$7, %edx
	je	L245
	leal	-110(%edx), %ebx
	cmpl	$16, %ebx
	ja	L246
	jmp	*L248(,%ebx,4)
	.section .rdata,"dr"
	.align 4
L248:
	.long	L244
	.long	L244
	.long	L254
	.long	L253
	.long	L244
	.long	L251
	.long	L250
	.long	L249
	.long	L250
	.long	L249
	.long	L246
	.long	L246
	.long	L246
	.long	L246
	.long	L246
	.long	L246
	.long	L247
	.text
	.p2align 4,,10
	.p2align 3
L247:
	addl	$1, 4(%eax)
L244:
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
L246:
	.cfi_restore_state
	movl	__ZL11_MIDI_Funcs.lto_priv.0, %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L244
	movl	12(%ebp), %ebx
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	movl	%ebx, 8(%esp)
	call	*%eax
	jmp	L244
	.p2align 4,,10
	.p2align 3
L250:
	movl	12(%ebp), %edi
	movl	$-1, %ecx
	movl	$1, %ebx
	testl	%edi, %edi
	cmovne	12(%ebp), %ecx
	movl	%ecx, 12(%ebp)
	cmpl	$118, %edx
	je	L291
L258:
	movl	__ZL22_MIDI_FPSecondsPerTick, %edx
	movl	__ZL10_MIDI_Time, %ecx
	movl	%esi, 28(%esp)
	movzwl	12(%ebp), %edi
	movl	%edx, 52(%esp)
	movzwl	__ZL10_MIDI_Beat, %edx
	movl	%ecx, 56(%esp)
	movzwl	__ZL10_MIDI_Tick, %ecx
	movw	%dx, 44(%esp)
	movzwl	__ZL21_MIDI_BeatsPerMeasure, %edx
	movw	%cx, 50(%esp)
	movzwl	__ZL13_MIDI_Measure, %ecx
	movw	%dx, 36(%esp)
	movzwl	__ZL14_MIDI_TimeBase, %edx
	movw	%cx, 40(%esp)
	movzwl	__ZL18_MIDI_TicksPerBeat, %ecx
	movw	%dx, 32(%esp)
	movl	%ecx, %esi
	.p2align 4
	.p2align 3
L259:
	movzwl	14(%eax), %ecx
	movzwl	%di, %edx
	movss	4(%eax), %xmm0
	movw	%si, 48(%eax)
	addl	$304, %eax
	sall	$16, %ecx
	unpcklps	%xmm0, %xmm0
	orl	%ecx, %edx
	movl	56(%esp), %ecx
	movlps	%xmm0, -284(%eax)
	movl	%edx, -276(%eax)
	movzwl	-292(%eax), %edx
	movl	%ecx, -272(%eax)
	movl	52(%esp), %ecx
	movw	%dx, -248(%eax)
	movl	-296(%eax), %edx
	movl	%ecx, -268(%eax)
	movzwl	50(%esp), %ecx
	movl	%edx, -252(%eax)
	movzwl	40(%esp), %edx
	movw	%cx, -264(%eax)
	movzwl	44(%esp), %ecx
	movw	%dx, -260(%eax)
	movzwl	32(%esp), %edx
	movw	%cx, -262(%eax)
	movzwl	36(%esp), %ecx
	movw	%dx, -254(%eax)
	movw	%cx, -258(%eax)
	subl	$1, %ebx
	jne	L259
	movl	28(%esp), %esi
	jmp	L244
	.p2align 4,,10
	.p2align 3
L249:
	cmpl	$127, 12(%ebp)
	jne	L244
	movl	24(%eax), %ebx
	testl	%ebx, %ebx
	je	L244
	cmpw	$0, 28(%eax)
	je	L244
	cmpl	$119, %edx
	je	L292
	movl	__ZL18_MIDI_ActiveTracks, %ebx
	movl	$1, 52(%esp)
	leal	-1(%ebx), %edx
	movl	%edx, __ZL18_MIDI_ActiveTracks
L261:
	movb	$0, 50(%esp)
	xorl	%ebx, %ebx
	movl	%esi, 56(%esp)
	.p2align 4
	.p2align 3
L265:
	movzwl	28(%eax), %ecx
	cmpw	$-1, %cx
	je	L262
	subl	$1, %ecx
	movw	%cx, 28(%eax)
L262:
	movl	24(%eax), %ecx
	movzwl	56(%eax), %edi
	leal	1(%edx), %esi
	movl	%ecx, 4(%eax)
	movzwl	30(%eax), %ecx
	testw	%di, %di
	movw	%di, 12(%eax)
	cmovne	%esi, %edx
	movw	%cx, 14(%eax)
	movl	52(%eax), %ecx
	movl	%ecx, 8(%eax)
	movl	$1, %ecx
	cmovne	%ecx, %ebx
	movl	56(%esp), %ecx
	testl	%ecx, %ecx
	jne	L264
	movl	32(%eax), %esi
	movb	$1, 50(%esp)
	movl	$1, 56(%esp)
	movl	%esi, 44(%esp)
	movl	36(%eax), %esi
	movl	%esi, 40(%esp)
	movswl	40(%eax), %esi
	movl	%esi, 36(%esp)
	movswl	42(%eax), %esi
	movl	%esi, 32(%esp)
	movswl	44(%eax), %esi
	movl	%esi, 28(%esp)
	movswl	46(%eax), %esi
	movl	%esi, 24(%esp)
	movswl	48(%eax), %esi
	movl	%esi, 20(%esp)
	movswl	50(%eax), %esi
	movl	%esi, 16(%esp)
L264:
	addl	$304, %eax
	subl	$1, 52(%esp)
	jne	L265
	movl	56(%esp), %esi
	testb	%bl, %bl
	je	L266
	movl	%edx, __ZL18_MIDI_ActiveTracks
L266:
	cmpb	$0, 50(%esp)
	je	L244
	movl	16(%esp), %eax
	movl	%eax, __ZL14_MIDI_TimeBase
	movl	20(%esp), %eax
	movl	%eax, __ZL18_MIDI_TicksPerBeat
	movl	24(%esp), %eax
	movl	%eax, __ZL21_MIDI_BeatsPerMeasure
	movl	28(%esp), %eax
	movl	%eax, __ZL13_MIDI_Measure
	movl	32(%esp), %eax
	movl	%eax, __ZL10_MIDI_Beat
	movl	36(%esp), %eax
	movl	%eax, __ZL10_MIDI_Tick
	movl	40(%esp), %eax
	movl	%eax, __ZL22_MIDI_FPSecondsPerTick
	movl	44(%esp), %eax
	movl	%eax, __ZL10_MIDI_Time
	jmp	L244
	.p2align 4,,10
	.p2align 3
L254:
	cmpb	$0, 301(%eax)
	je	L244
	movl	12(%ebp), %eax
	movl	%ecx, (%esp)
	andl	$127, %eax
	movl	%eax, 4(%esp)
	movl	__ZL11_MIDI_Funcs.lto_priv.0, %eax
	call	*16(%eax)
	jmp	L244
	.p2align 4,,10
	.p2align 3
L253:
	cmpb	$0, 302(%eax)
	je	L244
L255:
	movl	12(%ebp), %edx
	movl	%ecx, %eax
	call	__ZL22_MIDI_SetChannelVolumeii
	jmp	L244
	.p2align 4,,10
	.p2align 3
L251:
	movl	__ZL13_MIDI_Context, %edx
	movswl	16(%eax), %ecx
	cmpl	%edx, %ecx
	je	L244
	testl	%edx, %edx
	js	L244
	leal	(%edx,%edx,4), %ecx
	leal	(%eax,%ecx,8), %ecx
	movl	20(%ecx), %ebx
	testl	%ebx, %ebx
	je	L244
	movw	%dx, 16(%eax)
	movl	24(%ecx), %edx
	movl	%edx, 24(%eax)
	movzwl	28(%ecx), %edx
	movl	%ebx, 4(%eax)
	movw	%dx, 28(%eax)
	movzwl	30(%ecx), %edx
	movw	%dx, 14(%eax)
	testl	%esi, %esi
	jne	L244
	movl	32(%ecx), %eax
	movl	$1, %esi
	movl	%eax, __ZL10_MIDI_Time
	movl	36(%ecx), %eax
	movl	%eax, __ZL22_MIDI_FPSecondsPerTick
	movswl	40(%ecx), %eax
	movl	%eax, __ZL10_MIDI_Tick
	movswl	42(%ecx), %eax
	movl	%eax, __ZL10_MIDI_Beat
	movswl	44(%ecx), %eax
	movl	%eax, __ZL13_MIDI_Measure
	movswl	46(%ecx), %eax
	movl	%eax, __ZL21_MIDI_BeatsPerMeasure
	movswl	48(%ecx), %eax
	movl	%eax, __ZL18_MIDI_TicksPerBeat
	movswl	50(%ecx), %eax
	movl	%eax, __ZL14_MIDI_TimeBase
	jmp	L244
	.p2align 4,,10
	.p2align 3
L245:
	cmpb	$0, 302(%eax)
	jne	L244
	jmp	L255
	.p2align 4,,10
	.p2align 3
L291:
	movl	__ZL15_MIDI_NumTracks, %ebx
	testl	%ebx, %ebx
	jle	L244
	movl	__ZL14_MIDI_TrackPtr, %eax
	jmp	L258
L292:
	movl	__ZL15_MIDI_NumTracks, %ebx
	movl	__ZL14_MIDI_TrackPtr, %eax
	xorl	%edx, %edx
	movl	$0, __ZL18_MIDI_ActiveTracks
	movl	%ebx, 52(%esp)
	testl	%ebx, %ebx
	jg	L261
	jmp	L244
	.cfi_endproc
LFE42:
	.p2align 4
	.def	__Z13MIDI_SetTempoi;	.scl	3;	.type	32;	.endef
__Z13MIDI_SetTempoi:
LFB43:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	_ASS_MIDISoundDriver, %eax
	movl	__ZL14_MIDI_Division, %edx
	movl	%ebx, (%esp)
	leal	(%eax,%eax,8), %eax
	movl	%edx, 4(%esp)
	call	*__ZL12SoundDrivers.lto_priv.0+56(,%eax,8)
	imull	__ZL14_MIDI_Division, %ebx
	movl	$-2004318071, %eax
	movl	$65536, (%esp)
	imull	%ebx
	movl	%ebx, %ecx
	sarl	$31, %ecx
	addl	%ebx, %edx
	sarl	$5, %edx
	subl	%ecx, %edx
	movl	%edx, 4(%esp)
	call	_tabledivide32.lto_priv.1
	movl	%eax, __ZL22_MIDI_FPSecondsPerTick
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE43:
	.p2align 4
	.def	__ZL15_MIDI_MetaEventP5track;	.scl	3;	.type	32;	.endef
__ZL15_MIDI_MetaEventP5track:
LFB45:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, %ecx
	movl	%ebx, 12(%esp)
	movl	%edi, 20(%esp)
	movl	4(%eax), %edx
	.cfi_offset 3, -16
	.cfi_offset 7, -8
	movzbl	(%edx), %ebx
	leal	1(%edx), %eax
	movl	%eax, 4(%ecx)
	leal	2(%edx), %eax
	movzbl	1(%edx), %edi
	movl	%eax, 4(%ecx)
	cmpb	$81, %bl
	je	L296
	cmpb	$88, %bl
	je	L297
	cmpb	$47, %bl
	jne	L299
	xorl	%edx, %edx
	subl	$1, __ZL18_MIDI_ActiveTracks
	movw	%dx, 12(%ecx)
L299:
	movl	%edi, %ebx
	movzbl	%bl, %edx
	addl	%edx, %eax
	movl	%eax, 4(%ecx)
	movl	12(%esp), %ebx
	movl	20(%esp), %edi
	addl	$24, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L297:
	.cfi_restore_state
	movl	__ZL10_MIDI_Tick, %eax
	testl	%eax, %eax
	jle	L316
L302:
	addl	$1, __ZL13_MIDI_Measure
L303:
	movl	$0, __ZL10_MIDI_Tick
	movzbl	2(%edx), %eax
	movl	$1, __ZL10_MIDI_Beat
	movl	%eax, __ZL21_MIDI_BeatsPerMeasure
	movzbl	3(%edx), %eax
	movl	$1, %edx
	movl	$1, __ZL14_MIDI_TimeBase
	testl	%eax, %eax
	je	L304
	testb	$1, %al
	je	L305
	movl	$2, %edx
	subl	$1, %eax
	je	L314
	.p2align 3
	.p2align 4
	.p2align 3
L305:
	sall	$2, %edx
	subl	$2, %eax
	jne	L305
L314:
	movl	%edx, __ZL14_MIDI_TimeBase
L304:
	movl	__ZL14_MIDI_Division, %eax
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_tabledivide32.lto_priv.1
	movl	8(%esp), %ecx
	movl	%eax, __ZL18_MIDI_TicksPerBeat
	movl	4(%ecx), %eax
	jmp	L299
	.p2align 4,,10
	.p2align 3
L296:
	movl	%esi, 16(%esp)
	.cfi_offset 6, -12
	addl	$5, %edx
	xorl	%ebx, %ebx
L301:
	movzbl	(%eax), %esi
	sall	$8, %ebx
	addl	$1, %eax
	addl	%esi, %ebx
	cmpl	%edx, %eax
	jne	L301
	movl	%ebx, 4(%esp)
	movl	$60000000, (%esp)
	movl	%ecx, 8(%esp)
	call	_tabledivide32.lto_priv.1
	call	__Z13MIDI_SetTempoi
	movl	8(%esp), %ecx
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	4(%ecx), %eax
	jmp	L299
	.p2align 4,,10
	.p2align 3
L316:
	cmpl	$1, __ZL10_MIDI_Beat
	jg	L302
	jmp	L303
	.cfi_endproc
LFE45:
	.p2align 4
	.globl	__Z10MV_MixMonoIhsEjP9VoiceNodej
	.def	__Z10MV_MixMonoIhsEjP9VoiceNodej;	.scl	2;	.type	32;	.endef
__Z10MV_MixMonoIhsEjP9VoiceNodej:
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
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	movl	_MV_MixDestination, %ebx
	movl	52(%esp), %ebp
	movl	%ebx, 28(%esp)
	movl	16(%ebp), %eax
	movl	108(%ebp), %edi
	movl	48(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	104(%ebp), %eax
	movl	%edi, 24(%esp)
	movl	%eax, 4(%esp)
	movl	_MV_GlobalVolume, %eax
	imull	76(%ebp)
	movl	%edi, (%esp)
	movl	%ebx, %edi
	movl	%eax, %esi
	movl	_MV_VolumeSmoothFactor, %eax
	shrdl	$16, %edx, %esi
	movl	%eax, 16(%esp)
	movl	56(%esp), %eax
	movl	%esi, 20(%esp)
	movl	%eax, 8(%esp)
	.p2align 4
	.p2align 3
L318:
	movl	(%esp), %ebx
	movl	12(%esp), %esi
	movl	%ebx, %eax
	addl	4(%esp), %ebx
	shrl	$16, %eax
	movl	%ebx, (%esp)
	movzbl	(%esi,%eax), %eax
	addl	$-128, %eax
	movsbl	%al, %esi
	movl	20(%esp), %eax
	sall	$8, %esi
	imull	%ecx
	movl	%eax, %ecx
	shrdl	$16, %edx, %ecx
	movl	%ecx, %eax
	imull	%esi
	shrdl	$16, %edx, %eax
	movswl	(%edi), %edx
	leal	(%eax,%edx), %eax
	movl	$32767, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	$-32768, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	addl	$2, %edi
	movw	%ax, -2(%edi)
	movl	48(%ebp), %ebx
	movl	56(%ebp), %eax
	subl	%ebx, %eax
	imull	16(%esp)
	shrdl	$16, %edx, %eax
	subl	$1, 8(%esp)
	leal	(%ebx,%eax), %ecx
	movl	%ecx, 48(%ebp)
	jne	L318
	movl	28(%esp), %ebx
	movl	56(%esp), %edi
	movl	56(%esp), %eax
	movl	24(%esp), %edx
	leal	(%ebx,%edi,2), %ecx
	movl	4(%esp), %edi
	subl	$1, %eax
	movl	%ecx, _MV_MixDestination
	addl	$32, %esp
	.cfi_def_cfa_offset 20
	imull	%edi, %eax
	addl	%edi, %edx
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
	addl	%edx, %eax
	ret
	.cfi_endproc
LFE46:
	.p2align 4
	.globl	__Z12MV_MixStereoIhsEjP9VoiceNodej
	.def	__Z12MV_MixStereoIhsEjP9VoiceNodej;	.scl	2;	.type	32;	.endef
__Z12MV_MixStereoIhsEjP9VoiceNodej:
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
	subl	$36, %esp
	.cfi_def_cfa_offset 56
	movl	_MV_MixDestination, %ebx
	movl	56(%esp), %edi
	movl	%ebx, 32(%esp)
	movl	%ebx, %ebp
	movl	16(%edi), %eax
	movl	108(%edi), %esi
	movl	%eax, 20(%esp)
	movl	104(%edi), %eax
	movl	%esi, 28(%esp)
	movl	%eax, 8(%esp)
	movl	_MV_GlobalVolume, %eax
	imull	76(%edi)
	movl	%esi, (%esp)
	movl	%eax, %ecx
	movl	_MV_RightChannelOffset, %eax
	shrdl	$16, %edx, %ecx
	andl	$-2, %eax
	movl	%ecx, 4(%esp)
	movl	48(%edi), %ecx
	movl	%eax, 12(%esp)
	movl	_MV_VolumeSmoothFactor, %eax
	movl	%eax, 24(%esp)
	movl	60(%esp), %eax
	movl	%eax, 16(%esp)
	.p2align 4
	.p2align 3
L322:
	movl	(%esp), %ebx
	movl	20(%esp), %esi
	movl	%ebx, %eax
	addl	8(%esp), %ebx
	shrl	$16, %eax
	movl	%ebx, (%esp)
	movzbl	(%esi,%eax), %eax
	addl	$-128, %eax
	movsbl	%al, %esi
	movl	4(%esp), %eax
	sall	$8, %esi
	imull	%ecx
	movl	%eax, %ecx
	shrdl	$16, %edx, %ecx
	movl	%ecx, %eax
	imull	%esi
	movl	%eax, %ecx
	movswl	0(%ebp), %eax
	shrdl	$16, %edx, %ecx
	movl	$32767, %edx
	addl	%ecx, %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	$-32768, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movw	%ax, 0(%ebp)
	movl	4(%esp), %eax
	imull	52(%edi)
	shrdl	$16, %edx, %eax
	imull	%esi
	movl	12(%esp), %esi
	shrdl	$16, %edx, %eax
	movswl	0(%ebp,%esi), %edx
	leal	(%eax,%edx), %eax
	movl	$32767, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	$-32768, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	addl	$4, %ebp
	movw	%ax, -4(%ebp,%esi)
	movl	48(%edi), %ecx
	movl	56(%edi), %eax
	movl	24(%esp), %esi
	movl	52(%edi), %ebx
	subl	%ecx, %eax
	imull	%esi
	shrdl	$16, %edx, %eax
	addl	%eax, %ecx
	movl	60(%edi), %eax
	movl	%ecx, 48(%edi)
	subl	%ebx, %eax
	imull	%esi
	shrdl	$16, %edx, %eax
	addl	%eax, %ebx
	subl	$1, 16(%esp)
	movl	%ebx, 52(%edi)
	jne	L322
	movl	32(%esp), %ebx
	movl	60(%esp), %edi
	movl	60(%esp), %eax
	movl	28(%esp), %edx
	leal	(%ebx,%edi,4), %ecx
	movl	8(%esp), %edi
	subl	$1, %eax
	movl	%ecx, _MV_MixDestination
	addl	$36, %esp
	.cfi_def_cfa_offset 20
	imull	%edi, %eax
	addl	%edi, %edx
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
	addl	%edx, %eax
	ret
	.cfi_endproc
LFE47:
	.p2align 4
	.globl	__Z10MV_MixMonoIssEjP9VoiceNodej
	.def	__Z10MV_MixMonoIssEjP9VoiceNodej;	.scl	2;	.type	32;	.endef
__Z10MV_MixMonoIssEjP9VoiceNodej:
LFB48:
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
	movl	_MV_MixDestination, %ebx
	movl	52(%esp), %edi
	movl	%ebx, 28(%esp)
	movl	16(%edi), %eax
	movl	108(%edi), %ebp
	movl	48(%edi), %ecx
	movl	%eax, 12(%esp)
	movl	104(%edi), %eax
	movl	%ebp, 24(%esp)
	movl	%eax, 4(%esp)
	movl	_MV_GlobalVolume, %eax
	imull	76(%edi)
	movl	%eax, %esi
	movl	_MV_VolumeSmoothFactor, %eax
	shrdl	$16, %edx, %esi
	movl	%eax, 16(%esp)
	movl	56(%esp), %eax
	movl	%esi, 20(%esp)
	movl	%ebx, %esi
	movl	%eax, 8(%esp)
	.p2align 4
	.p2align 3
L326:
	movl	%ebp, %eax
	addl	4(%esp), %ebp
	shrl	$16, %eax
	movl	%eax, (%esp)
	movl	20(%esp), %eax
	imull	%ecx
	movl	%eax, %ecx
	movl	(%esp), %eax
	shrdl	$16, %edx, %ecx
	movl	12(%esp), %edx
	movswl	(%edx,%eax,2), %eax
	imull	%ecx
	shrdl	$16, %edx, %eax
	movswl	(%esi), %edx
	leal	(%eax,%edx), %eax
	movl	$32767, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	$-32768, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	addl	$2, %esi
	movw	%ax, -2(%esi)
	movl	48(%edi), %ecx
	movl	56(%edi), %eax
	subl	%ecx, %eax
	imull	16(%esp)
	shrdl	$16, %edx, %eax
	addl	%eax, %ecx
	subl	$1, 8(%esp)
	movl	%ecx, 48(%edi)
	jne	L326
	movl	56(%esp), %eax
	movl	4(%esp), %esi
	movl	28(%esp), %ebx
	movl	56(%esp), %edi
	subl	$1, %eax
	movl	24(%esp), %ebp
	imull	%esi, %eax
	leal	(%ebx,%edi,2), %edx
	addl	%esi, %ebp
	movl	%edx, _MV_MixDestination
	addl	$32, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	addl	%ebp, %eax
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE48:
	.p2align 4
	.globl	__Z12MV_MixStereoIssEjP9VoiceNodej
	.def	__Z12MV_MixStereoIssEjP9VoiceNodej;	.scl	2;	.type	32;	.endef
__Z12MV_MixStereoIssEjP9VoiceNodej:
LFB49:
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
	movl	_MV_MixDestination, %ebx
	movl	60(%esp), %esi
	movl	%ebx, 36(%esp)
	movl	16(%esi), %eax
	movl	108(%esi), %ebp
	movl	48(%esi), %ecx
	movl	%eax, 28(%esp)
	movl	104(%esi), %eax
	movl	%ebp, 32(%esp)
	movl	%eax, 16(%esp)
	movl	_MV_GlobalVolume, %eax
	imull	76(%esi)
	movl	%eax, %edi
	movl	_MV_RightChannelOffset, %eax
	shrdl	$16, %edx, %edi
	andl	$-2, %eax
	movl	%edi, 8(%esp)
	movl	%ebx, %edi
	movl	%eax, 20(%esp)
	movl	_MV_VolumeSmoothFactor, %eax
	movl	%eax, 12(%esp)
	movl	64(%esp), %eax
	movl	%eax, 24(%esp)
	.p2align 4
	.p2align 3
L330:
	movl	%ebp, %eax
	addl	16(%esp), %ebp
	movl	20(%esp), %ebx
	shrl	$16, %eax
	movl	%eax, (%esp)
	movl	8(%esp), %eax
	imull	%ecx
	movl	%eax, %ecx
	movl	28(%esp), %eax
	shrdl	$16, %edx, %ecx
	movl	(%esp), %edx
	movswl	(%eax,%edx,2), %edx
	movl	%ecx, %eax
	movl	%edx, (%esp)
	imull	%edx
	shrdl	$16, %edx, %eax
	movswl	(%edi), %edx
	leal	(%eax,%edx), %eax
	movl	$32767, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	$-32768, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movw	%ax, (%edi)
	movl	8(%esp), %eax
	imull	52(%esi)
	shrdl	$16, %edx, %eax
	imull	(%esp)
	shrdl	$16, %edx, %eax
	sarl	$16, %edx
	movl	%eax, (%esp)
	movl	(%esp), %eax
	movl	%edx, 4(%esp)
	movswl	(%edi,%ebx), %edx
	addl	%edx, %eax
	movl	$32767, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	$-32768, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	addl	$4, %edi
	movw	%ax, -4(%edi,%ebx)
	movl	48(%esi), %ecx
	movl	56(%esi), %eax
	movl	52(%esi), %ebx
	subl	%ecx, %eax
	imull	12(%esp)
	shrdl	$16, %edx, %eax
	addl	%eax, %ecx
	movl	60(%esi), %eax
	movl	%ecx, 48(%esi)
	subl	%ebx, %eax
	imull	12(%esp)
	shrdl	$16, %edx, %eax
	addl	%eax, %ebx
	subl	$1, 24(%esp)
	movl	%ebx, 52(%esi)
	jne	L330
	movl	36(%esp), %ebx
	movl	64(%esp), %edi
	movl	64(%esp), %eax
	movl	32(%esp), %edx
	leal	(%ebx,%edi,4), %ecx
	movl	16(%esp), %edi
	subl	$1, %eax
	movl	%ecx, _MV_MixDestination
	addl	$40, %esp
	.cfi_def_cfa_offset 20
	imull	%edi, %eax
	addl	%edi, %edx
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
	addl	%edx, %eax
	ret
	.cfi_endproc
LFE49:
	.p2align 4
	.globl	__Z16MV_MixMonoStereoIhsEjP9VoiceNodej
	.def	__Z16MV_MixMonoStereoIhsEjP9VoiceNodej;	.scl	2;	.type	32;	.endef
__Z16MV_MixMonoStereoIhsEjP9VoiceNodej:
LFB50:
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
	movl	_MV_MixDestination, %ebx
	movl	56(%esp), %ebp
	movl	%ebx, 32(%esp)
	movl	16(%ebp), %eax
	movl	108(%ebp), %edi
	movl	48(%ebp), %ecx
	movl	%eax, 16(%esp)
	movl	104(%ebp), %eax
	movl	%edi, 28(%esp)
	movl	%eax, 8(%esp)
	movl	_MV_GlobalVolume, %eax
	imull	76(%ebp)
	movl	%edi, (%esp)
	movl	%ebx, %edi
	movl	%eax, %esi
	movl	_MV_VolumeSmoothFactor, %eax
	shrdl	$16, %edx, %esi
	movl	%eax, 20(%esp)
	movl	60(%esp), %eax
	movl	%esi, 24(%esp)
	movl	%eax, 12(%esp)
	.p2align 4
	.p2align 3
L334:
	movl	(%esp), %eax
	movl	16(%esp), %ebx
	movl	%eax, %edx
	addl	8(%esp), %eax
	shrl	$16, %edx
	movl	%eax, (%esp)
	movzbl	1(%ebx,%edx,2), %eax
	movzbl	(%ebx,%edx,2), %edx
	movb	%al, 7(%esp)
	addl	$-128, %edx
	addl	$-128, %eax
	movsbl	%al, %eax
	movsbl	%dl, %edx
	leal	(%edx,%eax), %esi
	movl	24(%esp), %eax
	sall	$7, %esi
	imull	%ecx
	movl	%eax, %ecx
	shrdl	$16, %edx, %ecx
	movl	%ecx, %eax
	imull	%esi
	shrdl	$16, %edx, %eax
	movswl	(%edi), %edx
	leal	(%eax,%edx), %eax
	movl	$32767, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	$-32768, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	addl	$2, %edi
	movw	%ax, -2(%edi)
	movl	48(%ebp), %ecx
	movl	56(%ebp), %eax
	subl	%ecx, %eax
	imull	20(%esp)
	shrdl	$16, %edx, %eax
	addl	%eax, %ecx
	subl	$1, 12(%esp)
	movl	%ecx, 48(%ebp)
	jne	L334
	movl	32(%esp), %ebx
	movl	60(%esp), %edi
	movl	60(%esp), %eax
	movl	28(%esp), %edx
	leal	(%ebx,%edi,2), %ecx
	movl	8(%esp), %edi
	subl	$1, %eax
	movl	%ecx, _MV_MixDestination
	addl	$36, %esp
	.cfi_def_cfa_offset 20
	imull	%edi, %eax
	addl	%edi, %edx
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
	addl	%edx, %eax
	ret
	.cfi_endproc
LFE50:
	.p2align 4
	.globl	__Z18MV_MixStereoStereoIhsEjP9VoiceNodej
	.def	__Z18MV_MixStereoStereoIhsEjP9VoiceNodej;	.scl	2;	.type	32;	.endef
__Z18MV_MixStereoStereoIhsEjP9VoiceNodej:
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
	subl	$40, %esp
	.cfi_def_cfa_offset 60
	movl	_MV_MixDestination, %edi
	movl	60(%esp), %ebp
	movl	%edi, (%esp)
	movl	16(%ebp), %eax
	movl	108(%ebp), %ecx
	movl	%edi, 36(%esp)
	movl	%eax, 24(%esp)
	movl	104(%ebp), %eax
	movl	%ecx, 32(%esp)
	movl	%eax, 12(%esp)
	movl	_MV_GlobalVolume, %eax
	imull	76(%ebp)
	movl	%ecx, 4(%esp)
	movl	%eax, %esi
	movl	_MV_RightChannelOffset, %eax
	shrdl	$16, %edx, %esi
	andl	$-2, %eax
	movl	%esi, 8(%esp)
	movl	48(%ebp), %esi
	movl	%eax, 16(%esp)
	movl	_MV_VolumeSmoothFactor, %eax
	movl	%eax, 28(%esp)
	movl	64(%esp), %eax
	movl	%eax, 20(%esp)
	.p2align 4
	.p2align 3
L338:
	movl	4(%esp), %ebx
	movl	24(%esp), %edi
	movl	%ebx, %edx
	addl	12(%esp), %ebx
	shrl	$16, %edx
	movl	%ebx, 4(%esp)
	movzbl	1(%edi,%edx,2), %eax
	movzbl	(%edi,%edx,2), %ebx
	movl	(%esp), %edi
	leal	-128(%eax), %ecx
	movl	8(%esp), %eax
	addl	$-128, %ebx
	movsbl	%bl, %ebx
	movsbl	%cl, %ecx
	imull	%esi
	sall	$8, %ebx
	sall	$8, %ecx
	movl	%eax, %esi
	shrdl	$16, %edx, %esi
	movl	%esi, %eax
	movl	16(%esp), %esi
	imull	%ebx
	movl	28(%esp), %ebx
	shrdl	$16, %edx, %eax
	movswl	(%edi), %edx
	leal	(%eax,%edx), %eax
	movl	$32767, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	$-32768, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movw	%ax, (%edi)
	movl	8(%esp), %eax
	imull	52(%ebp)
	movl	(%esp), %edi
	shrdl	$16, %edx, %eax
	imull	%ecx
	movl	%eax, %ecx
	movswl	(%edi,%esi), %eax
	shrdl	$16, %edx, %ecx
	movl	$32767, %edx
	addl	%ecx, %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	$-32768, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	addl	$4, %edi
	movw	%ax, -4(%edi,%esi)
	movl	48(%ebp), %esi
	movl	56(%ebp), %eax
	movl	52(%ebp), %ecx
	movl	%edi, (%esp)
	subl	%esi, %eax
	imull	%ebx
	shrdl	$16, %edx, %eax
	addl	%eax, %esi
	movl	60(%ebp), %eax
	movl	%esi, 48(%ebp)
	subl	%ecx, %eax
	imull	%ebx
	shrdl	$16, %edx, %eax
	addl	%eax, %ecx
	subl	$1, 20(%esp)
	movl	%ecx, 52(%ebp)
	jne	L338
	movl	64(%esp), %eax
	movl	12(%esp), %esi
	movl	36(%esp), %edi
	movl	64(%esp), %ecx
	subl	$1, %eax
	movl	32(%esp), %edx
	imull	%esi, %eax
	leal	(%edi,%ecx,4), %ecx
	addl	%esi, %edx
	movl	%ecx, _MV_MixDestination
	addl	$40, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	addl	%edx, %eax
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE51:
	.p2align 4
	.globl	__Z16MV_MixMonoStereoIssEjP9VoiceNodej
	.def	__Z16MV_MixMonoStereoIssEjP9VoiceNodej;	.scl	2;	.type	32;	.endef
__Z16MV_MixMonoStereoIssEjP9VoiceNodej:
LFB52:
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
	movl	_MV_MixDestination, %ebx
	movl	52(%esp), %ebp
	movl	%ebx, 28(%esp)
	movl	16(%ebp), %eax
	movl	108(%ebp), %esi
	movl	%eax, 12(%esp)
	movl	104(%ebp), %eax
	movl	%esi, 24(%esp)
	movl	%eax, 4(%esp)
	movl	_MV_GlobalVolume, %eax
	imull	76(%ebp)
	movl	%esi, (%esp)
	movl	%eax, %ecx
	movl	_MV_VolumeSmoothFactor, %eax
	shrdl	$16, %edx, %ecx
	movl	%eax, 16(%esp)
	movl	56(%esp), %eax
	movl	%ecx, 20(%esp)
	movl	48(%ebp), %ecx
	movl	%eax, 8(%esp)
	movl	%ecx, %esi
	movl	%ebp, %ecx
	movl	%ebx, %ebp
	.p2align 4
	.p2align 3
L342:
	movl	(%esp), %edi
	movl	%edi, %eax
	addl	4(%esp), %edi
	movl	%edi, (%esp)
	movl	12(%esp), %edi
	shrl	$16, %eax
	movswl	2(%edi,%eax,4), %ebx
	movswl	(%edi,%eax,4), %eax
	addl	%eax, %ebx
	movl	20(%esp), %eax
	sarl	%ebx
	imull	%esi
	movl	%eax, %esi
	shrdl	$16, %edx, %esi
	movl	%esi, %eax
	imull	%ebx
	shrdl	$16, %edx, %eax
	movswl	0(%ebp), %edx
	leal	(%eax,%edx), %eax
	movl	$32767, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	$-32768, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	addl	$2, %ebp
	movw	%ax, -2(%ebp)
	movl	48(%ecx), %esi
	movl	56(%ecx), %eax
	subl	%esi, %eax
	imull	16(%esp)
	shrdl	$16, %edx, %eax
	addl	%eax, %esi
	subl	$1, 8(%esp)
	movl	%esi, 48(%ecx)
	jne	L342
	movl	28(%esp), %ebx
	movl	56(%esp), %ecx
	movl	56(%esp), %eax
	movl	24(%esp), %edx
	leal	(%ebx,%ecx,2), %ecx
	movl	4(%esp), %ebx
	subl	$1, %eax
	movl	%ecx, _MV_MixDestination
	addl	$32, %esp
	.cfi_def_cfa_offset 20
	imull	%ebx, %eax
	addl	%ebx, %edx
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
	addl	%edx, %eax
	ret
	.cfi_endproc
LFE52:
	.p2align 4
	.globl	__Z18MV_MixStereoStereoIssEjP9VoiceNodej
	.def	__Z18MV_MixStereoStereoIssEjP9VoiceNodej;	.scl	2;	.type	32;	.endef
__Z18MV_MixStereoStereoIssEjP9VoiceNodej:
LFB53:
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
	movl	_MV_MixDestination, %ebp
	movl	64(%esp), %edi
	movl	%ebp, 36(%esp)
	movl	16(%edi), %eax
	movl	108(%edi), %ebx
	movl	48(%edi), %ecx
	movl	%eax, 4(%esp)
	movl	104(%edi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 20(%esp)
	movl	_MV_GlobalVolume, %eax
	imull	76(%edi)
	movl	%ebx, 40(%esp)
	movl	%eax, %esi
	movl	_MV_RightChannelOffset, %eax
	shrdl	$16, %edx, %esi
	andl	$-2, %eax
	movl	%esi, 8(%esp)
	movl	%ebp, %esi
	movl	%eax, 24(%esp)
	movl	_MV_VolumeSmoothFactor, %eax
	movl	%eax, 32(%esp)
	movl	68(%esp), %eax
	movl	%eax, 28(%esp)
	.p2align 4
	.p2align 3
L346:
	movl	(%esp), %eax
	movl	4(%esp), %ebx
	movl	%eax, %ebp
	addl	20(%esp), %eax
	movl	%eax, (%esp)
	movl	8(%esp), %eax
	shrl	$16, %ebp
	movzwl	2(%ebx,%ebp,4), %ebx
	imull	%ecx
	movw	%bx, 12(%esp)
	movl	24(%esp), %ebx
	movl	%eax, %ecx
	shrdl	$16, %edx, %ecx
	movl	4(%esp), %edx
	movswl	(%edx,%ebp,4), %eax
	movl	32(%esp), %ebp
	imull	%ecx
	shrdl	$16, %edx, %eax
	movswl	(%esi), %edx
	leal	(%eax,%edx), %eax
	movl	$32767, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	$-32768, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movw	%ax, (%esi)
	movl	8(%esp), %eax
	imull	52(%edi)
	shrdl	$16, %edx, %eax
	movl	%eax, %ecx
	movswl	12(%esp), %eax
	imull	%ecx
	shrdl	$16, %edx, %eax
	sarl	$16, %edx
	movl	%eax, 12(%esp)
	movl	12(%esp), %eax
	movl	%edx, 16(%esp)
	movswl	(%esi,%ebx), %edx
	addl	%edx, %eax
	movl	$32767, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	$-32768, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	addl	$4, %esi
	movw	%ax, -4(%esi,%ebx)
	movl	48(%edi), %ecx
	movl	56(%edi), %eax
	movl	52(%edi), %ebx
	subl	%ecx, %eax
	imull	%ebp
	shrdl	$16, %edx, %eax
	addl	%eax, %ecx
	movl	60(%edi), %eax
	movl	%ecx, 48(%edi)
	subl	%ebx, %eax
	imull	%ebp
	shrdl	$16, %edx, %eax
	addl	%eax, %ebx
	subl	$1, 28(%esp)
	movl	%ebx, 52(%edi)
	jne	L346
	movl	68(%esp), %eax
	movl	20(%esp), %edi
	movl	36(%esp), %ebp
	movl	68(%esp), %esi
	subl	$1, %eax
	movl	40(%esp), %ebx
	imull	%edi, %eax
	leal	0(%ebp,%esi,4), %edx
	movl	%edx, _MV_MixDestination
	leal	(%ebx,%edi), %esi
	addl	$44, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	addl	%esi, %eax
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
LFE53:
	.p2align 4
	.globl	__ZL15AL_SetPitchBendiii.lto_priv.0
	.def	__ZL15AL_SetPitchBendiii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL15AL_SetPitchBendiii.lto_priv.0:
LFB54:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %ecx
	cmpl	$15, %ecx
	jg	L349
	imull	$52, %ecx, %ecx
	movl	%esi, 4(%esp)
	.cfi_offset 6, -12
	movl	24(%esp), %esi
	movl	$1374389535, %eax
	movl	%ebx, (%esp)
	movl	%edi, 8(%esp)
	.cfi_offset 3, -16
	.cfi_offset 7, -8
	sall	$8, %esi
	addl	20(%esp), %esi
	movswl	__ZL7Channel.lto_priv.0+44(%ecx), %edi
	movl	%esi, __ZL7Channel.lto_priv.0+12(%ecx)
	movl	__ZL7Channel.lto_priv.0(%ecx), %ebx
	imull	%esi, %edi
	movswl	__ZL7Channel.lto_priv.0+46(%ecx), %esi
	imull	%edi
	sarl	$31, %edi
	sarl	$14, %edx
	subl	%edi, %edx
	leal	31(%edx), %eax
	cmovns	%edx, %eax
	sarl	$5, %eax
	subl	%esi, %eax
	movl	%eax, __ZL7Channel.lto_priv.0+16(%ecx)
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$27, %eax
	addl	%eax, %edx
	andl	$31, %edx
	subl	%eax, %edx
	movl	%edx, __ZL7Channel.lto_priv.0+20(%ecx)
	testl	%ebx, %ebx
	je	L357
	.p2align 4
	.p2align 3
L351:
	movl	8(%ebx), %eax
	call	__ZL16AL_SetVoicePitchi.lto_priv.0
	movl	(%ebx), %ebx
	testl	%ebx, %ebx
	jne	L351
L357:
	movl	(%esp), %ebx
	.cfi_restore 3
	movl	4(%esp), %esi
	.cfi_restore 6
	movl	8(%esp), %edi
	.cfi_restore 7
L349:
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE54:
	.p2align 4
	.globl	__ZL9AL_NoteOniii.lto_priv.0
	.def	__ZL9AL_NoteOniii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL9AL_NoteOniii.lto_priv.0:
LFB56:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	movl	32(%esp), %esi
	movl	%edi, 20(%esp)
	.cfi_offset 7, -12
	movl	40(%esp), %edi
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	movl	36(%esp), %ebp
	cmpl	$15, %esi
	jg	L358
	testl	%edi, %edi
	je	L383
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -20
	call	__ZL13AL_AllocVoicev.lto_priv.0
	movl	%eax, %ebx
	cmpl	$-1, %eax
	je	L384
L361:
	imull	$44, %ebx, %edx
	imull	$52, %esi, %ecx
	leal	__ZL5Voice.lto_priv.0(%edx), %eax
	movl	%ebp, 12(%eax)
	movl	%esi, 20(%eax)
	movl	%edi, 16(%eax)
	movl	$8192, 40(%eax)
	movl	$0, __ZL5Voice.lto_priv.0(%edx)
	movl	__ZL7Channel.lto_priv.0+4(%ecx), %edx
	movl	%edx, 4(%eax)
	testl	%edx, %edx
	je	L362
	movl	%eax, (%edx)
L363:
	imull	$52, %esi, %esi
	imull	$44, %ebx, %edx
	movl	%eax, __ZL7Channel.lto_priv.0+4(%esi)
	movl	__ZL5Voice.lto_priv.0+20(%edx), %eax
	cmpl	$9, %eax
	je	L385
	imull	$52, %eax, %eax
	movl	__ZL7Channel.lto_priv.0+8(%eax), %eax
L365:
	imull	$44, %ebx, %edx
	cmpl	%eax, __ZL5Voice.lto_priv.0+32(%edx)
	je	L366
	cmpl	$8, %ebx
	leal	-9(%ebx), %ebp
	movl	__ZL5Voice.lto_priv.0+36(%edx), %esi
	leal	(%eax,%eax,2), %ecx
	cmovle	%ebx, %ebp
	movl	%eax, __ZL5Voice.lto_priv.0+32(%edx)
	movl	%esi, 4(%esp)
	movl	__ZL9slotVoice.lto_priv.0(,%ebp,8), %edx
	movsbl	__ZL10offsetSlot.lto_priv.0(%edx), %edi
	movl	%edi, (%esp)
	leal	(%eax,%ecx,4), %edi
	leal	(%esi,%edx,2), %ecx
	movzbl	_ADLIB_TimbreBank+2(%edi), %eax
	movl	%eax, %edx
	andl	$192, %eax
	notl	%edx
	movl	%eax, __ZL8VoiceKsl.lto_priv.0(,%ecx,4)
	xorl	%eax, %eax
	andl	$63, %edx
	testl	%esi, %esi
	sete	%al
	movl	%edx, __ZL10VoiceLevel.lto_priv.0(,%ecx,4)
	xorl	%edx, %edx
	sall	$8, %eax
	movl	%eax, %esi
	leal	160(%esi,%ebp), %eax
	movzwl	%ax, %eax
	call	_OPL3_WriteRegBuffered.constprop.0
	leal	176(%esi,%ebp), %eax
	xorl	%edx, %edx
	movzwl	%ax, %eax
	call	_OPL3_WriteRegBuffered.constprop.0
	movzwl	(%esp), %eax
	movl	$255, %edx
	leal	128(%esi,%eax), %ecx
	movzwl	%cx, %ecx
	movl	%ecx, %eax
	movl	%ecx, 8(%esp)
	call	_OPL3_WriteRegBuffered.constprop.0
	movzwl	(%esp), %eax
	movzbl	_ADLIB_TimbreBank+4(%edi), %edx
	leal	96(%esi,%eax), %eax
	movzwl	%ax, %eax
	call	_OPL3_WriteRegBuffered.constprop.0
	movzbl	_ADLIB_TimbreBank+6(%edi), %edx
	movl	8(%esp), %eax
	call	_OPL3_WriteRegBuffered.constprop.0
	movzwl	(%esp), %eax
	movzbl	_ADLIB_TimbreBank(%edi), %edx
	leal	32(%esi,%eax), %eax
	movzwl	%ax, %eax
	call	_OPL3_WriteRegBuffered.constprop.0
	movzwl	(%esp), %eax
	movzbl	_ADLIB_TimbreBank+8(%edi), %edx
	leal	224(%esi,%eax), %eax
	movzwl	%ax, %eax
	call	_OPL3_WriteRegBuffered.constprop.0
	movzwl	(%esp), %eax
	movzbl	_ADLIB_TimbreBank+2(%edi), %edx
	leal	64(%esi,%eax), %eax
	movzwl	%ax, %eax
	call	_OPL3_WriteRegBuffered.constprop.0
	movzbl	_ADLIB_TimbreBank+10(%edi), %edx
	movl	__ZL9slotVoice.lto_priv.0+4(,%ebp,8), %ecx
	leal	192(%esi,%ebp), %ebp
	movzwl	%bp, %eax
	andl	$15, %edx
	movl	%ecx, (%esp)
	orl	$48, %edx
	call	_OPL3_WriteRegBuffered.constprop.0
	movl	(%esp), %ecx
	movzbl	_ADLIB_TimbreBank+3(%edi), %eax
	movl	4(%esp), %edx
	movsbl	__ZL10offsetSlot.lto_priv.0(%ecx), %ebp
	leal	(%edx,%ecx,2), %edx
	movl	%eax, %ecx
	andl	$192, %eax
	notl	%ecx
	movl	%eax, __ZL8VoiceKsl.lto_priv.0(,%edx,4)
	leal	64(%esi,%ebp), %eax
	andl	$63, %ecx
	movzwl	%ax, %eax
	movl	%ecx, __ZL10VoiceLevel.lto_priv.0(,%edx,4)
	movl	$63, %edx
	call	_OPL3_WriteRegBuffered.constprop.0
	leal	128(%esi,%ebp), %ecx
	movl	$255, %edx
	movzwl	%cx, %ecx
	movl	%ecx, %eax
	movl	%ecx, (%esp)
	call	_OPL3_WriteRegBuffered.constprop.0
	movzbl	_ADLIB_TimbreBank+5(%edi), %edx
	leal	96(%esi,%ebp), %eax
	movzwl	%ax, %eax
	call	_OPL3_WriteRegBuffered.constprop.0
	movzbl	_ADLIB_TimbreBank+7(%edi), %edx
	movl	(%esp), %eax
	call	_OPL3_WriteRegBuffered.constprop.0
	movzbl	_ADLIB_TimbreBank+1(%edi), %edx
	leal	32(%esi,%ebp), %eax
	movzwl	%ax, %eax
	call	_OPL3_WriteRegBuffered.constprop.0
	leal	224(%esi,%ebp), %eax
	movzbl	_ADLIB_TimbreBank+9(%edi), %edx
	movzwl	%ax, %eax
	call	_OPL3_WriteRegBuffered.constprop.0
L366:
	movl	%ebx, %eax
	call	__ZL17AL_SetVoiceVolumei.lto_priv.0
	movl	%ebx, %eax
	call	__ZL16AL_SetVoicePitchi.lto_priv.0
	movl	_AL_Stereo, %ecx
	leal	-9(%ebx), %eax
	cmpl	$8, %ebx
	cmovle	%ebx, %eax
	testl	%ecx, %ecx
	je	L382
	imull	$44, %ebx, %ebx
	imull	$52, __ZL5Voice.lto_priv.0+20(%ebx), %edx
	movl	__ZL7Channel.lto_priv.0+32(%edx), %edx
	leal	(%edx,%edx), %ecx
	movl	__ZL5Voice.lto_priv.0+36(%ebx), %edx
	movb	%cl, (%esp)
	xorl	%ecx, %ecx
	testl	%edx, %edx
	movl	__ZL7AL_Chip.lto_priv.0+3108, %edx
	sete	%cl
	sall	$8, %ecx
	leal	1(%edx), %esi
	leal	208(%ecx,%eax), %ebx
	leal	195(%edx), %ecx
	andl	$1023, %esi
	movl	%ecx, %edi
	sall	$4, %edi
	movzwl	__ZL7AL_Chip.lto_priv.0+8(%edi), %eax
	testb	$2, %ah
	jne	L369
	movl	__ZL7AL_Chip.lto_priv.0+3096, %ebp
	movl	__ZL7AL_Chip.lto_priv.0+3100, %edi
L370:
	movl	__ZL7AL_Chip.lto_priv.0+3112, %edx
	movl	%ecx, %eax
	orb	$2, %bh
	movl	__ZL7AL_Chip.lto_priv.0+3116, %ecx
	sall	$4, %eax
	movl	%esi, __ZL7AL_Chip.lto_priv.0+3108
	addl	$2, %edx
	movw	%bx, __ZL7AL_Chip.lto_priv.0+8(%eax)
	movzbl	(%esp), %ebx
	adcl	$0, %ecx
	cmpl	%ebp, %edx
	movb	%bl, __ZL7AL_Chip.lto_priv.0+10(%eax)
	movl	%ecx, %ebx
	sbbl	%edi, %ebx
	movl	%ebp, %ebx
	cmovnc	%ecx, %edi
	cmovnc	%edx, %ebx
	movl	%edi, __ZL7AL_Chip.lto_priv.0+3116
	movl	%ebx, __ZL7AL_Chip.lto_priv.0(%eax)
	movl	%edi, __ZL7AL_Chip.lto_priv.0+4(%eax)
	movl	%ebx, __ZL7AL_Chip.lto_priv.0+3112
	movl	12(%esp), %ebx
	.cfi_restore 3
L358:
	movl	16(%esp), %esi
	movl	20(%esp), %edi
	movl	24(%esp), %ebp
	addl	$28, %esp
	.cfi_remember_state
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L383:
	.cfi_restore_state
	movl	20(%esp), %edi
	movl	%ebp, %edx
	movl	%esi, %eax
	movl	24(%esp), %ebp
	movl	16(%esp), %esi
	addl	$28, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	__ZL10AL_NoteOffiii.part.0
	.p2align 4,,10
	.p2align 3
L384:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	__ZL7Channel.lto_priv.0+468, %eax
	testl	%eax, %eax
	je	L382
	movl	12(%eax), %edx
	movl	$9, %eax
	call	__ZL10AL_NoteOffiii.part.0
	call	__ZL13AL_AllocVoicev.lto_priv.0
	movl	%eax, %ebx
	cmpl	$-1, %eax
	jne	L361
L382:
	movl	12(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	16(%esp), %esi
	movl	20(%esp), %edi
	movl	24(%esp), %ebp
	addl	$28, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L369:
	.cfi_restore_state
	movzbl	__ZL7AL_Chip.lto_priv.0+10(%edi), %edx
	andl	$511, %eax
	movl	%ecx, 4(%esp)
	call	_OPL3_WriteReg.constprop.0
	movl	__ZL7AL_Chip.lto_priv.0(%edi), %ebp
	movl	__ZL7AL_Chip.lto_priv.0+4(%edi), %edi
	movl	%esi, __ZL7AL_Chip.lto_priv.0+3104
	movl	4(%esp), %ecx
	movl	%ebp, __ZL7AL_Chip.lto_priv.0+3096
	movl	%edi, __ZL7AL_Chip.lto_priv.0+3100
	jmp	L370
	.p2align 4,,10
	.p2align 3
L385:
	movl	__ZL5Voice.lto_priv.0+12(%edx), %eax
	subl	$-128, %eax
	jmp	L365
	.p2align 4,,10
	.p2align 3
L362:
	movl	%eax, __ZL7Channel.lto_priv.0(%ecx)
	jmp	L363
	.cfi_endproc
LFE56:
	.p2align 4
	.globl	__ZL16AL_ControlChangeiii.lto_priv.0
	.def	__ZL16AL_ControlChangeiii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL16AL_ControlChangeiii.lto_priv.0:
LFB60:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	20(%esp), %eax
	movl	24(%esp), %edx
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -12
	movl	16(%esp), %ebx
	cmpl	$15, %ebx
	jg	L386
	cmpl	$123, %eax
	jg	L386
	cmpl	$93, %eax
	jle	L416
	subl	$94, %eax
	cmpl	$29, %eax
	ja	L386
	jmp	*L394(,%eax,4)
	.section .rdata,"dr"
	.align 4
L394:
	.long	L398
	.long	L386
	.long	L386
	.long	L386
	.long	L386
	.long	L386
	.long	L397
	.long	L396
	.long	L386
	.long	L386
	.long	L386
	.long	L386
	.long	L386
	.long	L386
	.long	L386
	.long	L386
	.long	L386
	.long	L386
	.long	L386
	.long	L386
	.long	L386
	.long	L386
	.long	L386
	.long	L386
	.long	L386
	.long	L386
	.long	L386
	.long	L395
	.long	L386
	.long	L393
	.text
	.p2align 4,,10
	.p2align 3
L393:
	imull	$52, %ebx, %eax
	movl	%esi, 8(%esp)
	.cfi_offset 6, -8
	movl	%eax, %esi
	movl	__ZL7Channel.lto_priv.0(%eax), %eax
	testl	%eax, %eax
	je	L415
	.p2align 4
	.p2align 3
L400:
	movl	12(%eax), %edx
	movl	%ebx, %eax
	call	__ZL10AL_NoteOffiii.part.0
	movl	__ZL7Channel.lto_priv.0(%esi), %eax
	testl	%eax, %eax
	jne	L400
L415:
	movl	8(%esp), %esi
	.cfi_restore 6
L386:
	movl	4(%esp), %ebx
	addl	$12, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L416:
	.cfi_restore_state
	cmpl	$10, %eax
	je	L389
	jg	L390
	cmpl	$6, %eax
	je	L391
	cmpl	$7, %eax
	jne	L386
	movl	$127, %eax
	imull	$52, %ebx, %ebx
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, __ZL7Channel.lto_priv.0+24(%ebx)
	movl	__ZL7Channel.lto_priv.0(%ebx), %ebx
	testl	%ebx, %ebx
	je	L386
	.p2align 4
	.p2align 3
L401:
	movl	8(%ebx), %eax
	call	__ZL17AL_SetVoiceVolumei.lto_priv.0
	movl	(%ebx), %ebx
	testl	%ebx, %ebx
	jne	L401
	jmp	L386
	.p2align 4,,10
	.p2align 3
L390:
	cmpl	$38, %eax
	jne	L386
	imull	$52, %ebx, %ebx
	movl	__ZL7Channel.lto_priv.0+40(%ebx), %eax
	testl	%eax, %eax
	jne	L386
	imulw	$100, __ZL7Channel.lto_priv.0+46(%ebx), %cx
	movw	%dx, __ZL7Channel.lto_priv.0+48(%ebx)
	addl	%edx, %ecx
	movw	%cx, __ZL7Channel.lto_priv.0+44(%ebx)
	jmp	L386
	.p2align 4,,10
	.p2align 3
L395:
	call	__ZL14AL_ResetVoicesv
	imull	$52, %ebx, %eax
	movl	$90, __ZL7Channel.lto_priv.0+24(%eax)
	movl	__ZL7Channel.lto_priv.0(%eax), %edx
	testl	%edx, %edx
	je	L402
	.p2align 4
	.p2align 3
L403:
	movl	8(%edx), %eax
	movl	%edx, (%esp)
	call	__ZL17AL_SetVoiceVolumei.lto_priv.0
	movl	(%esp), %edx
	movl	(%edx), %edx
	testl	%edx, %edx
	jne	L403
L402:
	movl	%ebx, %eax
	imull	$52, %ebx, %ebx
	movl	$64, %edx
	call	__ZL16AL_SetChannelPanii.lto_priv.0
	movl	$0, __ZL7Channel.lto_priv.0+36(%ebx)
	jmp	L386
	.p2align 4,,10
	.p2align 3
L396:
	imull	$52, %ebx, %ebx
	movzbl	%dl, %edx
	movl	__ZL7Channel.lto_priv.0+40(%ebx), %eax
	andl	$65280, %eax
	orl	%edx, %eax
	movl	%eax, __ZL7Channel.lto_priv.0+40(%ebx)
	jmp	L386
	.p2align 4,,10
	.p2align 3
L397:
	imull	$52, %ebx, %ebx
	sall	$8, %edx
	movzwl	%dx, %edx
	movzbl	__ZL7Channel.lto_priv.0+40(%ebx), %eax
	orl	%edx, %eax
	movl	%eax, __ZL7Channel.lto_priv.0+40(%ebx)
	jmp	L386
	.p2align 4,,10
	.p2align 3
L398:
	imull	$52, %ebx, %ebx
	movl	%edx, __ZL7Channel.lto_priv.0+36(%ebx)
	jmp	L386
	.p2align 4,,10
	.p2align 3
L391:
	imull	$52, %ebx, %ebx
	movl	__ZL7Channel.lto_priv.0+40(%ebx), %ecx
	testl	%ecx, %ecx
	jne	L386
	movw	%dx, __ZL7Channel.lto_priv.0+46(%ebx)
	imull	$100, %edx, %edx
	addw	__ZL7Channel.lto_priv.0+48(%ebx), %dx
	movw	%dx, __ZL7Channel.lto_priv.0+44(%ebx)
	jmp	L386
	.p2align 4,,10
	.p2align 3
L389:
	movl	%ebx, %eax
	movl	4(%esp), %ebx
	addl	$12, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__ZL16AL_SetChannelPanii.lto_priv.0
	.cfi_endproc
LFE60:
	.p2align 4
	.def	__ZL8fillDataPvPhi;	.scl	3;	.type	32;	.endef
__ZL8fillDataPvPhi:
LFB63:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	__ZL9MixBuffer, %ecx
	movl	%edi, 20(%esp)
	movl	36(%esp), %edx
	.cfi_offset 7, -12
	movl	40(%esp), %edi
	testl	%ecx, %ecx
	je	L417
	movl	__ZL11MixCallBack, %eax
	testl	%eax, %eax
	je	L417
	testl	%edi, %edi
	jle	L417
	movl	%ebx, 12(%esp)
	movl	%esi, 16(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	__ZL13MixBufferUsed, %esi
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	movl	__ZL13MixBufferSize, %ebp
	.p2align 4
	.p2align 3
L423:
	cmpl	%ebp, %esi
	je	L428
	.p2align 4
	.p2align 3
L421:
	cmpl	%esi, %ebp
	jle	L423
	movl	%ebp, %ebx
	movl	__ZL16MixBufferCurrent, %eax
	movl	%edx, (%esp)
	subl	%esi, %ebx
	movl	%edx, 36(%esp)
	cmpl	%edi, %ebx
	cmovg	%edi, %ebx
	imull	%ebp, %eax
	movl	%ebx, 8(%esp)
	subl	%ebx, %edi
	addl	%esi, %eax
	addl	__ZL9MixBuffer, %eax
	addl	%ebx, %esi
	movl	%eax, 4(%esp)
	call	_memcpy
	movl	36(%esp), %edx
	movl	%esi, __ZL13MixBufferUsed
	addl	%ebx, %edx
	testl	%edi, %edi
	jg	L421
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %ebp
	.cfi_restore 5
L417:
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
	movl	%edx, 36(%esp)
	call	*__ZL11MixCallBack
	movl	__ZL16MixBufferCurrent, %eax
	movl	__ZL14MixBufferCount, %ecx
	movl	$0, __ZL13MixBufferUsed
	movl	36(%esp), %edx
	addl	$1, %eax
	cmpl	%ecx, %eax
	jl	L427
	subl	%ecx, %eax
L427:
	movl	%eax, __ZL16MixBufferCurrent
	movl	__ZL13MixBufferSize, %ebp
	xorl	%esi, %esi
	jmp	L421
	.cfi_endproc
LFE63:
	.section .rdata,"dr"
LC36:
	.ascii "MME MIDI buffers:\0"
	.align 4
LC37:
	.ascii "source/audiolib/src/driver_winmm.cpp\0"
LC38:
	.ascii "active\0"
LC39:
	.ascii "%6s: %d (max %d)\0"
LC40:
	.ascii "spare\0"
	.text
	.p2align 4
	.globl	__Z29WinMMDrv_MIDI_PrintBufferInfoPK13osdfuncparm_t
	.def	__Z29WinMMDrv_MIDI_PrintBufferInfoPK13osdfuncparm_t;	.scl	2;	.type	32;	.endef
__Z29WinMMDrv_MIDI_PrintBufferInfoPK13osdfuncparm_t:
LFB65:
	.cfi_startproc
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	jns	L435
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L435:
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	$LC36, 12(%esp)
	movl	$554, 8(%esp)
	movl	$LC37, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L430
	movl	__ZL20maxActiveMidiBuffers, %eax
	movl	$LC38, 16(%esp)
	movl	$LC39, 12(%esp)
	movl	%eax, 24(%esp)
	movl	__ZL20numActiveMidiBuffers, %eax
	movl	$555, 8(%esp)
	movl	%eax, 20(%esp)
	movl	$LC37, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L430
	movl	__ZL19maxSpareMidiBuffers, %eax
	movl	$LC40, 16(%esp)
	movl	$LC39, 12(%esp)
	movl	%eax, 24(%esp)
	movl	__ZL19numSpareMidiBuffers, %eax
	movl	$556, 8(%esp)
	movl	%eax, 20(%esp)
	movl	$LC37, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L430:
	xorl	%eax, %eax
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE65:
	.section .rdata,"dr"
LC41:
	.ascii "%s\0"
LC42:
	.ascii "source/audiolib/src/flac.cpp\0"
	.text
	.p2align 4
	.def	__Z17error_flac_streamPK19FLAC__StreamDecoder30FLAC__StreamDecoderErrorStatusPv;	.scl	3;	.type	32;	.endef
__Z17error_flac_streamPK19FLAC__StreamDecoder30FLAC__StreamDecoderErrorStatusPv:
LFB67:
	.cfi_startproc
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L442
	ret
	.p2align 4,,10
	.p2align 3
L442:
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	28(%esp), %eax
	movl	_FLAC__StreamDecoderErrorStatusString(,%eax,4), %eax
	movl	$LC41, 12(%esp)
	movl	$292, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC42, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE67:
	.section .rdata,"dr"
LC43:
	.ascii "Available audio drivers:\0"
	.align 4
LC44:
	.ascii "source/audiolib/src/driver_sdl.cpp\0"
	.text
	.p2align 4
	.def	__Z23SDLDrv_PCM_PrintDriversv;	.scl	3;	.type	32;	.endef
__Z23SDLDrv_PCM_PrintDriversv:
LFB69:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$20, %esp
	.cfi_def_cfa_offset 28
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	jns	L449
L444:
	xorl	%ebx, %ebx
	jmp	L445
	.p2align 4,,10
	.p2align 3
L447:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L446
	movl	%ebx, (%esp)
	call	_SDL_GetAudioDriver
	movl	$LC41, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$125, 8(%esp)
	movl	$LC44, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L446:
	addl	$1, %ebx
L445:
	call	_SDL_GetNumAudioDrivers
	cmpl	%ebx, %eax
	jg	L447
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L449:
	.cfi_restore_state
	movl	$LC43, 12(%esp)
	movl	$122, 8(%esp)
	movl	$LC44, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L444
	.cfi_endproc
LFE69:
	.p2align 4
	.def	_tsf_close;	.scl	3;	.type	32;	.endef
_tsf_close:
LFB70:
	.cfi_startproc
	testl	%eax, %eax
	je	L464
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%esi, 8(%esp)
	movl	48(%eax), %edx
	.cfi_offset 6, -12
	movl	%eax, %esi
	testl	%edx, %edx
	je	L452
	subl	$1, (%edx)
	jne	L453
L452:
	movl	%ebx, 4(%esp)
	movl	%edi, 12(%esp)
	.cfi_offset 3, -16
	.cfi_offset 7, -8
	movl	16(%esi), %edi
	movl	(%esi), %ebx
	sall	$5, %edi
	addl	%ebx, %edi
	cmpl	%edi, %ebx
	je	L454
	.p2align 4
	.p2align 3
L455:
	movl	24(%ebx), %eax
	movl	_g_sm_heap, %ecx
	addl	$32, %ebx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	cmpl	%ebx, %edi
	jne	L455
	movl	(%esi), %edi
L454:
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	movl	4(%esi), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	movl	48(%esi), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	4(%esp), %ebx
	.cfi_restore 3
	movl	12(%esp), %edi
	.cfi_restore 7
L453:
	movl	12(%esi), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	movl	8(%esi), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	%esi, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	8(%esp), %esi
	addl	$16, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L464:
	ret
	.cfi_endproc
LFE70:
	.section .rdata,"dr"
LC45:
	.ascii "SDL_AUDIODRIVER\0"
LC46:
	.ascii "Using SDL %s driver on %s\0"
	.text
	.p2align 4
	.globl	__Z15SDLDrv_PCM_InitPiS_Pv
	.def	__Z15SDLDrv_PCM_InitPiS_Pv;	.scl	2;	.type	32;	.endef
__Z15SDLDrv_PCM_InitPiS_Pv:
LFB71:
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
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	movl	__ZL11Initialised, %ebx
	testl	%ebx, %ebx
	jne	L505
	movl	_SDLAudioDriverNameEnv, %ecx
	testl	%ecx, %ecx
	je	L506
L470:
	cmpb	$0, _SDLAudioDriverName
	jne	L507
L472:
	movl	$16, (%esp)
	call	_SDL_WasInit
	testb	$16, %al
	je	L508
L473:
	movl	96(%esp), %eax
	movl	$512, %edx
	movl	$0, 59(%esp)
	movl	$0, 67(%esp)
	movl	(%eax), %eax
	movl	$0, 71(%esp)
	movl	$0, 63(%esp)
	movl	%eax, 52(%esp)
	movl	$-32752, %eax
	movw	%ax, 56(%esp)
	movl	100(%esp), %eax
	movb	$0, 75(%esp)
	movl	(%eax), %eax
	movl	$0, 16(%esp)
	movl	$0, 4(%esp)
	movb	%al, 58(%esp)
	leal	28(%esp), %eax
	movl	%eax, 12(%esp)
	leal	52(%esp), %eax
	movl	%eax, 8(%esp)
	movl	$0, (%esp)
	movw	%dx, 60(%esp)
	movl	$__ZL8fillDataPvPhi, 68(%esp)
	movl	$0, 28(%esp)
	movl	$0, 32(%esp)
	movl	$0, 36(%esp)
	movl	$0, 40(%esp)
	movl	$0, 44(%esp)
	movl	$0, 48(%esp)
	call	_SDL_OpenAudioDevice
	movl	%eax, __ZL9audio_dev
	movl	%eax, %ebx
	movl	_SDLAudioDriverNameEnv, %eax
	testl	%eax, %eax
	je	L475
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC45, (%esp)
	call	_SDL_setenv
L475:
	testl	%ebx, %ebx
	je	L509
	call	_SDL_GetCurrentAudioDriver
	movl	%eax, (%esp)
	movl	%eax, %edi
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %ebp
	movl	%eax, %esi
	movl	%ebp, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 92
	subl	$4, %esp
	.cfi_def_cfa_offset 96
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L478
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movb	$0, (%ebx,%esi)
	movzbl	(%ebx), %eax
	movl	%ebx, %edx
	testb	%al, %al
	je	L480
	.p2align 5
	.p2align 4
	.p2align 3
L479:
	movzbl	_toupperlookup(%eax), %eax
	addl	$1, %edx
	movb	%al, -1(%edx)
	movzbl	(%edx), %eax
	testb	%al, %al
	jne	L479
L480:
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_SDL_GetAudioDeviceName
	movl	%eax, (%esp)
	movl	%eax, %edi
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %edx
	movl	%eax, %esi
	movl	%edx, (%esp)
	movl	%edx, 24(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 92
	subl	$4, %esp
	.cfi_def_cfa_offset 96
	movl	%eax, %ebp
	testl	%eax, %eax
	je	L481
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movb	$0, 0(%ebp,%esi)
	movl	%ebp, %esi
	movl	$40, 4(%esp)
	movl	%ebp, (%esp)
	call	_strchr
	testl	%eax, %eax
	je	L483
	movl	$41, 4(%esp)
	leal	1(%eax), %esi
	movl	%eax, (%esp)
	call	_strchr
	testl	%eax, %eax
	je	L483
	movb	$0, (%eax)
L483:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$3, %eax
	jg	L510
L486:
	movl	%ebp, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 92
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 96
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 92
	subl	$4, %esp
	.cfi_def_cfa_offset 96
	movl	28(%esp), %eax
	movl	96(%esp), %ecx
	movzwl	32(%esp), %edx
	movl	%eax, (%ecx)
	movzbl	34(%esp), %ecx
	andw	$32767, %dx
	movl	%ecx, %eax
	subl	$1, %eax
	cmpw	$8, %dx
	jne	L511
	movl	$3, __ZL9ErrorCode.lto_priv.1
	movl	100(%esp), %edi
	movl	%ecx, (%edi)
	cmpb	$1, %al
	ja	L488
L490:
	call	_SDL_CloseAudio
L477:
	movl	$-1, %eax
	jmp	L467
	.p2align 4,,10
	.p2align 3
L508:
	movl	$16, (%esp)
	call	_SDL_InitSubSystem
	movl	$16, (%esp)
	movl	%eax, %ebx
	call	_SDL_WasInit
	movl	%eax, __ZL10StartedSDL
	testl	%ebx, %ebx
	jns	L473
	movl	$2, __ZL9ErrorCode.lto_priv.1
	jmp	L477
	.p2align 4,,10
	.p2align 3
L511:
	movl	100(%esp), %edi
	movl	%ecx, (%edi)
	cmpb	$1, %al
	ja	L488
	movl	$1, __ZL11Initialised
	xorl	%eax, %eax
L467:
	addl	$76, %esp
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
L506:
	.cfi_restore_state
	movl	$LC45, (%esp)
	call	_SDL_getenv
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L470
	movl	%eax, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %edi
	movl	%eax, %esi
	movl	%edi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 92
	subl	$4, %esp
	.cfi_def_cfa_offset 96
	movl	%eax, %ebp
	testl	%eax, %eax
	je	L471
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movb	$0, 0(%ebp,%esi)
	movl	%ebp, _SDLAudioDriverNameEnv
	jmp	L470
	.p2align 4,,10
	.p2align 3
L505:
	movl	__ZL10StartedSDL, %eax
	testl	%eax, %eax
	jne	L512
L469:
	movl	_SDLAudioDriverNameEnv, %eax
	movl	_g_sm_heap, %ecx
	movl	$0, __ZL10StartedSDL
	movl	$0, __ZL11Initialised
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 92
	subl	$4, %esp
	.cfi_def_cfa_offset 96
	movl	$0, _SDLAudioDriverNameEnv
	cmpb	$0, _SDLAudioDriverName
	je	L472
L507:
	movl	$1, 8(%esp)
	movl	$_SDLAudioDriverName, 4(%esp)
	movl	$LC45, (%esp)
	call	_SDL_setenv
	jmp	L472
	.p2align 4,,10
	.p2align 3
L510:
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	$LC46, 12(%esp)
	movl	$231, 8(%esp)
	movl	$LC44, 4(%esp)
	movl	$4, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L486
	.p2align 4,,10
	.p2align 3
L512:
	movl	%eax, (%esp)
	call	_SDL_QuitSubSystem
	jmp	L469
	.p2align 4,,10
	.p2align 3
L478:
	movl	%ebp, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L481:
	movl	24(%esp), %eax
	call	__Z13handle_memerri
L509:
	movl	$3, __ZL9ErrorCode.lto_priv.1
	jmp	L477
L488:
	movl	$3, __ZL9ErrorCode.lto_priv.1
	jmp	L490
L471:
	movl	%edi, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE71:
	.p2align 4
	.globl	__Z19SDLDrv_PCM_Shutdownv
	.def	__Z19SDLDrv_PCM_Shutdownv;	.scl	2;	.type	32;	.endef
__Z19SDLDrv_PCM_Shutdownv:
LFB74:
	.cfi_startproc
	movl	__ZL11Initialised, %eax
	testl	%eax, %eax
	je	L520
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	__ZL10StartedSDL, %eax
	testl	%eax, %eax
	jne	L523
L515:
	movl	_SDLAudioDriverNameEnv, %eax
	movl	_g_sm_heap, %ecx
	movl	$0, __ZL10StartedSDL
	movl	$0, __ZL11Initialised
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 4
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	$0, _SDLAudioDriverNameEnv
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L523:
	.cfi_restore_state
	movl	%eax, (%esp)
	call	_SDL_QuitSubSystem
	jmp	L515
	.p2align 4,,10
	.p2align 3
L520:
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE74:
	.p2align 4
	.globl	__Z23SDLDrv_PCM_StopPlaybackv
	.def	__Z23SDLDrv_PCM_StopPlaybackv;	.scl	2;	.type	32;	.endef
__Z23SDLDrv_PCM_StopPlaybackv:
LFB75:
	.cfi_startproc
	movl	__ZL11Initialised, %edx
	testl	%edx, %edx
	je	L527
	movl	__ZL7Playing, %eax
	testl	%eax, %eax
	jne	L530
L527:
	ret
	.p2align 4,,10
	.p2align 3
L530:
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	__ZL9audio_dev, %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	_SDL_PauseAudioDevice
	movl	$0, __ZL7Playing
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE75:
	.p2align 4
	.globl	__Z24SDLDrv_PCM_BeginPlaybackPciiPFvvE
	.def	__Z24SDLDrv_PCM_BeginPlaybackPciiPFvvE;	.scl	2;	.type	32;	.endef
__Z24SDLDrv_PCM_BeginPlaybackPciiPFvvE:
LFB78:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	__ZL11Initialised, %ecx
	movl	24(%esp), %eax
	testl	%ecx, %ecx
	je	L536
	movl	__ZL7Playing, %edx
	testl	%edx, %edx
	jne	L537
L534:
	movl	12(%esp), %edx
	movl	%eax, __ZL11MixCallBack
	movl	$0, __ZL16MixBufferCurrent
	movl	%edx, __ZL9MixBuffer
	movl	16(%esp), %edx
	movl	$0, __ZL13MixBufferUsed
	movl	%edx, __ZL13MixBufferSize
	movl	20(%esp), %edx
	movl	%edx, __ZL14MixBufferCount
	call	*%eax
	movl	__ZL9audio_dev, %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_SDL_PauseAudioDevice
	xorl	%eax, %eax
	movl	$1, __ZL7Playing
L531:
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L537:
	.cfi_restore_state
	movl	__ZL9audio_dev, %edx
	movl	$1, 4(%esp)
	movl	%eax, 24(%esp)
	movl	%edx, (%esp)
	call	_SDL_PauseAudioDevice
	movl	24(%esp), %eax
	movl	$0, __ZL7Playing
	jmp	L534
	.p2align 4,,10
	.p2align 3
L536:
	movl	$1, __ZL9ErrorCode.lto_priv.1
	movl	$-1, %eax
	jmp	L531
	.cfi_endproc
LFE78:
	.p2align 4
	.globl	__Z15SDLDrv_PCM_Lockv
	.def	__Z15SDLDrv_PCM_Lockv;	.scl	2;	.type	32;	.endef
__Z15SDLDrv_PCM_Lockv:
LFB79:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	__ZL9audio_dev, %eax
	movl	%eax, (%esp)
	call	_SDL_LockAudioDevice
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE79:
	.p2align 4
	.globl	__Z17SDLDrv_PCM_Unlockv
	.def	__Z17SDLDrv_PCM_Unlockv;	.scl	2;	.type	32;	.endef
__Z17SDLDrv_PCM_Unlockv:
LFB80:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	__ZL9audio_dev, %eax
	movl	%eax, (%esp)
	call	_SDL_UnlockAudioDevice
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE80:
	.p2align 4
	.def	_tsf_region_envtosecs;	.scl	3;	.type	32;	.endef
_tsf_region_envtosecs:
LFB81:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorps	%xmm1, %xmm1
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	.cfi_offset 6, -12
	movl	%edx, %esi
	pushl	%ebx
	.cfi_offset 3, -16
	movl	%eax, %ebx
	andl	$-8, %esp
	subl	$24, %esp
	movss	(%eax), %xmm2
	movss	LC47, %xmm0
	comiss	%xmm2, %xmm0
	jbe	L565
L543:
	movss	4(%ebx), %xmm2
	movss	%xmm1, (%ebx)
	xorps	%xmm1, %xmm1
	comiss	%xmm2, %xmm0
	jbe	L566
L544:
	movss	20(%ebx), %xmm2
	movss	%xmm1, 4(%ebx)
	xorps	%xmm1, %xmm1
	comiss	%xmm2, %xmm0
	jbe	L567
L545:
	movss	%xmm1, 20(%ebx)
	xorps	%xmm1, %xmm1
	ucomiss	24(%ebx), %xmm1
	jp	L546
	jne	L546
	movss	8(%ebx), %xmm2
	comiss	%xmm2, %xmm0
	jbe	L568
L548:
	movss	%xmm1, 8(%ebx)
L546:
	xorps	%xmm1, %xmm1
	ucomiss	28(%ebx), %xmm1
	jp	L549
	jne	L549
	movss	12(%ebx), %xmm2
	comiss	%xmm2, %xmm0
	jbe	L569
L551:
	movss	%xmm1, 12(%ebx)
L549:
	movss	16(%ebx), %xmm0
	xorps	%xmm1, %xmm1
	comiss	%xmm0, %xmm1
	ja	L552
	movl	%esi, %eax
	testb	%al, %al
	je	L553
	xorps	LC19, %xmm0
	divss	LC48, %xmm0
	comiss	LC49, %xmm0
	ja	L554
L552:
	xorps	%xmm1, %xmm1
L555:
	movss	%xmm1, 16(%ebx)
	leal	-8(%ebp), %esp
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
L553:
	.cfi_restore_state
	movss	LC18, %xmm1
	divss	LC14, %xmm0
	subss	%xmm0, %xmm1
	movss	%xmm1, 16(%ebx)
	leal	-8(%ebp), %esp
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
L567:
	.cfi_restore_state
	divss	LC8, %xmm2
	movss	%xmm2, 20(%esp)
	flds	20(%esp)
	fstpl	8(%esp)
	flds	LC20
	fstpl	(%esp)
	call	_pow
	movss	LC47, %xmm0
	fstps	20(%esp)
	movss	20(%esp), %xmm1
	jmp	L545
	.p2align 4,,10
	.p2align 3
L566:
	divss	LC8, %xmm2
	movss	%xmm2, 20(%esp)
	flds	20(%esp)
	fstpl	8(%esp)
	flds	LC20
	fstpl	(%esp)
	call	_pow
	movss	LC47, %xmm0
	fstps	20(%esp)
	movss	20(%esp), %xmm1
	jmp	L544
	.p2align 4,,10
	.p2align 3
L565:
	divss	LC8, %xmm2
	movss	%xmm2, 20(%esp)
	flds	20(%esp)
	fstpl	8(%esp)
	flds	LC20
	fstpl	(%esp)
	call	_pow
	movss	LC47, %xmm0
	fstps	20(%esp)
	movss	20(%esp), %xmm1
	jmp	L543
	.p2align 4,,10
	.p2align 3
L569:
	divss	LC8, %xmm2
	movss	%xmm2, 20(%esp)
	flds	20(%esp)
	fstpl	8(%esp)
	flds	LC20
	fstpl	(%esp)
	call	_pow
	fstps	20(%esp)
	movss	20(%esp), %xmm1
	jmp	L551
	.p2align 4,,10
	.p2align 3
L568:
	divss	LC8, %xmm2
	movss	%xmm2, 20(%esp)
	flds	20(%esp)
	fstpl	8(%esp)
	flds	LC20
	fstpl	(%esp)
	call	_pow
	movss	LC47, %xmm0
	fstps	20(%esp)
	movss	20(%esp), %xmm1
	jmp	L548
	.p2align 4,,10
	.p2align 3
L554:
	mulss	LC50, %xmm0
	movl	$0, (%esp)
	movl	$1076101120, 4(%esp)
	movss	%xmm0, 20(%esp)
	flds	20(%esp)
	fstpl	8(%esp)
	call	_pow
	fstps	20(%esp)
	movss	20(%esp), %xmm1
	jmp	L555
	.cfi_endproc
LFE81:
	.p2align 4
	.def	_tsf_voice_calcpitchratio;	.scl	3;	.type	32;	.endef
_tsf_voice_calcpitchratio:
LFB84:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	movl	%eax, %ebx
	andl	$-8, %esp
	subl	$32, %esp
	movl	12(%eax), %eax
	movss	%xmm1, 20(%esp)
	xorps	%xmm1, %xmm1
	movl	32(%eax), %edx
	addl	4(%ebx), %edx
	ucomiss	%xmm1, %xmm0
	fildl	40(%eax)
	movl	%edx, 24(%esp)
	fildl	24(%esp)
	fildl	36(%eax)
	fdivs	LC51
	faddp	%st, %st(1)
	fsub	%st(1), %st
	fildl	44(%eax)
	fdivs	LC51
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	jp	L573
	jne	L573
L571:
	fmuls	LC51
	xorl	%ecx, %ecx
	movl	%ecx, 28(%esp)
	fstpl	16(%ebx)
	movl	4(%eax), %edx
	movl	%edx, 24(%esp)
	fildq	24(%esp)
	fstpl	24(%esp)
	fildl	40(%eax)
	fmuls	LC51
	fdivs	LC8
	fstpl	8(%esp)
	flds	LC20
	fstpl	(%esp)
	call	_pow
	fmuls	20(%esp)
	fdivrl	24(%esp)
	fstpl	24(%ebx)
	movl	-4(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L573:
	.cfi_restore_state
	movss	%xmm0, 24(%esp)
	fadds	24(%esp)
	jmp	L571
	.cfi_endproc
LFE84:
	.p2align 4
	.def	_tsf_channel_applypitch;	.scl	3;	.type	32;	.endef
_tsf_channel_applypitch:
LFB85:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%edx, %ebp
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
	movzwl	4(%ecx), %eax
	movss	28(%ecx), %xmm2
	cmpw	$8192, %ax
	je	L576
	movss	24(%ecx), %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	divss	LC53, %xmm0
	mulss	%xmm1, %xmm0
	addss	%xmm0, %xmm0
	subss	%xmm1, %xmm0
	addss	%xmm0, %xmm2
L576:
	movl	20(%edi), %esi
	movl	8(%edi), %ebx
	sall	$8, %esi
	addl	%ebx, %esi
	cmpl	%esi, %ebx
	jne	L579
	jmp	L575
	.p2align 4
	.p2align 4,,10
	.p2align 3
L578:
	addl	$256, %ebx
	cmpl	%ebx, %esi
	je	L575
L579:
	cmpl	%ebp, 8(%ebx)
	jne	L578
	cmpl	$-1, (%ebx)
	je	L578
	movss	40(%edi), %xmm1
	movaps	%xmm2, %xmm0
	movl	%ebx, %eax
	addl	$256, %ebx
	movss	%xmm2, (%esp)
	call	_tsf_voice_calcpitchratio
	movss	(%esp), %xmm2
	cmpl	%ebx, %esi
	jne	L579
L575:
	addl	$4, %esp
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
LFE85:
	.p2align 4
	.def	_tsf_voice_envelope_nextsegment;	.scl	3;	.type	32;	.endef
_tsf_voice_envelope_nextsegment:
LFB86:
	.cfi_startproc
	cmpw	$5, %dx
	ja	L586
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movzwl	%dx, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-8, %esp
	subl	$24, %esp
	jmp	*L588(,%edx,4)
	.section .rdata,"dr"
	.align 4
L588:
	.long	L593
	.long	L592
	.long	L591
	.long	L590
	.long	L589
	.long	L587
	.text
	.p2align 4,,10
	.p2align 3
L592:
	movss	20(%eax), %xmm1
	movaps	%xmm1, %xmm2
	mulss	%xmm0, %xmm2
	cvttss2sil	%xmm2, %edx
	movl	%edx, 8(%eax)
	testl	%edx, %edx
	jg	L607
L591:
	movss	24(%eax), %xmm1
	mulss	%xmm0, %xmm1
	cvttss2sil	%xmm1, %edx
	movl	%edx, 8(%eax)
	testl	%edx, %edx
	jg	L608
L590:
	movss	28(%eax), %xmm2
	movaps	%xmm2, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2sil	%xmm1, %edx
	movl	%edx, 8(%eax)
	testl	%edx, %edx
	jg	L609
L589:
	movl	$5, %edx
	movss	32(%eax), %xmm0
	movb	$0, 48(%eax)
	movw	%dx, 12(%eax)
	movl	$0x00000000, 4(%eax)
	movl	$2147483647, 8(%eax)
	movss	%xmm0, (%eax)
L585:
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L593:
	.cfi_restore_state
	movss	16(%eax), %xmm1
	mulss	%xmm0, %xmm1
	cvttss2sil	%xmm1, %edx
	movl	%edx, 8(%eax)
	testl	%edx, %edx
	jle	L592
	movl	$1, %edx
	movb	$0, 48(%eax)
	movw	%dx, 12(%eax)
	movl	$0x00000000, (%eax)
	movl	$0x00000000, 4(%eax)
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L587:
	.cfi_restore_state
	movss	36(%eax), %xmm1
	xorps	%xmm3, %xmm3
	movl	$6, %ecx
	movw	%cx, 12(%eax)
	movaps	%xmm1, %xmm2
	cmpless	%xmm3, %xmm2
	movss	LC54, %xmm3
	andps	%xmm2, %xmm3
	andnps	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	orps	%xmm3, %xmm2
	mulss	%xmm2, %xmm0
	cvttss2sil	%xmm0, %edx
	cvtsi2ssl	%edx, %xmm1
	movl	%edx, 8(%eax)
	cmpb	$0, 49(%eax)
	jne	L610
	movss	(%eax), %xmm0
	xorps	LC19, %xmm0
	movb	$0, 48(%eax)
	divss	%xmm1, %xmm0
	movss	%xmm0, 4(%eax)
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L609:
	.cfi_restore_state
	movss	LC18, %xmm1
	movl	$4, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ssl	%edx, %xmm4
	movw	%cx, 12(%eax)
	movss	%xmm1, (%eax)
	cmpb	$0, 49(%eax)
	jne	L611
	movss	LC21, %xmm3
	subss	32(%eax), %xmm1
	movb	$0, 48(%eax)
	divss	%xmm4, %xmm3
	mulss	%xmm2, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2sil	%xmm1, %edx
	movl	%edx, 8(%eax)
	movss	%xmm3, 4(%eax)
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L608:
	.cfi_restore_state
	movl	$3, %edx
	movb	$0, 48(%eax)
	movw	%dx, 12(%eax)
	movl	$0x3f800000, (%eax)
	movl	$0x00000000, 4(%eax)
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L607:
	.cfi_restore_state
	cmpb	$0, 49(%eax)
	jne	L595
	movswl	14(%eax), %ecx
	movl	$145, %edx
	xorps	%xmm2, %xmm2
	subl	%ecx, %edx
	cvtsi2ssl	%edx, %xmm2
	divss	LC12, %xmm2
	mulss	%xmm2, %xmm1
	mulss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %edx
	movl	%edx, 8(%eax)
L595:
	xorps	%xmm1, %xmm1
	movl	$2, %ecx
	movb	$0, 48(%eax)
	movss	LC18, %xmm0
	cvtsi2ssl	%edx, %xmm1
	movw	%cx, 12(%eax)
	movl	$0x00000000, (%eax)
	divss	%xmm1, %xmm0
	movss	%xmm0, 4(%eax)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
L586:
	movl	$7, %edx
	movb	$0, 48(%eax)
	movw	%dx, 12(%eax)
	movl	$0x00000000, 4(%eax)
	movl	$0x00000000, (%eax)
	movl	$134217727, 8(%eax)
	ret
	.p2align 4,,10
	.p2align 3
L610:
	.cfi_def_cfa 5, 8
	.cfi_offset 5, -8
	movss	LC55, %xmm0
	movl	%eax, 16(%esp)
	divss	%xmm1, %xmm0
	movss	%xmm0, 20(%esp)
	flds	20(%esp)
	fstpl	(%esp)
	call	_exp
	movl	16(%esp), %eax
	fstps	20(%esp)
	movss	20(%esp), %xmm0
	movb	$1, 48(%eax)
	movss	%xmm0, 4(%eax)
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L611:
	.cfi_restore_state
	movss	LC55, %xmm0
	movl	%eax, 12(%esp)
	divss	%xmm4, %xmm0
	movss	%xmm0, 20(%esp)
	flds	20(%esp)
	fstpl	(%esp)
	call	_exp
	movl	12(%esp), %eax
	xorps	%xmm1, %xmm1
	fstps	16(%esp)
	movss	16(%esp), %xmm0
	movb	$1, 48(%eax)
	movss	%xmm0, 4(%eax)
	movss	32(%eax), %xmm0
	comiss	%xmm1, %xmm0
	jbe	L585
	movss	%xmm0, (%esp)
	call	_logf
	movl	12(%esp), %eax
	fstps	16(%esp)
	movss	16(%esp), %xmm0
	divss	20(%esp), %xmm0
	cvttss2sil	%xmm0, %edx
	movl	%edx, 8(%eax)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE86:
	.p2align 4
	.def	_tsf_voice_envelope_setup;	.scl	3;	.type	32;	.endef
_tsf_voice_envelope_setup:
LFB88:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movaps	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	movl	%ecx, %esi
	pushl	%ebx
	andl	$-8, %esp
	subl	$32, %esp
	.cfi_offset 3, -20
	movl	(%edx), %edi
	movzwl	8(%ebp), %ebx
	movzbl	12(%ebp), %ecx
	movl	%edi, 16(%eax)
	movl	4(%edx), %edi
	movl	%edi, 20(%eax)
	movl	8(%edx), %edi
	movl	%edi, 24(%eax)
	movl	12(%edx), %edi
	movl	%edi, 28(%eax)
	movl	16(%edx), %edi
	movl	%edi, 32(%eax)
	movl	20(%edx), %edi
	movl	%edi, 36(%eax)
	movl	24(%edx), %edi
	movl	%edi, 40(%eax)
	movss	40(%eax), %xmm2
	movl	28(%edx), %edx
	ucomiss	%xmm0, %xmm2
	movl	%edx, 44(%eax)
	jp	L621
	jne	L621
L613:
	movss	44(%eax), %xmm2
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm2
	jp	L622
	jne	L622
L616:
	movw	%bx, 14(%eax)
	movaps	%xmm1, %xmm0
	xorl	%edx, %edx
	movb	%cl, 49(%eax)
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
	jmp	_tsf_voice_envelope_nextsegment
	.p2align 4,,10
	.p2align 3
L621:
	.cfi_restore_state
	movss	LC56, %xmm0
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%esi, %xmm3
	subss	%xmm3, %xmm0
	movss	LC57, %xmm3
	mulss	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	addss	24(%eax), %xmm0
	comiss	%xmm0, %xmm3
	jbe	L624
	movss	%xmm2, 24(%eax)
	jmp	L613
	.p2align 4,,10
	.p2align 3
L622:
	movss	LC56, %xmm0
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%esi, %xmm3
	subss	%xmm3, %xmm0
	movss	LC57, %xmm3
	mulss	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	addss	28(%eax), %xmm0
	comiss	%xmm0, %xmm3
	jbe	L625
	movss	%xmm2, 28(%eax)
	jmp	L616
	.p2align 4,,10
	.p2align 3
L625:
	divss	LC8, %xmm0
	movss	%xmm0, 28(%esp)
	flds	28(%esp)
	movl	%eax, 20(%esp)
	movb	%cl, 27(%esp)
	fstpl	8(%esp)
	flds	LC20
	movss	%xmm1, 16(%esp)
	fstpl	(%esp)
	call	_pow
	movl	20(%esp), %eax
	movss	16(%esp), %xmm1
	fstps	28(%esp)
	movss	28(%esp), %xmm2
	movzbl	27(%esp), %ecx
	movss	%xmm2, 28(%eax)
	jmp	L616
	.p2align 4,,10
	.p2align 3
L624:
	divss	LC8, %xmm0
	movss	%xmm0, 28(%esp)
	flds	28(%esp)
	movl	%eax, 20(%esp)
	movb	%cl, 27(%esp)
	fstpl	8(%esp)
	flds	LC20
	movss	%xmm1, 16(%esp)
	fstpl	(%esp)
	call	_pow
	movl	20(%esp), %eax
	movss	16(%esp), %xmm1
	fstps	28(%esp)
	movss	28(%esp), %xmm2
	movzbl	27(%esp), %ecx
	movss	%xmm2, 24(%eax)
	jmp	L613
	.cfi_endproc
LFE88:
	.p2align 4
	.def	_tsf_voice_envelope_process;	.scl	3;	.type	32;	.endef
_tsf_voice_envelope_process:
LFB89:
	.cfi_startproc
	movaps	%xmm0, %xmm2
	movss	4(%eax), %xmm0
	xorps	%xmm1, %xmm1
	movl	%edx, %ecx
	ucomiss	%xmm1, %xmm0
	jp	L631
	jne	L631
	movl	8(%eax), %edx
	subl	%ecx, %edx
	movl	%edx, 8(%eax)
	testl	%edx, %edx
	jle	L638
L635:
	ret
	.p2align 4,,10
	.p2align 3
L631:
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm1
	cmpb	$0, 48(%eax)
	jne	L637
	mulss	%xmm1, %xmm0
	movl	8(%eax), %edx
	addss	(%eax), %xmm0
	subl	%ecx, %edx
	movl	%edx, 8(%eax)
	movss	%xmm0, (%eax)
	testl	%edx, %edx
	jg	L635
L638:
	movswl	12(%eax), %edx
	movaps	%xmm2, %xmm0
	jmp	_tsf_voice_envelope_nextsegment
	.p2align 4,,10
	.p2align 3
L637:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-8, %esp
	subl	$32, %esp
	movss	%xmm1, 28(%esp)
	flds	28(%esp)
	movss	%xmm0, 28(%esp)
	movl	%ecx, 20(%esp)
	fstpl	8(%esp)
	flds	28(%esp)
	movl	%eax, 24(%esp)
	movss	%xmm2, 16(%esp)
	fstpl	(%esp)
	call	_pow
	movl	24(%esp), %eax
	movl	20(%esp), %ecx
	fstps	28(%esp)
	movss	28(%esp), %xmm0
	movss	16(%esp), %xmm2
	mulss	(%eax), %xmm0
	movl	8(%eax), %edx
	subl	%ecx, %edx
	movl	%edx, 8(%eax)
	movss	%xmm0, (%eax)
	testl	%edx, %edx
	jle	L639
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L639:
	.cfi_restore_state
	movswl	12(%eax), %edx
	movaps	%xmm2, %xmm0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	jmp	_tsf_voice_envelope_nextsegment
	.cfi_endproc
LFE89:
	.p2align 4
	.def	_tsf_voice_lowpass_setup;	.scl	3;	.type	32;	.endef
_tsf_voice_lowpass_setup:
LFB90:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	movl	%eax, %ebx
	andl	$-8, %esp
	subl	$16, %esp
	fldl	LC58
	movss	%xmm0, 12(%esp)
	fmuls	12(%esp)
	fstpl	(%esp)
	call	_tan
	fld	%st(0)
	fmul	%st(1), %st
	fxch	%st(1)
	fmull	(%ebx)
	fld1
	fadd	%st(1), %st
	fadd	%st(2), %st
	fld1
	fdiv	%st, %st(1)
	fld	%st(3)
	fmul	%st(2), %st
	fstl	8(%ebx)
	fadd	%st(0), %st
	fstpl	16(%ebx)
	fld	%st(0)
	fsubr	%st(4), %st
	fadd	%st(0), %st
	fmul	%st(2), %st
	fstpl	24(%ebx)
	fsubp	%st, %st(2)
	fxch	%st(1)
	faddp	%st, %st(2)
	fmulp	%st, %st(1)
	fstpl	32(%ebx)
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE90:
	.p2align 4
	.def	_tsf_voice_end;	.scl	3;	.type	32;	.endef
_tsf_voice_end:
LFB91:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorps	%xmm1, %xmm1
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	movl	%eax, %edi
	xorl	%eax, %eax
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%edx, %ebx
	andl	$-8, %esp
	subl	$24, %esp
	movl	24(%edi), %ecx
	movss	100(%edx), %xmm0
	movss	LC54, %xmm2
	testl	%ecx, %ecx
	movaps	%xmm0, %xmm3
	setne	%al
	cmpless	%xmm1, %xmm0
	movl	%eax, %esi
	movzbl	113(%edx), %eax
	movb	%al, 23(%esp)
	andps	%xmm0, %xmm2
	andnps	%xmm3, %xmm0
	orps	%xmm0, %xmm2
L652:
	movss	40(%edi), %xmm0
	movl	$6, %edx
	xorps	%xmm1, %xmm1
	movw	%dx, 76(%ebx)
	mulss	%xmm2, %xmm0
	cvttss2sil	%xmm0, %eax
	cvtsi2ssl	%eax, %xmm1
	movl	%eax, 72(%ebx)
	cmpb	$0, 23(%esp)
	jne	L657
	movss	64(%ebx), %xmm0
	xorps	LC19, %xmm0
	xorl	%eax, %eax
	divss	%xmm1, %xmm0
L646:
	movss	%xmm0, 68(%ebx)
	movss	152(%ebx), %xmm0
	xorps	%xmm4, %xmm4
	movb	%al, 112(%ebx)
	movss	40(%edi), %xmm3
	movl	$6, %eax
	movaps	%xmm0, %xmm1
	movw	%ax, 128(%ebx)
	movzbl	165(%ebx), %eax
	cmpless	%xmm4, %xmm1
	movss	LC54, %xmm4
	andps	%xmm1, %xmm4
	andnps	%xmm0, %xmm1
	orps	%xmm4, %xmm1
	movaps	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	mulss	%xmm3, %xmm0
	cvttss2sil	%xmm0, %edx
	cvtsi2ssl	%edx, %xmm1
	movl	%edx, 124(%ebx)
	testb	%al, %al
	jne	L658
	movss	116(%ebx), %xmm0
	xorps	LC19, %xmm0
	divss	%xmm1, %xmm0
L650:
	movb	%al, 164(%ebx)
	movl	12(%ebx), %eax
	movss	%xmm0, 120(%ebx)
	cmpl	$2, (%eax)
	jne	L651
	movl	56(%ebx), %eax
	movl	%eax, 60(%ebx)
L651:
	subl	$1, %esi
	jnb	L652
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
L658:
	.cfi_restore_state
	movss	LC55, %xmm0
	movss	%xmm2, 12(%esp)
	divss	%xmm1, %xmm0
	movss	%xmm0, 16(%esp)
	flds	16(%esp)
	fstpl	(%esp)
	call	_exp
	movss	12(%esp), %xmm2
	movl	$1, %eax
	fstps	16(%esp)
	movss	16(%esp), %xmm0
	jmp	L650
	.p2align 4,,10
	.p2align 3
L657:
	movss	LC55, %xmm0
	movss	%xmm2, 12(%esp)
	divss	%xmm1, %xmm0
	movss	%xmm0, 16(%esp)
	flds	16(%esp)
	fstpl	(%esp)
	call	_exp
	movss	12(%esp), %xmm2
	movl	$1, %eax
	fstps	16(%esp)
	movss	16(%esp), %xmm0
	jmp	L646
	.cfi_endproc
LFE91:
	.p2align 4
	.def	__ZL11SF2_NoteOffiii;	.scl	3;	.type	32;	.endef
__ZL11SF2_NoteOffiii:
LFB92:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	__ZL9sf2_synth, %edx
	movl	%ebp, 16(%esp)
	movl	28(%esp), %ecx
	movl	%ebx, 4(%esp)
	.cfi_offset 5, -8
	.cfi_offset 3, -20
	movl	20(%edx), %ebx
	movl	8(%edx), %eax
	movl	24(%esp), %ebp
	sall	$8, %ebx
	addl	%eax, %ebx
	cmpl	%ebx, %eax
	je	L659
	movl	%edx, (%esp)
	movl	%esi, 8(%esp)
	.cfi_offset 6, -16
	xorl	%esi, %esi
	movl	%edi, 12(%esp)
	.cfi_offset 7, -12
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L666:
	cmpl	$-1, (%eax)
	je	L662
	cmpl	8(%eax), %ebp
	jne	L662
	cmpl	4(%eax), %ecx
	jne	L662
	cmpw	$5, 76(%eax)
	jg	L662
	testl	%esi, %esi
	je	L665
	movl	52(%esi), %edx
	cmpl	%edx, 52(%eax)
	jnb	L685
L665:
	movl	%eax, %edi
	movl	%eax, %esi
	.p2align 4
	.p2align 3
L662:
	addl	$256, %eax
	cmpl	%eax, %ebx
	jne	L666
	testl	%esi, %esi
	je	L684
	cmpl	%esi, %edi
	jb	L684
	movl	%ecx, 28(%esp)
	movl	%esi, %ebx
	.p2align 4
	.p2align 3
L669:
	cmpl	%esi, %ebx
	je	L667
	cmpl	%esi, %edi
	je	L667
	movl	52(%ebx), %eax
	cmpl	%eax, 52(%esi)
	jne	L668
	cmpl	$-1, (%esi)
	je	L668
	cmpl	8(%esi), %ebp
	jne	L668
	movl	4(%esi), %eax
	cmpl	%eax, 28(%esp)
	jne	L668
	cmpw	$5, 76(%esi)
	jg	L668
	.p2align 4
	.p2align 3
L667:
	movl	(%esp), %eax
	movl	%esi, %edx
	call	_tsf_voice_end
L668:
	addl	$256, %esi
	cmpl	%esi, %edi
	jnb	L669
L684:
	movl	8(%esp), %esi
	.cfi_restore 6
	movl	12(%esp), %edi
	.cfi_restore 7
L659:
	movl	4(%esp), %ebx
	movl	16(%esp), %ebp
	addl	$20, %esp
	.cfi_restore 3
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L685:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmove	%eax, %edi
	jmp	L662
	.cfi_endproc
LFE92:
	.p2align 4
	.def	_tsf_channel_setup_voice;	.scl	3;	.type	32;	.endef
_tsf_channel_setup_voice:
LFB94:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %edx
	movl	20(%esp), %ebx
	movl	12(%edx), %eax
	movss	40(%ebx), %xmm0
	movl	8(%eax), %ecx
	movl	%ecx, %esi
	sall	$5, %esi
	addl	%esi, %eax
	movl	12(%ebx), %esi
	movss	52(%esi), %xmm2
	addss	28(%eax), %xmm2
	movl	%ecx, 8(%ebx)
	addss	32(%eax), %xmm0
	movss	%xmm0, 40(%ebx)
	movss	40(%edx), %xmm1
	movzwl	16(%eax), %edx
	movss	40(%eax), %xmm3
	cmpw	$8192, %dx
	je	L687
	movss	36(%eax), %xmm4
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	divss	LC53, %xmm0
	mulss	%xmm4, %xmm0
	addss	%xmm0, %xmm0
	subss	%xmm4, %xmm0
	addss	%xmm0, %xmm3
L687:
	movaps	%xmm3, %xmm0
	movl	%ebx, %eax
	movss	%xmm2, (%esp)
	call	_tsf_voice_calcpitchratio
	movss	(%esp), %xmm2
	movss	LC11, %xmm0
	comiss	%xmm2, %xmm0
	jnb	L689
	comiss	LC10, %xmm2
	xorps	%xmm0, %xmm0
	movss	LC18, %xmm1
	jb	L695
	movss	%xmm0, 44(%ebx)
	movss	%xmm1, 48(%ebx)
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
L689:
	.cfi_restore_state
	movss	LC18, %xmm0
	xorps	%xmm1, %xmm1
	movss	%xmm1, 48(%ebx)
	movss	%xmm0, 44(%ebx)
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
L695:
	.cfi_restore_state
	movss	LC10, %xmm1
	movaps	%xmm1, %xmm0
	subss	%xmm2, %xmm0
	addss	%xmm1, %xmm2
	movaps	%xmm2, %xmm1
	sqrtss	%xmm0, %xmm0
	sqrtss	%xmm1, %xmm1
	movss	%xmm0, 44(%ebx)
	movss	%xmm1, 48(%ebx)
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
LFE94:
	.p2align 4
	.def	_tsf_channel_init;	.scl	3;	.type	32;	.endef
_tsf_channel_init:
LFB95:
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
	sall	$5, %edi
	.cfi_offset 6, -16
	movl	%edx, %esi
	pushl	%ebx
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$12, %esp
	movl	12(%eax), %eax
	movl	%edi, -16(%ebp)
	testl	%eax, %eax
	je	L697
	cmpl	%edx, 4(%eax)
	jg	L708
	movl	-16(%ebp), %edi
	movl	%eax, (%esp)
	addl	$44, %edi
	movl	%edi, 4(%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	testl	%eax, %eax
	je	L707
	movl	%eax, 12(%ebx)
L701:
	movl	4(%eax), %edx
	leal	1(%esi), %edi
	movl	%edi, 4(%eax)
	cmpl	%edx, %esi
	jl	L703
	movups	LC60, %xmm0
	.p2align 6
	.p2align 4
	.p2align 3
L704:
	movl	12(%ebx), %esi
	movl	%edx, %ecx
	addl	$1, %edx
	sall	$5, %ecx
	movl	$0, 12(%esi,%ecx)
	movl	$536879104, 16(%esi,%ecx)
	movl	$1073692671, 20(%esi,%ecx)
	movl	$65535, 24(%esi,%ecx)
	movups	%xmm0, 28(%esi,%ecx)
	cmpl	%edx, %edi
	jne	L704
L703:
	movl	12(%ebx), %eax
	movl	-16(%ebp), %ebx
	leal	-12(%ebp), %esp
	leal	12(%eax,%ebx), %eax
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
L708:
	.cfi_restore_state
	leal	-12(%ebp), %esp
	leal	12(%eax,%edi), %eax
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
L697:
	.cfi_restore_state
	movl	-16(%ebp), %eax
	leal	44(%eax), %edi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L707
	movl	%eax, 12(%ebx)
	movl	$_tsf_channel_setup_voice, (%eax)
	movl	12(%ebx), %eax
	movl	$0, 4(%eax)
	movl	12(%ebx), %eax
	movl	$0, 8(%eax)
	movl	12(%ebx), %eax
	jmp	L701
	.p2align 4,,10
	.p2align 3
L707:
	movl	%edi, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE95:
	.p2align 4
	.def	_tsf_channel_set_presetnumber.isra.0;	.scl	3;	.type	32;	.endef
_tsf_channel_set_presetnumber.isra.0:
LFB97:
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
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	call	_tsf_channel_init
	movl	(%edi), %edx
	movzwl	2(%eax), %ecx
	movl	%eax, %ebp
	movl	16(%edi), %eax
	movw	%cx, 2(%esp)
	testl	%ebx, %ebx
	je	L710
	testl	%eax, %eax
	jle	L709
	movl	%ecx, %edi
	leal	20(%edx), %ecx
	xorl	%ebx, %ebx
	andw	$32639, %di
	movl	%ecx, 4(%esp)
	movl	%ecx, %edx
	movl	%ecx, 8(%esp)
	orw	$128, %di
	jmp	L714
	.p2align 5
	.p2align 4,,10
	.p2align 3
L712:
	addl	$1, %ebx
	addl	$32, %edx
	cmpl	%eax, %ebx
	je	L741
L714:
	movzwl	(%edx), %ecx
	cmpl	%ecx, %esi
	jne	L712
	cmpw	2(%edx), %di
	jne	L712
L713:
	movw	%bx, 0(%ebp)
L709:
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
L710:
	.cfi_restore_state
	testl	%eax, %eax
	jle	L709
	movzwl	2(%esp), %ecx
	leal	20(%edx), %edi
	movl	%edi, 4(%esp)
	movl	%edi, %edx
	andw	$32767, %cx
	jmp	L724
	.p2align 5
	.p2align 4,,10
	.p2align 3
L723:
	addl	$1, %ebx
	addl	$32, %edx
	cmpl	%ebx, %eax
	je	L722
L724:
	movzwl	(%edx), %edi
	cmpl	%edi, %esi
	jne	L723
	cmpw	2(%edx), %cx
	je	L713
	addl	$1, %ebx
	addl	$32, %edx
	cmpl	%ebx, %eax
	jne	L724
L722:
	movl	4(%esp), %edx
	xorl	%ebx, %ebx
	jmp	L726
	.p2align 5
	.p2align 4,,10
	.p2align 3
L725:
	addl	$1, %ebx
	addl	$32, %edx
	cmpl	%ebx, %eax
	je	L709
L726:
	movzwl	(%edx), %ecx
	cmpl	%ecx, %esi
	jne	L725
	cmpw	$0, 2(%edx)
	jne	L725
	jmp	L713
	.p2align 4,,10
	.p2align 3
L741:
	movl	8(%esp), %ecx
	movl	4(%esp), %edx
	xorl	%ebx, %ebx
	jmp	L716
	.p2align 5
	.p2align 4,,10
	.p2align 3
L715:
	addl	$1, %ebx
	addl	$32, %edx
	cmpl	%eax, %ebx
	je	L742
L716:
	movzwl	(%edx), %edi
	cmpl	%edi, %esi
	jne	L715
	cmpw	$128, 2(%edx)
	jne	L715
	jmp	L713
	.p2align 4,,10
	.p2align 3
L742:
	movl	4(%esp), %edx
	xorl	%ebx, %ebx
	jmp	L718
	.p2align 4
	.p2align 4,,10
	.p2align 3
L717:
	addl	$1, %ebx
	addl	$32, %edx
	cmpl	%ebx, %eax
	je	L743
L718:
	cmpw	$0, (%edx)
	jne	L717
	cmpw	$128, 2(%edx)
	jne	L717
	jmp	L713
L743:
	movzwl	2(%esp), %edi
	xorl	%ebx, %ebx
	andw	$32767, %di
	jmp	L721
	.p2align 5
	.p2align 4,,10
	.p2align 3
L720:
	addl	$1, %ebx
	addl	$32, %ecx
	cmpl	%ebx, %eax
	je	L722
L721:
	movzwl	(%ecx), %edx
	cmpl	%edx, %esi
	jne	L720
	cmpw	2(%ecx), %di
	jne	L720
	jmp	L713
	.cfi_endproc
LFE97:
	.p2align 4
	.def	__ZL17SF2_ProgramChangeii;	.scl	3;	.type	32;	.endef
__ZL17SF2_ProgramChangeii:
LFB100:
	.cfi_startproc
	movl	4(%esp), %edx
	xorl	%eax, %eax
	movl	8(%esp), %ecx
	cmpl	$9, %edx
	sete	%al
	movl	%eax, 4(%esp)
	movl	__ZL9sf2_synth, %eax
	jmp	_tsf_channel_set_presetnumber.isra.0
	.cfi_endproc
LFE100:
	.p2align 4
	.def	_tsf_channel_set_pan.isra.0;	.scl	3;	.type	32;	.endef
_tsf_channel_set_pan.isra.0:
LFB103:
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
	movss	%xmm0, (%esp)
	call	_tsf_channel_init
	movl	20(%esi), %edx
	movss	(%esp), %xmm1
	movss	LC10, %xmm2
	movl	%eax, %ecx
	movl	8(%esi), %eax
	movss	LC11, %xmm3
	sall	$8, %edx
	addl	%eax, %edx
	cmpl	%edx, %eax
	jne	L752
	jmp	L746
	.p2align 4
	.p2align 4,,10
	.p2align 3
L747:
	addl	$256, %eax
	cmpl	%eax, %edx
	je	L746
L752:
	cmpl	8(%eax), %ebx
	jne	L747
	cmpl	$-1, (%eax)
	je	L747
	movl	12(%eax), %esi
	movss	52(%esi), %xmm0
	addss	%xmm1, %xmm0
	subss	%xmm2, %xmm0
	comiss	%xmm0, %xmm3
	jb	L758
	movl	$0x3f800000, 44(%eax)
	addl	$256, %eax
	movl	$0x00000000, -208(%eax)
	cmpl	%eax, %edx
	jne	L752
L746:
	subss	%xmm2, %xmm1
	movss	%xmm1, 16(%ecx)
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
L758:
	.cfi_restore_state
	comiss	LC10, %xmm0
	jb	L759
	movl	$0x00000000, 44(%eax)
	movl	$0x3f800000, 48(%eax)
	jmp	L747
	.p2align 4,,10
	.p2align 3
L759:
	movaps	%xmm2, %xmm4
	subss	%xmm0, %xmm4
	addss	%xmm2, %xmm0
	sqrtss	%xmm4, %xmm4
	sqrtss	%xmm0, %xmm0
	movss	%xmm4, 44(%eax)
	movss	%xmm0, 48(%eax)
	jmp	L747
	.cfi_endproc
LFE103:
	.p2align 4
	.def	__ZL16SF2_SetPitchBendiii;	.scl	3;	.type	32;	.endef
__ZL16SF2_SetPitchBendiii:
LFB104:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	__ZL9sf2_synth, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	16(%esp), %edi
	movl	24(%esp), %ebx
	movl	%esi, %eax
	movl	%edi, %edx
	sall	$7, %ebx
	orl	20(%esp), %ebx
	call	_tsf_channel_init
	movzwl	4(%eax), %edx
	cmpl	%edx, %ebx
	je	L761
	movw	%bx, 4(%eax)
	movl	%eax, %ecx
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	movl	%edi, %edx
	movl	%esi, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	_tsf_channel_applypitch
	.p2align 4,,10
	.p2align 3
L761:
	.cfi_restore_state
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
LFE104:
	.p2align 4
	.def	__ZL10SF2_NoteOniii;	.scl	3;	.type	32;	.endef
__ZL10SF2_NoteOniii:
LFB107:
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
	subl	$80, %esp
	movl	4(%ecx), %edi
	movl	(%ecx), %eax
	movl	8(%ecx), %edx
	movl	%edi, -20(%ebp)
	movl	__ZL9sf2_synth, %edi
	movl	12(%edi), %ecx
	movl	%edi, -24(%ebp)
	testl	%ecx, %ecx
	je	L764
	cmpl	4(%ecx), %eax
	jl	L863
L764:
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
L863:
	.cfi_restore_state
	movl	%eax, 8(%ecx)
	sall	$5, %eax
	addl	12(%edi), %eax
	movzwl	12(%eax), %eax
	movl	%eax, -52(%ebp)
	cmpl	16(%edi), %eax
	jge	L764
	xorps	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm1
	mulss	LC61, %xmm1
	comiss	%xmm1, %xmm0
	jnb	L864
	movl	-24(%ebp), %edi
	movl	28(%edi), %eax
	movl	%eax, -60(%ebp)
	addl	$1, %eax
	movl	%eax, 28(%edi)
	movl	-52(%ebp), %eax
	sall	$5, %eax
	addl	(%edi), %eax
	movl	24(%eax), %esi
	imull	$168, 28(%eax), %eax
	addl	%esi, %eax
	movl	%eax, -24(%ebp)
	cmpl	%eax, %esi
	je	L764
	movss	LC62, %xmm0
	movss	%xmm1, -64(%ebp)
	mulss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -44(%ebp)
	.p2align 4
	.p2align 3
L813:
	movzbl	8(%esi), %eax
	movl	-20(%ebp), %ecx
	cmpl	%eax, %ecx
	jl	L777
	movzbl	9(%esi), %eax
	cmpl	%eax, %ecx
	jg	L777
	movswl	-44(%ebp), %edx
	movzbl	10(%esi), %eax
	movl	%edx, -28(%ebp)
	cmpl	%eax, %edx
	jl	L777
	movzbl	11(%esi), %eax
	cmpl	%eax, %edx
	jg	L777
	movl	20(%edi), %ecx
	movl	8(%edi), %eax
	movl	%ecx, %edx
	movl	%eax, %ebx
	sall	$8, %edx
	addl	%eax, %edx
	cmpl	$0, 12(%esi)
	jne	L778
	cmpl	%edx, %eax
	jne	L779
	jmp	L780
	.p2align 4
	.p2align 4,,10
	.p2align 3
L865:
	addl	$256, %eax
	cmpl	%eax, %edx
	je	L790
L779:
	cmpl	$-1, (%eax)
	jne	L865
	movl	%eax, %ebx
L789:
	movss	LC63, %xmm3
	movl	-52(%ebp), %eax
	movl	%esi, 12(%ebx)
	movl	%eax, (%ebx)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%ebx)
	movl	-60(%ebp), %eax
	movl	%eax, 52(%ebx)
	movss	44(%edi), %xmm0
	movss	48(%esi), %xmm2
	divss	LC48, %xmm2
	subss	%xmm2, %xmm0
	movss	LC18, %xmm2
	divss	-64(%ebp), %xmm2
	comiss	%xmm2, %xmm3
	jb	L866
	movss	LC49, %xmm2
	movss	LC64, %xmm5
	subss	%xmm2, %xmm0
	movss	%xmm5, -48(%ebp)
	movss	%xmm0, 40(%ebx)
	movl	12(%edi), %eax
	testl	%eax, %eax
	je	L800
L869:
	movl	%ebx, 4(%esp)
	movl	%edi, (%esp)
	call	*(%eax)
L801:
	movl	16(%esi), %eax
	xorl	%edx, %edx
	movl	%edx, -36(%ebp)
	movl	%eax, -40(%ebp)
	fildq	-40(%ebp)
	fstpl	32(%ebx)
	movl	(%esi), %edx
	testl	%edx, %edx
	je	L808
	movl	24(%esi), %eax
	cmpl	28(%esi), %eax
	jnb	L808
	movl	%eax, 56(%ebx)
	movl	28(%esi), %eax
L809:
	movl	%eax, 60(%ebx)
	movss	40(%edi), %xmm0
	leal	56(%esi), %edx
	leal	64(%ebx), %eax
	movl	$1, 4(%esp)
	movl	-28(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	-20(%ebp), %ecx
	call	_tsf_voice_envelope_setup
	movss	40(%edi), %xmm0
	leal	116(%ebx), %eax
	leal	88(%esi), %edx
	movl	$0, 4(%esp)
	movl	-28(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	-20(%ebp), %ecx
	call	_tsf_voice_envelope_setup
	movl	124(%esi), %eax
	cmpl	$13500, %eax
	jle	L867
	xorps	%xmm0, %xmm0
	cvtsi2ssl	120(%esi), %xmm0
	divss	LC48, %xmm0
	movss	%xmm0, -28(%ebp)
	flds	-28(%ebp)
	fdivs	-48(%ebp)
	movl	$0, (%esp)
	movl	$1076101120, 4(%esp)
	fstpl	8(%esp)
	call	_pow
	fdivrl	LC59
	movss	LC8, %xmm1
	movl	$0, 216(%ebx)
	movss	LC20, %xmm5
	movss	LC65, %xmm4
	movl	$0, 220(%ebx)
	movl	$0, 208(%ebx)
	movl	$0, 212(%ebx)
	movb	$0, 224(%ebx)
	movss	%xmm1, -32(%ebp)
	movss	%xmm5, -28(%ebp)
	movss	%xmm4, -40(%ebp)
	fstpl	168(%ebx)
L811:
	movss	40(%edi), %xmm2
	movl	148(%esi), %eax
	movaps	%xmm2, %xmm0
	movss	%xmm2, -56(%ebp)
	mulss	144(%esi), %xmm0
	cvttss2sil	%xmm0, %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	divss	-32(%ebp), %xmm0
	movss	%xmm0, -48(%ebp)
	flds	-48(%ebp)
	movl	%edx, 232(%ebx)
	fstpl	8(%esp)
	flds	-28(%ebp)
	fstpl	(%esp)
	call	_pow
	movl	$0x00000000, 236(%ebx)
	fstps	-48(%ebp)
	movss	-48(%ebp), %xmm0
	mulss	-40(%ebp), %xmm0
	mulss	LC67, %xmm0
	divss	-56(%ebp), %xmm0
	movss	%xmm0, 240(%ebx)
	movss	40(%edi), %xmm2
	movl	160(%esi), %eax
	movaps	%xmm2, %xmm0
	movss	%xmm2, -48(%ebp)
	mulss	156(%esi), %xmm0
	cvttss2sil	%xmm0, %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	divss	-32(%ebp), %xmm0
	movss	%xmm0, -32(%ebp)
	flds	-32(%ebp)
	movl	%edx, 244(%ebx)
	fstpl	8(%esp)
	flds	-28(%ebp)
	fstpl	(%esp)
	call	_pow
	movl	$0x00000000, 248(%ebx)
	fstps	-28(%ebp)
	movss	-28(%ebp), %xmm0
	mulss	-40(%ebp), %xmm0
	mulss	LC67, %xmm0
	divss	-48(%ebp), %xmm0
	movss	%xmm0, 252(%ebx)
	.p2align 4
	.p2align 3
L777:
	addl	$168, %esi
	cmpl	%esi, -24(%ebp)
	jne	L813
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
L808:
	.cfi_restore_state
	movl	$0, 56(%ebx)
	xorl	%eax, %eax
	jmp	L809
	.p2align 4,,10
	.p2align 3
L778:
	cmpl	%edx, %eax
	je	L780
	movl	%esi, -40(%ebp)
	movl	-52(%ebp), %ecx
	xorl	%esi, %esi
	movl	%edi, -32(%ebp)
	jmp	L787
	.p2align 4,,10
	.p2align 3
L781:
	cmpl	$-1, %edi
	jne	L783
	testl	%esi, %esi
	cmove	%ebx, %esi
L783:
	addl	$256, %ebx
	cmpl	%ebx, %edx
	je	L868
L787:
	movl	(%ebx), %edi
	cmpl	%edi, %ecx
	jne	L781
	movl	-40(%ebp), %eax
	movl	12(%ebx), %edi
	movl	12(%eax), %eax
	cmpl	%eax, 12(%edi)
	jne	L783
	movl	-32(%ebp), %eax
	movl	%ecx, -68(%ebp)
	movl	%edx, -72(%ebp)
	movl	24(%eax), %edi
	xorl	%eax, %eax
	movl	%esi, -76(%ebp)
	testl	%edi, %edi
	setne	%al
	movl	%eax, %edi
	leal	64(%ebx), %eax
	movl	%eax, -48(%ebp)
	leal	116(%ebx), %eax
	movl	%edi, %esi
	movl	-32(%ebp), %edi
	movl	%eax, -56(%ebp)
L784:
	movl	$0x00000000, 100(%ebx)
	movl	-48(%ebp), %eax
	movl	$5, %edx
	movss	40(%edi), %xmm0
	call	_tsf_voice_envelope_nextsegment
	movl	-56(%ebp), %eax
	movl	$5, %edx
	movl	$0x00000000, 152(%ebx)
	movss	40(%edi), %xmm0
	call	_tsf_voice_envelope_nextsegment
	subl	$1, %esi
	jnb	L784
	movl	-72(%ebp), %edx
	addl	$256, %ebx
	movl	-68(%ebp), %ecx
	movl	-76(%ebp), %esi
	cmpl	%ebx, %edx
	jne	L787
	.p2align 4
	.p2align 3
L868:
	movl	%esi, %ebx
	movl	-32(%ebp), %edi
	movl	-40(%ebp), %esi
	testl	%ebx, %ebx
	jne	L789
	movl	8(%edi), %ebx
	.p2align 4
	.p2align 3
L790:
	movl	24(%edi), %ecx
	movl	%ebx, %eax
	testl	%ecx, %ecx
	je	L791
	cmpl	%ebx, %edx
	je	L777
	movl	%esi, -40(%ebp)
	xorl	%ebx, %ebx
	xorps	%xmm5, %xmm5
	movl	$-999999999, %esi
	.p2align 4
	.p2align 3
L795:
	cmpw	$6, 76(%eax)
	jne	L792
	movss	LC54, %xmm3
	movss	100(%eax), %xmm0
	movaps	%xmm0, %xmm2
	cmpless	%xmm5, %xmm2
	andps	%xmm2, %xmm3
	andnps	%xmm0, %xmm2
	movss	40(%edi), %xmm0
	orps	%xmm3, %xmm2
	mulss	%xmm2, %xmm0
	cvttss2sil	%xmm0, %ecx
	subl	72(%eax), %ecx
	cmpl	%esi, %ecx
	cmovg	%ecx, %esi
	cmovg	%eax, %ebx
L792:
	addl	$256, %eax
	cmpl	%eax, %edx
	jne	L795
	movl	-40(%ebp), %esi
	testl	%ebx, %ebx
	je	L777
	movl	$-1, (%ebx)
	jmp	L789
	.p2align 4,,10
	.p2align 3
L866:
	movss	%xmm0, -32(%ebp)
	movss	%xmm2, (%esp)
	call	_log10f
	movss	-32(%ebp), %xmm0
	movss	LC64, %xmm4
	fstps	-40(%ebp)
	movss	-40(%ebp), %xmm2
	movss	%xmm4, -48(%ebp)
	mulss	%xmm4, %xmm2
	subss	%xmm2, %xmm0
	movss	%xmm0, 40(%ebx)
	movl	12(%edi), %eax
	testl	%eax, %eax
	jne	L869
L800:
	movss	40(%edi), %xmm1
	xorps	%xmm0, %xmm0
	movl	%ebx, %eax
	call	_tsf_voice_calcpitchratio
	xorps	%xmm3, %xmm3
	movss	LC10, %xmm0
	movaps	%xmm0, %xmm2
	subss	52(%esi), %xmm2
	ucomiss	%xmm2, %xmm3
	ja	L858
	sqrtss	%xmm2, %xmm2
L804:
	movss	%xmm2, 44(%ebx)
	addss	52(%esi), %xmm0
	xorps	%xmm2, %xmm2
	ucomiss	%xmm0, %xmm2
	ja	L859
	sqrtss	%xmm0, %xmm0
L807:
	movss	%xmm0, 48(%ebx)
	jmp	L801
	.p2align 4,,10
	.p2align 3
L867:
	movss	LC8, %xmm1
	xorps	%xmm0, %xmm0
	movss	LC20, %xmm7
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm1, -32(%ebp)
	divss	%xmm1, %xmm0
	movss	%xmm0, -28(%ebp)
	flds	-28(%ebp)
	fstpl	8(%esp)
	movss	%xmm7, -28(%ebp)
	flds	-28(%ebp)
	fstpl	(%esp)
	call	_pow
	xorps	%xmm2, %xmm2
	movss	LC65, %xmm5
	fstps	-40(%ebp)
	cvtsi2ssl	120(%esi), %xmm2
	movss	-40(%ebp), %xmm0
	divss	LC48, %xmm2
	movss	%xmm2, -56(%ebp)
	flds	-56(%ebp)
	fdivs	-48(%ebp)
	mulss	%xmm5, %xmm0
	movss	%xmm5, -40(%ebp)
	divss	40(%edi), %xmm0
	movss	%xmm0, -68(%ebp)
	movl	$0, (%esp)
	movl	$1076101120, 4(%esp)
	fstpl	8(%esp)
	call	_pow
	fdivrl	LC59
	movss	-68(%ebp), %xmm0
	movl	$0, 216(%ebx)
	movss	LC66, %xmm2
	movl	$0, 220(%ebx)
	movl	$0, 208(%ebx)
	movl	$0, 212(%ebx)
	comiss	%xmm0, %xmm2
	seta	224(%ebx)
	fstpl	168(%ebx)
	jbe	L811
	leal	168(%ebx), %eax
	call	_tsf_voice_lowpass_setup
	jmp	L811
	.p2align 4,,10
	.p2align 3
L791:
	movl	20(%edi), %ecx
L814:
	leal	4(%ecx), %eax
	movl	%eax, 20(%edi)
	sall	$8, %eax
	movl	%eax, 4(%esp)
	movl	%eax, -40(%ebp)
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L855
	movl	-40(%ebp), %edx
	testl	%edx, %edx
	jne	L796
	testl	%eax, %eax
	je	L764
L855:
	movl	20(%edi), %eax
	movl	%ebx, 8(%edi)
	addl	$16777212, %eax
	sall	$8, %eax
	addl	%eax, %ebx
	movl	$-1, 768(%ebx)
	movl	$-1, 512(%ebx)
	movl	$-1, 256(%ebx)
	jmp	L789
	.p2align 4,,10
	.p2align 3
L780:
	movl	24(%edi), %eax
	testl	%eax, %eax
	je	L814
	jmp	L777
L864:
	movl	8(%edi), %eax
	movl	20(%edi), %edi
	movl	%edi, %edx
	movl	%edi, -28(%ebp)
	sall	$8, %edx
	addl	%eax, %edx
	cmpl	%edx, %eax
	je	L764
	movl	-52(%ebp), %ecx
	movl	-20(%ebp), %esi
	movl	$0, -28(%ebp)
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L773:
	cmpl	(%eax), %ecx
	jne	L770
	cmpl	4(%eax), %esi
	jne	L770
	cmpw	$5, 76(%eax)
	jg	L770
	testl	%edi, %edi
	je	L772
	movl	52(%edi), %ebx
	cmpl	%ebx, 52(%eax)
	jb	L772
	movl	-28(%ebp), %ebx
	cmove	%eax, %ebx
	movl	%ebx, -28(%ebp)
	.p2align 4
	.p2align 3
L770:
	addl	$256, %eax
	cmpl	%eax, %edx
	jne	L773
	movl	-28(%ebp), %ebx
	testl	%edi, %edi
	je	L764
	cmpl	%edi, %ebx
	jb	L764
	movl	%edi, %esi
	.p2align 4
	.p2align 3
L776:
	cmpl	%esi, %edi
	je	L774
	cmpl	%esi, %ebx
	je	L774
	movl	52(%edi), %eax
	cmpl	%eax, 52(%esi)
	jne	L775
	movl	-52(%ebp), %eax
	cmpl	(%esi), %eax
	jne	L775
	movl	-20(%ebp), %eax
	cmpl	4(%esi), %eax
	jne	L775
	cmpw	$5, 76(%esi)
	jg	L775
	.p2align 4
	.p2align 3
L774:
	movl	-24(%ebp), %eax
	movl	%esi, %edx
	call	_tsf_voice_end
L775:
	addl	$256, %esi
	cmpl	%esi, %ebx
	jnb	L776
	jmp	L764
L772:
	movl	%eax, -28(%ebp)
	movl	%eax, %edi
	jmp	L770
L796:
	movl	%edx, %eax
	call	__Z13handle_memerri
L859:
	movss	%xmm0, (%esp)
	call	_sqrtf
	fstps	-40(%ebp)
	movss	-40(%ebp), %xmm0
	jmp	L807
L858:
	movss	%xmm2, (%esp)
	call	_sqrtf
	movss	LC10, %xmm0
	fstps	-40(%ebp)
	movss	-40(%ebp), %xmm2
	jmp	L804
	.cfi_endproc
LFE107:
	.p2align 4
	.def	_tsf_channel_set_volume.isra.0;	.scl	3;	.type	32;	.endef
_tsf_channel_set_volume.isra.0:
LFB118:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movaps	%xmm0, %xmm1
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%edx, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 20
	movss	LC63, %xmm2
	movss	LC49, %xmm0
	comiss	%xmm1, %xmm2
	jb	L881
L871:
	movl	%ebx, %edx
	movl	%esi, %eax
	movss	%xmm0, 4(%esp)
	call	_tsf_channel_init
	movss	4(%esp), %xmm0
	movss	20(%eax), %xmm1
	movl	%eax, %ecx
	ucomiss	%xmm0, %xmm1
	jp	L878
	je	L870
L878:
	movl	20(%esi), %edx
	movl	8(%esi), %eax
	sall	$8, %edx
	addl	%eax, %edx
	cmpl	%edx, %eax
	je	L874
	movaps	%xmm0, %xmm2
	subss	%xmm1, %xmm2
	jmp	L876
	.p2align 4
	.p2align 4,,10
	.p2align 3
L875:
	addl	$256, %eax
	cmpl	%eax, %edx
	je	L874
L876:
	cmpl	8(%eax), %ebx
	jne	L875
	cmpl	$-1, (%eax)
	je	L875
	movss	40(%eax), %xmm1
	addl	$256, %eax
	addss	%xmm2, %xmm1
	movss	%xmm1, -216(%eax)
	cmpl	%eax, %edx
	jne	L876
	.p2align 4
	.p2align 3
L874:
	movss	%xmm0, 20(%ecx)
L870:
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
L881:
	.cfi_restore_state
	movss	%xmm1, (%esp)
	call	_log10f
	fstps	4(%esp)
	movss	4(%esp), %xmm0
	mulss	LC64, %xmm0
	jmp	L871
	.cfi_endproc
LFE118:
	.p2align 4
	.def	__ZL17SF2_ControlChangeiii;	.scl	3;	.type	32;	.endef
__ZL17SF2_ControlChangeiii:
LFB119:
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
	movl	16(%ebp), %eax
	movl	8(%ebp), %ebx
	movl	__ZL9sf2_synth, %esi
	movl	12(%ebp), %edi
	movl	%eax, 28(%esp)
	movl	%ebx, %edx
	movl	%esi, %eax
	call	_tsf_channel_init
	cmpl	$123, %edi
	ja	L882
	jmp	*L885(,%edi,4)
	.section .rdata,"dr"
	.align 4
L885:
	.long	L900
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L899
	.long	L898
	.long	L882
	.long	L882
	.long	L897
	.long	L896
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L895
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L894
	.long	L893
	.long	L882
	.long	L882
	.long	L892
	.long	L891
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L890
	.long	L890
	.long	L889
	.long	L888
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L882
	.long	L887
	.long	L886
	.long	L882
	.long	L884
	.text
	.p2align 4,,10
	.p2align 3
L890:
	movl	$-1, %edi
	movw	%di, 12(%eax)
L882:
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
L889:
	.cfi_restore_state
	movzwl	12(%eax), %ecx
	movl	%ecx, %edx
	andw	$16256, %dx
	cmpw	$-1, %cx
	movl	$0, %ecx
	cmove	%ecx, %edx
	orw	28(%esp), %dx
	movw	%dx, 12(%eax)
	jmp	L882
L891:
	movzwl	10(%eax), %edx
	movzwl	8(%eax), %edi
	andw	$16256, %dx
	orw	28(%esp), %dx
	movw	%dx, 10(%eax)
L901:
	movzwl	%dx, %edx
	movzwl	%di, %edi
	xorps	%xmm1, %xmm1
	flds	LC69
	movss	LC53, %xmm2
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edi, %xmm1
	cvtsi2ssl	%edx, %xmm0
	fstpl	8(%esp)
	divss	%xmm2, %xmm1
	divss	%xmm2, %xmm0
	mulss	%xmm0, %xmm1
	movss	%xmm1, 28(%esp)
	flds	28(%esp)
	fstpl	(%esp)
	call	_pow
	movl	%ebx, %edx
	movl	%esi, %eax
	fstps	28(%esp)
	movss	28(%esp), %xmm0
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
	jmp	_tsf_channel_set_volume.isra.0
L892:
	.cfi_restore_state
	movzwl	6(%eax), %edx
	movzwl	28(%esp), %edi
	andw	$16256, %dx
	orl	%edx, %edi
L902:
	movw	%di, 6(%eax)
	xorps	%xmm0, %xmm0
	movzwl	%di, %edi
	movl	%ebx, %edx
	cvtsi2ssl	%edi, %xmm0
	movl	%esi, %eax
	divss	LC53, %xmm0
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
	jmp	_tsf_channel_set_pan.isra.0
L893:
	.cfi_restore_state
	movzwl	8(%eax), %edx
	movzwl	28(%esp), %edi
	andw	$16256, %dx
	orl	%edx, %edi
	movzwl	10(%eax), %edx
	movw	%di, 8(%eax)
	jmp	L901
L894:
	movzwl	14(%eax), %edx
	movzwl	12(%eax), %ecx
	andw	$16256, %dx
	orw	28(%esp), %dx
	movw	%dx, 14(%eax)
	testw	%cx, %cx
	je	L903
	cmpw	$1, %cx
	jne	L882
L923:
	cvttss2sil	28(%eax), %eax
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	movzwl	%dx, %edx
	cvtsi2ssl	%edx, %xmm0
	subss	LC70, %xmm0
	mulss	LC71, %xmm0
	cvtsi2ssl	%eax, %xmm1
L957:
	addss	%xmm1, %xmm0
	movl	%ebx, %edx
	movl	%esi, %eax
	movss	%xmm0, 28(%esp)
	call	_tsf_channel_init
	movss	28(%esp), %xmm0
	ucomiss	28(%eax), %xmm0
	jp	L935
	je	L882
L935:
	movss	%xmm0, 28(%eax)
L954:
	leal	-12(%ebp), %esp
	movl	%eax, %ecx
	movl	%ebx, %edx
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
	jmp	_tsf_channel_applypitch
L895:
	.cfi_restore_state
	movzwl	2(%eax), %ecx
	movl	%ecx, %edx
	sall	$7, %edx
	andw	$16256, %dx
	testw	%cx, %cx
	movl	$0, %ecx
	cmovns	%ecx, %edx
	orw	28(%esp), %dx
	movw	%dx, 2(%eax)
	jmp	L882
L896:
	movzwl	10(%eax), %edx
	movzwl	28(%esp), %edi
	andl	$127, %edx
	sall	$7, %edi
	orl	%edi, %edx
	movzwl	8(%eax), %edi
	movw	%dx, 10(%eax)
	jmp	L901
L897:
	movzwl	6(%eax), %edx
	movzwl	28(%esp), %edi
	andl	$127, %edx
	sall	$7, %edi
	orl	%edx, %edi
	jmp	L902
L898:
	movzwl	8(%eax), %edx
	movzwl	28(%esp), %edi
	andl	$127, %edx
	sall	$7, %edi
	orl	%edx, %edi
	movzwl	10(%eax), %edx
	movw	%di, 8(%eax)
	jmp	L901
L899:
	movzwl	14(%eax), %edx
	movzwl	28(%esp), %ecx
	andl	$127, %edx
	sall	$7, %ecx
	orl	%ecx, %edx
	movzwl	12(%eax), %ecx
	movw	%dx, 14(%eax)
	testw	%cx, %cx
	je	L903
	cmpw	$1, %cx
	je	L923
	cmpw	$2, %cx
	jne	L882
	movss	28(%eax), %xmm0
	xorps	%xmm1, %xmm1
	cvttss2sil	%xmm0, %eax
	cvtsi2ssl	%eax, %xmm1
	subss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	28(%esp), %xmm1
	subss	LC72, %xmm1
	jmp	L957
	.p2align 4,,10
	.p2align 3
L900:
	movzwl	28(%esp), %edi
	orw	$-32768, %di
	movw	%di, 2(%eax)
	jmp	L882
L884:
	movl	20(%esi), %ecx
	movl	8(%esi), %edi
	sall	$8, %ecx
	addl	%edi, %ecx
	cmpl	%ecx, %edi
	je	L882
	movl	%esi, 28(%esp)
	movl	%ebx, %esi
	movl	%ecx, %ebx
	jmp	L919
	.p2align 4
	.p2align 4,,10
	.p2align 3
L918:
	addl	$256, %edi
	cmpl	%edi, %ebx
	je	L882
L919:
	cmpl	$-1, (%edi)
	je	L918
	cmpl	8(%edi), %esi
	jne	L918
	cmpw	$5, 76(%edi)
	jg	L918
	movl	28(%esp), %eax
	movl	%edi, %edx
	call	_tsf_voice_end
	jmp	L918
L886:
	xorl	%ecx, %ecx
	movlps	LC68, %xmm0
	xorl	%edx, %edx
	movw	%cx, 14(%eax)
	movw	%dx, 2(%eax)
	movl	%ebx, %edx
	movlps	%xmm0, 6(%eax)
	movl	%esi, %eax
	movss	LC18, %xmm0
	call	_tsf_channel_set_volume.isra.0
	movl	%ebx, %edx
	movl	%esi, %eax
	movss	LC10, %xmm0
	call	_tsf_channel_set_pan.isra.0
	movl	%ebx, %edx
	movl	%esi, %eax
	call	_tsf_channel_init
	movss	24(%eax), %xmm0
	ucomiss	LC20, %xmm0
	jp	L931
	je	L920
L931:
	movl	$0x40000000, 24(%eax)
	cmpw	$8192, 4(%eax)
	je	L920
	movl	%eax, %ecx
	movl	%ebx, %edx
	movl	%esi, %eax
	call	_tsf_channel_applypitch
L920:
	movl	%ebx, %edx
	movl	%esi, %eax
	call	_tsf_channel_init
	xorps	%xmm0, %xmm0
	ucomiss	28(%eax), %xmm0
	jp	L932
	je	L882
L932:
	movl	$0x00000000, 28(%eax)
	jmp	L954
L887:
	movl	20(%esi), %edx
	movl	8(%esi), %eax
	sall	$8, %edx
	leal	(%eax,%edx), %edi
	cmpl	%edi, %eax
	je	L882
	movl	%ebx, %edx
	movl	%esi, %ecx
	movl	%eax, %ebx
	jmp	L917
	.p2align 4
	.p2align 4,,10
	.p2align 3
L909:
	addl	$256, %ebx
	cmpl	%ebx, %edi
	je	L882
L917:
	cmpl	$-1, (%ebx)
	je	L909
	cmpl	8(%ebx), %edx
	jne	L909
	cmpw	$5, 76(%ebx)
	jle	L910
	xorps	%xmm0, %xmm0
	ucomiss	100(%ebx), %xmm0
	jp	L910
	je	L909
L910:
	movl	24(%ecx), %esi
	xorl	%eax, %eax
	movl	%edx, 20(%esp)
	movl	%edi, 24(%esp)
	movl	%ecx, %edi
	testl	%esi, %esi
	setne	%al
	movl	%eax, %esi
	movzbl	113(%ebx), %eax
	movb	%al, 28(%esp)
L916:
	movl	$0x00000000, 100(%ebx)
	movss	40(%edi), %xmm0
	movl	$6, %eax
	xorps	%xmm1, %xmm1
	mulss	LC54, %xmm0
	movw	%ax, 76(%ebx)
	cvttss2sil	%xmm0, %eax
	cvtsi2ssl	%eax, %xmm1
	movl	%eax, 72(%ebx)
	cmpb	$0, 28(%esp)
	jne	L958
	movss	64(%ebx), %xmm0
	xorps	LC19, %xmm0
	xorl	%eax, %eax
	divss	%xmm1, %xmm0
L913:
	movb	%al, 112(%ebx)
	movl	$6, %eax
	xorps	%xmm1, %xmm1
	movl	$0x00000000, 152(%ebx)
	movss	%xmm0, 68(%ebx)
	movss	40(%edi), %xmm0
	mulss	LC54, %xmm0
	movw	%ax, 128(%ebx)
	movzbl	165(%ebx), %eax
	cvttss2sil	%xmm0, %edx
	cvtsi2ssl	%edx, %xmm1
	movl	%edx, 124(%ebx)
	testb	%al, %al
	jne	L959
	movss	116(%ebx), %xmm0
	xorps	LC19, %xmm0
	divss	%xmm1, %xmm0
L915:
	movb	%al, 164(%ebx)
	movss	%xmm0, 120(%ebx)
	subl	$1, %esi
	jnb	L916
	movl	%edi, %ecx
	movl	20(%esp), %edx
	movl	24(%esp), %edi
	jmp	L909
L888:
	movzwl	12(%eax), %ecx
	movzwl	28(%esp), %edi
	movl	%ecx, %edx
	andl	$127, %edx
	cmpw	$-1, %cx
	movl	$0, %ecx
	cmove	%ecx, %edx
	sall	$7, %edi
	orl	%edx, %edi
	movw	%di, 12(%eax)
	jmp	L882
	.p2align 4,,10
	.p2align 3
L959:
	movss	LC55, %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, 16(%esp)
	flds	16(%esp)
	fstpl	(%esp)
	call	_exp
	movl	$1, %eax
	fstps	16(%esp)
	movss	16(%esp), %xmm0
	jmp	L915
	.p2align 4,,10
	.p2align 3
L958:
	movss	LC55, %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, 16(%esp)
	flds	16(%esp)
	fstpl	(%esp)
	call	_exp
	movl	$1, %eax
	fstps	16(%esp)
	movss	16(%esp), %xmm0
	jmp	L913
	.p2align 4,,10
	.p2align 3
L903:
	movl	%edx, %eax
	xorps	%xmm0, %xmm0
	shrw	$7, %dx
	xorps	%xmm1, %xmm1
	andl	$127, %eax
	movzwl	%dx, %edx
	cvtsi2ssl	%eax, %xmm0
	movl	%esi, %eax
	mulss	LC54, %xmm0
	cvtsi2ssl	%edx, %xmm1
	movl	%ebx, %edx
	addss	%xmm1, %xmm0
	movss	%xmm0, 28(%esp)
	call	_tsf_channel_init
	movss	28(%esp), %xmm0
	ucomiss	24(%eax), %xmm0
	jp	L933
	je	L882
L933:
	movss	%xmm0, 24(%eax)
	cmpw	$8192, 4(%eax)
	je	L882
	jmp	L954
	.cfi_endproc
LFE119:
	.p2align 4
	.def	__ZL15sf2_stream_readPvS_j;	.scl	3;	.type	32;	.endef
__ZL15sf2_stream_readPvS_j:
LFB128:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	8(%esp), %edx
	movl	12(%esp), %ecx
	movl	(%eax), %eax
	movl	$__ZL7filepos.lto_priv.0, 12(%esp)
	movl	$__ZL7filehan.lto_priv.0, 8(%esp)
	movl	$__ZL7filegrp.lto_priv.0, 4(%esp)
	jmp	__Z14kread_internaliPviPKhPKiPi
	.cfi_endproc
LFE128:
	.p2align 4
	.def	__ZL15sf2_stream_skipPvj;	.scl	3;	.type	32;	.endef
__ZL15sf2_stream_skipPvj:
LFB130:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	$1, %ecx
	movl	16(%esp), %eax
	movl	20(%esp), %edx
	movl	(%eax), %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z15klseek_internaliiiPKhPiS1_
	testl	%eax, %eax
	sete	%al
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	movzbl	%al, %eax
	ret
	.cfi_endproc
LFE130:
	.p2align 4
	.globl	__Z20SF2Drv_MIDI_Shutdownv
	.def	__Z20SF2Drv_MIDI_Shutdownv;	.scl	2;	.type	32;	.endef
__Z20SF2Drv_MIDI_Shutdownv:
LFB132:
	.cfi_startproc
	call	_MV_UnhookMusicRoutine
	movl	__ZL9sf2_synth, %eax
	call	_tsf_close
	movl	$0, __ZL9sf2_synth
	movl	$0, __ZL9ErrorCode.lto_priv.2
	ret
	.cfi_endproc
LFE132:
	.section .rdata,"dr"
LC75:
	.ascii "/\0"
LC76:
	.ascii "No .sf2 data found!\0"
	.align 4
LC77:
	.ascii "source/audiolib/src/driver_sf2.cpp\0"
LC80:
	.ascii "Loaded \"%s\"\0"
LC81:
	.ascii "Unable to load \"%s\"!\0"
	.text
	.p2align 4
	.globl	__Z16SF2Drv_MIDI_InitP9midifuncs
	.def	__Z16SF2Drv_MIDI_InitP9midifuncs;	.scl	2;	.type	32;	.endef
__Z16SF2Drv_MIDI_InitP9midifuncs:
LFB134:
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
	subl	$1164, %esp
	movl	(%ecx), %eax
	movl	%eax, -892(%ebp)
	call	_MV_UnhookMusicRoutine
	movl	__ZL9sf2_synth, %eax
	call	_tsf_close
	movl	$0, __ZL9sf2_synth
	movl	$0, __ZL9ErrorCode.lto_priv.2
	cmpb	$0, _SF2_BankFile
	jne	L1118
	movl	$_g_modDir, %edx
	leal	-192(%ebp), %eax
	movl	$0, -184(%ebp)
	movl	$0, -180(%ebp)
	movl	$0, -192(%ebp)
	movl	$0, -188(%ebp)
	call	_fnlist_getnames.constprop.0.isra.0
	movl	-188(%ebp), %ebx
	testl	%ebx, %ebx
	je	L966
	movl	-192(%ebp), %esi
L967:
	movl	(%ebx), %edx
	movl	%edx, (%esp)
	movl	%edx, -832(%ebp)
	call	_strlen
	movl	%eax, %edi
	leal	1(%eax), %eax
	movl	%eax, -824(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1009
	movl	-832(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, -844(%ebp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	-844(%ebp), %eax
	movb	$0, (%eax,%edi)
	testl	%esi, %esi
	je	L974
	.p2align 4
	.p2align 3
L973:
	movl	%esi, %eax
	movl	12(%esi), %esi
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	testl	%esi, %esi
	jne	L973
	testl	%ebx, %ebx
	je	L972
	.p2align 4
	.p2align 3
L974:
	movl	%ebx, %eax
	movl	12(%ebx), %ebx
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	testl	%ebx, %ebx
	jne	L974
L972:
	movl	-844(%ebp), %eax
	cmpb	$0, (%eax)
	jne	L965
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L976
	movl	$LC76, 12(%esp)
	movl	$122, 8(%esp)
	movl	$LC77, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L976
	.p2align 4,,10
	.p2align 3
L1118:
	movl	$_SF2_BankFile, -844(%ebp)
L965:
	movl	-844(%ebp), %eax
	leal	-820(%ebp), %edi
	call	_kopen4loadfrommod.constprop.0
	movl	%edi, -800(%ebp)
	movss	LC82, %xmm0
	movl	$__ZL15sf2_stream_skipPvj, -832(%ebp)
	movss	-832(%ebp), %xmm1
	movl	%eax, -820(%ebp)
	unpcklps	%xmm1, %xmm0
	movlps	%xmm0, -796(%ebp)
	cmpl	$-1, %eax
	je	L978
	movl	__ZL9sf2_synth, %eax
	call	_tsf_close
	xorl	%eax, %eax
	leal	-800(%ebp), %ecx
	leal	-816(%ebp), %edx
	call	_tsf_riffchunk_read
	testb	%al, %al
	je	L979
	cmpl	$1801610867, -816(%ebp)
	je	L980
L979:
	xorl	%edi, %edi
L981:
	movl	-820(%ebp), %eax
	movl	%edi, __ZL9sf2_synth
	call	_kclose
	movl	__ZL9sf2_synth, %edx
	testl	%edx, %edx
	jne	L1255
L978:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1256
	movl	-844(%ebp), %eax
	cmpl	$_SF2_BankFile, %eax
	je	L976
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L976:
	movl	$1, __ZL9ErrorCode.lto_priv.2
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
L1256:
	.cfi_restore_state
	movl	-844(%ebp), %esi
	movl	$LC81, 12(%esp)
	movl	$95, 8(%esp)
	movl	%esi, 16(%esp)
	movl	$LC77, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	cmpl	$_SF2_BankFile, %esi
	je	L976
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L976
	.p2align 4,,10
	.p2align 3
L1255:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$3, %eax
	jg	L1257
	movl	-844(%ebp), %eax
	cmpl	$_SF2_BankFile, %eax
	je	L1114
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1111:
	movl	__ZL9sf2_synth, %eax
	testl	%eax, %eax
	je	L976
L1114:
	movl	-892(%ebp), %edx
	xorl	%eax, %eax
	movl	$0, 32(%edx)
	movl	$0, 36(%edx)
	movl	$0, 40(%edx)
	movl	$0, 44(%edx)
L1116:
	movl	$0, 8(%edx,%eax)
	movl	$0, 12(%edx,%eax)
	movl	$0, 16(%edx,%eax)
	movl	$0, 20(%edx,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L1116
	movl	$__ZL10SF2_NoteOniii, -832(%ebp)
	movss	LC83, %xmm0
	movss	-832(%ebp), %xmm1
	movl	-892(%ebp), %eax
	movl	$__ZL17SF2_ProgramChangeii, -832(%ebp)
	movl	$255, __ZL10SF2_Volume
	unpcklps	%xmm1, %xmm0
	movss	-832(%ebp), %xmm1
	movl	$__ZL16SF2_SetPitchBendiii, 24(%eax)
	movlps	%xmm0, (%eax)
	movss	LC84, %xmm0
	movl	$__ZL13SF2_SetVolumei, 36(%eax)
	unpcklps	%xmm1, %xmm0
	movlps	%xmm0, 12(%eax)
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
L966:
	.cfi_restore_state
	movl	$LC75, %edx
	leal	-192(%ebp), %eax
	call	_fnlist_getnames.constprop.0.isra.0
	movl	-188(%ebp), %ebx
	movl	-192(%ebp), %esi
	testl	%ebx, %ebx
	jne	L967
	movl	$_SF2_BankFile, -844(%ebp)
	testl	%esi, %esi
	jne	L973
	jmp	L972
	.p2align 4,,10
	.p2align 3
L980:
	xorl	%eax, %eax
L982:
	movl	$0, -784(%ebp,%eax)
	movl	$0, -780(%ebp,%eax)
	movl	$0, -776(%ebp,%eax)
	movl	$0, -772(%ebp,%eax)
	addl	$16, %eax
	cmpl	$64, %eax
	jb	L982
	movl	$0, -784(%ebp,%eax)
	xorl	%esi, %esi
	movl	$0, -780(%ebp,%eax)
	movl	$0, -1080(%ebp)
	movl	$0, -832(%ebp)
	movl	$0, -1060(%ebp)
	movl	$0, -988(%ebp)
	movl	$0, -1124(%ebp)
	movl	$0, -1028(%ebp)
	movl	$0, -1092(%ebp)
	movl	$0, -1084(%ebp)
	movl	$0, -1108(%ebp)
	movl	$0, -1088(%ebp)
	movl	$0, -1096(%ebp)
	movl	$0, -992(%ebp)
	jmp	L984
	.p2align 4,,10
	.p2align 3
L985:
	cmpl	$1635017843, %eax
	je	L1028
L987:
	movl	-804(%ebp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	__ZL15sf2_stream_skipPvj
L984:
	leal	-800(%ebp), %ecx
	leal	-808(%ebp), %edx
	leal	-816(%ebp), %eax
	call	_tsf_riffchunk_read
	testb	%al, %al
	je	L1258
	movl	-808(%ebp), %eax
	cmpb	$112, -808(%ebp)
	jne	L985
	xorb	%al, %al
	cmpl	$1635017728, %eax
	jne	L987
	jmp	L986
	.p2align 4,,10
	.p2align 3
L988:
	cmpb	$105, %dl
	jne	L990
	xorb	%al, %al
	cmpl	$1953721856, %eax
	je	L1259
	cmpl	$1734435328, %eax
	je	L1260
	cmpl	$1685024000, %eax
	je	L1261
	cmpl	$1852139264, %eax
	je	L1262
L998:
	movl	%ebx, 4(%esp)
	movl	%edi, (%esp)
	call	__ZL15sf2_stream_skipPvj
L986:
	leal	-800(%ebp), %ecx
	leal	-192(%ebp), %edx
	leal	-808(%ebp), %eax
	call	_tsf_riffchunk_read
	testb	%al, %al
	je	L984
	movzbl	-192(%ebp), %edx
	movl	-192(%ebp), %eax
	movl	-188(%ebp), %ebx
	cmpb	$112, %dl
	jne	L988
	movl	%eax, %edx
	xorb	%dl, %dl
	cmpl	$1919182848, %edx
	je	L1263
	cmpl	$1734435328, %edx
	je	L995
	cmpl	$1685024000, %edx
	je	L996
	cmpl	$1852139264, %edx
	jne	L998
	testb	$3, %bl
	jne	L998
	shrl	$2, %ebx
	leal	0(,%ebx,4), %edx
	movl	%ebx, -736(%ebp)
	movl	%ebx, -824(%ebp)
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -836(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -1084(%ebp)
	testl	%eax, %eax
	je	L1023
	movl	%eax, %ebx
	movl	-824(%ebp), %eax
	testl	%eax, %eax
	je	L986
	movl	%esi, -836(%ebp)
	xorl	%esi, %esi
L1007:
	movl	%ebx, 4(%esp)
	addl	$1, %esi
	movl	$2, 8(%esp)
	movl	%edi, (%esp)
	call	__ZL15sf2_stream_readPvS_j
	leal	2(%ebx), %eax
	movl	%edi, (%esp)
	addl	$4, %ebx
	movl	$2, 8(%esp)
	movl	%eax, 4(%esp)
	call	__ZL15sf2_stream_readPvS_j
	cmpl	%esi, -824(%ebp)
	jne	L1007
L1252:
	movl	-836(%ebp), %esi
	jmp	L986
	.p2align 4,,10
	.p2align 3
L1257:
	movl	-844(%ebp), %esi
	movl	$LC80, 12(%esp)
	movl	$90, 8(%esp)
	movl	%esi, 16(%esp)
	movl	$LC77, 4(%esp)
	movl	$4, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	cmpl	$_SF2_BankFile, %esi
	je	L1111
	movl	-844(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L1111
	.p2align 4,,10
	.p2align 3
L1029:
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	__ZL15sf2_stream_skipPvj
L1028:
	leal	-800(%ebp), %ecx
	leal	-192(%ebp), %edx
	leal	-808(%ebp), %eax
	call	_tsf_riffchunk_read
	testb	%al, %al
	je	L984
	movl	-188(%ebp), %eax
	cmpl	$1819307379, -192(%ebp)
	jne	L1029
	testl	%esi, %esi
	jne	L1029
	cmpl	$1, %eax
	jbe	L1029
	shrl	%eax
	leal	0(,%eax,4), %esi
	movl	%eax, -992(%ebp)
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	movl	%eax, %ebx
	pushl	%edx
	testl	%eax, %eax
	je	L1030
	movl	-188(%ebp), %eax
	movl	%ebx, 4(%esp)
	movl	%edi, (%esp)
	movl	%eax, 8(%esp)
	call	__ZL15sf2_stream_readPvS_j
	testl	%eax, %eax
	je	L1264
	addl	%ebx, %esi
	cmpl	%esi, %ebx
	je	L1028
	movl	-992(%ebp), %eax
	movl	%esi, %edx
	addl	%eax, %eax
	addl	%ebx, %eax
L1034:
	filds	-2(%eax)
	fdivs	LC78
	subl	$4, %edx
	subl	$2, %eax
	fstps	-824(%ebp)
	movss	-824(%ebp), %xmm0
	movss	%xmm0, (%edx)
	cmpl	%edx, %ebx
	jne	L1034
	imull	$-4, -992(%ebp), %eax
	addl	%eax, %esi
	jmp	L1028
	.p2align 4,,10
	.p2align 3
L990:
	cmpl	$1919182963, %eax
	jne	L998
	imull	$-373475417, %ebx, %eax
	rorl	%eax
	cmpl	$93368854, %eax
	ja	L998
	movl	$-1307163959, %eax
	mull	%ebx
	shrl	$5, %edx
	movl	%edx, -824(%ebp)
	movl	%edx, -716(%ebp)
	leal	(%edx,%edx,2), %edx
	sall	$4, %edx
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -836(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -1060(%ebp)
	testl	%eax, %eax
	je	L1023
	cmpl	$45, %ebx
	jbe	L986
	movl	%esi, -836(%ebp)
	movl	%eax, %ebx
	xorl	%esi, %esi
L1025:
	movl	%ebx, 4(%esp)
	addl	$1, %esi
	movl	$20, 8(%esp)
	movl	%edi, (%esp)
	call	__ZL15sf2_stream_readPvS_j
	leal	20(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	__ZL15sf2_stream_readPvS_j
	leal	24(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	__ZL15sf2_stream_readPvS_j
	leal	28(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	__ZL15sf2_stream_readPvS_j
	leal	32(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	__ZL15sf2_stream_readPvS_j
	leal	36(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	__ZL15sf2_stream_readPvS_j
	leal	40(%ebx), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	__ZL15sf2_stream_readPvS_j
	leal	41(%ebx), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	__ZL15sf2_stream_readPvS_j
	leal	42(%ebx), %eax
	movl	$2, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	__ZL15sf2_stream_readPvS_j
	leal	44(%ebx), %eax
	movl	%edi, (%esp)
	addl	$48, %ebx
	movl	$2, 8(%esp)
	movl	%eax, 4(%esp)
	call	__ZL15sf2_stream_readPvS_j
	cmpl	%esi, -824(%ebp)
	jne	L1025
	jmp	L1252
	.p2align 4,,10
	.p2align 3
L1258:
	movl	-1096(%ebp), %ecx
	testl	%ecx, %ecx
	je	L1129
	movl	-1088(%ebp), %edx
	testl	%edx, %edx
	je	L1129
	movl	-1108(%ebp), %eax
	testl	%eax, %eax
	je	L1129
	movl	-1084(%ebp), %eax
	testl	%eax, %eax
	je	L1129
	movl	-1092(%ebp), %eax
	testl	%eax, %eax
	je	L1129
	movl	-1028(%ebp), %eax
	testl	%eax, %eax
	je	L1129
	movl	-1124(%ebp), %eax
	testl	%eax, %eax
	je	L1129
	movl	-988(%ebp), %edi
	testl	%edi, %edi
	je	L1129
	movl	-1060(%ebp), %ebx
	testl	%ebx, %ebx
	je	L1129
	testl	%esi, %esi
	je	L1129
	movl	$52, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1265
	movl	$0, 36(%eax)
	movl	$0, 40(%eax)
	movl	$0, 44(%eax)
	movl	$0, 48(%eax)
	xorl	%eax, %eax
L1039:
	movl	$0, (%edi,%eax)
	movl	$0, 4(%edi,%eax)
	movl	$0, 8(%edi,%eax)
	movl	$0, 12(%edi,%eax)
	addl	$16, %eax
	cmpl	$48, %eax
	jb	L1039
	movl	-832(%ebp), %ebx
	subl	$1, %ebx
	movl	%ebx, %edx
	movl	%ebx, 16(%edi)
	sall	$5, %edx
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -832(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	pushl	%ecx
	testl	%eax, %eax
	je	L1041
	movl	16(%edi), %edx
	movl	%eax, (%edi)
	testl	%edx, %edx
	je	L1043
	movl	$0, 24(%eax)
	cmpl	$1, 16(%edi)
	je	L1043
	movl	$1, %eax
L1044:
	movl	%eax, %edx
	addl	$1, %eax
	sall	$5, %edx
	addl	(%edi), %edx
	movl	$0, 24(%edx)
	cmpl	16(%edi), %eax
	jne	L1044
L1043:
	movss	LC6, %xmm4
	leal	(%ebx,%ebx,4), %eax
	movl	-1096(%ebp), %ebx
	leal	(%ebx,%eax,8), %edx
	shufps	$0, %xmm4, %xmm4
	movl	%ebx, -1128(%ebp)
	movl	%edx, -1136(%ebp)
	movups	%xmm4, -1160(%ebp)
	cmpl	%ebx, %edx
	je	L1046
	movl	%edi, -1140(%ebp)
	movl	%esi, -1144(%ebp)
L1045:
	movl	-1096(%ebp), %eax
	movl	-1136(%ebp), %edi
	xorl	%ebx, %ebx
	movl	-1128(%ebp), %esi
	jmp	L1052
L1050:
	movzwl	20(%eax), %ecx
	movzwl	20(%esi), %edx
	cmpw	%cx, %dx
	jb	L1048
	cmpw	%dx, %cx
	jb	L1253
	cmpl	%esi, %eax
	adcl	$0, %ebx
	.p2align 4
	.p2align 4
	.p2align 3
L1048:
	addl	$40, %eax
	cmpl	%eax, %edi
	je	L1266
L1052:
	cmpl	%esi, %eax
	je	L1048
	movzwl	22(%eax), %ecx
	movzwl	22(%esi), %edx
	cmpw	%cx, %dx
	jb	L1048
	cmpw	%dx, %cx
	jnb	L1050
L1253:
	addl	$1, %ebx
	jmp	L1048
	.p2align 4,,10
	.p2align 3
L1129:
	xorl	%edi, %edi
L1035:
	movl	-1096(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-1088(%ebp), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-1108(%ebp), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-1084(%ebp), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-1092(%ebp), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-1028(%ebp), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-1124(%ebp), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-988(%ebp), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-1060(%ebp), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L981
L1009:
	movl	-824(%ebp), %eax
	call	__Z13handle_memerri
L1262:
	testb	$3, %bl
	jne	L998
	shrl	$2, %ebx
	leal	0(,%ebx,4), %edx
	movl	%ebx, -720(%ebp)
	movl	%ebx, -824(%ebp)
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -836(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -988(%ebp)
	testl	%eax, %eax
	je	L1023
	movl	-824(%ebp), %ecx
	movl	%eax, %ebx
	testl	%ecx, %ecx
	je	L986
	movl	%esi, -836(%ebp)
	xorl	%esi, %esi
L1022:
	movl	%ebx, 4(%esp)
	addl	$1, %esi
	movl	$2, 8(%esp)
	movl	%edi, (%esp)
	call	__ZL15sf2_stream_readPvS_j
	leal	2(%ebx), %eax
	movl	%edi, (%esp)
	addl	$4, %ebx
	movl	$2, 8(%esp)
	movl	%eax, 4(%esp)
	call	__ZL15sf2_stream_readPvS_j
	cmpl	%esi, -824(%ebp)
	jne	L1022
	jmp	L1252
L1261:
	imull	$-858993459, %ebx, %eax
	rorl	%eax
	cmpl	$429496729, %eax
	ja	L998
	movl	$-858993459, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$3, %eax
	leal	(%eax,%eax,4), %edx
	movl	%eax, -724(%ebp)
	addl	%edx, %edx
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -824(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	movl	-824(%ebp), %edx
	subl	$4, %esp
	testl	%eax, %eax
	movl	%eax, -1124(%ebp)
	je	L1017
	addl	%eax, %edx
	movl	%edx, -824(%ebp)
	cmpl	$9, %ebx
	jbe	L986
	movl	%eax, %ebx
L1019:
	movl	%ebx, %eax
	leal	-800(%ebp), %edx
	addl	$10, %ebx
	call	_tsf_hydra_read_imod
	cmpl	%ebx, -824(%ebp)
	jne	L1019
	jmp	L986
L1260:
	testb	$3, %bl
	jne	L998
	shrl	$2, %ebx
	leal	0(,%ebx,4), %edx
	movl	%ebx, -728(%ebp)
	movl	%ebx, -824(%ebp)
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -836(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -1028(%ebp)
	testl	%eax, %eax
	je	L1023
	movl	%eax, %ebx
	movl	-824(%ebp), %eax
	testl	%eax, %eax
	je	L986
	movl	%esi, -836(%ebp)
	xorl	%esi, %esi
L1015:
	movl	%ebx, 4(%esp)
	addl	$1, %esi
	movl	$2, 8(%esp)
	movl	%edi, (%esp)
	call	__ZL15sf2_stream_readPvS_j
	leal	2(%ebx), %eax
	movl	%edi, (%esp)
	addl	$4, %ebx
	movl	$2, 8(%esp)
	movl	%eax, 4(%esp)
	call	__ZL15sf2_stream_readPvS_j
	cmpl	%esi, -824(%ebp)
	jne	L1015
	jmp	L1252
L996:
	imull	$-858993459, %ebx, %eax
	rorl	%eax
	cmpl	$429496729, %eax
	ja	L998
	movl	$-858993459, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$3, %eax
	leal	(%eax,%eax,4), %edx
	movl	%eax, -740(%ebp)
	addl	%edx, %edx
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -824(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	movl	-824(%ebp), %edx
	subl	$4, %esp
	testl	%eax, %eax
	movl	%eax, -1108(%ebp)
	je	L1017
	addl	%eax, %edx
	movl	%edx, -824(%ebp)
	cmpl	$9, %ebx
	jbe	L986
	movl	%eax, %ebx
L1004:
	movl	%ebx, %eax
	leal	-800(%ebp), %edx
	addl	$10, %ebx
	call	_tsf_hydra_read_pmod
	cmpl	-824(%ebp), %ebx
	jne	L1004
	jmp	L986
L995:
	testb	$3, %bl
	jne	L998
	shrl	$2, %ebx
	leal	0(,%ebx,4), %edx
	movl	%ebx, -744(%ebp)
	movl	%ebx, -824(%ebp)
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -836(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -1088(%ebp)
	testl	%eax, %eax
	je	L1023
	movl	%eax, %ebx
	movl	-824(%ebp), %eax
	testl	%eax, %eax
	je	L986
	movl	%esi, -836(%ebp)
	xorl	%esi, %esi
L1001:
	movl	%ebx, 4(%esp)
	addl	$1, %esi
	movl	$2, 8(%esp)
	movl	%edi, (%esp)
	call	__ZL15sf2_stream_readPvS_j
	leal	2(%ebx), %eax
	movl	%edi, (%esp)
	addl	$4, %ebx
	movl	$2, 8(%esp)
	movl	%eax, 4(%esp)
	call	__ZL15sf2_stream_readPvS_j
	cmpl	%esi, -824(%ebp)
	jne	L1001
	jmp	L1252
L1263:
	imull	$678152731, %ebx, %edx
	rorl	%edx
	cmpl	$113025455, %edx
	ja	L990
	movl	%ebx, %edx
	movl	$1808407283, %eax
	shrl	%edx
	mull	%edx
	shrl	$3, %edx
	movl	%edx, -824(%ebp)
	leal	(%edx,%edx,4), %edx
	sall	$3, %edx
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -832(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -1096(%ebp)
	testl	%eax, %eax
	je	L1041
	movl	$0, -832(%ebp)
	cmpl	$37, %ebx
	jbe	L1267
	movl	%esi, -836(%ebp)
	movl	%eax, %ebx
	xorl	%esi, %esi
L994:
	movl	%ebx, 4(%esp)
	addl	$1, %esi
	movl	$20, 8(%esp)
	movl	%edi, (%esp)
	call	__ZL15sf2_stream_readPvS_j
	leal	20(%ebx), %eax
	movl	$2, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	__ZL15sf2_stream_readPvS_j
	leal	22(%ebx), %eax
	movl	$2, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	__ZL15sf2_stream_readPvS_j
	leal	24(%ebx), %eax
	movl	$2, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	__ZL15sf2_stream_readPvS_j
	leal	28(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	__ZL15sf2_stream_readPvS_j
	leal	32(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	__ZL15sf2_stream_readPvS_j
	leal	36(%ebx), %eax
	movl	%edi, (%esp)
	addl	$40, %ebx
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	call	__ZL15sf2_stream_readPvS_j
	cmpl	%esi, -824(%ebp)
	jne	L994
	movl	%esi, -832(%ebp)
	movl	-836(%ebp), %esi
	jmp	L986
L1259:
	imull	$-1171354717, %ebx, %eax
	rorl	%eax
	cmpl	$195225786, %eax
	ja	L998
	movl	$-1171354717, %eax
	mull	%ebx
	shrl	$4, %edx
	imull	$22, %edx, %eax
	movl	%edx, -836(%ebp)
	movl	%eax, -824(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ecx
	movl	%eax, -1092(%ebp)
	testl	%eax, %eax
	je	L1009
	movl	-824(%ebp), %eax
	movl	-836(%ebp), %edx
	addl	%ecx, %eax
	movl	%edx, -1080(%ebp)
	movl	%eax, -824(%ebp)
	cmpl	$21, %ebx
	jbe	L986
	movl	%ecx, %ebx
L1011:
	movl	%ebx, 4(%esp)
	movl	$20, 8(%esp)
	movl	%edi, (%esp)
	call	__ZL15sf2_stream_readPvS_j
	leal	20(%ebx), %eax
	movl	%edi, (%esp)
	addl	$22, %ebx
	movl	$2, 8(%esp)
	movl	%eax, 4(%esp)
	call	__ZL15sf2_stream_readPvS_j
	cmpl	%ebx, -824(%ebp)
	jne	L1011
	jmp	L986
L1266:
	movl	-1140(%ebp), %edi
	movl	%ebx, %eax
	sall	$5, %eax
	movl	(%edi), %esi
	movl	-1128(%ebp), %edi
	addl	%eax, %esi
	movl	(%edi), %eax
	movl	%esi, -1032(%ebp)
	movl	%eax, (%esi)
	movl	4(%edi), %eax
	movl	%eax, 4(%esi)
	movl	8(%edi), %eax
	movl	%eax, 8(%esi)
	movl	12(%edi), %eax
	movl	%eax, 12(%esi)
	movl	15(%edi), %eax
	movb	$0, 19(%esi)
	movl	%eax, 15(%esi)
	movzwl	22(%edi), %eax
	movw	%ax, 22(%esi)
	movzwl	20(%edi), %eax
	movl	$0, 28(%esi)
	movw	%ax, 20(%esi)
	movzwl	24(%edi), %edx
	movzwl	64(%edi), %eax
	sall	$2, %edx
	sall	$2, %eax
	cmpl	%eax, %edx
	je	L1131
	movl	-1088(%ebp), %esi
	movl	-1080(%ebp), %edi
	leal	(%esi,%edx), %ecx
	addl	%eax, %esi
	movl	%esi, -896(%ebp)
	movl	%ecx, %eax
	.p2align 4
	.p2align 3
L1068:
	movzwl	(%eax), %edx
	movzwl	4(%eax), %ecx
	sall	$2, %edx
	sall	$2, %ecx
	cmpl	%ecx, %edx
	je	L1054
	movl	-1084(%ebp), %esi
	movb	$0, -852(%ebp)
	movb	$0, -840(%ebp)
	addl	%esi, %ecx
	movb	$127, -860(%ebp)
	addl	%edx, %esi
	movb	$127, -845(%ebp)
	movl	%eax, -872(%ebp)
	jmp	L1067
	.p2align 4,,10
	.p2align 3
L1055:
	cmpw	$44, %ax
	je	L1268
	cmpw	$41, %ax
	jne	L1056
	movzwl	2(%esi), %eax
	cmpl	%eax, %edi
	jg	L1269
	.p2align 4
	.p2align 3
L1056:
	addl	$4, %esi
	cmpl	%esi, %ecx
	je	L1270
L1067:
	movzwl	(%esi), %eax
	cmpw	$43, %ax
	jne	L1055
	movzbl	2(%esi), %eax
	movb	%al, -840(%ebp)
	movzbl	3(%esi), %eax
	movb	%al, -845(%ebp)
	jmp	L1056
	.p2align 4,,10
	.p2align 3
L1268:
	movzbl	2(%esi), %eax
	movb	%al, -852(%ebp)
	movzbl	3(%esi), %eax
	movb	%al, -860(%ebp)
	jmp	L1056
	.p2align 4,,10
	.p2align 3
L1269:
	imull	$22, %eax, %eax
	addl	-1092(%ebp), %eax
	movzwl	20(%eax), %edx
	movzwl	42(%eax), %eax
	sall	$2, %edx
	sall	$2, %eax
	cmpl	%eax, %edx
	je	L1056
	movl	-1028(%ebp), %ebx
	movl	%edi, -864(%ebp)
	movl	%ecx, -868(%ebp)
	addl	%ebx, %eax
	movl	%esi, -888(%ebp)
	addl	%ebx, %edx
	movl	%eax, -856(%ebp)
	.p2align 4
	.p2align 3
L1066:
	movzwl	(%edx), %eax
	movzwl	4(%edx), %ebx
	sall	$2, %eax
	sall	$2, %ebx
	cmpl	%ebx, %eax
	je	L1059
	movl	-988(%ebp), %edi
	movb	$0, -836(%ebp)
	movl	%edx, %esi
	movb	$127, -824(%ebp)
	addl	%edi, %eax
	addl	%edi, %ebx
	movb	$127, -832(%ebp)
	xorl	%edi, %edi
	jmp	L1065
	.p2align 4,,10
	.p2align 3
L1061:
	addl	$4, %eax
	cmpl	%eax, %ebx
	je	L1271
L1065:
	movzwl	(%eax), %ecx
	cmpw	$43, %cx
	je	L1272
	cmpw	$44, %cx
	je	L1273
	cmpw	$53, %cx
	jne	L1061
	movzbl	-840(%ebp), %edx
	cmpb	%dl, -832(%ebp)
	jb	L1061
	movl	%edi, %edx
	cmpb	%dl, -845(%ebp)
	jb	L1061
	movzbl	-852(%ebp), %ecx
	cmpb	%cl, -824(%ebp)
	jb	L1061
	movzbl	-836(%ebp), %ecx
	cmpb	%cl, -860(%ebp)
	jb	L1061
	movl	-1032(%ebp), %edx
	addl	$4, %eax
	addl	$1, 28(%edx)
	cmpl	%eax, %ebx
	jne	L1065
	.p2align 4
	.p2align 3
L1271:
	movl	%esi, %edx
L1059:
	addl	$4, %edx
	cmpl	%edx, -856(%ebp)
	jne	L1066
	movl	-864(%ebp), %edi
	movl	-868(%ebp), %ecx
	movl	-888(%ebp), %esi
	jmp	L1056
	.p2align 4,,10
	.p2align 3
L1272:
	movzbl	3(%eax), %ecx
	movzbl	2(%eax), %edi
	movb	%cl, -832(%ebp)
	jmp	L1061
	.p2align 4,,10
	.p2align 3
L1273:
	movzbl	2(%eax), %ecx
	movzbl	3(%eax), %edx
	movb	%cl, -836(%ebp)
	movb	%dl, -824(%ebp)
	jmp	L1061
	.p2align 4,,10
	.p2align 3
L1270:
	movl	-872(%ebp), %eax
L1054:
	addl	$4, %eax
	cmpl	%eax, -896(%ebp)
	jne	L1068
	movl	-1032(%ebp), %eax
	imull	$168, 28(%eax), %ebx
L1053:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1069
	movl	-1032(%ebp), %esi
	movl	%eax, 24(%esi)
	xorl	%eax, %eax
L1070:
	movl	$0, -360(%ebp,%eax)
	movl	$0, -356(%ebp,%eax)
	movl	$0, -352(%ebp,%eax)
	movl	$0, -348(%ebp,%eax)
	addl	$16, %eax
	cmpl	$160, %eax
	jb	L1070
	xorl	%ecx, %ecx
	movl	%ecx, -360(%ebp,%eax)
	movl	%ecx, -356(%ebp,%eax)
	movl	-1128(%ebp), %eax
	movzwl	24(%eax), %edx
	movzwl	64(%eax), %eax
	sall	$2, %edx
	sall	$2, %eax
	cmpl	%eax, %edx
	je	L1073
	movl	$2130738944, -1104(%ebp)
	movl	-1088(%ebp), %esi
	movl	$60, -1100(%ebp)
	movl	$0, -1064(%ebp)
	addl	%esi, %eax
	leal	(%esi,%edx), %ecx
	movl	%eax, -1132(%ebp)
	leal	-192(%ebp), %eax
	movl	%eax, -1052(%ebp)
	.p2align 4
	.p2align 3
L1108:
	movl	-1104(%ebp), %eax
	movl	%eax, -352(%ebp)
	movl	-1100(%ebp), %eax
	movl	%eax, -320(%ebp)
	xorl	%eax, %eax
L1074:
	movl	-360(%ebp,%eax), %edi
	movl	-356(%ebp,%eax), %esi
	movl	-352(%ebp,%eax), %ebx
	movl	-348(%ebp,%eax), %edx
	movl	%edi, -192(%ebp,%eax)
	movl	%esi, -188(%ebp,%eax)
	movl	%ebx, -184(%ebp,%eax)
	movl	%edx, -180(%ebp,%eax)
	addl	$16, %eax
	cmpl	$160, %eax
	jb	L1074
	movl	-1052(%ebp), %esi
	leal	(%esi,%eax), %edx
	leal	-360(%ebp,%eax), %eax
	movl	(%eax), %ebx
	movl	4(%eax), %eax
	movl	%ebx, (%edx)
	movl	%eax, 4(%edx)
	movzwl	(%ecx), %edx
	movzwl	4(%ecx), %eax
	sall	$2, %edx
	sall	$2, %eax
	cmpl	%eax, %edx
	je	L1132
	movl	-1084(%ebp), %edi
	movl	%ecx, -1120(%ebp)
	xorl	%ebx, %ebx
	leal	(%edi,%edx), %esi
	addl	%eax, %edi
	movl	-1104(%ebp), %eax
	movl	%eax, -996(%ebp)
	movl	-1100(%ebp), %eax
	movl	%eax, -1000(%ebp)
	jmp	L1104
	.p2align 4,,10
	.p2align 3
L1276:
	movzwl	2(%esi), %edx
	cmpl	%edx, -1080(%ebp)
	jg	L1274
L1079:
	addl	$4, %esi
	cmpl	%esi, %edi
	je	L1275
L1104:
	movzwl	(%esi), %edx
	cmpw	$41, %dx
	je	L1276
	movl	-996(%ebp), %eax
	leal	2(%esi), %ecx
	movl	%eax, -184(%ebp)
	movl	-1000(%ebp), %eax
	movl	%eax, -152(%ebp)
	movl	$0, (%esp)
	movl	-1052(%ebp), %eax
	call	_tsf_region_operator
	movl	-184(%ebp), %eax
	movl	%eax, -996(%ebp)
	movl	-152(%ebp), %eax
	movl	%eax, -1000(%ebp)
	jmp	L1079
	.p2align 4,,10
	.p2align 3
L1274:
	xorl	%eax, %eax
L1080:
	movl	$0, -712(%ebp,%eax)
	movl	$0, -708(%ebp,%eax)
	movl	$0, -704(%ebp,%eax)
	movl	$0, -700(%ebp,%eax)
	addl	$16, %eax
	cmpl	$160, %eax
	jb	L1080
	movl	$0, -712(%ebp,%eax)
	imull	$22, %edx, %edx
	movl	$0, -708(%ebp,%eax)
	movl	-1092(%ebp), %eax
	addl	%edx, %eax
	movzwl	20(%eax), %ebx
	movl	%eax, -1068(%ebp)
	movzwl	42(%eax), %eax
	leal	0(,%ebx,4), %edx
	sall	$2, %eax
	movl	%eax, -832(%ebp)
	cmpl	%eax, %edx
	je	L1082
	movl	-996(%ebp), %ecx
	movl	%esi, -1112(%ebp)
	movups	-1160(%ebp), %xmm4
	movl	%edi, -1116(%ebp)
	movl	%ecx, %eax
	movb	%cl, -845(%ebp)
	shrl	$24, %eax
	movups	%xmm4, -920(%ebp)
	movl	%eax, -896(%ebp)
	movl	%ecx, %eax
	shrl	$16, %eax
	movups	%xmm4, -936(%ebp)
	movlps	LC74, %xmm4
	movl	%eax, -864(%ebp)
	movzbl	%ch, %eax
	movl	%eax, -856(%ebp)
	movl	-1028(%ebp), %eax
	movlps	%xmm4, -944(%ebp)
	xorps	%xmm4, %xmm4
	addl	%eax, %edx
	addl	-832(%ebp), %eax
	movups	%xmm4, -984(%ebp)
	movss	LC6, %xmm4
	movl	%eax, -1056(%ebp)
	movl	$2130738944, -904(%ebp)
	movl	$13500, -960(%ebp)
	movl	$100, -948(%ebp)
	movl	$0, -900(%ebp)
	movl	%edx, -852(%ebp)
	movl	%ebx, %edx
	movss	%xmm4, -968(%ebp)
	movss	%xmm4, -964(%ebp)
	movss	%xmm4, -956(%ebp)
	movss	%xmm4, -952(%ebp)
	.p2align 4
	.p2align 3
L1103:
	movl	-900(%ebp), %eax
	movups	-984(%ebp), %xmm3
	movlps	-944(%ebp), %xmm5
	movups	-936(%ebp), %xmm2
	movl	%eax, -708(%ebp)
	movl	-904(%ebp), %eax
	movss	-952(%ebp), %xmm6
	movups	-920(%ebp), %xmm7
	movups	%xmm3, -696(%ebp)
	movl	%eax, -704(%ebp)
	movl	-948(%ebp), %eax
	movss	-956(%ebp), %xmm3
	movlps	%xmm5, -676(%ebp)
	movss	-964(%ebp), %xmm5
	movl	%eax, -668(%ebp)
	movl	-960(%ebp), %eax
	movups	%xmm2, -656(%ebp)
	movss	-968(%ebp), %xmm2
	movl	%eax, -588(%ebp)
	xorl	%eax, %eax
	movss	%xmm6, -636(%ebp)
	movups	%xmm7, -624(%ebp)
	movss	%xmm3, -604(%ebp)
	movss	%xmm5, -568(%ebp)
	movss	%xmm2, -556(%ebp)
L1083:
	movl	-712(%ebp,%eax), %edi
	movl	-708(%ebp,%eax), %esi
	movl	-704(%ebp,%eax), %ebx
	movl	-700(%ebp,%eax), %ecx
	movl	%edi, -536(%ebp,%eax)
	movl	%esi, -532(%ebp,%eax)
	movl	%ebx, -528(%ebp,%eax)
	movl	%ecx, -524(%ebp,%eax)
	addl	$16, %eax
	cmpl	$160, %eax
	jb	L1083
	leal	-536(%ebp,%eax), %ecx
	leal	-712(%ebp,%eax), %eax
	movl	(%eax), %ebx
	movl	4(%eax), %eax
	movl	%eax, 4(%ecx)
	movl	-852(%ebp), %eax
	movl	%ebx, (%ecx)
	movzwl	(%eax), %ecx
	movzwl	4(%eax), %eax
	sall	$2, %ecx
	sall	$2, %eax
	cmpl	%eax, %ecx
	je	L1133
	movl	-988(%ebp), %edi
	movlps	-944(%ebp), %xmm4
	movl	$0, -860(%ebp)
	movups	-920(%ebp), %xmm5
	movups	-936(%ebp), %xmm7
	addl	%edi, %eax
	leal	(%edi,%ecx), %esi
	movups	-984(%ebp), %xmm0
	movl	-904(%ebp), %ebx
	movl	%eax, -840(%ebp)
	movl	-960(%ebp), %eax
	movss	-968(%ebp), %xmm2
	movss	-964(%ebp), %xmm1
	movlps	%xmm4, -832(%ebp)
	movl	%eax, -836(%ebp)
	movl	-948(%ebp), %eax
	movss	-956(%ebp), %xmm3
	movss	-952(%ebp), %xmm6
	movl	%eax, -824(%ebp)
	movl	-900(%ebp), %edi
	.p2align 4
	.p2align 3
L1099:
	movzwl	(%esi), %edx
	cmpw	$53, %dx
	jne	L1086
	movzbl	%bh, %eax
	cmpb	-845(%ebp), %al
	jb	L1090
	cmpb	%bl, -856(%ebp)
	jb	L1090
	movl	%ebx, %edx
	shrl	$24, %edx
	cmpb	-864(%ebp), %dl
	jb	L1090
	movl	%ebx, %ecx
	shrl	$16, %ecx
	cmpb	%cl, -896(%ebp)
	jb	L1090
	movl	%edi, -532(%ebp)
	movzbl	-845(%ebp), %edi
	cmpb	%bl, -845(%ebp)
	movlps	-832(%ebp), %xmm4
	movups	%xmm5, -448(%ebp)
	cmovnb	%edi, %ebx
	movl	-864(%ebp), %edi
	movss	%xmm3, -428(%ebp)
	movss	%xmm1, -392(%ebp)
	movb	%bl, -528(%ebp)
	movzbl	-856(%ebp), %ebx
	movups	%xmm7, -480(%ebp)
	cmpb	%al, %bl
	movss	%xmm6, -460(%ebp)
	cmovbe	%ebx, %eax
	movss	%xmm2, -380(%ebp)
	movups	%xmm0, -520(%ebp)
	movb	%al, -527(%ebp)
	movl	%edi, %eax
	cmpb	%cl, %al
	movzbl	-896(%ebp), %eax
	movlps	%xmm4, -500(%ebp)
	cmovnb	%edi, %ecx
	cmpb	%dl, %al
	cmovbe	%eax, %edx
	movl	-824(%ebp), %eax
	movb	%cl, -526(%ebp)
	xorl	%ecx, %ecx
	movl	%eax, -492(%ebp)
	movl	-836(%ebp), %eax
	movb	%dl, -525(%ebp)
	xorl	%edx, %edx
	movl	%eax, -412(%ebp)
	movl	-996(%ebp), %eax
	movl	%eax, -184(%ebp)
	movl	-1000(%ebp), %eax
	movl	%eax, -152(%ebp)
	movl	-1052(%ebp), %eax
	movl	%eax, (%esp)
	leal	-536(%ebp), %eax
	call	_tsf_region_operator
	movl	-516(%ebp), %eax
	movl	$1, %edx
	movss	-392(%ebp), %xmm0
	movss	-380(%ebp), %xmm4
	movl	-528(%ebp), %ebx
	movl	%eax, -868(%ebp)
	movl	-512(%ebp), %eax
	movss	%xmm0, -1048(%ebp)
	movl	-520(%ebp), %edi
	movl	%eax, -872(%ebp)
	movl	-508(%ebp), %eax
	movss	%xmm4, -832(%ebp)
	movl	%eax, -1020(%ebp)
	movl	-500(%ebp), %eax
	movl	%eax, -1024(%ebp)
	movl	-496(%ebp), %eax
	movl	%eax, -860(%ebp)
	movl	-492(%ebp), %eax
	movl	%eax, -824(%ebp)
	movl	-412(%ebp), %eax
	movl	%eax, -836(%ebp)
	leal	-480(%ebp), %eax
	call	_tsf_region_envtosecs
	movups	-480(%ebp), %xmm7
	xorl	%edx, %edx
	movss	-460(%ebp), %xmm6
	leal	-448(%ebp), %eax
	movups	%xmm7, -1016(%ebp)
	movss	%xmm6, -888(%ebp)
	call	_tsf_region_envtosecs
	movss	-1048(%ebp), %xmm0
	xorps	%xmm1, %xmm1
	movss	LC47, %xmm6
	movups	-448(%ebp), %xmm5
	movss	-428(%ebp), %xmm3
	comiss	%xmm0, %xmm6
	movups	-1016(%ebp), %xmm7
	movss	-888(%ebp), %xmm6
	jbe	L1277
L1092:
	movss	LC47, %xmm4
	comiss	-832(%ebp), %xmm4
	xorps	%xmm2, %xmm2
	jbe	L1278
L1093:
	movzwl	2(%esi), %eax
	movl	-1020(%ebp), %edx
	movl	-868(%ebp), %ecx
	leal	(%eax,%eax,2), %eax
	sall	$4, %eax
	addl	-1060(%ebp), %eax
	addl	20(%eax), %edi
	addl	24(%eax), %ecx
	movl	%edi, -888(%ebp)
	movl	-872(%ebp), %edi
	addl	28(%eax), %edi
	movl	%edi, -1016(%ebp)
	movl	32(%eax), %edi
	addl	%edi, %edx
	cmpl	$1, %edi
	movl	-992(%ebp), %edi
	adcl	$-1, %edx
	cmpl	%edx, %edi
	cmovbe	%edi, %edx
	movl	%edx, -868(%ebp)
	cmpl	$-1, -860(%ebp)
	jne	L1095
	movzbl	40(%eax), %edi
	movl	%edi, -860(%ebp)
L1095:
	movsbl	41(%eax), %edx
	movl	-1024(%ebp), %edi
	movss	-860(%ebp), %xmm0
	addl	%edx, %edi
	movl	%edi, -832(%ebp)
	movss	-832(%ebp), %xmm4
	movl	%edi, -1020(%ebp)
	movl	36(%eax), %edi
	unpcklps	%xmm0, %xmm4
	movlps	%xmm4, -832(%ebp)
	testl	%ecx, %ecx
	je	L1136
	cmpl	-992(%ebp), %ecx
	jb	L1279
L1136:
	movl	-992(%ebp), %eax
	movl	%eax, -872(%ebp)
L1096:
	movl	-1032(%ebp), %eax
	movss	-1016(%ebp), %xmm0
	movl	%edi, -532(%ebp)
	imull	$168, -1064(%ebp), %edx
	movss	-868(%ebp), %xmm4
	movss	%xmm1, -392(%ebp)
	addl	24(%eax), %edx
	movl	-888(%ebp), %eax
	movss	%xmm2, -380(%ebp)
	unpcklps	%xmm4, %xmm0
	movl	-1016(%ebp), %ecx
	movss	-872(%ebp), %xmm4
	movl	%eax, -520(%ebp)
	movl	-872(%ebp), %eax
	movlps	%xmm0, -1016(%ebp)
	movss	-888(%ebp), %xmm0
	movl	%eax, -516(%ebp)
	movl	-868(%ebp), %eax
	movl	%ecx, -512(%ebp)
	unpcklps	%xmm4, %xmm0
	movlps	-832(%ebp), %xmm4
	movhps	-1016(%ebp), %xmm0
	movl	%eax, -508(%ebp)
	movl	-1020(%ebp), %eax
	movl	%eax, -500(%ebp)
	movl	-860(%ebp), %eax
	movl	%eax, -496(%ebp)
	xorl	%eax, %eax
L1097:
	movl	-536(%ebp,%eax), %ecx
	movl	%ecx, (%edx,%eax)
	movl	-532(%ebp,%eax), %ecx
	movl	%ecx, 4(%edx,%eax)
	movl	-528(%ebp,%eax), %ecx
	movl	%ecx, 8(%edx,%eax)
	movl	-524(%ebp,%eax), %ecx
	movl	%ecx, 12(%edx,%eax)
	addl	$16, %eax
	cmpl	$160, %eax
	jb	L1097
	addl	%eax, %edx
	leal	-536(%ebp,%eax), %eax
	addl	$1, -1064(%ebp)
	movl	(%eax), %ecx
	movl	4(%eax), %eax
	movl	$1, -860(%ebp)
	movlps	%xmm4, -832(%ebp)
	movl	%ecx, (%edx)
	movl	%eax, 4(%edx)
	.p2align 4
	.p2align 3
L1090:
	addl	$4, %esi
	cmpl	%esi, -840(%ebp)
	jne	L1099
	movl	-1068(%ebp), %eax
	movzbl	-860(%ebp), %ecx
	movlps	-832(%ebp), %xmm4
	movzwl	20(%eax), %edx
	xorl	$1, %ecx
L1085:
	movl	-1028(%ebp), %eax
	leal	(%eax,%edx,4), %eax
	cmpl	%eax, -852(%ebp)
	jne	L1100
	testb	%cl, %cl
	jne	L1280
L1100:
	addl	$4, -852(%ebp)
	movl	-852(%ebp), %eax
	cmpl	%eax, -1056(%ebp)
	jne	L1103
	movl	-1112(%ebp), %esi
	movl	-1116(%ebp), %edi
L1082:
	movl	$1, %ebx
	jmp	L1079
	.p2align 4,,10
	.p2align 3
L1086:
	movl	-824(%ebp), %eax
	movlps	-832(%ebp), %xmm4
	leal	2(%esi), %ecx
	movl	%edi, -532(%ebp)
	movl	%ebx, -528(%ebp)
	movl	%eax, -492(%ebp)
	movl	-836(%ebp), %eax
	movups	%xmm0, -520(%ebp)
	movl	%eax, -412(%ebp)
	leal	-536(%ebp), %eax
	movlps	%xmm4, -500(%ebp)
	movups	%xmm7, -480(%ebp)
	movss	%xmm6, -460(%ebp)
	movups	%xmm5, -448(%ebp)
	movss	%xmm3, -428(%ebp)
	movss	%xmm1, -392(%ebp)
	movss	%xmm2, -380(%ebp)
	movl	$0, (%esp)
	call	_tsf_region_operator
	movl	-492(%ebp), %eax
	movlps	-500(%ebp), %xmm4
	movl	-532(%ebp), %edi
	movl	-528(%ebp), %ebx
	movl	%eax, -824(%ebp)
	movl	-412(%ebp), %eax
	movups	-520(%ebp), %xmm0
	movups	-480(%ebp), %xmm7
	movlps	%xmm4, -832(%ebp)
	movl	%eax, -836(%ebp)
	movss	-460(%ebp), %xmm6
	movups	-448(%ebp), %xmm5
	movss	-428(%ebp), %xmm3
	movss	-392(%ebp), %xmm1
	movss	-380(%ebp), %xmm2
	jmp	L1090
	.p2align 4,,10
	.p2align 3
L1278:
	movss	-832(%ebp), %xmm4
	movss	%xmm1, -1076(%ebp)
	divss	LC8, %xmm4
	movss	%xmm4, -832(%ebp)
	flds	-832(%ebp)
	movss	%xmm3, -1072(%ebp)
	movss	%xmm6, -1048(%ebp)
	movups	%xmm7, -1016(%ebp)
	movups	%xmm5, -888(%ebp)
	fstpl	8(%esp)
	flds	LC20
	fstpl	(%esp)
	call	_pow
	movss	-1076(%ebp), %xmm1
	movss	-1072(%ebp), %xmm3
	fstps	-832(%ebp)
	movss	-1048(%ebp), %xmm6
	movss	-832(%ebp), %xmm2
	movups	-1016(%ebp), %xmm7
	movups	-888(%ebp), %xmm5
	jmp	L1093
	.p2align 4,,10
	.p2align 3
L1277:
	divss	LC8, %xmm0
	movss	%xmm0, -888(%ebp)
	flds	-888(%ebp)
	movss	%xmm3, -1076(%ebp)
	movss	%xmm6, -1072(%ebp)
	movups	%xmm7, -1048(%ebp)
	movups	%xmm5, -1016(%ebp)
	fstpl	8(%esp)
	flds	LC20
	fstpl	(%esp)
	call	_pow
	movss	-1076(%ebp), %xmm3
	movss	-1072(%ebp), %xmm6
	fstps	-888(%ebp)
	movups	-1048(%ebp), %xmm7
	movss	-888(%ebp), %xmm1
	movups	-1016(%ebp), %xmm5
	jmp	L1092
	.p2align 4,,10
	.p2align 3
L1279:
	leal	1(%ecx), %eax
	movl	%eax, -872(%ebp)
	jmp	L1096
	.p2align 4,,10
	.p2align 3
L1280:
	movl	-824(%ebp), %eax
	movl	%edi, -532(%ebp)
	movl	%ebx, -528(%ebp)
	movl	%eax, -492(%ebp)
	movl	-836(%ebp), %eax
	movups	%xmm0, -520(%ebp)
	movl	%eax, -412(%ebp)
	xorl	%eax, %eax
	movlps	%xmm4, -500(%ebp)
	movups	%xmm7, -480(%ebp)
	movss	%xmm6, -460(%ebp)
	movups	%xmm5, -448(%ebp)
	movss	%xmm3, -428(%ebp)
	movss	%xmm1, -392(%ebp)
	movss	%xmm2, -380(%ebp)
L1101:
	movl	-536(%ebp,%eax), %esi
	movl	-532(%ebp,%eax), %ecx
	movl	%esi, -712(%ebp,%eax)
	movl	-528(%ebp,%eax), %esi
	movl	%ecx, -708(%ebp,%eax)
	movl	%esi, -704(%ebp,%eax)
	movl	-524(%ebp,%eax), %esi
	movl	%esi, -700(%ebp,%eax)
	addl	$16, %eax
	cmpl	$160, %eax
	jb	L1101
	leal	-712(%ebp,%eax), %ecx
	leal	-536(%ebp,%eax), %eax
	movl	%ebx, -904(%ebp)
	movl	(%eax), %esi
	movl	4(%eax), %eax
	movl	%edi, -900(%ebp)
	movups	%xmm5, -920(%ebp)
	movl	%eax, 4(%ecx)
	movl	-836(%ebp), %eax
	movl	%esi, (%ecx)
	movl	%eax, -960(%ebp)
	movl	-824(%ebp), %eax
	movups	%xmm7, -936(%ebp)
	movl	%eax, -948(%ebp)
	movlps	%xmm4, -944(%ebp)
	movups	%xmm0, -984(%ebp)
	movss	%xmm2, -968(%ebp)
	movss	%xmm1, -964(%ebp)
	movss	%xmm3, -956(%ebp)
	movss	%xmm6, -952(%ebp)
	jmp	L1100
L1133:
	movl	-960(%ebp), %eax
	movups	-920(%ebp), %xmm5
	movl	$1, %ecx
	movups	-936(%ebp), %xmm7
	movlps	-944(%ebp), %xmm4
	movl	%eax, -836(%ebp)
	movl	-948(%ebp), %eax
	movups	-984(%ebp), %xmm0
	movl	-904(%ebp), %ebx
	movl	%eax, -824(%ebp)
	movss	-968(%ebp), %xmm2
	movss	-964(%ebp), %xmm1
	movss	-956(%ebp), %xmm3
	movss	-952(%ebp), %xmm6
	movl	-900(%ebp), %edi
	jmp	L1085
	.p2align 4,,10
	.p2align 3
L1275:
	movl	-1120(%ebp), %ecx
	xorl	$1, %ebx
L1076:
	movl	-1128(%ebp), %eax
	movl	-1088(%ebp), %esi
	movzwl	24(%eax), %eax
	leal	(%esi,%eax,4), %eax
	cmpl	%eax, %ecx
	jne	L1105
	testb	%bl, %bl
	jne	L1281
L1105:
	addl	$4, %ecx
	cmpl	%ecx, -1132(%ebp)
	jne	L1108
L1073:
	addl	$40, -1128(%ebp)
	movl	-1128(%ebp), %eax
	cmpl	%eax, -1136(%ebp)
	jne	L1045
	movl	-1140(%ebp), %edi
	movl	-1144(%ebp), %esi
L1046:
	movl	%esi, 4(%edi)
	xorl	%esi, %esi
	movl	$0x472c4400, 40(%edi)
	jmp	L1035
	.p2align 4,,10
	.p2align 3
L1281:
	movl	-996(%ebp), %eax
	movl	%eax, -184(%ebp)
	movl	-1000(%ebp), %eax
	movl	%eax, -152(%ebp)
	xorl	%eax, %eax
L1106:
	movl	-192(%ebp,%eax), %edi
	movl	-188(%ebp,%eax), %esi
	movl	-184(%ebp,%eax), %ebx
	movl	-180(%ebp,%eax), %edx
	movl	%edi, -360(%ebp,%eax)
	movl	%esi, -356(%ebp,%eax)
	movl	%ebx, -352(%ebp,%eax)
	movl	%edx, -348(%ebp,%eax)
	addl	$16, %eax
	cmpl	$160, %eax
	jb	L1106
	leal	-360(%ebp,%eax), %edx
	addl	-1052(%ebp), %eax
	movl	(%eax), %ebx
	movl	4(%eax), %eax
	movl	%eax, 4(%edx)
	movl	-996(%ebp), %eax
	movl	%ebx, (%edx)
	movl	%eax, -1104(%ebp)
	movl	-1000(%ebp), %eax
	movl	%eax, -1100(%ebp)
	jmp	L1105
L1132:
	movl	-1104(%ebp), %eax
	movl	$1, %ebx
	movl	%eax, -996(%ebp)
	movl	-1100(%ebp), %eax
	movl	%eax, -1000(%ebp)
	jmp	L1076
L1069:
	movl	%ebx, %eax
	call	__Z13handle_memerri
L1131:
	xorl	%ebx, %ebx
	jmp	L1053
L1023:
	movl	-836(%ebp), %eax
	call	__Z13handle_memerri
L1017:
	movl	%edx, %eax
	call	__Z13handle_memerri
L1041:
	movl	-832(%ebp), %eax
	call	__Z13handle_memerri
L1267:
	movl	-824(%ebp), %eax
	movl	%eax, -832(%ebp)
	jmp	L986
L1265:
	movl	$52, %eax
	call	__Z13handle_memerri
L1264:
	xorl	%esi, %esi
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%ebx, %esi
	call	__ZN2sm9Allocator4FreeEPv
	pushl	%edi
	xorl	%edi, %edi
	jmp	L1035
L1030:
	movl	%esi, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE134:
	.p2align 4
	.globl	__Z24SF2Drv_MIDI_HaltPlaybackv
	.def	__Z24SF2Drv_MIDI_HaltPlaybackv;	.scl	2;	.type	32;	.endef
__Z24SF2Drv_MIDI_HaltPlaybackv:
LFB148:
	.cfi_startproc
	jmp	_MV_UnhookMusicRoutine
	.cfi_endproc
LFE148:
	.p2align 4
	.globl	__Z25SF2Drv_MIDI_StartPlaybackv
	.def	__Z25SF2Drv_MIDI_StartPlaybackv;	.scl	2;	.type	32;	.endef
__Z25SF2Drv_MIDI_StartPlaybackv:
LFB150:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%ebx, 12(%esp)
	movl	%esi, 16(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	call	_MV_UnhookMusicRoutine
	xorl	%eax, %eax
	cmpl	$1, _MV_Channels
	movl	__ZL9sf2_synth, %ebx
	sete	%al
	movl	_MV_MixRate, %edx
	movss	LC79, %xmm0
	addl	%eax, %eax
	movl	$2, 36(%ebx)
	movl	%eax, 32(%ebx)
	testl	%edx, %edx
	jle	L1284
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
L1284:
	movl	$0x00000000, 44(%ebx)
	movl	$9, %edx
	movl	%ebx, %eax
	movss	%xmm0, 40(%ebx)
	call	_tsf_channel_init
	movl	16(%ebx), %ecx
	movl	%eax, %esi
	testl	%ecx, %ecx
	jle	L1285
	movl	(%ebx), %eax
	xorl	%edx, %edx
	addl	$20, %eax
	jmp	L1288
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1286:
	addl	$1, %edx
	addl	$32, %eax
	cmpl	%edx, %ecx
	je	L1285
L1288:
	cmpw	$0, (%eax)
	jne	L1286
	cmpw	$128, 2(%eax)
	jne	L1286
	movl	$128, %eax
	movw	%dx, (%esi)
	movw	%ax, 2(%esi)
L1285:
	movl	__ZL9sf2_synth, %esi
	movl	20(%esi), %eax
	movl	8(%esi), %ebx
	sall	$8, %eax
	addl	%ebx, %eax
	cmpl	%eax, %ebx
	je	L1289
	movl	%edi, 20(%esp)
	movl	%ebp, 24(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	.p2align 4
	.p2align 3
L1294:
	cmpl	$-1, (%ebx)
	je	L1290
	cmpw	$5, 76(%ebx)
	jle	L1291
	xorps	%xmm1, %xmm1
	ucomiss	100(%ebx), %xmm1
	jp	L1291
	je	L1290
L1291:
	movl	24(%esi), %edx
	xorl	%ecx, %ecx
	movl	%eax, 8(%esp)
	leal	116(%ebx), %ebp
	testl	%edx, %edx
	setne	%cl
	movl	%ecx, %edi
	leal	64(%ebx), %ecx
	movl	%ecx, 4(%esp)
L1293:
	movl	$0x00000000, 100(%ebx)
	movl	4(%esp), %eax
	movl	$5, %edx
	movss	40(%esi), %xmm0
	call	_tsf_voice_envelope_nextsegment
	movl	$5, %edx
	movl	%ebp, %eax
	movl	$0x00000000, 152(%ebx)
	movss	40(%esi), %xmm0
	call	_tsf_voice_envelope_nextsegment
	subl	$1, %edi
	jnb	L1293
	movl	8(%esp), %eax
L1290:
	addl	$256, %ebx
	cmpl	%ebx, %eax
	jne	L1294
	movl	20(%esp), %edi
	.cfi_restore 7
	movl	24(%esp), %ebp
	.cfi_restore 5
L1289:
	movl	12(%esi), %eax
	testl	%eax, %eax
	je	L1295
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 28
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	movl	$0, 12(%esi)
	movl	__ZL9sf2_synth, %esi
L1295:
	xorl	%ebx, %ebx
	jmp	L1297
	.p2align 4,,10
	.p2align 3
L1307:
	movl	__ZL9sf2_synth, %esi
L1297:
	xorl	%eax, %eax
	cmpl	$9, %ebx
	movl	%ebx, %edx
	sete	%al
	xorl	%ecx, %ecx
	addl	$1, %ebx
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	_tsf_channel_set_presetnumber.isra.0
	cmpl	$16, %ebx
	jne	L1307
	movl	$__Z19SF2Drv_MIDI_Servicev, %eax
	call	_MV_HookMusicRoutine
	movl	12(%esp), %ebx
	movl	16(%esp), %esi
	xorl	%eax, %eax
	addl	$28, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE150:
	.section .rdata,"dr"
LC85:
	.ascii "?\0"
	.align 4
LC86:
	.ascii "%s/midi_dispose_buffer unpreparing buffer %p\0"
	.align 4
LC87:
	.ascii "midi_dispose_buffer: error in midiOutUnprepareHeader\0"
LC88:
	.ascii "%s: %s (0x%08x)\0"
	.align 4
LC89:
	.ascii "MME %s/midi_dispose_buffer recycling buffer %p\0"
	.text
	.p2align 4
	.def	__ZL19midi_dispose_bufferP10MidiBufferPKc;	.scl	3;	.type	32;	.endef
__ZL19midi_dispose_bufferP10MidiBufferPKc:
LFB155:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, %ecx
	movl	%ebx, 36(%esp)
	testb	$2, 24(%eax)
	.cfi_offset 3, -12
	jne	L1324
L1309:
	movl	12(%ecx), %eax
	movl	$1536, %ebx
	cmpl	%ebx, %eax
	cmovb	%ebx, %eax
	movl	4(%ecx), %ebx
	movl	%eax, 12(%ecx)
	movl	(%ecx), %eax
	movl	%eax, (%ebx)
	movl	4(%ecx), %ebx
	movl	%ebx, 4(%eax)
	movl	$__ZL15spareBufferList, (%ecx)
	movl	__ZL15spareBufferList+4, %eax
	movl	%eax, 4(%ecx)
	movl	%ecx, (%eax)
	movl	__ZL19numSpareMidiBuffers, %eax
	movl	%ecx, __ZL15spareBufferList+4
	addl	$1, %eax
	movl	%eax, __ZL19numSpareMidiBuffers
	cmpl	__ZL19maxSpareMidiBuffers, %eax
	jle	L1313
	movl	%eax, __ZL19maxSpareMidiBuffers
L1313:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ebx
	cmpl	%ebx, %eax
	cmovl	%ebx, %eax
	cmpl	$126, %eax
	jg	L1325
	movl	36(%esp), %ebx
	addl	$44, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1324:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ebx
	cmpl	%ebx, %eax
	cmovl	%ebx, %eax
	cmpl	$126, %eax
	jg	L1326
L1310:
	leal	8(%ecx), %eax
	movl	%edx, 32(%esp)
	movl	%eax, 4(%esp)
	movl	__ZL10midiStream, %eax
	movl	%ecx, 28(%esp)
	movl	$64, 8(%esp)
	movl	%eax, (%esp)
	call	*__imp__midiOutUnprepareHeader@12
	.cfi_def_cfa_offset 36
	subl	$12, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	28(%esp), %ecx
	movl	32(%esp), %edx
	jne	L1327
L1311:
	andl	$-3, 24(%ecx)
	jmp	L1309
	.p2align 4,,10
	.p2align 3
L1325:
	movl	%ecx, 20(%esp)
	movl	%edx, 16(%esp)
	movl	$LC89, 12(%esp)
	movl	$161, 8(%esp)
	movl	$LC37, 4(%esp)
	movl	$127, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	36(%esp), %ebx
	addl	$44, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1326:
	.cfi_restore_state
	movl	%ecx, 20(%esp)
	movl	%edx, 16(%esp)
	movl	$LC86, 12(%esp)
	movl	$148, 8(%esp)
	movl	$LC37, 4(%esp)
	movl	$127, (%esp)
	movl	%ecx, 32(%esp)
	movl	%edx, 28(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	32(%esp), %ecx
	movl	28(%esp), %edx
	jmp	L1310
	.p2align 4,,10
	.p2align 3
L1327:
	movl	%esi, 40(%esp)
	.cfi_offset 6, -8
	movl	$LC85, %esi
	cmpl	$20, %eax
	ja	L1312
	movl	_CSWTCH.183(,%eax,4), %esi
L1312:
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ebx
	cmpl	%ebx, __ZN6loguru18g_stderr_verbosityE
	cmovge	__ZN6loguru18g_stderr_verbosityE, %ebx
	cmpl	$-2, %ebx
	jge	L1328
	movl	40(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L1311
	.p2align 4,,10
	.p2align 3
L1328:
	.cfi_restore_state
	movl	%esi, 20(%esp)
	movl	%eax, 24(%esp)
	movl	$LC87, 16(%esp)
	movl	$LC88, 12(%esp)
	movl	$138, 8(%esp)
	movl	$LC37, 4(%esp)
	movl	$-2, (%esp)
	movl	%edx, 32(%esp)
	movl	%ecx, 28(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	32(%esp), %edx
	movl	28(%esp), %ecx
	movl	40(%esp), %esi
	.cfi_restore 6
	jmp	L1311
	.cfi_endproc
LFE155:
	.section .rdata,"dr"
	.align 4
LC90:
	.ascii "Error in WinMMDrv_MIDI_Lock(): WaitForSingleObject() returned %d\0"
	.text
	.p2align 4
	.globl	__Z18WinMMDrv_MIDI_Lockv
	.def	__Z18WinMMDrv_MIDI_Lockv;	.scl	2;	.type	32;	.endef
__Z18WinMMDrv_MIDI_Lockv:
LFB157:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	__ZL9midiMutex, %eax
	movl	$-1, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__WaitForSingleObject@8
	.cfi_def_cfa_offset 16
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	testl	%eax, %eax
	jne	L1335
L1329:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1335:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L1329
	movl	%eax, 16(%esp)
	movl	$LC90, 12(%esp)
	movl	$870, 8(%esp)
	movl	$LC37, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE157:
	.section .rdata,"dr"
	.align 4
LC91:
	.ascii "midi_flush_current_buffer: error in midiOutPrepareHeader\0"
	.align 4
LC92:
	.ascii "midi_flush_current_buffer: error in midiStreamOut\0"
	.align 4
LC93:
	.ascii "midi_flush_current_buffer: error in midiOutLongMsg\0"
LC94:
	.ascii "midi_flush_current_buffer\0"
	.align 4
LC95:
	.ascii "midi_flush_current_buffer: error in midiOutShortMsg\0"
	.text
	.p2align 4
	.def	__ZL25midi_flush_current_bufferv;	.scl	3;	.type	32;	.endef
__ZL25midi_flush_current_bufferv:
LFB158:
	.cfi_startproc
	movl	__ZL17currentMidiBuffer, %edx
	testl	%edx, %edx
	je	L1370
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	__ZL10midiStream, %ecx
	movl	16(%edx), %eax
	cmpl	$0, __ZL17midiStreamRunning
	jne	L1338
	testl	%eax, %eax
	jne	L1339
	movl	12(%edx), %eax
	testl	%eax, %eax
	jne	L1341
L1342:
	movl	80(%edx), %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	call	*__imp__midiOutShortMsg@8
	.cfi_def_cfa_offset 28
	subl	$8, %esp
	.cfi_def_cfa_offset 36
	testl	%eax, %eax
	jne	L1374
L1336:
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1339:
	.cfi_restore_state
	subl	$12, %eax
	movl	$0, 16(%edx)
	movl	%eax, 12(%edx)
	testl	%eax, %eax
	je	L1342
L1341:
	movl	16(%edx), %eax
	movl	%edx, 28(%esp)
	movl	%eax, 12(%edx)
	leal	8(%edx), %eax
	movl	$64, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	*__imp__midiOutPrepareHeader@12
	.cfi_def_cfa_offset 24
	subl	$12, %esp
	.cfi_def_cfa_offset 36
	testl	%eax, %eax
	movl	28(%esp), %edx
	je	L1375
L1351:
	movl	$LC85, %ecx
	cmpl	$20, %eax
	ja	L1343
	movl	_CSWTCH.183(,%eax,4), %ecx
L1343:
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, __ZN6loguru18g_stderr_verbosityE
	cmovge	__ZN6loguru18g_stderr_verbosityE, %edx
	cmpl	$-2, %edx
	jl	L1336
	movl	%eax, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	$LC91, 16(%esp)
L1373:
	movl	$LC88, 12(%esp)
	movl	$138, 8(%esp)
	movl	$LC37, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1336
	.p2align 4,,10
	.p2align 3
L1338:
	movl	%eax, 12(%edx)
	addl	$8, %edx
	movl	$64, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	*__imp__midiOutPrepareHeader@12
	.cfi_def_cfa_offset 24
	subl	$12, %esp
	.cfi_def_cfa_offset 36
	testl	%eax, %eax
	jne	L1351
	movl	__ZL17currentMidiBuffer, %eax
	movl	$64, 8(%esp)
	addl	$8, %eax
	movl	%eax, 4(%esp)
	movl	__ZL10midiStream, %eax
	movl	%eax, (%esp)
	call	*__imp__midiStreamOut@12
	.cfi_def_cfa_offset 24
	subl	$12, %esp
	.cfi_def_cfa_offset 36
	testl	%eax, %eax
	jne	L1376
L1344:
	movl	__ZL17currentMidiBuffer, %eax
	movl	$__ZL16activeBufferList, (%eax)
	movl	__ZL16activeBufferList+4, %edx
	movl	%edx, 4(%eax)
	movl	%eax, (%edx)
	movl	%eax, __ZL16activeBufferList+4
	movl	__ZL20numActiveMidiBuffers, %eax
	addl	$1, %eax
	movl	%eax, __ZL20numActiveMidiBuffers
	cmpl	__ZL20maxActiveMidiBuffers, %eax
	jle	L1350
	movl	%eax, __ZL20maxActiveMidiBuffers
L1350:
	movl	$0, __ZL17currentMidiBuffer
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1375:
	.cfi_restore_state
	movl	__ZL17currentMidiBuffer, %eax
	movl	__ZL10midiStream, %ecx
	cmpl	$0, 12(%eax)
	je	L1342
	movl	$4919, 20(%eax)
	addl	$8, %eax
	movl	$64, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	*__imp__midiOutLongMsg@12
	.cfi_def_cfa_offset 24
	subl	$12, %esp
	.cfi_def_cfa_offset 36
	testl	%eax, %eax
	jne	L1346
	movl	__ZL23midiBufferFinishedEvent, %eax
	movl	$-1, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__WaitForSingleObject@8
	.cfi_def_cfa_offset 28
	subl	$8, %esp
	.cfi_def_cfa_offset 36
L1347:
	movl	__ZL17currentMidiBuffer, %eax
	movl	$LC94, %edx
	call	__ZL19midi_dispose_bufferP10MidiBufferPKc
	movl	$0, __ZL17currentMidiBuffer
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1374:
	.cfi_restore_state
	movl	$LC85, %ecx
	cmpl	$20, %eax
	jbe	L1377
L1349:
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, __ZN6loguru18g_stderr_verbosityE
	cmovge	__ZN6loguru18g_stderr_verbosityE, %edx
	cmpl	$-2, %edx
	jl	L1336
	movl	%eax, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	$LC95, 16(%esp)
	jmp	L1373
	.p2align 4,,10
	.p2align 3
L1370:
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1376:
	.cfi_def_cfa_offset 36
	movl	$LC85, %ecx
	cmpl	$20, %eax
	ja	L1345
	movl	_CSWTCH.183(,%eax,4), %ecx
L1345:
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, __ZN6loguru18g_stderr_verbosityE
	cmovge	__ZN6loguru18g_stderr_verbosityE, %edx
	cmpl	$-2, %edx
	jl	L1344
	movl	%eax, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	$LC92, 16(%esp)
	movl	$LC88, 12(%esp)
	movl	$138, 8(%esp)
	movl	$LC37, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1344
	.p2align 4,,10
	.p2align 3
L1346:
	movl	$LC85, %ecx
	cmpl	$20, %eax
	jbe	L1378
L1348:
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, __ZN6loguru18g_stderr_verbosityE
	cmovge	__ZN6loguru18g_stderr_verbosityE, %edx
	cmpl	$-2, %edx
	jl	L1347
	movl	%eax, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	$LC93, 16(%esp)
	movl	$LC88, 12(%esp)
	movl	$138, 8(%esp)
	movl	$LC37, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1347
	.p2align 4,,10
	.p2align 3
L1378:
	movl	_CSWTCH.183(,%eax,4), %ecx
	jmp	L1348
	.p2align 4,,10
	.p2align 3
L1377:
	movl	_CSWTCH.183(,%eax,4), %ecx
	jmp	L1349
	.cfi_endproc
LFE158:
	.section .rdata,"dr"
	.align 4
LC96:
	.ascii "MME midi_get_buffer fetched buffer %p\0"
	.align 4
LC97:
	.ascii "MME midi_get_buffer allocated buffer %p\0"
	.text
	.p2align 4
	.def	__ZL15midi_get_bufferiPPh.isra.0;	.scl	3;	.type	32;	.endef
__ZL15midi_get_bufferiPPh.isra.0:
LFB160:
	.cfi_startproc
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	%ebx, 24(%esp)
	.cfi_offset 3, -20
	leal	3(%eax), %ebx
	andl	$-4, %ebx
	movl	%edi, 32(%esp)
	.cfi_offset 7, -12
	movl	%edx, %edi
	movl	__ZL17midiStreamRunning, %edx
	addl	$12, %ebx
	movl	%esi, 28(%esp)
	cmpl	$3, %eax
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	$12, %eax
	cmovle	%eax, %ebx
	movl	__ZL17currentMidiBuffer, %eax
	testl	%edx, %edx
	je	L1381
	testl	%eax, %eax
	je	L1382
	movl	16(%eax), %edx
	leal	(%edx,%ebx), %ecx
	cmpl	$1536, %ecx
	jbe	L1419
	call	__ZL25midi_flush_current_bufferv
	movl	__ZL15spareBufferList, %eax
	movl	$0, __ZL17currentMidiBuffer
	cmpl	$__ZL15spareBufferList, %eax
	jne	L1394
	jmp	L1416
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1390:
	cmpl	$__ZL15spareBufferList, %eax
	je	L1420
L1394:
	movl	12(%eax), %edx
	movl	%eax, %ecx
	movl	(%eax), %eax
	cmpl	%ebx, %edx
	jb	L1390
	movl	4(%ecx), %edx
	subl	$1, __ZL19numSpareMidiBuffers
	movl	%ecx, 20(%esp)
	movl	%eax, (%edx)
	movl	4(%ecx), %edx
	movl	%edx, 4(%eax)
	movl	12(%ecx), %edx
	movl	8(%ecx), %eax
	movl	%ecx, 4(%ecx)
	movl	%ecx, (%ecx)
	movl	$0, 16(%ecx)
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	20(%esp), %ecx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%ecx, __ZL17currentMidiBuffer
	cmpl	$126, %eax
	jg	L1391
L1418:
	movl	16(%ecx), %eax
	shrl	$2, %eax
	leal	72(%ecx,%eax,4), %eax
L1392:
	xorl	%edx, %edx
	cmpl	$0, __ZL10midiThread
	je	L1397
	movl	__ZL15midiThreadTimer, %edx
	subl	__ZL17midiLastEventTime, %edx
L1397:
	movl	%edx, (%eax)
	movl	$0, 4(%eax)
	cmpl	$3, %esi
	jg	L1398
	leal	8(%eax), %edx
	xorl	%esi, %esi
L1399:
	movl	%esi, 8(%eax)
	movl	%edx, (%edi)
	addl	%ebx, 16(%ecx)
L1379:
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
L1381:
	.cfi_restore_state
	movl	%ebp, 36(%esp)
	testl	%eax, %eax
	.cfi_offset 5, -8
	je	L1388
	call	__ZL25midi_flush_current_bufferv
	movl	$0, __ZL17currentMidiBuffer
L1388:
	movl	$1536, %eax
	movl	_g_sm_heap, %ecx
	cmpl	%eax, %ebx
	cmovnb	%ebx, %eax
	leal	72(%eax), %edx
	movl	%eax, %ebp
	movl	%edx, (%esp)
	movl	%edx, 20(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	testl	%eax, %eax
	movl	20(%esp), %edx
	je	L1395
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 20(%esp)
	call	_memset
	movl	20(%esp), %ecx
	movl	%ecx, (%ecx)
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	leal	72(%ecx), %eax
	cmpl	%edx, __ZN6loguru18g_stderr_verbosityE
	cmovge	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	%ecx, 20(%ecx)
	movl	%eax, 8(%ecx)
	movl	%ebp, 12(%ecx)
	movl	$0, 16(%ecx)
	movl	%ecx, __ZL17currentMidiBuffer
	movl	%ecx, 4(%ecx)
	cmpl	$126, %edx
	jg	L1421
	movl	36(%esp), %ebp
	.cfi_restore 5
	jmp	L1392
	.p2align 4,,10
	.p2align 3
L1398:
	andl	$16777215, %esi
	leal	12(%eax), %edx
	orl	$-2147483648, %esi
	jmp	L1399
	.p2align 4,,10
	.p2align 3
L1420:
	movl	__ZL17currentMidiBuffer, %ecx
L1393:
	testl	%ecx, %ecx
	jne	L1418
L1416:
	movl	%ebp, 36(%esp)
	.cfi_offset 5, -8
	jmp	L1388
	.p2align 4,,10
	.p2align 3
L1382:
	.cfi_restore 5
	movl	__ZL15spareBufferList, %eax
	cmpl	$__ZL15spareBufferList, %eax
	jne	L1394
	jmp	L1416
	.p2align 4,,10
	.p2align 3
L1421:
	.cfi_offset 5, -8
	movl	%ecx, 16(%esp)
	movl	$LC97, 12(%esp)
	movl	$399, 8(%esp)
	movl	$LC37, 4(%esp)
	movl	$127, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZL17currentMidiBuffer, %ecx
	movl	36(%esp), %ebp
	.cfi_restore 5
	movl	16(%ecx), %eax
	shrl	$2, %eax
	leal	72(%ecx,%eax,4), %eax
	jmp	L1392
	.p2align 4,,10
	.p2align 3
L1391:
	movl	%ecx, 16(%esp)
	movl	$LC96, 12(%esp)
	movl	$379, 8(%esp)
	movl	$LC37, 4(%esp)
	movl	$127, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZL17currentMidiBuffer, %ecx
	jmp	L1393
	.p2align 4,,10
	.p2align 3
L1419:
	shrl	$2, %edx
	xorl	%ecx, %ecx
	leal	72(%eax,%edx,4), %edx
	cmpl	$0, __ZL10midiThread
	je	L1384
	movl	__ZL15midiThreadTimer, %ecx
	subl	__ZL17midiLastEventTime, %ecx
L1384:
	movl	%ecx, (%edx)
	movl	$0, 4(%edx)
	cmpl	$3, %esi
	jle	L1422
	andl	$16777215, %esi
	leal	12(%edx), %ecx
	orl	$-2147483648, %esi
L1386:
	movl	%esi, 8(%edx)
	movl	%ecx, (%edi)
	addl	%ebx, 16(%eax)
	jmp	L1379
L1422:
	leal	8(%edx), %ecx
	xorl	%esi, %esi
	jmp	L1386
L1395:
	.cfi_offset 5, -8
	movl	%edx, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE160:
	.p2align 4
	.def	__ZL11MME_NoteOffiii;	.scl	3;	.type	32;	.endef
__ZL11MME_NoteOffiii:
LFB162:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	$3, %eax
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	24(%esp), %edi
	movl	%esp, %edx
	movl	20(%esp), %ebx
	movl	28(%esp), %esi
	call	__ZL15midi_get_bufferiPPh.isra.0
	movl	(%esp), %eax
	movl	%edi, %ecx
	orl	$-128, %ebx
	movb	%cl, 1(%eax)
	movl	%esi, %ecx
	movb	%bl, (%eax)
	movb	%cl, 2(%eax)
	movl	__ZL10midiThread, %eax
	testl	%eax, %eax
	je	L1426
	movl	__ZL15midiThreadTimer, %eax
	movl	%eax, __ZL17midiLastEventTime
	addl	$4, %esp
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
L1426:
	.cfi_restore_state
	addl	$4, %esp
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
	jmp	__ZL25midi_flush_current_bufferv
	.cfi_endproc
LFE162:
	.p2align 4
	.def	__ZL10MME_NoteOniii;	.scl	3;	.type	32;	.endef
__ZL10MME_NoteOniii:
LFB164:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	$3, %eax
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	24(%esp), %edi
	movl	%esp, %edx
	movl	20(%esp), %ebx
	movl	28(%esp), %esi
	call	__ZL15midi_get_bufferiPPh.isra.0
	movl	(%esp), %eax
	movl	%edi, %ecx
	orl	$-112, %ebx
	movb	%cl, 1(%eax)
	movl	%esi, %ecx
	movb	%bl, (%eax)
	movb	%cl, 2(%eax)
	movl	__ZL10midiThread, %eax
	testl	%eax, %eax
	je	L1430
	movl	__ZL15midiThreadTimer, %eax
	movl	%eax, __ZL17midiLastEventTime
	addl	$4, %esp
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
L1430:
	.cfi_restore_state
	addl	$4, %esp
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
	jmp	__ZL25midi_flush_current_bufferv
	.cfi_endproc
LFE164:
	.p2align 4
	.def	__ZL18MME_PolyAftertouchiii;	.scl	3;	.type	32;	.endef
__ZL18MME_PolyAftertouchiii:
LFB165:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	$3, %eax
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	24(%esp), %edi
	movl	%esp, %edx
	movl	20(%esp), %ebx
	movl	28(%esp), %esi
	call	__ZL15midi_get_bufferiPPh.isra.0
	movl	(%esp), %eax
	movl	%edi, %ecx
	orl	$-96, %ebx
	movb	%cl, 1(%eax)
	movl	%esi, %ecx
	movb	%bl, (%eax)
	movb	%cl, 2(%eax)
	movl	__ZL10midiThread, %eax
	testl	%eax, %eax
	je	L1434
	movl	__ZL15midiThreadTimer, %eax
	movl	%eax, __ZL17midiLastEventTime
	addl	$4, %esp
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
L1434:
	.cfi_restore_state
	addl	$4, %esp
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
	jmp	__ZL25midi_flush_current_bufferv
	.cfi_endproc
LFE165:
	.p2align 4
	.def	__ZL17MME_ControlChangeiii;	.scl	3;	.type	32;	.endef
__ZL17MME_ControlChangeiii:
LFB167:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	$3, %eax
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	24(%esp), %edi
	movl	%esp, %edx
	movl	20(%esp), %ebx
	movl	28(%esp), %esi
	call	__ZL15midi_get_bufferiPPh.isra.0
	movl	(%esp), %eax
	movl	%edi, %ecx
	orl	$-80, %ebx
	movb	%cl, 1(%eax)
	movl	%esi, %ecx
	movb	%bl, (%eax)
	movb	%cl, 2(%eax)
	movl	__ZL10midiThread, %eax
	testl	%eax, %eax
	je	L1438
	movl	__ZL15midiThreadTimer, %eax
	movl	%eax, __ZL17midiLastEventTime
	addl	$4, %esp
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
L1438:
	.cfi_restore_state
	addl	$4, %esp
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
	jmp	__ZL25midi_flush_current_bufferv
	.cfi_endproc
LFE167:
	.p2align 4
	.def	__ZL17MME_ProgramChangeii;	.scl	3;	.type	32;	.endef
__ZL17MME_ProgramChangeii:
LFB168:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	$2, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %ebx
	movl	20(%esp), %esi
	movl	%esp, %edx
	call	__ZL15midi_get_bufferiPPh.isra.0
	movl	(%esp), %eax
	orl	$-64, %ebx
	movl	%esi, %ecx
	movb	%bl, (%eax)
	movb	%cl, 1(%eax)
	movl	__ZL10midiThread, %eax
	testl	%eax, %eax
	je	L1442
	movl	__ZL15midiThreadTimer, %eax
	movl	%eax, __ZL17midiLastEventTime
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
L1442:
	.cfi_restore_state
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__ZL25midi_flush_current_bufferv
	.cfi_endproc
LFE168:
	.p2align 4
	.def	__ZL21MME_ChannelAftertouchii;	.scl	3;	.type	32;	.endef
__ZL21MME_ChannelAftertouchii:
LFB169:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	$2, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %ebx
	movl	20(%esp), %esi
	movl	%esp, %edx
	call	__ZL15midi_get_bufferiPPh.isra.0
	movl	(%esp), %eax
	orl	$-48, %ebx
	movl	%esi, %ecx
	movb	%bl, (%eax)
	movb	%cl, 1(%eax)
	movl	__ZL10midiThread, %eax
	testl	%eax, %eax
	je	L1446
	movl	__ZL15midiThreadTimer, %eax
	movl	%eax, __ZL17midiLastEventTime
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
L1446:
	.cfi_restore_state
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__ZL25midi_flush_current_bufferv
	.cfi_endproc
LFE169:
	.p2align 4
	.def	__ZL13MME_PitchBendiii;	.scl	3;	.type	32;	.endef
__ZL13MME_PitchBendiii:
LFB171:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	$3, %eax
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	24(%esp), %edi
	movl	%esp, %edx
	movl	20(%esp), %ebx
	movl	28(%esp), %esi
	call	__ZL15midi_get_bufferiPPh.isra.0
	movl	(%esp), %eax
	movl	%edi, %ecx
	orl	$-32, %ebx
	movb	%cl, 1(%eax)
	movl	%esi, %ecx
	movb	%bl, (%eax)
	movb	%cl, 2(%eax)
	movl	__ZL10midiThread, %eax
	testl	%eax, %eax
	je	L1450
	movl	__ZL15midiThreadTimer, %eax
	movl	%eax, __ZL17midiLastEventTime
	addl	$4, %esp
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
L1450:
	.cfi_restore_state
	addl	$4, %esp
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
	jmp	__ZL25midi_flush_current_bufferv
	.cfi_endproc
LFE171:
	.p2align 4
	.def	__ZL9MME_SysExPKhi;	.scl	3;	.type	32;	.endef
__ZL9MME_SysExPKhi:
LFB172:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$16, %esp
	.cfi_def_cfa_offset 28
	movl	32(%esp), %ebx
	leal	12(%esp), %edx
	movl	28(%esp), %esi
	movl	%ebx, %eax
	call	__ZL15midi_get_bufferiPPh.isra.0
	movl	12(%esp), %eax
	movl	%ebx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movl	__ZL10midiThread, %eax
	testl	%eax, %eax
	je	L1454
	movl	__ZL15midiThreadTimer, %eax
	movl	%eax, __ZL17midiLastEventTime
	addl	$16, %esp
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
L1454:
	.cfi_restore_state
	addl	$16, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__ZL25midi_flush_current_bufferv
	.cfi_endproc
LFE172:
	.section .rdata,"dr"
	.align 4
LC98:
	.ascii "MME midi_free_buffers pruning spare buffer %p\0"
	.align 4
LC99:
	.ascii "WinMMDrv_MIDI_Shutdown: error in midiStreamClose\0"
	.align 4
LC100:
	.ascii "MME finished, max active buffers: %d max spare buffers: %d\0"
	.text
	.p2align 4
	.globl	__Z22WinMMDrv_MIDI_Shutdownv
	.def	__Z22WinMMDrv_MIDI_Shutdownv;	.scl	2;	.type	32;	.endef
__Z22WinMMDrv_MIDI_Shutdownv:
LFB173:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	__ZL16activeBufferList, %eax
	movl	$0, __ZL17midiStreamRunning
	movl	%ebx, 28(%esp)
	cmpl	%eax, __ZL16activeBufferList+4
	.cfi_offset 3, -12
	je	L1456
	movl	__imp__WaitForSingleObject@8, %ebx
	.p2align 4
	.p2align 3
L1457:
	movl	__ZL23midiBufferFinishedEvent, %eax
	movl	$-1, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	.cfi_def_cfa_offset 32
	movl	__ZL16activeBufferList+4, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	cmpl	%eax, __ZL16activeBufferList
	jne	L1457
L1456:
	movl	__ZL18finishedBufferList, %eax
	cmpl	$__ZL18finishedBufferList, %eax
	je	L1458
	movl	__ZL19numSpareMidiBuffers, %ecx
	movl	(%eax), %edx
	addl	$1, %ecx
	.p2align 6
	.p2align 4
	.p2align 3
L1459:
	movl	4(%eax), %ebx
	movl	%edx, (%ebx)
	movl	4(%eax), %ebx
	movl	%ebx, 4(%edx)
	movl	$__ZL15spareBufferList, (%eax)
	movl	__ZL15spareBufferList+4, %ebx
	movl	%ebx, 4(%eax)
	movl	%eax, (%ebx)
	movl	%ecx, %ebx
	addl	$1, %ecx
	movl	%eax, __ZL15spareBufferList+4
	movl	%edx, %eax
	movl	(%edx), %edx
	cmpl	$__ZL18finishedBufferList, %eax
	jne	L1459
	movl	%ebx, __ZL19numSpareMidiBuffers
L1458:
	movl	__ZL15spareBufferList, %ebx
	cmpl	$__ZL15spareBufferList, %ebx
	je	L1460
	movl	%esi, 32(%esp)
	.cfi_offset 6, -8
	movl	(%ebx), %esi
	jmp	L1462
	.p2align 4,,10
	.p2align 3
L1461:
	movl	(%esi), %eax
	movl	%esi, %ebx
	cmpl	$__ZL15spareBufferList, %esi
	je	L1493
L1470:
	movl	%eax, %esi
L1462:
	movl	4(%ebx), %eax
	movl	%esi, (%eax)
	movl	4(%ebx), %eax
	movl	%eax, 4(%esi)
	movl	%ebx, (%ebx)
	movl	_g_sm_heap, %ecx
	movl	%ebx, 4(%ebx)
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 36
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 40
	subl	$1, __ZL19numSpareMidiBuffers
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$126, %eax
	jle	L1461
	movl	%ebx, 16(%esp)
	movl	%esi, %ebx
	movl	$LC98, 12(%esp)
	movl	$207, 8(%esp)
	movl	$LC37, 4(%esp)
	movl	$127, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	(%esi), %eax
	cmpl	$__ZL15spareBufferList, %esi
	jne	L1470
L1493:
	movl	32(%esp), %esi
	.cfi_restore 6
L1460:
	movl	__ZL10midiStream, %eax
	movl	$0, __ZL20numActiveMidiBuffers
	movl	$0, __ZL17currentMidiBuffer
	testl	%eax, %eax
	je	L1463
	movl	%eax, (%esp)
	call	*__imp__midiStreamClose@4
	.cfi_def_cfa_offset 36
	subl	$4, %esp
	.cfi_def_cfa_offset 40
	testl	%eax, %eax
	jne	L1494
L1464:
	movl	$0, __ZL10midiStream
L1463:
	movl	__ZL10midiThread, %eax
	testl	%eax, %eax
	je	L1466
	movl	__ZL19midiThreadQuitEvent, %eax
	movl	%eax, (%esp)
	call	*__imp__SetEvent@4
	.cfi_def_cfa_offset 36
	movl	__ZL10midiThread, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 40
	movl	$-1, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__WaitForSingleObject@8
	.cfi_def_cfa_offset 32
	movl	__ZL10midiThread, %eax
	movl	__imp__CloseHandle@4, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	movl	%eax, (%esp)
	call	*%ebx
	.cfi_def_cfa_offset 36
	movl	__ZL19midiThreadQuitEvent, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 40
	movl	$0, __ZL10midiThread
	movl	%eax, (%esp)
	call	*%ebx
	.cfi_def_cfa_offset 36
	movl	__ZL20midiThreadResetEvent, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 40
	movl	$0, __ZL19midiThreadQuitEvent
	movl	%eax, (%esp)
	call	*%ebx
	.cfi_def_cfa_offset 36
	subl	$4, %esp
	.cfi_def_cfa_offset 40
	movl	$0, __ZL20midiThreadResetEvent
L1466:
	movl	__ZL9midiMutex, %eax
	testl	%eax, %eax
	je	L1467
	movl	%eax, (%esp)
	call	*__imp__CloseHandle@4
	.cfi_def_cfa_offset 36
	subl	$4, %esp
	.cfi_def_cfa_offset 40
	movl	$0, __ZL9midiMutex
L1467:
	movl	__ZL23midiBufferFinishedEvent, %eax
	testl	%eax, %eax
	je	L1468
	movl	%eax, (%esp)
	call	*__imp__CloseHandle@4
	.cfi_def_cfa_offset 36
	subl	$4, %esp
	.cfi_def_cfa_offset 40
	movl	$0, __ZL23midiBufferFinishedEvent
L1468:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	$0, __ZL13midiInstalled
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$126, %eax
	jg	L1495
	movl	28(%esp), %ebx
	addl	$36, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1495:
	.cfi_restore_state
	movl	__ZL19maxSpareMidiBuffers, %eax
	movl	$LC100, 12(%esp)
	movl	$649, 8(%esp)
	movl	%eax, 20(%esp)
	movl	__ZL20maxActiveMidiBuffers, %eax
	movl	$LC37, 4(%esp)
	movl	%eax, 16(%esp)
	movl	$127, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	28(%esp), %ebx
	addl	$36, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1494:
	.cfi_restore_state
	movl	$LC85, %ebx
	cmpl	$20, %eax
	ja	L1465
	movl	_CSWTCH.183(,%eax,4), %ebx
L1465:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L1464
	movl	%eax, 24(%esp)
	movl	%ebx, 20(%esp)
	movl	$LC99, 16(%esp)
	movl	$LC88, 12(%esp)
	movl	$138, 8(%esp)
	movl	$LC37, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1464
	.cfi_endproc
LFE173:
	.section .rdata,"dr"
LC101:
	.ascii ": [%d] %s\0"
	.align 4
LC102:
	.ascii "WinMMDrv_MIDI_Init: error in midiStreamOpen\0"
	.text
	.p2align 4
	.globl	__Z18WinMMDrv_MIDI_InitP9midifuncs
	.def	__Z18WinMMDrv_MIDI_InitP9midifuncs;	.scl	2;	.type	32;	.endef
__Z18WinMMDrv_MIDI_InitP9midifuncs:
LFB176:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x78,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x7c
	subl	$108, %esp
	movl	$__ZL18finishedBufferList, -72(%ebp)
	movss	-72(%ebp), %xmm0
	movl	__ZL13midiInstalled, %eax
	movl	(%ecx), %ebx
	movl	$__ZL16activeBufferList, -72(%ebp)
	movaps	%xmm0, %xmm2
	unpcklps	%xmm0, %xmm2
	movss	-72(%ebp), %xmm0
	movl	$__ZL15spareBufferList, -72(%ebp)
	movaps	%xmm0, %xmm1
	unpcklps	%xmm0, %xmm1
	movss	-72(%ebp), %xmm0
	unpcklps	%xmm0, %xmm0
	testl	%eax, %eax
	jne	L1514
L1497:
	movlps	%xmm2, __ZL18finishedBufferList
	xorl	%eax, %eax
	movlps	%xmm1, __ZL16activeBufferList
	movlps	%xmm0, __ZL15spareBufferList
	movl	$0, 32(%ebx)
	movl	$0, 36(%ebx)
	movl	$0, 40(%ebx)
	movl	$0, 44(%ebx)
L1498:
	movl	$0, (%ebx,%eax)
	movl	$0, 4(%ebx,%eax)
	movl	$0, 8(%ebx,%eax)
	movl	$0, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L1498
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	*__imp__CreateMutexA@12
	subl	$12, %esp
	movl	%eax, __ZL9midiMutex
	testl	%eax, %eax
	je	L1515
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	*__imp__CreateEventA@16
	subl	$16, %esp
	movl	%eax, __ZL23midiBufferFinishedEvent
	testl	%eax, %eax
	je	L1516
	call	*__imp__midiOutGetNumDevs@0
	leal	-60(%ebp), %edx
	movl	%eax, %ecx
	movl	_WinMM_DeviceID, %eax
	cmpl	%eax, %ecx
	jnb	L1517
L1504:
	movl	$-1, _WinMM_DeviceID
	movl	$-1, %eax
L1505:
	movl	$52, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__midiOutGetDevCapsA@12
	subl	$12, %esp
	testl	%eax, %eax
	je	L1518
L1506:
	movl	$196608, 20(%esp)
	movl	$0, 16(%esp)
	movl	$__ZL13midi_callbackP10HMIDIOUT__jmmm@20, 12(%esp)
	movl	$1, 8(%esp)
	movl	$_WinMM_DeviceID, 4(%esp)
	movl	$__ZL10midiStream, (%esp)
	call	*__imp__midiStreamOpen@24
	subl	$24, %esp
	testl	%eax, %eax
	jne	L1519
	movl	$__ZL17MME_ControlChangeiii, -72(%ebp)
	movss	-72(%ebp), %xmm0
	xorl	%eax, %eax
	movss	LC103, %xmm1
	movl	$__ZL10MME_NoteOniii, -72(%ebp)
	movss	-72(%ebp), %xmm2
	movl	$__ZL21MME_ChannelAftertouchii, -72(%ebp)
	unpcklps	%xmm0, %xmm1
	movss	LC104, %xmm0
	movl	$__ZL13MME_PitchBendiii, 24(%ebx)
	movl	$__ZL9MME_SysExPKhi, 44(%ebx)
	movl	$1, __ZL13midiInstalled
	unpcklps	%xmm2, %xmm0
	movlhps	%xmm1, %xmm0
	movss	-72(%ebp), %xmm1
	movups	%xmm0, (%ebx)
	movss	LC105, %xmm0
	unpcklps	%xmm1, %xmm0
	movlps	%xmm0, 16(%ebx)
L1496:
	leal	-8(%ebp), %esp
	popl	%ecx
	.cfi_remember_state
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L1514:
	.cfi_restore_state
	movlps	%xmm2, -88(%ebp)
	movlps	%xmm1, -80(%ebp)
	movlps	%xmm0, -72(%ebp)
	call	__Z22WinMMDrv_MIDI_Shutdownv
	movlps	-88(%ebp), %xmm2
	movlps	-80(%ebp), %xmm1
	movlps	-72(%ebp), %xmm0
	jmp	L1497
	.p2align 4,,10
	.p2align 3
L1518:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L1506
	leal	-52(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	_WinMM_DeviceID, %eax
	movl	$LC101, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$591, 8(%esp)
	movl	$LC37, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1506
	.p2align 4,,10
	.p2align 3
L1517:
	movl	%edx, 4(%esp)
	movl	$52, 8(%esp)
	movl	%eax, (%esp)
	call	*__imp__midiOutGetDevCapsA@12
	leal	-60(%ebp), %edx
	subl	$12, %esp
	testl	%eax, %eax
	jne	L1504
	movl	_WinMM_DeviceID, %eax
	jmp	L1505
L1515:
	movl	$5, __ZL9ErrorCode.lto_priv.3
L1501:
	movl	$-1, %eax
	jmp	L1496
L1516:
	movl	$3, __ZL9ErrorCode.lto_priv.3
	jmp	L1501
L1519:
	movl	%eax, -72(%ebp)
	movl	$LC85, %ebx
	call	__Z22WinMMDrv_MIDI_Shutdownv
	movl	-72(%ebp), %eax
	cmpl	$20, %eax
	ja	L1508
	movl	_CSWTCH.183(,%eax,4), %ebx
L1508:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1520
L1509:
	movl	$1, __ZL9ErrorCode.lto_priv.3
	jmp	L1501
L1520:
	movl	%eax, 24(%esp)
	movl	%ebx, 20(%esp)
	movl	$LC102, 16(%esp)
	movl	$LC88, 12(%esp)
	movl	$138, 8(%esp)
	movl	$LC37, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1509
	.cfi_endproc
LFE176:
	.p2align 4
	.def	__ZL13midi_callbackP10HMIDIOUT__jmmm@20;	.scl	3;	.type	32;	.endef
__ZL13midi_callbackP10HMIDIOUT__jmmm@20:
LFB177:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	cmpl	$969, 16(%esp)
	je	L1531
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret	$20
	.p2align 4,,10
	.p2align 3
L1531:
	.cfi_restore_state
	call	__Z18WinMMDrv_MIDI_Lockv
	movl	__ZL16activeBufferList, %eax
	movl	24(%esp), %ecx
	cmpl	$__ZL16activeBufferList, %eax
	je	L1523
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -8
	jmp	L1525
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1524:
	cmpl	$__ZL16activeBufferList, %eax
	je	L1532
L1525:
	leal	8(%eax), %edx
	movl	%eax, %ebx
	movl	(%eax), %eax
	cmpl	%edx, %ecx
	jne	L1524
	movl	4(%ebx), %edx
	subl	$1, __ZL20numActiveMidiBuffers
	movl	%eax, (%edx)
	movl	4(%ebx), %edx
	movl	%edx, 4(%eax)
	movl	$__ZL18finishedBufferList, (%ebx)
	movl	__ZL18finishedBufferList+4, %eax
	movl	%eax, 4(%ebx)
	movl	%ebx, (%eax)
	movl	__ZL23midiBufferFinishedEvent, %eax
	movl	%ebx, __ZL18finishedBufferList+4
	movl	%eax, (%esp)
	call	*__imp__SetEvent@4
	.cfi_def_cfa_offset 8
	movl	__ZL9midiMutex, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	%eax, (%esp)
	call	*__imp__ReleaseMutex@4
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	4(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret	$20
	.p2align 4,,10
	.p2align 3
L1532:
	.cfi_restore_state
	movl	4(%esp), %ebx
	.cfi_restore 3
L1523:
	movl	__ZL9midiMutex, %eax
	movl	%eax, (%esp)
	call	*__imp__ReleaseMutex@4
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret	$20
	.cfi_endproc
LFE177:
	.p2align 4
	.globl	__Z20WinMMDrv_MIDI_Unlockv
	.def	__Z20WinMMDrv_MIDI_Unlockv;	.scl	2;	.type	32;	.endef
__Z20WinMMDrv_MIDI_Unlockv:
LFB179:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	__ZL9midiMutex, %eax
	movl	%eax, (%esp)
	call	*__imp__ReleaseMutex@4
	.cfi_def_cfa_offset 4
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE179:
	.section .rdata,"dr"
	.align 4
LC106:
	.ascii "WinMMDrv_MIDI_StartPlayback: error in midiStreamRestart\0"
	.text
	.p2align 4
	.globl	__Z27WinMMDrv_MIDI_StartPlaybackv
	.def	__Z27WinMMDrv_MIDI_StartPlaybackv;	.scl	2;	.type	32;	.endef
__Z27WinMMDrv_MIDI_StartPlaybackv:
LFB180:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	__ZL10midiStream, %eax
	movl	$0, __ZL17midiStreamRunning
	movl	%eax, (%esp)
	call	*__imp__midiStreamRestart@4
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	testl	%eax, %eax
	jne	L1549
	movl	__ZL10midiThread, %eax
	testl	%eax, %eax
	je	L1550
L1540:
	movl	__ZL20midiThreadResetEvent, %eax
	movl	$0, __ZL16midiLastDivision
	movl	%eax, (%esp)
	call	*__imp__SetEvent@4
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	$1, __ZL17midiStreamRunning
L1535:
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1550:
	.cfi_restore_state
	movl	__imp__CreateEventA@16, %edx
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 28(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	*%edx
	.cfi_def_cfa_offset 20
	subl	$16, %esp
	.cfi_def_cfa_offset 36
	testl	%eax, %eax
	movl	%eax, __ZL19midiThreadQuitEvent
	movl	28(%esp), %edx
	je	L1542
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	*%edx
	.cfi_def_cfa_offset 20
	subl	$16, %esp
	.cfi_def_cfa_offset 36
	movl	%eax, __ZL20midiThreadResetEvent
	testl	%eax, %eax
	je	L1542
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$__ZL14midiDataThreadPv@4, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	*__imp___beginthreadex
	movl	%eax, __ZL10midiThread
	testl	%eax, %eax
	jne	L1540
	movl	$4, __ZL9ErrorCode.lto_priv.3
	.p2align 4
	.p2align 3
L1539:
	movl	$-1, %eax
	jmp	L1535
L1549:
	movl	$LC85, %ecx
	cmpl	$20, %eax
	ja	L1537
	movl	_CSWTCH.183(,%eax,4), %ecx
L1537:
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, __ZN6loguru18g_stderr_verbosityE
	cmovge	__ZN6loguru18g_stderr_verbosityE, %edx
	cmpl	$-2, %edx
	jge	L1551
L1538:
	movl	$0, __ZL17midiStreamRunning
	movl	$2, __ZL9ErrorCode.lto_priv.3
	jmp	L1539
L1542:
	movl	$3, __ZL9ErrorCode.lto_priv.3
	jmp	L1539
L1551:
	movl	%eax, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	$LC106, 16(%esp)
	movl	$LC88, 12(%esp)
	movl	$138, 8(%esp)
	movl	$LC37, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1538
	.cfi_endproc
LFE180:
	.section .rdata,"dr"
	.align 4
LC107:
	.ascii "WinMMDrv_MIDI_SetTempo: error in midiStreamStop\0"
	.align 4
LC108:
	.ascii "WinMMDrv_MIDI_SetTempo: error in midiStreamProperty (MIDIPROP_TIMEDIV)\0"
	.align 4
LC109:
	.ascii "WinMMDrv_MIDI_SetTempo: error in midiStreamProperty (MIDIPROP_TEMPO)\0"
	.text
	.p2align 4
	.globl	__Z22WinMMDrv_MIDI_SetTempoii
	.def	__Z22WinMMDrv_MIDI_SetTempoii;	.scl	2;	.type	32;	.endef
__Z22WinMMDrv_MIDI_SetTempoii:
LFB182:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-8, %esp
	movl	$60000000, %eax
	xorl	%edx, %edx
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
	subl	$52, %esp
	movl	4(%ecx), %ebx
	movl	(%ecx), %esi
	movl	$8, -24(%ebp)
	movl	(%ecx), %ecx
	movl	$8, -32(%ebp)
	movl	%ebx, -28(%ebp)
	idivl	%ecx
	movl	__imp__midiStreamProperty@12, %edx
	movl	%eax, -20(%ebp)
	cmpl	%ebx, __ZL16midiLastDivision
	jne	L1575
L1553:
	leal	-24(%ebp), %eax
	movl	$-2147483646, 8(%esp)
	movl	%eax, 4(%esp)
	movl	__ZL10midiStream, %eax
	movl	%eax, (%esp)
	call	*%edx
	subl	$12, %esp
	testl	%eax, %eax
	jne	L1576
L1557:
	cmpl	%ebx, __ZL16midiLastDivision
	je	L1559
	movl	__ZL17midiStreamRunning, %eax
	testl	%eax, %eax
	jne	L1577
L1560:
	movl	%ebx, __ZL16midiLastDivision
L1559:
	movl	%esi, -40(%ebp)
	fildl	-40(%ebp)
	movl	%ebx, -40(%ebp)
	fildl	-40(%ebp)
	fmulp	%st, %st(1)
	fdivs	LC56
	fdivs	LC48
	fstpl	(%esp)
	call	_ceil
	movl	$1, %edx
	fnstcw	-34(%ebp)
	movzwl	-34(%ebp), %eax
	orb	$12, %ah
	movw	%ax, -36(%ebp)
	fldcw	-36(%ebp)
	fistpl	-40(%ebp)
	fldcw	-34(%ebp)
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	cmove	%edx, %eax
	movl	%eax, __ZL20midiThreadQueueTicks
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
L1577:
	.cfi_restore_state
	movl	__ZL10midiStream, %eax
	movl	%eax, (%esp)
	call	*__imp__midiStreamRestart@4
	subl	$4, %esp
	jmp	L1560
	.p2align 4,,10
	.p2align 3
L1575:
	movl	__ZL10midiStream, %eax
	movl	%eax, (%esp)
	call	*__imp__midiStreamStop@4
	subl	$4, %esp
	testl	%eax, %eax
	jne	L1578
L1554:
	leal	-32(%ebp), %eax
	movl	$-2147483647, 8(%esp)
	movl	__imp__midiStreamProperty@12, %edx
	movl	%eax, 4(%esp)
	movl	__ZL10midiStream, %eax
	movl	%eax, (%esp)
	movl	%edx, -40(%ebp)
	call	*%edx
	movl	-40(%ebp), %edx
	subl	$12, %esp
	testl	%eax, %eax
	je	L1553
	movl	$LC85, %edi
	cmpl	$20, %eax
	ja	L1556
	movl	_CSWTCH.183(,%eax,4), %edi
L1556:
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, __ZN6loguru18g_stderr_verbosityE
	cmovge	__ZN6loguru18g_stderr_verbosityE, %ecx
	cmpl	$-2, %ecx
	jl	L1553
	movl	%edx, -40(%ebp)
	movl	%eax, 24(%esp)
	movl	%edi, 20(%esp)
	movl	$LC108, 16(%esp)
	movl	$LC88, 12(%esp)
	movl	$138, 8(%esp)
	movl	$LC37, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	-40(%ebp), %edx
	jmp	L1553
	.p2align 4,,10
	.p2align 3
L1576:
	movl	$LC85, %ecx
	cmpl	$20, %eax
	jbe	L1579
L1558:
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, __ZN6loguru18g_stderr_verbosityE
	cmovge	__ZN6loguru18g_stderr_verbosityE, %edx
	cmpl	$-2, %edx
	jl	L1557
	movl	%eax, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	$LC109, 16(%esp)
	movl	$LC88, 12(%esp)
	movl	$138, 8(%esp)
	movl	$LC37, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1557
	.p2align 4,,10
	.p2align 3
L1579:
	movl	_CSWTCH.183(,%eax,4), %ecx
	jmp	L1558
	.p2align 4,,10
	.p2align 3
L1578:
	movl	$LC85, %ecx
	cmpl	$20, %eax
	ja	L1555
	movl	_CSWTCH.183(,%eax,4), %ecx
L1555:
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, __ZN6loguru18g_stderr_verbosityE
	cmovge	__ZN6loguru18g_stderr_verbosityE, %edx
	cmpl	$-2, %edx
	jl	L1554
	movl	%eax, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	$LC107, 16(%esp)
	movl	$LC88, 12(%esp)
	movl	$138, 8(%esp)
	movl	$LC37, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1554
	.cfi_endproc
LFE182:
	.section .rdata,"dr"
LC111:
	.ascii "divider must be != 0\0"
LC112:
	.ascii "libdivide_internal_u64_gen\0"
	.align 4
LC113:
	.ascii "libdivide.h:%d: %s(): Error: %s\12\0"
	.text
	.p2align 4
	.def	_divideu64.lto_priv.1;	.scl	3;	.type	32;	.endef
_divideu64.lto_priv.1:
LFB183:
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
	movl	__ZZ9divideu64E5lastd.lto_priv.0, %eax
	movl	%edx, 88(%esp)
	movl	8(%ebp), %edx
	movl	%ecx, 96(%esp)
	xorl	%edx, %eax
	movl	%edx, 92(%esp)
	movl	__ZZ9divideu64E5lastd.lto_priv.0+4, %edx
	xorl	%ecx, %edx
	orl	%edx, %eax
	je	L1608
	movl	92(%esp), %esi
	movl	96(%esp), %edi
	movl	%esi, %eax
	movl	%esi, __ZZ9divideu64E5lastd.lto_priv.0
	orl	%edi, %eax
	movl	%edi, __ZZ9divideu64E5lastd.lto_priv.0+4
	je	L1609
	movl	96(%esp), %edx
	testl	%edx, %edx
	je	L1584
	bsrl	%edx, %eax
	xorl	$31, %eax
	movl	%eax, 64(%esp)
L1585:
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
	jne	L1586
	movl	$0, __ZZ9divideu64E4udiv.lto_priv.0
	movl	%edi, %eax
	movl	$0, __ZZ9divideu64E4udiv.lto_priv.0+4
	movb	%al, __ZZ9divideu64E4udiv.lto_priv.0+8
L1587:
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
L1584:
	.cfi_restore_state
	bsrl	92(%esp), %eax
	xorl	$31, %eax
	addl	$32, %eax
	movl	%eax, 64(%esp)
	jmp	L1585
	.p2align 4,,10
	.p2align 3
L1608:
	movzbl	__ZZ9divideu64E4udiv.lto_priv.0+8, %eax
	movl	__ZZ9divideu64E4udiv.lto_priv.0+4, %edx
	movb	%al, 76(%esp)
	movl	__ZZ9divideu64E4udiv.lto_priv.0, %eax
	movl	%edx, 96(%esp)
	movl	%eax, 92(%esp)
L1582:
	movl	92(%esp), %esi
	movl	96(%esp), %edi
	movl	%esi, %eax
	orl	%edi, %eax
	je	L1587
L1600:
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
	je	L1602
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
L1586:
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
	jnc	L1610
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
	jnc	L1591
	subl	%ecx, %eax
	movl	68(%esp), %ecx
	sbbl	%ebx, %edx
	movl	72(%esp), %ebx
	cmpl	%eax, %ecx
	movl	$1, %eax
	movl	%ebx, %edi
	sbbl	%edx, %edi
	movl	$0, %edx
	jnc	L1592
	movl	$2, %eax
	xorl	%edx, %edx
L1592:
	movl	28(%esp), %ebx
	movl	32(%esp), %esi
	subl	%eax, %ebx
	sbbl	%edx, %esi
	movl	%ebx, 36(%esp)
	movl	%esi, 40(%esp)
L1591:
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
	jnc	L1593
	subl	%ecx, %eax
	movl	68(%esp), %ecx
	sbbl	%ebx, %edx
	movl	72(%esp), %ebx
	cmpl	%eax, %ecx
	movl	$1, %eax
	movl	%ebx, %edi
	sbbl	%edx, %edi
	movl	$0, %edx
	jnc	L1594
	movl	$2, %eax
	xorl	%edx, %edx
L1594:
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	subl	%eax, %ebx
	sbbl	%edx, %esi
	movl	%ebx, 52(%esp)
	movl	%esi, 56(%esp)
L1593:
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
	jnc	L1595
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, 92(%esp)
	movl	%edx, 96(%esp)
L1596:
	movl	92(%esp), %eax
	movl	96(%esp), %edx
	movl	%eax, __ZZ9divideu64E4udiv.lto_priv.0
	movzbl	76(%esp), %eax
	movl	%edx, __ZZ9divideu64E4udiv.lto_priv.0+4
	movb	%al, __ZZ9divideu64E4udiv.lto_priv.0+8
	jmp	L1582
	.p2align 4,,10
	.p2align 3
L1602:
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
L1595:
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
	jc	L1597
	movl	92(%esp), %ebx
	movl	96(%esp), %esi
	cmpl	%ebx, %eax
	movl	%edx, %eax
	sbbl	%esi, %eax
	jc	L1611
L1597:
	movl	76(%esp), %ecx
	movl	80(%esp), %ebx
	movzbl	60(%esp), %eax
	addl	$2, %ecx
	adcl	$0, %ebx
	orl	$64, %eax
	movl	%ecx, 92(%esp)
	movl	%ebx, 96(%esp)
	movb	%al, 76(%esp)
	jmp	L1596
	.p2align 4,,10
	.p2align 3
L1610:
	movl	44(%esp), %eax
	addl	$1, %esi
	movl	48(%esp), %edx
	adcl	$0, %edi
	cmpl	%eax, %esi
	sbbl	%edx, %edi
	jnc	L1612
	movl	$0, __ZZ9divideu64E4udiv.lto_priv.0
	movzbl	60(%esp), %eax
	movl	$0, __ZZ9divideu64E4udiv.lto_priv.0+4
	movb	%al, __ZZ9divideu64E4udiv.lto_priv.0+8
	jmp	L1587
	.p2align 4,,10
	.p2align 3
L1611:
	movl	76(%esp), %esi
	movl	80(%esp), %edi
	movzbl	60(%esp), %eax
	addl	$1, %esi
	adcl	$0, %edi
	orl	$64, %eax
	movl	%esi, 92(%esp)
	movl	%edi, 96(%esp)
	movb	%al, 76(%esp)
	movl	%esi, __ZZ9divideu64E4udiv.lto_priv.0
	movl	%edi, __ZZ9divideu64E4udiv.lto_priv.0+4
	movb	%al, __ZZ9divideu64E4udiv.lto_priv.0+8
	jmp	L1600
	.p2align 4,,10
	.p2align 3
L1612:
	movl	$0, __ZZ9divideu64E4udiv.lto_priv.0
	movl	%ecx, %eax
	movl	$0, __ZZ9divideu64E4udiv.lto_priv.0+4
	orl	$64, %eax
	movb	%al, 76(%esp)
	movb	%al, __ZZ9divideu64E4udiv.lto_priv.0+8
	jmp	L1587
L1609:
	movl	$2, (%esp)
	call	*__imp____acrt_iob_func
	movl	$LC111, 16(%esp)
	movl	$LC112, 12(%esp)
	movl	$1033, 8(%esp)
	movl	$LC113, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	call	_abort
	.cfi_endproc
LFE183:
	.p2align 4
	.def	__ZL9read_flacPvjjS_;	.scl	3;	.type	32;	.endef
__ZL9read_flacPvjjS_:
LFB184:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	movl	44(%esp), %esi
	movl	%edi, 20(%esp)
	.cfi_offset 7, -12
	movl	32(%esp), %edi
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	xorl	%ebp, %ebp
	call	*__imp___errno
	movl	$0, (%eax)
	movl	4(%esi), %ecx
	movl	8(%esi), %eax
	cmpl	%eax, %ecx
	je	L1613
	movl	40(%esp), %edx
	testl	%edx, %edx
	je	L1616
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -20
	jmp	L1615
	.p2align 4,,10
	.p2align 3
L1627:
	addl	%ebx, %edi
	cmpl	%ebp, 40(%esp)
	je	L1626
L1615:
	subl	%eax, %ecx
	cmpl	36(%esp), %ecx
	movl	%ecx, %ebx
	cmova	36(%esp), %ebx
	addl	(%esi), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	addl	$1, %ebp
	movl	%ebx, 8(%esp)
	call	_memcpy
	movl	8(%esi), %eax
	movl	4(%esi), %ecx
	addl	%ebx, %eax
	movl	%eax, 8(%esi)
	cmpl	%ecx, %eax
	jne	L1627
	movl	12(%esp), %ebx
	.cfi_restore 3
L1613:
	movl	%ebp, %eax
	movl	16(%esp), %esi
	movl	20(%esp), %edi
	movl	24(%esp), %ebp
	addl	$28, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1626:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	12(%esp), %ebx
	.cfi_restore 3
L1616:
	movl	40(%esp), %ebp
	jmp	L1613
	.cfi_endproc
LFE184:
	.p2align 4
	.def	__Z16read_flac_streamPK19FLAC__StreamDecoderPhPjPv;	.scl	3;	.type	32;	.endef
__Z16read_flac_streamPK19FLAC__StreamDecoderPhPjPv:
LFB186:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	28(%esp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1631
	movl	32(%esp), %edx
	movl	%eax, 8(%esp)
	movl	24(%esp), %eax
	movl	$1, 4(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, (%esp)
	call	__ZL9read_flacPvjjS_
	movl	28(%esp), %ecx
	movl	%eax, (%ecx)
	call	*__imp___errno
	movl	(%eax), %edx
	testl	%edx, %edx
	jne	L1631
	movl	28(%esp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	sete	%al
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	movzbl	%al, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1631:
	.cfi_restore_state
	movl	$2, %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE186:
	.section .rdata,"dr"
	.align 4
LC114:
	.ascii "write_flac_stream: error in FLAC__stream_decoder_seek_absolute (LOOP_START %I64u, LOOP_END %I64u)\0"
	.text
	.p2align 4
	.def	__Z17write_flac_streamPK19FLAC__StreamDecoderPK11FLAC__FramePKPKiPv;	.scl	3;	.type	32;	.endef
__Z17write_flac_streamPK19FLAC__StreamDecoderPK11FLAC__FramePKPKiPv:
LFB187:
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
	movl	100(%esp), %eax
	movl	$0, 52(%esp)
	movl	32(%eax), %esi
	movl	92(%esp), %eax
	movl	(%eax), %ebx
	movl	8(%eax), %eax
	movl	%eax, 72(%esi)
	movl	92(%esp), %eax
	movl	%ebx, 48(%esp)
	movl	16(%eax), %eax
	movl	%eax, 68(%esi)
	movl	92(%esp), %eax
	movl	4(%eax), %eax
	movl	%eax, 100(%esi)
	movl	92(%esp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	L1634
	movl	92(%esp), %edi
	movl	100(%esp), %eax
	movl	24(%edi), %edi
	movl	$0, 20(%eax)
	movl	%edi, 16(%eax)
L1635:
	movl	32(%esi), %ecx
	testl	%ecx, %ecx
	je	L1637
	movl	100(%esp), %eax
	movl	52(%esp), %edx
	movl	$0, 36(%esp)
	movl	%ecx, 32(%esp)
	movl	16(%eax), %edi
	movl	20(%eax), %ebp
	movl	48(%esp), %eax
	addl	%edi, %eax
	adcl	%ebp, %edx
	cmpl	%ecx, %eax
	movl	%edx, %eax
	sbbl	36(%esp), %eax
	jnc	L1659
L1637:
	movl	68(%esi), %eax
	movl	_MV_MixRate, %ecx
	movl	$0, 108(%esi)
	sarl	$3, %eax
	imull	72(%esi), %eax
	imull	%ebx, %eax
	movl	%eax, %ebp
	movl	100(%esi), %eax
	mull	88(%esi)
	movl	%ecx, (%esp)
	sarl	$31, %ecx
	movl	%ecx, 4(%esp)
	call	_divideu64.lto_priv.1
	movl	%eax, %edx
	movl	%eax, 104(%esi)
	sall	$8, %eax
	subl	%edx, %eax
	movl	%eax, 92(%esi)
	xorl	%eax, %eax
	cmpl	$2, 72(%esi)
	sete	%al
	xorl	%edx, %edx
	sall	$2, %eax
	cmpl	$16, 68(%esi)
	sete	%dl
	addl	%edx, %edx
	orl	%edx, %eax
	xorl	%edx, %edx
	cmpl	$1, _MV_Channels
	sete	%dl
	orl	%edx, %eax
	movl	__ZZ18MV_SetVoiceMixModeP9VoiceNodeE7mixslut.lto_priv.0(,%eax,4), %eax
	movl	%eax, 12(%esi)
	movl	100(%esp), %eax
	cmpl	%ebp, 28(%eax)
	jb	L1660
	movl	100(%esp), %eax
	movl	24(%eax), %edx
L1641:
	movl	48(%esp), %eax
	orl	52(%esp), %eax
	movl	$0, 40(%esp)
	movl	%edx, %edi
	movl	$0, 44(%esp)
	je	L1643
	movl	%ebx, 56(%esp)
	movl	%edx, 60(%esp)
	movl	%ebp, 64(%esp)
	.p2align 4
	.p2align 3
L1642:
	movl	92(%esp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L1650
	movl	40(%esp), %eax
	xorl	%ebx, %ebx
	sall	$2, %eax
	movl	%eax, 32(%esp)
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L1648:
	movl	96(%esp), %edx
	movl	(%edx,%eax,4), %eax
	movl	32(%esp), %edx
	movl	(%eax,%edx), %edx
	movl	68(%esi), %eax
	leal	-1(%eax), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, %ecx
	leal	-1(%eax), %ebp
	negl	%eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	%edx, %ecx
	movl	68(%esi), %edx
	cmovle	%ebp, %eax
	testl	%edx, %edx
	jle	L1646
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L1647:
	movl	%eax, %ebp
	addl	$1, %edi
	addl	$8, %edx
	sarl	%cl, %ebp
	movl	%ebp, %ecx
	movb	%cl, -1(%edi)
	movsbl	%dl, %ecx
	cmpl	68(%esi), %ecx
	jl	L1647
L1646:
	movl	92(%esp), %edx
	addl	$1, %ebx
	movzbl	%bl, %eax
	cmpl	8(%edx), %eax
	jb	L1648
L1650:
	addl	$1, 40(%esp)
	movl	48(%esp), %eax
	adcl	$0, 44(%esp)
	movl	40(%esp), %ecx
	movl	44(%esp), %ebx
	movl	52(%esp), %edx
	xorl	%ecx, %eax
	xorl	%ebx, %edx
	orl	%edx, %eax
	jne	L1642
	movl	56(%esp), %ebx
	movl	60(%esp), %edx
	movl	64(%esp), %ebp
L1643:
	movl	100(%esp), %eax
	sall	$16, %ebx
	movl	%edx, 16(%esi)
	movl	%ebx, 96(%esi)
	movl	24(%eax), %eax
	cmpl	%edx, %eax
	je	L1651
	movl	100(%esp), %ebx
	movl	_g_sm_heap, %ecx
	movl	%edx, 24(%ebx)
	movl	%ebp, 28(%ebx)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 84
	subl	$4, %esp
	.cfi_def_cfa_offset 88
L1651:
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
L1634:
	.cfi_restore_state
	cmpl	$1, %eax
	jne	L1635
	movl	92(%esp), %eax
	movl	100(%esp), %edi
	movl	28(%eax), %edx
	movl	24(%eax), %eax
	movl	%edx, 36(%esp)
	movl	%eax, 32(%esp)
	movl	%eax, 16(%edi)
	movl	%edx, 20(%edi)
	jmp	L1635
L1659:
	movl	32(%esp), %eax
	movl	36(%esp), %edx
	subl	%edi, %eax
	movl	%eax, 48(%esp)
	movl	%eax, %edi
	movl	28(%esi), %eax
	sbbl	%ebp, %edx
	movl	$0, 8(%esp)
	movl	%edi, %ebx
	movl	%eax, 4(%esp)
	movl	100(%esp), %eax
	movl	%edx, 52(%esp)
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_FLAC__stream_decoder_seek_absolute
	testl	%eax, %eax
	jne	L1637
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1637
	movl	32(%esi), %eax
	movl	$0, 28(%esp)
	movl	%eax, 24(%esp)
	movl	28(%esi), %eax
	movl	$0, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC114, 12(%esp)
	movl	$232, 8(%esp)
	movl	$LC42, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1637
	.p2align 4,,10
	.p2align 3
L1660:
	movl	$16, 4(%esp)
	movl	_g_sm_heap, %ecx
	movl	%ebp, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj
	.cfi_def_cfa_offset 80
	subl	$8, %esp
	.cfi_def_cfa_offset 88
	movl	%eax, %edx
	testl	%eax, %eax
	jne	L1641
	movl	%ebp, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE187:
	.section .rdata,"dr"
	.align 4
LC115:
	.ascii "MV_GetNextFLACBlock: error in FLAC__stream_decoder_seek_absolute (LOOP_START %I64u, LOOP_END %I64u)\0"
	.align 4
LC116:
	.ascii "MV_GetNextFLACBlock: error in FLAC__stream_decoder_seek_absolute (LOOP_START %I64u)\0"
	.text
	.p2align 4
	.def	__ZL19MV_GetNextFLACBlockP9VoiceNode;	.scl	3;	.type	32;	.endef
__ZL19MV_GetNextFLACBlockP9VoiceNode:
LFB189:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movl	%ebx, 32(%esp)
	.cfi_offset 3, -20
	movl	52(%esp), %ebx
	movl	%esi, 36(%esp)
	movl	32(%ebx), %ecx
	.cfi_offset 6, -16
	movl	20(%ebx), %esi
	testl	%ecx, %ecx
	je	L1662
	movl	%ebp, 44(%esp)
	.cfi_offset 5, -8
	movl	20(%esi), %eax
	xorl	%ebp, %ebp
	cmpl	%ecx, 16(%esi)
	sbbl	%ebp, %eax
	jnc	L1674
L1673:
	movl	44(%esp), %ebp
	.cfi_restore 5
L1662:
	movl	12(%esi), %eax
	movl	%eax, (%esp)
	call	_FLAC__stream_decoder_process_single
	movl	12(%esi), %eax
	movl	%eax, (%esp)
	call	_FLAC__stream_decoder_get_state
	cmpl	$6, %eax
	je	L1675
L1663:
	cmpl	$4, %eax
	je	L1676
L1664:
	movl	$1, %eax
L1661:
	movl	32(%esp), %ebx
	movl	36(%esp), %esi
	addl	$48, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1674:
	.cfi_def_cfa_offset 52
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	28(%ebx), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%esi), %eax
	movl	%eax, (%esp)
	call	_FLAC__stream_decoder_seek_absolute
	testl	%eax, %eax
	jne	L1673
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1673
	movl	32(%ebx), %eax
	movl	$0, 28(%esp)
	movl	%eax, 24(%esp)
	movl	28(%ebx), %eax
	movl	$0, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC115, 12(%esp)
	movl	$328, 8(%esp)
	movl	$LC42, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	44(%esp), %ebp
	.cfi_restore 5
	jmp	L1662
	.p2align 4,,10
	.p2align 3
L1676:
	movl	40(%ebx), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	L1661
	movl	28(%ebx), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%esi), %eax
	movl	%eax, (%esp)
	call	_FLAC__stream_decoder_seek_absolute
	testl	%eax, %eax
	jne	L1664
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1664
	movl	28(%ebx), %eax
	movl	$0, 20(%esp)
	movl	$LC116, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$353, 8(%esp)
	movl	$LC42, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1664
	.p2align 4,,10
	.p2align 3
L1675:
	movl	12(%esi), %eax
	movl	%eax, (%esp)
	call	_FLAC__stream_decoder_flush
	movl	12(%esi), %eax
	movl	%eax, (%esp)
	call	_FLAC__stream_decoder_get_state
	jmp	L1663
	.cfi_endproc
LFE189:
	.section .rdata,"dr"
	.align 4
LC117:
	.ascii "MV_PlayFLAC: error in FLAC__stream_decoder_init_stream: %s\0"
LC118:
	.ascii "LOOP_END\0"
LC119:
	.ascii "LOOPEND\0"
LC120:
	.ascii "LOOP_LENGTH\0"
LC121:
	.ascii "LOOPLENGTH\0"
	.align 4
LC122:
	.ascii "MV_PlayFLAC: error in FLAC__metadata_iterator_new\0"
	.align 4
LC123:
	.ascii "MV_PlayFLAC: error in FLAC__metadata_chain_read_with_callbacks: %s\0"
	.align 4
LC124:
	.ascii "MV_PlayFLAC: error in FLAC__metadata_chain_new\0"
	.text
	.p2align 4
	.globl	_MV_PlayFLAC
	.def	_MV_PlayFLAC;	.scl	2;	.type	32;	.endef
_MV_PlayFLAC:
LFB190:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$120, %esp
	movl	8(%ebp), %eax
	movl	%ebx, -12(%ebp)
	movl	%ecx, -16(%ebp)
	.cfi_offset 3, -20
	.cfi_offset 1, -24
	movl	40(%ebp), %ebx
	movl	%eax, -20(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	44(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	48(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	_MV_Installed, %eax
	testl	%eax, %eax
	je	L1741
	movl	$40, %edx
	movl	%ebx, %eax
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	call	__Z13MV_AllocVoiceij
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1742
	movl	%edi, -4(%ebp)
	.cfi_offset 7, -12
	movl	20(%eax), %edi
	movl	%eax, 32(%edi)
	movl	-20(%ebp), %eax
	movl	$0, 8(%edi)
	movl	%eax, (%edi)
	movl	-24(%ebp), %eax
	movl	$0, 28(%edi)
	movl	%eax, 4(%edi)
	movl	$0, 24(%edi)
	call	_FLAC__stream_decoder_new
	movl	$0, 16(%edi)
	movl	%eax, 12(%edi)
	movl	$0, 20(%edi)
	movl	%eax, (%esp)
	call	_FLAC__stream_decoder_set_metadata_ignore_all
	movl	%edi, 36(%esp)
	movl	$__Z17error_flac_streamPK19FLAC__StreamDecoder30FLAC__StreamDecoderErrorStatusPv, 32(%esp)
	movl	$0, 28(%esp)
	movl	$__Z17write_flac_streamPK19FLAC__StreamDecoderPK11FLAC__FramePKPKiPv, 24(%esp)
	movl	$__Z15eof_flac_streamPK19FLAC__StreamDecoderPv, 20(%esp)
	movl	$__Z18length_flac_streamPK19FLAC__StreamDecoderPyPv, 16(%esp)
	movl	$__Z16tell_flac_streamPK19FLAC__StreamDecoderPyPv, 12(%esp)
	movl	$__Z16seek_flac_streamPK19FLAC__StreamDecoderyPv, 8(%esp)
	movl	$__Z16read_flac_streamPK19FLAC__StreamDecoderPhPjPv, 4(%esp)
	movl	12(%edi), %eax
	movl	%eax, (%esp)
	call	_FLAC__stream_decoder_init_stream
	testl	%eax, %eax
	jne	L1743
	movb	$5, 64(%esi)
	movl	$__ZL19MV_GetNextFLACBlockP9VoiceNode, 8(%esi)
	movl	24(%edi), %eax
	movl	%eax, 24(%esi)
	movl	-32(%ebp), %eax
	call	__Z14PITCH_GetScalei
	movl	%ebx, 120(%esi)
	movl	%eax, 88(%esi)
	movl	-36(%ebp), %eax
	movl	$0, 28(%esi)
	movl	%eax, 44(%esi)
	movl	-28(%ebp), %eax
	movl	$0, 32(%esi)
	notl	%eax
	movl	$0, 36(%esi)
	shrl	$31, %eax
	movl	%eax, 40(%esi)
	call	_FLAC__metadata_chain_new
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1684
	movl	__ZL14flac_callbacks, %eax
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 8(%esp)
	movl	__ZL14flac_callbacks+4, %eax
	movl	%eax, 12(%esp)
	movl	__ZL14flac_callbacks+8, %eax
	movl	%eax, 16(%esp)
	movl	__ZL14flac_callbacks+12, %eax
	movl	%eax, 20(%esp)
	movl	__ZL14flac_callbacks+16, %eax
	movl	%eax, 24(%esp)
	movl	__ZL14flac_callbacks+20, %eax
	movl	%eax, 28(%esp)
	call	_FLAC__metadata_chain_read_with_callbacks
	testl	%eax, %eax
	je	L1685
	call	_FLAC__metadata_iterator_new
	movl	%eax, -76(%ebp)
	testl	%eax, %eax
	je	L1686
	movl	%ebx, 4(%esp)
	movl	%eax, %ebx
	movl	%eax, (%esp)
	call	_FLAC__metadata_iterator_init
	movl	%edi, -80(%ebp)
	movl	%ebx, %edi
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	%esi, -68(%ebp)
	jmp	L1710
	.p2align 4,,10
	.p2align 3
L1690:
	movl	%esi, (%esp)
	call	_FLAC__metadata_object_delete
	movl	%edi, (%esp)
	call	_FLAC__metadata_iterator_next
	testl	%eax, %eax
	je	L1744
L1710:
	movl	%edi, (%esp)
	call	_FLAC__metadata_iterator_get_block
	movl	%eax, %esi
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L1687
	movl	36(%esi), %eax
	leal	-1(%eax), %edx
	cmpl	$1, %edx
	ja	L1745
	movl	-68(%ebp), %ecx
	movl	%eax, 72(%ecx)
	movl	40(%esi), %eax
	movl	%eax, 68(%ecx)
	movl	32(%esi), %eax
	movl	%eax, 100(%ecx)
	movl	(%esi), %eax
L1687:
	cmpl	$4, %eax
	jne	L1690
	movl	24(%esi), %eax
	testl	%eax, %eax
	je	L1690
	movl	%edi, -72(%ebp)
	movl	%esi, %ebx
	xorl	%edi, %edi
	jmp	L1709
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1693:
	addl	$1, %edi
	cmpl	24(%ebx), %edi
	jnb	L1746
L1709:
	movl	28(%ebx), %eax
	movl	4(%eax,%edi,8), %edx
	testl	%edx, %edx
	je	L1693
	cmpb	$0, (%edx)
	je	L1693
	movl	%edx, (%esp)
	movl	$61, 4(%esp)
	movl	%edx, -20(%ebp)
	call	_strchr
	movl	-20(%ebp), %edx
	movl	%eax, %ecx
	addl	$1, %eax
	movl	%eax, -20(%ebp)
	movl	-24(%ebp), %eax
	subl	%edx, %ecx
	movl	%ecx, -64(%ebp)
	testl	%eax, %eax
	jne	L1698
	movl	%edi, -56(%ebp)
	movl	$10, %eax
	movl	%ecx, %edi
	movl	%edx, %esi
	movl	%ebx, -60(%ebp)
	xorl	%ebx, %ebx
	jmp	L1699
	.p2align 4,,10
	.p2align 3
L1696:
	addl	$1, %ebx
	cmpl	$3, %ebx
	je	L1738
	movl	_loopStartTags(,%ebx,4), %eax
	movl	%eax, (%esp)
	call	_strlen
L1699:
	cmpl	%edi, %eax
	jne	L1696
	movl	_loopStartTags(,%ebx,4), %eax
	movl	%edi, 8(%esp)
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1696
	movl	-20(%ebp), %eax
	movl	-56(%ebp), %edi
	movl	%esi, -36(%ebp)
	movl	-60(%ebp), %ebx
	movl	%eax, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	movl	%eax, %esi
	leal	1(%eax), %eax
	movl	%eax, (%esp)
	movl	%eax, -24(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1697
	movl	-20(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%eax, -24(%ebp)
	movl	%ecx, 4(%esp)
	call	_strcpy
	movl	-24(%ebp), %eax
	movl	-36(%ebp), %edx
	movb	$0, (%eax,%esi)
L1698:
	movl	-28(%ebp), %eax
	testl	%eax, %eax
	jne	L1700
	cmpl	$8, -64(%ebp)
	je	L1747
	cmpl	$7, -64(%ebp)
	je	L1748
L1700:
	cmpl	$0, -32(%ebp)
	jne	L1693
	cmpl	$11, -64(%ebp)
	jne	L1706
	movl	$11, 8(%esp)
	movl	$LC120, 4(%esp)
	movl	%edx, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1693
L1707:
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %edx
	movl	%eax, %esi
	movl	%edx, (%esp)
	movl	%edx, -32(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1708
	movl	-20(%ebp), %ecx
	movl	%eax, (%esp)
	addl	$1, %edi
	movl	%eax, -32(%ebp)
	movl	%ecx, 4(%esp)
	call	_strcpy
	movl	-32(%ebp), %eax
	movb	$0, (%eax,%esi)
	cmpl	24(%ebx), %edi
	jb	L1709
	.p2align 4
	.p2align 3
L1746:
	movl	-72(%ebp), %edi
	movl	%ebx, %esi
	jmp	L1690
	.p2align 4,,10
	.p2align 3
L1685:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1749
L1717:
	movl	_MV_MixRate, %ecx
	movl	100(%esi), %eax
	mull	88(%esi)
	movl	%ecx, (%esp)
	sarl	$31, %ecx
	movl	%ecx, 4(%esp)
	call	_divideu64.lto_priv.1
	movl	-44(%ebp), %ecx
	movl	%eax, 104(%esi)
	movl	%eax, %edx
	sall	$8, %eax
	subl	%edx, %eax
	movl	%eax, 92(%esi)
	xorl	%eax, %eax
	cmpl	$16, 68(%esi)
	sete	%al
	xorl	%edx, %edx
	addl	%eax, %eax
	cmpl	$2, 72(%esi)
	sete	%dl
	sall	$2, %edx
	orl	%edx, %eax
	xorl	%edx, %edx
	cmpl	$1, _MV_Channels
	sete	%dl
	orl	%edx, %eax
	movl	-40(%ebp), %edx
	movl	__ZZ18MV_SetVoiceMixModeP9VoiceNodeE7mixslut.lto_priv.0(,%eax,4), %eax
	movl	%eax, 12(%esi)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__Z17MV_SetVoiceVolumeP9VoiceNodeiiii
	movl	%esi, %eax
	call	__Z12MV_PlayVoiceP9VoiceNode
	movl	116(%esi), %eax
	movl	-4(%ebp), %edi
	.cfi_restore 7
	movl	-8(%ebp), %esi
	.cfi_restore 6
L1677:
	movl	-12(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_restore 1
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L1684:
	.cfi_def_cfa 5, 8
	.cfi_offset 1, -24
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1717
	movl	$LC124, 12(%esp)
	movl	$595, 8(%esp)
	movl	$LC42, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1717
	.p2align 4,,10
	.p2align 3
L1748:
	movl	$7, 8(%esp)
	movl	$LC119, 4(%esp)
	movl	%edx, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1693
L1702:
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %edx
	movl	%eax, %esi
	movl	%edx, (%esp)
	movl	%edx, -28(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1704
	movl	-20(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%eax, -28(%ebp)
	movl	%ecx, 4(%esp)
	call	_strcpy
	movl	-28(%ebp), %eax
	movb	$0, (%eax,%esi)
	jmp	L1693
	.p2align 4,,10
	.p2align 3
L1747:
	movl	$8, 8(%esp)
	movl	$LC118, 4(%esp)
	movl	%edx, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1693
	jmp	L1702
	.p2align 4,,10
	.p2align 3
L1749:
	movl	%ebx, (%esp)
	call	_FLAC__metadata_chain_status
	movl	_FLAC__Metadata_ChainStatusString(,%eax,4), %eax
	movl	$LC123, 12(%esp)
	movl	$589, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC42, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1717
	.p2align 4,,10
	.p2align 3
L1686:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1717
	movl	$LC122, 12(%esp)
	movl	$586, 8(%esp)
	movl	$LC42, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1717
	.p2align 4,,10
	.p2align 3
L1738:
	movl	-56(%ebp), %edi
	movl	-60(%ebp), %ebx
	movl	%esi, %edx
	jmp	L1698
	.p2align 4,,10
	.p2align 3
L1697:
	movl	-24(%ebp), %eax
	call	__Z13handle_memerri
L1704:
	movl	-28(%ebp), %eax
	call	__Z13handle_memerri
L1708:
	movl	-32(%ebp), %eax
	call	__Z13handle_memerri
L1741:
	.cfi_restore 6
	.cfi_restore 7
	movl	$1, _MV_ErrorCode
L1681:
	movl	$-1, %eax
	jmp	L1677
L1744:
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	-24(%ebp), %eax
	movl	-68(%ebp), %esi
	testl	%eax, %eax
	je	L1711
	movl	%eax, (%esp)
	call	_atol
	testl	%eax, %eax
	js	L1712
	movl	%eax, 28(%esi)
	movl	$1, 40(%esi)
L1712:
	movl	-24(%ebp), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1711:
	movl	-28(%ebp), %edi
	testl	%edi, %edi
	je	L1713
	movl	40(%esi), %ebx
	testl	%ebx, %ebx
	jne	L1750
L1714:
	movl	-28(%ebp), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1713:
	movl	-32(%ebp), %ecx
	testl	%ecx, %ecx
	je	L1715
	movl	40(%esi), %edx
	testl	%edx, %edx
	je	L1716
	movl	32(%esi), %eax
	testl	%eax, %eax
	je	L1751
L1716:
	movl	-32(%ebp), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1715:
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	_FLAC__metadata_iterator_delete
	jmp	L1717
L1743:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1752
L1740:
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-8(%ebp), %esi
	.cfi_restore 6
	movl	-4(%ebp), %edi
	.cfi_restore 7
	subl	$4, %esp
	movl	$5, _MV_ErrorCode
	jmp	L1681
L1742:
	.cfi_offset 6, -16
	movl	$3, _MV_ErrorCode
	movl	-8(%ebp), %esi
	.cfi_restore 6
	jmp	L1681
L1745:
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%esi, (%esp)
	movl	-80(%ebp), %edi
	call	_FLAC__metadata_object_delete
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	_FLAC__metadata_iterator_delete
	movl	12(%edi), %eax
	movl	%eax, (%esp)
	call	_FLAC__stream_decoder_finish
	movl	12(%edi), %eax
	movl	%eax, (%esp)
	call	_FLAC__stream_decoder_delete
	jmp	L1740
L1752:
	movl	12(%edi), %eax
	movl	%eax, (%esp)
	call	_FLAC__stream_decoder_get_resolved_state_string
	movl	$LC117, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$451, 8(%esp)
	movl	$LC42, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1740
L1750:
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_atol
	testl	%eax, %eax
	jle	L1714
	movl	%eax, 32(%esi)
	jmp	L1714
L1751:
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_atol
	testl	%eax, %eax
	jle	L1716
	addl	28(%esi), %eax
	movl	%eax, 32(%esi)
	jmp	L1716
L1706:
	cmpl	$10, -64(%ebp)
	jne	L1693
	movl	$10, 8(%esp)
	movl	$LC121, 4(%esp)
	movl	%edx, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1693
	jmp	L1707
	.cfi_endproc
LFE190:
	.p2align 4
	.globl	_MV_PlayFLAC3D
	.def	_MV_PlayFLAC3D;	.scl	2;	.type	32;	.endef
_MV_PlayFLAC3D:
LFB191:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movl	_MV_Installed, %eax
	movl	72(%esp), %edx
	testl	%eax, %eax
	je	L1766
	movl	%ebx, 44(%esp)
	.cfi_offset 3, -8
	movl	68(%esp), %eax
	testl	%edx, %edx
	js	L1767
	andl	$127, %eax
	cmpl	$255, %edx
	jg	L1757
	testl	%edx, %edx
	jne	L1759
	sall	$8, %eax
	movzbl	_MV_PanTable(%eax), %ecx
	movzbl	_MV_PanTable+1(%eax), %ebx
L1760:
	movl	$255, %eax
	subl	%edx, %eax
L1761:
	movl	%eax, 20(%esp)
	movl	64(%esp), %eax
	movl	84(%esp), %edx
	movl	%ebx, 28(%esp)
	movl	%eax, 16(%esp)
	movl	60(%esp), %eax
	movl	%edx, 40(%esp)
	movl	80(%esp), %edx
	movl	%eax, 8(%esp)
	movl	56(%esp), %eax
	movl	%edx, 36(%esp)
	movl	76(%esp), %edx
	movl	%eax, 4(%esp)
	movl	52(%esp), %eax
	movl	%edx, 32(%esp)
	movl	%ecx, 24(%esp)
	movl	$-1, 12(%esp)
	movl	%eax, (%esp)
	call	_MV_PlayFLAC
	movl	44(%esp), %ebx
	.cfi_restore 3
L1753:
	addl	$48, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1757:
	.cfi_def_cfa_offset 52
	.cfi_offset 3, -8
	sall	$8, %eax
	movzbl	_MV_PanTable+254(%eax), %ecx
	movzbl	_MV_PanTable+255(%eax), %ebx
	xorl	%eax, %eax
	jmp	L1761
	.p2align 4,,10
	.p2align 3
L1767:
	addl	$64, %eax
	andl	$127, %eax
	cmpl	$-255, %edx
	jl	L1757
	negl	%edx
L1759:
	movl	%edx, %ecx
	sall	$7, %eax
	sall	$7, %ecx
	sarl	$8, %ecx
	addl	%ecx, %eax
	movzbl	_MV_PanTable(%eax,%eax), %ecx
	movzbl	_MV_PanTable+1(%eax,%eax), %ebx
	xorl	%eax, %eax
	cmpl	$255, %edx
	je	L1761
	jmp	L1760
	.p2align 4,,10
	.p2align 3
L1766:
	.cfi_restore 3
	movl	$1, _MV_ErrorCode
	movl	$-1, %eax
	jmp	L1753
	.cfi_endproc
LFE191:
	.p2align 4
	.def	__ZL18MV_GetNextVOCBlockP9VoiceNode;	.scl	3;	.type	32;	.endef
__ZL18MV_GetNextVOCBlockP9VoiceNode:
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
	andl	$-8, %esp
	subl	$132, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	testl	%eax, %eax
	jne	L1769
	movl	8(%ebp), %ebx
	movl	8(%ebp), %ecx
	addl	$112, %ebx
	movl	24(%ecx), %edx
	movl	%ebx, 68(%esp)
	xchgl	(%ebx), %eax
	testl	%edx, %edx
	je	L1771
L1770:
	movl	8(%ebp), %eax
	movl	$0, 80(%esp)
	xorl	%ecx, %ecx
	movl	$0, 108(%esp)
	movl	20(%eax), %eax
	movl	$0, 84(%esp)
	movl	%eax, 112(%esp)
	movl	8(%ebp), %eax
	movl	84(%eax), %esi
	movl	%esi, 100(%esp)
	.p2align 4
	.p2align 3
L1773:
	movl	%edx, %eax
	leal	4(%edx), %edi
	subl	112(%esp), %eax
	cmpl	100(%esp), %eax
	jb	L1865
L1783:
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	testl	%edx, %edx
	je	L1771
	subl	$4, %edi
	cmpl	%edi, %edx
	jl	L1866
L1771:
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
L1865:
	.cfi_restore_state
	movzbl	(%edx), %eax
	movb	%al, 92(%esp)
	testl	%eax, %eax
	je	L1783
	movzbl	3(%edx), %esi
	sall	$16, %esi
	movl	%esi, %ebx
	movzwl	1(%edx), %esi
	orl	%ebx, %esi
	cmpb	$9, 92(%esp)
	ja	L1771
	jmp	*L1776(,%eax,4)
	.section .rdata,"dr"
	.align 4
L1776:
	.long	L1771
	.long	L1782
	.long	L1781
	.long	L1780
	.long	L1780
	.long	L1780
	.long	L1779
	.long	L1778
	.long	L1777
	.long	L1775
	.text
	.p2align 4,,10
	.p2align 3
L1780:
	leal	(%edi,%esi), %edx
	movl	%eax, %ecx
	jmp	L1773
	.p2align 4,,10
	.p2align 3
L1781:
	movl	8(%ebp), %eax
	movl	%edi, 112(%esp)
	movl	100(%eax), %eax
	movl	%eax, 92(%esp)
L1788:
	movl	112(%esp), %edi
	movl	8(%ebp), %ecx
	movl	8(%ebp), %ebx
	leal	(%edi,%esi), %eax
	movl	%edi, 16(%ecx)
	movl	%eax, 24(%ecx)
	movl	%eax, 76(%esp)
	movl	%ecx, %eax
	movl	92(%esp), %ecx
	movl	%ecx, 100(%eax)
	movl	_MV_MixRate, %eax
	movl	88(%ebx), %ecx
	cltd
	movl	%eax, 64(%esp)
	movl	%edx, %ebx
	movl	%eax, 100(%esp)
	movl	%edx, 104(%esp)
	movl	__ZZ9divideu64E5lastd.lto_priv.1+4, %edx
	movl	%ecx, 80(%esp)
	movl	%eax, %ecx
	movl	__ZZ9divideu64E5lastd.lto_priv.1, %eax
	xorl	%ebx, %edx
	xorl	%ecx, %eax
	orl	%edx, %eax
	je	L1867
	movl	100(%esp), %ecx
	movl	104(%esp), %ebx
	movl	%ecx, %eax
	movl	%ecx, __ZZ9divideu64E5lastd.lto_priv.1
	orl	%ebx, %eax
	movl	%ebx, __ZZ9divideu64E5lastd.lto_priv.1+4
	je	L1868
	movl	104(%esp), %edx
	testl	%edx, %edx
	je	L1796
	bsrl	%edx, %eax
	xorl	$31, %eax
	movl	%eax, 68(%esp)
L1797:
	movl	100(%esp), %ecx
	movl	104(%esp), %ebx
	movl	$63, %eax
	subl	68(%esp), %eax
	movl	%eax, 60(%esp)
	movl	%eax, %edi
	movl	%ebx, %edx
	movb	%al, 108(%esp)
	movl	%ecx, %eax
	addl	$-1, %eax
	adcl	$-1, %edx
	andl	%eax, %ecx
	andl	%edx, %ebx
	movl	%ecx, %eax
	orl	%ebx, %eax
	jne	L1798
	movl	$0, __ZZ9divideu64E4udiv.lto_priv.1
	movl	%edi, %eax
	movl	$0, __ZZ9divideu64E4udiv.lto_priv.1+4
L1862:
	movb	%al, __ZZ9divideu64E4udiv.lto_priv.1+8
	movl	92(%esp), %eax
	mull	80(%esp)
	movl	%eax, 100(%esp)
	movl	%edx, 104(%esp)
L1799:
	movzbl	108(%esp), %ecx
	movl	104(%esp), %edx
	movl	100(%esp), %eax
	shrdl	%cl, %edx, %eax
	shrl	%cl, %edx
	andl	$32, %ecx
	cmovne	%edx, %eax
	jmp	L1812
	.p2align 4,,10
	.p2align 3
L1782:
	movl	8(%ebp), %eax
	movl	8(%ebp), %ebx
	movl	$8, 68(%eax)
	movl	84(%esp), %eax
	addl	$1, %eax
	movl	%eax, 72(%ebx)
	cmpl	$8, %ecx
	je	L1784
	movzbl	4(%edx), %ecx
	movzbl	5(%edx), %ebx
	sall	$8, %ecx
	movl	%ebx, 108(%esp)
	movl	%ecx, 80(%esp)
L1784:
	leal	6(%edx), %edi
	movl	108(%esp), %edx
	subl	$2, %esi
	testl	%edx, %edx
	jne	L1785
	cmpl	$1, 84(%esp)
	jg	L1785
	movl	%edi, %edx
	movl	%eax, %ecx
	subl	112(%esp), %edx
	cmpl	100(%esp), %edx
	jnb	L1783
	movl	$65536, %edx
	subl	80(%esp), %edx
	movl	%ecx, %eax
	movl	%edi, 112(%esp)
	movl	%edx, %ecx
	xorl	%edx, %edx
	imull	%eax, %ecx
	movl	$256000000, %eax
	divl	%ecx
	movl	%eax, 92(%esp)
	jmp	L1788
	.p2align 4,,10
	.p2align 3
L1775:
	movl	4(%edx), %eax
	movzbl	9(%edx), %ecx
	movzwl	10(%edx), %ebx
	movl	%eax, 92(%esp)
	movzbl	8(%edx), %eax
	cmpl	$8, %eax
	je	L1869
	cmpl	$16, %eax
	je	L1870
L1792:
	leal	(%edi,%esi), %edx
	movl	%edx, %eax
	subl	112(%esp), %eax
	cmpl	100(%esp), %eax
	jnb	L1824
	movl	$9, %ecx
	jmp	L1773
	.p2align 4,,10
	.p2align 3
L1778:
	movl	8(%ebp), %eax
	leal	(%edi,%esi), %edx
	cmpl	$6, %ecx
	je	L1871
	movl	36(%eax), %eax
	movl	$7, %ecx
	testl	%eax, %eax
	jle	L1773
	movl	8(%ebp), %ebx
	movl	28(%ebx), %esi
	testl	%esi, %esi
	je	L1773
	movl	%esi, %edx
	cmpl	$65534, %eax
	jg	L1773
	subl	$1, %eax
	movl	%eax, 36(%ebx)
	jne	L1773
	movl	$0, 28(%ebx)
	jmp	L1773
	.p2align 4,,10
	.p2align 3
L1777:
	movl	8(%ebp), %eax
	movlps	LC125, %xmm0
	movl	$8, %ecx
	movlps	%xmm0, 68(%eax)
	movzwl	4(%edx), %eax
	movl	%eax, 80(%esp)
	movzbl	6(%edx), %eax
	movl	%eax, 108(%esp)
	movzbl	7(%edx), %eax
	leal	(%edi,%esi), %edx
	movl	%eax, 84(%esp)
	jmp	L1773
	.p2align 4,,10
	.p2align 3
L1779:
	movl	8(%ebp), %ebx
	leal	(%edi,%esi), %eax
	movl	32(%ebx), %esi
	testl	%esi, %esi
	je	L1872
L1789:
	movl	%eax, %edx
	movl	$6, %ecx
	jmp	L1773
	.p2align 4,,10
	.p2align 3
L1785:
	leal	(%edi,%esi), %edx
	movl	%edx, %eax
	subl	112(%esp), %eax
	cmpl	100(%esp), %eax
	jnb	L1824
	movl	$0, 84(%esp)
	movl	$1, %ecx
	jmp	L1773
	.p2align 4,,10
	.p2align 3
L1824:
	movl	%edx, %edi
	jmp	L1783
	.p2align 4,,10
	.p2align 3
L1869:
	leal	-1(%ecx), %eax
	cmpl	$1, %eax
	ja	L1792
	testl	%ebx, %ebx
	jne	L1792
	movl	%ecx, %ebx
	movl	8(%ebp), %ecx
	movl	%esi, %eax
	leal	16(%edx), %edi
	movl	100(%esp), %esi
	movl	$8, 68(%ecx)
	jmp	L1864
	.p2align 4,,10
	.p2align 3
L1871:
	movl	$0, 36(%eax)
	movl	$7, %ecx
	jmp	L1773
	.p2align 4,,10
	.p2align 3
L1872:
	movzwl	4(%edx), %edx
	movl	%eax, 28(%ebx)
	movl	%edx, 36(%ebx)
	jmp	L1789
	.p2align 4,,10
	.p2align 3
L1870:
	leal	-1(%ecx), %eax
	cmpl	$1, %eax
	ja	L1792
	cmpl	$4, %ebx
	jne	L1792
	movl	%ecx, %ebx
	movl	8(%ebp), %ecx
	movl	%esi, %eax
	movl	100(%esp), %esi
	leal	16(%edx), %edi
	movl	$16, 68(%ecx)
L1864:
	movl	%edi, %edx
	subl	112(%esp), %edx
	movl	%ebx, 72(%ecx)
	cmpl	%esi, %edx
	jnb	L1783
	movl	%edi, 112(%esp)
	leal	-12(%eax), %esi
	jmp	L1788
L1867:
	movzbl	__ZZ9divideu64E4udiv.lto_priv.1+8, %eax
	movl	__ZZ9divideu64E4udiv.lto_priv.1+4, %edx
	movb	%al, 108(%esp)
	movl	__ZZ9divideu64E4udiv.lto_priv.1, %eax
	movl	%edx, 88(%esp)
	movl	%eax, 84(%esp)
L1794:
	movl	92(%esp), %eax
	mull	80(%esp)
	movl	84(%esp), %ecx
	movl	88(%esp), %ebx
	movl	%eax, 100(%esp)
	movl	%ecx, %eax
	orl	%ebx, %eax
	movl	%edx, 104(%esp)
	je	L1799
L1811:
	movl	100(%esp), %eax
	mull	84(%esp)
	movl	88(%esp), %edi
	movl	104(%esp), %ecx
	movl	%edx, 92(%esp)
	movl	%edi, %eax
	mull	100(%esp)
	addl	92(%esp), %eax
	movl	%ecx, 68(%esp)
	movl	%eax, 92(%esp)
	movl	%ecx, %eax
	movl	92(%esp), %ecx
	adcl	$0, %edx
	xorl	%ebx, %ebx
	movl	%edi, 80(%esp)
	movl	%edx, 96(%esp)
	mull	84(%esp)
	addl	%eax, %ecx
	movl	68(%esp), %eax
	adcl	%edx, %ebx
	mull	%edi
	movl	%ebx, %ecx
	xorl	%ebx, %ebx
	movl	%edx, 88(%esp)
	movl	96(%esp), %edx
	movl	%eax, 84(%esp)
	movl	%edx, %eax
	xorl	%edx, %edx
	addl	84(%esp), %eax
	adcl	88(%esp), %edx
	addl	%ecx, %eax
	adcl	%ebx, %edx
	testb	$64, 108(%esp)
	je	L1813
	movl	100(%esp), %ecx
	movl	104(%esp), %ebx
	subl	%eax, %ecx
	sbbl	%edx, %ebx
	shrdl	$1, %ebx, %ecx
	shrl	%ebx
	addl	%ecx, %eax
	movzbl	108(%esp), %ecx
	adcl	%ebx, %edx
	shrdl	%cl, %edx, %eax
	shrl	%cl, %edx
	andl	$32, %ecx
	cmovne	%edx, %eax
L1812:
	movl	8(%ebp), %ebx
	movl	%eax, %edi
	movl	%eax, 104(%ebx)
	sall	$8, %eax
	subl	%edi, %eax
	movl	%eax, 92(%ebx)
	movl	32(%ebx), %eax
	testl	%eax, %eax
	je	L1814
	movl	112(%esp), %ecx
	cmpl	%esi, %eax
	cmovb	%eax, %esi
	leal	(%ecx,%eax), %ebx
	movl	8(%ebp), %eax
	cmovnb	76(%esp), %ebx
	movl	28(%eax), %edx
	leal	(%ecx,%edx), %eax
	movl	8(%ebp), %ecx
	movl	%eax, 28(%ecx)
	movl	%esi, %eax
	subl	%edx, %eax
	movl	%ebx, 32(%ecx)
	movl	%eax, 40(%ecx)
L1814:
	movl	8(%ebp), %eax
	movl	$32768, %ecx
	movl	8(%ebp), %edi
	movl	68(%eax), %ebx
	movl	%esi, %eax
	shrl	%eax
	cmpl	$16, %ebx
	cmove	%eax, %esi
	movl	8(%ebp), %eax
	movl	72(%eax), %edx
	movl	%esi, %eax
	shrl	%eax
	cmpl	$2, %edx
	cmove	%eax, %esi
	movl	8(%ebp), %eax
	cmpl	%ecx, %esi
	movl	$0, 108(%eax)
	movl	%esi, %eax
	cmovbe	%esi, %ecx
	subl	%ecx, %eax
	sall	$16, %ecx
	movl	%eax, 80(%edi)
	xorl	%eax, %eax
	cmpl	$16, %ebx
	sete	%al
	movl	%ecx, 96(%edi)
	addl	%eax, %eax
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	sall	$2, %edx
	orl	%edx, %eax
	xorl	%edx, %edx
	cmpl	$1, _MV_Channels
	sete	%dl
	orl	%edx, %eax
	movl	__ZZ18MV_SetVoiceMixModeP9VoiceNodeE7mixslut.lto_priv.0(,%eax,4), %eax
	movl	%eax, 12(%edi)
L1818:
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
L1796:
	.cfi_restore_state
	bsrl	100(%esp), %eax
	xorl	$31, %eax
	addl	$32, %eax
	movl	%eax, 68(%esp)
	jmp	L1797
L1866:
	movl	%edx, 24(%eax)
	movl	$0, 80(%eax)
	movl	$0, 108(%eax)
	xorl	%eax, %eax
	movl	68(%esp), %edi
	xchgl	(%edi), %eax
	jmp	L1770
L1798:
	movzbl	60(%esp), %ecx
	movl	$1, %eax
	xorl	%edx, %edx
	xorl	%ebx, %ebx
	shldl	%cl, %eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	cmovne	%eax, %edx
	cmovne	%ebx, %eax
	cmpl	64(%esp), %eax
	movl	%eax, 44(%esp)
	movl	%edx, %eax
	sbbl	104(%esp), %eax
	movl	%edx, 48(%esp)
	movl	100(%esp), %eax
	movl	104(%esp), %edx
	jnc	L1873
	movzbl	68(%esp), %ecx
	xorl	%ebx, %ebx
	movl	$0, 12(%esp)
	shldl	%cl, %eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	cmovne	%eax, %edx
	cmovne	%ebx, %eax
	xorl	%edi, %edi
	movl	%edx, 88(%esp)
	movl	48(%esp), %edx
	movl	%eax, 84(%esp)
	movl	44(%esp), %eax
	shldl	%cl, %eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	cmovne	%eax, %edx
	cmovne	%edi, %eax
	movl	%edx, %ebx
	movl	%edx, 40(%esp)
	movl	88(%esp), %edx
	movl	%eax, %ecx
	movl	%eax, 36(%esp)
	leal	124(%esp), %eax
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	%edx, 8(%esp)
	call	___udivmoddi4
	movl	84(%esp), %ebx
	xorl	%ecx, %ecx
	movl	%eax, 28(%esp)
	imull	%edx, %ebx
	movl	%edx, 32(%esp)
	movl	%eax, 52(%esp)
	movl	%edx, 56(%esp)
	mull	84(%esp)
	addl	%ebx, %edx
	movl	124(%esp), %ebx
	cmpl	%eax, %ecx
	movl	%ebx, %edi
	sbbl	%edx, %edi
	jnc	L1802
	subl	%ecx, %eax
	movl	84(%esp), %ecx
	sbbl	%ebx, %edx
	movl	88(%esp), %ebx
	cmpl	%eax, %ecx
	movl	$1, %eax
	movl	%ebx, %edi
	sbbl	%edx, %edi
	movl	$0, %edx
	jnc	L1803
	movl	$2, %eax
	xorl	%edx, %edx
L1803:
	movl	28(%esp), %ecx
	movl	32(%esp), %ebx
	subl	%eax, %ecx
	sbbl	%edx, %ebx
	movl	%ecx, 52(%esp)
	movl	%ebx, 56(%esp)
L1802:
	movl	36(%esp), %ecx
	movl	52(%esp), %eax
	movl	$0, 12(%esp)
	movl	%ecx, %ebx
	xorl	%ecx, %ecx
	movl	%ebx, 40(%esp)
	movl	88(%esp), %ebx
	movl	%ecx, 36(%esp)
	movl	36(%esp), %ecx
	imull	%eax, %ebx
	mull	84(%esp)
	addl	%ebx, %edx
	subl	%eax, %ecx
	movl	40(%esp), %ebx
	leal	116(%esp), %eax
	movl	%eax, 16(%esp)
	movl	20(%esp), %eax
	sbbl	%edx, %ebx
	movl	%ecx, 28(%esp)
	movl	%ebx, 32(%esp)
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, 8(%esp)
	call	___udivmoddi4
	movl	84(%esp), %ecx
	movl	116(%esp), %ebx
	movl	%eax, 20(%esp)
	imull	%edx, %ecx
	movl	%edx, 24(%esp)
	movl	%ebx, %edi
	movl	%eax, 36(%esp)
	movl	%edx, 40(%esp)
	mull	84(%esp)
	addl	%ecx, %edx
	xorl	%ecx, %ecx
	cmpl	%eax, %ecx
	sbbl	%edx, %edi
	jnc	L1804
	subl	%ecx, %eax
	movl	84(%esp), %ecx
	sbbl	%ebx, %edx
	movl	88(%esp), %ebx
	cmpl	%eax, %ecx
	movl	$1, %eax
	movl	%ebx, %edi
	sbbl	%edx, %edi
	movl	$0, %edx
	jnc	L1805
	movl	$2, %eax
	xorl	%edx, %edx
L1805:
	movl	20(%esp), %ecx
	movl	24(%esp), %ebx
	subl	%eax, %ecx
	sbbl	%edx, %ebx
	movl	%ecx, 36(%esp)
	movl	%ebx, 40(%esp)
L1804:
	movl	28(%esp), %ecx
	xorl	%ebx, %ebx
	movl	36(%esp), %eax
	movl	%ebx, 40(%esp)
	movl	%ecx, %ebx
	movl	%eax, 36(%esp)
	movl	%eax, %edx
	xorl	%ecx, %ecx
	movl	%ebx, 32(%esp)
	movl	88(%esp), %ebx
	movl	%ecx, 28(%esp)
	movl	28(%esp), %ecx
	imull	%eax, %ebx
	movl	84(%esp), %eax
	mull	%edx
	addl	%ebx, %edx
	movl	32(%esp), %ebx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movzbl	68(%esp), %ecx
	sbbl	%edx, %ebx
	movl	%ebx, %edx
	shrdl	%cl, %ebx, %eax
	xorl	%ebx, %ebx
	shrl	%cl, %edx
	testb	$32, %cl
	movl	52(%esp), %ecx
	cmovne	%edx, %eax
	cmovne	%ebx, %edx
	movl	%ecx, %ebx
	movl	36(%esp), %ecx
	orl	40(%esp), %ebx
	movl	%ebx, 72(%esp)
	movl	104(%esp), %ebx
	movl	%ecx, 68(%esp)
	movl	100(%esp), %ecx
	movl	%eax, 84(%esp)
	subl	%eax, %ecx
	movl	%edx, 88(%esp)
	sbbl	%edx, %ebx
	movl	%ecx, %eax
	movl	44(%esp), %ecx
	movl	%ebx, %edx
	movl	48(%esp), %ebx
	cmpl	%ecx, %eax
	movl	%edx, %eax
	sbbl	%ebx, %eax
	jc	L1874
	movl	68(%esp), %ecx
	movl	72(%esp), %ebx
	movl	84(%esp), %eax
	movl	88(%esp), %edx
	addl	%ecx, %ecx
	adcl	%ebx, %ebx
	addl	%eax, %eax
	adcl	%edx, %edx
	cmpl	64(%esp), %eax
	movl	%edx, %edi
	sbbl	104(%esp), %edi
	jnc	L1808
	cmpl	84(%esp), %eax
	movl	%edx, %edi
	sbbl	88(%esp), %edi
	jc	L1808
	movzbl	60(%esp), %eax
	addl	$1, %ecx
	adcl	$0, %ebx
	movl	%ecx, 84(%esp)
	orl	$64, %eax
	movl	%ebx, 88(%esp)
	movb	%al, 108(%esp)
	movb	%al, __ZZ9divideu64E4udiv.lto_priv.1+8
	movl	80(%esp), %eax
	mull	92(%esp)
	movl	%ecx, __ZZ9divideu64E4udiv.lto_priv.1
	movl	%ebx, __ZZ9divideu64E4udiv.lto_priv.1+4
	movl	%eax, 100(%esp)
	movl	%edx, 104(%esp)
	jmp	L1811
L1813:
	movzbl	108(%esp), %ecx
	shrdl	%cl, %edx, %eax
	shrl	%cl, %edx
	andl	$32, %ecx
	cmovne	%edx, %eax
	jmp	L1812
L1874:
	movl	68(%esp), %eax
	movl	72(%esp), %edx
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, 84(%esp)
	movl	%edx, 88(%esp)
L1807:
	movl	84(%esp), %eax
	movl	88(%esp), %edx
	movl	%eax, __ZZ9divideu64E4udiv.lto_priv.1
	movzbl	108(%esp), %eax
	movl	%edx, __ZZ9divideu64E4udiv.lto_priv.1+4
	movb	%al, __ZZ9divideu64E4udiv.lto_priv.1+8
	jmp	L1794
L1769:
	movl	8(%ebp), %edi
	movl	72(%edi), %edx
	imull	68(%edi), %edx
	movl	96(%edi), %ecx
	subl	%ecx, 108(%edi)
	sarl	$3, %edx
	shrl	$16, %ecx
	imull	%ecx, %edx
	addl	%edx, 16(%edi)
	movl	$32768, %edx
	cmpl	%edx, %eax
	cmovbe	%eax, %edx
	subl	%edx, %eax
	sall	$16, %edx
	movl	%eax, 80(%edi)
	movl	%edx, 96(%edi)
	jmp	L1818
L1808:
	movzbl	60(%esp), %eax
	addl	$2, %ecx
	adcl	$0, %ebx
	movl	%ecx, 84(%esp)
	orl	$64, %eax
	movl	%ebx, 88(%esp)
	movb	%al, 108(%esp)
	jmp	L1807
L1873:
	addl	$1, %eax
	movl	44(%esp), %ecx
	movl	48(%esp), %ebx
	adcl	$0, %edx
	cmpl	%ecx, %eax
	movl	%edx, %eax
	sbbl	%ebx, %eax
	jc	L1801
	movl	$0, __ZZ9divideu64E4udiv.lto_priv.1
	movzbl	60(%esp), %eax
	movl	$0, __ZZ9divideu64E4udiv.lto_priv.1+4
	orl	$64, %eax
	movb	%al, 108(%esp)
	jmp	L1862
L1801:
	movl	$0, __ZZ9divideu64E4udiv.lto_priv.1
	movzbl	60(%esp), %eax
	movl	$0, __ZZ9divideu64E4udiv.lto_priv.1+4
	jmp	L1862
L1868:
	movl	$2, (%esp)
	call	*__imp____acrt_iob_func
	movl	$LC111, 16(%esp)
	movl	$LC112, 12(%esp)
	movl	$1033, 8(%esp)
	movl	$LC113, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	call	_abort
	.cfi_endproc
LFE192:
	.p2align 4
	.globl	_MV_PlayWAV
	.def	_MV_PlayWAV;	.scl	2;	.type	32;	.endef
_MV_PlayWAV:
LFB194:
	.cfi_startproc
	subl	$80, %esp
	.cfi_def_cfa_offset 84
	movl	_MV_Installed, %eax
	movl	%esi, 68(%esp)
	.cfi_offset 6, -16
	movl	84(%esp), %esi
	testl	%eax, %eax
	je	L1876
	movl	4(%esi), %edx
	movl	(%esi), %eax
	movl	16(%esi), %ecx
	movl	%edx, 48(%esp)
	movl	8(%esi), %edx
	movl	%eax, 44(%esp)
	movl	%edx, 52(%esp)
	movl	12(%esi), %edx
	movl	%ecx, 60(%esp)
	movl	%edx, 56(%esp)
	cmpl	$1179011410, %eax
	jne	L1879
	cmpl	$1163280727, 52(%esp)
	jne	L1879
	cmpl	$544501094, 56(%esp)
	jne	L1879
	movl	%edi, 72(%esp)
	movl	%ebx, 64(%esp)
	movl	%ebp, 76(%esp)
	.cfi_offset 7, -12
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	movl	20(%esi), %eax
	movl	28(%esi), %edx
	movl	%eax, %edi
	movl	%eax, 28(%esp)
	shrl	$16, %edi
	movl	%edx, 36(%esp)
	movl	32(%esi), %edx
	movl	%edi, 8(%esp)
	movl	24(%esi), %edi
	movl	%edx, 40(%esp)
	movl	%edi, 12(%esp)
	movl	%edi, 32(%esp)
	movl	%edx, %edi
	leal	20(%esi,%ecx), %edx
	movl	(%edx), %ebx
	movl	4(%edx), %ebp
	shrl	$16, %edi
	movl	%ebx, 20(%esp)
	movl	%ebp, 24(%esp)
	cmpw	$1, %ax
	jne	L1889
	movzwl	8(%esp), %eax
	subl	$1, %eax
	cmpw	$1, %ax
	ja	L1889
	leal	-8(%edi), %eax
	testw	$-9, %ax
	jne	L1889
	cmpl	$1635017060, %ebx
	jne	L1889
	movl	116(%esp), %eax
	xorl	%edx, %edx
	movl	%ecx, 16(%esp)
	call	__Z13MV_AllocVoiceij
	movl	16(%esp), %ecx
	testl	%eax, %eax
	movl	%eax, %ebx
	je	L1890
	movzwl	8(%esp), %edx
	movzwl	%di, %edi
	movb	$3, 64(%eax)
	movl	%edi, 68(%eax)
	movl	%edx, 72(%eax)
	movl	$__ZL18MV_GetNextWAVBlockP9VoiceNode, 8(%eax)
	movl	%ebp, %eax
	shrl	$31, %eax
	movl	%esi, 20(%ebx)
	addl	%ebp, %eax
	movl	$0, 108(%ebx)
	sarl	%eax
	cmpl	$16, %edi
	movl	$0, 32(%ebx)
	cmovne	%ebp, %eax
	movl	$0, 36(%ebx)
	movl	%eax, %edi
	shrl	$31, %edi
	addl	%eax, %edi
	sarl	%edi
	cmpl	$2, %edx
	movl	88(%esp), %edx
	cmove	%edi, %eax
	movl	96(%esp), %edi
	movl	%edx, 84(%ebx)
	leal	28(%esi,%ecx), %edx
	movl	116(%esp), %ecx
	movl	92(%esp), %esi
	movl	%edx, 24(%ebx)
	movl	%ecx, 120(%ebx)
	movl	124(%esp), %ecx
	movl	%eax, 80(%ebx)
	movl	%ecx, 44(%ebx)
	xorl	%ecx, %ecx
	testl	%esi, %esi
	movl	12(%esp), %esi
	cmovs	%ecx, %edx
	movl	%esi, 100(%ebx)
	movl	%edx, 28(%ebx)
	movl	96(%esp), %edx
	subl	92(%esp), %edx
	addl	$1, %edx
	testl	%edi, %edi
	cmovg	%edx, %eax
	movl	%eax, 40(%ebx)
	movl	100(%esp), %eax
	call	__Z14PITCH_GetScalei
	movl	_MV_MixRate, %ecx
	movl	%eax, 88(%ebx)
	movl	%eax, %edx
	movl	%esi, %eax
	movl	%ecx, (%esp)
	sarl	$31, %ecx
	mull	%edx
	movl	%ecx, 4(%esp)
	call	_divideu64.lto_priv.0
	movl	108(%esp), %ecx
	movl	%eax, 104(%ebx)
	movl	%eax, %edx
	sall	$8, %eax
	subl	%edx, %eax
	movl	104(%esp), %edx
	movl	%eax, 92(%ebx)
	movl	120(%esp), %eax
	movl	%eax, 4(%esp)
	movl	112(%esp), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__Z17MV_SetVoiceVolumeP9VoiceNodeiiii
	movl	%ebx, %eax
	call	__Z12MV_PlayVoiceP9VoiceNode
	movl	116(%ebx), %eax
	movl	72(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	64(%esp), %ebx
	.cfi_restore 3
	movl	76(%esp), %ebp
	.cfi_restore 5
	movl	68(%esp), %esi
	addl	$80, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1889:
	.cfi_restore_state
	movl	64(%esp), %ebx
	.cfi_restore 3
	movl	72(%esp), %edi
	.cfi_restore 7
	movl	76(%esp), %ebp
	.cfi_restore 5
L1879:
	movl	$5, _MV_ErrorCode
L1876:
	movl	68(%esp), %esi
	movl	$-1, %eax
	addl	$80, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L1890:
	.cfi_def_cfa_offset 84
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$3, _MV_ErrorCode
	movl	64(%esp), %ebx
	.cfi_restore 3
	movl	72(%esp), %edi
	.cfi_restore 7
	movl	76(%esp), %ebp
	.cfi_restore 5
	jmp	L1876
	.cfi_endproc
LFE194:
	.p2align 4
	.globl	_MV_PlayWAV3D
	.def	_MV_PlayWAV3D;	.scl	2;	.type	32;	.endef
_MV_PlayWAV3D:
LFB196:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movl	_MV_Installed, %eax
	movl	72(%esp), %edx
	testl	%eax, %eax
	je	L1899
	movl	%ebx, 44(%esp)
	.cfi_offset 3, -8
	movl	68(%esp), %eax
	testl	%edx, %edx
	js	L1904
	andl	$127, %eax
	cmpl	$255, %edx
	jg	L1894
	testl	%edx, %edx
	jne	L1896
	sall	$8, %eax
	movzbl	_MV_PanTable+1(%eax), %ecx
	movzbl	_MV_PanTable(%eax), %ebx
L1897:
	movl	$255, %eax
	subl	%edx, %eax
L1898:
	movl	%eax, 20(%esp)
	movl	64(%esp), %eax
	movl	84(%esp), %edx
	movl	%ebx, 24(%esp)
	movl	%eax, 16(%esp)
	movl	60(%esp), %eax
	movl	%edx, 40(%esp)
	movl	80(%esp), %edx
	movl	%eax, 8(%esp)
	movl	56(%esp), %eax
	movl	%edx, 36(%esp)
	movl	76(%esp), %edx
	movl	%eax, 4(%esp)
	movl	52(%esp), %eax
	movl	%edx, 32(%esp)
	movl	%ecx, 28(%esp)
	movl	$-1, 12(%esp)
	movl	%eax, (%esp)
	call	_MV_PlayWAV
	movl	44(%esp), %ebx
	.cfi_restore 3
L1891:
	addl	$48, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1894:
	.cfi_def_cfa_offset 52
	.cfi_offset 3, -8
	sall	$8, %eax
	movzbl	_MV_PanTable+255(%eax), %ecx
	movzbl	_MV_PanTable+254(%eax), %ebx
	xorl	%eax, %eax
	jmp	L1898
	.p2align 4,,10
	.p2align 3
L1904:
	addl	$64, %eax
	andl	$127, %eax
	cmpl	$-255, %edx
	jl	L1894
	negl	%edx
L1896:
	movl	%edx, %ecx
	sall	$7, %eax
	sall	$7, %ecx
	sarl	$8, %ecx
	addl	%ecx, %eax
	movzbl	_MV_PanTable+1(%eax,%eax), %ecx
	movzbl	_MV_PanTable(%eax,%eax), %ebx
	xorl	%eax, %eax
	cmpl	$255, %edx
	je	L1898
	jmp	L1897
	.p2align 4,,10
	.p2align 3
L1899:
	.cfi_restore 3
	movl	$-1, %eax
	jmp	L1891
	.cfi_endproc
LFE196:
	.section .rdata,"dr"
LC126:
	.ascii "Creative Voice File\0"
	.text
	.p2align 4
	.globl	_MV_PlayVOC
	.def	_MV_PlayVOC;	.scl	2;	.type	32;	.endef
_MV_PlayVOC:
LFB197:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	movl	_MV_Installed, %ecx
	movl	%esi, -4(%ebp)
	.cfi_offset 6, -12
	movl	8(%ebp), %esi
	testl	%ecx, %ecx
	je	L1906
	movl	$19, 8(%esp)
	movl	$LC126, 4(%esp)
	movl	%esi, (%esp)
	call	_memcmp
	testl	%eax, %eax
	jne	L1913
	movl	40(%ebp), %eax
	xorl	%edx, %edx
	movl	%ebx, -8(%ebp)
	.cfi_offset 3, -16
	call	__Z13MV_AllocVoiceij
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1914
	movl	%esi, 20(%eax)
	movl	12(%ebp), %eax
	movl	$1, %edx
	movl	%edx, 72(%ebx)
	movl	%eax, 84(%ebx)
	movl	$8, %eax
	movb	$2, 64(%ebx)
	movl	%eax, 68(%ebx)
	movl	$__ZL18MV_GetNextVOCBlockP9VoiceNode, 8(%ebx)
	movzwl	20(%esi), %eax
	addl	%eax, %esi
	movl	24(%ebp), %eax
	movl	%esi, 24(%ebx)
	call	__Z14PITCH_GetScalei
	movl	16(%ebp), %edx
	movl	%eax, 88(%ebx)
	movl	40(%ebp), %eax
	movl	%eax, 120(%ebx)
	movl	48(%ebp), %eax
	movl	%eax, 44(%ebx)
	xorl	%eax, %eax
	testl	%edx, %edx
	js	L1910
	movl	24(%ebx), %eax
L1910:
	movl	32(%ebp), %ecx
	movl	28(%ebp), %edx
	movl	%eax, 28(%ebx)
	movl	20(%ebp), %eax
	subl	16(%ebp), %eax
	movl	$0, 32(%ebx)
	addl	$1, %eax
	movl	$0, 36(%ebx)
	movl	%eax, 40(%ebx)
	movl	44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	36(%ebp), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__Z17MV_SetVoiceVolumeP9VoiceNodeiiii
	movl	%ebx, %eax
	call	__Z12MV_PlayVoiceP9VoiceNode
	movl	116(%ebx), %eax
	movl	-8(%ebp), %ebx
	.cfi_restore 3
L1905:
	movl	-4(%ebp), %esi
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 6
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L1913:
	.cfi_restore_state
	movl	$5, _MV_ErrorCode
L1906:
	movl	$-1, %eax
	jmp	L1905
	.p2align 4,,10
	.p2align 3
L1914:
	.cfi_offset 3, -16
	movl	$3, _MV_ErrorCode
	movl	-8(%ebp), %ebx
	.cfi_restore 3
	jmp	L1906
	.cfi_endproc
LFE197:
	.p2align 4
	.globl	_MV_PlayVOC3D
	.def	_MV_PlayVOC3D;	.scl	2;	.type	32;	.endef
_MV_PlayVOC3D:
LFB198:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movl	_MV_Installed, %eax
	movl	72(%esp), %edx
	testl	%eax, %eax
	je	L1923
	movl	%ebx, 44(%esp)
	.cfi_offset 3, -8
	movl	68(%esp), %eax
	testl	%edx, %edx
	js	L1928
	andl	$127, %eax
	cmpl	$255, %edx
	jg	L1918
	testl	%edx, %edx
	jne	L1920
	sall	$8, %eax
	movzbl	_MV_PanTable+1(%eax), %ecx
	movzbl	_MV_PanTable(%eax), %ebx
L1921:
	movl	$255, %eax
	subl	%edx, %eax
L1922:
	movl	%eax, 20(%esp)
	movl	64(%esp), %eax
	movl	84(%esp), %edx
	movl	%ebx, 24(%esp)
	movl	%eax, 16(%esp)
	movl	60(%esp), %eax
	movl	%edx, 40(%esp)
	movl	80(%esp), %edx
	movl	%eax, 8(%esp)
	movl	56(%esp), %eax
	movl	%edx, 36(%esp)
	movl	76(%esp), %edx
	movl	%eax, 4(%esp)
	movl	52(%esp), %eax
	movl	%edx, 32(%esp)
	movl	%ecx, 28(%esp)
	movl	$-1, 12(%esp)
	movl	%eax, (%esp)
	call	_MV_PlayVOC
	movl	44(%esp), %ebx
	.cfi_restore 3
L1915:
	addl	$48, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1918:
	.cfi_def_cfa_offset 52
	.cfi_offset 3, -8
	sall	$8, %eax
	movzbl	_MV_PanTable+255(%eax), %ecx
	movzbl	_MV_PanTable+254(%eax), %ebx
	xorl	%eax, %eax
	jmp	L1922
	.p2align 4,,10
	.p2align 3
L1928:
	addl	$64, %eax
	andl	$127, %eax
	cmpl	$-255, %edx
	jl	L1918
	negl	%edx
L1920:
	movl	%edx, %ecx
	sall	$7, %eax
	sall	$7, %ecx
	sarl	$8, %ecx
	addl	%ecx, %eax
	movzbl	_MV_PanTable+1(%eax,%eax), %ecx
	movzbl	_MV_PanTable(%eax,%eax), %ebx
	xorl	%eax, %eax
	cmpl	$255, %edx
	je	L1922
	jmp	L1921
	.p2align 4,,10
	.p2align 3
L1923:
	.cfi_restore 3
	movl	$-1, %eax
	jmp	L1915
	.cfi_endproc
LFE198:
	.p2align 4
	.globl	__ZL11AL_Shutdownv.lto_priv.0
	.def	__ZL11AL_Shutdownv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL11AL_Shutdownv.lto_priv.0:
LFB199:
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
	movl	$__ZL7AL_Chip.lto_priv.0, %ebx
	andl	$-16, %esp
	subl	$44, %esp
	movl	_MV_MixRate, %edi
	movss	LC130, %xmm0
	movl	$__ZL7AL_Chip.lto_priv.0+3056, 12(%esp)
	movss	12(%esp), %xmm1
	movl	$19504, 8(%esp)
	unpcklps	%xmm1, %xmm0
	movaps	%xmm1, %xmm2
	movl	$0, 4(%esp)
	movl	$__ZL7AL_Chip.lto_priv.0, (%esp)
	movaps	%xmm0, %xmm5
	unpcklps	%xmm1, %xmm2
	movlhps	%xmm2, %xmm5
	movlps	%xmm0, 28(%esp)
	movups	%xmm5, 12(%esp)
	call	_memset
	movlps	28(%esp), %xmm0
	movl	$__ZL7AL_Chip.lto_priv.0+1012, %eax
	xorl	%edx, %edx
	.p2align 6
	.p2align 4
	.p2align 3
L1930:
	movb	%dl, 48(%eax)
	addl	$1, %edx
	addl	$56, %eax
	movlps	%xmm0, -56(%eax)
	movl	$33489407, -28(%eax)
	movb	$3, -23(%eax)
	movl	$__ZL7AL_Chip.lto_priv.0+3056, -48(%eax)
	cmpb	$36, %dl
	jne	L1930
	movl	%edi, 28(%esp)
	xorl	%esi, %esi
	jmp	L1933
	.p2align 4,,10
	.p2align 3
L1941:
	leal	168(%ebx), %eax
	movl	%eax, 8(%ebx)
L1932:
	movl	$-1, %eax
	movl	$-1, %ecx
	movb	%dl, 54(%ebx)
	addl	$1, %esi
	movw	%ax, 50(%ebx)
	movups	12(%esp), %xmm3
	movl	%ebx, %eax
	addl	$56, %ebx
	movlps	LC127, %xmm4
	movl	$__ZL7AL_Chip.lto_priv.0+3056, -28(%ebx)
	movb	$0, -16(%ebx)
	movw	%cx, -4(%ebx)
	movups	%xmm3, -44(%ebx)
	movlps	%xmm4, -24(%ebx)
	call	__ZL20OPL3_ChannelSetupAlgP13_opl3_channel.lto_priv.0
	cmpl	$18, %esi
	je	L1940
L1933:
	movzbl	__ZL7ch_slot(%esi), %eax
	movl	%esi, %edx
	imull	$56, %eax, %ecx
	addl	$3, %eax
	imull	$56, %eax, %eax
	leal	__ZL7AL_Chip.lto_priv.0+1008(%ecx), %edi
	movl	%edi, (%ebx)
	leal	__ZL7AL_Chip.lto_priv.0+1008(%eax), %edi
	movl	%edi, 4(%ebx)
	movl	%ebx, __ZL7AL_Chip.lto_priv.0+1008(%ecx)
	movl	$57, %ecx
	movl	%ebx, __ZL7AL_Chip.lto_priv.0+1008(%eax)
	movl	%esi, %eax
	mulb	%cl
	shrw	$9, %ax
	leal	(%eax,%eax,8), %ecx
	movl	%esi, %eax
	subl	%ecx, %eax
	cmpb	$2, %al
	jbe	L1941
	cmpb	$5, %al
	ja	L1932
	leal	-168(%ebx), %eax
	movl	%eax, 8(%ebx)
	jmp	L1932
	.p2align 4,,10
	.p2align 3
L1940:
	movl	28(%esp), %edi
	movl	$707707219, %eax
	movl	$1, __ZL7AL_Chip.lto_priv.0+3052
	movb	$4, __ZL7AL_Chip.lto_priv.0+3050
	sall	$10, %edi
	movb	$1, __ZL7AL_Chip.lto_priv.0+3047
	shrl	$2, %edi
	mull	%edi
	shrl	$11, %edx
	movl	%edx, __ZL7AL_Chip.lto_priv.0+3076
	cmpb	$0, __ZL16panpot_lut_build
	jne	L1934
	movl	$0, __ZL10panpot_lut.lto_priv.0
	movl	$1, %ebx
	.p2align 4
	.p2align 3
L1935:
	movl	%ebx, 12(%esp)
	fildl	12(%esp)
	fmull	LC58
	fmuls	LC128
	fstpl	(%esp)
	call	_sin
	fmuls	LC129
	fnstcw	42(%esp)
	movzwl	42(%esp), %eax
	orb	$12, %ah
	movw	%ax, 40(%esp)
	fldcw	40(%esp)
	fistpl	__ZL10panpot_lut.lto_priv.0(,%ebx,4)
	fldcw	42(%esp)
	addl	$1, %ebx
	cmpl	$256, %ebx
	jne	L1935
	movb	$1, __ZL16panpot_lut_build
L1934:
	movl	$32, %edx
	movl	$1, %eax
	call	_OPL3_WriteRegBuffered.constprop.0
	xorl	%edx, %edx
	movl	$8, %eax
	call	_OPL3_WriteRegBuffered.constprop.0
	xorl	%edx, %edx
	movl	$189, %eax
	call	_OPL3_WriteRegBuffered.constprop.0
	movl	_AL_Stereo, %eax
	leal	1(%eax,%eax), %edx
	movl	$261, %eax
	movzbl	%dl, %edx
	call	_OPL3_WriteRegBuffered.constprop.0
	movl	$904, %eax
	call	__ZL12AL_FlushCardi
	movl	$906, %eax
	call	__ZL12AL_FlushCardi
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
	jmp	__ZL14AL_ResetVoicesv
	.cfi_endproc
LFE199:
	.section .rdata,"dr"
LC131:
	.ascii "mono\0"
LC132:
	.ascii "stereo\0"
	.align 4
LC133:
	.ascii "Initializing Apogee Sound System\0"
	.align 4
LC134:
	.ascii "source/audiolib/src/fx_man.cpp\0"
LC136:
	.ascii "Failed initializing sound: %s\0"
	.align 4
LC137:
	.ascii "Initialized sound at %.1f KHz %s with %d voices\0"
	.text
	.p2align 4
	.globl	_FX_Init
	.def	_FX_Init;	.scl	2;	.type	32;	.endef
_FX_Init:
LFB204:
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
	movl	%eax, %esi
	pushl	%ebx
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%ecx, %ebx
	subl	$76, %esp
	movl	_FX_Installed, %eax
	movl	(%edi), %edi
	movl	%edx, -36(%ebp)
	testl	%eax, %eax
	jne	L2000
L1943:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$3, %eax
	jg	L2001
L1945:
	movl	-36(%ebp), %eax
	movl	_MV_Installed, %edx
	movl	%ebx, -24(%ebp)
	movl	%eax, -20(%ebp)
	testl	%edx, %edx
	jne	L2002
L1946:
	movl	$0, _MV_ErrorCode
	movl	-36(%ebp), %eax
	movl	$16, 4(%esp)
	leal	128(%esi,%eax,4), %edx
	sall	$7, %edx
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -28(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj
	movl	-28(%ebp), %edx
	subl	$8, %esp
	testl	%eax, %eax
	movl	%eax, %ebx
	je	L1947
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	%ebx, _MV_Voices
	movss	LC138, %xmm0
	movl	%esi, _MV_MaxVoices
	unpcklps	%xmm0, %xmm0
	movlps	%xmm0, _VoiceList
	movss	LC139, %xmm0
	unpcklps	%xmm0, %xmm0
	movlps	%xmm0, _VoicePool
	testl	%esi, %esi
	jle	L1949
	movl	$_VoicePool, (%ebx)
	movl	_VoicePool+4, %eax
	movl	%eax, 4(%ebx)
	movl	%ebx, (%eax)
	movl	%ebx, _VoicePool+4
	cmpl	$1, %esi
	je	L1949
	movl	$1, %edx
L1950:
	movl	%edx, %eax
	addl	$1, %edx
	sall	$7, %eax
	addl	_MV_Voices, %eax
	movl	$_VoicePool, (%eax)
	movl	_VoicePool+4, %ecx
	movl	%ecx, 4(%eax)
	movl	%eax, (%ecx)
	movl	%eax, _VoicePool+4
	cmpl	%edx, %esi
	jne	L1950
L1949:
	leal	0(,%esi,4), %edx
	movl	$16, 4(%esp)
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -28(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj
	subl	$8, %esp
	testl	%eax, %eax
	je	L1951
	movl	-28(%ebp), %edx
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	%eax, -28(%ebp)
	call	_memset
	movl	-28(%ebp), %ecx
	leal	-20(%ebp), %eax
	movl	$0, _ASS_PCMSoundDriver
	movl	%ecx, __ZL10MV_Handles.lto_priv.0
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%edi, 8(%esp)
	movl	%eax, (%esp)
	call	__Z15SDLDrv_PCM_InitPiS_Pv
	testl	%eax, %eax
	jne	L1952
	movl	%esi, %eax
	sall	$7, %eax
	addl	%ebx, %eax
	movl	_MV_ErrorCode, %ebx
	movl	%eax, -28(%ebp)
	testl	%ebx, %ebx
	jne	L1954
	movl	-24(%ebp), %eax
	movl	$1, _MV_Installed
	movl	%edi, _MV_InitDataPtr
	movl	%eax, -48(%ebp)
	movl	%eax, _MV_MixRate
	movl	-20(%ebp), %eax
	movl	$0, __ZL15MV_CallBackFunc.lto_priv.0
	movl	$0, __ZL14MV_ReverbLevel.lto_priv.0
	movl	$0, __ZL15MV_ReverbVolume.lto_priv.0
	movl	%eax, -32(%ebp)
	cmpl	$2, %eax
	je	L2003
	movl	$1536, -40(%ebp)
	movl	$512, %edi
	movl	$2, %eax
	movl	$1, -32(%ebp)
L1957:
	movl	-32(%ebp), %ecx
	movl	_divtable32(%edi,%edi,4), %edx
	movl	%eax, _MV_SampleSize
	movl	%edi, _MV_BufferSize
	movl	%ecx, _MV_Channels
	movzbl	_divtable32+4(%edi,%edi,4), %ecx
	movb	%cl, -44(%ebp)
	movl	%ecx, %eax
	andl	$31, %ecx
	movb	%cl, -49(%ebp)
	testl	%edx, %edx
	je	L2004
	movzbl	-44(%ebp), %ecx
	movl	$8192, %eax
	imull	%edx
	sarb	$7, %cl
	movsbl	%cl, %ecx
	movl	%ecx, %eax
	xorb	$32, %ah
	addl	%edx, %eax
	subl	%ecx, %eax
	testb	$64, -44(%ebp)
	movzbl	-49(%ebp), %ecx
	cmovne	%eax, %edx
	movl	%edx, %eax
	shrl	$31, %edx
	sarl	%cl, %eax
	addl	%edx, %eax
L1959:
	movl	-32(%ebp), %ecx
	movl	%eax, __ZL18MV_NumberOfBuffers.lto_priv.0
	addl	%eax, %eax
	movl	$8192, __ZL15MV_BufferLength.lto_priv.0
	movl	%ecx, _MV_RightChannelOffset
	movl	-40(%ebp), %ecx
	movl	%ecx, __ZL14MV_ReverbDelay.lto_priv.0
	movl	-28(%ebp), %ecx
	movl	%ecx, _MV_MixBuffer(,%eax,4)
	testl	%eax, %eax
	jle	L1961
	xorl	%edx, %edx
L1962:
	movl	%ecx, _MV_MixBuffer(,%edx,4)
	addl	$1, %edx
	addl	%edi, %ecx
	cmpl	%edx, %eax
	jne	L1962
	subl	$1, %eax
	movl	-28(%ebp), %ecx
	imull	%edi, %eax
	addl	%ecx, %edi
	addl	%edi, %eax
	movl	%eax, -28(%ebp)
L1961:
	movl	-28(%ebp), %eax
	movl	%esi, -44(%ebp)
	movl	$_MV_PanTable+8448, -28(%ebp)
	movl	%eax, _MV_MusicBuffer
	movl	%ebx, -40(%ebp)
	movl	$32385, %ebx
	.p2align 4
	.p2align 3
L1964:
	movl	$-2130574327, %eax
	movl	-28(%ebp), %esi
	movl	%ebx, -32(%ebp)
	imull	%ebx
	movl	%ebx, %eax
	sarl	$31, %eax
	leal	7936(%esi), %ecx
	addl	%ebx, %edx
	sarl	$6, %edx
	subl	%eax, %edx
	leal	-8448(%esi), %eax
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L1963:
	testl	%esi, %esi
	leal	31(%esi), %ebx
	movl	%edx, %edi
	movb	%dl, 1(%eax)
	cmovns	%esi, %ebx
	addl	%edx, %esi
	addl	$256, %eax
	subl	$256, %ecx
	sarl	$5, %ebx
	subl	%ebx, %edi
	movl	%edi, %ebx
	movb	%bl, -256(%eax)
	movb	%bl, 256(%ecx)
	movb	%dl, 257(%ecx)
	movb	%dl, 16128(%eax)
	movb	%bl, 16129(%eax)
	movb	%dl, 16384(%ecx)
	movb	%bl, 16385(%ecx)
	cmpl	%eax, -28(%ebp)
	jne	L1963
	movl	-32(%ebp), %ebx
	addl	$2, -28(%ebp)
	subl	$255, %ebx
	cmpl	$_MV_PanTable+8704, -28(%ebp)
	jne	L1964
	xorps	%xmm0, %xmm0
	movl	-40(%ebp), %ebx
	movl	-44(%ebp), %esi
	movss	LC135, %xmm1
	cvtsi2ssl	-48(%ebp), %xmm0
	divss	%xmm0, %xmm1
	movss	%xmm1, -28(%ebp)
	flds	-28(%ebp)
	fstpl	8(%esp)
	flds	LC17
	fstpl	(%esp)
	call	_pow
	xorps	%xmm0, %xmm0
	movss	LC18, %xmm1
	movss	LC129, %xmm2
	movss	LC10, %xmm3
	fstps	-28(%ebp)
	subss	-28(%ebp), %xmm1
	mulss	%xmm1, %xmm2
	cmpnless	%xmm1, %xmm0
	movss	LC11, %xmm1
	andps	%xmm0, %xmm1
	andnps	%xmm3, %xmm0
	orps	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, _MV_VolumeSmoothFactor
	movl	$16384, 8(%esp)
	movl	$0, 4(%esp)
	movl	_MV_MixBuffer, %eax
	movl	%eax, (%esp)
	call	_memset
	movl	__ZL18MV_NumberOfBuffers.lto_priv.0, %eax
	testl	%eax, %eax
	jle	L1967
	testb	$1, %al
	je	L1968
	movl	$1, __ZL14MV_BufferEmpty.lto_priv.0
	movl	$1, %ebx
	cmpl	$1, %eax
	je	L1967
L1968:
	movl	$1, __ZL14MV_BufferEmpty.lto_priv.0(,%ebx,4)
	movl	$1, __ZL14MV_BufferEmpty.lto_priv.0+4(,%ebx,4)
	addl	$2, %ebx
	cmpl	%ebx, %eax
	jne	L1968
L1967:
	movl	_ASS_PCMSoundDriver, %edx
	movl	$1, __ZL10MV_MixPage.lto_priv.0
	movl	$__ZL13MV_ServiceVocv.lto_priv.0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	_MV_BufferSize, %ecx
	leal	(%edx,%edx,8), %edx
	movl	%ecx, 4(%esp)
	movl	_MV_MixBuffer(,%eax,4), %eax
	movl	%eax, (%esp)
	call	*__ZL12SoundDrivers.lto_priv.0+20(,%edx,8)
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L2005
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$3, %eax
	jle	L1971
	cmpl	$1, -36(%ebp)
	movl	$LC132, %eax
	movl	%esi, 28(%esp)
	xorps	%xmm0, %xmm0
	movl	$LC131, %edx
	cmove	%edx, %eax
	movl	%eax, 24(%esp)
	cvtsi2ssl	_MV_MixRate, %xmm0
	divss	LC14, %xmm0
	movss	%xmm0, -28(%ebp)
	flds	-28(%ebp)
	movl	$LC137, 12(%esp)
	movl	$186, 8(%esp)
	movl	$LC134, 4(%esp)
	movl	$4, (%esp)
	fstpl	16(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L1971:
	movl	$1, _FX_Installed
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
L2004:
	.cfi_restore_state
	movl	%eax, %edx
	movl	$8192, %eax
	sarb	$7, %dl
	sarl	%cl, %eax
	movsbl	%dl, %edx
	xorl	%edx, %eax
	subl	%edx, %eax
	jmp	L1959
L1952:
	movl	$2, _MV_ErrorCode
L1954:
	movl	_MV_Voices, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, _MV_Voices
L1956:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	$2, _FX_ErrorCode
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1973
L1975:
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
L2003:
	.cfi_restore_state
	movl	$3072, -40(%ebp)
	movl	$1024, %edi
	movl	$4, %eax
	jmp	L1957
L2002:
	call	_MV_Shutdown.part.0
	jmp	L1946
L2001:
	movl	$LC133, 12(%esp)
	movl	$164, 8(%esp)
	movl	$LC134, 4(%esp)
	movl	$4, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1945
L2000:
	movl	_MV_Installed, %ecx
	testl	%ecx, %ecx
	je	L1944
	call	_MV_Shutdown.part.0
L1944:
	movl	$0, _FX_Installed
	jmp	L1943
L1973:
	movl	$2, %eax
	call	_MV_ErrorString
	movl	$LC136, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$178, 8(%esp)
	movl	$LC134, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1975
L1947:
	movl	%edx, %eax
	call	__Z13handle_memerri
L1951:
	movl	$4, %eax
	call	__Z13handle_memerri
L2005:
	movl	_MV_Installed, %eax
	movl	$2, _MV_ErrorCode
	testl	%eax, %eax
	je	L1970
	call	_MV_Shutdown.part.0
L1970:
	movl	$2, _MV_ErrorCode
	jmp	L1956
	.cfi_endproc
LFE204:
	.p2align 4
	.globl	__ZL10FX_ReadFmtPKcj.lto_priv.0
	.def	__ZL10FX_ReadFmtPKcj.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL10FX_ReadFmtPKcj.lto_priv.0:
LFB220:
	.cfi_startproc
	cmpl	$15, %edx
	jbe	L2027
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	movl	(%eax), %ebx
	cmpl	$1399285583, %ebx
	je	L2014
	movl	%eax, %ecx
	ja	L2009
	movl	$5, %eax
	cmpl	$1130450022, %ebx
	je	L2006
	cmpl	$1179011410, %ebx
	jne	L2026
	movl	8(%ecx), %eax
	cmpl	$1163280727, %eax
	je	L2017
	cmpl	$1096303683, %eax
	movl	$0, %edx
	movl	$6, %eax
	cmovne	%edx, %eax
L2006:
	addl	$16, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2027:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L2009:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -8
	movl	$2, %eax
	cmpl	$1634038339, %ebx
	je	L2006
L2026:
	xorl	%ebx, %ebx
L2012:
	movl	%edx, 4(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, (%esp)
	movl	%ecx, 8(%esp)
	call	*__ZZ14MV_IdentifyXMPE21module_test_functions(%ebx)
	testl	%eax, %eax
	je	L2019
	addl	$4, %ebx
	movl	8(%esp), %ecx
	movl	12(%esp), %edx
	cmpl	$20, %ebx
	jne	L2012
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2014:
	.cfi_restore_state
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	$4, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2019:
	.cfi_restore_state
	movl	$7, %eax
	jmp	L2006
	.p2align 4,,10
	.p2align 3
L2017:
	movl	$3, %eax
	jmp	L2006
	.cfi_endproc
LFE220:
	.p2align 4
	.globl	__Z16MIDI_AllNotesOffv.isra.0
	.def	__Z16MIDI_AllNotesOffv.isra.0;	.scl	2;	.type	32;	.endef
__Z16MIDI_AllNotesOffv.isra.0:
LFB224:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	movl	_ASS_MIDISoundDriver, %eax
	leal	(%eax,%eax,8), %eax
	movl	__ZL12SoundDrivers.lto_priv.0+60(,%eax,8), %eax
	testl	%eax, %eax
	je	L2029
	call	*%eax
L2029:
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L2033:
	movl	__ZL11_MIDI_Funcs.lto_priv.0, %eax
	testl	%eax, %eax
	je	L2030
	movl	12(%eax), %edx
	testl	%edx, %edx
	je	L2036
	movl	$0, 8(%esp)
	movl	$64, 4(%esp)
	movl	%ebx, (%esp)
	call	*%edx
	movl	__ZL11_MIDI_Funcs.lto_priv.0, %eax
	testl	%eax, %eax
	je	L2030
	movl	12(%eax), %edx
	testl	%edx, %edx
	je	L2036
	movl	$0, 8(%esp)
	movl	$66, 4(%esp)
	movl	%ebx, (%esp)
	call	*%edx
	movl	__ZL11_MIDI_Funcs.lto_priv.0, %eax
	testl	%eax, %eax
	je	L2030
L2036:
	movl	12(%eax), %edx
	testl	%edx, %edx
	je	L2035
	movl	$0, 8(%esp)
	movl	$123, 4(%esp)
	movl	%ebx, (%esp)
	call	*%edx
	movl	__ZL11_MIDI_Funcs.lto_priv.0, %eax
	testl	%eax, %eax
	je	L2030
L2035:
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L2030
	movl	$0, 8(%esp)
	movl	$120, 4(%esp)
	movl	%ebx, (%esp)
	call	*%eax
L2030:
	addl	$1, %ebx
	cmpl	$16, %ebx
	jne	L2033
	movl	_ASS_MIDISoundDriver, %eax
	leal	(%eax,%eax,8), %eax
	movl	__ZL12SoundDrivers.lto_priv.0+64(,%eax,8), %eax
	testl	%eax, %eax
	je	L2028
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	*%eax
	.p2align 4,,10
	.p2align 3
L2028:
	.cfi_restore_state
	addl	$12, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE224:
	.p2align 4
	.def	__Z10MIDI_Resetv.isra.0;	.scl	3;	.type	32;	.endef
__Z10MIDI_Resetv.isra.0:
LFB230:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	call	__Z16MIDI_AllNotesOffv.isra.0
	movl	_ASS_MIDISoundDriver, %eax
	leal	(%eax,%eax,8), %eax
	movl	__ZL12SoundDrivers.lto_priv.0+60(,%eax,8), %eax
	testl	%eax, %eax
	je	L2064
	call	*%eax
L2064:
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L2080:
	movl	__ZL11_MIDI_Funcs.lto_priv.0, %eax
	testl	%eax, %eax
	je	L2135
	movl	12(%eax), %edx
	testl	%edx, %edx
	je	L2069
	movl	$0, 8(%esp)
	movl	$121, 4(%esp)
	movl	%ebx, (%esp)
	call	*%edx
	movl	__ZL11_MIDI_Funcs.lto_priv.0, %eax
	testl	%eax, %eax
	je	L2135
	movl	12(%eax), %edx
	testl	%edx, %edx
	je	L2069
	movl	$0, 8(%esp)
	movl	$100, 4(%esp)
	movl	%ebx, (%esp)
	call	*%edx
	movl	__ZL11_MIDI_Funcs.lto_priv.0, %eax
	testl	%eax, %eax
	je	L2135
L2069:
	movl	12(%eax), %edx
	testl	%edx, %edx
	je	L2071
	movl	$0, 8(%esp)
	movl	$101, 4(%esp)
	movl	%ebx, (%esp)
	call	*%edx
	movl	__ZL11_MIDI_Funcs.lto_priv.0, %eax
	testl	%eax, %eax
	je	L2135
L2071:
	movl	12(%eax), %edx
	testl	%edx, %edx
	je	L2073
	movl	$2, 8(%esp)
	movl	$6, 4(%esp)
	movl	%ebx, (%esp)
	call	*%edx
	movl	__ZL11_MIDI_Funcs.lto_priv.0, %eax
	testl	%eax, %eax
	je	L2135
L2073:
	movl	12(%eax), %edx
	testl	%edx, %edx
	je	L2075
	movl	$0, 8(%esp)
	movl	$38, 4(%esp)
	movl	%ebx, (%esp)
	call	*%edx
	movl	__ZL11_MIDI_Funcs.lto_priv.0, %eax
L2075:
	movl	$90, __ZL19_MIDI_ChannelVolume(,%ebx,4)
	testl	%eax, %eax
	je	L2066
	movl	12(%eax), %edx
	testl	%edx, %edx
	je	L2086
	movl	$64, 8(%esp)
	movl	$10, 4(%esp)
	movl	%ebx, (%esp)
	call	*%edx
	movl	__ZL11_MIDI_Funcs.lto_priv.0, %eax
	testl	%eax, %eax
	je	L2066
	movl	12(%eax), %edx
	testl	%edx, %edx
	je	L2086
	movl	$40, 8(%esp)
	movl	$91, 4(%esp)
	movl	%ebx, (%esp)
	call	*%edx
	movl	__ZL11_MIDI_Funcs.lto_priv.0, %eax
	testl	%eax, %eax
	je	L2066
L2086:
	movl	12(%eax), %edx
	testl	%edx, %edx
	je	L2085
	movl	$0, 8(%esp)
	movl	$93, 4(%esp)
	movl	%ebx, (%esp)
	call	*%edx
	movl	__ZL11_MIDI_Funcs.lto_priv.0, %eax
	testl	%eax, %eax
	je	L2066
L2085:
	movl	12(%eax), %edx
	testl	%edx, %edx
	je	L2084
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	call	*%edx
	movl	__ZL11_MIDI_Funcs.lto_priv.0, %eax
	testl	%eax, %eax
	je	L2066
L2084:
	movl	12(%eax), %edx
	testl	%edx, %edx
	je	L2083
	movl	$0, 8(%esp)
	movl	$32, 4(%esp)
	movl	%ebx, (%esp)
	call	*%edx
	movl	__ZL11_MIDI_Funcs.lto_priv.0, %eax
	testl	%eax, %eax
	je	L2066
L2083:
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L2066
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	call	*%eax
L2066:
	addl	$1, %ebx
	cmpl	$16, %ebx
	jne	L2080
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L2081:
	movl	__ZL19_MIDI_ChannelVolume(,%ebx,4), %edx
	movl	%ebx, %eax
	addl	$1, %ebx
	call	__ZL22_MIDI_SetChannelVolumeii
	cmpl	$16, %ebx
	jne	L2081
	movl	_ASS_MIDISoundDriver, %eax
	leal	(%eax,%eax,8), %eax
	movl	__ZL12SoundDrivers.lto_priv.0+64(,%eax,8), %eax
	testl	%eax, %eax
	je	L2082
	call	*%eax
L2082:
	movl	$1, __ZL11_MIDI_Reset
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
L2135:
	.cfi_restore_state
	movl	$90, __ZL19_MIDI_ChannelVolume(,%ebx,4)
	jmp	L2066
	.cfi_endproc
LFE230:
	.p2align 4
	.globl	__Z14MIDI_SetVolumei.isra.0
	.def	__Z14MIDI_SetVolumei.isra.0;	.scl	2;	.type	32;	.endef
__Z14MIDI_SetVolumei.isra.0:
LFB236:
	.cfi_startproc
	movl	__ZL11_MIDI_Funcs.lto_priv.0, %edx
	testl	%edx, %edx
	je	L2153
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	$255, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	cmpl	%ecx, %eax
	cmovle	%eax, %ecx
	xorl	%eax, %eax
	movl	%ecx, %ebx
	testl	%ecx, %ecx
	cmovs	%eax, %ebx
	movl	_ASS_MIDISoundDriver, %eax
	leal	(%eax,%eax,8), %eax
	movl	%ebx, __ZL17_MIDI_TotalVolume
	movl	__ZL12SoundDrivers.lto_priv.0+60(,%eax,8), %eax
	testl	%eax, %eax
	je	L2138
	call	*%eax
	movl	__ZL11_MIDI_Funcs.lto_priv.0, %edx
L2138:
	movl	36(%edx), %eax
	testl	%eax, %eax
	je	L2141
	movl	%ebx, (%esp)
	call	*%eax
L2140:
	movl	_ASS_MIDISoundDriver, %eax
	leal	(%eax,%eax,8), %eax
	movl	__ZL12SoundDrivers.lto_priv.0+64(,%eax,8), %eax
	testl	%eax, %eax
	je	L2136
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	*%eax
	.p2align 4,,10
	.p2align 3
L2136:
	.cfi_restore_state
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2153:
	ret
	.p2align 4,,10
	.p2align 3
L2141:
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -8
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L2139:
	movl	__ZL19_MIDI_ChannelVolume(,%ebx,4), %edx
	movl	%ebx, %eax
	addl	$1, %ebx
	call	__ZL22_MIDI_SetChannelVolumeii
	cmpl	$16, %ebx
	jne	L2139
	jmp	L2140
	.cfi_endproc
LFE236:
	.p2align 4
	.globl	__Z19MIDI_ServiceRoutinev.part.0
	.def	__Z19MIDI_ServiceRoutinev.part.0;	.scl	2;	.type	32;	.endef
__Z19MIDI_ServiceRoutinev.part.0:
LFB237:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	__ZL15_MIDI_NumTracks, %eax
	testl	%eax, %eax
	jle	L2157
	movl	%esi, 32(%esp)
	movl	$0, 16(%esp)
	movl	$0, 20(%esp)
	movl	%ebx, 28(%esp)
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	__ZL14_MIDI_TrackPtr, %ebx
	movl	%edi, 36(%esp)
	.cfi_offset 7, -12
	xorl	%edi, %edi
	movl	%ebp, 40(%esp)
	.cfi_offset 5, -8
	xorl	%ebp, %ebp
	.p2align 4
	.p2align 3
L2158:
	movl	8(%ebx), %eax
	cmpw	$0, 12(%ebx)
	je	L2167
	movl	%ebp, 12(%esp)
	.p2align 4
	.p2align 3
L2197:
	testl	%eax, %eax
	jne	L2226
	movl	4(%ebx), %edx
	movzbl	(%edx), %esi
	leal	1(%edx), %eax
	movl	%eax, 4(%ebx)
	movl	%esi, %eax
	movl	%esi, %ecx
	sarl	$4, %eax
	cmpl	$15, %eax
	je	L2233
	testb	%cl, %cl
	js	L2234
	movswl	14(%ebx), %esi
	movl	%edx, 4(%ebx)
	movl	%esi, %eax
	sarl	$4, %eax
L2172:
	movl	__ZL20_MIDI_CommandLengths(,%eax,4), %edx
	andl	$15, %esi
	testl	%edx, %edx
	je	L2173
	movl	4(%ebx), %ecx
	leal	1(%ecx), %ebp
	movzbl	(%ecx), %edi
	movl	%ebp, 4(%ebx)
	cmpl	$2, %edx
	jne	L2173
	movzbl	1(%ecx), %edx
	addl	$2, %ecx
	movl	%ecx, 4(%ebx)
	movl	%edx, 16(%esp)
	.p2align 4
	.p2align 3
L2173:
	subl	$8, %eax
	cmpl	$6, %eax
	ja	L2183
	jmp	*L2176(,%eax,4)
	.section .rdata,"dr"
	.align 4
L2176:
	.long	L2182
	.long	L2181
	.long	L2180
	.long	L2179
	.long	L2178
	.long	L2177
	.long	L2175
	.text
	.p2align 4,,10
	.p2align 3
L2177:
	movl	__ZL11_MIDI_Funcs.lto_priv.0, %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	L2183
	cmpl	$__ZL21MME_ChannelAftertouchii, %eax
	jne	L2187
	leal	24(%esp), %edx
	movl	$2, %eax
	call	__ZL15midi_get_bufferiPPh.isra.0
	movl	24(%esp), %eax
	movl	%edi, %ecx
	movl	%esi, %edx
	orl	$-48, %edx
	movb	%cl, 1(%eax)
	movl	__ZL10midiThread, %ecx
	movb	%dl, (%eax)
	testl	%ecx, %ecx
	je	L2231
L2188:
	movl	__ZL15midiThreadTimer, %eax
	movl	%eax, __ZL17midiLastEventTime
L2183:
	movl	4(%ebx), %edx
	movzbl	(%edx), %eax
	addl	$1, %edx
	movl	%edx, 4(%ebx)
	testb	%al, %al
	js	L2235
L2192:
	movl	%eax, 8(%ebx)
	cmpw	$0, 12(%ebx)
	jne	L2197
	.p2align 4
	.p2align 3
L2226:
	movl	12(%esp), %ebp
	jmp	L2167
	.p2align 4,,10
	.p2align 3
L2182:
	movl	__ZL11_MIDI_Funcs.lto_priv.0, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L2183
L2230:
	movl	16(%esp), %ecx
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	movl	%ecx, 8(%esp)
	call	*%eax
	movl	4(%ebx), %edx
	movzbl	(%edx), %eax
	addl	$1, %edx
	movl	%edx, 4(%ebx)
	testb	%al, %al
	jns	L2192
L2235:
	movl	12(%esp), %ebp
	andl	$127, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L2191:
	movzbl	(%edx), %ecx
	sall	$7, %eax
	addl	$1, %edx
	movl	%edx, 4(%ebx)
	movl	%ecx, %esi
	andl	$127, %esi
	addl	%esi, %eax
	testb	%cl, %cl
	js	L2191
	movl	%ebp, 12(%esp)
	jmp	L2192
	.p2align 4,,10
	.p2align 3
L2175:
	movl	__ZL11_MIDI_Funcs.lto_priv.0, %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	L2230
	jmp	L2183
	.p2align 4,,10
	.p2align 3
L2178:
	movl	__ZL11_MIDI_Funcs.lto_priv.0, %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L2183
	cmpb	$0, 301(%ebx)
	jne	L2183
	movl	%edi, %edx
	movl	%esi, (%esp)
	andl	$127, %edx
	movl	%edx, 4(%esp)
	call	*%eax
	jmp	L2183
	.p2align 4,,10
	.p2align 3
L2179:
	movl	16(%esp), %eax
	movl	20(%esp), %edx
	movl	%edi, (%esp)
	movl	%esi, %ecx
	movl	%eax, 4(%esp)
	movl	%ebx, %eax
	call	__ZL29_MIDI_InterpretControllerInfoP5trackiiii
	movl	%eax, 20(%esp)
	jmp	L2183
	.p2align 4,,10
	.p2align 3
L2180:
	movl	__ZL11_MIDI_Funcs.lto_priv.0, %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L2183
	cmpl	$__ZL18MME_PolyAftertouchiii, %eax
	jne	L2230
	leal	24(%esp), %edx
	movl	$3, %eax
	call	__ZL15midi_get_bufferiPPh.isra.0
	movl	24(%esp), %eax
	movl	%edi, %ecx
	movl	%esi, %edx
	movl	__ZL10midiThread, %esi
	orl	$-96, %edx
	movb	%cl, 1(%eax)
	movzbl	16(%esp), %ecx
	movb	%dl, (%eax)
	movb	%cl, 2(%eax)
	testl	%esi, %esi
	jne	L2188
L2231:
	call	__ZL25midi_flush_current_bufferv
	jmp	L2183
	.p2align 4,,10
	.p2align 3
L2181:
	movl	__ZL11_MIDI_Funcs.lto_priv.0, %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	L2230
	jmp	L2183
	.p2align 4,,10
	.p2align 3
L2234:
	movw	%si, 14(%ebx)
	jmp	L2172
	.p2align 4,,10
	.p2align 3
L2233:
	cmpb	$-9, %cl
	je	L2160
	cmpb	$-1, %cl
	je	L2161
	cmpb	$-16, %cl
	je	L2160
L2162:
	cmpw	$0, 12(%ebx)
	jne	L2166
L2237:
	movl	12(%esp), %ebp
	movl	8(%ebx), %eax
L2167:
	movl	__ZL18_MIDI_ActiveTracks, %edx
	subl	$1, %eax
	addl	$304, %ebx
	addl	$1, %ebp
	movl	%eax, -296(%ebx)
	testl	%edx, %edx
	je	L2236
L2196:
	cmpl	__ZL15_MIDI_NumTracks, %ebp
	jl	L2158
	movl	28(%esp), %ebx
	.cfi_restore 3
	movl	32(%esp), %esi
	.cfi_restore 6
	movl	36(%esp), %edi
	.cfi_restore 7
	movl	40(%esp), %ebp
	.cfi_restore 5
L2157:
	call	__ZL17_MIDI_AdvanceTickv
	addl	$1, __MIDI_GlobalPositionInTicks
	addl	$44, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2161:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%ebx, %eax
	call	__ZL15_MIDI_MetaEventP5track
	cmpw	$0, 12(%ebx)
	je	L2237
L2166:
	movl	4(%ebx), %edx
	movzbl	(%edx), %eax
	addl	$1, %edx
	movl	%edx, 4(%ebx)
	testb	%al, %al
	js	L2168
L2232:
	movl	%eax, 8(%ebx)
	jmp	L2197
	.p2align 4,,10
	.p2align 3
L2160:
	movzbl	1(%edx), %eax
	addl	$2, %edx
	movl	%edx, 4(%ebx)
	testb	%al, %al
	js	L2238
L2165:
	addl	%eax, %edx
	movl	%edx, 4(%ebx)
	jmp	L2162
	.p2align 4,,10
	.p2align 3
L2236:
	call	__ZL17_MIDI_ResetTracksv
	movl	__ZL10_MIDI_Loop, %eax
	testl	%eax, %eax
	je	L2195
	movl	__ZL14_MIDI_TrackPtr, %ebx
	xorl	%ebp, %ebp
	jmp	L2196
L2238:
	movl	12(%esp), %ebp
	andl	$127, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L2164:
	movzbl	(%edx), %ecx
	sall	$7, %eax
	addl	$1, %edx
	movl	%edx, 4(%ebx)
	movl	%ecx, %esi
	andl	$127, %esi
	addl	%esi, %eax
	testb	%cl, %cl
	js	L2164
	movl	%ebp, 12(%esp)
	jmp	L2165
L2168:
	movl	12(%esp), %ebp
	andl	$127, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L2170:
	movzbl	(%edx), %ecx
	sall	$7, %eax
	addl	$1, %edx
	movl	%edx, 4(%ebx)
	movl	%ecx, %esi
	andl	$127, %esi
	addl	%esi, %eax
	testb	%cl, %cl
	js	L2170
	movl	%ebp, 12(%esp)
	jmp	L2232
L2187:
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	call	*%eax
	jmp	L2183
L2195:
	movl	$0, __ZL16_MIDI_SongActive.lto_priv.0
	movl	28(%esp), %ebx
	.cfi_restore 3
	movl	32(%esp), %esi
	.cfi_restore 6
	movl	36(%esp), %edi
	.cfi_restore 7
	movl	40(%esp), %ebp
	.cfi_restore 5
	jmp	L2157
	.cfi_endproc
LFE237:
	.section .rdata,"dr"
LC140:
	.ascii "midiDataThread\0"
	.align 4
LC142:
	.ascii "midi_get_tick: error in midiStreamPosition\0"
LC143:
	.ascii "midi_gc_buffers\0"
	.align 4
LC144:
	.ascii "MME midi_gc_buffers pruning spare buffer %p\0"
	.text
	.p2align 4
	.def	__ZL14midiDataThreadPv@4;	.scl	3;	.type	32;	.endef
__ZL14midiDataThreadPv@4:
LFB238:
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
	.cfi_escape 0x10,0x7,0x2,0x75,0x7c
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	leal	-48(%ebp), %edi
	pushl	%ebx
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	$10, %ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x70,0x6
	subl	$76, %esp
	movl	$-1, 12(%esp)
	movl	$LC140, 8(%esp)
	movl	$9, 4(%esp)
	movl	$__ZZN6loguru18thread_name_bufferEvE11thread_name.lto_priv.0, (%esp)
	call	*__imp__strncpy_s
	.p2align 4
	.p2align 3
L2240:
	movss	__ZL19midiThreadQuitEvent, %xmm0
	movl	__ZL20midiThreadResetEvent, %eax
	movss	__ZL23midiBufferFinishedEvent, %xmm1
	movl	%eax, -40(%ebp)
	unpcklps	%xmm1, %xmm0
	movlps	%xmm0, -48(%ebp)
	movl	%ebx, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edi, 4(%esp)
	movl	$3, (%esp)
	call	*__imp__WaitForMultipleObjects@16
	subl	$16, %esp
	testl	%eax, %eax
	je	L2241
	movl	__ZL17midiStreamRunning, %esi
	testl	%esi, %esi
	je	L2240
	cmpl	$2, %eax
	je	L2243
	cmpl	$258, %eax
	je	L2244
	cmpl	$1, %eax
	jne	L2240
	call	__Z18WinMMDrv_MIDI_Lockv
	movl	__ZL17midiStreamRunning, %ecx
	testl	%ecx, %ecx
	je	L2250
	movl	__ZL18finishedBufferList, %eax
	cmpl	$__ZL18finishedBufferList, %eax
	je	L2251
	movl	(%eax), %ebx
	jmp	L2253
	.p2align 5
	.p2align 4,,10
	.p2align 3
L2252:
	movl	(%ebx), %edx
	movl	%ebx, %eax
	cmpl	$__ZL18finishedBufferList, %ebx
	je	L2251
L2267:
	movl	%edx, %ebx
L2253:
	testb	$1, 24(%eax)
	je	L2252
	movl	$LC143, %edx
	call	__ZL19midi_dispose_bufferP10MidiBufferPKc
	movl	(%ebx), %edx
	movl	%ebx, %eax
	cmpl	$__ZL18finishedBufferList, %ebx
	jne	L2267
L2251:
	movl	__ZL15spareBufferList, %ebx
	cmpl	$__ZL15spareBufferList, %ebx
	je	L2250
	movl	(%ebx), %esi
	jmp	L2255
	.p2align 4,,10
	.p2align 3
L2254:
	movl	(%esi), %eax
	movl	%esi, %ebx
	cmpl	$__ZL15spareBufferList, %esi
	je	L2250
L2268:
	movl	%eax, %esi
L2255:
	movl	__ZL20numActiveMidiBuffers, %eax
	cmpl	%eax, __ZL19numSpareMidiBuffers
	jl	L2250
	movl	4(%ebx), %edx
	movl	(%ebx), %eax
	movl	%eax, (%edx)
	movl	4(%ebx), %edx
	movl	%edx, 4(%eax)
	movl	%ebx, (%ebx)
	movl	%ebx, 4(%ebx)
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	subl	$4, %esp
	subl	$1, __ZL19numSpareMidiBuffers
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$126, %eax
	jle	L2254
	movl	%ebx, 16(%esp)
	movl	%esi, %ebx
	movl	$LC144, 12(%esp)
	movl	$186, 8(%esp)
	movl	$LC37, 4(%esp)
	movl	$127, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	(%esi), %eax
	cmpl	$__ZL15spareBufferList, %esi
	jne	L2268
	.p2align 4
	.p2align 3
L2250:
	movl	__ZL9midiMutex, %eax
	xorl	%ebx, %ebx
	movl	%eax, (%esp)
	call	*__imp__ReleaseMutex@4
	subl	$4, %esp
	jmp	L2240
	.p2align 4,,10
	.p2align 3
L2244:
	call	__Z18WinMMDrv_MIDI_Lockv
	movl	__ZL17midiStreamRunning, %edx
	testl	%edx, %edx
	je	L2269
	movl	$32, %eax
	xorl	%edx, %edx
	movl	%eax, -32(%ebp)
	leal	-32(%ebp), %eax
	movl	%edx, -28(%ebp)
	movl	$12, 8(%esp)
	movl	%eax, 4(%esp)
	movl	__ZL10midiStream, %eax
	movl	%eax, (%esp)
	call	*__imp__midiStreamPosition@12
	movl	-28(%ebp), %ecx
	subl	$12, %esp
	movl	$0, -52(%ebp)
	movl	%ecx, -60(%ebp)
	movl	%ecx, -56(%ebp)
	testl	%eax, %eax
	jne	L2284
L2257:
	movl	__ZL15midiThreadTimer, %edx
	movl	__ZL20midiThreadQueueTicks, %eax
	xorl	%ebx, %ebx
	movl	%edx, %ecx
	subl	-56(%ebp), %ecx
	sbbl	-52(%ebp), %ebx
	movl	$0, -52(%ebp)
	movl	-52(%ebp), %esi
	cmpl	%ecx, %eax
	movl	%eax, -56(%ebp)
	sbbl	%ebx, %esi
	jl	L2285
	addl	-60(%ebp), %eax
	movl	%eax, __ZL20midiThreadQueueTimer
	cmpl	%eax, %edx
	jnb	L2263
	.p2align 4
	.p2align 3
L2265:
	movl	__ZL16_MIDI_SongActive.lto_priv.0, %eax
	testl	%eax, %eax
	je	L2264
	call	__Z19MIDI_ServiceRoutinev.part.0
L2264:
	movl	__ZL15midiThreadTimer, %eax
	addl	$1, %eax
	movl	%eax, __ZL15midiThreadTimer
	cmpl	__ZL20midiThreadQueueTimer, %eax
	jb	L2265
L2263:
	call	__ZL25midi_flush_current_bufferv
	movl	__ZL9midiMutex, %eax
	movl	$10, %ebx
	movl	%eax, (%esp)
	call	*__imp__ReleaseMutex@4
	subl	$4, %esp
	jmp	L2240
	.p2align 4,,10
	.p2align 3
L2243:
	movlps	LC141, %xmm2
	leal	-32(%ebp), %eax
	movlps	%xmm2, -32(%ebp)
	movl	$12, 8(%esp)
	movl	%eax, 4(%esp)
	movl	__ZL10midiStream, %eax
	movl	%eax, (%esp)
	call	*__imp__midiStreamPosition@12
	movl	%eax, %edx
	subl	$12, %esp
	movl	-28(%ebp), %eax
	testl	%edx, %edx
	jne	L2286
L2249:
	movl	%eax, __ZL15midiThreadTimer
	movl	%eax, __ZL17midiLastEventTime
	addl	__ZL20midiThreadQueueTicks, %eax
	movl	%eax, __ZL20midiThreadQueueTimer
	jmp	L2240
	.p2align 4,,10
	.p2align 3
L2241:
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
	ret	$4
	.p2align 4,,10
	.p2align 3
L2284:
	.cfi_restore_state
	movl	$LC85, %ebx
	cmpl	$20, %eax
	ja	L2259
	movl	_CSWTCH.183(,%eax,4), %ebx
L2259:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L2287
	.p2align 4
	.p2align 3
L2269:
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	movl	$0, -60(%ebp)
	jmp	L2257
	.p2align 4,,10
	.p2align 3
L2285:
	movl	__ZL9midiMutex, %eax
	movl	$5, %ebx
	movl	%eax, (%esp)
	call	*__imp__ReleaseMutex@4
	subl	$4, %esp
	jmp	L2240
	.p2align 4,,10
	.p2align 3
L2286:
	movl	$LC85, %ecx
	cmpl	$20, %edx
	jbe	L2288
L2247:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %esi
	cmpl	%esi, %eax
	cmovl	%esi, %eax
	cmpl	$-2, %eax
	jge	L2289
	xorl	%eax, %eax
	jmp	L2249
	.p2align 4,,10
	.p2align 3
L2288:
	movl	_CSWTCH.183(,%edx,4), %ecx
	jmp	L2247
L2289:
	movl	%edx, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	$LC142, 16(%esp)
	movl	$LC88, 12(%esp)
	movl	$138, 8(%esp)
	movl	$LC37, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	xorl	%eax, %eax
	jmp	L2249
L2287:
	movl	%eax, 24(%esp)
	movl	%ebx, 20(%esp)
	movl	$LC142, 16(%esp)
	movl	$LC88, 12(%esp)
	movl	$138, 8(%esp)
	movl	$LC37, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2269
	.cfi_endproc
LFE238:
	.p2align 4
	.globl	__Z19SF2Drv_MIDI_Servicev
	.def	__Z19SF2Drv_MIDI_Servicev;	.scl	2;	.type	32;	.endef
__Z19SF2Drv_MIDI_Servicev:
LFB243:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorps	%xmm1, %xmm1
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	andl	$-8, %esp
	subl	$344, %esp
	movl	_MV_MusicBuffer, %esi
	movl	_MV_MIDIRenderTempo, %ecx
	cvtsi2ssl	__ZL10SF2_Volume, %xmm1
	mulss	LC145, %xmm1
	.p2align 4
	.p2align 3
L2291:
	movl	_MV_MIDIRenderTimer, %edx
	movl	_MV_MixRate, %edi
	cmpl	%edi, %edx
	jl	L2295
L2585:
	movss	%xmm1, 248(%esp)
	jmp	L2296
	.p2align 5
	.p2align 4,,10
	.p2align 3
L2292:
	movl	_MV_MIDIRenderTimer, %edx
	movl	_MV_MixRate, %edi
	subl	%edi, %edx
	movl	%edx, _MV_MIDIRenderTimer
	cmpl	%edx, %edi
	jg	L2587
L2296:
	testl	%ecx, %ecx
	js	L2292
L2294:
	movl	__ZL16_MIDI_SongActive.lto_priv.0, %edx
	testl	%edx, %edx
	je	L2589
	call	__Z19MIDI_ServiceRoutinev.part.0
	movl	_MV_MIDIRenderTempo, %ecx
	jmp	L2292
	.p2align 4,,10
	.p2align 3
L2589:
	movl	_MV_MIDIRenderTimer, %edx
	movl	_MV_MixRate, %edi
	subl	%edi, %edx
	movl	%edx, _MV_MIDIRenderTimer
	cmpl	%edx, %edi
	jle	L2294
	.p2align 4
	.p2align 3
L2587:
	movss	248(%esp), %xmm1
L2295:
	movl	$256, %eax
	testl	%ecx, %ecx
	jle	L2435
	subl	%edx, %edi
	leal	-1(%ecx,%edi), %eax
	cltd
	idivl	%ecx
L2435:
	movss	%xmm1, 240(%esp)
	movl	__ZL9sf2_synth, %ecx
	movl	8(%ecx), %edi
	movl	%ecx, 220(%esp)
	movl	$256, %edx
	subl	%ebx, %edx
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	movl	20(%ecx), %eax
	movl	%eax, 248(%esp)
	sall	$8, %eax
	addl	%edi, %eax
	movl	%edx, 48(%esp)
	movl	%eax, 52(%esp)
	xorl	%eax, %eax
	cmpl	$2, 32(%ecx)
	setne	%al
	movl	$0, 4(%esp)
	leal	4(,%eax,4), %eax
	movl	$__ZZ19SF2Drv_MIDI_ServicevE4fbuf, (%esp)
	imull	%edx, %eax
	movl	%eax, 8(%esp)
	call	_memset
	cmpl	52(%esp), %edi
	movss	240(%esp), %xmm1
	je	L2299
	movl	48(%esp), %edx
	movl	%ebx, 24(%esp)
	addl	$64, %edi
	movl	%esi, 20(%esp)
	leal	__ZZ19SF2Drv_MIDI_ServicevE4fbuf(,%edx,4), %eax
	movss	%xmm1, 28(%esp)
	movl	%eax, 32(%esp)
	.p2align 4
	.p2align 3
L2428:
	cmpl	$-1, -64(%edi)
	je	L2300
	movl	220(%esp), %eax
	movl	-52(%edi), %esi
	xorps	%xmm0, %xmm0
	movl	4(%eax), %ebx
	cmpl	$1, 32(%eax)
	movl	$0, %eax
	movl	%esi, 176(%esp)
	cmove	32(%esp), %eax
	movl	132(%esi), %ecx
	movl	%ebx, 256(%esp)
	movl	128(%esi), %ebx
	movl	%eax, 68(%esp)
	movl	%ebx, %eax
	orl	%ecx, %eax
	ucomiss	176(%edi), %xmm0
	movl	%eax, 100(%esp)
	movl	152(%esi), %eax
	movl	%eax, 232(%esp)
	movl	136(%esi), %eax
	movl	%eax, 248(%esp)
	movl	140(%esi), %eax
	movl	%eax, 112(%esp)
	jp	L2464
	movb	$0, 117(%esp)
	je	L2302
L2464:
	movl	248(%esp), %eax
	orl	232(%esp), %eax
	orl	112(%esp), %eax
	setne	117(%esp)
	.p2align 4
	.p2align 3
L2302:
	movl	176(%esp), %eax
	xorps	%xmm0, %xmm0
	ucomiss	188(%edi), %xmm0
	movl	$0, 228(%esp)
	movl	$0, 264(%esp)
	movl	164(%eax), %esi
	movl	$1, %eax
	movl	$0, 268(%esp)
	movl	$0, 272(%esp)
	setp	%dl
	movl	$0, 276(%esp)
	cmove	%edx, %eax
	testl	%esi, %esi
	setne	%dl
	andl	%edx, %eax
	movl	-8(%edi), %edx
	movb	%al, 116(%esp)
	movl	176(%esp), %eax
	movl	%edx, 184(%esp)
	movl	-4(%edi), %edx
	movl	20(%eax), %eax
	movl	%edx, 216(%esp)
	xorl	%edx, %edx
	movl	%eax, 240(%esp)
	movl	104(%edi), %eax
	movl	%edx, 244(%esp)
	fildq	240(%esp)
	movl	216(%esp), %edx
	movl	%eax, 280(%esp)
	movl	108(%edi), %eax
	fstpl	240(%esp)
	movl	%edx, 224(%esp)
	fildq	224(%esp)
	faddl	LC59
	movl	%eax, 284(%esp)
	movl	112(%edi), %eax
	movl	%eax, 288(%esp)
	movl	116(%edi), %eax
	fstpl	208(%esp)
	fldl	-32(%edi)
	movl	%eax, 292(%esp)
	movl	120(%edi), %eax
	fldl	112(%edi)
	movl	%eax, 296(%esp)
	movl	124(%edi), %eax
	movl	%eax, 300(%esp)
	movl	128(%edi), %eax
	fstpl	136(%esp)
	fldl	120(%edi)
	movl	%eax, 304(%esp)
	movl	132(%edi), %eax
	movl	%eax, 308(%esp)
	movl	136(%edi), %eax
	fstpl	152(%esp)
	fldl	128(%edi)
	movl	%eax, 312(%esp)
	movl	140(%edi), %eax
	movl	%eax, 316(%esp)
	movl	144(%edi), %eax
	fstpl	144(%esp)
	fldl	136(%edi)
	movl	%eax, 320(%esp)
	movl	148(%edi), %eax
	movl	%eax, 324(%esp)
	movl	152(%edi), %eax
	fstpl	160(%esp)
	movl	%eax, 328(%esp)
	movl	156(%edi), %eax
	movl	%eax, 332(%esp)
	movl	160(%edi), %eax
	movl	%eax, 336(%esp)
	movl	164(%edi), %eax
	movl	%eax, 340(%esp)
	fldl	144(%edi)
	movzbl	160(%edi), %eax
	movb	%al, 118(%esp)
	movl	220(%esp), %eax
	fstpl	200(%esp)
	fldl	152(%edi)
	movss	40(%eax), %xmm6
	movl	248(%esp), %eax
	orl	%ecx, %eax
	fstpl	192(%esp)
	movss	%xmm6, 120(%esp)
	jne	L2304
	movl	232(%esp), %eax
	testl	%eax, %eax
	jne	L2590
	movl	%ebx, %eax
	orl	%esi, %eax
	jne	L2446
	movl	$0x00000000, 72(%esp)
	movl	$0x00000000, 76(%esp)
	movl	$0x00000000, 80(%esp)
	movb	$0, 97(%esp)
	movb	$0, 98(%esp)
L2308:
	fstpl	248(%esp)
	flds	LC8
	fdivrl	-48(%edi)
	fstpl	8(%esp)
	flds	LC20
	fstpl	(%esp)
	call	_pow
	fmull	-40(%edi)
	movl	112(%esp), %eax
	movb	$0, 99(%esp)
	movl	$0x00000000, 60(%esp)
	movl	$0x00000000, 64(%esp)
	movl	$0x00000000, 56(%esp)
	fstpl	232(%esp)
	fldl	248(%esp)
	testl	%eax, %eax
	je	L2310
L2609:
	xorps	%xmm0, %xmm0
	movl	$0x00000000, 124(%esp)
	cvtsi2ssl	112(%esp), %xmm0
	mulss	LC17, %xmm0
	movss	%xmm0, 84(%esp)
L2311:
	movl	48(%esp), %eax
	movl	216(%esp), %ebx
	movl	$0x00000000, 248(%esp)
	cmpl	%ebx, 184(%esp)
	fstpl	168(%esp)
	movl	$__ZZ19SF2Drv_MIDI_ServicevE4fbuf, %ebx
	movl	%eax, 180(%esp)
	setb	119(%esp)
	.p2align 4
	.p2align 3
L2425:
	movl	180(%esp), %eax
	testl	%eax, %eax
	je	L2591
	movl	_SF2_EffectSampleBlockSize, %eax
	movl	180(%esp), %esi
	cmpl	%eax, %esi
	cmovle	%esi, %eax
	movl	%eax, 224(%esp)
	cmpb	$0, 98(%esp)
	je	L2313
	movss	72(%esp), %xmm1
	mulss	52(%edi), %xmm1
	movss	LC146, %xmm4
	movss	80(%esp), %xmm0
	mulss	172(%edi), %xmm0
	addss	76(%esp), %xmm0
	addss	%xmm1, %xmm0
	comiss	%xmm0, %xmm4
	jnb	L2314
L2315:
	movb	$0, 118(%esp)
L2313:
	cmpb	$0, 99(%esp)
	jne	L2592
L2317:
	movl	112(%esp), %eax
	testl	%eax, %eax
	je	L2318
	movss	84(%esp), %xmm0
	mulss	172(%edi), %xmm0
	addss	-24(%edi), %xmm0
	comiss	LC49, %xmm0
	ja	L2593
	movl	$0x00000000, 124(%esp)
L2318:
	movss	124(%esp), %xmm6
	mulss	(%edi), %xmm6
	movl	%edi, %eax
	movss	120(%esp), %xmm0
	movl	224(%esp), %edx
	movss	%xmm6, 188(%esp)
	call	_tsf_voice_envelope_process
	movl	100(%esp), %eax
	testl	%eax, %eax
	jne	L2594
L2320:
	cmpb	$0, 117(%esp)
	jne	L2595
L2321:
	cmpb	$0, 116(%esp)
	jne	L2596
	movl	220(%esp), %eax
	movl	32(%eax), %eax
	cmpl	$1, %eax
	je	L2323
L2601:
	cmpl	$2, %eax
	je	L2324
	testl	%eax, %eax
	jne	L2330
	movl	224(%esp), %ecx
	testl	%ecx, %ecx
	je	L2330
	movss	188(%esp), %xmm2
	movss	-20(%edi), %xmm7
	mulss	%xmm2, %xmm7
	mulss	-16(%edi), %xmm2
	movss	%xmm7, 188(%esp)
	movss	%xmm2, 128(%esp)
	cmpb	$0, 118(%esp)
	jne	L2597
	movl	216(%esp), %esi
	cmpl	%esi, 184(%esp)
	jb	L2350
	movl	224(%esp), %eax
	movl	%edi, 88(%esp)
	fldl	168(%esp)
	movl	%eax, %edi
	jmp	L2356
	.p2align 4,,10
	.p2align 3
L2599:
	movl	%edx, 272(%esp)
	cmpl	$2, %ecx
	je	L2598
	.p2align 4
	.p2align 3
L2352:
	movss	248(%esp), %xmm0
	fstpl	104(%esp)
	addl	$8, %ebx
	movl	256(%esp), %eax
	leal	264(%esp), %edx
	call	_tsf_voice_interpolate
	movss	188(%esp), %xmm1
	fstps	168(%esp)
	fldl	104(%esp)
	movss	168(%esp), %xmm0
	faddl	232(%esp)
	mulss	%xmm0, %xmm1
	mulss	128(%esp), %xmm0
	addss	-8(%ebx), %xmm1
	movss	%xmm1, -8(%ebx)
	addss	-4(%ebx), %xmm0
	movss	%xmm0, -4(%ebx)
	subl	$1, %edi
	je	L2574
L2356:
	fldl	240(%esp)
	fcomip	%st(1), %st
	jbe	L2574
	fnstcw	262(%esp)
	movl	220(%esp), %esi
	movzwl	262(%esp), %eax
	orb	$12, %ah
	movw	%ax, 260(%esp)
	movl	36(%esi), %ecx
	fld	%st(0)
	fldcw	260(%esp)
	fistpq	168(%esp)
	fldcw	262(%esp)
	movlps	168(%esp), %xmm0
	movss	%xmm0, 168(%esp)
	movl	168(%esp), %eax
	movss	%xmm0, 268(%esp)
	testl	%ecx, %ecx
	je	L2352
	movl	%eax, 248(%esp)
	movl	176(%esp), %esi
	leal	1(%eax), %edx
	movl	$0, 252(%esp)
	fildq	248(%esp)
	movl	20(%esi), %esi
	fsubr	%st(1), %st
	movl	%esi, 168(%esp)
	fstps	248(%esp)
	cmpl	%edx, %esi
	jne	L2599
	movss	%xmm0, 272(%esp)
	cmpl	$2, %ecx
	jne	L2352
	cmpl	$1, %eax
	movl	%eax, %esi
	adcl	$-1, %esi
L2355:
	movl	%esi, 264(%esp)
	movl	%eax, 276(%esp)
	jmp	L2352
	.p2align 4,,10
	.p2align 3
L2579:
	movl	%esi, 68(%esp)
	movl	40(%esp), %edi
	fstpl	168(%esp)
	.p2align 4
	.p2align 3
L2330:
	fldl	240(%esp)
	fldl	168(%esp)
	fcomip	%st(1), %st
	fstp	%st(0)
	jnb	L2424
	movl	224(%esp), %esi
	subl	%esi, 180(%esp)
	cmpw	$7, 12(%edi)
	jne	L2425
L2424:
	movl	$-1, -64(%edi)
L2300:
	leal	192(%edi), %eax
	cmpl	%eax, 52(%esp)
	je	L2600
L2462:
	addl	$256, %edi
	jmp	L2428
	.p2align 4,,10
	.p2align 3
L2596:
	movl	224(%esp), %edx
	leal	180(%edi), %eax
	call	_tsf_voice_lfo_process
	movl	220(%esp), %eax
	movl	32(%eax), %eax
	cmpl	$1, %eax
	jne	L2601
L2323:
	movl	224(%esp), %edx
	testl	%edx, %edx
	je	L2330
	movss	188(%esp), %xmm5
	movss	-20(%edi), %xmm6
	mulss	%xmm5, %xmm6
	mulss	-16(%edi), %xmm5
	movss	%xmm6, 188(%esp)
	movss	%xmm5, 128(%esp)
	cmpb	$0, 118(%esp)
	jne	L2602
	movl	216(%esp), %esi
	cmpl	%esi, 184(%esp)
	jb	L2382
	movl	224(%esp), %eax
	fldl	168(%esp)
	movl	%edi, 40(%esp)
	movl	68(%esp), %esi
	movl	%eax, 88(%esp)
	jmp	L2388
	.p2align 4,,10
	.p2align 3
L2604:
	movl	%eax, 272(%esp)
	cmpl	$2, %ecx
	je	L2603
	.p2align 4
	.p2align 3
L2384:
	movss	248(%esp), %xmm0
	fstpl	104(%esp)
	addl	$4, %ebx
	addl	$4, %esi
	movl	256(%esp), %eax
	leal	264(%esp), %edx
	call	_tsf_voice_interpolate
	subl	$1, 88(%esp)
	movss	188(%esp), %xmm1
	fstps	168(%esp)
	fldl	104(%esp)
	movss	168(%esp), %xmm0
	faddl	232(%esp)
	mulss	%xmm0, %xmm1
	mulss	128(%esp), %xmm0
	addss	-4(%ebx), %xmm1
	movss	%xmm1, -4(%ebx)
	addss	-4(%esi), %xmm0
	movss	%xmm0, -4(%esi)
	je	L2579
L2388:
	fldl	240(%esp)
	fcomip	%st(1), %st
	jbe	L2579
	fnstcw	262(%esp)
	movl	220(%esp), %ecx
	movzwl	262(%esp), %eax
	orb	$12, %ah
	movw	%ax, 260(%esp)
	movl	36(%ecx), %ecx
	fld	%st(0)
	fldcw	260(%esp)
	fistpq	168(%esp)
	fldcw	262(%esp)
	movlps	168(%esp), %xmm0
	movss	%xmm0, 168(%esp)
	movl	168(%esp), %eax
	movss	%xmm0, 268(%esp)
	testl	%ecx, %ecx
	je	L2384
	movl	%eax, 248(%esp)
	movl	176(%esp), %edx
	addl	$1, %eax
	movl	$0, 252(%esp)
	fildq	248(%esp)
	movl	20(%edx), %edx
	fsubr	%st(1), %st
	fstps	248(%esp)
	cmpl	%edx, %eax
	jne	L2604
	movss	%xmm0, 272(%esp)
	cmpl	$2, %ecx
	jne	L2384
	movl	168(%esp), %eax
	cmpl	$1, %eax
	adcl	$-1, %eax
	movl	%eax, 104(%esp)
L2387:
	movl	104(%esp), %eax
	movl	%eax, 264(%esp)
	movl	168(%esp), %eax
	movl	%eax, 276(%esp)
	jmp	L2384
	.p2align 4,,10
	.p2align 3
L2592:
	movss	56(%esp), %xmm0
	movss	64(%esp), %xmm1
	mulss	172(%edi), %xmm0
	mulss	184(%edi), %xmm1
	addss	%xmm1, %xmm0
	movss	60(%esp), %xmm1
	mulss	52(%edi), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, 232(%esp)
	flds	232(%esp)
	faddl	-48(%edi)
	fdivs	LC8
	fstpl	8(%esp)
	flds	LC20
	fstpl	(%esp)
	call	_pow
	fmull	-40(%edi)
	fstpl	232(%esp)
	jmp	L2317
	.p2align 4,,10
	.p2align 3
L2595:
	movl	224(%esp), %edx
	leal	168(%edi), %eax
	call	_tsf_voice_lfo_process
	jmp	L2321
	.p2align 4,,10
	.p2align 3
L2594:
	movss	120(%esp), %xmm0
	movl	224(%esp), %edx
	leal	52(%edi), %eax
	call	_tsf_voice_envelope_process
	jmp	L2320
	.p2align 4,,10
	.p2align 3
L2324:
	movl	224(%esp), %esi
	testl	%esi, %esi
	je	L2330
	cmpb	$0, 118(%esp)
	jne	L2605
	movl	216(%esp), %esi
	cmpl	%esi, 184(%esp)
	movl	224(%esp), %esi
	jb	L2329
	fldl	168(%esp)
	movl	%edi, 104(%esp)
	jmp	L2336
	.p2align 4,,10
	.p2align 3
L2607:
	movl	%eax, 272(%esp)
	cmpl	$2, %ecx
	je	L2606
	.p2align 4
	.p2align 3
L2332:
	movss	248(%esp), %xmm0
	movl	256(%esp), %eax
	addl	$4, %ebx
	fstpl	128(%esp)
	leal	264(%esp), %edx
	call	_tsf_voice_interpolate
	fstps	168(%esp)
	fldl	128(%esp)
	movss	168(%esp), %xmm0
	mulss	188(%esp), %xmm0
	faddl	232(%esp)
	addss	-4(%ebx), %xmm0
	movss	%xmm0, -4(%ebx)
	subl	$1, %esi
	je	L2572
L2336:
	fldl	240(%esp)
	fcomip	%st(1), %st
	jbe	L2572
	fnstcw	262(%esp)
	movzwl	262(%esp), %eax
	orb	$12, %ah
	movw	%ax, 260(%esp)
	movl	220(%esp), %eax
	fld	%st(0)
	fldcw	260(%esp)
	fistpq	168(%esp)
	fldcw	262(%esp)
	movl	36(%eax), %ecx
	movlps	168(%esp), %xmm0
	movss	%xmm0, 168(%esp)
	movl	168(%esp), %edi
	movss	%xmm0, 268(%esp)
	testl	%ecx, %ecx
	je	L2332
	movl	%edi, 248(%esp)
	movl	176(%esp), %edx
	leal	1(%edi), %eax
	movl	$0, 252(%esp)
	fildq	248(%esp)
	movl	20(%edx), %edx
	fsubr	%st(1), %st
	movl	%edx, 168(%esp)
	fstps	248(%esp)
	cmpl	%edx, %eax
	jne	L2607
	movss	%xmm0, 272(%esp)
	cmpl	$2, %ecx
	jne	L2332
	cmpl	$1, %edi
	movl	%edi, %eax
	adcl	$-1, %eax
	movl	%eax, %edx
L2335:
	movl	%edx, 264(%esp)
	movl	%edi, 276(%esp)
	jmp	L2332
	.p2align 4,,10
	.p2align 3
L2593:
	mulss	LC50, %xmm0
	movss	%xmm0, 188(%esp)
	flds	188(%esp)
	fstpl	8(%esp)
	flds	LC48
	fstpl	(%esp)
	call	_pow
	fstps	124(%esp)
	jmp	L2318
	.p2align 4,,10
	.p2align 3
L2314:
	divss	LC8, %xmm0
	movss	%xmm0, 188(%esp)
	flds	188(%esp)
	fstpl	8(%esp)
	flds	LC20
	fstpl	(%esp)
	call	_pow
	movss	LC66, %xmm1
	fstps	188(%esp)
	movss	188(%esp), %xmm0
	mulss	LC65, %xmm0
	divss	120(%esp), %xmm0
	comiss	%xmm0, %xmm1
	jbe	L2315
	leal	280(%esp), %eax
	call	_tsf_voice_lowpass_setup
	fldl	288(%esp)
	movb	$1, 118(%esp)
	fstpl	136(%esp)
	fldl	296(%esp)
	fstpl	152(%esp)
	fldl	304(%esp)
	fstpl	144(%esp)
	fldl	312(%esp)
	fstpl	160(%esp)
	jmp	L2313
	.p2align 4,,10
	.p2align 3
L2574:
	movl	88(%esp), %edi
	fstpl	168(%esp)
	jmp	L2330
	.p2align 4,,10
	.p2align 3
L2304:
	movl	176(%esp), %eax
	xorps	%xmm7, %xmm7
	xorps	%xmm6, %xmm6
	cvtsi2ssl	248(%esp), %xmm6
	cvtsi2ssl	124(%eax), %xmm7
	movl	232(%esp), %eax
	movss	%xmm6, 80(%esp)
	movss	%xmm7, 76(%esp)
	xorps	%xmm7, %xmm7
	cvtsi2ssl	%ecx, %xmm7
	movss	%xmm7, 72(%esp)
	testl	%eax, %eax
	jne	L2608
	movl	%ebx, %eax
	orl	%esi, %eax
	je	L2447
	movl	$0x00000000, 56(%esp)
	movb	$1, 97(%esp)
	movb	$1, 98(%esp)
	.p2align 4
	.p2align 3
L2306:
	xorps	%xmm3, %xmm3
	xorps	%xmm4, %xmm4
	movl	112(%esp), %eax
	movb	$1, 99(%esp)
	movl	$0, 232(%esp)
	cvtsi2ssl	%esi, %xmm3
	movl	$0, 236(%esp)
	cvtsi2ssl	%ebx, %xmm4
	movss	%xmm3, 64(%esp)
	movss	%xmm4, 60(%esp)
	testl	%eax, %eax
	jne	L2609
L2310:
	movss	-24(%edi), %xmm0
	comiss	LC49, %xmm0
	ja	L2610
	movl	$0x00000000, 84(%esp)
	movl	$0x00000000, 124(%esp)
	jmp	L2311
	.p2align 4,,10
	.p2align 3
L2350:
	movl	216(%esp), %eax
	subl	184(%esp), %eax
	movl	%edi, 40(%esp)
	movl	%eax, 88(%esp)
	fldl	168(%esp)
	movl	$0, 92(%esp)
	movl	224(%esp), %esi
	movl	220(%esp), %edi
	jmp	L2367
	.p2align 4,,10
	.p2align 3
L2359:
	leal	1(%eax), %edx
	movl	%edx, 272(%esp)
	cmpl	$2, %ecx
	je	L2611
	.p2align 4
	.p2align 3
L2358:
	movss	248(%esp), %xmm0
	fstpl	104(%esp)
	addl	$8, %ebx
	movl	256(%esp), %eax
	leal	264(%esp), %edx
	call	_tsf_voice_interpolate
	movss	188(%esp), %xmm1
	fstps	168(%esp)
	fldl	104(%esp)
	movss	168(%esp), %xmm0
	faddl	232(%esp)
	mulss	%xmm0, %xmm1
	fldl	208(%esp)
	fxch	%st(1)
	mulss	128(%esp), %xmm0
	addss	-8(%ebx), %xmm1
	movss	%xmm1, -8(%ebx)
	fcomi	%st(1), %st
	fstp	%st(1)
	addss	-4(%ebx), %xmm0
	movss	%xmm0, -4(%ebx)
	jnb	L2612
	subl	$1, %esi
	je	L2583
L2367:
	fldl	240(%esp)
	fcomip	%st(1), %st
	jbe	L2583
	fnstcw	262(%esp)
	movzwl	262(%esp), %eax
	orb	$12, %ah
	movw	%ax, 260(%esp)
	movl	36(%edi), %ecx
	fld	%st(0)
	fldcw	260(%esp)
	fistpq	168(%esp)
	fldcw	262(%esp)
	movlps	168(%esp), %xmm0
	movss	%xmm0, 168(%esp)
	movl	168(%esp), %eax
	movss	%xmm0, 268(%esp)
	testl	%ecx, %ecx
	je	L2358
	movl	%eax, 248(%esp)
	movl	$0, 252(%esp)
	fildq	248(%esp)
	fsubr	%st(1), %st
	fstps	248(%esp)
	cmpl	216(%esp), %eax
	jb	L2359
	movl	184(%esp), %edx
	movl	%edx, 272(%esp)
	cmpl	$2, %ecx
	jne	L2358
	movl	184(%esp), %edx
L2363:
	cmpl	$1, %eax
	adcl	$-1, %eax
L2364:
	movl	%eax, 264(%esp)
	leal	1(%edx), %eax
	cmpl	216(%esp), %edx
	movl	%eax, 168(%esp)
	movl	168(%esp), %eax
	cmovnb	184(%esp), %eax
	movl	%eax, 276(%esp)
	jmp	L2358
	.p2align 4,,10
	.p2align 3
L2612:
	fildq	88(%esp)
	faddl	LC59
	fsubrp	%st, %st(1)
	subl	$1, %esi
	jne	L2367
	.p2align 4
	.p2align 3
L2583:
	movl	40(%esp), %edi
	fstpl	168(%esp)
	jmp	L2330
	.p2align 4,,10
	.p2align 3
L2382:
	movl	224(%esp), %ecx
	movl	216(%esp), %eax
	movl	%edi, 40(%esp)
	subl	184(%esp), %eax
	movl	68(%esp), %esi
	movl	$0, 92(%esp)
	movl	%eax, 88(%esp)
	fldl	168(%esp)
	movl	%ecx, %edi
	jmp	L2399
	.p2align 4,,10
	.p2align 3
L2391:
	leal	1(%eax), %edx
	movl	%edx, 272(%esp)
	cmpl	$2, %ecx
	je	L2613
	.p2align 4
	.p2align 3
L2390:
	movss	248(%esp), %xmm0
	fstpl	104(%esp)
	addl	$4, %ebx
	addl	$4, %esi
	movl	256(%esp), %eax
	leal	264(%esp), %edx
	call	_tsf_voice_interpolate
	movss	188(%esp), %xmm1
	fstps	168(%esp)
	fldl	104(%esp)
	movss	168(%esp), %xmm0
	faddl	232(%esp)
	mulss	%xmm0, %xmm1
	fldl	208(%esp)
	fxch	%st(1)
	mulss	128(%esp), %xmm0
	addss	-4(%ebx), %xmm1
	movss	%xmm1, -4(%ebx)
	fcomi	%st(1), %st
	fstp	%st(1)
	addss	-4(%esi), %xmm0
	movss	%xmm0, -4(%esi)
	jnb	L2614
L2397:
	subl	$1, %edi
	je	L2579
L2399:
	fldl	240(%esp)
	fcomip	%st(1), %st
	jbe	L2579
	fnstcw	262(%esp)
	movl	220(%esp), %ecx
	movzwl	262(%esp), %eax
	orb	$12, %ah
	movw	%ax, 260(%esp)
	movl	36(%ecx), %ecx
	fld	%st(0)
	fldcw	260(%esp)
	fistpq	168(%esp)
	fldcw	262(%esp)
	movlps	168(%esp), %xmm0
	movss	%xmm0, 168(%esp)
	movl	168(%esp), %eax
	movss	%xmm0, 268(%esp)
	testl	%ecx, %ecx
	je	L2390
	movl	%eax, 248(%esp)
	movl	$0, 252(%esp)
	fildq	248(%esp)
	fsubr	%st(1), %st
	fstps	248(%esp)
	cmpl	216(%esp), %eax
	jb	L2391
	movl	184(%esp), %edx
	movl	%edx, 272(%esp)
	cmpl	$2, %ecx
	jne	L2390
	movl	184(%esp), %edx
L2395:
	cmpl	$1, %eax
	adcl	$-1, %eax
L2396:
	movl	%eax, 264(%esp)
	leal	1(%edx), %eax
	cmpl	216(%esp), %edx
	movl	%eax, 168(%esp)
	movl	168(%esp), %eax
	cmovnb	184(%esp), %eax
	movl	%eax, 276(%esp)
	jmp	L2390
	.p2align 4,,10
	.p2align 3
L2614:
	fildq	88(%esp)
	faddl	LC59
	fsubrp	%st, %st(1)
	jmp	L2397
	.p2align 4,,10
	.p2align 3
L2572:
	movl	104(%esp), %edi
	fstpl	168(%esp)
	jmp	L2330
	.p2align 4,,10
	.p2align 3
L2329:
	movl	216(%esp), %eax
	subl	184(%esp), %eax
	movl	%edi, 88(%esp)
	movl	%eax, 104(%esp)
	fldl	168(%esp)
	movl	$0, 108(%esp)
	movl	220(%esp), %edi
	jmp	L2347
	.p2align 4,,10
	.p2align 3
L2339:
	leal	1(%eax), %edx
	movl	%edx, 272(%esp)
	cmpl	$2, %ecx
	je	L2615
	.p2align 4
	.p2align 3
L2338:
	movss	248(%esp), %xmm0
	movl	256(%esp), %eax
	addl	$4, %ebx
	fstpl	128(%esp)
	leal	264(%esp), %edx
	call	_tsf_voice_interpolate
	fstps	168(%esp)
	fldl	128(%esp)
	faddl	232(%esp)
	movss	168(%esp), %xmm0
	fldl	208(%esp)
	fxch	%st(1)
	mulss	188(%esp), %xmm0
	addss	-4(%ebx), %xmm0
	fcomi	%st(1), %st
	fstp	%st(1)
	movss	%xmm0, -4(%ebx)
	jnb	L2616
L2345:
	subl	$1, %esi
	je	L2574
L2347:
	fldl	240(%esp)
	fcomip	%st(1), %st
	jbe	L2574
	fnstcw	262(%esp)
	movzwl	262(%esp), %eax
	orb	$12, %ah
	movw	%ax, 260(%esp)
	movl	36(%edi), %ecx
	fld	%st(0)
	fldcw	260(%esp)
	fistpq	168(%esp)
	fldcw	262(%esp)
	movlps	168(%esp), %xmm0
	movss	%xmm0, 168(%esp)
	movl	168(%esp), %eax
	movss	%xmm0, 268(%esp)
	testl	%ecx, %ecx
	je	L2338
	movl	%eax, 248(%esp)
	movl	$0, 252(%esp)
	fildq	248(%esp)
	fsubr	%st(1), %st
	fstps	248(%esp)
	cmpl	216(%esp), %eax
	jb	L2339
	movl	184(%esp), %edx
	movl	%edx, 272(%esp)
	cmpl	$2, %ecx
	jne	L2338
	movl	184(%esp), %edx
L2343:
	cmpl	$1, %eax
	adcl	$-1, %eax
L2344:
	movl	%eax, 264(%esp)
	leal	1(%edx), %eax
	cmpl	216(%esp), %edx
	movl	%eax, 168(%esp)
	movl	168(%esp), %eax
	cmovnb	184(%esp), %eax
	movl	%eax, 276(%esp)
	jmp	L2338
	.p2align 4,,10
	.p2align 3
L2616:
	fildq	104(%esp)
	faddl	LC59
	fsubrp	%st, %st(1)
	jmp	L2345
	.p2align 4,,10
	.p2align 3
L2602:
	movl	224(%esp), %ecx
	movl	216(%esp), %eax
	movl	%edi, 36(%esp)
	subl	184(%esp), %eax
	movl	68(%esp), %esi
	movl	$0, 44(%esp)
	movl	%eax, 40(%esp)
	fldl	168(%esp)
	movl	%ecx, 88(%esp)
	jmp	L2381
	.p2align 4,,10
	.p2align 3
L2618:
	cmpl	%eax, %edx
	jb	L2401
	movl	%edi, 272(%esp)
	cmpl	$2, %ecx
	je	L2617
	.p2align 4
	.p2align 3
L2407:
	movss	248(%esp), %xmm0
	fstpl	104(%esp)
	addl	$4, %ebx
	addl	$4, %esi
	movl	256(%esp), %eax
	leal	264(%esp), %edx
	call	_tsf_voice_interpolate
	fldl	136(%esp)
	movss	188(%esp), %xmm1
	fmul	%st(1), %st
	fldl	200(%esp)
	fadd	%st(1), %st
	fldl	152(%esp)
	fmulp	%st, %st(3)
	fxch	%st(2)
	faddl	192(%esp)
	fldl	144(%esp)
	fmul	%st(3), %st
	fsubrp	%st, %st(1)
	fstpl	200(%esp)
	fldl	160(%esp)
	fmul	%st(2), %st
	fsubrp	%st, %st(1)
	fstpl	192(%esp)
	fstps	168(%esp)
	fldl	104(%esp)
	movss	168(%esp), %xmm0
	faddl	232(%esp)
	mulss	%xmm0, %xmm1
	fldl	208(%esp)
	fxch	%st(1)
	mulss	128(%esp), %xmm0
	addss	-4(%ebx), %xmm1
	movss	%xmm1, -4(%ebx)
	fcomi	%st(1), %st
	fstp	%st(1)
	addss	-4(%esi), %xmm0
	movss	%xmm0, -4(%esi)
	jb	L2409
	cmpb	$0, 119(%esp)
	je	L2409
	fildq	40(%esp)
	faddl	LC59
	fsubrp	%st, %st(1)
L2409:
	subl	$1, 88(%esp)
	je	L2581
L2381:
	fldl	240(%esp)
	fcomip	%st(1), %st
	jbe	L2581
	fnstcw	262(%esp)
	movzwl	262(%esp), %eax
	orb	$12, %ah
	movw	%ax, 260(%esp)
	movl	220(%esp), %eax
	fld	%st(0)
	fldcw	260(%esp)
	fistpq	168(%esp)
	fldcw	262(%esp)
	movl	36(%eax), %ecx
	movlps	168(%esp), %xmm0
	movss	%xmm0, 168(%esp)
	movl	168(%esp), %edx
	movss	%xmm0, 268(%esp)
	testl	%ecx, %ecx
	je	L2407
	movl	%edx, 248(%esp)
	movl	184(%esp), %edi
	movl	$0, 252(%esp)
	fildq	248(%esp)
	movl	216(%esp), %eax
	fsubr	%st(1), %st
	fstps	248(%esp)
	cmpl	%eax, %edi
	jb	L2618
	movl	176(%esp), %edi
	leal	1(%edx), %eax
	movl	20(%edi), %edi
	movl	%edi, 104(%esp)
	cmpl	%edi, %eax
	je	L2405
	movl	%eax, 272(%esp)
	cmpl	$2, %ecx
	jne	L2407
	cmpl	$1, %edx
	movl	%edx, %edi
	adcl	$-1, %edi
	addl	$2, %edx
	cmpl	%edx, 104(%esp)
	movl	%edi, 168(%esp)
	cmove	%eax, %edx
L2408:
	movl	168(%esp), %eax
	movl	%edx, 276(%esp)
	movl	%eax, 264(%esp)
	jmp	L2407
	.p2align 4,,10
	.p2align 3
L2401:
	leal	1(%edx), %eax
	movl	%eax, 272(%esp)
	cmpl	$2, %ecx
	jne	L2407
	cmpl	%edx, 184(%esp)
	je	L2619
L2402:
	cmpl	$1, %edx
	adcl	$-1, %edx
	movl	%edx, 168(%esp)
L2404:
	leal	1(%eax), %edx
	cmpl	216(%esp), %eax
	cmovnb	184(%esp), %edx
	jmp	L2408
	.p2align 4,,10
	.p2align 3
L2581:
	movl	%esi, 68(%esp)
	movl	36(%esp), %edi
	fstpl	168(%esp)
	jmp	L2330
	.p2align 4,,10
	.p2align 3
L2605:
	movl	224(%esp), %esi
	movl	216(%esp), %eax
	movl	%edi, 40(%esp)
	subl	184(%esp), %eax
	movl	$0, 92(%esp)
	movl	%eax, 88(%esp)
	fldl	168(%esp)
	movl	%esi, 104(%esp)
	movl	220(%esp), %edi
	jmp	L2328
	.p2align 4,,10
	.p2align 3
L2621:
	cmpl	%edx, %eax
	jb	L2413
	movl	%esi, 272(%esp)
	cmpl	$2, %ecx
	je	L2620
	.p2align 4
	.p2align 3
L2419:
	movss	248(%esp), %xmm0
	movl	256(%esp), %eax
	addl	$4, %ebx
	fstpl	128(%esp)
	leal	264(%esp), %edx
	call	_tsf_voice_interpolate
	fldl	136(%esp)
	fmul	%st(1), %st
	fldl	200(%esp)
	fadd	%st(1), %st
	fldl	152(%esp)
	fmulp	%st, %st(3)
	fxch	%st(2)
	faddl	192(%esp)
	fldl	144(%esp)
	fmul	%st(3), %st
	fsubrp	%st, %st(1)
	fstpl	200(%esp)
	fldl	160(%esp)
	fmul	%st(2), %st
	fsubrp	%st, %st(1)
	fstpl	192(%esp)
	fstps	168(%esp)
	fldl	128(%esp)
	faddl	232(%esp)
	movss	168(%esp), %xmm0
	fldl	208(%esp)
	fxch	%st(1)
	mulss	188(%esp), %xmm0
	addss	-4(%ebx), %xmm0
	fcomi	%st(1), %st
	fstp	%st(1)
	movss	%xmm0, -4(%ebx)
	jb	L2421
	cmpb	$0, 119(%esp)
	je	L2421
	fildq	88(%esp)
	faddl	LC59
	fsubrp	%st, %st(1)
L2421:
	subl	$1, 104(%esp)
	je	L2583
L2328:
	fldl	240(%esp)
	fcomip	%st(1), %st
	jbe	L2583
	fnstcw	262(%esp)
	movzwl	262(%esp), %eax
	orb	$12, %ah
	movw	%ax, 260(%esp)
	movl	36(%edi), %ecx
	fld	%st(0)
	fldcw	260(%esp)
	fistpq	168(%esp)
	fldcw	262(%esp)
	movlps	168(%esp), %xmm0
	movss	%xmm0, 168(%esp)
	movl	168(%esp), %eax
	movss	%xmm0, 268(%esp)
	testl	%ecx, %ecx
	je	L2419
	movl	%eax, 248(%esp)
	movl	184(%esp), %esi
	movl	$0, 252(%esp)
	fildq	248(%esp)
	movl	216(%esp), %edx
	fsubr	%st(1), %st
	fstps	248(%esp)
	cmpl	%edx, %esi
	jb	L2621
	movl	176(%esp), %esi
	leal	1(%eax), %edx
	movl	20(%esi), %esi
	movl	%esi, 128(%esp)
	cmpl	%esi, %edx
	je	L2417
	movl	%edx, 272(%esp)
	cmpl	$2, %ecx
	jne	L2419
	cmpl	$1, %eax
	movl	%eax, %esi
	adcl	$-1, %esi
	addl	$2, %eax
	cmpl	%eax, 128(%esp)
	movl	%esi, 168(%esp)
	cmove	%edx, %eax
L2420:
	movl	168(%esp), %esi
	movl	%eax, 276(%esp)
	movl	%esi, 264(%esp)
	jmp	L2419
	.p2align 4,,10
	.p2align 3
L2413:
	leal	1(%eax), %edx
	movl	%edx, 272(%esp)
	cmpl	$2, %ecx
	jne	L2419
	cmpl	%eax, 184(%esp)
	je	L2622
L2414:
	cmpl	$1, %eax
	adcl	$-1, %eax
	movl	%eax, 168(%esp)
L2416:
	leal	1(%edx), %eax
	cmpl	216(%esp), %edx
	cmovnb	184(%esp), %eax
	jmp	L2420
	.p2align 4,,10
	.p2align 3
L2597:
	movl	224(%esp), %esi
	movl	216(%esp), %eax
	movl	%edi, 36(%esp)
	subl	184(%esp), %eax
	movl	$0, 44(%esp)
	movl	%eax, 40(%esp)
	fldl	168(%esp)
	movl	%esi, 88(%esp)
	movl	220(%esp), %edi
	jmp	L2349
	.p2align 4,,10
	.p2align 3
L2624:
	cmpl	%edx, %eax
	jb	L2369
	movl	%esi, 272(%esp)
	cmpl	$2, %ecx
	je	L2623
	.p2align 4
	.p2align 3
L2375:
	movss	248(%esp), %xmm0
	fstpl	104(%esp)
	addl	$8, %ebx
	movl	256(%esp), %eax
	leal	264(%esp), %edx
	call	_tsf_voice_interpolate
	fldl	136(%esp)
	movss	188(%esp), %xmm1
	fmul	%st(1), %st
	fldl	200(%esp)
	fadd	%st(1), %st
	fldl	152(%esp)
	fmulp	%st, %st(3)
	fxch	%st(2)
	faddl	192(%esp)
	fldl	144(%esp)
	fmul	%st(3), %st
	fsubrp	%st, %st(1)
	fstpl	200(%esp)
	fldl	160(%esp)
	fmul	%st(2), %st
	fsubrp	%st, %st(1)
	fstpl	192(%esp)
	fstps	168(%esp)
	fldl	104(%esp)
	movss	168(%esp), %xmm0
	faddl	232(%esp)
	mulss	%xmm0, %xmm1
	fldl	208(%esp)
	fxch	%st(1)
	mulss	128(%esp), %xmm0
	addss	-8(%ebx), %xmm1
	movss	%xmm1, -8(%ebx)
	fcomi	%st(1), %st
	fstp	%st(1)
	addss	-4(%ebx), %xmm0
	movss	%xmm0, -4(%ebx)
	jb	L2377
	cmpb	$0, 119(%esp)
	je	L2377
	fildq	40(%esp)
	faddl	LC59
	fsubrp	%st, %st(1)
L2377:
	subl	$1, 88(%esp)
	je	L2577
L2349:
	fldl	240(%esp)
	fcomip	%st(1), %st
	jbe	L2577
	fnstcw	262(%esp)
	movzwl	262(%esp), %eax
	orb	$12, %ah
	movw	%ax, 260(%esp)
	movl	36(%edi), %ecx
	fld	%st(0)
	fldcw	260(%esp)
	fistpq	168(%esp)
	fldcw	262(%esp)
	movlps	168(%esp), %xmm0
	movss	%xmm0, 168(%esp)
	movl	168(%esp), %eax
	movss	%xmm0, 268(%esp)
	testl	%ecx, %ecx
	je	L2375
	movl	%eax, 248(%esp)
	movl	184(%esp), %esi
	movl	$0, 252(%esp)
	fildq	248(%esp)
	movl	216(%esp), %edx
	fsubr	%st(1), %st
	fstps	248(%esp)
	cmpl	%edx, %esi
	jb	L2624
	movl	176(%esp), %esi
	leal	1(%eax), %edx
	movl	20(%esi), %esi
	movl	%esi, 104(%esp)
	cmpl	%esi, %edx
	je	L2373
	movl	%edx, 272(%esp)
	cmpl	$2, %ecx
	jne	L2375
	cmpl	$1, %eax
	movl	%eax, %esi
	adcl	$-1, %esi
	addl	$2, %eax
	cmpl	%eax, 104(%esp)
	movl	%esi, 168(%esp)
	cmove	%edx, %eax
L2376:
	movl	168(%esp), %esi
	movl	%eax, 276(%esp)
	movl	%esi, 264(%esp)
	jmp	L2375
	.p2align 4,,10
	.p2align 3
L2369:
	leal	1(%eax), %edx
	movl	%edx, 272(%esp)
	cmpl	$2, %ecx
	jne	L2375
	cmpl	%eax, 184(%esp)
	je	L2625
L2370:
	cmpl	$1, %eax
	adcl	$-1, %eax
	movl	%eax, 168(%esp)
L2372:
	leal	1(%edx), %eax
	cmpl	216(%esp), %edx
	cmovnb	184(%esp), %eax
	jmp	L2376
	.p2align 4,,10
	.p2align 3
L2577:
	movl	36(%esp), %edi
	fstpl	168(%esp)
	jmp	L2330
	.p2align 4,,10
	.p2align 3
L2373:
	movss	%xmm0, 272(%esp)
	cmpl	$2, %ecx
	jne	L2375
	cmpl	$1, %eax
	movl	%eax, %esi
	adcl	$-1, %esi
	movl	%esi, 168(%esp)
	jmp	L2376
	.p2align 4,,10
	.p2align 3
L2417:
	movss	%xmm0, 272(%esp)
	cmpl	$2, %ecx
	jne	L2419
	cmpl	$1, %eax
	movl	%eax, %esi
	adcl	$-1, %esi
	movl	%esi, 168(%esp)
	jmp	L2420
	.p2align 4,,10
	.p2align 3
L2405:
	movss	%xmm0, 272(%esp)
	cmpl	$2, %ecx
	jne	L2407
	cmpl	$1, %edx
	movl	%edx, %eax
	adcl	$-1, %eax
	movl	%eax, 168(%esp)
	jmp	L2408
	.p2align 4,,10
	.p2align 3
L2608:
	xorps	%xmm6, %xmm6
	movb	$1, 97(%esp)
	cvtsi2ssl	232(%esp), %xmm6
	movb	$1, 98(%esp)
	movss	%xmm6, 56(%esp)
	jmp	L2306
	.p2align 4,,10
	.p2align 3
L2606:
	cmpl	$1, %edi
	movl	%edi, %edx
	adcl	$-1, %edx
	addl	$2, %edi
	cmpl	%edi, 168(%esp)
	cmove	%eax, %edi
	jmp	L2335
	.p2align 4,,10
	.p2align 3
L2603:
	movl	168(%esp), %edi
	cmpl	$1, %edi
	adcl	$-1, %edi
	addl	$2, 168(%esp)
	movl	%edi, 104(%esp)
	movl	168(%esp), %edi
	cmpl	%edi, %edx
	cmovne	%edi, %eax
	movl	%eax, 168(%esp)
	jmp	L2387
	.p2align 4,,10
	.p2align 3
L2598:
	cmpl	$1, %eax
	movl	%eax, %esi
	adcl	$-1, %esi
	addl	$2, %eax
	cmpl	%eax, 168(%esp)
	cmove	%edx, %eax
	jmp	L2355
	.p2align 4,,10
	.p2align 3
L2591:
	fldl	168(%esp)
	movzbl	97(%esp), %edx
	movzbl	118(%esp), %eax
	orb	%al, %dl
	fstpl	-32(%edi)
	je	L2300
	movb	%al, 336(%esp)
	movl	280(%esp), %eax
	fldl	136(%esp)
	movl	%eax, 104(%edi)
	movl	284(%esp), %eax
	fstpl	288(%esp)
	fldl	152(%esp)
	movl	%eax, 108(%edi)
	movl	288(%esp), %eax
	movl	%eax, 112(%edi)
	movl	292(%esp), %eax
	fstpl	296(%esp)
	fldl	144(%esp)
	movl	%eax, 116(%edi)
	movl	296(%esp), %eax
	movl	%eax, 120(%edi)
	movl	300(%esp), %eax
	fstpl	304(%esp)
	fldl	160(%esp)
	movl	%eax, 124(%edi)
	movl	304(%esp), %eax
	fstpl	312(%esp)
	fldl	200(%esp)
	movl	%eax, 128(%edi)
	movl	308(%esp), %eax
	movl	%eax, 132(%edi)
	movl	312(%esp), %eax
	fstpl	320(%esp)
	fldl	192(%esp)
	movl	%eax, 136(%edi)
	movl	316(%esp), %eax
	fstpl	328(%esp)
	movl	%eax, 140(%edi)
	movl	320(%esp), %eax
	movl	%eax, 144(%edi)
	movl	324(%esp), %eax
	movl	%eax, 148(%edi)
	movl	328(%esp), %eax
	movl	%eax, 152(%edi)
	movl	332(%esp), %eax
	movl	%eax, 156(%edi)
	movl	336(%esp), %eax
	movl	%eax, 160(%edi)
	movl	340(%esp), %eax
	movl	%eax, 164(%edi)
	leal	192(%edi), %eax
	cmpl	%eax, 52(%esp)
	jne	L2462
	.p2align 4
	.p2align 3
L2600:
	movss	28(%esp), %xmm1
	movl	24(%esp), %ebx
	movl	20(%esp), %esi
L2299:
	movl	48(%esp), %ecx
	imull	_MV_Channels, %ecx
	testl	%ecx, %ecx
	jle	L2429
	movss	LC147, %xmm4
	xorl	%eax, %eax
	movss	LC78, %xmm3
	.p2align 6
	.p2align 4
	.p2align 3
L2431:
	movss	__ZZ19SF2Drv_MIDI_ServicevE4fbuf(,%eax,4), %xmm2
	movl	$-32768, %edx
	mulss	%xmm1, %xmm2
	comiss	%xmm2, %xmm4
	jnb	L2430
	movaps	%xmm3, %xmm0
	movaps	%xmm3, %xmm5
	cmpless	%xmm2, %xmm0
	andps	%xmm0, %xmm5
	andnps	%xmm2, %xmm0
	orps	%xmm5, %xmm0
	cvttss2sil	%xmm0, %edx
L2430:
	movw	%dx, (%esi,%eax,2)
	addl	$1, %eax
	cmpl	%eax, %ecx
	jne	L2431
	leal	(%esi,%ecx,2), %esi
L2429:
	movl	_MV_MIDIRenderTempo, %ecx
	testl	%ecx, %ecx
	js	L2626
	movl	48(%esp), %edi
	movl	%edi, %eax
	addl	%edi, %ebx
	imull	%ecx, %eax
	addl	%eax, _MV_MIDIRenderTimer
	cmpl	$255, %ebx
	jle	L2291
L2570:
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
L2611:
	.cfi_restore_state
	cmpl	%eax, 184(%esp)
	jne	L2363
	movl	216(%esp), %eax
	jmp	L2364
	.p2align 4,,10
	.p2align 3
L2615:
	cmpl	%eax, 184(%esp)
	jne	L2343
	movl	216(%esp), %eax
	jmp	L2344
	.p2align 4,,10
	.p2align 3
L2613:
	cmpl	%eax, 184(%esp)
	jne	L2395
	movl	216(%esp), %eax
	jmp	L2396
	.p2align 4,,10
	.p2align 3
L2620:
	movl	184(%esp), %edx
	jmp	L2414
	.p2align 4,,10
	.p2align 3
L2623:
	movl	184(%esp), %edx
	jmp	L2370
	.p2align 4,,10
	.p2align 3
L2617:
	movl	184(%esp), %eax
	jmp	L2402
	.p2align 4,,10
	.p2align 3
L2610:
	mulss	LC50, %xmm0
	fstpl	224(%esp)
	movss	%xmm0, 248(%esp)
	flds	248(%esp)
	fstpl	8(%esp)
	flds	LC48
	fstpl	(%esp)
	call	_pow
	movl	$0x00000000, 84(%esp)
	fstps	124(%esp)
	fldl	224(%esp)
	jmp	L2311
	.p2align 4,,10
	.p2align 3
L2590:
	xorps	%xmm2, %xmm2
	movb	$0, 97(%esp)
	cvtsi2ssl	232(%esp), %xmm2
	movb	$0, 98(%esp)
	movss	%xmm0, 72(%esp)
	movss	%xmm0, 76(%esp)
	movss	%xmm0, 80(%esp)
	movss	%xmm2, 56(%esp)
	jmp	L2306
	.p2align 4,,10
	.p2align 3
L2626:
	addl	48(%esp), %ebx
	cmpl	$255, %ebx
	jg	L2570
	movl	_MV_MixRate, %edi
	movl	$256, %eax
	cmpl	%edi, _MV_MIDIRenderTimer
	jge	L2585
	jmp	L2435
L2447:
	movb	$1, 97(%esp)
	movb	$1, 98(%esp)
	jmp	L2308
L2622:
	movl	216(%esp), %eax
	movl	%eax, 168(%esp)
	jmp	L2416
L2619:
	movl	216(%esp), %edi
	movl	%edi, 168(%esp)
	jmp	L2404
L2625:
	movl	216(%esp), %eax
	movl	%eax, 168(%esp)
	jmp	L2372
L2446:
	movl	$0x00000000, 56(%esp)
	movl	$0x00000000, 72(%esp)
	movl	$0x00000000, 76(%esp)
	movl	$0x00000000, 80(%esp)
	movb	$0, 97(%esp)
	movb	$0, 98(%esp)
	jmp	L2306
	.cfi_endproc
LFE243:
	.p2align 4
	.globl	__Z21WinMMDrv_MIDI_Servicev
	.def	__Z21WinMMDrv_MIDI_Servicev;	.scl	2;	.type	32;	.endef
__Z21WinMMDrv_MIDI_Servicev:
LFB249:
	.cfi_startproc
	movl	__ZL16_MIDI_SongActive.lto_priv.0, %eax
	testl	%eax, %eax
	je	L2627
	jmp	__Z19MIDI_ServiceRoutinev.part.0
	.p2align 4,,10
	.p2align 3
L2627:
	ret
	.cfi_endproc
LFE249:
	.p2align 4
	.globl	__Z13MIDI_StopSongv.part.0
	.def	__Z13MIDI_StopSongv.part.0;	.scl	2;	.type	32;	.endef
__Z13MIDI_StopSongv.part.0:
LFB250:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	_ASS_MIDISoundDriver, %eax
	leal	(%eax,%eax,8), %eax
	call	*__ZL12SoundDrivers.lto_priv.0+52(,%eax,8)
	movl	$0, __ZL16_MIDI_SongActive.lto_priv.0
	movl	$0, __ZL16_MIDI_SongLoaded.lto_priv.0
	call	__Z10MIDI_Resetv.isra.0
	call	__ZL17_MIDI_ResetTracksv
	movl	__ZL14_MIDI_TrackPtr, %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 4
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	$0, __ZL14_MIDI_TrackPtr
	movl	$0, __ZL15_MIDI_NumTracks
	movl	$0, __ZL15_MIDI_TotalTime
	movl	$0, __ZL16_MIDI_TotalTicks
	movl	$0, __ZL16_MIDI_TotalBeats
	movl	$0, __ZL19_MIDI_TotalMeasures
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE250:
	.p2align 4
	.globl	__Z13MIDI_PlaySongPci.part.0
	.def	__Z13MIDI_PlaySongPci.part.0;	.scl	2;	.type	32;	.endef
__Z13MIDI_PlaySongPci.part.0:
LFB252:
	.cfi_startproc
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, __ZL13_MIDI_SongPtr
	movl	%ebx, 24(%esp)
	movl	%ebp, 36(%esp)
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	movl	%eax, %ebp
	leal	4(%eax), %eax
	movl	%esi, 28(%esp)
	leal	8(%ebp), %ecx
	.cfi_offset 6, -16
	xorl	%esi, %esi
L2632:
	movzbl	(%eax), %ebx
	sall	$8, %esi
	addl	$1, %eax
	addl	%ebx, %esi
	cmpl	%ecx, %eax
	jne	L2632
	movzwl	8(%ebp), %eax
	rolw	$8, %ax
	cmpw	$1, %ax
	ja	L2684
	movl	%edi, 32(%esp)
	.cfi_offset 7, -12
	movzwl	10(%ebp), %eax
	rolw	$8, %ax
	movzwl	%ax, %edi
	testl	%edi, %edi
	je	L2685
	movzwl	12(%ebp), %eax
	movl	_g_sm_heap, %ecx
	movl	%edx, 20(%esp)
	imull	$304, %edi, %edx
	movw	%ax, 16(%esp)
	movl	%edx, (%esp)
	movl	%edx, 12(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	testl	%eax, %eax
	je	L2634
	movl	%eax, 12(%esp)
	movl	%eax, %ecx
	leal	8(%ebp,%esi), %eax
	movl	%edi, %esi
	.p2align 4
	.p2align 3
L2635:
	cmpl	$1802654797, (%eax)
	jne	L2713
	leal	4(%eax), %edx
	leal	8(%eax), %ebp
	xorl	%eax, %eax
L2637:
	movzbl	(%edx), %ebx
	sall	$8, %eax
	addl	$1, %edx
	addl	%ebx, %eax
	cmpl	%ebp, %edx
	jne	L2637
	movl	%edx, (%ecx)
	addl	%edx, %eax
	addl	$304, %ecx
	movb	$0, -4(%ecx)
	subl	$1, %esi
	jne	L2635
	movzwl	16(%esp), %eax
	movl	__ZL16_MIDI_SongLoaded.lto_priv.0, %ebp
	movl	12(%esp), %ebx
	rolw	$8, %ax
	movzwl	%ax, %esi
	testl	%ebp, %ebp
	jne	L2714
L2638:
	movl	20(%esp), %eax
	movl	%edi, __ZL15_MIDI_NumTracks
	movl	%esi, __ZL14_MIDI_Division
	movl	%eax, __ZL10_MIDI_Loop
	movl	_ASS_EMIDICard, %eax
	movl	%ebx, __ZL14_MIDI_TrackPtr
	movl	%eax, 16(%esp)
	cmpl	$-1, %eax
	je	L2715
L2639:
	call	__ZL17_MIDI_ResetTracksv
	movl	$0, 12(%esp)
	movl	$0, __ZL15_MIDI_TotalTime
	movl	$0, __ZL16_MIDI_TotalTicks
	movl	$0, __ZL16_MIDI_TotalBeats
	movl	$0, __ZL19_MIDI_TotalMeasures
	.p2align 4
	.p2align 3
L2682:
	movl	$1, %eax
	movl	$1, 12(%ebx)
	movw	%ax, 300(%ebx)
	leal	20(%ebx), %eax
	movb	$0, 302(%ebx)
	movl	$280, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	$0, __ZL10_MIDI_Tick
	movl	$1, __ZL10_MIDI_Beat
	movl	$1, __ZL13_MIDI_Measure
	movl	$0, __ZL10_MIDI_Time
	movl	$4, __ZL21_MIDI_BeatsPerMeasure
	movl	%esi, __ZL18_MIDI_TicksPerBeat
	movl	$4, __ZL14_MIDI_TimeBase
	movl	$0, __MIDI_PositionInTicks
	movl	$0, __ZL18_MIDI_ActiveTracks
	movl	$-1, __ZL13_MIDI_Context
	call	_memset
	movl	8(%ebx), %ecx
	testl	%ecx, %ecx
	jle	L2640
	.p2align 4
	.p2align 3
L2641:
	call	__ZL17_MIDI_AdvanceTickv
	movl	8(%ebx), %eax
	subl	$1, %eax
	movl	%eax, 8(%ebx)
	testl	%eax, %eax
	jg	L2641
	cmpw	$0, 12(%ebx)
	je	L2642
L2640:
	xorl	%ebp, %ebp
	.p2align 4
	.p2align 3
L2679:
	movl	4(%ebx), %edx
	movzbl	(%edx), %eax
	leal	1(%edx), %esi
	movl	%esi, 4(%ebx)
	movl	%eax, %ecx
	sarl	$4, %eax
	cmpl	$15, %eax
	je	L2716
	testb	%cl, %cl
	js	L2717
	movswl	14(%ebx), %eax
	movl	%edx, 4(%ebx)
	sarl	$4, %eax
	cmpl	$11, %eax
	je	L2658
L2720:
	addl	__ZL20_MIDI_CommandLengths(,%eax,4), %edx
	movl	%edx, %eax
L2659:
	movl	%eax, 4(%ebx)
	movzbl	(%eax), %edx
	addl	$1, %eax
	movl	%eax, 4(%ebx)
	testb	%dl, %dl
	js	L2718
L2677:
	movl	%edx, 8(%ebx)
	testl	%edx, %edx
	jle	L2712
	.p2align 4
	.p2align 3
L2678:
	call	__ZL17_MIDI_AdvanceTickv
	movl	8(%ebx), %eax
	subl	$1, %eax
	movl	%eax, 8(%ebx)
	testl	%eax, %eax
	jg	L2678
L2712:
	movzwl	12(%ebx), %eax
	testw	%ax, %ax
	jne	L2679
	.p2align 4
	.p2align 3
L2642:
	movl	__ZL15_MIDI_TotalTime, %eax
	movl	__ZL10_MIDI_Time, %edx
	movl	__ZL10_MIDI_Beat, %edi
	movl	__ZL13_MIDI_Measure, %esi
	cmpl	%edx, %eax
	movl	__ZL10_MIDI_Tick, %ebp
	movl	__ZL19_MIDI_TotalMeasures, %ecx
	cmovb	%edx, %eax
	movl	%edi, %edx
	sall	$9, %edx
	movl	%eax, __ZL15_MIDI_TotalTime
	movl	%esi, %eax
	addl	%ebp, %edx
	sall	$16, %ecx
	sall	$16, %eax
	addl	%eax, %edx
	movl	__ZL16_MIDI_TotalBeats, %eax
	sall	$9, %eax
	addl	__ZL16_MIDI_TotalTicks, %eax
	addl	%ecx, %eax
	cmpl	%eax, %edx
	jle	L2680
	movl	%ebp, __ZL16_MIDI_TotalTicks
	movl	%edi, __ZL16_MIDI_TotalBeats
	movl	%esi, __ZL19_MIDI_TotalMeasures
L2680:
	addl	$1, 12(%esp)
	movl	12(%esp), %eax
	cmpl	__ZL15_MIDI_NumTracks, %eax
	jge	L2681
	movl	__ZL14_MIDI_Division, %esi
	addl	$304, %ebx
	jmp	L2682
L2685:
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	$4, %ebx
L2631:
	movl	%ebx, %eax
	movl	28(%esp), %esi
	movl	24(%esp), %ebx
	movl	36(%esp), %ebp
	addl	$40, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2716:
	.cfi_def_cfa_offset 44
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpb	$-9, %cl
	je	L2644
	cmpb	$-1, %cl
	je	L2645
	cmpb	$-16, %cl
	je	L2644
L2646:
	cmpw	$0, 12(%ebx)
	je	L2642
	movl	4(%ebx), %eax
	movzbl	(%eax), %edx
	addl	$1, %eax
	movl	%eax, 4(%ebx)
	testb	%dl, %dl
	js	L2719
L2652:
	movl	%edx, 8(%ebx)
	testl	%edx, %edx
	jle	L2679
	.p2align 4
	.p2align 3
L2654:
	call	__ZL17_MIDI_AdvanceTickv
	movl	8(%ebx), %eax
	subl	$1, %eax
	movl	%eax, 8(%ebx)
	testl	%eax, %eax
	jg	L2654
	movzwl	12(%ebx), %eax
	testw	%ax, %ax
	jne	L2679
	jmp	L2642
	.p2align 4,,10
	.p2align 3
L2718:
	andl	$127, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L2676:
	movzbl	(%eax), %ecx
	sall	$7, %edx
	addl	$1, %eax
	movl	%eax, 4(%ebx)
	movl	%ecx, %esi
	andl	$127, %esi
	addl	%esi, %edx
	testb	%cl, %cl
	js	L2676
	jmp	L2677
	.p2align 4,,10
	.p2align 3
L2717:
	movw	%cx, 14(%ebx)
	movl	%esi, %edx
	cmpl	$11, %eax
	jne	L2720
L2658:
	movzbl	(%edx), %ecx
	leal	3(%edx), %eax
	cmpb	$126, %cl
	je	L2659
	leal	1(%edx), %esi
	subl	$110, %ecx
	leal	2(%edx), %eax
	movl	%esi, 4(%ebx)
	movzbl	1(%edx), %esi
	movl	%esi, %edx
	cmpb	$9, %cl
	ja	L2659
	movzbl	%cl, %ecx
	jmp	*L2663(,%ecx,4)
	.section .rdata,"dr"
	.align 4
L2663:
	.long	L2669
	.long	L2668
	.long	L2667
	.long	L2666
	.long	L2665
	.long	L2659
	.long	L2664
	.long	L2662
	.long	L2664
	.long	L2662
	.text
L2662:
	cmpl	$127, %esi
	jne	L2659
	xorl	%edx, %edx
	movl	$0, 24(%ebx)
	movw	%dx, 28(%ebx)
	jmp	L2659
L2664:
	testl	%esi, %esi
	movl	$-1, %edi
	movzwl	14(%ebx), %ecx
	movl	%eax, 20(%ebx)
	cmove	%edi, %edx
	movl	%eax, 24(%ebx)
	sall	$16, %ecx
	movzwl	%dx, %edx
	orl	%ecx, %edx
	movl	%edx, 28(%ebx)
	movl	__ZL10_MIDI_Time, %edx
	movl	%edx, 32(%ebx)
	movl	__ZL22_MIDI_FPSecondsPerTick, %edx
	movl	%edx, 36(%ebx)
	movl	__ZL10_MIDI_Tick, %edx
	movw	%dx, 40(%ebx)
	movl	__ZL10_MIDI_Beat, %edx
	movw	%dx, 42(%ebx)
	movl	__ZL13_MIDI_Measure, %edx
	movw	%dx, 44(%ebx)
	movl	__ZL21_MIDI_BeatsPerMeasure, %edx
	movw	%dx, 46(%ebx)
	movl	__ZL18_MIDI_TicksPerBeat, %edx
	movw	%dx, 48(%ebx)
	movl	__ZL14_MIDI_TimeBase, %edx
	movw	%dx, 50(%ebx)
	jmp	L2659
L2665:
	leal	-1(%esi), %edx
	cmpl	$5, %edx
	ja	L2659
	leal	(%esi,%esi,4), %esi
	movl	%eax, 20(%ebx,%esi,8)
	movl	24(%ebx), %ecx
	movl	%ecx, 24(%ebx,%esi,8)
	movzwl	14(%ebx), %edi
	movzwl	28(%ebx), %ecx
	sall	$16, %edi
	orl	%edi, %ecx
	movl	%ecx, 28(%ebx,%esi,8)
	movl	__ZL10_MIDI_Time, %ecx
	movl	%ecx, 32(%ebx,%esi,8)
	movl	__ZL22_MIDI_FPSecondsPerTick, %ecx
	movl	%ecx, 36(%ebx,%esi,8)
	movl	__ZL10_MIDI_Tick, %ecx
	movw	%cx, 40(%ebx,%esi,8)
	movl	__ZL10_MIDI_Beat, %ecx
	movw	%cx, 42(%ebx,%esi,8)
	movl	__ZL13_MIDI_Measure, %ecx
	movw	%cx, 44(%ebx,%esi,8)
	movl	__ZL21_MIDI_BeatsPerMeasure, %ecx
	movw	%cx, 46(%ebx,%esi,8)
	movl	__ZL18_MIDI_TicksPerBeat, %ecx
	movw	%cx, 48(%ebx,%esi,8)
	movl	__ZL14_MIDI_TimeBase, %ecx
	movw	%cx, 50(%ebx,%esi,8)
	jmp	L2659
L2666:
	cmpb	$0, 302(%ebx)
	jne	L2659
	movb	$1, 302(%ebx)
	jmp	L2659
L2667:
	cmpb	$0, 301(%ebx)
	jne	L2659
	movb	$1, 301(%ebx)
	jmp	L2659
L2668:
	cmpl	$127, %esi
	je	L2689
	cmpl	16(%esp), %esi
	jne	L2659
L2689:
	movb	$0, 300(%ebx)
	jmp	L2659
L2669:
	cmpl	$127, %esi
	je	L2688
	cmpl	16(%esp), %esi
	je	L2688
	testl	%ebp, %ebp
	jne	L2659
	movb	$0, 300(%ebx)
L2673:
	movl	$1, %ebp
	jmp	L2659
	.p2align 4,,10
	.p2align 3
L2644:
	movzbl	1(%edx), %eax
	addl	$2, %edx
	movl	%edx, 4(%ebx)
	testb	%al, %al
	js	L2721
L2649:
	addl	%eax, %edx
	movl	%edx, 4(%ebx)
	jmp	L2646
	.p2align 4,,10
	.p2align 3
L2645:
	movl	%ebx, %eax
	call	__ZL15_MIDI_MetaEventP5track
	jmp	L2646
	.p2align 4,,10
	.p2align 3
L2721:
	andl	$127, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L2648:
	movzbl	(%edx), %ecx
	sall	$7, %eax
	addl	$1, %edx
	movl	%edx, 4(%ebx)
	movl	%ecx, %esi
	andl	$127, %esi
	addl	%esi, %eax
	testb	%cl, %cl
	js	L2648
	jmp	L2649
L2719:
	andl	$127, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L2651:
	movzbl	(%eax), %ecx
	sall	$7, %edx
	addl	$1, %eax
	movl	%eax, 4(%ebx)
	movl	%ecx, %esi
	andl	$127, %esi
	addl	%esi, %edx
	testb	%cl, %cl
	js	L2651
	jmp	L2652
L2684:
	.cfi_restore 7
	movl	$3, %ebx
	jmp	L2631
L2681:
	.cfi_offset 7, -12
	call	__ZL17_MIDI_ResetTracksv
	call	__ZL17_MIDI_ResetTracksv
	movl	__ZL11_MIDI_Reset, %eax
	testl	%eax, %eax
	je	L2722
L2683:
	movl	_ASS_MIDISoundDriver, %eax
	movl	$0, __ZL11_MIDI_Reset
	leal	(%eax,%eax,8), %eax
	call	*__ZL12SoundDrivers.lto_priv.0+48(,%eax,8)
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L2687
	movl	$120, %eax
	call	__Z13MIDI_SetTempoi
	movl	32(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	$1, __ZL16_MIDI_SongLoaded.lto_priv.0
	movl	$1, __ZL16_MIDI_SongActive.lto_priv.0
	jmp	L2631
L2688:
	.cfi_restore_state
	movb	$1, 300(%ebx)
	jmp	L2673
L2687:
	movl	32(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	$7, %ebx
	jmp	L2631
L2722:
	.cfi_restore_state
	call	__Z10MIDI_Resetv.isra.0
	jmp	L2683
L2714:
	call	__Z13MIDI_StopSongv.part.0
	jmp	L2638
L2713:
	movl	12(%esp), %ebx
	movl	_g_sm_heap, %ecx
	movl	%ebx, (%esp)
	movl	$5, %ebx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	movl	32(%esp), %edi
	.cfi_restore 7
	jmp	L2631
L2715:
	.cfi_restore_state
	movl	_ASS_MIDISoundDriver, %eax
	leal	(%eax,%eax,8), %eax
	movl	__ZL12SoundDrivers.lto_priv.0+36(,%eax,8), %eax
	movl	%eax, 16(%esp)
	jmp	L2639
L2634:
	movl	12(%esp), %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE252:
	.p2align 4
	.def	__Z12MIDI_Restartv.part.0;	.scl	3;	.type	32;	.endef
__Z12MIDI_Restartv.part.0:
LFB256:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movl	__ZL11_MIDI_Funcs.lto_priv.0, %eax
	movl	%ebx, 32(%esp)
	.cfi_offset 3, -20
	movl	__ZL10_MIDI_Beat, %ebx
	movl	%esi, 36(%esp)
	.cfi_offset 6, -16
	movl	__ZL13_MIDI_Measure, %esi
	movl	%edi, 40(%esp)
	.cfi_offset 7, -12
	movl	__ZL10_MIDI_Tick, %edi
	testl	%eax, %eax
	je	L2724
	movl	__ZL13_MIDI_SongPtr, %eax
	cmpl	$1684558925, (%eax)
	jne	L2724
	movl	__ZL10_MIDI_Loop, %edx
	call	__Z13MIDI_PlaySongPci.part.0
L2724:
	movl	__ZL16_MIDI_SongLoaded.lto_priv.0, %eax
	testl	%eax, %eax
	jne	L2819
L2723:
	movl	32(%esp), %ebx
	movl	36(%esp), %esi
	movl	40(%esp), %edi
	addl	$48, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L2819:
	.cfi_restore_state
	movl	%ebp, 44(%esp)
	.cfi_offset 5, -8
	sall	$16, %esi
	movl	$0, __ZL16_MIDI_SongActive.lto_priv.0
	call	__Z16MIDI_AllNotesOffv.isra.0
	movl	%ebx, %eax
	movl	__ZL13_MIDI_Measure, %edx
	sall	$9, %eax
	addl	%edi, %eax
	sall	$16, %edx
	addl	%eax, %esi
	movl	__ZL10_MIDI_Beat, %eax
	sall	$9, %eax
	addl	__ZL10_MIDI_Tick, %eax
	addl	%edx, %eax
	cmpl	%eax, %esi
	jl	L2820
L2726:
	movl	_ASS_MIDISoundDriver, %eax
	leal	(%eax,%eax,8), %eax
	movl	__ZL12SoundDrivers.lto_priv.0+60(,%eax,8), %eax
	testl	%eax, %eax
	je	L2730
	call	*%eax
L2730:
	movl	__ZL10_MIDI_Beat, %eax
	movl	__ZL13_MIDI_Measure, %edx
	sall	$9, %eax
	sall	$16, %edx
	addl	__ZL10_MIDI_Tick, %eax
	addl	%edx, %eax
	cmpl	%eax, %esi
	jle	L2768
	movl	__ZL14_MIDI_TrackPtr, %ebp
	testl	%ebp, %ebp
	je	L2731
	movl	$0, 20(%esp)
	movl	$0, 24(%esp)
	.p2align 4
	.p2align 3
L2732:
	movl	24(%esp), %eax
	cmpl	__ZL15_MIDI_NumTracks, %eax
	jge	L2766
	movl	8(%ebp), %edi
	cmpw	$0, 12(%ebp)
	je	L2741
	movl	%esi, 12(%esp)
	.p2align 4
	.p2align 3
L2767:
	testl	%edi, %edi
	jne	L2812
	movl	4(%ebp), %edx
	movzbl	(%edx), %ebx
	leal	1(%edx), %eax
	movl	%eax, 4(%ebp)
	movl	%ebx, %eax
	sarl	$4, %eax
	cmpl	$15, %eax
	je	L2821
	testb	%bl, %bl
	js	L2822
	movswl	14(%ebp), %ebx
	movl	%edx, 4(%ebp)
	movl	%ebx, %eax
	sarl	$4, %eax
L2746:
	andl	$15, %ebx
	movl	%ebx, %ecx
	movl	__ZL20_MIDI_CommandLengths(,%eax,4), %ebx
	testl	%ebx, %ebx
	je	L2771
	movl	4(%ebp), %edx
	movzbl	(%edx), %esi
	movl	%esi, 16(%esp)
	leal	1(%edx), %esi
	movl	%esi, 4(%ebp)
	cmpl	$2, %ebx
	je	L2823
	movl	16(%esp), %ebx
L2747:
	subl	$10, %eax
	cmpl	$4, %eax
	ja	L2755
	jmp	*L2750(,%eax,4)
	.section .rdata,"dr"
	.align 4
L2750:
	.long	L2754
	.long	L2753
	.long	L2752
	.long	L2751
	.long	L2749
	.text
	.p2align 4,,10
	.p2align 3
L2751:
	movl	__ZL11_MIDI_Funcs.lto_priv.0, %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	L2755
	cmpl	$__ZL21MME_ChannelAftertouchii, %eax
	jne	L2759
	movl	$2, %eax
	leal	28(%esp), %edx
	movl	%ecx, 16(%esp)
	call	__ZL15midi_get_bufferiPPh.isra.0
	movl	16(%esp), %ecx
	movl	28(%esp), %eax
	orl	$-48, %ecx
	movb	%bl, 1(%eax)
	movb	%cl, (%eax)
	movl	__ZL10midiThread, %eax
	testl	%eax, %eax
	je	L2818
L2760:
	movl	__ZL15midiThreadTimer, %eax
	movl	%eax, __ZL17midiLastEventTime
L2755:
	movl	4(%ebp), %eax
	movzbl	(%eax), %edi
	addl	$1, %eax
	movl	%eax, 4(%ebp)
	movl	%edi, %edx
	testb	%dl, %dl
	js	L2824
L2764:
	movl	%edi, 8(%ebp)
	cmpw	$0, 12(%ebp)
	jne	L2767
	.p2align 4
	.p2align 3
L2812:
	movl	12(%esp), %esi
	jmp	L2741
	.p2align 4,,10
	.p2align 3
L2754:
	movl	__ZL11_MIDI_Funcs.lto_priv.0, %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L2755
	cmpl	$__ZL18MME_PolyAftertouchiii, %eax
	jne	L2817
	movl	$3, %eax
	leal	28(%esp), %edx
	movl	%ecx, 16(%esp)
	call	__ZL15midi_get_bufferiPPh.isra.0
	movl	28(%esp), %eax
	movl	16(%esp), %ecx
	movb	%bl, 1(%eax)
	orl	$-96, %ecx
	movl	%edi, %ebx
	movb	%cl, (%eax)
	movb	%bl, 2(%eax)
	movl	__ZL10midiThread, %eax
	testl	%eax, %eax
	jne	L2760
L2818:
	call	__ZL25midi_flush_current_bufferv
	jmp	L2755
	.p2align 4,,10
	.p2align 3
L2752:
	movl	__ZL11_MIDI_Funcs.lto_priv.0, %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L2755
	cmpb	$0, 301(%ebp)
	jne	L2755
L2759:
	movl	%ebx, 4(%esp)
	movl	%ecx, (%esp)
	call	*%eax
	jmp	L2755
	.p2align 4,,10
	.p2align 3
L2749:
	movl	__ZL11_MIDI_Funcs.lto_priv.0, %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	L2755
L2817:
	movl	%edi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%ecx, (%esp)
	call	*%eax
	jmp	L2755
	.p2align 4,,10
	.p2align 3
L2753:
	movl	%edi, 4(%esp)
	movl	20(%esp), %edx
	movl	%ebp, %eax
	movl	%ebx, (%esp)
	call	__ZL29_MIDI_InterpretControllerInfoP5trackiiii
	movl	%eax, 20(%esp)
	jmp	L2755
	.p2align 4,,10
	.p2align 3
L2771:
	xorl	%edi, %edi
	jmp	L2747
	.p2align 4,,10
	.p2align 3
L2822:
	movw	%bx, 14(%ebp)
	jmp	L2746
	.p2align 4,,10
	.p2align 3
L2824:
	movl	12(%esp), %esi
	andl	$127, %edi
	.p2align 5
	.p2align 4
	.p2align 3
L2763:
	movzbl	(%eax), %edx
	sall	$7, %edi
	addl	$1, %eax
	movl	%eax, 4(%ebp)
	movl	%edx, %ecx
	andl	$127, %ecx
	addl	%ecx, %edi
	testb	%dl, %dl
	js	L2763
	movl	%esi, 12(%esp)
	jmp	L2764
	.p2align 4,,10
	.p2align 3
L2821:
	cmpb	$-9, %bl
	je	L2734
	cmpb	$-1, %bl
	je	L2735
	cmpb	$-16, %bl
	je	L2734
L2736:
	cmpw	$0, 12(%ebp)
	jne	L2740
L2826:
	movl	12(%esp), %esi
	movl	8(%ebp), %edi
L2741:
	leal	-1(%edi), %eax
	movl	__ZL18_MIDI_ActiveTracks, %edi
	addl	$1, 24(%esp)
	addl	$304, %ebp
	movl	%eax, -296(%ebp)
	testl	%edi, %edi
	jne	L2732
L2766:
	call	__ZL17_MIDI_AdvanceTickv
	movl	20(%esp), %ebx
	testl	%ebx, %ebx
	jne	L2768
L2731:
	movl	__ZL18_MIDI_ActiveTracks, %ecx
	testl	%ecx, %ecx
	jne	L2730
	call	__ZL17_MIDI_ResetTracksv
	movl	__ZL10_MIDI_Loop, %edx
	testl	%edx, %edx
	je	L2825
L2768:
	movl	_ASS_MIDISoundDriver, %eax
	leal	(%eax,%eax,8), %eax
	movl	__ZL12SoundDrivers.lto_priv.0+64(,%eax,8), %eax
	testl	%eax, %eax
	je	L2770
	call	*%eax
L2770:
	movl	__ZL17_MIDI_TotalVolume, %eax
	call	__Z14MIDI_SetVolumei.isra.0
	movl	__ZL16_MIDI_SongLoaded.lto_priv.0, %eax
	testl	%eax, %eax
	je	L2816
	movl	$1, __ZL16_MIDI_SongActive.lto_priv.0
	movl	44(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	movl	32(%esp), %ebx
	movl	36(%esp), %esi
	movl	40(%esp), %edi
	addl	$48, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2823:
	.cfi_restore_state
	movzbl	1(%edx), %edi
	addl	$2, %edx
	movl	16(%esp), %ebx
	movl	%edx, 4(%ebp)
	jmp	L2747
	.p2align 4,,10
	.p2align 3
L2735:
	movl	%ebp, %eax
	call	__ZL15_MIDI_MetaEventP5track
	cmpw	$0, 12(%ebp)
	je	L2826
L2740:
	movl	4(%ebp), %eax
	movzbl	(%eax), %edx
	addl	$1, %eax
	movl	%eax, 4(%ebp)
	testb	%dl, %dl
	js	L2742
	movzbl	%dl, %edi
	movl	%edi, 8(%ebp)
	jmp	L2767
	.p2align 4,,10
	.p2align 3
L2734:
	movzbl	1(%edx), %eax
	addl	$2, %edx
	movl	%edx, 4(%ebp)
	testb	%al, %al
	js	L2827
L2739:
	addl	%eax, %edx
	movl	%edx, 4(%ebp)
	jmp	L2736
L2827:
	movl	12(%esp), %esi
	andl	$127, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L2738:
	movzbl	(%edx), %ecx
	sall	$7, %eax
	addl	$1, %edx
	movl	%edx, 4(%ebp)
	movl	%ecx, %ebx
	andl	$127, %ebx
	addl	%ebx, %eax
	testb	%cl, %cl
	js	L2738
	movl	%esi, 12(%esp)
	jmp	L2739
L2742:
	movl	%edx, %edi
	movl	12(%esp), %esi
	andl	$127, %edi
	.p2align 5
	.p2align 4
	.p2align 3
L2744:
	movzbl	(%eax), %edx
	sall	$7, %edi
	addl	$1, %eax
	movl	%eax, 4(%ebp)
	movl	%edx, %ecx
	andl	$127, %ecx
	addl	%ecx, %edi
	testb	%dl, %dl
	js	L2744
	movl	%esi, 12(%esp)
	movl	%edi, 8(%ebp)
	jmp	L2767
L2820:
	movl	_ASS_MIDISoundDriver, %eax
	leal	(%eax,%eax,8), %eax
	movl	__ZL12SoundDrivers.lto_priv.0+60(,%eax,8), %eax
	testl	%eax, %eax
	je	L2727
	call	*%eax
L2727:
	call	__ZL17_MIDI_ResetTracksv
	movl	_ASS_MIDISoundDriver, %eax
	leal	(%eax,%eax,8), %eax
	movl	__ZL12SoundDrivers.lto_priv.0+64(,%eax,8), %eax
	testl	%eax, %eax
	je	L2728
	call	*%eax
L2728:
	call	__Z10MIDI_Resetv.isra.0
	jmp	L2726
L2816:
	movl	44(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	movl	32(%esp), %ebx
	movl	36(%esp), %esi
	movl	40(%esp), %edi
	addl	$48, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L2825:
	.cfi_restore_state
	movl	_ASS_MIDISoundDriver, %eax
	movl	44(%esp), %ebp
	.cfi_restore 5
	leal	(%eax,%eax,8), %eax
	movl	__ZL12SoundDrivers.lto_priv.0+64(,%eax,8), %eax
	testl	%eax, %eax
	je	L2723
	movl	32(%esp), %ebx
	movl	36(%esp), %esi
	movl	40(%esp), %edi
	addl	$48, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	*%eax
	.cfi_endproc
LFE256:
	.section .rdata,"dr"
LC150:
	.ascii "mus_mme_device\0"
LC151:
	.ascii "%d: %s  \0"
LC152:
	.ascii "snd_sdl_audiodriver\0"
LC153:
	.ascii "mus_emidicard\0"
LC154:
	.ascii "mus_sf2_bank\0"
LC155:
	.ascii "mus_sf2_sampleblocksize\0"
LC156:
	.ascii "mus_al_stereo\0"
LC157:
	.ascii "mus_xmp_interpolation\0"
	.text
	.p2align 4
	.globl	__ZL24osdcmd_cvar_set_audiolibPK13osdfuncparm_t.lto_priv.0
	.def	__ZL24osdcmd_cvar_set_audiolibPK13osdfuncparm_t.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL24osdcmd_cvar_set_audiolibPK13osdfuncparm_t.lto_priv.0:
LFB262:
	.cfi_startproc
	subl	$92, %esp
	.cfi_def_cfa_offset 96
	movl	%esi, 80(%esp)
	.cfi_offset 6, -16
	movl	96(%esp), %esi
	movl	%esi, (%esp)
	call	__Z15osdcmd_cvar_setPK13osdfuncparm_t
	movl	(%esi), %eax
	testl	%eax, %eax
	jne	L2829
	movl	%ebx, 76(%esp)
	.cfi_offset 3, -20
	movl	4(%esi), %ebx
	movl	$LC150, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L2888
	movl	$LC152, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L2834
L2887:
	movl	76(%esp), %ebx
	.cfi_restore 3
L2857:
	movl	80(%esp), %esi
	xorl	%eax, %eax
	addl	$92, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L2880:
	.cfi_def_cfa_offset 96
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	84(%esp), %edi
	.cfi_restore 7
	.p2align 4
	.p2align 3
L2834:
	call	__Z23SDLDrv_PCM_PrintDriversv
	movl	(%esi), %eax
	movl	76(%esp), %ebx
	.cfi_restore 3
	.p2align 4
	.p2align 3
L2829:
	testl	%eax, %eax
	jle	L2857
	movl	_ASS_MIDISoundDriver, %eax
	movl	%ebx, 76(%esp)
	.cfi_offset 3, -20
	movl	4(%esi), %ebx
	cmpl	$2, %eax
	je	L2889
	cmpl	$3, %eax
	je	L2890
	cmpl	$4, %eax
	jne	L2837
	movl	$LC154, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L2839
	movl	$LC155, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L2837
L2839:
	movl	__ZL16_MIDI_SongLoaded.lto_priv.0, %ecx
	testl	%ecx, %ecx
	je	L2887
	call	__Z12MIDI_Restartv.part.0
	movl	76(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	jmp	L2857
	.p2align 4,,10
	.p2align 3
L2889:
	.cfi_restore_state
	movl	$LC153, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L2839
L2837:
	movl	$LC156, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L2891
	movl	$LC157, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L2892
	movl	%ebx, (%esp)
	movl	$LC152, 4(%esp)
	call	_strcasecmp
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L2887
	movl	_FX_Installed, %eax
	testl	%eax, %eax
	je	L2887
	call	_SDL_GetCurrentAudioDriver
	movl	8(%esi), %edx
	movl	(%edx), %esi
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L2887
	jmp	L2844
	.p2align 4,,10
	.p2align 3
L2846:
	movl	%ebx, (%esp)
	call	_SDL_GetAudioDriver
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L2845
	addl	$1, %ebx
L2844:
	call	_SDL_GetNumAudioDrivers
	cmpl	%eax, %ebx
	jl	L2846
	call	__Z23SDLDrv_PCM_PrintDriversv
	movl	76(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	jmp	L2857
	.p2align 4,,10
	.p2align 3
L2888:
	.cfi_restore_state
	movl	%edi, 84(%esp)
	.cfi_offset 7, -12
	call	*__imp__midiOutGetNumDevs@0
	movl	%eax, %edi
	testl	%eax, %eax
	js	L2831
	movl	%ebp, 88(%esp)
	.cfi_offset 5, -8
	movl	$-1, %ebx
	leal	24(%esp), %ebp
	jmp	L2833
	.p2align 4,,10
	.p2align 3
L2832:
	addl	$1, %ebx
	cmpl	%ebx, %edi
	je	L2893
L2833:
	movl	$52, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%ebx, (%esp)
	call	*__imp__midiOutGetDevCapsA@12
	.cfi_def_cfa_offset 84
	subl	$12, %esp
	.cfi_def_cfa_offset 96
	testl	%eax, %eax
	jne	L2832
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L2832
	leal	32(%esp), %eax
	movl	%ebx, 16(%esp)
	addl	$1, %ebx
	movl	%eax, 20(%esp)
	movl	$LC151, 12(%esp)
	movl	$547, 8(%esp)
	movl	$LC37, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	cmpl	%ebx, %edi
	jne	L2833
	.p2align 4
	.p2align 3
L2893:
	movl	88(%esp), %ebp
	.cfi_restore 5
L2831:
	movl	$LC152, 4(%esp)
	movl	4(%esi), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L2880
	movl	(%esi), %eax
	movl	76(%esp), %ebx
	.cfi_restore 3
	movl	84(%esp), %edi
	.cfi_restore 7
	jmp	L2829
	.p2align 4,,10
	.p2align 3
L2891:
	.cfi_offset 3, -20
	movl	_AL_Stereo, %eax
	leal	1(%eax,%eax), %edx
	movl	$261, %eax
	movzbl	%dl, %edx
	call	_OPL3_WriteRegBuffered.constprop.0
	movl	76(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	jmp	L2857
	.p2align 4,,10
	.p2align 3
L2890:
	.cfi_restore_state
	movl	$LC150, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L2837
	jmp	L2839
	.p2align 4,,10
	.p2align 3
L2892:
	movl	_MV_Installed, %edx
	testl	%edx, %edx
	je	L2887
	movl	_VoiceList, %eax
	cmpl	$_VoiceList, %eax
	je	L2887
	movl	_MV_XMPInterpolation, %ecx
	cmpl	$2, %ecx
	setbe	%bl
	jmp	L2843
	.p2align 4
	.p2align 4,,10
	.p2align 3
L2842:
	movl	(%eax), %eax
	cmpl	$_VoiceList, %eax
	je	L2887
L2843:
	cmpb	$7, 64(%eax)
	jne	L2842
	movl	20(%eax), %edx
	movl	8(%edx), %edx
	cmpl	$1, 9836(%edx)
	jle	L2842
	testb	%bl, %bl
	je	L2842
	movl	%ecx, 1272(%edx)
	jmp	L2842
L2845:
	movl	_MV_InitDataPtr, %eax
	movl	_MV_MixRate, %ecx
	movl	_MV_Channels, %edx
	movl	%eax, (%esp)
	movl	_MV_MaxVoices, %eax
	call	_FX_Init
	movl	76(%esp), %ebx
	.cfi_restore 3
	movl	80(%esp), %esi
	xorl	%eax, %eax
	addl	$92, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE262:
	.globl	_MV_MixDestination
	.bss
	.align 4
_MV_MixDestination:
	.space 4
.lcomm __ZL13_MIDI_SongPtr,4,4
.lcomm __ZL19_MIDI_TotalMeasures,4,4
.lcomm __ZL16_MIDI_TotalBeats,4,4
.lcomm __ZL16_MIDI_TotalTicks,4,4
.lcomm __ZL15_MIDI_TotalTime,4,4
.lcomm __MIDI_GlobalPositionInTicks,4,4
.lcomm __ZL10_MIDI_Loop,4,4
	.section .rdata,"dr"
	.align 32
__ZL20_MIDI_CommandLengths:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	2
	.long	2
	.long	2
	.long	1
	.long	1
	.long	2
	.long	0
.lcomm __ZL11_MIDI_Reset,4,4
	.data
	.align 4
__ZL17_MIDI_TotalVolume:
	.long	255
.lcomm __ZL19_MIDI_ChannelVolume,64,32
.lcomm __ZL22_MIDI_FPSecondsPerTick,4,4
.lcomm __ZL15_MIDI_NumTracks,4,4
.lcomm __ZL14_MIDI_TrackPtr,4,4
.lcomm __ZL13_MIDI_Context,4,4
.lcomm __ZL18_MIDI_ActiveTracks,4,4
.lcomm __MIDI_PositionInTicks,4,4
.lcomm __ZL14_MIDI_TimeBase,4,4
.lcomm __ZL18_MIDI_TicksPerBeat,4,4
.lcomm __ZL14_MIDI_Division,4,4
.lcomm __ZL21_MIDI_BeatsPerMeasure,4,4
.lcomm __ZL10_MIDI_Time,4,4
	.align 4
__ZL13_MIDI_Measure:
	.long	1
	.align 4
__ZL10_MIDI_Beat:
	.long	1
.lcomm __ZL10_MIDI_Tick,4,4
	.section .rdata,"dr"
	.align 4
__ZZ14MV_IdentifyXMPE21module_test_functions:
	.long	__ZL14it_test_memoryPKcj.lto_priv.0
	.long	__ZL15mod_test_memoryPKcj.lto_priv.0
	.long	__ZL15s3m_test_memoryPKcj.lto_priv.0
	.long	__ZL14xm_test_memoryPKcj.lto_priv.0
	.long	__ZL15mtm_test_memoryPKcj.lto_priv.0
	.globl	__ZL10MV_MixPage.lto_priv.0
	.bss
	.align 4
__ZL10MV_MixPage.lto_priv.0:
	.space 4
	.globl	__ZL14MV_BufferEmpty.lto_priv.0
	.align 32
__ZL14MV_BufferEmpty.lto_priv.0:
	.space 128
.lcomm _MV_RightChannelOffset,4,4
	.globl	__ZL15MV_BufferLength.lto_priv.0
	.align 4
__ZL15MV_BufferLength.lto_priv.0:
	.space 4
	.data
	.align 4
_MV_VolumeSmoothFactor:
	.long	65536
	.globl	_MV_MixBuffer
	.bss
	.align 32
_MV_MixBuffer:
	.space 260
	.globl	_MV_BufferSize
	.data
	.align 4
_MV_BufferSize:
	.long	256
	.globl	__ZL15MV_ReverbVolume.lto_priv.0
	.bss
	.align 4
__ZL15MV_ReverbVolume.lto_priv.0:
	.space 4
	.globl	__ZL14MV_ReverbLevel.lto_priv.0
	.align 4
__ZL14MV_ReverbLevel.lto_priv.0:
	.space 4
	.globl	_VoicePool
	.align 32
_VoicePool:
	.space 128
	.globl	_MV_Voices
	.align 4
_MV_Voices:
	.space 4
	.globl	_MV_MaxVoices
	.data
	.align 4
_MV_MaxVoices:
	.long	1
.lcomm _MV_InitDataPtr,4,4
.lcomm __ZZ9divideu64E4udiv.lto_priv.1,9,4
.lcomm __ZZ9divideu64E5lastd.lto_priv.1,8,8
	.globl	_loopLengthTags
	.section .rdata,"dr"
	.align 4
_loopLengthTags:
	.long	LC120
	.long	LC121
	.globl	_loopEndTags
	.align 4
_loopEndTags:
	.long	LC118
	.long	LC119
	.globl	_loopStartTags
LC158:
	.ascii "LOOP_START\0"
LC159:
	.ascii "LOOPSTART\0"
LC160:
	.ascii "LOOP\0"
	.align 4
_loopStartTags:
	.long	LC158
	.long	LC159
	.long	LC160
	.align 4
__ZL14flac_callbacks:
	.long	__ZL9read_flacPvjjS_
	.long	__ZL10write_flacPKvjjPv
	.long	__ZL9seek_flacPvxi
	.long	__ZL9tell_flacPv
	.long	__ZL8eof_flacPv
	.long	__ZL10close_flacPv.lto_priv.0
	.globl	_MV_PanTable
	.bss
	.align 32
_MV_PanTable:
	.space 32768
	.globl	_MV_ErrorCode
	.data
	.align 4
_MV_ErrorCode:
	.long	1
	.globl	__ZZ18MV_SetVoiceMixModeP9VoiceNodeE7mixslut.lto_priv.0
	.section .rdata,"dr"
	.align 32
__ZZ18MV_SetVoiceMixModeP9VoiceNodeE7mixslut.lto_priv.0:
	.long	__Z12MV_MixStereoIhsEjP9VoiceNodej
	.long	__Z10MV_MixMonoIhsEjP9VoiceNodej
	.long	__Z12MV_MixStereoIssEjP9VoiceNodej
	.long	__Z10MV_MixMonoIssEjP9VoiceNodej
	.long	__Z18MV_MixStereoStereoIhsEjP9VoiceNodej
	.long	__Z16MV_MixMonoStereoIhsEjP9VoiceNodej
	.long	__Z18MV_MixStereoStereoIssEjP9VoiceNodej
	.long	__Z16MV_MixMonoStereoIssEjP9VoiceNodej
.lcomm __ZZ9divideu64E4udiv.lto_priv.0,9,4
.lcomm __ZZ9divideu64E5lastd.lto_priv.0,8,8
.lcomm __ZL16midiLastDivision,4,4
.lcomm __ZL20midiThreadQueueTimer,4,4
.lcomm __ZL20midiThreadQueueTicks,4,4
.lcomm __ZL20midiThreadResetEvent,4,4
.lcomm __ZL19midiThreadQuitEvent,4,4
.lcomm __ZL9midiMutex,4,4
.lcomm __ZL18finishedBufferList,72,32
.lcomm __ZL13midiInstalled,4,4
.lcomm __ZL17midiLastEventTime,4,4
.lcomm __ZL15midiThreadTimer,4,4
.lcomm __ZL10midiThread,4,4
.lcomm __ZL20maxActiveMidiBuffers,4,4
.lcomm __ZL20numActiveMidiBuffers,4,4
.lcomm __ZL16activeBufferList,72,32
.lcomm __ZL23midiBufferFinishedEvent,4,4
.lcomm __ZL17currentMidiBuffer,4,4
.lcomm __ZL17midiStreamRunning,4,4
LC161:
	.ascii "MMSYSERR_NOERROR\0"
LC162:
	.ascii "MMSYSERR_BADDEVICEID\0"
LC163:
	.ascii "MMSYSERR_NOTENABLED\0"
LC164:
	.ascii "MMSYSERR_ALLOCATED\0"
LC165:
	.ascii "MMSYSERR_INVALHANDLE\0"
LC166:
	.ascii "MMSYSERR_NODRIVER\0"
LC167:
	.ascii "MMSYSERR_NOMEM\0"
LC168:
	.ascii "MMSYSERR_NOTSUPPORTED\0"
LC169:
	.ascii "MMSYSERR_BADERRNUM\0"
LC170:
	.ascii "MMSYSERR_INVALFLAG\0"
LC171:
	.ascii "MMSYSERR_INVALPARAM\0"
LC172:
	.ascii "MMSYSERR_HANDLEBUSY\0"
LC173:
	.ascii "MMSYSERR_INVALIDALIAS\0"
LC174:
	.ascii "MMSYSERR_BADDB\0"
LC175:
	.ascii "MMSYSERR_KEYNOTFOUND\0"
LC176:
	.ascii "MMSYSERR_READERROR\0"
LC177:
	.ascii "MMSYSERR_WRITEERROR\0"
LC178:
	.ascii "MMSYSERR_DELETEERROR\0"
LC179:
	.ascii "MMSYSERR_VALNOTFOUND\0"
LC180:
	.ascii "MMSYSERR_NODRIVERCB\0"
	.align 32
_CSWTCH.183:
	.long	LC161
	.long	LC85
	.long	LC162
	.long	LC163
	.long	LC164
	.long	LC165
	.long	LC166
	.long	LC167
	.long	LC168
	.long	LC169
	.long	LC170
	.long	LC171
	.long	LC172
	.long	LC173
	.long	LC174
	.long	LC175
	.long	LC176
	.long	LC177
	.long	LC178
	.long	LC179
	.long	LC180
.lcomm __ZL19maxSpareMidiBuffers,4,4
.lcomm __ZL19numSpareMidiBuffers,4,4
.lcomm __ZL15spareBufferList,72,32
.lcomm __ZL10midiStream,4,4
.lcomm __ZL9ErrorCode.lto_priv.3,4,4
.lcomm __ZZ19SF2Drv_MIDI_ServicevE4fbuf,2048,32
	.data
	.align 4
__ZL10SF2_Volume:
	.long	255
.lcomm __ZL9sf2_synth,4,4
.lcomm __ZL9ErrorCode.lto_priv.2,4,4
	.align 32
__ZZ19tsf_region_operatorE8genMetas:
	.byte	3
	.byte	4
	.byte	3
	.byte	5
	.byte	3
	.byte	6
	.byte	3
	.byte	7
	.byte	4
	.byte	4
	.byte	18
	.byte	38
	.byte	18
	.byte	41
	.byte	18
	.byte	32
	.byte	34
	.byte	31
	.byte	50
	.byte	30
	.byte	18
	.byte	34
	.byte	18
	.byte	33
	.byte	4
	.byte	5
	.byte	66
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-111
	.byte	13
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	97
	.byte	36
	.byte	82
	.byte	37
	.byte	97
	.byte	39
	.byte	82
	.byte	40
	.byte	97
	.space 1
	.byte	113
	.space 1
	.byte	97
	.space 1
	.byte	113
	.space 1
	.byte	-79
	.space 1
	.byte	113
	.space 1
	.byte	-127
	.space 1
	.byte	-127
	.space 1
	.byte	97
	.space 1
	.byte	113
	.space 1
	.byte	97
	.space 1
	.byte	113
	.space 1
	.byte	-63
	.space 1
	.byte	113
	.space 1
	.byte	-127
	.space 1
	.byte	-127
	.space 1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	5
	.byte	0
	.byte	6
	.byte	0
	.byte	4
	.byte	6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-95
	.byte	12
	.byte	0
	.byte	0
	.byte	4
	.byte	7
	.byte	2
	.byte	8
	.byte	2
	.byte	9
	.byte	0
	.byte	0
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	11
	.byte	8
	.byte	3
	.byte	9
	.byte	10
.lcomm __ZGVZ19tsf_region_operatorE8genMetas,8,8
.lcomm __ZL7Playing,4,4
.lcomm __ZL9audio_dev,4,4
.lcomm __ZL10StartedSDL,4,4
.lcomm _SDLAudioDriverNameEnv,4,4
.lcomm __ZL11Initialised,4,4
.lcomm __ZL9ErrorCode.lto_priv.1,4,4
.lcomm __ZL14MixBufferCount,4,4
.lcomm __ZL16MixBufferCurrent,4,4
.lcomm __ZL13MixBufferSize,4,4
.lcomm __ZL13MixBufferUsed,4,4
.lcomm __ZL11MixCallBack,4,4
.lcomm __ZL9MixBuffer,4,4
	.globl	__ZL10panpot_lut.lto_priv.0
	.bss
	.align 32
__ZL10panpot_lut.lto_priv.0:
	.space 1024
.lcomm __ZL16panpot_lut_build,1,1
	.section .rdata,"dr"
	.align 4
__ZL7ch_slot:
	.ascii "\0\1\2\6\7\10\14\15\16\22\23\24\30\31\32\36\37 "
	.align 4
LC5:
	.long	1167867904
	.align 4
LC6:
	.long	-969179136
	.align 4
LC7:
	.long	1174011904
	.align 4
LC8:
	.long	1150681088
	.align 4
LC9:
	.long	-996802560
	.align 4
LC10:
	.long	1056964608
	.align 4
LC11:
	.long	-1090519040
	.align 4
LC12:
	.long	1125122048
	.align 4
LC14:
	.long	1148846080
	.align 4
LC15:
	.long	1152647168
	.align 4
LC16:
	.long	981668463
	.align 4
LC17:
	.long	1036831949
	.align 4
LC18:
	.long	1065353216
	.align 16
LC19:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.set	LC20,LC60+8
	.align 4
LC21:
	.long	-1082130432
	.align 4
LC22:
	.long	-1073741824
	.align 4
LC23:
	.long	1069547520
	.align 4
LC24:
	.long	1075838976
	.align 4
LC47:
	.long	-969230336
	.align 4
LC48:
	.long	1092616192
	.align 4
LC49:
	.long	-1027080192
	.align 4
LC50:
	.long	1028443341
	.align 4
LC51:
	.long	1120403456
	.align 4
LC53:
	.long	1182792704
	.align 4
LC54:
	.long	1008981770
	.align 4
LC55:
	.long	-1055679054
	.align 4
LC56:
	.long	1114636288
	.align 4
LC57:
	.long	-971227136
	.align 8
LC58:
	.long	1413754136
	.long	1074340347
	.align 8
LC59:
	.long	0
	.long	1072693248
	.align 16
LC60:
	.long	0
	.long	0
	.long	1073741824
	.long	0
	.align 4
LC61:
	.long	1006699012
	.align 4
LC62:
	.long	1123942400
	.align 4
LC63:
	.long	925353388
	.align 4
LC64:
	.long	1101004800
	.align 4
LC65:
	.long	1090703589
	.align 4
LC66:
	.long	1056931054
	.align 4
LC67:
	.long	1082130432
	.align 8
LC68:
	.word	8192
	.word	16383
	.word	16383
	.word	-1
	.align 4
LC69:
	.long	1077936128
	.align 4
LC70:
	.long	1174405120
	.align 4
LC71:
	.long	956301312
	.align 4
LC72:
	.long	1115684864
	.align 8
LC74:
	.long	0
	.long	-1
	.align 4
LC78:
	.long	1191181824
	.align 4
LC79:
	.long	1194083328
	.align 4
LC82:
	.long	__ZL15sf2_stream_readPvS_j
	.align 4
LC83:
	.long	__ZL11SF2_NoteOffiii
	.align 4
LC84:
	.long	__ZL17SF2_ControlChangeiii
	.align 4
LC103:
	.long	__ZL18MME_PolyAftertouchiii
	.align 4
LC104:
	.long	__ZL11MME_NoteOffiii
	.align 4
LC105:
	.long	__ZL17MME_ProgramChangeii
	.align 8
LC125:
	.long	8
	.long	1
	.align 8
LC127:
	.long	65536
	.long	65536
	.align 4
LC128:
	.long	989855744
	.align 4
LC129:
	.long	1199570944
	.align 4
LC130:
	.long	__ZL7AL_Chip.lto_priv.0
	.align 4
LC135:
	.long	1106247680
	.align 4
LC138:
	.long	_VoiceList
	.align 4
LC139:
	.long	_VoicePool
	.align 8
LC141:
	.long	32
	.long	0
	.align 4
LC145:
	.long	1124106369
	.align 4
LC146:
	.long	1179840512
	.align 4
LC147:
	.long	-956301312
	.def	___udivmoddi4;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_OPL3_WriteRegBuffered.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_tabledivide32.lto_priv.1;	.scl	2;	.type	32;	.endef
	.def	__ZL16AL_SetVoicePitchi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL13AL_AllocVoicev.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL17AL_SetVoiceVolumei.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_OPL3_WriteReg.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZL16AL_SetChannelPanii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetAudioDriver;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetNumAudioDrivers;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_SDL_WasInit;	.scl	2;	.type	32;	.endef
	.def	_SDL_OpenAudioDevice;	.scl	2;	.type	32;	.endef
	.def	_SDL_setenv;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetCurrentAudioDriver;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetAudioDeviceName;	.scl	2;	.type	32;	.endef
	.def	_SDL_CloseAudio;	.scl	2;	.type	32;	.endef
	.def	_SDL_InitSubSystem;	.scl	2;	.type	32;	.endef
	.def	_SDL_getenv;	.scl	2;	.type	32;	.endef
	.def	_SDL_QuitSubSystem;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_SDL_PauseAudioDevice;	.scl	2;	.type	32;	.endef
	.def	_SDL_LockAudioDevice;	.scl	2;	.type	32;	.endef
	.def	_SDL_UnlockAudioDevice;	.scl	2;	.type	32;	.endef
	.def	_pow;	.scl	2;	.type	32;	.endef
	.def	_exp;	.scl	2;	.type	32;	.endef
	.def	_logf;	.scl	2;	.type	32;	.endef
	.def	_tan;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_log10f;	.scl	2;	.type	32;	.endef
	.def	_sqrtf;	.scl	2;	.type	32;	.endef
	.def	__Z14kread_internaliPviPKhPKiPi;	.scl	2;	.type	32;	.endef
	.def	__Z15klseek_internaliiiPKhPiS1_;	.scl	2;	.type	32;	.endef
	.def	_MV_UnhookMusicRoutine;	.scl	2;	.type	32;	.endef
	.def	_fnlist_getnames.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	_kopen4loadfrommod.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_kclose;	.scl	2;	.type	32;	.endef
	.def	_MV_HookMusicRoutine;	.scl	2;	.type	32;	.endef
	.def	_ceil;	.scl	2;	.type	32;	.endef
	.def	_fprintf;	.scl	2;	.type	32;	.endef
	.def	_abort;	.scl	2;	.type	32;	.endef
	.def	_FLAC__stream_decoder_seek_absolute;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj;	.scl	2;	.type	32;	.endef
	.def	_FLAC__stream_decoder_process_single;	.scl	2;	.type	32;	.endef
	.def	_FLAC__stream_decoder_get_state;	.scl	2;	.type	32;	.endef
	.def	_FLAC__stream_decoder_flush;	.scl	2;	.type	32;	.endef
	.def	__Z13MV_AllocVoiceij;	.scl	2;	.type	32;	.endef
	.def	_FLAC__stream_decoder_new;	.scl	2;	.type	32;	.endef
	.def	_FLAC__stream_decoder_set_metadata_ignore_all;	.scl	2;	.type	32;	.endef
	.def	_FLAC__stream_decoder_init_stream;	.scl	2;	.type	32;	.endef
	.def	__Z14PITCH_GetScalei;	.scl	2;	.type	32;	.endef
	.def	_FLAC__metadata_chain_new;	.scl	2;	.type	32;	.endef
	.def	_FLAC__metadata_chain_read_with_callbacks;	.scl	2;	.type	32;	.endef
	.def	_FLAC__metadata_iterator_new;	.scl	2;	.type	32;	.endef
	.def	_FLAC__metadata_iterator_init;	.scl	2;	.type	32;	.endef
	.def	_FLAC__metadata_object_delete;	.scl	2;	.type	32;	.endef
	.def	_FLAC__metadata_iterator_next;	.scl	2;	.type	32;	.endef
	.def	_FLAC__metadata_iterator_get_block;	.scl	2;	.type	32;	.endef
	.def	_strncasecmp;	.scl	2;	.type	32;	.endef
	.def	__Z17MV_SetVoiceVolumeP9VoiceNodeiiii;	.scl	2;	.type	32;	.endef
	.def	__Z12MV_PlayVoiceP9VoiceNode;	.scl	2;	.type	32;	.endef
	.def	_FLAC__metadata_chain_status;	.scl	2;	.type	32;	.endef
	.def	_atol;	.scl	2;	.type	32;	.endef
	.def	_FLAC__metadata_iterator_delete;	.scl	2;	.type	32;	.endef
	.def	_FLAC__stream_decoder_finish;	.scl	2;	.type	32;	.endef
	.def	_FLAC__stream_decoder_delete;	.scl	2;	.type	32;	.endef
	.def	_FLAC__stream_decoder_get_resolved_state_string;	.scl	2;	.type	32;	.endef
	.def	_divideu64.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_memcmp;	.scl	2;	.type	32;	.endef
	.def	__ZL20OPL3_ChannelSetupAlgP13_opl3_channel.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_sin;	.scl	2;	.type	32;	.endef
	.def	__ZL13MV_ServiceVocv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_MV_Shutdown.part.0;	.scl	2;	.type	32;	.endef
	.def	_MV_ErrorString;	.scl	2;	.type	32;	.endef
	.def	__Z15osdcmd_cvar_setPK13osdfuncparm_t;	.scl	2;	.type	32;	.endef
	.def	_strcasecmp;	.scl	2;	.type	32;	.endef
	.def	__ZL14it_test_memoryPKcj.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL15mod_test_memoryPKcj.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL15s3m_test_memoryPKcj.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL14xm_test_memoryPKcj.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL15mtm_test_memoryPKcj.lto_priv.0;	.scl	2;	.type	32;	.endef
