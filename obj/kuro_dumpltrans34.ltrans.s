	.file	"<artificial>"
	.text
	.p2align 4
	.def	__ZL15fixtransparencyP7coltype4vec2IiES2_i;	.scl	3;	.type	32;	.endef
__ZL15fixtransparencyP7coltype4vec2IiES2_i:
LFB0:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movl	%esi, 36(%esp)
	.cfi_offset 6, -16
	movl	60(%esp), %esi
	movl	%ebx, 32(%esp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	52(%esp), %edx
	movl	%ebp, 44(%esp)
	.cfi_offset 5, -8
	movl	56(%esp), %ebp
	testl	$3, %esi
	je	L1
	subl	$1, %ebp
	andl	$4, %esi
	movl	%edi, 40(%esp)
	.cfi_offset 7, -12
	leal	-1(%edx), %edi
	movl	%ebp, 16(%esp)
	jne	L118
	movl	16(%esp), %esi
	movl	%edi, 8(%esp)
	movl	%esi, 12(%esp)
L3:
	movl	16(%esp), %ebx
	testl	%ebx, %ebx
	js	L99
	testl	%edi, %edi
	js	L99
	leal	0(,%edx,4), %esi
	movl	%edi, 28(%esp)
	imull	%ebx, %edx
	movl	%esi, 20(%esp)
	negl	%esi
	movl	%esi, 4(%esp)
	addl	%edi, %edx
	leal	(%eax,%edx,4), %ebx
	movl	16(%esp), %edx
	movl	%ebx, %eax
	testl	%edx, %edx
	je	L119
	.p2align 4
	.p2align 3
L45:
	movl	%ebx, 24(%esp)
	movl	28(%esp), %edx
	jmp	L5
	.p2align 4,,10
	.p2align 3
L26:
	cmpb	$0, 7(%eax)
	je	L116
	movzbl	4(%eax), %ebp
	movl	4(%esp), %ecx
	addl	$1, %edi
	addl	%ebp, %esi
	movzbl	5(%eax), %ebp
	addl	%ebp, %ebx
	movzbl	6(%eax), %ebp
	addl	%ebp, (%esp)
	cmpb	$0, 3(%eax,%ecx)
	jne	L32
	movl	16(%esp), %ebp
	cmpl	%ebp, 12(%esp)
	jg	L33
L108:
	cmpl	$1, %edi
	je	L31
L34:
	addl	$1, %esi
	addl	$1, %ebx
	sarl	%esi
	sarl	%ebx
	movl	%esi, %ecx
	movb	%bl, 1(%eax)
	movb	%cl, (%eax)
	movl	(%esp), %ecx
	addl	$1, %ecx
	sarl	%ecx
	movb	%cl, 2(%eax)
	.p2align 5
	.p2align 4
	.p2align 3
L24:
	subl	$1, %edx
	subl	$4, %eax
	cmpl	$-1, %edx
	je	L120
L5:
	cmpb	$0, 3(%eax)
	jne	L24
	testl	%edx, %edx
	je	L49
	cmpb	$0, -1(%eax)
	je	L49
	movzbl	-2(%eax), %edi
	movzbl	-4(%eax), %esi
	movzbl	-3(%eax), %ebx
	movl	%edi, (%esp)
	movl	$1, %edi
L25:
	cmpl	%edx, 8(%esp)
	jg	L26
L116:
	movl	4(%esp), %ecx
	cmpb	$0, 3(%eax,%ecx)
	jne	L32
	movl	16(%esp), %ebp
	cmpl	%ebp, 12(%esp)
	jg	L33
	cmpl	$1, %edi
	jne	L24
L31:
	movb	%bl, 1(%eax)
	movzbl	(%esp), %ebx
	movl	%esi, %ecx
	subl	$1, %edx
	movb	%cl, (%eax)
	subl	$4, %eax
	movb	%bl, 6(%eax)
	cmpl	$-1, %edx
	jne	L5
	.p2align 4
	.p2align 3
L120:
	subl	$1, 16(%esp)
	movl	16(%esp), %edx
	movl	24(%esp), %ebx
	addl	4(%esp), %ebx
	movl	%ebx, %eax
	testl	%edx, %edx
	jne	L45
L119:
	movl	28(%esp), %edi
	jmp	L23
	.p2align 4,,10
	.p2align 3
L7:
	cmpb	$0, -1(%eax)
	jne	L21
	cmpl	%edi, 8(%esp)
	jg	L46
	movl	12(%esp), %edx
	testl	%edx, %edx
	jle	L6
	movl	20(%esp), %esi
	cmpb	$0, 3(%eax,%esi)
	je	L6
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	xorl	%edx, %edx
	.p2align 4
	.p2align 3
L11:
	movl	20(%esp), %ebp
	movzbl	(%eax,%ebp), %ebp
	addl	%ebp, %ebx
	movl	20(%esp), %ebp
	movzbl	1(%eax,%ebp), %ebp
	addl	%ebp, %ecx
	movl	20(%esp), %ebp
	movzbl	2(%eax,%ebp), %ebp
	addl	%ebp, %edx
	leal	1(%esi), %ebp
	cmpl	$2, %esi
	je	L15
	cmpl	$1, %ebp
	je	L10
L16:
	addl	$1, %ebx
	addl	$1, %ecx
	addl	$1, %edx
	sarl	%ebx
	sarl	%ecx
	sarl	%edx
	movb	%bl, (%eax)
	movb	%cl, 1(%eax)
	movb	%dl, 2(%eax)
	.p2align 5
	.p2align 4
	.p2align 3
L6:
	subl	$1, %edi
	subl	$4, %eax
	cmpl	$-1, %edi
	je	L99
L23:
	cmpb	$0, 3(%eax)
	jne	L6
	testl	%edi, %edi
	jne	L7
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
L22:
	cmpl	%edi, 8(%esp)
	jle	L106
L8:
	cmpb	$0, 7(%eax)
	je	L106
	movzbl	4(%eax), %ebp
	addl	$1, %esi
	addl	%ebp, %ebx
	movzbl	5(%eax), %ebp
	addl	%ebp, %ecx
	movzbl	6(%eax), %ebp
	addl	%ebp, %edx
	movl	12(%esp), %ebp
	testl	%ebp, %ebp
	jg	L19
L100:
	cmpl	$1, %esi
	jne	L16
L10:
	subl	$1, %edi
	movb	%bl, (%eax)
	subl	$4, %eax
	movb	%cl, 5(%eax)
	movb	%dl, 6(%eax)
	cmpl	$-1, %edi
	jne	L23
	.p2align 4
	.p2align 3
L99:
	movl	40(%esp), %edi
	.cfi_restore 7
L1:
	movl	32(%esp), %ebx
	movl	36(%esp), %esi
	movl	44(%esp), %ebp
	addl	$48, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
L118:
	.cfi_def_cfa_offset 52
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpl	%ebx, %edi
	leal	-1(%ebx), %esi
	cmovg	%ebx, %edi
	cmpl	%ecx, %ebp
	movl	%esi, 8(%esp)
	leal	-1(%ecx), %esi
	cmovg	%ecx, %ebp
	movl	%esi, 12(%esp)
	movl	%ebp, 16(%esp)
	jmp	L3
	.p2align 4,,10
	.p2align 3
L49:
	movl	$0, (%esp)
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	jmp	L25
	.p2align 4,,10
	.p2align 3
L32:
	movl	4(%esp), %ecx
	addl	$1, %edi
	movzbl	(%eax,%ecx), %ebp
	addl	%ebp, %esi
	movzbl	1(%eax,%ecx), %ebp
	addl	%ebp, %ebx
	movzbl	2(%eax,%ecx), %ebp
	addl	%ebp, (%esp)
	movl	16(%esp), %ebp
	cmpl	%ebp, 12(%esp)
	jle	L35
	movl	20(%esp), %ecx
	cmpb	$0, 3(%eax,%ecx)
	je	L35
L36:
	movl	20(%esp), %ecx
	movzbl	(%eax,%ecx), %ebp
	addl	%ebp, %esi
	movzbl	1(%eax,%ecx), %ebp
	addl	%ebp, %ebx
	movzbl	2(%eax,%ecx), %ebp
	addl	%ebp, (%esp)
	leal	1(%edi), %ebp
	cmpl	$2, %edi
	je	L41
	cmpl	$4, %ebp
	je	L42
	cmpl	$1, %ebp
	jne	L34
	jmp	L31
	.p2align 4,,10
	.p2align 3
L35:
	cmpl	$3, %edi
	jne	L108
L41:
	imull	$85, %esi, %esi
	imull	$85, %ebx, %ebx
	leal	128(%esi), %ecx
	movb	%ch, (%eax)
	imull	$85, (%esp), %ecx
	subl	$-128, %ebx
	movb	%bh, 1(%eax)
	subl	$-128, %ecx
	movb	%ch, 2(%eax)
	jmp	L24
	.p2align 4,,10
	.p2align 3
L33:
	movl	20(%esp), %ecx
	cmpb	$0, 3(%eax,%ecx)
	jne	L36
	cmpl	$1, %edi
	je	L31
	cmpl	$2, %edi
	je	L34
	jmp	L24
	.p2align 4,,10
	.p2align 3
L42:
	addl	$2, %esi
	addl	$2, %ebx
	sarl	$2, %esi
	sarl	$2, %ebx
	movl	%esi, %ecx
	movb	%bl, 1(%eax)
	movb	%cl, (%eax)
	movl	(%esp), %ecx
	addl	$2, %ecx
	sarl	$2, %ecx
	movb	%cl, 2(%eax)
	jmp	L24
	.p2align 4,,10
	.p2align 3
L106:
	movl	12(%esp), %ebp
	testl	%ebp, %ebp
	jg	L9
L102:
	cmpl	$1, %esi
	jne	L6
	jmp	L10
	.p2align 4,,10
	.p2align 3
L21:
	movzbl	-4(%eax), %ebx
	movzbl	-3(%eax), %ecx
	movl	$1, %esi
	movzbl	-2(%eax), %edx
	jmp	L22
	.p2align 4,,10
	.p2align 3
L9:
	movl	20(%esp), %ebp
	cmpb	$0, 3(%eax,%ebp)
	jne	L11
	jmp	L102
	.p2align 4,,10
	.p2align 3
L15:
	imull	$85, %ebx, %ebx
	imull	$85, %ecx, %ecx
	imull	$85, %edx, %edx
	subl	$-128, %ebx
	subl	$-128, %ecx
	movb	%bh, (%eax)
	subl	$-128, %edx
	movb	%ch, 1(%eax)
	movb	%dh, 2(%eax)
	jmp	L6
	.p2align 4,,10
	.p2align 3
L46:
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	L8
	.p2align 4,,10
	.p2align 3
L19:
	movl	20(%esp), %ebp
	cmpb	$0, 3(%eax,%ebp)
	jne	L11
	jmp	L100
	.cfi_endproc
LFE0:
	.p2align 4
	.def	__ZL24Polymost_SendTexToDriveri4vec2IiEiPK7coltypeii;	.scl	3;	.type	32;	.endef
__ZL24Polymost_SendTexToDriveri4vec2IiEiPK7coltypeii:
LFB1:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$36, %esp
	.cfi_def_cfa_offset 44
	testb	$1, %al
	movl	48(%esp), %eax
	movl	56(%esp), %ebx
	movl	$33639, 28(%esp)
	movl	%eax, 32(%esp)
	movl	44(%esp), %eax
	movl	%eax, 24(%esp)
	je	L122
	movl	%edx, 12(%esp)
	movl	52(%esp), %edx
	movl	%ebx, 4(%esp)
	movl	$0, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	%edx, 8(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexImage2D
	.cfi_def_cfa_offset 8
	subl	$36, %esp
	.cfi_def_cfa_offset 44
	addl	$36, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L122:
	.cfi_restore_state
	movl	%ebx, 4(%esp)
	movl	%ecx, 20(%esp)
	movl	%edx, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexSubImage2D
	.cfi_def_cfa_offset 8
	subl	$36, %esp
	.cfi_def_cfa_offset 44
	addl	$36, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE1:
	.p2align 4
	.def	__ZL21polymost_setuptextureii;	.scl	3;	.type	32;	.endef
__ZL21polymost_setuptextureii:
LFB2:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%eax, %edi
	movl	$5, %eax
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	_gltexfiltermode, %ebx
	cmpl	%eax, %ebx
	cmovg	%eax, %ebx
	xorl	%eax, %eax
	testl	%ebx, %ebx
	cmovs	%eax, %ebx
	movl	%ebx, _gltexfiltermode
	cmpl	$-1, %edx
	je	L140
	movl	$9729, %eax
	movl	$5, %ebx
	movl	$10, %esi
L126:
	addl	%ebx, %esi
	movl	%eax, 8(%esp)
	movl	$10240, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 16
	movl	_glfiltermodes+4(,%esi,4), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, 8(%esp)
	movl	$10241, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 16
	movl	_glad_glTexParameterf, %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	testl	$512, %edi
	je	L127
	cmpl	$3, _rendmode
	je	L141
L127:
	movss	LC0, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	_glanisotropy, %xmm1
	comiss	%xmm1, %xmm0
	jb	L142
L128:
	movl	$34046, 4(%esp)
	movl	$3553, (%esp)
	movss	%xmm0, 8(%esp)
	call	*%eax
	.cfi_def_cfa_offset 16
	movl	_glad_glTexParameteri, %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	andl	$4, %edi
	jne	L132
	movl	$10497, 8(%esp)
	movl	$10242, 4(%esp)
	movl	$3553, (%esp)
	call	*%eax
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	$10497, 8(%esp)
	movl	$10243, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
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
L132:
	.cfi_restore_state
	movl	$33071, 8(%esp)
	movl	$10242, 4(%esp)
	movl	$3553, (%esp)
	call	*%eax
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	$33071, 8(%esp)
	movl	$10243, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
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
L142:
	.cfi_restore_state
	movss	_glinfo+16, %xmm2
	movaps	%xmm2, %xmm0
	cmpnless	%xmm1, %xmm0
	andps	%xmm0, %xmm1
	andnps	%xmm2, %xmm0
	orps	%xmm1, %xmm0
	jmp	L128
	.p2align 4,,10
	.p2align 3
L140:
	leal	(%ebx,%ebx), %esi
	leal	(%esi,%ebx), %eax
	movl	_glfiltermodes+8(,%eax,4), %eax
	jmp	L126
	.p2align 4,,10
	.p2align 3
L141:
	movl	_r_useindexedcolortextures, %ecx
	testl	%ecx, %ecx
	je	L127
	movss	LC0, %xmm0
	movl	_gltexfiltermode, %edx
	testl	%edx, %edx
	je	L128
	jmp	L127
	.cfi_endproc
LFE2:
	.p2align 4
	.globl	_polymer_removelight.lto_priv.0
	.def	_polymer_removelight.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_removelight.lto_priv.0:
LFB3:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%edi, 20(%esp)
	.cfi_offset 7, -12
	movswl	%ax, %edi
	imull	$270, %edi, %eax
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	leal	_prlights(%eax), %ebp
	movl	_prlights+262(%eax), %eax
	testl	%eax, %eax
	je	L144
	movl	%ebx, 12(%esp)
	movl	%esi, 16(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	%edi, %esi
	.p2align 4
	.p2align 3
L148:
	movl	(%eax), %ebx
	movzwl	248(%ebx), %edx
	leal	-1(%edx), %eax
	testl	%edx, %edx
	jne	L147
	jmp	L145
	.p2align 4
	.p2align 4,,10
	.p2align 3
L146:
	subl	$1, %eax
	jb	L145
L147:
	cmpw	184(%ebx,%eax,2), %si
	jne	L146
	leal	186(%eax,%eax), %ecx
	subl	%eax, %edx
	leal	(%ebx,%ecx), %eax
	addl	%edx, %edx
	movl	%eax, 4(%esp)
	leal	-2(%ebx,%ecx), %eax
	movl	%edx, 8(%esp)
	movl	%eax, (%esp)
	call	_memmove
	subw	$1, 248(%ebx)
L145:
	movl	262(%ebp), %eax
	movl	4(%eax), %edx
	movl	%edx, 262(%ebp)
	movl	__ZL6plpool.lto_priv.0, %edx
	movl	%eax, __ZL6plpool.lto_priv.0
	movl	%edx, 4(%eax)
	movl	$0, (%eax)
	movl	262(%ebp), %eax
	testl	%eax, %eax
	jne	L148
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	16(%esp), %esi
	.cfi_restore 6
L144:
	imull	$270, %edi, %edi
	movl	$0, _prlights+266(%edi)
	movl	$0, _prlights+262(%edi)
	movl	20(%esp), %edi
	movl	24(%esp), %ebp
	addl	$28, %esp
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE3:
	.p2align 4
	.globl	_polymer_addplanelight.lto_priv.0
	.def	_polymer_addplanelight.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_addplanelight.lto_priv.0:
LFB4:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%edx, %ecx
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%esi, 20(%esp)
	movl	%edi, 24(%esp)
	movzwl	248(%eax), %edx
	testw	%dx, %dx
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	jne	L159
	movswl	%cx, %esi
	xorl	%edi, %edi
L160:
	addl	$1, %edx
	movw	%cx, 184(%ebx,%edi,2)
	movw	%dx, 248(%ebx)
L163:
	imull	$270, %esi, %eax
	movl	_prlights+262(%eax), %edi
	testl	%edi, %edi
	je	L168
	movl	%edi, %eax
	jmp	L169
	.p2align 4
	.p2align 4,,10
	.p2align 3
L182:
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L168
L169:
	cmpl	%ebx, (%eax)
	jne	L182
L158:
	movl	16(%esp), %ebx
	movl	20(%esp), %esi
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
L159:
	.cfi_restore_state
	cmpw	$31, %dx
	je	L158
	movl	%ebp, 28(%esp)
	.cfi_offset 5, -8
	movzwl	%dx, %ebp
	leal	(%eax,%ebp,2), %esi
	jmp	L164
	.p2align 4
	.p2align 4,,10
	.p2align 3
L162:
	addl	$2, %eax
	cmpl	%eax, %esi
	je	L183
L164:
	cmpw	%cx, 184(%eax)
	jne	L162
	movl	28(%esp), %ebp
	.cfi_restore 5
	movswl	%cx, %esi
	jmp	L163
	.p2align 4,,10
	.p2align 3
L168:
	movl	__ZL6plpool.lto_priv.0, %eax
	testl	%eax, %eax
	je	L184
	imull	$270, %esi, %edx
	movl	%eax, _prlights+262(%edx)
	movl	4(%eax), %edx
	movl	%edx, __ZL6plpool.lto_priv.0
	movl	%edi, 4(%eax)
L172:
	imull	$270, %esi, %esi
	movl	_prlights+262(%esi), %eax
	movl	%ebx, (%eax)
	addl	$1, _prlights+266(%esi)
	movl	16(%esp), %ebx
	movl	20(%esp), %esi
	movl	24(%esp), %edi
	addl	$32, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L183:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movswl	%cx, %esi
	xorl	%edi, %edi
	imull	$270, %esi, %eax
	movzbl	_prlights+31(%eax), %edx
	.p2align 5
	.p2align 4
	.p2align 3
L165:
	movswl	184(%ebx,%edi,2), %eax
	imull	$270, %eax, %eax
	cmpb	%dl, _prlights+31(%eax)
	jnb	L166
	addl	$1, %edi
	cmpl	%edi, %ebp
	jne	L165
L166:
	movl	%ebp, %edx
	leal	184(%edi,%edi), %eax
	movl	%ecx, 12(%esp)
	subl	%edi, %edx
	addl	%edx, %edx
	movl	%edx, 8(%esp)
	leal	(%ebx,%eax), %edx
	leal	2(%ebx,%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_memmove
	movzwl	248(%ebx), %edx
	movl	12(%esp), %ecx
	movl	28(%esp), %ebp
	.cfi_restore 5
	jmp	L160
L184:
	movl	$8, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	testl	%eax, %eax
	je	L171
	imull	$270, %esi, %edx
	movl	%eax, _prlights+262(%edx)
	movl	%edi, 4(%eax)
	jmp	L172
L171:
	movl	$8, %eax
	movl	%ebp, 28(%esp)
	.cfi_offset 5, -8
	call	__Z13handle_memerri
	.cfi_endproc
LFE4:
	.p2align 4
	.globl	_polymer_planeinlight.isra.0
	.def	_polymer_planeinlight.isra.0;	.scl	2;	.type	32;	.endef
_polymer_planeinlight.isra.0:
LFB6:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$36, %esp
	movl	%eax, 4(%esp)
	testl	%edx, %edx
	je	L199
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	movl	%edx, %esi
	movl	%ebx, -12(%ebp)
	movl	%edi, -4(%ebp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	cmpw	$0, 24(%ecx)
	je	L187
	leal	-24(%eax), %edi
	leal	154(%ecx), %eax
	xorps	%xmm5, %xmm5
	movl	%eax, 4(%esp)
	leal	(%edx,%edx,2), %eax
	leal	234(%ecx), %ebx
	leal	(%edi,%eax,8), %eax
	movl	%eax, 8(%esp)
L190:
	movss	(%ebx), %xmm4
	movss	4(%ebx), %xmm3
	leal	-1(%esi), %edx
	movss	8(%ebx), %xmm2
	movss	12(%ebx), %xmm1
	movl	8(%esp), %eax
	.p2align 6
	.p2align 4
	.p2align 3
L188:
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
	cmpl	%eax, %edi
	jne	L188
	cmpl	$-1, %edx
	je	L196
	subl	$16, %ebx
	cmpl	%ebx, 4(%esp)
	jne	L190
	movl	-12(%ebp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	-8(%ebp), %esi
	.cfi_restore 6
	movl	$1, %eax
	movl	-4(%ebp), %edi
	.cfi_restore 7
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L187:
	.cfi_restore_state
	xorps	%xmm0, %xmm0
	xorps	%xmm3, %xmm3
	xorl	%edi, %edi
	cvtsi2ssl	4(%ecx), %xmm0
	cvtsi2ssl	16(%ecx), %xmm3
	movss	%xmm0, 12(%esp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	8(%ecx), %xmm0
	mulss	LC4, %xmm0
	movss	%xmm0, 16(%esp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	(%ecx), %xmm0
	xorps	LC2, %xmm0
	movss	%xmm0, 20(%esp)
L197:
	movss	12(%esp,%edi), %xmm1
	movl	4(%esp), %eax
	movl	%edi, (%esp)
	xorl	%ebx, %ebx
	movl	$0, 8(%esp)
	movaps	%xmm1, %xmm2
	subss	%xmm3, %xmm1
	leal	(%eax,%edi), %edx
	xorl	%eax, %eax
	addss	%xmm3, %xmm2
	.p2align 6
	.p2align 4
	.p2align 3
L195:
	movss	(%edx), %xmm0
	xorl	%ecx, %ecx
	comiss	%xmm2, %xmm0
	seta	%cl
	addl	%ecx, 8(%esp)
	xorl	%ecx, %ecx
	comiss	%xmm0, %xmm1
	seta	%cl
	addl	$1, %eax
	addl	$24, %edx
	addl	%ecx, %ebx
	cmpl	%eax, %esi
	jg	L195
	movl	(%esp), %edi
	cmpl	8(%esp), %esi
	je	L196
	cmpl	%ebx, %esi
	je	L196
	addl	$4, %edi
	cmpl	$12, %edi
	jne	L197
	movl	-12(%ebp), %ebx
	.cfi_restore 3
	movl	-8(%ebp), %esi
	.cfi_restore 6
	movl	$1, %eax
	movl	-4(%ebp), %edi
	.cfi_restore 7
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L199:
	.cfi_def_cfa 5, 8
	.cfi_offset 5, -8
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L196:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	-12(%ebp), %ebx
	.cfi_restore 3
	movl	-8(%ebp), %esi
	.cfi_restore 6
	xorl	%eax, %eax
	movl	-4(%ebp), %edi
	.cfi_restore 7
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE6:
	.p2align 4
	.globl	_polymer_processspotlight.lto_priv.0
	.def	_polymer_processspotlight.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_processspotlight.lto_priv.0:
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
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$40, %esp
	movl	12(%eax), %eax
	leal	-91(%eax), %edx
	cmpl	$9, %edx
	ja	L208
	movl	$90, 12(%ebx)
	movl	$-10, %edx
L209:
	movswl	24(%ebx), %eax
	xorps	%xmm0, %xmm0
	xorps	%xmm5, %xmm5
	xorps	%xmm2, %xmm2
	xorps	%xmm4, %xmm4
	xorps	%xmm7, %xmm7
	leal	42(%ebx), %edi
	movl	$128, %ecx
	cvtsi2ssl	%eax, %xmm0
	movswl	20(%ebx), %eax
	leal	106(%ebx), %esi
	mulss	LC5, %xmm0
	cvtsi2ssl	8(%ebx), %xmm4
	cvtsi2ssl	%eax, %xmm5
	mulss	LC5, %xmm5
	cvtsi2ssl	(%ebx), %xmm7
	cvtsi2ssl	4(%ebx), %xmm2
	movss	%xmm4, -36(%ebp)
	movss	%xmm0, -28(%ebp)
	movss	%xmm7, -32(%ebp)
	movss	%xmm5, -24(%ebp)
	movss	%xmm2, -16(%ebp)
	call	@getangle@8
	xorps	%xmm6, %xmm6
	negl	%eax
	cvtsi2ssl	%eax, %xmm6
	mulss	LC5, %xmm6
	movss	%xmm6, -20(%ebp)
	movl	$5889, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glPushMatrix
	call	*_glad_glLoadIdentity
	xorps	%xmm1, %xmm1
	movss	-28(%ebp), %xmm0
	movss	LC6, %xmm3
	movss	LC7, %xmm2
	cvtsi2ssl	16(%ebx), %xmm1
	addss	%xmm0, %xmm0
	mulss	%xmm3, %xmm1
	movss	%xmm1, (%esp)
	movss	LC0, %xmm1
	call	__Z22buildgl_setPerspectiveffff
	movl	%edi, 4(%esp)
	movl	$2983, (%esp)
	call	*_glad_glGetFloatv
	subl	$8, %esp
	call	*_glad_glPopMatrix
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glPushMatrix
	call	*_glad_glLoadIdentity
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 8(%esp)
	movl	$0x3f800000, 4(%esp)
	movss	-20(%ebp), %xmm6
	movss	%xmm6, (%esp)
	call	*_glad_glRotatef
	subl	$16, %esp
	movl	$0x00000000, 12(%esp)
	movl	$0x3f800000, 8(%esp)
	movl	$0x00000000, 4(%esp)
	movss	-24(%ebp), %xmm5
	movss	%xmm5, (%esp)
	call	*_glad_glRotatef
	movss	LC6, %xmm3
	subl	$16, %esp
	movss	%xmm3, 8(%esp)
	movss	%xmm3, 4(%esp)
	movss	%xmm3, (%esp)
	call	*_glad_glScalef
	movss	-32(%ebp), %xmm7
	subl	$12, %esp
	movss	%xmm7, 8(%esp)
	movss	-36(%ebp), %xmm4
	mulss	LC3, %xmm4
	movss	%xmm4, 4(%esp)
	movss	-16(%ebp), %xmm0
	xorps	LC2, %xmm0
	movss	%xmm0, (%esp)
	call	*_glad_glTranslatef
	subl	$12, %esp
	movl	%esi, 4(%esp)
	movl	$2982, (%esp)
	call	*_glad_glGetFloatv
	subl	$8, %esp
	call	*_glad_glPopMatrix
	leal	170(%ebx), %ecx
	movl	%edi, %edx
	movl	%esi, %eax
	call	_polymer_extractfrustum.lto_priv.0
	movl	$-1, 250(%ebx)
	movl	$0, 258(%ebx)
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
L208:
	.cfi_restore_state
	leal	-101(%eax), %edx
	cmpl	$8, %edx
	ja	L212
	movl	$110, 12(%ebx)
	movl	$10, %edx
	jmp	L209
L212:
	leal	-100(%eax), %edx
	jmp	L209
	.cfi_endproc
LFE9:
	.section .rdata,"dr"
	.align 4
LC8:
	.ascii "FBO #%d initialization failed.\0"
LC9:
	.ascii "source/build/src/polymer.cpp\0"
	.text
	.p2align 4
	.globl	_polymer_initrendertargets.lto_priv.0
	.def	_polymer_initrendertargets.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_initrendertargets.lto_priv.0:
LFB10:
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
	subl	$48, %esp
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	testl	%eax, %eax
	jne	L214
	movl	_prrts, %eax
	testl	%eax, %eax
	je	L215
	movl	__ZZ25polymer_initrendertargetsE6ocount, %ebx
	testl	%ebx, %ebx
	jle	L216
	.p2align 4
	.p2align 3
L218:
	leal	(%esi,%esi,2), %ebx
	sall	$3, %ebx
	addl	%ebx, %eax
	movl	4(%eax), %ecx
	testl	%ecx, %ecx
	je	L217
	addl	$4, %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteTextures
	movl	_prrts, %eax
	subl	$8, %esp
	addl	%ebx, %eax
	movl	$0, 4(%eax)
L217:
	addl	$8, %eax
	movl	$1, (%esp)
	addl	$1, %esi
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteTextures
	movl	_prrts, %eax
	subl	$8, %esp
	addl	%ebx, %eax
	movl	$0, 8(%eax)
	addl	$12, %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glDeleteFramebuffersEXT
	movl	_prrts, %eax
	subl	$8, %esp
	movl	$0, 12(%eax,%ebx)
	cmpl	%esi, __ZZ25polymer_initrendertargetsE6ocount
	jg	L218
L216:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, _prrts
L215:
	movl	$0, __ZZ25polymer_initrendertargetsE6ocount
L213:
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
L214:
	.cfi_restore_state
	leal	(%eax,%eax,2), %edi
	movl	%eax, __ZZ25polymer_initrendertargetsE6ocount
	sall	$3, %edi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L220
	movl	%edi, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	%ebx, _prrts
	testl	%esi, %esi
	jle	L213
	movl	$34037, (%ebx)
	movl	_prrts, %eax
	xorl	%ebx, %ebx
	movss	_ydim, %xmm1
	movss	_xdim, %xmm0
	addl	$4, %eax
	unpcklps	%xmm1, %xmm0
	movlps	%xmm0, 12(%eax)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glGenTextures
	movl	_prrts, %eax
	subl	$8, %esp
	movl	4(%eax), %edx
	movl	(%eax), %eax
	call	__Z19buildgl_bindTexturejj
	movl	_prrts, %eax
	movl	$0, 32(%esp)
	movl	$5122, 28(%esp)
	movl	$6407, 24(%esp)
	movl	$0, 20(%esp)
	movl	20(%eax), %edx
	movl	%edx, 16(%esp)
	movl	16(%eax), %edx
	movl	$6407, 8(%esp)
	movl	%edx, 12(%esp)
	movl	$0, 4(%esp)
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*_glad_glTexImage2D
	subl	$36, %esp
	movl	$0, 8(%esp)
	movl	$33084, 4(%esp)
	movl	_prrts, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$9728, 8(%esp)
	movl	$10241, 4(%esp)
	movl	_prrts, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$9728, 8(%esp)
	movl	$10240, 4(%esp)
	movl	_prrts, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$33071, 8(%esp)
	movl	$10242, 4(%esp)
	movl	_prrts, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$33071, 8(%esp)
	movl	$10243, 4(%esp)
	movl	_prrts, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*_glad_glTexParameteri
	movl	_prrts, %eax
	subl	$12, %esp
	movl	$0, -20(%ebp)
L222:
	addl	$8, %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glGenTextures
	movl	_prrts, %eax
	subl	$8, %esp
	addl	%ebx, %eax
	movl	8(%eax), %edx
	movl	(%eax), %eax
	call	__Z19buildgl_bindTexturejj
	movl	_prrts, %eax
	movl	$0, 32(%esp)
	movl	$5122, 28(%esp)
	addl	%ebx, %eax
	movl	$6402, 24(%esp)
	movl	$0, 20(%esp)
	movl	20(%eax), %edx
	movl	%edx, 16(%esp)
	movl	16(%eax), %edx
	movl	$6402, 8(%esp)
	movl	%edx, 12(%esp)
	movl	$0, 4(%esp)
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*_glad_glTexImage2D
	subl	$36, %esp
	movl	$0, 8(%esp)
	movl	$33084, 4(%esp)
	movl	_prrts, %eax
	movl	(%eax,%ebx), %eax
	movl	%eax, (%esp)
	call	*_glad_glTexParameteri
	movl	$9728, %eax
	subl	$12, %esp
	cmpl	$1, _pr_shadowfiltering
	sbbl	$-1, %eax
	movl	$10241, 4(%esp)
	movl	%eax, 8(%esp)
	movl	_prrts, %eax
	movl	(%eax,%ebx), %eax
	movl	%eax, (%esp)
	call	*_glad_glTexParameteri
	movl	$9728, %eax
	subl	$12, %esp
	cmpl	$1, _pr_shadowfiltering
	sbbl	$-1, %eax
	movl	$10240, 4(%esp)
	movl	%eax, 8(%esp)
	movl	_prrts, %eax
	movl	(%eax,%ebx), %eax
	movl	%eax, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$33071, 8(%esp)
	movl	$10242, 4(%esp)
	movl	_prrts, %eax
	movl	(%eax,%ebx), %eax
	movl	%eax, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$33071, 8(%esp)
	movl	$10243, 4(%esp)
	movl	_prrts, %eax
	movl	(%eax,%ebx), %eax
	movl	%eax, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$34894, 8(%esp)
	movl	$34892, 4(%esp)
	movl	_prrts, %eax
	movl	(%eax,%ebx), %eax
	movl	%eax, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$515, 8(%esp)
	movl	$34893, 4(%esp)
	movl	_prrts, %eax
	movl	(%eax,%ebx), %eax
	movl	%eax, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$6406, 8(%esp)
	movl	$34891, 4(%esp)
	movl	_prrts, %eax
	movl	(%eax,%ebx), %eax
	movl	%eax, (%esp)
	call	*_glad_glTexParameteri
	movl	_prrts, %eax
	subl	$12, %esp
	leal	12(%eax,%ebx), %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glGenFramebuffersEXT
	movl	_prrts, %eax
	subl	$8, %esp
	movl	12(%eax,%ebx), %eax
	movl	$36160, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glBindFramebufferEXT
	movl	_prrts, %eax
	subl	$8, %esp
	addl	%ebx, %eax
	movl	4(%eax), %edx
	testl	%edx, %edx
	je	L225
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	movl	(%eax), %eax
	movl	$36064, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$36160, (%esp)
	call	*_glad_glFramebufferTexture2DEXT
	subl	$20, %esp
L226:
	movl	_prrts, %eax
	movl	$0, 16(%esp)
	addl	%ebx, %eax
	movl	8(%eax), %edx
	movl	%edx, 12(%esp)
	movl	(%eax), %eax
	movl	$36096, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$36160, (%esp)
	call	*_glad_glFramebufferTexture2DEXT
	subl	$20, %esp
	movl	$36160, (%esp)
	call	*_glad_glCheckFramebufferStatusEXT
	subl	$4, %esp
	cmpl	$36053, %eax
	je	L227
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jg	L240
L227:
	movl	_prrts, %eax
	xorl	%edx, %edx
	movl	(%eax,%ebx), %eax
	call	__Z19buildgl_bindTexturejj
	movl	$0, 4(%esp)
	movl	$36160, (%esp)
	call	*_glad_glBindFramebufferEXT
	subl	$8, %esp
	addl	$1, -20(%ebp)
	movl	-20(%ebp), %eax
	cmpl	%eax, %esi
	je	L213
	leal	(%eax,%eax,2), %edi
	movl	_prrts, %eax
	movl	$128, %edx
	leal	0(,%edi,8), %ebx
	movl	$3553, (%eax,%edi,8)
	movl	_prrts, %eax
	movl	_pr_shadowdetail, %ecx
	addl	%ebx, %eax
	sall	%cl, %edx
	movl	$0, 4(%eax)
	movl	%edx, 16(%eax)
	movl	%edx, 20(%eax)
	movl	_pr_ati_fboworkaround, %edx
	testl	%edx, %edx
	je	L222
	addl	$4, %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glGenTextures
	movl	_prrts, %eax
	subl	$8, %esp
	addl	%ebx, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	call	__Z19buildgl_bindTexturejj
	movl	_prrts, %eax
	movl	$0, 32(%esp)
	movl	$5122, 28(%esp)
	addl	%ebx, %eax
	movl	$6407, 24(%esp)
	movl	$0, 20(%esp)
	movl	20(%eax), %edx
	movl	%edx, 16(%esp)
	movl	16(%eax), %edx
	movl	$6407, 8(%esp)
	movl	%edx, 12(%esp)
	movl	$0, 4(%esp)
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*_glad_glTexImage2D
	subl	$36, %esp
	movl	$0, 8(%esp)
	movl	$33084, 4(%esp)
	movl	_prrts, %eax
	movl	(%eax,%edi,8), %eax
	movl	%eax, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$9728, 8(%esp)
	movl	$10241, 4(%esp)
	movl	_prrts, %eax
	movl	(%eax,%edi,8), %eax
	movl	%eax, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$9728, 8(%esp)
	movl	$10240, 4(%esp)
	movl	_prrts, %eax
	movl	(%eax,%edi,8), %eax
	movl	%eax, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$33071, 8(%esp)
	movl	$10242, 4(%esp)
	movl	_prrts, %eax
	movl	(%eax,%edi,8), %eax
	movl	%eax, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$33071, 8(%esp)
	movl	$10243, 4(%esp)
	movl	_prrts, %eax
	movl	(%eax,%edi,8), %eax
	movl	%eax, (%esp)
	call	*_glad_glTexParameteri
	movl	_prrts, %eax
	subl	$12, %esp
	addl	%ebx, %eax
	jmp	L222
	.p2align 4,,10
	.p2align 3
L225:
	movl	$0, (%esp)
	call	*_glad_glDrawBuffer
	subl	$4, %esp
	movl	$0, (%esp)
	call	*_glad_glReadBuffer
	subl	$4, %esp
	jmp	L226
	.p2align 4,,10
	.p2align 3
L240:
	movl	-20(%ebp), %eax
	movl	$LC8, 12(%esp)
	movl	$6374, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC9, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L227
	.p2align 4,,10
	.p2align 3
L220:
	movl	$24, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE10:
	.section .rdata,"dr"
	.align 4
LC14:
	.ascii "Can't update uninitialized sector %i.\0"
	.align 4
LC19:
	.ascii "Tessellating floor of sector %i\0"
	.align 4
LC20:
	.ascii "sector %d is a very sad sector\0"
	.align 4
LC21:
	.ascii "Tessellated floor of sector %i.\0"
LC22:
	.ascii "Updated sector %i.\0"
	.text
	.p2align 4
	.globl	_polymer_updatesector.part.0.isra.0
	.def	_polymer_updatesector.part.0.isra.0;	.scl	2;	.type	32;	.endef
_polymer_updatesector.part.0.isra.0:
LFB13:
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
	subl	$120, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movw	%ax, -52(%ebp)
	cwtl
	movl	%eax, -100(%ebp)
	movl	_prsectors(,%eax,4), %eax
	movl	%eax, -60(%ebp)
	testl	%eax, %eax
	je	L493
	movl	-100(%ebp), %eax
	movl	-60(%ebp), %edi
	movl	$0, -72(%ebp)
	xorl	%ebx, %ebx
	movl	$0, -40(%ebp)
	leal	(%eax,%eax,4), %eax
	sall	$3, %eax
	movl	%eax, -84(%ebp)
	addl	_sector, %eax
	movswl	(%eax), %esi
	movl	%eax, -36(%ebp)
	sall	$5, %esi
	addl	_wall, %esi
	.p2align 4
	.p2align 3
L246:
	movl	(%edi), %edx
	movl	(%esi), %ecx
	movl	%edx, -44(%ebp)
	movss	8(%edx,%ebx), %xmm0
	movl	%ecx, -48(%ebp)
	movss	%xmm0, (%esp)
	call	_lrintf
	movl	-48(%ebp), %ecx
	movl	-44(%ebp), %edx
	addl	%ecx, %eax
	je	L244
	xorps	%xmm0, %xmm0
	movl	256(%edi), %eax
	movl	$1, -72(%ebp)
	cvtsi2ssl	%ecx, %xmm0
	xorps	LC2, %xmm0
	movss	%xmm0, 8(%eax,%ebx,2)
	movl	4(%edi), %eax
	movss	%xmm0, 8(%eax,%ebx,2)
	movl	(%edi), %eax
	movss	%xmm0, 8(%eax,%ebx)
	movl	(%edi), %edx
L244:
	movl	4(%esi), %ecx
	movss	(%edx,%ebx), %xmm0
	movl	%ecx, -44(%ebp)
	movss	%xmm0, (%esp)
	call	_lrintf
	movl	-44(%ebp), %ecx
	cmpl	%eax, %ecx
	je	L245
	xorps	%xmm0, %xmm0
	movl	256(%edi), %eax
	movl	$1, -72(%ebp)
	cvtsi2ssl	%ecx, %xmm0
	movss	%xmm0, (%eax,%ebx,2)
	movl	4(%edi), %eax
	movss	%xmm0, (%eax,%ebx,2)
	movl	(%edi), %eax
	movss	%xmm0, (%eax,%ebx)
L245:
	movl	-36(%ebp), %eax
	addl	$1, -40(%ebp)
	addl	$32, %esi
	addl	$12, %ebx
	movswl	2(%eax), %edx
	movl	%edx, %eax
	cmpl	%edx, -40(%ebp)
	jl	L246
	movl	-72(%ebp), %edx
	testl	%edx, %edx
	je	L494
L247:
	testw	%ax, %ax
	jle	L249
	movl	-36(%ebp), %eax
	movl	-60(%ebp), %edx
	xorl	%ebx, %ebx
	leal	-20(%ebp), %edi
	movswl	(%eax), %eax
	sall	$5, %eax
	addl	_wall, %eax
	movl	%eax, %esi
	.p2align 4
	.p2align 3
L250:
	leal	-24(%ebp), %eax
	movl	%edx, -40(%ebp)
	addl	$32, %esi
	movl	%edi, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-28(%esi), %eax
	movl	%eax, 8(%esp)
	movl	-32(%esi), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	addl	_sector, %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	xorps	%xmm0, %xmm0
	movl	-40(%ebp), %edx
	leal	(%ebx,%ebx,2), %eax
	cvtsi2ssl	-20(%ebp), %xmm0
	xorps	LC2, %xmm0
	addl	$1, %ebx
	mulss	LC3, %xmm0
	movl	4(%edx), %ecx
	movss	%xmm0, 4(%ecx,%eax,8)
	xorps	%xmm0, %xmm0
	movl	256(%edx), %ecx
	cvtsi2ssl	-24(%ebp), %xmm0
	xorps	LC2, %xmm0
	mulss	LC3, %xmm0
	movss	%xmm0, 4(%ecx,%eax,8)
	movl	-36(%ebp), %eax
	movswl	2(%eax), %eax
	cmpl	%eax, %ebx
	jl	L250
L249:
	movl	-36(%ebp), %esi
	movl	-60(%ebp), %ebx
	movb	$1, -109(%ebp)
	movl	8(%esi), %eax
	movl	%eax, 528(%ebx)
	movl	4(%esi), %eax
	movl	%eax, 524(%ebx)
	movzwl	26(%esi), %eax
	movw	%ax, 546(%ebx)
	movzwl	18(%esi), %eax
	movw	%ax, 538(%ebx)
	movzbl	560(%ebx), %ebx
	movl	%ebx, %edi
	andl	$1, %edi
L251:
	movl	-36(%ebp), %eax
	movswl	24(%eax), %eax
	movw	%ax, -74(%ebp)
	cmpb	$63, _picanm+3(%eax,%eax,4)
	ja	L495
L252:
	movl	-36(%ebp), %eax
	movswl	16(%eax), %eax
	movw	%ax, -76(%ebp)
	movzbl	_picanm+3(%eax,%eax,4), %edx
	testb	$64, -51(%ebp)
	jne	L253
L259:
	cmpb	$63, %dl
	ja	L496
L255:
	movl	-36(%ebp), %eax
	movl	-60(%ebp), %ecx
	addl	$12, %eax
	movl	%eax, -104(%ebp)
	leal	532(%ecx), %eax
	movl	%eax, -108(%ebp)
	movl	%edi, %eax
	testb	%al, %al
	jne	L261
	movl	-72(%ebp), %eax
	testl	%eax, %eax
	je	L497
L261:
	movl	-36(%ebp), %eax
	movzwl	14(%eax), %ecx
	testb	$64, %cl
	jne	L263
	testb	$64, 12(%eax)
	jne	L263
	movss	LC11, %xmm7
	movl	-36(%ebp), %eax
	movl	$0x00000000, -96(%ebp)
	movl	$0x00000000, -80(%ebp)
	movss	%xmm7, -88(%ebp)
	movss	%xmm7, -92(%ebp)
	cmpw	$0, 2(%eax)
	jle	L278
L502:
	movswl	(%eax), %eax
	xorl	%esi, %esi
	sall	$5, %eax
	addl	_wall, %eax
	movl	%eax, -56(%ebp)
	.p2align 4
	.p2align 3
L291:
	movl	-36(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%esi, -68(%ebp)
	movl	$2, -52(%ebp)
	movss	-80(%ebp), %xmm0
	movl	4(%eax), %ebx
	movzbl	30(%edx), %eax
	movzwl	14(%edx), %edi
	movb	%al, -44(%ebp)
	movzbl	31(%edx), %eax
	movb	%al, -48(%ebp)
	leal	(%esi,%esi,2), %eax
	sall	$3, %eax
	movl	%eax, -64(%ebp)
	movzwl	-74(%ebp), %eax
	movswl	%ax, %esi
	movl	_waloff(,%esi,4), %eax
	testl	%eax, %eax
	je	L498
L280:
	movl	-56(%ebp), %eax
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	-64(%ebp), %eax
	addl	%ebx, %eax
	movl	%eax, -40(%ebp)
	testl	$64, %edi
	je	L281
	movl	-36(%ebp), %eax
	xorps	%xmm1, %xmm1
	xorps	%xmm2, %xmm2
	movss	-92(%ebp), %xmm7
	movss	-88(%ebp), %xmm6
	movswl	(%eax), %eax
	movaps	%xmm6, %xmm3
	sall	$5, %eax
	addl	_wall, %eax
	subl	(%eax), %ecx
	movl	4(%eax), %eax
	cvtsi2ssl	%ecx, %xmm1
	subl	%edx, %eax
	cvtsi2ssl	%eax, %xmm2
	movl	%edi, %eax
	notl	%eax
	mulss	%xmm0, %xmm1
	mulss	%xmm2, %xmm0
	movaps	%xmm7, %xmm2
	mulss	%xmm1, %xmm2
	mulss	%xmm6, %xmm1
	mulss	%xmm0, %xmm3
	mulss	%xmm7, %xmm0
	addss	%xmm3, %xmm2
	subss	%xmm0, %xmm1
	movss	%xmm2, -24(%ebp)
	movaps	%xmm1, %xmm0
	testb	$66, %al
	jne	L283
	movl	-40(%ebp), %eax
	movaps	%xmm1, %xmm2
	xorps	%xmm4, %xmm4
	mulss	%xmm1, %xmm2
	movss	4(%eax), %xmm0
	subss	4(%ebx), %xmm0
	cvttss2sil	%xmm0, %eax
	xorps	%xmm0, %xmm0
	imull	%eax, %eax
	cvtsi2ssl	%eax, %xmm0
	addss	%xmm2, %xmm0
	sqrtss	%xmm0, %xmm0
	movaps	%xmm0, %xmm3
	movaps	%xmm0, %xmm2
	movaps	%xmm4, %xmm0
	cmpnless	%xmm1, %xmm0
	xorps	LC2, %xmm2
	andps	%xmm0, %xmm2
	andnps	%xmm3, %xmm0
	orps	%xmm2, %xmm0
L283:
	movss	%xmm0, -20(%ebp)
	testl	$4, %edi
	je	L284
	leal	-24(%ebp), %eax
	leal	-20(%ebp), %ebx
/APP
 # 2808 "source/build/src/polymer.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
L284:
	movss	-24(%ebp), %xmm1
	testl	$16, %edi
	je	L285
	xorps	LC2, %xmm1
	movss	%xmm1, -24(%ebp)
L285:
	movss	-20(%ebp), %xmm0
	testl	$32, %edi
	je	L286
	xorps	LC2, %xmm0
	movss	%xmm0, -20(%ebp)
L286:
	movss	LC13, %xmm4
	andl	$8, %edi
	je	L287
	movss	LC12, %xmm4
L287:
	movswl	_tilesiz(,%esi,4), %eax
	movzbl	-44(%ebp), %ecx
	xorps	%xmm3, %xmm3
	xorps	%xmm5, %xmm5
	cvtsi2ssl	%eax, %xmm3
	testb	%cl, %cl
	je	L288
	movzbl	_picsiz(%esi), %eax
	xorps	%xmm2, %xmm2
	xorps	%xmm5, %xmm5
	movss	LC18, %xmm6
	mulss	%xmm3, %xmm6
	andl	$15, %eax
	cvtsi2ssl	_pow2long.lto_priv.1(,%eax,4), %xmm2
	movzbl	%cl, %eax
	cvtsi2ssl	%eax, %xmm5
	divss	%xmm6, %xmm5
	mulss	%xmm2, %xmm5
L288:
	movzbl	-48(%ebp), %ebx
	xorps	%xmm2, %xmm2
	testb	%bl, %bl
	je	L289
	movzbl	_picsiz(%esi), %eax
	xorps	%xmm7, %xmm7
	xorps	%xmm2, %xmm2
	xorps	%xmm6, %xmm6
	shrb	$4, %al
	movzbl	%al, %eax
	cvtsi2ssl	_pow2long.lto_priv.1(,%eax,4), %xmm7
	movzbl	%bl, %eax
	cvtsi2ssl	%eax, %xmm2
	movswl	_tilesiz+2(,%esi,4), %eax
	cvtsi2ssl	%eax, %xmm6
	mulss	LC18, %xmm6
	divss	%xmm6, %xmm2
	mulss	%xmm7, %xmm2
L289:
	mulss	%xmm4, %xmm3
	movl	-40(%ebp), %edi
	divss	%xmm3, %xmm1
	addss	%xmm5, %xmm1
	movss	%xmm1, 12(%edi)
	movswl	_tilesiz+2(,%esi,4), %eax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm4, %xmm1
	divss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	movss	%xmm0, 16(%edi)
	cmpl	$1, -52(%ebp)
	je	L499
	movl	-36(%ebp), %esi
	movl	-60(%ebp), %eax
	movl	$1, -52(%ebp)
	movss	-96(%ebp), %xmm0
	movl	256(%eax), %ebx
	movzbl	22(%esi), %eax
	movzwl	12(%esi), %edi
	movb	%al, -44(%ebp)
	movzbl	23(%esi), %eax
	movb	%al, -48(%ebp)
	movzwl	-76(%ebp), %eax
	movswl	%ax, %esi
	movl	_waloff(,%esi,4), %eax
	testl	%eax, %eax
	jne	L280
L498:
	movl	%esi, %eax
	movss	%xmm0, -40(%ebp)
	call	_tileLoad.isra.0
	movss	-40(%ebp), %xmm0
	jmp	L280
	.p2align 4,,10
	.p2align 3
L263:
	movl	-36(%ebp), %eax
	movl	_wall, %edx
	xorps	%xmm0, %xmm0
	movswl	(%eax), %eax
	sall	$5, %eax
	addl	%edx, %eax
	movswl	8(%eax), %ebx
	sall	$5, %ebx
	addl	%ebx, %edx
	movl	(%edx), %ebx
	movl	4(%edx), %esi
	subl	(%eax), %ebx
	subl	4(%eax), %esi
	movl	%ebx, %edx
	movl	%esi, %eax
	movl	%ebx, %edi
	imull	%ebx, %edx
	imull	%esi, %eax
	addl	%eax, %edx
	andl	$2, %ecx
	cvtsi2ssl	%edx, %xmm0
	sqrtss	%xmm0, %xmm0
	je	L500
L265:
	movl	%edx, %eax
/APP
 # 2724 "source/build/src/polymer.cpp" 1
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
 # 2724 "source/build/src/polymer.cpp" 1
	movl %eax, (_fpuasm); fildl (_fpuasm); addl %eax, %eax; fstps (_fpuasm); sbbl %ebx, %ebx; movl (_fpuasm), %eax; movl %eax, %ecx; andl $0x007ff000, %eax; shrl $10, %eax; subl $0x3f800000, %ecx; shrl $23, %ecx; movl _reciptable(%eax), %eax; sarl %cl, %eax; xorl %ebx, %eax
 # 0 "" 2
/NO_APP
	xorps	%xmm1, %xmm1
	movl	-36(%ebp), %ebx
	cvtsi2ssl	%eax, %xmm1
	mulss	LC15, %xmm1
	movzwl	14(%ebx), %eax
	andw	$2, %ax
	movw	%ax, -40(%ebp)
	movaps	%xmm1, %xmm7
	mulss	%xmm0, %xmm7
	movss	%xmm7, -80(%ebp)
	je	L267
	movzwl	12(%ebx), %eax
	movss	%xmm7, -96(%ebp)
	movw	%ax, -40(%ebp)
	andw	$2, %ax
	movw	%ax, -44(%ebp)
	je	L501
L268:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edi, %xmm0
	movss	%xmm0, 4(%esp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%esi, %xmm0
	movss	%xmm0, (%esp)
	call	_atan2f
	fldl	LC17
	leal	-28(%ebp), %eax
	leal	-32(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	faddp	%st, %st(1)
	fstps	-40(%ebp)
	movss	-40(%ebp), %xmm0
	movss	%xmm0, (%esp)
	call	_sincosf
	movss	-32(%ebp), %xmm7
	movl	-36(%ebp), %eax
	movss	%xmm7, -88(%ebp)
	movss	-28(%ebp), %xmm7
	movss	%xmm7, -92(%ebp)
	cmpw	$0, 2(%eax)
	jg	L502
	.p2align 4
	.p2align 3
L278:
	movl	-36(%ebp), %ebx
	movl	-60(%ebp), %edi
	movzbl	30(%ebx), %eax
	movb	%al, 550(%edi)
	movzbl	22(%ebx), %eax
	movb	%al, 542(%edi)
	movzbl	31(%ebx), %eax
	movb	%al, 551(%edi)
	movzbl	23(%ebx), %eax
	movb	%al, 543(%edi)
	movl	-100(%ebp), %eax
	movl	_sectorchanged(,%eax,4), %eax
	movl	%eax, 568(%edi)
L292:
	cmpl	$1, _pr_nullrender
	jle	L503
L294:
	movl	-60(%ebp), %eax
	testb	$5, 560(%eax)
	je	L504
L297:
	movl	-36(%ebp), %esi
	xorl	%ebx, %ebx
	movl	-60(%ebp), %edi
	movswl	-74(%ebp), %edx
	testw	$384, 14(%esi)
	movzbl	29(%esi), %ecx
	leal	76(%edi), %eax
	setne	%bl
	movl	%ebx, 8(%esp)
	movsbl	32(%esi), %ebx
	movl	%ebx, 4(%esp)
	movsbl	28(%esi), %ebx
	movl	%ebx, (%esp)
	call	_polymer_getbuildmaterial.lto_priv.0
	movl	%eax, 20(%edi)
	movzwl	14(%esi), %eax
	testb	$1, %ah
	je	L299
	andw	$128, %ax
	cmpw	$1, %ax
	sbbl	%eax, %eax
	andl	$85, %eax
	addl	$85, %eax
	movb	%al, 151(%edi)
L299:
	movl	-36(%ebp), %edi
	xorl	%ebx, %ebx
	movl	-60(%ebp), %esi
	movswl	-76(%ebp), %edx
	testw	$384, 12(%edi)
	movzbl	21(%edi), %ecx
	leal	328(%esi), %eax
	setne	%bl
	movl	%ebx, 8(%esp)
	movsbl	32(%edi), %ebx
	movl	%ebx, 4(%esp)
	movsbl	20(%edi), %ebx
	movl	%ebx, (%esp)
	call	_polymer_getbuildmaterial.lto_priv.0
	movl	%eax, 272(%esi)
	movzwl	12(%edi), %eax
	testb	$1, %ah
	je	L301
	andw	$128, %ax
	cmpw	$1, %ax
	sbbl	%eax, %eax
	andl	$85, %eax
	addl	$85, %eax
	movb	%al, 403(%esi)
L301:
	movl	-60(%ebp), %edi
	movl	-36(%ebp), %eax
	movl	-104(%ebp), %ebx
	movl	-108(%ebp), %ecx
	andb	$-5, 560(%edi)
	movl	12(%eax), %eax
	movl	%eax, 532(%edi)
	movl	4(%ebx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%ebx), %eax
	movl	%eax, 8(%ecx)
	movl	12(%ebx), %eax
	movl	%eax, 12(%ecx)
	movl	16(%ebx), %eax
	movl	%eax, 16(%ecx)
	movzbl	20(%ebx), %eax
	movb	%al, 20(%ecx)
	movzwl	-74(%ebp), %eax
	movw	%ax, 554(%edi)
	movzwl	-76(%ebp), %eax
	movw	%ax, 556(%edi)
L298:
	movl	-72(%ebp), %esi
	testl	%esi, %esi
	jne	L505
L353:
	cmpb	$0, -109(%ebp)
	jne	L506
L305:
	movl	-60(%ebp), %ebx
	movzbl	560(%ebx), %eax
	movb	%al, -36(%ebp)
	andl	$-4, %eax
	orl	$2, %eax
	movb	%al, 560(%ebx)
	cmpl	$2, _pr_verbosity
	jg	L507
L241:
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
L253:
	.cfi_restore_state
	testb	$16, _globalorientation+1
	je	L259
	movswl	-74(%ebp), %ecx
	movzwl	_rottile(,%ecx,4), %esi
	cmpw	$-1, %si
	je	L260
	cmpb	$63, %dl
	ja	L256
	movw	%si, -74(%ebp)
L257:
	movzwl	_rottile(,%eax,4), %eax
	cmpw	$-1, %ax
	cmove	-76(%ebp), %ax
	movw	%ax, -76(%ebp)
	jmp	L255
	.p2align 4,,10
	.p2align 3
L494:
	movl	-60(%ebp), %ecx
	movzbl	560(%ecx), %ebx
	movl	%ebx, %edi
	andl	$1, %edi
	jne	L247
	movl	-36(%ebp), %esi
	movl	528(%ecx), %ecx
	cmpl	%ecx, 8(%esi)
	jne	L247
	movl	%esi, %ecx
	movl	-60(%ebp), %esi
	movl	524(%esi), %esi
	cmpl	%esi, 4(%ecx)
	jne	L247
	movl	-60(%ebp), %esi
	movzwl	546(%esi), %esi
	cmpw	%si, 26(%ecx)
	jne	L247
	movl	-60(%ebp), %esi
	movzwl	538(%esi), %esi
	cmpw	%si, 18(%ecx)
	jne	L247
	movl	-36(%ebp), %ecx
	movl	-60(%ebp), %eax
	movzbl	552(%eax), %eax
	cmpb	%al, 32(%ecx)
	setne	-109(%ebp)
	jmp	L251
	.p2align 4,,10
	.p2align 3
L500:
	movl	-36(%ebp), %eax
	testb	$2, 12(%eax)
	jne	L265
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
	xorps	%xmm2, %xmm2
	movw	%cx, -44(%ebp)
	movw	%bx, -40(%ebp)
	movss	%xmm2, -80(%ebp)
L266:
	movl	%edx, %eax
/APP
 # 2736 "source/build/src/polymer.cpp" 1
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
	movss	LC10, %xmm1
	movl	%eax, -48(%ebp)
	testl	%eax, %eax
	jne	L508
L269:
	movaps	%xmm0, %xmm7
	mulss	%xmm1, %xmm7
	movss	%xmm7, -96(%ebp)
	cmpw	$0, -40(%ebp)
	jne	L277
	movss	%xmm7, -80(%ebp)
L277:
	cmpw	$0, -44(%ebp)
	je	L268
	movss	%xmm2, -96(%ebp)
	jmp	L268
	.p2align 4,,10
	.p2align 3
L497:
	movzwl	-74(%ebp), %eax
	cmpw	%ax, 554(%ecx)
	jne	L261
	movl	%ecx, %eax
	movzwl	-76(%ebp), %ecx
	cmpw	%cx, 556(%eax)
	jne	L261
	movl	-100(%ebp), %ecx
	movl	_sectorchanged(,%ecx,4), %ecx
	cmpl	%ecx, 568(%eax)
	jne	L261
L262:
	cmpb	$0, -109(%ebp)
	jne	L292
	andl	$5, %ebx
	jne	L297
	movl	$21, 8(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcmp
	testl	%eax, %eax
	jne	L297
	jmp	L305
	.p2align 4,,10
	.p2align 3
L281:
	xorps	%xmm0, %xmm0
	negl	%edx
	cvtsi2ssl	%ecx, %xmm0
	movss	%xmm0, -24(%ebp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	jmp	L283
	.p2align 4,,10
	.p2align 3
L499:
	movl	-36(%ebp), %eax
	movl	-68(%ebp), %esi
	addl	$32, -56(%ebp)
	movswl	2(%eax), %eax
	addl	$1, %esi
	cmpl	%eax, %esi
	jl	L291
	jmp	L278
	.p2align 4,,10
	.p2align 3
L495:
	call	_animateoffs
	addw	%ax, -74(%ebp)
	jmp	L252
	.p2align 4,,10
	.p2align 3
L505:
	cmpl	$1, _pr_verbosity
	jg	L509
L304:
	movl	-100(%ebp), %eax
	movl	_prsectors(,%eax,4), %eax
	movl	%eax, -68(%ebp)
	testl	%eax, %eax
	je	L305
	movl	_r_pr_constrained, %ebx
	movl	-84(%ebp), %eax
	movl	$0, -64(%ebp)
	addl	_sector, %eax
	movl	_prtess, %edi
	movl	$0, -44(%ebp)
	movl	%eax, -52(%ebp)
	xorl	%eax, %eax
	testl	%ebx, %ebx
	setne	%al
	movl	$0, -48(%ebp)
	movl	%eax, 60(%edi)
	jmp	L319
	.p2align 6
	.p2align 4,,10
	.p2align 3
L364:
	movl	-56(%ebp), %eax
	addl	$1, -48(%ebp)
	movl	%eax, -44(%ebp)
	movl	-52(%ebp), %eax
	movswl	2(%eax), %eax
	cmpl	%eax, -48(%ebp)
	jge	L510
L319:
	movl	-44(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -56(%ebp)
	movl	-52(%ebp), %eax
	movswl	(%eax), %eax
	addl	-48(%ebp), %eax
	movl	%eax, %edx
	sall	$5, %edx
	addl	_wall, %edx
	movswl	8(%edx), %edx
	cmpl	%edx, %eax
	jle	L364
	movl	-68(%ebp), %eax
	movl	(%edi), %ebx
	movl	(%eax), %esi
	testl	%ebx, %ebx
	je	L511
L307:
	movl	%ebx, %eax
	call	__ZL16tessMeshMakeEdgeP8TESSmesh.lto_priv.0
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L317
	movl	4(%eax), %ecx
	movl	(%edi), %eax
	movl	%ebx, %edx
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L317
	movl	-64(%ebp), %eax
	movl	$0, -36(%ebp)
	leal	(%eax,%eax,2), %eax
	leal	(%esi,%eax,4), %esi
L314:
	movss	(%esi), %xmm0
	movl	16(%ebx), %eax
	movss	%xmm0, 12(%eax)
	movss	4(%esi), %xmm0
	movl	16(%ebx), %eax
	movss	%xmm0, 16(%eax)
	movss	8(%esi), %xmm0
	movl	16(%ebx), %eax
	movss	%xmm0, 20(%eax)
	movl	88(%edi), %eax
	leal	1(%eax), %edx
	movl	%edx, 88(%edi)
	movl	16(%ebx), %edx
	movl	%eax, 40(%edx)
	movl	64(%edi), %eax
	movl	$-1, %edx
	testl	%eax, %eax
	movl	$-1, %eax
	cmove	%ecx, %eax
	movl	%eax, 28(%ebx)
	movl	64(%edi), %eax
	testl	%eax, %eax
	movl	4(%ebx), %eax
	cmovne	%ecx, %edx
	movl	%edx, 28(%eax)
	movl	-36(%ebp), %edx
	cmpl	%edx, -44(%ebp)
	je	L311
	movl	(%edi), %eax
	movl	%ebx, %edx
	movl	%ecx, -40(%ebp)
	call	__ZL17tessMeshSplitEdgeP8TESSmeshP12TESShalfEdge.lto_priv.0
	movl	-40(%ebp), %ecx
	testl	%eax, %eax
	je	L317
	addl	$1, -36(%ebp)
	movl	12(%ebx), %ebx
	addl	$12, %esi
	jmp	L314
	.p2align 4,,10
	.p2align 3
L317:
	movl	$1, 4(%edi)
L311:
	movl	-52(%ebp), %eax
	movl	-56(%ebp), %ecx
	movl	$0, -44(%ebp)
	addl	%ecx, -64(%ebp)
	movl	_prtess, %edi
	addl	$1, -48(%ebp)
	movswl	2(%eax), %eax
	cmpl	%eax, -48(%ebp)
	jl	L319
L510:
	movl	%edi, %eax
	call	__Z13tessTesselateP14TESStesselatoriiiiPKf.constprop.0
	testl	%eax, %eax
	je	L305
	movl	_prtess, %eax
	movl	108(%eax), %ecx
	movl	100(%eax), %ebx
	movl	%ecx, -36(%ebp)
	testl	%ebx, %ebx
	je	L305
	testl	%ecx, %ecx
	je	L305
	movl	104(%eax), %ebx
	movl	96(%eax), %edi
	movl	-68(%ebp), %eax
	movl	176(%eax), %eax
	movl	%eax, -40(%ebp)
	testl	%eax, %eax
	je	L512
	movl	-36(%ebp), %esi
	leal	(%esi,%esi), %eax
	movl	%eax, -44(%ebp)
	addl	%eax, %esi
	movl	-68(%ebp), %eax
	movl	508(%eax), %edx
	cmpl	%edx, %esi
	jl	L321
	testl	%esi, %esi
	jle	L322
	movl	%edx, -48(%ebp)
	cmpl	%edx, %esi
	sete	%cl
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L324:
	movl	(%ebx,%eax,4), %edx
	cmpl	$-1, (%edi,%edx,4)
	jne	L367
	testb	%cl, %cl
	jne	L321
L367:
	addl	$1, %eax
	cmpl	%eax, %esi
	jne	L324
	cmpl	-48(%ebp), %esi
	je	L330
L320:
	movl	-44(%ebp), %eax
	addl	-36(%ebp), %eax
	leal	(%eax,%eax), %esi
	movl	%esi, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	testl	%esi, %esi
	sete	-40(%ebp)
	testl	%eax, %eax
	jne	L368
	cmpb	$0, -40(%ebp)
	je	L327
L368:
	movl	-68(%ebp), %ecx
	movl	%eax, 176(%ecx)
	movl	%esi, 4(%esp)
	movl	428(%ecx), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	testl	%eax, %eax
	jne	L369
	cmpb	$0, -40(%ebp)
	je	L327
L369:
	movl	-68(%ebp), %esi
	movl	-44(%ebp), %edx
	addl	-36(%ebp), %edx
	movl	%eax, 428(%esi)
	movl	%edx, 508(%esi)
	testl	%edx, %edx
	jle	L326
L330:
	movl	%edi, -40(%ebp)
	xorl	%esi, %esi
	movl	-68(%ebp), %edi
	movl	%ebx, -36(%ebp)
	jmp	L333
	.p2align 4,,10
	.p2align 3
L331:
	movl	428(%edi), %edx
	movzwl	(%edx,%eax), %ecx
	movl	508(%edi), %eax
	movl	176(%edi), %edx
	subl	%esi, %eax
	addl	$1, %esi
	movw	%cx, -2(%edx,%eax,2)
	movl	508(%edi), %edx
	cmpl	%edx, %esi
	jge	L326
L333:
	movl	-36(%ebp), %ebx
	movl	428(%edi), %ecx
	leal	(%esi,%esi), %eax
	movl	(%ebx,%esi,4), %edx
	movl	-40(%ebp), %ebx
	movl	(%ebx,%edx,4), %edx
	movw	%dx, (%ecx,%esi,2)
	movl	-36(%ebp), %ecx
	movl	(%ecx,%esi,4), %edx
	cmpl	$-1, (%ebx,%edx,4)
	jne	L331
	movl	__ZN6loguru18g_stderr_verbosityE, %ecx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %ecx
	cmovl	%edx, %ecx
	cmpl	$-1, %ecx
	jl	L332
	movl	%eax, -44(%ebp)
	movl	-100(%ebp), %eax
	movl	$LC20, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3020, 8(%esp)
	movl	$LC9, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	-44(%ebp), %eax
L332:
	movl	428(%edi), %edx
	xorl	%ecx, %ecx
	movw	%cx, (%edx,%eax)
	jmp	L331
	.p2align 4,,10
	.p2align 3
L506:
	movl	-60(%ebp), %eax
	addl	$1, 564(%eax)
	movl	-100(%ebp), %eax
	movl	_prsectors(,%eax,4), %edx
	testl	%edx, %edx
	je	L335
	movzwl	252(%edx), %eax
	movl	-84(%ebp), %ebx
	addl	_sector, %ebx
	testl	%eax, %eax
	je	L336
	subl	$1, %eax
	movl	%edx, %esi
	.p2align 4
	.p2align 3
L338:
	movswl	188(%esi,%eax,2), %ecx
	cmpl	$31, %ecx
	ja	L337
	imull	$270, %ecx, %ecx
	movzbl	_prlights+254(%ecx), %edx
	testb	$1, %dl
	je	L337
	orl	$2, %edx
	movb	%dl, _prlights+254(%ecx)
L337:
	subl	$1, %eax
	jnb	L338
	movl	%esi, %edx
L336:
	movzwl	504(%edx), %eax
	testl	%eax, %eax
	je	L339
	subl	$1, %eax
	movl	%edx, %esi
	.p2align 4
	.p2align 3
L341:
	movswl	440(%esi,%eax,2), %ecx
	cmpl	$31, %ecx
	ja	L340
	imull	$270, %ecx, %ecx
	movzbl	_prlights+254(%ecx), %edx
	testb	$1, %dl
	je	L340
	orl	$2, %edx
	movb	%dl, _prlights+254(%ecx)
L340:
	subl	$1, %eax
	jnb	L341
L339:
	movswl	2(%ebx), %ecx
	testl	%ecx, %ecx
	je	L335
	subl	$1, %ecx
	.p2align 4
	.p2align 3
L351:
	movswl	(%ebx), %eax
	addl	%ecx, %eax
	movl	_prwalls(,%eax,4), %edx
	testl	%edx, %edx
	je	L342
	movzwl	248(%edx), %eax
	testl	%eax, %eax
	je	L343
	movl	%ecx, -36(%ebp)
	subl	$1, %eax
	.p2align 4
	.p2align 3
L345:
	movswl	184(%edx,%eax,2), %esi
	cmpl	$31, %esi
	ja	L344
	imull	$270, %esi, %esi
	movzbl	_prlights+254(%esi), %edi
	testl	$1, %edi
	je	L344
	orl	$2, %edi
	movl	%edi, %ecx
	movb	%cl, _prlights+254(%esi)
L344:
	subl	$1, %eax
	jnb	L345
	movl	-36(%ebp), %ecx
L343:
	movzwl	500(%edx), %eax
	testl	%eax, %eax
	je	L346
	movl	%ecx, -36(%ebp)
	subl	$1, %eax
	.p2align 4
	.p2align 3
L348:
	movswl	436(%edx,%eax,2), %esi
	cmpl	$31, %esi
	ja	L347
	imull	$270, %esi, %esi
	movzbl	_prlights+254(%esi), %edi
	testl	$1, %edi
	je	L347
	orl	$2, %edi
	movl	%edi, %ecx
	movb	%cl, _prlights+254(%esi)
L347:
	subl	$1, %eax
	jnb	L348
	movl	-36(%ebp), %ecx
L346:
	movzwl	752(%edx), %eax
	testl	%eax, %eax
	je	L342
	movl	%ecx, -36(%ebp)
	subl	$1, %eax
	.p2align 4
	.p2align 3
L350:
	movswl	688(%edx,%eax,2), %esi
	cmpl	$31, %esi
	ja	L349
	imull	$270, %esi, %esi
	movzbl	_prlights+254(%esi), %edi
	testl	$1, %edi
	je	L349
	orl	$2, %edi
	movl	%edi, %ecx
	movb	%cl, _prlights+254(%esi)
L349:
	subl	$1, %eax
	jnb	L350
	movl	-36(%ebp), %ecx
L342:
	subl	$1, %ecx
	jnb	L351
L335:
	movl	-60(%ebp), %ebx
	leal	4(%ebx), %eax
	call	_polymer_computeplane.lto_priv.0
	leal	256(%ebx), %eax
	call	_polymer_computeplane.lto_priv.0
	jmp	L305
	.p2align 4,,10
	.p2align 3
L507:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L241
	movl	-100(%ebp), %eax
	movl	$LC22, 12(%esp)
	movl	$2946, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC9, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
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
L267:
	.cfi_restore_state
	movl	-36(%ebp), %eax
	testb	$2, 12(%eax)
	je	L513
	movl	$2, %eax
	movss	-80(%ebp), %xmm2
	movl	$0x00000000, -80(%ebp)
	movw	%ax, -44(%ebp)
	jmp	L266
	.p2align 4,,10
	.p2align 3
L504:
	movzwl	-74(%ebp), %ecx
	cmpw	%cx, 554(%eax)
	jne	L297
	movzwl	-76(%ebp), %ebx
	cmpw	556(%eax), %bx
	jne	L297
	movl	$21, 8(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcmp
	testl	%eax, %eax
	jne	L297
	jmp	L298
	.p2align 4,,10
	.p2align 3
L496:
	call	_animateoffs
	addw	%ax, -76(%ebp)
	jmp	L255
L509:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L304
	movl	-100(%ebp), %eax
	movl	$LC19, 12(%esp)
	movl	$2954, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC9, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L304
L501:
	movl	$2, %eax
	xorps	%xmm2, %xmm2
	movw	%ax, -40(%ebp)
	jmp	L266
L513:
	xorl	%eax, %eax
	xorps	%xmm2, %xmm2
	movw	%ax, -44(%ebp)
	movss	%xmm2, -80(%ebp)
	jmp	L266
L260:
	cmpb	$63, %dl
	jbe	L257
	movzwl	-74(%ebp), %esi
L256:
	call	_animateoffs
	movw	%si, -74(%ebp)
	addw	%ax, -76(%ebp)
	movswl	-76(%ebp), %eax
	jmp	L257
L322:
	cmpl	%edx, %esi
	jne	L320
L326:
	movl	-68(%ebp), %eax
	movl	%edx, 432(%eax)
	movl	%edx, 180(%eax)
	cmpl	$2, _pr_verbosity
	jle	L321
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L321
	movl	-100(%ebp), %eax
	movl	$LC21, 12(%esp)
	movl	$3028, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC9, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L321:
	cmpl	$1, _pr_nullrender
	jg	L353
	movl	-60(%ebp), %eax
	movl	508(%eax), %ebx
	cmpl	%ebx, 512(%eax)
	jl	L514
L334:
	movl	-60(%ebp), %esi
	movl	$34963, %eax
	movl	184(%esi), %edx
	call	__Z18buildgl_bindBufferjj
	movl	176(%esi), %eax
	movl	%eax, 12(%esp)
	movl	508(%esi), %eax
	movl	%eax, -36(%ebp)
	addl	%eax, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$34963, (%esp)
	call	*_glad_glBufferSubData
	movl	436(%esi), %edx
	movl	$34963, %eax
	subl	$16, %esp
	call	__Z18buildgl_bindBufferjj
	movl	428(%esi), %eax
	movl	%eax, 12(%esp)
	movl	508(%esi), %eax
	movl	%eax, -36(%ebp)
	addl	%eax, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$34963, (%esp)
	call	*_glad_glBufferSubData
	movl	$34963, %eax
	subl	$16, %esp
	call	__Z18buildgl_bindBufferjj.constprop.0
	jmp	L353
L508:
	movl	%eax, %ecx
	cmpl	%eax, _lastd_s32
	je	L270
	cmpl	$16383, %eax
	jbe	L270
	movl	%eax, %ebx
	movl	%eax, _lastd_s32
	movl	$31, %edx
	negl	%ebx
	cmovs	%eax, %ebx
	bsrl	%ebx, %eax
	xorl	$31, %eax
	subl	%eax, %edx
	movl	%edx, -52(%ebp)
	leal	-1(%ebx), %edx
	testl	%ebx, %edx
	je	L515
	movl	$30, %ecx
	movl	$1, %edx
	subl	%eax, %ecx
	xorl	%eax, %eax
	sall	%cl, %edx
	movl	%ebx, %ecx
/APP
 # 477 "source/build/include/libdivide.h" 1
	divl %ebx
 # 0 "" 2
/NO_APP
	subl	%edx, %ecx
	movl	%eax, -56(%ebp)
	movl	$1, %eax
	movl	%ecx, -64(%ebp)
	movzbl	-52(%ebp), %ecx
	sall	%cl, %eax
	cmpl	%eax, -64(%ebp)
	jnb	L273
	movzbl	-52(%ebp), %edx
	subl	$1, %edx
L274:
	movl	-56(%ebp), %eax
	movl	%edx, %ebx
	orl	$-128, %ebx
	cmpl	$0, -48(%ebp)
	leal	1(%eax), %ecx
	notl	%eax
	cmovs	%ebx, %edx
	cmovs	%eax, %ecx
L272:
	movl	%ecx, _divtable32
	movb	%dl, _divtable32+4
L270:
	movl	-48(%ebp), %ebx
	xorl	%eax, %eax
	cmpl	$16383, %ebx
	cmovbe	%ebx, %eax
	movl	_divtable32(%eax,%eax,4), %edx
	movzbl	_divtable32+4(%eax,%eax,4), %ecx
	testl	%edx, %edx
	jne	L275
	movl	%ecx, %edx
	movl	$1048576, %eax
	xorps	%xmm1, %xmm1
	sarb	$7, %dl
	sarl	%cl, %eax
	movsbl	%dl, %edx
	xorl	%edx, %eax
	subl	%edx, %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	LC16, %xmm1
	jmp	L269
L511:
	movl	112(%edi), %eax
	cmpl	$__ZL9heapAllocPvj.lto_priv.0, %eax
	jne	L308
	movl	$152, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L516
L309:
	movl	128(%edi), %ecx
	leal	112(%edi), %eax
	movl	$4096, %edx
	movl	%eax, -36(%ebp)
	movl	$4096, %eax
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	$16, %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	movl	132(%edi), %eax
	cmpl	%edx, %eax
	movl	%ecx, 128(%edi)
	cmovg	%edx, %eax
	movl	$16, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	$4096, %edx
	movl	%eax, 132(%edi)
	movl	136(%edi), %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	$16, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	$72, %edx
	movl	%eax, 136(%edi)
	movl	-36(%ebp), %eax
	call	__Z17createBucketAllocP9TESSallocjj
	movl	$44, %edx
	movl	%eax, 140(%ebx)
	movl	-36(%ebp), %eax
	movl	132(%edi), %ecx
	call	__Z17createBucketAllocP9TESSallocjj
	movl	$24, %edx
	movl	%eax, 144(%ebx)
	movl	-36(%ebp), %eax
	movl	136(%edi), %ecx
	call	__Z17createBucketAllocP9TESSallocjj
	leal	44(%ebx), %ecx
	leal	104(%ebx), %edx
	movl	%ebx, 4(%ebx)
	movl	%eax, 148(%ebx)
	leal	68(%ebx), %eax
	movl	%ecx, 48(%ebx)
	movl	%ecx, 44(%ebx)
	xorl	%ecx, %ecx
	movl	%ebx, (%ebx)
	movl	$0, 8(%ebx)
	movl	$0, 52(%ebx)
	movl	$0, 56(%ebx)
	movw	%cx, 64(%ebx)
	movl	%eax, 68(%ebx)
	movl	%edx, 72(%ebx)
	movl	$0, 76(%ebx)
	movl	$0, 80(%ebx)
	movl	$0, 84(%ebx)
	movl	$0, 88(%ebx)
	movl	$0, 96(%ebx)
	movl	$0, 92(%ebx)
	movl	%edx, 104(%ebx)
	movl	%eax, 108(%ebx)
	movl	$0, 112(%ebx)
	movl	$0, 116(%ebx)
	movl	$0, 120(%ebx)
	movl	$0, 124(%ebx)
	movl	$0, 132(%ebx)
	movl	$0, 128(%ebx)
	movl	%ebx, (%edi)
	jmp	L307
L503:
	movl	-36(%ebp), %ebx
	movl	-60(%ebp), %edi
	movswl	(%ebx), %ecx
	leal	(%ecx,%ecx), %eax
	movl	%eax, 16(%edi)
	movswl	2(%ebx), %edx
	addl	%eax, %edx
	leal	(%eax,%ecx,4), %eax
	movl	%edx, 268(%edi)
	leal	0(,%eax,8), %esi
	movswl	2(%ebx), %eax
	movl	_prmapvbo, %edx
	leal	(%eax,%eax,2), %ebx
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj
	movl	4(%edi), %eax
	sall	$3, %ebx
	movl	%esi, 4(%esp)
	movl	%ebx, 8(%esp)
	addl	%ebx, %esi
	movl	%eax, 12(%esp)
	movl	$34962, (%esp)
	call	*_glad_glBufferSubData
	movl	256(%edi), %eax
	subl	$16, %esp
	movl	%eax, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$34962, (%esp)
	call	*_glad_glBufferSubData
	movl	$34962, %eax
	subl	$16, %esp
	call	__Z18buildgl_bindBufferjj.constprop.0
	jmp	L294
L275:
	movl	%ecx, %ebx
	movl	$1048576, %eax
	xorps	%xmm1, %xmm1
	sarb	$7, %bl
	imull	%edx
	movsbl	%bl, %ebx
	movl	%ebx, %eax
	xorl	$1048576, %eax
	addl	%edx, %eax
	subl	%ebx, %eax
	testb	$64, %cl
	cmove	%edx, %eax
	movl	%eax, %edx
	shrl	$31, %eax
	sarl	%cl, %edx
	addl	%edx, %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	LC16, %xmm1
	jmp	L269
L515:
	sarl	$24, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	andl	$-128, %edx
	orb	-52(%ebp), %dl
	jmp	L272
L512:
	leal	(%ecx,%ecx), %eax
	movl	%eax, -44(%ebp)
	jmp	L320
L514:
	movl	184(%eax), %edx
	movl	%eax, %esi
	movl	$34963, %eax
	call	__Z18buildgl_bindBufferjj
	movl	$35040, 12(%esp)
	movl	$0, 8(%esp)
	movl	508(%esi), %eax
	movl	%eax, -36(%ebp)
	addl	%eax, %eax
	movl	%eax, 4(%esp)
	movl	$34963, (%esp)
	call	*_glad_glBufferData
	movl	436(%esi), %edx
	movl	$34963, %eax
	subl	$16, %esp
	call	__Z18buildgl_bindBufferjj
	movl	$35040, 12(%esp)
	movl	$0, 8(%esp)
	movl	508(%esi), %eax
	movl	%eax, -36(%ebp)
	addl	%eax, %eax
	movl	%eax, 4(%esp)
	movl	$34963, (%esp)
	call	*_glad_glBufferData
	movl	508(%esi), %eax
	subl	$16, %esp
	movl	%eax, 512(%esi)
	jmp	L334
L308:
	movl	$152, 4(%esp)
	movl	124(%edi), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L309
	movl	$0, (%edi)
	movl	$1, 4(%edi)
	jmp	L311
L273:
	leal	(%edx,%edx), %ecx
	movl	-56(%ebp), %eax
	cmpl	%ebx, %ecx
	setnb	%bl
	cmpl	%edx, %ecx
	setb	%cl
	movl	%ebx, %edx
	orl	%ecx, %edx
	movzbl	%dl, %edx
	leal	(%edx,%eax,2), %eax
	movzbl	-52(%ebp), %edx
	movl	%eax, -56(%ebp)
	orl	$64, %edx
	jmp	L274
L516:
	movl	$152, %eax
	call	__Z13handle_memerri
L327:
	movl	%esi, %eax
	call	__Z13handle_memerri
L493:
	movl	_pr_verbosity, %ecx
	testl	%ecx, %ecx
	jle	L241
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L241
	movl	-100(%ebp), %eax
	movl	$LC14, 12(%esp)
	movl	$2628, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC9, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L241
	.cfi_endproc
LFE13:
	.p2align 4
	.globl	_polymer_culllight.lto_priv.0
	.def	_polymer_culllight.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_culllight.lto_priv.0:
LFB22:
	.cfi_startproc
	subl	$56, %esp
	.cfi_def_cfa_offset 60
	cwtl
	movl	__ZL16reachablesectors.lto_priv.0, %edx
	movl	%eax, 28(%esp)
	imull	$270, %eax, %eax
	movl	%esi, 44(%esp)
	.cfi_offset 6, -16
	movswl	_globalcursectnum, %esi
	movl	%edi, 48(%esp)
	movl	%ebx, 40(%esp)
	.cfi_offset 7, -12
	.cfi_offset 3, -20
	movswl	_prlights+26(%eax), %ebx
	movl	%ebx, %edi
	testl	%edx, %edx
	je	L623
L518:
	movswl	_numsectors, %eax
	andl	$7, %edi
	sarl	$3, %ebx
	movzbl	__ZL8pow2char.lto_priv.9(%edi), %ecx
	addl	$7, %eax
	sarl	$3, %eax
	imull	%esi, %eax
	addl	%eax, %edx
	movzbl	(%edx,%ebx), %eax
	andl	%ecx, %eax
	cmpb	%al, %cl
	movl	$1, %eax
	je	L624
	movl	40(%esp), %ebx
	movl	44(%esp), %esi
	movl	48(%esp), %edi
	addl	$56, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L624:
	.cfi_restore_state
	imull	$270, 28(%esp), %eax
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL12drawingstate.lto_priv.0, (%esp)
	leal	_prlights(%eax), %edi
	movl	%ebp, 52(%esp)
	.cfi_offset 5, -8
	movl	%edi, %ebp
	call	_memset
	movswl	26(%edi), %eax
	movl	$1, 36(%esp)
	movl	$0, 32(%esp)
	movl	%eax, %edx
	sarl	$3, %eax
	movl	%edx, %ecx
	movw	%dx, __ZL11sectorqueue.lto_priv.0
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.11(%ecx), %ecx
	orb	%cl, __ZL12drawingstate.lto_priv.0(%eax)
	.p2align 4
	.p2align 3
L561:
	movl	32(%esp), %eax
	movl	_sector, %edx
	movswl	__ZL11sectorqueue.lto_priv.0(%eax,%eax), %eax
	leal	(%eax,%eax,4), %ecx
	movl	_prsectors(,%eax,4), %ebx
	leal	(%edx,%ecx,8), %edi
	movswl	(%edi), %esi
	movl	%ebx, 12(%esp)
	sall	$5, %esi
	addl	_wall, %esi
	testb	$2, 560(%ebx)
	je	L625
L520:
	xorl	%ebx, %ebx
	jmp	L523
	.p2align 4,,10
	.p2align 3
L522:
	movswl	2(%edi), %eax
	addl	$1, %ebx
	addl	$32, %esi
	cmpl	%eax, %ebx
	jge	L626
L523:
	movswl	12(%esi), %eax
	testw	%ax, %ax
	js	L521
	movl	_prsectors(,%eax,4), %edx
	testb	$2, 560(%edx)
	je	L627
L521:
	movswl	(%edi), %edx
	movl	%edx, %eax
	addl	%ebx, %edx
	movl	_prwalls(,%edx,4), %edx
	testb	$2, 796(%edx)
	jne	L522
	addl	%ebx, %eax
	addl	$1, %ebx
	addl	$32, %esi
	cwtl
	call	_polymer_updatewall.lto_priv.0
	movswl	2(%edi), %eax
	cmpl	%eax, %ebx
	jl	L523
L626:
	testb	$1, 14(%edi)
	jne	L525
	cmpw	$0, 24(%ebp)
	jne	L526
	movl	12(%esp), %eax
	movl	8(%ebp), %ecx
	movl	%ecx, %edx
	subl	528(%eax), %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	movl	16(%ebp), %edx
	sarl	$4, %eax
	cmpl	%eax, %edx
	jg	L621
	testb	$1, 12(%edi)
	jne	L535
	movl	12(%esp), %eax
	subl	524(%eax), %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovs	%ecx, %eax
	sarl	$4, %eax
L564:
	cmpl	%edx, %eax
	jl	L622
	.p2align 4
	.p2align 3
L535:
	movl	%edi, 12(%esp)
	movl	%ebp, %edi
	xorl	%ebp, %ebp
	jmp	L557
	.p2align 4,,10
	.p2align 3
L629:
	cmpw	_numsectors, %ax
	jge	L544
	leal	(%eax,%eax,4), %ebx
	movl	_sector, %eax
	movswl	%cx, %ecx
	leal	(%eax,%ebx,8), %eax
	movl	%eax, 24(%esp)
	movl	16(%esp), %eax
	call	_wallvisible
	testl	%eax, %eax
	je	L562
L545:
	movl	12(%esp), %ebx
	movl	24(%esp), %ecx
	movzwl	14(%ebx), %eax
	testl	%ecx, %ecx
	sete	%dl
	movw	%ax, 16(%esp)
	notl	%eax
	andl	$1, %eax
	orb	%dl, %al
	movb	%al, 16(%esp)
	jne	L570
	testb	$1, 14(%ecx)
	je	L548
	testb	$1, 12(%ebx)
	movl	$0, %ebx
	je	L549
L550:
	movl	24(%esp), %eax
	testb	$1, 12(%eax)
	je	L549
L552:
	movl	12(%esp), %eax
	movl	4(%edi), %edx
	movzwl	(%eax), %ecx
	movl	(%edi), %eax
	addl	%ebp, %ecx
	movswl	%cx, %ecx
	call	_wallvisible
	testl	%eax, %eax
	jne	L553
L547:
	movl	12(%esp), %eax
	addl	$1, %ebp
	movswl	2(%eax), %eax
	cmpl	%ebp, %eax
	jle	L628
L557:
	movl	12(%esp), %eax
	movl	4(%edi), %edx
	movswl	(%eax), %ebx
	movl	%ebx, %ecx
	addl	%ebp, %ebx
	movl	_prwalls(,%ebx,4), %esi
	sall	$5, %ebx
	addl	%ebp, %ecx
	addl	_wall, %ebx
	movl	%ebx, 20(%esp)
	movswl	12(%ebx), %eax
	movl	(%edi), %ebx
	movl	%ebx, 16(%esp)
	testw	%ax, %ax
	jns	L629
L544:
	movl	16(%esp), %eax
	movswl	%cx, %ecx
	call	_wallvisible
	testl	%eax, %eax
	jne	L630
	movl	$0, 24(%esp)
L562:
	movl	20(%esp), %eax
	movswl	10(%eax), %ecx
	cmpw	$-1, %cx
	je	L547
	movl	4(%edi), %edx
	movl	(%edi), %eax
	call	_wallvisible
	testl	%eax, %eax
	jne	L545
	jmp	L547
	.p2align 4,,10
	.p2align 3
L625:
	cmpl	$2, _pr_nullrender
	jg	L520
	call	_polymer_updatesector.part.0.isra.0
	jmp	L520
	.p2align 4,,10
	.p2align 3
L627:
	cmpl	$2, _pr_nullrender
	jg	L521
	call	_polymer_updatesector.part.0.isra.0
	jmp	L521
	.p2align 4,,10
	.p2align 3
L630:
	movl	4(%esi), %edx
	movl	(%esi), %eax
	movl	%edi, %ecx
	call	_polymer_planeinlight.isra.0
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L549
	movl	28(%esp), %edx
	movl	%esi, %eax
	call	_polymer_addplanelight.lto_priv.0
	.p2align 4
	.p2align 3
L549:
	movl	256(%esi), %edx
	movl	252(%esi), %eax
	movl	%edi, %ecx
	call	_polymer_planeinlight.isra.0
	testl	%eax, %eax
	je	L552
	movl	28(%esp), %edx
	leal	252(%esi), %eax
	call	_polymer_addplanelight.lto_priv.0
	movl	12(%esp), %eax
	movl	4(%edi), %edx
	movzwl	(%eax), %ecx
	movl	(%edi), %eax
	addl	%ebp, %ecx
	movswl	%cx, %ecx
	call	_wallvisible
	testl	%eax, %eax
	je	L547
	cmpl	$1, %ebx
	jne	L553
	movl	508(%esi), %ebx
L554:
	cmpl	$4, %ebx
	jne	L555
	movl	504(%esi), %eax
	movss	4(%eax), %xmm0
	comiss	76(%eax), %xmm0
	jb	L555
	movss	28(%eax), %xmm0
	comiss	52(%eax), %xmm0
	jnb	L547
	.p2align 4
	.p2align 3
L555:
	movl	28(%esp), %edx
	leal	504(%esi), %eax
	call	_polymer_addplanelight.lto_priv.0
	movl	12(%esp), %eax
	movswl	(%eax), %eax
	addl	%ebp, %eax
	sall	$5, %eax
	addl	_wall, %eax
	movswl	12(%eax), %ecx
	movl	%ecx, %ebx
	cmpl	$4095, %ecx
	ja	L547
	movl	%ecx, %esi
	movl	%ecx, %edx
	sarl	$3, %esi
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.11(%edx), %edx
	movzbl	__ZL12drawingstate.lto_priv.0(%esi), %eax
	movb	%dl, 16(%esp)
	movl	%eax, %edx
	notl	%edx
	testb	%dl, 16(%esp)
	je	L547
	orb	16(%esp), %al
	movl	4(%edi), %edx
	movb	%al, __ZL12drawingstate.lto_priv.0(%esi)
	movl	(%edi), %eax
	movl	$0, (%esp)
	call	_getsectordist
	cmpl	16(%edi), %eax
	jge	L547
	movl	36(%esp), %eax
	addl	$1, %ebp
	movw	%bx, __ZL11sectorqueue.lto_priv.0(%eax,%eax)
	addl	$1, %eax
	movl	%eax, 36(%esp)
	movl	12(%esp), %eax
	movswl	2(%eax), %eax
	cmpl	%ebp, %eax
	jg	L557
	.p2align 4
	.p2align 3
L628:
	movl	32(%esp), %eax
	movl	%edi, %ebp
	movswl	__ZL11sectorqueue.lto_priv.0(%eax,%eax), %eax
	movswl	_headspritesect(%eax,%eax), %ebx
	testw	%bx, %bx
	jns	L560
	jmp	L558
	.p2align 6
	.p2align 4,,10
	.p2align 3
L559:
	movswl	_nextspritesect(%ebx,%ebx), %ebx
	testw	%bx, %bx
	js	L558
L560:
	imull	$44, %ebx, %eax
	addl	_sprite, %eax
	movl	_prsprites(,%ebx,4), %esi
	testb	$48, 12(%eax)
	je	L559
	testl	%esi, %esi
	je	L559
	movl	4(%esi), %edx
	movl	(%esi), %eax
	movl	%ebp, %ecx
	call	_polymer_planeinlight.isra.0
	testl	%eax, %eax
	je	L559
	movl	28(%esp), %edx
	movl	%esi, %eax
	call	_polymer_addplanelight.lto_priv.0
	movswl	_nextspritesect(%ebx,%ebx), %ebx
	testw	%bx, %bx
	jns	L560
	.p2align 4
	.p2align 3
L558:
	addl	$1, 32(%esp)
	movl	32(%esp), %eax
	cmpl	%eax, 36(%esp)
	jne	L561
	movl	52(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	movl	40(%esp), %ebx
	xorl	%eax, %eax
	movl	44(%esp), %esi
	movl	48(%esp), %edi
	addl	$56, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L570:
	.cfi_restore_state
	movb	%dl, 16(%esp)
L548:
	movl	4(%esi), %edx
	movl	(%esi), %eax
	movl	%edi, %ecx
	call	_polymer_planeinlight.isra.0
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L631
L551:
	movl	12(%esp), %eax
	testb	$1, 12(%eax)
	je	L549
	cmpb	$0, 16(%esp)
	je	L550
	jmp	L549
	.p2align 4,,10
	.p2align 3
L553:
	movl	508(%esi), %ebx
	movl	504(%esi), %eax
	movl	%edi, %ecx
	movl	%ebx, %edx
	call	_polymer_planeinlight.isra.0
	testl	%eax, %eax
	je	L547
	jmp	L554
	.p2align 4,,10
	.p2align 3
L631:
	movl	28(%esp), %edx
	movl	%esi, %eax
	call	_polymer_addplanelight.lto_priv.0
	jmp	L551
	.p2align 4,,10
	.p2align 3
L621:
	movl	12(%esp), %eax
	movl	28(%esp), %edx
	addl	$4, %eax
	call	_polymer_addplanelight.lto_priv.0
	movl	32(%esp), %eax
	movswl	__ZL11sectorqueue.lto_priv.0(%eax,%eax), %eax
	call	_yax_getbunch.constprop.0
	testw	%ax, %ax
	js	L525
	cwtl
	movzwl	_headsectbunch(%eax,%eax), %esi
	cmpw	$-1, %si
	je	L525
	movl	%ebp, 20(%esp)
	movl	%edi, 24(%esp)
	.p2align 4
	.p2align 3
L534:
	movswl	%si, %ebx
	testw	%si, %si
	js	L532
	movl	%ebx, %edi
	movl	%esi, %eax
	sarl	$3, %edi
	andl	$7, %eax
	movzbl	__ZL12drawingstate.lto_priv.0(%edi), %ebp
	movzbl	__ZL8pow2char.lto_priv.11(%eax), %ecx
	movl	%ebp, %eax
	movb	%cl, 16(%esp)
	notl	%eax
	testb	%al, %cl
	je	L532
	movl	_prsectors(,%ebx,4), %eax
	movl	20(%esp), %ecx
	movl	260(%eax), %edx
	movl	256(%eax), %eax
	call	_polymer_planeinlight.isra.0
	testl	%eax, %eax
	je	L532
	movzbl	16(%esp), %eax
	movl	36(%esp), %edx
	orl	%ebp, %eax
	movw	%si, __ZL11sectorqueue.lto_priv.0(%edx,%edx)
	movb	%al, __ZL12drawingstate.lto_priv.0(%edi)
	leal	1(%edx), %eax
	movl	%eax, 36(%esp)
	.p2align 4
	.p2align 3
L532:
	movzwl	_nextsectbunch(%ebx,%ebx), %esi
	cmpw	$-1, %si
	jne	L534
	movl	20(%esp), %ebp
	movl	24(%esp), %edi
	.p2align 4
	.p2align 3
L525:
	testb	$1, 12(%edi)
	jne	L535
	cmpw	$0, 24(%ebp)
	jne	L536
	movl	12(%esp), %eax
	movl	8(%ebp), %edx
	subl	524(%eax), %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	movl	16(%ebp), %edx
	sarl	$4, %eax
	jmp	L564
	.p2align 4,,10
	.p2align 3
L526:
	movl	12(%esp), %eax
	movl	%ebp, %ecx
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	call	_polymer_planeinlight.isra.0
	testl	%eax, %eax
	jne	L621
	testb	$1, 12(%edi)
	jne	L535
L536:
	movl	12(%esp), %eax
	movl	%ebp, %ecx
	movl	260(%eax), %edx
	movl	256(%eax), %eax
	call	_polymer_planeinlight.isra.0
	testl	%eax, %eax
	je	L535
L622:
	movl	12(%esp), %eax
	movl	28(%esp), %edx
	addl	$256, %eax
	call	_polymer_addplanelight.lto_priv.0
	movl	32(%esp), %eax
	movswl	__ZL11sectorqueue.lto_priv.0(%eax,%eax), %eax
	call	_yax_getbunch.constprop.1
	testw	%ax, %ax
	js	L535
	cwtl
	movzwl	_headsectbunch+512(%eax,%eax), %esi
	cmpw	$-1, %si
	je	L535
	movl	%ebp, 16(%esp)
	movl	%edi, 20(%esp)
	.p2align 4
	.p2align 3
L543:
	movswl	%si, %ebx
	testw	%si, %si
	js	L541
	movl	%ebx, %ebp
	movl	%esi, %eax
	sarl	$3, %ebp
	andl	$7, %eax
	movzbl	__ZL12drawingstate.lto_priv.0(%ebp), %edi
	movzbl	__ZL8pow2char.lto_priv.11(%eax), %ecx
	movl	%edi, %eax
	movb	%cl, 12(%esp)
	notl	%eax
	testb	%al, %cl
	je	L541
	movl	_prsectors(,%ebx,4), %eax
	movl	16(%esp), %ecx
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	call	_polymer_planeinlight.isra.0
	testl	%eax, %eax
	je	L541
	movzbl	12(%esp), %eax
	movl	36(%esp), %edx
	orl	%edi, %eax
	movw	%si, __ZL11sectorqueue.lto_priv.0(%edx,%edx)
	movb	%al, __ZL12drawingstate.lto_priv.0(%ebp)
	leal	1(%edx), %eax
	movl	%eax, 36(%esp)
	.p2align 4
	.p2align 3
L541:
	movzwl	_nextsectbunch+8192(%ebx,%ebx), %esi
	cmpw	$-1, %si
	jne	L543
	movl	16(%esp), %ebp
	movl	20(%esp), %edi
	jmp	L535
L623:
	.cfi_restore 5
	call	_calc_sector_reachability
	movl	__ZL16reachablesectors.lto_priv.0, %edx
	jmp	L518
	.cfi_endproc
LFE22:
	.p2align 4
	.globl	__Z15gltexinvalidateiii
	.def	__Z15gltexinvalidateiii;	.scl	2;	.type	32;	.endef
__Z15gltexinvalidateiii:
LFB27:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	%ebx, (%esp)
	.cfi_offset 3, -16
	movl	%eax, %ebx
	andl	$8191, %eax
	movl	_texcache+44(,%eax,4), %eax
	testl	%eax, %eax
	je	L632
	movl	%esi, 4(%esp)
	sarl	$2, %ecx
	.cfi_offset 6, -12
	movl	%edx, %esi
	movl	%edi, 8(%esp)
	.cfi_offset 7, -8
	jmp	L635
	.p2align 4
	.p2align 4,,10
	.p2align 3
L634:
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L644
L635:
	movswl	32(%eax), %edx
	cmpl	%ebx, %edx
	jne	L634
	movzbl	38(%eax), %edx
	cmpl	%esi, %edx
	jne	L634
	movzwl	34(%eax), %edx
	movl	%ecx, %edi
	xorl	%edx, %edi
	andl	$1, %edi
	jne	L634
	movl	%edx, %edi
	orw	$128, %di
	andl	$16, %edx
	movw	%di, 34(%eax)
	je	L634
	movl	4(%eax), %edx
	orw	$128, 34(%edx)
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L635
	.p2align 4
	.p2align 3
L644:
	movl	4(%esp), %esi
	.cfi_restore 6
	movl	8(%esp), %edi
	.cfi_restore 7
L632:
	movl	(%esp), %ebx
	addl	$12, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE27:
	.p2align 4
	.globl	__Z19gltexinvalidatetypei
	.def	__Z19gltexinvalidatetypei;	.scl	2;	.type	32;	.endef
__Z19gltexinvalidatetypei:
LFB28:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	xorl	%esi, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L646
	cmpl	$2, %eax
	je	L647
	cmpl	$1, %eax
	je	L648
	.p2align 4
	.p2align 3
L654:
	movl	_texcache+44(,%esi,4), %eax
	testl	%eax, %eax
	jne	L651
	jmp	L649
	.p2align 4
	.p2align 4,,10
	.p2align 3
L652:
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L649
L651:
	movl	8(%eax), %ecx
	testl	%ecx, %ecx
	jne	L652
	movzwl	34(%eax), %edx
	testb	$2, %dh
	jne	L652
	movl	%edx, %ecx
	orb	$-128, %cl
	andl	$16, %edx
	movw	%cx, 34(%eax)
	je	L652
	movl	4(%eax), %edx
	orw	$128, 34(%edx)
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L651
L649:
	addl	$1, %esi
	cmpl	$8192, %esi
	jne	L654
L655:
	movl	%ebx, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	_clearskins
L663:
	.cfi_restore_state
	addl	$1, %esi
	cmpl	$8192, %esi
	je	L655
	.p2align 4
	.p2align 3
L646:
	movl	_texcache+44(,%esi,4), %eax
	testl	%eax, %eax
	je	L663
	.p2align 6
	.p2align 4
	.p2align 3
L665:
	movzwl	34(%eax), %edx
	movl	%edx, %ecx
	orb	$-128, %cl
	andl	$16, %edx
	movw	%cx, 34(%eax)
	je	L664
	movl	4(%eax), %edx
	orw	$128, 34(%edx)
L664:
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L665
	addl	$1, %esi
	cmpl	$8192, %esi
	jne	L646
	jmp	L655
L659:
	addl	$1, %esi
	cmpl	$8192, %esi
	je	L655
	.p2align 4
	.p2align 3
L647:
	movl	_texcache+44(,%esi,4), %eax
	testl	%eax, %eax
	je	L659
	.p2align 4
	.p2align 3
L661:
	movzwl	34(%eax), %edx
	testb	$2, %dh
	jne	L662
	movl	%edx, %ecx
	orb	$-128, %cl
	andl	$16, %edx
	movw	%cx, 34(%eax)
	je	L662
	movl	4(%eax), %edx
	orw	$128, 34(%edx)
L662:
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L661
	addl	$1, %esi
	cmpl	$8192, %esi
	jne	L647
	jmp	L655
	.p2align 4,,10
	.p2align 3
L656:
	addl	$1, %esi
	cmpl	$8192, %esi
	je	L655
L648:
	movl	_texcache+44(,%esi,4), %eax
	testl	%eax, %eax
	jne	L658
	jmp	L656
	.p2align 4
	.p2align 4,,10
	.p2align 3
L657:
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L656
L658:
	movl	8(%eax), %edx
	testl	%edx, %edx
	jne	L657
	movzwl	34(%eax), %edx
	movl	%edx, %ecx
	orb	$-128, %cl
	andl	$16, %edx
	movw	%cx, 34(%eax)
	je	L657
	movl	4(%eax), %edx
	orw	$128, 34(%edx)
	jmp	L657
	.cfi_endproc
LFE28:
	.p2align 4
	.globl	__Z15bind_2d_textureji.isra.0
	.def	__Z15bind_2d_textureji.isra.0;	.scl	2;	.type	32;	.endef
__Z15bind_2d_textureji.isra.0:
LFB30:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$12, %esp
	.cfi_def_cfa_offset 24
	cmpl	$-1, %eax
	je	L712
	movl	$9729, %eax
	movl	$5, %esi
	movl	$10, %ebx
L703:
	addl	%esi, %ebx
	movl	%eax, 8(%esp)
	movl	$10240, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 12
	movl	_glfiltermodes+4(,%ebx,4), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 24
	movl	%eax, 8(%esp)
	movl	$10241, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 12
	movl	_glad_glTexParameterf, %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 24
	cmpl	$3, _rendmode
	je	L713
L704:
	movss	LC0, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	_glanisotropy, %xmm1
	comiss	%xmm1, %xmm0
	jb	L714
L705:
	movl	$34046, 4(%esp)
	movl	$3553, (%esp)
	movss	%xmm0, 8(%esp)
	call	*%eax
	.cfi_def_cfa_offset 12
	subl	$12, %esp
	.cfi_def_cfa_offset 24
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
L714:
	.cfi_restore_state
	movss	_glinfo+16, %xmm2
	movaps	%xmm2, %xmm0
	cmpnless	%xmm1, %xmm0
	andps	%xmm0, %xmm1
	andnps	%xmm2, %xmm0
	orps	%xmm1, %xmm0
	jmp	L705
	.p2align 4,,10
	.p2align 3
L713:
	movl	_r_useindexedcolortextures, %ecx
	testl	%ecx, %ecx
	je	L704
	movss	LC0, %xmm0
	movl	_gltexfiltermode, %edx
	testl	%edx, %edx
	je	L705
	jmp	L704
	.p2align 4,,10
	.p2align 3
L712:
	movl	_gltexfiltermode, %esi
	leal	(%esi,%esi), %ebx
	leal	(%ebx,%esi), %eax
	movl	_glfiltermodes+8(,%eax,4), %eax
	jmp	L703
	.cfi_endproc
LFE30:
	.p2align 4
	.globl	__Z16multiplyMatrix4fPfPKf.constprop.0.isra.0
	.def	__Z16multiplyMatrix4fPfPKf.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
__Z16multiplyMatrix4fPfPKf.constprop.0.isra.0:
LFB33:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$32, %esp
	movups	(%eax), %xmm3
	movups	32(%edx), %xmm5
	movups	48(%edx), %xmm4
	movups	(%edx), %xmm7
	movups	16(%edx), %xmm6
	movups	%xmm5, 16(%esp)
	movaps	%xmm3, %xmm5
	movups	16(%eax), %xmm2
	movups	%xmm4, (%esp)
	movaps	%xmm3, %xmm4
	shufps	$0, %xmm3, %xmm5
	movups	32(%eax), %xmm1
	shufps	$85, %xmm3, %xmm4
	mulps	%xmm7, %xmm5
	movups	48(%eax), %xmm0
	mulps	%xmm6, %xmm4
	addps	%xmm4, %xmm5
	movaps	%xmm3, %xmm4
	shufps	$170, %xmm3, %xmm4
	mulps	16(%esp), %xmm4
	shufps	$255, %xmm3, %xmm3
	mulps	(%esp), %xmm3
	addps	%xmm5, %xmm4
	movups	16(%esp), %xmm5
	addps	%xmm3, %xmm4
	movaps	%xmm2, %xmm3
	shufps	$0, %xmm2, %xmm3
	movups	%xmm4, (%eax)
	movaps	%xmm3, %xmm4
	movaps	%xmm2, %xmm3
	shufps	$85, %xmm2, %xmm3
	mulps	%xmm7, %xmm4
	mulps	%xmm6, %xmm3
	addps	%xmm3, %xmm4
	movaps	%xmm2, %xmm3
	shufps	$170, %xmm2, %xmm3
	mulps	%xmm5, %xmm3
	shufps	$255, %xmm2, %xmm2
	addps	%xmm4, %xmm3
	movups	(%esp), %xmm4
	mulps	%xmm4, %xmm2
	addps	%xmm2, %xmm3
	movaps	%xmm1, %xmm2
	shufps	$0, %xmm1, %xmm2
	mulps	%xmm7, %xmm2
	movups	%xmm3, 16(%eax)
	movaps	%xmm1, %xmm3
	shufps	$85, %xmm1, %xmm3
	mulps	%xmm6, %xmm3
	addps	%xmm3, %xmm2
	movaps	%xmm1, %xmm3
	shufps	$170, %xmm1, %xmm3
	mulps	%xmm5, %xmm3
	shufps	$255, %xmm1, %xmm1
	mulps	%xmm4, %xmm1
	addps	%xmm3, %xmm2
	addps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	shufps	$0, %xmm0, %xmm1
	mulps	%xmm7, %xmm1
	movups	%xmm2, 32(%eax)
	movaps	%xmm0, %xmm2
	shufps	$85, %xmm0, %xmm2
	mulps	%xmm6, %xmm2
	addps	%xmm2, %xmm1
	movaps	%xmm0, %xmm2
	shufps	$170, %xmm0, %xmm2
	mulps	%xmm5, %xmm2
	shufps	$255, %xmm0, %xmm0
	mulps	%xmm4, %xmm0
	addps	%xmm2, %xmm1
	addps	%xmm1, %xmm0
	movups	%xmm0, 48(%eax)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE33:
	.section .rdata,"dr"
LC24:
	.ascii "glCreateShader failed!\0"
LC25:
	.ascii "source/build/src/polymost.cpp\0"
LC26:
	.ascii "Compile Status: %u\0"
LC27:
	.ascii "Log:\12%s\0"
	.text
	.p2align 4
	.globl	__ZL23polymost2_compileShaderjPKcPi.lto_priv.0
	.def	__ZL23polymost2_compileShaderjPKcPi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL23polymost2_compileShaderjPKcPi.lto_priv.0:
LFB34:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$36, %esp
	.cfi_def_cfa_offset 48
	movl	%edx, 24(%esp)
	movl	%eax, (%esp)
	call	*_glad_glCreateShader
	.cfi_def_cfa_offset 44
	subl	$4, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L727
	leal	24(%esp), %eax
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	%ebx, (%esp)
	call	*_glad_glShaderSource
	.cfi_def_cfa_offset 32
	subl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	%ebx, (%esp)
	call	*_glad_glCompileShader
	.cfi_def_cfa_offset 44
	subl	$4, %esp
	.cfi_def_cfa_offset 48
	leal	28(%esp), %eax
	movl	$35713, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, (%esp)
	call	*_glad_glGetShaderiv
	.cfi_def_cfa_offset 36
	subl	$12, %esp
	.cfi_def_cfa_offset 48
	movl	28(%esp), %eax
	testl	%eax, %eax
	jne	L717
	leal	32(%esp), %esi
	movl	$35716, 4(%esp)
	movl	%esi, 8(%esp)
	movl	%ebx, (%esp)
	call	*_glad_glGetShaderiv
	.cfi_def_cfa_offset 36
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	subl	$12, %esp
	.cfi_def_cfa_offset 48
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$2, %eax
	jg	L728
L720:
	movl	32(%esp), %edx
	testl	%edx, %edx
	jg	L729
L717:
	addl	$36, %esp
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
L727:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$2, %eax
	jle	L717
	movl	$LC24, 12(%esp)
	movl	$454, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	$3, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L717
	.p2align 4,,10
	.p2align 3
L729:
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, 20(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 44
	subl	$4, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	je	L722
	movl	%eax, 12(%esp)
	movl	%eax, 20(%esp)
	movl	32(%esp), %eax
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	*_glad_glGetShaderInfoLog
	.cfi_def_cfa_offset 32
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	subl	$16, %esp
	.cfi_def_cfa_offset 48
	cmpl	%edx, %eax
	movl	20(%esp), %ecx
	cmovl	%edx, %eax
	cmpl	$2, %eax
	jg	L730
L723:
	movl	%ecx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 44
	movl	%ebx, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 48
	addl	$36, %esp
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
L728:
	.cfi_restore_state
	movl	28(%esp), %eax
	movl	$LC26, 12(%esp)
	movl	$470, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC25, 4(%esp)
	movl	$3, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L720
	.p2align 4,,10
	.p2align 3
L730:
	movl	%ecx, 16(%esp)
	movl	$LC27, 12(%esp)
	movl	$475, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	$3, (%esp)
	movl	%ecx, 20(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	20(%esp), %ecx
	jmp	L723
	.p2align 4,,10
	.p2align 3
L722:
	movl	20(%esp), %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE34:
	.p2align 4
	.globl	__Z28polymost_resetVertexPointersv
	.def	__Z28polymost_resetVertexPointersv;	.scl	2;	.type	32;	.endef
__Z28polymost_resetVertexPointersv:
LFB35:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	_drawpolyVertsID, %edx
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj
	movl	$0, 12(%esp)
	movl	$20, 8(%esp)
	movl	$5126, 4(%esp)
	movl	$3, (%esp)
	call	*_glad_glVertexPointer
	.cfi_def_cfa_offset 4
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	$12, 12(%esp)
	movl	$20, 8(%esp)
	movl	$5126, 4(%esp)
	movl	$2, (%esp)
	call	*_glad_glTexCoordPointer
	.cfi_def_cfa_offset 4
	movl	_r_detailmapping, %edx
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	testl	%edx, %edx
	je	L732
	movl	$33987, (%esp)
	call	*_glad_glClientActiveTexture
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$12, 12(%esp)
	movl	$20, 8(%esp)
	movl	$5126, 4(%esp)
	movl	$2, (%esp)
	call	*_glad_glTexCoordPointer
	.cfi_def_cfa_offset 4
	subl	$16, %esp
	.cfi_def_cfa_offset 20
L732:
	movl	_r_glowmapping, %eax
	testl	%eax, %eax
	je	L733
	movl	$33988, (%esp)
	call	*_glad_glClientActiveTexture
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$12, 12(%esp)
	movl	$20, 8(%esp)
	movl	$5126, 4(%esp)
	movl	$2, (%esp)
	call	*_glad_glTexCoordPointer
	.cfi_def_cfa_offset 4
	subl	$16, %esp
	.cfi_def_cfa_offset 20
L733:
	movl	$33984, (%esp)
	call	*_glad_glClientActiveTexture
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	addl	$16, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE35:
	.section .rdata,"dr"
LC28:
	.ascii "polymost_resetState()\0"
LC29:
	.ascii "polymost_resetProgram()\0"
	.text
	.p2align 4
	.globl	__Z19polymost_resetStatev
	.def	__Z19polymost_resetStatev;	.scl	2;	.type	32;	.endef
__Z19polymost_resetStatev:
LFB36:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	$LC28, 4(%esp)
	movl	$3, (%esp)
	call	__Z26buildgl_outputDebugMessagehPKcz.constprop.0
	call	__Z28buildgl_resetStateAccountingv
	call	__Z28polymost_resetVertexPointersv
	cmpl	$3, _rendmode
	je	L745
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L745:
	.cfi_restore_state
	movl	$LC29, 4(%esp)
	movl	$3, (%esp)
	call	__Z26buildgl_outputDebugMessagehPKcz.constprop.0
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	movl	%eax, 8(%esp)
	call	*_glad_glUseProgram
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	8(%esp), %eax
	movl	%eax, _gl
	cmpl	$33985, _gl+4
	je	L737
	movl	$33985, _gl+4
	movl	$33985, (%esp)
	call	*_glad_glActiveTexture
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
L737:
	movl	__ZL16palswapTextureID.lto_priv.0, %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	cmpl	$33986, _gl+4
	je	L738
	movl	$33986, _gl+4
	movl	$33986, (%esp)
	call	*_glad_glActiveTexture
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
L738:
	movzbl	_curbasepal, %eax
	movl	__ZL17paletteTextureIDs(,%eax,4), %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	_gl+4, %edx
	cmpl	$33984, %edx
	je	L741
	movl	$33984, _gl+4
	movl	$33984, (%esp)
	call	*_glad_glActiveTexture
	.cfi_def_cfa_offset 12
	movl	_gl+4, %edx
	movl	$88, %eax
	xorl	%ecx, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	testl	%edx, %edx
	jne	L746
	addl	$_gl, %eax
	movl	%ecx, %edx
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	jmp	_inthash_delete
	.p2align 4,,10
	.p2align 3
L746:
	.cfi_restore_state
	movl	%edx, %ecx
L739:
	sall	$4, %edx
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	leal	-543656(%edx), %eax
	movl	%ecx, %edx
	addl	$_gl, %eax
	jmp	_inthash_delete
	.p2align 4,,10
	.p2align 3
L741:
	.cfi_restore_state
	movl	$33984, %ecx
	jmp	L739
	.cfi_endproc
LFE36:
	.section .rdata,"dr"
	.align 4
LC30:
	.ascii "polymost_setCurrentShaderProgram(programID:%u)\0"
LC31:
	.ascii "s_texture\0"
LC32:
	.ascii "s_palswap\0"
LC33:
	.ascii "s_palette\0"
LC34:
	.ascii "s_detail\0"
LC35:
	.ascii "s_glow\0"
LC36:
	.ascii "u_texturePosSize\0"
LC37:
	.ascii "u_halfTexelSize\0"
LC38:
	.ascii "u_palswapPos\0"
LC39:
	.ascii "u_palswapSize\0"
LC40:
	.ascii "u_clamp\0"
LC41:
	.ascii "u_shade\0"
LC42:
	.ascii "u_numShades\0"
LC43:
	.ascii "u_visFactor\0"
LC44:
	.ascii "u_fogEnabled\0"
LC45:
	.ascii "u_usePalette\0"
LC46:
	.ascii "u_useColorOnly\0"
LC47:
	.ascii "u_useDetailMapping\0"
LC48:
	.ascii "u_useGlowMapping\0"
LC49:
	.ascii "u_npotEmulation\0"
LC50:
	.ascii "u_rotMatrix\0"
LC51:
	.ascii "u_shadeInterpolate\0"
LC52:
	.ascii "u_colorCorrection\0"
	.text
	.p2align 4
	.globl	__ZL32polymost_setCurrentShaderProgramj.lto_priv.0
	.def	__ZL32polymost_setCurrentShaderProgramj.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL32polymost_setCurrentShaderProgramj.lto_priv.0:
LFB42:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$20, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, 8(%esp)
	movl	$LC30, 4(%esp)
	movl	$3, (%esp)
	call	__Z26buildgl_outputDebugMessagehPKcz.constprop.0
	movl	%ebx, __ZL31polymost1CurrentShaderProgramID.lto_priv.0
	movl	%ebx, (%esp)
	call	*_glad_glUseProgram
	.cfi_def_cfa_offset 24
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, _gl
	movl	$LC31, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL22polymost1TexSamplerLoc.lto_priv.0
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC32, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL26polymost1PalSwapSamplerLoc.lto_priv.0
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC33, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL26polymost1PaletteSamplerLoc.lto_priv.0
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC34, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL25polymost1DetailSamplerLoc.lto_priv.0
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC35, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL23polymost1GlowSamplerLoc.lto_priv.0
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC36, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL26polymost1TexturePosSizeLoc
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC37, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL25polymost1HalfTexelSizeLoc
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC38, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL22polymost1PalswapPosLoc
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC39, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL23polymost1PalswapSizeLoc.lto_priv.0
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC40, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL17polymost1ClampLoc
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC41, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL17polymost1ShadeLoc
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC42, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL21polymost1NumShadesLoc
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC43, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL21polymost1VisFactorLoc
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC44, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL22polymost1FogEnabledLoc.lto_priv.0
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC45, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL22polymost1UsePaletteLoc.lto_priv.0
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC46, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL24polymost1UseColorOnlyLoc.lto_priv.0
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC47, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL28polymost1UseDetailMappingLoc.lto_priv.0
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC48, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL26polymost1UseGlowMappingLoc.lto_priv.0
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC49, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL25polymost1NPOTEmulationLoc
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC50, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL21polymost1RotMatrixLoc.lto_priv.0
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC51, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL28polymost1ShadeInterpolateLoc.lto_priv.0
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC52, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	movss	__ZL23polymost1TexturePosSize+12, %xmm0
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL27polymost1ColorCorrectionLoc.lto_priv.0
	movl	__ZL26polymost1TexturePosSizeLoc, %eax
	movss	%xmm0, 16(%esp)
	movss	__ZL23polymost1TexturePosSize+8, %xmm0
	movl	%eax, (%esp)
	movss	%xmm0, 12(%esp)
	movss	__ZL23polymost1TexturePosSize+4, %xmm0
	movss	%xmm0, 8(%esp)
	movss	__ZL23polymost1TexturePosSize, %xmm0
	movss	%xmm0, 4(%esp)
	call	*_glad_glUniform4f
	.cfi_def_cfa_offset 8
	movl	__ZL25polymost1HalfTexelSizeLoc, %eax
	movss	__ZL22polymost1HalfTexelSize+4, %xmm0
	subl	$20, %esp
	.cfi_def_cfa_offset 28
	movss	%xmm0, 8(%esp)
	movss	__ZL22polymost1HalfTexelSize, %xmm0
	movl	%eax, (%esp)
	movss	%xmm0, 4(%esp)
	call	*_glad_glUniform2f
	.cfi_def_cfa_offset 16
	movl	__ZL22polymost1PalswapPosLoc, %eax
	movss	__ZL19polymost1PalswapPos+4, %xmm0
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movss	%xmm0, 8(%esp)
	movss	__ZL19polymost1PalswapPos, %xmm0
	movl	%eax, (%esp)
	movss	%xmm0, 4(%esp)
	call	*_glad_glUniform2f
	.cfi_def_cfa_offset 16
	movl	__ZL23polymost1PalswapSizeLoc.lto_priv.0, %eax
	movss	__ZL25polymost1PalswapInnerSize.lto_priv.0+4, %xmm0
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movss	%xmm0, 8(%esp)
	movss	__ZL25polymost1PalswapInnerSize.lto_priv.0, %xmm0
	movl	%eax, (%esp)
	movss	%xmm0, 4(%esp)
	call	*_glad_glUniform2f
	.cfi_def_cfa_offset 16
	movl	__ZL17polymost1ClampLoc, %eax
	movss	__ZL14polymost1Clamp.lto_priv.0+4, %xmm0
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movss	%xmm0, 8(%esp)
	movss	__ZL14polymost1Clamp.lto_priv.0, %xmm0
	movl	%eax, (%esp)
	movss	%xmm0, 4(%esp)
	call	*_glad_glUniform2f
	.cfi_def_cfa_offset 16
	movl	__ZL17polymost1ShadeLoc, %eax
	movss	__ZL14polymost1Shade, %xmm0
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, (%esp)
	movss	%xmm0, 4(%esp)
	call	*_glad_glUniform1f
	.cfi_def_cfa_offset 20
	movl	__ZL21polymost1NumShadesLoc, %eax
	movss	__ZL18polymost1NumShades+4, %xmm0
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movss	%xmm0, 8(%esp)
	movss	__ZL18polymost1NumShades, %xmm0
	movl	%eax, (%esp)
	movss	%xmm0, 4(%esp)
	call	*_glad_glUniform2f
	.cfi_def_cfa_offset 16
	movl	__ZL21polymost1VisFactorLoc, %eax
	movss	__ZL18polymost1VisFactor, %xmm0
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, (%esp)
	movss	%xmm0, 4(%esp)
	call	*_glad_glUniform1f
	.cfi_def_cfa_offset 20
	movl	__ZL22polymost1FogEnabledLoc.lto_priv.0, %eax
	movss	__ZL19polymost1FogEnabled.lto_priv.0, %xmm0
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, (%esp)
	movss	%xmm0, 4(%esp)
	call	*_glad_glUniform1f
	.cfi_def_cfa_offset 20
	movl	__ZL24polymost1UseColorOnlyLoc.lto_priv.0, %eax
	movss	__ZL21polymost1UseColorOnly.lto_priv.0, %xmm0
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, (%esp)
	movss	%xmm0, 4(%esp)
	call	*_glad_glUniform1f
	.cfi_def_cfa_offset 20
	movl	__ZL22polymost1UsePaletteLoc.lto_priv.0, %eax
	movss	__ZL19polymost1UsePalette.lto_priv.0, %xmm0
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, (%esp)
	movss	%xmm0, 4(%esp)
	call	*_glad_glUniform1f
	.cfi_def_cfa_offset 20
	movl	__ZL28polymost1UseDetailMappingLoc.lto_priv.0, %eax
	movss	__ZL25polymost1UseDetailMapping.lto_priv.0, %xmm0
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, (%esp)
	movss	%xmm0, 4(%esp)
	call	*_glad_glUniform1f
	.cfi_def_cfa_offset 20
	movl	__ZL26polymost1UseGlowMappingLoc.lto_priv.0, %eax
	movss	__ZL23polymost1UseGlowMapping.lto_priv.0, %xmm0
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, (%esp)
	movss	%xmm0, 4(%esp)
	call	*_glad_glUniform1f
	.cfi_def_cfa_offset 20
	movl	__ZL25polymost1NPOTEmulationLoc, %eax
	movss	__ZL22polymost1NPOTEmulation+12, %xmm0
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movss	%xmm0, 16(%esp)
	movss	__ZL22polymost1NPOTEmulation+8, %xmm0
	movl	%eax, (%esp)
	movss	%xmm0, 12(%esp)
	movss	__ZL22polymost1NPOTEmulation+4, %xmm0
	movss	%xmm0, 8(%esp)
	movss	__ZL22polymost1NPOTEmulation, %xmm0
	movss	%xmm0, 4(%esp)
	call	*_glad_glUniform4f
	.cfi_def_cfa_offset 8
	movl	__ZL21polymost1RotMatrixLoc.lto_priv.0, %eax
	subl	$20, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, (%esp)
	movl	$__ZL18polymost1RotMatrix.lto_priv.0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	call	*_glad_glUniformMatrix4fv
	.cfi_def_cfa_offset 12
	movl	__ZL28polymost1ShadeInterpolateLoc.lto_priv.0, %eax
	movss	__ZL25polymost1ShadeInterpolate.lto_priv.0, %xmm0
	subl	$16, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, (%esp)
	movss	%xmm0, 4(%esp)
	call	*_glad_glUniform1f
	.cfi_def_cfa_offset 20
	movl	__ZL27polymost1ColorCorrectionLoc.lto_priv.0, %eax
	movss	_g_glColorCorrection+12, %xmm0
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movss	%xmm0, 16(%esp)
	movss	_g_glColorCorrection+8, %xmm0
	movl	%eax, (%esp)
	movss	%xmm0, 12(%esp)
	movss	_g_glColorCorrection+4, %xmm0
	movss	%xmm0, 8(%esp)
	movss	_g_glColorCorrection, %xmm0
	movss	%xmm0, 4(%esp)
	call	*_glad_glUniform4f
	.cfi_def_cfa_offset 8
	subl	$20, %esp
	.cfi_def_cfa_offset 28
	addl	$20, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE42:
	.p2align 4
	.globl	__Z26polymost_setTexturePosSizeRK4vec4IfE
	.def	__Z26polymost_setTexturePosSizeRK4vec4IfE;	.scl	2;	.type	32;	.endef
__Z26polymost_setTexturePosSizeRK4vec4IfE:
LFB43:
	.cfi_startproc
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %ecx
	cmpl	%ecx, _gl
	jne	L752
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	(%eax), %edx
	movl	%edx, __ZL23polymost1TexturePosSize
	movl	4(%eax), %edx
	movl	%edx, __ZL23polymost1TexturePosSize+4
	movl	8(%eax), %edx
	movl	12(%eax), %eax
	movl	%edx, __ZL23polymost1TexturePosSize+8
	movl	%eax, __ZL23polymost1TexturePosSize+12
	movl	__ZL26polymost1TexturePosSizeLoc, %eax
	movss	__ZL23polymost1TexturePosSize+12, %xmm0
	movl	%eax, (%esp)
	movss	%xmm0, 16(%esp)
	movss	__ZL23polymost1TexturePosSize+8, %xmm0
	movss	%xmm0, 12(%esp)
	movss	__ZL23polymost1TexturePosSize+4, %xmm0
	movss	%xmm0, 8(%esp)
	movss	__ZL23polymost1TexturePosSize, %xmm0
	movss	%xmm0, 4(%esp)
	call	*_glad_glUniform4f
	.cfi_def_cfa_offset 4
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L752:
	ret
	.cfi_endproc
LFE43:
	.p2align 4
	.globl	__Z25polymost_setHalfTexelSizeRK4vec2IfE
	.def	__Z25polymost_setHalfTexelSizeRK4vec2IfE;	.scl	2;	.type	32;	.endef
__Z25polymost_setHalfTexelSizeRK4vec2IfE:
LFB45:
	.cfi_startproc
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %ecx
	cmpl	%ecx, _gl
	jne	L762
	movss	(%eax), %xmm0
	ucomiss	__ZL22polymost1HalfTexelSize, %xmm0
	jp	L757
	jne	L757
	movss	4(%eax), %xmm1
	ucomiss	__ZL22polymost1HalfTexelSize+4, %xmm1
	jp	L757
	je	L762
L757:
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movss	%xmm0, 4(%esp)
	movl	%eax, __ZL22polymost1HalfTexelSize
	movl	__ZL25polymost1HalfTexelSizeLoc, %eax
	movl	%edx, __ZL22polymost1HalfTexelSize+4
	movss	__ZL22polymost1HalfTexelSize+4, %xmm1
	movl	%eax, (%esp)
	movss	%xmm1, 8(%esp)
	call	*_glad_glUniform2f
	.cfi_def_cfa_offset 4
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L762:
	ret
	.cfi_endproc
LFE45:
	.p2align 4
	.globl	__Z17polymost_setClampc
	.def	__Z17polymost_setClampc;	.scl	2;	.type	32;	.endef
__Z17polymost_setClampc:
LFB46:
	.cfi_startproc
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %ecx
	cmpl	%ecx, _gl
	jne	L772
	movl	%eax, %edx
	xorps	%xmm0, %xmm0
	shrb	%al
	xorps	%xmm1, %xmm1
	andl	$1, %edx
	movzbl	%al, %eax
	cvtsi2ssl	%edx, %xmm0
	ucomiss	__ZL14polymost1Clamp.lto_priv.0, %xmm0
	movl	$0, %edx
	cvtsi2ssl	%eax, %xmm1
	setnp	%al
	cmovne	%edx, %eax
	testb	%al, %al
	je	L767
	ucomiss	__ZL14polymost1Clamp.lto_priv.0+4, %xmm1
	setnp	%al
	cmovne	%edx, %eax
	testb	%al, %al
	je	L767
L772:
	ret
	.p2align 4,,10
	.p2align 3
L767:
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	__ZL17polymost1ClampLoc, %eax
	movss	%xmm0, __ZL14polymost1Clamp.lto_priv.0
	movss	%xmm1, __ZL14polymost1Clamp.lto_priv.0+4
	movl	%eax, (%esp)
	movss	%xmm1, 8(%esp)
	movss	%xmm0, 4(%esp)
	call	*_glad_glUniform2f
	.cfi_def_cfa_offset 4
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE46:
	.p2align 4
	.globl	__Z22polymost_setVisibilityf
	.def	__Z22polymost_setVisibilityf;	.scl	2;	.type	32;	.endef
__Z22polymost_setVisibilityf:
LFB47:
	.cfi_startproc
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L782
	cmpl	$3, _rendmode
	je	L785
L784:
	movss	LC53, %xmm0
L778:
	mulss	_fviewingrange, %xmm0
	mulss	LC54, %xmm0
	ucomiss	__ZL18polymost1VisFactor, %xmm0
	jp	L780
	je	L782
L780:
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	__ZL21polymost1VisFactorLoc, %eax
	movss	%xmm0, __ZL18polymost1VisFactor
	movss	%xmm0, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	.cfi_def_cfa_offset 4
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L782:
	ret
	.p2align 4,,10
	.p2align 3
L785:
	movl	_r_useindexedcolortextures, %edx
	testl	%edx, %edx
	je	L784
	movl	_gltexfiltermode, %eax
	testl	%eax, %eax
	je	L778
	jmp	L784
	.cfi_endproc
LFE47:
	.p2align 4
	.globl	__Z25polymost_useDetailMappingc
	.def	__Z25polymost_useDetailMappingc;	.scl	2;	.type	32;	.endef
__Z25polymost_useDetailMappingc:
LFB49:
	.cfi_startproc
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %ecx
	cmpl	%ecx, _gl
	jne	L795
	movzbl	%al, %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	ucomiss	__ZL25polymost1UseDetailMapping.lto_priv.0, %xmm0
	jp	L790
	je	L795
L790:
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	testb	%al, %al
	jne	L797
L789:
	xorps	%xmm0, %xmm0
	movl	__ZL28polymost1UseDetailMappingLoc.lto_priv.0, %eax
	cvtsi2ssl	%edx, %xmm0
	movl	%eax, (%esp)
	movss	%xmm0, __ZL25polymost1UseDetailMapping.lto_priv.0
	movss	%xmm0, 4(%esp)
	call	*_glad_glUniform1f
	.cfi_def_cfa_offset 8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L795:
	ret
	.p2align 4,,10
	.p2align 3
L797:
	.cfi_def_cfa_offset 16
	movl	__ZL32polymost1ExtendedShaderProgramID.lto_priv.0, %eax
	movl	%edx, 8(%esp)
	call	__ZL32polymost_setCurrentShaderProgramj.lto_priv.0
	movl	8(%esp), %edx
	jmp	L789
	.cfi_endproc
LFE49:
	.p2align 4
	.globl	__Z23polymost_useGlowMappingc
	.def	__Z23polymost_useGlowMappingc;	.scl	2;	.type	32;	.endef
__Z23polymost_useGlowMappingc:
LFB51:
	.cfi_startproc
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %ecx
	cmpl	%ecx, _gl
	jne	L807
	movzbl	%al, %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	ucomiss	__ZL23polymost1UseGlowMapping.lto_priv.0, %xmm0
	jp	L802
	je	L807
L802:
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	testb	%al, %al
	jne	L809
L801:
	xorps	%xmm0, %xmm0
	movl	__ZL26polymost1UseGlowMappingLoc.lto_priv.0, %eax
	cvtsi2ssl	%edx, %xmm0
	movl	%eax, (%esp)
	movss	%xmm0, __ZL23polymost1UseGlowMapping.lto_priv.0
	movss	%xmm0, 4(%esp)
	call	*_glad_glUniform1f
	.cfi_def_cfa_offset 8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L807:
	ret
	.p2align 4,,10
	.p2align 3
L809:
	.cfi_def_cfa_offset 16
	movl	__ZL32polymost1ExtendedShaderProgramID.lto_priv.0, %eax
	movl	%edx, 8(%esp)
	call	__ZL32polymost_setCurrentShaderProgramj.lto_priv.0
	movl	8(%esp), %edx
	jmp	L801
	.cfi_endproc
LFE51:
	.p2align 4
	.globl	__Z22polymost_npotEmulationcff
	.def	__Z22polymost_npotEmulationcff;	.scl	2;	.type	32;	.endef
__Z22polymost_npotEmulationcff:
LFB53:
	.cfi_startproc
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %edx
	cmpl	%edx, _gl
	jne	L815
	movzbl	%al, %eax
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	ucomiss	__ZL22polymost1NPOTEmulation+8, %xmm2
	jp	L813
	je	L815
L813:
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	xorps	%xmm3, %xmm3
	movss	LC0, %xmm2
	movss	%xmm1, __ZL22polymost1NPOTEmulation
	cvtsi2ssl	%eax, %xmm3
	movl	__ZL25polymost1NPOTEmulationLoc, %eax
	movss	%xmm0, __ZL22polymost1NPOTEmulation+4
	divss	%xmm0, %xmm2
	movss	%xmm0, 8(%esp)
	movl	%eax, (%esp)
	movss	%xmm1, 4(%esp)
	movss	%xmm3, __ZL22polymost1NPOTEmulation+8
	movss	%xmm3, 12(%esp)
	movss	%xmm2, __ZL22polymost1NPOTEmulation+12
	movss	%xmm2, 16(%esp)
	call	*_glad_glUniform4f
	.cfi_def_cfa_offset 4
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L815:
	ret
	.cfi_endproc
LFE53:
	.p2align 4
	.globl	__ZL16polymost_bindPthPK8pthtyp_t.lto_priv.0
	.def	__ZL16polymost_bindPthPK8pthtyp_t.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL16polymost_bindPthPK8pthtyp_t.lto_priv.0:
LFB55:
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
	subl	$32, %esp
	movzwl	34(%eax), %eax
	movups	LC55, %xmm0
	movl	$0x00000000, 8(%esp)
	andw	$514, %ax
	movl	$0x00000000, 12(%esp)
	movups	%xmm0, 16(%esp)
	cmpw	$512, %ax
	je	L825
L818:
	leal	16(%esp), %eax
	call	__Z26polymost_setTexturePosSizeRK4vec4IfE
	leal	8(%esp), %eax
	call	__Z25polymost_setHalfTexelSizeRK4vec2IfE
	movl	12(%ebx), %eax
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
	jmp	__Z19buildgl_bindTexturejj.constprop.0
	.p2align 4,,10
	.p2align 3
L825:
	.cfi_restore_state
	movswl	32(%ebx), %eax
	movl	_waloff(,%eax,4), %ecx
	testl	%ecx, %ecx
	jne	L819
	movl	_tiles+12, %edx
	testl	%edx, %edx
	je	L818
	movswl	_tilesiz+2(,%eax,4), %esi
	movl	_tiles+4, %ecx
	movl	_tiles+8, %edx
	movswl	_tilesiz(,%eax,4), %eax
	movl	%esi, %edi
L820:
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	xorps	%xmm3, %xmm3
	movzwl	%cx, %esi
	movss	LC56, %xmm2
	shrl	$16, %ecx
	cvtsi2ssl	%esi, %xmm1
	cvtsi2ssl	%ecx, %xmm0
	movzwl	%dx, %ecx
	shrl	$16, %edx
	cvtsi2ssl	%ecx, %xmm3
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%edx, %xmm1
	movl	__ZL22tilesheetHalfTexelSize.lto_priv.0+4, %edx
	movl	%edx, 12(%esp)
	mulss	%xmm2, %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%edi, %xmm2
	addss	%xmm3, %xmm1
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%eax, %xmm3
	movl	__ZL22tilesheetHalfTexelSize.lto_priv.0, %eax
	unpcklps	%xmm1, %xmm0
	movl	%eax, 8(%esp)
	movss	__ZL18tilesheetSizeRecip.lto_priv.0, %xmm1
	unpcklps	%xmm3, %xmm2
	shufps	$0, %xmm1, %xmm1
	movlhps	%xmm2, %xmm0
	mulps	%xmm1, %xmm0
	movups	%xmm0, 16(%esp)
	jmp	L818
	.p2align 4,,10
	.p2align 3
L819:
	leal	1(%eax), %edx
	cmpl	$30720, %edx
	ja	L818
	leal	(%edx,%edx,4), %edx
	leal	_tiles(,%edx,4), %edx
	movl	12(%edx), %ecx
	testl	%ecx, %ecx
	je	L818
	movswl	_tilesiz+2(,%eax,4), %esi
	movl	%esi, %edi
	cmpl	%esi, %ecx
	jb	L818
	movswl	_tilesiz(,%eax,4), %eax
	cmpl	%eax, 16(%edx)
	jb	L818
	movl	4(%edx), %ecx
	movl	8(%edx), %edx
	jmp	L820
	.cfi_endproc
LFE55:
	.section .rdata,"dr"
	.align 4
LC57:
	.ascii "Unable to use persistent stream buffers: required extensions missing.\0"
	.text
	.p2align 4
	.globl	__Z21polymost_initdrawpolyv
	.def	__Z21polymost_initdrawpolyv;	.scl	2;	.type	32;	.endef
__Z21polymost_initdrawpolyv:
LFB58:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	movl	_r_persistentStreamBuffer, %eax
	testl	%eax, %eax
	je	L827
	movzwl	_glinfo+28, %edx
	notl	%edx
	testw	$8194, %dx
	je	L827
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$2, %eax
	jg	L847
L830:
	movl	$0, _r_persistentStreamBuffer
	xorl	%edx, %edx
	jmp	L829
	.p2align 4,,10
	.p2align 3
L827:
	testl	%eax, %eax
	setne	%dl
L829:
	movl	_r_drawpolyVertsBufferLength, %eax
	movb	%dl, __ZL22persistentStreamBuffer.lto_priv.0
	movl	$0, __ZL19drawpolyVertsOffset
	movl	%eax, __ZL25drawpolyVertsBufferLength.lto_priv.0
	movl	_drawpolyVertsID, %eax
	movl	$0, __ZL27drawpolyVertsSubBufferIndex
	movl	%eax, (%esp)
	call	*_glad_glIsBuffer
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	testb	%al, %al
	je	L831
	movl	$_drawpolyVertsID, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glDeleteBuffers
	.cfi_def_cfa_offset 16
	subl	$8, %esp
	.cfi_def_cfa_offset 24
L831:
	movl	$_drawpolyVertsID, 4(%esp)
	xorl	%ebx, %ebx
	movl	$1, (%esp)
	call	*_glad_glGenBuffers
	.cfi_def_cfa_offset 16
	subl	$8, %esp
	.cfi_def_cfa_offset 24
L833:
	movl	__ZL17drawpolyVertsSync(,%ebx,4), %eax
	movl	%eax, (%esp)
	call	*_glad_glIsSync
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	testb	%al, %al
	je	L832
	movl	__ZL17drawpolyVertsSync(,%ebx,4), %eax
	movl	%eax, (%esp)
	call	*_glad_glDeleteSync
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
L832:
	addl	$1, %ebx
	cmpl	$3, %ebx
	jne	L833
	movl	_drawpolyVertsID, %edx
	movl	$34962, %eax
	movl	$0, __ZL17drawpolyVertsSync
	movl	$0, __ZL17drawpolyVertsSync+4
	movl	$0, __ZL17drawpolyVertsSync+8
	call	__Z18buildgl_bindBufferjj
	movl	__ZL25drawpolyVertsBufferLength.lto_priv.0, %eax
	cmpb	$0, __ZL22persistentStreamBuffer.lto_priv.0
	je	L834
	imull	$60, %eax, %eax
	movl	$194, 12(%esp)
	movl	$0, 8(%esp)
	movl	$34962, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glBufferStorage
	.cfi_def_cfa_offset 8
	imull	$60, __ZL25drawpolyVertsBufferLength.lto_priv.0, %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	movl	$194, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$34962, (%esp)
	call	*_glad_glMapBufferRange
	.cfi_def_cfa_offset 8
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	movl	%eax, __ZL13drawpolyVerts
	movl	$34962, %eax
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z18buildgl_bindBufferjj.constprop.0
	.p2align 4,,10
	.p2align 3
L834:
	.cfi_restore_state
	leal	(%eax,%eax,4), %eax
	movl	$35040, 12(%esp)
	sall	$2, %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$__ZL25defaultDrawpolyVertsArray, __ZL13drawpolyVerts
	movl	$34962, (%esp)
	call	*_glad_glBufferData
	.cfi_def_cfa_offset 8
	movl	$34962, %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z18buildgl_bindBufferjj.constprop.0
	.p2align 4,,10
	.p2align 3
L847:
	.cfi_restore_state
	movl	$LC57, 12(%esp)
	movl	$894, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	$3, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L830
	.cfi_endproc
LFE58:
	.section .rdata,"dr"
	.align 4
LC59:
	.ascii "Failed syncing mmap texcache: %s (%d).\0"
LC60:
	.ascii "source/build/src/texcache.cpp\0"
	.text
	.p2align 4
	.globl	_polymost_glreset
	.def	_polymost_glreset;	.scl	2;	.type	32;	.endef
_polymost_glreset:
LFB59:
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
	subl	$132, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	call	__Z28buildgl_resetStateAccountingv
	cmpb	$0, _nogl
	je	L918
L849:
	movss	LC58, %xmm1
	movl	$_fogtable, %edx
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L850:
	movzbl	_palookupfog(,%eax,4), %ecx
	xorps	%xmm0, %xmm0
	movl	$0x00000000, 12(%edx)
	addl	$16, %edx
	cvtsi2ssl	%ecx, %xmm0
	movzbl	_palookupfog+1(,%eax,4), %ecx
	mulss	%xmm1, %xmm0
	movss	%xmm0, -16(%edx)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	movzbl	_palookupfog+2(,%eax,4), %ecx
	addl	$1, %eax
	mulss	%xmm1, %xmm0
	movss	%xmm0, -12(%edx)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -8(%edx)
	cmpl	$256, %eax
	jne	L850
	movl	__ZL11gltexcacnum, %edx
	xorl	%esi, %esi
	testl	%edx, %edx
	js	L919
	.p2align 4
	.p2align 3
L851:
	movl	_texcache+44(,%esi,4), %ebx
	testl	%ebx, %ebx
	je	L853
	movl	%esi, -108(%ebp)
	jmp	L878
	.p2align 4,,10
	.p2align 3
L923:
	leal	(%eax,%eax,4), %eax
	leal	0(,%eax,8), %edx
	movl	%edx, -88(%ebp)
	leal	48(%ecx), %edx
	movl	%edx, -84(%ebp)
	lock addl	$1, 80(%ecx,%eax,8)
	movl	%fs:44, %eax
	movl	__tls_index, %edx
	movl	(%eax,%edx,4), %edx
	movl	%eax, -84(%ebp)
	movl	%esi, %eax
	sall	$6, %eax
	movl	%edx, -96(%ebp)
	movl	%eax, -100(%ebp)
	addl	%edx, %eax
	movl	_tlsCacheBuckets@secrel32+52(%eax), %edx
	testl	%edx, %edx
	je	L868
	movl	_tlsCacheBuckets@secrel32(%eax), %ecx
	subl	%ecx, %edi
	movl	%ecx, -104(%ebp)
	movzbl	_tlsCacheBuckets@secrel32+60(%eax), %ecx
	movl	%edi, -92(%ebp)
	cmpb	$9, %cl
	jbe	L920
	movl	_tlsCacheBuckets@secrel32+56(%eax), %edi
	movl	%edi, -88(%ebp)
	movl	_tlsCacheBuckets@secrel32+4(%eax), %edi
	movl	%edi, -96(%ebp)
	cmpl	%edx, -88(%ebp)
	jnb	L870
	movl	-88(%ebp), %ecx
	movl	-92(%ebp), %esi
	movl	%esi, (%edi,%ecx,4)
	addl	$1, %ecx
	movl	%ecx, _tlsCacheBuckets@secrel32+56(%eax)
L866:
	testl	%ebx, %ebx
	je	L921
L878:
	movl	%ebx, %edi
	movl	(%ebx), %ebx
	testb	$16, 34(%edi)
	je	L854
	movl	4(%edi), %eax
	movl	$1, (%esp)
	addl	$12, %eax
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteTextures
	movl	4(%edi), %esi
	subl	$8, %esp
	cmpl	$16384, %esi
	jbe	L854
	movl	_g_sm_heap, %ecx
	movl	%esi, %eax
	xorl	%edx, %edx
	subl	12(%ecx), %eax
	divl	4(%ecx)
	cmpl	(%ecx), %eax
	jnb	L855
	movl	%eax, -88(%ebp)
	leal	(%eax,%eax,4), %eax
	leal	0(,%eax,8), %edx
	movl	%edx, -92(%ebp)
	leal	48(%ecx), %edx
	movl	%edx, -84(%ebp)
	lock addl	$1, 80(%ecx,%eax,8)
	movl	%fs:44, %eax
	movl	__tls_index, %edx
	movl	%eax, -84(%ebp)
	movl	(%eax,%edx,4), %eax
	movl	-88(%ebp), %edx
	movl	%eax, -100(%ebp)
	sall	$6, %edx
	movl	%edx, -104(%ebp)
	addl	%eax, %edx
	movl	_tlsCacheBuckets@secrel32+52(%edx), %eax
	testl	%eax, %eax
	je	L856
	movl	_tlsCacheBuckets@secrel32(%edx), %ecx
	subl	%ecx, %esi
	movl	%ecx, -112(%ebp)
	movzbl	_tlsCacheBuckets@secrel32+60(%edx), %ecx
	movl	%esi, -96(%ebp)
	cmpb	$9, %cl
	jbe	L922
	movl	_tlsCacheBuckets@secrel32+56(%edx), %esi
	movl	%esi, -92(%ebp)
	movl	_tlsCacheBuckets@secrel32+4(%edx), %esi
	movl	%esi, -100(%ebp)
	cmpl	%eax, -92(%ebp)
	jnb	L858
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %ecx
	movl	%eax, (%esi,%ecx,4)
	leal	1(%ecx), %eax
	movl	%eax, _tlsCacheBuckets@secrel32+56(%edx)
	.p2align 4
	.p2align 3
L854:
	leal	12(%edi), %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteTextures
	subl	$8, %esp
	cmpl	$16384, %edi
	jbe	L866
	movl	_g_sm_heap, %ecx
	movl	%edi, %eax
	xorl	%edx, %edx
	subl	12(%ecx), %eax
	divl	4(%ecx)
	movl	%eax, %esi
	cmpl	(%ecx), %eax
	jb	L923
	movl	%edi, %eax
	call	_mi_free
	testl	%ebx, %ebx
	jne	L878
L921:
	movl	-108(%ebp), %esi
L853:
	movl	$0, _texcache+44(,%esi,4)
	addl	$1, %esi
	cmpl	$8192, %esi
	jne	L851
	xorl	%eax, %eax
	call	_clearskins
L852:
	movl	__ZL12polymosttext.lto_priv.0, %eax
	testl	%eax, %eax
	je	L879
	movl	$__ZL12polymosttext.lto_priv.0, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glDeleteTextures
	subl	$8, %esp
L879:
	movl	$0, __ZL12polymosttext.lto_priv.0
	call	_md_freevbos
	movl	_texcache+28, %eax
	testl	%eax, %eax
	je	L880
	movl	%eax, (%esp)
	call	*__imp___fileno
	movl	%eax, (%esp)
	call	_filelength
	testl	%eax, %eax
	jle	L880
	cmpl	$-1, _texcache+16
	je	L880
	leal	-48(%ebp), %eax
	movl	$_texcache, %ecx
	movl	%eax, (%esp)
	call	__ZN3mio10basic_mmapILNS_11access_modeE1EcE4syncILS1_1EEENSt9enable_ifIXeqT_LS1_1EEvE4typeERSt10error_code.constprop.0
	movl	-48(%ebp), %ebx
	subl	$4, %esp
	testl	%ebx, %ebx
	jne	L924
L880:
	cmpb	$0, _nogl
	je	L925
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
L855:
	.cfi_restore_state
	movl	%esi, %eax
	call	_mi_free
	jmp	L854
	.p2align 4,,10
	.p2align 3
L868:
	movl	-88(%ebp), %eax
	movl	$1, %edx
	leal	48(%ecx,%eax), %esi
	lock xaddl	%edx, 8(%esi)
	movl	%edx, -84(%ebp)
	movl	%edi, %edx
	subl	60(%ecx,%eax), %edx
	movl	%edx, %ecx
	movlps	(%esi), %xmm2
	movlps	%xmm2, -80(%ebp)
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	movl	%ebx, -88(%ebp)
L877:
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	-84(%ebp), %ebx
	movl	%eax, (%edi)
	movl	%edx, 4(%edi)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	lock cmpxchg8b	(%esi)
	je	L916
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	jmp	L877
	.p2align 4,,10
	.p2align 3
L920:
	movl	-96(%ebp), %esi
	movl	-100(%ebp), %edi
	leal	_tlsCacheBuckets@secrel32(%esi,%edi), %edx
	movl	-92(%ebp), %esi
	movl	%esi, 12(%edx,%ecx,4)
	addb	$1, _tlsCacheBuckets@secrel32+60(%eax)
	jmp	L866
	.p2align 4,,10
	.p2align 3
L870:
	movl	-88(%ebp), %edi
	movl	$1, %edx
	shrl	%edi
	je	L871
	movl	-88(%ebp), %edx
	movl	-96(%ebp), %ecx
	movl	%edi, -100(%ebp)
	subl	%edi, %edx
	movl	-104(%ebp), %edi
	addl	(%ecx,%edx,4), %edi
	movl	%edi, -104(%ebp)
	movl	%edi, -116(%ebp)
	movl	%edx, %edi
	addl	$1, %edx
	cmpl	-88(%ebp), %edx
	jnb	L889
	movl	%edi, %edx
	movl	%edi, -112(%ebp)
	movl	-96(%ebp), %edi
	movl	4(%edi,%edx,4), %edi
	movl	-104(%ebp), %edx
	movl	$16777215, (%edx)
	movl	%edi, 4(%edx)
	movl	_tlsCacheBuckets@secrel32(%eax), %edx
	addl	%edi, %edx
	movl	%edx, -96(%ebp)
	movl	-112(%ebp), %edx
	addl	$2, %edx
	cmpl	_tlsCacheBuckets@secrel32+56(%eax), %edx
	jnb	L872
	movl	-100(%ebp), %edi
	subl	-88(%ebp), %edi
	movl	%ebx, -88(%ebp)
	leal	16777214(%edi), %ecx
	movl	-96(%ebp), %edi
	movl	%esi, -104(%ebp)
	movl	%ecx, %esi
	.p2align 6
	.p2align 4
	.p2align 3
L873:
	movl	_tlsCacheBuckets@secrel32+4(%eax), %ecx
	leal	(%esi,%edx), %ebx
	movl	(%ecx,%edx,4), %ecx
	movl	%ebx, (%edi)
	addl	$1, %edx
	movl	%ecx, 4(%edi)
	movl	_tlsCacheBuckets@secrel32(%eax), %edi
	addl	%ecx, %edi
	cmpl	_tlsCacheBuckets@secrel32+56(%eax), %edx
	jb	L873
	movl	-88(%ebp), %ebx
	movl	-104(%ebp), %esi
	movl	%edi, -96(%ebp)
L872:
	movl	__tls_index, %ecx
	movl	-84(%ebp), %edi
	movl	%esi, %eax
	sall	$6, %eax
	addl	(%edi,%ecx,4), %eax
	movl	_tlsCacheBuckets@secrel32+8(%eax), %ecx
	movl	$1, %eax
	lock xaddl	%eax, 8(%ecx)
	movl	%eax, -88(%ebp)
	movl	-116(%ebp), %eax
	subl	12(%ecx), %eax
	movl	%eax, -104(%ebp)
	movlps	(%ecx), %xmm4
	movlps	%xmm4, -72(%ebp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	movl	%ebx, -112(%ebp)
	movl	-96(%ebp), %edi
	movl	%esi, -96(%ebp)
	movl	%ecx, %esi
L875:
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	-88(%ebp), %ebx
	movl	-104(%ebp), %ecx
	movl	%eax, (%edi)
	movl	%edx, 4(%edi)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	lock cmpxchg8b	(%esi)
	je	L892
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	jmp	L875
	.p2align 4,,10
	.p2align 3
L892:
	movl	-96(%ebp), %esi
	movl	-84(%ebp), %edi
	movl	__tls_index, %ecx
	movl	-112(%ebp), %ebx
	movl	%esi, %eax
	sall	$6, %eax
	addl	(%edi,%ecx,4), %eax
	movl	_tlsCacheBuckets@secrel32+56(%eax), %edx
	subl	-100(%ebp), %edx
L871:
	movl	%esi, %eax
	movl	__tls_index, %edi
	movl	-84(%ebp), %esi
	sall	$6, %eax
	addl	(%esi,%edi,4), %eax
	movl	-92(%ebp), %esi
	movl	_tlsCacheBuckets@secrel32+4(%eax), %ecx
	movl	%esi, (%ecx,%edx,4)
	addl	$1, %edx
	movl	%edx, _tlsCacheBuckets@secrel32+56(%eax)
	jmp	L866
	.p2align 4,,10
	.p2align 3
L856:
	movl	-92(%ebp), %edx
	leal	48(%ecx,%edx), %eax
	movl	$1, %edx
	movl	%eax, -84(%ebp)
	lock xaddl	%edx, 8(%eax)
	movl	%edx, -88(%ebp)
	movl	-92(%ebp), %edx
	movl	%esi, %eax
	subl	60(%ecx,%edx), %eax
	movl	%eax, %ecx
	movl	-84(%ebp), %eax
	movlps	(%eax), %xmm3
	movlps	%xmm3, -64(%ebp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%ebx, -92(%ebp)
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	movl	%edi, -96(%ebp)
L865:
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	-84(%ebp), %edi
	movl	-88(%ebp), %ebx
	movl	%eax, (%esi)
	movl	%edx, 4(%esi)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	lock cmpxchg8b	(%edi)
	je	L915
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	jmp	L865
	.p2align 4,,10
	.p2align 3
L916:
	movl	-88(%ebp), %ebx
	jmp	L866
	.p2align 4,,10
	.p2align 3
L922:
	movl	-104(%ebp), %esi
	movl	-100(%ebp), %eax
	leal	_tlsCacheBuckets@secrel32(%eax,%esi), %eax
	movl	-96(%ebp), %esi
	movl	%esi, 12(%eax,%ecx,4)
	addb	$1, _tlsCacheBuckets@secrel32+60(%edx)
	jmp	L854
	.p2align 4,,10
	.p2align 3
L858:
	movl	-92(%ebp), %esi
	movl	$1, %eax
	shrl	%esi
	je	L859
	movl	-92(%ebp), %eax
	movl	-100(%ebp), %ecx
	movl	%esi, -104(%ebp)
	subl	%esi, %eax
	movl	-112(%ebp), %esi
	addl	(%ecx,%eax,4), %esi
	movl	%esi, -112(%ebp)
	movl	%esi, -120(%ebp)
	movl	%eax, %esi
	addl	$1, %eax
	cmpl	-92(%ebp), %eax
	jnb	L887
	movl	%esi, %eax
	movl	%esi, -116(%ebp)
	movl	-100(%ebp), %esi
	movl	4(%esi,%eax,4), %esi
	movl	-112(%ebp), %eax
	movl	$16777215, (%eax)
	movl	%esi, 4(%eax)
	movl	_tlsCacheBuckets@secrel32(%edx), %eax
	addl	%esi, %eax
	movl	%eax, -100(%ebp)
	movl	-116(%ebp), %eax
	addl	$2, %eax
	cmpl	_tlsCacheBuckets@secrel32+56(%edx), %eax
	jnb	L860
	movl	-104(%ebp), %esi
	subl	-92(%ebp), %esi
	movl	%ebx, -92(%ebp)
	leal	16777214(%esi), %ecx
	movl	-100(%ebp), %esi
	movl	%edi, -112(%ebp)
	movl	%ecx, %edi
	.p2align 6
	.p2align 4
	.p2align 3
L861:
	movl	_tlsCacheBuckets@secrel32+4(%edx), %ecx
	leal	(%edi,%eax), %ebx
	movl	(%ecx,%eax,4), %ecx
	movl	%ebx, (%esi)
	addl	$1, %eax
	movl	%ecx, 4(%esi)
	movl	_tlsCacheBuckets@secrel32(%edx), %esi
	addl	%ecx, %esi
	cmpl	_tlsCacheBuckets@secrel32+56(%edx), %eax
	jb	L861
	movl	-92(%ebp), %ebx
	movl	-112(%ebp), %edi
	movl	%esi, -100(%ebp)
L860:
	movl	__tls_index, %ecx
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %esi
	sall	$6, %eax
	addl	(%esi,%ecx,4), %eax
	movl	_tlsCacheBuckets@secrel32+8(%eax), %ecx
	movl	$1, %eax
	lock xaddl	%eax, 8(%ecx)
	movl	%eax, -92(%ebp)
	movl	-120(%ebp), %eax
	subl	12(%ecx), %eax
	movl	%eax, -112(%ebp)
	movlps	(%ecx), %xmm5
	movlps	%xmm5, -56(%ebp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	movl	%ebx, -116(%ebp)
	movl	-100(%ebp), %esi
	movl	%edi, -100(%ebp)
	movl	%ecx, %edi
L863:
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	-92(%ebp), %ebx
	movl	-112(%ebp), %ecx
	movl	%eax, (%esi)
	movl	%edx, 4(%esi)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	lock cmpxchg8b	(%edi)
	je	L890
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	jmp	L863
L890:
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %esi
	movl	__tls_index, %ecx
	movl	-116(%ebp), %ebx
	sall	$6, %eax
	movl	-100(%ebp), %edi
	addl	(%esi,%ecx,4), %eax
	movl	_tlsCacheBuckets@secrel32+56(%eax), %eax
	subl	-104(%ebp), %eax
L859:
	movl	-84(%ebp), %esi
	movl	__tls_index, %ecx
	movl	-88(%ebp), %edx
	sall	$6, %edx
	addl	(%esi,%ecx,4), %edx
	movl	-96(%ebp), %esi
	movl	_tlsCacheBuckets@secrel32+4(%edx), %ecx
	movl	%esi, (%ecx,%eax,4)
	addl	$1, %eax
	movl	%eax, _tlsCacheBuckets@secrel32+56(%edx)
	jmp	L854
	.p2align 4,,10
	.p2align 3
L915:
	movl	-92(%ebp), %ebx
	movl	-96(%ebp), %edi
	jmp	L854
L889:
	movl	-116(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	L872
L887:
	movl	-120(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L860
L919:
	movss	LC3, %xmm0
	movl	$0, __ZL11gltexcacnum
	movl	$0x00000000, _gsinang2
	movl	$0x00000000, _gsinang
	movss	%xmm0, _gcosang2
	movss	%xmm0, _gcosang
	jmp	L852
L918:
	cmpl	$33984, _gl+4
	je	L849
	movl	$33984, _gl+4
	movl	$33984, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
	jmp	L849
L925:
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
	jmp	__Z21polymost_initdrawpolyv
L924:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L882
	movl	-44(%ebp), %eax
	leal	-40(%ebp), %ecx
	movl	(%eax), %edx
	movl	%eax, (%esp)
	movl	%ebx, 4(%esp)
	call	*16(%edx)
	subl	$8, %esp
	movl	%ebx, 20(%esp)
	movl	-40(%ebp), %eax
	movl	$LC59, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$278, 8(%esp)
	movl	$LC60, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	-40(%ebp), %eax
	leal	-32(%ebp), %edx
	cmpl	%edx, %eax
	je	L882
	call	_mi_free
L882:
	movl	$_texcache, %ecx
	call	__ZN3mio10basic_mmapILNS_11access_modeE1EcE5unmapEv
	jmp	L880
	.cfi_endproc
LFE59:
	.p2align 4
	.globl	__ZL11fogcalc_oldii.lto_priv.0
	.def	__ZL11fogcalc_oldii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL11fogcalc_oldii.lto_priv.0:
LFB77:
	.cfi_startproc
	movss	_gvisibility, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	cmpl	$1, _r_usenewshading
	je	L935
	testl	%eax, %eax
	js	L936
	mulss	LC63, %xmm0
	cmpl	$239, %edx
	jle	L932
L937:
	leal	-256(%edx), %eax
/APP
 # 1223 "source/build/src/polymost.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	xorps	%xmm2, %xmm2
	subl	$240, %edx
	cvtsi2ssl	%edx, %xmm2
	addss	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	divss	%xmm2, %xmm0
	mulss	%xmm0, %xmm1
L929:
	movss	LC6, %xmm0
	comiss	%xmm1, %xmm0
	jnb	L933
	movss	LC64, %xmm2
	movaps	%xmm2, %xmm0
	cmpless	%xmm1, %xmm0
	andps	%xmm0, %xmm2
	andnps	%xmm1, %xmm0
	orps	%xmm2, %xmm0
L933:
	movss	%xmm0, __ZL9fogresult.lto_priv.0
	ret
	.p2align 4,,10
	.p2align 3
L936:
	mulss	LC62, %xmm0
	cmpl	$239, %edx
	jg	L937
L932:
	addl	$16, %edx
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%edx, %xmm2
	addss	%xmm2, %xmm0
	mulss	%xmm0, %xmm1
	jmp	L929
	.p2align 4,,10
	.p2align 3
L935:
	mulss	LC61, %xmm0
	cmpl	$239, %edx
	jle	L932
	subl	$240, %edx
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%edx, %xmm2
	addss	%xmm2, %xmm0
	mulss	%xmm0, %xmm1
	jmp	L929
	.cfi_endproc
LFE77:
	.p2align 4
	.globl	_calc_and_apply_fog
	.def	_calc_and_apply_fog;	.scl	2;	.type	32;	.endef
_calc_and_apply_fog:
LFB78:
	.cfi_startproc
	cmpl	$0, _nofog
	jne	L963
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 20
	movl	_r_usenewshading, %esi
	cmpl	$4, %esi
	je	L966
	sall	$4, %ecx
	movl	_fogtable(%ecx), %eax
	movl	%eax, _fogcol
	movl	_fogtable+4(%ecx), %eax
	movl	%eax, _fogcol+4
	movl	_fogtable+8(%ecx), %eax
	movl	%eax, _fogcol+8
	movl	_fogtable+12(%ecx), %eax
	movl	%eax, _fogcol+12
	cmpl	$1, %esi
	jle	L967
	leal	16(%edx), %eax
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	_globalvisibility, %xmm0
	movzbl	%al, %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	L946
	jne	L946
	cmpl	$2, %esi
	jne	L948
	testl	%ebx, %ebx
	jg	L968
L948:
	movl	$0x7212699f, __ZL9fogresult.lto_priv.0
	movl	$0x72177617, __ZL10fogresult2.lto_priv.0
L945:
	movl	$_fogcol, 4(%esp)
	movl	$2918, (%esp)
	call	*_glad_glFogfv
	.cfi_def_cfa_offset 12
	movl	_glad_glFogf, %eax
	movss	__ZL9fogresult.lto_priv.0, %xmm0
	subl	$8, %esp
	.cfi_def_cfa_offset 20
	cmpl	$1, _r_usenewshading
	movss	%xmm0, 4(%esp)
	jle	L969
	movl	$2915, (%esp)
	call	*%eax
	.cfi_def_cfa_offset 12
	movss	__ZL10fogresult2.lto_priv.0, %xmm0
	subl	$8, %esp
	.cfi_def_cfa_offset 20
	movl	$2916, (%esp)
	movss	%xmm0, 4(%esp)
	call	*_glad_glFogf
	.cfi_def_cfa_offset 12
	subl	$8, %esp
	.cfi_def_cfa_offset 20
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
L966:
	.cfi_restore_state
	movl	$0x00000000, __ZL9fogresult.lto_priv.0
	sall	$4, %ecx
	movl	_fogtable(%ecx), %eax
	movl	%eax, _fogcol
	movl	_fogtable+4(%ecx), %eax
	movl	%eax, _fogcol+4
	movl	_fogtable+8(%ecx), %eax
	movl	%eax, _fogcol+8
	movl	_fogtable+12(%ecx), %eax
	movl	%eax, _fogcol+12
	cmpl	$240, %edx
	je	L943
	movl	_globalvisibility, %eax
	testl	%eax, %eax
	jle	L943
	addl	$16, %edx
	xorps	%xmm2, %xmm2
	xorps	%xmm1, %xmm1
	movss	_frealmaxshade, %xmm3
	movss	LC66, %xmm0
	movzbl	%dl, %edx
	movss	LC67, %xmm4
	imull	%eax, %edx
	xorl	%eax, %eax
	testl	%ebx, %ebx
	mulss	%xmm3, %xmm0
	cmovle	%ebx, %eax
	cvtsi2ssl	%eax, %xmm2
	cvtsi2ssl	%edx, %xmm1
	subss	%xmm4, %xmm2
	divss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	divss	%xmm3, %xmm2
	mulss	%xmm0, %xmm2
	subss	%xmm2, %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%ebx, %xmm2
	movss	%xmm1, __ZL9fogresult.lto_priv.0
	subss	%xmm4, %xmm2
	divss	%xmm3, %xmm2
	mulss	%xmm0, %xmm2
	subss	%xmm2, %xmm0
L942:
	movss	%xmm1, 4(%esp)
	movss	%xmm0, __ZL10fogresult2.lto_priv.0
	movl	$2915, (%esp)
	call	*_glad_glFogf
	.cfi_def_cfa_offset 12
	movss	__ZL10fogresult2.lto_priv.0, %xmm0
	subl	$8, %esp
	.cfi_def_cfa_offset 20
	movss	%xmm0, 4(%esp)
	movl	$2916, (%esp)
	call	*_glad_glFogf
	.cfi_def_cfa_offset 12
	subl	$8, %esp
	.cfi_def_cfa_offset 20
	movl	$_fogcol, 4(%esp)
	movl	$2918, (%esp)
	call	*_glad_glFogfv
	.cfi_def_cfa_offset 12
	subl	$8, %esp
	.cfi_def_cfa_offset 20
	addl	$8, %esp
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
L963:
	ret
	.p2align 4,,10
	.p2align 3
L946:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movswl	_numshades, %eax
	subl	$1, %eax
	cmpl	$3, %esi
	je	L970
	movss	LC0, %xmm1
	divss	%xmm0, %xmm1
L951:
	imull	$-600, %ebx, %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	mulss	%xmm1, %xmm0
L952:
	movss	%xmm0, __ZL9fogresult.lto_priv.0
	subl	%ebx, %eax
	xorps	%xmm0, %xmm0
	imull	$600, %eax, %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, __ZL10fogresult2.lto_priv.0
	jmp	L945
	.p2align 4,,10
	.p2align 3
L943:
	movss	LC65, %xmm0
	xorps	%xmm1, %xmm1
	jmp	L942
	.p2align 4,,10
	.p2align 3
L969:
	movl	$2914, (%esp)
	call	*%eax
	.cfi_def_cfa_offset 12
	subl	$8, %esp
	.cfi_def_cfa_offset 20
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
L967:
	.cfi_restore_state
	movl	%ebx, %eax
	call	__ZL11fogcalc_oldii.lto_priv.0
	jmp	L945
	.p2align 4,,10
	.p2align 3
L970:
	cmpl	%eax, %ebx
	jl	L950
	movl	$0xbf800000, __ZL9fogresult.lto_priv.0
	movl	$0x00000000, __ZL10fogresult2.lto_priv.0
	jmp	L945
	.p2align 4,,10
	.p2align 3
L950:
	movss	LC0, %xmm1
	divss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	testl	%ebx, %ebx
	jg	L952
	jmp	L951
	.p2align 4,,10
	.p2align 3
L968:
	movswl	_numshades, %eax
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	movl	$0xf212699f, __ZL9fogresult.lto_priv.0
	cvtsi2ssl	%ebx, %xmm1
	subl	$1, %eax
	subl	%ebx, %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	LC69, %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, __ZL10fogresult2.lto_priv.0
	jmp	L945
	.cfi_endproc
LFE78:
	.p2align 4
	.globl	__ZL13resizeglcheckv.lto_priv.0
	.def	__ZL13resizeglcheckv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL13resizeglcheckv.lto_priv.0:
LFB81:
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
	subl	$92, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	_r_polygonmode, %eax
	cmpl	%eax, __ZL17lastglpolygonmode.lto_priv.0
	je	L972
	movl	%eax, __ZL17lastglpolygonmode.lto_priv.0
	movl	_glad_glPolygonMode, %edx
	cmpl	$1, %eax
	je	L973
	cmpl	$2, %eax
	je	L974
	movl	$6914, 4(%esp)
	movl	$1032, (%esp)
	call	*%edx
	movl	_r_polygonmode, %eax
	subl	$8, %esp
L972:
	movss	LC0, %xmm1
	testl	%eax, %eax
	je	L975
	movss	%xmm1, 8(%esp)
	movss	%xmm1, 4(%esp)
	movss	%xmm1, (%esp)
	movl	$0x00000000, 12(%esp)
	call	*_glad_glClearColor
	subl	$16, %esp
	movl	$16640, (%esp)
	call	*_glad_glClear
	movss	LC0, %xmm1
	subl	$4, %esp
L975:
	movl	_windowxy1, %ebx
	movl	_windowxy2, %edx
	subl	%ebx, %edx
	leal	1(%edx), %edi
	cmpl	$1, _glprojectionhacks
	je	L976
L978:
	movss	%xmm1, -84(%ebp)
	movaps	%xmm1, %xmm0
L977:
	xorps	%xmm2, %xmm2
	movl	_windowxy2+4, %eax
	movl	$0, _polymost2d
	cvtsi2ssl	%edi, %xmm2
	movl	%eax, %edx
	subl	_windowxy1+4, %eax
	addl	$1, %eax
	notl	%edx
	addl	_ydim, %edx
	movl	%eax, (%esp)
	mulss	%xmm2, %xmm0
	subss	%xmm2, %xmm0
	cvttss2sil	%xmm0, %esi
	leal	(%edi,%esi), %ecx
	movl	%esi, %edi
	shrl	$31, %edi
	addl	%edi, %esi
	sarl	%esi
	subl	%esi, %ebx
	movl	%ebx, %eax
	call	__Z19buildgl_setViewportiiii
	movl	$5889, (%esp)
	call	*_glad_glMatrixMode
	xorl	%eax, %eax
	movss	LC0, %xmm1
	subl	$4, %esp
L979:
	movl	$0, -76(%ebp,%eax)
	movl	$0, -72(%ebp,%eax)
	movl	$0, -68(%ebp,%eax)
	movl	$0, -64(%ebp,%eax)
	addl	$16, %eax
	cmpl	$48, %eax
	jb	L979
	movss	_fydimen, %xmm3
	movss	-84(%ebp), %xmm0
	movl	$0, -76(%ebp,%eax)
	movss	_fxdimen, %xmm5
	flds	_gyxscale
	movl	$0, -72(%ebp,%eax)
	mulss	%xmm3, %xmm0
	fmull	_gxyaspect
	movss	%xmm1, -80(%ebp)
	movaps	%xmm5, %xmm4
	fmuls	LC72
	movss	%xmm1, -36(%ebp)
	fdivrs	LC73
	movl	$0, -68(%ebp,%eax)
	leal	-80(%ebp), %eax
	divss	%xmm0, %xmm4
	movss	__ZL7ghoriz2.lto_priv.0, %xmm0
	fstps	-88(%ebp)
	movss	-88(%ebp), %xmm2
	movss	%xmm4, -60(%ebp)
	movaps	%xmm0, %xmm4
	addss	%xmm0, %xmm4
	mulss	_gctang, %xmm0
	addss	__ZL13ghorizcorrect.lto_priv.0, %xmm0
	mulss	_gstang, %xmm4
	addss	%xmm0, %xmm0
	divss	%xmm5, %xmm4
	divss	%xmm3, %xmm0
	movss	%xmm4, -48(%ebp)
	movss	%xmm0, -44(%ebp)
	movss	LC12, %xmm0
	movaps	%xmm0, %xmm3
	addss	%xmm2, %xmm0
	subss	%xmm2, %xmm3
	mulss	LC13, %xmm2
	xorps	LC2, %xmm2
	divss	%xmm3, %xmm0
	divss	%xmm3, %xmm2
	movss	%xmm0, -40(%ebp)
	movss	%xmm2, -24(%ebp)
	movl	%eax, (%esp)
	call	*_glad_glLoadMatrixf
	subl	$4, %esp
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glLoadIdentity
	movl	_nofog, %eax
	movss	LC0, %xmm1
	testl	%eax, %eax
	je	L989
L971:
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
L973:
	.cfi_restore_state
	movl	$6913, 4(%esp)
	movl	$1032, (%esp)
	call	*%edx
	movl	_r_polygonmode, %eax
	subl	$8, %esp
	jmp	L972
	.p2align 4,,10
	.p2align 3
L976:
	movl	_r_yshearing, %edx
	testl	%edx, %edx
	jne	L978
	call	__ZL18get_projhack_ratiov.part.0.lto_priv.0
	movss	LC0, %xmm6
	fstps	-84(%ebp)
	movss	-84(%ebp), %xmm0
	divss	%xmm0, %xmm6
	movss	%xmm6, -84(%ebp)
	jmp	L977
	.p2align 4,,10
	.p2align 3
L989:
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L971
	ucomiss	__ZL19polymost1FogEnabled.lto_priv.0, %xmm1
	jp	L983
	je	L971
L983:
	movss	%xmm1, __ZL19polymost1FogEnabled.lto_priv.0
	movss	%xmm1, 4(%esp)
	movl	__ZL22polymost1FogEnabledLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
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
L974:
	.cfi_restore_state
	movl	$6912, 4(%esp)
	movl	$1032, (%esp)
	call	*%edx
	movl	_r_polygonmode, %eax
	subl	$8, %esp
	jmp	L972
	.cfi_endproc
LFE81:
	.p2align 4
	.globl	__Z13uploadtexturei4vec2IiEiP7coltypeS0_i
	.def	__Z13uploadtexturei4vec2IiEiP7coltypeS0_i;	.scl	2;	.type	32;	.endef
__Z13uploadtexturei4vec2IiEiP7coltypeS0_i:
LFB85:
	.cfi_startproc
	addl	$-128, %esp
	.cfi_def_cfa_offset 132
	movl	%eax, 96(%esp)
	movl	140(%esp), %eax
	movl	%ebx, 112(%esp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	%eax, 104(%esp)
	movl	144(%esp), %eax
	movl	%edi, 120(%esp)
	.cfi_offset 7, -12
	movl	%ecx, %edi
	movl	%esi, 116(%esp)
	movl	%eax, 108(%esp)
	movl	%edx, 68(%esp)
	movl	%ecx, 76(%esp)
	testb	$-128, 149(%esp)
	.cfi_offset 6, -16
	jne	L994
	movl	_glusetexcompr, %eax
	cmpl	$2, %eax
	je	L993
	testb	$4, 150(%esp)
	jne	L994
	testl	%eax, %eax
	jne	L993
L994:
	movl	_gltexmaxsize, %ecx
	movl	$32856, 92(%esp)
	testl	%ecx, %ecx
	jle	L995
L1098:
	movl	$1, %eax
	leal	-1(%ecx), %esi
	sall	%cl, %eax
L996:
	movl	_gltexmiplevel, %edx
	cmpl	%edx, %esi
	cmovle	%esi, %edx
L998:
	xorl	%ecx, %ecx
	testl	%edx, %edx
	cmovns	%edx, %ecx
	movl	%ecx, 80(%esp)
L999:
	movl	80(%esp), %esi
	movl	%esi, _gltexmiplevel
	movl	%esi, %ecx
	jmp	L1001
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1002:
	addl	$1, %ecx
L1001:
	movl	%ebx, %edx
	sarl	%cl, %edx
	cmpl	%eax, %edx
	jg	L1002
	movl	%edi, %edx
	sarl	%cl, %edx
	cmpl	%eax, %edx
	jg	L1002
	movl	%ecx, 80(%esp)
	testb	$32, 149(%esp)
	je	L1003
	testw	$1040, 149(%esp)
	movl	_r_downsize, %eax
	sete	%dl
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	testb	%dl, %dl
	cmove	%ecx, %eax
	movl	%eax, 80(%esp)
L1003:
	movl	_glusetexcache, %esi
	testl	%esi, %esi
	jne	L1005
	movl	_gltexfiltermode, %eax
	leal	(%eax,%eax,2), %eax
	movl	_glfiltermodes+4(,%eax,4), %eax
	subl	$9728, %eax
	cmpl	$1, %eax
	jbe	L1089
L1005:
	movl	80(%esp), %eax
	testl	%eax, %eax
	je	L1040
L1010:
	cmpl	$1, %ebx
	jg	L1008
	cmpl	$1, %edi
	jle	L990
L1008:
	movl	148(%esp), %eax
	movl	%ebp, 124(%esp)
	.cfi_offset 5, -8
	movl	$1, 72(%esp)
	andl	$-2093057, %eax
	movl	%eax, 100(%esp)
	.p2align 4
	.p2align 3
L1073:
	movl	68(%esp), %ebx
	movl	$1, %eax
	movl	%ebx, %edi
	leal	0(,%ebx,4), %edx
	movl	%ebx, 32(%esp)
	sarl	%edi
	movl	%edx, 64(%esp)
	movl	136(%esp), %edx
	testl	%edi, %edi
	movl	%edi, 84(%esp)
	cmovg	%edi, %eax
	movl	%eax, %ecx
	movl	%eax, 68(%esp)
	movl	76(%esp), %eax
	leal	0(,%ecx,4), %ebp
	movl	%eax, %esi
	movl	%eax, 40(%esp)
	movl	$1, %eax
	sarl	%esi
	movl	%ebp, 52(%esp)
	testl	%esi, %esi
	movl	%esi, 88(%esp)
	cmovg	%esi, %eax
	sall	$3, %ebx
	movl	%edx, %esi
	movl	%ebx, 48(%esp)
	movl	$1, %ebx
	movl	%eax, 76(%esp)
	leal	1(%eax,%eax), %eax
	movl	%eax, 44(%esp)
	leal	1(%ecx,%ecx), %eax
	movl	%edx, %ecx
	movl	%eax, 36(%esp)
	.p2align 4
	.p2align 3
L1036:
	movl	%ecx, %ebp
	cmpl	%ebx, 40(%esp)
	jg	L1011
	movl	%ecx, 28(%esp)
	movl	$1, %edi
	movl	%ebx, 56(%esp)
	jmp	L1019
	.p2align 4,,10
	.p2align 3
L1091:
	movzbl	1(%ebp), %ebx
	movzbl	0(%ebp), %eax
	movl	%edx, 20(%esp)
	movl	$1, 24(%esp)
	movzbl	2(%ebp), %ecx
	movl	%ebx, 16(%esp)
	cmpl	%edi, 32(%esp)
	jg	L1013
L1017:
	movzbl	16(%esp), %edx
	movzbl	20(%esp), %ebx
L1015:
	movb	%al, -2(%esi,%edi,2)
	addl	$8, %ebp
	movb	%dl, -1(%esi,%edi,2)
	movb	%cl, (%esi,%edi,2)
	movb	%bl, 1(%esi,%edi,2)
	addl	$2, %edi
	cmpl	%edi, 36(%esp)
	je	L1090
L1019:
	movzbl	3(%ebp), %edx
	testb	%dl, %dl
	jne	L1091
	movl	$0, 24(%esp)
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	cmpl	%edi, 32(%esp)
	jle	L1017
L1013:
	movzbl	7(%ebp), %edx
	testb	%dl, %dl
	je	L1017
	movzbl	4(%ebp), %ebx
	addl	%edx, 20(%esp)
	addl	%ebx, %eax
	movzbl	5(%ebp), %ebx
	addl	%ebx, 16(%esp)
	movzbl	6(%ebp), %ebx
	addl	%ebx, %ecx
	cmpl	$1, 24(%esp)
	jne	L1017
	movl	16(%esp), %edx
	movl	20(%esp), %ebx
	addl	$1, %eax
	addl	$1, %ecx
	sarl	%eax
	sarl	%ecx
	addl	$1, %edx
	addl	$1, %ebx
	sarl	%edx
	sarl	%ebx
	jmp	L1015
	.p2align 4,,10
	.p2align 3
L1011:
	movl	64(%esp), %eax
	movl	%ecx, 56(%esp)
	movl	$1, %edi
	movl	%ebx, 60(%esp)
	addl	%ecx, %eax
	movl	%eax, 16(%esp)
	jmp	L1035
	.p2align 4,,10
	.p2align 3
L1094:
	movzbl	1(%ebp), %ecx
	movzbl	2(%ebp), %edx
	movl	$1, 20(%esp)
	movzbl	0(%ebp), %ebx
	movl	%ecx, 24(%esp)
	movl	%edx, 28(%esp)
	cmpl	%edi, 32(%esp)
	jg	L1022
L1095:
	movl	16(%esp), %ecx
	movzbl	3(%ecx), %edx
	testb	%dl, %dl
	jne	L1023
L1024:
	cmpl	$2, 20(%esp)
	jne	L1092
	movl	24(%esp), %ecx
	movl	28(%esp), %edx
	addl	$1, %ebx
	addl	$1, %eax
	sarl	%ebx
	sarl	%eax
	addl	$1, %ecx
	addl	$1, %edx
	sarl	%ecx
	sarl	%edx
L1034:
	movb	%bl, -2(%esi,%edi,2)
	addl	$8, %ebp
	movb	%cl, -1(%esi,%edi,2)
	movb	%dl, (%esi,%edi,2)
	movb	%al, 1(%esi,%edi,2)
	addl	$2, %edi
	addl	$8, 16(%esp)
	cmpl	%edi, 36(%esp)
	je	L1093
L1035:
	movzbl	3(%ebp), %eax
	testb	%al, %al
	jne	L1094
	movl	$0, 20(%esp)
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	cmpl	%edi, 32(%esp)
	jle	L1095
L1022:
	movzbl	7(%ebp), %edx
	testb	%dl, %dl
	jne	L1025
	movl	16(%esp), %ecx
	movzbl	3(%ecx), %edx
	testb	%dl, %dl
	je	L1026
	.p2align 4
	.p2align 3
L1023:
	movl	16(%esp), %ecx
	addl	$1, 20(%esp)
	addl	%edx, %eax
	movzbl	(%ecx), %ecx
	addl	%ecx, %ebx
	movl	16(%esp), %ecx
	movzbl	1(%ecx), %ecx
	addl	%ecx, 24(%esp)
	movl	16(%esp), %ecx
	movzbl	2(%ecx), %ecx
	addl	%ecx, 28(%esp)
	cmpl	%edi, 32(%esp)
	jle	L1088
	movl	16(%esp), %edx
	movzbl	7(%edx), %edx
	testb	%dl, %dl
	jne	L1029
L1088:
	cmpl	$3, 20(%esp)
	jne	L1024
L1031:
	imull	$85, %ebx, %ebx
	imull	$85, 24(%esp), %ecx
	imull	$85, 28(%esp), %edx
	imull	$85, %eax, %eax
	subl	$-128, %ebx
	subl	$-128, %ecx
	movzbl	%bh, %ebx
	subl	$-128, %edx
	movzbl	%ch, %ecx
	subl	$-128, %eax
	movzbl	%dh, %edx
	movzbl	%ah, %eax
	jmp	L1034
	.p2align 4,,10
	.p2align 3
L1025:
	addl	%edx, %eax
	movl	16(%esp), %edx
	movzbl	4(%ebp), %ecx
	addl	$1, 20(%esp)
	movzbl	3(%edx), %edx
	addl	%ecx, %ebx
	movzbl	5(%ebp), %ecx
	addl	%ecx, 24(%esp)
	movzbl	6(%ebp), %ecx
	addl	%ecx, 28(%esp)
	testb	%dl, %dl
	jne	L1023
L1026:
	movl	16(%esp), %edx
	movzbl	7(%edx), %edx
	testb	%dl, %dl
	je	L1024
L1029:
	movl	16(%esp), %ecx
	addl	$1, 20(%esp)
	addl	%edx, %eax
	movzbl	4(%ecx), %ecx
	addl	%ecx, %ebx
	movl	16(%esp), %ecx
	movzbl	5(%ecx), %ecx
	addl	%ecx, 24(%esp)
	movl	16(%esp), %ecx
	movzbl	6(%ecx), %ecx
	addl	%ecx, 28(%esp)
	movl	20(%esp), %ecx
	cmpl	$3, %ecx
	je	L1031
	cmpl	$4, %ecx
	jne	L1024
	movl	24(%esp), %ecx
	movl	28(%esp), %edx
	addl	$2, %ebx
	addl	$2, %eax
	sarl	$2, %ebx
	sarl	$2, %eax
	addl	$2, %ecx
	addl	$2, %edx
	sarl	$2, %ecx
	sarl	$2, %edx
	jmp	L1034
L1092:
	movzbl	24(%esp), %ecx
	movzbl	28(%esp), %edx
	jmp	L1034
	.p2align 4,,10
	.p2align 3
L1090:
	movl	28(%esp), %ecx
	movl	56(%esp), %ebx
L1020:
	addl	$2, %ebx
	addl	52(%esp), %esi
	addl	48(%esp), %ecx
	cmpl	%ebx, 44(%esp)
	jne	L1036
	movl	84(%esp), %edi
	movl	88(%esp), %esi
	testb	$64, 149(%esp)
	je	L1096
L1037:
	movl	72(%esp), %ebx
	cmpl	%ebx, 80(%esp)
	jle	L1097
L1038:
	addl	$1, 72(%esp)
	cmpl	$1, %edi
	jg	L1073
	cmpl	$1, %esi
	jg	L1073
	movl	124(%esp), %ebp
	.cfi_restore 5
L990:
	movl	112(%esp), %ebx
	movl	116(%esp), %esi
	movl	120(%esp), %edi
	subl	$-128, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1093:
	.cfi_def_cfa_offset 132
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	56(%esp), %ecx
	movl	60(%esp), %ebx
	jmp	L1020
L1097:
	movl	%ebx, %eax
	subl	80(%esp), %eax
	movl	68(%esp), %edx
	movl	%eax, 12(%esp)
	movl	92(%esp), %eax
	movl	76(%esp), %ecx
	movl	%eax, 8(%esp)
	movl	136(%esp), %eax
	movl	%eax, 4(%esp)
	movl	132(%esp), %eax
	movl	%eax, (%esp)
	movl	96(%esp), %eax
	call	__ZL24Polymost_SendTexToDriveri4vec2IiEiPK7coltypeii
	jmp	L1038
L1096:
	movzbl	72(%esp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	104(%esp), %ecx
	leal	-1(%eax,%ecx), %edx
	movzbl	72(%esp), %ecx
	sarl	%cl, %edx
	movl	108(%esp), %ecx
	leal	-1(%eax,%ecx), %eax
	movzbl	72(%esp), %ecx
	sarl	%cl, %eax
	movl	%eax, %ecx
	movl	100(%esp), %eax
	movl	%eax, 8(%esp)
	movl	68(%esp), %eax
	movl	%eax, (%esp)
	movl	76(%esp), %eax
	movl	%eax, 4(%esp)
	movl	136(%esp), %eax
	call	__ZL15fixtransparencyP7coltype4vec2IiES2_i
	jmp	L1037
L1089:
	.cfi_restore 5
	movl	$0, 8(%esp)
	movl	$33084, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 120
	subl	$12, %esp
	.cfi_def_cfa_offset 132
	movl	$0, 8(%esp)
	movl	$33085, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 120
	subl	$12, %esp
	.cfi_def_cfa_offset 132
	movl	80(%esp), %ecx
	testl	%ecx, %ecx
	je	L1040
L1006:
	movl	_glusetexcache, %edx
	testl	%edx, %edx
	jne	L1010
	movl	_gltexfiltermode, %eax
	leal	(%eax,%eax,2), %eax
	movl	_glfiltermodes+4(,%eax,4), %eax
	subl	$9728, %eax
	cmpl	$1, %eax
	ja	L1010
	movl	112(%esp), %ebx
	movl	116(%esp), %esi
	movl	120(%esp), %edi
	subl	$-128, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L1040:
	.cfi_restore_state
	movl	92(%esp), %eax
	movl	$0, 12(%esp)
	movl	%ebx, %edx
	movl	%edi, %ecx
	movl	%eax, 8(%esp)
	movl	136(%esp), %eax
	movl	%eax, 4(%esp)
	movl	132(%esp), %eax
	movl	%eax, (%esp)
	movl	96(%esp), %eax
	call	__ZL24Polymost_SendTexToDriveri4vec2IiEiPK7coltypeii
	jmp	L1006
L993:
	movzbl	_glinfo+29, %eax
	movl	_gltexmaxsize, %ecx
	andl	$64, %eax
	cmpb	$1, %al
	sbbl	%eax, %eax
	andl	$-1174, %eax
	addl	$34030, %eax
	movl	%eax, 92(%esp)
	testl	%ecx, %ecx
	jg	L1098
L995:
	movl	_glinfo+20, %eax
	testl	%eax, %eax
	jne	L997
	movl	_gltexmiplevel, %edx
	movl	$64, %eax
	movl	$6, _gltexmaxsize
	cmpl	$4, %edx
	jle	L998
	movl	$5, 80(%esp)
	jmp	L999
L997:
	xorl	%ecx, %ecx
	cmpl	$1, %eax
	jle	L1099
L1000:
	sarl	%eax
	movl	%ecx, %esi
	leal	1(%ecx), %ecx
	cmpl	$1, %eax
	jne	L1000
	movl	%ecx, _gltexmaxsize
	sall	%cl, %eax
	jmp	L996
L1099:
	movl	$0, _gltexmaxsize
	movl	$1, %eax
	movl	$0, 80(%esp)
	jmp	L999
	.cfi_endproc
LFE85:
	.p2align 4
	.globl	__Z20uploadtextureindexedi4vec2IiES0_i
	.def	__Z20uploadtextureindexedi4vec2IiES0_i;	.scl	2;	.type	32;	.endef
__Z20uploadtextureindexedi4vec2IiES0_i:
LFB86:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	testb	$1, %al
	movl	%esi, 48(%esp)
	movl	60(%esp), %eax
	.cfi_offset 6, -8
	movl	%edx, %esi
	movl	56(%esp), %edx
	je	L1101
	movl	%eax, 40(%esp)
	movl	%edx, 36(%esp)
	movl	$0, 8(%esp)
	movl	$33084, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 44
	subl	$12, %esp
	.cfi_def_cfa_offset 56
	movl	$0, 8(%esp)
	movl	$33085, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 44
	subl	$12, %esp
	.cfi_def_cfa_offset 56
	movl	$9728, 8(%esp)
	movl	$10240, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 44
	subl	$12, %esp
	.cfi_def_cfa_offset 56
	movl	$9984, 8(%esp)
	movl	$10241, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 44
	subl	$12, %esp
	.cfi_def_cfa_offset 56
	movl	$0x3f800000, 8(%esp)
	movl	$34046, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameterf
	.cfi_def_cfa_offset 44
	subl	$12, %esp
	.cfi_def_cfa_offset 56
	movl	64(%esp), %eax
	movl	36(%esp), %edx
	movl	$5121, 28(%esp)
	movl	$6403, 24(%esp)
	movl	%eax, 32(%esp)
	movl	40(%esp), %eax
	movl	$0, 20(%esp)
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$6403, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexImage2D
	.cfi_def_cfa_offset 20
	subl	$36, %esp
	.cfi_def_cfa_offset 56
	movl	48(%esp), %esi
	addl	$52, %esp
	.cfi_remember_state
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1101:
	.cfi_restore_state
	movl	%ebx, 44(%esp)
	.cfi_offset 3, -12
	movl	64(%esp), %ebx
	movl	%esi, 8(%esp)
	movl	%ebx, 32(%esp)
	movl	$5121, 28(%esp)
	movl	$6403, 24(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	$0, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexSubImage2D
	.cfi_def_cfa_offset 20
	subl	$36, %esp
	.cfi_def_cfa_offset 56
	movl	44(%esp), %ebx
	.cfi_restore 3
	movl	48(%esp), %esi
	addl	$52, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE86:
	.p2align 4
	.globl	__Z17uploadbasepalettei
	.def	__Z17uploadbasepalettei;	.scl	2;	.type	32;	.endef
__Z17uploadbasepalettei:
LFB87:
	.cfi_startproc
	movl	__ZL29polymost1BasicShaderProgramID.lto_priv.0, %edx
	testl	%edx, %edx
	je	L1113
	subl	$1080, %esp
	.cfi_def_cfa_offset 1084
	movl	%esi, 1068(%esp)
	movl	_basepaltable(,%eax,4), %edx
	.cfi_offset 6, -16
	movl	%eax, %esi
	testl	%edx, %edx
	je	L1104
	movl	%ebx, 1064(%esp)
	movl	$1, %ecx
	movl	%edi, 1072(%esp)
	movl	%ebp, 1076(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movzbl	(%edx), %eax
	movb	%al, 40(%esp)
	movzbl	1(%edx), %eax
	movb	%al, 41(%esp)
	movzbl	2(%edx), %eax
	movb	%al, 42(%esp)
	movzbl	_PaletteIndexFullbright, %eax
	andl	$1, %eax
	negl	%eax
	movb	%al, 43(%esp)
	leal	3(%edx), %eax
	movl	%eax, 36(%esp)
	leal	44(%esp), %eax
	.p2align 4
	.p2align 3
L1106:
	movl	36(%esp), %edx
	movl	%ecx, %ebx
	movl	%ecx, %edi
	andl	$7, %ebx
	sarl	$3, %edi
	movzbl	__ZL8pow2char.lto_priv.12(%ebx), %ebp
	movzbl	(%edx), %ebx
	movzbl	_PaletteIndexFullbright(%edi), %edi
	movb	%bl, (%eax)
	movzbl	1(%edx), %ebx
	andl	%ebp, %edi
	movb	%bl, 1(%eax)
	movzbl	2(%edx), %ebx
	movl	%ebp, %edx
	movb	%bl, 2(%eax)
	movl	%edi, %ebx
	cmpb	%dl, %bl
	sete	%bl
	addl	$1, %ecx
	addl	$3, 36(%esp)
	addl	$4, %eax
	negl	%ebx
	movb	%bl, -1(%eax)
	cmpl	$256, %ecx
	jne	L1106
	movl	__ZL17paletteTextureIDs(,%esi,4), %eax
	testl	%eax, %eax
	jne	L1116
	leal	__ZL17paletteTextureIDs(,%esi,4), %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glGenTextures
	.cfi_def_cfa_offset 1076
	movl	__ZL17paletteTextureIDs(,%esi,4), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 1084
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	$0, 8(%esp)
	movl	$33084, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 1072
	subl	$12, %esp
	.cfi_def_cfa_offset 1084
	movl	$0, 8(%esp)
	movl	$33085, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 1072
	subl	$12, %esp
	.cfi_def_cfa_offset 1084
	movl	$9728, 8(%esp)
	movl	$10240, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 1072
	subl	$12, %esp
	.cfi_def_cfa_offset 1084
	movl	$9728, 8(%esp)
	movl	$10241, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 1072
	subl	$12, %esp
	.cfi_def_cfa_offset 1084
	movl	$0x3f800000, 8(%esp)
	movl	$34046, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameterf
	.cfi_def_cfa_offset 1072
	subl	$12, %esp
	.cfi_def_cfa_offset 1084
	movl	$33071, 8(%esp)
	movl	$10242, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 1072
	subl	$12, %esp
	.cfi_def_cfa_offset 1084
	movl	$33071, 8(%esp)
	movl	$10243, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 1072
	subl	$12, %esp
	.cfi_def_cfa_offset 1084
	leal	40(%esp), %eax
	movl	$5121, 28(%esp)
	movl	%eax, 32(%esp)
	movl	$6408, 24(%esp)
	movl	$0, 20(%esp)
	movl	$1, 16(%esp)
	movl	$256, 12(%esp)
	movl	$32856, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexImage2D
	.cfi_def_cfa_offset 1048
	subl	$36, %esp
	.cfi_def_cfa_offset 1084
	movl	1064(%esp), %ebx
	.cfi_restore 3
	movl	1072(%esp), %edi
	.cfi_restore 7
	movl	1076(%esp), %ebp
	.cfi_restore 5
L1104:
	movl	1068(%esp), %esi
	addl	$1080, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L1116:
	.cfi_def_cfa_offset 1084
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	__Z19buildgl_bindTexturejj.constprop.0
	leal	40(%esp), %eax
	movl	$5121, 28(%esp)
	movl	%eax, 32(%esp)
	movl	$6408, 24(%esp)
	movl	$1, 20(%esp)
	movl	$256, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexSubImage2D
	.cfi_def_cfa_offset 1048
	subl	$36, %esp
	.cfi_def_cfa_offset 1084
	movl	1064(%esp), %ebx
	.cfi_restore 3
	movl	1072(%esp), %edi
	.cfi_restore 7
	movl	1076(%esp), %ebp
	.cfi_restore 5
	movl	1068(%esp), %esi
	addl	$1080, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L1113:
	ret
	.cfi_endproc
LFE87:
	.section .rdata,"dr"
LC74:
	.ascii "%08x\0"
	.text
	.p2align 4
	.globl	__Z13gloadtile_artiiiiiP8pthtyp_ti
	.def	__Z13gloadtile_artiiiiiP8pthtyp_ti;	.scl	2;	.type	32;	.endef
__Z13gloadtile_artiiiiiP8pthtyp_ti:
LFB88:
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
	subl	$432, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	8(%edi), %esi
	movl	(%edi), %ebx
	movl	%edx, -336(%ebp)
	movl	%ecx, -364(%ebp)
	movswl	_tilesiz+2(,%eax,4), %edx
	movl	4(%edi), %ecx
	movl	%esi, -372(%ebp)
	movswl	_tilesiz(,%eax,4), %esi
	movl	%eax, -332(%ebp)
	movl	%ecx, -368(%ebp)
	andl	$512, %ecx
	movl	%edi, -396(%ebp)
	movl	%ebx, -340(%ebp)
	movl	%esi, -320(%ebp)
	movl	%esi, -392(%ebp)
	movl	%edx, -328(%ebp)
	movl	%edx, -388(%ebp)
	movl	%esi, -300(%ebp)
	movss	-300(%ebp), %xmm0
	movss	-328(%ebp), %xmm2
	movl	%ecx, -404(%ebp)
	movl	_waloff(,%eax,4), %eax
	unpcklps	%xmm2, %xmm0
	movlps	%xmm0, -312(%ebp)
	jne	L1310
	movl	$0, -296(%ebp)
	movl	%esi, %edi
	movl	%edx, %ebx
	xorl	%edx, %edx
	movl	-320(%ebp), %esi
	imull	-328(%ebp), %esi
	testl	%eax, %eax
	jne	L1311
L1130:
	leal	-272(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC74, 4(%esp)
	movl	%eax, (%esp)
	call	_sprintf
	movzbl	-364(%ebp), %eax
	movl	-336(%ebp), %ecx
	movl	%eax, 4(%esp)
	movl	-368(%ebp), %edx
	sall	$24, %ecx
	orl	%esi, %ecx
	movl	%edx, %eax
	andl	$-3, %edx
	sarl	%eax
	andl	$1, %eax
	orl	%edx, %eax
	movl	-332(%ebp), %edx
	movl	%eax, -300(%ebp)
	movl	-340(%ebp), %eax
	sall	$8, %edx
	sall	$24, %eax
	orl	%eax, %edx
	movl	-300(%ebp), %eax
	orl	%edx, %eax
	leal	-272(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, %eax
	call	_texcache_calcid.isra.0
	call	_texcache_enabled
	movl	%eax, -400(%ebp)
	testl	%eax, %eax
	jne	L1312
L1133:
	cmpb	$0, _glinfo+29
	js	L1136
	movl	-320(%ebp), %edx
	cmpl	$1, %edx
	jle	L1205
	movl	$1, %eax
	.p2align 3
	.p2align 4
	.p2align 3
L1138:
	addl	%eax, %eax
	cmpl	%edx, %eax
	jl	L1138
	movl	%eax, -360(%ebp)
L1137:
	movl	$1, -356(%ebp)
	movl	-328(%ebp), %edx
	movl	$1, %eax
	cmpl	$1, -328(%ebp)
	jle	L1313
	.p2align 3
	.p2align 4
	.p2align 3
L1139:
	addl	%eax, %eax
	cmpl	%edx, %eax
	jl	L1139
	movl	%eax, -356(%ebp)
	imull	-360(%ebp), %eax
	leal	0(,%eax,4), %ebx
L1140:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1141
	movl	-332(%ebp), %eax
	movl	_waloff(,%eax,4), %eax
	testl	%eax, %eax
	jne	L1314
	movl	-332(%ebp), %eax
	movl	$16777216, (%edi)
	movl	$1, -388(%ebp)
	leal	0(,%eax,4), %eax
	movb	$0, -341(%ebp)
	movl	$1, -392(%ebp)
	movb	$1, -300(%ebp)
	movl	%eax, -408(%ebp)
L1144:
	movl	-396(%ebp), %eax
	movl	12(%eax), %esi
	movl	-372(%ebp), %eax
	testl	%esi, %esi
	je	L1170
	addl	$12, %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glGenTextures
	movl	-372(%ebp), %eax
	subl	$8, %esp
	movl	12(%eax), %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	-368(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	movl	-356(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-388(%ebp), %ecx
	movl	%edi, %eax
	movl	-392(%ebp), %edx
	call	__ZL15fixtransparencyP7coltype4vec2IiES2_i
	movl	-408(%ebp), %eax
	movl	-332(%ebp), %ecx
	movzbl	_picanm+4(%eax,%ecx), %eax
	andl	$2, %eax
	movb	%al, -316(%ebp)
	je	L1315
L1171:
	xorl	%eax, %eax
	movb	$0, -316(%ebp)
	movw	%ax, -304(%ebp)
L1175:
	movl	-368(%ebp), %eax
	movzbl	-300(%ebp), %ecx
	movl	-392(%ebp), %ebx
	movss	-388(%ebp), %xmm4
	movl	%eax, %edx
	orb	$-112, %dh
	movl	%ebx, -312(%ebp)
	cmpl	$30463, -332(%ebp)
	cmovle	%eax, %edx
	movzbl	-341(%ebp), %eax
	negl	%ecx
	movss	-312(%ebp), %xmm1
	andl	$196608, %ecx
	sall	$19, %eax
	unpcklps	%xmm4, %xmm1
	orl	%ecx, %eax
	movlps	%xmm1, -312(%ebp)
	orl	%edx, %eax
	orl	-404(%ebp), %eax
	movl	%ebx, 8(%esp)
	orl	$262144, %eax
	movl	%eax, 16(%esp)
	movl	-388(%ebp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%esi, %eax
	movl	$32993, (%esp)
	movl	-360(%ebp), %edx
	movl	-356(%ebp), %ecx
	call	__Z13uploadtexturei4vec2IiEiP7coltypeS0_i
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1135:
	movl	-368(%ebp), %ebx
	movl	$-1, %edx
	movl	%ebx, %eax
	call	__ZL21polymost_setuptextureii
	movl	-372(%ebp), %esi
	movl	%ebx, %edx
	xorl	%eax, %eax
	notl	%edx
	sarl	$2, %ebx
	movzbl	-336(%ebp), %ecx
	movl	-332(%ebp), %edi
	movw	%ax, 36(%esi)
	movl	%edx, %eax
	sall	$7, %edx
	movlps	-312(%ebp), %xmm3
	sall	$8, %eax
	movb	%cl, 38(%esi)
	movzbl	-340(%ebp), %ecx
	andl	%edx, %eax
	movl	%ebx, %edx
	movw	%di, 32(%esi)
	andl	$1, %edx
	andw	$256, %ax
	movb	%cl, 39(%esi)
	orl	%edx, %eax
	movzbl	-300(%ebp), %edx
	orw	-304(%ebp), %ax
	movlps	%xmm3, 24(%esi)
	movl	$0, 8(%esi)
	negl	%edx
	andw	$1032, %dx
	orl	%edx, %eax
	movl	-400(%ebp), %edx
	movw	%ax, 34(%esi)
	testl	%edx, %edx
	jne	L1188
	testb	$64, _glinfo+29
	je	L1188
	movl	_glusetexcache, %eax
	testl	%eax, %eax
	je	L1188
	cmpl	$2, _glusetexcompr
	jne	L1188
	cmpl	$30463, %edi
	jle	L1316
	.p2align 4
	.p2align 3
L1188:
	cmpb	$0, -341(%ebp)
	je	L1117
	movl	__ZZ13gloadtile_artiiiiiP8pthtyp_tiE21fullbrightloadingpass, %eax
	testl	%eax, %eax
	jne	L1117
	movl	-372(%ebp), %eax
	movl	$1, __ZZ13gloadtile_artiiiiiP8pthtyp_tiE21fullbrightloadingpass
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L1317
L1191:
	movl	-372(%ebp), %esi
	movl	$-1, %ecx
	orw	$16, 34(%esi)
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-368(%ebp), %eax
	movl	$0, (%esp)
	andl	$-4, %eax
	orl	$1, %eax
	movl	%eax, 4(%esp)
	movl	-336(%ebp), %edx
	movl	-332(%ebp), %eax
	call	__Z13gloadtile_artiiiiiP8pthtyp_ti
	movl	$0, __ZZ13gloadtile_artiiiiiP8pthtyp_tiE21fullbrightloadingpass
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
L1312:
	.cfi_restore_state
	xorl	%ecx, %ecx
	leal	-296(%ebp), %edx
	leal	-272(%ebp), %eax
	call	_texcache_readtexheader.part.0
	movl	%eax, -400(%ebp)
	testl	%eax, %eax
	je	L1133
	movl	-396(%ebp), %eax
	movl	-372(%ebp), %ecx
	leal	12(%eax), %edx
	leal	-296(%ebp), %eax
	call	_texcache_loadtile
	movl	%eax, -360(%ebp)
	testl	%eax, %eax
	jne	L1133
	movl	$0, -356(%ebp)
	movl	-284(%ebp), %eax
	movl	%eax, %edx
	shrl	%edx
	movl	%edx, %ecx
	movl	%eax, %edx
	shrl	$5, %eax
	andl	$1, %ecx
	shrl	$4, %edx
	movb	%cl, -300(%ebp)
	movl	%edx, %ecx
	andl	$1, %ecx
	movb	%cl, -341(%ebp)
	movl	%eax, %ecx
	andl	$1, %eax
	andl	$1, %ecx
	sall	$5, %eax
	movb	%cl, -316(%ebp)
	movw	%ax, -304(%ebp)
	jmp	L1135
	.p2align 4,,10
	.p2align 3
L1136:
	orw	%bx, %di
	jne	L1318
	movl	$1, -356(%ebp)
	movl	$4, %ebx
	movl	$1, -360(%ebp)
	jmp	L1140
	.p2align 4,,10
	.p2align 3
L1170:
	movl	12(%eax), %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	-368(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	movl	-356(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-388(%ebp), %ecx
	movl	%edi, %eax
	movl	-392(%ebp), %edx
	call	__ZL15fixtransparencyP7coltype4vec2IiES2_i
	movl	-408(%ebp), %eax
	movl	-332(%ebp), %ecx
	movzbl	_picanm+4(%eax,%ecx), %eax
	andl	$2, %eax
	movb	%al, -316(%ebp)
	jne	L1319
	cmpl	$4, _rendmode
	je	L1320
	cmpb	$0, _glinfo+29
	js	L1321
	movl	-372(%ebp), %eax
	xorl	%esi, %esi
	movl	$0, -404(%ebp)
	movw	%si, -304(%ebp)
	movl	24(%eax), %ebx
	movl	28(%eax), %ecx
L1195:
	movl	$1, %eax
	cmpl	$1, %ebx
	jle	L1183
	.p2align 3
	.p2align 4
	.p2align 3
L1184:
	addl	%eax, %eax
	cmpl	%ebx, %eax
	jl	L1184
L1183:
	movl	$1, %edx
	cmpl	$1, %ecx
	jle	L1185
	.p2align 3
	.p2align 4
	.p2align 3
L1186:
	addl	%edx, %edx
	cmpl	%ecx, %edx
	jl	L1186
L1185:
	cmpl	-356(%ebp), %edx
	jl	L1219
	cmpl	-360(%ebp), %eax
	jge	L1322
L1219:
	movl	$1, %esi
	jmp	L1175
	.p2align 4,,10
	.p2align 3
L1314:
	movl	-332(%ebp), %eax
	movb	$0, -342(%ebp)
	leal	0(,%eax,4), %esi
	movl	%esi, -408(%ebp)
	testb	$16, _picanm+3(%eax,%eax,4)
	je	L1323
L1145:
	movl	-356(%ebp), %eax
	testl	%eax, %eax
	jle	L1209
	movl	-368(%ebp), %eax
	movl	-328(%ebp), %ecx
	movl	$0, -324(%ebp)
	movb	$0, -341(%ebp)
	andl	$4, %eax
	movb	$0, -300(%ebp)
	negl	%ecx
	movl	%eax, -352(%ebp)
	shrl	$2, %eax
	movl	%eax, -412(%ebp)
	movl	-364(%ebp), %eax
	movl	%edi, -416(%ebp)
	notl	%eax
	movl	%ebx, -420(%ebp)
	shrl	$31, %eax
	movl	%eax, -348(%ebp)
	movl	-360(%ebp), %eax
	leal	0(,%eax,4), %edx
	leal	(%edi,%edx), %eax
	movl	%eax, -316(%ebp)
	.p2align 4
	.p2align 3
L1169:
	movl	-328(%ebp), %esi
	cmpl	%esi, -324(%ebp)
	jl	L1210
L1168:
	movl	-360(%ebp), %eax
	testl	%eax, %eax
	jle	L1147
	movl	-324(%ebp), %edi
L1307:
	movl	-316(%ebp), %ebx
	movl	%ecx, -324(%ebp)
	subl	%edx, %ebx
	cmpl	-328(%ebp), %edi
	jl	L1199
	testb	$1, -412(%ebp)
	je	L1199
	movl	-316(%ebp), %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1148:
	movb	$0, 3(%ebx)
	addl	$4, %ebx
	movb	$0, -2(%ebx)
	movb	$0, -3(%ebx)
	movb	$0, -4(%ebx)
	cmpl	%eax, %ebx
	jne	L1148
	addl	$1, %edi
	cmpl	%edi, -356(%ebp)
	je	L1303
	addl	%edx, -316(%ebp)
	addl	$1, %ecx
	cmpl	-328(%ebp), %edi
	jge	L1307
	movl	%edi, -324(%ebp)
	jmp	L1166
	.p2align 4,,10
	.p2align 3
L1210:
	movl	-324(%ebp), %edi
L1146:
	movl	-360(%ebp), %eax
	testl	%eax, %eax
	jle	L1324
L1166:
	movl	-316(%ebp), %ebx
	subl	%edx, %ebx
L1199:
	movl	-320(%ebp), %eax
	movl	%edi, -376(%ebp)
	xorl	%esi, %esi
	movl	%ecx, -380(%ebp)
	negl	%eax
	movl	%edx, -384(%ebp)
	movl	%eax, -304(%ebp)
	jmp	L1161
	.p2align 4,,10
	.p2align 3
L1150:
	movl	-352(%ebp), %edx
	movl	-304(%ebp), %eax
	testl	%edx, %edx
	jne	L1165
L1151:
	movl	-332(%ebp), %ecx
	imull	-328(%ebp), %eax
	movl	$-1, %edx
	addl	-324(%ebp), %eax
	movzbl	-300(%ebp), %edi
	addl	_waloff(,%ecx,4), %eax
	xorl	%ecx, %ecx
	movzbl	(%eax), %eax
	cmpb	$-1, %al
	cmove	%ecx, %edx
	movl	$1, %ecx
	cmovne	%edi, %ecx
	movl	-336(%ebp), %edi
	movb	%dl, 3(%ebx)
	movl	-340(%ebp), %edx
	movb	%cl, -300(%ebp)
	movl	__ZZ13gloadtile_artiiiiiP8pthtyp_tiE21fullbrightloadingpass, %ecx
	sall	$8, %edx
	addl	_palookup(,%edi,4), %edx
	movzbl	(%edx,%eax), %eax
	movl	%ecx, -312(%ebp)
	movl	%eax, %edx
	movl	%eax, %edi
	andl	$7, %edx
	sarl	$3, %edi
	movzbl	__ZL8pow2char.lto_priv.12(%edx), %edx
	movzbl	_PaletteIndexFullbright(%edi), %edi
	andl	%edx, %edi
	testl	%ecx, %ecx
	jne	L1325
	movl	%edi, %ecx
	cmpb	%dl, %cl
	sete	%dl
	andb	-342(%ebp), %dl
	orb	%dl, -341(%ebp)
L1164:
	movl	_gammabrightness, %edi
	movzbl	_curpalette(,%eax,4), %edx
	testl	%edi, %edi
	je	L1326
	movb	%dl, (%ebx)
	movzbl	_curpalette+1(,%eax,4), %edx
	movb	%dl, 1(%ebx)
	movzbl	_curpalette+2(,%eax,4), %eax
L1163:
	movl	-312(%ebp), %ecx
	movb	%al, 2(%ebx)
	testl	%ecx, %ecx
	jne	L1162
	cmpb	$0, -348(%ebp)
	je	L1162
	movzbl	-364(%ebp), %edx
	movl	%ebx, %eax
	movl	$1, %ecx
	call	_hictinting_applypixcolor
	movzbl	2(%ebx), %eax
L1162:
	movzbl	(%ebx), %edx
	addl	$1, -304(%ebp)
	addl	$1, %esi
	addl	$4, %ebx
	movb	%al, -4(%ebx)
	movb	%dl, -2(%ebx)
	cmpl	-316(%ebp), %ebx
	je	L1309
L1161:
	cmpl	-320(%ebp), %esi
	jge	L1150
	movl	%esi, %eax
	jmp	L1151
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1165:
	movb	$0, 3(%ebx)
	addl	$4, %ebx
	movb	$0, -2(%ebx)
	movb	$0, -3(%ebx)
	movb	$0, -4(%ebx)
	cmpl	-316(%ebp), %ebx
	je	L1309
	addl	$1, %esi
	addl	$1, %eax
	cmpl	-320(%ebp), %esi
	jge	L1165
	movl	%eax, -304(%ebp)
	movl	%esi, %eax
	jmp	L1151
	.p2align 4,,10
	.p2align 3
L1325:
	movl	%edi, %ecx
	cmpb	%dl, %cl
	je	L1164
	movb	$0, 3(%ebx)
	movb	$1, -300(%ebp)
	jmp	L1164
	.p2align 4,,10
	.p2align 3
L1326:
	movl	_curbrightness, %edi
	sall	$8, %edi
	movzbl	_britable(%edx,%edi), %edx
	movb	%dl, (%ebx)
	movl	_curbrightness, %edx
	movzbl	_curpalette+1(,%eax,4), %edi
	sall	$8, %edx
	movzbl	_britable(%edi,%edx), %edx
	movb	%dl, 1(%ebx)
	movzbl	_curpalette+2(,%eax,4), %edx
	movl	_curbrightness, %eax
	sall	$8, %eax
	movzbl	_britable(%edx,%eax), %eax
	jmp	L1163
	.p2align 4,,10
	.p2align 3
L1309:
	movl	-376(%ebp), %edi
	movl	-380(%ebp), %ecx
	movl	-384(%ebp), %edx
L1153:
	leal	1(%edi), %eax
	addl	%edx, -316(%ebp)
	addl	$1, %ecx
	movl	%eax, -324(%ebp)
	cmpl	-356(%ebp), %eax
	jne	L1169
L1303:
	movl	-416(%ebp), %edi
	movl	-420(%ebp), %ebx
	jmp	L1144
	.p2align 4,,10
	.p2align 3
L1311:
	movl	$4, %edx
	cmpl	%edx, %esi
	cmovle	%esi, %edx
	testl	%edx, %edx
	je	L1132
	movw	%bx, -300(%ebp)
	xorl	%ecx, %ecx
L1131:
	movzbl	(%eax,%ecx), %ebx
	movb	%bl, -296(%ebp,%ecx)
	addl	$1, %ecx
	cmpl	%edx, %ecx
	jb	L1131
	movzwl	-300(%ebp), %ebx
L1132:
	movl	-296(%ebp), %edx
	jmp	L1130
L1310:
	testl	%eax, %eax
	jne	L1327
	movl	_tiles+12, %eax
	movl	-372(%ebp), %esi
	testl	%eax, %eax
	cmovne	_tiles, %eax
	movl	__ZL15tilesheetTexIDs.lto_priv.0(,%eax,4), %eax
	movl	%eax, 12(%esi)
L1127:
	movl	-368(%ebp), %ebx
	movl	-372(%ebp), %esi
	movzwl	-332(%ebp), %eax
	movlps	-312(%ebp), %xmm5
	movl	%ebx, %edx
	sarl	$2, %ebx
	movl	$0, 36(%esi)
	notl	%edx
	movw	%ax, 32(%esi)
	movl	%edx, %eax
	sall	$7, %edx
	movl	$0, 8(%esi)
	sall	$8, %eax
	movlps	%xmm5, 24(%esi)
	andl	%edx, %eax
	movl	%ebx, %edx
	andw	$256, %ax
	andl	$1, %edx
	orl	%edx, %eax
	orw	$1544, %ax
	movw	%ax, 34(%esi)
L1117:
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
L1315:
	.cfi_restore_state
	cmpl	$4, _rendmode
	je	L1173
	cmpb	$0, _glinfo+29
	js	L1328
L1173:
	xorl	%eax, %eax
	movw	%ax, -304(%ebp)
	jmp	L1175
L1323:
	movzbl	_globalflags, %eax
	shrb	%al
	andl	$1, %eax
	xorl	$1, %eax
	movb	%al, -342(%ebp)
	jmp	L1145
L1319:
	xorl	%ecx, %ecx
	movb	$0, -316(%ebp)
	movw	%cx, -304(%ebp)
L1181:
	movl	-372(%ebp), %eax
	cmpb	$0, _glinfo+29
	movl	%esi, -404(%ebp)
	movl	24(%eax), %ebx
	movl	28(%eax), %ecx
	jns	L1195
L1182:
	movl	%ecx, %esi
	movl	$1, %eax
	orl	%ebx, %esi
	cmove	%eax, %ecx
	cmovne	%ebx, %eax
	movl	%ecx, %edx
	jmp	L1185
L1318:
	movl	-328(%ebp), %eax
	leal	0(,%esi,4), %ebx
	movl	%eax, -356(%ebp)
	movl	-320(%ebp), %eax
	movl	%eax, -360(%ebp)
	jmp	L1140
L1327:
	movl	-396(%ebp), %eax
	movl	-372(%ebp), %esi
	movl	12(%eax), %edi
	movl	-332(%ebp), %eax
	movl	12(%esi), %edx
	addl	$1, %eax
	cmpl	$30720, %eax
	ja	L1120
	leal	(%eax,%eax,4), %eax
	sall	$2, %eax
	movl	_tiles+12(%eax), %ecx
	testl	%ecx, %ecx
	je	L1120
	movl	_tiles+4(%eax), %ebx
	movl	_tiles(%eax), %esi
	movl	%ebx, -304(%ebp)
	movl	_tiles+8(%eax), %ebx
	movl	%ebx, -316(%ebp)
	movl	__ZL15tilesheetTexIDs.lto_priv.0(,%esi,4), %ebx
	movl	%ebx, -300(%ebp)
	cmpl	-328(%ebp), %ecx
	jb	L1121
	movl	-320(%ebp), %ebx
	cmpl	%ebx, _tiles+16(%eax)
	jb	L1121
	testl	%edx, %edx
	je	L1122
	cmpl	%edx, -300(%ebp)
	je	L1122
	movl	-372(%ebp), %eax
	movl	$1, (%esp)
	addl	$12, %eax
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteTextures
	movl	__ZL15tilesheetTexIDs.lto_priv.0(,%esi,4), %eax
	subl	$8, %esp
	movl	%eax, -300(%ebp)
L1122:
	movl	-300(%ebp), %esi
	movl	-372(%ebp), %eax
	xorl	%edi, %edi
	movl	%esi, 12(%eax)
	movl	%esi, %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	-304(%ebp), %esi
	movl	-316(%ebp), %ecx
L1123:
	movl	-332(%ebp), %eax
	movl	%esi, %edx
	movl	_waloff(,%eax,4), %eax
	movl	%eax, 8(%esp)
	movl	-320(%ebp), %eax
	movl	%eax, (%esp)
	movl	-328(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edi, %eax
	call	__Z20uploadtextureindexedi4vec2IiES0_i
	jmp	L1127
L1121:
	movl	-304(%ebp), %esi
	movl	-316(%ebp), %ecx
	cmpl	%edx, -300(%ebp)
	je	L1306
	testl	%edi, %edi
	jne	L1124
	movl	%edx, %eax
	movl	%ecx, -300(%ebp)
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	-300(%ebp), %ecx
	jmp	L1123
L1324:
	addl	$1, -324(%ebp)
	movl	-324(%ebp), %eax
	cmpl	-356(%ebp), %eax
	je	L1303
	addl	%edx, -316(%ebp)
	addl	$1, %ecx
	cmpl	-328(%ebp), %eax
	jl	L1329
L1147:
	movl	-324(%ebp), %edi
	addl	$1, %edi
	cmpl	%edi, -356(%ebp)
	je	L1303
	addl	%edx, -316(%ebp)
	addl	$1, %ecx
	cmpl	-328(%ebp), %edi
	jl	L1153
	movl	%edi, -324(%ebp)
	jmp	L1168
L1322:
	movl	-396(%ebp), %eax
	movl	12(%eax), %esi
	jmp	L1175
L1141:
	movl	%ebx, %eax
	call	__Z13handle_memerri
L1317:
	movl	$44, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1192
	movl	$0, 28(%eax)
	xorl	%edx, %edx
	movl	$0, 32(%eax)
	movl	$0, 36(%eax)
	movl	$0, 40(%eax)
L1193:
	movl	$0, (%eax,%edx)
	movl	$0, 4(%eax,%edx)
	movl	$0, 8(%eax,%edx)
	movl	$0, 12(%eax,%edx)
	addl	$16, %edx
	cmpl	$32, %edx
	jb	L1193
	movl	-372(%ebp), %esi
	movl	%eax, 4(%esi)
	jmp	L1191
L1320:
	xorl	%edx, %edx
	movw	%dx, -304(%ebp)
	jmp	L1181
L1329:
	movl	%eax, %edi
	jmp	L1146
L1120:
	movl	_tiles+12, %eax
	testl	%eax, %eax
	cmovne	_tiles, %eax
	cmpl	%edx, __ZL15tilesheetTexIDs.lto_priv.0(,%eax,4)
	je	L1202
	testl	%edi, %edi
	je	L1330
	xorl	%ecx, %ecx
	xorl	%esi, %esi
L1124:
	movl	-372(%ebp), %ebx
	movl	%ecx, -300(%ebp)
	movl	$1, (%esp)
	leal	12(%ebx), %eax
	movl	%eax, 4(%esp)
	call	*_glad_glGenTextures
	movl	12(%ebx), %eax
	subl	$8, %esp
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	-368(%ebp), %eax
	movl	$-1, %edx
	call	__ZL21polymost_setuptextureii
	movl	-300(%ebp), %ecx
	jmp	L1123
L1202:
	xorl	%ecx, %ecx
	xorl	%esi, %esi
L1306:
	movl	$1, %edi
	jmp	L1124
L1316:
	movl	-360(%ebp), %esi
	movlps	%xmm3, -292(%ebp)
	movl	$0, -280(%ebp)
	cmpl	$1, %esi
	jle	L1189
	leal	-1(%esi), %eax
	testl	%eax, %esi
	je	L1189
	movl	$1, -400(%ebp)
L1190:
	movzbl	-316(%ebp), %eax
	movzbl	-300(%ebp), %edx
	sall	$5, %eax
	addl	%edx, %edx
	orl	%edx, %eax
	movzbl	-341(%ebp), %edx
	orl	-400(%ebp), %eax
	sall	$4, %edx
	orl	%edx, %eax
	leal	-296(%ebp), %edx
	orl	$8, %eax
	movl	%eax, -284(%ebp)
	leal	-272(%ebp), %eax
	call	_texcache_writetex_fromdriver
	jmp	L1188
L1192:
	movl	$44, %eax
	call	__Z13handle_memerri
L1205:
	movl	$1, -360(%ebp)
	jmp	L1137
L1313:
	movl	-360(%ebp), %eax
	leal	0(,%eax,4), %ebx
	jmp	L1140
L1321:
	movl	_usehightile, %eax
	testl	%eax, %eax
	jne	L1177
L1174:
	cmpl	$1, _r_npotwallmode
	je	L1331
L1178:
	testl	%esi, %esi
	jne	L1171
L1177:
	movl	-372(%ebp), %eax
	movb	$0, -316(%ebp)
	movl	24(%eax), %ebx
	movl	28(%eax), %ecx
	xorl	%eax, %eax
	movw	%ax, -304(%ebp)
	jmp	L1182
L1328:
	movl	_usehightile, %eax
	testl	%eax, %eax
	je	L1174
	jmp	L1173
L1209:
	movb	$0, -341(%ebp)
	movb	$0, -300(%ebp)
	jmp	L1144
L1330:
	movl	%edx, %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	-372(%ebp), %esi
	movl	-320(%ebp), %eax
	movl	-328(%ebp), %ebx
	cmpl	%eax, 24(%esi)
	setne	%al
	cmpl	%ebx, 28(%esi)
	setne	%dl
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	orl	%edx, %eax
	movl	%eax, %edi
	andl	$1, %edi
	jmp	L1123
L1331:
	testb	$32, -368(%ebp)
	je	L1178
	movl	-356(%ebp), %ecx
	cmpl	$1, %ecx
	jle	L1178
	leal	-1(%ecx), %eax
	movl	-392(%ebp), %edx
	testl	%eax, %ecx
	setne	-312(%ebp)
	cmpl	%edx, -360(%ebp)
	sete	%al
	testb	%al, -312(%ebp)
	je	L1178
	cmpl	%ecx, -388(%ebp)
	jne	L1178
	movl	-332(%ebp), %eax
	movl	-360(%ebp), %edx
	movzbl	_picsiz(%eax), %eax
	shrb	$4, %al
	leal	1(%eax), %ecx
	sall	%cl, %edx
	movb	%cl, -312(%ebp)
	sall	$2, %edx
	movl	%edx, 4(%esp)
	movl	%edx, -304(%ebp)
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	pushl	%edi
	pushl	%edi
	movl	%eax, %edi
	testl	%eax, %eax
	jne	L1223
	movl	-304(%ebp), %edx
	testl	%edx, %edx
	jne	L1179
L1223:
	movzbl	-312(%ebp), %ecx
	movl	$1, %eax
	leal	(%edi,%ebx), %edx
	sall	%cl, %eax
	movl	%eax, -388(%ebp)
	movl	%eax, %ebx
	subl	-356(%ebp), %eax
	imull	-360(%ebp), %eax
	movl	%edi, 4(%esp)
	movl	%edx, (%esp)
	sall	$2, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	testl	%esi, %esi
	je	L1214
	movl	%ebx, -356(%ebp)
	movw	$32, -304(%ebp)
	movl	$1048576, -404(%ebp)
	movb	$1, -316(%ebp)
	jmp	L1175
	.p2align 4,,10
	.p2align 3
L1189:
	movl	-356(%ebp), %esi
	cmpl	$1, %esi
	jle	L1190
	leal	-1(%esi), %eax
	testl	%eax, %esi
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -400(%ebp)
	jmp	L1190
L1179:
	movl	%edx, %eax
	call	__Z13handle_memerri
L1214:
	movl	-388(%ebp), %eax
	movb	$1, -316(%ebp)
	movl	$1048576, %esi
	movw	$32, -304(%ebp)
	movl	%eax, -356(%ebp)
	jmp	L1181
	.cfi_endproc
LFE88:
	.p2align 4
	.globl	__Z36gloadtruecolortile_mdloadskin_sharedPciP4vec2IiES2_S_tiS_.constprop.0
	.def	__Z36gloadtruecolortile_mdloadskin_sharedPciP4vec2IiES2_S_tiS_.constprop.0;	.scl	2;	.type	32;	.endef
__Z36gloadtruecolortile_mdloadskin_sharedPciP4vec2IiES2_S_tiS_.constprop.0:
LFB93:
	.cfi_startproc
	subl	$68, %esp
	.cfi_def_cfa_offset 72
	movl	%ebx, 52(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%esi, 56(%esp)
	.cfi_offset 6, -16
	movl	%ecx, %esi
	movl	%edi, 60(%esp)
	.cfi_offset 7, -12
	movl	%edx, %edi
	movl	%ecx, 20(%esp)
	movl	$0, 44(%esp)
	call	_kpzbufload
	testl	%eax, %eax
	jne	L1380
L1333:
	movl	$0, 32(%esp)
L1332:
	movl	32(%esp), %eax
	movl	52(%esp), %ebx
	movl	56(%esp), %esi
	movl	60(%esp), %edi
	addl	$68, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1380:
	.cfi_restore_state
	leal	44(%esp), %eax
	movl	72(%esp), %ecx
	movl	%esi, %edx
	movl	%ebp, 64(%esp)
	.cfi_offset 5, -8
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__ZL26gloadtile_mdloadskin_checkPciP4vec2IiES2_Pi.part.0.lto_priv.0
	testb	%al, %al
	je	L1378
	movl	72(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	leal	0(,%eax,4), %esi
	movl	72(%esp), %eax
	movl	4(%eax), %ebp
	imull	%esi, %ebp
	movl	%ebp, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 68
	subl	$4, %esp
	.cfi_def_cfa_offset 72
	movl	%eax, 32(%esp)
	testl	%eax, %eax
	je	L1334
	movl	%ebp, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	__ZZ36gloadtruecolortile_mdloadskin_sharedPciP4vec2IiES2_S_tiS_E7lastpic, %edx
	testl	%edx, %edx
	je	L1336
	movl	__ZZ36gloadtruecolortile_mdloadskin_sharedPciP4vec2IiES2_S_tiS_E6lastfn, %eax
	testl	%eax, %eax
	je	L1336
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 12(%esp)
	call	_strcmp
	movl	12(%esp), %edx
	testl	%eax, %eax
	je	L1381
L1336:
	movl	72(%esp), %eax
	movl	44(%esp), %ebp
	movl	_kpzbuf, %ebx
	movl	(%eax), %eax
	testl	%ebp, %ebp
	je	L1338
	movl	20(%esp), %edi
	movl	4(%edi), %esi
	testl	%esi, %esi
	jle	L1344
	movl	(%edi), %edi
	testl	%edi, %edi
	jle	L1344
	sall	$2, %eax
	movl	%edx, 28(%esp)
	movl	32(%esp), %ecx
	xorl	%ebp, %ebp
	movl	%eax, 16(%esp)
	leal	24(%ebx), %eax
	movl	%eax, 24(%esp)
	.p2align 4
	.p2align 3
L1342:
	movl	24(%esp), %eax
	xorl	%edx, %edx
	leal	(%eax,%ebp), %ebx
	movl	%ebx, 12(%esp)
	.p2align 4
	.p2align 3
L1341:
	movl	12(%esp), %eax
	movzbl	(%eax), %eax
	cmpb	$-1, %al
	je	L1340
	leal	(%eax,%eax,2), %eax
	movzbl	%al, %eax
	movzbl	_palette+2(%eax), %ebx
	movb	%bl, (%ecx,%edx,4)
	movzbl	_palette+1(%eax), %ebx
	movb	%bl, 1(%ecx,%edx,4)
	movzbl	_palette(%eax), %eax
	movb	$-1, 3(%ecx,%edx,4)
	movb	%al, 2(%ecx,%edx,4)
L1340:
	addl	$1, %edx
	addl	%esi, 12(%esp)
	cmpl	%edx, %edi
	jne	L1341
	addl	$1, %ebp
	addl	16(%esp), %ecx
	cmpl	%ebp, %esi
	jne	L1342
	movl	28(%esp), %edx
L1344:
	movl	$2, _gloadtile_willprint
	testl	%edx, %edx
	je	L1337
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 68
	subl	$4, %esp
	.cfi_def_cfa_offset 72
	movl	$0, __ZZ36gloadtruecolortile_mdloadskin_sharedPciP4vec2IiES2_S_tiS_E7lastpic
	movl	$0, __ZZ36gloadtruecolortile_mdloadskin_sharedPciP4vec2IiES2_S_tiS_E6lastfn
	movl	$0, __ZZ36gloadtruecolortile_mdloadskin_sharedPciP4vec2IiES2_S_tiS_E8lastsize
L1337:
	movl	_gammabrightness, %esi
	movl	$_britable, %edi
	testl	%esi, %esi
	jne	L1346
	movl	_curbrightness, %eax
	sall	$8, %eax
	addl	%eax, %edi
L1346:
	movl	20(%esp), %eax
	movl	4(%eax), %ebx
	testl	%ebx, %ebx
	jle	L1379
	cmpw	$0, 80(%esp)
	jne	L1355
	movl	76(%esp), %esi
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	.p2align 4
	.p2align 3
L1351:
	movl	20(%esp), %eax
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	jle	L1349
	movl	32(%esp), %eax
	movl	%ebx, 24(%esp)
	movl	%edx, 28(%esp)
	movl	%esi, 76(%esp)
	leal	(%eax,%edx,4), %eax
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L1350:
	movzbl	2(%eax), %edx
	movl	88(%esp), %ebp
	movzbl	(%edi,%edx), %ebx
	movzbl	1(%eax), %edx
	movb	%bl, 16(%esp)
	movzbl	(%edi,%edx), %ebx
	movzbl	(%eax), %edx
	movzbl	(%edi,%edx), %edx
	movb	%dl, 12(%esp)
	movzbl	3(%eax), %edx
	andb	%dl, 0(%ebp)
	leal	-1(%edx), %ebp
	movl	%ebp, %ecx
	movl	76(%esp), %ebp
	cmpb	$-3, %cl
	seta	%cl
	andb	%cl, 0(%ebp)
	movzbl	12(%esp), %ecx
	addl	$1, %esi
	movb	%bl, 1(%eax)
	movzbl	16(%esp), %ebx
	addl	$4, %eax
	movb	%cl, -4(%eax)
	movl	20(%esp), %ecx
	movb	%bl, -2(%eax)
	movb	%dl, -1(%eax)
	cmpl	%esi, (%ecx)
	jg	L1350
	movl	24(%esp), %ebx
	movl	28(%esp), %edx
	movl	%ebp, %esi
L1349:
	movl	72(%esp), %eax
	addl	$1, %ebx
	addl	(%eax), %edx
	movl	20(%esp), %eax
	cmpl	4(%eax), %ebx
	jl	L1351
L1379:
	movl	64(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L1332
L1338:
	.cfi_restore_state
	movl	72(%esp), %ecx
	movl	4(%ecx), %edx
	movl	32(%esp), %ecx
	movl	%eax, 4(%esp)
	movl	%ebx, %eax
	movl	%esi, (%esp)
	movl	%edx, 8(%esp)
	movl	%edi, %edx
	call	_kprender
	testl	%eax, %eax
	jne	L1343
	movl	__ZZ36gloadtruecolortile_mdloadskin_sharedPciP4vec2IiES2_S_tiS_E7lastpic, %edx
	jmp	L1344
L1355:
	movzbl	84(%esp), %esi
	xorl	%eax, %eax
	xorl	%ebp, %ebp
	movl	%esi, 28(%esp)
	.p2align 4
	.p2align 3
L1348:
	movl	20(%esp), %esi
	movl	(%esi), %edx
	testl	%edx, %edx
	jle	L1352
	movl	32(%esp), %esi
	movl	$0, 12(%esp)
	movl	%eax, 36(%esp)
	movl	%ebp, 40(%esp)
	leal	(%esi,%ebp,4), %ebx
	.p2align 4
	.p2align 3
L1353:
	movzbl	2(%ebx), %eax
	movzbl	1(%ebx), %edx
	movzbl	3(%ebx), %esi
	movzbl	(%ebx), %ecx
	movzbl	(%edi,%eax), %eax
	movl	88(%esp), %ebp
	movzbl	(%edi,%ecx), %ecx
	movb	%al, 16(%esp)
	movzbl	(%edi,%edx), %eax
	movl	76(%esp), %edx
	movb	%cl, 48(%esp)
	movb	%al, 24(%esp)
	movl	%esi, %eax
	andb	%al, 0(%ebp)
	leal	-1(%esi), %ebp
	movl	%ebp, %eax
	cmpb	$-3, %al
	seta	%al
	andb	%al, (%edx)
	movzbl	24(%esp), %eax
	xorl	%ecx, %ecx
	movl	28(%esp), %edx
	addl	$4, %ebx
	movb	%al, 49(%esp)
	movzbl	16(%esp), %eax
	movb	%al, 50(%esp)
	movl	%esi, %eax
	movb	%al, 51(%esp)
	leal	48(%esp), %eax
	call	_hictinting_applypixcolor
	movzbl	48(%esp), %eax
	addl	$1, 12(%esp)
	movb	%al, -4(%ebx)
	movzbl	49(%esp), %eax
	movb	%al, -3(%ebx)
	movzbl	50(%esp), %eax
	movb	%al, -2(%ebx)
	movl	%esi, %eax
	movl	20(%esp), %esi
	movb	%al, -1(%ebx)
	movl	12(%esp), %eax
	cmpl	(%esi), %eax
	jl	L1353
	movl	36(%esp), %eax
	movl	40(%esp), %ebp
L1352:
	movl	72(%esp), %esi
	addl	$1, %eax
	addl	(%esi), %ebp
	movl	20(%esp), %esi
	cmpl	4(%esi), %eax
	jl	L1348
	movl	64(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L1332
L1381:
	.cfi_restore_state
	movl	72(%esp), %eax
	movl	72(%esp), %edi
	movl	$1, _gloadtile_willprint
	movl	(%eax), %eax
	imull	4(%edi), %eax
	movl	%edx, 4(%esp)
	sall	$2, %eax
	movl	%eax, 8(%esp)
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	jmp	L1337
L1334:
	movl	%esi, %eax
	call	__Z13handle_memerri
L1378:
	movl	64(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L1333
L1343:
	.cfi_restore_state
	movl	32(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 68
	subl	$4, %esp
	.cfi_def_cfa_offset 72
	movl	64(%esp), %ebp
	.cfi_restore 5
	jmp	L1333
	.cfi_endproc
LFE93:
	.section .rdata,"dr"
LC75:
	.ascii "\0"
LC76:
	.ascii "File %s not found.\0"
	.align 4
LC79:
	.ascii "Load tile %4d: p%d-m%d-e%d %s... cached... %d ms\0"
LC80:
	.ascii "Cached %s\0"
	.align 4
LC81:
	.ascii "Load tile %4d: p%d-m%d-e%d %s... %d ms\0"
	.text
	.p2align 4
	.globl	__Z12gloadtile_hiiiiP10hicreplc_tiP8pthtyp_tit
	.def	__Z12gloadtile_hiiiiP10hicreplc_tiP8pthtyp_tit;	.scl	2;	.type	32;	.endef
__Z12gloadtile_hiiiiP10hicreplc_tiP8pthtyp_tit:
LFB96:
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
	subl	$428, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	4(%edi), %ebx
	movl	(%edi), %esi
	movl	%ebx, -340(%ebp)
	movl	8(%edi), %ebx
	movl	%esi, -328(%ebp)
	movl	%ebx, -332(%ebp)
	movzwl	16(%edi), %ebx
	movw	%bx, -356(%ebp)
	testl	%ecx, %ecx
	jle	L1383
	movl	8(%esi), %ebx
	testl	%ebx, %ebx
	je	L1384
	cmpl	$6, %ecx
	jg	L1384
	movl	-4(%ebx,%ecx,4), %esi
	movl	%esi, -344(%ebp)
	testl	%esi, %esi
	je	L1384
L1385:
	movl	%eax, -352(%ebp)
	movl	-344(%ebp), %eax
	movl	%edx, -364(%ebp)
	xorl	%edx, %edx
	movl	%ecx, -348(%ebp)
	movl	%edi, -368(%ebp)
	call	_kopen4load.part.0
	movl	%eax, %ebx
	cmpl	$-1, %eax
	je	L1512
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	movl	%eax, %esi
	movl	%ebx, %eax
	call	_kclose
	leal	-272(%ebp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	-272(%ebp), %eax
	movl	-364(%ebp), %ecx
	movb	$1, -321(%ebp)
	movl	%eax, -372(%ebp)
	movl	-268(%ebp), %eax
	sall	$8, %ecx
	addl	%esi, %ecx
	movl	%eax, -376(%ebp)
	movl	-356(%ebp), %eax
	andl	$199, %eax
	movl	%eax, 4(%esp)
	movl	-340(%ebp), %edi
	movl	%edi, %eax
	andl	$-3, %edi
	sarl	%eax
	andl	$1, %eax
	orl	%edi, %eax
	movl	%eax, (%esp)
	movl	-344(%ebp), %edx
	leal	-272(%ebp), %eax
	call	_texcache_calcid.isra.0
	call	_texcache_enabled
	testl	%eax, %eax
	jne	L1390
	movl	$0, -320(%ebp)
	movl	-328(%ebp), %eax
	movl	$0, -316(%ebp)
	testb	$64, 33(%eax)
	je	L1392
	testb	$2, -339(%ebp)
	je	L1392
L1394:
	movl	$0, -300(%ebp)
	movl	-344(%ebp), %eax
	call	_kpzbufload
	testl	%eax, %eax
	jne	L1513
L1384:
	movl	$-1, %eax
	jmp	L1382
	.p2align 4,,10
	.p2align 3
L1390:
	xorl	%ecx, %ecx
	leal	-292(%ebp), %edx
	leal	-272(%ebp), %eax
	call	_texcache_readtexheader.part.0
	movl	$0, -320(%ebp)
	movl	$0, -316(%ebp)
	movl	%eax, %edi
	movl	-328(%ebp), %eax
	testb	$64, 33(%eax)
	je	L1393
	testb	$2, -339(%ebp)
	jne	L1394
L1393:
	testl	%edi, %edi
	je	L1392
	movl	-368(%ebp), %eax
	movl	-332(%ebp), %ecx
	leal	12(%eax), %edx
	leal	-292(%ebp), %eax
	call	_texcache_loadtile
	movl	%eax, -360(%ebp)
	testl	%eax, %eax
	je	L1514
L1392:
	leal	-300(%ebp), %eax
	leal	-320(%ebp), %ecx
	movl	%esi, %edx
	movb	$-1, -300(%ebp)
	movl	$0, -312(%ebp)
	movl	$0, -308(%ebp)
	movl	%eax, 16(%esp)
	movl	-364(%ebp), %eax
	movl	%eax, 12(%esp)
	movzwl	-356(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-321(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-312(%ebp), %eax
	movl	%eax, (%esp)
	movl	-344(%ebp), %eax
	call	__Z36gloadtruecolortile_mdloadskin_sharedPciP4vec2IiES2_S_tiS_.constprop.0
	movl	%eax, -380(%ebp)
	testl	%eax, %eax
	je	L1384
	movl	-312(%ebp), %eax
	cmpb	$-1, -300(%ebp)
	setne	-336(%ebp)
	movlps	-312(%ebp), %xmm3
	movl	%eax, -360(%ebp)
	movl	-308(%ebp), %eax
	movlps	%xmm3, -400(%ebp)
	movl	%eax, -384(%ebp)
	movzbl	-336(%ebp), %eax
	movb	%al, -392(%ebp)
	andb	-321(%ebp), %al
	movb	%al, -388(%ebp)
	movb	%al, -321(%ebp)
	testb	$4, -340(%ebp)
	je	L1465
	movl	-348(%ebp), %eax
	testl	%eax, %eax
	je	L1418
L1465:
	movl	-320(%ebp), %edx
	movl	-360(%ebp), %edi
	movl	-316(%ebp), %eax
	cmpl	%edi, %edx
	jge	L1421
	testl	%eax, %eax
	jle	L1421
	leal	0(,%edi,4), %esi
	movl	-380(%ebp), %ebx
	xorl	%edi, %edi
	jmp	L1422
	.p2align 4,,10
	.p2align 3
L1515:
	movl	-320(%ebp), %edx
	addl	%esi, %ebx
L1422:
	movl	-360(%ebp), %eax
	leal	(%ebx,%edx,4), %ecx
	movl	%ebx, 4(%esp)
	addl	$1, %edi
	movl	%ecx, (%esp)
	subl	%edx, %eax
	sall	$2, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	-316(%ebp), %eax
	cmpl	%edi, %eax
	jg	L1515
L1421:
	cmpl	%eax, -384(%ebp)
	jg	L1516
L1418:
	testb	$1, _glinfo+28
	jne	L1424
	movl	-384(%ebp), %esi
	imull	-360(%ebp), %esi
	testl	%esi, %esi
	jle	L1424
	movl	-380(%ebp), %eax
	xorl	%edx, %edx
	.p2align 4
	.p2align 3
L1426:
	leal	2(%eax), %ebx
/APP
 # 2584 "source/build/src/polymost.cpp" 1
	movb (%eax), %cl; movb (%ebx), %ch; movb %cl, (%ebx); movb %ch, (%eax)
 # 0 "" 2
/NO_APP
	addl	$1, %edx
	addl	$4, %eax
	cmpl	%edx, %esi
	jne	L1426
	movzbl	-321(%ebp), %eax
	movb	%al, -388(%ebp)
L1424:
	movl	-352(%ebp), %edi
	movl	_r_downsize, %ecx
	movl	-320(%ebp), %eax
	movswl	_tilesiz(,%edi,4), %edx
	sarl	%cl, %eax
	cmpl	%edx, %eax
	jg	L1517
L1427:
	movl	-328(%ebp), %eax
	orb	$32, 33(%eax)
L1428:
	movl	-368(%ebp), %eax
	movl	-332(%ebp), %edi
	movl	12(%eax), %ebx
	movl	%ebx, %eax
	andl	$3, %eax
	cmpl	$1, %eax
	je	L1518
	movl	12(%edi), %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	movlps	-400(%ebp), %xmm4
	movl	-340(%ebp), %eax
	movlps	%xmm4, -312(%ebp)
	movl	%eax, 8(%esp)
	movl	-400(%ebp), %eax
	movl	-396(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	-380(%ebp), %eax
	movl	-320(%ebp), %edx
	movl	-316(%ebp), %ecx
	call	__ZL15fixtransparencyP7coltype4vec2IiES2_i
	movzbl	_glinfo+28, %eax
	andl	$1, %eax
	cmpb	$1, %al
	sbbl	%esi, %esi
	andl	$-26585, %esi
	addl	$32993, %esi
	testl	%ebx, %ebx
	jne	L1430
	cmpb	$0, _glinfo+29
	js	L1432
	movl	24(%edi), %edx
	movl	$1, %eax
	cmpl	$1, %edx
	jle	L1433
	.p2align 3
	.p2align 4
	.p2align 3
L1434:
	addl	%eax, %eax
	cmpl	%edx, %eax
	jl	L1434
L1433:
	movl	-332(%ebp), %edi
	movl	$1, %edx
	movl	28(%edi), %ecx
	cmpl	$1, %ecx
	jle	L1435
	.p2align 3
	.p2align 4
	.p2align 3
L1436:
	addl	%edx, %edx
	cmpl	%ecx, %edx
	jl	L1436
L1435:
	movl	$1, %ebx
	cmpl	-360(%ebp), %eax
	jl	L1430
	xorl	%ebx, %ebx
	cmpl	%edx, -384(%ebp)
	setg	%bl
L1430:
	movl	-328(%ebp), %eax
	movzbl	-388(%ebp), %edx
	movzbl	33(%eax), %ecx
	movzbl	-336(%ebp), %eax
	sall	$17, %edx
	movl	%ecx, %edi
	sall	$16, %eax
	sall	$8, %edi
	orl	%eax, %edx
	orl	-340(%ebp), %edx
	movl	%edi, %eax
	movl	%ecx, %edi
	sall	$13, %ecx
	andl	$4096, %eax
	sall	$15, %edi
	andl	$262144, %ecx
	orl	%eax, %edx
	movzwl	%di, %eax
	orl	%edx, %eax
	orl	%ecx, %eax
	orb	$96, %ah
	movl	%eax, 16(%esp)
	movl	-320(%ebp), %edx
	movl	%ebx, %eax
	movl	-316(%ebp), %ecx
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	-380(%ebp), %edi
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	movl	-312(%ebp), %edx
	movl	-308(%ebp), %ecx
	call	__Z13uploadtexturei4vec2IiEiP7coltypeS0_i
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movzbl	-336(%ebp), %eax
	movzwl	-388(%ebp), %edx
	subl	$4, %esp
	movb	$0, -380(%ebp)
	sall	$3, %eax
	sall	$10, %edx
	orl	%eax, %edx
	xorl	%eax, %eax
	movw	%dx, -336(%ebp)
	movw	%ax, -368(%ebp)
L1417:
	movl	-320(%ebp), %ebx
	movl	-316(%ebp), %esi
	xorl	%edi, %edi
L1400:
	movl	-376(%ebp), %eax
	movl	$1000, %edx
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	imull	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	xorps	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	imull	$1000, -372(%ebp), %edx
	cvtsi2ssl	%ebx, %xmm1
	cvtsi2ssl	%esi, %xmm0
	addl	%edx, %eax
	movl	%eax, -372(%ebp)
	movl	-348(%ebp), %eax
	testl	%eax, %eax
	jle	L1437
	movss	LC78, %xmm2
	mulss	%xmm2, %xmm1
	mulss	%xmm2, %xmm0
L1438:
	movl	-332(%ebp), %eax
	movss	%xmm1, 16(%eax)
	movss	%xmm0, 20(%eax)
	cmpb	$0, -380(%ebp)
	jne	L1439
	movl	-328(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$2, %eax
	cmpb	$1, %al
	movl	-340(%ebp), %eax
	sbbl	%edx, %edx
	orl	$5, %edx
	call	__ZL21polymost_setuptextureii
	movl	-320(%ebp), %ebx
L1439:
	movl	_r_downsize, %ecx
	movl	%ebx, %esi
	sarl	%cl, %esi
	movl	%esi, -376(%ebp)
	movl	%esi, %edx
	movl	-352(%ebp), %esi
	movswl	_tilesiz(,%esi,4), %eax
	cmpl	%eax, %edx
	jle	L1441
	movl	-316(%ebp), %eax
	movswl	_tilesiz+2(,%esi,4), %edx
	sarl	%cl, %eax
	cmpl	%edx, %eax
	jg	L1442
L1441:
	movl	-328(%ebp), %eax
	orb	$32, 33(%eax)
L1442:
	movl	-332(%ebp), %edx
	movzwl	-352(%ebp), %eax
	movl	-348(%ebp), %esi
	movw	%ax, 32(%edx)
	movzwl	-356(%ebp), %eax
	movw	%ax, 36(%edx)
	movl	-340(%ebp), %eax
	notl	%eax
	movl	%eax, %edx
	sall	$7, %eax
	sall	$8, %edx
	andl	%eax, %edx
	movl	-340(%ebp), %eax
	andw	$256, %dx
	sarl	$2, %eax
	andl	$1, %eax
	orw	-336(%ebp), %ax
	orl	%edx, %eax
	xorl	%edx, %edx
	testl	%esi, %esi
	movl	-328(%ebp), %esi
	setg	%dl
	sall	$2, %edx
	orl	%edx, %eax
	movzbl	33(%esi), %edx
	sall	$5, %edx
	andl	$64, %edx
	orl	%edx, %eax
	movl	-332(%ebp), %edx
	orl	$2, %eax
	orw	-368(%ebp), %ax
	movw	%ax, 34(%edx)
	movzbl	-348(%ebp), %eax
	movl	%esi, 8(%edx)
	movl	%edx, %esi
	movb	%al, 40(%edx)
	movl	-320(%ebp), %eax
	movl	-316(%ebp), %edx
	movl	%eax, 24(%esi)
	movl	%edx, 28(%esi)
	testl	%edi, %edi
	jne	L1443
	testb	$64, _glinfo+29
	je	L1443
	movl	_glusetexcache, %eax
	testl	%eax, %eax
	je	L1443
	movl	-328(%ebp), %esi
	movzbl	33(%esi), %edx
	testb	$1, %dl
	jne	L1443
	movl	_glusetexcompr, %eax
	cmpl	$2, %eax
	je	L1444
	testl	%eax, %eax
	je	L1443
	testb	$32, %dl
	jne	L1443
L1444:
	movl	-360(%ebp), %esi
	cmpl	$1, %esi
	jle	L1445
	leal	-1(%esi), %eax
	movl	$1, %edi
	testl	%eax, %esi
	jne	L1446
L1445:
	movl	-384(%ebp), %eax
	xorl	%edi, %edi
	cmpl	$1, %eax
	jle	L1446
	movl	%eax, %edi
	leal	-1(%eax), %eax
	testl	%eax, %edi
	setne	%al
	movzbl	%al, %eax
	movl	%eax, %edi
L1446:
	andl	$48, %edx
	movl	$0, %eax
	cmove	-376(%ebp), %ebx
	cmovne	%eax, %ecx
	movl	-316(%ebp), %eax
	movl	%ebx, -288(%ebp)
	sarl	%cl, %eax
	testb	%dl, %dl
	movl	%ecx, -276(%ebp)
	setne	%dl
	movl	%eax, -284(%ebp)
	movzbl	-392(%ebp), %eax
	movzbl	%dl, %edx
	addl	%eax, %eax
	sall	$3, %edx
	orl	%eax, %edx
	leal	-272(%ebp), %eax
	orl	%edi, %edx
	movl	%edx, -280(%ebp)
	leal	-292(%ebp), %edx
	call	_texcache_writetex_fromdriver
	movl	_gloadtile_willprint, %eax
	testl	%eax, %eax
	je	L1448
	leal	-300(%ebp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	$1000, %eax
	imull	-296(%ebp)
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	%eax, %edx
	imull	$1000, -300(%ebp), %eax
	addl	%edx, %eax
	subl	-372(%ebp), %eax
	cmpl	$9, %eax
	jg	L1519
L1449:
	movl	$0, _gloadtile_willprint
	xorl	%eax, %eax
	jmp	L1382
L1448:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L1382
	movl	-344(%ebp), %eax
	movl	$LC80, 12(%esp)
	movl	$2680, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC25, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	.p2align 4
	.p2align 3
L1443:
	movl	_gloadtile_willprint, %eax
	testl	%eax, %eax
	jne	L1520
L1382:
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
L1383:
	.cfi_restore_state
	movl	-328(%ebp), %esi
	movl	4(%esi), %esi
	movl	%esi, -344(%ebp)
	testl	%esi, %esi
	jne	L1385
	jmp	L1384
	.p2align 4,,10
	.p2align 3
L1437:
	movl	-352(%ebp), %ecx
	xorps	%xmm2, %xmm2
	movswl	_tilesiz(,%ecx,4), %eax
	cvtsi2ssl	%eax, %xmm2
	movswl	_tilesiz+2(,%ecx,4), %eax
	divss	%xmm2, %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	divss	%xmm2, %xmm0
	jmp	L1438
	.p2align 4,,10
	.p2align 3
L1520:
	leal	-300(%ebp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	$1000, %eax
	imull	-296(%ebp)
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	%eax, %edx
	imull	$1000, -300(%ebp), %eax
	addl	%edx, %eax
	subl	-372(%ebp), %eax
	cmpl	$9, %eax
	jg	L1521
L1451:
	xorl	%eax, %eax
L1524:
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
L1517:
	.cfi_restore_state
	movl	-316(%ebp), %eax
	movswl	_tilesiz+2(,%edi,4), %edx
	sarl	%cl, %eax
	cmpl	%edx, %eax
	jg	L1428
	jmp	L1427
	.p2align 4,,10
	.p2align 3
L1513:
	leal	-300(%ebp), %eax
	leal	-312(%ebp), %ecx
	movl	$0, -312(%ebp)
	movl	$0, -308(%ebp)
	leal	-320(%ebp), %edx
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__ZL26gloadtile_mdloadskin_checkPciP4vec2IiES2_Pi.part.0.lto_priv.0
	movb	%al, -380(%ebp)
	testb	%al, %al
	je	L1384
	movl	-316(%ebp), %edi
	movl	-320(%ebp), %ebx
	movl	-312(%ebp), %eax
	imull	%edi, %ebx
	movl	%eax, -360(%ebp)
	movl	-308(%ebp), %eax
	movl	%eax, -384(%ebp)
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -388(%ebp)
	testl	%eax, %eax
	je	L1401
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	-300(%ebp), %ecx
	movl	-320(%ebp), %ebx
	movl	-316(%ebp), %eax
	testl	%ecx, %ecx
	je	L1522
	imull	%eax, %ebx
	movl	_kpzbuf, %eax
	addl	$24, %eax
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-388(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcpy
L1404:
	movl	-368(%ebp), %eax
	movl	$2, _gloadtile_willprint
	movl	12(%eax), %ebx
	movl	%ebx, %eax
	andl	$3, %eax
	cmpl	$1, %eax
	je	L1523
	movl	-332(%ebp), %eax
	movl	12(%eax), %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	testl	%ebx, %ebx
	jne	L1414
	movl	-332(%ebp), %eax
	movl	-360(%ebp), %edi
	cmpl	%edi, 24(%eax)
	jne	L1454
	movl	-384(%ebp), %edi
	cmpl	%edi, 28(%eax)
	jne	L1454
L1416:
	movl	-388(%ebp), %edi
	xorl	%ecx, %ecx
	movl	%edi, 8(%esp)
	movl	-320(%ebp), %eax
	movl	-316(%ebp), %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	movl	%edx, 4(%esp)
	xorl	%edx, %edx
	call	__Z20uploadtextureindexedi4vec2IiES0_i
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	$512, %eax
	subl	$4, %esp
	movw	%ax, -368(%ebp)
	movl	$1032, %eax
	movw	%ax, -336(%ebp)
	movb	$1, -392(%ebp)
	jmp	L1417
	.p2align 4,,10
	.p2align 3
L1514:
	movzbl	-280(%ebp), %eax
	movl	-288(%ebp), %ebx
	movl	$0, -384(%ebp)
	movl	-284(%ebp), %esi
	movb	$0, -380(%ebp)
	shrb	%al
	movl	%ebx, -320(%ebp)
	movl	%eax, %ecx
	andl	$1, %eax
	movl	%esi, -316(%ebp)
	sall	$3, %eax
	andl	$1, %ecx
	orb	$4, %ah
	movb	%cl, -392(%ebp)
	movw	%ax, -336(%ebp)
	xorl	%eax, %eax
	movw	%ax, -368(%ebp)
	jmp	L1400
	.p2align 4,,10
	.p2align 3
L1521:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L1451
	cmpl	$2, _gloadtile_willprint
	movl	$LC75, %edx
	cmove	-344(%ebp), %edx
	movl	%eax, 36(%esp)
	movl	%edx, 32(%esp)
	movzwl	-356(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-340(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-364(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-352(%ebp), %eax
	movl	$LC81, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2688, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	xorl	%eax, %eax
	jmp	L1524
	.p2align 4,,10
	.p2align 3
L1516:
	movl	-360(%ebp), %edi
	movl	-380(%ebp), %esi
	movl	%edi, %edx
	imull	%eax, %edx
	leal	(%esi,%edx,4), %ecx
	movl	-384(%ebp), %edx
	movl	%esi, 4(%esp)
	movl	%ecx, (%esp)
	subl	%eax, %edx
	imull	%edi, %edx
	sall	$2, %edx
	movl	%edx, 8(%esp)
	call	_memcpy
	jmp	L1418
	.p2align 4,,10
	.p2align 3
L1518:
	leal	12(%edi), %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glGenTextures
	movl	12(%edi), %eax
	subl	$8, %esp
	call	__Z19buildgl_bindTexturejj.constprop.0
	movlps	-400(%ebp), %xmm5
	movl	-340(%ebp), %eax
	movlps	%xmm5, -312(%ebp)
	movl	%eax, 8(%esp)
	movl	-400(%ebp), %eax
	movl	-396(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	-380(%ebp), %eax
	movl	-320(%ebp), %edx
	movl	-316(%ebp), %ecx
	call	__ZL15fixtransparencyP7coltype4vec2IiES2_i
	movzbl	_glinfo+28, %eax
	andl	$1, %eax
	cmpb	$1, %al
	sbbl	%esi, %esi
	andl	$-26585, %esi
	addl	$32993, %esi
	jmp	L1430
	.p2align 4,,10
	.p2align 3
L1522:
	sall	$2, %ebx
	imull	%ebx, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%eax, %edi
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -392(%ebp)
	testl	%eax, %eax
	je	L1405
	movl	%edi, 8(%esp)
	movl	%eax, %edi
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	-316(%ebp), %eax
	movl	%edi, %ecx
	movl	%esi, %edx
	movl	%eax, 8(%esp)
	movl	-320(%ebp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	movl	_kpzbuf, %eax
	call	_kprender
	testl	%eax, %eax
	jne	L1525
	movl	$16384, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL15colmatchresults.lto_priv.0, (%esp)
	call	_memset
	movl	-316(%ebp), %edx
	movl	$0, __ZL18numcolmatchresults.lto_priv.0
	testl	%edx, %edx
	jle	L1408
	movss	LC77, %xmm0
	movl	-328(%ebp), %eax
	movss	20(%eax), %xmm1
	movl	$255, %eax
	mulss	%xmm0, %xmm1
	subss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %edi
	cmpl	%eax, %edi
	cmovg	%eax, %edi
	xorl	%eax, %eax
	testl	%edi, %edi
	cmovns	%edi, %eax
	xorl	%edx, %edx
	movl	%eax, -336(%ebp)
	.p2align 4
	.p2align 3
L1412:
	movl	-320(%ebp), %eax
	testl	%eax, %eax
	jle	L1409
	imull	%edx, %eax
	movl	-392(%ebp), %edi
	movl	%edx, -400(%ebp)
	xorl	%ebx, %ebx
	leal	(%edi,%eax,4), %esi
	movl	-388(%ebp), %eax
	leal	(%eax,%edx), %edi
	jmp	L1411
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1410:
	movl	-316(%ebp), %edx
	imull	%ebx, %edx
	addl	$1, %ebx
	movb	%al, (%edi,%edx)
	cmpl	-320(%ebp), %ebx
	jge	L1526
L1411:
	movzbl	3(%esi,%ebx,4), %edx
	movl	$-1, %eax
	cmpl	%edx, -336(%ebp)
	jg	L1410
	movzbl	(%esi,%ebx,4), %ecx
	movzbl	1(%esi,%ebx,4), %edx
	movzbl	2(%esi,%ebx,4), %eax
	movl	$0, 4(%esp)
	movl	$254, (%esp)
	call	_paletteGetClosestColorWithBlacklist
	jmp	L1410
	.p2align 4,,10
	.p2align 3
L1526:
	movl	-400(%ebp), %edx
L1409:
	addl	$1, %edx
	cmpl	-316(%ebp), %edx
	jl	L1412
L1408:
	movl	-392(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L1404
	.p2align 4,,10
	.p2align 3
L1523:
	movl	-332(%ebp), %edi
	movl	$1, (%esp)
	leal	12(%edi), %eax
	movl	%eax, 4(%esp)
	call	*_glad_glGenTextures
	movl	12(%edi), %eax
	subl	$8, %esp
	call	__Z19buildgl_bindTexturejj.constprop.0
L1414:
	movl	-340(%ebp), %eax
	movl	$-1, %edx
	call	__ZL21polymost_setuptextureii
	jmp	L1416
	.p2align 4,,10
	.p2align 3
L1454:
	movl	$1, %ebx
	jmp	L1416
	.p2align 4,,10
	.p2align 3
L1512:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1387
L1389:
	movl	$-2, %eax
	jmp	L1382
	.p2align 4,,10
	.p2align 3
L1432:
	movl	-320(%ebp), %eax
	movl	-316(%ebp), %edx
	jmp	L1435
L1387:
	movl	-344(%ebp), %eax
	movl	$LC76, 12(%esp)
	movl	$2509, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC25, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1389
L1401:
	movl	%edi, %eax
	call	__Z13handle_memerri
L1525:
	movl	-388(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-392(%ebp), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L1384
L1405:
	movl	%ebx, %eax
	call	__Z13handle_memerri
L1519:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L1449
	cmpl	$2, _gloadtile_willprint
	movl	$LC75, %edx
	cmove	-344(%ebp), %edx
	movl	%eax, 36(%esp)
	movl	%edx, 32(%esp)
	movzwl	-356(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-340(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-364(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-352(%ebp), %eax
	movl	$LC79, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2675, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1449
	.cfi_endproc
LFE96:
	.p2align 4
	.globl	__Z27polymost_setupdetailtextureiii
	.def	__Z27polymost_setupdetailtextureiii;	.scl	2;	.type	32;	.endef
__Z27polymost_setupdetailtextureiii:
LFB105:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%ecx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	cmpl	_gl+4, %eax
	je	L1528
	movl	%eax, _gl+4
	movl	%eax, (%esp)
	call	*_glad_glActiveTexture
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
L1528:
	movl	%esi, %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	testb	$8, _glinfo+29
	je	L1529
	movl	_r_usesamplerobjects, %eax
	testl	%eax, %eax
	jne	L1535
L1529:
	movl	$10497, 8(%esp)
	movl	$10242, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	$10497, 8(%esp)
	movl	$10243, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
L1530:
	movl	%ebx, (%esp)
	call	*_glad_glClientActiveTexture
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	movl	$32888, (%esp)
	call	*_glad_glEnableClientState
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
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
L1535:
	.cfi_restore_state
	leal	-33984(%ebx), %eax
	movl	%edi, %edx
	call	__Z25buildgl_bindSamplerObjectii
	jmp	L1530
	.cfi_endproc
LFE105:
	.globl	__Z25polymost_setupglowtextureiii
	.def	__Z25polymost_setupglowtextureiii;	.scl	2;	.type	32;	.endef
	.set	__Z25polymost_setupglowtextureiii,__Z27polymost_setupdetailtextureiii
	.p2align 4
	.globl	__Z29polymost_spriteIsModelOrVoxelPK11tspritetype
	.def	__Z29polymost_spriteIsModelOrVoxelPK11tspritetype;	.scl	2;	.type	32;	.endef
__Z29polymost_spriteIsModelOrVoxelPK11tspritetype:
LFB106:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, (%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movswl	30(%eax), %eax
	cmpl	$16383, %eax
	ja	L1537
	sall	$6, %eax
	addl	_spriteext, %eax
	testb	$1, 12(%eax)
	jne	L1549
L1537:
	movl	_usemodels, %eax
	movl	%esi, 4(%esp)
	.cfi_offset 6, -16
	movswl	14(%ebx), %esi
	testl	%eax, %eax
	je	L1539
	movl	%edi, 8(%esp)
	.cfi_offset 7, -12
	movswl	%si, %edi
	movl	%ebp, 12(%esp)
	.cfi_offset 5, -8
	movl	%edi, %eax
	movzbl	17(%ebx), %ecx
	leal	0(,%edi,4), %edx
	jmp	L1540
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1542:
	leal	0(,%eax,4), %edx
	leal	(%edx,%eax), %ebp
	cmpb	_tile2model+17(,%ebp,4), %cl
	je	L1555
L1540:
	addl	%eax, %edx
	movswl	_tile2model+4(,%edx,4), %eax
	cmpl	$-1, %eax
	jne	L1542
L1541:
	leal	(%edi,%edi,4), %eax
	movl	12(%esp), %ebp
	.cfi_restore 5
	movl	8(%esp), %edi
	.cfi_restore 7
	sall	$2, %eax
	cmpw	$0, _tile2model(%eax)
	js	L1539
	cmpw	$0, _tile2model+2(%eax)
	jns	L1543
	.p2align 4
	.p2align 3
L1539:
	testb	$16, 18(%ebx)
	je	L1544
	cmpl	$2047, %esi
	ja	L1544
	movl	_voxmodels(,%esi,4), %eax
	testl	%eax, %eax
	je	L1575
L1551:
	testl	%eax, %eax
	movl	4(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	(%esp), %ebx
	setne	%al
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	movzbl	%al, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1544:
	.cfi_restore_state
	movl	_usevoxels, %eax
	testl	%eax, %eax
	je	L1570
	movswl	_tiletovox(%esi,%esi), %eax
	cmpl	$2047, %eax
	jbe	L1548
	movl	4(%esp), %esi
	.cfi_restore 6
L1549:
	xorl	%eax, %eax
L1536:
	movl	(%esp), %ebx
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1555:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%eax, %edi
	jmp	L1541
	.p2align 4,,10
	.p2align 3
L1570:
	.cfi_restore 5
	.cfi_restore 7
	movl	4(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	(%esp), %ebx
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1575:
	.cfi_restore_state
	movl	_usevoxels, %ebx
	testl	%ebx, %ebx
	je	L1551
	movswl	_tiletovox(%esi,%esi), %edx
	cmpl	$2047, %edx
	ja	L1551
	movl	_voxmodels(,%edx,4), %edx
	testl	%edx, %edx
	je	L1551
L1543:
	movl	4(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	(%esp), %ebx
	movl	$1, %eax
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1548:
	.cfi_restore_state
	movl	_voxmodels(,%eax,4), %ecx
	xorl	%eax, %eax
	movl	4(%esp), %esi
	.cfi_restore 6
	testl	%ecx, %ecx
	setne	%al
	jmp	L1536
	.cfi_endproc
LFE106:
	.p2align 4
	.globl	__Z22polymost_updatePalettev
	.def	__Z22polymost_updatePalettev;	.scl	2;	.type	32;	.endef
__Z22polymost_updatePalettev:
LFB111:
	.cfi_startproc
	cmpl	$3, _rendmode
	je	L1591
	ret
	.p2align 4,,10
	.p2align 3
L1591:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	subl	$12, %esp
	.cfi_offset 7, -12
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L1578
	movl	_globalpal, %eax
	cmpl	__ZZL19polymost_setPalswapjE16lastPalswapIndex, %eax
	je	L1581
	movzwl	%ax, %edx
	movl	%eax, __ZZL19polymost_setPalswapjE16lastPalswapIndex
	xorps	%xmm0, %xmm0
	shrl	$16, %eax
	movss	LC85, %xmm3
	cvtsi2ssl	%eax, %xmm0
	xorps	%xmm1, %xmm1
	movss	LC82, %xmm4
	mulss	LC56, %xmm0
	cvtsi2ssl	%edx, %xmm1
	addss	%xmm1, %xmm0
	mulss	__ZL20polymost1PalswapSize.lto_priv.0, %xmm0
	movaps	%xmm0, %xmm2
	movaps	%xmm0, %xmm1
	andps	%xmm3, %xmm2
	ucomiss	%xmm2, %xmm4
	jbe	L1580
	cvttss2sil	%xmm0, %eax
	xorps	%xmm2, %xmm2
	andnps	%xmm0, %xmm3
	movss	LC0, %xmm4
	cvtsi2ssl	%eax, %xmm2
	movaps	%xmm2, %xmm1
	cmpnless	%xmm0, %xmm1
	andps	%xmm4, %xmm1
	subss	%xmm1, %xmm2
	orps	%xmm3, %xmm2
	movaps	%xmm2, %xmm1
L1580:
	subss	%xmm1, %xmm0
	movl	__ZL22polymost1PalswapPosLoc, %eax
	mulss	__ZL20polymost1PalswapSize.lto_priv.0+4, %xmm1
	movss	LC84, %xmm2
	movl	%eax, (%esp)
	addss	%xmm2, %xmm0
	addss	%xmm2, %xmm1
	movss	%xmm0, __ZL19polymost1PalswapPos
	movss	%xmm0, 4(%esp)
	movss	%xmm1, __ZL19polymost1PalswapPos+4
	movss	%xmm1, 8(%esp)
	call	*_glad_glUniform2f
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	subl	$12, %esp
	cmpl	%eax, _gl
	jne	L1578
	cmpl	$3, _rendmode
	je	L1581
L1583:
	xorl	%eax, %eax
L1582:
	cmpl	%eax, __ZZL17polymost_setShadeiE9lastShade
	je	L1584
	xorps	%xmm0, %xmm0
	movl	%eax, __ZZL17polymost_setShadeiE9lastShade
	cvtsi2ssl	%eax, %xmm0
	movl	__ZL17polymost1ShadeLoc, %eax
	movl	%eax, (%esp)
	movss	%xmm0, __ZL14polymost1Shade
	movss	%xmm0, 4(%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
L1584:
	movswl	_numshades, %eax
	cmpl	__ZZL17polymost_setShadeiE13lastNumShades, %eax
	je	L1578
	xorps	%xmm1, %xmm1
	movl	%eax, __ZZL17polymost_setShadeiE13lastNumShades
	movss	LC0, %xmm0
	cvtsi2ssl	%eax, %xmm1
	movl	__ZL21polymost1NumShadesLoc, %eax
	movl	%eax, (%esp)
	divss	%xmm1, %xmm0
	movss	%xmm1, 4(%esp)
	movss	%xmm1, __ZL18polymost1NumShades
	movss	%xmm0, __ZL18polymost1NumShades+4
	movss	%xmm0, 8(%esp)
	call	*_glad_glUniform2f
	subl	$12, %esp
L1578:
	movzbl	_curbasepal, %eax
	cmpl	__ZL11lastbasepal.lto_priv.0, %eax
	jne	L1592
L1576:
	movl	-4(%ebp), %edi
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L1592:
	.cfi_restore_state
	cmpl	$33986, _gl+4
	je	L1585
	movl	$33986, _gl+4
	movl	$33986, (%esp)
	call	*_glad_glActiveTexture
	movzbl	_curbasepal, %eax
	subl	$4, %esp
L1585:
	movl	__ZL17paletteTextureIDs(,%eax,4), %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	movzbl	_curbasepal, %eax
	movl	%eax, __ZL11lastbasepal.lto_priv.0
	cmpl	$33984, _gl+4
	je	L1576
	movl	$33984, _gl+4
	movl	$33984, (%esp)
	call	*_glad_glActiveTexture
	movl	-4(%ebp), %edi
	subl	$4, %esp
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L1581:
	.cfi_restore_state
	movl	_r_useindexedcolortextures, %edi
	movl	_globalshade, %eax
	testl	%edi, %edi
	je	L1583
	movl	_gltexfiltermode, %ecx
	xorl	%edx, %edx
	testl	%ecx, %ecx
	cmovne	%edx, %eax
	jmp	L1582
	.cfi_endproc
LFE111:
	.p2align 4
	.globl	__ZL23polymost_identityrotmatv.lto_priv.0
	.def	__ZL23polymost_identityrotmatv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL23polymost_identityrotmatv.lto_priv.0:
LFB115:
	.cfi_startproc
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	je	L1599
	ret
	.p2align 4,,10
	.p2align 3
L1599:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	subl	$16, %esp
	.cfi_offset 7, -12
	movl	__ZL21polymost1RotMatrixLoc.lto_priv.0, %eax
	movss	LC86, %xmm0
	movups	%xmm0, __ZL18polymost1RotMatrix.lto_priv.0
	movups	LC87, %xmm0
	movl	$__ZL18polymost1RotMatrix.lto_priv.0, 12(%esp)
	movl	$0, 8(%esp)
	movups	%xmm0, __ZL18polymost1RotMatrix.lto_priv.0+16
	movups	LC88, %xmm0
	movl	$1, 4(%esp)
	movups	%xmm0, __ZL18polymost1RotMatrix.lto_priv.0+32
	movups	LC89, %xmm0
	movl	%eax, (%esp)
	movups	%xmm0, __ZL18polymost1RotMatrix.lto_priv.0+48
	call	*_glad_glUniformMatrix4fv
	movl	-4(%ebp), %edi
	subl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE115:
	.section .rdata,"dr"
	.align 4
LC90:
	.ascii "Error 0x%X waiting for OpenGL stream buffer.\0"
	.align 4
LC91:
	.ascii "Unable to set video mode! Please ensure r_persistentStreamBuffer is disabled (= 0) and try restarting the game.\0"
	.align 4
LC92:
	.ascii "Timed out waiting for OpenGL Stream buffer. For performance, try increasing the buffer size with r_drawpolyVertsBufferLength.\0"
	.text
	.p2align 4
	.globl	__Z29polymost_startBufferedDrawingi
	.def	__Z29polymost_startBufferedDrawingi;	.scl	2;	.type	32;	.endef
__Z29polymost_startBufferedDrawingi:
LFB117:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	leal	(%eax,%eax,4), %edx
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	__ZL27drawpolyVertsSubBufferIndex, %ecx
	movl	__ZL25drawpolyVertsBufferLength.lto_priv.0, %ebx
	addl	__ZL19drawpolyVertsOffset, %edx
	leal	1(%ecx), %eax
	imull	%ebx, %eax
	cmpl	%eax, %edx
	jle	L1600
	cmpb	$0, __ZL22persistentStreamBuffer.lto_priv.0
	jne	L1631
	leal	(%ebx,%ebx,4), %eax
	movl	$35040, 12(%esp)
	sall	$2, %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$34962, (%esp)
	call	*_glad_glBufferData
	.cfi_def_cfa_offset 16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	$0, __ZL19drawpolyVertsOffset
L1600:
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1631:
	.cfi_restore_state
	movl	__ZL17drawpolyVertsSync(,%ecx,4), %eax
	testl	%eax, %eax
	je	L1603
	movl	%ecx, 20(%esp)
	movl	%eax, (%esp)
	call	*_glad_glDeleteSync
	.cfi_def_cfa_offset 28
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	movl	20(%esp), %ecx
L1603:
	movl	%ecx, 20(%esp)
	movl	$0, 4(%esp)
	movl	$37143, (%esp)
	call	*_glad_glFenceSync
	.cfi_def_cfa_offset 24
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	movl	20(%esp), %ecx
	movl	%eax, __ZL17drawpolyVertsSync(,%ecx,4)
	movl	__ZL27drawpolyVertsSubBufferIndex, %eax
	leal	1(%eax), %ecx
	movl	$1431655766, %eax
	imull	%ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	leal	(%ebx,%ebx,2), %eax
	subl	%eax, %ecx
	movl	__ZL25drawpolyVertsBufferLength.lto_priv.0, %eax
	movl	%ecx, __ZL27drawpolyVertsSubBufferIndex
	movl	%ecx, %ebx
	imull	%ecx, %eax
	movl	%eax, __ZL19drawpolyVertsOffset
	movl	__ZL17drawpolyVertsSync(,%ecx,4), %eax
	testl	%eax, %eax
	je	L1600
L1604:
	movl	$500000, 8(%esp)
	movl	$0, 12(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glClientWaitSync
	.cfi_def_cfa_offset 16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	cmpl	$37148, %eax
	je	L1600
	ja	L1605
	cmpl	$37146, %eax
	je	L1600
	cmpl	$37147, %eax
	jne	L1607
	cmpb	$0, __ZZL25polymost_waitForSubBufferjE14loggedLongWait
	je	L1632
L1607:
	movl	__ZL17drawpolyVertsSync(,%ebx,4), %eax
	jmp	L1604
	.p2align 4,,10
	.p2align 3
L1605:
	cmpl	$37149, %eax
	jne	L1607
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1633
L1608:
	movl	_upscalefactor, %edx
	movzbl	_fullscreen, %eax
	movl	$0, _r_persistentStreamBuffer
	movl	_yres, %ecx
	movb	$1, _videomodereset
	movl	%edx, 4(%esp)
	movl	_bpp, %edx
	movb	$0, __ZL12modeschecked.lto_priv.0
	movl	%edx, (%esp)
	movl	_xres, %edx
	call	_videoSetGameMode
	testl	%eax, %eax
	je	L1600
	call	__ZN6loguru24current_verbosity_cutoffEv
	cmpl	$-2, %eax
	jge	L1634
L1609:
	cmpl	$0, _g_sm_heap
	je	L1610
	call	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0
	movl	_g_sm_heap, %eax
	testl	%eax, %eax
	je	L1610
	call	__sm_allocator_destroy.part.0.lto_priv.2
L1610:
	movl	$1, (%esp)
	call	_exit
	.p2align 4,,10
	.p2align 3
L1633:
	call	*_glad_glGetError
	movl	$LC90, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3032, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1608
	.p2align 4,,10
	.p2align 3
L1632:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L1611
	movl	$LC92, 12(%esp)
	movl	$3047, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L1611:
	movb	$1, __ZZL25polymost_waitForSubBufferjE14loggedLongWait
	jmp	L1607
L1634:
	movl	$LC91, 12(%esp)
	movl	$3037, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1609
	.cfi_endproc
LFE117:
	.p2align 4
	.globl	__Z19polymost_bufferVert4vec3IfE4vec2IfE
	.def	__Z19polymost_bufferVert4vec3IfE4vec2IfE;	.scl	2;	.type	32;	.endef
__Z19polymost_bufferVert4vec3IfE4vec2IfE:
LFB121:
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
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movzbl	__ZL22persistentStreamBuffer.lto_priv.0, %eax
	movl	__ZL16drawpolyVertsCnt, %esi
	negl	%eax
	andl	__ZL19drawpolyVertsOffset, %eax
	leal	1(%esi), %edi
	addl	%esi, %eax
	movl	%edi, __ZL16drawpolyVertsCnt
	leal	(%eax,%eax,4), %esi
	movl	__ZL13drawpolyVerts, %eax
	movl	%edx, 4(%eax,%esi,4)
	movl	28(%esp), %edx
	movl	%ecx, 8(%eax,%esi,4)
	movl	32(%esp), %ecx
	movl	%ebx, (%eax,%esi,4)
	movl	%edx, 12(%eax,%esi,4)
	movl	%ecx, 16(%eax,%esi,4)
	addl	$12, %esp
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
LFE121:
	.p2align 4
	.globl	__Z30polymost_finishBufferedDrawingi
	.def	__Z30polymost_finishBufferedDrawingi;	.scl	2;	.type	32;	.endef
__Z30polymost_finishBufferedDrawingi:
LFB122:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	cmpb	$0, __ZL22persistentStreamBuffer.lto_priv.0
	jne	L1638
	movl	__ZL13drawpolyVerts, %edx
	movl	%eax, 16(%esp)
	movl	$34962, (%esp)
	movl	%edx, 12(%esp)
	movl	__ZL16drawpolyVertsCnt, %edx
	leal	(%edx,%edx,4), %edx
	sall	$2, %edx
	movl	%edx, 8(%esp)
	movl	__ZL19drawpolyVertsOffset, %edx
	leal	(%edx,%edx,4), %edx
	sall	$2, %edx
	movl	%edx, 4(%esp)
	call	*_glad_glBufferSubData
	.cfi_def_cfa_offset 8
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	movl	16(%esp), %eax
L1638:
	movl	__ZL16drawpolyVertsCnt, %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	__ZL19drawpolyVertsOffset, %edx
	movl	%edx, 4(%esp)
	call	*_glad_glDrawArrays
	.cfi_def_cfa_offset 12
	movl	__ZL16drawpolyVertsCnt, %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 24
	addl	%eax, __ZL19drawpolyVertsOffset
	movl	$0, __ZL16drawpolyVertsCnt
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE122:
.lcomm __ZL16drawpolyVertsCnt,4,4
	.globl	_glad_glFenceSync
	.bss
	.align 4
_glad_glFenceSync:
	.space 4
.lcomm __ZZL25polymost_waitForSubBufferjE14loggedLongWait,1,1
	.globl	_glad_glClientWaitSync
	.align 4
_glad_glClientWaitSync:
	.space 4
.lcomm __ZZL19polymost_setPalswapjE16lastPalswapIndex,4,4
.lcomm __ZZL17polymost_setShadeiE13lastNumShades,4,4
.lcomm __ZZL17polymost_setShadeiE9lastShade,4,4
.lcomm __ZZ36gloadtruecolortile_mdloadskin_sharedPciP4vec2IiES2_S_tiS_E8lastsize,4,4
	.globl	_hicprecaching
	.section .rdata,"dr"
	.align 4
_hicprecaching:
	.space 4
.lcomm __ZZ36gloadtruecolortile_mdloadskin_sharedPciP4vec2IiES2_S_tiS_E6lastfn,4,4
.lcomm __ZZ36gloadtruecolortile_mdloadskin_sharedPciP4vec2IiES2_S_tiS_E7lastpic,4,4
.lcomm __ZZ13gloadtile_artiiiiiP8pthtyp_tiE21fullbrightloadingpass,4,4
	.globl	__ZL17lastglpolygonmode.lto_priv.0
	.bss
	.align 4
__ZL17lastglpolygonmode.lto_priv.0:
	.space 4
	.globl	_glad_glFogfv
	.align 4
_glad_glFogfv:
	.space 4
	.globl	_glad_glFogf
	.align 4
_glad_glFogf:
	.space 4
	.globl	__ZL10fogresult2.lto_priv.0
	.align 4
__ZL10fogresult2.lto_priv.0:
	.space 4
	.globl	_fogcol
	.align 4
_fogcol:
	.space 16
	.globl	__ZL9fogresult.lto_priv.0
	.align 4
__ZL9fogresult.lto_priv.0:
	.space 4
.lcomm __ZL25defaultDrawpolyVertsArray,160,32
	.data
	.align 4
__ZL13drawpolyVerts:
	.long	__ZL25defaultDrawpolyVertsArray
	.globl	_glad_glDeleteSync
	.bss
	.align 4
_glad_glDeleteSync:
	.space 4
.lcomm __ZL17drawpolyVertsSync,12,4
	.globl	_glad_glIsSync
	.align 4
_glad_glIsSync:
	.space 4
.lcomm __ZL27drawpolyVertsSubBufferIndex,4,4
.lcomm __ZL19drawpolyVertsOffset,4,4
	.globl	__ZL22persistentStreamBuffer.lto_priv.0
__ZL22persistentStreamBuffer.lto_priv.0:
	.space 1
	.globl	__ZL25drawpolyVertsBufferLength.lto_priv.0
	.align 4
__ZL25drawpolyVertsBufferLength.lto_priv.0:
	.space 4
	.globl	__ZL18polymost1RotMatrix.lto_priv.0
	.data
	.align 32
__ZL18polymost1RotMatrix.lto_priv.0:
	.long	1065353216
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.align 4
__ZL22polymost1NPOTEmulation:
	.long	0
	.long	1065353216
	.long	0
	.long	1065353216
	.align 4
__ZL18polymost1VisFactor:
	.long	1124073472
	.align 4
__ZL18polymost1NumShades:
	.long	1115684864
	.long	1015021568
.lcomm __ZL14polymost1Shade,4,4
.lcomm __ZL19polymost1PalswapPos,8,4
.lcomm __ZL22polymost1HalfTexelSize,8,4
	.align 4
__ZL23polymost1TexturePosSize:
	.long	0
	.long	0
	.long	1065353216
	.long	1065353216
	.globl	__ZL27polymost1ColorCorrectionLoc.lto_priv.0
	.align 4
__ZL27polymost1ColorCorrectionLoc.lto_priv.0:
	.long	-1
	.globl	__ZL21polymost1RotMatrixLoc.lto_priv.0
	.align 4
__ZL21polymost1RotMatrixLoc.lto_priv.0:
	.long	-1
	.align 4
__ZL25polymost1NPOTEmulationLoc:
	.long	-1
	.align 4
__ZL21polymost1VisFactorLoc:
	.long	-1
	.align 4
__ZL21polymost1NumShadesLoc:
	.long	-1
	.align 4
__ZL17polymost1ShadeLoc:
	.long	-1
	.align 4
__ZL17polymost1ClampLoc:
	.long	-1
	.align 4
__ZL22polymost1PalswapPosLoc:
	.long	-1
	.align 4
__ZL25polymost1HalfTexelSizeLoc:
	.long	-1
	.align 4
__ZL26polymost1TexturePosSizeLoc:
	.long	-1
.lcomm __ZL17paletteTextureIDs,1024,32
	.globl	__ZL12polymosttext.lto_priv.0
	.bss
	.align 4
__ZL12polymosttext.lto_priv.0:
	.space 4
	.data
	.align 4
__ZL11gltexcacnum:
	.long	-1
	.globl	_fogtable
	.bss
	.align 32
_fogtable:
	.space 4096
	.globl	_glad_glCheckFramebufferStatusEXT
	.align 4
_glad_glCheckFramebufferStatusEXT:
	.space 4
	.globl	_glad_glReadBuffer
	.align 4
_glad_glReadBuffer:
	.space 4
	.globl	_glad_glDrawBuffer
	.align 4
_glad_glDrawBuffer:
	.space 4
	.globl	_glad_glFramebufferTexture2DEXT
	.align 4
_glad_glFramebufferTexture2DEXT:
	.space 4
	.globl	_glad_glGenFramebuffersEXT
	.align 4
_glad_glGenFramebuffersEXT:
	.space 4
.lcomm __ZZ25polymer_initrendertargetsE6ocount,4,4
	.globl	_glad_glDeleteFramebuffersEXT
	.align 4
_glad_glDeleteFramebuffersEXT:
	.space 4
	.set	LC0,LC55+8
	.section .rdata,"dr"
	.align 16
LC2:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 4
LC3:
	.long	1031798784
	.align 4
LC4:
	.long	-1115684864
	.align 4
LC5:
	.long	1043595264
	.align 4
LC6:
	.long	981668463
	.align 4
LC7:
	.long	1036831949
	.align 4
LC10:
	.long	981467136
	.align 4
LC11:
	.long	1073741824
	.align 4
LC12:
	.long	1090519040
	.align 4
LC13:
	.long	1098907648
	.align 4
LC15:
	.long	813694976
	.align 4
LC16:
	.long	897581056
	.align 8
LC17:
	.long	1413754136
	.long	1073291771
	.align 4
LC18:
	.long	1132462080
	.align 4
LC53:
	.long	-1048576000
	.align 4
LC54:
	.long	880803840
	.align 16
LC55:
	.long	0
	.long	0
	.long	1065353216
	.long	1065353216
	.align 4
LC56:
	.long	1199570944
	.align 4
LC58:
	.long	998277249
	.align 4
LC61:
	.long	1063675494
	.align 4
LC62:
	.long	1080033280
	.align 4
LC63:
	.long	1059648963
	.align 4
LC64:
	.long	1120403456
	.align 4
LC65:
	.long	-51331646
	.align 4
LC66:
	.long	1216348160
	.align 4
LC67:
	.long	1056964608
	.align 4
LC69:
	.long	1913809311
	.align 4
LC72:
	.long	1140850688
	.align 4
LC73:
	.long	1082130432
	.align 4
LC77:
	.long	1132396544
	.align 4
LC78:
	.long	1015021568
	.align 4
LC82:
	.long	1258291200
	.align 4
LC84:
	.long	964689920
	.align 4
LC85:
	.long	2147483647
	.align 16
LC86:
	.long	1065353216
	.long	0
	.long	0
	.long	0
	.align 16
LC87:
	.long	0
	.long	1065353216
	.long	0
	.long	0
	.align 16
LC88:
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.align 16
LC89:
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.def	___udivdi3;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_memmove;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	@getangle@8;	.scl	2;	.type	32;	.endef
	.def	__Z22buildgl_setPerspectiveffff;	.scl	2;	.type	32;	.endef
	.def	_polymer_extractfrustum.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	__Z19buildgl_bindTexturejj;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_lrintf;	.scl	2;	.type	32;	.endef
	.def	_getzsofslopeptr;	.scl	2;	.type	32;	.endef
	.def	_tileLoad.isra.0;	.scl	2;	.type	32;	.endef
	.def	_atan2f;	.scl	2;	.type	32;	.endef
	.def	_sincosf;	.scl	2;	.type	32;	.endef
	.def	_polymer_getbuildmaterial.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_memcmp;	.scl	2;	.type	32;	.endef
	.def	_animateoffs;	.scl	2;	.type	32;	.endef
	.def	__ZL16tessMeshMakeEdgeP8TESSmesh.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL17tessMeshSplitEdgeP8TESSmeshP12TESShalfEdge.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z13tessTesselateP14TESStesselatoriiiiPKf.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_polymer_computeplane.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z18buildgl_bindBufferjj;	.scl	2;	.type	32;	.endef
	.def	__Z18buildgl_bindBufferjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZL9heapAllocPvj.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z17createBucketAllocP9TESSallocjj;	.scl	2;	.type	32;	.endef
	.def	_polymer_updatewall.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_wallvisible;	.scl	2;	.type	32;	.endef
	.def	_getsectordist;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.1;	.scl	2;	.type	32;	.endef
	.def	_calc_sector_reachability;	.scl	2;	.type	32;	.endef
	.def	_clearskins;	.scl	2;	.type	32;	.endef
	.def	__Z26buildgl_outputDebugMessagehPKcz.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z28buildgl_resetStateAccountingv;	.scl	2;	.type	32;	.endef
	.def	__Z19buildgl_bindTexturejj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_inthash_delete;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	_md_freevbos;	.scl	2;	.type	32;	.endef
	.def	_filelength;	.scl	2;	.type	32;	.endef
	.def	__ZN3mio10basic_mmapILNS_11access_modeE1EcE4syncILS1_1EEENSt9enable_ifIXeqT_LS1_1EEvE4typeERSt10error_code.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN3mio10basic_mmapILNS_11access_modeE1EcE5unmapEv;	.scl	2;	.type	32;	.endef
	.def	__Z19buildgl_setViewportiiii;	.scl	2;	.type	32;	.endef
	.def	__ZL18get_projhack_ratiov.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	_texcache_calcid.isra.0;	.scl	2;	.type	32;	.endef
	.def	_texcache_enabled;	.scl	2;	.type	32;	.endef
	.def	_texcache_readtexheader.part.0;	.scl	2;	.type	32;	.endef
	.def	_texcache_loadtile;	.scl	2;	.type	32;	.endef
	.def	_hictinting_applypixcolor;	.scl	2;	.type	32;	.endef
	.def	_texcache_writetex_fromdriver;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_kpzbufload;	.scl	2;	.type	32;	.endef
	.def	__ZL26gloadtile_mdloadskin_checkPciP4vec2IiES2_Pi.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	_kprender;	.scl	2;	.type	32;	.endef
	.def	_kopen4load.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z20kfilelength_internaliPKhPiS1_.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_kclose;	.scl	2;	.type	32;	.endef
	.def	_enet_gettime.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	_paletteGetClosestColorWithBlacklist;	.scl	2;	.type	32;	.endef
	.def	__Z25buildgl_bindSamplerObjectii;	.scl	2;	.type	32;	.endef
	.def	_videoSetGameMode;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru24current_verbosity_cutoffEv;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0;	.scl	2;	.type	32;	.endef
	.def	__sm_allocator_destroy.part.0.lto_priv.2;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
