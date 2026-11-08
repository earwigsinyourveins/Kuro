	.file	"<artificial>"
	.text
	.p2align 4
	.def	_clipshape_idx_for_sprite;	.scl	3;	.type	32;	.endef
_clipshape_idx_for_sprite:
LFB0:
	.cfi_startproc
	movl	%eax, %ecx
	testl	%edx, %edx
	js	L15
	leal	(%edx,%edx,2), %eax
	movswl	__ZL8clipinfo+6(,%eax,4), %eax
L3:
	testl	%eax, %eax
	js	L11
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	_sector, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	__ZL5sectq, %ebx
	movzwl	12(%ecx), %edi
	jmp	L5
	.p2align 6
	.p2align 4,,10
	.p2align 3
L16:
	movswl	6(%ecx), %eax
	testl	%eax, %eax
	js	L1
L5:
	leal	(%eax,%eax,2), %edx
	leal	__ZL8clipinfo(,%edx,4), %ecx
	movswl	__ZL8clipinfo(,%edx,4), %edx
	movswl	(%ebx,%edx,2), %edx
	leal	(%edx,%edx,4), %edx
	movswl	36(%esi,%edx,8), %edx
	xorl	%edi, %edx
	andl	$32, %edx
	jne	L16
L1:
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
L15:
	movswl	14(%eax), %eax
	movswl	__ZL8pictoidx(%eax,%eax), %eax
	jmp	L3
L11:
	ret
	.cfi_endproc
LFE0:
	.p2align 4
	.def	_clipinsideboxline;	.scl	3;	.type	32;	.endef
_clipinsideboxline:
LFB1:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%ebp, 12(%esp)
	.cfi_offset 5, -8
	movl	%edx, %ebp
	movl	32(%esp), %edx
	movl	%ebx, (%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%esi, 4(%esp)
	movl	%edx, %eax
	.cfi_offset 6, -16
	movl	%ecx, %esi
	movl	24(%esp), %ecx
	subl	%ebx, %eax
	leal	(%eax,%esi), %ebx
	addl	%ecx, %eax
	testl	%eax, %ebx
	js	L20
	cmpl	%eax, %ebx
	movl	%edi, 8(%esp)
	.cfi_offset 7, -12
	leal	(%edx,%edx), %edi
	cmovle	%ebx, %eax
	cmpl	%eax, %edi
	jle	L33
	movl	%edx, %eax
	subl	%ebp, %eax
	movl	20(%esp), %ebp
	addl	%eax, %ebp
	addl	28(%esp), %eax
	testl	%eax, %ebp
	js	L33
	cmpl	%eax, %ebp
	cmovle	%ebp, %eax
	cmpl	%eax, %edi
	jle	L33
	subl	%esi, %ecx
	movl	%edx, %esi
	movl	28(%esp), %eax
	subl	%ebx, %edx
	subl	20(%esp), %eax
	subl	%ebp, %esi
	imull	%ecx, %esi
	imull	%eax, %edx
	cmpl	%edx, %esi
	jge	L34
	movl	%edi, %edx
	movl	4(%esp), %esi
	subl	%ebp, %edx
	negl	%ebp
	testl	%ecx, %ecx
	cmovg	%edx, %ebp
	movl	%ebx, %edx
	subl	%ebx, %edi
	movl	(%esp), %ebx
	negl	%edx
	imull	%ecx, %ebp
	testl	%eax, %eax
	cmovg	%edx, %edi
	imull	%eax, %edi
	xorl	%eax, %eax
	cmpl	%edi, %ebp
	movl	8(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	12(%esp), %ebp
	setge	%al
	addl	$16, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	addl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L33:
	.cfi_restore_state
	movl	8(%esp), %edi
	.cfi_restore 7
L20:
	xorl	%eax, %eax
L17:
	movl	(%esp), %ebx
	movl	4(%esp), %esi
	movl	12(%esp), %ebp
	addl	$16, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L34:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%edi, %edx
	movl	%ebp, %esi
	negl	%esi
	subl	%ebp, %edx
	testl	%ecx, %ecx
	cmovg	%esi, %edx
	subl	%ebx, %edi
	negl	%ebx
	imull	%ecx, %edx
	testl	%eax, %eax
	cmovg	%edi, %ebx
	movl	8(%esp), %edi
	.cfi_restore 7
	imull	%eax, %ebx
	xorl	%eax, %eax
	cmpl	%ebx, %edx
	setl	%al
	jmp	L17
	.cfi_endproc
LFE1:
	.p2align 4
	.def	__Z14clipsprite_tryPK13uspritetypev7iiii;	.scl	3;	.type	32;	.endef
__Z14clipsprite_tryPK13uspritetypev7iiii:
LFB2:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movswl	14(%eax), %eax
	movl	%edx, 8(%esp)
	movswl	__ZL8pictoidx(%eax,%eax), %eax
	testl	%eax, %eax
	js	L36
	movl	%esi, 20(%esp)
	movl	__ZL11clipmapinfo+4, %edx
	movl	%edi, 24(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	__ZL5sectq, %esi
	movl	%ebp, 28(%esp)
	.cfi_offset 5, -8
	movzwl	12(%ebx), %ebp
	movw	%bp, 12(%esp)
	jmp	L37
	.p2align 6
	.p2align 4,,10
	.p2align 3
L39:
	movswl	__ZL8clipinfo+6(%eax), %eax
	testl	%eax, %eax
	js	L51
L37:
	leal	(%eax,%eax,2), %edi
	leal	0(,%edi,4), %eax
	movswl	__ZL8clipinfo(,%edi,4), %edi
	movswl	(%esi,%edi,2), %edi
	leal	(%edi,%edi,4), %edi
	movswl	36(%edx,%edi,8), %edi
	xorl	%ebp, %edi
	andl	$32, %edi
	jne	L39
	movl	__ZL8clipinfo+8(%eax), %ebp
	movswl	__ZL8clipinfo(%eax), %eax
	movzwl	12(%esp), %edi
	movl	%ecx, 12(%esp)
	movswl	(%esi,%eax,2), %eax
	andl	$48, %edi
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	movzbl	29(%eax), %esi
	cmpw	$32, %di
	je	L52
	movl	%esi, 4(%esp)
	movzbl	20(%ebx), %eax
	imull	%ebp, %eax
	movl	%eax, (%esp)
	call	_divideu32.lto_priv.0
L41:
	movl	8(%esp), %ecx
	subl	$1024, %eax
	movl	(%ebx), %edx
	subl	%eax, %ecx
	cmpl	%ecx, %edx
	jl	L42
	movl	12(%esp), %esi
	movl	4(%ebx), %ecx
	subl	%eax, %esi
	cmpl	%esi, %ecx
	jl	L42
	movl	36(%esp), %esi
	addl	%eax, %esi
	cmpl	%esi, %edx
	jg	L42
	addl	40(%esp), %eax
	cmpl	%eax, %ecx
	jg	L42
	movl	__ZL13clipspritenum, %eax
	cmpl	$4095, %eax
	jg	L42
	subl	_sprite, %ebx
	leal	1(%eax), %ecx
	sarl	$2, %ebx
	movl	%ecx, __ZL13clipspritenum
	imull	$-1171354717, %ebx, %edx
	movw	%dx, __ZL14clipspritelist(%eax,%eax)
L42:
	movl	20(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	24(%esp), %edi
	.cfi_restore 7
	movl	$1, %eax
	movl	28(%esp), %ebp
	.cfi_restore 5
	movl	16(%esp), %ebx
	addl	$32, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L51:
	.cfi_restore_state
	movl	20(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %edi
	.cfi_restore 7
	movl	28(%esp), %ebp
	.cfi_restore 5
L36:
	movl	16(%esp), %ebx
	xorl	%eax, %eax
	addl	$32, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L52:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movzbl	30(%eax), %eax
	movl	%eax, 4(%esp)
	movzbl	21(%ebx), %eax
	imull	%ebp, %eax
	movl	%eax, (%esp)
	call	_divideu32.lto_priv.0
	movl	%esi, 4(%esp)
	movl	%eax, %edi
	movzbl	20(%ebx), %eax
	imull	%ebp, %eax
	movl	%eax, (%esp)
	call	_divideu32.lto_priv.0
	cmpl	%eax, %edi
	cmovnb	%edi, %eax
	jmp	L41
	.cfi_endproc
LFE2:
	.p2align 4
	.def	__ZL11addcliplineiiiisi;	.scl	3;	.type	32;	.endef
__ZL11addcliplineiiiisi:
LFB3:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	%edi, 8(%esp)
	.cfi_offset 7, -8
	movl	%edx, %edi
	movzwl	__ZL7clipnum, %edx
	cmpw	$4095, %dx
	jg	L57
	movl	%ebx, (%esp)
	.cfi_offset 3, -16
	movl	%ecx, %ebx
	movswl	%dx, %ecx
	movl	%esi, 4(%esp)
	.cfi_offset 6, -12
	movl	%eax, %esi
	movl	%ecx, %eax
	sall	$4, %eax
	movl	%ebx, __ZL6clipit+8(%eax)
	movl	16(%esp), %ebx
	movl	%esi, __ZL6clipit(%eax)
	movl	%ebx, __ZL6clipit+12(%eax)
	movl	%edx, %ebx
	movl	%edi, __ZL6clipit+4(%eax)
	movzwl	20(%esp), %eax
	andl	$7, %ebx
	movw	%ax, __ZL13clipobjectval(%ecx,%ecx)
	movl	%edx, %ecx
	movzbl	24(%esp), %eax
	addl	$1, %edx
	sarw	$3, %cx
	movw	%dx, __ZL7clipnum
	movswl	%cx, %ecx
	negl	%eax
	xorb	__ZL10clipignore(%ecx), %al
	andb	__ZL8pow2char.lto_priv.4(%ebx), %al
	xorb	__ZL10clipignore(%ecx), %al
	movb	%al, __ZL10clipignore(%ecx)
	movl	(%esp), %ebx
	.cfi_restore 3
	movl	4(%esp), %esi
	.cfi_restore 6
	movl	8(%esp), %edi
	addl	$12, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L57:
	.cfi_def_cfa_offset 16
	.cfi_offset 7, -8
	orl	$2, __ZL15clipmove_warned
	movl	8(%esp), %edi
	addl	$12, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE3:
	.p2align 4
	.def	__ZL20get_floorspr_clipyou4vec2IiES0_S0_S0_;	.scl	3;	.type	32;	.endef
__ZL20get_floorspr_clipyou4vec2IiES0_S0_S0_:
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
	movl	%eax, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 36
	movl	40(%esp), %esi
	movl	48(%esp), %ecx
	movl	%eax, 12(%esp)
	movl	44(%esp), %eax
	movl	36(%esp), %ebp
	movl	%esi, %edi
	movl	%ecx, (%esp)
	movl	56(%esp), %ecx
	movl	%eax, 8(%esp)
	movl	52(%esp), %eax
	movl	%eax, 4(%esp)
	xorl	%eax, %eax
	xorl	%edx, %edi
	js	L75
L59:
	movl	(%esp), %ebx
	xorl	%esi, %ebx
	js	L76
L63:
	movl	(%esp), %ebx
	movl	%ecx, %edi
	xorl	%ebx, %edi
	js	L77
L67:
	movl	%ecx, %esi
	xorl	%edx, %esi
	js	L78
L58:
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
L75:
	.cfi_restore_state
	movl	%ebx, %eax
	movl	%ebx, %edi
	notl	%eax
	shrl	$31, %eax
	xorl	%ebp, %ebx
	jns	L59
	movl	%edi, %ebx
	movl	%ebp, %eax
	imull	%esi, %ebx
	imull	%edx, %eax
	cmpl	%eax, %ebx
	setl	%al
	cmpl	%edx, %esi
	setg	%bl
	xorl	%ebx, %eax
	movl	(%esp), %ebx
	movzbl	%al, %eax
	xorl	%esi, %ebx
	jns	L63
	.p2align 4
	.p2align 3
L76:
	movl	8(%esp), %ebx
	movl	%ebx, %edi
	xorl	%ebp, %edi
	js	L79
	movl	%eax, %esi
	movl	(%esp), %ebx
	movl	%ecx, %edi
	xorl	$1, %esi
	testl	%ebp, %ebp
	cmovns	%esi, %eax
	xorl	%ebx, %edi
	jns	L67
L77:
	movl	8(%esp), %edi
	movl	%edi, %esi
	xorl	4(%esp), %esi
	js	L80
	movl	8(%esp), %esi
	movl	%eax, %ebx
	xorl	$1, %ebx
	testl	%esi, %esi
	movl	%ecx, %esi
	cmovns	%ebx, %eax
	xorl	%edx, %esi
	jns	L58
L78:
	movl	12(%esp), %esi
	movl	%esi, %edi
	xorl	4(%esp), %edi
	js	L81
	movl	4(%esp), %ecx
	movl	%eax, %edx
	xorl	$1, %edx
	testl	%ecx, %ecx
	cmovns	%edx, %eax
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
L79:
	.cfi_restore_state
	imull	%esi, %ebx
	imull	(%esp), %ebp
	cmpl	%ebx, %ebp
	setl	%bl
	cmpl	%esi, (%esp)
	movl	%ebx, %edi
	setg	%bl
	xorl	%ebx, %edi
	movl	%edi, %ebx
	movzbl	%bl, %edi
	xorl	%edi, %eax
	jmp	L63
	.p2align 4,,10
	.p2align 3
L80:
	movl	4(%esp), %esi
	imull	%ecx, %edi
	movl	%ebx, %ebp
	imull	%ebx, %esi
	cmpl	%esi, %edi
	setl	%bl
	cmpl	%ebp, %ecx
	movl	%ebx, %esi
	setg	%bl
	xorl	%esi, %ebx
	movzbl	%bl, %ebx
	xorl	%ebx, %eax
	jmp	L67
	.p2align 4,,10
	.p2align 3
L81:
	movl	4(%esp), %ebx
	imull	%ecx, %esi
	imull	%edx, %ebx
	cmpl	%esi, %ebx
	setl	%bl
	cmpl	%edx, %ecx
	setl	%dl
	addl	$16, %esp
	.cfi_def_cfa_offset 20
	xorl	%edx, %ebx
	movzbl	%bl, %ebx
	xorl	%ebx, %eax
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
	.def	__Z20clipsprite_initindexiPK13uspritetypev7PiPK4vec3IiE;	.scl	3;	.type	32;	.endef
__Z20clipsprite_initindexiPK13uspritetypev7PiPK4vec3IiE:
LFB6:
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
	leal	(%edi,%edi), %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %ebx
	subl	$104, %esp
	.cfi_def_cfa_offset 124
	movl	8(%edx), %eax
	movl	%ecx, 28(%esp)
	movl	%eax, 68(%esp)
	leal	(%esi,%edi), %eax
	movswl	__ZL8clipinfo(,%eax,4), %edx
	movl	__ZL5sectq, %eax
	movswl	(%eax,%edx,2), %eax
	movl	%ebx, %edx
	movzwl	28(%ebx), %ebx
	leal	(%eax,%eax,4), %eax
	movw	%bx, 32(%esp)
	sall	$3, %eax
	movl	%eax, 16(%esp)
	addl	_sector, %eax
	movzbl	29(%eax), %ecx
	movzwl	38(%eax), %ebx
	movzwl	36(%eax), %ebp
	movl	%ecx, 20(%esp)
	movl	%edx, %ecx
	movl	%ecx, 48(%esp)
	movzwl	12(%ecx), %ecx
	andl	$2, %ebp
	movw	%bx, 36(%esp)
	movzbl	30(%eax), %ebx
	movzbl	20(%edx), %eax
	movw	%cx, 24(%esp)
	xorl	%edx, %edx
	andl	$48, %ecx
	shldl	$22, %eax, %edx
	sall	$22, %eax
	cmpw	$32, %cx
	movl	20(%esp), %ecx
	movl	%ecx, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	je	L83
	call	_tabledivide64.lto_priv.5
	movl	%ebx, 8(%esp)
	movl	48(%esp), %ebx
	xorl	%edx, %edx
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movzbl	21(%ebx), %eax
	shldl	$22, %eax, %edx
	sall	$22, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.5
	movzwl	12(%ebx), %ecx
	movl	$1, %edx
	movl	$1, 64(%esp)
	movl	%eax, 72(%esp)
	movl	%ecx, %eax
	shrw	%ax
	andl	$2, %eax
	subl	%eax, %edx
	movl	20(%esp), %eax
	movl	%edx, 60(%esp)
	movl	%eax, 24(%esp)
L84:
	testw	%bp, %bp
	jne	L85
	movl	60(%esp), %ebx
	imull	64(%esp), %ebx
	cmpl	$-1, %ebx
	je	L86
L85:
	movl	$1, %ebx
L87:
	movl	_sector, %eax
	movl	16(%esp), %edx
	movswl	36(%eax,%edx), %eax
	xorl	%ecx, %eax
	testb	$-128, %al
	je	L88
	movl	48(%esp), %edx
	shrw	$6, %cx
	andl	$2, %ecx
	movswl	14(%edx), %eax
	movzbl	21(%edx), %edx
	movswl	_tilesiz+2(,%eax,4), %eax
	imull	%edx, %eax
	leal	-1(%ecx), %edx
	addl	%eax, %eax
	imull	%edx, %eax
	addl	%eax, 68(%esp)
L88:
	movl	$0, __ZL11clipsectnum
	movl	28(%esp), %eax
	movl	$0, (%eax)
	leal	(%esi,%edi), %eax
	sall	$2, %eax
	movswl	__ZL8clipinfo(%eax), %edi
	movswl	__ZL8clipinfo+2(%eax), %eax
	movl	%edi, 40(%esp)
	movl	%edi, %edx
	movl	__ZL5sectq, %edi
	movl	%edi, 80(%esp)
	cmpw	%ax, %dx
	jg	L89
	movl	%eax, 76(%esp)
	testw	%bp, %bp
	je	L90
	movl	$0, 88(%esp)
	movl	48(%esp), %edi
	movl	%ebx, 32(%esp)
	.p2align 4
	.p2align 3
L97:
	movl	40(%esp), %esi
	movl	80(%esp), %eax
	movswl	(%eax,%esi,2), %eax
	movl	_sector, %esi
	movw	%ax, 28(%esp)
	movl	%eax, 16(%esp)
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %ecx
	movl	$-858993459, %eax
	leal	22(%ecx), %edx
	subl	_sector, %edx
	movswl	(%ecx), %esi
	mull	%edx
	movswl	2(%ecx), %ebp
	movl	72(%esp), %eax
	addl	%esi, %ebp
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	22(%ecx), %edx
/APP
 # 724 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $22, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	leal	8(%ecx), %edx
	movl	$-858993459, %eax
	addl	68(%esp), %ebx
	subl	_sector, %edx
	mull	%edx
	movl	$-858993459, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	32(%ecx), %edx
	subl	_sector, %edx
	mull	%edx
	movl	%ebx, 8(%ecx)
	movl	72(%esp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	32(%ecx), %edx
/APP
 # 725 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $22, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	leal	4(%ecx), %edx
	movl	$-858993459, %eax
	addl	68(%esp), %ebx
	subl	_sector, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	%ebx, 4(%ecx)
	cmpl	%esi, %ebp
	jle	L91
	.p2align 4
	.p2align 3
L92:
	movl	%esi, %ecx
	movl	_wall, %ebx
	sall	$5, %ecx
	movl	%ecx, %eax
	addl	%ecx, %ebx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	20(%esp), %eax
	movl	16(%ebx), %edx
/APP
 # 731 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $22, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, (%ebx)
	movl	_wall, %eax
	addl	%ecx, %eax
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	movl	26(%eax), %edx
	movl	24(%esp), %eax
/APP
 # 732 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $22, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 4(%ebx)
	addl	$1, %esi
	movl	(%edi), %edx
	addl	%edx, (%ebx)
	addl	4(%edi), %eax
	movl	%eax, 4(%ebx)
	cmpl	%ebp, %esi
	jne	L92
L91:
	movl	124(%esp), %eax
	movl	16(%esp), %ecx
	movl	4(%eax), %edx
	movl	(%eax), %eax
	call	_inside
	cmpl	$1, %eax
	je	L118
L94:
	addl	$1, 40(%esp)
	movl	40(%esp), %eax
	cmpl	%eax, 76(%esp)
	jge	L97
	movl	76(%esp), %eax
	movl	32(%esp), %ebx
	addl	$1, %eax
	movl	%eax, 40(%esp)
L106:
	movl	88(%esp), %eax
	testl	%eax, %eax
	je	L89
	addl	$104, %esp
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
L118:
	.cfi_restore_state
	cmpl	$511, 88(%esp)
	jle	L95
	orl	$1, __ZL15clipmove_warned
	jmp	L94
L95:
	movzwl	28(%esp), %ebx
	movl	16(%esp), %eax
	movl	88(%esp), %esi
	movl	%ebx, %edx
	sarl	$3, %eax
	andl	$7, %edx
	movw	%bx, _clipsectorlist(%esi,%esi)
	movzbl	__ZL8pow2char.lto_priv.4(%edx), %edx
	orb	%dl, __ZL13clipsectormap(%eax)
	leal	1(%esi), %eax
	movl	%eax, __ZL11clipsectnum
	movl	%eax, 88(%esp)
	jmp	L94
L83:
	call	_tabledivide64.lto_priv.5
	movl	%ebx, 8(%esp)
	movl	48(%esp), %ebx
	xorl	%edx, %edx
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movzbl	21(%ebx), %eax
	shldl	$22, %eax, %edx
	sall	$22, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.5
	movzwl	12(%ebx), %ecx
	movl	$1, %edx
	movl	%eax, 24(%esp)
	movl	%edx, %ebx
	movl	%ecx, %eax
	shrw	%ax
	andl	$2, %eax
	subl	%eax, %ebx
	movl	%ecx, %eax
	shrw	$2, %ax
	movl	%ebx, 60(%esp)
	andl	$2, %eax
	subl	%eax, %edx
	movl	20(%esp), %eax
	movl	%edx, 64(%esp)
	movl	%eax, 72(%esp)
	jmp	L84
L89:
	movl	40(%esp), %edi
	movl	80(%esp), %eax
	movl	$1, __ZL11clipsectnum
	movswl	-2(%eax,%edi,2), %eax
	movl	%eax, %edx
	sarl	$3, %eax
	movl	%edx, %ecx
	movw	%dx, _clipsectorlist
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.4(%ecx), %ecx
	orb	%cl, __ZL13clipsectormap(%eax)
	addl	$104, %esp
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
L90:
	.cfi_restore_state
	movzwl	32(%esp), %eax
	subw	36(%esp), %ax
	movl	$0, 88(%esp)
	andw	$2047, %ax
	movl	%ebx, 100(%esp)
	movl	124(%esp), %ebx
	movw	%ax, 94(%esp)
	addw	$2560, %ax
	movw	%ax, 96(%esp)
	.p2align 4
	.p2align 3
L105:
	movl	40(%esp), %edi
	movl	80(%esp), %eax
	movl	_sector, %ebp
	movswl	(%eax,%edi,2), %eax
	movw	%ax, 92(%esp)
	movl	%eax, 84(%esp)
	leal	(%eax,%eax,4), %eax
	leal	0(%ebp,%eax,8), %ecx
	movswl	(%ecx), %eax
	leal	22(%ecx), %edx
	subl	%ebp, %edx
	movl	%eax, %edi
	movswl	2(%ecx), %eax
	movl	%edi, 16(%esp)
	leal	(%eax,%edi), %esi
	movl	%edx, %eax
	movl	%esi, 44(%esp)
	movl	$-858993459, %esi
	mull	%esi
	movl	72(%esp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	22(%ecx), %edx
/APP
 # 724 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $22, %edx, %eax
 # 0 "" 2
/NO_APP
	leal	8(%ecx), %edx
	movl	%eax, %edi
	addl	68(%esp), %edi
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	32(%ecx), %edx
	subl	%ebp, %edx
	movl	%edi, 8(%ecx)
	movl	%edx, %eax
	mull	%esi
	movl	72(%esp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	32(%ecx), %edx
/APP
 # 725 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $22, %edx, %eax
 # 0 "" 2
/NO_APP
	leal	4(%ecx), %edx
	movl	%eax, %edi
	addl	68(%esp), %edi
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%esi
	movl	44(%esp), %esi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	%edi, 4(%ecx)
	cmpl	%esi, 16(%esp)
	jge	L99
	movzwl	94(%esp), %eax
	movl	%ebx, 124(%esp)
	movl	%eax, 56(%esp)
	movl	96(%esp), %eax
	andl	$2047, %eax
	movl	%eax, 52(%esp)
	.p2align 4
	.p2align 3
L100:
	movl	16(%esp), %ecx
	movl	_wall, %ebp
	sall	$5, %ecx
	movl	%ecx, %eax
	addl	%ecx, %ebp
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	20(%esp), %eax
	movl	16(%ebp), %edx
/APP
 # 731 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $22, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 0(%ebp)
	movl	_wall, %eax
	addl	%ecx, %eax
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	movl	26(%eax), %edx
	movl	24(%esp), %eax
/APP
 # 732 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $22, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	64(%esp), %esi
	movl	60(%esp), %ebx
	imull	0(%ebp), %ebx
	imull	%eax, %esi
	movl	52(%esp), %eax
	movl	%ebx, 0(%ebp)
	movl	%esi, 4(%ebp)
	movswl	_sintable(%eax,%eax), %edx
	movl	%esi, %ecx
	negl	%esi
	movl	56(%esp), %eax
	movl	%ebx, 28(%esp)
	movl	%edx, 32(%esp)
	movswl	_sintable(%eax,%eax), %edi
	movl	%ebx, %eax
/APP
 # 1408 "source/build/include/build.h" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	32(%esp), %edx
	movl	28(%esp), %esi
	movl	%eax, 36(%esp)
	movl	%ecx, %eax
/APP
 # 1408 "source/build/include/build.h" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	36(%esp), %edi
	movl	48(%esp), %esi
	movl	%eax, 4(%ebp)
	addl	$1, 16(%esp)
	movl	16(%esp), %ecx
	movl	%edi, 0(%ebp)
	addl	(%esi), %edi
	movl	%edi, 0(%ebp)
	addl	4(%esi), %eax
	movl	%eax, 4(%ebp)
	cmpl	%ecx, 44(%esp)
	jne	L100
	movl	124(%esp), %ebx
L99:
	movl	4(%ebx), %edx
	movl	(%ebx), %eax
	movl	84(%esp), %ecx
	call	_inside
	cmpl	$1, %eax
	je	L119
L102:
	addl	$1, 40(%esp)
	movl	40(%esp), %eax
	cmpl	%eax, 76(%esp)
	jge	L105
	movl	76(%esp), %eax
	movl	100(%esp), %ebx
	addl	$1, %eax
	movl	%eax, 40(%esp)
	jmp	L106
L119:
	movl	88(%esp), %edi
	cmpl	$511, %edi
	jg	L103
	movzwl	92(%esp), %esi
	movl	84(%esp), %eax
	movl	%esi, %edx
	sarl	$3, %eax
	movw	%si, _clipsectorlist(%edi,%edi)
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.4(%edx), %edx
	orb	%dl, __ZL13clipsectormap(%eax)
	leal	1(%edi), %eax
	movl	%eax, __ZL11clipsectnum
	movl	%eax, 88(%esp)
	jmp	L102
L103:
	orl	$1, __ZL15clipmove_warned
	jmp	L102
L86:
	movl	__ZL11loadwallinv, %eax
	movl	%eax, _wall
	jmp	L87
	.cfi_endproc
LFE6:
	.p2align 4
	.def	__Z24getceilzofslope_19950829iii;	.scl	3;	.type	32;	.endef
__Z24getceilzofslope_19950829iii:
LFB10:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	leal	(%eax,%eax,4), %eax
	movl	%esi, 32(%esp)
	.cfi_offset 6, -16
	movl	%edx, %esi
	movl	_sector, %edx
	movl	%ebp, 40(%esp)
	.cfi_offset 5, -8
	leal	0(,%eax,8), %ebp
	addl	%ebp, %edx
	movl	%ecx, 16(%esp)
	testb	$2, 12(%edx)
	jne	L132
L121:
	movl	4(%edx), %eax
	movl	32(%esp), %esi
	movl	40(%esp), %ebp
	addl	$44, %esp
	.cfi_remember_state
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L132:
	.cfi_restore_state
	movl	%edi, 36(%esp)
	movl	_wall, %eax
	movl	%ebx, 28(%esp)
	.cfi_offset 7, -12
	.cfi_offset 3, -20
	movswl	(%edx), %ecx
	sall	$5, %ecx
	movl	%ecx, 20(%esp)
	addl	%eax, %ecx
	movswl	8(%ecx), %ebx
	sall	$5, %ebx
	addl	%ebx, %eax
	movl	(%eax), %ebx
	movl	4(%eax), %eax
	subl	4(%ecx), %eax
	subl	(%ecx), %ebx
	movl	%eax, %edi
	movl	%eax, 24(%esp)
	movl	%ebx, %eax
	movl	%edi, %ecx
	imull	%ebx, %eax
	imull	%edi, %ecx
	addl	%ecx, %eax
/APP
 # 12528 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	xorl	%ecx, %ecx
	cmpl	$2047, %eax
	jbe	L122
	.p2align 4
	.p2align 4
	.p2align 3
L123:
	shrl	$2, %eax
	addl	$1, %ecx
	cmpl	$2047, %eax
	ja	L123
L122:
	movzwl	_sqrtable_old(%eax,%eax), %eax
	sall	%cl, %eax
	shrl	$10, %eax
	jne	L124
	movl	28(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	36(%esp), %edi
	.cfi_restore 7
	jmp	L121
	.p2align 4,,10
	.p2align 3
L124:
	.cfi_restore_state
	movl	%eax, 8(%esp)
	movl	%esi, %edi
	movl	$0, 12(%esp)
	movswl	18(%edx), %eax
	cltd
	shldl	$15, %eax, %edx
	sall	$15, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.5
	movl	24(%esp), %ecx
	movl	20(%esp), %edx
	addl	_wall, %edx
	movl	16(%esp), %esi
	imull	%eax, %ecx
	subl	4(%edx), %esi
	subl	(%edx), %edi
	imull	%ebx, %eax
	movl	%esi, %edx
	negl	%ecx
	movl	%ecx, %esi
/APP
 # 798 "source/build/src/clip.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $23, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_sector, %edx
	movl	28(%esp), %ebx
	.cfi_restore 3
	movl	36(%esp), %edi
	.cfi_restore 7
	movl	32(%esp), %esi
	addl	4(%edx,%ebp), %eax
	movl	40(%esp), %ebp
	addl	$44, %esp
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE10:
	.p2align 4
	.def	__Z24getflorzofslope_19950829iii;	.scl	3;	.type	32;	.endef
__Z24getflorzofslope_19950829iii:
LFB12:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	leal	(%eax,%eax,4), %eax
	movl	%esi, 32(%esp)
	.cfi_offset 6, -16
	movl	%edx, %esi
	movl	_sector, %edx
	movl	%ebp, 40(%esp)
	.cfi_offset 5, -8
	leal	0(,%eax,8), %ebp
	addl	%ebp, %edx
	movl	%ecx, 16(%esp)
	testb	$2, 14(%edx)
	jne	L145
L134:
	movl	8(%edx), %eax
	movl	32(%esp), %esi
	movl	40(%esp), %ebp
	addl	$44, %esp
	.cfi_remember_state
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L145:
	.cfi_restore_state
	movl	%edi, 36(%esp)
	movl	_wall, %eax
	movl	%ebx, 28(%esp)
	.cfi_offset 7, -12
	.cfi_offset 3, -20
	movswl	(%edx), %ecx
	sall	$5, %ecx
	movl	%ecx, 20(%esp)
	addl	%eax, %ecx
	movswl	8(%ecx), %ebx
	sall	$5, %ebx
	addl	%ebx, %eax
	movl	(%eax), %ebx
	movl	4(%eax), %eax
	subl	4(%ecx), %eax
	subl	(%ecx), %ebx
	movl	%eax, %edi
	movl	%eax, 24(%esp)
	movl	%ebx, %eax
	movl	%edi, %ecx
	imull	%ebx, %eax
	imull	%edi, %ecx
	addl	%ecx, %eax
/APP
 # 12528 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	xorl	%ecx, %ecx
	cmpl	$2047, %eax
	jbe	L135
	.p2align 4
	.p2align 4
	.p2align 3
L136:
	shrl	$2, %eax
	addl	$1, %ecx
	cmpl	$2047, %eax
	ja	L136
L135:
	movzwl	_sqrtable_old(%eax,%eax), %eax
	sall	%cl, %eax
	shrl	$10, %eax
	jne	L137
	movl	28(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	36(%esp), %edi
	.cfi_restore 7
	jmp	L134
	.p2align 4,,10
	.p2align 3
L137:
	.cfi_restore_state
	movl	%eax, 8(%esp)
	movl	%esi, %edi
	movl	$0, 12(%esp)
	movswl	26(%edx), %eax
	cltd
	shldl	$15, %eax, %edx
	sall	$15, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.5
	movl	24(%esp), %ecx
	movl	20(%esp), %edx
	addl	_wall, %edx
	movl	16(%esp), %esi
	imull	%eax, %ecx
	subl	4(%edx), %esi
	subl	(%edx), %edi
	imull	%ebx, %eax
	movl	%esi, %edx
	negl	%ecx
	movl	%ecx, %esi
/APP
 # 810 "source/build/src/clip.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $23, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_sector, %edx
	movl	28(%esp), %ebx
	.cfi_restore 3
	movl	36(%esp), %edi
	.cfi_restore 7
	movl	32(%esp), %esi
	addl	8(%edx,%ebp), %eax
	movl	40(%esp), %ebp
	addl	$44, %esp
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE12:
	.p2align 4
	.def	__ZL14cliptestsectoriiii4vec2IiEi;	.scl	3;	.type	32;	.endef
__ZL14cliptestsectoriiii4vec2IiEi:
LFB13:
	.cfi_startproc
	subl	$56, %esp
	.cfi_def_cfa_offset 60
	movl	%eax, 8(%esp)
	movl	%edx, %eax
	movl	%ecx, 20(%esp)
	leal	(%edx,%edx,4), %ecx
	movl	_sector, %edx
	movl	%esi, 44(%esp)
	.cfi_offset 6, -16
	movl	68(%esp), %esi
	movl	%edi, 48(%esp)
	.cfi_offset 7, -12
	movl	64(%esp), %edi
	movl	%ebx, 40(%esp)
	.cfi_offset 3, -20
	leal	(%edx,%ecx,8), %ebx
	movl	%edi, 12(%esp)
	movzwl	14(%ebx), %edx
	movl	4(%ebx), %edi
	orw	12(%ebx), %dx
	movl	%esi, 16(%esp)
	movl	8(%ebx), %esi
	andl	$2, %edx
	movl	%edi, 32(%esp)
	movl	%esi, 36(%esp)
	jne	L165
L147:
	cmpl	%esi, %edi
	jge	L152
	movl	8(%esp), %eax
	movl	_sector, %edx
	movl	%ebp, 52(%esp)
	.cfi_offset 5, -8
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %ecx
	movzwl	14(%eax), %ebp
	orw	12(%eax), %bp
	andl	$2, %ebp
	movl	%edx, 28(%esp)
	movl	%ecx, 24(%esp)
	jne	L166
L150:
	movl	%esi, %eax
	subl	%edi, %eax
/APP
 # 849 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ebp
	movl	%edx, %eax
	subl	%ecx, %eax
/APP
 # 851 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, %ebp
	jl	L167
L151:
	testb	$1, 14(%ebx)
	jne	L153
	movl	20(%esp), %eax
	movl	%esi, %ebp
	subl	$1, %eax
	subl	%eax, %ebp
	cmpl	72(%esp), %ebp
	jle	L168
L153:
	testb	$1, 12(%ebx)
	jne	L155
	movl	60(%esp), %eax
	leal	-1(%edi,%eax), %eax
	cmpl	72(%esp), %eax
	jl	L155
	addl	$256, %ecx
	xorl	%eax, %eax
	movl	52(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	movl	40(%esp), %ebx
	cmpl	%edi, %ecx
	movl	44(%esp), %esi
	movl	48(%esp), %edi
	setl	%al
	addl	$56, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L167:
	.cfi_restore_state
	movl	60(%esp), %eax
	addl	$511, %eax
	cmpl	%ebp, %eax
	jl	L151
L164:
	movl	52(%esp), %ebp
	.cfi_restore 5
L152:
	movl	40(%esp), %ebx
	movl	44(%esp), %esi
	movl	$1, %eax
	movl	48(%esp), %edi
	addl	$56, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L166:
	.cfi_def_cfa_offset 60
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	leal	28(%esp), %eax
	movl	16(%esp), %ecx
	movl	12(%esp), %edx
	movl	%eax, 4(%esp)
	leal	24(%esp), %eax
	movl	%eax, (%esp)
	movl	8(%esp), %eax
	call	_yax_getzsofslope
	movl	28(%esp), %edx
	movl	24(%esp), %ecx
	jmp	L150
	.p2align 4,,10
	.p2align 3
L155:
	movl	52(%esp), %ebp
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
L165:
	.cfi_def_cfa_offset 60
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	leal	36(%esp), %edx
	movl	16(%esp), %ecx
	movl	%edx, 4(%esp)
	leal	32(%esp), %edx
	movl	%edx, (%esp)
	movl	12(%esp), %edx
	call	_yax_getzsofslope
	movl	36(%esp), %esi
	movl	32(%esp), %edi
	jmp	L147
	.p2align 4,,10
	.p2align 3
L168:
	.cfi_offset 5, -8
	subl	$256, %edx
	cmpl	%esi, %edx
	jg	L164
	jmp	L153
	.cfi_endproc
LFE13:
	.p2align 4
	.def	__ZL17hitscan_trysectorPK4vec3IiEPK13usectortypev7P9hitdata_tiiitsiiPKi;	.scl	3;	.type	32;	.endef
__ZL17hitscan_trysectorPK4vec3IiEPK13usectortypev7P9hitdata_tiiitsiiPKi:
LFB16:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	%ebp, 48(%esp)
	movl	%eax, 16(%esp)
	movl	%edx, 28(%esp)
	movl	%ecx, 24(%esp)
	testb	$2, 68(%esp)
	.cfi_offset 5, -8
	je	L170
	movl	%ebx, 36(%esp)
	movl	_wall, %eax
	movl	%esi, 40(%esp)
	movl	%edi, 44(%esp)
	movswl	(%edx), %edx
	sall	$5, %edx
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	leal	(%eax,%edx), %ebx
	movswl	8(%ebx), %edx
	movl	%ebx, 20(%esp)
	sall	$5, %edx
	addl	%edx, %eax
	movl	(%eax), %edi
	movl	4(%eax), %esi
	subl	(%ebx), %edi
	subl	4(%ebx), %esi
	movl	%edi, %ecx
	movl	%esi, %edx
	imull	%edi, %ecx
	imull	%esi, %edx
	leal	(%ecx,%edx), %eax
/APP
 # 2581 "source/build/src/clip.cpp" 1
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
	movl	$1, %ebp
	testl	%eax, %eax
	jne	L203
L201:
	movl	%ebp, %eax
	movl	36(%esp), %ebx
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
L170:
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -8
	movl	80(%esp), %edx
	imull	64(%esp), %edx
	testl	%edx, %edx
	jle	L173
	movl	16(%esp), %eax
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -20
	movl	80(%esp), %ebx
	movl	8(%eax), %ecx
	movl	80(%esp), %eax
	imull	76(%esp), %eax
	imull	%ecx, %ebx
	cmpl	%eax, %ebx
	jg	L197
	movl	76(%esp), %ebx
	subl	%ecx, %ebx
	movl	%ebx, %eax
/APP
 # 2604 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	sarl	%eax
	cmpl	%eax, %edx
	jg	L204
L197:
	movl	36(%esp), %ebx
	.cfi_restore 3
L173:
	xorl	%ebp, %ebp
L169:
	movl	%ebp, %eax
	movl	48(%esp), %ebp
	addl	$52, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L203:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movswl	72(%esp), %eax
	cltd
	movl	%eax, %ecx
	movl	%edx, %ebx
	sall	$15, %ecx
	shldl	$15, %eax, %ebx
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	call	_tabledivide64.lto_priv.5
	movl	%edi, %ecx
	movl	60(%esp), %edx
	movl	56(%esp), %edi
	imull	%eax, %esi
	imull	%eax, %ecx
	negl	%esi
	movl	%esi, 32(%esp)
	movl	%ecx, %eax
/APP
 # 2588 "source/build/src/clip.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $15, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	64(%esp), %ebp
	sall	$8, %ebp
	subl	%eax, %ebp
	je	L201
	movl	20(%esp), %edi
	movl	16(%esp), %eax
	movl	32(%esp), %esi
	movl	4(%eax), %edx
	movl	(%eax), %eax
	subl	(%edi), %eax
	subl	4(%edi), %edx
	movl	%eax, %edi
	movl	%ecx, %eax
/APP
 # 2591 "source/build/src/clip.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $15, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	16(%esp), %ebx
	movl	76(%esp), %edx
	subl	8(%ebx), %edx
	sall	$8, %edx
	addl	%eax, %edx
	movl	%ebp, %eax
	xorl	%edx, %eax
	js	L202
	movl	%edx, %eax
/APP
 # 2592 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	%ebp, %eax
/APP
 # 2592 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	sarl	%ecx
	cmpl	%eax, %ecx
	jl	L205
L202:
	movl	36(%esp), %ebx
	.cfi_restore 3
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	44(%esp), %edi
	.cfi_restore 7
	jmp	L173
	.p2align 4,,10
	.p2align 3
L204:
	.cfi_offset 3, -20
	movl	64(%esp), %eax
	movl	%esi, 40(%esp)
	movl	%edi, 44(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%ebx, %eax
	cltd
	sall	$30, %eax
	shldl	$30, %ebx, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.5
	movl	%eax, %ecx
	movl	56(%esp), %eax
	movl	%ecx, %edx
/APP
 # 2607 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	16(%esp), %esi
	movl	%ecx, %edx
	movl	(%esi), %ebx
	leal	(%eax,%ebx), %edi
	movl	60(%esp), %eax
/APP
 # 2608 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	4(%esi), %ecx
	leal	(%eax,%ecx), %esi
L174:
	cmpl	$2147483647, %edi
	je	L202
	movl	%edi, %eax
	subl	%ebx, %eax
/APP
 # 2612 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ebp
	movl	%esi, %eax
	subl	%ecx, %eax
/APP
 # 2612 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%eax, %ebp
	movl	24(%esp), %eax
	movl	(%eax), %eax
	subl	%ebx, %eax
/APP
 # 2612 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	24(%esp), %eax
	movl	4(%eax), %eax
	movl	%eax, 16(%esp)
	subl	%ecx, %eax
/APP
 # 2612 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%eax, %ebx
	cmpl	%ebx, %ebp
	jge	L202
	movl	84(%esp), %ebp
	testl	%ebp, %ebp
	je	L206
	movl	84(%esp), %eax
	movl	4(%eax), %eax
	movl	%eax, 20(%esp)
	movl	84(%esp), %eax
	movl	8(%eax), %ebp
	testl	%ebp, %ebp
	je	L207
	movl	84(%esp), %eax
	movl	(%eax), %eax
	leal	(%eax,%eax,2), %eax
	sall	$2, %eax
	movswl	__ZL8clipinfo(%eax), %ebx
	movzwl	__ZL8clipinfo+2(%eax), %ebp
	cmpw	%bp, %bx
	jge	L202
	movswl	%bp, %eax
	movl	__ZL5sectq, %ebp
	movl	%eax, 16(%esp)
	jmp	L181
	.p2align 4,,10
	.p2align 3
L180:
	addl	$1, %ebx
	cmpl	%ebx, 16(%esp)
	je	L202
L181:
	movswl	0(%ebp,%ebx,2), %ecx
	movl	%esi, %edx
	movl	%edi, %eax
	call	_inside
	cmpl	$1, %eax
	jne	L180
	movl	20(%esp), %ecx
	movl	%ecx, %eax
	subl	_sprite, %eax
	movzwl	24(%ecx), %edx
	sarl	$2, %eax
	movl	24(%esp), %ecx
	imull	$-1171354717, %eax, %eax
	movw	%dx, 16(%ecx)
	movl	$-1, %edx
	movw	%dx, 14(%ecx)
	movw	%ax, 12(%ecx)
	movl	76(%esp), %eax
	movl	%edi, (%ecx)
	movl	%esi, 4(%ecx)
	movl	%eax, 8(%ecx)
	movl	36(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	44(%esp), %edi
	.cfi_restore 7
	jmp	L173
	.p2align 4,,10
	.p2align 3
L205:
	.cfi_restore_state
	movl	%edx, %eax
	movl	%ebp, 8(%esp)
	sarl	$31, %ebp
	cltd
	movl	%ebp, 12(%esp)
	shldl	$30, %eax, %edx
	sall	$30, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.5
	movl	%eax, %ebp
	movl	56(%esp), %eax
	movl	%ebp, %edx
/APP
 # 2595 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	16(%esp), %esi
	movl	%ebp, %edx
	movl	(%esi), %ebx
	leal	(%eax,%ebx), %edi
	movl	60(%esp), %eax
/APP
 # 2596 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	4(%esi), %ecx
	movl	%ebp, %edx
	leal	(%eax,%ecx), %esi
	movl	64(%esp), %eax
/APP
 # 2597 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	16(%esp), %edx
	addl	8(%edx), %eax
	movl	%eax, 76(%esp)
	jmp	L174
L207:
	movl	28(%esp), %ecx
	subl	_sector, %ecx
	movl	%esi, %edx
	movl	%edi, %eax
	sarl	$3, %ecx
	imull	$-858993459, %ecx, %ecx
	movswl	%cx, %ecx
	call	_inside
	cmpl	$1, %eax
	jne	L201
	movl	20(%esp), %ecx
	movl	$-1, %ebx
	movl	%ecx, %eax
	subl	_sprite, %eax
	movzwl	24(%ecx), %edx
	sarl	$2, %eax
	movl	24(%esp), %ecx
	imull	$-1171354717, %eax, %eax
	movw	%dx, 16(%ecx)
	movw	%bx, 14(%ecx)
	movw	%ax, 12(%ecx)
	movl	76(%esp), %eax
	movl	%edi, (%ecx)
	movl	%esi, 4(%ecx)
	movl	%eax, 8(%ecx)
	movl	36(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	44(%esp), %edi
	.cfi_restore 7
	jmp	L169
L206:
	.cfi_restore_state
	movl	28(%esp), %ebx
	subl	_sector, %ebx
	movl	%esi, %edx
	movl	%edi, %eax
	sarl	$3, %ebx
	imull	$-858993459, %ebx, %ebx
	movswl	%bx, %ecx
	call	_inside
	cmpl	$1, %eax
	jne	L202
	movl	28(%esp), %eax
	leal	12(%eax), %edx
	addl	$14, %eax
	cmpl	$-1, 80(%esp)
	cmove	%edx, %eax
	movzwl	(%eax), %eax
	andw	$3072, %ax
	cmpw	$1024, %ax
	je	L183
	movl	24(%esp), %eax
	movl	%edi, (%eax)
	movl	76(%esp), %edi
	movw	%bx, 16(%eax)
	movl	$-1, 12(%eax)
	movl	%esi, 4(%eax)
	movl	%edi, 8(%eax)
	movl	36(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	44(%esp), %edi
	.cfi_restore 7
	jmp	L173
L183:
	.cfi_restore_state
	movl	36(%esp), %ebx
	.cfi_restore 3
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	$2, %ebp
	movl	44(%esp), %edi
	.cfi_restore 7
	jmp	L169
	.cfi_endproc
LFE16:
	.p2align 4
	.def	__ZL16clipupdatesector4vec2IiEPsi;	.scl	3;	.type	32;	.endef
__ZL16clipupdatesector4vec2IiEPsi:
LFB17:
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
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$104, %esp
	.cfi_def_cfa_offset 124
	movswl	(%ecx), %ebx
	movl	%ecx, 100(%esp)
	movl	%ebx, %ecx
	movl	%eax, 72(%esp)
	movl	%edx, 68(%esp)
	call	_inside
	cmpl	$1, %eax
	je	L209
	movl	$0, (%esp)
	movl	%ebx, %ecx
	movl	%ebp, %edx
	movl	%edi, %eax
	movl	$1, %ebp
	call	_getsectordist
	movl	124(%esp), %edi
	movl	$512, 8(%esp)
	cwtl
	movl	$0, 4(%esp)
	leal	8(%edi), %edx
	movl	$__ZZL16clipupdatesector4vec2IiEPsiE9insidemap, (%esp)
	cmpl	%edx, %eax
	movl	$32767, %eax
	cmovle	%edi, %eax
	movl	%eax, 124(%esp)
	call	_memset
	movswl	(%esi), %eax
	movl	%eax, %edx
	sarl	$3, %eax
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.4(%edx), %edx
	orb	%dl, __ZZL16clipupdatesector4vec2IiEPsiE9insidemap(%eax)
	movzwl	(%esi), %ebx
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZZL16clipupdatesector4vec2IiEPsiE10sectbitmap, (%esp)
	call	_memset
	movswl	%bx, %eax
	movw	%bx, __ZZL16clipupdatesector4vec2IiEPsiE8sectlist
	andl	$7, %ebx
	sarl	$3, %eax
	movzbl	__ZL8pow2char.lto_priv.1(%ebx), %edx
	movw	%bp, 32(%esp)
	orb	%dl, __ZZL16clipupdatesector4vec2IiEPsiE10sectbitmap(%eax)
	movl	_sector, %eax
	movl	$0, 20(%esp)
	movl	%eax, 36(%esp)
	movl	_wall, %eax
	movl	%eax, 40(%esp)
	.p2align 4
	.p2align 3
L217:
	movl	20(%esp), %eax
	movswl	__ZZL16clipupdatesector4vec2IiEPsiE8sectlist(%eax,%eax), %ecx
	movl	%ecx, %edi
	movl	%ecx, %eax
	movl	%ecx, %esi
	sarl	$3, %edi
	andl	$7, %eax
	movzbl	__ZZL16clipupdatesector4vec2IiEPsiE9insidemap(%edi), %ebx
	movzbl	__ZL8pow2char.lto_priv.4(%eax), %ebp
	movl	%ebx, %eax
	movl	%ebp, %edx
	notl	%eax
	testb	%dl, %al
	je	L211
	movl	68(%esp), %edx
	movl	72(%esp), %eax
	movl	%ecx, 16(%esp)
	call	_inside
	movl	16(%esp), %ecx
	cmpl	$1, %eax
	je	L243
L211:
	movl	36(%esp), %esi
	leal	(%ecx,%ecx,4), %eax
	orl	%ebp, %ebx
	movb	%bl, __ZZL16clipupdatesector4vec2IiEPsiE9insidemap(%edi)
	leal	(%esi,%eax,8), %eax
	movswl	(%eax), %edx
	movswl	2(%eax), %esi
	addl	%edx, %esi
	cmpl	%esi, %edx
	jge	L212
	movl	%edx, %eax
	subl	%edx, %esi
	sall	$5, %eax
	sall	$5, %esi
	addl	40(%esp), %eax
	addl	%eax, %esi
	jmp	L216
	.p2align 4
	.p2align 4,,10
	.p2align 3
L215:
	addl	$32, %eax
	cmpl	%esi, %eax
	je	L212
L216:
	movzwl	12(%eax), %edx
	testw	%dx, %dx
	js	L215
	movswl	%dx, %edi
	movl	%edx, %ebp
	sarl	$3, %edi
	andl	$7, %ebp
	movl	%edi, 16(%esp)
	movzbl	__ZL8pow2char.lto_priv.4(%ebp), %ebx
	movzbl	__ZL13clipsectormap(%edi), %edi
	andl	%ebx, %edi
	movl	%edi, %ecx
	cmpb	%cl, %bl
	jne	L215
	movl	16(%esp), %edi
	movzbl	__ZZL16clipupdatesector4vec2IiEPsiE10sectbitmap(%edi), %ebx
	movzbl	__ZL8pow2char.lto_priv.1(%ebp), %edi
	movb	%bl, 28(%esp)
	notl	%ebx
	movl	%ebx, %ecx
	movl	%edi, %ebx
	testb	%bl, %cl
	je	L215
	movzbl	28(%esp), %ebx
	movswl	32(%esp), %ecx
	addl	$32, %eax
	orl	%edi, %ebx
	movl	16(%esp), %edi
	movw	%dx, __ZZL16clipupdatesector4vec2IiEPsiE8sectlist(%ecx,%ecx)
	movb	%bl, __ZZL16clipupdatesector4vec2IiEPsiE10sectbitmap(%edi)
	movl	%ecx, %edi
	addl	$1, %edi
	movw	%di, 32(%esp)
	cmpl	%esi, %eax
	jne	L216
	.p2align 4
	.p2align 3
L212:
	addl	$1, 20(%esp)
	movswl	32(%esp), %eax
	cmpl	20(%esp), %eax
	jg	L217
	movl	100(%esp), %eax
	movl	$1, %edi
	movzwl	(%eax), %ebx
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZZL16clipupdatesector4vec2IiEPsiE10sectbitmap, (%esp)
	call	_memset
	movswl	%bx, %eax
	movw	%bx, __ZZL16clipupdatesector4vec2IiEPsiE8sectlist
	andl	$7, %ebx
	sarl	$3, %eax
	movzbl	__ZL8pow2char.lto_priv.1(%ebx), %edx
	movw	%di, 98(%esp)
	orb	%dl, __ZZL16clipupdatesector4vec2IiEPsiE10sectbitmap(%eax)
	movl	72(%esp), %eax
	movl	$0, 84(%esp)
	movl	%eax, 88(%esp)
	sarl	$31, %eax
	movl	%eax, 92(%esp)
	.p2align 4
	.p2align 3
L229:
	movl	84(%esp), %eax
	movswl	__ZZL16clipupdatesector4vec2IiEPsiE8sectlist(%eax,%eax), %ecx
	movl	%ecx, %ebp
	movl	%ecx, %eax
	movl	%ecx, %edi
	sarl	$3, %ebp
	andl	$7, %eax
	movzbl	__ZZL16clipupdatesector4vec2IiEPsiE9insidemap(%ebp), %ebx
	movzbl	__ZL8pow2char.lto_priv.4(%eax), %esi
	movl	%ebx, %eax
	movl	%esi, %edx
	notl	%eax
	testb	%dl, %al
	je	L218
	movl	68(%esp), %edx
	movl	72(%esp), %eax
	movl	%ecx, 16(%esp)
	call	_inside
	movl	16(%esp), %ecx
	cmpl	$1, %eax
	je	L219
L218:
	movl	_sector, %eax
	leal	(%ecx,%ecx,4), %edx
	orl	%esi, %ebx
	movb	%bl, __ZZL16clipupdatesector4vec2IiEPsiE9insidemap(%ebp)
	leal	(%eax,%edx,8), %eax
	movswl	(%eax), %ebp
	movswl	2(%eax), %eax
	addl	%ebp, %eax
	movl	%eax, 36(%esp)
	cmpl	%eax, %ebp
	jge	L221
	movl	%ebp, %eax
	sall	$5, %eax
	addl	_wall, %eax
	movl	%eax, 28(%esp)
	movl	68(%esp), %eax
	movl	%eax, 76(%esp)
	sarl	$31, %eax
	movl	%eax, 80(%esp)
	jmp	L228
	.p2align 5
	.p2align 4,,10
	.p2align 3
L227:
	addl	$32, 28(%esp)
	addl	$1, %ebp
	cmpl	%ebp, 36(%esp)
	je	L221
L228:
	movl	28(%esp), %eax
	cmpw	$0, 12(%eax)
	js	L227
	movl	_wall, %eax
	movl	%ebp, %edx
	sall	$5, %edx
	addl	%eax, %edx
	movswl	8(%edx), %ecx
	movl	4(%edx), %esi
	movl	(%edx), %edi
	sall	$5, %ecx
	movl	%esi, 32(%esp)
	addl	%ecx, %eax
	movl	%edi, 40(%esp)
	movl	4(%eax), %ecx
	movl	(%eax), %ebx
	movl	%ecx, 44(%esp)
	subl	%esi, %ecx
	movl	88(%esp), %esi
	movl	%ecx, 20(%esp)
	movl	%ebx, 48(%esp)
	subl	%edi, %ebx
	movl	%ecx, 60(%esp)
	sarl	$31, %ecx
	movl	%ebx, %eax
	movl	%ebx, 16(%esp)
	movl	%edi, %ebx
	cltd
	movl	%ecx, 64(%esp)
	movl	%edi, %ecx
	movl	92(%esp), %edi
	sarl	$31, %ebx
	subl	%ecx, %esi
	movl	%edx, 56(%esp)
	movl	56(%esp), %edx
	sbbl	%ebx, %edi
	movl	16(%esp), %ebx
	movl	%eax, 52(%esp)
	imull	%esi, %edx
	movl	%ebx, %ecx
	movl	%ebx, %eax
	imull	%edi, %ecx
	addl	%edx, %ecx
	mull	%esi
	movl	%edx, %edi
	movl	%eax, %esi
	movl	76(%esp), %eax
	movl	80(%esp), %edx
	addl	%ecx, %edi
	movl	32(%esp), %ecx
	movl	%ecx, %ebx
	sarl	$31, %ebx
	subl	%ecx, %eax
	movl	20(%esp), %ecx
	sbbl	%ebx, %edx
	movl	%eax, 20(%esp)
	movl	20(%esp), %eax
	movl	%edx, 24(%esp)
	movl	64(%esp), %edx
	movl	%ecx, %ebx
	imull	24(%esp), %ebx
	movl	%ecx, 20(%esp)
	imull	%eax, %edx
	addl	%edx, %ebx
	mull	%ecx
	addl	%ebx, %edx
	addl	%eax, %esi
	adcl	%edx, %edi
	xorl	%eax, %eax
	movl	%esi, %ecx
	cmpl	%esi, %eax
	movl	%edi, %ebx
	sbbl	%edi, %eax
	jge	L234
	movl	16(%esp), %eax
	imull	%eax
	movl	%eax, %esi
	movl	20(%esp), %eax
	movl	%edx, %edi
	imull	%eax
	addl	%esi, %eax
	adcl	%edi, %edx
	cmpl	%eax, %ecx
	movl	%ebx, %edi
	sbbl	%edx, %edi
	jge	L225
	shldl	$15, %ecx, %ebx
	sall	$15, %ecx
	movl	%eax, 8(%esp)
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	movl	%edx, 12(%esp)
	call	_tabledivide64.lto_priv.1
	movl	40(%esp), %ebx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	56(%esp), %edx
	sall	$15, %esi
	shldl	$15, %eax, %edi
	movl	16(%esp), %eax
	imull	%esi, %edx
	imull	%edi, %eax
	movl	%edx, %ecx
	addl	%eax, %ecx
	movl	16(%esp), %eax
	mull	%esi
	addl	%ecx, %edx
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	20(%esp), %eax
	shrdl	$30, %ecx, %edx
	addl	%edx, %ebx
	movl	64(%esp), %edx
	imull	%edi, %eax
	movl	%ebx, 48(%esp)
	imull	%esi, %edx
	leal	(%edx,%eax), %ecx
	movl	20(%esp), %eax
	mull	%esi
	movl	32(%esp), %esi
	addl	%ecx, %edx
	shrdl	$30, %edx, %eax
	addl	%eax, %esi
	movl	%esi, 44(%esp)
L225:
	movl	48(%esp), %eax
	subl	72(%esp), %eax
/APP
 # 13215 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	44(%esp), %eax
	subl	68(%esp), %eax
/APP
 # 13215 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	124(%esp), %edi
	addl	%eax, %edx
	leal	8(%edi), %ecx
	cmpl	%edx, %ecx
	jl	L227
	movl	28(%esp), %eax
	movswl	12(%eax), %eax
	movl	%eax, %ecx
	sarl	$3, %eax
	movzbl	__ZZL16clipupdatesector4vec2IiEPsiE10sectbitmap(%eax), %edx
	movl	%ecx, %ebx
	movl	%eax, %edi
	andl	$7, %ebx
	movl	%edx, %esi
	movzbl	__ZL8pow2char.lto_priv.1(%ebx), %ebx
	notl	%esi
	movl	%esi, %eax
	testb	%bl, %al
	je	L227
	movswl	98(%esp), %eax
	orl	%ebx, %edx
	addl	$32, 28(%esp)
	addl	$1, %ebp
	movb	%dl, __ZZL16clipupdatesector4vec2IiEPsiE10sectbitmap(%edi)
	movl	%eax, %esi
	movw	%cx, __ZZL16clipupdatesector4vec2IiEPsiE8sectlist(%eax,%eax)
	addl	$1, %esi
	movw	%si, 98(%esp)
	cmpl	%ebp, 36(%esp)
	jne	L228
	.p2align 4
	.p2align 3
L221:
	addl	$1, 84(%esp)
	movswl	98(%esp), %eax
	cmpl	84(%esp), %eax
	jg	L229
	movl	_numyaxbunches, %eax
	testl	%eax, %eax
	jle	L232
	movl	100(%esp), %eax
	movswl	(%eax), %esi
	movswl	_numsectors, %eax
	cmpl	%eax, %esi
	jnb	L232
	movl	%esi, %eax
	call	_yax_getbunch.constprop.1
	movl	%eax, %ebx
	movl	%esi, %eax
	call	_yax_getbunch.constprop.0
	testw	%ax, %bx
	js	L232
	movl	100(%esp), %eax
	movl	%eax, 8(%esp)
	movl	68(%esp), %eax
	movl	%eax, 4(%esp)
	movl	72(%esp), %eax
	movl	%eax, (%esp)
	call	_updatesector
L209:
	addl	$104, %esp
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
L232:
	.cfi_restore_state
	addl	$104, %esp
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
	.p2align 4,,10
	.p2align 3
L234:
	.cfi_restore_state
	movl	32(%esp), %eax
	movl	%eax, 44(%esp)
	movl	40(%esp), %eax
	movl	%eax, 48(%esp)
	jmp	L225
L243:
	movl	100(%esp), %eax
	movw	%si, (%eax)
	jmp	L209
L219:
	movl	__ZL11clipsectnum, %eax
	movl	%esi, %ebx
	cmpl	$511, %eax
	jg	L222
	leal	1(%eax), %edx
	orb	%bl, __ZL13clipsectormap(%ebp)
	movl	%edx, __ZL11clipsectnum
	movw	%di, _clipsectorlist(%eax,%eax)
L223:
	movl	100(%esp), %eax
	movw	%di, (%eax)
	jmp	L209
L222:
	orl	$1, __ZL15clipmove_warned
	jmp	L223
	.cfi_endproc
LFE17:
	.section .rdata,"dr"
LC0:
	.ascii "ART:%4d \0"
LC1:
	.ascii "HI:%4d \0"
LC2:
	.ascii "VOX:%4d \0"
LC3:
	.ascii "Block listing:\0"
LC4:
	.ascii "source/build/src/cache1d.cpp\0"
LC5:
	.ascii "%4d \0"
LC6:
	.ascii "@ %x: \0"
LC7:
	.ascii "SIZ:%5d \0"
LC8:
	.ascii "LCK:%d \0"
LC9:
	.ascii "%s\0"
LC10:
	.ascii "Cache size:  %dKB\0"
LC11:
	.ascii "Used:        %dKB\0"
LC12:
	.ascii "Remaining:   %dKB\0"
LC13:
	.ascii "Block count: %d/%d\0"
	.text
	.align 2
	.p2align 4
	.globl	__ZN7cache1d6reportEv.constprop.0
	.def	__ZN7cache1d6reportEv.constprop.0;	.scl	2;	.type	32;	.endef
__ZN7cache1d6reportEv.constprop.0:
LFB23:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$-1431655765, %ecx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	xorl	%edi, %edi
	pushl	%esi
	pushl	%ebx
	subl	$56, %esp
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	_g_cache+12, %eax
	movl	$0, -28(%ebp)
	movl	$0, -20(%ebp)
	leal	0(,%eax,4), %eax
	movl	$0, -16(%ebp)
	mull	%ecx
	leal	-28(%ebp), %eax
	shrl	%edx
	orl	$1, %edx
	movl	%edx, -24(%ebp)
	call	_inthash_init
	movl	-28(%ebp), %ebx
	jmp	L250
	.p2align 4,,10
	.p2align 3
L247:
	addl	$1, %edi
	cmpl	$30719, %edi
	je	L288
L250:
	movl	_waloff(,%edi,4), %edx
	testl	%edx, %edx
	jne	L289
L245:
	leal	(%edi,%edi,2), %eax
	movl	_classicht(,%eax,4), %edx
	testl	%edx, %edx
	jne	L290
L246:
	movswl	_tiletovox(%edi,%edi), %eax
	cmpw	$-1, %ax
	je	L247
	xorl	%esi, %esi
	leal	(%eax,%eax,4), %eax
	addl	%esi, %eax
	movl	_voxoff(,%eax,4), %edx
	testl	%edx, %edx
	jne	L291
	.p2align 5
	.p2align 4
	.p2align 3
L248:
	addl	$1, %esi
	cmpl	$5, %esi
	je	L247
	movswl	_tiletovox(%edi,%edi), %eax
	leal	(%eax,%eax,4), %eax
	addl	%esi, %eax
	movl	_voxoff(,%eax,4), %edx
	testl	%edx, %edx
	je	L248
L291:
	movl	%ebx, -28(%ebp)
	movl	%edi, %ecx
	leal	-28(%ebp), %eax
	movl	$1, (%esp)
	call	_inthash_add
	jmp	L248
	.p2align 4,,10
	.p2align 3
L290:
	movl	%ebx, -28(%ebp)
	movl	%edi, %ecx
	leal	-28(%ebp), %eax
	movl	$1, (%esp)
	call	_inthash_add
	jmp	L246
	.p2align 4,,10
	.p2align 3
L289:
	movl	%ebx, -28(%ebp)
	movl	%edi, %ecx
	leal	-28(%ebp), %eax
	movl	$1, (%esp)
	call	_inthash_add
	jmp	L245
L288:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L251
	movl	$LC3, 12(%esp)
	movl	$301, 8(%esp)
	movl	$LC4, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L251:
	movl	$140, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	movl	_g_cache+16, %eax
	movl	$0, -36(%ebp)
	leal	39(%esp), %edi
	andl	$-16, %edi
	testl	%eax, %eax
	jle	L252
	movl	%ebx, -44(%ebp)
	xorl	%esi, %esi
	jmp	L259
	.p2align 4,,10
	.p2align 3
L293:
	subl	_g_cache+4, %eax
	movl	$128, %ebx
	movl	$LC6, 8(%esp)
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %ecx
	movl	%ebx, %eax
	subl	%ecx, %eax
	movl	%eax, 4(%esp)
	leal	(%edi,%ecx), %eax
	movl	%eax, (%esp)
	movl	%edx, -40(%ebp)
	call	*__imp___snprintf
	movl	-32(%ebp), %ecx
	movl	-40(%ebp), %edx
	addl	%eax, %ecx
	movl	_g_cache, %eax
	movl	8(%eax,%edx), %eax
	movl	$LC7, 8(%esp)
	movl	%eax, 12(%esp)
	movl	%ebx, %eax
	subl	%ecx, %eax
	movl	%eax, 4(%esp)
	leal	(%edi,%ecx), %eax
	movl	%ecx, -32(%ebp)
	movl	%eax, (%esp)
	call	*__imp___snprintf
	movl	-32(%ebp), %ecx
	movl	-40(%ebp), %edx
	addl	%eax, %ecx
	movl	_g_cache, %eax
	subl	%ecx, %ebx
	movl	(%eax,%edx), %eax
	movzbl	(%eax), %eax
	movl	%ebx, 4(%esp)
	movl	$LC8, 8(%esp)
	movl	%eax, 12(%esp)
	leal	(%edi,%ecx), %eax
	movl	%ecx, -32(%ebp)
	movl	%eax, (%esp)
	call	*__imp___snprintf
	movl	-32(%ebp), %ecx
	movl	-40(%ebp), %edx
	leal	(%ecx,%eax), %ebx
	movl	_g_cache, %eax
	movl	4(%eax,%edx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, -28(%ebp)
	leal	-28(%ebp), %eax
	movl	%edx, -32(%ebp)
	call	_inthash_find
	movl	-32(%ebp), %edx
	cmpl	$-1, %eax
	je	L255
	movl	$LC0, %ecx
	cmpl	_waloff(,%eax,4), %edx
	je	L257
	leal	(%eax,%eax,2), %ecx
	cmpl	_classicht(,%ecx,4), %edx
	movl	$LC1, %ecx
	movl	$LC2, %edx
	cmovne	%edx, %ecx
L257:
	movl	%eax, 12(%esp)
	movl	$128, %eax
	subl	%ebx, %eax
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	(%edi,%ebx), %eax
	movl	%eax, (%esp)
	call	*__imp___snprintf
	addl	%eax, %ebx
L255:
	cmpl	$127, %ebx
	jg	L258
	movb	$0, -1(%edi,%ebx)
L258:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L256
	movl	%edi, 16(%esp)
	movl	$LC9, 12(%esp)
	movl	$341, 8(%esp)
	movl	$LC4, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L256:
	addl	$1, %esi
	cmpl	_g_cache+16, %esi
	jge	L292
L259:
	movb	$0, (%edi)
	movl	%esi, 12(%esp)
	movl	$LC5, 8(%esp)
	movl	$128, 4(%esp)
	movl	%edi, (%esp)
	call	*__imp___snprintf
	movl	%esi, %edx
	movl	%eax, -32(%ebp)
	movl	_g_cache, %eax
	sall	$4, %edx
	addl	%edx, %eax
	movl	8(%eax), %ecx
	movl	4(%eax), %eax
	addl	%ecx, -36(%ebp)
	testl	%eax, %eax
	je	L253
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L293
L253:
	movl	%edi, (%esp)
	call	_strlen
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	$1162170950, (%edi,%eax)
	movb	$0, 4(%edi,%eax)
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L256
	movl	%edi, 16(%esp)
	addl	$1, %esi
	movl	$LC9, 12(%esp)
	movl	$320, 8(%esp)
	movl	$LC4, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	cmpl	_g_cache+16, %esi
	jl	L259
L292:
	movl	-44(%ebp), %ebx
L252:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	jns	L294
L260:
	movl	%ebx, (%esp)
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
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
L294:
	.cfi_restore_state
	movl	_g_cache+8, %eax
	movl	$LC10, 12(%esp)
	movl	$344, 8(%esp)
	sarl	$10, %eax
	movl	$LC4, 4(%esp)
	movl	%eax, 16(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L260
	movl	-36(%ebp), %esi
	movl	$LC11, 12(%esp)
	movl	$345, 8(%esp)
	movl	%esi, %eax
	movl	$LC4, 4(%esp)
	sarl	$10, %eax
	movl	$0, (%esp)
	movl	%eax, 16(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L260
	movl	_g_cache+8, %eax
	movl	$LC12, 12(%esp)
	movl	$346, 8(%esp)
	subl	%esi, %eax
	movl	$LC4, 4(%esp)
	sarl	$10, %eax
	movl	$0, (%esp)
	movl	%eax, 16(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L260
	movl	_g_cache+12, %eax
	movl	%eax, 20(%esp)
	movl	_g_cache+16, %eax
	movl	$LC13, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$347, 8(%esp)
	movl	$LC4, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L260
	.cfi_endproc
LFE23:
	.section .rdata,"dr"
LC14:
	.ascii "Cache size: %d\0"
	.align 4
LC15:
	.ascii "*Newhandle: 0x%08x, Newbytes: %d, *Newlock: %d\0"
LC16:
	.ascii "allocateBlock\0"
	.align 4
LC17:
	.ascii "BUFFER TOO BIG TO FIT IN CACHE!\0"
	.align 4
LC18:
	.ascii "fatal_exit(%s) at %s:%d in %s()\12\0"
	.align 4
LC19:
	.ascii "ALLOCACHE CALLED WITH LOCK OF 0!\0"
LC20:
	.ascii "CACHE SPACE ALL LOCKED UP!\0"
	.text
	.align 2
	.p2align 4
	.globl	__ZN7cache1d13allocateBlockEPiiPc.constprop.0
	.def	__ZN7cache1d13allocateBlockEPiiPc.constprop.0;	.scl	2;	.type	32;	.endef
__ZN7cache1d13allocateBlockEPiiPc.constprop.0:
LFB27:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	addl	$15, %edx
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	andl	$-16, %edx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$72, %esp
	.cfi_def_cfa_offset 92
	movl	%eax, 68(%esp)
	movl	_g_cache+8, %eax
	movl	%ecx, 64(%esp)
	movl	%edx, 32(%esp)
	cmpl	%edx, %eax
	jb	L360
L296:
	movl	64(%esp), %eax
	cmpb	$0, (%eax)
	je	L361
L300:
	movl	_g_cache+16, %eax
	subl	$1, %eax
	js	L325
	movl	_g_cache+8, %edi
	movl	_g_cache, %edx
	movl	$0, 60(%esp)
	movl	$0, 56(%esp)
	movl	%edi, 40(%esp)
	movl	%edi, %esi
	movl	$2147483647, 28(%esp)
	movl	%edx, 36(%esp)
	jmp	L313
	.p2align 5
	.p2align 4,,10
	.p2align 3
L305:
	subl	$1, %eax
	jb	L362
L313:
	movl	36(%esp), %edi
	movl	%eax, %edx
	movl	32(%esp), %ebx
	sall	$4, %edx
	subl	8(%edi,%edx), %esi
	leal	(%ebx,%esi), %ebp
	cmpl	%ebp, 40(%esp)
	jl	L305
	cmpl	%ebp, %esi
	jge	L306
	leal	(%edi,%edx), %ecx
	movl	%esi, 44(%esp)
	movl	%esi, %ebx
	xorl	%edi, %edi
	movl	%eax, 48(%esp)
	movl	%edx, 52(%esp)
	jmp	L310
	.p2align 4,,10
	.p2align 3
L307:
	cmpb	$-57, %dl
	ja	L357
	movl	8(%ecx), %esi
	movl	__ZL9lockrecip.lto_priv.0(,%edx,4), %edx
	leal	65536(%esi), %eax
/APP
 # 163 "source/build/src/cache1d.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	addl	%edx, %edi
	cmpl	28(%esp), %edi
	jge	L357
	addl	%esi, %ebx
	addl	$16, %ecx
	cmpl	%ebx, %ebp
	jle	L363
L310:
	movl	(%ecx), %eax
	movzbl	(%eax), %edx
	testb	%dl, %dl
	jne	L307
	movl	8(%ecx), %esi
	addl	$16, %ecx
	addl	%esi, %ebx
	cmpl	%ebx, %ebp
	jg	L310
L363:
	movl	44(%esp), %esi
	movl	48(%esp), %eax
	movl	52(%esp), %edx
	cmpl	%edi, 28(%esp)
	jle	L305
	testl	%edi, %edi
	je	L312
	movl	%esi, 60(%esp)
	movl	%edi, 28(%esp)
	movl	%eax, 56(%esp)
	subl	$1, %eax
	jnb	L313
L362:
	movl	56(%esp), %eax
	movl	36(%esp), %edx
	movl	%eax, %edi
	leal	1(%eax), %ebp
	sall	$4, %edi
	movl	%edi, 40(%esp)
	cmpl	$2147483647, 28(%esp)
	je	L303
L314:
	movl	32(%esp), %eax
	movl	56(%esp), %ecx
	movl	%eax, %ebx
	negl	%ebx
	testl	%eax, %eax
	jle	L317
	.p2align 6
	.p2align 4
	.p2align 3
L319:
	movl	%ecx, %esi
	sall	$4, %esi
	leal	(%edx,%esi), %eax
	movl	(%eax), %edi
	cmpb	$0, (%edi)
	je	L318
	movl	4(%eax), %eax
	movl	$0, (%eax)
	movl	_g_cache, %edx
	leal	(%edx,%esi), %eax
L318:
	addl	$1, %ecx
	addl	8(%eax), %ebx
	js	L319
L317:
	movl	56(%esp), %esi
	movl	%ecx, %eax
	movl	_g_cache+16, %ecx
	subl	%ebp, %eax
	movl	40(%esp), %edi
	subl	%eax, %ecx
	addl	%esi, %eax
	movl	%ecx, _g_cache+16
	sall	$4, %eax
	subl	%esi, %ecx
	addl	%edx, %eax
	sall	$4, %ecx
	addl	%edi, %edx
	call	_copybufbyte
	movl	_g_cache, %eax
	movl	40(%esp), %edi
	movl	68(%esp), %ecx
	movl	%ecx, 4(%eax,%edi)
	movl	60(%esp), %eax
	addl	_g_cache+4, %eax
	movl	%eax, (%ecx)
	addl	_g_cache, %edi
	movl	%edi, %eax
	movl	32(%esp), %edi
	movl	%edi, 8(%eax)
	movl	64(%esp), %edi
	movl	%edi, (%eax)
	testl	%ebx, %ebx
	je	L295
	movl	%ebp, %edi
	sall	$4, %edi
	cmpl	%ebp, _g_cache+16
	je	L364
	movl	_g_cache, %eax
	addl	%edi, %eax
	movl	(%eax), %edx
	cmpb	$0, (%edx)
	jne	L322
	addl	%ebx, 8(%eax)
L295:
	addl	$72, %esp
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
	movl	44(%esp), %esi
	movl	48(%esp), %eax
	jmp	L305
L322:
	call	__ZN7cache1d20inc_and_check_cacnumEv.constprop.0
	movl	_g_cache+16, %eax
	leal	-1(%eax), %esi
	cmpl	%ebp, %esi
	jle	L323
	movl	%ebx, 28(%esp)
	leal	-2(%eax), %edx
	sall	$4, %edx
	.p2align 6
	.p2align 4
	.p2align 3
L324:
	movl	_g_cache, %ecx
	movl	%esi, %eax
	subl	$1, %esi
	sall	$4, %eax
	movl	(%ecx,%edx), %ebx
	addl	%ecx, %eax
	movl	%ebx, (%eax)
	movl	4(%ecx,%edx), %ebx
	movl	%ebx, 4(%eax)
	movl	8(%ecx,%edx), %ebx
	movl	%ebx, 8(%eax)
	movl	12(%ecx,%edx), %ecx
	subl	$16, %edx
	movl	%ecx, 12(%eax)
	cmpl	%ebp, %esi
	jne	L324
	movl	28(%esp), %ebx
L323:
	addl	_g_cache, %edi
	movl	%ebx, 8(%edi)
	movl	$__ZL8zerochar.lto_priv.0, (%edi)
	addl	$72, %esp
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
L361:
	.cfi_restore_state
	call	__ZN7cache1d6reportEv.constprop.0
	movl	$LC16, 16(%esp)
	movl	$137, 12(%esp)
	movl	$LC4, 8(%esp)
	movl	$LC19, 4(%esp)
	movl	$LC18, (%esp)
	call	_initprintf
	movl	_g_sm_heap, %ebx
	testl	%ebx, %ebx
	je	L301
	call	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0
	movl	_g_sm_heap, %ebx
	testl	%ebx, %ebx
	je	L301
	movl	372(%ebx), %eax
	testl	%eax, %eax
	je	L302
	call	_mi_free
L302:
	movl	%ebx, %eax
	call	_mi_free
L301:
	movl	$LC19, 4(%esp)
	movl	$0, (%esp)
	call	*__imp__FatalAppExitA@8
	.cfi_def_cfa_offset 84
	subl	$8, %esp
	.cfi_def_cfa_offset 92
	jmp	L300
L306:
	movl	28(%esp), %ecx
	testl	%ecx, %ecx
	jle	L305
L312:
	movl	%edx, 40(%esp)
	leal	1(%eax), %ebp
	movl	36(%esp), %edx
	movl	%esi, 60(%esp)
	movl	%eax, 56(%esp)
	jmp	L314
L325:
	movl	$0, 40(%esp)
	movl	$1, %ebp
	movl	$0, 60(%esp)
	movl	$0, 56(%esp)
L303:
	call	__ZN7cache1d6reportEv.constprop.0
	movl	$LC16, 16(%esp)
	movl	$183, 12(%esp)
	movl	$LC4, 8(%esp)
	movl	$LC20, 4(%esp)
	movl	$LC18, (%esp)
	call	_initprintf
	movl	_g_sm_heap, %eax
	testl	%eax, %eax
	je	L315
	call	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0
	movl	_g_sm_heap, %ebx
	testl	%ebx, %ebx
	je	L315
	movl	372(%ebx), %eax
	testl	%eax, %eax
	je	L316
	call	_mi_free
L316:
	movl	%ebx, %eax
	call	_mi_free
L315:
	movl	$LC20, 4(%esp)
	movl	$0, (%esp)
	call	*__imp__FatalAppExitA@8
	.cfi_def_cfa_offset 84
	movl	_g_cache, %edx
	subl	$8, %esp
	.cfi_def_cfa_offset 92
	jmp	L314
L360:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L365
L297:
	call	__ZN7cache1d6reportEv.constprop.0
	movl	$LC16, 16(%esp)
	movl	$131, 12(%esp)
	movl	$LC4, 8(%esp)
	movl	$LC17, 4(%esp)
	movl	$LC18, (%esp)
	call	_initprintf
	movl	_g_sm_heap, %esi
	testl	%esi, %esi
	je	L298
	call	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0
	movl	_g_sm_heap, %ebx
	testl	%ebx, %ebx
	je	L298
	movl	372(%ebx), %eax
	testl	%eax, %eax
	je	L299
	call	_mi_free
L299:
	movl	%ebx, %eax
	call	_mi_free
L298:
	movl	$LC17, 4(%esp)
	movl	$0, (%esp)
	call	*__imp__FatalAppExitA@8
	.cfi_def_cfa_offset 84
	subl	$8, %esp
	.cfi_def_cfa_offset 92
	jmp	L296
L364:
	call	__ZN7cache1d20inc_and_check_cacnumEv.constprop.0
	addl	_g_cache, %edi
	movl	%ebx, 8(%edi)
	movl	$__ZL8zerochar.lto_priv.0, (%edi)
	jmp	L295
L365:
	movl	%eax, 16(%esp)
	movl	$LC14, 12(%esp)
	movl	$128, 8(%esp)
	movl	$LC4, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L297
	movl	64(%esp), %eax
	movzbl	(%eax), %eax
	movl	$LC15, 12(%esp)
	movl	$129, 8(%esp)
	movl	%eax, 24(%esp)
	movl	32(%esp), %eax
	movl	$LC4, 4(%esp)
	movl	%eax, 20(%esp)
	movl	68(%esp), %eax
	movl	$-2, (%esp)
	movl	%eax, 16(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L297
	.cfi_endproc
LFE27:
	.p2align 4
	.globl	__ZL19get_floorspr_pointsPKviiPiS1_S1_S1_S1_S1_S1_S1_i.lto_priv.0
	.def	__ZL19get_floorspr_pointsPKviiPiS1_S1_S1_S1_S1_S1_S1_i.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL19get_floorspr_pointsPKviiPiS1_S1_S1_S1_S1_S1_S1_i.lto_priv.0:
LFB34:
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
	subl	$48, %esp
	.cfi_def_cfa_offset 68
	movzbl	20(%ebx), %ebp
	movl	%ecx, 40(%esp)
	movzwl	28(%ebx), %ecx
	movl	%edx, 36(%esp)
	movswl	14(%ebx), %edx
	leal	512(%ecx), %esi
	andl	$2047, %ecx
	movl	100(%esp), %eax
	andl	$2047, %esi
	movswl	_sintable(%ecx,%ecx), %edi
	movswl	_sintable(%esi,%esi), %esi
	movl	%edi, 16(%esp)
	movswl	_tilesiz+2(,%edx,4), %edi
	movl	%esi, 20(%esp)
	movswl	_tilesiz(,%edx,4), %esi
	movl	%edi, 28(%esp)
	movl	%esi, 24(%esp)
	movzbl	21(%ebx), %esi
	movl	%esi, 32(%esp)
	movsbl	_picanm+1(%edx,%edx,4), %esi
	movsbl	_picanm+2(%edx,%edx,4), %edx
	testl	%eax, %eax
	jne	L367
	movsbl	22(%ebx), %ecx
	addl	%ecx, %esi
	movsbl	23(%ebx), %ecx
	addl	%ecx, %edx
L367:
	movzwl	12(%ebx), %ecx
	movl	%esi, %ebx
	negl	%ebx
	testb	$4, %cl
	cmovne	%ebx, %esi
	movl	%edx, %ebx
	negl	%ebx
	andl	$8, %ecx
	cmovne	%ebx, %edx
	imull	%eax, %eax
	addl	$16777216, %eax
/APP
 # 480 "source/build/src/engine_priv.h" 1
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
	movl	24(%esp), %ecx
	movl	%eax, %edi
	movl	32(%esp), %ebx
	movl	%ecx, %eax
	imull	%ebp, %ecx
	sarl	%eax
	addl	%esi, %eax
	movl	28(%esp), %esi
	imull	%ebp, %eax
	movl	%ecx, 28(%esp)
	movl	%eax, 24(%esp)
	movl	%esi, %eax
	imull	%ebx, %esi
	sarl	%eax
	addl	%edx, %eax
	imull	%ebx, %eax
	movl	%esi, %edx
	movl	%eax, 32(%esp)
	movl	20(%esp), %eax
/APP
 # 484 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	cltd
	movl	%edi, %ebp
	movl	%edi, 8(%esp)
	shldl	$12, %eax, %edx
	sarl	$31, %ebp
	sall	$12, %eax
	movl	%ebp, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.5
	movl	%esi, %edx
	movl	%eax, 44(%esp)
	movl	16(%esp), %eax
/APP
 # 484 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%edi, %ebx
	cltd
	movl	%eax, %ecx
	movl	%edi, 8(%esp)
	sarl	$31, %ebx
	sall	$12, %ecx
	movl	%ebx, 12(%esp)
	movl	%edx, %ebx
	shldl	$12, %eax, %ebx
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	movl	%edi, %ebx
	sarl	$31, %ebx
	call	_tabledivide64.lto_priv.5
	movl	20(%esp), %ecx
	movl	%ebx, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, %ebp
	movl	%ecx, %ebx
	sarl	$31, %ebx
	shldl	$12, %ecx, %ebx
	sall	$12, %ecx
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	call	_tabledivide64.lto_priv.5
	movl	%edi, 8(%esp)
	sarl	$31, %edi
	movl	%edi, 12(%esp)
	movl	16(%esp), %edi
	movl	%eax, %esi
	movl	%edi, %ebx
	movl	%edi, %ecx
	sarl	$31, %ebx
	sall	$12, %ecx
	shldl	$12, %edi, %ebx
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	call	_tabledivide64.lto_priv.5
	movl	%edi, 16(%esp)
	movl	24(%esp), %edx
	movl	%eax, %ecx
	movl	%edi, %eax
	movl	32(%esp), %edi
/APP
 # 487 "source/build/src/engine_priv.h" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	68(%esp), %ebx
	movl	20(%esp), %esi
	movl	%edi, %edx
	subl	36(%esp), %eax
	movl	24(%esp), %edi
	addl	%eax, (%ebx)
	negl	%esi
	movl	%ecx, %eax
/APP
 # 488 "source/build/src/engine_priv.h" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	84(%esp), %ebx
	subl	40(%esp), %eax
	movl	28(%esp), %edx
	addl	%eax, (%ebx)
	movl	16(%esp), %eax
/APP
 # 490 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	68(%esp), %ebx
	movl	28(%esp), %edx
	movl	(%ebx), %ebx
	movl	%ebx, 16(%esp)
	movl	%ebx, %edi
	movl	72(%esp), %ebx
	subl	%eax, %edi
	movl	20(%esp), %eax
	movl	%edi, (%ebx)
/APP
 # 491 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	84(%esp), %esi
	movl	44(%esp), %edi
	movl	76(%esp), %edx
	addl	(%esi), %eax
	movl	88(%esp), %esi
	movl	%eax, (%esi)
	movl	(%ebx), %eax
	subl	%edi, %eax
	movl	%eax, (%edx)
	movl	68(%esp), %eax
	movl	80(%esp), %edx
	movl	(%eax), %eax
	subl	%edi, %eax
	movl	%eax, (%edx)
	movl	88(%esp), %eax
	movl	92(%esp), %edx
	movl	(%eax), %eax
	subl	%ebp, %eax
	movl	%eax, (%edx)
	movl	84(%esp), %eax
	movl	96(%esp), %edx
	movl	(%eax), %eax
	subl	%ebp, %eax
	movl	%eax, (%edx)
	addl	$48, %esp
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
LFE34:
	.globl	__ZL19get_floorspr_pointsPKviiPiS1_S1_S1_S1_S1_S1_S1_i.lto_priv.1
	.def	__ZL19get_floorspr_pointsPKviiPiS1_S1_S1_S1_S1_S1_S1_i.lto_priv.1;	.scl	2;	.type	32;	.endef
	.set	__ZL19get_floorspr_pointsPKviiPiS1_S1_S1_S1_S1_S1_S1_i.lto_priv.1,__ZL19get_floorspr_pointsPKviiPiS1_S1_S1_S1_S1_S1_S1_i.lto_priv.0
	.p2align 4
	.def	__ZL15clipmove_spriteP4vec3IiEiiiii4vec2IiES3_S3_S3_i;	.scl	3;	.type	32;	.endef
__ZL15clipmove_spriteP4vec3IiEiiiii4vec2IiES3_S3_S3_i:
LFB36:
	.cfi_startproc
	subl	$216, %esp
	.cfi_def_cfa_offset 220
	movl	%eax, 64(%esp)
	movl	232(%esp), %eax
	movl	%ebp, 212(%esp)
	.cfi_offset 5, -8
	movswl	_headspritesect(%edx,%edx), %ebp
	movl	%eax, 48(%esp)
	movl	236(%esp), %eax
	movl	%ecx, 84(%esp)
	movl	%eax, 52(%esp)
	movl	240(%esp), %eax
	movl	%eax, 60(%esp)
	movl	244(%esp), %eax
	movl	%eax, 56(%esp)
	movl	248(%esp), %eax
	movl	%eax, 100(%esp)
	movl	252(%esp), %eax
	movl	%eax, 104(%esp)
	movl	256(%esp), %eax
	movl	%eax, 132(%esp)
	movl	260(%esp), %eax
	movl	%eax, 136(%esp)
	testl	%ebp, %ebp
	js	L375
	movl	%ebx, 200(%esp)
	movl	%esi, 204(%esp)
	movl	%edi, 208(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.p2align 4
	.p2align 3
L416:
	imull	$44, %ebp, %edi
	movl	%edi, 40(%esp)
	addl	_sprite, %edi
	movzwl	12(%edi), %eax
	movl	%edi, 36(%esp)
	movw	%ax, 140(%esp)
	movl	%eax, %esi
	testl	%eax, 228(%esp)
	je	L377
	movl	56(%esp), %eax
	movl	60(%esp), %ebx
	movl	52(%esp), %ecx
	movl	48(%esp), %edx
	movl	%eax, 4(%esp)
	movl	%edi, %eax
	movl	%ebx, (%esp)
	call	__Z14clipsprite_tryPK13uspritetypev7iiii
	movl	%eax, 44(%esp)
	testl	%eax, %eax
	jne	L377
	movl	(%edi), %ecx
	movl	4(%edi), %edi
	movl	%ecx, 72(%esp)
	movl	%edi, 76(%esp)
	testl	$32, %esi
	jne	L378
	andl	$48, %esi
	cmpw	$16, %si
	je	L379
	cmpl	%ecx, %ebx
	jl	L377
	cmpl	%ecx, 48(%esp)
	jle	L469
	.p2align 4
	.p2align 3
L377:
	movswl	_nextspritesect(%ebp,%ebp), %ebp
	testl	%ebp, %ebp
	jns	L416
L474:
	movl	200(%esp), %ebx
	.cfi_restore 3
	movl	204(%esp), %esi
	.cfi_restore 6
	movl	208(%esp), %edi
	.cfi_restore 7
L375:
	movl	212(%esp), %ebp
	addl	$216, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L379:
	.cfi_def_cfa_offset 220
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	40(%esp), %esi
	addl	_sprite, %esi
	movswl	14(%esi), %edx
	movzbl	21(%esi), %ebx
	movswl	_tilesiz+2(,%edx,4), %eax
	imull	%ebx, %eax
	leal	0(,%eax,4), %ecx
	addl	%eax, %eax
	testb	$-128, 12(%esi)
	cmove	44(%esp), %eax
	movl	%eax, %esi
	movsbl	_picanm+2(%edx,%edx,4), %eax
	movl	%esi, %edx
	imull	%ebx, %eax
	movl	36(%esp), %ebx
	sall	$2, %eax
	subl	%eax, %edx
	movl	8(%ebx), %eax
	movl	64(%esp), %ebx
	addl	%edx, %eax
	movl	8(%ebx), %ebx
	movl	%eax, %edx
	subl	%ecx, %edx
	subl	224(%esp), %edx
	cmpl	%edx, %ebx
	jle	L377
	addl	220(%esp), %eax
	cmpl	%eax, %ebx
	jge	L377
	movl	36(%esp), %edi
	movswl	28(%edi), %ebx
	movswl	14(%edi), %ecx
	movzbl	20(%edi), %esi
	movl	%ebx, 88(%esp)
	movsbl	_picanm+1(%ecx,%ecx,4), %eax
	movl	%ebx, %edx
	movsbl	22(%edi), %ebx
	addl	%ebx, %eax
	movl	%eax, %ebx
	negl	%ebx
	testb	$4, 12(%edi)
	movswl	_tilesiz(,%ecx,4), %edi
	cmovne	%ebx, %eax
	andl	$2047, %edx
	movl	88(%esp), %ebx
	movswl	_sintable(%edx,%edx), %edx
	movl	%edi, %ecx
	sarl	%ecx
	imull	%esi, %edx
	addl	%eax, %ecx
	movl	%edx, 36(%esp)
	leal	1536(%ebx), %edx
	movl	36(%esp), %eax
	andl	$2047, %edx
	movswl	_sintable(%edx,%edx), %ebx
	movl	%ecx, %edx
	imull	%esi, %ebx
/APP
 # 414 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	72(%esp), %esi
	movl	%edi, %edx
	subl	%eax, %esi
	movl	36(%esp), %eax
/APP
 # 415 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%esi, 36(%esp)
	addl	%eax, %esi
	movl	%ecx, %edx
	movl	%eax, 44(%esp)
	movl	%ebx, %eax
	movl	%esi, 72(%esp)
/APP
 # 417 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	76(%esp), %ecx
	movl	%edi, %edx
	subl	%eax, %ecx
	movl	%ebx, %eax
	movl	%ecx, 40(%esp)
/APP
 # 418 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	40(%esp), %ebx
	movl	264(%esp), %ecx
	movl	%esi, 4(%esp)
	movl	%eax, 68(%esp)
	movl	104(%esp), %edx
	leal	(%ebx,%eax), %edi
	movl	%ecx, 12(%esp)
	movl	100(%esp), %eax
	movl	%ebx, %esi
	movl	%edi, 8(%esp)
	movl	36(%esp), %ecx
	movl	%ebx, (%esp)
	call	_clipinsideboxline
	testl	%eax, %eax
	je	L377
	movl	88(%esp), %ebx
	movl	84(%esp), %edx
	leal	768(%ebx), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
/APP
 # 1210 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 76(%esp)
	leal	256(%ebx), %eax
	movl	84(%esp), %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
/APP
 # 1211 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	64(%esp), %ebx
	movl	%eax, 88(%esp)
	movl	4(%ebx), %ecx
	movl	(%ebx), %ebx
	movl	%ecx, %edx
	subl	%esi, %edx
	movl	%ebx, %esi
	subl	36(%esp), %esi
	subl	%eax, %edx
	imull	44(%esp), %edx
	movl	%esi, %eax
	subl	76(%esp), %eax
	imull	68(%esp), %eax
	cmpl	%eax, %edx
	jl	L470
	movl	88(%esp), %eax
	movl	76(%esp), %esi
	movl	%eax, 96(%esp)
L385:
	movl	36(%esp), %edx
	movl	%edi, %eax
	subl	%ecx, %eax
	subl	%ebx, %edx
	imull	%eax, %edx
	movl	72(%esp), %eax
	subl	%ebx, %eax
	movl	40(%esp), %ebx
	subl	%ecx, %ebx
	imull	%ebx, %eax
	cmpl	%eax, %edx
	jge	L471
	testb	$64, 140(%esp)
	jne	L377
	movl	96(%esp), %eax
	movl	36(%esp), %ecx
	movl	%edi, %edx
	movl	$0, 8(%esp)
	movl	72(%esp), %ebx
	subl	%eax, %ecx
	subl	%eax, %edx
	leal	-16384(%ebp), %eax
	cwtl
	subl	%esi, %ebx
	movl	%eax, 4(%esp)
	movl	40(%esp), %eax
	addl	%esi, %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__ZL11addcliplineiiiisi
L387:
	movl	64(%esp), %eax
	movl	(%eax), %ebx
	movl	4(%eax), %ecx
	movl	%ebx, %edx
	movl	%ecx, %eax
	subl	36(%esp), %edx
	subl	40(%esp), %eax
	imull	44(%esp), %edx
	imull	68(%esp), %eax
	addl	%edx, %eax
	js	L472
	movl	72(%esp), %edx
	movl	%edi, %eax
	subl	%ecx, %eax
	imull	68(%esp), %eax
	subl	%ebx, %edx
	imull	44(%esp), %edx
	addl	%edx, %eax
	jns	L377
	movl	72(%esp), %eax
	movl	76(%esp), %ebx
	movl	%edi, %edx
	movl	$1, 8(%esp)
	movl	88(%esp), %esi
	movl	%eax, %ecx
	subl	%ebx, %edx
	subl	%ebx, %ecx
	leal	-16384(%ebp), %ebx
	subl	%esi, %edi
	addl	%esi, %eax
	movswl	%bx, %ebx
	movl	%edi, (%esp)
	movl	%ebx, 4(%esp)
	call	__ZL11addcliplineiiiisi
	jmp	L377
	.p2align 4,,10
	.p2align 3
L378:
	movl	64(%esp), %eax
	movl	40(%esp), %ebx
	movw	%bp, 142(%esp)
	addl	_sprite, %ebx
	movl	8(%eax), %eax
	movl	%eax, 88(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 68(%esp)
	movzwl	12(%ebx), %eax
	notl	%eax
	testb	$48, %al
	jne	L389
	movzwl	22(%ebx), %eax
	movw	%ax, 108(%esp)
	testw	%ax, %ax
	je	L389
	movswl	108(%esp), %eax
	movswl	28(%ebx), %ecx
	movl	64(%esp), %edi
	movl	%eax, 96(%esp)
	movl	%eax, 44(%esp)
	leal	1024(%ecx), %eax
	addl	$512, %ecx
	movl	4(%edi), %edx
	andl	$2047, %ecx
	andl	$2047, %eax
	movl	(%edi), %edi
	subl	4(%ebx), %edx
	movswl	_sintable(%ecx,%ecx), %ecx
	movswl	_sintable(%eax,%eax), %eax
	subl	(%ebx), %edi
	negl	%ecx
	movl	%ecx, %esi
/APP
 # 1811 "source/build/include/build.h" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	96(%esp), %eax
/APP
 # 1813 "source/build/include/build.h" 1
	imull %edx; shrdl $18, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	88(%esp), %ecx
	addl	%eax, 68(%esp)
	movl	68(%esp), %eax
	subl	224(%esp), %eax
	cmpl	%ecx, %eax
	jge	L395
	movl	68(%esp), %eax
	addl	220(%esp), %eax
	cmpl	%ecx, %eax
	jg	L394
L395:
	movl	36(%esp), %ebx
	movzwl	28(%ebx), %eax
	movswl	14(%ebx), %edx
	movzbl	20(%ebx), %edi
	leal	512(%eax), %ecx
	andl	$2047, %eax
	movswl	_tilesiz(,%edx,4), %esi
	movswl	_sintable(%eax,%eax), %eax
	andl	$2047, %ecx
	movswl	_sintable(%ecx,%ecx), %ecx
	movl	%eax, 72(%esp)
	movswl	_tilesiz+2(,%edx,4), %eax
	movl	%ecx, 68(%esp)
	movzbl	21(%ebx), %ecx
	movl	%eax, 108(%esp)
	movzwl	12(%ebx), %eax
	leal	_picanm(%edx,%edx,4), %ebx
	movsbl	1(%ebx), %edx
	movw	%ax, 76(%esp)
	shrw	$2, %ax
	andl	$1, %eax
	imull	%edx, %eax
	movl	%esi, %edx
	sarl	%edx
	imull	%edi, %esi
	subl	%eax, %edx
	movzwl	76(%esp), %eax
	imull	%edi, %edx
	movl	%esi, 116(%esp)
	shrw	$3, %ax
	andl	$1, %eax
	movl	%edx, 112(%esp)
	movsbl	2(%ebx), %edx
	movl	108(%esp), %ebx
	imull	%edx, %eax
	movl	%ebx, %edx
	movl	%ebx, %esi
	sarl	%edx
	imull	%ecx, %esi
	subl	%eax, %edx
	movl	44(%esp), %eax
	imull	%ecx, %edx
	imull	%eax, %eax
	addl	$16777216, %eax
/APP
 # 1337 "source/build/src/clip.cpp" 1
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
	movl	88(%esp), %ecx
	movl	%eax, 108(%esp)
	movl	224(%esp), %eax
	movl	%ebp, 148(%esp)
	movl	%ecx, 188(%esp)
	movl	36(%esp), %ebp
	addl	%ecx, %eax
	movl	%eax, 192(%esp)
	movl	%ecx, %eax
	movl	96(%esp), %ecx
	subl	220(%esp), %eax
	movl	%eax, 196(%esp)
	movl	%edx, %eax
	movl	%ecx, %ebx
	subl	%esi, %edx
	sall	$8, %eax
	sarl	$31, %ebx
	movl	%ecx, 88(%esp)
	movl	%eax, 96(%esp)
	sall	$8, %edx
	leal	188(%esp), %eax
	movl	%ebx, 92(%esp)
	movl	%eax, 44(%esp)
	movl	%edx, 128(%esp)
L415:
	movl	88(%esp), %eax
	movl	92(%esp), %edx
	movl	44(%esp), %ecx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	subl	(%ecx), %eax
	cltd
	shldl	$18, %eax, %edx
	sall	$18, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.5
	movl	108(%esp), %edx
	movl	%eax, %ecx
/APP
 # 1343 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $12, %edx, %eax
 # 0 "" 2
/NO_APP
	cmpl	96(%esp), %eax
	jg	L408
	cmpl	%eax, 128(%esp)
	jg	L408
	movl	72(%esp), %eax
	movl	112(%esp), %edx
/APP
 # 1348 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	68(%esp), %edx
	movl	%ecx, %eax
/APP
 # 1348 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	0(%ebp), %ebx
	movl	112(%esp), %edx
	leal	(%ebx,%eax), %esi
	movl	68(%esp), %eax
	movl	%esi, 144(%esp)
/APP
 # 1349 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	72(%esp), %edx
	movl	%ecx, %eax
/APP
 # 1349 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	4(%ebp), %ecx
	movl	116(%esp), %edx
	subl	%ebx, %ecx
	addl	%eax, %ecx
	movl	72(%esp), %eax
/APP
 # 1351 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%esi, %edi
	movl	%eax, %ebx
	movl	116(%esp), %edx
	subl	%eax, %edi
	movl	68(%esp), %eax
	movl	%edi, 152(%esp)
/APP
 # 1352 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 76(%esp)
	addl	%ecx, %eax
	movl	84(%esp), %edx
	movl	%ecx, 36(%esp)
	movswl	28(%ebp), %ecx
	movl	%eax, 124(%esp)
	leal	1792(%ecx), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
/APP
 # 1354 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 156(%esp)
	leal	1280(%ecx), %eax
	movl	84(%esp), %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
/APP
 # 1355 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	264(%esp), %edx
	movl	36(%esp), %ecx
	movl	%eax, 160(%esp)
	movl	124(%esp), %eax
	movl	%edi, 4(%esp)
	movl	%edx, 12(%esp)
	movl	104(%esp), %edx
	movl	%eax, 8(%esp)
	movl	100(%esp), %eax
	movl	%ecx, (%esp)
	movl	%esi, %ecx
	call	_clipinsideboxline
	testl	%eax, %eax
	jne	L473
L408:
	addl	$4, 44(%esp)
	leal	200(%esp), %ecx
	cmpl	%ecx, 44(%esp)
	jne	L415
	movl	148(%esp), %ebp
	movswl	_nextspritesect(%ebp,%ebp), %ebp
	testl	%ebp, %ebp
	jns	L416
	jmp	L474
	.p2align 4,,10
	.p2align 3
L389:
	movl	68(%esp), %eax
	subl	224(%esp), %eax
	cmpl	88(%esp), %eax
	jge	L377
	movl	68(%esp), %eax
	addl	220(%esp), %eax
	cmpl	88(%esp), %eax
	jle	L377
	xorl	%eax, %eax
	movw	%ax, 108(%esp)
L394:
	movzwl	140(%esp), %eax
	testb	$64, %al
	je	L396
	movl	88(%esp), %ebx
	cmpl	%ebx, 68(%esp)
	setl	%dl
	shrw	$3, %ax
	andl	$1, %eax
	xorl	$1, %eax
	cmpb	%al, %dl
	je	L377
L396:
	movl	72(%esp), %eax
	movl	$_ryi+12, 28(%esp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	36(%esp), %ebx
	movl	$_ryi+8, 24(%esp)
	movl	%eax, _rxi
	movl	76(%esp), %eax
	movl	$_ryi+4, 20(%esp)
	movl	%eax, _ryi
	movl	44(%esp), %eax
	movl	$_ryi, 16(%esp)
	movl	%eax, 32(%esp)
	movl	%ebx, %eax
	movl	$_rxi+12, 12(%esp)
	movl	$_rxi+8, 8(%esp)
	movl	$_rxi+4, 4(%esp)
	movl	$_rxi, (%esp)
	call	__ZL19get_floorspr_pointsPKviiPiS1_S1_S1_S1_S1_S1_S1_i.lto_priv.0
	movswl	28(%ebx), %ecx
	movl	84(%esp), %edx
	leal	256(%ecx), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
/APP
 # 1260 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	subl	$256, %ecx
	movl	%eax, 76(%esp)
	movl	84(%esp), %edx
	andl	$2047, %ecx
	movswl	_sintable(%ecx,%ecx), %eax
/APP
 # 1261 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 124(%esp)
	movl	_rxi, %eax
	movl	_rxi+4, %edx
	movl	_ryi+4, %ecx
	movl	%eax, 96(%esp)
	movl	64(%esp), %eax
	movl	%edx, 72(%esp)
	movl	(%eax), %esi
	movl	4(%eax), %ebx
	movl	%ecx, %eax
	movl	%ecx, 116(%esp)
	subl	%esi, %edx
	movl	%esi, %edi
	movl	_ryi, %esi
	subl	%ebx, %eax
	movl	%edx, 88(%esp)
	movl	96(%esp), %edx
	movl	%eax, 120(%esp)
	subl	%edi, %edx
	movl	%edi, 68(%esp)
	movl	%esi, %edi
	imull	%eax, %edx
	movl	%esi, %eax
	movl	%esi, 112(%esp)
	subl	%ebx, %eax
	imull	88(%esp), %eax
	cmpl	%eax, %edx
	jge	L397
	movl	96(%esp), %eax
	movl	264(%esp), %esi
	movl	%ecx, (%esp)
	movl	104(%esp), %edx
	movl	72(%esp), %ecx
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	100(%esp), %eax
	movl	%esi, 12(%esp)
	call	_clipinsideboxline
	testl	%eax, %eax
	je	L475
	movl	112(%esp), %esi
	movl	96(%esp), %ecx
	movl	$0, 8(%esp)
	movl	72(%esp), %eax
	movl	76(%esp), %edi
	subl	%esi, %ebx
	movl	%ebx, %edx
	movl	124(%esp), %ebx
	subl	%ecx, %eax
	subl	%ebx, %edx
	imull	%eax, %edx
	movl	68(%esp), %eax
	subl	%ecx, %eax
	movl	116(%esp), %ecx
	subl	%edi, %eax
	subl	%esi, %ecx
	imull	%ecx, %eax
	movl	%edi, %ecx
	sarl	%ecx
	cmpl	%eax, %edx
	cmovl	%ecx, %edi
	movl	%ebx, %ecx
	sarl	%ecx
	cmpl	%eax, %edx
	movl	116(%esp), %edx
	movl	72(%esp), %eax
	cmovge	%ebx, %ecx
	leal	-16384(%ebp), %ebx
	movl	%edi, 76(%esp)
	movswl	%bx, %ebx
	addl	%edi, %edx
	movl	%ebx, 4(%esp)
	movl	112(%esp), %ebx
	movl	%ecx, %esi
	movl	%ecx, 124(%esp)
	movl	96(%esp), %ecx
	subl	%esi, %eax
	addl	%esi, %ebx
	movl	%ebx, (%esp)
	addl	%edi, %ecx
	jmp	L468
	.p2align 4,,10
	.p2align 3
L469:
	cmpl	%edi, 52(%esp)
	jg	L377
	cmpl	%edi, 56(%esp)
	jl	L377
	movl	40(%esp), %esi
	addl	_sprite, %esi
	movswl	14(%esi), %edx
	movzbl	21(%esi), %ebx
	movswl	_tilesiz+2(,%edx,4), %eax
	imull	%ebx, %eax
	leal	0(,%eax,4), %ecx
	addl	%eax, %eax
	testb	$-128, 12(%esi)
	cmove	44(%esp), %eax
	movl	%eax, %esi
	movsbl	_picanm+2(%edx,%edx,4), %eax
	movl	%esi, %edx
	movl	36(%esp), %esi
	imull	%ebx, %eax
	movl	64(%esp), %ebx
	movl	8(%ebx), %ebx
	sall	$2, %eax
	subl	%eax, %edx
	movl	8(%esi), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	subl	%ecx, %edx
	subl	224(%esp), %edx
	cmpl	%edx, %ebx
	jle	L377
	addl	220(%esp), %eax
	cmpl	%eax, %ebx
	jge	L377
	movzbl	18(%esi), %eax
	movl	84(%esp), %ecx
	leal	-16384(%ebp), %ebx
	movl	$0, 8(%esp)
	movswl	%bx, %ebx
	leal	(%ecx,%eax,4), %eax
	movl	132(%esp), %ecx
	movl	%ebx, 4(%esp)
	movl	%eax, %edx
	negl	%edx
	testl	%ecx, %ecx
	movl	72(%esp), %ecx
	cmovs	%edx, %eax
	movl	%edi, %edx
	subl	%eax, %ecx
	subl	%eax, %edx
	addl	%edi, %eax
	movl	%eax, (%esp)
	movl	%ecx, %eax
	call	__ZL11addcliplineiiiisi
	movzbl	18(%esi), %eax
	movl	84(%esp), %ecx
	movl	%edi, %edx
	movl	136(%esp), %esi
	movl	$0, 8(%esp)
	leal	(%ecx,%eax,4), %eax
	movl	%ebx, 4(%esp)
	movl	%eax, %ecx
	negl	%ecx
	testl	%esi, %esi
	movl	72(%esp), %esi
	cmovs	%ecx, %eax
	movl	%esi, %ecx
	subl	%eax, %edx
	subl	%eax, %ecx
	addl	%esi, %eax
	movl	%edx, (%esp)
	call	__ZL11addcliplineiiiisi
	jmp	L377
	.p2align 4,,10
	.p2align 3
L473:
	movl	76(%esp), %ecx
	movl	64(%esp), %edx
	negl	%ebx
	movl	%ebx, %esi
	movl	%ebx, 120(%esp)
	movl	%ebx, %edi
	movl	%ecx, 180(%esp)
	sarl	$31, %ecx
	movl	(%edx), %eax
	sarl	$31, %edi
	movl	%ecx, 184(%esp)
	movl	144(%esp), %ecx
	cltd
	movl	%edi, 176(%esp)
	movl	176(%esp), %edi
	movl	%ecx, %ebx
	movl	%esi, 172(%esp)
	sarl	$31, %ebx
	subl	%ecx, %eax
	sbbl	%ebx, %edx
	movl	%eax, 164(%esp)
	movl	120(%esp), %eax
	movl	164(%esp), %ebx
	movl	%edx, 168(%esp)
	movl	168(%esp), %ecx
	movl	%eax, %edx
	imull	%ebx, %edi
	imull	%eax, %ecx
	movl	%ebx, %eax
	mull	%edx
	addl	%edi, %ecx
	movl	%edx, %edi
	movl	64(%esp), %edx
	movl	%eax, %esi
	addl	%ecx, %edi
	movl	36(%esp), %ecx
	movl	4(%edx), %eax
	movl	%ecx, %ebx
	sarl	$31, %ebx
	cltd
	subl	%ecx, %eax
	sbbl	%ebx, %edx
	movl	76(%esp), %ebx
	movl	%eax, 76(%esp)
	movl	%edx, 80(%esp)
	movl	76(%esp), %eax
	movl	184(%esp), %edx
	movl	%ebx, %ecx
	imull	80(%esp), %ecx
	movl	%ebx, 76(%esp)
	imull	%eax, %edx
	addl	%edx, %ecx
	mull	%ebx
	addl	%ecx, %edx
	addl	%eax, %esi
	adcl	%edx, %edi
	xorl	%eax, %eax
	cmpl	%esi, %eax
	sbbl	%edi, %eax
	jge	L418
	movl	120(%esp), %eax
	imull	%eax
	movl	%eax, %ecx
	movl	76(%esp), %eax
	movl	%edx, %ebx
	imull	%eax
	addl	%ecx, %eax
	movl	%edi, %ecx
	adcl	%ebx, %edx
	cmpl	%eax, %esi
	sbbl	%edx, %ecx
	jge	L419
	movl	%esi, %ebx
	movl	%edi, %esi
	movl	%eax, 8(%esp)
	shldl	$15, %ebx, %esi
	sall	$15, %ebx
	movl	%edx, 12(%esp)
	movl	%ebx, (%esp)
	movl	%esi, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	176(%esp), %esi
	movl	120(%esp), %edi
	movl	%eax, %ecx
	movl	%edx, %ebx
	shldl	$15, %eax, %ebx
	sall	$15, %ecx
	movl	120(%esp), %eax
	imull	%ebx, %edi
	movl	%ecx, 164(%esp)
	imull	%ecx, %esi
	movl	144(%esp), %ecx
	movl	%ebx, 168(%esp)
	mull	164(%esp)
	addl	%edi, %esi
	addl	%esi, %edx
	movl	%eax, %esi
	movl	76(%esp), %eax
	shrdl	$30, %edx, %esi
	movl	184(%esp), %edx
	imull	168(%esp), %eax
	leal	(%ecx,%esi), %edi
	movl	164(%esp), %ecx
	imull	%ecx, %edx
	movl	36(%esp), %ecx
	leal	(%edx,%eax), %ebx
	movl	76(%esp), %eax
	mull	164(%esp)
	addl	%ebx, %edx
	shrdl	$30, %edx, %eax
	leal	(%ecx,%eax), %edx
L409:
	movl	40(%esp), %ebx
	addl	_sprite, %ebx
	movzwl	12(%ebx), %eax
	movl	8(%ebx), %ecx
	notl	%eax
	testb	$48, %al
	jne	L411
	movzwl	22(%ebx), %eax
	movw	%ax, 164(%esp)
	testw	%ax, %ax
	je	L411
	movswl	28(%ebx), %esi
	subl	4(%ebx), %edx
	subl	(%ebx), %edi
	leal	1024(%esi), %eax
	addl	$512, %esi
	andl	$2047, %esi
	andl	$2047, %eax
	movswl	_sintable(%esi,%esi), %esi
	movswl	_sintable(%eax,%eax), %eax
	negl	%esi
/APP
 # 1811 "source/build/include/build.h" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movswl	164(%esp), %eax
/APP
 # 1813 "source/build/include/build.h" 1
	imull %edx; shrdl $18, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
L411:
	movl	64(%esp), %ebx
	movl	%ecx, %edx
	subl	224(%esp), %edx
	movl	8(%ebx), %eax
	cmpl	%edx, %eax
	jl	L408
	addl	220(%esp), %ecx
	cmpl	%ecx, %eax
	jg	L408
	movl	4(%ebx), %edi
	movl	160(%esp), %esi
	movl	(%ebx), %ebx
	movl	156(%esp), %ecx
	movl	%edi, %edx
	subl	36(%esp), %edx
	subl	%esi, %edx
	imull	120(%esp), %edx
	movl	%ebx, %eax
	subl	144(%esp), %eax
	subl	%ecx, %eax
	imull	76(%esp), %eax
	movl	%edx, 120(%esp)
	movl	%ecx, %edx
	sarl	%ecx
	cmpl	%eax, 120(%esp)
	cmovge	%edx, %ecx
	movl	%esi, %edx
	sarl	%esi
	cmpl	%eax, 120(%esp)
	movl	%edx, %eax
	movl	124(%esp), %edx
	cmovl	%esi, %eax
	movl	144(%esp), %esi
	subl	%edi, %edx
	subl	%ebx, %esi
	imull	%edx, %esi
	movl	152(%esp), %edx
	subl	%ebx, %edx
	movl	36(%esp), %ebx
	subl	%edi, %ebx
	imull	%ebx, %edx
	cmpl	%edx, %esi
	jge	L476
	testb	$64, 140(%esp)
	jne	L408
	movl	144(%esp), %ebx
	movl	124(%esp), %edx
	movl	$0, 8(%esp)
	movzwl	142(%esp), %esi
	subl	%eax, %ebx
	subl	%eax, %edx
	movl	152(%esp), %eax
	subw	$16384, %si
	subl	%ecx, %eax
	movswl	%si, %esi
	addl	36(%esp), %ecx
	movl	%ecx, (%esp)
	movl	%ebx, %ecx
	movl	%esi, 4(%esp)
	call	__ZL11addcliplineiiiisi
	jmp	L408
	.p2align 4,,10
	.p2align 3
L397:
	movl	_rxi+12, %ecx
	movl	_rxi+8, %eax
	movl	_ryi+12, %edx
	movl	%ecx, 148(%esp)
	movl	_ryi+8, %ecx
	movl	%eax, 96(%esp)
	subl	68(%esp), %eax
	movl	%edx, 144(%esp)
	movl	%ecx, %esi
	subl	%ebx, %edx
	movl	%eax, %edi
	subl	%ebx, %esi
	imull	%eax, %edx
	movl	148(%esp), %eax
	subl	68(%esp), %eax
	imull	%esi, %eax
	movl	%ecx, 112(%esp)
	movl	%esi, 128(%esp)
	cmpl	%eax, %edx
	jge	L399
	movl	264(%esp), %eax
	movl	112(%esp), %ecx
	movl	144(%esp), %edx
	movl	96(%esp), %esi
	movl	%eax, 12(%esp)
	movl	100(%esp), %eax
	movl	%ecx, 8(%esp)
	movl	148(%esp), %ecx
	movl	%edx, (%esp)
	movl	104(%esp), %edx
	movl	%esi, 4(%esp)
	call	_clipinsideboxline
	testl	%eax, %eax
	je	L399
	movl	112(%esp), %ecx
	movl	124(%esp), %edi
	movl	$0, 8(%esp)
	movl	148(%esp), %eax
	movl	144(%esp), %edx
	subl	%ecx, %ebx
	subl	%esi, %eax
	subl	%edi, %ebx
	subl	%ecx, %edx
	imull	%eax, %ebx
	movl	68(%esp), %eax
	subl	%esi, %eax
	subl	76(%esp), %eax
	imull	%edx, %eax
	movl	76(%esp), %edx
	sarl	%edx
	movl	%edx, %esi
	movl	%edi, %edx
	cmpl	%eax, %ebx
	cmovge	76(%esp), %esi
	sarl	%edx
	cmpl	%eax, %ebx
	movl	144(%esp), %ebx
	movl	%edx, %eax
	movl	96(%esp), %edx
	movl	%esi, %ecx
	movl	%esi, 76(%esp)
	cmovge	%edi, %eax
	subl	%ecx, %ebx
	subl	%ecx, %edx
	leal	-16384(%ebp), %ecx
	movswl	%cx, %ecx
	movl	%eax, %esi
	movl	%eax, 124(%esp)
	movl	148(%esp), %eax
	movl	%ecx, 4(%esp)
	movl	112(%esp), %ecx
	addl	%esi, %eax
	subl	%esi, %ecx
	movl	%ecx, (%esp)
	movl	%edx, %ecx
	movl	%ebx, %edx
L468:
	call	__ZL11addcliplineiiiisi
	movl	64(%esp), %ecx
	movl	_rxi+4, %eax
	movl	(%ecx), %edx
	movl	4(%ecx), %ebx
	movl	%eax, 72(%esp)
	subl	%edx, %eax
	movl	%edx, 68(%esp)
	movl	%eax, 88(%esp)
	movl	_ryi+8, %eax
	movl	%eax, %edi
	movl	%eax, 112(%esp)
	movl	_rxi+8, %eax
	subl	%ebx, %edi
	movl	%eax, 96(%esp)
	subl	%edx, %eax
	movl	%edi, 128(%esp)
	movl	%eax, %edi
	movl	_ryi+4, %eax
	movl	%eax, 116(%esp)
	subl	%ebx, %eax
	movl	%eax, 120(%esp)
L399:
	movl	120(%esp), %edx
	movl	88(%esp), %eax
	imull	128(%esp), %eax
	imull	%edi, %edx
	cmpl	%edx, %eax
	jge	L404
	movl	264(%esp), %eax
	movl	116(%esp), %ecx
	movl	72(%esp), %esi
	movl	104(%esp), %edx
	movl	%eax, 12(%esp)
	movl	112(%esp), %eax
	movl	%ecx, 8(%esp)
	movl	96(%esp), %ecx
	movl	%eax, (%esp)
	movl	100(%esp), %eax
	movl	%esi, 4(%esp)
	call	_clipinsideboxline
	testl	%eax, %eax
	je	L405
	movl	96(%esp), %eax
	subl	116(%esp), %ebx
	movl	$0, 8(%esp)
	movl	%ebx, %edx
	movl	%esi, %ebx
	subl	124(%esp), %edx
	movl	112(%esp), %edi
	subl	%esi, %eax
	movl	68(%esp), %esi
	movl	76(%esp), %ecx
	imull	%eax, %edx
	subl	%ebx, %esi
	sarl	%ecx
	movl	%esi, %eax
	movl	116(%esp), %esi
	subl	76(%esp), %eax
	subl	%esi, %edi
	imull	%edi, %eax
	movl	%ecx, %edi
	movl	124(%esp), %ecx
	cmpl	%eax, %edx
	cmovge	76(%esp), %edi
	sarl	%ecx
	cmpl	%eax, %edx
	cmovge	124(%esp), %ecx
	movl	96(%esp), %eax
	movl	%edi, 76(%esp)
	movl	76(%esp), %edi
	movl	%ecx, %edx
	movl	%ebx, %ecx
	subl	%edx, %ecx
	movl	%edx, %ebx
	movl	112(%esp), %edx
	subl	%edi, %eax
	subl	%ebx, %edx
	leal	-16384(%ebp), %ebx
	movswl	%bx, %ebx
	movl	%ebx, 4(%esp)
	leal	(%edi,%esi), %ebx
	movl	%ebx, (%esp)
	call	__ZL11addcliplineiiiisi
L405:
	movl	44(%esp), %edi
	testl	%edi, %edi
	je	L377
	movl	64(%esp), %eax
	movl	8(%eax), %eax
	movl	%eax, 88(%esp)
	movswl	108(%esp), %eax
	movl	%eax, 96(%esp)
	jmp	L395
	.p2align 4,,10
	.p2align 3
L404:
	movl	_ryi, %esi
	movl	_rxi+12, %edx
	movl	_rxi, %ecx
	movl	_ryi+12, %edi
	movl	%esi, %eax
	movl	%edx, 72(%esp)
	subl	68(%esp), %edx
	subl	%ebx, %eax
	movl	%ecx, 88(%esp)
	imull	%eax, %edx
	movl	%ecx, %eax
	movl	%edi, %ecx
	subl	68(%esp), %eax
	subl	%ebx, %ecx
	imull	%ecx, %eax
	cmpl	%eax, %edx
	jge	L405
	movl	264(%esp), %edx
	movl	88(%esp), %ecx
	movl	%edi, 8(%esp)
	movl	%esi, (%esp)
	movl	100(%esp), %eax
	movl	%edx, 12(%esp)
	movl	72(%esp), %edx
	movl	%edi, 96(%esp)
	movl	%edx, 4(%esp)
	movl	104(%esp), %edx
	call	_clipinsideboxline
	testl	%eax, %eax
	je	L405
	movl	72(%esp), %edx
	movl	88(%esp), %eax
	movl	$0, 8(%esp)
	subl	96(%esp), %ebx
	subl	124(%esp), %ebx
	subl	%edx, %eax
	imull	%eax, %ebx
	movl	%ebx, %ecx
	movl	68(%esp), %ebx
	subl	%edx, %ebx
	movl	%esi, %edx
	movl	%ebx, %eax
	movl	%esi, %ebx
	movl	96(%esp), %esi
	subl	76(%esp), %eax
	subl	%esi, %edx
	imull	%edx, %eax
	movl	76(%esp), %edx
	sarl	%edx
	movl	%edx, %edi
	movl	124(%esp), %edx
	cmpl	%eax, %ecx
	cmovge	76(%esp), %edi
	sarl	%edx
	cmpl	%eax, %ecx
	movl	%edi, 76(%esp)
	movl	76(%esp), %edi
	movl	%edx, %ecx
	cmovge	124(%esp), %ecx
	movl	88(%esp), %eax
	movl	%ecx, %edx
	movl	72(%esp), %ecx
	addl	%edi, %eax
	addl	%edx, %ecx
	addl	%ebx, %edx
	leal	-16384(%ebp), %ebx
	movswl	%bx, %ebx
	movl	%ebx, 4(%esp)
	movl	%esi, %ebx
	subl	%edi, %ebx
	movl	%ebx, (%esp)
	call	__ZL11addcliplineiiiisi
	jmp	L405
L419:
	movl	124(%esp), %edx
	movl	152(%esp), %edi
	jmp	L409
L475:
	movl	_ryi+8, %eax
	movl	%eax, %edi
	movl	%eax, 112(%esp)
	movl	_rxi+8, %eax
	subl	%ebx, %edi
	movl	%eax, 96(%esp)
	subl	68(%esp), %eax
	movl	%edi, 128(%esp)
	movl	%eax, %edi
	jmp	L399
L470:
	movl	76(%esp), %edx
	movl	88(%esp), %eax
	sarl	%edx
	sarl	%eax
	movl	%eax, 96(%esp)
	movl	%edx, %esi
	jmp	L385
L418:
	movl	36(%esp), %edx
	movl	144(%esp), %edi
	jmp	L409
L476:
	movzwl	142(%esp), %edx
	movl	152(%esp), %ebx
	movl	$0, 8(%esp)
	movl	36(%esp), %esi
	subw	$16384, %dx
	addl	%eax, %ebx
	movswl	%dx, %edx
	addl	%eax, %esi
	movl	144(%esp), %eax
	movl	%edx, 4(%esp)
	movl	124(%esp), %edx
	addl	%ecx, %eax
	subl	%ecx, %edx
	movl	%ebx, %ecx
	movl	%edx, (%esp)
	movl	%esi, %edx
	call	__ZL11addcliplineiiiisi
	jmp	L408
L471:
	movl	96(%esp), %eax
	movl	40(%esp), %ebx
	movl	$0, 8(%esp)
	movl	72(%esp), %ecx
	leal	(%eax,%ebx), %edx
	addl	%eax, %ecx
	movl	36(%esp), %eax
	leal	(%esi,%eax), %ebx
	leal	-16384(%ebp), %eax
	cwtl
	movl	%eax, 4(%esp)
	movl	%edi, %eax
	subl	%esi, %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__ZL11addcliplineiiiisi
	jmp	L387
L472:
	movl	76(%esp), %ebx
	movl	36(%esp), %eax
	movl	$1, 8(%esp)
	movl	40(%esp), %edi
	movl	88(%esp), %esi
	leal	(%ebx,%eax), %ecx
	leal	(%ebx,%edi), %edx
	leal	-16384(%ebp), %ebx
	subl	%esi, %eax
	addl	%edi, %esi
	movswl	%bx, %ebx
	movl	%esi, (%esp)
	movl	%ebx, 4(%esp)
	call	__ZL11addcliplineiiiisi
	jmp	L377
	.cfi_endproc
LFE36:
	.p2align 4
	.globl	_engineInitClipMaps
	.def	_engineInitClipMaps;	.scl	2;	.type	32;	.endef
_engineInitClipMaps:
LFB43:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	__ZL5sectq, %eax
	movl	_g_sm_heap, %ecx
	movl	$0, __ZL11numclipmaps
	movl	$0, __ZL12numclipsects
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	__ZL8sectoidx, %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	$0, __ZL5sectq
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	__ZL11tempictoidx, %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	$0, __ZL8sectoidx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	__ZL10loadsector, %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	$0, __ZL11tempictoidx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	__ZL8loadwall, %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	$0, __ZL10loadsector
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	__ZL11loadwallinv, %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	$0, __ZL8loadwall
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	__ZL10loadsprite, %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	$0, __ZL11loadwallinv
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	$0, __ZL10loadsprite
	movl	$61440, 8(%esp)
	movl	$-1, 4(%esp)
	movl	$__ZL8pictoidx, (%esp)
	call	_memset
	xorl	%eax, %eax
	xorl	%edx, %edx
	movl	$0, __ZL11clipmapinfo
	movl	$0, __ZL11clipmapinfo+4
	movl	$0, __ZL11clipmapinfo+8
	movw	%ax, _numsectors
	movw	%dx, _numwalls
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE43:
	.section .rdata,"dr"
LC21:
	.ascii "Scaling and flipping\0"
LC22:
	.ascii "X-flipping\0"
LC23:
	.ascii "\0"
LC24:
	.ascii "s\0"
LC25:
	.ascii "Loading clip map %s\0"
LC26:
	.ascii "source/build/src/clip.cpp\0"
	.align 4
LC27:
	.ascii "Clip map %s would exceed engine limits; aborting.\0"
	.align 4
LC28:
	.ascii "Found too many clip maps (%d max).\0"
	.align 4
LC29:
	.ascii "Error in %s: tried to chain picnum %d (sprite %d) in sector %d which already belongs to picnum %d.\0"
	.align 4
LC30:
	.ascii "Error in %s: sprite %d points neither northward nor southward. %s will be incorrect.\0"
	.align 4
LC31:
	.ascii "Error in %s: sprite %d has more than one outer sector (%d and %d).\0"
	.align 4
LC32:
	.ascii "Error in %s: found sector %d belonging to index %d while collecting sectors for sprite %d (index %d).\0"
	.align 4
LC33:
	.ascii "INTERNAL CLIP MAP ERROR: outersect==-1!\0"
LC34:
	.ascii "Loaded clip map%s.\0"
	.text
	.p2align 4
	.globl	_engineLoadClipMaps
	.def	_engineLoadClipMaps;	.scl	2;	.type	32;	.endef
_engineLoadClipMaps:
LFB44:
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
	subl	$152, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	_g_clipMapFiles+4, %eax
	movl	%eax, -48(%ebp)
	call	_engineInitClipMaps
	movl	$163840, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L480
	movl	%eax, __ZL10loadsector
	movl	$524288, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L661
	movl	%eax, __ZL8loadwall
	movl	$720896, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L662
	movl	-48(%ebp), %ebx
	movl	%eax, __ZL10loadsprite
	testl	%ebx, %ebx
	jne	L663
	movl	$0, _quickloadboard
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
L490:
	call	_engineInitClipMaps
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-56(%ebp), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	$-1, %eax
	subl	$4, %esp
L479:
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
L663:
	.cfi_restore_state
	movl	-48(%ebp), %eax
	leal	0(,%eax,4), %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -52(%ebp)
	testl	%eax, %eax
	je	L487
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -56(%ebp)
	testl	%eax, %eax
	je	L487
	movl	%ebx, 8(%esp)
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	movl	$0, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	$0, -40(%ebp)
	movl	$1, _quickloadboard
	movl	$0, -96(%ebp)
	movl	%ebx, -36(%ebp)
	jmp	L489
	.p2align 4,,10
	.p2align 3
L491:
	addl	$1, %edi
	cmpl	-48(%ebp), %edi
	je	L664
L489:
	movl	-52(%ebp), %eax
	movl	-36(%ebp), %ecx
	movl	$8, %edx
	leal	0(,%edi,4), %esi
	movl	%ebx, (%eax,%edi,4)
	movl	-56(%ebp), %eax
	movl	%ecx, (%eax,%edi,4)
	movl	_g_clipMapFiles, %eax
	leal	-32(%ebp), %ecx
	movl	(%eax,%edi,4), %eax
	movl	%ecx, 4(%esp)
	leal	-30(%ebp), %ecx
	movl	%ecx, (%esp)
	leal	-28(%ebp), %ecx
	call	_engineLoadBoard
	testl	%eax, %eax
	js	L491
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L492
	movl	_g_clipMapFiles, %eax
	movl	(%eax,%edi,4), %eax
	movl	$LC25, 12(%esp)
	movl	$152, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC26, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L492:
	movswl	_numsectors, %edx
	leal	(%edx,%ebx), %eax
	cmpl	$4096, %eax
	jg	L493
	movswl	_numwalls, %eax
	addl	-40(%ebp), %eax
	cmpl	$16384, %eax
	jg	L493
	movl	-36(%ebp), %eax
	addl	_Numsprites, %eax
	cmpl	$16384, %eax
	jg	L493
	movl	__ZL10loadsector, %ecx
	leal	(%ebx,%ebx,4), %eax
	leal	(%ecx,%eax,8), %eax
	movl	%eax, %ecx
	leal	(%edx,%edx,4), %eax
	sall	$3, %eax
	movl	%eax, 8(%esp)
	movl	_sector, %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, -72(%ebp)
	call	_memcpy
	movl	-40(%ebp), %esi
	movl	__ZL8loadwall, %ecx
	movl	%esi, %eax
	movl	%ecx, -44(%ebp)
	sall	$5, %eax
	addl	%eax, %ecx
	movswl	_numwalls, %eax
	movl	%ecx, -64(%ebp)
	sall	$5, %eax
	movl	%eax, 8(%esp)
	movl	_wall, %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	call	_memcpy
	imull	$44, -36(%ebp), %eax
	movl	__ZL10loadsprite, %ecx
	movl	%ecx, -60(%ebp)
	addl	%eax, %ecx
	imull	$44, _Numsprites, %eax
	movl	%ecx, -68(%ebp)
	movl	%eax, 8(%esp)
	movl	_sprite, %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	call	_memcpy
	movswl	_numsectors, %edx
	addl	%ebx, %edx
	cmpl	%ebx, %edx
	jle	L496
	movl	-72(%ebp), %eax
	movl	%ebx, %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L497:
	addw	%si, (%eax)
	movswl	_numsectors, %edx
	addl	$1, %ecx
	addl	$40, %eax
	addl	%ebx, %edx
	cmpl	%ecx, %edx
	jg	L497
L496:
	movl	-40(%ebp), %ecx
	movswl	_numwalls, %eax
	leal	(%eax,%ecx), %esi
	movl	%esi, -40(%ebp)
	cmpl	%ecx, %esi
	jle	L498
	sall	$5, %esi
	addl	-44(%ebp), %esi
	movl	-64(%ebp), %eax
	movl	%edx, -44(%ebp)
	.p2align 4
	.p2align 3
L501:
	movzwl	8(%eax), %edx
	testw	%dx, %dx
	js	L499
	addl	%ecx, %edx
	movw	%dx, 8(%eax)
L499:
	movzwl	10(%eax), %edx
	testw	%dx, %dx
	js	L500
	addl	%ecx, %edx
	addw	%bx, 12(%eax)
	movw	%dx, 10(%eax)
L500:
	addl	$32, %eax
	cmpl	%eax, %esi
	jne	L501
	movl	-44(%ebp), %edx
L498:
	movl	-36(%ebp), %eax
	movl	_Numsprites, %ecx
	addl	%eax, %ecx
	cmpl	%eax, %ecx
	jle	L502
	movl	%edx, -36(%ebp)
	movl	-68(%ebp), %eax
	imull	$44, %ecx, %esi
	addl	-60(%ebp), %esi
	.p2align 5
	.p2align 4
	.p2align 3
L504:
	movzwl	24(%eax), %edx
	testw	%dx, %dx
	js	L503
	addl	%ebx, %edx
	movw	%dx, 24(%eax)
L503:
	addl	$44, %eax
	cmpl	%eax, %esi
	jne	L504
	movl	-36(%ebp), %edx
L502:
	addl	$1, -96(%ebp)
	movl	%edx, %ebx
	addl	$1, %edi
	movl	%ecx, -36(%ebp)
	cmpl	-48(%ebp), %edi
	jne	L489
L664:
	movl	%ebx, -100(%ebp)
	movl	-36(%ebp), %ebx
	jmp	L505
L493:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	%ebx, -100(%ebp)
	movl	-36(%ebp), %ebx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L665
L505:
	movl	-100(%ebp), %esi
	movl	-40(%ebp), %edi
	movl	$0, _quickloadboard
	testl	%esi, %esi
	sete	%al
	testl	%edi, %edi
	sete	%dl
	orb	%dl, %al
	jne	L490
	testl	%ebx, %ebx
	je	L490
	movl	-100(%ebp), %eax
	leal	(%eax,%eax,4), %eax
	leal	0(,%eax,8), %edi
	movl	%edi, -120(%ebp)
	movl	%edi, 4(%esp)
	movl	__ZL10loadsector, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	testl	%edi, %edi
	je	L599
	testl	%eax, %eax
	je	L509
L599:
	movl	-40(%ebp), %edi
	movl	%eax, __ZL10loadsector
	sall	$5, %edi
	movl	%edi, -116(%ebp)
	movl	%edi, 4(%esp)
	movl	__ZL8loadwall, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	testl	%edi, %edi
	movl	%eax, %esi
	sete	%dl
	testl	%eax, %eax
	setne	%al
	orb	%al, %dl
	movb	%dl, -81(%ebp)
	je	L512
	movl	-120(%ebp), %eax
	movl	%esi, __ZL8loadwall
	movl	%eax, 8(%esp)
	movl	__ZL10loadsector, %eax
	movl	%eax, 4(%esp)
	movl	_sector, %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	-116(%ebp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	_wall, %eax
	movl	%eax, (%esp)
	call	_memcpy
	imull	$44, %ebx, %eax
	movl	%eax, 8(%esp)
	movl	__ZL10loadsprite, %eax
	movl	%eax, 4(%esp)
	movl	_sprite, %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	-100(%ebp), %eax
	movzwl	-40(%ebp), %ebx
	movw	%bx, _numwalls
	movswl	%ax, %ebx
	addl	%ebx, %ebx
	movw	%ax, _numsectors
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -44(%ebp)
	testl	%eax, %eax
	je	L526
	movzwl	_numsectors, %edx
	movl	%eax, __ZL8sectoidx
	xorl	%eax, %eax
	movswl	%dx, %ebx
	testw	%dx, %dx
	jle	L515
	movl	-44(%ebp), %edx
	.p2align 5
	.p2align 4
	.p2align 3
L514:
	movl	$512, %ebx
	movw	%bx, (%edx,%eax,2)
	movswl	_numsectors, %ebx
	addl	$1, %eax
	cmpl	%eax, %ebx
	jg	L514
	testw	%bx, %bx
	jle	L515
	movw	%bx, -36(%ebp)
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L519:
	movl	_sector, %eax
	addl	%edx, %eax
	movswl	2(%eax), %ebx
	testw	%bx, %bx
	jle	L516
	movswl	(%eax), %eax
	movl	_wall, %edi
	addl	%eax, %ebx
	jmp	L518
	.p2align 5
	.p2align 4,,10
	.p2align 3
L517:
	addl	$1, %eax
	cmpl	%ebx, %eax
	jge	L516
L518:
	movl	%eax, %ecx
	sall	$5, %ecx
	cmpw	$0, 12(%edi,%ecx)
	jns	L517
	movl	-44(%ebp), %eax
	movl	$256, %ecx
	movw	%cx, (%eax,%esi,2)
	movzwl	_numsectors, %eax
	movw	%ax, -36(%ebp)
L516:
	movswl	-36(%ebp), %ebx
	addl	$1, %esi
	addl	$40, %edx
	cmpl	%esi, %ebx
	jg	L519
	testl	%ebx, %ebx
	jle	L515
	movl	_wall, %eax
	movl	_sector, %ecx
	movl	%ebx, -72(%ebp)
	movl	%eax, -68(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, %esi
	leal	(%eax,%ebx,2), %edi
	jmp	L524
	.p2align 5
	.p2align 4,,10
	.p2align 3
L521:
	addl	$2, %esi
	addl	$40, %ecx
	cmpl	%esi, %edi
	je	L666
L524:
	cmpw	$256, (%esi)
	jne	L521
	cmpw	$0, 2(%ecx)
	jle	L521
	movswl	(%ecx), %ebx
	movl	%edi, -60(%ebp)
	movl	%esi, -64(%ebp)
	movl	-68(%ebp), %esi
	movl	%ebx, %eax
	movl	%ebx, -36(%ebp)
	sall	$5, %eax
	addl	$12, %eax
	.p2align 4
	.p2align 3
L523:
	movswl	-2(%esi,%eax), %edx
	testw	%dx, %dx
	js	L522
	movswl	(%esi,%eax), %edi
	movl	-44(%ebp), %ebx
	cmpw	$256, (%ebx,%edi,2)
	jne	L522
	sall	$5, %edx
	movl	$-1, %ebx
	leal	(%esi,%edx), %edi
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	leal	10(%edi), %edx
	subl	%esi, %edx
	movw	%bx, 12(%edi)
	movl	$-1, %ebx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movl	$-1, %edx
	movw	%dx, 10(%edi)
	movl	%eax, %edx
	movl	$-1, %edi
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	leal	-2(%eax), %edx
	shrl	$5, %edx
	movw	%bx, (%esi,%eax)
	addl	$1, _wallchanged(,%edx,4)
	movw	%di, -2(%esi,%eax)
L522:
	movswl	(%ecx), %edx
	movswl	2(%ecx), %edi
	addl	$32, %eax
	addl	$1, -36(%ebp)
	addl	%edi, %edx
	cmpl	-36(%ebp), %edx
	jg	L523
	movl	-64(%ebp), %esi
	movl	-60(%ebp), %edi
	addl	$40, %ecx
	addl	$2, %esi
	cmpl	%esi, %edi
	jne	L524
	.p2align 4
	.p2align 3
L666:
	movl	-72(%ebp), %ebx
L515:
	addl	%ebx, %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L526
	movl	%eax, __ZL5sectq
	movl	$61440, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L667
	movl	%eax, __ZL11tempictoidx
	movl	$61440, 8(%esp)
	movl	$255, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	$0, -88(%ebp)
	movl	$0, -92(%ebp)
L529:
	movl	-88(%ebp), %eax
	addl	_sprite, %eax
	cmpw	$1023, 26(%eax)
	jg	L532
	movswl	14(%eax), %ecx
	movswl	24(%eax), %edi
	leal	-1(%ecx), %edx
	movl	%ecx, -36(%ebp)
	movl	%ecx, %ebx
	movl	%edi, %esi
	cmpl	$30718, %edx
	movl	%edi, %edx
	movl	%edi, -60(%ebp)
	seta	%cl
	shrl	$31, %edx
	orb	%dl, %cl
	movb	%cl, -76(%ebp)
	jne	L530
	cmpw	%si, _numsectors
	jle	L530
	movl	-60(%ebp), %edx
	movl	__ZL8sectoidx, %ecx
	addl	%edx, %edx
	movl	%ecx, -44(%ebp)
	addl	%edx, %ecx
	movl	%edx, -64(%ebp)
	movswl	(%ecx), %edx
	movl	%ecx, -68(%ebp)
	testb	$1, %dh
	jne	L530
	movl	__ZL11numclipmaps, %ecx
	movl	%ecx, -72(%ebp)
	movl	%ecx, -124(%ebp)
	cmpl	$255, %ecx
	jg	L668
	movl	-36(%ebp), %edi
	movzwl	__ZL8pictoidx(%edi,%edi), %ecx
	testw	%cx, %cx
	js	L533
	testw	$511, %dx
	jne	L669
	movzwl	-72(%ebp), %edi
	movw	%di, -60(%ebp)
L538:
	movl	-72(%ebp), %edi
	leal	(%edi,%edi), %edx
	movl	%edx, -112(%ebp)
	addl	%edi, %edx
	movzwl	-60(%ebp), %edi
	movw	%cx, __ZL8clipinfo+6(,%edx,4)
	movl	-36(%ebp), %ecx
	movw	%di, __ZL8pictoidx(%ecx,%ecx)
	movzwl	12(%eax), %ecx
	testb	$2, %cl
	jne	L540
	movzwl	28(%eax), %eax
	andb	$-5, %ah
	cmpw	$512, %ax
	jne	L670
L540:
	movl	-72(%ebp), %edi
	movl	-112(%ebp), %eax
	movl	__ZL5sectq, %ecx
	addl	%edi, %eax
	movw	%di, -64(%ebp)
	movw	%bx, __ZL8clipinfo+4(,%eax,4)
	movl	__ZL12numclipsects, %ebx
	movl	%ecx, -80(%ebp)
	leal	1(%ebx), %edx
	movw	%si, (%ecx,%ebx,2)
	movl	-68(%ebp), %esi
	movl	%edx, -60(%ebp)
	movl	%edx, __ZL12numclipsects
	movl	$-1, %edx
	movw	%bx, -108(%ebp)
	movw	%bx, __ZL8clipinfo(,%eax,4)
	movw	%dx, -68(%ebp)
	movw	%di, (%esi)
	movl	_sector, %esi
L559:
	movl	-80(%ebp), %eax
	movswl	(%eax,%ebx,2), %eax
	leal	(%eax,%eax,4), %eax
	sall	$3, %eax
	movl	%eax, -36(%ebp)
	addl	%esi, %eax
	cmpw	$0, 2(%eax)
	jle	L545
	movl	%ebx, -104(%ebp)
	movswl	(%eax), %eax
	jmp	L558
	.p2align 4,,10
	.p2align 3
L547:
	testb	$1, %ch
	je	L548
	movzwl	-68(%ebp), %esi
	cmpw	$-1, %si
	je	L549
	cmpw	%si, %dx
	jne	L671
L549:
	orw	-64(%ebp), %cx
	movw	%dx, -68(%ebp)
	movw	%cx, (%ebx)
	movl	_sector, %esi
	.p2align 6
	.p2align 4
	.p2align 3
L546:
	movl	-36(%ebp), %edi
	addl	$1, %eax
	leal	(%esi,%edi), %ecx
	movswl	(%ecx), %edx
	movswl	2(%ecx), %ecx
	addl	%ecx, %edx
	cmpl	%eax, %edx
	jle	L672
L558:
	movl	%eax, %edx
	sall	$5, %edx
	addl	_wall, %edx
	movzwl	12(%edx), %edx
	testw	%dx, %dx
	js	L546
	movl	-44(%ebp), %ebx
	movswl	%dx, %edi
	leal	(%ebx,%edi,2), %ebx
	movswl	(%ebx), %ecx
	cmpw	$512, %cx
	jne	L547
	movzwl	-64(%ebp), %edi
	movl	-80(%ebp), %esi
	movw	%di, (%ebx)
	movl	-60(%ebp), %edi
	movzbl	-81(%ebp), %ebx
	movw	%dx, (%esi,%edi,2)
	addl	$1, %edi
	movl	_sector, %esi
	movb	%bl, -76(%ebp)
	movl	%edi, -60(%ebp)
	jmp	L546
	.p2align 4,,10
	.p2align 3
L548:
	cmpl	-72(%ebp), %ecx
	je	L546
	movl	%ecx, %esi
	cmpb	$0, -76(%ebp)
	je	L554
	movl	-60(%ebp), %eax
	movl	%eax, __ZL12numclipsects
L554:
	movl	-48(%ebp), %ecx
	movl	-52(%ebp), %edx
	xorl	%eax, %eax
	jmp	L556
	.p2align 4
	.p2align 4,,10
	.p2align 3
L673:
	addl	$1, %eax
	cmpl	%ecx, %eax
	jnb	L555
L556:
	cmpl	(%edx,%eax,4), %edi
	jl	L673
L555:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L674
L557:
	call	_engineInitClipMaps
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-56(%ebp), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	$4, %eax
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
L596:
	.cfi_restore_state
	movl	$0, -44(%ebp)
L563:
	movl	-72(%ebp), %ebx
	movl	-112(%ebp), %eax
	movl	-44(%ebp), %esi
	addl	%ebx, %eax
	movl	%esi, __ZL8clipinfo+8(,%eax,4)
	leal	1(%ebx), %eax
	movl	%eax, __ZL11numclipmaps
	.p2align 4
	.p2align 3
L530:
	addl	$1, -92(%ebp)
	movl	-92(%ebp), %eax
	addl	$44, -88(%ebp)
	cmpl	$16384, %eax
	jne	L529
L532:
	movl	-120(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	_sector, %eax
	movl	%eax, 4(%esp)
	movl	__ZL10loadsector, %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	-116(%ebp), %ebx
	movl	%ebx, 8(%esp)
	movl	_wall, %eax
	movl	%eax, 4(%esp)
	movl	__ZL8loadwall, %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L512
	movl	%eax, __ZL11loadwallinv
	movl	__ZL8loadwall, %eax
	movl	%eax, -48(%ebp)
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	jle	L582
	movl	$0, -36(%ebp)
	movl	_wall, %esi
	xorl	%edi, %edi
	movl	%ebx, -64(%ebp)
	jmp	L581
L584:
	movl	%edi, -36(%ebp)
L583:
	cmpl	%edi, -40(%ebp)
	je	L675
L581:
	movl	%edi, %eax
	sall	$5, %eax
	leal	(%esi,%eax), %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	$-1, %eax
	movw	%ax, 10(%edx)
	leal	12(%edx), %eax
	subl	%esi, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	$-1, %eax
	movw	%ax, 12(%edx)
	movswl	8(%edx), %edx
	movl	%edi, %eax
	addl	$1, %edi
	cmpl	%eax, %edx
	jge	L583
	movl	-36(%ebp), %ecx
	movl	%edi, %eax
	subl	%ecx, %eax
	movl	%eax, -44(%ebp)
	cmpl	$2, %eax
	jle	L584
	movl	%edi, -60(%ebp)
	leal	1(%eax), %ebx
	sall	$5, %ecx
	.p2align 4
	.p2align 3
L585:
	movl	%ebx, %eax
	subl	$1, %ebx
	cltd
	idivl	-44(%ebp)
	movl	-48(%ebp), %eax
	addl	-36(%ebp), %edx
	sall	$5, %edx
	addl	%edx, %eax
	movl	%ecx, %edx
	movl	(%eax), %edi
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	leal	4(%ecx), %edx
	movl	%edi, (%esi,%ecx)
	movl	_wall, %esi
	shrl	$5, %edx
	movl	4(%eax), %edi
	addl	$1, _wallchanged(,%edx,4)
	leal	(%esi,%ecx), %eax
	addl	$32, %ecx
	leal	16(%eax), %edx
	movl	%edi, 4(%eax)
	subl	%esi, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movl	(%eax), %edx
	movl	%edx, 16(%eax)
	leal	26(%eax), %edx
	subl	%esi, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movl	4(%eax), %edx
	movl	%edx, 26(%eax)
	cmpl	$1, %ebx
	jne	L585
	movl	-60(%ebp), %edi
	jmp	L584
L675:
	movl	-64(%ebp), %ebx
L582:
	movl	-100(%ebp), %esi
	testl	%esi, %esi
	jle	L586
	movl	%ebx, -40(%ebp)
	movl	_sector, %ecx
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L589:
	leal	(%eax,%eax,4), %edi
	sall	$3, %edi
	leal	(%ecx,%edi), %edx
	cmpw	$0, 2(%edx)
	jle	L587
	movl	%eax, -36(%ebp)
	movswl	(%edx), %ebx
	movswl	%ax, %esi
	.p2align 4
	.p2align 3
L588:
	movswl	%bx, %eax
	movl	%esi, %edx
	addl	$1, %ebx
	call	_checksectorpointer
	movl	_sector, %ecx
	leal	(%ecx,%edi), %edx
	movswl	(%edx), %eax
	movswl	2(%edx), %edx
	addl	%edx, %eax
	cmpl	%ebx, %eax
	jg	L588
	movl	-36(%ebp), %eax
L587:
	addl	$1, %eax
	cmpl	-100(%ebp), %eax
	jne	L589
	movl	-40(%ebp), %ebx
L586:
	movl	-116(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	_wall, %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_memcpy
	movzwl	_numwalls, %edx
	movss	__ZL10loadsector, %xmm0
	movss	-48(%ebp), %xmm1
	movzwl	_numsectors, %eax
	sall	$16, %edx
	movl	__ZL11tempictoidx, %ecx
	orl	%edx, %eax
	unpcklps	%xmm1, %xmm0
	movl	%eax, __ZL11clipmapinfo
	xorl	%eax, %eax
	movlps	%xmm0, __ZL11clipmapinfo+4
	jmp	L591
	.p2align 5
	.p2align 4,,10
	.p2align 3
L590:
	addl	$2, %eax
	cmpl	$61440, %eax
	je	L676
L591:
	cmpw	$-1, __ZL8pictoidx(%eax)
	jne	L590
	movzwl	(%ecx,%eax), %edx
	testw	%dx, %dx
	js	L590
	movw	%dx, __ZL8pictoidx(%eax)
	jmp	L590
	.p2align 4,,10
	.p2align 3
L672:
	movl	-104(%ebp), %ebx
L545:
	movl	-60(%ebp), %eax
	addl	$1, %ebx
	cmpl	%eax, %ebx
	jl	L559
	cmpb	$0, -76(%ebp)
	je	L560
	movl	%eax, __ZL12numclipsects
L560:
	cmpw	$-1, -68(%ebp)
	je	L677
	movl	-60(%ebp), %ebx
	movzwl	-68(%ebp), %esi
	movl	-80(%ebp), %edi
	leal	1(%ebx), %eax
	movw	%si, (%edi,%ebx,2)
	movl	-112(%ebp), %ebx
	movl	-72(%ebp), %esi
	movl	%eax, __ZL12numclipsects
	subl	$1, %eax
	leal	(%ebx,%esi), %edx
	movzwl	-108(%ebp), %ebx
	movw	%ax, __ZL8clipinfo+2(,%edx,4)
	cmpw	%ax, %bx
	jg	L596
	movl	$0, -44(%ebp)
	movswl	%bx, %eax
	movl	_sector, %esi
	movl	%eax, -60(%ebp)
	movl	%edi, %eax
L579:
	movl	-60(%ebp), %ecx
	movl	-88(%ebp), %edi
	addl	_sprite, %edi
	movswl	(%eax,%ecx,2), %eax
	movl	(%edi), %ebx
	leal	(%eax,%eax,4), %eax
	movl	%ebx, -104(%ebp)
	movl	4(%edi), %ebx
	sall	$3, %eax
	leal	(%esi,%eax), %ecx
	leal	8(%eax), %edx
	movl	%eax, -108(%ebp)
	movl	$-858993459, %eax
	mull	%edx
	movl	%ebx, -80(%ebp)
	movl	8(%edi), %ebx
	movl	$-858993459, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	4(%ecx), %edx
	subl	%esi, %edx
	subl	%ebx, 8(%ecx)
	mull	%edx
	movl	-112(%ebp), %eax
	addl	-124(%ebp), %eax
	movswl	__ZL8clipinfo(,%eax,4), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	subl	%ebx, 4(%ecx)
	cmpl	-60(%ebp), %eax
	jne	L564
	leal	29(%ecx), %edx
	movl	$-858993459, %eax
	movzbl	20(%edi), %ebx
	subl	%esi, %edx
	mull	%edx
	movl	$-858993459, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	30(%ecx), %edx
	subl	%esi, %edx
	movb	%bl, 29(%ecx)
	movzbl	21(%edi), %ebx
	mull	%edx
	movl	$-858993459, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	20(%ecx), %edx
	subl	%esi, %edx
	movb	%bl, 30(%ecx)
	movzbl	22(%edi), %ebx
	mull	%edx
	movl	$-858993459, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	28(%ecx), %edx
	subl	%esi, %edx
	movb	%bl, 20(%ecx)
	movzbl	23(%edi), %ebx
	mull	%edx
	movl	$-858993459, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	36(%ecx), %edx
	subl	%esi, %edx
	movb	%bl, 28(%ecx)
	movzwl	12(%edi), %ebx
	mull	%edx
	movl	$-858993459, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	38(%ecx), %edx
	subl	%esi, %edx
	movw	%bx, 36(%ecx)
	movzwl	28(%edi), %ebx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%bx, 38(%ecx)
L564:
	leal	22(%ecx), %edx
	movl	$-858993459, %eax
	subl	%esi, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	8(%ecx), %eax
	leal	32(%ecx), %edx
	subl	%esi, %edx
	movl	%eax, 22(%ecx)
	movl	$-858993459, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	4(%ecx), %eax
	movl	%eax, 32(%ecx)
	movl	-72(%ebp), %eax
	leal	(%eax,%eax), %ebx
	movl	%eax, -124(%ebp)
	addl	%ebx, %eax
	movl	%ebx, -112(%ebp)
	movswl	__ZL8clipinfo+2(,%eax,4), %eax
	cmpw	$0, 2(%ecx)
	jle	L565
	movswl	(%ecx), %ebx
	movl	_wall, %edi
	movl	%eax, -76(%ebp)
	movl	%ebx, -36(%ebp)
	jmp	L577
	.p2align 4,,10
	.p2align 3
L569:
	testw	%dx, %dx
	jg	L678
	cmpw	$30719, %ax
	jg	L571
	movzwl	-72(%ebp), %ebx
	movl	__ZL11tempictoidx, %edx
	movw	%bx, (%edx,%eax,2)
	movl	_wall, %edi
	leal	(%edi,%esi), %ebx
L571:
	leal	16(%ebx), %eax
	movl	_sector, %ecx
	addl	$1, -36(%ebp)
	subl	%edi, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	(%ebx), %eax
	movl	%eax, 16(%ebx)
	leal	26(%ebx), %eax
	subl	%edi, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	4(%ebx), %eax
	movl	%eax, 26(%ebx)
	movl	-108(%ebp), %eax
	leal	(%ecx,%eax), %edx
	movswl	(%edx), %eax
	movswl	2(%edx), %edx
	addl	%edx, %eax
	cmpl	-36(%ebp), %eax
	jle	L679
L577:
	movl	-36(%ebp), %eax
	movl	%eax, %esi
	andl	$134217727, %eax
	sall	$5, %esi
	addl	$1, _wallchanged(,%eax,4)
	movl	-104(%ebp), %eax
	subl	%eax, (%edi,%esi)
	movl	%esi, %eax
	movl	_wall, %edi
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	leal	(%edi,%esi), %ebx
	movl	-76(%ebp), %eax
	movl	4(%ebx), %edx
	subl	-80(%ebp), %edx
	movl	%edx, 4(%ebx)
	movl	%eax, -68(%ebp)
	cmpl	-60(%ebp), %eax
	je	L566
	movl	(%ebx), %eax
	movl	-88(%ebp), %ecx
	movl	%eax, -64(%ebp)
	movl	_sprite, %eax
	testb	$2, 12(%eax,%ecx)
	je	L567
	movl	-64(%ebp), %eax
/APP
 # 421 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	-44(%ebp), %eax
	jle	L568
	movl	-64(%ebp), %eax
/APP
 # 422 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, -44(%ebp)
L568:
	movl	%edx, %eax
/APP
 # 423 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, -44(%ebp)
	jge	L566
	movl	%edx, %eax
/APP
 # 424 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, -44(%ebp)
L566:
	movswl	26(%ebx), %eax
	movswl	28(%ebx), %edx
	testw	%ax, %ax
	jg	L569
	leal	-1(%edx), %eax
	cmpw	$30718, %ax
	ja	L571
	movzwl	-72(%ebp), %ebx
	movl	__ZL11tempictoidx, %eax
	movw	%bx, (%eax,%edx,2)
	movl	_wall, %edi
	leal	(%edi,%esi), %ebx
	jmp	L571
L671:
	cmpb	$0, -76(%ebp)
	je	L550
	movl	-60(%ebp), %eax
	movl	%eax, __ZL12numclipsects
L550:
	movl	-48(%ebp), %ecx
	movl	-52(%ebp), %edx
	xorl	%eax, %eax
	jmp	L552
	.p2align 4
	.p2align 4,,10
	.p2align 3
L680:
	addl	$1, %eax
	cmpl	%ecx, %eax
	jnb	L551
L552:
	cmpl	(%edx,%eax,4), %edi
	jl	L680
L551:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L681
L553:
	call	_engineInitClipMaps
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-56(%ebp), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	$3, %eax
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
L533:
	.cfi_restore_state
	movzwl	-72(%ebp), %edi
	movl	$-1, %ecx
	movw	%di, -60(%ebp)
	jmp	L538
L665:
	movl	_g_clipMapFiles, %eax
	movl	(%eax,%esi), %eax
	movl	$LC27, 12(%esp)
	movl	$158, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC26, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L505
L526:
	movl	%ebx, %eax
	call	__Z13handle_memerri
L480:
	movl	$163840, %eax
	call	__Z13handle_memerri
L661:
	movl	$524288, %eax
	call	__Z13handle_memerri
L662:
	movl	$720896, %eax
	call	__Z13handle_memerri
L509:
	movl	-120(%ebp), %eax
	call	__Z13handle_memerri
L512:
	movl	-116(%ebp), %eax
	call	__Z13handle_memerri
L674:
	movl	-72(%ebp), %ebx
	movl	%ebx, 32(%esp)
	movl	-56(%ebp), %ebx
	movl	-92(%ebp), %edx
	subl	(%ebx,%eax,4), %edx
	movl	%esi, 24(%esp)
	movl	%edx, 28(%esp)
	movl	-52(%ebp), %ebx
	subl	(%ebx,%eax,4), %edi
	movl	%edi, 20(%esp)
	movl	_g_clipMapFiles, %edx
	movl	(%edx,%eax,4), %eax
	movl	$LC32, 12(%esp)
	movl	$356, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC26, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L557
L681:
	movl	-52(%ebp), %ebx
	movl	(%ebx,%eax,4), %edx
	subl	%edx, %edi
	movl	%edi, 28(%esp)
	movswl	-68(%ebp), %ecx
	subl	%edx, %ecx
	movl	%ecx, 24(%esp)
	movl	-56(%ebp), %ebx
	movl	-92(%ebp), %edx
	subl	(%ebx,%eax,4), %edx
	movl	%edx, 20(%esp)
	movl	_g_clipMapFiles, %edx
	movl	(%edx,%eax,4), %eax
	movl	$LC31, 12(%esp)
	movl	$338, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC26, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L553
L676:
	movl	__ZL10loadsprite, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	__ZL11tempictoidx, %eax
	subl	$4, %esp
	movl	$0, __ZL10loadsprite
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	xorl	%eax, %eax
	xorl	%edx, %edx
	subl	$4, %esp
	movw	%ax, _numsectors
	movl	$0, __ZL11tempictoidx
	movw	%dx, _numwalls
	call	_initspritelists
	movl	-96(%ebp), %ecx
	testl	%ecx, %ecx
	jne	L682
L592:
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-56(%ebp), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	xorl	%eax, %eax
	subl	$4, %esp
	jmp	L479
L487:
	movl	$4, %eax
	call	__Z13handle_memerri
L682:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L592
	cmpl	$1, -96(%ebp)
	movl	$LC23, %edx
	movl	$LC24, %eax
	movl	$LC34, 12(%esp)
	cmove	%edx, %eax
	movl	$538, 8(%esp)
	movl	$LC26, 4(%esp)
	movl	%eax, 16(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L592
	.p2align 4,,10
	.p2align 3
L567:
	movl	-64(%ebp), %ecx
	imull	%edx, %edx
	imull	%ecx, %ecx
	addl	%edx, %ecx
	call	@ksqrt@4
	movl	-44(%ebp), %ecx
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%eax, -44(%ebp)
	jmp	L566
L678:
	cmpw	%dx, %ax
	jle	L573
	leal	26(%ebx), %eax
	addl	$28, %ebx
	movl	%eax, %edx
	subl	%edi, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movl	%ebx, %edx
	subl	%edi, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
/APP
 # 442 "source/build/src/clip.cpp" 1
	movw (%eax), %cx; movw (%ebx), %dx; movw %cx, (%ebx); movw %dx, (%eax)
 # 0 "" 2
/NO_APP
	movl	__ZL11numclipmaps, %ecx
	movl	_wall, %edi
	movl	%ecx, -72(%ebp)
	leal	(%edi,%esi), %ebx
	movzwl	28(%ebx), %edx
	movswl	26(%ebx), %eax
	movl	%ecx, -124(%ebp)
	addl	%ecx, %ecx
	movl	%ecx, -112(%ebp)
L573:
	cmpw	%ax, %dx
	jle	L660
	movl	__ZL11tempictoidx, %ebx
	movzwl	-72(%ebp), %ecx
	movl	%ebx, -64(%ebp)
	.p2align 5
	.p2align 4
	.p2align 3
L575:
	movl	-64(%ebp), %edi
	movw	%cx, (%edi,%eax,2)
	movl	_wall, %edi
	addl	$1, %eax
	leal	(%edi,%esi), %ebx
	movswl	28(%ebx), %edx
	cmpl	%eax, %edx
	jg	L575
L660:
	movl	-112(%ebp), %eax
	addl	-72(%ebp), %eax
	movswl	__ZL8clipinfo+2(,%eax,4), %eax
	movl	%eax, -76(%ebp)
	movl	%eax, -68(%ebp)
	jmp	L571
L679:
	movl	%ecx, %esi
L578:
	addl	$1, -60(%ebp)
	movl	-68(%ebp), %ebx
	cmpl	%ebx, -60(%ebp)
	jg	L563
	movl	__ZL11numclipmaps, %ebx
	movl	__ZL5sectq, %eax
	movl	%ebx, -72(%ebp)
	jmp	L579
L670:
	movl	-56(%ebp), %edx
	movl	-48(%ebp), %edi
	movw	%si, -36(%ebp)
	xorl	%eax, %eax
	movl	-92(%ebp), %esi
	jmp	L543
	.p2align 4
	.p2align 4,,10
	.p2align 3
L683:
	addl	$1, %eax
	cmpl	%edi, %eax
	jnb	L542
L543:
	cmpl	%esi, (%edx,%eax,4)
	jg	L683
L542:
	movl	__ZN6loguru18g_stderr_verbosityE, %edi
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movzwl	-36(%ebp), %esi
	cmpl	%edx, %edi
	cmovge	%edi, %edx
	cmpl	$-1, %edx
	jl	L540
	andl	$48, %ecx
	movl	$LC22, %edx
	cmpw	$32, %cx
	movl	$LC21, %ecx
	cmove	%ecx, %edx
	movl	%edx, 24(%esp)
	movl	-56(%ebp), %edi
	movl	-92(%ebp), %edx
	subl	(%edi,%eax,4), %edx
	movl	%edx, 20(%esp)
	movl	_g_clipMapFiles, %edx
	movl	(%edx,%eax,4), %eax
	movl	$LC30, 12(%esp)
	movl	$301, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC26, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZL11numclipmaps, %eax
	movl	__ZL8sectoidx, %edi
	movl	-64(%ebp), %ecx
	movl	%eax, -72(%ebp)
	movl	%eax, -124(%ebp)
	addl	%edi, %ecx
	addl	%eax, %eax
	movl	%edi, -44(%ebp)
	movl	%ecx, -68(%ebp)
	movl	%eax, -112(%ebp)
	jmp	L540
L667:
	movl	$61440, %eax
	call	__Z13handle_memerri
L565:
	movl	%eax, -68(%ebp)
	jmp	L578
L668:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L532
	movl	$256, 16(%esp)
	movl	$LC28, 12(%esp)
	movl	$261, 8(%esp)
	movl	$LC26, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L532
L669:
	movl	-60(%ebp), %esi
	xorl	%eax, %eax
	jmp	L536
L684:
	addl	$1, %eax
	cmpl	-48(%ebp), %eax
	jnb	L535
L536:
	movl	-52(%ebp), %ebx
	cmpl	%esi, (%ebx,%eax,4)
	jg	L684
L535:
	movl	__ZN6loguru18g_stderr_verbosityE, %ebx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %ebx
	cmovge	%ebx, %ecx
	cmpl	$-2, %ecx
	jge	L685
L537:
	call	_engineInitClipMaps
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-56(%ebp), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	$2, %eax
	subl	$4, %esp
	jmp	L479
L677:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L686
L562:
	call	_engineInitClipMaps
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	pushl	%eax
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	pushl	%eax
	movl	$5, %eax
	jmp	L479
L685:
	leal	(%edx,%edx,2), %edx
	movswl	__ZL8clipinfo+4(,%edx,4), %edx
	movl	%edx, 32(%esp)
	movl	-52(%ebp), %ebx
	subl	(%ebx,%eax,4), %esi
	movl	%esi, 28(%esp)
	movl	-56(%ebp), %ebx
	movl	-92(%ebp), %edx
	subl	(%ebx,%eax,4), %edx
	movl	%edi, 20(%esp)
	movl	%edx, 24(%esp)
	movl	_g_clipMapFiles, %edx
	movl	(%edx,%eax,4), %eax
	movl	$LC29, 12(%esp)
	movl	$273, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC26, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L537
L686:
	movl	$LC33, 12(%esp)
	movl	$371, 8(%esp)
	movl	$LC26, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L562
	.cfi_endproc
LFE44:
	.section .rdata,"dr"
	.align 4
LC35:
	.ascii "clipmove: clipsectnum >= MAXCLIPSECTORS at (%d,%d,%d) for sprite %d (tile %d) with vector (%d,%d)!\0"
	.align 4
LC36:
	.ascii "clipmove: clipsectnum >= MAXCLIPSECTORS at (%d,%d,%d) with vector (%d,%d)!\0"
	.align 4
LC37:
	.ascii "clipmove: clipnum >= MAXCLIPNUM at (%d,%d,%d) for sprite %d (tile %d) with vector (%d,%d)!\0"
	.align 4
LC38:
	.ascii "clipmove: clipnum >= MAXCLIPNUM at (%d,%d,%d) with vector (%d,%d)!\0"
	.text
	.p2align 4
	.globl	_clipmove
	.def	_clipmove;	.scl	2;	.type	32;	.endef
_clipmove:
LFB45:
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
	subl	$768, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	16(%ebp), %eax
	orl	20(%ebp), %eax
	movl	%eax, 108(%esp)
	je	L687
	movl	12(%ebp), %eax
	movl	$0, 108(%esp)
	movzwl	(%eax), %eax
	movw	%ax, 78(%esp)
	testw	%ax, %ax
	js	L687
	movzwl	36(%ebp), %ebx
	movl	8(%ebp), %edi
	movl	%ebx, 68(%esp)
	movl	36(%ebp), %ebx
	movl	4(%edi), %eax
	movl	20(%ebp), %edi
	shrl	$16, %ebx
	movl	%ebx, 96(%esp)
	movl	8(%ebp), %ebx
	sarl	$14, %edi
	leal	(%eax,%edi), %ecx
	movl	%edi, 120(%esp)
	movl	(%ebx), %edx
	movl	16(%ebp), %ebx
	addl	%ecx, %eax
	movl	%ecx, 60(%esp)
	sarl	%eax
	sarl	$14, %ebx
	movl	%eax, 92(%esp)
	leal	(%edx,%ebx), %esi
	movl	%ebx, %eax
	movl	%ebx, 124(%esp)
	movl	%esi, 56(%esp)
	addl	%edx, %esi
	imull	%ebx, %eax
	movl	%edi, %edx
	imull	%edi, %edx
	sarl	%esi
	movl	%esi, 88(%esp)
	addl	%edx, %eax
/APP
 # 161 "source/build/src/engine_priv.h" 1
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
	movl	$1, __ZL11clipsectnum
	movl	24(%ebp), %ebx
	movl	$0, __ZL13clipspritenum
	leal	1032(%ebx,%eax), %edi
	movl	%esi, %eax
	movl	$0, __ZL15clipmove_warned
	subl	%edi, %eax
	movl	%edi, 104(%esp)
	movl	%eax, 184(%esp)
	movl	92(%esp), %eax
	movl	$0, 212(%esp)
	movl	%eax, %ebx
	subl	%edi, %ebx
	movl	%ebx, 164(%esp)
	movl	%edi, %ebx
	leal	(%esi,%edi), %edi
	addl	%eax, %ebx
	movzwl	78(%esp), %eax
	movl	%edi, 176(%esp)
	movl	%ebx, 136(%esp)
	movswl	_numsectors, %ebx
	movw	%ax, _clipsectorlist
	xorl	%eax, %eax
	addl	$7, %ebx
	movw	%ax, __ZL7clipnum
	sarl	$3, %ebx
	movl	$0, 4(%esp)
	movl	%ebx, 8(%esp)
	movl	$__ZL13clipsectormap, (%esp)
	call	_memset
	movl	12(%ebp), %eax
	movswl	(%eax), %eax
	movl	%eax, %edx
	sarl	$3, %eax
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.4(%edx), %edx
	orb	%dl, __ZL13clipsectormap(%eax)
	movl	_numyaxbunches, %eax
	testl	%eax, %eax
	jle	L689
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL15yax_clipsectmap, (%esp)
	call	_memset
L689:
	movl	96(%esp), %edi
	movl	24(%ebp), %ebx
	movl	$-1, 112(%esp)
	movl	$1, %edx
	movl	$0, 132(%esp)
	testl	%edi, %edi
	sete	77(%esp)
	negl	%ebx
	xorl	%eax, %eax
	movl	%ebx, 116(%esp)
	xorl	%ebx, %ebx
	jmp	L690
	.p2align 4,,10
	.p2align 3
L929:
	addl	$1, %ebx
L694:
	cmpl	%ebx, __ZL13clipspritenum
	jle	L792
L933:
	movl	212(%esp), %eax
	movl	__ZL11clipsectnum, %edx
L690:
	cmpl	%edx, %eax
	jl	L912
	movl	132(%esp), %esi
	testl	%esi, %esi
	je	L928
L692:
	movswl	__ZL14clipspritelist(%ebx,%ebx), %eax
	movl	112(%esp), %edx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	%eax, 132(%esp)
	call	_clipshape_idx_for_sprite
	movl	%eax, 112(%esp)
	testl	%eax, %eax
	js	L929
	movl	8(%ebp), %eax
	movl	132(%esp), %edx
	leal	212(%esp), %ecx
	movl	%eax, (%esp)
	movl	112(%esp), %eax
	call	__Z20clipsprite_initindexiPK13uspritetypev7PiPK4vec3IiE
	movl	%ebx, 52(%esp)
	movl	212(%esp), %eax
L695:
	leal	1(%eax), %edx
	movswl	_clipsectorlist(%eax,%eax), %eax
	movl	%edx, 212(%esp)
	movw	%ax, 100(%esp)
	leal	(%eax,%eax,4), %edx
	movl	%eax, 108(%esp)
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movswl	(%eax), %ebx
	movl	%eax, 72(%esp)
	movswl	2(%eax), %eax
	movl	%ebx, 64(%esp)
	addl	%ebx, %eax
	movl	%eax, 144(%esp)
	cmpl	%eax, %ebx
	jge	L696
	movl	_wall, %edi
	movl	%ebx, %eax
	movl	%ebx, 204(%esp)
	sall	$5, %eax
	movl	%edi, 196(%esp)
	addl	%eax, %edi
	jmp	L752
	.p2align 4,,10
	.p2align 3
L932:
	testw	%ax, %ax
	js	L698
	movl	_sector, %edx
	leal	(%eax,%eax,4), %eax
	movl	%ecx, 216(%esp)
	leal	220(%esp), %ecx
	movl	%ecx, 32(%esp)
	movl	188(%esp), %ecx
	leal	(%edx,%eax,8), %eax
	movl	200(%esp), %edx
	movl	%ebx, 12(%esp)
	movl	%eax, 196(%esp)
	leal	256(%esp), %eax
	movl	%eax, 36(%esp)
	leal	216(%esp), %eax
	movl	%eax, 28(%esp)
	movl	120(%esp), %eax
	movl	%edx, 24(%esp)
	movl	208(%esp), %edx
	movl	%eax, 4(%esp)
	movl	124(%esp), %eax
	movl	%ecx, 20(%esp)
	xorl	%ecx, %ecx
	movl	%edx, 16(%esp)
	movl	152(%esp), %edx
	movl	%eax, (%esp)
	movl	160(%esp), %eax
	movl	$0, 8(%esp)
	movl	%esi, 220(%esp)
	call	_rintersect
	cmpl	$-1, %eax
	je	L705
	movlps	216(%esp), %xmm1
	movl	196(%esp), %eax
	movlps	%xmm1, 152(%esp)
	testb	$1, 14(%eax)
	je	L930
L707:
	movl	196(%esp), %eax
	testb	$1, 12(%eax)
	je	L931
L713:
	movzwl	12(%edi), %eax
	movw	%ax, 128(%esp)
L716:
	cmpw	$0, 128(%esp)
	js	L698
L831:
	movswl	128(%esp), %eax
	movl	%eax, %esi
	sarl	$3, %eax
	movzbl	__ZL13clipsectormap(%eax), %edx
	movl	%esi, %ecx
	andl	$7, %ecx
	movl	%edx, %ebx
	movzbl	__ZL8pow2char.lto_priv.4(%ecx), %ecx
	notl	%ebx
	testb	%cl, %bl
	je	L698
	movl	__ZL11clipsectnum, %ebx
	cmpl	$511, %ebx
	jg	L747
	orl	%ecx, %edx
	movw	%si, _clipsectorlist(%ebx,%ebx)
	movb	%dl, __ZL13clipsectormap(%eax)
	leal	1(%ebx), %eax
	movl	%eax, __ZL11clipsectnum
	.p2align 4
	.p2align 3
L698:
	addl	$1, 204(%esp)
	movl	204(%esp), %eax
	cmpl	%eax, 144(%esp)
	je	L696
	movl	_wall, %eax
	addl	$32, %edi
	movl	%eax, 196(%esp)
L752:
	movswl	8(%edi), %eax
	movl	(%edi), %ebx
	movl	184(%esp), %esi
	sall	$5, %eax
	addl	196(%esp), %eax
	cmpl	%ebx, %esi
	jle	L697
	cmpl	(%eax), %esi
	jg	L698
L697:
	movl	176(%esp), %ecx
	cmpl	%ebx, %ecx
	jge	L699
	cmpl	(%eax), %ecx
	jl	L698
L699:
	movl	4(%edi), %esi
	movl	4(%eax), %ecx
	movl	164(%esp), %edx
	movl	%esi, 208(%esp)
	movl	%ecx, 200(%esp)
	cmpl	%esi, %edx
	jle	L700
	cmpl	%ecx, %edx
	jg	L698
L700:
	movl	136(%esp), %ecx
	cmpl	208(%esp), %ecx
	jge	L701
	cmpl	200(%esp), %ecx
	jl	L698
L701:
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movl	208(%esp), %esi
	movl	200(%esp), %edx
	movl	4(%eax), %eax
	movl	%ecx, 188(%esp)
	subl	%ebx, %ecx
	subl	%esi, %edx
	movl	%ecx, 192(%esp)
	movl	%eax, 152(%esp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 160(%esp)
	movl	152(%esp), %eax
	subl	%esi, %eax
	movl	%eax, %esi
	movl	160(%esp), %eax
	imull	%ecx, %esi
	subl	%ebx, %eax
	movl	%eax, %ecx
	imull	%edx, %ecx
	cmpl	%ecx, %esi
	jl	L698
	movl	192(%esp), %ecx
	testl	%edx, %edx
	movl	176(%esp), %eax
	movl	%edx, 168(%esp)
	cmovle	184(%esp), %eax
	testl	%ecx, %ecx
	movl	%eax, %esi
	movl	164(%esp), %eax
	cmovle	136(%esp), %eax
	subl	%ebx, %esi
	movl	%eax, %ecx
	imull	168(%esp), %esi
	subl	208(%esp), %ecx
	imull	192(%esp), %ecx
	cmpl	%esi, %ecx
	jge	L698
	movswl	12(%edi), %eax
	movl	132(%esp), %edx
	movw	%ax, 128(%esp)
	testl	%edx, %edx
	jne	L932
	cmpw	$0, 128(%esp)
	js	L719
	movzwl	14(%edi), %eax
	andl	68(%esp), %eax
	movl	%eax, 80(%esp)
	jne	L719
	cmpw	$0, _editstatus
	jne	L732
	movl	200(%esp), %eax
	movl	%ecx, 216(%esp)
	leal	256(%esp), %ecx
	movl	%esi, 220(%esp)
	leal	216(%esp), %esi
	movl	152(%esp), %edx
	movl	%eax, 24(%esp)
	movl	188(%esp), %eax
	movl	%ecx, 36(%esp)
	leal	220(%esp), %ecx
	movl	%eax, 20(%esp)
	movl	208(%esp), %eax
	movl	%ecx, 32(%esp)
	xorl	%ecx, %ecx
	movl	%eax, 16(%esp)
	movl	120(%esp), %eax
	movl	%esi, 28(%esp)
	movl	%eax, 4(%esp)
	movl	124(%esp), %eax
	movl	%ebx, 12(%esp)
	movl	%eax, (%esp)
	movl	160(%esp), %eax
	movl	$0, 8(%esp)
	call	_rintersect
	cmpl	$-1, %eax
	je	L733
	movl	216(%esp), %eax
	movl	220(%esp), %edx
L734:
	movl	8(%ebp), %esi
	movl	%eax, 216(%esp)
	movl	%edx, 220(%esp)
	movl	8(%esi), %ecx
	movswl	12(%edi), %esi
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, 12(%esp)
	movl	28(%ebp), %eax
	movl	%esi, %edx
	movl	%eax, (%esp)
	movl	108(%esp), %eax
	movl	32(%ebp), %ecx
	call	__ZL14cliptestsectoriiii4vec2IiEi
	movzwl	100(%esp), %edx
	movl	%eax, 80(%esp)
	cmpw	%dx, 78(%esp)
	jne	L730
	testl	%eax, %eax
	je	L713
	.p2align 4
	.p2align 3
L723:
	movzwl	204(%esp), %eax
	leal	-32768(%eax), %ecx
L741:
	movl	124(%esp), %edx
	movswl	%cx, %ecx
	movl	116(%esp), %esi
	movl	%ebx, %eax
	movl	%ecx, 196(%esp)
	testl	%edx, %edx
	cmovns	24(%ebp), %esi
	movl	%ecx, 4(%esp)
	movl	208(%esp), %ecx
	movl	208(%esp), %edx
	movl	$0, 8(%esp)
	subl	%esi, %eax
	addl	%esi, %ecx
	subl	%esi, %edx
	movl	%ecx, (%esp)
	movl	%eax, %ecx
	call	__ZL11addcliplineiiiisi
	movl	200(%esp), %ecx
	movl	188(%esp), %eax
	movl	$0, 8(%esp)
	movl	%ecx, %edx
	subl	%esi, %eax
	subl	%esi, %edx
	addl	%ecx, %esi
	movl	%eax, %ecx
	movl	%edx, 152(%esp)
	movl	196(%esp), %edx
	movl	%esi, (%esp)
	movl	%edx, 4(%esp)
	movl	152(%esp), %edx
	call	__ZL11addcliplineiiiisi
	movl	120(%esp), %ecx
	movl	116(%esp), %esi
	movl	%ebx, %eax
	movl	208(%esp), %edx
	testl	%ecx, %ecx
	cmovns	24(%ebp), %esi
	movl	$0, 8(%esp)
	subl	%esi, %eax
	subl	%esi, %edx
	movl	%eax, %ecx
	movl	196(%esp), %eax
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	leal	(%ebx,%esi), %eax
	call	__ZL11addcliplineiiiisi
	movl	200(%esp), %ecx
	movl	188(%esp), %eax
	movl	$0, 8(%esp)
	subl	%esi, %ecx
	movl	%ecx, %edx
	movl	%eax, %ecx
	addl	%esi, %eax
	subl	%esi, %ecx
	movl	196(%esp), %esi
	movl	%edx, (%esp)
	movl	%esi, 4(%esp)
	call	__ZL11addcliplineiiiisi
	movl	168(%esp), %esi
	movl	192(%esp), %edx
	testl	%esi, %esi
	movl	116(%esp), %esi
	movl	%esi, %eax
	cmovle	24(%ebp), %eax
	testl	%edx, %edx
	cmovns	24(%ebp), %esi
	movl	%esi, 152(%esp)
	movl	8(%ebp), %esi
	movl	4(%esi), %esi
	movl	%esi, 160(%esp)
	movl	%esi, %ecx
	movl	8(%ebp), %esi
	subl	208(%esp), %ecx
	subl	152(%esp), %ecx
	movl	(%esi), %esi
	imull	192(%esp), %ecx
	movl	$0, 8(%esp)
	movl	%esi, %edx
	movl	%esi, 192(%esp)
	movl	%eax, %esi
	subl	%ebx, %edx
	sarl	%esi
	subl	%eax, %edx
	imull	168(%esp), %edx
	cmpl	%edx, %ecx
	cmovl	%esi, %eax
	movl	152(%esp), %esi
	sarl	%esi
	cmpl	%edx, %ecx
	movl	188(%esp), %ecx
	cmovge	152(%esp), %esi
	movl	208(%esp), %edx
	addl	%eax, %ecx
	addl	%ebx, %eax
	movl	196(%esp), %ebx
	addl	%esi, %edx
	addl	200(%esp), %esi
	movl	%ebx, 4(%esp)
	movl	%esi, (%esp)
	call	__ZL11addcliplineiiiisi
	jmp	L698
L944:
	movl	164(%esp), %eax
	movl	%eax, 208(%esp)
	movl	128(%esp), %eax
	movl	%eax, 192(%esp)
	movl	124(%esp), %eax
	movl	%eax, 188(%esp)
L809:
	movl	188(%esp), %eax
	sall	$4, %eax
	movl	__ZL6clipit+8(%eax), %ebx
	subl	__ZL6clipit(%eax), %ebx
	movl	__ZL6clipit+12(%eax), %esi
	subl	__ZL6clipit+4(%eax), %esi
	movl	%ebx, %eax
	movl	%ebx, 204(%esp)
	imull	%ebx
	movl	%eax, %ecx
	movl	%esi, %eax
	movl	%edx, %ebx
	imull	%esi
	addl	%ecx, %eax
	adcl	%ebx, %edx
	cmpl	$-2147483647, %eax
	movl	%edx, %edi
	sbbl	$-1, %edi
	jl	L813
	xorl	%ecx, %ecx
	movl	$2147483647, %ebx
	movl	%ecx, %edi
	cmpl	%eax, %ebx
	sbbl	%edx, %edi
	movl	%ebx, %edi
	cmovge	%eax, %edi
	cmovge	%edx, %ecx
	movl	%edi, 200(%esp)
	movl	%ecx, 184(%esp)
	testl	%edi, %edi
	jle	L813
	movl	56(%esp), %edx
	subl	192(%esp), %edx
	movl	%edx, %eax
	imull	204(%esp)
	movl	%eax, %ecx
	movl	60(%esp), %eax
	subl	208(%esp), %eax
	movl	%edx, %ebx
	imull	%esi
	addl	%eax, %ecx
	adcl	%edx, %ebx
	xorl	%eax, %eax
	movl	$2147483647, %edx
	cmpl	%ecx, %edx
	movl	%eax, %edx
	sbbl	%ebx, %edx
	movl	$2147483647, %edx
	cmovl	%eax, %ebx
	cmovl	%edx, %ecx
	movl	$-1, %eax
	movl	%ebx, %edx
	cmpl	$-2147483648, %ecx
	sbbl	%eax, %edx
	movl	$-2147483648, %edx
	cmovl	%edx, %ecx
	cmovl	%eax, %ebx
	movl	%ecx, %eax
/APP
 # 1769 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	$0, 196(%esp)
	sarl	$11, %eax
	cmpl	%edi, %eax
	jge	L815
	movl	184(%esp), %eax
	movl	%ebx, %edx
	movl	%edi, 8(%esp)
	shldl	$20, %ecx, %edx
	movl	%eax, 12(%esp)
	movl	%ecx, %eax
	sall	$20, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_tabledivide64.lto_priv.5
	movl	%eax, 196(%esp)
L815:
	movl	204(%esp), %eax
	movl	196(%esp), %edx
/APP
 # 1772 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $20, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	192(%esp), %eax
	movl	196(%esp), %edx
	movl	%eax, 56(%esp)
	movl	%esi, %eax
/APP
 # 1772 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $20, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	208(%esp), %eax
	movl	%eax, 60(%esp)
L813:
	movl	204(%esp), %eax
	movl	16(%ebp), %edx
	movl	20(%ebp), %edi
/APP
 # 1779 "source/build/src/clip.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 200(%esp)
	movl	100(%esp), %eax
	leal	1(%eax), %ecx
	cmpl	$3, %eax
	je	L816
	leal	256(%esp), %eax
	movl	%eax, 196(%esp)
	jmp	L818
	.p2align 4,,10
	.p2align 3
L817:
	cmpl	$3, %ecx
	je	L816
	movl	$3, %ecx
L818:
	movl	196(%esp), %eax
	movl	(%eax,%ecx,4), %eax
	movl	%eax, %edx
	movl	%eax, 204(%esp)
	sall	$4, %edx
	movl	__ZL6clipit+8(%edx), %eax
	movl	__ZL6clipit+12(%edx), %esi
	subl	__ZL6clipit(%edx), %eax
	subl	__ZL6clipit+4(%edx), %esi
	movl	16(%ebp), %edx
/APP
 # 1789 "source/build/src/clip.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	xorl	200(%esp), %eax
	jns	L817
	movl	8(%ebp), %eax
	movl	104(%esp), %ebx
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%ebx, (%esp)
	movl	12(%ebp), %ecx
	call	__ZL16clipupdatesector4vec2IiEPsi
L687:
	movl	108(%esp), %eax
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
L696:
	.cfi_restore_state
	movl	__ZL15clipmove_warned, %edx
	testl	%edx, %edx
	jne	L748
L753:
	movl	132(%esp), %eax
	testl	%eax, %eax
	jne	L759
	cmpb	$0, 77(%esp)
	je	L749
L759:
	movl	212(%esp), %eax
	cmpl	__ZL11clipsectnum, %eax
	jl	L695
L916:
	movl	52(%esp), %ebx
	cmpl	%ebx, __ZL13clipspritenum
	jg	L933
L792:
	movl	132(%esp), %eax
	testl	%eax, %eax
	je	L793
	movzwl	__ZL11origmapinfo+2, %eax
	movzwl	__ZL11origmapinfo, %ebx
	movw	%ax, _numwalls
	movl	__ZL11origmapinfo+4, %eax
	movw	%bx, _numsectors
	movl	%eax, _sector
	movl	__ZL11origmapinfo+8, %eax
	movl	%eax, _wall
	movl	__ZL15origclipsectnum, %eax
	movl	%eax, __ZL11clipsectnum
	addl	%eax, %eax
	movl	%eax, 8(%esp)
	movl	$__ZL18origclipsectorlist, 4(%esp)
	movl	$_clipsectorlist, (%esp)
	call	_memcpy
	movswl	%bx, %eax
	movl	$__ZL17origclipsectormap, 4(%esp)
	addl	$7, %eax
	movl	$__ZL13clipsectormap, (%esp)
	sarl	$3, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
L793:
	movl	20(%ebp), %eax
	movl	$0, 256(%esp)
	movl	$0, 260(%esp)
	movl	%eax, 112(%esp)
	movl	16(%ebp), %eax
	movl	$0, 264(%esp)
	movl	$0, 268(%esp)
	movl	%eax, 116(%esp)
	movl	$3, 96(%esp)
	movl	$3, 100(%esp)
	movl	$0, 108(%esp)
L829:
	movswl	__ZL7clipnum, %ebx
	movl	116(%esp), %eax
	orl	112(%esp), %eax
	leal	-1(%ebx), %edi
	movl	%eax, 120(%esp)
	movl	%edi, 188(%esp)
	jne	L794
	testl	%edi, %edi
	js	L839
L917:
	movl	8(%ebp), %eax
L918:
	movl	(%eax), %eax
	movl	%eax, 192(%esp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 208(%esp)
L796:
	movl	60(%esp), %eax
	movl	$-1, 124(%esp)
	movl	%eax, 164(%esp)
	movl	56(%esp), %eax
	movl	%eax, 128(%esp)
	jmp	L811
	.p2align 4,,10
	.p2align 3
L807:
	subl	$1, 188(%esp)
	cmpl	$-1, 188(%esp)
	je	L934
L811:
	movl	188(%esp), %eax
	sall	$4, %eax
	movl	__ZL6clipit+8(%eax), %edx
	movl	__ZL6clipit+12(%eax), %ebx
	movl	__ZL6clipit+4(%eax), %edi
	movl	__ZL6clipit(%eax), %esi
	movl	%edx, 176(%esp)
	movl	%edx, %eax
	movl	%ebx, %edx
	subl	%edi, %edx
	subl	%esi, %eax
	movl	%edi, 204(%esp)
	movl	%edx, %ecx
	movl	208(%esp), %edx
	movl	%eax, 200(%esp)
	movl	%ecx, 196(%esp)
	subl	%edi, %edx
	imull	%eax, %edx
	movl	192(%esp), %eax
	subl	%esi, %eax
	imull	%ecx, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %edi
	testl	%ecx, %ecx
	jle	L807
	movl	200(%esp), %edx
	movl	164(%esp), %ecx
	movl	%esi, 184(%esp)
	subl	204(%esp), %ecx
	imull	%ecx, %edx
	movl	128(%esp), %ecx
	movl	%ecx, %eax
	subl	%esi, %eax
	imull	196(%esp), %eax
	cmpl	%eax, %edx
	jg	L807
	movl	208(%esp), %eax
	movl	164(%esp), %esi
	movl	204(%esp), %edx
	subl	192(%esp), %ecx
	subl	%eax, %esi
	movl	%ecx, 168(%esp)
	subl	%eax, %edx
	movl	184(%esp), %eax
	subl	192(%esp), %eax
	imull	%ecx, %edx
	imull	%esi, %eax
	cmpl	%eax, %edx
	jg	L807
	movl	176(%esp), %edx
	subl	192(%esp), %edx
	movl	%edx, %ecx
	subl	208(%esp), %ebx
	imull	%esi, %ecx
	imull	168(%esp), %ebx
	cmpl	%ecx, %ebx
	jle	L807
	movl	196(%esp), %edx
	movl	168(%esp), %ecx
	movl	200(%esp), %eax
	imull	%ecx, %edx
	imull	%esi, %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	je	L807
	movl	%ecx, %eax
	movl	%ecx, 144(%esp)
	sarl	$31, %eax
	movl	%esi, 136(%esp)
	movl	%eax, 148(%esp)
	movl	%ecx, %eax
	movl	$256, 132(%esp)
	imull	%edi
	movl	%eax, 176(%esp)
	movl	%esi, %eax
	sarl	$31, %eax
	movl	%edx, 180(%esp)
	movl	%eax, 140(%esp)
	movl	%edi, %eax
	imull	%esi
	movl	%eax, 168(%esp)
	movl	%edx, 172(%esp)
	jmp	L808
	.p2align 4,,10
	.p2align 3
L810:
	movl	144(%esp), %esi
	movl	148(%esp), %edi
	subl	%esi, 176(%esp)
	movl	136(%esp), %esi
	sbbl	%edi, 180(%esp)
	movl	140(%esp), %edi
	subl	%esi, 168(%esp)
	sbbl	%edi, 172(%esp)
	subl	$1, 132(%esp)
	je	L809
L808:
	movl	%ebx, %eax
	movl	180(%esp), %edx
	movl	%ebx, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	176(%esp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_tabledivide64.lto_priv.5
	movl	192(%esp), %edi
	movl	172(%esp), %edx
	movl	%ebx, 8(%esp)
	movl	%eax, %esi
	addl	%eax, %edi
	movl	%ebx, %eax
	movl	%edx, 4(%esp)
	sarl	$31, %eax
	movl	%edi, 152(%esp)
	movl	%eax, 12(%esp)
	movl	168(%esp), %eax
	movl	%eax, (%esp)
	call	_tabledivide64.lto_priv.5
	movl	208(%esp), %edx
	movl	%eax, 160(%esp)
	leal	(%edx,%eax), %ecx
	movl	%edi, %eax
	subl	184(%esp), %eax
	movl	%ecx, %edx
	imull	196(%esp), %eax
	subl	204(%esp), %edx
	imull	200(%esp), %edx
	cmpl	%eax, %edx
	jle	L810
	movl	%esi, %ebx
	movl	%ecx, 204(%esp)
	negl	%ebx
	movl	%ebx, %eax
/APP
 # 952 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	160(%esp), %eax
	negl	%eax
/APP
 # 952 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	128(%esp), %edi
	leal	(%eax,%ebx), %edx
	movl	192(%esp), %eax
	subl	%edi, %eax
/APP
 # 952 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	164(%esp), %esi
	movl	%eax, %ecx
	movl	208(%esp), %eax
	subl	%esi, %eax
/APP
 # 952 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%ecx, %eax
	cmpl	%eax, %edx
	movl	124(%esp), %eax
	cmovl	204(%esp), %esi
	cmovl	152(%esp), %edi
	cmovl	188(%esp), %eax
	movl	%esi, 164(%esp)
	movl	%edi, 128(%esp)
	movl	%eax, 124(%esp)
	jmp	L807
L935:
	movswl	204(%esp), %eax
	xorl	%edx, %edx
	movl	%ecx, 196(%esp)
	call	_yax_getnextwall
	movl	196(%esp), %ecx
	testw	%ax, %ax
	js	L726
	cwtl
	sall	$5, %eax
	movl	%eax, 196(%esp)
	addl	_wall, %eax
	cmpw	$0, 12(%eax)
	js	L726
	movzwl	14(%eax), %eax
	testl	%eax, 68(%esp)
	jne	L726
	movl	8(%ebp), %eax
	movl	%esi, 220(%esp)
	movl	200(%esp), %esi
	movl	%ecx, 216(%esp)
	leal	256(%esp), %ecx
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%ecx, 36(%esp)
	leal	220(%esp), %ecx
	movl	%esi, 24(%esp)
	movl	188(%esp), %esi
	movl	%eax, 152(%esp)
	leal	216(%esp), %eax
	movl	%esi, 20(%esp)
	movl	208(%esp), %esi
	movl	%ecx, 32(%esp)
	xorl	%ecx, %ecx
	movl	%esi, 16(%esp)
	movl	120(%esp), %esi
	movl	%eax, 28(%esp)
	movl	152(%esp), %eax
	movl	%esi, 4(%esp)
	movl	124(%esp), %esi
	movl	%ebx, 12(%esp)
	movl	$0, 8(%esp)
	movl	%esi, (%esp)
	call	_rintersect
	cmpl	$-1, %eax
	je	L728
	movl	216(%esp), %eax
	movl	220(%esp), %edx
L729:
	movl	8(%ebp), %esi
	movl	%eax, 216(%esp)
	movl	%edx, 220(%esp)
	movl	8(%esi), %ecx
	movl	_wall, %esi
	movl	%ecx, 152(%esp)
	movl	196(%esp), %ecx
	movswl	12(%esi,%ecx), %esi
	movl	152(%esp), %ecx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, 12(%esp)
	movl	28(%ebp), %eax
	movl	%esi, %edx
	movl	%eax, (%esp)
	movl	108(%esp), %eax
	movl	32(%ebp), %ecx
	call	__ZL14cliptestsectoriiii4vec2IiEi
	movzwl	100(%esp), %esi
	movl	%eax, 80(%esp)
	cmpw	%si, 78(%esp)
	je	L925
L730:
	movl	8(%ebp), %eax
	movl	108(%esp), %ecx
	movl	4(%eax), %edx
	movl	(%eax), %eax
	call	_inside
	cmpl	$1, %eax
	je	L914
L925:
	movl	80(%esp), %ecx
	testl	%ecx, %ecx
	je	L713
	jmp	L723
	.p2align 4,,10
	.p2align 3
L719:
	movl	108(%esp), %eax
	movl	%ecx, 196(%esp)
	call	_yax_getbunch.constprop.1
	movl	196(%esp), %ecx
	testw	%ax, %ax
	js	L726
	movl	68(%esp), %eax
	movl	%eax, %edx
	sall	$5, %eax
	sall	$9, %edx
	andl	$2048, %eax
	andl	$512, %edx
	orl	%edx, %eax
	movl	72(%esp), %edx
	movzwl	12(%edx), %edx
	testl	%edx, %eax
	je	L935
L726:
	movzwl	100(%esp), %esi
	cmpw	%si, 78(%esp)
	je	L723
	movl	8(%ebp), %eax
	movl	108(%esp), %ecx
	movl	4(%eax), %edx
	movl	(%eax), %eax
	call	_inside
	movl	%eax, 80(%esp)
	cmpl	$1, %eax
	jne	L723
	.p2align 4
	.p2align 3
L914:
	movl	_wall, %eax
	movl	%eax, 196(%esp)
L830:
	movl	64(%esp), %eax
	movl	%ebx, 152(%esp)
	movzwl	78(%esp), %ecx
	movl	144(%esp), %esi
	movl	196(%esp), %ebx
	jmp	L738
	.p2align 5
	.p2align 4,,10
	.p2align 3
L936:
	addl	$1, %eax
	cmpl	%eax, %esi
	je	L740
L738:
	movl	%eax, %edx
	sall	$5, %edx
	cmpw	12(%ebx,%edx), %cx
	jne	L936
	movl	152(%esp), %ebx
	cmpl	%eax, 144(%esp)
	jne	L925
L740:
	movl	__ZL15clipmove_warned, %edx
	testl	%edx, %edx
	jne	L748
	movl	96(%esp), %eax
	testl	%eax, %eax
	jne	L749
	movl	212(%esp), %eax
	cmpl	%eax, __ZL11clipsectnum
	jg	L750
	jmp	L916
	.p2align 4,,10
	.p2align 3
L705:
	movl	8(%ebp), %eax
	movlps	(%eax), %xmm2
	movl	196(%esp), %eax
	movlps	%xmm2, 152(%esp)
	testb	$1, 14(%eax)
	jne	L707
L930:
	leal	248(%esp), %ecx
	movswl	12(%edi), %esi
	movl	156(%esp), %edx
	movl	%ecx, (%esp)
	movlps	152(%esp), %xmm3
	movl	152(%esp), %eax
	movl	%esi, %ecx
	movlps	%xmm3, 248(%esp)
	call	_getsectordist
	movl	_sector, %eax
	leal	(%esi,%esi,4), %edx
	leal	(%eax,%edx,8), %eax
	testb	$2, 14(%eax)
	je	L937
	movl	252(%esp), %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	248(%esp), %edx
	movl	%edx, 4(%esp)
	call	_getflorzofslopeptr.part.0
L709:
	movl	32(%ebp), %esi
	leal	-1(%esi), %edx
	movl	8(%ebp), %esi
	subl	%edx, %eax
	movl	%edx, 160(%esp)
	movl	8(%esi), %esi
	cmpl	%esi, %eax
	jg	L707
	movl	112(%esp), %eax
	movl	156(%esp), %edx
	movlps	152(%esp), %xmm6
	leal	(%eax,%eax,2), %eax
	movl	%edx, 84(%esp)
	movl	84(%esp), %edx
	movswl	__ZL8clipinfo+2(,%eax,4), %ecx
	movl	152(%esp), %eax
	movlps	%xmm6, 240(%esp)
	movl	%eax, 80(%esp)
	movl	__ZL5sectq, %eax
	movswl	(%eax,%ecx,2), %ecx
	movl	%ecx, %eax
	leal	240(%esp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, %ecx
	movl	%eax, 128(%esp)
	movl	80(%esp), %eax
	call	_getsectordist
	movl	128(%esp), %ecx
	movl	_sector, %eax
	leal	(%ecx,%ecx,4), %edx
	leal	(%eax,%edx,8), %eax
	testb	$2, 14(%eax)
	je	L938
	movl	244(%esp), %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	240(%esp), %edx
	movl	%edx, 4(%esp)
	call	_getflorzofslopeptr.part.0
L711:
	movl	160(%esp), %edx
	addl	%edx, %eax
	cmpl	%eax, %esi
	jg	L707
L712:
	movl	132(%esp), %eax
	subl	_sprite, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	leal	-16384(%eax), %ecx
	jmp	L741
	.p2align 4,,10
	.p2align 3
L931:
	movl	112(%esp), %eax
	movl	__ZL5sectq, %esi
	movl	156(%esp), %edx
	movlps	152(%esp), %xmm4
	leal	(%eax,%eax,2), %eax
	movswl	__ZL8clipinfo+2(,%eax,4), %ecx
	movl	152(%esp), %eax
	movlps	%xmm4, 232(%esp)
	movswl	(%esi,%ecx,2), %esi
	leal	232(%esp), %ecx
	movl	%ecx, (%esp)
	movl	%esi, %ecx
	call	_getsectordist
	movl	_sector, %eax
	leal	(%esi,%esi,4), %edx
	leal	(%eax,%edx,8), %eax
	testb	$2, 12(%eax)
	je	L939
	movl	236(%esp), %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	232(%esp), %edx
	movl	%edx, 4(%esp)
	call	_getceilzofslopeptr.part.0
L715:
	movl	28(%ebp), %esi
	movswl	12(%edi), %ecx
	leal	-1(%esi), %edx
	movl	8(%ebp), %esi
	movw	%cx, 128(%esp)
	subl	%edx, %eax
	movl	%edx, 196(%esp)
	movl	8(%esi), %esi
	cmpl	%esi, %eax
	jg	L716
	movlps	152(%esp), %xmm7
	movl	152(%esp), %eax
	movl	%ecx, 152(%esp)
	leal	224(%esp), %ecx
	movl	%ecx, (%esp)
	movl	156(%esp), %edx
	movl	152(%esp), %ecx
	movlps	%xmm7, 224(%esp)
	call	_getsectordist
	movl	152(%esp), %ecx
	movl	_sector, %eax
	leal	(%ecx,%ecx,4), %edx
	leal	(%eax,%edx,8), %eax
	testb	$2, 12(%eax)
	je	L940
	movl	228(%esp), %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	224(%esp), %edx
	movl	%edx, 4(%esp)
	call	_getceilzofslopeptr.part.0
L718:
	movl	196(%esp), %edx
	addl	%edx, %eax
	cmpl	%eax, %esi
	jle	L712
	jmp	L713
	.p2align 4,,10
	.p2align 3
L748:
	testb	$1, %dl
	je	L754
	movl	_sprite, %ecx
	movl	8(%ebp), %ebx
	xorl	%eax, %eax
	jmp	L756
	.p2align 5
	.p2align 4,,10
	.p2align 3
L755:
	addl	$1, %eax
	addl	$44, %ecx
	cmpl	$16384, %eax
	je	L941
L756:
	cmpl	%ecx, %ebx
	jne	L755
	movl	__ZN6loguru18g_stderr_verbosityE, %ebx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %ebx
	cmovl	%ecx, %ebx
	cmpl	$-2, %ebx
	jge	L942
L754:
	andl	$2, %edx
	je	L753
	movl	_sprite, %edx
	movl	8(%ebp), %ecx
	xorl	%eax, %eax
	jmp	L758
	.p2align 5
	.p2align 4,,10
	.p2align 3
L757:
	addl	$1, %eax
	addl	$44, %edx
	cmpl	$16384, %eax
	je	L943
L758:
	cmpl	%edx, %ecx
	jne	L757
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L753
	movl	20(%ebp), %ebx
	movl	%ebx, 40(%esp)
	movl	16(%ebp), %ebx
	movl	%ebx, 36(%esp)
	movl	8(%ebp), %ebx
	movswl	14(%ebx), %edx
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 24(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	(%ebx), %eax
	movl	$LC37, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1468, 8(%esp)
	movl	$LC26, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L753
	.p2align 4,,10
	.p2align 3
L747:
	orl	$1, __ZL15clipmove_warned
	jmp	L698
L928:
	movl	%edx, __ZL15origclipsectnum
	addl	%edx, %edx
	movl	%edx, 8(%esp)
	movl	$_clipsectorlist, 4(%esp)
	movl	$__ZL18origclipsectorlist, (%esp)
	call	_memcpy
	movswl	_numsectors, %eax
	movl	$__ZL13clipsectormap, 4(%esp)
	movl	$__ZL17origclipsectormap, (%esp)
	movl	%eax, %esi
	addl	$7, %eax
	sarl	$3, %eax
	movzwl	%si, %esi
	movl	%eax, 8(%esp)
	call	_memcpy
	movzwl	_numwalls, %eax
	movss	_sector, %xmm0
	movss	_wall, %xmm5
	sall	$16, %eax
	orl	%eax, %esi
	movzwl	__ZL11clipmapinfo, %eax
	unpcklps	%xmm5, %xmm0
	movl	%esi, __ZL11origmapinfo
	movw	%ax, _numsectors
	movzwl	__ZL11clipmapinfo+2, %eax
	movlps	%xmm0, __ZL11origmapinfo+4
	movw	%ax, _numwalls
	movl	__ZL11clipmapinfo+4, %eax
	movl	%eax, _sector
	movl	__ZL11clipmapinfo+8, %eax
	movl	%eax, _wall
	jmp	L692
	.p2align 4,,10
	.p2align 3
L732:
	movzwl	100(%esp), %esi
	cmpw	%si, 78(%esp)
	je	L831
	movl	108(%esp), %ecx
	movl	152(%esp), %edx
	movl	160(%esp), %eax
	call	_inside
	cmpl	$1, %eax
	jne	L831
	jmp	L830
	.p2align 4,,10
	.p2align 3
L749:
	movl	104(%esp), %eax
	movl	108(%esp), %edx
	movl	%eax, 44(%esp)
	movl	124(%esp), %eax
	movl	%eax, 36(%esp)
	movl	120(%esp), %eax
	movl	%eax, 40(%esp)
	movl	88(%esp), %eax
	movl	%eax, 28(%esp)
	movl	92(%esp), %eax
	movl	%eax, 32(%esp)
	movl	176(%esp), %eax
	movl	%eax, 20(%esp)
	movl	136(%esp), %eax
	movl	%eax, 24(%esp)
	movl	184(%esp), %eax
	movl	%eax, 12(%esp)
	movl	164(%esp), %eax
	movl	%eax, 16(%esp)
	movl	96(%esp), %eax
	movl	%eax, 8(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %eax
	movl	24(%ebp), %ecx
	call	__ZL15clipmove_spriteP4vec3IiEiiiii4vec2IiES3_S3_S3_i
	movl	_numyaxbunches, %eax
	testl	%eax, %eax
	jg	L760
L911:
	movl	212(%esp), %eax
	cmpl	__ZL11clipsectnum, %eax
	jge	L915
L750:
	movl	$0, 132(%esp)
	jmp	L695
	.p2align 4,,10
	.p2align 3
L937:
	movl	8(%eax), %eax
	jmp	L709
L939:
	movl	4(%eax), %eax
	jmp	L715
	.p2align 4,,10
	.p2align 3
L934:
	movl	124(%esp), %eax
	testl	%eax, %eax
	jns	L944
L795:
	movl	104(%esp), %eax
	movl	164(%esp), %edx
	movl	%eax, (%esp)
	movl	128(%esp), %eax
	movl	12(%ebp), %ecx
	call	__ZL16clipupdatesector4vec2IiEPsi
	testl	%eax, %eax
	jne	L945
	movl	8(%ebp), %eax
	movl	128(%esp), %ebx
	movl	120(%esp), %ecx
	movl	%ebx, (%eax)
	movl	164(%esp), %ebx
	movl	%ebx, 4(%eax)
	testl	%ecx, %ecx
	je	L687
	subl	$1, 100(%esp)
	je	L687
	movl	124(%esp), %edx
	testl	%edx, %edx
	jns	L829
	jmp	L687
	.p2align 4,,10
	.p2align 3
L945:
	movl	120(%esp), %ebx
	testl	%ebx, %ebx
	je	L687
	movl	124(%esp), %eax
	testl	%eax, %eax
	js	L687
	subl	$1, 96(%esp)
	jne	L829
	jmp	L687
	.p2align 4,,10
	.p2align 3
L794:
	movl	188(%esp), %esi
	testl	%esi, %esi
	js	L840
	movl	24(%ebp), %eax
	sall	$4, %ebx
	addl	$__ZL6clipit-16, %ebx
	subl	$1, %eax
	movl	%eax, 196(%esp)
	jmp	L799
	.p2align 6
	.p2align 4,,10
	.p2align 3
L797:
	subl	$1, %esi
	subl	$16, %ebx
	cmpl	$-1, %esi
	je	L917
L799:
	movl	%esi, %eax
	movl	%esi, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.4(%eax), %eax
	movzbl	__ZL10clipignore(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%cl, %al
	je	L797
	movl	12(%ebx), %eax
	movl	8(%ebx), %edx
	movl	(%ebx), %ecx
	movl	4(%ebx), %edi
	movl	%eax, 204(%esp)
	movl	8(%ebp), %eax
	movl	%edx, 184(%esp)
	movl	4(%eax), %eax
	movl	%ecx, 200(%esp)
	movl	%eax, 208(%esp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%edi, (%esp)
	movl	208(%esp), %edx
	movl	%eax, 192(%esp)
	movl	196(%esp), %eax
	movl	%eax, 12(%esp)
	movl	204(%esp), %eax
	movl	%eax, 8(%esp)
	movl	192(%esp), %eax
	call	_clipinsideboxline
	testl	%eax, %eax
	je	L797
	movl	204(%esp), %eax
	movl	184(%esp), %edx
	movl	%edi, %ebx
	movl	200(%esp), %ecx
	movl	%eax, %esi
	subl	%eax, %ebx
	subl	%ecx, %edx
	subl	%edi, %esi
/APP
 # 969 "source/build/src/clip.cpp" 1
	addl %ebx, %ebx; sbbl %eax, %eax; cmpl %ebx, %eax; adcb $0, %al
 # 0 "" 2
/NO_APP
	movl	%eax, 168(%esp)
	movl	%edx, %ebx
/APP
 # 969 "source/build/src/clip.cpp" 1
	addl %ebx, %ebx; sbbl %eax, %eax; cmpl %ebx, %eax; adcb $0, %al
 # 0 "" 2
/NO_APP
	movl	%eax, 164(%esp)
	movl	%edx, %eax
	movl	%edx, 196(%esp)
/APP
 # 970 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	%esi, 184(%esp)
	movl	%esi, %eax
/APP
 # 970 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 204(%esp)
	movl	192(%esp), %edx
	movl	208(%esp), %eax
	subl	%ecx, %edx
	imull	184(%esp), %edx
	subl	%edi, %eax
	imull	196(%esp), %eax
	cmpl	%eax, %edx
	jl	L841
	cmpl	204(%esp), %ebx
	movl	%edi, 176(%esp)
	movl	192(%esp), %ebx
	movl	208(%esp), %esi
	setle	%cl
	movl	8(%ebp), %edi
	jmp	L803
	.p2align 4,,10
	.p2align 3
L946:
	addl	168(%esp), %ebx
	movl	4(%edi), %esi
	movl	%ebx, (%edi)
L802:
	movl	%esi, %edx
	subl	176(%esp), %edx
	movl	%ebx, %eax
	xorl	$1, %ecx
	imull	196(%esp), %edx
	subl	200(%esp), %eax
	imull	184(%esp), %eax
	movl	%edx, 204(%esp)
	cmpl	%eax, 204(%esp)
	jg	L800
L803:
	testb	%cl, %cl
	je	L946
	addl	164(%esp), %esi
	movl	(%edi), %ebx
	movl	%esi, 4(%edi)
	jmp	L802
L760:
	movl	108(%esp), %edi
	movl	%edi, %eax
	call	_yax_getbunch.constprop.1
	movl	%eax, %ebx
	movl	%edi, %eax
	call	_yax_getbunch.constprop.0
	movl	100(%esp), %ecx
	movl	%eax, %edx
	movl	%edi, %eax
	sarl	$3, %eax
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.4(%ecx), %ecx
	orb	%cl, __ZL15yax_clipsectmap(%eax)
	testw	%dx, %bx
	js	L947
	movzwl	100(%esp), %eax
	leal	256(%esp), %esi
	xorl	%edi, %edi
	movl	$1, 204(%esp)
	movl	%esi, 200(%esp)
	movl	8(%ebp), %esi
	movw	%ax, 256(%esp)
	.p2align 4
	.p2align 3
L763:
	movl	200(%esp), %eax
	movswl	(%eax,%edi,2), %eax
	cmpw	$0, _editstatus
	je	L948
	xorl	%edx, %edx
	call	_yax_getbunch.part.0
L780:
	cmpw	$-1, %ax
	je	L782
	cwtl
	movswl	_headsectbunch+512(%eax,%eax), %ebx
	cmpl	$-1, %ebx
	je	L782
	movl	%edi, 196(%esp)
	jmp	L790
	.p2align 4,,10
	.p2align 3
L785:
	movl	4(%esi), %ecx
	movl	%edx, 208(%esp)
	movl	%ecx, 8(%esp)
	movl	(%esi), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	_getflorzofslopeptr.part.0
	movl	208(%esp), %edx
	movl	%eax, %ecx
L786:
	cmpl	$255, 204(%esp)
	setle	%al
	cmpl	$8191, %edx
	setle	%dl
	testb	%dl, %al
	je	L789
	subl	%ecx, %edi
	movl	%edi, %edx
	negl	%edx
	movl	%edx, %eax
	cmovs	%edi, %eax
	cmpl	$32767, %eax
	jg	L789
	movl	204(%esp), %eax
	movw	%bx, 256(%esp,%eax,2)
	addl	$1, %eax
	movl	%eax, 204(%esp)
	.p2align 5
	.p2align 4
	.p2align 3
L789:
	movswl	_nextsectbunch+8192(%ebx,%ebx), %ebx
	cmpl	$-1, %ebx
	je	L949
L790:
	movswl	_numsectors, %eax
	cmpl	%eax, %ebx
	jnb	L789
	movl	%ebx, %edx
	movl	%ebx, %ecx
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL15yax_clipsectmap(%edx), %eax
	movzbl	__ZL8pow2char.lto_priv.4(%ecx), %ecx
	movb	%al, 208(%esp)
	notl	%eax
	testb	%cl, %al
	je	L789
	movzbl	208(%esp), %eax
	orl	%ecx, %eax
	movb	%al, __ZL15yax_clipsectmap(%edx)
	movl	104(%esp), %eax
	movl	%ebx, %edx
	movl	%eax, 44(%esp)
	movl	124(%esp), %eax
	movl	%eax, 36(%esp)
	movl	120(%esp), %eax
	movl	%eax, 40(%esp)
	movl	88(%esp), %eax
	movl	%eax, 28(%esp)
	movl	92(%esp), %eax
	movl	%eax, 32(%esp)
	movl	176(%esp), %eax
	movl	%eax, 20(%esp)
	movl	136(%esp), %eax
	movl	%eax, 24(%esp)
	movl	184(%esp), %eax
	movl	%eax, 12(%esp)
	movl	164(%esp), %eax
	movl	%eax, 16(%esp)
	movl	96(%esp), %eax
	movl	%eax, 8(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	movl	24(%ebp), %ecx
	movl	%esi, %eax
	call	__ZL15clipmove_spriteP4vec3IiEiiiii4vec2IiES3_S3_S3_i
	movl	4(%esi), %edx
	movl	(%esi), %eax
	movl	%ebx, %ecx
	movl	$0, (%esp)
	call	_getsectordist
	movl	_sector, %ecx
	movl	8(%esi), %edi
	movl	%eax, %edx
	leal	(%ebx,%ebx,4), %eax
	leal	(%ecx,%eax,8), %eax
	testb	$2, 14(%eax)
	jne	L785
	movl	8(%eax), %ecx
	jmp	L786
	.p2align 4,,10
	.p2align 3
L949:
	movl	196(%esp), %edi
L782:
	addl	$1, %edi
	cmpl	204(%esp), %edi
	jl	L763
	movzwl	100(%esp), %eax
	movl	8(%ebp), %esi
	xorl	%edi, %edi
	movl	$1, 204(%esp)
	movw	%ax, 256(%esp)
	.p2align 4
	.p2align 3
L777:
	movl	200(%esp), %eax
	movswl	(%eax,%edi,2), %eax
	cmpw	$0, _editstatus
	je	L764
	movl	$1, %edx
	call	_yax_getbunch.part.0
L765:
	cmpw	$-1, %ax
	je	L769
	cwtl
	movswl	_headsectbunch(%eax,%eax), %ebx
	cmpl	$-1, %ebx
	je	L769
	movl	%edi, 196(%esp)
	jmp	L768
	.p2align 4,,10
	.p2align 3
L910:
	movl	4(%esi), %edx
	movl	%edx, 8(%esp)
	movl	(%esi), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_getceilzofslopeptr.part.0
L776:
	subl	8(%esi), %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	cmpl	$32767, %eax
	jg	L773
	cmpl	$8191, %edi
	setle	%dl
	cmpl	$255, 204(%esp)
	setle	%al
	testb	%al, %dl
	je	L773
	movl	204(%esp), %eax
	movw	%bx, 256(%esp,%eax,2)
	addl	$1, %eax
	movl	%eax, 204(%esp)
	.p2align 5
	.p2align 4
	.p2align 3
L773:
	movswl	_nextsectbunch(%ebx,%ebx), %ebx
	cmpl	$-1, %ebx
	je	L950
L768:
	movswl	_numsectors, %eax
	cmpl	%eax, %ebx
	jnb	L773
	movl	%ebx, %edx
	movl	%ebx, %eax
	sarl	$3, %edx
	andl	$7, %eax
	movzbl	__ZL15yax_clipsectmap(%edx), %ecx
	movzbl	__ZL8pow2char.lto_priv.4(%eax), %eax
	movl	%edx, 208(%esp)
	movl	%ecx, %edi
	notl	%edi
	movl	%edi, %edx
	testb	%al, %dl
	je	L773
	movl	208(%esp), %edi
	orl	%ecx, %eax
	movl	%ebx, %edx
	movb	%al, __ZL15yax_clipsectmap(%edi)
	movl	104(%esp), %eax
	movl	%eax, 44(%esp)
	movl	124(%esp), %eax
	movl	%eax, 36(%esp)
	movl	120(%esp), %eax
	movl	%eax, 40(%esp)
	movl	88(%esp), %eax
	movl	%eax, 28(%esp)
	movl	92(%esp), %eax
	movl	%eax, 32(%esp)
	movl	176(%esp), %eax
	movl	%eax, 20(%esp)
	movl	136(%esp), %eax
	movl	%eax, 24(%esp)
	movl	184(%esp), %eax
	movl	%eax, 12(%esp)
	movl	164(%esp), %eax
	movl	%eax, 16(%esp)
	movl	96(%esp), %eax
	movl	%eax, 8(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	movl	24(%ebp), %ecx
	movl	%esi, %eax
	call	__ZL15clipmove_spriteP4vec3IiEiiiii4vec2IiES3_S3_S3_i
	movl	4(%esi), %edx
	movl	(%esi), %eax
	movl	%ebx, %ecx
	movl	$0, (%esp)
	call	_getsectordist
	movl	_sector, %edx
	movl	%eax, %edi
	leal	(%ebx,%ebx,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$2, 12(%eax)
	jne	L910
	movl	4(%eax), %eax
	jmp	L776
	.p2align 4,,10
	.p2align 3
L950:
	movl	196(%esp), %edi
L769:
	addl	$1, %edi
	cmpl	204(%esp), %edi
	jl	L777
	jmp	L911
	.p2align 4,,10
	.p2align 3
L764:
	movzwl	_yax_bunchnum+2(,%eax,4), %eax
	jmp	L765
L948:
	movzwl	_yax_bunchnum(,%eax,4), %eax
	jmp	L780
L912:
	movl	%ebx, 52(%esp)
	jmp	L695
L816:
	movl	188(%esp), %eax
	sall	$4, %eax
	movl	__ZL6clipit+4(%eax), %ecx
	movl	__ZL6clipit(%eax), %esi
	movl	__ZL6clipit+8(%eax), %edx
	movl	__ZL6clipit+12(%eax), %eax
	movl	%ecx, %ebx
	movl	%eax, %edi
	subl	%esi, %edx
	subl	%eax, %ebx
	subl	%ecx, %edi
/APP
 # 969 "source/build/src/clip.cpp" 1
	addl %ebx, %ebx; sbbl %eax, %eax; cmpl %ebx, %eax; adcb $0, %al
 # 0 "" 2
/NO_APP
	movl	%eax, 176(%esp)
	movl	%edx, %ebx
/APP
 # 969 "source/build/src/clip.cpp" 1
	addl %ebx, %ebx; sbbl %eax, %eax; cmpl %ebx, %eax; adcb $0, %al
 # 0 "" 2
/NO_APP
	movl	%eax, 168(%esp)
	movl	%edx, %eax
/APP
 # 970 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 200(%esp)
	movl	%edi, %eax
	movl	%edi, 204(%esp)
/APP
 # 970 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edi
	movl	60(%esp), %eax
	movl	56(%esp), %ebx
	subl	%ecx, %eax
	subl	%esi, %ebx
	imull	%edx, %eax
	imull	204(%esp), %ebx
	cmpl	%eax, %ebx
	jl	L819
	cmpl	%edi, 200(%esp)
	movl	%edx, 196(%esp)
	setle	%al
	movl	%esi, 200(%esp)
	movl	56(%esp), %edi
	movl	%ecx, 184(%esp)
	movl	60(%esp), %esi
	movl	%eax, %ebx
	jmp	L822
	.p2align 6
	.p2align 4,,10
	.p2align 3
L952:
	addl	176(%esp), %edi
L821:
	movl	%edi, %ecx
	movl	%esi, %eax
	subl	200(%esp), %ecx
	xorl	$1, %ebx
	subl	184(%esp), %eax
	imull	204(%esp), %ecx
	imull	196(%esp), %eax
	cmpl	%eax, %ecx
	jl	L951
L822:
	testb	%bl, %bl
	je	L952
	addl	168(%esp), %esi
	jmp	L821
L951:
	movl	%esi, 60(%esp)
	movl	%edi, 56(%esp)
L819:
	movl	56(%esp), %eax
	subl	192(%esp), %eax
	sall	$14, %eax
	movl	%eax, 116(%esp)
	movl	60(%esp), %eax
	subl	208(%esp), %eax
	sall	$14, %eax
	movl	%eax, 112(%esp)
	cmpl	$3, 100(%esp)
	jne	L823
	movl	188(%esp), %eax
	movzwl	__ZL13clipobjectval(%eax,%eax), %eax
	movl	%eax, 108(%esp)
L823:
	movl	100(%esp), %ebx
	movl	188(%esp), %eax
	movl	%eax, 256(%esp,%ebx,4)
	movl	116(%esp), %ebx
	orl	112(%esp), %ebx
	movl	%eax, 124(%esp)
	movl	%ebx, 120(%esp)
	movl	208(%esp), %ebx
	movl	%ebx, 164(%esp)
	movl	192(%esp), %ebx
	movl	%ebx, 128(%esp)
	jmp	L795
L733:
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	jmp	L734
L938:
	movl	8(%eax), %eax
	jmp	L711
L940:
	movl	4(%eax), %eax
	jmp	L718
L942:
	movl	20(%ebp), %ebx
	movl	%ebx, 40(%esp)
	movl	16(%ebp), %ebx
	movl	%ebx, 36(%esp)
	movl	8(%ebp), %ebx
	movswl	14(%ebx), %edx
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 24(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	(%ebx), %eax
	movl	$LC35, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1451, 8(%esp)
	movl	$LC26, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZL15clipmove_warned, %edx
	jmp	L754
L841:
	movl	192(%esp), %ebx
	movl	208(%esp), %esi
L800:
	movl	12(%ebp), %eax
	movl	%esi, %edx
	movswl	(%eax), %ecx
	movl	%ebx, %eax
	call	_inside
	cmpl	$1, %eax
	movl	8(%ebp), %eax
	je	L918
	movl	192(%esp), %ebx
	movl	%ebx, (%eax)
	movl	208(%esp), %ebx
	movl	%ebx, 4(%eax)
	jmp	L796
L943:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L753
	movl	20(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 24(%esp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 20(%esp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	$LC38, 12(%esp)
	movl	$1474, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC26, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L753
L941:
	movl	__ZN6loguru18g_stderr_verbosityE, %ecx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	cmpl	$-2, %ecx
	jl	L754
	movl	20(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 24(%esp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 20(%esp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	$LC36, 12(%esp)
	movl	$1457, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC26, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZL15clipmove_warned, %edx
	jmp	L754
L947:
	movl	212(%esp), %eax
	cmpl	%eax, __ZL11clipsectnum
	jg	L750
L915:
	movl	$0, 132(%esp)
	movl	52(%esp), %ebx
	jmp	L694
L839:
	movl	60(%esp), %eax
	movl	$0, 112(%esp)
	movl	$0, 116(%esp)
	movl	%eax, 164(%esp)
	movl	56(%esp), %eax
	movl	$-1, 124(%esp)
	movl	%eax, 128(%esp)
	jmp	L795
L728:
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	jmp	L729
L840:
	movl	60(%esp), %eax
	movl	$-1, 124(%esp)
	movl	%eax, 164(%esp)
	movl	56(%esp), %eax
	movl	%eax, 128(%esp)
	jmp	L795
	.cfi_endproc
LFE45:
	.p2align 4
	.globl	_getzrange
	.def	_getzrange;	.scl	2;	.type	32;	.endef
_getzrange:
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
	andl	$-16, %esp
	subl	$356, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movzwl	12(%ebp), %ebx
	movl	8(%ebp), %edi
	movl	36(%ebp), %esi
	testw	%bx, %bx
	js	L1214
	movlps	(%edi), %xmm0
	movl	32(%ebp), %eax
	movl	$0, 256(%esp)
	movlps	%xmm0, 244(%esp)
	movl	(%edi), %ecx
	addl	$1025, %eax
	movlps	%xmm0, 268(%esp)
	movl	%ecx, %edx
	addl	%eax, %ecx
	subl	%eax, %edx
	movl	%ecx, 168(%esp)
	leal	268(%esp), %ecx
	movl	%edx, 180(%esp)
	movl	248(%esp), %edx
	subl	%eax, %edx
	addl	248(%esp), %eax
	movl	%eax, 156(%esp)
	movzwl	%si, %eax
	shrl	$16, %esi
	movl	%edx, 160(%esp)
	movl	4(%edi), %edx
	movl	%eax, 112(%esp)
	movl	(%edi), %eax
	movl	%ecx, (%esp)
	movl	%esi, 164(%esp)
	movswl	%bx, %esi
	movl	%esi, %ecx
	movl	%esi, 52(%esp)
	call	_getsectordist
	movl	24(%ebp), %ecx
	movl	272(%esp), %eax
	leal	(%esi,%esi,4), %edx
	movl	%ecx, 16(%esp)
	movl	16(%ebp), %ecx
	movl	%eax, 8(%esp)
	movl	268(%esp), %eax
	movl	%ecx, 12(%esp)
	movl	%eax, 4(%esp)
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movl	20(%ebp), %edx
	movswl	_numsectors, %eax
	leal	16384(%esi), %ecx
	movl	$1, __ZL15origclipsectnum
	movl	%ecx, (%edx)
	addl	$7, %eax
	movl	28(%ebp), %edx
	sarl	$3, %eax
	movl	%ecx, 44(%esp)
	movl	%ecx, (%edx)
	movl	$1, __ZL16layerclipsectnum
	movw	%bx, __ZL18origclipsectorlist
	movw	%bx, __ZL19layerclipsectorlist
	movw	%bx, _clipsectorlist
	movl	$1, __ZL11clipsectnum
	movl	$0, __ZL13clipspritenum
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL13clipsectormap, (%esp)
	call	_memset
	movl	%esi, %eax
	movl	%ebx, %edx
	movw	%bx, 94(%esp)
	sarl	$3, %eax
	andl	$7, %edx
	movl	$0, 116(%esp)
	xorl	%esi, %esi
	movzbl	__ZL8pow2char.lto_priv.4(%edx), %edx
	orb	%dl, __ZL13clipsectormap(%eax)
	xorl	%ebx, %ebx
	movl	$1, %edx
	movl	112(%esp), %eax
	movl	$-1, 124(%esp)
	movl	$0, 148(%esp)
	sall	$9, %eax
	movl	$-1, 96(%esp)
	andl	$512, %eax
	movl	%eax, 76(%esp)
	.p2align 4
	.p2align 3
L956:
	cmpl	%esi, %edx
	jg	L1200
L1215:
	movswl	__ZL14clipspritelist(%ebx,%ebx), %eax
	movl	124(%esp), %edx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	%eax, 148(%esp)
	call	_clipshape_idx_for_sprite
	movl	%eax, 124(%esp)
	testl	%eax, %eax
	jns	L959
	addl	$1, %ebx
L960:
	cmpl	%ebx, 116(%esp)
	jle	L1044
	movl	__ZL11clipsectnum, %edx
L1041:
	movl	256(%esp), %esi
	cmpl	%esi, %edx
	jle	L1215
L1200:
	movl	%ebx, 100(%esp)
	movl	%edi, 8(%ebp)
	jmp	L958
	.p2align 4,,10
	.p2align 3
L959:
	movl	%edi, (%esp)
	movl	148(%esp), %edx
	leal	256(%esp), %ecx
	movl	124(%esp), %eax
	call	__Z20clipsprite_initindexiPK13uspritetypev7PiPK4vec3IiE
	movl	__ZL11clipsectnum, %eax
	testl	%eax, %eax
	jle	L1209
	movl	124(%esp), %esi
	leal	_clipsectorlist(%eax,%eax), %eax
	movl	%ebx, 140(%esp)
	movl	%eax, 144(%esp)
	leal	(%esi,%esi,2), %edx
	movswl	__ZL8clipinfo+2(,%edx,4), %ecx
	movl	__ZL5sectq, %edx
	leal	(%edx,%ecx,2), %esi
	movl	%esi, 184(%esp)
	movl	$_clipsectorlist, %esi
	.p2align 4
	.p2align 3
L963:
	movl	184(%esp), %eax
	movswl	(%esi), %ebx
	cmpw	(%eax), %bx
	je	L971
	leal	268(%esp), %ecx
	movlps	(%edi), %xmm5
	movl	4(%edi), %edx
	movl	(%edi), %eax
	movl	%ecx, (%esp)
	movl	%ebx, %ecx
	leal	(%ebx,%ebx,4), %ebx
	movlps	%xmm5, 268(%esp)
	call	_getsectordist
	leal	308(%esp), %eax
	leal	0(,%ebx,8), %ecx
	movl	%eax, 16(%esp)
	leal	324(%esp), %eax
	movl	%eax, 12(%esp)
	movl	272(%esp), %eax
	movl	%ecx, 188(%esp)
	movl	%eax, 8(%esp)
	movl	268(%esp), %eax
	movl	%eax, 4(%esp)
	movl	_sector, %eax
	addl	%ecx, %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movl	4(%edi), %edx
	movl	184(%esp), %ebx
	movl	(%edi), %eax
	movlps	(%edi), %xmm6
	movl	%edx, 176(%esp)
	leal	268(%esp), %edx
	movswl	(%ebx), %ecx
	movl	%edx, (%esp)
	movl	176(%esp), %edx
	movl	%eax, 172(%esp)
	movl	172(%esp), %eax
	movlps	%xmm6, 268(%esp)
	call	_getsectordist
	leal	264(%esp), %eax
	movl	%eax, 16(%esp)
	leal	260(%esp), %eax
	movl	%eax, 12(%esp)
	movl	272(%esp), %eax
	movl	%eax, 8(%esp)
	movl	268(%esp), %eax
	movl	%eax, 4(%esp)
	movswl	(%ebx), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movl	148(%esp), %eax
	subl	_sprite, %eax
	sarl	$2, %eax
	movl	188(%esp), %edx
	addl	_sector, %edx
	imull	$-1171354717, %eax, %eax
	addl	$49152, %eax
	testb	$1, 12(%edx)
	jne	L965
	movl	8(%edi), %edx
	movl	260(%esp), %ecx
	cmpl	%ecx, %edx
	jge	L967
	movl	24(%ebp), %ebx
	cmpl	(%ebx), %ecx
	jge	L967
	movl	%ecx, (%ebx)
	movl	28(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	8(%edi), %edx
L967:
	movl	324(%esp), %ecx
	cmpl	%edx, %ecx
	jge	L1208
	movl	16(%ebp), %ebx
	cmpl	(%ebx), %ecx
	jle	L1208
	movl	16(%ebp), %ebx
	movl	%ecx, (%ebx)
	movl	20(%ebp), %ecx
	movl	%eax, (%ecx)
L1208:
	movl	188(%esp), %ebx
	addl	_sector, %ebx
	movl	%ebx, %edx
L965:
	testb	$1, 14(%edx)
	jne	L971
	movl	8(%edi), %edx
	movl	308(%esp), %ecx
	cmpl	%ecx, %edx
	jge	L973
	movl	24(%ebp), %ebx
	cmpl	(%ebx), %ecx
	jge	L973
	movl	%ecx, (%ebx)
	movl	28(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	8(%edi), %edx
L973:
	movl	264(%esp), %ecx
	cmpl	%edx, %ecx
	jge	L971
	movl	16(%ebp), %ebx
	cmpl	(%ebx), %ecx
	jle	L971
	movl	%ecx, (%ebx)
	movl	20(%ebp), %ecx
	movl	%eax, (%ecx)
	.p2align 4
	.p2align 3
L971:
	addl	$2, %esi
	cmpl	%esi, 144(%esp)
	jne	L963
	movl	140(%esp), %ebx
L1209:
	movl	%ebx, 100(%esp)
	movl	256(%esp), %esi
	movl	%edi, 8(%ebp)
L958:
	movswl	_clipsectorlist(%esi,%esi), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movswl	(%eax), %edi
	movswl	2(%eax), %eax
	addl	%edi, %eax
	movl	%eax, 184(%esp)
	cmpl	%eax, %edi
	jge	L975
	movl	148(%esp), %eax
	testl	%eax, %eax
	je	L1216
	movl	%esi, 108(%esp)
	.p2align 4
	.p2align 3
L976:
	movl	_wall, %edx
	movl	%edi, %eax
	sall	$5, %eax
	addl	%edx, %eax
	movswl	12(%eax), %esi
	movw	%si, 140(%esp)
	movl	%esi, 136(%esp)
	testl	%esi, %esi
	js	L1015
	movl	4(%eax), %ebx
	movl	(%eax), %ecx
	movl	%ebx, 188(%esp)
	movswl	8(%eax), %ebx
	sall	$5, %ebx
	addl	%ebx, %edx
	movl	(%edx), %ebx
	movl	4(%edx), %edx
	movl	%edx, 172(%esp)
	movl	180(%esp), %edx
	movl	%ebx, 144(%esp)
	cmpl	%edx, %ecx
	jge	L1016
	cmpl	%ebx, %edx
	jg	L1015
L1016:
	movl	168(%esp), %ebx
	cmpl	%ebx, %ecx
	jle	L1018
	cmpl	144(%esp), %ebx
	jl	L1015
L1018:
	movl	160(%esp), %esi
	cmpl	%esi, 188(%esp)
	jge	L1019
	cmpl	172(%esp), %esi
	jg	L1015
L1019:
	movl	156(%esp), %esi
	cmpl	%esi, 188(%esp)
	jle	L1020
	cmpl	172(%esp), %esi
	jl	L1015
L1020:
	movl	188(%esp), %esi
	movl	172(%esp), %ebx
	movl	144(%esp), %edx
	subl	%esi, %ebx
	movl	%esi, 188(%esp)
	movl	%ebx, 128(%esp)
	movl	8(%ebp), %ebx
	subl	%ecx, %edx
	movl	%edx, 132(%esp)
	movl	4(%ebx), %ebx
	subl	%esi, %ebx
	imull	%edx, %ebx
	movl	8(%ebp), %edx
	movl	(%edx), %edx
	movl	%edx, 120(%esp)
	subl	%ecx, %edx
	imull	128(%esp), %edx
	cmpl	%edx, %ebx
	jl	L1015
	movl	132(%esp), %ebx
	testl	%ebx, %ebx
	jle	L1021
	movl	160(%esp), %edx
	subl	188(%esp), %edx
	imull	%ebx, %edx
	movl	%edx, 120(%esp)
L1022:
	movl	128(%esp), %esi
	testl	%esi, %esi
	jle	L1023
	movl	168(%esp), %edx
	subl	%ecx, %edx
	imull	%edx, %esi
	movl	%esi, %ebx
L1024:
	cmpl	%ebx, 120(%esp)
	jge	L1015
	movzwl	14(%eax), %eax
	testl	%eax, 112(%esp)
	jne	L1015
	movl	124(%esp), %eax
	movzwl	140(%esp), %esi
	leal	(%eax,%eax,2), %eax
	movswl	__ZL8clipinfo+2(,%eax,4), %edx
	movl	__ZL5sectq, %eax
	leal	(%eax,%edx,2), %eax
	movl	%eax, 88(%esp)
	cmpw	%si, (%eax)
	je	L1015
	movl	136(%esp), %eax
	leal	(%eax,%eax,4), %eax
	sall	$3, %eax
	movl	%eax, 80(%esp)
	addl	_sector, %eax
	movl	%eax, 84(%esp)
	testb	$1, 12(%eax)
	je	L1025
	testb	$1, 14(%eax)
	jne	L1015
L1025:
	movl	136(%esp), %esi
	movl	140(%esp), %eax
	sarl	$3, %esi
	andl	$7, %eax
	movzbl	__ZL13clipsectormap(%esi), %edx
	movzbl	__ZL8pow2char.lto_priv.4(%eax), %eax
	movb	%dl, 104(%esp)
	notl	%edx
	testb	%al, %dl
	je	L1026
	movl	__ZL11clipsectnum, %edx
	cmpl	$511, %edx
	jg	L1027
	orb	104(%esp), %al
	movb	%al, __ZL13clipsectormap(%esi)
	leal	1(%edx), %eax
	movl	%eax, __ZL11clipsectnum
	movzwl	140(%esp), %eax
	movw	%ax, _clipsectorlist(%edx,%edx)
L1026:
	movl	180(%esp), %eax
	movl	144(%esp), %esi
	leal	1023(%eax), %edx
	cmpl	%esi, %ecx
	movl	%esi, %eax
	cmovge	%ecx, %eax
	cmpl	%eax, %edx
	jge	L1015
	movl	168(%esp), %eax
	subl	$1023, %eax
	cmpl	%esi, %ecx
	cmovg	%esi, %ecx
	cmpl	%ecx, %eax
	jle	L1015
	movl	160(%esp), %eax
	movl	188(%esp), %ecx
	movl	172(%esp), %esi
	leal	1023(%eax), %edx
	cmpl	%esi, %ecx
	movl	%esi, %eax
	cmovge	%ecx, %eax
	cmpl	%eax, %edx
	jge	L1015
	movl	156(%esp), %eax
	movl	%esi, %edx
	subl	$1023, %eax
	cmpl	%esi, %ecx
	cmovle	%ecx, %edx
	cmpl	%edx, %eax
	jle	L1015
	movl	132(%esp), %esi
	movl	120(%esp), %eax
	movl	%esi, %edx
	sall	$10, %edx
	leal	(%eax,%edx), %ecx
	subl	%edx, %eax
	testl	%esi, %esi
	movl	128(%esp), %esi
	cmovg	%ecx, %eax
	movl	%ebx, %ecx
	movl	%esi, %edx
	sall	$10, %edx
	subl	%edx, %ecx
	addl	%ebx, %edx
	testl	%esi, %esi
	cmovg	%ecx, %edx
	cmpl	%eax, %edx
	jle	L1015
	movl	8(%ebp), %eax
	leal	268(%esp), %ecx
	movlps	(%eax), %xmm3
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%ecx, (%esp)
	movl	136(%esp), %ecx
	movlps	%xmm3, 188(%esp)
	movlps	%xmm3, 268(%esp)
	call	_getsectordist
	leal	260(%esp), %eax
	movl	%eax, 16(%esp)
	leal	264(%esp), %eax
	movl	%eax, 12(%esp)
	movl	272(%esp), %eax
	movl	%eax, 8(%esp)
	movl	268(%esp), %eax
	movl	%eax, 4(%esp)
	movl	80(%esp), %eax
	addl	_sector, %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movl	148(%esp), %eax
	movl	88(%esp), %esi
	subl	_sprite, %eax
	sarl	$2, %eax
	movswl	(%esi), %ecx
	imull	$-1171354717, %eax, %eax
	leal	49152(%eax), %ebx
	movl	8(%ebp), %eax
	movlps	(%eax), %xmm0
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%edx, 192(%esp)
	movl	192(%esp), %edx
	movl	%eax, 188(%esp)
	leal	268(%esp), %eax
	movl	%eax, (%esp)
	movl	188(%esp), %eax
	movlps	%xmm0, 268(%esp)
	call	_getsectordist
	leal	324(%esp), %eax
	movl	%eax, 16(%esp)
	leal	308(%esp), %eax
	movl	%eax, 12(%esp)
	movl	272(%esp), %eax
	movl	%eax, 8(%esp)
	movl	268(%esp), %eax
	movl	%eax, 4(%esp)
	movswl	(%esi), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movl	84(%esp), %eax
	testb	$1, 12(%eax)
	jne	L1032
	movl	8(%ebp), %eax
	movl	308(%esp), %edx
	movl	8(%eax), %eax
	cmpl	%edx, %eax
	jge	L1034
	movl	24(%ebp), %ecx
	cmpl	(%ecx), %edx
	jge	L1034
	movl	28(%ebp), %eax
	movl	%edx, (%ecx)
	movl	%ebx, (%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
L1034:
	movl	264(%esp), %edx
	cmpl	%eax, %edx
	jge	L1032
	movl	16(%ebp), %eax
	cmpl	(%eax), %edx
	jle	L1032
	movl	%edx, (%eax)
	movl	20(%ebp), %eax
	movl	%ebx, (%eax)
	.p2align 4
	.p2align 3
L1032:
	movl	84(%esp), %eax
	testb	$1, 14(%eax)
	jne	L1015
	movl	8(%ebp), %eax
	movl	260(%esp), %edx
	movl	8(%eax), %eax
	cmpl	%edx, %eax
	jge	L1038
	movl	24(%ebp), %ecx
	cmpl	(%ecx), %edx
	jge	L1038
	movl	28(%ebp), %eax
	movl	%edx, (%ecx)
	movl	%ebx, (%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
L1038:
	movl	324(%esp), %edx
	cmpl	%eax, %edx
	jge	L1015
	movl	16(%ebp), %eax
	cmpl	(%eax), %edx
	jle	L1015
	movl	%edx, (%eax)
	movl	20(%ebp), %eax
	movl	%ebx, (%eax)
	.p2align 4
	.p2align 3
L1015:
	addl	$1, %edi
	cmpl	%edi, 184(%esp)
	jne	L976
	movl	108(%esp), %esi
	movl	__ZL11clipsectnum, %edx
	addl	$1, %esi
	movl	%esi, 256(%esp)
	cmpl	%esi, %edx
	jg	L958
	movl	100(%esp), %ebx
	movl	8(%ebp), %edi
	cmpl	%ebx, 116(%esp)
	jg	L1041
	.p2align 4
	.p2align 3
L1040:
	movzwl	__ZL11origmapinfo, %eax
	movl	$0, __ZL13clipspritenum
	movl	$0, __ZL11clipsectnum
	movw	%ax, _numsectors
	movzwl	__ZL11origmapinfo+2, %eax
	movw	%ax, _numwalls
	movl	__ZL11origmapinfo+4, %eax
	movl	%eax, _sector
	movl	__ZL11origmapinfo+8, %eax
	movl	%eax, _wall
L1045:
	movl	_numyaxbunches, %ebx
	testl	%ebx, %ebx
	jle	L953
	movl	112(%esp), %eax
	movswl	94(%esp), %ebx
	movl	76(%esp), %esi
	sall	$5, %eax
	andl	$2048, %eax
	orl	%eax, %esi
	movl	%ebx, %eax
	movl	%esi, 184(%esp)
	call	_yax_getbunch.constprop.1
	movl	%eax, %esi
	movl	%ebx, %eax
	call	_yax_getbunch.constprop.0
	cmpl	$-1, 96(%esp)
	movl	%ebx, 188(%esp)
	movl	$0, 256(%esp)
	movl	$0, __ZL11clipsectnum
	je	L1217
	testw	%si, %si
	js	L1085
	movl	96(%esp), %ecx
	testl	%ecx, %ecx
	je	L1083
	testw	%ax, %ax
	jns	L1218
L953:
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
L1044:
	.cfi_restore_state
	movl	148(%esp), %eax
	testl	%eax, %eax
	jne	L1040
L1043:
	movl	164(%esp), %eax
	testl	%eax, %eax
	je	L1047
	movl	__ZL11clipsectnum, %eax
	testl	%eax, %eax
	jle	L1047
	movl	$0, 144(%esp)
	movl	%ebx, 68(%esp)
	movl	%edi, 8(%ebp)
	.p2align 4
	.p2align 3
L1081:
	movl	144(%esp), %eax
	movswl	_clipsectorlist(%eax,%eax), %eax
	movswl	_headspritesect(%eax,%eax), %eax
	movl	%eax, 188(%esp)
	testl	%eax, %eax
	jns	L1080
	jmp	L1049
	.p2align 4,,10
	.p2align 3
L1050:
	movl	188(%esp), %eax
	movswl	_nextspritesect(%eax,%eax), %eax
	movl	%eax, 188(%esp)
	testl	%eax, %eax
	js	L1049
L1080:
	imull	$44, 188(%esp), %eax
	movl	%eax, 184(%esp)
	addl	_sprite, %eax
	movzwl	12(%eax), %esi
	movw	%si, 172(%esp)
	testl	%esi, 164(%esp)
	je	L1050
	movl	156(%esp), %edi
	movl	160(%esp), %ecx
	movl	180(%esp), %edx
	movl	%edi, 4(%esp)
	movl	168(%esp), %edi
	movl	%edi, (%esp)
	call	__Z14clipsprite_tryPK13uspritetypev7iiii
	movl	%eax, %edi
	testl	%eax, %eax
	jne	L1050
	movl	184(%esp), %ecx
	addl	_sprite, %ecx
	movlps	(%ecx), %xmm7
	movzwl	172(%esp), %esi
	movl	%ecx, 136(%esp)
	movlps	%xmm7, 236(%esp)
	movl	%esi, %eax
	movl	240(%esp), %ebx
	movlps	%xmm7, 228(%esp)
	movl	8(%ebp), %edx
	andl	$48, %eax
	andl	$32, %esi
	movw	%ax, 128(%esp)
	movl	(%edx), %edx
	movlps	%xmm7, 148(%esp)
	movl	%edx, 140(%esp)
	jne	L1051
	cmpw	$16, %ax
	je	L1052
	movzbl	18(%ecx), %eax
	movl	32(%ebp), %ecx
	leal	1(%ecx,%eax,4), %edx
	movl	148(%esp), %eax
	subl	140(%esp), %eax
/APP
 # 2276 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, %edx
	jl	L1050
	movl	8(%ebp), %esi
	movl	%ebx, %eax
	subl	4(%esi), %eax
/APP
 # 2276 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, %edx
	jl	L1050
	movl	136(%esp), %esi
	movswl	14(%esi), %ebx
	movzbl	21(%esi), %ecx
	movswl	_tilesiz+2(,%ebx,4), %eax
	imull	%ecx, %eax
	leal	0(,%eax,4), %edx
	addl	%eax, %eax
	testb	$-128, 12(%esi)
	cmovne	%eax, %edi
	movsbl	_picanm+2(%ebx,%ebx,4), %eax
L1210:
	imull	%ecx, %eax
	movl	8(%esi), %ecx
	sall	$2, %eax
	subl	%eax, %edi
	addl	%edi, %ecx
	movl	%ecx, 132(%esp)
	movl	%ecx, %edi
	subl	%edx, %edi
L1054:
	movl	8(%ebp), %eax
	movl	132(%esp), %esi
	movl	8(%eax), %eax
	cmpl	%esi, %eax
	jle	L1076
	movl	16(%ebp), %ecx
	cmpl	%esi, (%ecx)
	jl	L1077
	je	L1219
	.p2align 4
	.p2align 3
L1076:
	cmpl	%eax, %edi
	jle	L1050
	movl	24(%ebp), %eax
	cmpl	%edi, (%eax)
	jg	L1079
	jne	L1050
	movl	144(%esp), %eax
	movswl	_clipsectorlist(%eax,%eax), %eax
	call	_yax_getbunch.constprop.0
	testw	%ax, %ax
	js	L1050
	.p2align 4
	.p2align 3
L1079:
	movl	24(%ebp), %eax
	movl	%edi, (%eax)
	movl	188(%esp), %eax
	movl	28(%ebp), %edi
	addl	$49152, %eax
	movl	%eax, (%edi)
	jmp	L1050
	.p2align 4,,10
	.p2align 3
L1049:
	addl	$1, 144(%esp)
	movl	144(%esp), %eax
	cmpl	%eax, __ZL11clipsectnum
	jg	L1081
	movl	__ZL13clipspritenum, %eax
	movl	68(%esp), %ebx
	movl	8(%ebp), %edi
	movl	%eax, 116(%esp)
L1047:
	movl	116(%esp), %esi
	testl	%esi, %esi
	jle	L1045
	movzwl	_numwalls, %edx
	movl	__ZL11clipsectnum, %esi
	movl	$0, 148(%esp)
	movzwl	_numsectors, %eax
	movss	_sector, %xmm0
	sall	$16, %edx
	movl	%esi, 256(%esp)
	movss	_wall, %xmm2
	orl	%edx, %eax
	movl	%esi, %edx
	movl	%eax, __ZL11origmapinfo
	movzwl	__ZL11clipmapinfo, %eax
	unpcklps	%xmm2, %xmm0
	movlps	%xmm0, __ZL11origmapinfo+4
	movw	%ax, _numsectors
	movzwl	__ZL11clipmapinfo+2, %eax
	movw	%ax, _numwalls
	movl	__ZL11clipmapinfo+4, %eax
	movl	%eax, _sector
	movl	__ZL11clipmapinfo+8, %eax
	movl	%eax, _wall
	jmp	L956
	.p2align 4,,10
	.p2align 3
L1052:
	movl	136(%esp), %ecx
	movzwl	12(%ecx), %eax
	movzbl	20(%ecx), %esi
	movzwl	28(%ecx), %edx
	movw	%ax, 128(%esp)
	movswl	14(%ecx), %eax
	movsbl	22(%ecx), %ecx
	movl	%eax, 172(%esp)
	leal	_picanm(%eax,%eax,4), %eax
	movl	%eax, 120(%esp)
	movsbl	1(%eax), %eax
	addl	%ecx, %eax
	movl	%eax, %ecx
	negl	%ecx
	testb	$4, 128(%esp)
	cmovne	%ecx, %eax
	movl	%edx, %ecx
	addl	$1536, %edx
	andl	$2047, %edx
	andl	$2047, %ecx
	movswl	_sintable(%edx,%edx), %edx
	movswl	_sintable(%ecx,%ecx), %ecx
	imull	%esi, %edx
	imull	%esi, %ecx
	movl	172(%esp), %esi
	movl	%edx, 132(%esp)
	movswl	_tilesiz(,%esi,4), %edx
	movl	%edx, %esi
	movl	%edx, 184(%esp)
	sarl	%esi
	addl	%eax, %esi
	movl	%ecx, %eax
	movl	%esi, %edx
/APP
 # 414 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	148(%esp), %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	movl	%edx, 148(%esp)
	movl	184(%esp), %edx
/APP
 # 415 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	%esi, %edx
	movl	132(%esp), %eax
/APP
 # 417 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	subl	%eax, %ebx
	movl	184(%esp), %edx
	movl	132(%esp), %eax
	movl	%ebx, %esi
/APP
 # 418 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	8(%ebp), %ebx
	movl	4(%ebx), %ebx
	movl	%ebx, 184(%esp)
	movl	32(%ebp), %ebx
	movl	%esi, (%esp)
	leal	1(%ebx), %edx
	leal	(%esi,%eax), %ebx
	movl	148(%esp), %eax
	movl	%edx, 12(%esp)
	movl	184(%esp), %edx
	addl	%eax, %ecx
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, %ecx
	movl	140(%esp), %eax
	call	_clipinsideboxline
	testl	%eax, %eax
	je	L1050
	movl	136(%esp), %esi
	movl	172(%esp), %eax
	movzbl	21(%esi), %ecx
	movswl	_tilesiz+2(,%eax,4), %eax
	imull	%ecx, %eax
	leal	0(,%eax,4), %edx
	addl	%eax, %eax
	testb	$-128, 128(%esp)
	cmovne	%eax, %edi
	movl	120(%esp), %eax
	movsbl	2(%eax), %eax
	jmp	L1210
	.p2align 4,,10
	.p2align 3
L1051:
	movl	8(%ebp), %eax
	movl	136(%esp), %esi
	movl	4(%eax), %edx
	movzwl	12(%esi), %ecx
	movl	8(%esi), %eax
	movl	%edx, 120(%esp)
	movl	%eax, 132(%esp)
	movl	%ecx, %eax
	notl	%eax
	movw	%cx, 116(%esp)
	testb	$48, %al
	jne	L1058
	movzwl	22(%esi), %ecx
	movw	%cx, 116(%esp)
	testw	%cx, %cx
	je	L1058
	movswl	28(%esi), %ecx
	movl	140(%esp), %edi
	subl	%ebx, %edx
	subl	148(%esp), %edi
	leal	1024(%ecx), %eax
	addl	$512, %ecx
	andl	$2047, %ecx
	andl	$2047, %eax
	movswl	_sintable(%ecx,%ecx), %esi
	movswl	_sintable(%eax,%eax), %eax
	negl	%esi
/APP
 # 1811 "source/build/include/build.h" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
	movswl	116(%esp), %edi
	movl	%eax, %edx
	movl	%edi, %eax
/APP
 # 1813 "source/build/include/build.h" 1
	imull %edx; shrdl $18, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, 132(%esp)
L1058:
	leal	288(%esp), %eax
	movl	%edi, 32(%esp)
	leal	292(%esp), %ecx
	movlps	148(%esp), %xmm3
	movl	%eax, 28(%esp)
	leal	296(%esp), %eax
	leal	300(%esp), %edx
	movl	%eax, 24(%esp)
	leal	304(%esp), %eax
	leal	284(%esp), %edi
	movl	%eax, 20(%esp)
	leal	280(%esp), %ebx
	leal	276(%esp), %eax
	movl	%edi, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	120(%esp), %ecx
	movl	%edx, 4(%esp)
	movl	140(%esp), %edx
	movl	%eax, (%esp)
	movl	136(%esp), %eax
	movl	%ebx, 16(%esp)
	movl	$0, 300(%esp)
	movl	$0, 304(%esp)
	movlps	%xmm3, 276(%esp)
	call	__ZL19get_floorspr_pointsPKviiPiS1_S1_S1_S1_S1_S1_S1_i.lto_priv.0
	movl	276(%esp), %eax
	movl	132(%esp), %edi
	movl	%eax, 148(%esp)
	movl	280(%esp), %eax
	movl	%eax, 136(%esp)
	movl	300(%esp), %eax
	movl	%eax, 100(%esp)
	movl	304(%esp), %eax
	movl	%eax, 108(%esp)
	movl	292(%esp), %eax
	movl	%eax, 140(%esp)
	movl	296(%esp), %eax
	movl	%eax, 120(%esp)
	movl	284(%esp), %eax
	movl	%eax, 116(%esp)
	movl	288(%esp), %eax
	movl	%eax, 104(%esp)
	cmpw	$48, 128(%esp)
	je	L1220
L1060:
	movzwl	172(%esp), %eax
	testb	$64, %al
	je	L1074
	movl	8(%ebp), %esi
	movl	132(%esp), %ecx
	cmpl	%ecx, 8(%esi)
	setg	%dl
	shrw	$3, %ax
	andl	$1, %eax
	xorl	$1, %eax
	cmpb	%al, %dl
	je	L1050
L1074:
	movl	_sprite, %eax
	movl	184(%esp), %esi
	movswl	28(%eax,%esi), %ebx
	movl	32(%ebp), %esi
	leal	256(%ebx), %eax
	leal	4(%esi), %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
/APP
 # 2344 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	subl	$256, %ebx
	movl	%eax, %ecx
	leal	4(%esi), %edx
	andl	$2047, %ebx
	movswl	_sintable(%ebx,%ebx), %eax
/APP
 # 2345 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	148(%esp), %edx
	addl	%ecx, %edx
	movl	%edx, 276(%esp)
	movl	136(%esp), %edx
	addl	%eax, %edx
	movl	%edx, 280(%esp)
	movl	100(%esp), %edx
	subl	%eax, %edx
	movl	%edx, 300(%esp)
	movl	108(%esp), %edx
	addl	%ecx, %edx
	movl	%edx, 304(%esp)
	movl	140(%esp), %edx
	subl	%ecx, %edx
	movl	%edx, 292(%esp)
	movl	120(%esp), %edx
	subl	%eax, %edx
	addl	116(%esp), %eax
	movl	%eax, 284(%esp)
	movl	104(%esp), %eax
	movl	%edx, 296(%esp)
	subl	%ecx, %eax
	movl	%eax, 288(%esp)
	movl	284(%esp), %eax
	movl	288(%esp), %edx
	movl	%eax, 16(%esp)
	movl	292(%esp), %eax
	movl	%edx, 20(%esp)
	movl	296(%esp), %edx
	movl	%eax, 8(%esp)
	movl	300(%esp), %eax
	movl	%edx, 12(%esp)
	movl	304(%esp), %edx
	movl	%eax, (%esp)
	movl	276(%esp), %eax
	movl	%edx, 4(%esp)
	movl	280(%esp), %edx
	call	__ZL20get_floorspr_clipyou4vec2IiES0_S0_S0_
	testl	%eax, %eax
	je	L1050
	jmp	L1054
	.p2align 4,,10
	.p2align 3
L1023:
	movl	180(%esp), %edx
	movl	128(%esp), %ebx
	subl	%ecx, %edx
	imull	%edx, %ebx
	jmp	L1024
	.p2align 4,,10
	.p2align 3
L1021:
	movl	156(%esp), %edx
	subl	188(%esp), %edx
	imull	132(%esp), %edx
	movl	%edx, 120(%esp)
	jmp	L1022
	.p2align 4,,10
	.p2align 3
L1216:
	movl	%esi, 104(%esp)
	.p2align 4
	.p2align 3
L1013:
	movl	_wall, %esi
	movl	%edi, %eax
	sall	$5, %eax
	addl	%esi, %eax
	movswl	12(%eax), %ebx
	movw	%bx, 136(%esp)
	movl	%ebx, 140(%esp)
	testl	%ebx, %ebx
	js	L977
	movswl	8(%eax), %ebx
	movl	4(%eax), %ecx
	movl	(%eax), %edx
	sall	$5, %ebx
	movl	%ecx, 188(%esp)
	addl	%esi, %ebx
	movl	(%ebx), %ecx
	movl	%ecx, 172(%esp)
	movl	4(%ebx), %ecx
	movl	%ecx, 144(%esp)
	cmpl	%edx, 180(%esp)
	jle	L1012
	movl	172(%esp), %ebx
	cmpl	%ebx, 180(%esp)
	jg	L977
L1012:
	cmpl	%edx, 168(%esp)
	jge	L1011
	movl	172(%esp), %ebx
	cmpl	%ebx, 168(%esp)
	jl	L977
L1011:
	movl	188(%esp), %ebx
	cmpl	%ebx, 160(%esp)
	jle	L1010
	movl	144(%esp), %ecx
	cmpl	%ecx, 160(%esp)
	jg	L977
L1010:
	movl	188(%esp), %ebx
	cmpl	%ebx, 156(%esp)
	jge	L1009
	movl	144(%esp), %ecx
	cmpl	%ecx, 156(%esp)
	jl	L977
L1009:
	movl	172(%esp), %ecx
	movl	8(%ebp), %esi
	movl	144(%esp), %ebx
	subl	188(%esp), %ebx
	subl	%edx, %ecx
	movl	%ebx, 128(%esp)
	movl	%ecx, 132(%esp)
	movl	%ecx, 108(%esp)
	movl	%ebx, %ecx
	movl	(%esi), %ebx
	subl	%edx, %ebx
	movl	%ebx, %esi
	movl	8(%ebp), %ebx
	imull	%ecx, %esi
	movl	132(%esp), %ecx
	movl	4(%ebx), %ebx
	movl	%ebx, 120(%esp)
	subl	188(%esp), %ebx
	imull	%ecx, %ebx
	cmpl	%ebx, %esi
	jg	L977
	testl	%ecx, %ecx
	jle	L1221
	movl	160(%esp), %ebx
	subl	188(%esp), %ebx
	imull	108(%esp), %ebx
	movl	%ebx, 132(%esp)
L1008:
	movl	128(%esp), %esi
	testl	%esi, %esi
	jle	L1222
	movl	168(%esp), %ebx
	subl	%edx, %ebx
	imull	128(%esp), %ebx
L1007:
	cmpl	132(%esp), %ebx
	jle	L977
	movzwl	14(%eax), %eax
	testl	%eax, 112(%esp)
	jne	L977
	movl	140(%esp), %eax
	leal	(%eax,%eax,4), %eax
	sall	$3, %eax
	movl	%eax, 120(%esp)
	cmpw	$0, _editstatus
	jne	L1005
	movl	120(%esp), %eax
	addl	_sector, %eax
	testb	$1, 12(%eax)
	jne	L1006
	movl	4(%eax), %ecx
	movl	8(%ebp), %esi
	addl	$768, %ecx
	cmpl	%ecx, 8(%esi)
	jle	L977
L1006:
	testb	$1, 14(%eax)
	je	L1223
	.p2align 4
	.p2align 3
L1005:
	movl	140(%esp), %eax
	movl	136(%esp), %ecx
	sarl	$3, %eax
	andl	$7, %ecx
	movzbl	__ZL13clipsectormap(%eax), %esi
	movl	%eax, 84(%esp)
	movzbl	__ZL8pow2char.lto_priv.4(%ecx), %ecx
	movl	%esi, %eax
	notl	%eax
	movb	%cl, 88(%esp)
	testb	%al, %cl
	je	L1003
	movl	__ZL11clipsectnum, %eax
	cmpl	$511, %eax
	jle	L1002
	orl	$1, __ZL15clipmove_warned
L1003:
	movl	172(%esp), %ecx
	movl	180(%esp), %eax
	cmpl	%ecx, %edx
	movl	%ecx, %esi
	cmovge	%edx, %esi
	addl	$1023, %eax
	cmpl	%eax, %esi
	jle	L977
	cmpl	%ecx, %edx
	movl	168(%esp), %eax
	cmovg	%ecx, %edx
	subl	$1023, %eax
	cmpl	%eax, %edx
	jge	L977
	movl	144(%esp), %esi
	movl	188(%esp), %ecx
	movl	160(%esp), %eax
	cmpl	%esi, %ecx
	movl	%esi, %edx
	cmovge	%ecx, %edx
	addl	$1023, %eax
	cmpl	%eax, %edx
	jle	L977
	cmpl	%esi, %ecx
	movl	156(%esp), %eax
	cmovg	%esi, %ecx
	subl	$1023, %eax
	cmpl	%eax, %ecx
	jge	L977
	movl	108(%esp), %ecx
	movl	132(%esp), %esi
	movl	%ecx, %eax
	movl	%esi, %edx
	sall	$10, %eax
	subl	%eax, %edx
	addl	%esi, %eax
	testl	%ecx, %ecx
	movl	%edx, %esi
	movl	128(%esp), %edx
	cmovg	%eax, %esi
	movl	%ebx, %eax
	sall	$10, %edx
	leal	(%edx,%ebx), %ecx
	movl	128(%esp), %ebx
	subl	%edx, %eax
	testl	%ebx, %ebx
	cmovle	%ecx, %eax
	cmpl	%esi, %eax
	jle	L977
	cmpl	$-1, 96(%esp)
	jne	L999
	movl	84(%esp), %ecx
	movzbl	88(%esp), %eax
	orb	%al, __ZL17origclipsectormap(%ecx)
	movl	__ZL15origclipsectnum, %eax
	movzwl	136(%esp), %ecx
	leal	1(%eax), %edx
	movl	%edx, __ZL15origclipsectnum
	movw	%cx, __ZL18origclipsectorlist(%eax,%eax)
L999:
	movl	__ZL16layerclipsectnum, %eax
	movzwl	136(%esp), %ecx
	movl	140(%esp), %esi
	movw	%cx, __ZL19layerclipsectorlist(%eax,%eax)
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	leal	268(%esp), %ecx
	movl	%edx, __ZL16layerclipsectnum
	movlps	(%eax), %xmm2
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%ecx, (%esp)
	movl	%esi, %ecx
	movlps	%xmm2, 188(%esp)
	movlps	%xmm2, 268(%esp)
	call	_getsectordist
	leal	260(%esp), %eax
	movl	%eax, 16(%esp)
	leal	264(%esp), %eax
	movl	%eax, 12(%esp)
	movl	272(%esp), %eax
	movl	%eax, 8(%esp)
	movl	268(%esp), %eax
	movl	%eax, 4(%esp)
	movl	120(%esp), %eax
	addl	_sector, %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movl	%esi, %eax
	call	_yax_getbunch.constprop.1
	movl	%eax, %ebx
	movl	%esi, %eax
	call	_yax_getbunch.constprop.0
	movl	16(%ebp), %ecx
	movl	%eax, %edx
	movl	264(%esp), %eax
	cmpl	(%ecx), %eax
	jle	L995
	cmpl	$1, 96(%esp)
	je	L998
	testw	%bx, %bx
	js	L1224
L995:
	movl	24(%ebp), %ecx
	movl	260(%esp), %eax
	cmpl	(%ecx), %eax
	jge	L977
	movl	96(%esp), %ecx
	testl	%ecx, %ecx
	jne	L996
	.p2align 4
	.p2align 3
L977:
	addl	$1, %edi
	cmpl	184(%esp), %edi
	jne	L1013
	movl	104(%esp), %esi
	movl	__ZL11clipsectnum, %edx
	addl	$1, %esi
	movl	%esi, 256(%esp)
	cmpl	%esi, %edx
	jg	L958
	movl	100(%esp), %ebx
	movl	8(%ebp), %edi
	cmpl	%ebx, 116(%esp)
	jg	L1041
	jmp	L1043
	.p2align 4,,10
	.p2align 3
L1222:
	movl	180(%esp), %ebx
	subl	%edx, %ebx
	imull	128(%esp), %ebx
	jmp	L1007
	.p2align 4,,10
	.p2align 3
L1221:
	movl	156(%esp), %ebx
	subl	188(%esp), %ebx
	imull	108(%esp), %ebx
	movl	%ebx, 132(%esp)
	jmp	L1008
L1219:
	movl	144(%esp), %eax
	movswl	_clipsectorlist(%eax,%eax), %eax
	call	_yax_getbunch.constprop.1
	testw	%ax, %ax
	js	L1211
	.p2align 4
	.p2align 3
L1077:
	movl	16(%ebp), %eax
	movl	132(%esp), %ecx
	movl	%ecx, (%eax)
	movl	188(%esp), %eax
	movl	20(%ebp), %ecx
	addl	$49152, %eax
	movl	%eax, (%ecx)
L1211:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	jmp	L1076
	.p2align 4,,10
	.p2align 3
L1217:
	testw	%si, %si
	js	L1106
L1083:
	movl	20(%ebp), %eax
	addl	$16384, %ebx
	cmpl	%ebx, (%eax)
	je	L1225
L1106:
	movl	__ZL15origclipsectnum, %ebx
	leal	(%ebx,%ebx), %eax
	movl	%ebx, __ZL16layerclipsectnum
	cmpl	$2, %eax
	jle	L1108
	movl	%eax, 8(%esp)
	movl	$__ZL18origclipsectorlist, 4(%esp)
	movl	$__ZL19layerclipsectorlist, (%esp)
	call	_memcpy
L1109:
	movl	52(%esp), %esi
	movl	%esi, %eax
	call	_yax_getbunch.constprop.1
	movl	%esi, %eax
	call	_yax_getbunch.constprop.0
	movl	__ZL11clipsectnum, %edx
	testw	%ax, %ax
	js	L1134
	movl	28(%ebp), %eax
	movl	44(%esp), %ecx
	cmpl	(%eax), %ecx
	je	L1113
L1134:
	movl	$1, 96(%esp)
L1107:
	testl	%edx, %edx
	jle	L953
	leal	(%edx,%edx), %eax
	movl	%edx, __ZL16layerclipsectnum
	movl	$0, __ZL13clipspritenum
	cmpl	$2, %eax
	jle	L1129
	movl	%eax, 8(%esp)
	movl	$_clipsectorlist, 4(%esp)
	movl	$__ZL19layerclipsectorlist, (%esp)
	movl	%edx, 184(%esp)
	call	_memcpy
	movl	184(%esp), %edx
L1130:
L957:
	movzwl	188(%esp), %eax
	xorl	%ebx, %ebx
	movl	$0, 116(%esp)
	movl	$-1, 124(%esp)
	movl	256(%esp), %esi
	movw	%ax, 94(%esp)
	movl	$0, 148(%esp)
	jmp	L956
	.p2align 4,,10
	.p2align 3
L975:
	movl	__ZL11clipsectnum, %edx
	addl	$1, %esi
	movl	100(%esp), %ebx
	movl	%esi, 256(%esp)
	movl	8(%ebp), %edi
	cmpl	%edx, %esi
	jl	L956
	jmp	L960
	.p2align 4,,10
	.p2align 3
L1220:
	movl	8(%ebp), %eax
	leal	308(%esp), %ebx
	movl	(%eax), %esi
	movl	4(%eax), %ecx
	movl	148(%esp), %eax
	addl	%esi, %eax
	movl	%eax, 308(%esp)
	movl	136(%esp), %eax
	addl	%ecx, %eax
	movl	%eax, 312(%esp)
	movl	140(%esp), %eax
	addl	%esi, %eax
	movl	%eax, 316(%esp)
	movl	120(%esp), %eax
	addl	%ecx, %eax
	movl	%eax, 320(%esp)
	movl	184(%esp), %eax
	addl	_sprite, %eax
	movl	8(%eax), %edi
	movl	%eax, 128(%esp)
	movzwl	12(%eax), %eax
	movl	%edi, 84(%esp)
	movw	%ax, 88(%esp)
	andl	$48, %eax
	movw	%ax, 72(%esp)
L1066:
	cmpw	$48, 72(%esp)
	je	L1226
	addl	$8, %ebx
	leal	324(%esp), %eax
	cmpl	%ebx, %eax
	jne	L1066
	movl	84(%esp), %edi
	movl	%edi, 80(%esp)
L1064:
	movl	32(%ebp), %eax
	addl	$4, %eax
	leal	(%esi,%eax), %ebx
	subl	%eax, %esi
	movl	%ebx, 88(%esp)
	leal	(%ecx,%eax), %ebx
	movss	88(%esp), %xmm2
	subl	%eax, %ecx
	movl	%ebx, 88(%esp)
	movss	88(%esp), %xmm3
	movl	%ecx, 88(%esp)
	movss	88(%esp), %xmm1
	movaps	%xmm2, %xmm4
	movl	%esi, 88(%esp)
	unpcklps	%xmm3, %xmm2
	movss	88(%esp), %xmm0
	unpcklps	%xmm1, %xmm4
	movlhps	%xmm4, %xmm2
	movups	%xmm2, 324(%esp)
	movaps	%xmm0, %xmm2
	unpcklps	%xmm3, %xmm0
	unpcklps	%xmm1, %xmm2
	movlhps	%xmm2, %xmm0
	movups	%xmm0, 340(%esp)
	cmpw	$48, 72(%esp)
	je	L1227
	movl	84(%esp), %esi
	movl	132(%esp), %eax
	cmpl	%eax, %esi
	movl	%eax, %ebx
	movl	%eax, %ecx
	cmovge	%esi, %ebx
	cmovle	%esi, %ecx
L1069:
	movl	80(%esp), %esi
	cmpl	%ebx, %esi
	movl	%esi, %eax
	cmovg	%ebx, %eax
	cmpl	%ebx, %edi
	cmovge	%edi, %eax
	cmpl	%ecx, %esi
	movl	%eax, 132(%esp)
	movl	%esi, %eax
	cmovg	%ecx, %eax
	cmpl	%ecx, %edi
	cmovl	%eax, %edi
	jmp	L1060
L1227:
	movl	128(%esp), %esi
	leal	324(%esp), %eax
	movl	132(%esp), %ecx
	movl	%eax, 88(%esp)
	movswl	22(%esi), %eax
	movl	%ecx, %ebx
	testw	%ax, %ax
	je	L1204
	movl	%eax, 72(%esp)
	movl	324(%esp), %eax
	movl	%edi, 48(%esp)
	movl	328(%esp), %edx
	movl	%eax, 56(%esp)
	movswl	28(%esi), %eax
	movl	56(%esp), %edi
	leal	1024(%eax), %esi
	addl	$512, %eax
	andl	$2047, %esi
	andl	$2047, %eax
	movl	%esi, 64(%esp)
	movl	%eax, 60(%esp)
L1070:
	movl	60(%esp), %esi
	movl	128(%esp), %ebx
	movl	64(%esp), %eax
	movswl	_sintable(%esi,%esi), %esi
	subl	4(%ebx), %edx
	movswl	_sintable(%eax,%eax), %eax
	subl	(%ebx), %edi
	negl	%esi
/APP
 # 1811 "source/build/include/build.h" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	72(%esp), %eax
/APP
 # 1813 "source/build/include/build.h" 1
	imull %edx; shrdl $18, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	132(%esp), %edi
	addl	84(%esp), %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	cmpl	%eax, %edi
	cmovle	%edi, %eax
	leal	356(%esp), %edi
	addl	$8, 88(%esp)
	movl	%eax, 132(%esp)
	movl	88(%esp), %eax
	cmpl	%edi, %eax
	je	L1205
	movl	(%eax), %edi
	movl	4(%eax), %edx
	jmp	L1070
L1085:
	movl	96(%esp), %esi
	testl	%esi, %esi
	je	L1106
	testw	%ax, %ax
	js	L953
L1218:
	movl	28(%ebp), %eax
	addl	$16384, %ebx
	cmpl	(%eax), %ebx
	jne	L953
	movl	__ZL16layerclipsectnum, %ebx
	testl	%ebx, %ebx
	jle	L953
	xorl	%edx, %edx
L1131:
	movl	%edx, 172(%esp)
	xorl	%esi, %esi
	movl	%edi, 8(%ebp)
	.p2align 4
	.p2align 3
L1116:
	movswl	__ZL19layerclipsectorlist(%esi,%esi), %edi
	movl	%edi, %eax
	call	_yax_getbunch.constprop.0
	testw	%ax, %ax
	js	L1114
	movl	_sector, %ecx
	leal	(%edi,%edi,4), %eax
	leal	(%ecx,%eax,8), %eax
	movzwl	14(%eax), %eax
	testl	%eax, 184(%esp)
	jne	L1115
L1114:
	addl	$1, %esi
	cmpl	%esi, %ebx
	jne	L1116
	movl	172(%esp), %edx
	movl	8(%ebp), %edi
L1117:
	leal	__ZL19layerclipsectorlist(%ebx,%ebx), %eax
	movl	%edx, 184(%esp)
	movl	$__ZL19layerclipsectorlist, %esi
	movl	%eax, 148(%esp)
	movl	$0, 172(%esp)
	movl	%edi, 8(%ebp)
L1128:
	movswl	(%esi), %eax
	call	_yax_getbunch.constprop.0
	testw	%ax, %ax
	js	L1119
	cwtl
	movswl	_headsectbunch(%eax,%eax), %ebx
	cmpl	$-1, %ebx
	je	L1119
	movl	%esi, 144(%esp)
	jmp	L1127
L1121:
	movswl	_nextsectbunch(%ebx,%ebx), %ebx
	cmpl	$-1, %ebx
	je	L1228
L1127:
	movl	8(%ebp), %eax
	movswl	%bx, %ecx
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, 204(%esp)
	movl	%esi, %eax
	movl	%edi, 208(%esp)
	movl	208(%esp), %edx
	movl	%esi, 196(%esp)
	movl	%edi, 200(%esp)
	call	_inside
	cmpl	$1, %eax
	jne	L1121
	movl	184(%esp), %ecx
	cmpl	$511, %ecx
	jg	L1122
	movl	%ebx, %eax
	movl	%ebx, %edx
	movw	%bx, _clipsectorlist(%ecx,%ecx)
	sarl	$3, %eax
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.4(%edx), %edx
	orb	%dl, __ZL13clipsectormap(%eax)
	leal	1(%ecx), %eax
	movl	%eax, __ZL11clipsectnum
	movl	8(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
L1123:
	movl	8(%ebp), %eax
	movl	%edi, 272(%esp)
	movl	%ebx, %ecx
	leal	268(%esp), %edi
	movl	%esi, 268(%esp)
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%edi, (%esp)
	call	_getsectordist
	movl	_sector, %edx
	leal	(%ebx,%ebx,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$2, 14(%eax)
	je	L1229
	movl	272(%esp), %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	268(%esp), %edx
	movl	%edx, 4(%esp)
	call	_getflorzofslopeptr.part.0
L1125:
	movl	172(%esp), %edx
	testl	%edx, %edx
	je	L1126
	movl	24(%ebp), %edi
	cmpl	%eax, (%edi)
	jg	L1126
	movl	__ZL11clipsectnum, %eax
	movl	%eax, 184(%esp)
	jmp	L1121
	.p2align 4,,10
	.p2align 3
L1027:
	orl	$1, __ZL15clipmove_warned
	jmp	L1026
L1002:
	movl	%esi, %ecx
	movl	84(%esp), %esi
	orb	88(%esp), %cl
	movb	%cl, __ZL13clipsectormap(%esi)
	leal	1(%eax), %ecx
	movl	%ecx, __ZL11clipsectnum
	movzwl	136(%esp), %ecx
	movw	%cx, _clipsectorlist(%eax,%eax)
	jmp	L1003
L1205:
	movl	%ecx, %ebx
	movl	48(%esp), %edi
	movl	132(%esp), %ecx
	jmp	L1069
L1129:
	jne	L1130
	movzwl	_clipsectorlist, %eax
	movw	%ax, __ZL19layerclipsectorlist
	jmp	L1130
L1226:
	movl	(%ebx), %eax
	movl	4(%ebx), %edx
	movl	%ecx, 56(%esp)
	movl	%ebx, %ecx
	movl	%esi, 48(%esp)
	movl	%eax, 40(%esp)
	movl	84(%esp), %eax
	movl	%eax, %edi
	movl	%eax, 80(%esp)
	movl	128(%esp), %eax
	movl	%edi, 88(%esp)
	movl	40(%esp), %edi
	movswl	22(%eax), %eax
	movw	%ax, 60(%esp)
	movl	%eax, 64(%esp)
	cmpw	$0, 60(%esp)
	je	L1202
L1230:
	movl	128(%esp), %esi
	movswl	28(%esi), %ebx
	subl	4(%esi), %edx
	leal	1024(%ebx), %eax
	addl	$512, %ebx
	andl	$2047, %ebx
	andl	$2047, %eax
	movswl	_sintable(%ebx,%ebx), %esi
	movl	128(%esp), %ebx
	movswl	_sintable(%eax,%eax), %eax
	negl	%esi
	subl	(%ebx), %edi
/APP
 # 1811 "source/build/include/build.h" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	64(%esp), %eax
/APP
 # 1813 "source/build/include/build.h" 1
	imull %edx; shrdl $18, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	88(%esp), %edi
	addl	84(%esp), %eax
	cmpl	%eax, %edi
	cmovg	%eax, %edi
	movl	%edi, 88(%esp)
	movl	80(%esp), %edi
	cmpl	%eax, %edi
	cmovge	%edi, %eax
	addl	$8, %ecx
	movl	%eax, 80(%esp)
	leal	324(%esp), %eax
	cmpl	%ecx, %eax
	je	L1203
	movl	(%ecx), %edi
	movl	4(%ecx), %edx
	cmpw	$0, 60(%esp)
	jne	L1230
L1202:
	movl	48(%esp), %esi
	movl	88(%esp), %edi
	movl	%ecx, %ebx
	movl	80(%esp), %edx
	movl	84(%esp), %eax
L1063:
	cmpl	%eax, %edi
	leal	324(%esp), %ecx
	cmovg	%eax, %edi
	cmpl	%eax, %edx
	cmovl	%eax, %edx
	addl	$8, %ebx
	cmpl	%ebx, %ecx
	jne	L1063
	movl	%edx, 80(%esp)
	movl	56(%esp), %ecx
	movl	%eax, 84(%esp)
	jmp	L1064
	.p2align 4,,10
	.p2align 3
L1203:
	movl	56(%esp), %ecx
	movl	48(%esp), %esi
	movl	88(%esp), %edi
	jmp	L1064
L1223:
	movl	8(%eax), %eax
	movl	8(%ebp), %ecx
	subl	$768, %eax
	cmpl	8(%ecx), %eax
	jg	L1005
	jmp	L977
L1204:
	movl	88(%esp), %edx
	movl	84(%esp), %eax
L1068:
	cmpl	%eax, %ebx
	leal	356(%esp), %esi
	cmovl	%eax, %ebx
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	addl	$8, %edx
	cmpl	%edx, %esi
	jne	L1068
	jmp	L1069
L1225:
	movl	__ZL16layerclipsectnum, %edx
	testl	%edx, %edx
	jle	L1092
	movl	%edi, 8(%ebp)
	movl	%edx, %esi
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L1090:
	movswl	__ZL19layerclipsectorlist(%edi,%edi), %ebx
	movl	%ebx, %eax
	call	_yax_getbunch.constprop.1
	testw	%ax, %ax
	js	L1088
	movl	_sector, %edx
	leal	(%ebx,%ebx,4), %eax
	leal	(%edx,%eax,8), %eax
	movzwl	12(%eax), %eax
	testl	%eax, 184(%esp)
	jne	L1089
L1088:
	addl	$1, %edi
	cmpl	%esi, %edi
	jne	L1090
	movl	8(%ebp), %edi
	movl	%esi, %edx
L1091:
	movl	$0, 172(%esp)
	movl	$__ZL19layerclipsectorlist, %esi
	movl	%edi, 8(%ebp)
	leal	__ZL19layerclipsectorlist(%edx,%edx), %edi
L1105:
	movswl	(%esi), %eax
	call	_yax_getbunch.constprop.1
	testw	%ax, %ax
	js	L1094
	cwtl
	movswl	_headsectbunch+512(%eax,%eax), %ebx
	cmpl	$-1, %ebx
	je	L1094
	movl	%esi, 148(%esp)
	movl	%edi, 144(%esp)
	jmp	L1104
L1097:
	movswl	_nextsectbunch+8192(%ebx,%ebx), %ebx
	cmpl	$-1, %ebx
	je	L1231
L1104:
	movl	8(%ebp), %eax
	movswl	%bx, %ecx
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, 220(%esp)
	movl	%esi, %eax
	movl	%edi, 224(%esp)
	movl	224(%esp), %edx
	movl	%esi, 212(%esp)
	movl	%edi, 216(%esp)
	call	_inside
	cmpl	$1, %eax
	jne	L1097
	movl	__ZL11clipsectnum, %eax
	cmpl	$511, %eax
	jg	L1098
	movl	%ebx, %edx
	movl	%ebx, %ecx
	movw	%bx, _clipsectorlist(%eax,%eax)
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.4(%ecx), %ecx
	orb	%cl, __ZL13clipsectormap(%edx)
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, __ZL11clipsectnum
	movl	(%eax), %esi
	movl	4(%eax), %edi
L1099:
	movl	8(%ebp), %eax
	movl	%edi, 272(%esp)
	movl	%ebx, %ecx
	leal	268(%esp), %edi
	movl	%esi, 268(%esp)
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%edi, (%esp)
	call	_getsectordist
	movl	_sector, %edx
	leal	(%ebx,%ebx,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$2, 12(%eax)
	je	L1232
	movl	272(%esp), %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	268(%esp), %edx
	movl	%edx, 4(%esp)
	call	_getceilzofslopeptr.part.0
L1101:
	movl	172(%esp), %edi
	testl	%edi, %edi
	je	L1102
	movl	16(%ebp), %edi
	cmpl	%eax, (%edi)
	jge	L1097
L1102:
	movl	20(%ebp), %edi
	leal	16384(%ebx), %edx
	movl	%ebx, 188(%esp)
	movl	$1, 172(%esp)
	movl	%edx, (%edi)
	movl	16(%ebp), %edi
	movl	%eax, (%edi)
	movswl	_nextsectbunch+8192(%ebx,%ebx), %ebx
	cmpl	$-1, %ebx
	jne	L1104
L1231:
	movl	148(%esp), %esi
	movl	144(%esp), %edi
L1094:
	addl	$2, %esi
	cmpl	%edi, %esi
	jne	L1105
	movl	8(%ebp), %edi
L1092:
	movl	__ZL11clipsectnum, %edx
	testl	%edx, %edx
	je	L1106
L1233:
	movl	$0, 96(%esp)
	jmp	L1107
L1214:
	movl	16(%ebp), %eax
	movl	$-2147483648, (%eax)
	movl	20(%ebp), %eax
	movl	$-1, (%eax)
	movl	24(%ebp), %eax
	movl	$2147483647, (%eax)
	movl	28(%ebp), %eax
	movl	$-1, (%eax)
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
L1089:
	.cfi_restore_state
	cmpl	%esi, %edi
	movl	%esi, %edx
	movl	8(%ebp), %edi
	je	L1091
	movl	__ZL11clipsectnum, %edx
	testl	%edx, %edx
	je	L1106
	jmp	L1233
L1108:
	jne	L1109
	movzwl	__ZL18origclipsectorlist, %eax
	movw	%ax, __ZL19layerclipsectorlist
	jmp	L1109
L1228:
	movl	144(%esp), %esi
L1119:
	addl	$2, %esi
	cmpl	%esi, 148(%esp)
	jne	L1128
	movl	$1, 96(%esp)
	movl	184(%esp), %edx
	movl	8(%ebp), %edi
	jmp	L1107
L1115:
	movl	172(%esp), %edx
	movl	8(%ebp), %edi
	cmpl	%esi, %ebx
	jne	L1134
	jmp	L1117
	.p2align 4,,10
	.p2align 3
L1098:
	orl	$1, __ZL15clipmove_warned
	jmp	L1099
L1126:
	movl	28(%ebp), %edi
	leal	16384(%ebx), %edx
	movl	%ebx, 188(%esp)
	movl	$1, 172(%esp)
	movl	%edx, (%edi)
	movl	24(%ebp), %edi
	movl	%eax, (%edi)
	movl	__ZL11clipsectnum, %eax
	movl	%eax, 184(%esp)
	jmp	L1121
L1232:
	movl	4(%eax), %eax
	jmp	L1101
L1122:
	orl	$1, __ZL15clipmove_warned
	jmp	L1123
L1229:
	movl	8(%eax), %eax
	jmp	L1125
L998:
	movl	24(%ebp), %ecx
	movl	260(%esp), %eax
	cmpl	%eax, (%ecx)
	jle	L977
L996:
	testw	%dx, %dx
	jns	L977
	movl	24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	140(%esp), %eax
	movl	28(%ebp), %ecx
	addl	$16384, %eax
	movl	%eax, (%ecx)
	jmp	L977
L1224:
	movl	16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	140(%esp), %eax
	movl	20(%ebp), %ecx
	addl	$16384, %eax
	movl	%eax, (%ecx)
	jmp	L995
L1113:
	testl	%ebx, %ebx
	jg	L1131
	jmp	L1134
	.cfi_endproc
LFE55:
	.p2align 4
	.globl	_try_facespr_intersect
	.def	_try_facespr_intersect;	.scl	2;	.type	32;	.endef
_try_facespr_intersect:
LFB58:
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
	movl	4(%eax), %ecx
	movl	(%eax), %esi
	movl	68(%esp), %ebx
	movl	64(%esp), %edi
	movl	80(%esp), %edx
	subl	%ebx, %ecx
	movl	%ebx, 20(%esp)
	movl	76(%esp), %ebx
	subl	%edi, %esi
	imull	%ecx, %edx
	movl	%edi, 24(%esp)
	imull	%esi, %ebx
	leal	(%ebx,%edx), %ebp
	testl	%ebp, %ebp
	jle	L1238
	movl	76(%esp), %ebx
	movl	80(%esp), %edx
	imull	%ebx, %ebx
	imull	%edx, %edx
	addl	%edx, %ebx
	jne	L1244
L1234:
	addl	$44, %esp
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
L1244:
	.cfi_restore_state
	movl	%eax, %edi
	movl	8(%eax), %eax
	movl	%ebx, %edx
	movl	%ebx, 8(%esp)
	sarl	$31, %edx
	movl	%ebp, 40(%esp)
	movl	%eax, 28(%esp)
	movl	72(%esp), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 16(%esp)
	movl	%ebp, %eax
	imull	84(%esp)
	movl	%ecx, 36(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.5
	movl	16(%esp), %ecx
	movswl	14(%edi), %edx
	addl	%ecx, %eax
	movzbl	21(%edi), %ecx
	movl	%eax, 16(%esp)
	movswl	_tilesiz+2(,%edx,4), %eax
	movsbl	_picanm+2(%edx,%edx,4), %edx
	imull	%ecx, %eax
	leal	0(,%eax,4), %ebp
	movl	%ebp, 32(%esp)
	leal	(%eax,%eax), %ebp
	xorl	%eax, %eax
	testb	$-128, 12(%edi)
	cmovne	%ebp, %eax
	imull	%ecx, %edx
	movl	32(%esp), %ebp
	movl	16(%esp), %ecx
	sall	$2, %edx
	subl	%edx, %eax
	addl	28(%esp), %eax
	movl	%eax, %edx
	subl	%ebp, %edx
	cmpl	%edx, %ecx
	jl	L1238
	cmpl	%eax, %ecx
	jle	L1245
L1238:
	addl	$44, %esp
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
L1245:
	.cfi_restore_state
	imull	80(%esp), %esi
	movl	36(%esp), %ecx
	movl	%ebx, 8(%esp)
	imull	76(%esp), %ecx
	subl	%esi, %ecx
	movl	%ebx, %esi
	movl	%ecx, %eax
	imull	76(%esp)
	sarl	$31, %esi
	movl	%ecx, 28(%esp)
	movl	%esi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.5
	movl	%ebx, %edx
	movl	%ebx, 8(%esp)
	sarl	$31, %edx
	movl	%eax, %esi
	movl	28(%esp), %eax
	movl	%edx, 12(%esp)
	imull	80(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.5
	movl	%eax, %ecx
	movswl	14(%edi), %eax
	movswl	_tilesiz(,%eax,4), %edx
	movzbl	20(%edi), %eax
	imull	%eax, %edx
	movl	%edx, %eax
/APP
 # 2539 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $7, %edx, %eax
 # 0 "" 2
/NO_APP
	imull	%esi, %esi
	imull	%ecx, %ecx
	leal	(%esi,%ecx), %edx
	cmpl	%eax, %edx
	jg	L1238
	movl	40(%esp), %ebp
	movl	%ebx, %esi
	movl	%ebx, 8(%esp)
	sarl	$31, %esi
	movl	%ebp, %eax
	imull	76(%esp)
	movl	%esi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.5
	movl	%ebx, 8(%esp)
	sarl	$31, %ebx
	movl	%eax, %edi
	movl	%ebp, %eax
	movl	%ebx, 12(%esp)
	imull	80(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.5
	movl	%eax, %ecx
	movl	%edi, %eax
/APP
 # 2543 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 28(%esp)
	movl	%ecx, %eax
/APP
 # 2543 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	88(%esp), %esi
	movl	24(%esp), %ebp
	movl	%eax, %ebx
	movl	(%esi), %esi
	movl	%esi, 32(%esp)
	subl	%ebp, %esi
	movl	%esi, %eax
/APP
 # 2544 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	88(%esp), %edx
	movl	%eax, %esi
	movl	4(%edx), %edx
	movl	%edx, 24(%esp)
	subl	20(%esp), %edx
	movl	%edx, %eax
/APP
 # 2544 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	28(%esp), %edx
	addl	%eax, %esi
	addl	%ebx, %edx
	addl	92(%esp), %edx
	cmpl	%esi, %edx
	jg	L1238
	movl	20(%esp), %esi
	addl	%edi, %ebp
	movl	88(%esp), %edi
	movl	$1, %ebx
	leal	(%esi,%ecx), %eax
	movl	16(%esp), %ecx
	movl	%ebp, (%edi)
	movl	%eax, 4(%edi)
	movl	%ecx, 8(%edi)
	jmp	L1234
	.cfi_endproc
LFE58:
	.section .rdata,"dr"
	.align 4
LC39:
	.ascii "hitscan: tempshortnum >= MAXCLIPSECTORS at (%d,%d,%d)!\0"
	.text
	.p2align 4
	.globl	_hitscan
	.def	_hitscan;	.scl	2;	.type	32;	.endef
_hitscan:
LFB59:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$-1, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	andl	$-8, %esp
	subl	$224, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	28(%ebp), %eax
	movzwl	12(%ebp), %edi
	movl	32(%ebp), %esi
	movw	%dx, 16(%eax)
	movl	$-1, 12(%eax)
	testw	%di, %di
	js	L1352
	movswl	_numsectors, %ebx
	movzwl	%si, %eax
	movl	28(%ebp), %ecx
	movl	$0, __ZL13clipspritenum
	movl	_hitscangoal+4, %edx
	movl	%eax, 44(%esp)
	addl	$7, %ebx
	movl	_hitscangoal, %eax
	movl	$0, __ZL15clipmove_warned
	sarl	$3, %ebx
	movl	%edx, 4(%ecx)
	movl	%eax, (%ecx)
	movw	%di, _clipsectorlist
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL19yax_hitscan_ceilmap, (%esp)
	call	_memset
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL20yax_hitscan_floormap, (%esp)
	call	_memset
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL13clipsectormap, (%esp)
	call	_memset
	movswl	%di, %eax
	andl	$7, %edi
	movl	$0, 96(%esp)
	sarl	$3, %eax
	movl	$-1, 100(%esp)
	movl	%eax, %ecx
	movl	%eax, 40(%esp)
	movzbl	__ZL8pow2char.lto_priv.4(%edi), %eax
	orb	%al, __ZL13clipsectormap(%ecx)
	shrl	$16, %esi
	sete	77(%esp)
	xorl	%edi, %edi
	movb	%al, 76(%esp)
	movl	$0, 128(%esp)
	movw	%di, 134(%esp)
	movl	%esi, 52(%esp)
	movl	$1, %esi
	movw	%si, 132(%esp)
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L1346:
	movzwl	134(%esp), %edi
	cmpw	132(%esp), %di
	jge	L1248
	movswl	%di, %eax
	addl	$1, %edi
	movw	%di, 134(%esp)
L1249:
	movswl	_clipsectorlist(%eax,%eax), %eax
	movl	_sector, %ebx
	movl	$1, 152(%esp)
	leal	(%eax,%eax,4), %edx
	movw	%ax, 78(%esp)
	leal	0(,%edx,8), %edi
	movl	128(%esp), %edx
	movl	%edi, 64(%esp)
	addl	%edi, %ebx
	testl	%edx, %edx
	je	L1257
	movl	100(%esp), %edi
	leal	(%edi,%edi,2), %edx
	movzwl	78(%esp), %edi
	movswl	__ZL8clipinfo+2(,%edx,4), %ecx
	movl	__ZL5sectq, %edx
	cmpw	(%edx,%ecx,2), %di
	je	L1435
	movl	$0, 220(%esp)
L1257:
	movl	$1, 144(%esp)
	movl	%ebx, %edi
	movl	%eax, 68(%esp)
	movl	$-1, %eax
L1256:
	movl	96(%esp), %ecx
	movl	%eax, 24(%esp)
	movl	%edi, %edx
	movl	%ecx, 28(%esp)
	movl	4(%edi), %eax
	movl	%eax, 20(%esp)
	movswl	18(%edi), %eax
	movl	%eax, 16(%esp)
	movzwl	12(%edi), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	movl	28(%ebp), %ecx
	movl	8(%ebp), %eax
	call	__ZL17hitscan_trysectorPK4vec3IiEPK13usectortypev7P9hitdata_tiiitsiiPKi
	movl	%eax, %ebx
	testb	$1, %al
	jne	L1252
	movl	96(%esp), %ecx
	movl	144(%esp), %eax
	movl	%edi, %edx
	movl	%ecx, 28(%esp)
	movl	%eax, 24(%esp)
	movl	8(%edi), %eax
	movl	%eax, 20(%esp)
	movswl	26(%edi), %eax
	movl	%eax, 16(%esp)
	movzwl	14(%edi), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	movl	28(%ebp), %ecx
	movl	8(%ebp), %eax
	call	__ZL17hitscan_trysectorPK4vec3IiEPK13usectortypev7P9hitdata_tiiitsiiPKi
	orl	%eax, %ebx
	movl	%ebx, 60(%esp)
	andl	$1, %ebx
	movl	%ebx, 56(%esp)
	je	L1436
L1252:
	movzwl	134(%esp), %edi
	cmpw	%di, 132(%esp)
	jg	L1346
	cmpl	%esi, __ZL13clipspritenum
	jg	L1346
	movl	128(%esp), %eax
	testl	%eax, %eax
	je	L1348
	movzwl	__ZL11origmapinfo, %eax
	movw	%ax, _numsectors
	movzwl	__ZL11origmapinfo+2, %eax
	movw	%ax, _numwalls
	movl	__ZL11origmapinfo+4, %eax
	movl	%eax, _sector
	movl	__ZL11origmapinfo+8, %eax
	movl	%eax, _wall
L1348:
	movl	$0, 56(%esp)
L1246:
	movl	56(%esp), %eax
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
L1248:
	.cfi_restore_state
	movl	128(%esp), %ebx
	testl	%ebx, %ebx
	je	L1311
L1250:
	movswl	__ZL14clipspritelist(%esi,%esi), %eax
	movl	100(%esp), %edx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	%eax, 128(%esp)
	call	_clipshape_idx_for_sprite
	movl	%eax, 100(%esp)
	testl	%eax, %eax
	js	L1437
	movl	8(%ebp), %edi
	movl	100(%esp), %eax
	leal	152(%esp), %ecx
	movl	128(%esp), %edx
	movl	%edi, (%esp)
	leal	212(%esp), %edi
	movl	%eax, 212(%esp)
	movl	%edx, 216(%esp)
	call	__Z20clipsprite_initindexiPK13uspritetypev7PiPK4vec3IiE
	movl	$1, %ecx
	movl	%edi, 96(%esp)
	movzwl	__ZL11clipsectnum, %eax
	movw	%cx, 134(%esp)
	movw	%ax, 132(%esp)
	xorl	%eax, %eax
	jmp	L1249
L1450:
	movzwl	134(%esp), %ecx
	cmpw	132(%esp), %cx
	jl	L1438
L1342:
	cmpl	__ZL13clipspritenum, %esi
	jge	L1246
	.p2align 4
	.p2align 3
L1311:
	movzwl	_numwalls, %edx
	movzwl	_numsectors, %eax
	movss	_sector, %xmm0
	movss	_wall, %xmm2
	sall	$16, %edx
	orl	%edx, %eax
	unpcklps	%xmm2, %xmm0
	movl	%eax, __ZL11origmapinfo
	movzwl	__ZL11clipmapinfo, %eax
	movlps	%xmm0, __ZL11origmapinfo+4
	movw	%ax, _numsectors
	movzwl	__ZL11clipmapinfo+2, %eax
	movw	%ax, _numwalls
	movl	__ZL11clipmapinfo+4, %eax
	movl	%eax, _sector
	movl	__ZL11clipmapinfo+8, %eax
	movl	%eax, _wall
	jmp	L1250
	.p2align 4,,10
	.p2align 3
L1437:
	addw	$1, 134(%esp)
	addl	$1, %esi
	jmp	L1252
	.p2align 4,,10
	.p2align 3
L1435:
	movl	%eax, 68(%esp)
	movl	%ebx, %edi
	movl	$1, %eax
	movl	$-1, 152(%esp)
	movl	$1, 220(%esp)
	movl	$-1, 144(%esp)
	jmp	L1256
	.p2align 4,,10
	.p2align 3
L1436:
	movswl	2(%edi), %eax
	movswl	(%edi), %ecx
	leal	(%eax,%ecx), %edi
	movl	128(%esp), %eax
	movl	%edi, 84(%esp)
	testl	%eax, %eax
	setne	72(%esp)
	cmpl	%edi, %ecx
	jge	L1258
	movl	%esi, 48(%esp)
	movl	%ecx, 144(%esp)
	.p2align 4
	.p2align 3
L1286:
	movl	144(%esp), %edx
	movl	_wall, %eax
	sall	$5, %edx
	leal	(%eax,%edx), %edi
	movswl	12(%edi), %ecx
	movw	%cx, 80(%esp)
	movl	%ecx, 88(%esp)
	testl	%ecx, %ecx
	jns	L1355
	cmpb	$0, 72(%esp)
	jne	L1274
L1355:
	movswl	8(%edi), %edx
	movl	8(%ebp), %esi
	movl	(%edi), %ebx
	movl	4(%edi), %ecx
	sall	$5, %edx
	addl	%edx, %eax
	movl	%ecx, 112(%esp)
	movl	%ebx, %ecx
	movl	(%eax), %edx
	movl	4(%eax), %eax
	movl	%ebx, 116(%esp)
	movl	%edx, 108(%esp)
	movl	(%esi), %edx
	movl	4(%esi), %esi
	movl	%eax, 104(%esp)
	subl	%edx, %ecx
	movl	%edx, 136(%esp)
	movl	%eax, %edx
	subl	%esi, %edx
	movl	%esi, 120(%esp)
	movl	%edx, %eax
	imull	%ecx
	movl	%edx, %ebx
	movl	112(%esp), %edx
	movl	%eax, %ecx
	movl	108(%esp), %eax
	subl	136(%esp), %eax
	subl	%esi, %edx
	movl	%ebx, %esi
	imull	%edx
	cmpl	%eax, %ecx
	sbbl	%edx, %esi
	jl	L1274
	movl	8(%ebp), %esi
	movl	104(%esp), %ebx
	leal	164(%esp), %eax
	movl	112(%esp), %edx
	movl	8(%esi), %ecx
	movl	%eax, 28(%esp)
	leal	156(%esp), %esi
	movl	%ebx, 24(%esp)
	movl	108(%esp), %eax
	movl	116(%esp), %ebx
	movl	%esi, 36(%esp)
	leal	160(%esp), %esi
	movl	%eax, 20(%esp)
	movl	136(%esp), %eax
	movl	%edx, 16(%esp)
	movl	120(%esp), %edx
	movl	%esi, 32(%esp)
	movl	%ebx, 12(%esp)
	movl	24(%ebp), %ebx
	movl	%ebx, 8(%esp)
	movl	20(%ebp), %ebx
	movl	%ebx, 4(%esp)
	movl	16(%ebp), %ebx
	movl	%ebx, (%esp)
	call	_rintersect
	cmpl	$-1, %eax
	je	L1274
	movl	8(%ebp), %eax
	movl	164(%esp), %esi
	movl	(%eax), %edx
	movl	%esi, %eax
	movl	%esi, 108(%esp)
	subl	%edx, %eax
/APP
 # 2969 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	8(%ebp), %ebx
	movl	%eax, %ecx
	movl	160(%esp), %eax
	movl	4(%ebx), %ebx
	movl	%eax, 112(%esp)
	movl	%ebx, 136(%esp)
	subl	%ebx, %eax
/APP
 # 2969 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
	movl	28(%ebp), %eax
	movl	(%eax), %eax
	subl	%edx, %eax
/APP
 # 2969 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	28(%ebp), %edx
	movl	%eax, 120(%esp)
	movl	4(%edx), %edx
	movl	%edx, 116(%esp)
	subl	136(%esp), %edx
	movl	%edx, %eax
/APP
 # 2969 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	120(%esp), %edx
	addl	%eax, %edx
	cmpl	%edx, %ecx
	jge	L1274
	movl	60(%esp), %eax
	testl	%eax, %eax
	jne	L1268
	movl	%esi, 136(%esp)
	movss	112(%esp), %xmm1
	movss	136(%esp), %xmm0
	movl	128(%esp), %eax
	unpcklps	%xmm1, %xmm0
	testl	%eax, %eax
	je	L1439
	movl	156(%esp), %ebx
	movzwl	14(%edi), %eax
	testl	%eax, 44(%esp)
	je	L1269
L1272:
	movl	128(%esp), %eax
	movl	28(%ebp), %esi
	movl	$-1, %ecx
	movzwl	24(%eax), %edx
	subl	_sprite, %eax
	movw	%cx, 14(%esi)
	sarl	$2, %eax
	movl	%ebx, 8(%esi)
	imulw	$-29789, %ax, %ax
	movw	%dx, 16(%esi)
	movlps	%xmm0, (%esi)
	movw	%ax, 12(%esi)
	.p2align 4
	.p2align 3
L1274:
	addl	$1, 144(%esp)
	movl	144(%esp), %eax
	cmpl	%eax, 84(%esp)
	jne	L1286
	movl	48(%esp), %esi
L1258:
	movzbl	72(%esp), %eax
	orb	77(%esp), %al
	movb	%al, 112(%esp)
	jne	L1252
	movl	68(%esp), %eax
	movswl	_headspritesect(%eax,%eax), %eax
	movl	%eax, 144(%esp)
	testl	%eax, %eax
	js	L1287
	movl	24(%ebp), %eax
	movl	%esi, 80(%esp)
	sall	$8, %eax
	movl	%eax, 84(%esp)
	jmp	L1307
	.p2align 4,,10
	.p2align 3
L1288:
	movl	144(%esp), %eax
	movswl	_nextspritesect(%eax,%eax), %eax
	movl	%eax, 144(%esp)
	testl	%eax, %eax
	js	L1440
L1307:
	imull	$44, 144(%esp), %esi
	movl	52(%esp), %eax
	movl	%esi, 120(%esp)
	addl	_sprite, %esi
	movzwl	12(%esi), %ebx
	movl	%esi, 136(%esp)
	andl	%ebx, %eax
	orl	_hitallsprites, %eax
	movl	%ebx, %ecx
	je	L1288
	movswl	14(%esi), %eax
	movl	%eax, 128(%esp)
	movswl	__ZL8pictoidx(%eax,%eax), %eax
	testl	%eax, %eax
	js	L1289
	movl	__ZL11clipmapinfo+4, %edi
	movl	__ZL5sectq, %esi
	jmp	L1290
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1291:
	movswl	6(%edx), %eax
	testl	%eax, %eax
	js	L1289
L1290:
	leal	(%eax,%eax,2), %eax
	leal	__ZL8clipinfo(,%eax,4), %edx
	movswl	__ZL8clipinfo(,%eax,4), %eax
	movswl	(%esi,%eax,2), %eax
	leal	(%eax,%eax,4), %eax
	movswl	36(%edi,%eax,8), %eax
	xorl	%ebx, %eax
	testb	$32, %al
	jne	L1291
	movl	__ZL13clipspritenum, %eax
	cmpl	$4095, %eax
	jle	L1441
L1289:
	movl	136(%esp), %esi
	movl	(%esi), %eax
	movl	%eax, 108(%esp)
	movl	%eax, 168(%esp)
	movl	4(%esi), %eax
	movl	%eax, 104(%esp)
	movl	%eax, 172(%esp)
	movl	8(%esi), %eax
	movl	%eax, 116(%esp)
	movl	%ecx, %eax
	andl	$48, %eax
	cmpw	$32, %ax
	je	L1293
	cmpw	$48, %ax
	je	L1294
	cmpw	$16, %ax
	je	L1295
	movl	$0, 28(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%esp)
	movl	%esi, %eax
	call	_try_facespr_intersect
	testl	%eax, %eax
	je	L1288
	movl	28(%ebp), %eax
	movzwl	78(%esp), %esi
	movl	$-1, %edx
	movw	%si, 16(%eax)
	movzwl	144(%esp), %esi
	movw	%dx, 14(%eax)
	movw	%si, 12(%eax)
	jmp	L1288
	.p2align 4,,10
	.p2align 3
L1439:
	movl	112(%esp), %eax
	leal	148(%esp), %ecx
	movl	%esi, 4(%esp)
	leal	208(%esp), %ebx
	movl	%ebx, 16(%esp)
	movl	%eax, 8(%esp)
	movl	64(%esp), %eax
	movl	%ecx, 12(%esp)
	addl	_sector, %eax
	movl	%eax, (%esp)
	movlps	%xmm0, 136(%esp)
	call	_getzsofslopeptr
	movl	156(%esp), %edx
	cmpl	148(%esp), %edx
	jge	L1442
	.p2align 4
	.p2align 3
L1268:
	movl	__ZL15clipmove_warned, %eax
	movswl	_numsectors, %edx
	cmpl	%edx, 88(%esp)
	jb	L1443
L1428:
	andl	$1, %eax
	testl	%eax, %eax
	je	L1274
L1283:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1274
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 24(%esp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 20(%esp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	$LC39, 12(%esp)
	movl	$3057, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC26, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1274
	.p2align 4,,10
	.p2align 3
L1269:
	leal	200(%esp), %eax
	movl	112(%esp), %esi
	movl	108(%esp), %edi
	movlps	%xmm0, 136(%esp)
	movl	%eax, 16(%esp)
	leal	148(%esp), %eax
	movl	%eax, 12(%esp)
	movl	88(%esp), %eax
	movl	%esi, 8(%esp)
	movl	%edi, 4(%esp)
	movl	_sector, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	leal	204(%esp), %eax
	movl	%esi, 8(%esp)
	movl	%eax, 16(%esp)
	leal	208(%esp), %eax
	movl	%eax, 12(%esp)
	movl	100(%esp), %eax
	movl	%edi, 4(%esp)
	leal	(%eax,%eax,2), %eax
	movswl	__ZL8clipinfo+2(,%eax,4), %edx
	movl	__ZL5sectq, %eax
	movswl	(%eax,%edx,2), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	cmpl	%ebx, 208(%esp)
	movlps	136(%esp), %xmm0
	jg	L1271
	cmpl	%ebx, 148(%esp)
	jge	L1272
L1271:
	cmpl	%ebx, 200(%esp)
	jg	L1268
	cmpl	%ebx, 204(%esp)
	jl	L1268
	jmp	L1272
	.p2align 4,,10
	.p2align 3
L1443:
	movswl	132(%esp), %ebx
	movl	%ebx, %edx
	subl	$1, %edx
	js	L1276
	movzwl	80(%esp), %ecx
	movl	144(%esp), %esi
	jmp	L1277
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1445:
	subl	$1, %edx
	jb	L1444
L1277:
	cmpw	_clipsectorlist(%edx,%edx), %cx
	jne	L1445
	movl	%esi, 144(%esp)
	jmp	L1428
	.p2align 4,,10
	.p2align 3
L1440:
	movl	80(%esp), %esi
L1287:
	movl	_numyaxbunches, %edx
	testl	%edx, %edx
	jg	L1308
	movzwl	134(%esp), %edi
	cmpw	%di, 132(%esp)
	jle	L1342
	movswl	%di, %eax
	addl	$1, %edi
	movw	%di, 134(%esp)
L1427:
	movswl	_clipsectorlist(%eax,%eax), %eax
	movl	_sector, %edi
	movw	%ax, 78(%esp)
	movl	%eax, 68(%esp)
	leal	(%eax,%eax,4), %eax
	sall	$3, %eax
	movl	%eax, 64(%esp)
	addl	%eax, %edi
L1310:
	movl	$1, 152(%esp)
	movl	$-1, %eax
	movl	$0, 128(%esp)
	movl	$1, 144(%esp)
	jmp	L1256
	.p2align 4,,10
	.p2align 3
L1295:
	movl	128(%esp), %ebx
	movl	136(%esp), %eax
	leal	0(,%ebx,4), %edx
	movzwl	28(%eax), %edi
	movzbl	20(%eax), %esi
	movl	%edx, 72(%esp)
	movsbl	22(%eax), %eax
	movsbl	_picanm+1(%ebx,%ebx,4), %edx
	addl	%eax, %edx
	movl	%edx, %eax
	negl	%eax
	testb	$4, %cl
	cmovne	%eax, %edx
	movl	%edi, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %ebx
	leal	1536(%edi), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%esi, %ebx
	imull	%esi, %eax
	movl	128(%esp), %esi
	movswl	_tilesiz(,%esi,4), %edi
	movl	%eax, 88(%esp)
	movl	%ebx, %eax
	movl	%edi, %esi
	sarl	%esi
	addl	%edx, %esi
	movl	%esi, %edx
/APP
 # 414 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	108(%esp), %edx
	subl	%eax, %edx
	movl	%ebx, %eax
	movl	%edx, 116(%esp)
	movl	%edi, %edx
/APP
 # 415 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	116(%esp), %edx
	leal	(%edx,%eax), %ebx
	movl	88(%esp), %eax
	movl	%esi, %edx
	movl	%ebx, 108(%esp)
	movl	%ebx, 176(%esp)
/APP
 # 417 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	104(%esp), %esi
	movl	%edi, %edx
	subl	%eax, %esi
	movl	88(%esp), %eax
/APP
 # 418 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	8(%ebp), %edi
	leal	(%esi,%eax), %ebx
	andl	$64, %ecx
	movl	%ebx, 180(%esp)
	movl	4(%edi), %edi
	movl	%edi, 104(%esp)
	movl	8(%ebp), %edi
	movl	(%edi), %edi
	je	L1297
	movl	104(%esp), %ecx
	movl	116(%esp), %eax
	movl	%ebx, %edx
	subl	%ecx, %edx
	subl	%edi, %eax
	imull	%edx
	movl	%eax, 88(%esp)
	movl	108(%esp), %eax
	movl	%edx, 92(%esp)
	movl	%esi, %edx
	subl	%ecx, %edx
	subl	%edi, %eax
	movl	92(%esp), %ecx
	imull	%edx
	cmpl	%eax, 88(%esp)
	sbbl	%edx, %ecx
	jl	L1288
L1297:
	movl	8(%ebp), %eax
	movl	104(%esp), %edx
	movl	8(%eax), %ecx
	leal	192(%esp), %eax
	movl	%esi, 16(%esp)
	movl	%eax, 36(%esp)
	leal	188(%esp), %eax
	movl	%eax, 32(%esp)
	leal	184(%esp), %eax
	movl	%eax, 28(%esp)
	movl	108(%esp), %eax
	movl	%ebx, 24(%esp)
	movl	%eax, 20(%esp)
	movl	116(%esp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	_rintersect
	movl	%eax, %esi
	cmpl	$-1, %eax
	je	L1288
	movl	8(%ebp), %ecx
	movl	184(%esp), %eax
	movl	(%ecx), %edi
	movl	%eax, 104(%esp)
	subl	%edi, %eax
/APP
 # 2715 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	8(%ebp), %ebx
	movl	%eax, %ecx
	movl	188(%esp), %eax
	movl	4(%ebx), %ebx
	movl	%eax, 88(%esp)
	movl	%ebx, 116(%esp)
	subl	%ebx, %eax
/APP
 # 2715 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
	movl	28(%ebp), %eax
	movl	(%eax), %eax
	subl	%edi, %eax
/APP
 # 2715 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 108(%esp)
	subl	116(%esp), %eax
/APP
 # 2715 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%eax, %edx
	cmpl	%edx, %ecx
	jg	L1288
	movl	120(%esp), %eax
	addl	_sprite, %eax
	movswl	14(%eax), %edx
	movzbl	21(%eax), %ecx
	movswl	_tilesiz+2(,%edx,4), %ebx
	imull	%ecx, %ebx
	leal	0(,%ebx,4), %edi
	addl	%ebx, %ebx
	testb	$-128, 12(%eax)
	movl	$0, %eax
	cmove	%eax, %ebx
	movsbl	_picanm+2(%edx,%edx,4), %eax
	movl	%edi, 120(%esp)
	movl	192(%esp), %edi
	imull	%ecx, %eax
	leal	0(,%eax,4), %edx
	movl	136(%esp), %eax
	subl	%edx, %ebx
	addl	8(%eax), %ebx
	movl	%ebx, %eax
	subl	120(%esp), %eax
	cmpl	%edi, %eax
	jge	L1288
	cmpl	%edi, %ebx
	jle	L1288
	movl	128(%esp), %eax
	movl	72(%esp), %ecx
	movzbl	_picanm+3(%eax,%ecx), %eax
	testb	$32, %al
	je	L1299
	cmpb	$63, %al
	ja	L1446
L1300:
	movl	128(%esp), %eax
	movl	_waloff(,%eax,4), %eax
	testl	%eax, %eax
	je	L1447
L1301:
	movl	128(%esp), %eax
	movswl	_tilesiz(,%eax,4), %edx
	movl	%esi, %eax
/APP
 # 2731 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	subl	%edi, %ebx
	movl	120(%esp), %ecx
	movl	%eax, 136(%esp)
	movl	%ebx, %eax
	cltd
	movl	%ecx, 8(%esp)
	sall	$16, %eax
	sarl	$31, %ecx
	shldl	$16, %ebx, %edx
	movl	%eax, (%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.5
	movl	128(%esp), %esi
	movl	%eax, %edx
	movl	$65536, %eax
	movswl	_tilesiz+2(,%esi,4), %ecx
	subl	%edx, %eax
	movl	%ecx, %edx
/APP
 # 2733 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	136(%esp), %edx
	imull	%ecx, %edx
	addl	%edx, %eax
	addl	_waloff(,%esi,4), %eax
	cmpb	$-1, (%eax)
	je	L1288
L1299:
	movl	28(%ebp), %eax
	movzwl	78(%esp), %esi
	movl	$-1, %ecx
	movss	104(%esp), %xmm0
	movss	88(%esp), %xmm3
	movw	%si, 16(%eax)
	movzwl	144(%esp), %esi
	unpcklps	%xmm3, %xmm0
	movw	%cx, 14(%eax)
	movw	%si, 12(%eax)
	movl	%edi, 8(%eax)
	movlps	%xmm0, (%eax)
	jmp	L1288
	.p2align 4,,10
	.p2align 3
L1294:
	movl	136(%esp), %eax
	movswl	22(%eax), %edx
	movswl	28(%eax), %eax
	leal	1024(%eax), %ebx
	addl	$512, %eax
	andl	$2047, %eax
	andl	$2047, %ebx
	movswl	_sintable(%eax,%eax), %eax
	movswl	_sintable(%ebx,%ebx), %ebx
	imull	%edx, %eax
	imull	%edx, %ebx
	movl	20(%ebp), %edx
	leal	(%eax,%eax), %esi
	leal	(%ebx,%ebx), %edi
	negl	%esi
	movl	%edi, 88(%esp)
	movl	%edi, %eax
	movl	16(%ebp), %edi
	movl	%esi, 72(%esp)
/APP
 # 2790 "source/build/src/clip.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $15, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	84(%esp), %esi
	subl	%eax, %esi
	movl	%esi, 128(%esp)
	je	L1288
	testb	$64, %cl
	je	L1305
	movl	%ecx, %eax
	movl	%esi, %edx
	shrw	$3, %ax
	shrl	$31, %edx
	andl	$1, %eax
	xorl	$1, %eax
	cmpb	%dl, %al
	je	L1288
L1305:
	movl	8(%ebp), %eax
	movl	72(%esp), %esi
	movl	4(%eax), %eax
	movl	%eax, 64(%esp)
	movl	%eax, %edx
	movl	8(%ebp), %eax
	subl	104(%esp), %edx
	movl	(%eax), %eax
	movl	%eax, 104(%esp)
	movl	%eax, %edi
	movl	88(%esp), %eax
	subl	108(%esp), %edi
/APP
 # 2794 "source/build/src/clip.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $15, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	8(%ebp), %esi
	movl	116(%esp), %edx
	subl	8(%esi), %edx
	sall	$8, %edx
	addl	%eax, %edx
	movl	128(%esp), %eax
	xorl	%edx, %eax
	js	L1288
	movl	%edx, %eax
/APP
 # 2795 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	128(%esp), %eax
/APP
 # 2795 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	sarl	%ecx
	cmpl	%eax, %ecx
	jge	L1288
	movl	128(%esp), %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%edx, %eax
	cltd
	shldl	$30, %eax, %edx
	sall	$30, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.5
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	%ecx, %edx
	movl	(%eax), %edi
	movl	16(%ebp), %eax
/APP
 # 2798 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	leal	(%edi,%eax), %eax
	movl	%edi, 128(%esp)
	movl	%ecx, %edx
	movl	%eax, 104(%esp)
	movl	%eax, 184(%esp)
	movl	8(%ebp), %eax
	movl	4(%eax), %edi
	movl	20(%ebp), %eax
/APP
 # 2799 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%edi, 116(%esp)
	addl	%eax, %edi
	movl	%eax, %ebx
	movl	%ecx, %edx
	movl	%edi, 188(%esp)
	movl	24(%ebp), %eax
/APP
 # 2800 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	8(%ebp), %edx
	addl	8(%edx), %eax
	movl	%eax, 88(%esp)
	movl	%eax, 192(%esp)
	movl	%esi, %eax
/APP
 # 2802 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	%ebx, %eax
/APP
 # 2802 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	28(%ebp), %edx
	leal	(%eax,%esi), %ebx
	movl	(%edx), %edx
	movl	%edx, %eax
	movl	%edx, 108(%esp)
	subl	128(%esp), %eax
/APP
 # 2802 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	28(%ebp), %ecx
	movl	%eax, %edx
	movl	4(%ecx), %ecx
	movl	%ecx, %eax
	movl	%ecx, 128(%esp)
	subl	116(%esp), %eax
/APP
 # 2802 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%eax, %edx
	cmpl	%edx, %ebx
	jg	L1288
	movl	120(%esp), %ecx
	addl	_sprite, %ecx
	xorl	%edx, %edx
	movzwl	12(%ecx), %eax
	notl	%eax
	testb	$48, %al
	jne	L1306
	movswl	22(%ecx), %edx
L1306:
	leal	208(%esp), %eax
	movl	%edx, 32(%esp)
	movl	104(%esp), %esi
	movl	%edi, %ecx
	movl	%eax, 28(%esp)
	leal	200(%esp), %eax
	movl	%eax, 24(%esp)
	leal	180(%esp), %eax
	movl	%esi, %edx
	movl	%eax, 20(%esp)
	leal	172(%esp), %eax
	movl	%eax, 16(%esp)
	leal	204(%esp), %eax
	movl	%eax, 12(%esp)
	leal	196(%esp), %eax
	movl	%eax, 8(%esp)
	leal	176(%esp), %eax
	movl	%eax, 4(%esp)
	leal	168(%esp), %eax
	movl	%eax, (%esp)
	movl	136(%esp), %eax
	call	__ZL19get_floorspr_pointsPKviiPiS1_S1_S1_S1_S1_S1_S1_i.lto_priv.0
	movl	204(%esp), %eax
	movl	172(%esp), %edx
	movl	%eax, 16(%esp)
	movl	208(%esp), %eax
	movl	%eax, 20(%esp)
	movl	196(%esp), %eax
	movl	%eax, 8(%esp)
	movl	200(%esp), %eax
	movl	%eax, 12(%esp)
	movl	176(%esp), %eax
	movl	%eax, (%esp)
	movl	180(%esp), %eax
	movl	%eax, 4(%esp)
	movl	168(%esp), %eax
	call	__ZL20get_floorspr_clipyou4vec2IiES0_S0_S0_
	testl	%eax, %eax
	je	L1288
	movl	28(%ebp), %eax
	movzwl	78(%esp), %ecx
	movw	%cx, 16(%eax)
	movl	$-1, %ecx
	movw	%cx, 14(%eax)
	movzwl	144(%esp), %ecx
	movl	%esi, (%eax)
	movl	88(%esp), %esi
	movw	%cx, 12(%eax)
	movl	%edi, 4(%eax)
	movl	%esi, 8(%eax)
	jmp	L1288
	.p2align 4,,10
	.p2align 3
L1293:
	movl	116(%esp), %eax
	movl	24(%ebp), %edx
	movl	%eax, 192(%esp)
	testl	%edx, %edx
	je	L1288
	movl	8(%ebp), %esi
	movl	8(%esi), %edx
	movl	%eax, %esi
	subl	%edx, %eax
	movl	%eax, %edi
	xorl	24(%ebp), %edi
	js	L1288
	testb	$64, %cl
	je	L1303
	cmpl	%edx, %esi
	setl	%bl
	shrw	$3, %cx
	movl	%ecx, %edx
	andl	$1, %edx
	xorl	$1, %edx
	cmpb	%dl, %bl
	je	L1288
L1303:
	movl	8(%ebp), %esi
	movl	(%esi), %ebx
	movl	24(%ebp), %esi
	movl	%esi, 8(%esp)
	sarl	$31, %esi
	movl	%esi, 12(%esp)
	imull	16(%ebp), %eax
	movl	%eax, (%esp)
	sarl	$31, %eax
	movl	%eax, 4(%esp)
	call	_tabledivide64.lto_priv.5
	addl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	%ebx, 184(%esp)
	movl	4(%eax), %esi
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %ecx
	movl	116(%esp), %eax
	subl	8(%ecx), %eax
	imull	20(%ebp), %eax
	movl	%eax, (%esp)
	sarl	$31, %eax
	movl	%eax, 4(%esp)
	call	_tabledivide64.lto_priv.5
	movl	8(%ebp), %ecx
	addl	%eax, %esi
	movl	(%ecx), %edx
	movl	%ebx, %ecx
	movl	%esi, 188(%esp)
	subl	%edx, %ecx
	movl	%ecx, %eax
/APP
 # 2772 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	8(%ebp), %edi
	movl	%eax, %ecx
	movl	%esi, %eax
	movl	4(%edi), %edi
	movl	%edi, 128(%esp)
	subl	%edi, %eax
/APP
 # 2772 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
	movl	28(%ebp), %eax
	movl	(%eax), %eax
	subl	%edx, %eax
/APP
 # 2772 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	28(%ebp), %edx
	movl	%eax, 120(%esp)
	movl	4(%edx), %edx
	movl	%edx, 108(%esp)
	subl	128(%esp), %edx
	movl	%edx, %eax
/APP
 # 2772 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	120(%esp), %edx
	addl	%eax, %edx
	cmpl	%edx, %ecx
	jg	L1288
	leal	208(%esp), %eax
	movl	$0, 32(%esp)
	movl	%ebx, %edx
	movl	%esi, %ecx
	movl	%eax, 28(%esp)
	leal	200(%esp), %eax
	movl	%eax, 24(%esp)
	leal	180(%esp), %eax
	movl	%eax, 20(%esp)
	leal	172(%esp), %eax
	movl	%eax, 16(%esp)
	leal	204(%esp), %eax
	movl	%eax, 12(%esp)
	leal	196(%esp), %eax
	movl	%eax, 8(%esp)
	leal	176(%esp), %eax
	movl	%eax, 4(%esp)
	leal	168(%esp), %eax
	movl	%eax, (%esp)
	movl	136(%esp), %eax
	call	__ZL19get_floorspr_pointsPKviiPiS1_S1_S1_S1_S1_S1_S1_i.lto_priv.0
	movl	204(%esp), %eax
	movl	172(%esp), %edx
	movl	%eax, 16(%esp)
	movl	208(%esp), %eax
	movl	%eax, 20(%esp)
	movl	196(%esp), %eax
	movl	%eax, 8(%esp)
	movl	200(%esp), %eax
	movl	%eax, 12(%esp)
	movl	176(%esp), %eax
	movl	%eax, (%esp)
	movl	180(%esp), %eax
	movl	%eax, 4(%esp)
	movl	168(%esp), %eax
	call	__ZL20get_floorspr_clipyou4vec2IiES0_S0_S0_
	testl	%eax, %eax
	je	L1288
	movl	28(%ebp), %ecx
	movzwl	78(%esp), %edi
	movl	116(%esp), %eax
	movw	%di, 16(%ecx)
	movl	$-1, %edi
	movw	%di, 14(%ecx)
	movzwl	144(%esp), %edi
	movl	%ebx, (%ecx)
	movw	%di, 12(%ecx)
	movl	%esi, 4(%ecx)
	movl	%eax, 8(%ecx)
	jmp	L1288
	.p2align 4,,10
	.p2align 3
L1441:
	movzwl	144(%esp), %esi
	leal	1(%eax), %edx
	movl	%edx, __ZL13clipspritenum
	movw	%si, __ZL14clipspritelist(%eax,%eax)
	jmp	L1288
	.p2align 4,,10
	.p2align 3
L1444:
	movl	88(%esp), %edx
	movl	%esi, 144(%esp)
	sarl	$3, %edx
	movzbl	__ZL13clipsectormap(%edx), %ecx
	leal	__ZL13clipsectormap(%edx), %esi
	movl	80(%esp), %edx
	movl	%esi, 136(%esp)
	andl	$7, %edx
	movl	%ecx, %esi
	notl	%ecx
	movzbl	__ZL8pow2char.lto_priv.4(%edx), %edx
	testb	%dl, %cl
	je	L1448
	cmpw	$511, 132(%esp)
	jle	L1279
L1282:
	orl	$1, %eax
	movl	%eax, __ZL15clipmove_warned
	jmp	L1283
	.p2align 4,,10
	.p2align 3
L1442:
	cmpl	208(%esp), %edx
	jg	L1268
	movl	88(%esp), %esi
	movlps	136(%esp), %xmm0
	testl	%esi, %esi
	js	L1267
	movzwl	14(%edi), %eax
	testl	%eax, 44(%esp)
	leal	148(%esp), %ecx
	jne	L1267
	movl	112(%esp), %eax
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	108(%esp), %eax
	movl	%edx, 136(%esp)
	movl	%eax, 4(%esp)
	movl	88(%esp), %eax
	movl	_sector, %ecx
	movlps	%xmm0, 120(%esp)
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movl	136(%esp), %edx
	movlps	120(%esp), %xmm0
	cmpl	148(%esp), %edx
	jle	L1267
	cmpl	208(%esp), %edx
	jl	L1268
L1267:
	movl	28(%ebp), %esi
	movzwl	78(%esp), %ecx
	movl	$-1, %ebx
	movzwl	144(%esp), %eax
	movw	%cx, 16(%esi)
	movw	%ax, 14(%esi)
	movw	%bx, 12(%esi)
	movl	%edx, 8(%esi)
	movlps	%xmm0, (%esi)
	jmp	L1274
L1308:
	movl	68(%esp), %edi
	movl	%edi, %eax
	call	_yax_getbunch.constprop.1
	movswl	%ax, %ebx
	movl	%edi, %eax
	call	_yax_getbunch.constprop.0
	movswl	%ax, %ecx
	testw	%bx, %bx
	js	L1321
	movl	40(%esp), %edi
	movzbl	76(%esp), %edx
	movzbl	__ZL19yax_hitscan_ceilmap(%edi), %eax
	andl	%edx, %eax
	cmpb	%al, %dl
	jne	L1449
L1321:
	testw	%cx, %cx
	js	L1450
	movl	40(%esp), %edi
	movzbl	76(%esp), %ebx
	movzbl	__ZL20yax_hitscan_floormap(%edi), %eax
	andl	%ebx, %eax
	cmpb	%al, %bl
	jne	L1326
L1434:
	movzwl	134(%esp), %ecx
	cmpw	132(%esp), %cx
	jge	L1343
L1425:
	movswl	%cx, %eax
	addl	$1, %ecx
	movw	%cx, 134(%esp)
	movswl	_clipsectorlist(%eax,%eax), %eax
	movw	%ax, 78(%esp)
	movl	%eax, 68(%esp)
	leal	(%eax,%eax,4), %eax
	sall	$3, %eax
	movl	%eax, 64(%esp)
	addl	_sector, %eax
	movl	%eax, %edi
	jmp	L1310
L1448:
	cmpw	$511, 132(%esp)
	jle	L1428
	jmp	L1282
	.p2align 4,,10
	.p2align 3
L1326:
	movzwl	_headsectbunch(%ecx,%ecx), %eax
	cmpw	$-1, %ax
	je	L1432
	movswl	_numsectors, %ecx
	movl	%esi, 120(%esp)
	movl	$257, %edi
	movl	%ecx, 136(%esp)
	movl	__ZL15clipmove_warned, %ecx
	movl	%ecx, 128(%esp)
	jmp	L1340
	.p2align 4,,10
	.p2align 3
L1453:
	cmpw	$511, 132(%esp)
	jg	L1333
	orl	%ebx, %esi
	movl	%esi, %ecx
	movl	144(%esp), %esi
	movb	%cl, __ZL13clipsectormap(%esi)
	movswl	132(%esp), %esi
	movl	%esi, %ecx
	movw	%ax, _clipsectorlist(%esi,%esi)
	addl	$1, %ecx
	movw	%cx, 132(%esp)
L1331:
	movl	144(%esp), %eax
	orb	%bl, __ZL19yax_hitscan_ceilmap(%eax)
	subl	$1, %edi
	je	L1451
	movzwl	_nextsectbunch(%edx,%edx), %eax
	cmpw	$-1, %ax
	je	L1452
L1340:
	movswl	%ax, %edx
	movl	%eax, %ebx
	movl	%edx, %ecx
	andl	$7, %ebx
	sarl	$3, %ecx
	movzbl	__ZL8pow2char.lto_priv.4(%ebx), %ebx
	movl	%ecx, 144(%esp)
	cmpl	136(%esp), %edx
	jnb	L1331
	movzbl	__ZL13clipsectormap(%ecx), %esi
	movl	%esi, %ecx
	notl	%ecx
	testb	%bl, %cl
	jne	L1453
	cmpw	$511, 132(%esp)
	jle	L1331
L1333:
	orl	$1, 128(%esp)
	movb	$1, 112(%esp)
	jmp	L1331
L1449:
	movzwl	_headsectbunch+512(%ebx,%ebx), %eax
	cmpw	$-1, %ax
	je	L1321
	movswl	_numsectors, %edi
	movb	$0, 128(%esp)
	movl	%esi, 116(%esp)
	movl	%edi, 136(%esp)
	movl	__ZL15clipmove_warned, %edi
	movw	%cx, 108(%esp)
	movl	%edi, 120(%esp)
	movl	$257, %edi
	jmp	L1323
	.p2align 4,,10
	.p2align 3
L1454:
	cmpw	$511, 132(%esp)
	jg	L1317
	orl	%ebx, %esi
	movl	%esi, %ecx
	movl	144(%esp), %esi
	movb	%cl, __ZL13clipsectormap(%esi)
	movswl	132(%esp), %esi
	movl	%esi, %ecx
	movw	%ax, _clipsectorlist(%esi,%esi)
	addl	$1, %ecx
	movw	%cx, 132(%esp)
L1315:
	movl	144(%esp), %eax
	orb	%bl, __ZL20yax_hitscan_floormap(%eax)
	subl	$1, %edi
	je	L1430
	movzwl	_nextsectbunch+8192(%edx,%edx), %eax
	cmpw	$-1, %ax
	je	L1430
L1323:
	movswl	%ax, %edx
	movl	%eax, %ebx
	movl	%edx, %ecx
	andl	$7, %ebx
	sarl	$3, %ecx
	movzbl	__ZL8pow2char.lto_priv.4(%ebx), %ebx
	movl	%ecx, 144(%esp)
	cmpl	136(%esp), %edx
	jnb	L1315
	movzbl	__ZL13clipsectormap(%ecx), %esi
	movl	%esi, %ecx
	notl	%ecx
	testb	%bl, %cl
	jne	L1454
	cmpw	$511, 132(%esp)
	jle	L1315
L1317:
	orl	$1, 120(%esp)
	movb	$1, 128(%esp)
	jmp	L1315
L1343:
	cmpl	%esi, __ZL13clipspritenum
	jg	L1311
	jmp	L1246
L1438:
	movswl	%cx, %eax
	addl	$1, %ecx
	movw	%cx, 134(%esp)
	jmp	L1427
L1430:
	movl	116(%esp), %esi
	movswl	108(%esp), %ecx
	cmpb	$0, 128(%esp)
	je	L1321
	movl	120(%esp), %eax
	movl	%eax, __ZL15clipmove_warned
	jmp	L1321
L1452:
	movl	120(%esp), %esi
	cmpb	$0, 112(%esp)
	je	L1455
	movl	128(%esp), %eax
	movl	%eax, __ZL15clipmove_warned
	jmp	L1434
L1276:
	movl	88(%esp), %edx
	sarl	$3, %edx
	movzbl	__ZL13clipsectormap(%edx), %ecx
	leal	__ZL13clipsectormap(%edx), %esi
	movl	80(%esp), %edx
	movl	%esi, 136(%esp)
	andl	$7, %edx
	movl	%ecx, %esi
	notl	%ecx
	movzbl	__ZL8pow2char.lto_priv.4(%edx), %edx
	testb	%dl, %cl
	je	L1428
L1279:
	addw	$1, 132(%esp)
	orl	%esi, %edx
	movl	136(%esp), %esi
	movb	%dl, (%esi)
	movzwl	80(%esp), %esi
	movw	%si, _clipsectorlist(%ebx,%ebx)
	jmp	L1428
L1352:
	movl	$-1, 56(%esp)
	jmp	L1246
L1455:
	movzwl	134(%esp), %ecx
	cmpw	132(%esp), %cx
	jge	L1342
	jmp	L1425
L1447:
	movswl	128(%esp), %eax
	call	_tileLoad
	movl	128(%esp), %eax
	movl	_waloff(,%eax,4), %eax
	testl	%eax, %eax
	je	L1299
	jmp	L1301
	.p2align 4,,10
	.p2align 3
L1451:
	movl	120(%esp), %esi
	cmpb	$0, 112(%esp)
	je	L1432
	movl	128(%esp), %eax
	movzwl	134(%esp), %ecx
	movl	%eax, __ZL15clipmove_warned
	cmpw	132(%esp), %cx
	jge	L1342
	jmp	L1425
L1446:
	movl	128(%esp), %eax
	call	_animateoffs
	addl	%eax, 128(%esp)
	jmp	L1300
L1432:
	movzwl	134(%esp), %ecx
	cmpw	132(%esp), %cx
	jge	L1342
	movswl	%cx, %eax
	addl	$1, %ecx
	movw	%cx, 134(%esp)
	movswl	_clipsectorlist(%eax,%eax), %eax
	movw	%ax, 78(%esp)
	movl	%eax, 68(%esp)
	imull	$40, %eax, %eax
	movl	%eax, 64(%esp)
	addl	_sector, %eax
	movl	%eax, %edi
	jmp	L1310
	.cfi_endproc
LFE59:
	.p2align 4
	.globl	_paletteInitClosestColorMap.constprop.0
	.def	_paletteInitClosestColorMap.constprop.0;	.scl	2;	.type	32;	.endef
_paletteInitClosestColorMap.constprop.0:
LFB63:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$255, %ebp
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
	movl	$4913, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL7colhere.lto_priv.0, (%esp)
	call	_memset
	movl	$39304, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL7colhead.lto_priv.0, (%esp)
	call	_memset
	movl	$768, 8(%esp)
	movl	$_palette, 4(%esp)
	movl	$__ZL16colmatch_palette.lto_priv.0, (%esp)
	call	_memcpy
	movl	$_palette+765, %eax
	movl	%ebp, %edx
	.p2align 4
	.p2align 3
L1458:
	movzbl	(%eax), %ecx
	movzbl	1(%eax), %ebx
	movl	$-1, %edi
	shrb	$3, %cl
	shrb	$3, %bl
	movzbl	%cl, %ecx
	movzbl	%bl, %ebx
	sall	$5, %ecx
	addl	%ebx, %ecx
	movzbl	2(%eax), %ebx
	sall	$5, %ecx
	shrb	$3, %bl
	movzbl	%bl, %ebx
	leal	1057(%ecx,%ebx), %ebx
	movl	%ebx, %esi
	movl	%ebx, %ecx
	sarl	$3, %esi
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.5(%ecx), %ecx
	movzbl	__ZL7colhere.lto_priv.0(%esi), %ebp
	movb	%cl, 15(%esp)
	movl	%ebp, %ecx
	notl	%ecx
	testb	%cl, 15(%esp)
	jne	L1457
	movzbl	__ZL7colhead.lto_priv.0(%ebx), %edi
L1457:
	movzbl	15(%esp), %ecx
	movl	%edi, __ZL7colnext.lto_priv.0(,%edx,4)
	subl	$3, %eax
	movb	%dl, __ZL7colhead.lto_priv.0(%ebx)
	subl	$1, %edx
	orl	%ebp, %ecx
	movb	%cl, __ZL7colhere.lto_priv.0(%esi)
	cmpl	$-1, %edx
	jne	L1458
	movl	$16384, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL15colmatchresults.lto_priv.0, (%esp)
	call	_memset
	movl	$0, __ZL18numcolmatchresults.lto_priv.0
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
LFE63:
	.globl	__ZL18numcolmatchresults.lto_priv.0
	.bss
	.align 4
__ZL18numcolmatchresults.lto_priv.0:
	.space 4
	.globl	__ZL15colmatchresults.lto_priv.0
	.align 32
__ZL15colmatchresults.lto_priv.0:
	.space 16384
	.globl	__ZL7colnext.lto_priv.0
	.align 32
__ZL7colnext.lto_priv.0:
	.space 1024
	.globl	__ZL16colmatch_palette.lto_priv.0
	.align 32
__ZL16colmatch_palette.lto_priv.0:
	.space 768
	.globl	__ZL7colhead.lto_priv.0
	.align 32
__ZL7colhead.lto_priv.0:
	.space 39304
	.globl	__ZL7colhere.lto_priv.0
	.align 32
__ZL7colhere.lto_priv.0:
	.space 4913
	.globl	_hitallsprites
	.align 4
_hitallsprites:
	.space 4
.lcomm __ZL20yax_hitscan_floormap,512,32
.lcomm __ZL19yax_hitscan_ceilmap,512,32
	.section .rdata,"dr"
	.align 4
_hitscangoal:
	.long	536870911
	.long	536870911
.lcomm __ZL16layerclipsectnum,4,4
.lcomm __ZL19layerclipsectorlist,1024,32
.lcomm __ZL11origmapinfo,12,8
.lcomm __ZL17origclipsectormap,512,32
.lcomm __ZL18origclipsectorlist,1024,32
.lcomm __ZL15origclipsectnum,4,4
.lcomm __ZL15yax_clipsectmap,512,32
	.globl	_ryi
	.bss
	.align 32
_ryi:
	.space 32
	.globl	_rxi
	.align 32
_rxi:
	.space 32
.lcomm __ZZL16clipupdatesector4vec2IiEPsiE10sectbitmap,512,32
.lcomm __ZZL16clipupdatesector4vec2IiEPsiE8sectlist,8192,32
.lcomm __ZZL16clipupdatesector4vec2IiEPsiE9insidemap,512,32
	.globl	_enginecompatibilitymode
	.section .rdata,"dr"
	.align 4
_enginecompatibilitymode:
	.long	2147483647
.lcomm __ZL10clipignore,512,32
.lcomm __ZL13clipobjectval,8192,32
.lcomm __ZL6clipit,65536,32
.lcomm __ZL7clipnum,2,2
.lcomm __ZL15clipmove_warned,4,4
	.globl	_clipsectorlist
	.bss
	.align 32
_clipsectorlist:
	.space 1024
.lcomm __ZL13clipsectormap,512,32
.lcomm __ZL11clipsectnum,4,4
.lcomm __ZL14clipspritelist,8192,32
.lcomm __ZL13clipspritenum,4,4
	.globl	_divideu32_noinline
	.section .rdata,"dr"
	.align 4
_divideu32_noinline:
	.long	_divideu32.lto_priv.0
.lcomm __ZL8clipinfo,3072,32
	.globl	_quickloadboard
	.bss
	.align 4
_quickloadboard:
	.space 4
.lcomm __ZL11clipmapinfo,12,8
.lcomm __ZL8pictoidx,61440,32
.lcomm __ZL10loadsprite,4,4
.lcomm __ZL11loadwallinv,4,4
.lcomm __ZL8loadwall,4,4
.lcomm __ZL10loadsector,4,4
.lcomm __ZL11tempictoidx,4,4
.lcomm __ZL8sectoidx,4,4
.lcomm __ZL5sectq,4,4
.lcomm __ZL12numclipsects,4,4
.lcomm __ZL11numclipmaps,4,4
	.globl	_classicht
	.align 32
_classicht:
	.space 368640
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_divideu32.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.5;	.scl	2;	.type	32;	.endef
	.def	_inside;	.scl	2;	.type	32;	.endef
	.def	_yax_getzsofslope;	.scl	2;	.type	32;	.endef
	.def	_getsectordist;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.1;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.1;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_updatesector;	.scl	2;	.type	32;	.endef
	.def	_inthash_init;	.scl	2;	.type	32;	.endef
	.def	_inthash_add;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_inthash_find;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_copybufbyte;	.scl	2;	.type	32;	.endef
	.def	__ZN7cache1d20inc_and_check_cacnumEv.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_initprintf;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_engineLoadBoard;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_checksectorpointer;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_initspritelists;	.scl	2;	.type	32;	.endef
	.def	@ksqrt@4;	.scl	2;	.type	32;	.endef
	.def	_rintersect;	.scl	2;	.type	32;	.endef
	.def	_yax_getnextwall;	.scl	2;	.type	32;	.endef
	.def	_getflorzofslopeptr.part.0;	.scl	2;	.type	32;	.endef
	.def	_getceilzofslopeptr.part.0;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.part.0;	.scl	2;	.type	32;	.endef
	.def	_getzsofslopeptr;	.scl	2;	.type	32;	.endef
	.def	_tileLoad;	.scl	2;	.type	32;	.endef
	.def	_animateoffs;	.scl	2;	.type	32;	.endef
