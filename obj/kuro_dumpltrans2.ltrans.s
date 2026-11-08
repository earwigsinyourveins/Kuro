	.file	"<artificial>"
	.text
	.p2align 4
	.globl	__Z9EelCommons
	.def	__Z9EelCommons;	.scl	2;	.type	32;	.endef
__Z9EelCommons:
LFB0:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	_sprite, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	$-1171354717, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movswl	16(%esp), %edx
	imull	$44, %edx, %eax
	movl	_User(,%edx,4), %ebx
	leal	(%edi,%eax), %ecx
	addl	$18, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ecx), %edx
	movb	$25, 18(%ecx)
	subl	%edi, %edx
	movl	$268440576, 96(%ebx)
	movl	8(%ecx), %eax
	movl	%eax, 256(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ecx), %edx
	subl	%edi, %edx
	movb	$35, 20(%ecx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$27, 21(%ecx)
	movl	$400, 188(%ebx)
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
	.globl	__Z17DoEelMatchPlayerZs
	.def	__Z17DoEelMatchPlayerZs;	.scl	2;	.type	32;	.endef
__Z17DoEelMatchPlayerZs:
LFB1:
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
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	_sprite, %edi
	movl	_sector, %esi
	movswl	32(%esp), %eax
	movl	%edi, 8(%esp)
	imull	$44, %eax, %ebx
	movl	_User(,%eax,4), %ecx
	movl	%esi, (%esp)
	addl	%edi, %ebx
	movl	200(%ecx), %edi
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %eax
	cmpw	$2356, 16(%eax)
	je	L5
	cmpw	$2356, 24(%eax)
	je	L5
	movl	104(%ecx), %eax
	movl	%eax, 4(%esp)
L6:
	movl	8(%edi), %edx
	leal	-2048(%edx), %esi
	testb	$-128, 12(%edi)
	je	L11
	movswl	14(%edi), %esi
	movzbl	21(%edi), %eax
	movswl	_tilesiz+2(,%esi,4), %ebp
	cmpb	$64, %al
	je	L53
	imull	%ebp, %eax
	addl	%eax, %eax
L10:
	movsbl	_picanm+2(%esi,%esi,4), %esi
	sall	$8, %esi
	subl	%esi, %eax
	leal	-2048(%edx,%eax), %esi
L11:
	movl	_randomseed, %eax
	movl	256(%ecx), %ebp
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	subl	%ebp, %esi
	leal	1(%eax,%edx,4), %eax
	movl	$21248, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L12
	sall	$14, %eax
	movl	$-2147450879, %edx
	mull	%edx
	shrl	$23, %edx
	addl	$20, %edx
	sall	$8, %edx
L12:
	movl	%esi, %eax
	negl	%eax
	cmovs	%esi, %eax
	cmpl	%edx, %eax
	jle	L13
	leal	-960(%ebp), %eax
	addl	$960, %ebp
	testl	%esi, %esi
	cmovle	%eax, %ebp
	movl	%ebp, 256(%ecx)
L13:
	movl	120(%ecx), %edx
	movl	108(%ecx), %eax
	testl	%edx, %edx
	je	L17
	subl	(%esp), %edx
	sarl	$3, %edx
	imull	$-858993459, %edx, %edx
	movl	_SectUser(,%edx,4), %edx
	testl	%edx, %edx
	je	L17
	movswl	10(%edx), %esi
	movl	%esi, %edx
	sall	$8, %esi
	leal	-2048(%esi), %ebp
	movl	%eax, %esi
	subl	%ebp, %esi
	testw	%dx, %dx
	cmovne	%esi, %eax
L17:
	movl	124(%ecx), %edx
	movswl	98(%ecx), %ebp
	movl	128(%ecx), %esi
	movl	%edx, (%esp)
	subl	%ebp, %eax
	testl	%esi, %esi
	je	L18
	cmpl	%edx, %edi
	je	L54
L18:
	leal	-1024(%eax), %esi
	cmpl	%esi, 256(%ecx)
	jle	L21
L27:
	movl	%esi, 256(%ecx)
L21:
	movswl	96(%ecx), %esi
	movl	4(%esp), %ebp
	movl	(%esp), %edx
	addl	%ebp, %esi
	cmpl	%edx, %edi
	jne	L22
	testl	%edx, %edx
	jne	L55
L22:
	leal	1024(%esi), %edi
L23:
	movl	256(%ecx), %edx
	cmpl	%edx, %edi
	cmovge	%edi, %edx
L24:
	cmpl	%eax, %edx
	movzwl	176(%ecx), %edi
	cmovle	%edx, %eax
	leal	60(%edi), %edx
	cmpl	%esi, %eax
	cmovl	%esi, %eax
	andl	$2047, %edx
	movw	%dx, 176(%ecx)
	movl	%eax, 256(%ecx)
	movswl	_sintable(%edx,%edx), %esi
	leal	8(%ebx), %edx
	subl	8(%esp), %edx
	sarl	$4, %esi
	addl	%eax, %esi
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, 8(%ebx)
	movswl	96(%ecx), %edi
	addl	104(%ecx), %edi
	leal	1024(%edi), %eax
	cmpl	%eax, %esi
	jge	L37
	addl	$2048, %edi
	movl	%edi, 256(%ecx)
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, 8(%ebx)
L37:
	addl	$12, %esp
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
L5:
	.cfi_restore_state
	movl	116(%ecx), %edx
	movl	4(%eax), %eax
	testl	%edx, %edx
	je	L7
	addl	$4096, %eax
	movl	(%esp), %esi
	movl	%eax, 4(%esp)
	movl	%eax, 104(%ecx)
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %eax
	movl	%eax, 116(%ecx)
	jmp	L6
	.p2align 4,,10
	.p2align 3
L54:
	movl	(%esi), %ebp
	subl	(%ebx), %ebp
	movl	%ebp, %edx
	movl	4(%esi), %esi
	negl	%edx
	cmovns	%edx, %ebp
	subl	4(%ebx), %esi
	movl	%esi, %edx
	negl	%edx
	cmovns	%edx, %esi
	cmpl	%esi, %ebp
	leal	0(%ebp,%esi), %edx
	cmovle	%ebp, %esi
	sarl	%esi
	subl	%esi, %edx
	cmpl	$300, %edx
	jg	L56
L51:
	movswl	96(%ecx), %edi
	addl	4(%esp), %edi
L26:
	movl	(%esp), %edx
	movl	(%edx), %ebp
	subl	(%ebx), %ebp
	movl	%ebp, %esi
	movl	4(%edx), %edx
	negl	%esi
	cmovs	%ebp, %esi
	subl	4(%ebx), %edx
	movl	%edx, %ebp
	negl	%ebp
	cmovns	%ebp, %edx
	cmpl	%edx, %esi
	leal	(%esi,%edx), %ebp
	cmovg	%edx, %esi
	sarl	%esi
	subl	%esi, %ebp
	cmpl	$300, %ebp
	jg	L30
	movl	256(%ecx), %edx
	movl	%edi, %esi
	jmp	L24
	.p2align 4,,10
	.p2align 3
L7:
	movl	104(%ecx), %esi
	leal	4095(%eax), %edx
	movl	%esi, 4(%esp)
	cmpl	%esi, %edx
	jl	L6
	addl	$4096, %eax
	movl	%eax, 4(%esp)
	movl	%eax, 104(%ecx)
	jmp	L6
	.p2align 4,,10
	.p2align 3
L56:
	movl	%eax, %esi
	cmpl	%eax, 256(%ecx)
	jg	L27
	jmp	L51
	.p2align 4,,10
	.p2align 3
L53:
	movl	%ebp, %eax
	sall	$7, %eax
	jmp	L10
	.p2align 4,,10
	.p2align 3
L30:
	movl	%edi, %esi
	jmp	L23
	.p2align 4,,10
	.p2align 3
L55:
	movl	%esi, %edi
	jmp	L26
	.cfi_endproc
LFE1:
	.p2align 4
	.globl	_BGetTime.lto_priv.0
	.def	_BGetTime.lto_priv.0;	.scl	2;	.type	32;	.endef
_BGetTime.lto_priv.0:
LFB3:
	.cfi_startproc
	movl	_totalclock, %eax
	ret
	.cfi_endproc
LFE3:
	.p2align 4
	.def	__ZL17DemoScanTotalTicsi;	.scl	3;	.type	32;	.endef
__ZL17DemoScanTotalTicsi:
LFB4:
	.cfi_startproc
	pushl	%eax
	.cfi_def_cfa_offset 8
	movl	$6188, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	.cfi_def_cfa_offset 6196
	movl	(%esp,%eax), %eax
	movb	$0, _DemoTotalTicsAvailable
	movl	$0, _DemoTotalTics
	movl	_DemoTimeEnabled, %edx
	testl	%edx, %edx
	je	L58
	movl	%edi, 6184(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	movl	_DemoFileIn, %eax
	cmpl	$-1, %eax
	je	L83
	leal	-1(%edi), %edx
	cmpl	$7, %edx
	jbe	L84
L83:
	movl	6184(%esp), %edi
	.cfi_restore 7
L58:
	addl	$6192, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L84:
	.cfi_def_cfa_offset 6196
	.cfi_offset 7, -12
	movl	%esi, 6180(%esp)
	.cfi_offset 6, -16
	call	_ktell
	movl	%eax, 24(%esp)
	movl	%eax, %esi
	testl	%eax, %eax
	js	L81
	movl	_DemoFileIn, %eax
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	cmpl	%eax, %esi
	jg	L81
	movl	%ebx, 6176(%esp)
	movl	%ebp, 6188(%esp)
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	cmpb	$0, _DemoExtendedFormat
	jne	L85
	movl	$2560, 16(%esp)
	movl	$10, %esi
	movl	$6, 20(%esp)
L60:
	movl	$0, 12(%esp)
	subl	24(%esp), %eax
	movl	%edi, 28(%esp)
	movl	%eax, %ebp
	.p2align 4
	.p2align 3
L61:
	cmpl	%esi, %ebp
	jl	L62
	movl	16(%esp), %eax
	cmpl	%ebp, %eax
	movl	%eax, %edi
	cmovg	%ebp, %edi
	movl	%edi, %eax
	cltd
	idivl	%esi
	subl	%edx, %edi
	testl	%edi, %edi
	jle	L62
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	_DemoFileIn, %eax
	movl	%edi, %ecx
	leal	32(%esp), %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	%eax, %ecx
	testl	%eax, %eax
	jle	L62
	cltd
	idivl	%esi
	testl	%edx, %edx
	jne	L62
	testl	%eax, %eax
	je	L63
	movl	20(%esp), %edx
	movl	12(%esp), %ebx
	leal	32(%esp,%edx), %edx
	addl	%ebx, %eax
	jmp	L65
	.p2align 4
	.p2align 4,,10
	.p2align 3
L87:
	addl	$1, %ebx
	addl	%esi, %edx
	cmpl	%eax, %ebx
	je	L86
L65:
	cmpl	$-1, (%edx)
	jne	L87
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	24(%esp), %edx
	xorl	%ecx, %ecx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	_DemoFileIn, %eax
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	28(%esp), %edi
	call	__Z15klseek_internaliiiPKhPiS1_
	testl	%eax, %eax
	js	L82
	movl	%ebx, %eax
	xorl	%edx, %edx
	movb	$1, _DemoTotalTicsAvailable
	movl	6176(%esp), %ebx
	.cfi_restore 3
	divl	%edi
	movl	6180(%esp), %esi
	.cfi_restore 6
	movl	6184(%esp), %edi
	.cfi_restore 7
	movl	6188(%esp), %ebp
	.cfi_restore 5
	movl	%eax, _DemoTotalTics
	jmp	L58
	.p2align 4,,10
	.p2align 3
L81:
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	6180(%esp), %esi
	.cfi_restore 6
	jmp	L83
L85:
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	$6144, 16(%esp)
	movl	$24, %esi
	movl	$20, 20(%esp)
	jmp	L60
	.p2align 4,,10
	.p2align 3
L86:
	movl	%ebx, 12(%esp)
L63:
	subl	%ecx, %ebp
	cmpl	%ecx, %edi
	jle	L61
L62:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	24(%esp), %edx
	xorl	%ecx, %ecx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	_DemoFileIn, %eax
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z15klseek_internaliiiPKhPiS1_
L82:
	movl	6176(%esp), %ebx
	.cfi_restore 3
	movl	6180(%esp), %esi
	.cfi_restore 6
	movl	6184(%esp), %edi
	.cfi_restore 7
	movl	6188(%esp), %ebp
	.cfi_restore 5
	jmp	L58
	.cfi_endproc
LFE4:
	.p2align 4
	.globl	___tcf_ZL17DemoAutoChatLines.lto_priv.0
	.def	___tcf_ZL17DemoAutoChatLines.lto_priv.0;	.scl	2;	.type	32;	.endef
___tcf_ZL17DemoAutoChatLines.lto_priv.0:
LFB9:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	__ZL17DemoAutoChatLines.lto_priv.0+4, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	__ZL17DemoAutoChatLines.lto_priv.0, %ebx
	cmpl	%ebx, %esi
	je	L89
	.p2align 4
	.p2align 3
L91:
	movl	(%ebx), %eax
	leal	8(%ebx), %edx
	cmpl	%edx, %eax
	je	L90
	call	_mi_free
L90:
	addl	$24, %ebx
	cmpl	%ebx, %esi
	jne	L91
	movl	__ZL17DemoAutoChatLines.lto_priv.0, %ebx
L89:
	testl	%ebx, %ebx
	je	L88
	movl	%ebx, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	_mi_free
	.p2align 4,,10
	.p2align 3
L88:
	.cfi_restore_state
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE9:
	.p2align 4
	.globl	___tcf_ZL11DemoOutChat.lto_priv.0
	.def	___tcf_ZL11DemoOutChat.lto_priv.0;	.scl	2;	.type	32;	.endef
___tcf_ZL11DemoOutChat.lto_priv.0:
LFB20:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	__ZL11DemoOutChat.lto_priv.0+4, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	__ZL11DemoOutChat.lto_priv.0, %ebx
	cmpl	%ebx, %esi
	je	L96
	.p2align 4
	.p2align 3
L98:
	movl	4(%ebx), %eax
	leal	12(%ebx), %edx
	cmpl	%edx, %eax
	je	L97
	call	_mi_free
L97:
	addl	$28, %ebx
	cmpl	%ebx, %esi
	jne	L98
	movl	__ZL11DemoOutChat.lto_priv.0, %ebx
L96:
	testl	%ebx, %ebx
	je	L95
	movl	%ebx, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	_mi_free
	.p2align 4,,10
	.p2align 3
L95:
	.cfi_restore_state
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE20:
	.p2align 4
	.globl	___tcf_ZL12DemoPlayChat.lto_priv.0
	.def	___tcf_ZL12DemoPlayChat.lto_priv.0;	.scl	2;	.type	32;	.endef
___tcf_ZL12DemoPlayChat.lto_priv.0:
LFB25:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	__ZL12DemoPlayChat.lto_priv.0+4, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	__ZL12DemoPlayChat.lto_priv.0, %ebx
	cmpl	%ebx, %esi
	je	L103
	.p2align 4
	.p2align 3
L105:
	movl	4(%ebx), %eax
	leal	12(%ebx), %edx
	cmpl	%edx, %eax
	je	L104
	call	_mi_free
L104:
	addl	$28, %ebx
	cmpl	%ebx, %esi
	jne	L105
	movl	__ZL12DemoPlayChat.lto_priv.0, %ebx
L103:
	testl	%ebx, %ebx
	je	L102
	movl	%ebx, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	_mi_free
	.p2align 4,,10
	.p2align 3
L102:
	.cfi_restore_state
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE25:
	.p2align 4
	.def	__ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEEiS3_ZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_SB_T0_SC_T1_T2_.isra.0;	.scl	3;	.type	32;	.endef
__ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEEiS3_ZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_SB_T0_SC_T1_T2_.isra.0:
LFB27:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	%edi, 44(%esp)
	.cfi_offset 7, -12
	movl	60(%esp), %edi
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	cmpl	%edi, 56(%esp)
	jg	L110
	movl	%esi, 40(%esp)
	.cfi_offset 6, -16
	movl	%edx, %esi
	cmpl	%edx, %eax
	je	L433
	movl	%ebx, 36(%esp)
	movl	64(%esp), %edi
	leal	12(%eax), %edx
	movl	%ebp, 48(%esp)
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	jmp	L128
	.p2align 4,,10
	.p2align 3
L112:
	cmpl	%ebx, %edx
	je	L113
	movl	%ebx, 4(%edi)
	movl	-4(%edx), %ebx
	movl	12(%edi), %eax
	movl	%ebx, 8(%edi)
	movl	(%edx), %ebx
	movl	%ebx, 12(%edi)
	testl	%ecx, %ecx
	je	L127
	movl	%ecx, -8(%edx)
	movl	%eax, (%edx)
L116:
	leal	16(%edx), %eax
	movb	$0, (%ecx)
	addl	$28, %edi
	movl	$0, -4(%edx)
	cmpl	%eax, %esi
	je	L450
	addl	$28, %edx
L128:
	movl	-12(%edx), %eax
	movl	4(%edi), %ecx
	leal	12(%edi), %ebp
	movl	%eax, (%edi)
	movl	%ecx, %eax
	movl	-8(%edx), %ebx
	cmpl	%ebp, %ecx
	jne	L112
	cmpl	%ebx, %edx
	je	L113
	movl	%ebx, 4(%edi)
	movl	-4(%edx), %eax
	movl	%eax, 8(%edi)
	movl	(%edx), %eax
	movl	%eax, 12(%edi)
L127:
	movl	%edx, -8(%edx)
	movl	%edx, %ecx
	jmp	L116
	.p2align 4,,10
	.p2align 3
L110:
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	movl	%ebx, 36(%esp)
	movl	8(%esp), %eax
	.cfi_offset 3, -20
	movl	(%esp), %ebx
	cmpl	%eax, %ebx
	je	L436
	movl	%ebp, 48(%esp)
	addl	$12, %eax
	.cfi_offset 5, -8
	movl	64(%esp), %ebp
	movl	%esi, 40(%esp)
	.cfi_offset 6, -16
	movl	%ebx, 24(%esp)
	jmp	L199
	.p2align 4,,10
	.p2align 3
L183:
	cmpl	%eax, %edi
	je	L184
	movl	%edi, 4(%ebp)
	movl	-4(%eax), %edi
	movl	12(%ebp), %edx
	movl	%edi, 8(%ebp)
	movl	(%eax), %edi
	movl	%edi, 12(%ebp)
	testl	%ecx, %ecx
	je	L198
	movl	%ecx, -8(%eax)
	movl	%edx, (%eax)
L187:
	movb	$0, (%ecx)
	leal	16(%eax), %edx
	leal	28(%ebp), %ecx
	movl	$0, -4(%eax)
	cmpl	%edx, (%esp)
	je	L451
	addl	$28, %eax
	movl	%ecx, %ebp
L199:
	movl	-12(%eax), %edx
	movl	4(%ebp), %ecx
	leal	12(%ebp), %esi
	movl	%edx, 0(%ebp)
	movl	%ecx, %edx
	movl	-8(%eax), %edi
	cmpl	%esi, %ecx
	jne	L183
	cmpl	%eax, %edi
	je	L184
	movl	%edi, 4(%ebp)
	movl	-4(%eax), %edx
	movl	%edx, 8(%ebp)
	movl	(%eax), %edx
	movl	%edx, 12(%ebp)
L198:
	movl	%eax, -8(%eax)
	movl	%eax, %ecx
	jmp	L187
	.p2align 4,,10
	.p2align 3
L184:
	leal	-12(%eax), %ecx
	cmpl	%ecx, %ebp
	je	L277
	movl	-4(%eax), %ebx
	movl	%ebx, 16(%esp)
	testl	%ebx, %ebx
	je	L188
	cmpl	$1, %ebx
	je	L452
	movl	16(%esp), %ebx
	cmpl	$16, %ebx
	jb	L453
	movl	16(%esp), %ebx
	movl	-16(%eax,%ebx), %edi
	leal	-1(%ebx), %ecx
	movl	%edi, -16(%edx,%ebx)
	movl	-12(%eax,%ebx), %edi
	movl	%edi, -12(%edx,%ebx)
	movl	-8(%eax,%ebx), %edi
	movl	%edi, -8(%edx,%ebx)
	movl	-4(%eax,%ebx), %edi
	movl	%edi, -4(%edx,%ebx)
	cmpl	$16, %ecx
	jb	L445
	movl	%ebp, 16(%esp)
	andl	$-16, %ecx
	movl	(%esp), %ebx
	movl	%esi, 28(%esp)
	movl	%ecx, 32(%esp)
	xorl	%ecx, %ecx
L196:
	movl	12(%eax,%ecx), %esi
	movl	4(%eax,%ecx), %ebp
	movl	8(%eax,%ecx), %edi
	movl	%esi, (%esp)
	movl	(%eax,%ecx), %esi
	movl	%ebp, 4(%edx,%ecx)
	movl	%esi, (%edx,%ecx)
	movl	%edi, 8(%edx,%ecx)
	movl	(%esp), %esi
	movl	%esi, 12(%edx,%ecx)
	addl	$16, %ecx
	cmpl	32(%esp), %ecx
	jb	L196
	movl	16(%esp), %ebp
	movl	28(%esp), %esi
	movl	%ebx, (%esp)
L445:
	movl	-4(%eax), %ebx
	movl	4(%ebp), %edx
	movl	%ebx, 16(%esp)
L188:
	movl	16(%esp), %edi
	movb	$0, (%edx,%edi)
	movl	%edi, 8(%ebp)
	movl	-8(%eax), %ecx
	jmp	L187
	.p2align 4,,10
	.p2align 3
L113:
	leal	-12(%edx), %ecx
	cmpl	%ecx, %edi
	je	L271
	movl	-4(%edx), %ebp
	testl	%ebp, %ebp
	je	L117
	cmpl	$1, %ebp
	je	L454
	cmpl	$16, %ebp
	jb	L455
	movl	-16(%edx,%ebp), %ebx
	leal	-1(%ebp), %ecx
	movl	%ebx, -16(%eax,%ebp)
	movl	-12(%edx,%ebp), %ebx
	movl	%ebx, -12(%eax,%ebp)
	movl	-8(%edx,%ebp), %ebx
	movl	%ebx, -8(%eax,%ebp)
	movl	-4(%edx,%ebp), %ebx
	movl	%ebx, -4(%eax,%ebp)
	cmpl	$16, %ecx
	jb	L441
	movl	%edi, 16(%esp)
	andl	$-16, %ecx
	movl	%ecx, 24(%esp)
	xorl	%ecx, %ecx
L125:
	movl	12(%edx,%ecx), %ebx
	movl	4(%edx,%ecx), %ebp
	movl	8(%edx,%ecx), %edi
	movl	%ebx, 28(%esp)
	movl	(%edx,%ecx), %ebx
	movl	%ebp, 4(%eax,%ecx)
	movl	%ebx, (%eax,%ecx)
	movl	%edi, 8(%eax,%ecx)
	movl	28(%esp), %ebx
	movl	%ebx, 12(%eax,%ecx)
	addl	$16, %ecx
	cmpl	24(%esp), %ecx
	jb	L125
	movl	16(%esp), %edi
L441:
	movl	4(%edi), %eax
	movl	-4(%edx), %ebp
L117:
	movb	$0, (%eax,%ebp)
	movl	%ebp, 8(%edi)
	movl	-8(%edx), %ecx
	jmp	L116
	.p2align 4,,10
	.p2align 3
L450:
	movl	4(%esp), %eax
	movl	8(%esp), %ebp
	cmpl	%edi, 64(%esp)
	je	L440
	movl	%edi, 8(%esp)
	movl	64(%esp), %edx
	jmp	L129
	.p2align 4,,10
	.p2align 3
L164:
	leal	12(%eax), %edi
	movl	%esi, (%eax)
	leal	12(%ebp), %esi
	movl	4(%ebp), %ebx
	cmpl	%edi, %ecx
	je	L456
	cmpl	%esi, %ebx
	je	L131
	movl	%ebx, 4(%eax)
	movl	8(%ebp), %ebx
	movl	12(%eax), %edi
	movl	%ebx, 8(%eax)
	movl	12(%ebp), %ebx
	movl	%ebx, 12(%eax)
	testl	%ecx, %ecx
	je	L145
	movl	%ecx, 4(%ebp)
	movl	%edi, 12(%ebp)
L134:
	movb	$0, (%ecx)
	addl	$28, %ebp
	addl	$28, %eax
	movl	$0, -20(%ebp)
	cmpl	8(%esp), %edx
	je	L440
L129:
	cmpl	%ebp, (%esp)
	je	L163
	movl	4(%eax), %ecx
	movl	0(%ebp), %esi
	movl	(%edx), %ebx
	movl	%ecx, 4(%esp)
	cmpl	%ebx, %esi
	jb	L164
	leal	12(%eax), %edi
	movl	%ebx, (%eax)
	leal	12(%edx), %esi
	movl	4(%edx), %ebx
	cmpl	%edi, %ecx
	je	L457
	cmpl	%esi, %ebx
	je	L148
	movl	%ebx, 4(%eax)
	movl	8(%edx), %ebx
	movl	12(%eax), %edi
	movl	%ebx, 8(%eax)
	movl	12(%edx), %ebx
	movl	%ebx, 12(%eax)
	testl	%ecx, %ecx
	je	L162
	movl	%ecx, 4(%edx)
	movl	%edi, 12(%edx)
L151:
	movb	$0, (%ecx)
	addl	$28, %edx
	addl	$28, %eax
	movl	$0, -20(%edx)
	cmpl	8(%esp), %edx
	jne	L129
	.p2align 4
	.p2align 3
L440:
	movl	36(%esp), %ebx
	.cfi_restore 3
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	48(%esp), %ebp
	.cfi_restore 5
L109:
	movl	44(%esp), %edi
	addl	$52, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L457:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpl	%esi, %ebx
	je	L148
	movl	%ebx, 4(%eax)
	movl	8(%edx), %ecx
	movl	%ecx, 8(%eax)
	movl	12(%edx), %ecx
	movl	%ecx, 12(%eax)
L162:
	movl	%esi, 4(%edx)
	movl	%esi, %ecx
	jmp	L151
	.p2align 4,,10
	.p2align 3
L456:
	cmpl	%esi, %ebx
	je	L131
	movl	%ebx, 4(%eax)
	movl	8(%ebp), %ecx
	movl	%ecx, 8(%eax)
	movl	12(%ebp), %ecx
	movl	%ecx, 12(%eax)
L145:
	movl	%esi, 4(%ebp)
	movl	%esi, %ecx
	jmp	L134
	.p2align 4,,10
	.p2align 3
L451:
	movl	24(%esp), %edi
	movl	8(%esp), %edx
	cmpl	%edx, 4(%esp)
	je	L458
	cmpl	%ecx, 64(%esp)
	je	L440
	movl	8(%esp), %edx
	subl	$8, %eax
	subl	$28, %edx
	jmp	L218
	.p2align 4,,10
	.p2align 3
L461:
	leal	8(%eax), %edi
	movl	%esi, -4(%eax)
	leal	12(%edx), %esi
	movl	4(%edx), %ebx
	cmpl	%edi, %ecx
	je	L459
	cmpl	%esi, %ebx
	je	L221
	movl	%ebx, (%eax)
	movl	8(%edx), %ebx
	movl	8(%eax), %edi
	movl	%ebx, 4(%eax)
	movl	12(%edx), %ebx
	movl	%ebx, 8(%eax)
	testl	%ecx, %ecx
	je	L235
	movl	%ecx, 4(%edx)
	movl	%edi, 12(%edx)
L224:
	movb	$0, (%ecx)
	movl	$0, 8(%edx)
	cmpl	4(%esp), %edx
	je	L460
L236:
	subl	$28, %edx
L254:
	subl	$28, %eax
L218:
	movl	(%eax), %ecx
	movl	0(%ebp), %ebx
	movl	(%edx), %esi
	movl	%ecx, (%esp)
	cmpl	%esi, %ebx
	jb	L461
	leal	8(%eax), %edi
	movl	%ebx, -4(%eax)
	leal	12(%ebp), %esi
	movl	4(%ebp), %ebx
	cmpl	%edi, %ecx
	je	L462
	cmpl	%esi, %ebx
	je	L256
	movl	%ebx, (%eax)
	movl	8(%ebp), %ebx
	movl	8(%eax), %edi
	movl	%ebx, 4(%eax)
	movl	12(%ebp), %ebx
	movl	%ebx, 8(%eax)
	testl	%ecx, %ecx
	je	L270
	movl	%ecx, 4(%ebp)
	movl	%edi, 12(%ebp)
L259:
	movb	$0, (%ecx)
	movl	$0, 8(%ebp)
	cmpl	%ebp, 64(%esp)
	je	L440
	subl	$28, %ebp
	jmp	L254
	.p2align 4,,10
	.p2align 3
L459:
	cmpl	%esi, %ebx
	je	L221
	movl	%ebx, (%eax)
	movl	8(%edx), %ecx
	movl	%ecx, 4(%eax)
	movl	12(%edx), %ecx
	movl	%ecx, 8(%eax)
L235:
	movl	%esi, %ecx
	movl	%esi, 4(%edx)
	movb	$0, (%ecx)
	movl	$0, 8(%edx)
	cmpl	4(%esp), %edx
	jne	L236
L460:
	leal	28(%ebp), %edx
	cmpl	%edx, 64(%esp)
	je	L440
	movl	64(%esp), %esi
	subl	$4, %eax
	leal	12(%ebp), %edx
	jmp	L253
	.p2align 4,,10
	.p2align 3
L237:
	cmpl	%ebp, %edx
	je	L238
	movl	%ebp, 4(%eax)
	movl	-4(%edx), %ecx
	movl	12(%eax), %ebx
	movl	%ecx, 8(%eax)
	movl	(%edx), %ecx
	movl	%ecx, 12(%eax)
	testl	%edi, %edi
	je	L252
	movl	%ebx, (%edx)
	leal	-12(%edx), %ebx
	movl	%edi, -8(%edx)
	movl	%ebx, (%esp)
L241:
	movb	$0, (%edi)
	movl	$0, -4(%edx)
	cmpl	(%esp), %esi
	je	L440
	subl	$28, %edx
L253:
	movl	-12(%edx), %ecx
	subl	$28, %eax
	movl	4(%eax), %edi
	movl	%ecx, (%eax)
	leal	12(%eax), %ecx
	movl	-8(%edx), %ebp
	movl	%edi, %ebx
	cmpl	%ecx, %edi
	jne	L237
	cmpl	%ebp, %edx
	je	L238
	movl	%ebp, 4(%eax)
	movl	-4(%edx), %ecx
	movl	%ecx, 8(%eax)
	movl	(%edx), %ecx
	movl	%ecx, 12(%eax)
L252:
	leal	-12(%edx), %ebx
	movl	%edx, -8(%edx)
	movl	%edx, %edi
	movl	%ebx, (%esp)
	jmp	L241
	.p2align 4,,10
	.p2align 3
L462:
	cmpl	%esi, %ebx
	je	L256
	movl	%ebx, (%eax)
	movl	8(%ebp), %ecx
	movl	%ecx, 4(%eax)
	movl	12(%ebp), %ecx
	movl	%ecx, 8(%eax)
L270:
	movl	%esi, 4(%ebp)
	movl	%esi, %ecx
	jmp	L259
	.p2align 4,,10
	.p2align 3
L221:
	leal	4(%edx), %ecx
	cmpl	%ecx, %eax
	je	L281
	movl	8(%edx), %ebx
	movl	%ebx, 8(%esp)
	testl	%ebx, %ebx
	je	L225
	cmpl	$1, %ebx
	je	L463
	movl	8(%esp), %ebx
	cmpl	$16, %ebx
	jnb	L228
	andl	$8, %ebx
	jne	L464
	testb	$4, 8(%esp)
	jne	L465
	movl	8(%esp), %ecx
	testl	%ecx, %ecx
	je	L225
	movzbl	(%esi), %ebx
	movl	(%esp), %edi
	andl	$2, %ecx
	movb	%bl, (%edi)
	jne	L423
L447:
	movl	(%eax), %esi
	movl	%esi, (%esp)
	movl	8(%edx), %esi
	movl	%esi, 8(%esp)
	.p2align 4
	.p2align 3
L225:
	movl	8(%esp), %esi
	movl	(%esp), %edi
	movb	$0, (%edi,%esi)
	movl	%esi, 4(%eax)
	movl	4(%edx), %ecx
	jmp	L224
	.p2align 4,,10
	.p2align 3
L256:
	leal	4(%ebp), %ecx
	cmpl	%ecx, %eax
	je	L284
	movl	8(%ebp), %edi
	movl	%edi, 8(%esp)
	testl	%edi, %edi
	je	L260
	cmpl	$1, %edi
	je	L466
	movl	8(%esp), %ebx
	cmpl	$16, %ebx
	jnb	L263
	andl	$8, %ebx
	jne	L467
	testb	$4, 8(%esp)
	jne	L468
	movl	8(%esp), %ecx
	testl	%ecx, %ecx
	je	L260
	movzbl	(%esi), %ebx
	movl	(%esp), %edi
	andl	$2, %ecx
	movb	%bl, (%edi)
	jne	L429
L449:
	movl	(%eax), %esi
	movl	%esi, (%esp)
	movl	8(%ebp), %esi
	movl	%esi, 8(%esp)
	.p2align 4
	.p2align 3
L260:
	movl	8(%esp), %esi
	movl	(%esp), %edi
	movb	$0, (%edi,%esi)
	movl	%esi, 4(%eax)
	movl	4(%ebp), %ecx
	jmp	L259
	.p2align 4,,10
	.p2align 3
L148:
	cmpl	%eax, %edx
	je	L274
	movl	8(%edx), %ebx
	movl	%ebx, 16(%esp)
	testl	%ebx, %ebx
	je	L152
	cmpl	$1, %ebx
	je	L469
	movl	16(%esp), %edi
	cmpl	$16, %edi
	jnb	L155
	andl	$8, %edi
	jne	L470
	testb	$4, 16(%esp)
	jne	L471
	movl	16(%esp), %ecx
	testl	%ecx, %ecx
	je	L152
	movzbl	(%esi), %ebx
	movl	4(%esp), %edi
	andl	$2, %ecx
	movb	%bl, (%edi)
	jne	L410
L443:
	movl	4(%eax), %esi
	movl	%esi, 4(%esp)
	movl	8(%edx), %esi
	movl	%esi, 16(%esp)
	.p2align 4
	.p2align 3
L152:
	movl	16(%esp), %esi
	movl	4(%esp), %edi
	movb	$0, (%edi,%esi)
	movl	%esi, 8(%eax)
	movl	4(%edx), %ecx
	jmp	L151
	.p2align 4,,10
	.p2align 3
L131:
	cmpl	%eax, %ebp
	je	L273
	movl	8(%ebp), %edi
	movl	%edi, 16(%esp)
	testl	%edi, %edi
	je	L135
	cmpl	$1, %edi
	je	L472
	movl	16(%esp), %ebx
	cmpl	$16, %ebx
	jnb	L138
	andl	$8, %ebx
	jne	L473
	testb	$4, 16(%esp)
	jne	L474
	movl	16(%esp), %ecx
	testl	%ecx, %ecx
	je	L135
	movzbl	(%esi), %ebx
	movl	4(%esp), %edi
	andl	$2, %ecx
	movb	%bl, (%edi)
	jne	L407
L442:
	movl	8(%ebp), %esi
	movl	%esi, 16(%esp)
	movl	4(%eax), %esi
	movl	%esi, 4(%esp)
	.p2align 4
	.p2align 3
L135:
	movl	16(%esp), %esi
	movl	4(%esp), %edi
	movb	$0, (%edi,%esi)
	movl	%esi, 8(%eax)
	movl	4(%ebp), %ecx
	jmp	L134
	.p2align 4,,10
	.p2align 3
L163:
	movl	8(%esp), %edi
	movl	%edx, 64(%esp)
	cmpl	%edx, %edi
	je	L440
	addl	$12, %edx
	jmp	L182
	.p2align 4,,10
	.p2align 3
L166:
	cmpl	%esi, %edx
	je	L167
	movl	%esi, 4(%eax)
	movl	-4(%edx), %ecx
	movl	12(%eax), %ebp
	movl	%ecx, 8(%eax)
	movl	(%edx), %ecx
	movl	%ecx, 12(%eax)
	testl	%ebx, %ebx
	je	L181
	movl	%ebx, -8(%edx)
	movl	%ebp, (%edx)
L170:
	leal	16(%edx), %ecx
	movb	$0, (%ebx)
	addl	$28, %eax
	movl	$0, -4(%edx)
	cmpl	%ecx, %edi
	je	L440
	addl	$28, %edx
L182:
	movl	-12(%edx), %ecx
	movl	4(%eax), %ebx
	leal	12(%eax), %ebp
	movl	%ecx, (%eax)
	movl	%ebx, %ecx
	movl	-8(%edx), %esi
	cmpl	%ebp, %ebx
	jne	L166
	cmpl	%esi, %edx
	je	L167
	movl	%esi, 4(%eax)
	movl	-4(%edx), %ecx
	movl	%ecx, 8(%eax)
	movl	(%edx), %ecx
	movl	%ecx, 12(%eax)
L181:
	movl	%edx, -8(%edx)
	movl	%edx, %ebx
	jmp	L170
	.p2align 4,,10
	.p2align 3
L167:
	leal	-12(%edx), %ebx
	cmpl	%ebx, %eax
	je	L275
	movl	-4(%edx), %ebp
	testl	%ebp, %ebp
	je	L171
	cmpl	$1, %ebp
	je	L475
	cmpl	$16, %ebp
	jnb	L174
	testl	$8, %ebp
	jne	L476
	testl	$4, %ebp
	jne	L477
	testl	%ebp, %ebp
	je	L171
	movzbl	(%edx), %ebx
	movb	%bl, (%ecx)
	testl	$2, %ebp
	jne	L414
	.p2align 4
	.p2align 3
L444:
	movl	4(%eax), %ecx
	movl	-4(%edx), %ebp
L171:
	movb	$0, (%ecx,%ebp)
	movl	%ebp, 8(%eax)
	movl	-8(%edx), %ebx
	jmp	L170
	.p2align 4,,10
	.p2align 3
L463:
	movl	(%esp), %edi
	movzbl	12(%edx), %ecx
	movb	%cl, (%edi)
	movl	(%eax), %edi
	movl	8(%edx), %esi
	movl	%edi, (%esp)
	movl	%esi, 8(%esp)
	jmp	L225
	.p2align 4,,10
	.p2align 3
L466:
	movl	(%esp), %edi
	movzbl	12(%ebp), %ecx
	movb	%cl, (%edi)
	movl	(%eax), %edi
	movl	8(%ebp), %esi
	movl	%edi, (%esp)
	movl	%esi, 8(%esp)
	jmp	L260
L433:
	.cfi_restore 3
	.cfi_restore 5
	movl	40(%esp), %esi
	.cfi_restore 6
	jmp	L109
L436:
	.cfi_offset 3, -20
	movl	36(%esp), %ebx
	.cfi_restore 3
	jmp	L109
L455:
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	testl	$8, %ebp
	jne	L478
	testl	$4, %ebp
	jne	L479
	testl	%ebp, %ebp
	je	L117
	movzbl	(%edx), %ebx
	movb	%bl, (%eax)
	testl	$2, %ebp
	je	L441
	movzwl	-2(%edx,%ebp), %ebx
	movw	%bx, -2(%eax,%ebp)
	movl	4(%edi), %eax
	movl	-4(%edx), %ebp
	jmp	L117
	.p2align 4,,10
	.p2align 3
L453:
	andl	$8, %ebx
	jne	L480
	testb	$4, 16(%esp)
	jne	L481
	movl	16(%esp), %ebx
	testl	%ebx, %ebx
	je	L188
	movzbl	(%eax), %ecx
	andl	$2, %ebx
	movb	%cl, (%edx)
	je	L445
	movl	16(%esp), %ebx
	movzwl	-2(%eax,%ebx), %edi
	movw	%di, -2(%edx,%ebx)
	movl	-4(%eax), %ebx
	movl	4(%ebp), %edx
	movl	%ebx, 16(%esp)
	jmp	L188
	.p2align 4,,10
	.p2align 3
L238:
	leal	-12(%edx), %edi
	movl	%edi, (%esp)
	cmpl	%edi, %eax
	je	L282
	movl	-4(%edx), %edi
	movl	%edi, 4(%esp)
	testl	%edi, %edi
	je	L242
	cmpl	$1, %edi
	je	L482
	movl	4(%esp), %edi
	cmpl	$16, %edi
	jnb	L245
	andl	$8, %edi
	jne	L483
	testb	$4, 4(%esp)
	jne	L484
	movl	4(%esp), %edi
	testl	%edi, %edi
	je	L242
	movzbl	(%edx), %ecx
	andl	$2, %edi
	movb	%cl, (%ebx)
	jne	L426
	.p2align 4
	.p2align 3
L448:
	movl	-4(%edx), %edi
	movl	4(%eax), %ebx
	movl	%edi, 4(%esp)
L242:
	movl	4(%esp), %edi
	movb	$0, (%ebx,%edi)
	movl	%edi, 8(%eax)
	movl	-8(%edx), %edi
	jmp	L241
	.p2align 4,,10
	.p2align 3
L454:
	movzbl	(%edx), %ecx
	movb	%cl, (%eax)
	movl	-4(%edx), %ebp
	movl	4(%edi), %eax
	movb	$0, (%eax,%ebp)
	movl	%ebp, 8(%edi)
	movl	-8(%edx), %ecx
	jmp	L116
	.p2align 4,,10
	.p2align 3
L452:
	movzbl	(%eax), %ecx
	movb	%cl, (%edx)
	movl	-4(%eax), %ebx
	movl	4(%ebp), %edx
	movl	%ebx, 16(%esp)
	movl	16(%esp), %edi
	movb	$0, (%edx,%edi)
	movl	%edi, 8(%ebp)
	movl	-8(%eax), %ecx
	jmp	L187
	.p2align 4,,10
	.p2align 3
L277:
	movl	%edi, %ecx
	jmp	L187
	.p2align 4,,10
	.p2align 3
L271:
	movl	%ebx, %ecx
	jmp	L116
L281:
	movl	%ebx, %ecx
	jmp	L224
L284:
	movl	%ebx, %ecx
	jmp	L259
L475:
	movzbl	(%edx), %ebx
	movb	%bl, (%ecx)
	movl	4(%eax), %ecx
	movl	-4(%edx), %ebp
	jmp	L171
L469:
	movl	4(%esp), %esi
	movzbl	12(%edx), %ecx
	movb	%cl, (%esi)
	movl	4(%eax), %esi
	movl	%esi, 4(%esp)
	movl	8(%edx), %esi
	movl	%esi, 16(%esp)
	jmp	L152
L472:
	movl	4(%esp), %esi
	movzbl	12(%ebp), %ecx
	movb	%cl, (%esi)
	movl	8(%ebp), %esi
	movl	%esi, 16(%esp)
	movl	4(%eax), %esi
	movl	%esi, 4(%esp)
	jmp	L135
L228:
	movl	8(%esp), %ecx
	movl	(%esp), %edi
	movl	-16(%esi,%ecx), %ebx
	movl	%ebx, -16(%edi,%ecx)
	movl	-12(%esi,%ecx), %ebx
	movl	%ebx, -12(%edi,%ecx)
	movl	-8(%esi,%ecx), %ebx
	movl	%ebx, -8(%edi,%ecx)
	movl	-4(%esi,%ecx), %ebx
	movl	%ebx, -4(%edi,%ecx)
	subl	$1, %ecx
	cmpl	$16, %ecx
	jb	L447
	movl	%ebp, 8(%esp)
	andl	$-16, %ecx
	movl	%edx, 16(%esp)
	movl	(%esp), %edx
	movl	%ecx, 24(%esp)
	xorl	%ecx, %ecx
L233:
	movl	12(%esi,%ecx), %ebx
	movl	8(%esi,%ecx), %edi
	movl	4(%esi,%ecx), %ebp
	movl	%ebx, (%esp)
	movl	(%esi,%ecx), %ebx
	movl	%ebp, 4(%edx,%ecx)
	movl	%ebx, (%edx,%ecx)
	movl	%edi, 8(%edx,%ecx)
	movl	(%esp), %edi
	movl	%edi, 12(%edx,%ecx)
	addl	$16, %ecx
	cmpl	24(%esp), %ecx
	jb	L233
	movl	16(%esp), %edx
	movl	(%eax), %edi
	movl	8(%esp), %ebp
	movl	8(%edx), %esi
	movl	%edi, (%esp)
	movl	%esi, 8(%esp)
	jmp	L225
L263:
	movl	8(%esp), %ecx
	movl	(%esp), %edi
	movl	-16(%esi,%ecx), %ebx
	movl	%ebx, -16(%edi,%ecx)
	movl	-12(%esi,%ecx), %ebx
	movl	%ebx, -12(%edi,%ecx)
	movl	-8(%esi,%ecx), %ebx
	movl	%ebx, -8(%edi,%ecx)
	movl	-4(%esi,%ecx), %ebx
	movl	%ebx, -4(%edi,%ecx)
	subl	$1, %ecx
	cmpl	$16, %ecx
	jb	L449
	movl	%ebp, 8(%esp)
	andl	$-16, %ecx
	movl	%edx, 16(%esp)
	movl	(%esp), %edx
	movl	%ecx, 24(%esp)
	xorl	%ecx, %ecx
L268:
	movl	12(%esi,%ecx), %ebx
	movl	8(%esi,%ecx), %edi
	movl	4(%esi,%ecx), %ebp
	movl	%ebx, (%esp)
	movl	(%esi,%ecx), %ebx
	movl	%ebp, 4(%edx,%ecx)
	movl	%ebx, (%edx,%ecx)
	movl	%edi, 8(%edx,%ecx)
	movl	(%esp), %edi
	movl	%edi, 12(%edx,%ecx)
	addl	$16, %ecx
	cmpl	24(%esp), %ecx
	jb	L268
	movl	8(%esp), %ebp
	movl	(%eax), %edi
	movl	16(%esp), %edx
	movl	8(%ebp), %esi
	movl	%edi, (%esp)
	movl	%esi, 8(%esp)
	jmp	L260
L174:
	movl	-16(%edx,%ebp), %ebx
	leal	-1(%ebp), %esi
	movl	%ebx, -16(%ecx,%ebp)
	movl	-12(%edx,%ebp), %ebx
	movl	%ebx, -12(%ecx,%ebp)
	movl	-8(%edx,%ebp), %ebx
	movl	%ebx, -8(%ecx,%ebp)
	movl	-4(%edx,%ebp), %ebx
	movl	%ebx, -4(%ecx,%ebp)
	cmpl	$16, %esi
	jb	L444
	movl	%eax, (%esp)
	andl	$-16, %esi
	xorl	%ebx, %ebx
	movl	%edi, 4(%esp)
L179:
	movl	8(%edx,%ebx), %eax
	movl	4(%edx,%ebx), %edi
	movl	%eax, 8(%esp)
	movl	(%edx,%ebx), %eax
	movl	12(%edx,%ebx), %ebp
	movl	%edi, 4(%ecx,%ebx)
	movl	%eax, (%ecx,%ebx)
	movl	8(%esp), %eax
	movl	%ebp, 12(%ecx,%ebx)
	movl	%eax, 8(%ecx,%ebx)
	addl	$16, %ebx
	cmpl	%esi, %ebx
	jb	L179
	movl	(%esp), %eax
	movl	4(%esp), %edi
	jmp	L444
L155:
	movl	16(%esp), %ecx
	movl	4(%esp), %edi
	movl	-16(%esi,%ecx), %ebx
	movl	%ebx, -16(%edi,%ecx)
	movl	-12(%esi,%ecx), %ebx
	movl	%ebx, -12(%edi,%ecx)
	movl	-8(%esi,%ecx), %ebx
	movl	%ebx, -8(%edi,%ecx)
	movl	-4(%esi,%ecx), %ebx
	movl	%ebx, -4(%edi,%ecx)
	subl	$1, %ecx
	cmpl	$16, %ecx
	jb	L443
	movl	%ebp, 24(%esp)
	andl	$-16, %ecx
	movl	%eax, 16(%esp)
	movl	4(%esp), %eax
	movl	%ecx, 28(%esp)
	xorl	%ecx, %ecx
L160:
	movl	12(%esi,%ecx), %ebx
	movl	4(%esi,%ecx), %ebp
	movl	8(%esi,%ecx), %edi
	movl	%ebx, 4(%esp)
	movl	(%esi,%ecx), %ebx
	movl	%ebp, 4(%eax,%ecx)
	movl	%ebx, (%eax,%ecx)
	movl	%edi, 8(%eax,%ecx)
	movl	4(%esp), %ebx
	movl	%ebx, 12(%eax,%ecx)
	addl	$16, %ecx
	cmpl	28(%esp), %ecx
	jb	L160
	movl	16(%esp), %eax
	movl	8(%edx), %esi
	movl	24(%esp), %ebp
	movl	4(%eax), %edi
	movl	%esi, 16(%esp)
	movl	%edi, 4(%esp)
	jmp	L152
L138:
	movl	16(%esp), %ecx
	movl	4(%esp), %edi
	movl	-16(%esi,%ecx), %ebx
	movl	%ebx, -16(%edi,%ecx)
	movl	-12(%esi,%ecx), %ebx
	movl	%ebx, -12(%edi,%ecx)
	movl	-8(%esi,%ecx), %ebx
	movl	%ebx, -8(%edi,%ecx)
	movl	-4(%esi,%ecx), %ebx
	movl	%ebx, -4(%edi,%ecx)
	subl	$1, %ecx
	cmpl	$16, %ecx
	jb	L442
	movl	%ebp, 24(%esp)
	andl	$-16, %ecx
	movl	%eax, 16(%esp)
	movl	4(%esp), %eax
	movl	%ecx, 28(%esp)
	xorl	%ecx, %ecx
L143:
	movl	12(%esi,%ecx), %ebx
	movl	8(%esi,%ecx), %edi
	movl	4(%esi,%ecx), %ebp
	movl	%ebx, 4(%esp)
	movl	(%esi,%ecx), %ebx
	movl	%ebp, 4(%eax,%ecx)
	movl	%ebx, (%eax,%ecx)
	movl	%edi, 8(%eax,%ecx)
	movl	4(%esp), %edi
	movl	%edi, 12(%eax,%ecx)
	addl	$16, %ecx
	cmpl	28(%esp), %ecx
	jb	L143
	movl	16(%esp), %eax
	movl	24(%esp), %ebp
	movl	4(%eax), %edi
	movl	8(%ebp), %esi
	movl	%edi, 4(%esp)
	movl	%esi, 16(%esp)
	jmp	L135
L245:
	movl	4(%esp), %edi
	movl	-16(%edx,%edi), %ebp
	movl	%ebp, -16(%ebx,%edi)
	movl	-12(%edx,%edi), %ebp
	movl	%ebp, -12(%ebx,%edi)
	movl	-8(%edx,%edi), %ebp
	movl	%ebp, -8(%ebx,%edi)
	movl	-4(%edx,%edi), %ebp
	movl	%ebp, -4(%ebx,%edi)
	subl	$1, %edi
	cmpl	$16, %edi
	jb	L448
	andl	$-16, %edi
	movl	(%esp), %ecx
	movl	%edi, 4(%esp)
	xorl	%edi, %edi
L250:
	movl	4(%edx,%edi), %ebp
	movl	%ebp, (%esp)
	movl	8(%edx,%edi), %ebp
	movl	%ebp, 8(%esp)
	movl	12(%edx,%edi), %ebp
	movl	%ebp, 16(%esp)
	movl	(%edx,%edi), %ebp
	movl	%ebp, (%ebx,%edi)
	movl	(%esp), %ebp
	movl	%ebp, 4(%ebx,%edi)
	movl	8(%esp), %ebp
	movl	%ebp, 8(%ebx,%edi)
	movl	16(%esp), %ebp
	movl	%ebp, 12(%ebx,%edi)
	movl	4(%esp), %ebp
	addl	$16, %edi
	cmpl	%ebp, %edi
	jb	L250
	movl	%ecx, (%esp)
	jmp	L448
L478:
	movl	(%edx), %ecx
	movl	4(%edx), %ebx
	movl	%ecx, (%eax)
	movl	%ebx, 4(%eax)
	movl	-8(%edx,%ebp), %ecx
	movl	-4(%edx,%ebp), %ebx
	movl	%ecx, -8(%eax,%ebp)
	movl	%ebx, -4(%eax,%ebp)
	movl	4(%edi), %eax
	movl	-4(%edx), %ebp
	jmp	L117
L480:
	movl	(%eax), %ecx
	movl	4(%eax), %ebx
	movl	%ecx, (%edx)
	movl	%ebx, 4(%edx)
	movl	16(%esp), %edi
	movl	-4(%eax,%edi), %ebx
	movl	-8(%eax,%edi), %ecx
	movl	%ebx, -4(%edx,%edi)
	movl	%ecx, -8(%edx,%edi)
	movl	-4(%eax), %ebx
	movl	4(%ebp), %edx
	movl	%ebx, 16(%esp)
	jmp	L188
L458:
	cmpl	%ecx, 64(%esp)
	je	L440
	movl	%edi, (%esp)
	jmp	L217
	.p2align 4,,10
	.p2align 3
L201:
	cmpl	%eax, %esi
	je	L202
	movl	(%esp), %edi
	movl	%eax, 4(%edi)
	movl	-4(%esi), %eax
	movl	12(%edi), %edx
	movl	%eax, 8(%edi)
	movl	(%esi), %eax
	movl	%eax, 12(%edi)
	testl	%ebp, %ebp
	je	L216
	movl	%ebp, -8(%esi)
	movl	%edx, (%esi)
	leal	-12(%esi), %edx
L205:
	movb	$0, 0(%ebp)
	movl	$0, -4(%esi)
	cmpl	%edx, 64(%esp)
	je	L440
	subl	$28, %esi
L217:
	subl	$28, (%esp)
	movl	(%esp), %edi
	movl	-12(%esi), %eax
	movl	4(%edi), %ebp
	leal	12(%edi), %edx
	movl	%eax, (%edi)
	movl	-8(%esi), %eax
	movl	%ebp, %ecx
	cmpl	%edx, %ebp
	jne	L201
	cmpl	%eax, %esi
	je	L202
	movl	(%esp), %ebx
	movl	%eax, 4(%ebx)
	movl	-4(%esi), %eax
	movl	%eax, 8(%ebx)
	movl	(%esi), %eax
	movl	%eax, 12(%ebx)
L216:
	movl	%esi, -8(%esi)
	movl	%esi, %ebp
	leal	-12(%esi), %edx
	jmp	L205
	.p2align 4,,10
	.p2align 3
L202:
	leal	-12(%esi), %edx
	cmpl	%edx, (%esp)
	je	L279
	movl	-4(%esi), %ebx
	movl	%ebx, 4(%esp)
	testl	%ebx, %ebx
	je	L206
	cmpl	$1, %ebx
	je	L485
	movl	4(%esp), %ebx
	cmpl	$16, %ebx
	jnb	L209
	andl	$8, %ebx
	jne	L486
	testb	$4, 4(%esp)
	jne	L487
	movl	4(%esp), %edi
	testl	%edi, %edi
	je	L206
	movzbl	(%eax), %ebx
	andl	$2, %edi
	movb	%bl, (%ecx)
	jne	L420
L446:
	movl	(%esp), %eax
	movl	4(%eax), %ecx
	movl	-4(%esi), %eax
	movl	%eax, 4(%esp)
L206:
	movl	4(%esp), %eax
	movl	(%esp), %edi
	movb	$0, (%ecx,%eax)
	movl	%eax, 8(%edi)
	movl	-8(%esi), %ebp
	jmp	L205
L482:
	movzbl	(%edx), %ecx
	movb	%cl, (%ebx)
	movl	-4(%edx), %edi
	movl	4(%eax), %ebx
	movl	%edi, 4(%esp)
	jmp	L242
L275:
	movl	%esi, %ebx
	jmp	L170
L273:
	movl	%ebx, %ecx
	jmp	L134
L274:
	movl	%ebx, %ecx
	jmp	L151
L282:
	movl	%ebp, %edi
	jmp	L241
L485:
	movzbl	(%eax), %eax
	movb	%al, (%ecx)
	movl	(%esp), %eax
	movl	4(%eax), %ecx
	movl	-4(%esi), %eax
	movl	%eax, 4(%esp)
	jmp	L206
L279:
	movl	%eax, %ebp
	jmp	L205
L209:
	movl	4(%esp), %ebx
	movl	-16(%eax,%ebx), %edi
	leal	-1(%ebx), %ebp
	movl	%edi, -16(%ecx,%ebx)
	movl	-12(%eax,%ebx), %edi
	movl	%edi, -12(%ecx,%ebx)
	movl	-8(%eax,%ebx), %edi
	movl	%edi, -8(%ecx,%ebx)
	movl	-4(%eax,%ebx), %edi
	movl	%edi, -4(%ecx,%ebx)
	cmpl	$16, %ebp
	jb	L446
	andl	$-16, %ebp
	movl	(%esp), %edi
	movl	64(%esp), %ebx
	movl	%edx, 4(%esp)
	movl	%ebp, 8(%esp)
	xorl	%ebp, %ebp
L214:
	movl	4(%eax,%ebp), %edx
	movl	%edx, (%esp)
	movl	8(%eax,%ebp), %edx
	movl	%edx, 16(%esp)
	movl	12(%eax,%ebp), %edx
	movl	%edx, 24(%esp)
	movl	(%eax,%ebp), %edx
	movl	%edx, (%ecx,%ebp)
	movl	(%esp), %edx
	movl	%edx, 4(%ecx,%ebp)
	movl	16(%esp), %edx
	movl	%edx, 8(%ecx,%ebp)
	movl	24(%esp), %edx
	movl	%edx, 12(%ecx,%ebp)
	addl	$16, %ebp
	cmpl	8(%esp), %ebp
	jb	L214
	movl	-4(%esi), %eax
	movl	4(%esp), %edx
	movl	%edi, (%esp)
	movl	%ebx, 64(%esp)
	movl	4(%edi), %ecx
	movl	%eax, 4(%esp)
	jmp	L206
L464:
	movl	(%esi), %ecx
	movl	4(%esi), %ebx
	movl	(%esp), %edi
	movl	%ecx, (%edi)
	movl	%ebx, 4(%edi)
	movl	8(%esp), %ecx
	movl	(%esp), %ebx
	movl	-4(%esi,%ecx), %edi
	movl	-8(%esi,%ecx), %esi
	movl	%edi, 12(%esp)
	movl	%esi, -8(%ebx,%ecx)
	movl	%edi, -4(%ebx,%ecx)
	movl	(%eax), %esi
	movl	%esi, (%esp)
	movl	8(%edx), %esi
	movl	%esi, 8(%esp)
	jmp	L225
L481:
	movl	(%eax), %edi
	movl	%edi, (%edx)
	movl	16(%esp), %ebx
	movl	-4(%eax,%ebx), %edi
	movl	%edi, -4(%edx,%ebx)
	movl	-4(%eax), %ebx
	movl	4(%ebp), %edx
	movl	%ebx, 16(%esp)
	jmp	L188
L479:
	movl	(%edx), %ebx
	movl	%ebx, (%eax)
	movl	-4(%edx,%ebp), %ebx
	movl	%ebx, -4(%eax,%ebp)
	movl	4(%edi), %eax
	movl	-4(%edx), %ebp
	jmp	L117
L467:
	movl	(%esi), %ecx
	movl	4(%esi), %ebx
	movl	(%esp), %edi
	movl	%ecx, (%edi)
	movl	%ebx, 4(%edi)
	movl	8(%esp), %ecx
	movl	(%esp), %ebx
	movl	-4(%esi,%ecx), %edi
	movl	-8(%esi,%ecx), %esi
	movl	%edi, 12(%esp)
	movl	%esi, -8(%ebx,%ecx)
	movl	%edi, -4(%ebx,%ecx)
	movl	(%eax), %esi
	movl	%esi, (%esp)
	movl	8(%ebp), %esi
	movl	%esi, 8(%esp)
	jmp	L260
L468:
	movl	(%esi), %ebx
	movl	(%esp), %edi
	movl	%ebx, (%edi)
	movl	8(%esp), %ecx
	movl	-4(%esi,%ecx), %ebx
	movl	%ebx, -4(%edi,%ecx)
	movl	(%eax), %esi
	movl	%esi, (%esp)
	movl	8(%ebp), %esi
	movl	%esi, 8(%esp)
	jmp	L260
L465:
	movl	(%esi), %ebx
	movl	(%esp), %edi
	movl	%ebx, (%edi)
	movl	8(%esp), %ecx
	movl	-4(%esi,%ecx), %ebx
	movl	%ebx, -4(%edi,%ecx)
	movl	(%eax), %esi
	movl	%esi, (%esp)
	movl	8(%edx), %esi
	movl	%esi, 8(%esp)
	jmp	L225
L471:
	movl	(%esi), %ebx
	movl	4(%esp), %edi
	movl	%ebx, (%edi)
	movl	16(%esp), %ecx
	movl	-4(%esi,%ecx), %ebx
	movl	%ebx, -4(%edi,%ecx)
	movl	4(%eax), %esi
	movl	%esi, 4(%esp)
	movl	8(%edx), %esi
	movl	%esi, 16(%esp)
	jmp	L152
L470:
	movl	(%esi), %ecx
	movl	4(%esi), %ebx
	movl	4(%esp), %edi
	movl	%ecx, (%edi)
	movl	%ebx, 4(%edi)
	movl	16(%esp), %ecx
	movl	4(%esp), %ebx
	movl	-4(%esi,%ecx), %edi
	movl	-8(%esi,%ecx), %esi
	movl	%edi, 20(%esp)
	movl	%esi, -8(%ebx,%ecx)
	movl	%edi, -4(%ebx,%ecx)
	movl	4(%eax), %esi
	movl	%esi, 4(%esp)
	movl	8(%edx), %esi
	movl	%esi, 16(%esp)
	jmp	L152
L474:
	movl	(%esi), %ebx
	movl	4(%esp), %edi
	movl	%ebx, (%edi)
	movl	16(%esp), %ecx
	movl	-4(%esi,%ecx), %ebx
	movl	%ebx, -4(%edi,%ecx)
	movl	8(%ebp), %esi
	movl	%esi, 16(%esp)
	movl	4(%eax), %esi
	movl	%esi, 4(%esp)
	jmp	L135
L473:
	movl	(%esi), %ecx
	movl	4(%esi), %ebx
	movl	4(%esp), %edi
	movl	%ecx, (%edi)
	movl	%ebx, 4(%edi)
	movl	16(%esp), %ecx
	movl	4(%esp), %ebx
	movl	-4(%esi,%ecx), %edi
	movl	-8(%esi,%ecx), %esi
	movl	%edi, 20(%esp)
	movl	%esi, -8(%ebx,%ecx)
	movl	%edi, -4(%ebx,%ecx)
	movl	8(%ebp), %esi
	movl	%esi, 16(%esp)
	movl	4(%eax), %esi
	movl	%esi, 4(%esp)
	jmp	L135
L477:
	movl	(%edx), %ebx
	movl	%ebx, (%ecx)
	movl	-4(%edx,%ebp), %ebx
	movl	%ebx, -4(%ecx,%ebp)
	movl	4(%eax), %ecx
	movl	-4(%edx), %ebp
	jmp	L171
L476:
	movl	(%edx), %ebx
	movl	4(%edx), %esi
	movl	%ebx, (%ecx)
	movl	%esi, 4(%ecx)
	movl	-8(%edx,%ebp), %ebx
	movl	-4(%edx,%ebp), %esi
	movl	%ebx, -8(%ecx,%ebp)
	movl	%esi, -4(%ecx,%ebp)
	movl	4(%eax), %ecx
	movl	-4(%edx), %ebp
	jmp	L171
L423:
	movl	8(%esp), %edi
	movzwl	-2(%esi,%edi), %ebx
	movl	(%esp), %esi
	movw	%bx, -2(%esi,%edi)
	jmp	L447
L429:
	movl	8(%esp), %edi
	movzwl	-2(%esi,%edi), %ebx
	movl	(%esp), %esi
	movw	%bx, -2(%esi,%edi)
	jmp	L449
L484:
	movl	(%edx), %ebp
	movl	%ebp, (%ebx)
	movl	4(%esp), %edi
	movl	-4(%edx,%edi), %ebp
	movl	%ebp, -4(%ebx,%edi)
	movl	-4(%edx), %edi
	movl	4(%eax), %ebx
	movl	%edi, 4(%esp)
	jmp	L242
L483:
	movl	(%edx), %edi
	movl	4(%edx), %ebp
	movl	%edi, (%ebx)
	movl	%ebp, 4(%ebx)
	movl	4(%esp), %ecx
	movl	-8(%edx,%ecx), %edi
	movl	-4(%edx,%ecx), %ebp
	movl	%edi, -8(%ebx,%ecx)
	movl	%ebp, -4(%ebx,%ecx)
	movl	-4(%edx), %edi
	movl	4(%eax), %ebx
	movl	%edi, 4(%esp)
	jmp	L242
L407:
	movl	16(%esp), %edi
	movzwl	-2(%esi,%edi), %ebx
	movl	4(%esp), %esi
	movw	%bx, -2(%esi,%edi)
	jmp	L442
L410:
	movl	16(%esp), %edi
	movzwl	-2(%esi,%edi), %ebx
	movl	4(%esp), %esi
	movw	%bx, -2(%esi,%edi)
	jmp	L443
L414:
	movzwl	-2(%edx,%ebp), %ebx
	movw	%bx, -2(%ecx,%ebp)
	movl	4(%eax), %ecx
	movl	-4(%edx), %ebp
	jmp	L171
L426:
	movl	4(%esp), %edi
	movzwl	-2(%edx,%edi), %ebp
	movw	%bp, -2(%ebx,%edi)
	movl	-4(%edx), %edi
	movl	4(%eax), %ebx
	movl	%edi, 4(%esp)
	jmp	L242
L487:
	movl	(%eax), %edi
	movl	%edi, (%ecx)
	movl	4(%esp), %ebx
	movl	-4(%eax,%ebx), %eax
	movl	%eax, -4(%ecx,%ebx)
	movl	(%esp), %eax
	movl	4(%eax), %ecx
	movl	-4(%esi), %eax
	movl	%eax, 4(%esp)
	jmp	L206
L486:
	movl	(%eax), %edi
	movl	4(%eax), %ebp
	movl	%edi, (%ecx)
	movl	%ebp, 4(%ecx)
	movl	4(%esp), %ebx
	movl	-8(%eax,%ebx), %edi
	movl	-4(%eax,%ebx), %ebp
	movl	%edi, -8(%ecx,%ebx)
	movl	%ebp, -4(%ecx,%ebx)
	movl	(%esp), %eax
	movl	4(%eax), %ecx
	movl	-4(%esi), %eax
	movl	%eax, 4(%esp)
	jmp	L206
L420:
	movl	4(%esp), %ebx
	movzwl	-2(%eax,%ebx), %eax
	movw	%ax, -2(%ecx,%ebx)
	jmp	L446
	.cfi_endproc
LFE27:
	.p2align 4
	.def	__ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEEZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_T0_.isra.0;	.scl	3;	.type	32;	.endef
__ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEEZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_T0_.isra.0:
LFB37:
	.cfi_startproc
	cmpl	%edx, %eax
	je	L665
	leal	28(%eax), %ecx
	cmpl	%ecx, %edx
	je	L665
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	leal	40(%eax), %edi
	pushl	%esi
	.cfi_offset 6, -16
	movl	%eax, %esi
	pushl	%ebx
	andl	$-8, %esp
	subl	$80, %esp
	.cfi_offset 3, -20
	leal	64(%esp), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 48(%esp)
	.p2align 4
	.p2align 3
L581:
	movl	-12(%edi), %ecx
	movl	-4(%edi), %edx
	leal	-12(%edi), %eax
	movl	%edi, 32(%esp)
	movl	%eax, 28(%esp)
	movl	-8(%edi), %eax
	movl	%ecx, 16(%esp)
	movl	%edx, 40(%esp)
	cmpl	(%esi), %ecx
	jnb	L490
	movl	48(%esp), %edx
	movl	%ecx, 52(%esp)
	movl	%edx, 56(%esp)
	cmpl	%edi, %eax
	je	L670
	movl	%eax, 56(%esp)
	movl	(%edi), %eax
	movl	%eax, 64(%esp)
L499:
	movl	40(%esp), %eax
	movl	%edi, -8(%edi)
	movb	$0, (%edi)
	movl	%eax, 60(%esp)
	leal	16(%edi), %eax
	movl	$0, -4(%edi)
	movl	%eax, 24(%esp)
	cmpl	28(%esp), %esi
	je	L500
	movl	%edi, 28(%esp)
	movl	32(%esp), %ebx
	leal	-28(%edi), %eax
	movl	%esi, 40(%esp)
	jmp	L518
	.p2align 4,,10
	.p2align 3
L501:
	cmpl	%edx, %eax
	je	L502
	movl	%edx, 20(%eax)
	movl	-4(%eax), %edx
	movl	28(%eax), %ecx
	movl	%edx, 24(%eax)
	movl	(%eax), %edx
	movl	%edx, 28(%eax)
	testl	%ebx, %ebx
	je	L516
	movl	%ebx, -8(%eax)
	leal	-12(%eax), %edx
	movl	%ecx, (%eax)
L505:
	movb	$0, (%ebx)
	movl	$0, -4(%eax)
	cmpl	%edx, 40(%esp)
	je	L517
L671:
	movl	-8(%eax), %ebx
	subl	$28, %eax
L518:
	movl	-12(%eax), %edx
	leal	28(%eax), %ecx
	movl	%edx, 16(%eax)
	movl	-8(%eax), %edx
	cmpl	%ecx, %ebx
	jne	L501
	cmpl	%edx, %eax
	je	L502
	movl	%edx, 20(%eax)
	movl	-4(%eax), %edx
	movl	%edx, 24(%eax)
	movl	(%eax), %edx
	movl	%edx, 28(%eax)
L516:
	movl	%eax, %ebx
	movl	%eax, -8(%eax)
	leal	-12(%eax), %edx
	movb	$0, (%ebx)
	movl	$0, -4(%eax)
	cmpl	%edx, 40(%esp)
	jne	L671
L517:
	movl	40(%esp), %esi
	movl	52(%esp), %edx
	movl	60(%esp), %ecx
	movl	28(%esp), %edi
	movl	%edx, (%esi)
	movl	4(%esi), %edx
	movl	%ecx, 40(%esp)
	cmpl	%eax, %edx
	je	L582
L519:
	movl	56(%esp), %eax
	cmpl	48(%esp), %eax
	je	L520
	movl	%eax, 4(%esi)
	movl	40(%esp), %eax
	movl	12(%esi), %ecx
	movl	%eax, 8(%esi)
	movl	64(%esp), %eax
	movl	%eax, 12(%esi)
	testl	%edx, %edx
	je	L534
	movl	%edx, 56(%esp)
	movl	%ecx, 64(%esp)
L533:
	movb	$0, (%edx)
	movl	56(%esp), %eax
	movl	$0, 60(%esp)
	cmpl	48(%esp), %eax
	je	L536
	call	_mi_free
L536:
	movl	24(%esp), %ecx
	addl	$28, %edi
	cmpl	%ecx, 12(%esp)
	jne	L581
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
L502:
	.cfi_restore_state
	movl	-4(%eax), %edi
	leal	-12(%eax), %edx
	movl	%edi, 32(%esp)
	testl	%edi, %edi
	je	L506
	cmpl	$1, %edi
	je	L672
	movl	32(%esp), %esi
	cmpl	$16, %esi
	jb	L673
	movl	32(%esp), %edi
	movl	-16(%eax,%edi), %esi
	leal	-1(%edi), %ecx
	movl	%esi, -16(%ebx,%edi)
	movl	-12(%eax,%edi), %esi
	movl	%esi, -12(%ebx,%edi)
	movl	-8(%eax,%edi), %esi
	movl	%esi, -8(%ebx,%edi)
	movl	-4(%eax,%edi), %esi
	movl	%esi, -4(%ebx,%edi)
	cmpl	$16, %ecx
	jb	L668
	movl	%edx, 8(%esp)
	andl	$-16, %ecx
	movl	%ecx, 32(%esp)
	xorl	%ecx, %ecx
L514:
	movl	12(%eax,%ecx), %edx
	movl	8(%eax,%ecx), %esi
	movl	4(%eax,%ecx), %edi
	movl	%edx, 16(%esp)
	movl	(%eax,%ecx), %edx
	movl	%edi, 4(%ebx,%ecx)
	movl	%edx, (%ebx,%ecx)
	movl	%esi, 8(%ebx,%ecx)
	movl	16(%esp), %esi
	movl	%esi, 12(%ebx,%ecx)
	addl	$16, %ecx
	cmpl	32(%esp), %ecx
	jb	L514
	movl	8(%esp), %edx
L668:
	movl	-4(%eax), %esi
	movl	20(%eax), %ebx
	movl	%esi, 32(%esp)
	.p2align 4
	.p2align 3
L506:
	movl	32(%esp), %edi
	movb	$0, (%ebx,%edi)
	movl	-8(%eax), %ebx
	movl	%edi, 24(%eax)
	jmp	L505
	.p2align 4,,10
	.p2align 3
L490:
	movl	16(%esp), %ecx
	movl	48(%esp), %edx
	movl	%ecx, 52(%esp)
	movl	%edx, 56(%esp)
	cmpl	%edi, %eax
	je	L674
	movl	%eax, 56(%esp)
	movl	(%edi), %eax
	movl	%eax, 64(%esp)
L545:
	movl	40(%esp), %eax
	movl	-40(%edi), %edx
	movl	%edi, -8(%edi)
	movb	$0, (%edi)
	movl	%eax, 60(%esp)
	movl	$0, -4(%edi)
	cmpl	%edx, 16(%esp)
	jnb	L546
	movl	%edi, 28(%esp)
	movl	32(%esp), %ebx
	leal	-28(%edi), %eax
	movl	%esi, 16(%esp)
	jmp	L563
	.p2align 4,,10
	.p2align 3
L547:
	cmpl	%edx, %eax
	je	L655
	movl	%edx, 20(%eax)
	movl	-4(%eax), %edx
	movl	28(%eax), %ecx
	movl	%edx, 24(%eax)
	movl	(%eax), %edx
	movl	%edx, 28(%eax)
	testl	%ebx, %ebx
	je	L562
	movl	%ebx, -8(%eax)
	movl	%ecx, (%eax)
L551:
	movb	$0, (%ebx)
	movl	52(%esp), %ecx
	movl	-40(%eax), %edx
	movl	-8(%eax), %ebx
	movl	$0, -4(%eax)
	cmpl	%edx, %ecx
	jnb	L675
	subl	$28, %eax
L563:
	leal	28(%eax), %ecx
	movl	%edx, 16(%eax)
	movl	-8(%eax), %edx
	cmpl	%ecx, %ebx
	jne	L547
	cmpl	%edx, %eax
	je	L655
	movl	%edx, 20(%eax)
	movl	-4(%eax), %edx
	movl	%edx, 24(%eax)
	movl	(%eax), %edx
	movl	%edx, 28(%eax)
L562:
	movl	%eax, -8(%eax)
	movl	%eax, %ebx
	jmp	L551
	.p2align 4,,10
	.p2align 3
L655:
	movl	-4(%eax), %esi
	movl	%esi, 40(%esp)
	testl	%esi, %esi
	je	L552
	cmpl	$1, %esi
	je	L676
	movl	40(%esp), %esi
	cmpl	$16, %esi
	jb	L677
	movl	40(%esp), %edi
	movl	-16(%edx,%edi), %esi
	leal	-1(%edi), %ecx
	movl	%esi, -16(%ebx,%edi)
	movl	-12(%edx,%edi), %esi
	movl	%esi, -12(%ebx,%edi)
	movl	-8(%edx,%edi), %esi
	movl	%esi, -8(%ebx,%edi)
	movl	-4(%edx,%edi), %esi
	movl	%esi, -4(%ebx,%edi)
	cmpl	$16, %ecx
	jb	L669
	movl	%eax, 24(%esp)
	andl	$-16, %ecx
	movl	%ecx, 40(%esp)
	xorl	%ecx, %ecx
L560:
	movl	12(%edx,%ecx), %eax
	movl	4(%edx,%ecx), %edi
	movl	8(%edx,%ecx), %esi
	movl	%eax, 32(%esp)
	movl	(%edx,%ecx), %eax
	movl	%edi, 4(%ebx,%ecx)
	movl	%eax, (%ebx,%ecx)
	movl	%esi, 8(%ebx,%ecx)
	movl	32(%esp), %eax
	movl	%eax, 12(%ebx,%ecx)
	addl	$16, %ecx
	cmpl	40(%esp), %ecx
	jb	L560
	movl	24(%esp), %eax
L669:
	movl	-4(%eax), %esi
	movl	20(%eax), %ebx
	movl	%esi, 40(%esp)
	.p2align 4
	.p2align 3
L552:
	movl	40(%esp), %esi
	movb	$0, (%ebx,%esi)
	movl	-8(%eax), %ebx
	movl	%esi, 24(%eax)
	jmp	L551
	.p2align 4,,10
	.p2align 3
L675:
	leal	-12(%eax), %edx
	movl	28(%esp), %edi
	movl	16(%esp), %esi
	movl	%ecx, -12(%eax)
	movl	60(%esp), %ecx
	movl	%ebx, 32(%esp)
	movl	%edx, 28(%esp)
	movl	%ecx, 40(%esp)
	cmpl	%ebx, %eax
	je	L546
	movl	56(%esp), %eax
	cmpl	48(%esp), %eax
	je	L565
	movl	28(%esp), %ecx
	movss	40(%esp), %xmm0
	movss	64(%esp), %xmm1
	movl	%eax, 4(%ecx)
	movl	32(%esp), %eax
	unpcklps	%xmm1, %xmm0
	movl	12(%ecx), %edx
	movlps	%xmm0, 8(%ecx)
	testl	%eax, %eax
	je	L579
	movl	32(%esp), %eax
	movl	%edx, 64(%esp)
	movl	%eax, 56(%esp)
L578:
	movl	32(%esp), %eax
	movb	$0, (%eax)
	movl	56(%esp), %eax
	movl	$0, 60(%esp)
	cmpl	48(%esp), %eax
	je	L580
	call	_mi_free
L580:
	leal	16(%edi), %eax
	movl	%eax, 24(%esp)
	jmp	L536
	.p2align 4,,10
	.p2align 3
L546:
	movl	56(%esp), %eax
	cmpl	48(%esp), %eax
	je	L565
	movl	28(%esp), %ebx
	movl	%eax, 4(%ebx)
	movl	40(%esp), %eax
	movl	%eax, 8(%ebx)
	movl	64(%esp), %eax
	movl	%eax, 12(%ebx)
L579:
	movl	48(%esp), %eax
	movl	%eax, 56(%esp)
	leal	64(%esp), %eax
	movl	%eax, 48(%esp)
	movl	%eax, 32(%esp)
	jmp	L578
	.p2align 4,,10
	.p2align 3
L500:
	movl	16(%esp), %eax
	movl	4(%esi), %edx
	movl	%eax, (%esi)
	leal	12(%esi), %eax
	cmpl	%eax, %edx
	jne	L519
	movl	%edx, %eax
	.p2align 4
	.p2align 3
L582:
	movl	56(%esp), %edx
	cmpl	48(%esp), %edx
	je	L678
	movl	40(%esp), %eax
	movl	%edx, 4(%esi)
	movl	%eax, 8(%esi)
	movl	64(%esp), %eax
	movl	%eax, 12(%esi)
L534:
	movl	48(%esp), %eax
	movl	%eax, 56(%esp)
	leal	64(%esp), %eax
	movl	%eax, 48(%esp)
	movl	%eax, %edx
	jmp	L533
	.p2align 4,,10
	.p2align 3
L676:
	movzbl	(%edx), %edx
	movb	%dl, (%ebx)
	movl	-4(%eax), %esi
	movl	%esi, 40(%esp)
L554:
	movl	20(%eax), %ebx
	movl	40(%esp), %esi
	movb	$0, (%ebx,%esi)
	movl	-8(%eax), %ebx
	movl	%esi, 24(%eax)
	jmp	L551
	.p2align 4,,10
	.p2align 3
L672:
	movzbl	(%eax), %ecx
	movb	%cl, (%ebx)
	movl	-4(%eax), %esi
	movl	%esi, 32(%esp)
L508:
	movl	20(%eax), %ebx
	movl	32(%esp), %edi
	movb	$0, (%ebx,%edi)
	movl	-8(%eax), %ebx
	movl	%edi, 24(%eax)
	jmp	L505
L678:
	movl	%eax, %edx
	.p2align 4
	.p2align 3
L520:
	movl	40(%esp), %eax
	testl	%eax, %eax
	je	L523
	cmpl	$1, %eax
	je	L679
	movl	40(%esp), %eax
	cmpl	$16, %eax
	jnb	L526
	testb	$8, %al
	jne	L680
	testb	$4, 40(%esp)
	jne	L681
	movl	40(%esp), %ecx
	testl	%ecx, %ecx
	je	L525
	movl	48(%esp), %eax
	andl	$2, %ecx
	movzbl	(%eax), %eax
	movb	%al, (%edx)
	je	L525
	movl	48(%esp), %eax
	movl	40(%esp), %ecx
	movzwl	-2(%eax,%ecx), %eax
	movw	%ax, -2(%edx,%ecx)
	jmp	L525
	.p2align 4,,10
	.p2align 3
L679:
	movzbl	64(%esp), %eax
	movb	%al, (%edx)
L525:
	movl	60(%esp), %eax
	movl	%eax, 40(%esp)
L523:
	movl	40(%esp), %ebx
	movl	4(%esi), %eax
	movb	$0, (%eax,%ebx)
	movl	56(%esp), %edx
	movl	%ebx, 8(%esi)
	jmp	L533
	.p2align 4,,10
	.p2align 3
L565:
	movl	40(%esp), %eax
	testl	%eax, %eax
	je	L568
	cmpl	$1, %eax
	je	L682
	movl	40(%esp), %eax
	cmpl	$16, %eax
	jnb	L571
	testb	$8, %al
	jne	L683
	testb	$4, 40(%esp)
	jne	L684
	movl	40(%esp), %ecx
	testl	%ecx, %ecx
	je	L570
	movl	48(%esp), %eax
	movl	32(%esp), %ebx
	andl	$2, %ecx
	movzbl	(%eax), %eax
	movb	%al, (%ebx)
	je	L570
	movl	48(%esp), %eax
	movl	40(%esp), %ecx
	movl	32(%esp), %ebx
	movzwl	-2(%eax,%ecx), %eax
	movw	%ax, -2(%ebx,%ecx)
	jmp	L570
	.p2align 4,,10
	.p2align 3
L682:
	movzbl	64(%esp), %eax
	movl	32(%esp), %ebx
	movb	%al, (%ebx)
L570:
	movl	60(%esp), %eax
	movl	%eax, 40(%esp)
L568:
	movl	28(%esp), %ecx
	movl	40(%esp), %ebx
	movl	4(%ecx), %eax
	movb	$0, (%eax,%ebx)
	movl	56(%esp), %eax
	movl	%ebx, 8(%ecx)
	movl	%eax, 32(%esp)
	jmp	L578
	.p2align 4,,10
	.p2align 3
L670:
	movl	40(%esp), %eax
	addl	$1, %eax
	movl	%eax, %ebx
	cmpl	$16, %eax
	jb	L685
	movl	-16(%edi,%eax), %edx
	movl	48(%esp), %eax
	movl	%edx, -16(%eax,%ebx)
	movl	-12(%edi,%ebx), %edx
	movl	%edx, -12(%eax,%ebx)
	movl	-8(%edi,%ebx), %edx
	movl	%edx, -8(%eax,%ebx)
	movl	-4(%edi,%ebx), %edx
	movl	%edx, -4(%eax,%ebx)
	movl	40(%esp), %edx
	cmpl	$16, %edx
	jb	L499
	movl	%esi, 4(%esp)
	andl	$-16, %edx
	movl	%edx, 24(%esp)
	movl	%eax, %edx
	xorl	%eax, %eax
L497:
	movl	12(%edi,%eax), %ecx
	movl	4(%edi,%eax), %esi
	movl	8(%edi,%eax), %ebx
	movl	%ecx, 8(%esp)
	movl	(%edi,%eax), %ecx
	movl	%esi, 4(%edx,%eax)
	movl	%ecx, (%edx,%eax)
	movl	%ebx, 8(%edx,%eax)
	movl	8(%esp), %esi
	movl	%esi, 12(%edx,%eax)
	addl	$16, %eax
	cmpl	24(%esp), %eax
	jb	L497
	movl	4(%esp), %esi
	jmp	L499
	.p2align 4,,10
	.p2align 3
L674:
	movl	40(%esp), %eax
	addl	$1, %eax
	movl	%eax, %ebx
	cmpl	$16, %eax
	jb	L686
	movl	-16(%edi,%eax), %edx
	movl	48(%esp), %eax
	movl	%edx, -16(%eax,%ebx)
	movl	-12(%edi,%ebx), %edx
	movl	%edx, -12(%eax,%ebx)
	movl	-8(%edi,%ebx), %edx
	movl	%edx, -8(%eax,%ebx)
	movl	-4(%edi,%ebx), %edx
	movl	%edx, -4(%eax,%ebx)
	movl	40(%esp), %edx
	cmpl	$16, %edx
	jb	L545
	movl	%esi, 4(%esp)
	andl	$-16, %edx
	movl	%edx, 24(%esp)
	movl	%eax, %edx
	xorl	%eax, %eax
L543:
	movl	12(%edi,%eax), %ecx
	movl	4(%edi,%eax), %esi
	movl	8(%edi,%eax), %ebx
	movl	%ecx, 8(%esp)
	movl	(%edi,%eax), %ecx
	movl	%esi, 4(%edx,%eax)
	movl	%ecx, (%edx,%eax)
	movl	%ebx, 8(%edx,%eax)
	movl	8(%esp), %esi
	movl	%esi, 12(%edx,%eax)
	addl	$16, %eax
	cmpl	24(%esp), %eax
	jb	L543
	movl	4(%esp), %esi
	jmp	L545
	.p2align 4,,10
	.p2align 3
L677:
	andl	$8, %esi
	jne	L687
	testb	$4, 40(%esp)
	jne	L688
	movl	40(%esp), %esi
	testl	%esi, %esi
	je	L554
	movzbl	(%edx), %ecx
	andl	$2, %esi
	movb	%cl, (%ebx)
	je	L669
	movl	40(%esp), %esi
	movzwl	-2(%edx,%esi), %edx
	movw	%dx, -2(%ebx,%esi)
	movl	-4(%eax), %esi
	movl	%esi, 40(%esp)
	jmp	L554
	.p2align 4,,10
	.p2align 3
L673:
	andl	$8, %esi
	jne	L689
	testb	$4, 32(%esp)
	jne	L690
	movl	32(%esp), %esi
	testl	%esi, %esi
	je	L508
	movzbl	(%eax), %ecx
	andl	$2, %esi
	movb	%cl, (%ebx)
	je	L668
	movl	32(%esp), %edi
	movzwl	-2(%eax,%edi), %esi
	movw	%si, -2(%ebx,%edi)
	movl	-4(%eax), %esi
	movl	%esi, 32(%esp)
	jmp	L508
	.p2align 4,,10
	.p2align 3
L685:
	testb	$8, %al
	jne	L691
	testb	$4, %al
	jne	L692
	testl	%eax, %eax
	je	L499
	movzbl	(%edi), %edx
	movl	48(%esp), %eax
	movb	%dl, (%eax)
	testb	$2, %bl
	je	L499
	movzwl	-2(%edi,%ebx), %edx
	movl	48(%esp), %eax
	movw	%dx, -2(%eax,%ebx)
	jmp	L499
	.p2align 4,,10
	.p2align 3
L686:
	testb	$8, %al
	jne	L693
	testb	$4, %al
	jne	L694
	testl	%eax, %eax
	je	L545
	movzbl	(%edi), %edx
	movl	48(%esp), %eax
	movb	%dl, (%eax)
	testb	$2, %bl
	je	L545
	movzwl	-2(%ebx,%edi), %edx
	movl	48(%esp), %eax
	movw	%dx, -2(%eax,%ebx)
	jmp	L545
L665:
	.cfi_def_cfa 4, 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	ret
L526:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	40(%esp), %ebx
	movl	48(%esp), %ecx
	movl	-16(%ecx,%ebx), %eax
	movl	%eax, -16(%edx,%ebx)
	movl	-12(%ecx,%ebx), %eax
	movl	%eax, -12(%edx,%ebx)
	movl	-8(%ecx,%ebx), %eax
	movl	%eax, -8(%edx,%ebx)
	movl	-4(%ecx,%ebx), %eax
	movl	%eax, -4(%edx,%ebx)
	leal	-1(%ebx), %eax
	cmpl	$16, %eax
	jb	L525
	andl	$-16, %eax
	movl	%eax, 40(%esp)
	xorl	%eax, %eax
L531:
	movl	4(%ecx,%eax), %ebx
	movl	%ebx, 32(%esp)
	movl	8(%ecx,%eax), %ebx
	movl	%ebx, 28(%esp)
	movl	12(%ecx,%eax), %ebx
	movl	%ebx, 16(%esp)
	movl	(%ecx,%eax), %ebx
	movl	%ebx, (%edx,%eax)
	movl	32(%esp), %ebx
	movl	%ebx, 4(%edx,%eax)
	movl	28(%esp), %ebx
	movl	%ebx, 8(%edx,%eax)
	movl	16(%esp), %ebx
	movl	%ebx, 12(%edx,%eax)
	addl	$16, %eax
	cmpl	40(%esp), %eax
	jb	L531
	jmp	L525
L571:
	movl	40(%esp), %ecx
	movl	48(%esp), %edx
	movl	32(%esp), %ebx
	movl	-16(%edx,%ecx), %eax
	movl	%eax, -16(%ebx,%ecx)
	movl	-12(%edx,%ecx), %eax
	movl	32(%esp), %ebx
	movl	%eax, -12(%ebx,%ecx)
	movl	-8(%edx,%ecx), %eax
	movl	32(%esp), %ebx
	movl	%eax, -8(%ebx,%ecx)
	movl	-4(%edx,%ecx), %eax
	movl	32(%esp), %ebx
	movl	%eax, -4(%ebx,%ecx)
	leal	-1(%ecx), %eax
	cmpl	$16, %eax
	jb	L570
	andl	$-16, %eax
	movl	32(%esp), %ebx
	movl	%eax, 40(%esp)
	xorl	%eax, %eax
L576:
	movl	4(%edx,%eax), %ecx
	movl	%ecx, 32(%esp)
	movl	8(%edx,%eax), %ecx
	movl	%ecx, 16(%esp)
	movl	12(%edx,%eax), %ecx
	movl	%ecx, 24(%esp)
	movl	(%edx,%eax), %ecx
	movl	%ecx, (%ebx,%eax)
	movl	32(%esp), %ecx
	movl	%ecx, 4(%ebx,%eax)
	movl	16(%esp), %ecx
	movl	%ecx, 8(%ebx,%eax)
	movl	24(%esp), %ecx
	movl	%ecx, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	40(%esp), %eax
	jb	L576
	jmp	L570
L687:
	movl	(%edx), %esi
	movl	4(%edx), %edi
	movl	%esi, (%ebx)
	movl	%edi, 4(%ebx)
	movl	40(%esp), %ecx
	movl	-8(%edx,%ecx), %esi
	movl	-4(%edx,%ecx), %edi
	movl	%esi, -8(%ebx,%ecx)
	movl	%edi, -4(%ebx,%ecx)
	movl	-4(%eax), %esi
	movl	%esi, 40(%esp)
	jmp	L554
L689:
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, (%ebx)
	movl	%edi, 4(%ebx)
	movl	32(%esp), %ecx
	movl	-8(%eax,%ecx), %esi
	movl	-4(%eax,%ecx), %edi
	movl	%esi, -8(%ebx,%ecx)
	movl	%edi, -4(%ebx,%ecx)
	movl	-4(%eax), %esi
	movl	%esi, 32(%esp)
	jmp	L508
L690:
	movl	(%eax), %esi
	movl	%esi, (%ebx)
	movl	32(%esp), %edi
	movl	-4(%eax,%edi), %esi
	movl	%esi, -4(%ebx,%edi)
	movl	-4(%eax), %esi
	movl	%esi, 32(%esp)
	jmp	L508
L688:
	movl	(%edx), %esi
	movl	%esi, (%ebx)
	movl	40(%esp), %esi
	movl	-4(%edx,%esi), %edx
	movl	%edx, -4(%ebx,%esi)
	movl	-4(%eax), %esi
	movl	%esi, 40(%esp)
	jmp	L554
L693:
	movl	(%edi), %eax
	movl	%edx, %ecx
	movl	4(%edi), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-8(%edi,%ebx), %eax
	movl	-4(%edi,%ebx), %edx
	movl	%eax, -8(%ecx,%ebx)
	movl	%edx, -4(%ecx,%ebx)
	jmp	L545
L691:
	movl	(%edi), %eax
	movl	%edx, %ecx
	movl	4(%edi), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-8(%edi,%ebx), %eax
	movl	-4(%edi,%ebx), %edx
	movl	%eax, -8(%ecx,%ebx)
	movl	%edx, -4(%ecx,%ebx)
	jmp	L499
L692:
	movl	(%edi), %edx
	movl	48(%esp), %eax
	movl	%edx, (%eax)
	movl	-4(%edi,%ebx), %edx
	movl	%edx, -4(%eax,%ebx)
	jmp	L499
L694:
	movl	(%edi), %edx
	movl	48(%esp), %eax
	movl	%edx, (%eax)
	movl	-4(%ebx,%edi), %edx
	movl	%edx, -4(%eax,%ebx)
	jmp	L545
L681:
	movl	48(%esp), %ecx
	movl	(%ecx), %eax
	movl	%eax, (%edx)
	movl	%ecx, %eax
	movl	40(%esp), %ecx
	movl	-4(%eax,%ecx), %eax
	movl	%eax, -4(%edx,%ecx)
	jmp	L525
L680:
	movl	48(%esp), %eax
	movl	(%eax), %ecx
	movl	4(%eax), %ebx
	movl	%ecx, 32(%esp)
	movl	%ebx, 36(%esp)
	movl	%ecx, (%edx)
	movl	%ebx, 4(%edx)
	movl	40(%esp), %ecx
	movl	-4(%eax,%ecx), %ebx
	movl	-8(%eax,%ecx), %ecx
	movl	40(%esp), %eax
	movl	%ecx, 32(%esp)
	movl	%ebx, 36(%esp)
	movl	%ecx, -8(%edx,%eax)
	movl	%ebx, -4(%edx,%eax)
	jmp	L525
L684:
	movl	48(%esp), %ecx
	movl	32(%esp), %ebx
	movl	(%ecx), %eax
	movl	%eax, (%ebx)
	movl	%ecx, %eax
	movl	40(%esp), %ecx
	movl	32(%esp), %ebx
	movl	-4(%eax,%ecx), %eax
	movl	%eax, -4(%ebx,%ecx)
	jmp	L570
L683:
	movl	48(%esp), %ecx
	movl	32(%esp), %ebx
	movl	(%ecx), %eax
	movl	4(%ecx), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, (%ebx)
	movl	%edx, 4(%ebx)
	movl	40(%esp), %eax
	movl	32(%esp), %ebx
	movl	-4(%ecx,%eax), %edx
	movl	-8(%ecx,%eax), %eax
	movl	40(%esp), %ecx
	movl	%edx, 44(%esp)
	movl	%eax, 40(%esp)
	movl	%eax, -8(%ebx,%ecx)
	movl	%edx, -4(%ebx,%ecx)
	jmp	L570
	.cfi_endproc
LFE37:
	.p2align 4
	.def	__ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEES3_ZL23DemoReadExtendedTrailervEUlRKS2_S9_E_ET0_T_SC_SC_SC_SB_T1_.isra.0;	.scl	3;	.type	32;	.endef
__ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEES3_ZL23DemoReadExtendedTrailervEUlRKS2_S9_E_ET0_T_SC_SC_SC_SB_T1_.isra.0:
LFB42:
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
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	cmpl	%edx, %ebp
	movl	%edx, (%esp)
	movl	48(%esp), %eax
	movl	%ecx, %edx
	jne	L696
	jmp	L697
	.p2align 4,,10
	.p2align 3
L732:
	leal	12(%eax), %edi
	movl	%esi, (%eax)
	leal	12(%edx), %esi
	movl	4(%edx), %ebx
	cmpl	%edi, %ecx
	je	L850
	cmpl	%ebx, %esi
	je	L699
	movl	%ebx, 4(%eax)
	movl	8(%edx), %ebx
	movl	12(%eax), %edi
	movl	%ebx, 8(%eax)
	movl	12(%edx), %ebx
	movl	%ebx, 12(%eax)
	testl	%ecx, %ecx
	je	L713
	movl	%ecx, 4(%edx)
	movl	%edi, 12(%edx)
L702:
	movb	$0, (%ecx)
	addl	$28, %edx
	addl	$28, %eax
	movl	$0, -20(%edx)
	cmpl	(%esp), %ebp
	je	L697
L696:
	cmpl	44(%esp), %edx
	je	L731
	movl	4(%eax), %ecx
	movl	(%edx), %esi
	movl	0(%ebp), %ebx
	movl	%ecx, 4(%esp)
	cmpl	%ebx, %esi
	jb	L732
	leal	12(%eax), %edi
	movl	%ebx, (%eax)
	leal	12(%ebp), %esi
	movl	4(%ebp), %ebx
	cmpl	%edi, %ecx
	je	L851
	cmpl	%esi, %ebx
	je	L716
	movl	%ebx, 4(%eax)
	movl	8(%ebp), %ebx
	movl	12(%eax), %edi
	movl	%ebx, 8(%eax)
	movl	12(%ebp), %ebx
	movl	%ebx, 12(%eax)
	testl	%ecx, %ecx
	je	L730
	movl	%ecx, 4(%ebp)
	movl	%edi, 12(%ebp)
L719:
	movb	$0, (%ecx)
	addl	$28, %ebp
	addl	$28, %eax
	movl	$0, -20(%ebp)
	cmpl	(%esp), %ebp
	jne	L696
	.p2align 4
	.p2align 3
L697:
	cmpl	44(%esp), %edx
	je	L695
	addl	$12, %edx
	jmp	L768
	.p2align 4,,10
	.p2align 3
L752:
	cmpl	%edi, %edx
	je	L753
	movl	%edi, 4(%eax)
	movl	-4(%edx), %ecx
	movl	12(%eax), %ebp
	movl	%ecx, 8(%eax)
	movl	(%edx), %ecx
	movl	%ecx, 12(%eax)
	testl	%esi, %esi
	je	L767
	movl	%esi, -8(%edx)
	movl	%ebp, (%edx)
L756:
	movb	$0, (%esi)
	addl	$28, %eax
	leal	16(%edx), %ecx
	movl	$0, -4(%edx)
	cmpl	%ecx, 44(%esp)
	je	L695
	addl	$28, %edx
L768:
	movl	-12(%edx), %ecx
	movl	4(%eax), %esi
	leal	12(%eax), %ebp
	movl	%ecx, (%eax)
	movl	%esi, %ecx
	movl	-8(%edx), %edi
	cmpl	%ebp, %esi
	jne	L752
	cmpl	%edi, %edx
	je	L753
	movl	%edi, 4(%eax)
	movl	-4(%edx), %ecx
	movl	%ecx, 8(%eax)
	movl	(%edx), %ecx
	movl	%ecx, 12(%eax)
L767:
	movl	%edx, -8(%edx)
	movl	%edx, %esi
	jmp	L756
	.p2align 4,,10
	.p2align 3
L850:
	cmpl	%ebx, %esi
	je	L699
	movl	%ebx, 4(%eax)
	movl	8(%edx), %ecx
	movl	%ecx, 8(%eax)
	movl	12(%edx), %ecx
	movl	%ecx, 12(%eax)
L713:
	movl	%esi, 4(%edx)
	movl	%esi, %ecx
	jmp	L702
	.p2align 4,,10
	.p2align 3
L851:
	cmpl	%esi, %ebx
	je	L716
	movl	%ebx, 4(%eax)
	movl	8(%ebp), %ecx
	movl	%ecx, 8(%eax)
	movl	12(%ebp), %ecx
	movl	%ecx, 12(%eax)
L730:
	movl	%esi, 4(%ebp)
	movl	%esi, %ecx
	jmp	L719
	.p2align 4,,10
	.p2align 3
L753:
	leal	-12(%edx), %esi
	cmpl	%esi, %eax
	je	L775
	movl	-4(%edx), %esi
	testl	%esi, %esi
	je	L757
	cmpl	$1, %esi
	je	L852
	cmpl	$16, %esi
	jb	L853
	movl	-16(%edx,%esi), %edi
	movl	%edi, -16(%ecx,%esi)
	movl	-12(%edx,%esi), %edi
	movl	%edi, -12(%ecx,%esi)
	movl	-8(%edx,%esi), %edi
	movl	%edi, -8(%ecx,%esi)
	movl	-4(%edx,%esi), %edi
	movl	%edi, -4(%ecx,%esi)
	subl	$1, %esi
	cmpl	$16, %esi
	jb	L849
	movl	%eax, (%esp)
	andl	$-16, %esi
	movl	44(%esp), %ebx
	movl	%esi, 4(%esp)
	xorl	%esi, %esi
L765:
	movl	12(%edx,%esi), %eax
	movl	4(%edx,%esi), %ebp
	movl	8(%edx,%esi), %edi
	movl	%eax, 12(%esp)
	movl	(%edx,%esi), %eax
	movl	%ebp, 4(%ecx,%esi)
	movl	%eax, (%ecx,%esi)
	movl	%edi, 8(%ecx,%esi)
	movl	12(%esp), %eax
	movl	%eax, 12(%ecx,%esi)
	addl	$16, %esi
	cmpl	4(%esp), %esi
	jb	L765
	movl	%ebx, 44(%esp)
	movl	(%esp), %eax
L849:
	movl	4(%eax), %ecx
	movl	-4(%edx), %esi
L757:
	movb	$0, (%ecx,%esi)
	movl	%esi, 8(%eax)
	movl	-8(%edx), %esi
	jmp	L756
	.p2align 4,,10
	.p2align 3
L695:
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
L699:
	.cfi_restore_state
	cmpl	%eax, %edx
	je	L770
	movl	8(%edx), %edi
	movl	%edi, 12(%esp)
	testl	%edi, %edi
	je	L703
	cmpl	$1, %edi
	je	L854
	movl	12(%esp), %edi
	cmpl	$16, %edi
	jb	L855
	movl	12(%esp), %ecx
	movl	4(%esp), %edi
	movl	-16(%esi,%ecx), %ebx
	movl	%ebx, -16(%edi,%ecx)
	movl	-12(%esi,%ecx), %ebx
	movl	%ebx, -12(%edi,%ecx)
	movl	-8(%esi,%ecx), %ebx
	movl	%ebx, -8(%edi,%ecx)
	movl	-4(%esi,%ecx), %ebx
	movl	%ebx, -4(%edi,%ecx)
	subl	$1, %ecx
	cmpl	$16, %ecx
	jb	L846
	movl	%ebp, 12(%esp)
	andl	$-16, %ecx
	movl	%edx, 16(%esp)
	movl	4(%esp), %edx
	movl	%ecx, 20(%esp)
	xorl	%ecx, %ecx
L711:
	movl	12(%esi,%ecx), %ebx
	movl	8(%esi,%ecx), %edi
	movl	4(%esi,%ecx), %ebp
	movl	%ebx, 4(%esp)
	movl	(%esi,%ecx), %ebx
	movl	%ebp, 4(%edx,%ecx)
	movl	%ebx, (%edx,%ecx)
	movl	%edi, 8(%edx,%ecx)
	movl	4(%esp), %edi
	movl	%edi, 12(%edx,%ecx)
	addl	$16, %ecx
	cmpl	20(%esp), %ecx
	jb	L711
	movl	12(%esp), %ebp
	movl	16(%esp), %edx
L846:
	movl	8(%edx), %edi
	movl	%edi, 12(%esp)
	movl	4(%eax), %edi
	movl	%edi, 4(%esp)
L703:
	movl	12(%esp), %ebx
	movl	4(%esp), %edi
	movb	$0, (%edi,%ebx)
	movl	%ebx, 8(%eax)
	movl	4(%edx), %ecx
	jmp	L702
	.p2align 4,,10
	.p2align 3
L716:
	cmpl	%eax, %ebp
	je	L771
	movl	8(%ebp), %edi
	movl	%edi, 12(%esp)
	testl	%edi, %edi
	je	L720
	cmpl	$1, %edi
	je	L856
	movl	12(%esp), %edi
	cmpl	$16, %edi
	jb	L857
	movl	12(%esp), %ecx
	movl	4(%esp), %edi
	movl	-16(%esi,%ecx), %ebx
	movl	%ebx, -16(%edi,%ecx)
	movl	-12(%esi,%ecx), %ebx
	movl	%ebx, -12(%edi,%ecx)
	movl	-8(%esi,%ecx), %ebx
	movl	%ebx, -8(%edi,%ecx)
	movl	-4(%esi,%ecx), %ebx
	movl	%ebx, -4(%edi,%ecx)
	subl	$1, %ecx
	cmpl	$16, %ecx
	jb	L847
	movl	%ebp, 12(%esp)
	andl	$-16, %ecx
	movl	%edx, 16(%esp)
	movl	4(%esp), %edx
	movl	%ecx, 20(%esp)
	xorl	%ecx, %ecx
L728:
	movl	12(%esi,%ecx), %ebx
	movl	8(%esi,%ecx), %edi
	movl	4(%esi,%ecx), %ebp
	movl	%ebx, 4(%esp)
	movl	(%esi,%ecx), %ebx
	movl	%ebp, 4(%edx,%ecx)
	movl	%ebx, (%edx,%ecx)
	movl	%edi, 8(%edx,%ecx)
	movl	4(%esp), %edi
	movl	%edi, 12(%edx,%ecx)
	addl	$16, %ecx
	cmpl	20(%esp), %ecx
	jb	L728
	movl	12(%esp), %ebp
	movl	16(%esp), %edx
L847:
	movl	4(%eax), %edi
	movl	%edi, 4(%esp)
	movl	8(%ebp), %edi
	movl	%edi, 12(%esp)
L720:
	movl	12(%esp), %ebx
	movl	4(%esp), %edi
	movb	$0, (%edi,%ebx)
	movl	%ebx, 8(%eax)
	movl	4(%ebp), %ecx
	jmp	L719
	.p2align 4,,10
	.p2align 3
L852:
	movzbl	(%edx), %ebx
	movb	%bl, (%ecx)
	movl	-4(%edx), %esi
	movl	4(%eax), %ecx
	movb	$0, (%ecx,%esi)
	movl	%esi, 8(%eax)
	movl	-8(%edx), %esi
	jmp	L756
	.p2align 4,,10
	.p2align 3
L731:
	cmpl	(%esp), %ebp
	je	L695
	movl	%eax, 48(%esp)
	leal	12(%ebp), %edx
	jmp	L750
	.p2align 4,,10
	.p2align 3
L734:
	cmpl	%ecx, %edx
	je	L735
	movl	48(%esp), %eax
	movl	%ecx, 4(%eax)
	movl	-4(%edx), %ecx
	movl	12(%eax), %ebx
	movl	%ecx, 8(%eax)
	movl	(%edx), %ecx
	movl	%ecx, 12(%eax)
	testl	%esi, %esi
	je	L749
	movl	%esi, -8(%edx)
	movl	%ebx, (%edx)
L738:
	movb	$0, (%esi)
	leal	16(%edx), %ecx
	addl	$28, 48(%esp)
	movl	$0, -4(%edx)
	cmpl	%ecx, (%esp)
	je	L858
	addl	$28, %edx
L750:
	movl	48(%esp), %eax
	movl	-12(%edx), %ecx
	movl	4(%eax), %esi
	leal	12(%eax), %ebp
	movl	%ecx, (%eax)
	movl	-8(%edx), %ecx
	movl	%esi, %ebx
	cmpl	%ebp, %esi
	jne	L734
	cmpl	%ecx, %edx
	je	L735
	movl	48(%esp), %eax
	movl	%ecx, 4(%eax)
	movl	-4(%edx), %ecx
	movl	%ecx, 8(%eax)
	movl	(%edx), %ecx
	movl	%ecx, 12(%eax)
L749:
	movl	%edx, -8(%edx)
	movl	%edx, %esi
	jmp	L738
	.p2align 4,,10
	.p2align 3
L735:
	leal	-12(%edx), %esi
	cmpl	%esi, 48(%esp)
	je	L772
	movl	-4(%edx), %esi
	testl	%esi, %esi
	je	L739
	cmpl	$1, %esi
	je	L859
	cmpl	$16, %esi
	jb	L860
	movl	-16(%ecx,%esi), %ebp
	movl	%ebp, -16(%ebx,%esi)
	movl	-12(%ecx,%esi), %ebp
	movl	%ebp, -12(%ebx,%esi)
	movl	-8(%ecx,%esi), %ebp
	movl	%ebp, -8(%ebx,%esi)
	movl	-4(%ecx,%esi), %ebp
	movl	%ebp, -4(%ebx,%esi)
	subl	$1, %esi
	cmpl	$16, %esi
	jb	L848
	movl	%edx, 4(%esp)
	andl	$-16, %esi
	movl	(%esp), %edi
	movl	%esi, 12(%esp)
	xorl	%esi, %esi
L747:
	movl	12(%ecx,%esi), %eax
	movl	4(%ecx,%esi), %ebp
	movl	8(%ecx,%esi), %edx
	movl	%eax, (%esp)
	movl	(%ecx,%esi), %eax
	movl	%ebp, 4(%ebx,%esi)
	movl	%eax, (%ebx,%esi)
	movl	%edx, 8(%ebx,%esi)
	movl	(%esp), %eax
	movl	%eax, 12(%ebx,%esi)
	addl	$16, %esi
	cmpl	12(%esp), %esi
	jb	L747
	movl	4(%esp), %edx
	movl	48(%esp), %eax
	movl	%edi, (%esp)
	movl	4(%eax), %ebx
	movl	-4(%edx), %esi
L739:
	movl	48(%esp), %eax
	movb	$0, (%ebx,%esi)
	movl	%esi, 8(%eax)
	movl	-8(%edx), %esi
	jmp	L738
	.p2align 4,,10
	.p2align 3
L858:
	movl	48(%esp), %eax
	movl	44(%esp), %edx
	jmp	L697
	.p2align 4,,10
	.p2align 3
L859:
	movzbl	(%ecx), %ecx
	movl	48(%esp), %eax
	movb	%cl, (%ebx)
	movl	-4(%edx), %esi
	movl	4(%eax), %ebx
	movl	48(%esp), %eax
	movb	$0, (%ebx,%esi)
	movl	%esi, 8(%eax)
	movl	-8(%edx), %esi
	jmp	L738
	.p2align 4,,10
	.p2align 3
L860:
	testl	$8, %esi
	jne	L861
	testl	$4, %esi
	jne	L862
	testl	%esi, %esi
	je	L739
	movzbl	(%ecx), %eax
	movb	%al, (%ebx)
	testl	$2, %esi
	je	L848
	movzwl	-2(%ecx,%esi), %ecx
	movw	%cx, -2(%ebx,%esi)
L848:
	movl	48(%esp), %eax
	movl	-4(%edx), %esi
	movl	4(%eax), %ebx
	jmp	L739
	.p2align 4,,10
	.p2align 3
L853:
	testl	$8, %esi
	jne	L863
	testl	$4, %esi
	jne	L864
	testl	%esi, %esi
	je	L757
	movzbl	(%edx), %ebx
	movb	%bl, (%ecx)
	testl	$2, %esi
	je	L849
	movzwl	-2(%edx,%esi), %edi
	movw	%di, -2(%ecx,%esi)
	movl	4(%eax), %ecx
	movl	-4(%edx), %esi
	jmp	L757
	.p2align 4,,10
	.p2align 3
L855:
	andl	$8, %edi
	jne	L865
	testb	$4, 12(%esp)
	jne	L866
	movl	12(%esp), %ecx
	testl	%ecx, %ecx
	je	L703
	movzbl	(%esi), %ebx
	movl	4(%esp), %edi
	andl	$2, %ecx
	movb	%bl, (%edi)
	je	L846
	movl	12(%esp), %ecx
	movl	4(%esp), %edi
	movzwl	-2(%esi,%ecx), %ebx
	movw	%bx, -2(%edi,%ecx)
	movl	8(%edx), %edi
	movl	%edi, 12(%esp)
	movl	4(%eax), %edi
	movl	%edi, 4(%esp)
	jmp	L703
	.p2align 4,,10
	.p2align 3
L857:
	andl	$8, %edi
	jne	L867
	testb	$4, 12(%esp)
	jne	L868
	movl	12(%esp), %ecx
	testl	%ecx, %ecx
	je	L720
	movzbl	(%esi), %ebx
	movl	4(%esp), %edi
	andl	$2, %ecx
	movb	%bl, (%edi)
	je	L847
	movl	12(%esp), %ecx
	movl	4(%esp), %edi
	movzwl	-2(%esi,%ecx), %ebx
	movw	%bx, -2(%edi,%ecx)
	movl	4(%eax), %edi
	movl	%edi, 4(%esp)
	movl	8(%ebp), %edi
	movl	%edi, 12(%esp)
	jmp	L720
	.p2align 4,,10
	.p2align 3
L772:
	movl	%ecx, %esi
	jmp	L738
	.p2align 4,,10
	.p2align 3
L775:
	movl	%edi, %esi
	jmp	L756
	.p2align 4,,10
	.p2align 3
L854:
	movl	4(%esp), %edi
	movzbl	12(%edx), %ecx
	movb	%cl, (%edi)
	movl	8(%edx), %edi
	movl	%edi, 12(%esp)
	movl	4(%eax), %edi
	movl	%edi, 4(%esp)
	jmp	L703
	.p2align 4,,10
	.p2align 3
L856:
	movl	4(%esp), %edi
	movzbl	12(%ebp), %ecx
	movb	%cl, (%edi)
	movl	4(%eax), %edi
	movl	%edi, 4(%esp)
	movl	8(%ebp), %edi
	movl	%edi, 12(%esp)
	jmp	L720
L771:
	movl	%ebx, %ecx
	jmp	L719
L770:
	movl	%ebx, %ecx
	jmp	L702
L867:
	movl	(%esi), %ecx
	movl	4(%esi), %ebx
	movl	4(%esp), %edi
	movl	%ecx, (%edi)
	movl	%ebx, 4(%edi)
	movl	12(%esp), %ecx
	movl	-8(%esi,%ecx), %ebx
	movl	-4(%esi,%ecx), %esi
	movl	%esi, 8(%esp)
	movl	%ebx, -8(%edi,%ecx)
	movl	%esi, -4(%edi,%ecx)
	movl	4(%eax), %edi
	movl	%edi, 4(%esp)
	movl	8(%ebp), %edi
	movl	%edi, 12(%esp)
	jmp	L720
L865:
	movl	(%esi), %ecx
	movl	4(%esi), %ebx
	movl	4(%esp), %edi
	movl	%ecx, (%edi)
	movl	%ebx, 4(%edi)
	movl	12(%esp), %ecx
	movl	-8(%esi,%ecx), %ebx
	movl	-4(%esi,%ecx), %esi
	movl	%esi, 8(%esp)
	movl	%ebx, -8(%edi,%ecx)
	movl	%esi, -4(%edi,%ecx)
	movl	8(%edx), %edi
	movl	%edi, 12(%esp)
	movl	4(%eax), %edi
	movl	%edi, 4(%esp)
	jmp	L703
L861:
	movl	(%ecx), %edi
	movl	4(%ecx), %ebp
	movl	%edi, (%ebx)
	movl	%ebp, 4(%ebx)
	movl	-8(%ecx,%esi), %edi
	movl	-4(%ecx,%esi), %ebp
	movl	%edi, -8(%ebx,%esi)
	movl	%ebp, -4(%ebx,%esi)
	movl	48(%esp), %eax
	movl	-4(%edx), %esi
	movl	4(%eax), %ebx
	jmp	L739
L863:
	movl	(%edx), %edi
	movl	4(%edx), %ebp
	movl	%edi, (%ecx)
	movl	%ebp, 4(%ecx)
	movl	-8(%edx,%esi), %edi
	movl	-4(%edx,%esi), %ebp
	movl	%edi, -8(%ecx,%esi)
	movl	%ebp, -4(%ecx,%esi)
	movl	4(%eax), %ecx
	movl	-4(%edx), %esi
	jmp	L757
L862:
	movl	(%ecx), %ebp
	movl	%ebp, (%ebx)
	movl	-4(%ecx,%esi), %ecx
	movl	%ecx, -4(%ebx,%esi)
	movl	48(%esp), %eax
	movl	-4(%edx), %esi
	movl	4(%eax), %ebx
	jmp	L739
L864:
	movl	(%edx), %edi
	movl	%edi, (%ecx)
	movl	-4(%edx,%esi), %edi
	movl	%edi, -4(%ecx,%esi)
	movl	4(%eax), %ecx
	movl	-4(%edx), %esi
	jmp	L757
L866:
	movl	(%esi), %ebx
	movl	4(%esp), %edi
	movl	%ebx, (%edi)
	movl	12(%esp), %ecx
	movl	-4(%esi,%ecx), %ebx
	movl	%ebx, -4(%edi,%ecx)
	movl	8(%edx), %edi
	movl	%edi, 12(%esp)
	movl	4(%eax), %edi
	movl	%edi, 4(%esp)
	jmp	L703
L868:
	movl	(%esi), %ebx
	movl	4(%esp), %edi
	movl	%ebx, (%edi)
	movl	12(%esp), %ecx
	movl	-4(%esi,%ecx), %ebx
	movl	%ebx, -4(%edi,%ecx)
	movl	4(%eax), %edi
	movl	%edi, 4(%esp)
	movl	8(%ebp), %edi
	movl	%edi, 12(%esp)
	jmp	L720
	.cfi_endproc
LFE42:
	.p2align 4
	.def	__ZSt12__move_mergeIP13DemoChatEntryN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEZL23DemoReadExtendedTrailervEUlRKS0_S9_E_ET0_T_SC_SC_SC_SB_T1_.isra.0;	.scl	3;	.type	32;	.endef
__ZSt12__move_mergeIP13DemoChatEntryN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEZL23DemoReadExtendedTrailervEUlRKS0_S9_E_ET0_T_SC_SC_SC_SB_T1_.isra.0:
LFB44:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
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
	movl	%eax, %ebx
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	movl	%edx, 4(%esp)
	movl	48(%esp), %eax
	cmpl	%ebx, %edx
	jne	L1025
	jmp	L907
	.p2align 4,,10
	.p2align 3
L1031:
	leal	12(%eax), %edi
	movl	%esi, (%eax)
	leal	12(%ebp), %esi
	movl	4(%ebp), %ecx
	cmpl	%edi, %edx
	je	L1030
	cmpl	%esi, %ecx
	je	L873
	movl	%ecx, 4(%eax)
	movl	8(%ebp), %ecx
	movl	12(%eax), %edi
	movl	%ecx, 8(%eax)
	movl	12(%ebp), %ecx
	movl	%ecx, 12(%eax)
	testl	%edx, %edx
	je	L887
	movl	%edx, 4(%ebp)
	movl	%edi, 12(%ebp)
L876:
	movb	$0, (%edx)
	addl	$28, %ebp
	addl	$28, %eax
	movl	$0, -20(%ebp)
	cmpl	%ebx, 4(%esp)
	je	L907
L1025:
	cmpl	%ebp, 44(%esp)
	je	L870
	movl	4(%eax), %edx
	movl	0(%ebp), %esi
	movl	(%ebx), %ecx
	movl	%edx, (%esp)
	cmpl	%ecx, %esi
	jb	L1031
	leal	12(%eax), %edi
	movl	%ecx, (%eax)
	leal	12(%ebx), %esi
	movl	4(%ebx), %ecx
	cmpl	%edi, %edx
	je	L1032
	cmpl	%esi, %ecx
	je	L890
	movl	%ecx, 4(%eax)
	movl	8(%ebx), %ecx
	movl	12(%eax), %edi
	movl	%ecx, 8(%eax)
	movl	12(%ebx), %ecx
	movl	%ecx, 12(%eax)
	testl	%edx, %edx
	je	L904
	movl	%edx, 4(%ebx)
	movl	%edi, 12(%ebx)
L893:
	movb	$0, (%edx)
	addl	$28, %ebx
	addl	$28, %eax
	movl	$0, -20(%ebx)
	cmpl	%ebx, 4(%esp)
	jne	L1025
	.p2align 4
	.p2align 3
L907:
	cmpl	%ebp, 44(%esp)
	je	L925
	leal	12(%ebp), %edx
	jmp	L942
	.p2align 4,,10
	.p2align 3
L926:
	cmpl	%edi, %edx
	je	L927
	movl	%edi, 4(%eax)
	movl	-4(%edx), %ecx
	movl	12(%eax), %ebp
	movl	%ecx, 8(%eax)
	movl	(%edx), %ecx
	movl	%ecx, 12(%eax)
	testl	%esi, %esi
	je	L941
	movl	%esi, -8(%edx)
	movl	%ebp, (%edx)
L930:
	movb	$0, (%esi)
	addl	$28, %eax
	leal	16(%edx), %ecx
	movl	$0, -4(%edx)
	cmpl	%ecx, 44(%esp)
	je	L925
	addl	$28, %edx
L942:
	movl	-12(%edx), %ecx
	movl	4(%eax), %esi
	leal	12(%eax), %ebp
	movl	%ecx, (%eax)
	movl	%esi, %ecx
	movl	-8(%edx), %edi
	cmpl	%ebp, %esi
	jne	L926
	cmpl	%edi, %edx
	je	L927
	movl	%edi, 4(%eax)
	movl	-4(%edx), %ecx
	movl	%ecx, 8(%eax)
	movl	(%edx), %ecx
	movl	%ecx, 12(%eax)
L941:
	movl	%edx, -8(%edx)
	movl	%edx, %esi
	jmp	L930
	.p2align 4,,10
	.p2align 3
L927:
	leal	-12(%edx), %esi
	cmpl	%esi, %eax
	je	L947
	movl	-4(%edx), %esi
	testl	%esi, %esi
	je	L931
	cmpl	$1, %esi
	je	L1033
	cmpl	$16, %esi
	jb	L1034
	movl	-16(%edx,%esi), %edi
	movl	%edi, -16(%ecx,%esi)
	movl	-12(%edx,%esi), %edi
	movl	%edi, -12(%ecx,%esi)
	movl	-8(%edx,%esi), %edi
	movl	%edi, -8(%ecx,%esi)
	movl	-4(%edx,%esi), %edi
	movl	%edi, -4(%ecx,%esi)
	subl	$1, %esi
	cmpl	$16, %esi
	jb	L1029
	movl	%eax, (%esp)
	andl	$-16, %esi
	movl	44(%esp), %ebx
	movl	%esi, 4(%esp)
	xorl	%esi, %esi
L939:
	movl	12(%edx,%esi), %eax
	movl	4(%edx,%esi), %ebp
	movl	8(%edx,%esi), %edi
	movl	%eax, 8(%esp)
	movl	(%edx,%esi), %eax
	movl	%ebp, 4(%ecx,%esi)
	movl	%eax, (%ecx,%esi)
	movl	%edi, 8(%ecx,%esi)
	movl	8(%esp), %eax
	movl	%eax, 12(%ecx,%esi)
	addl	$16, %esi
	cmpl	4(%esp), %esi
	jb	L939
	movl	%ebx, 44(%esp)
	movl	(%esp), %eax
L1029:
	movl	4(%eax), %ecx
	movl	-4(%edx), %esi
L931:
	movb	$0, (%ecx,%esi)
	movl	%esi, 8(%eax)
	movl	-8(%edx), %esi
	jmp	L930
	.p2align 4,,10
	.p2align 3
L925:
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
L1030:
	.cfi_restore_state
	cmpl	%esi, %ecx
	je	L873
	movl	%ecx, 4(%eax)
	movl	8(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	12(%ebp), %edx
	movl	%edx, 12(%eax)
L887:
	movl	%esi, 4(%ebp)
	movl	%esi, %edx
	jmp	L876
	.p2align 4,,10
	.p2align 3
L1032:
	cmpl	%esi, %ecx
	je	L890
	movl	%ecx, 4(%eax)
	movl	8(%ebx), %edx
	movl	%edx, 8(%eax)
	movl	12(%ebx), %edx
	movl	%edx, 12(%eax)
L904:
	movl	%esi, 4(%ebx)
	movl	%esi, %edx
	jmp	L893
	.p2align 4,,10
	.p2align 3
L873:
	cmpl	%ebp, %eax
	je	L943
	movl	8(%ebp), %edi
	movl	%edi, 8(%esp)
	testl	%edi, %edi
	je	L877
	cmpl	$1, %edi
	je	L1035
	movl	8(%esp), %edi
	cmpl	$16, %edi
	jb	L1036
	movl	8(%esp), %edx
	movl	(%esp), %edi
	movl	-16(%esi,%edx), %ecx
	movl	%ecx, -16(%edi,%edx)
	movl	-12(%esi,%edx), %ecx
	movl	%ecx, -12(%edi,%edx)
	movl	-8(%esi,%edx), %ecx
	movl	%ecx, -8(%edi,%edx)
	movl	-4(%esi,%edx), %ecx
	movl	%ecx, -4(%edi,%edx)
	subl	$1, %edx
	cmpl	$16, %edx
	jb	L1026
	movl	%ebx, 16(%esp)
	andl	$-16, %edx
	movl	%eax, 8(%esp)
	movl	(%esp), %eax
	movl	%edx, 20(%esp)
	xorl	%edx, %edx
L885:
	movl	12(%esi,%edx), %ecx
	movl	8(%esi,%edx), %ebx
	movl	4(%esi,%edx), %edi
	movl	%ecx, (%esp)
	movl	(%esi,%edx), %ecx
	movl	%edi, 4(%eax,%edx)
	movl	%ecx, (%eax,%edx)
	movl	%ebx, 8(%eax,%edx)
	movl	(%esp), %ebx
	movl	%ebx, 12(%eax,%edx)
	addl	$16, %edx
	cmpl	20(%esp), %edx
	jb	L885
	movl	8(%esp), %eax
	movl	16(%esp), %ebx
L1026:
	movl	4(%eax), %edi
	movl	%edi, (%esp)
	movl	8(%ebp), %edi
	movl	%edi, 8(%esp)
L877:
	movl	8(%esp), %esi
	movl	(%esp), %edi
	movb	$0, (%edi,%esi)
	movl	%esi, 8(%eax)
	movl	4(%ebp), %edx
	jmp	L876
	.p2align 4,,10
	.p2align 3
L890:
	cmpl	%eax, %ebx
	je	L944
	movl	8(%ebx), %edi
	movl	%edi, 8(%esp)
	testl	%edi, %edi
	je	L894
	cmpl	$1, %edi
	je	L1037
	movl	8(%esp), %edi
	cmpl	$16, %edi
	jb	L1038
	movl	8(%esp), %edx
	movl	(%esp), %edi
	movl	-16(%esi,%edx), %ecx
	movl	%ecx, -16(%edi,%edx)
	movl	-12(%esi,%edx), %ecx
	movl	%ecx, -12(%edi,%edx)
	movl	-8(%esi,%edx), %ecx
	movl	%ecx, -8(%edi,%edx)
	movl	-4(%esi,%edx), %ecx
	movl	%ecx, -4(%edi,%edx)
	subl	$1, %edx
	cmpl	$16, %edx
	jb	L1027
	movl	%ebx, 16(%esp)
	andl	$-16, %edx
	movl	%eax, 8(%esp)
	movl	(%esp), %eax
	movl	%edx, 20(%esp)
	xorl	%edx, %edx
L902:
	movl	12(%esi,%edx), %ecx
	movl	8(%esi,%edx), %ebx
	movl	4(%esi,%edx), %edi
	movl	%ecx, (%esp)
	movl	(%esi,%edx), %ecx
	movl	%edi, 4(%eax,%edx)
	movl	%ecx, (%eax,%edx)
	movl	%ebx, 8(%eax,%edx)
	movl	(%esp), %ebx
	movl	%ebx, 12(%eax,%edx)
	addl	$16, %edx
	cmpl	20(%esp), %edx
	jb	L902
	movl	8(%esp), %eax
	movl	16(%esp), %ebx
L1027:
	movl	4(%eax), %edi
	movl	%edi, (%esp)
	movl	8(%ebx), %edi
	movl	%edi, 8(%esp)
L894:
	movl	8(%esp), %esi
	movl	(%esp), %edi
	movb	$0, (%edi,%esi)
	movl	%esi, 8(%eax)
	movl	4(%ebx), %edx
	jmp	L893
	.p2align 4,,10
	.p2align 3
L870:
	cmpl	%ebx, 4(%esp)
	je	L907
	movl	%eax, (%esp)
	leal	12(%ebx), %edx
	movl	%ebp, 8(%esp)
	jmp	L924
	.p2align 4,,10
	.p2align 3
L908:
	cmpl	%ecx, %edx
	je	L909
	movl	(%esp), %eax
	movl	%ecx, 4(%eax)
	movl	-4(%edx), %ecx
	movl	12(%eax), %ebx
	movl	%ecx, 8(%eax)
	movl	(%edx), %ecx
	movl	%ecx, 12(%eax)
	testl	%esi, %esi
	je	L923
	movl	%esi, -8(%edx)
	movl	%ebx, (%edx)
L912:
	movb	$0, (%esi)
	leal	16(%edx), %ecx
	addl	$28, (%esp)
	movl	$0, -4(%edx)
	cmpl	%ecx, 4(%esp)
	je	L1039
	addl	$28, %edx
L924:
	movl	(%esp), %eax
	movl	-12(%edx), %ecx
	movl	4(%eax), %esi
	leal	12(%eax), %ebp
	movl	%ecx, (%eax)
	movl	-8(%edx), %ecx
	movl	%esi, %ebx
	cmpl	%ebp, %esi
	jne	L908
	cmpl	%ecx, %edx
	je	L909
	movl	(%esp), %eax
	movl	%ecx, 4(%eax)
	movl	-4(%edx), %ecx
	movl	%ecx, 8(%eax)
	movl	(%edx), %ecx
	movl	%ecx, 12(%eax)
L923:
	movl	%edx, -8(%edx)
	movl	%edx, %esi
	jmp	L912
	.p2align 4,,10
	.p2align 3
L909:
	leal	-12(%edx), %esi
	cmpl	%esi, (%esp)
	je	L945
	movl	-4(%edx), %esi
	testl	%esi, %esi
	je	L913
	cmpl	$1, %esi
	je	L1040
	cmpl	$16, %esi
	jb	L1041
	movl	-16(%ecx,%esi), %ebp
	movl	%ebp, -16(%ebx,%esi)
	movl	-12(%ecx,%esi), %ebp
	movl	%ebp, -12(%ebx,%esi)
	movl	-8(%ecx,%esi), %ebp
	movl	%ebp, -8(%ebx,%esi)
	movl	-4(%ecx,%esi), %ebp
	movl	%ebp, -4(%ebx,%esi)
	subl	$1, %esi
	cmpl	$16, %esi
	jb	L1028
	movl	%edx, 16(%esp)
	andl	$-16, %esi
	movl	4(%esp), %edi
	movl	%esi, 20(%esp)
	xorl	%esi, %esi
L921:
	movl	12(%ecx,%esi), %eax
	movl	4(%ecx,%esi), %ebp
	movl	8(%ecx,%esi), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx,%esi), %eax
	movl	%ebp, 4(%ebx,%esi)
	movl	%eax, (%ebx,%esi)
	movl	%edx, 8(%ebx,%esi)
	movl	4(%esp), %eax
	movl	%eax, 12(%ebx,%esi)
	addl	$16, %esi
	cmpl	20(%esp), %esi
	jb	L921
	movl	%edi, 4(%esp)
	movl	16(%esp), %edx
L1028:
	movl	(%esp), %eax
	movl	-4(%edx), %esi
	movl	4(%eax), %ebx
L913:
	movl	(%esp), %eax
	movb	$0, (%ebx,%esi)
	movl	%esi, 8(%eax)
	movl	-8(%edx), %esi
	jmp	L912
	.p2align 4,,10
	.p2align 3
L1039:
	movl	(%esp), %eax
	movl	8(%esp), %ebp
	jmp	L907
	.p2align 4,,10
	.p2align 3
L1040:
	movzbl	(%ecx), %ecx
	movl	(%esp), %eax
	movb	%cl, (%ebx)
	movl	-4(%edx), %esi
	movl	4(%eax), %ebx
	movl	(%esp), %eax
	movb	$0, (%ebx,%esi)
	movl	%esi, 8(%eax)
	movl	-8(%edx), %esi
	jmp	L912
	.p2align 4,,10
	.p2align 3
L1033:
	movzbl	(%edx), %ebx
	movb	%bl, (%ecx)
	movl	-4(%edx), %esi
	movl	4(%eax), %ecx
	movb	$0, (%ecx,%esi)
	movl	%esi, 8(%eax)
	movl	-8(%edx), %esi
	jmp	L930
	.p2align 4,,10
	.p2align 3
L1034:
	testl	$8, %esi
	jne	L1042
	testl	$4, %esi
	jne	L1043
	testl	%esi, %esi
	je	L931
	movzbl	(%edx), %ebx
	movb	%bl, (%ecx)
	testl	$2, %esi
	je	L1029
	movzwl	-2(%edx,%esi), %edi
	movw	%di, -2(%ecx,%esi)
	movl	4(%eax), %ecx
	movl	-4(%edx), %esi
	jmp	L931
	.p2align 4,,10
	.p2align 3
L1041:
	testl	$8, %esi
	jne	L1044
	testl	$4, %esi
	jne	L1045
	testl	%esi, %esi
	je	L913
	movzbl	(%ecx), %eax
	movb	%al, (%ebx)
	testl	$2, %esi
	je	L1028
	movzwl	-2(%ecx,%esi), %ecx
	movw	%cx, -2(%ebx,%esi)
	movl	(%esp), %eax
	movl	-4(%edx), %esi
	movl	4(%eax), %ebx
	jmp	L913
	.p2align 4,,10
	.p2align 3
L1036:
	andl	$8, %edi
	jne	L1046
	testb	$4, 8(%esp)
	jne	L1047
	movl	8(%esp), %edx
	testl	%edx, %edx
	je	L877
	movzbl	(%esi), %ecx
	movl	(%esp), %edi
	andl	$2, %edx
	movb	%cl, (%edi)
	je	L1026
	movl	8(%esp), %edx
	movl	(%esp), %edi
	movzwl	-2(%esi,%edx), %ecx
	movw	%cx, -2(%edi,%edx)
	movl	4(%eax), %edi
	movl	%edi, (%esp)
	movl	8(%ebp), %edi
	movl	%edi, 8(%esp)
	jmp	L877
	.p2align 4,,10
	.p2align 3
L1038:
	andl	$8, %edi
	jne	L1048
	testb	$4, 8(%esp)
	jne	L1049
	movl	8(%esp), %edx
	testl	%edx, %edx
	je	L894
	movzbl	(%esi), %ecx
	movl	(%esp), %edi
	andl	$2, %edx
	movb	%cl, (%edi)
	je	L1027
	movl	8(%esp), %edx
	movl	(%esp), %edi
	movzwl	-2(%esi,%edx), %ecx
	movw	%cx, -2(%edi,%edx)
	movl	4(%eax), %edi
	movl	%edi, (%esp)
	movl	8(%ebx), %edi
	movl	%edi, 8(%esp)
	jmp	L894
	.p2align 4,,10
	.p2align 3
L945:
	movl	%ecx, %esi
	jmp	L912
	.p2align 4,,10
	.p2align 3
L947:
	movl	%edi, %esi
	jmp	L930
	.p2align 4,,10
	.p2align 3
L1037:
	movl	(%esp), %edi
	movzbl	12(%ebx), %edx
	movb	%dl, (%edi)
	movl	4(%eax), %edi
	movl	%edi, (%esp)
	movl	8(%ebx), %edi
	movl	%edi, 8(%esp)
	jmp	L894
	.p2align 4,,10
	.p2align 3
L1035:
	movl	(%esp), %edi
	movzbl	12(%ebp), %edx
	movb	%dl, (%edi)
	movl	4(%eax), %edi
	movl	%edi, (%esp)
	movl	8(%ebp), %edi
	movl	%edi, 8(%esp)
	jmp	L877
L944:
	movl	%ecx, %edx
	jmp	L893
L943:
	movl	%ecx, %edx
	jmp	L876
L1046:
	movl	(%esi), %edx
	movl	4(%esi), %ecx
	movl	(%esp), %edi
	movl	%edx, (%edi)
	movl	%ecx, 4(%edi)
	movl	8(%esp), %edx
	movl	(%esp), %ecx
	movl	-4(%esi,%edx), %edi
	movl	-8(%esi,%edx), %esi
	movl	%edi, 12(%esp)
	movl	%esi, -8(%ecx,%edx)
	movl	%edi, -4(%ecx,%edx)
	movl	4(%eax), %edi
	movl	%edi, (%esp)
	movl	8(%ebp), %edi
	movl	%edi, 8(%esp)
	jmp	L877
L1048:
	movl	(%esi), %edx
	movl	4(%esi), %ecx
	movl	(%esp), %edi
	movl	%edx, (%edi)
	movl	%ecx, 4(%edi)
	movl	8(%esp), %edx
	movl	(%esp), %ecx
	movl	-4(%esi,%edx), %edi
	movl	-8(%esi,%edx), %esi
	movl	%edi, 12(%esp)
	movl	%esi, -8(%ecx,%edx)
	movl	%edi, -4(%ecx,%edx)
	movl	4(%eax), %edi
	movl	%edi, (%esp)
	movl	8(%ebx), %edi
	movl	%edi, 8(%esp)
	jmp	L894
L1044:
	movl	(%ecx), %edi
	movl	4(%ecx), %ebp
	movl	%edi, (%ebx)
	movl	%ebp, 4(%ebx)
	movl	-8(%ecx,%esi), %edi
	movl	-4(%ecx,%esi), %ebp
	movl	%edi, -8(%ebx,%esi)
	movl	%ebp, -4(%ebx,%esi)
	movl	(%esp), %eax
	movl	-4(%edx), %esi
	movl	4(%eax), %ebx
	jmp	L913
L1042:
	movl	(%edx), %edi
	movl	4(%edx), %ebp
	movl	%edi, (%ecx)
	movl	%ebp, 4(%ecx)
	movl	-8(%edx,%esi), %edi
	movl	-4(%edx,%esi), %ebp
	movl	%edi, -8(%ecx,%esi)
	movl	%ebp, -4(%ecx,%esi)
	movl	4(%eax), %ecx
	movl	-4(%edx), %esi
	jmp	L931
L1045:
	movl	(%ecx), %ebp
	movl	%ebp, (%ebx)
	movl	-4(%ecx,%esi), %ecx
	movl	%ecx, -4(%ebx,%esi)
	movl	(%esp), %eax
	movl	-4(%edx), %esi
	movl	4(%eax), %ebx
	jmp	L913
L1043:
	movl	(%edx), %edi
	movl	%edi, (%ecx)
	movl	-4(%edx,%esi), %edi
	movl	%edi, -4(%ecx,%esi)
	movl	4(%eax), %ecx
	movl	-4(%edx), %esi
	jmp	L931
L1049:
	movl	(%esi), %ecx
	movl	(%esp), %edi
	movl	%ecx, (%edi)
	movl	8(%esp), %edx
	movl	-4(%esi,%edx), %ecx
	movl	%ecx, -4(%edi,%edx)
	movl	4(%eax), %edi
	movl	%edi, (%esp)
	movl	8(%ebx), %edi
	movl	%edi, 8(%esp)
	jmp	L894
L1047:
	movl	(%esi), %ecx
	movl	(%esp), %edi
	movl	%ecx, (%edi)
	movl	8(%esp), %edx
	movl	-4(%esi,%edx), %ecx
	movl	%ecx, -4(%edi,%edx)
	movl	4(%eax), %edi
	movl	%edi, (%esp)
	movl	8(%ebp), %edi
	movl	%edi, 8(%esp)
	jmp	L877
	.cfi_endproc
LFE44:
	.p2align 4
	.def	__ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEES3_ZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_T0_T1_.isra.0;	.scl	3;	.type	32;	.endef
__ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEES3_ZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_T0_T1_.isra.0:
LFB46:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	subl	%eax, %ebx
	cmpl	$168, %ebx
	jle	L1051
	movl	%ecx, 28(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 24(%esp)
	movl	%esi, 40(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	%edi, 44(%esp)
	.cfi_offset 7, -12
	movl	%edx, %edi
	.p2align 4
	.p2align 3
L1052:
	movl	%esi, %eax
	addl	$196, %esi
	movl	%esi, %edx
	call	__ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEEZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_T0_.isra.0
	movl	%edi, %eax
	subl	%esi, %eax
	cmpl	$168, %eax
	jg	L1052
	movl	8(%esp), %edx
	movl	%esi, %eax
	call	__ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEEZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_T0_.isra.0
	cmpl	$196, %ebx
	jle	L1050
	movl	%ebx, %eax
	movl	%ebp, 48(%esp)
	.cfi_offset 5, -8
	movl	$7, %esi
	sarl	$2, %eax
	leal	(%esi,%esi), %edx
	imull	$-1227133513, %eax, %ebp
	movl	28(%esp), %eax
	movl	%edx, 20(%esp)
	addl	%ebx, %eax
	movl	%eax, 12(%esp)
	movl	%ebp, 16(%esp)
	cmpl	%edx, 16(%esp)
	jl	L1060
	.p2align 4
	.p2align 3
L1069:
	imull	$28, %edx, %ecx
	movl	28(%esp), %eax
	movl	24(%esp), %ebx
	movl	%esi, 32(%esp)
	imull	$28, %esi, %edi
	movl	%edx, %esi
	movl	%ecx, %ebp
	subl	%ecx, %edi
	movl	%eax, %ecx
	.p2align 4
	.p2align 3
L1056:
	movl	%ebx, %eax
	addl	%ebp, %ebx
	movl	%ecx, 4(%esp)
	movl	%ebx, (%esp)
	leal	(%ebx,%edi), %edx
	movl	%edx, %ecx
	call	__ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEES3_ZL23DemoReadExtendedTrailervEUlRKS2_S9_E_ET0_T_SC_SC_SC_SB_T1_.isra.0
	movl	8(%esp), %edx
	movl	%eax, %ecx
	subl	%ebx, %edx
	sarl	$2, %edx
	imull	$-1227133513, %edx, %edx
	cmpl	%edx, %esi
	jle	L1056
	movl	32(%esp), %esi
L1055:
	cmpl	%edx, %esi
	movl	%eax, 4(%esp)
	movl	8(%esp), %eax
	cmovle	%esi, %edx
	sall	$2, %esi
	movl	%eax, (%esp)
	movl	%ebx, %eax
	imull	$28, %edx, %edx
	addl	%ebx, %edx
	movl	%edx, %ecx
	call	__ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEES3_ZL23DemoReadExtendedTrailervEUlRKS2_S9_E_ET0_T_SC_SC_SC_SB_T1_.isra.0
	cmpl	%esi, 16(%esp)
	jl	L1057
	imull	$28, %esi, %ecx
	movl	28(%esp), %ebx
	imull	$28, 20(%esp), %edi
	movl	%ecx, %ebp
	subl	%ecx, %edi
	movl	24(%esp), %ecx
	.p2align 4
	.p2align 3
L1058:
	movl	%ebx, %eax
	addl	%ebp, %ebx
	movl	%ecx, 4(%esp)
	movl	%ebx, (%esp)
	leal	(%ebx,%edi), %edx
	movl	%edx, %ecx
	call	__ZSt12__move_mergeIP13DemoChatEntryN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEZL23DemoReadExtendedTrailervEUlRKS0_S9_E_ET0_T_SC_SC_SC_SB_T1_.isra.0
	movl	12(%esp), %edx
	movl	%eax, %ecx
	subl	%ebx, %edx
	sarl	$2, %edx
	imull	$-1227133513, %edx, %edx
	cmpl	%edx, %esi
	jle	L1058
	movl	20(%esp), %edi
	movl	%eax, 4(%esp)
	movl	12(%esp), %eax
	cmpl	%edi, %edx
	cmovg	%edi, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	imull	$28, %edx, %edx
	addl	%ebx, %edx
	movl	%edx, %ecx
	call	__ZSt12__move_mergeIP13DemoChatEntryN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEZL23DemoReadExtendedTrailervEUlRKS0_S9_E_ET0_T_SC_SC_SC_SB_T1_.isra.0
	cmpl	%esi, 16(%esp)
	jle	L1067
	leal	(%esi,%esi), %edx
	movl	%edx, 20(%esp)
	cmpl	%edx, 16(%esp)
	jge	L1069
L1060:
	movl	16(%esp), %edx
	movl	28(%esp), %eax
	movl	24(%esp), %ebx
	jmp	L1055
	.p2align 4,,10
	.p2align 3
L1057:
	movl	20(%esp), %eax
	movl	16(%esp), %ebp
	movl	24(%esp), %esi
	cmpl	%eax, %ebp
	movl	%eax, %edx
	movl	28(%esp), %eax
	cmovle	%ebp, %edx
	movl	%esi, 4(%esp)
	movl	12(%esp), %esi
	imull	$28, %edx, %edx
	movl	%esi, (%esp)
	addl	%eax, %edx
	movl	%edx, %ecx
	call	__ZSt12__move_mergeIP13DemoChatEntryN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEZL23DemoReadExtendedTrailervEUlRKS0_S9_E_ET0_T_SC_SC_SC_SB_T1_.isra.0
L1067:
	movl	48(%esp), %ebp
	.cfi_restore 5
L1050:
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	44(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %ebx
	addl	$52, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
L1051:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -20
	movl	36(%esp), %ebx
	addl	$52, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEEZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_T0_.isra.0
	.cfi_endproc
LFE46:
	.p2align 4
	.def	__ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEES3_ZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_SB_T0_T1_.isra.0;	.scl	3;	.type	32;	.endef
__ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEES3_ZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_SB_T0_T1_.isra.0:
LFB54:
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
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebp
	movl	%ebp, %ecx
	call	__ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEES3_ZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_T0_T1_.isra.0
	movl	%ebp, %ecx
	movl	%edi, %edx
	movl	%ebx, %eax
	call	__ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEES3_ZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_T0_T1_.isra.0
	movl	%edi, %eax
	movl	%ebp, 8(%esp)
	movl	%edi, %ecx
	subl	%ebx, %eax
	movl	%ebx, %edx
	sarl	$2, %eax
	imull	$-1227133513, %eax, %eax
	movl	%eax, 4(%esp)
	movl	%ebx, %eax
	subl	%esi, %eax
	sarl	$2, %eax
	imull	$-1227133513, %eax, %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEEiS3_ZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_SB_T0_SC_T1_T2_.isra.0
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
LFE54:
	.p2align 4
	.def	__ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS3_SaIS3_EEEEEET_S9_S9_S9_St26random_access_iterator_tag.isra.0;	.scl	3;	.type	32;	.endef
__ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS3_SaIS3_EEEEEET_S9_S9_S9_St26random_access_iterator_tag.isra.0:
LFB56:
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
	subl	$84, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%eax, 36(%esp)
	cmpl	%edx, %eax
	je	L1255
	movl	%eax, %ebx
	cmpl	%ecx, %edx
	je	L1074
	movl	%edx, %edi
	movl	%ecx, %eax
	movl	%edx, 48(%esp)
	subl	%ebx, %ecx
	movl	%ebx, %edx
	movl	%edi, %ebx
	sarl	$2, %ecx
	subl	%edi, %eax
	subl	%edx, %ebx
	imull	$-1227133513, %ecx, %ecx
	leal	(%edx,%eax), %edi
	sarl	$2, %ebx
	imull	$-1227133513, %ebx, %esi
	movl	%ecx, %ebx
	subl	%esi, %ebx
	movl	%esi, 44(%esp)
	cmpl	%ebx, %esi
	je	L1256
	movl	%edi, 16(%esp)
	.p2align 4
	.p2align 3
L1109:
	movl	44(%esp), %edi
	movl	%ecx, %eax
	subl	%edi, %eax
	movl	%eax, 40(%esp)
	cmpl	%eax, %edi
	jge	L1110
	testl	%eax, %eax
	jle	L1111
	imull	$28, %edi, %eax
	movl	36(%esp), %edx
	movl	%ecx, 36(%esp)
	leal	68(%esp), %edi
	movl	$0, 52(%esp)
	leal	12(%edx), %ebx
	leal	12(%edx,%eax), %esi
	.p2align 4
	.p2align 3
L1143:
	movl	-12(%ebx), %eax
	movl	-4(%ebx), %ecx
	movl	%edi, 60(%esp)
	movl	%eax, 56(%esp)
	movl	-8(%ebx), %eax
	movl	%ecx, 48(%esp)
	cmpl	%ebx, %eax
	je	L1257
	movl	%eax, 60(%esp)
	movl	(%ebx), %eax
	movl	%eax, 68(%esp)
L1120:
	movl	48(%esp), %eax
	movl	%ebx, -8(%ebx)
	movb	$0, (%ebx)
	movl	$0, -4(%ebx)
	movl	%eax, 64(%esp)
	movl	-12(%esi), %eax
	movl	%eax, -12(%ebx)
	movl	-8(%esi), %eax
	cmpl	%esi, %eax
	je	L1258
	movl	%eax, -8(%ebx)
	movl	-4(%esi), %eax
	movl	%eax, -4(%ebx)
	movl	(%esi), %eax
	movl	%eax, (%ebx)
	movl	%esi, -8(%esi)
L1122:
	movl	%esi, %eax
L1133:
	movb	$0, (%eax)
	movl	56(%esp), %eax
	movl	60(%esp), %edx
	movss	64(%esp), %xmm0
	movl	%eax, -12(%esi)
	movl	-8(%esi), %eax
	cmpl	%edi, %edx
	je	L1259
	cmpl	%esi, %eax
	je	L1260
	movss	68(%esp), %xmm1
	movl	(%esi), %ecx
	movl	%edx, -8(%esi)
	unpcklps	%xmm1, %xmm0
	movlps	%xmm0, -4(%esi)
	testl	%eax, %eax
	je	L1138
	movl	%eax, 60(%esp)
	movl	%ecx, 68(%esp)
L1141:
	movb	$0, (%eax)
	movl	60(%esp), %eax
	movl	$0, 64(%esp)
	cmpl	%edi, %eax
	je	L1142
	call	_mi_free
L1142:
	addl	$1, 52(%esp)
	addl	$28, %esi
	movl	52(%esp), %eax
	cmpl	%eax, 40(%esp)
	je	L1261
	addl	$28, %ebx
	jmp	L1143
	.p2align 4,,10
	.p2align 3
L1110:
	imull	$28, %ecx, %eax
	movl	36(%esp), %edx
	movl	44(%esp), %ebx
	addl	%edx, %eax
	imull	$28, 40(%esp), %edx
	movl	%eax, %edi
	subl	%edx, %edi
	movl	%edi, 36(%esp)
	testl	%ebx, %ebx
	jle	L1146
	movl	$0, 52(%esp)
	leal	-16(%edi), %ebx
	leal	-16(%eax), %esi
	movl	%ecx, 32(%esp)
	leal	68(%esp), %edi
	.p2align 4
	.p2align 3
L1178:
	leal	-12(%ebx), %eax
	movl	-4(%ebx), %ecx
	movl	%edi, 60(%esp)
	movl	%eax, 36(%esp)
	movl	-12(%ebx), %eax
	movl	%ecx, 48(%esp)
	movl	%eax, 56(%esp)
	movl	-8(%ebx), %eax
	cmpl	%ebx, %eax
	je	L1262
	movl	%eax, 60(%esp)
	movl	(%ebx), %eax
	movl	%eax, 68(%esp)
L1155:
	movl	48(%esp), %eax
	movl	%ebx, -8(%ebx)
	movb	$0, (%ebx)
	movl	$0, -4(%ebx)
	movl	%eax, 64(%esp)
	movl	-12(%esi), %eax
	movl	%eax, -12(%ebx)
	movl	-8(%esi), %eax
	cmpl	%esi, %eax
	je	L1263
	movl	%eax, -8(%ebx)
	movl	-4(%esi), %eax
	movl	%eax, -4(%ebx)
	movl	(%esi), %eax
	movl	%eax, (%ebx)
	movl	%esi, -8(%esi)
L1157:
	movl	%esi, %eax
L1168:
	movb	$0, (%eax)
	movl	56(%esp), %eax
	movl	60(%esp), %edx
	movss	64(%esp), %xmm0
	movl	%eax, -12(%esi)
	movl	-8(%esi), %eax
	cmpl	%edi, %edx
	je	L1264
	cmpl	%esi, %eax
	je	L1265
	movss	68(%esp), %xmm2
	movl	(%esi), %ecx
	movl	%edx, -8(%esi)
	unpcklps	%xmm2, %xmm0
	movlps	%xmm0, -4(%esi)
	testl	%eax, %eax
	je	L1173
	movl	%eax, 60(%esp)
	movl	%ecx, 68(%esp)
L1176:
	movb	$0, (%eax)
	movl	60(%esp), %eax
	movl	$0, 64(%esp)
	cmpl	%edi, %eax
	je	L1177
	call	_mi_free
L1177:
	addl	$1, 52(%esp)
	subl	$28, %ebx
	movl	52(%esp), %eax
	subl	$28, %esi
	cmpl	%eax, 44(%esp)
	jne	L1178
	movl	32(%esp), %ecx
L1146:
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	40(%esp)
	movl	%edx, 44(%esp)
	testl	%edx, %edx
	jne	L1145
L1254:
	movl	16(%esp), %eax
L1074:
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
L1260:
	.cfi_restore_state
	movss	68(%esp), %xmm3
	movl	%edx, -8(%esi)
	unpcklps	%xmm3, %xmm0
	movlps	%xmm0, -4(%esi)
L1138:
	movl	%edi, 60(%esp)
	leal	68(%esp), %edi
	movl	%edi, %eax
	jmp	L1141
	.p2align 4,,10
	.p2align 3
L1257:
	leal	1(%ecx), %eax
	movl	%eax, %ecx
	cmpl	$16, %eax
	jnb	L1113
	testb	$8, %al
	jne	L1266
	testb	$4, %al
	jne	L1267
	testl	%eax, %eax
	je	L1120
	movzbl	(%ebx), %edx
	movb	%dl, (%edi)
	testb	$2, %al
	je	L1120
	movzwl	-2(%eax,%ebx), %edx
	movw	%dx, -2(%edi,%eax)
	jmp	L1120
	.p2align 4,,10
	.p2align 3
L1259:
	movss	%xmm0, 48(%esp)
	movl	48(%esp), %edx
	testl	%edx, %edx
	je	L1136
	movss	%xmm0, 48(%esp)
	cmpl	$1, 48(%esp)
	je	L1268
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	movss	%xmm0, 8(%esp)
	call	_memcpy
L1140:
	movss	64(%esp), %xmm0
	movl	-8(%esi), %eax
L1136:
	movss	%xmm0, 48(%esp)
	movl	48(%esp), %ecx
	movb	$0, (%eax,%ecx)
	movl	60(%esp), %eax
	movss	%xmm0, -4(%esi)
	jmp	L1141
	.p2align 4,,10
	.p2align 3
L1258:
	leal	-12(%ebx), %edx
	leal	-12(%esi), %eax
	cmpl	%eax, %edx
	je	L1122
	movl	-4(%esi), %eax
	testl	%eax, %eax
	je	L1123
	cmpl	$1, %eax
	je	L1269
	cmpl	$16, %eax
	jnb	L1126
	testb	$8, %al
	jne	L1270
	testb	$4, %al
	jne	L1271
	testl	%eax, %eax
	jne	L1272
	.p2align 4
	.p2align 3
L1123:
	movb	$0, (%ebx,%eax)
	movl	%eax, -4(%ebx)
	movl	-8(%esi), %eax
	jmp	L1133
	.p2align 4,,10
	.p2align 3
L1261:
	leal	16(%ebx), %eax
	movl	36(%esp), %ecx
	movl	%eax, 36(%esp)
L1111:
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	44(%esp)
	testl	%edx, %edx
	je	L1254
	movl	44(%esp), %eax
	movl	%eax, 40(%esp)
	subl	%edx, %eax
	movl	%eax, 44(%esp)
L1145:
	movl	40(%esp), %ecx
	jmp	L1109
	.p2align 4,,10
	.p2align 3
L1265:
	movss	68(%esp), %xmm4
	movl	%edx, -8(%esi)
	unpcklps	%xmm4, %xmm0
	movlps	%xmm0, -4(%esi)
L1173:
	movl	%edi, 60(%esp)
	leal	68(%esp), %edi
	movl	%edi, %eax
	jmp	L1176
	.p2align 4,,10
	.p2align 3
L1264:
	movss	%xmm0, 48(%esp)
	movl	48(%esp), %edx
	testl	%edx, %edx
	je	L1171
	movss	%xmm0, 48(%esp)
	cmpl	$1, 48(%esp)
	je	L1273
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	movss	%xmm0, 8(%esp)
	call	_memcpy
L1175:
	movss	64(%esp), %xmm0
	movl	-8(%esi), %eax
L1171:
	movss	%xmm0, 48(%esp)
	movl	48(%esp), %ecx
	movb	$0, (%eax,%ecx)
	movl	60(%esp), %eax
	movss	%xmm0, -4(%esi)
	jmp	L1176
	.p2align 4,,10
	.p2align 3
L1262:
	leal	1(%ecx), %eax
	movl	%eax, %ecx
	cmpl	$16, %eax
	jnb	L1148
	testb	$8, %al
	jne	L1274
	testb	$4, %al
	jne	L1275
	testl	%eax, %eax
	je	L1155
	movzbl	(%ebx), %edx
	movb	%dl, (%edi)
	testb	$2, %al
	je	L1155
	movzwl	-2(%eax,%ebx), %edx
	movw	%dx, -2(%edi,%eax)
	jmp	L1155
	.p2align 4,,10
	.p2align 3
L1263:
	leal	-12(%esi), %eax
	cmpl	%eax, 36(%esp)
	je	L1157
	movl	-4(%esi), %eax
	testl	%eax, %eax
	je	L1158
	cmpl	$1, %eax
	je	L1276
	cmpl	$16, %eax
	jnb	L1161
	testb	$8, %al
	jne	L1277
	testb	$4, %al
	jne	L1278
	testl	%eax, %eax
	jne	L1279
	.p2align 4
	.p2align 3
L1158:
	movb	$0, (%ebx,%eax)
	movl	%eax, -4(%ebx)
	movl	-8(%esi), %eax
	jmp	L1168
	.p2align 4,,10
	.p2align 3
L1148:
	movl	-16(%eax,%ebx), %edx
	movl	%edx, -16(%edi,%eax)
	movl	-12(%eax,%ebx), %edx
	movl	%edx, -12(%edi,%eax)
	movl	-8(%eax,%ebx), %edx
	movl	%edx, -8(%edi,%eax)
	movl	-4(%eax,%ebx), %edx
	movl	%edx, -4(%edi,%eax)
	cmpl	$16, 48(%esp)
	jb	L1155
	movl	48(%esp), %eax
	movl	%esi, 20(%esp)
	andl	$-16, %eax
	movl	%eax, 28(%esp)
	xorl	%eax, %eax
L1153:
	movl	12(%ebx,%eax), %edx
	movl	4(%ebx,%eax), %esi
	movl	8(%ebx,%eax), %ecx
	movl	%edx, 24(%esp)
	movl	(%ebx,%eax), %edx
	movl	%esi, 4(%edi,%eax)
	movl	%edx, (%edi,%eax)
	movl	%ecx, 8(%edi,%eax)
	movl	24(%esp), %edx
	movl	%edx, 12(%edi,%eax)
	addl	$16, %eax
	cmpl	28(%esp), %eax
	jb	L1153
	movl	20(%esp), %esi
	jmp	L1155
	.p2align 4,,10
	.p2align 3
L1113:
	movl	-16(%eax,%ebx), %edx
	movl	%edx, -16(%edi,%eax)
	movl	-12(%eax,%ebx), %edx
	movl	%edx, -12(%edi,%eax)
	movl	-8(%eax,%ebx), %edx
	movl	%edx, -8(%edi,%eax)
	movl	-4(%eax,%ebx), %edx
	movl	%edx, -4(%edi,%eax)
	cmpl	$16, 48(%esp)
	jb	L1120
	movl	48(%esp), %eax
	movl	%esi, 24(%esp)
	andl	$-16, %eax
	movl	%eax, 32(%esp)
	xorl	%eax, %eax
L1118:
	movl	12(%ebx,%eax), %edx
	movl	8(%ebx,%eax), %ecx
	movl	4(%ebx,%eax), %esi
	movl	%edx, 28(%esp)
	movl	(%ebx,%eax), %edx
	movl	%esi, 4(%edi,%eax)
	movl	%edx, (%edi,%eax)
	movl	%ecx, 8(%edi,%eax)
	movl	28(%esp), %ecx
	movl	%ecx, 12(%edi,%eax)
	addl	$16, %eax
	cmpl	32(%esp), %eax
	jb	L1118
	movl	24(%esp), %esi
	jmp	L1120
	.p2align 4,,10
	.p2align 3
L1276:
	movzbl	(%esi), %eax
	movb	%al, (%ebx)
	movl	-4(%esi), %eax
	movb	$0, (%ebx,%eax)
	movl	%eax, -4(%ebx)
	movl	-8(%esi), %eax
	jmp	L1168
	.p2align 4,,10
	.p2align 3
L1269:
	movzbl	(%esi), %eax
	movb	%al, (%ebx)
	movl	-4(%esi), %eax
	movb	$0, (%ebx,%eax)
	movl	%eax, -4(%ebx)
	movl	-8(%esi), %eax
	jmp	L1133
	.p2align 4,,10
	.p2align 3
L1268:
	movzbl	68(%esp), %edx
	movb	%dl, (%eax)
	jmp	L1140
	.p2align 4,,10
	.p2align 3
L1273:
	movzbl	68(%esp), %edx
	movb	%dl, (%eax)
	jmp	L1175
	.p2align 4,,10
	.p2align 3
L1161:
	movl	-16(%esi,%eax), %edx
	movl	%edx, -16(%ebx,%eax)
	movl	-12(%esi,%eax), %edx
	movl	%edx, -12(%ebx,%eax)
	movl	-8(%esi,%eax), %edx
	movl	%edx, -8(%ebx,%eax)
	movl	-4(%esi,%eax), %edx
	movl	%edx, -4(%ebx,%eax)
	subl	$1, %eax
	cmpl	$16, %eax
	jb	L1253
	movl	%edi, 48(%esp)
	andl	$-16, %eax
	movl	%eax, 28(%esp)
	xorl	%eax, %eax
L1166:
	movl	12(%esi,%eax), %edx
	movl	8(%esi,%eax), %ecx
	movl	4(%esi,%eax), %edi
	movl	%edx, 24(%esp)
	movl	(%esi,%eax), %edx
	movl	%edi, 4(%ebx,%eax)
	movl	%edx, (%ebx,%eax)
	movl	%ecx, 8(%ebx,%eax)
	movl	24(%esp), %ecx
	movl	%ecx, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	28(%esp), %eax
	jb	L1166
	movl	48(%esp), %edi
L1253:
	movl	-4(%esi), %eax
	movb	$0, (%ebx,%eax)
	movl	%eax, -4(%ebx)
	movl	-8(%esi), %eax
	jmp	L1168
	.p2align 4,,10
	.p2align 3
L1126:
	movl	-16(%esi,%eax), %edx
	movl	%edx, -16(%ebx,%eax)
	movl	-12(%esi,%eax), %edx
	movl	%edx, -12(%ebx,%eax)
	movl	-8(%esi,%eax), %edx
	movl	%edx, -8(%ebx,%eax)
	movl	-4(%esi,%eax), %edx
	movl	%edx, -4(%ebx,%eax)
	subl	$1, %eax
	cmpl	$16, %eax
	jb	L1252
	movl	%edi, 48(%esp)
	andl	$-16, %eax
	movl	%eax, 32(%esp)
	xorl	%eax, %eax
L1131:
	movl	12(%esi,%eax), %edx
	movl	8(%esi,%eax), %ecx
	movl	4(%esi,%eax), %edi
	movl	%edx, 28(%esp)
	movl	(%esi,%eax), %edx
	movl	%edi, 4(%ebx,%eax)
	movl	%edx, (%ebx,%eax)
	movl	%ecx, 8(%ebx,%eax)
	movl	28(%esp), %ecx
	movl	%ecx, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	32(%esp), %eax
	jb	L1131
	movl	48(%esp), %edi
L1252:
	movl	-4(%esi), %eax
	movb	$0, (%ebx,%eax)
	movl	%eax, -4(%ebx)
	movl	-8(%esi), %eax
	jmp	L1133
	.p2align 4,,10
	.p2align 3
L1255:
	leal	-12(%ebp), %esp
	movl	%ecx, %eax
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
L1274:
	.cfi_restore_state
	movl	(%ebx), %eax
	movl	4(%ebx), %edx
	movl	%eax, (%edi)
	movl	%edx, 4(%edi)
	movl	-8(%ebx,%ecx), %eax
	movl	-4(%ebx,%ecx), %edx
	movl	%eax, -8(%edi,%ecx)
	movl	%edx, -4(%edi,%ecx)
	jmp	L1155
L1266:
	movl	(%ebx), %eax
	movl	4(%ebx), %edx
	movl	%eax, (%edi)
	movl	%edx, 4(%edi)
	movl	-8(%ebx,%ecx), %eax
	movl	-4(%ebx,%ecx), %edx
	movl	%eax, -8(%edi,%ecx)
	movl	%edx, -4(%edi,%ecx)
	jmp	L1120
L1279:
	movzbl	(%esi), %edx
	movb	%dl, (%ebx)
	testb	$2, %al
	je	L1253
	movzwl	-2(%esi,%eax), %edx
	movw	%dx, -2(%ebx,%eax)
	movl	-4(%esi), %eax
	jmp	L1158
L1272:
	movzbl	(%esi), %edx
	movb	%dl, (%ebx)
	testb	$2, %al
	je	L1252
	movzwl	-2(%esi,%eax), %edx
	movw	%dx, -2(%ebx,%eax)
	movl	-4(%esi), %eax
	jmp	L1123
	.p2align 4,,10
	.p2align 3
L1267:
	movl	(%ebx), %edx
	movl	%edx, (%edi)
	movl	-4(%eax,%ebx), %edx
	movl	%edx, -4(%edi,%eax)
	jmp	L1120
L1275:
	movl	(%ebx), %edx
	movl	%edx, (%edi)
	movl	-4(%eax,%ebx), %edx
	movl	%edx, -4(%edi,%eax)
	jmp	L1155
L1256:
	movl	48(%esp), %eax
	leal	12(%edx), %edi
	leal	68(%esp), %ebx
	leal	12(%eax), %esi
	.p2align 4
	.p2align 3
L1108:
	movl	-12(%edi), %eax
	movl	-4(%edi), %ecx
	movl	%ebx, 60(%esp)
	movl	%eax, 56(%esp)
	movl	-8(%edi), %eax
	movl	%ecx, 52(%esp)
	cmpl	%edi, %eax
	je	L1280
	movl	%eax, 60(%esp)
	movl	(%edi), %eax
	movl	%eax, 68(%esp)
L1085:
	movl	52(%esp), %eax
	movl	%edi, -8(%edi)
	movb	$0, (%edi)
	movl	$0, -4(%edi)
	movl	%eax, 64(%esp)
	movl	-12(%esi), %eax
	movl	%eax, -12(%edi)
	movl	-8(%esi), %eax
	cmpl	%esi, %eax
	je	L1281
	movl	%eax, -8(%edi)
	movl	-4(%esi), %eax
	movl	%eax, -4(%edi)
	movl	(%esi), %eax
	movl	%eax, (%edi)
	movl	%esi, -8(%esi)
L1087:
	movl	%esi, %eax
L1098:
	movb	$0, (%eax)
	movl	56(%esp), %eax
	movl	60(%esp), %edx
	movss	64(%esp), %xmm0
	movl	%eax, -12(%esi)
	movl	-8(%esi), %eax
	cmpl	%ebx, %edx
	je	L1282
	cmpl	%esi, %eax
	je	L1283
	movss	68(%esp), %xmm5
	movl	(%esi), %ecx
	movl	%edx, -8(%esi)
	unpcklps	%xmm5, %xmm0
	movlps	%xmm0, -4(%esi)
	testl	%eax, %eax
	je	L1103
	movl	%eax, 60(%esp)
	movl	%ecx, 68(%esp)
L1106:
	movb	$0, (%eax)
	movl	60(%esp), %eax
	movl	$0, 64(%esp)
	cmpl	%ebx, %eax
	je	L1107
	call	_mi_free
L1107:
	addl	$28, %esi
	leal	16(%edi), %eax
	cmpl	%eax, 48(%esp)
	je	L1284
	addl	$28, %edi
	jmp	L1108
L1283:
	movss	68(%esp), %xmm6
	movl	%edx, -8(%esi)
	unpcklps	%xmm6, %xmm0
	movlps	%xmm0, -4(%esi)
L1103:
	movl	%ebx, 60(%esp)
	leal	68(%esp), %ebx
	movl	%ebx, %eax
	jmp	L1106
L1282:
	movss	%xmm0, 52(%esp)
	movl	52(%esp), %ecx
	testl	%ecx, %ecx
	je	L1101
	movss	%xmm0, 52(%esp)
	cmpl	$1, 52(%esp)
	je	L1285
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	movss	%xmm0, 8(%esp)
	call	_memcpy
L1105:
	movss	64(%esp), %xmm0
	movl	-8(%esi), %eax
L1101:
	movss	%xmm0, 52(%esp)
	movl	52(%esp), %ecx
	movb	$0, (%eax,%ecx)
	movl	60(%esp), %eax
	movss	%xmm0, -4(%esi)
	jmp	L1106
L1281:
	leal	-12(%esi), %edx
	leal	-12(%edi), %eax
	cmpl	%eax, %edx
	je	L1087
	movl	-4(%esi), %ecx
	testl	%ecx, %ecx
	je	L1088
	cmpl	$1, %ecx
	je	L1286
	cmpl	$16, %ecx
	jnb	L1091
	testb	$8, %cl
	jne	L1287
	testb	$4, %cl
	jne	L1288
	testl	%ecx, %ecx
	je	L1088
	movzbl	(%esi), %eax
	movb	%al, (%edi)
	testb	$2, %cl
	jne	L1243
L1251:
	movl	-4(%esi), %ecx
L1088:
	movb	$0, (%edi,%ecx)
	movl	%ecx, -4(%edi)
	movl	-8(%esi), %eax
	jmp	L1098
L1280:
	leal	1(%ecx), %eax
	cmpl	$16, %eax
	jnb	L1078
	testb	$8, %al
	jne	L1289
	testb	$4, %al
	jne	L1290
	testl	%eax, %eax
	je	L1085
	movzbl	(%edi), %ecx
	movb	%cl, (%ebx)
	testb	$2, %al
	je	L1085
	movzwl	-2(%edi,%eax), %ecx
	movw	%cx, -2(%ebx,%eax)
	jmp	L1085
	.p2align 4,,10
	.p2align 3
L1284:
	movl	48(%esp), %eax
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
L1078:
	.cfi_restore_state
	movl	-16(%edi,%eax), %ecx
	movl	%ecx, -16(%ebx,%eax)
	movl	-12(%edi,%eax), %ecx
	movl	%ecx, -12(%ebx,%eax)
	movl	-8(%edi,%eax), %ecx
	movl	%ecx, -8(%ebx,%eax)
	movl	-4(%edi,%eax), %ecx
	movl	%ecx, -4(%ebx,%eax)
	movl	52(%esp), %eax
	cmpl	$16, %eax
	jb	L1085
	movl	%eax, %edx
	movl	%esi, 36(%esp)
	xorl	%eax, %eax
	andl	$-16, %edx
	movl	%edx, 44(%esp)
L1083:
	movl	12(%edi,%eax), %edx
	movl	8(%edi,%eax), %ecx
	movl	4(%edi,%eax), %esi
	movl	%edx, 40(%esp)
	movl	(%edi,%eax), %edx
	movl	%esi, 4(%ebx,%eax)
	movl	%edx, (%ebx,%eax)
	movl	%ecx, 8(%ebx,%eax)
	movl	40(%esp), %ecx
	movl	%ecx, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	44(%esp), %eax
	jb	L1083
	movl	36(%esp), %esi
	jmp	L1085
L1091:
	movl	-16(%esi,%ecx), %eax
	leal	-1(%ecx), %edx
	movl	%eax, -16(%edi,%ecx)
	movl	-12(%esi,%ecx), %eax
	movl	%eax, -12(%edi,%ecx)
	movl	-8(%esi,%ecx), %eax
	movl	%eax, -8(%edi,%ecx)
	movl	-4(%esi,%ecx), %eax
	movl	%eax, -4(%edi,%ecx)
	cmpl	$16, %edx
	jb	L1251
	andl	$-16, %edx
	xorl	%eax, %eax
	movl	%edx, 40(%esp)
L1096:
	movl	8(%esi,%eax), %edx
	movl	4(%esi,%eax), %ecx
	movl	%edx, 52(%esp)
	movl	12(%esi,%eax), %edx
	movl	%edx, 44(%esp)
	movl	(%esi,%eax), %edx
	movl	%ecx, 4(%edi,%eax)
	movl	%edx, (%edi,%eax)
	movl	52(%esp), %edx
	movl	%edx, 8(%edi,%eax)
	movl	44(%esp), %edx
	movl	%edx, 12(%edi,%eax)
	addl	$16, %eax
	cmpl	40(%esp), %eax
	jb	L1096
	jmp	L1251
	.p2align 4,,10
	.p2align 3
L1285:
	movzbl	68(%esp), %edx
	movb	%dl, (%eax)
	jmp	L1105
L1286:
	movzbl	(%esi), %eax
	movb	%al, (%edi)
	movl	-4(%esi), %ecx
	jmp	L1088
L1270:
	movl	(%esi), %edx
	movl	4(%esi), %ecx
	movl	%edx, (%ebx)
	movl	%ecx, 4(%ebx)
	movl	-8(%esi,%eax), %edx
	movl	-4(%esi,%eax), %ecx
	movl	%edx, -8(%ebx,%eax)
	movl	%ecx, -4(%ebx,%eax)
	movl	-4(%esi), %eax
	jmp	L1123
L1277:
	movl	(%esi), %edx
	movl	4(%esi), %ecx
	movl	%edx, (%ebx)
	movl	%ecx, 4(%ebx)
	movl	-8(%esi,%eax), %edx
	movl	-4(%esi,%eax), %ecx
	movl	%edx, -8(%ebx,%eax)
	movl	%ecx, -4(%ebx,%eax)
	movl	-4(%esi), %eax
	jmp	L1158
L1271:
	movl	(%esi), %edx
	movl	%edx, (%ebx)
	movl	-4(%esi,%eax), %edx
	movl	%edx, -4(%ebx,%eax)
	movl	-4(%esi), %eax
	jmp	L1123
L1278:
	movl	(%esi), %edx
	movl	%edx, (%ebx)
	movl	-4(%esi,%eax), %edx
	movl	%edx, -4(%ebx,%eax)
	movl	-4(%esi), %eax
	jmp	L1158
L1289:
	movl	(%edi), %edx
	movl	4(%edi), %ecx
	movl	%edx, (%ebx)
	movl	%ecx, 4(%ebx)
	movl	-8(%edi,%eax), %edx
	movl	-4(%edi,%eax), %ecx
	movl	%edx, -8(%ebx,%eax)
	movl	%ecx, -4(%ebx,%eax)
	jmp	L1085
L1290:
	movl	(%edi), %ecx
	movl	%ecx, (%ebx)
	movl	-4(%edi,%eax), %ecx
	movl	%ecx, -4(%ebx,%eax)
	jmp	L1085
L1288:
	movl	(%esi), %eax
	movl	%eax, (%edi)
	movl	-4(%esi,%ecx), %eax
	movl	%eax, -4(%edi,%ecx)
	movl	-4(%esi), %ecx
	jmp	L1088
L1287:
	movl	(%esi), %eax
	movl	4(%esi), %edx
	movl	%eax, (%edi)
	movl	%edx, 4(%edi)
	movl	-8(%esi,%ecx), %eax
	movl	-4(%esi,%ecx), %edx
	movl	%eax, -8(%edi,%ecx)
	movl	%edx, -4(%edi,%ecx)
	movl	-4(%esi), %ecx
	jmp	L1088
L1243:
	movzwl	-2(%esi,%ecx), %eax
	movw	%ax, -2(%edi,%ecx)
	movl	-4(%esi), %ecx
	jmp	L1088
	.cfi_endproc
LFE56:
	.p2align 4
	.def	__ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEES2_ZL23DemoReadExtendedTrailervEUlRKS2_S9_E_ET_SB_SB_RKT0_T1_.isra.0;	.scl	3;	.type	32;	.endef
__ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEES2_ZL23DemoReadExtendedTrailervEUlRKS2_S9_E_ET_SB_SB_RKT0_T1_.isra.0:
LFB59:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	subl	%eax, %edx
	movl	%ebx, (%esp)
	.cfi_offset 3, -12
	movl	%ecx, %ebx
	movl	%eax, %ecx
	testl	%edx, %edx
	jle	L1292
	sarl	$2, %edx
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	imull	$-1227133513, %edx, %eax
	jmp	L1294
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1299:
	subl	%esi, %eax
	leal	28(%edx), %ecx
	subl	$1, %eax
	testl	%eax, %eax
	jle	L1298
L1294:
	movl	%eax, %esi
	sarl	%esi
	imull	$28, %esi, %edx
	addl	%ecx, %edx
	cmpl	%ebx, (%edx)
	jb	L1299
	movl	%esi, %eax
	testl	%eax, %eax
	jg	L1294
L1298:
	movl	4(%esp), %esi
	.cfi_restore 6
L1292:
	movl	(%esp), %ebx
	movl	%ecx, %eax
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE59:
	.p2align 4
	.def	__ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEES2_ZL23DemoReadExtendedTrailervEUlRKS2_S9_E_ET_SB_SB_RKT0_T1_.isra.0;	.scl	3;	.type	32;	.endef
__ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEES2_ZL23DemoReadExtendedTrailervEUlRKS2_S9_E_ET_SB_SB_RKT0_T1_.isra.0:
LFB64:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	subl	%eax, %edx
	movl	%ebx, (%esp)
	.cfi_offset 3, -12
	movl	%ecx, %ebx
	movl	%eax, %ecx
	testl	%edx, %edx
	jle	L1301
	sarl	$2, %edx
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	imull	$-1227133513, %edx, %eax
	jmp	L1303
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1308:
	subl	%esi, %eax
	leal	28(%edx), %ecx
	subl	$1, %eax
	testl	%eax, %eax
	jle	L1307
L1303:
	movl	%eax, %esi
	sarl	%esi
	imull	$28, %esi, %edx
	addl	%ecx, %edx
	cmpl	(%edx), %ebx
	jnb	L1308
	movl	%esi, %eax
	testl	%eax, %eax
	jg	L1303
L1307:
	movl	4(%esp), %esi
	.cfi_restore 6
L1301:
	movl	(%esp), %ebx
	movl	%ecx, %eax
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE64:
	.p2align 4
	.def	__ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEEiZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_SB_T0_SC_T1_.isra.0;	.scl	3;	.type	32;	.endef
__ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEEiZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_SB_T0_SC_T1_.isra.0:
LFB66:
	.cfi_startproc
	subl	$68, %esp
	.cfi_def_cfa_offset 72
	movl	%edi, 60(%esp)
	.cfi_offset 7, -12
	movl	72(%esp), %edi
	testl	%edi, %edi
	je	L1309
	cmpl	$0, 76(%esp)
	je	L1309
	movl	%eax, 8(%esp)
	movl	76(%esp), %eax
	movl	%ebp, 64(%esp)
	.cfi_offset 5, -8
	movl	%edx, %ebp
	addl	%edi, %eax
	movl	%ebx, 52(%esp)
	movl	%esi, 56(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	%ecx, 20(%esp)
	cmpl	$2, %eax
	je	L1395
L1311:
	cmpl	%edi, 76(%esp)
	jge	L1350
	movl	%edi, %ebx
	movl	20(%esp), %edx
	movl	%ebp, %eax
	shrl	$31, %ebx
	addl	%edi, %ebx
	sarl	%ebx
	imull	$28, %ebx, %esi
	addl	8(%esp), %esi
	movl	(%esi), %ecx
	call	__ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEES2_ZL23DemoReadExtendedTrailervEUlRKS2_S9_E_ET_SB_SB_RKT0_T1_.isra.0
	movl	%eax, 16(%esp)
	subl	%ebp, %eax
	sarl	$2, %eax
	imull	$-1227133513, %eax, %eax
	movl	%eax, 12(%esp)
L1351:
	movl	16(%esp), %ecx
	movl	%ebp, %edx
	movl	%esi, %eax
	call	__ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS3_SaIS3_EEEEEET_S9_S9_S9_St26random_access_iterator_tag.isra.0
	movl	%ebx, (%esp)
	movl	%esi, %edx
	movl	%eax, %ebp
	movl	12(%esp), %eax
	movl	%ebp, %ecx
	movl	%eax, 4(%esp)
	movl	8(%esp), %eax
	call	__ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEEiZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_SB_T0_SC_T1_.isra.0
	movl	%ebp, 8(%esp)
	subl	%ebx, %edi
	je	L1391
	movl	12(%esp), %eax
	subl	%eax, 76(%esp)
	je	L1391
	movl	76(%esp), %eax
	movl	16(%esp), %ebp
	addl	%edi, %eax
	cmpl	$2, %eax
	jne	L1311
L1395:
	movl	8(%esp), %eax
	movl	(%eax), %eax
	cmpl	%eax, 0(%ebp)
	jb	L1396
L1391:
	movl	52(%esp), %ebx
	.cfi_restore 3
	movl	56(%esp), %esi
	.cfi_restore 6
	movl	64(%esp), %ebp
	.cfi_restore 5
L1309:
	movl	60(%esp), %edi
	addl	$68, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1350:
	.cfi_def_cfa_offset 72
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	76(%esp), %eax
	movl	%ebp, %edx
	shrl	$31, %eax
	addl	76(%esp), %eax
	sarl	%eax
	movl	%eax, 12(%esp)
	imull	$28, %eax, %eax
	addl	%ebp, %eax
	movl	%eax, 16(%esp)
	movl	(%eax), %ecx
	movl	8(%esp), %eax
	call	__ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEES2_ZL23DemoReadExtendedTrailervEUlRKS2_S9_E_ET_SB_SB_RKT0_T1_.isra.0
	movl	%eax, %ebx
	subl	8(%esp), %ebx
	movl	%eax, %esi
	sarl	$2, %ebx
	imull	$-1227133513, %ebx, %ebx
	jmp	L1351
	.p2align 4,,10
	.p2align 3
L1396:
	movl	8(%esp), %edi
	movl	%eax, 24(%esp)
	leal	36(%esp), %eax
	movl	%eax, 28(%esp)
	movl	4(%edi), %ecx
	leal	12(%edi), %edx
	cmpl	%edx, %ecx
	je	L1397
	movl	8(%esp), %esi
	movl	%ecx, 28(%esp)
	movl	12(%esi), %ecx
	movl	%ecx, 36(%esp)
	movl	8(%esi), %ecx
L1320:
	movl	8(%esp), %esi
	movl	%ecx, 32(%esp)
	movl	%edx, 4(%esi)
	movb	$0, 12(%esi)
	movl	$0, 8(%esi)
	movl	0(%ebp), %ecx
	movl	%ecx, (%esi)
	movl	4(%ebp), %ebx
	leal	12(%ebp), %ecx
	leal	4(%ebp), %esi
	cmpl	%ecx, %ebx
	je	L1398
	movl	8(%esp), %esi
	movl	%ebx, 4(%esi)
	movl	8(%ebp), %edx
	movl	%edx, 8(%esi)
	movl	12(%ebp), %edx
	movl	%edx, 12(%esi)
	movl	%ecx, 4(%ebp)
L1322:
	movl	%ecx, %edx
L1333:
	movb	$0, (%edx)
	movl	24(%esp), %edx
	movl	4(%ebp), %ebx
	movl	%edx, 0(%ebp)
	movl	28(%esp), %edx
	movl	%ebx, %esi
	cmpl	%eax, %edx
	je	L1399
	cmpl	%ecx, %ebx
	je	L1400
	movl	%edx, 4(%ebp)
	movl	32(%esp), %edx
	movl	12(%ebp), %ecx
	movl	%edx, 8(%ebp)
	movl	36(%esp), %edx
	movl	%edx, 12(%ebp)
	testl	%ebx, %ebx
	je	L1338
	movl	%ebx, 28(%esp)
	movl	%ecx, 36(%esp)
L1348:
	movb	$0, (%esi)
	movl	28(%esp), %edx
	movl	$0, 32(%esp)
	cmpl	%eax, %edx
	je	L1391
	movl	%edx, %eax
	call	_mi_free
	movl	52(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	56(%esp), %esi
	.cfi_restore 6
	movl	64(%esp), %ebp
	.cfi_restore 5
	jmp	L1309
	.p2align 4,,10
	.p2align 3
L1400:
	.cfi_restore_state
	movl	%edx, 4(%ebp)
	movl	32(%esp), %edx
	movl	%edx, 8(%ebp)
	movl	36(%esp), %edx
	movl	%edx, 12(%ebp)
L1338:
	movl	%eax, 28(%esp)
	leal	36(%esp), %eax
	movl	%eax, %esi
	jmp	L1348
	.p2align 4,,10
	.p2align 3
L1399:
	movl	32(%esp), %ecx
	testl	%ecx, %ecx
	je	L1336
	cmpl	$1, %ecx
	je	L1401
	cmpl	$16, %ecx
	jnb	L1341
	testb	$8, %cl
	jne	L1402
	testb	$4, %cl
	jne	L1403
	testl	%ecx, %ecx
	je	L1336
	movzbl	(%eax), %edx
	movb	%dl, (%ebx)
	testb	$2, %cl
	jne	L1386
L1394:
	movl	4(%ebp), %ebx
	movl	32(%esp), %ecx
L1336:
	movb	$0, (%ebx,%ecx)
	movl	28(%esp), %esi
	movl	%ecx, 8(%ebp)
	jmp	L1348
	.p2align 4,,10
	.p2align 3
L1398:
	movl	8(%esp), %edi
	leal	4(%edi), %ebx
	cmpl	%esi, %ebx
	je	L1322
	movl	8(%ebp), %edi
	movl	%edi, 12(%esp)
	testl	%edi, %edi
	je	L1323
	cmpl	$1, %edi
	je	L1404
	movl	12(%esp), %edi
	cmpl	$16, %edi
	jnb	L1326
	andl	$8, %edi
	jne	L1405
	testb	$4, 12(%esp)
	jne	L1406
	movl	12(%esp), %ebx
	testl	%ebx, %ebx
	je	L1323
	movzbl	(%ecx), %ebx
	testb	$2, 12(%esp)
	movb	%bl, (%edx)
	jne	L1384
L1393:
	movl	8(%ebp), %edi
	movl	%edi, 12(%esp)
L1323:
	movl	12(%esp), %esi
	movl	8(%esp), %edi
	movb	$0, (%edx,%esi)
	movl	%esi, 8(%edi)
	movl	4(%ebp), %edx
	jmp	L1333
	.p2align 4,,10
	.p2align 3
L1397:
	movl	8(%edi), %ecx
	leal	1(%ecx), %ebx
	cmpl	$16, %ebx
	jnb	L1313
	testb	$8, %bl
	jne	L1407
	testb	$4, %bl
	jne	L1408
	testl	%ebx, %ebx
	je	L1320
	movzbl	(%edx), %ecx
	movb	%cl, 36(%esp)
	testb	$2, %bl
	jne	L1382
L1392:
	movl	8(%esp), %edi
	movl	8(%edi), %ecx
	jmp	L1320
L1313:
	movl	-16(%edx,%ebx), %esi
	movl	%esi, 20(%esp,%ebx)
	movl	-12(%edx,%ebx), %esi
	movl	%esi, 24(%esp,%ebx)
	movl	-8(%edx,%ebx), %esi
	movl	%esi, 28(%esp,%ebx)
	movl	-4(%edx,%ebx), %esi
	movl	%esi, 32(%esp,%ebx)
	cmpl	$16, %ecx
	jb	L1392
	movl	%ebp, 16(%esp)
	andl	$-16, %ecx
	movl	%ecx, 12(%esp)
	xorl	%ecx, %ecx
L1318:
	movl	4(%edx,%ecx), %edi
	movl	8(%edx,%ecx), %esi
	movl	12(%edx,%ecx), %ebx
	movl	(%edx,%ecx), %ebp
	movl	%edi, 4(%eax,%ecx)
	movl	%ebp, (%eax,%ecx)
	movl	%esi, 8(%eax,%ecx)
	movl	%ebx, 12(%eax,%ecx)
	addl	$16, %ecx
	cmpl	12(%esp), %ecx
	jb	L1318
	movl	16(%esp), %ebp
	jmp	L1392
L1401:
	movzbl	36(%esp), %edx
	movb	%dl, (%ebx)
	movl	4(%ebp), %ebx
	movl	32(%esp), %ecx
	jmp	L1336
L1404:
	movl	8(%esp), %edi
	movzbl	12(%ebp), %ebx
	movb	%bl, 12(%edi)
	movl	8(%ebp), %edi
	movl	%edi, 12(%esp)
	jmp	L1323
L1326:
	movl	12(%esp), %edi
	movl	-16(%ecx,%edi), %ebx
	leal	-1(%edi), %esi
	movl	%ebx, -16(%edx,%edi)
	movl	-12(%ecx,%edi), %ebx
	movl	%ebx, -12(%edx,%edi)
	movl	-8(%ecx,%edi), %ebx
	movl	%ebx, -8(%edx,%edi)
	movl	-4(%ecx,%edi), %ebx
	movl	%ebx, -4(%edx,%edi)
	cmpl	$16, %esi
	jb	L1393
	andl	$-16, %esi
	xorl	%ebx, %ebx
	movl	%esi, 20(%esp)
L1331:
	movl	8(%ecx,%ebx), %esi
	movl	4(%ecx,%ebx), %edi
	movl	%esi, 12(%esp)
	movl	12(%ecx,%ebx), %esi
	movl	%esi, 16(%esp)
	movl	(%ecx,%ebx), %esi
	movl	%edi, 4(%edx,%ebx)
	movl	%esi, (%edx,%ebx)
	movl	12(%esp), %esi
	movl	%esi, 8(%edx,%ebx)
	movl	16(%esp), %esi
	movl	%esi, 12(%edx,%ebx)
	addl	$16, %ebx
	cmpl	20(%esp), %ebx
	jb	L1331
	jmp	L1393
L1341:
	movl	-16(%eax,%ecx), %esi
	movl	%esi, -16(%ebx,%ecx)
	movl	-12(%eax,%ecx), %esi
	movl	%esi, -12(%ebx,%ecx)
	movl	-8(%eax,%ecx), %esi
	movl	%esi, -8(%ebx,%ecx)
	movl	-4(%eax,%ecx), %esi
	movl	%esi, -4(%ebx,%ecx)
	subl	$1, %ecx
	cmpl	$16, %ecx
	jb	L1394
	andl	$-16, %ecx
	movl	%ecx, 8(%esp)
	xorl	%ecx, %ecx
L1346:
	movl	4(%edx,%ecx), %edi
	movl	%edi, 12(%esp)
	movl	8(%edx,%ecx), %edi
	movl	%edi, 16(%esp)
	movl	(%edx,%ecx), %edi
	movl	12(%edx,%ecx), %esi
	movl	%edi, (%ebx,%ecx)
	movl	12(%esp), %edi
	movl	%edi, 4(%ebx,%ecx)
	movl	16(%esp), %edi
	movl	%esi, 12(%ebx,%ecx)
	movl	%edi, 8(%ebx,%ecx)
	addl	$16, %ecx
	cmpl	8(%esp), %ecx
	jb	L1346
	jmp	L1394
L1407:
	movl	(%edx), %esi
	movl	4(%edx), %edi
	movl	%esi, 36(%esp)
	movl	%edi, 40(%esp)
	movl	-4(%edx,%ebx), %edi
	movl	-8(%edx,%ebx), %esi
	movl	%edi, 32(%esp,%ebx)
	movl	%esi, 28(%esp,%ebx)
	movl	8(%esp), %edi
	movl	8(%edi), %ecx
	jmp	L1320
L1408:
	movl	(%edx), %ecx
	movl	%ecx, 36(%esp)
	movl	-4(%edx,%ebx), %ecx
	movl	%ecx, 32(%esp,%ebx)
	movl	8(%esp), %edi
	movl	8(%edi), %ecx
	jmp	L1320
L1382:
	movzwl	-2(%edx,%ebx), %ecx
	movw	%cx, 34(%esp,%ebx)
	movl	8(%esp), %edi
	movl	8(%edi), %ecx
	jmp	L1320
L1406:
	movl	(%ecx), %ebx
	movl	%ebx, (%edx)
	movl	12(%esp), %edi
	movl	-4(%ecx,%edi), %ebx
	movl	%ebx, -4(%edx,%edi)
	movl	8(%ebp), %edi
	movl	%edi, 12(%esp)
	jmp	L1323
L1405:
	movl	(%ecx), %esi
	movl	4(%ecx), %edi
	movl	%esi, (%edx)
	movl	%edi, 4(%edx)
	movl	12(%esp), %ebx
	movl	-4(%ecx,%ebx), %edi
	movl	-8(%ecx,%ebx), %esi
	movl	%edi, -4(%edx,%ebx)
	movl	%esi, -8(%edx,%ebx)
	movl	8(%ebp), %edi
	movl	%edi, 12(%esp)
	jmp	L1323
L1403:
	movl	(%eax), %edx
	movl	%edx, (%ebx)
	movl	-4(%eax,%ecx), %edx
	movl	%edx, -4(%ebx,%ecx)
	movl	4(%ebp), %ebx
	movl	32(%esp), %ecx
	jmp	L1336
L1402:
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, (%ebx)
	movl	%edi, 4(%ebx)
	movl	-8(%eax,%ecx), %esi
	movl	-4(%eax,%ecx), %edi
	movl	%esi, -8(%ebx,%ecx)
	movl	%edi, -4(%ebx,%ecx)
	movl	4(%ebp), %ebx
	movl	32(%esp), %ecx
	jmp	L1336
L1384:
	movl	12(%esp), %edi
	movzwl	-2(%ecx,%edi), %ebx
	movw	%bx, -2(%edx,%edi)
	movl	8(%ebp), %edi
	movl	%edi, 12(%esp)
	jmp	L1323
L1386:
	movzwl	-2(%eax,%ecx), %edx
	movw	%dx, -2(%ebx,%ecx)
	movl	4(%ebp), %ebx
	movl	32(%esp), %ecx
	jmp	L1336
	.cfi_endproc
LFE66:
	.p2align 4
	.def	__ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEEZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_T0_.isra.0;	.scl	3;	.type	32;	.endef
__ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEEZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_T0_.isra.0:
LFB68:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%esi, 12(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	%edx, %eax
	subl	%esi, %eax
	cmpl	$392, %eax
	jle	L1412
	sarl	$2, %eax
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -20
	imull	$-1227133513, %eax, %ebx
	movl	%ebp, 20(%esp)
	movl	%esi, %eax
	movl	%edi, 16(%esp)
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	%edx, %edi
	sarl	%ebx
	imull	$28, %ebx, %ebx
	leal	(%esi,%ebx), %ebp
	sarl	$2, %ebx
	movl	%ebp, %edx
	imull	$-1227133513, %ebx, %ebx
	call	__ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEEZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_T0_.isra.0
	movl	%edi, %edx
	movl	%ebp, %eax
	call	__ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEEZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_T0_.isra.0
	movl	%edi, %eax
	movl	%edi, %ecx
	movl	%ebp, %edx
	subl	%ebp, %eax
	movl	%ebx, (%esp)
	sarl	$2, %eax
	imull	$-1227133513, %eax, %eax
	movl	%eax, 4(%esp)
	movl	%esi, %eax
	call	__ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEEiZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_SB_T0_SC_T1_.isra.0
	movl	8(%esp), %ebx
	.cfi_restore 3
	movl	16(%esp), %edi
	.cfi_restore 7
	movl	20(%esp), %ebp
	.cfi_restore 5
	movl	12(%esp), %esi
	addl	$24, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1412:
	.cfi_def_cfa_offset 28
	.cfi_offset 6, -16
	movl	%esi, %eax
	movl	12(%esp), %esi
	addl	$24, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEEZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_T0_.isra.0
	.cfi_endproc
LFE68:
	.p2align 4
	.def	__ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEEiS3_ZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_SB_T0_SC_T1_SC_T2_.isra.0;	.scl	3;	.type	32;	.endef
__ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEEiS3_ZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_SB_T0_SC_T1_SC_T2_.isra.0:
LFB70:
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
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	movl	100(%esp), %edi
	movl	96(%esp), %ebp
	movl	%ecx, 48(%esp)
	movl	104(%esp), %ebx
	movl	108(%esp), %ecx
	movl	%eax, 28(%esp)
	cmpl	%ebp, %edi
	movl	%edi, 16(%esp)
	cmovg	%ebp, %edi
	movl	%ebx, 44(%esp)
	movl	%ecx, 40(%esp)
	cmpl	%edi, %ecx
	jge	L1671
	cmpl	16(%esp), %ebp
	jle	L1415
L1673:
	movl	%ebp, %eax
	movl	28(%esp), %ebx
	movl	48(%esp), %edx
	shrl	$31, %eax
	addl	%ebp, %eax
	sarl	%eax
	movl	%eax, 32(%esp)
	imull	$28, %eax, %eax
	addl	%ebx, %eax
	movl	(%eax), %ecx
	movl	%eax, 24(%esp)
	movl	%esi, %eax
	call	__ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEES2_ZL23DemoReadExtendedTrailervEUlRKS2_S9_E_ET_SB_SB_RKT0_T1_.isra.0
	subl	32(%esp), %ebp
	movl	%eax, 20(%esp)
	subl	%esi, %eax
	sarl	$2, %eax
	imull	$-1227133513, %eax, %ebx
	cmpl	%ebx, %ebp
	jle	L1417
L1674:
	cmpl	%ebx, 40(%esp)
	jl	L1417
	testl	%ebx, %ebx
	jne	L1672
L1418:
	movl	24(%esp), %esi
L1456:
	movl	44(%esp), %eax
	movl	40(%esp), %edi
	movl	%ebx, 4(%esp)
	movl	%esi, %ecx
	movl	24(%esp), %edx
	movl	%eax, 8(%esp)
	movl	32(%esp), %eax
	movl	%edi, 12(%esp)
	movl	%eax, (%esp)
	movl	28(%esp), %eax
	call	__ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEEiS3_ZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_SB_T0_SC_T1_SC_T2_.isra.0
	subl	%ebx, 16(%esp)
	movl	16(%esp), %eax
	cmpl	%eax, %ebp
	cmovle	%ebp, %eax
	cmpl	%edi, %eax
	jle	L1530
	movl	%esi, 28(%esp)
	movl	20(%esp), %esi
	cmpl	16(%esp), %ebp
	jg	L1673
L1415:
	movl	16(%esp), %edi
	movl	%esi, %edx
	movl	%edi, %eax
	shrl	$31, %eax
	addl	%edi, %eax
	movl	28(%esp), %edi
	sarl	%eax
	movl	%eax, %ebx
	imull	$28, %eax, %eax
	addl	%esi, %eax
	movl	(%eax), %ecx
	movl	%eax, 20(%esp)
	movl	%edi, %eax
	call	__ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEES2_ZL23DemoReadExtendedTrailervEUlRKS2_S9_E_ET_SB_SB_RKT0_T1_.isra.0
	movl	%eax, 24(%esp)
	subl	%edi, %eax
	sarl	$2, %eax
	imull	$-1227133513, %eax, %eax
	movl	%eax, 32(%esp)
	subl	32(%esp), %ebp
	cmpl	%ebx, %ebp
	jg	L1674
L1417:
	cmpl	%ebp, 40(%esp)
	jl	L1474
	testl	%ebp, %ebp
	jne	L1675
L1475:
	movl	20(%esp), %esi
	jmp	L1456
	.p2align 4,,10
	.p2align 3
L1671:
	movl	%edx, 20(%esp)
	movl	%eax, %esi
L1530:
	movl	44(%esp), %eax
	movl	48(%esp), %ecx
	movl	%ebp, 96(%esp)
	movl	20(%esp), %edx
	movl	%eax, 104(%esp)
	movl	16(%esp), %eax
	movl	%eax, 100(%esp)
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
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
	jmp	__ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEEiS3_ZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_SB_T0_SC_T1_T2_.isra.0
	.p2align 4,,10
	.p2align 3
L1675:
	.cfi_restore_state
	movl	24(%esp), %eax
	cmpl	%esi, %eax
	je	L1476
	movl	%ebx, 56(%esp)
	movl	44(%esp), %edi
	addl	$12, %eax
	movl	%esi, 36(%esp)
	movl	%ebp, 60(%esp)
	jmp	L1493
	.p2align 4,,10
	.p2align 3
L1477:
	cmpl	%eax, %edx
	je	L1478
	movl	%edx, 4(%edi)
	movl	-4(%eax), %edx
	movl	12(%edi), %ecx
	movl	%edx, 8(%edi)
	movl	(%eax), %edx
	movl	%edx, 12(%edi)
	testl	%ebx, %ebx
	je	L1492
	movl	%ebx, -8(%eax)
	movl	%ecx, (%eax)
L1481:
	movb	$0, (%ebx)
	addl	$28, %edi
	leal	16(%eax), %edx
	movl	$0, -4(%eax)
	cmpl	%edx, 36(%esp)
	je	L1676
	addl	$28, %eax
L1493:
	movl	-12(%eax), %edx
	movl	4(%edi), %ebx
	leal	12(%edi), %ebp
	movl	%edx, (%edi)
	movl	%ebx, %ecx
	movl	-8(%eax), %edx
	cmpl	%ebp, %ebx
	jne	L1477
	cmpl	%eax, %edx
	je	L1478
	movl	%edx, 4(%edi)
	movl	-4(%eax), %edx
	movl	%edx, 8(%edi)
	movl	(%eax), %edx
	movl	%edx, 12(%edi)
L1492:
	movl	%eax, -8(%eax)
	movl	%eax, %ebx
	jmp	L1481
	.p2align 4,,10
	.p2align 3
L1474:
	movl	20(%esp), %ecx
	movl	24(%esp), %eax
	movl	%esi, %edx
	call	__ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS3_SaIS3_EEEEEET_S9_S9_S9_St26random_access_iterator_tag.isra.0
	movl	%eax, %esi
	jmp	L1456
	.p2align 4,,10
	.p2align 3
L1672:
	movl	20(%esp), %ecx
	cmpl	%esi, %ecx
	je	L1419
	movl	%ebp, 56(%esp)
	movl	44(%esp), %edi
	leal	12(%esi), %eax
	movl	%ecx, %ebp
	movl	%ebx, 36(%esp)
	movl	%esi, 52(%esp)
	jmp	L1436
	.p2align 4,,10
	.p2align 3
L1420:
	cmpl	%eax, %ebx
	je	L1421
	movl	%ebx, 4(%edi)
	movl	-4(%eax), %ebx
	movl	12(%edi), %edx
	movl	%ebx, 8(%edi)
	movl	(%eax), %ebx
	movl	%ebx, 12(%edi)
	testl	%ecx, %ecx
	je	L1435
	movl	%ecx, -8(%eax)
	movl	%edx, (%eax)
L1424:
	leal	16(%eax), %edx
	movb	$0, (%ecx)
	addl	$28, %edi
	movl	$0, -4(%eax)
	cmpl	%edx, %ebp
	je	L1677
	addl	$28, %eax
L1436:
	movl	-12(%eax), %edx
	movl	4(%edi), %ecx
	leal	12(%edi), %esi
	movl	%edx, (%edi)
	movl	%ecx, %edx
	movl	-8(%eax), %ebx
	cmpl	%esi, %ecx
	jne	L1420
	cmpl	%eax, %ebx
	je	L1421
	movl	%ebx, 4(%edi)
	movl	-4(%eax), %edx
	movl	%edx, 8(%edi)
	movl	(%eax), %edx
	movl	%edx, 12(%edi)
L1435:
	movl	%eax, -8(%eax)
	movl	%eax, %ecx
	jmp	L1424
	.p2align 4,,10
	.p2align 3
L1421:
	leal	-12(%eax), %ecx
	cmpl	%ecx, %edi
	je	L1534
	movl	-4(%eax), %ecx
	testl	%ecx, %ecx
	je	L1425
	cmpl	$1, %ecx
	je	L1678
	cmpl	$16, %ecx
	jnb	L1428
	testb	$8, %cl
	jne	L1679
	testb	$4, %cl
	jne	L1680
	testl	%ecx, %ecx
	je	L1425
	movzbl	(%eax), %ebx
	movb	%bl, (%edx)
	testb	$2, %cl
	jne	L1642
	.p2align 4
	.p2align 3
L1664:
	movl	4(%edi), %edx
	movl	-4(%eax), %ecx
L1425:
	movb	$0, (%edx,%ecx)
	movl	%ecx, 8(%edi)
	movl	-8(%eax), %ecx
	jmp	L1424
	.p2align 4,,10
	.p2align 3
L1677:
	movl	36(%esp), %ebx
	movl	52(%esp), %esi
	movl	56(%esp), %ebp
	cmpl	%esi, 24(%esp)
	je	L1437
L1531:
	movl	%ebp, 64(%esp)
	movl	20(%esp), %edx
	leal	-16(%esi), %eax
	movl	%ebx, 56(%esp)
	movl	24(%esp), %ebp
	movl	%edi, 60(%esp)
	jmp	L1454
	.p2align 4,,10
	.p2align 3
L1438:
	cmpl	%eax, %edi
	je	L1439
	movl	%edi, 4(%edx)
	movl	-4(%eax), %ebx
	movl	12(%edx), %ecx
	movl	%ebx, 8(%edx)
	movl	(%eax), %ebx
	movl	%ebx, 12(%edx)
	testl	%esi, %esi
	je	L1453
	leal	-12(%eax), %ebx
	movl	%esi, -8(%eax)
	movl	%ecx, (%eax)
	movl	%ebx, 36(%esp)
L1442:
	movb	$0, (%esi)
	movl	$0, -4(%eax)
	cmpl	36(%esp), %ebp
	je	L1681
L1537:
	subl	$28, %eax
L1454:
	movl	-12(%eax), %ecx
	subl	$28, %edx
	movl	4(%edx), %esi
	movl	%ecx, (%edx)
	leal	12(%edx), %ecx
	movl	-8(%eax), %edi
	movl	%esi, %ebx
	cmpl	%ecx, %esi
	jne	L1438
	cmpl	%eax, %edi
	je	L1439
	movl	%edi, 4(%edx)
	movl	-4(%eax), %ecx
	movl	%ecx, 8(%edx)
	movl	(%eax), %ecx
	movl	%ecx, 12(%edx)
L1453:
	movl	%eax, %esi
	leal	-12(%eax), %ecx
	movl	%eax, -8(%eax)
	movl	%ecx, 36(%esp)
	movb	$0, (%esi)
	movl	$0, -4(%eax)
	cmpl	36(%esp), %ebp
	jne	L1537
L1681:
	movl	56(%esp), %ebx
	movl	60(%esp), %edi
	movl	64(%esp), %ebp
L1437:
	movl	44(%esp), %ecx
	movl	24(%esp), %esi
	leal	12(%ecx), %eax
	cmpl	%edi, %ecx
	je	L1418
	movl	%ebx, 56(%esp)
	movl	%edi, 36(%esp)
	movl	%ebp, 60(%esp)
	jmp	L1473
	.p2align 4,,10
	.p2align 3
L1457:
	cmpl	%eax, %edx
	je	L1458
	movl	%edx, 4(%esi)
	movl	-4(%eax), %edx
	movl	12(%esi), %ecx
	movl	%edx, 8(%esi)
	movl	(%eax), %edx
	movl	%edx, 12(%esi)
	testl	%ebx, %ebx
	je	L1472
	movl	%ebx, -8(%eax)
	movl	%ecx, (%eax)
L1461:
	movb	$0, (%ebx)
	addl	$28, %esi
	leal	16(%eax), %edx
	movl	$0, -4(%eax)
	cmpl	%edx, 36(%esp)
	je	L1670
	addl	$28, %eax
L1473:
	movl	-12(%eax), %edx
	movl	4(%esi), %ebx
	leal	12(%esi), %ebp
	movl	%edx, (%esi)
	movl	%ebx, %ecx
	movl	-8(%eax), %edx
	cmpl	%ebp, %ebx
	jne	L1457
	cmpl	%eax, %edx
	je	L1458
	movl	%edx, 4(%esi)
	movl	-4(%eax), %edx
	movl	%edx, 8(%esi)
	movl	(%eax), %edx
	movl	%edx, 12(%esi)
L1472:
	movl	%eax, -8(%eax)
	movl	%eax, %ebx
	jmp	L1461
	.p2align 4,,10
	.p2align 3
L1439:
	leal	-12(%eax), %ecx
	movl	%ecx, 36(%esp)
	cmpl	%ecx, %edx
	je	L1536
	movl	-4(%eax), %esi
	movl	%esi, 52(%esp)
	testl	%esi, %esi
	je	L1443
	cmpl	$1, %esi
	je	L1682
	movl	52(%esp), %ecx
	cmpl	$16, %ecx
	jnb	L1446
	andl	$8, %ecx
	jne	L1683
	testb	$4, 52(%esp)
	jne	L1684
	movl	52(%esp), %esi
	testl	%esi, %esi
	je	L1443
	movzbl	(%eax), %ecx
	andl	$2, %esi
	movb	%cl, (%ebx)
	jne	L1645
	.p2align 4
	.p2align 3
L1665:
	movl	-4(%eax), %ecx
	movl	4(%edx), %ebx
	movl	%ecx, 52(%esp)
L1443:
	movl	52(%esp), %esi
	movb	$0, (%ebx,%esi)
	movl	%esi, 8(%edx)
	movl	-8(%eax), %esi
	jmp	L1442
	.p2align 4,,10
	.p2align 3
L1670:
	movl	56(%esp), %ebx
	movl	60(%esp), %ebp
	jmp	L1456
	.p2align 4,,10
	.p2align 3
L1458:
	leal	-12(%eax), %ebx
	cmpl	%ebx, %esi
	je	L1538
	movl	-4(%eax), %ebx
	movl	%ebx, 52(%esp)
	testl	%ebx, %ebx
	je	L1462
	cmpl	$1, %ebx
	je	L1685
	movl	52(%esp), %ebx
	cmpl	$16, %ebx
	jnb	L1465
	andl	$8, %ebx
	jne	L1686
	testb	$4, 52(%esp)
	jne	L1687
	movl	52(%esp), %edi
	testl	%edi, %edi
	je	L1462
	movzbl	(%edx), %ebx
	andl	$2, %edi
	movb	%bl, (%ecx)
	jne	L1648
	.p2align 4
	.p2align 3
L1666:
	movl	-4(%eax), %edx
	movl	4(%esi), %ecx
	movl	%edx, 52(%esp)
L1462:
	movl	52(%esp), %ebx
	movb	$0, (%ecx,%ebx)
	movl	%ebx, 8(%esi)
	movl	-8(%eax), %ebx
	jmp	L1461
	.p2align 4,,10
	.p2align 3
L1682:
	movzbl	(%eax), %ecx
	movb	%cl, (%ebx)
	movl	-4(%eax), %ecx
	movl	4(%edx), %ebx
	movl	%ecx, 52(%esp)
	jmp	L1443
	.p2align 4,,10
	.p2align 3
L1685:
	movzbl	(%edx), %edx
	movb	%dl, (%ecx)
	movl	-4(%eax), %edx
	movl	4(%esi), %ecx
	movl	%edx, 52(%esp)
	jmp	L1462
	.p2align 4,,10
	.p2align 3
L1678:
	movzbl	(%eax), %ecx
	movb	%cl, (%edx)
	movl	4(%edi), %edx
	movl	-4(%eax), %ecx
	jmp	L1425
	.p2align 4,,10
	.p2align 3
L1478:
	leal	-12(%eax), %ebx
	cmpl	%ebx, %edi
	je	L1540
	movl	-4(%eax), %ebx
	movl	%ebx, 52(%esp)
	testl	%ebx, %ebx
	je	L1482
	cmpl	$1, %ebx
	je	L1688
	movl	52(%esp), %esi
	cmpl	$16, %esi
	jnb	L1485
	andl	$8, %esi
	jne	L1689
	testb	$4, 52(%esp)
	jne	L1690
	movl	52(%esp), %esi
	testl	%esi, %esi
	je	L1482
	movzbl	(%edx), %ebx
	andl	$2, %esi
	movb	%bl, (%ecx)
	jne	L1651
	.p2align 4
	.p2align 3
L1667:
	movl	-4(%eax), %edx
	movl	4(%edi), %ecx
	movl	%edx, 52(%esp)
L1482:
	movl	52(%esp), %edx
	movb	$0, (%ecx,%edx)
	movl	%edx, 8(%edi)
	movl	-8(%eax), %ebx
	jmp	L1481
	.p2align 4,,10
	.p2align 3
L1676:
	movl	56(%esp), %ebx
	movl	36(%esp), %esi
	movl	60(%esp), %ebp
	cmpl	%esi, 20(%esp)
	je	L1494
L1532:
	movl	24(%esp), %edx
	movl	%ebp, 64(%esp)
	leal	12(%esi), %eax
	movl	%ebx, 56(%esp)
	movl	20(%esp), %ebp
	movl	%edx, 36(%esp)
	movl	%edi, 60(%esp)
	jmp	L1511
	.p2align 4,,10
	.p2align 3
L1495:
	cmpl	%eax, %ecx
	je	L1496
	movl	36(%esp), %edi
	movl	%ecx, 4(%edi)
	movl	-4(%eax), %ecx
	movl	12(%edi), %ebx
	movl	%ecx, 8(%edi)
	movl	(%eax), %ecx
	movl	%ecx, 12(%edi)
	testl	%esi, %esi
	je	L1510
	movl	%esi, -8(%eax)
	movl	%ebx, (%eax)
L1499:
	leal	16(%eax), %ecx
	movb	$0, (%esi)
	addl	$28, 36(%esp)
	movl	$0, -4(%eax)
	cmpl	%ecx, %ebp
	je	L1691
	addl	$28, %eax
L1511:
	movl	36(%esp), %edi
	movl	-12(%eax), %ecx
	movl	4(%edi), %esi
	movl	%ecx, (%edi)
	addl	$12, %edi
	movl	-8(%eax), %ecx
	movl	%esi, %ebx
	cmpl	%edi, %esi
	jne	L1495
	cmpl	%eax, %ecx
	je	L1496
	movl	36(%esp), %esi
	movl	%ecx, 4(%esi)
	movl	-4(%eax), %ecx
	movl	%ecx, 8(%esi)
	movl	(%eax), %ecx
	movl	%ecx, 12(%esi)
L1510:
	movl	%eax, -8(%eax)
	movl	%eax, %esi
	jmp	L1499
	.p2align 4,,10
	.p2align 3
L1496:
	leal	-12(%eax), %esi
	cmpl	%esi, 36(%esp)
	je	L1542
	movl	-4(%eax), %esi
	movl	%esi, 52(%esp)
	testl	%esi, %esi
	je	L1500
	cmpl	$1, %esi
	je	L1692
	movl	52(%esp), %esi
	cmpl	$16, %esi
	jnb	L1503
	andl	$8, %esi
	jne	L1693
	testb	$4, 52(%esp)
	jne	L1694
	movl	52(%esp), %esi
	testl	%esi, %esi
	je	L1500
	movzbl	(%ecx), %edx
	andl	$2, %esi
	movb	%dl, (%ebx)
	jne	L1654
	.p2align 4
	.p2align 3
L1668:
	movl	36(%esp), %ecx
	movl	4(%ecx), %ebx
	movl	-4(%eax), %ecx
	movl	%ecx, 52(%esp)
L1500:
	movl	52(%esp), %esi
	movl	36(%esp), %ecx
	movb	$0, (%ebx,%esi)
	movl	%esi, 8(%ecx)
	movl	-8(%eax), %esi
	jmp	L1499
	.p2align 4,,10
	.p2align 3
L1691:
	movl	56(%esp), %ebx
	movl	60(%esp), %edi
	movl	64(%esp), %ebp
L1494:
	movl	20(%esp), %esi
	leal	-16(%edi), %eax
	cmpl	%edi, 44(%esp)
	je	L1475
	movl	%ebx, 56(%esp)
	movl	44(%esp), %edi
	movl	%ebp, 60(%esp)
	jmp	L1529
	.p2align 4,,10
	.p2align 3
L1513:
	cmpl	%eax, %edx
	je	L1514
	movl	%edx, 4(%esi)
	movl	-4(%eax), %edx
	movl	12(%esi), %ecx
	movl	%edx, 8(%esi)
	movl	(%eax), %edx
	movl	%edx, 12(%esi)
	testl	%ebx, %ebx
	je	L1528
	movl	%ecx, (%eax)
	leal	-12(%eax), %ecx
	movl	%ebx, -8(%eax)
	movl	%ecx, 36(%esp)
L1517:
	movb	$0, (%ebx)
	movl	$0, -4(%eax)
	cmpl	36(%esp), %edi
	je	L1670
	subl	$28, %eax
L1529:
	subl	$28, %esi
	movl	-12(%eax), %edx
	movl	4(%esi), %ebx
	leal	12(%esi), %ecx
	movl	%edx, (%esi)
	movl	%ebx, %ebp
	movl	-8(%eax), %edx
	cmpl	%ecx, %ebx
	jne	L1513
	cmpl	%eax, %edx
	je	L1514
	movl	%edx, 4(%esi)
	movl	-4(%eax), %edx
	movl	%edx, 8(%esi)
	movl	(%eax), %edx
	movl	%edx, 12(%esi)
L1528:
	leal	-12(%eax), %ecx
	movl	%eax, -8(%eax)
	movl	%eax, %ebx
	movl	%ecx, 36(%esp)
	jmp	L1517
	.p2align 4,,10
	.p2align 3
L1514:
	leal	-12(%eax), %ecx
	movl	%ecx, 36(%esp)
	cmpl	%ecx, %esi
	je	L1544
	movl	-4(%eax), %ecx
	movl	%ecx, 52(%esp)
	testl	%ecx, %ecx
	je	L1518
	cmpl	$1, %ecx
	je	L1695
	movl	52(%esp), %ecx
	cmpl	$16, %ecx
	jnb	L1521
	andl	$8, %ecx
	jne	L1696
	testb	$4, 52(%esp)
	jne	L1697
	movl	52(%esp), %ecx
	testl	%ecx, %ecx
	je	L1518
	movzbl	(%edx), %ebx
	andl	$2, %ecx
	movb	%bl, 0(%ebp)
	jne	L1657
	.p2align 4
	.p2align 3
L1669:
	movl	-4(%eax), %ecx
	movl	4(%esi), %ebp
	movl	%ecx, 52(%esp)
L1518:
	movl	52(%esp), %ebx
	movb	$0, 0(%ebp,%ebx)
	movl	%ebx, 8(%esi)
	movl	-8(%eax), %ebx
	jmp	L1517
	.p2align 4,,10
	.p2align 3
L1688:
	movzbl	(%edx), %edx
	movb	%dl, (%ecx)
	movl	-4(%eax), %edx
	movl	4(%edi), %ecx
	movl	%edx, 52(%esp)
	jmp	L1482
	.p2align 4,,10
	.p2align 3
L1692:
	movzbl	(%ecx), %ecx
	movl	36(%esp), %edx
	movb	%cl, (%ebx)
	movl	-4(%eax), %ecx
	movl	4(%edx), %ebx
	movl	%ecx, 52(%esp)
	jmp	L1500
	.p2align 4,,10
	.p2align 3
L1695:
	movzbl	(%edx), %edx
	movb	%dl, 0(%ebp)
	movl	-4(%eax), %edx
	movl	4(%esi), %ebp
	movl	%edx, 52(%esp)
	jmp	L1518
	.p2align 4,,10
	.p2align 3
L1428:
	movl	-16(%eax,%ecx), %ebx
	movl	%ebx, -16(%edx,%ecx)
	movl	-12(%eax,%ecx), %ebx
	movl	%ebx, -12(%edx,%ecx)
	movl	-8(%eax,%ecx), %ebx
	movl	%ebx, -8(%edx,%ecx)
	movl	-4(%eax,%ecx), %ebx
	movl	%ebx, -4(%edx,%ecx)
	subl	$1, %ecx
	cmpl	$16, %ecx
	jb	L1664
	movl	%ebp, 60(%esp)
	andl	$-16, %ecx
	movl	%ecx, 64(%esp)
	xorl	%ecx, %ecx
L1433:
	movl	12(%eax,%ecx), %ebx
	movl	4(%eax,%ecx), %ebp
	movl	8(%eax,%ecx), %esi
	movl	%ebx, 68(%esp)
	movl	(%eax,%ecx), %ebx
	movl	%ebp, 4(%edx,%ecx)
	movl	%ebx, (%edx,%ecx)
	movl	%esi, 8(%edx,%ecx)
	movl	68(%esp), %ebx
	movl	%ebx, 12(%edx,%ecx)
	addl	$16, %ecx
	cmpl	64(%esp), %ecx
	jb	L1433
	movl	60(%esp), %ebp
	jmp	L1664
	.p2align 4,,10
	.p2align 3
L1446:
	movl	52(%esp), %esi
	movl	-16(%eax,%esi), %edi
	movl	%edi, -16(%ebx,%esi)
	movl	-12(%eax,%esi), %edi
	movl	%edi, -12(%ebx,%esi)
	movl	-8(%eax,%esi), %edi
	movl	%edi, -8(%ebx,%esi)
	movl	-4(%eax,%esi), %edi
	movl	%edi, -4(%ebx,%esi)
	subl	$1, %esi
	cmpl	$16, %esi
	jb	L1665
	movl	%ebp, 52(%esp)
	andl	$-16, %esi
	movl	36(%esp), %ecx
	movl	%edx, 68(%esp)
	movl	%esi, 72(%esp)
	xorl	%esi, %esi
L1451:
	movl	12(%eax,%esi), %edx
	movl	4(%eax,%esi), %ebp
	movl	8(%eax,%esi), %edi
	movl	%edx, 36(%esp)
	movl	(%eax,%esi), %edx
	movl	%ebp, 4(%ebx,%esi)
	movl	%edx, (%ebx,%esi)
	movl	%edi, 8(%ebx,%esi)
	movl	36(%esp), %edx
	movl	%edx, 12(%ebx,%esi)
	addl	$16, %esi
	cmpl	72(%esp), %esi
	jb	L1451
	movl	52(%esp), %ebp
	movl	68(%esp), %edx
	movl	%ecx, 36(%esp)
	jmp	L1665
	.p2align 4,,10
	.p2align 3
L1465:
	movl	52(%esp), %ebx
	movl	-16(%edx,%ebx), %ebp
	movl	%ebp, -16(%ecx,%ebx)
	movl	-12(%edx,%ebx), %ebp
	movl	%ebp, -12(%ecx,%ebx)
	movl	-8(%edx,%ebx), %ebp
	movl	%ebp, -8(%ecx,%ebx)
	movl	-4(%edx,%ebx), %ebp
	movl	%ebp, -4(%ecx,%ebx)
	subl	$1, %ebx
	cmpl	$16, %ebx
	jb	L1666
	movl	%esi, 52(%esp)
	andl	$-16, %ebx
	movl	%ebx, 64(%esp)
	xorl	%ebx, %ebx
L1470:
	movl	12(%edx,%ebx), %esi
	movl	4(%edx,%ebx), %ebp
	movl	8(%edx,%ebx), %edi
	movl	%esi, 68(%esp)
	movl	(%edx,%ebx), %esi
	movl	%ebp, 4(%ecx,%ebx)
	movl	%esi, (%ecx,%ebx)
	movl	%edi, 8(%ecx,%ebx)
	movl	68(%esp), %esi
	movl	%esi, 12(%ecx,%ebx)
	addl	$16, %ebx
	cmpl	64(%esp), %ebx
	jb	L1470
	movl	52(%esp), %esi
	jmp	L1666
L1476:
	movl	44(%esp), %edi
	movl	24(%esp), %ecx
	cmpl	%ecx, 20(%esp)
	jne	L1532
	jmp	L1456
L1521:
	movl	52(%esp), %ecx
	movl	-16(%edx,%ecx), %ebx
	movl	%ebx, -16(%ebp,%ecx)
	movl	-12(%edx,%ecx), %ebx
	movl	%ebx, -12(%ebp,%ecx)
	movl	-8(%edx,%ecx), %ebx
	movl	%ebx, -8(%ebp,%ecx)
	movl	-4(%edx,%ecx), %ebx
	movl	%ebx, -4(%ebp,%ecx)
	leal	-1(%ecx), %ebx
	cmpl	$16, %ebx
	jb	L1669
	movl	%esi, 52(%esp)
	andl	$-16, %ebx
	movl	36(%esp), %ecx
	movl	%eax, 64(%esp)
	movl	%edi, 68(%esp)
	movl	%ebx, 72(%esp)
	xorl	%ebx, %ebx
L1526:
	movl	12(%edx,%ebx), %eax
	movl	4(%edx,%ebx), %edi
	movl	8(%edx,%ebx), %esi
	movl	%eax, 36(%esp)
	movl	(%edx,%ebx), %eax
	movl	%edi, 4(%ebp,%ebx)
	movl	%eax, 0(%ebp,%ebx)
	movl	%esi, 8(%ebp,%ebx)
	movl	36(%esp), %eax
	movl	%eax, 12(%ebp,%ebx)
	addl	$16, %ebx
	cmpl	72(%esp), %ebx
	jb	L1526
	movl	52(%esp), %esi
	movl	64(%esp), %eax
	movl	%ecx, 36(%esp)
	movl	68(%esp), %edi
	jmp	L1669
L1503:
	movl	52(%esp), %esi
	movl	-16(%ecx,%esi), %edi
	movl	%edi, -16(%ebx,%esi)
	movl	-12(%ecx,%esi), %edi
	movl	%edi, -12(%ebx,%esi)
	movl	-8(%ecx,%esi), %edi
	movl	%edi, -8(%ebx,%esi)
	movl	-4(%ecx,%esi), %edi
	movl	%edi, -4(%ebx,%esi)
	subl	$1, %esi
	cmpl	$16, %esi
	jb	L1668
	movl	%ebp, 52(%esp)
	andl	$-16, %esi
	movl	%esi, 68(%esp)
	xorl	%esi, %esi
L1508:
	movl	12(%ecx,%esi), %edx
	movl	4(%ecx,%esi), %ebp
	movl	8(%ecx,%esi), %edi
	movl	%edx, 72(%esp)
	movl	(%ecx,%esi), %edx
	movl	%ebp, 4(%ebx,%esi)
	movl	%edx, (%ebx,%esi)
	movl	%edi, 8(%ebx,%esi)
	movl	72(%esp), %edx
	movl	%edx, 12(%ebx,%esi)
	addl	$16, %esi
	cmpl	68(%esp), %esi
	jb	L1508
	movl	52(%esp), %ebp
	jmp	L1668
L1485:
	movl	52(%esp), %ebx
	movl	-16(%edx,%ebx), %ebp
	movl	%ebp, -16(%ecx,%ebx)
	movl	-12(%edx,%ebx), %ebp
	movl	%ebp, -12(%ecx,%ebx)
	movl	-8(%edx,%ebx), %ebp
	movl	%ebp, -8(%ecx,%ebx)
	movl	-4(%edx,%ebx), %ebp
	movl	%ebp, -4(%ecx,%ebx)
	subl	$1, %ebx
	cmpl	$16, %ebx
	jb	L1667
	movl	%edi, 52(%esp)
	andl	$-16, %ebx
	movl	%ebx, 64(%esp)
	xorl	%ebx, %ebx
L1490:
	movl	12(%edx,%ebx), %esi
	movl	4(%edx,%ebx), %ebp
	movl	8(%edx,%ebx), %edi
	movl	%esi, 68(%esp)
	movl	(%edx,%ebx), %esi
	movl	%ebp, 4(%ecx,%ebx)
	movl	%esi, (%ecx,%ebx)
	movl	%edi, 8(%ecx,%ebx)
	movl	68(%esp), %esi
	movl	%esi, 12(%ecx,%ebx)
	addl	$16, %ebx
	cmpl	64(%esp), %ebx
	jb	L1490
	movl	52(%esp), %edi
	jmp	L1667
	.p2align 4,,10
	.p2align 3
L1538:
	movl	%edx, %ebx
	jmp	L1461
	.p2align 4,,10
	.p2align 3
L1536:
	movl	%edi, %esi
	jmp	L1442
	.p2align 4,,10
	.p2align 3
L1534:
	movl	%ebx, %ecx
	jmp	L1424
	.p2align 4,,10
	.p2align 3
L1419:
	movl	44(%esp), %edi
	movl	20(%esp), %ecx
	cmpl	%ecx, 24(%esp)
	jne	L1531
	jmp	L1456
	.p2align 4,,10
	.p2align 3
L1542:
	movl	%ecx, %esi
	jmp	L1499
	.p2align 4,,10
	.p2align 3
L1540:
	movl	%edx, %ebx
	jmp	L1481
	.p2align 4,,10
	.p2align 3
L1544:
	movl	%edx, %ebx
	jmp	L1517
L1683:
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, (%ebx)
	movl	%edi, 4(%ebx)
	movl	52(%esp), %ecx
	movl	-8(%eax,%ecx), %esi
	movl	-4(%eax,%ecx), %edi
	movl	%esi, -8(%ebx,%ecx)
	movl	%edi, -4(%ebx,%ecx)
	movl	-4(%eax), %ecx
	movl	4(%edx), %ebx
	movl	%ecx, 52(%esp)
	jmp	L1443
L1679:
	movl	(%eax), %ebx
	movl	4(%eax), %esi
	movl	%ebx, (%edx)
	movl	%esi, 4(%edx)
	movl	-8(%eax,%ecx), %ebx
	movl	-4(%eax,%ecx), %esi
	movl	%ebx, -8(%edx,%ecx)
	movl	%esi, -4(%edx,%ecx)
	movl	4(%edi), %edx
	movl	-4(%eax), %ecx
	jmp	L1425
L1686:
	movl	(%edx), %edi
	movl	4(%edx), %ebp
	movl	%edi, (%ecx)
	movl	%ebp, 4(%ecx)
	movl	52(%esp), %ebx
	movl	-8(%edx,%ebx), %edi
	movl	-4(%edx,%ebx), %ebp
	movl	%edi, -8(%ecx,%ebx)
	movl	%ebp, -4(%ecx,%ebx)
	movl	-4(%eax), %edx
	movl	4(%esi), %ecx
	movl	%edx, 52(%esp)
	jmp	L1462
L1687:
	movl	(%edx), %ebp
	movl	%ebp, (%ecx)
	movl	52(%esp), %ebx
	movl	-4(%edx,%ebx), %edx
	movl	%edx, -4(%ecx,%ebx)
	movl	-4(%eax), %edx
	movl	4(%esi), %ecx
	movl	%edx, 52(%esp)
	jmp	L1462
L1684:
	movl	(%eax), %edi
	movl	%edi, (%ebx)
	movl	52(%esp), %ecx
	movl	-4(%eax,%ecx), %edi
	movl	%edi, -4(%ebx,%ecx)
	movl	-4(%eax), %ecx
	movl	4(%edx), %ebx
	movl	%ecx, 52(%esp)
	jmp	L1443
L1680:
	movl	(%eax), %ebx
	movl	%ebx, (%edx)
	movl	-4(%eax,%ecx), %ebx
	movl	%ebx, -4(%edx,%ecx)
	movl	4(%edi), %edx
	movl	-4(%eax), %ecx
	jmp	L1425
L1696:
	movl	(%edx), %ecx
	movl	4(%edx), %ebx
	movl	%ecx, 0(%ebp)
	movl	%ebx, 4(%ebp)
	movl	52(%esp), %ecx
	movl	-4(%edx,%ecx), %ebx
	movl	-8(%edx,%ecx), %ecx
	movl	52(%esp), %edx
	movl	%ecx, -8(%ebp,%edx)
	movl	%ebx, -4(%ebp,%edx)
	movl	-4(%eax), %ecx
	movl	4(%esi), %ebp
	movl	%ecx, 52(%esp)
	jmp	L1518
L1693:
	movl	(%ecx), %esi
	movl	4(%ecx), %edi
	movl	%esi, (%ebx)
	movl	%edi, 4(%ebx)
	movl	52(%esp), %edx
	movl	-8(%ecx,%edx), %esi
	movl	-4(%ecx,%edx), %edi
	movl	%esi, -8(%ebx,%edx)
	movl	%edi, -4(%ebx,%edx)
	movl	36(%esp), %ecx
	movl	4(%ecx), %ebx
	movl	-4(%eax), %ecx
	movl	%ecx, 52(%esp)
	jmp	L1500
L1689:
	movl	(%edx), %ebx
	movl	4(%edx), %esi
	movl	%ebx, (%ecx)
	movl	%esi, 4(%ecx)
	movl	52(%esp), %ebp
	movl	-8(%edx,%ebp), %ebx
	movl	-4(%edx,%ebp), %esi
	movl	%ebx, -8(%ecx,%ebp)
	movl	%esi, -4(%ecx,%ebp)
	movl	-4(%eax), %edx
	movl	4(%edi), %ecx
	movl	%edx, 52(%esp)
	jmp	L1482
L1690:
	movl	(%edx), %ebp
	movl	%ebp, (%ecx)
	movl	52(%esp), %ebx
	movl	-4(%edx,%ebx), %edx
	movl	%edx, -4(%ecx,%ebx)
	movl	-4(%eax), %edx
	movl	4(%edi), %ecx
	movl	%edx, 52(%esp)
	jmp	L1482
L1697:
	movl	(%edx), %ebx
	movl	%ebx, 0(%ebp)
	movl	52(%esp), %ecx
	movl	-4(%edx,%ecx), %edx
	movl	%edx, -4(%ebp,%ecx)
	movl	-4(%eax), %ecx
	movl	4(%esi), %ebp
	movl	%ecx, 52(%esp)
	jmp	L1518
L1694:
	movl	(%ecx), %edi
	movl	%edi, (%ebx)
	movl	52(%esp), %edx
	movl	-4(%ecx,%edx), %ecx
	movl	%ecx, -4(%ebx,%edx)
	movl	36(%esp), %ecx
	movl	4(%ecx), %ebx
	movl	-4(%eax), %ecx
	movl	%ecx, 52(%esp)
	jmp	L1500
L1645:
	movl	52(%esp), %ecx
	movzwl	-2(%eax,%ecx), %edi
	movw	%di, -2(%ebx,%ecx)
	movl	-4(%eax), %ecx
	movl	4(%edx), %ebx
	movl	%ecx, 52(%esp)
	jmp	L1443
L1648:
	movl	52(%esp), %ebx
	movzwl	-2(%edx,%ebx), %edx
	movw	%dx, -2(%ecx,%ebx)
	movl	-4(%eax), %edx
	movl	4(%esi), %ecx
	movl	%edx, 52(%esp)
	jmp	L1462
L1642:
	movzwl	-2(%eax,%ecx), %ebx
	movw	%bx, -2(%edx,%ecx)
	movl	4(%edi), %edx
	movl	-4(%eax), %ecx
	jmp	L1425
L1657:
	movl	52(%esp), %ecx
	movzwl	-2(%edx,%ecx), %edx
	movw	%dx, -2(%ebp,%ecx)
	movl	-4(%eax), %ecx
	movl	4(%esi), %ebp
	movl	%ecx, 52(%esp)
	jmp	L1518
L1654:
	movl	52(%esp), %edx
	movzwl	-2(%ecx,%edx), %ecx
	movw	%cx, -2(%ebx,%edx)
	movl	36(%esp), %ecx
	movl	4(%ecx), %ebx
	movl	-4(%eax), %ecx
	movl	%ecx, 52(%esp)
	jmp	L1500
L1651:
	movl	52(%esp), %ebx
	movzwl	-2(%edx,%ebx), %edx
	movw	%dx, -2(%ecx,%ebx)
	movl	-4(%eax), %edx
	movl	4(%edi), %ecx
	movl	%edx, 52(%esp)
	jmp	L1482
	.cfi_endproc
LFE70:
	.p2align 4
	.def	__ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEES3_iZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_T0_T1_T2_.isra.0;	.scl	3;	.type	32;	.endef
__ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEES3_iZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_T0_T1_T2_.isra.0:
LFB73:
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
	movl	%edx, %ecx
	subl	%eax, %ecx
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sarl	$2, %ecx
	imull	$-1227133513, %ecx, %ecx
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	movl	44(%esp), %ebp
	leal	1(%ecx), %ebx
	shrl	$31, %ebx
	leal	1(%ecx,%ebx), %ecx
	sarl	%ecx
	imull	$28, %ecx, %ebx
	leal	(%eax,%ebx), %edi
	cmpl	%ebp, %ecx
	jle	L1699
	movl	%ebp, (%esp)
	movl	%esi, %ecx
	sarl	$2, %ebx
	movl	%edx, 20(%esp)
	movl	%edi, %edx
	imull	$-1227133513, %ebx, %ebx
	movl	%eax, 16(%esp)
	call	__ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEES3_iZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_T0_T1_T2_.isra.0
	movl	%ebp, (%esp)
	movl	20(%esp), %edx
	movl	%esi, %ecx
	movl	%edi, %eax
	call	__ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEES3_iZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_T0_T1_T2_.isra.0
	movl	20(%esp), %ecx
	movl	%esi, 8(%esp)
	movl	%edi, %edx
	movl	%ebp, 12(%esp)
	movl	%ecx, %esi
	movl	%ebx, (%esp)
	subl	%edi, %esi
	movl	%esi, %eax
	sarl	$2, %eax
	imull	$-1227133513, %eax, %eax
	movl	%eax, 4(%esp)
	movl	16(%esp), %eax
	call	__ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEEiS3_ZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_SB_T0_SC_T1_SC_T2_.isra.0
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
L1699:
	.cfi_restore_state
	movl	%esi, 44(%esp)
	addl	$24, %esp
	.cfi_def_cfa_offset 20
	movl	%edx, %ecx
	movl	%edi, %edx
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
	jmp	__ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEES3_ZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_SB_T0_T1_.isra.0
	.cfi_endproc
LFE73:
	.p2align 4
	.globl	@getq16angle.lto_priv.0@8
	.def	@getq16angle.lto_priv.0@8;	.scl	2;	.type	32;	.endef
@getq16angle.lto_priv.0@8:
LFB74:
	.cfi_startproc
	call	@getangle@8
	sall	$16, %eax
	ret
	.cfi_endproc
LFE74:
	.p2align 4
	.def	__Z23DoShadowFindGroundPointP11tspritetype;	.scl	3;	.type	32;	.endef
__Z23DoShadowFindGroundPointP11tspritetype:
LFB75:
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
	movl	%eax, %ebx
	subl	$40, %esp
	.cfi_def_cfa_offset 56
	movswl	30(%eax), %eax
	movzwl	12(%ebx), %esi
	leal	32(%esp), %edi
	movl	4(%ebx), %edx
	movl	8(%ebx), %ecx
	movl	_User(,%eax,4), %eax
	movl	108(%eax), %eax
	movl	%eax, 24(%esp)
	movl	%esi, %eax
	andw	$-258, %ax
	movw	%ax, 12(%ebx)
	movl	(%ebx), %eax
	movl	%edi, 16(%esp)
	leal	24(%esp), %edi
	movl	%edi, 12(%esp)
	leal	36(%esp), %edi
	movl	%edi, 8(%esp)
	leal	28(%esp), %edi
	movl	%edi, 4(%esp)
	movswl	24(%ebx), %edi
	movl	%edi, (%esp)
	call	__Z17FAFgetzrangepointiiisPiS_S_S_
	movl	32(%esp), %eax
	movw	%si, 12(%ebx)
	movl	%eax, %edx
	andl	$114688, %edx
	cmpl	$49152, %edx
	je	L1705
L1707:
	movl	24(%esp), %ebx
	addl	$40, %esp
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
L1705:
	.cfi_restore_state
	andl	$16383, %eax
	movl	_sprite, %edx
	imull	$44, %eax, %ecx
	leal	(%edx,%ecx), %edi
	movzwl	12(%edi), %ecx
	testb	$32, %cl
	jne	L1707
	leal	12(%edi), %esi
	movl	%ecx, 20(%esp)
	movl	%esi, %eax
	subl	%edx, %eax
	movl	$-1171354717, %edx
	mull	%edx
	movl	%ebx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%edi)
	call	__Z23DoShadowFindGroundPointP11tspritetype
	subl	_sprite, %esi
	movl	20(%esp), %ecx
	movl	%eax, %ebx
	movl	$-1171354717, %eax
	mull	%esi
	movl	%ebx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 12(%edi)
	addl	$40, %esp
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
LFE75:
	.p2align 4
	.def	__Z8BackViewPiS_S_PsS_s;	.scl	3;	.type	32;	.endef
__Z8BackViewPiS_S_PsS_s:
LFB76:
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
	pushl	%ebx
	andl	$-8, %esp
	subl	$124, %esp
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	12(%ebp), %ebx
	movss	(%edx), %xmm1
	movss	(%eax), %xmm0
	movswl	16(%ebp), %esi
	movl	%eax, 80(%esp)
	movl	(%ebx), %edx
	movl	(%ecx), %eax
	movl	%ecx, 56(%esp)
	movswl	_screenpeek, %ecx
	movl	%esi, 32(%esp)
	unpcklps	%xmm1, %xmm0
	movl	%edx, %ebx
	movl	%eax, 100(%esp)
	sarl	$31, %ebx
	movl	%ecx, 68(%esp)
	movl	%ebx, %eax
	movlps	%xmm0, 92(%esp)
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	imull	$24124, %ecx, %edx
	subl	$100, %esi
	sall	$8, %esi
	sarl	$16, %eax
	movl	%esi, 76(%esp)
	addw	_Player+262(%edx), %ax
	leal	_Player(%edx), %ecx
	movswl	%ax, %ebx
	movl	%ecx, 40(%esp)
	leal	1536(%ebx), %eax
	movl	%ebx, 52(%esp)
	andl	$2047, %eax
	movzwl	_sintable(%eax,%eax), %eax
	sarw	$3, %ax
	movswl	%ax, %ecx
	leal	1024(%ebx), %eax
	andl	$2047, %eax
	movl	%ecx, 88(%esp)
	movzwl	_sintable(%eax,%eax), %eax
	sarw	$3, %ax
	movswl	%ax, %ebx
	movl	$-1171354717, %eax
	movl	%ebx, 84(%esp)
	movl	_sprite, %ecx
	movswl	_Player+348(%edx), %ebx
	imull	$44, %ebx, %ebx
	addl	%ecx, %ebx
	movzwl	12(%ebx), %edx
	leal	12(%ebx), %esi
	movw	%dx, 72(%esp)
	movl	%esi, %edx
	subl	%ecx, %edx
	movl	88(%esp), %ecx
	mull	%edx
	xorl	%eax, %eax
	movw	%ax, 120(%esp)
	leal	104(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	76(%esp), %edx
	andw	$-258, 12(%ebx)
	movl	%edx, 16(%esp)
	movl	84(%esp), %edx
	movl	$65537, 24(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 20(%esp)
	movl	%ecx, 8(%esp)
	movl	8(%ebp), %ecx
	movswl	(%ecx), %eax
	movl	%eax, 4(%esp)
	leal	92(%esp), %eax
	movl	%eax, (%esp)
	call	_hitscan
	movl	$-1171354717, %eax
	movzwl	120(%esp), %ecx
	movl	_sprite, %edx
	subl	%edx, %esi
	movl	%edx, 36(%esp)
	mull	%esi
	movl	80(%esp), %esi
	movl	108(%esp), %eax
	movw	%cx, 46(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	72(%esp), %edx
	movw	%dx, 12(%ebx)
	movl	104(%esp), %edx
	movl	(%esi), %esi
	subl	(%edi), %eax
	movl	%eax, 72(%esp)
	movl	88(%esp), %eax
	subl	%esi, %edx
	movl	%edx, 48(%esp)
/APP
 # 1216 "source/sw/src/draw.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	84(%esp), %eax
/APP
 # 1216 "source/sw/src/draw.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 64(%esp)
	movl	%edx, %eax
/APP
 # 1216 "source/sw/src/draw.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	72(%esp), %eax
/APP
 # 1216 "source/sw/src/draw.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 60(%esp)
	addl	64(%esp), %ecx
	addl	60(%esp), %edx
	cmpl	%edx, %ecx
	jle	L1726
	movswl	118(%esp), %eax
	testw	%ax, %ax
	jns	L1727
	movswl	116(%esp), %esi
	testw	%si, %si
	js	L1728
	imull	$44, %esi, %esi
	addl	36(%esp), %esi
	movzwl	12(%esi), %eax
	movw	%ax, 64(%esp)
	testb	$16, %al
	je	L1729
	movzwl	28(%ebx), %eax
	movl	84(%esp), %esi
	subw	$512, %ax
	andl	$2047, %eax
	leal	1536(%eax), %edx
	andl	$2047, %edx
	movswl	_sintable(%edx,%edx), %ecx
	movswl	_sintable(%eax,%eax), %edx
	movl	88(%esp), %eax
	imull	%esi, %ecx
	imull	%eax, %edx
	addl	%ecx, %edx
/APP
 # 1261 "source/sw/src/draw.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	%esi, %eax
/APP
 # 1261 "source/sw/src/draw.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, %ecx
	jle	L1720
	movl	88(%esp), %eax
/APP
 # 1262 "source/sw/src/draw.cpp" 1
	imull %edx; shrdl $28, %edx, %eax
 # 0 "" 2
/NO_APP
	subl	%eax, 48(%esp)
	jmp	L1715
	.p2align 4,,10
	.p2align 3
L1727:
	movl	8(%ebp), %esi
	movzwl	46(%esp), %ecx
	sall	$5, %eax
	movw	%cx, (%esi)
	movl	_wall, %edx
	addl	%edx, %eax
	movswl	8(%eax), %ecx
	sall	$5, %ecx
	addl	%ecx, %edx
	movl	4(%edx), %ebx
	subl	4(%eax), %ebx
	movl	(%edx), %ecx
	movl	%ebx, %edx
	subl	(%eax), %ecx
	call	@getangle@8
	movl	88(%esp), %ebx
	movl	84(%esp), %esi
	movl	%eax, %edx
	leal	1536(%eax), %eax
	andl	$2047, %eax
	movswl	_sintable(%edx,%edx), %edx
	movswl	_sintable(%eax,%eax), %eax
	imull	%ebx, %edx
	imull	%esi, %eax
	addl	%eax, %edx
	movl	%ebx, %eax
/APP
 # 1226 "source/sw/src/draw.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	%esi, %eax
/APP
 # 1226 "source/sw/src/draw.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, %ecx
	jg	L1730
L1720:
	movl	84(%esp), %eax
/APP
 # 1264 "source/sw/src/draw.cpp" 1
	imull %edx; shrdl $28, %edx, %eax
 # 0 "" 2
/NO_APP
	subl	%eax, 72(%esp)
L1715:
	movl	88(%esp), %eax
/APP
 # 1269 "source/sw/src/draw.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	84(%esp), %eax
/APP
 # 1269 "source/sw/src/draw.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, %edx
	jle	L1721
	movl	48(%esp), %esi
	sall	$16, %esi
	movl	%esi, %eax
	cltd
	idivl	88(%esp)
L1722:
	imull	$24124, 68(%esp), %ecx
	movl	_Player+168(%ecx), %edx
	cmpl	%eax, %edx
	jg	L1723
	movl	80(%esp), %eax
	movl	(%eax), %esi
L1712:
	movl	88(%esp), %eax
/APP
 # 1279 "source/sw/src/draw.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	imull	$24124, 68(%esp), %ecx
	addl	%esi, %eax
	movl	80(%esp), %esi
	movl	%eax, (%esi)
	movl	84(%esp), %eax
	movl	_Player+168(%ecx), %edx
/APP
 # 1280 "source/sw/src/draw.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, (%edi)
	movl	76(%esp), %eax
	movl	_Player+168(%ecx), %edx
/APP
 # 1281 "source/sw/src/draw.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	56(%esp), %ebx
	movl	$65536, %edx
	addl	%eax, (%ebx)
	movl	_Player+168(%ecx), %eax
	addl	$3072, %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	%eax, _Player+168(%ecx)
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%edi), %eax
	movl	%eax, 4(%esp)
	movl	(%esi), %eax
	movl	%eax, (%esp)
	call	_updatesectorz
	movl	52(%esp), %eax
	movl	12(%ebp), %edi
	sall	$16, %eax
	movl	%eax, (%edi)
L1709:
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
L1726:
	.cfi_restore_state
	movl	40(%esp), %eax
	movl	168(%eax), %edx
	jmp	L1712
	.p2align 4,,10
	.p2align 3
L1723:
	movl	80(%esp), %esi
	movl	%eax, _Player+168(%ecx)
	movl	%eax, %edx
	movl	(%esi), %esi
	jmp	L1712
	.p2align 4,,10
	.p2align 3
L1721:
	movl	72(%esp), %eax
	sall	$16, %eax
	cltd
	idivl	84(%esp)
	jmp	L1722
	.p2align 4,,10
	.p2align 3
L1730:
	movl	%ebx, %eax
/APP
 # 1227 "source/sw/src/draw.cpp" 1
	imull %edx; shrdl $28, %edx, %eax
 # 0 "" 2
/NO_APP
	subl	%eax, 48(%esp)
	jmp	L1715
	.p2align 4,,10
	.p2align 3
L1728:
	movl	8(%ebp), %eax
	movzwl	46(%esp), %esi
	movw	%si, (%eax)
	movl	88(%esp), %eax
/APP
 # 1235 "source/sw/src/draw.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	84(%esp), %eax
/APP
 # 1235 "source/sw/src/draw.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, %edx
	jle	L1717
	movl	88(%esp), %eax
	sarl	$5, %eax
	subl	%eax, 48(%esp)
	jmp	L1715
	.p2align 4,,10
	.p2align 3
L1717:
	movl	84(%esp), %eax
	sarl	$5, %eax
	subl	%eax, 72(%esp)
	jmp	L1715
	.p2align 4,,10
	.p2align 3
L1729:
	leal	12(%esi), %ebx
	movl	$-1171354717, %eax
	movl	56(%esp), %ecx
	movl	%ebx, %edx
	subl	36(%esp), %edx
	mull	%edx
	movl	32(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	andw	$-258, 12(%esi)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	80(%esp), %eax
	call	__Z8BackViewPiS_S_PsS_s
	movl	$-1171354717, %eax
	subl	_sprite, %ebx
	mull	%ebx
	movzwl	64(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 12(%esi)
	jmp	L1709
	.cfi_endproc
LFE76:
	.p2align 4
	.def	__Z12CircleCameraPiS_S_PsS_s.constprop.0;	.scl	3;	.type	32;	.endef
__Z12CircleCameraPiS_S_PsS_s.constprop.0:
LFB78:
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
	pushl	%ebx
	andl	$-8, %esp
	subl	$108, %esp
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	12(%ebp), %ebx
	movss	(%edx), %xmm1
	movl	%eax, 64(%esp)
	movss	(%eax), %xmm0
	movl	(%ebx), %edx
	movl	(%ecx), %eax
	movl	%ecx, 44(%esp)
	movswl	_screenpeek, %ecx
	unpcklps	%xmm1, %xmm0
	movl	%edx, %ebx
	movl	%eax, 84(%esp)
	sarl	$31, %ebx
	movl	%ecx, 60(%esp)
	movl	%ebx, %eax
	movlps	%xmm0, 76(%esp)
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	imull	$24124, %ecx, %ecx
	sarl	$16, %eax
	leal	_Player(%ecx), %ebx
	addw	_Player+264(%ecx), %ax
	movl	%ebx, 28(%esp)
	movswl	%ax, %ebx
	leal	1536(%ebx), %eax
	movl	%ebx, 40(%esp)
	andl	$2047, %eax
	movzwl	_sintable(%eax,%eax), %edx
	leal	1024(%ebx), %eax
	andl	$2047, %eax
	sarw	$4, %dx
	movzwl	_sintable(%eax,%eax), %eax
	movswl	%dx, %edx
	movl	%edx, %ebx
	sarw	$4, %ax
	sarl	%ebx
	cwtl
	addl	%edx, %ebx
	movl	%eax, %edx
	movl	%ebx, 72(%esp)
	movswl	_Player+348(%ecx), %ebx
	sarl	%edx
	addl	%eax, %edx
	imull	$44, %ebx, %ebx
	movl	%edx, 68(%esp)
	movl	_sprite, %edx
	addl	%edx, %ebx
	movzwl	12(%ebx), %ecx
	leal	12(%ebx), %esi
	movw	%cx, 56(%esp)
	movl	%esi, %ecx
	subl	%edx, %ecx
	movl	%ecx, %eax
	movl	$-1171354717, %ecx
	mull	%ecx
	movl	72(%esp), %ecx
	xorl	%eax, %eax
	movw	%ax, 104(%esp)
	leal	88(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	68(%esp), %edx
	andw	$-258, 12(%ebx)
	movl	%ecx, 8(%esp)
	movl	$1090519104, 24(%esp)
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	movl	8(%ebp), %edx
	movswl	(%edx), %eax
	movl	%eax, 4(%esp)
	leal	76(%esp), %eax
	movl	%eax, (%esp)
	call	_hitscan
	movzwl	104(%esp), %edx
	movl	$-1171354717, %eax
	movl	_sprite, %ecx
	subl	%ecx, %esi
	movw	%dx, 34(%esp)
	mull	%esi
	movzwl	56(%esp), %esi
	movl	72(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%si, 12(%ebx)
	movl	64(%esp), %esi
	movl	88(%esp), %ebx
	movl	(%esi), %esi
	subl	%esi, %ebx
	movl	%ebx, 36(%esp)
	movl	%ebx, %edx
	movl	92(%esp), %ebx
	subl	(%edi), %ebx
	movl	%ebx, 56(%esp)
/APP
 # 1337 "source/sw/src/draw.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	68(%esp), %eax
/APP
 # 1337 "source/sw/src/draw.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 52(%esp)
	movl	%edx, %eax
/APP
 # 1337 "source/sw/src/draw.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	56(%esp), %eax
/APP
 # 1337 "source/sw/src/draw.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 48(%esp)
	addl	52(%esp), %ebx
	addl	48(%esp), %edx
	cmpl	%edx, %ebx
	jle	L1746
	movswl	102(%esp), %eax
	testw	%ax, %ax
	jns	L1747
	movswl	100(%esp), %ebx
	testw	%bx, %bx
	js	L1748
	imull	$44, %ebx, %ebx
	addl	%ecx, %ebx
	movzwl	12(%ebx), %esi
	testl	$16, %esi
	je	L1749
L1737:
	movl	72(%esp), %eax
/APP
 # 1378 "source/sw/src/draw.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	68(%esp), %eax
/APP
 # 1378 "source/sw/src/draw.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, %edx
	jle	L1741
	movl	36(%esp), %esi
	sall	$16, %esi
	movl	%esi, %eax
	cltd
	idivl	72(%esp)
L1742:
	imull	$24124, 60(%esp), %ecx
	movl	_Player+172(%ecx), %edx
	cmpl	%eax, %edx
	jg	L1743
	movl	64(%esp), %eax
	movl	(%eax), %esi
L1734:
	movl	72(%esp), %eax
	movl	68(%esp), %ecx
	imull	%edx, %eax
	sarl	$16, %eax
	addl	%esi, %eax
	movl	64(%esp), %esi
	movl	%eax, (%esi)
	imull	$24124, 60(%esp), %eax
	imull	_Player+172(%eax), %ecx
	leal	_Player(%eax), %edx
	movl	%ecx, %eax
	movl	$65536, %ecx
	sarl	$16, %eax
	addl	%eax, (%edi)
	movl	172(%edx), %eax
	addl	$768, %eax
	cmpl	%ecx, %eax
	cmovg	%ecx, %eax
	movl	%eax, 172(%edx)
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	44(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	(%edi), %eax
	movl	%eax, 4(%esp)
	movl	(%esi), %eax
	movl	%eax, (%esp)
	call	_updatesectorz
	movl	40(%esp), %eax
	movl	12(%ebp), %edi
	sall	$16, %eax
	movl	%eax, (%edi)
L1731:
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
L1747:
	.cfi_restore_state
	movl	8(%ebp), %esi
	movzwl	34(%esp), %ecx
	sall	$5, %eax
	movw	%cx, (%esi)
	movl	_wall, %edx
	addl	%edx, %eax
	movswl	8(%eax), %ecx
	sall	$5, %ecx
	addl	%ecx, %edx
	movl	4(%edx), %ebx
	subl	4(%eax), %ebx
	movl	(%edx), %ecx
	movl	%ebx, %edx
	subl	(%eax), %ecx
	call	@getangle@8
	movl	72(%esp), %ecx
	movl	68(%esp), %esi
	movl	%eax, %edx
	leal	1536(%eax), %eax
	andl	$2047, %eax
	movswl	_sintable(%edx,%edx), %edx
	movswl	_sintable(%eax,%eax), %eax
	imull	%ecx, %edx
	imull	%esi, %eax
	addl	%eax, %edx
	movl	%ecx, %eax
/APP
 # 1347 "source/sw/src/draw.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	%esi, %eax
/APP
 # 1347 "source/sw/src/draw.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, %ecx
	jle	L1736
	movl	72(%esp), %eax
/APP
 # 1348 "source/sw/src/draw.cpp" 1
	imull %edx; shrdl $28, %edx, %eax
 # 0 "" 2
/NO_APP
	subl	%eax, 36(%esp)
	jmp	L1737
	.p2align 4,,10
	.p2align 3
L1746:
	movl	28(%esp), %eax
	movl	172(%eax), %edx
	jmp	L1734
	.p2align 4,,10
	.p2align 3
L1743:
	movl	64(%esp), %esi
	movl	%eax, _Player+172(%ecx)
	movl	%eax, %edx
	movl	(%esi), %esi
	jmp	L1734
	.p2align 4,,10
	.p2align 3
L1741:
	movl	56(%esp), %eax
	sall	$16, %eax
	cltd
	idivl	68(%esp)
	jmp	L1742
	.p2align 4,,10
	.p2align 3
L1736:
	movl	68(%esp), %eax
/APP
 # 1350 "source/sw/src/draw.cpp" 1
	imull %edx; shrdl $28, %edx, %eax
 # 0 "" 2
/NO_APP
	subl	%eax, 56(%esp)
	jmp	L1737
	.p2align 4,,10
	.p2align 3
L1748:
	movl	8(%ebp), %eax
	movzwl	34(%esp), %esi
	movw	%si, (%eax)
	movl	72(%esp), %eax
/APP
 # 1356 "source/sw/src/draw.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	68(%esp), %eax
/APP
 # 1356 "source/sw/src/draw.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, %edx
	jle	L1739
	movl	72(%esp), %eax
	sarl	$5, %eax
	subl	%eax, 36(%esp)
	jmp	L1737
	.p2align 4,,10
	.p2align 3
L1739:
	movl	68(%esp), %eax
	sarl	$5, %eax
	subl	%eax, 56(%esp)
	jmp	L1737
	.p2align 4,,10
	.p2align 3
L1749:
	leal	12(%ebx), %eax
	movl	%eax, %edx
	movl	%eax, 72(%esp)
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	movl	44(%esp), %ecx
	mull	%edx
	movl	12(%ebp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	andw	$-258, 12(%ebx)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	64(%esp), %eax
	call	__Z12CircleCameraPiS_S_PsS_s.constprop.0
	movl	72(%esp), %edi
	movl	$-1171354717, %eax
	subl	_sprite, %edi
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%si, 12(%ebx)
	jmp	L1731
	.cfi_endproc
LFE78:
	.section .rdata,"dr"
LC0:
	.ascii "FPS: %d\0"
LC1:
	.ascii "POSX:%d\0"
LC2:
	.ascii "POSY:%d\0"
LC3:
	.ascii "POSZ:%d\0"
LC4:
	.ascii "ANG:%d\0"
	.text
	.p2align 4
	.def	__Z17PrintLocationInfoP12PLAYERstruct;	.scl	3;	.type	32;	.endef
__Z17PrintLocationInfoP12PLAYERstruct:
LFB79:
	.cfi_startproc
	movzbl	_LocationInfo, %ecx
	testb	%cl, %cl
	je	L1759
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
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	movl	_windowxy1, %eax
	movl	_totalclock, %ebp
	movl	_windowxy1+4, %edi
	leal	2(%eax), %esi
	movl	__ZZ17PrintLocationInfoP12PLAYERstructE8framecnt, %eax
	movl	__ZZ17PrintLocationInfoP12PLAYERstructE8frameval(,%eax,4), %edx
	cmpl	%ebp, %edx
	jne	L1762
L1752:
	addl	$1, %eax
	andl	$15, %eax
	movl	%eax, __ZZ17PrintLocationInfoP12PLAYERstructE8framecnt
	cmpb	$1, %cl
	ja	L1763
	addl	$24, %esp
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
L1759:
	ret
	.p2align 4,,10
	.p2align 3
L1762:
	.cfi_def_cfa_offset 44
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%ebp, %ecx
	movl	$1920, %eax
	movl	$LC0, 4(%esp)
	subl	%edx, %ecx
	xorl	%edx, %edx
	movl	$_buffer, (%esp)
	idivl	%ecx
	addl	$3, %eax
	movl	%eax, 8(%esp)
	call	_sprintf
	leal	2(%edi), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	movl	$1, 20(%esp)
	movl	$_buffer, 16(%esp)
	movl	$-1, 12(%esp)
	movl	$1, 8(%esp)
	call	_printext256
	movl	__ZZ17PrintLocationInfoP12PLAYERstructE8framecnt, %eax
	movzbl	_LocationInfo, %ecx
	movl	%ebp, __ZZ17PrintLocationInfoP12PLAYERstructE8frameval(,%eax,4)
	jmp	L1752
	.p2align 4,,10
	.p2align 3
L1763:
	movl	(%ebx), %eax
	movl	$LC1, 4(%esp)
	movl	$_buffer, (%esp)
	movl	%eax, 8(%esp)
	call	_sprintf
	leal	9(%edi), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	movl	$1, 20(%esp)
	movl	$_buffer, 16(%esp)
	movl	$-1, 12(%esp)
	movl	$1, 8(%esp)
	call	_printext256
	movl	4(%ebx), %eax
	movl	$LC2, 4(%esp)
	movl	$_buffer, (%esp)
	movl	%eax, 8(%esp)
	call	_sprintf
	leal	16(%edi), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	movl	$1, 20(%esp)
	movl	$_buffer, 16(%esp)
	movl	$-1, 12(%esp)
	movl	$1, 8(%esp)
	call	_printext256
	movl	8(%ebx), %eax
	movl	$LC3, 4(%esp)
	movl	$_buffer, (%esp)
	movl	%eax, 8(%esp)
	call	_sprintf
	leal	23(%edi), %eax
	movl	%esi, (%esp)
	addl	$30, %edi
	movl	%eax, 4(%esp)
	movl	$1, 20(%esp)
	movl	$_buffer, 16(%esp)
	movl	$-1, 12(%esp)
	movl	$1, 8(%esp)
	call	_printext256
	movl	300(%ebx), %edx
	movl	$LC4, 4(%esp)
	movl	$_buffer, (%esp)
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	sarl	$16, %eax
	movl	%eax, 8(%esp)
	call	_sprintf
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	movl	$1, 20(%esp)
	movl	$_buffer, 16(%esp)
	movl	$-1, 12(%esp)
	movl	$1, 8(%esp)
	call	_printext256
	addl	$24, %esp
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
LFE79:
	.p2align 4
	.def	__Z15PrintSpriteInfoP12PLAYERstruct;	.scl	3;	.type	32;	.endef
__Z15PrintSpriteInfoP12PLAYERstruct:
LFB80:
	.cfi_startproc
	ret
	.cfi_endproc
LFE80:
	.p2align 4
	.def	__Z10CopySpritePK13uspritetypev7s;	.scl	3;	.type	32;	.endef
__Z10CopySpritePK13uspritetypev7s:
LFB81:
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
	movswl	%dx, %eax
	movl	$11, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	$-1171354717, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	call	__Z17COVERinsertspritess
	movl	_sprite, %ecx
	movl	(%esi), %edi
	imull	$44, %eax, %edx
	movl	%eax, 4(%esp)
	movl	%edx, %eax
	addl	%edx, %ecx
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ecx), %edx
	movl	%edi, (%ecx)
	movl	_sprite, %edi
	movl	4(%esi), %ebp
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	8(%ecx), %edx
	subl	%edi, %edx
	movl	%ebp, 4(%ecx)
	movl	8(%esi), %ebp
	movl	%edx, %eax
	mull	%ebx
	leal	12(%ecx), %eax
	subl	%edi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ebx
	movl	%ebp, 8(%ecx)
	movzwl	12(%esi), %ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edx, (%esp)
	leal	14(%ecx), %edx
	subl	%edi, %edx
	movw	%bp, 12(%ecx)
	movzwl	14(%esi), %ebp
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%ecx), %edx
	subl	%edi, %edx
	movw	%bp, 14(%ecx)
	movzbl	17(%esi), %ebp
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	movb	%dl, 17(%ecx)
	leal	20(%ecx), %edx
	movzbl	20(%esi), %ebp
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	movb	%dl, 20(%ecx)
	leal	21(%ecx), %edx
	movzbl	21(%esi), %ebp
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	movb	%dl, 21(%ecx)
	leal	22(%ecx), %edx
	movzbl	22(%esi), %ebp
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	movb	%dl, 22(%ecx)
	leal	23(%ecx), %edx
	movzbl	23(%esi), %ebp
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	movb	%dl, 23(%ecx)
	leal	28(%ecx), %edx
	movzwl	28(%esi), %ebp
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	32(%ecx), %edx
	subl	%edi, %edx
	movw	%bp, 28(%ecx)
	movzwl	32(%esi), %ebp
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	34(%ecx), %edx
	subl	%edi, %edx
	movw	%bp, 32(%ecx)
	movzwl	34(%esi), %ebp
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%ecx), %edx
	subl	%edi, %edx
	movw	%bp, 34(%ecx)
	movzwl	36(%esi), %ebp
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ecx), %edx
	subl	%edi, %edx
	movw	%bp, 36(%ecx)
	movzbl	16(%esi), %ebp
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	movb	%dl, 16(%ecx)
	leal	18(%ecx), %edx
	movzbl	18(%esi), %esi
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebx
	movl	%esi, %ebx
	movl	4(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	(%esp), %edx
	movb	%bl, 18(%ecx)
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ecx)
	addl	$8, %esp
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
LFE81:
	.p2align 4
	.def	__Z17ConnectCopySpritePK13uspritetypev7;	.scl	3;	.type	32;	.endef
__Z17ConnectCopySpritePK13uspritetypev7:
LFB82:
	.cfi_startproc
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	%ebx, 24(%esp)
	movswl	24(%eax), %edx
	.cfi_offset 3, -20
	leal	(%edx,%edx,4), %ebx
	movl	%edx, %ecx
	movl	_sector, %edx
	leal	(%edx,%ebx,8), %edx
	cmpw	$2356, 16(%edx)
	je	L1788
L1776:
	cmpw	$2356, 24(%edx)
	jne	L1779
	movl	8(%eax), %ebx
	movw	%cx, 22(%esp)
	leal	2560(%ebx), %ecx
	testb	$-128, 12(%eax)
	je	L1783
	movl	%ebp, 36(%esp)
	movl	%esi, 28(%esp)
	movl	%edi, 32(%esp)
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movswl	14(%eax), %esi
	movzbl	21(%eax), %ecx
	movswl	_tilesiz+2(,%esi,4), %edi
	movl	%edi, %ebp
	cmpb	$64, %cl
	je	L1789
	movzbl	%cl, %edi
	movl	%ebp, %ecx
	imull	%edi, %ecx
	addl	%ecx, %ecx
L1782:
	movsbl	_picanm+2(%esi,%esi,4), %esi
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %ebp
	.cfi_restore 5
	sall	$8, %esi
	subl	%esi, %ecx
	movl	28(%esp), %esi
	.cfi_restore 6
	leal	2560(%ebx,%ecx), %ecx
L1783:
	cmpl	8(%edx), %ecx
	jg	L1790
L1779:
	movl	24(%esp), %ebx
	movl	$-1, %eax
	addl	$40, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1788:
	.cfi_restore_state
	movl	%esi, 28(%esp)
	movl	%edi, 32(%esp)
	movl	%ebp, 36(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	8(%eax), %edi
	movzbl	21(%eax), %esi
	movswl	14(%eax), %ebp
	movw	%cx, 22(%esp)
	movl	%edi, 16(%esp)
	movl	%esi, %ebx
	movswl	_tilesiz+2(,%ebp,4), %edi
	testb	$-128, 12(%eax)
	jne	L1791
	cmpb	$64, %bl
	je	L1792
	movzbl	%bl, %esi
	imull	%edi, %esi
	sall	$2, %esi
L1774:
	movl	16(%esp), %ebx
	subl	%esi, %ebx
	subl	$2560, %ebx
	cmpl	4(%edx), %ebx
	jl	L1793
L1787:
	movl	28(%esp), %esi
	.cfi_restore 6
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %ebp
	.cfi_restore 5
	jmp	L1776
	.p2align 4,,10
	.p2align 3
L1790:
	leal	22(%esp), %edx
	movl	%ecx, 8(%esp)
	movl	%edx, 12(%esp)
	movl	4(%eax), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 4(%esp)
	movl	(%eax), %edx
	movl	%edx, (%esp)
	call	_updatesectorz
	movswl	22(%esp), %edx
	testw	%dx, %dx
	js	L1779
	movl	16(%esp), %eax
	cmpw	24(%eax), %dx
	je	L1779
	movl	24(%esp), %ebx
	addl	$40, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z10CopySpritePK13uspritetypev7s
	.p2align 4,,10
	.p2align 3
L1791:
	.cfi_def_cfa_offset 44
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpb	$64, %bl
	je	L1794
	movzbl	%bl, %esi
	imull	%edi, %esi
	leal	(%esi,%esi), %ebx
L1771:
	movsbl	_picanm+2(%ebp,%ebp,4), %esi
	movl	%esi, %edi
	sall	$8, %edi
	leal	(%ebx,%edi), %esi
	movl	16(%esp), %ebx
	subl	%esi, %ebx
	subl	$2560, %ebx
	cmpl	4(%edx), %ebx
	jge	L1787
L1793:
	leal	22(%esp), %edx
	movl	%ebx, 8(%esp)
	movl	%edx, 12(%esp)
	movl	4(%eax), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 4(%esp)
	movl	(%eax), %edx
	movl	%edx, (%esp)
	call	_updatesectorz
	movl	16(%esp), %eax
	movswl	22(%esp), %edx
	movzwl	24(%eax), %ecx
	testw	%dx, %dx
	js	L1795
	cmpw	%cx, %dx
	je	L1796
	movl	28(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %ebp
	.cfi_restore 5
	movl	24(%esp), %ebx
	addl	$40, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z10CopySpritePK13uspritetypev7s
	.p2align 4,,10
	.p2align 3
L1789:
	.cfi_restore_state
	movl	%edi, %ecx
	sall	$7, %ecx
	jmp	L1782
	.p2align 4,,10
	.p2align 3
L1794:
	sall	$7, %edi
	movl	%edi, %ebx
	jmp	L1771
	.p2align 4,,10
	.p2align 3
L1792:
	movl	%edi, %esi
	sall	$8, %esi
	jmp	L1774
	.p2align 4,,10
	.p2align 3
L1795:
	movswl	%cx, %edx
	movl	28(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	32(%esp), %edi
	.cfi_restore 7
	leal	(%edx,%edx,4), %ebx
	movl	_sector, %edx
	movl	36(%esp), %ebp
	.cfi_restore 5
	leal	(%edx,%ebx,8), %edx
	jmp	L1776
L1796:
	.cfi_restore_state
	movswl	%cx, %edx
	movl	28(%esp), %esi
	.cfi_restore 6
	movl	32(%esp), %edi
	.cfi_restore 7
	imull	$40, %edx, %edx
	movl	36(%esp), %ebp
	.cfi_restore 5
	addl	_sector, %edx
	jmp	L1776
	.cfi_endproc
LFE82:
	.p2align 4
	.def	__Z13FAF_DrawRoomsiiiiis;	.scl	3;	.type	32;	.endef
__Z13FAF_DrawRoomsiiiiis:
LFB83:
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
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	_sprite, %eax
	movzwl	_headspritestat+104, %ebp
	movl	_sector, %ebx
	movl	%eax, 12(%esp)
	cmpw	$-1, %bp
	je	L1799
	movl	%edi, 16(%esp)
	movl	%edx, 20(%esp)
	movl	%ecx, 24(%esp)
	jmp	L1801
	.p2align 4,,10
	.p2align 3
L1804:
	movswl	24(%ecx), %eax
	leal	32(%ecx), %edx
	subl	12(%esp), %edx
	leal	(%eax,%eax,4), %eax
	movzwl	16(%ebx,%eax,8), %esi
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	24(%ecx), %eax
	movw	%si, 32(%ecx)
	movzwl	38(%ecx), %edi
	leal	(%eax,%eax,4), %esi
	movl	$-858993459, %eax
	leal	16(,%esi,8), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	28(%ecx), %edx
	subl	12(%esp), %edx
	movw	%di, 16(%ebx,%esi,8)
	movswl	24(%ecx), %eax
	leal	(%eax,%eax,4), %eax
	movzwl	12(%ebx,%eax,8), %esi
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	24(%ecx), %eax
	movw	%si, 28(%ecx)
	movzwl	34(%ecx), %edi
	leal	(%eax,%eax,4), %esi
	movl	$-858993459, %eax
	leal	12(,%esi,8), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	orw	%di, 12(%ebx,%esi,8)
	movswl	24(%ecx), %eax
	leal	(%eax,%eax,4), %ecx
	movl	$-858993459, %eax
	leal	12(,%ecx,8), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	andw	$-2, 12(%ebx,%ecx,8)
L1800:
	cmpw	$-1, %bp
	je	L1819
L1801:
	movswl	%bp, %ecx
	movzwl	_nextspritestat(%ecx,%ecx), %ebp
	imull	$44, %ecx, %ecx
	addl	12(%esp), %ecx
	movzbl	18(%ecx), %eax
	testb	%al, %al
	je	L1804
	cmpb	$1, %al
	jne	L1800
	movswl	24(%ecx), %eax
	leal	32(%ecx), %edx
	subl	12(%esp), %edx
	leal	(%eax,%eax,4), %eax
	movzwl	24(%ebx,%eax,8), %esi
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	24(%ecx), %eax
	movw	%si, 32(%ecx)
	movzwl	38(%ecx), %edi
	leal	(%eax,%eax,4), %esi
	movl	$-858993459, %eax
	leal	24(,%esi,8), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	28(%ecx), %edx
	subl	12(%esp), %edx
	movw	%di, 24(%ebx,%esi,8)
	movswl	24(%ecx), %eax
	leal	(%eax,%eax,4), %eax
	movzwl	14(%ebx,%eax,8), %esi
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	24(%ecx), %eax
	movw	%si, 28(%ecx)
	movzwl	34(%ecx), %edi
	leal	(%eax,%eax,4), %esi
	movl	$-858993459, %eax
	leal	14(,%esi,8), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	orw	%di, 14(%ebx,%esi,8)
	movswl	24(%ecx), %eax
	leal	(%eax,%eax,4), %ecx
	movl	$-858993459, %eax
	leal	14(,%ecx,8), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	andw	$-2, 14(%ebx,%ecx,8)
	cmpw	$-1, %bp
	jne	L1801
	.p2align 4
	.p2align 3
L1819:
	movl	16(%esp), %edi
	movl	20(%esp), %esi
	movl	24(%esp), %ecx
L1799:
	movswl	56(%esp), %eax
	movl	%esi, %edx
	movl	%eax, 8(%esp)
	movl	52(%esp), %eax
	movl	%eax, 4(%esp)
	movl	48(%esp), %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	_renderDrawRoomsQ16.isra.0
	movl	_sprite, %eax
	movzwl	_headspritestat+104, %ebx
	movl	_sector, %ebp
	movl	%eax, 16(%esp)
	cmpw	$-1, %bx
	je	L1797
	movw	%bx, 12(%esp)
	jmp	L1808
	.p2align 4,,10
	.p2align 3
L1820:
	movswl	24(%ecx), %eax
	movzwl	32(%ecx), %edi
	leal	(%eax,%eax,4), %esi
	movl	$-858993459, %eax
	leal	16(,%esi,8), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%di, 16(%ebp,%esi,8)
	movswl	24(%ecx), %eax
	movzwl	28(%ecx), %edi
	leal	(%eax,%eax,4), %esi
	movl	$-858993459, %eax
	leal	12(,%esi,8), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%di, 12(%ebp,%esi,8)
	movswl	24(%ecx), %eax
	leal	(%eax,%eax,4), %ecx
	movl	$-858993459, %eax
	leal	12(,%ecx,8), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	andw	$-2, 12(%ebp,%ecx,8)
L1807:
	cmpw	$-1, 12(%esp)
	je	L1797
L1808:
	movswl	12(%esp), %ecx
	movzwl	_nextspritestat(%ecx,%ecx), %eax
	imull	$44, %ecx, %ecx
	addl	16(%esp), %ecx
	movw	%ax, 12(%esp)
	movswl	24(%ecx), %eax
	movl	%eax, %edx
	sarl	$3, %eax
	andl	$7, %edx
	movzbl	_gotsector(%eax), %ebx
	movzbl	__ZL8pow2char.lto_priv.2(%edx), %edx
	andl	%edx, %ebx
	cmpb	%bl, %dl
	jne	L1810
	orb	$16, _gotpic+294
L1810:
	movzbl	18(%ecx), %eax
	testb	%al, %al
	je	L1820
	cmpb	$1, %al
	jne	L1807
	movswl	24(%ecx), %eax
	movzwl	32(%ecx), %edi
	leal	(%eax,%eax,4), %esi
	movl	$-858993459, %eax
	leal	24(,%esi,8), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%di, 24(%ebp,%esi,8)
	movswl	24(%ecx), %eax
	movzwl	28(%ecx), %edi
	leal	(%eax,%eax,4), %esi
	movl	$-858993459, %eax
	leal	14(,%esi,8), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%di, 14(%ebp,%esi,8)
	movswl	24(%ecx), %eax
	leal	(%eax,%eax,4), %ecx
	movl	$-858993459, %eax
	leal	14(,%ecx,8), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	andw	$-2, 14(%ebp,%ecx,8)
	cmpw	$-1, 12(%esp)
	jne	L1808
L1797:
	addl	$28, %esp
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
LFE83:
	.p2align 4
	.def	__Z10ResizeViewP12PLAYERstruct.part.0;	.scl	3;	.type	32;	.endef
__Z10ResizeViewP12PLAYERstruct.part.0:
LFB84:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	%ebx, (%esp)
	.cfi_offset 3, -16
	movl	%eax, %ebx
	movl	_dimensionmode, %eax
	leal	-5(%eax), %edx
	cmpl	$1, %edx
	jbe	L1828
	cmpl	$2, %eax
	je	L1828
	movl	_CONTROL_ButtonState+4, %edx
	xorl	%ecx, %ecx
	movl	_CONTROL_ButtonState, %eax
	movl	%edi, 8(%esp)
	.cfi_offset 7, -8
	movl	%ebx, %edi
	movl	%esi, 4(%esp)
	.cfi_offset 6, -12
	movl	%edx, %ebx
	andl	$128, %ebx
	orl	%ebx, %ecx
	jne	L1843
	movl	%edx, %ebx
	xorl	%ecx, %ecx
	andl	$256, %ebx
	orl	%ebx, %ecx
	jne	L1844
L1842:
	movl	4(%esp), %esi
	.cfi_restore 6
	movl	8(%esp), %edi
	.cfi_restore 7
L1821:
	movl	(%esp), %ebx
	addl	$12, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1828:
	.cfi_restore_state
	movl	_totalclock+8, %eax
	movl	_totalclock+12, %edx
	cmpl	__ZL12mapzoomclock.lto_priv.0+8, %eax
	sbbl	__ZL12mapzoomclock.lto_priv.0+12, %edx
	xorl	%eax, %eax
	addl	__ZL12mapzoomclock.lto_priv.0+8, %eax
	movl	%edx, %ecx
	adcl	__ZL12mapzoomclock.lto_priv.0+12, %edx
	xorw	%ax, %ax
	movl	%edx, __ZL12mapzoomclock.lto_priv.0
	movl	%eax, __ZL12mapzoomclock.lto_priv.0+8
	movzbl	_keystatus+12, %eax
	orb	_keystatus+74, %al
	movl	%edx, __ZL12mapzoomclock.lto_priv.0+12
	je	L1824
	leal	(%ecx,%ecx,2), %eax
	movl	_zoom, %edx
/APP
 # 1078 "source/sw/src/draw.cpp" 1
	imull %edx; shrdl $7, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_zoom, %edx
	subl	%eax, %edx
	movl	$48, %eax
	cmpl	%eax, %edx
	cmovl	%eax, %edx
	movl	%edx, _zoom
L1824:
	movzbl	_keystatus+13, %eax
	orb	_keystatus+78, %al
	je	L1825
	leal	(%ecx,%ecx,2), %eax
	movl	_zoom, %ecx
	movl	%ecx, %edx
/APP
 # 1081 "source/sw/src/draw.cpp" 1
	imull %edx; shrdl $7, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
	movl	$4096, %eax
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	%ecx, _zoom
L1825:
	cmpb	$0, _keystatus+1
	je	L1821
	movl	%ebx, %eax
	movl	(%esp), %ebx
	movb	$0, _keystatus+1
	movl	$3, _dimensionmode
	movb	$0, _ScrollMode2D
	addl	$12, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z15SetRedrawScreenP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1843:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	andb	$127, %dl
	movl	%eax, _CONTROL_ButtonState
	movl	%edi, %eax
	movl	%edx, _CONTROL_ButtonState+4
	movsbl	_gs+12, %edx
	movl	$1, __ZL13CONTROL_Flags.lto_priv.0+316
	addl	$1, %edx
	call	__Z9SetBorderP12PLAYERstructi
	movl	%edi, %eax
	call	__Z15SetRedrawScreenP12PLAYERstruct
	movl	_CONTROL_ButtonState+4, %edx
	xorl	%ecx, %ecx
	movl	_CONTROL_ButtonState, %eax
	movl	%edx, %ebx
	andl	$256, %ebx
	orl	%ebx, %ecx
	je	L1842
L1844:
	andb	$-2, %dh
	movl	%eax, _CONTROL_ButtonState
	movl	%edi, %eax
	movl	%edx, _CONTROL_ButtonState+4
	movsbl	_gs+12, %edx
	movl	$1, __ZL13CONTROL_Flags.lto_priv.0+324
	subl	$1, %edx
	call	__Z9SetBorderP12PLAYERstructi
	movl	4(%esp), %esi
	.cfi_restore 6
	movl	(%esp), %ebx
	movl	%edi, %eax
	movl	8(%esp), %edi
	.cfi_restore 7
	addl	$12, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z15SetRedrawScreenP12PLAYERstruct
	.cfi_endproc
LFE84:
	.p2align 4
	.globl	__Z8SetupEels
	.def	__Z8SetupEels;	.scl	2;	.type	32;	.endef
__Z8SetupEels:
LFB89:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$12, %esp
	.cfi_def_cfa_offset 24
	movswl	24(%esp), %esi
	imull	$44, %esi, %eax
	addl	_sprite, %eax
	testb	$16, 13(%eax)
	je	L1846
	movl	_User(,%esi,4), %ebx
	movl	%ebx, %eax
L1847:
	testl	%eax, %eax
	je	L1848
	movl	$0, 76(%eax)
	movl	$_s_EelRun, 24(%eax)
	movl	$_s_EelRun, 16(%eax)
	movswl	_s_EelRun, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L1848
	andl	$63, %eax
	movb	%al, 3(%edx)
L1848:
	movl	$_EelAttrib, 48(%ebx)
	movl	%esi, (%esp)
	movl	$1, 4(%esp)
	call	__Z15DoActorSetSpeedsh
	movl	$_s_EelDie, 28(%ebx)
	movl	$_sg_EelRun, 20(%ebx)
	movl	%esi, (%esp)
	movl	$_EelPersonality, 8(%esp)
	movl	$_EelActionSet, 4(%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	orl	$50331648, 68(%ebx)
	movl	%esi, (%esp)
	call	__Z9EelCommons
	andl	$2147483647, 68(%ebx)
	xorl	%eax, %eax
	movl	$2048, 112(%ebx)
	addl	$12, %esp
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
L1846:
	.cfi_restore_state
	movl	$_s_EelRun, %ecx
	movl	$3780, %edx
	movl	%esi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%eax, _User(,%esi,4)
	movl	%eax, %ebx
	movl	$40, %eax
	movw	%ax, 84(%ebx)
	movl	_User(,%esi,4), %eax
	jmp	L1847
	.cfi_endproc
LFE89:
	.p2align 4
	.def	__Z7NullEels;	.scl	3;	.type	32;	.endef
__Z7NullEels:
LFB91:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movswl	12(%esp), %ebx
	movl	_User(,%ebx,4), %eax
	testb	$32, 70(%eax)
	jne	L1862
L1857:
	movl	%ebx, (%esp)
	call	__Z17DoEelMatchPlayerZs
	movl	%ebx, (%esp)
	call	__Z19DoActorSectorDamages
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1862:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	__Z12DoActorSlides
	jmp	L1857
	.cfi_endproc
LFE91:
	.p2align 4
	.globl	__Z10DoEelDeaths
	.def	__Z10DoEelDeaths;	.scl	2;	.type	32;	.endef
__Z10DoEelDeaths:
LFB92:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	%esi, 24(%esp)
	.cfi_offset 6, -16
	movswl	40(%esp), %esi
	movl	%edi, 28(%esp)
	movl	%ebx, 20(%esp)
	.cfi_offset 7, -12
	.cfi_offset 3, -20
	movl	_User(,%esi,4), %ebx
	imull	$44, %esi, %edi
	addl	_sprite, %edi
	testb	$64, 68(%ebx)
	movl	%esi, (%esp)
	jne	L1882
	call	__Z17DoFindGroundPoints
	xorl	%eax, %eax
	movl	$8, %ecx
	movw	%ax, 98(%ebx)
	movl	_User(,%esi,4), %edx
	movl	68(%edx), %eax
	movw	%cx, 94(%edx)
	andl	$-33, %eax
	orl	$64, %eax
	movl	%eax, 68(%edx)
	movl	%esi, (%esp)
L1882:
	call	__Z6DoFalls
	testb	$32, 70(%ebx)
	jne	L1883
L1866:
	movswl	28(%edi), %eax
	movswl	32(%edi), %edx
	movswl	_sintable(%eax,%eax), %ecx
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %ecx
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	imull	%eax, %edx
	movswl	98(%ebx), %eax
	sarl	$14, %ecx
	movl	%eax, 8(%esp)
	movswl	96(%ebx), %eax
	movl	$0, (%esp)
	sarl	$14, %edx
	movl	%eax, 4(%esp)
	movl	%esi, %eax
	call	__Z11move_spritesiiiiiji
	movl	%eax, 264(%ebx)
	movl	%esi, (%esp)
	call	__Z17DoFindGroundPoints
	movl	8(%edi), %eax
	cmpl	%eax, 108(%ebx)
	jle	L1884
L1867:
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	xorl	%eax, %eax
	movl	28(%esp), %edi
	addl	$36, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1883:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z12DoActorSlides
	jmp	L1866
	.p2align 4,,10
	.p2align 3
L1884:
	movl	_randomseed, %eax
	movl	%ebp, 32(%esp)
	.cfi_offset 5, -8
	movl	_krandcount, %ebp
	andl	$-2097217, 68(%ebx)
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ecx
	movzwl	%cx, %ecx
	cmpl	$65535, %ecx
	je	L1868
	movl	%ecx, %eax
	sall	$14, %eax
	cmpl	$537936224, %eax
	ja	L1868
L1869:
	leal	2(%ebp), %eax
	movl	%eax, _krandcount
	leal	(%ecx,%ecx,4), %eax
	leal	1(%ecx,%eax,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1870
	sall	$14, %eax
	cmpl	$537936224, %eax
	ja	L1870
L1871:
	movl	40(%ebx), %eax
	movl	56(%eax), %edx
	movl	%esi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	32(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L1867
	.p2align 4,,10
	.p2align 3
L1868:
	.cfi_restore_state
	leal	12(%edi), %eax
	movl	$-1171354717, %edx
	subl	_sprite, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$4, 12(%edi)
	jmp	L1869
	.p2align 4,,10
	.p2align 3
L1870:
	leal	12(%edi), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$8, 12(%edi)
	jmp	L1871
	.cfi_endproc
LFE92:
	.p2align 4
	.globl	__Z9DoEelMoves
	.def	__Z9DoEelMoves;	.scl	2;	.type	32;	.endef
__Z9DoEelMoves:
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
	movswl	16(%esp), %ebx
	movl	_User(,%ebx,4), %esi
	movl	%ebx, %eax
	movl	200(%esi), %edx
	subl	_sprite, %edx
	sarl	$2, %edx
	imull	$-1171354717, %edx, %edx
	movswl	%dx, %edx
	call	__Z13SpriteOverlapss
	testb	%al, %al
	jne	L1897
L1886:
	testb	$32, 70(%esi)
	jne	L1898
L1887:
	cmpw	$0, 218(%esi)
	jns	L1899
	movl	%ebx, (%esp)
	call	*36(%esi)
L1889:
	movl	%ebx, (%esp)
	call	__Z17DoEelMatchPlayerZs
	movl	%ebx, (%esp)
	call	__Z19DoActorSectorDamages
	addl	$4, %esp
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
	.p2align 4,,10
	.p2align 3
L1899:
	.cfi_restore_state
	movl	%ebx, %eax
	call	__Z16ActorFollowTrackss.constprop.0.isra.0
	jmp	L1889
	.p2align 4,,10
	.p2align 3
L1898:
	movl	%ebx, (%esp)
	call	__Z12DoActorSlides
	jmp	L1887
	.p2align 4,,10
	.p2align 3
L1897:
	movl	40(%esi), %eax
	movl	68(%eax), %edx
	movl	%ebx, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	jmp	L1886
	.cfi_endproc
LFE94:
	.p2align 4
	.def	__Z10CameraViewP12PLAYERstructPiS1_S1_PsS1_S1_;	.scl	3;	.type	32;	.endef
__Z10CameraViewP12PLAYERstructPiS1_S1_PsS1_S1_:
LFB95:
	.cfi_startproc
	subl	$72, %esp
	.cfi_def_cfa_offset 76
	movl	%edi, 64(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	movswl	_screenpeek, %eax
	movl	%ecx, 20(%esp)
	imull	$24124, %eax, %eax
	addl	$_Player, %eax
	cmpl	%eax, %edi
	je	L1941
L1901:
	movl	$12000, 172(%edi)
	xorl	%eax, %eax
	movw	%ax, 264(%edi)
	movl	22968(%edi), %eax
	andl	$-268435457, %eax
	movl	%eax, 22968(%edi)
	movl	64(%esp), %edi
	addl	$72, %esp
	.cfi_remember_state
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1941:
	.cfi_restore_state
	movswl	_headspritestat+118, %eax
	movl	%ebp, 68(%esp)
	.cfi_offset 5, -8
	movl	%edx, %ebp
	cmpl	$-1, %eax
	je	L1939
	movl	%ebx, 56(%esp)
	movl	%esi, 60(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
L1902:
	movzwl	_nextspritestat(%eax,%eax), %esi
	movl	0(%ebp), %ecx
	movw	%si, 36(%esp)
	imull	$44, %eax, %esi
	movl	20(%esp), %eax
	addl	_sprite, %esi
	movl	(%eax), %edx
	subl	(%esi), %ecx
	subl	4(%esi), %edx
	call	@getangle@8
	movl	%eax, %ebx
	movl	%eax, 24(%esp)
	movswl	28(%esi), %eax
	movw	%ax, 32(%esp)
	subl	%ebx, %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	cmpl	$1024, %eax
	jg	L1915
	movw	%bx, 34(%esp)
L1916:
	movzwl	38(%esi), %eax
	movswl	268(%edi), %ebx
	movl	8(%esi), %ecx
	movl	4(%esi), %edx
	movw	%ax, 28(%esp)
	movl	(%esi), %eax
	movl	%ebx, 16(%esp)
	movl	76(%esp), %ebx
	movl	(%ebx), %ebx
	movl	%ebx, 12(%esp)
	movl	20(%esp), %ebx
	movl	(%ebx), %ebx
	movl	%ebx, 8(%esp)
	movl	0(%ebp), %ebx
	movl	%ebx, 4(%esp)
	movswl	24(%esi), %ebx
	movl	%ebx, (%esp)
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	jne	L1919
	movl	76(%esp), %eax
	movswl	268(%edi), %edx
	movl	(%eax), %ebx
	movl	352(%edi), %eax
	movzbl	21(%eax), %ecx
	movswl	14(%eax), %eax
	movswl	_tilesiz+2(,%eax,4), %eax
	cmpb	$64, %cl
	je	L1942
	imull	%eax, %ecx
	leal	0(,%ecx,4), %eax
	movl	%eax, 40(%esp)
L1904:
	movl	4(%esi), %eax
	movl	8(%esi), %ecx
	movl	%eax, 44(%esp)
	movl	(%esi), %eax
	movl	%edx, 16(%esp)
	movl	44(%esp), %edx
	movl	%eax, 48(%esp)
	movl	40(%esp), %eax
	addl	%ebx, %eax
	movl	20(%esp), %ebx
	movl	%eax, 12(%esp)
	movl	(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	0(%ebp), %eax
	movl	%eax, 4(%esp)
	movswl	24(%esi), %eax
	movl	%eax, (%esp)
	movl	48(%esp), %eax
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	je	L1905
L1919:
	movzwl	32(%esp), %eax
	subw	34(%esp), %ax
	cmpw	%ax, 28(%esp)
	jg	L1922
L1905:
	cmpw	$0, 266(%edi)
	jle	L1907
	cmpl	%esi, 164(%edi)
	je	L1943
L1907:
	movswl	36(%esp), %eax
	cmpw	$-1, %ax
	jne	L1902
	movl	56(%esp), %ebx
	.cfi_restore 3
	movl	60(%esp), %esi
	.cfi_restore 6
L1939:
	movl	68(%esp), %ebp
	.cfi_restore 5
	jmp	L1901
	.p2align 4,,10
	.p2align 3
L1915:
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movzwl	32(%esp), %ecx
	movl	24(%esp), %ebx
	cmpw	$1025, %cx
	leal	2048(%ecx), %eax
	cmovge	%ecx, %eax
	cmpl	$1025, %ebx
	movw	%ax, 32(%esp)
	leal	2048(%ebx), %eax
	cmovge	%ebx, %eax
	movw	%ax, 34(%esp)
	jmp	L1916
	.p2align 4,,10
	.p2align 3
L1943:
	movb	$0, 32(%esp)
L1906:
	cmpb	$1, 18(%esi)
	movl	%esi, 164(%edi)
	je	L1944
	movl	24(%esp), %eax
	movl	76(%esp), %ecx
	movl	(%esi), %ebx
	movl	0(%ebp), %edx
	addl	$512, %eax
	andl	$2047, %eax
	movl	%edx, 36(%esp)
	movzwl	_sintable(%eax,%eax), %eax
	sarw	$3, %ax
	movw	%ax, 34(%esp)
	movl	8(%esi), %eax
	subl	(%ecx), %eax
	movl	%eax, 28(%esp)
	movl	%ebx, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	negl	%edx
	cmovs	%eax, %edx
	cmpl	$1000, %edx
	jg	L1940
	movswl	24(%esp), %edx
	movl	20(%esp), %ecx
	movzwl	_sintable(%edx,%edx), %edx
	movl	(%ecx), %ecx
	sarw	$3, %dx
	movl	%ecx, 48(%esp)
	movw	%dx, 40(%esp)
	movl	4(%esi), %edx
	movl	%edx, 52(%esp)
	subl	%ecx, %edx
	movl	%edx, %ecx
	movl	%edx, 44(%esp)
	negl	%edx
	cmovs	%ecx, %edx
	cmpl	$1000, %edx
	jg	L1945
	cmpl	%ebx, 36(%esp)
	jne	L1940
	movl	52(%esp), %ecx
	movl	$6553600, %eax
	cmpl	%ecx, 48(%esp)
	je	L1912
	movl	44(%esp), %eax
	movl	%eax, 8(%esp)
	cltd
L1938:
	movl	%edx, 12(%esp)
	movswl	40(%esp), %eax
	jmp	L1937
	.p2align 4,,10
	.p2align 3
L1940:
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movswl	34(%esp), %eax
L1937:
	imull	28(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	%eax, %edx
	leal	255(%eax), %eax
	testl	%edx, %edx
	cmovns	%edx, %eax
	movl	$-6488064, %edx
	sarl	$8, %eax
	negl	%eax
	addl	$100, %eax
	sall	$16, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	$19595264, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
L1912:
	movl	88(%esp), %edx
	movl	84(%esp), %ecx
	movl	%eax, (%edx)
	movl	24(%esp), %eax
	sall	$16, %eax
	movl	%eax, (%ecx)
	movl	(%esi), %eax
	movl	20(%esp), %ecx
	movl	%eax, 0(%ebp)
	movl	4(%esi), %eax
	movl	%eax, (%ecx)
	movl	76(%esp), %ecx
	movl	8(%esi), %eax
	movl	%eax, (%ecx)
	movzwl	24(%esi), %eax
	movl	80(%esp), %esi
	movw	%ax, (%esi)
	cmpb	$0, 32(%esp)
	je	L1910
L1909:
	movl	$60, %edx
	movw	%dx, 266(%edi)
L1910:
	movl	22968(%edi), %eax
	movl	56(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	60(%esp), %esi
	.cfi_restore 6
	movl	68(%esp), %ebp
	.cfi_restore 5
	orl	$268435456, %eax
	movl	%eax, 22968(%edi)
	movl	64(%esp), %edi
	addl	$72, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1942:
	.cfi_restore_state
	sall	$8, %eax
	movl	%eax, 40(%esp)
	jmp	L1904
	.p2align 4,,10
	.p2align 3
L1944:
	movl	84(%esp), %eax
	movl	76(%esp), %ecx
	movl	20(%esp), %edx
	movl	%eax, 4(%esp)
	movl	80(%esp), %eax
	movl	%eax, (%esp)
	movl	%ebp, %eax
	call	__Z12CircleCameraPiS_S_PsS_s.constprop.0
	cmpb	$0, 32(%esp)
	jne	L1909
	jmp	L1910
	.p2align 4,,10
	.p2align 3
L1945:
	movl	%ecx, %edx
	movl	%ecx, 8(%esp)
	sarl	$31, %edx
	jmp	L1938
	.p2align 4,,10
	.p2align 3
L1922:
	movb	$1, 32(%esp)
	jmp	L1906
	.cfi_endproc
LFE95:
	.p2align 4
	.globl	__ZL16DemoWritePacketsPK9SW_PACKETiP6_iobuf.constprop.0
	.def	__ZL16DemoWritePacketsPK9SW_PACKETiP6_iobuf.constprop.0;	.scl	2;	.type	32;	.endef
__ZL16DemoWritePacketsPK9SW_PACKETiP6_iobuf.constprop.0:
LFB98:
	.cfi_startproc
	testl	%eax, %eax
	jle	L1957
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	leal	(%eax,%eax,2), %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	leal	_DemoBuffer(,%eax,8), %esi
	pushl	%ebx
	.cfi_offset 3, -20
	movl	$_DemoBuffer, %ebx
	andl	$-16, %esp
	subl	$80, %esp
	movl	%edx, 32(%esp)
	jmp	L1952
	.p2align 4,,10
	.p2align 3
L1948:
	movl	%edx, 36(%esp)
	cltd
	xorw	%dx, %dx
	movl	$1, 8(%esp)
	leal	32768(%edx,%eax), %edx
	movl	$10, 4(%esp)
	testl	%edx, %edx
	leal	65535(%edx), %eax
	movl	%edi, 42(%esp)
	cmovns	%edx, %eax
	sarl	$16, %eax
	movb	%al, 40(%esp)
	movl	%ecx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%eax,%ecx), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	addl	$24, %ebx
	sarl	$16, %eax
	movb	%al, 41(%esp)
	movl	32(%esp), %eax
	movl	%eax, 12(%esp)
	leal	36(%esp), %eax
	movl	%eax, (%esp)
	call	_fwrite
	cmpl	%esi, %ebx
	je	L1960
L1952:
	movl	(%ebx), %edx
	movl	4(%ebx), %eax
	movl	8(%ebx), %ecx
	movl	20(%ebx), %edi
	cmpb	$0, __ZL15DemoOutExtended.lto_priv.0
	je	L1948
	movl	%eax, 28(%esp)
	movl	32(%esp), %eax
	addl	$24, %ebx
	movss	-12(%ebx), %xmm1
	movss	-8(%ebx), %xmm2
	movl	$1, 8(%esp)
	movss	28(%esp), %xmm0
	movl	%eax, 12(%esp)
	leal	48(%esp), %eax
	movl	%ecx, 28(%esp)
	movss	28(%esp), %xmm3
	unpcklps	%xmm2, %xmm1
	movl	$24, 4(%esp)
	movl	%eax, (%esp)
	unpcklps	%xmm3, %xmm0
	movlhps	%xmm1, %xmm0
	movl	%edx, 48(%esp)
	movl	%edi, 68(%esp)
	movups	%xmm0, 52(%esp)
	call	_fwrite
	cmpl	%esi, %ebx
	jne	L1952
L1960:
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
	.p2align 4,,10
	.p2align 3
L1957:
	ret
	.cfi_endproc
LFE98:
	.p2align 4
	.globl	__ZL15DemoReadPacketsP9SW_PACKETii.constprop.0
	.def	__ZL15DemoReadPacketsP9SW_PACKETii.constprop.0;	.scl	2;	.type	32;	.endef
__ZL15DemoReadPacketsP9SW_PACKETii.constprop.0:
LFB100:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	$2048, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$_DemoBuffer, %ebx
	subl	$48, %esp
	.cfi_def_cfa_offset 64
L1966:
	cmpb	$0, _DemoExtendedFormat
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	je	L1962
	movl	$24, %ecx
	leal	24(%esp), %edx
	movl	%edi, %eax
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$24, %eax
	je	L1963
	leal	(%esi,%esi,2), %eax
	movl	%ebx, (%esp)
	sall	$3, %eax
	movl	$-1, 4(%esp)
	movl	%eax, 8(%esp)
	call	_memset
	addl	$48, %esp
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
L1962:
	.cfi_restore_state
	movl	$10, %ecx
	leal	14(%esp), %edx
	movl	%edi, %eax
	call	__Z14kread_internaliPviPKhPKiPi
	movzwl	14(%esp), %eax
	movw	%ax, (%ebx)
	movzwl	16(%esp), %eax
	movw	%ax, 2(%ebx)
	movsbl	18(%esp), %eax
	sall	$16, %eax
	movl	%eax, 4(%ebx)
	movsbl	19(%esp), %eax
	sall	$16, %eax
	movl	%eax, 8(%ebx)
	movl	20(%esp), %eax
L1965:
	movl	%eax, 20(%ebx)
	addl	$24, %ebx
	subl	$1, %esi
	cmpl	$_DemoBuffer+49152, %ebx
	jne	L1966
	addl	$48, %esp
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
L1963:
	.cfi_restore_state
	movzwl	24(%esp), %eax
	movw	%ax, (%ebx)
	movzwl	26(%esp), %eax
	movw	%ax, 2(%ebx)
	movl	28(%esp), %eax
	movl	%eax, 4(%ebx)
	movl	32(%esp), %eax
	movl	%eax, 8(%ebx)
	movl	36(%esp), %eax
	movl	%eax, 12(%ebx)
	movl	40(%esp), %eax
	movl	%eax, 16(%ebx)
	movl	44(%esp), %eax
	jmp	L1965
	.cfi_endproc
LFE100:
	.section .rdata,"dr"
LC5:
	.ascii "ab\0"
	.text
	.p2align 4
	.globl	__Z8DemoTermv
	.def	__Z8DemoTermv;	.scl	2;	.type	32;	.endef
__Z8DemoTermv:
LFB101:
	.cfi_startproc
	subl	$64, %esp
	.cfi_def_cfa_offset 68
	cmpb	$0, _DemoRecording
	je	L1970
	movl	_DemoFileOut, %edx
	testl	%edx, %edx
	je	L2006
	movl	%ebx, 48(%esp)
	movl	%esi, 52(%esp)
	movl	%edi, 56(%esp)
	cmpb	$0, _DemoDebugMode
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	jne	L2007
	movl	_DemoRecCnt, %eax
	cmpl	$2047, %eax
	jle	L2008
L1974:
	movl	$2048, %eax
	call	__ZL16DemoWritePacketsPK9SW_PACKETiP6_iobuf.constprop.0
	movl	$49152, 8(%esp)
	movl	$-1, 4(%esp)
	movl	$_DemoBuffer, (%esp)
	call	_memset
	movl	_DemoFileOut, %edx
L1973:
	movl	$-1, _DemoBuffer
	movl	$1, %eax
	movl	$-1, _DemoBuffer+4
	movl	$-1, _DemoBuffer+8
	movl	$-1, _DemoBuffer+12
	movl	$-1, _DemoBuffer+16
	movl	$-1, _DemoBuffer+20
	call	__ZL16DemoWritePacketsPK9SW_PACKETiP6_iobuf.constprop.0
	call	__Z26DemoAutoRecordSyncMetadatav
	cmpb	$0, __ZL15DemoOutExtended.lto_priv.0
	jne	L2009
L1975:
	movl	__ZL11DemoOutChat.lto_priv.0, %edi
	movl	__ZL11DemoOutChat.lto_priv.0+4, %esi
	movl	%edi, %ebx
	cmpl	%esi, %edi
	je	L2005
	.p2align 4
	.p2align 3
L1981:
	movl	4(%ebx), %eax
	leal	12(%ebx), %edx
	cmpl	%edx, %eax
	je	L1982
	call	_mi_free
L1982:
	addl	$28, %ebx
	cmpl	%ebx, %esi
	jne	L1981
	movl	%edi, __ZL11DemoOutChat.lto_priv.0+4
L2005:
	movl	_DemoFileOut, %esi
L1978:
	movl	%esi, (%esp)
	call	_fclose
	movl	$0, _DemoFileOut
	cmpb	$0, __ZL17DemoAutoRecording.lto_priv.0
	jne	L2010
L1983:
	movl	48(%esp), %ebx
	.cfi_restore 3
	movl	52(%esp), %esi
	.cfi_restore 6
	movb	$0, __ZL15DemoOutExtended.lto_priv.0
	movb	$0, _DemoRecording
	movl	56(%esp), %edi
	.cfi_restore 7
L1970:
	cmpb	$0, _DemoPlaying
	je	L1984
	movl	_DemoFileIn, %eax
	cmpl	$-1, %eax
	je	L1969
	call	_kclose
	movl	$-1, _DemoFileIn
L1984:
	movzbl	_DemoSyncTest, %eax
	orb	_DemoSyncRecord, %al
	je	L1986
	movl	_DemoSyncFile, %eax
	testl	%eax, %eax
	je	L1969
	movl	%eax, (%esp)
	call	_fclose
	movl	$0, _DemoSyncFile
L1986:
	movb	$0, _DemoRecording
L1969:
	addl	$64, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2006:
	.cfi_restore_state
	movb	$0, _DemoRecording
	movb	$0, __ZL17DemoAutoRecording.lto_priv.0
	movb	$0, __ZL15DemoOutExtended.lto_priv.0
	jmp	L1970
	.p2align 4,,10
	.p2align 3
L2008:
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	leal	(%eax,%eax,2), %ecx
	movl	$-1, _DemoBuffer(,%ecx,8)
	movl	$-1, _DemoBuffer+4(,%ecx,8)
	movl	$-1, _DemoBuffer+8(,%ecx,8)
	movl	$-1, _DemoBuffer+12(,%ecx,8)
	movl	$-1, _DemoBuffer+16(,%ecx,8)
	movl	$-1, _DemoBuffer+20(,%ecx,8)
	jmp	L1974
	.p2align 4,,10
	.p2align 3
L2007:
	movl	$LC5, 4(%esp)
	movl	$_DemoFileName, (%esp)
	call	_fopen
	movl	%eax, _DemoFileOut
	movl	%eax, %edx
	jmp	L1973
	.p2align 4,,10
	.p2align 3
L2010:
	call	__ZL20DemoAutoRecordFinishv.lto_priv.0
	movb	$0, __ZL17DemoAutoRecording.lto_priv.0
	jmp	L1983
	.p2align 4,,10
	.p2align 3
L2009:
	movl	__ZL11DemoOutChat.lto_priv.0+4, %ebx
	movl	__ZL11DemoOutChat.lto_priv.0, %eax
	movl	_DemoFileOut, %esi
	cmpl	%eax, %ebx
	je	L1978
	subl	%eax, %ebx
	movl	$4, %edx
	addl	$8, %eax
	xorl	%ecx, %ecx
	sarl	$2, %ebx
	imull	$-1227133513, %ebx, %ebx
	.p2align 4
	.p2align 4
	.p2align 3
L1977:
	movl	(%eax), %edi
	addl	$1, %ecx
	addl	$28, %eax
	leal	6(%edx,%edi), %edx
	cmpl	%ebx, %ecx
	jb	L1977
	leal	28(%esp), %eax
	movl	%esi, 12(%esp)
	movl	$1, 8(%esp)
	movl	$8, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 32(%esp)
	movl	%edx, 16(%esp)
	movl	$1413564483, 28(%esp)
	call	_fwrite
	movl	__ZL11DemoOutChat.lto_priv.0+4, %eax
	subl	__ZL11DemoOutChat.lto_priv.0, %eax
	movl	%esi, 12(%esp)
	sarl	$2, %eax
	movl	$1, 8(%esp)
	imull	$-1227133513, %eax, %eax
	movl	$4, 4(%esp)
	movl	%eax, 24(%esp)
	leal	24(%esp), %eax
	movl	%eax, (%esp)
	call	_fwrite
	movl	__ZL11DemoOutChat.lto_priv.0, %eax
	cmpl	%eax, __ZL11DemoOutChat.lto_priv.0+4
	leal	36(%esp), %ecx
	movl	16(%esp), %edx
	je	L1979
	movl	%edx, 16(%esp)
	leal	36(%esp), %ebx
	movl	%ebp, 60(%esp)
	.cfi_offset 5, -8
	xorl	%ebp, %ebp
	.p2align 4
	.p2align 3
L1980:
	imull	$28, %ebp, %edi
	addl	$1, %ebp
	addl	%edi, %eax
	movl	(%eax), %ecx
	movl	%ecx, 36(%esp)
	movl	8(%eax), %eax
	movl	%esi, 12(%esp)
	movl	$1, 8(%esp)
	movl	$4, 4(%esp)
	movl	%ebx, (%esp)
	movw	%ax, 22(%esp)
	call	_fwrite
	leal	22(%esp), %eax
	movl	%esi, 12(%esp)
	movl	$1, 8(%esp)
	movl	$2, 4(%esp)
	movl	%eax, (%esp)
	call	_fwrite
	addl	__ZL11DemoOutChat.lto_priv.0, %edi
	movl	%esi, 12(%esp)
	movl	8(%edi), %eax
	movl	$1, 4(%esp)
	movl	%eax, 8(%esp)
	movl	4(%edi), %eax
	movl	%eax, (%esp)
	call	_fwrite
	movl	__ZL11DemoOutChat.lto_priv.0, %eax
	movl	__ZL11DemoOutChat.lto_priv.0+4, %edx
	subl	%eax, %edx
	sarl	$2, %edx
	imull	$-1227133513, %edx, %edx
	cmpl	%edx, %ebp
	jb	L1980
	movl	16(%esp), %edx
	movl	60(%esp), %ebp
	.cfi_restore 5
	movl	%ebx, %ecx
L1979:
	movl	%esi, 12(%esp)
	addl	$8, %edx
	movl	$1, 8(%esp)
	movl	$12, 4(%esp)
	movl	%ecx, (%esp)
	movl	%edx, 36(%esp)
	movl	$1330795851, 40(%esp)
	movl	$440684101, 44(%esp)
	call	_fwrite
	jmp	L1975
	.cfi_endproc
LFE101:
	.section .rdata,"dr"
LC6:
	.ascii "basic_string::append\0"
	.section	.text.unlikely,"x"
LCOLDB7:
	.text
LHOTB7:
	.p2align 4
	.globl	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.isra.0
	.def	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.isra.0;	.scl	2;	.type	32;	.endef
__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.isra.0:
LFB106:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%ecx, %ebp
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$2147483646, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, (%esp)
	call	_strlen
	movb	$0, 8(%ebx)
	movl	%ebx, %ecx
	movl	%eax, %edi
	leal	8(%ebx), %eax
	movl	$0, 4(%ebx)
	movl	%eax, (%ebx)
	leal	(%edi,%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEj
	.cfi_def_cfa_offset 28
	movl	%esi, %eax
	subl	4(%ebx), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	cmpl	%ebp, %eax
	jb	L2013
	movl	8(%esp), %edx
	movl	%ebp, 4(%esp)
	movl	%ebx, %ecx
	movl	%edx, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj
	.cfi_def_cfa_offset 24
	subl	4(%ebx), %esi
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	cmpl	%edi, %esi
	jb	L2013
	movl	32(%esp), %eax
	movl	%edi, 4(%esp)
	movl	%ebx, %ecx
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj
	.cfi_def_cfa_offset 24
	movl	%ebx, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 32
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
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.isra.0.cold;	.scl	3;	.type	32;	.endef
__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.isra.0.cold:
LFSB106:
L2013:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$LC6, (%esp)
	call	__ZSt20__throw_length_errorPKc
	.cfi_endproc
LFE106:
	.text
	.section	.text.unlikely,"x"
LCOLDE7:
	.text
LHOTE7:
	.align 2
	.p2align 4
	.globl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0;	.scl	2;	.type	32;	.endef
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0:
LFB111:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	32(%esp), %edx
	subl	28(%esp), %edx
	movl	%edx, 20(%esp)
	cmpl	$15, %edx
	ja	L2026
	movl	(%ecx), %eax
	cmpl	$1, %edx
	jne	L2019
	movl	28(%esp), %edx
	movzbl	(%edx), %edx
	movb	%dl, (%eax)
	movl	20(%esp), %edx
	movl	(%ecx), %eax
	movb	$0, (%eax,%edx)
	movl	%edx, 4(%ecx)
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret	$8
	.p2align 4,,10
	.p2align 3
L2019:
	.cfi_restore_state
	testl	%edx, %edx
	jne	L2018
	movb	$0, (%eax,%edx)
	movl	%edx, 4(%ecx)
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret	$8
	.p2align 4,,10
	.p2align 3
L2026:
	.cfi_restore_state
	leal	20(%esp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERjj
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	12(%esp), %ecx
	movl	20(%esp), %edx
	movl	%eax, (%ecx)
	movl	%edx, 8(%ecx)
	movl	16(%esp), %edx
L2018:
	movl	%ecx, 12(%esp)
	movl	28(%esp), %ecx
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movl	12(%esp), %ecx
	movl	20(%esp), %edx
	movl	(%ecx), %eax
	movb	$0, (%eax,%edx)
	movl	%edx, 4(%ecx)
	addl	$24, %esp
	.cfi_def_cfa_offset 4
	ret	$8
	.cfi_endproc
LFE111:
	.section .rdata,"dr"
LC8:
	.ascii "vector::_M_realloc_append\0"
	.section	.text.unlikely,"x"
	.align 2
LCOLDB9:
	.text
LHOTB9:
	.align 2
	.p2align 4
	.globl	__ZNSt6vectorI13DemoChatEntrySaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_
	.def	__ZNSt6vectorI13DemoChatEntrySaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_;	.scl	2;	.type	32;	.endef
__ZNSt6vectorI13DemoChatEntrySaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_:
LFB113:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%ecx, %eax
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
	movl	4(%eax), %esi
	movl	%ecx, 24(%esp)
	movl	(%ecx), %ecx
	movl	%esi, %ebx
	movl	60(%esp), %edi
	subl	%ecx, %ebx
	movl	%ecx, 16(%esp)
	movl	%ebx, %edx
	sarl	$2, %edx
	imull	$-1227133513, %edx, %edx
	cmpl	$76695844, %edx
	je	L2057
	testl	%edx, %edx
	movl	$1, %eax
	cmovne	%edx, %eax
	addl	%edx, %eax
	movl	$76695844, %edx
	cmpl	%edx, %eax
	cmova	%edx, %eax
	movl	%fs:44, %edx
	imull	$28, %eax, %ecx
	movl	__tls_index, %eax
	movl	(%edx,%eax,4), %eax
	movl	%ecx, 20(%esp)
	movl	__mi_heap_default@secrel32(%eax), %ebp
	cmpl	$512, %ecx
	ja	L2029
	movl	184(%ebp,%ecx), %eax
	movl	8(%eax), %edx
	testl	%edx, %edx
	je	L2029
	movl	(%edx), %ecx
	addw	$1, 16(%eax)
	movl	%ecx, 8(%eax)
L2032:
	movl	(%edi), %eax
	leal	4(%edx,%ebx), %ecx
	movl	%edx, 8(%esp)
	movl	%eax, (%edx,%ebx)
	leal	12(%edx,%ebx), %eax
	movl	%eax, 4(%edx,%ebx)
	movl	8(%edi), %eax
	movl	%eax, 4(%esp)
	movl	4(%edi), %eax
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructILb1EEEvPKcj
	.cfi_def_cfa_offset 52
	subl	$8, %esp
	.cfi_def_cfa_offset 60
	movl	16(%esp), %edi
	movl	8(%esp), %edx
	cmpl	%esi, %edi
	movl	%edx, %ebp
	je	L2033
	movl	%esi, 8(%esp)
	movl	%edx, 28(%esp)
	jmp	L2043
	.p2align 6
	.p2align 4,,10
	.p2align 3
L2034:
	movl	%eax, 4(%ebp)
	movl	12(%edi), %eax
	movl	%eax, 12(%ebp)
L2061:
	movl	8(%edi), %edx
L2042:
	movl	%edx, 8(%ebp)
	addl	$28, %edi
	addl	$28, %ebp
	cmpl	%edi, 8(%esp)
	je	L2062
L2043:
	movl	(%edi), %eax
	leal	12(%ebp), %ebx
	leal	12(%edi), %edx
	movl	%ebx, 4(%ebp)
	movl	%eax, 0(%ebp)
	movl	4(%edi), %eax
	cmpl	%edx, %eax
	jne	L2034
	movl	8(%edi), %edx
	leal	1(%edx), %esi
	movl	%esi, 12(%esp)
	cmpl	$16, %esi
	jnb	L2035
	andl	$8, %esi
	jne	L2063
	testb	$4, 12(%esp)
	jne	L2064
	movl	12(%esp), %ecx
	testl	%ecx, %ecx
	je	L2042
	movzbl	(%eax), %edx
	andl	$2, %ecx
	movb	%dl, (%ebx)
	je	L2061
	movl	12(%esp), %ecx
	movzwl	-2(%eax,%ecx), %eax
	movw	%ax, -2(%ebx,%ecx)
	movl	8(%edi), %edx
	jmp	L2042
	.p2align 4,,10
	.p2align 3
L2062:
	movl	28(%esp), %edx
L2033:
	movl	16(%esp), %eax
	addl	$28, %ebp
	testl	%eax, %eax
	je	L2044
	movl	%edx, 8(%esp)
	call	_mi_free
	movl	8(%esp), %edx
L2044:
	movl	24(%esp), %eax
	movl	%edx, (%eax)
	addl	20(%esp), %edx
	movl	%ebp, 4(%eax)
	movl	%edx, 8(%eax)
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
	ret	$4
	.p2align 4,,10
	.p2align 3
L2035:
	.cfi_restore_state
	movl	12(%esp), %esi
	movl	-16(%eax,%esi), %ecx
	movl	%ecx, -16(%ebx,%esi)
	movl	-12(%eax,%esi), %ecx
	movl	%ecx, -12(%ebx,%esi)
	movl	-8(%eax,%esi), %ecx
	movl	%ecx, -8(%ebx,%esi)
	movl	-4(%eax,%esi), %ecx
	movl	%ecx, -4(%ebx,%esi)
	cmpl	$16, %edx
	jb	L2061
	movl	%edi, 32(%esp)
	andl	$-16, %edx
	movl	%ebp, 36(%esp)
	movl	%edx, 12(%esp)
	xorl	%edx, %edx
L2040:
	movl	4(%eax,%edx), %edi
	movl	8(%eax,%edx), %esi
	movl	12(%eax,%edx), %ecx
	movl	(%eax,%edx), %ebp
	movl	%edi, 4(%ebx,%edx)
	movl	%ebp, (%ebx,%edx)
	movl	%esi, 8(%ebx,%edx)
	movl	%ecx, 12(%ebx,%edx)
	addl	$16, %edx
	cmpl	12(%esp), %edx
	jb	L2040
	movl	32(%esp), %edi
	movl	36(%esp), %ebp
	movl	8(%edi), %edx
	jmp	L2042
	.p2align 4,,10
	.p2align 3
L2029:
	movl	$0, (%esp)
	movl	20(%esp), %edx
	xorl	%ecx, %ecx
	movl	%ebp, %eax
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	movl	%eax, %edx
	testl	%eax, %eax
	jne	L2032
	movl	20(%esp), %edx
	xorl	%ecx, %ecx
	movl	%ebp, %eax
	call	__Z15mi_heap_try_newP9mi_heap_sjb
	movl	%eax, %edx
	jmp	L2032
L2063:
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, (%ebx)
	movl	%ecx, 4(%ebx)
	movl	12(%esp), %ecx
	movl	-4(%eax,%ecx), %edx
	movl	-8(%eax,%ecx), %eax
	movl	%edx, -4(%ebx,%ecx)
	movl	%eax, -8(%ebx,%ecx)
	movl	8(%edi), %edx
	jmp	L2042
L2064:
	movl	(%eax), %edx
	movl	%edx, (%ebx)
	movl	12(%esp), %ecx
	movl	-4(%eax,%ecx), %eax
	movl	%eax, -4(%ebx,%ecx)
	movl	8(%edi), %edx
	jmp	L2042
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__ZNSt6vectorI13DemoChatEntrySaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_.cold;	.scl	3;	.type	32;	.endef
__ZNSt6vectorI13DemoChatEntrySaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_.cold:
LFSB113:
L2057:
	.cfi_def_cfa_offset 60
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$LC8, (%esp)
	call	__ZSt20__throw_length_errorPKc
	.cfi_endproc
LFE113:
	.text
	.section	.text.unlikely,"x"
LCOLDE9:
	.text
LHOTE9:
	.section .rdata,"dr"
LC10:
	.ascii "<>:\"/\\|?*\0"
LC12:
	.ascii "Unknown-demo\0"
	.text
	.p2align 4
	.globl	__ZL26DemoAutoSanitizeFolderNamePcjPKc.part.0.lto_priv.0
	.def	__ZL26DemoAutoSanitizeFolderNamePcjPKc.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL26DemoAutoSanitizeFolderNamePcjPKc.part.0.lto_priv.0:
LFB133:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%edi, 24(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	movl	%ebp, 28(%esp)
	.cfi_offset 5, -8
	movl	%edx, %ebp
	testl	%ecx, %ecx
	je	L2066
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -20
	movzbl	(%ecx), %ebx
	testb	%bl, %bl
	je	L2085
	movl	%esi, 20(%esp)
	.cfi_offset 6, -16
	movl	$1, %esi
	jmp	L2071
	.p2align 4,,10
	.p2align 3
L2086:
	cmpb	$127, %bl
	je	L2075
	movzbl	%bl, %eax
	movl	$LC10, (%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, 12(%esp)
	call	_strchr
	movl	12(%esp), %ecx
	testl	%eax, %eax
	movl	$45, %eax
	cmovne	%eax, %ebx
	movb	%bl, -1(%edi,%esi)
	movzbl	(%ecx,%esi), %ebx
	testb	%bl, %bl
	je	L2070
L2069:
	leal	1(%esi), %eax
	cmpl	%eax, %ebp
	je	L2070
	movl	%eax, %esi
L2071:
	cmpb	$31, %bl
	ja	L2086
L2075:
	movl	$45, %ebx
	movb	%bl, -1(%edi,%esi)
	movzbl	(%ecx,%esi), %ebx
	testb	%bl, %bl
	jne	L2069
L2070:
	leal	-1(%edi,%esi), %eax
	movzbl	(%eax), %edx
	cmpb	$32, %dl
	je	L2079
	cmpb	$46, %dl
	jne	L2072
L2079:
	movl	$45, %edx
	movw	%dx, (%eax)
	movl	16(%esp), %ebx
	.cfi_restore 3
	movl	20(%esp), %esi
	.cfi_restore 6
L2065:
	movl	24(%esp), %edi
	movl	28(%esp), %ebp
	addl	$32, %esp
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
L2085:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	16(%esp), %ebx
	.cfi_restore 3
L2066:
	movb	$0, (%edi)
	movl	%ebp, 4(%esp)
	movl	%edi, (%esp)
	movl	$LC12, 8(%esp)
	call	_snprintf
	movl	24(%esp), %edi
	movl	28(%esp), %ebp
	addl	$32, %esp
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
L2072:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movb	$0, (%edi,%esi)
	movl	16(%esp), %ebx
	.cfi_restore 3
	movl	20(%esp), %esi
	.cfi_restore 6
	jmp	L2065
	.cfi_endproc
LFE133:
	.section .rdata,"dr"
LC13:
	.ascii "%s\0"
LC14:
	.ascii ".map\0"
	.text
	.p2align 4
	.globl	__ZL22DemoAutoResolveMapFilePcj.part.0.constprop.0
	.def	__ZL22DemoAutoResolveMapFilePcj.part.0.constprop.0;	.scl	2;	.type	32;	.endef
__ZL22DemoAutoResolveMapFilePcj.part.0.constprop.0:
LFB135:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	movl	$__ZL15DemoAutoMapName.lto_priv.0, 12(%esp)
	movl	$LC13, 8(%esp)
	movl	$192, 4(%esp)
	movl	%eax, (%esp)
	call	_snprintf
	movl	$46, 4(%esp)
	movl	%ebx, (%esp)
	call	_strrchr
	testl	%eax, %eax
	je	L2088
	movl	$LC14, 4(%esp)
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L2088
L2089:
	movl	$1, %eax
L2087:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2088:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	_strlen
	leal	4(%eax), %ecx
	movl	%eax, %edx
	xorl	%eax, %eax
	cmpl	$191, %ecx
	ja	L2087
	movl	$1885433134, (%ebx,%edx)
	movb	$0, 4(%ebx,%edx)
	jmp	L2089
	.cfi_endproc
LFE135:
	.align 2
	.p2align 4
	.globl	__ZN2sm9Allocator4FreeEPv
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
__ZN2sm9Allocator4FreeEPv:
LFB136:
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
	subl	$40, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %esi
	cmpl	$16384, %esi
	jbe	L2099
	movl	%esi, %eax
	xorl	%edx, %edx
	subl	12(%ecx), %eax
	divl	4(%ecx)
	movl	%eax, %edi
	cmpl	(%ecx), %eax
	jnb	L2101
	leal	(%eax,%eax,4), %eax
	leal	48(%ecx), %ebx
	leal	0(,%eax,8), %edx
	movl	%ebx, 12(%esp)
	lock addl	$1, 80(%ecx,%eax,8)
	movl	%fs:44, %eax
	movl	__tls_index, %ebx
	movl	(%eax,%ebx,4), %ebx
	movl	%edi, %eax
	movl	%ebx, 8(%esp)
	sall	$6, %eax
	addl	%eax, %ebx
	movl	%eax, 4(%esp)
	movl	_tlsCacheBuckets@secrel32+52(%ebx), %eax
	testl	%eax, %eax
	je	L2102
	movl	_tlsCacheBuckets@secrel32(%ebx), %ecx
	movzbl	_tlsCacheBuckets@secrel32+60(%ebx), %edx
	subl	%ecx, %esi
	movl	%esi, 12(%esp)
	cmpb	$9, %dl
	jbe	L2121
	movl	_tlsCacheBuckets@secrel32+4(%ebx), %esi
	movl	_tlsCacheBuckets@secrel32+56(%ebx), %edx
	movl	%esi, 8(%esp)
	cmpl	%eax, %edx
	jnb	L2104
	movl	12(%esp), %eax
	movl	%eax, (%esi,%edx,4)
	addl	$1, %edx
	movl	%edx, _tlsCacheBuckets@secrel32+56(%ebx)
L2099:
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
	ret	$4
	.p2align 4,,10
	.p2align 3
L2101:
	.cfi_restore_state
	movl	%esi, %eax
	call	_mi_free
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
	ret	$4
	.p2align 4,,10
	.p2align 3
L2121:
	.cfi_restore_state
	movl	4(%esp), %edi
	movl	8(%esp), %eax
	leal	_tlsCacheBuckets@secrel32(%eax,%edi), %eax
	movl	%esi, 12(%eax,%edx,4)
	addb	$1, _tlsCacheBuckets@secrel32+60(%ebx)
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
	ret	$4
	.p2align 4,,10
	.p2align 3
L2102:
	.cfi_restore_state
	leal	48(%ecx,%edx), %edi
	movl	$1, %ebx
	lock xaddl	%ebx, 8(%edi)
	movl	%esi, %eax
	subl	60(%ecx,%edx), %eax
	movl	%eax, %ecx
	movlps	(%edi), %xmm0
	movlps	%xmm0, 16(%esp)
	movl	16(%esp), %eax
	movl	20(%esp), %edx
L2119:
	movl	%eax, 32(%esp)
	movl	32(%esp), %eax
	movl	%edx, 36(%esp)
	movl	36(%esp), %edx
	movl	%eax, (%esi)
	movl	%edx, 4(%esi)
	lock cmpxchg8b	(%edi)
	jne	L2119
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
	ret	$4
	.p2align 4,,10
	.p2align 3
L2104:
	.cfi_restore_state
	movl	%edx, %esi
	movl	$1, %eax
	shrl	%esi
	je	L2105
	movl	%edx, %eax
	movl	%esi, 4(%esp)
	subl	%esi, %eax
	movl	8(%esp), %esi
	addl	(%esi,%eax,4), %ecx
	movl	%ecx, (%esp)
	movl	%ecx, %esi
	leal	1(%eax), %ecx
	cmpl	%edx, %ecx
	jnb	L2113
	movl	8(%esp), %ecx
	movl	4(%ecx,%eax,4), %ecx
	movl	$16777215, (%esi)
	addl	$2, %eax
	movl	%ecx, 4(%esi)
	addl	_tlsCacheBuckets@secrel32(%ebx), %ecx
	movl	%ecx, %esi
	cmpl	_tlsCacheBuckets@secrel32+56(%ebx), %eax
	jnb	L2106
	movl	4(%esp), %ecx
	movl	%edi, 8(%esp)
	subl	%edx, %ecx
	leal	16777214(%ecx), %edi
	.p2align 6
	.p2align 4
	.p2align 3
L2107:
	movl	_tlsCacheBuckets@secrel32+4(%ebx), %edx
	leal	(%edi,%eax), %ecx
	movl	(%edx,%eax,4), %edx
	movl	%ecx, (%esi)
	addl	$1, %eax
	movl	%edx, 4(%esi)
	addl	_tlsCacheBuckets@secrel32(%ebx), %edx
	movl	%edx, %esi
	cmpl	_tlsCacheBuckets@secrel32+56(%ebx), %eax
	jb	L2107
	movl	8(%esp), %edi
L2106:
	movl	__tls_index, %ebx
	movl	%fs:44, %edx
	movl	%edi, %eax
	sall	$6, %eax
	addl	(%edx,%ebx,4), %eax
	movl	$1, %ebx
	movl	_tlsCacheBuckets@secrel32+8(%eax), %eax
	movl	%eax, 8(%esp)
	lock xaddl	%ebx, 8(%eax)
	movl	(%esp), %ecx
	subl	12(%eax), %ecx
	movlps	(%eax), %xmm1
	movlps	%xmm1, 24(%esp)
	movl	24(%esp), %eax
	movl	28(%esp), %edx
	movl	%eax, 32(%esp)
	movl	%edx, 36(%esp)
	movl	%esi, (%esp)
L2109:
	movl	32(%esp), %eax
	movl	36(%esp), %edx
	movl	(%esp), %esi
	movl	%eax, (%esi)
	movl	%edx, 4(%esi)
	movl	8(%esp), %esi
	movl	32(%esp), %eax
	movl	36(%esp), %edx
	lock cmpxchg8b	(%esi)
	je	L2114
	movl	%eax, 32(%esp)
	movl	%edx, 36(%esp)
	jmp	L2109
	.p2align 4,,10
	.p2align 3
L2114:
	movl	%fs:44, %edx
	movl	__tls_index, %esi
	movl	%edi, %eax
	sall	$6, %eax
	addl	(%edx,%esi,4), %eax
	movl	_tlsCacheBuckets@secrel32+56(%eax), %eax
	subl	4(%esp), %eax
L2105:
	movl	%fs:44, %edx
	movl	__tls_index, %esi
	sall	$6, %edi
	addl	(%edx,%esi,4), %edi
	movl	12(%esp), %esi
	movl	_tlsCacheBuckets@secrel32+4(%edi), %edx
	movl	%esi, (%edx,%eax,4)
	addl	$1, %eax
	movl	%eax, _tlsCacheBuckets@secrel32+56(%edi)
	jmp	L2099
L2113:
	movl	(%esp), %esi
	jmp	L2106
	.cfi_endproc
LFE136:
	.p2align 4
	.globl	__Z14analyzespritesiiih
	.def	__Z14analyzespritesiiih;	.scl	2;	.type	32;	.endef
__Z14analyzespritesiiih:
LFB146:
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
	movl	%edx, %ebx
	subl	$84, %esp
	.cfi_def_cfa_offset 104
	movl	__ZZ14analyzespritesiiihE3ang, %edi
	movswl	_screenpeek, %edx
	leal	12(%edi), %ecx
	movl	_spritesortcnt, %edi
	andl	$2047, %ecx
	subl	$1, %edi
	movl	%ecx, __ZZ14analyzespritesiiihE3ang
	movl	%edi, 12(%esp)
	js	L2123
	movl	%eax, 56(%esp)
	imull	$24124, %edx, %eax
	movl	_smoothratio, %edx
	movl	%esi, 64(%esp)
	movl	%ebx, 60(%esp)
	movl	%eax, 44(%esp)
	movzbl	_MoveSkip4, %eax
	sall	$16, %eax
	addl	%edx, %eax
	movl	%eax, 48(%esp)
	movzbl	_MoveSkip2, %eax
	sall	$16, %eax
	addl	%edx, %eax
	movl	%eax, 52(%esp)
	.p2align 4
	.p2align 3
L2273:
	imull	$44, 12(%esp), %eax
	addl	_tsprite, %eax
	movzwl	26(%eax), %ebp
	movl	%eax, %edi
	cmpw	$46, %bp
	jg	L2448
	movswl	30(%eax), %eax
	movl	%eax, 20(%esp)
	movl	_User(,%eax,4), %esi
	cmpb	$0, _gs+40
	je	L2126
	movswl	14(%edi), %eax
	movzwl	_aVoxelArray+2(,%eax,4), %eax
	cmpw	$6145, %ax
	je	L2449
	testw	%ax, %ax
	jle	L2126
	movw	%ax, 14(%edi)
L2126:
	testl	%esi, %esi
	je	L2418
	testw	%bp, %bp
	je	L2130
	movl	68(%esi), %eax
	testl	$268435456, %eax
	je	L2131
	cmpw	$9, %bp
	jle	L2450
	.p2align 4
	.p2align 3
L2130:
	movzwl	14(%edi), %eax
	cmpw	$389, %ax
	je	L2297
	cmpw	$817, %ax
	je	L2297
L2132:
	cmpb	$0, _gs+20
	je	L2136
	movl	68(%esi), %edx
	testl	%edx, %edx
	js	L2451
L2136:
	movzwl	82(%esi), %eax
	cmpb	$0, _gs+322
	je	L2158
	cmpw	$1793, %ax
	je	L2159
	cmpw	$1793, 14(%edi)
	je	L2159
	cmpw	$2049, %ax
	je	L2287
	.p2align 4
	.p2align 3
L2161:
	cmpw	$0, 80(%esi)
	jg	L2452
L2166:
	cmpw	$0, 240(%esi)
	jne	L2453
L2178:
	movswl	24(%edi), %edx
	movl	_sector, %ecx
	leal	(%edx,%edx,4), %eax
	leal	0(,%eax,8), %ebx
	movzbl	29(%ecx,%eax,8), %eax
	movzwl	40(%edi), %ecx
	movl	%ebx, 16(%esp)
	cmpb	%al, 17(%edi)
	je	L2191
	testb	%al, %al
	je	L2194
	movl	_SectUser(,%edx,4), %edx
	testl	%edx, %edx
	je	L2193
	testb	$8, 4(%edx)
	je	L2193
L2194:
	movzbl	262(%esi), %eax
L2417:
	movb	%al, 17(%edi)
L2191:
	cmpw	$9997, %cx
	je	L2197
L2196:
	movzwl	26(%edi), %ebp
L2128:
	cmpb	$0, _gs+322
	je	L2198
	cmpw	$43, %bp
	je	L2454
L2198:
	cmpw	$11, %bp
	jne	L2419
	imull	$44, 20(%esp), %eax
	addl	_sprite, %eax
	movzbl	18(%eax), %eax
	movb	%al, 18(%edi)
L2419:
	movzwl	_rotang, %eax
	xorl	%edx, %edx
	movzwl	14(%edi), %ebx
	addl	$4, %eax
	cmpw	$2048, %ax
	cmovge	%edx, %eax
	movw	%ax, _rotang
	cmpw	$1847, %bx
	jg	L2206
	cmpw	$1796, %bx
	jle	L2455
	leal	-1797(%ebx), %eax
	cmpw	$50, %ax
	ja	L2208
	movzwl	%ax, %eax
	jmp	*L2211(,%eax,4)
	.section .rdata,"dr"
	.align 4
L2211:
	.long	L2218
	.long	L2208
	.long	L2208
	.long	L2208
	.long	L2208
	.long	L2208
	.long	L2208
	.long	L2208
	.long	L2219
	.long	L2208
	.long	L2218
	.long	L2217
	.long	L2208
	.long	L2216
	.long	L2215
	.long	L2208
	.long	L2208
	.long	L2208
	.long	L2208
	.long	L2208
	.long	L2214
	.long	L2208
	.long	L2213
	.long	L2208
	.long	L2208
	.long	L2208
	.long	L2208
	.long	L2208
	.long	L2208
	.long	L2208
	.long	L2208
	.long	L2208
	.long	L2212
	.long	L2208
	.long	L2208
	.long	L2208
	.long	L2208
	.long	L2208
	.long	L2208
	.long	L2208
	.long	L2208
	.long	L2208
	.long	L2208
	.long	L2208
	.long	L2208
	.long	L2208
	.long	L2208
	.long	L2208
	.long	L2208
	.long	L2210
	.long	L2210
	.text
	.p2align 4,,10
	.p2align 3
L2208:
	movl	_rendmode, %ecx
	cmpl	$2, %ecx
	jg	L2200
	cmpb	$0, _gs+62
	je	L2236
L2233:
	movl	_usevoxels, %eax
	testl	%eax, %eax
	je	L2238
L2237:
	movswl	%bx, %eax
	movl	%eax, 20(%esp)
L2243:
	movl	20(%esp), %eax
	movzwl	_aVoxelArray(,%eax,4), %edx
	testw	%dx, %dx
	js	L2229
	movswl	30(%edi), %eax
	sall	$6, %eax
	addl	_spriteext, %eax
	testb	$1, 12(%eax)
	jne	L2229
	orb	$16, 18(%edi)
	andw	$-49, 12(%edi)
	movw	%dx, 14(%edi)
	.p2align 4
	.p2align 3
L2229:
	testl	%esi, %esi
	je	L2247
	movl	144(%esi), %eax
	testl	%eax, %eax
	je	L2247
	movzwl	12(%edi), %ecx
	testb	$2, %cl
	je	L2456
L2248:
	movswl	_screenpeek, %edx
	movzwl	136(%esi), %ebx
	imull	$24124, %edx, %edx
	leal	_Player(%edx), %eax
	cmpw	%bx, _Player+348(%edx)
	je	L2457
	cmpb	$0, _PedanticMode
	jne	L2247
	movl	144(%esi), %ebx
	movl	$65536, %ecx
	subl	_smoothratio, %ecx
	movl	%ecx, %edx
	movl	(%ebx), %eax
	subl	12(%ebx), %eax
/APP
 # 920 "source/sw/src/draw.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	subl	%eax, (%edi)
	movl	%ecx, %edx
	movl	4(%ebx), %eax
	subl	16(%ebx), %eax
/APP
 # 921 "source/sw/src/draw.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	subl	%eax, 4(%edi)
	movl	%ecx, %edx
	movl	8(%ebx), %eax
	subl	20(%ebx), %eax
/APP
 # 922 "source/sw/src/draw.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	subl	%eax, 8(%edi)
	movl	300(%ebx), %eax
	movl	%ecx, %edx
	subl	28(%ebx), %eax
	addl	$67108864, %eax
	andl	$134217727, %eax
	subl	$67108864, %eax
/APP
 # 924 "source/sw/src/draw.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	cltd
	xorw	%dx, %dx
	leal	32768(%edx,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	sarl	$16, %eax
	subw	%ax, 28(%edi)
	.p2align 4
	.p2align 3
L2247:
	movl	__ZL11OverlapDraw, %eax
	movl	16(%esp), %edx
	addl	_sector, %edx
	testl	%eax, %eax
	je	L2259
	cmpw	$2356, 16(%edx)
	je	L2260
	cmpw	$2356, 24(%edx)
	je	L2260
L2259:
	movsbw	16(%edi), %ax
	cmpw	$3, %bp
	jg	L2262
	cmpw	$1, %bp
	jg	L2264
L2263:
	leal	6(%eax), %ecx
	movl	$127, %eax
	cmpw	%ax, %cx
	cmovg	%eax, %ecx
	movb	%cl, 16(%edi)
	movsbw	%cl, %ax
L2264:
	testb	$1, 12(%edx)
	je	L2266
	movsbw	20(%edx), %dx
L2445:
	addl	%edx, %eax
	movl	$-128, %edx
	movzwl	40(%edi), %ecx
	cmpw	%dx, %ax
	cmovl	%edx, %eax
	movl	$127, %edx
	cmpw	%dx, %ax
	cmovg	%edx, %eax
	movl	$127, %edx
	cmpw	$9998, %cx
	je	L2268
	cmpw	$9999, %cx
	movl	$-128, %edx
	cmovne	%eax, %edx
L2268:
	movl	44(%esp), %eax
	movb	%dl, 16(%edi)
	cmpb	$0, _Player+23302(%eax)
	je	L2269
	testb	$8, 43(%edi)
	je	L2269
	testl	%esi, %esi
	je	L2270
	cmpw	$2540, 82(%esi)
	je	L2125
	movl	$8320, %ebp
	movw	%bp, 16(%edi)
L2271:
	movl	144(%esi), %eax
	testl	%eax, %eax
	je	L2125
	testb	$-128, 74(%esi)
	je	L2125
	movswl	_screenpeek, %edx
	movzwl	136(%esi), %ebx
	imull	$24124, %edx, %edx
	cmpw	%bx, _Player+348(%edx)
	je	L2272
	testb	$4, 22971(%eax)
	je	L2458
L2272:
	imull	$1103515245, _wrandomseed, %eax
	movl	$32766, %edx
	addl	$12345, %eax
	movl	%eax, _wrandomseed
	shrl	$16, %eax
	andl	$32767, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	movl	$2013327467, %edx
	sall	$14, %eax
	mull	%edx
	movl	$12, %eax
	shrl	$23, %edx
	subl	%edx, %eax
	movb	%al, 16(%edi)
	.p2align 4
	.p2align 3
L2125:
	subl	$1, 12(%esp)
	cmpl	$-1, 12(%esp)
	jne	L2273
L2123:
	movzwl	_headspritestat+126, %eax
	cmpw	$-1, %ax
	je	L2122
	.p2align 4
	.p2align 3
L2274:
	movzwl	_headspritestat+128, %edx
	cwtl
	movl	%eax, %ecx
	movzwl	_nextspritestat(%eax,%eax), %eax
	cmpw	$-1, %dx
	je	L2284
	imull	$44, %ecx, %ecx
	movl	_sprite, %esi
	movw	%ax, 28(%esp)
	leal	(%esi,%ecx), %ebx
	movzwl	38(%ebx), %ecx
	movl	%ecx, %ebp
	jmp	L2286
	.p2align 6
	.p2align 4,,10
	.p2align 3
L2280:
	cmpw	$-1, %dx
	je	L2414
L2460:
	movl	_sprite, %esi
L2286:
	movswl	%dx, %ecx
	movzwl	_nextspritestat(%ecx,%ecx), %edx
	imull	$44, %ecx, %ecx
	addl	%esi, %ecx
	cmpw	%bp, 38(%ecx)
	jne	L2280
	movswl	24(%ebx), %edi
	movswl	24(%ecx), %eax
	movzwl	_headspritesect(%edi,%edi), %edi
	cmpw	$-1, %di
	je	L2277
	movl	%ecx, 12(%esp)
	movw	%ax, 16(%esp)
	movw	%dx, 20(%esp)
	movw	%bp, 24(%esp)
	jmp	L2276
	.p2align 4,,10
	.p2align 3
L2459:
	movl	_sprite, %esi
	movl	%ebp, %edi
L2276:
	movswl	%di, %eax
	movzwl	_nextspritesect(%eax,%eax), %ebp
	imull	$44, %eax, %eax
	addl	%esi, %eax
	cmpl	%eax, %ebx
	je	L2278
	cmpw	$2307, 14(%eax)
	je	L2278
	movl	_spritesortcnt, %eax
	leal	1(%eax), %edx
	movl	%edx, _spritesortcnt
	movzwl	%di, %edx
	imull	$44, %eax, %eax
	addl	_tsprite, %eax
	imull	$44, %edx, %edx
	addl	%esi, %edx
	movl	(%edx), %esi
	movl	%esi, (%eax)
	movl	4(%edx), %esi
	movl	%esi, 4(%eax)
	movl	8(%edx), %esi
	movl	%esi, 8(%eax)
	movzwl	12(%edx), %esi
	movw	%si, 12(%eax)
	movzwl	14(%edx), %esi
	movw	%si, 14(%eax)
	movzbl	16(%edx), %ecx
	movb	%cl, 16(%eax)
	movzbl	17(%edx), %ecx
	movb	%cl, 17(%eax)
	movzbl	19(%edx), %ecx
	movb	%cl, 19(%eax)
	movzbl	20(%edx), %ecx
	movb	%cl, 20(%eax)
	movzbl	21(%edx), %ecx
	movb	%cl, 21(%eax)
	movzbl	22(%edx), %ecx
	movb	%cl, 22(%eax)
	movzbl	23(%edx), %ecx
	movb	%cl, 23(%eax)
	movzwl	24(%edx), %esi
	xorl	%ecx, %ecx
	movw	%si, 24(%eax)
	movzwl	26(%edx), %esi
	movw	%si, 26(%eax)
	movzwl	28(%edx), %esi
	movw	%si, 28(%eax)
	movl	32(%edx), %esi
	movl	%esi, 32(%eax)
	movzwl	36(%edx), %esi
	movw	%si, 36(%eax)
	movzwl	38(%edx), %esi
	movw	%si, 38(%eax)
	movzwl	40(%edx), %esi
	movw	%si, 40(%eax)
	movzwl	42(%edx), %edx
	movw	%cx, 26(%eax)
	movl	12(%esp), %ecx
	movw	%dx, 42(%eax)
	movb	$0, 18(%eax)
	movw	%di, 30(%eax)
	movl	4(%ebx), %edi
	movl	8(%ebx), %esi
	movl	(%ecx), %edx
	subl	(%ebx), %edx
	addl	%edx, (%eax)
	movl	4(%ecx), %edx
	subl	%edi, %edx
	addl	%edx, 4(%eax)
	movl	8(%ecx), %edx
	subl	%esi, %edx
	addl	%edx, 8(%eax)
	movzwl	24(%ecx), %edx
	movw	%dx, 24(%eax)
L2278:
	cmpw	$-1, %bp
	jne	L2459
	movl	12(%esp), %ecx
	movswl	16(%esp), %eax
	movzwl	20(%esp), %edx
	movzwl	24(%esp), %ebp
L2277:
	movzwl	_headspritesect(%eax,%eax), %esi
	cmpw	$-1, %si
	je	L2280
	movl	%ebx, 12(%esp)
	movw	%dx, 16(%esp)
	movw	%bp, 20(%esp)
	.p2align 4
	.p2align 3
L2279:
	movswl	%si, %eax
	movl	%esi, %edi
	movl	_sprite, %ebp
	movzwl	_nextspritesect(%eax,%eax), %esi
	imull	$44, %eax, %eax
	addl	%ebp, %eax
	cmpl	%eax, %ecx
	je	L2282
	cmpw	$2307, 14(%eax)
	je	L2282
	movl	_spritesortcnt, %eax
	leal	1(%eax), %edx
	movl	%edx, _spritesortcnt
	movzwl	%di, %edx
	imull	$44, %eax, %eax
	addl	_tsprite, %eax
	imull	$44, %edx, %edx
	addl	%ebp, %edx
	movl	(%edx), %ebp
	movl	%ebp, (%eax)
	movl	4(%edx), %ebp
	movl	%ebp, 4(%eax)
	movl	8(%edx), %ebp
	movl	%ebp, 8(%eax)
	movzwl	12(%edx), %ebp
	movw	%bp, 12(%eax)
	movzwl	14(%edx), %ebp
	movw	%bp, 14(%eax)
	movzbl	16(%edx), %ebx
	movb	%bl, 16(%eax)
	movzbl	17(%edx), %ebx
	movb	%bl, 17(%eax)
	movzbl	19(%edx), %ebx
	movb	%bl, 19(%eax)
	movzbl	20(%edx), %ebx
	movb	%bl, 20(%eax)
	movzbl	21(%edx), %ebx
	movb	%bl, 21(%eax)
	movzbl	22(%edx), %ebx
	movb	%bl, 22(%eax)
	movzbl	23(%edx), %ebx
	movb	%bl, 23(%eax)
	movzwl	24(%edx), %ebp
	movw	%bp, 24(%eax)
	movzwl	26(%edx), %ebp
	movw	%bp, 26(%eax)
	movzwl	28(%edx), %ebp
	movw	%bp, 28(%eax)
	movl	32(%edx), %ebp
	movl	12(%esp), %ebx
	movl	%ebp, 32(%eax)
	movzwl	36(%edx), %ebp
	movw	%bp, 36(%eax)
	movzwl	38(%edx), %ebp
	movw	%bp, 38(%eax)
	movzwl	40(%edx), %ebp
	movw	%bp, 40(%eax)
	movzwl	42(%edx), %edx
	movb	$0, 18(%eax)
	movw	%dx, 42(%eax)
	xorl	%edx, %edx
	movw	%di, 30(%eax)
	movw	%dx, 26(%eax)
	movl	4(%ecx), %ebp
	movl	8(%ecx), %edi
	movl	(%ebx), %edx
	subl	(%ecx), %edx
	addl	%edx, (%eax)
	movl	4(%ebx), %edx
	subl	%ebp, %edx
	addl	%edx, 4(%eax)
	movl	8(%ebx), %edx
	subl	%edi, %edx
	addl	%edx, 8(%eax)
	movzwl	24(%ebx), %edx
	movw	%dx, 24(%eax)
L2282:
	cmpw	$-1, %si
	jne	L2279
	movzwl	16(%esp), %edx
	movl	12(%esp), %ebx
	movzwl	20(%esp), %ebp
	cmpw	$-1, %dx
	jne	L2460
	.p2align 4
	.p2align 3
L2414:
	movzwl	28(%esp), %eax
L2284:
	cmpw	$-1, %ax
	jne	L2274
L2122:
	addl	$84, %esp
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
L2193:
	.cfi_restore_state
	cmpw	$9999, %cx
	je	L2195
	cmpw	$8, %cx
	je	L2195
	cmpb	$1, %al
	je	L2194
	leal	-5(%eax), %edx
	andl	$251, %edx
	je	L2194
	jmp	L2417
	.p2align 4,,10
	.p2align 3
L2159:
	movl	$2519, %ebp
	movl	$7451, %eax
	movw	%bp, 14(%edi)
	movw	%ax, 20(%edi)
	cmpw	$2049, 82(%esi)
	jne	L2161
	cmpb	$0, _gs+322
	je	L2162
L2287:
	movzwl	28(%edi), %eax
	movl	$2526, %ecx
	movl	$4112, %ebx
	orw	$16, 12(%edi)
	movw	%cx, 14(%edi)
	subw	$536, %ax
	movw	%bx, 20(%edi)
	andw	$2047, %ax
	movw	%ax, 28(%edi)
	cmpw	$0, 80(%esi)
	jle	L2166
L2452:
	movswl	12(%esp), %ebx
	imull	$44, %ebx, %ebx
	addl	_tsprite, %ebx
	movswl	30(%ebx), %eax
	movl	_User(,%eax,4), %ebp
	cmpw	$0, 80(%ebp)
	je	L2166
	movl	16(%ebp), %eax
	subl	24(%ebp), %eax
	movl	4(%ebx), %edx
	movl	(%ebx), %ecx
	sarl	$4, %eax
	subl	60(%esp), %edx
	subl	56(%esp), %ecx
	movl	%eax, 16(%esp)
	call	@getangle@8
	movzwl	28(%ebx), %ecx
	leal	3200(%ecx), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	sarw	$8, %ax
	andl	$7, %eax
	cmpw	$5, 80(%ebp)
	je	L2461
	cwtl
	movswl	__ZZ11GetRotationsiiE9RotTable8(%eax,%eax), %edx
L2177:
	movl	20(%ebp), %ecx
	movswl	16(%esp), %eax
	sall	$4, %eax
	addl	(%ecx,%edx,4), %eax
	movzwl	(%eax), %eax
	movw	%ax, 14(%ebx)
	cmpw	$0, 240(%esi)
	je	L2178
L2453:
	movswl	32(%edi), %ebx
	testw	%bx, %bx
	je	L2178
	movswl	30(%edi), %eax
	movzwl	28(%edi), %ecx
	movl	_User(,%eax,4), %eax
	addw	$1024, %cx
	andl	$2047, %ecx
	movl	%eax, 24(%esp)
	testb	$8, 43(%edi)
	jne	L2462
	movswl	36(%edi), %eax
	negl	%eax
	sall	$16, %eax
	cltd
	idivl	%ebx
	movl	%eax, %ebx
L2180:
	movl	24(%esp), %eax
	leal	512(%ecx), %edx
	movswl	_sintable(%ecx,%ecx), %ecx
	andl	$2047, %edx
	movswl	238(%eax), %eax
	movswl	_sintable(%edx,%edx), %edx
	cmpw	$256, %ax
	je	L2181
	jg	L2182
	cmpw	$64, %ax
	je	L2183
	cmpw	$128, %ax
	jne	L2185
	sarl	$7, %edx
	movl	%ebx, %eax
	sarl	$7, %ecx
	sall	$7, %eax
	movl	%edx, 28(%esp)
	sarl	$16, %eax
	movl	%ecx, 32(%esp)
	movl	%eax, 36(%esp)
L2187:
	movl	24(%esp), %ebx
	movzbl	20(%edi), %ecx
	movl	72(%ebx), %eax
	movzwl	240(%ebx), %ebx
	movb	%cl, 16(%esp)
	movl	%eax, 40(%esp)
	andl	$24576, %eax
	cmpl	$8192, %eax
	je	L2188
	xorl	%edx, %edx
	movw	%dx, 40(%esp)
	cmpl	$16384, %eax
	jne	L2189
	movzbl	%cl, %eax
	movswl	%bx, %edx
	leal	(%edx,%edx), %ecx
	cltd
	idivl	%ecx
	movl	%eax, 40(%esp)
L2189:
	testw	%bx, %bx
	jle	L2178
	movzbl	16(%esp), %ebx
	movzbl	21(%edi), %edx
	movl	%esi, 76(%esp)
	subb	16(%esp), %dl
	movl	_spritesortcnt, %eax
	movw	%bx, 74(%esp)
	movl	36(%esp), %ebx
	movb	%dl, 73(%esp)
	movl	32(%esp), %ebp
	movl	%ebx, 68(%esp)
	movl	28(%esp), %ebx
	movl	68(%esp), %esi
	movzwl	74(%esp), %edx
	movl	%ebx, 16(%esp)
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L2190:
	movl	(%edi), %ecx
	imull	$44, %eax, %eax
	addl	_tsprite, %eax
	addl	$1, %ebx
	movl	%ecx, (%eax)
	movl	4(%edi), %ecx
	movl	%ecx, 4(%eax)
	movl	8(%edi), %ecx
	movl	%ecx, 8(%eax)
	movl	12(%edi), %ecx
	movl	%ecx, 12(%eax)
	movl	16(%edi), %ecx
	movl	%ecx, 16(%eax)
	movl	20(%edi), %ecx
	movl	%ecx, 20(%eax)
	movl	24(%edi), %ecx
	movl	%ecx, 24(%eax)
	movl	28(%edi), %ecx
	movl	%ecx, 28(%eax)
	movl	32(%edi), %ecx
	movl	%ecx, 32(%eax)
	movl	36(%edi), %ecx
	movl	%ecx, 36(%eax)
	movl	40(%edi), %ecx
	addl	%ebp, 4(%eax)
	movl	%ecx, 40(%eax)
	movl	16(%esp), %ecx
	orw	$514, 12(%eax)
	addl	%ecx, (%eax)
	movl	28(%esp), %ecx
	addl	%ecx, 16(%esp)
	movzbl	73(%esp), %ecx
	addl	%esi, 8(%eax)
	addl	32(%esp), %ebp
	addl	%edx, %ecx
	movb	%dl, 20(%eax)
	addl	36(%esp), %esi
	movb	%cl, 21(%eax)
	movl	_spritesortcnt, %eax
	movl	24(%esp), %ecx
	subw	40(%esp), %dx
	addl	$1, %eax
	movl	%eax, _spritesortcnt
	cmpw	240(%ecx), %bx
	jl	L2190
	movl	76(%esp), %esi
	jmp	L2178
	.p2align 4,,10
	.p2align 3
L2269:
	testl	%esi, %esi
	jne	L2271
	jmp	L2125
	.p2align 4,,10
	.p2align 3
L2266:
	movsbw	28(%edx), %dx
	jmp	L2445
	.p2align 4,,10
	.p2align 3
L2262:
	cmpw	$11, %bp
	je	L2264
	jmp	L2263
	.p2align 4,,10
	.p2align 3
L2454:
	movl	$2526, %eax
	orw	$16, 12(%edi)
	movw	%ax, 14(%edi)
	movzwl	28(%edi), %eax
	subw	$512, %ax
	andw	$2047, %ax
	movw	%ax, 28(%edi)
	movl	$4112, %eax
	movw	%ax, 20(%edi)
	movzwl	_rotang, %eax
	addl	$4, %eax
	cmpw	$2047, %ax
	jg	L2199
	movl	_rendmode, %ecx
	movw	%ax, _rotang
	cmpl	$2, %ecx
	jle	L2399
L2291:
	movl	$2526, %ebx
	.p2align 4
	.p2align 3
L2200:
	movswl	%bx, %eax
	movl	%eax, 20(%esp)
	movl	_mdinited, %eax
	testl	%eax, %eax
	je	L2240
	movswl	%bx, %edx
	movl	%edi, 24(%esp)
	movl	%edx, %eax
	leal	0(,%edx,4), %edx
	jmp	L2239
	.p2align 6
	.p2align 4,,10
	.p2align 3
L2242:
	leal	0(,%eax,4), %edx
	leal	(%edx,%eax), %edi
	cmpb	$0, _tile2model+17(,%edi,4)
	je	L2463
L2239:
	addl	%edx, %eax
	movswl	_tile2model+4(,%eax,4), %eax
	cmpl	$-1, %eax
	jne	L2242
	movl	20(%esp), %edx
	movl	24(%esp), %edi
	movl	%edx, %eax
	leal	0(,%edx,4), %edx
L2241:
	addl	%eax, %edx
	cmpw	$0, _tile2model(,%edx,4)
	js	L2240
	movl	_usemodels, %edx
	testl	%edx, %edx
	jne	L2229
L2240:
	cmpb	$0, _gs+62
	je	L2236
	movl	_usevoxels, %eax
	testl	%eax, %eax
	je	L2238
	cmpl	$4, %ecx
	jne	L2243
L2238:
	cmpw	$764, %bx
	jne	L2229
L2244:
	orw	$16, 12(%edi)
	jmp	L2229
	.p2align 4,,10
	.p2align 3
L2448:
	movl	$-1, %ebx
	movw	%bx, 30(%eax)
	jmp	L2125
	.p2align 4,,10
	.p2align 3
L2197:
	movb	$14, 17(%edi)
	movswl	136(%esi), %eax
	movl	$-1171354717, %ebx
	movl	_sprite, %ecx
	imull	$44, %eax, %eax
	addl	%eax, %ecx
	addl	$40, %eax
	mull	%ebx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 40(%ecx)
	movzwl	26(%edi), %ebp
L2418:
	movswl	24(%edi), %eax
	leal	(%eax,%eax,4), %eax
	sall	$3, %eax
	movl	%eax, 16(%esp)
	jmp	L2128
	.p2align 4,,10
	.p2align 3
L2236:
	cmpw	$764, %bx
	jne	L2229
	movl	_usevoxels, %eax
	testl	%eax, %eax
	je	L2244
	cmpl	$4, %ecx
	je	L2244
	movswl	30(%edi), %eax
	sall	$6, %eax
	addl	_spriteext, %eax
	testb	$1, 12(%eax)
	jne	L2244
	movzwl	_aVoxelArray+3056, %eax
	testw	%ax, %ax
	js	L2229
	orb	$16, 18(%edi)
	andw	$-49, 12(%edi)
	movw	%ax, 14(%edi)
	jmp	L2229
	.p2align 4,,10
	.p2align 3
L2158:
	cmpw	$2049, %ax
	jne	L2161
L2162:
	movl	64(%esp), %eax
	subl	8(%edi), %eax
	movl	%eax, %edx
	negl	%edx
	cmovs	%eax, %edx
	cmpl	$6144, %edx
	jle	L2163
	movl	16(%esi), %edx
	cmpl	$_s_StarStuck, 24(%esi)
	je	L2464
	subl	$_s_Star, %edx
	andl	$-16, %edx
	movzwl	_s_StarDown(%edx), %edx
L2165:
	movw	%dx, 14(%edi)
	testl	%eax, %eax
	jg	L2416
	jmp	L2161
	.p2align 4,,10
	.p2align 3
L2260:
	cmpw	$0, 30(%edi)
	js	L2259
	movl	%edi, %eax
	call	__Z17ConnectCopySpritePK13uspritetypev7
	movswl	24(%edi), %eax
	movzwl	26(%edi), %ebp
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %edx
	jmp	L2259
	.p2align 4,,10
	.p2align 3
L2297:
	imull	$44, 20(%esp), %ebx
	addl	_sprite, %ebx
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	testb	$2, 14(%eax)
	je	L2465
	movl	4(%ebx), %edx
	movl	%edx, 8(%esp)
	movl	(%ebx), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_getflorzofslopeptr.part.0
L2135:
	cmpl	%eax, 8(%ebx)
	jle	L2132
	movl	%eax, 8(%edi)
	jmp	L2132
	.p2align 4,,10
	.p2align 3
L2463:
	movl	24(%esp), %edi
	jmp	L2241
	.p2align 4,,10
	.p2align 3
L2455:
	leal	-1765(%ebx), %ecx
	cmpw	$29, %cx
	ja	L2208
	movl	$1, %eax
	sall	%cl, %eax
	testl	$4369, %eax
	jne	L2221
	testl	$17476, %eax
	jne	L2222
	cmpw	$29, %cx
	jne	L2402
	movl	_rendmode, %ecx
	movl	$14905, %eax
	movw	%ax, 20(%edi)
	cmpl	$2, %ecx
	jg	L2200
L2421:
	cmpb	$0, _gs+62
	jne	L2233
	jmp	L2229
L2450:
	movl	56(%esi), %ecx
	movl	(%edi), %eax
	movl	48(%esp), %edx
	subl	%ecx, %eax
/APP
 # 746 "source/sw/src/draw.cpp" 1
	imull %edx; shrdl $18, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
	movl	4(%edi), %eax
	movl	48(%esp), %edx
	movl	%ecx, (%edi)
	movl	60(%esi), %ecx
	subl	%ecx, %eax
/APP
 # 747 "source/sw/src/draw.cpp" 1
	imull %edx; shrdl $18, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
	movl	8(%edi), %eax
	movl	48(%esp), %edx
	movl	%ecx, 4(%edi)
	movl	64(%esi), %ecx
	subl	%ecx, %eax
/APP
 # 748 "source/sw/src/draw.cpp" 1
	imull %edx; shrdl $18, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
	movl	%ecx, 8(%edi)
	movl	68(%esi), %eax
L2131:
	testl	$134217728, %eax
	je	L2130
	cmpw	$5, %bp
	jg	L2130
	movl	56(%esi), %ecx
	movl	(%edi), %eax
	movl	52(%esp), %edx
	subl	%ecx, %eax
/APP
 # 756 "source/sw/src/draw.cpp" 1
	imull %edx; shrdl $17, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
	movl	4(%edi), %eax
	movl	52(%esp), %edx
	movl	%ecx, (%edi)
	movl	60(%esi), %ecx
	subl	%ecx, %eax
/APP
 # 757 "source/sw/src/draw.cpp" 1
	imull %edx; shrdl $17, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
	movl	8(%edi), %eax
	movl	52(%esp), %edx
	movl	%ecx, 4(%edi)
	movl	64(%esi), %ecx
	subl	%ecx, %eax
/APP
 # 758 "source/sw/src/draw.cpp" 1
	imull %edx; shrdl $17, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
	movl	%ecx, 8(%edi)
	jmp	L2130
	.p2align 4,,10
	.p2align 3
L2449:
	movswl	24(%edi), %eax
	movl	$-1, %ecx
	xorl	%esi, %esi
	movw	%cx, 30(%edi)
	leal	(%eax,%eax,4), %eax
	sall	$3, %eax
	movl	%eax, 16(%esp)
	jmp	L2128
	.p2align 4,,10
	.p2align 3
L2457:
	movl	22968(%eax), %edx
	cmpb	$0, 104(%esp)
	jne	L2252
	testl	$335544320, %edx
	jne	L2252
	movl	$-1, %eax
	movw	%ax, 30(%edi)
	jmp	L2247
L2252:
	testl	$67108864, %edx
	je	L2254
	orl	$2, %ecx
	movw	%cx, 12(%edi)
	movl	22968(%eax), %edx
L2254:
	movl	176(%eax), %ebx
	andb	$-128, %dh
	je	L2255
	movzwl	28(%edi), %ecx
	leal	512(%ecx), %edx
	andl	$2047, %ecx
	andl	$2047, %edx
	movswl	_sintable(%edx,%edx), %edx
	imull	$208, %edx, %edx
	sarl	$14, %edx
	addl	%ebx, %edx
	movl	%edx, (%edi)
	movswl	_sintable(%ecx,%ecx), %edx
	imull	$208, %edx, %edx
	sarl	$14, %edx
	addl	180(%eax), %edx
L2256:
	movl	%edx, 4(%edi)
	movl	184(%eax), %edx
	addl	%edx, 8(%edi)
	movzwl	188(%eax), %eax
	movw	%ax, 28(%edi)
	jmp	L2247
	.p2align 4,,10
	.p2align 3
L2456:
	movl	_sector, %eax
	movl	16(%esp), %ebx
	movzbl	28(%eax,%ebx), %eax
	subl	$25, %eax
	cmpb	$-2, %al
	jl	L2466
	movb	$-3, 16(%edi)
	jmp	L2248
L2206:
	cmpw	$3030, %bx
	je	L2225
	cmpw	$3031, %bx
	jne	L2402
	movl	$18235, %ecx
	movw	%cx, 20(%edi)
	movl	_rendmode, %ecx
	cmpl	$2, %ecx
	jg	L2200
L2444:
	cmpb	$0, _gs+62
	je	L2229
	movl	_usevoxels, %eax
	testl	%eax, %eax
	jne	L2237
	jmp	L2229
L2465:
	movl	8(%eax), %eax
	jmp	L2135
L2199:
	movl	_rendmode, %ecx
	xorl	%eax, %eax
	movw	%ax, _rotang
	cmpl	$2, %ecx
	jg	L2291
L2399:
	cmpb	$0, _gs+62
	je	L2229
	movl	$2526, %ebx
	jmp	L2233
L2466:
	movl	$-30, %edx
	cmpb	%dl, %al
	cmovl	%edx, %eax
	movb	%al, 16(%edi)
	jmp	L2248
L2458:
	andw	$-3, 12(%edi)
	jmp	L2272
L2225:
	movl	_rendmode, %ecx
	movl	$21586, %edx
	movw	%dx, 20(%edi)
	cmpl	$2, %ecx
	jg	L2200
	jmp	L2444
L2222:
	movl	_rendmode, %ecx
	movl	$8484, %eax
	movw	%ax, 20(%edi)
	cmpl	$2, %ecx
	jg	L2200
	cmpb	$0, _gs+62
	jne	L2233
	jmp	L2229
L2462:
	movswl	92(%eax), %eax
	leal	0(,%eax,4), %edx
	subl	%edx, %eax
	sall	$17, %eax
	cltd
	idivl	%ebx
	movl	%eax, %ebx
	jmp	L2180
L2255:
	movl	%ebx, (%edi)
	movl	180(%eax), %edx
	jmp	L2256
L2195:
	movzbl	262(%esi), %eax
	movb	%al, 17(%edi)
	jmp	L2196
L2270:
	movl	$8320, %ebx
	movw	%bx, 16(%edi)
	jmp	L2125
L2451:
	movl	_tsprite, %eax
	movl	_spritesortcnt, %ebx
	movl	%eax, 16(%esp)
	movswl	30(%edi), %eax
	movl	_User(,%eax,4), %ebp
	movzwl	24(%edi), %eax
	movw	%ax, 82(%esp)
	leal	82(%esp), %eax
	movl	%eax, 8(%esp)
	movl	4(%edi), %eax
	movl	%eax, 4(%esp)
	movl	(%edi), %eax
	movl	%eax, (%esp)
	call	_updatesector
	movzwl	82(%esp), %eax
	testw	%ax, %ax
	js	L2136
	imull	$44, %ebx, %ebx
	movl	16(%esp), %ecx
	movw	%ax, 24(%edi)
	movl	(%edi), %eax
	addl	%ecx, %ebx
	movl	%eax, (%ebx)
	movl	4(%edi), %eax
	movl	%eax, 4(%ebx)
	movl	8(%edi), %eax
	movl	%eax, 8(%ebx)
	movl	12(%edi), %eax
	movl	%eax, 12(%ebx)
	movl	16(%edi), %eax
	movl	%eax, 16(%ebx)
	movl	20(%edi), %eax
	movl	%eax, 20(%ebx)
	movl	24(%edi), %eax
	movzbl	20(%ebx), %edx
	movl	%eax, 24(%ebx)
	movl	28(%edi), %eax
	movb	%dl, 24(%esp)
	movl	%eax, 28(%ebx)
	movl	32(%edi), %eax
	movl	%eax, 32(%ebx)
	movl	36(%edi), %eax
	movl	%eax, 36(%ebx)
	movl	40(%edi), %eax
	movl	%eax, 40(%ebx)
	movl	$1024, %eax
	movw	%ax, 26(%ebx)
	movzbl	21(%edi), %eax
	movl	%eax, %ecx
	shrb	$2, %cl
	cmpb	$19, %al
	ja	L2467
	movzbl	21(%ebx), %eax
	movw	%ax, 28(%esp)
L2141:
	orw	$2, 12(%ebx)
	movb	$127, 16(%ebx)
	movl	128(%ebp), %eax
	movl	108(%ebp), %ecx
	testl	%eax, %eax
	je	L2143
	testb	$48, 12(%eax)
	je	L2468
L2143:
	movl	64(%esp), %eax
	movl	%ecx, 8(%ebx)
	subl	%ecx, %eax
	cmpl	$-2047, %eax
	jge	L2136
	movl	%ecx, %eax
	subl	64(%esp), %eax
	movl	%eax, %edx
	negl	%edx
	cmovs	%eax, %edx
	xorl	%ebp, %ebp
	movl	%edx, %eax
	sarl	$8, %eax
	cmpl	$8191, %edx
	jg	L2145
	movl	%eax, %ebp
	xorl	%edx, %edx
	movl	$256, %eax
	idivl	%ebp
	movl	%eax, %ebp
L2145:
	movl	8(%edi), %eax
	movl	%eax, 16(%esp)
	testb	$-128, 12(%edi)
	je	L2146
	movswl	14(%edi), %eax
	movzbl	21(%edi), %edx
	movl	%eax, 36(%esp)
	movswl	_tilesiz+2(,%eax,4), %eax
	movl	%eax, 32(%esp)
	sall	$7, %eax
	cmpb	$64, %dl
	je	L2148
	movzbl	%dl, %eax
	imull	32(%esp), %eax
	addl	%eax, %eax
L2148:
	movl	36(%esp), %edx
	movsbl	_picanm+2(%edx,%edx,4), %edx
	sall	$8, %edx
	subl	%edx, %eax
	addl	%eax, 16(%esp)
L2146:
	subl	16(%esp), %ecx
	movl	$4, %edx
	movl	%ecx, %eax
	negl	%eax
	cmovs	%ecx, %eax
	sarl	$12, %eax
	movl	%eax, %ecx
	movzbl	24(%esp), %eax
	subl	%ecx, %eax
	subl	%ebp, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movb	%al, 20(%ebx)
	movswl	28(%esp), %eax
	subl	%ecx, %eax
	movl	_rendmode, %ecx
	subl	%ebp, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	$255, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movb	%al, 21(%ebx)
	cmpl	$2, %ecx
	jle	L2149
	movl	_mdinited, %eax
	movswl	14(%edi), %ebp
	testl	%eax, %eax
	je	L2150
	movl	_usemodels, %eax
	testl	%eax, %eax
	je	L2150
	movzbl	17(%edi), %eax
	movl	%edi, 24(%esp)
	leal	0(,%ebp,4), %edx
	movl	%ecx, 28(%esp)
	movb	%al, 16(%esp)
	movl	%ebp, %eax
	jmp	L2151
L2153:
	leal	0(,%eax,4), %edx
	movzbl	16(%esp), %ecx
	leal	(%edx,%eax), %edi
	cmpb	_tile2model+17(,%edi,4), %cl
	je	L2408
L2151:
	addl	%edx, %eax
	movswl	_tile2model+4(,%eax,4), %eax
	cmpl	$-1, %eax
	jne	L2153
	movl	24(%esp), %edi
	movl	28(%esp), %ecx
	movl	%ebp, %eax
	leal	0(,%ebp,4), %edx
L2152:
	addl	%eax, %edx
	cmpw	$-1, _tile2model(,%edx,4)
	jne	L2154
L2150:
	cmpl	$3, %ecx
	jne	L2155
	movl	_usevoxels, %eax
	testl	%eax, %eax
	je	L2155
	cmpw	$-1, _tiletovox(%ebp,%ebp)
	je	L2155
L2154:
	orb	$1, 18(%ebx)
	orw	$512, 12(%ebx)
	movb	$0, 21(%ebx)
	jmp	L2149
	.p2align 4,,10
	.p2align 3
L2221:
	movl	_rendmode, %ecx
	movl	$11559, %eax
	movw	%ax, 20(%edi)
	cmpl	$2, %ecx
	jg	L2200
	cmpb	$0, _gs+62
	jne	L2233
	jmp	L2229
L2182:
	cmpw	$512, %ax
	jne	L2185
	sall	$9, %ebx
	sarl	$5, %edx
	sarl	$5, %ecx
	sarl	$16, %ebx
	movl	%edx, 28(%esp)
	movl	%ecx, 32(%esp)
	movl	%ebx, 36(%esp)
	jmp	L2187
L2163:
	testl	%eax, %eax
	jle	L2161
L2416:
	orw	$8, 12(%edi)
	jmp	L2161
L2467:
	movswl	14(%edi), %edx
	movzbl	%cl, %ecx
	movswl	_tilesiz+2(,%edx,4), %edx
	cmpb	$64, %al
	je	L2469
	imull	%edx, %eax
	sarl	$6, %eax
	leal	63(%eax), %edx
	cmovs	%edx, %eax
	sarl	$6, %eax
	addl	%eax, %eax
L2140:
	subl	%eax, %ecx
	movw	%cx, 28(%esp)
	jmp	L2141
L2210:
	movl	_rendmode, %ecx
	movl	$10287, %eax
	movw	%ax, 20(%edi)
	cmpl	$2, %ecx
	jg	L2200
	jmp	L2444
L2218:
	movl	_rendmode, %ecx
	movl	$10283, %eax
	movw	%ax, 20(%edi)
	cmpl	$2, %ecx
	jg	L2200
	jmp	L2444
L2185:
	imull	%eax, %edx
	movl	$0, 36(%esp)
	imull	%ecx, %eax
	sarl	$14, %edx
	sarl	$14, %eax
	movl	%edx, 28(%esp)
	movl	%eax, 32(%esp)
	jmp	L2187
L2212:
	movl	_rendmode, %ecx
	movl	$7717, %eax
	movw	%ax, 20(%edi)
	cmpl	$2, %ecx
	jg	L2200
	jmp	L2444
L2214:
	movl	$13366, %ecx
	movw	%cx, 20(%edi)
	movl	_rendmode, %ecx
	cmpl	$2, %ecx
	jg	L2200
	jmp	L2444
L2213:
	movl	_rendmode, %ecx
	movl	$12078, %eax
	movw	%ax, 20(%edi)
	cmpl	$2, %ecx
	jg	L2200
	jmp	L2444
L2219:
	movl	_rendmode, %ecx
	movl	$8736, %eax
	movw	%ax, 20(%edi)
	cmpl	$2, %ecx
	jg	L2200
	jmp	L2444
L2217:
	movl	_rendmode, %ecx
	movl	$12096, %eax
	movw	%ax, 20(%edi)
	cmpl	$2, %ecx
	jg	L2200
	jmp	L2444
L2216:
	movl	_rendmode, %ecx
	movl	$9758, %eax
	movw	%ax, 20(%edi)
	cmpl	$2, %ecx
	jg	L2200
	jmp	L2444
L2215:
	movl	_rendmode, %ecx
	movl	$13874, %edx
	movw	%dx, 20(%edi)
	cmpl	$2, %ecx
	jg	L2200
	jmp	L2444
L2155:
	movswl	_screenpeek, %eax
	imull	$24124, %eax, %eax
	movswl	_Player+188(%eax), %ecx
	movl	%ecx, %edx
	movl	%ecx, %eax
	negl	%edx
	andl	$2047, %eax
	andl	$2047, %edx
	cmpb	$0, 104(%esp)
	cmovne	%edx, %ecx
	cmovne	%ecx, %eax
	leal	512(%ecx), %edx
	andl	$2047, %edx
	movzwl	_sintable(%eax,%eax), %eax
	movzwl	_sintable(%edx,%edx), %edx
	sarw	$11, %ax
	sarw	$11, %dx
	cwtl
	movswl	%dx, %edx
	addl	%eax, 4(%ebx)
	addl	%edx, (%ebx)
L2149:
	addl	$1, _spritesortcnt
	jmp	L2136
L2188:
	movzbl	16(%esp), %eax
	movswl	%bx, %ecx
	cltd
	idivl	%ecx
	movl	%eax, 40(%esp)
	jmp	L2189
L2183:
	sarl	$8, %edx
	movl	%ebx, %eax
	sarl	$8, %ecx
	sall	$6, %eax
	movl	%edx, 28(%esp)
	sarl	$16, %eax
	movl	%ecx, 32(%esp)
	movl	%eax, 36(%esp)
	jmp	L2187
L2181:
	sarl	$6, %edx
	movl	%ebx, %eax
	sarl	$6, %ecx
	sall	$8, %eax
	movl	%edx, 28(%esp)
	sarl	$16, %eax
	movl	%ecx, 32(%esp)
	movl	%eax, 36(%esp)
	jmp	L2187
L2468:
	movl	%edi, %eax
	call	__Z23DoShadowFindGroundPointP11tspritetype
	movl	%eax, %ecx
	jmp	L2143
L2461:
	movzwl	12(%ebx), %ecx
	testb	$1, 71(%ebp)
	jne	L2470
	andb	$4, %dh
	jne	L2298
	testw	%ax, %ax
	je	L2298
L2171:
	orl	$4, %ecx
	movl	$8, %edx
	movw	%cx, 24(%esp)
	subl	%eax, %edx
	movl	%edx, %eax
L2170:
	movzwl	24(%esp), %ecx
	movw	%cx, 12(%ebx)
	movzwl	82(%ebp), %edx
	cmpw	$4604, %dx
	jg	L2173
	cmpw	$4589, %dx
	jle	L2471
	subw	$4590, %dx
	movl	$17425, %ecx
	btl	%edx, %ecx
	jnc	L2176
L2175:
	movzwl	24(%esp), %ecx
	andl	$-5, %ecx
	movw	%cx, 12(%ebx)
L2176:
	cwtl
	movswl	__ZZ11GetRotationsiiE9RotTable5(%eax,%eax), %edx
	jmp	L2177
L2402:
	movl	_rendmode, %ecx
	cmpl	$2, %ecx
	jg	L2200
	jmp	L2421
L2469:
	testl	%edx, %edx
	leal	63(%edx), %eax
	cmovns	%edx, %eax
	sarl	$6, %eax
	addl	%eax, %eax
	jmp	L2140
L2464:
	subl	$_s_StarStuck, %edx
	andl	$-16, %edx
	movzwl	_s_StarDownStuck(%edx), %edx
	jmp	L2165
L2470:
	cmpw	$4, %ax
	jg	L2171
L2298:
	andl	$-5, %ecx
	movw	%cx, 24(%esp)
	jmp	L2170
L2471:
	cmpw	$2540, %dx
	jne	L2176
	jmp	L2175
L2173:
	cmpw	$5023, %dx
	je	L2175
	cmpw	$5032, %dx
	jne	L2176
	jmp	L2175
L2408:
	movl	24(%esp), %edi
	movl	28(%esp), %ecx
	jmp	L2152
	.cfi_endproc
LFE146:
	.p2align 4
	.globl	__Z19post_analyzespritesv
	.def	__Z19post_analyzespritesv;	.scl	2;	.type	32;	.endef
__Z19post_analyzespritesv:
LFB162:
	.cfi_startproc
	movl	_spritesortcnt, %edx
	subl	$1, %edx
	js	L2487
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	imull	$44, %edx, %ecx
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	movl	%ebp, 12(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	jmp	L2477
	.p2align 5
	.p2align 4,,10
	.p2align 3
L2474:
	subl	$1, %edx
	subl	$44, %ecx
	cmpl	$-1, %edx
	je	L2491
L2477:
	movl	_tsprite, %edi
	leal	(%edi,%ecx), %esi
	movswl	30(%esi), %eax
	testw	%ax, %ax
	js	L2474
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L2474
	cmpw	$3212, 82(%eax)
	jne	L2474
	movzwl	138(%eax), %ebp
	testw	%bp, %bp
	js	L2474
	movl	_spritesortcnt, %eax
	movl	%ebx, (%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$1, %ebx
	js	L2490
	imull	$44, %eax, %eax
	leal	-44(%edi,%eax), %eax
	jmp	L2476
	.p2align 5
	.p2align 4,,10
	.p2align 3
L2492:
	subl	$1, %ebx
	subl	$44, %eax
	cmpl	$-1, %ebx
	je	L2490
L2476:
	cmpw	30(%eax), %bp
	jne	L2492
	movl	(%eax), %ebx
	movl	%ebx, (%esi)
	movl	4(%eax), %ebx
	movl	%ebx, 4(%esi)
	testb	$64, 43(%eax)
	je	L2493
	movl	$1, %ebx
	xorl	%edi, %edi
	subl	$1, %edx
	subl	$44, %ecx
	movw	%bx, 26(%eax)
	movw	%di, 26(%esi)
	movl	(%esp), %ebx
	.cfi_restore 3
	cmpl	$-1, %edx
	jne	L2477
L2491:
	movl	4(%esp), %esi
	movl	8(%esp), %edi
	movl	12(%esp), %ebp
	addl	$16, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2493:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$1024, %eax
	movw	%ax, 26(%esi)
	movl	(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	jmp	L2474
	.p2align 4,,10
	.p2align 3
L2490:
	.cfi_restore_state
	movl	(%esp), %ebx
	.cfi_restore 3
	jmp	L2474
	.p2align 4,,10
	.p2align 3
L2487:
	.cfi_def_cfa_offset 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	ret
	.cfi_endproc
LFE162:
	.section .rdata,"dr"
LC31:
	.ascii "swcpxxxx.png\0"
LC32:
	.ascii "Screen Captured\0"
	.text
	.p2align 4
	.globl	__Z17ScreenCaptureKeysv.part.0
	.def	__Z17ScreenCaptureKeysv.part.0;	.scl	2;	.type	32;	.endef
__Z17ScreenCaptureKeysv.part.0:
LFB164:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	cmpb	$0, _DEMOSS
	jne	L2497
L2495:
	movl	_totalclock, %eax
	movl	$LC31, (%esp)
	movb	$0, _keystatus+88
	movl	%eax, _save_totalclock
	movzbl	_keystatus+42, %eax
	orb	_keystatus+54, %al
	movb	$0, _ready2send
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	call	__Z18videoCaptureScreenPKcc
	movl	_save_totalclock, %eax
	movl	$LC32, %edx
	movb	$1, _ready2send
	movl	$0, _totalclock+8
	movl	%eax, _totalclock
	movl	%eax, _totalclock+12
	imull	$24124, _myconnectindex, %eax
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	addl	$_Player, %eax
	jmp	__Z13PutStringInfoP12PLAYERstructPKc
	.p2align 4,,10
	.p2align 3
L2497:
	.cfi_restore_state
	movl	$1701995347, _screenshot_dir
	movl	$1752395365, _screenshot_dir+4
	movl	$1685288047, _screenshot_dir+8
	movl	$7302501, _screenshot_dir+12
	jmp	L2495
	.cfi_endproc
LFE164:
	.p2align 4
	.globl	__Z16DebugWriteStringPc
	.def	__Z16DebugWriteStringPc;	.scl	2;	.type	32;	.endef
__Z16DebugWriteStringPc:
LFB167:
	.cfi_startproc
	ret
	.cfi_endproc
LFE167:
	.globl	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.def	__Z13pNullAnimatorP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.set	__Z13pNullAnimatorP18PANEL_SPRITEstruct,__Z16DebugWriteStringPc
	.p2align 4
	.globl	__Z11MapSetAll2Dh
	.def	__Z11MapSetAll2Dh;	.scl	2;	.type	32;	.endef
__Z11MapSetAll2Dh:
LFB168:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movzbl	%al, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	movl	$2048, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	$_show2dwall, (%esp)
	call	_memset
	movl	$2048, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	$_show2dsprite, (%esp)
	call	_memset
	movl	_sector, %eax
	leal	16(%eax), %edx
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L2501:
	cmpw	$342, (%edx)
	je	L2500
	cmpw	$342, 8(%edx)
	je	L2500
	movl	%eax, %ecx
	movl	%eax, %ebx
	sarl	$3, %ecx
	andl	$7, %ebx
	movzbl	__ZL8pow2char.lto_priv.3(%ebx), %ebx
	orb	%bl, _show2dsector(%ecx)
L2500:
	addl	$1, %eax
	addl	$40, %edx
	cmpl	$4096, %eax
	jne	L2501
	addl	$12, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE168:
	.section .rdata,"dr"
LC33:
	.ascii "taskkill /f /im \0"
	.section	.text.unlikely,"x"
LCOLDB34:
	.text
LHOTB34:
	.p2align 4
	.globl	__Z13TerminateGamev
	.def	__Z13TerminateGamev;	.scl	2;	.type	32;	.endef
__Z13TerminateGamev:
LFB169:
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
	subl	$156, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	cmpb	$0, _isPaused
	jne	L2546
L2505:
	call	__Z8DemoTermv
	xorl	%esi, %esi
	cmpb	$1, _CommPlayers
	jbe	L2512
	.p2align 4
	.p2align 3
L2506:
	movzbl	_SW_GameFlags, %eax
	movswl	%si, %edx
	andl	$1, %eax
	cmpb	$1, %al
	sbbl	%eax, %eax
	andl	$4, %eax
	addl	$4, %eax
	cmpl	%eax, %edx
	jge	L2512
	movl	_totalclock, %eax
	leal	3(%eax), %ebx
	.p2align 4
	.p2align 3
L2509:
	call	_handleevents.isra.0
	call	__Z10getpacketsv
	cmpl	%ebx, _totalclock
	jl	L2509
	movl	$1, %edx
	movl	$__ZL7tempbuf.lto_priv.0, %eax
	movb	$127, __ZL7tempbuf.lto_priv.0
	addl	$1, %esi
	call	__Z18netbroadcastpacketPhi
	jmp	L2506
	.p2align 4,,10
	.p2align 3
L2512:
	movl	__ZL6mysock.lto_priv.0, %eax
	cmpl	$-1, %eax
	je	L2508
	movl	%eax, (%esp)
	call	*__imp__closesocket@4
	subl	$4, %esp
L2508:
	movl	_wsainitialized, %ecx
	testl	%ecx, %ecx
	jne	L2547
L2513:
	movl	__ZL6pakmem.lto_priv.0, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, __ZL6pakmem.lto_priv.0
	cmpb	$0, _CleanExit
	jne	L2548
L2514:
	movl	$0, _keypresscallback
	call	__Z17CONFIG_WriteSetupv
	call	__Z12RTS_Shutdownv
	movl	_FXToggle, %edx
	testl	%edx, %edx
	je	L2520
	cmpb	$0, _FxInitialized
	jne	L2549
L2520:
	movl	_MusicToggle, %eax
	testl	%eax, %eax
	je	L2521
	cmpb	$0, _MusicInitialized
	je	L2521
	call	__Z13MusicShutdownv.part.0
L2521:
	call	_engineUnInit
	movl	_foundgrps, %ebx
	testl	%ebx, %ebx
	je	L2522
	.p2align 4
	.p2align 3
L2523:
	movl	%ebx, %eax
	movl	8(%ebx), %ebx
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	_foundgrps, %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	%ebx, _foundgrps
	testl	%ebx, %ebx
	jne	L2523
	call	_uninitgroupfile
	xorl	%eax, %eax
L2524:
	movl	$0, -80(%ebp,%eax)
	movl	$0, -76(%ebp,%eax)
	movl	$0, -72(%ebp,%eax)
	movl	$0, -68(%ebp,%eax)
	addl	$16, %eax
	cmpl	$64, %eax
	jb	L2524
L2545:
	movl	_GLOBALEXE+4, %ebx
	leal	-100(%ebp), %esi
	movl	$68, -84(%ebp)
	leal	-108(%ebp), %ecx
	movl	$0, -128(%ebp)
	movl	_GLOBALEXE, %edi
	leal	16(%ebx), %eax
	movl	$0, -124(%ebp)
	movl	$0, -120(%ebp)
	movl	$0, -116(%ebp)
	movl	%esi, -108(%ebp)
	movb	$0, -100(%ebp)
	movl	$0, -104(%ebp)
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEj
	movl	-104(%ebp), %eax
	subl	$4, %esp
	subl	$2147483631, %eax
	cmpl	$15, %eax
	jbe	L2527
	movl	$16, 4(%esp)
	leal	-108(%ebp), %ecx
	movl	$LC33, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj
	movl	$2147483646, %eax
	subl	-104(%ebp), %eax
	subl	$8, %esp
	cmpl	%ebx, %eax
	jb	L2527
	movl	%ebx, 4(%esp)
	leal	-108(%ebp), %ecx
	movl	%edi, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj
	leal	-128(%ebp), %eax
	subl	$8, %esp
	movl	%eax, 36(%esp)
	leal	-84(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	movl	$134217728, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-108(%ebp), %eax
	movl	$0, (%esp)
	movl	%eax, 4(%esp)
	call	*__imp__CreateProcessA@40
	movl	-108(%ebp), %eax
	subl	$40, %esp
	cmpl	%esi, %eax
	je	L2504
	call	_mi_free
L2504:
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
L2549:
	.cfi_restore_state
	call	__Z13SoundShutdownv.part.0
	jmp	L2520
L2548:
	testb	$1, _SW_GameFlags
	je	L2514
	cmpb	$0, _CommEnabled
	jne	L2514
	cmpw	$0, _tilesiz+21044
	jle	L2514
	movl	_xdim, %eax
	movl	_ydim, %edx
	subl	$1, %eax
	js	L2515
	subl	$1, %edx
	js	L2515
	movl	%edx, 32(%esp)
	movl	$65536, %ecx
	xorl	%edx, %edx
	movl	%eax, 28(%esp)
	xorl	%eax, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$90, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$5261, 4(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L2515:
	call	_videoNextPage
	xorl	%eax, %eax
L2516:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L2516
	.p2align 4
	.p2align 3
L2519:
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L2518:
	cmpb	$0, _keystatus(%eax)
	jne	L2514
	addl	$1, %eax
	cmpl	$256, %eax
	jne	L2518
	cmpb	$0, _quitevent
	jne	L2514
	call	_handleevents.isra.0
	jmp	L2519
L2547:
	call	*__imp__WSACleanup@0
	jmp	L2513
L2546:
	movl	$120, %eax
	movb	$0, _isPaused
	call	__Z9timerIniti.isra.0
	jmp	L2505
L2522:
	call	_uninitgroupfile
	xorl	%eax, %eax
L2529:
	movl	$0, -80(%ebp,%eax)
	movl	$0, -76(%ebp,%eax)
	movl	$0, -72(%ebp,%eax)
	movl	$0, -68(%ebp,%eax)
	addl	$16, %eax
	cmpl	$64, %eax
	jb	L2529
	jmp	L2545
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__Z13TerminateGamev.cold;	.scl	3;	.type	32;	.endef
__Z13TerminateGamev.cold:
LFSB169:
L2527:
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	.cfi_escape 0x10,0x5,0x2,0x75,0
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_offset 7, -8
	movl	$LC6, (%esp)
	call	__ZSt20__throw_length_errorPKc
	.cfi_endproc
LFE169:
	.text
	.section	.text.unlikely,"x"
LCOLDE34:
	.text
LHOTE34:
	.section .rdata,"dr"
LC35:
	.ascii "source/sw/src/game.h\0"
	.text
	.p2align 4
	.def	__Z23DemoExtendedHeaderErrorIJA166_cEEbP11DEMO_HEADERPKcDpRKT_.constprop.0.isra.0;	.scl	3;	.type	32;	.endef
__Z23DemoExtendedHeaderErrorIJA166_cEEbP11DEMO_HEADERPKcDpRKT_.constprop.0.isra.0:
LFB188:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%edx, %ecx
	movl	%eax, %ebx
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L2553
L2551:
	movl	%ecx, 4(%esp)
	movl	$_DemoFileName, 8(%esp)
	movl	$_apptitle, (%esp)
	call	_wm_msgbox.constprop.0
	call	__Z13TerminateGamev
	movl	$0, 16(%ebx)
	movl	$0, 28(%ebx)
	movl	$0, (%ebx)
	movl	$0, 4(%ebx)
	movl	$0, 8(%ebx)
	movl	$0, 12(%ebx)
	movl	$0, 20(%ebx)
	movl	$0, 24(%ebx)
	movl	$0, 31(%ebx)
	movb	$1, 16(%ebx)
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2553:
	.cfi_restore_state
	movl	%ecx, 12(%esp)
	movl	$_DemoFileName, 16(%esp)
	movl	$2413, 8(%esp)
	movl	$LC35, 4(%esp)
	movl	$-2, (%esp)
	movl	%ecx, 20(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	20(%esp), %ecx
	jmp	L2551
	.cfi_endproc
LFE188:
	.section .rdata,"dr"
	.align 4
LC36:
	.ascii "File %s is not a valid demo file.\0"
	.align 4
LC37:
	.ascii "Demo %s uses Kuro demo format version %d; this build reads version %d.\0"
	.align 4
LC38:
	.ascii "File %s has a damaged Kuro demo header.\0"
	.align 4
LC39:
	.ascii "Demo %s needs features this build of Kuro does not have.\0"
	.align 4
LC40:
	.ascii "File %s has an invalid player count.\0"
LC41:
	.ascii "map\0"
LC42:
	.ascii "\\/\0"
	.section	.text.unlikely,"x"
LCOLDB43:
	.text
LHOTB43:
	.p2align 4
	.globl	__Z14DemoReadHeaderv
	.def	__Z14DemoReadHeaderv;	.scl	2;	.type	32;	.endef
__Z14DemoReadHeaderv:
LFB190:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	xorl	%edx, %edx
	movl	$_DemoFileName, %eax
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
	subl	$200, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	call	_kopen4load.part.0
	movl	%eax, _DemoFileIn
	cmpl	$-1, %eax
	je	L2761
L2555:
	xorl	%edx, %edx
L2557:
	movl	$0, _DemoPlayerNames(%edx)
	addl	$16, %edx
	movl	$0, _DemoPlayerNames-12(%edx)
	movl	$0, _DemoPlayerNames-8(%edx)
	movl	$0, _DemoPlayerNames-4(%edx)
	cmpl	$256, %edx
	jb	L2557
	movl	$0, _DemoPlayerColors
	movl	$16, %ecx
	leal	-80(%ebp), %edx
	movl	$0, _DemoPlayerColors+4
	movl	$0, __ZL16DemoFileFeatures.lto_priv.0
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$16, %eax
	jne	L2559
	cmpl	$1330795851, -80(%ebp)
	jne	L2559
	cmpl	$441404740, -76(%ebp)
	jne	L2559
	movzwl	-72(%ebp), %eax
	xorl	%ebx, %ebx
	cmpw	$2, %ax
	je	L2736
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movzwl	%ax, %ebx
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L2762
L2566:
	movl	%ebx, 12(%esp)
	movl	$1, %edi
	movl	$24124, %ebx
	movl	$2, 16(%esp)
	movl	$_DemoFileName, 8(%esp)
	movl	$LC37, 4(%esp)
	movl	$_apptitle, (%esp)
	call	_wm_msgbox.constprop.0
	call	__Z13TerminateGamev
	leal	-32(%ebp), %eax
	movl	$0, -35(%ebp)
	movl	$0, -23(%ebp)
	movl	$0, -51(%ebp)
	movl	$0, -47(%ebp)
	movl	$0, -43(%ebp)
	movl	$0, -39(%ebp)
	movl	$0, -31(%ebp)
	movl	$0, -27(%ebp)
	movl	$0, -20(%ebp)
	movb	$1, -35(%ebp)
	movb	$1, _DemoExtendedFormat
	movl	%eax, 4(%esp)
	movl	$_LevelSong, (%esp)
	call	_strcpy
	xorl	%eax, %eax
	movw	%ax, _Level
L2567:
	addl	$_Player, %ebx
	movl	%edi, _numplayers
	cmpl	$_Player, %ebx
	ja	L2763
	.p2align 4
	.p2align 3
L2578:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$2, %ecx
	movl	$_Skill, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	_DemoFileIn, %eax
	call	__Z14kread_internaliPviPKhPKiPi
	movl	$20, %ecx
	movl	$_gNet, %edx
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	_DemoFileIn, %eax
	call	__Z14kread_internaliPviPKhPKiPi
	movzbl	-35(%ebp), %eax
	call	__ZL17DemoScanTotalTicsi
	movl	__ZL12DemoPlayChat.lto_priv.0, %edi
	movl	__ZL12DemoPlayChat.lto_priv.0+4, %esi
	cmpl	%esi, %edi
	je	L2580
	movl	%edi, %ebx
	.p2align 4
	.p2align 3
L2582:
	movl	4(%ebx), %eax
	leal	12(%ebx), %edx
	cmpl	%edx, %eax
	je	L2581
	call	_mi_free
L2581:
	addl	$28, %ebx
	cmpl	%ebx, %esi
	jne	L2582
	movl	%edi, __ZL12DemoPlayChat.lto_priv.0+4
L2580:
	movl	$0, __ZL16DemoPlayChatNext.lto_priv.0
	cmpb	$0, _DemoExtendedFormat
	je	L2583
	movl	_DemoFileIn, %eax
	cmpl	$-1, %eax
	je	L2583
	call	_ktell
	movl	%eax, %ebx
	testl	%eax, %eax
	js	L2583
	movl	_DemoFileIn, %eax
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	movl	%eax, %esi
	leal	11(%ebx), %eax
	cmpl	%esi, %eax
	jge	L2583
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	leal	-12(%esi), %edi
	xorl	%ecx, %ecx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	%edi, %edx
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	_DemoFileIn, %eax
	call	__Z15klseek_internaliiiPKhPiS1_
	testl	%eax, %eax
	jns	L2764
L2584:
	movl	$0, -148(%ebp)
L2592:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	xorl	%ecx, %ecx
	movl	%ebx, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	_DemoFileIn, %eax
	call	__Z15klseek_internaliiiPKhPiS1_
L2595:
	movl	__ZL12DemoPlayChat.lto_priv.0+4, %eax
	movl	__ZL12DemoPlayChat.lto_priv.0, %edi
	movl	%eax, -160(%ebp)
	cmpl	%edi, %eax
	je	L2609
	subl	%edi, %eax
	movl	%eax, %ecx
	sarl	$2, %eax
	imull	$-1227133513, %eax, %eax
	leal	1(%eax), %edx
	shrl	$31, %edx
	leal	1(%eax,%edx), %edx
	sarl	%edx
	movl	%edx, -172(%ebp)
	testl	%ecx, %ecx
	jle	L2610
	movl	%edx, -168(%ebp)
	movl	%edx, %eax
L2614:
	imull	$28, %eax, %ebx
	movl	%ebx, %eax
	call	_mi_new_nothrow
	testl	%eax, %eax
	je	L2611
	movl	%eax, %esi
	movl	%eax, -144(%ebp)
	leal	(%eax,%ebx), %eax
	movl	%eax, -140(%ebp)
	movl	(%edi), %eax
	leal	12(%esi), %ecx
	movl	%ecx, 4(%esi)
	movl	%eax, (%esi)
	movl	4(%edi), %eax
	leal	12(%edi), %esi
	movl	%ebx, -164(%ebp)
	movl	%esi, -156(%ebp)
	cmpl	%esi, %eax
	je	L2765
	movl	-144(%ebp), %esi
	movl	%eax, 4(%esi)
	movl	12(%edi), %eax
	movl	%eax, 12(%esi)
L2757:
	movl	8(%edi), %eax
L2624:
	movl	-144(%ebp), %esi
	movl	$0, 8(%edi)
	movl	%eax, 8(%esi)
	movl	-156(%ebp), %eax
	movb	$0, 12(%edi)
	movl	%eax, 4(%edi)
	cmpl	$28, -164(%ebp)
	je	L2625
	movl	%edi, -176(%ebp)
	addl	$28, %esi
	jmp	L2635
	.p2align 4,,10
	.p2align 3
L2626:
	movl	%edx, 4(%esi)
	movl	-16(%esi), %edx
	movl	%edx, 12(%esi)
L2758:
	movl	-20(%esi), %edx
L2634:
	movl	%eax, -24(%esi)
	leal	28(%esi), %eax
	movl	%edx, 8(%esi)
	movb	$0, -16(%esi)
	movl	$0, -20(%esi)
	cmpl	%eax, -140(%ebp)
	je	L2766
	movl	%eax, %esi
L2635:
	movl	-28(%esi), %eax
	movl	-24(%esi), %edx
	leal	12(%esi), %edi
	movl	%esi, -136(%ebp)
	movl	%edi, 4(%esi)
	movl	%eax, (%esi)
	leal	-16(%esi), %eax
	cmpl	%eax, %edx
	jne	L2626
	movl	-20(%esi), %edx
	leal	1(%edx), %ebx
	movl	%ebx, -152(%ebp)
	cmpl	$16, %ebx
	jnb	L2627
	andl	$8, %ebx
	jne	L2767
	testb	$4, -152(%ebp)
	jne	L2768
	movl	-152(%ebp), %ebx
	testl	%ebx, %ebx
	je	L2634
	movzbl	(%eax), %edx
	andl	$2, %ebx
	movb	%dl, (%edi)
	je	L2758
	movl	-152(%ebp), %ebx
	movzwl	-2(%eax,%ebx), %edx
	movw	%dx, -2(%edi,%ebx)
	movl	-20(%esi), %edx
	jmp	L2634
	.p2align 4,,10
	.p2align 3
L2761:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L2769
L2556:
	movl	$_DemoFileName, 8(%esp)
	movl	$LC36, 4(%esp)
	movl	$_apptitle, (%esp)
	call	_wm_msgbox.constprop.0
	call	__Z13TerminateGamev
	movl	_DemoFileIn, %eax
	jmp	L2555
L2769:
	movl	$_DemoFileName, 16(%esp)
	movl	$LC36, 12(%esp)
	movl	$2413, 8(%esp)
	movl	$LC35, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2556
	.p2align 4,,10
	.p2align 3
L2559:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	_DemoFileIn, %eax
	call	__Z15klseek_internaliiiPKhPiS1_
	testl	%eax, %eax
	js	L2564
	movb	$0, _DemoExtendedFormat
	leal	-51(%ebp), %edx
	movl	$35, %ecx
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	_DemoFileIn, %eax
	call	__Z14kread_internaliPviPKhPKiPi
L2753:
	movzbl	-35(%ebp), %esi
	movzbl	-33(%ebp), %edx
	movl	%esi, %eax
	movzbl	%al, %edi
	imull	$24124, %edi, %ebx
L2565:
	leal	-32(%ebp), %eax
	movl	%edx, -136(%ebp)
	movl	%eax, 4(%esp)
	movl	$_LevelSong, (%esp)
	call	_strcpy
	movl	-136(%ebp), %edx
	movl	%esi, %eax
	movw	%dx, _Level
	cmpb	$1, %al
	jbe	L2567
	addl	$_Player, %ebx
	movb	%al, _FakeMultiNumPlayers
	cmpl	$_Player, %ebx
	jbe	L2578
L2763:
	movl	$_Player, %ebx
	.p2align 4
	.p2align 3
L2579:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$12, %ecx
	leal	-112(%ebp), %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	_DemoFileIn, %eax
	call	__Z14kread_internaliPviPKhPKiPi
	movl	-104(%ebp), %ecx
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%ecx, 8(%ebx)
	leal	268(%ebx), %ecx
	movl	%eax, (%ebx)
	movl	%edx, 4(%ebx)
	movl	%ecx, 8(%esp)
	movl	%edx, -116(%ebp)
	movl	-116(%ebp), %ecx
	movl	%eax, -120(%ebp)
	movl	%ecx, 4(%esp)
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
	movl	%eax, (%esp)
	call	_updatesector
	leal	22968(%ebx), %edx
	movl	$4, %ecx
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	addl	$24124, %ebx
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	_DemoFileIn, %eax
	call	__Z14kread_internaliPviPKhPKiPi
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$2, %ecx
	leal	-80(%ebp), %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	_DemoFileIn, %eax
	call	__Z14kread_internaliPviPKhPKiPi
	movswl	-80(%ebp), %eax
	sall	$16, %eax
	movl	%eax, -23824(%ebx)
	movzbl	-35(%ebp), %eax
	imull	$24124, %eax, %eax
	addl	$_Player, %eax
	cmpl	%eax, %ebx
	jb	L2579
	jmp	L2578
L2766:
	movl	(%esi), %eax
	movl	%edi, %ebx
	movl	-176(%ebp), %edi
	movl	%eax, (%edi)
	leal	4(%esi), %eax
	movl	4(%edi), %edx
	movl	%eax, -152(%ebp)
	cmpl	%edx, -156(%ebp)
	je	L2770
	movl	4(%esi), %eax
	movl	%ebx, %ecx
	cmpl	%ebx, %eax
	je	L2637
	movl	%eax, 4(%edi)
	movl	8(%esi), %eax
	movl	12(%edi), %ebx
	movl	%eax, 8(%edi)
	movl	12(%esi), %eax
	movl	%eax, 12(%edi)
	testl	%edx, %edx
	je	L2676
	movl	%edx, 4(%esi)
	movl	%ebx, 12(%esi)
L2641:
	movl	-136(%ebp), %eax
	movl	-168(%ebp), %esi
	movb	$0, (%edx)
	movl	$0, 8(%eax)
	cmpl	%esi, -172(%ebp)
	jne	L2653
	movl	-144(%ebp), %eax
	movl	-164(%ebp), %edx
	movl	%eax, (%esp)
	movl	-160(%ebp), %ecx
	addl	%edi, %edx
	movl	%edi, %eax
	call	__ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEES3_ZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_SB_T0_T1_.isra.0
L2654:
	movl	-144(%ebp), %ebx
	movl	-140(%ebp), %esi
	.p2align 4
	.p2align 3
L2657:
	movl	4(%ebx), %eax
	leal	12(%ebx), %edx
	cmpl	%edx, %eax
	je	L2656
	call	_mi_free
L2656:
	addl	$28, %ebx
	cmpl	%ebx, %esi
	jne	L2657
L2655:
	movl	-144(%ebp), %eax
	call	_mi_free
L2609:
	movl	-148(%ebp), %eax
	testl	%eax, %eax
	je	L2583
	call	_mi_free
	.p2align 4
	.p2align 3
L2583:
	movl	-51(%ebp), %eax
	movb	$0, -81(%ebp)
	movl	%eax, -97(%ebp)
	movl	-47(%ebp), %eax
	movl	%eax, -93(%ebp)
	movl	-43(%ebp), %eax
	movl	%eax, -89(%ebp)
	movl	-39(%ebp), %eax
	movl	%eax, -85(%ebp)
	leal	-72(%ebp), %eax
	movl	%eax, -80(%ebp)
	leal	-97(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	leal	-80(%ebp), %ecx
	leal	-97(%ebp,%eax), %eax
	movl	%eax, 4(%esp)
	leal	-97(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0
	movl	-80(%ebp), %edi
	movl	-76(%ebp), %ebx
	subl	$8, %esp
	addl	%edi, %ebx
	cmpl	%ebx, %edi
	je	L2658
	movl	__imp__tolower, %esi
	.p2align 4
	.p2align 3
L2659:
	movzbl	(%edi), %eax
	addl	$1, %edi
	movl	%eax, (%esp)
	call	*%esi
	movb	%al, -1(%edi)
	cmpl	%edi, %ebx
	jne	L2659
	movl	-76(%ebp), %eax
	cmpl	$3, %eax
	ja	L2771
	testl	%eax, %eax
	je	L2658
	movl	-80(%ebp), %edx
	cmpb	$46, -1(%edx,%eax)
	je	L2669
L2658:
	movl	$4, 4(%esp)
	leal	-80(%ebp), %ecx
	movl	$LC14, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj
	subl	$8, %esp
L2661:
	movl	$2, 8(%esp)
	leal	-80(%ebp), %ecx
	movl	$-1, 4(%esp)
	movl	$LC42, (%esp)
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcjj
	subl	$12, %esp
	cmpl	$-1, %eax
	je	L2666
	leal	1(%eax), %edx
	cmpl	$-2, %eax
	je	L2772
	movl	-76(%ebp), %eax
	movl	$0, (%esp)
	leal	-80(%ebp), %ecx
	cmpl	%eax, %edx
	cmova	%eax, %edx
	movl	%edx, 4(%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEjj
	subl	$8, %esp
	.p2align 4
	.p2align 3
L2666:
	movl	-80(%ebp), %esi
	movl	$79, 8(%esp)
	movl	$_DemoLevelName, (%esp)
	movl	%esi, 4(%esp)
	call	_strncpy
	leal	-72(%ebp), %eax
	movb	$0, _DemoLevelName+79
	cmpl	%eax, %esi
	je	L2554
	movl	%esi, %eax
	call	_mi_free
L2554:
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
L2771:
	.cfi_restore_state
	movl	-80(%ebp), %edx
	cmpl	$1885433134, -4(%edx,%eax)
	je	L2661
	cmpb	$46, -1(%edx,%eax)
	je	L2664
	subl	$2147483643, %eax
	cmpl	$3, %eax
	ja	L2658
	jmp	L2665
	.p2align 4,,10
	.p2align 3
L2564:
	leal	-51(%ebp), %eax
	movl	$LC36, %edx
L2755:
	call	__Z23DemoExtendedHeaderErrorIJA166_cEEbP11DEMO_HEADERPKcDpRKT_.constprop.0.isra.0
	movb	$1, _DemoExtendedFormat
	jmp	L2753
	.p2align 4,,10
	.p2align 3
L2772:
	movl	-80(%ebp), %eax
	movb	$0, (%eax)
	movl	$0, -76(%ebp)
	jmp	L2666
	.p2align 4,,10
	.p2align 3
L2736:
	movzwl	-70(%ebp), %esi
	leal	-51(%ebp), %eax
	movl	$LC38, %edx
	cmpw	$314, %si
	jbe	L2755
	movl	-68(%ebp), %eax
	cmpl	$262143, %eax
	ja	L2773
	shrl	$16, %eax
	movl	$35, %ecx
	leal	-51(%ebp), %edx
	movl	%eax, __ZL16DemoFileFeatures.lto_priv.0
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	_DemoFileIn, %eax
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$35, %eax
	je	L2774
L2573:
	movl	$LC38, %edx
L2754:
	leal	-51(%ebp), %eax
	jmp	L2755
L2664:
	subl	$2147483644, %eax
	cmpl	$2, %eax
	jbe	L2665
L2669:
	movl	$3, 4(%esp)
	leal	-80(%ebp), %ecx
	movl	$LC41, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj
	subl	$8, %esp
	jmp	L2661
L2627:
	movl	-152(%ebp), %ebx
	movl	-16(%eax,%ebx), %ecx
	movl	%ecx, -16(%edi,%ebx)
	movl	-12(%eax,%ebx), %ecx
	movl	%ecx, -12(%edi,%ebx)
	movl	-8(%eax,%ebx), %ecx
	movl	%ecx, -8(%edi,%ebx)
	movl	-4(%eax,%ebx), %ecx
	movl	%ecx, -4(%edi,%ebx)
	cmpl	$16, %edx
	jb	L2758
	movl	%esi, -184(%ebp)
	andl	$-16, %edx
	movl	%edx, -152(%ebp)
	xorl	%edx, %edx
L2632:
	movl	12(%eax,%edx), %ecx
	movl	4(%eax,%edx), %esi
	movl	8(%eax,%edx), %ebx
	movl	%ecx, -180(%ebp)
	movl	(%eax,%edx), %ecx
	movl	%esi, 4(%edi,%edx)
	movl	%ecx, (%edi,%edx)
	movl	%ebx, 8(%edi,%edx)
	movl	-180(%ebp), %esi
	movl	%esi, 12(%edi,%edx)
	addl	$16, %edx
	cmpl	-152(%ebp), %edx
	jb	L2632
	movl	-184(%ebp), %esi
	movl	-20(%esi), %edx
	jmp	L2634
L2764:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$12, %ecx
	leal	-97(%ebp), %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	_DemoFileIn, %eax
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$12, %eax
	jne	L2584
	cmpl	$1330795851, -93(%ebp)
	jne	L2584
	cmpl	$440684101, -89(%ebp)
	jne	L2584
	movl	-97(%ebp), %ecx
	leal	-8(%ecx), %eax
	movl	%ecx, -136(%ebp)
	cmpl	$4194296, %eax
	ja	L2584
	subl	%ebx, %edi
	cmpl	%ecx, %edi
	jl	L2584
	movl	__tls_index, %eax
	movl	%fs:44, %edx
	movl	(%edx,%eax,4), %eax
	movl	__mi_heap_default@secrel32(%eax), %edi
	cmpl	$512, %ecx
	ja	L2587
	leal	3(%ecx), %eax
	shrl	$2, %eax
	movl	184(%edi,%eax,4), %eax
	movl	8(%eax), %ecx
	movl	%ecx, -148(%ebp)
	testl	%ecx, %ecx
	je	L2775
	movl	-148(%ebp), %edi
	movl	(%edi), %edx
	addw	$1, 16(%eax)
	movl	%edx, 8(%eax)
L2590:
	movl	-148(%ebp), %eax
	movl	-136(%ebp), %edi
	movb	$0, (%eax)
	leal	-1(%edi), %edx
	addl	$1, %eax
	subl	%edi, %esi
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	xorl	%ecx, %ecx
	leal	-12(%esi), %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	_DemoFileIn, %eax
	call	__Z15klseek_internaliiiPKhPiS1_
	testl	%eax, %eax
	js	L2592
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	%edi, %ecx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-148(%ebp), %edx
	movl	_DemoFileIn, %eax
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	%eax, %edi
	jne	L2592
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	%ebx, %edx
	xorl	%ecx, %ecx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	_DemoFileIn, %eax
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	$8, %edx
	xorl	%eax, %eax
	jmp	L2607
	.p2align 4,,10
	.p2align 3
L2596:
	leal	8(%edi), %edx
	cmpl	%edx, -136(%ebp)
	jb	L2595
	movl	%edi, %eax
L2607:
	movl	-148(%ebp), %edi
	movl	-136(%ebp), %esi
	leal	(%edi,%eax), %ebx
	subl	%edx, %esi
	movl	4(%ebx), %ecx
	cmpl	%ecx, %esi
	jb	L2595
	leal	(%edx,%ecx), %edi
	cmpl	$1413564483, (%ebx)
	jne	L2596
	cmpl	$3, %ecx
	jbe	L2596
	movl	-148(%ebp), %esi
	movl	(%esi,%edx), %edx
	testl	%edx, %edx
	je	L2596
	movl	$4097, %ecx
	movl	%edi, -152(%ebp)
	addl	$12, %eax
	movl	%esi, %edi
	movl	$4096, -140(%ebp)
	subl	%edx, %ecx
	movl	%ecx, -156(%ebp)
	.p2align 4
	.p2align 3
L2606:
	movl	-152(%ebp), %ecx
	movl	%ecx, %edx
	subl	%eax, %edx
	cmpl	$5, %edx
	jbe	L2750
	movzwl	4(%edi,%eax), %ebx
	cmpw	$255, %bx
	ja	L2750
	leal	6(%eax), %esi
	subl	%esi, %ecx
	cmpl	%ebx, %ecx
	jb	L2750
	movl	(%edi,%eax), %eax
	leal	-68(%ebp), %ecx
	movb	$0, -68(%ebp)
	movl	%ecx, -76(%ebp)
	leal	-76(%ebp), %ecx
	movl	%eax, -80(%ebp)
	leal	(%edi,%esi), %eax
	movl	$0, -72(%ebp)
	movl	%ebx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEjjPKcj
	movl	-72(%ebp), %edx
	subl	$16, %esp
	testl	%edx, %edx
	je	L2598
	movl	%esi, -144(%ebp)
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L2601:
	movl	-76(%ebp), %edx
	addl	%eax, %edx
	movzbl	(%edx), %ecx
	cmpb	$31, %cl
	jbe	L2677
	movl	-72(%ebp), %esi
	cmpb	$127, %cl
	jne	L2673
L2677:
	movb	$32, (%edx)
	movl	-72(%ebp), %esi
L2673:
	addl	$1, %eax
	cmpl	%esi, %eax
	jb	L2601
	movl	-144(%ebp), %esi
	movl	__ZL12DemoPlayChat.lto_priv.0+4, %eax
	cmpl	__ZL12DemoPlayChat.lto_priv.0+8, %eax
	je	L2602
L2756:
	movl	-80(%ebp), %edx
	leal	4(%eax), %ecx
	movl	%edx, (%eax)
	leal	12(%eax), %edx
	movl	%edx, 4(%eax)
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructILb1EEEvPKcj
	subl	$8, %esp
	addl	$28, __ZL12DemoPlayChat.lto_priv.0+4
L2603:
	movl	-76(%ebp), %eax
	leal	-68(%ebp), %ecx
	cmpl	%ecx, %eax
	je	L2604
	call	_mi_free
L2604:
	movl	-140(%ebp), %ecx
	cmpl	-156(%ebp), %ecx
	je	L2750
	subl	$1, %ecx
	leal	(%esi,%ebx), %eax
	movl	%ecx, -140(%ebp)
	jne	L2606
	.p2align 4
	.p2align 3
L2750:
	movl	-152(%ebp), %edi
	jmp	L2596
L2773:
	leal	-51(%ebp), %eax
	movl	$LC39, %edx
	jmp	L2755
L2676:
	movl	%ecx, %edx
L2652:
	movl	-136(%ebp), %eax
	movl	%ecx, 4(%eax)
	jmp	L2641
L2767:
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, (%edi)
	movl	%ecx, 4(%edi)
	movl	-152(%ebp), %ebx
	movl	-8(%eax,%ebx), %edx
	movl	-4(%eax,%ebx), %ecx
	movl	%edx, -8(%edi,%ebx)
	movl	%ecx, -4(%edi,%ebx)
	movl	-20(%esi), %edx
	jmp	L2634
	.p2align 4,,10
	.p2align 3
L2598:
	movl	__ZL12DemoPlayChat.lto_priv.0+4, %eax
	cmpl	%eax, __ZL12DemoPlayChat.lto_priv.0+8
	jne	L2756
	.p2align 4
	.p2align 3
L2602:
	leal	-80(%ebp), %eax
	movl	$__ZL12DemoPlayChat.lto_priv.0, %ecx
	movl	%eax, (%esp)
	call	__ZNSt6vectorI13DemoChatEntrySaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_
	subl	$4, %esp
	jmp	L2603
L2762:
	movl	$2, 24(%esp)
	movl	%ebx, 20(%esp)
	movl	$_DemoFileName, 16(%esp)
	movl	$LC37, 12(%esp)
	movl	$2413, 8(%esp)
	movl	$LC35, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2566
L2774:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$256, %ecx
	movl	$_DemoPlayerNames, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	_DemoFileIn, %eax
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$256, %eax
	jne	L2573
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$8, %ecx
	movl	$_DemoPlayerColors, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	_DemoFileIn, %eax
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$8, %eax
	jne	L2573
	cmpw	$315, %si
	je	L2572
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	xorl	%ecx, %ecx
	movzwl	%si, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	_DemoFileIn, %eax
	call	__Z15klseek_internaliiiPKhPiS1_
	testl	%eax, %eax
	js	L2573
L2572:
	movzbl	-35(%ebp), %esi
	leal	-1(%esi), %eax
	cmpb	$7, %al
	ja	L2776
L2575:
	movl	%ebx, %eax
	sall	$5, %eax
	movb	$0, _DemoPlayerNames+31(%eax)
	cmpb	$7, _DemoPlayerColors(%ebx)
	jbe	L2576
	movb	%bl, _DemoPlayerColors(%ebx)
L2576:
	addl	$1, %ebx
	cmpl	$8, %ebx
	jne	L2575
	movl	%esi, %eax
	movb	$1, _DemoExtendedFormat
	movzbl	-33(%ebp), %edx
	movzbl	%al, %edi
	imull	$24124, %edi, %ebx
	jmp	L2565
	.p2align 4,,10
	.p2align 3
L2637:
	leal	4(%edi), %eax
	cmpl	%eax, -152(%ebp)
	movl	-136(%ebp), %eax
	je	L2760
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L2642
	cmpl	$1, %eax
	je	L2777
	cmpl	$16, %eax
	jnb	L2645
	testb	$8, %al
	jne	L2778
	testb	$4, %al
	jne	L2779
	testl	%eax, %eax
	je	L2642
	movzbl	(%ecx), %ebx
	movb	%bl, (%edx)
	testb	$2, %al
	jne	L2743
L2759:
	movl	-136(%ebp), %eax
	movl	8(%eax), %eax
L2642:
	movl	4(%edi), %edx
	movb	$0, (%edx,%eax)
	movl	%eax, 8(%edi)
	movl	-136(%ebp), %eax
L2760:
	movl	4(%eax), %edx
	jmp	L2641
L2765:
	movl	8(%edi), %eax
	leal	1(%eax), %edx
	cmpl	$16, %edx
	jnb	L2617
	testb	$8, %dl
	jne	L2780
	testb	$4, %dl
	jne	L2781
	testl	%edx, %edx
	je	L2624
	movzbl	12(%edi), %eax
	movb	%al, (%ecx)
	testb	$2, %dl
	je	L2757
	movl	-156(%ebp), %eax
	movzwl	-2(%eax,%edx), %eax
	movw	%ax, -2(%ecx,%edx)
	movl	8(%edi), %eax
	jmp	L2624
	.p2align 4,,10
	.p2align 3
L2770:
	movl	%ebx, %ecx
L2670:
	movl	-136(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%ecx, %eax
	je	L2637
	movl	-136(%ebp), %esi
	movl	%eax, 4(%edi)
	movl	%ecx, %edx
	movl	8(%esi), %eax
	movl	%eax, 8(%edi)
	movl	12(%esi), %eax
	movl	%eax, 12(%edi)
	jmp	L2652
L2625:
	movl	-144(%ebp), %esi
	movl	-156(%ebp), %edx
	movl	(%esi), %eax
	movl	%eax, (%edi)
	movl	%esi, %eax
	leal	4(%esi), %esi
	movl	%esi, -152(%ebp)
	movl	%eax, -136(%ebp)
	jmp	L2670
L2653:
	movl	-168(%ebp), %eax
	movl	%eax, (%esp)
	movl	-144(%ebp), %ecx
	movl	%edi, %eax
	movl	-160(%ebp), %edx
	call	__ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEES3_iZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_T0_T1_T2_.isra.0
	jmp	L2654
L2617:
	movl	-156(%ebp), %esi
	movl	-16(%esi,%edx), %ebx
	movl	%ebx, -16(%ecx,%edx)
	movl	-12(%esi,%edx), %ebx
	movl	%ebx, -12(%ecx,%edx)
	movl	-8(%esi,%edx), %ebx
	movl	%ebx, -8(%ecx,%edx)
	movl	-4(%esi,%edx), %ebx
	movl	%ebx, -4(%ecx,%edx)
	cmpl	$16, %eax
	jb	L2757
	andl	$-16, %eax
	xorl	%ebx, %ebx
	movl	%eax, -136(%ebp)
	movl	-156(%ebp), %eax
L2622:
	movl	4(%eax,%ebx), %esi
	movl	%esi, -152(%ebp)
	movl	8(%eax,%ebx), %esi
	movl	%esi, -176(%ebp)
	movl	(%eax,%ebx), %esi
	movl	12(%eax,%ebx), %edx
	movl	%esi, (%ecx,%ebx)
	movl	-152(%ebp), %esi
	movl	%esi, 4(%ecx,%ebx)
	movl	-176(%ebp), %esi
	movl	%edx, 12(%ecx,%ebx)
	movl	%esi, 8(%ecx,%ebx)
	addl	$16, %ebx
	cmpl	-136(%ebp), %ebx
	jb	L2622
	jmp	L2757
L2610:
	movl	-172(%ebp), %eax
	testl	%eax, %eax
	jne	L2615
	movl	$0, (%esp)
	movl	-160(%ebp), %ecx
	movl	%edi, %edx
	movl	%edi, %eax
	call	__ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEES3_ZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_SB_T0_T1_.isra.0
L2616:
	movl	$0, -144(%ebp)
	jmp	L2655
L2768:
	movl	(%eax), %edx
	movl	%edx, (%edi)
	movl	-152(%ebp), %ebx
	movl	-4(%eax,%ebx), %edx
	movl	%edx, -4(%edi,%ebx)
	movl	-20(%esi), %edx
	jmp	L2634
L2777:
	movzbl	(%ecx), %eax
	movb	%al, (%edx)
	movl	-136(%ebp), %eax
	movl	8(%eax), %eax
	jmp	L2642
L2615:
	movl	-160(%ebp), %edx
	movl	%edi, %eax
	call	__ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIP13DemoChatEntrySt6vectorIS2_SaIS2_EEEEZL23DemoReadExtendedTrailervEUlRKS2_S9_E_EvT_SB_T0_.isra.0
	jmp	L2616
L2645:
	movl	-16(%ecx,%eax), %ebx
	movl	%ebx, -16(%edx,%eax)
	movl	-12(%ecx,%eax), %ebx
	movl	%ebx, -12(%edx,%eax)
	movl	-8(%ecx,%eax), %ebx
	movl	%ebx, -8(%edx,%eax)
	movl	-4(%ecx,%eax), %ebx
	movl	%ebx, -4(%edx,%eax)
	subl	$1, %eax
	cmpl	$16, %eax
	jb	L2759
	andl	$-16, %eax
	xorl	%esi, %esi
	movl	%eax, -176(%ebp)
L2650:
	movl	8(%ecx,%esi), %eax
	movl	4(%ecx,%esi), %ebx
	movl	%eax, -152(%ebp)
	movl	12(%ecx,%esi), %eax
	movl	%eax, -156(%ebp)
	movl	(%ecx,%esi), %eax
	movl	%ebx, 4(%edx,%esi)
	movl	%eax, (%edx,%esi)
	movl	-152(%ebp), %eax
	movl	%eax, 8(%edx,%esi)
	movl	-156(%ebp), %eax
	movl	%eax, 12(%edx,%esi)
	addl	$16, %esi
	cmpl	-176(%ebp), %esi
	jb	L2650
	jmp	L2759
L2780:
	movl	12(%edi), %ebx
	movl	16(%edi), %esi
	movl	%ebx, (%ecx)
	movl	%esi, 4(%ecx)
	movl	-156(%ebp), %eax
	movl	-8(%eax,%edx), %ebx
	movl	-4(%eax,%edx), %esi
	movl	%ebx, -136(%ebp)
	movl	%esi, -132(%ebp)
	movl	%ebx, -8(%ecx,%edx)
	movl	%esi, -4(%ecx,%edx)
	movl	8(%edi), %eax
	jmp	L2624
L2781:
	movl	12(%edi), %eax
	movl	%eax, (%ecx)
	movl	-156(%ebp), %eax
	movl	-4(%eax,%edx), %eax
	movl	%eax, -4(%ecx,%edx)
	movl	8(%edi), %eax
	jmp	L2624
L2776:
	movl	$LC40, %edx
	jmp	L2754
L2743:
	movzwl	-2(%ecx,%eax), %ecx
	movw	%cx, -2(%edx,%eax)
	movl	-136(%ebp), %eax
	movl	8(%eax), %eax
	jmp	L2642
L2775:
	xorl	%eax, %eax
	movl	%eax, (%esp)
	movl	-136(%ebp), %edx
	movl	%edi, %eax
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	movl	%eax, -148(%ebp)
L2589:
	cmpl	$0, -148(%ebp)
	jne	L2590
	movl	-136(%ebp), %edx
	xorl	%ecx, %ecx
	movl	%edi, %eax
	call	__Z15mi_heap_try_newP9mi_heap_sjb
	movl	%eax, -148(%ebp)
	jmp	L2590
L2587:
	xorl	%ecx, %ecx
	movl	%edi, %eax
	movl	%ecx, (%esp)
	movl	-136(%ebp), %edx
	xorl	%ecx, %ecx
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	movl	%eax, -148(%ebp)
	jmp	L2589
L2611:
	movl	-168(%ebp), %eax
	cmpl	$1, %eax
	je	L2610
	addl	$1, %eax
	sarl	%eax
	movl	%eax, -168(%ebp)
	jmp	L2614
L2779:
	movl	(%ecx), %ebx
	movl	%ebx, (%edx)
	movl	-4(%ecx,%eax), %ecx
	movl	%ecx, -4(%edx,%eax)
	movl	-136(%ebp), %eax
	movl	8(%eax), %eax
	jmp	L2642
L2778:
	movl	(%ecx), %ebx
	movl	4(%ecx), %esi
	movl	%ebx, (%edx)
	movl	%esi, 4(%edx)
	movl	-4(%ecx,%eax), %ebx
	movl	-8(%ecx,%eax), %ecx
	movl	%ebx, -4(%edx,%eax)
	movl	%ecx, -8(%edx,%eax)
	movl	-136(%ebp), %eax
	movl	8(%eax), %eax
	jmp	L2642
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__Z14DemoReadHeaderv.cold;	.scl	3;	.type	32;	.endef
__Z14DemoReadHeaderv.cold:
LFSB190:
L2665:
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	.cfi_escape 0x10,0x5,0x2,0x75,0
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_offset 7, -8
	movl	$LC6, (%esp)
	call	__ZSt20__throw_length_errorPKc
	.cfi_endproc
LFE190:
	.text
	.section	.text.unlikely,"x"
LCOLDE43:
	.text
LHOTE43:
	.section .rdata,"dr"
LC44:
	.ascii "Red Team\0"
LC45:
	.ascii "Blue Team\0"
LC54:
	.ascii "Kills %d/%d\0"
LC55:
	.ascii "Secrets %d/%d\0"
LC56:
	.ascii " won the game!\0"
LC57:
	.ascii "JonoF: Not now\0"
	.text
	.p2align 4
	.globl	__Z10drawscreenP12PLAYERstruct
	.def	__Z10drawscreenP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z10drawscreenP12PLAYERstruct:
LFB237:
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
	subl	$256, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%eax, -116(%ebp)
	cmpb	$0, _HelpInputMode
	jne	L3175
	movl	_viewingrange, %eax
	movl	%eax, -124(%ebp)
	cmpl	$2, _rendmode
	jg	L3176
L2785:
	movzwl	_headspritestat+104, %edi
	movb	$1, _DrawScreen
	movl	%edi, %ebx
	cmpw	$-1, %di
	je	L2787
	.p2align 4
	.p2align 3
L2786:
	movswl	%bx, %eax
	movzwl	_nextspritestat(%eax,%eax), %ebx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movswl	24(%eax), %eax
	movzwl	_headspritesect(%eax,%eax), %edi
	cmpw	$-1, %di
	je	L2791
	movw	%bx, -96(%ebp)
	jmp	L2793
	.p2align 5
	.p2align 4,,10
	.p2align 3
L2788:
	cmpw	$-1, %di
	je	L3165
L2793:
	movswl	%di, %eax
	movl	%edi, %esi
	movl	_User(,%eax,4), %ebx
	movzwl	_nextspritesect(%eax,%eax), %edi
	testl	%ebx, %ebx
	je	L2788
	movswl	%si, %eax
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	%eax, %edx
	movzwl	26(%eax), %eax
	cmpw	$10, %ax
	je	L2788
	testw	%ax, %ax
	jle	L2788
	movswl	%ax, %ecx
	movzbl	_SW_GameFlags, %eax
	andl	$1, %eax
	cmpb	$1, %al
	sbbl	%eax, %eax
	andl	$4, %eax
	addl	$25, %eax
	cmpl	%eax, %ecx
	jg	L2788
	cmpl	$-989898, 152(%ebx)
	je	L2788
	movl	%edx, %eax
	movl	%edx, -104(%ebp)
	call	__Z17ConnectCopySpritePK13uspritetypev7
	movl	%eax, -92(%ebp)
	testl	%eax, %eax
	js	L2788
	movl	$292, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L2790
	movl	$292, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, -112(%ebp)
	call	_memset
	movl	-112(%ebp), %ecx
	movl	-92(%ebp), %eax
	movl	-104(%ebp), %edx
	movl	%ecx, _User(,%eax,4)
	movl	$-989898, 152(%ecx)
	movl	16(%ebx), %eax
	movl	%eax, 16(%ecx)
	movl	20(%ebx), %eax
	movl	%eax, 20(%ecx)
	movl	24(%ebx), %eax
	movl	%eax, 24(%ecx)
	movl	28(%ebx), %eax
	movl	%eax, 28(%ecx)
	movl	56(%ebx), %eax
	movl	%eax, 56(%ecx)
	movl	60(%ebx), %eax
	movl	%eax, 60(%ecx)
	movl	64(%ebx), %eax
	movl	%eax, 64(%ecx)
	movl	68(%ebx), %eax
	movl	%eax, 68(%ecx)
	movl	72(%ebx), %eax
	movl	%eax, 72(%ecx)
	movzwl	80(%ebx), %eax
	movw	%ax, 80(%ecx)
	movzwl	82(%ebx), %eax
	movw	%si, 136(%ecx)
	movw	%ax, 82(%ecx)
	movl	%edx, 140(%ecx)
	movl	144(%ebx), %eax
	movl	%eax, 144(%ecx)
	movzbl	262(%ebx), %eax
	movb	%al, 262(%ecx)
	cmpw	$-1, %di
	jne	L2793
	.p2align 4
	.p2align 3
L3165:
	movzwl	-96(%ebp), %ebx
L2791:
	cmpw	$-1, %bx
	jne	L2786
L2787:
	movzwl	_headspritestat+148, %edi
	cmpw	$-1, %di
	je	L2794
	movl	_sector, %ebx
	movl	_sprite, %esi
	.p2align 6
	.p2align 4
	.p2align 3
L2795:
	movswl	%di, %eax
	movzwl	_nextspritestat(%eax,%eax), %edi
	imull	$44, %eax, %eax
	movswl	24(%esi,%eax), %eax
	leal	(%eax,%eax,4), %ecx
	movl	$-858993459, %eax
	leal	14(,%ecx,8), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	andw	$-3, 14(%ebx,%ecx,8)
	cmpw	$-1, %di
	jne	L2795
L2794:
	cmpb	$0, _RedrawScreen
	jne	L3177
L2796:
	cmpb	$0, _PanelUpdateMode
	je	L2800
	movl	_connecthead, %eax
	movb	$1, _DrawBeforeView
	movl	%eax, %edx
	cmpw	$-1, %ax
	jne	L2803
	jmp	L2801
	.p2align 5
	.p2align 4,,10
	.p2align 3
L2802:
	movl	_connectpoint2(,%ebx,4), %eax
	movl	%eax, %edx
	cmpw	$-1, %ax
	je	L2801
L2803:
	movswl	%dx, %ebx
	cmpl	$2, _dimensionmode
	je	L2802
	cmpw	%dx, _screenpeek
	jne	L2802
	imull	$24124, %ebx, %eax
	addl	$_Player, %eax
	call	__Z15pDisplaySpritesP12PLAYERstruct
	movl	_connectpoint2(,%ebx,4), %eax
	movl	%eax, %edx
	cmpw	$-1, %ax
	jne	L2803
L2801:
	movb	$0, _DrawBeforeView
L2800:
	flds	LC46
	fmull	_refreshfreq
	fildl	__ZL19clockTicksPerSecond.lto_priv.0
	fdivrp	%st, %st(1)
	fstps	-92(%ebp)
	movss	-92(%ebp), %xmm0
	movss	%xmm0, (%esp)
	call	_floorf
	xorl	%ecx, %ecx
	xorps	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	fstps	-92(%ebp)
	cvttss2sil	-92(%ebp), %esi
	movl	%esi, 4(%esp)
	movl	_totalclock+8, %eax
	cvtsi2ssl	%esi, %xmm1
	movl	_ototalclock, %ebx
	movl	_totalclock+12, %edx
	mulss	LC47, %xmm1
	subl	%ecx, %eax
	sbbl	%ebx, %edx
	shrdl	$16, %edx, %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm1, %xmm0
	mulss	LC48, %xmm0
	mulss	LC49, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, (%esp)
	call	_tabledivide32.lto_priv.1
	movl	%eax, %edx
	movl	$65536, %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, %esi
	xorl	%eax, %eax
	testl	%esi, %esi
	cmovns	%esi, %eax
	movl	%eax, -92(%ebp)
	movl	%eax, _smoothratio
	movzbl	_GamePaused, %eax
	movb	%al, -112(%ebp)
	testb	%al, %al
	je	L2805
	cmpb	$0, _ReloadPrompt
	jne	L2805
	movl	$65536, _smoothratio
	movl	$65536, -92(%ebp)
L2805:
	cmpw	$0, _ScreenSavePic
	je	L3178
L2807:
	cmpb	$0, _PredictionOn
	jne	L2814
L2816:
	movl	-116(%ebp), %edi
L2815:
	movl	12(%edi), %ecx
	movl	(%edi), %eax
	movl	-92(%ebp), %edx
	subl	%ecx, %eax
/APP
 # 2395 "source/sw/src/draw.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%ecx, %eax
	movl	16(%edi), %ecx
	movl	-92(%ebp), %edx
	movl	%eax, -104(%ebp)
	movl	%eax, -52(%ebp)
	movl	4(%edi), %eax
	subl	%ecx, %eax
/APP
 # 2396 "source/sw/src/draw.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	leal	(%ecx,%eax), %ebx
	movl	20(%edi), %ecx
	movl	8(%edi), %eax
	movl	%ebx, -56(%ebp)
	movl	-92(%ebp), %edx
	subl	%ecx, %eax
/APP
 # 2397 "source/sw/src/draw.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
	movzbl	_PedanticMode, %eax
	orb	_DemoPlaying, %al
	movl	%ecx, -60(%ebp)
	jne	L2817
	imull	$24124, _myconnectindex, %eax
	addl	$_Player, %eax
	cmpl	%eax, -116(%ebp)
	je	L3179
L2817:
	movl	300(%edi), %eax
	movl	28(%edi), %ecx
	movl	-92(%ebp), %edx
	addl	$67108864, %eax
	subl	%ecx, %eax
	andl	$134217727, %eax
	subl	$67108864, %eax
/APP
 # 2405 "source/sw/src/draw.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
	movl	288(%edi), %eax
	movl	-92(%ebp), %edx
	movl	%ecx, -68(%ebp)
	movl	24(%edi), %ecx
	subl	%ecx, %eax
/APP
 # 2406 "source/sw/src/draw.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	leal	(%ecx,%eax), %esi
L2819:
	movzwl	268(%edi), %eax
	movl	%esi, -64(%ebp)
	movw	%ax, -82(%ebp)
	leal	-82(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	_updatesector
	movl	-116(%ebp), %edx
	movl	22980(%edx), %eax
	movl	22984(%edx), %edx
	testl	%edx, %edx
	je	L3180
	testl	%eax, %eax
	je	L2828
L2824:
	cmpb	$0, _gs+24
	je	L2827
	cmpb	$0, _CommEnabled
	jne	L3181
L2828:
	movl	-60(%ebp), %ecx
	movl	-56(%ebp), %edx
	movl	-52(%ebp), %eax
L2826:
	movl	-116(%ebp), %ebx
	movzwl	268(%ebx), %ebx
	movw	%bx, -82(%ebp)
	leal	-82(%ebp), %ebx
	movl	%ebx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_updatesectorz
L2825:
	movl	-52(%ebp), %eax
	movl	-56(%ebp), %edx
	movl	-60(%ebp), %ebx
	movl	%edx, -92(%ebp)
	movl	-116(%ebp), %edx
	movl	%eax, -96(%ebp)
	movss	-92(%ebp), %xmm2
	movss	-96(%ebp), %xmm0
	movl	%eax, -104(%ebp)
	movl	%ebx, %eax
	subl	8(%edx), %eax
	unpcklps	%xmm2, %xmm0
	movl	%eax, 184(%edx)
	movlps	%xmm0, 176(%edx)
	movl	-68(%ebp), %edx
	testl	%edx, %edx
	js	L3182
	movl	-116(%ebp), %ecx
	leal	32768(%edx), %eax
	movl	$0, -72(%ebp)
	sarl	$16, %eax
	movl	$0, -76(%ebp)
	movw	%ax, 188(%ecx)
	xorl	%ecx, %ecx
	movl	$0, -80(%ebp)
	movw	%cx, -84(%ebp)
	cmpb	$0, -112(%ebp)
	jne	L3183
L2994:
	leal	-84(%ebp), %eax
	leal	-76(%ebp), %ecx
	movl	%eax, 4(%esp)
	leal	-80(%ebp), %eax
	leal	-72(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__Z15QuakeViewChangeP12PLAYERstructPiS1_S1_Ps.part.0.constprop.0
	movzwl	_NormalVisibility, %eax
	movw	%ax, -120(%ebp)
	movzwl	_headspritestat+186, %eax
	cmpw	$-1, %ax
	je	L2832
	movl	%esi, -128(%ebp)
	movl	%edi, %ebx
	movw	%ax, -92(%ebp)
	jmp	L2831
	.p2align 4,,10
	.p2align 3
L2837:
	imull	$44, %edx, %edx
	addl	%edx, %eax
	movl	(%eax), %esi
	movl	%esi, -104(%ebp)
	movl	4(%eax), %esi
	movl	%esi, -112(%ebp)
	movl	8(%eax), %esi
	movswl	24(%eax), %eax
	movl	%esi, -96(%ebp)
L2833:
	movl	(%ebx), %esi
	movl	8(%ebx), %ecx
	movl	4(%ebx), %edx
	movl	%eax, 16(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movswl	268(%ebx), %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	je	L2834
	movzwl	-120(%ebp), %esi
	movzwl	38(%edi), %eax
	cmpw	%ax, %si
	cmovle	%esi, %eax
	movw	%ax, -120(%ebp)
L2834:
	cmpw	$-1, -92(%ebp)
	je	L3184
L2831:
	movswl	-92(%ebp), %edx
	movzwl	_nextspritestat(%edx,%edx), %eax
	imull	$44, %edx, %edx
	movw	%ax, -92(%ebp)
	movl	_sprite, %eax
	leal	(%eax,%edx), %edi
	movswl	30(%edi), %edx
	testw	%dx, %dx
	jns	L2837
	movl	(%edi), %eax
	movl	%eax, -104(%ebp)
	movl	4(%edi), %eax
	movl	%eax, -112(%ebp)
	movl	8(%edi), %eax
	movl	%eax, -96(%ebp)
	movswl	24(%edi), %eax
	jmp	L2833
L2790:
	movl	$1, %eax
	call	__Z13handle_memerri
L3176:
	movb	$1, _RedrawScreen
	jmp	L2785
L3175:
	movswl	_HelpPage, %eax
	movl	$0, __ZL8permtail.lto_priv.0
	movl	$0, __ZL8permhead.lto_priv.0
	movswl	_HelpPagePic(%eax,%eax), %eax
	cmpl	$30719, %eax
	ja	L2784
	movl	_xdim, %edx
	movl	_ydim, %ecx
	subl	$1, %edx
	js	L2784
	subl	$1, %ecx
	js	L2784
	movl	%ecx, 32(%esp)
	movl	$65536, %ecx
	movl	%edx, 28(%esp)
	xorl	%edx, %edx
	movl	%eax, 4(%esp)
	xorl	%eax, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$90, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L2784:
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
	jmp	_videoNextPage
L2814:
	.cfi_restore_state
	cmpb	$0, _CommEnabled
	je	L2816
	imull	$24124, _myconnectindex, %eax
	movl	-116(%ebp), %esi
	addl	$_Player, %eax
	cmpl	%eax, %esi
	movl	$_PredictPlayer, %eax
	cmovne	%esi, %eax
	movl	%eax, %edi
	jmp	L2815
L3177:
	movl	-116(%ebp), %esi
	movb	$1, _RedrawCompass
	movb	$0, _RedrawScreen
	movl	22988(%esi), %eax
	addl	$22988, %esi
	movl	$0, __ZL8permtail.lto_priv.0
	movl	$0, __ZL8permhead.lto_priv.0
	cmpl	%esi, %eax
	je	L2797
	movl	(%eax), %ebx
	jmp	L2799
	.p2align 5
	.p2align 4,,10
	.p2align 3
L2798:
	movl	(%ebx), %edx
	movl	%ebx, %eax
	cmpl	%esi, %ebx
	je	L2797
	movl	%edx, %ebx
L2799:
	testb	$8, 205(%eax)
	je	L2798
	movl	4(%eax), %ecx
	movl	(%eax), %edx
	movl	%edx, (%ecx)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L2798
L3178:
	movl	_numinterpolations, %ecx
	subl	$1, %ecx
	js	L2808
	movl	$0, -104(%ebp)
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L2810:
	movl	_curipos(,%ecx,4), %edi
	movl	_oldipos(,%ecx,4), %ebx
	movl	%esi, %edx
	movl	(%edi), %eax
	movl	%eax, _bakipos(,%ecx,4)
	subl	%ebx, %eax
	movl	%eax, %esi
	cmpl	%edx, %eax
	je	L2809
	movl	-92(%ebp), %edx
/APP
 # 96 "source/sw/src/interp.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, -104(%ebp)
L2809:
	addl	-104(%ebp), %ebx
	movl	%ebx, (%edi)
	subl	$1, %ecx
	jnb	L2810
L2808:
	movswl	_short_numinterpolations, %ebx
	subl	$1, %ebx
	js	L2811
	movl	$0, -104(%ebp)
	xorl	%ecx, %ecx
	.p2align 4
	.p2align 3
L2813:
	movl	_short_curipos(,%ebx,4), %edi
	movzwl	_short_oldipos(%ebx,%ebx), %esi
	movl	%ecx, %edx
	movzwl	(%edi), %eax
	movswl	%ax, %ecx
	movw	%ax, _short_bakipos(%ebx,%ebx)
	movswl	%si, %eax
	subl	%eax, %ecx
	cmpl	%edx, %ecx
	je	L2812
	movl	%ecx, %eax
	movl	-92(%ebp), %edx
/APP
 # 97 "source/sw/src/interpsh.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, -104(%ebp)
L2812:
	addw	-104(%ebp), %si
	movw	%si, (%edi)
	subl	$1, %ebx
	jnb	L2813
L2811:
	cmpb	$0, _gs+24
	je	L2807
	movl	-92(%ebp), %eax
	call	__Z19so_dointerpolationsi
	jmp	L2807
L3184:
	movl	-128(%ebp), %esi
	movl	%ebx, %edi
L2832:
	movswl	-120(%ebp), %eax
	movl	-68(%ebp), %edx
	movswl	-84(%ebp), %ecx
	movl	%eax, _g_visibility
	movl	-72(%ebp), %eax
	addl	-60(%ebp), %eax
	movl	%eax, %ebx
	movl	-76(%ebp), %eax
	addl	-52(%ebp), %eax
	movl	%eax, -104(%ebp)
	movl	-80(%ebp), %eax
	addl	-56(%ebp), %eax
	movl	%eax, -92(%ebp)
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	addl	$32768, %eax
L2836:
	addl	%edx, %eax
	movl	%ebx, -60(%ebp)
	movl	-104(%ebp), %ebx
	leal	65535(%eax), %edx
	cmovns	%eax, %edx
	movl	%ebx, -52(%ebp)
	movl	-92(%ebp), %ebx
	sarl	$16, %edx
	movl	%ebx, -56(%ebp)
	leal	(%edx,%ecx), %eax
	movl	-116(%ebp), %edx
	andl	$2047, %eax
	sall	$16, %eax
	movl	%eax, -68(%ebp)
	movl	100(%edx), %eax
	testl	%eax, %eax
	je	L2839
	movl	48(%edx), %edx
	testb	$64, 42(%edx)
	je	L2840
	movswl	28(%edx), %eax
	sall	$16, %eax
	movl	%eax, -68(%ebp)
L2839:
	movl	-116(%ebp), %ebx
	movl	22968(%ebx), %eax
	testl	$67108864, %eax
	je	L2842
	movl	%esi, %eax
	leal	-60(%ebp), %ecx
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%eax,%esi), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	leal	-56(%ebp), %edx
	sarl	$16, %eax
	movl	%eax, 8(%esp)
	leal	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-82(%ebp), %eax
	movl	%eax, (%esp)
	leal	-52(%ebp), %eax
	call	__Z8BackViewPiS_S_PsS_s
	movl	22968(%ebx), %eax
	xorl	%ebx, %ebx
L2844:
	testl	$335544320, %eax
	jne	L2845
	movl	388(%edi), %eax
	addl	-60(%ebp), %ebx
	cmpb	$0, _PedanticMode
	jne	L2846
	movl	392(%edi), %ecx
	movl	_smoothratio, %edx
	subl	%ecx, %eax
/APP
 # 2484 "source/sw/src/draw.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%ecx, %eax
L2846:
	addl	%eax, %ebx
	movl	-116(%ebp), %eax
	movl	%ebx, -60(%ebp)
	movswl	318(%eax), %eax
	sall	$16, %eax
	addl	%eax, %esi
	movl	$-6488064, %eax
	cmpl	%eax, %esi
	cmovl	%eax, %esi
	movl	$19595264, %eax
	cmpl	%eax, %esi
	cmovg	%eax, %esi
	movl	%esi, -64(%ebp)
L2845:
	movl	_r_usenewaspect, %eax
	testl	%eax, %eax
	jne	L3185
L2847:
	xorps	%xmm0, %xmm0
	movl	_yxaspect, %ebx
	cvtsi2ssl	_gs+324, %xmm0
	mulss	LC50, %xmm0
	movss	%xmm0, (%esp)
	call	_tanf
	xorps	%xmm0, %xmm0
	cvtsi2ssl	_viewingrange, %xmm0
	fstps	-92(%ebp)
	mulss	-92(%ebp), %xmm0
	movss	%xmm0, (%esp)
	call	_lrintf
	movl	%ebx, %edx
	call	_renderSetAspect
	cmpb	$0, _FAF_DebugView
	jne	L3186
L2848:
	movl	$1, __ZL11OverlapDraw
	movswl	-82(%ebp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	movl	-60(%ebp), %ecx
	movl	-56(%ebp), %edx
	movl	-52(%ebp), %eax
	call	__Z15DrawOverlapRoomiiiiis
	movl	$0, __ZL11OverlapDraw
	cmpl	$6, _dimensionmode
	je	L2849
	cmpw	$0, _ScreenSavePic
	je	L3187
L2849:
	cmpb	$0, _FAF_DebugView
	je	L3188
L2850:
	movl	$0, (%esp)
	movl	-52(%ebp), %eax
	movl	-60(%ebp), %ecx
	movl	-56(%ebp), %edx
	call	__Z14analyzespritesiiih
	call	__Z19post_analyzespritesv
	call	_renderDrawMasks
	movl	_r_usenewaspect, %eax
	testl	%eax, %eax
	je	L2851
	movl	_xdim, %eax
	movl	$0, _newaspect_enable
	leal	(%eax,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	_ydim, %eax
	sall	$19, %eax
	movl	%eax, (%esp)
	call	_tabledivide32.lto_priv.1
	movl	%eax, %edx
	movl	-124(%ebp), %eax
	call	_renderSetAspect
L2851:
	movl	_dimensionmode, %edi
	cmpb	$0, _PanelUpdateMode
	je	L2853
	movl	_connecthead, %edx
	movswl	%dx, %eax
	cmpw	$-1, %dx
	je	L2853
L2858:
	movswl	%ax, %ebx
	cmpl	$2, %edi
	jne	L3189
L2855:
	movl	_connectpoint2(,%ebx,4), %edx
	movswl	%dx, %eax
	cmpw	$-1, %dx
	jne	L2858
L2853:
	movzbl	_gotpic+288, %eax
	testb	$2, %al
	je	L2859
	andl	$-3, %eax
	movb	%al, _gotpic+288
L2859:
	movl	-116(%ebp), %eax
	movzwl	268(%eax), %eax
	testw	%ax, %ax
	js	L2860
	movswl	%ax, %edx
	movl	_sector, %esi
	andl	$7, %eax
	movl	%edx, %ecx
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
	sarl	$3, %ecx
	movl	%esi, -92(%ebp)
	orb	%al, _show2dsector(%ecx)
	leal	(%edx,%edx,4), %eax
	leal	(%esi,%eax,8), %eax
	movzwl	2(%eax), %edx
	testw	%dx, %dx
	jle	L2860
	movl	_wall, %esi
	movswl	(%eax), %eax
	movzwl	%dx, %ebx
	movl	%edi, -112(%ebp)
	sall	$5, %ebx
	sall	$5, %eax
	movl	%esi, -104(%ebp)
	addl	%esi, %eax
	addl	%eax, %ebx
	.p2align 4
	.p2align 3
L2863:
	movzwl	12(%eax), %edx
	testw	%dx, %dx
	js	L2861
	testb	$113, 14(%eax)
	jne	L2861
	movswl	10(%eax), %ecx
	cmpw	$16383, %cx
	ja	L2862
	movl	-104(%ebp), %esi
	sall	$5, %ecx
	testb	$113, 14(%esi,%ecx)
	jne	L2861
L2862:
	movl	-92(%ebp), %edi
	movswl	%dx, %ecx
	leal	(%ecx,%ecx,4), %esi
	leal	(%edi,%esi,8), %esi
	cmpw	$32767, 34(%esi)
	je	L2861
	movl	4(%esi), %edi
	cmpl	%edi, 8(%esi)
	jle	L2861
	sarl	$3, %ecx
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%edx), %edx
	orb	%dl, _show2dsector(%ecx)
L2861:
	addl	$32, %eax
	cmpl	%ebx, %eax
	jne	L2863
	movl	-112(%ebp), %edi
L2860:
	leal	-5(%edi), %eax
	cmpl	$1, %eax
	jbe	L3190
L2864:
	movl	_sprite, %ebx
	movl	$12, %ecx
	movl	$-1171354717, %esi
	jmp	L2942
	.p2align 5
	.p2align 4,,10
	.p2align 3
L2941:
	addl	$44, %ecx
	cmpl	$720908, %ecx
	je	L3191
L2942:
	cmpw	$257, 26(%ebx,%ecx)
	jne	L2941
	cmpw	$-2, 18(%ebx,%ecx)
	jne	L2941
	movl	%ecx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$32, (%ebx,%ecx)
	addl	$44, %ecx
	cmpl	$720908, %ecx
	jne	L2942
L3191:
	movzwl	_ScreenSavePic, %ebx
	testw	%bx, %bx
	jne	L2985
	movl	-116(%ebp), %eax
	call	__Z17PrintLocationInfoP12PLAYERstruct
	cmpb	$0, _CommEnabled
	je	L2945
	cmpl	$1, _numplayers
	jle	L2945
	call	__Z15SyncStatMessagev.part.0
L2945:
	cmpb	$0, _gs+22
	je	L2946
	movzbl	_DemoMode, %eax
	orb	_CameraTestMode, %al
	jne	L2946
	movl	-116(%ebp), %eax
	testb	$4, 22971(%eax)
	jne	L2946
	cmpl	$6, _dimensionmode
	je	L2946
	movl	_windowxy2, %ecx
	movl	_windowxy1, %eax
	movl	_windowxy2+4, %esi
	movl	_windowxy1+4, %edx
	cmpl	%eax, %ecx
	jl	L2946
	cmpl	%edx, %esi
	jl	L2946
	movl	%ecx, 28(%esp)
	movl	$65536, %ecx
	movl	%edx, 24(%esp)
	movl	$6553600, %edx
	movl	%eax, 20(%esp)
	movl	$10485760, %eax
	movl	%esi, 32(%esp)
	movl	$2, 16(%esp)
	movl	$0, 12(%esp)
	movl	$10, 8(%esp)
	movl	$2326, 4(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L2946:
	call	__Z10operateftav
	cmpb	$0, _NoMeters
	jne	L2947
	imull	$24124, _myconnectindex, %eax
	movl	-116(%ebp), %esi
	addl	$_Player, %eax
	cmpl	%eax, %esi
	je	L3192
L2947:
	call	__Z15BossHealthMeterv
	cmpb	$0, _MessageInputMode
	jne	L3193
L2950:
	cmpb	$0, _PanelUpdateMode
	je	L2956
	cmpb	$1, _gs+12
	jle	L2956
	movl	-116(%ebp), %esi
	movswl	_screenpeek, %edx
	movl	%esi, %eax
	subl	$_Player, %eax
	sarl	$2, %eax
	imull	$-432986257, %eax, %eax
	cmpl	%edx, %eax
	je	L3194
L2956:
	movl	-116(%ebp), %eax
	call	__Z13UpdateMiniBarP12PLAYERstruct
	cmpb	$0, _UsingMenus
	je	L2964
	call	__Z12MNU_DrawMenuv
L2965:
	movl	_FlagCaptureWinner, %edi
	testl	%edi, %edi
	je	L2966
	cmpl	$1, %edi
	movl	$LC45, %edx
	movl	$LC44, %eax
	cmovne	%edx, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movw	%dx, -48(%ebp)
	leal	-48(%ebp), %edx
	movw	%cx, -40(%ebp)
	leal	-40(%ebp), %ecx
	movw	%bx, -32(%ebp)
	movw	%si, -24(%ebp)
	movl	%eax, -92(%ebp)
	call	__Z17MNU_MeasureStringPKcPsS1_
	leal	-24(%ebp), %ecx
	leal	-32(%ebp), %edx
	movl	$LC56, %eax
	call	__Z17MNU_MeasureStringPKcPsS1_
	movzwl	-48(%ebp), %ebx
	movzwl	-32(%ebp), %edx
	movl	$320, %eax
	addl	%ebx, %edx
	movswl	%dx, %edx
	subl	%edx, %eax
	movswl	-24(%ebp), %edx
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%eax, %esi
	movswl	-40(%ebp), %eax
	movl	$0, (%esp)
	sarl	%esi
	cmpw	%dx, %ax
	cmovl	%edx, %eax
	movl	$200, %edx
	subl	%eax, %edx
	movl	%edx, %ecx
	shrl	$31, %ecx
	leal	(%ecx,%edx), %eax
	xorl	%edx, %edx
	sarl	%eax
	cmpl	$1, %edi
	sete	%dl
	movswl	%ax, %edi
	movswl	%si, %eax
	addl	$13, %edx
	movswl	%dx, %edx
	movl	%edx, 4(%esp)
	movl	-92(%ebp), %ecx
	movl	%edi, %edx
	call	__Z14MNU_DrawStringssPKcss
	leal	(%ebx,%esi), %eax
	movl	$LC56, %ecx
	movl	%edi, %edx
	movl	$16, 4(%esp)
	cwtl
	movl	$0, (%esp)
	call	__Z14MNU_DrawStringssPKcss
L2966:
	call	_videoNextPage
	cmpb	$0, _CommEnabled
	je	L2969
	cmpl	$1, _numplayers
	jle	L2969
	call	__Z15SyncStatMessagev.part.0
L2969:
	cmpb	$0, _ResCheat
	jne	L3195
L2970:
	movzbl	_InputMode, %eax
	orb	_MenuInputMode, %al
	orb	_HelpInputMode, %al
	orb	_PauseKeySet, %al
	jne	L2971
	movl	-116(%ebp), %eax
	call	__Z10ResizeViewP12PLAYERstruct.part.0
L2971:
	cmpb	$0, _keystatus+88
	je	L2972
	call	__Z17ScreenCaptureKeysv.part.0
L2972:
	movl	_numinterpolations, %eax
	subl	$1, %eax
	js	L2973
	.p2align 5
	.p2align 4
	.p2align 3
L2974:
	movl	_curipos(,%eax,4), %edx
	movl	_bakipos(,%eax,4), %ecx
	movl	%ecx, (%edx)
	subl	$1, %eax
	jnb	L2974
L2973:
	movswl	_short_numinterpolations, %eax
	subl	$1, %eax
	js	L2975
	.p2align 5
	.p2align 4
	.p2align 3
L2976:
	movl	_short_curipos(,%eax,4), %edx
	movzwl	_short_bakipos(%eax,%eax), %ecx
	movw	%cx, (%edx)
	subl	$1, %eax
	jnb	L2976
L2975:
	cmpb	$0, _gs+24
	jne	L3196
L2977:
	movzwl	_headspritestat+148, %ebx
	movl	_sector, %esi
	movl	_sprite, %edi
	cmpw	$-1, %bx
	je	L2987
	.p2align 6
	.p2align 4
	.p2align 3
L2986:
	movswl	%bx, %eax
	movzwl	_nextspritestat(%eax,%eax), %ebx
	imull	$44, %eax, %eax
	movswl	24(%edi,%eax), %eax
	leal	(%eax,%eax,4), %ecx
	movl	$-858993459, %eax
	leal	14(,%ecx,8), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	orw	$2, 14(%esi,%ecx,8)
	cmpw	$-1, %bx
	jne	L2986
L2987:
	movzwl	_headspritestat+22, %ebx
	cmpw	$-1, %bx
	je	L2985
	.p2align 4
	.p2align 3
L2984:
	movswl	%bx, %edi
	movl	%ebx, %esi
	movl	_User(,%edi,4), %eax
	movzwl	_nextspritestat(%edi,%edi), %ebx
	testl	%eax, %eax
	je	L2989
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, _User(,%edi,4)
L2989:
	movswl	%si, %eax
	call	_deletesprite.isra.0
	cmpw	$-1, %bx
	jne	L2984
L2985:
	movb	$0, _DrawScreen
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
	cmpw	%ax, _screenpeek
	je	L2856
L3197:
	movl	_connectpoint2(,%eax,4), %edx
	movswl	%dx, %eax
	cmpw	$-1, %dx
	je	L2853
	cmpw	%ax, _screenpeek
	jne	L3197
L2856:
	movswl	%ax, %ebx
	imull	$24124, %ebx, %eax
	addl	$_Player, %eax
	call	__Z15pDisplaySpritesP12PLAYERstruct
	movl	_dimensionmode, %edi
	jmp	L2855
L2842:
	movzbl	_DemoMode, %edx
	orb	_CameraTestMode, %dl
	movswl	380(%edi), %ebx
	je	L2844
	leal	-64(%ebp), %eax
	leal	-56(%ebp), %ecx
	movl	%eax, 12(%esp)
	leal	-68(%ebp), %eax
	leal	-52(%ebp), %edx
	movl	%eax, 8(%esp)
	leal	-82(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__Z10CameraViewP12PLAYERstructPiS1_S1_PsS1_S1_
	movl	-116(%ebp), %eax
	movl	-64(%ebp), %esi
	movl	22968(%eax), %eax
	jmp	L2844
L3190:
	imull	$24124, _myconnectindex, %eax
	addl	$_Player, %eax
	cmpl	%eax, -116(%ebp)
	jne	L2864
	cmpb	$0, _ScrollMode2D
	je	L2865
	movl	_Follow_posx, %eax
	movl	%eax, -52(%ebp)
	movl	_Follow_posy, %eax
	movl	%eax, -56(%ebp)
L2865:
	movl	_sprite, %ebx
	movl	$12, %ecx
	movl	$-1171354717, %esi
	jmp	L2867
	.p2align 5
	.p2align 4,,10
	.p2align 3
L2866:
	addl	$44, %ecx
	cmpl	$720908, %ecx
	je	L3198
L2867:
	cmpw	$257, 26(%ebx,%ecx)
	jne	L2866
	testb	$32, (%ebx,%ecx)
	je	L2866
	movl	%ecx, %eax
	mull	%esi
	leal	18(%ecx), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%esi
	movl	$-2, %eax
	andw	$-33, (%ebx,%ecx)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 18(%ebx,%ecx)
	jmp	L2866
L3182:
	movl	%edx, %ecx
	leal	32767(%edx), %eax
	movl	$0, -72(%ebp)
	subl	$32768, %ecx
	movl	$0, -76(%ebp)
	cmovns	%ecx, %eax
	movl	-116(%ebp), %ecx
	movl	$0, -80(%ebp)
	sarl	$16, %eax
	movw	%ax, 188(%ecx)
	xorl	%eax, %eax
	movw	%ax, -84(%ebp)
	cmpb	$0, -112(%ebp)
	je	L2994
	xorl	%ecx, %ecx
	movl	$-32768, %eax
	jmp	L2836
L3181:
	movl	-116(%ebp), %eax
	movl	100(%eax), %eax
	testl	%eax, %eax
	jne	L2828
L2827:
	movl	-116(%ebp), %ebx
	movl	(%ebx), %eax
	movl	4(%ebx), %edx
	movl	8(%ebx), %ecx
	movl	300(%ebx), %ebx
	movl	%eax, -52(%ebp)
	movl	%edx, -56(%ebp)
	movl	%ecx, -60(%ebp)
	movl	%ebx, -68(%ebp)
	jmp	L2826
L2797:
	movsbl	_gs+12, %edx
	movl	-116(%ebp), %eax
	call	__Z9SetBorderP12PLAYERstructi
	jmp	L2796
L2840:
	movl	184(%eax), %ebx
	movl	180(%eax), %ecx
	movl	$@getq16angle.lto_priv.0@8, %edx
	movl	$@gethiq16angle@8, %eax
	subl	-92(%ebp), %ebx
	subl	-104(%ebp), %ecx
	cmpb	$0, _PedanticMode
	cmovne	%edx, %eax
	movl	%ebx, %edx
	call	*%eax
	movl	%eax, -68(%ebp)
	jmp	L2839
L3188:
	movswl	-82(%ebp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	movl	-60(%ebp), %ecx
	movl	-56(%ebp), %edx
	movl	-52(%ebp), %eax
	call	__Z13FAF_DrawRoomsiiiiis
	jmp	L2850
L3186:
	movl	$255, %eax
	call	_videoClearViewableArea
	jmp	L2848
L3185:
	movl	$1, _newaspect_enable
	call	_videoSetCorrectedAspect
	jmp	L2847
L3180:
	testl	%eax, %eax
	jne	L2824
	jmp	L2825
L2964:
	cmpb	$0, _CommEnabled
	jne	L2965
	cmpl	$1, _numplayers
	jg	L2965
	cmpb	$0, _gs+63
	je	L2965
	fnstcw	-86(%ebp)
	movl	_windowxy1, %eax
	addl	$2, %eax
	movl	%eax, -92(%ebp)
	fildl	-92(%ebp)
	fildl	_xdim
	fdivs	LC52
	movl	_windowxy1+4, %eax
	addl	$10, %eax
	movl	%eax, -92(%ebp)
	movzwl	-86(%ebp), %eax
	orb	$12, %ah
	movw	%ax, -88(%ebp)
	movswl	_TotalKillable, %eax
	fdivrp	%st, %st(1)
	fstpl	-104(%ebp)
	fildl	-92(%ebp)
	fildl	_ydim
	fdivs	LC53
	fdivrp	%st, %st(1)
	fldcw	-88(%ebp)
	fistpl	-92(%ebp)
	fldcw	-86(%ebp)
	movl	-92(%ebp), %ebx
	movl	%eax, 12(%esp)
	movswl	_Player+23236, %eax
	movl	$LC54, 4(%esp)
	movl	$_ds, (%esp)
	movl	%eax, 8(%esp)
	call	_sprintf
	fldl	-104(%ebp)
	fnstcw	-86(%ebp)
	movzwl	-86(%ebp), %eax
	orb	$12, %ah
	movw	%ax, -88(%ebp)
	movswl	%bx, %eax
	fldcw	-88(%ebp)
	fistpl	-92(%ebp)
	fldcw	-86(%ebp)
	movswl	-92(%ebp), %esi
	movl	%eax, 8(%esp)
	movl	$_ds, 16(%esp)
	movl	$16, 12(%esp)
	movl	%esi, 4(%esp)
	movl	-116(%ebp), %edi
	movl	%edi, (%esp)
	call	__Z22DisplayMiniBarSmStringP12PLAYERstructsssPKc
	movswl	_LevelSecrets, %eax
	movl	%eax, 12(%esp)
	movswl	_Player+23256, %eax
	movl	$LC55, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	leal	10(%ebx), %eax
	movl	%esi, 4(%esp)
	cwtl
	movl	$_ds, 16(%esp)
	movl	$16, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edi, (%esp)
	call	__Z22DisplayMiniBarSmStringP12PLAYERstructsssPKc
	jmp	L2965
L3187:
	movl	%esi, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	movl	-56(%ebp), %ecx
	movl	-52(%ebp), %edx
	movl	-116(%ebp), %eax
	call	__Z14JS_DrawMirrorsP12PLAYERstructiiiii
	jmp	L2849
L3183:
	xorl	%ecx, %ecx
	movl	$32768, %eax
	jmp	L2836
L3192:
	testb	$6, 22970(%esi)
	je	L2947
	movzwl	23230(%esi), %ecx
	cmpw	$47, %cx
	jle	L2947
	movswl	%cx, %eax
	movl	$-1431655765, %esi
	mull	%esi
	movl	_numplayers, %eax
	shrl	$5, %edx
	movl	%edx, %edi
	movl	$655360, %edx
	cmpl	$1, %eax
	jle	L2948
	subl	$2, %eax
	cmpl	$3, %eax
	sbbl	%edx, %edx
	andl	$-655360, %edx
	addl	$1966080, %edx
L2948:
	leal	-7(%edi), %eax
	movl	$20, %esi
	cmpw	$5, %ax
	jbe	L2949
	xorl	%eax, %eax
	cmpw	$335, %cx
	setle	%al
	leal	22(%eax,%eax,2), %esi
L2949:
	movl	_xdim, %eax
	movl	_ydim, %ecx
	subl	$1, %eax
	js	L2947
	subl	$1, %ecx
	js	L2947
	movl	%ecx, 32(%esp)
	movl	$65536, %ecx
	movl	%eax, 28(%esp)
	movl	$13631488, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$10, 16(%esp)
	movl	$1, 12(%esp)
	movl	$1, 8(%esp)
	movl	$5408, 4(%esp)
	movl	$0, (%esp)
	movl	%edx, -92(%ebp)
	call	_rotatesprite_.part.0.constprop.0
	movl	$5406, %eax
	movl	_ydim, %ecx
	subl	%edi, %eax
	movl	_xdim, %edi
	subl	$1, %edi
	js	L2947
	subl	$1, %ecx
	js	L2947
	movl	%esi, %edx
	cwtl
	movl	%ecx, 32(%esp)
	movl	$65536, %ecx
	movzbl	%dl, %esi
	movl	%eax, 4(%esp)
	movl	$17367040, %eax
	movl	%edi, 28(%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$10, 16(%esp)
	movl	%esi, 12(%esp)
	movl	$1, 8(%esp)
	movl	$0, (%esp)
	movl	-92(%ebp), %edx
	call	_rotatesprite_.part.0.constprop.0
	jmp	L2947
L3194:
	movl	300(%esi), %edx
	movl	100(%esi), %ebx
	movl	$28, %ecx
	movw	%cx, -104(%ebp)
	movzwl	_tilesiz+9528, %edi
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	testl	%ebx, %ebx
	je	L3199
L2958:
	cmpb	$0, _RedrawCompass
	je	L2959
	cmpb	$0, _UsingMenus
	jne	L2959
	movb	$0, _RedrawCompass
	movl	$154, -92(%ebp)
L2961:
	xorl	%ebx, %ebx
	movl	$140, %esi
L2963:
	movl	_xdim, %edx
	movl	_ydim, %eax
	subl	$1, %edx
	js	L2962
	subl	$1, %eax
	js	L2962
	movl	%eax, 32(%esp)
	movl	%esi, %eax
	movl	$65536, %ecx
	movl	%edx, 28(%esp)
	sall	$16, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	-92(%ebp), %edx
	movl	$0, 12(%esp)
	movl	%edx, 16(%esp)
	movsbl	__ZZ11DrawCompassP12PLAYERstructE12CompassShade(%ebx,%ebx), %edx
	movl	%edx, 8(%esp)
	movzwl	-104(%ebp), %edx
	movl	$0, (%esp)
	addl	%ebx, %edx
	andl	$31, %edx
	movswl	__ZZ11DrawCompassP12PLAYERstructE10CompassPic(%edx,%edx), %edx
	movl	%edx, 4(%esp)
	movl	$10289152, %edx
	call	_rotatesprite_.part.0.constprop.0
L2962:
	addl	$1, %ebx
	addl	%edi, %esi
	cmpl	$10, %ebx
	jne	L2963
	jmp	L2956
L3179:
	movl	-116(%ebp), %eax
	testb	$2, 22968(%eax)
	je	L2818
	movl	_loc+4, %ecx
	testl	%ecx, %ecx
	je	L2817
L2818:
	cmpb	$0, _DemoMDRActive
	je	L2820
	cmpb	$0, _CommEnabled
	je	L2821
	movl	__ZL9MDRCamAng.lto_priv.0+4, %eax
	movl	__ZL9MDRCamAng.lto_priv.0, %ecx
	movl	-92(%ebp), %edx
	addl	$67108864, %eax
	subl	%ecx, %eax
	andl	$134217727, %eax
	subl	$67108864, %eax
/APP
 # 2306 "source/sw/src/draw.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
	movl	__ZL11MDRCamHoriz.lto_priv.0+4, %eax
	movl	-92(%ebp), %edx
	movl	%ecx, -68(%ebp)
	movl	__ZL11MDRCamHoriz.lto_priv.0, %ecx
	subl	%ecx, %eax
/APP
 # 2307 "source/sw/src/draw.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	leal	(%ecx,%eax), %esi
	jmp	L2819
	.p2align 4,,10
	.p2align 3
L3196:
	movl	$__ZL13so_interpdata.lto_priv.0, %esi
	movl	$_SectorObject, %edi
	.p2align 4
	.p2align 3
L2982:
	cmpl	$2147483647, 180(%edi)
	je	L2978
	movl	458752(%esi), %eax
	testl	%eax, %eax
	jle	L2978
	movl	%esi, %eax
	xorl	%edx, %edx
	jmp	L2981
	.p2align 5
	.p2align 4,,10
	.p2align 3
L3200:
	movw	%bx, (%ecx)
	addl	$1, %edx
	addl	$28, %eax
	cmpl	458752(%esi), %edx
	jge	L2978
L2981:
	movl	(%eax), %ecx
	movl	8(%eax), %ebx
	cmpl	$0, 24(%eax)
	jns	L3200
	movl	%ebx, (%ecx)
	addl	$1, %edx
	addl	$28, %eax
	cmpl	458752(%esi), %edx
	jl	L2981
L2978:
	addl	$6028, %edi
	addl	$458768, %esi
	cmpl	$_SectorObject+120560, %edi
	jne	L2982
	jmp	L2977
L3195:
	imull	$24124, _myconnectindex, %eax
	movl	$LC57, %edx
	movb	$0, _ResCheat
	addl	$_Player, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	jmp	L2970
L3193:
	movl	_totalclock, %eax
	movzbl	_MessageInputString, %edx
	sall	$4, %eax
	andl	$2047, %eax
	movzwl	_sintable(%eax,%eax), %esi
	testb	%dl, %dl
	je	L3012
	xorl	%ecx, %ecx
	jmp	L2955
L3201:
	addw	$2897, %ax
	movzwl	%ax, %eax
	addw	_tilesiz(,%eax,4), %bx
L2953:
	addl	$1, %ecx
	movswl	%cx, %eax
	movzbl	_MessageInputString(%eax), %edx
	testb	%dl, %dl
	je	L3173
L2955:
	movzbl	%dl, %eax
	leal	-33(%eax), %edi
	cmpw	$93, %di
	jbe	L3201
	cmpb	$32, %dl
	jne	L3173
	addl	$4, %ebx
	jmp	L2953
L3173:
	movswl	%bx, %ebx
	movl	$320, %eax
	subl	%ebx, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	leal	2(%ebx,%eax), %ebx
	sall	$16, %ebx
L2951:
	movl	$10, (%esp)
	movl	$142, %edx
	movl	$_MessageInputString, %ecx
	call	__Z12minigametextiiPKcs.isra.0
	movl	_xdim, %eax
	movl	_ydim, %edx
	subl	$1, %eax
	js	L2950
	subl	$1, %edx
	js	L2950
	movl	%eax, 28(%esp)
	sarw	$11, %si
	movl	$4, %eax
	subl	%esi, %eax
	movl	%edx, 32(%esp)
	movsbl	%al, %eax
	movl	$0, 24(%esp)
	movl	%eax, 8(%esp)
	movl	$-1840700269, %eax
	movl	$0, 20(%esp)
	movl	$10, 16(%esp)
	movl	$0, 12(%esp)
	movl	_totalclock, %esi
	movl	$0, (%esp)
	movl	%esi, %ecx
	sarl	$31, %esi
	sarl	$3, %ecx
	imull	%ecx
	leal	(%edx,%ecx), %eax
	sarl	$2, %eax
	subl	%esi, %eax
	leal	0(,%eax,8), %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	movl	$20000, %ecx
	subl	%edx, %eax
	movl	$9371648, %edx
	addw	$2440, %ax
	cwtl
	movl	%eax, 4(%esp)
	movl	%ebx, %eax
	call	_rotatesprite_.part.0.constprop.0
	jmp	L2950
L3198:
	cmpl	$6, %edi
	je	L3202
L2868:
	movl	-68(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	sarl	$16, %eax
	movl	%eax, (%esp)
	movl	_zoom, %ecx
	movl	-56(%ebp), %edx
	movl	-52(%ebp), %eax
	call	__Z15drawoverheadmapiiis
	jmp	L2864
L2959:
	movl	$26, -92(%ebp)
	jmp	L2961
L2820:
	cmpb	$0, _gs+24
	je	L2822
	cmpb	$0, _CommEnabled
	je	L2991
L2822:
	movl	-116(%ebp), %esi
	movl	308(%esi), %eax
	movl	304(%esi), %esi
	movl	%eax, -68(%ebp)
	jmp	L2819
L3199:
	leal	32768(%edx,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	sarl	$16, %eax
	addl	$32, %eax
	sarl	$6, %eax
	addl	$28, %eax
	movw	%ax, -104(%ebp)
	jmp	L2958
L3202:
	xorl	%eax, %eax
	call	_videoClearViewableArea
	movl	-68(%ebp), %edx
	movl	_zoom, %ebx
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	sall	$8, %ebx
	sarl	$16, %eax
	movl	%eax, %esi
	movl	-56(%ebp), %eax
	movl	%eax, -120(%ebp)
	movl	-52(%ebp), %eax
	movl	%eax, -136(%ebp)
	movl	_yxaspect, %eax
	movl	%eax, -200(%ebp)
	movl	_viewingrange, %eax
	movl	%eax, -204(%ebp)
	movl	$200, 8(%esp)
	movl	$0, 12(%esp)
	movl	$13107200, (%esp)
	movl	$0, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, %edx
	movl	$65536, %eax
	call	_renderSetAspect
	movl	$0, __ZL15beforedrawrooms.lto_priv.0
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_gotsector, (%esp)
	call	_memset
	movl	_windowxy1, %eax
	movl	_windowxy2, %edi
	movl	_windowxy2+4, %ecx
	movl	_windowxy1+4, %edx
	movl	%eax, -92(%ebp)
	movl	$1536, %eax
	subl	%esi, %eax
	movl	%edi, -112(%ebp)
	negl	%esi
	movl	%ecx, -96(%ebp)
	movl	%eax, %edi
	movl	%ebx, %ecx
	andl	$2047, %esi
	sarl	$31, %ecx
	andl	$2047, %edi
	movl	%edx, -104(%ebp)
	movl	%ecx, 12(%esp)
	movl	%ebx, 8(%esp)
	movswl	_sintable(%edi,%edi), %eax
	cltd
	shldl	$28, %eax, %edx
	sall	$28, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%ebx, %ecx
	sarl	$31, %ecx
	movl	%eax, -124(%ebp)
	movl	%ebx, 8(%esp)
	movl	%ecx, 12(%esp)
	movswl	_sintable(%esi,%esi), %eax
	cltd
	shldl	$28, %eax, %edx
	sall	$28, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%ebx, %edx
	movl	%eax, -144(%ebp)
	movswl	_sintable(%esi,%esi), %eax
/APP
 # 10472 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $8, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, -164(%ebp)
	movl	%ebx, %edx
	movswl	_sintable(%edi,%edi), %eax
/APP
 # 10472 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $8, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_yxaspect, %edx
	movl	%eax, -168(%ebp)
	movl	-164(%ebp), %eax
/APP
 # 10473 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_yxaspect, %edx
	movl	%eax, -172(%ebp)
	movl	-168(%ebp), %eax
/APP
 # 10473 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, -176(%ebp)
	call	_videoBeginDrawing
	cmpw	$0, _numsectors
	jle	L2870
	movl	-92(%ebp), %eax
	movl	-104(%ebp), %edx
	movl	$0, -184(%ebp)
	movb	$1, -180(%ebp)
	sall	$12, %eax
	sall	$12, %edx
	movl	$0, -132(%ebp)
	movl	%eax, -148(%ebp)
	movl	-112(%ebp), %eax
	movl	%edx, -152(%ebp)
	sall	$12, %eax
	movl	$0, -104(%ebp)
	leal	4095(%eax), %esi
	movl	-96(%ebp), %eax
	movl	%esi, -156(%ebp)
	sall	$12, %eax
	addl	$4095, %eax
	movl	%eax, -160(%ebp)
	movl	_sector, %eax
	movl	%eax, -128(%ebp)
	jmp	L2906
L2874:
	addl	$1, -104(%ebp)
	movswl	_numsectors, %eax
	movl	-104(%ebp), %esi
	addl	$40, -128(%ebp)
	cmpl	%eax, %esi
	jge	L2905
	movl	%esi, %eax
	addl	$40, -184(%ebp)
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.9(%eax), %eax
	movb	%al, -180(%ebp)
L2906:
	movl	-104(%ebp), %edi
	movzbl	-180(%ebp), %edx
	sarl	$3, %edi
	movzbl	_show2dsector(%edi), %eax
	andl	%edx, %eax
	cmpb	%dl, %al
	jne	L2874
	movswl	-104(%ebp), %eax
	call	_yax_getbunch.constprop.0
	testw	%ax, %ax
	js	L2872
	movl	_sector, %eax
	movl	-184(%ebp), %esi
	testw	$384, 14(%eax,%esi)
	je	L2874
L2872:
	movl	-128(%ebp), %esi
	movswl	2(%esi), %eax
	testw	%ax, %ax
	jle	L2874
	movswl	(%esi), %esi
	movl	%edi, -228(%ebp)
	movl	_wall, %ecx
	movl	$0, -92(%ebp)
	movl	%esi, %edx
	addl	%esi, %eax
	movl	%esi, -112(%ebp)
	sall	$5, %edx
	movl	%eax, -216(%ebp)
	movl	_xdim, %eax
	movl	%edx, -208(%ebp)
	addl	%ecx, %edx
	movl	%edx, -188(%ebp)
	sall	$11, %eax
	movl	_ydim, %edx
	movl	%eax, -220(%ebp)
	movl	%edx, %eax
	movl	%ecx, -196(%ebp)
	sall	$11, %eax
	movl	%edx, -232(%ebp)
	movl	$0, -192(%ebp)
	movl	$0, -140(%ebp)
	movl	%eax, -224(%ebp)
L2877:
	movl	-112(%ebp), %esi
	movswl	%si, %eax
	call	_lastwall
	cmpl	%esi, %eax
	jle	L2875
	movl	-92(%ebp), %esi
	testl	%esi, %esi
	je	L2875
	movl	-140(%ebp), %edx
	movl	%esi, -140(%ebp)
	movl	%edx, _xb1-4(,%esi,4)
L2875:
	movl	-188(%ebp), %edx
	movl	-196(%ebp), %ecx
	sall	$5, %eax
	movswl	8(%edx), %edi
	movl	(%edx), %esi
	leal	(%ecx,%eax), %ebx
	sall	$5, %edi
	movl	%esi, -96(%ebp)
	movl	%esi, %eax
	movl	4(%ebx), %esi
	addl	%ecx, %edi
	movl	4(%edx), %ecx
	subl	(%ebx), %eax
	movl	4(%edi), %edx
	movl	(%edi), %edi
	subl	%ecx, %esi
	subl	-96(%ebp), %edi
	subl	%ecx, %edx
/APP
 # 10512 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $1, %edx, %eax
 # 0 "" 2
/NO_APP
	testl	%eax, %eax
	je	L2876
	movl	-120(%ebp), %esi
	movl	-96(%ebp), %eax
	subl	-136(%ebp), %eax
	movl	-164(%ebp), %edx
	subl	%ecx, %esi
	movl	%eax, -96(%ebp)
	movl	-168(%ebp), %edi
/APP
 # 10514 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-220(%ebp), %edx
	subl	-120(%ebp), %ecx
	movl	-96(%ebp), %esi
	movl	-176(%ebp), %edi
	addl	%eax, %edx
	movl	%ecx, %eax
	movl	%edx, -212(%ebp)
	movl	-172(%ebp), %edx
/APP
 # 10515 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-224(%ebp), %esi
	movl	-156(%ebp), %ebx
	movl	-212(%ebp), %edi
	movl	-160(%ebp), %edx
	addl	%eax, %esi
	movl	-212(%ebp), %eax
	subl	-148(%ebp), %eax
	movl	%esi, %ecx
	subl	%edi, %ebx
	subl	-152(%ebp), %ecx
	subl	%esi, %edx
/APP
 # 10516 "source/build/src/engine.cpp" 1
	sarl $31, %eax; addl %ebx, %ebx; adcl %eax, %eax; addl %ecx, %ecx; adcl %eax, %eax; addl %edx, %edx; adcl %eax, %eax; movl %eax, %ebx; shl $4, %ebx; orb $0xf0, %al; xorl %ebx, %eax
 # 0 "" 2
/NO_APP
	orl	%eax, -192(%ebp)
	movl	-92(%ebp), %eax
	movl	%esi, _ry1(,%eax,4)
	movl	%eax, %esi
	movl	%edi, _rx1(,%eax,4)
	addl	$1, %eax
	movl	%eax, _xb1(,%esi,4)
	movl	%eax, -92(%ebp)
L2876:
	addl	$32, -188(%ebp)
	movl	-216(%ebp), %esi
	addl	$1, -112(%ebp)
	cmpl	%esi, -112(%ebp)
	jne	L2877
	movl	-92(%ebp), %eax
	movl	-228(%ebp), %edi
	movl	-232(%ebp), %edx
	testl	%eax, %eax
	je	L2878
	movl	-140(%ebp), %esi
	movl	%esi, _xb1-4(,%eax,4)
L2878:
	movl	-192(%ebp), %esi
	movl	%esi, %eax
	notl	%eax
	testb	$-16, %al
	jne	L2874
	movl	_rx1, %eax
	sall	$11, %edx
	movl	%edx, -192(%ebp)
	movl	%eax, -188(%ebp)
	movl	_ry1, %eax
	subl	%edx, %eax
	movl	_xyaspect, %edx
/APP
 # 10526 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, -216(%ebp)
	testl	$15, %esi
	je	L2879
	movl	-92(%ebp), %eax
	movl	%esi, %edx
	call	__ZL8clippolyii.lto_priv.0
	movl	%eax, -92(%ebp)
	cmpl	$2, %eax
	jle	L2874
L2879:
	movl	-104(%ebp), %eax
	movswl	_headspritesect(%eax,%eax), %eax
	testl	%eax, %eax
	js	L2880
	movl	_sprite, %ebx
	movl	_tsprite, %ecx
	jmp	L2884
L2882:
	movswl	_nextspritesect(%eax,%eax), %eax
	testl	%eax, %eax
	js	L2880
L2884:
	imull	$44, %eax, %edx
	movzwl	12(%ebx,%edx), %edx
	movl	%edx, %esi
	andw	$-32736, %si
	cmpw	$32, %si
	jne	L2882
	notl	%edx
	andl	$72, %edx
	je	L2882
	movl	-132(%ebp), %esi
	imull	$44, %esi, %edx
	addl	$1, %esi
	movl	%esi, -132(%ebp)
	movw	%ax, 30(%ecx,%edx)
	jmp	L2882
L2870:
	call	_videoEndDrawing
	movl	_r_usenewaspect, %edi
	testl	%edi, %edi
	je	L2939
	movl	-200(%ebp), %edx
	movl	-204(%ebp), %eax
	call	_renderSetAspect
	jmp	L2868
L2905:
	cmpl	$1, -132(%ebp)
	jle	L2907
	movl	$1, %eax
L2908:
	leal	1(%eax,%eax), %eax
	cmpl	-132(%ebp), %eax
	jl	L2908
	sarl	%eax
	movl	_sprite, %edi
	movl	_tsprite, %esi
	movl	%eax, -104(%ebp)
L2909:
	movl	-132(%ebp), %eax
	movl	-104(%ebp), %edx
	subl	%edx, %eax
	movl	%eax, -140(%ebp)
	testl	%eax, %eax
	jle	L2914
	imull	$44, %edx, %eax
	movl	%eax, -112(%ebp)
	xorl	%eax, %eax
L2915:
	movl	%eax, -92(%ebp)
	movl	%eax, -96(%ebp)
	jmp	L2911
	.p2align 4,,10
	.p2align 3
L3059:
	movl	_sprite, %edi
	movl	_tsprite, %esi
L2911:
	imull	$44, -92(%ebp), %ebx
	leal	(%esi,%ebx), %eax
	addl	-112(%ebp), %ebx
	addl	%esi, %ebx
	movswl	30(%eax), %ecx
	movswl	30(%ebx), %edx
	imull	$44, %ecx, %ecx
	imull	$44, %edx, %edx
	movl	8(%edi,%edx), %edx
	cmpl	%edx, 8(%edi,%ecx)
	jle	L3168
	addl	$30, %eax
	addl	$30, %ebx
/APP
 # 10646 "source/build/src/engine.cpp" 1
	movw (%eax), %cx; movw (%ebx), %dx; movw %cx, (%ebx); movw %dx, (%eax)
 # 0 "" 2
/NO_APP
	movl	-104(%ebp), %esi
	subl	%esi, -92(%ebp)
	jns	L3059
	movl	-96(%ebp), %eax
	movl	_sprite, %edi
	movl	_tsprite, %esi
L2910:
	addl	$1, %eax
	cmpl	-140(%ebp), %eax
	jne	L2915
	sarl	-104(%ebp)
	jne	L2909
	movl	-132(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -104(%ebp)
	jmp	L2938
L2916:
	subl	$1, -104(%ebp)
	cmpl	$-1, -104(%ebp)
	je	L2870
L3172:
	movl	_sprite, %edi
	movl	_tsprite, %esi
L2938:
	imull	$44, -104(%ebp), %eax
	movswl	30(%esi,%eax), %edx
	movl	%edx, %eax
	imull	$44, %edx, %edx
	leal	(%edi,%edx), %esi
	movl	%esi, -92(%ebp)
	testb	$32, 12(%esi)
	je	L2916
	movzwl	%ax, %eax
	movswl	14(%esi), %edx
	movlps	(%esi), %xmm4
	imull	$44, %eax, %eax
	movzwl	_tilesiz(,%edx,4), %ecx
	movzwl	_tilesiz+2(,%edx,4), %edx
	movlps	%xmm4, -48(%ebp)
	movlps	%xmm4, -112(%ebp)
	addl	%edi, %eax
	movw	%dx, -196(%ebp)
	movzwl	12(%eax), %edx
	movw	%cx, -192(%ebp)
	xorl	%ecx, %ecx
	notl	%edx
	andl	$48, %edx
	jne	L2917
	movswl	22(%eax), %ecx
L2917:
	leal	-20(%ebp), %eax
	movl	%ecx, 32(%esp)
	leal	-40(%ebp), %edx
	movl	%eax, 28(%esp)
	leal	-28(%ebp), %eax
	leal	-32(%ebp), %ecx
	movl	%eax, 24(%esp)
	leal	-36(%ebp), %eax
	leal	-44(%ebp), %esi
	movl	%eax, 20(%esp)
	leal	-24(%ebp), %ebx
	leal	-48(%ebp), %eax
	movl	%esi, 16(%esp)
	movl	%ecx, 8(%esp)
	xorl	%ecx, %ecx
	movl	%edx, 4(%esp)
	xorl	%edx, %edx
	movl	%ebx, 12(%esp)
	movl	%eax, (%esp)
	movl	-92(%ebp), %eax
	call	__ZL19get_floorspr_pointsPKviiPiS1_S1_S1_S1_S1_S1_S1_i.lto_priv.1
	movups	LC51, %xmm6
	movl	-48(%ebp), %ecx
	subl	-136(%ebp), %ecx
	movl	-120(%ebp), %esi
	movl	-164(%ebp), %edx
	movups	%xmm6, _xb1
	subl	-44(%ebp), %esi
	movl	%ecx, %eax
	movl	-168(%ebp), %edi
/APP
 # 10669 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_xdim, %ebx
	movl	-44(%ebp), %edi
	movl	%ecx, %esi
	subl	-120(%ebp), %edi
	movl	-172(%ebp), %edx
	sall	$11, %ebx
	addl	%ebx, %eax
	movl	%ebx, -140(%ebp)
	movl	%eax, -112(%ebp)
	movl	%edi, %eax
	movl	-176(%ebp), %edi
/APP
 # 10670 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_ydim, %ebx
	movl	-112(%ebp), %esi
	movl	%eax, -188(%ebp)
	movl	-160(%ebp), %edi
	sall	$11, %ebx
	leal	(%eax,%ebx), %edx
	movl	%ebx, -96(%ebp)
	movl	%esi, %ebx
	subl	-148(%ebp), %ebx
	movl	%ebx, %eax
	movl	-156(%ebp), %ebx
	subl	%edx, %edi
	movl	%edx, -180(%ebp)
	movl	%edx, %ecx
	movl	%edi, %edx
	subl	-152(%ebp), %ecx
	subl	%esi, %ebx
/APP
 # 10671 "source/build/src/engine.cpp" 1
	sarl $31, %eax; addl %ebx, %ebx; adcl %eax, %eax; addl %ecx, %ecx; adcl %eax, %eax; addl %edx, %edx; adcl %eax, %eax; movl %eax, %ebx; shl $4, %ebx; orb $0xf0, %al; xorl %ebx, %eax
 # 0 "" 2
/NO_APP
	movl	-40(%ebp), %ecx
	movl	%eax, -208(%ebp)
	movl	-180(%ebp), %eax
	subl	-136(%ebp), %ecx
	movl	%esi, _rx1
	movl	-164(%ebp), %edx
	movl	-120(%ebp), %esi
	movl	-168(%ebp), %edi
	subl	-36(%ebp), %esi
	movl	%eax, _ry1
	movl	%ecx, %eax
/APP
 # 10675 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-140(%ebp), %ebx
	movl	-172(%ebp), %edx
	movl	%ecx, %esi
	movl	-176(%ebp), %edi
	addl	%ebx, %eax
	movl	%eax, -132(%ebp)
	movl	-36(%ebp), %eax
	subl	-120(%ebp), %eax
/APP
 # 10676 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-96(%ebp), %ecx
	movl	-160(%ebp), %edi
	movl	-156(%ebp), %ebx
	leal	(%ecx,%eax), %edx
	movl	-132(%ebp), %ecx
	subl	%edx, %edi
	movl	%edx, -184(%ebp)
	movl	%ecx, %eax
	movl	%ecx, %esi
	subl	%ecx, %ebx
	subl	-148(%ebp), %eax
	movl	%edx, %ecx
	movl	%edi, %edx
	subl	-152(%ebp), %ecx
/APP
 # 10677 "source/build/src/engine.cpp" 1
	sarl $31, %eax; addl %ebx, %ebx; adcl %eax, %eax; addl %ecx, %ecx; adcl %eax, %eax; addl %edx, %edx; adcl %eax, %eax; movl %eax, %ebx; shl $4, %ebx; orb $0xf0, %al; xorl %ebx, %eax
 # 0 "" 2
/NO_APP
	movl	-208(%ebp), %ecx
	movl	%esi, _rx1+4
	movl	-164(%ebp), %edx
	movl	-120(%ebp), %esi
	orl	%eax, %ecx
	movl	-168(%ebp), %edi
	subl	-28(%ebp), %esi
	movl	%ecx, -208(%ebp)
	movl	-184(%ebp), %ecx
	movl	%ecx, _ry1+4
	movl	-32(%ebp), %ecx
	subl	-136(%ebp), %ecx
	movl	%ecx, %eax
/APP
 # 10681 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-140(%ebp), %ebx
	movl	-172(%ebp), %edx
	movl	%ecx, %esi
	movl	-176(%ebp), %edi
	addl	%ebx, %eax
	movl	%eax, -140(%ebp)
	movl	-28(%ebp), %eax
	subl	-120(%ebp), %eax
/APP
 # 10682 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-96(%ebp), %esi
	movl	-140(%ebp), %ecx
	movl	-156(%ebp), %ebx
	addl	%eax, %esi
	movl	%ecx, %edi
	movl	%ecx, %eax
	subl	-148(%ebp), %eax
	movl	%esi, %edx
	subl	-152(%ebp), %edx
	subl	%ecx, %ebx
	movl	%edx, %ecx
	movl	-160(%ebp), %edx
	subl	%esi, %edx
/APP
 # 10683 "source/build/src/engine.cpp" 1
	sarl $31, %eax; addl %ebx, %ebx; adcl %eax, %eax; addl %ecx, %ecx; adcl %eax, %eax; addl %edx, %edx; adcl %eax, %eax; movl %eax, %ebx; shl $4, %ebx; orb $0xf0, %al; xorl %ebx, %eax
 # 0 "" 2
/NO_APP
	movl	-208(%ebp), %ecx
	movl	%edi, _rx1+8
	movl	%esi, _ry1+8
	addl	-180(%ebp), %esi
	orl	%eax, %ecx
	subl	-184(%ebp), %esi
	movl	-156(%ebp), %ebx
	movl	%ecx, -140(%ebp)
	movl	-112(%ebp), %ecx
	addl	%ecx, %edi
	subl	-132(%ebp), %edi
	movl	%edi, %edx
	subl	-148(%ebp), %edx
	subl	%edi, %ebx
	movl	%edx, %eax
	movl	%esi, %edx
	subl	-152(%ebp), %edx
	movl	%edx, %ecx
	movl	-160(%ebp), %edx
	subl	%esi, %edx
/APP
 # 10688 "source/build/src/engine.cpp" 1
	sarl $31, %eax; addl %ebx, %ebx; adcl %eax, %eax; addl %ecx, %ecx; adcl %eax, %eax; addl %edx, %edx; adcl %eax, %eax; movl %eax, %ebx; shl $4, %ebx; orb $0xf0, %al; xorl %ebx, %eax
 # 0 "" 2
/NO_APP
	movl	-140(%ebp), %ecx
	movl	%esi, _ry1+12
	movl	%edi, _rx1+12
	orl	%eax, %ecx
	movl	%ecx, %esi
	notl	%esi
	andl	$240, %esi
	jne	L2916
	movl	_xyaspect, %edx
	movl	-188(%ebp), %eax
/APP
 # 10693 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, -208(%ebp)
	movl	$4, -184(%ebp)
	testb	$15, %cl
	jne	L3203
L2919:
	movl	-92(%ebp), %eax
	movzwl	14(%eax), %ebx
	movzbl	17(%eax), %eax
	movl	%eax, _globalpal
	movswl	%bx, %eax
	movw	%bx, _globalpicnum
	cmpl	$30719, %eax
	jbe	L2921
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	movw	%ax, _globalpicnum
	xorl	%eax, %eax
L2921:
	cmpb	$63, _picanm+3(%eax,%eax,4)
	jbe	L2922
	call	_animateoffs
	addl	%eax, %ebx
	movw	%bx, _globalpicnum
	movswl	%bx, %eax
L2922:
	testb	$64, -103(%ebp)
	je	L2924
	testb	$16, _globalorientation+1
	je	L2924
	movzwl	_rottile(,%eax,4), %edx
	cmpw	$-1, %dx
	je	L2924
	movw	%dx, _globalpicnum
	movswl	%dx, %eax
L2924:
/APP
 # 10705 "source/build/src/engine.cpp" 1
	movl %eax, %ebx
	cmpb $200, _walock(%eax)
	jae 0f
	movb $199, _walock(%eax)
	0:
	shrl $3, %eax
	andl $7, %ebx
	movb _gotpic(%eax), %dl
	movb _pow2char_(%ebx), %bl
	orb %bl, %dl
	movb %dl, _gotpic(%eax)
 # 0 "" 2
/NO_APP
	movswl	_globalpicnum, %eax
	cmpw	$0, _tilesiz(,%eax,4)
	jle	L2916
	cmpw	$0, _tilesiz+2(,%eax,4)
	jle	L2916
	movl	_waloff(,%eax,4), %edx
	testl	%edx, %edx
	je	L3204
	movl	%edx, __ZL12globalbufplc.lto_priv.0
L2990:
	movl	-92(%ebp), %eax
	movswl	24(%eax), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	testb	$1, 12(%eax)
	je	L2927
	movsbl	20(%eax), %eax
L2928:
	movl	-92(%ebp), %esi
	movsbl	16(%esi), %edx
	leal	6(%edx,%eax), %eax
	movswl	_numshades, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movzbl	17(%esi), %edx
	movl	-128(%ebp), %esi
	movl	%eax, _globalshade
	sall	$8, %eax
	addl	_palookup(,%edx,4), %eax
	movzbl	32(%esi), %edx
	movl	%eax, _asm3
	movl	_globalhisibility, %eax
	testb	%dl, %dl
	je	L2929
	addl	$16, %edx
	movzbl	%dl, %edx
/APP
 # 10723 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
L2929:
	movl	-36(%ebp), %edx
	movl	-44(%ebp), %ebx
	movl	%eax, _globvis
	movl	-92(%ebp), %eax
	movl	%edx, -188(%ebp)
	subl	%ebx, %edx
	movzwl	12(%eax), %esi
	movl	%ebx, -140(%ebp)
	shrw	%si
	movl	%esi, %eax
	movl	-48(%ebp), %esi
	andl	$1, %eax
	addl	$1, %eax
	movl	%esi, -132(%ebp)
	movb	%al, __ZL14globalpolytype.lto_priv.0
	movl	-40(%ebp), %eax
	subl	%esi, %eax
	movl	%edx, %esi
	movl	%eax, %edx
	movl	%esi, %ecx
	movl	%eax, %edi
	imull	%eax, %edx
	imull	%esi, %ecx
	movl	%edx, %eax
	addl	%ecx, %eax
	je	L2916
	movl	%eax, 4(%esp)
	movl	$1073741824, (%esp)
	call	_tabledivide32.lto_priv.1
	movl	%edi, -180(%ebp)
	movl	-124(%ebp), %edx
	movl	%eax, %ecx
	movl	%edi, %eax
	movl	-144(%ebp), %edi
/APP
 # 10729 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%ecx, %edx
/APP
 # 10729 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, _globalx1
	movl	-140(%ebp), %esi
	movl	%edi, %edx
	movl	-180(%ebp), %eax
	movl	-124(%ebp), %edi
	subl	-188(%ebp), %esi
/APP
 # 10730 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%ecx, %edx
/APP
 # 10730 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-24(%ebp), %ecx
	movl	%eax, __ZL8globaly1.lto_priv.0
	movl	-140(%ebp), %eax
	subl	-20(%ebp), %eax
	movl	%ecx, -188(%ebp)
	subl	-132(%ebp), %ecx
	movl	%eax, %ebx
	movl	%ecx, %esi
	movl	%eax, %ecx
	imull	%eax, %ecx
	movl	%esi, %edx
	imull	%esi, %edx
	movl	%ecx, %eax
	addl	%edx, %eax
	je	L2916
	movswl	-192(%ebp), %edx
	movl	%edx, -140(%ebp)
	movswl	-196(%ebp), %edx
	movl	%edx, -180(%ebp)
	movl	-96(%ebp), %edx
	addl	-208(%ebp), %edx
	movl	%edx, -208(%ebp)
	movl	%eax, 4(%esp)
	movl	$1073741824, (%esp)
	call	_tabledivide32.lto_priv.1
	movl	%edi, -124(%ebp)
	movl	%edi, %edx
	movl	-144(%ebp), %edi
	movl	%eax, %ecx
	movl	%ebx, -96(%ebp)
	movl	%ebx, %eax
/APP
 # 10733 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%ecx, %edx
/APP
 # 10733 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, -192(%ebp)
	movl	-132(%ebp), %esi
	movl	%edi, %edx
	subl	-188(%ebp), %esi
	movl	-124(%ebp), %edi
	movl	%eax, __ZL8globalx2.lto_priv.0
	movl	-96(%ebp), %eax
/APP
 # 10734 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%ecx, %edx
/APP
 # 10734 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-112(%ebp), %esi
	movl	%eax, -196(%ebp)
	movl	%eax, _globaly2
	movswl	_globalpicnum, %eax
	sarl	$4, %esi
	movl	__ZL8globaly1.lto_priv.0, %edi
	movzbl	_picsiz(%eax), %ecx
	movl	%ecx, %eax
	sarl	$4, %ecx
	movl	%ecx, -96(%ebp)
	movl	%esi, %ecx
	movl	_ydim, %esi
	movl	%eax, %ebx
	andl	$15, %ebx
	sall	$7, %esi
	movl	%ebx, -132(%ebp)
	movl	_xdim, %ebx
	movl	%esi, %edx
	movl	-208(%ebp), %esi
	sall	$7, %ebx
	sarl	$4, %esi
	movl	%ebx, -112(%ebp)
	movl	%esi, %eax
	movl	%edx, %esi
	movl	_globalx1, %edx
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%ebx, %esi
	movl	%eax, -188(%ebp)
	subl	%ecx, %esi
/APP
 # 10739 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $28, %edx, %eax
 # 0 "" 2
/NO_APP
	subl	-112(%ebp), %ecx
	movl	%eax, _globalposx
	movl	-192(%ebp), %edx
	movl	-188(%ebp), %esi
	movl	%ecx, %eax
	movl	-196(%ebp), %edi
/APP
 # 10740 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $28, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, _globalposy
	movl	-92(%ebp), %eax
	movzwl	12(%eax), %ebx
	testb	$2, %bl
	jne	L2930
	movl	-96(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	-132(%ebp), %ebx
	movl	%ebx, (%esp)
	call	_msethlineshift
L2931:
	movl	-92(%ebp), %eax
	movzwl	12(%eax), %eax
	testb	$4, %al
	je	L2936
	negl	_globalx1
	negl	__ZL8globaly1.lto_priv.0
	negl	_globalposx
L2936:
	movl	__ZL8globaly1.lto_priv.0, %esi
	movl	_globalposx, %ecx
	xorps	%xmm0, %xmm0
	sall	$2, _globalx1
	movl	-140(%ebp), %edi
	sall	$2, _globaly2
	leal	0(,%esi,4), %edx
	sall	$22, %ecx
	movl	__ZL8globalx2.lto_priv.0, %esi
	cvtsi2ssl	%ecx, %xmm0
	movl	%edx, _asm1
	leal	0(,%esi,4), %edx
	movl	-132(%ebp), %esi
	movl	%ecx, _globalposx
	movl	%edx, _asm2
	movl	_globalposy, %edx
	movss	%xmm0, _fglobalposx
	sall	$22, %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movl	%edx, _globalposy
	xorl	%edx, %edx
	movss	%xmm0, _fglobalposy
	xorps	%xmm0, %xmm0
	cvtsi2ssl	_globalposz, %xmm0
	movss	%xmm0, _fglobalposz
	cmpl	_pow2long.lto_priv.0(,%esi,4), %edi
	jne	L2937
	movl	-96(%ebp), %esi
	movl	-180(%ebp), %edx
	cmpl	%edx, _pow2long.lto_priv.0(,%esi,4)
	sete	%dl
L2937:
	movzbl	%dl, %edx
	movl	-140(%ebp), %esi
	movl	%edx, __ZL12globalispow2.lto_priv.0
	movl	%eax, %edx
	shrw	$2, %ax
	sall	$7, %edx
	andl	$128, %eax
	movl	%esi, __ZL11globalxspan.lto_priv.0
	movl	-180(%ebp), %esi
	andl	$256, %edx
	orl	%edx, %eax
	movl	%esi, __ZL11globalyspan.lto_priv.0
	movl	%eax, _globalorientation
	movl	-184(%ebp), %eax
	call	__ZL17renderFillPolygoni.lto_priv.0
	movl	$1, __ZL12globalispow2.lto_priv.0
	jmp	L2916
	.p2align 4,,10
	.p2align 3
L3168:
	movl	-96(%ebp), %eax
	jmp	L2910
L2914:
	sarl	-104(%ebp)
	jmp	L2909
L2907:
	cmpl	$0, -132(%ebp)
	je	L2870
	xorl	%eax, %eax
	movl	%eax, -104(%ebp)
	jmp	L3172
	.p2align 4,,10
	.p2align 3
L2880:
	movl	-128(%ebp), %esi
	movzbl	-180(%ebp), %eax
	orb	%al, _gotsector(%edi)
	movzwl	14(%esi), %edx
	movl	%edx, %eax
	movl	%edx, _globalorientation
	testb	$1, %al
	jne	L2874
	movzbl	29(%esi), %eax
	movl	%eax, _globalpal
	movl	_palookup(,%eax,4), %eax
	cmpl	_globalpalwritten, %eax
	je	L2886
	testl	%eax, %eax
	cmove	_palookup, %eax
	movl	%eax, _globalpalwritten
	movl	%eax, (%esp)
	call	_setpalookupaddress
L2886:
	movl	-128(%ebp), %eax
	movswl	24(%eax), %edx
	movl	%edx, %ebx
	movl	%edx, %eax
	cmpl	$30719, %edx
	jbe	L2888
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	xorl	%edx, %edx
L2888:
	cmpb	$63, _picanm+3(%edx,%edx,4)
	jbe	L2889
	movl	%edx, %eax
	call	_animateoffs
	addl	%ebx, %eax
	movl	%eax, %ebx
L2889:
	movw	%ax, _globalpicnum
	testb	$64, -103(%ebp)
	je	L2892
	testb	$16, _globalorientation+1
	je	L2892
	movswl	%bx, %eax
	movswl	_rottile(,%eax,4), %eax
	cmpw	$-1, %ax
	je	L2892
	movw	%ax, _globalpicnum
L2891:
/APP
 # 10563 "source/build/src/engine.cpp" 1
	movl %eax, %ebx
	cmpb $200, _walock(%eax)
	jae 0f
	movb $199, _walock(%eax)
	0:
	shrl $3, %eax
	andl $7, %ebx
	movb _gotpic(%eax), %dl
	movb _pow2char_(%ebx), %bl
	orb %bl, %dl
	movb %dl, _gotpic(%eax)
 # 0 "" 2
/NO_APP
	movswl	_globalpicnum, %eax
	cmpw	$0, _tilesiz(,%eax,4)
	jle	L2874
	cmpw	$0, _tilesiz+2(,%eax,4)
	jle	L2874
	cmpl	$0, _waloff(,%eax,4)
	je	L3205
L2894:
	movswl	_globalpicnum, %eax
	movl	-128(%ebp), %esi
	movl	%eax, -196(%ebp)
	movl	_waloff(,%eax,4), %eax
	movl	%eax, __ZL12globalbufplc.lto_priv.0
	movsbl	28(%esi), %edx
	movl	%eax, -212(%ebp)
	movswl	_numshades, %eax
	subl	$1, %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, _globalshade
	movzbl	32(%esi), %edx
	movl	_globalhisibility, %eax
	testb	%dl, %dl
	je	L2895
	addl	$16, %edx
	movzbl	%dl, %edx
/APP
 # 10569 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
L2895:
	movl	%eax, _globvis
	movb	$0, __ZL14globalpolytype.lto_priv.0
	testb	$64, _globalorientation
	jne	L2896
	movl	-136(%ebp), %eax
	xorps	%xmm0, %xmm0
	movl	-124(%ebp), %ecx
	cvtsi2ssl	%eax, %xmm0
	movl	%eax, _globalposx
	movl	-120(%ebp), %eax
	movl	%ecx, _globalx1
	movl	%eax, _globalposy
	movss	%xmm0, _fglobalposx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movl	-144(%ebp), %eax
	movl	%eax, __ZL8globaly1.lto_priv.0
	movss	%xmm0, _fglobalposy
	xorps	%xmm0, %xmm0
	cvtsi2ssl	_globalposz, %xmm0
	movss	%xmm0, _fglobalposz
L2897:
	movl	%ecx, __ZL8globalx2.lto_priv.0
	movl	%eax, _globaly2
	call	__ZL17calc_globalshiftsv.lto_priv.0
	movl	-196(%ebp), %eax
	movl	-212(%ebp), %esi
	movzbl	_picsiz(%eax), %eax
	movl	%esi, 8(%esp)
	movl	%eax, %edx
	andl	$15, %eax
	shrb	$4, %dl
	movl	%eax, (%esp)
	movzbl	%dl, %edx
	movl	%edx, 4(%esp)
	call	_sethlinesizes
	movl	_globalorientation, %eax
	testb	$4, %al
	je	L2898
	movl	_globalposx, %edx
	movl	_globalposy, %ecx
	movl	__ZL8globalx2.lto_priv.0, %ebx
	negl	%edx
	negl	%ecx
	movl	%edx, _globalposy
	movl	__ZL8globaly1.lto_priv.0, %edx
	movl	%ecx, _globalposx
	movl	_globaly2, %ecx
	movl	%edx, __ZL8globalx2.lto_priv.0
	movl	_globalx1, %edx
	negl	%ecx
	movl	%ebx, __ZL8globaly1.lto_priv.0
	negl	%edx
	movl	%ecx, _globalx1
	movl	%edx, _globaly2
L2898:
	testb	$16, %al
	je	L2899
	negl	_globalx1
	negl	__ZL8globaly1.lto_priv.0
	negl	_globalposx
L2899:
	testb	$32, %al
	je	L2900
	negl	__ZL8globalx2.lto_priv.0
	negl	_globaly2
	negl	_globalposy
L2900:
	movsbl	__ZL12globalxshift.lto_priv.0, %edx
	movl	__ZL8globaly1.lto_priv.0, %eax
	movl	%edx, %ecx
	testb	%dl, %dl
	js	L2901
	movl	_globalx1, %esi
	sall	%cl, %eax
	sall	%cl, %esi
	movl	%esi, %ecx
L2902:
	movsbl	__ZL12globalyshift.lto_priv.0, %ebx
	movl	%eax, _asm1
	movl	%ecx, _globalx1
	movl	__ZL8globalx2.lto_priv.0, %esi
	movl	_globaly2, %eax
	movl	%ebx, %ecx
	testb	%bl, %bl
	js	L2903
	sall	%cl, %esi
	sall	%cl, %eax
L2904:
	movl	%esi, _asm2
	movl	_globalposy, %esi
	leal	20(%ebx), %ecx
	xorps	%xmm0, %xmm0
	movl	-128(%ebp), %ebx
	movl	%eax, _globaly2
	xorl	%eax, %eax
	sall	%cl, %esi
	testb	$32, %cl
	cmovne	%eax, %esi
	movzbl	31(%ebx), %ecx
	movl	%esi, %eax
	sall	$24, %ecx
	movl	_globalposx, %esi
	subl	%ecx, %eax
	leal	20(%edx), %ecx
	xorl	%edx, %edx
	sall	%cl, %esi
	testb	$32, %cl
	cmovne	%edx, %esi
	movzbl	30(%ebx), %edx
	movl	%eax, _globalposy
	sall	$24, %edx
	addl	%esi, %edx
	cvtsi2ssl	%edx, %xmm0
	movl	%edx, _globalposx
	movss	%xmm0, _fglobalposx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movl	-92(%ebp), %eax
	movss	%xmm0, _fglobalposy
	xorps	%xmm0, %xmm0
	cvtsi2ssl	_globalposz, %xmm0
	movss	%xmm0, _fglobalposz
	call	__ZL17renderFillPolygoni.lto_priv.0
	jmp	L2874
L2896:
	movl	_wall, %edx
	movl	-208(%ebp), %eax
	addl	%edx, %eax
	movswl	8(%eax), %ecx
	movl	4(%eax), %ebx
	sall	$5, %ecx
	movl	%ebx, -180(%ebp)
	addl	%ecx, %edx
	movl	(%edx), %ecx
	subl	(%eax), %ecx
	movl	4(%edx), %esi
	movl	%ecx, %edx
	movl	%ecx, %edi
	imull	%ecx, %edx
	movl	%esi, -140(%ebp)
	subl	%ebx, %esi
	movl	%edx, %eax
	movl	%esi, %edx
	imull	%esi, %edx
	addl	%edx, %eax
/APP
 # 10581 "source/build/src/engine.cpp" 1
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
	testl	%eax, %eax
	je	L2874
	movl	%eax, %ecx
	xorl	%edx, %edx
	movl	$1048576, %eax
	movl	%edi, -96(%ebp)
	idivl	%ecx
	movl	-124(%ebp), %edx
	movl	%eax, %ecx
	movl	%edi, %eax
	movl	-144(%ebp), %edi
/APP
 # 10583 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%ecx, %edx
/APP
 # 10583 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-180(%ebp), %ebx
	subl	-140(%ebp), %ebx
	movl	%eax, -112(%ebp)
	movl	%edi, %edx
	movl	%eax, _globalx1
	movl	-124(%ebp), %edi
	movl	%ebx, %esi
	movl	-96(%ebp), %eax
/APP
 # 10584 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%ecx, %edx
/APP
 # 10584 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-192(%ebp), %esi
	addl	-216(%ebp), %esi
	movl	%eax, %edi
	movl	%eax, __ZL8globaly1.lto_priv.0
	movl	_xdim, %ebx
	movl	-188(%ebp), %edx
	movl	%esi, %ecx
	movl	_ydim, %esi
	sarl	$4, %ecx
	sarl	$4, %edx
	sall	$7, %ebx
	sall	$7, %esi
	subl	%edx, %ebx
	movl	-112(%ebp), %edx
	movl	%esi, -96(%ebp)
	subl	%ecx, %esi
	movl	%esi, %eax
	movl	%ebx, -140(%ebp)
	movl	%ebx, %esi
/APP
 # 10586 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $28, %edx, %eax
 # 0 "" 2
/NO_APP
	subl	-96(%ebp), %ecx
	movl	-112(%ebp), %edx
	movl	%eax, -180(%ebp)
	movl	%eax, _globalposx
	movl	%ecx, %esi
	movl	-140(%ebp), %eax
/APP
 # 10587 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $28, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, -96(%ebp)
	movl	-184(%ebp), %esi
	movl	_sector, %eax
	movswl	26(%eax,%esi), %eax
	imull	%eax, %eax
	addl	$16777216, %eax
/APP
 # 10592 "source/build/src/engine.cpp" 1
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
	movl	%eax, %esi
	movl	-96(%ebp), %eax
	movl	%esi, %edx
/APP
 # 10593 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $12, %edx, %eax
 # 0 "" 2
/NO_APP
	xorps	%xmm0, %xmm0
	movl	%eax, _globalposy
	movl	%esi, %edx
	cvtsi2ssl	-180(%ebp), %xmm0
	movss	%xmm0, _fglobalposx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movl	-112(%ebp), %eax
	negl	%eax
	movss	%xmm0, _fglobalposy
	xorps	%xmm0, %xmm0
	cvtsi2ssl	_globalposz, %xmm0
	movss	%xmm0, _fglobalposz
/APP
 # 10594 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $12, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	%edi, %eax
	movl	%esi, %edx
	negl	%eax
/APP
 # 10595 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $12, %edx, %eax
 # 0 "" 2
/NO_APP
	jmp	L2897
L2903:
	negl	%ecx
	sarl	%cl, %esi
	sarl	%cl, %eax
	jmp	L2904
L2901:
	negl	%ecx
	sarl	%cl, %eax
	xorl	%ecx, %ecx
	jmp	L2902
L3205:
	call	_tileLoad.isra.0
	jmp	L2894
L2892:
	movswl	%bx, %eax
	jmp	L2891
L2930:
	movl	-92(%ebp), %eax
	movzbl	19(%eax), %eax
	cmpl	$0, _blendtable(,%eax,4)
	je	L3206
L2932:
	cmpl	%eax, _globalblend
	je	L2933
	movl	%eax, _globalblend
	movl	_blendtable(,%eax,4), %eax
	movl	%eax, (%esp)
	call	_fixtransluscence
L2933:
	andb	$2, %bh
	je	L2934
	call	_settransreverse
L2935:
	movl	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	call	_tsethlineshift
	jmp	L2931
L3206:
	xorl	%eax, %eax
	jmp	L2932
	.p2align 4,,10
	.p2align 3
L3012:
	movl	$10616832, %ebx
	movl	$160, %eax
	jmp	L2951
L2821:
	cmpb	$0, _gs+24
	je	L2822
L2991:
	movl	-116(%ebp), %esi
	movl	28(%edi), %ecx
	movl	-92(%ebp), %edx
	movl	308(%esi), %eax
	addl	$67108864, %eax
	subl	%ecx, %eax
	andl	$134217727, %eax
	subl	$67108864, %eax
/APP
 # 2414 "source/sw/src/draw.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
	movl	304(%esi), %eax
	movl	-92(%ebp), %edx
	movl	%ecx, -68(%ebp)
	movl	24(%edi), %ecx
	movl	%eax, -96(%ebp)
	subl	%ecx, %eax
/APP
 # 2415 "source/sw/src/draw.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	leal	(%ecx,%eax), %esi
	jmp	L2819
L2939:
	imull	$200, _xdim, %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	_ydim, %eax
	leal	(%eax,%eax,4), %eax
	sall	$6, %eax
	cltd
	shldl	$16, %eax, %edx
	sall	$16, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, %edx
	movl	$65536, %eax
	call	_renderSetAspect
	jmp	L2868
L3204:
	call	_tileLoad.isra.0
	movswl	_globalpicnum, %eax
	movl	_waloff(,%eax,4), %eax
	movl	%eax, __ZL12globalbufplc.lto_priv.0
	testl	%eax, %eax
	je	L2916
	jmp	L2990
	.p2align 4,,10
	.p2align 3
L3203:
	movl	%ecx, %edx
	movl	$4, %eax
	call	__ZL8clippolyii.lto_priv.0
	movl	%eax, -184(%ebp)
	cmpl	$2, %eax
	jg	L2919
	jmp	L2916
L2927:
	movsbl	28(%eax), %eax
	jmp	L2928
L2934:
	call	_settransnormal
	jmp	L2935
	.cfi_endproc
LFE237:
	.globl	_s_EelAttack
	.data
	.align 32
_s_EelAttack:
	.word	3760
	.space 2
	.long	24
	.long	__Z7NullEels
	.long	_s_EelAttack+16
	.word	3761
	.space 2
	.long	24
	.long	__Z7NullEels
	.long	_s_EelAttack+32
	.word	3762
	.space 2
	.long	24
	.long	__Z7NullEels
	.long	_s_EelAttack+48
	.word	3762
	.space 2
	.long	65536
	.long	__Z11InitEelFires
	.long	_s_EelAttack+64
	.word	3762
	.space 2
	.long	12
	.long	__Z7NullEels
	.long	_s_EelAttack+80
	.word	3763
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_EelAttack+96
	.word	3783
	.space 2
	.long	12
	.long	__Z9DoEelMoves
	.long	_s_EelAttack+96
	.word	3763
	.space 2
	.long	24
	.long	__Z7NullEels
	.long	_s_EelAttack+128
	.word	3764
	.space 2
	.long	24
	.long	__Z7NullEels
	.long	_s_EelAttack+144
	.word	3765
	.space 2
	.long	24
	.long	__Z7NullEels
	.long	_s_EelAttack+160
	.word	3765
	.space 2
	.long	65536
	.long	__Z11InitEelFires
	.long	_s_EelAttack+192
	.word	3765
	.space 2
	.long	12
	.long	__Z7NullEels
	.long	_s_EelAttack+208
	.word	3766
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_EelAttack+224
	.word	3783
	.space 2
	.long	12
	.long	__Z9DoEelMoves
	.long	_s_EelAttack+224
	.word	3766
	.space 2
	.long	24
	.long	__Z7NullEels
	.long	_s_EelAttack+240
	.word	3767
	.space 2
	.long	24
	.long	__Z7NullEels
	.long	_s_EelAttack+256
	.word	3768
	.space 2
	.long	24
	.long	__Z7NullEels
	.long	_s_EelAttack+272
	.word	3768
	.space 2
	.long	65536
	.long	__Z11InitEelFires
	.long	_s_EelAttack+288
	.word	3768
	.space 2
	.long	12
	.long	__Z7NullEels
	.long	_s_EelAttack+304
	.word	3769
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_EelAttack+320
	.word	3783
	.space 2
	.long	12
	.long	__Z9DoEelMoves
	.long	_s_EelAttack+320
	.word	3789
	.space 2
	.long	24
	.long	__Z7NullEels
	.long	_s_EelAttack+352
	.word	3790
	.space 2
	.long	24
	.long	__Z7NullEels
	.long	_s_EelAttack+368
	.word	3791
	.space 2
	.long	24
	.long	__Z7NullEels
	.long	_s_EelAttack+384
	.word	3791
	.space 2
	.long	65536
	.long	__Z11InitEelFires
	.long	_s_EelAttack+400
	.word	3791
	.space 2
	.long	12
	.long	__Z7NullEels
	.long	_s_EelAttack+416
	.word	3792
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_EelAttack+432
	.word	3783
	.space 2
	.long	12
	.long	__Z9DoEelMoves
	.long	_s_EelAttack+432
	.word	3792
	.space 2
	.long	24
	.long	__Z7NullEels
	.long	_s_EelAttack+464
	.word	3793
	.space 2
	.long	24
	.long	__Z7NullEels
	.long	_s_EelAttack+480
	.word	3794
	.space 2
	.long	24
	.long	__Z7NullEels
	.long	_s_EelAttack+496
	.word	3794
	.space 2
	.long	65536
	.long	__Z11InitEelFires
	.long	_s_EelAttack+512
	.word	3794
	.space 2
	.long	12
	.long	__Z7NullEels
	.long	_s_EelAttack+528
	.word	3795
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_EelAttack+544
	.word	3783
	.space 2
	.long	12
	.long	__Z9DoEelMoves
	.long	_s_EelAttack+544
	.globl	_s_EelDead
	.align 4
_s_EelDead:
	.word	3795
	.space 2
	.long	20
	.long	__Z13DoActorDebriss
	.long	_s_EelDead
	.globl	_s_EelStand
	.align 32
_s_EelStand:
	.word	3780
	.space 2
	.long	20
	.long	__Z9DoEelMoves
	.long	_s_EelStand
	.word	3783
	.space 2
	.long	20
	.long	__Z9DoEelMoves
	.long	_s_EelStand+16
	.word	3786
	.space 2
	.long	20
	.long	__Z9DoEelMoves
	.long	_s_EelStand+32
	.word	3789
	.space 2
	.long	20
	.long	__Z9DoEelMoves
	.long	_s_EelStand+48
	.word	3792
	.space 2
	.long	20
	.long	__Z9DoEelMoves
	.long	_s_EelStand+64
	.globl	_EelTouchTarget
	.align 4
_EelTouchTarget:
	.word	1024
	.space 2
	.long	__Z15InitActorAttacks
	.globl	_EelCloseRange
	.align 4
_EelCloseRange:
	.word	950
	.space 2
	.long	__Z15InitActorAttacks
	.word	1024
	.space 2
	.long	__Z19InitActorRepositions
	.globl	_EelLostTarget
	.align 4
_EelLostTarget:
	.word	900
	.space 2
	.long	__Z19InitActorFindPlayers
	.word	1024
	.space 2
	.long	__Z21InitActorWanderArounds
	.globl	_EelEvasive
	.align 4
_EelEvasive:
	.word	790
	.space 2
	.long	__Z16InitActorRunAways
	.word	1024
	.space 2
	.long	__Z19InitActorMoveClosers
	.globl	_EelSurprised
	.align 4
_EelSurprised:
	.word	701
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	1024
	.space 2
	.long	__Z15InitActorDecides
	.globl	_EelBroadcast
	.align 4
_EelBroadcast:
	.word	3
	.space 2
	.long	__Z19InitActorAlertNoises
	.word	6
	.space 2
	.long	__Z21InitActorAmbientNoises
	.word	1024
	.space 2
	.long	__Z15InitActorDecides
	.globl	_EelOffense
	.align 4
_EelOffense:
	.word	649
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	750
	.space 2
	.long	__Z19InitActorAlertNoises
	.word	1024
	.space 2
	.long	__Z19InitActorMoveClosers
	.globl	_EelBattle
	.align 4
_EelBattle:
	.word	649
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	650
	.space 2
	.long	__Z19InitActorAlertNoises
	.word	1024
	.space 2
	.long	__Z19InitActorMoveClosers
	.globl	_sg_EelAttack
	.align 4
_sg_EelAttack:
	.long	_s_EelAttack
	.long	_s_EelAttack+112
	.long	_s_EelAttack+224
	.long	_s_EelAttack+336
	.long	_s_EelAttack+448
	.globl	_sg_EelDead
	.align 4
_sg_EelDead:
	.long	_s_EelDead
	.globl	_sg_EelDie
	.align 4
_sg_EelDie:
	.long	_s_EelDie
	.globl	_sg_EelStand
	.align 4
_sg_EelStand:
	.long	_s_EelStand
	.long	_s_EelStand+16
	.long	_s_EelStand+32
	.long	_s_EelStand+48
	.long	_s_EelStand+64
	.globl	_PredictPlayer
	.bss
	.align 32
_PredictPlayer:
	.space 24124
	.globl	__ZL7tempbuf.lto_priv.0
	.align 32
__ZL7tempbuf.lto_priv.0:
	.space 576
	.globl	_CommPlayers
_CommPlayers:
	.space 1
	.globl	_wsainitialized
	.align 4
_wsainitialized:
	.space 4
	.globl	__ZL6mysock.lto_priv.0
	.data
	.align 4
__ZL6mysock.lto_priv.0:
	.long	-1
	.globl	__ZL6pakmem.lto_priv.0
	.bss
	.align 4
__ZL6pakmem.lto_priv.0:
	.space 4
	.globl	_keypresscallback
	.align 4
_keypresscallback:
	.space 4
	.globl	_MusicInitialized
_MusicInitialized:
	.space 1
	.globl	_FxInitialized
_FxInitialized:
	.space 1
	.globl	_foundgrps
	.align 4
_foundgrps:
	.space 4
	.globl	_GLOBALEXE
	.align 4
_GLOBALEXE:
	.space 24
	.globl	_CleanExit
_CleanExit:
	.space 1
	.globl	_isPaused
_isPaused:
	.space 1
	.globl	_show2dsprite
	.align 32
_show2dsprite:
	.space 2048
	.globl	_show2dwall
	.align 32
_show2dwall:
	.space 2048
	.globl	_EelPersonality
	.data
	.align 32
_EelPersonality:
	.long	_EelBattle
	.long	_EelOffense
	.long	_EelBroadcast
	.long	_EelSurprised
	.long	_EelEvasive
	.long	_EelLostTarget
	.long	_EelCloseRange
	.long	_EelTouchTarget
	.globl	_EelActionSet
	.align 32
_EelActionSet:
	.long	_sg_EelStand
	.long	_sg_EelRun
	.long	0
	.long	0
	.long	0
	.long	_sg_EelRun
	.long	0
	.long	0
	.long	_sg_EelStand
	.long	0
	.long	0
	.long	_sg_EelStand
	.long	_sg_EelDie
	.long	0
	.long	_sg_EelDead
	.long	0
	.long	0
	.long	_sg_EelAttack
	.space 4
	.word	1024
	.space 2
	.long	_sg_EelAttack
	.space 20
	.word	1024
	.space 10
	.long	0
	.long	0
	.long	0
	.long	0
	.globl	_sg_EelRun
	.align 4
_sg_EelRun:
	.long	_s_EelRun
	.long	_s_EelRun+64
	.long	_s_EelRun+128
	.long	_s_EelRun+192
	.long	_s_EelRun+256
	.globl	_s_EelDie
	.align 32
_s_EelDie:
	.word	3795
	.space 2
	.long	20
	.long	__Z10DoEelDeaths
	.space 4
	.word	3795
	.space 2
	.long	20
	.long	__Z10DoEelDeaths
	.space 4
	.word	3795
	.space 2
	.long	20
	.long	__Z10DoEelDeaths
	.space 4
	.word	3795
	.space 2
	.long	20
	.long	__Z10DoEelDeaths
	.space 4
	.word	3795
	.space 2
	.long	20
	.long	__Z10DoEelDeaths
	.space 4
	.word	3795
	.space 2
	.long	20
	.long	__Z10DoEelDeaths
	.space 4
	.globl	_EelAttrib
	.align 32
_EelAttrib:
	.word	100
	.word	110
	.word	120
	.word	130
	.ascii "\3\0\376\375"
	.byte	3
	.space 3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.space 4
	.globl	_s_EelRun
	.align 32
_s_EelRun:
	.word	3780
	.space 2
	.long	20
	.long	__Z9DoEelMoves
	.long	_s_EelRun+16
	.word	3781
	.space 2
	.long	20
	.long	__Z9DoEelMoves
	.long	_s_EelRun+32
	.word	3782
	.space 2
	.long	20
	.long	__Z9DoEelMoves
	.long	_s_EelRun+48
	.word	3781
	.space 2
	.long	20
	.long	__Z9DoEelMoves
	.long	_s_EelRun
	.word	3783
	.space 2
	.long	20
	.long	__Z9DoEelMoves
	.long	_s_EelRun+80
	.word	3784
	.space 2
	.long	20
	.long	__Z9DoEelMoves
	.long	_s_EelRun+96
	.word	3785
	.space 2
	.long	20
	.long	__Z9DoEelMoves
	.long	_s_EelRun+112
	.word	3784
	.space 2
	.long	20
	.long	__Z9DoEelMoves
	.long	_s_EelRun+64
	.word	3786
	.space 2
	.long	20
	.long	__Z9DoEelMoves
	.long	_s_EelRun+144
	.word	3787
	.space 2
	.long	20
	.long	__Z9DoEelMoves
	.long	_s_EelRun+160
	.word	3788
	.space 2
	.long	20
	.long	__Z9DoEelMoves
	.long	_s_EelRun+176
	.word	3787
	.space 2
	.long	20
	.long	__Z9DoEelMoves
	.long	_s_EelRun+128
	.word	3789
	.space 2
	.long	20
	.long	__Z9DoEelMoves
	.long	_s_EelRun+208
	.word	3790
	.space 2
	.long	20
	.long	__Z9DoEelMoves
	.long	_s_EelRun+224
	.word	3791
	.space 2
	.long	20
	.long	__Z9DoEelMoves
	.long	_s_EelRun+240
	.word	3790
	.space 2
	.long	20
	.long	__Z9DoEelMoves
	.long	_s_EelRun+192
	.word	3792
	.space 2
	.long	20
	.long	__Z9DoEelMoves
	.long	_s_EelRun+272
	.word	3793
	.space 2
	.long	20
	.long	__Z9DoEelMoves
	.long	_s_EelRun+288
	.word	3794
	.space 2
	.long	20
	.long	__Z9DoEelMoves
	.long	_s_EelRun+304
	.word	3793
	.space 2
	.long	20
	.long	__Z9DoEelMoves
	.long	_s_EelRun+256
	.globl	_save_totalclock
	.bss
	.align 4
_save_totalclock:
	.space 4
	.globl	_screenshot_dir
	.data
	.align 32
_screenshot_dir:
	.ascii "screenshots\0"
	.space 244
	.globl	_DEMOSS
	.bss
_DEMOSS:
	.space 1
	.globl	__ZL13CONTROL_Flags.lto_priv.0
	.align 32
__ZL13CONTROL_Flags.lto_priv.0:
	.space 512
	.globl	_CONTROL_ButtonState
	.align 8
_CONTROL_ButtonState:
	.space 8
	.globl	__ZL12mapzoomclock.lto_priv.0
	.align 8
__ZL12mapzoomclock.lto_priv.0:
	.space 16
	.globl	__ZL8permhead.lto_priv.0
	.align 4
__ZL8permhead.lto_priv.0:
	.space 4
	.globl	__ZL8permtail.lto_priv.0
	.align 4
__ZL8permtail.lto_priv.0:
	.space 4
	.globl	_DrawBeforeView
_DrawBeforeView:
	.space 1
	.globl	__ZL19clockTicksPerSecond.lto_priv.0
	.align 4
__ZL19clockTicksPerSecond.lto_priv.0:
	.space 4
	.globl	_refreshfreq
	.data
	.align 8
_refreshfreq:
	.long	0
	.long	1078820864
	.globl	_oldipos
	.bss
	.align 32
_oldipos:
	.space 65536
	.globl	_short_oldipos
	.align 32
_short_oldipos:
	.space 512
	.globl	__ZL11MDRCamHoriz.lto_priv.0
	.align 4
__ZL11MDRCamHoriz.lto_priv.0:
	.space 8
	.globl	__ZL9MDRCamAng.lto_priv.0
	.align 4
__ZL9MDRCamAng.lto_priv.0:
	.space 8
	.globl	_NormalVisibility
	.align 2
_NormalVisibility:
	.space 2
	.globl	_globalblend
	.align 4
_globalblend:
	.space 4
	.globl	_blendtable
	.align 32
_blendtable:
	.space 1024
	.globl	__ZL11globalyspan.lto_priv.0
	.align 4
__ZL11globalyspan.lto_priv.0:
	.space 4
	.globl	__ZL11globalxspan.lto_priv.0
	.align 4
__ZL11globalxspan.lto_priv.0:
	.space 4
	.globl	__ZL12globalispow2.lto_priv.0
	.data
	.align 4
__ZL12globalispow2.lto_priv.0:
	.long	1
	.globl	_asm3
	.bss
	.align 4
_asm3:
	.space 4
	.globl	_asm2
	.align 4
_asm2:
	.space 4
	.globl	__ZL12globalyshift.lto_priv.0
__ZL12globalyshift.lto_priv.0:
	.space 1
	.globl	_asm1
	.align 4
_asm1:
	.space 4
	.globl	__ZL12globalxshift.lto_priv.0
__ZL12globalxshift.lto_priv.0:
	.space 1
	.globl	_picsiz
	.align 32
_picsiz:
	.space 30720
	.globl	_globaly2
	.align 4
_globaly2:
	.space 4
	.globl	__ZL8globalx2.lto_priv.0
	.align 4
__ZL8globalx2.lto_priv.0:
	.space 4
	.globl	__ZL8globaly1.lto_priv.0
	.align 4
__ZL8globaly1.lto_priv.0:
	.space 4
	.globl	_globalx1
	.align 4
_globalx1:
	.space 4
	.globl	_fglobalposz
	.align 4
_fglobalposz:
	.space 4
	.globl	_fglobalposy
	.align 4
_fglobalposy:
	.space 4
	.globl	_globalposy
	.align 4
_globalposy:
	.space 4
	.globl	_fglobalposx
	.align 4
_fglobalposx:
	.space 4
	.globl	_globalposx
	.align 4
_globalposx:
	.space 4
	.globl	_globalposz
	.align 4
_globalposz:
	.space 4
	.globl	__ZL14globalpolytype.lto_priv.0
__ZL14globalpolytype.lto_priv.0:
	.space 1
	.globl	_globvis
	.align 4
_globvis:
	.space 4
	.globl	_globalhisibility
	.align 4
_globalhisibility:
	.space 4
	.globl	_globalshade
	.align 4
_globalshade:
	.space 4
	.globl	_numshades
	.align 2
_numshades:
	.space 2
	.globl	__ZL12globalbufplc.lto_priv.0
	.align 4
__ZL12globalbufplc.lto_priv.0:
	.space 4
	.globl	_rottile
	.align 32
_rottile:
	.space 122880
	.globl	_globalpicnum
	.align 2
_globalpicnum:
	.space 2
	.globl	_globalpalwritten
	.align 4
_globalpalwritten:
	.space 4
	.globl	_palookup
	.align 32
_palookup:
	.space 1024
	.globl	_globalpal
	.align 4
_globalpal:
	.space 4
	.globl	_globalorientation
	.align 4
_globalorientation:
	.space 4
	.globl	_xyaspect
	.align 4
_xyaspect:
	.space 4
	.globl	_ry1
	.align 32
_ry1:
	.space 32768
	.globl	_rx1
	.align 32
_rx1:
	.space 32768
	.globl	_xb1
	.align 32
_xb1:
	.space 32768
	.globl	__ZL15beforedrawrooms.lto_priv.0
	.data
	.align 4
__ZL15beforedrawrooms.lto_priv.0:
	.long	1
	.globl	_conbotgoal
	.bss
	.align 4
_conbotgoal:
	.space 4
	.globl	_conbot
	.align 4
_conbot:
	.space 4
	.globl	_NoMeters
_NoMeters:
	.space 1
	.globl	_MessageInputMode
_MessageInputMode:
	.space 1
	.section .rdata,"dr"
	.align 32
__ZZ11DrawCompassP12PLAYERstructE10CompassPic:
	.word	2386
	.word	2387
	.word	2380
	.word	2381
	.word	2390
	.word	2391
	.word	2380
	.word	2381
	.word	2384
	.word	2385
	.word	2380
	.word	2381
	.word	2390
	.word	2391
	.word	2380
	.word	2381
	.word	2388
	.word	2389
	.word	2380
	.word	2381
	.word	2390
	.word	2391
	.word	2380
	.word	2381
	.word	2382
	.word	2383
	.word	2380
	.word	2381
	.word	2390
	.word	2391
	.word	2380
	.word	2381
	.align 4
__ZZ11DrawCompassP12PLAYERstructE12CompassShade:
	.word	25
	.word	19
	.word	15
	.word	9
	.word	1
	.word	1
	.word	9
	.word	15
	.word	19
	.word	25
	.globl	_PanelUpdateMode
	.data
_PanelUpdateMode:
	.byte	1
	.globl	_LevelSecrets
	.bss
	.align 2
_LevelSecrets:
	.space 2
	.globl	_FlagCaptureWinner
	.align 4
_FlagCaptureWinner:
	.space 4
	.globl	_PauseKeySet
_PauseKeySet:
	.space 1
	.globl	_MenuInputMode
_MenuInputMode:
	.space 1
	.globl	_InputMode
_InputMode:
	.space 1
	.globl	_bakipos
	.align 32
_bakipos:
	.space 65536
	.globl	_curipos
	.align 32
_curipos:
	.space 65536
	.globl	_numinterpolations
	.align 4
_numinterpolations:
	.space 4
	.globl	_short_bakipos
	.align 32
_short_bakipos:
	.space 512
	.globl	_short_curipos
	.align 32
_short_curipos:
	.space 1024
	.globl	_short_numinterpolations
	.align 2
_short_numinterpolations:
	.space 2
	.globl	__ZL13so_interpdata.lto_priv.0
	.align 32
__ZL13so_interpdata.lto_priv.0:
	.space 9175360
	.globl	_SectorObject
	.align 32
_SectorObject:
	.space 120560
	.globl	_UsingMenus
_UsingMenus:
	.space 1
	.globl	_zoom
	.align 4
_zoom:
	.space 4
	.globl	_Follow_posy
	.align 4
_Follow_posy:
	.space 4
	.globl	_Follow_posx
	.align 4
_Follow_posx:
	.space 4
	.globl	_ScrollMode2D
_ScrollMode2D:
	.space 1
	.globl	_show2dsector
	.align 32
_show2dsector:
	.space 512
	.globl	_tabledivide32_noinline
	.section .rdata,"dr"
	.align 4
_tabledivide32_noinline:
	.long	_tabledivide32.lto_priv.1
	.globl	_dimensionmode
	.bss
	.align 4
_dimensionmode:
	.space 4
	.globl	_yxaspect
	.align 4
_yxaspect:
	.space 4
	.globl	_newaspect_enable
	.align 4
_newaspect_enable:
	.space 4
	.globl	_CameraTestMode
_CameraTestMode:
	.space 1
	.globl	_g_visibility
	.align 4
_g_visibility:
	.space 4
	.globl	_loc
	.align 4
_loc:
	.space 24
	.globl	_ppp
	.section .rdata,"dr"
	.align 4
_ppp:
	.long	_PredictPlayer
	.globl	_PredictionOn
	.data
_PredictionOn:
	.byte	1
	.globl	_ScreenSavePic
	.bss
	.align 2
_ScreenSavePic:
	.space 2
	.globl	_ReloadPrompt
_ReloadPrompt:
	.space 1
	.globl	_GamePaused
_GamePaused:
	.space 1
.lcomm _RedrawCompass,1,1
	.section .rdata,"dr"
	.align 4
_HelpPagePic:
	.word	5115
	.word	5116
	.word	5117
	.globl	_HelpPage
	.bss
	.align 2
_HelpPage:
	.space 2
	.globl	_HelpInputMode
_HelpInputMode:
	.space 1
	.globl	_viewingrange
	.align 4
_viewingrange:
	.space 4
	.globl	_gotsector
	.align 32
_gotsector:
	.space 512
	.globl	_sectorchanged
	.align 32
_sectorchanged:
	.space 16392
.lcomm _buffer,80,32
.lcomm __ZZ17PrintLocationInfoP12PLAYERstructE8frameval,64,32
.lcomm __ZZ17PrintLocationInfoP12PLAYERstructE8framecnt,4,4
	.globl	_tiletovox
	.align 32
_tiletovox:
	.space 61440
	.globl	_s_StarDown
	.data
	.align 32
_s_StarDown:
	.word	2066
	.space 2
	.long	6
	.long	__Z6DoStars
	.space 4
	.word	2067
	.space 2
	.long	6
	.long	__Z6DoStars
	.space 4
	.word	2068
	.space 2
	.long	6
	.long	__Z6DoStars
	.space 4
	.word	2069
	.space 2
	.long	6
	.long	__Z6DoStars
	.long	_s_StarDown
	.globl	_s_Star
	.align 32
_s_Star:
	.word	2102
	.space 2
	.long	6
	.long	__Z6DoStars
	.space 4
	.word	2103
	.space 2
	.long	6
	.long	__Z6DoStars
	.space 4
	.word	2104
	.space 2
	.long	6
	.long	__Z6DoStars
	.space 4
	.word	2105
	.space 2
	.long	6
	.long	__Z6DoStars
	.long	_s_Star
	.globl	_s_StarDownStuck
	.align 4
_s_StarDownStuck:
	.word	2102
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.long	_s_StarDownStuck
	.globl	_s_StarStuck
	.align 4
_s_StarStuck:
	.word	2102
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.long	_s_StarStuck
	.section .rdata,"dr"
	.align 4
__ZZ11GetRotationsiiE9RotTable8:
	.word	0
	.word	7
	.word	6
	.word	5
	.word	4
	.word	3
	.word	2
	.word	1
	.align 4
__ZZ11GetRotationsiiE9RotTable5:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	3
	.word	2
	.word	1
	.globl	_spriteext
	.bss
	.align 4
_spriteext:
	.space 4
	.globl	_usevoxels
	.data
	.align 4
_usevoxels:
	.long	1
	.globl	_usemodels
	.align 4
_usemodels:
	.long	1
	.globl	_tile2model
	.bss
	.align 32
_tile2model:
	.space 650240
	.globl	_mdinited
	.align 4
_mdinited:
	.space 4
.lcomm _rotang,2,2
.lcomm __ZL11OverlapDraw,4,4
	.globl	_aVoxelArray
	.align 32
_aVoxelArray:
	.space 122880
	.globl	_tsprite
	.align 4
_tsprite:
	.space 4
	.globl	_spritesortcnt
	.align 4
_spritesortcnt:
	.space 4
	.globl	_MoveSkip2
_MoveSkip2:
	.space 1
.lcomm _smoothratio,4,4
.lcomm __ZZ14analyzespritesiiihE3ang,4,4
	.section .rdata,"dr"
	.align 4
__ZL13KuroDemoMagic:
	.ascii "KURODMO\32"
	.globl	__ZL16DemoFileFeatures.lto_priv.0
	.bss
	.align 4
__ZL16DemoFileFeatures.lto_priv.0:
	.space 4
	.globl	_DemoPlayerColors
	.align 4
_DemoPlayerColors:
	.space 8
	.globl	_DemoPlayerNames
	.align 32
_DemoPlayerNames:
	.space 256
	.section .rdata,"dr"
	.align 4
__ZL20KuroDemoTrailerMagic:
	.ascii "KUROEND\32"
	.globl	__ZL16DemoPlayChatNext.lto_priv.0
	.bss
	.align 4
__ZL16DemoPlayChatNext.lto_priv.0:
	.space 4
	.globl	__ZL12DemoPlayChat.lto_priv.0
	.align 4
__ZL12DemoPlayChat.lto_priv.0:
	.space 12
	.globl	_DemoLevelName
	.align 32
_DemoLevelName:
	.space 80
	.globl	_apptitle
	.data
	.align 32
_apptitle:
	.ascii "Build Engine\0"
	.space 243
	.globl	_DemoExtendedFormat
	.bss
_DemoExtendedFormat:
	.space 1
	.globl	_DemoTotalTicsAvailable
_DemoTotalTicsAvailable:
	.space 1
	.globl	_DemoTotalTics
	.align 4
_DemoTotalTics:
	.space 4
	.section .rdata,"dr"
	.align 4
LC46:
	.long	1123024896
	.align 4
LC47:
	.long	872974473
	.align 4
LC48:
	.long	1199570944
	.align 4
LC49:
	.long	1109393408
	.align 4
LC50:
	.long	1007614517
	.align 16
LC51:
	.long	1
	.long	2
	.long	3
	.long	0
	.align 4
LC52:
	.long	1134559232
	.align 4
LC53:
	.long	1128792064
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_ktell;	.scl	2;	.type	32;	.endef
	.def	__Z20kfilelength_internaliPKhPiS1_.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z14kread_internaliPviPKhPKiPi;	.scl	2;	.type	32;	.endef
	.def	__Z15klseek_internaliiiPKhPiS1_;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	@getangle@8;	.scl	2;	.type	32;	.endef
	.def	__Z17FAFgetzrangepointiiisPiS_S_S_;	.scl	2;	.type	32;	.endef
	.def	_hitscan;	.scl	2;	.type	32;	.endef
	.def	_updatesectorz;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	_printext256;	.scl	2;	.type	32;	.endef
	.def	__Z17COVERinsertspritess;	.scl	2;	.type	32;	.endef
	.def	_renderDrawRoomsQ16.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z15SetRedrawScreenP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z9SetBorderP12PLAYERstructi;	.scl	2;	.type	32;	.endef
	.def	__Z15DoActorSetSpeedsh;	.scl	2;	.type	32;	.endef
	.def	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct;	.scl	2;	.type	32;	.endef
	.def	__Z9SpawnUserssP11STATEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z19DoActorSectorDamages;	.scl	2;	.type	32;	.endef
	.def	__Z12DoActorSlides;	.scl	2;	.type	32;	.endef
	.def	__Z17DoFindGroundPoints;	.scl	2;	.type	32;	.endef
	.def	__Z6DoFalls;	.scl	2;	.type	32;	.endef
	.def	__Z11move_spritesiiiiiji;	.scl	2;	.type	32;	.endef
	.def	__Z13NewStateGroupsPP11STATEstruct.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z13SpriteOverlapss;	.scl	2;	.type	32;	.endef
	.def	__Z16ActorFollowTrackss.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z9FAFcanseeiiisiiis;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.1;	.scl	2;	.type	32;	.endef
	.def	_fwrite;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	__Z26DemoAutoRecordSyncMetadatav;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
	.def	_kclose;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	__ZL20DemoAutoRecordFinishv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEj;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj;	.scl	2;	.type	32;	.endef
	.def	__ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERjj;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructILb1EEEvPKcj;	.scl	2;	.type	32;	.endef
	.def	__Z18_mi_malloc_genericP9mi_heap_sjbj;	.scl	2;	.type	32;	.endef
	.def	__Z15mi_heap_try_newP9mi_heap_sjb;	.scl	2;	.type	32;	.endef
	.def	_snprintf;	.scl	2;	.type	32;	.endef
	.def	_strcasecmp;	.scl	2;	.type	32;	.endef
	.def	_getflorzofslopeptr.part.0;	.scl	2;	.type	32;	.endef
	.def	_updatesector;	.scl	2;	.type	32;	.endef
	.def	__Z18videoCaptureScreenPKcc;	.scl	2;	.type	32;	.endef
	.def	__Z13PutStringInfoP12PLAYERstructPKc;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_handleevents.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z10getpacketsv;	.scl	2;	.type	32;	.endef
	.def	__Z18netbroadcastpacketPhi;	.scl	2;	.type	32;	.endef
	.def	__Z17CONFIG_WriteSetupv;	.scl	2;	.type	32;	.endef
	.def	__Z12RTS_Shutdownv;	.scl	2;	.type	32;	.endef
	.def	__Z13MusicShutdownv.part.0;	.scl	2;	.type	32;	.endef
	.def	_engineUnInit;	.scl	2;	.type	32;	.endef
	.def	_uninitgroupfile;	.scl	2;	.type	32;	.endef
	.def	__Z13SoundShutdownv.part.0;	.scl	2;	.type	32;	.endef
	.def	_rotatesprite_.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_videoNextPage;	.scl	2;	.type	32;	.endef
	.def	__Z9timerIniti.isra.0;	.scl	2;	.type	32;	.endef
	.def	_wm_msgbox.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_kopen4load.part.0;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_mi_new_nothrow;	.scl	2;	.type	32;	.endef
	.def	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcjj;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEjj;	.scl	2;	.type	32;	.endef
	.def	_strncpy;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEjjPKcj;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z15pDisplaySpritesP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	_floorf;	.scl	2;	.type	32;	.endef
	.def	_tabledivide32.lto_priv.1;	.scl	2;	.type	32;	.endef
	.def	__Z15QuakeViewChangeP12PLAYERstructPiS1_S1_Ps.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	__Z19so_dointerpolationsi;	.scl	2;	.type	32;	.endef
	.def	_tanf;	.scl	2;	.type	32;	.endef
	.def	_lrintf;	.scl	2;	.type	32;	.endef
	.def	_renderSetAspect;	.scl	2;	.type	32;	.endef
	.def	__Z15DrawOverlapRoomiiiiis;	.scl	2;	.type	32;	.endef
	.def	_renderDrawMasks;	.scl	2;	.type	32;	.endef
	.def	__Z15SyncStatMessagev.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z10operateftav;	.scl	2;	.type	32;	.endef
	.def	__Z15BossHealthMeterv;	.scl	2;	.type	32;	.endef
	.def	__Z13UpdateMiniBarP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z12MNU_DrawMenuv;	.scl	2;	.type	32;	.endef
	.def	__Z17MNU_MeasureStringPKcPsS1_;	.scl	2;	.type	32;	.endef
	.def	__Z14MNU_DrawStringssPKcss;	.scl	2;	.type	32;	.endef
	.def	_deletesprite.isra.0;	.scl	2;	.type	32;	.endef
	.def	@gethiq16angle@8;	.scl	2;	.type	32;	.endef
	.def	_videoClearViewableArea;	.scl	2;	.type	32;	.endef
	.def	_videoSetCorrectedAspect;	.scl	2;	.type	32;	.endef
	.def	__Z22DisplayMiniBarSmStringP12PLAYERstructsssPKc;	.scl	2;	.type	32;	.endef
	.def	__Z14JS_DrawMirrorsP12PLAYERstructiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z12minigametextiiPKcs.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z15drawoverheadmapiiis;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.9;	.scl	2;	.type	32;	.endef
	.def	_videoBeginDrawing;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_lastwall;	.scl	2;	.type	32;	.endef
	.def	__ZL8clippolyii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_videoEndDrawing;	.scl	2;	.type	32;	.endef
	.def	__ZL19get_floorspr_pointsPKviiPiS1_S1_S1_S1_S1_S1_S1_i.lto_priv.1;	.scl	2;	.type	32;	.endef
	.def	_animateoffs;	.scl	2;	.type	32;	.endef
	.def	_msethlineshift;	.scl	2;	.type	32;	.endef
	.def	__ZL17renderFillPolygoni.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_setpalookupaddress;	.scl	2;	.type	32;	.endef
	.def	__ZL17calc_globalshiftsv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_sethlinesizes;	.scl	2;	.type	32;	.endef
	.def	_tileLoad.isra.0;	.scl	2;	.type	32;	.endef
	.def	_fixtransluscence;	.scl	2;	.type	32;	.endef
	.def	_settransreverse;	.scl	2;	.type	32;	.endef
	.def	_tsethlineshift;	.scl	2;	.type	32;	.endef
	.def	_settransnormal;	.scl	2;	.type	32;	.endef
	.def	__Z11InitEelFires;	.scl	2;	.type	32;	.endef
	.def	__Z15InitActorDecides;	.scl	2;	.type	32;	.endef
	.def	__Z13DoActorDebriss;	.scl	2;	.type	32;	.endef
	.def	__Z15InitActorAttacks;	.scl	2;	.type	32;	.endef
	.def	__Z19InitActorRepositions;	.scl	2;	.type	32;	.endef
	.def	__Z19InitActorFindPlayers;	.scl	2;	.type	32;	.endef
	.def	__Z21InitActorWanderArounds;	.scl	2;	.type	32;	.endef
	.def	__Z16InitActorRunAways;	.scl	2;	.type	32;	.endef
	.def	__Z19InitActorMoveClosers;	.scl	2;	.type	32;	.endef
	.def	__Z19InitActorAlertNoises;	.scl	2;	.type	32;	.endef
	.def	__Z21InitActorAmbientNoises;	.scl	2;	.type	32;	.endef
	.def	__Z6DoStars;	.scl	2;	.type	32;	.endef
	.def	__Z12NullAnimators;	.scl	2;	.type	32;	.endef
