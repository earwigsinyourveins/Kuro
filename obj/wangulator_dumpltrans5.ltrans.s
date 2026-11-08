	.file	"<artificial>"
	.text
	.p2align 4
	.def	_getnumber_internal1;	.scl	3;	.type	32;	.endef
_getnumber_internal1:
LFB0:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%edi, 16(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	leal	-48(%edi), %eax
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	%esi, 12(%esp)
	.cfi_offset 6, -16
	movl	%ecx, %esi
	movl	(%edx), %ecx
	cmpb	$9, %al
	ja	L2
	testl	%ecx, %ecx
	js	L3
	movl	%ecx, %eax
	movl	$10, %edx
	movl	%ebp, 20(%esp)
	.cfi_offset 5, -8
	movl	%esi, %ebp
	imull	%edx
	movl	%edx, 4(%esp)
	movl	%edi, %edx
	movl	%eax, (%esp)
	movzbl	%dl, %eax
	subl	$48, %eax
	cltd
	addl	(%esp), %eax
	adcl	4(%esp), %edx
	sarl	$31, %ebp
	movl	%ebp, 4(%esp)
	cmpl	%eax, %esi
	movl	20(%esp), %ebp
	.cfi_restore 5
	movl	%esi, (%esp)
	movl	4(%esp), %esi
	sbbl	%edx, %esi
	cmovge	%eax, %ecx
L5:
	movl	%ecx, (%ebx)
	xorl	%eax, %eax
L1:
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	movl	16(%esp), %edi
	addl	$24, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2:
	.cfi_restore_state
	movl	%edi, %eax
	cmpb	$8, %al
	je	L11
	cmpb	$127, %al
	je	L11
	movl	%edi, %edx
	movl	$1, %eax
	cmpb	$13, %dl
	je	L1
	cmpb	$45, %dl
	jne	L5
	movl	%ecx, %eax
	negl	%eax
	testb	$1, 28(%esp)
	cmovne	%eax, %ecx
	jmp	L5
	.p2align 4,,10
	.p2align 3
L3:
	cmpb	$0, 28(%esp)
	je	L5
	movl	%ecx, %eax
	movl	$10, %edx
	movl	%ebp, 20(%esp)
	.cfi_offset 5, -8
	imull	%edx
	movl	%edx, 4(%esp)
	movl	%edi, %edx
	movl	4(%esp), %ebp
	movl	%eax, (%esp)
	movzbl	%dl, %eax
	movl	(%esp), %edi
	subl	$48, %eax
	cltd
	subl	%eax, %edi
	sbbl	%edx, %ebp
	negl	%esi
	movl	%esi, %eax
	cltd
	cmpl	%esi, %edi
	movl	%ebp, %esi
	movl	20(%esp), %ebp
	.cfi_restore 5
	sbbl	%edx, %esi
	cmovge	%edi, %ecx
	jmp	L5
	.p2align 4,,10
	.p2align 3
L11:
	movl	$1717986919, %eax
	imull	%ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	sarl	$2, %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	jmp	L5
	.cfi_endproc
LFE0:
	.p2align 4
	.globl	__ZL13keytimerstuffv.lto_priv.0
	.def	__ZL13keytimerstuffv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL13keytimerstuffv.lto_priv.0:
LFB1:
	.cfi_startproc
	movzbl	_buildkeys+2, %eax
	movl	__ZL6angvel.lto_priv.0, %ecx
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movzbl	_buildkeys+5, %ebx
	movl	__ZL4svel.lto_priv.0, %edx
	movzbl	_keystatus(%eax), %eax
	cmpb	$0, _keystatus(%ebx)
	jne	L21
	testb	%al, %al
	je	L22
	subl	_pk_turnaccel, %ecx
	movl	$-127, %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	movl	%ecx, __ZL6angvel.lto_priv.0
L22:
	movzbl	_buildkeys+3, %eax
	cmpb	$0, _keystatus(%eax)
	jne	L49
L23:
	movzbl	_buildkeys, %ebx
	movl	__ZL3vel.lto_priv.0, %eax
	cmpb	$0, _keystatus(%ebx)
	je	L25
	addl	$16, %eax
	movl	$255, %ebx
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	movl	%eax, __ZL3vel.lto_priv.0
L25:
	movzbl	_buildkeys+1, %ebx
	cmpb	$0, _keystatus(%ebx)
	je	L26
	subl	$16, %eax
	movl	$-255, %ebx
	cmpl	%ebx, %eax
	cmovl	%ebx, %eax
	movl	%eax, __ZL3vel.lto_priv.0
L26:
	testl	%ecx, %ecx
	js	L50
	je	L28
	subl	_pk_turndecel, %ecx
	movl	$0, %ebx
	cmovs	%ebx, %ecx
	movl	%ecx, __ZL6angvel.lto_priv.0
L28:
	testl	%edx, %edx
	js	L51
	je	L30
	subl	$6, %edx
	movl	$0, %ecx
	cmovs	%ecx, %edx
	movl	%edx, __ZL4svel.lto_priv.0
L30:
	testl	%eax, %eax
	js	L52
	je	L20
	subl	$6, %eax
	movl	$0, %edx
	cmovs	%edx, %eax
	movl	%eax, __ZL3vel.lto_priv.0
L20:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L21:
	.cfi_restore_state
	testb	%al, %al
	je	L24
	addl	$16, %edx
	movl	$255, %eax
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	movl	%edx, __ZL4svel.lto_priv.0
L24:
	movzbl	_buildkeys+3, %eax
	cmpb	$0, _keystatus(%eax)
	je	L23
	subl	$16, %edx
	movl	$-255, %eax
	cmpl	%eax, %edx
	cmovl	%eax, %edx
	movl	%edx, __ZL4svel.lto_priv.0
	jmp	L23
	.p2align 4,,10
	.p2align 3
L49:
	addl	_pk_turnaccel, %ecx
	movl	$127, %eax
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	%ecx, __ZL6angvel.lto_priv.0
	jmp	L23
	.p2align 4,,10
	.p2align 3
L52:
	addl	$6, %eax
	xorl	%edx, %edx
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	testl	%eax, %eax
	cmovg	%edx, %eax
	movl	%eax, __ZL3vel.lto_priv.0
	ret
	.p2align 4,,10
	.p2align 3
L51:
	.cfi_restore_state
	addl	$6, %edx
	xorl	%ecx, %ecx
	testl	%edx, %edx
	cmovg	%ecx, %edx
	movl	%edx, __ZL4svel.lto_priv.0
	jmp	L30
	.p2align 4,,10
	.p2align 3
L50:
	addl	_pk_turndecel, %ecx
	xorl	%ebx, %ebx
	testl	%ecx, %ecx
	cmovg	%ebx, %ecx
	movl	%ecx, __ZL6angvel.lto_priv.0
	jmp	L28
	.cfi_endproc
LFE1:
	.p2align 4
	.def	__ZL12GetWallBaseZi;	.scl	3;	.type	32;	.endef
__ZL12GetWallBaseZi:
LFB3:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	cwtl
	sall	$5, %ebx
	call	_sectorofwall
	addl	_wall, %ebx
	movl	_sector, %esi
	movswl	12(%ebx), %edx
	leal	(%eax,%eax,4), %eax
	movzwl	14(%ebx), %ebx
	leal	(%esi,%eax,8), %ecx
	cmpw	$-1, %dx
	je	L59
	andl	$4, %ebx
	movl	4(%ecx), %eax
	je	L60
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
L60:
	.cfi_restore_state
	leal	(%edx,%edx,4), %edx
	leal	(%esi,%edx,8), %ebx
	movl	4(%ebx), %edx
	cmpl	%eax, %edx
	movl	$0, %eax
	cmovle	%eax, %edx
	movl	8(%ebx), %eax
	cmpl	8(%ecx), %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	cmovge	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L59:
	.cfi_restore_state
	andl	$4, %ebx
	je	L55
	movl	8(%ecx), %eax
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
L55:
	.cfi_restore_state
	movl	4(%ecx), %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE3:
	.section .rdata,"dr"
	.align 4
LC0:
	.ascii "r00006[/bin/sh: line 1: git: command not found]-nohash\0"
LC1:
	.ascii "Wangulator\0"
LC2:
	.ascii "%s %s\0"
	.text
	.p2align 4
	.def	__ZL18clearministatbar16v;	.scl	3;	.type	32;	.endef
__ZL18clearministatbar16v:
LFB4:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$24, %esp
	.cfi_def_cfa_offset 36
	movzbl	_editorcolors+25, %ebx
	call	_videoBeginDrawing
	movl	_ydim, %eax
	leal	-26(%eax), %edx
	imull	$16843009, %ebx, %eax
	jmp	L63
	.p2align 4,,10
	.p2align 3
L67:
	addl	$2, %edx
	subl	$16843009, %eax
	cmpl	%ecx, %edx
	jge	L62
L63:
	movl	_bytesperline, %ecx
	movl	%ecx, %edi
	sarl	$2, %ecx
	imull	%edx, %edi
	addl	_frameplace, %edi
/APP
 # 9416 "source/build/src/build.cpp" 1
	rep; stosl
 # 0 "" 2
/NO_APP
	movl	_bytesperline, %ecx
	leal	1(%edx), %edi
	imull	%ecx, %edi
	sarl	$2, %ecx
	addl	_frameplace, %edi
/APP
 # 9417 "source/build/src/build.cpp" 1
	rep; stosl
 # 0 "" 2
/NO_APP
	subl	$1, %ebx
	movl	_ydim, %ecx
	testl	%ebx, %ebx
	jg	L67
L62:
	movl	_bytesperline, %eax
	subl	%edx, %ecx
	imull	%eax, %ecx
	movl	%eax, %edi
	xorl	%eax, %eax
	imull	%edx, %edi
	addl	_frameplace, %edi
	sarl	$2, %ecx
/APP
 # 9422 "source/build/src/build.cpp" 1
	rep; stosl
 # 0 "" 2
/NO_APP
	cmpl	$799, _xdim
	jg	L68
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	_videoEndDrawing
	.p2align 4,,10
	.p2align 3
L68:
	.cfi_restore_state
	movl	$LC0, 16(%esp)
	movl	$LC1, 12(%esp)
	movl	$LC2, 8(%esp)
	movl	$4096, 4(%esp)
	movl	$_tempbuf, (%esp)
	call	*__imp___snprintf
	movl	$_tempbuf, (%esp)
	call	_strlen
	movzbl	_editorcolors+4, %edx
	movl	_ydim, %ebx
	movl	$0, 20(%esp)
	sall	$3, %eax
	movl	$_tempbuf, 16(%esp)
	movl	%edx, 8(%esp)
	leal	-16(%ebx), %edx
	movl	_xdim, %ebx
	movl	%edx, 4(%esp)
	leal	-3(%ebx), %edx
	movl	$-1, 12(%esp)
	subl	%eax, %edx
	movl	%edx, (%esp)
	call	_printext16
	movl	$_tempbuf, (%esp)
	call	_strlen
	movzbl	_editorcolors+12, %edx
	movl	_ydim, %ebx
	movl	$0, 20(%esp)
	sall	$3, %eax
	movl	$_tempbuf, 16(%esp)
	movl	%edx, 8(%esp)
	leal	-17(%ebx), %edx
	movl	_xdim, %ebx
	movl	%edx, 4(%esp)
	leal	-2(%ebx), %edx
	movl	$-1, 12(%esp)
	subl	%eax, %edx
	movl	%edx, (%esp)
	call	_printext16
	addl	$24, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	_videoEndDrawing
	.cfi_endproc
LFE4:
	.p2align 4
	.def	__ZL19getnumber_clearlinev;	.scl	3;	.type	32;	.endef
__ZL19getnumber_clearlinev:
LFB6:
	.cfi_startproc
	subl	$156, %esp
	.cfi_def_cfa_offset 160
	movl	_xdim, %eax
	sarl	$3, %eax
	testl	%eax, %eax
	jle	L78
	movl	$127, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	leal	24(%esp), %edx
	cmpl	$16, %eax
	jb	L87
	leal	-1(%eax), %ecx
	movl	$538976288, 8(%esp,%eax)
	movl	$538976288, 12(%esp,%eax)
	movl	$538976288, 16(%esp,%eax)
	movl	$538976288, 20(%esp,%eax)
	cmpl	$16, %ecx
	jb	L70
	andl	$-16, %ecx
	movl	%ebx, 152(%esp)
	.cfi_offset 3, -8
	movl	%ecx, %ebx
	xorl	%ecx, %ecx
L76:
	movl	$538976288, (%edx,%ecx)
	movl	$538976288, 4(%edx,%ecx)
	movl	$538976288, 8(%edx,%ecx)
	movl	$538976288, 12(%edx,%ecx)
	addl	$16, %ecx
	cmpl	%ebx, %ecx
	jb	L76
	movl	152(%esp), %ebx
	.cfi_restore 3
L70:
	movb	$0, 24(%esp,%eax)
	movzbl	_whitecol, %eax
	movl	$0, 20(%esp)
	movl	%edx, 16(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_printext256
	addl	$156, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L87:
	.cfi_restore_state
	testb	$8, %al
	jne	L88
	testb	$4, %al
	jne	L89
	testl	%eax, %eax
	je	L70
	movb	$32, 24(%esp)
	testb	$2, %al
	je	L70
	movl	$8224, %ecx
	movw	%cx, 22(%esp,%eax)
	jmp	L70
	.p2align 4,,10
	.p2align 3
L78:
	xorl	%eax, %eax
	leal	24(%esp), %edx
	jmp	L70
L88:
	movl	$538976288, 24(%esp)
	movl	$538976288, 28(%esp)
	movl	$538976288, 16(%esp,%eax)
	movl	$538976288, 20(%esp,%eax)
	jmp	L70
L89:
	movl	$538976288, 24(%esp)
	movl	$538976288, 20(%esp,%eax)
	jmp	L70
	.cfi_endproc
LFE6:
	.p2align 4
	.def	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0;	.scl	3;	.type	32;	.endef
__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0:
LFB8:
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
	subl	$1016, %esp
	.cfi_def_cfa_offset 1036
	movl	%eax, (%esp)
	leal	16(%esp), %ebx
	movl	%edx, 12(%esp)
	call	_rewind
L91:
	movl	%esi, 8(%esp)
	movl	$1000, 4(%esp)
	movl	%ebx, (%esp)
	call	_fgets
	testl	%eax, %eax
	je	L110
	cmpb	$59, 16(%esp)
	je	L91
	movl	$61, 4(%esp)
	movl	%ebx, (%esp)
	call	_strchr
	movl	%eax, %ebp
	testl	%eax, %eax
	je	L91
	movzbl	16(%esp), %eax
	movl	%ebx, %edx
	cmpb	$9, %al
	je	L124
	cmpb	$32, %al
	jne	L94
	.p2align 4
	.p2align 4
	.p2align 3
L124:
	movzbl	1(%edx), %eax
	addl	$1, %edx
	cmpb	$32, %al
	je	L124
	cmpb	$9, %al
	je	L124
L94:
	movzbl	-1(%ebp), %eax
	movb	$0, 0(%ebp)
	cmpb	$9, %al
	je	L97
	cmpb	$32, %al
	jne	L100
L97:
	leal	-1(%ebp), %eax
	.p2align 5
	.p2align 4
	.p2align 3
L99:
	cmpl	%edx, %eax
	jb	L100
	movzbl	-1(%eax), %ecx
	subl	$1, %eax
	movb	$0, 1(%eax)
	cmpb	$9, %cl
	je	L99
	cmpb	$32, %cl
	je	L99
L100:
	movl	12(%esp), %eax
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	movl	%eax, %edx
	testl	%eax, %eax
	jne	L91
	movzbl	1(%ebp), %eax
	leal	1(%ebp), %ebx
	cmpb	$9, %al
	je	L125
	cmpb	$32, %al
	jne	L103
	.p2align 4
	.p2align 4
	.p2align 3
L125:
	movzbl	1(%ebx), %eax
	addl	$1, %ebx
	cmpb	$32, %al
	je	L125
	cmpb	$9, %al
	je	L125
L103:
	movl	%ebx, (%esp)
	movl	$8388627, %esi
	movl	%edx, 12(%esp)
	call	_strlen
	movl	12(%esp), %edx
	leal	-1(%ebx,%eax), %ecx
	jmp	L106
	.p2align 4,,10
	.p2align 3
L108:
	movb	$0, (%ecx)
	subl	$1, %ecx
L106:
	movzbl	(%ecx), %eax
	subl	$9, %eax
	cmpb	$23, %al
	ja	L107
	btl	%eax, %esi
	jnc	L107
	cmpl	%ebx, %ecx
	jnb	L108
L107:
	movb	$0, 1023(%edi)
L109:
	movzbl	(%ebx,%edx), %eax
	movb	%al, (%edi,%edx)
	testb	%al, %al
	jne	L136
L90:
	addl	$1016, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%edx, %eax
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
L136:
	.cfi_restore_state
	addl	$1, %edx
	cmpl	$1024, %edx
	jne	L109
	addl	$1016, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1023, %edx
	popl	%ebx
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
	.p2align 4,,10
	.p2align 3
L110:
	.cfi_restore_state
	xorl	%edx, %edx
	jmp	L90
	.cfi_endproc
LFE8:
	.p2align 4
	.globl	__ZL15startup_dlgprocP6HWND__jjl.lto_priv.0@16
	.def	__ZL15startup_dlgprocP6HWND__jjl.lto_priv.0@16;	.scl	2;	.type	32;	.endef
__ZL15startup_dlgprocP6HWND__jjl.lto_priv.0@16:
LFB9:
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
	subl	$188, %esp
	movl	4(%ecx), %eax
	movl	(%ecx), %ebx
	movl	8(%ecx), %edx
	movl	12(%ecx), %esi
	cmpl	$272, %eax
	je	L138
	ja	L139
	cmpl	$16, %eax
	je	L140
	cmpl	$78, %eax
	je	L141
	cmpl	$2, %eax
	jne	L143
	movl	__ZZL15startup_dlgprocP6HWND__jjlE4hbmp, %eax
	testl	%eax, %eax
	je	L151
	movl	%eax, (%esp)
	call	*__imp__DeleteObject@4
	subl	$4, %esp
	movl	$0, __ZZL15startup_dlgprocP6HWND__jjlE4hbmp
L151:
	movl	__ZL5pages.lto_priv.0, %eax
	testl	%eax, %eax
	je	L152
	movl	%eax, (%esp)
	call	*__imp__DestroyWindow@4
	subl	$4, %esp
	movl	$0, __ZL5pages.lto_priv.0
L152:
	movl	$0, __ZL10startupdlg.lto_priv.0
L149:
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
	ret	$16
	.p2align 4,,10
	.p2align 3
L139:
	.cfi_restore_state
	cmpl	$273, %eax
	je	L144
	cmpl	$312, %eax
	jne	L143
	cmpl	%esi, __ZL5pages.lto_priv.0+4
	je	L173
L143:
	xorl	%eax, %eax
L137:
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
	ret	$16
	.p2align 4,,10
	.p2align 3
L144:
	.cfi_restore_state
	movzwl	%dx, %eax
	cmpw	$1, %dx
	je	L153
	cmpl	$2, %eax
	jne	L143
L140:
	movl	__ZL4mode, %eax
	testl	%eax, %eax
	jne	L150
	movl	$0, __ZL4done.lto_priv.0
	jmp	L149
	.p2align 4,,10
	.p2align 3
L138:
	movl	$0, -60(%ebp)
	leal	-60(%ebp), %esi
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	movl	$0, -48(%ebp)
	movl	$-16, 4(%esp)
	movl	%ebx, (%esp)
	call	*__imp__GetWindowLongA@8
	subl	$8, %esp
	movl	%esi, (%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	call	*__imp__AdjustWindowRect@12
	leal	-144(%ebp), %eax
	movl	__imp__GetWindowRect@8, %edi
	subl	$12, %esp
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	*%edi
	movl	__imp__GetDlgItem@8, %esi
	subl	$8, %esp
	movl	$101, 4(%esp)
	movl	%ebx, (%esp)
	call	*%esi
	leal	-76(%ebp), %edx
	subl	$8, %esp
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*%edi
	subl	$8, %esp
	movl	$2, 4(%esp)
	movl	%ebx, (%esp)
	call	*%esi
	leal	-92(%ebp), %edx
	subl	$8, %esp
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*%edi
	subl	$8, %esp
	movl	$1, 4(%esp)
	movl	%ebx, (%esp)
	call	*%esi
	leal	-108(%ebp), %edx
	subl	$8, %esp
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*%edi
	movl	-132(%ebp), %ecx
	subl	-48(%ebp), %ecx
	subl	$8, %esp
	movl	%ecx, -148(%ebp)
	movl	-76(%ebp), %ecx
	movl	-144(%ebp), %edx
	subl	-60(%ebp), %edx
	subl	$1, %ecx
	subl	%ecx, -68(%ebp)
	movl	-72(%ebp), %ecx
	movl	-140(%ebp), %eax
	subl	-56(%ebp), %eax
	subl	$1, %ecx
	subl	%ecx, -64(%ebp)
	movl	-76(%ebp), %ecx
	movl	-136(%ebp), %edi
	subl	-52(%ebp), %edi
	subl	%edx, %ecx
	movl	%ecx, -76(%ebp)
	movl	-72(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -72(%ebp)
	movl	-92(%ebp), %ecx
	subl	$1, %ecx
	subl	%ecx, -84(%ebp)
	movl	-88(%ebp), %ecx
	subl	$1, %ecx
	subl	%ecx, -80(%ebp)
	movl	-92(%ebp), %ecx
	subl	%edx, %ecx
	movl	%ecx, -92(%ebp)
	movl	-88(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -88(%ebp)
	movl	-108(%ebp), %ecx
	subl	$1, %ecx
	subl	%ecx, -100(%ebp)
	movl	-104(%ebp), %ecx
	movl	$0, -144(%ebp)
	movl	$0, -140(%ebp)
	subl	$1, %ecx
	subl	%ecx, -96(%ebp)
	movl	-108(%ebp), %ecx
	subl	%edx, %ecx
	subl	$1, %edx
	movl	%ecx, -108(%ebp)
	movl	-104(%ebp), %ecx
	subl	%edx, %edi
	movl	-148(%ebp), %edx
	movl	%edi, -136(%ebp)
	leal	-128(%ebp), %edi
	subl	%eax, %ecx
	subl	$1, %eax
	subl	%eax, %edx
	movl	__imp__GetModuleHandleA@4, %eax
	movl	%ecx, -104(%ebp)
	movl	%edx, -132(%ebp)
	movl	$0, (%esp)
	movl	%eax, -160(%ebp)
	call	*%eax
	subl	$4, %esp
	movl	$200, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__LoadBitmapA@8
	subl	$8, %esp
	movl	%eax, __ZZL15startup_dlgprocP6HWND__jjlE4hbmp
	movl	$100, 4(%esp)
	movl	%ebx, (%esp)
	call	*%esi
	movl	%eax, %edx
	movl	__ZZL15startup_dlgprocP6HWND__jjlE4hbmp, %eax
	subl	$8, %esp
	movl	%edx, (%esp)
	movl	%eax, 12(%esp)
	movl	__imp__SendMessageA@16, %eax
	movl	$0, 8(%esp)
	movl	$370, 4(%esp)
	movl	%edx, -152(%ebp)
	movl	%eax, -148(%ebp)
	call	*%eax
	subl	$16, %esp
	movl	%edi, 4(%esp)
	movl	__imp__GetClientRect@8, %edi
	movl	-152(%ebp), %edx
	movl	%edx, (%esp)
	movl	%edi, -152(%ebp)
	call	*%edi
	movl	-120(%ebp), %eax
	movl	-76(%ebp), %ecx
	subl	$8, %esp
	movl	-116(%ebp), %edx
	subl	-132(%ebp), %edx
	addl	%eax, %ecx
	addl	%edx, -88(%ebp)
	movl	%ecx, -76(%ebp)
	movl	%ecx, -168(%ebp)
	movl	-64(%ebp), %ecx
	addl	%edx, -104(%ebp)
	addl	%edx, %ecx
	movl	-116(%ebp), %edx
	addl	%eax, -92(%ebp)
	addl	%eax, -108(%ebp)
	movl	%ecx, %edi
	movl	%edx, -132(%ebp)
	movl	-68(%ebp), %edx
	addl	%eax, -136(%ebp)
	movl	%edx, -156(%ebp)
	movl	-72(%ebp), %edx
	movl	%ecx, -64(%ebp)
	movl	%edx, -164(%ebp)
	movl	$101, 4(%esp)
	movl	%ebx, (%esp)
	call	*%esi
	subl	$8, %esp
	movl	%edi, 16(%esp)
	movl	__imp__MoveWindow@24, %edi
	movl	$0, 20(%esp)
	movl	-156(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-164(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-168(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	*%edi
	movl	-80(%ebp), %edx
	movl	-84(%ebp), %ecx
	subl	$24, %esp
	movl	%edx, -156(%ebp)
	movl	-92(%ebp), %edx
	movl	%ecx, -164(%ebp)
	movl	-88(%ebp), %ecx
	movl	%edx, -168(%ebp)
	movl	%ecx, -172(%ebp)
	movl	$2, 4(%esp)
	movl	%ebx, (%esp)
	call	*%esi
	subl	$8, %esp
	movl	$0, 20(%esp)
	movl	-156(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	-164(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	-172(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	-168(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	*%edi
	movl	-96(%ebp), %edx
	movl	-100(%ebp), %ecx
	subl	$24, %esp
	movl	%edx, -156(%ebp)
	movl	-108(%ebp), %edx
	movl	%ecx, -164(%ebp)
	movl	-104(%ebp), %ecx
	movl	%edx, -168(%ebp)
	movl	%ecx, -172(%ebp)
	movl	$1, 4(%esp)
	movl	%ebx, (%esp)
	call	*%esi
	subl	$8, %esp
	movl	$0, 20(%esp)
	movl	-156(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	-164(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	-172(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	-168(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	*%edi
	subl	$24, %esp
	movl	$0, (%esp)
	call	*__imp__GetDC@4
	movl	__imp__GetDeviceCaps@8, %edx
	subl	$4, %esp
	movl	$8, 4(%esp)
	movl	%eax, -156(%ebp)
	movl	%eax, (%esp)
	movl	%edx, -164(%ebp)
	call	*%edx
	movl	%eax, %edx
	subl	-136(%ebp), %edx
	subl	$8, %esp
	movl	%edx, %ecx
	shrl	$31, %edx
	leal	(%edx,%ecx), %eax
	sarl	%eax
	movl	%eax, -144(%ebp)
	movl	$10, 4(%esp)
	movl	-156(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	-164(%ebp), %edx
	call	*%edx
	movl	%eax, %edx
	subl	-132(%ebp), %edx
	subl	$8, %esp
	movl	%edx, %ecx
	shrl	$31, %ecx
	leal	(%ecx,%edx), %eax
	movl	-156(%ebp), %ecx
	sarl	%eax
	movl	%eax, -140(%ebp)
	movl	%ecx, 4(%esp)
	movl	$0, (%esp)
	call	*__imp__ReleaseDC@8
	movl	-60(%ebp), %eax
	subl	$8, %esp
	movl	$1, 20(%esp)
	movl	-48(%ebp), %edx
	subl	-56(%ebp), %edx
	addl	-132(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	-52(%ebp), %edx
	subl	%eax, %edx
	addl	-136(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-140(%ebp), %edx
	addl	%eax, %edx
	movl	%edx, 8(%esp)
	addl	-144(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	*%edi
	subl	$24, %esp
	movl	$101, 4(%esp)
	movl	%ebx, (%esp)
	call	*%esi
	leal	-44(%ebp), %edx
	subl	$8, %esp
	movl	%eax, %edi
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	$1, -44(%ebp)
	movl	$__ZZL15startup_dlgprocP6HWND__jjlE9textSetup, -32(%ebp)
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	$4871, 4(%esp)
	movl	%eax, (%esp)
	movl	-148(%ebp), %eax
	call	*%eax
	leal	-44(%ebp), %edx
	subl	$16, %esp
	movl	$1, -44(%ebp)
	movl	$__ZZL15startup_dlgprocP6HWND__jjlE14textMessageLog, -32(%ebp)
	movl	%edx, 12(%esp)
	movl	%edi, (%esp)
	movl	$1, 8(%esp)
	movl	$4871, 4(%esp)
	movl	-148(%ebp), %eax
	call	*%eax
	leal	-128(%ebp), %edx
	subl	$16, %esp
	movl	$0, -128(%ebp)
	movl	$0, -124(%ebp)
	movl	$0, -120(%ebp)
	movl	$0, -116(%ebp)
	movl	%edi, (%esp)
	movl	%edx, 4(%esp)
	movl	-152(%ebp), %edx
	call	*%edx
	leal	-128(%ebp), %ecx
	subl	$8, %esp
	movl	%ecx, 12(%esp)
	movl	%edi, (%esp)
	movl	$0, 8(%esp)
	movl	$4904, 4(%esp)
	movl	-148(%ebp), %eax
	call	*%eax
	movl	-128(%ebp), %eax
	subl	$16, %esp
	leal	-1(%eax), %edx
	subl	%edx, -120(%ebp)
	movl	-124(%ebp), %edx
	addl	-76(%ebp), %eax
	leal	-1(%edx), %ecx
	addl	-72(%ebp), %edx
	subl	%ecx, -116(%ebp)
	movl	%edx, -124(%ebp)
	movl	%eax, -128(%ebp)
	movl	$0, (%esp)
	movl	-160(%ebp), %ecx
	call	*%ecx
	subl	$4, %esp
	movl	$0, 16(%esp)
	movl	$__ZL14ConfigPageProcP6HWND__jjl@16, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$2000, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__CreateDialogParamA@20
	subl	$20, %esp
	movl	%eax, __ZL5pages.lto_priv.0
	movl	$104, 4(%esp)
	movl	%ebx, (%esp)
	call	*%esi
	movl	__imp__SetWindowPos@28, %edx
	subl	$8, %esp
	movl	%eax, __ZL5pages.lto_priv.0+4
	movl	$128, 24(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-128(%ebp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	__ZL5pages.lto_priv.0, %eax
	movl	%eax, (%esp)
	movl	%edx, -156(%ebp)
	call	*%edx
	subl	$28, %esp
	movl	$128, 24(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-128(%ebp), %eax
	movl	%edi, 4(%esp)
	leal	-128(%ebp), %edi
	movl	%eax, 8(%esp)
	movl	__ZL5pages.lto_priv.0+4, %eax
	movl	%eax, (%esp)
	movl	-156(%ebp), %edx
	call	*%edx
	leal	-128(%ebp), %ecx
	subl	$28, %esp
	movl	%ecx, 4(%esp)
	movl	__ZL5pages.lto_priv.0+4, %eax
	movl	%eax, (%esp)
	movl	-152(%ebp), %edx
	call	*%edx
	subl	$8, %esp
	movl	$2, (%esp)
	call	*__imp__GetSystemMetrics@4
	subl	$4, %esp
	addl	$4, %eax
	subl	%eax, -120(%ebp)
	movl	$0, -128(%ebp)
	movl	$0, -124(%ebp)
	movl	%edi, 12(%esp)
	movl	$0, 8(%esp)
	movl	$180, 4(%esp)
	movl	__ZL5pages.lto_priv.0+4, %eax
	movl	%eax, (%esp)
	movl	-148(%ebp), %eax
	call	*%eax
	subl	$16, %esp
	movl	$1, 4(%esp)
	movl	%ebx, (%esp)
	call	*%esi
	subl	$8, %esp
	movl	%eax, (%esp)
	call	*__imp__SetFocus@4
	subl	$4, %esp
	jmp	L143
	.p2align 4,,10
	.p2align 3
L141:
	cmpl	$101, 4(%esi)
	jne	L143
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$4875, 4(%esp)
	movl	(%esi), %eax
	movl	%eax, (%esp)
	call	*__imp__SendMessageA@16
	movl	%eax, %edx
	movl	8(%esi), %eax
	subl	$16, %esp
	cmpl	$-552, %eax
	je	L147
	cmpl	$-551, %eax
	jne	L143
	testl	%edx, %edx
	js	L143
	movl	__ZL5pages.lto_priv.0(,%edx,4), %eax
	testl	%eax, %eax
	je	L143
	movl	$5, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__ShowWindow@8
	subl	$8, %esp
	jmp	L149
	.p2align 4,,10
	.p2align 3
L150:
	addb	$1, _quitevent
	jmp	L149
	.p2align 4,,10
	.p2align 3
L173:
	movl	$5, (%esp)
	call	*__imp__GetSysColorBrush@4
	subl	$4, %esp
	jmp	L137
	.p2align 4,,10
	.p2align 3
L153:
	movl	$1, __ZL4done.lto_priv.0
	jmp	L149
L147:
	testl	%edx, %edx
	js	L143
	movl	__ZL5pages.lto_priv.0(,%edx,4), %eax
	testl	%eax, %eax
	je	L143
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__ShowWindow@8
	subl	$8, %esp
	jmp	L149
	.cfi_endproc
LFE9:
	.section .rdata,"dr"
LC3:
	.ascii "backup.map\0"
	.align 4
LC4:
	.ascii "Couldn't open \"%s\" for writing: %s\0"
	.align 4
LC5:
	.ascii "source/duke3d/src/m32common.cpp\0"
LC6:
	.ascii "%d %s\12\0"
	.text
	.p2align 4
	.globl	_SaveBoard
	.def	_SaveBoard;	.scl	2;	.type	32;	.endef
_SaveBoard:
LFB11:
	.cfi_startproc
	subl	$304, %esp
	.cfi_def_cfa_offset 308
	testl	%eax, %eax
	movl	%esi, 292(%esp)
	.cfi_offset 6, -16
	movl	$__ZL13boardfilename.lto_priv.0, %esi
	cmovne	%eax, %esi
	movl	_pathsearchmode, %eax
	movl	%ebx, 288(%esp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	testl	%eax, %eax
	je	L229
L177:
	movl	$-1, %edx
	movl	$16, %eax
	movl	$0, __ZL18saveboard_canceled
	movl	$0, __ZL19saveboard_savedtags
	call	__Z10VM_OnEventii
	call	__Z13ResetBuildFAFv
	call	__Z12ResetSpritesv
	movswl	_startsectnum, %eax
	movl	$_startpos, %edx
	movswl	_startang, %ecx
	movl	$0, __ZL22saveboard_fixedsprites
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	_saveboard
	movl	%eax, 24(%esp)
	cmpl	$1, %ebx
	jne	L230
L179:
	movl	24(%esp), %edx
	xorl	%eax, %eax
	movl	288(%esp), %ebx
	testl	%edx, %edx
	cmove	%esi, %eax
	movl	292(%esp), %esi
	addl	$304, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L229:
	.cfi_restore_state
	movl	$47, 4(%esp)
	movl	%esi, (%esp)
	call	_strrchr
	testl	%eax, %eax
	je	L177
	leal	1(%eax), %esi
	jmp	L177
L230:
	movl	%edi, 296(%esp)
	movl	$-1171354717, %ebx
	movl	%ebp, 300(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	call	__Z14SetSpriteExtrav
	movl	_sprite, %ebp
	leal	42(%ebp), %ecx
	leal	720938(%ebp), %edi
	.p2align 5
	.p2align 4
	.p2align 3
L180:
	movl	%ecx, %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-4097, (%ecx)
	addl	$44, %ecx
	cmpl	%ecx, %edi
	jne	L180
	movl	_wall, %edx
	movl	$30, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L182:
	cmpw	$0, (%edx,%eax)
	je	L181
	movl	%eax, %ecx
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	xorl	%ecx, %ecx
	movw	%cx, (%edx,%eax)
L181:
	addl	$32, %eax
	cmpl	$524318, %eax
	jne	L182
	movswl	_cursectnum, %eax
	movswl	_ang, %ecx
	movl	$_pos, %edx
	movl	%eax, (%esp)
	movl	$LC3, %eax
	call	_saveboard
	movl	$-1, %edx
	movl	$14, %eax
	call	__Z10VM_OnEventii
	movl	__ZL8g_taglab.lto_priv.0+131088, %ebx
	testl	%ebx, %ebx
	jne	L231
L183:
	movl	%ebx, __ZL19saveboard_savedtags
	movl	296(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	300(%esp), %ebp
	.cfi_restore 5
	jmp	L179
L231:
	.cfi_restore_state
	movl	%esi, (%esp)
	leal	32(%esp), %ebx
	call	_strlen
	movl	$255, %edx
	addl	$1, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	cmpl	$16, %eax
	jnb	L184
	testb	$8, %al
	jne	L232
	testb	$4, %al
	jne	L233
	testl	%eax, %eax
	jne	L234
L185:
	movl	%ebx, (%esp)
	movb	$0, 287(%esp)
	call	_strlen
	movl	$46, 4(%esp)
	movl	%ebx, (%esp)
	movl	%eax, %edi
	call	_strrchr
	testl	%eax, %eax
	je	L191
	movl	%eax, %edi
	subl	%ebx, %edi
L192:
	cmpl	$247, %edi
	jg	L193
	movl	$1885433134, (%eax)
	xorl	%edi, %edi
	movl	$1936154996, 4(%eax)
	movb	$0, 8(%eax)
	movl	$384, 8(%esp)
	movl	$33537, 4(%esp)
	movl	%ebx, (%esp)
	call	_open
	cmpl	$-1, %eax
	je	L235
	movl	%esi, 28(%esp)
	movl	%eax, %ebp
	jmp	L194
	.p2align 5
	.p2align 4,,10
	.p2align 3
L197:
	addl	$1, %edi
	cmpl	$32768, %edi
	je	L236
L194:
	movl	__ZL8g_taglab.lto_priv.0+16(,%edi,4), %eax
	testl	%eax, %eax
	je	L197
	movl	%eax, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$LC6, 4(%esp)
	movl	%ebx, (%esp)
	call	_sprintf
	movl	%ebx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%eax, %esi
	movl	%ebp, (%esp)
	call	_write
	cmpl	%eax, %esi
	je	L197
	movl	28(%esp), %esi
	movl	%ebp, %edx
	xorl	%ebx, %ebx
L198:
	movl	%edx, (%esp)
	call	_close
	jmp	L183
L235:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L193
	call	*__imp___errno
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*__imp__strerror
	movl	%ebx, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$LC4, 12(%esp)
	movl	$252, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L193:
	xorl	%ebx, %ebx
	jmp	L183
L184:
	movl	-16(%esi,%eax), %edx
	movl	%edx, 16(%esp,%eax)
	movl	-12(%esi,%eax), %edx
	movl	%edx, 20(%esp,%eax)
	movl	-8(%esi,%eax), %edx
	movl	%edx, 24(%esp,%eax)
	movl	-4(%esi,%eax), %edx
	movl	%edx, 28(%esp,%eax)
	subl	$1, %eax
	cmpl	$16, %eax
	jb	L185
	andl	$-16, %eax
	movl	%eax, %ebp
	xorl	%eax, %eax
L189:
	movl	12(%esi,%eax), %edx
	movl	4(%esi,%eax), %edi
	movl	8(%esi,%eax), %ecx
	movl	%edx, 28(%esp)
	movl	(%esi,%eax), %edx
	movl	%edi, 4(%ebx,%eax)
	movl	%edx, (%ebx,%eax)
	movl	%ecx, 8(%ebx,%eax)
	movl	28(%esp), %edi
	movl	%edi, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	%ebp, %eax
	jb	L189
	jmp	L185
L234:
	movzbl	(%esi), %edx
	movb	%dl, 32(%esp)
	testb	$2, %al
	je	L185
	movzwl	-2(%esi,%eax), %edx
	movw	%dx, 30(%esp,%eax)
	jmp	L185
	.p2align 4,,10
	.p2align 3
L191:
	leal	(%ebx,%edi), %eax
	jmp	L192
L236:
	movl	28(%esp), %esi
	movl	%ebp, %edx
	movl	$1, %ebx
	jmp	L198
L232:
	movl	(%esi), %edi
	movl	4(%esi), %ebp
	movl	%edi, 32(%esp)
	movl	%ebp, 36(%esp)
	movl	-8(%esi,%eax), %edi
	movl	-4(%esi,%eax), %ebp
	movl	%edi, 24(%esp,%eax)
	movl	%ebp, 28(%esp,%eax)
	jmp	L185
L233:
	movl	(%esi), %edx
	movl	%edx, 32(%esp)
	movl	-4(%esi,%eax), %edx
	movl	%edx, 28(%esp,%eax)
	jmp	L185
	.cfi_endproc
LFE11:
	.p2align 4
	.globl	_getpoint
	.def	_getpoint;	.scl	2;	.type	32;	.endef
_getpoint:
LFB24:
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
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	_editorgridextent, %eax
	movl	_pos, %ecx
	movl	%eax, %edx
	negl	%edx
	cmpl	%ecx, %eax
	jge	L238
	movl	%eax, _pos
	movl	%eax, %ecx
L238:
	cmpl	%ecx, %edx
	jle	L239
	movl	%edx, _pos
L239:
	movl	_pos+4, %ecx
	cmpl	%ecx, %eax
	jge	L240
	movl	%eax, _pos+4
	movl	%eax, %ecx
L240:
	cmpl	%ecx, %edx
	jle	L241
	movl	%edx, _pos+4
L241:
	movl	_m32_sideview, %eax
	subl	_halfxdim16, %ebx
	subl	_midydim16, %edi
	movl	%ebx, 16(%esp)
	movl	%edi, %ecx
	testl	%eax, %eax
	je	L242
	movl	_m32_sidesin, %eax
	testl	%eax, %eax
	jne	L250
L243:
	movzwl	_m32_sideang, %eax
	movl	%ecx, %esi
	negl	%esi
	negl	%eax
	leal	512(%eax), %edx
	andl	$2047, %eax
	andl	$2047, %edx
	movswl	_sintable(%eax,%eax), %edi
	movl	16(%esp), %eax
	movswl	_sintable(%edx,%edx), %edx
	movl	%edx, 20(%esp)
/APP
 # 1408 "source/build/include/build.h" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	20(%esp), %edx
	movl	16(%esp), %esi
	movl	%eax, 24(%esp)
	movl	%ecx, %eax
/APP
 # 1408 "source/build/include/build.h" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	24(%esp), %eax
	movl	%eax, 16(%esp)
L242:
	movl	_zoom, %eax
	movl	_pos, %ebx
	movl	%ecx, 20(%esp)
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	16(%esp), %eax
	cltd
	shldl	$14, %eax, %edx
	sall	$14, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.2
	movl	20(%esp), %ecx
	addl	%eax, %ebx
	movl	%ebx, 0(%ebp)
	movl	%ecx, %ebx
	movl	_zoom, %eax
	sarl	$31, %ebx
	movl	_pos+4, %edi
	movl	%eax, 8(%esp)
	shldl	$14, %ecx, %ebx
	sarl	$31, %eax
	sall	$14, %ecx
	movl	%eax, 12(%esp)
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	call	_tabledivide64.lto_priv.2
	addl	%eax, %edi
	movl	48(%esp), %eax
	movl	%edi, (%eax)
	movl	_editorgridextent, %eax
	movl	0(%ebp), %edx
	movl	%eax, %ecx
	negl	%ecx
	cmpl	%edx, %eax
	jge	L244
	movl	%eax, 0(%ebp)
	movl	%eax, %edx
L244:
	cmpl	%edx, %ecx
	jle	L245
	movl	%ecx, 0(%ebp)
L245:
	movl	48(%esp), %eax
	movl	_editorgridextent, %edx
	movl	48(%esp), %esi
	movl	(%eax), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	negl	%edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, (%esi)
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
L250:
	.cfi_restore_state
	movl	%edi, %ebx
	sall	$14, %ecx
	movl	%eax, 8(%esp)
	sarl	$31, %ebx
	sarl	$31, %eax
	movl	%ecx, (%esp)
	shldl	$14, %edi, %ebx
	movl	%eax, 12(%esp)
	movl	%ebx, 4(%esp)
	call	_tabledivide64.lto_priv.2
	movl	%eax, %ecx
	jmp	L243
	.cfi_endproc
LFE24:
	.p2align 4
	.globl	_getpointhighlight
	.def	_getpointhighlight;	.scl	2;	.type	32;	.endef
_getpointhighlight:
LFB26:
	.cfi_startproc
	subl	$80, %esp
	.cfi_def_cfa_offset 84
	cmpw	$0, _numwalls
	je	L277
	movl	%esi, 68(%esp)
	.cfi_offset 6, -16
	movl	%edx, %esi
	movl	_g_mouseBits, %edx
	movl	%ebx, 64(%esp)
	andl	$1, %edx
	movl	%ecx, 40(%esp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	orl	_searchlock, %ebx
	jne	L287
	movl	_grid, %edx
	movl	%edi, 72(%esp)
	movl	%ebp, 76(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	$0, 20(%esp)
	testl	%edx, %edx
	jle	L253
	movswl	_pointhighlightdist, %ecx
	movl	%ecx, 20(%esp)
L253:
	movl	%eax, 32(%esp)
	movl	_zoom, %eax
	movl	%esi, 36(%esp)
	movl	%eax, 24(%esp)
	cmpw	$0, _numsectors
	jle	L280
	movl	$-1, 40(%esp)
	xorl	%edi, %edi
	movl	%ebx, 52(%esp)
	.p2align 4
	.p2align 3
L268:
	movl	_m32_sideview, %edx
	testl	%edx, %edx
	jne	L255
	movl	%edi, %eax
	movl	%edi, %ecx
	andl	$7, %eax
	sarl	$3, %ecx
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
	movzbl	_graysectbitmap(%ecx), %ebx
	andl	%eax, %ebx
	cmpb	%al, %bl
	je	L266
L255:
	movl	_sector, %ecx
	leal	(%edi,%edi,4), %eax
	sall	$3, %eax
	leal	(%ecx,%eax), %esi
	movl	%eax, 28(%esp)
	cmpw	$0, 2(%esi)
	jle	L266
	movl	%edi, 48(%esp)
	movswl	(%esi), %ebx
	jmp	L267
	.p2align 4,,10
	.p2align 3
L289:
	movl	32(%esp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
/APP
 # 8928 "source/build/src/build.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	36(%esp), %eax
	subl	%edi, %eax
/APP
 # 8928 "source/build/src/build.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%edx, %eax
L258:
	cmpl	20(%esp), %eax
	jg	L262
	jl	L281
	movl	40(%esp), %edi
	cmpl	$-1, %edi
	je	L281
	movl	_wall, %esi
	movswl	10(%esi,%ebp), %edx
	movl	%edi, %ebp
	sall	$5, %edi
	movswl	10(%esi,%edi), %esi
	notl	%edx
	notl	%esi
	shrl	$31, %edx
	shrl	$31, %esi
	subl	%esi, %edx
	cmpl	$1, %edx
	cmove	20(%esp), %eax
	cmovne	%ebx, %ebp
	movl	%eax, 20(%esp)
	movl	%ebp, 40(%esp)
	.p2align 4
	.p2align 3
L262:
	movl	28(%esp), %eax
	addl	$1, %ebx
	leal	(%ecx,%eax), %esi
	movswl	(%esi), %eax
	movswl	2(%esi), %edx
	addl	%edx, %eax
	cmpl	%ebx, %eax
	jle	L285
	movl	_m32_sideview, %edx
L267:
	movl	_wall, %eax
	movl	%ebx, %ebp
	sall	$5, %ebp
	addl	%ebp, %eax
	movl	4(%eax), %edi
	movl	(%eax), %eax
	testl	%edx, %edx
	je	L289
	movl	%edi, %edx
	subl	_pos+4, %edx
	movl	24(%esp), %ecx
	movl	%eax, 44(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, %edx
	leal	56(%esp), %eax
	subl	_pos, %edx
	movl	%eax, 4(%esp)
	leal	60(%esp), %eax
	movl	%eax, (%esp)
	movl	%ecx, 16(%esp)
	movl	%edx, 8(%esp)
	call	_editorGet2dScreenCoordinates
	testb	$2, 14(%esi)
	movl	44(%esp), %eax
	je	L290
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	_getflorzofslopeptr.part.0
	movl	_zoom, %ecx
L260:
	movl	24(%esp), %edx
	subl	_pos+8, %eax
	imull	_m32_sidecos, %edx
/APP
 # 672 "source/build/src/2d.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	60(%esp), %eax
	addl	_halfxdim16, %eax
	js	L264
	cmpl	_xdim, %eax
	jge	L264
	addl	56(%esp), %edx
	addl	_midydim16, %edx
	js	L264
	cmpl	_ydim, %edx
	jge	L264
	subl	_searchx, %eax
/APP
 # 8937 "source/build/src/build.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	%edx, %eax
	subl	_searchy, %eax
/APP
 # 8937 "source/build/src/build.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%ecx, 24(%esp)
	addl	%esi, %eax
	movl	_sector, %ecx
	jmp	L258
	.p2align 4,,10
	.p2align 3
L264:
	movl	%ecx, 24(%esp)
	movl	_sector, %ecx
	jmp	L262
	.p2align 4,,10
	.p2align 3
L281:
	movl	%ebx, 40(%esp)
	movl	%eax, 20(%esp)
	jmp	L262
	.p2align 4,,10
	.p2align 3
L285:
	movl	48(%esp), %edi
L266:
	movswl	_numsectors, %eax
	addl	$1, %edi
	cmpl	%edi, %eax
	jg	L268
	movl	52(%esp), %ebx
L254:
	cmpl	$255, 24(%esp)
	jle	L288
	movl	_sprite, %esi
	leal	56(%esp), %edi
	leal	60(%esp), %ebp
	jmp	L276
	.p2align 4,,10
	.p2align 3
L270:
	movl	24(%esp), %eax
	movl	%eax, 16(%esp)
	movl	4(%esi), %eax
	subl	_pos+4, %eax
	movl	%eax, 12(%esp)
	movl	(%esi), %eax
	subl	_pos, %eax
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%ebp, (%esp)
	call	_editorGet2dScreenCoordinates
	movl	24(%esp), %edx
	movl	8(%esi), %eax
	imull	_m32_sidecos, %edx
	subl	_pos+8, %eax
/APP
 # 672 "source/build/src/2d.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	60(%esp), %eax
	addl	_halfxdim16, %eax
	js	L274
	cmpl	_xdim, %eax
	jge	L274
	addl	56(%esp), %edx
	addl	_midydim16, %edx
	js	L274
	cmpl	_ydim, %edx
	jge	L274
	subl	_searchx, %eax
/APP
 # 8968 "source/build/src/build.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	%edx, %eax
	subl	_searchy, %eax
/APP
 # 8968 "source/build/src/build.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%ecx, %eax
	movl	%eax, 28(%esp)
	movl	20(%esp), %eax
	cmpl	%eax, 28(%esp)
	jl	L275
	.p2align 4
	.p2align 3
L292:
	je	L291
	.p2align 5
	.p2align 4
	.p2align 3
L274:
	addl	$1, %ebx
	addl	$44, %esi
	cmpl	$16384, %ebx
	je	L288
L276:
	cmpw	$1023, 26(%esi)
	jg	L274
	movl	_m32_sideview, %eax
	testl	%eax, %eax
	jne	L270
	movswl	24(%esi), %eax
	testw	%ax, %ax
	js	L271
	movl	%eax, %edx
	sarl	$3, %eax
	andl	$7, %edx
	movzbl	_graysectbitmap(%eax), %ecx
	movzbl	__ZL8pow2char.lto_priv.2(%edx), %edx
	andl	%edx, %ecx
	cmpb	%cl, %dl
	je	L274
L271:
	movl	32(%esp), %eax
	subl	(%esi), %eax
/APP
 # 8958 "source/build/src/build.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	36(%esp), %eax
	subl	4(%esi), %eax
/APP
 # 8958 "source/build/src/build.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%edx, %eax
	movl	%eax, 28(%esp)
	movl	20(%esp), %eax
	cmpl	%eax, 28(%esp)
	jge	L292
L275:
	leal	16384(%ebx), %eax
	addl	$1, %ebx
	addl	$44, %esi
	movl	%eax, 40(%esp)
	movl	28(%esp), %eax
	movl	%eax, 20(%esp)
	cmpl	$16384, %ebx
	jne	L276
	.p2align 4
	.p2align 3
L288:
	movl	64(%esp), %ebx
	.cfi_restore 3
	movl	68(%esp), %esi
	.cfi_restore 6
	movl	72(%esp), %edi
	.cfi_restore 7
	movl	76(%esp), %ebp
	.cfi_restore 5
L251:
	movl	40(%esp), %eax
	addl	$80, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L290:
	.cfi_def_cfa_offset 84
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	8(%esi), %eax
	movl	24(%esp), %ecx
	jmp	L260
	.p2align 4,,10
	.p2align 3
L291:
	movl	%ebx, %edx
	movl	%ebx, %ecx
	andl	$7, %edx
	sarl	$3, %ecx
	movzbl	__ZL8pow2char.lto_priv.2(%edx), %edx
	movzbl	_show2dsprite(%ecx), %eax
	andl	%edx, %eax
	cmpb	%al, %dl
	jne	L274
	jmp	L275
	.p2align 4,,10
	.p2align 3
L287:
	.cfi_restore 5
	.cfi_restore 7
	movl	40(%esp), %eax
	movl	64(%esp), %ebx
	.cfi_restore 3
	movl	68(%esp), %esi
	.cfi_restore 6
	addl	$80, %esp
	.cfi_def_cfa_offset 4
	ret
L280:
	.cfi_def_cfa_offset 84
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$-1, 40(%esp)
	jmp	L254
L277:
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movl	$-1, 40(%esp)
	jmp	L251
	.cfi_endproc
LFE26:
	.p2align 4
	.globl	__ZL10adjustmarkPiS_s.isra.0
	.def	__ZL10adjustmarkPiS_s.isra.0;	.scl	2;	.type	32;	.endef
__ZL10adjustmarkPiS_s.isra.0:
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
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	testw	%cx, %cx
	movl	_grid, %edi
	movl	(%edx), %ebx
	cmovs	_numwalls, %cx
	movl	(%esi), %esi
	movl	%eax, 20(%esp)
	movl	%edi, 28(%esp)
	movl	%ebx, 8(%esp)
	movswl	%cx, %eax
	movl	%esi, 12(%esp)
	testl	%edi, %edi
	jle	L315
	movl	_gridlock, %edi
	movl	%edi, 16(%esp)
	testl	%edi, %edi
	jne	L298
L314:
	movl	8(%esp), %ebp
	movl	12(%esp), %edi
	testw	%ax, %ax
	jle	L297
L296:
	movl	_wall, %ebx
	movl	8(%esp), %ebp
	movl	%eax, 4(%esp)
	movl	$1, %eax
	movl	12(%esp), %edi
	movl	16(%esp), %esi
	movl	$0, (%esp)
	movl	%edx, 24(%esp)
	jmp	L303
	.p2align 4,,10
	.p2align 3
L316:
	movl	%ecx, %eax
	addl	$32, %ebx
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
L303:
	movl	(%esp), %ecx
	sarl	$3, %ecx
	movzbl	_graywallbitmap(%ecx), %ecx
	andl	%eax, %ecx
	cmpb	%al, %cl
	je	L301
	movl	12(%esp), %eax
	subl	(%ebx), %eax
/APP
 # 9005 "source/build/src/build.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	8(%esp), %eax
	subl	4(%ebx), %eax
/APP
 # 9005 "source/build/src/build.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%eax, %edx
	cmpl	%esi, %edx
	cmovl	4(%ebx), %ebp
	cmovl	(%ebx), %edi
	cmovl	%edx, %esi
L301:
	addl	$1, (%esp)
	movl	(%esp), %ecx
	cmpl	4(%esp), %ecx
	jl	L316
	movl	24(%esp), %edx
	cmpl	16(%esp), %esi
	je	L317
L297:
	movl	20(%esp), %eax
	movl	%edi, (%eax)
	movl	%ebp, (%edx)
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
L298:
	.cfi_restore_state
	testw	%ax, %ax
	jle	L307
	movzbl	28(%esp), %ecx
	movl	$256, %ebx
	sarl	%cl, %ebx
	movl	%ebx, 16(%esp)
	jmp	L296
	.p2align 4,,10
	.p2align 3
L315:
	movl	$0, 16(%esp)
	jmp	L314
	.p2align 4,,10
	.p2align 3
L317:
	movl	_gridlock, %ecx
	testl	%ecx, %ecx
	je	L297
	movl	28(%esp), %eax
	testl	%eax, %eax
	jle	L297
L300:
	movl	28(%esp), %esi
	movl	$1024, %eax
	movl	$-1, %ebx
	movl	%esi, %ecx
	sarl	%cl, %eax
	movl	$11, %ecx
	subl	%esi, %ecx
	addl	%eax, %edi
	addl	%ebp, %eax
	sall	%cl, %ebx
	andl	%ebx, %eax
	andl	%ebx, %edi
	movl	%eax, %ebp
	jmp	L297
L307:
	movl	12(%esp), %edi
	movl	8(%esp), %ebp
	jmp	L300
	.cfi_endproc
LFE31:
	.p2align 4
	.globl	_clockdir
	.def	_clockdir;	.scl	2;	.type	32;	.endef
_clockdir:
LFB33:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	_wall, %ecx
	movl	%eax, %ebp
	movl	$-1, %edx
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	leal	-1(%eax), %eax
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$2147483647, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
L321:
	addl	$1, %eax
	movl	%eax, %ebx
	sall	$5, %ebx
	movswl	8(%ecx,%ebx), %edi
	movl	%edi, %ebx
	sall	$5, %ebx
	movl	(%ecx,%ebx), %ebx
	cmpl	%ebx, %esi
	cmovg	%eax, %edx
	cmovg	%ebx, %esi
	cmpl	%ebp, %edi
	je	L320
	cmpl	$16382, %eax
	jle	L321
L320:
	sall	$5, %edx
	addl	%ecx, %edx
	movswl	8(%edx), %eax
	movl	4(%edx), %edi
	sall	$5, %eax
	addl	%ecx, %eax
	movswl	8(%eax), %ebx
	movl	4(%eax), %esi
	sall	$5, %ebx
	addl	%ebx, %ecx
	movl	4(%ecx), %ebx
	cmpl	%ebx, %esi
	jl	L328
	xorl	%ebp, %ebp
	cmpl	%esi, %edi
	jge	L318
L337:
	movl	$1, %ebp
	cmpl	%ebx, %esi
	jg	L329
L318:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	%ebp, %eax
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
	cmpl	%esi, %edi
	jle	L337
L329:
	movl	(%eax), %ebp
	movl	(%edx), %edx
	subl	%esi, %ebx
	subl	%esi, %edi
	movl	(%ecx), %eax
	subl	%ebp, %edx
	subl	%ebp, %eax
	imull	%ebx, %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	imull	%edi, %eax
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	cmpl	%eax, %edx
	setge	%al
	movzbl	%al, %eax
	movl	%eax, %ebp
	movl	%ebp, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE33:
	.p2align 4
	.globl	__ZL9flipwallsss.lto_priv.0
	.def	__ZL9flipwallsss.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL9flipwallsss.lto_priv.0:
LFB34:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	movswl	%ax, %ebp
	movswl	%dx, %eax
	movl	%eax, %ecx
	subl	%ebp, %ecx
	sarl	%ecx
	testl	%ecx, %ecx
	jle	L339
	movl	%edi, 20(%esp)
	.cfi_offset 7, -12
	leal	0(%ebp,%ecx), %edi
	movl	%edi, 4(%esp)
	leal	__ZL9onextwall.lto_priv.0(%ebp,%ebp), %edi
	movl	%edi, (%esp)
	leal	-1(%eax), %edi
	leal	__ZL9onextwall.lto_priv.0-1(%eax,%ebp), %eax
	addl	%eax, %eax
	movl	%ebx, 12(%esp)
	sall	$5, %edi
	movl	%esi, 16(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	%eax, 8(%esp)
	.p2align 4
	.p2align 3
L341:
	movl	8(%esp), %ebx
	movl	(%esp), %eax
	subl	%eax, %ebx
/APP
 # 9103 "source/build/src/build.cpp" 1
	movw (%eax), %cx; movw (%ebx), %dx; movw %cx, (%ebx); movw %dx, (%eax)
 # 0 "" 2
/NO_APP
	movl	_wall, %edx
	movl	%ebp, %esi
	sall	$5, %esi
	leal	(%edx,%esi), %eax
	movl	%esi, %ecx
	leal	(%edx,%edi), %ebx
	movl	%edi, %edx
	shrl	$5, %ecx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%ecx,4)
	addl	$1, _wallchanged(,%edx,4)
/APP
 # 9105 "source/build/src/build.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	_wall, %edx
	leal	4(%edx,%esi), %eax
	leal	4(%edx,%edi), %ebx
	shrl	$5, %esi
	leal	4(%edi), %edx
	addl	$1, _wallchanged(,%esi,4)
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
/APP
 # 9106 "source/build/src/build.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	addl	$2, (%esp)
	addl	$1, %ebp
	subl	$32, %edi
	cmpl	4(%esp), %ebp
	jl	L341
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	20(%esp), %edi
	.cfi_restore 7
L339:
	movl	24(%esp), %ebp
	addl	$28, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE34:
	.p2align 4
	.globl	__ZL9movewallsii.isra.0
	.def	__ZL9movewallsii.isra.0;	.scl	2;	.type	32;	.endef
__ZL9movewallsii.isra.0:
LFB36:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%esi, 20(%esp)
	.cfi_offset 6, -16
	movzwl	_numwalls, %esi
	movl	%edi, 24(%esp)
	.cfi_offset 7, -12
	movl	%edx, %edi
	movl	%ebx, 16(%esp)
	testl	%edx, %edx
	.cfi_offset 3, -20
	js	L364
	jne	L365
L348:
	addl	%edi, %esi
	movw	%si, _numwalls
	testw	%si, %si
	jle	L355
	movl	_wall, %edx
	movzwl	%si, %esi
	movl	$8, %ecx
	sall	$5, %esi
	addl	$8, %edx
	addl	$8, %esi
	.p2align 4
	.p2align 3
L358:
	movswl	2(%edx), %ebx
	cmpl	%ebx, %eax
	jg	L356
	leal	2(%ecx), %ebx
	shrl	$5, %ebx
	addl	$1, _wallchanged(,%ebx,4)
	addw	%di, 2(%edx)
L356:
	movswl	(%edx), %ebx
	cmpl	%ebx, %eax
	jg	L357
	movl	%ecx, %ebx
	shrl	$5, %ebx
	addl	$1, _wallchanged(,%ebx,4)
	addw	%di, (%edx)
L357:
	addl	$32, %ecx
	addl	$32, %edx
	cmpl	%ecx, %esi
	jne	L358
L355:
	movl	16(%esp), %ebx
	movl	20(%esp), %esi
	movswl	%di, %edx
	cwtl
	movl	24(%esp), %edi
	addl	$32, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	__ZL14yax_tweakwallsss.lto_priv.0
	.p2align 4,,10
	.p2align 3
L365:
	.cfi_restore_state
	movswl	%si, %ebx
	leal	(%edi,%eax), %ecx
	leal	-1(%ebx,%edx), %edx
	cmpl	%ecx, %edx
	jl	L350
	subl	$1, %ebx
	movw	%si, 6(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%ebp, 28(%esp)
	.cfi_offset 5, -8
	leal	-1(%ecx), %ebp
	.p2align 4
	.p2align 3
L351:
	movl	(%esp), %edi
	movl	_wall, %eax
	movl	%edx, %ecx
	sall	$5, %ecx
	movl	%edi, %ebx
	addl	%eax, %ecx
	sall	$5, %ebx
	addl	%ebx, %eax
	movl	%edi, %ebx
	movl	(%eax), %esi
	sarl	$3, %ebx
	movl	%esi, (%ecx)
	movl	4(%eax), %esi
	movl	%esi, 4(%ecx)
	movl	8(%eax), %esi
	movl	%esi, 8(%ecx)
	movl	12(%eax), %esi
	movl	%esi, 12(%ecx)
	movl	16(%eax), %esi
	movl	%esi, 16(%ecx)
	movl	20(%eax), %esi
	movl	%esi, 20(%ecx)
	movl	24(%eax), %esi
	movl	%esi, 24(%ecx)
	movl	28(%eax), %eax
	movl	%eax, 28(%ecx)
	movl	%edi, %eax
	movzbl	_editwall(%ebx), %ebx
	movl	%edx, %ecx
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
	andl	%eax, %ebx
	cmpb	%al, %bl
	sete	%al
	andl	$7, %ecx
	subl	$1, (%esp)
	movzbl	__ZL8pow2char.lto_priv.2(%ecx), %edi
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	%edx, %eax
	subl	$1, %edx
	sarl	$3, %eax
	notl	%edi
	sall	%cl, %esi
	movl	%edi, %ebx
	movl	%esi, %ecx
	andb	%bl, _editwall(%eax)
	orb	%cl, _editwall(%eax)
	cmpl	%ebp, %edx
	jne	L351
	movzwl	6(%esp), %esi
	movl	8(%esp), %eax
	movl	12(%esp), %edi
	movl	28(%esp), %ebp
	.cfi_restore 5
L350:
	movl	__ZL3ovh.lto_priv.0, %edx
	testl	%edx, %edx
	jle	L348
	movswl	__ZL3ovh.lto_priv.0+4, %ecx
	movl	%ecx, %edx
	cmpl	%ecx, %eax
	jg	L353
	addl	%edi, %edx
	movw	%dx, __ZL3ovh.lto_priv.0+4
L353:
	movswl	__ZL3ovh.lto_priv.0+10, %ecx
	movl	%ecx, %edx
	cmpl	%ecx, %eax
	jg	L348
	addl	%edi, %edx
	movw	%dx, __ZL3ovh.lto_priv.0+10
	jmp	L348
	.p2align 4,,10
	.p2align 3
L364:
	movswl	%si, %edx
	movl	%ebp, 28(%esp)
	.cfi_offset 5, -8
	leal	(%edx,%edi), %ebp
	cmpl	%ebp, %eax
	jge	L363
	movl	%eax, %ebx
	movw	%si, 6(%esp)
	movl	%eax, %edx
	subl	%edi, %ebx
	movl	%eax, 8(%esp)
	movl	%ebx, (%esp)
	movl	%edi, 12(%esp)
	.p2align 4
	.p2align 3
L347:
	movl	(%esp), %edi
	movl	_wall, %eax
	movl	%edx, %ecx
	sall	$5, %ecx
	movl	%edi, %ebx
	addl	%eax, %ecx
	sall	$5, %ebx
	addl	%ebx, %eax
	movl	%edi, %ebx
	movl	(%eax), %esi
	sarl	$3, %ebx
	movl	%esi, (%ecx)
	movl	4(%eax), %esi
	movl	%esi, 4(%ecx)
	movl	8(%eax), %esi
	movl	%esi, 8(%ecx)
	movl	12(%eax), %esi
	movl	%esi, 12(%ecx)
	movl	16(%eax), %esi
	movl	%esi, 16(%ecx)
	movl	20(%eax), %esi
	movl	%esi, 20(%ecx)
	movl	24(%eax), %esi
	movl	%esi, 24(%ecx)
	movl	28(%eax), %eax
	movl	%eax, 28(%ecx)
	movl	%edi, %eax
	movzbl	_editwall(%ebx), %ebx
	movl	%edx, %ecx
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
	andl	%eax, %ebx
	cmpb	%al, %bl
	sete	%al
	andl	$7, %ecx
	addl	$1, (%esp)
	movzbl	__ZL8pow2char.lto_priv.2(%ecx), %edi
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	%edx, %eax
	addl	$1, %edx
	sarl	$3, %eax
	notl	%edi
	sall	%cl, %esi
	movl	%edi, %ebx
	movl	%esi, %ecx
	andb	%bl, _editwall(%eax)
	orb	%cl, _editwall(%eax)
	cmpl	%ebp, %edx
	jl	L347
	movzwl	6(%esp), %esi
	movl	8(%esp), %eax
	movl	12(%esp), %edi
	movl	28(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L348
L363:
	.cfi_restore_state
	movl	28(%esp), %ebp
	.cfi_restore 5
	jmp	L348
	.cfi_endproc
LFE36:
	.p2align 4
	.globl	__ZL12deletesectors.isra.0
	.def	__ZL12deletesectors.isra.0;	.scl	2;	.type	32;	.endef
__ZL12deletesectors.isra.0:
LFB38:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movswl	%ax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	movzwl	_headspritesect(%edi,%edi), %edx
	testw	%dx, %dx
	js	L367
	.p2align 4
	.p2align 3
L368:
	movswl	%dx, %eax
	call	_deletesprite
	movzwl	_headspritesect(%edi,%edi), %edx
	testw	%dx, %dx
	jns	L368
L367:
	leal	(%edi,%edi,4), %ecx
	movl	_sector, %edx
	movl	%edi, %esi
	leal	0(,%ecx,8), %eax
	addl	%eax, %edx
	movl	%eax, (%esp)
	movswl	2(%edx), %ecx
	movswl	(%edx), %eax
	movl	%eax, 4(%esp)
	movl	%eax, %ebx
	addl	%ecx, %eax
	movl	%ecx, %ebp
	movl	%eax, 16(%esp)
	subl	$1, %eax
	movl	%ecx, 8(%esp)
	movl	%eax, 12(%esp)
	cmpw	$0, _editstatus
	je	L394
	xorl	%edx, %edx
	movl	$-1, %ecx
	movl	%edi, %eax
	call	_yax_setbunch.part.0
	cmpw	$0, _editstatus
	je	L370
	movl	$-1, %ecx
	movl	$1, %edx
	movl	%edi, %eax
	call	_yax_setbunch.part.0
L372:
	movswl	_numsectors, %ecx
	movl	%ecx, %edx
	subl	$1, %ecx
	cmpl	%edi, %ecx
	jle	L373
	movl	(%esp), %ecx
	movw	%bx, 22(%esp)
	movw	%bp, 20(%esp)
	addl	$40, %ecx
	.p2align 4
	.p2align 3
L377:
	movswl	_headspritesect+2(%esi,%esi), %ebx
	cmpl	$-1, %ebx
	je	L374
	cmpw	$4096, %si
	ja	L374
	movl	%ecx, (%esp)
	movswl	%si, %edi
	.p2align 4
	.p2align 3
L376:
	movl	%ebx, %eax
	movswl	_nextspritesect(%ebx,%ebx), %ebx
	imull	$44, %eax, %edx
	addl	_sprite, %edx
	movzwl	24(%edx), %edx
	cmpw	$4096, %dx
	je	L375
	cmpw	%si, %dx
	je	L375
	movswl	%ax, %ebp
	movl	%ebp, %eax
	call	_do_deletespritesect
	movl	%edi, %edx
	movl	%ebp, %eax
	call	_do_insertsprite_at_headofsect
L375:
	cmpl	$-1, %ebx
	jne	L376
	movl	(%esp), %ecx
L374:
	movl	_sector, %ebx
	leal	-40(%ecx), %edx
	addl	$1, %esi
	leal	(%ebx,%edx), %eax
	addl	%ecx, %ebx
	addl	$40, %ecx
	movl	(%ebx), %edi
	movl	%edi, (%eax)
	movl	4(%ebx), %edi
	movl	%edi, 4(%eax)
	movl	8(%ebx), %edi
	movl	%edi, 8(%eax)
	movl	12(%ebx), %edi
	movl	%edi, 12(%eax)
	movl	16(%ebx), %edi
	movl	%edi, 16(%eax)
	movl	20(%ebx), %edi
	movl	%edi, 20(%eax)
	movl	24(%ebx), %edi
	movl	%edi, 24(%eax)
	movl	28(%ebx), %edi
	movl	%edi, 28(%eax)
	movl	32(%ebx), %edi
	movl	%edi, 32(%eax)
	movl	36(%ebx), %ebx
	movl	%ebx, 36(%eax)
	movl	_sector, %ebx
	movl	$-858993459, %eax
	addl	%edx, %ebx
	mull	%edx
	movzwl	20(%esp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	subw	%ax, (%ebx)
	movswl	_numsectors, %eax
	movl	%eax, %edx
	subl	$1, %eax
	cmpl	%esi, %eax
	jg	L377
	movzwl	22(%esp), %ebx
L373:
	subl	$1, %edx
	movl	4(%esp), %eax
	movw	%dx, _numsectors
	cmpl	12(%esp), %eax
	jg	L378
	movl	16(%esp), %ecx
	movl	_wall, %esi
	sall	$5, %eax
	sall	$5, %ecx
	leal	(%esi,%eax), %edx
	addl	%esi, %ecx
	.p2align 4
	.p2align 3
L380:
	movswl	10(%edx), %eax
	testw	%ax, %ax
	js	L379
	movl	%eax, %edi
	movl	$-1, %ebp
	andl	$134217727, %eax
	sall	$5, %edi
	addl	$1, _wallchanged(,%eax,4)
	movw	%bp, 10(%esi,%edi)
	movswl	10(%edx), %eax
	movl	%eax, %edi
	andl	$134217727, %eax
	addl	$1, _wallchanged(,%eax,4)
	sall	$5, %edi
	movl	$-1, %eax
	movw	%ax, 12(%esi,%edi)
L379:
	addl	$32, %edx
	cmpl	%edx, %ecx
	jne	L380
L378:
	movl	8(%esp), %edx
	movl	4(%esp), %eax
	negl	%edx
	call	__ZL9movewallsii.isra.0
	movswl	_numwalls, %eax
	testw	%ax, %ax
	jle	L381
	sall	$5, %eax
	movl	_wall, %edx
	leal	12(%eax), %ecx
	movl	$12, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L383:
	cmpw	-2(%edx,%eax), %bx
	jg	L382
	movl	%eax, %esi
	shrl	$5, %esi
	addl	$1, _wallchanged(,%esi,4)
	subw	$1, (%edx,%eax)
L382:
	addl	$32, %eax
	cmpl	%eax, %ecx
	jne	L383
L381:
	movzwl	_numsectors, %eax
	cmpw	%ax, _cursectnum
	jle	L366
	movl	$-1, %eax
	movw	%ax, _cursectnum
L366:
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
L394:
	.cfi_restore_state
	movl	$-1, %eax
	movw	%ax, _yax_bunchnum(,%edi,4)
L370:
	movl	$-1, %eax
	movw	%ax, _yax_bunchnum+2(,%edi,4)
	jmp	L372
	.cfi_endproc
LFE38:
	.section .rdata,"dr"
LC7:
	.ascii ".wallnum\0"
LC8:
	.ascii ".wallptr\0"
	.align 4
LC9:
	.ascii "Deleting sector %d with corrupt %s\0"
LC10:
	.ascii "source/build/src/build.cpp\0"
	.align 4
LC11:
	.ascii "Changed sectnum of sprite #%d from %d to %d\0"
	.text
	.p2align 4
	.globl	_fixspritesectors.isra.0
	.def	_fixspritesectors.isra.0;	.scl	2;	.type	32;	.endef
_fixspritesectors.isra.0:
LFB44:
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
	subl	$56, %esp
	.cfi_def_cfa_offset 76
	movswl	_numsectors, %ebx
	movl	%ebx, %esi
	subl	$1, %ebx
	js	L396
	xorl	%ebp, %ebp
	subl	$1, %esi
	movl	%ebx, %edi
	jmp	L401
	.p2align 4,,10
	.p2align 3
L425:
	movzwl	_numwalls, %edx
	cmpw	%dx, (%eax)
	jl	L398
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L399
	movl	$LC8, %eax
L400:
	movl	%eax, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	$LC9, 12(%esp)
	movl	$9269, 8(%esp)
	movl	$LC10, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L399:
	movl	%esi, %eax
	addl	$1, %ebp
	subl	%edi, %eax
	addl	%ebx, %eax
	cwtl
	call	__ZL12deletesectors.isra.0
	movl	$0, _chsecptr_onextwall
L398:
	subl	$1, %ebx
	jb	L424
L401:
	movl	_sector, %edx
	leal	(%ebx,%ebx,4), %eax
	leal	(%edx,%eax,8), %eax
	cmpw	$2, 2(%eax)
	jg	L425
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L399
	movl	$LC7, %eax
	jmp	L400
L424:
	testl	%ebp, %ebp
	je	L396
	cmpw	$0, _numsectors
	jle	L396
	xorl	%ebp, %ebp
	.p2align 4
	.p2align 3
L404:
	movl	_sector, %edx
	leal	0(%ebp,%ebp,4), %eax
	leal	(%edx,%eax,8), %eax
	movswl	(%eax), %ebx
	movswl	2(%eax), %esi
	addl	%ebx, %esi
	cmpl	%esi, %ebx
	jge	L402
	movswl	%bp, %edi
	.p2align 4
	.p2align 3
L403:
	movswl	%bx, %eax
	movl	%edi, %edx
	addl	$1, %ebx
	call	_checksectorpointer
	cmpl	%ebx, %esi
	jne	L403
L402:
	movswl	_numsectors, %eax
	addl	$1, %ebp
	cmpl	%eax, %ebp
	jl	L404
L396:
	xorl	%esi, %esi
	xorl	%ebp, %ebp
	jmp	L411
	.p2align 5
	.p2align 4,,10
	.p2align 3
L405:
	addl	$1, %ebp
	addl	$44, %esi
	cmpl	$16384, %ebp
	je	L426
L411:
	movl	_sprite, %eax
	addl	%esi, %eax
	cmpw	$1023, 26(%eax)
	jg	L405
	movl	(%eax), %ebx
	movl	4(%eax), %edi
	movswl	24(%eax), %ecx
	movl	%edi, %edx
	movl	%ebx, %eax
	movl	%ebx, 28(%esp)
	call	_inside
	cmpl	$1, %eax
	je	L405
	leal	52(%esp), %eax
	movl	%ebp, (%esp)
	movl	%eax, 8(%esp)
	leal	48(%esp), %eax
	movl	%eax, 4(%esp)
	call	_spriteoncfz
	movzwl	_numsectors, %ecx
	testw	%cx, %cx
	jle	L405
	movl	_sprite, %eax
	addl	%esi, %eax
	movl	8(%eax), %edx
	cmpl	48(%esp), %edx
	jl	L405
	cmpl	52(%esp), %edx
	jg	L405
	movswl	%cx, %edx
	movl	%ebp, 32(%esp)
	xorl	%ebx, %ebx
	movl	%edx, 44(%esp)
	movl	%edx, %ebp
	movl	%eax, 40(%esp)
	movl	%esi, 36(%esp)
	jmp	L408
	.p2align 4,,10
	.p2align 3
L428:
	addl	$1, %ebx
	cmpl	%ebp, %ebx
	je	L427
L408:
	movl	28(%esp), %eax
	movswl	%bx, %ecx
	movl	%edi, %edx
	call	_inside
	cmpl	$1, %eax
	jne	L428
	movl	_fixmaponsave_sprites, %edx
	movl	40(%esp), %eax
	movw	%bx, 28(%esp)
	movl	32(%esp), %ebp
	movl	36(%esp), %esi
	testl	%edx, %edx
	jne	L409
	movswl	24(%eax), %edx
	cmpl	44(%esp), %edx
	jb	L405
L409:
	movl	__ZN6loguru18g_stderr_verbosityE, %ecx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	%ebx, %edi
	cmpl	%edx, %ecx
	cmovl	%edx, %ecx
	testl	%ecx, %ecx
	jns	L429
L410:
	cmpw	$4096, %di
	ja	L405
	movl	_sprite, %eax
	movzwl	24(%eax,%esi), %eax
	cmpw	$4096, %ax
	je	L405
	movzwl	28(%esp), %edi
	cmpw	%ax, %di
	je	L405
	movswl	%bp, %eax
	addl	$44, %esi
	call	_do_deletespritesect
	movswl	%bp, %eax
	movswl	%di, %edx
	addl	$1, %ebp
	call	_do_insertsprite_at_headofsect
	cmpl	$16384, %ebp
	jne	L411
L426:
	addl	$56, %esp
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
L427:
	.cfi_restore_state
	movl	32(%esp), %ebp
	movl	36(%esp), %esi
	jmp	L405
L429:
	movl	%ebx, 24(%esp)
	movswl	24(%eax), %eax
	movl	%ebp, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$LC11, 12(%esp)
	movl	$9307, 8(%esp)
	movl	$LC10, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L410
	.cfi_endproc
LFE44:
	.p2align 4
	.globl	_fixrepeats
	.def	_fixrepeats;	.scl	2;	.type	32;	.endef
_fixrepeats:
LFB45:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movswl	%ax, %ebx
	movl	%ebx, %eax
	sall	$5, %ebx
	call	_wallength
	movl	_wall, %ecx
	addl	%ebx, %ecx
	movzbl	23(%ecx), %edx
/APP
 # 9373 "source/build/src/build.cpp" 1
	imull %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	leal	22(%ecx), %edx
	subl	_wall, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movl	$255, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	$1, %edx
	testl	%eax, %eax
	cmovle	%edx, %eax
	movb	%al, 22(%ecx)
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	movw	%ax, _asksave
	ret
	.cfi_endproc
LFE45:
	.p2align 4
	.globl	_clearmidstatbar16
	.def	_clearmidstatbar16;	.scl	2;	.type	32;	.endef
_clearmidstatbar16:
LFB46:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	call	_videoBeginDrawing
	movl	_bytesperline, %eax
	movl	_ydim, %edi
	leal	(%eax,%eax,2), %ecx
	leal	-119(%edi), %edx
	imull	%eax, %edx
	sall	$5, %ecx
	addl	_frameplace, %edx
	xorl	%eax, %eax
	sarl	$2, %ecx
	movl	%edx, %edi
/APP
 # 9403 "source/build/src/build.cpp" 1
	rep; stosl
 # 0 "" 2
/NO_APP
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	_videoEndDrawing
	.cfi_endproc
LFE46:
	.p2align 4
	.globl	_loopinside
	.def	_loopinside;	.scl	2;	.type	32;	.endef
_loopinside:
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
	movswl	%cx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	%eax, 4(%esp)
	movl	%esi, %eax
	movw	%cx, 10(%esp)
	movl	%edx, 12(%esp)
	call	_clockdir
	movl	%esi, %ecx
	movl	%eax, 24(%esp)
	movl	_wall, %eax
	movl	%eax, (%esp)
	.p2align 4
	.p2align 3
L440:
	movl	(%esp), %edi
	movl	%ecx, %esi
	sall	$5, %esi
	leal	(%edi,%esi), %ebp
	movswl	8(%ebp), %ecx
	movl	0(%ebp), %eax
	movl	%ecx, %edx
	movl	%eax, 32(%esp)
	movl	%ecx, %ebx
	sall	$5, %edx
	addl	%edi, %edx
	movl	(%edx), %edi
	cmpl	%edi, %eax
	movl	%edi, 28(%esp)
	cmovl	%edi, %eax
	cmpl	%eax, 4(%esp)
	jg	L435
	movl	4(%ebp), %edi
	movl	4(%edx), %eax
	movl	%edi, 40(%esp)
	movl	%eax, 36(%esp)
	cmpl	%eax, %edi
	jle	L436
	leal	32(%esp), %eax
	leal	28(%esp), %ebx
/APP
 # 9458 "source/build/src/build.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	leal	40(%esp), %eax
	leal	36(%esp), %ebx
/APP
 # 9459 "source/build/src/build.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	_wall, %eax
	movl	40(%esp), %edi
	movswl	8(%eax,%esi), %ecx
	movl	%eax, (%esp)
	movl	%ecx, %ebx
L436:
	movl	12(%esp), %ebp
	cmpl	%edi, %ebp
	jl	L435
	movl	36(%esp), %esi
	cmpl	%ebp, %esi
	jle	L435
	movl	%ebp, %eax
	subl	%esi, %eax
	imull	32(%esp)
	movl	%eax, 16(%esp)
	movl	%edi, %eax
	movl	%edx, 20(%esp)
	subl	%ebp, %eax
	imull	28(%esp)
	addl	16(%esp), %eax
	adcl	20(%esp), %edx
	subl	%esi, %edi
	movl	%eax, 16(%esp)
	movl	4(%esp), %eax
	movl	%edx, 20(%esp)
	movl	16(%esp), %esi
	imull	%edi
	movl	20(%esp), %edi
	cmpl	%esi, %eax
	movl	%edx, %eax
	sbbl	%edi, %eax
	jc	L435
	xorl	$1, 24(%esp)
	.p2align 4
	.p2align 3
L435:
	cmpw	%bx, 10(%esp)
	jne	L440
	movl	24(%esp), %eax
	addl	$44, %esp
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
LFE47:
	.section .rdata,"dr"
LC12:
	.ascii "*\0"
LC13:
	.ascii "*.map\0"
	.text
	.p2align 4
	.globl	__ZL12getfilenamesPKcS0_.constprop.0.isra.0
	.def	__ZL12getfilenamesPKcS0_.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
__ZL12getfilenamesPKcS0_.constprop.0.isra.0:
LFB50:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$4, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	_pathsearchmode, %ecx
	testl	%ecx, %ecx
	jne	L453
	movl	_grponlymode, %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	setne	%al
	movl	%eax, %esi
	sall	$8, %esi
	movl	%esi, %edi
	orl	$1, %esi
	orl	$6, %edi
L444:
	movl	__ZL6fnlist.lto_priv.0, %ebx
	testl	%ebx, %ebx
	je	L445
	.p2align 4
	.p2align 3
L446:
	movl	%ebx, %eax
	movl	12(%ebx), %ebx
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	testl	%ebx, %ebx
	jne	L446
L445:
	movl	__ZL6fnlist.lto_priv.0+4, %ebx
	testl	%ebx, %ebx
	je	L447
	.p2align 4
	.p2align 3
L448:
	movl	%ebx, %eax
	movl	12(%ebx), %ebx
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	testl	%ebx, %ebx
	jne	L448
L447:
	movl	%edi, %ecx
	movl	$LC12, %edx
	movl	$__ZL21selectedboardfilename.lto_priv.0, %eax
	movl	$0, __ZL6fnlist.lto_priv.0
	movl	$0, __ZL6fnlist.lto_priv.0+4
	movl	$0, __ZL6fnlist.lto_priv.0+8
	movl	$0, __ZL6fnlist.lto_priv.0+12
	call	_klistpath
	movl	%esi, %ecx
	movl	$LC13, %edx
	movl	%eax, __ZL6fnlist.lto_priv.0
	movl	$__ZL21selectedboardfilename.lto_priv.0, %eax
	call	_klistpath
	movl	__ZL6fnlist.lto_priv.0, %ebx
	movl	%eax, __ZL6fnlist.lto_priv.0+4
	movl	%eax, %ecx
	testl	%ebx, %ebx
	je	L449
	movl	__ZL6fnlist.lto_priv.0+8, %eax
	movl	%ebx, %edx
	addl	$1, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L450:
	movl	12(%edx), %edx
	movl	%eax, %esi
	addl	$1, %eax
	testl	%edx, %edx
	jne	L450
	movl	%esi, __ZL6fnlist.lto_priv.0+8
L449:
	testl	%ecx, %ecx
	je	L451
	movl	__ZL6fnlist.lto_priv.0+12, %eax
	movl	%ecx, %edx
	addl	$1, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L452:
	movl	%eax, __ZL6fnlist.lto_priv.0+12
	movl	12(%edx), %edx
	addl	$1, %eax
	testl	%edx, %edx
	jne	L452
L451:
	xorl	%eax, %eax
	testl	%ecx, %ecx
	movl	%ebx, __ZL12finddirshigh
	setne	%al
	movl	%ecx, __ZL13findfileshigh.lto_priv.0
	movl	%eax, __ZL11currentlist
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
L453:
	.cfi_restore_state
	movl	$1, %esi
	movl	$6, %edi
	jmp	L444
	.cfi_endproc
LFE50:
	.p2align 4
	.globl	__ZL23menuselect_try_findlastv.lto_priv.0
	.def	__ZL23menuselect_try_findlastv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL23menuselect_try_findlastv.lto_priv.0:
LFB57:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$8, %esp
	.cfi_def_cfa_offset 20
	movl	$47, 4(%esp)
	movl	$__ZL13boardfilename.lto_priv.0, (%esp)
	call	_strrchr
	movl	__ZL13findfileshigh.lto_priv.0, %ebx
	leal	1(%eax), %esi
	testl	%eax, %eax
	movl	$__ZL13boardfilename.lto_priv.0, %eax
	cmove	%eax, %esi
	testl	%ebx, %ebx
	jne	L473
	jmp	L475
	.p2align 4,,10
	.p2align 3
L483:
	movl	12(%ebx), %ebx
	movl	%ebx, __ZL13findfileshigh.lto_priv.0
	testl	%ebx, %ebx
	je	L475
L473:
	movl	%esi, 4(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L483
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
L475:
	.cfi_restore_state
	movl	__ZL6fnlist.lto_priv.0+4, %eax
	movl	%eax, __ZL13findfileshigh.lto_priv.0
	addl	$8, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE57:
	.p2align 4
	.globl	_fillsector_maybetrans.isra.0
	.def	_fillsector_maybetrans.isra.0;	.scl	2;	.type	32;	.endef
_fillsector_maybetrans.isra.0:
LFB60:
	.cfi_startproc
	cmpw	$-1, %ax
	je	L536
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
	subl	$80, %esp
	.cfi_def_cfa_offset 100
	movb	%dl, 50(%esp)
	cmpl	$-1, %edx
	jne	L487
	movl	_totalclock, %eax
	sall	$4, %eax
	andl	$2047, %eax
	movzwl	_sintable(%eax,%eax), %eax
	sarw	$10, %ax
	cwtl
/APP
 # 10319 "source/build/src/build.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movzbl	_editorcolors+14, %edx
	sarl	%eax
	subl	%eax, %edx
	movb	%dl, 50(%esp)
L487:
	movl	__ZL10osdrowscur.lto_priv.0, %edx
	movswl	%bx, %eax
	movb	%cl, 51(%esp)
	movl	$0, %esi
	leal	(%eax,%eax,4), %eax
	movl	_xdim, %edi
	testl	%edx, %edx
	leal	8(,%edx,8), %ecx
	cmovns	%ecx, %esi
	sall	$3, %eax
	movl	%edi, 44(%esp)
	movl	_ydim16, %ecx
	movl	%eax, 40(%esp)
	addl	_sector, %eax
	movzwl	(%eax), %edi
	movzwl	2(%eax), %edx
	leal	-1(%ecx), %ebx
	addl	%edi, %edx
	movw	%di, 48(%esp)
	subl	$1, %edx
	movw	%dx, 30(%esp)
	cmpw	%dx, %di
	jg	L517
	movl	_m32_sideview, %eax
	movl	%esi, 20(%esp)
	movl	%ebx, %ebp
	movl	%esi, 52(%esp)
	movl	%eax, 36(%esp)
	movl	%ecx, 56(%esp)
	movl	%ebx, 60(%esp)
	jmp	L495
	.p2align 4,,10
	.p2align 3
L541:
	movl	_halfxdim16, %eax
	addl	%eax, 64(%esp)
	movl	_midydim16, %eax
	addl	72(%esp), %eax
	movl	%eax, 72(%esp)
L491:
	movl	20(%esp), %esi
	cmpl	%eax, %ebp
	cmovg	%eax, %ebp
	cmpl	%eax, %esi
	cmovge	%esi, %eax
	addl	$1, %edi
	movl	%eax, 20(%esp)
	cmpw	%di, 30(%esp)
	jl	L540
L495:
	movswl	%di, %ecx
	movl	_zoom, %ebx
	movl	%ecx, %esi
	movl	%ecx, 32(%esp)
	sall	$5, %esi
	addl	_wall, %esi
	movl	4(%esi), %edx
	movl	%ebx, 16(%esp)
	movl	%edx, %eax
	subl	_pos+4, %eax
	movl	%edx, 24(%esp)
	movl	%eax, 12(%esp)
	movl	(%esi), %eax
	subl	_pos, %eax
	movl	%eax, 8(%esp)
	leal	72(%esp), %eax
	movl	%eax, 4(%esp)
	leal	64(%esp), %eax
	movl	%eax, (%esp)
	call	_editorGet2dScreenCoordinates
	movl	36(%esp), %ecx
	movl	24(%esp), %edx
	testl	%ecx, %ecx
	movl	32(%esp), %ecx
	je	L541
	movl	40(%esp), %eax
	addl	_sector, %eax
	testb	$2, 14(%eax)
	je	L542
	movl	%edx, 8(%esp)
	movl	(%esi), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 24(%esp)
	call	_getflorzofslopeptr.part.0
	movl	_m32_sideview, %esi
	movl	24(%esp), %ecx
	movl	%esi, 36(%esp)
L493:
	imull	_m32_sidecos, %ebx
	subl	_pos+8, %eax
	movl	%ebx, %edx
/APP
 # 672 "source/build/src/2d.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	_midydim16, %eax
	addl	72(%esp), %edx
	movl	_halfxdim16, %esi
	addl	64(%esp), %esi
	addl	%edx, %eax
	movl	36(%esp), %edx
	movl	%esi, 64(%esp)
	movl	%eax, 72(%esp)
	testl	%edx, %edx
	je	L491
	movl	%esi, __ZL8tempxyar.lto_priv.0(,%ecx,8)
	movl	%eax, __ZL8tempxyar.lto_priv.0+4(,%ecx,8)
	jmp	L491
L542:
	movl	8(%eax), %eax
	jmp	L493
L540:
	movl	52(%esp), %esi
	movl	56(%esp), %ecx
	movl	60(%esp), %ebx
	movl	40(%esp), %eax
	addl	_sector, %eax
L489:
	movl	20(%esp), %edi
	cmpl	%ebp, %esi
	cmovge	%esi, %ebp
	cmpl	%edi, %ecx
	cmovg	%edi, %ebx
	movl	__ZL17minhlsectorfloorz.lto_priv.0, %edi
	cmpl	%edi, 8(%eax)
	setg	%al
	movzbl	%al, %eax
	addl	%eax, %ebp
	cmpl	%ebx, %ebp
	jg	L484
	movzbl	50(%esp), %eax
	movl	%eax, %edx
	negl	%edx
	testb	$1, 51(%esp)
	cmovne	%edx, %eax
	movl	%eax, 32(%esp)
	leal	1(%ebx), %eax
	movl	%eax, 36(%esp)
	.p2align 4
	.p2align 3
L515:
	movl	$0, __ZL7fillist
	movl	_pos+4, %ecx
	movl	_midydim16, %edx
	movl	_zoom, %ebx
	movzwl	48(%esp), %esi
	cmpw	30(%esp), %si
	jg	L498
	movl	%ebp, %eax
	movzwl	30(%esp), %edi
	subl	%edx, %eax
	sall	$14, %eax
	cltd
	idivl	%ebx
	leal	(%eax,%ecx), %ebx
	movl	$1, %eax
	movl	%ebx, 20(%esp)
	movw	%ax, 24(%esp)
	jmp	L508
	.p2align 4,,10
	.p2align 3
L544:
	movl	__ZL8tempxyar.lto_priv.0(,%ebx,8), %edx
	movl	__ZL8tempxyar.lto_priv.0(,%eax,8), %ecx
	movl	__ZL8tempxyar.lto_priv.0+4(,%eax,8), %eax
	movl	%edx, 64(%esp)
	movl	__ZL8tempxyar.lto_priv.0+4(,%ebx,8), %edx
	movl	%ecx, 68(%esp)
	movl	%edx, 72(%esp)
	movl	%eax, 76(%esp)
	cmpl	%eax, %edx
	jle	L500
	leal	64(%esp), %eax
	leal	68(%esp), %ebx
/APP
 # 10376 "source/build/src/build.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	leal	72(%esp), %eax
	leal	76(%esp), %ebx
/APP
 # 10377 "source/build/src/build.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	72(%esp), %edx
L500:
	cmpl	%edx, %ebp
	jl	L502
	movl	76(%esp), %eax
	cmpl	%eax, %ebp
	jge	L502
	movzwl	24(%esp), %ebx
	cmpw	$640, %bx
	je	L533
	subl	%edx, %eax
	movl	%ebp, %ecx
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	subl	%edx, %ecx
	movl	%eax, 12(%esp)
	movl	68(%esp), %eax
	subl	64(%esp), %eax
	imull	%ecx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.2
	movswl	%bx, %edx
	addl	64(%esp), %eax
	addl	$1, %ebx
	movl	%eax, 64(%esp)
	movl	%eax, __ZL7fillist(,%edx,4)
	movw	%bx, 24(%esp)
	.p2align 4
	.p2align 3
L502:
	addl	$1, %esi
	cmpw	%si, %di
	jl	L543
L508:
	movswl	%si, %ebx
	movl	_wall, %ecx
	movl	%ebx, %edx
	sall	$5, %edx
	addl	%ecx, %edx
	movswl	8(%edx), %eax
	cmpl	$0, _m32_sideview
	jne	L544
	movl	(%edx), %ebx
	sall	$5, %eax
	movl	4(%edx), %edx
	addl	%ecx, %eax
	movl	%ebx, 64(%esp)
	movl	(%eax), %ecx
	movl	4(%eax), %eax
	movl	%edx, 72(%esp)
	movl	%ecx, 68(%esp)
	movl	%eax, 76(%esp)
	cmpl	%eax, %edx
	jle	L505
	leal	64(%esp), %eax
	leal	68(%esp), %ebx
/APP
 # 10396 "source/build/src/build.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	leal	72(%esp), %eax
	leal	76(%esp), %ebx
/APP
 # 10397 "source/build/src/build.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	72(%esp), %edx
L505:
	movl	20(%esp), %ecx
	cmpl	%edx, %ecx
	jl	L502
	movl	76(%esp), %eax
	cmpl	%eax, %ecx
	jge	L502
	subl	%edx, %eax
	subl	%edx, %ecx
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	68(%esp), %eax
	subl	64(%esp), %eax
	imull	%ecx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.2
	addl	64(%esp), %eax
	subl	_pos, %eax
	imull	_zoom, %eax
	sarl	$14, %eax
	addl	_halfxdim16, %eax
	js	L502
	movzwl	24(%esp), %ecx
	cmpw	$640, %cx
	je	L533
	movswl	%cx, %edx
	addl	$1, %esi
	addl	$1, %ecx
	movl	%eax, __ZL7fillist(,%edx,4)
	movw	%cx, 24(%esp)
	cmpw	%si, %di
	jge	L508
	.p2align 4
	.p2align 3
L543:
	movzwl	24(%esp), %edi
	cmpw	$1, %di
	jg	L507
L498:
	addl	$1, %ebp
	cmpl	36(%esp), %ebp
	jne	L515
L484:
	addl	$80, %esp
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
L533:
	.cfi_restore_state
	movzwl	24(%esp), %edi
L507:
	movl	$__ZL7fillist+4, %eax
	movl	$1, %esi
	.p2align 4
	.p2align 3
L509:
	movl	$__ZL7fillist, %ebx
	.p2align 4
	.p2align 3
L511:
	movl	(%ebx), %ecx
	cmpl	%ecx, (%eax)
	jge	L510
/APP
 # 10421 "source/build/src/build.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
L510:
	addl	$4, %ebx
	cmpl	%ebx, %eax
	jne	L511
	addl	$1, %esi
	addl	$4, %eax
	cmpw	%si, %di
	jne	L509
	movl	%edi, %ecx
	leal	-1(%edi), %eax
	movl	%edi, %ebx
	andl	$1, %ecx
	movswl	%ax, %edi
	andl	$1, %ebx
	cmpl	%ecx, %edi
	jle	L498
	movl	%edi, 20(%esp)
	movl	44(%esp), %esi
	jmp	L514
	.p2align 4,,10
	.p2align 3
L545:
	leal	1(%ecx), %edi
	movl	__ZL7fillist(,%edi,4), %edx
	cmpl	%edx, %esi
	jge	L513
	movl	%esi, __ZL7fillist(,%edi,4)
	movl	__ZL7fillist(,%ecx,4), %eax
	movl	%esi, %edx
L513:
	movl	32(%esp), %edi
	movl	%ebp, (%esp)
	leal	-1(%edx), %ecx
	addl	$1, %eax
	movl	%ebp, %edx
	addl	$2, %ebx
	movl	%edi, 4(%esp)
	call	_editorDraw2dLine
	movswl	%bx, %ecx
	cmpl	%ecx, 20(%esp)
	jle	L498
L514:
	movl	__ZL7fillist(,%ecx,4), %eax
	cmpl	%eax, %esi
	jge	L545
	addl	$1, %ebp
	cmpl	36(%esp), %ebp
	jne	L515
	jmp	L484
L536:
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	ret
L517:
	.cfi_def_cfa_offset 100
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%esi, 20(%esp)
	movl	%ebx, %ebp
	jmp	L489
	.cfi_endproc
LFE60:
	.p2align 4
	.globl	__ZL13whitelinescanss.lto_priv.0
	.def	__ZL13whitelinescanss.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL13whitelinescanss.lto_priv.0:
LFB62:
	.cfi_startproc
	movl	%edx, %ecx
	movswl	_numsectors, %edx
	cmpw	$4095, %dx
	jg	L564
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	cwtl
	leal	(%edx,%edx,4), %edx
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	leal	(%eax,%eax,4), %eax
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	movl	_sector, %ebx
	leal	(%ebx,%eax,8), %eax
	leal	(%ebx,%edx,8), %edx
	movl	(%eax), %ebx
	movl	%ebx, (%edx)
	movl	4(%eax), %ebx
	movl	%ebx, 4(%edx)
	movl	8(%eax), %ebx
	movl	%ebx, 8(%edx)
	movl	12(%eax), %ebx
	movl	%ebx, 12(%edx)
	movl	16(%eax), %ebx
	movl	%ebx, 16(%edx)
	movl	20(%eax), %ebx
	movl	%ebx, 20(%edx)
	movl	24(%eax), %ebx
	movl	%ebx, 24(%edx)
	movl	28(%eax), %ebx
	movl	%ebx, 28(%edx)
	movl	32(%eax), %ebx
	movl	%ebx, 32(%edx)
	movl	36(%eax), %eax
	movl	$-858993459, %ebx
	movl	%eax, 36(%edx)
	movswl	_numsectors, %eax
	leal	(%eax,%eax,4), %esi
	leal	0(,%esi,8), %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	_sector, %eax
	movzwl	_numwalls, %edx
	movw	%dx, (%eax,%esi,8)
	movswl	_numsectors, %eax
	leal	(%eax,%eax,4), %edi
	leal	2(,%edi,8), %eax
	movl	%edi, 8(%esp)
	mull	%ebx
	movl	_sector, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 2(%eax,%edi,8)
	movswl	_numwalls, %eax
	movswl	%cx, %edi
	movl	%edi, 12(%esp)
	movw	%ax, 30(%esp)
	movw	%ax, 28(%esp)
	sall	$5, %eax
	movl	%edi, (%esp)
	movl	%eax, %ebp
	jmp	L556
	.p2align 4,,10
	.p2align 3
L552:
	movl	(%esp), %esi
	leal	(%edx,%ebp), %ecx
	sall	$5, %esi
	addl	%esi, %edx
	movl	(%edx), %esi
	movl	%esi, (%ecx)
	movl	4(%edx), %esi
	movl	_wall, %edi
	movl	%esi, 4(%ecx)
	movl	8(%edx), %esi
	movl	%esi, 8(%ecx)
	movl	12(%edx), %esi
	movl	%esi, 12(%ecx)
	movl	16(%edx), %esi
	movl	%esi, 16(%ecx)
	movl	20(%edx), %esi
	movl	%esi, 20(%ecx)
	movl	24(%edx), %esi
	movl	%esi, 24(%ecx)
	movl	28(%edx), %edx
	movl	%edx, 28(%ecx)
	leal	10(%ebp), %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movw	%ax, 10(%edi,%ebp)
	movl	4(%esp), %eax
	call	_sectorofwall
	movl	_sector, %ecx
	movl	%eax, %edx
	leal	12(%ebp), %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movzwl	28(%esp), %eax
	movw	%dx, 12(%edi,%ebp)
	movl	$-858993459, %edi
	addl	$32, %ebp
	leal	1(%eax), %esi
	movl	8(%esp), %eax
	leal	2(,%eax,8), %eax
	mull	%edi
	movl	8(%esp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	addw	$1, 2(%ecx,%eax,8)
	cmpl	12(%esp), %ebx
	je	L567
	movw	%si, 28(%esp)
	movl	%ebx, (%esp)
L556:
	cmpw	$16383, 28(%esp)
	jg	L568
	movswl	(%esp), %eax
	call	_lastwall
	movl	_wall, %edx
	movl	%eax, %ecx
	movswl	%ax, %edi
	movl	%eax, %ebx
	sall	$5, %ecx
	movl	%edi, 4(%esp)
	movl	%edi, %eax
	addl	%edx, %ecx
	cmpw	$0, 10(%ecx)
	js	L552
	movswl	8(%ecx), %esi
	movswl	30(%esp), %edi
	movl	%esi, 4(%esp)
	movl	%esi, %eax
	movl	%esi, %ebx
	testw	%di, %di
	jle	L552
	sall	$5, %esi
	movl	%ebp, 20(%esp)
	xorl	%ecx, %ecx
	addl	%edx, %esi
	movl	%eax, 24(%esp)
	movl	%esi, 16(%esp)
	movl	(%esi), %esi
	movl	16(%esp), %ebp
	movw	%ax, 16(%esp)
	jmp	L554
	.p2align 5
	.p2align 4,,10
	.p2align 3
L553:
	addl	$1, %ecx
	cmpl	%edi, %ecx
	je	L569
L554:
	movl	%ecx, %ebx
	sall	$5, %ebx
	movswl	8(%edx,%ebx), %eax
	sall	$5, %eax
	addl	%edx, %eax
	cmpl	(%eax), %esi
	jne	L553
	movl	4(%eax), %eax
	cmpl	%eax, 4(%ebp)
	jne	L553
	cmpw	$-1, 10(%edx,%ebx)
	jne	L553
	movswl	%cx, %edi
	movl	20(%esp), %ebp
	movl	%ecx, %ebx
	movl	%edi, 4(%esp)
	movl	%edi, %eax
	jmp	L552
	.p2align 4,,10
	.p2align 3
L569:
	movl	24(%esp), %ebx
	movl	20(%esp), %ebp
	movzwl	16(%esp), %eax
	jmp	L552
	.p2align 4,,10
	.p2align 3
L568:
	addl	$32, %esp
	.cfi_def_cfa_offset 20
	movl	$16385, %eax
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
L564:
	movl	$16385, %eax
	ret
L567:
	.cfi_def_cfa_offset 52
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movswl	30(%esp), %edi
	movswl	28(%esp), %ebp
	movl	_wall, %ebx
	cmpl	%ebp, %edi
	jge	L557
	movl	%edi, %eax
	movl	%edi, %edx
	sall	$5, %eax
	leal	8(%ebx,%eax), %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L558:
	movl	%ecx, %eax
	addl	$1, %edx
	addl	$32, %ecx
	subl	%ebx, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movw	%dx, -32(%ecx)
	cmpl	%ebp, %edx
	jne	L558
L557:
	movswl	%si, %eax
	addl	$134217727, %eax
	movl	%eax, %edx
	andl	$134217727, %eax
	addl	$1, _wallchanged(,%eax,4)
	movzwl	30(%esp), %eax
	sall	$5, %edx
	movw	%ax, 8(%ebx,%edx)
	movl	%edi, %eax
	call	_clockdir
	cmpl	$1, %eax
	movl	$-1, %eax
	cmovne	%esi, %eax
	addl	$32, %esp
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
LFE62:
	.section .rdata,"dr"
LC14:
	.ascii "include\0"
LC15:
	.ascii "#include\0"
LC16:
	.ascii "define\0"
LC17:
	.ascii "#define\0"
LC18:
	.ascii "dynamicremap\0"
LC19:
	.ascii "%s:%d: Unexpected EOF!\0"
	.align 4
LC20:
	.ascii "source/build/src/scriptfile.cpp\0"
LC21:
	.ascii "%s:%d: Malformed include\0"
LC22:
	.ascii "%s:%d: Failed including %s\0"
LC23:
	.ascii "Including: %s\0"
LC24:
	.ascii "%s:%d: Malformed define\0"
	.align 4
LC25:
	.ascii "%s:%d: No number given for name '%s'\0"
	.align 4
LC26:
	.ascii "%s:%d: Constant %d for name '%s' out of range\0"
	.align 4
LC27:
	.ascii "%s:%d: Truncating name '%s' to 24 characters\0"
	.text
	.p2align 4
	.globl	__ZL14parsenamesfileP10scriptfile.lto_priv.0
	.def	__ZL14parsenamesfileP10scriptfile.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL14parsenamesfileP10scriptfile.lto_priv.0:
LFB63:
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
	subl	$96, %esp
	.cfi_def_cfa_offset 116
	movl	$LC14, 56(%esp)
	leal	56(%esp), %ebx
	movl	$0, 60(%esp)
	movl	$LC15, 64(%esp)
	movl	$0, 68(%esp)
	movl	$LC16, 72(%esp)
	movl	$1, 76(%esp)
	movl	$LC17, 80(%esp)
	movl	$1, 84(%esp)
	movl	$LC18, 88(%esp)
	movl	$2, 92(%esp)
	movl	$0, 32(%esp)
	.p2align 4
	.p2align 3
L579:
	movl	%ebp, %eax
	call	_scriptfile_gettoken
	movl	%eax, %edi
	testl	%eax, %eax
	je	L570
	leal	88(%esp), %esi
	jmp	L576
	.p2align 4,,10
	.p2align 3
L573:
	cmpl	%ebx, %esi
	je	L579
	subl	$8, %esi
L576:
	movl	(%esi), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L573
	movl	4(%esi), %eax
	movl	8(%ebp), %edi
	testl	%eax, %eax
	je	L623
	cmpl	$1, %eax
	je	L578
	cmpl	$-2, %eax
	jne	L579
L570:
	movl	32(%esp), %eax
	addl	$96, %esp
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
L578:
	.cfi_restore_state
	movl	%ebp, %eax
	call	_scriptfile_gettoken
	movl	%eax, %esi
	testl	%eax, %eax
	je	L624
	leal	52(%esp), %edx
	movl	%ebp, %eax
	call	_scriptfile_getsymbol
	testl	%eax, %eax
	jne	L625
	movl	52(%esp), %eax
	movl	%eax, 36(%esp)
	cmpl	$30463, %eax
	ja	L626
	movl	%esi, (%esp)
	call	_strlen
	cmpl	$24, %eax
	ja	L627
L595:
	movl	36(%esp), %ecx
	addl	$1, %eax
	leal	(%ecx,%ecx,4), %edx
	leal	(%edx,%edx,4), %ecx
	leal	_names(%ecx), %edx
	movl	%edx, 40(%esp)
	movl	$24, %edx
	cmpl	%edx, %eax
	cmova	%edx, %eax
	cmpl	$16, %eax
	jb	L628
	movl	-16(%esi,%eax), %edx
	movl	40(%esp), %edi
	movl	%edx, -16(%edi,%eax)
	movl	-12(%esi,%eax), %edx
	movl	%edx, -12(%edi,%eax)
	movl	-8(%esi,%eax), %edx
	movl	%edx, -8(%edi,%eax)
	movl	-4(%esi,%eax), %edx
	movl	%edx, -4(%edi,%eax)
	subl	$1, %eax
	cmpl	$16, %eax
	jb	L598
	movl	%ebp, 48(%esp)
	andl	$-16, %eax
	movl	%eax, 40(%esp)
	xorl	%eax, %eax
L602:
	movl	12(%esi,%eax), %edx
	movl	8(%esi,%eax), %ecx
	movl	4(%esi,%eax), %ebp
	movl	%edx, 44(%esp)
	movl	(%esi,%eax), %edx
	movl	%ebp, 4(%edi,%eax)
	movl	%edx, (%edi,%eax)
	movl	%ecx, 8(%edi,%eax)
	movl	44(%esp), %ecx
	movl	%ecx, 12(%edi,%eax)
	addl	$16, %eax
	cmpl	40(%esp), %eax
	jb	L602
	movl	%edi, 40(%esp)
	movl	48(%esp), %ebp
L598:
	movl	40(%esp), %eax
	movl	36(%esp), %edx
	addl	$1, 32(%esp)
	movb	$0, 24(%eax)
	call	_scriptfile_addsymbolvalue
	jmp	L579
	.p2align 4,,10
	.p2align 3
L623:
	movl	%ebp, %eax
	call	_scriptfile_gettoken
	movl	%eax, %esi
	testl	%eax, %eax
	je	L629
	call	_scriptfile_fromfile
	movl	__ZN6loguru18g_stderr_verbosityE, %ecx
	movl	%eax, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	testl	%edx, %edx
	je	L630
	testl	%eax, %eax
	jns	L631
L585:
	movl	%edx, %eax
	movl	%edx, 36(%esp)
	call	__ZL14parsenamesfileP10scriptfile.lto_priv.0
	addl	%eax, 32(%esp)
	movl	36(%esp), %eax
	call	_scriptfile_close
	jmp	L579
L631:
	movl	%esi, 16(%esp)
	movl	$LC23, 12(%esp)
	movl	$10542, 8(%esp)
	movl	$LC10, 4(%esp)
	movl	$0, (%esp)
	movl	%edx, 36(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	36(%esp), %edx
	jmp	L585
L628:
	testb	$8, %al
	jne	L632
	testb	$4, %al
	jne	L633
	testl	%eax, %eax
	je	L598
	movzbl	(%esi), %edx
	movb	%dl, _names(%ecx)
	testb	$2, %al
	je	L598
	movzwl	-2(%esi,%eax), %edx
	movl	40(%esp), %ecx
	movw	%dx, -2(%ecx,%eax)
	jmp	L598
	.p2align 4,,10
	.p2align 3
L626:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L579
	movl	%edi, %edx
	movl	%ebp, %eax
	call	_scriptfile_getlinum
	movl	36(%esp), %ecx
	movl	%esi, 28(%esp)
	movl	%eax, 20(%esp)
	movl	%ecx, 24(%esp)
	movl	20(%ebp), %eax
	movl	$LC26, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$10570, 8(%esp)
	movl	$LC10, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L579
L627:
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, __ZN6loguru18g_stderr_verbosityE
	cmovge	__ZN6loguru18g_stderr_verbosityE, %edx
	cmpl	$-1, %edx
	jl	L595
	movl	%edi, %edx
	movl	%ebp, %eax
	call	_scriptfile_getlinum
	movl	%esi, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%ebp), %eax
	movl	$LC27, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$10576, 8(%esp)
	movl	$LC10, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	%esi, (%esp)
	call	_strlen
	jmp	L595
L625:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L579
	movl	%edi, %edx
	movl	%ebp, %eax
	call	_scriptfile_getlinum
	movl	%esi, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%ebp), %eax
	movl	$LC25, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$10563, 8(%esp)
	movl	$LC10, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L579
L630:
	cmpl	$-2, %eax
	jl	L579
	movl	%edi, %edx
	movl	%ebp, %eax
	call	_scriptfile_getlinum
	movl	%esi, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%ebp), %eax
	movl	$LC22, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$10537, 8(%esp)
	movl	$LC10, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L579
L633:
	movl	(%esi), %edx
	movl	%edx, _names(%ecx)
	movl	-4(%esi,%eax), %edx
	movl	40(%esp), %ecx
	movl	%edx, -4(%ecx,%eax)
	jmp	L598
L632:
	movl	(%esi), %edx
	movl	%ecx, %edi
	movl	4(%esi), %ecx
	movl	%edx, _names(%edi)
	movl	%ecx, _names+4(%edi)
	movl	-8(%esi,%eax), %edx
	movl	-4(%esi,%eax), %ecx
	movl	40(%esp), %edi
	movl	%edx, -8(%edi,%eax)
	movl	%ecx, -4(%edi,%eax)
	jmp	L598
L624:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L579
	movl	12(%ebp), %edx
	movl	%ebp, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%ebp), %eax
	movl	$LC19, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$47, 8(%esp)
	movl	$LC20, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L579
	movl	%edi, %edx
	movl	%ebp, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%ebp), %eax
	movl	$LC24, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$10556, 8(%esp)
	movl	$LC10, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L579
L629:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L579
	movl	12(%ebp), %edx
	movl	%ebp, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%ebp), %eax
	movl	$LC19, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$47, 8(%esp)
	movl	$LC20, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L579
	movl	%edi, %edx
	movl	%ebp, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%ebp), %eax
	movl	$LC21, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$10527, 8(%esp)
	movl	$LC10, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L579
	.cfi_endproc
LFE63:
	.section .rdata,"dr"
LC28:
	.ascii "SEC\0"
LC29:
	.ascii "sec\0"
LC30:
	.ascii "x:%d y:%d ang:%d r%d\0"
LC31:
	.ascii "%d/%d %s. %d\0"
	.align 4
LC32:
	.ascii "/%d wal. %d/16k spr. %d/256 bn.\0"
LC33:
	.ascii " wal. %d spr. %d/256 bn.\0"
LC34:
	.ascii "/%d wal. %d/%d spr.\0"
LC35:
	.ascii "/%dk wal. %d/%dk spr.\0"
LC36:
	.ascii "%d sprites, %d walls selected\0"
	.align 4
LC37:
	.ascii "%d sectors with a total of %d walls selected\0"
LC38:
	.ascii " (ang=%d)\0"
	.text
	.p2align 4
	.globl	__ZL13printcoords16iis.lto_priv.0
	.def	__ZL13printcoords16iis.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL13printcoords16iis.lto_priv.0:
LFB67:
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
	subl	$152, %esp
	.cfi_def_cfa_offset 168
	cmpw	$1024, _numsectors
	jg	L635
	cmpw	$8192, _numwalls
	jle	L636
L635:
	movl	$1, %ebx
	movl	$1, %edi
L637:
	movl	_map_revision, %esi
	movswl	%cx, %ecx
	movl	%edx, 12(%esp)
	movl	%ecx, 16(%esp)
	subl	$1, %esi
	movl	%eax, 8(%esp)
	movl	%esi, 20(%esp)
	leal	24(%esp), %esi
	movl	$LC30, 4(%esp)
	movl	%esi, (%esp)
	call	_sprintf
	xorl	%eax, %eax
	cmpb	$0, 24(%esp)
	jne	L640
	jmp	L638
	.p2align 4
	.p2align 4,,10
	.p2align 3
L702:
	cmpl	$33, %eax
	je	L641
L640:
	addl	$1, %eax
	cmpb	$0, (%esi,%eax)
	jne	L702
	cmpl	$33, %eax
	je	L641
L638:
	movl	$33, %edx
	subl	%eax, %edx
	addl	%esi, %eax
	cmpl	$16, %edx
	jb	L703
	movl	$538976288, -16(%edx,%eax)
	subl	$1, %edx
	movl	$538976288, -11(%edx,%eax)
	movl	$538976288, -7(%edx,%eax)
	movl	$538976288, -3(%edx,%eax)
	cmpl	$16, %edx
	jb	L641
	andl	$-16, %edx
	xorl	%ecx, %ecx
L647:
	movl	$538976288, (%eax,%ecx)
	movl	$538976288, 4(%eax,%ecx)
	movl	$538976288, 8(%eax,%ecx)
	movl	$538976288, 12(%eax,%ecx)
	addl	$16, %ecx
	cmpl	%edx, %ecx
	jb	L647
	.p2align 4
	.p2align 3
L641:
	movb	$0, 57(%esp)
	call	__ZL18clearministatbar16v
	movzbl	_whitecol, %eax
	movl	$0, 20(%esp)
	movl	%esi, 16(%esp)
	movl	%eax, 8(%esp)
	movl	_ydim, %eax
	movl	$-1, 12(%esp)
	subl	$16, %eax
	movl	$8, (%esp)
	movl	%eax, 4(%esp)
	call	_printext16
	movzwl	_highlightcnt, %eax
	testw	%ax, %ax
	jle	L649
	movswl	%ax, %ebx
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L650:
	movzbl	_highlight+1(%edx,%edx), %eax
	addl	$1, %edx
	shrb	$6, %al
	andl	$1, %eax
	addl	%eax, %ecx
	cmpl	%ebx, %edx
	jne	L650
	subl	%ecx, %edx
	movl	%ecx, 8(%esp)
	movl	%edx, 12(%esp)
	movl	$LC36, 4(%esp)
	movl	%esi, (%esp)
	call	_sprintf
L661:
	movl	$1, %ebx
L660:
	movl	_xdim, %eax
	testl	%eax, %eax
	leal	7(%eax), %edx
	cmovns	%eax, %edx
	movl	$127, %eax
	sarl	$3, %edx
	subl	$33, %edx
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	movl	$1, %eax
	testl	%edx, %edx
	cmovle	%eax, %edx
	xorl	%eax, %eax
	cmpb	$0, 24(%esp)
	je	L662
	.p2align 4
	.p2align 4
	.p2align 3
L664:
	addl	$1, %eax
	cmpb	$0, (%esi,%eax)
	je	L663
	cmpl	%eax, %edx
	jne	L664
L665:
	movb	$0, 24(%esp,%edx)
	movzbl	_editorcolors+10, %eax
	testl	%ebx, %ebx
	movzbl	_whitecol, %edx
	movl	%esi, 16(%esp)
	movl	$0, 20(%esp)
	cmove	%edx, %eax
	movl	$-1, 12(%esp)
	movl	$264, (%esp)
	movl	%eax, 8(%esp)
	movl	_ydim, %eax
	subl	$16, %eax
	movl	%eax, 4(%esp)
	call	_printext16
	addl	$152, %esp
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
L703:
	.cfi_restore_state
	testb	$8, %dl
	jne	L704
	testb	$4, %dl
	jne	L705
	testl	%edx, %edx
	je	L641
	movb	$32, (%eax)
	testb	$2, %dl
	je	L641
	movl	$8224, %ecx
	movw	%cx, -2(%eax,%edx)
	jmp	L641
	.p2align 4,,10
	.p2align 3
L636:
	cmpl	$4096, _Numsprites
	jg	L635
	movl	_numyaxbunches, %ebx
	testl	%ebx, %ebx
	setg	%bl
	movl	%ebx, %edi
	setg	%bl
	movzbl	%bl, %ebx
	jmp	L637
	.p2align 4,,10
	.p2align 3
L663:
	cmpl	%eax, %edx
	jle	L665
L662:
	movl	%edx, %ecx
	movl	$1, %edi
	subl	%eax, %ecx
	cmpl	%eax, %edx
	cmovle	%edi, %ecx
	addl	%esi, %eax
	cmpl	$16, %ecx
	jnb	L666
	testb	$8, %cl
	jne	L706
	testb	$4, %cl
	jne	L707
	testl	%ecx, %ecx
	je	L665
	movb	$32, (%eax)
	testb	$2, %cl
	je	L665
	movl	$8224, %edi
	movw	%di, -2(%eax,%ecx)
	jmp	L665
	.p2align 4,,10
	.p2align 3
L666:
	movl	$538976288, -16(%ecx,%eax)
	subl	$1, %ecx
	movl	$538976288, -11(%ecx,%eax)
	movl	$538976288, -7(%ecx,%eax)
	movl	$538976288, -3(%ecx,%eax)
	cmpl	$16, %ecx
	jb	L665
	andl	$-16, %ecx
	xorl	%edi, %edi
L671:
	movl	$538976288, (%eax,%edi)
	movl	$538976288, 4(%eax,%edi)
	movl	$538976288, 8(%eax,%edi)
	movl	$538976288, 12(%eax,%edi)
	addl	$16, %edi
	cmpl	%ecx, %edi
	jb	L671
	jmp	L665
	.p2align 4,,10
	.p2align 3
L649:
	movswl	_highlightsectorcnt, %eax
	testw	%ax, %ax
	jle	L708
	movl	__ZL13numhlsecwalls.lto_priv.0, %edx
	movl	%eax, 8(%esp)
	movl	$LC37, 4(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	call	_sprintf
	movl	%eax, %edx
	movl	__ZL13m32_rotateang.lto_priv.0, %eax
	testl	%eax, %eax
	je	L661
	addl	%esi, %edx
	movl	%eax, 8(%esp)
	movl	$LC38, 4(%esp)
	movl	%edx, (%esp)
	call	_sprintf
	jmp	L661
	.p2align 4,,10
	.p2align 3
L708:
	movl	_numyaxbunches, %eax
	movl	$LC29, %edx
	movl	%esi, (%esp)
	movswl	_numwalls, %ecx
	movl	$LC31, 4(%esp)
	testl	%eax, %eax
	movl	$LC28, %eax
	cmovg	%eax, %edx
	movl	%edi, %eax
	movl	%ecx, 20(%esp)
	cmpb	$1, %al
	sbbl	%eax, %eax
	movl	%edx, 16(%esp)
	andl	$-3072, %eax
	addl	$4096, %eax
	movl	%eax, 12(%esp)
	movswl	_numsectors, %eax
	movl	%eax, 8(%esp)
	call	_sprintf
	movl	_Numsprites, %ecx
	leal	(%esi,%eax), %edx
	movl	_numyaxbunches, %eax
	testl	%eax, %eax
	jle	L654
	cmpl	$799, _xdim
	jle	L655
	movl	%eax, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	$16384, 8(%esp)
	movl	$LC32, 4(%esp)
	movl	%edx, (%esp)
	call	_sprintf
	jmp	L660
L654:
	movl	%edi, %eax
	cmpl	$799, _xdim
	jle	L657
	testb	%al, %al
	jne	L678
	movl	$4096, %edi
	movl	$8192, %eax
L658:
	movl	%edi, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC34, 4(%esp)
	movl	%edx, (%esp)
	call	_sprintf
	jmp	L660
L655:
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	$LC33, 4(%esp)
	movl	%edx, (%esp)
	call	_sprintf
	jmp	L660
L657:
	testb	%al, %al
	jne	L679
	movl	$4, %edi
	movl	$8, %eax
L659:
	movl	%edi, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC35, 4(%esp)
	movl	%edx, (%esp)
	call	_sprintf
	jmp	L660
L704:
	movl	$538976288, (%eax)
	movl	$538976288, 4(%eax)
	movl	$538976288, -8(%eax,%edx)
	movl	$538976288, -4(%eax,%edx)
	jmp	L641
L706:
	movl	$538976288, (%eax)
	movl	$538976288, 4(%eax)
	movl	$538976288, -8(%eax,%ecx)
	movl	$538976288, -4(%eax,%ecx)
	jmp	L665
L705:
	movl	$538976288, (%eax)
	movl	$538976288, -4(%eax,%edx)
	jmp	L641
L707:
	movl	$538976288, (%eax)
	movl	$538976288, -4(%eax,%ecx)
	jmp	L665
L679:
	movl	$16, %edi
	movl	$16, %eax
	jmp	L659
L678:
	movl	$16384, %edi
	movl	$16384, %eax
	jmp	L658
	.cfi_endproc
LFE67:
	.p2align 4
	.globl	__printmessage16
	.def	__printmessage16;	.scl	2;	.type	32;	.endef
__printmessage16:
LFB68:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$344, %esp
	.cfi_def_cfa_offset 356
	leal	360(%esp), %eax
	movl	$160, 4(%esp)
	leal	184(%esp), %esi
	movl	%eax, 24(%esp)
	leal	28(%esp), %ebx
	movl	%eax, 12(%esp)
	movl	356(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	*__imp___vsnprintf
	movzbl	184(%esp), %edx
	xorl	%eax, %eax
	testb	%dl, %dl
	jne	L712
	jmp	L710
	.p2align 5
	.p2align 4,,10
	.p2align 3
L718:
	cmpl	$146, %eax
	je	L710
L712:
	movb	%dl, (%ebx,%eax)
	addl	$1, %eax
	movzbl	(%esi,%eax), %edx
	testb	%dl, %dl
	jne	L718
L710:
	movb	$0, 28(%esp,%eax)
	movl	_totalclock, %eax
	cmpl	%eax, _lastpm16time
	je	L719
L714:
	call	__ZL18clearministatbar16v
	movzbl	_whitecol, %eax
	movl	%ebx, 16(%esp)
	movl	$0, 20(%esp)
	movl	%eax, 8(%esp)
	movl	_ydim, %eax
	movl	$-1, 12(%esp)
	subl	$16, %eax
	movl	$8, (%esp)
	movl	%eax, 4(%esp)
	call	_printext16
	addl	$344, %esp
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
L719:
	.cfi_restore_state
	movl	%ebx, 4(%esp)
	movl	$_lastpm16buf, (%esp)
	call	_strcpy
	jmp	L714
	.cfi_endproc
LFE68:
	.section .rdata,"dr"
LC39:
	.ascii "%s\0"
	.text
	.p2align 4
	.globl	_ask_if_sure
	.def	_ask_if_sure;	.scl	2;	.type	32;	.endef
_ask_if_sure:
LFB71:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%edx, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	%eax, 4(%esp)
	movl	$LC39, (%esp)
	call	__printmessage16
	movl	__ZL10sdl_resize.lto_priv.0, %eax
	orl	__ZL13sdl_minimized.lto_priv.0, %eax
	jne	L721
	movl	$1, %eax
	call	_videoShowFrame.part.0
L721:
	xorl	%eax, %eax
L722:
	movl	$0, _g_keyAsciiFIFO(%eax)
	addl	$16, %eax
	movl	$0, _g_keyAsciiFIFO-12(%eax)
	movl	$0, _g_keyAsciiFIFO-8(%eax)
	movl	$0, _g_keyAsciiFIFO-4(%eax)
	cmpl	$64, %eax
	jb	L722
	movzbl	_keystatus+1, %eax
	orb	_keystatus+46, %al
	movb	$0, _g_keyAsciiEnd
	movb	$0, _g_keyAsciiPos
	jne	L724
	.p2align 4
	.p2align 3
L728:
	call	_handleevents
	movl	$1, (%esp)
	call	*__imp__Sleep@4
	.cfi_def_cfa_offset 12
	movzbl	_g_keyAsciiPos, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	cmpb	_g_keyAsciiEnd, %al
	je	L742
	movzbl	%al, %edx
	addl	$1, %eax
	movzbl	_g_keyAsciiFIFO(%edx), %edx
	andl	$63, %eax
	movb	%al, _g_keyAsciiPos
	movl	%edx, %eax
	andl	$-33, %eax
	cmpb	$89, %al
	jne	L743
	andl	$2, %ebx
	movl	$1, %eax
	je	L744
L720:
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L743:
	.cfi_restore_state
	cmpb	$78, %al
	jne	L745
L724:
	xorl	%eax, %eax
L746:
	andl	$2, %ebx
	jne	L720
	.p2align 4
	.p2align 3
L744:
	xorl	%edx, %edx
L730:
	movl	$0, _keystatus(%edx)
	addl	$16, %edx
	movl	$0, _keystatus-12(%edx)
	movl	$0, _keystatus-8(%edx)
	movl	$0, _keystatus-4(%edx)
	cmpl	$256, %edx
	jb	L730
	jmp	L720
	.p2align 4,,10
	.p2align 3
L745:
	movzbl	_keystatus+1, %eax
	orb	_keystatus+46, %al
	jne	L724
	cmpb	$32, %dl
	je	L724
	cmpb	$13, %dl
	jne	L728
	jmp	L724
	.p2align 4,,10
	.p2align 3
L742:
	movzbl	_keystatus+46, %eax
	orb	_keystatus+1, %al
	je	L728
	xorl	%eax, %eax
	jmp	L746
	.cfi_endproc
LFE71:
	.p2align 4
	.globl	_editor_ask_function
	.def	_editor_ask_function;	.scl	2;	.type	32;	.endef
_editor_ask_function:
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
	subl	$16, %esp
	.cfi_def_cfa_offset 36
	movl	%eax, 4(%esp)
	movl	$LC39, (%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	call	__printmessage16
	movl	__ZL10sdl_resize.lto_priv.0, %eax
	orl	__ZL13sdl_minimized.lto_priv.0, %eax
	jne	L748
	movl	$1, %eax
	call	_videoShowFrame.part.0
L748:
	xorl	%eax, %eax
L749:
	movl	$0, _g_keyAsciiFIFO(%eax)
	addl	$16, %eax
	movl	$0, _g_keyAsciiFIFO-12(%eax)
	movl	$0, _g_keyAsciiFIFO-8(%eax)
	movl	$0, _g_keyAsciiFIFO-4(%eax)
	cmpl	$64, %eax
	jb	L749
	movzbl	_keystatus+1, %eax
	orb	_keystatus+46, %al
	movb	$0, _g_keyAsciiEnd
	movb	$0, _g_keyAsciiPos
	jne	L759
	.p2align 4
	.p2align 3
L756:
	call	_handleevents
	movl	$1, (%esp)
	xorl	%edi, %edi
	call	*__imp__Sleep@4
	.cfi_def_cfa_offset 32
	movzbl	_g_keyAsciiPos, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	cmpb	_g_keyAsciiEnd, %al
	je	L752
	movzbl	%al, %edx
	addl	$1, %eax
	andl	$63, %eax
	movzbl	_g_keyAsciiFIFO(%edx), %edi
	movb	%al, _g_keyAsciiPos
L752:
	movl	$-1, %ebp
	xorl	%ebx, %ebx
	jmp	L754
	.p2align 4,,10
	.p2align 3
L771:
	movl	%esi, (%esp)
	call	*__imp__toupper
	cmpl	%edi, %eax
	cmove	%ebx, %ebp
	addl	$1, %ebx
	cmpl	%ebx, 12(%esp)
	je	L770
L754:
	movl	8(%esp), %eax
	movzbl	(%eax,%ebx), %esi
	movl	%esi, (%esp)
	call	*__imp__tolower
	cmpl	%edi, %eax
	jne	L771
	movl	%ebx, %ebp
	addl	$1, %ebx
	cmpl	%ebx, 12(%esp)
	jne	L754
L770:
	movzbl	_keystatus+1, %eax
	orb	_keystatus+46, %al
	jne	L751
	cmpl	$-1, %ebp
	je	L756
L751:
	xorl	%edx, %edx
L757:
	movl	$0, _keystatus(%edx)
	addl	$16, %edx
	movl	$0, _keystatus-12(%edx)
	movl	$0, _keystatus-8(%edx)
	movl	$0, _keystatus-4(%edx)
	cmpl	$256, %edx
	jb	L757
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
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
	ret
L759:
	.cfi_restore_state
	movl	$-1, %ebp
	jmp	L751
	.cfi_endproc
LFE76:
	.section .rdata,"dr"
LC40:
	.ascii "and tags \0"
LC41:
	.ascii "\0"
LC42:
	.ascii "Saving board...\0"
	.align 4
LC43:
	.ascii "Saved board %sto %s (changed sectnums of %d sprites).\0"
LC44:
	.ascii "Saved board %sto %s.\0"
	.align 4
LC45:
	.ascii "^13SAVING BOARD FAILED (changed sectnums of %d sprites).\0"
LC46:
	.ascii "^13SAVING BOARD FAILED.\0"
	.text
	.p2align 4
	.globl	__ZL24SaveBoardAndPrintMessagePKc.lto_priv.0
	.def	__ZL24SaveBoardAndPrintMessagePKc.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL24SaveBoardAndPrintMessagePKc.lto_priv.0:
LFB77:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	movl	$LC42, (%esp)
	call	__printmessage16
	movl	__ZL10sdl_resize.lto_priv.0, %eax
	orl	__ZL13sdl_minimized.lto_priv.0, %eax
	jne	L773
	movl	$1, %eax
	call	_videoShowFrame.part.0
L773:
	movl	$2, %edx
	movl	%ebx, %eax
	call	_SaveBoard
	testl	%eax, %eax
	je	L774
	movl	__ZL22saveboard_fixedsprites, %edx
	movl	__ZL19saveboard_savedtags, %ecx
	testl	%edx, %edx
	jne	L784
	testl	%ecx, %ecx
	movl	$LC41, %edx
	movl	$LC40, %ecx
	movl	%eax, 8(%esp)
	cmovne	%ecx, %edx
	movl	$LC44, (%esp)
	movl	%edx, 4(%esp)
	call	_message
L777:
	xorl	%edx, %edx
	movw	%dx, _asksave
L772:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L784:
	.cfi_restore_state
	testl	%ecx, %ecx
	movl	$LC40, %ebx
	movl	$LC41, %ecx
	movl	%edx, 12(%esp)
	cmovne	%ebx, %ecx
	movl	%eax, 8(%esp)
	movl	$LC43, (%esp)
	movl	%ecx, 4(%esp)
	call	_message
	jmp	L777
	.p2align 4,,10
	.p2align 3
L774:
	movl	__ZL18saveboard_canceled, %eax
	testl	%eax, %eax
	jne	L772
	movl	__ZL22saveboard_fixedsprites, %eax
	testl	%eax, %eax
	je	L780
	movl	%eax, 4(%esp)
	movl	$LC45, (%esp)
	call	_message
	jmp	L772
	.p2align 4,,10
	.p2align 3
L780:
	movl	$LC46, (%esp)
	call	_message
	jmp	L772
	.cfi_endproc
LFE77:
	.section .rdata,"dr"
LC47:
	.ascii "all files\0"
LC48:
	.ascii "GRP-only \0"
LC49:
	.ascii "GRP contents only\0"
	.align 4
LC50:
	.ascii "Select map file with arrow keys and enter.\0"
	.align 4
LC51:
	.ascii "Game filesystem %smode.  Ctrl-F: local filesystem, Ctrl-G: %s\0"
LC52:
	.ascii "(%d dirs, %d files) %s\0"
LC53:
	.ascii "->\0"
	.text
	.p2align 4
	.globl	__ZL10menuselectv.lto_priv.0
	.def	__ZL10menuselectv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL10menuselectv.lto_priv.0:
LFB78:
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
	subl	$140, %esp
	.cfi_def_cfa_offset 160
	movl	$__ZL9g_oldpath.lto_priv.0, 4(%esp)
	movl	$__ZL21selectedboardfilename.lto_priv.0, (%esp)
	call	_strcpy
	movl	_pathsearchmode, %edi
	testl	%edi, %edi
	je	L786
	call	_Bcanonicalisefilename.constprop.0.isra.0
L787:
	call	__ZL12getfilenamesPKcS0_.constprop.0.isra.0
	leal	44(%esp), %ebp
	call	__ZL23menuselect_try_findlastv.lto_priv.0
	movl	$LC50, (%esp)
	call	__printmessage16
	movl	_ydim, %eax
	leal	-26(%eax), %edx
	subl	$58, %eax
	movl	%edx, _ydim16
	movl	$954437177, %edx
	movl	%eax, 40(%esp)
	imull	%edx
	movl	40(%esp), %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	sarl	$2, %edx
	sarl	%ecx
	subl	%eax, %edx
	subl	%eax, %ecx
	leal	-1(%edx), %eax
	movl	%ecx, 28(%esp)
	movl	%eax, 32(%esp)
	.p2align 4
	.p2align 3
L901:
	call	_videoBeginDrawing
	movl	_bytesperline, %ecx
	movl	_frameplace, %edi
	xorl	%eax, %eax
	imull	_ydim16, %ecx
	sarl	$2, %ecx
/APP
 # 10029 "source/build/src/build.cpp" 1
	rep; stosl
 # 0 "" 2
/NO_APP
	movl	_pathsearchmode, %esi
	testl	%esi, %esi
	jne	L1008
	movl	_grponlymode, %ebx
	testl	%ebx, %ebx
	je	L905
	movl	$LC47, %edx
	movl	$LC48, %eax
L790:
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$LC51, 8(%esp)
	movl	$96, 4(%esp)
	movl	%ebp, (%esp)
	call	*__imp___snprintf
L789:
	movl	%ebp, (%esp)
	call	_strlen
	movzbl	_editorcolors, %edx
	movl	$0, 20(%esp)
	sall	$3, %eax
	movl	%ebp, 16(%esp)
	movl	%edx, 12(%esp)
	movzbl	_editorcolors+12, %edx
	shrl	%eax
	movl	$4, 4(%esp)
	movl	%edx, 8(%esp)
	movl	_halfxdim16, %edx
	subl	%eax, %edx
	movl	%edx, (%esp)
	call	_printext16
	movl	__ZL6fnlist.lto_priv.0+12, %eax
	movl	%ebp, (%esp)
	movl	$__ZL21selectedboardfilename.lto_priv.0, 20(%esp)
	movl	%eax, 16(%esp)
	movl	__ZL6fnlist.lto_priv.0+8, %eax
	movl	$LC52, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$96, 4(%esp)
	call	*__imp___snprintf
	movzbl	_editorcolors, %eax
	movl	%ebp, 16(%esp)
	movl	$0, 20(%esp)
	movl	%eax, 12(%esp)
	movzbl	_editorcolors+8, %eax
	movl	$8, (%esp)
	movl	%eax, 8(%esp)
	movl	_ydim16, %eax
	subl	$9, %eax
	movl	%eax, 4(%esp)
	call	_printext16
	movl	__ZL12finddirshigh, %ecx
	testl	%ecx, %ecx
	jne	L1009
	movl	__ZL13findfileshigh.lto_priv.0, %edx
	testl	%edx, %edx
	jne	L1010
L794:
	call	_videoEndDrawing
	movl	__ZL10sdl_resize.lto_priv.0, %eax
	orl	__ZL13sdl_minimized.lto_priv.0, %eax
	jne	L816
	movl	$1, %eax
	call	_videoShowFrame.part.0
L816:
	xorl	%eax, %eax
	movb	$0, _keystatus+203
	movb	$0, _keystatus+205
	movb	$0, _keystatus+200
	movb	$0, _keystatus+208
	movb	$0, _keystatus+28
	movw	%ax, _keystatus+14
	movb	$0, _keystatus+1
L866:
	call	_handleevents
	movl	$1, (%esp)
	xorl	%ebx, %ebx
	call	*__imp__Sleep@4
	.cfi_def_cfa_offset 156
	movzbl	_g_keyAsciiPos, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 160
	cmpb	_g_keyAsciiEnd, %al
	je	L817
	movzbl	%al, %edx
	addl	$1, %eax
	andl	$63, %eax
	movzbl	_g_keyAsciiFIFO(%edx), %ebx
	movb	%al, _g_keyAsciiPos
L817:
	movl	__ZL11currentlist, %ecx
	movl	__ZL6fnlist.lto_priv.0+4, %esi
	movl	__ZL6fnlist.lto_priv.0, %edi
	testl	%ecx, %ecx
	movl	%esi, %eax
	cmove	%edi, %eax
	movl	%eax, 24(%esp)
	movzbl	_keystatus+207, %eax
	orb	_keystatus+199, %al
	jne	L1011
	movzbl	_keystatus+209, %edx
	movl	%edx, %eax
	orb	_keystatus+201, %al
	jne	L1012
	testb	%bl, %bl
	je	L828
	movl	%ebx, %edx
	andl	$-33, %edx
	subl	$65, %edx
	cmpb	$25, %dl
	jbe	L843
	leal	-48(%ebx), %edx
	cmpb	$9, %dl
	jbe	L845
	cmpb	$95, %bl
	je	L845
	.p2align 4
	.p2align 3
L828:
	movl	$9, %eax
	cmpb	$0, _keystatus+203
	cmovne	%eax, %ebx
	movzbl	_keystatus+208, %eax
	cmpb	$0, _keystatus+205
	je	L858
	cmpb	$0, _keystatus+200
	je	L1013
L987:
	testl	%ecx, %ecx
	jne	L878
	movl	__ZL12finddirshigh, %eax
	testl	%eax, %eax
	je	L901
L876:
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L901
L999:
	movl	%eax, __ZL12finddirshigh
	jmp	L901
	.p2align 4,,10
	.p2align 3
L858:
	cmpb	$0, _keystatus+200
	jne	L987
	testb	%al, %al
	jne	L865
	testb	%bl, %bl
	je	L866
	cmpb	$6, %bl
	jne	L867
	movl	_pathsearchmode, %edx
	movl	$1, %eax
	movl	$0, __ZL11currentlist
	subl	%edx, %eax
	movl	%eax, _pathsearchmode
	cmpl	$1, %edx
	je	L868
	movb	$0, __ZL21selectedboardfilename.lto_priv.0
	call	_Bcanonicalisefilename.constprop.0.isra.0
L995:
	call	__ZL12getfilenamesPKcS0_.constprop.0.isra.0
	movl	$__ZL21selectedboardfilename.lto_priv.0, 4(%esp)
	movl	$__ZL9g_oldpath.lto_priv.0, (%esp)
	call	_strcpy
	jmp	L901
	.p2align 4,,10
	.p2align 3
L1011:
	movl	24(%esp), %eax
	cmpb	$0, _keystatus+207
	jne	L820
	.p2align 4
	.p2align 4
	.p2align 3
L821:
	movl	%eax, %edx
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L821
	testl	%ecx, %ecx
	je	L825
	movl	%edx, __ZL13findfileshigh.lto_priv.0
L827:
	movl	$72, %ebx
	jmp	L826
	.p2align 4
	.p2align 4,,10
	.p2align 3
L820:
	movl	%eax, %edx
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	L820
	testl	%ecx, %ecx
	je	L823
	movl	%edx, __ZL13findfileshigh.lto_priv.0
L824:
	movl	$80, %ebx
L826:
	movb	$0, _keystatus+207
	movb	$0, _keystatus+199
	jmp	L828
	.p2align 4,,10
	.p2align 3
L1013:
	testb	%al, %al
	jne	L865
L861:
	testl	%ecx, %ecx
	jne	L873
	testl	%esi, %esi
	je	L901
	xorl	$1, %ecx
	movl	%ecx, __ZL11currentlist
	jmp	L901
	.p2align 4,,10
	.p2align 3
L1012:
	movl	__ZL13findfileshigh.lto_priv.0, %ebx
	testl	%ecx, %ecx
	jne	L1004
	movl	__ZL12finddirshigh, %ebx
L1004:
	movl	_ydim, %eax
	subl	$74, %eax
	sarl	$5, %eax
	testl	%eax, %eax
	jle	L833
	testb	%dl, %dl
	jne	L834
	.p2align 4
	.p2align 4
	.p2align 3
L836:
	movl	16(%ebx), %edx
	testl	%edx, %edx
	cmovne	%edx, %ebx
	subl	$1, %eax
	jne	L836
	testl	%ecx, %ecx
	je	L837
	movl	%ebx, __ZL13findfileshigh.lto_priv.0
L839:
	movl	$72, %ebx
L838:
	movb	$0, _keystatus+209
	movb	$0, _keystatus+201
	jmp	L828
	.p2align 4
	.p2align 4,,10
	.p2align 3
L834:
	movl	12(%ebx), %edx
	testl	%edx, %edx
	cmovne	%edx, %ebx
	subl	$1, %eax
	jne	L834
	testl	%ecx, %ecx
	je	L903
	movl	%ebx, __ZL13findfileshigh.lto_priv.0
L904:
	movl	$80, %ebx
	jmp	L838
	.p2align 4,,10
	.p2align 3
L823:
	movl	%edx, __ZL12finddirshigh
	jmp	L824
	.p2align 4,,10
	.p2align 3
L843:
	leal	-32(%ebx), %edx
	cmpb	$96, %bl
	cmova	%edx, %ebx
L845:
	movl	24(%esp), %eax
	testl	%eax, %eax
	je	L828
	movl	24(%esp), %eax
	movl	%esi, 36(%esp)
	movl	%edi, 24(%esp)
	movl	%ecx, %edi
	jmp	L848
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1015:
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L1014
L848:
	movl	(%eax), %edx
	movzbl	(%edx), %edx
	leal	-97(%edx), %ecx
	leal	-32(%edx), %esi
	cmpb	$26, %cl
	cmovb	%esi, %edx
	cmpb	%bl, %dl
	jne	L1015
	testl	%edi, %edi
	je	L850
	cmpb	$0, _keystatus+200
	movl	%eax, __ZL13findfileshigh.lto_priv.0
	jne	L877
	cmpb	$0, _keystatus+208
	je	L985
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L883
	movl	%eax, __ZL13findfileshigh.lto_priv.0
L883:
	cmpb	$27, %bl
	jne	L901
	addl	$140, %esp
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
L1009:
	.cfi_restore_state
	movl	32(%esp), %edi
	movl	%ecx, %eax
	movl	%edi, %edx
	testl	%edi, %edi
	jns	L792
	jmp	L1016
	.p2align 4
	.p2align 4,,10
	.p2align 3
L795:
	subl	$1, %edx
	jb	L1017
L792:
	movl	%eax, %ebx
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L795
	cmpl	$8, 40(%esp)
	jle	L796
L793:
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L797:
	xorl	%edx, %edx
	cmpl	$2, 4(%ebx)
	setne	%dl
	xorl	%eax, %eax
	addl	$2, %edx
L800:
	movl	$0, 0(%ebp,%eax)
	movl	$0, 4(%ebp,%eax)
	movl	$0, 8(%ebp,%eax)
	movl	$0, 12(%ebp,%eax)
	addl	$16, %eax
	cmpl	$96, %eax
	jb	L800
	movl	$25, 8(%esp)
	movl	(%ebx), %eax
	movl	%ebp, (%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 36(%esp)
	movl	%ecx, 24(%esp)
	call	_strncpy
	movl	%ebp, (%esp)
	call	_strlen
	movl	24(%esp), %ecx
	movl	36(%esp), %edx
	cmpl	$25, %eax
	jne	L802
	movl	$3026478, 65(%esp)
L802:
	movzbl	_editorcolors, %eax
	leal	16(%esi,%esi,8), %edi
	cmpl	%ecx, %ebx
	je	L1018
L803:
	movl	$0, 20(%esp)
	addl	$1, %esi
	movl	%ebp, 16(%esp)
	movl	%eax, 12(%esp)
	movzbl	_editorcolors(%edx), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$32, (%esp)
	call	_printext16
	movl	12(%ebx), %ebx
	cmpl	%esi, 28(%esp)
	jle	L806
	testl	%ebx, %ebx
	je	L806
	movl	__ZL12finddirshigh, %ecx
	jmp	L797
	.p2align 4,,10
	.p2align 3
L1018:
	movl	__ZL11currentlist, %ecx
	orl	$8, %edx
	testl	%ecx, %ecx
	jne	L803
	movl	$0, 20(%esp)
	movl	$LC53, 16(%esp)
	movl	%eax, 12(%esp)
	movzbl	_editorcolors(%edx), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$8, (%esp)
	movl	%edx, 24(%esp)
	call	_printext16
	movzbl	_editorcolors, %eax
	movl	24(%esp), %edx
	jmp	L803
	.p2align 4,,10
	.p2align 3
L1014:
	movl	%edi, %ecx
	movl	36(%esp), %esi
	movl	24(%esp), %edi
	jmp	L828
	.p2align 4,,10
	.p2align 3
L825:
	movl	%edx, __ZL12finddirshigh
	jmp	L827
	.p2align 4,,10
	.p2align 3
L806:
	movl	__ZL13findfileshigh.lto_priv.0, %edx
	testl	%edx, %edx
	je	L794
	movl	%edx, %ebx
	cmpl	$-1, 32(%esp)
	je	L808
L807:
	movl	32(%esp), %ecx
	movl	%edx, %eax
	jmp	L812
	.p2align 4
	.p2align 4,,10
	.p2align 3
L810:
	subl	$1, %ecx
	jb	L1019
L812:
	movl	%eax, %ebx
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L810
L809:
	cmpl	$8, 40(%esp)
	jle	L794
L808:
	movl	28(%esp), %edi
	xorl	%esi, %esi
	jmp	L811
	.p2align 4,,10
	.p2align 3
L813:
	movl	$0, 20(%esp)
	movl	(%ebx), %edx
	movl	%eax, 12(%esp)
	movzbl	_editorcolors+7, %eax
	movl	%edx, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$264, (%esp)
	call	_printext16
L815:
	addl	$1, %esi
	movl	12(%ebx), %ebx
	cmpl	%esi, %edi
	jle	L794
	testl	%ebx, %ebx
	je	L794
	movl	__ZL13findfileshigh.lto_priv.0, %edx
L811:
	movzbl	_editorcolors, %eax
	leal	16(%esi,%esi,8), %ecx
	cmpl	%edx, %ebx
	jne	L813
	cmpl	$1, __ZL11currentlist
	je	L1020
L814:
	movl	$0, 20(%esp)
	movl	(%ebx), %edx
	movl	%eax, 12(%esp)
	movzbl	_editorcolors+15, %eax
	movl	%edx, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$264, (%esp)
	call	_printext16
	jmp	L815
L1020:
	movl	%eax, 12(%esp)
	movzbl	_editorcolors+15, %eax
	movl	%ecx, 4(%esp)
	movl	$0, 20(%esp)
	movl	$LC53, 16(%esp)
	movl	%eax, 8(%esp)
	movl	$240, (%esp)
	movl	%ecx, 24(%esp)
	call	_printext16
	movzbl	_editorcolors, %eax
	movl	24(%esp), %ecx
	jmp	L814
L905:
	movl	$LC49, %edx
	movl	$LC41, %eax
	jmp	L790
L1008:
	movl	$1633906508, 0(%ebp)
	movl	$1768300652, 4(%ebp)
	movl	$2037605740, 8(%ebp)
	movl	$1835365491, 12(%ebp)
	movl	$1685024032, 16(%ebp)
	movl	$538979941, 20(%ebp)
	movl	$1819440195, 24(%ebp)
	movl	$540689965, 28(%ebp)
	movl	$1701667175, 32(%ebp)
	movl	$1818846752, 36(%ebp)
	movl	$1937339237, 40(%ebp)
	movl	$7169396, 44(%ebp)
	jmp	L789
L837:
	movl	%ebx, __ZL12finddirshigh
	jmp	L839
L1010:
	movl	32(%esp), %eax
	testl	%eax, %eax
	jns	L807
	movl	%edx, %ebx
	jmp	L809
	.p2align 4,,10
	.p2align 3
L867:
	cmpb	$7, %bl
	jne	L871
	movl	_pathsearchmode, %edi
	testl	%edi, %edi
	jne	L901
	movl	$1, %eax
	subl	_grponlymode, %eax
	movl	%eax, _grponlymode
	jmp	L995
L1017:
	movl	%eax, %ebx
	cmpl	$8, 40(%esp)
	jg	L793
	jmp	L796
L1019:
	movl	%eax, %ebx
	jmp	L809
L833:
	cmpb	$1, %dl
	sbbl	%ebx, %ebx
	andl	$-8, %ebx
	addl	$80, %ebx
	jmp	L838
L865:
	testl	%ecx, %ecx
	jne	L886
	movl	__ZL12finddirshigh, %eax
	testl	%eax, %eax
	je	L901
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	L999
	jmp	L901
	.p2align 4,,10
	.p2align 3
L903:
	movl	%ebx, __ZL12finddirshigh
	jmp	L904
L850:
	cmpb	$0, _keystatus+200
	movl	%eax, __ZL12finddirshigh
	jne	L876
	cmpb	$0, _keystatus+208
	je	L985
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L883
	movl	%eax, __ZL12finddirshigh
	jmp	L883
	.p2align 4,,10
	.p2align 3
L868:
	movl	$47, %eax
	movw	%ax, __ZL21selectedboardfilename.lto_priv.0
	jmp	L995
L873:
	cmpl	$1, %ecx
	jne	L901
	testl	%edi, %edi
	je	L901
	xorl	$1, %ecx
	movl	%ecx, __ZL11currentlist
	jmp	L901
L878:
	movl	__ZL13findfileshigh.lto_priv.0, %eax
	testl	%eax, %eax
	je	L901
L877:
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L901
L1000:
	movl	%eax, __ZL13findfileshigh.lto_priv.0
	jmp	L901
L786:
	movl	$1, %edx
	movl	$__ZL21selectedboardfilename.lto_priv.0, %eax
	call	_Bcorrectfilename.isra.0
	jmp	L787
L796:
	movl	__ZL13findfileshigh.lto_priv.0, %edx
	testl	%edx, %edx
	je	L794
	jmp	L807
L886:
	movl	__ZL13findfileshigh.lto_priv.0, %eax
	testl	%eax, %eax
	je	L901
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	L1000
	jmp	L901
L1016:
	movl	%ecx, %ebx
	cmpl	$8, 40(%esp)
	jg	L793
	jmp	L794
L871:
	cmpb	$9, %bl
	je	L861
	cmpb	$0, _keystatus+14
	jne	L884
	cmpb	$13, %bl
	jne	L883
	testl	%ecx, %ecx
	jne	L892
	movl	__ZL12finddirshigh, %edx
	movl	(%edx), %eax
	cmpl	$4, 4(%edx)
	movl	$__ZL21selectedboardfilename.lto_priv.0, (%esp)
	movl	%eax, 4(%esp)
	je	L1021
	call	_strcat
L894:
	movl	$__ZL21selectedboardfilename.lto_priv.0, (%esp)
	call	_strlen
	movl	_pathsearchmode, %ecx
	movl	$47, %edx
	movw	%dx, __ZL21selectedboardfilename.lto_priv.0(%eax)
	testl	%ecx, %ecx
	je	L895
	call	_Bcanonicalisefilename.constprop.0.isra.0
L896:
	movl	$__ZL21selectedboardfilename.lto_priv.0, 4(%esp)
	movl	$__ZL9g_oldpath.lto_priv.0, (%esp)
	call	_strcpy
	movl	__ZL12finddirshigh, %eax
	cmpl	%eax, __ZL6fnlist.lto_priv.0
	je	L1022
	call	__ZL12getfilenamesPKcS0_.constprop.0.isra.0
L898:
	call	_videoBeginDrawing
	movl	_bytesperline, %ecx
	movl	_frameplace, %edi
	xorl	%eax, %eax
	imull	_ydim16, %ecx
	sarl	$2, %ecx
/APP
 # 10277 "source/build/src/build.cpp" 1
	rep; stosl
 # 0 "" 2
/NO_APP
	call	_videoEndDrawing
	movl	__ZL10sdl_resize.lto_priv.0, %eax
	orl	__ZL13sdl_minimized.lto_priv.0, %eax
	jne	L901
	movl	$1, %eax
	call	_videoShowFrame.part.0
	jmp	L901
L985:
	cmpb	$0, _keystatus+14
	je	L901
L884:
	movl	$__ZL21selectedboardfilename.lto_priv.0, (%esp)
	call	_strlen
	movl	_pathsearchmode, %esi
	movl	$3092014, __ZL21selectedboardfilename.lto_priv.0(%eax)
	testl	%esi, %esi
	je	L889
	call	_Bcanonicalisefilename.constprop.0.isra.0
L890:
	movl	$__ZL21selectedboardfilename.lto_priv.0, 4(%esp)
	movl	$__ZL9g_oldpath.lto_priv.0, (%esp)
	call	_strcpy
	call	__ZL12getfilenamesPKcS0_.constprop.0.isra.0
	movb	$0, _keystatus+14
	cmpb	$13, %bl
	jne	L883
L892:
	movl	__ZL13findfileshigh.lto_priv.0, %eax
	testl	%eax, %eax
	je	L901
	movl	__ZL13findfileshigh.lto_priv.0, %eax
	movl	(%eax), %eax
	movl	$__ZL21selectedboardfilename.lto_priv.0, (%esp)
	movl	%eax, 4(%esp)
	call	_strcat
	addl	$140, %esp
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
L889:
	.cfi_restore_state
	movl	$1, %edx
	movl	$__ZL21selectedboardfilename.lto_priv.0, %eax
	call	_Bcorrectfilename.isra.0
	jmp	L890
L1022:
	call	__ZL12getfilenamesPKcS0_.constprop.0.isra.0
	movl	$0, __ZL11currentlist
	jmp	L898
L895:
	movl	$1, %edx
	movl	$__ZL21selectedboardfilename.lto_priv.0, %eax
	call	_Bcorrectfilename.isra.0
	jmp	L896
L1021:
	call	_strcpy
	jmp	L894
	.cfi_endproc
LFE78:
	.section .rdata,"dr"
LC54:
	.ascii "label\0"
LC55:
	.ascii ", deleting old \0"
LC56:
	.ascii "tag\0"
LC57:
	.ascii "Auto-\0"
LC58:
	.ascii "Automatically \0"
	.align 4
LC61:
	.ascii "Added label '%s' for tag %d%s%s\0"
	.align 4
LC62:
	.ascii "%sadded label '%s' for tag %d%s%s\0"
	.text
	.p2align 4
	.def	_getnumber_autocomplete.part.0;	.scl	3;	.type	32;	.endef
_getnumber_autocomplete.part.0:
LFB81:
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
	movl	$24, %eax
	subl	$268, %esp
	.cfi_def_cfa_offset 288
	cmpl	$1, 288(%esp)
	movb	%dl, 90(%esp)
	movl	$39, %edx
	cmovne	%edx, %eax
	movb	$0, 91(%esp)
	movl	%eax, 60(%esp)
	xorl	%eax, %eax
L1025:
	movl	$0, _g_keyAsciiFIFO(%eax)
	addl	$16, %eax
	movl	$0, _g_keyAsciiFIFO-12(%eax)
	movl	$0, _g_keyAsciiFIFO-8(%eax)
	movl	$0, _g_keyAsciiFIFO-4(%eax)
	cmpl	$64, %eax
	jb	L1025
	movb	$0, _g_keyAsciiEnd
	xorl	%eax, %eax
	movb	$0, _g_keyAsciiPos
L1027:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L1027
	xorl	%eax, %eax
L1029:
	movl	$0, __ZZ16getstring_simpleE3buf(%eax)
	addl	$16, %eax
	movl	$0, __ZZ16getstring_simpleE3buf-12(%eax)
	movl	$0, __ZZ16getstring_simpleE3buf-8(%eax)
	movl	$0, __ZZ16getstring_simpleE3buf-4(%eax)
	cmpl	$128, %eax
	jb	L1029
	movl	%ebx, (%esp)
	call	_strlen
	movl	%ebx, 4(%esp)
	leal	90(%esp), %ebx
	movl	%eax, 8(%esp)
	movl	%eax, %esi
	movl	$__ZZ16getstring_simpleE3buf, (%esp)
	movl	%eax, 40(%esp)
	call	_memcpy
	movl	_xdim, %ecx
	movl	$128, %eax
	movl	%ebx, (%esp)
	sarl	$3, %ecx
	cmpl	%eax, %ecx
	cmovle	%ecx, %eax
	movl	%eax, 52(%esp)
	call	_strlen
	movl	%eax, %edi
	leal	__ZZ16getstring_simpleE3buf(%esi), %eax
	movl	%eax, 64(%esp)
	testl	%edi, %edi
	je	L1032
	xorl	%eax, %eax
L1031:
	movzbl	(%ebx,%eax), %edx
	movl	64(%esp), %ecx
	movb	%dl, (%ecx,%eax)
	addl	$1, %eax
	cmpl	%edi, %eax
	jb	L1031
L1032:
	addl	40(%esp), %edi
	movl	$95, %eax
	cmpl	$1, 288(%esp)
	movl	%ebp, 76(%esp)
	movw	%ax, __ZZ16getstring_simpleE3buf(%edi)
	movl	%edi, %ebx
	setne	71(%esp)
	xorl	%eax, %eax
	movl	%eax, 48(%esp)
	.p2align 4
	.p2align 3
L1033:
	cmpl	$200, _qsetmode
	je	L1229
L1034:
	movl	$__ZZ16getstring_simpleE3buf, 4(%esp)
	movl	$LC39, (%esp)
	call	__printmessage16
L1035:
	movl	__ZL10sdl_resize.lto_priv.0, %eax
	orl	__ZL13sdl_minimized.lto_priv.0, %eax
	jne	L1036
	movl	$1, %eax
	call	_videoShowFrame.part.0
L1036:
	call	_handleevents
	movl	$1, (%esp)
	call	*__imp__Sleep@4
	.cfi_def_cfa_offset 284
	movzbl	_g_keyAsciiPos, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 288
	cmpb	_g_keyAsciiEnd, %al
	je	L1131
	movzbl	%al, %edx
	addl	$1, %eax
	movzbl	_g_keyAsciiFIFO(%edx), %edx
	andl	$63, %eax
	movb	%al, _g_keyAsciiPos
	cmpb	$13, %dl
	je	L1230
	movzbl	_keystatus+1, %eax
	testb	%al, %al
	jne	L1231
L1042:
	testb	$32, _totalclock
	je	L1045
	movb	$0, __ZZ16getstring_simpleE3buf+1(%ebx)
	movl	$95, %eax
L1045:
	movb	%al, __ZZ16getstring_simpleE3buf(%ebx)
	cmpl	%ebx, 40(%esp)
	jge	L1046
	cmpb	$8, %dl
	je	L1145
	cmpb	$127, %dl
	je	L1145
	movl	52(%esp), %eax
	leal	-2(%eax), %ecx
	cmpl	%ecx, %ebx
	jge	L1228
	movl	%ebx, %eax
	subl	40(%esp), %eax
	cmpl	%eax, 60(%esp)
	jg	L1054
L1228:
	cmpb	$9, %dl
	sete	%al
	testb	%al, %al
	jne	L1144
L1051:
	movl	48(%esp), %edi
	testl	%edi, %edi
	je	L1033
L1057:
	movl	64(%esp), %eax
	subl	40(%esp), %ebx
	leal	140(%esp), %ebp
	movb	%dl, 32(%esp)
	movl	%ebx, 8(%esp)
	movl	%ebx, %esi
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	movl	%ecx, 56(%esp)
	movl	%ebx, 24(%esp)
	call	_memcpy
	movzbl	32(%esp), %edx
	movb	$0, 140(%esp,%ebx)
	movl	$0, 36(%esp)
	movzbl	71(%esp), %edi
	movl	$1, 44(%esp)
	movb	%dl, 70(%esp)
	cmpl	$1, 288(%esp)
	je	L1084
	.p2align 4
	.p2align 3
L1083:
	cmpl	$32768, %edi
	je	L1227
	movl	__ZL8g_taglab.lto_priv.0+16(,%edi,4), %ebx
	testl	%ebx, %ebx
	je	L1232
L1061:
	movl	24(%esp), %eax
	movl	%ebx, 4(%esp)
	movl	%ebp, (%esp)
	movl	%eax, 8(%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L1081
	movl	%ebx, (%esp)
	call	_strlen
	cmpl	%eax, 24(%esp)
	je	L1081
	cmpb	$9, 70(%esp)
	je	L1233
L1064:
	cmpl	$3, 36(%esp)
	jne	L1234
L1071:
	movl	24(%esp), %esi
	movzbl	140(%esp,%esi), %eax
	testb	%al, %al
	je	L1134
	.p2align 4
	.p2align 3
L1082:
	movl	%eax, (%esp)
	call	*__imp__tolower
	movb	%al, 0(%ebp,%esi)
	addl	$1, %esi
	movzbl	0(%ebp,%esi), %eax
	testb	%al, %al
	jne	L1082
L1081:
	addl	$1, %edi
L1240:
	cmpl	$1, 288(%esp)
	jne	L1083
L1084:
	cmpl	$30463, %edi
	jg	L1227
	leal	(%edi,%edi,4), %eax
	leal	_names(%eax,%eax,4), %ebx
	jmp	L1061
	.p2align 4,,10
	.p2align 3
L1229:
	call	__ZL19getnumber_clearlinev
	cmpl	$200, _qsetmode
	jne	L1034
	movzbl	_whitecol, %eax
	movl	$0, 20(%esp)
	movl	$__ZZ16getstring_simpleE3buf, 16(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_printext256
	jmp	L1035
	.p2align 4,,10
	.p2align 3
L1046:
	movl	52(%esp), %eax
	leal	-2(%eax), %ecx
	cmpl	%ecx, %ebx
	jge	L1051
	movzbl	%dl, %eax
	movl	%ecx, 32(%esp)
	movb	%dl, 24(%esp)
	movl	%eax, (%esp)
	call	*__imp__isprint
	movzbl	24(%esp), %edx
	movl	32(%esp), %ecx
	testl	%eax, %eax
	je	L1051
L1055:
	leal	1(%ebx), %eax
	cmpl	$2, 288(%esp)
	jne	L1056
	cmpb	$32, %dl
	jne	L1056
	movb	$95, __ZZ16getstring_simpleE3buf(%ebx)
	movl	$95, %edx
	movb	$95, __ZZ16getstring_simpleE3buf(%eax)
	movb	$0, __ZZ16getstring_simpleE3buf+2(%ebx)
	movl	%eax, %ebx
	jmp	L1051
	.p2align 4,,10
	.p2align 3
L1227:
	movl	60(%esp), %eax
	movl	56(%esp), %ecx
	cmpl	%esi, %eax
	cmovg	%esi, %eax
	testl	%eax, %eax
	jle	L1135
	movl	40(%esp), %edx
	addl	%edx, %eax
	movl	%edx, %ebx
	subl	%edx, %ebp
	jmp	L1088
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1090:
	addl	$1, %ebx
	movzbl	-1(%ebp,%ebx), %edx
	movb	%dl, __ZZ16getstring_simpleE3buf-1(%ebx)
	cmpl	%ebx, %eax
	je	L1089
L1088:
	cmpl	%ecx, %ebx
	jl	L1090
L1089:
	cmpl	24(%esp), %esi
	jne	L1091
	movl	36(%esp), %eax
	testl	%eax, %eax
	jne	L1235
L1091:
	movl	$95, %eax
	movw	%ax, __ZZ16getstring_simpleE3buf(%ebx)
	jmp	L1033
	.p2align 4,,10
	.p2align 3
L1233:
	movl	44(%esp), %esi
	testl	%esi, %esi
	je	L1236
	movl	24(%esp), %ecx
	movl	$128, %eax
	subl	%ecx, %eax
	movl	%eax, 8(%esp)
	leal	(%ebx,%ecx), %eax
	movl	%eax, 4(%esp)
	leal	0(%ebp,%ecx), %eax
	movl	%eax, (%esp)
	call	_strncpy
	movb	$0, 267(%esp)
	movl	$0, 44(%esp)
	cmpl	$3, 36(%esp)
	je	L1071
	.p2align 4
	.p2align 3
L1234:
	movl	24(%esp), %eax
	leal	(%ebx,%eax), %esi
	movl	36(%esp), %ebx
	movl	%esi, (%esp)
	sall	$4, %ebx
	leal	92(%esp,%ebx), %ecx
	movl	%ecx, 72(%esp)
	call	_strlen
	movl	$15, %edx
	movl	72(%esp), %ecx
	addl	$1, %eax
	cmpl	%edx, %eax
	cmovbe	%eax, %edx
	cmpl	$16, %edx
	movl	%edx, 32(%esp)
	jnb	L1072
	andl	$8, %edx
	jne	L1237
	testb	$4, 32(%esp)
	jne	L1238
	movl	32(%esp), %eax
	testl	%eax, %eax
	je	L1073
	movzbl	(%esi), %edx
	movb	%dl, (%ecx)
	testb	$2, %al
	jne	L1239
L1073:
	movl	36(%esp), %eax
	movb	$0, 15(%ecx)
	sall	$4, %eax
	movzbl	92(%esp,%eax), %eax
	testb	%al, %al
	je	L1079
	leal	92(%esp,%ebx), %esi
	movl	__imp__tolower, %ebx
	.p2align 4
	.p2align 3
L1080:
	movl	%eax, (%esp)
	addl	$1, %esi
	call	*%ebx
	movb	%al, -1(%esi)
	movzbl	(%esi), %eax
	testb	%al, %al
	jne	L1080
L1079:
	movl	24(%esp), %esi
	addl	$1, 36(%esp)
	movzbl	140(%esp,%esi), %eax
	testb	%al, %al
	jne	L1082
	.p2align 4
	.p2align 3
L1134:
	movl	24(%esp), %esi
	addl	$1, %edi
	jmp	L1240
	.p2align 4,,10
	.p2align 3
L1131:
	movzbl	_keystatus+1, %eax
	xorl	%edx, %edx
	testb	%al, %al
	je	L1042
L1231:
	xorl	%eax, %eax
L1043:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L1043
L1040:
	addl	$268, %esp
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
L1145:
	.cfi_restore_state
	subl	$1, %ebx
	movl	$95, %eax
	movl	$0, 48(%esp)
	movw	%ax, __ZZ16getstring_simpleE3buf(%ebx)
	jmp	L1033
	.p2align 4,,10
	.p2align 3
L1236:
	movl	24(%esp), %esi
	movzbl	(%ebx,%esi), %eax
	testb	%al, %al
	je	L1067
	movl	%edi, 72(%esp)
	movl	%esi, %edi
	movl	%ebx, %esi
	jmp	L1066
	.p2align 4,,10
	.p2align 3
L1241:
	movl	%eax, (%esp)
	call	*__imp__tolower
	movzbl	%bl, %edx
	movl	%eax, 32(%esp)
	movl	%edx, (%esp)
	call	*__imp__tolower
	cmpl	%eax, 32(%esp)
	jne	L1224
	addl	$1, %edi
	movzbl	(%esi,%edi), %eax
	testb	%al, %al
	je	L1224
L1066:
	movzbl	0(%ebp,%edi), %ebx
	testb	%bl, %bl
	jne	L1241
L1224:
	movl	%esi, %ebx
	movl	%edi, %esi
	movl	72(%esp), %edi
L1067:
	movb	$0, 140(%esp,%esi)
	jmp	L1064
	.p2align 4,,10
	.p2align 3
L1230:
	movb	$0, __ZZ16getstring_simpleE3buf(%ebx)
	movl	76(%esp), %ebp
	xorl	%eax, %eax
L1038:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L1038
	movl	40(%esp), %eax
	cmpb	$0, __ZZ16getstring_simpleE3buf(%eax)
	je	L1040
	cmpl	$1, 288(%esp)
	jne	L1099
	movl	64(%esp), %edi
	movl	$_names, %esi
	xorl	%ebx, %ebx
	jmp	L1102
	.p2align 4,,10
	.p2align 3
L1100:
	addl	$1, %ebx
	addl	$25, %esi
	cmpl	$30464, %ebx
	je	L1040
L1102:
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L1100
	movl	%ebx, 0(%ebp)
	movl	$1, %eax
L1023:
	addl	$268, %esp
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
L1056:
	.cfi_restore_state
	movb	%dl, __ZZ16getstring_simpleE3buf(%ebx)
	movb	$95, __ZZ16getstring_simpleE3buf(%eax)
	movb	$0, __ZZ16getstring_simpleE3buf+2(%ebx)
	movl	%eax, %ebx
	cmpb	$9, %dl
	jne	L1051
	cmpl	%eax, 40(%esp)
	jge	L1051
L1144:
	movl	$9, %edx
	jmp	L1057
	.p2align 4,,10
	.p2align 3
L1235:
	movl	$123, %ecx
	subl	$1, %eax
	movl	%ebx, 24(%esp)
	leal	1(%ebx), %edx
	movw	%cx, __ZZ16getstring_simpleE3buf(%ebx)
	movl	52(%esp), %ecx
	leal	92(%esp), %ebp
	xorl	%edi, %edi
	movl	%eax, 32(%esp)
	subl	$1, %ecx
L1092:
	movl	%ebp, %esi
	movl	24(%esp), %ebx
	movl	%edx, %eax
	subl	%edx, %esi
	cmpl	%edx, %ecx
	jg	L1097
	jmp	L1093
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1094:
	addl	$1, %eax
	movb	%dl, __ZZ16getstring_simpleE3buf-1(%eax)
	cmpl	%ecx, %eax
	je	L1136
L1097:
	movzbl	(%esi,%eax), %edx
	testb	%dl, %dl
	jne	L1094
	movl	%ebx, 24(%esp)
	cmpl	%ecx, %eax
	jge	L1137
	movl	$44, %edx
	cmpl	%edi, 32(%esp)
	movl	$125, %esi
	cmovne	%edx, %esi
	leal	1(%eax), %edx
	movl	%esi, %ebx
	movb	%bl, __ZZ16getstring_simpleE3buf(%eax)
L1093:
	addl	$1, %edi
	addl	$16, %ebp
	cmpl	36(%esp), %edi
	jl	L1092
	movb	$0, __ZZ16getstring_simpleE3buf(%edx)
	movl	24(%esp), %ebx
	movl	$1, 48(%esp)
	jmp	L1033
	.p2align 4,,10
	.p2align 3
L1136:
	movl	%ebx, 24(%esp)
	movl	%ecx, %edx
	jmp	L1093
L1072:
	movl	32(%esp), %eax
	movl	-16(%esi,%eax), %edx
	movl	%edx, -16(%ecx,%eax)
	movl	-12(%esi,%eax), %edx
	movl	%edx, -12(%ecx,%eax)
	movl	-8(%esi,%eax), %edx
	movl	%edx, -8(%ecx,%eax)
	movl	-4(%esi,%eax), %edx
	movl	%edx, -4(%ecx,%eax)
	subl	$1, %eax
	cmpl	$16, %eax
	jb	L1073
	movl	%edi, 72(%esp)
	andl	$-16, %eax
	movl	%ebx, 80(%esp)
	movl	%ebp, 84(%esp)
	movl	%eax, 32(%esp)
	xorl	%eax, %eax
L1077:
	movl	4(%esi,%eax), %edi
	movl	8(%esi,%eax), %ebx
	movl	12(%esi,%eax), %edx
	movl	(%esi,%eax), %ebp
	movl	%edi, 4(%ecx,%eax)
	movl	%ebp, (%ecx,%eax)
	movl	%ebx, 8(%ecx,%eax)
	movl	%edx, 12(%ecx,%eax)
	addl	$16, %eax
	cmpl	32(%esp), %eax
	jb	L1077
	movl	72(%esp), %edi
	movl	80(%esp), %ebx
	movl	84(%esp), %ebp
	jmp	L1073
L1232:
	addl	$1, %edi
	jmp	L1083
L1099:
	movl	64(%esp), %eax
	leal	140(%esp), %ebx
	movl	%eax, (%esp)
	call	_strlen
	movl	$39, %edx
	addl	$1, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	cmpl	$16, %eax
	jnb	L1103
	testb	$8, %al
	jne	L1242
	testb	$4, %al
	jne	L1243
	testl	%eax, %eax
	je	L1104
	movl	40(%esp), %ecx
	movzbl	__ZZ16getstring_simpleE3buf(%ecx), %edx
	movb	%dl, 140(%esp)
	testb	$2, %al
	jne	L1244
L1104:
	movzbl	140(%esp), %eax
	movb	$0, 179(%esp)
	testb	%al, %al
	je	L1110
	movl	__imp__toupper, %esi
	movl	%ebx, %edi
	.p2align 4
	.p2align 3
L1111:
	movl	%eax, (%esp)
	addl	$1, %edi
	call	*%esi
	movb	%al, -1(%edi)
	movzbl	(%edi), %eax
	testb	%al, %al
	jne	L1111
L1110:
	movl	%ebx, %edx
	movl	$__ZL8g_taglab.lto_priv.0, %eax
	call	_hash_findcase
	testl	%eax, %eax
	jg	L1245
	movl	0(%ebp), %eax
	leal	-1(%eax), %edx
	cmpl	$32766, %edx
	jbe	L1246
	testl	%eax, %eax
	jne	L1040
	movl	%eax, 24(%esp)
	xorl	%ebx, %ebx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L1119:
	movl	_sprite, %eax
	cmpw	$1024, 26(%eax,%edi)
	je	L1117
	movl	%ebx, %eax
	call	_select_sprite_tag
	cmpl	$-2147483648, %eax
	je	L1117
	cmpl	%esi, %eax
	setge	%cl
	addl	$1, %eax
	testb	%cl, %cl
	cmovne	%eax, %esi
L1117:
	addl	$1, %ebx
	addl	$44, %edi
	cmpl	$16384, %ebx
	jne	L1119
	movl	24(%esp), %eax
	movl	%esi, %edi
	cmpw	$0, _numwalls
	jle	L1120
	xorl	%ebx, %ebx
	movl	%eax, %esi
L1127:
	movl	$10, %eax
	movl	$-1, %edx
	movl	$0, _g_iReturnVar
	call	__Z10VM_OnEventii
	movl	_g_iReturnVar, %eax
	testb	$1, %al
	je	L1122
	movl	%ebx, %edx
	sall	$5, %edx
	addl	_wall, %edx
	movswl	26(%edx), %edx
	leal	1(%edx), %ecx
	cmpl	%edi, %edx
	cmovge	%ecx, %edi
L1122:
	testb	$2, %al
	je	L1125
	movl	%ebx, %eax
	sall	$5, %eax
	addl	_wall, %eax
	movswl	28(%eax), %eax
	leal	1(%eax), %edx
	cmpl	%edi, %eax
	cmovge	%edx, %edi
L1125:
	movswl	_numwalls, %eax
	addl	$1, %ebx
	cmpl	%eax, %ebx
	jl	L1127
	movl	%esi, %eax
L1120:
	leal	-1(%edi), %edx
	cmpl	$32766, %edx
	ja	L1023
	movl	%edi, 0(%ebp)
	movl	64(%esp), %eax
	movswl	%di, %edx
	call	_taglab_add
	movl	0(%ebp), %ebx
	testl	%eax, %eax
	je	L1142
	cmpl	$1, %eax
	movl	$LC54, %edx
	movl	$LC56, %eax
	movl	$LC55, %ecx
	cmove	%edx, %eax
	movl	$LC57, %edx
L1128:
	movl	%eax, 20(%esp)
	movl	64(%esp), %eax
	movl	%ecx, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$LC62, (%esp)
	call	_message
L1113:
	addl	$268, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1, %eax
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
L1103:
	.cfi_restore_state
	movl	64(%esp), %ecx
	movl	-16(%ecx,%eax), %edx
	movl	%edx, 124(%esp,%eax)
	movl	-12(%ecx,%eax), %edx
	movl	%edx, 128(%esp,%eax)
	movl	-8(%ecx,%eax), %edx
	movl	%edx, 132(%esp,%eax)
	movl	-4(%ecx,%eax), %edx
	movl	%edx, 136(%esp,%eax)
	subl	$1, %eax
	cmpl	$16, %eax
	jb	L1104
	movl	%ebp, 32(%esp)
	andl	$-16, %eax
	xorl	%edx, %edx
L1108:
	movl	8(%ecx,%edx), %esi
	movl	4(%ecx,%edx), %edi
	movl	%esi, 24(%esp)
	movl	(%ecx,%edx), %ebp
	movl	12(%ecx,%edx), %esi
	movl	%edi, 4(%ebx,%edx)
	movl	%ebp, (%ebx,%edx)
	movl	24(%esp), %edi
	movl	%esi, 12(%ebx,%edx)
	movl	%edi, 8(%ebx,%edx)
	addl	$16, %edx
	cmpl	%eax, %edx
	jb	L1108
	movl	32(%esp), %ebp
	jmp	L1104
L1135:
	movl	40(%esp), %ebx
	jmp	L1089
L1245:
	movl	%eax, 0(%ebp)
	jmp	L1113
L1237:
	movl	(%esi), %eax
	movl	4(%esi), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	32(%esp), %eax
	movl	-4(%esi,%eax), %edx
	movl	-8(%esi,%eax), %eax
	movl	32(%esp), %esi
	movl	%eax, -8(%ecx,%esi)
	movl	%edx, -4(%ecx,%esi)
	jmp	L1073
L1238:
	movl	(%esi), %edx
	movl	%edx, (%ecx)
	movl	32(%esp), %eax
	movl	-4(%esi,%eax), %edx
	movl	%edx, -4(%ecx,%eax)
	jmp	L1073
L1246:
	movswl	%ax, %edx
	movl	64(%esp), %eax
	call	_taglab_add
	testl	%eax, %eax
	je	L1140
	cmpl	$1, %eax
	movl	$LC54, %edx
	movl	$LC56, %eax
	cmove	%edx, %eax
	movl	$LC55, %edx
L1115:
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	0(%ebp), %eax
	movl	$LC61, (%esp)
	movl	%eax, 8(%esp)
	movl	64(%esp), %eax
	movl	%eax, 4(%esp)
	call	_message
	jmp	L1113
L1239:
	movl	32(%esp), %eax
	movzwl	-2(%esi,%eax), %edx
	movw	%dx, -2(%ecx,%eax)
	jmp	L1073
L1242:
	movl	40(%esp), %ecx
	movl	__ZZ16getstring_simpleE3buf(%ecx), %edx
	movl	__ZZ16getstring_simpleE3buf+4(%ecx), %ecx
	movl	%ecx, 144(%esp)
	movl	64(%esp), %ecx
	movl	%edx, 140(%esp)
	movl	-8(%ecx,%eax), %edx
	movl	-4(%ecx,%eax), %ecx
	movl	%edx, 24(%esp)
	movl	%ecx, 28(%esp)
	movl	%edx, 132(%esp,%eax)
	movl	%ecx, 136(%esp,%eax)
	jmp	L1104
L1140:
	movl	$LC41, %eax
	movl	%eax, %edx
	jmp	L1115
L1243:
	movl	40(%esp), %ecx
	movl	__ZZ16getstring_simpleE3buf(%ecx), %edx
	movl	64(%esp), %ecx
	movl	%edx, 140(%esp)
	movl	-4(%ecx,%eax), %edx
	movl	%edx, 136(%esp,%eax)
	jmp	L1104
L1244:
	movl	64(%esp), %ecx
	movzwl	-2(%ecx,%eax), %edx
	movw	%dx, 138(%esp,%eax)
	jmp	L1104
L1142:
	movl	$LC41, %ecx
	movl	$LC58, %edx
	movl	%ecx, %eax
	jmp	L1128
L1137:
	movl	%eax, %edx
	jmp	L1093
L1054:
	movzbl	%dl, %eax
	movl	%ecx, 32(%esp)
	movb	%dl, 24(%esp)
	movl	%eax, (%esp)
	call	*__imp__isprint
	movzbl	24(%esp), %edx
	movl	32(%esp), %ecx
	testl	%eax, %eax
	jne	L1055
	jmp	L1228
	.cfi_endproc
LFE81:
	.section .rdata,"dr"
LC63:
	.ascii "%s^011%d\0"
	.text
	.p2align 4
	.globl	__getnumber16.constprop.0
	.def	__getnumber16.constprop.0;	.scl	2;	.type	32;	.endef
__getnumber16.constprop.0:
LFB91:
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
	subl	$192, %esp
	.cfi_def_cfa_offset 212
	movzbl	212(%esp), %eax
	movl	%ebx, (%esp)
	leal	49(%esp), %edi
	movl	%edx, 32(%esp)
	movb	%al, 24(%esp)
	sarl	%eax
	movl	%edx, 44(%esp)
	movl	%ecx, 20(%esp)
	movl	%eax, 28(%esp)
	call	_strlen
	movl	$62, %edx
	addl	$1, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	cmpl	$16, %eax
	jnb	L1248
	testb	$8, %al
	jne	L1308
	testb	$4, %al
	jne	L1309
	testl	%eax, %eax
	je	L1249
	movzbl	(%ebx), %edx
	movb	%dl, 49(%esp)
	testb	$2, %al
	jne	L1310
L1249:
	movb	$0, 111(%esp)
	xorl	%eax, %eax
L1255:
	movl	$0, _g_keyAsciiFIFO(%eax)
	addl	$16, %eax
	movl	$0, _g_keyAsciiFIFO-12(%eax)
	movl	$0, _g_keyAsciiFIFO-8(%eax)
	movl	$0, _g_keyAsciiFIFO-4(%eax)
	cmpl	$64, %eax
	jb	L1255
	movb	$0, _g_keyAsciiEnd
	movb	$0, _g_keyAsciiPos
	cmpb	$0, _keystatus+1
	jne	L1268
	movl	28(%esp), %ecx
	movl	32(%esp), %ebp
	leal	112(%esp), %esi
	movl	%ecx, %eax
	andl	$3, %ecx
	andl	$3, %eax
	movb	%al, 39(%esp)
	leal	-1(%ecx), %eax
	cmpl	$1, %eax
	leal	44(%esp), %eax
	movl	%eax, 16(%esp)
	movl	24(%esp), %eax
	ja	L1280
	andl	$1, %eax
	movl	%ecx, 40(%esp)
	movl	%eax, 24(%esp)
	.p2align 4
	.p2align 3
L1269:
	call	_handleevents
	movl	$1, (%esp)
	xorl	%ebx, %ebx
	call	*__imp__Sleep@4
	.cfi_def_cfa_offset 208
	movzbl	_g_keyAsciiPos, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 212
	cmpb	%al, _g_keyAsciiEnd
	je	L1259
	movzbl	%al, %edx
	addl	$1, %eax
	andl	$63, %eax
	movzbl	_g_keyAsciiFIFO(%edx), %ebx
	movb	%al, _g_keyAsciiPos
L1259:
	movl	%ebp, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$LC63, 4(%esp)
	movl	%esi, (%esp)
	call	_sprintf
	testb	$32, _totalclock
	jne	L1311
L1260:
	movl	%esi, 4(%esp)
	movl	$LC39, (%esp)
	call	__printmessage16
	movl	$18, %eax
	movl	$-1, %edx
	movl	%ebp, _g_iReturnVar
	call	__Z10VM_OnEventii
	movl	__ZL10sdl_resize.lto_priv.0, %eax
	orl	__ZL13sdl_minimized.lto_priv.0, %eax
	jne	L1261
	movl	$1, %eax
	call	_videoShowFrame.part.0
L1261:
	movl	24(%esp), %eax
	movl	20(%esp), %ecx
	movl	16(%esp), %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_getnumber_internal1
	testl	%eax, %eax
	jne	L1262
	cmpb	$2, 39(%esp)
	je	L1263
L1266:
	movl	%ebx, (%esp)
	call	*__imp__isalpha
	testl	%eax, %eax
	je	L1264
	movl	40(%esp), %eax
	movl	16(%esp), %ecx
	movl	%ebx, %edx
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	_getnumber_autocomplete.part.0
	testl	%eax, %eax
	je	L1264
	movzbl	28(%esp), %eax
	andl	$7, %eax
	cmpb	$1, %al
	je	L1262
L1274:
	movl	44(%esp), %edx
	movzbl	_keystatus+1, %eax
	cmpl	%edx, 32(%esp)
	je	L1276
	movl	$1, %ecx
	movw	%cx, _asksave
L1276:
	testb	%al, %al
	jne	L1312
L1277:
	xorl	%eax, %eax
L1278:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L1278
	addl	$192, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%edx, %eax
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
L1248:
	.cfi_restore_state
	movl	-16(%ebx,%eax), %edx
	movl	%edx, 33(%esp,%eax)
	movl	-12(%ebx,%eax), %edx
	movl	%edx, 37(%esp,%eax)
	movl	-8(%ebx,%eax), %edx
	movl	%edx, 41(%esp,%eax)
	movl	-4(%ebx,%eax), %edx
	movl	%edx, 45(%esp,%eax)
	subl	$1, %eax
	cmpl	$16, %eax
	jb	L1249
	andl	$-16, %eax
	movl	%eax, %ebp
	xorl	%eax, %eax
L1253:
	movl	12(%ebx,%eax), %edx
	movl	8(%ebx,%eax), %ecx
	movl	4(%ebx,%eax), %esi
	movl	%edx, 16(%esp)
	movl	(%ebx,%eax), %edx
	movl	%esi, 4(%edi,%eax)
	movl	%edx, (%edi,%eax)
	movl	%ecx, 8(%edi,%eax)
	movl	16(%esp), %ecx
	movl	%ecx, 12(%edi,%eax)
	addl	$16, %eax
	cmpl	%ebp, %eax
	jb	L1253
	jmp	L1249
L1308:
	movl	4(%ebx), %ecx
	movl	(%ebx), %edx
	movl	%ecx, 53(%esp)
	movl	%edx, 49(%esp)
	movl	-8(%ebx,%eax), %ecx
	movl	-4(%ebx,%eax), %ebx
	movl	%ecx, 41(%esp,%eax)
	movl	%ebx, 45(%esp,%eax)
	jmp	L1249
	.p2align 4,,10
	.p2align 3
L1263:
	movl	44(%esp), %ecx
	testl	%ecx, %ecx
	jns	L1266
	.p2align 4
	.p2align 3
L1264:
	cmpb	$0, _keystatus+1
	jne	L1268
	movl	44(%esp), %ebp
	jmp	L1269
	.p2align 4,,10
	.p2align 3
L1311:
	movl	%esi, (%esp)
	call	_strlen
	movl	$8287, %edx
	movw	%dx, (%esi,%eax)
	movb	$0, 2(%esi,%eax)
	jmp	L1260
L1312:
	movl	%edx, 32(%esp)
	.p2align 4
	.p2align 3
L1268:
	testb	$4, 28(%esp)
	movl	$-2147483648, %edx
	cmove	32(%esp), %edx
	jmp	L1277
	.p2align 4,,10
	.p2align 3
L1280:
	andl	$1, %eax
	movl	%eax, 24(%esp)
	jmp	L1258
	.p2align 4,,10
	.p2align 3
L1305:
	cmpb	$0, _keystatus+1
	jne	L1268
	movl	44(%esp), %ebp
L1258:
	call	_handleevents
	movl	$1, (%esp)
	xorl	%ebx, %ebx
	call	*__imp__Sleep@4
	.cfi_def_cfa_offset 208
	movzbl	_g_keyAsciiPos, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 212
	cmpb	_g_keyAsciiEnd, %al
	je	L1270
	movzbl	%al, %edx
	addl	$1, %eax
	andl	$63, %eax
	movzbl	_g_keyAsciiFIFO(%edx), %ebx
	movb	%al, _g_keyAsciiPos
L1270:
	movl	%ebp, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$LC63, 4(%esp)
	movl	%esi, (%esp)
	call	_sprintf
	testb	$32, _totalclock
	jne	L1313
L1271:
	movl	%esi, 4(%esp)
	movl	$LC39, (%esp)
	call	__printmessage16
	movl	$18, %eax
	movl	$-1, %edx
	movl	%ebp, _g_iReturnVar
	call	__Z10VM_OnEventii
	movl	__ZL10sdl_resize.lto_priv.0, %eax
	orl	__ZL13sdl_minimized.lto_priv.0, %eax
	jne	L1272
	movl	$1, %eax
	call	_videoShowFrame.part.0
L1272:
	movl	24(%esp), %ecx
	movl	16(%esp), %edx
	movzbl	%bl, %eax
	movl	%ecx, (%esp)
	movl	20(%esp), %ecx
	call	_getnumber_internal1
	testl	%eax, %eax
	je	L1305
L1262:
	movl	%esi, 4(%esp)
	movl	_totalclock, %eax
	movl	$LC39, (%esp)
	movl	%eax, _lastpm16time
	call	__printmessage16
	jmp	L1274
	.p2align 4,,10
	.p2align 3
L1313:
	movl	%esi, (%esp)
	call	_strlen
	movl	$8287, %edx
	movw	%dx, (%esi,%eax)
	movb	$0, 2(%esi,%eax)
	jmp	L1271
L1310:
	movzwl	-2(%ebx,%eax), %edx
	movw	%dx, 47(%esp,%eax)
	jmp	L1249
L1309:
	movl	(%ebx), %edx
	movl	%edx, 49(%esp)
	movl	-4(%ebx,%eax), %edx
	movl	%edx, 45(%esp,%eax)
	jmp	L1249
	.cfi_endproc
LFE91:
	.p2align 4
	.globl	_printmessage256
	.def	_printmessage256;	.scl	2;	.type	32;	.endef
_printmessage256:
LFB93:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%edx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%eax, %esi
	xorl	%eax, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$104, %esp
	.cfi_def_cfa_offset 120
	movzbl	(%ecx), %edx
	leal	24(%esp), %ebx
	testb	%dl, %dl
	jne	L1317
	jmp	L1315
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1336:
	cmpl	$62, %eax
	je	L1318
L1317:
	movb	%dl, (%ebx,%eax)
	addl	$1, %eax
	movzbl	(%ecx,%eax), %edx
	testb	%dl, %dl
	jne	L1336
	cmpl	$62, %eax
	je	L1318
L1315:
	movl	$62, %edx
	subl	%eax, %edx
	addl	%ebx, %eax
	cmpl	$16, %edx
	jb	L1337
	movl	$538976288, -16(%edx,%eax)
	subl	$1, %edx
	movl	$538976288, -11(%edx,%eax)
	movl	$538976288, -7(%edx,%eax)
	movl	$538976288, -3(%edx,%eax)
	cmpl	$16, %edx
	jb	L1318
	andl	$-16, %edx
	xorl	%ecx, %ecx
L1324:
	movl	$538976288, (%eax,%ecx)
	movl	$538976288, 4(%eax,%ecx)
	movl	$538976288, 8(%eax,%ecx)
	movl	$538976288, 12(%eax,%ecx)
	addl	$16, %ecx
	cmpl	%edx, %ecx
	jb	L1324
L1318:
	leal	2(%edi), %eax
	movl	%ebx, 16(%esp)
	movl	%eax, 4(%esp)
	leal	2(%esi), %eax
	movl	%eax, (%esp)
	movl	$0, 20(%esp)
	movl	$-1, 12(%esp)
	movl	$0, 8(%esp)
	movb	$0, 86(%esp)
	call	_printext256
	movzbl	_whitecol, %eax
	movl	%ebx, 16(%esp)
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	movl	$0, 20(%esp)
	movl	$-1, 12(%esp)
	movl	%eax, 8(%esp)
	call	_printext256
	addl	$104, %esp
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
L1337:
	.cfi_restore_state
	testb	$8, %dl
	jne	L1338
	testb	$4, %dl
	jne	L1339
	testl	%edx, %edx
	je	L1318
	movb	$32, (%eax)
	testb	$2, %dl
	je	L1318
	movl	$8224, %ecx
	movw	%cx, -2(%eax,%edx)
	jmp	L1318
L1338:
	movl	$538976288, (%eax)
	movl	$538976288, 4(%eax)
	movl	$538976288, -8(%eax,%edx)
	movl	$538976288, -4(%eax,%edx)
	jmp	L1318
L1339:
	movl	$538976288, (%eax)
	movl	$538976288, -4(%eax,%edx)
	jmp	L1318
	.cfi_endproc
LFE93:
	.section .rdata,"dr"
LC64:
	.ascii "%s%d\0"
	.text
	.p2align 4
	.globl	__getnumber256.constprop.0
	.def	__getnumber256.constprop.0;	.scl	2;	.type	32;	.endef
__getnumber256.constprop.0:
LFB95:
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
	subl	$192, %esp
	.cfi_def_cfa_offset 212
	movzbl	212(%esp), %eax
	movl	%esi, (%esp)
	movl	%edx, 32(%esp)
	movl	%eax, %ebx
	sarl	%eax
	movl	%edx, 40(%esp)
	movl	%eax, %ebp
	call	_strlen
	movl	$66, %edx
	addl	$1, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	cmpl	$16, %eax
	jnb	L1341
	testb	$8, %al
	jne	L1419
	testb	$4, %al
	jne	L1420
	testl	%eax, %eax
	je	L1342
	movzbl	(%esi), %edx
	movb	%dl, 45(%esp)
	testb	$2, %al
	jne	L1421
L1342:
	movb	$0, 111(%esp)
	xorl	%eax, %eax
L1348:
	movl	$0, _g_keyAsciiFIFO(%eax)
	addl	$16, %eax
	movl	$0, _g_keyAsciiFIFO-12(%eax)
	movl	$0, _g_keyAsciiFIFO-8(%eax)
	movl	$0, _g_keyAsciiFIFO-4(%eax)
	cmpl	$64, %eax
	jb	L1348
	movb	$0, _g_keyAsciiEnd
	movb	$0, _g_keyAsciiPos
	cmpb	$0, _keystatus+1
	jne	L1364
	movl	%ebp, %eax
	movl	%ebp, %edx
	movl	%edi, 16(%esp)
	movl	%ebx, %edi
	andl	$3, %eax
	andl	$3, %edx
	movb	%al, 31(%esp)
	leal	-1(%edx), %eax
	movl	%eax, 24(%esp)
	movl	%edx, 36(%esp)
	testl	$8, %ebp
	je	L1351
	.p2align 4
	.p2align 3
L1361:
	call	_handleevents
	xorl	%ebx, %ebx
	movzbl	_g_keyAsciiPos, %eax
	cmpb	%al, _g_keyAsciiEnd
	je	L1352
	movzbl	%al, %edx
	addl	$1, %eax
	andl	$63, %eax
	movzbl	_g_keyAsciiFIFO(%edx), %ebx
	movb	%al, _g_keyAsciiPos
L1352:
	cmpb	$0, _keystatus+1
	jne	L1364
	xorl	%eax, %eax
L1353:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L1353
	movl	_osearchx, %eax
	movl	$0, _g_mouseBits
	movl	$1, _inputchecked
	movl	%eax, _searchx
	movl	_osearchy, %eax
	movl	%eax, _searchy
	call	__ZL19getnumber_clearlinev
	movl	40(%esp), %esi
	leal	112(%esp), %ecx
	leal	45(%esp), %eax
	movl	%ecx, (%esp)
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC64, 4(%esp)
	movl	%ecx, 20(%esp)
	call	_sprintf
	testb	$32, _totalclock
	movl	20(%esp), %ecx
	je	L1355
	movl	%ecx, (%esp)
	call	_strlen
	movl	20(%esp), %ecx
	movl	$8287, %edx
	movw	%dx, (%ecx,%eax)
	movb	$0, 2(%ecx,%eax)
L1355:
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	_printmessage256
	movl	$18, %eax
	movl	$-1, %edx
	movl	%esi, _g_iReturnVar
	call	__Z10VM_OnEventii
	movl	__ZL10sdl_resize.lto_priv.0, %eax
	orl	__ZL13sdl_minimized.lto_priv.0, %eax
	jne	L1356
	movl	$1, %eax
	call	_videoShowFrame.part.0
L1356:
	movl	%edi, %eax
	movzbl	%bl, %ebx
	movl	16(%esp), %ecx
	leal	40(%esp), %edx
	andl	$1, %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_getnumber_internal1
	testl	%eax, %eax
	je	L1422
L1357:
	movl	40(%esp), %edx
	cmpl	%edx, 32(%esp)
	je	L1418
	movl	$1, %eax
	movw	%ax, _asksave
L1418:
	movzbl	_keystatus+1, %eax
	testb	%al, %al
	jne	L1423
L1373:
	xorl	%eax, %eax
L1374:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L1374
	movl	_totalclock, %eax
	movl	%eax, _lockclock
	addl	$192, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%edx, %eax
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
L1341:
	.cfi_restore_state
	movl	-16(%esi,%eax), %edx
	movl	%edx, 29(%esp,%eax)
	movl	-12(%esi,%eax), %edx
	movl	%edx, 33(%esp,%eax)
	movl	-8(%esi,%eax), %edx
	movl	%edx, 37(%esp,%eax)
	movl	-4(%esi,%eax), %edx
	movl	%edx, 41(%esp,%eax)
	subl	$1, %eax
	cmpl	$16, %eax
	jb	L1342
	movb	%bl, 212(%esp)
	andl	$-16, %eax
	xorl	%edx, %edx
	movl	%ebp, 16(%esp)
	movl	%edi, 20(%esp)
L1346:
	movl	4(%esi,%edx), %ebp
	movl	8(%esi,%edx), %edi
	movl	12(%esi,%edx), %ecx
	movl	(%esi,%edx), %ebx
	movl	%ebp, 49(%esp,%edx)
	movl	%ebx, 45(%esp,%edx)
	movl	%edi, 53(%esp,%edx)
	movl	%ecx, 57(%esp,%edx)
	addl	$16, %edx
	cmpl	%eax, %edx
	jb	L1346
	movzbl	212(%esp), %ebx
	movl	16(%esp), %ebp
	movl	20(%esp), %edi
	jmp	L1342
	.p2align 4,,10
	.p2align 3
L1424:
	movl	40(%esp), %edx
	testl	%edx, %edx
	jns	L1370
	.p2align 4
	.p2align 3
L1369:
	cmpb	$0, _keystatus+1
	jne	L1364
L1351:
	call	_handleevents
	xorl	%ebx, %ebx
	call	_M32_DrawRoomsAndMasks
	movzbl	_g_keyAsciiPos, %eax
	cmpb	_g_keyAsciiEnd, %al
	je	L1362
	movzbl	%al, %edx
	addl	$1, %eax
	andl	$63, %eax
	movzbl	_g_keyAsciiFIFO(%edx), %ebx
	movb	%al, _g_keyAsciiPos
L1362:
	cmpb	$0, _keystatus+1
	jne	L1364
	xorl	%eax, %eax
L1365:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L1365
	movl	_osearchx, %eax
	movl	$0, _g_mouseBits
	movl	$1, _inputchecked
	movl	%eax, _searchx
	movl	_osearchy, %eax
	movl	%eax, _searchy
	call	_ExtCheckKeys
	call	__ZL19getnumber_clearlinev
	movl	40(%esp), %esi
	leal	112(%esp), %ecx
	leal	45(%esp), %eax
	movl	%ecx, (%esp)
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC64, 4(%esp)
	movl	%ecx, 20(%esp)
	call	_sprintf
	testb	$32, _totalclock
	movl	20(%esp), %ecx
	je	L1367
	movl	%ecx, (%esp)
	call	_strlen
	movl	20(%esp), %ecx
	movl	$8287, %edx
	movw	%dx, (%ecx,%eax)
	movb	$0, 2(%ecx,%eax)
L1367:
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	_printmessage256
	movl	$18, %eax
	movl	$-1, %edx
	movl	%esi, _g_iReturnVar
	call	__Z10VM_OnEventii
	movl	__ZL10sdl_resize.lto_priv.0, %eax
	orl	__ZL13sdl_minimized.lto_priv.0, %eax
	jne	L1368
	movl	$1, %eax
	call	_videoShowFrame.part.0
L1368:
	movl	%edi, %eax
	movzbl	%bl, %ebx
	movl	16(%esp), %ecx
	leal	40(%esp), %edx
	andl	$1, %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_getnumber_internal1
	testl	%eax, %eax
	jne	L1357
	cmpl	$1, 24(%esp)
	ja	L1369
	cmpb	$2, 31(%esp)
	je	L1424
L1370:
	movl	%ebx, (%esp)
	call	*__imp__isalpha
	testl	%eax, %eax
	je	L1369
	movl	36(%esp), %eax
	leal	40(%esp), %ecx
	movl	%ebx, %edx
	movl	%eax, (%esp)
	leal	45(%esp), %eax
	call	_getnumber_autocomplete.part.0
	testl	%eax, %eax
	jne	L1357
	jmp	L1369
	.p2align 4,,10
	.p2align 3
L1419:
	movl	(%esi), %edx
	movl	4(%esi), %ecx
	movl	%edx, 45(%esp)
	movl	%ecx, 49(%esp)
	movl	-8(%esi,%eax), %edx
	movl	-4(%esi,%eax), %ecx
	movl	%edx, 37(%esp,%eax)
	movl	%ecx, 41(%esp,%eax)
	jmp	L1342
	.p2align 4,,10
	.p2align 3
L1359:
	movl	40(%esp), %ecx
	testl	%ecx, %ecx
	jns	L1360
	.p2align 4
	.p2align 3
L1358:
	cmpb	$0, _keystatus+1
	je	L1361
L1364:
	andl	$4, %ebp
	movl	$-2147483648, %edx
	cmove	32(%esp), %edx
	jmp	L1373
	.p2align 4,,10
	.p2align 3
L1422:
	cmpl	$1, 24(%esp)
	ja	L1358
	cmpb	$2, 31(%esp)
	je	L1359
L1360:
	movl	%ebx, (%esp)
	call	*__imp__isalpha
	testl	%eax, %eax
	je	L1358
	movl	36(%esp), %eax
	leal	40(%esp), %ecx
	movl	%ebx, %edx
	movl	%eax, (%esp)
	leal	45(%esp), %eax
	call	_getnumber_autocomplete.part.0
	testl	%eax, %eax
	jne	L1357
	jmp	L1358
L1421:
	movzwl	-2(%esi,%eax), %edx
	movw	%dx, 43(%esp,%eax)
	jmp	L1342
L1420:
	movl	(%esi), %edx
	movl	%edx, 45(%esp)
	movl	-4(%esi,%eax), %edx
	movl	%edx, 41(%esp,%eax)
	jmp	L1342
L1423:
	movl	%edx, 32(%esp)
	jmp	L1364
	.cfi_endproc
LFE95:
	.p2align 4
	.globl	__ZL21getclosestpointonwalliiiPiS_i.lto_priv.0
	.def	__ZL21getclosestpointonwalliiiPiS_i.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL21getclosestpointonwalliiiPiS_i.lto_priv.0:
LFB96:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%ecx, %edi
	sall	$5, %ecx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %ebx
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	_wall, %esi
	movl	_m32_sideview, %ebp
	addl	%esi, %ecx
	movswl	8(%ecx), %edx
	testl	%ebp, %ebp
	je	L1426
	testb	$1, 88(%esp)
	jne	L1437
L1426:
	movl	(%ecx), %edi
	movl	4(%ecx), %ecx
	sall	$5, %edx
	addl	%edx, %esi
	movl	%ecx, 48(%esp)
	sarl	$31, %ecx
	movl	%edi, 40(%esp)
	sarl	$31, %edi
	movl	%ecx, 52(%esp)
	movl	(%esi), %ecx
	movl	%edi, 44(%esp)
	movl	%ecx, 56(%esp)
	movl	4(%esi), %ecx
L1427:
	movl	56(%esp), %esi
	movl	%esi, %edi
	sarl	$31, %edi
	subl	40(%esp), %esi
	sbbl	44(%esp), %edi
	movl	%edi, 28(%esp)
	movl	%ecx, %edi
	sarl	$31, %edi
	movl	%esi, 24(%esp)
	movl	24(%esp), %esi
	movl	%edi, %ebp
	movl	%ecx, %edi
	subl	48(%esp), %edi
	sbbl	52(%esp), %ebp
	movl	%edi, 16(%esp)
	cltd
	movl	28(%esp), %edi
	subl	40(%esp), %eax
	sbbl	44(%esp), %edx
	movl	%ebp, 20(%esp)
	movl	%esi, %ebp
	movl	%eax, 32(%esp)
	movl	32(%esp), %eax
	movl	%edx, 36(%esp)
	movl	%edi, %edx
	imull	36(%esp), %ebp
	imull	%eax, %edx
	addl	%edx, %ebp
	mull	%esi
	movl	%eax, %esi
	movl	%edx, %edi
	movl	%ebx, %eax
	addl	%ebp, %edi
	cltd
	subl	48(%esp), %eax
	sbbl	52(%esp), %edx
	movl	%eax, 32(%esp)
	movl	32(%esp), %ebx
	movl	%edx, 36(%esp)
	movl	20(%esp), %edx
	movl	16(%esp), %ebp
	imull	36(%esp), %ebp
	movl	%ebx, %eax
	imull	%ebx, %edx
	addl	%edx, %ebp
	mull	16(%esp)
	addl	%ebp, %edx
	addl	%eax, %esi
	adcl	%edx, %edi
	xorl	%eax, %eax
	cmpl	%esi, %eax
	sbbl	%edi, %eax
	jge	L1438
	movl	24(%esp), %eax
	movl	28(%esp), %ebx
	imull	%eax, %ebx
	movl	24(%esp), %eax
	mull	%eax
	addl	%ebx, %ebx
	movl	%edx, 36(%esp)
	movl	%eax, 32(%esp)
	movl	16(%esp), %eax
	addl	%ebx, 36(%esp)
	movl	20(%esp), %ebx
	imull	%eax, %ebx
	movl	16(%esp), %eax
	mull	%eax
	addl	32(%esp), %eax
	leal	(%edx,%ebx,2), %edx
	movl	%edi, %ebx
	adcl	36(%esp), %edx
	cmpl	%eax, %esi
	sbbl	%edx, %ebx
	jge	L1429
	shldl	$15, %esi, %edi
	sall	$15, %esi
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	movl	%edx, 12(%esp)
	call	___divdi3
	movl	24(%esp), %ecx
	movl	16(%esp), %edi
	movl	%edx, %esi
	movl	%eax, %ebx
	shldl	$15, %eax, %esi
	sall	$15, %ebx
	movl	%ecx, %eax
	movl	%esi, %ebp
	movl	28(%esp), %esi
	movl	%ebx, 24(%esp)
	imull	%ebp, %eax
	movl	%ebp, 28(%esp)
	imull	%ebx, %esi
	movl	40(%esp), %ebx
	addl	%eax, %esi
	movl	%ecx, %eax
	movl	48(%esp), %ecx
	mull	24(%esp)
	addl	%esi, %edx
	shrdl	$30, %edx, %eax
	movl	20(%esp), %edx
	addl	%eax, %ebx
	movl	28(%esp), %eax
	movl	%ebx, 56(%esp)
	movl	24(%esp), %ebx
	imull	%edi, %eax
	imull	%ebx, %edx
	leal	(%edx,%eax), %ebx
	movl	%edi, %eax
	mull	24(%esp)
	addl	%ebx, %edx
	shrdl	$30, %edx, %eax
	addl	%eax, %ecx
L1429:
	movl	80(%esp), %eax
	movl	56(%esp), %ebx
	movl	%ebx, (%eax)
	movl	84(%esp), %eax
	movl	%ecx, (%eax)
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
L1437:
	.cfi_restore_state
	movl	_m32_wallscreenxy(,%edi,8), %ecx
	movl	%ecx, 40(%esp)
	sarl	$31, %ecx
	movl	%ecx, 44(%esp)
	movl	_m32_wallscreenxy+4(,%edi,8), %ecx
	movl	%ecx, 48(%esp)
	sarl	$31, %ecx
	movl	%ecx, 52(%esp)
	movl	_m32_wallscreenxy(,%edx,8), %ecx
	movl	%ecx, 56(%esp)
	movl	_m32_wallscreenxy+4(,%edx,8), %ecx
	jmp	L1427
	.p2align 4,,10
	.p2align 3
L1438:
	movl	40(%esp), %eax
	movl	48(%esp), %ecx
	movl	%eax, 56(%esp)
	jmp	L1429
	.cfi_endproc
LFE96:
	.p2align 4
	.globl	__ZL16getlinehighlightiiia.lto_priv.0
	.def	__ZL16getlinehighlightiiia.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL16getlinehighlightiiia.lto_priv.0:
LFB97:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	%ebp, 48(%esp)
	.cfi_offset 5, -8
	movl	%ecx, %ebp
	movzwl	_numwalls, %ecx
	movl	%eax, 12(%esp)
	testw	%cx, %cx
	je	L1440
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -20
	movl	_g_mouseBits, %ebx
	andl	$1, %ebx
	orl	_searchlock, %ebx
	jne	L1468
	movl	%edi, 44(%esp)
	.cfi_offset 7, -12
	movl	%edx, %edi
	cmpb	$0, 56(%esp)
	je	L1475
L1442:
	movl	_m32_sideview, %eax
	movl	%esi, 40(%esp)
	.cfi_offset 6, -16
	movswl	_linehighlightdist, %esi
	movl	%eax, 20(%esp)
	testl	%eax, %eax
	jne	L1443
	testw	%cx, %cx
	jle	L1470
	movswl	%cx, %eax
	xorl	%ebx, %ebx
	movl	$-1, %ebp
	movl	%eax, 16(%esp)
	.p2align 4
	.p2align 3
L1444:
	movl	%ebx, %eax
	movl	%ebx, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
	movzbl	_graywallbitmap(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%al, %cl
	je	L1448
	leal	28(%esp), %eax
	movl	$1, 8(%esp)
	movl	%ebx, %ecx
	movl	%edi, %edx
	movl	%eax, 4(%esp)
	leal	32(%esp), %eax
	movl	%eax, (%esp)
	movl	12(%esp), %eax
	call	__ZL21getclosestpointonwalliiiPiS_i.lto_priv.0
	movl	12(%esp), %eax
	subl	32(%esp), %eax
/APP
 # 8865 "source/build/src/build.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	%edi, %eax
	subl	28(%esp), %eax
/APP
 # 8865 "source/build/src/build.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%edx, %eax
	cmpl	%esi, %eax
	cmovle	%ebx, %ebp
	cmovle	%eax, %esi
L1448:
	addl	$1, %ebx
	cmpl	16(%esp), %ebx
	jne	L1444
L1447:
	cmpl	$-1, %ebp
	je	L1474
	movl	_wall, %esi
	movl	%ebp, %eax
	sall	$5, %eax
	addl	%esi, %eax
	movl	%esi, 24(%esp)
	movswl	10(%eax), %esi
	movl	%esi, 16(%esp)
	movl	%esi, %ecx
	testl	%esi, %esi
	js	L1474
	movl	20(%esp), %edx
	testl	%edx, %edx
	jne	L1450
	andl	$7, %ecx
	sarl	$3, %esi
	movzbl	__ZL8pow2char.lto_priv.2(%ecx), %ecx
	movzbl	_graywallbitmap(%esi), %edx
	andl	%ecx, %edx
	cmpb	%cl, %dl
	je	L1474
	movl	(%eax), %ebx
	movl	4(%eax), %ecx
	movswl	8(%eax), %eax
	movl	24(%esp), %edx
	sall	$5, %eax
	addl	%eax, %edx
	movl	(%edx), %esi
	movl	4(%edx), %edx
L1453:
	movl	12(%esp), %eax
	subl	%ecx, %edx
	subl	%ecx, %edi
	subl	%ebx, %eax
	subl	%esi, %ebx
	movl	%ebx, %esi
/APP
 # 8898 "source/build/src/build.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx
 # 0 "" 2
/NO_APP
	testl	%edx, %edx
	cmovns	16(%esp), %ebp
	movl	36(%esp), %ebx
	.cfi_restore 3
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	44(%esp), %edi
	.cfi_restore 7
	movl	%ebp, %eax
	movl	48(%esp), %ebp
	addl	$52, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1475:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movswl	_pointhighlight, %eax
	andl	$49152, %eax
	cmpl	$16384, %eax
	jne	L1442
	movl	36(%esp), %ebx
	.cfi_restore 3
	movl	44(%esp), %edi
	.cfi_restore 7
	.p2align 4
	.p2align 3
L1440:
	movl	$-1, %ebp
	jmp	L1439
	.p2align 4,,10
	.p2align 3
L1468:
	.cfi_offset 3, -20
	movl	36(%esp), %ebx
	.cfi_restore 3
L1439:
	movl	%ebp, %eax
	movl	48(%esp), %ebp
	addl	$52, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1450:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	16(%esp), %ecx
	movl	24(%esp), %esi
	sall	$5, %ecx
	movswl	8(%esi,%ecx), %ecx
	movl	_m32_wallscreenxy(,%ecx,8), %edx
	movl	_m32_wallscreenxy+4(,%ecx,8), %ecx
	xorl	_m32_wallscreenxy(,%ebp,8), %edx
	xorl	_m32_wallscreenxy+4(,%ebp,8), %ecx
	orl	%ecx, %edx
	je	L1476
L1474:
	movl	%ebp, %eax
	movl	36(%esp), %ebx
	.cfi_remember_state
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
L1443:
	.cfi_restore_state
	movl	_zoom, %edx
	movl	%esi, %eax
/APP
 # 8850 "source/build/src/build.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	testw	%cx, %cx
	jle	L1470
	movl	_searchx, %eax
	movl	_searchy, %edi
	movl	$-1, %ebp
	movl	%eax, 12(%esp)
	movswl	%cx, %eax
	movl	%eax, 16(%esp)
	.p2align 4
	.p2align 3
L1446:
	leal	28(%esp), %eax
	movl	$1, 8(%esp)
	movl	%ebx, %ecx
	movl	%edi, %edx
	movl	%eax, 4(%esp)
	leal	32(%esp), %eax
	movl	%eax, (%esp)
	movl	12(%esp), %eax
	call	__ZL21getclosestpointonwalliiiPiS_i.lto_priv.0
	movl	12(%esp), %eax
	subl	32(%esp), %eax
/APP
 # 8865 "source/build/src/build.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	%edi, %eax
	subl	28(%esp), %eax
/APP
 # 8865 "source/build/src/build.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%edx, %eax
	cmpl	%eax, %esi
	cmovge	%ebx, %ebp
	cmovge	%eax, %esi
	addl	$1, %ebx
	cmpl	16(%esp), %ebx
	jne	L1446
	jmp	L1447
L1476:
	movswl	8(%eax), %eax
	movl	16(%esp), %esi
	movl	_m32_wallscreenxy(,%esi,8), %edx
	movl	_m32_wallscreenxy+4(,%esi,8), %ecx
	xorl	_m32_wallscreenxy(,%eax,8), %edx
	xorl	_m32_wallscreenxy+4(,%eax,8), %ecx
	orl	%ecx, %edx
	jne	L1474
	movl	_m32_wallscreenxy(,%ebp,8), %ebx
	movl	_m32_wallscreenxy+4(,%ebp,8), %ecx
	movl	_m32_wallscreenxy(,%eax,8), %esi
	movl	_m32_wallscreenxy+4(,%eax,8), %edx
	jmp	L1453
	.p2align 4,,10
	.p2align 3
L1470:
	movl	36(%esp), %ebx
	.cfi_restore 3
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	44(%esp), %edi
	.cfi_restore 7
	jmp	L1440
	.cfi_endproc
LFE97:
	.section .rdata,"dr"
	.align 4
LC65:
	.ascii "Must be in windowed mode to test map!\0"
LC66:
	.ascii "rb\0"
LC67:
	.ascii "kuro.exe\0"
LC68:
	.ascii "\"%s\"\0"
LC69:
	.ascii "autosave_playtest.map\0"
	.align 4
LC70:
	.ascii "Board saved to autosave_playtest.map. Starting the game...\0"
LC71:
	.ascii "...as `%s'\12\0"
LC72:
	.ascii "Error launching the game!\0"
	.align 4
LC73:
	.ascii "Position must be in valid player space to test map!\0"
	.text
	.p2align 4
	.globl	_test_map.constprop.0
	.def	_test_map.constprop.0;	.scl	2;	.type	32;	.endef
_test_map.constprop.0:
LFB99:
	.cfi_startproc
	subl	$392, %esp
	.cfi_def_cfa_offset 396
	movl	_pos+4, %eax
	movl	$_cursectnum, 8(%esp)
	movl	%eax, 4(%esp)
	movl	_pos, %eax
	movl	%eax, (%esp)
	call	_updatesector
	movl	_fullscreen, %eax
	testl	%eax, %eax
	jne	L1503
	cmpw	$0, _cursectnum
	js	L1480
	movl	%ebx, 384(%esp)
	movl	%esi, 388(%esp)
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	cmpb	$0, _program_origcwd
	jne	L1504
L1481:
	movb	$0, 128(%esp)
L1482:
	movl	$LC66, 4(%esp)
	movl	$_game_executable, (%esp)
	call	_fopen
	testl	%eax, %eax
	je	L1483
	movl	%eax, (%esp)
	call	_fclose
L1484:
	movl	$55, %ebx
L1486:
	cmpb	$0, 128(%esp)
	jne	L1505
L1487:
	movl	$_game_executable, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	addl	%ebx, %eax
	movl	%eax, (%esp)
	movl	%eax, %esi
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 392
	subl	$4, %esp
	.cfi_def_cfa_offset 396
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1488
	movl	$_game_executable, 8(%esp)
	movl	$LC68, 4(%esp)
	movl	%eax, (%esp)
	call	_sprintf
	movl	%ebx, (%esp)
	call	_strlen
	movl	$-1, %edx
	movl	$1634544928, (%ebx,%eax)
	movl	$1969299568, 4(%ebx,%eax)
	movl	$1634955124, 8(%ebx,%eax)
	movl	$1885300086, 12(%ebx,%eax)
	movl	$1954111852, 16(%ebx,%eax)
	movl	$779383653, 20(%ebx,%eax)
	movl	$544235885, 24(%ebx,%eax)
	movl	$1768910381, 28(%ebx,%eax)
	movl	$1635021678, 32(%ebx,%eax)
	movl	$1667588974, 36(%ebx,%eax)
	movl	$1801676136, 40(%ebx,%eax)
	movl	$6778473, 44(%ebx,%eax)
	movl	$16, %eax
	call	__Z10VM_OnEventii
	call	__Z13ResetBuildFAFv
	call	__Z12ResetSpritesv
	movswl	_cursectnum, %eax
	movl	$_pos, %edx
	movswl	_ang, %ecx
	movl	%eax, (%esp)
	movl	$LC69, %eax
	call	_saveboard
	movl	$LC70, (%esp)
	call	_message
	movl	%ebx, 4(%esp)
	movl	$LC71, (%esp)
	call	__Z10OSD_PrintfPKcz
	movl	__ZL10sdl_resize.lto_priv.0, %eax
	orl	__ZL13sdl_minimized.lto_priv.0, %eax
	jne	L1489
	movl	$1, %eax
	call	_videoShowFrame.part.0
L1489:
	xorl	%eax, %eax
L1491:
	movl	$0, 64(%esp,%eax)
	movl	$0, 68(%esp,%eax)
	movl	$0, 72(%esp,%eax)
	movl	$0, 76(%esp,%eax)
	addl	$16, %eax
	cmpl	$64, %eax
	jb	L1491
	leal	44(%esp), %eax
	movl	$0, 44(%esp)
	movl	%eax, 36(%esp)
	leal	60(%esp), %eax
	movl	$0, 48(%esp)
	movl	$0, 52(%esp)
	movl	$0, 56(%esp)
	movl	$68, 60(%esp)
	movl	%eax, 32(%esp)
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	$0, (%esp)
	call	*__imp__CreateProcessA@40
	.cfi_def_cfa_offset 356
	subl	$40, %esp
	.cfi_def_cfa_offset 396
	testl	%eax, %eax
	je	L1506
L1493:
	xorl	%eax, %eax
L1494:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L1494
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 392
	subl	$4, %esp
	.cfi_def_cfa_offset 396
	movl	384(%esp), %ebx
	.cfi_restore 3
	movl	388(%esp), %esi
	.cfi_restore 6
	jmp	L1477
	.p2align 4,,10
	.p2align 3
L1480:
	movl	$LC73, (%esp)
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	call	__printmessage16
L1477:
	addl	$392, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1503:
	.cfi_restore_state
	movl	$LC65, (%esp)
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	call	__printmessage16
	addl	$392, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1506:
	.cfi_def_cfa_offset 396
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	$LC72, (%esp)
	call	_message
	jmp	L1493
	.p2align 4,,10
	.p2align 3
L1505:
	leal	128(%esp), %eax
	movl	%eax, (%esp)
	call	_chdir
	jmp	L1487
	.p2align 4,,10
	.p2align 3
L1504:
	leal	128(%esp), %eax
	movl	$256, 4(%esp)
	movl	%eax, (%esp)
	call	_getcwd
	testl	%eax, %eax
	je	L1481
	movl	$_program_origcwd, (%esp)
	call	_chdir
	jmp	L1482
	.p2align 4,,10
	.p2align 3
L1483:
	movl	$47, 4(%esp)
	movl	$0, (%esp)
	call	_strrchr
	movl	$92, 4(%esp)
	movl	$0, (%esp)
	movl	%eax, %ebx
	call	_strrchr
	movl	%eax, %edx
	orl	%ebx, %edx
	je	L1485
	cmpl	%eax, %ebx
	movl	$0, 4(%esp)
	cmovb	%eax, %ebx
	movl	$_game_executable, (%esp)
	leal	1(%ebx), %edx
	addl	$56, %ebx
	movl	%edx, 8(%esp)
	movl	%edx, 40(%esp)
	call	_strncpy
	movl	40(%esp), %edx
	movl	$256, %eax
	movl	$LC67, 4(%esp)
	subl	%edx, %eax
	addl	$_game_executable, %edx
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	call	_strncpy
	jmp	L1486
	.p2align 4,,10
	.p2align 3
L1488:
	movl	%esi, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1485:
	movl	$1869772139, _game_executable
	movl	$1702389038, _game_executable+4
	movb	$0, _game_executable+8
	movb	$0, _game_executable+255
	jmp	L1484
	.cfi_endproc
LFE99:
	.section .rdata,"dr"
LC74:
	.ascii "%s - %s\0"
	.text
	.p2align 4
	.globl	__ZL18editorEventLoadMapPKc.constprop.0
	.def	__ZL18editorEventLoadMapPKc.constprop.0;	.scl	2;	.type	32;	.endef
__ZL18editorEventLoadMapPKc.constprop.0:
LFB101:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	$256, 8(%esp)
	movl	$__ZL13boardfilename.lto_priv.0, 4(%esp)
	movl	$_levelname, (%esp)
	call	_strncpy
	movl	$__ZL13boardfilename.lto_priv.0, 16(%esp)
	movl	$LC1, 12(%esp)
	movl	$LC74, 8(%esp)
	movl	$4096, 4(%esp)
	movl	$_tempbuf, (%esp)
	call	*__imp___snprintf
	movl	$_tempbuf, %eax
	call	_wm_setapptitle
	movl	$75, %eax
	movl	$71, %edx
	movl	$1380015941, _StagInfo+484
	movw	%ax, _StagInfo+8
	movl	$82, %eax
	movl	$82, %ecx
	movl	$1413694803, _StagInfo
	movl	$1313428319, _StagInfo+4
	movl	$0, _StagInfo+64
	movl	$1413694803, _StagInfo+68
	movl	$1162891103, _StagInfo+72
	movl	$1230258514, _StagInfo+76
	movl	$1279348303, _StagInfo+80
	movb	$0, _StagInfo+84
	movl	$0, _StagInfo+132
	movl	$1413694803, _StagInfo+204
	movl	$1381319519, _StagInfo+208
	movl	$1414415698, _StagInfo+212
	movb	$0, _StagInfo+216
	movl	$0, _StagInfo+268
	movl	$1413694803, _StagInfo+340
	movl	$1599032927, _StagInfo+344
	movl	$1162103122, _StagInfo+348
	movb	$0, _StagInfo+352
	movl	$0, _StagInfo+404
	movl	$1413694803, _StagInfo+476
	movl	$1447642207, _StagInfo+480
	movl	$4277586, _StagInfo+487
	movl	$-2147483648, _StagInfo+540
	movl	$1413694803, _StagInfo+544
	movl	$1145984351, _StagInfo+548
	movl	$1096241733, _StagInfo+552
	movl	$5391700, _StagInfo+556
	movl	$-2147483648, _StagInfo+608
	movl	$1413694803, _StagInfo+612
	movl	$1145984351, _StagInfo+616
	movl	$1096241733, _StagInfo+620
	movl	$1348424271, _StagInfo+1300
	movw	%dx, _StagInfo+1648
	movl	$80, %edx
	movl	$844252500, _StagInfo+624
	movb	$0, _StagInfo+628
	movl	$-2147483648, _StagInfo+676
	movl	$1096765267, _StagInfo+1088
	movl	$1162626894, _StagInfo+1092
	movb	$0, _StagInfo+1096
	movl	$0, _StagInfo+1152
	movl	$1413694803, _StagInfo+1292
	movl	$1330398815, _StagInfo+1296
	movl	$5128528, _StagInfo+1303
	movl	$0, _StagInfo+1356
	movl	$1413694803, _StagInfo+1428
	movl	$1229275999, _StagInfo+1432
	movl	$1196312908, _StagInfo+1436
	movl	$1312903263, _StagInfo+1440
	movb	$0, _StagInfo+1444
	movl	$0, _StagInfo+1492
	movl	$1413694803, _StagInfo+1564
	movl	$1279350623, _StagInfo+1568
	movl	$1095786316, _StagInfo+1572
	movl	$1347641166, _StagInfo+1576
	movl	$4474181, _StagInfo+1580
	movl	$0, _StagInfo+1628
	movl	$1413694803, _StagInfo+1632
	movl	$1279350623, _StagInfo+1636
	movl	$1095786316, _StagInfo+1640
	movl	$1312907086, _StagInfo+1644
	movl	$0, _StagInfo+1696
	movl	$1413694803, _StagInfo+1700
	movl	$1111835743, _StagInfo+1704
	movl	$1599293778, _StagInfo+1708
	movw	%ax, _StagInfo+2056
	movl	$84, %eax
	movw	%cx, _StagInfo+1716
	movl	$68, %ecx
	movl	$1414415683, _StagInfo+1844
	movl	$1413565791, _StagInfo+1908
	movl	$1329880907, _StagInfo+1980
	movl	$1331643732, _StagInfo+2120
	movl	$1163347283, _StagInfo+1712
	movl	$0, _StagInfo+1764
	movl	$1413694803, _StagInfo+1836
	movl	$1599034207, _StagInfo+1840
	movl	$5391700, _StagInfo+1847
	movl	$0, _StagInfo+1900
	movl	$1413694803, _StagInfo+1904
	movl	$4735828, _StagInfo+1911
	movl	$-2147483648, _StagInfo+1968
	movl	$1413694803, _StagInfo+1972
	movl	$1129270367, _StagInfo+1976
	movl	$5394255, _StagInfo+1983
	movl	$0, _StagInfo+2036
	movl	$1230131283, _StagInfo+2040
	movl	$1229734751, _StagInfo+2044
	movl	$1298088525, _StagInfo+2048
	movl	$1162564161, _StagInfo+2052
	movl	$0, _StagInfo+2104
	movl	$1413694803, _StagInfo+2108
	movl	$1599034207, _StagInfo+2112
	movl	$1230131283, _StagInfo+2116
	movl	$4866639, _StagInfo+2123
	movl	$0, _StagInfo+2172
	movl	$1413694803, _StagInfo+2176
	movl	$1599034207, _StagInfo+2180
	movl	$1414418244, _StagInfo+2184
	movl	$1112490591, _StagInfo+2188
	movw	%ax, _StagInfo+2260
	movl	$75, %eax
	movw	%ax, _StagInfo+2328
	movl	$84, %eax
	movw	%ax, _StagInfo+2668
	movl	$80, %eax
	movl	$1330662482, _StagInfo+2532
	movb	$0, _StagInfo+2192
	movl	$0, _StagInfo+2240
	movl	$1413694803, _StagInfo+2244
	movl	$1599034207, _StagInfo+2248
	movl	$1263421779, _StagInfo+2252
	movl	$1397048415, _StagInfo+2256
	movl	$0, _StagInfo+2308
	movl	$1413694803, _StagInfo+2312
	movl	$1599034207, _StagInfo+2316
	movl	$1414418244, _StagInfo+2320
	movl	$1313428319, _StagInfo+2324
	movl	$0, _StagInfo+2376
	movl	$1413694803, _StagInfo+2516
	movl	$1599034207, _StagInfo+2520
	movl	$1297239878, _StagInfo+2524
	movl	$1229477727, _StagInfo+2528
	movl	$5001039, _StagInfo+2535
	movl	$0, _StagInfo+2580
	movl	$1413694803, _StagInfo+2584
	movl	$1413693791, _StagInfo+2588
	movl	$1113543247, _StagInfo+2592
	movl	$1262702412, _StagInfo+2596
	movb	$0, _StagInfo+2600
	movl	$0, _StagInfo+2648
	movl	$1413694803, _StagInfo+2652
	movl	$1599034207, _StagInfo+2656
	movl	$1346980931, _StagInfo+2660
	movl	$1397310559, _StagInfo+2664
	movl	$0, _StagInfo+2716
	movw	%ax, _StagInfo+2936
	movl	$82, %eax
	movl	$1096045407, _StagInfo+2868
	movw	%dx, _StagInfo+3000
	movl	$69, %edx
	movl	$1447382111, _StagInfo+3136
	movl	$1413827649, _StagInfo+3212
	movl	$1414288717, _StagInfo+2856
	movl	$1280335689, _StagInfo+2860
	movl	$1380276545, _StagInfo+2864
	movl	$5526081, _StagInfo+2871
	movl	$0, _StagInfo+2920
	movl	$1163020614, _StagInfo+2924
	movl	$1280065858, _StagInfo+2928
	movl	$1095914591, _StagInfo+2932
	movl	$-2147483648, _StagInfo+2988
	movl	$1414287170, _StagInfo+2992
	movl	$1095914591, _StagInfo+2996
	movl	$-2147483648, _StagInfo+3056
	movl	$1413694803, _StagInfo+3060
	movl	$1599034207, _StagInfo+3064
	movl	$1414418244, _StagInfo+3068
	movl	$1414484575, _StagInfo+3072
	movl	$4543553, _StagInfo+3076
	movl	$0, _StagInfo+3124
	movl	$1095909712, _StagInfo+3128
	movl	$1480674380, _StagInfo+3132
	movl	$4998486, _StagInfo+3139
	movl	$0, _StagInfo+3192
	movl	$1413694803, _StagInfo+3196
	movl	$1313817695, _StagInfo+3200
	movl	$1329815380, _StagInfo+3204
	movl	$1348426064, _StagInfo+3208
	movl	$4543572, _StagInfo+3215
	movl	$0, _StagInfo+3260
	movl	$1414288717, _StagInfo+3264
	movl	$1329815369, _StagInfo+3268
	movl	$1380274255, _StagInfo+3272
	movl	$1447646273, _StagInfo+3276
	movl	$1414750021, _StagInfo+3280
	movl	$5526081, _StagInfo+3284
	movl	$0, _StagInfo+3328
	movl	$1398755155, _StagInfo+3332
	movl	$1398756421, _StagInfo+3336
	movl	$1145390416, _StagInfo+3340
	movb	$0, _StagInfo+3344
	movl	$0, _StagInfo+3396
	movl	$1398755155, _StagInfo+3400
	movl	$5130576, _StagInfo+3404
	movl	$0, _StagInfo+3464
	movl	$1398755155, _StagInfo+3468
	movl	$1598966096, _StagInfo+3472
	movl	$1163281746, _StagInfo+3476
	movl	$4543314, _StagInfo+3480
	movl	$0, _StagInfo+3532
	movl	$1113542483, _StagInfo+3536
	movl	$1398751823, _StagInfo+3540
	movl	$1414676820, _StagInfo+3544
	movb	$0, _StagInfo+3548
	movl	$0, _StagInfo+3600
	movl	$1113542483, _StagInfo+3604
	movl	$1398751823, _StagInfo+3608
	movl	$1145390416, _StagInfo+3612
	movb	$0, _StagInfo+3616
	movl	$0, _StagInfo+3668
	movl	$1415532371, _StagInfo+3740
	movl	$1598968405, _StagInfo+3744
	movl	$1162170451, _StagInfo+3748
	movw	%ax, _StagInfo+3900
	movl	$78, %eax
	movw	%cx, _StagInfo+3752
	movl	$49, %ecx
	movl	$1431455071, _StagInfo+3812
	movl	$1162108761, _StagInfo+3952
	movl	$1229934687, _StagInfo+4224
	movl	$0, _StagInfo+3804
	movl	$1096171852, _StagInfo+3808
	movl	$5525589, _StagInfo+3815
	movl	$0, _StagInfo+3872
	movl	$1413694803, _StagInfo+3876
	movl	$1347962207, _StagInfo+3880
	movl	$1229213516, _StagInfo+3884
	movl	$1130317646, _StagInfo+3888
	movl	$1598835013, _StagInfo+3892
	movl	$1330596934, _StagInfo+3896
	movl	$-2147483648, _StagInfo+3940
	movl	$1413694803, _StagInfo+3944
	movl	$1347371871, _StagInfo+3948
	movl	$5526341, _StagInfo+3955
	movl	$-2147483648, _StagInfo+4008
	movl	$1413694803, _StagInfo+4012
	movl	$1347371871, _StagInfo+4016
	movl	$1330863961, _StagInfo+4020
	movl	$1162039893, _StagInfo+4024
	movb	$0, _StagInfo+4028
	movl	$-2147483648, _StagInfo+4076
	movl	$1398755155, _StagInfo+4216
	movl	$1414483784, _StagInfo+4220
	movl	$5525065, _StagInfo+4227
	movl	$0, _StagInfo+4280
	movl	$1095061587, _StagInfo+4284
	movl	$1381261138, _StagInfo+4288
	movl	$5259602, _StagInfo+4291
	movw	%ax, _StagInfo+4636
	movl	$84, %eax
	movl	$1347641166, _StagInfo+4696
	movl	$1163281759, _StagInfo+4768
	movl	$-2147483648, _StagInfo+4348
	movl	$1398755155, _StagInfo+4352
	movl	$826494553, _StagInfo+4356
	movb	$0, _StagInfo+4360
	movl	$0, _StagInfo+4416
	movl	$1398755155, _StagInfo+4420
	movl	$843271769, _StagInfo+4424
	movb	$0, _StagInfo+4428
	movl	$0, _StagInfo+4484
	movl	$1330464068, _StagInfo+4488
	movl	$1296122719, _StagInfo+4492
	movl	$4280901, _StagInfo+4496
	movl	$0, _StagInfo+4552
	movl	$1281314643, _StagInfo+4624
	movl	$1414090057, _StagInfo+4628
	movl	$1381323871, _StagInfo+4632
	movl	$0, _StagInfo+4688
	movl	$1463898195, _StagInfo+4692
	movl	$5525328, _StagInfo+4699
	movl	$-2147483648, _StagInfo+4756
	movl	$1298091859, _StagInfo+4760
	movl	$1212372033, _StagInfo+4764
	movl	$5525061, _StagInfo+4771
	movl	$-2147483648, _StagInfo+4824
	movl	$1398755155, _StagInfo+4828
	movl	$1162891084, _StagInfo+4832
	movl	$1330398815, _StagInfo+4836
	movl	$1415533135, _StagInfo+4840
	movl	$1330667343, _StagInfo+4844
	movl	$5525065, _StagInfo+4848
	movw	%ax, _StagInfo+4920
	movl	$65, %eax
	movw	%ax, _StagInfo+5108
	movl	$69, %eax
	movw	%ax, _StagInfo+5180
	movl	$50, %eax
	movl	$1095651919, _StagInfo+4968
	movl	$1380928863, _StagInfo+5040
	movw	%dx, _StagInfo+5248
	movl	$71, %edx
	movl	$0, _StagInfo+4892
	movl	$1398755155, _StagInfo+4896
	movl	$1162891084, _StagInfo+4900
	movl	$1229275999, _StagInfo+4904
	movl	$1196312908, _StagInfo+4908
	movl	$1599034463, _StagInfo+4912
	movl	$1313427280, _StagInfo+4916
	movl	$0, _StagInfo+4960
	movl	$1415532371, _StagInfo+4964
	movl	$5194817, _StagInfo+4971
	movl	$0, _StagInfo+5028
	movl	$1180651347, _StagInfo+5032
	movl	$1380929356, _StagInfo+5036
	movl	$4739154, _StagInfo+5043
	movl	$0, _StagInfo+5096
	movl	$1096765267, _StagInfo+5100
	movl	$1111838541, _StagInfo+5104
	movl	$0, _StagInfo+5164
	movl	$1298091859, _StagInfo+5168
	movl	$1147099201, _StagInfo+5172
	movl	$1195461953, _StagInfo+5176
	movl	$0, _StagInfo+5232
	movl	$1381977939, _StagInfo+5236
	movl	$1147096385, _StagInfo+5240
	movl	$1195461953, _StagInfo+5244
	movl	$0, _StagInfo+5300
	movl	$1130319699, _StagInfo+5304
	movl	$1381127508, _StagInfo+5516
	movl	$1095520351, _StagInfo+5792
	movl	$1599097164, _StagInfo+5308
	movl	$5787458, _StagInfo+5312
	movl	$0, _StagInfo+5368
	movl	$1398755155, _StagInfo+5372
	movl	$1162103116, _StagInfo+5376
	movb	$0, _StagInfo+5380
	movl	$0, _StagInfo+5436
	movl	$1264537427, _StagInfo+5440
	movl	$1095519305, _StagInfo+5444
	movl	$4541506, _StagInfo+5448
	movl	$0, _StagInfo+5504
	movl	$1096765267, _StagInfo+5508
	movl	$1599034453, _StagInfo+5512
	movl	$5522770, _StagInfo+5519
	movl	$0, _StagInfo+5572
	movl	$1413694803, _StagInfo+5576
	movl	$1296122975, _StagInfo+5580
	movl	$4540225, _StagInfo+5584
	movl	$0, _StagInfo+5640
	movl	$1347567959, _StagInfo+5712
	movl	$1279611999, _StagInfo+5716
	movl	$1380929605, _StagInfo+5720
	movl	$5391700, _StagInfo+5724
	movl	$-2147483648, _StagInfo+5776
	movl	$1347567959, _StagInfo+5780
	movl	$1229275999, _StagInfo+5784
	movl	$1196312908, _StagInfo+5788
	movl	$4542017, _StagInfo+5795
	movl	$-2147483648, _StagInfo+5844
	movl	$1347567959, _StagInfo+5848
	movl	$1330398815, _StagInfo+5852
	movw	%ax, _StagInfo+6000
	movl	$84, %eax
	movw	%ax, _StagInfo+6200
	movl	$87, %eax
	movw	%cx, _StagInfo+5932
	movl	$69, %ecx
	movl	$1430930497, _StagInfo+6132
	movl	$1413568095, _StagInfo+6260
	movl	$1348424271, _StagInfo+5856
	movl	$1162756428, _StagInfo+5860
	movb	$0, _StagInfo+5864
	movl	$-2147483648, _StagInfo+5912
	movl	$1347567959, _StagInfo+5916
	movl	$1347371871, _StagInfo+5920
	movl	$1347641177, _StagInfo+5924
	movl	$1163151698, _StagInfo+5928
	movl	$-2147483648, _StagInfo+5980
	movl	$1347567959, _StagInfo+5984
	movl	$1347371871, _StagInfo+5988
	movl	$1347641177, _StagInfo+5992
	movl	$1163151698, _StagInfo+5996
	movl	$-2147483648, _StagInfo+6048
	movl	$1480674384, _StagInfo+6120
	movl	$1330399071, _StagInfo+6124
	movl	$1599758146, _StagInfo+6128
	movl	$5526357, _StagInfo+6135
	movl	$0, _StagInfo+6184
	movl	$1480674384, _StagInfo+6188
	movl	$1096768095, _StagInfo+6192
	movl	$1398098500, _StagInfo+6196
	movl	$0, _StagInfo+6252
	movl	$1413694803, _StagInfo+6256
	movl	$5394260, _StagInfo+6263
	movl	$-2147483648, _StagInfo+6320
	movl	$1413694803, _StagInfo+6392
	movl	$1413568095, _StagInfo+6396
	movw	%ax, _StagInfo+6752
	movl	$79, %eax
	movw	%ax, _StagInfo+6812
	movl	$69, %eax
	movl	$1430930497, _StagInfo+6672
	movl	$1147097679, _StagInfo+6400
	movl	$5526341, _StagInfo+6404
	movl	$0, _StagInfo+6456
	movl	$1279870275, _StagInfo+6596
	movl	$1598508617, _StagInfo+6600
	movl	$1145134938, _StagInfo+6604
	movl	$1414747466, _StagInfo+6608
	movb	$0, _StagInfo+6612
	movl	$0, _StagInfo+6660
	movl	$1330596934, _StagInfo+6664
	movl	$1599758162, _StagInfo+6668
	movl	$5526357, _StagInfo+6675
	movl	$0, _StagInfo+6728
	movl	$1330596934, _StagInfo+6732
	movl	$1280532306, _StagInfo+6736
	movl	$1598378063, _StagInfo+6740
	movl	$1414418244, _StagInfo+6744
	movl	$1095910495, _StagInfo+6748
	movl	$0, _StagInfo+6796
	movl	$1398755155, _StagInfo+6800
	movl	$1162625347, _StagInfo+6804
	movl	$1179535711, _StagInfo+6808
	movl	$0, _StagInfo+6864
	movl	$1398755155, _StagInfo+6868
	movl	$1162625347, _StagInfo+6872
	movl	$1229934687, _StagInfo+6876
	movl	$1230984270, _StagInfo+6880
	movl	$5195342, _StagInfo+6884
	movl	$0, _StagInfo+6932
	movl	$1398755155, _StagInfo+6936
	movw	%ax, _StagInfo+7092
	movl	$69, %eax
	movl	$1330470732, _StagInfo+7012
	movl	$1230000991, _StagInfo+7212
	movl	$1162625347, _StagInfo+6940
	movl	$1599690847, _StagInfo+6944
	movl	$1414288717, _StagInfo+6948
	movb	$0, _StagInfo+6952
	movl	$0, _StagInfo+7000
	movl	$1413694803, _StagInfo+7004
	movl	$1279350623, _StagInfo+7008
	movl	$4544079, _StagInfo+7015
	movl	$-2147483648, _StagInfo+7068
	movl	$1413694803, _StagInfo+7072
	movl	$1279350623, _StagInfo+7076
	movl	$1330470732, _StagInfo+7080
	movl	$1130317142, _StagInfo+7084
	movl	$1163087425, _StagInfo+7088
	movl	$-2147483648, _StagInfo+7136
	movl	$1413694803, _StagInfo+7208
	movl	$4541257, _StagInfo+7215
	movl	$-2147483648, _StagInfo+7272
	movl	$1212631372, _StagInfo+7344
	movl	$1196312916, _StagInfo+7348
	movb	$0, _StagInfo+7352
	movl	$-2147483648, _StagInfo+7408
	movl	$1212631372, _StagInfo+7412
	movl	$1196312916, _StagInfo+7416
	movl	$1179206751, _StagInfo+7420
	movl	$1163089222, _StagInfo+7424
	movb	$0, _StagInfo+7428
	movl	$-2147483648, _StagInfo+7476
	movl	$1464158550, _StagInfo+8160
	movl	$1380471903, _StagInfo+8164
	movw	%dx, _StagInfo+8176
	movl	$1162043221, _StagInfo+8168
	movl	$1313426505, _StagInfo+8172
	movl	$0, _StagInfo+8224
	movl	$1464158550, _StagInfo+8228
	movl	$1380471903, _StagInfo+8232
	movl	$1279680341, _StagInfo+8236
	movl	$5394255, _StagInfo+8240
	movl	$0, _StagInfo+8292
	movl	$1464158550, _StagInfo+7480
	movl	$1447382111, _StagInfo+7484
	movl	$3230789, _StagInfo+7488
	movl	$0, _StagInfo+7544
	movl	$1464158550, _StagInfo+7548
	movl	$1447382111, _StagInfo+7552
	movl	$3296325, _StagInfo+7556
	movl	$0, _StagInfo+7612
	movl	$1464158550, _StagInfo+7616
	movl	$1447382111, _StagInfo+7620
	movl	$3361861, _StagInfo+7624
	movl	$0, _StagInfo+7680
	movl	$1464158550, _StagInfo+7684
	movl	$1447382111, _StagInfo+7688
	movl	$3427397, _StagInfo+7692
	movl	$0, _StagInfo+7748
	movl	$1464158550, _StagInfo+7752
	movl	$1447382111, _StagInfo+7756
	movl	$3492933, _StagInfo+7760
	movl	$0, _StagInfo+7816
	movl	$1464158550, _StagInfo+7820
	movl	$1447382111, _StagInfo+7824
	movl	$3558469, _StagInfo+7828
	movl	$0, _StagInfo+7884
	movw	%cx, _StagInfo+8984
	movl	$1347641157, _StagInfo+9048
	movl	$1347641156, _StagInfo+9116
	movl	$1465864019, _StagInfo+8840
	movl	$1598835777, _StagInfo+8844
	movl	$1414418244, _StagInfo+8848
	movl	$1448037727, _StagInfo+8852
	movl	$1347772229, _StagInfo+8856
	movl	$5391696, _StagInfo+8860
	movl	$-2147483648, _StagInfo+8904
	movl	$1465864019, _StagInfo+8908
	movl	$1598835777, _StagInfo+8912
	movl	$1414418244, _StagInfo+8916
	movl	$1448037727, _StagInfo+8920
	movl	$1330405189, _StagInfo+8924
	movl	$5391703, _StagInfo+8928
	movl	$-2147483648, _StagInfo+8972
	movl	$1095062082, _StagInfo+8976
	movl	$1279410507, _StagInfo+8980
	movl	$-2147483648, _StagInfo+9040
	movl	$1262572881, _StagInfo+9044
	movl	$5525328, _StagInfo+9051
	movl	$-2147483648, _StagInfo+9108
	movl	$1314213715, _StagInfo+9112
	movl	$5525328, _StagInfo+9119
	movl	$-2147483648, _StagInfo+9176
	movl	$1145654355, _StagInfo+9180
	movl	$1163091781, _StagInfo+9184
	movl	$1380930627, _StagInfo+9188
	movb	$0, _StagInfo+9192
	movl	$0, _StagInfo+9244
	movl	$1279870275, _StagInfo+9248
	movl	$1598508617, _StagInfo+9252
	movw	%ax, _StagInfo+9600
	movl	$82, %eax
	movl	$1230131781, _StagInfo+9268
	movl	$1413694803, _StagInfo+9528
	movl	$1447645279, _StagInfo+9804
	movl	$1330596934, _StagInfo+9256
	movl	$1230004050, _StagInfo+9260
	movl	$1448042307, _StagInfo+9264
	movl	$4539465, _StagInfo+9271
	movl	$0, _StagInfo+9312
	movl	$1195987540, _StagInfo+9520
	movl	$1599227207, _StagInfo+9524
	movl	$5394260, _StagInfo+9531
	movl	$-2147483648, _StagInfo+9584
	movl	$1162626372, _StagInfo+9588
	movl	$1398752596, _StagInfo+9592
	movl	$1414091344, _StagInfo+9596
	movl	$-2147483648, _StagInfo+9652
	movl	$1413694803, _StagInfo+9724
	movl	$1414484575, _StagInfo+9728
	movl	$1380930625, _StagInfo+9732
	movb	$0, _StagInfo+9736
	movl	$-2147483648, _StagInfo+9788
	movl	$1413694803, _StagInfo+9792
	movl	$1414484575, _StagInfo+9796
	movl	$1380930625, _StagInfo+9800
	movl	$5525334, _StagInfo+9807
	movl	$-2147483648, _StagInfo+9856
	movl	$1413694803, _StagInfo+9860
	movl	$1229738847, _StagInfo+9864
	movl	$5394244, _StagInfo+9868
	movl	$-2147483648, _StagInfo+9924
	movl	$1413694803, _StagInfo+9928
	movl	$1095254879, _StagInfo+9932
	movw	%ax, _StagInfo+13616
	movl	$82, %eax
	movl	$1381258305, _StagInfo+10008
	movl	$1380927310, _StagInfo+9936
	movb	$0, _StagInfo+9940
	movl	$-2147483648, _StagInfo+9992
	movl	$1147096915, _StagInfo+9996
	movl	$1096173906, _StagInfo+10000
	movl	$1598377026, _StagInfo+10004
	movl	$4344146, _StagInfo+10011
	movl	$0, _StagInfo+10060
	movl	$1280065879, _StagInfo+10064
	movl	$1313817695, _StagInfo+10068
	movl	$1414750036, _StagInfo+10072
	movl	$4932425, _StagInfo+10076
	movl	$0, _StagInfo+10128
	movl	$1463898195, _StagInfo+10132
	movl	$1414094670, _StagInfo+10136
	movl	$5459269, _StagInfo+10140
	movl	$0, _StagInfo+10196
	movl	$1347376211, _StagInfo+10200
	movl	$1431262047, _StagInfo+10204
	movl	$1398752334, _StagInfo+10208
	movl	$5525328, _StagInfo+10212
	movl	$0, _StagInfo+10264
	movl	$1314213698, _StagInfo+13600
	movl	$1279680324, _StagInfo+13604
	movl	$1599229775, _StagInfo+13608
	movl	$1162891349, _StagInfo+13612
	movl	$0, _StagInfo+13664
	movl	$1314213698, _StagInfo+13668
	movl	$1279680324, _StagInfo+13672
	movl	$1599229775, _StagInfo+13676
	movl	$1163349836, _StagInfo+13680
	movw	%ax, _StagInfo+13684
	movl	$65, %eax
	movl	$1397114447, _StagInfo+13816
	movl	$0, _StagInfo+13732
	movl	$1314213698, _StagInfo+13736
	movl	$1279680324, _StagInfo+13740
	movl	$1599229775, _StagInfo+13744
	movl	$1163084098, _StagInfo+13748
	movl	$1179012959, _StagInfo+13752
	movl	$5522771, _StagInfo+13756
	movl	$0, _StagInfo+13800
	movl	$1314213698, _StagInfo+13804
	movl	$1279680324, _StagInfo+13808
	movl	$1599229775, _StagInfo+13812
	movl	$5522771, _StagInfo+13819
	movl	$0, _StagInfo+13868
	movl	$1314213698, _StagInfo+34000
	movl	$1330863940, _StagInfo+34004
	movl	$1347442015, _StagInfo+34008
	movl	$3166789, _StagInfo+34012
	movl	$0, _StagInfo+34064
	movl	$1314213698, _StagInfo+34068
	movl	$1330863940, _StagInfo+34072
	movl	$1464814687, _StagInfo+34076
	movl	$3166789, _StagInfo+34080
	movl	$0, _StagInfo+34132
	movl	$1314213698, _StagInfo+34340
	movl	$1330863940, _StagInfo+34344
	movl	$1347442015, _StagInfo+34348
	movl	$3232325, _StagInfo+34352
	movl	$0, _StagInfo+34404
	movl	$1314213698, _StagInfo+34408
	movl	$1330863940, _StagInfo+34412
	movl	$1464814687, _StagInfo+34416
	movl	$3232325, _StagInfo+34420
	movl	$0, _StagInfo+34472
	movl	$1314213698, _StagInfo+34680
	movl	$1330863940, _StagInfo+34684
	movl	$1347442015, _StagInfo+34688
	movl	$3297861, _StagInfo+34692
	movl	$0, _StagInfo+34744
	movl	$1314213698, _StagInfo+34748
	movl	$1330863940, _StagInfo+34752
	movl	$1464814687, _StagInfo+34756
	movl	$3297861, _StagInfo+34760
	movl	$0, _StagInfo+34812
	movl	$1314213698, _StagInfo+35020
	movl	$1330863940, _StagInfo+35024
	movl	$1347442015, _StagInfo+35028
	movl	$3363397, _StagInfo+35032
	movl	$0, _StagInfo+35084
	movl	$1314213698, _StagInfo+35088
	movl	$1330863940, _StagInfo+35092
	movl	$1464814687, _StagInfo+35096
	movl	$3363397, _StagInfo+35100
	movl	$0, _StagInfo+35152
	movl	$1314213698, _StagInfo+35360
	movl	$1330863940, _StagInfo+35364
	movl	$1347442015, _StagInfo+35368
	movl	$3428933, _StagInfo+35372
	movl	$0, _StagInfo+35424
	movl	$1314213698, _StagInfo+35428
	movl	$1330863940, _StagInfo+35432
	movl	$1464814687, _StagInfo+35436
	movl	$3428933, _StagInfo+35440
	movl	$0, _StagInfo+35492
	movl	$1314213698, _StagInfo+35700
	movl	$1330863940, _StagInfo+35704
	movl	$1347442015, _StagInfo+35708
	movl	$3494469, _StagInfo+35712
	movl	$0, _StagInfo+35764
	movl	$1314213698, _StagInfo+35768
	movl	$1330863940, _StagInfo+35772
	movl	$1464814687, _StagInfo+35776
	movl	$3494469, _StagInfo+35780
	movl	$0, _StagInfo+35832
	movl	$1314213698, _StagInfo+36040
	movl	$1330863940, _StagInfo+36044
	movl	$1347442015, _StagInfo+36048
	movl	$3560005, _StagInfo+36052
	movl	$0, _StagInfo+36104
	movl	$1314213698, _StagInfo+36108
	movl	$1330863940, _StagInfo+36112
	movl	$1464814687, _StagInfo+36116
	movl	$3560005, _StagInfo+36120
	movl	$0, _StagInfo+36172
	movl	$1314213698, _StagInfo+36380
	movl	$1330863940, _StagInfo+36384
	movl	$1347442015, _StagInfo+36388
	movl	$3625541, _StagInfo+36392
	movl	$0, _StagInfo+36444
	movl	$1314213698, _StagInfo+36448
	movl	$1330863940, _StagInfo+36452
	movl	$1464814687, _StagInfo+36456
	movl	$3625541, _StagInfo+36460
	movl	$0, _StagInfo+36512
	movl	$1314213698, _StagInfo+36720
	movl	$1330863940, _StagInfo+36724
	movl	$1347442015, _StagInfo+36728
	movl	$3691077, _StagInfo+36732
	movl	$0, _StagInfo+36784
	movl	$1314213698, _StagInfo+36788
	movl	$1330863940, _StagInfo+36792
	movl	$1464814687, _StagInfo+36796
	movl	$3691077, _StagInfo+36800
	movl	$0, _StagInfo+36852
	movl	$1314213698, _StagInfo+37060
	movl	$1330863940, _StagInfo+37064
	movl	$1347442015, _StagInfo+37068
	movl	$3756613, _StagInfo+37072
	movl	$0, _StagInfo+37124
	movl	$1314213698, _StagInfo+37128
	movl	$1330863940, _StagInfo+37132
	movl	$1464814687, _StagInfo+37136
	movl	$3756613, _StagInfo+37140
	movl	$0, _StagInfo+37192
	movl	$1314213698, _StagInfo+37400
	movl	$1330863940, _StagInfo+37404
	movl	$1347442015, _StagInfo+37408
	movl	$808538693, _StagInfo+37412
	movb	$0, _StagInfo+37416
	movl	$0, _StagInfo+37464
	movl	$1314213698, _StagInfo+37468
	movl	$1330863940, _StagInfo+37472
	movl	$1464814687, _StagInfo+37476
	movl	$808538693, _StagInfo+37480
	movb	$0, _StagInfo+37484
	movl	$0, _StagInfo+37532
	movl	$1314213698, _StagInfo+37740
	movl	$1330863940, _StagInfo+37744
	movl	$1347442015, _StagInfo+37748
	movl	$825315909, _StagInfo+37752
	movb	$0, _StagInfo+37756
	movl	$0, _StagInfo+37804
	movl	$1314213698, _StagInfo+37808
	movl	$1330863940, _StagInfo+37812
	movl	$1464814687, _StagInfo+37816
	movl	$825315909, _StagInfo+37820
	movb	$0, _StagInfo+37824
	movl	$0, _StagInfo+37872
	movl	$1314213698, _StagInfo+38080
	movl	$1330863940, _StagInfo+38084
	movl	$1347442015, _StagInfo+38088
	movl	$842093125, _StagInfo+38092
	movb	$0, _StagInfo+38096
	movl	$0, _StagInfo+38144
	movl	$1314213698, _StagInfo+38148
	movl	$1330863940, _StagInfo+38152
	movl	$1464814687, _StagInfo+38156
	movl	$842093125, _StagInfo+38160
	movb	$0, _StagInfo+38164
	movl	$0, _StagInfo+38212
	movl	$1314213698, _StagInfo+38420
	movl	$1330863940, _StagInfo+38424
	movl	$1347442015, _StagInfo+38428
	movl	$858870341, _StagInfo+38432
	movb	$0, _StagInfo+38436
	movl	$0, _StagInfo+38484
	movl	$1314213698, _StagInfo+38488
	movl	$1330863940, _StagInfo+38492
	movl	$1464814687, _StagInfo+38496
	movl	$858870341, _StagInfo+38500
	movb	$0, _StagInfo+38504
	movl	$0, _StagInfo+38552
	movl	$1314213698, _StagInfo+38760
	movl	$1330863940, _StagInfo+38764
	movl	$1347442015, _StagInfo+38768
	movl	$875647557, _StagInfo+38772
	movb	$0, _StagInfo+38776
	movl	$0, _StagInfo+38824
	movl	$1314213698, _StagInfo+38828
	movl	$1330863940, _StagInfo+38832
	movl	$1464814687, _StagInfo+38836
	movl	$875647557, _StagInfo+38840
	movb	$0, _StagInfo+38844
	movl	$0, _StagInfo+38892
	movl	$1314213698, _StagInfo+39100
	movl	$1330863940, _StagInfo+39104
	movl	$1347442015, _StagInfo+39108
	movl	$892424773, _StagInfo+39112
	movb	$0, _StagInfo+39116
	movl	$0, _StagInfo+39164
	movl	$1314213698, _StagInfo+39168
	movl	$1330863940, _StagInfo+39172
	movl	$1464814687, _StagInfo+39176
	movl	$892424773, _StagInfo+39180
	movb	$0, _StagInfo+39184
	movl	$0, _StagInfo+39232
	movl	$1314213698, _StagInfo+39440
	movl	$1330863940, _StagInfo+39444
	movl	$1347442015, _StagInfo+39448
	movl	$909201989, _StagInfo+39452
	movb	$0, _StagInfo+39456
	movl	$0, _StagInfo+39504
	movl	$1314213698, _StagInfo+39508
	movl	$1330863940, _StagInfo+39512
	movl	$1464814687, _StagInfo+39516
	movl	$909201989, _StagInfo+39520
	movb	$0, _StagInfo+39524
	movl	$0, _StagInfo+39572
	movl	$1314213698, _StagInfo+39780
	movl	$1330863940, _StagInfo+39784
	movl	$1347442015, _StagInfo+39788
	movl	$925979205, _StagInfo+39792
	movb	$0, _StagInfo+39796
	movl	$0, _StagInfo+39844
	movl	$1314213698, _StagInfo+39848
	movl	$1330863940, _StagInfo+39852
	movl	$1464814687, _StagInfo+39856
	movl	$925979205, _StagInfo+39860
	movb	$0, _StagInfo+39864
	movl	$0, _StagInfo+39912
	movl	$1314213698, _StagInfo+40120
	movl	$1330863940, _StagInfo+40124
	movl	$1347442015, _StagInfo+40128
	movl	$942756421, _StagInfo+40132
	movb	$0, _StagInfo+40136
	movl	$0, _StagInfo+40184
	movl	$1314213698, _StagInfo+40188
	movl	$1330863940, _StagInfo+40192
	movl	$1464814687, _StagInfo+40196
	movl	$942756421, _StagInfo+40200
	movb	$0, _StagInfo+40204
	movl	$0, _StagInfo+40252
	movl	$1314213698, _StagInfo+40460
	movl	$1330863940, _StagInfo+40464
	movl	$1347442015, _StagInfo+40468
	movl	$959533637, _StagInfo+40472
	movb	$0, _StagInfo+40476
	movl	$0, _StagInfo+40524
	movl	$1314213698, _StagInfo+40528
	movl	$1330863940, _StagInfo+40532
	movw	%ax, _StagInfo+68008
	movl	$1413567045, _StagInfo+68416
	movl	$1464814687, _StagInfo+40536
	movl	$959533637, _StagInfo+40540
	movb	$0, _StagInfo+40544
	movl	$0, _StagInfo+40592
	movl	$1130321492, _StagInfo+68000
	movl	$1380273473, _StagInfo+68004
	movl	$0, _StagInfo+68064
	movl	$1229081921, _StagInfo+68136
	movl	$5525061, _StagInfo+68140
	movl	$0, _StagInfo+68200
	movl	$1330135877, _StagInfo+68340
	movl	$1414484051, _StagInfo+68344
	movb	$0, _StagInfo+68348
	movl	$0, _StagInfo+68404
	movl	$1346982468, _StagInfo+68408
	movl	$1313163103, _StagInfo+68412
	movl	$5394260, _StagInfo+68419
	movl	$0, _StagInfo+68472
	call	__Z14SetSpriteExtrav
	movl	_sector, %eax
	movswl	38(%eax), %eax
	leal	-1(%eax), %edx
	cmpw	$16383, %dx
	movl	$2, %edx
	cmovnb	%edx, %eax
	movl	$-1, %edx
	movl	%eax, _g_visibility
	movswl	_numwalls, %eax
	movl	%eax, _loaded_numwalls
	movl	$13, %eax
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	jmp	__Z10VM_OnEventii
	.cfi_endproc
LFE101:
	.section .rdata,"dr"
LC75:
	.ascii "Loaded map hack file '%s'\0"
LC76:
	.ascii "No maphack found for map %s\0"
	.text
	.p2align 4
	.globl	__ZL7loadmhki.part.0.lto_priv.0
	.def	__ZL7loadmhki.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL7loadmhki.part.0.lto_priv.0:
LFB109:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$276, %esp
	.cfi_def_cfa_offset 288
	leal	20(%esp), %ebx
	movl	$__ZL13boardfilename.lto_priv.0, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcpy
	movl	$46, 4(%esp)
	movl	%ebx, (%esp)
	call	_strrchr
	testl	%eax, %eax
	je	L1520
	movl	$1802005806, (%eax)
	movb	$0, 4(%eax)
L1512:
	movl	%ebx, %eax
	call	_engineLoadMHK
	testl	%eax, %eax
	jne	L1513
	testl	%esi, %esi
	je	L1514
	movl	%ebx, 4(%esp)
	movl	$LC75, (%esp)
	call	_message
L1510:
	addl	$276, %esp
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
L1513:
	.cfi_restore_state
	movl	$2, __ZL3mhk.lto_priv.0
	testl	%esi, %esi
	je	L1510
	movl	$__ZL13boardfilename.lto_priv.0, 4(%esp)
	movl	$LC76, (%esp)
	call	_message
	addl	$276, %esp
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
L1514:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L1510
	movl	%ebx, 16(%esp)
	movl	$LC75, 12(%esp)
	movl	$991, 8(%esp)
	movl	$LC10, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	addl	$276, %esp
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
L1520:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	_strlen
	movl	$1802005806, (%ebx,%eax)
	movb	$0, 4(%ebx,%eax)
	jmp	L1512
	.cfi_endproc
LFE109:
	.section .rdata,"dr"
LC77:
	.ascii " w/tags\0"
LC79:
	.ascii "swvoxfil.txt\0"
LC80:
	.ascii "source/sw/src/bldscript.cpp\0"
LC81:
	.ascii "readsize == size\0"
	.align 4
LC82:
	.ascii "Assertion failed: %s %s, line %u\12\0"
	.align 4
LC83:
	.ascii "Ignoring %d bytes of unknown data appended to map file. Saving changes to this file will result in loss of this data.\0"
LC84:
	.ascii "source/build/src/engine.cpp\0"
LC85:
	.ascii "%d %40s\0"
LC86:
	.ascii "^14(removed %d sprites)\0"
LC87:
	.ascii "Loaded V%d map %s%s %s\0"
	.text
	.p2align 4
	.globl	_LoadBoard
	.def	_LoadBoard;	.scl	2;	.type	32;	.endef
_LoadBoard:
LFB111:
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
	xorl	%esi, %esi
	pushl	%ebx
	subl	$360, %esp
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	_pathsearchmode, %ebx
	movl	%edx, -328(%ebp)
	testl	%ebx, %ebx
	jne	L1522
	movl	_grponlymode, %ecx
	xorl	%edx, %edx
	testl	%ecx, %ecx
	setne	%dl
	leal	(%edx,%edx), %esi
L1522:
	testl	%eax, %eax
	movl	$__ZL21selectedboardfilename.lto_priv.0, %edx
	cmovne	%eax, %edx
	movl	$-2147483648, %eax
	movl	%eax, _editorzrange
	movl	$15, %eax
	movl	%edx, -324(%ebp)
	movl	$2147483647, %edx
	movl	%edx, _editorzrange+4
	movl	$-1, %edx
	call	__Z10VM_OnEventii
	call	__Z12ResetSpritesv
	movzbl	__ZL9kvxloaded, %ebx
	testb	%bl, %bl
	je	L1693
L1524:
	movl	-328(%ebp), %edx
	movl	%esi, %eax
	movl	$_pos, %ecx
	movb	%al, -332(%ebp)
	movl	$_cursectnum, 4(%esp)
	andl	$4, %edx
	movl	$_ang, (%esp)
	movl	-324(%ebp), %eax
	orl	%esi, %edx
	call	_engineLoadBoard
	movl	%eax, %edi
	cmpl	$-2, %eax
	je	L1694
L1541:
	testl	%edi, %edi
	js	L1521
	movl	-324(%ebp), %eax
	cmpl	$__ZL13boardfilename.lto_priv.0, %eax
	je	L1580
	movl	%eax, 4(%esp)
	movl	$__ZL13boardfilename.lto_priv.0, (%esp)
	call	_strcpy
L1580:
	movl	$0, _chsecptr_onextwall
	movl	$-1, %ebx
	movw	%bx, _highlightcnt
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_show2dwall, (%esp)
	call	_memset
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_show2dsprite, (%esp)
	call	_memset
	testb	$4, -328(%ebp)
	je	L1695
L1581:
	call	_taglab_init
	movl	$__ZL13boardfilename.lto_priv.0, (%esp)
	leal	-272(%ebp), %esi
	call	_strlen
	movl	%eax, %ebx
	cmpl	$255, %eax
	je	L1582
	movl	%eax, -320(%ebp)
	leal	1(%eax), %eax
	leal	-272(%ebp), %esi
	cmpl	$16, %eax
	jb	L1696
	movl	__ZL13boardfilename.lto_priv.0-16(%eax), %ecx
	movl	%ecx, -288(%ebp,%eax)
	movl	__ZL13boardfilename.lto_priv.0-12(%eax), %ecx
	movl	%ecx, -284(%ebp,%eax)
	movl	__ZL13boardfilename.lto_priv.0-8(%eax), %ecx
	movl	%ecx, -280(%ebp,%eax)
	movl	__ZL13boardfilename.lto_priv.0-4(%eax), %ecx
	movl	%ecx, -276(%ebp,%eax)
	cmpl	$16, %ebx
	jb	L1584
	movl	%ebx, %eax
	movl	%edi, -328(%ebp)
	movl	%ebx, -336(%ebp)
	andl	$-16, %eax
	movl	%eax, -324(%ebp)
	xorl	%eax, %eax
L1588:
	movl	__ZL13boardfilename.lto_priv.0+4(%eax), %edi
	movl	__ZL13boardfilename.lto_priv.0+8(%eax), %ecx
	movl	__ZL13boardfilename.lto_priv.0+12(%eax), %edx
	movl	__ZL13boardfilename.lto_priv.0(%eax), %ebx
	movl	%edi, 4(%esi,%eax)
	movl	%ebx, (%esi,%eax)
	movl	%ecx, 8(%esi,%eax)
	movl	%edx, 12(%esi,%eax)
	addl	$16, %eax
	cmpl	-324(%ebp), %eax
	jb	L1588
	movl	-328(%ebp), %edi
	movl	-336(%ebp), %ebx
L1584:
	movl	$46, 4(%esp)
	movl	%esi, (%esp)
	call	_strrchr
	testl	%eax, %eax
	je	L1590
	movl	%eax, %edx
	subl	%esi, %edx
	movl	%edx, -320(%ebp)
L1591:
	cmpl	$247, -320(%ebp)
	jg	L1582
	movl	$1885433134, (%eax)
	movzbl	-332(%ebp), %edx
	movl	$1936154996, 4(%eax)
	movb	$0, 8(%eax)
	movl	%esi, %eax
	call	_kopen4load.part.0
	movl	%eax, %ebx
	cmpl	$-1, %eax
	je	L1593
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	leal	1(%eax), %edx
	movl	%eax, -320(%ebp)
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -324(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -328(%ebp)
	testl	%eax, %eax
	je	L1697
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	%ebx, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-320(%ebp), %ecx
	movl	-328(%ebp), %edx
	call	__Z14kread_internaliPviPKhPKiPi
	movl	-328(%ebp), %eax
	movl	-320(%ebp), %ecx
	movb	$0, (%eax,%ecx)
	movl	%ebx, %eax
	call	_kclose
	leal	-312(%ebp), %eax
	movl	%edi, -324(%ebp)
	movl	-328(%ebp), %ebx
	movl	%eax, -320(%ebp)
	.p2align 4
	.p2align 3
L1608:
	movl	%esi, 12(%esp)
	movl	-320(%ebp), %eax
	movl	$LC85, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, (%esp)
	call	_sscanf
	cmpl	$2, %eax
	jne	L1595
	movzbl	-272(%ebp), %edx
	testb	%dl, %dl
	je	L1595
	movl	-312(%ebp), %ecx
	cmpl	$32767, %ecx
	jbe	L1698
L1595:
	movzbl	(%ebx), %eax
	testb	%al, %al
	jne	L1602
	jmp	L1687
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1604:
	movzbl	1(%ebx), %eax
	addl	$1, %ebx
	testb	%al, %al
	je	L1687
L1602:
	cmpb	$10, %al
	jne	L1604
	jmp	L1692
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1665:
	addl	$1, %ebx
L1692:
	movzbl	(%ebx), %eax
	cmpb	$13, %al
	je	L1665
	cmpb	$10, %al
	je	L1665
	testb	%al, %al
	jne	L1608
	.p2align 4
	.p2align 3
L1687:
	movl	-328(%ebp), %eax
	movl	-324(%ebp), %edi
	xorl	%ebx, %ebx
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1593:
	call	__ZL18editorEventLoadMapPKc.constprop.0
	call	_CheckMapCorruption.constprop.0
	cmpl	$5, %eax
	je	L1699
	cmpl	$4, %eax
	je	L1700
	testl	%edi, %edi
	jne	L1701
	subl	$1, %eax
	cmpl	$2, %eax
	jbe	L1702
	movl	$1667462515, -272(%ebp)
	movl	$1718842213, -268(%ebp)
	movl	$2037148789, -264(%ebp)
	movb	$0, -260(%ebp)
L1610:
	testl	%ebx, %ebx
	movl	$LC77, %edx
	movl	$LC41, %eax
	movl	%esi, 16(%esp)
	cmove	%edx, %eax
	movl	$__ZL13boardfilename.lto_priv.0, 8(%esp)
	xorl	%edi, %edi
	movl	%eax, 12(%esp)
	movl	_g_loadedMapVersion, %eax
	movl	$LC87, (%esp)
	movl	%eax, 4(%esp)
	call	_message
	call	_fixspritesectors.isra.0
	movl	_pos, %eax
	movl	%eax, _startpos
	movl	_pos+4, %eax
	movl	%eax, _startpos+4
	movl	_pos+8, %eax
	movl	%eax, _startpos+8
	movzwl	_ang, %eax
	movw	%ax, _startang
	movzwl	_cursectnum, %eax
	movw	%ax, _startsectnum
	xorl	%eax, %eax
	movw	%ax, _asksave
L1521:
	leal	-12(%ebp), %esp
	movl	%edi, %eax
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
L1695:
	.cfi_restore_state
	movl	__ZL3mhk.lto_priv.0, %ecx
	testl	%ecx, %ecx
	je	L1581
	xorl	%eax, %eax
	call	__ZL7loadmhki.part.0.lto_priv.0
	jmp	L1581
L1696:
	testb	$8, %al
	jne	L1703
	testb	$4, %al
	jne	L1704
	testl	%eax, %eax
	je	L1584
	movzbl	__ZL13boardfilename.lto_priv.0, %ecx
	movb	%cl, -272(%ebp)
	testb	$2, %al
	je	L1584
	movzwl	__ZL13boardfilename.lto_priv.0-2(%eax), %ecx
	movw	%cx, -274(%ebp,%eax)
	jmp	L1584
	.p2align 4,,10
	.p2align 3
L1698:
	movb	%dl, -340(%ebp)
	movl	%esi, %edi
	movl	%ecx, -336(%ebp)
	movb	$0, -233(%ebp)
	movl	%esi, (%esp)
	movl	%ebx, %esi
	movl	%edi, %ebx
	call	_strlen
	movzbl	-340(%ebp), %edx
	movl	%eax, -332(%ebp)
	jmp	L1596
	.p2align 4,,10
	.p2align 3
L1598:
	movzbl	1(%ebx), %edx
	addl	$1, %ebx
	testb	%dl, %dl
	je	L1597
L1596:
	movl	%edx, (%esp)
	call	*__imp__isspace
	testl	%eax, %eax
	jne	L1598
L1597:
	movl	%edi, %eax
	movl	%ebx, %edi
	movl	%esi, %ebx
	movl	-336(%ebp), %ecx
	movl	%eax, %esi
	movl	-332(%ebp), %eax
	leal	-1(%esi,%eax), %edx
	cmpl	%edx, %esi
	jnb	L1705
	movl	%ebx, -336(%ebp)
	movl	%edx, %ebx
	movl	%ecx, -332(%ebp)
	jmp	L1599
	.p2align 4,,10
	.p2align 3
L1601:
	leal	-1(%ebx), %eax
	cmpl	%esi, %eax
	je	L1686
	movl	%eax, %ebx
L1599:
	movzbl	(%ebx), %eax
	movl	%eax, (%esp)
	call	*__imp__isspace
	testl	%eax, %eax
	jne	L1601
	movl	%ebx, %eax
	leal	1(%ebx), %edx
	movl	-332(%ebp), %ecx
	movl	-336(%ebp), %ebx
L1600:
	cmpl	%edx, %edi
	jnb	L1595
	movb	$0, 1(%eax)
	movswl	%cx, %edx
	movl	%edi, %eax
	call	_taglab_add
	jmp	L1595
L1693:
	movl	$256, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1525
	movl	$122880, 8(%esp)
	movl	$-1, 4(%esp)
	movl	$_aVoxelArray, (%esp)
	call	_memset
	xorl	%edx, %edx
	movl	$LC79, %eax
	call	_kopen4load.part.0
	cmpl	$-1, %eax
	je	L1526
	movl	%eax, -332(%ebp)
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	movl	%eax, -320(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1527
	movl	%eax, _scriptbuffer
	movl	%eax, %edx
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-320(%ebp), %ecx
	movl	-332(%ebp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	movl	%eax, -336(%ebp)
	movl	-332(%ebp), %eax
	call	_kclose
	movl	-336(%ebp), %eax
	cmpl	%eax, -320(%ebp)
	je	L1679
	movl	$109, 16(%esp)
	movl	$LC80, 12(%esp)
	movl	$LC81, 8(%esp)
	movl	$LC82, 4(%esp)
	movl	$_ds, (%esp)
	call	_printf
	movl	$0, (%esp)
	call	_exit
L1686:
	movl	%ebx, %edx
	movl	-332(%ebp), %ecx
	movl	-336(%ebp), %ebx
	jmp	L1600
L1702:
	movl	$674509150, -272(%ebp)
	movl	$1701080941, -268(%ebp)
	movl	$1702125938, -264(%ebp)
	movl	$1919902496, -260(%ebp)
	movl	$1953527154, -256(%ebp)
	movl	$695103337, -252(%ebp)
	movb	$0, -248(%ebp)
	jmp	L1610
L1533:
	movl	_scriptbuffer, %eax
	movl	-320(%ebp), %esi
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, _script_p
L1526:
	movb	$1, __ZL9kvxloaded
	jmp	L1524
L1590:
	leal	(%esi,%ebx), %eax
	jmp	L1591
L1694:
	movl	%esi, %eax
	movzbl	%al, %edx
	movl	-324(%ebp), %eax
	call	_kopen4load.part.0
	movl	%eax, -336(%ebp)
	cmpl	$-1, %eax
	je	L1706
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$4, %ecx
	movl	$_mapversion, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-336(%ebp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$4, %eax
	jne	L1544
	movl	_mapversion, %eax
	subl	$5, %eax
	cmpl	$1, %eax
	ja	L1707
	movl	$_cursectnum, (%esp)
	movl	-336(%ebp), %edi
	movl	$_ang, %ecx
	movl	$_pos, %edx
	movl	%edi, %eax
	call	__ZL22enginePrepareLoadBoardiP4vec3IiEPsS2_.lto_priv.0
	movl	%eax, -340(%ebp)
	testl	%eax, %eax
	jne	L1544
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$2, %ecx
	movl	$_numsectors, %edx
	movl	%edi, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$2, %eax
	jne	L1544
	movswl	_numsectors, %edx
	movl	%edx, %eax
	cmpl	$4096, %edx
	ja	L1544
	movl	_mapversion, %edx
	cmpl	$5, %edx
	je	L1547
	cmpl	$6, %edx
	je	L1708
L1548:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$2, %ecx
	movl	$_numwalls, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-336(%ebp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$2, %eax
	jne	L1544
	movswl	_numwalls, %ebx
	movl	%ebx, %edi
	cmpl	$16384, %ebx
	ja	L1544
	movswl	_numsectors, %eax
	testw	%ax, %ax
	jle	L1555
	movl	%eax, -320(%ebp)
	xorl	%ecx, %ecx
	movl	_sector, %eax
	movw	%bx, -344(%ebp)
	jmp	L1556
L1710:
	movl	%ebx, %edi
	movswl	2(%eax), %esi
	subl	%edx, %edi
	cmpl	%esi, %edi
	jb	L1544
	addl	$1, %ecx
	addl	$40, %eax
	cmpl	%ecx, -320(%ebp)
	je	L1709
L1556:
	movswl	(%eax), %edx
	cmpl	%edx, %ebx
	jnb	L1710
L1544:
	xorl	%eax, %eax
	movl	$-1, %edi
	movw	%ax, _numsectors
	xorl	%eax, %eax
	movw	%ax, _numwalls
	movl	-336(%ebp), %eax
	call	_kclose
	leal	-12(%ebp), %esp
	movl	%edi, %eax
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
L1679:
	.cfi_restore_state
	movl	_scriptbuffer, %eax
	movb	$0, _endofscript
	movl	$1, _scriptline
	movl	%eax, _script_p
	addl	-320(%ebp), %eax
	movl	%eax, _scriptend_p
	movb	$0, _tokenready
	movl	%esi, -320(%ebp)
	jmp	L1530
	.p2align 4,,10
	.p2align 3
L1531:
	movl	$1, %eax
	call	__Z8GetTokenh.part.0
L1532:
	cmpb	$0, _endofscript
	jne	L1533
	movl	$_token, (%esp)
	call	_atol
	movl	%eax, %esi
	cmpb	$0, _tokenready
	jne	L1711
	xorl	%eax, %eax
	call	__Z8GetTokenh.part.0
L1535:
	movl	$_token, (%esp)
	call	_atol
	movl	%eax, %ebx
	cmpb	$0, _tokenready
	jne	L1712
	xorl	%eax, %eax
	call	__Z8GetTokenh.part.0
L1537:
	movl	$_token, 4(%esp)
	movl	%edi, (%esp)
	call	_strcpy
	movl	%edi, %edx
	movl	%ebx, %eax
	call	_qloadkvx
	testl	%eax, %eax
	jne	L1538
	movl	%ebx, _aVoxelArray(,%esi,4)
L1538:
	cmpl	_nextvoxid, %ebx
	jl	L1539
	addl	$1, %ebx
	movl	%ebx, _nextvoxid
L1539:
	movl	_scriptend_p, %eax
	cmpl	%eax, _script_p
	jnb	L1533
	movzbl	_tokenready, %ebx
L1530:
	testb	%bl, %bl
	je	L1531
	movb	$0, _tokenready
	jmp	L1532
L1712:
	movb	$0, _tokenready
	jmp	L1537
L1711:
	movb	$0, _tokenready
	jmp	L1535
L1701:
	movl	%edi, 8(%esp)
	movl	$LC86, 4(%esp)
	movl	%esi, (%esp)
	call	_sprintf
	jmp	L1610
L1699:
	movl	$674378078, -272(%ebp)
	movl	$1381259333, -268(%ebp)
	movl	$541412677, -264(%ebp)
	movl	$1920102243, -260(%ebp)
	movl	$1769238645, -256(%ebp)
	movl	$2715247, -252(%ebp)
	jmp	L1610
L1700:
	movl	$674378078, -272(%ebp)
	movl	$41, %edx
	movl	$1447118152, -268(%ebp)
	movl	$1868767321, -264(%ebp)
	movl	$1886745202, -260(%ebp)
	movl	$1852795252, -256(%ebp)
	movw	%dx, -252(%ebp)
	jmp	L1610
L1697:
	movl	-324(%ebp), %eax
	call	__Z13handle_memerri
L1708:
	movl	-336(%ebp), %edi
	xorl	%ebx, %ebx
	testw	%ax, %ax
	jne	L1549
	jmp	L1548
	.p2align 4,,10
	.p2align 3
L1713:
	movl	_sector, %eax
	leal	(%ebx,%ebx,4), %edx
	addl	$1, %ebx
	leal	(%eax,%edx,8), %edx
	leal	-272(%ebp), %eax
	call	__ZL15convertv6sectv7P12sectortypev6P12sectortypev7.lto_priv.0
	movswl	_numsectors, %eax
	cmpl	%eax, %ebx
	jge	L1548
L1549:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$37, %ecx
	leal	-272(%ebp), %edx
	movl	%edi, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$37, %eax
	je	L1713
	jmp	L1544
L1547:
	testw	%ax, %ax
	je	L1548
	movl	-336(%ebp), %edi
	xorl	%ebx, %ebx
	jmp	L1553
L1714:
	movl	-312(%ebp), %eax
	movlps	-308(%ebp), %xmm1
	leal	(%ebx,%ebx,4), %edx
	addl	$1, %ebx
	movlps	-300(%ebp), %xmm2
	movl	%eax, -272(%ebp)
	movl	-292(%ebp), %eax
	movlps	%xmm1, -268(%ebp)
	movl	%eax, -252(%ebp)
	movl	-288(%ebp), %eax
	movlps	%xmm2, -260(%ebp)
	movl	%eax, -248(%ebp)
	movl	-284(%ebp), %eax
	movl	%eax, -244(%ebp)
	movl	-280(%ebp), %eax
	movl	%eax, -240(%ebp)
	movzbl	-276(%ebp), %eax
	movb	%al, -236(%ebp)
	movl	_sector, %eax
	leal	(%eax,%edx,8), %edx
	leal	-272(%ebp), %eax
	call	__ZL15convertv6sectv7P12sectortypev6P12sectortypev7.lto_priv.0
	movswl	_numsectors, %eax
	cmpl	%eax, %ebx
	jge	L1548
L1553:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$37, %ecx
	leal	-312(%ebp), %edx
	movl	%edi, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$37, %eax
	je	L1714
	jmp	L1544
L1525:
	movl	$256, %eax
	call	__Z13handle_memerri
L1703:
	movl	__ZL13boardfilename.lto_priv.0, %edx
	movl	__ZL13boardfilename.lto_priv.0+4, %ecx
	movl	%edx, -272(%ebp)
	movl	%ecx, -268(%ebp)
	movl	__ZL13boardfilename.lto_priv.0-8(%eax), %edx
	movl	__ZL13boardfilename.lto_priv.0-4(%eax), %ecx
	movl	%edx, -280(%ebp,%eax)
	movl	%ecx, -276(%ebp,%eax)
	jmp	L1584
L1709:
	movzwl	-344(%ebp), %edi
L1555:
	movl	_mapversion, %eax
	cmpl	$5, %eax
	je	L1557
	cmpl	$6, %eax
	jne	L1558
	xorl	%ebx, %ebx
	testw	%di, %di
	jne	L1559
	jmp	L1558
	.p2align 4,,10
	.p2align 3
L1715:
	movl	%ebx, %edx
	leal	-272(%ebp), %eax
	addl	$1, %ebx
	sall	$5, %edx
	addl	_wall, %edx
	call	__ZL15convertv6wallv7P10walltypev6P10walltypev7.lto_priv.0
	movswl	_numwalls, %eax
	cmpl	%eax, %ebx
	jge	L1558
L1559:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$32, %ecx
	leal	-272(%ebp), %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-336(%ebp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$32, %eax
	je	L1715
	jmp	L1544
L1582:
	movl	$-1, %ebx
	jmp	L1593
L1704:
	movl	__ZL13boardfilename.lto_priv.0, %ecx
	movl	%ecx, -272(%ebp)
	movl	__ZL13boardfilename.lto_priv.0-4(%eax), %ecx
	movl	%ecx, -276(%ebp,%eax)
	jmp	L1584
L1705:
	movl	%edx, %eax
	movl	-332(%ebp), %edx
	addl	%esi, %edx
	jmp	L1600
L1527:
	movl	-320(%ebp), %eax
	call	__Z13handle_memerri
L1717:
	movl	-320(%ebp), %ecx
L1563:
	leal	-40(%ecx), %ebx
L1564:
	movzbl	29(%ebx), %eax
	movl	%edi, %edx
	addl	$1, %edi
	sall	$5, %edx
	addl	_wall, %edx
	movb	%al, -293(%ebp)
	movl	-257(%ebp), %eax
	movl	%eax, -292(%ebp)
	movzwl	-253(%ebp), %eax
	movw	%ax, -288(%ebp)
	movzwl	-243(%ebp), %eax
	movw	%ax, -286(%ebp)
	movl	-241(%ebp), %eax
	movl	%eax, -284(%ebp)
	leal	-312(%ebp), %eax
	call	__ZL15convertv6wallv7P10walltypev6P10walltypev7.lto_priv.0
	movswl	_numwalls, %eax
	cmpl	%eax, %edi
	jl	L1567
L1558:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	leal	-314(%ebp), %edx
	movl	$2, %ecx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-336(%ebp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$2, %eax
	jne	L1544
	movswl	-314(%ebp), %edx
	movl	%edx, %eax
	cmpl	$16384, %edx
	ja	L1544
	movl	_mapversion, %edx
	cmpl	$5, %edx
	je	L1569
	cmpl	$6, %edx
	jne	L1570
	movl	-340(%ebp), %edi
	xorl	%ebx, %ebx
	testw	%ax, %ax
	jne	L1571
	jmp	L1570
	.p2align 4,,10
	.p2align 3
L1716:
	movl	_sprite, %edx
	leal	-272(%ebp), %eax
	addl	%ebx, %edx
	addl	$44, %ebx
	call	__ZL14convertv6sprv7P12spritetypev6P12spritetypev7.lto_priv.0
	movl	%edi, %eax
	addl	$1, %edi
	call	__ZL12check_spritei.lto_priv.0
	movswl	-314(%ebp), %eax
	cmpl	%eax, %edi
	jge	L1570
L1571:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$43, %ecx
	leal	-272(%ebp), %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-336(%ebp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$43, %eax
	je	L1716
	jmp	L1544
L1557:
	testw	%di, %di
	je	L1558
	leal	-272(%ebp), %esi
	xorl	%edi, %edi
	movl	%esi, -348(%ebp)
L1567:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$35, %ecx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-348(%ebp), %edx
	movl	-336(%ebp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$35, %eax
	jne	L1544
	movzwl	-251(%ebp), %eax
	movzwl	-264(%ebp), %edx
	movlps	-272(%ebp), %xmm3
	movl	_sector, %ecx
	sall	$16, %eax
	orl	%edx, %eax
	movzwl	-249(%ebp), %edx
	movlps	%xmm3, -312(%ebp)
	movl	%eax, -320(%ebp)
	movzwl	-262(%ebp), %eax
	movss	-320(%ebp), %xmm0
	sall	$16, %eax
	orl	%edx, %eax
	movswl	_numsectors, %edx
	movl	%eax, -344(%ebp)
	movzwl	-260(%ebp), %eax
	movss	-344(%ebp), %xmm4
	movw	%ax, -296(%ebp)
	movzbl	-258(%ebp), %eax
	unpcklps	%xmm4, %xmm0
	movb	%al, -294(%ebp)
	movlps	%xmm0, -304(%ebp)
	testw	%dx, %dx
	jle	L1563
	leal	(%edx,%edx,4), %edx
	movl	%ecx, -320(%ebp)
	movl	%ecx, %eax
	leal	(%ecx,%edx,8), %esi
	jmp	L1566
L1621:
	addl	$40, %eax
	cmpl	%eax, %esi
	je	L1717
L1566:
	movzwl	(%eax), %ecx
	movzwl	2(%eax), %edx
	movl	%eax, %ebx
	addl	%ecx, %edx
	subl	$1, %edx
	cmpw	%di, %dx
	jl	L1621
	cmpw	%di, %cx
	jg	L1621
	jmp	L1564
L1570:
	movl	-336(%ebp), %edi
	movl	%edi, %eax
	call	_ktell
	movl	%eax, %ebx
	movl	%edi, %eax
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	cmpl	%eax, %ebx
	je	L1579
	movl	__ZN6loguru18g_stderr_verbosityE, %ecx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %ecx
	cmovl	%edx, %ecx
	cmpl	$-1, %ecx
	jl	L1579
	subl	%ebx, %eax
	movl	$LC83, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$11576, 8(%esp)
	movl	$LC84, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L1579:
	movl	-336(%ebp), %eax
	call	_kclose
	movl	_mapversion, %eax
	movl	$_cursectnum, %edx
	movswl	-314(%ebp), %ecx
	movl	%eax, _g_loadedMapVersion
	movl	$_pos, %eax
	movl	$0, (%esp)
	call	__ZL21engineFinishLoadBoardPK4vec3IiEPssc.lto_priv.0
	movl	%eax, %edi
	jmp	L1541
L1569:
	testw	%ax, %ax
	je	L1570
	leal	-312(%ebp), %eax
	movl	-340(%ebp), %esi
	xorl	%ebx, %ebx
	movl	%eax, -320(%ebp)
	jmp	L1577
L1718:
	movzbl	21(%eax), %eax
L1576:
	movb	%al, -257(%ebp)
	movzwl	-298(%ebp), %eax
	xorl	%edi, %edi
	movw	%dx, -239(%ebp)
	movl	_sprite, %edx
	movw	%ax, -255(%ebp)
	movl	-296(%ebp), %eax
	addl	%ebx, %edx
	movb	$32, -256(%ebp)
	addl	$44, %ebx
	movl	%eax, -251(%ebp)
	movl	-292(%ebp), %eax
	movw	%di, -253(%ebp)
	movl	%eax, -247(%ebp)
	movl	-288(%ebp), %eax
	movl	%eax, -243(%ebp)
	movl	-282(%ebp), %eax
	movl	%eax, -237(%ebp)
	movl	-278(%ebp), %eax
	movl	%eax, -233(%ebp)
	leal	-272(%ebp), %eax
	call	__ZL14convertv6sprv7P12spritetypev6P12spritetypev7.lto_priv.0
	movl	%esi, %eax
	addl	$1, %esi
	call	__ZL12check_spritei.lto_priv.0
	movswl	-314(%ebp), %eax
	cmpl	%eax, %esi
	jge	L1570
L1577:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$38, %ecx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-320(%ebp), %edx
	movl	-336(%ebp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$38, %eax
	jne	L1544
	movl	-304(%ebp), %eax
	movlps	-312(%ebp), %xmm5
	movl	%eax, -264(%ebp)
	movzbl	-300(%ebp), %eax
	movlps	%xmm5, -272(%ebp)
	movw	%ax, -260(%ebp)
	movzbl	-299(%ebp), %eax
	movb	%al, -258(%ebp)
	movswl	-284(%ebp), %eax
	leal	(%eax,%eax,4), %ecx
	movl	%eax, %edx
	movl	_sector, %eax
	leal	(%eax,%ecx,8), %eax
	testb	$1, 12(%eax)
	jne	L1718
	movzbl	29(%eax), %eax
	jmp	L1576
L1707:
	movl	-336(%ebp), %eax
	call	_kclose
	jmp	L1521
L1706:
	movl	$5, _mapversion
	movl	$-1, %edi
	jmp	L1521
	.cfi_endproc
LFE111:
	.section .rdata,"dr"
LC88:
	.ascii "_crash.map\0"
	.text
	.p2align 4
	.globl	_app_crashhandler.part.0
	.def	_app_crashhandler.part.0;	.scl	2;	.type	32;	.endef
_app_crashhandler.part.0:
LFB134:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	$46, 4(%esp)
	movl	$_levelname, (%esp)
	call	_strrchr
	testl	%eax, %eax
	je	L1723
	movl	$1831757939, 4(%eax)
	movl	$1634886495, (%eax)
	movl	$7364973, 7(%eax)
L1721:
	movl	$1, %edx
	movl	$_levelname, %eax
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	jmp	_SaveBoard
L1723:
	.cfi_restore_state
	movl	$LC88, 4(%esp)
	movl	$_levelname, (%esp)
	call	_strcat
	jmp	L1721
	.cfi_endproc
LFE134:
	.p2align 4
	.globl	__ZL26handle_sprite_in_clipboardi.part.0.lto_priv.0
	.def	__ZL26handle_sprite_in_clipboardi.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL26handle_sprite_in_clipboardi.part.0.lto_priv.0:
LFB135:
	.cfi_startproc
	imull	$44, %eax, %eax
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	$-1171354717, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	_sprite, %ebx
	leal	(%ebx,%eax), %ecx
	addl	$14, %eax
	mull	%esi
	xorl	%esi, %esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%si, 14(%ecx)
	cmpw	$0, _tilesiz
	jle	L1730
	cmpw	$0, _tilesiz+2
	jle	L1730
L1726:
	leal	16(%ecx), %edx
	movl	$-1171354717, %esi
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	19(%ecx), %edx
	subl	%ebx, %edx
	movb	$0, 16(%ecx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%ecx), %edx
	subl	%ebx, %edx
	movb	$0, 19(%ecx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ecx), %edx
	subl	%ebx, %edx
	movb	$0, 17(%ecx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ecx), %edx
	subl	%ebx, %edx
	movb	$1, 20(%ecx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ecx), %edx
	subl	%ebx, %edx
	movb	$1, 21(%ecx)
	movl	%edx, %eax
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 12(%ecx)
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
L1730:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	L1729
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1727:
	addl	$1, %eax
	cmpl	$30464, %eax
	je	L1733
L1729:
	cmpw	$0, _tilesiz(,%eax,4)
	jle	L1727
	cmpw	$0, _tilesiz+2(,%eax,4)
	jle	L1727
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 14(%ecx)
	jmp	L1726
L1733:
	xorl	%eax, %eax
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 14(%ecx)
	jmp	L1726
	.cfi_endproc
LFE135:
	.p2align 4
	.globl	__ZL13inside_editorPK4vec3IiEiiiiis.part.0.constprop.0
	.def	__ZL13inside_editorPK4vec3IiEiiiiis.part.0.constprop.0;	.scl	2;	.type	32;	.endef
__ZL13inside_editorPK4vec3IiEiiiiis.part.0.constprop.0:
LFB137:
	.cfi_startproc
	subl	$64, %esp
	.cfi_def_cfa_offset 68
	movl	%esi, 52(%esp)
	.cfi_offset 6, -16
	movl	%edx, %esi
	movswl	68(%esp), %edx
	movl	%ebx, 48(%esp)
	.cfi_offset 3, -20
	movl	_sector, %ebx
	leal	(%edx,%edx,4), %edx
	movl	%edi, 56(%esp)
	.cfi_offset 7, -12
	leal	0(,%edx,8), %edi
	leal	(%ebx,%edi), %edx
	movl	%edi, 32(%esp)
	cmpw	$512, 2(%edx)
	jg	L1740
	movl	%ebp, 60(%esp)
	.cfi_offset 5, -8
	movswl	(%edx), %ebp
	movl	%eax, 40(%esp)
	movl	(%edx), %eax
	movl	%esi, 44(%esp)
	movl	%ebp, %edi
	sall	$5, %ebp
	movl	%eax, 163880(%ebx)
	movl	4(%edx), %eax
	movl	_wall, %esi
	movl	%ecx, 20(%esp)
	movl	%eax, 163884(%ebx)
	movl	8(%edx), %eax
	leal	(%esi,%ebp), %ecx
	movl	%eax, 163888(%ebx)
	movl	12(%edx), %eax
	movl	%eax, 163892(%ebx)
	movl	16(%edx), %eax
	movl	%eax, 163896(%ebx)
	movl	20(%edx), %eax
	movl	%eax, 163900(%ebx)
	movl	24(%edx), %eax
	movl	%eax, 163904(%ebx)
	movl	28(%edx), %eax
	movl	%eax, 163908(%ebx)
	movl	32(%edx), %eax
	movl	%eax, 163912(%ebx)
	movl	36(%edx), %eax
	movl	$16384, %edx
	movw	%dx, 163880(%ebx)
	leal	524288(%esi), %edx
	movl	%eax, 163916(%ebx)
	movswl	163882(%ebx), %eax
	addl	$1, _sectorchanged+16388
	sall	$5, %eax
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	call	_memcpy
	cmpw	$0, 163882(%ebx)
	jle	L1736
	movl	$16384, %eax
	subl	%edi, %eax
	movl	$16384, %edi
	movw	%ax, 38(%esp)
	jmp	L1739
	.p2align 4,,10
	.p2align 3
L1737:
	addl	%ebp, %ecx
	movl	4(%ecx), %edx
	movl	%edx, 8(%esp)
	movl	(%ecx), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_getflorzofslopeptr.part.0
	movl	_wall, %ecx
L1738:
	movl	20(%esp), %edx
	subl	_pos+8, %eax
	imull	_m32_sidecos, %edx
/APP
 # 672 "source/build/src/2d.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	%ebx, %esi
	leal	(%ecx,%ebx), %eax
	addl	$1, %edi
	addl	$32, %ebp
	shrl	$5, %esi
	addl	$1, _wallchanged(,%esi,4)
	addl	%edx, 4(%eax)
	movl	%eax, %edx
	subl	%ecx, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movl	_halfxdim16, %edx
	addl	%edx, (%eax)
	movl	%ebx, %eax
	movl	_wall, %esi
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	_midydim16, %eax
	addl	%eax, 4(%esi,%ebx)
	movl	_sector, %eax
	movswl	163882(%eax), %eax
	addl	$16384, %eax
	cmpl	%eax, %edi
	jge	L1736
L1739:
	movl	%edi, %ebx
	movzwl	38(%esp), %ecx
	sall	$5, %ebx
	movl	%ebx, %edx
	leal	(%esi,%ebx), %eax
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movl	4(%eax), %edx
	addw	%cx, 8(%eax)
	movl	(%eax), %ecx
	subl	_pos, %ecx
	subl	_pos+4, %edx
	movl	%ecx, 28(%esp)
	leal	4(%eax), %ecx
	movl	%edx, 24(%esp)
	movl	%ecx, %edx
	subl	%esi, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movl	%eax, %edx
	subl	%esi, %edx
	movl	20(%esp), %esi
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movl	24(%esp), %edx
	movl	%esi, 16(%esp)
	movl	28(%esp), %esi
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 12(%esp)
	movl	%esi, 8(%esp)
	call	_editorGet2dScreenCoordinates
	movl	32(%esp), %eax
	addl	_sector, %eax
	movl	_wall, %ecx
	testb	$2, 14(%eax)
	jne	L1737
	movl	8(%eax), %eax
	jmp	L1738
	.p2align 4,,10
	.p2align 3
L1736:
	movl	$4098, %eax
	movl	44(%esp), %edx
	movl	$4097, %ecx
	movzwl	_numsectors, %ebx
	movw	%ax, _numsectors
	movl	40(%esp), %eax
	call	_inside
	movw	%bx, _numsectors
	movl	60(%esp), %ebp
	.cfi_restore 5
L1734:
	movl	48(%esp), %ebx
	movl	52(%esp), %esi
	movl	56(%esp), %edi
	addl	$64, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L1740:
	.cfi_restore_state
	movl	$-1, %eax
	jmp	L1734
	.cfi_endproc
LFE137:
	.p2align 4
	.globl	__ZL18sectors_componentssPKsii.part.0.lto_priv.0
	.def	__ZL18sectors_componentssPKsii.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL18sectors_componentssPKsii.part.0.lto_priv.0:
LFB138:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%edi, 24(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	movl	36(%esp), %eax
	movl	%ebx, 16(%esp)
	movswl	%di, %edi
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	%ebp, 28(%esp)
	.cfi_offset 5, -8
	movl	%ecx, %ebp
	movl	%ecx, 4(%esp)
	movl	$__ZL12collnumsects.lto_priv.0, %ecx
	movl	%eax, 8(%esp)
	movswl	(%edx), %eax
	movl	$__ZL14collsectbitmap.lto_priv.0, %edx
	movl	%eax, (%esp)
	movl	$__ZL12collsectlist.lto_priv.0, %eax
	call	__ZL16collect_sectors1PsPhS_sii.lto_priv.0
	cmpw	$1, %di
	je	L1747
	movl	%esi, 20(%esp)
	.cfi_offset 6, -16
	movl	$1, %esi
	movl	%ebx, 12(%esp)
	jmp	L1749
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1746:
	addl	$1, %esi
	cmpl	%edi, %esi
	je	L1759
L1749:
	movl	12(%esp), %eax
	movswl	(%eax,%esi,2), %eax
	movl	%eax, %edx
	movl	%eax, %ecx
	andl	$7, %edx
	sarl	$3, %ecx
	movzbl	__ZL8pow2char.lto_priv.2(%edx), %edx
	movzbl	__ZL14collsectbitmap.lto_priv.0(%ecx), %ebx
	andl	%edx, %ebx
	cmpb	%bl, %dl
	je	L1746
	movl	36(%esp), %ecx
	movl	$__ZL14collsectbitmap.lto_priv.0+512, %edx
	movl	12(%esp), %ebx
	movl	%eax, (%esp)
	movl	%ebp, 4(%esp)
	movl	$__ZL12collsectlist.lto_priv.0+8192, %eax
	movl	%ecx, 8(%esp)
	movl	$__ZL12collnumsects.lto_priv.0+2, %ecx
	call	__ZL16collect_sectors1PsPhS_sii.lto_priv.0
	cmpl	%edi, %esi
	je	L1759
	leal	(%ebx,%edi,2), %edi
	.p2align 4
	.p2align 3
L1750:
	movswl	(%ebx), %edx
	movl	%edx, %eax
	sarl	$3, %edx
	andl	$7, %eax
	movzbl	__ZL14collsectbitmap.lto_priv.0+512(%edx), %esi
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
	andl	%eax, %esi
	movl	%esi, %ecx
	cmpb	%al, %cl
	sete	%cl
	movzbl	%cl, %ecx
	movl	%ecx, %esi
	movzbl	__ZL14collsectbitmap.lto_priv.0(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%al, %cl
	sete	%al
	movzbl	%al, %eax
	leal	(%eax,%esi,2), %eax
	cmpl	$3, %eax
	je	L1751
	testl	%eax, %eax
	je	L1752
	addl	$2, %ebx
	cmpl	%ebx, %edi
	jne	L1750
	movl	20(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	16(%esp), %ebx
	movl	$2, %eax
	movl	24(%esp), %edi
	movl	28(%esp), %ebp
	addl	$32, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1759:
	.cfi_restore_state
	movl	20(%esp), %esi
	.cfi_restore 6
L1747:
	movl	16(%esp), %ebx
	movl	24(%esp), %edi
	movl	$1, %eax
	movl	28(%esp), %ebp
	addl	$32, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1751:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	20(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	16(%esp), %ebx
	movl	$-1, %eax
	movl	24(%esp), %edi
	movl	28(%esp), %ebp
	addl	$32, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1752:
	.cfi_restore_state
	movl	20(%esp), %esi
	.cfi_restore 6
	movl	16(%esp), %ebx
	movl	$3, %eax
	movl	24(%esp), %edi
	movl	28(%esp), %ebp
	addl	$32, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE138:
	.p2align 4
	.globl	_fixxrepeat.part.0
	.def	_fixxrepeat.part.0;	.scl	2;	.type	32;	.endef
_fixxrepeat.part.0:
LFB139:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movswl	%ax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%esi, %eax
	movl	%edx, %ebx
	sall	$5, %esi
	call	_wallength
	xorl	%edx, %edx
	movl	_wall, %ecx
	sall	$12, %eax
	addl	$2048, %eax
	addl	%esi, %ecx
	shrl	$5, %esi
	divl	%ebx
	movl	$255, %edx
	addl	$1, _wallchanged(,%esi,4)
	cmpl	%edx, %eax
	cmova	%edx, %eax
	movl	$1, %edx
	testl	%eax, %eax
	cmove	%edx, %eax
	movb	%al, 22(%ecx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE139:
	.p2align 4
	.def	__ZL14do_insertpointiiiPi;	.scl	3;	.type	32;	.endef
__ZL14do_insertpointiiiPi:
LFB140:
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
	sall	$5, %edi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edi, %esi
	subl	$40, %esp
	.cfi_def_cfa_offset 60
	movl	%eax, 16(%esp)
	cwtl
	movl	60(%esp), %ebx
	movl	%ecx, 32(%esp)
	movl	%edx, 28(%esp)
	movl	%eax, 20(%esp)
	call	_sectorofwall
	movl	%eax, %ebp
	movl	_wall, %eax
	movzbl	22(%eax,%edi), %edi
	movl	20(%esp), %eax
	call	_wallength
	movl	%edi, %ecx
	testb	%cl, %cl
	je	L1786
	cltd
	movzbl	%cl, %edi
	movl	$0, 12(%esp)
	shldl	$12, %eax, %edx
	sall	$12, %eax
	movl	%edi, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.2
	movl	%eax, 24(%esp)
L1764:
	leal	0(%ebp,%ebp,4), %ecx
	movl	$-858993459, %edx
	movl	_sector, %edi
	addl	$1, %ebp
	sall	$3, %ecx
	leal	2(%ecx), %eax
	addl	%ecx, %edi
	mull	%edx
	movswl	_numsectors, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	addw	$1, 2(%edi)
	cmpl	%eax, %ebp
	jge	L1765
	movl	%esi, 36(%esp)
	addl	$40, %ecx
	movl	$-858993459, %edi
	.p2align 6
	.p2align 4
	.p2align 3
L1766:
	movl	%ecx, %eax
	movl	_sector, %esi
	addl	$1, %ebp
	mull	%edi
	addl	%ecx, %esi
	addl	$40, %ecx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	addw	$1, (%esi)
	movswl	_numsectors, %eax
	cmpl	%ebp, %eax
	jg	L1766
	movl	36(%esp), %esi
L1765:
	testl	%ebx, %ebx
	je	L1767
	movl	(%ebx), %eax
	cmpl	16(%esp), %eax
	jg	L1787
L1767:
	movl	16(%esp), %eax
	movl	$1, %edx
	leal	1(%eax), %ebx
	movl	%ebx, %eax
	call	__ZL9movewallsii.isra.0
	movl	_wall, %eax
	leal	32(%eax,%esi), %ecx
	addl	%esi, %eax
	movl	(%eax), %edi
	movl	%edi, (%ecx)
	movl	4(%eax), %edi
	movl	%edi, 4(%ecx)
	movl	8(%eax), %edi
	movl	%edi, 8(%ecx)
	movl	12(%eax), %edi
	movl	%edi, 12(%ecx)
	movl	16(%eax), %edi
	movl	%edi, 16(%ecx)
	movl	20(%eax), %edi
	movl	%edi, 20(%ecx)
	movl	24(%eax), %edi
	movl	%edi, 24(%ecx)
	movl	28(%eax), %eax
	movl	%eax, 28(%ecx)
	movl	%ebx, %eax
	movl	%ebx, %ecx
	andl	$7, %eax
	sarl	$3, %ecx
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
	notl	%eax
	andb	%al, _editwall(%ecx)
	movl	_wall, %eax
	movl	%esi, %ecx
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	leal	32(%esi), %ecx
	movw	%bx, 8(%eax,%esi)
	movl	28(%esp), %ebx
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	movl	%ebx, 32(%eax,%esi)
	movl	32(%esp), %eax
	movl	_wall, %ebx
	addl	$1, _wallchanged(,%ecx,4)
	movl	%eax, 36(%ebx,%esi)
	movl	24(%esp), %edx
	testl	%edx, %edx
	jne	L1788
	addl	%ebx, %esi
	movswl	16(%esi), %edi
	movswl	_tilesiz(,%edi,4), %ebp
	testw	%bp, %bp
	je	L1762
	cmpw	$0, _tilesiz+2(,%edi,4)
	je	L1762
L1785:
	movswl	8(%esi), %ecx
	movl	%ecx, %eax
	movl	%ecx, 32(%esp)
	call	__ZL12GetWallBaseZi
	movl	%eax, 20(%esp)
	movl	16(%esp), %eax
	call	__ZL12GetWallBaseZi
	movzbl	22(%esi), %edx
	movl	32(%esp), %ecx
	movl	%eax, 28(%esp)
	movzbl	24(%esi), %eax
	leal	(%eax,%edx,8), %eax
	cltd
	idivl	%ebp
	movl	%ecx, %eax
	sall	$5, %eax
	leal	(%ebx,%eax), %ecx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	20(%esp), %eax
	subl	28(%esp), %eax
	movb	%dl, 24(%ecx)
	movzbl	23(%esi), %ebp
	movswl	_tilesiz+2(,%edi,4), %edi
	movl	%ebp, %edx
	movzbl	%dl, %edx
	sall	$3, %edi
	imull	%edx, %eax
	cltd
	idivl	%edi
	leal	23(%ecx), %edx
	subl	%ebx, %edx
	shrl	$5, %edx
	addb	25(%esi), %al
	addl	$1, _wallchanged(,%edx,4)
	movl	%ebp, %edx
	movb	%dl, 23(%ecx)
	leal	25(%ecx), %edx
	subl	%ebx, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movb	%al, 25(%ecx)
	movl	24(%esp), %eax
	testl	%eax, %eax
	jne	L1771
L1762:
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
L1787:
	.cfi_restore_state
	addl	$1, %eax
	movl	%eax, (%ebx)
	jmp	L1767
	.p2align 4,,10
	.p2align 3
L1788:
	movl	24(%esp), %edx
	movl	20(%esp), %eax
	call	_fixxrepeat.part.0
	movl	_wall, %ebx
	addl	%ebx, %esi
	movswl	16(%esi), %edi
	movswl	_tilesiz(,%edi,4), %ebp
	testw	%bp, %bp
	je	L1771
	cmpw	$0, _tilesiz+2(,%edi,4)
	jne	L1785
L1771:
	movzwl	16(%esp), %eax
	movl	24(%esp), %edx
	addl	$40, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	addl	$1, %eax
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	cwtl
	jmp	_fixxrepeat.part.0
	.p2align 4,,10
	.p2align 3
L1786:
	.cfi_restore_state
	sall	$12, %eax
	movl	%eax, 24(%esp)
	jmp	L1764
	.cfi_endproc
LFE140:
	.p2align 4
	.globl	__ZL11insertpointsiiPi.lto_priv.0
	.def	__ZL11insertpointsiiPi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL11insertpointsiiPi.lto_priv.0:
LFB147:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -20
	movswl	%ax, %ebx
	movl	28(%esp), %eax
	movl	%esi, 12(%esp)
	.cfi_offset 6, -16
	movl	%edx, %esi
	movl	%eax, (%esp)
	movl	%ebx, %eax
	sall	$5, %ebx
	movl	%edi, 16(%esp)
	.cfi_offset 7, -12
	movl	%ecx, %edi
	call	__ZL14do_insertpointiiiPi
	addl	_wall, %ebx
	movl	$1, %eax
	movzwl	10(%ebx), %ebx
	testw	%bx, %bx
	jns	L1793
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	movl	16(%esp), %edi
	addl	$24, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1793:
	.cfi_restore_state
	movl	28(%esp), %ecx
	movswl	%bx, %eax
	movl	%esi, %edx
	movl	%ebp, 20(%esp)
	.cfi_offset 5, -8
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	movl	%edi, %ecx
	call	__ZL14do_insertpointiiiPi
	movl	4(%esp), %eax
	movl	_wall, %ecx
	sall	$5, %eax
	leal	(%ecx,%eax), %edi
	movswl	10(%edi), %edx
	movl	%edx, %esi
	movl	%edx, %ebp
	andl	$134217727, %edx
	addl	$1, _wallchanged(,%edx,4)
	sall	$5, %ebp
	leal	1(%ebx), %edx
	movw	%dx, 10(%ecx,%ebp)
	leal	42(%ebp), %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	leal	10(%edi), %edx
	subl	%ecx, %edx
	movw	%bx, 42(%ecx,%ebp)
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	leal	1(%esi), %edx
	movw	%dx, 10(%edi)
	leal	42(%eax), %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movw	%si, 42(%ecx,%eax)
	movl	$2, %eax
	movl	20(%esp), %ebp
	.cfi_restore 5
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	movl	16(%esp), %edi
	addl	$24, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE147:
	.p2align 4
	.globl	__ZL22backup_highlighted_mapP13mapinfofull_t.part.0.lto_priv.0
	.def	__ZL22backup_highlighted_mapP13mapinfofull_t.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL22backup_highlighted_mapP13mapinfofull_t.part.0.lto_priv.0:
LFB148:
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
	subl	$1076, %esp
	.cfi_offset 3, -20
	movl	_numyaxbunches, %eax
	movzwl	_numsectors, %ebx
	movl	%eax, -1044(%ebp)
	testl	%eax, %eax
	jle	L1795
	addl	%eax, %eax
	leal	-1036(%ebp), %edi
	movl	%edi, -1048(%ebp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	_memset
	testw	%bx, %bx
	jle	L1796
L1852:
	movl	%esi, -1056(%ebp)
	movl	$1, %eax
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	movl	$0, -1044(%ebp)
	jmp	L1807
	.p2align 4,,10
	.p2align 3
L1797:
	movl	$-1, %eax
	addl	_sector, %esi
	movw	%ax, __ZL8tempxyar.lto_priv.0(%ebx,%ebx)
	movswl	(%esi), %edx
	movswl	2(%esi), %eax
	addl	%edx, %eax
	cmpl	%eax, %edx
	jge	L1800
	subl	%edx, %eax
	movl	$255, 4(%esp)
	addl	%eax, %eax
	movl	%eax, 8(%esp)
	leal	__ZL8tempxyar.lto_priv.0+32768(%edx,%edx), %eax
	movl	%eax, (%esp)
	call	_memset
L1800:
	movswl	_numsectors, %eax
	addl	$1, %ebx
	cmpl	%eax, %ebx
	jge	L1898
L1805:
	movl	%ebx, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.2(%eax), %eax
L1807:
	movl	%ebx, %edx
	leal	(%ebx,%ebx,4), %esi
	sarl	$3, %edx
	sall	$3, %esi
	movzbl	_hlsectorbitmap(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%al, %cl
	jne	L1797
	movswl	%bx, %ecx
	movl	%ecx, %eax
	movl	%ecx, -1052(%ebp)
	call	_yax_getbunch.constprop.1
	movl	%eax, %edx
	movl	-1052(%ebp), %eax
	movl	%edx, -1048(%ebp)
	call	_yax_getbunch.constprop.0
	movl	-1048(%ebp), %edx
	testw	%dx, %dx
	js	L1798
	movswl	%dx, %edx
	addw	$1, -1036(%ebp,%edx,2)
L1798:
	testw	%ax, %ax
	js	L1799
	cwtl
	addw	$1, -1036(%ebp,%eax,2)
L1799:
	addl	_sector, %esi
	movw	%di, __ZL8tempxyar.lto_priv.0(%ebx,%ebx)
	leal	1(%edi), %eax
	movswl	(%esi), %edx
	movswl	2(%esi), %ecx
	movl	%eax, -1048(%ebp)
	addl	%edx, %ecx
	cmpl	%ecx, %edx
	jge	L1854
	movl	-1044(%ebp), %eax
	movl	%eax, %esi
	subl	%edx, %esi
	subl	%eax, %edx
	addl	%ecx, %esi
	leal	(%edx,%edx), %ecx
	movl	%esi, %edx
	subl	%eax, %edx
	andl	$1, %edx
	je	L1801
	movl	-1044(%ebp), %edi
	addl	$1, %eax
	movw	%di, __ZL8tempxyar.lto_priv.0+32768(%ecx,%edi,2)
	cmpl	%eax, %esi
	je	L1890
	.p2align 5
	.p2align 4
	.p2align 3
L1801:
	movw	%ax, __ZL8tempxyar.lto_priv.0+32768(%ecx,%eax,2)
	leal	1(%eax), %edx
	addl	$2, %eax
	movw	%dx, __ZL8tempxyar.lto_priv.0+32768(%ecx,%edx,2)
	cmpl	%eax, %esi
	jne	L1801
L1890:
	addl	$1, %ebx
	movswl	_numsectors, %eax
	movl	%esi, -1044(%ebp)
	movl	-1048(%ebp), %edi
	cmpl	%eax, %ebx
	jl	L1805
	.p2align 4
	.p2align 3
L1898:
	movl	_numyaxbunches, %eax
	leal	-1036(%ebp), %edi
	movl	-1056(%ebp), %esi
	movl	%edi, -1048(%ebp)
	movl	%eax, -1044(%ebp)
	testl	%eax, %eax
	jle	L1806
L1796:
	movl	%esi, -1052(%ebp)
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L1813:
	movl	-1048(%ebp), %eax
	movswl	(%eax,%ebx,2), %esi
	cmpl	%ebx, -1044(%ebp)
	jle	L1855
	movswl	_headsectbunch(%ebx,%ebx), %eax
	xorl	%edx, %edx
	cmpl	$-1, %eax
	je	L1809
	.p2align 4
	.p2align 4
	.p2align 3
L1810:
	movswl	_nextsectbunch(%eax,%eax), %eax
	addl	$1, %edx
	cmpl	$-1, %eax
	jne	L1810
L1809:
	movswl	_headsectbunch+512(%ebx,%ebx), %eax
	cmpl	$-1, %eax
	je	L1808
	xorl	%ecx, %ecx
	.p2align 4
	.p2align 4
	.p2align 3
L1811:
	movswl	_nextsectbunch+8192(%eax,%eax), %eax
	addl	$1, %ecx
	cmpl	$-1, %eax
	jne	L1811
	addl	%ecx, %edx
L1808:
	cmpl	%edx, %esi
	movl	$-1, %eax
	leal	1(%edi), %ecx
	cmove	%edi, %eax
	cmove	%ecx, %edi
	movw	%ax, -524(%ebp,%ebx,2)
	addl	$1, %ebx
	cmpl	-1044(%ebp), %ebx
	jne	L1813
	movl	-1052(%ebp), %esi
L1853:
	movw	%di, 6(%esi)
	movswl	_highlightsectorcnt, %edi
	testw	%di, %di
	jle	L1858
	movl	_sector, %eax
	movl	%esi, -1052(%ebp)
	xorl	%ecx, %ecx
	movl	$0, -1044(%ebp)
	movl	%eax, -1048(%ebp)
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L1817:
	movswl	_highlightsector(%eax,%eax), %edx
	movl	-1048(%ebp), %ebx
	leal	(%edx,%edx,4), %esi
	movswl	_headspritesect(%edx,%edx), %edx
	movswl	2(%ebx,%esi,8), %esi
	addl	%esi, %ecx
	cmpl	$-1, %edx
	je	L1815
	movl	-1044(%ebp), %ebx
	.p2align 4
	.p2align 4
	.p2align 3
L1816:
	movswl	_nextspritesect(%edx,%edx), %edx
	addl	$1, %ebx
	cmpl	$-1, %edx
	jne	L1816
	movl	%ebx, -1044(%ebp)
L1815:
	addl	$1, %eax
	cmpl	%edi, %eax
	jne	L1817
	movl	%ecx, -1048(%ebp)
	movl	-1044(%ebp), %ebx
	movl	-1052(%ebp), %esi
L1814:
	leal	(%edi,%edi,4), %edi
	sall	$3, %edi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1893
	movl	-1048(%ebp), %edi
	movl	%eax, 16(%esi)
	sall	$5, %edi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1893
	movl	%eax, 20(%esi)
	cmpw	$0, 6(%esi)
	jg	L1899
	movl	$0, 8(%esi)
	xorl	%eax, %eax
	movl	$0, 12(%esi)
	testl	%ebx, %ebx
	jne	L1900
L1827:
	movl	%eax, 24(%esi)
	movzwl	_highlightsectorcnt, %eax
	testw	%ax, %ax
	jle	L1860
	movl	$0, -1072(%ebp)
	movl	%esi, %edi
	xorl	%esi, %esi
	movl	$0, -1056(%ebp)
	.p2align 4
	.p2align 3
L1851:
	movl	-1056(%ebp), %ecx
	movswl	_highlightsector(%ecx,%ecx), %eax
	movl	%eax, -1064(%ebp)
	leal	(%eax,%eax,4), %eax
	leal	0(,%eax,8), %edx
	movl	%ecx, %eax
	leal	0(,%ecx,4), %ecx
	movl	%edx, -1060(%ebp)
	addl	_sector, %edx
	movl	%ecx, -1052(%ebp)
	addl	%eax, %ecx
	movl	(%edx), %ebx
	leal	0(,%ecx,8), %eax
	movl	%eax, -1044(%ebp)
	addl	16(%edi), %eax
	movl	%ebx, (%eax)
	movl	4(%edx), %ebx
	movl	%ebx, 4(%eax)
	movl	8(%edx), %ebx
	movl	%ebx, 8(%eax)
	movl	12(%edx), %ebx
	movl	%ebx, 12(%eax)
	movl	16(%edx), %ebx
	movl	%ebx, 16(%eax)
	movl	20(%edx), %ebx
	movl	%ebx, 20(%eax)
	movl	24(%edx), %ebx
	movl	%ebx, 24(%eax)
	movl	28(%edx), %ebx
	movl	%ebx, 28(%eax)
	movl	32(%edx), %ebx
	movl	%ebx, 32(%eax)
	movl	36(%edx), %edx
	movzwl	-1072(%ebp), %ebx
	movl	%edx, 36(%eax)
	movzwl	-1072(%ebp), %eax
	movw	%ax, -1048(%ebp)
	movl	16(%edi), %eax
	movw	%bx, (%eax,%ecx,8)
	cmpw	$0, 6(%edi)
	jg	L1829
	movl	_numyaxbunches, %ebx
	testl	%ebx, %ebx
	jg	L1829
L1830:
	movl	-1060(%ebp), %eax
	addl	_sector, %eax
	cmpw	$0, 2(%eax)
	jle	L1838
	movl	-1072(%ebp), %ebx
	movl	%esi, -1076(%ebp)
	xorl	%edx, %edx
	movw	%bx, -1066(%ebp)
	addl	%ebx, %ebx
	movl	%ebx, -1048(%ebp)
	jmp	L1848
	.p2align 4,,10
	.p2align 3
L1902:
	movzwl	__ZL8tempxyar.lto_priv.0(%eax,%eax), %eax
	testw	%ax, %ax
	js	L1845
	movw	%ax, 12(%ecx)
	addl	20(%edi), %ebx
	movswl	10(%ebx), %eax
	movzwl	__ZL8tempxyar.lto_priv.0+32768(%eax,%eax), %eax
	movw	%ax, 10(%ebx)
L1847:
	movl	-1060(%ebp), %eax
	addl	_sector, %eax
	addl	$1, %edx
	movswl	2(%eax), %ecx
	addl	$2, -1048(%ebp)
	cmpl	%ecx, %edx
	jge	L1901
L1848:
	movswl	(%eax), %eax
	movl	-1048(%ebp), %ebx
	movl	20(%edi), %ecx
	movw	%ax, -1044(%ebp)
	addl	%edx, %eax
	sall	$4, %ebx
	sall	$5, %eax
	addl	_wall, %eax
	addl	%ebx, %ecx
	movl	(%eax), %esi
	movl	%esi, (%ecx)
	movl	4(%eax), %esi
	movl	%esi, 4(%ecx)
	movl	8(%eax), %esi
	movl	%esi, 8(%ecx)
	movl	12(%eax), %esi
	movl	%esi, 12(%ecx)
	movl	16(%eax), %esi
	movl	%esi, 16(%ecx)
	movl	20(%eax), %esi
	movl	%esi, 20(%ecx)
	movl	24(%eax), %esi
	movl	%esi, 24(%ecx)
	movl	28(%eax), %eax
	movl	%eax, 28(%ecx)
	movl	20(%edi), %eax
	movzwl	-1066(%ebp), %ecx
	subw	-1044(%ebp), %cx
	addl	%ebx, %eax
	addw	%cx, 8(%eax)
	cmpw	$0, 6(%edi)
	jg	L1839
	movl	_numyaxbunches, %ecx
	testl	%ecx, %ecx
	jg	L1839
L1840:
	movl	20(%edi), %ecx
	addl	%ebx, %ecx
	movswl	12(%ecx), %eax
	testw	%ax, %ax
	jns	L1902
L1845:
	movl	$-1, %esi
	movw	%si, 12(%ecx)
	movl	20(%edi), %eax
	movl	$-1, %ecx
	movw	%cx, 10(%eax,%ebx)
	jmp	L1847
L1899:
	movswl	_highlightsectorcnt, %edi
	sall	$2, %edi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1893
	movl	-1048(%ebp), %edi
	movl	%eax, 8(%esi)
	sall	$2, %edi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1893
	movl	%eax, 12(%esi)
	xorl	%eax, %eax
	testl	%ebx, %ebx
	je	L1827
L1900:
	imull	$44, %ebx, %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	jne	L1827
	movl	%ebx, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1839:
	movzwl	-1044(%ebp), %eax
	movl	-1048(%ebp), %ecx
	movl	%edx, -1064(%ebp)
	xorl	%esi, %esi
	movl	%ebx, -1052(%ebp)
	addl	%edx, %eax
	leal	(%ecx,%ecx), %ebx
	cwtl
	movl	%eax, -1044(%ebp)
L1844:
	movl	-1044(%ebp), %eax
	movswl	%si, %edx
	call	_yax_getnextwall
	movzwl	6(%edi), %edx
	testw	%ax, %ax
	js	L1903
	cwtl
	movzwl	__ZL8tempxyar.lto_priv.0+32768(%eax,%eax), %eax
	testw	%dx, %dx
	jle	L1843
	movl	12(%edi), %edx
	movw	%ax, (%edx,%ebx)
L1843:
	testw	%ax, %ax
	jns	L1842
	movl	-1052(%ebp), %ecx
	movl	%esi, %edx
	leal	0(,%esi,4), %eax
	addl	20(%edi), %eax
	negl	%edx
	movw	%dx, 26(%ecx,%eax)
L1842:
	addl	$2, %ebx
	cmpl	$1, %esi
	jne	L1861
	movl	-1052(%ebp), %ebx
	movl	-1064(%ebp), %edx
	jmp	L1840
	.p2align 4,,10
	.p2align 3
L1861:
	movl	$1, %esi
	jmp	L1844
	.p2align 4,,10
	.p2align 3
L1903:
	testw	%dx, %dx
	jle	L1842
	movl	12(%edi), %eax
	movl	$-1, %edx
	movw	%dx, (%eax,%ebx)
	jmp	L1842
	.p2align 4,,10
	.p2align 3
L1901:
	addl	%edx, -1072(%ebp)
	movl	-1072(%ebp), %eax
	movl	-1076(%ebp), %esi
	movw	%ax, -1048(%ebp)
L1838:
	movl	-1056(%ebp), %eax
	movswl	_highlightsector(%eax,%eax), %eax
	movswl	_headspritesect(%eax,%eax), %ecx
	cmpl	$-1, %ecx
	je	L1849
	movl	%esi, -1044(%ebp)
	.p2align 4
	.p2align 3
L1850:
	imull	$44, -1044(%ebp), %ebx
	movl	24(%edi), %edx
	imull	$44, %ecx, %eax
	addl	_sprite, %eax
	movl	(%eax), %esi
	addl	%ebx, %edx
	movl	%esi, (%edx)
	movl	4(%eax), %esi
	movl	%esi, 4(%edx)
	movl	8(%eax), %esi
	movl	%esi, 8(%edx)
	movl	12(%eax), %esi
	movl	%esi, 12(%edx)
	movl	16(%eax), %esi
	movl	%esi, 16(%edx)
	movl	20(%eax), %esi
	movl	%esi, 20(%edx)
	movl	24(%eax), %esi
	movl	%esi, 24(%edx)
	movl	28(%eax), %esi
	movl	%esi, 28(%edx)
	movl	32(%eax), %esi
	movl	%esi, 32(%edx)
	movl	36(%eax), %esi
	movl	%esi, 36(%edx)
	movl	40(%eax), %eax
	movl	%eax, 40(%edx)
	movl	-1056(%ebp), %eax
	movswl	_highlightsector(%eax,%eax), %eax
	movzwl	__ZL8tempxyar.lto_priv.0(%eax,%eax), %edx
	movl	24(%edi), %eax
	movw	%dx, 24(%eax,%ebx)
	movswl	_nextspritesect(%ecx,%ecx), %ecx
	addl	$1, -1044(%ebp)
	cmpl	$-1, %ecx
	jne	L1850
	movl	-1044(%ebp), %esi
L1849:
	movswl	_highlightsectorcnt, %edx
	addl	$1, -1056(%ebp)
	movl	%edx, %eax
	cmpl	%edx, -1056(%ebp)
	jl	L1851
	movl	%esi, %edx
	movl	%edi, %esi
L1828:
	movw	%ax, (%esi)
	movzwl	-1048(%ebp), %eax
	movw	%dx, 4(%esi)
	movw	%ax, 2(%esi)
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
L1829:
	.cfi_restore_state
	movl	-1064(%ebp), %ebx
	movl	%ebx, %eax
	call	_yax_getbunch.constprop.1
	movw	%ax, -1040(%ebp)
	movl	%ebx, %eax
	call	_yax_getbunch.constprop.0
	movl	-1052(%ebp), %ebx
	movw	%ax, -1038(%ebp)
	xorl	%eax, %eax
L1837:
	movswl	-1040(%ebp,%eax,2), %edx
	movzwl	6(%edi), %ecx
	testl	%edx, %edx
	js	L1904
	movzwl	-524(%ebp,%edx,2), %edx
	testw	%cx, %cx
	jle	L1833
	movl	8(%edi), %ecx
	movw	%dx, (%ecx,%ebx)
L1833:
	testw	%dx, %dx
	jns	L1832
	movl	-1044(%ebp), %edx
	addl	16(%edi), %edx
	testl	%eax, %eax
	je	L1905
	andw	$-1025, 14(%edx)
	movb	$0, 30(%edx)
	jmp	L1830
	.p2align 4,,10
	.p2align 3
L1904:
	testw	%cx, %cx
	jle	L1832
	movl	8(%edi), %edx
	movl	$-1, %ecx
	movw	%cx, (%edx,%ebx)
L1832:
	cmpl	$1, %eax
	je	L1830
	addl	$2, %ebx
L1835:
	movl	$1, %eax
	jmp	L1837
	.p2align 4,,10
	.p2align 3
L1905:
	andw	$-1025, 12(%edx)
	addl	$2, %ebx
	movb	$0, 22(%edx)
	jmp	L1835
L1893:
	movl	%edi, %eax
	call	__Z13handle_memerri
L1795:
	testw	%bx, %bx
	jg	L1852
L1806:
	xorl	%edi, %edi
	jmp	L1853
L1854:
	movl	-1048(%ebp), %edi
	jmp	L1800
L1858:
	movl	$0, -1048(%ebp)
	xorl	%ebx, %ebx
	jmp	L1814
L1860:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movw	%cx, -1048(%ebp)
	jmp	L1828
L1855:
	movl	$-2, %edx
	jmp	L1808
	.cfi_endproc
LFE148:
	.p2align 4
	.globl	__sm_allocator_destroy.part.0.lto_priv.0
	.def	__sm_allocator_destroy.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
__sm_allocator_destroy.part.0.lto_priv.0:
LFB150:
	.cfi_startproc
	movl	%eax, %edx
	movl	372(%eax), %eax
	testl	%eax, %eax
	je	L1912
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	%edx, (%esp)
	call	_mi_free
	movl	(%esp), %eax
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	jmp	_mi_free
	.p2align 4,,10
	.p2align 3
L1912:
	movl	%edx, %eax
	jmp	_mi_free
	.cfi_endproc
LFE150:
	.globl	__sm_allocator_destroy.part.0.lto_priv.2
	.def	__sm_allocator_destroy.part.0.lto_priv.2;	.scl	2;	.type	32;	.endef
	.set	__sm_allocator_destroy.part.0.lto_priv.2,__sm_allocator_destroy.part.0.lto_priv.0
	.globl	__sm_allocator_destroy.part.0.lto_priv.1
	.def	__sm_allocator_destroy.part.0.lto_priv.1;	.scl	2;	.type	32;	.endef
	.set	__sm_allocator_destroy.part.0.lto_priv.1,__sm_allocator_destroy.part.0.lto_priv.0
	.section .rdata,"dr"
LC91:
	.ascii "wangulator.cfg\0"
LC92:
	.ascii "usecwd\0"
LC93:
	.ascii "forcesetup\0"
LC94:
	.ascii "fullscreen\0"
LC95:
	.ascii "xdim\0"
LC96:
	.ascii "ydim\0"
LC97:
	.ascii "bpp\0"
LC98:
	.ascii "editorgridextent\0"
LC99:
	.ascii "grid\0"
LC100:
	.ascii "rendmode\0"
LC101:
	.ascii "vid_gamma\0"
LC103:
	.ascii "vid_contrast\0"
LC105:
	.ascii "lazytileselector\0"
LC106:
	.ascii "gameexecutable\0"
LC107:
	.ascii "keyforward\0"
LC108:
	.ascii "keybackward\0"
LC109:
	.ascii "keyturnleft\0"
LC110:
	.ascii "keyturnright\0"
LC111:
	.ascii "keyrun\0"
LC112:
	.ascii "keystrafe\0"
LC113:
	.ascii "keystandhigh\0"
LC114:
	.ascii "keystandlow\0"
LC115:
	.ascii "key2dmode\0"
LC116:
	.ascii "windowposx\0"
LC117:
	.ascii "windowposy\0"
LC118:
	.ascii "keyconsole\0"
LC119:
	.ascii "mousesensitivity\0"
LC120:
	.ascii "mousenavigation\0"
LC121:
	.ascii "mousenavigationaccel\0"
LC122:
	.ascii "quickmapcycling\0"
LC123:
	.ascii "sideview_reversehorizrot\0"
LC124:
	.ascii "revertCTRL\0"
LC125:
	.ascii "scrollamount\0"
LC126:
	.ascii "turnaccel\0"
LC127:
	.ascii "turndecel\0"
LC128:
	.ascii "autosavesec\0"
LC129:
	.ascii "autocorruptchecksec\0"
LC130:
	.ascii "corruptcheck_noalreadyrefd\0"
LC131:
	.ascii "corruptcheck_game_duke3d\0"
LC132:
	.ascii "corruptcheck_heinum\0"
LC133:
	.ascii "fixmaponsave_sprites\0"
LC134:
	.ascii "keeptexturestretch\0"
LC135:
	.ascii "showheightindicators\0"
LC136:
	.ascii "showambiencesounds\0"
LC137:
	.ascii "pathsearchmode\0"
LC138:
	.ascii "pointhighlightdist\0"
LC139:
	.ascii "linehighlightdist\0"
LC140:
	.ascii "2d3dmode\0"
LC141:
	.ascii "2d3dsize\0"
LC142:
	.ascii "2d3d_x\0"
LC143:
	.ascii "2d3d_y\0"
LC144:
	.ascii "3dundo\0"
LC145:
	.ascii "autogray\0"
LC146:
	.ascii "graphicsmode\0"
LC147:
	.ascii "upscalefactor\0"
LC148:
	.ascii "samplerate\0"
LC149:
	.ascii "ambiencetoggle\0"
LC150:
	.ascii "parlock\0"
LC151:
	.ascii "osdtryscript\0"
LC152:
	.ascii "remap\0"
LC153:
	.ascii "%x\0"
LC154:
	.ascii "Remap %X key to %X\0"
LC155:
	.ascii "source/build/src/config.cpp\0"
LC156:
	.ascii "hist%d\0"
	.text
	.p2align 4
	.globl	_loadsetup.constprop.0
	.def	_loadsetup.constprop.0;	.scl	2;	.type	32;	.endef
_loadsetup.constprop.0:
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
	subl	$1068, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	$131072, _editorgridextent
	movl	$LC66, 4(%esp)
	movl	$LC91, (%esp)
	call	_fopen
	testl	%eax, %eax
	je	L1992
	leal	-1040(%ebp), %esi
	movl	$LC92, %edx
	movl	%eax, %ebx
	movl	%esi, %ecx
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1917
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, _g_useCwd
L1917:
	movl	%esi, %ecx
	movl	$LC93, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1918
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, _forcesetup
L1918:
	movl	%esi, %ecx
	movl	$LC94, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1919
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, _fullscreen
L1919:
	movl	%esi, %ecx
	movl	$LC95, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1920
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	movl	%eax, _xdim
L1920:
	movl	%esi, %ecx
	movl	$LC96, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1921
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	movl	%eax, _ydim
L1921:
	movl	%esi, %ecx
	movl	$LC97, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1922
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	movl	%eax, _bppgame
L1922:
	movl	%esi, %ecx
	movl	$LC98, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1923
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	movl	$524288, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	$65536, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, _editorgridextent
L1923:
	movl	%esi, %ecx
	movl	$LC99, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1924
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	xorl	%edx, %edx
	cmpl	$9, %eax
	movl	%eax, __ZL12default_grid.lto_priv.0
	sete	%dl
	movl	%edx, _autogrid
	movl	$8, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, _grid
L1924:
	movl	%esi, %ecx
	movl	$LC100, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1925
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	movl	%eax, _glrendmode
L1925:
	movl	%esi, %ecx
	movl	$LC101, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	jne	L2200
L1926:
	movl	%esi, %ecx
	movl	$LC103, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	jne	L2201
L1931:
	movl	%esi, %ecx
	movl	$LC105, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1936
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, _g_lazy_tileselector
L1936:
	movl	%esi, %ecx
	movl	$LC106, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1937
	movl	%esi, 4(%esp)
	movl	$_game_executable, (%esp)
	call	_strcpy
L1937:
	movl	%esi, %ecx
	movl	$LC107, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1938
	movl	$16, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	movb	%al, _default_buildkeys
L1938:
	movl	%esi, %ecx
	movl	$LC108, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1939
	movl	$16, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	movb	%al, _default_buildkeys+1
L1939:
	movl	%esi, %ecx
	movl	$LC109, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1940
	movl	$16, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	movb	%al, _default_buildkeys+2
L1940:
	movl	%esi, %ecx
	movl	$LC110, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1941
	movl	$16, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	movb	%al, _default_buildkeys+3
L1941:
	movl	%esi, %ecx
	movl	$LC111, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1942
	movl	$16, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	movb	%al, _default_buildkeys+4
L1942:
	movl	%esi, %ecx
	movl	$LC112, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1943
	movl	$16, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	movb	%al, _default_buildkeys+5
L1943:
	movl	%esi, %ecx
	movl	$LC113, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1944
	movl	$16, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	movb	%al, _default_buildkeys+8
L1944:
	movl	%esi, %ecx
	movl	$LC114, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1945
	movl	$16, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	movb	%al, _default_buildkeys+9
L1945:
	movl	%esi, %ecx
	movl	$LC115, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1946
	movl	$16, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	movb	%al, _default_buildkeys+14
L1946:
	movl	%esi, %ecx
	movl	$LC116, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	jne	L2202
L1947:
	movl	%esi, %ecx
	movl	$LC118, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1948
	movl	$16, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	movl	_osd, %edx
	movb	%al, _default_buildkeys+19
	andl	$255, %eax
	movl	%eax, 3244(%edx)
L1948:
	movl	%esi, %ecx
	movl	$LC119, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1949
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	___mingw_strtod
	fstpl	_msens
L1949:
	movl	%esi, %ecx
	movl	$LC120, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1950
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, _unrealedlook
L1950:
	movl	%esi, %ecx
	movl	$LC121, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1951
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	movl	%eax, _pk_uedaccel
L1951:
	movl	%esi, %ecx
	movl	$LC122, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1952
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, _quickmapcycling
L1952:
	movl	%esi, %ecx
	movl	$LC123, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1953
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	testl	%eax, %eax
	setne	_sideview_reversehrot
L1953:
	movl	%esi, %ecx
	movl	$LC124, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1954
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, _revertCTRL
L1954:
	movl	%esi, %ecx
	movl	$LC125, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1955
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	movl	%eax, _scrollamount
L1955:
	movl	%esi, %ecx
	movl	$LC126, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1956
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	movl	%eax, _pk_turnaccel
L1956:
	movl	%esi, %ecx
	movl	$LC127, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1957
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	movl	%eax, _pk_turndecel
L1957:
	movl	%esi, %ecx
	movl	$LC128, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1958
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, _autosave
L1958:
	movl	%esi, %ecx
	movl	$LC129, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1959
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, _autocorruptcheck
L1959:
	movl	%esi, %ecx
	movl	$LC130, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1960
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, _corruptcheck_noalreadyrefd
L1960:
	movl	%esi, %ecx
	movl	$LC131, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1961
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, _corruptcheck_game_duke3d
L1961:
	movl	%esi, %ecx
	movl	$LC132, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1962
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	movl	$2, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, _corruptcheck_heinum
L1962:
	movl	%esi, %ecx
	movl	$LC133, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1963
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, _fixmaponsave_sprites
L1963:
	movl	%esi, %ecx
	movl	$LC134, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1964
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	testl	%eax, %eax
	setne	_keeptexturestretch
L1964:
	movl	%esi, %ecx
	movl	$LC135, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1965
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	movl	$2, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, _showheightindicators
L1965:
	movl	%esi, %ecx
	movl	$LC136, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1966
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	movl	$2, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, _showambiencesounds
L1966:
	movl	%esi, %ecx
	movl	$LC137, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1967
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, _pathsearchmode
L1967:
	movl	%esi, %ecx
	movl	$LC138, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1968
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	movw	%ax, _pointhighlightdist
L1968:
	movl	%esi, %ecx
	movl	$LC139, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1969
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	movw	%ax, _linehighlightdist
L1969:
	movl	%esi, %ecx
	movl	$LC140, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1970
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, _m32_2d3dmode
L1970:
	movl	%esi, %ecx
	movl	$LC141, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1971
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	movl	$5, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	$3, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, _m32_2d3dsize
L1971:
	movl	%esi, %ecx
	movl	$LC142, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1972
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	movl	$65535, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, _m32_2d3d
L1972:
	movl	%esi, %ecx
	movl	$LC143, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1973
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	movl	$65535, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, _m32_2d3d+4
L1973:
	movl	%esi, %ecx
	movl	$LC144, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1974
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, _m32_3dundo
L1974:
	movl	%esi, %ecx
	movl	$LC145, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1975
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, _autogray
L1975:
	movl	%esi, %ecx
	movl	$LC146, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1976
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	movl	$2, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, _graphicsmode
L1976:
	movl	%esi, %ecx
	movl	$LC147, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1977
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	movl	$3, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	$1, %edx
	testl	%eax, %eax
	cmovle	%edx, %eax
	movl	%eax, _upscalefactor
L1977:
	movl	%esi, %ecx
	movl	$LC148, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1978
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	movl	$48000, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	$8000, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, _MixRate
L1978:
	movl	%esi, %ecx
	movl	$LC149, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1979
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, _AmbienceToggle
L1979:
	movl	%esi, %ecx
	movl	$LC150, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1980
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, _ParentalLock
L1980:
	movl	%esi, %ecx
	movl	$LC151, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1981
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	testl	%eax, %eax
	setne	_m32_osd_tryscript
L1981:
	movl	%esi, %ecx
	movl	$LC152, %edx
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1982
	cmpb	$0, -1040(%ebp)
	je	L1982
	movl	%ebx, -1052(%ebp)
	movl	%esi, %edi
	jmp	L1985
	.p2align 4,,10
	.p2align 3
L2203:
	movl	$45, 4(%esp)
	movl	%edi, (%esp)
	call	_strchr
	testl	%eax, %eax
	je	L2197
	leal	1(%eax), %ebx
	leal	-1044(%ebp), %eax
	movl	$LC153, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, (%esp)
	call	_sscanf
	testl	%eax, %eax
	je	L2197
	movl	-1044(%ebp), %edi
	movl	-1048(%ebp), %ecx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	%edi, %eax
	movb	%al, _g_keyRemapTable(%ecx)
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L1984
	movl	%edi, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	$LC154, 12(%esp)
	movl	$281, 8(%esp)
	movl	$LC155, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L1984:
	movl	$44, 4(%esp)
	movl	%ebx, (%esp)
	call	_strchr
	testl	%eax, %eax
	je	L2197
	leal	1(%eax), %edi
	cmpb	$0, 1(%eax)
	je	L2197
L1985:
	leal	-1048(%ebp), %eax
	movl	$LC153, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edi, (%esp)
	call	_sscanf
	testl	%eax, %eax
	jne	L2203
L2197:
	movl	-1052(%ebp), %ebx
L1982:
	movl	%ebx, -1056(%ebp)
	xorl	%edi, %edi
	jmp	L1988
	.p2align 4,,10
	.p2align 3
L2204:
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, -1052(%ebp)
	call	_strcpy
	movl	-1052(%ebp), %ecx
	movb	$0, (%ecx,%ebx)
	movl	%ecx, _scripthist(,%edi,4)
	addl	$1, %edi
	cmpl	$32, %edi
	je	L2198
L1988:
	movl	%edi, 8(%esp)
	movl	$LC156, 4(%esp)
	movl	%esi, (%esp)
	call	_sprintf
	movl	-1056(%ebp), %eax
	movl	%esi, %ecx
	movl	%esi, %edx
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L2198
	movl	%esi, (%esp)
	call	_strlen
	leal	1(%eax), %edx
	movl	%eax, %ebx
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -1052(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	jne	L2204
	movl	-1052(%ebp), %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L2202:
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	movl	%esi, %ecx
	movl	$LC117, %edx
	movl	%eax, %edi
	movl	%ebx, %eax
	call	__ZL10readconfigP6_iobufPKcPcj.part.0.constprop.0
	testl	%eax, %eax
	je	L1947
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	movl	%edi, _g_windowPos
	movl	%eax, _g_windowPos+4
	movb	$1, _g_windowPosValid
	jmp	L1947
	.p2align 4,,10
	.p2align 3
L2200:
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	___mingw_strtod
	movss	LC89, %xmm0
	fucomi	%st(0), %st
	jp	L2209
	movss	%xmm0, -1052(%ebp)
	flds	-1052(%ebp)
	fcomip	%st(1), %st
	jbe	L2205
	fstp	%st(0)
	jmp	L1930
	.p2align 4,,10
	.p2align 3
L2209:
	fstp	%st(0)
L1930:
	movss	%xmm0, _g_videoGamma
	jmp	L1926
	.p2align 4,,10
	.p2align 3
L2201:
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	___mingw_strtod
	movss	LC90, %xmm0
	fucomi	%st(0), %st
	jp	L2210
	movss	%xmm0, -1052(%ebp)
	flds	-1052(%ebp)
	fcomip	%st(1), %st
	jbe	L2206
	fstp	%st(0)
	jmp	L1935
	.p2align 4,,10
	.p2align 3
L2210:
	fstp	%st(0)
L1935:
	movss	%xmm0, _g_videoContrast
	jmp	L1931
	.p2align 4,,10
	.p2align 3
L2198:
	movl	_osd, %edx
	movl	%edi, _scripthistend
	movl	-1056(%ebp), %ebx
	movl	1084(%edx), %ecx
	cmpl	%ecx, %edi
	cmovle	%edi, %ecx
	testl	%ecx, %ecx
	jle	L1989
	movl	%ebx, -1056(%ebp)
	xorl	%esi, %esi
	jmp	L1991
	.p2align 4,,10
	.p2align 3
L2208:
	movl	-1052(%ebp), %edx
	movl	%eax, 12(%edx,%ebx,4)
	movl	_osd, %eax
	movl	12(%eax,%ebx,4), %ebx
	movl	%edi, (%esp)
	call	_strlen
	movl	$511, %edx
	movl	%edi, 4(%esp)
	addl	$1, %eax
	movl	%ebx, (%esp)
	cmpl	%edx, %eax
	cmova	%edx, %eax
	addl	$1, %esi
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	_osd, %edx
	movb	$0, 511(%ebx)
	movl	_scripthistend, %edi
	movl	1084(%edx), %eax
	addl	$1, 1092(%edx)
	addl	$1, 1096(%edx)
	cmpl	%eax, %edi
	cmovle	%edi, %eax
	cmpl	%eax, %esi
	jge	L2207
L1991:
	leal	12(%esi), %ebx
	movl	12(%edx,%ebx,4), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	_osd, %edx
	movl	%esi, %eax
	subl	$4, %esp
	notl	%eax
	addl	_scripthistend, %eax
	movl	$0, 12(%edx,%ebx,4)
	movl	_scripthist(,%eax,4), %edi
	movl	%edx, -1052(%ebp)
	movl	$512, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	jne	L2208
	movl	$512, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L2207:
	movl	-1056(%ebp), %ebx
L1989:
	movl	%edi, %edx
	sarl	$31, %edx
	shrl	$27, %edx
	leal	(%edi,%edx), %eax
	andl	$31, %eax
	subl	%edx, %eax
	movl	%eax, _scripthistend
	movl	%ebx, (%esp)
	call	_fclose
	xorl	%eax, %eax
L1915:
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
L2206:
	.cfi_restore_state
	flds	LC104
	fxch	%st(1)
	fcomi	%st(1), %st
	fcmovnbe	%st(1), %st
	fstp	%st(1)
	fstps	-1052(%ebp)
	movss	-1052(%ebp), %xmm0
	movss	%xmm0, _g_videoContrast
	jmp	L1931
	.p2align 4,,10
	.p2align 3
L2205:
	flds	LC102
	fxch	%st(1)
	fcomi	%st(1), %st
	fcmovnbe	%st(1), %st
	fstp	%st(1)
	fstps	-1052(%ebp)
	movss	-1052(%ebp), %xmm0
	movss	%xmm0, _g_videoGamma
	jmp	L1926
L1992:
	movl	$-1, %eax
	jmp	L1915
	.cfi_endproc
LFE155:
	.section .rdata,"dr"
LC158:
	.ascii "software\0"
LC159:
	.ascii "OpenGL\0"
LC162:
	.ascii "%dx%d %s\0"
	.text
	.p2align 4
	.globl	__ZL12PopulateFormv.lto_priv.0
	.def	__ZL12PopulateFormv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL12PopulateFormv.lto_priv.0:
LFB158:
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
	subl	$112, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	__imp__GetDlgItem@8, %edi
	movl	$102, 4(%esp)
	movl	__ZL5pages.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*%edi
	movl	$__ZL8settings.lto_priv.0+8, %edx
	subl	$8, %esp
	movl	%eax, -92(%ebp)
	movl	$1, 4(%esp)
	movl	__ZL8settings.lto_priv.0, %eax
	movl	%eax, (%esp)
	movl	__ZL8settings.lto_priv.0+12, %ecx
	movl	$__ZL8settings.lto_priv.0+4, %eax
	call	_videoCheckMode
	movl	%eax, -100(%ebp)
	cmpl	$-1, %eax
	je	L2230
L2212:
	movl	__ZL8settings.lto_priv.0, %eax
	xorl	%ebx, %ebx
	movl	$100, 4(%esp)
	testl	%eax, %eax
	movl	__ZL5pages.lto_priv.0, %eax
	setne	%bl
	movl	%eax, (%esp)
	call	*%edi
	subl	$8, %esp
	movl	%ebx, 8(%esp)
	movl	__imp__SendMessageA@16, %ebx
	movl	$0, 12(%esp)
	movl	$241, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	movl	__ZL8settings.lto_priv.0+16, %edx
	xorl	%eax, %eax
	subl	$16, %esp
	testl	%edx, %edx
	movl	$103, 4(%esp)
	setne	%al
	movl	%eax, %esi
	movl	__ZL5pages.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*%edi
	subl	$8, %esp
	movl	%esi, 8(%esp)
	movl	$0, 12(%esp)
	movl	$241, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	movl	__ZL8settings.lto_priv.0+20, %ecx
	xorl	%eax, %eax
	subl	$16, %esp
	testl	%ecx, %ecx
	movl	$105, 4(%esp)
	setne	%al
	movl	%eax, %esi
	movl	__ZL5pages.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*%edi
	subl	$8, %esp
	movl	%esi, 8(%esp)
	movl	$0, 12(%esp)
	movl	$241, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	subl	$16, %esp
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$331, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	*%ebx
	movl	_validmodecnt, %esi
	subl	$16, %esp
	testl	%esi, %esi
	jle	L2211
	movl	$_validmode, %edx
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L2224:
	movzbl	9(%edx), %eax
	cmpl	__ZL8settings.lto_priv.0, %eax
	jne	L2222
	cmpb	$8, 8(%edx)
	movl	$LC159, %ecx
	leal	-88(%ebp), %esi
	movl	$LC158, %eax
	cmovne	%ecx, %eax
	movl	%eax, 16(%esp)
	movl	4(%edx), %eax
	movl	%eax, 12(%esp)
	movl	(%edx), %eax
	movl	%edx, -96(%ebp)
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	movl	$LC162, 4(%esp)
	call	_sprintf
	movl	%esi, 12(%esp)
	movl	$0, 8(%esp)
	movl	$323, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	*%ebx
	subl	$16, %esp
	movl	%eax, %esi
	movl	%edi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$337, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	*%ebx
	movl	-96(%ebp), %edx
	subl	$16, %esp
	cmpl	%edi, -100(%ebp)
	je	L2231
L2222:
	addl	$1, %edi
	addl	$16, %edx
	cmpl	%edi, _validmodecnt
	jg	L2224
L2211:
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
L2231:
	.cfi_restore_state
	movl	$0, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$334, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	*%ebx
	movl	-96(%ebp), %edx
	subl	$16, %esp
	jmp	L2222
	.p2align 4,,10
	.p2align 3
L2230:
	movups	LC160, %xmm0
	movl	$8, %eax
	xorl	%edx, %edx
	movl	__ZL8settings.lto_priv.0+12, %ecx
	movl	%eax, -72(%ebp)
	xorl	%eax, %eax
	movl	%edx, -68(%ebp)
	movl	$32, %edx
	movups	%xmm0, -88(%ebp)
	jmp	L2214
	.p2align 4
	.p2align 4,,10
	.p2align 3
L2232:
	addl	$1, %eax
	movl	-88(%ebp,%eax,4), %edx
	testl	%edx, %edx
	je	L2212
L2214:
	cmpl	%edx, %ecx
	jle	L2232
	movl	-88(%ebp,%eax,4), %esi
	testl	%esi, %esi
	je	L2212
	leal	-84(%ebp,%eax,4), %ebx
L2217:
	movl	$1, 4(%esp)
	movl	__ZL8settings.lto_priv.0, %eax
	movl	%esi, %ecx
	movl	$__ZL8settings.lto_priv.0+8, %edx
	movl	%eax, (%esp)
	movl	$__ZL8settings.lto_priv.0+4, %eax
	call	_videoCheckMode
	cmpl	$-1, %eax
	je	L2233
	movl	%eax, -100(%ebp)
	movl	%esi, __ZL8settings.lto_priv.0+12
	jmp	L2212
	.p2align 4,,10
	.p2align 3
L2233:
	movl	(%ebx), %esi
	addl	$4, %ebx
	testl	%esi, %esi
	jne	L2217
	movl	%eax, -100(%ebp)
	jmp	L2212
	.cfi_endproc
LFE158:
	.p2align 4
	.def	__ZL14ConfigPageProcP6HWND__jjl@16;	.scl	3;	.type	32;	.endef
__ZL14ConfigPageProcP6HWND__jjl@16:
LFB159:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-8, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x78,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x7c
	subl	$24, %esp
	movl	(%ecx), %edx
	movl	8(%ecx), %eax
	movl	12(%ecx), %ebx
	cmpl	$273, 4(%ecx)
	je	L2250
L2235:
	leal	-8(%ebp), %esp
	xorl	%eax, %eax
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
	ret	$16
	.p2align 4,,10
	.p2align 3
L2250:
	.cfi_restore_state
	movzwl	%ax, %ecx
	cmpl	$103, %ecx
	je	L2236
	ja	L2237
	cmpl	$100, %ecx
	je	L2238
	cmpl	$102, %ecx
	jne	L2235
	shrl	$16, %eax
	cmpl	$1, %eax
	je	L2251
L2242:
	leal	-8(%ebp), %esp
	movl	$1, %eax
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
	ret	$16
	.p2align 4,,10
	.p2align 3
L2237:
	.cfi_restore_state
	cmpl	$105, %ecx
	jne	L2235
	movl	$105, 4(%esp)
	movl	%edx, (%esp)
	call	*__imp__IsDlgButtonChecked@8
	subl	$8, %esp
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, __ZL8settings.lto_priv.0+20
	jmp	L2242
	.p2align 4,,10
	.p2align 3
L2236:
	movl	$103, 4(%esp)
	movl	%edx, (%esp)
	call	*__imp__IsDlgButtonChecked@8
	subl	$8, %esp
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, __ZL8settings.lto_priv.0+16
	jmp	L2242
	.p2align 4,,10
	.p2align 3
L2238:
	movl	__ZL8settings.lto_priv.0, %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	sete	%al
	movl	%eax, __ZL8settings.lto_priv.0
	call	__ZL12PopulateFormv.lto_priv.0
	jmp	L2242
	.p2align 4,,10
	.p2align 3
L2251:
	movl	__imp__SendMessageA@16, %edx
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$327, 4(%esp)
	movl	%ebx, (%esp)
	movl	%edx, -12(%ebp)
	call	*%edx
	subl	$16, %esp
	cmpl	$-1, %eax
	je	L2242
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$336, 4(%esp)
	movl	%ebx, (%esp)
	movl	-12(%ebp), %edx
	call	*%edx
	subl	$16, %esp
	cmpl	$-1, %eax
	je	L2242
	sall	$4, %eax
	movlps	_validmode(%eax), %xmm0
	movzbl	_validmode+8(%eax), %eax
	movlps	%xmm0, __ZL8settings.lto_priv.0+4
	movl	%eax, __ZL8settings.lto_priv.0+12
	jmp	L2242
	.cfi_endproc
LFE159:
	.p2align 4
	.globl	__ZL7SetPagei.lto_priv.0
	.def	__ZL7SetPagei.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL7SetPagei.lto_priv.0:
LFB161:
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
	subl	$20, %esp
	.cfi_def_cfa_offset 40
	movl	__ZL10startupdlg.lto_priv.0, %eax
	movl	__imp__GetDlgItem@8, %esi
	movl	$101, 4(%esp)
	movl	%eax, (%esp)
	call	*%esi
	.cfi_def_cfa_offset 32
	movl	__imp__SendMessageA@16, %ebp
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$4875, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 16(%esp)
	call	*%ebp
	.cfi_def_cfa_offset 24
	movl	__imp__ShowWindow@8, %edi
	subl	$16, %esp
	.cfi_def_cfa_offset 40
	movl	$0, 4(%esp)
	movl	__ZL5pages.lto_priv.0(,%eax,4), %eax
	movl	%eax, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 32
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	movl	16(%esp), %edx
	movl	%ebx, 8(%esp)
	movl	$0, 12(%esp)
	movl	%edx, (%esp)
	movl	$4876, 4(%esp)
	call	*%ebp
	.cfi_def_cfa_offset 24
	subl	$16, %esp
	.cfi_def_cfa_offset 40
	movl	$5, 4(%esp)
	movl	__ZL5pages.lto_priv.0(,%ebx,4), %eax
	movl	%eax, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 32
	movl	__ZL10startupdlg.lto_priv.0, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	movl	%ebx, __ZL4mode
	movl	$101, 4(%esp)
	movl	%eax, (%esp)
	call	*%esi
	.cfi_def_cfa_offset 32
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	movl	%eax, (%esp)
	call	*__imp__SetFocus@4
	.cfi_def_cfa_offset 36
	subl	$4, %esp
	.cfi_def_cfa_offset 40
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
LFE161:
	.p2align 4
	.globl	__ZL12EnableConfigi.lto_priv.0
	.def	__ZL12EnableConfigi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL12EnableConfigi.lto_priv.0:
LFB162:
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
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	__ZL10startupdlg.lto_priv.0, %eax
	movl	__imp__GetDlgItem@8, %edi
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 16
	movl	__imp__EnableWindow@8, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	.cfi_def_cfa_offset 16
	movl	__ZL5pages.lto_priv.0, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	$100, 4(%esp)
	movl	%eax, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 16
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	.cfi_def_cfa_offset 16
	movl	__ZL5pages.lto_priv.0, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	$102, 4(%esp)
	movl	%eax, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 16
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	.cfi_def_cfa_offset 16
	movl	__ZL5pages.lto_priv.0, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	$105, 4(%esp)
	movl	%eax, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 16
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	.cfi_def_cfa_offset 16
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	addl	$8, %esp
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
LFE162:
	.data
	.align 4
__ZZL15startup_dlgprocP6HWND__jjlE14textMessageLog:
	.ascii "Message Log\0"
	.align 4
__ZZL15startup_dlgprocP6HWND__jjlE9textSetup:
	.ascii "Setup\0"
.lcomm __ZZL15startup_dlgprocP6HWND__jjlE4hbmp,4,4
.lcomm __ZL4mode,4,4
	.globl	_validmodecnt
	.bss
	.align 4
_validmodecnt:
	.space 4
	.globl	_validmode
	.align 32
_validmode:
	.space 4096
	.globl	__ZL5pages.lto_priv.0
	.align 4
__ZL5pages.lto_priv.0:
	.space 8
	.globl	_g_windowPosValid
_g_windowPosValid:
	.space 1
.lcomm __ZZ16getstring_simpleE3buf,128,32
.lcomm _lastpm16buf,156,32
.lcomm __ZL7fillist,2560,32
.lcomm __ZL11currentlist,4,4
.lcomm __ZL12finddirshigh,4,4
.lcomm _tokenready,1,1
.lcomm _scriptbuffer,4,4
	.globl	_nextvoxid
	.align 4
_nextvoxid:
	.space 4
.lcomm __ZL9kvxloaded,1,1
	.globl	_mapversion
	.data
	.align 4
_mapversion:
	.long	7
.lcomm _grponlymode,4,4
.lcomm __ZL18saveboard_canceled,4,4
.lcomm __ZL19saveboard_savedtags,4,4
.lcomm __ZL22saveboard_fixedsprites,4,4
	.section .rdata,"dr"
	.align 4
LC89:
	.long	1061158912
	.align 4
LC90:
	.long	1056964608
	.align 4
LC102:
	.long	1067450368
	.align 4
LC104:
	.long	1069547520
	.align 16
LC160:
	.long	32
	.long	24
	.long	16
	.long	15
	.def	___divdi3;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_sectorofwall;	.scl	2;	.type	32;	.endef
	.def	_videoBeginDrawing;	.scl	2;	.type	32;	.endef
	.def	_videoEndDrawing;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_printext16;	.scl	2;	.type	32;	.endef
	.def	_printext256;	.scl	2;	.type	32;	.endef
	.def	_rewind;	.scl	2;	.type	32;	.endef
	.def	_fgets;	.scl	2;	.type	32;	.endef
	.def	_strcasecmp;	.scl	2;	.type	32;	.endef
	.def	__Z10VM_OnEventii;	.scl	2;	.type	32;	.endef
	.def	__Z13ResetBuildFAFv;	.scl	2;	.type	32;	.endef
	.def	__Z12ResetSpritesv;	.scl	2;	.type	32;	.endef
	.def	_saveboard;	.scl	2;	.type	32;	.endef
	.def	__Z14SetSpriteExtrav;	.scl	2;	.type	32;	.endef
	.def	_open;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	_write;	.scl	2;	.type	32;	.endef
	.def	_close;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.2;	.scl	2;	.type	32;	.endef
	.def	_editorGet2dScreenCoordinates;	.scl	2;	.type	32;	.endef
	.def	_getflorzofslopeptr.part.0;	.scl	2;	.type	32;	.endef
	.def	__ZL14yax_tweakwallsss.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_deletesprite;	.scl	2;	.type	32;	.endef
	.def	_yax_setbunch.part.0;	.scl	2;	.type	32;	.endef
	.def	_do_deletespritesect;	.scl	2;	.type	32;	.endef
	.def	_do_insertsprite_at_headofsect;	.scl	2;	.type	32;	.endef
	.def	_checksectorpointer;	.scl	2;	.type	32;	.endef
	.def	_inside;	.scl	2;	.type	32;	.endef
	.def	_spriteoncfz;	.scl	2;	.type	32;	.endef
	.def	_wallength;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_klistpath;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	_editorDraw2dLine;	.scl	2;	.type	32;	.endef
	.def	_lastwall;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_gettoken;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_getsymbol;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_addsymbolvalue;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_fromfile;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_close;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_getlinum;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_videoShowFrame.part.0;	.scl	2;	.type	32;	.endef
	.def	_handleevents;	.scl	2;	.type	32;	.endef
	.def	_message;	.scl	2;	.type	32;	.endef
	.def	_Bcanonicalisefilename.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	_strncpy;	.scl	2;	.type	32;	.endef
	.def	_Bcorrectfilename.isra.0;	.scl	2;	.type	32;	.endef
	.def	_strcat;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_strncasecmp;	.scl	2;	.type	32;	.endef
	.def	_hash_findcase;	.scl	2;	.type	32;	.endef
	.def	_select_sprite_tag;	.scl	2;	.type	32;	.endef
	.def	_taglab_add;	.scl	2;	.type	32;	.endef
	.def	_M32_DrawRoomsAndMasks;	.scl	2;	.type	32;	.endef
	.def	_ExtCheckKeys;	.scl	2;	.type	32;	.endef
	.def	_updatesector;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z10OSD_PrintfPKcz;	.scl	2;	.type	32;	.endef
	.def	_chdir;	.scl	2;	.type	32;	.endef
	.def	_getcwd;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_wm_setapptitle;	.scl	2;	.type	32;	.endef
	.def	_engineLoadMHK;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_engineLoadBoard;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_taglab_init;	.scl	2;	.type	32;	.endef
	.def	_kopen4load.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z20kfilelength_internaliPKhPiS1_.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z14kread_internaliPviPKhPKiPi;	.scl	2;	.type	32;	.endef
	.def	_kclose;	.scl	2;	.type	32;	.endef
	.def	_sscanf;	.scl	2;	.type	32;	.endef
	.def	_CheckMapCorruption.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
	.def	__ZL22enginePrepareLoadBoardiP4vec3IiEPsS2_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z8GetTokenh.part.0;	.scl	2;	.type	32;	.endef
	.def	_atol;	.scl	2;	.type	32;	.endef
	.def	_qloadkvx;	.scl	2;	.type	32;	.endef
	.def	__ZL15convertv6sectv7P12sectortypev6P12sectortypev7.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL15convertv6wallv7P10walltypev6P10walltypev7.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL14convertv6sprv7P12spritetypev6P12spritetypev7.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL12check_spritei.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_ktell;	.scl	2;	.type	32;	.endef
	.def	__ZL21engineFinishLoadBoardPK4vec3IiEPssc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL16collect_sectors1PsPhS_sii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.1;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_yax_getnextwall;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	_strtol;	.scl	2;	.type	32;	.endef
	.def	___mingw_strtod;	.scl	2;	.type	32;	.endef
	.def	_videoCheckMode;	.scl	2;	.type	32;	.endef
