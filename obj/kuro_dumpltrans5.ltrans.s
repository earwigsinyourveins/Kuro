	.file	"<artificial>"
	.text
	.p2align 4
	.globl	__Z18DoGirlNinjaSpecials
	.def	__Z18DoGirlNinjaSpecials;	.scl	2;	.type	32;	.endef
__Z18DoGirlNinjaSpecials:
LFB0:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movswl	8(%esp), %eax
	movl	_User(,%eax,4), %edx
	cmpb	$21, 262(%edx)
	jne	L2
	imull	$44, %eax, %eax
	movl	_sprite, %ebx
	leal	(%ebx,%eax), %ecx
	movl	$-1171354717, %ebx
	addl	$12, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	40(%ecx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	andw	$-3, 12(%ecx)
	mull	%ebx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ecx), %edx
	subl	_sprite, %edx
	movw	%ax, 40(%ecx)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$-10, 16(%ecx)
L2:
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE0:
	.p2align 4
	.globl	__Z20DoHornetMatchPlayerZs
	.def	__Z20DoHornetMatchPlayerZs;	.scl	2;	.type	32;	.endef
__Z20DoHornetMatchPlayerZs:
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
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	_sprite, %ecx
	movswl	28(%esp), %eax
	movl	%ecx, (%esp)
	imull	$44, %eax, %ebx
	addl	%ecx, %ebx
	movl	_User(,%eax,4), %ecx
	movl	200(%ecx), %esi
	movswl	14(%esi), %ebp
	movl	8(%esi), %eax
	movzbl	21(%esi), %edx
	movswl	_tilesiz+2(,%ebp,4), %edi
	testb	$-128, 12(%esi)
	je	L6
	movsbl	_picanm+2(%ebp,%ebp,4), %esi
	sall	$8, %esi
	cmpb	$64, %dl
	je	L32
	imull	%edi, %edx
	movl	%eax, %ebp
	addl	%edx, %edx
	leal	(%edx,%esi), %edi
	subl	%edi, %ebp
L8:
	subl	%esi, %edx
	addl	%edx, %eax
	jmp	L11
	.p2align 4,,10
	.p2align 3
L6:
	cmpb	$64, %dl
	je	L33
	imull	%edi, %edx
	leal	0(,%edx,4), %edi
L10:
	movl	%eax, %ebp
	subl	%edi, %ebp
L11:
	leal	(%eax,%ebp), %edi
	movl	_randomseed, %eax
	movl	256(%ecx), %esi
	sarl	%edi
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	subl	%esi, %edi
	leal	1(%eax,%edx,4), %eax
	movl	$56064, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L12
	sall	$14, %eax
	movl	$1677747263, %ebp
	mull	%ebp
	shrl	$21, %edx
	addl	$20, %edx
	sall	$8, %edx
L12:
	movl	%edi, %eax
	negl	%eax
	cmovs	%edi, %eax
	cmpl	%edx, %eax
	jle	L13
	testl	%edi, %edi
	jle	L14
	addl	$6144, %esi
	movl	%esi, 256(%ecx)
L13:
	movl	120(%ecx), %edx
	movl	108(%ecx), %eax
	movl	104(%ecx), %ebp
	testl	%edx, %edx
	je	L17
	subl	_sector, %edx
	sarl	$3, %edx
	imull	$-858993459, %edx, %edx
	movl	_SectUser(,%edx,4), %edx
	testl	%edx, %edx
	je	L17
	movswl	10(%edx), %edx
	movl	%eax, %edi
	movw	%dx, 6(%esp)
	sall	$8, %edx
	subl	$2048, %edx
	subl	%edx, %edi
	cmpw	$0, 6(%esp)
	cmovne	%edi, %eax
L17:
	movswl	98(%ecx), %edx
	subl	%edx, %eax
	movl	128(%ecx), %edx
	leal	-4096(%eax), %edi
	testl	%edx, %edx
	cmovne	%eax, %edi
	cmpl	%esi, %edi
	cmovg	%esi, %edi
	movswl	96(%ecx), %esi
	addl	%ebp, %esi
	movl	124(%ecx), %ebp
	leal	4096(%esi), %edx
	testl	%ebp, %ebp
	cmovne	%esi, %edx
	cmpl	%edi, %edx
	cmovl	%edi, %edx
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	cmpl	%esi, %eax
	cmovl	%esi, %eax
	movzwl	176(%ecx), %esi
	leal	60(%esi), %edx
	movl	%eax, 256(%ecx)
	andl	$2047, %edx
	movw	%dx, 176(%ecx)
	movswl	_sintable(%edx,%edx), %esi
	leal	8(%ebx), %edx
	subl	(%esp), %edx
	sarl	$2, %esi
	addl	%eax, %esi
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, 8(%ebx)
	movswl	96(%ecx), %edi
	addl	104(%ecx), %edi
	leal	4096(%edi), %eax
	cmpl	%eax, %esi
	jge	L20
	addl	$8192, %edi
	movl	%edi, 256(%ecx)
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, 8(%ebx)
L20:
	addl	$8, %esp
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
L14:
	.cfi_restore_state
	subl	$1536, %esi
	movl	%esi, 256(%ecx)
	jmp	L13
	.p2align 4,,10
	.p2align 3
L32:
	sall	$7, %edi
	movl	%eax, %ebp
	movl	%edi, %edx
	leal	(%edi,%esi), %edi
	subl	%edi, %ebp
	jmp	L8
	.p2align 4,,10
	.p2align 3
L33:
	sall	$8, %edi
	jmp	L10
	.cfi_endproc
LFE1:
	.p2align 4
	.globl	__Z16setinterpolationPi
	.def	__Z16setinterpolationPi;	.scl	2;	.type	32;	.endef
__Z16setinterpolationPi:
LFB3:
	.cfi_startproc
	movl	_numinterpolations, %ecx
	movl	4(%esp), %edx
	cmpl	$16383, %ecx
	jg	L34
	movl	%ecx, %eax
	subl	$1, %eax
	jns	L37
	jmp	L36
	.p2align 4
	.p2align 4,,10
	.p2align 3
L39:
	subl	$1, %eax
	jb	L36
L37:
	cmpl	%edx, _curipos(,%eax,4)
	jne	L39
L34:
	ret
	.p2align 4,,10
	.p2align 3
L36:
	movl	%edx, _curipos(,%ecx,4)
	movl	(%edx), %eax
	movl	%eax, _oldipos(,%ecx,4)
	addl	$1, %ecx
	movl	%ecx, _numinterpolations
	ret
	.cfi_endproc
LFE3:
	.p2align 4
	.globl	__Z17stopinterpolationPi
	.def	__Z17stopinterpolationPi;	.scl	2;	.type	32;	.endef
__Z17stopinterpolationPi:
LFB4:
	.cfi_startproc
	movl	_numinterpolations, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %ecx
	movl	%edx, %eax
	subl	$1, %eax
	js	L40
	xorl	%ebx, %ebx
	jmp	L43
	.p2align 4
	.p2align 4,,10
	.p2align 3
L42:
	subl	$1, %eax
	jb	L49
L43:
	cmpl	%ecx, _curipos(,%eax,4)
	jne	L42
	subl	$1, %edx
	movl	_oldipos(,%edx,4), %ebx
	movl	%ebx, _oldipos(,%eax,4)
	movl	_bakipos(,%edx,4), %ebx
	movl	%ebx, _bakipos(,%eax,4)
	movl	_curipos(,%edx,4), %ebx
	movl	%ebx, _curipos(,%eax,4)
	movl	$1, %ebx
	subl	$1, %eax
	jnb	L43
L49:
	testb	%bl, %bl
	je	L40
	movl	%edx, _numinterpolations
L40:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE4:
	.section .rdata,"dr"
LC0:
	.ascii "3drealms.pal\0"
	.text
	.p2align 4
	.def	__Z9LogoLevelv.part.0;	.scl	3;	.type	32;	.endef
__Z9LogoLevelv.part.0:
LFB5:
	.cfi_startproc
	subl	$816, %esp
	.cfi_def_cfa_offset 820
	xorl	%eax, %eax
	movl	$0, 36(%esp)
	movl	$8, 40(%esp)
	call	__Z7LoadAnms
	xorl	%edx, %edx
	movl	$LC0, %eax
	call	_kopen4load.part.0
	cmpl	$-1, %eax
	jne	L70
L51:
	movb	$0, _ready2send
	xorl	%eax, %eax
	movl	$0, _totalclock
	movl	$0, _totalclock+8
	movl	$0, _totalclock+12
	movl	$0, _ototalclock
L53:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L53
	.p2align 4
	.p2align 3
L60:
	xorl	%eax, %eax
	call	_videoClearViewableArea
	movl	_xdim, %eax
	movl	_ydim, %edx
	subl	$1, %eax
	js	L55
	subl	$1, %edx
	js	L55
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
	movl	$2325, 4(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L55:
	call	_videoNextPage
	call	_handleevents.isra.0
	leal	36(%esp), %eax
	call	_CONTROL_GetUserInput.isra.0
	leal	36(%esp), %eax
	call	_CONTROL_ClearUserInput
	cmpb	$0, _quitevent
	jne	L71
	movl	_ototalclock, %eax
	movl	_totalclock, %edx
	addl	$3, %eax
	cmpl	%edx, %eax
	jg	L58
	movl	%eax, _ototalclock
L58:
	cmpl	$600, %edx
	jg	L57
	xorl	%eax, %eax
	jmp	L59
	.p2align 5
	.p2align 4,,10
	.p2align 3
L73:
	addl	$1, %eax
	cmpl	$256, %eax
	je	L72
L59:
	cmpb	$0, _keystatus(%eax)
	je	L73
L57:
	xorl	%eax, %eax
	call	_videoClearViewableArea
	call	_videoNextPage
	movzbl	_gs+13, %eax
	movl	$2, %ecx
	xorl	%edx, %edx
	call	_videoSetPalette
	addl	$816, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
L72:
	.cfi_restore_state
	cmpb	$0, 36(%esp)
	jne	L57
	cmpb	$0, 37(%esp)
	je	L60
	jmp	L57
	.p2align 4,,10
	.p2align 3
L71:
	movb	$1, _QuitFlag
	jmp	L57
L70:
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	$768, %ecx
	leal	44(%esp), %edx
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	%ebx, 812(%esp)
	.cfi_offset 3, -8
	movl	%eax, %ebx
	call	__Z14kread_internaliPviPKhPKiPi
	movl	%ebx, %eax
	call	_kclose
	leal	44(%esp), %eax
	.p2align 5
	.p2align 4
	.p2align 3
L52:
	salb	$2, (%eax)
	leal	812(%esp), %ebx
	salb	$2, 1(%eax)
	addl	$2, %eax
	cmpl	%eax, %ebx
	jne	L52
	leal	44(%esp), %edx
	movl	$1, %eax
	call	_paletteSetColorTable
	movl	$2, %ecx
	movl	$1, %edx
	movzbl	_gs+13, %eax
	call	_videoSetPalette
	movl	812(%esp), %ebx
	.cfi_restore 3
	jmp	L51
	.cfi_endproc
LFE5:
	.p2align 4
	.def	__Z17minigametextextraiiPKcis.constprop.0.isra.0;	.scl	3;	.type	32;	.endef
__Z17minigametextextraiiPKcis.constprop.0.isra.0:
LFB18:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	%esi, 40(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movzbl	(%ecx), %eax
	testb	%al, %al
	je	L74
	movl	%edi, 44(%esp)
	.cfi_offset 7, -12
	movl	%edx, %edi
	movl	%ebx, 36(%esp)
	sall	$16, %edi
	.cfi_offset 3, -20
	leal	1(%ecx), %ebx
	movl	%ebp, 48(%esp)
	.cfi_offset 5, -8
	jmp	L79
	.p2align 4,,10
	.p2align 3
L76:
	leal	-33(%eax), %edx
	cmpw	$93, %dx
	ja	L85
	movl	_xdim, %edx
	leal	2897(%eax), %ebp
	movl	_ydim, %eax
	subl	$1, %edx
	js	L78
	subl	$1, %eax
	js	L78
	movl	%edx, 28(%esp)
	movswl	%bp, %edx
	movl	$65536, %ecx
	movl	%eax, 32(%esp)
	movl	%esi, %eax
	movl	%edx, 4(%esp)
	sall	$16, %eax
	movl	%edi, %edx
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$26, 16(%esp)
	movl	$23, 12(%esp)
	movl	$-128, 8(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L78:
	movzwl	%bp, %ebp
	addl	$1, %ebx
	movswl	_tilesiz(,%ebp,4), %eax
	addl	%eax, %esi
	movzbl	-1(%ebx), %eax
	testb	%al, %al
	je	L85
L79:
	cmpb	$32, %al
	jne	L76
	movzbl	(%ebx), %eax
	addl	$4, %esi
	addl	$1, %ebx
	testb	%al, %al
	jne	L79
	.p2align 4
	.p2align 3
L85:
	movl	36(%esp), %ebx
	.cfi_restore 3
	movl	44(%esp), %edi
	.cfi_restore 7
	movl	48(%esp), %ebp
	.cfi_restore 5
L74:
	movl	40(%esp), %esi
	addl	$52, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE18:
	.section .rdata,"dr"
LC1:
	.ascii "%d\0"
	.text
	.p2align 4
	.def	__ZL19DrawSWPStatusNumberssi.constprop.0;	.scl	3;	.type	32;	.endef
__ZL19DrawSWPStatusNumberssi.constprop.0:
LFB20:
	.cfi_startproc
	subl	$72, %esp
	.cfi_def_cfa_offset 76
	movl	%ebx, 56(%esp)
	.cfi_offset 3, -20
	leal	40(%esp), %ebx
	movl	%edx, 12(%esp)
	movl	$LC1, 8(%esp)
	movl	$16, 4(%esp)
	movl	%ebx, (%esp)
	movl	%ebp, 68(%esp)
	.cfi_offset 5, -8
	movl	%eax, %ebp
	call	_snprintf
	movzbl	40(%esp), %eax
	testb	%al, %al
	je	L86
	movl	%esi, 60(%esp)
	movzbl	%al, %edx
	movl	%ebx, %ecx
	.cfi_offset 6, -16
	xorl	%esi, %esi
	movl	%edi, 64(%esp)
	.cfi_offset 7, -12
	xorl	%edi, %edi
	movw	%bp, 38(%esp)
	movl	%eax, %ebp
	.p2align 5
	.p2align 4
	.p2align 3
L89:
	leal	-48(%edx), %eax
	cmpb	$9, %al
	ja	L88
	movswl	_tilesiz+14352(,%edx,4), %eax
	addl	$1, %edi
	addl	%eax, %esi
L88:
	movzbl	1(%ecx), %edx
	addl	$1, %ecx
	testb	%dl, %dl
	jne	L89
	cmpl	$2, %edi
	leal	-1(%esi,%edi), %edx
	movl	%ebp, %eax
	movswl	38(%esp), %ebp
	cmovge	%edx, %esi
	sarl	%esi
	subl	%esi, %ebp
	.p2align 4
	.p2align 3
L93:
	leal	-48(%eax), %edx
	cmpb	$9, %dl
	ja	L91
	movzbl	%al, %eax
	movl	_ydim, %edx
	leal	3588(%eax), %esi
	movl	_xdim, %eax
	subl	$1, %eax
	js	L92
	subl	$1, %edx
	js	L92
	movl	%eax, 28(%esp)
	movswl	%si, %eax
	movl	%ebp, %edi
	movl	$65536, %ecx
	movl	%edx, 32(%esp)
	sall	$16, %edi
	movl	$12189696, %edx
	movl	%eax, 4(%esp)
	movl	%edi, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$26, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L92:
	movzwl	%si, %esi
	movswl	_tilesiz(,%esi,4), %eax
	leal	1(%ebp,%eax), %ebp
L91:
	movzbl	1(%ebx), %eax
	addl	$1, %ebx
	testb	%al, %al
	jne	L93
	movl	60(%esp), %esi
	.cfi_restore 6
	movl	64(%esp), %edi
	.cfi_restore 7
L86:
	movl	56(%esp), %ebx
	movl	68(%esp), %ebp
	addl	$72, %esp
	.cfi_restore 3
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE20:
	.p2align 4
	.def	__ZL25DrawCompactCTFScoreNumberiiiis.constprop.0;	.scl	3;	.type	32;	.endef
__ZL25DrawCompactCTFScoreNumberiiiis.constprop.0:
LFB22:
	.cfi_startproc
	subl	$76, %esp
	.cfi_def_cfa_offset 80
	movl	%esi, 64(%esp)
	.cfi_offset 6, -16
	leal	44(%esp), %esi
	movl	%ecx, 12(%esp)
	movl	$LC1, 8(%esp)
	movl	$16, 4(%esp)
	movl	%esi, (%esp)
	movl	%ebx, 60(%esp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	%edi, 68(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	call	_snprintf
	movzbl	44(%esp), %eax
	testb	%al, %al
	je	L100
	movzbl	80(%esp), %ecx
	sall	$16, %ebx
	movl	%ebp, 72(%esp)
	.cfi_offset 5, -8
	movl	%ebx, 36(%esp)
	movl	%ecx, 40(%esp)
	.p2align 4
	.p2align 3
L103:
	addw	$3684, %ax
	movl	_ydim, %ecx
	movzwl	%ax, %edx
	movswl	_tilesiz(,%edx,4), %ebx
	movl	_xdim, %edx
	subl	$1, %edx
	js	L102
	subl	$1, %ecx
	js	L102
	movl	%ecx, 32(%esp)
	movl	40(%esp), %ecx
	cwtl
	movl	%edi, %ebp
	movl	%edx, 28(%esp)
	sall	$16, %ebp
	movl	36(%esp), %edx
	movl	%ecx, 12(%esp)
	movl	$57344, %ecx
	movl	%eax, 4(%esp)
	movl	%ebp, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$26, 16(%esp)
	movl	$0, 8(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L102:
	movzbl	1(%esi), %eax
	testb	%al, %al
	jne	L112
	movl	72(%esp), %ebp
	.cfi_restore 5
L100:
	movl	60(%esp), %ebx
	movl	64(%esp), %esi
	movl	68(%esp), %edi
	addl	$76, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L112:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	imull	$57344, %ebx, %ebx
	movl	$1, %edx
	sarl	$16, %ebx
	testl	%ebx, %ebx
	cmovle	%edx, %ebx
	addl	$1, %esi
	leal	1(%edi,%ebx), %edi
	jmp	L103
	.cfi_endproc
LFE22:
	.section .rdata,"dr"
	.align 4
LC2:
	.ascii "  NAME         1     2     3     4     5     6     7    8     KILLS\0"
LC3:
	.ascii "  %-13s\0"
LC4:
	.ascii "%s_xxxx.png\0"
LC5:
	.ascii "%s\0"
	.align 4
LC6:
	.ascii "Scoreboard screenshot could not be saved in %s.\12\0"
	.text
	.p2align 4
	.def	__Z10StatScreenP12PLAYERstruct.part.0;	.scl	3;	.type	32;	.endef
__Z10StatScreenP12PLAYERstruct.part.0:
LFB24:
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
	xorl	%eax, %eax
	subl	$488, %esp
	.cfi_def_cfa_offset 508
	movl	$0, __ZL8permtail.lto_priv.0
	movl	$0, __ZL8permhead.lto_priv.0
	call	_videoClearViewableArea
	movl	_xdim, %eax
	movl	_ydim, %edx
	subl	$1, %eax
	js	L114
	subl	$1, %edx
	js	L114
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
	movl	$5114, 4(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L114:
	leal	80(%esp), %ecx
	leal	82(%esp), %edx
	movl	$_ds, %eax
	movl	$1096044372, _ds+12
	movl	$320, %esi
	movl	$0, 100(%esp)
	movl	$0, 104(%esp)
	movl	$0, 108(%esp)
	movl	$0, 112(%esp)
	movl	$0, 84(%esp)
	movl	$0, 88(%esp)
	movl	$0, 92(%esp)
	movl	$0, 96(%esp)
	movl	$1414288717, _ds
	movl	$1095520329, _ds+4
	movl	$542262617, _ds+8
	movl	$5459009, _ds+15
	call	__Z17MNU_MeasureStringPKcPsS1_
	movswl	82(%esp), %eax
	movl	%esi, %edx
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	movl	$_ds, %ecx
	subl	%eax, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	movl	$68, %edx
	sarl	%eax
	cwtl
	call	__Z14MNU_DrawStringssPKcss
	leal	80(%esp), %ecx
	leal	82(%esp), %edx
	movl	$_ds, %eax
	movl	$1397051984, _ds
	movl	$1347625043, _ds+4
	movl	$541410113, _ds+8
	movl	$542261570, _ds+12
	movl	$1126190932, _ds+16
	movl	$1230261839, _ds+20
	movl	$4543822, _ds+24
	call	__Z17MNU_MeasureStringPKcPsS1_
	movswl	82(%esp), %eax
	movl	$_ds, %ecx
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	movl	$189, %edx
	subl	%eax, %esi
	movl	%esi, %eax
	shrl	$31, %eax
	addl	%esi, %eax
	sarl	%eax
	cwtl
	call	__Z14MNU_DrawStringssPKcss
	xorl	%eax, %eax
L115:
	movl	LC2(%eax), %edi
	movl	LC2+4(%eax), %esi
	addl	$16, %eax
	movl	LC2-8(%eax), %ecx
	movl	LC2-4(%eax), %edx
	movl	%edi, _ds-16(%eax)
	movl	%esi, _ds-12(%eax)
	movl	%ecx, _ds-8(%eax)
	movl	%edx, _ds-4(%eax)
	cmpl	$64, %eax
	jb	L115
	movl	LC2(%eax), %edx
	movl	%edx, _ds(%eax)
	movl	$_ds, 16(%esp)
	movl	$0, 12(%esp)
	movl	$85, 8(%esp)
	movl	$20, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z22DisplayMiniBarSmStringP12PLAYERstructsssPKc
	movzwl	_OrigCommPlayers, %esi
	imull	$24124, _myconnectindex, %eax
	addl	$_Player, %eax
	movl	%eax, 44(%esp)
	testw	%si, %si
	jle	L117
	leal	84(%esp), %edx
	movswl	%si, %eax
	xorl	%ebx, %ebx
	movw	%si, 70(%esp)
	movl	$_Player+23262, 72(%esp)
	movl	%edx, %edi
	movl	$1, %esi
	movl	$_Player+23262, 60(%esp)
	movw	%bx, 42(%esp)
	movl	%eax, 56(%esp)
	movl	%edx, 76(%esp)
	.p2align 4
	.p2align 3
L123:
	movl	60(%esp), %ebx
	movl	%esi, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$_ds, (%esp)
	leal	-23262(%ebx), %eax
	movl	%eax, 48(%esp)
	call	_sprintf
	movzwl	42(%esp), %eax
	movl	$_ds, 16(%esp)
	movl	$0, 12(%esp)
	movw	%ax, 68(%esp)
	movzbl	%al, %eax
	leal	99(%eax,%eax,8), %eax
	movl	$20, 4(%esp)
	movswl	%ax, %ebp
	movl	44(%esp), %eax
	movl	%ebp, 8(%esp)
	movl	%eax, (%esp)
	movl	%ebp, 52(%esp)
	call	__Z22DisplayMiniBarSmStringP12PLAYERstructsssPKc
	movl	%ebx, 8(%esp)
	movl	$LC3, 4(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	movl	$_ds, 16(%esp)
	movzbl	34(%ebx), %eax
	xorl	%ebx, %ebx
	movl	%ebp, 8(%esp)
	addl	$16, %eax
	movl	$20, 4(%esp)
	movl	%eax, 12(%esp)
	movl	44(%esp), %eax
	movl	%eax, (%esp)
	call	__Z22DisplayMiniBarSmStringP12PLAYERstructsssPKc
	movl	%esi, 64(%esp)
	jmp	L122
	.p2align 4,,10
	.p2align 3
L157:
	imull	$24124, %ebx, %edx
	movl	60(%esp), %ebp
	leal	(%eax,%ecx), %esi
	movw	%si, 36(%esp)
	xorl	%esi, %esi
	movzbl	_Player+23296(%edx), %edx
	cmpb	%dl, 34(%ebp)
	je	L155
L119:
	movzwl	36(%esp), %edx
	movw	%dx, (%edi)
	movl	%eax, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	movl	52(%esp), %eax
	movl	%esi, 12(%esp)
	movl	$_ds, 16(%esp)
	movl	%eax, 8(%esp)
	movzbl	%bl, %eax
	addl	$1, %ebx
	leal	(%eax,%eax,2), %eax
	leal	80(,%eax,8), %eax
	cwtl
	movl	%eax, 4(%esp)
	movl	44(%esp), %eax
	movl	%eax, (%esp)
	call	__Z22DisplayMiniBarSmStringP12PLAYERstructsssPKc
	cmpl	%ebx, 56(%esp)
	je	L156
L122:
	movl	48(%esp), %eax
	movzwl	(%edi), %ecx
	movswl	23240(%eax,%ebx,2), %eax
	addw	%ax, 100(%esp,%ebx,2)
	cmpw	%bx, 42(%esp)
	je	L155
	cmpb	$0, _gNet+14
	jne	L157
	addl	%eax, %ecx
	xorl	%esi, %esi
	movw	%cx, 36(%esp)
	jmp	L119
	.p2align 4,,10
	.p2align 3
L155:
	subl	%eax, %ecx
	movl	$20, %esi
	movw	%cx, 36(%esp)
	jmp	L119
	.p2align 4,,10
	.p2align 3
L156:
	movl	64(%esp), %esi
	addw	$1, 42(%esp)
	addl	$2, %edi
	addl	$24124, 60(%esp)
	movzwl	42(%esp), %eax
	addl	$1, %esi
	cmpw	%ax, 70(%esp)
	jne	L123
	movzwl	68(%esp), %eax
	movl	$_ds, 16(%esp)
	movl	$83, %ecx
	movl	$0, 12(%esp)
	movl	76(%esp), %edx
	leal	117(%eax,%eax,8), %esi
	movl	$20, 4(%esp)
	movswl	%si, %eax
	movl	%edx, 36(%esp)
	movswl	%si, %edi
	movl	%eax, 8(%esp)
	movl	44(%esp), %eax
	movl	$1142956064, _ds
	movl	%eax, (%esp)
	movl	$1213481285, _ds+4
	movw	%cx, _ds+8
	call	__Z22DisplayMiniBarSmStringP12PLAYERstructsssPKc
	movl	%ebx, %eax
	movl	36(%esp), %ebp
	xorl	%ebx, %ebx
	movl	%eax, %esi
	.p2align 4
	.p2align 3
L124:
	movswl	100(%esp,%ebx,2), %eax
	movl	$LC1, 4(%esp)
	movl	$_ds, (%esp)
	movl	%eax, 8(%esp)
	call	_sprintf
	movzbl	%bl, %eax
	movl	%edi, 8(%esp)
	addl	$1, %ebx
	leal	(%eax,%eax,2), %eax
	movl	$_ds, 16(%esp)
	leal	80(,%eax,8), %eax
	movl	$0, 12(%esp)
	cwtl
	movl	%eax, 4(%esp)
	movl	44(%esp), %eax
	movl	%eax, (%esp)
	call	__Z22DisplayMiniBarSmStringP12PLAYERstructsssPKc
	cmpl	%ebx, %esi
	jne	L124
	movl	%esi, %ebx
	movl	%ebp, %edx
	movl	44(%esp), %ebp
	leal	99(%esi,%esi,8), %edi
	movl	%ebx, 36(%esp)
	movl	$99, %esi
	movl	%edx, %ebx
	.p2align 4
	.p2align 3
L125:
	movswl	(%ebx), %eax
	movl	$LC1, 4(%esp)
	addl	$2, %ebx
	movl	$_ds, (%esp)
	movl	%eax, 8(%esp)
	call	_sprintf
	movswl	%si, %eax
	movl	%ebp, (%esp)
	addl	$9, %esi
	movl	$_ds, 16(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$280, 4(%esp)
	call	__Z22DisplayMiniBarSmStringP12PLAYERstructsssPKc
	cmpl	%edi, %esi
	jne	L125
	movl	36(%esp), %ebx
	movl	72(%esp), %edi
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L126:
	movswl	84(%esp,%esi,2), %ecx
	movswl	%si, %eax
	movl	%edi, %edx
	addl	$1, %esi
	addl	$24124, %edi
	call	__Z27DemoAutoRecordCapturePlayersPKcs
	cmpl	%esi, %ebx
	jne	L126
L141:
	movl	56(%esp), %eax
	call	__Z32DemoAutoRecordScoreboardCompletes
	call	__Z8DemoTermv
	movl	_ScoreShotEnabled, %edx
	testl	%edx, %edx
	je	L127
	cmpb	$0, __ZL14DemoShotFolder.lto_priv.0
	je	L127
	cmpb	$0, __ZL12DemoShotBase.lto_priv.0
	je	L127
	leal	116(%esp), %esi
	movl	$__ZL12DemoShotBase.lto_priv.0, 12(%esp)
	leal	232(%esp), %ebx
	movl	$LC4, 8(%esp)
	movl	$116, 4(%esp)
	movl	%esi, (%esp)
	call	_snprintf
	movl	$_screenshot_dir, 12(%esp)
	movl	$LC5, 8(%esp)
	movl	$256, 4(%esp)
	movl	%ebx, (%esp)
	call	_snprintf
	movl	$__ZL14DemoShotFolder.lto_priv.0, 12(%esp)
	movl	$LC5, 8(%esp)
	movl	$256, 4(%esp)
	movl	$_screenshot_dir, (%esp)
	call	_snprintf
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	__Z18videoCaptureScreenPKcc
	cmpl	$-1, %eax
	je	L158
L128:
	movl	%ebx, 12(%esp)
	movl	$LC5, 8(%esp)
	movl	$256, 4(%esp)
	movl	$_screenshot_dir, (%esp)
	call	_snprintf
	movb	$0, __ZL14DemoShotFolder.lto_priv.0
L127:
	call	_videoNextPage
	xorl	%eax, %eax
	jmp	L130
	.p2align 5
	.p2align 4,,10
	.p2align 3
L159:
	addl	$1, %eax
	cmpl	$256, %eax
	je	L131
L130:
	cmpb	$0, _keystatus(%eax)
	je	L159
	.p2align 4
	.p2align 3
L129:
	xorl	%eax, %eax
	jmp	L133
	.p2align 5
	.p2align 4,,10
	.p2align 3
L160:
	addl	$1, %eax
	cmpl	$256, %eax
	je	L131
L133:
	cmpb	$0, _keystatus(%eax)
	je	L160
	cmpb	$0, _quitevent
	jne	L131
	call	_handleevents.isra.0
	call	__Z10getpacketsv
	jmp	L129
	.p2align 4,,10
	.p2align 3
L131:
	movb	$0, _keystatus+57
	movb	$0, _keystatus+28
	cmpb	$0, _gs+27
	je	L137
	jmp	L161
	.p2align 4,,10
	.p2align 3
L138:
	call	_handleevents.isra.0
	call	__Z10getpacketsv
	cmpb	$0, _keystatus+88
	je	L136
	call	__Z17ScreenCaptureKeysv.part.0
L136:
	cmpb	$0, _keystatus+57
	jne	L135
L137:
	cmpb	$0, _keystatus+28
	je	L138
L135:
	call	_MV_KillAllVoices.constprop.0
	testl	%eax, %eax
	jne	L162
L139:
	cmpb	$0, _DemoMode
	jne	L140
	call	__Z8StopSongv.part.0
L140:
	addl	$488, %esp
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
	jmp	__Z17Terminate3DSoundsv
L161:
	.cfi_restore_state
	cmpb	$0, _DemoMode
	jne	L137
	movl	$1, %ecx
	movl	$3, %edx
	movl	$_voc+19052, %eax
	movl	$1, (%esp)
	call	__Z8PlaySongPcihh.part.0
	cmpb	$0, _keystatus+57
	je	L137
	jmp	L135
L158:
	movl	$__ZL14DemoShotFolder.lto_priv.0, 4(%esp)
	movl	$LC6, (%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L128
L117:
	movl	$83, %eax
	movl	$_ds, 16(%esp)
	movw	%ax, _ds+8
	movl	44(%esp), %eax
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	$108, 8(%esp)
	movl	$20, 4(%esp)
	movl	$1142956064, _ds
	movl	$1213481285, _ds+4
	call	__Z22DisplayMiniBarSmStringP12PLAYERstructsssPKc
	movswl	%si, %eax
	movl	%eax, 56(%esp)
	jmp	L141
L162:
	movl	$2, _FX_ErrorCode
	jmp	L139
	.cfi_endproc
LFE24:
	.p2align 4
	.globl	__Z14SetupGirlNinjas
	.def	__Z14SetupGirlNinjas;	.scl	2;	.type	32;	.endef
__Z14SetupGirlNinjas:
LFB33:
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
	movl	_sprite, %ecx
	movswl	32(%esp), %edi
	imull	$44, %edi, %ebx
	addl	%ecx, %ebx
	testb	$16, 13(%ebx)
	je	L164
	movl	_User(,%edi,4), %esi
L165:
	leal	20(%ebx), %edx
	movl	$-1171354717, %ebp
	movl	$_s_GirlNinjaDie, 28(%esi)
	subl	%ecx, %edx
	movl	$_sg_GirlNinjaRun, 20(%esi)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%ecx, %edx
	movb	$51, 20(%ebx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%ebx), %edx
	subl	%ecx, %edx
	movb	$43, 21(%ebx)
	movl	%edx, %eax
	movl	$_GirlNinjaAttrib, 48(%esi)
	mull	%ebp
	movb	$26, 262(%esi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$26, 17(%ebx)
	movl	$_GirlNinjaPersonality, 8(%esp)
	movl	$_GirlNinjaActionSet, 4(%esp)
	movl	%edi, (%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	movl	_User(,%edi,4), %eax
	testl	%eax, %eax
	je	L166
	movl	$0, 76(%eax)
	movl	$_s_GirlNinjaRun, 24(%eax)
	movl	$_s_GirlNinjaRun, 16(%eax)
	movswl	_s_GirlNinjaRun, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L166
	andl	$63, %eax
	movb	%al, 3(%edx)
L166:
	movl	%edi, (%esp)
	movl	$1, 4(%esp)
	call	__Z15DoActorSetSpeedsh
	andl	$-16777217, 68(%esi)
	xorl	%eax, %eax
	movl	$280, 188(%esi)
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
L164:
	.cfi_restore_state
	movl	$_s_GirlNinjaRun, %ecx
	movl	$5162, %edx
	movl	%edi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	_sprite, %ecx
	movl	%eax, _User(,%edi,4)
	movl	%eax, %esi
	movl	$100, %eax
	movw	%ax, 84(%esi)
	jmp	L165
	.cfi_endproc
LFE33:
	.p2align 4
	.globl	__Z9SetupGoros
	.def	__Z9SetupGoros;	.scl	2;	.type	32;	.endef
__Z9SetupGoros:
LFB35:
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
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movswl	28(%esp), %edi
	imull	$44, %edi, %ebx
	addl	_sprite, %ebx
	testb	$16, 13(%ebx)
	je	L175
	movl	_User(,%edi,4), %esi
	movl	%esi, %eax
L176:
	testl	%eax, %eax
	je	L177
	movl	$0, 76(%eax)
	movl	$_s_GoroRun, 24(%eax)
	movl	$_s_GoroRun, 16(%eax)
	movswl	_s_GoroRun, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L177
	andl	$63, %eax
	movb	%al, 3(%edx)
L177:
	movl	$_GoroAttrib, 48(%esi)
	movl	%edi, (%esp)
	movl	$1, 4(%esp)
	call	__Z15DoActorSetSpeedsh
	movl	$_s_GoroDie, 28(%esi)
	movl	$_sg_GoroRun, 20(%esi)
	movl	%edi, (%esp)
	movl	$_GoroPersonality, 8(%esp)
	movl	$_GoroActionSet, 4(%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	leal	18(%ebx), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$-128, 18(%ebx)
	orl	$16777216, 68(%esi)
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
L175:
	.cfi_restore_state
	movl	$_s_GoroRun, %ecx
	movl	$1469, %edx
	movl	%edi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%eax, _User(,%edi,4)
	movl	%eax, %esi
	movl	$200, %eax
	movw	%ax, 84(%esi)
	movl	_User(,%edi,4), %eax
	jmp	L176
	.cfi_endproc
LFE35:
	.p2align 4
	.globl	__Z11SetupHornets
	.def	__Z11SetupHornets;	.scl	2;	.type	32;	.endef
__Z11SetupHornets:
LFB36:
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
	movswl	32(%esp), %esi
	imull	$44, %esi, %ebx
	addl	_sprite, %ebx
	testb	$16, 13(%ebx)
	je	L186
	movl	_User(,%esi,4), %edi
	movl	%edi, %eax
L187:
	testl	%eax, %eax
	je	L188
	movl	$0, 76(%eax)
	movl	$_s_HornetRun, 24(%eax)
	movl	$_s_HornetRun, 16(%eax)
	movswl	_s_HornetRun, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L188
	andl	$63, %eax
	movb	%al, 3(%edx)
L188:
	movl	$_HornetAttrib, 48(%edi)
	leal	8(%ebx), %ebp
	movl	%esi, (%esp)
	movl	$1, 4(%esp)
	call	__Z15DoActorSetSpeedsh
	movl	$_s_HornetDie, 28(%edi)
	movl	$_sg_HornetRun, 20(%edi)
	movl	%esi, (%esp)
	movl	$_HornetPersonality, 8(%esp)
	movl	$_HornetActionSet, 4(%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	movl	_sprite, %esi
	leal	12(%ebx), %edx
	movl	$-1171354717, %ecx
	orl	$50331648, 68(%edi)
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%esi, %edx
	orw	$128, 12(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	movb	$25, 18(%ebx)
	subl	%esi, %edx
	movl	$268439552, 96(%edi)
	movl	8(%ebx), %eax
	movl	%eax, 256(%edi)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%esi, %edx
	movb	$37, 20(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	%esi, %edx
	movb	$32, 21(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebx), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	leal	4(%ebx), %ecx
	movl	$119, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$65, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	_voc3dend, %eax
	testl	%eax, %eax
	je	L189
	cmpl	$-1, 32(%eax)
	je	L202
L190:
	movzwl	32(%esp), %ecx
	movw	%cx, 48(%eax)
L189:
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
L186:
	.cfi_restore_state
	movl	$_s_HornetRun, %ecx
	movl	$800, %edx
	movl	%esi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%eax, _User(,%esi,4)
	movl	%eax, %edi
	movl	$4, %eax
	movw	%ax, 84(%edi)
	movl	_User(,%esi,4), %eax
	jmp	L187
	.p2align 4,,10
	.p2align 3
L202:
	testb	$16, 28(%eax)
	jne	L190
	movb	$1, 68(%eax)
	movl	$2, 28(%eax)
	addl	$12, %esp
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
	.cfi_endproc
LFE36:
	.p2align 4
	.globl	__Z13NullGirlNinjas
	.def	__Z13NullGirlNinjas;	.scl	2;	.type	32;	.endef
__Z13NullGirlNinjas:
LFB38:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movswl	16(%esp), %ecx
	movl	_User(,%ecx,4), %edx
	movzwl	216(%edx), %eax
	testw	%ax, %ax
	jle	L204
	subl	$6, %eax
	movw	%ax, 216(%edx)
L204:
	movl	68(%edx), %eax
	andl	$2097376, %eax
	cmpl	$2097152, %eax
	je	L208
L205:
	testb	$-32, 68(%edx)
	je	L209
	movl	%ecx, (%esp)
	call	__Z19DoActorSectorDamages
	xorl	%eax, %eax
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L209:
	.cfi_restore_state
	movl	%ecx, (%esp)
	movl	%ecx, 4(%esp)
	call	__Z16KeepActorOnFloors
	movl	4(%esp), %ecx
	movl	%ecx, (%esp)
	call	__Z19DoActorSectorDamages
	xorl	%eax, %eax
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L208:
	.cfi_restore_state
	movl	%ecx, (%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	call	__Z12DoActorSlides
	movl	8(%esp), %edx
	movl	4(%esp), %ecx
	jmp	L205
	.cfi_endproc
LFE38:
	.p2align 4
	.globl	__Z15DoGirlNinjaPains
	.def	__Z15DoGirlNinjaPains;	.scl	2;	.type	32;	.endef
__Z15DoGirlNinjaPains:
LFB39:
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
	movl	%ebx, (%esp)
	call	__Z13NullGirlNinjas
	movzwl	216(%esi), %eax
	subl	$6, %eax
	movw	%ax, 216(%esi)
	testw	%ax, %ax
	jle	L213
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
L213:
	.cfi_restore_state
	movl	_User(,%ebx,4), %eax
	movl	$__Z13DoActorDecides, 36(%eax)
	movl	%ebx, 16(%esp)
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z13DoActorDecides
	.cfi_endproc
LFE39:
	.p2align 4
	.globl	__Z8NullGoros
	.def	__Z8NullGoros;	.scl	2;	.type	32;	.endef
__Z8NullGoros:
LFB41:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movswl	12(%esp), %ebx
	movl	_User(,%ebx,4), %eax
	testb	$32, 70(%eax)
	jne	L220
L215:
	movl	%ebx, (%esp)
	call	__Z16KeepActorOnFloors
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
L220:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	__Z12DoActorSlides
	jmp	L215
	.cfi_endproc
LFE41:
	.p2align 4
	.globl	__Z10DoGoroPains
	.def	__Z10DoGoroPains;	.scl	2;	.type	32;	.endef
__Z10DoGoroPains:
LFB43:
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
	testb	$32, 70(%esi)
	jne	L228
L222:
	movl	%ebx, (%esp)
	call	__Z16KeepActorOnFloors
	movl	%ebx, (%esp)
	call	__Z19DoActorSectorDamages
	movzwl	216(%esi), %eax
	subl	$6, %eax
	movw	%ax, 216(%esi)
	testw	%ax, %ax
	jle	L229
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
L228:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	__Z12DoActorSlides
	jmp	L222
	.p2align 4,,10
	.p2align 3
L229:
	movl	_User(,%ebx,4), %eax
	movl	$__Z13DoActorDecides, 36(%eax)
	movl	%ebx, 16(%esp)
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z13DoActorDecides
	.cfi_endproc
LFE43:
	.p2align 4
	.globl	__Z10DoGoroMoves
	.def	__Z10DoGoroMoves;	.scl	2;	.type	32;	.endef
__Z10DoGoroMoves:
LFB44:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movswl	16(%esp), %ebx
	movl	_User(,%ebx,4), %edx
	testb	$32, 70(%edx)
	jne	L238
L231:
	cmpw	$0, 218(%edx)
	jns	L239
	movl	%ebx, (%esp)
	call	*36(%edx)
L233:
	movl	%ebx, (%esp)
	call	__Z16KeepActorOnFloors
	movl	%ebx, (%esp)
	call	__Z19DoActorSectorDamages
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L239:
	.cfi_restore_state
	movl	%ebx, %eax
	call	__Z16ActorFollowTrackss.constprop.0.isra.0
	jmp	L233
	.p2align 4,,10
	.p2align 3
L238:
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	__Z12DoActorSlides
	movl	4(%esp), %edx
	jmp	L231
	.cfi_endproc
LFE44:
	.p2align 4
	.globl	__Z10NullHornets
	.def	__Z10NullHornets;	.scl	2;	.type	32;	.endef
__Z10NullHornets:
LFB45:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movswl	12(%esp), %ebx
	movl	_User(,%ebx,4), %eax
	testb	$32, 70(%eax)
	jne	L246
L241:
	movl	%ebx, (%esp)
	call	__Z20DoHornetMatchPlayerZs
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
L246:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	__Z12DoActorSlides
	jmp	L241
	.cfi_endproc
LFE45:
	.p2align 4
	.globl	__Z15DoGirlNinjaMoves
	.def	__Z15DoGirlNinjaMoves;	.scl	2;	.type	32;	.endef
__Z15DoGirlNinjaMoves:
LFB46:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movswl	16(%esp), %esi
	movl	_User(,%esi,4), %ebx
	movl	68(%ebx), %eax
	testb	$96, %al
	je	L248
	testb	$-128, %al
	je	L261
L248:
	movl	68(%ebx), %eax
	andl	$2097280, %eax
	cmpl	$2097152, %eax
	je	L262
L250:
	cmpw	$0, 218(%ebx)
	jns	L263
	movl	%esi, (%esp)
	call	*36(%ebx)
	testb	$-32, 68(%ebx)
	je	L264
L253:
	movl	%esi, (%esp)
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
L261:
	.cfi_restore_state
	testb	$32, %al
	jne	L265
	testb	$64, %al
	je	L248
	movl	%esi, (%esp)
	call	__Z11DoActorFalls
	jmp	L248
	.p2align 4,,10
	.p2align 3
L263:
	movl	%esi, %eax
	call	__Z16ActorFollowTrackss.constprop.0.isra.0
	testb	$-32, 68(%ebx)
	jne	L253
L264:
	movl	%esi, (%esp)
	call	__Z16KeepActorOnFloors
	movl	%esi, (%esp)
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
L265:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z11DoActorJumps
	jmp	L248
	.p2align 4,,10
	.p2align 3
L262:
	movl	%esi, (%esp)
	call	__Z12DoActorSlides
	jmp	L250
	.cfi_endproc
LFE46:
	.p2align 4
	.globl	__Z23GirlNinjaJumpActionFuncs
	.def	__Z23GirlNinjaJumpActionFuncs;	.scl	2;	.type	32;	.endef
__Z23GirlNinjaJumpActionFuncs:
LFB47:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movswl	12(%esp), %ebx
	movl	_User(,%ebx,4), %esi
	movl	140(%esi), %eax
	movswl	32(%eax), %edx
	movswl	28(%eax), %eax
	movswl	_sintable(%eax,%eax), %ecx
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %ecx
	imull	%eax, %edx
	movl	%ebx, %eax
	sarl	$14, %ecx
	sarl	$14, %edx
	call	__Z10move_actorsiii.constprop.0
	testl	%eax, %eax
	je	L267
	testb	$96, 68(%esi)
	je	L272
L267:
	xorl	%eax, %eax
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
L272:
	.cfi_restore_state
	movl	_User(,%ebx,4), %eax
	movl	$__Z13DoActorDecides, 36(%eax)
	movl	%ebx, 12(%esp)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z13DoActorDecides
	.cfi_endproc
LFE47:
	.p2align 4
	.globl	__Z14DoHornetCircles
	.def	__Z14DoHornetCircles;	.scl	2;	.type	32;	.endef
__Z14DoHornetCircles:
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
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	_sprite, %edx
	movswl	24(%esp), %edi
	imull	$44, %edi, %esi
	movl	_User(,%edi,4), %ebx
	movzwl	178(%ebx), %ecx
	addl	%edx, %esi
	leal	28(%esi), %ebp
	addw	28(%esi), %cx
	movl	%ebp, %eax
	andl	$2047, %ecx
	subl	%edx, %eax
	movl	$-1171354717, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	32(%esi), %eax
	movw	%cx, 28(%esi)
	movswl	_sintable(%ecx,%ecx), %edx
	addl	$512, %ecx
	andl	$2047, %ecx
	movswl	_sintable(%ecx,%ecx), %ecx
	imull	%eax, %edx
	imull	%ecx, %eax
	sarl	$14, %edx
	movl	%edx, %ecx
	sarl	$14, %eax
	movl	%eax, %edx
	movl	%edi, %eax
	call	__Z10move_actorsiii.constprop.0
	testl	%eax, %eax
	je	L279
L274:
	movswl	92(%ebx), %eax
	leal	0(,%eax,4), %edx
	subl	%edx, %eax
	movl	256(%ebx), %edx
	leal	(%edx,%eax,2), %edx
	movswl	96(%ebx), %eax
	addl	104(%ebx), %eax
	addl	$4096, %eax
	movl	%edx, 256(%ebx)
	cmpl	%eax, %edx
	jl	L280
	subw	$6, 216(%ebx)
	js	L281
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
L279:
	.cfi_restore_state
	subl	_sprite, %ebp
	movl	$-1171354717, %eax
	negw	178(%ebx)
	mull	%ebp
	movswl	28(%esi), %ecx
	addl	$1024, %ecx
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%esi)
	movswl	_sintable(%ecx,%ecx), %eax
	addl	$512, %ecx
	andl	$2047, %ecx
	movswl	32(%esi), %esi
	movswl	_sintable(%ecx,%ecx), %edx
	imull	%esi, %eax
	imull	%esi, %edx
	sarl	$14, %eax
	sarl	$14, %edx
	movl	%eax, %ecx
	movl	%edi, %eax
	call	__Z10move_actorsiii.constprop.0
	testl	%eax, %eax
	jne	L274
	movl	%edi, 24(%esp)
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
	jmp	__Z19InitActorRepositions
	.p2align 4,,10
	.p2align 3
L280:
	.cfi_restore_state
	movl	%eax, 256(%ebx)
	movl	%edi, 24(%esp)
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
	jmp	__Z19InitActorRepositions
	.p2align 4,,10
	.p2align 3
L281:
	.cfi_restore_state
	movl	%edi, (%esp)
	call	__Z19InitActorRepositions
	xorl	%eax, %eax
	movw	%ax, 216(%ebx)
	addl	$4, %esp
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
	.cfi_endproc
LFE48:
	.p2align 4
	.globl	__Z16InitHornetCircles
	.def	__Z16InitHornetCircles;	.scl	2;	.type	32;	.endef
__Z16InitHornetCircles:
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
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movswl	32(%esp), %esi
	movl	_User(,%esi,4), %ebx
	imull	$44, %esi, %edi
	addl	_sprite, %edi
	movl	40(%ebx), %eax
	movl	$__Z14DoHornetCircles, 36(%ebx)
	movl	4(%eax), %edx
	movl	%esi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	$3, 4(%esp)
	movl	%esi, (%esp)
	call	__Z15DoActorSetSpeedsh
	leal	32(%edi), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	movl	$400, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 32(%edi)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	andl	$512, %eax
	cmpl	$1, %eax
	sbbl	%eax, %eax
	andw	$-266, %ax
	addw	$133, %ax
	movw	%ax, 178(%ebx)
	leal	(%edx,%edx,4), %eax
	leal	1(%edx,%eax,4), %edx
	movl	256(%ebx), %eax
	movzwl	%dx, %ecx
	andl	$127, %edx
	movl	%eax, %edi
	subl	104(%ebx), %edi
	movl	%edi, %ebp
	negl	%ebp
	cmovs	%edi, %ebp
	subl	108(%ebx), %eax
	movl	%eax, %edi
	negl	%edi
	cmovs	%eax, %edi
	leal	200(%edx), %eax
	movw	%ax, 10(%esp)
	movl	$-200, %eax
	subl	%edx, %eax
	cmpl	%edi, %ebp
	cmovge	10(%esp), %ax
	movl	$180, %edx
	addl	$3, _krandcount
	movw	%ax, 92(%ebx)
	leal	(%ecx,%ecx,4), %eax
	leal	1(%ecx,%eax,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L286
	sall	$14, %eax
	movl	$-1073692671, %edx
	mull	%edx
	shrl	$28, %edx
	addl	$1, %edx
	imull	$60, %edx, %edx
L286:
	movw	%dx, 216(%ebx)
	movl	%esi, (%esp)
	call	*36(%ebx)
	addl	$12, %esp
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
	.cfi_endproc
LFE49:
	.p2align 4
	.globl	__Z13DoHornetDeaths
	.def	__Z13DoHornetDeaths;	.scl	2;	.type	32;	.endef
__Z13DoHornetDeaths:
LFB51:
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
	subl	$20, %esp
	.cfi_def_cfa_offset 36
	movl	_sprite, %eax
	movswl	36(%esp), %edi
	imull	$44, %edi, %esi
	movl	_User(,%edi,4), %ebx
	addl	%eax, %esi
	testb	$64, 68(%ebx)
	je	L293
	movl	112(%ebx), %eax
	movl	%eax, 108(%ebx)
	movl	%edi, (%esp)
	call	__Z6DoFalls
	testb	$32, 70(%ebx)
	jne	L301
L295:
	movswl	28(%esi), %eax
	movswl	32(%esi), %edx
	movswl	_sintable(%eax,%eax), %ecx
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %ecx
	movl	$6, 16(%esp)
	movl	$1, 12(%esp)
	imull	%eax, %edx
	movswl	98(%ebx), %eax
	sarl	$14, %ecx
	movl	%eax, 8(%esp)
	movswl	96(%ebx), %eax
	movl	$0, (%esp)
	sarl	$14, %edx
	movl	%eax, 4(%esp)
	movl	%edi, %eax
	call	__Z11move_spritesiiiiiji
	movl	%eax, 264(%ebx)
	movl	8(%esi), %eax
	cmpl	%eax, 108(%ebx)
	jle	L302
	addl	$20, %esp
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
L293:
	.cfi_restore_state
	leal	12(%esi), %edx
	movl	$8, %ecx
	subl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	andw	$-129, 12(%esi)
	movw	%ax, 92(%ebx)
	movw	%dx, 98(%ebx)
	movl	_User(,%edi,4), %edx
	movl	68(%edx), %eax
	movw	%cx, 94(%edx)
	andl	$-33, %eax
	orl	$64, %eax
	movl	%eax, 68(%edx)
	movl	%edi, (%esp)
	call	__Z6DoFalls
	movl	%edi, (%esp)
	call	__Z17DoFindGroundPoints
	movl	108(%ebx), %eax
	movl	%eax, 112(%ebx)
	testb	$32, 70(%ebx)
	je	L295
L301:
	movl	%edi, (%esp)
	call	__Z12DoActorSlides
	jmp	L295
	.p2align 4,,10
	.p2align 3
L302:
	leal	12(%esi), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	andl	$-2097217, 68(%ebx)
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-9, 12(%esi)
	movl	40(%ebx), %eax
	movl	56(%eax), %edx
	movl	%edi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	%edi, %eax
	call	__Z18DeleteNoSoundOwners
	addl	$20, %esp
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
	.cfi_endproc
LFE51:
	.p2align 4
	.globl	__Z12DoCheckSwarms
	.def	__Z12DoCheckSwarms;	.scl	2;	.type	32;	.endef
__Z12DoCheckSwarms:
LFB53:
	.cfi_startproc
	cmpb	$0, _MoveSkip8
	je	L322
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%esi, 20(%esp)
	.cfi_offset 6, -16
	movswl	36(%esp), %esi
	movl	%ebp, 28(%esp)
	.cfi_offset 5, -8
	movl	_User(,%esi,4), %ebp
	movl	200(%ebp), %eax
	movl	%ebp, 4(%esp)
	testl	%eax, %eax
	je	L304
	movl	%esi, (%esp)
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -20
	movl	_sprite, %ebx
	movl	%edi, 24(%esp)
	.cfi_offset 7, -12
	call	__Z22DoActorPickClosePlayers
	movl	200(%ebp), %eax
	movl	_sprite, %edi
	movl	%eax, 8(%esp)
	subl	%edi, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	movl	_User(,%eax,4), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	L326
	movzwl	_headspritestat+4, %edx
	cmpw	$-1, %dx
	je	L309
	imull	$44, %esi, %esi
	addl	%ebx, %esi
	movl	(%eax), %ebx
	movl	4(%eax), %eax
	subl	(%esi), %ebx
	movl	%esi, 8(%esp)
	movl	%ebx, %ecx
	negl	%ecx
	cmovs	%ebx, %ecx
	subl	4(%esi), %eax
	movl	%eax, %ebx
	negl	%ebx
	cmovs	%eax, %ebx
	cmpl	%ebx, %ecx
	leal	(%ecx,%ebx), %eax
	cmovg	%ebx, %ecx
	sarl	%ecx
	subl	%ecx, %eax
	movl	%eax, 12(%esp)
	.p2align 4
	.p2align 3
L307:
	movswl	%dx, %ecx
	movswl	%dx, %eax
	movl	_User(,%ecx,4), %esi
	movzwl	_nextspritestat(%ecx,%ecx), %edx
	testl	%esi, %esi
	je	L308
	imull	$44, %eax, %eax
	addl	%edi, %eax
	cmpw	$1008, 40(%eax)
	jne	L308
	cmpw	$2, 38(%eax)
	jne	L308
	movl	8(%esp), %ebp
	movl	(%eax), %ebx
	subl	0(%ebp), %ebx
	movl	%ebx, %ecx
	negl	%ecx
	cmovs	%ebx, %ecx
	movl	4(%eax), %ebx
	subl	4(%ebp), %ebx
	movl	%ebx, %ebp
	negl	%ebp
	cmovns	%ebp, %ebx
	cmpl	%ebx, %ecx
	leal	(%ecx,%ebx), %ebp
	cmovg	%ebx, %ecx
	sarl	%ecx
	subl	%ecx, %ebp
	cmpl	%ebp, 12(%esp)
	jle	L308
	movl	4(%esp), %ebx
	movzwl	82(%esi), %esi
	cmpw	%si, 82(%ebx)
	jne	L308
	movl	%eax, 200(%ebx)
	.p2align 4
	.p2align 3
L308:
	cmpw	$-1, %dx
	jne	L307
L309:
	movl	16(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	24(%esp), %edi
	.cfi_restore 7
	movl	$1, %eax
	movl	20(%esp), %esi
	movl	28(%esp), %ebp
	addl	$32, %esp
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L326:
	.cfi_restore_state
	movl	16(%esp), %ebx
	.cfi_restore 3
	movl	24(%esp), %edi
	.cfi_restore 7
L304:
	movl	20(%esp), %esi
	movl	28(%esp), %ebp
	xorl	%eax, %eax
	addl	$32, %esp
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L322:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE53:
	.p2align 4
	.globl	__Z12DoHornetMoves
	.def	__Z12DoHornetMoves;	.scl	2;	.type	32;	.endef
__Z12DoHornetMoves:
LFB54:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movswl	16(%esp), %ebx
	imull	$44, %ebx, %eax
	addl	_sprite, %eax
	movl	_User(,%ebx,4), %edx
	cmpw	$1008, 40(%eax)
	je	L336
L328:
	testb	$32, 70(%edx)
	jne	L337
L329:
	cmpw	$0, 218(%edx)
	jns	L338
	movl	%ebx, (%esp)
	call	*36(%edx)
L331:
	movl	%ebx, (%esp)
	call	__Z20DoHornetMatchPlayerZs
	movl	%ebx, (%esp)
	call	__Z19DoActorSectorDamages
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L338:
	.cfi_restore_state
	movl	%ebx, %eax
	call	__Z16ActorFollowTrackss.constprop.0.isra.0
	jmp	L331
	.p2align 4,,10
	.p2align 3
L336:
	cmpw	$1, 38(%eax)
	jne	L328
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	__Z12DoCheckSwarms
	movl	4(%esp), %edx
	jmp	L328
	.p2align 4,,10
	.p2align 3
L337:
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	__Z12DoActorSlides
	movl	4(%esp), %edx
	jmp	L329
	.cfi_endproc
LFE54:
	.p2align 4
	.globl	__Z19PanelInvTestSuicideP18PANEL_SPRITEstruct
	.def	__Z19PanelInvTestSuicideP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z19PanelInvTestSuicideP18PANEL_SPRITEstruct:
LFB55:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	8(%esp), %eax
	testb	$1, 206(%eax)
	jne	L345
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L345:
	.cfi_restore_state
	movl	4(%eax), %ecx
	movl	(%eax), %edx
	movl	%edx, (%ecx)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 4
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE55:
	.section .rdata,"dr"
LC7:
	.ascii "source/sw/src/jsector.cpp\0"
LC8:
	.ascii "waloff[tilenume]\0"
	.text
	.p2align 4
	.def	__Z15drawroomstotileiiiiiss;	.scl	3;	.type	32;	.endef
__Z15drawroomstotileiiiiiss:
LFB57:
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
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movswl	76(%esp), %eax
	movl	_waloff(,%eax,4), %ecx
	movl	%eax, 20(%esp)
	testl	%ecx, %ecx
	je	L371
L347:
	movl	20(%esp), %ebp
	movswl	_tilesiz+2(,%ebp,4), %ecx
	movswl	_tilesiz(,%ebp,4), %edx
	movl	%ebp, %eax
	call	_renderSetTarget
	movswl	72(%esp), %eax
	movl	%edi, %ecx
	movl	%esi, %edx
	movl	%eax, 8(%esp)
	movl	68(%esp), %eax
	movl	%eax, 4(%esp)
	movl	64(%esp), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_renderDrawRoomsQ16.isra.0
	movl	$0, (%esp)
	movl	%esi, %edx
	movl	%edi, %ecx
	movl	%ebx, %eax
	call	__Z14analyzespritesiiih
	call	_renderDrawMasks
	call	_renderRestoreTarget
	movswl	_tilesiz(,%ebp,4), %edx
	cmpw	_tilesiz+2(,%ebp,4), %dx
	jne	L348
	leal	-1(%edx), %ecx
	movl	%ecx, 16(%esp)
	cmpl	$2, %ecx
	jle	L348
	leal	1(%edx), %edi
	movl	%edx, %eax
	movl	%edx, 12(%esp)
	leal	(%edx,%edx), %ebp
	imull	%edi, %ecx
	notl	%eax
	movl	%edi, 36(%esp)
	sall	$2, %eax
	movl	%eax, 40(%esp)
	leal	(%edi,%edi), %eax
	movl	%ebp, %edi
	movl	%ecx, 24(%esp)
	subl	%eax, %ecx
	movl	%ecx, 28(%esp)
	.p2align 4
	.p2align 3
L353:
	movl	20(%esp), %eax
	movl	24(%esp), %ebx
	addl	_waloff(,%eax,4), %ebx
	leal	-1(%ebx), %eax
	subl	12(%esp), %ebx
/APP
 # 14092 "source/build/src/engine.cpp" 1
	movb (%eax), %cl; movb (%ebx), %ch; movb %cl, (%ebx); movb %ch, (%eax)
 # 0 "" 2
/NO_APP
	movl	16(%esp), %ecx
	movl	%eax, %ebp
	movl	%ecx, %edx
	andl	$-2, %ecx
	sarl	%edx
	subl	%ecx, %ebp
	movl	%edx, 32(%esp)
	.p2align 4
	.p2align 3
L349:
	movl	12(%esp), %esi
	subl	$2, %eax
	subl	%edi, %ebx
/APP
 # 14094 "source/build/src/engine.cpp" 1
	addl %ebx, %esi; movw (%eax), %cx; movb (%ebx), %dl; movb %cl, (%ebx); movb (%esi), %dh; movb %ch, (%esi); movw %dx, (%eax)
 # 0 "" 2
/NO_APP
	cmpl	%ebp, %eax
	jne	L349
	movl	20(%esp), %ecx
	movl	16(%esp), %edx
	movl	24(%esp), %eax
	subl	36(%esp), %eax
	subl	$1, %edx
	addl	_waloff(,%ecx,4), %eax
	andl	$-2, %edx
	movl	%eax, %ebp
	movl	%eax, %ebx
	subl	%edx, %ebp
	.p2align 4
	.p2align 3
L350:
	movl	12(%esp), %esi
	subl	$2, %eax
	subl	%edi, %ebx
/APP
 # 14098 "source/build/src/engine.cpp" 1
	addl %ebx, %esi; movw (%eax), %cx; movb (%ebx), %dl; movb %cl, (%ebx); movb (%esi), %dh; movb %ch, (%esi); movw %dx, (%eax)
 # 0 "" 2
/NO_APP
	cmpl	%ebp, %eax
	jne	L350
	movl	20(%esp), %eax
	movl	28(%esp), %ebx
	addl	_waloff(,%eax,4), %ebx
	leal	-1(%ebx), %eax
	subl	12(%esp), %ebx
/APP
 # 14101 "source/build/src/engine.cpp" 1
	movb (%eax), %cl; movb (%ebx), %ch; movb %cl, (%ebx); movb %ch, (%eax)
 # 0 "" 2
/NO_APP
	movl	32(%esp), %ecx
	leal	-2(%ecx), %ebp
	cmpl	$1, %ecx
	je	L348
	.p2align 4
	.p2align 3
L351:
	movl	12(%esp), %esi
	subl	$2, %eax
	subl	%edi, %ebx
/APP
 # 14104 "source/build/src/engine.cpp" 1
	addl %ebx, %esi; movw (%eax), %cx; movb (%ebx), %dl; movb %cl, (%ebx); movb (%esi), %dh; movb %ch, (%esi); movw %dx, (%eax)
 # 0 "" 2
/NO_APP
	subl	$1, %ebp
	jnb	L351
	movl	16(%esp), %edx
	movl	20(%esp), %ecx
	movl	28(%esp), %eax
	subl	36(%esp), %eax
	subl	$3, %edx
	addl	_waloff(,%ecx,4), %eax
	sarl	%edx
	leal	-1(%edx), %ebp
	je	L348
	movl	%eax, %ebx
	.p2align 4
	.p2align 3
L352:
	movl	12(%esp), %esi
	subl	$2, %eax
	subl	%edi, %ebx
/APP
 # 14109 "source/build/src/engine.cpp" 1
	addl %ebx, %esi; movw (%eax), %cx; movb (%ebx), %dl; movb %cl, (%ebx); movb (%esi), %dh; movb %ch, (%esi); movw %dx, (%eax)
 # 0 "" 2
/NO_APP
	subl	$1, %ebp
	jnb	L352
	subl	$4, 16(%esp)
	movl	16(%esp), %eax
	movl	40(%esp), %edx
	addl	%edx, 24(%esp)
	addl	%edx, 28(%esp)
	cmpl	$2, %eax
	jg	L353
	.p2align 4
	.p2align 3
L348:
	cmpl	$2, _rendmode
	jle	L346
	movl	20(%esp), %esi
	xorl	%ebx, %ebx
L355:
	movl	%ebx, %edx
	xorl	%ecx, %ecx
	movl	%esi, %eax
	addl	$1, %ebx
	call	__Z15gltexinvalidateiii
	cmpl	$256, %ebx
	jne	L355
	movl	20(%esp), %esi
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L356:
	movl	%ebx, %edx
	movl	$4, %ecx
	movl	%esi, %eax
	addl	$1, %ebx
	call	__Z15gltexinvalidateiii
	cmpl	$256, %ebx
	jne	L356
	cmpl	$4, _rendmode
	je	L372
L346:
	addl	$44, %esp
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
	movl	%eax, %ebp
	call	_tileLoad.isra.0
	movl	_waloff(,%ebp,4), %edx
	testl	%edx, %edx
	jne	L347
	movl	$494, %ecx
	movl	$LC7, %edx
	movl	$LC8, %eax
	call	__Z7_AssertPKcS0_j
	jmp	L347
L372:
	movl	20(%esp), %edi
	movl	_prartmaps(,%edi,4), %eax
	testl	%eax, %eax
	je	L346
	leal	_prartmaps(,%edi,4), %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteTextures
	.cfi_def_cfa_offset 56
	subl	$8, %esp
	.cfi_def_cfa_offset 64
	movl	$0, _prartmaps(,%edi,4)
	jmp	L346
	.cfi_endproc
LFE57:
	.p2align 4
	.globl	__Z12DoPhosphoruss
	.def	__Z12DoPhosphoruss;	.scl	2;	.type	32;	.endef
__Z12DoPhosphoruss:
LFB62:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$48, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movswl	8(%ebp), %eax
	movl	_User(,%eax,4), %ebx
	imull	$44, %eax, %esi
	movl	%eax, 40(%esp)
	addl	_sprite, %esi
	movzwl	176(%ebx), %eax
	movl	160(%ebx), %edx
	movl	152(%ebx), %edi
	movl	156(%ebx), %ecx
	addl	$40, %eax
	movl	%edx, 28(%esp)
	movw	%ax, 36(%esp)
	cwtl
	movl	%eax, 32(%esp)
	addl	%edx, %eax
	testb	$64, 71(%ebx)
	jne	L429
L375:
	movzwl	36(%esp), %edx
	movl	%eax, 160(%ebx)
	movw	%dx, 176(%ebx)
	movl	$12, 16(%esp)
	movl	$1090519104, 12(%esp)
	movswl	98(%ebx), %edx
	movl	%edx, 8(%esp)
	movswl	96(%ebx), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	%edi, %edx
	movl	40(%esp), %edi
	movl	%edi, %eax
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%ebx)
	movl	%edi, (%esp)
	call	__Z18MissileHitDiveAreas
	testb	$64, 71(%ebx)
	jne	L430
L376:
	movl	264(%ebx), %edi
	testl	%edi, %edi
	je	L377
	movl	%edi, %eax
	andl	$114688, %eax
	cmpl	$49152, %eax
	je	L378
	jg	L379
	cmpl	$16384, %eax
	je	L380
	cmpl	$32768, %eax
	jne	L377
	movl	_wall, %edx
	andl	$16383, %edi
	sall	$5, %edi
	leal	(%edx,%edi), %eax
	cmpw	$307, 26(%eax)
	je	L431
	movswl	8(%eax), %ecx
	sall	$5, %ecx
	addl	%edx, %ecx
	movl	4(%ecx), %edx
	movl	(%ecx), %ecx
	subl	4(%eax), %edx
	subl	(%eax), %ecx
	call	@getangle@8
	leal	512(%eax), %edx
L428:
	movl	40(%esp), %edi
	andl	$2047, %edx
	movl	%edi, %eax
	call	__Z10WallBouncess
	movl	_User(,%edi,4), %ecx
L426:
	movl	152(%ecx), %eax
	movl	$32000, %edx
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$32000, %edx
	movl	%eax, 152(%ecx)
	movl	156(%ecx), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$32000, %edx
	movl	%eax, 156(%ecx)
	movl	160(%ecx), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 160(%ecx)
	.p2align 4
	.p2align 3
L377:
	movl	68(%ebx), %edi
	andl	$1610612736, %edi
	je	L432
L410:
	xorl	%edi, %edi
L373:
	addl	$48, %esp
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
L432:
	.cfi_restore_state
	cmpw	$0, 12(%esi)
	js	L373
	movl	$100, 20(%esp)
	movswl	28(%esi), %eax
	movl	$_s_PhosphorExp, %ecx
	movl	$1748, %edx
	movl	%eax, 16(%esp)
	movl	8(%esi), %eax
	movl	%eax, 12(%esp)
	movl	4(%esi), %eax
	movl	%eax, 8(%esp)
	movl	(%esi), %eax
	movl	%eax, 4(%esp)
	movswl	24(%esi), %eax
	movl	%eax, (%esp)
	movl	$6, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movswl	%ax, %ecx
	movl	_User(,%ecx,4), %esi
	imull	$44, %ecx, %eax
	movl	%ecx, 24(%esp)
	movl	%esi, 36(%esp)
	movl	_sprite, %esi
	leal	40(%eax), %edx
	addl	%eax, %esi
	movl	$-1171354717, %eax
	mull	%edx
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, %edx
	movw	%ax, 40(%esi)
	movl	40(%esp), %eax
	call	__Z8SetOwnerss
	movl	_sprite, %eax
	leal	16(%esi), %edx
	movl	_krandcount, %ecx
	movl	%eax, 40(%esp)
	subl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	_randomseed, %eax
	movl	%ecx, 28(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ecx
	leal	20(%esi), %edx
	movl	$-1171354717, %eax
	subl	40(%esp), %edx
	mull	%edx
	movzwl	%cx, %ecx
	movb	$-40, 16(%esi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	cmpl	$65535, %ecx
	je	L403
	movl	%ecx, %eax
	movl	$-1610571775, %edx
	movb	$21, 32(%esp)
	sall	$14, %eax
	mull	%edx
	leal	(%ecx,%ecx,4), %eax
	leal	1(%ecx,%eax,4), %eax
	movzwl	%ax, %ecx
	shrl	$26, %edx
	addl	$12, %edx
	movb	%dl, 20(%esi)
	cmpl	$65535, %ecx
	je	L404
L407:
	movl	%ecx, %eax
	movl	$-1610571775, %edx
	sall	$14, %eax
	mull	%edx
	shrl	$26, %edx
	leal	12(%edx), %eax
	movb	%al, 32(%esp)
L404:
	movl	$-1171354717, %eax
	leal	21(%esi), %edx
	subl	40(%esp), %edx
	mull	%edx
	movzbl	32(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	36(%esp), %edx
	movb	%al, 21(%esi)
	movl	56(%ebx), %eax
	movl	%eax, 56(%edx)
	movl	60(%ebx), %eax
	movl	%eax, 60(%edx)
	movl	64(%ebx), %eax
	movl	%eax, 64(%edx)
	movl	$-1171354717, %eax
	leal	12(%esi), %edx
	subl	40(%esp), %edx
	mull	%edx
	leal	(%ecx,%ecx,4), %eax
	leal	1(%ecx,%eax,4), %ecx
	movzwl	%cx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%esi)
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%esi)
	andb	$2, %ch
	jne	L405
	addl	$1, _spritechanged(,%edx,4)
	orw	$4, 12(%esi)
L405:
	movl	28(%esp), %ecx
	addl	$4, %ecx
	movl	%ecx, _krandcount
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %eax
	movzwl	%ax, %ecx
	movl	%ecx, _randomseed
	testb	$2, %ah
	jne	L406
	addl	$1, _spritechanged(,%edx,4)
	orw	$8, 12(%esi)
L406:
	movl	152(%ebx), %eax
	movl	36(%esp), %ecx
	leal	17(%esi), %edx
	subl	40(%esp), %edx
	movl	%eax, 152(%ecx)
	movl	156(%ebx), %eax
	movl	%eax, 156(%ecx)
	movl	160(%ebx), %eax
	movl	%eax, 160(%ecx)
	movl	$-1171354717, %eax
	mull	%edx
	movl	24(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$20000, %edx
	movb	$19, 17(%esi)
	movl	36(%esp), %esi
	movb	$19, 262(%esi)
	movl	_User(,%eax,4), %ecx
	movl	152(%ecx), %eax
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$20000, %edx
	movl	%eax, 152(%ecx)
	movl	156(%ecx), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$20000, %edx
	movl	%eax, 156(%ecx)
	movl	160(%ecx), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 160(%ecx)
	testb	$64, 71(%ebx)
	je	L410
	orl	$1073741824, 68(%esi)
	jmp	L373
	.p2align 4,,10
	.p2align 3
L430:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	movl	%edx, _randomseed
	testb	$48, %ah
	jne	L376
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	__Z11SpawnBubbles
	jmp	L376
	.p2align 4,,10
	.p2align 3
L429:
	movl	%edi, %eax
	movl	$50000, %edx
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$50000, %edx
	movl	%eax, 152(%ebx)
	movl	%eax, %edi
	movl	%ecx, %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$50000, %edx
	movl	%eax, 156(%ebx)
	movl	%eax, %ecx
	movl	28(%esp), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	32(%esp), %edx
	addl	%edx, %eax
	jmp	L375
	.p2align 4,,10
	.p2align 3
L378:
	andl	$16383, %edi
	imull	$44, %edi, %eax
	addl	_sprite, %eax
	testb	$16, 12(%eax)
	jne	L433
	testb	$64, 43(%eax)
	jne	L434
L384:
	movl	$0, 152(%ebx)
	movl	$0, 156(%ebx)
L424:
	movl	40(%esp), %eax
	call	__Z10KillSprites
L382:
	addl	$48, %esp
	movl	$1, %edi
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	%edi, %eax
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
L380:
	.cfi_restore_state
	movl	40(%esp), %eax
	leal	47(%esp), %edx
	call	__Z11SlopeBouncesPh
	testb	%al, %al
	je	L389
	cmpb	$0, 47(%esp)
	jne	L435
	movl	108(%ebx), %eax
	addl	104(%ebx), %eax
	sarl	%eax
	cmpl	8(%esi), %eax
	jge	L427
	movl	68(%ebx), %eax
	testl	$536870912, %eax
	jne	L397
	orl	$536870912, %eax
	movl	$32000, %edx
	movl	%eax, 68(%ebx)
	movl	40(%esp), %eax
	movl	_User(,%eax,4), %ecx
	movl	152(%ecx), %eax
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$32000, %edx
	movl	%eax, 152(%ecx)
	movl	156(%ecx), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$32000, %edx
	movl	%eax, 156(%ecx)
	movl	160(%ecx), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 160(%ecx)
	movl	160(%ebx), %ecx
	movl	$715827883, %eax
	movl	$0, 264(%ebx)
	imull	%ecx
	sarl	$31, %ecx
	xorl	%eax, %eax
	movw	%ax, 176(%ebx)
	subl	%ecx, %edx
	movl	%edx, 160(%ebx)
	jmp	L377
	.p2align 4,,10
	.p2align 3
L379:
	cmpl	$65536, %eax
	je	L424
	jmp	L377
	.p2align 4,,10
	.p2align 3
L403:
	movb	$21, 20(%esi)
	movl	$65516, %ecx
	jmp	L407
	.p2align 4,,10
	.p2align 3
L389:
	movl	108(%ebx), %eax
	addl	104(%ebx), %eax
	sarl	%eax
	cmpl	8(%esi), %eax
	jge	L395
	movl	68(%ebx), %eax
	testl	$1073741824, %eax
	je	L396
	movl	120(%ebx), %edi
	orl	$536870912, %eax
	movl	%eax, 68(%ebx)
	testl	%edi, %edi
	je	L397
	movswl	24(%esi), %edx
	movl	_SectUser(,%edx,4), %edx
	testl	%edx, %edx
	je	L397
L398:
	cmpw	$0, 10(%edx)
	je	L425
	orl	$536870912, %eax
	movl	%eax, 68(%ebx)
L397:
	movl	$0, 152(%ebx)
	movl	40(%esp), %esi
	movl	$0, 156(%ebx)
	movl	%esi, (%esp)
	call	__Z16SpawnFireballExps
	movl	%esi, %eax
	call	__Z10KillSprites
	jmp	L382
	.p2align 4,,10
	.p2align 3
L434:
	movl	_User(,%edi,4), %edx
	testl	%edx, %edx
	je	L385
L423:
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	__Z16SpawnFireballExps
	movl	40(%esp), %esi
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	call	__Z19SpawnFireballFlamesss
	movl	%esi, (%esp)
	call	__Z18DoFlamesDamageTests
	jmp	L384
	.p2align 4,,10
	.p2align 3
L435:
	movl	40(%esp), %eax
	movl	$28000, %edx
	movl	_User(,%eax,4), %ecx
	movl	152(%ecx), %eax
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$28000, %edx
	movl	%eax, 152(%ecx)
	movl	156(%ecx), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$28000, %edx
	movl	%eax, 156(%ecx)
	movl	160(%ecx), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 160(%ecx)
	xorl	%eax, %eax
	movl	$0, 264(%ebx)
	movw	%ax, 176(%ebx)
	jmp	L377
	.p2align 4,,10
	.p2align 3
L395:
	negl	160(%ebx)
L427:
	movl	40(%esp), %eax
	movl	_User(,%eax,4), %ecx
	jmp	L426
	.p2align 4,,10
	.p2align 3
L433:
	movzwl	28(%eax), %edx
	jmp	L428
	.p2align 4,,10
	.p2align 3
L431:
	movswl	82(%ebx), %edx
	movl	(%esi), %edi
	movl	4(%esi), %ecx
	movl	%edx, 8(%esp)
	movswl	28(%esi), %edx
	movl	%edx, 4(%esp)
	movl	8(%esi), %edx
	movl	%edx, (%esp)
	movl	%edi, %edx
	call	__Z12HitBreakWallP10walltypev7iiiss.isra.0
	movl	$0, 264(%ebx)
	jmp	L377
	.p2align 4,,10
	.p2align 3
L396:
	movl	120(%ebx), %ecx
	testl	%ecx, %ecx
	je	L425
	movswl	24(%esi), %edx
	movl	_SectUser(,%edx,4), %edx
	testl	%edx, %edx
	jne	L398
L425:
	movl	%eax, %edx
	andl	$536870912, %edx
	testl	%edx, %edx
	jne	L397
	orl	$536870912, %eax
	xorl	%edx, %edx
	negl	160(%ebx)
	movl	%eax, 68(%ebx)
	movl	40(%esp), %eax
	movw	%dx, 176(%ebx)
	movl	$32000, %edx
	movl	$0, 264(%ebx)
	movl	_User(,%eax,4), %ecx
	movl	152(%ecx), %eax
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$32000, %edx
	movl	%eax, 152(%ecx)
	movl	156(%ecx), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$32000, %edx
	movl	%eax, 156(%ecx)
	movl	160(%ecx), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 160(%ecx)
	movl	160(%ebx), %ecx
	movl	$715827883, %eax
	imull	%ecx
	sarl	$31, %ecx
	subl	%ecx, %edx
	movl	%edx, 160(%ebx)
	jmp	L377
L385:
	movswl	14(%eax), %edx
	xorl	%ecx, %ecx
	movl	%edi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	jmp	L423
	.cfi_endproc
LFE62:
	.p2align 4
	.globl	__Z22short_setinterpolationPs
	.def	__Z22short_setinterpolationPs;	.scl	2;	.type	32;	.endef
__Z22short_setinterpolationPs:
LFB64:
	.cfi_startproc
	movzwl	_short_numinterpolations, %ecx
	cmpw	$255, %cx
	jg	L442
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movswl	%cx, %ebx
	movl	%eax, %edx
	movl	%ebx, %eax
	subl	$1, %eax
	jns	L439
	jmp	L438
	.p2align 4
	.p2align 4,,10
	.p2align 3
L445:
	subl	$1, %eax
	jb	L438
L439:
	cmpl	%edx, _short_curipos(,%eax,4)
	jne	L445
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L442:
	ret
	.p2align 4,,10
	.p2align 3
L438:
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%edx, _short_curipos(,%ebx,4)
	movzwl	(%edx), %eax
	addl	$1, %ecx
	movw	%cx, _short_numinterpolations
	movw	%ax, _short_oldipos(%ebx,%ebx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE64:
	.p2align 4
	.globl	__Z23short_stopinterpolationPs
	.def	__Z23short_stopinterpolationPs;	.scl	2;	.type	32;	.endef
__Z23short_stopinterpolationPs:
LFB65:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	%ebx, (%esp)
	.cfi_offset 3, -12
	movl	%eax, %ebx
	movswl	_short_numinterpolations, %eax
	movl	%eax, %edx
	subl	$1, %eax
	js	L446
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	xorl	%ecx, %ecx
	jmp	L449
	.p2align 4
	.p2align 4,,10
	.p2align 3
L448:
	subl	$1, %eax
	jb	L456
L449:
	cmpl	%ebx, _short_curipos(,%eax,4)
	jne	L448
	subl	$1, %edx
	movswl	%dx, %ecx
	movzwl	_short_oldipos(%ecx,%ecx), %esi
	movw	%si, _short_oldipos(%eax,%eax)
	movzwl	_short_bakipos(%ecx,%ecx), %esi
	movl	_short_curipos(,%ecx,4), %ecx
	movw	%si, _short_bakipos(%eax,%eax)
	movl	%ecx, _short_curipos(,%eax,4)
	movl	$1, %ecx
	subl	$1, %eax
	jnb	L449
L456:
	testb	%cl, %cl
	je	L455
	movw	%dx, _short_numinterpolations
	movl	4(%esp), %esi
	.cfi_restore 6
L446:
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L455:
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	4(%esp), %esi
	.cfi_restore 6
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE65:
	.p2align 4
	.globl	__ZL24so_setpointinterpolationP9so_interpPi.lto_priv.0
	.def	__ZL24so_setpointinterpolationP9so_interpPi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL24so_setpointinterpolationP9so_interpPi.lto_priv.0:
LFB66:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	movl	458752(%eax), %esi
	cmpl	$16383, %esi
	jg	L457
	movl	%ebx, (%esp)
	.cfi_offset 3, -12
	movl	%eax, %ebx
	testl	%esi, %esi
	jle	L459
	imull	$28, %esi, %ecx
	addl	%eax, %ecx
	jmp	L460
	.p2align 4
	.p2align 4,,10
	.p2align 3
L464:
	addl	$28, %eax
	cmpl	%ecx, %eax
	je	L459
L460:
	cmpl	%edx, (%eax)
	jne	L464
	movl	(%esp), %ebx
	.cfi_restore 3
L457:
	movl	4(%esp), %esi
	addl	$8, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L459:
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	leal	1(%esi), %eax
	imull	$28, %esi, %esi
	movl	%eax, 458752(%ebx)
	movl	%edx, (%ebx,%esi)
	movl	(%edx), %eax
	movl	%eax, 4(%ebx,%esi)
	movl	%eax, 12(%ebx,%esi)
	movl	(%edx), %eax
	movl	$-1, 24(%ebx,%esi)
	movl	%eax, 16(%ebx,%esi)
	movl	(%esp), %ebx
	.cfi_restore 3
	movl	4(%esp), %esi
	addl	$8, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE66:
	.p2align 4
	.globl	__Z25so_setspriteinterpolationP19SECTOR_OBJECTstructP12spritetypev7
	.def	__Z25so_setspriteinterpolationP19SECTOR_OBJECTstructP12spritetypev7;	.scl	2;	.type	32;	.endef
__Z25so_setspriteinterpolationP19SECTOR_OBJECTstructP12spritetypev7:
LFB67:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	subl	$_SectorObject, %eax
	movl	$-1171354717, %ebp
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	sarl	$2, %eax
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	imull	$1048804528, %eax, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	_sprite, %edi
	addl	$__ZL13so_interpdata.lto_priv.0, %ebx
	movl	%eax, (%esp)
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebp
	movl	%ebx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	call	__ZL24so_setpointinterpolationP9so_interpPi.lto_priv.0
	leal	4(%esi), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebp
	movl	%ebx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%esi), %edx
	call	__ZL24so_setpointinterpolationP9so_interpPi.lto_priv.0
	cmpb	$0, 458764(%ebx)
	je	L472
L466:
	leal	28(%esi), %ecx
	movl	$-1171354717, %eax
	movl	%ecx, %edx
	subl	%edi, %edx
	mull	%edx
	imull	$1048804528, (%esp), %eax
	shrl	$5, %edx
	movl	__ZL13so_interpdata.lto_priv.0+458752(%eax), %eax
	addl	$1, _spritechanged(,%edx,4)
	cmpl	$16383, %eax
	jg	L465
	testl	%eax, %eax
	jle	L468
	imull	$28, %eax, %edx
	addl	%ebx, %edx
	jmp	L469
	.p2align 4
	.p2align 4,,10
	.p2align 3
L473:
	addl	$28, %ebx
	cmpl	%edx, %ebx
	je	L468
L469:
	cmpl	(%ebx), %ecx
	jne	L473
L465:
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
L468:
	.cfi_restore_state
	imull	$1048804528, (%esp), %edx
	leal	1(%eax), %ebx
	imull	$28, %eax, %eax
	movl	%ebx, __ZL13so_interpdata.lto_priv.0+458752(%edx)
	addl	%eax, %edx
	movl	%ecx, __ZL13so_interpdata.lto_priv.0(%edx)
	movswl	28(%esi), %eax
	movl	%eax, __ZL13so_interpdata.lto_priv.0+4(%edx)
	movswl	28(%esi), %eax
	movl	%eax, __ZL13so_interpdata.lto_priv.0+12(%edx)
	movswl	28(%esi), %eax
	subl	%edi, %esi
	movl	$0, __ZL13so_interpdata.lto_priv.0+20(%edx)
	sarl	$2, %esi
	movl	%eax, __ZL13so_interpdata.lto_priv.0+16(%edx)
	imull	$-1171354717, %esi, %eax
	movl	%eax, __ZL13so_interpdata.lto_priv.0+24(%edx)
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
L472:
	.cfi_restore_state
	leal	8(%esi), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebp
	movl	%ebx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	8(%esi), %edx
	call	__ZL24so_setpointinterpolationP9so_interpPi.lto_priv.0
	jmp	L466
	.cfi_endproc
LFE67:
	.p2align 4
	.globl	__Z26so_stopspriteinterpolationP19SECTOR_OBJECTstructP12spritetypev7
	.def	__Z26so_stopspriteinterpolationP19SECTOR_OBJECTstructP12spritetypev7;	.scl	2;	.type	32;	.endef
__Z26so_stopspriteinterpolationP19SECTOR_OBJECTstructP12spritetypev7:
LFB69:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	subl	$_SectorObject, %eax
	movl	$-1171354717, %ebp
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	sarl	$2, %eax
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	_sprite, %edi
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebp
	imull	$1048804528, %esi, %eax
	shrl	$5, %edx
	movl	__ZL13so_interpdata.lto_priv.0+458752(%eax), %ecx
	addl	$1, _spritechanged(,%edx,4)
	testl	%ecx, %ecx
	jle	L475
	leal	__ZL13so_interpdata.lto_priv.0(%eax), %edx
	xorl	%eax, %eax
	jmp	L477
	.p2align 4
	.p2align 4,,10
	.p2align 3
L508:
	addl	$1, %eax
	addl	$28, %edx
	cmpl	%eax, %ecx
	je	L507
L477:
	cmpl	(%edx), %ebx
	jne	L508
	cmpl	%eax, %ecx
	je	L507
L479:
	subl	$1, %ecx
	imull	$1048804528, %esi, %edx
	imull	$28, %ecx, %ebp
	imull	$28, %eax, %eax
	movl	%ecx, __ZL13so_interpdata.lto_priv.0+458752(%edx)
	addl	%edx, %eax
	addl	%ebp, %edx
	movl	__ZL13so_interpdata.lto_priv.0(%edx), %ebp
	movl	%ebp, __ZL13so_interpdata.lto_priv.0(%eax)
	movl	__ZL13so_interpdata.lto_priv.0+4(%edx), %ebp
	movl	%ebp, __ZL13so_interpdata.lto_priv.0+4(%eax)
	movl	__ZL13so_interpdata.lto_priv.0+8(%edx), %ebp
	movl	%ebp, __ZL13so_interpdata.lto_priv.0+8(%eax)
	movl	__ZL13so_interpdata.lto_priv.0+12(%edx), %ebp
	movl	%ebp, __ZL13so_interpdata.lto_priv.0+12(%eax)
	movl	__ZL13so_interpdata.lto_priv.0+16(%edx), %ebp
	movl	%ebp, __ZL13so_interpdata.lto_priv.0+16(%eax)
	movl	__ZL13so_interpdata.lto_priv.0+20(%edx), %ebp
	movl	%ebp, __ZL13so_interpdata.lto_priv.0+20(%eax)
	movl	__ZL13so_interpdata.lto_priv.0+24(%edx), %edx
	leal	4(%ebx), %ebp
	movl	%edx, __ZL13so_interpdata.lto_priv.0+24(%eax)
	movl	%ebp, %eax
	movl	$-1171354717, %edx
	subl	%edi, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	testl	%ecx, %ecx
	jle	L496
L478:
	imull	$1048804528, %esi, %edx
	xorl	%eax, %eax
	addl	$__ZL13so_interpdata.lto_priv.0, %edx
	jmp	L481
	.p2align 4
	.p2align 4,,10
	.p2align 3
L509:
	addl	$1, %eax
	addl	$28, %edx
	cmpl	%ecx, %eax
	je	L482
L481:
	cmpl	%ebp, (%edx)
	jne	L509
L480:
	cmpl	%ecx, %eax
	je	L482
	subl	$1, %ecx
	imull	$1048804528, %esi, %edx
	imull	$28, %ecx, %ebp
	imull	$28, %eax, %eax
	movl	%ecx, __ZL13so_interpdata.lto_priv.0+458752(%edx)
	addl	%edx, %eax
	addl	%ebp, %edx
	movl	__ZL13so_interpdata.lto_priv.0(%edx), %ebp
	movl	%ebp, __ZL13so_interpdata.lto_priv.0(%eax)
	movl	__ZL13so_interpdata.lto_priv.0+4(%edx), %ebp
	movl	%ebp, __ZL13so_interpdata.lto_priv.0+4(%eax)
	movl	__ZL13so_interpdata.lto_priv.0+8(%edx), %ebp
	movl	%ebp, __ZL13so_interpdata.lto_priv.0+8(%eax)
	movl	__ZL13so_interpdata.lto_priv.0+12(%edx), %ebp
	movl	%ebp, __ZL13so_interpdata.lto_priv.0+12(%eax)
	movl	__ZL13so_interpdata.lto_priv.0+16(%edx), %ebp
	movl	%ebp, __ZL13so_interpdata.lto_priv.0+16(%eax)
	movl	__ZL13so_interpdata.lto_priv.0+20(%edx), %ebp
	movl	%ebp, __ZL13so_interpdata.lto_priv.0+20(%eax)
	movl	__ZL13so_interpdata.lto_priv.0+24(%edx), %edx
	movl	%edx, __ZL13so_interpdata.lto_priv.0+24(%eax)
L482:
	imull	$1048804528, %esi, %eax
	leal	__ZL13so_interpdata.lto_priv.0(%eax), %edx
	movl	%edx, (%esp)
	cmpb	$0, __ZL13so_interpdata.lto_priv.0+458764(%eax)
	je	L510
L483:
	addl	$28, %ebx
	movl	$-1171354717, %eax
	movl	%ebx, %edx
	subl	%edi, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	testl	%ecx, %ecx
	jle	L498
L491:
	imull	$1048804528, %esi, %edx
	xorl	%eax, %eax
	addl	$__ZL13so_interpdata.lto_priv.0, %edx
	jmp	L489
	.p2align 4
	.p2align 4,,10
	.p2align 3
L511:
	addl	$1, %eax
	addl	$28, %edx
	cmpl	%ecx, %eax
	je	L474
L489:
	cmpl	%ebx, (%edx)
	jne	L511
L488:
	cmpl	%ecx, %eax
	je	L474
	imull	$1048804528, %esi, %esi
	subl	$1, %ecx
	imull	$28, %eax, %eax
	movl	%ecx, __ZL13so_interpdata.lto_priv.0+458752(%esi)
	imull	$28, %ecx, %ecx
	addl	%esi, %ecx
	movl	__ZL13so_interpdata.lto_priv.0(%ecx), %edx
	movl	%edx, __ZL13so_interpdata.lto_priv.0(%eax,%esi)
	movl	__ZL13so_interpdata.lto_priv.0+4(%ecx), %edx
	movl	%edx, __ZL13so_interpdata.lto_priv.0+4(%eax,%esi)
	movl	__ZL13so_interpdata.lto_priv.0+8(%ecx), %edx
	movl	%edx, __ZL13so_interpdata.lto_priv.0+8(%eax,%esi)
	movl	__ZL13so_interpdata.lto_priv.0+12(%ecx), %edx
	movl	%edx, __ZL13so_interpdata.lto_priv.0+12(%eax,%esi)
	movl	__ZL13so_interpdata.lto_priv.0+16(%ecx), %edx
	movl	%edx, __ZL13so_interpdata.lto_priv.0+16(%eax,%esi)
	movl	__ZL13so_interpdata.lto_priv.0+20(%ecx), %edx
	movl	%edx, __ZL13so_interpdata.lto_priv.0+20(%eax,%esi)
	movl	__ZL13so_interpdata.lto_priv.0+24(%ecx), %edx
	movl	%edx, __ZL13so_interpdata.lto_priv.0+24(%eax,%esi)
L474:
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
L510:
	.cfi_restore_state
	leal	8(%ebx), %ebp
	movl	$-1171354717, %edx
	movl	%ebp, %eax
	subl	%edi, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	testl	%ecx, %ecx
	jle	L484
	movl	(%esp), %edx
	xorl	%eax, %eax
	jmp	L486
	.p2align 4
	.p2align 4,,10
	.p2align 3
L513:
	addl	$1, %eax
	addl	$28, %edx
	cmpl	%eax, %ecx
	je	L512
L486:
	cmpl	(%edx), %ebp
	jne	L513
	cmpl	%eax, %ecx
	je	L514
L493:
	subl	$1, %ecx
	imull	$1048804528, %esi, %ebp
	imull	$28, %ecx, %edx
	imull	$28, %eax, %eax
	movl	%ecx, __ZL13so_interpdata.lto_priv.0+458752(%ebp)
	addl	%ebp, %edx
	addl	%ebp, %eax
	movl	__ZL13so_interpdata.lto_priv.0(%edx), %ebp
	movl	%ebp, __ZL13so_interpdata.lto_priv.0(%eax)
	movl	__ZL13so_interpdata.lto_priv.0+4(%edx), %ebp
	movl	%ebp, __ZL13so_interpdata.lto_priv.0+4(%eax)
	movl	__ZL13so_interpdata.lto_priv.0+8(%edx), %ebp
	movl	%ebp, __ZL13so_interpdata.lto_priv.0+8(%eax)
	movl	__ZL13so_interpdata.lto_priv.0+12(%edx), %ebp
	movl	%ebp, __ZL13so_interpdata.lto_priv.0+12(%eax)
	movl	__ZL13so_interpdata.lto_priv.0+16(%edx), %ebp
	movl	%ebp, __ZL13so_interpdata.lto_priv.0+16(%eax)
	movl	__ZL13so_interpdata.lto_priv.0+20(%edx), %ebp
	movl	%ebp, __ZL13so_interpdata.lto_priv.0+20(%eax)
	movl	__ZL13so_interpdata.lto_priv.0+24(%edx), %edx
	movl	%edx, __ZL13so_interpdata.lto_priv.0+24(%eax)
	jmp	L483
	.p2align 4,,10
	.p2align 3
L507:
	leal	4(%ebx), %ebp
	movl	$-1171354717, %edx
	movl	%ebp, %eax
	subl	%edi, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	jmp	L478
	.p2align 4,,10
	.p2align 3
L512:
	addl	$28, %ebx
	movl	$-1171354717, %eax
	movl	%ebx, %edx
	subl	%edi, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	jmp	L491
L475:
	je	L495
	xorl	%eax, %eax
	jmp	L479
L498:
	xorl	%eax, %eax
	jmp	L488
L495:
	leal	4(%ebx), %eax
	subl	%edi, %eax
	mull	%ebp
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	jmp	L482
L496:
	xorl	%eax, %eax
	jmp	L480
L484:
	je	L492
	xorl	%eax, %eax
	jmp	L493
L514:
	addl	$28, %ebx
	xorl	%edx, %edx
	movl	%ebx, %eax
	subl	%edi, %eax
	movl	$44, %edi
	divl	%edi
	addl	$1, _spritechanged(,%eax,4)
	jmp	L491
L492:
	leal	28(%ebx), %eax
	movl	$44, %ecx
	xorl	%edx, %edx
	subl	%edi, %eax
	divl	%ecx
	addl	$1, _spritechanged(,%eax,4)
	jmp	L474
	.cfi_endproc
LFE69:
	.p2align 4
	.globl	__Z19so_dointerpolationsi
	.def	__Z19so_dointerpolationsi;	.scl	2;	.type	32;	.endef
__Z19so_dointerpolationsi:
LFB71:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$__ZL13so_interpdata.lto_priv.0, %edx
	movl	$_SectorObject, %ecx
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
	movl	%eax, 20(%esp)
	.p2align 4
	.p2align 3
L523:
	cmpl	$2147483647, 180(%ecx)
	je	L516
	movl	458752(%edx), %esi
	testl	%esi, %esi
	jle	L516
	imull	$28, %esi, %esi
	movl	%edx, %eax
	addl	%edx, %esi
	jmp	L519
	.p2align 5
	.p2align 4,,10
	.p2align 3
L559:
	movswl	(%ebx), %ebx
	addl	$28, %eax
	movl	%ebx, -20(%eax)
	cmpl	%esi, %eax
	je	L558
L519:
	movl	24(%eax), %edi
	movl	(%eax), %ebx
	testl	%edi, %edi
	jns	L559
	movl	(%ebx), %ebx
	addl	$28, %eax
	movl	%ebx, -20(%eax)
	cmpl	%esi, %eax
	jne	L519
L558:
	movl	458756(%edx), %eax
	testl	%eax, %eax
	je	L560
L516:
	addl	$6028, %ecx
	addl	$458768, %edx
	cmpl	$_SectorObject+120560, %ecx
	jne	L523
	movl	20(%esp), %eax
	movzbl	_CommEnabled, %edx
	movl	$_SectorObject, %ebx
	movl	$__ZL13so_interpdata.lto_priv.0, 20(%esp)
	leal	(%eax,%eax,2), %eax
	movb	%dl, 15(%esp)
	movl	%eax, 4(%esp)
	.p2align 4
	.p2align 3
L533:
	cmpl	$2147483647, 180(%ebx)
	je	L524
	movl	20(%esp), %eax
	movl	458760(%eax), %ecx
	testl	%ecx, %ecx
	je	L524
	cmpb	$0, 15(%esp)
	je	L525
	cmpl	$3, %ecx
	jne	L524
	movl	172(%ebx), %edi
	testl	%edi, %edi
	je	L524
	movswl	_screenpeek, %eax
	imull	$24124, %eax, %eax
	cmpl	%ebx, _Player+22980(%eax)
	jne	L525
	movl	_Player+100(%eax), %esi
	testl	%esi, %esi
	je	L524
L525:
	movl	20(%esp), %eax
	movl	$65536, 16(%esp)
	movl	458756(%eax), %eax
	cmpl	%eax, %ecx
	je	L526
	sall	$16, %eax
	addl	4(%esp), %eax
	cltd
	idivl	%ecx
	movl	%eax, 16(%esp)
L526:
	movl	20(%esp), %eax
	movl	458752(%eax), %edx
	testl	%edx, %edx
	jle	L524
	movl	%ebx, 8(%esp)
	movl	%eax, %ecx
	xorl	%edi, %edi
	jmp	L532
	.p2align 4,,10
	.p2align 3
L562:
	movl	20(%ecx), %eax
	movl	16(%esp), %edx
/APP
 # 305 "source/sw/src/interpso.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%esi, %eax
	andw	$2047, %ax
	movw	%ax, (%ebx)
L529:
	movl	20(%esp), %eax
	addl	$1, %edi
	addl	$28, %ecx
	cmpl	%edi, 458752(%eax)
	jle	L561
L532:
	movl	(%ecx), %ebx
	movl	_sprite, %esi
	cmpl	%esi, %ebx
	jb	L527
	imull	$44, _Numsprites, %eax
	addl	%esi, %eax
	cmpl	%eax, %ebx
	jnb	L527
	movl	%ebx, %edx
	movl	$-1171354717, %eax
	subl	%esi, %edx
	mull	%edx
	shrl	$5, %edx
	movl	_User(,%edx,4), %eax
	testl	%eax, %eax
	je	L527
	imull	$44, %edx, %edx
	movzwl	26(%esi,%edx), %edx
	testw	%dx, %dx
	je	L527
	movl	68(%eax), %eax
	testl	$268435456, %eax
	je	L528
	cmpw	$9, %dx
	jle	L529
	.p2align 4
	.p2align 3
L527:
	movl	24(%ecx), %eax
	movl	16(%ecx), %esi
	testl	%eax, %eax
	jns	L562
	movl	12(%ecx), %eax
	movl	16(%esp), %edx
	subl	%esi, %eax
/APP
 # 309 "source/sw/src/interpso.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, %esi
	movl	%esi, (%ebx)
	jmp	L529
	.p2align 4,,10
	.p2align 3
L561:
	movl	8(%esp), %ebx
L524:
	addl	$6028, %ebx
	addl	$458768, 20(%esp)
	cmpl	$_SectorObject+120560, %ebx
	jne	L533
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
L560:
	.cfi_restore_state
	movl	%edx, %eax
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L522:
	movss	8(%eax), %xmm0
	movss	4(%eax), %xmm1
	movl	24(%eax), %esi
	unpcklps	%xmm1, %xmm0
	movlps	%xmm0, 12(%eax)
	testl	%esi, %esi
	js	L520
	movl	_User(,%esi,4), %edi
	xorl	%esi, %esi
	testl	%edi, %edi
	je	L521
	movswl	286(%edi), %esi
L521:
	movl	%esi, 20(%eax)
L520:
	addl	$1, %ebx
	addl	$28, %eax
	cmpl	%ebx, 458752(%edx)
	jg	L522
	jmp	L516
	.p2align 4,,10
	.p2align 3
L528:
	testl	$134217728, %eax
	je	L527
	cmpw	$5, %dx
	jg	L527
	jmp	L529
	.cfi_endproc
LFE71:
	.p2align 4
	.globl	__Z26DoPlayerNightVisionPaletteP12PLAYERstruct
	.def	__Z26DoPlayerNightVisionPaletteP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z26DoPlayerNightVisionPaletteP12PLAYERstruct:
LFB72:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	movswl	_screenpeek, %eax
	imull	$24124, %eax, %eax
	addl	$_Player, %eax
	cmpl	%eax, %ebx
	je	L569
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L569:
	.cfi_restore_state
	cmpb	$0, 23226(%ebx)
	jne	L570
	cmpb	$-108, 23303(%ebx)
	je	L571
L566:
	movb	$0, 23302(%ebx)
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L570:
	.cfi_restore_state
	movl	%ebx, %eax
	movl	$148, %ecx
	movl	$-1005, %edx
	call	__Z10SetFadeAmtP12PLAYERstructsh
	movb	$1, 23302(%ebx)
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L571:
	.cfi_restore_state
	leal	23304(%ebx), %eax
	movl	$768, 8(%esp)
	movl	$_palette_data, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movl	_palookup, %eax
	movl	$8192, 8(%esp)
	movl	$_DefaultPalette, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	xorl	%eax, %eax
	movw	%ax, 23300(%ebx)
	cmpl	$2, _rendmode
	jg	L567
	movzbl	_gs+13, %eax
	movl	$_palette_data, %edx
	movb	%al, 15(%esp)
	xorl	%eax, %eax
	call	_paletteSetColorTable
	movzbl	15(%esp), %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	call	_videoSetPalette
	jmp	L566
	.p2align 4,,10
	.p2align 3
L567:
	call	_videoFadePalette.constprop.0
	jmp	L566
	.cfi_endproc
LFE72:
	.p2align 4
	.globl	__Z26InventoryBarUpdatePositionP12PLAYERstruct
	.def	__Z26InventoryBarUpdatePositionP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z26InventoryBarUpdatePositionP12PLAYERstruct:
LFB76:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%esi, 8(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movsbl	_gs+12, %eax
	movl	%ebx, 4(%esp)
	movl	%ebp, 16(%esp)
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	movzwl	_InventoryBarXpos(%eax,%eax), %ebx
	movzwl	_InventoryBarYpos(%eax,%eax), %ebp
	imulw	$28, 23120(%esi), %ax
	movl	23152(%esi), %edx
	leal	-5(%ebx,%eax), %eax
	movw	%ax, 38(%edx)
	movl	23152(%esi), %eax
	leal	-5(%ebp), %edx
	movw	%dx, 42(%eax)
	movl	_InventoryData, %edx
	testl	%edx, %edx
	je	L572
	movl	$_InventoryData, %edx
	movl	%edi, 12(%esp)
	.cfi_offset 7, -12
	xorl	%ecx, %ecx
	subl	%edx, %ebx
	movw	%bx, 2(%esp)
	.p2align 6
	.p2align 4
	.p2align 3
L575:
	movswl	%cx, %eax
	addl	$5780, %eax
	movl	4(%esi,%eax,4), %ebx
	testl	%ebx, %ebx
	je	L574
	movzwl	2(%esp), %edi
	addl	%edx, %edi
	movw	%di, 38(%ebx)
	movl	4(%esi,%eax,4), %eax
	movw	%bp, 42(%eax)
L574:
	movl	28(%edx), %eax
	addl	$28, %edx
	addl	$1, %ecx
	testl	%eax, %eax
	jne	L575
	movl	12(%esp), %edi
	.cfi_restore 7
L572:
	movl	4(%esp), %ebx
	movl	8(%esp), %esi
	movl	16(%esp), %ebp
	addl	$20, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE76:
	.section .rdata,"dr"
LC9:
	.ascii "ON\0"
LC10:
	.ascii "OFF\0"
LC11:
	.ascii "%d%c\0"
	.text
	.p2align 4
	.globl	__Z21PlayerUpdateInventoryP12PLAYERstructs
	.def	__Z21PlayerUpdateInventoryP12PLAYERstructs;	.scl	2;	.type	32;	.endef
__Z21PlayerUpdateInventoryP12PLAYERstructs:
LFB77:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	%edi, 28(%esp)
	.cfi_offset 7, -12
	movswl	%dx, %edi
	movl	%ebx, 20(%esp)
	cmpw	$0, 23122(%eax)
	.cfi_offset 3, -20
	je	L582
	movl	_InventoryData, %ecx
	testl	%ecx, %ecx
	je	L582
	movl	%esi, 24(%esp)
	movl	$_InventoryData, %ebx
	xorl	%ecx, %ecx
	.p2align 6
	.cfi_offset 6, -16
	.p2align 4
	.p2align 3
L585:
	movswl	%cx, %edx
	movl	23124(%eax,%edx,4), %esi
	testl	%esi, %esi
	je	L583
	cmpb	$1, 23216(%eax,%edx)
	sbbl	%edx, %edx
	andl	$100, %edx
	movw	%dx, 244(%esi)
L583:
	movl	28(%ebx), %edx
	addl	$28, %ebx
	addl	$1, %ecx
	testl	%edx, %edx
	jne	L585
	movl	24(%esp), %esi
	.cfi_restore 6
L582:
	movl	$6, %ecx
	testw	%di, %di
	js	L586
	xorl	%ecx, %ecx
	cmpw	$7, %di
	cmovl	%edi, %ecx
L586:
	movl	%eax, %edx
	movswl	_screenpeek, %ebx
	movw	%cx, 23120(%eax)
	subl	$_Player, %edx
	sarl	$2, %edx
	imull	$-432986257, %edx, %edx
	cmpl	%ebx, %edx
	jne	L581
	movl	%eax, %ebx
	cmpb	$1, _gs+12
	je	L608
	jle	L581
	movl	$231, %eax
	movl	$168, %edx
	xorl	%ecx, %ecx
	movl	%esi, 24(%esp)
	movl	$168, 4(%esp)
	.cfi_offset 6, -16
	xorl	%esi, %esi
	movl	$231, (%esp)
	movw	%ax, _InventoryBoxX
	movl	%ebx, %eax
	movw	%dx, _InventoryBoxY
	movl	$2403, %edx
	movw	%cx, _InventoryXoff
	movl	$128, %ecx
	movw	%si, _InventoryYoff
	movl	$__Z15DisplaySmStringP12PLAYERstructsssPKc, _InventoryDisplayString
	call	__Z22pSpawnFullScreenSpriteP12PLAYERstructssii
	movswl	23120(%ebx), %esi
	cmpb	$0, 23216(%ebx,%esi)
	jne	L609
	movl	24(%esp), %esi
	.cfi_restore 6
L581:
	movl	20(%esp), %ebx
	movl	28(%esp), %edi
	addl	$36, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L608:
	.cfi_restore_state
	movl	$174, %eax
	movl	$64, %edi
	movl	$__Z22DisplayMiniBarSmStringP12PLAYERstructsssPKc, _InventoryDisplayString
	movw	%ax, _InventoryBoxY
	movl	$1, %eax
	movw	%ax, _InventoryXoff
	movl	$1, %eax
	movw	%di, _InventoryBoxX
	movw	%ax, _InventoryYoff
L589:
	cmpb	$0, 23216(%ebx,%ecx)
	je	L581
	imull	$28, %ecx, %eax
	movl	%esi, 24(%esp)
	movzwl	_InventoryBoxY, %edi
	movl	%ebp, 32(%esp)
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	movzwl	_InventoryYoff, %edx
	movzwl	_InventoryXoff, %esi
	addw	_InventoryBoxX, %si
	movzwl	_InventoryData+24(%eax), %eax
	addl	$19, %esi
	leal	1(%edi,%edx), %ebp
	testb	$1, %al
	jne	L610
	testb	$2, %al
	jne	L611
L591:
	leal	13(%edi,%edx), %edi
	testb	$4, %al
	je	L593
	movsbl	23216(%ebx,%ecx), %eax
	movl	$LC1, 4(%esp)
	movl	$_ds, (%esp)
	movl	%eax, 8(%esp)
	call	_sprintf
L607:
	movswl	%di, %edi
	movswl	%si, %esi
	movl	%ebx, (%esp)
	movl	%edi, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$_ds, 16(%esp)
	movl	$0, 12(%esp)
	call	*_InventoryDisplayString
	movl	24(%esp), %esi
	.cfi_restore 6
	movl	32(%esp), %ebp
	.cfi_restore 5
	movl	20(%esp), %ebx
	movl	28(%esp), %edi
	addl	$36, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L609:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	imull	$28, %esi, %esi
	movl	$250, %ecx
	movl	_InventoryData+12(%esi), %eax
	movswl	(%eax), %edx
	movzwl	_InventoryYoff, %eax
	addw	_InventoryBoxY, %ax
	addl	$1, %eax
	cwtl
	movl	%eax, 4(%esp)
	movzwl	_InventoryXoff, %eax
	addw	_InventoryBoxX, %ax
	addl	$1, %eax
	cwtl
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__Z22pSpawnFullScreenSpriteP12PLAYERstructssii
	movl	_InventoryData+20(%esi), %edx
	movl	%edx, 212(%eax)
	movswl	23120(%ebx), %ecx
	movl	24(%esp), %esi
	.cfi_restore 6
	jmp	L589
	.p2align 4,,10
	.p2align 3
L593:
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	$37, 12(%esp)
	movswl	23202(%ebx,%ecx,2), %eax
	movl	$LC11, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	jmp	L607
L611:
	cmpb	$0, 23223(%ebx,%ecx)
	movl	$LC10, %eax
	movl	$LC9, %edx
	movl	$_ds, (%esp)
	cmovne	%edx, %eax
	movl	%eax, 4(%esp)
	call	_strcpy
L606:
	movswl	%bp, %edi
	movswl	%si, %esi
	movl	%ebx, (%esp)
	movl	%edi, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$_ds, 16(%esp)
	movl	$0, 12(%esp)
	call	*_InventoryDisplayString
	movswl	23120(%ebx), %ecx
	movzwl	_InventoryXoff, %esi
	addw	_InventoryBoxX, %si
	movzwl	_InventoryBoxY, %edi
	imull	$28, %ecx, %eax
	movzwl	_InventoryYoff, %edx
	addl	$19, %esi
	movzwl	_InventoryData+24(%eax), %eax
	jmp	L591
L610:
	movl	$1330926913, _ds
	movb	$0, _ds+4
	jmp	L606
	.cfi_endproc
LFE77:
	.section .rdata,"dr"
LC12:
	.ascii "source/sw/src/inv.cpp\0"
	.text
	.p2align 4
	.globl	__Z18UseInventoryMedkitP12PLAYERstruct
	.def	__Z18UseInventoryMedkitP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z18UseInventoryMedkitP12PLAYERstruct:
LFB81:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%ebx, 24(%esp)
	.cfi_offset 3, -12
	movl	36(%esp), %ebx
	cmpb	$0, 23216(%ebx)
	je	L612
	movswl	348(%ebx), %eax
	movl	_User(,%eax,4), %eax
	movzwl	84(%eax), %ecx
	movl	$100, %eax
	subl	%ecx, %eax
	testw	%ax, %ax
	jle	L612
	movl	%esi, 28(%esp)
	.cfi_offset 6, -8
	movzwl	23202(%ebx), %edx
	movl	%ecx, 20(%esp)
	cmpw	%dx, %ax
	cmovle	%eax, %edx
	movl	%ebx, %eax
	movl	%edx, %esi
	movswl	%dx, %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movzwl	23202(%ebx), %eax
	movl	20(%esp), %ecx
	leal	-100(%ecx,%eax), %ecx
	testw	%cx, %cx
	js	L614
	movw	%cx, 23202(%ebx)
L615:
	movswl	23120(%ebx), %edx
	cmpb	$0, 23216(%ebx,%edx)
	jle	L628
L617:
	movl	%ebx, %eax
	call	__Z21PlayerUpdateInventoryP12PLAYERstructs
	imull	$24124, _myconnectindex, %eax
	addl	$_Player, %eax
	cmpl	%eax, %ebx
	je	L629
L627:
	movl	28(%esp), %esi
	.cfi_restore 6
L612:
	movl	24(%esp), %ebx
	addl	$32, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L614:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	xorl	%edx, %edx
	subb	$1, 23216(%ebx)
	movw	%dx, 23202(%ebx)
	jmp	L615
	.p2align 4,,10
	.p2align 3
L628:
	xorl	%eax, %eax
	movl	$2, %ecx
L616:
	cmpl	$1, %eax
	cmove	%ecx, %eax
	cmpb	$0, 23216(%ebx,%eax)
	jne	L630
	addl	$1, %eax
	cmpl	$7, %eax
	jne	L616
	cmpb	$0, 23217(%ebx)
	je	L617
	movl	$1, %eax
	movl	$1, %edx
	movw	%ax, 23120(%ebx)
	jmp	L617
	.p2align 4,,10
	.p2align 3
L629:
	movzbl	_Prediction, %eax
	leal	8(%ebx), %ecx
	leal	4(%ebx), %edx
	cmpw	$29, %si
	jle	L621
	testb	%al, %al
	jne	L627
	movl	%ecx, 8(%esp)
	movl	$LC12, %eax
	movl	$417, %ecx
	movl	%edx, 4(%esp)
	movl	$780, %edx
	movl	%ebx, 16(%esp)
	movl	$9, 12(%esp)
	movl	%ebx, (%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	movl	28(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L612
	.p2align 4,,10
	.p2align 3
L621:
	.cfi_restore_state
	testb	%al, %al
	jne	L627
	movl	%ecx, 8(%esp)
	movl	$LC12, %eax
	movl	$418, %ecx
	movl	%edx, 4(%esp)
	movl	$782, %edx
	movl	%ebx, 16(%esp)
	movl	$9, 12(%esp)
	movl	%ebx, (%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	movl	28(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L612
	.p2align 4,,10
	.p2align 3
L630:
	.cfi_restore_state
	movw	%ax, 23120(%ebx)
	movswl	%ax, %edx
	jmp	L617
	.cfi_endproc
LFE81:
	.p2align 4
	.globl	__Z20UseInventoryChemBombP12PLAYERstruct
	.def	__Z20UseInventoryChemBombP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z20UseInventoryChemBombP12PLAYERstruct:
LFB87:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -20
	movl	56(%esp), %ebx
	cmpb	$0, 23220(%ebx)
	jne	L655
	movl	36(%esp), %ebx
	addl	$52, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L655:
	.cfi_restore_state
	movswl	348(%ebx), %eax
	leal	4(%ebx), %ecx
	movl	%ebx, %edx
	movl	_User(,%eax,4), %eax
	movl	$12, 4(%esp)
	movl	%eax, 24(%esp)
	leal	8(%ebx), %eax
	movl	%eax, (%esp)
	movl	$278, %eax
	call	__Z9PlaySoundiPiS_S_i
	movswl	268(%ebx), %ecx
	testw	%cx, %cx
	js	L633
	movl	%esi, 40(%esp)
	movl	%edi, 44(%esp)
	movl	%ebp, 48(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	300(%ebx), %esi
	movl	388(%ebx), %eax
	addl	8(%ebx), %eax
	movl	%esi, %edx
	addl	$2048, %eax
	movl	4(%ebx), %edi
	movl	(%ebx), %ebp
	sarl	$31, %edx
	movl	%eax, 12(%esp)
	movl	$4, %eax
	xorw	%dx, %dx
	movl	%edi, 8(%esp)
	leal	32768(%esi,%edx), %esi
	movl	%ecx, (%esp)
	movl	$_s_ChemBomb, %ecx
	testl	%esi, %esi
	leal	65535(%esi), %edx
	movl	$420, 20(%esp)
	cmovns	%esi, %edx
	movl	%ebp, 4(%esp)
	sarl	$16, %edx
	movl	%edx, 16(%esp)
	movl	$3038, %edx
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movswl	%ax, %edi
	movl	_sprite, %eax
	imull	$44, %edi, %esi
	movl	%edi, 28(%esp)
	movl	_User(,%edi,4), %edi
	addl	%eax, %esi
	testb	$64, 22969(%ebx)
	je	L635
	leal	32(%esi), %edx
	movzwl	32(%esi), %ecx
	subl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	sarw	$2, %cx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	subw	%cx, 32(%esi)
L635:
	orl	$16777216, 68(%edi)
	movl	28(%esp), %edx
	movswl	348(%ebx), %eax
	call	__Z8SetOwnerss
	movl	_sprite, %ebp
	leal	21(%esi), %edx
	movl	$-1171354717, %ecx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%esi), %edx
	subl	%ebp, %edx
	movb	$32, 21(%esi)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%esi), %edx
	subl	%ebp, %edx
	movb	$32, 20(%esi)
	movl	%edx, %eax
	mull	%ecx
	movl	24(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%esi), %edx
	movb	$-15, 16(%esi)
	movzbl	273(%eax), %eax
	subl	%ebp, %edx
	movl	$200, 188(%edi)
	movb	%al, 273(%edi)
	xorl	%eax, %eax
	movw	%ax, 176(%edi)
	movl	%edx, %eax
	mull	%ecx
	movl	$50332416, 96(%edi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%esi)
	addl	$1, _spritechanged(,%edx,4)
	orw	$1, 12(%esi)
	testb	$2, 22970(%ebx)
	je	L656
L636:
	orl	$1073741824, 68(%edi)
L637:
	movl	288(%ebx), %eax
	leal	36(%esi), %edx
	subl	%ebp, %edx
	movl	%eax, 24(%esp)
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	sarl	$31, %ecx
	movl	24(%esp), %eax
	xorw	%cx, %cx
	leal	32768(%eax,%ecx), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	testl	%eax, %eax
	leal	65535(%eax), %edx
	cmovns	%eax, %edx
	movl	$100, %eax
	sarl	$16, %edx
	subl	%edx, %eax
	sall	$7, %eax
	movw	%ax, 36(%esi)
	movl	352(%ebx), %ecx
	movzbl	18(%ecx), %eax
	leal	18(%ecx), %edx
	subl	%ebp, %edx
	movb	%al, 24(%esp)
	movl	$-1171354717, %eax
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$0, 18(%ecx)
	leal	18(%esi), %ecx
	movl	%ecx, %edx
	movl	%ecx, 32(%esp)
	movl	28(%esp), %ecx
	subl	%ebp, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$0, 18(%esi)
	movl	%ecx, (%esp)
	movl	$1000, 8(%esp)
	movl	$__Z10DoChemBombs, 4(%esp)
	call	__Z13MissileSetPossPFisEi
	movl	352(%ebx), %ebp
	movl	$-1171354717, %eax
	movl	32(%esp), %ecx
	subl	_sprite, %ecx
	leal	18(%ebp), %edx
	subl	_sprite, %edx
	mull	%edx
	movzbl	24(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 18(%ebp)
	movl	$-1171354717, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	28(%esi), %eax
	movb	$20, 18(%esi)
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %edx
	movswl	32(%esi), %eax
	imull	%eax, %edx
	sarl	$14, %edx
	movl	%edx, 152(%edi)
	movzwl	28(%esi), %eax
	movswl	32(%esi), %ecx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%ecx, %eax
	sarl	$14, %eax
	movl	%eax, 156(%edi)
	movzwl	36(%esi), %ecx
	sarw	%cx
	movswl	%cx, %ecx
	movl	%ecx, 160(%edi)
	movl	192(%ebx), %ecx
	sarl	$14, %ecx
	addl	%ecx, %edx
	movl	$4800, %ecx
	movl	%edx, 152(%edi)
	movl	196(%ebx), %edx
	movw	%cx, 216(%edi)
	sarl	$14, %edx
	addl	%edx, %eax
	movl	%eax, 156(%edi)
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	44(%esp), %edi
	.cfi_restore 7
	movl	48(%esp), %ebp
	.cfi_restore 5
L633:
	subb	$1, 23220(%ebx)
	movzbl	23220(%ebx), %eax
	xorl	%edx, %edx
	movw	%dx, 23210(%ebx)
	xorl	%edx, %edx
	testb	%al, %al
	cmovs	%edx, %eax
	movswl	23120(%ebx), %edx
	movb	%al, 23220(%ebx)
	cmpb	$0, 23216(%ebx,%edx)
	jle	L657
L640:
	movl	%ebx, %eax
	movl	36(%esp), %ebx
	addl	$52, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z21PlayerUpdateInventoryP12PLAYERstructs
	.p2align 4,,10
	.p2align 3
L657:
	.cfi_restore_state
	xorl	%eax, %eax
	movl	$2, %ecx
L639:
	cmpl	$1, %eax
	cmove	%ecx, %eax
	cmpb	$0, 23216(%ebx,%eax)
	jne	L658
	addl	$1, %eax
	cmpl	$7, %eax
	jne	L639
	cmpb	$0, 23217(%ebx)
	je	L640
	movl	$1, %eax
	movl	$1, %edx
	movw	%ax, 23120(%ebx)
	jmp	L640
	.p2align 4,,10
	.p2align 3
L656:
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movswl	24(%esi), %eax
	movl	_sector, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$3, 39(%eax)
	je	L637
	jmp	L636
	.p2align 4,,10
	.p2align 3
L658:
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movw	%ax, 23120(%ebx)
	movswl	%ax, %edx
	jmp	L640
	.cfi_endproc
LFE87:
	.section .rdata,"dr"
LC13:
	.ascii "source/sw/src/jweapon.cpp\0"
	.text
	.p2align 4
	.globl	__Z21UseInventoryFlashBombP12PLAYERstruct
	.def	__Z21UseInventoryFlashBombP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z21UseInventoryFlashBombP12PLAYERstruct:
LFB91:
	.cfi_startproc
	subl	$72, %esp
	.cfi_def_cfa_offset 76
	movl	76(%esp), %eax
	movl	%eax, 32(%esp)
	cmpb	$0, 23221(%eax)
	jne	L697
	addl	$72, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
L697:
	.cfi_restore_state
	leal	4(%eax), %ecx
	movl	%esi, 60(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	leal	8(%eax), %eax
	movl	%ebx, 56(%esp)
	movl	%esi, %edx
	movl	%edi, 64(%esp)
	movl	%ebp, 68(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	344(%eax), %ebp
	movl	%eax, (%esp)
	movl	$283, %eax
	movl	$12, 4(%esp)
	movl	%ecx, 52(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	%esi, %eax
	movl	$1, %ecx
	movl	$-30, %edx
	call	__Z10SetFadeAmtP12PLAYERstructsh
	movl	$_StatDamageList, %esi
	.p2align 4
	.p2align 3
L672:
	movswl	(%esi), %eax
	movzwl	_headspritestat(%eax,%eax), %ebx
	cmpw	$-1, %bx
	je	L662
	movl	%esi, 48(%esp)
	jmp	L661
	.p2align 4,,10
	.p2align 3
L664:
	imull	%edi, %edx
	sall	$2, %edx
L665:
	movl	8(%eax), %edi
	subl	%edx, %esi
	movl	%ecx, 4(%esp)
	movl	%ebx, %edx
	movl	%esi, 12(%esp)
	movl	28(%esp), %esi
	movl	%edi, 40(%esp)
	movswl	38(%esp), %edi
	movl	%esi, 8(%esp)
	movl	40(%esp), %ecx
	movl	%edi, 16(%esp)
	movswl	24(%eax), %eax
	movl	%eax, (%esp)
	movl	24(%esp), %eax
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	je	L663
	movl	32(%esp), %eax
	movl	$31, 8(%esp)
	movswl	348(%eax), %eax
	movl	%eax, 4(%esp)
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	__Z9GetDamagesss
	movl	%eax, %esi
	movl	44(%esp), %eax
	movl	52(%eax), %ebx
	testl	%ebx, %ebx
	jne	L695
	movl	144(%eax), %ebx
	testl	%ebx, %ebx
	je	L666
	cmpw	$-70, %si
	jl	L698
L668:
	movswl	%si, %edx
	movl	$1, %ecx
	movl	%ebx, %eax
	call	__Z10SetFadeAmtP12PLAYERstructsh
	.p2align 4
	.p2align 3
L663:
	movzwl	36(%esp), %eax
	cmpw	$-1, %ax
	je	L695
	movl	%eax, %ebx
L661:
	movl	32(%esp), %eax
	cmpw	%bx, 348(%eax)
	je	L695
	movswl	%bx, %eax
	movl	4(%ebp), %esi
	movzwl	_nextspritestat(%eax,%eax), %ecx
	movl	%eax, 20(%esp)
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	%esi, 28(%esp)
	movw	%cx, 36(%esp)
	movl	0(%ebp), %ecx
	movl	(%eax), %edx
	movl	%ecx, %ebx
	subl	%edx, %ebx
	movl	%edx, 24(%esp)
	movl	%ebx, %edx
	negl	%edx
	cmovs	%ebx, %edx
	movl	4(%eax), %ebx
	subl	%ebx, %esi
	movl	%esi, %edi
	negl	%edi
	cmovns	%edi, %esi
	cmpl	%esi, %edx
	leal	(%edx,%esi), %edi
	cmovg	%esi, %edx
	sarl	%edx
	subl	%edx, %edi
	cmpl	$16384, %edi
	jg	L663
	testb	$1, 12(%ebp)
	je	L663
	movl	20(%esp), %edi
	movzbl	21(%ebp), %edx
	movl	8(%ebp), %esi
	movl	_User(,%edi,4), %edi
	movl	%edi, 44(%esp)
	movzwl	24(%ebp), %edi
	movw	%di, 38(%esp)
	movswl	14(%ebp), %edi
	movswl	_tilesiz+2(,%edi,4), %edi
	cmpb	$64, %dl
	jne	L664
	sall	$8, %edi
	movl	%edi, %edx
	jmp	L665
	.p2align 4,,10
	.p2align 3
L695:
	movl	48(%esp), %esi
L662:
	addl	$2, %esi
	movl	$_StatDamageList+40, %eax
	cmpl	%esi, %eax
	jne	L672
	movl	32(%esp), %ebx
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	subb	$1, 23221(%ebx)
	movzbl	23221(%ebx), %eax
	movw	%cx, 23212(%ebx)
	testb	%al, %al
	cmovs	%edx, %eax
	movswl	23120(%ebx), %edx
	movb	%al, 23221(%ebx)
	cmpb	$0, 23216(%ebx,%edx)
	jle	L699
L674:
	movl	32(%esp), %eax
	movl	56(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	60(%esp), %esi
	.cfi_restore 6
	movl	64(%esp), %edi
	.cfi_restore 7
	movl	68(%esp), %ebp
	.cfi_restore 5
	addl	$72, %esp
	.cfi_def_cfa_offset 4
	jmp	__Z21PlayerUpdateInventoryP12PLAYERstructs
	.p2align 4,,10
	.p2align 3
L698:
	.cfi_restore_state
	movl	_randomseed, %eax
	addl	$1, _krandcount
	movl	$387, %ecx
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L669
	movl	$-1610571775, %ecx
	sall	$14, %eax
	mull	%ecx
	shrl	$27, %edx
	movl	_PlayerLowHealthPainVocs(,%edx,4), %ecx
L669:
	cmpb	$0, _Prediction
	jne	L668
	movl	32(%esp), %eax
	movl	52(%esp), %ebx
	movl	$1639, %edx
	movl	$13, 12(%esp)
	movl	%eax, 16(%esp)
	movl	%ebx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	movl	$LC13, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	movl	44(%esp), %eax
	movl	144(%eax), %ebx
	jmp	L668
	.p2align 4,,10
	.p2align 3
L666:
	movl	20(%esp), %edi
	movl	%edi, (%esp)
	call	__Z9ActorPains
	movl	%edi, %eax
	call	__Z21SpawnFlashBombOnActors.isra.0
	jmp	L663
L699:
	xorl	%eax, %eax
	movl	$2, %ecx
L673:
	cmpl	$1, %eax
	cmove	%ecx, %eax
	cmpb	$0, 23216(%ebx,%eax)
	jne	L700
	addl	$1, %eax
	cmpl	$7, %eax
	jne	L673
	movl	32(%esp), %eax
	cmpb	$0, 23217(%eax)
	je	L674
	movl	$1, %edx
	movw	%dx, 23120(%eax)
	movl	$1, %edx
	jmp	L674
L700:
	movl	32(%esp), %ecx
	movswl	%ax, %edx
	movw	%ax, 23120(%ecx)
	jmp	L674
	.cfi_endproc
LFE91:
	.p2align 4
	.globl	__Z20UseInventoryCaltropsP12PLAYERstruct
	.def	__Z20UseInventoryCaltropsP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z20UseInventoryCaltropsP12PLAYERstruct:
LFB97:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -20
	movl	56(%esp), %ebx
	cmpb	$0, 23222(%ebx)
	jne	L728
	movl	36(%esp), %ebx
	addl	$52, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L728:
	.cfi_restore_state
	movswl	348(%ebx), %eax
	leal	4(%ebx), %ecx
	movl	%ebx, %edx
	movl	_User(,%eax,4), %eax
	movl	$12, 4(%esp)
	movl	%eax, 24(%esp)
	leal	8(%ebx), %eax
	movl	%eax, (%esp)
	movl	$278, %eax
	call	__Z9PlaySoundiPiS_S_i
	movswl	268(%ebx), %ecx
	testw	%cx, %cx
	js	L703
	movl	%esi, 40(%esp)
	movl	%edi, 44(%esp)
	movl	%ebp, 48(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	388(%ebx), %eax
	addl	8(%ebx), %eax
	movl	(%ebx), %esi
	addl	$2048, %eax
	addl	$1, _krandcount
	movl	4(%ebx), %edi
	movl	%eax, 28(%esp)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$419, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L704
	sall	$14, %eax
	movl	$1761634659, %ebp
	mull	%ebp
	shrl	$21, %edx
	addl	$210, %edx
L704:
	movl	300(%ebx), %ebp
	movl	%edx, 20(%esp)
	movl	%esi, 4(%esp)
	movl	%ebp, %eax
	movl	%ecx, (%esp)
	movl	$_s_Caltrops, %ecx
	sarl	$31, %eax
	movl	%edi, 8(%esp)
	xorw	%ax, %ax
	leal	32768(%ebp,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	movl	$2218, %edx
	sarl	$16, %eax
	movl	%eax, 16(%esp)
	movl	28(%esp), %eax
	movl	%eax, 12(%esp)
	movl	$3, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movswl	%ax, %esi
	movl	_sprite, %eax
	imull	$44, %esi, %ecx
	movl	%esi, 28(%esp)
	movl	_User(,%esi,4), %esi
	addl	%eax, %ecx
	testb	$64, 22969(%ebx)
	je	L706
	leal	32(%ecx), %edx
	movzwl	32(%ecx), %edi
	subl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	sarw	$2, %di
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	subw	%di, 32(%ecx)
L706:
	orl	$16777216, 68(%esi)
	movl	28(%esp), %edx
	movl	$-1171354717, %edi
	movswl	348(%ebx), %eax
	movl	%ecx, 32(%esp)
	call	__Z8SetOwnerss
	movl	32(%esp), %ecx
	movl	_sprite, %ebp
	leal	21(%ecx), %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ecx), %edx
	subl	%ebp, %edx
	movb	$64, 21(%ecx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ecx), %edx
	subl	%ebp, %edx
	movb	$64, 20(%ecx)
	movl	%edx, %eax
	mull	%edi
	movl	24(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$-15, 16(%ecx)
	movzbl	273(%eax), %eax
	movl	$200, 188(%esi)
	movb	%al, 273(%esi)
	xorl	%eax, %eax
	movl	$50332416, 96(%esi)
	movw	%ax, 176(%esi)
	testb	$2, 22970(%ebx)
	je	L729
L707:
	orl	$1073741824, 68(%esi)
L708:
	movl	288(%ebx), %eax
	leal	36(%ecx), %edx
	movl	%ecx, 32(%esp)
	subl	%ebp, %edx
	movl	%eax, 24(%esp)
	movl	%eax, %edi
	movl	$-1171354717, %eax
	mull	%edx
	sarl	$31, %edi
	movl	24(%esp), %eax
	xorw	%di, %di
	leal	32768(%eax,%edi), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	testl	%eax, %eax
	leal	65535(%eax), %edx
	cmovns	%eax, %edx
	movl	$100, %eax
	sarl	$16, %edx
	subl	%edx, %eax
	sall	$7, %eax
	movw	%ax, 36(%ecx)
	movl	352(%ebx), %edi
	movzbl	18(%edi), %eax
	leal	18(%edi), %edx
	subl	%ebp, %edx
	movb	%al, 24(%esp)
	movl	$-1171354717, %eax
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$0, 18(%edi)
	leal	18(%ecx), %edi
	movl	%edi, %edx
	subl	%ebp, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$0, 18(%ecx)
	movl	28(%esp), %ecx
	movl	$1000, 8(%esp)
	movl	%ecx, (%esp)
	movl	$__Z10DoCaltropss, 4(%esp)
	call	__Z13MissileSetPossPFisEi
	movl	352(%ebx), %ebp
	movl	$-1171354717, %eax
	subl	_sprite, %edi
	movl	32(%esp), %ecx
	leal	18(%ebp), %edx
	subl	_sprite, %edx
	mull	%edx
	movzbl	24(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 18(%ebp)
	movl	$-1171354717, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	28(%ecx), %eax
	movb	$20, 18(%ecx)
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %edx
	movswl	32(%ecx), %eax
	imull	%eax, %edx
	sarl	$14, %edx
	movl	%edx, 152(%esi)
	movzwl	28(%ecx), %eax
	movswl	32(%ecx), %edi
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edi, %eax
	sarl	$14, %eax
	movl	%eax, 156(%esi)
	movzwl	36(%ecx), %edi
	sarw	%di
	movswl	%di, %edi
	movl	%edi, 160(%esi)
	movl	192(%ebx), %edi
	sarl	$14, %edi
	addl	%edi, %edx
	movl	%edx, 152(%esi)
	movl	196(%ebx), %edx
	sarl	$14, %edx
	addl	%edx, %eax
	movl	%eax, 156(%esi)
	movl	%ecx, %eax
	call	__Z19SetupSpriteForBreakP12spritetypev7.isra.0
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	44(%esp), %edi
	.cfi_restore 7
	movl	48(%esp), %ebp
	.cfi_restore 5
L703:
	subb	$1, 23222(%ebx)
	movzbl	23222(%ebx), %eax
	xorl	%edx, %edx
	movw	%dx, 23214(%ebx)
	xorl	%edx, %edx
	testb	%al, %al
	cmovs	%edx, %eax
	movswl	23120(%ebx), %edx
	movb	%al, 23222(%ebx)
	cmpb	$0, 23216(%ebx,%edx)
	jle	L730
L711:
	movl	%ebx, %eax
	movl	36(%esp), %ebx
	addl	$52, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z21PlayerUpdateInventoryP12PLAYERstructs
	.p2align 4,,10
	.p2align 3
L730:
	.cfi_restore_state
	xorl	%eax, %eax
	movl	$2, %ecx
L710:
	cmpl	$1, %eax
	cmove	%ecx, %eax
	cmpb	$0, 23216(%ebx,%eax)
	jne	L731
	addl	$1, %eax
	cmpl	$7, %eax
	jne	L710
	cmpb	$0, 23217(%ebx)
	je	L711
	movl	$1, %eax
	movl	$1, %edx
	movw	%ax, 23120(%ebx)
	jmp	L711
	.p2align 4,,10
	.p2align 3
L729:
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movswl	24(%ecx), %eax
	movl	_sector, %edi
	leal	(%eax,%eax,4), %eax
	leal	(%edi,%eax,8), %eax
	testb	$3, 39(%eax)
	je	L708
	jmp	L707
	.p2align 4,,10
	.p2align 3
L731:
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movw	%ax, 23120(%ebx)
	movswl	%ax, %edx
	jmp	L711
	.cfi_endproc
LFE97:
	.p2align 4
	.globl	__Z21UseInventoryRepairKitP12PLAYERstruct
	.def	__Z21UseInventoryRepairKitP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z21UseInventoryRepairKitP12PLAYERstruct:
LFB101:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -16
	movl	%eax, %ebx
	imull	$24124, _myconnectindex, %eax
	addl	$_Player, %eax
	cmpl	%eax, %ebx
	je	L743
L733:
	movswl	23120(%ebx), %edx
	xorl	%eax, %eax
	movb	$0, 23217(%ebx)
	movw	%ax, 23204(%ebx)
	cmpb	$0, 23216(%ebx,%edx)
	jle	L744
L736:
	movl	%ebx, %eax
	movl	20(%esp), %ebx
	addl	$32, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z21PlayerUpdateInventoryP12PLAYERstructs
	.p2align 4,,10
	.p2align 3
L744:
	.cfi_restore_state
	xorl	%eax, %eax
	movl	$2, %ecx
L735:
	cmpl	$1, %eax
	cmove	%ecx, %eax
	cmpb	$0, 23216(%ebx,%eax)
	jne	L745
	addl	$1, %eax
	cmpl	$7, %eax
	jne	L735
	movl	%ebx, %eax
	movl	20(%esp), %ebx
	addl	$32, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z21PlayerUpdateInventoryP12PLAYERstructs
	.p2align 4,,10
	.p2align 3
L743:
	.cfi_restore_state
	imull	$1103515245, _wrandomseed, %eax
	movl	$32766, %ecx
	movzbl	_Prediction, %edx
	addl	$12345, %eax
	movl	%eax, _wrandomseed
	shrl	$16, %eax
	andl	$32767, %eax
	cmpl	%ecx, %eax
	cmova	%ecx, %eax
	sall	$14, %eax
	cmpl	$268963853, %eax
	ja	L746
	testb	%dl, %dl
	jne	L733
	leal	8(%ebx), %eax
	movl	%ebx, (%esp)
	movl	$443, %ecx
	movl	$875, %edx
	movl	%eax, 8(%esp)
	leal	4(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$LC12, %eax
	movl	%ebx, 16(%esp)
	movl	$9, 12(%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	jmp	L733
	.p2align 4,,10
	.p2align 3
L745:
	movw	%ax, 23120(%ebx)
	movswl	%ax, %edx
	jmp	L736
L746:
	testb	%dl, %dl
	jne	L733
	leal	8(%ebx), %eax
	movl	%ebx, (%esp)
	movl	$370, %ecx
	movl	$873, %edx
	movl	%eax, 8(%esp)
	leal	4(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$LC12, %eax
	movl	%ebx, 16(%esp)
	movl	$9, 12(%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	jmp	L733
	.cfi_endproc
LFE101:
	.p2align 4
	.globl	__Z17UseInventoryCloakP12PLAYERstruct
	.def	__Z17UseInventoryCloakP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z17UseInventoryCloakP12PLAYERstruct:
LFB103:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	%ebx, 24(%esp)
	.cfi_offset 3, -16
	movl	40(%esp), %ebx
	movswl	23120(%ebx), %edx
	cmpb	$0, 23223(%ebx,%edx)
	je	L757
L747:
	movl	24(%esp), %ebx
	addl	$36, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L757:
	.cfi_restore_state
	movl	%esi, 28(%esp)
	.cfi_offset 6, -12
	movl	352(%ebx), %ecx
	movb	$1, 23223(%ebx,%edx)
	cmpb	$0, 23216(%ebx,%edx)
	jle	L758
L749:
	movl	%ebx, %eax
	movl	%ecx, 20(%esp)
	movl	$-1171354717, %esi
	call	__Z21PlayerUpdateInventoryP12PLAYERstructs
	movl	20(%esp), %ecx
	leal	12(%ecx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ecx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	orw	$2, 12(%ecx)
	mull	%esi
	leal	8(%ebx), %esi
	movl	$283, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movb	$100, 16(%ecx)
	leal	4(%ebx), %ecx
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	imull	$24124, _myconnectindex, %eax
	addl	$_Player, %eax
	cmpl	%eax, %ebx
	je	L759
L756:
	movl	28(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	24(%esp), %ebx
	addl	$36, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L758:
	.cfi_restore_state
	xorl	%eax, %eax
	movl	$2, %esi
L752:
	cmpl	$1, %eax
	cmove	%esi, %eax
	cmpb	$0, 23216(%ebx,%eax)
	jne	L760
	addl	$1, %eax
	cmpl	$7, %eax
	jne	L752
	cmpb	$0, 23217(%ebx)
	je	L749
	movl	$1, %eax
	movl	$1, %edx
	movw	%ax, 23120(%ebx)
	jmp	L749
	.p2align 4,,10
	.p2align 3
L759:
	cmpb	$0, _Prediction
	jne	L756
	leal	4(%ebx), %eax
	movl	%ebx, (%esp)
	movl	$359, %ecx
	movl	$917, %edx
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC12, %eax
	movl	%ebx, 16(%esp)
	movl	$9, 12(%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	movl	28(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L747
	.p2align 4,,10
	.p2align 3
L760:
	.cfi_restore_state
	movw	%ax, 23120(%ebx)
	movswl	%ax, %edx
	jmp	L749
	.cfi_endproc
LFE103:
	.p2align 4
	.globl	__Z18StopInventoryCloakP12PLAYERstructs
	.def	__Z18StopInventoryCloakP12PLAYERstructs;	.scl	2;	.type	32;	.endef
__Z18StopInventoryCloakP12PLAYERstructs:
LFB104:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	12(%esp), %ebx
	movswl	16(%esp), %edx
	movl	352(%ebx), %esi
	movb	$0, 23223(%ebx,%edx)
	cmpw	$0, 23202(%ebx,%edx,2)
	jg	L762
	xorl	%ecx, %ecx
	leal	11600(%edx), %eax
	movw	%cx, 2(%ebx,%eax,2)
	movzbl	23216(%ebx,%edx), %eax
	movl	$0, %ecx
	subb	$1, %al
	cmovs	%ecx, %eax
	movb	%al, 23216(%ebx,%edx)
L762:
	movl	%ebx, %eax
	call	__Z21PlayerUpdateInventoryP12PLAYERstructs
	leal	12(%esi), %edx
	subl	_sprite, %edx
	movl	$-1171354717, %ecx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%esi), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	andw	$-3, 12(%esi)
	mull	%ecx
	leal	8(%ebx), %eax
	leal	4(%ebx), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movb	$0, 16(%esi)
	movl	%eax, 12(%esp)
	movl	$283, %eax
	movl	$0, 16(%esp)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z9PlaySoundiPiS_S_i
	.cfi_endproc
LFE104:
	.p2align 4
	.globl	__Z24StopInventoryNightVisionP12PLAYERstructs
	.def	__Z24StopInventoryNightVisionP12PLAYERstructs;	.scl	2;	.type	32;	.endef
__Z24StopInventoryNightVisionP12PLAYERstructs:
LFB105:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %ebx
	movswl	12(%esp), %eax
	movb	$0, 23223(%ebx,%eax)
	cmpw	$0, 23202(%ebx,%eax,2)
	jg	L766
	xorl	%ecx, %ecx
	leal	11600(%eax), %edx
	movw	%cx, 2(%ebx,%edx,2)
	movzbl	23216(%ebx,%eax), %ecx
	leal	-1(%ecx), %edx
	xorl	%ecx, %ecx
	testb	%dl, %dl
	cmovs	%ecx, %edx
	movb	%dl, 23216(%ebx,%eax)
L766:
	movswl	23120(%ebx), %edx
	cmpb	$0, 23216(%ebx,%edx)
	jle	L776
L769:
	movl	%ebx, %eax
	call	__Z21PlayerUpdateInventoryP12PLAYERstructs
	movl	%ebx, %eax
	call	__Z26DoPlayerNightVisionPaletteP12PLAYERstruct
	movl	%ebx, %eax
	call	__Z19DoPlayerDivePaletteP12PLAYERstruct
	leal	8(%ebx), %eax
	leal	4(%ebx), %ecx
	movl	%ebx, %edx
	movl	%eax, 8(%esp)
	movl	$290, %eax
	movl	$9, 12(%esp)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z9PlaySoundiPiS_S_i
	.p2align 4,,10
	.p2align 3
L776:
	.cfi_restore_state
	xorl	%eax, %eax
	movl	$2, %ecx
L768:
	cmpl	$1, %eax
	cmove	%ecx, %eax
	cmpb	$0, 23216(%ebx,%eax)
	jne	L777
	addl	$1, %eax
	cmpl	$7, %eax
	jne	L768
	cmpb	$0, 23217(%ebx)
	je	L769
	movl	$1, %eax
	movl	$1, %edx
	movw	%ax, 23120(%ebx)
	jmp	L769
	.p2align 4,,10
	.p2align 3
L777:
	movw	%ax, 23120(%ebx)
	movswl	%ax, %edx
	jmp	L769
	.cfi_endproc
LFE105:
	.p2align 4
	.globl	__Z23UseInventoryNightVisionP12PLAYERstruct
	.def	__Z23UseInventoryNightVisionP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z23UseInventoryNightVisionP12PLAYERstruct:
LFB106:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %ebx
	movswl	23120(%ebx), %edx
	cmpb	$0, 23223(%ebx,%edx)
	jne	L782
	movb	$1, 23223(%ebx,%edx)
	movl	%ebx, %eax
	call	__Z21PlayerUpdateInventoryP12PLAYERstructs
	movl	%ebx, %eax
	call	__Z26DoPlayerNightVisionPaletteP12PLAYERstruct
	leal	8(%ebx), %eax
	leal	4(%ebx), %ecx
	movl	%ebx, %edx
	movl	%eax, (%esp)
	movl	$289, %eax
	movl	$9, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L782:
	.cfi_restore_state
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	__Z24StopInventoryNightVisionP12PLAYERstructs
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE106:
	.p2align 4
	.globl	__Z17SpawnInventoryBarP12PLAYERstruct.part.0
	.def	__Z17SpawnInventoryBarP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
__Z17SpawnInventoryBarP12PLAYERstruct.part.0:
LFB107:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	$_ps_PanelSelectionBox, %edx
	movl	$192, %ecx
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	%edi, 20(%esp)
	.cfi_offset 7, -12
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	movzwl	_xdim, %edi
	orl	$12288, 204(%eax)
	movl	$0, 182(%eax)
	leal	-1(%edi), %edx
	movzwl	_ydim, %edi
	movw	%dx, 186(%eax)
	leal	-1(%edi), %edx
	movw	%dx, 188(%eax)
	movl	%eax, 23152(%esi)
	movl	_InventoryData, %eax
	testl	%eax, %eax
	je	L784
	movl	%ebx, 12(%esp)
	xorl	%edi, %edi
	movl	%ebp, 24(%esp)
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	xorl	%ebp, %ebp
	.p2align 4
	.p2align 3
L787:
	movswl	%bp, %ebx
	xorl	%edx, %edx
	leal	5780(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	23124(%esi,%ebx,4), %eax
	testl	%eax, %eax
	jne	L785
	imull	$28, %ebx, %eax
	movl	_InventoryData+12(%eax), %edx
	movl	%eax, 8(%esp)
	testl	%edx, %edx
	je	L785
	movsbl	_gs+12, %eax
	movswl	_InventoryBarYpos(%eax,%eax), %ecx
	movl	%ecx, 4(%esp)
	movzwl	_InventoryBarXpos(%eax,%eax), %ecx
	addl	%edi, %ecx
	movswl	%cx, %eax
	movl	$192, %ecx
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	leal	5780(%ebx), %ecx
	movl	%eax, 4(%esi,%ecx,4)
	movzwl	_xdim, %ecx
	movl	%eax, %edx
	movl	$0, 182(%eax)
	leal	-1(%ecx), %eax
	movzwl	_ydim, %ecx
	movw	%ax, 186(%edx)
	leal	-1(%ecx), %eax
	movw	%ax, 188(%edx)
	movl	8(%esp), %eax
	movl	_InventoryData+20(%eax), %eax
	orl	$12288, 204(%edx)
	movl	%eax, 212(%edx)
L785:
	cmpb	$0, 23216(%esi,%ebx)
	jne	L786
	movl	$100, %ecx
	movw	%cx, 244(%edx)
L786:
	movl	_InventoryData+28(%edi), %edx
	addl	$28, %edi
	addl	$1, %ebp
	testl	%edx, %edx
	jne	L787
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	24(%esp), %ebp
	.cfi_restore 5
L784:
	movl	$240, %eax
	movw	%ax, 23122(%esi)
	movl	16(%esp), %esi
	movl	20(%esp), %edi
	addl	$28, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE107:
	.p2align 4
	.globl	__Z26GetCompactCTFCaptureScoresPiS_.part.0
	.def	__Z26GetCompactCTFCaptureScoresPiS_.part.0;	.scl	2;	.type	32;	.endef
__Z26GetCompactCTFCaptureScoresPiS_.part.0:
LFB111:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%edx, %ecx
	movl	%ebx, 8(%esp)
	movl	$-1, (%eax)
	movl	$-1, (%edx)
	.cfi_offset 3, -20
	movl	_FlagCaptureWinner, %ebx
	movzwl	_gNet+12, %edx
	testl	%ebx, %ebx
	je	L795
	cmpw	$1, %dx
	je	L796
L799:
	xorl	%edx, %edx
L794:
	movl	8(%esp), %ebx
	movl	%edx, %eax
	addl	$24, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L795:
	.cfi_restore_state
	movl	$0, __ZZ26GetCompactCTFCaptureScoresPiS_E12frozenWinner
	movl	$-1, __ZZ26GetCompactCTFCaptureScoresPiS_E14frozenRedScore
	movl	$-1, __ZZ26GetCompactCTFCaptureScoresPiS_E15frozenBlueScore
	cmpw	$1, %dx
	jne	L799
	movzbl	_gNet+14, %edx
	testb	%dl, %dl
	je	L794
L800:
	movswl	_headspritestat, %edx
	testl	%edx, %edx
	js	L799
	movl	%esi, 12(%esp)
	.cfi_offset 6, -16
	movl	_sprite, %esi
	movl	%edi, 16(%esp)
	.cfi_offset 7, -12
	movl	$-1, %edi
	movl	%ebp, 20(%esp)
	.cfi_offset 5, -8
	movl	$-1, %ebp
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	jmp	L809
	.p2align 6
	.p2align 4,,10
	.p2align 3
L802:
	movswl	_nextspritestat(%edx,%edx), %edx
	testl	%edx, %edx
	js	L808
L809:
	imull	$44, %edx, %eax
	addl	%esi, %eax
	movswl	14(%eax), %ecx
	leal	-1900(%ecx), %ebx
	cmpw	$99, %bx
	ja	L802
	testb	$16, 12(%eax)
	je	L802
	movzbl	17(%eax), %ebx
	cmpb	$19, %bl
	je	L840
	cmpl	$-1, %ebp
	setne	%al
	cmpl	$-1, %edi
	jne	L813
	cmpb	$23, %bl
	je	L806
L813:
	cmpl	$-1, %edi
	setne	%cl
	andl	%ecx, %eax
L805:
	testb	%al, %al
	je	L802
	.p2align 4
	.p2align 3
L808:
	movl	%ebp, %edx
	movl	(%esp), %eax
	movl	4(%esp), %ecx
	andl	%edi, %edx
	cmpl	$-1, %edx
	je	L839
	leal	-1900(%ebp), %edx
	cmpl	$-1, %ebp
	cmovne	%edx, %ebp
	leal	-1900(%edi), %edx
	cmpl	$-1, %edi
	cmovne	%edx, %edi
	movl	%ebp, (%eax)
	movl	%edi, (%ecx)
	movl	_FlagCaptureWinner, %edx
	testl	%edx, %edx
	je	L812
	movl	(%eax), %eax
	movl	%edx, __ZZ26GetCompactCTFCaptureScoresPiS_E12frozenWinner
	movl	%edi, __ZZ26GetCompactCTFCaptureScoresPiS_E15frozenBlueScore
	movl	%eax, __ZZ26GetCompactCTFCaptureScoresPiS_E14frozenRedScore
L812:
	movl	$1, %edx
	movl	12(%esp), %esi
	.cfi_restore 6
	movl	16(%esp), %edi
	.cfi_restore 7
	movl	20(%esp), %ebp
	.cfi_restore 5
	movl	8(%esp), %ebx
	movl	%edx, %eax
	addl	$24, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L796:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -20
	movzbl	_gNet+14, %edx
	testb	%dl, %dl
	je	L794
	cmpl	__ZZ26GetCompactCTFCaptureScoresPiS_E12frozenWinner, %ebx
	jne	L800
	movl	__ZZ26GetCompactCTFCaptureScoresPiS_E14frozenRedScore, %edx
	movl	%edx, (%eax)
	movl	__ZZ26GetCompactCTFCaptureScoresPiS_E15frozenBlueScore, %eax
	andl	%eax, %edx
	movl	%eax, (%ecx)
	notl	%edx
	shrl	$31, %edx
	jmp	L794
	.p2align 4,,10
	.p2align 3
L840:
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpl	$-1, %edi
	setne	%al
	cmpl	$-1, %ebp
	cmove	%ecx, %ebp
	jmp	L805
	.p2align 4,,10
	.p2align 3
L806:
	movswl	%cx, %edi
	jmp	L805
	.p2align 4,,10
	.p2align 3
L839:
	movl	12(%esp), %esi
	.cfi_restore 6
	movl	16(%esp), %edi
	.cfi_restore 7
	movl	20(%esp), %ebp
	.cfi_restore 5
	jmp	L799
	.cfi_endproc
LFE111:
	.section .rdata,"dr"
LC14:
	.ascii "%d%%\0"
	.text
	.p2align 4
	.globl	__Z13UpdateMiniBarP12PLAYERstruct
	.def	__Z13UpdateMiniBarP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z13UpdateMiniBarP12PLAYERstruct:
LFB112:
	.cfi_startproc
	movl	%eax, %edx
	movswl	348(%eax), %eax
	cmpl	$16383, %eax
	ja	L948
	addl	$-128, %esp
	.cfi_def_cfa_offset 132
	movl	%ebp, 124(%esp)
	.cfi_offset 5, -8
	movl	_User(,%eax,4), %ebp
	cmpb	$0, _PanelUpdateMode
	je	L841
	testl	%ebp, %ebp
	je	L841
	movl	%edx, 36(%esp)
	leal	56(%esp), %eax
	leal	72(%esp), %edx
	movl	%edi, 120(%esp)
	.cfi_offset 7, -12
	call	__Z26GetCompactCTFCaptureScoresPiS_.part.0
	testb	%al, %al
	je	L850
	movl	$200, %edx
	movswl	_tilesiz+14930, %eax
	movl	%ebx, 112(%esp)
	movl	$4, %edi
	movl	%esi, 116(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	56(%esp), %esi
	imull	$57344, %eax, %eax
	sarl	$16, %eax
	subl	%eax, %edx
	movl	%edx, %ebx
	shrl	$31, %ebx
	addl	%edx, %ebx
	sarl	%ebx
	testl	%esi, %esi
	jns	L962
L846:
	movl	72(%esp), %ecx
	testl	%ecx, %ecx
	jns	L963
	movl	112(%esp), %ebx
	.cfi_restore 3
	movl	116(%esp), %esi
	.cfi_restore 6
L850:
	movzbl	_gs+12, %eax
	testb	%al, %al
	je	L964
	cmpb	$1, %al
	jne	L956
	movl	_MinHUDArmorEnabled, %eax
	testl	%eax, %eax
	jne	L965
L894:
	movl	_xdim, %eax
	movl	_ydim, %edx
	subl	$1, %eax
	js	L896
	subl	$1, %edx
	js	L896
	movl	%edx, 32(%esp)
	movl	$65536, %ecx
	movl	$11403264, %edx
	movl	%eax, 28(%esp)
	movl	$262144, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$282, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$2437, 4(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L896:
	movswl	84(%ebp), %ecx
	movl	$7, %eax
	movl	$179, %edx
	call	__Z20DisplayMiniBarNumberssi
	movsbl	273(%ebp), %eax
	cmpb	$13, %al
	je	L897
	testb	%al, %al
	jne	L966
L897:
	movl	36(%esp), %edi
	movswl	23120(%edi), %edx
	cmpb	$0, 23216(%edi,%edx)
	je	L956
	movl	_xdim, %eax
	movl	_ydim, %ecx
	subl	$1, %eax
	js	L899
	subl	$1, %ecx
	js	L899
	movl	%ecx, 32(%esp)
	movl	$11403264, %edx
	movl	$65536, %ecx
	movl	%eax, 28(%esp)
	movl	$4194304, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$282, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$2438, 4(%esp)
	movl	$0, (%esp)
	movl	%ebx, 112(%esp)
	.cfi_offset 3, -20
	call	_rotatesprite_.part.0.constprop.0
	movswl	23120(%edi), %edx
	imull	$28, %edx, %eax
	movl	_InventoryData+12(%eax), %eax
	movswl	(%eax), %ebx
	cmpl	$30719, %ebx
	ja	L959
	movl	_xdim, %eax
	movl	_ydim, %ecx
	subl	$1, %eax
	js	L959
	subl	$1, %ecx
	js	L959
	movl	%ecx, 32(%esp)
	movl	$11534336, %edx
	movl	$65536, %ecx
	movl	%eax, 28(%esp)
	movl	$4325376, %eax
	movl	%ebx, 4(%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$282, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
	movswl	23120(%edi), %edx
	movl	112(%esp), %ebx
	.cfi_restore 3
L899:
	movl	36(%esp), %eax
	movl	120(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	124(%esp), %ebp
	subl	$-128, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	__Z21PlayerUpdateInventoryP12PLAYERstructs
	.p2align 4,,10
	.p2align 3
L956:
	.cfi_restore_state
	movl	120(%esp), %edi
	.cfi_restore 7
L841:
	movl	124(%esp), %ebp
	subl	$-128, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L948:
	ret
	.p2align 4,,10
	.p2align 3
L963:
	.cfi_def_cfa_offset 132
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$13, (%esp)
	movl	%ebx, %edx
	movl	%edi, %eax
	call	__ZL25DrawCompactCTFScoreNumberiiiis.constprop.0
	movl	112(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	116(%esp), %esi
	.cfi_restore 6
	jmp	L850
	.p2align 4,,10
	.p2align 3
L962:
	.cfi_restore_state
	leal	92(%esp), %edi
	movl	%esi, 12(%esp)
	movl	$LC1, 8(%esp)
	movl	$16, 4(%esp)
	movl	%edi, (%esp)
	call	_snprintf
	movzbl	92(%esp), %eax
	testb	%al, %al
	je	L906
	movl	%ebp, 40(%esp)
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	%edi, %ebp
	.p2align 6
	.p2align 4
	.p2align 3
L848:
	movswl	_tilesiz+14736(,%eax,4), %eax
	movl	$1, %edi
	imull	$57344, %eax, %eax
	sarl	$16, %eax
	testl	%eax, %eax
	cmovle	%edi, %eax
	movl	%edx, %edi
	addl	$1, %edx
	addl	%eax, %ecx
	movzbl	0(%ebp,%edx), %eax
	testb	%al, %al
	jne	L848
	leal	12(%ecx), %eax
	leal	12(%ecx,%edi), %edi
	cmpl	$1, %edx
	movl	40(%esp), %ebp
	cmove	%eax, %edi
L847:
	movl	$14, (%esp)
	movl	%esi, %ecx
	movl	%ebx, %edx
	movl	$4, %eax
	call	__ZL25DrawCompactCTFScoreNumberiiiis.constprop.0
	jmp	L846
	.p2align 4,,10
	.p2align 3
L964:
	.cfi_restore 3
	.cfi_restore 6
	movl	_xdim, %eax
	movl	%ebx, 112(%esp)
	movl	%esi, 116(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	_ydim, %edx
	subl	$1, %eax
	js	L851
	subl	$1, %edx
	js	L851
	movl	%edx, 32(%esp)
	movl	$44000, %ecx
	movl	$11927552, %edx
	movl	%eax, 28(%esp)
	movl	$262144, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$26, 16(%esp)
	movl	$0, 12(%esp)
	movl	$22, 8(%esp)
	movl	$1803, 4(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
	movl	_xdim, %eax
	movl	_ydim, %edx
	subl	$1, %eax
	js	L851
	subl	$1, %edx
	js	L851
	movl	%edx, 32(%esp)
	movl	$30000, %ecx
	movl	$11993088, %edx
	movl	%eax, 28(%esp)
	movl	$1835008, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$26, 16(%esp)
	movl	$0, 12(%esp)
	movl	$16, 8(%esp)
	movl	$3030, 4(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
	movsbw	273(%ebp), %cx
	movl	%ecx, %eax
	cmpw	$13, %cx
	jbe	L904
	movl	$4050, %eax
	movl	$-1, %esi
	movl	$1, %edi
	movl	$0, 44(%esp)
	movw	%ax, 40(%esp)
	movl	$3473408, %ebx
	movl	$12255232, %edx
	movl	$4000, %ecx
L852:
	movl	_ydim, %eax
	movl	%eax, 52(%esp)
	movl	_xdim, %eax
	subl	$1, %eax
	movl	%eax, 48(%esp)
	js	L857
	movl	52(%esp), %eax
	subl	$1, %eax
	js	L857
	movl	%eax, 32(%esp)
	movl	48(%esp), %eax
	movl	$0, 24(%esp)
	movl	%eax, 28(%esp)
	movswl	40(%esp), %eax
	movl	$0, 20(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, %eax
	movl	$26, 16(%esp)
	movl	$0, 12(%esp)
	movl	$6, 8(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L857:
	movl	_ShowNukeEnabled, %eax
	testl	%eax, %eax
	je	L861
	movl	_xdim, %ecx
	movl	_ydim, %eax
	leal	-1(%ecx), %ebx
	subl	$1, %eax
	movl	%eax, %edx
	movl	%ebx, %ecx
	shrl	$31, %ecx
	shrl	$31, %edx
	orl	%ecx, %edx
	movl	36(%esp), %ecx
	cmpb	$0, 23114(%ecx)
	jne	L862
	testb	%dl, %dl
	jne	L861
	movl	%eax, 32(%esp)
	movl	$39000, %ecx
	movl	$9502720, %edx
	movl	$131072, %eax
	movl	%ebx, 28(%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$27, 16(%esp)
	movl	$0, 12(%esp)
	movl	$30, 8(%esp)
	movl	$1809, 4(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
	.p2align 4
	.p2align 3
L861:
	movl	_ShowHeatEnabled, %ebx
	testl	%ebx, %ebx
	je	L866
	movl	36(%esp), %eax
	movl	_ydim, %edx
	movzbl	23113(%eax), %eax
	movl	%eax, 40(%esp)
	leal	-1(%edx), %eax
	movl	_xdim, %edx
	leal	-1(%edx), %ebx
	movl	%eax, %edx
	movl	%ebx, %ecx
	shrl	$31, %edx
	shrl	$31, %ecx
	orl	%ecx, %edx
	movl	40(%esp), %ecx
	testl	%ecx, %ecx
	jne	L867
	testb	%dl, %dl
	jne	L866
	movl	%eax, 32(%esp)
	movl	$39000, %ecx
	movl	$10682368, %edx
	movl	$262144, %eax
	movl	%ebx, 28(%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$27, 16(%esp)
	movl	$0, 12(%esp)
	movl	$30, 8(%esp)
	movl	$1819, 4(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
	.p2align 4
	.p2align 3
L866:
	movswl	84(%ebp), %edx
	movl	$14, %eax
	call	__ZL19DrawSWPStatusNumberssi.constprop.0
	movl	36(%esp), %eax
	movswl	23258(%eax), %edx
	movl	$38, %eax
	call	__ZL19DrawSWPStatusNumberssi.constprop.0
	testl	%edi, %edi
	je	L967
L870:
	movl	36(%esp), %ebx
	leal	92(%esp), %ecx
	xorl	%eax, %eax
	movl	%ecx, 48(%esp)
	movl	23012(%ebx), %edx
	.p2align 4
	.p2align 3
L872:
	movl	$30, %edi
	movl	$11, %ebp
	btl	%eax, %edx
	movw	%di, 72(%esp,%eax,2)
	movw	%bp, (%ecx,%eax,2)
	jnc	L871
	cmpw	$0, 23016(%ebx,%eax,2)
	jle	L871
	movl	$16, %edi
	movl	$13, %ebp
	movw	%di, 72(%esp,%eax,2)
	movw	%bp, (%ecx,%eax,2)
L871:
	addl	$1, %eax
	cmpl	$10, %eax
	jne	L872
	cmpw	$8, %si
	ja	L873
	movl	44(%esp), %eax
	xorl	%edx, %edx
	movl	$17, %ecx
	movw	%dx, 72(%esp,%eax,2)
	movw	%cx, 92(%esp,%eax,2)
L873:
	movl	_ydim, %eax
	movl	_xdim, %edi
	subl	$1, %eax
	leal	-1(%edi), %ecx
	movl	%ecx, %edx
	movl	%eax, %ebx
	shrl	$31, %ebx
	shrl	$31, %edx
	orl	%ebx, %edx
	movl	$1, %ebx
	cmpb	$0, _gs+322
	jne	L968
L874:
	testb	%dl, %dl
	jne	L876
	movl	%eax, 32(%esp)
	movl	48(%esp), %eax
	movl	%ecx, 28(%esp)
	movswl	__ZZL18UpdateSWPWeaponHudP12PLAYERstructP4USERE7weaponX-2(%ebx,%ebx), %esi
	movl	$0, 24(%esp)
	movswl	__ZZL18UpdateSWPWeaponHudP12PLAYERstructP4USERE7weaponY-2(%ebx,%ebx), %edx
	movl	$0, 20(%esp)
	sall	$16, %esi
	movl	__ZZL18UpdateSWPWeaponHudP12PLAYERstructP4USERE11weaponScale-4(,%ebx,4), %ecx
	movl	$26, 16(%esp)
	movzbl	(%eax,%ebx,2), %eax
	sall	$16, %edx
	movl	%eax, 12(%esp)
	movsbl	72(%esp,%ebx,2), %eax
	movl	$0, (%esp)
	movl	%eax, 8(%esp)
	movswl	__ZZL18UpdateSWPWeaponHudP12PLAYERstructP4USERE10weaponTile-4(,%ebx,4), %eax
	movl	%eax, 4(%esp)
	movl	%esi, %eax
	call	_rotatesprite_.part.0.constprop.0
L876:
	cmpl	44(%esp), %ebx
	movl	$0, %eax
	movl	$18, %ebp
	movzwl	__ZZL18UpdateSWPWeaponHudP12PLAYERstructP4USERE11ammoNumberX-2(%ebx,%ebx), %edi
	cmove	%eax, %ebp
	movl	36(%esp), %eax
	movswl	23016(%eax,%ebx,2), %eax
	movl	$LC1, 8(%esp)
	movl	$16, 4(%esp)
	movl	%eax, 12(%esp)
	leal	56(%esp), %eax
	movl	%eax, (%esp)
	call	_snprintf
	movzbl	56(%esp), %eax
	testb	%al, %al
	je	L880
	movl	%ebx, 40(%esp)
	leal	56(%esp), %esi
	movzbl	%al, %ebx
	.p2align 4
	.p2align 3
L882:
	movl	_xdim, %edx
	movl	_ydim, %eax
	addw	$3565, %bx
	subl	$1, %edx
	js	L881
	subl	$1, %eax
	js	L881
	movl	%edx, 28(%esp)
	movswl	%bx, %edx
	movl	$32768, %ecx
	movl	%eax, 32(%esp)
	movl	%edi, %eax
	movl	%edx, 4(%esp)
	sall	$16, %eax
	movl	$12779520, %edx
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$26, 16(%esp)
	movl	$0, 12(%esp)
	movl	%ebp, 8(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L881:
	movzwl	%bx, %ebx
	addl	$1, %esi
	movzwl	_tilesiz(,%ebx,4), %eax
	movzbl	(%esi), %ebx
	leal	-1(%edi,%eax), %edi
	testb	%bl, %bl
	jne	L882
	movl	40(%esp), %ebx
L880:
	addl	$1, %ebx
	cmpl	$10, %ebx
	je	L883
	movl	_ydim, %eax
	movl	_xdim, %edi
	subl	$1, %eax
	leal	-1(%edi), %ecx
	movl	%ecx, %edx
	movl	%eax, %esi
	shrl	$31, %edx
	shrl	$31, %esi
	orl	%esi, %edx
	jmp	L874
L966:
	.cfi_restore 3
	.cfi_restore 6
	movl	_xdim, %edx
	movl	_ydim, %ecx
	subl	$1, %edx
	js	L898
	subl	$1, %ecx
	js	L898
	movl	%ecx, 32(%esp)
	movl	$2097152, %eax
	movl	$65536, %ecx
	movl	%edx, 28(%esp)
	movl	$11403264, %edx
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$282, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$2437, 4(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
	movsbl	273(%ebp), %eax
L898:
	movl	36(%esp), %edi
	movl	$179, %edx
	movswl	23016(%edi,%eax,2), %ecx
	movl	$35, %eax
	call	__Z20DisplayMiniBarNumberssi
	jmp	L897
L851:
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movsbw	273(%ebp), %cx
	movl	%ecx, %eax
	cmpw	$13, %cx
	ja	L969
L904:
	cmpb	$1, %al
	je	L970
	cmpb	$4, %al
	je	L971
	movsbl	%al, %edi
	movl	%edi, 44(%esp)
	cmpb	$8, %al
	jne	L911
	movl	36(%esp), %eax
	movzbl	23115(%eax), %eax
	testb	%al, %al
	je	L912
	leal	16(%eax), %ebx
	cmpl	$19, %ebx
	jle	L856
	movl	$8, 44(%esp)
	xorl	%edi, %edi
	movl	$7, %esi
	jmp	L857
	.p2align 4,,10
	.p2align 3
L968:
	testb	%dl, %dl
	jne	L877
	movl	%eax, 32(%esp)
	movzbl	94(%esp), %eax
	movl	$12058624, %edx
	movl	%ecx, 28(%esp)
	movl	$8000, %ecx
	movl	%eax, 12(%esp)
	movsbl	74(%esp), %eax
	movl	$0, 24(%esp)
	movl	%eax, 8(%esp)
	movl	$6619136, %eax
	movl	$0, 20(%esp)
	movl	$26, 16(%esp)
	movl	$2519, 4(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L877:
	movl	$1, %ebx
	jmp	L876
	.p2align 4,,10
	.p2align 3
L883:
	movl	36(%esp), %edi
	movzwl	23120(%edi), %eax
	cmpw	$6, %ax
	ja	L954
	movswl	%ax, %ebx
	cmpb	$0, 23216(%edi,%ebx)
	jle	L954
	imull	$28, %ebx, %eax
	movl	_InventoryData+12(%eax), %eax
	testl	%eax, %eax
	je	L887
	movswl	(%eax), %eax
	cmpl	$30719, %eax
	ja	L887
	movl	_xdim, %edx
	movl	_ydim, %ecx
	subl	$1, %edx
	js	L887
	subl	$1, %ecx
	js	L887
	movl	%ecx, 32(%esp)
	movl	$44000, %ecx
	movl	%edx, 28(%esp)
	movl	$12058624, %edx
	movl	%eax, 4(%esp)
	movl	$5046272, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$26, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
	movl	36(%esp), %eax
	movswl	23120(%eax), %edx
L886:
	imull	$28, %ebx, %eax
	testb	$4, _InventoryData+24(%eax)
	movl	36(%esp), %eax
	je	L888
	movsbl	23216(%eax,%edx), %eax
	movl	$LC1, 8(%esp)
	movl	$16, 4(%esp)
	movl	%eax, 12(%esp)
	leal	56(%esp), %eax
	movl	%eax, (%esp)
	call	_snprintf
L889:
	movzbl	56(%esp), %eax
	testb	%al, %al
	je	L954
	leal	56(%esp), %ecx
	xorl	%edx, %edx
	.p2align 4
	.p2align 4
	.p2align 3
L891:
	addl	$1, %ecx
	movl	%edx, %ebx
	addl	$2, %edx
	cmpb	$0, (%ecx)
	jne	L891
	movl	%ebx, %edx
	leal	56(%esp), %esi
	shrl	$31, %edx
	addl	%ebx, %edx
	sarl	%edx
	negl	%edx
	leal	81(%edx), %ebx
	sall	$16, %ebx
	.p2align 4
	.p2align 3
L893:
	leal	-33(%eax), %edx
	cmpb	$92, %dl
	ja	L892
	movl	_xdim, %edx
	movl	_ydim, %ecx
	subl	$1, %edx
	js	L892
	subl	$1, %ecx
	js	L892
	addl	$2897, %eax
	movl	%ecx, 32(%esp)
	movl	$32768, %ecx
	movl	%edx, 28(%esp)
	movl	$12779520, %edx
	movl	%eax, 4(%esp)
	movl	%ebx, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$26, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L892:
	movzbl	1(%esi), %eax
	addl	$1, %esi
	addl	$131072, %ebx
	testb	%al, %al
	jne	L893
L954:
	movl	112(%esp), %ebx
	.cfi_restore 3
	movl	116(%esp), %esi
	.cfi_restore 6
	movl	120(%esp), %edi
	.cfi_restore 7
	jmp	L841
L965:
	.cfi_offset 7, -12
	movl	_xdim, %eax
	movl	_ydim, %edx
	subl	$1, %eax
	js	L895
	subl	$1, %edx
	js	L895
	movl	%edx, 32(%esp)
	movl	$65536, %ecx
	movl	$9830400, %edx
	movl	%eax, 28(%esp)
	movl	$262144, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$282, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$2437, 4(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L895:
	movl	36(%esp), %eax
	movl	$155, %edx
	movswl	23258(%eax), %ecx
	movl	$7, %eax
	call	__Z20DisplayMiniBarNumberssi
	jmp	L894
L911:
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	44(%esp), %ebx
L856:
	movl	$8193, %edx
	movl	__ZZL18UpdateSWPWeaponHudP12PLAYERstructP4USERE8ammoTile(,%ebx,4), %eax
	leal	-1(%ecx), %esi
	shrl	%cl, %edx
	movl	%edx, %edi
	andl	$1, %edi
	testl	%eax, %eax
	je	L857
	movw	%ax, 40(%esp)
	movl	__ZZL18UpdateSWPWeaponHudP12PLAYERstructP4USERE5ammoY(,%ebx,4), %eax
	movl	__ZZL18UpdateSWPWeaponHudP12PLAYERstructP4USERE9ammoScale(,%ebx,4), %ecx
	movl	__ZZL18UpdateSWPWeaponHudP12PLAYERstructP4USERE5ammoX(,%ebx,4), %ebx
	leal	3(%eax), %edx
	sall	$16, %edx
	sall	$16, %ebx
	jmp	L852
	.p2align 4,,10
	.p2align 3
L967:
	movl	36(%esp), %eax
	movl	44(%esp), %edi
	movswl	23016(%eax,%edi,2), %edx
	movl	$62, %eax
	call	__ZL19DrawSWPStatusNumberssi.constprop.0
	jmp	L870
L971:
	movl	36(%esp), %eax
	movzbl	23112(%eax), %eax
	cmpb	$1, %al
	je	L972
	movl	$4, 44(%esp)
	movl	$3, %esi
	xorl	%edi, %edi
	cmpb	$2, %al
	je	L910
	movl	$3538944, %ebx
L961:
	movl	$1800, %eax
	movl	$11927552, %edx
	movl	$32000, %ecx
	movw	%ax, 40(%esp)
	jmp	L852
L862:
	testb	%dl, %dl
	jne	L861
	movl	%eax, 32(%esp)
	movl	$39000, %ecx
	movl	$9502720, %edx
	movl	$131072, %eax
	movl	%ebx, 28(%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$27, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$1809, 4(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
	movl	_ydim, %eax
	leal	-1(%eax), %ebx
	movl	_xdim, %eax
	movl	%ebx, %ecx
	leal	-1(%eax), %edx
	shrl	$31, %ecx
	movl	%edx, %eax
	shrl	$31, %eax
	orl	%eax, %ecx
	movl	36(%esp), %eax
	cmpb	$2, 23112(%eax)
	je	L903
	movl	$4638, %eax
L865:
	testb	%cl, %cl
	jne	L861
	cwtl
	movl	%edx, 28(%esp)
	movl	$39000, %ecx
	movl	$9961472, %edx
	movl	%eax, 4(%esp)
	movl	$851968, %eax
	movl	%ebx, 32(%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$26, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
	jmp	L861
L867:
	testb	%dl, %dl
	jne	L866
	movl	%eax, 32(%esp)
	movl	$39000, %ecx
	movl	$10682368, %edx
	movl	$262144, %eax
	movl	%ebx, 28(%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$27, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$1819, 4(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
	movl	40(%esp), %ecx
	movl	$5, %eax
	movl	_ydim, %edx
	cmpl	%eax, %ecx
	cmovle	%ecx, %eax
	movl	_xdim, %ecx
	addl	$4623, %eax
	subl	$1, %ecx
	js	L866
	subl	$1, %edx
	js	L866
	movl	%edx, 32(%esp)
	movl	$11010048, %edx
	movl	%ecx, 28(%esp)
	movl	$39000, %ecx
	movl	%eax, 4(%esp)
	movl	$786432, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$26, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
	jmp	L866
L887:
	movl	%ebx, %edx
	jmp	L886
L959:
	.cfi_restore 6
	movl	112(%esp), %ebx
	.cfi_restore 3
	jmp	L899
L970:
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	xorl	%esi, %esi
	xorl	%edi, %edi
	cmpb	$0, _gs+322
	movl	$1, 44(%esp)
	je	L908
	movl	$2519, %eax
	movl	$3801088, %ebx
	movl	$11862016, %edx
	movl	$16000, %ecx
	movw	%ax, 40(%esp)
	jmp	L852
L888:
	movswl	23202(%eax,%edx,2), %eax
	movl	$LC14, 8(%esp)
	movl	$16, 4(%esp)
	movl	%eax, 12(%esp)
	leal	56(%esp), %eax
	movl	%eax, (%esp)
	call	_snprintf
	jmp	L889
L906:
	movl	$12, %edi
	jmp	L847
L972:
	movl	36(%esp), %eax
	xorl	%edi, %edi
	movl	$3, %esi
	movl	$3538944, %ebx
	movl	$4, 44(%esp)
	cmpb	$0, 23113(%eax)
	je	L961
	movl	$1819, %eax
	movl	$12058624, %edx
	movl	$32000, %ecx
	movw	%ax, 40(%esp)
	jmp	L852
L912:
	movl	$2055, %eax
	movl	$7, %esi
	xorl	%edi, %edi
	movl	$3604480, %ebx
	movw	%ax, 40(%esp)
	movl	$11862016, %edx
	movl	$6500, %ecx
	movl	$8, 44(%esp)
	jmp	L852
L910:
	movl	$1809, %eax
	movl	$3407872, %ebx
	movl	$12058624, %edx
	movl	$28000, %ecx
	movw	%ax, 40(%esp)
	jmp	L852
L908:
	movl	$1793, %eax
	movl	$3538944, %ebx
	movl	$11993088, %edx
	movl	$32000, %ecx
	movw	%ax, 40(%esp)
	jmp	L852
L969:
	movl	$0, 44(%esp)
	movl	$1, %edi
	movl	$-1, %esi
	jmp	L857
L903:
	movl	36(%esp), %eax
	cmpb	$1, 24106(%eax)
	sbbl	%eax, %eax
	andl	$30, %eax
	addw	$4608, %ax
	jmp	L865
	.cfi_endproc
LFE112:
	.p2align 4
	.globl	__Z12minigametextiiPKcs.isra.0
	.def	__Z12minigametextiiPKcs.isra.0;	.scl	2;	.type	32;	.endef
__Z12minigametextiiPKcs.isra.0:
LFB123:
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
	subl	$40, %esp
	.cfi_def_cfa_offset 60
	movzbl	(%ecx), %ebx
	cmpl	$160, %eax
	je	L992
	movl	%eax, %edi
	leal	1(%ecx), %esi
	testb	%bl, %bl
	je	L973
L979:
	movswl	60(%esp), %eax
	sall	$16, %ebp
	movl	%eax, 36(%esp)
	jmp	L984
	.p2align 4,,10
	.p2align 3
L981:
	leal	-33(%ebx), %eax
	cmpw	$93, %ax
	ja	L973
	movl	_xdim, %edx
	movl	_ydim, %eax
	addw	$2897, %bx
	subl	$1, %edx
	js	L983
	subl	$1, %eax
	js	L983
	movl	36(%esp), %ecx
	movl	%edx, 28(%esp)
	movswl	%bx, %edx
	movl	%eax, 32(%esp)
	movl	%edi, %eax
	movl	%ecx, 16(%esp)
	sall	$16, %eax
	movl	$65536, %ecx
	movl	%edx, 4(%esp)
	movl	%ebp, %edx
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$17, 12(%esp)
	movl	$-128, 8(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L983:
	movzwl	%bx, %ebx
	addl	$1, %esi
	movswl	_tilesiz(,%ebx,4), %eax
	movzbl	-1(%esi), %ebx
	addl	%eax, %edi
	testb	%bl, %bl
	je	L973
L984:
	cmpb	$32, %bl
	jne	L981
	movzbl	(%esi), %ebx
	addl	$4, %edi
	addl	$1, %esi
	testb	%bl, %bl
	jne	L984
L973:
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
L992:
	.cfi_restore_state
	testb	%bl, %bl
	je	L973
	leal	1(%ecx), %esi
	movzbl	%bl, %eax
	xorl	%ecx, %ecx
	movl	%esi, %edx
	jmp	L980
	.p2align 4,,10
	.p2align 3
L976:
	leal	-33(%eax), %edi
	cmpw	$93, %di
	ja	L993
	addw	$2897, %ax
	addl	$1, %edx
	movzwl	%ax, %eax
	addw	_tilesiz(,%eax,4), %cx
	movzbl	-1(%edx), %eax
	testb	%al, %al
	je	L994
L980:
	cmpb	$32, %al
	jne	L976
	movzbl	(%edx), %eax
	addl	$4, %ecx
	addl	$1, %edx
	testb	%al, %al
	jne	L980
L994:
	sarw	%cx
	movl	$160, %edi
	movswl	%cx, %ecx
	subl	%ecx, %edi
	jmp	L979
	.p2align 4,,10
	.p2align 3
L993:
	sarw	%cx
	movl	$160, %edi
	movswl	%cx, %eax
	subl	%eax, %edi
	jmp	L979
	.cfi_endproc
LFE123:
	.p2align 4
	.globl	__Z12adduserquotePKc
	.def	__Z12adduserquotePKc;	.scl	2;	.type	32;	.endef
__Z12adduserquotePKc:
LFB124:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%eax, %ebp
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	$_user_quote, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$_user_quote_time, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	$_user_quote+1280, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movswl	_screenpeek, %eax
	imull	$24124, %eax, %eax
	addl	$_Player, %eax
	call	__Z15SetRedrawScreenP12PLAYERstruct
L996:
	movl	%ebx, %eax
	subl	$256, %ebx
	subl	$2, %esi
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movzwl	10(%esi), %eax
	movw	%ax, 12(%esi)
	cmpl	%ebx, %edi
	jne	L996
	movl	%ebp, 4(%esp)
	movl	$_user_quote, (%esp)
	call	_strcpy
	movl	$180, %eax
	movw	%ax, _user_quote_time
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
LFE124:
	.section .rdata,"dr"
LC15:
	.ascii "unpause\0"
LC16:
	.ascii "pause\0"
LC17:
	.ascii "%s\12\0"
LC18:
	.ascii "Messages ON\0"
LC19:
	.ascii "Messages OFF\0"
	.text
	.p2align 4
	.globl	__Z7ControliPKPKc.part.0
	.def	__Z7ControliPKPKc.part.0;	.scl	2;	.type	32;	.endef
__Z7ControliPKPKc.part.0:
LFB125:
	.cfi_startproc
	subl	$92, %esp
	.cfi_def_cfa_offset 96
	call	__Z13MNU_InitMenusv
	cmpb	$0, _DemoPlaying
	jne	L1000
	cmpb	$0, _CommEnabled
	jne	L1001
	cmpb	$0, _UserMapName
	jne	L1000
L1001:
	movl	$1835362420, _LevelSong
	movl	$1, %eax
	movw	%ax, _Level
	movl	$100, %eax
	movl	$1768762981, _LevelSong+4
	movw	%ax, _LevelSong+8
	cmpb	$0, _gs+27
	je	L1002
	cmpb	$0, _DemoMode
	jne	L1002
	movl	$1, %ecx
	movl	$2, %edx
	movl	$_LevelSong, %eax
	movl	$1, (%esp)
	call	__Z8PlaySongPcihh.part.0
L1002:
	cmpb	$0, _AutoNet
	je	L1207
L1003:
	call	__Z9MenuLevelv
L1000:
	cmpb	$0, _QuitFlag
	jne	L1004
	movl	%ebx, 76(%esp)
	movl	%esi, 80(%esp)
	movl	%edi, 84(%esp)
	movl	%ebp, 88(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
L1108:
	call	_handleevents.isra.0
	movl	_osd, %eax
	movl	1100(%eax), %ebx
	testl	%ebx, %ebx
	je	L1005
	movl	$0, 1100(%eax)
	subl	$1, %ebx
	jns	L1006
	jmp	L1005
	.p2align 4,,10
	.p2align 3
L1208:
	movl	_osd, %eax
L1006:
	movl	60(%eax,%ebx,4), %eax
	xorl	%edx, %edx
	call	__Z12OSD_DispatchPKcb
	subl	$1, %ebx
	jnb	L1208
L1005:
	cmpb	$0, _quitevent
	je	L1007
	movb	$1, _QuitFlag
L1007:
	cmpb	$0, _DemoPlaying
	movl	$0, _MV_GlobalVolume
	je	L1008
	call	__Z9InitLevelv
	call	__Z12InitRunLevelv
	movb	$0, _DemoInitOnce
	cmpb	$0, _DemoMode
	jne	L1009
	testb	$1, _SW_GameFlags
	jne	L1209
L1010:
	call	__Z11InitNetVarsv
	movb	$2, _MoveSkip8
	imull	$24124, _myconnectindex, %eax
	movl	$0, _PlayClock
	movl	$0, _totalsynctics
	addl	$_Player, %eax
	movl	$0, _totalclock
	movl	$0, _totalclock+8
	movl	$0, _totalclock+12
	movl	$0, _ototalclock
	movl	$17, _randomseed
	movb	$0, _MoveSkip2
	movb	$1, _MoveSkip4
	movl	$0, _MoveThingsCount
	call	__Z15SetRedrawScreenP12PLAYERstruct
	cmpb	$0, _DemoInitOnce
	jne	L1012
	movl	$0, __ZZ12DemoPlayBackvE7buf_ndx
L1012:
	movzbl	_NoHide, %eax
	movb	$1, _DemoInitOnce
	movl	$0, _DemoRunningTics
	movl	$0, __ZL16DemoPlayChatNext.lto_priv.0
	movb	$0, _ready2send
	movb	$0, _DemoDone
	testb	%al, %al
	jne	L1210
L1013:
	xorl	%edi, %edi
L1069:
	testb	%al, %al
	jne	L1014
	.p2align 4
	.p2align 3
L1015:
	cmpb	$0, _keystatus+205
	jne	L1024
	cmpb	$0, _keystatus+200
	jne	L1025
	cmpb	$0, _isPaused
	jne	L1211
	cmpb	$0, _keystatus+208
	je	L1036
	movb	$0, _keystatus+208
	movb	$1, _isPaused
L1109:
	xorl	%eax, %eax
	call	__Z9timerIniti.isra.0
	cmpb	$0, _NoHide
	jne	L1212
L1030:
	cmpb	$0, _keystatus+205
	jne	L1024
	cmpb	$0, _keystatus+200
	jne	L1025
L1036:
	cmpl	$120, __ZL19clockTicksPerSecond.lto_priv.0
	je	L1039
	movl	$120, %eax
	call	__Z9timerIniti.isra.0
	.p2align 4
	.p2align 3
L1039:
	call	__Z16timerUpdateClockv
	movl	_totalclock, %eax
	cmpl	%eax, _totalsynctics
	jge	L1041
	.p2align 4
	.p2align 3
L1052:
	call	_handleevents.isra.0
	movl	_osd, %eax
	movl	1100(%eax), %ebx
	testl	%ebx, %ebx
	je	L1042
	movl	$0, 1100(%eax)
	subl	$1, %ebx
	jns	L1043
	jmp	L1042
	.p2align 4,,10
	.p2align 3
L1213:
	movl	_osd, %eax
L1043:
	movl	60(%eax,%ebx,4), %eax
	xorl	%edx, %edx
	call	__Z12OSD_DispatchPKcb
	subl	$1, %ebx
	jnb	L1213
L1042:
	movl	_connecthead, %esi
	cmpl	$-1, %esi
	je	L1044
	movw	%di, 38(%esp)
	jmp	L1047
	.p2align 4,,10
	.p2align 3
L1046:
	movl	_connectpoint2(,%esi,4), %esi
	cmpl	$-1, %esi
	je	L1214
L1047:
	imull	$24124, %esi, %edi
	movl	__ZZ12DemoPlayBackvE7buf_ndx, %edx
	leal	(%edx,%edx,2), %ebp
	addl	$1, %edx
	movl	_Player+6564(%edi), %ebx
	leal	_DemoBuffer(,%ebp,8), %ecx
	movl	_DemoBuffer(,%ebp,8), %ebp
	movl	%edx, __ZZ12DemoPlayBackvE7buf_ndx
	movzbl	%bl, %eax
	addl	$1, %ebx
	leal	(%eax,%eax,2), %eax
	movl	%ebp, _Player+420(%edi,%eax,8)
	movl	4(%ecx), %ebp
	movl	%ebp, _Player+424(%edi,%eax,8)
	movl	8(%ecx), %ebp
	movl	%ebp, _Player+428(%edi,%eax,8)
	movl	12(%ecx), %ebp
	movl	%ebp, _Player+432(%edi,%eax,8)
	movl	16(%ecx), %ebp
	movl	%ebp, _Player+436(%edi,%eax,8)
	movl	20(%ecx), %ecx
	movl	%ecx, _Player+440(%edi,%eax,8)
	movl	%ebx, _Player+6564(%edi)
	cmpl	$-1, _Player+440(%edi,%eax,8)
	je	L1215
	cmpl	$2047, %edx
	jle	L1046
	movl	$49152, 8(%esp)
	movl	$-1, 4(%esp)
	movl	$_DemoBuffer, (%esp)
	call	_memset
	movl	_DemoFileIn, %eax
	call	__ZL15DemoReadPacketsP9SW_PACKETii.constprop.0
	movl	_connectpoint2(,%esi,4), %esi
	movl	$0, __ZZ12DemoPlayBackvE7buf_ndx
	cmpl	$-1, %esi
	jne	L1047
L1214:
	movzwl	38(%esp), %edi
L1044:
	cmpb	$0, _DemoDone
	jne	L1041
	movl	__ZL12DemoPlayChat.lto_priv.0, %ecx
	movl	__ZL16DemoPlayChatNext.lto_priv.0, %eax
	jmp	L1206
	.p2align 4,,10
	.p2align 3
L1048:
	imull	$28, %eax, %eax
	movl	_DemoRunningTics, %edx
	addl	%eax, %ecx
	cmpl	(%ecx), %edx
	jb	L1050
	movl	4(%ecx), %eax
	movl	$LC17, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	imull	$28, __ZL16DemoPlayChatNext.lto_priv.0, %eax
	addl	__ZL12DemoPlayChat.lto_priv.0, %eax
	movl	4(%eax), %eax
	call	__Z12adduserquotePKc
	movl	__ZL16DemoPlayChatNext.lto_priv.0, %eax
	movl	__ZL12DemoPlayChat.lto_priv.0, %ecx
	addl	$1, %eax
	movl	%eax, __ZL16DemoPlayChatNext.lto_priv.0
L1206:
	movl	__ZL12DemoPlayChat.lto_priv.0+4, %edx
	subl	%ecx, %edx
	sarl	$2, %edx
	imull	$-1227133513, %edx, %edx
	cmpl	%edx, %eax
	jb	L1048
	movl	_DemoRunningTics, %edx
L1050:
	addl	$1, %edx
	leal	44(%esp), %eax
	movl	%edx, _DemoRunningTics
	call	__ZL18controlPollDevicesP11ControlInfo.lto_priv.0
	call	__ZL26controlUpdateGameFunctionsv.lto_priv.0
	movl	$1, _inputchecked
	call	__Z12domovethingsv
	call	__Z17MNU_CheckForMenusv
	movl	_totalclock, %eax
	cmpl	%eax, _totalsynctics
	jl	L1052
	.p2align 4
	.p2align 3
L1041:
	cmpb	$0, _keystatus+66
	je	L1053
	cmpb	$0, _isPaused
	jne	L1053
	movzbl	_gs+25, %edx
	movb	$0, _keystatus+66
	movl	%edx, %eax
	xorl	$1, %eax
	movb	%al, _gs+25
	movswl	_screenpeek, %eax
	imull	$24124, %eax, %eax
	addl	$_Player, %eax
	cmpb	$1, %dl
	je	L1054
	movl	$LC18, %edx
	call	__Z17PutStringInfoLineP12PLAYERstructPKc
L1055:
	movswl	_screenpeek, %eax
	movsbl	_gs+12, %edx
	imull	$24124, %eax, %eax
	addl	$_Player, %eax
	call	__Z9SetBorderP12PLAYERstructi
L1053:
	cmpb	$0, _keystatus+68
	je	L1056
	movb	$0, _keystatus+68
	movb	$1, _keystatus+1
	movl	$6, _ControlPanelType
L1056:
	cmpb	$0, _keystatus+28
	je	L1057
	movzbl	_keystatus+56, %eax
	orb	_keystatus+184, %al
	je	L1057
	movl	_upscalefactor, %edx
	movl	_ud_setup+8, %ecx
	xorl	%eax, %eax
	movb	$0, _keystatus+28
	movb	$0, _keystatus+56
	movl	%edx, 4(%esp)
	movl	_ud_setup+20, %edx
	testl	%ecx, %ecx
	movl	_ud_setup+16, %ecx
	sete	%al
	movb	$0, _keystatus+184
	movl	%edx, (%esp)
	movl	_ud_setup+12, %edx
	movl	%eax, _ud_setup+8
	call	_videoSetGameMode
	movswl	_screenpeek, %eax
	movl	$1, %edx
	imull	$24124, %eax, %eax
	addl	$_Player, %eax
	call	__Z9SetBorderP12PLAYERstructi
L1057:
	movl	_CONTROL_ButtonState+4, %edx
	xorl	%ecx, %ecx
	movl	_CONTROL_ButtonState, %eax
	movl	%edx, %ebx
	andl	$4096, %ebx
	orl	%ebx, %ecx
	je	L1059
	cmpb	$0, _NoHide
	je	L1216
L1059:
	movl	%edx, %ebx
	xorl	%ecx, %ecx
	andl	$16384, %ebx
	orl	%ebx, %ecx
	jne	L1217
	cmpb	$0, _DemoDone
	jne	L1064
L1220:
	cmpb	$0, _QuitFlag
	jne	L1203
	cmpb	$0, _ExitLevel
	jne	L1218
	movswl	_screenpeek, %eax
	imull	$24124, %eax, %eax
	addl	$_Player, %eax
	call	__Z10drawscreenP12PLAYERstruct
	movzwl	_screenpeek, %ebx
	cmpw	%di, %bx
	jne	L1068
	movzbl	_NoHide, %eax
	testb	%al, %al
	je	L1015
	.p2align 4
	.p2align 3
L1014:
	leal	40(%esp), %eax
	call	__Z12netgetpacketPiPh.constprop.0
	testl	%eax, %eax
	jle	L1015
	cmpb	$4, __ZL7packbuf.lto_priv.0
	jne	L1015
	leal	-1(%eax), %ebx
	movl	$__ZL7packbuf.lto_priv.0+1, 4(%esp)
	movl	%ebx, 8(%esp)
	movl	$_ds, (%esp)
	call	_memcpy
	movb	$0, _ds(%ebx)
	cmpl	$1937072496, _ds
	je	L1219
L1020:
	cmpl	$1634758261, _ds
	jne	L1014
	cmpl	$6648693, _ds+4
	jne	L1014
	movl	$120, %eax
	movb	$0, _isPaused
	call	__Z9timerIniti.isra.0
	jmp	L1014
L1210:
	xorl	%eax, %eax
	movb	$1, _isPaused
	call	__Z9timerIniti.isra.0
	movzbl	_NoHide, %eax
	jmp	L1013
	.p2align 4,,10
	.p2align 3
L1215:
	movb	$1, _DemoDone
	movzwl	38(%esp), %edi
	jmp	L1041
	.p2align 4,,10
	.p2align 3
L1219:
	cmpw	$101, _ds+4
	jne	L1020
	xorl	%eax, %eax
	movb	$1, _isPaused
	call	__Z9timerIniti.isra.0
	jmp	L1014
L1024:
	cmpb	$0, _keystatus+54
	je	L1037
	movl	__ZL19clockTicksPerSecond.lto_priv.0, %eax
	cmpb	$0, _keystatus+201
	je	L1038
	cmpl	$9600, %eax
	je	L1039
	movl	$9600, %eax
	call	__Z9timerIniti.isra.0
	jmp	L1039
L1037:
	cmpb	$0, _keystatus+42
	jne	L1040
	cmpl	$480, __ZL19clockTicksPerSecond.lto_priv.0
	je	L1039
	movl	$480, %eax
	call	__Z9timerIniti.isra.0
	jmp	L1039
L1217:
	andb	$-65, %dh
	cmpb	$0, _gs+22
	movl	%eax, _CONTROL_ButtonState
	movl	%edx, _CONTROL_ButtonState+4
	movl	$1, __ZL13CONTROL_Flags.lto_priv.0+372
	sete	_gs+22
	cmpb	$0, _DemoDone
	je	L1220
L1064:
	movzbl	_DemoMode, %eax
	orb	_NewGame, %al
	jne	L1071
	call	__Z14TerminateLevelv
	call	__Z13TerminateGamev
	movl	$0, (%esp)
	call	_exit
	.p2align 4,,10
	.p2align 3
L1040:
	cmpb	$0, _keystatus+200
	je	L1039
L1025:
	cmpl	$60, __ZL19clockTicksPerSecond.lto_priv.0
	je	L1039
	movl	$60, %eax
	call	__Z9timerIniti.isra.0
	jmp	L1039
L1216:
	movzwl	_screenpeek, %esi
	andb	$-17, %dh
	movl	%eax, _CONTROL_ButtonState
	movl	%edx, _CONTROL_ButtonState+4
	movl	$1, __ZL13CONTROL_Flags.lto_priv.0+356
	leal	1(%esi), %ecx
	movswl	%cx, %ebx
	cmpl	_numplayers, %ebx
	movl	$0, %ebx
	cmovge	%ebx, %ecx
	movw	%cx, _screenpeek
	jmp	L1059
L1038:
	cmpl	$960, %eax
	je	L1039
	movl	$960, %eax
	call	__Z9timerIniti.isra.0
	jmp	L1039
L1211:
	movl	__ZL19clockTicksPerSecond.lto_priv.0, %ebp
	testl	%ebp, %ebp
	jne	L1221
L1027:
	call	_handleevents.isra.0
	movl	_osd, %eax
	movl	1100(%eax), %ebx
	testl	%ebx, %ebx
	je	L1028
	movl	$0, 1100(%eax)
	subl	$1, %ebx
	jns	L1029
	jmp	L1028
	.p2align 4,,10
	.p2align 3
L1222:
	movl	_osd, %eax
L1029:
	movl	60(%eax,%ebx,4), %eax
	xorl	%edx, %edx
	call	__Z12OSD_DispatchPKcb
	subl	$1, %ebx
	jnb	L1222
L1028:
	leal	44(%esp), %eax
	call	__ZL18controlPollDevicesP11ControlInfo.lto_priv.0
	call	__ZL26controlUpdateGameFunctionsv.lto_priv.0
	movl	$1, _inputchecked
	call	__Z17MNU_CheckForMenusv
	cmpb	$0, _keystatus+208
	je	L1030
	xorb	$1, _isPaused
	movb	$0, _keystatus+208
	jne	L1109
	movl	$120, %eax
	call	__Z9timerIniti.isra.0
	cmpb	$0, _NoHide
	je	L1030
	movl	_connecthead, %ebx
	cmpl	$-1, %ebx
	je	L1030
L1035:
	cmpb	$0, _CommEnabled
	je	L1034
	movswl	%bx, %eax
	movl	$9, %ecx
	movl	$__ZL7tempbuf.lto_priv.0, %edx
	movb	$4, __ZL7tempbuf.lto_priv.0
	movl	$1634758261, __ZL7tempbuf.lto_priv.0+1
	movl	$6648693, __ZL7tempbuf.lto_priv.0+5
	call	__Z13netsendpacketiPhi
L1034:
	movl	_connectpoint2(,%ebx,4), %ebx
	cmpl	$-1, %ebx
	jne	L1035
	jmp	L1030
L1054:
	movl	$LC19, %edx
	call	__Z17PutStringInfoLineP12PLAYERstructPKc
	jmp	L1055
L1008:
	call	__Z9InitLevelv
	call	__Z8RunLevelv
	cmpb	$0, _QuitFlag
	je	L1223
L1072:
	movl	_myconnectindex, %ebx
	imull	$24124, %ebx, %esi
	addl	$_Player, %esi
	cmpl	$2, _rendmode
	jg	L1073
	movzbl	_gs+13, %edi
	movl	$_palette_data, %edx
	xorl	%eax, %eax
	call	_paletteSetColorTable
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edi, %eax
	movzbl	%al, %eax
	call	_videoSetPalette
L1074:
	leal	23304(%esi), %eax
	movl	$768, 8(%esp)
	imull	$24124, %ebx, %ebx
	movl	$_palette_data, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	xorl	%eax, %eax
	movb	$0, _Player+23303(%ebx)
	movl	$0, _Player+23298(%ebx)
	call	__Z15COVER_SetReverbi
	call	_MV_KillAllVoices.constprop.0
	testl	%eax, %eax
	jne	L1224
L1075:
	cmpb	$0, _DemoMode
	jne	L1076
	call	__Z8StopSongv.part.0
L1076:
	cmpb	$0, _FinishAnim
	jne	L1225
	cmpw	$1, _gNet+12
	je	L1101
	call	__Z8DemoTermv
	cmpb	$0, _FinishedLevel
	jne	L1226
L1071:
	cmpb	$0, _LoadGameFromDemo
	je	L1102
	movb	$0, _LoadGameFromDemo
L1103:
	movzbl	_FinishAnim, %eax
	testb	$1, _SW_GameFlags
	je	L1104
	testb	%al, %al
	jne	L1205
L1105:
	cmpb	$0, _QuitFlag
	je	L1108
	movl	76(%esp), %ebx
	.cfi_restore 3
	movl	80(%esp), %esi
	.cfi_restore 6
	movl	84(%esp), %edi
	.cfi_restore 7
	movl	88(%esp), %ebp
	.cfi_restore 5
L1004:
	movb	$1, _CleanExit
	addl	$92, %esp
	.cfi_def_cfa_offset 4
	jmp	__Z13TerminateGamev
L1104:
	.cfi_def_cfa_offset 96
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	andl	$-3, %eax
	cmpb	$1, %al
	jne	L1105
L1205:
	movl	$1835362420, _LevelSong
	movl	$100, %eax
	movl	$1768762981, _LevelSong+4
	movw	%ax, _LevelSong+8
	cmpb	$0, _gs+27
	je	L1106
	cmpb	$0, _DemoMode
	jne	L1106
	movl	$1, %ecx
	movl	$2, %edx
	movl	$_LevelSong, %eax
	movl	$1, (%esp)
	call	__Z8PlaySongPcihh.part.0
L1106:
	call	__Z9MenuLevelv
	jmp	L1105
L1102:
	call	__Z14TerminateLevelv
	jmp	L1103
L1073:
	call	_videoFadePalette.constprop.0
	jmp	L1074
L1009:
	cmpb	$0, _DemoModeMenuInit
	je	L1010
	movb	$0, _DemoModeMenuInit
	movb	$1, _keystatus+1
	jmp	L1010
L1218:
	movb	$0, _ExitLevel
	cmpb	$0, _DemoMode
	je	L1071
	movb	$0, _DemoPlaying
L1203:
	movb	$0, _DemoMode
	jmp	L1071
L1221:
	xorl	%eax, %eax
	call	__Z9timerIniti.isra.0
	jmp	L1027
L1068:
	movswl	%bx, %eax
	movsbl	_gs+12, %edx
	movl	%ebx, %edi
	imull	$24124, %eax, %eax
	addl	$_Player, %eax
	call	__Z9SetBorderP12PLAYERstructi
	movzbl	_NoHide, %eax
	jmp	L1069
L1101:
	movl	%esi, %eax
	call	__Z10StatScreenP12PLAYERstruct.part.0
	jmp	L1071
L1223:
	movb	$0, _ready2send
	cmpb	$0, _CommEnabled
	je	L1072
	call	__Z16waitforeverybodyv.part.0
	jmp	L1072
L1226:
	call	__Z11BonusScreenv
	jmp	L1071
L1225:
	call	__Z8DemoTermv
	cmpl	$2, _rendmode
	jle	L1227
L1078:
	movzbl	_FinishAnim, %eax
	cmpb	$0, _gs+40
	jne	L1228
L1079:
	call	__Z7playanms
L1080:
	call	__Z11BonusScreenv
	movb	$0, _ExitLevel
	movb	$0, _QuitFlag
	movb	$0, _AutoNet
	cmpb	$3, _FinishAnim
	je	L1229
L1081:
	movb	$0, _ExitLevel
	movb	$0, _QuitFlag
	movb	$0, _AutoNet
	testb	$1, _SW_GameFlags
	je	L1099
L1100:
	xorl	%edx, %edx
	movw	%dx, _Level
	jmp	L1071
L1209:
	cmpb	$0, _gs+27
	je	L1010
	movl	$1, %ecx
	movl	$-1, %edx
	movl	$_LevelSong, %eax
	movl	$1, (%esp)
	call	__Z8PlaySongPcihh.part.0
	jmp	L1010
L1212:
	movl	_connecthead, %ebx
	cmpl	$-1, %ebx
	je	L1030
L1033:
	cmpb	$0, _CommEnabled
	je	L1032
	movl	$101, %esi
	movswl	%bx, %eax
	movl	$7, %ecx
	movl	$__ZL7tempbuf.lto_priv.0, %edx
	movb	$4, __ZL7tempbuf.lto_priv.0
	movl	$1937072496, __ZL7tempbuf.lto_priv.0+1
	movw	%si, __ZL7tempbuf.lto_priv.0+5
	call	__Z13netsendpacketiPhi
L1032:
	movl	_connectpoint2(,%ebx,4), %ebx
	cmpl	$-1, %ebx
	jne	L1033
	jmp	L1030
L1207:
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movl	__ZL8g_noLogo.lto_priv.0, %eax
	testl	%eax, %eax
	jne	L1003
	call	__Z9LogoLevelv.part.0
	movl	__ZL8g_noLogo.lto_priv.0, %eax
	testl	%eax, %eax
	jne	L1003
	xorl	%eax, %eax
	call	__Z7playanms
	jmp	L1003
L1228:
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpb	$2, %al
	jne	L1079
	jmp	L1080
L1227:
	call	__Z7FadeOuthj.part.0.constprop.0
	jmp	L1078
L1099:
	movzwl	_Level, %eax
	movl	%eax, %edx
	andl	$-17, %edx
	cmpw	$4, %dx
	je	L1100
	addl	$1, %eax
	movw	%ax, _Level
	jmp	L1071
L1224:
	movl	$2, _FX_ErrorCode
	jmp	L1075
L1229:
	movl	_xdim, %eax
	movl	$0, 44(%esp)
	movl	$0, __ZL8permtail.lto_priv.0
	movzbl	_gs+12, %ebx
	movl	$0, __ZL8permhead.lto_priv.0
	testl	%eax, %eax
	jle	L1082
	xorl	%edx, %edx
L1083:
	movl	_startdmost, %eax
	movl	_ydim, %ecx
	movw	%cx, (%eax,%edx,2)
	movl	_xdim, %eax
	addl	$1, %edx
	cmpl	%eax, %edx
	jl	L1083
L1082:
	addl	%eax, %eax
	movl	$0, 4(%esp)
	movl	%eax, 8(%esp)
	movl	_startumost, %eax
	movl	%eax, (%esp)
	call	_memset
	xorl	%eax, %eax
	movb	%bl, _gs+12
	leal	44(%esp), %ebx
	call	_videoClearViewableArea
	call	_videoNextPage
	movl	%ebx, (%esp)
	movl	%ebx, %ecx
	movl	%ebx, %edx
	movl	$0, 4(%esp)
	movl	$614, %eax
	call	__Z9PlaySoundiPiS_S_i
	testl	%eax, %eax
	jle	L1084
	movl	_MV_Installed, %edx
	testl	%edx, %edx
	je	L1084
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	addl	$1073741823, %eax
	leal	0(,%eax,4), %esi
	movl	(%edx,%eax,4), %eax
L1085:
	testl	%eax, %eax
	je	L1084
	movl	112(%eax), %ebp
	testl	%ebp, %ebp
	jne	L1084
	call	_handleevents.isra.0
	movl	__ZL10MV_Handles.lto_priv.0, %eax
	movl	_MV_Installed, %edi
	movl	(%eax,%esi), %eax
	testl	%edi, %edi
	jne	L1085
L1084:
	cmpb	$0, _gs+27
	je	L1086
	cmpb	$0, _DemoMode
	jne	L1086
	movl	$1, (%esp)
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movl	$14, %edx
	call	__Z8PlaySongPcihh.part.0
	testb	%al, %al
	je	L1230
L1087:
	movb	$0, _ready2send
	xorl	%eax, %eax
	movl	$0, _totalclock
	movl	$0, _totalclock+8
	movl	$0, _totalclock+12
	movl	$0, _ototalclock
L1090:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L1090
	xorl	%ebx, %ebx
	movl	$5111, %esi
	movl	$5111, %edi
L1096:
	call	_handleevents.isra.0
	movl	_ototalclock, %eax
	addl	$3, %eax
	cmpl	_totalclock, %eax
	jg	L1092
	movl	%eax, _ototalclock
	addl	$3, %ebx
L1092:
	movl	_xdim, %eax
	movl	_ydim, %edx
	subl	$1, %eax
	js	L1093
	subl	$1, %edx
	js	L1093
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
	movl	%esi, 4(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L1093:
	call	_videoNextPage
	cmpl	$960, %ebx
	jbe	L1094
	xorl	%eax, %eax
	movl	$5118, %esi
	cmpl	$1920, %ebx
	cmova	%eax, %ebx
	cmova	%edi, %esi
L1094:
	cmpb	$0, _gs+27
	je	L1095
	cmpl	$2, _SongType
	je	L1231
L1095:
	xorl	%eax, %eax
	call	_videoClearViewableArea
	call	_videoNextPage
	xorl	%eax, %eax
L1097:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L1097
	cmpb	$0, _DemoMode
	jne	L1081
	call	__Z8StopSongv.part.0
	jmp	L1081
L1231:
	movl	_SongVoice, %eax
	testl	%eax, %eax
	js	L1095
	movl	_MV_Installed, %ebp
	testl	%ebp, %ebp
	je	L1095
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	-4(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	L1095
	movl	112(%eax), %ecx
	testl	%ecx, %ecx
	jne	L1095
	cmpb	$0, _keystatus+1
	je	L1096
	jmp	L1095
L1230:
	cmpb	$0, _gs+27
	je	L1086
	cmpb	$0, _DemoMode
	jne	L1086
	movl	$1, (%esp)
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movl	$2, %edx
	call	__Z8PlaySongPcihh.part.0
	testb	%al, %al
	jne	L1087
L1086:
	movl	%ebx, (%esp)
	movl	%ebx, %ecx
	movl	%ebx, %edx
	movl	$366, %eax
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	testl	%eax, %eax
	jle	L1081
	movl	_MV_Installed, %ebx
	testl	%ebx, %ebx
	je	L1081
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	addl	$1073741823, %eax
	leal	0(,%eax,4), %ebx
	movl	(%edx,%eax,4), %eax
L1089:
	testl	%eax, %eax
	je	L1081
	movl	112(%eax), %ecx
	testl	%ecx, %ecx
	jne	L1081
	call	_handleevents.isra.0
	movl	__ZL10MV_Handles.lto_priv.0, %eax
	movl	_MV_Installed, %edx
	movl	(%eax,%ebx), %eax
	testl	%edx, %edx
	jne	L1089
	jmp	L1081
	.cfi_endproc
LFE125:
	.section .rdata,"dr"
LC20:
	.ascii "R%lu\0"
LC21:
	.ascii "T%lu\0"
LC22:
	.ascii "T?\0"
	.text
	.p2align 4
	.globl	__Z10operateftav
	.def	__Z10operateftav;	.scl	2;	.type	32;	.endef
__Z10operateftav:
LFB158:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	$142, %eax
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$96, %esp
	.cfi_def_cfa_offset 112
	movl	_quotebot, %esi
	leal	56(%esp), %edi
	movl	$LC20, 8(%esp)
	cmpl	%eax, %esi
	movl	$40, 4(%esp)
	cmovg	%eax, %esi
	cmpb	$1, _MessageInputMode
	movl	%edi, (%esp)
	sbbl	%eax, %eax
	andl	$6, %eax
	movl	%esi, _quotebot
	addl	$136, %eax
	movl	%eax, _quotebotgoal
	movl	_DemoRunningTics, %eax
	movl	%eax, 12(%esp)
	call	_snprintf
	cmpb	$0, _DemoTotalTicsAvailable
	je	L1234
	movl	_DemoTotalTics, %eax
	leal	16(%esp), %ebx
	movl	$LC21, 8(%esp)
	movl	$40, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%ebx, (%esp)
	call	_snprintf
L1235:
	movzbl	_DemoPlaying, %eax
	cmpb	$1, _gs+12
	jle	L1255
	testb	%al, %al
	jne	L1256
L1237:
	xorl	%ebx, %ebx
L1245:
	movswl	_user_quote_time(%ebx,%ebx), %eax
	testl	%eax, %eax
	jle	L1232
	movl	%ebx, %ecx
	sall	$8, %ecx
	addl	$_user_quote, %ecx
	cmpb	$3, _gs+12
	jg	L1241
	cmpl	$4, %eax
	jg	L1241
	cmpl	$2, %eax
	jle	L1244
	movl	$11, (%esp)
	movl	%esi, %edx
	movl	$160, %eax
	call	__Z12minigametextiiPKcs.isra.0
L1243:
	addl	$1, %ebx
	subl	$6, %esi
	cmpl	$6, %ebx
	jne	L1245
L1232:
	addl	$96, %esp
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
L1241:
	.cfi_restore_state
	movl	$10, (%esp)
	movl	%esi, %edx
	movl	$160, %eax
	call	__Z12minigametextiiPKcs.isra.0
	jmp	L1243
	.p2align 4,,10
	.p2align 3
L1244:
	movl	$43, (%esp)
	movl	%esi, %edx
	movl	$160, %eax
	call	__Z12minigametextiiPKcs.isra.0
	jmp	L1243
	.p2align 4,,10
	.p2align 3
L1234:
	leal	16(%esp), %ebx
	movl	$LC22, 8(%esp)
	movl	$40, 4(%esp)
	movl	%ebx, (%esp)
	call	_snprintf
	jmp	L1235
	.p2align 4,,10
	.p2align 3
L1256:
	movswl	_screenpeek, %ecx
	movl	_DemoTimeEnabled, %eax
	imull	$24124, %ecx, %ecx
	addl	$_Player+23262, %ecx
	testl	%eax, %eax
	jne	L1257
	movl	$145, %edx
	movl	$5, %eax
	call	__Z17minigametextextraiiPKcis.constprop.0.isra.0
	jmp	L1237
	.p2align 4,,10
	.p2align 3
L1255:
	testb	%al, %al
	je	L1237
	movswl	_screenpeek, %ecx
	movl	_DemoTimeEnabled, %edx
	imull	$24124, %ecx, %ecx
	addl	$_Player+23262, %ecx
	testl	%edx, %edx
	jne	L1258
	movl	$165, %edx
	movl	$34, %eax
	call	__Z17minigametextextraiiPKcis.constprop.0.isra.0
	jmp	L1237
	.p2align 4,,10
	.p2align 3
L1257:
	movl	$139, %edx
	movl	$5, %eax
	call	__Z17minigametextextraiiPKcis.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$145, %edx
	movl	$5, %eax
	call	__Z17minigametextextraiiPKcis.constprop.0.isra.0
	movl	%ebx, %ecx
	movl	$145, %edx
	movl	$41, %eax
	call	__Z17minigametextextraiiPKcis.constprop.0.isra.0
	jmp	L1237
	.p2align 4,,10
	.p2align 3
L1258:
	movl	$159, %edx
	movl	$34, %eax
	call	__Z17minigametextextraiiPKcis.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$165, %edx
	movl	$34, %eax
	call	__Z17minigametextextraiiPKcis.constprop.0.isra.0
	movl	%ebx, %ecx
	movl	$165, %edx
	movl	$70, %eax
	call	__Z17minigametextextraiiPKcis.constprop.0.isra.0
	jmp	L1237
	.cfi_endproc
LFE158:
	.section .rdata,"dr"
	.align 4
LC23:
	.ascii "Missing campic for mirror %d (Map Coordinates: x = %d, y = %d)\0"
LC24:
	.ascii "source/sw/src/game.h\0"
LC25:
	.ascii "polymost_completeMirror()\0"
	.text
	.p2align 4
	.globl	__Z14JS_DrawMirrorsP12PLAYERstructiiiii
	.def	__Z14JS_DrawMirrorsP12PLAYERstructiiiii;	.scl	2;	.type	32;	.endef
__Z14JS_DrawMirrorsP12PLAYERstructiiiii:
LFB159:
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
	xorl	%esi, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$84, %esp
	.cfi_def_cfa_offset 104
	movl	_totalclock+8, %ecx
	movl	_totalclock+12, %ebx
	movl	%eax, 28(%esp)
	movl	_ototalclock, %eax
	cmpl	%esi, %ecx
	movl	_camloopcnt, %ecx
	sbbl	%eax, %ebx
	addl	%ebx, %ecx
	cmpl	$300, %ecx
	jg	L1260
	movl	%ecx, _camloopcnt
L1261:
	movzbl	_gotpic+750, %ecx
	testb	%cl, %cl
	je	L1259
	movl	%edx, 32(%esp)
	movl	_oscilationclock, %edx
	movl	28(%esp), %edi
	movl	%ebp, 36(%esp)
	movl	$_mirror+252, %ebp
	subl	%edx, %eax
	andl	$-4, %eax
	movl	%edi, 64(%esp)
	movl	%ebp, %edi
	movl	$7, %ebp
	addl	%eax, %edx
	addl	%eax, %eax
	movl	%eax, 68(%esp)
	movl	$-128, %eax
	movl	%edx, _oscilationclock
	jmp	L1302
	.p2align 4,,10
	.p2align 3
L1318:
	movswl	8(%edi), %eax
	movl	%eax, %edx
	cmpl	$30719, %eax
	ja	L1265
	sarl	$3, %eax
	andl	$7, %edx
	movzbl	_gotpic(%eax), %ecx
	movzbl	__ZL8pow2char.lto_priv.5(%edx), %edx
	movl	%ecx, %ebx
	notl	%ebx
	testb	%dl, %bl
	je	L1266
L1265:
	movb	$0, _mirrorinview
L1267:
	subl	$1, %ebp
	jb	L1259
	movzbl	__ZL8pow2char.lto_priv.5(%ebp), %eax
	movzbl	_gotpic+750, %ecx
	subl	$36, %edi
L1302:
	movl	%ecx, %edx
	notl	%edx
	testb	%al, %dl
	jne	L1318
	notl	%eax
	movb	$1, _mirrorinview
	andl	%ecx, %eax
	movswl	(%edi), %ecx
	movb	%al, _gotpic+750
	movl	%ecx, %ebx
	sall	$5, %ebx
	addl	_wall, %ebx
	movl	(%ebx), %eax
	subl	32(%esp), %eax
/APP
 # 704 "source/sw/src/jsector.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	4(%ebx), %eax
	subl	36(%esp), %eax
/APP
 # 705 "source/sw/src/jsector.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%edx, %eax
	movl	%eax, 52(%esp)
	cmpb	$0, 20(%edi)
	je	L1269
L1321:
	movswl	4(%edi), %ebx
	movl	_sprite, %eax
	sall	$5, %ecx
	movl	_wall, %edx
	imull	$44, %ebx, %ebx
	movl	%eax, 60(%esp)
	addl	%eax, %ebx
	leal	(%edx,%ecx), %eax
	movswl	8(%eax), %ecx
	movl	%ebx, 28(%esp)
	sall	$5, %ecx
	addl	%ecx, %edx
	movl	(%eax), %ecx
	movl	4(%eax), %eax
	addl	(%edx), %ecx
	addl	4(%edx), %eax
	movl	%ecx, %esi
	movl	%eax, %edx
	shrl	$31, %esi
	shrl	$31, %edx
	addl	%ecx, %esi
	addl	%edx, %eax
	sarl	%esi
	sarl	%eax
	movl	%esi, %ecx
	movl	%eax, %esi
	movl	%ecx, 40(%esp)
	movl	%ecx, %eax
	subl	32(%esp), %eax
/APP
 # 757 "source/sw/src/jsector.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	36(%esp), %ecx
	movl	%eax, %edx
	movl	%esi, %eax
	movl	%esi, 44(%esp)
	subl	%ecx, %eax
/APP
 # 758 "source/sw/src/jsector.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	28(%esp), %ebx
	movl	(%ebx), %esi
	subl	%edx, %esi
	addl	(%ebx), %edx
	movl	32(%esp), %ebx
	cmpl	%ebx, 40(%esp)
	movl	28(%esp), %ebx
	cmovl	%edx, %esi
	movl	%esi, 56(%esp)
	movl	4(%ebx), %esi
	movl	28(%esp), %ebx
	movl	%esi, %edx
	addl	%eax, %esi
	subl	%eax, %edx
	cmpl	%ecx, 44(%esp)
	movl	104(%esp), %eax
	cmovge	%edx, %esi
	movl	8(%ebx), %edx
	subl	%edx, %eax
/APP
 # 770 "source/sw/src/jsector.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%edx, %ecx
	movl	28(%esp), %ebx
	movl	$0, 24(%edi)
	subl	%eax, %ecx
	cmpl	%edx, 104(%esp)
	leal	(%eax,%edx), %eax
	cmovl	%ecx, %eax
	movl	%eax, 48(%esp)
	testb	$64, 42(%ebx)
	je	L1319
	movl	$1, 24(%edi)
	cmpw	$-1, 8(%edi)
	je	L1320
L1280:
	movl	28(%esp), %ecx
	movzwl	42(%ecx), %esi
	testl	$128, %esi
	je	L1283
	leal	32(%ecx), %edx
	movl	$-1171354717, %eax
	subl	60(%esp), %edx
	movswl	32(%ecx), %ebx
	mull	%edx
	movw	%bx, 48(%esp)
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %ecx
	movl	%edx, 44(%esp)
	movl	%edx, %eax
	movl	%ecx, 40(%esp)
	leal	1(%ecx), %edx
	testw	$256, %si
	je	L1284
	addl	68(%esp), %ebx
	movl	%edx, _spritechanged(,%eax,4)
	movl	%ebx, %ecx
	movl	28(%esp), %eax
	andl	$2047, %ecx
	movw	%cx, 32(%eax)
	movswl	28(%eax), %eax
	movl	%ecx, %esi
	subl	%eax, %esi
	movl	%eax, %edx
	movl	%esi, %eax
	negl	%eax
	cmovs	%esi, %eax
	cmpl	$1024, %eax
	jg	L1285
	movl	%ecx, %eax
L1286:
	subl	%edx, %eax
	cwtl
/APP
 # 814 "source/sw/src/jsector.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	28(%esp), %esi
	movswl	34(%esi), %edx
	cmpl	%eax, %edx
	jg	L1289
	movl	44(%esp), %eax
	leal	42(%esi), %edx
	subl	60(%esp), %edx
	addl	$1, _spritechanged(,%eax,4)
	movzwl	48(%esp), %eax
	andw	$2047, %ax
	movw	%ax, 32(%esi)
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-257, 42(%esi)
	jmp	L1289
	.p2align 4,,10
	.p2align 3
L1266:
	notl	%edx
	movb	$1, _mirrorinview
	andl	%ecx, %edx
	movb	%dl, _gotpic(%eax)
	movswl	6(%edi), %edx
	imull	$44, %edx, %edx
	addl	_sprite, %edx
	movl	(%edx), %eax
	subl	32(%esp), %eax
/APP
 # 715 "source/sw/src/jsector.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	4(%edx), %eax
	subl	36(%esp), %eax
/APP
 # 716 "source/sw/src/jsector.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%ecx, %eax
	movswl	(%edi), %ecx
	movl	%eax, 52(%esp)
	cmpb	$0, 20(%edi)
	jne	L1321
L1269:
	leal	72(%esp), %eax
	movl	%ecx, 8(%esp)
	movl	36(%esp), %edx
	movl	%eax, 20(%esp)
	leal	76(%esp), %eax
	movl	104(%esp), %ecx
	movl	%eax, 16(%esp)
	leal	80(%esp), %eax
	movl	%eax, 12(%esp)
	movl	112(%esp), %eax
	movl	%eax, 4(%esp)
	movl	108(%esp), %eax
	movl	%eax, (%esp)
	movl	32(%esp), %eax
	call	_renderPrepareMirror
	movzwl	2(%edi), %eax
	movl	76(%esp), %ebx
	movl	80(%esp), %esi
	movl	104(%esp), %ecx
	addw	$4096, %ax
	movl	%ebx, %edx
	cwtl
	movl	%eax, 8(%esp)
	movl	112(%esp), %eax
	movl	%eax, 4(%esp)
	movl	72(%esp), %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	_renderDrawRoomsQ16.isra.0
	movl	$1, (%esp)
	movl	%ebx, %edx
	movl	%esi, %eax
	movl	104(%esp), %ecx
	call	__Z14analyzespritesiiih
	call	_renderDrawMasks
	cmpl	$3, _rendmode
	je	L1322
L1297:
	cmpb	$0, _inpreparemirror
	je	L1281
	movl	_rendmode, %ebx
	movb	$0, _inpreparemirror
	testl	%ebx, %ebx
	jne	L1281
	movl	__ZL9mirrorsx1.lto_priv.0, %edx
	testl	%edx, %edx
	jne	L1298
	movl	$1, __ZL9mirrorsx1.lto_priv.0
	movl	$1, %edx
L1298:
	cmpl	%edx, __ZL9mirrorsx2.lto_priv.0
	jl	L1281
	call	_videoBeginDrawing
	movl	__ZL9mirrorsy1.lto_priv.0, %edx
	movl	__ZL9mirrorsy2.lto_priv.0, %eax
	subl	%edx, %eax
	testl	%eax, %eax
	jle	L1299
	movl	__ZL9mirrorsx2.lto_priv.0, %esi
	addl	_windowxy1+4, %edx
	movl	%eax, 40(%esp)
	movl	%edi, 48(%esp)
	movl	%esi, %ecx
	subl	__ZL9mirrorsx1.lto_priv.0, %ecx
	movl	%ebp, 44(%esp)
	addl	$1, %ecx
	movl	%ecx, 28(%esp)
	movl	_ylookup, %ecx
	movl	(%ecx,%edx,4), %edx
	movl	_mirrorBuffer, %ecx
	addl	%edx, %ecx
	addl	_frameplace, %edx
	addl	_windowxy1, %ecx
	addl	_windowxy2, %edx
	addl	__ZL9mirrorsx1.lto_priv.0, %ecx
	subl	%esi, %edx
	movl	%ecx, %ebp
	.p2align 4
	.p2align 3
L1300:
	movl	28(%esp), %ecx
	leal	1(%edx), %edi
	leal	-1(%ebp,%ecx), %esi
/APP
 # 146 "source/build/src/pragmas.cpp" 1
	shrl $1, %ecx
	jnc 0f
	movb (%esi), %al
	decl %esi
	movb %al, (%edi)
	incl %edi
	0:
	shrl $1, %ecx
	jnc 1f
	movw -1(%esi), %ax
	subl $2, %esi
	rorw $8, %ax
	movw %ax, (%edi)
	addl $2, %edi
	1:
	testl %ecx, %ecx
	jz 3f
	2:
	movl -3(%esi), %eax
	subl $4, %esi
	bswapl %eax
	movl %eax, (%edi)
	addl $4, %edi
	decl %ecx
	jnz 2b
	3:
 # 0 "" 2
/NO_APP
	movl	_ylookup, %eax
	addl	$1, %ebx
	movl	4(%eax), %eax
	addl	%eax, %ebp
	addl	%eax, %edx
	cmpl	%ebx, 40(%esp)
	jne	L1300
	movl	44(%esp), %ebp
	movl	48(%esp), %edi
L1299:
	call	_videoEndDrawing
	jmp	L1281
	.p2align 4,,10
	.p2align 3
L1259:
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
	.p2align 4,,10
	.p2align 3
L1319:
	.cfi_restore_state
	movl	$0, _tilesiz+1360
	movswl	8(%edi), %eax
	cmpw	$-1, %ax
	je	L1278
	movl	$0, _tilesiz(,%eax,4)
L1278:
	movl	28(%esp), %eax
	movl	56(%esp), %ebx
	movl	%esi, %edx
	movl	48(%esp), %ecx
	movzwl	24(%eax), %eax
	addw	$4096, %ax
	cwtl
	movl	%eax, 8(%esp)
	movl	112(%esp), %eax
	movl	%eax, 4(%esp)
	movl	108(%esp), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_renderDrawRoomsQ16.isra.0
	movl	$0, (%esp)
	movl	%esi, %edx
	movl	%ebx, %eax
	movl	48(%esp), %ecx
	call	__Z14analyzespritesiiih
	call	_renderDrawMasks
L1281:
	cmpl	$1, _numplayers
	jle	L1301
	cmpw	$3, _gNet+12
	je	L1301
	movl	64(%esp), %eax
	movl	352(%eax), %edx
	testl	%edx, %edx
	je	L1301
	call	__Z10SetFragBarP12PLAYERstruct.part.0
L1301:
	movswl	(%edi), %eax
	movl	_wall, %edx
	movl	$0, _tilesiz+1360
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	leal	6000(%ebp), %eax
	movw	%ax, 18(%edx)
	jmp	L1267
	.p2align 4,,10
	.p2align 3
L1260:
	movzwl	_camplayerview, %edi
	movl	$0, _camloopcnt
	leal	1(%edi), %ecx
	movswl	%cx, %ebx
	cmpl	_numplayers, %ebx
	movl	$1, %ebx
	cmovge	%ebx, %ecx
	movw	%cx, _camplayerview
	jmp	L1261
	.p2align 4,,10
	.p2align 3
L1283:
	movl	28(%esp), %esi
	movzwl	28(%esi), %eax
	movw	%ax, 32(%esi)
L1289:
	movl	28(%esp), %esi
	movl	$-1171354717, %eax
	leal	36(%esi), %edx
	subl	60(%esp), %edx
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %ecx
	leal	1(%ecx), %eax
	movl	%eax, _spritechanged(,%edx,4)
	movl	$100, %eax
	cmpb	$0, 37(%esi)
	je	L1294
	addl	$2, %ecx
	movl	%ecx, _spritechanged(,%edx,4)
	movzbl	37(%esi), %eax
L1294:
	movswl	8(%edi), %edx
	movl	$8388736, _tilesiz(,%edx,4)
	cmpl	$7999, 52(%esp)
	jg	L1281
	movl	28(%esp), %esi
	testb	$32, 42(%esi)
	je	L1295
	cmpl	$1, _numplayers
	jg	L1296
L1295:
	movl	28(%esp), %ebx
	sall	$16, %eax
	movl	4(%ebx), %esi
	movl	8(%ebx), %ecx
	movl	(%ebx), %ebx
	movl	%edx, 12(%esp)
	movl	28(%esp), %edx
	movswl	24(%edx), %edx
	movl	%eax, 4(%esp)
	movl	28(%esp), %eax
	movl	%edx, 8(%esp)
	movl	%esi, %edx
	movswl	32(%eax), %eax
	sall	$16, %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__Z15drawroomstotileiiiiiss
	jmp	L1281
	.p2align 4,,10
	.p2align 3
L1320:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1323
L1282:
	movl	44(%esp), %eax
	movl	%ebp, 8(%esp)
	movl	$LC23, 4(%esp)
	movl	%eax, 16(%esp)
	movl	40(%esp), %eax
	movl	$_apptitle, (%esp)
	movl	%eax, 12(%esp)
	call	_wm_msgbox.constprop.0
	call	__Z13TerminateGamev
	movl	_sprite, %eax
	movl	%eax, 60(%esp)
	jmp	L1280
	.p2align 4,,10
	.p2align 3
L1322:
	movl	$LC25, 4(%esp)
	movl	$3, (%esp)
	call	__Z26buildgl_outputDebugMessagehPKcz.constprop.0
	movl	$2960, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L1297
	movl	$2960, (%esp)
	call	*_glad_glDisable
	.cfi_def_cfa_offset 100
	xorl	%ecx, %ecx
	movl	$2960, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 104
	movl	$1, (%esp)
	call	_inthash_add
	jmp	L1297
	.p2align 4,,10
	.p2align 3
L1284:
	movl	44(%esp), %esi
	movl	%ebx, %eax
	subl	68(%esp), %eax
	andl	$2047, %eax
	movl	%edx, _spritechanged(,%esi,4)
	movl	28(%esp), %esi
	movswl	28(%esi), %ecx
	movw	%ax, 32(%esi)
	movl	%eax, %esi
	subl	%ecx, %esi
	movl	%ecx, %edx
	movl	%esi, %ecx
	negl	%ecx
	cmovs	%esi, %ecx
	cmpl	$1024, %ecx
	jle	L1291
	leal	2048(%eax), %ecx
	cmpl	$1025, %eax
	cmovb	%ecx, %eax
	leal	2048(%edx), %ecx
	cmpw	$1025, %dx
	cmovl	%ecx, %edx
L1291:
	subl	%edx, %eax
	cwtl
/APP
 # 827 "source/sw/src/jsector.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	28(%esp), %esi
	movswl	34(%esi), %edx
	cmpl	%eax, %edx
	jg	L1289
	movl	44(%esp), %eax
	leal	42(%esi), %edx
	subl	60(%esp), %edx
	addl	$1, _spritechanged(,%eax,4)
	movzwl	48(%esp), %eax
	andw	$2047, %ax
	movw	%ax, 32(%esi)
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$256, 42(%esi)
	jmp	L1289
	.p2align 4,,10
	.p2align 3
L1296:
	movswl	_camplayerview, %eax
	imull	$24124, %eax, %eax
	movl	_Player+4(%eax), %esi
	movl	_Player(%eax), %ebx
	movl	_Player+8(%eax), %ecx
	movl	%edx, 12(%esp)
	movswl	_Player+268(%eax), %edx
	movl	%edx, 8(%esp)
	movl	_Player+288(%eax), %edx
	movl	%edx, 4(%esp)
	movl	_Player+300(%eax), %eax
	movl	%esi, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__Z15drawroomstotileiiiiiss
	jmp	L1281
	.p2align 4,,10
	.p2align 3
L1285:
	cmpl	$1025, %ecx
	leal	2048(%ecx), %eax
	cmovnb	%ecx, %eax
	leal	2048(%edx), %ecx
	cmpw	$1025, %dx
	cmovl	%ecx, %edx
	jmp	L1286
L1323:
	movl	44(%esp), %eax
	movl	%ebp, 16(%esp)
	movl	$LC23, 12(%esp)
	movl	%eax, 24(%esp)
	movl	40(%esp), %eax
	movl	$2413, 8(%esp)
	movl	%eax, 20(%esp)
	movl	$LC24, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1282
	.cfi_endproc
LFE159:
	.p2align 4
	.globl	__Z11InitOrgTileP13ORG_TILE_LIST
	.def	__Z11InitOrgTileP13ORG_TILE_LIST;	.scl	2;	.type	32;	.endef
__Z11InitOrgTileP13ORG_TILE_LIST:
LFB169:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	_g_sm_heap, %ecx
	movl	$12, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	testl	%eax, %eax
	je	L1325
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	cmpl	(%ebx), %ebx
	je	L1329
	movl	%ebx, (%eax)
	movl	4(%ebx), %edx
	movl	%edx, 4(%eax)
	movl	%eax, 4(%ebx)
	movl	4(%eax), %edx
	movl	%eax, (%edx)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1329:
	.cfi_restore_state
	movl	%ebx, 4(%eax)
	movl	(%ebx), %edx
	movl	%edx, (%eax)
	movl	%eax, (%ebx)
	movl	(%eax), %edx
	movl	%eax, 4(%edx)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1325:
	.cfi_restore_state
	movl	$1, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE169:
	.section .rdata,"dr"
	.align 4
LC26:
	.ascii "ERROR: JS_InitLockouts(), out of range tile number\12wall %d, x %d, y %d, pic %d\0"
	.align 4
LC27:
	.ascii "ERROR: JS_InitLockouts(), out of range tile number\12wall %d, x %d, y %d, OVERpic %d\0"
	.align 4
LC28:
	.ascii "ERROR: JS_InitLockouts(), out of range tile number\12sector %d, ceiling %d\0"
	.align 4
LC29:
	.ascii "ERROR: JS_InitLockouts(), out of range tile number\12Unrecognizable error!\0"
	.text
	.p2align 4
	.globl	__Z13JS_PlockErrorss
	.def	__Z13JS_PlockErrorss;	.scl	2;	.type	32;	.endef
__Z13JS_PlockErrorss:
LFB172:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movswl	%ax, %ecx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	movl	%ebx, 40(%esp)
	.cfi_offset 3, -12
	movl	%edx, %ebx
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	cmpl	%eax, %edx
	cmovl	%eax, %edx
	cmpw	$2, %bx
	je	L1331
	cmpw	$3, %bx
	je	L1332
	movl	%ecx, %eax
	movl	%esi, 44(%esp)
	sall	$5, %eax
	addl	_wall, %eax
	.cfi_offset 6, -8
	movl	4(%eax), %esi
	movl	(%eax), %ebx
	movswl	16(%eax), %eax
	cmpl	$-2, %edx
	jge	L1339
L1333:
	movl	%esi, 16(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 20(%esp)
	movl	%ebx, 12(%esp)
	movl	$LC26, 4(%esp)
	movl	$_apptitle, (%esp)
	call	_wm_msgbox.constprop.0
	call	__Z13TerminateGamev
	movl	44(%esp), %esi
	.cfi_restore 6
L1334:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1340
L1337:
	movl	$LC29, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$_apptitle, (%esp)
	call	_wm_msgbox.constprop.0
	movl	40(%esp), %ebx
	addl	$48, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z13TerminateGamev
	.p2align 4,,10
	.p2align 3
L1332:
	.cfi_restore_state
	movl	_sector, %ebx
	leal	(%ecx,%ecx,4), %eax
	leal	(%ebx,%eax,8), %eax
	movswl	16(%eax), %ebx
	cmpl	$-2, %edx
	jge	L1341
L1336:
	movl	%ecx, 8(%esp)
	movl	%ebx, 12(%esp)
	movl	$LC28, 4(%esp)
	movl	$_apptitle, (%esp)
	call	_wm_msgbox.constprop.0
	call	__Z13TerminateGamev
	jmp	L1334
	.p2align 4,,10
	.p2align 3
L1340:
	movl	$LC29, 16(%esp)
	movl	$LC5, 12(%esp)
	movl	$2413, 8(%esp)
	movl	$LC24, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1337
	.p2align 4,,10
	.p2align 3
L1331:
	movl	%ecx, %eax
	movl	%esi, 44(%esp)
	.cfi_offset 6, -8
	sall	$5, %eax
	addl	_wall, %eax
	movl	4(%eax), %esi
	movl	(%eax), %ebx
	movswl	18(%eax), %eax
	cmpl	$-2, %edx
	jge	L1342
L1335:
	movl	%esi, 16(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 20(%esp)
	movl	%ebx, 12(%esp)
	movl	$LC27, 4(%esp)
	movl	$_apptitle, (%esp)
	call	_wm_msgbox.constprop.0
	call	__Z13TerminateGamev
	movl	44(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L1334
	.p2align 4,,10
	.p2align 3
L1342:
	.cfi_restore_state
	movl	%eax, 28(%esp)
	movl	%ecx, 16(%esp)
	movl	%esi, 24(%esp)
	movl	%ebx, 20(%esp)
	movl	$LC27, 12(%esp)
	movl	$2413, 8(%esp)
	movl	$LC24, 4(%esp)
	movl	$-2, (%esp)
	movl	%eax, 36(%esp)
	movl	%ecx, 32(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	36(%esp), %eax
	movl	32(%esp), %ecx
	jmp	L1335
	.p2align 4,,10
	.p2align 3
L1339:
	movl	%eax, 28(%esp)
	movl	%ecx, 16(%esp)
	movl	%esi, 24(%esp)
	movl	%ebx, 20(%esp)
	movl	$LC26, 12(%esp)
	movl	$2413, 8(%esp)
	movl	$LC24, 4(%esp)
	movl	$-2, (%esp)
	movl	%eax, 36(%esp)
	movl	%ecx, 32(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	36(%esp), %eax
	movl	32(%esp), %ecx
	jmp	L1333
	.p2align 4,,10
	.p2align 3
L1341:
	.cfi_restore 6
	movl	%ecx, 16(%esp)
	movl	%ebx, 20(%esp)
	movl	$LC28, 12(%esp)
	movl	$2413, 8(%esp)
	movl	$LC24, 4(%esp)
	movl	$-2, (%esp)
	movl	%ecx, 32(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	32(%esp), %ecx
	jmp	L1336
	.cfi_endproc
LFE172:
	.p2align 4
	.globl	__Z17JS_ToggleLockoutsv
	.def	__Z17JS_ToggleLockoutsv;	.scl	2;	.type	32;	.endef
__Z17JS_ToggleLockoutsv:
LFB173:
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
	movzwl	_numwalls, %esi
	testw	%si, %si
	jle	L1344
	movl	_orgwalloverlist, %eax
	movl	_orgwalllist, %edi
	movl	$16, %ecx
	movl	_wall, %edx
	movl	%eax, (%esp)
	xorl	%eax, %eax
	jmp	L1354
	.p2align 4,,10
	.p2align 3
L1388:
	movswl	16(%edx), %ebx
	movzwl	_aVoxelArray+2(,%ebx,4), %ebx
	testw	%bx, %bx
	js	L1346
	movl	%ecx, %ebp
	shrl	$5, %ebp
	addl	$1, _wallchanged(,%ebp,4)
	movw	%bx, 16(%edx)
L1347:
	cmpb	$0, _gs+40
	je	L1348
L1346:
	movswl	18(%edx), %ebx
	movzwl	_aVoxelArray+2(,%ebx,4), %ebp
	testw	%bp, %bp
	js	L1351
L1385:
	leal	2(%ecx), %ebx
	shrl	$5, %ebx
	addl	$1, _wallchanged(,%ebx,4)
	movw	%bp, 18(%edx)
L1351:
	addl	$1, %eax
	addl	$32, %edx
	addl	$32, %ecx
	cmpw	%si, %ax
	je	L1344
L1354:
	cmpb	$0, _gs+40
	jne	L1388
	cmpl	$_orgwalllist, %edi
	je	L1348
	movl	%edi, %ebx
	.p2align 4
	.p2align 4
	.p2align 3
L1350:
	cmpw	%ax, 8(%ebx)
	je	L1349
	movl	(%ebx), %ebx
	cmpl	$_orgwalllist, %ebx
	jne	L1350
L1348:
	movl	(%esp), %ebx
	cmpl	$_orgwalloverlist, %ebx
	jne	L1353
	jmp	L1351
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1389:
	movl	(%ebx), %ebx
	cmpl	$_orgwalloverlist, %ebx
	je	L1351
L1353:
	cmpw	%ax, 8(%ebx)
	jne	L1389
	movzwl	10(%ebx), %ebp
	jmp	L1385
	.p2align 4,,10
	.p2align 3
L1349:
	movzwl	10(%ebx), %ebp
	movl	%ecx, %ebx
	shrl	$5, %ebx
	addl	$1, _wallchanged(,%ebx,4)
	movw	%bp, 16(%edx)
	jmp	L1347
	.p2align 4,,10
	.p2align 3
L1344:
	movzwl	_numsectors, %eax
	movw	%ax, (%esp)
	testw	%ax, %ax
	jle	L1343
	movl	_orgsectorceilinglist, %eax
	movl	_sector, %ebx
	movl	$16, %esi
	xorl	%ecx, %ecx
	movl	$-858993459, %edi
	movl	%eax, 4(%esp)
	movl	_orgsectorfloorlist, %eax
	movl	%eax, 8(%esp)
	jmp	L1365
	.p2align 4,,10
	.p2align 3
L1390:
	movswl	16(%ebx), %eax
	movzwl	_aVoxelArray+2(,%eax,4), %ebp
	testw	%bp, %bp
	js	L1357
L1386:
	movl	%esi, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%bp, 16(%ebx)
	cmpb	$0, _gs+40
	je	L1359
L1357:
	movswl	24(%ebx), %eax
	movzwl	_aVoxelArray+2(,%eax,4), %ebp
	testw	%bp, %bp
	js	L1362
L1387:
	leal	8(%esi), %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%bp, 24(%ebx)
L1362:
	addl	$1, %ecx
	addl	$40, %ebx
	addl	$40, %esi
	cmpw	(%esp), %cx
	je	L1343
L1365:
	cmpb	$0, _gs+40
	jne	L1390
	movl	4(%esp), %eax
	cmpl	$_orgsectorceilinglist, %eax
	je	L1359
	.p2align 4
	.p2align 4
	.p2align 3
L1361:
	cmpw	%cx, 8(%eax)
	je	L1360
	movl	(%eax), %eax
	cmpl	$_orgsectorceilinglist, %eax
	jne	L1361
L1359:
	movl	8(%esp), %eax
	cmpl	$_orgsectorfloorlist, %eax
	jne	L1364
	jmp	L1362
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1391:
	movl	(%eax), %eax
	cmpl	$_orgsectorfloorlist, %eax
	je	L1362
L1364:
	cmpw	%cx, 8(%eax)
	jne	L1391
	movzwl	10(%eax), %ebp
	jmp	L1387
	.p2align 4,,10
	.p2align 3
L1360:
	movzwl	10(%eax), %ebp
	jmp	L1386
	.p2align 4,,10
	.p2align 3
L1343:
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
LFE173:
	.p2align 4
	.globl	__Z14SpawnMidSplashs
	.def	__Z14SpawnMidSplashs;	.scl	2;	.type	32;	.endef
__Z14SpawnMidSplashs:
LFB174:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	cwtl
	imull	$44, %eax, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$40, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	addl	_sprite, %edx
	movl	_User(,%eax,4), %eax
	movswl	14(%edx), %ecx
	movswl	28(%edx), %esi
	movl	%eax, 32(%esp)
	movzbl	21(%edx), %ebx
	movswl	_tilesiz+2(,%ecx,4), %edi
	movl	8(%edx), %eax
	testb	$-128, 12(%edx)
	je	L1393
	movsbl	_picanm+2(%ecx,%ecx,4), %ecx
	sall	$8, %ecx
	movl	%ecx, 36(%esp)
	cmpb	$64, %bl
	je	L1410
	imull	%edi, %ebx
	movl	36(%esp), %ecx
	leal	(%ebx,%ebx), %edi
	movl	%eax, %ebx
	addl	%edi, %ecx
	subl	%ecx, %ebx
L1395:
	subl	36(%esp), %edi
	addl	%edi, %eax
	jmp	L1398
	.p2align 4,,10
	.p2align 3
L1393:
	cmpb	$64, %bl
	je	L1411
	imull	%edi, %ebx
	leal	0(,%ebx,4), %edi
L1397:
	movl	%eax, %ebx
	subl	%edi, %ebx
L1398:
	addl	%ebx, %eax
	movl	%esi, 16(%esp)
	movl	$_s_GoreSplash, %ecx
	sarl	%eax
	movl	$0, 20(%esp)
	movl	%eax, 12(%esp)
	movl	4(%edx), %eax
	movl	%eax, 8(%esp)
	movl	(%edx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%edx), %eax
	movl	$1562, %edx
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %esi
	movl	_krandcount, %ebx
	cwtl
	imull	$44, %eax, %edx
	movl	%esi, 36(%esp)
	movl	_User(,%eax,4), %edi
	movl	%ebx, 24(%esp)
	leal	(%esi,%edx), %ecx
	leal	16(%edx), %eax
	movl	$-1171354717, %esi
	mull	%esi
	movl	_randomseed, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ebx
	leal	20(%ecx), %edx
	subl	36(%esp), %edx
	movb	$-12, 16(%ecx)
	movl	%edx, %eax
	movzwl	%bx, %ebx
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	cmpl	$65535, %ebx
	je	L1399
	movl	%ebx, %edx
	movl	$-1610571775, %eax
	movb	$51, 31(%esp)
	sall	$14, %edx
	mull	%edx
	movl	$70, %eax
	shrl	$25, %edx
	subl	%edx, %eax
	movb	%al, 20(%ecx)
	leal	(%ebx,%ebx,4), %eax
	leal	1(%ebx,%eax,4), %ebx
	movzwl	%bx, %ebx
	cmpl	$65535, %ebx
	je	L1400
L1403:
	movl	%ebx, %edx
	movl	$-1610571775, %eax
	sall	$14, %edx
	mull	%edx
	movl	$70, %eax
	shrl	$25, %edx
	subl	%edx, %eax
	movb	%al, 31(%esp)
L1400:
	leal	21(%ecx), %edx
	subl	36(%esp), %edx
	movl	$-1171354717, %esi
	movl	%edx, %eax
	mull	%esi
	movzbl	31(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	32(%esp), %edx
	movb	%al, 21(%ecx)
	movl	56(%edx), %eax
	movl	%eax, 56(%edi)
	movl	60(%edx), %eax
	movl	%eax, 60(%edi)
	movl	64(%edx), %eax
	leal	12(%ecx), %edx
	subl	36(%esp), %edx
	movl	%eax, 64(%edi)
	movl	%edx, %eax
	mull	%esi
	movl	24(%esp), %eax
	addl	$3, %eax
	movl	%eax, _krandcount
	leal	(%ebx,%ebx,4), %eax
	shrl	$5, %edx
	leal	1(%ebx,%eax,4), %eax
	addl	$1, _spritechanged(,%edx,4)
	movzwl	%ax, %ebx
	orw	$128, 12(%ecx)
	movl	%ebx, _randomseed
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ecx)
	testb	$2, %ah
	jne	L1401
	addl	$1, _spritechanged(,%edx,4)
	orw	$4, 12(%ecx)
L1401:
	movl	$0, 152(%edi)
	movl	32(%esp), %eax
	movl	$0, 156(%edi)
	movl	$0, 160(%edi)
	testb	$64, 71(%eax)
	je	L1392
	orl	$1073741824, 68(%edi)
L1392:
	addl	$40, %esp
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
L1399:
	.cfi_restore_state
	movb	$51, 20(%ecx)
	movl	$65516, %ebx
	jmp	L1403
	.p2align 4,,10
	.p2align 3
L1410:
	sall	$7, %edi
	movl	%eax, %ebx
	addl	%edi, %ecx
	subl	%ecx, %ebx
	jmp	L1395
	.p2align 4,,10
	.p2align 3
L1411:
	sall	$8, %edi
	jmp	L1397
	.cfi_endproc
LFE174:
	.p2align 4
	.globl	__Z16SpawnFloorSplashs
	.def	__Z16SpawnFloorSplashs;	.scl	2;	.type	32;	.endef
__Z16SpawnFloorSplashs:
LFB175:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	cwtl
	movl	$_s_GoreFloorSplash, %ecx
	imull	$44, %eax, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$40, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	addl	_sprite, %edx
	movl	_User(,%eax,4), %esi
	movl	$0, 20(%esp)
	movswl	28(%edx), %eax
	movl	%eax, 16(%esp)
	movl	8(%edx), %eax
	movl	%eax, 12(%esp)
	movl	4(%edx), %eax
	movl	%eax, 8(%esp)
	movl	(%edx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%edx), %eax
	movl	$1562, %edx
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %edi
	movl	_krandcount, %ebx
	cwtl
	imull	$44, %eax, %edx
	movl	_User(,%eax,4), %eax
	movl	%edi, 36(%esp)
	movl	%ebx, 24(%esp)
	movl	%eax, 32(%esp)
	leal	(%edi,%edx), %ecx
	leal	16(%edx), %eax
	movl	$-1171354717, %edi
	mull	%edi
	movl	_randomseed, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ebx
	leal	20(%ecx), %edx
	subl	36(%esp), %edx
	movb	$-12, 16(%ecx)
	movl	%edx, %eax
	movzwl	%bx, %ebx
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	cmpl	$65535, %ebx
	je	L1413
	movl	%ebx, %edx
	movl	$-1610571775, %eax
	movb	$51, 31(%esp)
	sall	$14, %edx
	mull	%edx
	movl	$70, %eax
	shrl	$25, %edx
	subl	%edx, %eax
	movb	%al, 20(%ecx)
	leal	(%ebx,%ebx,4), %eax
	leal	1(%ebx,%eax,4), %ebx
	movzwl	%bx, %ebx
	cmpl	$65535, %ebx
	jne	L1417
L1414:
	leal	21(%ecx), %edx
	subl	36(%esp), %edx
	movl	$-1171354717, %edi
	movl	%edx, %eax
	mull	%edi
	movzbl	31(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	32(%esp), %edx
	movb	%al, 21(%ecx)
	movl	56(%esi), %eax
	movl	%eax, 56(%edx)
	movl	60(%esi), %eax
	movl	%eax, 60(%edx)
	movl	64(%esi), %eax
	movl	%eax, 64(%edx)
	leal	12(%ecx), %edx
	subl	36(%esp), %edx
	movl	%edx, %eax
	mull	%edi
	movl	24(%esp), %eax
	addl	$3, %eax
	movl	%eax, _krandcount
	leal	(%ebx,%ebx,4), %eax
	shrl	$5, %edx
	leal	1(%ebx,%eax,4), %eax
	addl	$1, _spritechanged(,%edx,4)
	movzwl	%ax, %ebx
	orw	$128, 12(%ecx)
	movl	%ebx, _randomseed
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ecx)
	testb	$2, %ah
	jne	L1415
	addl	$1, _spritechanged(,%edx,4)
	orw	$4, 12(%ecx)
L1415:
	movl	32(%esp), %eax
	movl	$0, 152(%eax)
	movl	$0, 156(%eax)
	movl	$0, 160(%eax)
	testb	$64, 71(%esi)
	je	L1412
	orl	$1073741824, 68(%eax)
L1412:
	addl	$40, %esp
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
L1413:
	.cfi_restore_state
	movb	$51, 20(%ecx)
	movl	$65516, %ebx
L1417:
	movl	%ebx, %edx
	movl	$-1610571775, %eax
	sall	$14, %edx
	mull	%edx
	movl	$70, %eax
	shrl	$25, %edx
	subl	%edx, %eax
	movb	%al, 31(%esp)
	jmp	L1414
	.cfi_endproc
LFE175:
	.p2align 4
	.def	__Z15DoWallBloodDrips;	.scl	3;	.type	32;	.endef
__Z15DoWallBloodDrips:
LFB176:
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
	movl	_sprite, %ecx
	movswl	36(%esp), %eax
	movl	_User(,%eax,4), %ebp
	imull	$44, %eax, %ebx
	movl	%eax, 12(%esp)
	movl	252(%ebp), %esi
	movl	256(%ebp), %edx
	leal	8(%ebx), %eax
	addl	%ebx, %ecx
	movl	%esi, 4(%esp)
	movl	$-1171354717, %esi
	movl	%edx, (%esp)
	mull	%esi
	leal	36(%ebx), %eax
	movl	%edx, %edi
	mull	%esi
	movl	4(%esp), %esi
	shrl	$5, %edi
	movl	%edx, %ebx
	movl	(%esp), %edx
	shrl	$5, %ebx
	movl	_spritechanged(,%ebx,4), %eax
	addl	$1, %eax
	movl	%eax, 8(%esp)
	cmpl	%esi, %edx
	je	L1425
	movl	8(%ecx), %eax
	cmpl	%eax, %esi
	jge	L1425
	cmpl	%eax, %edx
	jle	L1425
	movl	8(%esp), %eax
	movl	%eax, _spritechanged(,%ebx,4)
	movzwl	36(%ecx), %eax
	addw	$300, %ax
	movw	%ax, 36(%ecx)
	cwtl
	addl	$1, _spritechanged(,%edi,4)
	addl	8(%ecx), %eax
	movl	%eax, 8(%ecx)
	movl	108(%ebp), %edx
	cmpl	%eax, %edx
	jg	L1430
L1442:
	addl	$1, _spritechanged(,%edi,4)
	movl	12(%esp), %edi
	movl	%edx, 8(%ecx)
	movl	%edi, %eax
	call	__Z16SpawnFloorSplashs
	movl	%edi, %eax
	call	__Z10KillSprites
	addl	$16, %esp
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
L1425:
	.cfi_restore_state
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %esi
	movzwl	%si, %esi
	movl	%esi, _randomseed
	cmpl	$65535, %esi
	je	L1432
	sall	$14, %esi
	movl	$528557433, %eax
	mull	%esi
	subl	%edx, %esi
	shrl	%esi
	leal	(%edx,%esi), %eax
	shrl	$19, %eax
	addl	$150, %eax
	movl	%eax, %edx
L1429:
	movl	8(%esp), %esi
	movl	%esi, _spritechanged(,%ebx,4)
	movw	%dx, 36(%ecx)
	addl	$1, _spritechanged(,%edi,4)
	addl	8(%ecx), %eax
	movl	%eax, 8(%ecx)
	movl	108(%ebp), %edx
	cmpl	%eax, %edx
	jle	L1442
L1430:
	addl	$16, %esp
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
L1432:
	.cfi_restore_state
	movl	$1299, %edx
	movl	$1299, %eax
	jmp	L1429
	.cfi_endproc
LFE176:
	.p2align 4
	.globl	__Z12DoBloodSprays
	.def	__Z12DoBloodSprays;	.scl	2;	.type	32;	.endef
__Z12DoBloodSprays:
LFB177:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$52, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movswl	8(%ebp), %ebx
	movl	_sprite, %esi
	imull	$44, %ebx, %eax
	movl	_User(,%ebx,4), %edi
	movl	%esi, 36(%esp)
	movl	%ebx, 40(%esp)
	addl	%eax, %esi
	movzwl	176(%edi), %eax
	leal	20(%eax), %ecx
	movl	160(%edi), %eax
	movswl	%cx, %ebx
	movl	%ebx, 28(%esp)
	addl	%eax, %ebx
	movl	%eax, 32(%esp)
	testb	$64, 71(%edi)
	jne	L1499
L1445:
	movw	%cx, 176(%edi)
	movl	%ebx, 160(%edi)
	cmpw	$2, 32(%esi)
	jg	L1446
	leal	8(%esi), %edx
	movl	$-1171354717, %eax
	sarl	%ebx
	movl	%edx, 32(%esp)
	subl	36(%esp), %edx
	mull	%edx
	leal	44(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addl	%ebx, 8(%esi)
	movl	%eax, 16(%esp)
	leal	48(%esp), %eax
	movl	%eax, 12(%esp)
	movl	4(%esi), %eax
	movl	%eax, 8(%esp)
	movl	(%esi), %eax
	movl	%eax, 4(%esp)
	movswl	24(%esi), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movl	44(%esp), %ecx
	cmpl	8(%esi), %ecx
	jle	L1500
L1447:
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	__Z18MissileHitDiveAreas
	movl	264(%edi), %eax
	testl	%eax, %eax
	je	L1449
	movl	%eax, %edx
	andl	$114688, %edx
	cmpl	$49152, %edx
	je	L1450
	jg	L1451
	cmpl	$16384, %edx
	je	L1452
	cmpl	$32768, %edx
	jne	L1449
	movl	_wall, %edx
	andl	$16383, %eax
	sall	$5, %eax
	addl	%edx, %eax
	cmpw	$307, 26(%eax)
	je	L1501
	movswl	8(%eax), %ecx
	sall	$5, %ecx
	addl	%ecx, %edx
	movl	4(%edx), %ebx
	subl	4(%eax), %ebx
	movl	(%edx), %ecx
	movl	%ebx, %edx
	subl	(%eax), %ecx
	call	@getangle@8
	movl	%eax, %ebx
	movl	40(%esp), %eax
	call	__Z14SpawnMidSplashs
	leal	1536(%ebx), %edx
	movl	40(%esp), %eax
	andl	$2047, %edx
	call	__Z14QueueWallBloodss
	testl	%eax, %eax
	js	L1458
	imull	$44, %eax, %eax
	movl	_sprite, %ebx
	movl	%eax, 32(%esp)
	addl	%ebx, %eax
	movswl	24(%eax), %edx
	movl	%eax, 28(%esp)
	movl	%edx, %eax
	movl	%edx, 36(%esp)
	call	__Z10FAF_Sectors
	testb	%al, %al
	jne	L1458
	movl	36(%esp), %edx
	movl	_sector, %eax
	leal	(%edx,%edx,4), %edx
	cmpw	$2356, 16(%eax,%edx,8)
	je	L1458
	cmpw	$2356, 24(%eax,%edx,8)
	je	L1458
	leal	34(%esi), %edx
	movl	$-1171354717, %ecx
	movl	$0, 152(%edi)
	subl	%ebx, %edx
	addl	$1, _krandcount
	movl	$0, 156(%edi)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 34(%esi)
	leal	32(%esi), %edx
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	_randomseed, %eax
	xorl	%ecx, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movw	%cx, 32(%esi)
	movl	$46, %ecx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1459
	movl	$209718403, %ecx
	sall	$14, %eax
	mull	%ecx
	movl	$70, %ecx
	shrl	$21, %edx
	subl	%edx, %ecx
L1459:
	leal	21(%esi), %edx
	movl	$-1171354717, %eax
	subl	%ebx, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%esi), %edx
	subl	%ebx, %edx
	movb	%cl, 21(%esi)
	mull	%edx
	movl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%cl, 20(%esi)
	movl	(%eax), %eax
	movl	%eax, (%esi)
	movl	32(%esp), %eax
	movl	_sprite, %ecx
	addl	%ecx, %eax
	movl	4(%eax), %edx
	movl	%edx, 4(%esi)
	movswl	34(%eax), %eax
	testw	%ax, %ax
	js	L1462
	sall	$5, %eax
	addl	_wall, %eax
	movswl	12(%eax), %eax
	testw	%ax, %ax
	jns	L1502
	movl	256(%edi), %eax
	movl	%eax, 252(%edi)
L1462:
	leal	12(%esi), %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	movl	40(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$32767, 12(%esi)
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L1449
	movl	$0, 76(%eax)
	movl	$_s_BloodSprayDrip, 24(%eax)
	movl	$_s_BloodSprayDrip, 16(%eax)
	movswl	_s_BloodSprayDrip, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L1449
	andl	$63, %eax
	movb	%al, 3(%edx)
	.p2align 4
	.p2align 3
L1449:
	testb	$96, 71(%edi)
	je	L1503
L1498:
	xorl	%eax, %eax
L1443:
	addl	$52, %esp
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
L1446:
	.cfi_restore_state
	movl	156(%edi), %ecx
	movl	152(%edi), %edx
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	movswl	98(%edi), %eax
	movl	%eax, 8(%esp)
	movswl	96(%edi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	movl	40(%esp), %eax
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%edi)
	jmp	L1447
	.p2align 4,,10
	.p2align 3
L1503:
	movl	$100, 20(%esp)
	movswl	28(%esi), %eax
	movl	$_s_BloodSpray, %ecx
	movl	$1562, %edx
	movl	%eax, 16(%esp)
	movl	8(%esi), %eax
	movl	%eax, 12(%esp)
	movl	4(%esi), %eax
	movl	%eax, 8(%esp)
	movl	(%esi), %eax
	movl	%eax, 4(%esp)
	movswl	24(%esi), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	cwtl
	movl	%eax, %edx
	movl	%eax, 24(%esp)
	imull	$44, %eax, %ebx
	movl	_User(,%eax,4), %esi
	movl	40(%esp), %eax
	addl	_sprite, %ebx
	call	__Z8SetOwnerss
	movl	_sprite, %eax
	leal	16(%ebx), %edx
	movl	_krandcount, %ecx
	movl	%eax, 40(%esp)
	subl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	_randomseed, %eax
	movl	%ecx, 28(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ecx
	leal	20(%ebx), %edx
	movl	$-1171354717, %eax
	subl	40(%esp), %edx
	mull	%edx
	movzwl	%cx, %ecx
	movb	$-12, 16(%ebx)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	cmpl	$65535, %ecx
	je	L1467
	movl	%ecx, %eax
	movl	$-268374015, %edx
	movb	$11, 32(%esp)
	sall	$14, %eax
	mull	%edx
	movl	$40, %eax
	shrl	$25, %edx
	subl	%edx, %eax
	movb	%al, 20(%ebx)
	leal	(%ecx,%ecx,4), %eax
	leal	1(%ecx,%eax,4), %eax
	movzwl	%ax, %eax
	movl	%eax, 36(%esp)
	cmpl	$65535, %eax
	je	L1468
L1471:
	movl	36(%esp), %edx
	movl	$-268374015, %eax
	sall	$14, %edx
	mull	%edx
	movl	$40, %eax
	shrl	$25, %edx
	subl	%edx, %eax
	movb	%al, 32(%esp)
L1468:
	leal	21(%ebx), %edx
	subl	40(%esp), %edx
	movl	$-1171354717, %ecx
	movl	%edx, %eax
	mull	%ecx
	movzbl	32(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	40(%esp), %edx
	movb	%al, 21(%ebx)
	movl	56(%edi), %eax
	movl	%eax, 56(%esi)
	movl	60(%edi), %eax
	movl	%eax, 60(%esi)
	movl	64(%edi), %eax
	movl	%eax, 64(%esi)
	movl	%edx, %eax
	mull	%ecx
	movl	36(%esp), %ecx
	leal	(%ecx,%ecx,4), %eax
	shrl	$5, %edx
	leal	1(%ecx,%eax,4), %ecx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	%cx, %eax
	orw	$128, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ebx)
	andb	$2, %ch
	jne	L1469
	addl	$1, _spritechanged(,%edx,4)
	orw	$4, 12(%ebx)
L1469:
	movl	28(%esp), %ecx
	addl	$4, %ecx
	movl	%ecx, _krandcount
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %eax
	movzwl	%ax, %ecx
	movl	%ecx, _randomseed
	testb	$2, %ah
	jne	L1470
	addl	$1, _spritechanged(,%edx,4)
	orw	$8, 12(%ebx)
L1470:
	movl	152(%edi), %eax
	movl	$20000, %edx
	movl	%eax, 152(%esi)
	movl	156(%edi), %eax
	movl	%eax, 156(%esi)
	movl	160(%edi), %eax
	movl	%eax, 160(%esi)
	movl	24(%esp), %eax
	movl	_User(,%eax,4), %ecx
	movl	152(%ecx), %eax
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$20000, %edx
	movl	%eax, 152(%ecx)
	movl	156(%ecx), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$20000, %edx
	movl	%eax, 156(%ecx)
	movl	160(%ecx), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 160(%ecx)
	movl	68(%edi), %eax
	andl	$1073741824, %eax
	je	L1443
	orl	$1073741824, 68(%esi)
	jmp	L1498
	.p2align 4,,10
	.p2align 3
L1499:
	movl	152(%edi), %eax
	movl	$50000, %edx
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$50000, %edx
	movl	%eax, 152(%edi)
	movl	156(%edi), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$50000, %edx
	movl	%eax, 156(%edi)
	movl	32(%esp), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	28(%esp), %ebx
	addl	%eax, %ebx
	jmp	L1445
	.p2align 4,,10
	.p2align 3
L1500:
	movl	32(%esp), %eax
	movl	$-1171354717, %edi
	subl	_sprite, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, 8(%esi)
L1496:
	movl	40(%esp), %edi
	movl	%edi, %eax
	call	__Z16SpawnFloorSplashs
	movl	%edi, %eax
	call	__Z10KillSprites
L1448:
	addl	$52, %esp
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
L1452:
	.cfi_restore_state
	movl	108(%edi), %eax
	addl	104(%edi), %eax
	sarl	%eax
	cmpl	8(%esi), %eax
	jge	L1463
	movl	68(%edi), %eax
	testl	$1073741824, %eax
	je	L1464
	orl	$536870912, %eax
	movl	%eax, 68(%edi)
L1464:
	movl	120(%edi), %eax
	testl	%eax, %eax
	je	L1465
	movswl	24(%esi), %eax
	movl	_SectUser(,%eax,4), %eax
	testl	%eax, %eax
	je	L1465
	cmpw	$0, 10(%eax)
	je	L1465
	orl	$536870912, 68(%edi)
L1465:
	movl	$0, 152(%edi)
	movl	$0, 156(%edi)
	jmp	L1496
	.p2align 4,,10
	.p2align 3
L1467:
	movb	$11, 20(%ebx)
	movl	$65516, 36(%esp)
	jmp	L1471
	.p2align 4,,10
	.p2align 3
L1451:
	cmpl	$65536, %edx
	jne	L1449
	movl	40(%esp), %eax
	call	__Z10KillSprites
	jmp	L1448
	.p2align 4,,10
	.p2align 3
L1450:
	andl	$16383, %eax
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	%eax, %ebx
	testb	$16, 12(%eax)
	je	L1455
	movzwl	28(%eax), %eax
	andw	$2047, %ax
	movw	%ax, 36(%esp)
	movl	40(%esp), %eax
	call	__Z14SpawnMidSplashs
	movswl	28(%ebx), %edx
	movl	40(%esp), %ebx
	movl	%ebx, %eax
	call	__Z14QueueWallBloodss
	movswl	36(%esp), %edx
	movl	%ebx, %eax
	call	__Z10WallBouncess
	movl	_User(,%ebx,4), %ecx
L1497:
	movl	152(%ecx), %eax
	movl	$32000, %edx
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$32000, %edx
	movl	%eax, 152(%ecx)
	movl	156(%ecx), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$32000, %edx
	movl	%eax, 156(%ecx)
	movl	160(%ecx), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 160(%ecx)
	testb	$96, 71(%edi)
	jne	L1498
	jmp	L1503
	.p2align 4,,10
	.p2align 3
L1463:
	movl	40(%esp), %eax
	negl	160(%edi)
	movl	_User(,%eax,4), %ecx
	jmp	L1497
	.p2align 4,,10
	.p2align 3
L1458:
	movl	40(%esp), %eax
	call	__Z10KillSprites
	jmp	L1498
	.p2align 4,,10
	.p2align 3
L1501:
	movswl	82(%edi), %ebx
	movl	4(%esi), %ecx
	movl	(%esi), %edx
	movl	%ebx, 8(%esp)
	movswl	28(%esi), %ebx
	movl	%ebx, 4(%esp)
	movl	8(%esi), %ebx
	movl	%ebx, (%esp)
	call	__Z12HitBreakWallP10walltypev7iiiss.isra.0
	movl	$0, 264(%edi)
	jmp	L1449
	.p2align 4,,10
	.p2align 3
L1455:
	movl	$0, 152(%edi)
	movl	$0, 156(%edi)
	movl	40(%esp), %edi
	movl	%edi, %eax
	call	__Z14SpawnMidSplashs
	movswl	28(%ebx), %edx
	movl	%edi, %eax
	call	__Z14QueueWallBloodss
	movl	%edi, %eax
	call	__Z10KillSprites
	jmp	L1448
L1502:
	leal	256(%edi), %edx
	movl	%edx, 16(%esp)
	leal	252(%edi), %edx
	movl	%edx, 12(%esp)
	movl	4(%esi), %edx
	movl	%edx, 8(%esp)
	movl	(%esi), %edx
	movl	%edx, 4(%esp)
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movl	_sprite, %ecx
	jmp	L1462
	.cfi_endproc
LFE177:
	.globl	_s_HornetDead
	.data
	.align 4
_s_HornetDead:
	.word	811
	.space 2
	.long	20
	.long	__Z13DoActorDebriss
	.long	_s_HornetDead
	.globl	_s_HornetStand
	.align 32
_s_HornetStand:
	.word	800
	.space 2
	.long	12
	.long	__Z12DoHornetMoves
	.long	_s_HornetStand+16
	.word	801
	.space 2
	.long	12
	.long	__Z12DoHornetMoves
	.long	_s_HornetStand
	.word	802
	.space 2
	.long	12
	.long	__Z12DoHornetMoves
	.long	_s_HornetStand+48
	.word	803
	.space 2
	.long	12
	.long	__Z12DoHornetMoves
	.long	_s_HornetStand+32
	.word	804
	.space 2
	.long	12
	.long	__Z12DoHornetMoves
	.long	_s_HornetStand+80
	.word	805
	.space 2
	.long	12
	.long	__Z12DoHornetMoves
	.long	_s_HornetStand+64
	.word	806
	.space 2
	.long	12
	.long	__Z12DoHornetMoves
	.long	_s_HornetStand+112
	.word	807
	.space 2
	.long	12
	.long	__Z12DoHornetMoves
	.long	_s_HornetStand+96
	.word	808
	.space 2
	.long	12
	.long	__Z12DoHornetMoves
	.long	_s_HornetStand+144
	.word	809
	.space 2
	.long	12
	.long	__Z12DoHornetMoves
	.long	_s_HornetStand+128
	.globl	_HornetTouchTarget
	.align 4
_HornetTouchTarget:
	.word	500
	.space 2
	.long	__Z16InitHornetCircles
	.word	1024
	.space 2
	.long	__Z15InitHornetStings
	.globl	_HornetCloseRange
	.align 4
_HornetCloseRange:
	.word	900
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	1024
	.space 2
	.long	__Z19InitActorRepositions
	.globl	_HornetLostTarget
	.align 4
_HornetLostTarget:
	.word	900
	.space 2
	.long	__Z19InitActorFindPlayers
	.word	1024
	.space 2
	.long	__Z21InitActorWanderArounds
	.globl	_HornetEvasive
	.align 4
_HornetEvasive:
	.word	20
	.space 2
	.long	__Z16InitHornetCircles
	.word	1024
	.space 2
	.long	0
	.globl	_HornetSurprised
	.align 4
_HornetSurprised:
	.word	100
	.space 2
	.long	__Z16InitHornetCircles
	.word	701
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	1024
	.space 2
	.long	__Z15InitActorDecides
	.globl	_HornetBroadcast
	.align 4
_HornetBroadcast:
	.word	3
	.space 2
	.long	__Z19InitActorAlertNoises
	.word	6
	.space 2
	.long	__Z21InitActorAmbientNoises
	.word	1024
	.space 2
	.long	__Z15InitActorDecides
	.globl	_HornetOffense
	.align 4
_HornetOffense:
	.word	1022
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	1024
	.space 2
	.long	__Z19InitActorAlertNoises
	.globl	_HornetBattle
	.align 32
_HornetBattle:
	.word	50
	.space 2
	.long	__Z16InitHornetCircles
	.word	798
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	800
	.space 2
	.long	__Z19InitActorAlertNoises
	.word	1024
	.space 2
	.long	__Z16InitActorRunAways
	.globl	_sg_HornetDead
	.align 4
_sg_HornetDead:
	.long	_s_HornetDead
	.globl	_sg_HornetDie
	.align 4
_sg_HornetDie:
	.long	_s_HornetDie
	.globl	_sg_HornetStand
	.align 4
_sg_HornetStand:
	.long	_s_HornetStand
	.long	_s_HornetStand+32
	.long	_s_HornetStand+64
	.long	_s_HornetStand+96
	.long	_s_HornetStand+128
	.globl	_s_GoroSpell
	.align 32
_s_GoroSpell:
	.word	1513
	.space 2
	.long	30
	.long	__Z8NullGoros
	.long	_s_GoroSpell+16
	.word	1514
	.space 2
	.long	30
	.long	__Z8NullGoros
	.long	_s_GoroSpell+32
	.word	1514
	.space 2
	.long	6
	.long	__Z17InitEnemyFireballs
	.long	_s_GoroSpell+48
	.word	1514
	.space 2
	.long	6
	.long	__Z8NullGoros
	.long	_s_GoroSpell+64
	.word	1514
	.space 2
	.long	6
	.long	__Z17InitEnemyFireballs
	.long	_s_GoroSpell+80
	.word	1514
	.space 2
	.long	6
	.long	__Z8NullGoros
	.long	_s_GoroSpell+96
	.word	1514
	.space 2
	.long	6
	.long	__Z17InitEnemyFireballs
	.long	_s_GoroSpell+112
	.word	1514
	.space 2
	.long	30
	.long	__Z8NullGoros
	.long	_s_GoroSpell+128
	.word	1514
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_GoroSpell+144
	.word	1514
	.space 2
	.long	6
	.long	__Z10DoGoroMoves
	.long	_s_GoroSpell+144
	.word	1515
	.space 2
	.long	30
	.long	__Z8NullGoros
	.long	_s_GoroSpell+176
	.word	1516
	.space 2
	.long	30
	.long	__Z8NullGoros
	.long	_s_GoroSpell+192
	.word	1516
	.space 2
	.long	6
	.long	__Z17InitEnemyFireballs
	.long	_s_GoroSpell+208
	.word	1516
	.space 2
	.long	6
	.long	__Z8NullGoros
	.long	_s_GoroSpell+224
	.word	1516
	.space 2
	.long	6
	.long	__Z17InitEnemyFireballs
	.long	_s_GoroSpell+240
	.word	1516
	.space 2
	.long	6
	.long	__Z8NullGoros
	.long	_s_GoroSpell+256
	.word	1516
	.space 2
	.long	6
	.long	__Z17InitEnemyFireballs
	.long	_s_GoroSpell+272
	.word	1516
	.space 2
	.long	30
	.long	__Z8NullGoros
	.long	_s_GoroSpell+288
	.word	1516
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_GoroSpell+304
	.word	1516
	.space 2
	.long	6
	.long	__Z10DoGoroMoves
	.long	_s_GoroSpell+304
	.word	1517
	.space 2
	.long	30
	.long	__Z8NullGoros
	.long	_s_GoroSpell+336
	.word	1518
	.space 2
	.long	30
	.long	__Z8NullGoros
	.long	_s_GoroSpell+352
	.word	1518
	.space 2
	.long	6
	.long	__Z17InitEnemyFireballs
	.long	_s_GoroSpell+368
	.word	1518
	.space 2
	.long	6
	.long	__Z8NullGoros
	.long	_s_GoroSpell+384
	.word	1518
	.space 2
	.long	6
	.long	__Z17InitEnemyFireballs
	.long	_s_GoroSpell+400
	.word	1518
	.space 2
	.long	6
	.long	__Z8NullGoros
	.long	_s_GoroSpell+416
	.word	1518
	.space 2
	.long	6
	.long	__Z17InitEnemyFireballs
	.long	_s_GoroSpell+432
	.word	1518
	.space 2
	.long	30
	.long	__Z8NullGoros
	.long	_s_GoroSpell+448
	.word	1518
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_GoroSpell+464
	.word	1518
	.space 2
	.long	6
	.long	__Z10DoGoroMoves
	.long	_s_GoroSpell+464
	.word	1481
	.space 2
	.long	30
	.long	__Z8NullGoros
	.long	_s_GoroSpell+496
	.word	1482
	.space 2
	.long	30
	.long	__Z8NullGoros
	.long	_s_GoroSpell+512
	.word	1482
	.space 2
	.long	6
	.long	__Z17InitEnemyFireballs
	.long	_s_GoroSpell+528
	.word	1482
	.space 2
	.long	6
	.long	__Z8NullGoros
	.long	_s_GoroSpell+544
	.word	1482
	.space 2
	.long	6
	.long	__Z17InitEnemyFireballs
	.long	_s_GoroSpell+560
	.word	1482
	.space 2
	.long	6
	.long	__Z8NullGoros
	.long	_s_GoroSpell+576
	.word	1482
	.space 2
	.long	6
	.long	__Z17InitEnemyFireballs
	.long	_s_GoroSpell+592
	.word	1482
	.space 2
	.long	30
	.long	__Z8NullGoros
	.long	_s_GoroSpell+608
	.word	1482
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_GoroSpell+624
	.word	1482
	.space 2
	.long	6
	.long	__Z10DoGoroMoves
	.long	_s_GoroSpell+624
	.word	1485
	.space 2
	.long	30
	.long	__Z8NullGoros
	.long	_s_GoroSpell+656
	.word	1486
	.space 2
	.long	30
	.long	__Z8NullGoros
	.long	_s_GoroSpell+672
	.word	1486
	.space 2
	.long	6
	.long	__Z17InitEnemyFireballs
	.long	_s_GoroSpell+688
	.word	1486
	.space 2
	.long	6
	.long	__Z8NullGoros
	.long	_s_GoroSpell+704
	.word	1486
	.space 2
	.long	6
	.long	__Z17InitEnemyFireballs
	.long	_s_GoroSpell+720
	.word	1486
	.space 2
	.long	6
	.long	__Z8NullGoros
	.long	_s_GoroSpell+736
	.word	1486
	.space 2
	.long	6
	.long	__Z17InitEnemyFireballs
	.long	_s_GoroSpell+752
	.word	1486
	.space 2
	.long	30
	.long	__Z8NullGoros
	.long	_s_GoroSpell+768
	.word	1486
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_GoroSpell+784
	.word	1486
	.space 2
	.long	6
	.long	__Z10DoGoroMoves
	.long	_s_GoroSpell+784
	.globl	_s_GoroChop
	.align 32
_s_GoroChop:
	.word	1489
	.space 2
	.long	14
	.long	__Z8NullGoros
	.long	_s_GoroChop+16
	.word	1490
	.space 2
	.long	14
	.long	__Z8NullGoros
	.long	_s_GoroChop+32
	.word	1491
	.space 2
	.long	14
	.long	__Z8NullGoros
	.long	_s_GoroChop+48
	.word	1491
	.space 2
	.long	65536
	.long	__Z12InitGoroChops
	.long	_s_GoroChop+64
	.word	1491
	.space 2
	.long	14
	.long	__Z8NullGoros
	.long	_s_GoroChop+80
	.word	1491
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_GoroChop+96
	.word	1491
	.space 2
	.long	14
	.long	__Z10DoGoroMoves
	.long	_s_GoroChop+96
	.word	1492
	.space 2
	.long	14
	.long	__Z8NullGoros
	.long	_s_GoroChop+128
	.word	1493
	.space 2
	.long	14
	.long	__Z8NullGoros
	.long	_s_GoroChop+144
	.word	1494
	.space 2
	.long	14
	.long	__Z8NullGoros
	.long	_s_GoroChop+160
	.word	1494
	.space 2
	.long	65536
	.long	__Z12InitGoroChops
	.long	_s_GoroChop+176
	.word	1494
	.space 2
	.long	14
	.long	__Z8NullGoros
	.long	_s_GoroChop+192
	.word	1494
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_GoroChop+208
	.word	1494
	.space 2
	.long	14
	.long	__Z10DoGoroMoves
	.long	_s_GoroChop+208
	.word	1495
	.space 2
	.long	14
	.long	__Z8NullGoros
	.long	_s_GoroChop+240
	.word	1496
	.space 2
	.long	14
	.long	__Z8NullGoros
	.long	_s_GoroChop+256
	.word	1497
	.space 2
	.long	14
	.long	__Z8NullGoros
	.long	_s_GoroChop+272
	.word	1497
	.space 2
	.long	65536
	.long	__Z12InitGoroChops
	.long	_s_GoroChop+288
	.word	1497
	.space 2
	.long	14
	.long	__Z8NullGoros
	.long	_s_GoroChop+304
	.word	1497
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_GoroChop+320
	.word	1497
	.space 2
	.long	14
	.long	__Z10DoGoroMoves
	.long	_s_GoroChop+320
	.word	1481
	.space 2
	.long	14
	.long	__Z8NullGoros
	.long	_s_GoroChop+352
	.word	1482
	.space 2
	.long	14
	.long	__Z8NullGoros
	.long	_s_GoroChop+368
	.word	1483
	.space 2
	.long	14
	.long	__Z8NullGoros
	.long	_s_GoroChop+384
	.word	1483
	.space 2
	.long	65536
	.long	__Z12InitGoroChops
	.long	_s_GoroChop+400
	.word	1483
	.space 2
	.long	14
	.long	__Z8NullGoros
	.long	_s_GoroChop+416
	.word	1483
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_GoroChop+432
	.word	1483
	.space 2
	.long	14
	.long	__Z10DoGoroMoves
	.long	_s_GoroChop+432
	.word	1485
	.space 2
	.long	14
	.long	__Z8NullGoros
	.long	_s_GoroChop+464
	.word	1486
	.space 2
	.long	14
	.long	__Z8NullGoros
	.long	_s_GoroChop+480
	.word	1487
	.space 2
	.long	14
	.long	__Z8NullGoros
	.long	_s_GoroChop+496
	.word	1487
	.space 2
	.long	65536
	.long	__Z12InitGoroChops
	.long	_s_GoroChop+512
	.word	1487
	.space 2
	.long	14
	.long	__Z8NullGoros
	.long	_s_GoroChop+528
	.word	1487
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_GoroChop+544
	.word	1487
	.space 2
	.long	14
	.long	__Z10DoGoroMoves
	.long	_s_GoroChop+544
	.globl	_s_GoroDead
	.align 4
_s_GoroDead:
	.word	1512
	.space 2
	.long	16
	.long	__Z13DoActorDebriss
	.long	_s_GoroDead
	.globl	_s_GoroPain
	.align 32
_s_GoroPain:
	.word	1489
	.space 2
	.long	12
	.long	__Z10DoGoroPains
	.long	_s_GoroPain
	.word	1492
	.space 2
	.long	12
	.long	__Z10DoGoroPains
	.long	_s_GoroPain+16
	.word	1495
	.space 2
	.long	12
	.long	__Z10DoGoroPains
	.long	_s_GoroPain+32
	.word	1481
	.space 2
	.long	12
	.long	__Z10DoGoroPains
	.long	_s_GoroPain+48
	.word	1485
	.space 2
	.long	12
	.long	__Z10DoGoroPains
	.long	_s_GoroPain+64
	.globl	_s_GoroStand
	.align 32
_s_GoroStand:
	.word	1489
	.space 2
	.long	12
	.long	__Z10DoGoroMoves
	.long	_s_GoroStand
	.word	1492
	.space 2
	.long	12
	.long	__Z10DoGoroMoves
	.long	_s_GoroStand+16
	.word	1495
	.space 2
	.long	12
	.long	__Z10DoGoroMoves
	.long	_s_GoroStand+32
	.word	1481
	.space 2
	.long	12
	.long	__Z10DoGoroMoves
	.long	_s_GoroStand+48
	.word	1485
	.space 2
	.long	12
	.long	__Z10DoGoroMoves
	.long	_s_GoroStand+64
	.globl	_GoroCloseRange
	.align 4
_GoroCloseRange:
	.word	700
	.space 2
	.long	__Z15InitActorAttacks
	.word	1024
	.space 2
	.long	__Z19InitActorRepositions
	.globl	_GoroLostTarget
	.align 4
_GoroLostTarget:
	.word	900
	.space 2
	.long	__Z19InitActorFindPlayers
	.word	1024
	.space 2
	.long	__Z21InitActorWanderArounds
	.globl	_GoroEvasive
	.align 4
_GoroEvasive:
	.word	10
	.space 2
	.long	__Z14InitActorEvades
	.word	1024
	.space 2
	.long	__Z19InitActorMoveClosers
	.globl	_GoroSurprised
	.align 4
_GoroSurprised:
	.word	701
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	1024
	.space 2
	.long	__Z15InitActorDecides
	.globl	_GoroBroadcast
	.align 4
_GoroBroadcast:
	.word	3
	.space 2
	.long	__Z21InitActorAmbientNoises
	.word	1024
	.space 2
	.long	__Z15InitActorDecides
	.globl	_GoroOffense
	.align 4
_GoroOffense:
	.word	797
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	800
	.space 2
	.long	__Z20InitActorAttackNoises
	.word	1024
	.space 2
	.long	__Z15InitActorAttacks
	.globl	_GoroBattle
	.align 4
_GoroBattle:
	.word	697
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	700
	.space 2
	.long	__Z21InitActorAmbientNoises
	.word	1024
	.space 2
	.long	__Z15InitActorAttacks
	.globl	_sg_GoroSpell
	.align 4
_sg_GoroSpell:
	.long	_s_GoroSpell
	.long	_s_GoroSpell+160
	.long	_s_GoroSpell+320
	.long	_s_GoroSpell+480
	.long	_s_GoroSpell+640
	.globl	_sg_GoroChop
	.align 4
_sg_GoroChop:
	.long	_s_GoroChop
	.long	_s_GoroChop+112
	.long	_s_GoroChop+224
	.long	_s_GoroChop+336
	.long	_s_GoroChop+448
	.globl	_sg_GoroDead
	.align 4
_sg_GoroDead:
	.long	_s_GoroDead
	.globl	_sg_GoroDie
	.align 4
_sg_GoroDie:
	.long	_s_GoroDie
	.globl	_sg_GoroPain
	.align 4
_sg_GoroPain:
	.long	_s_GoroPain
	.long	_s_GoroPain+16
	.long	_s_GoroPain+32
	.long	_s_GoroPain+48
	.long	_s_GoroPain+64
	.globl	_sg_GoroStand
	.align 4
_sg_GoroStand:
	.long	_s_GoroStand
	.long	_s_GoroStand+16
	.long	_s_GoroStand+32
	.long	_s_GoroStand+48
	.long	_s_GoroStand+64
	.globl	_s_GirlNinjaDuck
	.align 32
_s_GirlNinjaDuck:
	.word	5211
	.space 2
	.long	10
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaDuck+16
	.word	5211
	.space 2
	.long	14
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaDuck+16
	.word	5212
	.space 2
	.long	10
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaDuck+48
	.word	5212
	.space 2
	.long	14
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaDuck+48
	.word	5213
	.space 2
	.long	10
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaDuck+80
	.word	5213
	.space 2
	.long	14
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaDuck+80
	.word	5214
	.space 2
	.long	10
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaDuck+112
	.word	5214
	.space 2
	.long	14
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaDuck+112
	.word	5215
	.space 2
	.long	10
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaDuck+144
	.word	5215
	.space 2
	.long	14
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaDuck+144
	.globl	_s_GirlNinjaSticky
	.align 32
_s_GirlNinjaSticky:
	.word	5246
	.space 2
	.long	64
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaSticky+16
	.word	5246
	.space 2
	.long	32
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaSticky+32
	.word	5247
	.space 2
	.long	65536
	.long	__Z13InitEnemyMines
	.long	_s_GirlNinjaSticky+48
	.word	5247
	.space 2
	.long	64
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaSticky+64
	.word	5248
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_GirlNinjaSticky+80
	.word	5248
	.space 2
	.long	32
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaSticky+80
	.word	5249
	.space 2
	.long	64
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaSticky+112
	.word	5249
	.space 2
	.long	32
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaSticky+128
	.word	5250
	.space 2
	.long	65536
	.long	__Z13InitEnemyMines
	.long	_s_GirlNinjaSticky+144
	.word	5250
	.space 2
	.long	64
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaSticky+160
	.word	5251
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_GirlNinjaSticky+176
	.word	5251
	.space 2
	.long	32
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaSticky+176
	.word	5252
	.space 2
	.long	64
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaSticky+208
	.word	5252
	.space 2
	.long	32
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaSticky+224
	.word	5253
	.space 2
	.long	65536
	.long	__Z13InitEnemyMines
	.long	_s_GirlNinjaSticky+240
	.word	5253
	.space 2
	.long	64
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaSticky+256
	.word	5254
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_GirlNinjaSticky+272
	.word	5254
	.space 2
	.long	32
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaSticky+272
	.word	5252
	.space 2
	.long	64
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaSticky+304
	.word	5252
	.space 2
	.long	32
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaSticky+320
	.word	5253
	.space 2
	.long	65536
	.long	__Z13InitEnemyMines
	.long	_s_GirlNinjaSticky+336
	.word	5253
	.space 2
	.long	64
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaSticky+352
	.word	5254
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_GirlNinjaSticky+368
	.word	5254
	.space 2
	.long	32
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaSticky+368
	.word	5252
	.space 2
	.long	64
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaSticky+400
	.word	5252
	.space 2
	.long	32
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaSticky+416
	.word	5253
	.space 2
	.long	65536
	.long	__Z13InitEnemyMines
	.long	_s_GirlNinjaSticky+432
	.word	5253
	.space 2
	.long	64
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaSticky+448
	.word	5254
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_GirlNinjaSticky+464
	.word	5254
	.space 2
	.long	32
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaSticky+464
	.globl	_s_GirlNinjaCrossbow
	.align 32
_s_GirlNinjaCrossbow:
	.word	5182
	.space 2
	.long	28
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaCrossbow+16
	.word	5183
	.space 2
	.long	65536
	.long	__Z17InitEnemyCrossbows
	.long	_s_GirlNinjaCrossbow+32
	.word	5183
	.space 2
	.long	14
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaCrossbow+48
	.word	5183
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_GirlNinjaCrossbow+64
	.word	5183
	.space 2
	.long	14
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaCrossbow+64
	.word	5184
	.space 2
	.long	28
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaCrossbow+96
	.word	5185
	.space 2
	.long	65536
	.long	__Z17InitEnemyCrossbows
	.long	_s_GirlNinjaCrossbow+112
	.word	5185
	.space 2
	.long	14
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaCrossbow+128
	.word	5185
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_GirlNinjaCrossbow+144
	.word	5185
	.space 2
	.long	14
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaCrossbow+144
	.word	5186
	.space 2
	.long	28
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaCrossbow+176
	.word	5187
	.space 2
	.long	65536
	.long	__Z17InitEnemyCrossbows
	.long	_s_GirlNinjaCrossbow+192
	.word	5187
	.space 2
	.long	14
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaCrossbow+208
	.word	5187
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_GirlNinjaCrossbow+224
	.word	5187
	.space 2
	.long	14
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaCrossbow+224
	.word	5188
	.space 2
	.long	28
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaCrossbow+256
	.word	5189
	.space 2
	.long	65536
	.long	__Z17InitEnemyCrossbows
	.long	_s_GirlNinjaCrossbow+272
	.word	5189
	.space 2
	.long	14
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaCrossbow+288
	.word	5189
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_GirlNinjaCrossbow+304
	.word	5189
	.space 2
	.long	14
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaCrossbow+304
	.word	5190
	.space 2
	.long	28
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaCrossbow+336
	.word	5191
	.space 2
	.long	65536
	.long	__Z17InitEnemyCrossbows
	.long	_s_GirlNinjaCrossbow+352
	.word	5191
	.space 2
	.long	14
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaCrossbow+368
	.word	5191
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_GirlNinjaCrossbow+384
	.word	5191
	.space 2
	.long	14
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaCrossbow+384
	.globl	_s_GirlNinjaDeathFall
	.align 32
_s_GirlNinjaDeathFall:
	.word	5200
	.space 2
	.long	30
	.long	__Z16DoActorDeathMoves
	.space 4
	.word	5201
	.space 2
	.long	30
	.long	__Z16DoActorDeathMoves
	.space 4
	.globl	_s_GirlNinjaDeathJump
	.align 32
_s_GirlNinjaDeathJump:
	.word	5197
	.space 2
	.long	30
	.long	__Z16DoActorDeathMoves
	.space 4
	.word	5198
	.space 2
	.long	30
	.long	__Z16DoActorDeathMoves
	.space 4
	.word	5199
	.space 2
	.long	30
	.long	__Z16DoActorDeathMoves
	.space 4
	.globl	_s_GirlNinjaDead
	.align 32
_s_GirlNinjaDead:
	.word	5203
	.space 2
	.long	30
	.long	__Z13DoActorDebriss
	.space 4
	.word	5204
	.space 2
	.long	65536
	.long	__Z18DoGirlNinjaSpecials
	.space 4
	.word	5204
	.space 2
	.long	30
	.long	__Z13DoActorDebriss
	.space 4
	.word	5205
	.space 2
	.long	65536
	.long	__Z15QueueFloorBloods
	.space 4
	.word	5205
	.space 2
	.long	30
	.long	__Z13DoActorDebriss
	.space 4
	.globl	_s_GirlNinjaPain
	.align 32
_s_GirlNinjaPain:
	.word	5192
	.space 2
	.long	15
	.long	__Z15DoGirlNinjaPains
	.long	_s_GirlNinjaPain
	.word	5192
	.space 2
	.long	15
	.long	__Z15DoGirlNinjaPains
	.long	_s_GirlNinjaPain+16
	.word	5192
	.space 2
	.long	15
	.long	__Z15DoGirlNinjaPains
	.long	_s_GirlNinjaPain+32
	.word	5192
	.space 2
	.long	15
	.long	__Z15DoGirlNinjaPains
	.long	_s_GirlNinjaPain+48
	.word	5192
	.space 2
	.long	15
	.long	__Z15DoGirlNinjaPains
	.long	_s_GirlNinjaPain+64
	.globl	_s_GirlNinjaSit
	.align 32
_s_GirlNinjaSit:
	.word	5211
	.space 2
	.long	10
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaSit
	.word	5212
	.space 2
	.long	10
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaSit+16
	.word	5213
	.space 2
	.long	10
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaSit+32
	.word	5214
	.space 2
	.long	10
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaSit+48
	.word	5215
	.space 2
	.long	10
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaSit+64
	.globl	_s_GirlNinjaRise
	.align 32
_s_GirlNinjaRise:
	.word	5211
	.space 2
	.long	10
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaRise+16
	.word	5162
	.space 2
	.long	10
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaRise+32
	.word	0
	.space 2
	.long	0
	.long	0
	.long	_sg_GirlNinjaRun
	.word	5212
	.space 2
	.long	10
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaRise+64
	.word	5166
	.space 2
	.long	10
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaRise+80
	.word	0
	.space 2
	.long	0
	.long	0
	.long	_sg_GirlNinjaRun
	.word	5213
	.space 2
	.long	10
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaRise+112
	.word	5170
	.space 2
	.long	10
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaRise+128
	.word	0
	.space 2
	.long	0
	.long	0
	.long	_sg_GirlNinjaRun
	.word	5214
	.space 2
	.long	10
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaRise+160
	.word	5174
	.space 2
	.long	10
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaRise+176
	.word	0
	.space 2
	.long	0
	.long	0
	.long	_sg_GirlNinjaRun
	.word	5215
	.space 2
	.long	10
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaRise+208
	.word	5178
	.space 2
	.long	10
	.long	__Z13NullGirlNinjas
	.long	_s_GirlNinjaRise+224
	.word	0
	.space 2
	.long	0
	.long	0
	.long	_sg_GirlNinjaRun
	.globl	_s_GirlNinjaFall
	.align 32
_s_GirlNinjaFall:
	.word	5227
	.space 2
	.long	16
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaFall+16
	.word	5228
	.space 2
	.long	16
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaFall+16
	.word	5231
	.space 2
	.long	16
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaFall+48
	.word	5232
	.space 2
	.long	16
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaFall+48
	.word	5235
	.space 2
	.long	16
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaFall+80
	.word	5236
	.space 2
	.long	16
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaFall+80
	.word	5239
	.space 2
	.long	16
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaFall+112
	.word	5240
	.space 2
	.long	16
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaFall+112
	.word	5243
	.space 2
	.long	16
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaFall+144
	.word	5244
	.space 2
	.long	16
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaFall+144
	.globl	_s_GirlNinjaJump
	.align 32
_s_GirlNinjaJump:
	.word	5226
	.space 2
	.long	24
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaJump+16
	.word	5227
	.space 2
	.long	24
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaJump+16
	.word	5230
	.space 2
	.long	24
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaJump+48
	.word	5231
	.space 2
	.long	24
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaJump+48
	.word	5234
	.space 2
	.long	24
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaJump+80
	.word	5235
	.space 2
	.long	24
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaJump+80
	.word	5238
	.space 2
	.long	24
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaJump+112
	.word	5239
	.space 2
	.long	24
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaJump+112
	.word	5242
	.space 2
	.long	24
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaJump+144
	.word	5243
	.space 2
	.long	24
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaJump+144
	.globl	_s_GirlNinjaStand
	.align 32
_s_GirlNinjaStand:
	.word	5162
	.space 2
	.long	10
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaStand
	.word	5166
	.space 2
	.long	10
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaStand+16
	.word	5170
	.space 2
	.long	10
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaStand+32
	.word	5174
	.space 2
	.long	10
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaStand+48
	.word	5178
	.space 2
	.long	10
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaStand+64
	.globl	_GirlNinjaCloseRange
	.align 4
_GirlNinjaCloseRange:
	.word	900
	.space 2
	.long	__Z15InitActorAttacks
	.word	1024
	.space 2
	.long	__Z19InitActorRepositions
	.globl	_GirlNinjaLostTarget
	.align 4
_GirlNinjaLostTarget:
	.word	900
	.space 2
	.long	__Z19InitActorFindPlayers
	.word	1024
	.space 2
	.long	__Z21InitActorWanderArounds
	.globl	_GirlNinjaEvasive
	.align 4
_GirlNinjaEvasive:
	.word	400
	.space 2
	.long	__Z13InitActorDucks
	.word	1024
	.space 2
	.long	0
	.globl	_GirlNinjaSurprised
	.align 4
_GirlNinjaSurprised:
	.word	701
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	1024
	.space 2
	.long	__Z15InitActorDecides
	.globl	_GirlNinjaBroadcast
	.align 4
_GirlNinjaBroadcast:
	.word	6
	.space 2
	.long	__Z21InitActorAmbientNoises
	.word	1024
	.space 2
	.long	__Z15InitActorDecides
	.globl	_GirlNinjaOffense
	.align 4
_GirlNinjaOffense:
	.word	499
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	1024
	.space 2
	.long	__Z15InitActorAttacks
	.globl	_GirlNinjaBattle
	.align 4
_GirlNinjaBattle:
	.word	499
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	1024
	.space 2
	.long	__Z15InitActorAttacks
	.globl	_sg_GirlNinjaDuck
	.align 4
_sg_GirlNinjaDuck:
	.long	_s_GirlNinjaDuck
	.long	_s_GirlNinjaDuck+32
	.long	_s_GirlNinjaDuck+64
	.long	_s_GirlNinjaDuck+96
	.long	_s_GirlNinjaDuck+128
	.globl	_sg_GirlNinjaSticky
	.align 4
_sg_GirlNinjaSticky:
	.long	_s_GirlNinjaSticky
	.long	_s_GirlNinjaSticky+96
	.long	_s_GirlNinjaSticky+192
	.long	_s_GirlNinjaSticky+288
	.long	_s_GirlNinjaSticky+384
	.globl	_sg_GirlNinjaCrossbow
	.align 4
_sg_GirlNinjaCrossbow:
	.long	_s_GirlNinjaCrossbow
	.long	_s_GirlNinjaCrossbow+80
	.long	_s_GirlNinjaCrossbow+160
	.long	_s_GirlNinjaCrossbow+240
	.long	_s_GirlNinjaCrossbow+320
	.globl	_sg_GirlNinjaDeathFall
	.align 4
_sg_GirlNinjaDeathFall:
	.long	_s_GirlNinjaDeathFall
	.globl	_sg_GirlNinjaDeathJump
	.align 4
_sg_GirlNinjaDeathJump:
	.long	_s_GirlNinjaDeathJump
	.globl	_sg_GirlNinjaDead
	.align 4
_sg_GirlNinjaDead:
	.long	_s_GirlNinjaDead
	.globl	_sg_GirlNinjaDie
	.align 4
_sg_GirlNinjaDie:
	.long	_s_GirlNinjaDie
	.globl	_sg_GirlNinjaPain
	.align 4
_sg_GirlNinjaPain:
	.long	_s_GirlNinjaPain
	.long	_s_GirlNinjaPain+16
	.long	_s_GirlNinjaPain+32
	.long	_s_GirlNinjaPain+48
	.long	_s_GirlNinjaPain+64
	.globl	_sg_GirlNinjaSit
	.align 4
_sg_GirlNinjaSit:
	.long	_s_GirlNinjaSit
	.long	_s_GirlNinjaSit+16
	.long	_s_GirlNinjaSit+32
	.long	_s_GirlNinjaSit+48
	.long	_s_GirlNinjaSit+64
	.globl	_sg_GirlNinjaRise
	.align 4
_sg_GirlNinjaRise:
	.long	_s_GirlNinjaRise
	.long	_s_GirlNinjaRise+48
	.long	_s_GirlNinjaRise+96
	.long	_s_GirlNinjaRise+144
	.long	_s_GirlNinjaRise+192
	.globl	_sg_GirlNinjaFall
	.align 4
_sg_GirlNinjaFall:
	.long	_s_GirlNinjaFall
	.long	_s_GirlNinjaFall+32
	.long	_s_GirlNinjaFall+64
	.long	_s_GirlNinjaFall+96
	.long	_s_GirlNinjaFall+128
	.globl	_sg_GirlNinjaJump
	.align 4
_sg_GirlNinjaJump:
	.long	_s_GirlNinjaJump
	.long	_s_GirlNinjaJump+32
	.long	_s_GirlNinjaJump+64
	.long	_s_GirlNinjaJump+96
	.long	_s_GirlNinjaJump+128
	.globl	_sg_GirlNinjaStand
	.align 4
_sg_GirlNinjaStand:
	.long	_s_GirlNinjaStand
	.long	_s_GirlNinjaStand+16
	.long	_s_GirlNinjaStand+32
	.long	_s_GirlNinjaStand+48
	.long	_s_GirlNinjaStand+64
	.globl	_s_PhosphorExp
	.align 32
_s_PhosphorExp:
	.word	3100
	.space 2
	.long	2
	.long	__Z12NullAnimators
	.space 4
	.word	3101
	.space 2
	.long	2
	.long	__Z12NullAnimators
	.space 4
	.word	3102
	.space 2
	.long	2
	.long	__Z12NullAnimators
	.space 4
	.word	3103
	.space 2
	.long	2
	.long	__Z12NullAnimators
	.space 4
	.word	3104
	.space 2
	.long	2
	.long	__Z12NullAnimators
	.space 4
	.word	3105
	.space 2
	.long	2
	.long	__Z12NullAnimators
	.space 4
	.word	3106
	.space 2
	.long	2
	.long	__Z12NullAnimators
	.space 4
	.word	3107
	.space 2
	.long	2
	.long	__Z12NullAnimators
	.space 4
	.word	3108
	.space 2
	.long	2
	.long	__Z12NullAnimators
	.space 4
	.word	3109
	.space 2
	.long	2
	.long	__Z12NullAnimators
	.space 4
	.word	3110
	.space 2
	.long	2
	.long	__Z12NullAnimators
	.space 4
	.word	3111
	.space 2
	.long	2
	.long	__Z12NullAnimators
	.space 4
	.word	3112
	.space 2
	.long	2
	.long	__Z12NullAnimators
	.space 4
	.word	3113
	.space 2
	.long	2
	.long	__Z12NullAnimators
	.space 4
	.word	3114
	.space 2
	.long	2
	.long	__Z12NullAnimators
	.space 4
	.word	3115
	.space 2
	.long	2
	.long	__Z12NullAnimators
	.space 4
	.word	3116
	.space 2
	.long	2
	.long	__Z12NullAnimators
	.space 4
	.word	3117
	.space 2
	.long	2
	.long	__Z12NullAnimators
	.space 4
	.word	3118
	.space 2
	.long	2
	.long	__Z12NullAnimators
	.space 4
	.word	3119
	.space 2
	.long	2
	.long	__Z12NullAnimators
	.space 4
	.word	3120
	.space 2
	.long	100
	.long	__Z9DoSuicides
	.long	_s_PhosphorExp
	.globl	_s_BloodSpray
	.align 32
_s_BloodSpray:
	.word	1562
	.space 2
	.long	20
	.long	__Z14BloodSprayFalls
	.space 4
	.word	1563
	.space 2
	.long	20
	.long	__Z14BloodSprayFalls
	.space 4
	.word	1564
	.space 2
	.long	20
	.long	__Z14BloodSprayFalls
	.space 4
	.word	1565
	.space 2
	.long	20
	.long	__Z14BloodSprayFalls
	.space 4
	.word	1565
	.space 2
	.long	100
	.long	__Z9DoSuicides
	.long	_s_BloodSpray
	.globl	_s_BloodSprayDrip
	.align 32
_s_BloodSprayDrip:
	.word	1566
	.space 2
	.long	8
	.long	__Z15DoWallBloodDrips
	.space 4
	.word	1567
	.space 2
	.long	8
	.long	__Z15DoWallBloodDrips
	.space 4
	.word	1568
	.space 2
	.long	8
	.long	__Z15DoWallBloodDrips
	.long	_s_BloodSprayDrip
	.globl	_s_GoreFloorSplash
	.align 32
_s_GoreFloorSplash:
	.word	1710
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	1711
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	1712
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	1713
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	1714
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	1715
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	1715
	.space 2
	.long	8
	.long	__Z9DoSuicides
	.space 4
	.globl	_s_GoreSplash
	.align 32
_s_GoreSplash:
	.word	2410
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	2411
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	2412
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	2413
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	2414
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	2415
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	2415
	.space 2
	.long	8
	.long	__Z9DoSuicides
	.space 4
	.globl	_glad_glDisable
	.bss
	.align 4
_glad_glDisable:
	.space 4
	.globl	_gl
	.align 32
_gl:
	.space 348
	.globl	_frameplace
	.align 4
_frameplace:
	.space 4
	.globl	_mirrorBuffer
	.align 4
_mirrorBuffer:
	.space 4
	.globl	_ylookup
	.align 4
_ylookup:
	.space 4
	.globl	__ZL9mirrorsy1.lto_priv.0
	.align 4
__ZL9mirrorsy1.lto_priv.0:
	.space 4
	.globl	__ZL9mirrorsy2.lto_priv.0
	.align 4
__ZL9mirrorsy2.lto_priv.0:
	.space 4
	.globl	__ZL9mirrorsx2.lto_priv.0
	.align 4
__ZL9mirrorsx2.lto_priv.0:
	.space 4
	.globl	__ZL9mirrorsx1.lto_priv.0
	.align 4
__ZL9mirrorsx1.lto_priv.0:
	.space 4
	.globl	_inpreparemirror
_inpreparemirror:
	.space 1
	.data
	.align 2
_camplayerview:
	.word	1
.lcomm _camloopcnt,4,4
	.globl	_user_quote_time
	.bss
	.align 4
_user_quote_time:
	.space 12
.lcomm _user_quote,1536,32
	.data
	.align 4
__ZZ26GetCompactCTFCaptureScoresPiS_E15frozenBlueScore:
	.long	-1
	.align 4
__ZZ26GetCompactCTFCaptureScoresPiS_E14frozenRedScore:
	.long	-1
.lcomm __ZZ26GetCompactCTFCaptureScoresPiS_E12frozenWinner,4,4
	.globl	_ps_PanelSelectionBox
	.align 4
_ps_PanelSelectionBox:
	.word	2435
	.space 2
	.long	10
	.long	__Z19PanelInvTestSuicideP18PANEL_SPRITEstruct
	.long	_ps_PanelSelectionBox
	.long	0
	.byte	0
	.byte	0
	.space 2
.lcomm _InventoryDisplayString,4,4
.lcomm _InventoryYoff,2,2
.lcomm _InventoryXoff,2,2
.lcomm _InventoryBoxY,2,2
.lcomm _InventoryBoxX,2,2
	.section .rdata,"dr"
	.align 32
_InventoryBarYpos:
	.word	162
	.word	172
	.word	130
	.word	130
	.word	130
	.word	130
	.word	130
	.word	130
	.word	130
	.word	130
	.word	130
	.word	130
	.word	130
	.word	130
	.word	130
	.word	130
	.word	130
	.align 32
_InventoryBarXpos:
	.word	110
	.word	110
	.word	80
	.word	80
	.word	80
	.word	80
	.word	80
	.word	80
	.word	80
	.word	80
	.word	80
	.word	80
	.word	80
	.word	80
	.word	80
	.word	80
	.word	80
	.globl	_DefaultPalette
	.bss
	.align 32
_DefaultPalette:
	.space 8192
	.globl	_s_Caltrops
	.data
	.align 32
_s_Caltrops:
	.word	2217
	.space 2
	.long	8
	.long	__Z10DoCaltropss
	.space 4
	.word	2218
	.space 2
	.long	8
	.long	__Z10DoCaltropss
	.space 4
	.word	2219
	.space 2
	.long	8
	.long	__Z10DoCaltropss
	.long	_s_Caltrops
	.globl	_PlayerLowHealthPainVocs
	.section .rdata,"dr"
	.align 4
_PlayerLowHealthPainVocs:
	.long	383
	.long	384
	.long	385
	.long	386
	.long	387
	.globl	_StatDamageList
	.data
	.align 32
_StatDamageList:
	.word	61
	.word	2
	.word	9
	.word	21
	.word	22
	.word	23
	.word	24
	.word	25
	.word	26
	.word	27
	.word	28
	.word	29
	.word	30
	.word	31
	.word	32
	.word	33
	.word	34
	.word	35
	.word	36
	.word	8
	.globl	_s_ChemBomb
	.align 32
_s_ChemBomb:
	.word	3038
	.space 2
	.long	8
	.long	__Z10DoChemBombs
	.long	_s_ChemBomb+16
	.word	3039
	.space 2
	.long	8
	.long	__Z10DoChemBombs
	.long	_s_ChemBomb+32
	.word	3040
	.space 2
	.long	8
	.long	__Z10DoChemBombs
	.long	_s_ChemBomb+48
	.word	3041
	.space 2
	.long	8
	.long	__Z10DoChemBombs
	.long	_s_ChemBomb+64
	.word	3042
	.space 2
	.long	8
	.long	__Z10DoChemBombs
	.long	_s_ChemBomb
	.section .rdata,"dr"
	.align 4
__ZZL18UpdateSWPWeaponHudP12PLAYERstructP4USERE11ammoNumberX:
	.word	102
	.word	122
	.word	144
	.word	168
	.word	190
	.word	212
	.word	234
	.word	256
	.word	279
	.align 4
__ZZL18UpdateSWPWeaponHudP12PLAYERstructP4USERE7weaponX:
	.word	98
	.word	115
	.word	139
	.word	162
	.word	184
	.word	209
	.word	223
	.word	253
	.word	273
	.word	0
	.align 4
__ZZL18UpdateSWPWeaponHudP12PLAYERstructP4USERE7weaponY:
	.word	184
	.word	186
	.word	186
	.word	185
	.word	187
	.word	186
	.word	186
	.word	184
	.word	185
	.word	0
	.align 32
__ZZL18UpdateSWPWeaponHudP12PLAYERstructP4USERE11weaponScale:
	.long	22000
	.long	20000
	.long	14000
	.long	18000
	.long	20000
	.long	12000
	.long	18000
	.long	16000
	.long	19000
	.long	0
	.align 32
__ZZL18UpdateSWPWeaponHudP12PLAYERstructP4USERE10weaponTile:
	.long	1793
	.long	1794
	.long	1797
	.long	1818
	.long	1817
	.long	2223
	.long	1811
	.long	1815
	.long	1825
	.long	0
	.align 32
__ZZL18UpdateSWPWeaponHudP12PLAYERstructP4USERE5ammoX:
	.long	53
	.long	54
	.long	53
	.long	59
	.long	54
	.long	52
	.long	52
	.long	52
	.long	55
	.long	54
	.long	54
	.long	52
	.long	0
	.long	53
	.long	53
	.long	55
	.long	58
	.long	55
	.long	55
	.long	0
	.align 32
__ZZL18UpdateSWPWeaponHudP12PLAYERstructP4USERE5ammoY:
	.long	184
	.long	180
	.long	182
	.long	180
	.long	179
	.long	180
	.long	180
	.long	180
	.long	178
	.long	181
	.long	181
	.long	181
	.long	0
	.long	184
	.long	182
	.long	180
	.long	178
	.long	178
	.long	178
	.long	0
	.align 32
__ZZL18UpdateSWPWeaponHudP12PLAYERstructP4USERE9ammoScale:
	.long	4000
	.long	32000
	.long	46200
	.long	38000
	.long	32000
	.long	30000
	.long	30000
	.long	30000
	.long	6500
	.long	24200
	.long	32000
	.long	28000
	.long	0
	.long	15000
	.long	44000
	.long	46000
	.long	16000
	.long	6500
	.long	6500
	.long	0
	.align 32
__ZZL18UpdateSWPWeaponHudP12PLAYERstructP4USERE8ammoTile:
	.long	4050
	.long	1793
	.long	1823
	.long	1799
	.long	1800
	.long	1831
	.long	1842
	.long	1812
	.long	2055
	.long	1825
	.long	1819
	.long	1809
	.long	0
	.long	492
	.long	1821
	.long	1798
	.long	2519
	.long	2056
	.long	2057
	.long	0
	.globl	_voc3dend
	.bss
	.align 4
_voc3dend:
	.space 4
	.globl	_HornetPersonality
	.data
	.align 32
_HornetPersonality:
	.long	_HornetBattle
	.long	_HornetOffense
	.long	_HornetBroadcast
	.long	_HornetSurprised
	.long	_HornetEvasive
	.long	_HornetLostTarget
	.long	_HornetCloseRange
	.long	_HornetTouchTarget
	.globl	_HornetActionSet
	.align 32
_HornetActionSet:
	.long	_sg_HornetStand
	.long	_sg_HornetRun
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
	.long	_sg_HornetDie
	.long	0
	.long	_sg_HornetDead
	.long	0
	.long	0
	.long	0
	.space 4
	.word	0
	.space 2
	.long	0
	.space 20
	.word	0
	.space 10
	.long	0
	.space 4
	.long	0
	.long	0
	.globl	_sg_HornetRun
	.align 4
_sg_HornetRun:
	.long	_s_HornetRun
	.long	_s_HornetRun+32
	.long	_s_HornetRun+64
	.long	_s_HornetRun+96
	.long	_s_HornetRun+128
	.globl	_s_HornetDie
	.align 4
_s_HornetDie:
	.word	810
	.space 2
	.long	20
	.long	__Z13DoHornetDeaths
	.long	_s_HornetDie
	.globl	_HornetAttrib
	.align 32
_HornetAttrib:
	.word	300
	.word	350
	.word	375
	.word	400
	.ascii "\0\0\0\0"
	.byte	0
	.space 3
	.long	0
	.long	0
	.long	120
	.long	120
	.long	122
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.space 4
	.globl	_s_HornetRun
	.align 32
_s_HornetRun:
	.word	800
	.space 2
	.long	7
	.long	__Z12DoHornetMoves
	.long	_s_HornetRun+16
	.word	801
	.space 2
	.long	7
	.long	__Z12DoHornetMoves
	.long	_s_HornetRun
	.word	802
	.space 2
	.long	7
	.long	__Z12DoHornetMoves
	.long	_s_HornetRun+48
	.word	803
	.space 2
	.long	7
	.long	__Z12DoHornetMoves
	.long	_s_HornetRun+32
	.word	804
	.space 2
	.long	7
	.long	__Z12DoHornetMoves
	.long	_s_HornetRun+80
	.word	805
	.space 2
	.long	7
	.long	__Z12DoHornetMoves
	.long	_s_HornetRun+64
	.word	806
	.space 2
	.long	7
	.long	__Z12DoHornetMoves
	.long	_s_HornetRun+112
	.word	807
	.space 2
	.long	7
	.long	__Z12DoHornetMoves
	.long	_s_HornetRun+96
	.word	808
	.space 2
	.long	7
	.long	__Z12DoHornetMoves
	.long	_s_HornetRun+144
	.word	809
	.space 2
	.long	7
	.long	__Z12DoHornetMoves
	.long	_s_HornetRun+128
	.globl	_GoroPersonality
	.align 32
_GoroPersonality:
	.long	_GoroBattle
	.long	_GoroOffense
	.long	_GoroBroadcast
	.long	_GoroSurprised
	.long	_GoroEvasive
	.long	_GoroLostTarget
	.long	_GoroCloseRange
	.long	_GoroCloseRange
	.globl	_GoroActionSet
	.align 32
_GoroActionSet:
	.long	_sg_GoroStand
	.long	_sg_GoroRun
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	_sg_GoroPain
	.long	_sg_GoroDie
	.long	0
	.long	_sg_GoroDead
	.long	0
	.long	0
	.long	_sg_GoroChop
	.space 4
	.word	1024
	.space 2
	.long	_sg_GoroSpell
	.space 20
	.word	1024
	.space 10
	.long	0
	.long	0
	.long	0
	.long	0
	.globl	_sg_GoroRun
	.align 4
_sg_GoroRun:
	.long	_s_GoroRun
	.long	_s_GoroRun+64
	.long	_s_GoroRun+128
	.long	_s_GoroRun+192
	.long	_s_GoroRun+256
	.globl	_s_GoroDie
	.align 32
_s_GoroDie:
	.word	1504
	.space 2
	.long	16
	.long	__Z8NullGoros
	.space 4
	.word	1505
	.space 2
	.long	16
	.long	__Z8NullGoros
	.space 4
	.word	1506
	.space 2
	.long	16
	.long	__Z8NullGoros
	.space 4
	.word	1507
	.space 2
	.long	16
	.long	__Z8NullGoros
	.space 4
	.word	1508
	.space 2
	.long	16
	.long	__Z8NullGoros
	.space 4
	.word	1509
	.space 2
	.long	16
	.long	__Z8NullGoros
	.space 4
	.word	1510
	.space 2
	.long	16
	.long	__Z8NullGoros
	.space 4
	.word	1511
	.space 2
	.long	16
	.long	__Z8NullGoros
	.space 4
	.word	1512
	.space 2
	.long	16
	.long	__Z8NullGoros
	.space 4
	.word	1512
	.space 2
	.long	65536
	.long	__Z15QueueFloorBloods
	.space 4
	.word	1512
	.space 2
	.long	16
	.long	__Z13DoActorDebriss
	.space 4
	.globl	_GoroAttrib
	.align 32
_GoroAttrib:
	.word	160
	.word	180
	.word	200
	.word	230
	.ascii "\3\0\376\375"
	.byte	3
	.space 3
	.long	101
	.long	102
	.long	0
	.long	103
	.long	104
	.long	106
	.long	105
	.long	0
	.long	0
	.long	0
	.space 4
	.globl	_s_GoroRun
	.align 32
_s_GoroRun:
	.word	1469
	.space 2
	.long	262162
	.long	__Z10DoGoroMoves
	.long	_s_GoroRun+16
	.word	1470
	.space 2
	.long	262162
	.long	__Z10DoGoroMoves
	.long	_s_GoroRun+32
	.word	1471
	.space 2
	.long	262162
	.long	__Z10DoGoroMoves
	.long	_s_GoroRun+48
	.word	1472
	.space 2
	.long	262162
	.long	__Z10DoGoroMoves
	.long	_s_GoroRun
	.word	1473
	.space 2
	.long	262162
	.long	__Z10DoGoroMoves
	.long	_s_GoroRun+80
	.word	1474
	.space 2
	.long	262162
	.long	__Z10DoGoroMoves
	.long	_s_GoroRun+96
	.word	1475
	.space 2
	.long	262162
	.long	__Z10DoGoroMoves
	.long	_s_GoroRun+112
	.word	1476
	.space 2
	.long	262162
	.long	__Z10DoGoroMoves
	.long	_s_GoroRun+64
	.word	1477
	.space 2
	.long	262162
	.long	__Z10DoGoroMoves
	.long	_s_GoroRun+144
	.word	1478
	.space 2
	.long	262162
	.long	__Z10DoGoroMoves
	.long	_s_GoroRun+160
	.word	1479
	.space 2
	.long	262162
	.long	__Z10DoGoroMoves
	.long	_s_GoroRun+176
	.word	1480
	.space 2
	.long	262162
	.long	__Z10DoGoroMoves
	.long	_s_GoroRun+128
	.word	1481
	.space 2
	.long	262162
	.long	__Z10DoGoroMoves
	.long	_s_GoroRun+208
	.word	1482
	.space 2
	.long	262162
	.long	__Z10DoGoroMoves
	.long	_s_GoroRun+224
	.word	1483
	.space 2
	.long	262162
	.long	__Z10DoGoroMoves
	.long	_s_GoroRun+240
	.word	1484
	.space 2
	.long	262162
	.long	__Z10DoGoroMoves
	.long	_s_GoroRun+192
	.word	1485
	.space 2
	.long	262162
	.long	__Z10DoGoroMoves
	.long	_s_GoroRun+272
	.word	1486
	.space 2
	.long	262162
	.long	__Z10DoGoroMoves
	.long	_s_GoroRun+288
	.word	1487
	.space 2
	.long	262162
	.long	__Z10DoGoroMoves
	.long	_s_GoroRun+304
	.word	1488
	.space 2
	.long	262162
	.long	__Z10DoGoroMoves
	.long	_s_GoroRun+256
	.globl	_GirlNinjaPersonality
	.align 32
_GirlNinjaPersonality:
	.long	_GirlNinjaBattle
	.long	_GirlNinjaOffense
	.long	_GirlNinjaBroadcast
	.long	_GirlNinjaSurprised
	.long	_GirlNinjaEvasive
	.long	_GirlNinjaLostTarget
	.long	_GirlNinjaCloseRange
	.long	_GirlNinjaCloseRange
	.globl	_GirlNinjaActionSet
	.align 32
_GirlNinjaActionSet:
	.long	_sg_GirlNinjaStand
	.long	_sg_GirlNinjaRun
	.long	_sg_GirlNinjaJump
	.long	_sg_GirlNinjaFall
	.long	0
	.long	0
	.long	0
	.long	_sg_GirlNinjaRise
	.long	_sg_GirlNinjaSit
	.long	0
	.long	0
	.long	_sg_GirlNinjaPain
	.long	_sg_GirlNinjaDie
	.long	0
	.long	_sg_GirlNinjaDead
	.long	_sg_GirlNinjaDeathJump
	.long	_sg_GirlNinjaDeathFall
	.long	_sg_GirlNinjaCrossbow
	.long	_sg_GirlNinjaSticky
	.word	800
	.word	1024
	.long	_sg_GirlNinjaCrossbow
	.long	_sg_GirlNinjaSticky
	.space 16
	.word	800
	.word	1024
	.space 8
	.long	0
	.space 4
	.long	_sg_GirlNinjaDuck
	.long	0
	.globl	_GirlNinjaAttrib
	.align 32
_GirlNinjaAttrib:
	.word	120
	.word	140
	.word	160
	.word	190
	.ascii "\4\0\0\376"
	.byte	3
	.space 3
	.long	577
	.long	577
	.long	2
	.long	575
	.long	576
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.space 4
	.globl	_sg_GirlNinjaRun
	.align 4
_sg_GirlNinjaRun:
	.long	_s_GirlNinjaRun
	.long	_s_GirlNinjaRun+64
	.long	_s_GirlNinjaRun+128
	.long	_s_GirlNinjaRun+192
	.long	_s_GirlNinjaRun+256
	.globl	_s_GirlNinjaDie
	.align 32
_s_GirlNinjaDie:
	.word	5197
	.space 2
	.long	60
	.long	__Z13NullGirlNinjas
	.space 4
	.word	5198
	.space 2
	.long	30
	.long	__Z13NullGirlNinjas
	.space 4
	.word	5199
	.space 2
	.long	30
	.long	__Z13NullGirlNinjas
	.space 4
	.word	5200
	.space 2
	.long	30
	.long	__Z13NullGirlNinjas
	.space 4
	.word	5201
	.space 2
	.long	30
	.long	__Z13NullGirlNinjas
	.space 4
	.word	5202
	.space 2
	.long	30
	.long	__Z13NullGirlNinjas
	.space 4
	.word	5203
	.space 2
	.long	30
	.long	__Z13NullGirlNinjas
	.space 4
	.word	5203
	.space 2
	.long	65536
	.long	__Z18DoGirlNinjaSpecials
	.space 4
	.word	5204
	.space 2
	.long	30
	.long	__Z13NullGirlNinjas
	.space 4
	.word	5205
	.space 2
	.long	65536
	.long	__Z15QueueFloorBloods
	.space 4
	.word	5205
	.space 2
	.long	30
	.long	__Z13DoActorDebriss
	.space 4
	.globl	_s_GirlNinjaRun
	.align 32
_s_GirlNinjaRun:
	.word	5162
	.space 2
	.long	262162
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaRun+16
	.word	5163
	.space 2
	.long	262162
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaRun+32
	.word	5164
	.space 2
	.long	262162
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaRun+48
	.word	5165
	.space 2
	.long	262162
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaRun
	.word	5166
	.space 2
	.long	262162
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaRun+80
	.word	5167
	.space 2
	.long	262162
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaRun+96
	.word	5168
	.space 2
	.long	262162
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaRun+112
	.word	5169
	.space 2
	.long	262162
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaRun+64
	.word	5170
	.space 2
	.long	262162
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaRun+144
	.word	5171
	.space 2
	.long	262162
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaRun+160
	.word	5172
	.space 2
	.long	262162
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaRun+176
	.word	5173
	.space 2
	.long	262162
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaRun+128
	.word	5174
	.space 2
	.long	262162
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaRun+208
	.word	5175
	.space 2
	.long	262162
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaRun+224
	.word	5176
	.space 2
	.long	262162
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaRun+240
	.word	5177
	.space 2
	.long	262162
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaRun+192
	.word	5178
	.space 2
	.long	262162
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaRun+272
	.word	5179
	.space 2
	.long	262162
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaRun+288
	.word	5180
	.space 2
	.long	262162
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaRun+304
	.word	5181
	.space 2
	.long	262162
	.long	__Z15DoGirlNinjaMoves
	.long	_s_GirlNinjaRun+256
	.globl	_DemoDone
	.bss
_DemoDone:
	.space 1
	.globl	_DemoRunningTics
	.align 4
_DemoRunningTics:
	.space 4
.lcomm __ZZ12DemoPlayBackvE7buf_ndx,4,4
	.globl	_MV_Installed
	.align 4
_MV_Installed:
	.space 4
	.globl	__ZL10MV_Handles.lto_priv.0
	.align 4
__ZL10MV_Handles.lto_priv.0:
	.space 4
	.globl	_SongVoice
	.data
	.align 4
_SongVoice:
	.long	-1
	.globl	_SongType
	.bss
	.align 4
_SongType:
	.space 4
	.globl	_LoadGameFromDemo
_LoadGameFromDemo:
	.space 1
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	__Z7LoadAnms;	.scl	2;	.type	32;	.endef
	.def	_kopen4load.part.0;	.scl	2;	.type	32;	.endef
	.def	_videoClearViewableArea;	.scl	2;	.type	32;	.endef
	.def	_rotatesprite_.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_videoNextPage;	.scl	2;	.type	32;	.endef
	.def	_handleevents.isra.0;	.scl	2;	.type	32;	.endef
	.def	_CONTROL_GetUserInput.isra.0;	.scl	2;	.type	32;	.endef
	.def	_CONTROL_ClearUserInput;	.scl	2;	.type	32;	.endef
	.def	_videoSetPalette;	.scl	2;	.type	32;	.endef
	.def	__Z14kread_internaliPviPKhPKiPi;	.scl	2;	.type	32;	.endef
	.def	_kclose;	.scl	2;	.type	32;	.endef
	.def	_paletteSetColorTable;	.scl	2;	.type	32;	.endef
	.def	_snprintf;	.scl	2;	.type	32;	.endef
	.def	__Z17MNU_MeasureStringPKcPsS1_;	.scl	2;	.type	32;	.endef
	.def	__Z14MNU_DrawStringssPKcss;	.scl	2;	.type	32;	.endef
	.def	__Z22DisplayMiniBarSmStringP12PLAYERstructsssPKc;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	__Z27DemoAutoRecordCapturePlayersPKcs;	.scl	2;	.type	32;	.endef
	.def	__Z32DemoAutoRecordScoreboardCompletes;	.scl	2;	.type	32;	.endef
	.def	__Z8DemoTermv;	.scl	2;	.type	32;	.endef
	.def	__Z18videoCaptureScreenPKcc;	.scl	2;	.type	32;	.endef
	.def	__Z10getpacketsv;	.scl	2;	.type	32;	.endef
	.def	__Z17ScreenCaptureKeysv.part.0;	.scl	2;	.type	32;	.endef
	.def	_MV_KillAllVoices.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z8StopSongv.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z17Terminate3DSoundsv;	.scl	2;	.type	32;	.endef
	.def	__Z8PlaySongPcihh.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z10OSD_PrintfPKcz;	.scl	2;	.type	32;	.endef
	.def	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15DoActorSetSpeedsh;	.scl	2;	.type	32;	.endef
	.def	__Z9SpawnUserssP11STATEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z9PlaySoundiPiS_S_i;	.scl	2;	.type	32;	.endef
	.def	__Z19DoActorSectorDamages;	.scl	2;	.type	32;	.endef
	.def	__Z16KeepActorOnFloors;	.scl	2;	.type	32;	.endef
	.def	__Z12DoActorSlides;	.scl	2;	.type	32;	.endef
	.def	__Z13DoActorDecides;	.scl	2;	.type	32;	.endef
	.def	__Z16ActorFollowTrackss.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z11DoActorFalls;	.scl	2;	.type	32;	.endef
	.def	__Z11DoActorJumps;	.scl	2;	.type	32;	.endef
	.def	__Z10move_actorsiii.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z19InitActorRepositions;	.scl	2;	.type	32;	.endef
	.def	__Z13NewStateGroupsPP11STATEstruct.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z6DoFalls;	.scl	2;	.type	32;	.endef
	.def	__Z11move_spritesiiiiiji;	.scl	2;	.type	32;	.endef
	.def	__Z17DoFindGroundPoints;	.scl	2;	.type	32;	.endef
	.def	__Z18DeleteNoSoundOwners;	.scl	2;	.type	32;	.endef
	.def	__Z22DoActorPickClosePlayers;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_renderSetTarget;	.scl	2;	.type	32;	.endef
	.def	_renderDrawRoomsQ16.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z14analyzespritesiiih;	.scl	2;	.type	32;	.endef
	.def	_renderDrawMasks;	.scl	2;	.type	32;	.endef
	.def	_renderRestoreTarget;	.scl	2;	.type	32;	.endef
	.def	__Z15gltexinvalidateiii;	.scl	2;	.type	32;	.endef
	.def	_tileLoad.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z7_AssertPKcS0_j;	.scl	2;	.type	32;	.endef
	.def	__Z12move_missilesiiiiiji;	.scl	2;	.type	32;	.endef
	.def	__Z18MissileHitDiveAreas;	.scl	2;	.type	32;	.endef
	.def	@getangle@8;	.scl	2;	.type	32;	.endef
	.def	__Z10WallBouncess;	.scl	2;	.type	32;	.endef
	.def	__Z11SpawnSpritessP11STATEstructsiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z8SetOwnerss;	.scl	2;	.type	32;	.endef
	.def	__Z11SpawnBubbles;	.scl	2;	.type	32;	.endef
	.def	__Z10KillSprites;	.scl	2;	.type	32;	.endef
	.def	__Z11SlopeBouncesPh;	.scl	2;	.type	32;	.endef
	.def	__Z16SpawnFireballExps;	.scl	2;	.type	32;	.endef
	.def	__Z19SpawnFireballFlamesss;	.scl	2;	.type	32;	.endef
	.def	__Z18DoFlamesDamageTests;	.scl	2;	.type	32;	.endef
	.def	__Z12HitBreakWallP10walltypev7iiiss.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z10SetFadeAmtP12PLAYERstructsh;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_videoFadePalette.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z15DisplaySmStringP12PLAYERstructsssPKc;	.scl	2;	.type	32;	.endef
	.def	__Z22pSpawnFullScreenSpriteP12PLAYERstructssii;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	__Z18PlayerUpdateHealthP12PLAYERstructs;	.scl	2;	.type	32;	.endef
	.def	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z10DoChemBombs;	.scl	2;	.type	32;	.endef
	.def	__Z13MissileSetPossPFisEi;	.scl	2;	.type	32;	.endef
	.def	__Z9FAFcanseeiiisiiis;	.scl	2;	.type	32;	.endef
	.def	__Z9GetDamagesss;	.scl	2;	.type	32;	.endef
	.def	__Z9ActorPains;	.scl	2;	.type	32;	.endef
	.def	__Z21SpawnFlashBombOnActors.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z10DoCaltropss;	.scl	2;	.type	32;	.endef
	.def	__Z19SetupSpriteForBreakP12spritetypev7.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z19DoPlayerDivePaletteP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii;	.scl	2;	.type	32;	.endef
	.def	__Z20DisplayMiniBarNumberssi;	.scl	2;	.type	32;	.endef
	.def	__Z15SetRedrawScreenP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	__Z13MNU_InitMenusv;	.scl	2;	.type	32;	.endef
	.def	__Z9MenuLevelv;	.scl	2;	.type	32;	.endef
	.def	__Z12OSD_DispatchPKcb;	.scl	2;	.type	32;	.endef
	.def	__Z9InitLevelv;	.scl	2;	.type	32;	.endef
	.def	__Z12InitRunLevelv;	.scl	2;	.type	32;	.endef
	.def	__Z11InitNetVarsv;	.scl	2;	.type	32;	.endef
	.def	__Z9timerIniti.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z16timerUpdateClockv;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	__ZL15DemoReadPacketsP9SW_PACKETii.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZL18controlPollDevicesP11ControlInfo.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL26controlUpdateGameFunctionsv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z12domovethingsv;	.scl	2;	.type	32;	.endef
	.def	__Z17MNU_CheckForMenusv;	.scl	2;	.type	32;	.endef
	.def	__Z17PutStringInfoLineP12PLAYERstructPKc;	.scl	2;	.type	32;	.endef
	.def	__Z9SetBorderP12PLAYERstructi;	.scl	2;	.type	32;	.endef
	.def	_videoSetGameMode;	.scl	2;	.type	32;	.endef
	.def	__Z10drawscreenP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z12netgetpacketPiPh.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z14TerminateLevelv;	.scl	2;	.type	32;	.endef
	.def	__Z13TerminateGamev;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
	.def	__Z13netsendpacketiPhi;	.scl	2;	.type	32;	.endef
	.def	__Z8RunLevelv;	.scl	2;	.type	32;	.endef
	.def	__Z15COVER_SetReverbi;	.scl	2;	.type	32;	.endef
	.def	__Z16waitforeverybodyv.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z11BonusScreenv;	.scl	2;	.type	32;	.endef
	.def	__Z7playanms;	.scl	2;	.type	32;	.endef
	.def	__Z7FadeOuthj.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_renderPrepareMirror;	.scl	2;	.type	32;	.endef
	.def	_videoBeginDrawing;	.scl	2;	.type	32;	.endef
	.def	_videoEndDrawing;	.scl	2;	.type	32;	.endef
	.def	__Z10SetFragBarP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	_wm_msgbox.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z26buildgl_outputDebugMessagehPKcz.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_inthash_find;	.scl	2;	.type	32;	.endef
	.def	_inthash_add;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_getzsofslopeptr;	.scl	2;	.type	32;	.endef
	.def	__Z14QueueWallBloodss;	.scl	2;	.type	32;	.endef
	.def	__Z10FAF_Sectors;	.scl	2;	.type	32;	.endef
	.def	__Z13DoActorDebriss;	.scl	2;	.type	32;	.endef
	.def	__Z15InitHornetStings;	.scl	2;	.type	32;	.endef
	.def	__Z19InitActorMoveClosers;	.scl	2;	.type	32;	.endef
	.def	__Z19InitActorFindPlayers;	.scl	2;	.type	32;	.endef
	.def	__Z21InitActorWanderArounds;	.scl	2;	.type	32;	.endef
	.def	__Z15InitActorDecides;	.scl	2;	.type	32;	.endef
	.def	__Z19InitActorAlertNoises;	.scl	2;	.type	32;	.endef
	.def	__Z21InitActorAmbientNoises;	.scl	2;	.type	32;	.endef
	.def	__Z16InitActorRunAways;	.scl	2;	.type	32;	.endef
	.def	__Z17InitEnemyFireballs;	.scl	2;	.type	32;	.endef
	.def	__Z12InitGoroChops;	.scl	2;	.type	32;	.endef
	.def	__Z15InitActorAttacks;	.scl	2;	.type	32;	.endef
	.def	__Z14InitActorEvades;	.scl	2;	.type	32;	.endef
	.def	__Z20InitActorAttackNoises;	.scl	2;	.type	32;	.endef
	.def	__Z13InitEnemyMines;	.scl	2;	.type	32;	.endef
	.def	__Z17InitEnemyCrossbows;	.scl	2;	.type	32;	.endef
	.def	__Z16DoActorDeathMoves;	.scl	2;	.type	32;	.endef
	.def	__Z15QueueFloorBloods;	.scl	2;	.type	32;	.endef
	.def	__Z13InitActorDucks;	.scl	2;	.type	32;	.endef
	.def	__Z12NullAnimators;	.scl	2;	.type	32;	.endef
	.def	__Z9DoSuicides;	.scl	2;	.type	32;	.endef
	.def	__Z14BloodSprayFalls;	.scl	2;	.type	32;	.endef
