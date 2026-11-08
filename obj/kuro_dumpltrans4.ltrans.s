	.file	"<artificial>"
	.text
	.align 2
	.p2align 4
	.globl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0;	.scl	2;	.type	32;	.endef
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0:
LFB1:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	24(%esp), %eax
	movl	%ecx, 16(%esp)
	movl	%eax, (%esp)
	call	_strlen
	movl	16(%esp), %ecx
	movl	%eax, 12(%esp)
	movl	24(%esp), %eax
	movl	%eax, 8(%esp)
	movl	4(%ecx), %eax
	movl	$0, (%esp)
	movl	%eax, 4(%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEjjPKcj
	.cfi_def_cfa_offset 8
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret	$4
	.cfi_endproc
LFE1:
	.section .rdata,"dr"
LC0:
	.ascii "basic_string::append\0"
	.section	.text.unlikely,"x"
LCOLDB1:
	.text
LHOTB1:
	.p2align 4
	.globl	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.isra.0
	.def	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.isra.0;	.scl	2;	.type	32;	.endef
__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.isra.0:
LFB3:
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
	subl	$16, %esp
	.cfi_def_cfa_offset 36
	movl	%edx, (%esp)
	movl	36(%esp), %edi
	movl	%edx, 12(%esp)
	call	_strlen
	leal	8(%ebx), %ecx
	movb	$0, 8(%ebx)
	movl	%ecx, (%ebx)
	leal	(%eax,%edi), %ecx
	movl	$0, 4(%ebx)
	movl	%ecx, (%esp)
	movl	%ebx, %ecx
	movl	%eax, 8(%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEj
	.cfi_def_cfa_offset 32
	movl	%esi, %ecx
	subl	4(%ebx), %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	8(%esp), %eax
	cmpl	%eax, %ecx
	jb	L6
	movl	12(%esp), %edx
	movl	%eax, 4(%esp)
	movl	%ebx, %ecx
	movl	%edx, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj
	.cfi_def_cfa_offset 28
	subl	4(%ebx), %esi
	subl	$8, %esp
	.cfi_def_cfa_offset 36
	cmpl	%edi, %esi
	jb	L6
	movl	%edi, 4(%esp)
	movl	%ebx, %ecx
	movl	%ebp, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj
	.cfi_def_cfa_offset 28
	movl	%ebx, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 36
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
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.isra.0.cold;	.scl	3;	.type	32;	.endef
__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.isra.0.cold:
LFSB3:
L6:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$LC0, (%esp)
	call	__ZSt20__throw_length_errorPKc
	.cfi_endproc
LFE3:
	.text
	.section	.text.unlikely,"x"
LCOLDE1:
	.text
LHOTE1:
	.section	.text.unlikely,"x"
LCOLDB2:
	.text
LHOTB2:
	.p2align 4
	.def	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_;	.scl	3;	.type	32;	.endef
__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_:
LFB7:
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
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	4(%edx), %esi
	movl	4(%ecx), %eax
	leal	(%eax,%esi), %edi
	movl	%edi, 16(%esp)
	movl	(%edx), %edi
	movl	%edi, 20(%esp)
	movl	%edi, %ebp
	leal	8(%edx), %edi
	cmpl	%edi, %ebp
	je	L65
	movl	16(%esp), %edi
	cmpl	%edi, 8(%edx)
	movl	(%ecx), %edi
	jnb	L15
	leal	8(%ecx), %ebp
	cmpl	%ebp, %edi
	je	L15
L13:
	movl	16(%esp), %ebp
	cmpl	%ebp, 8(%ecx)
	jnb	L66
L15:
	movl	$2147483646, %ecx
	subl	%esi, %ecx
	cmpl	%eax, %ecx
	jb	L49
L12:
	movl	%edi, (%esp)
	movl	%edx, %ecx
	leal	8(%ebx), %edi
	movl	%eax, 4(%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj
	.cfi_def_cfa_offset 40
	subl	$8, %esp
	.cfi_def_cfa_offset 48
	movl	%edi, (%ebx)
	movl	(%eax), %esi
	leal	8(%eax), %edx
	movl	%edi, 16(%esp)
	cmpl	%edx, %esi
	je	L67
L26:
	movl	%esi, (%ebx)
	movl	8(%eax), %ecx
	movl	%ecx, 8(%ebx)
L56:
	movl	4(%eax), %esi
L34:
	movl	%esi, 4(%ebx)
	movl	%edx, (%eax)
	movb	$0, 8(%eax)
	movl	$0, 4(%eax)
	addl	$28, %esp
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
L66:
	.cfi_restore_state
	movl	20(%esp), %eax
	movl	%esi, 12(%esp)
	leal	8(%ebx), %esi
	movl	$0, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$0, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEjjPKcj
	.cfi_def_cfa_offset 32
	subl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	%esi, (%ebx)
	leal	8(%eax), %edx
	movl	%esi, 16(%esp)
	movl	(%eax), %esi
	cmpl	%edx, %esi
	jne	L26
	movl	4(%eax), %esi
	leal	1(%esi), %ecx
	movl	%ecx, 20(%esp)
	cmpl	$16, %ecx
	jb	L64
	movl	20(%esp), %ecx
	movl	16(%esp), %edi
	movl	-16(%edx,%ecx), %ebp
	movl	%ebp, -16(%edi,%ecx)
	movl	-12(%edx,%ecx), %ebp
	movl	%ebp, -12(%edi,%ecx)
	movl	-8(%edx,%ecx), %ebp
	movl	%ebp, -8(%edi,%ecx)
	movl	-4(%edx,%ecx), %ebp
	movl	%ebp, -4(%edi,%ecx)
	cmpl	$16, %esi
	jb	L56
	movl	16(%esp), %ecx
	movl	%eax, 24(%esp)
	andl	$-16, %esi
	movl	%ebx, 16(%esp)
	movl	%esi, 20(%esp)
	xorl	%esi, %esi
L22:
	movl	4(%edx,%esi), %ebp
	movl	8(%edx,%esi), %edi
	movl	12(%edx,%esi), %ebx
	movl	(%edx,%esi), %eax
	movl	%ebp, 4(%ecx,%esi)
	movl	%eax, (%ecx,%esi)
	movl	%edi, 8(%ecx,%esi)
	movl	%ebx, 12(%ecx,%esi)
	addl	$16, %esi
	cmpl	20(%esp), %esi
	jb	L22
L57:
	movl	24(%esp), %eax
	movl	16(%esp), %ebx
	movl	4(%eax), %esi
	jmp	L34
	.p2align 4,,10
	.p2align 3
L65:
	movl	(%ecx), %edi
	cmpl	$15, 16(%esp)
	jbe	L12
	leal	8(%ecx), %ebp
	cmpl	%ebp, %edi
	jne	L13
	jmp	L12
	.p2align 4,,10
	.p2align 3
L67:
	movl	4(%eax), %esi
	leal	1(%esi), %ecx
	movl	%ecx, 20(%esp)
	cmpl	$16, %ecx
	jb	L64
	movl	20(%esp), %ecx
	movl	16(%esp), %edi
	movl	-16(%edx,%ecx), %ebp
	movl	%ebp, -16(%edi,%ecx)
	movl	-12(%edx,%ecx), %ebp
	movl	%ebp, -12(%edi,%ecx)
	movl	-8(%edx,%ecx), %ebp
	movl	%ebp, -8(%edi,%ecx)
	movl	-4(%edx,%ecx), %ebp
	movl	%ebp, -4(%edi,%ecx)
	cmpl	$16, %esi
	jb	L56
	movl	16(%esp), %ecx
	movl	%eax, 24(%esp)
	andl	$-16, %esi
	movl	%ebx, 16(%esp)
	movl	%esi, 20(%esp)
	xorl	%esi, %esi
L32:
	movl	4(%edx,%esi), %ebp
	movl	8(%edx,%esi), %edi
	movl	12(%edx,%esi), %ebx
	movl	(%edx,%esi), %eax
	movl	%ebp, 4(%ecx,%esi)
	movl	%eax, (%ecx,%esi)
	movl	%edi, 8(%ecx,%esi)
	movl	%ebx, 12(%ecx,%esi)
	addl	$16, %esi
	cmpl	20(%esp), %esi
	jb	L32
	jmp	L57
	.p2align 4,,10
	.p2align 3
L64:
	andl	$8, %ecx
	jne	L68
	testb	$4, 20(%esp)
	jne	L69
	movl	20(%esp), %edi
	testl	%edi, %edi
	je	L34
	movzbl	8(%eax), %ecx
	andl	$2, %edi
	movb	%cl, 8(%ebx)
	je	L56
	movl	20(%esp), %ecx
	movl	16(%esp), %edi
	movzwl	-2(%edx,%ecx), %esi
	movw	%si, -2(%edi,%ecx)
	movl	4(%eax), %esi
	jmp	L34
L68:
	movl	8(%eax), %edi
	movl	12(%eax), %ebp
	movl	%edi, 8(%ebx)
	movl	%ebp, 12(%ebx)
	movl	20(%esp), %esi
	movl	16(%esp), %ecx
	movl	-8(%edx,%esi), %edi
	movl	-4(%edx,%esi), %ebp
	movl	%edi, -8(%ecx,%esi)
	movl	%ebp, -4(%ecx,%esi)
	movl	4(%eax), %esi
	jmp	L34
L69:
	movl	8(%eax), %esi
	movl	%esi, 8(%ebx)
	movl	20(%esp), %ecx
	movl	16(%esp), %edi
	movl	-4(%edx,%ecx), %esi
	movl	%esi, -4(%edi,%ecx)
	movl	4(%eax), %esi
	jmp	L34
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.cold;	.scl	3;	.type	32;	.endef
__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.cold:
LFSB7:
L49:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$LC0, (%esp)
	call	__ZSt20__throw_length_errorPKc
	.cfi_endproc
LFE7:
	.text
	.section	.text.unlikely,"x"
LCOLDE2:
	.text
LHOTE2:
	.p2align 4
	.def	__ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.constprop.0;	.scl	3;	.type	32;	.endef
__ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.constprop.0:
LFB11:
	.cfi_startproc
	movl	_dragDemo+4, %eax
	testl	%eax, %eax
	sete	%al
	ret
	.cfi_endproc
LFE11:
	.section .rdata,"dr"
	.align 4
LC3:
	.ascii "A - Send to ALL,  T - Send to TEAM\0"
LC4:
	.ascii "%s\0"
LC5:
	.ascii "%s: %s\0"
LC6:
	.ascii "%s\12\0"
	.align 4
LC7:
	.ascii "A - Send to ALL,  T - Send to TEAMa\0"
	.align 4
LC8:
	.ascii "A - Send to ALL,  T - Send to TEAMt\0"
	.text
	.p2align 4
	.def	__Z15GetMessageInputP12PLAYERstruct;	.scl	3;	.type	32;	.endef
__Z15GetMessageInputP12PLAYERstruct:
LFB13:
	.cfi_startproc
	subl	$552, %esp
	.cfi_def_cfa_offset 556
	movl	%esi, 540(%esp)
	cmpb	$0, _MessageInputMode
	.cfi_offset 6, -16
	je	L146
	movl	%eax, %esi
	cmpb	$3, _gs+12
	jg	L147
L78:
	movl	$300, %eax
	call	__Z20MNU_InputSmallStringPcs.constprop.0
	testb	%al, %al
	je	L79
	cmpb	$1, %al
	je	L80
	movb	$0, _MessageInputMode
	xorl	%eax, %eax
	movb	$0, _InputMode
	movb	$0, _KB_LastScan
L81:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L81
	xorl	%eax, %eax
L83:
	movl	$0, _g_keyAsciiFIFO(%eax)
	addl	$16, %eax
	movl	$0, _g_keyAsciiFIFO-12(%eax)
	movl	$0, _g_keyAsciiFIFO-8(%eax)
	movl	$0, _g_keyAsciiFIFO-4(%eax)
	cmpl	$64, %eax
	jb	L83
	movb	$0, _g_keyAsciiEnd
	movb	$0, _g_keyAsciiPos
	jmp	L71
	.p2align 4,,10
	.p2align 3
L146:
	movl	%ebx, 536(%esp)
	.cfi_offset 3, -20
	movl	_CONTROL_ButtonState+4, %ebx
	xorl	%eax, %eax
	movl	%edi, 544(%esp)
	movl	_CONTROL_ButtonState, %ecx
	movl	%ebx, %edx
	andl	$32, %edx
	orl	%edx, %eax
	.cfi_offset 7, -12
	jne	L148
L140:
	movl	536(%esp), %ebx
	.cfi_restore 3
	movl	544(%esp), %edi
	.cfi_restore 7
L71:
	movl	540(%esp), %esi
	addl	$552, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L148:
	.cfi_def_cfa_offset 556
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	andl	$-33, %ebx
	movl	%ecx, _CONTROL_ButtonState
	xorl	%eax, %eax
	movl	%ebx, _CONTROL_ButtonState+4
	movl	$1, __ZL13CONTROL_Flags.lto_priv.0+300
L74:
	movl	$0, _g_keyAsciiFIFO(%eax)
	addl	$16, %eax
	movl	$0, _g_keyAsciiFIFO-12(%eax)
	movl	$0, _g_keyAsciiFIFO-8(%eax)
	movl	$0, _g_keyAsciiFIFO-4(%eax)
	cmpl	$64, %eax
	jb	L74
	movb	$0, _g_keyAsciiEnd
	xorl	%eax, %eax
	movb	$0, _g_keyAsciiPos
	movb	$1, _MessageInputMode
	movb	$1, _InputMode
	movb	$0, __ZZ15GetMessageInputP12PLAYERstructE11TeamSendAll
L76:
	movl	$0, _MessageInputString(%eax)
	addl	$16, %eax
	movl	$0, _MessageInputString-12(%eax)
	movl	$0, _MessageInputString-8(%eax)
	movl	$0, _MessageInputString-4(%eax)
	cmpl	$256, %eax
	jb	L76
	jmp	L140
	.p2align 4,,10
	.p2align 3
L79:
	.cfi_restore 3
	.cfi_restore 7
	cmpb	$0, _MessageInputString
	je	L149
	movl	%ebx, 536(%esp)
	movl	%edi, 544(%esp)
	cmpb	$0, _gNet+14
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	je	L142
	movl	$35, 8(%esp)
	movl	$LC3, 4(%esp)
	movl	$_MessageInputString, (%esp)
	call	_memcmp
	testl	%eax, %eax
	je	L91
	leal	24(%esp), %ebx
	movl	$LC4, 4(%esp)
	movl	%ebx, 8(%esp)
	movl	%ebx, %edi
	movl	$_MessageInputString, (%esp)
	call	_sscanf
	movswl	_numcommands, %eax
	testw	%ax, %ax
	jle	L92
	movl	%ebx, (%esp)
	xorl	%ebx, %ebx
	movl	%ebp, 548(%esp)
	movl	%eax, 20(%esp)
	.cfi_offset 5, -8
	call	_strlen
	movl	%eax, %ebp
	.p2align 4
	.p2align 3
L95:
	movl	_commandlist(,%ebx,8), %edx
	movl	%edx, (%esp)
	movl	%edx, 16(%esp)
	call	_strlen
	cmpl	%eax, %ebp
	jne	L93
	movl	16(%esp), %edx
	movl	%ebp, %ecx
	movl	%edi, %eax
	call	__Z14CON_CommandCmpPKcS0_i
	testb	%al, %al
	jne	L94
L93:
	addl	$1, %ebx
	cmpl	20(%esp), %ebx
	jne	L95
	movl	548(%esp), %ebp
	.cfi_restore 5
L92:
	movl	$_MessageInputString, 4(%esp)
	movl	$__ZZ15GetMessageInputP12PLAYERstructE22HoldMessageInputString, (%esp)
	call	_strcpy
	movl	536(%esp), %ebx
	.cfi_restore 3
	movl	$1163141231, _MessageInputString+28
	movl	$539828289, _MessageInputString
	movl	544(%esp), %edi
	.cfi_restore 7
	movl	$1684956499, _MessageInputString+4
	movl	$544175136, _MessageInputString+8
	movl	$743197761, _MessageInputString+12
	movl	$542384160, _MessageInputString+16
	movl	$1699946541, _MessageInputString+20
	movl	$1948279918, _MessageInputString+24
	movl	$5062981, _MessageInputString+31
	jmp	L71
	.p2align 4,,10
	.p2align 3
L147:
	call	__Z15SetRedrawScreenP12PLAYERstruct
	jmp	L78
	.p2align 4,,10
	.p2align 3
L80:
	cmpb	$0, _gNet+14
	je	L71
	movl	$36, 8(%esp)
	movl	$LC7, 4(%esp)
	movl	$_MessageInputString, (%esp)
	call	_memcmp
	testl	%eax, %eax
	je	L141
	movl	$36, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	$_MessageInputString, (%esp)
	call	_memcmp
	testl	%eax, %eax
	je	L150
	movl	$_MessageInputString, (%esp)
	call	_strlen
	addl	$1, %eax
	cmpl	$35, %eax
	jbe	L71
	movl	$1163141231, _MessageInputString+28
	movl	540(%esp), %esi
	movl	$539828289, _MessageInputString
	movl	$1684956499, _MessageInputString+4
	movl	$544175136, _MessageInputString+8
	movl	$743197761, _MessageInputString+12
	movl	$542384160, _MessageInputString+16
	movl	$1699946541, _MessageInputString+20
	movl	$1948279918, _MessageInputString+24
	movl	$5062981, _MessageInputString+31
	addl	$552, %esp
	.cfi_remember_state
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L149:
	.cfi_restore_state
	movb	$0, _MessageInputMode
	xorl	%eax, %eax
	movb	$0, _InputMode
	movb	$0, _KB_LastScan
L86:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L86
	xorl	%eax, %eax
L88:
	movl	$0, _g_keyAsciiFIFO(%eax)
	addl	$16, %eax
	movl	$0, _g_keyAsciiFIFO-12(%eax)
	movl	$0, _g_keyAsciiFIFO-8(%eax)
	movl	$0, _g_keyAsciiFIFO-4(%eax)
	cmpl	$64, %eax
	jb	L88
	andl	$-134217729, _CONTROL_ButtonState
	movb	$0, _g_keyAsciiEnd
	movb	$0, _g_keyAsciiPos
	movl	$1, __ZL13CONTROL_Flags.lto_priv.0+220
	jmp	L71
	.p2align 4,,10
	.p2align 3
L141:
	movl	%ebx, 536(%esp)
	movl	%edi, 544(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
L91:
	movl	$__ZZ15GetMessageInputP12PLAYERstructE22HoldMessageInputString, 4(%esp)
	movl	$_MessageInputString, (%esp)
	call	_strcpy
	movb	$1, __ZZ15GetMessageInputP12PLAYERstructE11TeamSendAll
L142:
	leal	24(%esp), %edi
L90:
	movb	$0, _MessageInputMode
	xorl	%eax, %eax
	movb	$0, _InputMode
	movb	$0, _KB_LastScan
L96:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L96
	xorl	%eax, %eax
L98:
	movl	$0, _g_keyAsciiFIFO(%eax)
	addl	$16, %eax
	movl	$0, _g_keyAsciiFIFO-12(%eax)
	movl	$0, _g_keyAsciiFIFO-8(%eax)
	movl	$0, _g_keyAsciiFIFO-4(%eax)
	cmpl	$64, %eax
	jb	L98
	andl	$-134217729, _CONTROL_ButtonState
	movb	$0, _g_keyAsciiEnd
	movb	$0, _g_keyAsciiPos
	movl	$1, __ZL13CONTROL_Flags.lto_priv.0+220
	call	__Z22CON_ProcessUserCommandv
	movl	_CONTROL_ButtonState+4, %edx
	xorl	%ecx, %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L100:
	movl	$1, __ZL13CONTROL_Flags.lto_priv.0+4(,%ecx,8)
	movl	$1, __ZL13CONTROL_Flags.lto_priv.0+12(,%ecx,8)
	addl	$2, %ecx
	cmpl	$54, %ecx
	jne	L100
	xorl	%eax, %eax
	movl	$_MessageInputString, 12(%esp)
	andl	$-4194304, %edx
	movl	%eax, _CONTROL_ButtonState
	leal	23262(%esi), %eax
	movl	%eax, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$_ds, (%esp)
	movl	%edx, _CONTROL_ButtonState+4
	call	_sprintf
	movl	_connecthead, %ebx
	cmpb	$0, _gNet+14
	je	L145
	cmpl	$-1, %ebx
	jne	L105
	jmp	L102
	.p2align 4,,10
	.p2align 3
L104:
	movswl	348(%esi), %eax
	movl	_User(,%eax,4), %edx
	imull	$24124, %ebx, %eax
	movswl	_Player+348(%eax), %eax
	movl	_User(,%eax,4), %eax
	movzbl	262(%eax), %eax
	cmpb	%al, 262(%edx)
	je	L144
L103:
	movl	_connectpoint2(,%ebx,4), %ebx
	cmpl	$-1, %ebx
	je	L102
L105:
	cmpl	%ebx, _myconnectindex
	je	L103
	cmpb	$0, __ZZ15GetMessageInputP12PLAYERstructE11TeamSendAll
	je	L104
L144:
	cmpb	$0, _CommEnabled
	je	L103
	movl	$_ds, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.0+1, (%esp)
	movb	$4, __ZL7tempbuf.lto_priv.0
	call	_strcpy
	movl	$_ds, (%esp)
	call	_strlen
	movl	$__ZL7tempbuf.lto_priv.0, %edx
	leal	2(%eax), %ecx
	movswl	%bx, %eax
	call	__Z13netsendpacketiPhi
	jmp	L103
	.p2align 4,,10
	.p2align 3
L107:
	cmpl	%ebx, _myconnectindex
	je	L106
	cmpb	$0, _CommEnabled
	je	L106
	movl	$_ds, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.0+1, (%esp)
	movb	$4, __ZL7tempbuf.lto_priv.0
	call	_strcpy
	movl	$_ds, (%esp)
	call	_strlen
	movl	$__ZL7tempbuf.lto_priv.0, %edx
	leal	2(%eax), %ecx
	movswl	%bx, %eax
	call	__Z13netsendpacketiPhi
L106:
	movl	_connectpoint2(,%ebx,4), %ebx
L145:
	cmpl	$-1, %ebx
	jne	L107
L102:
	movl	%edi, (%esp)
	movl	$_ds, 12(%esp)
	movl	$LC4, 8(%esp)
	movl	$256, 4(%esp)
	call	_snprintf
	movl	%edi, %eax
	call	__Z22DemoAutoRecordChatLinePKc
	movl	%edi, 4(%esp)
	movl	$LC6, (%esp)
	call	__Z10OSD_PrintfPKcz
	movl	$_MessageInputString, %eax
	call	__Z12adduserquotePKc
	movl	_quotebot, %eax
	movl	536(%esp), %ebx
	.cfi_restore 3
	movl	544(%esp), %edi
	.cfi_restore 7
	addl	$8, %eax
	movl	%eax, _quotebot
	movl	%eax, _quotebotgoal
	jmp	L71
L94:
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movb	$1, __ZZ15GetMessageInputP12PLAYERstructE11TeamSendAll
	movl	548(%esp), %ebp
	.cfi_restore 5
	jmp	L90
L150:
	.cfi_restore 3
	.cfi_restore 7
	movl	$__ZZ15GetMessageInputP12PLAYERstructE22HoldMessageInputString, 4(%esp)
	movl	$_MessageInputString, (%esp)
	movl	%edi, 544(%esp)
	.cfi_offset 7, -12
	leal	24(%esp), %edi
	movl	%ebx, 536(%esp)
	.cfi_offset 3, -20
	call	_strcpy
	jmp	L90
	.cfi_endproc
LFE13:
	.p2align 4
	.globl	___tcfGLOBALEXE.lto_priv.0
	.def	___tcfGLOBALEXE.lto_priv.0;	.scl	2;	.type	32;	.endef
___tcfGLOBALEXE.lto_priv.0:
LFB21:
	.cfi_startproc
	movl	_GLOBALEXE, %eax
	cmpl	$_GLOBALEXE+8, %eax
	je	L151
	jmp	_mi_free
	.p2align 4,,10
	.p2align 3
L151:
	ret
	.cfi_endproc
LFE21:
	.p2align 4
	.globl	___tcfdragDemo.lto_priv.0
	.def	___tcfdragDemo.lto_priv.0;	.scl	2;	.type	32;	.endef
___tcfdragDemo.lto_priv.0:
LFB27:
	.cfi_startproc
	movl	_dragDemo, %eax
	cmpl	$_dragDemo+8, %eax
	je	L153
	jmp	_mi_free
	.p2align 4,,10
	.p2align 3
L153:
	ret
	.cfi_endproc
LFE27:
	.p2align 4
	.globl	___tcf_ZL18DemoDropSearchPath.lto_priv.0
	.def	___tcf_ZL18DemoDropSearchPath.lto_priv.0;	.scl	2;	.type	32;	.endef
___tcf_ZL18DemoDropSearchPath.lto_priv.0:
LFB28:
	.cfi_startproc
	movl	__ZL18DemoDropSearchPath.lto_priv.0, %eax
	cmpl	$__ZL18DemoDropSearchPath.lto_priv.0+8, %eax
	je	L155
	jmp	_mi_free
	.p2align 4,,10
	.p2align 3
L155:
	ret
	.cfi_endproc
LFE28:
	.p2align 4
	.globl	___tcf_ZL19DemoDropSidecarPath.lto_priv.0
	.def	___tcf_ZL19DemoDropSidecarPath.lto_priv.0;	.scl	2;	.type	32;	.endef
___tcf_ZL19DemoDropSidecarPath.lto_priv.0:
LFB29:
	.cfi_startproc
	movl	__ZL19DemoDropSidecarPath.lto_priv.0, %eax
	cmpl	$__ZL19DemoDropSidecarPath.lto_priv.0+8, %eax
	je	L157
	jmp	_mi_free
	.p2align 4,,10
	.p2align 3
L157:
	ret
	.cfi_endproc
LFE29:
	.p2align 4
	.globl	__Z11DoQuickLoadv
	.def	__Z11DoQuickLoadv;	.scl	2;	.type	32;	.endef
__Z11DoQuickLoadv:
LFB30:
	.cfi_startproc
	movb	$0, _KB_LastScan
	xorl	%eax, %eax
L160:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L160
	movl	_totalclock, %eax
	movb	$0, _ready2send
	movb	$0, _ReloadPrompt
	movl	%eax, _save_totalclock
	movswl	_QuickLoadNum, %eax
	call	__Z8LoadGames
	cmpl	$-1, %eax
	movl	$0, %eax
	je	L159
	movb	$1, _ready2send
	movl	$-1, %eax
	movw	%ax, _LastSaveNum
	movl	$1, %eax
L159:
	ret
	.cfi_endproc
LFE30:
	.section .rdata,"dr"
LC15:
	.ascii "Mouse Aiming Off\0"
LC16:
	.ascii "Mouse Aiming On\0"
LC17:
	.ascii "Game Paused\0"
LC21:
	.ascii "SENT: %s\0"
LC22:
	.ascii "Messages ON\0"
LC23:
	.ascii "Messages OFF\0"
LC24:
	.ascii "Brightness level (%d)\0"
	.text
	.p2align 4
	.def	__Z8getinputP9SW_PACKETh.constprop.0;	.scl	3;	.type	32;	.endef
__Z8getinputP9SW_PACKETh.constprop.0:
LFB33:
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
	subl	$392, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	imull	$24124, _myconnectindex, %esi
	movb	%al, 86(%esp)
	leal	_Player(%esi), %edi
	movl	%edi, 96(%esp)
	movl	%edi, 72(%esp)
	cmpb	$0, _PredictionOn
	je	L167
	cmpb	$0, _CommEnabled
	movl	$_PredictPlayer, %eax
	cmove	%edi, %eax
	movl	%eax, 72(%esp)
L167:
	leal	136(%esp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	140(%esp), %eax
	fildl	140(%esp)
	cltd
	testl	%edx, %edx
	jns	L168
	fadds	LC12
L168:
	fstpl	88(%esp)
	fldl	88(%esp)
	fmuls	LC13
	xorl	%eax, %eax
	fdivs	LC14
	cmpb	$0, _MultiPlayQuitFlag
	setne	%al
	movl	96(%esp), %ebx
	movzbl	_gs+15, %ecx
	sall	$23, %eax
	orl	_loc+20, %eax
	movl	%eax, _loc+20
	movl	22968(%ebx), %edx
	fildl	136(%esp)
	fmuls	LC13
	faddp	%st, %st(1)
	fldl	__ZZ8getinputP9SW_PACKEThE14lastInputTicks
	fsubr	%st(1), %st
	fstpl	_elapsedInputTicks
	fstpl	__ZZ8getinputP9SW_PACKEThE14lastInputTicks
	cmpb	$1, %cl
	je	L532
	testb	%cl, %cl
	je	L172
L523:
	movl	%edx, %edi
	andl	$1073741824, %edi
L171:
	leal	104(%esp), %eax
	movl	$0, 112(%esp)
	movl	$0, 116(%esp)
	movl	$0, 128(%esp)
	movl	$0, 132(%esp)
	call	__ZL18controlPollDevicesP11ControlInfo.lto_priv.0
	movl	112(%esp), %eax
	movl	%eax, 80(%esp)
	movl	116(%esp), %eax
	movl	%eax, 64(%esp)
	movl	128(%esp), %eax
	movl	%eax, 48(%esp)
	movl	132(%esp), %eax
	movl	%eax, 60(%esp)
	call	__ZL26controlUpdateGameFunctionsv.lto_priv.0
	movl	$1, _inputchecked
	cmpb	$0, _keystatus+89
	je	L176
	cmpb	$0, _CommEnabled
	je	L533
L177:
	cmpb	$0, _PauseKeySet
	jne	L166
	movzbl	_MenuInputMode, %eax
	orb	_UsingMenus, %al
	je	L534
L182:
	movl	_CONTROL_ButtonState+4, %edx
	xorl	%ecx, %ecx
	movl	_CONTROL_ButtonState, %eax
	movl	%ecx, 88(%esp)
	movl	88(%esp), %ecx
	movl	%edx, %ebx
	andl	$64, %ebx
	movl	%ebx, 92(%esp)
	orl	92(%esp), %ecx
	jne	L535
L191:
	movl	_dimensionmode, %eax
	subl	$5, %eax
	cmpl	$1, %eax
	jbe	L197
	movzbl	_ScrollMode2D, %edx
L198:
	cmpb	$0, 86(%esp)
	jne	L201
	testb	%dl, %dl
	jne	L202
L201:
	movzbl	_MenuInputMode, %eax
	orb	_UsingMenus, %al
L203:
	orl	%eax, %edx
	orb	_InputMode, %dl
	jne	L166
	movl	_CONTROL_ButtonState, %ebx
	movl	_CONTROL_ButtonState+4, %esi
	cmpb	$0, _keystatus+57
	movl	%ebx, %eax
	setne	%cl
	movl	%ebx, 88(%esp)
	shrdl	$6, %esi, %eax
	movl	%esi, 92(%esp)
	orl	%ecx, %eax
	movl	%ebx, %ecx
	sall	$31, %eax
	orl	_loc+20, %eax
	shrb	$7, %cl
	movl	%eax, 44(%esp)
	movl	%eax, _loc+20
	movl	96(%esp), %eax
	movl	22980(%eax), %edx
	movzbl	22970(%eax), %eax
	movb	%al, 56(%esp)
	shrb	$4, %al
	andl	$1, %eax
	cmpb	%al, %cl
	je	L227
	cmpl	$1, %edx
	movl	$70, 56(%esp)
	sbbl	%eax, %eax
	andl	$-56, %eax
	addl	$84, %eax
	movl	%eax, 32(%esp)
L228:
	cmpb	$0, 86(%esp)
	jne	L352
	movl	88(%esp), %eax
	movl	56(%esp), %esi
	andl	$1, %eax
	negl	%eax
	andl	%eax, %esi
	movl	%esi, 40(%esp)
L229:
	movl	80(%esp), %eax
	imull	_move_scale, %eax
	xorl	%ecx, %ecx
	movl	64(%esp), %ebx
	imull	_turn_scale, %ebx
	movl	%ecx, 20(%esp)
	sarl	$8, %eax
	movl	%eax, 24(%esp)
	movl	88(%esp), %eax
	sarl	$8, %ebx
	andl	$16, %eax
	movl	%eax, 16(%esp)
	orl	%ecx, %eax
	je	L230
	movl	96(%esp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	L536
L230:
	movl	48(%esp), %eax
	movl	$2097152, %edx
	sall	$16, %ebx
	sall	$16, %eax
	call	_fix16_div
	movl	$0, 80(%esp)
	movl	%eax, %ecx
	movl	$-2147418109, %eax
	imull	%ebx
	movl	32(%esp), %eax
	addl	%eax, %eax
	addl	%ebx, %edx
	sarl	$31, %ebx
	sarl	$14, %edx
	subl	%ebx, %edx
	imull	%eax, %edx
	leal	(%edx,%ecx), %eax
	movl	%eax, 64(%esp)
L231:
	testl	%edi, %edi
	je	L232
	movl	60(%esp), %eax
	movl	$4194304, %edx
	sall	$16, %eax
	call	_fix16_div
	xorl	%ecx, %ecx
	negl	%eax
	movl	%eax, %edi
L233:
	movl	%edi, %eax
	movl	32(%esp), %esi
	movl	$-2147418109, %ebx
	negl	%eax
	cmpb	$0, _gs+17
	cmovne	%eax, %edi
	imull	120(%esp), %esi
	sall	$16, %esi
	movl	%esi, %eax
	imull	%ebx
	addl	%esi, %edx
	sarl	$31, %esi
	sarl	$14, %edx
	subl	%esi, %edx
	movl	56(%esp), %esi
	imull	104(%esp), %esi
	subl	%edx, %edi
	movl	%esi, %eax
	imull	%ebx
	addl	%esi, %edx
	sarl	$31, %esi
	sarl	$14, %edx
	subl	%edx, %esi
	movl	80(%esp), %edx
	addl	%esi, %edx
	movl	24(%esp), %esi
	imull	56(%esp), %esi
	movl	%edx, 80(%esp)
	movl	%esi, %eax
	imull	%ebx
	leal	(%edx,%esi), %ebx
	sarl	$31, %esi
	xorl	%edx, %edx
	sarl	$14, %ebx
	movl	%edx, 52(%esp)
	movl	20(%esp), %edx
	subl	%ebx, %esi
	leal	(%esi,%ecx), %eax
	movl	%eax, 60(%esp)
	movl	88(%esp), %eax
	andl	$4, %eax
	movl	%eax, 48(%esp)
	movl	16(%esp), %eax
	movl	%eax, %ecx
	orl	%edx, %ecx
	je	L235
	movl	96(%esp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	L537
L235:
	movl	48(%esp), %edx
	movl	88(%esp), %ebx
	xorl	%esi, %esi
	movl	52(%esp), %ecx
	movl	%esi, 28(%esp)
	movl	%edx, %eax
	andl	$8192, %ebx
	orl	%ecx, %eax
	movl	%ebx, 24(%esp)
	jne	L238
	movl	%ebx, %eax
	orl	%esi, %eax
	jne	L538
L239:
	movl	88(%esp), %ebx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	movl	%ecx, 20(%esp)
	movl	%ebx, %edx
	andl	$8, %ebx
	movl	%ebx, %eax
	andl	$16384, %edx
	orl	%esi, %eax
	movl	%edx, 16(%esp)
	jne	L249
	movl	%edx, %eax
	orl	%ecx, %eax
	je	L250
	movl	96(%esp), %eax
	movl	104(%eax), %esi
	testl	%esi, %esi
	je	L539
L249:
	movl	__ZZ8getinputP9SW_PACKEThE12turnheldtime, %eax
	movzbl	_PedanticMode, %edx
	addl	$3, %eax
	movb	%dl, 48(%esp)
	movl	%eax, __ZZ8getinputP9SW_PACKEThE12turnheldtime
	testb	%dl, %dl
	je	L253
	movl	32(%esp), %edx
	movl	64(%esp), %esi
	sall	$16, %edx
	leal	196608(%esi), %ecx
	addl	%esi, %edx
	cmpl	$15, %eax
	cmovge	%edx, %ecx
	jmp	L242
	.p2align 4,,10
	.p2align 3
L538:
	movl	96(%esp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	L239
L238:
	movl	__ZZ8getinputP9SW_PACKEThE12turnheldtime, %eax
	movl	88(%esp), %edx
	xorl	%ecx, %ecx
	movzbl	_PedanticMode, %ebx
	movl	%ecx, 20(%esp)
	addl	$3, %eax
	andl	$16384, %edx
	movl	%eax, __ZZ8getinputP9SW_PACKEThE12turnheldtime
	movb	%bl, 48(%esp)
	movl	%edx, 16(%esp)
	testb	%bl, %bl
	jne	L540
	cmpl	$14, %eax
	jle	L353
	fildl	32(%esp)
L243:
	cmpb	$0, _CommEnabled
	je	L244
	movss	LC10, %xmm0
	fstps	32(%esp)
	movss	32(%esp), %xmm2
	mulss	LC18, %xmm2
L245:
	addss	%xmm2, %xmm0
	movl	64(%esp), %esi
	movl	%esi, %ecx
	cvttss2sil	%xmm0, %eax
	subl	%eax, %ecx
	xorl	%esi, %eax
	js	L530
L259:
	cmpl	$-2147483648, %ecx
	je	L260
L242:
	movl	24(%esp), %ebx
	movl	28(%esp), %esi
	movl	%ebx, %eax
	orl	%esi, %eax
	je	L262
	movl	96(%esp), %eax
	movl	104(%eax), %edx
	testl	%edx, %edx
	je	L541
L251:
	movl	88(%esp), %eax
	xorl	%edx, %edx
	movl	60(%esp), %ebx
	movl	%edx, 68(%esp)
	addl	40(%esp), %ebx
	andl	$2, %eax
	movl	%eax, 64(%esp)
	movl	64(%esp), %eax
	orl	68(%esp), %eax
	je	L264
	subl	56(%esp), %ebx
L264:
	movl	$6553600, %eax
	cmpl	%eax, %ecx
	cmovle	%ecx, %eax
	movl	%eax, %esi
	movl	$-6553600, %eax
	cmpl	%eax, %esi
	cmovl	%eax, %esi
	movl	$8388608, %eax
	cmpl	%eax, %edi
	cmovg	%eax, %edi
	movl	$-8388608, %eax
	cmpl	%eax, %edi
	cmovl	%eax, %edi
	movl	96(%esp), %eax
	movl	22972(%eax), %eax
	movl	%eax, 64(%esp)
	cmpb	$0, 48(%esp)
	je	L265
	xorw	%si, %si
	xorw	%di, %di
L266:
	movzwl	80(%esp), %eax
	addw	_loc, %bx
	addw	_loc+2, %ax
	movw	%bx, _loc
	movw	%ax, _loc+2
	cmpb	$0, 86(%esp)
	jne	L269
	movl	$80, %edx
	movl	$-80, %ecx
	cmpw	%dx, %bx
	cmovle	%ebx, %edx
	cmpw	%cx, %dx
	cmovl	%ecx, %edx
	movswl	%dx, %ebx
	movl	$80, %edx
	cmpw	%dx, %ax
	movl	%ebx, 80(%esp)
	cmovg	%edx, %eax
	movl	$-80, %edx
	cmpw	%dx, %ax
	cmovl	%edx, %eax
	movl	72(%esp), %edx
	movl	300(%edx), %edx
	movswl	%ax, %ecx
	movl	%ecx, 60(%esp)
	movl	%edx, %ebx
	sarl	$31, %ebx
	movl	%ebx, %eax
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %eax
	testl	%eax, %eax
	leal	65535(%eax), %ecx
	cmovns	%eax, %ecx
	sarl	$16, %ecx
	leal	512(%ecx), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %edx
	movl	80(%esp), %eax
/APP
 # 6007 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $9, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%ecx, %ebx
	movl	%eax, 72(%esp)
	movl	80(%esp), %eax
	andl	$2047, %ebx
	movswl	_sintable(%ebx,%ebx), %ebx
	movl	%ebx, %edx
/APP
 # 6008 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $9, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 80(%esp)
	movl	%ebx, %edx
	movl	60(%esp), %eax
/APP
 # 6010 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $9, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	$1536, %ecx
	movl	%eax, %ebx
	movl	60(%esp), %eax
	andl	$2047, %ecx
	movswl	_sintable(%ecx,%ecx), %edx
/APP
 # 6011 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $9, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	72(%esp), %ecx
	addl	80(%esp), %eax
	movw	%ax, _loc+2
	leal	(%ecx,%ebx), %edx
	movw	%dx, _loc
L269:
	addl	%esi, _loc+4
	addl	%edi, _loc+8
	cmpb	$0, _MenuButtonAutoRun
	je	L272
	movl	96(%esp), %eax
	movl	44(%esp), %esi
	movb	$0, _MenuButtonAutoRun
	movzbl	_gs+21, %ecx
	movzbl	22970(%eax), %eax
	movl	%esi, %edx
	orb	$4, %dh
	movb	%al, 72(%esp)
	shrb	$4, %al
	andl	$1, %eax
	cmpl	%ecx, %eax
	cmove	%esi, %edx
	movl	%edx, 44(%esp)
L272:
	movl	88(%esp), %eax
	leal	0(,%eax,4), %edx
	andl	$1024, %edx
	orl	44(%esp), %edx
	cmpb	$0, _CommEnabled
	jne	L274
	cmpb	$0, _MenuButtonAutoAim
	je	L276
	movl	96(%esp), %esi
	movb	$0, _MenuButtonAutoAim
	movzbl	22969(%esi), %ebx
	movzbl	_gs+23, %esi
	movl	%ebx, %ecx
	movb	%bl, 72(%esp)
	movl	%edx, %ebx
	shrb	%cl
	orb	$-128, %bl
	andl	$1, %ecx
	cmpl	%esi, %ecx
	cmovne	%ebx, %edx
L276:
	movl	92(%esp), %esi
	movl	%eax, %ebx
	leal	(%eax,%eax), %ecx
	sall	$6, %ebx
	andl	$12288, %ecx
	shrl	%esi
	andl	$6291456, %ebx
	movl	%esi, %edi
	movl	%eax, %esi
	sall	$12, %eax
	sall	$9, %esi
	andl	$256, %edi
	andl	$131072, %eax
	andl	$65536, %esi
	orl	%esi, %edi
	movl	64(%esp), %esi
	sarl	$3, %esi
	andl	$15, %esi
	orl	%edi, %esi
	orl	%esi, %eax
	orl	%eax, %ebx
	movl	64(%esp), %eax
	orl	%ebx, %ecx
	movl	96(%esp), %ebx
	orl	%edx, %ecx
	andl	$-121, %eax
	movl	%eax, 22972(%ebx)
	movl	%ecx, %ebx
	movl	%ecx, %esi
	movl	%ecx, _loc+20
	andl	$15, %ebx
	jne	L280
	movl	88(%esp), %esi
	movl	92(%esp), %edi
	movl	%ecx, 72(%esp)
	.p2align 4
	.p2align 3
L281:
	leal	17(%ebx), %ecx
	movl	%edi, %edx
	movl	%esi, %eax
	shrdl	%cl, %edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	L563
	movl	%edx, %eax
L563:
	andl	$1, %eax
	xorl	%ecx, %ecx
	addl	$1, %ebx
	orl	%ecx, %eax
	jne	L542
	cmpl	$10, %ebx
	jne	L281
	movl	72(%esp), %esi
L280:
	movl	92(%esp), %edx
	xorl	%eax, %eax
	andl	$32768, %edx
	orl	%edx, %eax
	jne	L543
L282:
	movl	92(%esp), %edx
	xorl	%eax, %eax
	andl	$65536, %edx
	orl	%edx, %eax
	jne	L544
L289:
	movl	92(%esp), %edx
	xorl	%eax, %eax
	andl	$524288, %edx
	orl	%edx, %eax
	jne	L545
L294:
	movl	88(%esp), %eax
	xorl	%edx, %edx
	movl	$3, %ecx
	movl	%edx, 76(%esp)
	andl	$-2147483648, %eax
	movl	%eax, 72(%esp)
	movl	72(%esp), %eax
	orl	76(%esp), %eax
	jne	L295
	movl	88(%esp), %ecx
	shrl	$30, %ecx
	andl	$1, %ecx
L295:
	movl	92(%esp), %edx
	xorl	%eax, %eax
	movl	%eax, 72(%esp)
	movl	72(%esp), %eax
	andl	$1, %edx
	movl	%edx, 76(%esp)
	orl	76(%esp), %eax
	je	L296
	movl	$4, %ecx
L296:
	movl	92(%esp), %edx
	xorl	%eax, %eax
	movl	%eax, 72(%esp)
	movl	72(%esp), %eax
	andl	$2, %edx
	movl	%edx, 76(%esp)
	orl	76(%esp), %eax
	je	L297
	movl	$5, %ecx
L297:
	movl	92(%esp), %edx
	xorl	%eax, %eax
	movl	%eax, 72(%esp)
	movl	72(%esp), %eax
	andl	$4, %edx
	movl	%edx, 76(%esp)
	orl	76(%esp), %eax
	je	L298
	cmpl	$3, _dimensionmode
	movl	$6, %eax
	cmove	%eax, %ecx
L298:
	movl	92(%esp), %edx
	xorl	%eax, %eax
	movl	$112, %edi
	movl	%eax, 72(%esp)
	movl	72(%esp), %eax
	andl	$8, %edx
	movl	%edx, 76(%esp)
	orl	76(%esp), %eax
	jne	L299
	movl	%ecx, %edi
	sall	$4, %edi
L299:
	movl	88(%esp), %edx
	movl	88(%esp), %ecx
	movl	%edx, %ebx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	sall	$10, %ebx
	movl	%ebx, 72(%esp)
	movl	92(%esp), %ebx
	shrdl	$2, %ebx, %eax
	cmpb	$0, _keystatus+69
	movl	72(%esp), %ebx
	setne	%cl
	andl	$201326592, %eax
	sall	$14, %ecx
	andl	$1572864, %ebx
	orl	%ecx, %esi
	leal	0(,%edx,4), %ecx
	sall	$12, %edx
	andl	$536870912, %ecx
	orl	%ecx, %esi
	movl	%edx, %ecx
	andl	$262144, %ecx
	orl	%esi, %ecx
	orl	%ecx, %ebx
	movl	88(%esp), %ecx
	movl	%ebx, %edx
	movl	92(%esp), %ebx
	shrdl	$11, %ebx, %ecx
	movl	92(%esp), %ebx
	andl	$33554432, %ecx
	orl	%edx, %ecx
	orl	%ecx, %eax
	movl	88(%esp), %ecx
	shrdl	$12, %ebx, %ecx
	andl	$1073741824, %ecx
	orl	%ecx, %eax
	orl	%edi, %eax
	movl	%eax, _loc+20
	cmpw	$3, _gNet+12
	je	L546
L300:
	cmpb	$0, 86(%esp)
	je	L547
L305:
	movl	_CONTROL_ButtonState+4, %edx
	xorl	%ecx, %ecx
	movl	_CONTROL_ButtonState, %eax
	movl	%edx, %ebx
	andl	$16384, %ebx
	orl	%ebx, %ecx
	je	L166
	andb	$-65, %dh
	movl	%eax, _CONTROL_ButtonState
	cmpb	$0, _gs+22
	movl	%edx, _CONTROL_ButtonState+4
	movl	$1, __ZL13CONTROL_Flags.lto_priv.0+372
	sete	_gs+22
L166:
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
L533:
	.cfi_restore_state
	movzbl	_InputMode, %eax
	orb	_UsingMenus, %al
	orb	_CheatInputMode, %al
	jne	L178
	xorb	$1, _PauseKeySet
	movb	$0, _keystatus+89
	je	L179
	leal	102(%esp), %edx
	leal	136(%esp), %ecx
	movl	$LC17, %eax
	movb	$1, _GamePaused
	call	__Z17MNU_MeasureStringPKcPsS1_
	movswl	102(%esp), %edx
	movl	$320, %eax
	movl	$999, 4(%esp)
	movl	$LC17, (%esp)
	movl	$100, %ecx
	subl	%edx, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	movl	96(%esp), %eax
	sarl	%edx
	movswl	%dx, %edx
	call	__Z14PutStringTimerP12PLAYERstructssPKcs
	movl	$1, %eax
	call	__Z9PauseSongh
	.p2align 4
	.p2align 3
L176:
	cmpb	$0, _CommEnabled
	jne	L177
L178:
	movl	96(%esp), %eax
	testb	$2, 22968(%eax)
	je	L177
	cmpb	$0, _ReloadPrompt
	je	L177
	cmpw	$0, _QuickLoadNum
	js	L548
	movb	$1, _keystatus+1
	movl	$5, _ControlPanelType
	jmp	L177
	.p2align 4,,10
	.p2align 3
L172:
	movl	_CONTROL_ButtonState+4, %ebx
	xorl	%ecx, %ecx
	movl	%ecx, 88(%esp)
	movl	88(%esp), %ecx
	andl	$8192, %ebx
	movl	%ebx, 92(%esp)
	orl	92(%esp), %ecx
	je	L523
	movl	_CONTROL_ButtonHeldState+4, %ebx
	xorl	%ecx, %ecx
	movl	%ecx, 88(%esp)
	movl	88(%esp), %ecx
	andl	$8192, %ebx
	movl	%ebx, 92(%esp)
	orl	92(%esp), %ecx
	jne	L523
	movl	96(%esp), %ebx
	xorl	$1073741824, %edx
	cmpb	$0, _gs+64
	sete	_gs+64
	movl	%edx, 22968(%ebx)
	andl	$1073741824, %edx
	je	L549
	movl	96(%esp), %ebx
	movl	$LC16, %edx
L522:
	movl	%ebx, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movl	22968(%ebx), %eax
	movl	%eax, %edi
	movl	%eax, 88(%esp)
	andl	$1073741824, %edi
	jmp	L171
	.p2align 4,,10
	.p2align 3
L535:
	movl	_dimensionmode, %ebx
	andl	$-65, %edx
	movl	%eax, _CONTROL_ButtonState
	movl	%edx, _CONTROL_ButtonState+4
	movl	_Player(%esi), %eax
	movl	%ebx, 88(%esp)
	movl	%edx, %ebx
	movl	96(%esp), %edx
	movl	%eax, _Follow_posx
	movl	$1, __ZL13CONTROL_Flags.lto_priv.0+308
	movl	4(%edx), %eax
	movl	%eax, _Follow_posy
	cmpl	$3, 88(%esp)
	je	L550
	cmpl	$5, 88(%esp)
	jne	L194
	movl	$6, _dimensionmode
L193:
	xorl	%ecx, %ecx
	andl	$2048, %ebx
	movzbl	_ScrollMode2D, %edx
	movl	%ecx, %eax
	orl	%ebx, %eax
	je	L198
	movl	_CONTROL_ButtonHeldState+4, %ebx
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	andl	$2048, %ebx
	orl	%ebx, %eax
	jne	L198
	movl	_Player(%esi), %eax
	testb	%dl, %dl
	sete	%dl
	movl	%eax, _Follow_posx
	movl	96(%esp), %eax
	movb	%dl, _ScrollMode2D
	movl	4(%eax), %eax
	movl	%eax, _Follow_posy
	jmp	L198
	.p2align 4,,10
	.p2align 3
L532:
	movl	_CONTROL_ButtonState+4, %ebx
	xorl	%ecx, %ecx
	movl	%ecx, 88(%esp)
	movl	88(%esp), %ecx
	andl	$8192, %ebx
	movl	%ebx, 92(%esp)
	orl	92(%esp), %ecx
	jne	L551
	movl	%edx, %edi
	andl	$1073741824, %edi
	je	L171
	orb	$16, %ah
	andl	$-1073741825, %edx
	movb	$0, _gs+64
	xorl	%edi, %edi
	movl	%eax, _loc+20
	movl	96(%esp), %eax
	movl	%edx, 22968(%eax)
	jmp	L171
	.p2align 4,,10
	.p2align 3
L534:
	movl	96(%esp), %eax
	call	__Z15GetMessageInputP12PLAYERstruct
	movzbl	_keystatus+56, %eax
	orb	_MessageInputMode, %al
	orb	_keystatus+184, %al
	orb	_keystatus+42, %al
	orb	_keystatus+54, %al
	jne	L182
	cmpb	$0, _HelpInputMode
	jne	L183
	cmpb	$0, _keystatus+59
	je	L182
	xorl	%eax, %eax
	movb	$0, _keystatus+59
	movw	%ax, _HelpPage
	movb	$1, _HelpInputMode
	movb	$0, _PanelUpdateMode
	movb	$1, _InputMode
	cmpb	$0, _CommEnabled
	jne	L182
	movb	$1, _GamePaused
	jmp	L182
	.p2align 4,,10
	.p2align 3
L551:
	movl	96(%esp), %eax
	orl	$1073741824, %edx
	movl	$1073741824, %edi
	movb	$1, _gs+64
	movl	%edx, 22968(%eax)
	jmp	L171
	.p2align 4,,10
	.p2align 3
L202:
	imull	$24124, _myconnectindex, %eax
	cmpl	%eax, %esi
	jne	L166
	cmpb	$0, _Prediction
	jne	L166
	leal	136(%esp), %eax
	call	__ZL18controlPollDevicesP11ControlInfo.lto_priv.0
	call	__ZL26controlUpdateGameFunctionsv.lto_priv.0
	movzbl	_MenuInputMode, %eax
	movl	$1, _inputchecked
	movl	$0, __ZZ16MoveScrollMode2DP12PLAYERstructE5mfvel
	movb	%al, 56(%esp)
	orb	_UsingMenus, %al
	movl	$0, __ZZ16MoveScrollMode2DP12PLAYERstructE6mfsvel
	jne	L166
	movl	_CONTROL_ButtonState+4, %ebx
	xorl	%eax, %eax
	movl	_CONTROL_ButtonState, %ecx
	movl	%eax, 88(%esp)
	movl	88(%esp), %eax
	movl	%ebx, %edx
	andl	$512, %edx
	movl	%edx, 92(%esp)
	orl	92(%esp), %eax
	je	L205
	movl	_Player(%esi), %eax
	movl	%eax, _Follow_posx
	movl	96(%esp), %eax
	movl	4(%eax), %eax
	movl	%eax, _Follow_posy
L205:
	movl	%ebx, %edx
	xorl	%eax, %eax
	andl	$2048, %edx
	movl	%eax, 88(%esp)
	movl	88(%esp), %eax
	movl	%edx, 92(%esp)
	orl	92(%esp), %eax
	je	L206
	movl	_CONTROL_ButtonHeldState+4, %edx
	xorl	%eax, %eax
	movl	%eax, 88(%esp)
	movl	88(%esp), %eax
	andl	$2048, %edx
	movl	%edx, 92(%esp)
	orl	92(%esp), %eax
	jne	L206
	movl	_Player(%esi), %eax
	cmpb	$0, _ScrollMode2D
	sete	_ScrollMode2D
	movl	%eax, _Follow_posx
	movl	96(%esp), %eax
	movl	4(%eax), %eax
	movl	%eax, _Follow_posy
L206:
	movl	%ecx, %eax
	xorl	%edx, %edx
	xorl	%esi, %esi
	andl	$16, %eax
	movl	%edx, 92(%esp)
	movl	%eax, 88(%esp)
	movl	88(%esp), %eax
	orl	92(%esp), %eax
	je	L207
	movl	148(%esp), %eax
	sarl	$2, %eax
	negl	%eax
	movl	%eax, %esi
L207:
	movl	136(%esp), %eax
	movzbl	_InputMode, %edx
	sarl	$2, %eax
	movb	%dl, 44(%esp)
	subl	%eax, %esi
	movl	144(%esp), %eax
	movl	%esi, 88(%esp)
	negl	%eax
	movl	%esi, __ZZ16MoveScrollMode2DP12PLAYERstructE6mfsvel
	sarl	$2, %eax
	movl	%eax, __ZZ16MoveScrollMode2DP12PLAYERstructE5mfvel
	movl	%eax, %esi
	movzbl	_HelpInputMode, %eax
	movb	%al, 24(%esp)
	testb	%al, %al
	jne	L208
	movl	%ecx, %eax
	xorl	%edx, %edx
	andl	$4, %eax
	movl	%edx, 36(%esp)
	movl	%eax, 32(%esp)
	movl	32(%esp), %eax
	orl	36(%esp), %eax
	je	L209
	movl	88(%esp), %eax
	addl	$35, %eax
	movl	%eax, __ZZ16MoveScrollMode2DP12PLAYERstructE6mfsvel
L209:
	movl	%ecx, %eax
	xorl	%edx, %edx
	andl	$8, %eax
	movl	%edx, 92(%esp)
	movl	%eax, 88(%esp)
	movl	88(%esp), %eax
	orl	92(%esp), %eax
	je	L531
	subl	$35, __ZZ16MoveScrollMode2DP12PLAYERstructE6mfsvel
L531:
	cmpb	$0, 44(%esp)
	jne	L212
	movl	%ecx, %eax
	xorl	%edx, %edx
	andl	$8192, %eax
	movl	%edx, 92(%esp)
	movl	%eax, 88(%esp)
	movl	88(%esp), %eax
	orl	92(%esp), %eax
	jne	L213
	movl	%ecx, %eax
	andl	$16384, %eax
	je	L212
L214:
	subl	$35, __ZZ16MoveScrollMode2DP12PLAYERstructE6mfsvel
L219:
	cmpb	$0, 24(%esp)
	jne	L525
L212:
	movl	%ecx, %eax
	xorl	%edx, %edx
	andl	$1, %eax
	movl	%edx, 92(%esp)
	movl	%eax, 88(%esp)
	movl	88(%esp), %eax
	orl	92(%esp), %eax
	je	L220
	addl	$35, %esi
	movl	%esi, __ZZ16MoveScrollMode2DP12PLAYERstructE5mfvel
L220:
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	andl	$2, %eax
	orl	%ecx, %eax
	je	L525
	subl	$35, %esi
	movl	%esi, __ZZ16MoveScrollMode2DP12PLAYERstructE5mfvel
L525:
	movl	__ZZ16MoveScrollMode2DP12PLAYERstructE6mfsvel, %eax
	movl	%eax, 88(%esp)
L216:
	cmpl	$-80, %esi
	jge	L222
	movl	$-80, __ZZ16MoveScrollMode2DP12PLAYERstructE5mfvel
	movl	$-80, %esi
L223:
	cmpl	$-80, 88(%esp)
	jge	L224
	movl	$-80, __ZZ16MoveScrollMode2DP12PLAYERstructE6mfsvel
	movl	$-80, 88(%esp)
L225:
	movl	96(%esp), %eax
	movl	300(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %eax
	testl	%eax, %eax
	leal	65535(%eax), %ecx
	cmovns	%eax, %ecx
	sarl	$16, %ecx
	leal	512(%ecx), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %edx
	movl	%esi, %eax
/APP
 # 2602 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $9, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 44(%esp)
	movl	%ecx, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %ebx
	movl	%esi, %eax
	movl	%ebx, %edx
/APP
 # 2603 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $9, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	%ebx, %edx
	movl	88(%esp), %eax
/APP
 # 2605 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $9, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	$1536, %ecx
	movl	%eax, %ebx
	movl	88(%esp), %eax
	andl	$2047, %ecx
	movswl	_sintable(%ecx,%ecx), %edx
/APP
 # 2606 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $9, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, %esi
	movl	44(%esp), %eax
	addl	_Follow_posy, %esi
	leal	(%eax,%ebx), %edx
	movl	_x_min_bound, %eax
	addl	_Follow_posx, %edx
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	_x_max_bound, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movzbl	_ScrollMode2D, %edx
	movl	%eax, _Follow_posx
	movl	_y_min_bound, %eax
	cmpl	%eax, %esi
	cmovl	%eax, %esi
	movl	_y_max_bound, %eax
	cmpl	%eax, %esi
	cmovg	%eax, %esi
	movzbl	56(%esp), %eax
	orb	_UsingMenus, %al
	movl	%esi, _Follow_posy
	jmp	L203
	.p2align 4,,10
	.p2align 3
L197:
	movl	_CONTROL_ButtonState+4, %ebx
	jmp	L193
	.p2align 4,,10
	.p2align 3
L550:
	movl	$5, _dimensionmode
	jmp	L193
	.p2align 4,,10
	.p2align 3
L194:
	movl	$3, _dimensionmode
	cmpl	$1, _numplayers
	jle	L196
	cmpw	$3, _gNet+12
	je	L196
	movl	96(%esp), %eax
	movl	352(%eax), %edx
	testl	%edx, %edx
	je	L196
	call	__Z10SetFragBarP12PLAYERstruct.part.0
L196:
	movl	96(%esp), %eax
	movb	$0, _ScrollMode2D
	call	__Z15SetRedrawScreenP12PLAYERstruct
	jmp	L191
	.p2align 4,,10
	.p2align 3
L232:
	movl	60(%esp), %ecx
	sarl	$6, %ecx
	negl	%ecx
	jmp	L233
	.p2align 4,,10
	.p2align 3
L352:
	movl	$0, 40(%esp)
	movl	$0, 56(%esp)
	jmp	L229
	.p2align 4,,10
	.p2align 3
L548:
	movb	$0, _ReloadPrompt
	jmp	L177
	.p2align 4,,10
	.p2align 3
L227:
	cmpl	$1, %edx
	movl	$35, 56(%esp)
	sbbl	%eax, %eax
	andl	$-36, %eax
	addl	$54, %eax
	movl	%eax, 32(%esp)
	jmp	L228
	.p2align 4,,10
	.p2align 3
L549:
	orb	$16, %ah
	movl	$LC15, %edx
	movl	%eax, _loc+20
	jmp	L522
	.p2align 4,,10
	.p2align 3
L540:
	movl	64(%esp), %esi
	movl	32(%esp), %ecx
	movl	%esi, %edx
	sall	$16, %ecx
	subl	%ecx, %edx
	leal	-196608(%esi), %ecx
	cmpl	$15, %eax
	cmovge	%edx, %ecx
	jmp	L242
	.p2align 4,,10
	.p2align 3
L537:
	movl	48(%esp), %ebx
	movl	52(%esp), %esi
	movl	%ebx, %eax
	orl	%esi, %eax
	je	L236
	movl	56(%esp), %esi
	addl	%esi, 80(%esp)
L236:
	movl	88(%esp), %eax
	xorl	%edx, %edx
	andl	$8, %eax
	orl	%edx, %eax
	je	L237
	movl	56(%esp), %esi
	subl	%esi, 80(%esp)
L237:
	movl	88(%esp), %edx
	movzbl	_PedanticMode, %eax
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	movl	%esi, 20(%esp)
	movb	%al, 48(%esp)
	movl	%edx, %eax
	movl	%edx, %ebx
	andl	$8192, %eax
	andl	$16384, %ebx
	orl	%ecx, %eax
	movl	%ebx, 16(%esp)
	jne	L345
	movl	%ebx, %eax
	orl	%esi, %eax
	je	L526
L252:
	movl	56(%esp), %esi
	subl	%esi, 80(%esp)
L526:
	movl	64(%esp), %ecx
	jmp	L251
	.p2align 4,,10
	.p2align 3
L536:
	imull	56(%esp), %ebx
	movl	$-2147418109, %eax
	movl	$0, 64(%esp)
	imull	%ebx
	leal	(%edx,%ebx), %eax
	sarl	$31, %ebx
	sarl	$14, %eax
	subl	%eax, %ebx
	subl	48(%esp), %ebx
	movl	%ebx, 80(%esp)
	jmp	L231
	.p2align 4,,10
	.p2align 3
L274:
	cmpb	$0, _keystatus+89
	je	L276
	movb	$0, _keystatus+89
	orb	$2, %dh
	jmp	L276
	.p2align 4,,10
	.p2align 3
L265:
	movl	96(%esp), %eax
	movl	308(%eax), %ecx
	movl	304(%eax), %eax
	movl	%ecx, 88(%esp)
	movl	%eax, 60(%esp)
	testb	$2, 64(%esp)
	jne	L552
L267:
	testb	$4, 64(%esp)
	jne	L553
L268:
	movl	96(%esp), %ecx
	movl	_CONTROL_ButtonState+4, %edx
	movl	308(%ecx), %eax
	movl	%edx, 92(%esp)
	movl	%eax, 48(%esp)
	subl	88(%esp), %eax
	addl	%eax, 28(%ecx)
	movl	304(%ecx), %eax
	subl	60(%esp), %eax
	addl	%eax, 24(%ecx)
	movl	_loc+20, %eax
	movl	%eax, 44(%esp)
	movl	_CONTROL_ButtonState, %eax
	movl	%eax, 88(%esp)
	jmp	L266
	.p2align 4,,10
	.p2align 3
L262:
	movl	16(%esp), %ebx
	movl	20(%esp), %esi
	movl	%ebx, %eax
	orl	%esi, %eax
	je	L251
	movl	96(%esp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	jne	L251
	movl	%ecx, 64(%esp)
	jmp	L252
	.p2align 4,,10
	.p2align 3
L546:
	movl	92(%esp), %edx
	xorl	%eax, %eax
	andl	$4096, %edx
	orl	%edx, %eax
	je	L300
	movl	88(%esp), %eax
	movl	92(%esp), %edx
	movl	$1, __ZL13CONTROL_Flags.lto_priv.0+356
	movl	%eax, _CONTROL_ButtonState
	movswl	_screenpeek, %eax
	andb	$-17, %dh
	movl	%edx, _CONTROL_ButtonState+4
	movl	_connectpoint2(,%eax,4), %edx
	movswl	%dx, %eax
	movl	%edx, %ecx
	testw	%dx, %dx
	jns	L301
	movswl	_connecthead, %eax
	movl	%eax, %ecx
L301:
	movw	%cx, _screenpeek
	movzbl	_gs+13, %ebx
	cmpl	$2, _dimensionmode
	je	L302
	cmpl	_myconnectindex, %eax
	je	L554
L302:
	imull	$24124, %eax, %eax
	cmpw	$0, _Player+23300(%eax)
	leal	_Player(%eax), %esi
	movl	96(%esp), %eax
	jg	L303
	addl	$23304, %eax
	movl	$768, 8(%esp)
	movl	$_palette_data, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
L304:
	xorl	%eax, %eax
	movl	$_palette_data, %edx
	call	_paletteSetColorTable
	movzbl	%bl, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	call	_videoSetPalette
	movl	%esi, %eax
	call	__Z19DoPlayerDivePaletteP12PLAYERstruct
	movl	%esi, %eax
	call	__Z26DoPlayerNightVisionPaletteP12PLAYERstruct
	jmp	L300
	.p2align 4,,10
	.p2align 3
L545:
	movl	88(%esp), %eax
	andl	$-524289, 92(%esp)
	movl	$1, __ZL13CONTROL_Flags.lto_priv.0+412
	movl	92(%esp), %edx
	movl	%eax, _CONTROL_ButtonState
	movl	96(%esp), %eax
	movl	%edx, _CONTROL_ButtonState+4
	movswl	348(%eax), %eax
	movl	_User(,%eax,4), %eax
	movsbw	273(%eax), %ax
	addl	$1, %eax
	cwtl
	orl	%eax, %esi
	jmp	L294
	.p2align 4,,10
	.p2align 3
L543:
	movl	96(%esp), %eax
	andl	$-32769, 92(%esp)
	movl	$1, __ZL13CONTROL_Flags.lto_priv.0+380
	movl	88(%esp), %ecx
	movswl	348(%eax), %eax
	movl	92(%esp), %ebx
	movl	%ecx, _CONTROL_ButtonState
	movl	_User(,%eax,4), %eax
	movl	%ebx, _CONTROL_ButtonState+4
	movsbw	273(%eax), %dx
	cmpb	$13, %dl
	je	L362
	movl	$15, %eax
	testb	%dl, %dl
	jne	L555
L284:
	orl	%eax, %esi
	movl	%esi, _loc+20
	jmp	L282
	.p2align 4,,10
	.p2align 3
L544:
	movl	96(%esp), %ebx
	movl	88(%esp), %edx
	movl	$1, __ZL13CONTROL_Flags.lto_priv.0+388
	andl	$-65537, 92(%esp)
	movl	92(%esp), %ecx
	movswl	348(%ebx), %eax
	movl	%edx, _CONTROL_ButtonState
	movl	%ecx, _CONTROL_ButtonState+4
	movl	_User(,%eax,4), %eax
	movsbw	273(%eax), %dx
	movl	$14, %eax
	cmpb	$13, %dl
	je	L290
	movl	$15, %eax
	cmpb	$1, %dl
	je	L290
	subl	$1, %edx
	movl	23012(%ebx), %ecx
	movswl	%dx, %eax
	movl	$9, %edx
	jmp	L293
	.p2align 4
	.p2align 4,,10
	.p2align 3
L292:
	subl	$1, %eax
L293:
	testl	%eax, %eax
	cmovs	%edx, %eax
	btl	%eax, %ecx
	jnc	L292
	cmpw	$0, 23016(%ebx,%eax,2)
	je	L292
	cwtl
	addl	$1, %eax
L290:
	orl	%eax, %esi
	jmp	L289
	.p2align 4,,10
	.p2align 3
L547:
	movl	__ZZ12FunctionKeysP12PLAYERstructE9rts_delay, %eax
	movzbl	_keystatus+60, %edx
	movl	$2, %ebx
	addl	$1, %eax
	movb	%dl, 86(%esp)
	movl	%eax, __ZZ12FunctionKeysP12PLAYERstructE9rts_delay
	testb	%dl, %dl
	jne	L306
	xorl	%ebx, %ebx
	cmpb	$0, _keystatus+59
	setne	%bl
L306:
	movzbl	_keystatus+61, %edx
	movzbl	_keystatus+62, %ecx
	movl	$8, %esi
	movzbl	_keystatus+65, %edi
	testb	%dl, %dl
	movb	%dl, 72(%esp)
	movl	$3, %edx
	cmovne	%edx, %ebx
	testb	%cl, %cl
	movl	$4, %edx
	cmovne	%edx, %ebx
	cmpb	$0, _keystatus+63
	movl	$5, %edx
	cmovne	%edx, %ebx
	cmpb	$0, _keystatus+64
	movl	$6, %edx
	cmovne	%edx, %ebx
	movl	%edi, %edx
	testb	%dl, %dl
	movl	$7, %edx
	cmovne	%edx, %ebx
	movzbl	_keystatus+66, %edx
	testb	%dl, %dl
	movb	%dl, 88(%esp)
	cmovne	%esi, %ebx
	cmpb	$0, _keystatus+67
	movl	$9, %esi
	cmovne	%esi, %ebx
	cmpb	$0, _keystatus+68
	je	L314
	cmpb	$0, _keystatus+56
	jne	L315
	cmpb	$0, _keystatus+184
	jne	L381
	movzbl	_keystatus+42, %eax
	orb	_keystatus+54, %al
	jne	L556
L318:
	cmpl	$1, _numplayers
	jle	L557
L324:
	testb	%cl, %cl
	je	L337
	movb	$0, _keystatus+62
	movb	$1, _keystatus+1
	movl	$3, _ControlPanelType
L337:
	movl	%edi, %eax
	testb	%al, %al
	je	L338
	movl	96(%esp), %esi
	movzbl	_keystatus+42, %ecx
	movb	$0, _keystatus+65
	orb	_keystatus+54, %cl
	movl	22968(%esi), %eax
	jne	L558
	testl	$67108864, %eax
	je	L340
	movl	96(%esp), %esi
	andl	$-67108865, %eax
	movl	%eax, 22968(%esi)
L338:
	cmpb	$0, 88(%esp)
	je	L341
	xorb	$1, _gs+25
	movb	$0, _keystatus+66
	je	L342
	movl	96(%esp), %eax
	movl	$LC22, %edx
	call	__Z17PutStringInfoLineP12PLAYERstructPKc
L341:
	cmpb	$0, _keystatus+68
	je	L343
	movb	$0, _keystatus+68
	movb	$1, _keystatus+1
	movl	$6, _ControlPanelType
L343:
	cmpb	$0, _keystatus+87
	je	L305
	movzbl	_gs+13, %eax
	movb	$0, _keystatus+87
	leal	1(%eax), %edx
	cmpb	$7, %dl
	jg	L384
	addl	$2, %eax
	movsbl	%al, %eax
L344:
	movb	%dl, _gs+13
	movl	%eax, 8(%esp)
	movl	$LC24, 4(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	movl	96(%esp), %esi
	movl	$_ds, %edx
	movl	%esi, %eax
	call	__Z17PutStringInfoLineP12PLAYERstructPKc
	cmpb	$0, 23302(%esi)
	jne	L305
	cmpw	$0, 23300(%esi)
	jg	L305
	movzbl	_gs+13, %ebx
	xorl	%eax, %eax
	movl	$_palette_data, %edx
	call	_paletteSetColorTable
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movzbl	%bl, %eax
	call	_videoSetPalette
	jmp	L305
	.p2align 4,,10
	.p2align 3
L542:
	movl	72(%esp), %esi
	orl	%ebx, %esi
	movl	%esi, _loc+20
	jmp	L280
	.p2align 4,,10
	.p2align 3
L253:
	cmpl	$14, %eax
	jle	L356
	fildl	32(%esp)
L255:
	cmpb	$0, _CommEnabled
	je	L256
	movss	LC10, %xmm0
	fstps	32(%esp)
	movss	32(%esp), %xmm1
	mulss	LC18, %xmm1
L257:
	addss	%xmm1, %xmm0
	movl	64(%esp), %esi
	cvttss2sil	%xmm0, %eax
	leal	(%eax,%esi), %ecx
	xorl	%esi, %eax
	js	L259
L530:
	xorl	%ecx, %esi
	jns	L259
	.p2align 4
	.p2align 3
L260:
	movl	64(%esp), %ecx
	notl	%ecx
	sarl	$31, %ecx
	addl	$-2147483648, %ecx
	jmp	L242
	.p2align 4,,10
	.p2align 3
L314:
	movzbl	_keystatus+56, %edx
	orb	_keystatus+184, %dl
	jne	L559
	movzbl	_keystatus+42, %eax
	orb	_keystatus+54, %al
	je	L318
	testl	%ebx, %ebx
	je	L305
L317:
	cmpb	$0, _CommEnabled
	je	L305
	movb	$0, _keystatus+58(%ebx)
	sall	$6, %ebx
	leal	_WangBangMacro-64(%ebx), %esi
	movl	$LC21, 4(%esp)
	movl	%esi, 8(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	movl	$_ds, %eax
	call	__Z12adduserquotePKc
	movl	96(%esp), %edi
	movl	%esi, 12(%esp)
	movl	$LC5, 4(%esp)
	addl	$23262, %edi
	movl	$_ds, (%esp)
	movl	%edi, 8(%esp)
	call	_sprintf
	leal	136(%esp), %eax
	movl	$_ds, 12(%esp)
	movl	$LC4, 8(%esp)
	movl	$256, 4(%esp)
	movl	%eax, (%esp)
	call	_snprintf
	leal	136(%esp), %eax
	call	__Z22DemoAutoRecordChatLinePKc
	leal	136(%esp), %eax
	movl	$LC6, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	movl	_connecthead, %eax
	movswl	%ax, %ebx
	cmpw	$-1, %ax
	je	L305
	.p2align 4
	.p2align 3
L323:
	cmpl	_myconnectindex, %ebx
	je	L322
	movl	%esi, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	cmpb	$0, _CommEnabled
	je	L322
	movb	$4, __ZL7tempbuf.lto_priv.0
	movl	$_ds, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.0+1, (%esp)
	call	_strcpy
	movl	$_ds, (%esp)
	call	_strlen
	movl	$__ZL7tempbuf.lto_priv.0, %edx
	leal	2(%eax), %ecx
	movl	%ebx, %eax
	call	__Z13netsendpacketiPhi
L322:
	movl	_connectpoint2(,%ebx,4), %eax
	movswl	%ax, %ebx
	cmpw	$-1, %ax
	jne	L323
	jmp	L305
	.p2align 4,,10
	.p2align 3
L553:
	movl	96(%esp), %eax
	movl	%edi, %ecx
	leal	304(%eax), %edx
	call	__Z15DoPlayerHorizonP12PLAYERstructPii
	movl	96(%esp), %eax
	movl	22972(%eax), %eax
	movl	%eax, 64(%esp)
	jmp	L268
	.p2align 4,,10
	.p2align 3
L552:
	movl	96(%esp), %eax
	movl	%esi, %ecx
	leal	308(%eax), %edx
	call	__Z12DoPlayerTurnP12PLAYERstructPii
	movl	96(%esp), %eax
	movl	22972(%eax), %eax
	movl	%eax, 64(%esp)
	jmp	L267
	.p2align 4,,10
	.p2align 3
L244:
	fmuls	LC19
	flds	LC13
	xorps	%xmm0, %xmm0
	movss	LC18, %xmm2
	fdivl	_elapsedInputTicks
	movss	LC10, %xmm3
	fdivrp	%st, %st(1)
	fstps	32(%esp)
	movss	32(%esp), %xmm1
	mulss	%xmm1, %xmm2
	cmpnless	%xmm1, %xmm0
	movss	LC11, %xmm1
	andps	%xmm0, %xmm1
	andnps	%xmm3, %xmm0
	orps	%xmm1, %xmm0
	jmp	L245
	.p2align 4,,10
	.p2align 3
L353:
	flds	LC9
	jmp	L243
L541:
	movl	%ecx, 64(%esp)
L345:
	movl	16(%esp), %ebx
	movl	20(%esp), %esi
	movl	64(%esp), %ecx
	movl	%ebx, %eax
	orl	%esi, %eax
	jne	L251
L261:
	movl	56(%esp), %esi
	movl	64(%esp), %ecx
	addl	%esi, 80(%esp)
	jmp	L251
	.p2align 4,,10
	.p2align 3
L179:
	movl	96(%esp), %eax
	movl	$100, %edx
	movb	$0, _GamePaused
	call	__Z14pClearTextLineP12PLAYERstructl
	xorl	%eax, %eax
	call	__Z9PauseSongh
	jmp	L176
	.p2align 4,,10
	.p2align 3
L362:
	movl	$1, %eax
L283:
	movl	96(%esp), %ecx
	movl	23012(%ecx), %edx
	.p2align 4
	.p2align 3
L288:
	btl	%eax, %edx
	jnc	L286
	cmpw	$0, 23016(%ecx,%eax,2)
	jne	L560
L286:
	addl	$1, %eax
	cmpl	$10, %eax
	jne	L288
L287:
	movl	$14, %eax
	jmp	L284
L250:
	movzbl	_PedanticMode, %eax
	movl	24(%esp), %ebx
	movl	$0, __ZZ8getinputP9SW_PACKEThE12turnheldtime
	movl	28(%esp), %esi
	movl	64(%esp), %ecx
	movb	%al, 48(%esp)
	movl	%ebx, %eax
	orl	%esi, %eax
	je	L251
	movl	96(%esp), %eax
	movl	104(%eax), %ebx
	testl	%ebx, %ebx
	jne	L251
	jmp	L261
L559:
	testl	%ebx, %ebx
	setne	%dl
L316:
	cmpl	$16, %eax
	jle	L305
	testb	%dl, %dl
	je	L305
L319:
	cmpb	$0, _CommEnabled
	je	L305
	cmpb	$0, _gs+40
	jne	L305
	movl	%ebx, %eax
	movb	$0, _keystatus+58(%ebx)
	movl	$0, __ZZ12FunctionKeysP12PLAYERstructE9rts_delay
	call	__Z12PlaySoundRTSi
	cmpb	$0, _CommEnabled
	je	L305
	movb	$33, 136(%esp)
	movl	$2, %edx
	leal	136(%esp), %eax
	movb	%bl, 137(%esp)
	call	__Z18netbroadcastpacketPhi
	jmp	L305
	.p2align 4,,10
	.p2align 3
L315:
	cmpl	$16, %eax
	jle	L305
	movl	$10, %ebx
	jmp	L319
L183:
	cmpb	$0, _keystatus+1
	jne	L561
L184:
	movzbl	_keystatus+57, %eax
	orb	_keystatus+28, %al
	orb	_keystatus+209, %al
	orb	_keystatus+208, %al
	orb	_keystatus+205, %al
	orb	_keystatus+81, %al
	orb	_keystatus+80, %al
	orb	_keystatus+77, %al
	je	L188
	xorl	%eax, %eax
	xorl	%edx, %edx
	movb	$0, _keystatus+28
	movw	%ax, _keystatus+208
	xorl	%eax, %eax
	movw	%ax, _keystatus+80
	movzwl	_HelpPage, %eax
	movb	$0, _keystatus+57
	addl	$1, %eax
	movb	$0, _keystatus+205
	cmpw	$2, %ax
	movb	$0, _keystatus+77
	cmovg	%edx, %eax
	movw	%ax, _HelpPage
L188:
	movzbl	_keystatus+201, %eax
	orb	_keystatus+200, %al
	orb	_keystatus+203, %al
	orb	_keystatus+73, %al
	orb	_keystatus+72, %al
	orb	_keystatus+75, %al
	je	L182
	movzwl	_HelpPage, %eax
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
	movl	$2, %edx
	movw	%cx, _keystatus+200
	subw	$1, %ax
	movb	$0, _keystatus+203
	cmovs	%edx, %eax
	movw	%bx, _keystatus+72
	movb	$0, _keystatus+75
	movw	%ax, _HelpPage
	jmp	L182
L555:
	addl	$1, %edx
	movswl	%dx, %eax
	cmpw	$9, %dx
	jle	L283
	jmp	L287
L560:
	addl	$1, %eax
	cwtl
	jmp	L284
L256:
	movss	LC18, %xmm1
	xorps	%xmm0, %xmm0
	movss	LC10, %xmm3
	fmuls	LC19
	flds	LC13
	fdivl	_elapsedInputTicks
	fdivrp	%st, %st(1)
	fstps	32(%esp)
	movss	32(%esp), %xmm2
	mulss	%xmm2, %xmm1
	cmpnless	%xmm2, %xmm0
	movss	LC11, %xmm2
	andps	%xmm0, %xmm2
	andnps	%xmm3, %xmm0
	orps	%xmm2, %xmm0
	jmp	L257
L356:
	flds	LC9
	jmp	L255
L303:
	addl	$23304, %eax
	leal	23304(%esi), %edx
	movl	$768, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	jmp	L304
L381:
	movl	$1, %edx
	movl	$10, %ebx
	jmp	L316
L224:
	cmpl	$80, 88(%esp)
	jle	L225
	movl	$80, __ZZ16MoveScrollMode2DP12PLAYERstructE6mfsvel
	movl	$80, 88(%esp)
	jmp	L225
L222:
	cmpl	$80, %esi
	jle	L223
	movl	$80, __ZZ16MoveScrollMode2DP12PLAYERstructE5mfvel
	movl	$80, %esi
	jmp	L223
L208:
	cmpb	$0, 44(%esp)
	jne	L216
	movl	%ecx, %eax
	xorl	%edx, %edx
	andl	$8192, %eax
	movl	%edx, 92(%esp)
	movl	%eax, 88(%esp)
	movl	88(%esp), %eax
	orl	92(%esp), %eax
	jne	L213
	movl	%ecx, %eax
	xorl	%edx, %edx
	andl	$16384, %eax
	movl	%edx, 92(%esp)
	movl	%eax, 88(%esp)
	movl	88(%esp), %eax
	orl	92(%esp), %eax
	jne	L214
	jmp	L525
L557:
	cmpb	$0, 86(%esp)
	je	L325
	movl	96(%esp), %eax
	movb	$0, _keystatus+60
	testb	$2, 22968(%eax)
	jne	L325
	movb	$1, _keystatus+1
	movl	$1, _ControlPanelType
L325:
	cmpb	$0, 72(%esp)
	je	L326
	movl	96(%esp), %eax
	movb	$0, _keystatus+61
	testb	$2, 22968(%eax)
	jne	L326
	movb	$1, _keystatus+1
	movl	$2, _ControlPanelType
L326:
	movl	_CONTROL_ButtonState+4, %edx
	xorl	%ecx, %ecx
	movl	_CONTROL_ButtonState, %eax
	movl	%edx, %ebx
	andl	$1048576, %ebx
	orl	%ebx, %ecx
	jne	L562
L327:
	movl	%edx, %ebx
	xorl	%ecx, %ecx
	andl	$2097152, %ebx
	orl	%ebx, %ecx
	jne	L334
L527:
	movzbl	_keystatus+66, %eax
	movzbl	_keystatus+62, %ecx
	movzbl	_keystatus+65, %edi
	movb	%al, 88(%esp)
	jmp	L324
L556:
	movl	$10, %ebx
	jmp	L317
L558:
	testl	$67108864, %eax
	je	L338
	movzwl	262(%esi), %eax
	movw	%ax, 86(%esp)
	addw	$256, %ax
	andw	$2047, %ax
	movw	%ax, 262(%esi)
	jmp	L338
L539:
	movzbl	_PedanticMode, %eax
	movl	24(%esp), %ebx
	movl	$0, __ZZ8getinputP9SW_PACKEThE12turnheldtime
	movl	28(%esp), %esi
	movl	64(%esp), %ecx
	movb	%al, 48(%esp)
	movl	%ebx, %eax
	orl	%esi, %eax
	jne	L251
	jmp	L252
L561:
	movb	$0, _KB_LastScan
	xorl	%eax, %eax
L185:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L185
	movb	$1, _PanelUpdateMode
	movb	$0, _HelpInputMode
	movb	$0, _InputMode
	cmpb	$0, _CommEnabled
	jne	L187
	movb	$0, _GamePaused
L187:
	movl	96(%esp), %eax
	call	__Z15SetRedrawScreenP12PLAYERstruct
	jmp	L184
L384:
	movl	$1, %eax
	xorl	%edx, %edx
	jmp	L344
L213:
	movl	%ecx, %eax
	xorl	%edx, %edx
	addl	$35, __ZZ16MoveScrollMode2DP12PLAYERstructE6mfsvel
	andl	$16384, %eax
	movl	%edx, 92(%esp)
	movl	%eax, 88(%esp)
	movl	88(%esp), %eax
	orl	92(%esp), %eax
	je	L219
	jmp	L214
L554:
	xorl	%eax, %eax
	movl	$_palette_data, %edx
	call	_paletteSetColorTable
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movzbl	%bl, %eax
	call	_videoSetPalette
	movl	96(%esp), %esi
	movl	$768, 8(%esp)
	movl	$_palette_data, 4(%esp)
	leal	23304(%esi), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	%esi, %eax
	call	__Z19DoPlayerDivePaletteP12PLAYERstruct
	movl	%esi, %eax
	call	__Z26DoPlayerNightVisionPaletteP12PLAYERstruct
	jmp	L300
L342:
	movl	96(%esp), %eax
	movl	$LC23, %edx
	call	__Z17PutStringInfoLineP12PLAYERstructPKc
	jmp	L341
L334:
	movl	%eax, _CONTROL_ButtonState
	movl	96(%esp), %eax
	andl	$-2097153, %edx
	movl	%edx, _CONTROL_ButtonState+4
	movl	$1, __ZL13CONTROL_Flags.lto_priv.0+428
	testb	$2, 22968(%eax)
	jne	L527
	cmpw	$0, _QuickLoadNum
	jns	L336
	movzbl	_keystatus+66, %eax
	movb	$1, _keystatus+1
	movzbl	_keystatus+62, %ecx
	movzbl	_keystatus+65, %edi
	movl	$2, _ControlPanelType
	movb	%al, 88(%esp)
	jmp	L324
L562:
	movl	96(%esp), %esi
	andl	$-1048577, %edx
	movl	%eax, _CONTROL_ButtonState
	movl	%edx, _CONTROL_ButtonState+4
	movl	$1, __ZL13CONTROL_Flags.lto_priv.0+420
	testb	$2, 22968(%esi)
	jne	L327
	movzwl	_QuickLoadNum, %ebx
	movb	$1, _keystatus+1
	testw	%bx, %bx
	jns	L329
	movl	$1, _ControlPanelType
	jmp	L327
L340:
	movl	96(%esp), %esi
	orl	$67108864, %eax
	movl	%eax, 22968(%esi)
	xorl	%eax, %eax
	movl	%eax, 168(%esi)
	jmp	L338
L336:
	call	__Z11DoQuickLoadv
	movl	_save_totalclock, %eax
	xorl	%edx, %edx
	movb	$1, _ready2send
	movl	%edx, _totalclock+8
	movl	%eax, _totalclock
	movl	%eax, _totalclock+12
	jmp	L527
L329:
	movb	$0, _KB_LastScan
	xorl	%eax, %eax
L331:
	xorl	%esi, %esi
	addl	$16, %eax
	movl	%esi, _keystatus-16(%eax)
	movl	%esi, _keystatus-12(%eax)
	movl	%esi, _keystatus-8(%eax)
	movl	%esi, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L331
	xorl	%eax, %eax
	movl	$16, %ecx
	movl	$_g_keyAsciiFIFO, %edi
	movb	$0, _g_keyAsciiEnd
	rep stosl
	movl	_totalclock, %eax
	movb	$0, _g_keyAsciiPos
	movb	$0, _ready2send
	movl	%eax, _save_totalclock
	movswl	%bx, %eax
	call	__Z8SaveGames
	addl	$1, %eax
	je	L333
	movw	%bx, _QuickLoadNum
	movw	$-1, _LastSaveNum
L333:
	movl	_save_totalclock, %eax
	xorl	%ecx, %ecx
	movb	$1, _ready2send
	movl	%ecx, _totalclock+8
	movl	_CONTROL_ButtonState+4, %edx
	movl	%eax, _totalclock
	movl	%eax, _totalclock+12
	movl	_CONTROL_ButtonState, %eax
	jmp	L327
	.cfi_endproc
LFE33:
	.p2align 4
	.globl	__Z8RunLevelv
	.def	__Z8RunLevelv;	.scl	2;	.type	32;	.endef
__Z8RunLevelv:
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
	andl	$-16, %esp
	subl	$48, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__Z12InitRunLevelv
	movl	_gs+8, %eax
	call	_MV_SetVolume
	movl	_gs+4, %eax
	call	__Z13SetSongVolumei
	movb	$1, _ready2send
	.p2align 4
	.p2align 3
L636:
	call	_handleevents.isra.0
	movl	_osd, %eax
	movl	1100(%eax), %ebx
	testl	%ebx, %ebx
	je	L565
	movl	$0, 1100(%eax)
	subl	$1, %ebx
	jns	L566
	jmp	L565
	.p2align 4,,10
	.p2align 3
L690:
	movl	_osd, %eax
L566:
	movl	60(%eax,%ebx,4), %eax
	xorl	%edx, %edx
	call	__Z12OSD_DispatchPKcb
	subl	$1, %ebx
	jnb	L690
L565:
	cmpb	$0, _quitevent
	jne	L691
L567:
	call	__Z10getpacketsv
	movl	_myconnectindex, %ecx
	movzbl	_PredictionOn, %edx
	imull	$24124, %ecx, %eax
	movl	_Player+6564(%eax), %eax
	testb	%dl, %dl
	je	L570
	cmpb	$0, _CommEnabled
	je	L571
	cmpl	%eax, _predictmovefifoplc
	jb	L574
	jmp	L572
	.p2align 4,,10
	.p2align 3
L692:
	movzbl	_PredictionOn, %edx
L574:
	testb	%dl, %dl
	je	L573
	movl	$_PredictPlayer, %eax
	call	__Z12DoPredictionP12PLAYERstruct.part.0
	movl	_myconnectindex, %ecx
L573:
	imull	$24124, %ecx, %eax
	movl	_Player+6564(%eax), %eax
	cmpl	%eax, _predictmovefifoplc
	jb	L692
L570:
	cmpb	$0, _CommEnabled
	je	L571
L572:
	movl	_bufferjitter, %edx
L575:
	movl	_movefifoplc, %ecx
	subl	%ecx, %eax
	cmpl	%eax, %edx
	jnb	L577
	.p2align 4
	.p2align 3
L579:
	movl	_connecthead, %eax
	testl	%eax, %eax
	jns	L578
	jmp	L576
	.p2align 5
	.p2align 4,,10
	.p2align 3
L693:
	movl	_connectpoint2(,%eax,4), %eax
	testl	%eax, %eax
	js	L576
L578:
	imull	$24124, %eax, %edx
	cmpl	%ecx, _Player+6564(%edx)
	jne	L693
L577:
	movzbl	_PedanticMode, %eax
	orb	_CommEnabled, %al
	jne	L580
	movl	$1, %eax
	call	__Z8getinputP9SW_PACKETh.constprop.0
L580:
	movzbl	_InputMode, %eax
	orb	_PauseKeySet, %al
	je	L694
L581:
	movswl	_screenpeek, %eax
	imull	$24124, %eax, %eax
	addl	$_Player, %eax
	call	__Z10drawscreenP12PLAYERstruct
	cmpb	$0, _QuitFlag
	jne	L582
	cmpb	$0, _ExitLevel
	jne	L695
	call	__Z16timerUpdateClockv
	cmpb	$0, _ready2send
	je	L636
	.p2align 4
	.p2align 3
L584:
	movl	_ototalclock, %eax
	addl	$3, %eax
	cmpl	_totalclock, %eax
	jg	L636
	movl	%eax, _ototalclock
	call	__Z10getpacketsv
	imull	$24124, _myconnectindex, %eax
	movl	_Player+6564(%eax), %eax
	subl	_movefifoplc, %eax
	cmpl	$99, %eax
	ja	L586
	xorl	%eax, %eax
	call	__Z8getinputP9SW_PACKETh.constprop.0
	movl	_myconnectindex, %eax
	movl	%eax, 32(%esp)
	imull	$24124, %eax, %eax
	movl	%eax, 40(%esp)
	cmpb	$0, _DemoMDRActive
	jne	L696
L587:
	imull	$24124, 32(%esp), %edi
	movl	_loc+4, %edx
	movl	$0, _loc+12
	addl	_AveragePacket+8, %edx
	movswl	_loc, %eax
	movl	$0, _loc+4
	movswl	_loc+2, %esi
	movl	%edx, 24(%esp)
	movl	_Player+304(%edi), %ebx
	movss	_Player+308(%edi), %xmm0
	movl	%edi, 28(%esp)
	movl	%edx, _AveragePacket+8
	movl	_AveragePacket+24, %edi
	movl	%ebx, 16(%esp)
	movss	16(%esp), %xmm2
	movl	40(%esp), %ebx
	movl	_loc+8, %edx
	movl	$0, _loc
	addl	_AveragePacket+12, %edx
	orl	_loc+20, %edi
	unpcklps	%xmm2, %xmm0
	movl	$0, _loc+8
	addl	_AveragePacket, %eax
	addl	_AveragePacket+4, %esi
	movl	%edx, 12(%esp)
	movl	%edx, _AveragePacket+12
	movl	_Player+6564(%ebx), %ebx
	movl	%eax, _AveragePacket
	movl	%esi, _AveragePacket+4
	movl	%edi, _AveragePacket+24
	movl	$0, _loc+16
	movl	$0, _loc+20
	movlps	%xmm0, _AveragePacket+16
	movl	_MovesPerPacket, %ecx
	leal	-1(%ecx), %edx
	testl	%ebx, %edx
	jne	L697
	cltd
	movlps	%xmm0, (%esp)
	addl	$1, %ebx
	idivl	%ecx
	movw	%ax, _loc
	movl	%esi, %eax
	movl	%ecx, %esi
	cltd
	sall	$16, %esi
	idivl	%ecx
	movl	%esi, %edx
	movw	%ax, _loc+2
	movl	24(%esp), %eax
	call	_fix16_div
	movl	%esi, %edx
	movl	%eax, 16(%esp)
	movl	12(%esp), %eax
	call	_fix16_div
	movss	16(%esp), %xmm1
	movl	40(%esp), %esi
	movl	$0, _AveragePacket
	movl	%eax, 16(%esp)
	movl	28(%esp), %eax
	movl	_loc, %edx
	movss	16(%esp), %xmm3
	movl	$0, _AveragePacket+4
	movzbl	_Player+6564(%eax), %eax
	movl	$0, _AveragePacket+8
	movl	$0, _AveragePacket+12
	unpcklps	%xmm3, %xmm1
	movhps	(%esp), %xmm1
	leal	(%eax,%eax,2), %eax
	movups	%xmm1, _loc+4
	movl	%edx, _Player+420(%esi,%eax,8)
	movl	_loc+8, %edx
	movl	%edi, _Player+440(%esi,%eax,8)
	movl	%edx, _Player+428(%esi,%eax,8)
	movl	_loc+12, %edx
	movss	%xmm1, _Player+424(%esi,%eax,8)
	movl	%edx, _Player+432(%esi,%eax,8)
	movl	_loc+16, %edx
	movl	$0, _AveragePacket+16
	movl	%edx, _Player+436(%esi,%eax,8)
	movl	$0, _AveragePacket+20
	movl	$0, _AveragePacket+24
	movl	%ebx, _Player+6564(%esi)
	movl	$0, _loc
	movl	$0, _loc+4
	movl	$0, _loc+8
	movl	_connecthead, %edi
	movl	$0, _loc+12
	movl	$0, _loc+16
	movl	$0, _loc+20
	cmpb	$0, _CommEnabled
	je	L698
	cmpl	$-1, %edi
	je	L593
	movl	%edi, 16(%esp)
	movl	%edi, %edx
	movl	_mymaxlag, %ebx
	xorl	%eax, %eax
	movl	28(%esp), %edi
	.p2align 4
	.p2align 3
L595:
	cmpl	%edx, 32(%esp)
	je	L594
	imull	$24124, %edx, %ecx
	movl	_Player+6564(%edi), %eax
	subl	$1, %eax
	leal	_Player(%ecx), %esi
	subl	_Player+6564(%ecx), %eax
	movl	_Player+6568(%ecx), %ecx
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	cmpl	%eax, %ebx
	cmovl	%eax, %ebx
	movl	$1, %eax
	movl	%ecx, 6568(%esi)
L594:
	movl	_connectpoint2(,%edx,4), %edx
	cmpl	$-1, %edx
	jne	L595
	movl	16(%esp), %edi
	testb	%al, %al
	je	L593
	movl	%ebx, _mymaxlag
L593:
	imull	$24124, 32(%esp), %eax
	movl	_Player+6564(%eax), %eax
	leal	-1(%eax), %esi
	movl	%eax, 28(%esp)
	movl	%esi, %edx
	andl	$31, %edx
	jne	L596
	movl	_mymaxlag, %eax
	movl	_bufferjitter, %ebx
	movl	$0, _mymaxlag
	subl	%ebx, %eax
	testl	%eax, %eax
	jle	L597
	addl	$2, %eax
	sarl	$2, %eax
	addl	%ebx, %eax
	movl	%eax, _bufferjitter
L596:
	cmpb	$0, _NetBroadcastMode
	jne	L598
	cmpl	32(%esp), %edi
	je	L599
	movl	40(%esp), %esi
	movl	_Player+6564(%esi), %ebx
	leal	-1(%ebx), %ecx
	movzbl	%cl, %ecx
	leal	(%ecx,%ecx), %eax
	movl	%eax, 32(%esp)
	addl	%ecx, %eax
	testb	$-128, _Player+442(%esi,%eax,8)
	je	L601
	movb	$1, _QuitFlag
L601:
	testl	%edx, %edx
	jne	L616
	imull	$24124, %edi, %eax
	movl	_otherminlag, %esi
	movl	%esi, 28(%esp)
	movl	_Player+6568(%eax), %eax
	subl	%esi, %eax
	movl	%eax, %edx
	negl	%edx
	cmovs	%eax, %edx
	cmpl	$2, %edx
	jle	L617
	cmpl	$8, %edx
	jle	L618
	cmpl	$-2147483648, %eax
	sbbl	$-1, %eax
	movl	%eax, %esi
	andl	$-2, %eax
	sarl	%esi
	addl	%esi, %eax
	movl	%eax, %edx
	xorl	%eax, %eax
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
L620:
	movl	_totalclock+8, %eax
	subl	16(%esp), %eax
	movl	_totalclock+12, %edx
	sbbl	20(%esp), %edx
	xorw	%ax, %ax
	movl	%eax, _totalclock+8
	movl	28(%esp), %eax
	movl	%edx, _totalclock
	addl	%esi, %eax
	movl	%edx, _totalclock+12
	movl	%eax, _otherminlag
L617:
	testl	%edi, %edi
	js	L616
	.p2align 5
	.p2align 4
	.p2align 3
L622:
	imull	$24124, %edi, %eax
	movl	_connectpoint2(,%edi,4), %edi
	movl	$2147483647, _Player+6568(%eax)
	testl	%edi, %edi
	jns	L622
	movl	40(%esp), %eax
	movl	_Player+6564(%eax), %ebx
	leal	-1(%ebx), %ecx
	movzbl	%cl, %ecx
	leal	(%ecx,%ecx), %eax
	movl	%eax, 32(%esp)
L616:
	leal	-2(%ebx), %eax
	movl	40(%esp), %ebx
	addl	32(%esp), %ecx
	movb	$1, __ZL7packbuf.lto_priv.0
	movzbl	%al, %eax
	leal	(%eax,%eax,2), %eax
	leal	_Player+420(%ebx,%eax,8), %edx
	leal	_Player+420(%ebx,%ecx,8), %eax
	movl	$__ZL7packbuf.lto_priv.0+1, %ecx
	call	__Z10EncodeBitsP9SW_PACKETS0_Ph
	addl	$1, %eax
	movl	%eax, 44(%esp)
	leal	44(%esp), %eax
	call	__Z19AddSyncInfoToPacketPi
	movl	44(%esp), %ecx
	movl	_connecthead, %eax
	movl	$__ZL7packbuf.lto_priv.0, %edx
	call	__Z13netsendpacketiPhi
	.p2align 4
	.p2align 3
L586:
	cmpb	$0, _ready2send
	jne	L584
	jmp	L636
	.p2align 4,,10
	.p2align 3
L576:
	call	__Z12domovethingsv
	movl	_movefifoplc, %ecx
	imull	$24124, _myconnectindex, %eax
	movl	_Player+6564(%eax), %eax
	subl	%ecx, %eax
	cmpl	%eax, _bufferjitter
	jb	L579
	jmp	L577
	.p2align 4,,10
	.p2align 3
L697:
	leal	-1(%ebx), %edx
	movl	40(%esp), %esi
	movzbl	%bl, %eax
	movzbl	%dl, %edx
	leal	(%eax,%eax,2), %eax
	leal	(%edx,%edx,2), %edx
	leal	_Player+420(%esi,%edx,8), %edx
	movl	(%edx), %ecx
	movl	%ecx, _Player+420(%esi,%eax,8)
	movl	4(%edx), %ecx
	movl	%ecx, _Player+424(%esi,%eax,8)
	movl	8(%edx), %ecx
	movl	%ecx, _Player+428(%esi,%eax,8)
	movl	12(%edx), %ecx
	movl	%ecx, _Player+432(%esi,%eax,8)
	movl	16(%edx), %ecx
	movl	%ecx, _Player+436(%esi,%eax,8)
	movl	20(%edx), %edx
	movl	%edx, _Player+440(%esi,%eax,8)
	addl	$1, _Player+6564(%esi)
	jmp	L586
	.p2align 4,,10
	.p2align 3
L696:
	movss	__ZL11MDRCamHoriz.lto_priv.0+4, %xmm0
	movl	_Player+304(%eax), %ebx
	movss	__ZL9MDRCamAng.lto_priv.0+4, %xmm1
	movl	_Player+308(%eax), %eax
	movl	%ebx, 28(%esp)
	movss	28(%esp), %xmm4
	movl	%eax, 28(%esp)
	movss	28(%esp), %xmm5
	unpcklps	%xmm4, %xmm0
	unpcklps	%xmm5, %xmm1
	movlps	%xmm0, __ZL11MDRCamHoriz.lto_priv.0
	movlps	%xmm1, __ZL9MDRCamAng.lto_priv.0
	jmp	L587
L698:
	cmpl	$-1, %edi
	je	L586
	movl	32(%esp), %ecx
	.p2align 4
	.p2align 3
L592:
	cmpl	%edi, %ecx
	je	L591
	imull	$24124, %edi, %edx
	movzbl	_Player+6564(%edx), %eax
	leal	(%eax,%eax,2), %eax
	movl	$0, _Player+420(%edx,%eax,8)
	movl	$0, _Player+424(%edx,%eax,8)
	movl	$0, _Player+428(%edx,%eax,8)
	movl	$0, _Player+432(%edx,%eax,8)
	movl	$0, _Player+436(%edx,%eax,8)
	movl	$0, _Player+440(%edx,%eax,8)
	addl	$1, _Player+6564(%edx)
L591:
	movl	_connectpoint2(,%edi,4), %edi
	cmpl	$-1, %edi
	jne	L592
	jmp	L586
L598:
	movl	40(%esp), %ebx
	movl	_Player+6564(%ebx), %eax
	movl	%eax, 16(%esp)
	subl	$1, %eax
	movzbl	%al, %eax
	leal	(%eax,%eax,2), %eax
	testb	$-128, _Player+442(%ebx,%eax,8)
	je	L638
	movb	$1, _QuitFlag
L638:
	movb	$17, __ZL7packbuf.lto_priv.0
	testl	%edx, %edx
	jne	L603
	cmpl	32(%esp), %edi
	je	L699
	imull	$24124, %edi, %eax
	movl	_otherminlag, %ecx
	movl	_Player+6568(%eax), %eax
	subl	%ecx, %eax
	movl	%eax, %edx
	negl	%edx
	cmovs	%eax, %edx
	cmpl	$2, %edx
	jle	L608
	cmpl	$8, %edx
	jle	L609
	cmpl	$-2147483648, %eax
	sbbl	$-1, %eax
	movl	%eax, %ebx
	andl	$-2, %eax
	sarl	%ebx
	addl	%ebx, %eax
	movl	%eax, %edx
	xorl	%eax, %eax
	movl	%eax, 32(%esp)
	movl	%edx, 36(%esp)
L611:
	movl	_totalclock+8, %eax
	subl	32(%esp), %eax
	movl	_totalclock+12, %edx
	sbbl	36(%esp), %edx
	xorw	%ax, %ax
	addl	%ebx, %ecx
	movl	%edx, _totalclock
	movl	%eax, _totalclock+8
	movl	%edx, _totalclock+12
	movl	%ecx, _otherminlag
L608:
	movl	$1, %eax
	movl	$1, %ebx
L607:
	testl	%edi, %edi
	js	L612
	.p2align 5
	.p2align 4
	.p2align 3
L613:
	imull	$24124, %edi, %eax
	movl	_connectpoint2(,%edi,4), %edi
	movl	$2147483647, _Player+6568(%eax)
	testl	%edi, %edi
	jns	L613
	movl	%ebx, %eax
	jmp	L612
L571:
	movl	$0, _bufferjitter
	xorl	%edx, %edx
	jmp	L575
L599:
	movl	_movefifosendplc, %esi
	testl	%edi, %edi
	js	L623
L701:
	movl	%edi, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L624:
	imull	$24124, %eax, %edx
	cmpl	_Player+6564(%edx), %esi
	jnb	L586
	movl	_connectpoint2(,%eax,4), %eax
	testl	%eax, %eax
	jns	L624
	movb	$0, __ZL7packbuf.lto_priv.0
	movl	$1, %ebx
	movl	$1, 44(%esp)
	testl	$31, %esi
	je	L700
L628:
	leal	-1(%esi), %eax
	movl	%esi, 40(%esp)
	movzbl	%al, %eax
	leal	(%eax,%eax,2), %eax
	leal	420(,%eax,8), %eax
	movl	%eax, 32(%esp)
	movl	%esi, %eax
	movzbl	%al, %eax
	leal	(%eax,%eax,2), %eax
	leal	420(,%eax,8), %esi
	.p2align 4
	.p2align 3
L632:
	imull	$24124, %edi, %eax
	movl	32(%esp), %edx
	leal	__ZL7packbuf.lto_priv.0(%ebx), %ecx
	leal	_Player(%edx,%eax), %edx
	leal	_Player(%esi,%eax), %eax
	call	__Z10EncodeBitsP9SW_PACKETS0_Ph
	movl	_connectpoint2(,%edi,4), %edi
	addl	%eax, %ebx
	movl	%ebx, 44(%esp)
	testl	%edi, %edi
	jns	L632
	movl	40(%esp), %esi
L627:
	leal	44(%esp), %eax
	call	__Z19AddSyncInfoToPacketPi
	movl	_connecthead, %edi
	movl	_connectpoint2(,%edi,4), %ebx
	testl	%ebx, %ebx
	js	L633
	movl	44(%esp), %esi
	.p2align 4
	.p2align 3
L634:
	movl	%ebx, %eax
	movl	%esi, %ecx
	movl	$__ZL7packbuf.lto_priv.0, %edx
	call	__Z13netsendpacketiPhi
	movl	_connectpoint2(,%ebx,4), %ebx
	testl	%ebx, %ebx
	jns	L634
	movl	_movefifosendplc, %esi
	movl	_connecthead, %edi
L633:
	movl	%esi, %eax
	movzbl	%al, %eax
	leal	(%eax,%eax,2), %edx
	imull	$24124, _myconnectindex, %eax
	testb	$-128, _Player+442(%eax,%edx,8)
	je	L635
	movb	$1, _QuitFlag
L635:
	addl	_MovesPerPacket, %esi
	movl	%esi, _movefifosendplc
	testl	%edi, %edi
	jns	L701
L623:
	movb	$0, __ZL7packbuf.lto_priv.0
	movl	$1, 44(%esp)
	testl	$31, %esi
	jne	L627
	movl	_connectpoint2(,%edi,4), %edx
	testl	%edx, %edx
	jns	L637
	jmp	L627
	.p2align 4,,10
	.p2align 3
L691:
	cmpb	$1, _CommPlayers
	jbe	L568
	movb	$1, _MultiPlayQuitFlag
L569:
	movl	_osd, %eax
	andl	$-3, 1172(%eax)
	xorl	%eax, %eax
	call	__Z16OSD_CaptureInputi
	jmp	L567
L597:
	je	L596
	movl	$2, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sarl	$2, %eax
	subl	%eax, %ebx
	movl	%ebx, _bufferjitter
	jmp	L596
L603:
	movl	$1, %eax
	movl	$1, %ebx
L612:
	leal	__ZL7packbuf.lto_priv.0(%eax), %ecx
	movl	28(%esp), %eax
	movl	40(%esp), %edi
	subl	$2, %eax
	movzbl	%al, %eax
	leal	(%eax,%eax,2), %eax
	leal	_Player+420(%edi,%eax,8), %edx
	movl	%esi, %eax
	movzbl	%al, %eax
	leal	(%eax,%eax,2), %eax
	leal	_Player+420(%edi,%eax,8), %eax
	call	__Z10EncodeBitsP9SW_PACKETS0_Ph
	addl	%ebx, %eax
	movl	%eax, 44(%esp)
	leal	44(%esp), %eax
	call	__Z19AddSyncInfoToPacketPi
	movl	44(%esp), %edx
	movl	$__ZL7packbuf.lto_priv.0, %eax
	call	__Z18netbroadcastpacketPhi
	jmp	L586
L694:
	call	__Z17MNU_CheckForMenusv
	jmp	L581
L568:
	movb	$1, _QuitFlag
	jmp	L569
L695:
	movb	$0, _ExitLevel
L582:
	movb	$0, _ready2send
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
L699:
	.cfi_restore_state
	movl	_connectpoint2(,%edi,4), %edx
	testl	%edx, %edx
	js	L605
	movl	%edi, 32(%esp)
	movl	$1, %ebx
L606:
	imull	$24124, %edx, %eax
	addl	$1, %ebx
	movl	_connectpoint2(,%edx,4), %edx
	movl	_Player+6568(%eax), %edi
	movl	$-128, %eax
	cmpl	%eax, %edi
	cmovge	%edi, %eax
	movl	$127, %edi
	cmpl	%edi, %eax
	cmovg	%edi, %eax
	movb	%al, __ZL7packbuf.lto_priv.0-1(%ebx)
	testl	%edx, %edx
	jns	L606
	movl	32(%esp), %edi
	movl	%ebx, %eax
	jmp	L607
L700:
	movl	_connectpoint2(,%edi,4), %edx
	testl	%edx, %edx
	js	L629
L637:
	movl	$2, %ecx
L630:
	imull	$24124, %edx, %eax
	movl	$-128, %ebx
	movl	_connectpoint2(,%edx,4), %edx
	movl	_Player+6568(%eax), %eax
	cmpl	%ebx, %eax
	cmovl	%ebx, %eax
	movl	$127, %ebx
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	movb	%al, __ZL7packbuf.lto_priv.0-1(%ecx)
	movl	%ecx, %eax
	addl	$1, %ecx
	testl	%edx, %edx
	jns	L630
	movl	%eax, 44(%esp)
	testl	%edi, %edi
	js	L627
L629:
	movl	%edi, %eax
L631:
	imull	$24124, %eax, %edx
	movl	_connectpoint2(,%eax,4), %eax
	movl	$2147483647, _Player+6568(%edx)
	testl	%eax, %eax
	jns	L631
	movl	44(%esp), %ebx
	jmp	L628
L618:
	movl	$0, 16(%esp)
	movl	$1, %esi
	movl	$3, 20(%esp)
	testl	%eax, %eax
	jns	L620
	movl	$0, 16(%esp)
	movl	$-1, %esi
	movl	$-3, 20(%esp)
	jmp	L620
L609:
	movl	$0, 32(%esp)
	movl	$1, %ebx
	movl	$3, 36(%esp)
	testl	%eax, %eax
	jns	L611
	movl	$0, 32(%esp)
	movl	$-1, %ebx
	movl	$-3, 36(%esp)
	jmp	L611
L605:
	testl	%edi, %edi
	js	L603
	imull	$24124, %edi, %eax
	movl	$1, %ebx
	movl	$2147483647, _Player+6568(%eax)
	movl	%ebx, %eax
	jmp	L612
	.cfi_endproc
LFE56:
	.section .rdata,"dr"
LC27:
	.ascii "Follow Mode\0"
	.text
	.p2align 4
	.globl	__Z15drawoverheadmapiiis
	.def	__Z15drawoverheadmapiiis;	.scl	2;	.type	32;	.endef
__Z15drawoverheadmapiiis:
LFB73:
	.cfi_startproc
	subl	$140, %esp
	.cfi_def_cfa_offset 144
	movl	%eax, 56(%esp)
	movzwl	144(%esp), %eax
	movl	%edx, 64(%esp)
	movw	%ax, 122(%esp)
	movl	_xdim, %eax
	movl	%ebx, 124(%esp)
	.cfi_offset 3, -20
	movl	$147, %ebx
	imull	$200, %eax, %edx
	movl	%ecx, 116(%esp)
	movl	%esi, 128(%esp)
	movl	%edi, 132(%esp)
	movl	%edx, 8(%esp)
	sarl	$31, %edx
	movl	%edx, 12(%esp)
	leal	(%eax,%eax,4), %edx
	testl	%edx, %edx
	leal	7(%edx), %eax
	cmovns	%edx, %eax
	sarl	$3, %eax
	leal	(%eax,%eax,4), %eax
	sall	$6, %eax
	cltd
	shldl	$16, %eax, %edx
	sall	$16, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	_tabledivide64.lto_priv.2
	movl	%eax, %edx
	movl	$65536, %eax
	call	_renderSetAspect
	movl	$168, %edx
	movl	$147, %eax
	cmpb	$1, _gs+12
	cmovle	%edx, %ebx
	cmovle	%edx, %eax
	cmpb	$0, _ScrollMode2D
	jne	L793
L704:
	cmpb	$0, _UserMapName
	je	L705
	movl	$_UserMapName, 4(%esp)
	movl	$_ds, (%esp)
	call	_strcpy
L706:
	movl	$10, (%esp)
	movl	%ebx, %edx
	movl	$_ds, %ecx
	movl	$7, %eax
	call	__Z12minigametextiiPKcs.isra.0
	movswl	122(%esp), %edx
	movl	116(%esp), %edi
	movl	%edx, %eax
	negl	%eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edi, %eax
	movl	%eax, %esi
	movl	%eax, 40(%esp)
	movl	$1536, %eax
	subl	%edx, %eax
	movl	_yxaspect, %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edi, %eax
	movl	%eax, 44(%esp)
	movl	%eax, %edi
	movl	%esi, %eax
/APP
 # 6294 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_yxaspect, %edx
	movl	%eax, 48(%esp)
	movl	%edi, %eax
/APP
 # 6295 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 52(%esp)
	cmpw	$0, _numsectors
	jle	L707
	movl	%ebp, 136(%esp)
	.cfi_offset 5, -8
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L716:
	leal	(%ebx,%ebx,4), %eax
	sall	$3, %eax
	movl	%eax, 104(%esp)
	addl	_sector, %eax
	movswl	(%eax), %edi
	movswl	2(%eax), %edx
	leal	(%edx,%edi), %esi
	movl	%esi, 36(%esp)
	cmpl	%edi, %esi
	jle	L708
	movl	4(%eax), %esi
	movl	8(%eax), %eax
	movl	%ebx, 112(%esp)
	movl	%eax, 108(%esp)
	movl	%edi, %eax
	sall	$5, %eax
	addl	_wall, %eax
	movl	%esi, 68(%esp)
	movl	%eax, %ebp
	jmp	L715
	.p2align 4,,10
	.p2align 3
L796:
	addl	104(%esp), %edx
	movl	8(%edx), %esi
	cmpl	4(%edx), %esi
	je	L713
	movl	8(%ecx), %eax
	movl	%eax, 72(%esp)
	cmpl	%ebx, %eax
	je	L713
	movl	60(%esp), %ebx
	movl	_wall, %eax
	sall	$5, %ebx
	addl	%ebx, %eax
	movzwl	14(%eax), %eax
	orw	14(%ebp), %ax
	testb	$48, %al
	jne	L713
	cmpl	%esi, 72(%esp)
	je	L709
L713:
	movzwl	24(%edx), %eax
	cmpw	%ax, 24(%ecx)
	jne	L709
	movzbl	28(%ecx), %eax
	cmpb	%al, 28(%edx)
	jne	L709
	movb	$12, 60(%esp)
L712:
	movl	4(%ebp), %ebx
	movl	64(%esp), %esi
	movl	0(%ebp), %ecx
	subl	56(%esp), %ecx
	movl	40(%esp), %edx
	subl	%esi, %ebx
	movl	%ecx, %eax
/APP
 # 6341 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 72(%esp)
	movl	44(%esp), %edx
	movl	%ebx, %eax
/APP
 # 6341 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 76(%esp)
	movl	48(%esp), %edx
	movl	%ebx, %eax
/APP
 # 6342 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 80(%esp)
	movl	52(%esp), %edx
	movl	%ecx, %eax
/APP
 # 6342 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 84(%esp)
	movswl	8(%ebp), %eax
	movl	40(%esp), %edx
	sall	$5, %eax
	addl	_wall, %eax
	movl	4(%eax), %ecx
	movl	(%eax), %ebx
	subl	56(%esp), %ebx
	subl	%esi, %ecx
	movl	%ebx, %eax
/APP
 # 6347 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 88(%esp)
	movl	44(%esp), %edx
	movl	%ecx, %eax
/APP
 # 6347 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 92(%esp)
	movl	48(%esp), %edx
	movl	%ecx, %eax
/APP
 # 6348 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 96(%esp)
	movl	52(%esp), %edx
	movl	%ebx, %eax
/APP
 # 6348 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_ydim, %ecx
	movl	80(%esp), %edx
	movl	%eax, 100(%esp)
	addl	84(%esp), %edx
	movl	_xdim, %ebx
	sall	$11, %ecx
	leal	(%edx,%ecx), %esi
	sall	$11, %ebx
	movl	72(%esp), %edx
	subl	76(%esp), %edx
	movl	%esi, 80(%esp)
	movzbl	60(%esp), %esi
	movl	%ebx, %eax
	movl	88(%esp), %ebx
	subl	92(%esp), %ebx
	movl	%esi, 4(%esp)
	movl	96(%esp), %esi
	addl	%eax, %ebx
	addl	%edx, %eax
	addl	100(%esp), %esi
	movl	80(%esp), %edx
	addl	%ecx, %esi
	movl	%ebx, %ecx
	movl	%esi, (%esp)
	call	_renderDrawLine
	.p2align 5
	.p2align 4
	.p2align 3
L709:
	addl	$1, %edi
	addl	$32, %ebp
	cmpl	%edi, 36(%esp)
	je	L794
L715:
	movswl	10(%ebp), %esi
	movl	%esi, 60(%esp)
	movl	%esi, %edx
	cmpl	$16383, %esi
	ja	L709
	movl	%edi, %ecx
	movl	%edi, %ebx
	andl	$7, %ecx
	sarl	$3, %ebx
	movzbl	__ZL8pow2char.lto_priv.3(%ecx), %ecx
	movzbl	_show2dwall(%ebx), %eax
	andl	%ecx, %eax
	cmpb	%cl, %al
	jne	L709
	cmpl	%edi, %esi
	jle	L710
	movl	%esi, %eax
	andl	$7, %edx
	sarl	$3, %eax
	movzbl	__ZL8pow2char.lto_priv.3(%edx), %edx
	movzbl	_show2dwall(%eax), %eax
	andl	%edx, %eax
	cmpb	%al, %dl
	je	L709
L710:
	movswl	12(%ebp), %ecx
	movl	_sector, %edx
	leal	(%ecx,%ecx,4), %ecx
	leal	(%edx,%ecx,8), %ecx
	movl	4(%ecx), %ebx
	cmpl	%ebx, 68(%esp)
	je	L795
L711:
	cmpl	$6, _dimensionmode
	je	L796
	movb	$-104, 60(%esp)
	jmp	L712
	.p2align 4,,10
	.p2align 3
L794:
	movl	112(%esp), %ebx
L708:
	movswl	_numsectors, %edx
	addl	$1, %ebx
	movl	%edx, %eax
	cmpl	%ebx, %edx
	jg	L716
	movswl	_screenpeek, %edx
	imull	$24124, %edx, %edx
	movswl	_Player+348(%edx), %esi
	movl	%esi, 36(%esp)
	testw	%ax, %ax
	jle	L792
	movb	$0, 76(%esp)
	movl	$0, 72(%esp)
	.p2align 4
	.p2align 3
L742:
	movl	72(%esp), %esi
	movswl	_headspritesect(%esi,%esi), %ebp
	testl	%ebp, %ebp
	js	L717
	.p2align 4
	.p2align 3
L741:
	movl	_connecthead, %edx
	movswl	%dx, %eax
	testw	%dx, %dx
	jns	L722
	jmp	L718
	.p2align 6
	.p2align 4,,10
	.p2align 3
L719:
	movl	_connectpoint2(,%edx,4), %edx
	movswl	%dx, %eax
	testw	%dx, %dx
	js	L718
L722:
	movswl	%ax, %edx
	imull	$24124, %edx, %ecx
	movswl	_Player+348(%ecx), %ecx
	cmpl	%ebp, %ecx
	jne	L719
	imull	$44, %ebp, %edx
	movl	_sprite, %ecx
	cmpw	$16, 32(%ecx,%edx)
	jle	L720
	movl	_totalclock, %edx
	movl	_myconnectindex, %ebx
	sarl	$4, %edx
	andl	$3, %edx
	movl	%edx, __ZZ15drawoverheadmapiiisE8pspr_ndx(,%ebx,4)
L720:
	movb	$1, 76(%esp)
L721:
	imull	$44, %ebp, %edx
	movl	$31, %ebx
	addl	%edx, %ecx
	movzwl	12(%ecx), %edi
	movl	%edi, %edx
	andl	$1, %edx
	cmpw	$1, %dx
	movl	%edi, %edx
	sbbl	%esi, %esi
	andl	$64, %esi
	subl	$8, %esi
	cmpl	36(%esp), %ebp
	cmove	%ebx, %esi
	movl	(%ecx), %ebx
	andl	$48, %edx
	movl	%ebx, 60(%esp)
	movl	4(%ecx), %ebx
	movl	%ebx, 68(%esp)
	movswl	26(%ecx), %ebx
	movl	%ebx, 36(%esp)
	cmpw	$16, %dx
	je	L726
	cmpw	$32, %dx
	je	L727
	testw	%dx, %dx
	jne	L723
	testw	%ax, %ax
	js	L723
	imull	$24124, %eax, %eax
	movswl	_Player+348(%eax), %eax
	cmpl	%ebp, %eax
	je	L797
	.p2align 4
	.p2align 3
L723:
	movswl	_nextspritesect(%ebp,%ebp), %ebp
	testl	%ebp, %ebp
	jns	L741
	movzwl	_numsectors, %eax
L717:
	addl	$1, 72(%esp)
	movswl	%ax, %edx
	cmpl	72(%esp), %edx
	jg	L742
	testw	%ax, %ax
	jle	L792
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L746:
	movl	_sector, %edx
	leal	(%ebx,%ebx,4), %eax
	leal	(%edx,%eax,8), %eax
	movswl	(%eax), %edi
	movswl	2(%eax), %eax
	leal	(%eax,%edi), %esi
	cmpl	%edi, %esi
	jle	L743
	movl	%edi, %eax
	movl	%ebx, 92(%esp)
	sall	$5, %eax
	addl	_wall, %eax
	movl	%eax, %ebp
	.p2align 4
	.p2align 3
L745:
	cmpw	$16383, 10(%ebp)
	jbe	L744
	movl	%edi, %eax
	movl	%edi, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.3(%eax), %eax
	movzbl	_show2dwall(%edx), %ebx
	andl	%eax, %ebx
	cmpb	%bl, %al
	jne	L744
	movswl	16(%ebp), %eax
	cmpw	$0, _tilesiz(,%eax,4)
	je	L744
	cmpw	$0, _tilesiz+2(,%eax,4)
	je	L744
	movl	0(%ebp), %ecx
	subl	56(%esp), %ecx
	movl	4(%ebp), %ebx
	movl	40(%esp), %edx
	movl	%ecx, %eax
	subl	64(%esp), %ebx
/APP
 # 6575 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 36(%esp)
	movl	44(%esp), %edx
	movl	%ebx, %eax
/APP
 # 6575 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 60(%esp)
	movl	48(%esp), %edx
	movl	%ebx, %eax
/APP
 # 6576 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 68(%esp)
	movl	52(%esp), %edx
	movl	%ecx, %eax
/APP
 # 6576 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 72(%esp)
	movswl	8(%ebp), %eax
	movl	40(%esp), %edx
	sall	$5, %eax
	addl	_wall, %eax
	movl	(%eax), %ecx
	subl	56(%esp), %ecx
	movl	4(%eax), %ebx
	movl	%ecx, %eax
	subl	64(%esp), %ebx
/APP
 # 6581 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 76(%esp)
	movl	44(%esp), %edx
	movl	%ebx, %eax
/APP
 # 6581 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 80(%esp)
	movl	48(%esp), %edx
	movl	%ebx, %eax
/APP
 # 6582 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 84(%esp)
	movl	52(%esp), %edx
	movl	%ecx, %eax
/APP
 # 6582 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_xdim, %ebx
	movl	76(%esp), %edx
	movl	%eax, 88(%esp)
	movl	_ydim, %ecx
	subl	80(%esp), %edx
	movl	$24, 4(%esp)
	sall	$11, %ebx
	addl	%ebx, %edx
	sall	$11, %ecx
	movl	%edx, 76(%esp)
	movl	68(%esp), %edx
	addl	72(%esp), %edx
	leal	(%edx,%ecx), %eax
	movl	%eax, 68(%esp)
	movl	36(%esp), %eax
	subl	60(%esp), %eax
	movl	68(%esp), %edx
	addl	%ebx, %eax
	movl	84(%esp), %ebx
	addl	88(%esp), %ebx
	addl	%ecx, %ebx
	movl	76(%esp), %ecx
	movl	%ebx, (%esp)
	call	_renderDrawLine
	.p2align 4
	.p2align 3
L744:
	addl	$1, %edi
	addl	$32, %ebp
	cmpl	%edi, %esi
	jne	L745
	movl	92(%esp), %ebx
L743:
	movswl	_numsectors, %eax
	addl	$1, %ebx
	cmpl	%ebx, %eax
	jg	L746
L792:
	movl	136(%esp), %ebp
	.cfi_restore 5
L707:
	movl	124(%esp), %ebx
	movl	128(%esp), %esi
	movl	132(%esp), %edi
	addl	$140, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	_videoSetCorrectedAspect
	.p2align 4,,10
	.p2align 3
L718:
	.cfi_def_cfa_offset 144
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%ebp, %edx
	movl	%ebp, %ecx
	andl	$7, %edx
	sarl	$3, %ecx
	movzbl	__ZL8pow2char.lto_priv.3(%edx), %edx
	movzbl	_show2dsprite(%ecx), %ebx
	andl	%edx, %ebx
	cmpb	%dl, %bl
	jne	L723
	movl	_sprite, %ecx
	jmp	L721
	.p2align 4,,10
	.p2align 3
L727:
	cmpl	$5, _dimensionmode
	jne	L723
	movswl	14(%ecx), %eax
	leal	_picanm(%eax,%eax,4), %edx
	movl	%eax, 88(%esp)
	movsbl	1(%edx), %ebx
	movl	%ebx, %eax
	movsbl	22(%ecx), %ebx
	addl	%eax, %ebx
	movl	%ebx, 84(%esp)
	movsbl	2(%edx), %ebx
	movsbl	23(%ecx), %edx
	leal	(%ebx,%edx), %eax
	movl	84(%esp), %ebx
	movl	%ebx, %edx
	negl	%edx
	testl	$4, %edi
	cmove	%ebx, %edx
	movswl	28(%ecx), %ebx
	movl	%edx, 84(%esp)
	movl	%eax, %edx
	negl	%edx
	andl	$8, %edi
	movl	%edx, %edi
	leal	512(%ebx), %edx
	cmove	%eax, %edi
	andl	$2047, %edx
	movswl	_sintable(%edx,%edx), %eax
	movzbl	20(%ecx), %edx
	movl	%edi, 96(%esp)
	movzbl	21(%ecx), %ecx
	movl	%eax, 36(%esp)
	movl	88(%esp), %eax
	movswl	_sintable(%ebx,%ebx), %edi
	movl	%edx, 92(%esp)
	movswl	_tilesiz(,%eax,4), %ebx
	movswl	_tilesiz+2(,%eax,4), %edx
	movl	%edi, 80(%esp)
	movl	%ecx, %edi
	movl	84(%esp), %ecx
	movl	%ebx, %eax
	movl	%ebx, 88(%esp)
	movl	%edx, %ebx
	sarl	%eax
	sarl	%ebx
	addl	96(%esp), %ebx
	movl	%edx, 84(%esp)
	addl	%eax, %ecx
	imull	92(%esp), %ecx
	movl	80(%esp), %eax
	movl	%edi, 96(%esp)
	imull	%edi, %ebx
	movl	%ecx, %edx
/APP
 # 6504 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 100(%esp)
	movl	%ebx, %edx
	movl	36(%esp), %eax
/APP
 # 6504 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	60(%esp), %edx
	addl	100(%esp), %edx
	addl	%eax, %edx
	movl	80(%esp), %eax
	movl	%edx, 60(%esp)
	movl	%ebx, %edx
/APP
 # 6505 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	%ecx, %edx
	movl	36(%esp), %eax
/APP
 # 6505 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	68(%esp), %ecx
	addl	%ebx, %ecx
	movl	88(%esp), %ebx
	imull	92(%esp), %ebx
	subl	%eax, %ecx
	movl	80(%esp), %eax
	movl	%ecx, %edi
	movl	%ebx, %edx
	movl	%ebx, %ecx
/APP
 # 6507 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	60(%esp), %ebx
	movl	%ebx, %edx
	subl	%eax, %edx
	movl	36(%esp), %eax
	movl	%edx, 88(%esp)
	movl	%ecx, %edx
/APP
 # 6508 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	84(%esp), %edx
	imull	96(%esp), %edx
	leal	(%edi,%eax), %ecx
	movl	%edi, 68(%esp)
	movl	%ecx, 92(%esp)
	movl	36(%esp), %eax
	movl	%edx, %ecx
/APP
 # 6510 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 100(%esp)
	movl	%ecx, %edx
	movl	80(%esp), %eax
/APP
 # 6513 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	subl	56(%esp), %ebx
	movl	%eax, %edx
	movl	%eax, %edi
	movl	68(%esp), %eax
	negl	%edx
	movl	%ebx, %ecx
	subl	64(%esp), %eax
	movl	%edx, 36(%esp)
	movl	%eax, %ebx
	movl	40(%esp), %edx
	movl	%ecx, %eax
/APP
 # 6519 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 80(%esp)
	movl	44(%esp), %edx
	movl	%ebx, %eax
/APP
 # 6519 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	80(%esp), %edx
	subl	%eax, %edx
	movl	%ebx, %eax
	movl	%edx, 80(%esp)
	movl	48(%esp), %edx
/APP
 # 6520 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	52(%esp), %edx
	movl	%ecx, %eax
/APP
 # 6520 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	leal	(%ebx,%eax), %ecx
	movl	40(%esp), %edx
	movl	92(%esp), %ebx
	movl	%ecx, 84(%esp)
	movl	88(%esp), %ecx
	subl	56(%esp), %ecx
	subl	64(%esp), %ebx
	movl	%ecx, %eax
/APP
 # 6524 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 96(%esp)
	movl	44(%esp), %edx
	movl	%ebx, %eax
/APP
 # 6524 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	96(%esp), %edx
	subl	%eax, %edx
	movl	%ebx, %eax
	movl	%edx, 96(%esp)
	movl	48(%esp), %edx
/APP
 # 6525 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	52(%esp), %edx
	movl	%ecx, %eax
/APP
 # 6525 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	leal	(%ebx,%eax), %ecx
	movl	92(%esp), %ebx
	movl	40(%esp), %edx
	movl	%ecx, 104(%esp)
	movl	88(%esp), %ecx
	subl	100(%esp), %ecx
	subl	56(%esp), %ecx
	subl	%edi, %ebx
	movl	%ecx, %eax
	subl	64(%esp), %ebx
/APP
 # 6529 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 88(%esp)
	movl	44(%esp), %edx
	movl	%ebx, %eax
/APP
 # 6529 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	88(%esp), %edx
	subl	%eax, %edx
	movl	%ebx, %eax
	movl	%edx, 88(%esp)
	movl	48(%esp), %edx
/APP
 # 6530 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	52(%esp), %edx
	movl	%ecx, %eax
/APP
 # 6530 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	leal	(%ebx,%eax), %ecx
	movl	68(%esp), %ebx
	movl	40(%esp), %edx
	movl	%ecx, 92(%esp)
	movl	60(%esp), %ecx
	subl	100(%esp), %ecx
	subl	56(%esp), %ecx
	subl	%edi, %ebx
	movl	%ecx, %eax
	subl	64(%esp), %ebx
/APP
 # 6534 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edi
	movl	44(%esp), %edx
	movl	%ebx, %eax
/APP
 # 6534 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	subl	%eax, %edi
	movl	48(%esp), %edx
	movl	%ebx, %eax
	movl	%edi, 60(%esp)
/APP
 # 6535 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	52(%esp), %edx
	movl	%ecx, %eax
/APP
 # 6535 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	leal	(%ebx,%eax), %edi
	movl	_ydim, %eax
	movl	84(%esp), %ebx
	movl	%edi, 68(%esp)
	movl	104(%esp), %edi
	sall	$11, %eax
	movl	96(%esp), %ecx
	movl	%eax, %edx
	movl	_xdim, %eax
	addl	%edx, %ebx
	addl	%edi, %edx
	movl	%ebx, 100(%esp)
	movl	%esi, %ebx
	sall	$11, %eax
	movzbl	%bl, %ebx
	movl	%edx, (%esp)
	movl	100(%esp), %edx
	addl	%eax, %ecx
	movl	%ebx, 4(%esp)
	addl	80(%esp), %eax
	call	_renderDrawLine
	movl	_ydim, %eax
	movl	88(%esp), %esi
	movl	%ebx, 4(%esp)
	sall	$11, %eax
	movl	%eax, %edx
	movl	_xdim, %eax
	sall	$11, %eax
	leal	(%eax,%esi), %ecx
	leal	(%edx,%edi), %esi
	movl	92(%esp), %edi
	addl	96(%esp), %eax
	addl	%edi, %edx
	movl	%edx, (%esp)
	movl	%esi, %edx
	call	_renderDrawLine
	movl	_ydim, %edx
	movl	_xdim, %eax
	movl	%ebx, 4(%esp)
	movl	60(%esp), %ecx
	sall	$11, %edx
	sall	$11, %eax
	leal	(%edx,%edi), %esi
	movl	68(%esp), %edi
	addl	%eax, %ecx
	addl	88(%esp), %eax
	addl	%edi, %edx
	movl	%edx, (%esp)
	movl	%esi, %edx
	call	_renderDrawLine
	movl	_ydim, %edx
	movl	_xdim, %eax
	movl	%ebx, 4(%esp)
	movl	80(%esp), %esi
	sall	$11, %edx
	sall	$11, %eax
	addl	%edx, %edi
	addl	84(%esp), %edx
	leal	(%eax,%esi), %ecx
	addl	60(%esp), %eax
	movl	%edx, (%esp)
	movl	%edi, %edx
	call	_renderDrawLine
	jmp	L723
	.p2align 4,,10
	.p2align 3
L726:
	movswl	14(%ecx), %edx
	movsbl	22(%ecx), %ebx
	movsbl	_picanm+1(%edx,%edx,4), %eax
	addl	%ebx, %eax
	movl	%eax, %ebx
	negl	%ebx
	andl	$4, %edi
	movzbl	20(%ecx), %edi
	cmovne	%ebx, %eax
	movzwl	28(%ecx), %ebx
	movw	%bx, 36(%esp)
	movl	36(%esp), %ecx
	andl	$2047, %ecx
	movswl	_sintable(%ecx,%ecx), %ebx
	movzwl	36(%esp), %ecx
	addl	$1536, %ecx
	imull	%edi, %ebx
	andl	$2047, %ecx
	movswl	_sintable(%ecx,%ecx), %ecx
	imull	%edi, %ecx
	movswl	_tilesiz(,%edx,4), %edi
	movl	%edi, %edx
	sarl	%edx
	addl	%eax, %edx
	movl	%ebx, %eax
	movl	%edx, 36(%esp)
/APP
 # 6464 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	60(%esp), %edx
	subl	%eax, %edx
	movl	%ebx, %eax
	movl	%edx, 60(%esp)
	movl	%edi, %edx
/APP
 # 6465 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 80(%esp)
	movl	36(%esp), %edx
	movl	%ecx, %eax
/APP
 # 6466 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	68(%esp), %ebx
	movl	%edi, %edx
	subl	%eax, %ebx
	movl	%ecx, %eax
/APP
 # 6467 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	60(%esp), %ecx
	subl	56(%esp), %ecx
	movl	%eax, 68(%esp)
	movl	%ebx, %edi
	movl	40(%esp), %edx
	subl	64(%esp), %edi
	movl	%ecx, %eax
/APP
 # 6471 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 84(%esp)
	movl	44(%esp), %edx
	movl	%edi, %eax
/APP
 # 6471 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 88(%esp)
	movl	48(%esp), %edx
	movl	%edi, %eax
/APP
 # 6472 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 92(%esp)
	movl	52(%esp), %edx
	movl	%ecx, %eax
/APP
 # 6472 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	80(%esp), %ecx
	movl	60(%esp), %edi
	movl	%eax, 96(%esp)
	movl	40(%esp), %edx
	addl	%ecx, %edi
	movl	68(%esp), %ecx
	subl	56(%esp), %edi
	movl	%edi, %eax
	addl	%ebx, %ecx
	subl	64(%esp), %ecx
/APP
 # 6476 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	44(%esp), %edx
	movl	%ecx, %eax
/APP
 # 6476 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 60(%esp)
	movl	48(%esp), %edx
	movl	%ecx, %eax
/APP
 # 6477 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	52(%esp), %edx
	movl	%edi, %eax
/APP
 # 6477 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_xdim, %edx
	movl	_ydim, %edi
	movl	%eax, 68(%esp)
	subl	60(%esp), %ebx
	addl	68(%esp), %ecx
	sall	$11, %edx
	sall	$11, %edi
	addl	%edx, %ebx
	movl	%edx, %eax
	movl	92(%esp), %edx
	addl	96(%esp), %edx
	movl	%ebx, 80(%esp)
	leal	(%edx,%edi), %ebx
	movl	84(%esp), %edx
	subl	88(%esp), %edx
	movl	%edi, 60(%esp)
	addl	%edx, %eax
	movl	%esi, %edx
	addl	60(%esp), %ecx
	movl	%ebx, 92(%esp)
	movzbl	%dl, %edi
	movl	%ecx, (%esp)
	movl	92(%esp), %edx
	movl	%edi, 4(%esp)
	movl	80(%esp), %ecx
	call	_renderDrawLine
	jmp	L723
	.p2align 4,,10
	.p2align 3
L795:
	movl	108(%esp), %eax
	cmpl	8(%ecx), %eax
	jne	L711
	movl	60(%esp), %eax
	movl	_wall, %esi
	sall	$5, %eax
	addl	%eax, %esi
	movzwl	14(%esi), %esi
	orw	14(%ebp), %si
	testw	$48, %si
	jne	L711
	jmp	L709
L797:
	movl	60(%esp), %eax
	subl	56(%esp), %eax
	movl	68(%esp), %ebx
	movl	40(%esp), %edx
	movl	%eax, 60(%esp)
	subl	64(%esp), %ebx
/APP
 # 6398 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 68(%esp)
	movl	44(%esp), %edx
	movl	%ebx, %eax
/APP
 # 6398 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	68(%esp), %edx
	subl	%eax, %edx
	movl	%ebx, %eax
	movl	%edx, 68(%esp)
	movl	48(%esp), %edx
/APP
 # 6399 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	52(%esp), %edx
	movl	60(%esp), %eax
/APP
 # 6399 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%ebx, %eax
	movl	%eax, 60(%esp)
	cmpl	$5, _dimensionmode
	je	L798
	movl	72(%esp), %esi
	movl	%esi, %eax
	sarl	$3, %esi
	andl	$7, %eax
	movzbl	_gotsector(%esi), %ebx
	movzbl	__ZL8pow2char.lto_priv.3(%eax), %eax
	andl	%eax, %ebx
	cmpb	%al, %bl
	jne	L723
	cmpl	$192, 116(%esp)
	jle	L723
	movswl	_screenpeek, %eax
	imull	$24124, %eax, %eax
	movswl	_Player+348(%eax), %edx
	cmpl	%ebp, %edx
	je	L754
L747:
	movzwl	28(%ecx), %eax
	subw	122(%esp), %ax
	andw	$2047, %ax
	movl	%eax, %ebx
L735:
	movswl	14(%ecx), %esi
	cmpw	$3123, %si
	je	L723
	cmpb	$0, 76(%esp)
	je	L736
	cmpw	$1, _gNet+12
	jne	L755
	cmpl	%edx, %ebp
	jne	L723
L755:
	movl	_myconnectindex, %eax
	movl	_yxaspect, %edx
	movl	__ZZ15drawoverheadmapiiisE8pspr_ndx(,%eax,4), %eax
	leal	1196(%eax), %esi
	movzbl	21(%ecx), %eax
	imull	116(%esp), %eax
/APP
 # 6443 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movswl	%si, %esi
	movl	%eax, 96(%esp)
	movl	%esi, 92(%esp)
	cmpl	$30719, %esi
	ja	L723
	movl	_windowxy1+4, %esi
	movl	_windowxy2, %eax
	movl	_windowxy2+4, %edx
	movl	%esi, 88(%esp)
	movl	_windowxy1, %esi
	movl	%eax, 84(%esp)
	cmpl	%esi, %eax
	jl	L723
	cmpl	88(%esp), %edx
	movl	%edx, 80(%esp)
	jl	L723
	movl	_ydim, %edx
	shrw	%di
	movl	%esi, 20(%esp)
	movl	92(%esp), %esi
	sall	$15, %edx
	movl	%edx, %eax
	movl	60(%esp), %edx
	sall	$4, %edx
	addl	%eax, %edx
	movl	%edx, 60(%esp)
	movl	_xdim, %edx
	sall	$15, %edx
	movl	%edx, %eax
	movl	68(%esp), %edx
	sall	$4, %edx
	addl	%eax, %edx
	movl	84(%esp), %eax
	movl	%edx, 68(%esp)
	movl	80(%esp), %edx
	movl	%eax, 28(%esp)
	movl	88(%esp), %eax
	movl	%edx, 32(%esp)
	movl	60(%esp), %edx
	movl	%eax, 24(%esp)
	movl	%edi, %eax
	andl	$1, %eax
	movl	%eax, 16(%esp)
	movzbl	17(%ecx), %eax
	movl	%eax, 12(%esp)
	movsbl	16(%ecx), %eax
	movl	%esi, 4(%esp)
	movl	96(%esp), %ecx
	movl	%eax, 8(%esp)
	movswl	%bx, %eax
	movl	%eax, (%esp)
	movl	68(%esp), %eax
	call	_rotatesprite_.part.0.constprop.0
	jmp	L723
	.p2align 4,,10
	.p2align 3
L798:
	movswl	_screenpeek, %eax
	movl	%eax, 84(%esp)
	imull	$24124, %eax, %eax
	movswl	_Player+348(%eax), %eax
	movl	%eax, 80(%esp)
	cmpw	$1, _gNet+12
	je	L799
L731:
	movzwl	28(%ecx), %eax
	leal	512(%eax), %edx
	andl	$2047, %eax
	andl	$2047, %edx
	movzwl	_sintable(%eax,%eax), %ebx
	movzwl	_sintable(%edx,%edx), %ecx
	movl	40(%esp), %edx
	sarw	$7, %bx
	sarw	$7, %cx
	movswl	%cx, %eax
/APP
 # 6405 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 84(%esp)
	movl	44(%esp), %edx
	movswl	%bx, %eax
/APP
 # 6405 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edi
	movl	40(%esp), %edx
	movswl	%bx, %eax
/APP
 # 6406 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 88(%esp)
	movl	44(%esp), %edx
	movswl	%cx, %eax
/APP
 # 6406 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	cmpl	80(%esp), %ebp
	je	L733
	movl	84(%esp), %ebx
	subl	%edi, %ebx
	movl	88(%esp), %edi
	addl	%eax, %edi
	movl	68(%esp), %eax
	movl	%edi, 80(%esp)
	leal	(%eax,%ebx), %edi
	subl	%ebx, %eax
	movl	%edi, 84(%esp)
	movl	%eax, 92(%esp)
L734:
	movl	_yxaspect, %edx
	movl	%ebx, %eax
/APP
 # 6414 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_yxaspect, %edx
	movl	%eax, 96(%esp)
	movl	80(%esp), %eax
/APP
 # 6415 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_ydim, %edx
	movl	60(%esp), %ebx
	movl	84(%esp), %edi
	leal	(%ebx,%eax), %ecx
	sall	$11, %edx
	subl	%eax, %ebx
	movl	92(%esp), %eax
	movl	%ecx, 88(%esp)
	movl	%edx, %ecx
	movl	_xdim, %edx
	addl	%ecx, %ebx
	movl	%ebx, 100(%esp)
	movl	%esi, %ebx
	movl	88(%esp), %esi
	sall	$11, %edx
	addl	%edx, %edi
	addl	%edx, %eax
	movzbl	%bl, %ebx
	leal	(%esi,%ecx), %edx
	movl	%ebx, 4(%esp)
	movl	%edi, %ecx
	movl	%edx, (%esp)
	movl	100(%esp), %edx
	call	_renderDrawLine
	movl	_ydim, %edx
	movl	84(%esp), %edi
	movl	%ebx, 4(%esp)
	movl	60(%esp), %ecx
	addl	96(%esp), %ecx
	sall	$11, %edx
	movl	%edx, %eax
	movl	_xdim, %edx
	sall	$11, %edx
	leal	(%edx,%edi), %esi
	leal	(%ecx,%eax), %edi
	addl	88(%esp), %eax
	movl	68(%esp), %ecx
	movl	%eax, (%esp)
	subl	80(%esp), %ecx
	movl	%edi, 92(%esp)
	leal	(%ecx,%edx), %edi
	movl	92(%esp), %edx
	movl	%esi, %ecx
	movl	%edi, %eax
	call	_renderDrawLine
	movl	_xdim, %esi
	movl	84(%esp), %eax
	movl	%ebx, 4(%esp)
	movl	_ydim, %edx
	sall	$11, %esi
	addl	%esi, %eax
	sall	$11, %edx
	movl	%esi, %ecx
	movl	60(%esp), %esi
	subl	96(%esp), %esi
	movl	%eax, 84(%esp)
	addl	%edx, %esi
	addl	88(%esp), %edx
	movl	68(%esp), %eax
	movl	%edx, (%esp)
	addl	80(%esp), %eax
	movl	%esi, %edx
	addl	%ecx, %eax
	movl	84(%esp), %ecx
	call	_renderDrawLine
	jmp	L723
L799:
	cmpl	%eax, %ebp
	je	L731
	movl	72(%esp), %esi
	movl	%esi, %eax
	sarl	$3, %esi
	andl	$7, %eax
	movzbl	_gotsector(%esi), %ebx
	movzbl	__ZL8pow2char.lto_priv.3(%eax), %eax
	andl	%eax, %ebx
	cmpb	%al, %bl
	jne	L723
	cmpl	$192, 116(%esp)
	jle	L723
	imull	$24124, 84(%esp), %eax
	movswl	_Player+348(%eax), %edx
	jmp	L747
	.p2align 4,,10
	.p2align 3
L705:
	.cfi_restore 5
	movswl	_Level, %eax
	leal	(%eax,%eax,4), %eax
	movl	_LevelInfo+8(,%eax,4), %eax
	movl	$_ds, (%esp)
	movl	%eax, 4(%esp)
	call	_strcpy
	jmp	L706
L793:
	movl	$10, (%esp)
	subl	$7, %eax
	movl	$LC27, %ecx
	movswl	%ax, %edx
	movl	$7, %eax
	call	__Z12minigametextiiPKcs.isra.0
	jmp	L704
L733:
	.cfi_offset 5, -8
	movl	116(%esp), %eax
	movl	68(%esp), %edi
	xorl	%ebx, %ebx
	sall	$5, %eax
	movl	%edi, 92(%esp)
	negl	%eax
	movl	%edi, 84(%esp)
	movl	%eax, 80(%esp)
	jmp	L734
L754:
	movl	$0, 60(%esp)
	xorl	%ebx, %ebx
	movl	$0, 68(%esp)
	jmp	L735
L736:
	movzbl	21(%ecx), %eax
	movl	_yxaspect, %edx
	imull	116(%esp), %eax
/APP
 # 6446 "source/sw/src/game.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 96(%esp)
	movl	%esi, 92(%esp)
	cmpl	$30719, %esi
	ja	L723
	movl	_windowxy1+4, %esi
	movl	_windowxy2, %eax
	movl	_windowxy2+4, %edx
	movl	%esi, 88(%esp)
	movl	_windowxy1, %esi
	movl	%eax, 84(%esp)
	cmpl	%esi, %eax
	jl	L723
	cmpl	88(%esp), %edx
	movl	%edx, 80(%esp)
	jl	L723
	movl	_ydim, %edx
	shrw	%di
	movl	%esi, 20(%esp)
	movswl	%bx, %ebx
	movl	92(%esp), %esi
	sall	$15, %edx
	movl	%edx, %eax
	movl	60(%esp), %edx
	sall	$4, %edx
	addl	%eax, %edx
	movl	%edx, 60(%esp)
	movl	_xdim, %edx
	sall	$15, %edx
	movl	%edx, %eax
	movl	68(%esp), %edx
	sall	$4, %edx
	addl	%eax, %edx
	movl	84(%esp), %eax
	movl	%edx, 68(%esp)
	movl	80(%esp), %edx
	movl	%eax, 28(%esp)
	movl	88(%esp), %eax
	movl	%edx, 32(%esp)
	movl	60(%esp), %edx
	movl	%eax, 24(%esp)
	movl	%edi, %eax
	andl	$1, %eax
	movl	%eax, 16(%esp)
	movzbl	17(%ecx), %eax
	movl	%eax, 12(%esp)
	movsbl	16(%ecx), %eax
	movl	%esi, 4(%esp)
	movl	96(%esp), %ecx
	movl	%eax, 8(%esp)
	movl	68(%esp), %eax
	movl	%ebx, (%esp)
	call	_rotatesprite_.part.0.constprop.0
	jmp	L723
	.cfi_endproc
LFE73:
	.p2align 4
	.globl	__Z11RandomRangei
	.def	__Z11RandomRangei;	.scl	2;	.type	32;	.endef
__Z11RandomRangei:
LFB76:
	.cfi_startproc
	testl	%eax, %eax
	jle	L804
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, %ebx
	movl	%eax, _randomseed
	sall	$14, %ebx
	cmpl	$65535, %eax
	movl	$1073709056, %eax
	cmove	%eax, %ebx
	xorl	%edx, %edx
	movl	$1073725440, %eax
	divl	%ecx
	xorl	%edx, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	divl	(%esp)
	leal	-1(%ecx), %edx
	cmpl	%ecx, %eax
	cmovnb	%edx, %eax
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L804:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE76:
	.section .rdata,"dr"
LC28:
	.ascii "restartvid: Reset failed...\0"
LC29:
	.ascii "source/sw/src/game.cpp\0"
	.text
	.p2align 4
	.globl	__Z17osdcmd_restartvidPK13osdfuncparm_t.constprop.0.isra.0
	.def	__Z17osdcmd_restartvidPK13osdfuncparm_t.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
__Z17osdcmd_restartvidPK13osdfuncparm_t.constprop.0.isra.0:
LFB79:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	_upscalefactor, %edx
	movzbl	_fullscreen, %eax
	movb	$1, _videomodereset
	movl	_ydim, %ecx
	movb	$0, __ZL12modeschecked.lto_priv.0
	movl	%edx, 4(%esp)
	movl	_bpp, %edx
	movl	%edx, (%esp)
	movl	_xdim, %edx
	call	_videoSetGameMode
	testl	%eax, %eax
	jne	L816
L810:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L816:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L810
	movl	$LC28, 12(%esp)
	movl	$6729, 8(%esp)
	movl	$LC29, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	addl	$16, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE79:
	.section .rdata,"dr"
LC30:
	.ascii "not a directory\0"
LC31:
	.ascii "no such directory\0"
LC32:
	.ascii "SW.GRP\0"
LC33:
	.ascii "setup\0"
LC34:
	.ascii "nosetup\0"
LC35:
	.ascii "nologo\0"
LC36:
	.ascii "quick\0"
LC37:
	.ascii "aim\0"
LC38:
	.ascii "flags\0"
LC39:
	.ascii "?\0"
	.align 4
LC40:
	.ascii "options:  ('/' may be used instead of '-', <> text is optional)\12\12\0"
LC41:
	.ascii "Shadow Warrior Help\0"
LC42:
	.ascii "-usecwd\0"
LC43:
	.ascii "kuro.log\0"
LC44:
	.ascii " \0"
LC45:
	.ascii "source/build/src/loguru.cpp\0"
	.align 4
LC46:
	.ascii "CHECK FAILED:  file_path_const && *file_path_const  \0"
	.align 4
LC47:
	.ascii "Failed to create directory '%s'\0"
LC48:
	.ascii "EACCES\0"
LC49:
	.ascii "ENAMETOOLONG\0"
LC50:
	.ascii "ENOENT\0"
LC51:
	.ascii "ENOTDIR\0"
LC52:
	.ascii "ELOOP\0"
	.align 4
LC53:
	.ascii "Failed to create directories to '%s'\0"
LC54:
	.ascii "w\0"
LC55:
	.ascii "Failed to open '%s'\0"
	.align 4
LC56:
	.ascii "Started at %04d-%02d-%02d %02d:%02d:%02d.%03lld\0"
	.align 4
LC57:
	.ascii "Logging to '%s', mode: '%s', verbosity: %d\0"
LC58:
	.ascii "Kuro\0"
	.align 4
LC59:
	.ascii "r00006[/bin/sh: line 1: git: command not found]-nohash\0"
LC60:
	.ascii "Kuro %s\0"
LC61:
	.ascii "Nov  8 2026 11:09:01\0"
LC62:
	.ascii "Application parameters:\0"
LC63:
	.ascii " %s\0"
LC64:
	.ascii "/\0"
LC65:
	.ascii "user_profiles_enabled\0"
LC66:
	.ascii "shell32.dll\0"
LC67:
	.ascii "SHGetSpecialFolderPathA\0"
LC68:
	.ascii "%s/Kuro\0"
LC69:
	.ascii "music\0"
LC70:
	.ascii "SWGRP\0"
LC71:
	.ascii "Using \"%s\" as main GRP file\0"
LC72:
	.ascii "source/sw/src/common.cpp\0"
LC73:
	.ascii "j\0"
	.align 4
LC74:
	.ascii "Failed adding %s for game data: %s\0"
LC75:
	.ascii "-addon0\0"
LC76:
	.ascii "-addon1\0"
LC77:
	.ascii "-addon2\0"
LC78:
	.ascii "-dp\0"
LC79:
	.ascii "Searching for game data...\0"
LC80:
	.ascii "source/sw/src/grpscan.cpp\0"
LC81:
	.ascii "grpfiles.cache\0"
LC82:
	.ascii "%s:%d: Unexpected EOF!\0"
	.align 4
LC83:
	.ascii "source/build/src/scriptfile.cpp\0"
LC84:
	.ascii " %s has checksum 0x%08x\0"
LC85:
	.ascii "wb\0"
LC86:
	.ascii "\"%s\" %d %d %d\12\0"
LC87:
	.ascii "SHADSW.BIN\0"
LC88:
	.ascii "SWREG.BIN\0"
LC89:
	.ascii "Kuro Shareware\0"
LC90:
	.ascii "-hide\0"
	.align 4
LC91:
	.ascii "SHADOW WARRIOR(tm) Version 1.2 (Shareware Version)\0"
	.align 4
LC92:
	.ascii "SHADOW WARRIOR(tm) Version 1.2\0"
	.align 4
LC93:
	.ascii "Copyright (c) 1997 3D Realms Entertainment\0"
LC94:
	.ascii "autonet\0"
LC95:
	.ascii "%d,%d,%d,%d,%d,%d,%d,%d,%d,%d\0"
LC96:
	.ascii "voidjumpbugcompat\0"
LC97:
	.ascii "norelaunch\0"
LC98:
	.ascii "turnscale\0"
LC99:
	.ascii "%d\0"
LC100:
	.ascii "movescale\0"
LC101:
	.ascii "extcompat\0"
LC102:
	.ascii "setupfile\0"
LC103:
	.ascii "net\0"
LC104:
	.ascii "short\0"
LC105:
	.ascii "nodemo\0"
LC106:
	.ascii "allsync\0"
LC107:
	.ascii "name\0"
LC108:
	.ascii "f8\0"
LC109:
	.ascii "f4\0"
LC110:
	.ascii "f2\0"
LC111:
	.ascii "monst\0"
LC112:
	.ascii "nopredict\0"
LC113:
	.ascii "democol\0"
LC114:
	.ascii "level\0"
LC115:
	.ascii "scorequit\0"
LC116:
	.ascii "s\0"
LC117:
	.ascii "commbat\0"
LC118:
	.ascii "nometers\0"
LC119:
	.ascii "coop\0"
LC120:
	.ascii "mdr\0"
LC121:
	.ascii "wpn\0"
LC122:
	.ascii "trix\0"
LC123:
	.ascii "dr\0"
LC124:
	.ascii "demoss\0"
LC125:
	.ascii "dp\0"
LC126:
	.ascii "cheat\0"
LC127:
	.ascii "/\\\0"
LC128:
	.ascii ".wang\0"
LC129:
	.ascii ".wb\0"
LC130:
	.ascii ".DMO\0"
LC131:
	.ascii ".dmo\0"
	.align 4
LC132:
	.ascii "Could not find a matching .dmo file for %s.\0"
	.align 4
LC133:
	.ascii "Could not add the demo folder to the search path: %s\0"
LC134:
	.ascii "Demo filename is too long: %s\0"
LC135:
	.ascii "wanton destruct\0"
LC136:
	.ascii "twin dragon\0"
LC137:
	.ascii "-nohide\0"
LC138:
	.ascii "-voidjumpbugcompat\0"
LC139:
	.ascii "/voidjumpbugcompat\0"
LC140:
	.ascii " -j\"\0"
LC141:
	.ascii "\"\0"
LC142:
	.ascii " -demosyncrecord\0"
LC143:
	.ascii " -demosynctest\0"
LC144:
	.ascii "PLAYER1\0"
LC145:
	.ascii "PLAYER2\0"
LC146:
	.ascii "PLAYER3\0"
LC147:
	.ascii "PLAYER4\0"
LC148:
	.ascii "PLAYER5\0"
LC149:
	.ascii "PLAYER6\0"
LC150:
	.ascii "PLAYER7\0"
LC151:
	.ascii "PLAYER8\0"
LC152:
	.ascii "33513\0"
LC153:
	.ascii "33514\0"
LC154:
	.ascii "33515\0"
LC155:
	.ascii "33516\0"
LC156:
	.ascii "33517\0"
LC157:
	.ascii "33518\0"
LC158:
	.ascii "33519\0"
LC159:
	.ascii "33520\0"
LC160:
	.ascii "localhost:33513\0"
LC161:
	.ascii "localhost:33514\0"
LC162:
	.ascii "localhost:33515\0"
LC163:
	.ascii "localhost:33516\0"
LC164:
	.ascii "localhost:33517\0"
LC165:
	.ascii "localhost:33518\0"
LC166:
	.ascii "localhost:33519\0"
LC167:
	.ascii "localhost:33520\0"
LC168:
	.ascii ".WANG\0"
LC169:
	.ascii ".WB\0"
LC170:
	.ascii "-autonet\0"
LC171:
	.ascii "-name\0"
LC172:
	.ascii "VOIDJUMPBUGCOMPAT\0"
LC173:
	.ascii " -democol %d \0"
	.align 4
LC174:
	.ascii " -nosetup -noinstancechecking -norelaunch \0"
LC175:
	.ascii "\0"
LC176:
	.ascii " -name \"\0"
LC177:
	.ascii " -dp\"\0"
LC178:
	.ascii "\" /net \0"
LC179:
	.ascii " /n1 \0"
LC180:
	.ascii " /p\0"
	.align 4
LC181:
	.ascii " -nosetup -noinstancechecking -norelaunch -nohide -name \"\0"
LC182:
	.ascii " -monst\0"
LC183:
	.ascii " -s%1d\0"
LC184:
	.ascii " -dp\0"
LC185:
	.ascii "basic_string::replace\0"
	.align 4
LC186:
	.ascii "%s: __pos (which is %zu) > this->size() (which is %zu)\0"
LC187:
	.ascii " -voidjumpbugcompat\0"
LC188:
	.ascii "demosynctest\0"
LC189:
	.ascii "demosyncrecord\0"
LC190:
	.ascii "cam\0"
LC191:
	.ascii "map\0"
	.align 4
LC192:
	.ascii "ERROR: Could not find user map %s!\0"
LC193:
	.ascii "g\0"
LC194:
	.ascii "Added %s\0"
LC195:
	.ascii "h\0"
LC196:
	.ascii "Using .def file %s\0"
LC197:
	.ascii "source/build/src/common.cpp\0"
LC198:
	.ascii "mh\0"
LC199:
	.ascii "nodinput\0"
	.align 4
LC200:
	.ascii "DirectInput (controller) support disabled\0"
LC201:
	.ascii "noxinput\0"
	.align 4
LC202:
	.ascii "XInput (controller) support disabled\0"
LC203:
	.ascii "nocontroller\0"
LC204:
	.ascii "Controller support disabled.\0"
	.section	.text.unlikely,"x"
LCOLDB211:
	.text
LHOTB211:
	.p2align 4
	.globl	_app_main
	.def	_app_main;	.scl	2;	.type	32;	.endef
_app_main:
LFB83:
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
	subl	$2780, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%eax, -2644(%ebp)
	movl	%edx, -2680(%ebp)
	cmpl	$1, %eax
	jle	L818
	movl	$1, %edi
	jmp	L843
	.p2align 4,,10
	.p2align 3
L1480:
	movb	$1, _CommandSetup
	movl	$0, _g_noSetup
L819:
	addl	$1, %edi
	cmpl	%edi, -2644(%ebp)
	je	L844
L843:
	movl	-2680(%ebp), %eax
	movl	(%eax,%edi,4), %ebx
	movzbl	(%ebx), %eax
	andl	$-3, %eax
	cmpb	$45, %al
	jne	L819
	leal	1(%ebx), %esi
	movl	$LC33, 4(%esp)
	movl	%esi, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L1480
	movl	$LC34, 4(%esp)
	movl	%esi, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L821
	movb	$0, _CommandSetup
	addl	$1, %edi
	movl	$1, _g_noSetup
	cmpl	%edi, -2644(%ebp)
	jne	L843
L844:
	movl	-2644(%ebp), %edi
	movl	-2680(%ebp), %esi
	xorl	%ebx, %ebx
	jmp	L846
	.p2align 4,,10
	.p2align 3
L1481:
	addl	$1, %ebx
	cmpl	%ebx, %edi
	je	L847
L846:
	movl	$LC42, 4(%esp)
	movl	(%esi,%ebx,4), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L1481
	movl	$1, %eax
L845:
	movl	%eax, _g_useCwd
	movl	$256, 8(%esp)
	movl	$__ZL9g_rootDir, 4(%esp)
	movl	$0, (%esp)
	call	*__imp__GetModuleFileNameA@12
	movl	$__ZL9g_rootDir, %eax
	movl	$1, %edx
	subl	$12, %esp
	call	_Bcorrectfilename.isra.0
	leal	-1048(%ebp), %eax
	movl	$LC43, 12(%esp)
	movl	$LC4, 8(%esp)
	movl	$259, 4(%esp)
	movl	%eax, (%esp)
	call	_snprintf
	cmpb	$0, -1048(%ebp)
	je	L848
	movl	$__ZL24_internal_getcolumnwidthi.lto_priv.0, -2664(%ebp)
	movss	-2664(%ebp), %xmm1
	leal	-1048(%ebp), %eax
	movss	LC205, %xmm0
	movl	$__ZL20_internal_drawosdstriiPKciii.lto_priv.0, -2664(%ebp)
	movss	-2664(%ebp), %xmm2
	movl	$__ZL19_internal_onshowosdi.lto_priv.0, -2664(%ebp)
	unpcklps	%xmm1, %xmm0
	movss	LC206, %xmm1
	unpcklps	%xmm2, %xmm1
	movaps	%xmm1, %xmm4
	movss	-2664(%ebp), %xmm1
	movl	$_COMMON_clearbackground, -2664(%ebp)
	movlhps	%xmm0, %xmm4
	movss	-2664(%ebp), %xmm2
	movss	LC207, %xmm0
	movups	%xmm4, -2696(%ebp)
	unpcklps	%xmm1, %xmm0
	movss	LC208, %xmm1
	unpcklps	%xmm2, %xmm1
	movaps	%xmm1, %xmm5
	movlhps	%xmm0, %xmm5
	movups	%xmm5, -2664(%ebp)
	call	__xstrdup
	movl	$47, 4(%esp)
	movl	%eax, %ebx
	leal	1(%eax), %eax
	movl	%eax, (%esp)
	call	_strchr
	movl	__imp___mkdir, %esi
	movl	%eax, %edi
	testl	%eax, %eax
	jne	L849
	jmp	L850
	.p2align 4,,10
	.p2align 3
L851:
	movb	$47, (%edi)
	addl	$1, %edi
	movl	%edi, (%esp)
	movl	$47, 4(%esp)
	call	_strchr
	movl	%eax, %edi
	testl	%eax, %eax
	je	L850
L849:
	movb	$0, (%edi)
	movl	%ebx, (%esp)
	call	*%esi
	cmpl	$-1, %eax
	jne	L851
	call	*__imp___errno
	cmpl	$17, (%eax)
	je	L851
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-2, %eax
	jge	L1482
L852:
	movb	$47, (%edi)
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	subl	$4, %esp
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L857
	leal	-1048(%ebp), %eax
	movl	$LC53, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$851, 8(%esp)
	movl	$LC45, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L857
	.p2align 4,,10
	.p2align 3
L821:
	movl	$LC35, 4(%esp)
	movl	%esi, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L822
	movl	$LC36, 4(%esp)
	movl	%esi, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L822
	movl	$3, 8(%esp)
	movl	$LC37, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L824
	movl	%ebx, (%esp)
	call	_strlen
	cmpl	$5, %eax
	je	L1483
L824:
	movl	$5, 8(%esp)
	movl	$LC38, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L825
	movl	%ebx, (%esp)
	movl	%eax, -2664(%ebp)
	call	_strlen
	movl	-2664(%ebp), %edx
	cmpl	$6, %eax
	ja	L1484
L825:
	movl	$LC39, 4(%esp)
	movl	%esi, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L819
	testb	$1, _SW_GameFlags
	je	L827
	movl	$_cli_arg, %ebx
	movl	$100, %esi
L832:
	movl	12(%ebx), %edx
	movl	%esi, %eax
	testl	%edx, %edx
	je	L829
	cmpb	$0, (%ebx)
	jne	L829
	movl	%edx, (%esp)
	call	_strlen
	movl	%eax, %edi
	movl	16(%ebx), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, %edx
	leal	2(%esi,%edi), %eax
	addl	%edx, %eax
	movl	%eax, %esi
L829:
	addl	$20, %ebx
	cmpl	$_cli_arg+500, %ebx
	jne	L832
L833:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1485
	movl	$1734439765, (%eax)
	movl	$1931491941, 4(%eax)
	movl	$1868243063, 8(%eax)
	movl	$1869182064, 12(%eax)
	movl	$173896558, 16(%eax)
	movl	LC40+50, %eax
	movl	%eax, 70(%ebx)
	movl	LC40+54, %eax
	movl	%eax, 74(%ebx)
	movl	LC40+58, %eax
	movl	%eax, 78(%ebx)
	movl	LC40+62, %eax
	movl	%eax, 82(%ebx)
	xorl	%eax, %eax
L837:
	movl	LC40(%eax), %edi
	movl	LC40+4(%eax), %esi
	movl	LC40+8(%eax), %ecx
	movl	LC40+12(%eax), %edx
	movl	%edi, 20(%ebx,%eax)
	movl	%esi, 24(%ebx,%eax)
	movl	%ecx, 28(%ebx,%eax)
	movl	%edx, 32(%ebx,%eax)
	addl	$16, %eax
	cmpl	$64, %eax
	jb	L837
	movl	$_cli_arg, %esi
	movl	$_cli_arg+500, %edi
L841:
	movl	12(%esi), %eax
	testl	%eax, %eax
	je	L839
	testb	$1, _SW_GameFlags
	je	L840
	cmpb	$0, (%esi)
	jne	L839
L840:
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcat
	movl	%ebx, (%esp)
	call	_strlen
	movl	$9, %ecx
	movw	%cx, (%ebx,%eax)
	movl	16(%esi), %edx
	leal	1(%ebx,%eax), %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_strcpy
	movl	%ebx, (%esp)
	call	_strlen
	movl	$10, %edx
	movw	%dx, (%ebx,%eax)
L839:
	addl	$20, %esi
	cmpl	%esi, %edi
	jne	L841
	movl	%ebx, 8(%esp)
	movl	$LC4, 4(%esp)
	movl	$LC41, (%esp)
	call	_wm_msgbox
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1266:
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
L822:
	.cfi_restore_state
	movl	$1, __ZL8g_noLogo.lto_priv.0
	jmp	L819
L850:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L857:
	leal	-1048(%ebp), %eax
	movl	$32, 8(%esp)
	movl	$LC54, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp___fsopen
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1486
	movl	$__ZN6loguru10file_flushEPv, 8(%esp)
	movl	%eax, %ecx
	movl	$__ZN6loguru8file_logEPvRKNS_7MessageE, %edx
	movl	$LC43, %eax
	movl	$__ZN6loguru10file_closeEPv, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru12add_callbackEPKcPFvPvRKNS_7MessageEES2_iPFvS2_ES9_
	leal	-1304(%ebp), %eax
	movl	%eax, %esi
	call	__ZN6loguruL21print_preamble_headerEPcj.part.0.constprop.0
	movl	%esi, -2648(%ebp)
	movl	%esi, 8(%esp)
	movl	%ebx, (%esp)
	movl	$LC6, 4(%esp)
	call	_fprintf
	movl	%ebx, (%esp)
	leal	-1496(%ebp), %ebx
	call	_fflush
	call	__ZNSt6chrono3_V212system_clock3nowEv
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, %esi
	movl	%edx, %edi
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___divdi3
	movl	%eax, -1496(%ebp)
	movl	%ebx, 4(%esp)
	movl	-2648(%ebp), %eax
	movl	%eax, (%esp)
	call	__localtime32_s
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L861
	movl	$1000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	___divdi3
	movl	$1000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___moddi3
	movl	%edx, 44(%esp)
	movl	%eax, 40(%esp)
	movl	-1304(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	-1300(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-1296(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-1292(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-1288(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 20(%esp)
	movl	-1284(%ebp), %eax
	movl	$LC56, 12(%esp)
	addl	$1900, %eax
	movl	$902, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC45, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
L861:
	movl	__ZN6loguru20g_internal_verbosityE, %edx
	cmpl	%eax, %edx
	jle	L1487
L860:
	movl	_osd, %edx
	testl	%edx, %edx
	je	L1488
L862:
	movl	$LC58, %eax
	call	_wm_setapptitle
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L863
	movl	$LC59, 16(%esp)
	movl	$LC60, 12(%esp)
	movl	$3629, 8(%esp)
	movl	$LC29, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L863:
	movl	$LC61, %eax
	call	__Z10buildprintIJPKcS1_S1_iS1_iS1_iS1_EEjDpT_.constprop.0.isra.0
	movl	_osd, %eax
	testl	%eax, %eax
	je	L1489
L864:
	movups	-2696(%ebp), %xmm6
	movups	-2664(%ebp), %xmm7
	movl	$__ZL14user_callbacks.lto_priv.0, 3248(%eax)
	movups	%xmm6, __ZL14user_callbacks.lto_priv.0
	movups	%xmm7, __ZL14user_callbacks.lto_priv.0+16
	cmpl	$1, -2644(%ebp)
	jg	L1490
L865:
	movl	_g_useCwd, %eax
	testl	%eax, %eax
	je	L1491
L868:
	movl	$256, 4(%esp)
	movl	-2648(%ebp), %esi
	movl	%esi, (%esp)
	call	_getcwd
	testl	%eax, %eax
	je	L869
	cmpw	$47, -1304(%ebp)
	je	L869
	xorl	%edx, %edx
	movl	%esi, %eax
	call	_addsearchpath_user
L869:
	movl	$LC65, (%esp)
	call	*__imp__GetFileAttributesA@4
	subl	$4, %esp
	cmpl	$-1, %eax
	je	L872
	movl	$LC66, (%esp)
	call	*__imp__GetModuleHandleA@4
	subl	$4, %esp
	testl	%eax, %eax
	je	L1492
	movl	$LC67, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__GetProcAddress@8
	subl	$8, %esp
	testl	%eax, %eax
	je	L872
	leal	-1048(%ebp), %ecx
	movl	$0, 12(%esp)
	movl	$26, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$0, (%esp)
	call	*%eax
	subl	$16, %esp
	testl	%eax, %eax
	js	L872
L1178:
	leal	-1048(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	leal	1(%eax), %edi
	movl	%eax, %esi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L877
	leal	-1048(%ebp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_strcpy
	movb	$0, (%ebx,%esi)
	movl	%ebx, 12(%esp)
	movl	$LC68, 8(%esp)
	movl	$256, 4(%esp)
	movl	-2648(%ebp), %edi
	movl	%edi, (%esp)
	call	*__imp___snprintf
	xorl	%edx, %edx
	movl	%edi, %eax
	call	_addsearchpath_user
	cmpl	$-2, %eax
	je	L1493
L879:
	testl	%eax, %eax
	je	L1494
L880:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L872:
	xorl	%edx, %edx
	movl	$LC69, %eax
	call	_addsearchpath_user
	movl	_g_grpNamePtr, %eax
	testl	%eax, %eax
	je	L1495
L881:
	cmpl	$1, -2644(%ebp)
	jle	L891
	movl	$1, %edi
	.p2align 4
	.p2align 3
L894:
	movl	-2680(%ebp), %eax
	movl	(%eax,%edi,4), %esi
	movzbl	(%esi), %eax
	andl	$-3, %eax
	cmpb	$45, %al
	jne	L892
	leal	1(%esi), %ebx
	movl	$1, 8(%esp)
	movl	$LC73, 4(%esp)
	movl	%ebx, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L892
	testb	$1, _SW_GameFlags
	jne	L892
	movl	%ebx, (%esp)
	call	_strlen
	cmpl	$1, %eax
	ja	L1496
	.p2align 4
	.p2align 3
L892:
	addl	$1, %edi
	cmpl	%edi, -2644(%ebp)
	jne	L894
L895:
	movl	-2644(%ebp), %edi
	movl	-2680(%ebp), %esi
	xorl	%ebx, %ebx
	jmp	L898
	.p2align 4,,10
	.p2align 3
L1498:
	addl	$1, %ebx
	cmpl	%ebx, %edi
	je	L1497
L898:
	movl	$LC75, 4(%esp)
	movl	(%esi,%ebx,4), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L1498
	movl	$0, _g_addonNum
	movl	$1, _g_noSetup
L903:
	call	__Z16CONFIG_ReadSetupv
	movl	-2644(%ebp), %ecx
	movl	%eax, -2712(%ebp)
	movl	-2680(%ebp), %eax
	movl	%eax, %esi
	leal	(%eax,%ecx,4), %ebx
	.p2align 4
	.p2align 3
L906:
	movl	$LC78, 4(%esp)
	movl	(%esi), %eax
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L905
	movl	$0, _ud_setup+8
L905:
	addl	$4, %esi
	cmpl	%ebx, %esi
	jne	L906
L904:
	call	_enginePreInit
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L907
	movl	$LC79, 12(%esp)
	movl	$259, 8(%esp)
	movl	$LC80, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L907:
	movl	$LC81, %eax
	call	_scriptfile_fromfile
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L908
	.p2align 4
	.p2align 3
L909:
	movl	12(%ebx), %eax
	movl	16(%ebx), %edx
	cmpl	%edx, %eax
	jb	L1499
L911:
	movl	%ebx, %eax
	call	_scriptfile_close
L908:
	movl	$__ZL8grpfiles+8, %eax
	xorl	%edx, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L914:
	movl	(%eax), %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	movl	24(%eax), %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	addl	$48, %eax
	cmpl	$__ZL8grpfiles+296, %eax
	jne	L914
	movl	%edx, -2700(%ebp)
	movl	$__ZZ10ScanGroupsvE10extensions, %esi
L952:
	movl	(%esi), %edx
	movl	$1, %ecx
	movl	$LC64, %eax
	call	_klistpath
	movl	$65536, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%eax, %edi
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -2696(%ebp)
	testl	%eax, %eax
	je	L915
	testl	%edi, %edi
	je	L1500
	movl	%edi, -2664(%ebp)
	movl	%edi, -2720(%ebp)
	movl	%esi, -2724(%ebp)
	.p2align 4
	.p2align 3
L916:
	movl	-2664(%ebp), %eax
	movl	__ZL8grpcache, %ebx
	movl	(%eax), %edi
	testl	%ebx, %ebx
	jne	L920
	jmp	L924
	.p2align 4,,10
	.p2align 3
L1501:
	movl	(%ebx), %ebx
	testl	%ebx, %ebx
	je	L924
L920:
	leal	4(%ebx), %esi
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L1501
	leal	-1496(%ebp), %edx
	movl	%edi, %eax
	call	_findfrompath
	testl	%eax, %eax
	jne	L922
	movl	-1496(%ebp), %edi
	leal	-1048(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	_stat32
	movl	_g_sm_heap, %ecx
	movl	%edi, (%esp)
	testl	%eax, %eax
	jne	L1469
	call	__ZN2sm9Allocator4FreeEPv
	movl	-1028(%ebp), %edx
	subl	$4, %esp
	testl	%edx, %edx
	je	L1468
	movl	264(%ebx), %eax
	cmpl	%eax, %edx
	je	L925
L1468:
	movl	-2664(%ebp), %eax
	movl	(%eax), %edi
L924:
	movl	-2648(%ebp), %edx
	movl	%edi, %eax
	movl	$0, -1304(%ebp)
	call	_findfrompath
	movl	-1304(%ebp), %ebx
	cmpl	$-1, %eax
	je	L1502
	movl	$256, 8(%esp)
	movl	$32768, 4(%esp)
	movl	%ebx, (%esp)
	call	_open
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%eax, %esi
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	testl	%esi, %esi
	js	L922
	leal	-1048(%ebp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_fstat32
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L922
	movl	-1028(%ebp), %eax
	testl	%eax, %eax
	je	L922
	cmpl	%eax, -2700(%ebp)
	jge	L935
	.p2align 4
	.p2align 3
L922:
	movl	-2664(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -2664(%ebp)
	testl	%eax, %eax
	jne	L916
	movl	-2696(%ebp), %eax
	movl	-2720(%ebp), %edi
	movl	-2724(%ebp), %esi
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	.p2align 4
	.p2align 3
L951:
	movl	%edi, %eax
	movl	12(%edi), %edi
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	testl	%edi, %edi
	jne	L951
L950:
	addl	$4, %esi
	movl	$__ZZ10ScanGroupsvE10extensions+16, %eax
	cmpl	%esi, %eax
	jne	L952
	movl	__ZL8grpcache, %ebx
	testl	%ebx, %ebx
	je	L953
L954:
	movl	%ebx, %eax
	movl	(%ebx), %ebx
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	%ebx, __ZL8grpcache
	testl	%ebx, %ebx
	jne	L954
L953:
	movl	_foundgrps, %esi
	movl	%esi, %ecx
	testl	%esi, %esi
	jne	L964
	jmp	L955
	.p2align 4
	.p2align 4,,10
	.p2align 3
L956:
	movl	8(%ecx), %ecx
L961:
	testl	%ecx, %ecx
	je	L955
L964:
	movl	4(%ecx), %eax
	testb	$1, 14(%eax)
	je	L956
	testl	%esi, %esi
	je	L955
	movl	16(%eax), %ebx
	movl	%esi, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L957:
	movl	4(%eax), %edx
	cmpl	4(%edx), %ebx
	je	L956
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	L957
	movl	%esi, %ebx
	jmp	L962
L958:
	movl	%ebx, %eax
	testl	%edx, %edx
	je	L1503
	movl	%edx, %ebx
L962:
	movl	8(%ebx), %edx
	cmpl	%ecx, %ebx
	jne	L958
	cmpl	%esi, %ebx
	je	L1504
	movl	%edx, 8(%eax)
L960:
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	_foundgrps, %esi
	subl	$4, %esp
	movl	%esi, %ecx
	jmp	L961
	.p2align 4,,10
	.p2align 3
L1505:
	movl	%eax, %edx
	movl	-2696(%ebp), %eax
	movl	%ebx, %ecx
	call	_Bcrc32
	movl	%eax, %ebx
	cmpl	$65536, %edi
	jne	L934
L935:
	movl	$65536, 8(%esp)
	movl	-2696(%ebp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_read
	movl	%eax, %edi
	testl	%eax, %eax
	jg	L1505
L934:
	movl	%esi, (%esp)
	call	_close
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L936
	movl	%ebx, 20(%esp)
	movl	-2664(%ebp), %eax
	movl	(%eax), %eax
	movl	$LC84, 12(%esp)
	movl	$229, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC80, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L936:
	movl	-1028(%ebp), %eax
	movl	$__ZL8grpfiles, %edi
	jmp	L939
	.p2align 5
	.p2align 4,,10
	.p2align 3
L937:
	addl	$24, %edi
	movl	$__ZL8grpfiles+288, %ecx
	cmpl	%edi, %ecx
	je	L940
L939:
	cmpl	%ebx, 4(%edi)
	jne	L937
	cmpl	8(%edi), %eax
	jne	L937
	movl	$12, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1183
	movl	-2664(%ebp), %eax
	movl	$0, (%esi)
	movl	$0, 4(%esi)
	movl	$0, 8(%esi)
	movl	(%eax), %eax
	movl	%eax, -2704(%ebp)
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, -2708(%ebp)
	addl	$1, %eax
	movl	%eax, -2716(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edx
	testl	%eax, %eax
	je	L941
	movl	-2704(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	movl	%edx, -2704(%ebp)
	call	_strcpy
	movl	-2708(%ebp), %eax
	movl	-2704(%ebp), %edx
	movb	$0, (%edx,%eax)
	movl	%edx, (%esi)
	movl	_foundgrps, %eax
	movl	%edi, 4(%esi)
	movl	%eax, 8(%esi)
	movl	%esi, _foundgrps
L940:
	movl	$276, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L912
	movl	$276, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	-2664(%ebp), %eax
	movl	(%eax), %edi
	movl	%edi, (%esp)
	call	_strlen
	movl	$255, %edx
	addl	$1, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	cmpl	$16, %eax
	jnb	L942
	testb	$8, %al
	jne	L1506
	testb	$4, %al
	jne	L1507
	testl	%eax, %eax
	jne	L1508
L943:
	movb	$0, 259(%esi)
	movss	-1028(%ebp), %xmm0
	movss	-1020(%ebp), %xmm6
	movl	__ZL12usedgrpcache, %eax
	movl	%ebx, 272(%esi)
	movl	%esi, __ZL12usedgrpcache
	unpcklps	%xmm6, %xmm0
	movl	%eax, (%esi)
	movlps	%xmm0, 264(%esi)
	jmp	L922
	.p2align 4,,10
	.p2align 3
L1499:
	cmpb	$0, (%eax)
	jne	L913
	addl	$1, %eax
	movl	%eax, 12(%ebx)
	cmpl	%edx, %eax
	jnb	L911
L913:
	movl	%ebx, %eax
	call	_scriptfile_gettoken
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1509
	leal	-1880(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L911
	leal	-1688(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L911
	movl	-2648(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L911
	movl	$276, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L912
	movl	$276, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	__ZL8grpcache, %eax
	movl	%esi, __ZL8grpcache
	movl	%eax, (%esi)
	leal	4(%esi), %eax
	movl	$256, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_strncpy
	movss	-1880(%ebp), %xmm0
	movss	-1688(%ebp), %xmm3
	unpcklps	%xmm3, %xmm0
	movlps	%xmm0, 264(%esi)
	movl	-1304(%ebp), %eax
	movl	%eax, 272(%esi)
	jmp	L909
L1502:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	.p2align 4
	.p2align 3
L1469:
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L922
L925:
	movl	-1020(%ebp), %ecx
	cmpl	%ecx, 268(%ebx)
	jne	L1468
	movl	272(%ebx), %ecx
	movl	$__ZL8grpfiles+288, %edi
	movl	$__ZL8grpfiles, %edx
	jmp	L929
L927:
	addl	$24, %edx
	cmpl	%edx, %edi
	je	L930
L929:
	cmpl	4(%edx), %ecx
	jne	L927
	cmpl	8(%edx), %eax
	jne	L927
	movl	%edx, -2704(%ebp)
	movl	$12, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	movl	-2704(%ebp), %edx
	subl	$4, %esp
	testl	%eax, %eax
	movl	%eax, %edi
	je	L1183
	movl	-2664(%ebp), %eax
	movl	$0, (%edi)
	movl	$0, 4(%edi)
	movl	$0, 8(%edi)
	movl	(%eax), %eax
	movl	%edx, -2728(%ebp)
	movl	%eax, -2704(%ebp)
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, -2716(%ebp)
	addl	$1, %eax
	movl	%eax, -2708(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	movl	-2728(%ebp), %edx
	subl	$4, %esp
	testl	%eax, %eax
	movl	%eax, %ecx
	je	L1510
	movl	-2704(%ebp), %eax
	movl	%edx, -2708(%ebp)
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, -2704(%ebp)
	call	_strcpy
	movl	-2716(%ebp), %eax
	movl	-2704(%ebp), %ecx
	movl	-2708(%ebp), %edx
	movb	$0, (%ecx,%eax)
	movl	%ecx, (%edi)
	movl	_foundgrps, %eax
	movl	%edx, 4(%edi)
	movl	%eax, 8(%edi)
	movl	%edi, _foundgrps
L930:
	movl	$276, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edi
	testl	%eax, %eax
	je	L912
	movl	$276, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	leal	4(%edi), %eax
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	264(%ebx), %eax
	movl	%eax, 264(%edi)
	movl	268(%ebx), %eax
	movl	%eax, 268(%edi)
	movl	272(%ebx), %eax
	movl	%eax, 272(%edi)
	movl	__ZL12usedgrpcache, %eax
	movl	%edi, __ZL12usedgrpcache
	movl	%eax, (%edi)
	jmp	L922
L818:
	je	L844
L847:
	xorl	%eax, %eax
	jmp	L845
L912:
	movl	$276, %eax
	call	__Z13handle_memerri
L1496:
	addl	$2, %esi
	xorl	%edx, %edx
	movl	%esi, %eax
	call	_addsearchpath_user
	testl	%eax, %eax
	je	L892
	movl	__ZN6loguru18g_stderr_verbosityE, %ecx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %ecx
	cmovge	%ecx, %edx
	cmpl	$-2, %edx
	jl	L892
	cmpl	$-1, %eax
	movl	$LC30, %edx
	movl	$LC31, %eax
	movl	%esi, 16(%esp)
	cmove	%edx, %eax
	movl	$LC74, 12(%esp)
	movl	$3665, 8(%esp)
	movl	%eax, 20(%esp)
	movl	$LC29, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L892
L1497:
	movl	-2644(%ebp), %edi
	movl	-2680(%ebp), %esi
	xorl	%ebx, %ebx
	jmp	L900
	.p2align 4,,10
	.p2align 3
L1512:
	addl	$1, %ebx
	cmpl	%ebx, %edi
	je	L1511
L900:
	movl	$LC76, 4(%esp)
	movl	(%esi,%ebx,4), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L1512
	movl	$1, _g_addonNum
	movl	$1, _g_noSetup
	movl	$1953390967, _MODNAME
	movl	$1679847023, _MODNAME+4
	movl	$1920234341, _MODNAME+8
	movl	$7627637, _MODNAME+12
	jmp	L903
L942:
	movl	-16(%edi,%eax), %edx
	movl	%edx, -12(%esi,%eax)
	movl	-12(%edi,%eax), %edx
	movl	%edx, -8(%esi,%eax)
	movl	-8(%edi,%eax), %edx
	movl	%edx, -4(%esi,%eax)
	movl	-4(%edi,%eax), %edx
	movl	%edx, (%esi,%eax)
	subl	$1, %eax
	cmpl	$16, %eax
	jb	L943
	movl	%ebx, -2716(%ebp)
	andl	$-16, %eax
	movl	%eax, -2704(%ebp)
	xorl	%eax, %eax
L947:
	movl	12(%edi,%eax), %edx
	movl	8(%edi,%eax), %ecx
	movl	4(%edi,%eax), %ebx
	movl	%edx, -2708(%ebp)
	movl	(%edi,%eax), %edx
	movl	%ebx, 8(%esi,%eax)
	movl	%edx, 4(%esi,%eax)
	movl	%ecx, 12(%esi,%eax)
	movl	-2708(%ebp), %ecx
	movl	%ecx, 16(%esi,%eax)
	addl	$16, %eax
	cmpl	-2704(%ebp), %eax
	jb	L947
	movl	-2716(%ebp), %ebx
	jmp	L943
L1490:
	movl	__imp___snprintf, %ebx
	leal	-1048(%ebp), %eax
	movl	$LC62, 8(%esp)
	movl	$1024, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	movl	-2680(%ebp), %edi
	movl	%ebx, -2664(%ebp)
	movl	$1, %ebx
	movl	%eax, %esi
	.p2align 4
	.p2align 3
L866:
	movl	(%edi,%ebx,4), %eax
	movl	$LC63, 8(%esp)
	addl	$1, %ebx
	movl	%eax, 12(%esp)
	movl	$1024, %eax
	subl	%esi, %eax
	movl	%eax, 4(%esp)
	leal	-1048(%ebp,%esi), %eax
	movl	%eax, (%esp)
	call	*-2664(%ebp)
	addl	%eax, %esi
	cmpl	%ebx, -2644(%ebp)
	jne	L866
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L865
	leal	-1048(%ebp), %eax
	movl	$LC4, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3646, 8(%esp)
	movl	$LC29, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	_g_useCwd, %eax
	testl	%eax, %eax
	jne	L868
L1491:
	call	__ZL17SW_AddSearchPathsv.lto_priv.0
	jmp	L868
L1486:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	leal	-1304(%ebp), %ecx
	movl	%ecx, -2648(%ebp)
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L860
	leal	-1048(%ebp), %eax
	movl	$LC55, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$863, 8(%esp)
	movl	$LC45, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L860
L1508:
	movzbl	(%edi), %edx
	movb	%dl, 4(%esi)
	testb	$2, %al
	je	L943
	movzwl	-2(%edi,%eax), %edx
	movw	%dx, 2(%esi,%eax)
	jmp	L943
L1483:
	movzbl	4(%ebx), %eax
	leal	-48(%eax), %ecx
	cmpb	$1, %cl
	ja	L825
	subl	$48, %eax
	movl	%eax, _AutoAimCommandLineOverride
	jmp	L819
L1484:
	movzbl	6(%ebx), %eax
	testb	%al, %al
	je	L819
	leal	6(%ebx), %ecx
L826:
	leal	-48(%eax), %ebx
	cmpb	$9, %bl
	ja	L819
	leal	(%edx,%edx,4), %esi
	leal	-48(%eax,%esi,2), %edx
	cmpl	$100, %edx
	jg	L819
	movzbl	1(%ecx), %eax
	addl	$1, %ecx
	testb	%al, %al
	jne	L826
	testl	%edx, %edx
	jle	L819
	movl	%edx, _FlagCaptureLimit
	jmp	L819
L1487:
	leal	-1048(%ebp), %eax
	movl	%edx, (%esp)
	movl	$0, 24(%esp)
	movl	$LC54, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC57, 12(%esp)
	movl	$906, 8(%esp)
	movl	$LC45, 4(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	_osd, %edx
	testl	%edx, %edx
	jne	L862
L1488:
	call	__Z8OSD_Initv
	jmp	L862
L1489:
	call	__Z8OSD_Initv
	movl	_osd, %eax
	testl	%eax, %eax
	jne	L864
	call	__Z8OSD_Initv
	movl	_osd, %eax
	jmp	L864
L955:
	movl	__ZL12usedgrpcache, %eax
	testl	%eax, %eax
	je	L965
	movl	$LC85, 4(%esp)
	movl	$LC81, (%esp)
	call	_fopen
	movl	_foundgrps, %esi
	movl	%eax, %edi
	testl	%eax, %eax
	je	L965
	movl	__ZL12usedgrpcache, %esi
	testl	%esi, %esi
	je	L966
L967:
	movl	%esi, %ebx
	movl	(%esi), %esi
	movl	272(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	268(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	264(%ebx), %eax
	movl	$LC86, 4(%esp)
	movl	%eax, 12(%esp)
	leal	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edi, (%esp)
	call	_fprintf
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	testl	%esi, %esi
	jne	L967
L966:
	movl	%edi, (%esp)
	call	_fclose
	movl	_foundgrps, %esi
L965:
	movl	_g_grpNamePtr, %edi
	movl	$LC32, %eax
	movl	%esi, %ebx
	testl	%edi, %edi
	cmove	%eax, %edi
	testl	%esi, %esi
	jne	L969
	jmp	L971
	.p2align 4,,10
	.p2align 3
L1513:
	movl	8(%ebx), %ebx
	testl	%ebx, %ebx
	je	L971
L969:
	movl	%edi, 4(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L1513
L970:
	movl	%ebx, _g_selectedGrp
	cmpl	$-1, -2712(%ebp)
	je	L972
	cmpb	$0, _CommandSetup
	je	L1514
L972:
	cmpb	$0, _quitevent
	jne	L974
	movl	__ZL10startupdlg.lto_priv.0, %edi
	testl	%edi, %edi
	je	L973
	movl	$-1, __ZL4done.lto_priv.0
	xorl	%eax, %eax
	call	__ZL7SetPagei.lto_priv.0
	movl	$1, %eax
	call	__ZL12EnableConfigb.lto_priv.0
	xorl	%eax, %eax
	cmpl	$4, _glrendmode
	sete	%al
	movl	%eax, __ZL8settings.lto_priv.0+36
	movl	_ud_setup, %eax
	movl	%eax, __ZL8settings.lto_priv.0+4
	movl	_ud_setup+4, %eax
	movl	%eax, __ZL8settings.lto_priv.0+8
	movl	_ud_setup+8, %eax
	movl	%eax, __ZL8settings.lto_priv.0+12
	movl	_ud_setup+12, %eax
	movl	%eax, __ZL8settings.lto_priv.0+16
	movl	_ud_setup+16, %eax
	movl	%eax, __ZL8settings.lto_priv.0+20
	movl	_ud_setup+20, %eax
	movl	%eax, __ZL8settings.lto_priv.0+24
	movl	_ud_setup+24, %eax
	movl	%eax, __ZL8settings.lto_priv.0+28
	movl	_ud_setup+28, %eax
	movl	%eax, __ZL8settings.lto_priv.0+32
	movl	_g_selectedGrp, %eax
	movl	%eax, __ZL8settings.lto_priv.0
	movl	$-1, %eax
	call	__ZL12PopulateFormi.lto_priv.0
	movl	__imp__GetMessageA@16, %ebx
L980:
	leal	-1048(%ebp), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	subl	$16, %esp
	cmpl	$-1, %eax
	je	L973
	testl	%eax, %eax
	jne	L976
	movl	$1, __ZL4done.lto_priv.0
L977:
	movl	$1, %eax
	call	__ZL7SetPagei.lto_priv.0
	xorl	%eax, %eax
	call	__ZL12EnableConfigb.lto_priv.0
	movl	__ZL4done.lto_priv.0, %esi
	testl	%esi, %esi
	je	L974
	movl	__ZL8settings.lto_priv.0+4, %eax
	cmpl	$1, __ZL8settings.lto_priv.0+36
	movl	%eax, _ud_setup
	movl	__ZL8settings.lto_priv.0+8, %eax
	movl	%eax, _ud_setup+4
	movl	__ZL8settings.lto_priv.0+12, %eax
	movl	%eax, _ud_setup+8
	movl	__ZL8settings.lto_priv.0+16, %eax
	movl	%eax, _ud_setup+12
	movl	__ZL8settings.lto_priv.0+20, %eax
	movl	%eax, _ud_setup+16
	movl	__ZL8settings.lto_priv.0+24, %eax
	movl	%eax, _ud_setup+20
	movl	__ZL8settings.lto_priv.0+28, %eax
	movl	%eax, _ud_setup+24
	movl	__ZL8settings.lto_priv.0+32, %eax
	movl	%eax, _ud_setup+28
	movl	$3, %eax
	sbbl	$-1, %eax
	movl	%eax, _glrendmode
	movl	__ZL8settings.lto_priv.0, %eax
	movl	%eax, _g_selectedGrp
L973:
	movl	_g_addonNum, %edx
	cmpl	$2, %edx
	jbe	L984
L986:
	movl	_g_selectedGrp, %eax
L985:
	call	__ZL25SW_LoadGrpDependencyChainPK7grpfile.lto_priv.0
	cmpl	$-1, %eax
	movl	_g_grpNamePtr, %eax
	je	L989
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	_g_selectedGrp, %eax
	subl	$4, %esp
	movl	(%eax), %esi
	movl	$256, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L882
	movl	%esi, (%esp)
	call	_strlen
	movl	$255, %edx
	addl	$1, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	cmpl	$16, %eax
	jnb	L990
	testb	$8, %al
	jne	L1515
	testb	$4, %al
	jne	L1516
	testl	%eax, %eax
	je	L991
	movzbl	(%esi), %edx
	movb	%dl, (%ebx)
	testb	$2, %al
	jne	L1517
L991:
	movb	$0, 255(%ebx)
	movl	%ebx, _g_grpNamePtr
L997:
	movl	_g_useCwd, %ebx
	testl	%ebx, %ebx
	je	L1518
L999:
	movl	$1, %edx
	movl	$LC87, %eax
	call	_kopen4load.part.0
	cmpl	$-1, %eax
	je	L1005
	orb	$1, _SW_GameFlags
	call	_kclose
L1006:
	movzbl	_SW_GameFlags, %eax
	movl	%eax, %edx
	andl	$1, %edx
	jne	L1007
	movl	-2644(%ebp), %ecx
	movl	-2680(%ebp), %esi
	xorl	%ebx, %ebx
	testl	%ecx, %ecx
	jg	L1008
	jmp	L1519
	.p2align 4,,10
	.p2align 3
L1011:
	addl	$1, %ebx
	cmpl	%ebx, -2644(%ebp)
	je	L1520
L1008:
	movl	$LC90, 4(%esp)
	movl	(%esi,%ebx,4), %eax
	movl	%eax, (%esp)
	call	_stricmp
	testl	%eax, %eax
	jne	L1011
	movzbl	_SW_GameFlags, %eax
	movl	$1, %ecx
	movl	$1, %ebx
	movl	%eax, %edx
	andl	$1, %edx
L1009:
	movl	%ebx, _GLOBALHIDE
	movb	%cl, _DisableSound
	testb	$2, %al
	je	L1012
	movl	$__ZL12LevelNamesWD, %eax
L1013:
	movzbl	(%eax), %ecx
	movl	4(%eax), %ebx
	addl	$8, %eax
	leal	(%ecx,%ecx,4), %ecx
	movl	%ebx, _LevelInfo+8(,%ecx,4)
	cmpl	$__ZL12LevelNamesWD+128, %eax
	jne	L1013
	movl	$1851873118, _EpisodeNames+26
	movl	$41, %eax
	movl	$544108404, _EpisodeNames+30
	movl	$1953719620, _EpisodeNames+34
	movl	$1952675186, _EpisodeNames+38
	movl	$7237481, _EpisodeNames+42
	movl	$1818589012, _EpisodeSubtitles+41
	movl	$1814062454, _EpisodeSubtitles+45
	movl	$1818588773, _EpisodeSubtitles+49
	movl	$1177034867, _EpisodeSubtitles+53
	movl	$543976565, _EpisodeSubtitles+57
	movl	$1936876886, _EpisodeSubtitles+61
	movl	$544108393, _EpisodeSubtitles+65
	movl	$2037149263, _EpisodeSubtitles+69
	movw	%ax, _EpisodeSubtitles+73
L1010:
	movl	%edx, %ecx
	movl	$_Player+22988, %eax
	andl	$1, %ecx
	cmpb	$1, %cl
	sbbl	%ecx, %ecx
	andl	$96496, %ecx
	addl	$_Player+119484, %ecx
L1016:
	movl	%eax, (%eax)
	movl	%eax, 4(%eax)
	addl	$24124, %eax
	cmpl	%eax, %ecx
	jne	L1016
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	movb	$1, _DebugOperate
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	testb	%dl, %dl
	je	L1017
	testl	%eax, %eax
	jns	L1521
L1018:
	movl	-2644(%ebp), %eax
	movb	$0, _UserMapName
	cmpl	$1, %eax
	jle	L1020
	subl	$1, %eax
	movb	$0, -2704(%ebp)
	movl	$1, %ebx
	movl	%eax, -2696(%ebp)
	jmp	L1168
	.p2align 4,,10
	.p2align 3
L1524:
	cmpl	%ebx, -2696(%ebp)
	jg	L1522
L1025:
	addl	$1, %ebx
	cmpl	%ebx, -2644(%ebp)
	jle	L1020
L1168:
	leal	0(,%ebx,4), %eax
	movl	%eax, -2664(%ebp)
	movl	-2680(%ebp), %eax
	movl	(%eax,%ebx,4), %edi
	movzbl	(%edi), %eax
	andl	$-3, %eax
	cmpb	$45, %al
	je	L1021
	movl	_dragDemo+4, %eax
	testl	%eax, %eax
	je	L1025
L1021:
	movzbl	__ZL10con_argnum, %eax
	cmpb	$99, %al
	jbe	L1523
L1023:
	leal	1(%edi), %esi
	movl	$7, 8(%esp)
	movl	$LC94, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	je	L1524
	movl	$17, 8(%esp)
	movl	$LC96, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1026
	movb	$1, _VoidJumpBugCompat
	jmp	L1025
L1495:
	movl	$LC70, (%esp)
	call	_getenv
	movl	%eax, %esi
	testl	%eax, %eax
	je	L881
	movl	_g_grpNamePtr, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$256, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L882
	movl	%esi, (%esp)
	call	_strlen
	movl	$255, %edx
	addl	$1, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	cmpl	$16, %eax
	jnb	L883
	testb	$8, %al
	jne	L1525
	testb	$4, %al
	jne	L1526
	testl	%eax, %eax
	je	L884
	movzbl	(%esi), %edx
	movb	%dl, (%ebx)
	testb	$2, %al
	jne	L1527
L884:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movb	$0, 255(%ebx)
	movl	%ebx, _g_grpNamePtr
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L881
	movl	%ebx, 16(%esp)
	movl	$LC71, 12(%esp)
	movl	$445, 8(%esp)
	movl	$LC72, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L881
L1511:
	movl	-2644(%ebp), %esi
	movl	-2680(%ebp), %edi
	xorl	%ebx, %ebx
	jmp	L902
L1528:
	addl	$1, %ebx
	cmpl	%ebx, %esi
	je	L903
L902:
	movl	$LC77, 4(%esp)
	movl	(%edi,%ebx,4), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L1528
	movl	$2, _g_addonNum
	movl	$1, _g_noSetup
	movl	$1852405620, _MODNAME
	movl	$1634886688, _MODNAME+4
	movl	$7237479, _MODNAME+8
	jmp	L903
L1492:
	movl	$LC66, (%esp)
	call	*__imp__LoadLibraryA@4
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L872
	movl	$LC67, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__GetProcAddress@8
	subl	$8, %esp
	testl	%eax, %eax
	je	L875
	leal	-1048(%ebp), %ecx
	movl	$0, 12(%esp)
	movl	$26, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$0, (%esp)
	call	*%eax
	subl	$16, %esp
	testl	%eax, %eax
	js	L875
	movl	%ebx, (%esp)
	call	*__imp__FreeLibrary@4
	subl	$4, %esp
	jmp	L1178
L848:
	movl	$LC44, 16(%esp)
	movl	$810, 12(%esp)
	movl	$LC45, 8(%esp)
	movl	$LC46, 4(%esp)
	movl	$1, (%esp)
	call	__ZN6loguru13log_and_abortEiPKcS1_jS1_z
L891:
	je	L895
	call	__Z16CONFIG_ReadSetupv
	movl	%eax, -2712(%ebp)
	jmp	L904
	.p2align 4,,10
	.p2align 3
L875:
	movl	%ebx, (%esp)
	call	*__imp__FreeLibrary@4
	subl	$4, %esp
	jmp	L872
L974:
	call	_engineUnInit
	movl	_foundgrps, %ebx
	testl	%ebx, %ebx
	je	L1477
L983:
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
	jne	L983
L1477:
	movl	$0, (%esp)
	call	_exit
L971:
	movl	%esi, %ebx
	jmp	L970
L1482:
	movl	%ebx, 16(%esp)
	movl	$LC47, 12(%esp)
	movl	$822, 8(%esp)
	movl	$LC45, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-2, %eax
	jl	L852
	call	*__imp___errno
	cmpl	$13, (%eax)
	je	L1529
L853:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-2, %eax
	jl	L852
	call	*__imp___errno
	cmpl	$38, (%eax)
	je	L1530
L854:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-2, %eax
	jl	L852
	call	*__imp___errno
	cmpl	$2, (%eax)
	je	L1531
L855:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-2, %eax
	jl	L852
	call	*__imp___errno
	cmpl	$20, (%eax)
	je	L1532
L856:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-2, %eax
	jl	L852
	call	*__imp___errno
	cmpl	$114, (%eax)
	jne	L852
	movl	$LC52, 12(%esp)
	movl	$827, 8(%esp)
	movl	$LC45, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L852
L1494:
	movl	-2648(%ebp), %eax
	movl	%eax, (%esp)
	call	_chdir
	jmp	L880
L1183:
	movl	$12, %eax
	call	__Z13handle_memerri
L941:
	movl	-2716(%ebp), %eax
	call	__Z13handle_memerri
L915:
	movl	$65536, %eax
	call	__Z13handle_memerri
L883:
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
	jb	L884
	andl	$-16, %eax
	movl	%eax, -2664(%ebp)
	xorl	%eax, %eax
L888:
	movl	12(%esi,%eax), %edx
	movl	8(%esi,%eax), %ecx
	movl	4(%esi,%eax), %edi
	movl	%edx, -2696(%ebp)
	movl	(%esi,%eax), %edx
	movl	%edi, 4(%ebx,%eax)
	movl	%edx, (%ebx,%eax)
	movl	%ecx, 8(%ebx,%eax)
	movl	-2696(%ebp), %ecx
	movl	%ecx, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	-2664(%ebp), %eax
	jb	L888
	jmp	L884
L1514:
	movl	_ud_setup+24, %eax
	testl	%eax, %eax
	je	L973
	movl	_g_noSetup, %eax
	testl	%eax, %eax
	jne	L973
	jmp	L972
L984:
	movl	_foundgrps, %eax
	testl	%eax, %eax
	je	L986
	movl	_CSWTCH.65(,%edx,4), %edx
	jmp	L988
L1533:
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L986
L988:
	movl	4(%eax), %ecx
	cmpl	4(%ecx), %edx
	jne	L1533
	movl	%eax, _g_selectedGrp
	jmp	L985
	.p2align 4,,10
	.p2align 3
L1523:
	sall	$8, %eax
	movl	%edi, 4(%esp)
	leal	__ZL9user_args(%eax), %esi
	movl	%esi, (%esp)
	call	_strcpy
	movl	%esi, (%esp)
	call	_strlwr
	addb	$1, __ZL10con_argnum
	jmp	L1023
L1026:
	movl	$10, 8(%esp)
	movl	$LC97, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	je	L1196
	movl	$9, 8(%esp)
	movl	$LC98, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1027
	cmpl	%ebx, -2696(%ebp)
	jle	L1025
	movl	$_turn_scale, 8(%esp)
	addl	$1, %ebx
L1476:
	movl	$LC99, 4(%esp)
	movl	-2680(%ebp), %eax
	movl	-2664(%ebp), %ecx
	movl	4(%eax,%ecx), %eax
	movl	%eax, (%esp)
	call	_sscanf
	jmp	L1025
L1522:
	movb	$1, _AutoNet
	addl	$1, %ebx
	movl	$_Auto+36, 44(%esp)
	movl	$_Auto+32, 40(%esp)
	movl	$_Auto+28, 36(%esp)
	movl	$_Auto+24, 32(%esp)
	movl	$_Auto+20, 28(%esp)
	movl	$_Auto+16, 24(%esp)
	movl	$_Auto+12, 20(%esp)
	movl	$_Auto+8, 16(%esp)
	movl	$_Auto+4, 12(%esp)
	movl	$_Auto, 8(%esp)
	movl	$LC95, 4(%esp)
	movl	-2680(%ebp), %eax
	movl	-2664(%ebp), %ecx
	movl	4(%eax,%ecx), %eax
	movl	%eax, (%esp)
	call	_sscanf
	jmp	L1025
L1196:
	movb	$1, -2704(%ebp)
	jmp	L1025
L1027:
	movl	$9, 8(%esp)
	movl	$LC100, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1028
	cmpl	%ebx, -2696(%ebp)
	jle	L1025
	movl	$_move_scale, 8(%esp)
	addl	$1, %ebx
	jmp	L1476
L1028:
	movl	$9, 8(%esp)
	movl	$LC101, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1029
	movl	_move_scale, %eax
	leal	(%eax,%eax,4), %eax
	movl	%eax, _move_scale
	movl	_turn_scale, %eax
	leal	(%eax,%eax,4), %eax
	movl	%eax, _turn_scale
	jmp	L1025
L1534:
	leal	1(%ebx), %eax
	movl	%eax, __ZL8firstnet.lto_priv.0
L1020:
	movl	-2680(%ebp), %edx
	movl	-2644(%ebp), %eax
	call	__Z8InitGameiPKPKc
	cmpb	$0, _QuitFlag
	jne	L1266
	call	__Z7ControliPKPKc.part.0
	jmp	L1266
L1029:
	movl	$9, 8(%esp)
	movl	$LC102, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1030
	addl	$1, %ebx
	jmp	L1025
L1493:
	movl	-2648(%ebp), %eax
	movl	%eax, (%esp)
	call	_mkdir
	testl	%eax, %eax
	jne	L880
	movl	-2648(%ebp), %eax
	xorl	%edx, %edx
	call	_addsearchpath_user
	jmp	L879
L1506:
	movl	(%edi), %edx
	movl	4(%edi), %ecx
	movl	%edx, 4(%esi)
	movl	%ecx, 8(%esi)
	movl	-8(%edi,%eax), %edx
	movl	-4(%edi,%eax), %ecx
	movl	%edx, -4(%esi,%eax)
	movl	%ecx, (%esi,%eax)
	jmp	L943
L976:
	movl	__ZL10startupdlg.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*__imp__IsWindow@4
	subl	$4, %esp
	testl	%eax, %eax
	je	L978
	leal	-1048(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	__ZL10startupdlg.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*__imp__IsDialogMessageA@8
	subl	$8, %esp
	testl	%eax, %eax
	jne	L1470
L978:
	leal	-1048(%ebp), %eax
	movl	%eax, (%esp)
	call	*__imp__TranslateMessage@4
	leal	-1048(%ebp), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	call	*__imp__DispatchMessageA@4
	subl	$4, %esp
L1470:
	movl	__ZL4done.lto_priv.0, %eax
	testl	%eax, %eax
	js	L980
	jmp	L977
	.p2align 4,,10
	.p2align 3
L1005:
	movl	$1, %edx
	movl	$LC88, %eax
	call	_kopen4load.part.0
	cmpl	$-1, %eax
	je	L1006
	andb	$-2, _SW_GameFlags
	call	_kclose
	jmp	L1006
L1017:
	testl	%eax, %eax
	js	L1018
	movl	$LC92, 12(%esp)
	movl	$3812, 8(%esp)
	movl	$LC29, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L1019:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L1018
	movl	$LC93, 12(%esp)
	movl	$3814, 8(%esp)
	movl	$LC29, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1018
L1507:
	movl	(%edi), %edx
	movl	%edx, 4(%esi)
	movl	-4(%edi,%eax), %edx
	movl	%edx, (%esi,%eax)
	jmp	L943
L989:
	testl	%eax, %eax
	movl	$LC32, %edx
	cmove	%edx, %eax
	xorl	%edx, %edx
	call	__ZL16SW_TryLoadingGrpPKcPK15internalgrpfile.lto_priv.0
	jmp	L997
L990:
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
	jb	L991
	andl	$-16, %eax
	movl	%eax, -2664(%ebp)
	xorl	%eax, %eax
L995:
	movl	12(%esi,%eax), %edx
	movl	8(%esi,%eax), %ecx
	movl	4(%esi,%eax), %edi
	movl	%edx, -2696(%ebp)
	movl	(%esi,%eax), %edx
	movl	%edi, 4(%ebx,%eax)
	movl	%edx, (%ebx,%eax)
	movl	%ecx, 8(%ebx,%eax)
	movl	-2696(%ebp), %ecx
	movl	%ecx, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	-2664(%ebp), %eax
	jb	L995
	jmp	L991
L882:
	movl	$256, %eax
	call	__Z13handle_memerri
L1520:
	movzbl	_SW_GameFlags, %eax
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
	movl	%eax, %edx
	andl	$1, %edx
	jmp	L1009
L1030:
	movl	$3, 8(%esp)
	movl	$LC103, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	je	L1534
	movl	$5, 8(%esp)
	movl	$LC104, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1032
	movb	$1, _ShortGameMode
	jmp	L1025
L1518:
	movl	__ZL14searchpathhead.lto_priv.0, %ebx
L1471:
	testl	%ebx, %ebx
	je	L999
L1535:
	movl	%ebx, %esi
	movl	(%ebx), %ebx
	testb	$1, 12(%esi)
	je	L1471
	movl	__ZL14searchpathhead.lto_priv.0, %eax
	cmpl	%eax, %esi
	jne	L1001
	movl	%ebx, __ZL14searchpathhead.lto_priv.0
L1002:
	movl	4(%esi), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	testl	%ebx, %ebx
	jne	L1535
	jmp	L999
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1194:
	movl	%edx, %eax
L1001:
	testl	%eax, %eax
	je	L1002
	movl	(%eax), %edx
	cmpl	%edx, %esi
	jne	L1194
	movl	%ebx, (%eax)
	jmp	L1002
L1007:
	movl	$LC89, %eax
	call	_wm_setapptitle
	movl	$500, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_LevelInfo+100, (%esp)
	call	_memset
	movzbl	_SW_GameFlags, %edx
	addl	$1, _GameVersion
	andl	$1, %edx
	jmp	L1010
L1032:
	movl	$6, 8(%esp)
	movl	$LC105, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1033
	movb	$1, _NoDemoStartup
	jmp	L1025
L1530:
	movl	$LC49, 12(%esp)
	movl	$824, 8(%esp)
	movl	$LC45, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L854
L1521:
	movl	$LC91, 12(%esp)
	movl	$3810, 8(%esp)
	movl	$LC29, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1019
L1500:
	movl	-2696(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L950
L877:
	movl	%edi, %eax
	call	__Z13handle_memerri
L1509:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L911
	movl	12(%ebx), %edx
	movl	%ebx, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%ebx), %eax
	movl	$LC82, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$47, 8(%esp)
	movl	$LC83, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L911
L1012:
	testb	$4, %al
	je	L1010
	movl	$__ZL12LevelNamesTD, %eax
	movl	$__ZL12LevelNamesTD+128, %ebx
L1015:
	movzbl	(%eax), %ecx
	movl	4(%eax), %esi
	addl	$8, %eax
	leal	(%ecx,%ecx,4), %ecx
	movl	%esi, _LevelInfo+8(,%ecx,4)
	cmpl	%eax, %ebx
	jne	L1015
	movl	$1769428062, _EpisodeNames+26
	movl	$1917067374, _EpisodeNames+30
	movl	$1852794721, _EpisodeNames+34
	movb	$0, _EpisodeNames+38
	movl	$1919510612, _EpisodeSubtitles+41
	movl	$1852138868, _EpisodeSubtitles+45
	movl	$1986358304, _EpisodeSubtitles+49
	movl	$544435301, _EpisodeSubtitles+53
	movl	$1819625000, _EpisodeSubtitles+57
	movl	$1700143212, _EpisodeSubtitles+61
	movl	$1869181810, _EpisodeSubtitles+65
	movl	$1850679406, _EpisodeSubtitles+69
	movl	$2718060, _EpisodeSubtitles+73
	jmp	L1010
L1532:
	movl	$LC51, 12(%esp)
	movl	$826, 8(%esp)
	movl	$LC45, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L856
L1531:
	movl	$LC50, 12(%esp)
	movl	$825, 8(%esp)
	movl	$LC45, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L855
L827:
	movl	$_cli_arg+12, %ebx
	movl	$_cli_arg+512, %edi
	movl	$100, %esi
L835:
	movl	(%ebx), %ecx
	movl	%esi, %eax
	testl	%ecx, %ecx
	je	L834
	movl	%ecx, (%esp)
	call	_strlen
	movl	%eax, -2664(%ebp)
	movl	4(%ebx), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, %ecx
	movl	-2664(%ebp), %eax
	leal	2(%esi,%eax), %eax
	addl	%ecx, %eax
	movl	%eax, %esi
L834:
	addl	$20, %ebx
	cmpl	%ebx, %edi
	jne	L835
	jmp	L833
L1503:
	movl	%esi, %ecx
	jmp	L964
L1529:
	movl	$LC48, 12(%esp)
	movl	$823, 8(%esp)
	movl	$LC45, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L853
L1485:
	movl	%esi, %eax
	call	__Z13handle_memerri
L1527:
	movzwl	-2(%esi,%eax), %edx
	movw	%dx, -2(%ebx,%eax)
	jmp	L884
L1517:
	movzwl	-2(%esi,%eax), %edx
	movw	%dx, -2(%ebx,%eax)
	jmp	L991
	.p2align 4,,10
	.p2align 3
L1510:
	movl	-2708(%ebp), %eax
	call	__Z13handle_memerri
L1504:
	movl	%edx, _foundgrps
	jmp	L960
L1033:
	movl	$7, 8(%esp)
	movl	$LC106, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1034
	movl	$8, %esi
	movw	%si, _NumSyncBytes
	jmp	L1025
L1519:
	xorl	%ecx, %ecx
	jmp	L1009
L1034:
	movl	$4, 8(%esp)
	movl	$LC107, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1035
	movl	-2644(%ebp), %eax
	subl	$1, %eax
	cmpl	%ebx, %eax
	jle	L1025
	movl	$31, 8(%esp)
	movl	-2680(%ebp), %eax
	addl	$1, %ebx
	movl	-2664(%ebp), %ecx
	movl	4(%eax,%ecx), %eax
	movl	$_CommPlayerName, (%esp)
	movl	%eax, 4(%esp)
	call	_strncpy
	movb	$0, _CommPlayerName+31
	jmp	L1025
L1526:
	movl	(%esi), %edx
	movl	%edx, (%ebx)
	movl	-4(%esi,%eax), %edx
	movl	%edx, -4(%ebx,%eax)
	jmp	L884
L1516:
	movl	(%esi), %edx
	movl	%edx, (%ebx)
	movl	-4(%esi,%eax), %edx
	movl	%edx, -4(%ebx,%eax)
	jmp	L991
L1515:
	movl	(%esi), %edx
	movl	4(%esi), %ecx
	movl	%edx, (%ebx)
	movl	%ecx, 4(%ebx)
	movl	-8(%esi,%eax), %edx
	movl	-4(%esi,%eax), %ecx
	movl	%edx, -8(%ebx,%eax)
	movl	%ecx, -4(%ebx,%eax)
	jmp	L991
L1525:
	movl	(%esi), %edx
	movl	4(%esi), %ecx
	movl	%edx, (%ebx)
	movl	%ecx, 4(%ebx)
	movl	-8(%esi,%eax), %edx
	movl	-4(%esi,%eax), %ecx
	movl	%edx, -8(%ebx,%eax)
	movl	%ecx, -4(%ebx,%eax)
	jmp	L884
L1035:
	movl	$2, 8(%esp)
	movl	$LC108, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1036
	movl	$8, _MovesPerPacket
	jmp	L1025
L1036:
	movl	$2, 8(%esp)
	movl	$LC109, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1037
	movl	$4, _MovesPerPacket
	jmp	L1025
L1037:
	movl	$2, 8(%esp)
	movl	$LC110, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1038
	movl	$2, _MovesPerPacket
	jmp	L1025
L1038:
	movl	$5, 8(%esp)
	movl	$LC111, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1039
	movb	$1, _DebugActor
	movw	$-1, _Skill
	jmp	L1025
L1039:
	movl	$9, 8(%esp)
	movl	$LC112, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1040
	movb	$0, _PredictionOn
	jmp	L1025
L1040:
	movl	$7, 8(%esp)
	movl	$LC113, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	je	L1536
	movl	$5, 8(%esp)
	movl	$LC114, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1042
	movl	%esi, (%esp)
	call	_strlen
	cmpl	$5, %eax
	jbe	L1025
	addl	$6, %edi
	movl	%edi, (%esp)
	call	_atoi
	imull	$20, %eax, %eax
	movl	_LevelInfo(%eax), %eax
	movl	$_UserMapName, (%esp)
	movl	%eax, 4(%esp)
	call	_strcpy
	jmp	L1025
L1536:
	leal	-1048(%ebp), %eax
	movl	$LC99, 4(%esp)
	addl	$1, %ebx
	movl	%eax, 8(%esp)
	movl	-2680(%ebp), %eax
	movl	-2664(%ebp), %ecx
	movl	4(%eax,%ecx), %eax
	movl	%eax, (%esp)
	call	_sscanf
	movl	-1048(%ebp), %eax
	movl	%eax, _Auto+32
	jmp	L1025
L1042:
	movl	$LC115, 4(%esp)
	movl	%esi, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L1043
	movb	$1, _ScoreQuit
	jmp	L1025
L1043:
	movl	$1, 8(%esp)
	movl	$LC116, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1044
	movl	%esi, (%esp)
	call	_strlen
	cmpl	$1, %eax
	jbe	L1045
	addl	$2, %edi
	movl	%edi, (%esp)
	call	_atoi
	subl	$1, %eax
	movw	%ax, _Skill
L1045:
	movzwl	_Skill, %eax
	xorl	%edx, %edx
	testw	%ax, %ax
	cmovs	%edx, %eax
	movl	$3, %edx
	cmpw	%dx, %ax
	cmovg	%edx, %eax
	movw	%ax, _Skill
	jmp	L1025
L1044:
	movl	$7, 8(%esp)
	movl	$LC117, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1046
	movl	%esi, (%esp)
	call	_strlen
	cmpl	$7, %eax
	jbe	L1025
	addl	$8, %edi
	movl	%edi, (%esp)
	call	_atoi
	movw	$1, _gNet+12
	movb	%al, _FakeMultiNumPlayers
	jmp	L1025
L1046:
	movl	$8, 8(%esp)
	movl	$LC118, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1047
	movb	$1, _NoMeters
	jmp	L1025
L1047:
	movl	$4, 8(%esp)
	movl	$LC119, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1048
	movl	%esi, (%esp)
	call	_strlen
	cmpl	$4, %eax
	jbe	L1025
	addl	$5, %edi
	movl	%edi, (%esp)
	call	_atoi
	movw	$3, _gNet+12
	movb	%al, _FakeMultiNumPlayers
	jmp	L1025
L1048:
	movl	$LC120, 4(%esp)
	movl	%esi, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L1049
	movb	$1, _DemoMDR
	jmp	L1025
L1049:
	movl	$LC121, 4(%esp)
	movl	%esi, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L1050
	orl	$1, _DemoMDRRequestedFeatures
	jmp	L1025
L1050:
	movl	$LC122, 4(%esp)
	movl	%esi, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L1051
	orl	$2, _DemoMDRRequestedFeatures
	jmp	L1025
L1051:
	movl	$2, 8(%esp)
	movl	$LC123, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1052
	xorl	%ecx, %ecx
	movb	$1, _DemoRecording
	movb	$0, _DemoPlaying
	movl	%ecx, _DemoRecCnt
	movb	$1, __ZL21DemoRecordCommandLine.lto_priv.0
	movl	%esi, (%esp)
	call	_strlen
	cmpl	$2, %eax
	jbe	L1025
	addl	$3, %edi
	movl	$_DemoFileName, (%esp)
	movl	%edi, 4(%esp)
	call	_strcpy
	movl	$46, 4(%esp)
	movl	$_DemoFileName, (%esp)
	call	_strchr
	testl	%eax, %eax
	jne	L1025
	movl	$_DemoFileName, (%esp)
	call	_strlen
	movl	$1869440046, _DemoFileName(%eax)
	movb	$0, _DemoFileName+4(%eax)
	jmp	L1025
L1052:
	movl	$6, 8(%esp)
	movl	$LC124, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1053
	movb	$1, _DEMOSS
	jmp	L1025
L1053:
	movl	$2, 8(%esp)
	movl	$LC125, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	je	L1054
	call	__ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.constprop.0
	testb	%al, %al
	je	L1054
	movl	$5, 8(%esp)
	movl	$LC126, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1537
	movb	$1, _ArgCheat
	jmp	L1025
L1054:
	xorl	%edx, %edx
	movb	$1, _DemoPlaying
	movb	$0, _DemoRecording
	movb	$1, _PreCaching
	movl	%edx, _MOUSEHIDE
	movb	$1, _gs+23
	movb	$1, _gs+21
	movb	$1, _gs+323
	movl	%esi, (%esp)
	call	_strlen
	cmpl	$2, %eax
	ja	L1479
	call	__ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.constprop.0
	testb	%al, %al
	jne	L1058
L1479:
	leal	-1048(%ebp), %eax
	movl	%esi, (%esp)
	leal	-2344(%ebp), %edi
	movl	%eax, 4(%esp)
	movl	%edi, %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
	leal	-1048(%ebp), %ecx
	pushl	%eax
	pushl	%eax
	movl	$-1, 8(%esp)
	movl	$2, 4(%esp)
	movl	%edi, (%esp)
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEjj
	leal	-1048(%ebp), %eax
	movl	%edi, %ecx
	subl	$12, %esp
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	leal	-1048(%ebp), %ecx
	pushl	%eax
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	call	__ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.constprop.0
	testb	%al, %al
	je	L1538
L1059:
	movl	-2340(%ebp), %eax
	movl	-2344(%ebp), %edx
	testl	%eax, %eax
	je	L1070
	cmpb	$34, (%edx)
	je	L1539
L1071:
	leal	-1(%eax), %ecx
	cmpb	$34, -1(%edx,%eax)
	jne	L1171
	xorl	%eax, %eax
	movl	%ecx, 8(%esp)
	leal	-1048(%ebp), %ecx
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEjj
	leal	-1048(%ebp), %eax
	movl	%edi, %ecx
	subl	$12, %esp
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	leal	-1048(%ebp), %ecx
	pushl	%eax
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	-2340(%ebp), %eax
	movl	-2344(%ebp), %edx
L1171:
	cmpl	$165, %eax
	ja	L1540
L1070:
	movl	%edx, 4(%esp)
	movl	$_DemoFileName, (%esp)
	call	_strcpy
	movl	$46, 4(%esp)
	movl	$_DemoFileName, (%esp)
	call	_strchr
	testl	%eax, %eax
	jne	L1073
	movl	$_DemoFileName, (%esp)
	call	_strlen
	movl	$1869440046, _DemoFileName(%eax)
	movb	$0, _DemoFileName+4(%eax)
L1073:
	movl	%edi, %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
L1058:
	call	__Z14DemoReadHeaderv
	movl	$_DemoLevelName, 4(%esp)
	movl	$_UserMapName, (%esp)
	call	_strcpy
	leal	-2600(%ebp), %eax
	movb	$0, -2600(%ebp)
	movl	%eax, -2608(%ebp)
	xorl	%eax, %eax
	movl	%eax, -2604(%ebp)
	movl	$LC135, 4(%esp)
	movl	$_MODNAME, (%esp)
	call	_stricmp
	testl	%eax, %eax
	jne	L1074
	movl	$LC76, (%esp)
	leal	-2608(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
	pushl	%eax
L1075:
	cmpw	$-1, _Skill
	je	L1541
L1077:
	movl	-2680(%ebp), %edi
	xorl	%esi, %esi
L1081:
	movl	$LC137, 4(%esp)
	movl	(%edi,%esi,4), %eax
	movl	%eax, (%esp)
	call	_stricmp
	testl	%eax, %eax
	jne	L1078
	movb	$1, _NoHide
L1079:
	addl	$1, %esi
	cmpl	%esi, -2644(%ebp)
	jg	L1081
	cmpb	$0, -2704(%ebp)
	je	L1542
	leal	-2608(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	L1025
L1539:
	movl	$-1, 8(%esp)
	leal	-1048(%ebp), %ecx
	movl	$1, 4(%esp)
	movl	%edi, (%esp)
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEjj
	leal	-1048(%ebp), %eax
	movl	%edi, %ecx
	subl	$12, %esp
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	leal	-1048(%ebp), %ecx
	pushl	%edx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	-2340(%ebp), %eax
	movl	-2344(%ebp), %edx
	testl	%eax, %eax
	jne	L1071
	jmp	L1070
L1078:
	movl	$LC138, 4(%esp)
	movl	(%edi,%esi,4), %eax
	movl	%eax, (%esp)
	call	_stricmp
	testl	%eax, %eax
	jne	L1543
L1080:
	movb	$1, _VoidJumpBugCompat
	jmp	L1079
L1542:
	leal	-2552(%ebp), %eax
	xorl	%esi, %esi
	movb	$0, -2552(%ebp)
	movl	%eax, -2560(%ebp)
	movl	__ZL18DemoDropSearchPath.lto_priv.0+4, %eax
	movl	%esi, -2556(%ebp)
	testl	%eax, %eax
	je	L1083
	movl	%eax, (%esp)
	movl	__ZL18DemoDropSearchPath.lto_priv.0, %ecx
	movl	$LC140, %edx
	leal	-1048(%ebp), %eax
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.isra.0
	movl	$LC141, (%esp)
	leal	-1048(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
	pushl	%edx
	movl	%eax, (%esp)
	movl	-2648(%ebp), %esi
	movl	%esi, %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	pushl	%ecx
	leal	-2560(%ebp), %ecx
	movl	%esi, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	movl	%esi, %ecx
	pushl	%ebx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leal	-1048(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
L1083:
	leal	-2576(%ebp), %eax
	movb	$0, -2576(%ebp)
	movl	%eax, -2584(%ebp)
	xorl	%eax, %eax
	movl	%eax, -2580(%ebp)
	cmpb	$0, _DemoSyncRecord
	jne	L1544
	cmpb	$0, _DemoSyncTest
	je	L1085
	movl	$LC143, (%esp)
	leal	-2584(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
	pushl	%eax
L1085:
	leal	-1688(%ebp), %eax
	leal	-1048(%ebp), %ecx
	movl	%eax, -2712(%ebp)
	movl	%ecx, 4(%esp)
	movl	%eax, %ecx
	movl	$LC144, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
	leal	-1048(%ebp), %eax
	pushl	%ecx
	pushl	%ecx
	leal	-1664(%ebp), %ecx
	movl	%eax, 4(%esp)
	movl	$LC145, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
	leal	-1048(%ebp), %eax
	leal	-1640(%ebp), %ecx
	pushl	%ebx
	pushl	%ebx
	movl	%eax, 4(%esp)
	movl	$LC146, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
	leal	-1048(%ebp), %eax
	leal	-1616(%ebp), %ecx
	pushl	%esi
	pushl	%esi
	movl	%eax, 4(%esp)
	movl	$LC147, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
	leal	-1048(%ebp), %eax
	leal	-1592(%ebp), %ecx
	pushl	%edi
	pushl	%edi
	movl	%eax, 4(%esp)
	movl	$LC148, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
	leal	-1568(%ebp), %ecx
	pushl	%eax
	pushl	%eax
	leal	-1048(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC149, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
	leal	-1544(%ebp), %ecx
	pushl	%eax
	pushl	%eax
	leal	-1048(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC150, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
	leal	-1520(%ebp), %ecx
	pushl	%eax
	pushl	%eax
	leal	-1048(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC151, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
	leal	-1048(%ebp), %ecx
	pushl	%eax
	pushl	%eax
	leal	-1880(%ebp), %eax
	movl	%eax, -2716(%ebp)
	movl	$858927408, -2638(%ebp)
	movl	$926299444, -2634(%ebp)
	movl	%ecx, 4(%esp)
	movl	%eax, %ecx
	movl	$LC152, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
	leal	-1856(%ebp), %ecx
	pushl	%eax
	pushl	%eax
	leal	-1048(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC153, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
	leal	-1048(%ebp), %eax
	leal	-1832(%ebp), %ecx
	pushl	%edx
	pushl	%edx
	movl	%eax, 4(%esp)
	movl	$LC154, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
	leal	-1048(%ebp), %eax
	pushl	%ecx
	pushl	%ecx
	leal	-1808(%ebp), %ecx
	movl	%eax, 4(%esp)
	movl	$LC155, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
	leal	-1048(%ebp), %eax
	leal	-1784(%ebp), %ecx
	pushl	%ebx
	pushl	%ebx
	movl	%eax, 4(%esp)
	movl	$LC156, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
	leal	-1048(%ebp), %eax
	leal	-1760(%ebp), %ecx
	pushl	%esi
	pushl	%esi
	movl	%eax, 4(%esp)
	movl	$LC157, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
	leal	-1048(%ebp), %eax
	leal	-1736(%ebp), %ecx
	pushl	%edi
	pushl	%edi
	movl	%eax, 4(%esp)
	movl	$LC158, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
	leal	-1712(%ebp), %ecx
	pushl	%eax
	pushl	%eax
	leal	-1048(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC159, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
	leal	-2072(%ebp), %ecx
	pushl	%eax
	pushl	%eax
	leal	-1048(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC160, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
	leal	-2048(%ebp), %ecx
	pushl	%eax
	pushl	%eax
	leal	-1048(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC161, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
	leal	-2024(%ebp), %ecx
	pushl	%eax
	pushl	%eax
	leal	-1048(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC162, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
	leal	-2000(%ebp), %ecx
	pushl	%eax
	pushl	%eax
	leal	-1048(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC163, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
	leal	-1048(%ebp), %eax
	leal	-1976(%ebp), %ecx
	pushl	%edx
	pushl	%edx
	movl	%eax, 4(%esp)
	movl	$LC164, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
	leal	-1048(%ebp), %eax
	pushl	%ecx
	pushl	%ecx
	leal	-1952(%ebp), %ecx
	movl	%eax, 4(%esp)
	movl	$LC165, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
	leal	-1048(%ebp), %eax
	leal	-1928(%ebp), %ecx
	pushl	%ebx
	pushl	%ebx
	movl	%eax, 4(%esp)
	movl	$LC166, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
	leal	-1048(%ebp), %eax
	leal	-1904(%ebp), %ecx
	pushl	%esi
	pushl	%esi
	movl	%eax, 4(%esp)
	movl	$LC167, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
	leal	-2264(%ebp), %eax
	pushl	%edi
	pushl	%edi
	movl	%eax, -2696(%ebp)
	movl	%eax, -2724(%ebp)
L1086:
	leal	8(%eax), %edx
	movb	$0, 8(%eax)
	leal	-2072(%ebp), %ecx
	addl	$24, %eax
	movl	%edx, -24(%eax)
	xorl	%edx, %edx
	movl	%edx, -20(%eax)
	cmpl	%eax, %ecx
	jne	L1086
	cmpb	$0, _DemoExtendedFormat
	je	L1087
	leal	-2638(%ebp), %eax
	xorl	%esi, %esi
	leal	-1040(%ebp), %ebx
	movl	%eax, -2708(%ebp)
L1092:
	xorl	%eax, %eax
	movl	%esi, %edi
	movl	%ebx, -1048(%ebp)
	movb	$0, -1040(%ebp)
	sall	$5, %edi
	movl	%eax, -1044(%ebp)
	addl	$_DemoPlayerNames, %edi
L1088:
	movzbl	(%edi), %eax
	testb	%al, %al
	je	L1545
	cmpb	$34, %al
	je	L1089
	cmpb	$31, %al
	jbe	L1089
	movl	%eax, (%esp)
	leal	-1048(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc
	pushl	%eax
L1089:
	addl	$1, %edi
	jmp	L1088
L1544:
	movl	$LC142, (%esp)
	leal	-2584(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
	pushl	%eax
	jmp	L1085
L1543:
	movl	$LC139, 4(%esp)
	movl	(%edi,%esi,4), %eax
	movl	%eax, (%esp)
	call	_stricmp
	testl	%eax, %eax
	jne	L1079
	jmp	L1080
L1545:
	cmpl	$0, -1044(%ebp)
	je	L1091
	imull	$24, %esi, %ecx
	leal	-1048(%ebp), %eax
	addl	-2712(%ebp), %ecx
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
	pushl	%eax
L1091:
	movzbl	_DemoPlayerColors(%esi), %eax
	movl	-2708(%ebp), %ecx
	andl	$7, %eax
	addl	$48, %eax
	movb	%al, (%ecx,%esi)
	leal	-1048(%ebp), %ecx
	addl	$1, %esi
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	cmpl	$8, %esi
	jne	L1092
	leal	-2344(%ebp), %eax
	leal	-1496(%ebp), %ebx
	movl	%eax, -2664(%ebp)
	leal	-2320(%ebp), %eax
	leal	-2296(%ebp), %edi
	movl	%eax, -2644(%ebp)
	leal	-2392(%ebp), %eax
	leal	-2368(%ebp), %esi
	movl	%eax, -2680(%ebp)
L1093:
	movl	-2712(%ebp), %eax
	movl	%eax, -2704(%ebp)
	xorl	%eax, %eax
	movl	%eax, -2700(%ebp)
L1126:
	movl	-2708(%ebp), %ecx
	movl	-2700(%ebp), %eax
	movzbl	(%ecx,%eax), %eax
	leal	-2630(%ebp), %ecx
	movl	$LC173, 4(%esp)
	movl	%ecx, (%esp)
	subl	$48, %eax
	movl	%eax, 8(%esp)
	call	_sprintf
	leal	-2432(%ebp), %eax
	cmpl	$0, -2700(%ebp)
	movl	%eax, -2440(%ebp)
	jne	L1121
	movl	-2580(%ebp), %eax
	leal	-2440(%ebp), %ecx
	movl	%eax, 4(%esp)
	movl	-2584(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructILb1EEEvPKcj
	pushl	%eax
	pushl	%eax
	leal	-2639(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-2630(%ebp), %eax
	movl	%eax, (%esp)
	movl	-2664(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
	pushl	%eax
	pushl	%eax
	cmpb	$0, _NoHide
	leal	-1048(%ebp), %eax
	movl	_GLOBALEXE, %edx
	movl	_GLOBALEXE+4, %ecx
	movl	$LC174, (%esp)
	jne	L1122
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.isra.0
	movl	$LC175, (%esp)
L1473:
	leal	-1048(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
	pushl	%edx
	movl	%eax, (%esp)
	movl	-2648(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	pushl	%ecx
	movl	$LC176, (%esp)
	movl	-2648(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
	movl	%ebx, %ecx
	pushl	%edx
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	pushl	%ecx
	movl	-1684(%ebp), %eax
	movl	%ebx, %ecx
	movl	%eax, 4(%esp)
	movl	-1688(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcj
	movl	%edi, %ecx
	pushl	%edx
	pushl	%edx
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	pushl	%ecx
	movl	%edi, %ecx
	movl	$LC141, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
	pushl	%edx
	movl	%eax, (%esp)
	movl	-2644(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	movl	%esi, %eax
	pushl	%ecx
	movl	-2644(%ebp), %edx
	movl	-2664(%ebp), %ecx
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_
	movl	-2604(%ebp), %eax
	movl	%esi, %ecx
	movl	%eax, 4(%esp)
	movl	-2608(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcj
	pushl	%edx
	pushl	%edx
	movl	%eax, (%esp)
	movl	-2680(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	pushl	%ecx
	movl	-2556(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-2560(%ebp), %eax
	movl	%eax, (%esp)
	movl	-2680(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcj
	leal	-2416(%ebp), %ecx
	pushl	%edx
	pushl	%edx
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	leal	-2416(%ebp), %edx
	leal	-2464(%ebp), %eax
	pushl	%ecx
	leal	-2440(%ebp), %ecx
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_
	movl	$LC177, (%esp)
	leal	-2464(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
	leal	-2488(%ebp), %ecx
	pushl	%edx
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	pushl	%ecx
	leal	-2488(%ebp), %ecx
	movl	$_DemoFileName, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
	leal	-2512(%ebp), %ecx
	pushl	%edx
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	pushl	%ecx
	leal	-2512(%ebp), %ecx
	movl	$LC178, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
	leal	-2536(%ebp), %ecx
	pushl	%edx
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	leal	-2536(%ebp), %eax
	pushl	%ecx
	movl	%eax, (%esp)
	movl	-2696(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	leal	-2536(%ebp), %ecx
	pushl	%eax
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leal	-2512(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leal	-2488(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leal	-2464(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leal	-2416(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	-2680(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	%esi, %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	-2644(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	%edi, %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	%ebx, %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	-2648(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leal	-1048(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	-2664(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leal	-2440(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	addl	$24, -2704(%ebp)
	movl	$1, -2700(%ebp)
	jmp	L1126
L1087:
	movl	-2648(%ebp), %ecx
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	__ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev
	leal	-2320(%ebp), %eax
	leal	-1048(%ebp), %ecx
	movl	%eax, -2644(%ebp)
	movl	%ecx, 4(%esp)
	movl	%eax, %ecx
	movl	$_DemoFileName, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
	leal	-2336(%ebp), %eax
	leal	-2344(%ebp), %ecx
	pushl	%ebx
	pushl	%ebx
	movl	%esi, -2340(%ebp)
	movl	__ZL19DemoDropSidecarPath.lto_priv.0+4, %esi
	movl	%eax, -2344(%ebp)
	leal	-2360(%ebp), %eax
	movl	%ecx, -2664(%ebp)
	movb	$0, -2336(%ebp)
	movl	%eax, -2368(%ebp)
	movb	$0, -2360(%ebp)
	movl	%edi, -2364(%ebp)
	testl	%esi, %esi
	je	L1094
	movl	$__ZL19DemoDropSidecarPath.lto_priv.0, (%esp)
	leal	-1496(%ebp), %ebx
	leal	-2296(%ebp), %edi
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
	pushl	%ecx
L1095:
	movl	%ebx, %eax
L1100:
	leal	8(%eax), %edx
	xorl	%esi, %esi
	movb	$0, 8(%eax)
	addl	$24, %eax
	movl	%edx, -24(%eax)
	movl	%esi, -20(%eax)
	cmpl	%eax, -2648(%ebp)
	jne	L1100
	movl	$858927408, -2392(%ebp)
	movl	$926299444, -2388(%ebp)
	movl	$8, 4(%esp)
	movl	-2344(%ebp), %eax
	movl	%eax, (%esp)
	movl	-2648(%ebp), %ecx
	call	__ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	pushl	%ecx
	pushl	%ecx
	movl	-1172(%ebp), %eax
	andl	$5, %eax
	je	L1198
	leal	-2638(%ebp), %eax
	leal	-2368(%ebp), %esi
	movl	%eax, -2708(%ebp)
	leal	-2392(%ebp), %eax
	movl	%eax, -2680(%ebp)
L1102:
	movl	$8, 4(%esp)
	movl	-2344(%ebp), %eax
	movl	%eax, (%esp)
	movl	-2648(%ebp), %ecx
	call	__ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	pushl	%ecx
	pushl	%ecx
	movl	-1172(%ebp), %eax
	andl	$5, %eax
	movl	%eax, -2700(%ebp)
	jne	L1108
	xorl	%eax, %eax
	movl	%ebx, -2720(%ebp)
	movl	%eax, -2704(%ebp)
	movl	%ebx, -2728(%ebp)
L1109:
	movl	%esi, 4(%esp)
	movl	-2648(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	movl	(%eax), %edx
	movl	-12(%edx), %edx
	movl	20(%eax,%edx), %edx
	andl	$5, %edx
	movl	%edx, %ebx
	jne	L1546
	xorl	%eax, %eax
	movl	$LC171, (%esp)
	movl	%esi, %ecx
	movl	%eax, 4(%esp)
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcj
	pushl	%edx
	pushl	%edx
	cmpl	$-1, %eax
	je	L1109
	addl	$6, %eax
	movl	%esi, (%esp)
	leal	-1048(%ebp), %ecx
	movl	%eax, 4(%esp)
	movl	$-1, 8(%esp)
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEjj
	leal	-1048(%ebp), %eax
	movl	%esi, %ecx
	subl	$12, %esp
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	pushl	%ecx
	leal	-1048(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	-2368(%ebp), %eax
L1110:
	cmpb	$32, (%eax,%ebx)
	jne	L1547
	addl	$1, %ebx
	jmp	L1110
L1122:
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.isra.0
	movl	$LC137, (%esp)
	jmp	L1473
L1121:
	xorl	%eax, %eax
	movb	$0, -2432(%ebp)
	movl	%eax, -2436(%ebp)
	leal	-2639(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-2630(%ebp), %eax
	movl	%eax, (%esp)
	movl	-2664(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
	pushl	%eax
	pushl	%eax
	cmpb	$0, _NoHide
	leal	-1048(%ebp), %eax
	movl	_GLOBALEXE, %edx
	movl	_GLOBALEXE+4, %ecx
	movl	$LC174, (%esp)
	jne	L1124
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.isra.0
	movl	$LC90, (%esp)
L1474:
	leal	-1048(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
	pushl	%ecx
	movl	%eax, (%esp)
	movl	-2648(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	pushl	%eax
	movl	$LC176, (%esp)
	movl	-2648(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
	movl	%ebx, %ecx
	pushl	%edx
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	pushl	%ecx
	movl	-2704(%ebp), %eax
	movl	%ebx, %ecx
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-2704(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcj
	movl	%edi, %ecx
	pushl	%edx
	pushl	%edx
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	pushl	%ecx
	movl	%edi, %ecx
	movl	$LC141, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
	pushl	%edx
	movl	%eax, (%esp)
	movl	-2644(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	movl	%esi, %eax
	pushl	%ecx
	movl	-2644(%ebp), %edx
	movl	-2664(%ebp), %ecx
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_
	movl	-2604(%ebp), %eax
	movl	%esi, %ecx
	movl	%eax, 4(%esp)
	movl	-2608(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcj
	pushl	%edx
	pushl	%edx
	movl	%eax, (%esp)
	movl	-2680(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	pushl	%ecx
	movl	-2556(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-2560(%ebp), %eax
	movl	%eax, (%esp)
	movl	-2680(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcj
	leal	-2416(%ebp), %ecx
	pushl	%edx
	pushl	%edx
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	leal	-2416(%ebp), %edx
	leal	-2464(%ebp), %eax
	pushl	%ecx
	leal	-2440(%ebp), %ecx
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_
	movl	$LC177, (%esp)
	leal	-2464(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
	leal	-2488(%ebp), %ecx
	pushl	%edx
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	pushl	%ecx
	leal	-2488(%ebp), %ecx
	movl	$_DemoFileName, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
	leal	-2512(%ebp), %ecx
	pushl	%edx
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	pushl	%ecx
	leal	-2512(%ebp), %ecx
	movl	$LC178, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
	leal	-2536(%ebp), %ecx
	pushl	%edx
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	leal	-2536(%ebp), %edx
	pushl	%ecx
	imull	$24, -2700(%ebp), %ecx
	addl	-2696(%ebp), %ecx
	movl	%edx, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	leal	-2536(%ebp), %ecx
	pushl	%eax
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leal	-2512(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leal	-2488(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leal	-2464(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leal	-2416(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	-2680(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	%esi, %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	-2644(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	%edi, %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	%ebx, %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	-2648(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leal	-1048(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	-2664(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leal	-2440(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	addl	$1, -2700(%ebp)
	cmpl	$8, -2700(%ebp)
	je	L1125
	addl	$24, -2704(%ebp)
	jmp	L1126
L1094:
	movl	$LC169, -2680(%ebp)
	movss	LC209, %xmm0
	movss	-2680(%ebp), %xmm1
	movl	$LC168, -2680(%ebp)
	movss	-2680(%ebp), %xmm2
	unpcklps	%xmm1, %xmm0
	movss	LC210, %xmm1
	unpcklps	%xmm2, %xmm1
	movaps	%xmm1, %xmm7
	movlhps	%xmm0, %xmm7
	movups	%xmm7, -2680(%ebp)
	movl	$-1, 4(%esp)
	movl	$46, (%esp)
	movl	-2644(%ebp), %edi
	movl	%edi, %ecx
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcj
	pushl	%edx
	pushl	%edx
	cmpl	$-1, %eax
	je	L1096
	movl	$-1, 4(%esp)
	movl	%edi, %ecx
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEjj
	pushl	%eax
	pushl	%eax
L1096:
	movl	$LC128, (%esp)
	movl	-2320(%ebp), %edx
	leal	-1048(%ebp), %eax
	leal	-1496(%ebp), %ebx
	movl	-2316(%ebp), %ecx
	leal	-2296(%ebp), %edi
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.isra.0
	leal	-1048(%ebp), %eax
	movl	%eax, (%esp)
	movl	-2664(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	leal	-1048(%ebp), %ecx
	pushl	%eax
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movups	-2680(%ebp), %xmm7
	movups	%xmm7, -2296(%ebp)
L1099:
	movl	(%edi,%esi,4), %eax
	movl	%eax, (%esp)
	movl	-2316(%ebp), %ecx
	movl	%ebx, %eax
	movl	-2320(%ebp), %edx
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.isra.0
	movl	$8, 4(%esp)
	movl	-1496(%ebp), %eax
	leal	-1048(%ebp), %ecx
	movl	%eax, (%esp)
	call	__ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
	pushl	%eax
	pushl	%eax
	testb	$5, -916(%ebp)
	je	L1548
	leal	-1048(%ebp), %ecx
	addl	$1, %esi
	call	__ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	movl	%ebx, %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	cmpl	$4, %esi
	jne	L1099
	jmp	L1095
L1548:
	movl	%ebx, (%esp)
	movl	-2664(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
	leal	-1048(%ebp), %ecx
	pushl	%eax
	call	__ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	movl	%ebx, %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	L1095
L1546:
	movl	-2648(%ebp), %ecx
	movl	-2728(%ebp), %ebx
	call	__ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv
	xorl	%eax, %eax
	leal	-1192(%ebp), %ecx
	movl	%eax, (%esp)
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
	pushl	%eax
	movl	%edi, %eax
	movl	%esi, %edi
	movl	%ebx, %esi
	movl	%eax, %ebx
L1113:
	movl	-2704(%ebp), %ecx
	cmpl	%ecx, -2700(%ebp)
	je	L1549
	imull	$24, -2700(%ebp), %eax
	movl	-2712(%ebp), %ecx
	addl	%eax, %ecx
	addl	%esi, %eax
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
	pushl	%eax
	addl	$1, -2700(%ebp)
	jmp	L1113
L1547:
	movl	-2364(%ebp), %eax
	movl	%ebx, 4(%esp)
	leal	-1048(%ebp), %ecx
	movl	%esi, (%esp)
	subl	%ebx, %eax
	movl	%eax, 8(%esp)
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEjj
	leal	-1048(%ebp), %eax
	subl	$12, %esp
	addl	$1, -2704(%ebp)
	movl	%eax, (%esp)
	movl	-2720(%ebp), %ebx
	movl	%ebx, %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	leal	-1048(%ebp), %ecx
	pushl	%edx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leal	24(%ebx), %eax
	movl	%eax, -2720(%ebp)
	jmp	L1109
L1549:
	movl	%ebx, %eax
	movl	%esi, %ebx
	movl	%edi, %esi
	movl	%eax, %edi
L1108:
	cmpb	$0, _VoidJumpBugCompat
	je	L1550
L1115:
	movl	-2648(%ebp), %eax
	movl	%edi, -2700(%ebp)
	movl	%esi, %edi
	movl	%ebx, %esi
	movl	%eax, %ebx
L1120:
	subl	$24, %ebx
	movl	%ebx, %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	cmpl	%esi, %ebx
	jne	L1120
	movl	%esi, %ebx
	movl	%edi, %esi
	movl	-2700(%ebp), %edi
	movl	%esi, %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	-2664(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	-2644(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	-2648(%ebp), %ecx
	call	__ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	jmp	L1093
L1198:
	xorl	%edx, %edx
	movl	%eax, -2680(%ebp)
	leal	-2368(%ebp), %esi
	movl	%edx, -2700(%ebp)
L1103:
	movl	%esi, 4(%esp)
	movl	-2648(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	movl	(%eax), %edx
	movl	-12(%edx), %edx
	testb	$5, 20(%eax,%edx)
	jne	L1551
	movl	$LC170, 4(%esp)
	movl	-2368(%ebp), %eax
	movl	%eax, (%esp)
	call	_stricmp
	testl	%eax, %eax
	jne	L1103
	movl	%esi, 4(%esp)
	movl	-2648(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	movl	-2368(%ebp), %edx
	movl	-2364(%ebp), %eax
	addl	$1, -2700(%ebp)
	movl	-2700(%ebp), %ecx
	movzbl	-3(%edx,%eax), %eax
	movb	%al, -2393(%ebp,%ecx)
	jmp	L1103
L1550:
	movl	$8, 4(%esp)
	movl	-2344(%ebp), %eax
	leal	-1048(%ebp), %ecx
	movl	%eax, (%esp)
	call	__ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
	leal	-2288(%ebp), %eax
	pushl	%ecx
	pushl	%ecx
	movl	%eax, -2296(%ebp)
	xorl	%eax, %eax
	movb	$0, -2288(%ebp)
	movl	%eax, -2292(%ebp)
L1116:
	testb	$5, -916(%ebp)
	jne	L1118
	leal	-1048(%ebp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	movl	(%eax), %edx
	movl	-12(%edx), %edx
	testb	$5, 20(%eax,%edx)
	jne	L1118
	movl	%esi, -2700(%ebp)
	movl	%edi, -2704(%ebp)
	movl	%ebx, %edi
	xorl	%ebx, %ebx
L1119:
	cmpl	-2292(%ebp), %ebx
	jnb	L1552
	movl	-2296(%ebp), %esi
	addl	%ebx, %esi
	addl	$1, %ebx
	movzbl	(%esi), %eax
	movl	%eax, (%esp)
	call	*__imp__toupper
	movb	%al, (%esi)
	jmp	L1119
L1541:
	cmpb	$0, _FakeMultiNumPlayers
	jne	L1077
	movb	$1, _DebugActor
	jmp	L1077
L1074:
	movl	$LC136, 4(%esp)
	movl	$_MODNAME, (%esp)
	call	_stricmp
	testl	%eax, %eax
	je	L1553
	cmpb	$0, _MODNAME
	je	L1075
	movl	$_MODNAME, %eax
	call	_initgroupfile
	jmp	L1075
L1125:
	leal	-2072(%ebp), %ecx
	xorl	%edx, %edx
	movl	-2716(%ebp), %eax
	movl	%ebx, -2720(%ebp)
	movl	%ecx, -2704(%ebp)
	movl	-2696(%ebp), %ecx
	movl	%edx, -2700(%ebp)
	movl	%esi, -2728(%ebp)
	movl	%eax, %esi
	movl	%edi, -2732(%ebp)
	movl	%ecx, %edi
L1127:
	movzbl	_FakeMultiNumPlayers, %edx
	cmpl	-2700(%ebp), %edx
	jle	L1131
	movl	%edi, -2708(%ebp)
	leal	-2072(%ebp), %ebx
L1132:
	cmpl	%ebx, -2704(%ebp)
	je	L1554
	movl	4(%ebx), %ecx
	movl	$LC44, (%esp)
	leal	-1048(%ebp), %eax
	addl	$24, %ebx
	movl	-24(%ebx), %edx
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.isra.0
	movl	-1044(%ebp), %eax
	movl	%edi, %ecx
	movl	%eax, 4(%esp)
	movl	-1048(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcj
	leal	-1048(%ebp), %ecx
	pushl	%eax
	pushl	%eax
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	L1132
L1537:
	movl	$12, 8(%esp)
	movl	$LC188, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1147
	movw	$8, _NumSyncBytes
	movb	$1, _DemoSyncTest
	movb	$0, _DemoSyncRecord
	jmp	L1025
L1552:
	xorl	%eax, %eax
	movl	-2700(%ebp), %esi
	movl	%edi, %ebx
	movl	-2704(%ebp), %edi
	movl	%eax, 4(%esp)
	movl	$LC172, (%esp)
	movl	%edi, %ecx
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcj
	addl	$1, %eax
	pushl	%edx
	pushl	%edx
	je	L1116
	movb	$1, _VoidJumpBugCompat
L1118:
	movl	%edi, %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leal	-1048(%ebp), %ecx
	call	__ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	jmp	L1115
L1147:
	movl	$14, 8(%esp)
	movl	$LC189, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1148
	movw	$8, _NumSyncBytes
	movb	$0, _DemoSyncTest
	movb	$1, _DemoSyncRecord
	jmp	L1025
L1538:
	movl	$_dragDemo, (%esp)
	movl	%edi, %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
	leal	-2064(%ebp), %eax
	leal	-2072(%ebp), %ecx
	pushl	%edx
	movl	%eax, -2072(%ebp)
	movl	-2340(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-2344(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructILb1EEEvPKcj
	pushl	%ecx
	pushl	%ecx
	leal	-2072(%ebp), %ecx
	movl	$-1, 4(%esp)
	movl	$LC127, (%esp)
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcj
	leal	-2264(%ebp), %ecx
	leal	-2296(%ebp), %edx
	pushl	%esi
	pushl	%esi
	leal	-2320(%ebp), %esi
	movl	%eax, -2664(%ebp)
	leal	-2256(%ebp), %eax
	movl	%eax, -2264(%ebp)
	xorl	%eax, %eax
	movl	%eax, -2260(%ebp)
	leal	-2288(%ebp), %eax
	movl	%eax, -2296(%ebp)
	xorl	%eax, %eax
	movl	%eax, -2292(%ebp)
	leal	-2312(%ebp), %eax
	movl	%eax, -2320(%ebp)
	movl	-2068(%ebp), %eax
	movl	%ecx, -2700(%ebp)
	movl	%esi, %ecx
	movb	$0, -2256(%ebp)
	movl	%edx, -2712(%ebp)
	movb	$0, -2288(%ebp)
	movl	%eax, 4(%esp)
	movl	-2072(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructILb1EEEvPKcj
	pushl	%eax
	pushl	%eax
	movl	-2664(%ebp), %eax
	cmpl	$-1, %eax
	je	L1060
	leal	-2072(%ebp), %edx
	movl	%eax, 8(%esp)
	xorl	%eax, %eax
	leal	-1048(%ebp), %ecx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEjj
	leal	-1048(%ebp), %edx
	subl	$12, %esp
	movl	%edx, (%esp)
	movl	-2700(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	leal	-1048(%ebp), %ecx
	pushl	%eax
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	-2664(%ebp), %eax
	leal	-1048(%ebp), %ecx
	leal	1(%eax), %edx
	xorl	%eax, %eax
	movl	%edx, 8(%esp)
	movl	%edx, -2664(%ebp)
	movl	%eax, 4(%esp)
	leal	-2072(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEjj
	leal	-1048(%ebp), %eax
	subl	$12, %esp
	movl	%eax, (%esp)
	movl	-2712(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	leal	-1048(%ebp), %ecx
	pushl	%eax
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	$-1, 8(%esp)
	movl	-2664(%ebp), %edx
	leal	-2072(%ebp), %eax
	movl	%eax, (%esp)
	leal	-1048(%ebp), %ecx
	movl	%edx, 4(%esp)
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEjj
	leal	-1048(%ebp), %eax
	movl	%esi, %ecx
	subl	$12, %esp
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	leal	-1048(%ebp), %ecx
	pushl	%eax
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	cmpl	$2, -2260(%ebp)
	je	L1555
L1060:
	movl	$-1, 4(%esp)
	movl	%esi, %ecx
	movl	$46, (%esp)
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcj
	pushl	%edx
	pushl	%edx
	movl	%eax, -2664(%ebp)
	cmpl	$-1, %eax
	je	L1061
	leal	-1880(%ebp), %ecx
	movl	%ecx, -2724(%ebp)
	movl	$-1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEjj
	movl	-1880(%ebp), %edx
	subl	$12, %esp
	movl	$LC128, 4(%esp)
	movl	%edx, (%esp)
	movl	%edx, -2708(%ebp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L1062
	movl	$LC129, 4(%esp)
	movl	-2708(%ebp), %edx
	movl	%edx, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L1062
L1063:
	movl	-2724(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
L1061:
	movl	%esi, %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	-2712(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	-2700(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leal	-2072(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	L1059
L1062:
	movl	-2664(%ebp), %eax
	leal	-1688(%ebp), %ecx
	movl	%ecx, -2728(%ebp)
	movl	%eax, 8(%esp)
	xorl	%eax, %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEjj
	xorl	%eax, %eax
	subl	$12, %esp
	movl	%eax, -2708(%ebp)
	leal	-1496(%ebp), %eax
	movl	%eax, -2664(%ebp)
	leal	-2368(%ebp), %eax
	movl	$LC130, -2368(%ebp)
	movl	$LC131, -2364(%ebp)
	movl	%eax, -2732(%ebp)
	movl	%ebx, -2736(%ebp)
L1069:
	movl	-2708(%ebp), %ecx
	movl	-2732(%ebp), %eax
	movl	(%eax,%ecx,4), %eax
	movl	%eax, (%esp)
	movl	-1684(%ebp), %ecx
	movl	-1688(%ebp), %edx
	movl	-2648(%ebp), %eax
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.isra.0
	movl	-2296(%ebp), %eax
	movl	-1304(%ebp), %ecx
	movb	$0, -1488(%ebp)
	movl	-1300(%ebp), %ebx
	movl	%eax, -2716(%ebp)
	movl	-2292(%ebp), %eax
	movl	%ecx, -2720(%ebp)
	leal	-1488(%ebp), %ecx
	movl	%ecx, -1496(%ebp)
	xorl	%ecx, %ecx
	movl	%ecx, -1492(%ebp)
	leal	(%eax,%ebx), %ecx
	movl	%eax, -2740(%ebp)
	movl	%ecx, (%esp)
	movl	-2664(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEj
	movl	$2147483646, %ecx
	pushl	%eax
	movl	-2740(%ebp), %eax
	subl	-1492(%ebp), %ecx
	cmpl	%eax, %ecx
	jb	L1065
	movl	%eax, 4(%esp)
	movl	-2716(%ebp), %eax
	movl	%eax, (%esp)
	movl	-2664(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj
	movl	$2147483646, %eax
	pushl	%edx
	pushl	%edx
	subl	-1492(%ebp), %eax
	cmpl	%ebx, %eax
	jb	L1065
	movl	%ebx, 4(%esp)
	movl	-2720(%ebp), %eax
	movl	%eax, (%esp)
	movl	-2664(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj
	leal	-1048(%ebp), %ecx
	pushl	%eax
	pushl	%eax
	movl	$4, 4(%esp)
	movl	-1496(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
	pushl	%eax
	pushl	%eax
	testb	$5, -916(%ebp)
	je	L1556
	leal	-1048(%ebp), %ecx
	call	__ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	movl	-2664(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	-2648(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	cmpl	$1, -2708(%ebp)
	je	L1557
	movl	$1, -2708(%ebp)
	jmp	L1069
L1124:
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.isra.0
	movl	$LC137, (%esp)
	jmp	L1474
L1551:
	movl	-2680(%ebp), %eax
	movl	-2648(%ebp), %ecx
	movl	%eax, -2704(%ebp)
	call	__ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv
	xorl	%eax, %eax
	leal	-1192(%ebp), %ecx
	movl	%eax, (%esp)
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
	leal	-2392(%ebp), %ecx
	pushl	%eax
	leal	-2638(%ebp), %eax
	movl	%eax, -2708(%ebp)
	movl	-2704(%ebp), %eax
	movl	%ecx, -2680(%ebp)
	movl	%ecx, -2704(%ebp)
L1105:
	cmpl	%eax, -2700(%ebp)
	je	L1102
	movl	-2704(%ebp), %ecx
	movzbl	(%ecx,%eax), %edx
	movl	-2708(%ebp), %ecx
	movb	%dl, (%ecx,%eax)
	addl	$1, %eax
	jmp	L1105
L1148:
	movl	$3, 8(%esp)
	movl	$LC190, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1149
	movb	$1, _CameraTestMode
	jmp	L1025
L1554:
	movl	$LC179, (%esp)
	movl	%edi, %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
	pushl	%eax
	addl	$1, -2700(%ebp)
	movl	-2700(%ebp), %ebx
L1129:
	movzbl	_FakeMultiNumPlayers, %eax
	cmpl	%ebx, %eax
	jle	L1558
	imull	$24, %ebx, %eax
	addl	$1, %ebx
	movl	-2072(%ebp,%eax), %edx
	movl	$LC44, (%esp)
	movl	-2068(%ebp,%eax), %ecx
	leal	-1048(%ebp), %eax
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.isra.0
	movl	-1044(%ebp), %eax
	movl	%edi, %ecx
	movl	%eax, 4(%esp)
	movl	-1048(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcj
	leal	-1048(%ebp), %ecx
	pushl	%eax
	pushl	%eax
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	L1129
L1553:
	movl	$LC77, (%esp)
	leal	-2608(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.isra.0
	pushl	%edi
	jmp	L1075
L1540:
	movl	%edx, 8(%esp)
	movl	$LC134, 4(%esp)
	movl	$_apptitle, (%esp)
	call	_wm_msgbox.constprop.0
	xorl	%eax, %eax
	movl	%eax, (%esp)
	call	_exit
L1555:
	movl	-2264(%ebp), %eax
	cmpb	$58, 1(%eax)
	jne	L1060
	movl	$47, (%esp)
	movl	-2700(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc
	pushl	%ecx
	jmp	L1060
L1131:
	movl	-2720(%ebp), %ebx
	movl	-2728(%ebp), %esi
	movl	-2732(%ebp), %edi
	testb	%dl, %dl
	je	L1559
L1133:
	cmpb	$0, _VoidJumpBugCompat
	jne	L1201
	movzbl	_FakeMultiNumPlayers, %eax
L1136:
	movl	__imp__WinExec@8, %esi
	xorl	%edi, %edi
L1141:
	cmpl	%edi, %eax
	jle	L1560
	imull	$24, %edi, %eax
	movl	$5, 4(%esp)
	addl	$1, %edi
	movl	-2696(%ebp), %ecx
	movl	(%ecx,%eax), %eax
	movl	%eax, (%esp)
	call	*%esi
	pushl	%eax
	pushl	%eax
	movzbl	_FakeMultiNumPlayers, %eax
	jmp	L1141
L1149:
	movl	$3, 8(%esp)
	movl	$LC191, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1150
	testb	$1, _SW_GameFlags
	jne	L1150
	leal	1(%ebx), %eax
	movl	%eax, -2700(%ebp)
	cmpl	-2644(%ebp), %eax
	jl	L1561
	movl	$1, 8(%esp)
	movl	$LC193, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1562
	movl	%esi, (%esp)
	call	_strlen
	cmpl	$1, %eax
	jbe	L1020
L1180:
	addl	$2, %edi
	movl	%edi, %eax
	call	_initgroupfile
	testl	%eax, %eax
	js	L1025
	call	__ZN6loguru24current_verbosity_cutoffEv
	testl	%eax, %eax
	js	L1156
	xorl	%ecx, %ecx
	movl	%edi, 16(%esp)
	movl	$LC194, 12(%esp)
	movl	$4708, 8(%esp)
	movl	$LC29, 4(%esp)
	movl	%ecx, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L1156:
	movl	%edi, 4(%esp)
	movl	$_MODNAME, (%esp)
	call	_strcpy
	jmp	L1025
L1562:
	movl	$1, 8(%esp)
	movl	$LC195, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1157
L1181:
	movl	%esi, (%esp)
	call	_strlen
	cmpl	$1, %eax
	jbe	L1025
	movl	_g_defNamePtr, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	pushl	%eax
	movl	$256, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	pushl	%edx
	testl	%eax, %eax
	je	L882
	leal	2(%edi), %esi
	movl	%esi, (%esp)
	movl	%eax, -2664(%ebp)
	call	_strlen
	movl	-2664(%ebp), %edx
	leal	1(%eax), %ecx
	movl	$255, %eax
	cmpl	%eax, %ecx
	movl	%edx, %edi
	cmova	%eax, %ecx
	rep movsb
	movb	$0, 255(%edx)
	movl	%edx, _g_defNamePtr
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	testl	%eax, %eax
	js	L1025
	xorl	%esi, %esi
	movl	%edx, 16(%esp)
	movl	$LC196, 12(%esp)
	movl	$83, 8(%esp)
	movl	$LC197, 4(%esp)
	movl	%esi, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1025
L1561:
	movl	-2680(%ebp), %eax
	movl	-2664(%ebp), %ecx
	movl	4(%eax,%ecx), %eax
	movl	$_UserMapName, (%esp)
	movl	%eax, 4(%esp)
	call	_strcpy
	movl	$46, 4(%esp)
	movl	$_UserMapName, (%esp)
	call	_strchr
	testl	%eax, %eax
	jne	L1152
	movl	$_UserMapName, (%esp)
	call	_strlen
	movl	$1885433134, _UserMapName(%eax)
	movb	$0, _UserMapName+4(%eax)
L1152:
	xorl	%edx, %edx
	movl	$_UserMapName, %eax
	call	_kopen4load.part.0
	cmpl	$-1, %eax
	je	L1563
	call	_kclose
	movl	-2700(%ebp), %ebx
	jmp	L1025
L1155:
	movl	$1, 8(%esp)
	movl	$LC195, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	je	L1158
L1157:
	movl	$2, 8(%esp)
	movl	$LC198, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1158
	testb	$1, _SW_GameFlags
	jne	L1158
	movl	%esi, (%esp)
	call	_strlen
	cmpl	$2, %eax
	jbe	L1025
	addl	$3, %edi
	movl	%edi, (%esp)
	call	_strlen
	leal	1(%eax), %edx
	movl	%eax, -2664(%ebp)
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -2700(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	movl	%eax, %esi
	pushl	%ecx
	testl	%eax, %eax
	je	L1159
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	-2664(%ebp), %eax
	movb	$0, (%esi,%eax)
	movl	_g_defModules+8, %edi
	cmpl	%edi, _g_defModules+4
	je	L1564
L1160:
	movl	_g_defModules+4, %eax
	leal	1(%eax), %edx
	movl	%edx, _g_defModules+4
	movl	_g_defModules, %edx
	movl	%esi, (%edx,%eax,4)
	jmp	L1025
L1563:
	movl	$_UserMapName, 8(%esp)
	xorl	%ebx, %ebx
	movl	$LC192, 4(%esp)
	movl	$_apptitle, (%esp)
	call	_wm_msgbox.constprop.0
	movl	%ebx, (%esp)
	call	_exit
L1564:
	addl	$1, %edi
	leal	0(,%edi,4), %edx
	movl	%edx, 4(%esp)
	movl	_g_defModules, %eax
	movl	%edx, -2664(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	pushl	%edx
	pushl	%edx
	testl	%eax, %eax
	jne	L1202
	movl	-2664(%ebp), %edx
	testl	%edx, %edx
	jne	L1161
L1202:
	movl	%eax, _g_defModules
	movl	%edi, _g_defModules+8
	jmp	L1160
L1161:
	movl	%edx, %eax
	call	__Z13handle_memerri
L1159:
	movl	-2700(%ebp), %eax
	call	__Z13handle_memerri
L1154:
	movl	$1, 8(%esp)
	movl	$LC195, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1157
	testb	$1, _SW_GameFlags
	je	L1181
L1158:
	movl	$8, 8(%esp)
	movl	$LC199, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	je	L1565
	movl	$8, 8(%esp)
	movl	$LC201, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	je	L1566
	movl	$12, 8(%esp)
	movl	$LC203, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1025
	call	__ZN6loguru24current_verbosity_cutoffEv
	cmpl	$4, %eax
	jle	L1167
	movl	$LC204, 12(%esp)
	movl	$4739, 8(%esp)
	movl	$LC29, 4(%esp)
	movl	$5, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L1167:
	orb	$1, _g_controllerSupportFlags
	jmp	L1025
L1566:
	call	__ZN6loguru24current_verbosity_cutoffEv
	cmpl	$4, %eax
	jle	L1166
	movl	$LC202, 12(%esp)
	movl	$4733, 8(%esp)
	movl	$LC29, 4(%esp)
	movl	$5, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L1166:
	orb	$4, _g_controllerSupportFlags
	jmp	L1025
L1565:
	call	__ZN6loguru24current_verbosity_cutoffEv
	cmpl	$4, %eax
	jle	L1164
	movl	$LC200, 12(%esp)
	movl	$4728, 8(%esp)
	movl	$LC29, 4(%esp)
	movl	$5, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L1164:
	orb	$2, _g_controllerSupportFlags
	jmp	L1025
L1150:
	movl	$1, 8(%esp)
	movl	$LC193, 4(%esp)
	movl	%esi, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1154
	testb	$1, _SW_GameFlags
	jne	L1155
	movl	%esi, (%esp)
	call	_strlen
	cmpl	$1, %eax
	jbe	L1025
	jmp	L1180
L1560:
	leal	-2072(%ebp), %esi
L1143:
	subl	$24, %esi
	movl	%esi, %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	cmpl	-2696(%ebp), %esi
	jne	L1143
	movl	-2716(%ebp), %esi
L1144:
	subl	$24, %esi
	movl	%esi, %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leal	-2072(%ebp), %eax
	cmpl	%eax, %esi
	jne	L1144
	movl	-2712(%ebp), %esi
L1145:
	subl	$24, %esi
	movl	%esi, %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	cmpl	-2716(%ebp), %esi
	jne	L1145
L1146:
	subl	$24, %ebx
	movl	%ebx, %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	cmpl	-2712(%ebp), %ebx
	jne	L1146
	leal	-2584(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leal	-2560(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leal	-2608(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	L1266
L1556:
	movl	-2648(%ebp), %eax
	movl	-2736(%ebp), %ebx
	movl	%edi, %ecx
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
	movl	$__ZL18DemoDropSearchPath.lto_priv.0, %ecx
	pushl	%eax
	movl	-2700(%ebp), %edx
	movl	%edx, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
	leal	-2072(%ebp), %edx
	movl	$__ZL19DemoDropSidecarPath.lto_priv.0, %ecx
	pushl	%eax
	movl	%edx, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
	leal	-1048(%ebp), %ecx
	pushl	%eax
	call	__ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	movl	-2664(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	-2648(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	cmpl	$0, __ZL18DemoDropSearchPath.lto_priv.0+4
	je	L1068
	movl	__ZL18DemoDropSearchPath.lto_priv.0, %eax
	xorl	%edx, %edx
	call	_addsearchpath_user
	testl	%eax, %eax
	jne	L1567
L1068:
	movl	-2728(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	L1063
L1201:
	movl	-2724(%ebp), %edi
	xorl	%esi, %esi
L1135:
	movzbl	_FakeMultiNumPlayers, %eax
	cmpl	%esi, %eax
	jle	L1136
	movl	$-1, 4(%esp)
	movl	%edi, %ecx
	movl	$LC184, (%esp)
	call	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcj
	pushl	%ecx
	pushl	%ecx
	cmpl	$-1, %eax
	je	L1137
	movl	4(%edi), %edx
	cmpl	%eax, %edx
	jb	L1441
	xorl	%edx, %edx
	movl	$19, 12(%esp)
	movl	%edi, %ecx
	movl	$LC187, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEjjPKcj
	subl	$16, %esp
L1139:
	addl	$1, %esi
	addl	$24, %edi
	jmp	L1135
L1559:
	movzbl	-2638(%ebp), %eax
	movb	$1, _FakeMultiNumPlayers
	movl	$LC173, 4(%esp)
	subl	$48, %eax
	movl	%eax, 8(%esp)
	leal	-2630(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	leal	-2488(%ebp), %eax
	movl	%edi, %ecx
	movl	%eax, 4(%esp)
	leal	-2630(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
	pushl	%eax
	pushl	%eax
	leal	-1048(%ebp), %eax
	movl	$LC181, (%esp)
	movl	_GLOBALEXE, %edx
	movl	_GLOBALEXE+4, %ecx
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.isra.0
	movl	-1684(%ebp), %eax
	leal	-1048(%ebp), %ecx
	movl	%eax, 4(%esp)
	movl	-1688(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcj
	pushl	%edx
	pushl	%edx
	movl	%eax, (%esp)
	movl	-2648(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	pushl	%ecx
	movl	$LC141, (%esp)
	movl	-2648(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
	movl	%ebx, %ecx
	pushl	%edx
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	movl	%ebx, %edx
	pushl	%ecx
	movl	-2644(%ebp), %eax
	movl	%edi, %ecx
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_
	movl	-2604(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-2608(%ebp), %eax
	movl	%eax, (%esp)
	movl	-2644(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcj
	pushl	%edx
	pushl	%edx
	movl	%eax, (%esp)
	movl	-2664(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	pushl	%ecx
	movl	-2556(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-2560(%ebp), %eax
	movl	%eax, (%esp)
	movl	-2664(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcj
	movl	%esi, %ecx
	pushl	%edx
	pushl	%edx
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	pushl	%ecx
	movl	-2580(%ebp), %eax
	movl	%esi, %ecx
	movl	%eax, 4(%esp)
	movl	-2584(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcj
	pushl	%edx
	pushl	%edx
	movl	%eax, (%esp)
	movl	-2680(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	pushl	%ecx
	movl	$LC177, (%esp)
	movl	-2680(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
	leal	-2416(%ebp), %ecx
	pushl	%edx
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	pushl	%ecx
	leal	-2416(%ebp), %ecx
	movl	$_DemoFileName, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
	leal	-2440(%ebp), %ecx
	pushl	%edx
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	pushl	%ecx
	leal	-2440(%ebp), %ecx
	movl	$LC141, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
	leal	-2464(%ebp), %ecx
	pushl	%edx
	movl	%eax, (%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	leal	-2464(%ebp), %eax
	pushl	%ecx
	movl	%eax, (%esp)
	movl	-2696(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	leal	-2464(%ebp), %ecx
	pushl	%eax
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leal	-2440(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leal	-2416(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	-2680(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	%esi, %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	-2664(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	-2644(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	%ebx, %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	-2648(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	leal	-1048(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movl	%edi, %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movswl	_Skill, %eax
	cmpw	$-1, %ax
	je	L1568
	addl	$1, %eax
	movl	$LC183, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-2630(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	leal	-2630(%ebp), %eax
	movl	%eax, (%esp)
L1475:
	movl	-2260(%ebp), %ecx
	movl	-2264(%ebp), %edx
	leal	-1048(%ebp), %eax
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.isra.0
	leal	-1048(%ebp), %eax
	movl	%eax, (%esp)
	movl	-2696(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	leal	-1048(%ebp), %ecx
	pushl	%esi
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	L1133
L1137:
	movl	$LC187, (%esp)
	movl	%edi, %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
	pushl	%eax
	jmp	L1139
L1557:
	movl	_dragDemo, %eax
	movl	$LC132, 4(%esp)
	movl	$_apptitle, (%esp)
	movl	%eax, 8(%esp)
	call	_wm_msgbox.constprop.0
	jmp	L1477
L1558:
	movl	4(%esi), %eax
	movl	$LC180, %edx
	addl	$24, %edi
	addl	$24, %esi
	movl	%eax, (%esp)
	movl	-24(%esi), %ecx
	leal	-1048(%ebp), %eax
	call	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.isra.0
	movl	-1044(%ebp), %eax
	addl	$24, -2704(%ebp)
	movl	%eax, 4(%esp)
	movl	-1048(%ebp), %eax
	movl	%eax, (%esp)
	movl	-2708(%ebp), %ecx
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcj
	leal	-1048(%ebp), %ecx
	pushl	%eax
	pushl	%eax
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	L1127
L1567:
	movl	__ZL18DemoDropSearchPath.lto_priv.0, %eax
	movl	$LC133, 4(%esp)
	movl	$_apptitle, (%esp)
	movl	%eax, 8(%esp)
	call	_wm_msgbox.constprop.0
	xorl	%ecx, %ecx
	movl	%ecx, (%esp)
	call	_exit
L1568:
	movl	$LC182, (%esp)
	jmp	L1475
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	_app_main.cold;	.scl	3;	.type	32;	.endef
_app_main.cold:
LFSB83:
L1065:
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	.cfi_escape 0x10,0x5,0x2,0x75,0
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_offset 7, -8
	movl	$LC0, (%esp)
	call	__ZSt20__throw_length_errorPKc
L1441:
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC185, 4(%esp)
	movl	$LC186, (%esp)
	call	__ZSt24__throw_out_of_range_fmtPKcz
	.cfi_endproc
LFE83:
	.text
	.section	.text.unlikely,"x"
LCOLDE211:
	.text
LHOTE211:
	.globl	__ZN6loguru17g_preamble_uptimeE
	.section .rdata,"dr"
__ZN6loguru17g_preamble_uptimeE:
	.byte	1
	.globl	__ZN6loguru18g_preamble_verboseE
	.set	__ZN6loguru18g_preamble_verboseE,__ZN6loguru17g_preamble_uptimeE
	.globl	__ZN6loguru15g_preamble_pipeE
	.set	__ZN6loguru15g_preamble_pipeE,__ZN6loguru17g_preamble_uptimeE
	.globl	__ZN6loguru18g_colorlogtostderrE
	.set	__ZN6loguru18g_colorlogtostderrE,__ZN6loguru17g_preamble_uptimeE
	.globl	__ZN6loguruL17s_strip_file_pathE.lto_priv.0
	.set	__ZN6loguruL17s_strip_file_pathE.lto_priv.0,__ZN6loguru17g_preamble_uptimeE
	.globl	__ZN6loguru10g_preambleE
	.set	__ZN6loguru10g_preambleE,__ZN6loguru17g_preamble_uptimeE
	.globl	_g_ImGuiCaptureInput
	.set	_g_ImGuiCaptureInput,__ZN6loguru17g_preamble_uptimeE
	.globl	__ZN6loguru17g_preamble_headerE
	.set	__ZN6loguru17g_preamble_headerE,__ZN6loguru17g_preamble_uptimeE
	.globl	__ZL12modeschecked.lto_priv.0
	.bss
__ZL12modeschecked.lto_priv.0:
	.space 1
	.globl	_videomodereset
_videomodereset:
	.space 1
	.globl	_fullscreen
	.align 4
_fullscreen:
	.space 4
	.globl	_bpp
	.align 4
_bpp:
	.space 4
.lcomm __ZZ15drawoverheadmapiiisE8pspr_ndx,32,32
.lcomm __ZZ12FunctionKeysP12PLAYERstructE9rts_delay,4,4
	.globl	_y_max_bound
	.align 4
_y_max_bound:
	.space 4
	.globl	_x_max_bound
	.align 4
_x_max_bound:
	.space 4
	.globl	_y_min_bound
	.align 4
_y_min_bound:
	.space 4
	.globl	_x_min_bound
	.align 4
_x_min_bound:
	.space 4
.lcomm __ZZ16MoveScrollMode2DP12PLAYERstructE6mfsvel,4,4
.lcomm __ZZ16MoveScrollMode2DP12PLAYERstructE5mfvel,4,4
	.globl	_inputchecked
	.align 4
_inputchecked:
	.space 4
	.globl	_MenuButtonAutoAim
_MenuButtonAutoAim:
	.space 1
	.globl	_MenuButtonAutoRun
_MenuButtonAutoRun:
	.space 1
.lcomm __ZZ8getinputP9SW_PACKEThE12turnheldtime,4,4
	.globl	_CONTROL_ButtonHeldState
	.align 8
_CONTROL_ButtonHeldState:
	.space 8
	.globl	_elapsedInputTicks
	.align 8
_elapsedInputTicks:
	.space 8
.lcomm __ZZ8getinputP9SW_PACKEThE14lastInputTicks,8,8
	.globl	_quotebotgoal
	.align 4
_quotebotgoal:
	.space 4
	.globl	_quotebot
	.align 4
_quotebot:
	.space 4
.lcomm __ZZ15GetMessageInputP12PLAYERstructE22HoldMessageInputString,256,32
.lcomm __ZZ15GetMessageInputP12PLAYERstructE11TeamSendAll,1,1
	.globl	_LastSaveNum
	.data
	.align 2
_LastSaveNum:
	.word	99
	.globl	_QuickLoadNum
	.align 2
_QuickLoadNum:
	.word	-1
	.section .rdata,"dr"
LC212:
	.ascii "/?\0"
LC213:
	.ascii "-?\0"
LC214:
	.ascii "This help message\0"
LC215:
	.ascii "/map\0"
LC216:
	.ascii "-map [mapname]\0"
LC217:
	.ascii "Load a map\0"
LC218:
	.ascii "/nocdaudio\0"
LC219:
	.ascii "-nocd<audio>\0"
LC220:
	.ascii "No CD Red Book Audio\0"
LC221:
	.ascii "/name\0"
LC222:
	.ascii "-name [playername]\0"
LC223:
	.ascii "Player Name\0"
LC224:
	.ascii "/aim#\0"
LC225:
	.ascii "-aim#\0"
	.align 4
LC226:
	.ascii "Temporarily override AutoAim: 0=off, 1=on\0"
LC227:
	.ascii "/flags###\0"
LC228:
	.ascii "-flags###\0"
	.align 4
LC229:
	.ascii "CTF capture limit (1-100; omit for unlimited)\0"
LC230:
	.ascii "/s\0"
LC231:
	.ascii "-s#\0"
LC232:
	.ascii "Skill (1-4)\0"
LC233:
	.ascii "/f#\0"
LC234:
	.ascii "-f#\0"
LC235:
	.ascii "Packet Duplication - 2, 4, 8\0"
LC236:
	.ascii "/nopredict\0"
LC237:
	.ascii "-nopred<ict>\0"
LC238:
	.ascii "Disable Net Prediction Method\0"
LC239:
	.ascii "/level#\0"
LC240:
	.ascii "-level#\0"
	.align 4
LC241:
	.ascii "Start at level# (Shareware: 1-4, full version 1-28)\0"
LC242:
	.ascii "/dr\0"
LC243:
	.ascii "-dr[filename.dmo]\0"
	.align 4
LC244:
	.ascii "Demo record. NOTE: Must use -level# with this option.\0"
LC245:
	.ascii "/dp\0"
LC246:
	.ascii "-dp[filename.dmo]\0"
	.align 4
LC247:
	.ascii "Demo playback. NOTE: Must use -level# with this option.\0"
LC248:
	.ascii "/mdr\0"
LC249:
	.ascii "-mdr\0"
	.align 4
LC250:
	.ascii "Multiplayer: non-pedantic play with extended demo recording (all players need it; put it before -net)\0"
LC251:
	.ascii "/wpn\0"
LC252:
	.ascii "-wpn\0"
	.align 4
LC253:
	.ascii "With -mdr: WangBang weapons stay once picked up, as in Cooperative (all players need it)\0"
LC254:
	.ascii "/trix\0"
LC255:
	.ascii "-trix\0"
	.align 4
LC256:
	.ascii "With -mdr: bunny rockets for everybody, like the swtrix cheat (all players need it)\0"
LC257:
	.ascii "/scorequit\0"
LC258:
	.ascii "-scorequit\0"
	.align 4
LC259:
	.ascii "Multiplayer: quit the game after the scoreboard when the frag limit is reached\0"
LC260:
	.ascii "/m\0"
LC261:
	.ascii "-monst<ers>\0"
LC262:
	.ascii "No Monsters\0"
LC263:
	.ascii "/nodemo\0"
LC264:
	.ascii "-nodemo\0"
LC265:
	.ascii "No demos on game startup\0"
LC266:
	.ascii "/nometers\0"
LC267:
	.ascii "-nometers\0"
	.align 4
LC268:
	.ascii "Don't show air or boss meter bars in game\0"
LC269:
	.ascii "/movescale #\0"
LC270:
	.ascii "-movescale\0"
	.align 4
LC271:
	.ascii "Adjust movement scale: 256 = 1 unit\0"
LC272:
	.ascii "/turnscale #\0"
LC273:
	.ascii "-turnscale\0"
	.align 4
LC274:
	.ascii "Adjust turning scale: 256 = 1 unit\0"
LC275:
	.ascii "/extcompat\0"
LC276:
	.ascii "-extcompat\0"
	.align 4
LC277:
	.ascii "Controller compatibility mode (with Duke 3D)\0"
LC278:
	.ascii "/g#\0"
LC279:
	.ascii "-g[filename.grp]\0"
LC280:
	.ascii "Load an extra GRP or ZIP file\0"
LC281:
	.ascii "/h#\0"
LC282:
	.ascii "-h[filename.def]\0"
	.align 4
LC283:
	.ascii "Use filename.def instead of SW.DEF\0"
LC284:
	.ascii "/setup\0"
LC285:
	.ascii "-setup\0"
	.align 4
LC286:
	.ascii "Displays the configuration dialogue box\0"
	.align 32
_cli_arg:
	.byte	0
	.space 3
	.long	LC212
	.word	2
	.space 2
	.long	LC213
	.long	LC214
	.byte	1
	.space 3
	.long	LC215
	.word	4
	.space 2
	.long	LC216
	.long	LC217
	.byte	1
	.space 3
	.long	LC218
	.word	5
	.space 2
	.long	LC219
	.long	LC220
	.byte	0
	.space 3
	.long	LC221
	.word	5
	.space 2
	.long	LC222
	.long	LC223
	.byte	0
	.space 3
	.long	LC224
	.word	5
	.space 2
	.long	LC225
	.long	LC226
	.byte	0
	.space 3
	.long	LC227
	.word	9
	.space 2
	.long	LC228
	.long	LC229
	.byte	0
	.space 3
	.long	LC230
	.word	2
	.space 2
	.long	LC231
	.long	LC232
	.byte	0
	.space 3
	.long	LC233
	.word	3
	.space 2
	.long	LC234
	.long	LC235
	.byte	0
	.space 3
	.long	LC236
	.word	7
	.space 2
	.long	LC237
	.long	LC238
	.byte	0
	.space 3
	.long	LC239
	.word	5
	.space 2
	.long	LC240
	.long	LC241
	.byte	0
	.space 3
	.long	LC242
	.word	3
	.space 2
	.long	LC243
	.long	LC244
	.byte	0
	.space 3
	.long	LC245
	.word	3
	.space 2
	.long	LC246
	.long	LC247
	.byte	0
	.space 3
	.long	LC248
	.word	4
	.space 2
	.long	LC249
	.long	LC250
	.byte	0
	.space 3
	.long	LC251
	.word	4
	.space 2
	.long	LC252
	.long	LC253
	.byte	0
	.space 3
	.long	LC254
	.word	5
	.space 2
	.long	LC255
	.long	LC256
	.byte	0
	.space 3
	.long	LC257
	.word	10
	.space 2
	.long	LC258
	.long	LC259
	.byte	0
	.space 3
	.long	LC260
	.word	6
	.space 2
	.long	LC261
	.long	LC262
	.byte	0
	.space 3
	.long	LC263
	.word	6
	.space 2
	.long	LC264
	.long	LC265
	.byte	0
	.space 3
	.long	LC266
	.word	9
	.space 2
	.long	LC267
	.long	LC268
	.byte	0
	.space 3
	.long	LC269
	.word	9
	.space 2
	.long	LC270
	.long	LC271
	.byte	0
	.space 3
	.long	LC272
	.word	9
	.space 2
	.long	LC273
	.long	LC274
	.byte	0
	.space 3
	.long	LC275
	.word	9
	.space 2
	.long	LC276
	.long	LC277
	.byte	1
	.space 3
	.long	LC278
	.word	2
	.space 2
	.long	LC279
	.long	LC280
	.byte	1
	.space 3
	.long	LC281
	.word	2
	.space 2
	.long	LC282
	.long	LC283
	.byte	0
	.space 3
	.long	LC284
	.word	5
	.space 2
	.long	LC285
	.long	LC286
.lcomm __ZL9g_rootDir,256,32
	.globl	__ZN6loguru20g_internal_verbosityE
	.bss
	.align 4
__ZN6loguru20g_internal_verbosityE:
	.space 4
	.globl	__ZL14user_callbacks.lto_priv.0
	.align 32
__ZL14user_callbacks.lto_priv.0:
	.space 32
.lcomm __ZL8grpcache,4,4
.lcomm __ZL12usedgrpcache,4,4
	.section .rdata,"dr"
LC287:
	.ascii "*.grp\0"
LC288:
	.ascii "*.ssi\0"
LC289:
	.ascii "*.dat\0"
LC290:
	.ascii "*.zip\0"
	.data
	.align 4
__ZZ10ScanGroupsvE10extensions:
	.long	LC287
	.long	LC288
	.long	LC289
	.long	LC290
	.section .rdata,"dr"
LC291:
	.ascii "Shadow Warrior\0"
LC292:
	.ascii "Shadow Warrior (Europe)\0"
LC293:
	.ascii "Shadow Warrior (UK)\0"
LC294:
	.ascii "Shadow Warrior (Censored)\0"
LC295:
	.ascii "Shadow Warrior Shareware 1.0\0"
LC296:
	.ascii "Shadow Warrior Shareware 1.1\0"
LC297:
	.ascii "Shadow Warrior Shareware 1.2\0"
LC298:
	.ascii "Shadow Warrior Mac Demo\0"
LC299:
	.ascii "Wanton Destruction\0"
LC300:
	.ascii "Twin Dragon\0"
	.data
	.align 32
__ZL8grpfiles:
	.long	LC291
	.long	1967468959
	.long	47536148
	.word	0
	.word	0
	.long	0
	.long	0
	.long	LC292
	.long	-727588525
	.long	47536148
	.word	0
	.word	0
	.long	0
	.long	0
	.long	LC293
	.long	1055295335
	.long	47536148
	.word	0
	.word	0
	.long	0
	.long	0
	.long	LC294
	.long	445085394
	.long	47537951
	.word	0
	.word	0
	.long	0
	.long	0
	.long	LC295
	.long	-626606386
	.long	25702245
	.word	1
	.word	0
	.long	0
	.long	0
	.long	LC296
	.long	-233149643
	.long	25833456
	.word	1
	.word	0
	.long	0
	.long	0
	.long	LC297
	.long	145226271
	.long	26056769
	.word	1
	.word	0
	.long	0
	.long	0
	.long	LC298
	.long	1109914933
	.long	26056769
	.word	1
	.word	0
	.long	0
	.long	0
	.long	LC299
	.long	-1448433737
	.long	48698128
	.word	2
	.word	1
	.long	1967468959
	.long	0
	.long	LC300
	.long	-1582933016
	.long	12499012
	.word	4
	.word	1
	.long	1967468959
	.long	__ZL18process_tdragongrpi.lto_priv.0
	.long	LC300
	.long	-1396122402
	.long	6235578
	.word	4
	.word	1
	.long	1967468959
	.long	0
	.long	LC300
	.long	-1246293385
	.long	6236287
	.word	4
	.word	1
	.long	1967468959
	.long	0
	.globl	__ZL8settings.lto_priv.0
	.bss
	.align 32
__ZL8settings.lto_priv.0:
	.space 40
	.globl	_glrendmode
	.data
	.align 4
_glrendmode:
	.long	3
	.globl	__ZL4done.lto_priv.0
	.align 4
__ZL4done.lto_priv.0:
	.long	-1
	.globl	__ZL10startupdlg.lto_priv.0
	.bss
	.align 4
__ZL10startupdlg.lto_priv.0:
	.space 4
	.section .rdata,"dr"
	.align 4
_CSWTCH.65:
	.long	1967468959
	.long	-1448433737
	.long	-1582933016
.lcomm _g_selectedGrp,4,4
	.globl	__ZL14searchpathhead.lto_priv.0
	.bss
	.align 4
__ZL14searchpathhead.lto_priv.0:
	.space 4
.lcomm __ZL9user_args,25600,32
.lcomm __ZL10con_argnum,1,1
	.globl	_kzfs
	.align 32
_kzfs:
	.space 44
	.globl	__ZL9kzcurhand.lto_priv.0
	.data
	.align 4
__ZL9kzcurhand.lto_priv.0:
	.long	-1
	.globl	_NoHide
	.bss
_NoHide:
	.space 1
	.globl	__ZL19DemoDropSidecarPath.lto_priv.0
	.align 4
__ZL19DemoDropSidecarPath.lto_priv.0:
	.space 24
	.globl	__ZL18DemoDropSearchPath.lto_priv.0
	.align 4
__ZL18DemoDropSearchPath.lto_priv.0:
	.space 24
	.globl	_dragDemo
	.align 4
_dragDemo:
	.space 24
	.globl	_MOUSEHIDE
	.data
	.align 4
_MOUSEHIDE:
	.long	1
	.globl	_ScoreQuit
	.bss
_ScoreQuit:
	.space 1
	.globl	_NumSyncBytes
	.data
	.align 2
_NumSyncBytes:
	.word	1
	.globl	_ShortGameMode
	.bss
_ShortGameMode:
	.space 1
	.data
	.align 4
_move_scale:
	.long	256
	.align 4
_turn_scale:
	.long	256
	.globl	_VoidJumpBugCompat
	.bss
_VoidJumpBugCompat:
	.space 1
	.globl	_g_controllerSupportFlags
_g_controllerSupportFlags:
	.space 1
	.globl	_checkFirstArg
	.section .rdata,"dr"
_checkFirstArg:
	.space 1
	.globl	_m32_osd_tryscript
	.set	_m32_osd_tryscript,_checkFirstArg
	.globl	_CONTROL_BindsEnabled
	.set	_CONTROL_BindsEnabled,_checkFirstArg
	.globl	_DebugOperate
	.bss
_DebugOperate:
	.space 1
	.section .rdata,"dr"
LC301:
	.ascii "Home Sweet Home\0"
LC302:
	.ascii "City of Despair\0"
LC303:
	.ascii "Emergency Room\0"
LC304:
	.ascii "Hide and Seek\0"
LC305:
	.ascii "Warehouse Madness\0"
LC306:
	.ascii "Weapons Research Center\0"
LC307:
	.ascii "Toxic Waste Facility\0"
LC308:
	.ascii "Silver Bullet\0"
LC309:
	.ascii "Fishing Village\0"
LC310:
	.ascii "Secret Garden\0"
LC311:
	.ascii "Hung Lo's Fortress\0"
LC312:
	.ascii "Hung Lo's Palace\0"
LC313:
	.ascii "Prison Camp\0"
LC314:
	.ascii "Ninja Training Camp (DM only)\0"
LC315:
	.ascii "The Morgue/Mortuary (DM only)\0"
LC316:
	.ascii "Island Caves (DM only)\0"
	.align 32
__ZL12LevelNamesTD:
	.byte	5
	.space 3
	.long	LC301
	.byte	6
	.space 3
	.long	LC302
	.byte	7
	.space 3
	.long	LC303
	.byte	8
	.space 3
	.long	LC304
	.byte	9
	.space 3
	.long	LC305
	.byte	10
	.space 3
	.long	LC306
	.byte	11
	.space 3
	.long	LC307
	.byte	12
	.space 3
	.long	LC308
	.byte	13
	.space 3
	.long	LC309
	.byte	14
	.space 3
	.long	LC310
	.byte	15
	.space 3
	.long	LC311
	.byte	20
	.space 3
	.long	LC312
	.byte	21
	.space 3
	.long	LC313
	.byte	23
	.space 3
	.long	LC314
	.byte	24
	.space 3
	.long	LC315
	.byte	25
	.space 3
	.long	LC316
LC317:
	.ascii "Chinatown\0"
LC318:
	.ascii "Monastery\0"
LC319:
	.ascii "Trolley Yard\0"
LC320:
	.ascii "Restaurant\0"
LC321:
	.ascii "Skyscraper\0"
LC322:
	.ascii "Airplane\0"
LC323:
	.ascii "Military Base\0"
LC324:
	.ascii "Train\0"
LC325:
	.ascii "Auto Factory\0"
LC326:
	.ascii "Skyline\0"
LC327:
	.ascii "Redwood Forest\0"
LC328:
	.ascii "The Docks\0"
LC329:
	.ascii "Waterfight (DM only)\0"
LC330:
	.ascii "Wanton DM 1 (DM only)\0"
LC331:
	.ascii "Wanton DM 2 (DM only)\0"
LC332:
	.ascii "Wanton CTF (CTF)\0"
	.align 32
__ZL12LevelNamesWD:
	.byte	5
	.space 3
	.long	LC317
	.byte	6
	.space 3
	.long	LC318
	.byte	7
	.space 3
	.long	LC319
	.byte	8
	.space 3
	.long	LC320
	.byte	9
	.space 3
	.long	LC321
	.byte	10
	.space 3
	.long	LC322
	.byte	11
	.space 3
	.long	LC323
	.byte	12
	.space 3
	.long	LC324
	.byte	13
	.space 3
	.long	LC325
	.byte	20
	.space 3
	.long	LC326
	.byte	21
	.space 3
	.long	LC327
	.byte	22
	.space 3
	.long	LC328
	.byte	23
	.space 3
	.long	LC329
	.byte	24
	.space 3
	.long	LC330
	.byte	25
	.space 3
	.long	LC331
	.byte	27
	.space 3
	.long	LC332
	.globl	_GLOBALHIDE
	.bss
	.align 4
_GLOBALHIDE:
	.space 4
.lcomm _g_useCwd,4,4
.lcomm _MODNAME,16,4
	.globl	__ZL8g_noLogo.lto_priv.0
	.align 4
__ZL8g_noLogo.lto_priv.0:
	.space 4
.lcomm _g_noSetup,4,4
.lcomm _CommandSetup,1,1
	.globl	_predictmovefifoplc
	.align 4
_predictmovefifoplc:
	.space 4
	.globl	_dashow2dsector
	.align 32
_dashow2dsector:
	.space 512
	.globl	_movefifosendplc
	.align 4
_movefifosendplc:
	.space 4
	.globl	_otherminlag
	.align 4
_otherminlag:
	.space 4
	.globl	__ZL7packbuf.lto_priv.0
	.align 32
__ZL7packbuf.lto_priv.0:
	.space 576
	.data
	.align 4
_bufferjitter:
	.long	1
	.globl	_mymaxlag
	.bss
	.align 4
_mymaxlag:
	.space 4
.lcomm _AveragePacket,28,8
	.globl	_movefifoplc
	.align 4
_movefifoplc:
	.space 4
	.section .rdata,"dr"
	.align 4
LC9:
	.long	1077936128
	.align 4
LC10:
	.long	1056964608
	.align 4
LC11:
	.long	-1090519040
	.align 4
LC12:
	.long	1602224128
	.align 4
LC13:
	.long	1148846080
	.align 4
LC14:
	.long	1315859240
	.align 4
LC18:
	.long	1199570944
	.align 4
LC19:
	.long	1109393408
	.align 4
LC205:
	.long	__ZL23_internal_drawosdcursoriiii.lto_priv.0
	.align 4
LC206:
	.long	__ZL21_internal_drawosdchariicii.lto_priv.0
	.align 4
LC207:
	.long	_BGetTime.lto_priv.0
	.align 4
LC208:
	.long	__ZL22_internal_getrowheighti.lto_priv.0
	.align 4
LC209:
	.long	LC129
	.align 4
LC210:
	.long	LC128
	.def	___moddi3;	.scl	2;	.type	32;	.endef
	.def	___divdi3;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEjjPKcj;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEj;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj;	.scl	2;	.type	32;	.endef
	.def	__ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	__Z20MNU_InputSmallStringPcs.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_memcmp;	.scl	2;	.type	32;	.endef
	.def	_sscanf;	.scl	2;	.type	32;	.endef
	.def	__Z14CON_CommandCmpPKcS0_i;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	__Z15SetRedrawScreenP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z22CON_ProcessUserCommandv;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	__Z13netsendpacketiPhi;	.scl	2;	.type	32;	.endef
	.def	_snprintf;	.scl	2;	.type	32;	.endef
	.def	__Z22DemoAutoRecordChatLinePKc;	.scl	2;	.type	32;	.endef
	.def	__Z10OSD_PrintfPKcz;	.scl	2;	.type	32;	.endef
	.def	__Z12adduserquotePKc;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	__Z8LoadGames;	.scl	2;	.type	32;	.endef
	.def	_enet_gettime.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZL18controlPollDevicesP11ControlInfo.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL26controlUpdateGameFunctionsv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_fix16_div;	.scl	2;	.type	32;	.endef
	.def	__Z17MNU_MeasureStringPKcPsS1_;	.scl	2;	.type	32;	.endef
	.def	__Z14PutStringTimerP12PLAYERstructssPKcs;	.scl	2;	.type	32;	.endef
	.def	__Z9PauseSongh;	.scl	2;	.type	32;	.endef
	.def	__Z13PutStringInfoP12PLAYERstructPKc;	.scl	2;	.type	32;	.endef
	.def	__Z10SetFragBarP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_paletteSetColorTable;	.scl	2;	.type	32;	.endef
	.def	_videoSetPalette;	.scl	2;	.type	32;	.endef
	.def	__Z19DoPlayerDivePaletteP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z26DoPlayerNightVisionPaletteP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z17PutStringInfoLineP12PLAYERstructPKc;	.scl	2;	.type	32;	.endef
	.def	__Z15DoPlayerHorizonP12PLAYERstructPii;	.scl	2;	.type	32;	.endef
	.def	__Z12DoPlayerTurnP12PLAYERstructPii;	.scl	2;	.type	32;	.endef
	.def	__Z14pClearTextLineP12PLAYERstructl;	.scl	2;	.type	32;	.endef
	.def	__Z12PlaySoundRTSi;	.scl	2;	.type	32;	.endef
	.def	__Z18netbroadcastpacketPhi;	.scl	2;	.type	32;	.endef
	.def	__Z8SaveGames;	.scl	2;	.type	32;	.endef
	.def	__Z12InitRunLevelv;	.scl	2;	.type	32;	.endef
	.def	_MV_SetVolume;	.scl	2;	.type	32;	.endef
	.def	__Z13SetSongVolumei;	.scl	2;	.type	32;	.endef
	.def	_handleevents.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z12OSD_DispatchPKcb;	.scl	2;	.type	32;	.endef
	.def	__Z10getpacketsv;	.scl	2;	.type	32;	.endef
	.def	__Z12DoPredictionP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z10drawscreenP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z16timerUpdateClockv;	.scl	2;	.type	32;	.endef
	.def	__Z10EncodeBitsP9SW_PACKETS0_Ph;	.scl	2;	.type	32;	.endef
	.def	__Z19AddSyncInfoToPacketPi;	.scl	2;	.type	32;	.endef
	.def	__Z12domovethingsv;	.scl	2;	.type	32;	.endef
	.def	__Z16OSD_CaptureInputi;	.scl	2;	.type	32;	.endef
	.def	__Z17MNU_CheckForMenusv;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.2;	.scl	2;	.type	32;	.endef
	.def	_renderSetAspect;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	__Z12minigametextiiPKcs.isra.0;	.scl	2;	.type	32;	.endef
	.def	_renderDrawLine;	.scl	2;	.type	32;	.endef
	.def	_videoSetCorrectedAspect;	.scl	2;	.type	32;	.endef
	.def	_rotatesprite_.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_videoSetGameMode;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_strcasecmp;	.scl	2;	.type	32;	.endef
	.def	_Bcorrectfilename.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZL24_internal_getcolumnwidthi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL20_internal_drawosdstriiPKciii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL19_internal_onshowosdi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_COMMON_clearbackground;	.scl	2;	.type	32;	.endef
	.def	__xstrdup;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_strncasecmp;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_strcat;	.scl	2;	.type	32;	.endef
	.def	_wm_msgbox;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru10file_flushEPv;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru8file_logEPvRKNS_7MessageE;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru10file_closeEPv;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru12add_callbackEPKcPFvPvRKNS_7MessageEES2_iPFvS2_ES9_;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguruL21print_preamble_headerEPcj.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_fprintf;	.scl	2;	.type	32;	.endef
	.def	_fflush;	.scl	2;	.type	32;	.endef
	.def	__ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_wm_setapptitle;	.scl	2;	.type	32;	.endef
	.def	__Z10buildprintIJPKcS1_S1_iS1_iS1_iS1_EEjDpT_.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	_getcwd;	.scl	2;	.type	32;	.endef
	.def	_addsearchpath_user;	.scl	2;	.type	32;	.endef
	.def	__Z16CONFIG_ReadSetupv;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	_enginePreInit;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_fromfile;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_close;	.scl	2;	.type	32;	.endef
	.def	_klistpath;	.scl	2;	.type	32;	.endef
	.def	_findfrompath;	.scl	2;	.type	32;	.endef
	.def	_open;	.scl	2;	.type	32;	.endef
	.def	_Bcrc32;	.scl	2;	.type	32;	.endef
	.def	_read;	.scl	2;	.type	32;	.endef
	.def	_close;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_gettoken;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_getnumber;	.scl	2;	.type	32;	.endef
	.def	_strncpy;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	__ZL17SW_AddSearchPathsv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z8OSD_Initv;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
	.def	__ZL7SetPagei.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL12EnableConfigb.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL12PopulateFormi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL25SW_LoadGrpDependencyChainPK7grpfile.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_kopen4load.part.0;	.scl	2;	.type	32;	.endef
	.def	_kclose;	.scl	2;	.type	32;	.endef
	.def	_stricmp;	.scl	2;	.type	32;	.endef
	.def	_getenv;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru13log_and_abortEiPKcS1_jS1_z;	.scl	2;	.type	32;	.endef
	.def	_engineUnInit;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
	.def	_chdir;	.scl	2;	.type	32;	.endef
	.def	_strlwr;	.scl	2;	.type	32;	.endef
	.def	__Z8InitGameiPKPKc;	.scl	2;	.type	32;	.endef
	.def	__Z7ControliPKPKc.part.0;	.scl	2;	.type	32;	.endef
	.def	_mkdir;	.scl	2;	.type	32;	.endef
	.def	__ZL16SW_TryLoadingGrpPKcPK15internalgrpfile.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_getlinum;	.scl	2;	.type	32;	.endef
	.def	_atoi;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_;	.scl	2;	.type	32;	.endef
	.def	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEjj;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv;	.scl	2;	.type	32;	.endef
	.def	__Z14DemoReadHeaderv;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructILb1EEEvPKcj;	.scl	2;	.type	32;	.endef
	.def	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcj;	.scl	2;	.type	32;	.endef
	.def	__ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev;	.scl	2;	.type	32;	.endef
	.def	__ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode;	.scl	2;	.type	32;	.endef
	.def	__ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE;	.scl	2;	.type	32;	.endef
	.def	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcj;	.scl	2;	.type	32;	.endef
	.def	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcj;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEjj;	.scl	2;	.type	32;	.endef
	.def	__ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode;	.scl	2;	.type	32;	.endef
	.def	__ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	__ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv;	.scl	2;	.type	32;	.endef
	.def	__ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate;	.scl	2;	.type	32;	.endef
	.def	__ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE;	.scl	2;	.type	32;	.endef
	.def	_initgroupfile;	.scl	2;	.type	32;	.endef
	.def	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcj;	.scl	2;	.type	32;	.endef
	.def	_wm_msgbox.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru24current_verbosity_cutoffEv;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcj;	.scl	2;	.type	32;	.endef
	.def	__ZSt24__throw_out_of_range_fmtPKcz;	.scl	2;	.type	32;	.endef
	.def	__ZL18process_tdragongrpi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL23_internal_drawosdcursoriiii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL21_internal_drawosdchariicii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_BGetTime.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL22_internal_getrowheighti.lto_priv.0;	.scl	2;	.type	32;	.endef
