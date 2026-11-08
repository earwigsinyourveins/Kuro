	.file	"<artificial>"
	.text
	.p2align 4
	.def	__ZL21artGetIndexedFileNamei;	.scl	3;	.type	32;	.endef
__ZL21artGetIndexedFileNamei:
LFB0:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	$-858993459, %esi
	movl	%eax, %ecx
	mull	%esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%edx, %ebx
	shrl	$3, %ebx
	cmpl	$199, %ecx
	jle	L2
	subl	$200, %ecx
	addl	$28, %ebx
	movl	%ecx, %eax
	mull	%esi
	shrl	$3, %edx
	leal	(%edx,%edx,4), %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	__ZL13mapartfnXXofs, %eax
	addl	$48, %ecx
	movb	%cl, __ZL14mapartfilename+1(%eax)
	movb	%bl, __ZL14mapartfilename(%eax)
	movl	$__ZL14mapartfilename, %eax
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
L2:
	.cfi_restore_state
	leal	(%ebx,%ebx,4), %edx
	movl	%ecx, %eax
	addl	%edx, %edx
	subl	%edx, %eax
	addl	$48, %eax
	movb	%al, __ZL11artfilename.lto_priv.0+7
	movl	%ebx, %eax
	mull	%esi
	shrl	$3, %edx
	leal	(%edx,%edx,4), %eax
	addl	%eax, %eax
	subl	%eax, %ebx
	movl	$1374389535, %eax
	mull	%ecx
	addl	$48, %ebx
	movl	$__ZL11artfilename.lto_priv.0, %eax
	movb	%bl, __ZL11artfilename.lto_priv.0+6
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	shrl	$5, %edx
	addl	$48, %edx
	movb	%dl, __ZL11artfilename.lto_priv.0+5
	ret
	.cfi_endproc
LFE0:
	.p2align 4
	.def	__ZL14tileSoftDeletei;	.scl	3;	.type	32;	.endef
__ZL14tileSoftDeletei:
LFB2:
	.cfi_startproc
	movl	$0, _tilesiz(,%eax,4)
	movl	%eax, %edx
	movl	%eax, %ecx
	andl	$7, %edx
	sarl	$3, %ecx
	movb	$0, _picsiz(%eax)
	movzbl	__ZL8pow2char.lto_priv.13(%edx), %edx
	movb	$1, _walock(%eax)
	movl	$0, _waloff(,%eax,4)
	notl	%edx
	movb	$0, _picanm+4(%eax,%eax,4)
	andb	%dl, _faketile(%ecx)
	movl	$0, _picanm(%eax,%eax,4)
	ret
	.cfi_endproc
LFE2:
	.p2align 4
	.def	_texcache_freeptrs.part.0;	.scl	3;	.type	32;	.endef
_texcache_freeptrs.part.0:
LFB3:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	_texcache+32828, %eax
	movl	_texcache+40, %edx
	testl	%eax, %eax
	jle	L8
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%ebp, 16(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	jmp	L14
	.p2align 5
	.p2align 4,,10
	.p2align 3
L9:
	addl	$1, %ebx
	cmpl	%ebx, %eax
	jle	L18
L14:
	movl	(%edx,%ebx,4), %ecx
	leal	0(,%ebx,4), %esi
	testl	%ecx, %ecx
	je	L9
	subl	$1, %eax
	leal	(%edx,%esi), %edi
	jmp	L13
	.p2align 4
	.p2align 4,,10
	.p2align 3
L11:
	subl	$1, %eax
	jb	L19
L13:
	cmpl	%eax, %ebx
	je	L11
	leal	(%edx,%eax,4), %ecx
	movl	(%edi), %ebp
	cmpl	%ebp, (%ecx)
	jne	L11
	movl	$0, (%ecx)
	movl	_texcache+40, %edx
	leal	(%edx,%esi), %edi
	subl	$1, %eax
	jnb	L13
L19:
	movl	(%edi), %eax
	movl	_g_sm_heap, %ecx
	addl	$1, %ebx
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	movl	_texcache+40, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	(%eax,%esi), %eax
	movl	$0, (%eax)
	movl	_texcache+40, %eax
	movl	_g_sm_heap, %ecx
	movl	(%eax,%esi), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	movl	_texcache+40, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	$0, (%eax,%esi)
	movl	_texcache+32828, %eax
	movl	_texcache+40, %edx
	cmpl	%ebx, %eax
	jg	L14
L18:
	movl	4(%esp), %ebx
	.cfi_restore 3
	movl	8(%esp), %esi
	.cfi_restore 6
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	16(%esp), %ebp
	.cfi_restore 5
L8:
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	$0, _texcache+40
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE3:
	.p2align 4
	.def	_videoSetGamma.part.0;	.scl	3;	.type	32;	.endef
_videoSetGamma.part.0:
LFB4:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	andl	$-8, %esp
	subl	$1584, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movss	_g_videoGamma, %xmm7
	movss	LC0, %xmm0
	comiss	%xmm7, %xmm0
	movss	%xmm7, 16(%esp)
	ja	L71
	movss	%xmm0, 16(%esp)
L21:
	movss	LC6, %xmm0
	movaps	%xmm0, %xmm7
	divss	16(%esp), %xmm7
	movss	%xmm7, 24(%esp)
	subss	%xmm0, %xmm7
	movss	%xmm7, 44(%esp)
	flds	44(%esp)
L23:
	movss	_g_videoContrast, %xmm0
	movss	LC4, %xmm2
	comiss	%xmm0, %xmm2
	jbe	L25
	movss	LC7, %xmm1
	movaps	%xmm1, %xmm2
	cmpltss	%xmm0, %xmm2
	andps	%xmm2, %xmm0
	andnps	%xmm1, %xmm2
	orps	%xmm0, %xmm2
L25:
	fstpl	8(%esp)
	flds	LC8
	movss	%xmm2, 44(%esp)
	fstpl	(%esp)
	call	_pow
	movss	16(%esp), %xmm7
	ucomiss	__ZL10lastvidgcb.lto_priv.0, %xmm7
	movss	44(%esp), %xmm2
	jp	L27
	jne	L27
	ucomiss	__ZL10lastvidgcb.lto_priv.0+4, %xmm2
	jp	L27
	movl	$0, %eax
	je	L72
L27:
	movss	LC6, %xmm0
	movss	16(%esp), %xmm7
	movaps	%xmm2, %xmm3
	ucomiss	%xmm0, %xmm7
	subss	%xmm0, %xmm3
	mulss	LC9, %xmm3
	jp	L31
	jne	L31
	fstp	%st(0)
	movss	LC11, %xmm4
	xorl	%eax, %eax
	leal	48(%esp), %ebx
	xorps	%xmm5, %xmm5
	movss	LC5, %xmm1
	jmp	L37
	.p2align 4,,10
	.p2align 3
L66:
	movaps	%xmm1, %xmm0
L33:
	cvttss2sil	%xmm0, %edx
L35:
	movw	%dx, 1024(%ebx,%eax,2)
	movw	%dx, 512(%ebx,%eax,2)
	movw	%dx, (%ebx,%eax,2)
	addl	$1, %eax
	cmpl	$256, %eax
	je	L38
L37:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm2, %xmm0
	subss	%xmm3, %xmm0
	maxss	%xmm5, %xmm0
	mulss	%xmm4, %xmm0
	comiss	%xmm0, %xmm1
	jbe	L66
	xorl	%edx, %edx
	comiss	%xmm5, %xmm0
	jbe	L35
	jmp	L33
L38:
	movl	__ZL10sdl_window.lto_priv.0, %eax
	testl	%eax, %eax
	je	L54
	leal	1072(%esp), %edx
	movl	%ebx, 4(%esp)
	movl	%edx, 12(%esp)
	leal	560(%esp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, (%esp)
	movss	%xmm2, 44(%esp)
	call	_SDL_SetWindowGammaRamp
	movss	44(%esp), %xmm2
	testl	%eax, %eax
	js	L44
	movss	%xmm2, __ZL10lastvidgcb.lto_priv.0+4
	movss	16(%esp), %xmm7
	movl	$1, _gammabrightness
	movss	%xmm7, __ZL10lastvidgcb.lto_priv.0
	jmp	L20
L72:
	fstp	%st(0)
L20:
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
L54:
	.cfi_restore_state
	movl	$-2147483648, %eax
L44:
	movl	$0, _gammabrightness
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
L71:
	.cfi_restore_state
	comiss	LC3, %xmm7
	ja	L21
	movss	LC2, %xmm7
	flds	LC1
	movss	%xmm7, 24(%esp)
	movss	LC3, %xmm7
	movss	%xmm7, 16(%esp)
	jmp	L23
L31:
	movss	LC11, %xmm4
	fstps	20(%esp)
	xorl	%esi, %esi
	leal	48(%esp), %ebx
	movss	LC5, %xmm1
	jmp	L43
	.p2align 4,,10
	.p2align 3
L68:
	movaps	%xmm1, %xmm0
L39:
	cvttss2sil	%xmm0, %eax
L41:
	movw	%ax, 1024(%ebx,%esi,2)
	movw	%ax, 512(%ebx,%esi,2)
	movw	%ax, (%ebx,%esi,2)
	addl	$1, %esi
	cmpl	$256, %esi
	je	L38
L43:
	xorps	%xmm0, %xmm0
	flds	24(%esp)
	movss	%xmm1, 28(%esp)
	cvtsi2ssl	%esi, %xmm0
	movss	%xmm4, 32(%esp)
	movss	%xmm2, 36(%esp)
	fstpl	8(%esp)
	movss	%xmm3, 40(%esp)
	mulss	%xmm2, %xmm0
	subss	%xmm3, %xmm0
	maxss	LC10, %xmm0
	movss	%xmm0, 44(%esp)
	flds	44(%esp)
	fstpl	(%esp)
	call	_pow
	movss	32(%esp), %xmm4
	movss	28(%esp), %xmm1
	fstps	44(%esp)
	movss	44(%esp), %xmm0
	divss	20(%esp), %xmm0
	movss	40(%esp), %xmm3
	mulss	%xmm4, %xmm0
	movss	36(%esp), %xmm2
	comiss	%xmm0, %xmm1
	jbe	L68
	xorps	%xmm6, %xmm6
	xorl	%eax, %eax
	comiss	%xmm6, %xmm0
	jbe	L41
	jmp	L39
	.cfi_endproc
LFE4:
	.p2align 4
	.def	__ZL15texcache_tryartiiii;	.scl	3;	.type	32;	.endef
__ZL15texcache_tryartiiii:
LFB5:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%edx, %edi
	movl	%eax, %edx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%eax, %esi
	andl	$8191, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	movzwl	_hictinting(,%edi,8), %eax
	movl	%ecx, 16(%esp)
	testw	$264, %ax
	je	L74
	leal	8(%edx), %ebp
	andl	$-513, 52(%esp)
	movl	_texcache+12(,%ebp,4), %ebx
	testb	$16, %al
	je	L115
	movl	%edi, 20(%esp)
	movl	%edi, 24(%esp)
	testl	%ebx, %ebx
	jne	L85
	jmp	L77
	.p2align 4
	.p2align 4,,10
	.p2align 3
L80:
	movl	(%ebx), %ebx
	testl	%ebx, %ebx
	je	L77
L85:
	movswl	32(%ebx), %eax
	cmpl	%eax, %esi
	jne	L80
	movzbl	38(%ebx), %eax
	cmpl	%eax, %edi
	jne	L80
	movzbl	39(%ebx), %eax
	cmpl	%eax, 16(%esp)
	jne	L80
	movzwl	34(%ebx), %edx
	testb	$2, %dh
	jne	L80
	movl	52(%esp), %ecx
	movl	%edx, %eax
	andl	$259, %eax
	notl	%ecx
	movl	%eax, 28(%esp)
	movl	%ecx, %eax
	sall	$7, %ecx
	sall	$8, %eax
	andl	%ecx, %eax
	movl	52(%esp), %ecx
	andl	$256, %eax
	sarl	$2, %ecx
	andl	$1, %ecx
	orl	%ecx, %eax
	cmpl	%eax, 28(%esp)
	jne	L80
	cmpl	$4, _rendmode
	je	L83
	cmpb	$0, _glinfo+29
	js	L116
L83:
	xorl	%eax, %eax
L84:
	movl	%edx, %ecx
	shrw	$5, %cx
	andl	$1, %ecx
	cmpb	%cl, %al
	jne	L80
	movl	%edx, %eax
	jmp	L82
	.p2align 4,,10
	.p2align 3
L115:
	movl	%edi, 24(%esp)
	movl	$0, 20(%esp)
	testl	%ebx, %ebx
	jne	L85
	.p2align 4
	.p2align 3
L77:
	movl	$44, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 48
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L88
	movl	$0, 28(%eax)
	movl	$0, 32(%eax)
	movl	$0, 36(%eax)
	movl	$0, 40(%eax)
	xorl	%eax, %eax
L89:
	movl	$0, (%ebx,%eax)
	movl	$0, 4(%ebx,%eax)
	movl	$0, 8(%ebx,%eax)
	movl	$0, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L89
	movl	52(%esp), %eax
	movl	24(%esp), %ecx
	movl	$1, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	20(%esp), %edx
	movl	%eax, 4(%esp)
	movl	16(%esp), %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__Z13gloadtile_artiiiiiP8pthtyp_ti
	movl	%edi, %eax
	movb	%al, 38(%ebx)
	movl	_texcache+12(,%ebp,4), %eax
	movl	%eax, (%ebx)
	movl	%ebx, _texcache+12(,%ebp,4)
L73:
	addl	$32, %esp
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
L74:
	.cfi_restore_state
	leal	8(%edx), %ebp
	movl	_texcache+12(,%ebp,4), %ebx
	testl	%ebx, %ebx
	je	L78
	movl	52(%esp), %edx
	sarl	$2, %edx
	testb	$2, 53(%esp)
	jne	L79
	jmp	L117
	.p2align 4
	.p2align 4,,10
	.p2align 3
L86:
	movl	(%ebx), %ebx
	testl	%ebx, %ebx
	je	L78
L79:
	movswl	32(%ebx), %eax
	cmpl	%esi, %eax
	jne	L86
	movzwl	34(%ebx), %eax
	testb	$2, %ah
	je	L86
	movl	%edx, %ecx
	xorl	%eax, %ecx
	andl	$1, %ecx
	jne	L86
	movl	%edi, 20(%esp)
	movl	$-1, 24(%esp)
L82:
	testb	$-128, %al
	je	L73
	andb	$127, %al
	movl	24(%esp), %ecx
	movl	20(%esp), %edx
	movw	%ax, 34(%ebx)
	xorl	%eax, %eax
	cmpb	$-57, _tilefilenum(%esi)
	seta	%al
	movl	%ebx, 8(%esp)
	movl	%eax, 12(%esp)
	movl	52(%esp), %eax
	movl	%eax, 4(%esp)
	movl	16(%esp), %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__Z13gloadtile_artiiiiiP8pthtyp_ti
	movl	%edi, %eax
	movb	%al, 38(%ebx)
	jmp	L73
	.p2align 4,,10
	.p2align 3
L78:
	movl	%edi, 20(%esp)
	movl	$-1, 24(%esp)
	jmp	L77
L88:
	movl	$44, %eax
	call	__Z13handle_memerri
L117:
	movl	%edi, 20(%esp)
	movl	$-1, 24(%esp)
	jmp	L85
L116:
	movl	_usehightile, %eax
	testl	%eax, %eax
	jne	L83
	cmpl	$1, _r_npotwallmode
	jne	L83
	movswl	_tilesiz+2(,%esi,4), %ecx
	movl	52(%esp), %eax
	shrl	$5, %eax
	cmpl	$1, %ecx
	movl	%eax, 28(%esp)
	setg	%al
	andb	28(%esp), %al
	je	L84
	leal	-1(%ecx), %eax
	testl	%ecx, %eax
	setne	%al
	jmp	L84
	.cfi_endproc
LFE5:
	.p2align 4
	.def	__ZL19texcache_closefilesv;	.scl	3;	.type	32;	.endef
__ZL19texcache_closefilesv:
LFB6:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	_texcache+28, %eax
	testl	%eax, %eax
	je	L119
	movl	%eax, (%esp)
	call	_fclose
	movl	$0, _texcache+28
L119:
	movl	_texcache+24, %eax
	testl	%eax, %eax
	je	L120
	movl	%eax, (%esp)
	call	_fclose
	movl	$0, _texcache+24
L120:
	movl	_texcache+40, %eax
	movl	$0, _texcache+32832
	testl	%eax, %eax
	je	L118
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	jmp	_texcache_freeptrs.part.0
	.p2align 4,,10
	.p2align 3
L118:
	.cfi_restore_state
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE6:
	.section .rdata,"dr"
LC13:
	.ascii "fullscreen\0"
LC14:
	.ascii "windowed\0"
LC15:
	.ascii "SDL_GL_CreateContext\0"
LC16:
	.ascii "SDL_GL_CreateWindow\0"
	.align 4
LC17:
	.ascii "Setting video mode %dx%d (%d-bpp %s).\0"
LC18:
	.ascii "source/build/src/sdlayer.cpp\0"
LC19:
	.ascii "\0"
LC20:
	.ascii "Kuro\0"
LC21:
	.ascii "%s%1d\0"
	.align 4
LC22:
	.ascii "Unable to set video mode: %s failed: %s.\0"
LC23:
	.ascii "glGetString\0"
LC24:
	.ascii "glCullFace\0"
LC25:
	.ascii "glFrontFace\0"
LC26:
	.ascii "glHint\0"
LC27:
	.ascii "glLineWidth\0"
LC28:
	.ascii "glPointSize\0"
LC29:
	.ascii "glPolygonMode\0"
LC30:
	.ascii "glScissor\0"
LC31:
	.ascii "glTexParameterf\0"
LC32:
	.ascii "glTexParameterfv\0"
LC33:
	.ascii "glTexParameteri\0"
LC34:
	.ascii "glTexParameteriv\0"
LC35:
	.ascii "glTexImage1D\0"
LC36:
	.ascii "glTexImage2D\0"
LC37:
	.ascii "glDrawBuffer\0"
LC38:
	.ascii "glClear\0"
LC39:
	.ascii "glClearColor\0"
LC40:
	.ascii "glClearStencil\0"
LC41:
	.ascii "glClearDepth\0"
LC42:
	.ascii "glStencilMask\0"
LC43:
	.ascii "glColorMask\0"
LC44:
	.ascii "glDepthMask\0"
LC45:
	.ascii "glDisable\0"
LC46:
	.ascii "glEnable\0"
LC47:
	.ascii "glFinish\0"
LC48:
	.ascii "glFlush\0"
LC49:
	.ascii "glBlendFunc\0"
LC50:
	.ascii "glLogicOp\0"
LC51:
	.ascii "glStencilFunc\0"
LC52:
	.ascii "glStencilOp\0"
LC53:
	.ascii "glDepthFunc\0"
LC54:
	.ascii "glPixelStoref\0"
LC55:
	.ascii "glPixelStorei\0"
LC56:
	.ascii "glReadBuffer\0"
LC57:
	.ascii "glReadPixels\0"
LC58:
	.ascii "glGetBooleanv\0"
LC59:
	.ascii "glGetDoublev\0"
LC60:
	.ascii "glGetError\0"
LC61:
	.ascii "glGetFloatv\0"
LC62:
	.ascii "glGetIntegerv\0"
LC63:
	.ascii "glGetTexImage\0"
LC64:
	.ascii "glGetTexParameterfv\0"
LC65:
	.ascii "glGetTexParameteriv\0"
LC66:
	.ascii "glGetTexLevelParameterfv\0"
LC67:
	.ascii "glGetTexLevelParameteriv\0"
LC68:
	.ascii "glIsEnabled\0"
LC69:
	.ascii "glDepthRange\0"
LC70:
	.ascii "glViewport\0"
LC71:
	.ascii "glNewList\0"
LC72:
	.ascii "glEndList\0"
LC73:
	.ascii "glCallList\0"
LC74:
	.ascii "glCallLists\0"
LC75:
	.ascii "glDeleteLists\0"
LC76:
	.ascii "glGenLists\0"
LC77:
	.ascii "glListBase\0"
LC78:
	.ascii "glBegin\0"
LC79:
	.ascii "glBitmap\0"
LC80:
	.ascii "glColor3b\0"
LC81:
	.ascii "glColor3bv\0"
LC82:
	.ascii "glColor3d\0"
LC83:
	.ascii "glColor3dv\0"
LC84:
	.ascii "glColor3f\0"
LC85:
	.ascii "glColor3fv\0"
LC86:
	.ascii "glColor3i\0"
LC87:
	.ascii "glColor3iv\0"
LC88:
	.ascii "glColor3s\0"
LC89:
	.ascii "glColor3sv\0"
LC90:
	.ascii "glColor3ub\0"
LC91:
	.ascii "glColor3ubv\0"
LC92:
	.ascii "glColor3ui\0"
LC93:
	.ascii "glColor3uiv\0"
LC94:
	.ascii "glColor3us\0"
LC95:
	.ascii "glColor3usv\0"
LC96:
	.ascii "glColor4b\0"
LC97:
	.ascii "glColor4bv\0"
LC98:
	.ascii "glColor4d\0"
LC99:
	.ascii "glColor4dv\0"
LC100:
	.ascii "glColor4f\0"
LC101:
	.ascii "glColor4fv\0"
LC102:
	.ascii "glColor4i\0"
LC103:
	.ascii "glColor4iv\0"
LC104:
	.ascii "glColor4s\0"
LC105:
	.ascii "glColor4sv\0"
LC106:
	.ascii "glColor4ub\0"
LC107:
	.ascii "glColor4ubv\0"
LC108:
	.ascii "glColor4ui\0"
LC109:
	.ascii "glColor4uiv\0"
LC110:
	.ascii "glColor4us\0"
LC111:
	.ascii "glColor4usv\0"
LC112:
	.ascii "glEdgeFlag\0"
LC113:
	.ascii "glEdgeFlagv\0"
LC114:
	.ascii "glEnd\0"
LC115:
	.ascii "glIndexd\0"
LC116:
	.ascii "glIndexdv\0"
LC117:
	.ascii "glIndexf\0"
LC118:
	.ascii "glIndexfv\0"
LC119:
	.ascii "glIndexi\0"
LC120:
	.ascii "glIndexiv\0"
LC121:
	.ascii "glIndexs\0"
LC122:
	.ascii "glIndexsv\0"
LC123:
	.ascii "glNormal3b\0"
LC124:
	.ascii "glNormal3bv\0"
LC125:
	.ascii "glNormal3d\0"
LC126:
	.ascii "glNormal3dv\0"
LC127:
	.ascii "glNormal3f\0"
LC128:
	.ascii "glNormal3fv\0"
LC129:
	.ascii "glNormal3i\0"
LC130:
	.ascii "glNormal3iv\0"
LC131:
	.ascii "glNormal3s\0"
LC132:
	.ascii "glNormal3sv\0"
LC133:
	.ascii "glRasterPos2d\0"
LC134:
	.ascii "glRasterPos2dv\0"
LC135:
	.ascii "glRasterPos2f\0"
LC136:
	.ascii "glRasterPos2fv\0"
LC137:
	.ascii "glRasterPos2i\0"
LC138:
	.ascii "glRasterPos2iv\0"
LC139:
	.ascii "glRasterPos2s\0"
LC140:
	.ascii "glRasterPos2sv\0"
LC141:
	.ascii "glRasterPos3d\0"
LC142:
	.ascii "glRasterPos3dv\0"
LC143:
	.ascii "glRasterPos3f\0"
LC144:
	.ascii "glRasterPos3fv\0"
LC145:
	.ascii "glRasterPos3i\0"
LC146:
	.ascii "glRasterPos3iv\0"
LC147:
	.ascii "glRasterPos3s\0"
LC148:
	.ascii "glRasterPos3sv\0"
LC149:
	.ascii "glRasterPos4d\0"
LC150:
	.ascii "glRasterPos4dv\0"
LC151:
	.ascii "glRasterPos4f\0"
LC152:
	.ascii "glRasterPos4fv\0"
LC153:
	.ascii "glRasterPos4i\0"
LC154:
	.ascii "glRasterPos4iv\0"
LC155:
	.ascii "glRasterPos4s\0"
LC156:
	.ascii "glRasterPos4sv\0"
LC157:
	.ascii "glRectd\0"
LC158:
	.ascii "glRectdv\0"
LC159:
	.ascii "glRectf\0"
LC160:
	.ascii "glRectfv\0"
LC161:
	.ascii "glRecti\0"
LC162:
	.ascii "glRectiv\0"
LC163:
	.ascii "glRects\0"
LC164:
	.ascii "glRectsv\0"
LC165:
	.ascii "glTexCoord1d\0"
LC166:
	.ascii "glTexCoord1dv\0"
LC167:
	.ascii "glTexCoord1f\0"
LC168:
	.ascii "glTexCoord1fv\0"
LC169:
	.ascii "glTexCoord1i\0"
LC170:
	.ascii "glTexCoord1iv\0"
LC171:
	.ascii "glTexCoord1s\0"
LC172:
	.ascii "glTexCoord1sv\0"
LC173:
	.ascii "glTexCoord2d\0"
LC174:
	.ascii "glTexCoord2dv\0"
LC175:
	.ascii "glTexCoord2f\0"
LC176:
	.ascii "glTexCoord2fv\0"
LC177:
	.ascii "glTexCoord2i\0"
LC178:
	.ascii "glTexCoord2iv\0"
LC179:
	.ascii "glTexCoord2s\0"
LC180:
	.ascii "glTexCoord2sv\0"
LC181:
	.ascii "glTexCoord3d\0"
LC182:
	.ascii "glTexCoord3dv\0"
LC183:
	.ascii "glTexCoord3f\0"
LC184:
	.ascii "glTexCoord3fv\0"
LC185:
	.ascii "glTexCoord3i\0"
LC186:
	.ascii "glTexCoord3iv\0"
LC187:
	.ascii "glTexCoord3s\0"
LC188:
	.ascii "glTexCoord3sv\0"
LC189:
	.ascii "glTexCoord4d\0"
LC190:
	.ascii "glTexCoord4dv\0"
LC191:
	.ascii "glTexCoord4f\0"
LC192:
	.ascii "glTexCoord4fv\0"
LC193:
	.ascii "glTexCoord4i\0"
LC194:
	.ascii "glTexCoord4iv\0"
LC195:
	.ascii "glTexCoord4s\0"
LC196:
	.ascii "glTexCoord4sv\0"
LC197:
	.ascii "glVertex2d\0"
LC198:
	.ascii "glVertex2dv\0"
LC199:
	.ascii "glVertex2f\0"
LC200:
	.ascii "glVertex2fv\0"
LC201:
	.ascii "glVertex2i\0"
LC202:
	.ascii "glVertex2iv\0"
LC203:
	.ascii "glVertex2s\0"
LC204:
	.ascii "glVertex2sv\0"
LC205:
	.ascii "glVertex3d\0"
LC206:
	.ascii "glVertex3dv\0"
LC207:
	.ascii "glVertex3f\0"
LC208:
	.ascii "glVertex3fv\0"
LC209:
	.ascii "glVertex3i\0"
LC210:
	.ascii "glVertex3iv\0"
LC211:
	.ascii "glVertex3s\0"
LC212:
	.ascii "glVertex3sv\0"
LC213:
	.ascii "glVertex4d\0"
LC214:
	.ascii "glVertex4dv\0"
LC215:
	.ascii "glVertex4f\0"
LC216:
	.ascii "glVertex4fv\0"
LC217:
	.ascii "glVertex4i\0"
LC218:
	.ascii "glVertex4iv\0"
LC219:
	.ascii "glVertex4s\0"
LC220:
	.ascii "glVertex4sv\0"
LC221:
	.ascii "glClipPlane\0"
LC222:
	.ascii "glColorMaterial\0"
LC223:
	.ascii "glFogf\0"
LC224:
	.ascii "glFogfv\0"
LC225:
	.ascii "glFogi\0"
LC226:
	.ascii "glFogiv\0"
LC227:
	.ascii "glLightf\0"
LC228:
	.ascii "glLightfv\0"
LC229:
	.ascii "glLighti\0"
LC230:
	.ascii "glLightiv\0"
LC231:
	.ascii "glLightModelf\0"
LC232:
	.ascii "glLightModelfv\0"
LC233:
	.ascii "glLightModeli\0"
LC234:
	.ascii "glLightModeliv\0"
LC235:
	.ascii "glLineStipple\0"
LC236:
	.ascii "glMaterialf\0"
LC237:
	.ascii "glMaterialfv\0"
LC238:
	.ascii "glMateriali\0"
LC239:
	.ascii "glMaterialiv\0"
LC240:
	.ascii "glPolygonStipple\0"
LC241:
	.ascii "glShadeModel\0"
LC242:
	.ascii "glTexEnvf\0"
LC243:
	.ascii "glTexEnvfv\0"
LC244:
	.ascii "glTexEnvi\0"
LC245:
	.ascii "glTexEnviv\0"
LC246:
	.ascii "glTexGend\0"
LC247:
	.ascii "glTexGendv\0"
LC248:
	.ascii "glTexGenf\0"
LC249:
	.ascii "glTexGenfv\0"
LC250:
	.ascii "glTexGeni\0"
LC251:
	.ascii "glTexGeniv\0"
LC252:
	.ascii "glFeedbackBuffer\0"
LC253:
	.ascii "glSelectBuffer\0"
LC254:
	.ascii "glRenderMode\0"
LC255:
	.ascii "glInitNames\0"
LC256:
	.ascii "glLoadName\0"
LC257:
	.ascii "glPassThrough\0"
LC258:
	.ascii "glPopName\0"
LC259:
	.ascii "glPushName\0"
LC260:
	.ascii "glClearAccum\0"
LC261:
	.ascii "glClearIndex\0"
LC262:
	.ascii "glIndexMask\0"
LC263:
	.ascii "glAccum\0"
LC264:
	.ascii "glPopAttrib\0"
LC265:
	.ascii "glPushAttrib\0"
LC266:
	.ascii "glMap1d\0"
LC267:
	.ascii "glMap1f\0"
LC268:
	.ascii "glMap2d\0"
LC269:
	.ascii "glMap2f\0"
LC270:
	.ascii "glMapGrid1d\0"
LC271:
	.ascii "glMapGrid1f\0"
LC272:
	.ascii "glMapGrid2d\0"
LC273:
	.ascii "glMapGrid2f\0"
LC274:
	.ascii "glEvalCoord1d\0"
LC275:
	.ascii "glEvalCoord1dv\0"
LC276:
	.ascii "glEvalCoord1f\0"
LC277:
	.ascii "glEvalCoord1fv\0"
LC278:
	.ascii "glEvalCoord2d\0"
LC279:
	.ascii "glEvalCoord2dv\0"
LC280:
	.ascii "glEvalCoord2f\0"
LC281:
	.ascii "glEvalCoord2fv\0"
LC282:
	.ascii "glEvalMesh1\0"
LC283:
	.ascii "glEvalPoint1\0"
LC284:
	.ascii "glEvalMesh2\0"
LC285:
	.ascii "glEvalPoint2\0"
LC286:
	.ascii "glAlphaFunc\0"
LC287:
	.ascii "glPixelZoom\0"
LC288:
	.ascii "glPixelTransferf\0"
LC289:
	.ascii "glPixelTransferi\0"
LC290:
	.ascii "glPixelMapfv\0"
LC291:
	.ascii "glPixelMapuiv\0"
LC292:
	.ascii "glPixelMapusv\0"
LC293:
	.ascii "glCopyPixels\0"
LC294:
	.ascii "glDrawPixels\0"
LC295:
	.ascii "glGetClipPlane\0"
LC296:
	.ascii "glGetLightfv\0"
LC297:
	.ascii "glGetLightiv\0"
LC298:
	.ascii "glGetMapdv\0"
LC299:
	.ascii "glGetMapfv\0"
LC300:
	.ascii "glGetMapiv\0"
LC301:
	.ascii "glGetMaterialfv\0"
LC302:
	.ascii "glGetMaterialiv\0"
LC303:
	.ascii "glGetPixelMapfv\0"
LC304:
	.ascii "glGetPixelMapuiv\0"
LC305:
	.ascii "glGetPixelMapusv\0"
LC306:
	.ascii "glGetPolygonStipple\0"
LC307:
	.ascii "glGetTexEnvfv\0"
LC308:
	.ascii "glGetTexEnviv\0"
LC309:
	.ascii "glGetTexGendv\0"
LC310:
	.ascii "glGetTexGenfv\0"
LC311:
	.ascii "glGetTexGeniv\0"
LC312:
	.ascii "glIsList\0"
LC313:
	.ascii "glFrustum\0"
LC314:
	.ascii "glLoadIdentity\0"
LC315:
	.ascii "glLoadMatrixf\0"
LC316:
	.ascii "glLoadMatrixd\0"
LC317:
	.ascii "glMatrixMode\0"
LC318:
	.ascii "glMultMatrixf\0"
LC319:
	.ascii "glMultMatrixd\0"
LC320:
	.ascii "glOrtho\0"
LC321:
	.ascii "glPopMatrix\0"
LC322:
	.ascii "glPushMatrix\0"
LC323:
	.ascii "glRotated\0"
LC324:
	.ascii "glRotatef\0"
LC325:
	.ascii "glScaled\0"
LC326:
	.ascii "glScalef\0"
LC327:
	.ascii "glTranslated\0"
LC328:
	.ascii "glTranslatef\0"
LC329:
	.ascii "glDrawRangeElements\0"
LC330:
	.ascii "glTexImage3D\0"
LC331:
	.ascii "glTexSubImage3D\0"
LC332:
	.ascii "glCopyTexSubImage3D\0"
LC333:
	.ascii "glUniformMatrix2x3fv\0"
LC334:
	.ascii "glUniformMatrix3x2fv\0"
LC335:
	.ascii "glUniformMatrix2x4fv\0"
LC336:
	.ascii "glUniformMatrix4x2fv\0"
LC337:
	.ascii "glUniformMatrix3x4fv\0"
LC338:
	.ascii "glUniformMatrix4x3fv\0"
LC339:
	.ascii "glBufferStorage\0"
LC340:
	.ascii "glClipControl\0"
LC341:
	.ascii "glDebugMessageControlARB\0"
LC342:
	.ascii "glDebugMessageInsertARB\0"
LC343:
	.ascii "glDebugMessageCallbackARB\0"
LC344:
	.ascii "glGetDebugMessageLogARB\0"
LC345:
	.ascii "glMapBufferRange\0"
LC346:
	.ascii "glFlushMappedBufferRange\0"
LC347:
	.ascii "glGenSamplers\0"
LC348:
	.ascii "glDeleteSamplers\0"
LC349:
	.ascii "glIsSampler\0"
LC350:
	.ascii "glBindSampler\0"
LC351:
	.ascii "glSamplerParameteri\0"
LC352:
	.ascii "glSamplerParameteriv\0"
LC353:
	.ascii "glSamplerParameterf\0"
LC354:
	.ascii "glSamplerParameterfv\0"
LC355:
	.ascii "glSamplerParameterIiv\0"
LC356:
	.ascii "glSamplerParameterIuiv\0"
LC357:
	.ascii "glGetSamplerParameteriv\0"
LC358:
	.ascii "glGetSamplerParameterIiv\0"
LC359:
	.ascii "glGetSamplerParameterfv\0"
LC360:
	.ascii "glGetSamplerParameterIuiv\0"
LC361:
	.ascii "glFenceSync\0"
LC362:
	.ascii "glIsSync\0"
LC363:
	.ascii "glDeleteSync\0"
LC364:
	.ascii "glClientWaitSync\0"
LC365:
	.ascii "glWaitSync\0"
LC366:
	.ascii "glGetInteger64v\0"
LC367:
	.ascii "glGetSynciv\0"
LC368:
	.ascii "glQueryCounter\0"
LC369:
	.ascii "glGetQueryObjecti64v\0"
LC370:
	.ascii "glGetQueryObjectui64v\0"
LC371:
	.ascii "glBindVertexArray\0"
LC372:
	.ascii "glDeleteVertexArrays\0"
LC373:
	.ascii "glGenVertexArrays\0"
LC374:
	.ascii "glIsVertexArray\0"
LC375:
	.ascii "glFogCoordfEXT\0"
LC376:
	.ascii "glFogCoordfvEXT\0"
LC377:
	.ascii "glFogCoorddEXT\0"
LC378:
	.ascii "glFogCoorddvEXT\0"
LC379:
	.ascii "glFogCoordPointerEXT\0"
LC380:
	.ascii "glIsRenderbufferEXT\0"
LC381:
	.ascii "glBindRenderbufferEXT\0"
LC382:
	.ascii "glDeleteRenderbuffersEXT\0"
LC383:
	.ascii "glGenRenderbuffersEXT\0"
LC384:
	.ascii "glRenderbufferStorageEXT\0"
	.align 4
LC385:
	.ascii "glGetRenderbufferParameterivEXT\0"
LC386:
	.ascii "glIsFramebufferEXT\0"
LC387:
	.ascii "glBindFramebufferEXT\0"
LC388:
	.ascii "glDeleteFramebuffersEXT\0"
LC389:
	.ascii "glGenFramebuffersEXT\0"
LC390:
	.ascii "glCheckFramebufferStatusEXT\0"
LC391:
	.ascii "glFramebufferTexture1DEXT\0"
LC392:
	.ascii "glFramebufferTexture2DEXT\0"
LC393:
	.ascii "glFramebufferTexture3DEXT\0"
LC394:
	.ascii "glFramebufferRenderbufferEXT\0"
	.align 4
LC395:
	.ascii "glGetFramebufferAttachmentParameterivEXT\0"
LC396:
	.ascii "glGenerateMipmapEXT\0"
LC397:
	.ascii "glGetGraphicsResetStatus\0"
LC398:
	.ascii "glReadnPixels\0"
LC399:
	.ascii "glGetnUniformfv\0"
LC400:
	.ascii "glGetnUniformiv\0"
LC401:
	.ascii "glGetnUniformuiv\0"
LC402:
	.ascii "glGetGraphicsResetStatusKHR\0"
LC403:
	.ascii "glReadnPixelsKHR\0"
LC404:
	.ascii "glGetnUniformfvKHR\0"
LC405:
	.ascii "glGetnUniformivKHR\0"
LC406:
	.ascii "glGetnUniformuivKHR\0"
LC407:
	.ascii "glFogFuncSGIS\0"
LC408:
	.ascii "glGetFogFuncSGIS\0"
	.align 4
LC409:
	.ascii "Video driver does not support OpenGL version 2 or greater; all OpenGL modes are unavailable.\0"
LC410:
	.ascii "windows\0"
LC411:
	.ascii "cocoa\0"
LC412:
	.ascii "x11\0"
LC413:
	.ascii "DIVE\0"
LC414:
	.ascii "imgui.ini\0"
LC415:
	.ascii "imgui_log.txt\0"
LC450:
	.ascii "VMAN\0"
LC451:
	.ascii "imgui_impl_sdl2\0"
LC453:
	.ascii "1\0"
LC454:
	.ascii "SDL_MOUSE_FOCUS_CLICKTHROUGH\0"
LC455:
	.ascii "SDL_IME_SHOW_UI\0"
LC456:
	.ascii "0\0"
LC457:
	.ascii "SDL_MOUSE_AUTO_CAPTURE\0"
LC458:
	.ascii "opengl32.dll\0"
LC459:
	.ascii "wglGetProcAddress\0"
LC460:
	.ascii "%d.%d\0"
	.align 4
LC461:
	.ascii "Failed to initialize OpenGL loader!\12\0"
LC462:
	.ascii "imgui_impl_opengl3\0"
LC463:
	.ascii "GL_ARB_clip_control\0"
LC466:
	.ascii "ProggyClean.ttf, %dpx\0"
	.align 4
LC467:
	.ascii "Unable to set video mode: SDL_CreateWindow failed: %s\12\0"
	.align 4
LC468:
	.ascii "Unable to set video mode: SDL_GetWindowSurface failed: %s\12\0"
	.text
	.p2align 4
	.globl	_videoSetMode
	.def	_videoSetMode;	.scl	2;	.type	32;	.endef
_videoSetMode:
LFB8:
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
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	movl	%ecx, %esi
	pushl	%ebx
	subl	$556, %esp
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	(%edi), %ebx
	movl	%ecx, -480(%ebp)
	leal	-460(%ebp), %ecx
	movl	%eax, -464(%ebp)
	leal	-464(%ebp), %eax
	movl	%edx, -468(%ebp)
	leal	-468(%ebp), %edx
	movl	$0, -460(%ebp)
	movl	%ecx, 4(%esp)
	movl	%esi, %ecx
	movl	%ebx, (%esp)
	call	__Z22setvideomode_sdlcommonPiS_iiS_.constprop.0
	movl	%eax, %esi
	cmpl	$1, %eax
	je	L130
	testl	%eax, %eax
	je	L131
L281:
	movl	$-1, %eax
L129:
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
L131:
	.cfi_restore_state
	movl	-460(%ebp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	movl	-480(%ebp), %ecx
	movl	-468(%ebp), %edx
	movl	-464(%ebp), %eax
	call	__Z26setvideomode_sdlcommonpostiiiii
	negl	%eax
	sbbl	%eax, %eax
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
L130:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	-464(%ebp), %ecx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%ecx, -484(%ebp)
	cmpl	$1, %eax
	jle	L133
	testb	$1, %bl
	movl	$LC14, %eax
	movl	$LC13, %edx
	cmovne	%edx, %eax
	movl	%eax, 28(%esp)
	movl	-480(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-468(%ebp), %eax
	movl	%ecx, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$LC17, 12(%esp)
	movl	$1919, 8(%esp)
	movl	$LC18, 4(%esp)
	movl	$2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L133:
	movl	__ZL10sdl_window.lto_priv.0, %edi
	testl	%edi, %edi
	je	L135
	movl	-460(%ebp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	movl	-480(%ebp), %ecx
	movl	-468(%ebp), %edx
	movl	-484(%ebp), %eax
	call	__Z26setvideomode_sdlcommonpostiiiii
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
L135:
	.cfi_restore_state
	call	_SDL_GetNumVideoDisplays
	movl	_r_displayindex, %edx
	cmpl	%edx, %eax
	movl	$0, %eax
	cmovle	%eax, %edx
	leal	-452(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	%edx, -488(%ebp)
	call	_SDL_GetDesktopDisplayMode
	movl	-484(%ebp), %edx
	cmpl	%edx, -448(%ebp)
	movl	_r_borderless, %eax
	movl	-488(%ebp), %edx
	je	L405
L137:
	xorl	%ecx, %ecx
	cmpl	$1, %eax
	sete	%cl
	sall	$4, %ecx
	movl	%ecx, -488(%ebp)
L138:
	cmpl	$8, -480(%ebp)
	jg	L139
	cmpb	$0, _nogl
	je	L140
	movl	_GLOBALHIDE, %ecx
	movl	-468(%ebp), %eax
	testl	%ecx, %ecx
	je	L274
	movl	-488(%ebp), %ecx
	orl	$8, %ecx
	cmpb	$0, _g_windowPosValid
	je	L275
	movl	_g_windowPos+4, %esi
	movl	_g_windowPos, %edx
L276:
	movl	%ecx, 20(%esp)
L403:
	movl	%eax, 16(%esp)
	movl	-484(%ebp), %eax
	movl	%esi, 8(%esp)
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	$LC19, (%esp)
	call	_SDL_CreateWindow
	movl	%eax, __ZL10sdl_window.lto_priv.0
	testl	%eax, %eax
	je	L406
	movl	%eax, (%esp)
	call	_SDL_GetWindowSurface
	movl	%eax, __ZL11sdl_surface.lto_priv.0
	testl	%eax, %eax
	je	L407
L273:
	movl	-460(%ebp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	movl	-480(%ebp), %ecx
	movl	-468(%ebp), %edx
	movl	-484(%ebp), %eax
	call	__Z26setvideomode_sdlcommonpostiiiii
	movl	$1, %eax
	call	__Z24windowsHandleFocusChangei
	xorl	%eax, %eax
	jmp	L129
	.p2align 4,,10
	.p2align 3
L139:
	movl	$-1, %eax
	cmpb	$0, _nogl
	jne	L129
L140:
	movl	$20, -432(%ebp)
	movl	-488(%ebp), %edi
	movl	$4, -428(%ebp)
	movl	$25, -424(%ebp)
	movl	$1, -420(%ebp)
	movl	$5, -416(%ebp)
	movl	$1, -412(%ebp)
	movl	$7, -408(%ebp)
	movl	$1, -404(%ebp)
	movl	$15, -400(%ebp)
	movl	$1, -396(%ebp)
	movl	$6, -392(%ebp)
	movl	$24, -388(%ebp)
	movl	%edx, -492(%ebp)
	movl	%ebx, -520(%ebp)
	leal	-432(%ebp), %ebx
	.p2align 4
	.p2align 3
L143:
	movl	4(%ebx), %eax
	addl	$8, %ebx
	movl	%eax, 4(%esp)
	movl	-8(%ebx), %eax
	movl	%eax, (%esp)
	call	_SDL_GL_SetAttribute
	leal	-384(%ebp), %eax
	cmpl	%ebx, %eax
	jne	L143
	movl	_GLOBALHIDE, %ecx
	movl	%edi, -488(%ebp)
	movl	%edi, %eax
	movl	-492(%ebp), %edx
	movl	-520(%ebp), %ebx
	movl	-468(%ebp), %edi
	testl	%ecx, %ecx
	je	L144
	orl	$10, %eax
	movl	%eax, %ecx
	cmpb	$0, _g_windowPosValid
	je	L151
L404:
	movl	_g_windowPos+4, %eax
	movl	_g_windowPos, %edx
L152:
	movl	%ecx, 20(%esp)
	movl	%edi, 16(%esp)
	movl	-484(%ebp), %ecx
	movl	%eax, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 4(%esp)
	movl	$LC19, (%esp)
	call	_SDL_CreateWindow
	movl	%eax, __ZL10sdl_window.lto_priv.0
L147:
	testl	%eax, %eax
	je	L153
	movl	%eax, (%esp)
	call	_SDL_GL_CreateContext
	movl	__ZL10sdl_window.lto_priv.0, %edx
	movl	%eax, __ZL11sdl_context.lto_priv.0
	testl	%edx, %edx
	je	L153
	testl	%eax, %eax
	je	L153
L154:
	movl	$0, _GLVersion
	movl	$0, _GLVersion+4
	movl	$LC23, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glGetString
	testl	%eax, %eax
	je	L157
	movl	$7938, (%esp)
	call	*%eax
	subl	$4, %esp
	testl	%eax, %eax
	je	L157
	call	__ZL11find_coreGLv.lto_priv.0
	movl	_GLAD_GL_VERSION_1_0, %eax
	testl	%eax, %eax
	je	L158
	movl	$LC24, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glCullFace
	movl	$LC25, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glFrontFace
	movl	$LC26, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glHint
	movl	$LC27, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC28, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC29, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glPolygonMode
	movl	$LC30, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC31, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glTexParameterf
	movl	$LC32, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC33, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glTexParameteri
	movl	$LC34, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC35, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC36, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glTexImage2D
	movl	$LC37, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glDrawBuffer
	movl	$LC38, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glClear
	movl	$LC39, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glClearColor
	movl	$LC40, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glClearStencil
	movl	$LC41, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC42, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC43, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glColorMask
	movl	$LC44, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glDepthMask
	movl	$LC45, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glDisable
	movl	$LC46, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glEnable
	movl	$LC47, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glFinish
	movl	$LC48, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC49, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glBlendFunc
	movl	$LC50, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC51, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glStencilFunc
	movl	$LC52, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glStencilOp
	movl	$LC53, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glDepthFunc
	movl	$LC54, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC55, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glPixelStorei
	movl	$LC56, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glReadBuffer
	movl	$LC57, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glReadPixels
	movl	$LC58, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC59, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC60, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glGetError
	movl	$LC61, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glGetFloatv
	movl	$LC62, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glGetIntegerv
	movl	$LC23, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glGetString
	movl	$LC63, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC64, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC65, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC66, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC67, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glGetTexLevelParameteriv
	movl	$LC68, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC69, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC70, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glViewport
	movl	$LC71, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC72, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC73, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC74, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC75, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC76, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC77, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC78, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glBegin
	movl	$LC79, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC80, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC81, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC82, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC83, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC84, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glColor3f
	movl	$LC85, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC86, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC87, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC88, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC89, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC90, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC91, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC92, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC93, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC94, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC95, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC96, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC97, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC98, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC99, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC100, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glColor4f
	movl	$LC101, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC102, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC103, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC104, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC105, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC106, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glColor4ub
	movl	$LC107, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC108, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC109, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC110, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC111, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC112, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC113, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC114, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glEnd
	movl	$LC115, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC116, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC117, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC118, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC119, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC120, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC121, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC122, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC123, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC124, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC125, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC126, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC127, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glNormal3f
	movl	$LC128, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC129, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC130, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC131, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC132, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC133, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC134, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC135, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC136, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC137, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC138, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC139, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC140, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC141, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC142, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC143, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC144, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC145, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC146, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC147, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC148, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC149, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC150, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC151, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC152, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC153, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC154, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC155, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC156, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC157, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC158, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC159, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC160, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC161, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glRecti
	movl	$LC162, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC163, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC164, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC165, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC166, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC167, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC168, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC169, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC170, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC171, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC172, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC173, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC174, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC175, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glTexCoord2f
	movl	$LC176, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC177, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC178, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC179, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC180, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC181, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC182, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC183, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC184, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC185, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC186, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC187, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC188, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC189, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC190, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC191, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC192, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC193, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC194, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC195, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC196, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC197, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC198, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC199, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glVertex2f
	movl	$LC200, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC201, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glVertex2i
	movl	$LC202, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC203, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC204, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC205, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC206, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC207, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC208, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glVertex3fv
	movl	$LC209, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC210, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC211, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC212, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC213, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC214, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC215, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC216, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC217, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC218, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC219, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC220, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC221, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glClipPlane
	movl	$LC222, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC223, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glFogf
	movl	$LC224, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glFogfv
	movl	$LC225, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glFogi
	movl	$LC226, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC227, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC228, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glLightfv
	movl	$LC229, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC230, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC231, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC232, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC233, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC234, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC235, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC236, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC237, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC238, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC239, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC240, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC241, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glShadeModel
	movl	$LC242, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glTexEnvf
	movl	$LC243, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC244, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC245, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC246, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC247, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC248, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC249, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC250, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC251, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC252, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC253, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC254, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC255, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC256, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC257, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC258, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC259, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC260, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC261, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC262, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC263, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC264, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glPopAttrib
	movl	$LC265, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glPushAttrib
	movl	$LC266, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC267, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC268, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC269, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC270, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC271, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC272, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC273, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC274, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC275, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC276, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC277, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC278, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC279, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC280, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC281, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC282, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC283, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC284, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC285, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC286, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glAlphaFunc
	movl	$LC287, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC288, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC289, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC290, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC291, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC292, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC293, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC294, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC295, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC296, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC297, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC298, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC299, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC300, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC301, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC302, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC303, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC304, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC305, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC306, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC307, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC308, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC309, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC310, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC311, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC312, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC313, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC314, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glLoadIdentity
	movl	$LC315, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glLoadMatrixf
	movl	$LC316, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC317, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glMatrixMode
	movl	$LC318, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glMultMatrixf
	movl	$LC319, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC320, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glOrtho
	movl	$LC321, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glPopMatrix
	movl	$LC322, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glPushMatrix
	movl	$LC323, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC324, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glRotatef
	movl	$LC325, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC326, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glScalef
	movl	$LC327, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC328, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glTranslatef
L158:
	call	__ZL19load_GL_VERSION_1_1PFPvPKcE.constprop.0
	movl	_GLAD_GL_VERSION_1_2, %eax
	testl	%eax, %eax
	je	L159
	movl	$LC329, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC330, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glTexImage3D
	movl	$LC331, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC332, (%esp)
	call	_SDL_GL_GetProcAddress
L159:
	call	__ZL19load_GL_VERSION_1_3PFPvPKcE.constprop.0
	call	__ZL19load_GL_VERSION_1_4PFPvPKcE.constprop.0
	call	__ZL19load_GL_VERSION_1_5PFPvPKcE.constprop.0
	call	__ZL19load_GL_VERSION_2_0PFPvPKcE.constprop.0
	movl	_GLAD_GL_VERSION_2_1, %ecx
	testl	%ecx, %ecx
	je	L160
	movl	$LC333, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC334, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC335, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC336, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC337, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC338, (%esp)
	call	_SDL_GL_GetProcAddress
L160:
	call	__ZL19load_GL_VERSION_3_0PFPvPKcE.constprop.0
	call	__ZL17find_extensionsGLv.lto_priv.0
	testl	%eax, %eax
	je	L157
	movl	_GLAD_GL_ARB_buffer_storage, %edx
	testl	%edx, %edx
	je	L161
	movl	$LC339, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glBufferStorage
L161:
	movl	_GLAD_GL_ARB_clip_control, %eax
	testl	%eax, %eax
	je	L162
	movl	$LC340, (%esp)
	call	_SDL_GL_GetProcAddress
L162:
	movl	_GLAD_GL_ARB_debug_output, %eax
	testl	%eax, %eax
	je	L163
	movl	$LC341, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC342, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glDebugMessageInsertARB
	movl	$LC343, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC344, (%esp)
	call	_SDL_GL_GetProcAddress
L163:
	movl	_GLAD_GL_ARB_map_buffer_range, %eax
	testl	%eax, %eax
	je	L164
	movl	$LC345, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glMapBufferRange
	movl	$LC346, (%esp)
	call	_SDL_GL_GetProcAddress
L164:
	call	__ZL22load_GL_ARB_robustnessPFPvPKcE.constprop.0
	movl	_GLAD_GL_ARB_sampler_objects, %eax
	testl	%eax, %eax
	je	L165
	movl	$LC347, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glGenSamplers
	movl	$LC348, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC349, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glIsSampler
	movl	$LC350, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glBindSampler
	movl	$LC351, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glSamplerParameteri
	movl	$LC352, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC353, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glSamplerParameterf
	movl	$LC354, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC355, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC356, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC357, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC358, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC359, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC360, (%esp)
	call	_SDL_GL_GetProcAddress
L165:
	movl	_GLAD_GL_ARB_sync, %eax
	testl	%eax, %eax
	je	L166
	movl	$LC361, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glFenceSync
	movl	$LC362, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glIsSync
	movl	$LC363, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glDeleteSync
	movl	$LC364, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glClientWaitSync
	movl	$LC365, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC366, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC367, (%esp)
	call	_SDL_GL_GetProcAddress
L166:
	movl	_GLAD_GL_ARB_timer_query, %ecx
	testl	%ecx, %ecx
	je	L167
	movl	$LC368, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC369, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC370, (%esp)
	call	_SDL_GL_GetProcAddress
L167:
	movl	_GLAD_GL_ARB_vertex_array_object, %edx
	testl	%edx, %edx
	je	L168
	movl	$LC371, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC372, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC373, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC374, (%esp)
	call	_SDL_GL_GetProcAddress
L168:
	movl	_GLAD_GL_EXT_fog_coord, %eax
	testl	%eax, %eax
	je	L169
	movl	$LC375, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC376, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC377, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC378, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC379, (%esp)
	call	_SDL_GL_GetProcAddress
L169:
	movl	_GLAD_GL_EXT_framebuffer_object, %eax
	testl	%eax, %eax
	je	L170
	movl	$LC380, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC381, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC382, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC383, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC384, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC385, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC386, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC387, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glBindFramebufferEXT
	movl	$LC388, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glDeleteFramebuffersEXT
	movl	$LC389, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glGenFramebuffersEXT
	movl	$LC390, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glCheckFramebufferStatusEXT
	movl	$LC391, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC392, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glFramebufferTexture2DEXT
	movl	$LC393, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC394, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC395, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC396, (%esp)
	call	_SDL_GL_GetProcAddress
L170:
	movl	_GLAD_GL_KHR_debug, %eax
	testl	%eax, %eax
	je	L171
	call	__ZL17load_GL_KHR_debugPFPvPKcE.part.0.constprop.0
L171:
	movl	_GLAD_GL_KHR_robustness, %eax
	testl	%eax, %eax
	je	L172
	movl	$LC397, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glGetGraphicsResetStatus
	movl	$LC398, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC399, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC400, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC401, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC402, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glGetGraphicsResetStatusKHR
	movl	$LC403, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC404, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC405, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC406, (%esp)
	call	_SDL_GL_GetProcAddress
L172:
	movl	_GLAD_GL_SGIS_fog_function, %eax
	testl	%eax, %eax
	je	L157
	movl	$LC407, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC408, (%esp)
	call	_SDL_GL_GetProcAddress
	.p2align 4
	.p2align 3
L157:
	cmpl	$1, _GLVersion
	jle	L408
	cmpb	$0, _nogl
	jne	L175
	movl	$LC413, -488(%ebp)
	movss	-488(%ebp), %xmm1
	movss	LC473, %xmm0
	movl	__ZL17vsync_renderlayer.lto_priv.0, %eax
	movl	$LC411, -488(%ebp)
	movss	-488(%ebp), %xmm2
	unpcklps	%xmm1, %xmm0
	movl	__ZZL23sdlayer_getswapintervaliE9intervals.lto_priv.0+4(,%eax,4), %eax
	movss	LC474, %xmm1
	unpcklps	%xmm2, %xmm1
	movaps	%xmm1, %xmm4
	movlhps	%xmm0, %xmm4
	movups	%xmm4, -520(%ebp)
	movl	%eax, (%esp)
	call	_SDL_GL_SetSwapInterval
	movl	__ZL17vsync_renderlayer.lto_priv.0, %eax
	call	__ZL18sdlayer_checkvsynci.lto_priv.0
	movl	%eax, __ZL17vsync_renderlayer.lto_priv.0
	movl	_GImGui, %eax
	movl	%eax, -488(%ebp)
	testl	%eax, %eax
	je	L177
	addl	$1, 188(%eax)
L177:
	movl	$0, 4(%esp)
	movl	$23952, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	$14256, 8(%esp)
	movl	%eax, %edi
	leal	8(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movups	LC416, %xmm0
	movl	$LC415, -492(%ebp)
	leal	200(%edi), %eax
	movss	-492(%ebp), %xmm1
	movl	$0x3e99999a, 40(%edi)
	movups	%xmm0, 16(%edi)
	movss	LC475, %xmm0
	movl	$0x40c00000, 44(%edi)
	unpcklps	%xmm1, %xmm0
	movlps	%xmm0, 32(%edi)
	movl	$2608, 8(%esp)
	movl	$255, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	$257, %edx
	movb	$1, 102(%edi)
	movups	LC423, %xmm0
	movss	LC425, %xmm1
	movl	$0x3dcccccd, 64(%edi)
	leal	3568(%edi), %eax
	leal	14000(%edi), %ecx
	movups	%xmm0, 48(%edi)
	movss	LC425, %xmm0
	movl	$0x3f800000, 76(%edi)
	movl	$0x3f800000, 88(%edi)
	shufps	$0, %xmm0, %xmm0
	movl	$0x3f800000, 92(%edi)
	movw	%dx, 106(%edi)
	movb	$1, 110(%edi)
	movl	$0x42700000, 112(%edi)
	movl	$0xff7fffff, 3528(%edi)
	movl	$0xff7fffff, 3532(%edi)
	movl	$0xff7fffff, 14000(%edi)
	movl	$0xff7fffff, 14004(%edi)
	movups	%xmm0, 14156(%edi)
	movups	%xmm0, 14136(%edi)
	movss	%xmm1, 14172(%edi)
	movss	%xmm1, 14152(%edi)
	.p2align 5
	.p2align 4
	.p2align 3
L178:
	movss	%xmm1, 4(%eax)
	addl	$16, %eax
	movss	%xmm1, -16(%eax)
	cmpl	%eax, %ecx
	jne	L178
	movl	$511, %ecx
	xorl	%eax, %eax
	movb	$1, 14241(%edi)
	movw	%cx, 14242(%edi)
	movl	$0, 14364(%edi)
	movl	$0, 14368(%edi)
	movl	$0, 14372(%edi)
	movl	$0, 14376(%edi)
L179:
	movl	$0, 14264(%edi,%eax)
	movl	$0, 14268(%edi,%eax)
	movl	$0, 14272(%edi,%eax)
	movl	$0, 14276(%edi,%eax)
	addl	$16, %eax
	cmpl	$112, %eax
	jb	L179
	movl	$0, 14380(%edi)
	leal	14624(%edi), %eax
	movl	$0, 14384(%edi)
	movl	$0, 14388(%edi)
	movl	$0, 14392(%edi)
	movl	$0, 14396(%edi)
	movl	$0, 14400(%edi)
	movl	$0x00000000, 14436(%edi)
	movl	$880, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	$257, %edx
	movups	LC426, %xmm0
	leal	14404(%edi), %eax
	movw	%dx, 14612(%edi)
	movups	%xmm0, 14404(%edi)
	movups	LC427, %xmm0
	movl	$0x3f000000, 14440(%edi)
	movups	%xmm0, 14420(%edi)
	movups	LC428, %xmm0
	movl	$0, 14444(%edi)
	movups	%xmm0, 14448(%edi)
	movups	LC429, %xmm0
	movl	$0x00000000, 14544(%edi)
	movups	%xmm0, 14464(%edi)
	movups	LC430, %xmm0
	movl	$0x00000000, 14548(%edi)
	movups	%xmm0, 14480(%edi)
	movups	LC431, %xmm0
	movl	$1, 14552(%edi)
	movups	%xmm0, 14496(%edi)
	movups	LC432, %xmm0
	movl	$0x40400000, 14604(%edi)
	movups	%xmm0, 14512(%edi)
	movups	LC433, %xmm0
	movl	$0x3f800000, 14608(%edi)
	movups	%xmm0, 14528(%edi)
	movups	LC434, %xmm0
	movb	$1, 14614(%edi)
	movups	%xmm0, 14556(%edi)
	movups	LC435, %xmm0
	movl	$0x3fa00000, 14616(%edi)
	movups	%xmm0, 14572(%edi)
	movups	LC436, %xmm0
	movups	%xmm0, 14588(%edi)
	movl	$0x3e99999a, 14620(%edi)
	call	__ZN5ImGui15StyleColorsDarkEP10ImGuiStyle
	leal	15524(%edi), %eax
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	$0x3f800000, 15580(%edi)
	movl	$0x00000000, 15584(%edi)
	.p2align 4
	.p2align 3
L181:
	xorps	%xmm0, %xmm0
	leal	-476(%ebp), %eax
	cvtsi2ssl	%esi, %xmm0
	movl	%eax, 8(%esp)
	leal	-472(%ebp), %eax
	movl	%eax, 4(%esp)
	addss	%xmm0, %xmm0
	mulss	LC438, %xmm0
	divss	LC439, %xmm0
	movss	%xmm0, (%esp)
	call	_sincosf
	movss	-472(%ebp), %xmm0
	movss	-476(%ebp), %xmm2
	movss	%xmm0, 15584(%edi,%esi,8)
	movss	%xmm2, 15580(%edi,%esi,8)
	addl	$1, %esi
	cmpl	$48, %esi
	jne	L181
	xorps	%xmm0, %xmm0
	leal	16292(%edi), %eax
	movl	$0, 16076(%edi)
	leal	17924(%edi), %ecx
	movl	$0, 16080(%edi)
	movl	$0, 16084(%edi)
	movl	$0, 16088(%edi)
	movl	$0, 16092(%edi)
	movl	$0, 16096(%edi)
	movl	$0, 16100(%edi)
	movl	$0, 16104(%edi)
	movl	$0, 16108(%edi)
	movl	$0, 16112(%edi)
	movl	$0, 16116(%edi)
	movl	$0, 16120(%edi)
	movl	$0, 16124(%edi)
	movl	$0, 16128(%edi)
	movl	$0, 16132(%edi)
	movl	$0x00000000, 16140(%edi)
	movl	$0x00000000, 16144(%edi)
	movl	$0x00000000, 16168(%edi)
	movl	$0x00000000, 16172(%edi)
	movl	$0x00000000, 16244(%edi)
	movl	$0x00000000, 16248(%edi)
	movups	%xmm0, 16184(%edi)
	movlps	LC440, %xmm0
	.p2align 4
	.p2align 3
L182:
	xorl	%esi, %esi
	xorl	%edx, %edx
	movlps	%xmm0, -8(%eax)
	addl	$96, %eax
	movw	%si, -96(%eax)
	xorl	%esi, %esi
	movw	%dx, -84(%eax)
	xorl	%edx, %edx
	movw	%si, -72(%eax)
	xorl	%esi, %esi
	movw	%dx, -60(%eax)
	xorl	%edx, %edx
	movw	%si, -48(%eax)
	xorl	%esi, %esi
	movw	%dx, -36(%eax)
	xorl	%edx, %edx
	movlps	%xmm0, -92(%eax)
	movlps	%xmm0, -80(%eax)
	movlps	%xmm0, -68(%eax)
	movlps	%xmm0, -56(%eax)
	movlps	%xmm0, -44(%eax)
	movlps	%xmm0, -32(%eax)
	movlps	%xmm0, -20(%eax)
	movw	%si, -24(%eax)
	movw	%dx, -12(%eax)
	cmpl	%ecx, %eax
	jne	L182
	leal	17916(%edi), %eax
	leal	17964(%edi), %ecx
	.p2align 4
	.p2align 4
	.p2align 3
L183:
	xorl	%edx, %edx
	movlps	%xmm0, (%eax)
	addl	$12, %eax
	movw	%dx, -4(%eax)
	cmpl	%ecx, %eax
	jne	L183
	movl	$0, 18244(%edi)
	movl	$0, 18248(%edi)
	movl	$0, 18252(%edi)
	movl	$0, 18256(%edi)
	movl	$0, 18260(%edi)
	movl	$0, 18264(%edi)
	movl	$280, 8(%esp)
	movl	$255, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	xorl	%eax, %eax
	movl	$0, 18292(%edi)
	movl	$0, 18296(%edi)
	movl	$0, 18300(%edi)
	movl	$0, 18304(%edi)
	movl	$0, 18308(%edi)
	movl	$0, 18356(%edi)
	movl	$0, 18360(%edi)
	movl	$0, 18364(%edi)
	movl	$0, 18368(%edi)
L184:
	movl	$0, 18312(%edi,%eax)
	movl	$0, 18316(%edi,%eax)
	movl	$0, 18320(%edi,%eax)
	movl	$0, 18324(%edi,%eax)
	addl	$16, %eax
	cmpl	$48, %eax
	jb	L184
	movl	$0, 18492(%edi)
	xorl	%eax, %eax
	movl	$0, 18496(%edi)
	movl	$0, 18500(%edi)
	movl	$0, 18504(%edi)
L186:
	movl	$0, 18372(%edi,%eax)
	movl	$0, 18376(%edi,%eax)
	movl	$0, 18380(%edi,%eax)
	movl	$0, 18384(%edi,%eax)
	addl	$16, %eax
	cmpl	$128, %eax
	jb	L186
	xorl	%eax, %eax
	xorps	%xmm2, %xmm2
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	movl	%eax, 18508(%edi)
	xorps	%xmm3, %xmm3
	movl	%eax, 18512(%edi)
	movl	%eax, 18516(%edi)
	movl	%eax, 18520(%edi)
	movl	%eax, 18524(%edi)
	movl	%eax, 18528(%edi)
	movl	%eax, 18532(%edi)
	movl	%eax, 18536(%edi)
	movl	%eax, 18540(%edi)
	movl	%eax, 18544(%edi)
	movl	%eax, 18548(%edi)
	movl	%eax, 18552(%edi)
	movl	%eax, 18556(%edi)
	movl	%eax, 18560(%edi)
	movl	%eax, 18564(%edi)
	movl	%eax, 18568(%edi)
	movl	%eax, 18572(%edi)
	movl	%eax, 18576(%edi)
	movl	%eax, 18580(%edi)
	movl	%eax, 18584(%edi)
	movl	%eax, 18588(%edi)
	movl	%eax, 18592(%edi)
	movl	%eax, 18596(%edi)
	movl	%eax, 18600(%edi)
	movl	%eax, 18608(%edi)
	movl	%eax, 18612(%edi)
	movl	%eax, 18616(%edi)
	movl	$0x00000000, 18664(%edi)
	movl	18664(%edi), %eax
	movl	$0x00000000, 18668(%edi)
	movl	18668(%edi), %edx
	movl	%eax, 18656(%edi)
	movl	%edx, 18660(%edi)
	movl	%eax, 18648(%edi)
	movl	%eax, 18640(%edi)
	xorl	%eax, %eax
	movl	%eax, 18836(%edi)
	movl	%eax, 18840(%edi)
	movl	%eax, 18844(%edi)
	movl	%eax, 18864(%edi)
	xorl	%eax, %eax
	movl	%eax, 18880(%edi)
	movl	%eax, 18884(%edi)
	movl	%eax, 18888(%edi)
	movl	%eax, 18908(%edi)
	xorl	%eax, %eax
	movl	%eax, 18924(%edi)
	movl	%eax, 18928(%edi)
	movl	%eax, 18932(%edi)
	movl	%eax, 18952(%edi)
	xorl	%eax, %eax
	movups	%xmm2, 18748(%edi)
	movups	%xmm2, 18792(%edi)
	movups	%xmm2, 18808(%edi)
	movups	%xmm2, 18848(%edi)
	movups	%xmm2, 18892(%edi)
	movups	%xmm2, 18936(%edi)
	movl	%edx, 18652(%edi)
	movl	%edx, 18644(%edi)
	xorl	%edx, %edx
	movl	$0x3f800000, 18672(%edi)
	movl	$0x7f7fffff, 18876(%edi)
	movl	$0x7f7fffff, 18872(%edi)
	movl	$0x7f7fffff, 18868(%edi)
	movl	$0x7f7fffff, 18920(%edi)
	movl	$0x7f7fffff, 18916(%edi)
	movl	$0x7f7fffff, 18912(%edi)
	movl	$0x7f7fffff, 18964(%edi)
	movl	$0x7f7fffff, 18960(%edi)
	movl	$0x7f7fffff, 18956(%edi)
	movups	%xmm2, 18980(%edi)
	movl	%eax, 18968(%edi)
	movl	%eax, 18972(%edi)
	movl	%eax, 18976(%edi)
	movl	%eax, 18996(%edi)
	xorl	%eax, %eax
	movl	%ecx, 19184(%edi)
	movl	%ecx, 19188(%edi)
	movl	%ecx, 19192(%edi)
	movl	%ecx, 19216(%edi)
	movl	%ecx, 19220(%edi)
	movl	%ecx, 19224(%edi)
	movl	%ecx, 19236(%edi)
	movl	%ecx, 19240(%edi)
	movups	%xmm2, 19044(%edi)
	movups	%xmm2, 19140(%edi)
	movl	%edx, 19092(%edi)
	movl	%edx, 19096(%edi)
	movl	%edx, 19084(%edi)
	movl	%edx, 19088(%edi)
	movl	%edx, 19104(%edi)
	movl	%edx, 19108(%edi)
	movl	%edx, 19112(%edi)
	movl	%edx, 19116(%edi)
	movl	%edx, 19120(%edi)
	movl	%edx, 19124(%edi)
	movl	%edx, 19128(%edi)
	movl	%edx, 19132(%edi)
	xorl	%edx, %edx
	movl	$0x7f7fffff, 19008(%edi)
	movl	$0x7f7fffff, 19004(%edi)
	movl	$0x7f7fffff, 19000(%edi)
	movb	$0, 19136(%edi)
	movl	$-1, 19100(%edi)
	movw	$0, 19137(%edi)
	movl	%ecx, 19244(%edi)
	movl	%eax, 19348(%edi)
	movl	%eax, 19352(%edi)
	movl	%eax, 19356(%edi)
	movl	%eax, 19360(%edi)
	leal	19388(%edi), %eax
	movl	%ecx, 19248(%edi)
	movl	%ecx, 19252(%edi)
	movl	%ecx, 19256(%edi)
	movl	%ecx, 19260(%edi)
	movl	%ecx, 19264(%edi)
	movl	%ecx, 19268(%edi)
	movl	%esi, 19288(%edi)
	movl	%esi, 19292(%edi)
	movl	%esi, 19296(%edi)
	movl	%esi, 19300(%edi)
	movl	%esi, 19308(%edi)
	movl	%esi, 19312(%edi)
	movl	%esi, 19316(%edi)
	movl	%esi, 19320(%edi)
	movl	%esi, 19324(%edi)
	movl	%esi, 19328(%edi)
	xorl	%esi, %esi
	movups	%xmm3, 19272(%edi)
	movups	%xmm3, 19332(%edi)
	movl	$0x00000000, 19380(%edi)
	movl	$0x00000000, 19384(%edi)
	movl	$3704, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movl	%esi, 23112(%edi)
	movl	%ecx, 23092(%edi)
	xorps	%xmm3, %xmm3
	xorps	%xmm2, %xmm2
	movlps	LC440, %xmm0
	movl	%ecx, 23096(%edi)
	movl	%ecx, 23100(%edi)
	movl	$0x00000000, 23104(%edi)
	movl	$0x00000000, 23108(%edi)
	movl	%esi, 23116(%edi)
	movl	%esi, 23120(%edi)
	movl	%esi, 23124(%edi)
	movl	%esi, 23128(%edi)
	movl	$-65536, 23148(%edi)
	movl	$65535, 23152(%edi)
	movl	$0x00000000, 23156(%edi)
	movl	$0x00000000, 23160(%edi)
	movb	$0, 23164(%edi)
	movl	$0x3f800000, 23168(%edi)
	movl	$0x00000000, 23176(%edi)
	movl	$0x00000000, 23172(%edi)
	movw	$0, 23184(%edi)
	movl	%eax, 23180(%edi)
	xorl	%eax, %eax
	movl	%eax, 23264(%edi)
	movl	%eax, 23268(%edi)
	movl	%eax, 23272(%edi)
	movl	%eax, 23276(%edi)
	xorl	%eax, %eax
	movups	%xmm3, 23132(%edi)
	movups	%xmm2, 23216(%edi)
L188:
	xorl	%esi, %esi
	movl	%esi, 23232(%edi,%eax)
	movl	%esi, 23236(%edi,%eax)
	movl	%esi, 23240(%edi,%eax)
	movl	%esi, 23244(%edi,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L188
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movl	%ecx, 23312(%edi)
	movl	%ecx, 23316(%edi)
	movl	%ecx, 23320(%edi)
	movl	%ecx, 23324(%edi)
	movl	%ecx, 23328(%edi)
	movl	%ecx, 23332(%edi)
	movl	%ecx, 23336(%edi)
	movl	%ecx, 23340(%edi)
	movl	%ecx, 23344(%edi)
	movl	%ecx, 23348(%edi)
	movl	%ecx, 23352(%edi)
	movl	%ecx, 23356(%edi)
	movl	%ecx, 23360(%edi)
	movl	%ecx, 23364(%edi)
	movl	%ecx, 23400(%edi)
	movl	%ecx, 23404(%edi)
	movl	%ecx, 23408(%edi)
	movl	%ecx, 23412(%edi)
L190:
	xorl	%edx, %edx
	movl	%edx, 23376(%edi,%eax)
	movl	%edx, 23380(%edi,%eax)
	movl	%edx, 23384(%edi,%eax)
	movl	%edx, 23388(%edi,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L190
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	movl	$65792, %edx
	movl	%eax, 23620(%edi)
	xorl	%eax, %eax
	movl	%ecx, 23428(%edi)
	movl	%ecx, 23432(%edi)
	movl	%ecx, 23436(%edi)
	movl	%ecx, 23440(%edi)
	movl	%ecx, 23444(%edi)
	movl	%ecx, 23448(%edi)
	movl	%ecx, 23452(%edi)
	movl	%ecx, 23456(%edi)
	movl	%ecx, 23460(%edi)
	movl	%ecx, 23464(%edi)
	movl	%ecx, 23468(%edi)
	movl	%ecx, 23472(%edi)
	movl	%ecx, 23476(%edi)
	movl	%ecx, 23480(%edi)
	movl	%ecx, 23484(%edi)
	movl	%ecx, 23536(%edi)
	movl	%ecx, 23540(%edi)
	movl	%ecx, 23544(%edi)
	movl	%ecx, 23580(%edi)
	movl	%ecx, 23584(%edi)
	movl	%ecx, 23588(%edi)
	movl	%ecx, 23592(%edi)
	movl	%ecx, 23596(%edi)
	movl	%ecx, 23600(%edi)
	movl	%ecx, 23604(%edi)
	movl	%edx, 23624(%edi)
	movb	$0, 23628(%edi)
	movl	%esi, 23640(%edi)
	movl	%esi, 23644(%edi)
	movl	%esi, 23648(%edi)
	movlps	%xmm0, 23632(%edi)
	movl	%esi, 23652(%edi)
	movl	%eax, 23940(%edi)
	movl	%eax, 23944(%edi)
	movl	%eax, 23948(%edi)
	xorl	%eax, %eax
	movl	%eax, 15504(%edi)
	movl	%eax, 15508(%edi)
	xorl	%eax, %eax
	movl	%eax, 15512(%edi)
	movl	_GImGui, %eax
	movl	%esi, 23656(%edi)
	movl	%esi, 23660(%edi)
	movl	%esi, 23664(%edi)
	movl	$0xff7fffff, 23668(%edi)
	movl	%edi, 3524(%edi)
	movl	%edi, 19388(%edi)
	movw	$256, (%edi)
	movl	$0x00000000, 15520(%edi)
	movl	$0x00000000, 15516(%edi)
	testl	%eax, %eax
	je	L192
	addl	$1, 188(%eax)
L192:
	movl	$0, 4(%esp)
	movl	$1136, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	$1136, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, %esi
	movl	%eax, (%esp)
	call	_memset
	xorl	%eax, %eax
	movl	%esi, 72(%edi)
	movl	$12800, %edx
	movlps	LC440, %xmm0
	movups	LC444, %xmm2
	movl	$1, 12(%esi)
	movss	LC425, %xmm1
	movw	%ax, 16240(%edi)
	xorl	%eax, %eax
	movlps	%xmm0, 1128(%esi)
	xorl	%esi, %esi
	movups	%xmm2, 16048(%edi)
	xorps	%xmm2, %xmm2
	movups	%xmm2, 16148(%edi)
	movss	%xmm1, 16244(%edi)
	movss	%xmm1, 16248(%edi)
	movl	$0, 16040(%edi)
	movl	$0, 16044(%edi)
	movl	$0, 16064(%edi)
	movb	$0, 16068(%edi)
	movl	$0, 16072(%edi)
	movl	$0, 16136(%edi)
	movl	$0, 16164(%edi)
	movl	$-1, 16176(%edi)
	movl	$0x00000000, 16180(%edi)
	movl	$0, 16208(%edi)
	movl	$0, 16200(%edi)
	movl	$0, 16204(%edi)
	movw	%si, 16212(%edi)
	movl	$0x00000000, 16220(%edi)
	movl	$0x00000000, 16216(%edi)
	movl	$0, 16224(%edi)
	movl	$0, 16228(%edi)
	movl	$0x00000000, 16232(%edi)
	movl	$0, 16236(%edi)
	movl	$0, 16252(%edi)
	movl	$0, 16256(%edi)
	movl	$-1, 16260(%edi)
	movw	%ax, 16268(%edi)
	xorl	%eax, %eax
	movw	%ax, 18740(%edi)
	xorl	%eax, %eax
	movups	%xmm2, 18684(%edi)
	movl	$0, 16264(%edi)
	movl	$0, 16272(%edi)
	movl	$0, 16276(%edi)
	movl	$0x00000000, 16280(%edi)
	movl	$0, 18268(%edi)
	movb	$0, 18272(%edi)
	movl	$0, 18276(%edi)
	movl	$0, 18280(%edi)
	movl	$0, 18284(%edi)
	movl	$0, 18604(%edi)
	movl	$0x00000000, 18620(%edi)
	movl	$0, 18632(%edi)
	movl	$0, 18624(%edi)
	movl	$0, 18628(%edi)
	movl	$0, 18636(%edi)
	movl	$0, 18676(%edi)
	movl	$0, 18680(%edi)
	movl	$0, 18700(%edi)
	movl	$0, 18720(%edi)
	movl	$0, 18708(%edi)
	movl	$0, 18712(%edi)
	movl	$0, 18724(%edi)
	movl	$0, 18704(%edi)
	movl	$0, 18716(%edi)
	movl	$0, 18728(%edi)
	movl	$0, 18732(%edi)
	movl	$65536, 18736(%edi)
	movb	$0, 18742(%edi)
	movl	$0, 18744(%edi)
	movw	%ax, 18764(%edi)
	movl	$4608, %eax
	movups	LC445, %xmm2
	movl	%eax, 19012(%edi)
	xorl	%eax, %eax
	movl	%edx, 19016(%edi)
	movl	$-1, %edx
	movw	%ax, 19068(%edi)
	xorl	%eax, %eax
	movl	%eax, 19072(%edi)
	xorl	%eax, %eax
	movl	%edx, 19076(%edi)
	xorl	%edx, %edx
	movups	%xmm2, 18768(%edi)
	movb	$0, 18766(%edi)
	movl	$0, 18824(%edi)
	movl	$0, 18828(%edi)
	movl	$0, 18832(%edi)
	movl	$0, 19028(%edi)
	movl	$0, 19020(%edi)
	movl	$0, 19024(%edi)
	movl	$0x00000000, 19036(%edi)
	movl	$0x00000000, 19032(%edi)
	movb	$0, 19040(%edi)
	movl	$0x00000000, 19060(%edi)
	movl	$0, 19064(%edi)
	movb	$0, 19070(%edi)
	movl	$-1, 19080(%edi)
	movl	$0, 19156(%edi)
	movl	$0, 19160(%edi)
	movl	$0x00000000, 19164(%edi)
	movl	$0, 19168(%edi)
	movl	$0, 19172(%edi)
	movl	$-1, 19176(%edi)
	movl	$0, 19180(%edi)
	movl	$0, 19196(%edi)
	movl	$0, 19200(%edi)
	movl	$0, 19204(%edi)
	movlps	%xmm0, 18784(%edi)
	movl	$0, 19208(%edi)
	movups	LC448, %xmm2
	movss	%xmm1, 23356(%edi)
	movss	%xmm1, 23360(%edi)
	movl	$0, 19212(%edi)
	movl	$0, 19228(%edi)
	movl	$0, 19232(%edi)
	movl	$0, 19304(%edi)
	movl	$0, 19364(%edi)
	movl	$0, 19368(%edi)
	movl	$0x00000000, 19376(%edi)
	movl	$0x00000000, 19372(%edi)
	movl	$0, 23188(%edi)
	movl	$177209344, 23192(%edi)
	movl	$0, 23196(%edi)
	movl	$0, 23200(%edi)
	movl	$0x00000000, 23208(%edi)
	movl	$0x00000000, 23204(%edi)
	movl	$0, 23212(%edi)
	movl	$0x00000000, 23280(%edi)
	movl	$0x00000000, 23284(%edi)
	movw	%dx, 23288(%edi)
	movl	$0, 23308(%edi)
	movl	$0x00000000, 23340(%edi)
	movl	$0x00000000, 23344(%edi)
	movl	$0, 23368(%edi)
	movb	$46, 23372(%edi)
	movl	$0, 23416(%edi)
	movb	$0, 23420(%edi)
	movl	$0x00000000, 23424(%edi)
	movl	$0, 23488(%edi)
	movl	$0, 23492(%edi)
	movups	%xmm2, 23292(%edi)
	movl	$0, 23496(%edi)
	movups	LC449, %xmm1
	movl	$0, 23500(%edi)
	movl	$0, 23504(%edi)
	movl	$0, 23508(%edi)
	movl	$0, 23512(%edi)
	movl	$0, 23516(%edi)
	movl	$0, 23520(%edi)
	movb	$0, 23524(%edi)
	movl	$0, 23528(%edi)
	movl	$0, 23548(%edi)
	movl	$0, 23552(%edi)
	movl	$0, 23532(%edi)
	movl	$0x7f7fffff, 23556(%edi)
	movb	$0, 23560(%edi)
	movl	$0, 18288(%edi)
	movl	$16711680, 23608(%edi)
	movb	$0, 23612(%edi)
	movl	$0, 23616(%edi)
	movl	$0, 23672(%edi)
	movl	$0, 23900(%edi)
	movl	$0, 23904(%edi)
	movl	$0, 23908(%edi)
	movl	$0, 23912(%edi)
	movups	%xmm1, 23564(%edi)
L193:
	movl	$0, 23676(%edi,%eax)
	movl	$0, 23680(%edi,%eax)
	movl	$0, 23684(%edi,%eax)
	movl	$0, 23688(%edi,%eax)
	addl	$16, %eax
	cmpl	$224, %eax
	jb	L193
	movl	$0, 23916(%edi)
	movl	$0, 23920(%edi)
	movl	$0x00000000, 23924(%edi)
	movl	$-1, 23936(%edi)
	movlps	%xmm0, 23928(%edi)
	movl	%edi, _GImGui
	call	__ZN5ImGui10InitializeEv
	movl	-488(%ebp), %ecx
	testl	%ecx, %ecx
	je	L409
	movl	-488(%ebp), %eax
	movl	%eax, _GImGui
L196:
	movl	-488(%ebp), %edx
	xorl	%esi, %esi
	leal	8(%edx), %eax
	orl	$97, 8(%edx)
	movl	%eax, __ZL10g_ImGui_IO.lto_priv.0
	movl	__ZL11sdl_context.lto_priv.0, %eax
	movl	$0, 32(%edx)
	movl	%eax, -496(%ebp)
	movl	__ZL10sdl_window.lto_priv.0, %eax
	movl	%eax, -492(%ebp)
	call	_SDL_GetCurrentVideoDriver
	movups	-520(%ebp), %xmm6
	movl	$7, %ecx
	movl	$LC450, -248(%ebp)
	movl	%ebx, -520(%ebp)
	movl	%eax, %edi
	leal	-264(%ebp), %ebx
	movups	%xmm6, -264(%ebp)
L198:
	movl	%ecx, 8(%esp)
	movl	(%ebx), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_strncmp
	testl	%eax, %eax
	sete	%al
	addl	$4, %ebx
	orl	%eax, %esi
	leal	-244(%ebp), %eax
	cmpl	%ebx, %eax
	je	L197
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, %ecx
	jmp	L198
	.p2align 4,,10
	.p2align 3
L405:
	movl	-468(%ebp), %edi
	cmpl	%edi, -444(%ebp)
	jne	L137
	subl	$1, %eax
	xorl	%ecx, %ecx
	cmpl	$1, %eax
	setbe	%cl
	sall	$4, %ecx
	movl	%ecx, -488(%ebp)
	jmp	L138
L408:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L410
L174:
	movb	$1, _nogl
L175:
	call	__ZL24destroy_window_resourcesv.lto_priv.0
	movl	%ebx, (%esp)
	movl	-480(%ebp), %ecx
	movl	%edi, %edx
	movl	-484(%ebp), %eax
	call	_videoSetMode
	jmp	L129
	.p2align 4,,10
	.p2align 3
L144:
	movl	-488(%ebp), %ecx
	orl	$2, %ecx
	cmpl	$1, _numplayers
	je	L148
	cmpb	$0, _NoHide
	jne	L411
L148:
	cmpb	$0, _g_windowPosValid
	jne	L404
L151:
	orl	$805240832, %edx
	movl	%edx, %eax
	jmp	L152
	.p2align 4,,10
	.p2align 3
L197:
	movl	_GImGui, %eax
	movl	-520(%ebp), %ebx
	testl	%eax, %eax
	je	L199
	addl	$1, 188(%eax)
L199:
	movl	$0, 4(%esp)
	movl	$80, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	$0, 64(%eax)
	movl	%eax, %edi
	movl	$0, 68(%eax)
	movl	$0, 72(%eax)
	movl	$0, 76(%eax)
	xorl	%eax, %eax
L200:
	movl	$0, (%edi,%eax)
	movl	$0, 4(%edi,%eax)
	movl	$0, 8(%edi,%eax)
	movl	$0, 12(%edi,%eax)
	addl	$16, %eax
	cmpl	$64, %eax
	jb	L200
	movl	$__ZL31ImGui_ImplSDL2_SetClipboardTextPvPKc.lto_priv.0, -520(%ebp)
	movl	-488(%ebp), %edx
	movss	-520(%ebp), %xmm1
	movss	LC476, %xmm0
	movl	12(%edx), %eax
	movl	%edi, 128(%edx)
	movl	$LC451, 120(%edx)
	unpcklps	%xmm1, %xmm0
	movl	%eax, %ecx
	orl	$1030, %eax
	orl	$6, %ecx
	movl	%ecx, %edx
	movl	%esi, %ecx
	testb	%cl, %cl
	cmove	%edx, %eax
	movl	-488(%ebp), %edx
	movl	%eax, 12(%edx)
	movl	-492(%ebp), %eax
	movb	%cl, 72(%edi)
	movb	%cl, 73(%edi)
	movl	%eax, (%edi)
	movl	$0, 4(%edi)
	movl	$0, 148(%edx)
	movl	$__ZL33ImGui_ImplSDL2_SetPlatformImeDataP13ImGuiViewportP20ImGuiPlatformImeData.lto_priv.0, 152(%edx)
	movlps	%xmm0, 140(%edx)
	movl	$0, (%esp)
	call	_SDL_CreateSystemCursor
	movl	%eax, 24(%edi)
	movl	$1, (%esp)
	call	_SDL_CreateSystemCursor
	movl	%eax, 28(%edi)
	movl	$9, (%esp)
	call	_SDL_CreateSystemCursor
	movl	%eax, 32(%edi)
	movl	$8, (%esp)
	call	_SDL_CreateSystemCursor
	movl	%eax, 36(%edi)
	movl	$7, (%esp)
	call	_SDL_CreateSystemCursor
	movl	%eax, 40(%edi)
	movl	$6, (%esp)
	call	_SDL_CreateSystemCursor
	movl	%eax, 44(%edi)
	movl	$5, (%esp)
	call	_SDL_CreateSystemCursor
	movl	%eax, 48(%edi)
	movl	$11, (%esp)
	call	_SDL_CreateSystemCursor
	movl	%eax, 52(%edi)
	movl	$10, (%esp)
	call	_SDL_CreateSystemCursor
	movl	$7682, %edx
	movl	%eax, 56(%edi)
	movl	_GImGui, %eax
	movl	18616(%eax), %eax
	movl	(%eax), %esi
	movl	-492(%ebp), %eax
	movl	$0, 64(%esi)
	movl	%eax, 60(%esi)
	movw	%dx, -144(%ebp)
	leal	-144(%ebp), %edx
	movb	$10, -142(%ebp)
	movl	%edx, -504(%ebp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_SDL_GetWindowWMInfo
	testl	%eax, %eax
	je	L204
	movl	-136(%ebp), %eax
	movl	%eax, 64(%esi)
L204:
	movl	$LC453, 4(%esp)
	movl	$LC454, (%esp)
	call	_SDL_SetHint
	movl	$LC453, 4(%esp)
	movl	$LC455, (%esp)
	call	_SDL_SetHint
	movl	$LC456, 4(%esp)
	movl	$LC457, (%esp)
	call	_SDL_SetHint
	call	__ZL29ImGui_ImplSDL2_UpdateMonitorsv.lto_priv.0
	movl	-488(%ebp), %eax
	testb	$4, 9(%eax)
	je	L205
	testb	$4, 13(%eax)
	jne	L412
L205:
	movl	_GImGui, %eax
	movl	%eax, -488(%ebp)
	movl	$LC458, (%esp)
	call	*__imp__LoadLibraryA@4
	subl	$4, %esp
	movl	%eax, _libgl.lto_priv.0
	testl	%eax, %eax
	je	L206
	movl	%eax, (%esp)
	movl	__imp__GetProcAddress@8, %edi
	xorl	%esi, %esi
	movl	$LC459, 4(%esp)
	call	*%edi
	subl	$8, %esp
	movl	%eax, _wgl_get_proc_address
	movl	%eax, -492(%ebp)
	movl	$_close_libgl.lto_priv.0, (%esp)
	call	_atexit
	movl	-492(%ebp), %edx
	movl	%ebx, -492(%ebp)
	jmp	L209
	.p2align 4,,10
	.p2align 3
L207:
	movl	%eax, _imgl3wProcs(,%esi,4)
	addl	$1, %esi
	cmpl	$59, %esi
	je	L208
	movl	_wgl_get_proc_address, %edx
L209:
	movl	_proc_names(,%esi,4), %ebx
	movl	%ebx, (%esp)
	call	*%edx
	subl	$4, %esp
	testl	%eax, %eax
	jne	L207
	movl	%ebx, 4(%esp)
	movl	_libgl.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*%edi
	subl	$8, %esp
	jmp	L207
L208:
	movl	_imgl3wProcs+136, %eax
	movl	-492(%ebp), %ebx
	testl	%eax, %eax
	je	L206
	movl	$_version, 4(%esp)
	movl	$33307, (%esp)
	call	*%eax
	subl	$8, %esp
	movl	$_version+4, 4(%esp)
	movl	$33308, (%esp)
	call	*_imgl3wProcs+136
	movl	_version, %eax
	subl	$8, %esp
	testl	%eax, %eax
	jne	L210
	movl	_version+4, %eax
	testl	%eax, %eax
	jne	L206
	movl	$7938, (%esp)
	call	*_imgl3wProcs+156
	subl	$4, %esp
	movl	$_version+4, 12(%esp)
	movl	$_version, 8(%esp)
	movl	$LC460, 4(%esp)
	movl	%eax, (%esp)
	call	___mingw_sscanf
	movl	_version, %eax
L210:
	cmpl	$1, %eax
	jle	L206
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L212
	addl	$1, 188(%eax)
L212:
	movl	$0, 4(%esp)
	movl	$84, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	$0, 68(%eax)
	movl	%eax, %esi
	movl	$0, 72(%eax)
	movl	$0, 76(%eax)
	movl	$0, 80(%eax)
	xorl	%eax, %eax
L214:
	movl	$0, (%esi,%eax)
	movl	$0, 4(%esi,%eax)
	movl	$0, 8(%esi,%eax)
	movl	$0, 12(%esi,%eax)
	addl	$16, %eax
	cmpl	$80, %eax
	jb	L214
	movl	-488(%ebp), %eax
	leal	-456(%ebp), %edi
	movl	$0, -456(%ebp)
	movl	%esi, 132(%eax)
	movl	$LC462, 124(%eax)
	movl	$0, -384(%ebp)
	movl	%edi, 4(%esp)
	movl	$33307, (%esp)
	call	*_imgl3wProcs+136
	leal	-384(%ebp), %eax
	subl	$8, %esp
	movl	%eax, 4(%esp)
	movl	$33308, (%esp)
	call	*_imgl3wProcs+136
	movl	-456(%ebp), %eax
	movl	-384(%ebp), %edx
	subl	$8, %esp
	movl	%eax, %ecx
	orl	%edx, %ecx
	jne	L216
	movl	$7938, (%esp)
	call	*_imgl3wProcs+156
	leal	-384(%ebp), %edx
	subl	$4, %esp
	movl	%edx, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$LC460, 4(%esp)
	movl	%eax, (%esp)
	call	___mingw_sscanf
	movl	-456(%ebp), %eax
	movl	-384(%ebp), %edx
L216:
	imull	$100, %eax, %eax
	movl	-488(%ebp), %edi
	leal	(%edx,%edx,4), %edx
	movb	$0, 81(%esi)
	leal	(%eax,%edx,2), %edx
	movl	%edx, (%esi)
	movl	12(%edi), %eax
	movl	%eax, %ecx
	orl	$8, %ecx
	cmpl	$319, %edx
	cmova	%ecx, %eax
	movl	$10, %ecx
	orb	$16, %ah
	movl	%eax, 12(%edi)
	leal	-264(%ebp), %eax
	movw	%cx, 16(%esi)
	movl	$1919252003, 4(%esi)
	movl	$1852795251, 8(%esi)
	movl	$808661280, 12(%esi)
	movl	%eax, 4(%esp)
	movl	$32873, (%esp)
	call	*_imgl3wProcs+136
	movl	-504(%ebp), %eax
	subl	$8, %esp
	cmpl	$449, (%esi)
	movl	$0, -144(%ebp)
	seta	80(%esi)
	movl	%eax, 4(%esp)
	movl	$33309, (%esp)
	call	*_imgl3wProcs+136
	movl	-144(%ebp), %edi
	subl	$8, %esp
	testl	%edi, %edi
	jle	L218
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L220:
	movl	%edi, 4(%esp)
	movl	$7939, (%esp)
	call	*_imgl3wProcs+160
	subl	$8, %esp
	testl	%eax, %eax
	je	L219
	movl	$LC463, 4(%esp)
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L219
	movb	$1, 80(%esi)
L219:
	addl	$1, %edi
	cmpl	-144(%ebp), %edi
	jl	L220
L218:
	movl	-488(%ebp), %eax
	testb	$4, 9(%eax)
	jne	L413
L213:
	movl	__ZL10g_ImGui_IO.lto_priv.0, %eax
	movl	64(%eax), %eax
	movl	%eax, -496(%ebp)
	xorl	%eax, %eax
L221:
	movl	$0, -384(%ebp,%eax)
	movl	$0, -380(%ebp,%eax)
	movl	$0, -376(%ebp,%eax)
	movl	$0, -372(%ebp,%eax)
	addl	$16, %eax
	cmpl	$112, %eax
	jb	L221
	movl	$0, -384(%ebp,%eax)
	movl	$0, -380(%ebp,%eax)
	movl	$-1, %eax
	movw	%ax, -312(%ebp)
	movl	$1, %eax
	movl	%eax, -364(%ebp)
	movl	%eax, -360(%ebp)
	leal	-310(%ebp), %eax
	movb	$1, -376(%ebp)
	movl	$0x7f7fffff, -328(%ebp)
	movl	$0x3f800000, -316(%ebp)
	movb	$1, -356(%ebp)
	movl	$0x41500000, -368(%ebp)
	movl	$13, 12(%esp)
	movl	$LC466, 8(%esp)
	movl	$40, 4(%esp)
	movl	%eax, (%esp)
	call	__Z14ImFormatStringPcjPKcz
	movss	-368(%ebp), %xmm5
	movl	$133, %edx
	movw	%dx, -312(%ebp)
	movl	-336(%ebp), %edx
	movaps	%xmm5, %xmm0
	movss	%xmm5, -524(%ebp)
	divss	LC465, %xmm0
	cvttss2sil	%xmm0, %eax
	xorps	%xmm0, %xmm0
	testl	%edx, %edx
	cvtsi2ssl	%eax, %xmm0
	movl	$__ZZN11ImFontAtlas21GetGlyphRangesDefaultEvE6ranges, %eax
	cmovne	%edx, %eax
	movl	%eax, -528(%ebp)
	movl	_GImGui, %eax
	movss	%xmm0, -340(%ebp)
	testl	%eax, %eax
	je	L224
	addl	$1, 188(%eax)
L224:
	movl	$0, 4(%esp)
	movl	$9584, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%ebx, -532(%ebp)
	movl	$__ZL39proggy_clean_ttf_compressed_data_base85, %edx
	movl	$41, %ebx
	movl	%eax, %esi
	movl	%eax, -500(%ebp)
	movl	$55, %eax
	movb	$35, -488(%ebp)
	movl	%esi, %edi
	movb	$35, -492(%ebp)
	movb	$93, -520(%ebp)
	jmp	L236
	.p2align 4,,10
	.p2align 3
L414:
	movzbl	3(%edx), %ecx
	movzbl	1(%edx), %ebx
	addl	$4, %edi
	movb	%cl, -492(%ebp)
	movzbl	4(%edx), %ecx
	movb	%bl, -520(%ebp)
	movzbl	2(%edx), %ebx
	movb	%cl, -488(%ebp)
L236:
	cmpb	$92, %al
	movzbl	%al, %esi
	movzbl	-520(%ebp), %eax
	movzbl	-492(%ebp), %ecx
	adcl	$-36, %esi
	cmpb	$92, %al
	adcl	$-36, %eax
	cmpb	$92, %bl
	movl	%eax, -520(%ebp)
	movzbl	%bl, %eax
	adcl	$-36, %eax
	cmpb	$92, %cl
	movl	%eax, %ebx
	movzbl	-488(%ebp), %eax
	adcl	$-36, %ecx
	cmpb	$92, -488(%ebp)
	adcl	$-36, %eax
	addl	$5, %edx
	imull	$85, %eax, %eax
	addl	%ecx, %eax
	imull	$85, %eax, %eax
	addl	%ebx, %eax
	imull	$85, %eax, %eax
	addl	-520(%ebp), %eax
	imull	$85, %eax, %eax
	addl	%esi, %eax
	movl	%eax, %ecx
	movb	%al, (%edi)
	movb	%ah, 1(%edi)
	shrl	$24, %eax
	shrl	$16, %ecx
	movb	%al, 3(%edi)
	movzbl	(%edx), %eax
	movb	%cl, 2(%edi)
	testb	%al, %al
	jne	L414
	movl	-500(%ebp), %eax
	movl	-532(%ebp), %ebx
	movl	8(%eax), %eax
	bswap	%eax
	movl	%eax, -488(%ebp)
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L237
	addl	$1, 188(%eax)
L237:
	movl	$0, 4(%esp)
	movl	-488(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-500(%ebp), %edx
	movl	%eax, -492(%ebp)
	movl	%eax, %ecx
	cmpl	$48215, (%edx)
	jne	L238
	movl	4(%edx), %eax
	testl	%eax, %eax
	jne	L238
	movl	8(%edx), %edi
	movl	%edx, __ZL17stb__barrier_in_b.lto_priv.0
	leal	16(%edx), %eax
	movl	%ecx, __ZL18stb__barrier_out_b.lto_priv.0
	bswap	%edi
	addl	%ecx, %edi
	movl	%ecx, __ZL9stb__dout.lto_priv.0
	movl	%edi, __ZL18stb__barrier_out_e.lto_priv.0
	jmp	L239
	.p2align 4,,10
	.p2align 3
L415:
	cmpl	__ZL9stb__dout.lto_priv.0, %edi
	jb	L238
L239:
	movl	%eax, %esi
	call	__ZL20stb_decompress_tokenPKh.lto_priv.0
	cmpl	%eax, %esi
	jne	L415
	.p2align 4
	.p2align 3
L238:
	xorl	%eax, %eax
L240:
	movl	-384(%ebp,%eax), %edi
	movl	-380(%ebp,%eax), %esi
	movl	-376(%ebp,%eax), %ecx
	movl	-372(%ebp,%eax), %edx
	movl	%edi, -264(%ebp,%eax)
	movl	%esi, -260(%ebp,%eax)
	movl	%ecx, -256(%ebp,%eax)
	movl	%edx, -252(%ebp,%eax)
	addl	$16, %eax
	cmpl	$112, %eax
	jb	L240
	leal	-264(%ebp,%eax), %edx
	leal	-384(%ebp,%eax), %eax
	movl	(%eax), %ecx
	movl	4(%eax), %eax
	movl	%ecx, (%edx)
	movl	%eax, 4(%edx)
	xorl	%eax, %eax
	movb	$1, -256(%ebp)
L242:
	movl	-264(%ebp,%eax), %edi
	movl	-260(%ebp,%eax), %esi
	movl	-256(%ebp,%eax), %ecx
	movl	-252(%ebp,%eax), %edx
	movl	%edi, -144(%ebp,%eax)
	movl	%esi, -140(%ebp,%eax)
	movl	%ecx, -136(%ebp,%eax)
	movl	%edx, -132(%ebp,%eax)
	addl	$16, %eax
	cmpl	$112, %eax
	jb	L242
	movl	-504(%ebp), %edx
	movss	-524(%ebp), %xmm3
	xorps	%xmm0, %xmm0
	addl	%eax, %edx
	comiss	%xmm0, %xmm3
	leal	-264(%ebp,%eax), %eax
	movl	(%eax), %ecx
	movl	4(%eax), %eax
	movl	%eax, 4(%edx)
	movl	-492(%ebp), %eax
	movl	%ecx, (%edx)
	movl	%eax, -144(%ebp)
	movl	-488(%ebp), %eax
	movl	%eax, -140(%ebp)
	ja	L244
	movss	-128(%ebp), %xmm3
	movss	%xmm3, -524(%ebp)
L244:
	movss	-524(%ebp), %xmm7
	movl	-528(%ebp), %eax
	movss	%xmm7, -128(%ebp)
	movl	%eax, -96(%ebp)
	cmpb	$0, -84(%ebp)
	je	L416
L245:
	movl	-496(%ebp), %edx
	movl	84(%edx), %eax
	cmpl	88(%edx), %eax
	je	L417
L255:
	movl	-496(%ebp), %edx
	movl	92(%edx), %esi
L258:
	imull	$120, %eax, %eax
	leal	(%esi,%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 104(%edx)
	movl	-36(%ebp), %eax
	movl	%eax, 108(%edx)
	movl	-32(%ebp), %eax
	movl	%eax, 112(%edx)
	movl	-28(%ebp), %eax
	movl	%eax, 116(%edx)
	movl	-504(%ebp), %ecx
	xorl	%eax, %eax
	movl	%ebx, -520(%ebp)
L262:
	movl	12(%ecx,%eax), %ebx
	movl	4(%ecx,%eax), %edi
	movl	8(%ecx,%eax), %esi
	movl	%ebx, -488(%ebp)
	movl	(%ecx,%eax), %ebx
	movl	%edi, 4(%edx,%eax)
	movl	%ebx, (%edx,%eax)
	movl	%esi, 8(%edx,%eax)
	movl	-488(%ebp), %ebx
	movl	%ebx, 12(%edx,%eax)
	addl	$16, %eax
	cmpl	$112, %eax
	jb	L262
	movl	-496(%ebp), %edi
	movl	-520(%ebp), %ebx
	movl	84(%edi), %eax
	leal	1(%eax), %edx
	imull	$120, %eax, %eax
	addl	92(%edi), %eax
	movl	%edx, 84(%edi)
	movl	%edi, %edx
	movl	116(%eax), %edi
	movl	%eax, %esi
	testl	%edi, %edi
	jne	L264
	movl	%edx, %eax
	movl	60(%edx), %edx
	movl	68(%eax), %eax
	movl	-4(%eax,%edx,4), %eax
	movl	%eax, 116(%esi)
L264:
	cmpb	$0, 8(%esi)
	je	L418
L265:
	movl	116(%esi), %eax
	cmpw	$-1, 60(%eax)
	jne	L267
	movzwl	-72(%ebp), %edx
	movw	%dx, 60(%eax)
L267:
	movl	-496(%ebp), %eax
	movb	$0, 24(%eax)
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	L268
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L269
	subl	$1, 188(%edx)
L269:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L268:
	movl	-496(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	L270
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L271
	subl	$1, 188(%edx)
L271:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L270:
	movl	-496(%ebp), %eax
	movl	$0, 28(%eax)
	movl	$0, 32(%eax)
	movb	$0, 25(%eax)
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L272
	subl	$1, 188(%eax)
L272:
	movl	$0, 4(%esp)
	movl	-500(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	jmp	L273
	.p2align 4,,10
	.p2align 3
L153:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L419
L155:
	movb	$1, _nogl
	jmp	L154
L274:
	cmpb	$0, _g_windowPosValid
	je	L278
	movl	_g_windowPos+4, %esi
	movl	_g_windowPos, %edx
L279:
	movl	-488(%ebp), %edi
	movl	%edi, 20(%esp)
	jmp	L403
L206:
	movl	$2, (%esp)
	call	*__imp____acrt_iob_func
	movl	$LC461, 4(%esp)
	movl	%eax, (%esp)
	call	___mingw_fprintf
	jmp	L213
L417:
	leal	1(%eax), %ecx
	testl	%eax, %eax
	jne	L256
	movl	$8, %eax
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%eax, %edi
L257:
	movl	_GImGui, %eax
	imull	$120, %edi, %edx
	testl	%eax, %eax
	je	L259
	addl	$1, 188(%eax)
L259:
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-496(%ebp), %edx
	movl	%eax, %esi
	movl	92(%edx), %eax
	testl	%eax, %eax
	je	L260
	imull	$120, 84(%edx), %edx
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	%edx, 8(%esp)
	call	_memcpy
	movl	-496(%ebp), %edx
	movl	92(%edx), %edx
	testl	%edx, %edx
	je	L261
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L261
	subl	$1, 188(%eax)
L261:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L260:
	movl	-496(%ebp), %eax
	movl	%esi, 92(%eax)
	movl	%edi, 88(%eax)
	movl	84(%eax), %eax
	jmp	L258
L416:
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L246
	addl	$1, 188(%eax)
L246:
	movl	$0, 4(%esp)
	movl	$96, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	xorps	%xmm0, %xmm0
	movl	$65535, 60(%eax)
	movl	%eax, %esi
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0x00000000, 12(%eax)
	movl	$0x00000000, 16(%eax)
	movl	$0, 20(%eax)
	movl	$0, 24(%eax)
	movl	$0, 28(%eax)
	movl	$0, 32(%eax)
	movl	$0, 36(%eax)
	movl	$-65536, 56(%eax)
	movl	$0x00000000, 64(%eax)
	movl	$0x00000000, 68(%eax)
	movl	$0, 72(%eax)
	movl	$0x3f800000, 76(%eax)
	movl	$0x00000000, 80(%eax)
	movl	$0x00000000, 84(%eax)
	movl	$0, 88(%eax)
	movups	%xmm0, 40(%eax)
	xorl	%eax, %eax
	movw	%ax, 92(%esi)
	movl	-496(%ebp), %eax
	movl	60(%eax), %ecx
	cmpl	64(%eax), %ecx
	je	L420
L248:
	movl	-496(%ebp), %edx
	movl	68(%edx), %eax
	movl	%esi, (%eax,%ecx,4)
	addl	$1, 60(%edx)
	jmp	L245
L418:
	movl	_GImGui, %eax
	movl	4(%esi), %edx
	testl	%eax, %eax
	je	L266
	addl	$1, 188(%eax)
L266:
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	4(%esi), %edx
	movb	$1, 8(%esi)
	movl	%eax, (%esi)
	movl	%edx, 8(%esp)
	movl	-492(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_memcpy
	jmp	L265
L409:
	movl	_GImGui, %eax
	movl	%eax, -488(%ebp)
	jmp	L196
L419:
	call	_SDL_GetError
	movl	$LC15, %ecx
	movl	%eax, %edx
	movl	__ZL10sdl_window.lto_priv.0, %eax
	movl	$LC22, 12(%esp)
	movl	%edx, 20(%esp)
	testl	%eax, %eax
	movl	$LC16, %eax
	movl	$2004, 8(%esp)
	cmovne	%ecx, %eax
	movl	$LC18, 4(%esp)
	movl	$-2, (%esp)
	movl	%eax, 16(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L155
L275:
	orl	$805240832, %edx
	movl	%edx, %esi
	jmp	L276
L278:
	orl	$805240832, %edx
	movl	%edx, %esi
	jmp	L279
L413:
	movl	_GImGui, %eax
	movl	$__ZL30ImGui_ImplOpenGL3_RenderWindowP13ImGuiViewportPv.lto_priv.0, 14348(%eax)
	jmp	L213
L411:
	movl	_myconnectindex, %eax
	movl	%ecx, -520(%ebp)
	movl	%edx, -492(%ebp)
	addl	$1, %eax
	movl	$LC20, 8(%esp)
	movl	%eax, 12(%esp)
	leal	-144(%ebp), %eax
	movl	$LC21, 4(%esp)
	movl	%eax, -504(%ebp)
	movl	%eax, (%esp)
	call	___mingw_sprintf
	movl	_myconnectindex, %eax
	cmpl	$2, _numplayers
	movl	-492(%ebp), %edx
	movl	-520(%ebp), %ecx
	movl	%eax, -488(%ebp)
	je	L421
	movl	-488(%ebp), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	leal	5(%eax,%eax,4), %edx
	imull	%edi, %eax
	leal	(%eax,%edx,4), %edx
L150:
	movl	%ecx, 20(%esp)
	movl	%edi, 16(%esp)
	movl	-484(%ebp), %ecx
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	-488(%ebp), %eax
	movl	$LC19, (%esp)
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	imull	%ecx, %eax
	movl	%eax, 4(%esp)
	call	_SDL_CreateWindow
	movl	%eax, __ZL10sdl_window.lto_priv.0
	movl	-504(%ebp), %eax
	call	_wm_setapptitle
	movl	__ZL10sdl_window.lto_priv.0, %eax
	jmp	L147
L412:
	movl	$__ZL26ImGui_ImplSDL2_SwapBuffersP13ImGuiViewportPv.lto_priv.0, -488(%ebp)
	movss	-488(%ebp), %xmm1
	movss	LC477, %xmm0
	movl	_GImGui, %eax
	movl	$__ZL27ImGui_ImplSDL2_SetWindowPosP13ImGuiViewport6ImVec2.lto_priv.0, -488(%ebp)
	unpcklps	%xmm1, %xmm0
	movl	18616(%eax), %edx
	movss	LC478, %xmm1
	movl	$__ZL30ImGui_ImplSDL2_CreateVkSurfaceP13ImGuiViewportyPKvPy.lto_priv.0, 14332(%eax)
	movlps	%xmm0, 14316(%eax)
	movss	-488(%ebp), %xmm0
	movl	$__ZL28ImGui_ImplSDL2_DestroyWindowP13ImGuiViewport.lto_priv.0, -488(%ebp)
	movss	-488(%ebp), %xmm2
	movl	$__ZL29ImGui_ImplSDL2_SetWindowFocusP13ImGuiViewport.lto_priv.0, -488(%ebp)
	unpcklps	%xmm0, %xmm1
	movss	LC479, %xmm0
	unpcklps	%xmm2, %xmm0
	movlhps	%xmm1, %xmm0
	movss	LC480, %xmm1
	movups	%xmm0, 14264(%eax)
	movss	-488(%ebp), %xmm0
	movl	$__ZL28ImGui_ImplSDL2_SetWindowSizeP13ImGuiViewport6ImVec2.lto_priv.0, -488(%ebp)
	movss	-488(%ebp), %xmm2
	movl	$__ZL29ImGui_ImplSDL2_SetWindowAlphaP13ImGuiViewportf.lto_priv.0, -488(%ebp)
	unpcklps	%xmm0, %xmm1
	movss	LC481, %xmm0
	unpcklps	%xmm2, %xmm0
	movlhps	%xmm1, %xmm0
	movss	LC482, %xmm1
	movups	%xmm0, 14280(%eax)
	movss	-488(%ebp), %xmm0
	movl	$__ZL33ImGui_ImplSDL2_GetWindowMinimizedP13ImGuiViewport.lto_priv.0, -488(%ebp)
	movss	-488(%ebp), %xmm2
	unpcklps	%xmm0, %xmm1
	movss	LC483, %xmm0
	unpcklps	%xmm2, %xmm0
	movlhps	%xmm1, %xmm0
	movups	%xmm0, 14296(%eax)
	movl	(%edx), %edi
	addl	$1, 188(%eax)
	movl	$0, 4(%esp)
	movl	$16, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %esi
	movl	$0, 4(%eax)
	movb	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	-492(%ebp), %eax
	movl	%eax, (%esi)
	movl	%eax, (%esp)
	call	_SDL_GetWindowID
	movb	$0, 8(%esi)
	movl	%eax, 4(%esi)
	movl	-496(%ebp), %eax
	movl	%eax, 12(%esi)
	movl	%esi, 56(%edi)
	movl	(%esi), %eax
	movl	%eax, 60(%edi)
	jmp	L205
L256:
	movl	%eax, %edx
	movl	%ecx, %edi
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	cmpl	%ecx, %edx
	cmovge	%edx, %edi
	cmpl	%edi, %eax
	jge	L255
	jmp	L257
L410:
	movl	$LC409, 12(%esp)
	movl	$2015, 8(%esp)
	movl	$LC18, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L174
L420:
	leal	1(%ecx), %eax
	movl	%eax, -488(%ebp)
	testl	%ecx, %ecx
	jne	L249
	movl	-488(%ebp), %edi
	movl	$8, %eax
	cmpl	%eax, -488(%ebp)
	cmovl	%eax, %edi
L250:
	movl	_GImGui, %eax
	leal	0(,%edi,4), %edx
	testl	%eax, %eax
	je	L252
	addl	$1, 188(%eax)
L252:
	xorl	%eax, %eax
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-496(%ebp), %ecx
	movl	%eax, -488(%ebp)
	movl	68(%ecx), %edx
	testl	%edx, %edx
	je	L253
	movl	60(%ecx), %eax
	movl	%eax, -520(%ebp)
	sall	$2, %eax
	movl	%edx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	-488(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	-496(%ebp), %ecx
	movl	68(%ecx), %edx
	testl	%edx, %edx
	je	L254
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L254
	subl	$1, 188(%eax)
L254:
	xorl	%eax, %eax
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L253:
	movl	-496(%ebp), %eax
	movl	-488(%ebp), %edx
	movl	%edi, 64(%eax)
	movl	60(%eax), %ecx
	movl	%edx, 68(%eax)
	jmp	L248
L421:
	orl	$805240832, %edx
	jmp	L150
L249:
	movl	%ecx, %eax
	movl	$2, %edi
	cltd
	idivl	%edi
	movl	-488(%ebp), %edx
	movl	%edx, %edi
	addl	%ecx, %eax
	cmpl	%edx, %eax
	cmovge	%eax, %edi
	cmpl	%edi, %ecx
	jge	L248
	jmp	L250
L406:
	call	_SDL_GetError
	movl	$LC467, (%esp)
	movl	%eax, 4(%esp)
	call	_initprintf
	call	__ZL24destroy_window_resourcesv.lto_priv.0
	jmp	L281
L407:
	call	_SDL_GetError
	movl	$LC468, (%esp)
	movl	%eax, 4(%esp)
	call	_initprintf
	call	__ZL24destroy_window_resourcesv.lto_priv.0
	jmp	L281
	.cfi_endproc
LFE8:
	.p2align 4
	.globl	_videoBeginDrawing
	.def	_videoBeginDrawing;	.scl	2;	.type	32;	.endef
_videoBeginDrawing:
LFB109:
	.cfi_startproc
	cmpl	$8, _bpp
	jle	L423
	cmpb	$0, _offscreenrendering
	je	L436
L422:
	ret
	.p2align 4,,10
	.p2align 3
L423:
	movl	_lockcount, %eax
	leal	1(%eax), %edx
	movl	%edx, _lockcount
	testl	%eax, %eax
	jg	L422
	movzbl	_offscreenrendering, %edx
	cmpb	$0, _inpreparemirror
	jne	L437
	testb	%dl, %dl
	jne	L438
	movl	__ZL6buffer.lto_priv.0, %eax
	cmpb	$0, _nogl
	cmovne	__ZL6buffer.lto_priv.1, %eax
L426:
	movl	%eax, _frameplace
	cmpb	$0, _modechange
	je	L422
	movl	_xdim, %eax
	movl	_ydim, %edx
	movl	%eax, _bytesperline
	call	_calc_ylookup
	movb	$0, _modechange
	ret
	.p2align 4,,10
	.p2align 3
L436:
	movl	$0, _frameplace
	movl	$0, _bytesperline
	movb	$0, _modechange
	ret
	.p2align 4,,10
	.p2align 3
L437:
	movl	_mirrorBuffer, %eax
	testb	%dl, %dl
	je	L426
	movl	__ZZ17videoBeginDrawingE16backupFrameplace, %edx
	movl	_frameplace, %ecx
	testl	%edx, %edx
	je	L439
	cmpl	%eax, %ecx
	je	L422
	cmpl	%ecx, %edx
	jne	L422
	movl	%eax, _frameplace
	ret
	.p2align 4,,10
	.p2align 3
L439:
	movl	%ecx, __ZZ17videoBeginDrawingE16backupFrameplace
	movl	%eax, _frameplace
	ret
	.p2align 4,,10
	.p2align 3
L438:
	movl	__ZZ17videoBeginDrawingE16backupFrameplace, %eax
	testl	%eax, %eax
	je	L422
	movl	%eax, _frameplace
	movl	$0, __ZZ17videoBeginDrawingE16backupFrameplace
	ret
	.cfi_endproc
LFE109:
	.p2align 4
	.globl	_videoEndDrawing
	.def	_videoEndDrawing;	.scl	2;	.type	32;	.endef
_videoEndDrawing:
LFB113:
	.cfi_startproc
	cmpl	$8, _bpp
	jg	L448
	movl	_frameplace, %eax
	testl	%eax, %eax
	je	L440
	movl	_lockcount, %eax
	cmpl	$1, %eax
	jg	L449
	cmpb	$0, _offscreenrendering
	jne	L444
	movl	$0, _frameplace
L444:
	testl	%eax, %eax
	je	L440
	movl	$0, _lockcount
L440:
	ret
	.p2align 4,,10
	.p2align 3
L448:
	cmpb	$0, _offscreenrendering
	jne	L440
	movl	$0, _frameplace
	ret
	.p2align 4,,10
	.p2align 3
L449:
	subl	$1, %eax
	movl	%eax, _lockcount
	ret
	.cfi_endproc
LFE113:
	.p2align 4
	.globl	_videoUpdatePalette.constprop.0.isra.0
	.def	_videoUpdatePalette.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
_videoUpdatePalette.constprop.0.isra.0:
LFB117:
	.cfi_startproc
	cmpl	$8, _bpp
	jg	L459
	cmpb	$0, _nogl
	je	L462
	movl	__ZL11sdl_surface.lto_priv.0, %eax
	testl	%eax, %eax
	je	L459
	movl	__ZL6buffer.lto_priv.1, %edx
	testl	%edx, %edx
	je	L459
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$8, %edx
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
	movl	4(%eax), %eax
	movl	12(%eax), %esi
	movl	20(%eax), %edi
	movl	16(%eax), %ebp
	xorl	%eax, %eax
	rep bsfl	%esi, %eax
	movl	%esi, %ebx
	movl	%eax, %ecx
	movl	%eax, (%esp)
	shrl	%cl, %ebx
	leal	1(%ebx), %eax
	movl	%edx, %ebx
	rep bsfl	%eax, %eax
	subl	%eax, %ebx
	xorl	%eax, %eax
	rep bsfl	%ebp, %eax
	movl	%ebx, 4(%esp)
	movl	%ebp, %ebx
	movl	%eax, %ecx
	movl	%eax, 8(%esp)
	shrl	%cl, %ebx
	xorl	%ecx, %ecx
	leal	1(%ebx), %eax
	movl	%edx, %ebx
	rep bsfl	%edi, %ecx
	rep bsfl	%eax, %eax
	movl	%ecx, 20(%esp)
	subl	%eax, %ebx
	movl	%edi, %eax
	shrl	%cl, %eax
	movl	%ebx, 12(%esp)
	xorl	%ebx, %ebx
	addl	$1, %eax
	rep bsfl	%eax, %eax
	subl	%eax, %edx
	movl	%edx, 16(%esp)
	.p2align 4
	.p2align 3
L453:
	movzbl	_curpalettefaded(,%ebx,4), %eax
	movzbl	4(%esp), %ecx
	movzbl	_curpalettefaded+1(,%ebx,4), %edx
	sarl	%cl, %eax
	movzbl	(%esp), %ecx
	sall	%cl, %eax
	movzbl	12(%esp), %ecx
	andl	%esi, %eax
	sarl	%cl, %edx
	movzbl	8(%esp), %ecx
	sall	%cl, %edx
	movzbl	16(%esp), %ecx
	andl	%ebp, %edx
	orl	%edx, %eax
	movzbl	_curpalettefaded+2(,%ebx,4), %edx
	sarl	%cl, %edx
	movzbl	20(%esp), %ecx
	sall	%cl, %edx
	andl	%edi, %edx
	orl	%edx, %eax
	movl	%eax, __ZL4pPal.lto_priv.0(,%ebx,4)
	addl	$1, %ebx
	cmpl	$256, %ebx
	jne	L453
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
L462:
	movl	__ZL6buffer.lto_priv.0, %ecx
	testl	%ecx, %ecx
	je	L459
	jmp	__Z20glsurface_setPalettePv.part.0.constprop.0
	.p2align 4,,10
	.p2align 3
L459:
	ret
	.cfi_endproc
LFE117:
	.p2align 4
	.globl	_videoSetGamma
	.def	_videoSetGamma;	.scl	2;	.type	32;	.endef
_videoSetGamma:
LFB125:
	.cfi_startproc
	cmpb	$0, _novideo
	jne	L472
	cmpb	$0, _nogl
	je	L475
	jmp	_videoSetGamma.part.0
	.p2align 4,,10
	.p2align 3
L475:
	movss	_g_videoGamma, %xmm0
	movss	_g_videoContrast, %xmm1
	movl	$0x00000000, _g_glColorCorrection+12
	movss	_g_videoSaturation, %xmm2
	movss	%xmm0, _g_glColorCorrection
	movss	%xmm1, _g_glColorCorrection+4
	movss	%xmm2, _g_glColorCorrection+8
	cmpl	$3, _rendmode
	je	L476
L472:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L476:
	movl	_gl, %eax
	testl	%eax, %eax
	je	L472
	cmpl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	jne	L472
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	__ZL27polymost1ColorCorrectionLoc.lto_priv.0, %eax
	movl	$0x00000000, 16(%esp)
	movl	%eax, (%esp)
	movss	%xmm2, 12(%esp)
	movss	%xmm1, 8(%esp)
	movss	%xmm0, 4(%esp)
	call	*_glad_glUniform4f
	.cfi_def_cfa_offset 4
	xorl	%eax, %eax
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE125:
	.section .rdata,"dr"
LC484:
	.ascii "\15\12\0"
LC485:
	.ascii "Pasted %d lines.\0"
LC486:
	.ascii "source/build/src/osd.cpp\0"
	.text
	.p2align 4
	.globl	_handleevents.isra.0
	.def	_handleevents.isra.0;	.scl	2;	.type	32;	.endef
_handleevents.isra.0:
LFB131:
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
	subl	$160, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	cmpb	$0, _g_ImGuiFrameActive
	jne	L856
L478:
	cmpb	$2, __ZL6linked.lto_priv.0
	ja	L479
	je	L857
L480:
	testb	$2, _g_mouseBits
	je	L485
	movl	_osd, %eax
	testb	$4, 1172(%eax)
	jne	L858
L485:
	movl	_inputchecked, %ebx
	testl	%ebx, %ebx
	je	L491
	cmpb	$0, _g_mouseEnabled
	je	L491
	movl	_osd, %edx
	movl	_g_mouseBits, %eax
	testb	$4, 1172(%edx)
	je	L493
	testb	$48, %al
	je	L493
	movl	3248(%edx), %edx
	movl	_ydim, %ecx
	movl	16(%edx), %edx
	cmpl	$__ZL22_internal_getrowheighti.lto_priv.0, %edx
	jne	L495
	testl	%ecx, %ecx
	leal	7(%ecx), %edx
	cmovns	%ecx, %edx
	sarl	$3, %edx
L496:
	sarl	$4, %edx
	testb	$16, %al
	je	L497
	movl	_osd, %ebx
	movzwl	1152(%ebx), %ecx
	movl	32(%ebx), %esi
	subl	__ZL10osdrowscur.lto_priv.0, %esi
	cmpl	%esi, %ecx
	jge	L497
	addl	%edx, %ecx
	cmpl	%esi, %ecx
	cmovg	%esi, %ecx
	movw	%cx, 1152(%ebx)
L497:
	testb	$32, %al
	je	L493
	movl	_osd, %ebx
	movzwl	1152(%ebx), %ecx
	testw	%cx, %cx
	je	L493
	subl	%edx, %ecx
	movl	$0, %edx
	cmovs	%edx, %ecx
	movw	%cx, 1152(%ebx)
	.p2align 4
	.p2align 3
L493:
	andl	$-49, %eax
	movl	%eax, _g_mouseBits
L491:
	movl	__ZL10g_ImGui_IO.lto_priv.0, %eax
	movb	$0, _g_ImGuiCapturedDevices
	testl	%eax, %eax
	je	L499
	cmpb	$0, 153(%eax)
	je	L500
	movb	$1, _g_ImGuiCapturedDevices
L500:
	cmpb	$0, 152(%eax)
	jne	L859
L499:
	leal	-144(%ebp), %ebx
	.p2align 4
	.p2align 3
L663:
	movl	%ebx, (%esp)
	call	_SDL_PollEvent
	testl	%eax, %eax
	je	L860
L664:
	movl	__ZL10g_ImGui_IO.lto_priv.0, %edx
	movl	-144(%ebp), %eax
	testl	%edx, %edx
	je	L501
	cmpb	$0, 153(%edx)
	je	L502
	leal	-768(%eax), %ecx
	cmpl	$1, %ecx
	jbe	L503
	cmpl	$771, %eax
	je	L503
	cmpb	$0, 152(%edx)
	je	L504
	leal	-1024(%eax), %edx
	cmpl	$3, %edx
	jbe	L505
	cmpl	$769, %eax
	ja	L514
L850:
	cmpl	$512, %eax
	jne	L518
	.p2align 4
	.p2align 3
L515:
	movzbl	-132(%ebp), %edx
	leal	-4(%edx), %eax
	cmpb	$9, %al
	ja	L663
	movzbl	%al, %eax
	jmp	*L633(,%eax,4)
	.section .rdata,"dr"
	.align 4
L633:
	.long	L638
	.long	L637
	.long	L663
	.long	L636
	.long	L635
	.long	L635
	.long	L634
	.long	L634
	.long	L632
	.long	L632
	.text
	.p2align 4,,10
	.p2align 3
L505:
	movl	%ebx, %eax
	call	__Z27ImGui_ImplSDL2_ProcessEventPK9SDL_Event
	testb	%al, %al
	jne	L663
	movl	-144(%ebp), %eax
	.p2align 4
	.p2align 3
L501:
	cmpl	$769, %eax
	je	L509
	jbe	L511
	cmpl	$1027, %eax
	je	L519
L510:
	cmpl	$4096, %eax
	je	L520
	leal	-132(%ebp), %esi
	cmpl	$771, %eax
	jne	L527
L529:
	movl	_osd, %eax
	movzbl	(%esi), %edi
	movl	3244(%eax), %eax
	movl	%edi, %ecx
	cmpb	_g_keyAsciiTable(%eax), %cl
	je	L528
	movzbl	_g_keyAsciiEnd, %eax
	movzbl	_g_keyAsciiPos, %edx
	addl	$1, %eax
	andl	$63, %eax
	cmpl	%edx, %eax
	je	L528
	movzbl	%cl, %eax
	call	__Z14OSD_HandleCharc
	testl	%eax, %eax
	je	L528
	movzbl	_g_keyAsciiEnd, %edx
	movl	%edi, %ecx
	movl	%edx, %eax
	movb	%cl, _g_keyAsciiFIFO(%edx)
	addl	$1, %eax
	andl	$63, %eax
	movb	%al, _g_keyAsciiEnd
	.p2align 4
	.p2align 3
L528:
	leal	-101(%ebp), %eax
	cmpl	%esi, %eax
	je	L663
	addl	$1, %esi
	cmpb	$0, (%esi)
	jne	L529
	movl	%ebx, (%esp)
	call	_SDL_PollEvent
	testl	%eax, %eax
	jne	L664
L860:
	movl	$0, _inputchecked
	call	__Z16timerUpdateClockv
	movl	_frameplace, %eax
	testl	%eax, %eax
	jne	L477
	movl	__ZL10sdl_resize.lto_priv.0, %esi
	testl	%esi, %esi
	je	L477
	movl	_fullscreen, %eax
	movl	_upscalefactor, %edi
	movl	__ZL10sdl_resize.lto_priv.0+4, %ecx
	movl	%eax, -148(%ebp)
	cmpl	$200, _qsetmode
	je	L861
	movl	%esi, %eax
	movl	%ecx, %ebx
	cltd
	idivl	%edi
	movl	$640, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	imull	%edi, %eax
	cmpl	%esi, %eax
	cmovle	%eax, %esi
	movl	$640, %eax
	cmpl	%eax, %esi
	cmovl	%eax, %esi
	movl	%ecx, %eax
	cltd
	idivl	%edi
	movl	$480, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	imull	%edi, %eax
	cmpl	%ecx, %eax
	movzbl	_divtable32+2404, %ecx
	cmovle	%eax, %ebx
	movl	$480, %eax
	cmpl	%eax, %ebx
	cmovl	%eax, %ebx
	movl	_divtable32+2400, %eax
	testl	%eax, %eax
	jne	L668
	movl	%ecx, %edx
	movl	%ebx, %eax
	sarb	$7, %dl
	sarl	%cl, %eax
	movsbl	%dl, %edx
	xorl	%edx, %eax
	subl	%edx, %eax
L669:
	cmpl	%edi, %eax
	movl	$8, %ecx
	movl	%ebx, %edx
	movl	$0, _g_lastpalettesum
	movl	$0, _g_lastpalettesum+4
	cmovle	%eax, %edi
	movl	$1, %eax
	testl	%edi, %edi
	cmovle	%eax, %edi
	movzbl	-148(%ebp), %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	_videoSetMode
	testl	%eax, %eax
	js	L667
	movl	%esi, %eax
	xorps	%xmm0, %xmm0
	movl	%edi, _upscalefactor
	movl	$0, _rendmode
	cltd
	idivl	%edi
	movl	%eax, %esi
	movl	%eax, _xdim
	movl	%ebx, %eax
	cltd
	cvtsi2ssl	%esi, %xmm0
	idivl	%edi
	movss	%xmm0, _fxdim
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movl	%eax, %edx
	movl	%eax, _ydim
	movl	%esi, %eax
	movss	%xmm0, _fydim
	call	__Z17OSD_ResizeDisplayii
	call	__ZL20videoAllocateBuffersv.lto_priv.0
	movl	_xdim, %eax
	xorl	%edx, %edx
	leal	-1(%eax), %ecx
	movl	_ydim, %eax
	subl	$1, %eax
	movl	%eax, (%esp)
	xorl	%eax, %eax
	call	_videoSetViewableArea
	call	_videoBeginDrawing
	movl	_ydim, %eax
	imull	_bytesperline, %eax
	movl	$0, 4(%esp)
	movl	%eax, 8(%esp)
	movl	_frameplace, %eax
	movl	%eax, (%esp)
	call	_memset
	call	_videoEndDrawing
	movl	_xres, %eax
	movzwl	_yres, %edx
	sall	$16, %eax
	orl	%edx, %eax
	movl	%eax, _qsetmode
L667:
	movl	$0, __ZL10sdl_resize.lto_priv.0
	movl	$0, __ZL10sdl_resize.lto_priv.0+4
L477:
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
L503:
	.cfi_restore_state
	movl	%ebx, %eax
	call	__Z27ImGui_ImplSDL2_ProcessEventPK9SDL_Event
	movl	%eax, %edx
	movl	-144(%ebp), %eax
	testb	%dl, %dl
	je	L507
	cmpl	$771, %eax
	je	L663
L507:
	movl	__ZL10g_ImGui_IO.lto_priv.0, %edx
L502:
	cmpb	$0, 152(%edx)
	je	L501
	leal	-1024(%eax), %edx
	cmpl	$3, %edx
	jbe	L505
	cmpl	$769, %eax
	je	L509
	ja	L510
L511:
	cmpl	$512, %eax
	je	L515
	cmpl	$768, %eax
	je	L523
L518:
	cmpl	$256, %eax
	jne	L525
	cmpb	$0, _DemoPlaying
	je	L663
	call	__Z13TerminateGamev
	jmp	L663
	.p2align 4,,10
	.p2align 3
L523:
	cmpl	$109, -124(%ebp)
	je	L862
L530:
	movl	-128(%ebp), %esi
	movzbl	__ZL14keytranslation.lto_priv.0(%esi), %edi
	movl	%edi, %edx
L677:
	movzbl	_g_keyAsciiEnd, %eax
	movzbl	_g_keyAsciiPos, %ecx
	addl	$1, %eax
	andl	$63, %eax
	cmpl	%ecx, %eax
	je	L532
	cmpl	$88, %esi
	je	L679
	cmpl	$40, %esi
	je	L679
	cmpl	$41, %esi
	je	L680
	cmpl	$42, %esi
	je	L681
	cmpl	$43, %esi
	je	L682
	movzwl	-120(%ebp), %eax
	andw	$4035, %ax
	cmpw	$64, %ax
	je	L863
L534:
	movl	_osd, %esi
	movl	3244(%esi), %eax
	movl	%eax, -148(%ebp)
	movzbl	_g_keyAsciiTable(%eax), %eax
	cmpl	-124(%ebp), %eax
	je	L537
	movb	%dl, -148(%ebp)
	call	_SDL_IsTextInputActive
	movzbl	-148(%ebp), %edx
	testl	%eax, %eax
	jne	L535
	movl	-124(%ebp), %esi
	movzwl	-120(%ebp), %ecx
	leal	-97(%esi), %eax
	cmpl	$25, %eax
	ja	L538
	movl	%ecx, %eax
	shrw	$13, %ax
	andl	$1, %eax
	andl	$3, %ecx
	leal	-32(%esi), %ecx
	setne	-148(%ebp)
	cmpb	-148(%ebp), %al
	cmovne	%ecx, %esi
	jmp	L540
	.p2align 4,,10
	.p2align 3
L504:
	cmpl	$769, %eax
	jbe	L850
	cmpl	$1027, %eax
	je	L519
L514:
	cmpl	$4096, %eax
	jne	L527
	.p2align 4
	.p2align 3
L520:
	movl	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	_SDL_free
	jmp	L663
	.p2align 4,,10
	.p2align 3
L519:
	movl	-124(%ebp), %esi
	testl	%esi, %esi
	jle	L631
	orl	$16, _g_mouseBits
	jmp	L663
	.p2align 4,,10
	.p2align 3
L509:
	movl	-128(%ebp), %eax
	movzbl	__ZL14keytranslation.lto_priv.0(%eax), %edi
	movl	$769, %eax
	movl	%edi, %edx
L513:
	movl	_osd, %esi
	testl	%esi, %esi
	je	L627
	cmpl	3244(%esi), %edi
	je	L864
	movl	1172(%esi), %ecx
	testb	$4, %cl
	je	L627
L675:
	cmpb	$42, %dl
	je	L689
	cmpb	$54, %dl
	je	L689
	andl	$127, %edx
	cmpb	$29, %dl
	jne	L663
	andl	$-33, %ecx
	movl	%ecx, 1172(%esi)
	jmp	L663
	.p2align 4,,10
	.p2align 3
L857:
	cmpb	$0, __ZL6linked.lto_priv.0+1
	jne	L479
	cmpb	$8, __ZL6linked.lto_priv.0+2
	jbe	L480
	.p2align 4
	.p2align 3
L479:
	testb	$2, _joystick+44
	je	L480
	movl	_joystick+36, %eax
	testl	%eax, %eax
	je	L481
	leal	-88(%ebp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	$1000, %eax
	imull	-84(%ebp)
	imull	$1000, -88(%ebp), %ebx
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movzwl	_joystick+40, %ecx
	movzwl	_joystick+38, %edx
	addl	%ecx, %ebx
	addl	%eax, %ebx
	movzwl	_joystick+36, %eax
	testb	$1, _joystick+44
	movl	%ebx, __ZZ12handleeventsE14rumbleZeroTime
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	jne	L865
	movl	__ZL6joydev.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_JoystickRumble
L483:
	movl	$0, _joystick+36
	xorl	%eax, %eax
	movw	%ax, _joystick+40
	jmp	L480
	.p2align 4,,10
	.p2align 3
L859:
	orb	$2, _g_ImGuiCapturedDevices
	jmp	L499
	.p2align 4,,10
	.p2align 3
L532:
	movl	_osd, %esi
	movl	3244(%esi), %eax
	movl	%eax, -148(%ebp)
	movzbl	_g_keyAsciiTable(%eax), %eax
	movl	%eax, %ecx
	movl	-144(%ebp), %eax
	cmpl	%ecx, -124(%ebp)
	je	L537
L671:
	movl	-148(%ebp), %ecx
	cmpl	%ecx, %edi
	je	L866
L578:
	movl	1172(%esi), %ecx
	testb	$4, %cl
	je	L577
	cmpl	$768, %eax
	jne	L675
	movl	3248(%esi), %eax
	movl	24(%eax), %ecx
	xorl	%eax, %eax
	cmpl	$__Z10SetVisHighv, %ecx
	jne	L867
L585:
	movl	%eax, __ZL10osdkeytime.lto_priv.0
	cmpb	$-45, %dl
	ja	L663
	cmpb	$-100, %dl
	jbe	L868
	addl	$99, %edx
	cmpb	$54, %dl
	ja	L663
	movzbl	%dl, %edx
	jmp	*L592(,%edx,4)
	.section .rdata,"dr"
	.align 4
L592:
	.long	L590
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L663
	.long	L601
	.long	L600
	.long	L599
	.long	L663
	.long	L598
	.long	L663
	.long	L597
	.long	L663
	.long	L596
	.long	L595
	.long	L594
	.long	L593
	.long	L591
	.text
	.p2align 4,,10
	.p2align 3
L527:
	cmpl	$1538, %eax
	je	L644
	jbe	L869
	cmpl	$1618, %eax
	ja	L654
	cmpl	$1616, %eax
	ja	L655
	cmpl	$1540, %eax
	jbe	L656
	cmpl	$1616, %eax
	jne	L663
L657:
	cmpb	$0, _appactive
	je	L663
	movzbl	-132(%ebp), %eax
	cmpl	_joystick+16, %eax
	jge	L663
	movswl	-128(%ebp), %ecx
	movl	_joystick, %edx
	movl	%ecx, (%edx,%eax,4)
	jmp	L663
	.p2align 4,,10
	.p2align 3
L679:
	movl	$13, %esi
L540:
	movl	%esi, %eax
	movb	%dl, -148(%ebp)
	movzbl	%al, %eax
	call	__Z14OSD_HandleCharc
	movzbl	-148(%ebp), %edx
	testl	%eax, %eax
	je	L535
	movzbl	_g_keyAsciiEnd, %ecx
	movl	%esi, %eax
	movb	%al, _g_keyAsciiFIFO(%ecx)
	movzbl	_g_keyAsciiEnd, %eax
	addl	$1, %eax
	andl	$63, %eax
	movb	%al, _g_keyAsciiEnd
L535:
	movl	_osd, %esi
	movl	-144(%ebp), %eax
	testl	%esi, %esi
	je	L577
	movl	3244(%esi), %ecx
	movl	%ecx, -148(%ebp)
	movl	-148(%ebp), %ecx
	cmpl	%ecx, %edi
	jne	L578
L866:
	cmpb	$0, _keystatus+42
	je	L674
L579:
	cmpl	$768, %eax
	jne	L580
	movl	__ZL10osdrowscur.lto_priv.0, %eax
	cmpl	$-1, %eax
	je	L685
	cmpl	1144(%esi), %eax
	je	L686
	movzbl	1154(%esi), %edx
	movl	%edx, %ecx
	negl	%ecx
	cmpb	$-1, %dl
	sete	%dl
	movsbl	%cl, %edi
	movzbl	%dl, %edx
L581:
	movb	%cl, 1154(%esi)
	addl	%edi, %eax
	movl	%eax, __ZL10osdrowscur.lto_priv.0
	movl	%edx, %eax
	call	__Z16OSD_CaptureInputi
	leal	-88(%ebp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	$1000, %eax
	imull	-84(%ebp)
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	%eax, %edx
	imull	$1000, -88(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, __ZL10osdscrtime.lto_priv.0
L580:
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L626:
	movzbl	_g_keyRemapTable(%esi), %eax
	cmpb	$0, _keystatus(%eax)
	je	L624
	movl	_keypresscallback, %edx
	testl	%edx, %edx
	je	L624
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	*%edx
	movzbl	_g_keyRemapTable(%esi), %eax
L624:
	addl	$1, %esi
	movb	$0, _keystatus(%eax)
	cmpl	$256, %esi
	jne	L626
	jmp	L663
	.p2align 4,,10
	.p2align 3
L689:
	andl	$-17, %ecx
	movl	%ecx, 1172(%esi)
	jmp	L663
	.p2align 4,,10
	.p2align 3
L864:
	cmpb	$0, _keystatus+42
	jne	L580
L674:
	movl	1172(%esi), %edx
	andl	$132, %edx
	cmpl	$128, %edx
	jne	L579
L577:
	cmpl	$768, %eax
	je	L870
L627:
	cmpl	$89, %edi
	je	L663
	movzbl	_g_keyRemapTable(%edi), %eax
	movb	$0, _keystatus(%eax)
	movl	_keypresscallback, %eax
	testl	%eax, %eax
	je	L663
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	*%eax
	jmp	L663
	.p2align 4,,10
	.p2align 3
L631:
	je	L663
	orl	$32, _g_mouseBits
	jmp	L663
L870:
	movzbl	_g_keyRemapTable(%edi), %eax
	cmpb	$0, _keystatus(%eax)
	jne	L629
	movl	_keypresscallback, %edx
	testl	%edx, %edx
	je	L629
	movl	$1, 4(%esp)
	movl	%edi, (%esp)
	call	*%edx
	movzbl	_g_keyRemapTable(%edi), %eax
L629:
	movb	$1, _keystatus(%eax)
	movzbl	_g_keyFIFOend, %eax
	addl	$2, %eax
	andl	$63, %eax
	movb	%al, _g_keyFIFOend
	jmp	L663
	.p2align 4,,10
	.p2align 3
L856:
	call	__ZN5ImGui8EndFrameEv
	movb	$0, _g_ImGuiFrameActive
	jmp	L478
	.p2align 4,,10
	.p2align 3
L862:
	cmpb	$1, -132(%ebp)
	jne	L530
	testb	$-64, -120(%ebp)
	je	L530
	movl	_MOUSEHIDE, %ecx
	xorl	%eax, %eax
	movl	__ZL10sdl_window.lto_priv.0, %edx
	testl	%ecx, %ecx
	sete	%al
	movl	%eax, _MOUSEHIDE
	testl	%edx, %edx
	je	L531
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_SDL_SetWindowGrab
	movl	_MOUSEHIDE, %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	setne	%al
L531:
	movl	%eax, (%esp)
	call	_SDL_SetRelativeMouseMode
	movl	-128(%ebp), %esi
	movl	-144(%ebp), %eax
	movzbl	__ZL14keytranslation.lto_priv.0(%esi), %edi
	movl	%edi, %edx
	cmpl	$768, %eax
	jne	L513
	jmp	L677
	.p2align 4,,10
	.p2align 3
L868:
	cmpb	$42, %dl
	je	L587
	ja	L588
	cmpb	$1, %dl
	jne	L871
	movb	$-1, 1154(%esi)
	xorl	%eax, %eax
	subl	$1, __ZL10osdrowscur.lto_priv.0
	call	__Z16OSD_CaptureInputi
	leal	-88(%ebp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	$1000, %eax
	imull	-84(%ebp)
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	%eax, %edx
	imull	$1000, -88(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, __ZL10osdscrtime.lto_priv.0
	jmp	L663
	.p2align 4,,10
	.p2align 3
L869:
	cmpl	$1536, %eax
	je	L646
	cmpl	$1537, %eax
	je	L647
	cmpl	$1024, %eax
	jne	L525
L647:
	cmpb	$0, _appactive
	je	L663
	cmpb	$0, _g_mouseGrabbed
	je	L663
	movl	-116(%ebp), %eax
	addl	%eax, _g_mousePos
	movl	-112(%ebp), %eax
	addl	%eax, _g_mousePos+4
	jmp	L663
	.p2align 4,,10
	.p2align 3
L635:
	movl	$0, __ZL13sdl_minimized.lto_priv.0
	jmp	L663
	.p2align 4,,10
	.p2align 3
L632:
	cmpb	$12, %dl
	sete	%al
	movb	%al, _appactive
	cmpb	$0, _g_mouseGrabbed
	je	L640
	cmpb	$0, _g_mouseEnabled
	jne	L872
L640:
	movzbl	%al, %eax
	call	__Z24windowsHandleFocusChangei
	jmp	L663
	.p2align 4,,10
	.p2align 3
L634:
	cmpb	$10, %dl
	sete	_g_mouseInsideWindow
	jmp	L663
	.p2align 4,,10
	.p2align 3
L858:
	call	_SDL_HasClipboardText
	testl	%eax, %eax
	je	L485
	call	_SDL_GetClipboardText
	movl	$0, -88(%ebp)
	movl	%eax, %ebx
	movl	_osd, %eax
	movl	40(%eax), %esi
	testl	%esi, %esi
	jne	L873
L486:
	movl	%ebx, (%esp)
	call	_SDL_free
	jmp	L485
L656:
	testb	$1, _joystick+44
	jne	L663
L655:
	cmpb	$0, _appactive
	je	L663
	movzbl	-132(%ebp), %ecx
	cmpl	_joystick+24, %ecx
	jge	L663
	movl	$1, %eax
	movl	_joystick+12, %edx
	sall	%cl, %eax
	cmpb	$1, -131(%ebp)
	je	L874
	notl	%eax
	andl	%edx, %eax
	movl	%eax, _joystick+12
	jmp	L663
L865:
	movl	__ZL10controller.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_GameControllerRumble
	jmp	L483
L638:
	movl	_fullscreen, %esi
	testl	%esi, %esi
	jne	L663
	movlps	-128(%ebp), %xmm1
	movl	__ZL10sdl_window.lto_priv.0, %eax
	movb	$1, _g_windowPosValid
	movlps	%xmm1, _g_windowPos
	movl	%eax, (%esp)
	call	_SDL_GetWindowDisplayIndex
	cmpl	_r_displayindex, %eax
	jne	L643
	cmpb	$0, __ZL12modeschecked.lto_priv.0
	jne	L663
L643:
	movl	%eax, _r_displayindex
	movb	$0, __ZL12modeschecked.lto_priv.0
	call	_videoGetModes.constprop.0
	jmp	L663
L637:
	movl	_fullscreen, %ecx
	testl	%ecx, %ecx
	jne	L663
	movl	-124(%ebp), %eax
	movl	-128(%ebp), %edx
	andl	$-2, %eax
	andl	$-2, %edx
	movl	%edx, __ZL10sdl_resize.lto_priv.0
	movl	%eax, __ZL10sdl_resize.lto_priv.0+4
	jmp	L663
L636:
	movl	$1, __ZL13sdl_minimized.lto_priv.0
	jmp	L663
L537:
	movl	-144(%ebp), %eax
	jmp	L671
L861:
	movzbl	-148(%ebp), %eax
	movl	%edi, 4(%esp)
	movl	_bpp, %edx
	movl	%edx, (%esp)
	movl	%esi, %edx
	call	_videoSetGameMode
	jmp	L667
L587:
	movl	_osd, %eax
	orl	$16, 1172(%eax)
	jmp	L663
L591:
	movswl	52(%esi), %eax
	movswl	54(%esi), %edx
	testw	%ax, %ax
	je	L663
	cmpw	%ax, %dx
	je	L663
	jl	L875
L622:
	subl	$1, %eax
	movw	%ax, 52(%esi)
	jmp	L663
L593:
	movl	_osd, %ecx
	movl	1172(%ecx), %edx
	movl	%edx, %eax
	andl	$-9, %edx
	notl	%eax
	andl	$8, %eax
	orl	%edx, %eax
	movl	%eax, 1172(%ecx)
	jmp	L663
L594:
	movzwl	1152(%esi), %eax
	testw	%ax, %ax
	je	L663
L853:
	subl	$1, %eax
	movw	%ax, 1152(%esi)
	jmp	L663
L595:
	call	__ZL15OSD_HistoryNextv.lto_priv.0
	jmp	L663
L596:
	movl	_osd, %edx
	testb	$32, 1172(%edx)
	jne	L876
	movzwl	52(%esi), %eax
	movw	%ax, 54(%esi)
	movw	%ax, 58(%esi)
	subw	1148(%edx), %ax
	addw	$4, %ax
	jns	L854
	xorl	%edi, %edi
	movw	%di, 56(%esi)
	movl	1148(%edx), %eax
	subl	$4, %eax
	movw	%ax, 58(%esi)
	jmp	L663
L597:
	movzwl	54(%esi), %eax
	movzwl	52(%esi), %ecx
	cmpw	%cx, %ax
	jge	L614
	movl	_osd, %edx
	testb	$32, 1172(%edx)
	je	L615
	movl	44(%esi), %edi
	movswl	%ax, %edx
	jmp	L618
L616:
	leal	1(%edx), %eax
	addl	$1, %edx
	movw	%ax, 54(%esi)
	cmpw	%dx, %cx
	jle	L619
L618:
	cmpb	$32, (%edi,%edx)
	jne	L616
	movzwl	54(%esi), %eax
L619:
	movswl	%ax, %edx
	cmpw	%ax, %cx
	jg	L621
	jmp	L614
	.p2align 5
	.p2align 4,,10
	.p2align 3
L620:
	leal	1(%edx), %eax
	addl	$1, %edx
	movw	%ax, 54(%esi)
	cmpw	%dx, %cx
	jle	L614
L621:
	cmpb	$32, (%edi,%edx)
	je	L620
	movzwl	54(%esi), %eax
L614:
	movzwl	58(%esi), %edx
	cmpw	%ax, %dx
	jg	L663
	movzwl	56(%esi), %ecx
	movw	%ax, 58(%esi)
	addl	%eax, %ecx
	subl	%edx, %ecx
	movw	%cx, 56(%esi)
	jmp	L663
L871:
	cmpb	$29, %dl
	jne	L663
L590:
	movl	_osd, %eax
	orl	$32, 1172(%eax)
	jmp	L663
L598:
	movzwl	54(%esi), %eax
	testw	%ax, %ax
	jle	L606
	movl	_osd, %edx
	testb	$32, 1172(%edx)
	je	L607
	movl	44(%esi), %ecx
	movswl	%ax, %edx
	jmp	L610
	.p2align 5
	.p2align 4,,10
	.p2align 3
L608:
	leal	-1(%edx), %eax
	subl	$1, %edx
	movw	%ax, 54(%esi)
	testw	%dx, %dx
	jle	L611
L610:
	cmpb	$32, -1(%ecx,%edx)
	je	L608
	movzwl	54(%esi), %eax
L611:
	movswl	%ax, %edx
	testw	%ax, %ax
	jg	L613
	jmp	L606
	.p2align 5
	.p2align 4,,10
	.p2align 3
L612:
	leal	-1(%edx), %eax
	subl	$1, %edx
	movw	%ax, 54(%esi)
	testw	%dx, %dx
	jle	L606
L613:
	cmpb	$32, -1(%ecx,%edx)
	jne	L612
	movzwl	54(%esi), %eax
L606:
	movzwl	56(%esi), %edx
	cmpw	%ax, %dx
	jle	L663
	movzwl	58(%esi), %ecx
	addl	%eax, %ecx
	subl	%edx, %ecx
	movw	%cx, 58(%esi)
L854:
	movw	%ax, 56(%esi)
	jmp	L663
L599:
	movl	_osd, %eax
	movzwl	1152(%esi), %ecx
	movl	32(%eax), %eax
	subl	__ZL10osdrowscur.lto_priv.0, %eax
	movl	%ecx, %edx
	cmpl	%eax, %ecx
	jge	L663
	addl	$1, %edx
	movw	%dx, 1152(%esi)
	jmp	L663
L600:
	call	__ZL15OSD_HistoryPrevv.lto_priv.0
	jmp	L663
L601:
	movl	_osd, %eax
	testb	$32, 1172(%eax)
	je	L603
	movl	32(%eax), %eax
	jmp	L853
	.p2align 4,,10
	.p2align 3
L867:
	movb	%dl, -148(%ebp)
	call	*%ecx
	movzbl	-148(%ebp), %edx
	jmp	L585
L654:
	subl	$1619, %eax
	cmpl	$1, %eax
	ja	L663
	movl	_g_controllerHotplugCallback, %edx
	testl	%edx, %edx
	je	L663
	call	_SDL_NumJoysticks
	cmpl	__ZL12numjoysticks.lto_priv.0, %eax
	je	L663
	call	*_g_controllerHotplugCallback
	jmp	L663
	.p2align 4,,10
	.p2align 3
L525:
	subl	$1025, %eax
	cmpl	$1, %eax
	ja	L663
	cmpb	$5, -128(%ebp)
	ja	L663
	movzbl	-128(%ebp), %eax
	jmp	*L649(,%eax,4)
	.section .rdata,"dr"
	.align 4
L649:
	.long	L663
	.long	L688
	.long	L652
	.long	L651
	.long	L650
	.long	L648
	.text
L481:
	movl	__ZZ12handleeventsE14rumbleZeroTime, %edi
	testl	%edi, %edi
	je	L480
	leal	-88(%ebp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	$1000, %eax
	imull	-84(%ebp)
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	%eax, %edx
	imull	$1000, -88(%ebp), %eax
	addl	%edx, %eax
	cmpl	__ZZ12handleeventsE14rumbleZeroTime, %eax
	jb	L480
	testb	$1, _joystick+44
	movl	$0, __ZZ12handleeventsE14rumbleZeroTime
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	je	L484
	movl	__ZL10controller.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_GameControllerRumble
	jmp	L480
	.p2align 4,,10
	.p2align 3
L646:
	testb	$1, _joystick+44
	jne	L663
	jmp	L657
L644:
	movups	LC487, %xmm0
	movups	%xmm0, -88(%ebp)
	movups	LC488, %xmm0
	movups	%xmm0, -72(%ebp)
	movups	LC489, %xmm0
	movups	%xmm0, -56(%ebp)
	movups	LC490, %xmm0
	movups	%xmm0, -40(%ebp)
	cmpb	$0, _appactive
	je	L663
	movzbl	-132(%ebp), %eax
	cmpl	_joystick+28, %eax
	jge	L663
	movzbl	-131(%ebp), %edx
	andl	$15, %edx
	movl	-88(%ebp,%edx,4), %ecx
	movl	_joystick+4, %edx
	movl	%ecx, (%edx,%eax,4)
	jmp	L663
L588:
	cmpb	$54, %dl
	je	L587
	cmpb	$58, %dl
	jne	L663
	movl	_osd, %ecx
	movl	1172(%ecx), %edx
	movl	%edx, %eax
	andl	$-65, %edx
	notl	%eax
	andl	$64, %eax
	orl	%edx, %eax
	movl	%eax, 1172(%ecx)
	jmp	L663
L668:
	imull	%ebx
	movl	%ecx, %eax
	sarb	$7, %al
	movl	%edx, -152(%ebp)
	movsbl	%al, %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	-152(%ebp), %edx
	addl	%edx, %eax
	testb	$64, %cl
	cmovne	%eax, %edx
	movl	%edx, %eax
	shrl	$31, %edx
	sarl	%cl, %eax
	addl	%edx, %eax
	jmp	L669
L680:
	movl	$27, %esi
	jmp	L540
L873:
	movl	%ebx, (%esp)
	call	_strlen
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%eax, %edi
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L487
	movl	%edi, 8(%esp)
	xorl	%edi, %edi
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	leal	-88(%ebp), %ecx
	movl	$LC484, %edx
	movl	%ebx, %eax
	call	_Bstrtoken.constprop.0
	testl	%eax, %eax
	je	L489
	.p2align 4
	.p2align 3
L488:
	movl	_osd, %edx
	addl	$1, %edi
	addl	$1, 3240(%edx)
	xorl	%edx, %edx
	call	__Z12OSD_DispatchPKcb
	movl	_osd, %eax
	leal	-88(%ebp), %ecx
	movl	$LC484, %edx
	subl	$1, 3240(%eax)
	xorl	%eax, %eax
	call	_Bstrtoken.constprop.0
	testl	%eax, %eax
	jne	L488
L489:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L490
	movl	%edi, 16(%esp)
	movl	$LC485, 12(%esp)
	movl	$172, 8(%esp)
	movl	$LC486, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L490:
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	andl	$-3, _g_mouseBits
	jmp	L486
L603:
	movl	$0, 54(%esi)
	movl	1148(%eax), %eax
	subl	$4, %eax
	movw	%ax, 58(%esi)
	jmp	L663
L876:
	xorl	%eax, %eax
	movw	%ax, 1152(%esi)
	jmp	L663
L872:
	movl	__ZL10sdl_window.lto_priv.0, %eax
	testl	%eax, %eax
	je	L642
	movl	_MOUSEHIDE, %ecx
	xorl	%edx, %edx
	movl	%eax, (%esp)
	testl	%ecx, %ecx
	setne	%dl
	movl	%edx, 4(%esp)
	call	_SDL_SetWindowGrab
L642:
	movl	_MOUSEHIDE, %edi
	xorl	%eax, %eax
	testl	%edi, %edi
	setne	%al
	movl	%eax, (%esp)
	call	_SDL_SetRelativeMouseMode
	movzbl	_appactive, %eax
	jmp	L640
L648:
	movl	$64, %edx
L653:
	movl	_g_mouseBits, %ecx
	movl	%edx, %eax
	notl	%eax
	orl	%ecx, %edx
	andl	%ecx, %eax
	cmpb	$1, -127(%ebp)
	cmove	%edx, %eax
	movl	%eax, _g_mouseBits
	jmp	L663
L688:
	movl	$1, %edx
	jmp	L653
L650:
	movl	$8, %edx
	jmp	L653
L651:
	movl	$2, %edx
	jmp	L653
L652:
	movl	$4, %edx
	jmp	L653
L863:
	leal	-4(%esi), %eax
	subl	$3, %esi
	cmpl	$25, %eax
	jbe	L540
	jmp	L534
L495:
	movl	%ecx, (%esp)
	call	*%edx
	movl	%eax, %edx
	movl	_g_mouseBits, %eax
	jmp	L496
L681:
	movl	$8, %esi
	jmp	L540
L682:
	movl	$9, %esi
	jmp	L540
L538:
	testb	$3, %cl
	je	L541
	leal	-39(%esi), %eax
	cmpl	$57, %eax
	ja	L542
	jmp	*L543(,%eax,4)
	.section .rdata,"dr"
	.align 4
L543:
	.long	L563
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L562
	.long	L561
	.long	L560
	.long	L559
	.long	L558
	.long	L557
	.long	L556
	.long	L555
	.long	L554
	.long	L553
	.long	L552
	.long	L551
	.long	L550
	.long	L549
	.long	L542
	.long	L548
	.long	L542
	.long	L547
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L546
	.long	L545
	.long	L544
	.long	L542
	.long	L542
	.long	L683
	.text
L542:
	leal	-1073741908(%esi), %eax
	cmpl	$3, %eax
	ja	L576
	movl	_CSWTCH.725(,%eax,4), %esi
	jmp	L540
L607:
	subl	$1, %eax
	movw	%ax, 54(%esi)
	jmp	L606
L615:
	addl	$1, %eax
	movw	%ax, 54(%esi)
	jmp	L614
L541:
	andb	$16, %ch
	je	L542
	leal	-1073741913(%esi), %eax
	cmpl	$44, %eax
	ja	L542
	jmp	*L564(,%eax,4)
	.section .rdata,"dr"
	.align 4
L564:
	.long	L575
	.long	L574
	.long	L573
	.long	L572
	.long	L571
	.long	L570
	.long	L569
	.long	L568
	.long	L567
	.long	L566
	.long	L565
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L542
	.long	L684
	.text
L874:
	orl	%edx, %eax
	movl	%eax, _joystick+12
	jmp	L663
L875:
	movl	44(%esi), %ecx
	subl	%edx, %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	leal	1(%ecx,%edx), %eax
	addl	%edx, %ecx
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	_memmove
	movzwl	52(%esi), %eax
	jmp	L622
L576:
	cmpl	$127, %esi
	ja	L535
	jmp	L540
	.p2align 4,,10
	.p2align 3
L484:
	movl	__ZL6joydev.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_JoystickRumble
	jmp	L480
L487:
	movl	%edi, %eax
	call	__Z13handle_memerri
L685:
	movl	$1, %edx
	movl	$1, %edi
	movl	$1, %ecx
	jmp	L581
L686:
	xorl	%edx, %edx
	movl	$-1, %edi
	movl	$-1, %ecx
	jmp	L581
L683:
	movl	$126, %esi
	jmp	L540
L544:
	movl	$125, %esi
	jmp	L540
L545:
	movl	$124, %esi
	jmp	L540
L546:
	movl	$123, %esi
	jmp	L540
L547:
	movl	$43, %esi
	jmp	L540
L684:
	movl	$44, %esi
	jmp	L540
L565:
	movl	$46, %esi
	jmp	L540
L566:
	movl	$48, %esi
	jmp	L540
L567:
	movl	$57, %esi
	jmp	L540
L568:
	movl	$56, %esi
	jmp	L540
L569:
	movl	$55, %esi
	jmp	L540
L570:
	movl	$54, %esi
	jmp	L540
L571:
	movl	$53, %esi
	jmp	L540
L572:
	movl	$52, %esi
	jmp	L540
L573:
	movl	$51, %esi
	jmp	L540
L574:
	movl	$50, %esi
	jmp	L540
L575:
	movl	$49, %esi
	jmp	L540
L548:
	movl	$58, %esi
	jmp	L540
L549:
	movl	$40, %esi
	jmp	L540
L550:
	movl	$42, %esi
	jmp	L540
L551:
	movl	$38, %esi
	jmp	L540
L552:
	movl	$94, %esi
	jmp	L540
L553:
	movl	$37, %esi
	jmp	L540
L554:
	movl	$36, %esi
	jmp	L540
L555:
	movl	$35, %esi
	jmp	L540
L556:
	movl	$64, %esi
	jmp	L540
L557:
	movl	$33, %esi
	jmp	L540
L558:
	movl	$41, %esi
	jmp	L540
L559:
	movl	$63, %esi
	jmp	L540
L560:
	movl	$62, %esi
	jmp	L540
L561:
	movl	$95, %esi
	jmp	L540
L562:
	movl	$60, %esi
	jmp	L540
L563:
	movl	$34, %esi
	jmp	L540
	.cfi_endproc
LFE131:
	.align 2
	.p2align 4
	.globl	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0
	.def	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0;	.scl	2;	.type	32;	.endef
__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0:
LFB157:
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
	movl	__tls_index, %eax
	movl	%fs:44, %edx
	movl	(%edx,%eax,4), %eax
	leal	_tlsCacheBuckets@secrel32(%eax), %esi
	leal	_tlsCacheBuckets@secrel32+512(%eax), %ebx
	.p2align 4
	.p2align 3
L885:
	movl	56(%esi), %eax
	cmpb	$0, 60(%esi)
	je	L878
	xorl	%edx, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L879:
	movl	12(%esi,%edx,4), %edi
	movl	4(%esi), %ecx
	addl	$1, %edx
	movl	%edi, (%ecx,%eax,4)
	movl	56(%esi), %eax
	movzbl	60(%esi), %ecx
	addl	$1, %eax
	movl	%eax, 56(%esi)
	cmpl	%ecx, %edx
	jb	L879
L878:
	testl	%eax, %eax
	jne	L896
L880:
	movl	4(%esi), %eax
	movb	$0, 60(%esi)
	addl	$64, %esi
	movl	$0, -12(%esi)
	movl	$0, -8(%esi)
	movl	$0, -56(%esi)
	movl	$0, -64(%esi)
	movl	$0, -60(%esi)
	call	_mi_free
	cmpl	%ebx, %esi
	jne	L885
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
L896:
	.cfi_restore_state
	movl	4(%esi), %edx
	movl	(%edx), %ecx
	addl	(%esi), %ecx
	cmpl	$1, %eax
	je	L886
	movl	4(%edx), %edi
	movl	$16777215, (%ecx)
	movl	%edi, 4(%ecx)
	addl	(%esi), %edi
	cmpl	$2, 56(%esi)
	jbe	L881
	movl	%ecx, 12(%esp)
	movl	$2, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L882:
	movl	4(%esi), %edx
	leal	16777214(%eax), %ecx
	movl	(%edx,%eax,4), %edx
	movl	%ecx, (%edi)
	addl	$1, %eax
	movl	%edx, 4(%edi)
	movl	(%esi), %edi
	addl	%edx, %edi
	cmpl	56(%esi), %eax
	jb	L882
	movl	12(%esp), %ecx
L881:
	movl	8(%esi), %eax
	movl	$1, %edx
	movl	%eax, 12(%esp)
	lock xaddl	%edx, 8(%eax)
	subl	12(%eax), %ecx
	movl	%edx, 8(%esp)
	movlps	(%eax), %xmm0
	movlps	%xmm0, 16(%esp)
	movl	16(%esp), %eax
	movl	20(%esp), %edx
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
L884:
	movl	24(%esp), %eax
	movl	28(%esp), %edx
	movl	12(%esp), %esi
	movl	8(%esp), %ebx
	movl	%eax, (%edi)
	movl	%edx, 4(%edi)
	movl	24(%esp), %eax
	movl	28(%esp), %edx
	lock cmpxchg8b	(%esi)
	je	L894
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	jmp	L884
L894:
	movl	(%esp), %ebx
	movl	4(%esp), %esi
	jmp	L880
L886:
	movl	%ecx, %edi
	jmp	L881
	.cfi_endproc
LFE157:
	.p2align 4
	.globl	__ZdlPv
	.def	__ZdlPv;	.scl	2;	.type	32;	.endef
__ZdlPv:
LFB164:
	.cfi_startproc
	movl	4(%esp), %eax
	jmp	_mi_free
	.cfi_endproc
LFE164:
	.p2align 4
	.globl	__ZdaPv
	.def	__ZdaPv;	.scl	2;	.type	32;	.endef
__ZdaPv:
LFB166:
	.cfi_startproc
	movl	4(%esp), %eax
	jmp	_mi_free
	.cfi_endproc
LFE166:
	.p2align 4
	.globl	__ZdlPvRKSt9nothrow_t
	.def	__ZdlPvRKSt9nothrow_t;	.scl	2;	.type	32;	.endef
__ZdlPvRKSt9nothrow_t:
LFB167:
	.cfi_startproc
	movl	4(%esp), %eax
	jmp	_mi_free
	.cfi_endproc
LFE167:
	.p2align 4
	.globl	__ZdaPvRKSt9nothrow_t
	.def	__ZdaPvRKSt9nothrow_t;	.scl	2;	.type	32;	.endef
__ZdaPvRKSt9nothrow_t:
LFB169:
	.cfi_startproc
	movl	4(%esp), %eax
	jmp	_mi_free
	.cfi_endproc
LFE169:
	.p2align 4
	.globl	__Znwj
	.def	__Znwj;	.scl	2;	.type	32;	.endef
__Znwj:
LFB170:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	__tls_index, %eax
	movl	%fs:44, %ecx
	movl	16(%esp), %edx
	movl	(%ecx,%eax,4), %eax
	movl	__mi_heap_default@secrel32(%eax), %ebx
	cmpl	$512, %edx
	ja	L902
	leal	3(%edx), %eax
	shrl	$2, %eax
	movl	184(%ebx,%eax,4), %ecx
	movl	8(%ecx), %eax
	testl	%eax, %eax
	je	L902
	movl	(%eax), %edx
	addw	$1, 16(%ecx)
	movl	%edx, 8(%ecx)
L901:
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L902:
	.cfi_restore_state
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	movl	%ebx, %eax
	movl	%edx, 4(%esp)
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	movl	4(%esp), %edx
	testl	%eax, %eax
	jne	L901
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	movl	%ebx, %eax
	xorl	%ecx, %ecx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z15mi_heap_try_newP9mi_heap_sjb
	.cfi_endproc
LFE170:
	.p2align 4
	.globl	__Znaj
	.def	__Znaj;	.scl	2;	.type	32;	.endef
__Znaj:
LFB180:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	__tls_index, %eax
	movl	%fs:44, %ecx
	movl	16(%esp), %edx
	movl	(%ecx,%eax,4), %eax
	movl	__mi_heap_default@secrel32(%eax), %ebx
	cmpl	$512, %edx
	ja	L908
	leal	3(%edx), %eax
	shrl	$2, %eax
	movl	184(%ebx,%eax,4), %ecx
	movl	8(%ecx), %eax
	testl	%eax, %eax
	je	L908
	movl	(%eax), %edx
	addw	$1, 16(%ecx)
	movl	%edx, 8(%ecx)
L907:
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L908:
	.cfi_restore_state
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	movl	%ebx, %eax
	movl	%edx, 4(%esp)
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	movl	4(%esp), %edx
	testl	%eax, %eax
	jne	L907
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	movl	%ebx, %eax
	xorl	%ecx, %ecx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z15mi_heap_try_newP9mi_heap_sjb
	.cfi_endproc
LFE180:
	.p2align 4
	.globl	__ZnwjRKSt9nothrow_t
	.def	__ZnwjRKSt9nothrow_t;	.scl	2;	.type	32;	.endef
__ZnwjRKSt9nothrow_t:
LFB181:
	.cfi_startproc
	movl	4(%esp), %eax
	jmp	_mi_new_nothrow
	.cfi_endproc
LFE181:
	.p2align 4
	.globl	__ZnajRKSt9nothrow_t
	.def	__ZnajRKSt9nothrow_t;	.scl	2;	.type	32;	.endef
__ZnajRKSt9nothrow_t:
LFB183:
	.cfi_startproc
	movl	4(%esp), %eax
	jmp	_mi_new_nothrow
	.cfi_endproc
LFE183:
	.p2align 4
	.globl	__ZdlPvj
	.def	__ZdlPvj;	.scl	2;	.type	32;	.endef
__ZdlPvj:
LFB184:
	.cfi_startproc
	movl	4(%esp), %eax
	jmp	_mi_free
	.cfi_endproc
LFE184:
	.p2align 4
	.globl	__ZdaPvj
	.def	__ZdaPvj;	.scl	2;	.type	32;	.endef
__ZdaPvj:
LFB187:
	.cfi_startproc
	movl	4(%esp), %eax
	jmp	_mi_free
	.cfi_endproc
LFE187:
	.p2align 4
	.globl	__Z19softsurface_destroyv
	.def	__Z19softsurface_destroyv;	.scl	2;	.type	32;	.endef
__Z19softsurface_destroyv:
LFB188:
	.cfi_startproc
	movl	__ZL6buffer.lto_priv.1, %eax
	testl	%eax, %eax
	je	L923
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 4
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	$0, __ZL6buffer.lto_priv.1
	movl	$0, __ZL18scanPosLookupTable.lto_priv.0
	movl	$0, __ZL8yScale16.lto_priv.0
	movl	$0, __ZL11recXScale16.lto_priv.0
	movl	$0, __ZL9bufferRes.lto_priv.1
	movl	$0, __ZL9bufferRes.lto_priv.1+4
	movl	$0, __ZL13destBufferRes.lto_priv.0
	movl	$0, __ZL13destBufferRes.lto_priv.0+4
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L923:
	ret
	.cfi_endproc
LFE188:
	.p2align 4
	.globl	__Z30softsurface_blitBufferInternalItEvPT_
	.def	__Z30softsurface_blitBufferInternalItEvPT_;	.scl	2;	.type	32;	.endef
__Z30softsurface_blitBufferInternalItEvPT_:
LFB189:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movl	__ZL9bufferRes.lto_priv.1+4, %edx
	movl	%ebp, 44(%esp)
	.cfi_offset 5, -8
	movl	%eax, %ebp
	movl	__ZL8yScale16.lto_priv.0, %eax
	movl	%esi, 36(%esp)
	.cfi_offset 6, -16
	movl	__ZL13destBufferRes.lto_priv.0, %esi
	movl	%eax, 24(%esp)
/APP
 # 152 "source/build/src/softsurface.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	imull	%esi, %eax
	leal	0(%ebp,%eax,2), %eax
	movl	%eax, 28(%esp)
	cmpl	%eax, %ebp
	jnb	L926
	movl	%ebx, 32(%esp)
	movl	__ZL6buffer.lto_priv.1, %ecx
	movl	%edi, 40(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L934:
	leal	0(%ebp,%esi,2), %esi
	movl	__ZL18scanPosLookupTable.lto_priv.0, %ebx
	leal	-128(%esi), %eax
	movl	%eax, 12(%esp)
	cmpl	%eax, %ebp
	jnb	L928
	movl	%esi, 16(%esp)
	movl	%ebx, %edx
	movl	%ebp, %eax
	movl	%edi, 20(%esp)
	movl	12(%esp), %edi
	.p2align 4
	.p2align 3
L929:
	movzwl	(%edx), %esi
	subl	$-128, %eax
	subl	$-128, %edx
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -128(%eax)
	movzwl	-126(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -126(%eax)
	movzwl	-124(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -124(%eax)
	movzwl	-122(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -122(%eax)
	movzwl	-120(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -120(%eax)
	movzwl	-118(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -118(%eax)
	movzwl	-116(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -116(%eax)
	movzwl	-114(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -114(%eax)
	movzwl	-112(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -112(%eax)
	movzwl	-110(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -110(%eax)
	movzwl	-108(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -108(%eax)
	movzwl	-106(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -106(%eax)
	movzwl	-104(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -104(%eax)
	movzwl	-102(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -102(%eax)
	movzwl	-100(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -100(%eax)
	movzwl	-98(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -98(%eax)
	movzwl	-96(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -96(%eax)
	movzwl	-94(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -94(%eax)
	movzwl	-92(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -92(%eax)
	movzwl	-90(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -90(%eax)
	movzwl	-88(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -88(%eax)
	movzwl	-86(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -86(%eax)
	movzwl	-84(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -84(%eax)
	movzwl	-82(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -82(%eax)
	movzwl	-80(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -80(%eax)
	movzwl	-78(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -78(%eax)
	movzwl	-76(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -76(%eax)
	movzwl	-74(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -74(%eax)
	movzwl	-72(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -72(%eax)
	movzwl	-70(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -70(%eax)
	movzwl	-68(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -68(%eax)
	movzwl	-66(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -66(%eax)
	movzwl	-64(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -64(%eax)
	movzwl	-62(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -62(%eax)
	movzwl	-60(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -60(%eax)
	movzwl	-58(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -58(%eax)
	movzwl	-56(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -56(%eax)
	movzwl	-54(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -54(%eax)
	movzwl	-52(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -52(%eax)
	movzwl	-50(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -50(%eax)
	movzwl	-48(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -48(%eax)
	movzwl	-46(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -46(%eax)
	movzwl	-44(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -44(%eax)
	movzwl	-42(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -42(%eax)
	movzwl	-40(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -40(%eax)
	movzwl	-38(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -38(%eax)
	movzwl	-36(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -36(%eax)
	movzwl	-34(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -34(%eax)
	movzwl	-32(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -32(%eax)
	movzwl	-30(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -30(%eax)
	movzwl	-28(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -28(%eax)
	movzwl	-26(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -26(%eax)
	movzwl	-24(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -24(%eax)
	movzwl	-22(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -22(%eax)
	movzwl	-20(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -20(%eax)
	movzwl	-18(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -18(%eax)
	movzwl	-16(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -16(%eax)
	movzwl	-14(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -14(%eax)
	movzwl	-12(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -12(%eax)
	movzwl	-10(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -10(%eax)
	movzwl	-8(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -8(%eax)
	movzwl	-6(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -6(%eax)
	movzwl	-4(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -4(%eax)
	movzwl	-2(%edx), %esi
	movzbl	(%ecx,%esi), %esi
	movzwl	__ZL4pPal.lto_priv.0(,%esi,4), %esi
	movw	%si, -2(%eax)
	cmpl	%edi, %eax
	jb	L929
	movl	16(%esp), %esi
	movl	$-129, %eax
	movl	20(%esp), %edi
	subl	%ebp, %eax
	addl	%esi, %eax
	andl	$-128, %eax
	leal	128(%ebx,%eax), %ebx
	leal	128(%ebp,%eax), %ebp
L928:
	cmpl	%esi, %ebp
	jnb	L930
	movl	%ebp, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L931:
	movzwl	(%ebx), %edx
	addl	$2, %eax
	addl	$2, %ebx
	movzbl	(%ecx,%edx), %edx
	movzwl	__ZL4pPal.lto_priv.0(,%edx,4), %edx
	movw	%dx, -2(%eax)
	cmpl	%esi, %eax
	jb	L931
	subl	$1, %esi
	subl	%ebp, %esi
	andl	$-2, %esi
	leal	2(%ebp,%esi), %ebp
L930:
	movl	__ZL9bufferRes.lto_priv.1, %eax
	movl	%eax, 12(%esp)
	movl	24(%esp), %eax
	leal	(%eax,%edi), %ebx
	movl	%ebx, %esi
	shrl	$16, %esi
	subl	$1, %esi
	je	L932
	movl	__ZL13destBufferRes.lto_priv.0, %eax
	movl	%ebp, %edi
	movl	%ebx, 16(%esp)
	movl	%ebp, %ebx
	movl	%ecx, %ebp
	addl	%eax, %eax
	subl	%eax, %edi
	.p2align 4
	.p2align 3
L933:
	movl	%ebx, (%esp)
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	call	_memcpy
	movl	__ZL13destBufferRes.lto_priv.0, %eax
	addl	%eax, %eax
	addl	%eax, %ebx
	subl	$1, %esi
	jne	L933
	movl	%ebp, %ecx
	movl	%ebx, %ebp
	movl	16(%esp), %ebx
L932:
	cmpl	28(%esp), %ebp
	jnb	L942
	movl	__ZL13destBufferRes.lto_priv.0, %esi
	addl	12(%esp), %ecx
	movzwl	%bx, %edi
	jmp	L934
	.p2align 4,,10
	.p2align 3
L942:
	movl	32(%esp), %ebx
	.cfi_restore 3
	movl	40(%esp), %edi
	.cfi_restore 7
L926:
	movl	36(%esp), %esi
	movl	44(%esp), %ebp
	addl	$48, %esp
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE189:
	.p2align 4
	.globl	_texcache_fetch
	.def	_texcache_fetch;	.scl	2;	.type	32;	.endef
_texcache_fetch:
LFB190:
	.cfi_startproc
	subl	$76, %esp
	.cfi_def_cfa_offset 80
	movl	%esi, 64(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	80(%esp), %eax
	movl	%ebx, 60(%esp)
	.cfi_offset 3, -20
	movl	%ecx, %ebx
	movl	%eax, 20(%esp)
	movl	_usehightile, %eax
	movl	%edx, 24(%esp)
	movl	%eax, 36(%esp)
	testl	%eax, %eax
	jne	L944
	cmpl	$3, _rendmode
	je	L1126
L945:
	cmpl	$251, 24(%esp)
	jg	L991
	movl	20(%esp), %eax
	movl	36(%esp), %ecx
	movl	24(%esp), %edx
	movl	60(%esp), %ebx
	movl	%eax, 80(%esp)
	movl	%esi, %eax
	movl	64(%esp), %esi
	addl	$76, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__ZL15texcache_tryartiiii
	.p2align 4,,10
	.p2align 3
L944:
	.cfi_restore_state
	movl	24(%esp), %edx
	movl	%edi, 68(%esp)
	movl	%ebp, 72(%esp)
	movzwl	_hictinting(,%edx,8), %eax
	movl	%eax, %ecx
	movw	%ax, 30(%esp)
	movl	%esi, %eax
	andl	$256, %ecx
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	call	_hicfindsubst
	movl	_drawingskybox, %ecx
	movl	20(%esp), %edi
	movl	%eax, 32(%esp)
	movl	%ecx, 36(%esp)
	andl	$512, %edi
	je	L1127
	testb	$1, 31(%esp)
	je	L953
L1124:
	movl	36(%esp), %eax
	testl	%eax, %eax
	jne	L954
	cmpl	$3, _rendmode
	je	L950
	movl	32(%esp), %ebp
	testl	%ebp, %ebp
	jne	L955
L1110:
	movl	68(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	72(%esp), %ebp
	.cfi_restore 5
	jmp	L945
	.p2align 4,,10
	.p2align 3
L1127:
	.cfi_restore_state
	testl	%ecx, %ecx
	jne	L949
	cmpl	$3, _rendmode
	je	L950
	testl	%eax, %eax
	je	L1110
L955:
	andl	$-513, 20(%esp)
	xorl	%edi, %edi
L959:
	movzwl	30(%esp), %ecx
	movl	%esi, %eax
	andl	$8191, %eax
	testb	$32, %cl
	jne	L970
	movl	32(%esp), %ebx
	movl	24(%esp), %ebp
	andl	$199, %ecx
	movzbl	32(%ebx), %ebx
	cmove	%ebx, %ebp
	addl	$8, %eax
	movl	%ebx, 40(%esp)
	movl	_texcache+12(,%eax,4), %ebx
	movl	%eax, 44(%esp)
	testl	%ebx, %ebx
	je	L976
	movl	%edi, %eax
	sall	$9, %eax
	movl	%eax, 48(%esp)
	movl	20(%esp), %eax
	notl	%eax
	movl	%eax, 52(%esp)
	sall	$8, %eax
	movl	%eax, 56(%esp)
	movl	40(%esp), %eax
	testl	%eax, %eax
	jne	L992
	jmp	L973
	.p2align 4
	.p2align 4,,10
	.p2align 3
L987:
	movl	(%ebx), %ebx
	testl	%ebx, %ebx
	je	L976
L992:
	movswl	32(%ebx), %eax
	cmpl	%esi, %eax
	jne	L987
	movzbl	38(%ebx), %eax
	cmpl	%ebp, %eax
	jne	L987
	movl	52(%esp), %eax
	movl	20(%esp), %edi
	movzwl	34(%ebx), %edx
	sall	$7, %eax
	sarl	$2, %edi
	andl	56(%esp), %eax
	andl	$1, %edi
	andl	$256, %eax
	movl	%edx, %ecx
	orl	%edi, %eax
	movl	_drawingskybox, %edi
	andl	$775, %ecx
	orl	48(%esp), %eax
	testl	%edi, %edi
	jle	L1128
	orl	$6, %eax
	cmpl	%eax, %ecx
	jne	L987
	movzbl	40(%ebx), %eax
	cmpl	%eax, %edi
	jne	L987
L989:
	testb	$-128, %dl
	je	L1106
	movl	20(%esp), %eax
	andb	$127, %dl
	movl	%edi, %ecx
	movw	%dx, 34(%ebx)
	movl	24(%esp), %edx
	movl	%eax, 4(%esp)
	movl	32(%esp), %eax
	movl	$0, 16(%esp)
	movl	%eax, (%esp)
	movl	%esi, %eax
	movl	$0, 12(%esp)
	movl	%ebx, 8(%esp)
	call	__Z12gloadtile_hiiiiP10hicreplc_tiP8pthtyp_tit
	testl	%eax, %eax
	je	L987
L983:
	cmpl	$-2, %eax
	setne	%al
	cmpl	$30719, %esi
	seta	%dl
	orb	%dl, %al
	jne	L1119
	cmpl	$255, 24(%esp)
	jbe	L1129
	.p2align 4
	.p2align 3
L1119:
	movl	_drawingskybox, %eax
	testl	%eax, %eax
	jne	L1108
	movl	20(%esp), %eax
	movl	36(%esp), %ecx
	movl	24(%esp), %edx
	movl	68(%esp), %edi
	.cfi_restore 7
	movl	72(%esp), %ebp
	.cfi_restore 5
	movl	60(%esp), %ebx
	movl	%eax, 80(%esp)
	movl	%esi, %eax
	movl	64(%esp), %esi
	addl	$76, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__ZL15texcache_tryartiiii
	.p2align 4,,10
	.p2align 3
L1126:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	_r_useindexedcolortextures, %eax
	testl	%eax, %eax
	jne	L1130
	movl	%edi, 68(%esp)
	.cfi_offset 7, -12
	movl	_r_usetileshades, %edi
	movl	%edi, 36(%esp)
	testl	%edi, %edi
	je	L1111
	testb	$1, _globalflags
	cmove	%ecx, %eax
	movl	%eax, 36(%esp)
L1111:
	movl	68(%esp), %edi
	.cfi_restore 7
	jmp	L945
L1108:
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	68(%esp), %edi
	.cfi_restore 7
	movl	72(%esp), %ebp
	.cfi_restore 5
L991:
	xorl	%ebx, %ebx
L943:
	movl	%ebx, %eax
	movl	64(%esp), %esi
	movl	60(%esp), %ebx
	addl	$76, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L954:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	xorl	%edi, %edi
L949:
	movl	24(%esp), %edx
	movl	%esi, %eax
	call	_hicfindskybox.constprop.0
	movl	%eax, 32(%esp)
	testl	%eax, %eax
	je	L1014
	movl	$0, 36(%esp)
	cmpl	$3, _rendmode
	je	L1131
L961:
	testl	%edi, %edi
	jne	L959
	jmp	L955
L1130:
	.cfi_restore 5
	.cfi_restore 7
	movl	_gltexfiltermode, %eax
	testl	%eax, %eax
	je	L945
	movl	_r_usetileshades, %eax
	testl	%eax, %eax
	je	L945
	testb	$1, _globalflags
	cmovne	36(%esp), %ebx
	movl	%ebx, 36(%esp)
	jmp	L945
L953:
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%esi, %eax
	call	_hicfindsubst
	testl	%eax, %eax
	je	L1124
	testb	$64, 33(%eax)
	je	L1124
	movl	36(%esp), %edi
	testl	%edi, %edi
	jne	L1013
	cmpl	$3, _rendmode
	je	L958
	movl	%eax, 32(%esp)
	movl	$1, %edi
	jmp	L959
L975:
	movl	24(%esp), %ebp
	testl	%ebx, %ebx
	jne	L973
L974:
	movl	24(%esp), %ebp
	.p2align 4
	.p2align 3
L1112:
	movl	$0, 40(%esp)
L976:
	movl	$44, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L993
	movl	$0, 28(%eax)
	movl	$0, 32(%eax)
	movl	$0, 36(%eax)
	movl	$0, 40(%eax)
	xorl	%eax, %eax
L994:
	movl	$0, (%ebx,%eax)
	movl	$0, 4(%ebx,%eax)
	movl	$0, 8(%ebx,%eax)
	movl	$0, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L994
	cmpl	$255, 24(%esp)
	je	L1132
L997:
	movl	40(%esp), %ecx
	xorl	%eax, %eax
	movl	24(%esp), %edx
	movl	%ebx, 8(%esp)
	movl	$1, 12(%esp)
	testl	%ecx, %ecx
	cmove	30(%esp), %ax
	movl	_drawingskybox, %ecx
	movzwl	%ax, %eax
	movl	%eax, 16(%esp)
	movl	20(%esp), %eax
	movl	%eax, 4(%esp)
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__Z12gloadtile_hiiiiP10hicreplc_tiP8pthtyp_tit
	testl	%eax, %eax
	je	L1133
	cmpl	$-2, %eax
	setne	%al
	cmpl	$30719, %esi
	seta	%dl
	orb	%dl, %al
	jne	L1009
	cmpl	$255, 24(%esp)
	jbe	L1134
L1009:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	jmp	L1119
	.p2align 4,,10
	.p2align 3
L970:
	testb	$-57, 30(%esp)
	je	L972
	addl	$8, %eax
	movl	24(%esp), %ebp
	movl	_texcache+12(,%eax,4), %ebx
	movl	%eax, 44(%esp)
	testl	%ebx, %ebx
	je	L974
L973:
	movl	20(%esp), %eax
	sall	$9, %edi
	movl	%edi, 40(%esp)
	notl	%eax
	movl	%eax, 48(%esp)
	sall	$8, %eax
	movl	%eax, 52(%esp)
	jmp	L986
	.p2align 4
	.p2align 4,,10
	.p2align 3
L979:
	movl	(%ebx), %ebx
	testl	%ebx, %ebx
	je	L1112
L986:
	movswl	32(%ebx), %eax
	cmpl	%esi, %eax
	jne	L979
	movzbl	38(%ebx), %eax
	cmpl	%ebp, %eax
	jne	L979
	movzwl	30(%esp), %eax
	cmpw	36(%ebx), %ax
	jne	L979
	movl	48(%esp), %eax
	movl	20(%esp), %edi
	movzwl	34(%ebx), %edx
	sall	$7, %eax
	sarl	$2, %edi
	andl	52(%esp), %eax
	andl	$1, %edi
	andl	$256, %eax
	movl	%edx, %ecx
	orl	%edi, %eax
	movl	_drawingskybox, %edi
	andl	$775, %ecx
	orl	40(%esp), %eax
	testl	%edi, %edi
	jle	L1135
	orl	$6, %eax
	cmpl	%ecx, %eax
	jne	L979
	movzbl	40(%ebx), %eax
	cmpl	%edi, %eax
	jne	L979
L984:
	testb	$-128, %dl
	je	L1106
	movzwl	30(%esp), %eax
	andb	$127, %dl
	movl	%edi, %ecx
	movw	%dx, 34(%ebx)
	movl	24(%esp), %edx
	movl	%eax, 16(%esp)
	movl	20(%esp), %eax
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	32(%esp), %eax
	movl	%ebx, 8(%esp)
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__Z12gloadtile_hiiiiP10hicreplc_tiP8pthtyp_tit
	testl	%eax, %eax
	jne	L983
	jmp	L979
	.p2align 4,,10
	.p2align 3
L1135:
	orl	$2, %eax
	cmpl	%ecx, %eax
	jne	L979
	jmp	L984
	.p2align 4,,10
	.p2align 3
L1128:
	orl	$2, %eax
	cmpl	%ecx, %eax
	jne	L987
	jmp	L989
	.p2align 4,,10
	.p2align 3
L972:
	movl	32(%esp), %ecx
	addl	$8, %eax
	movl	%eax, 44(%esp)
	movl	_texcache+12(,%eax,4), %ebx
	cmpb	$0, 32(%ecx)
	jne	L975
	xorl	%ebp, %ebp
	testl	%ebx, %ebx
	jne	L973
	jmp	L1112
	.p2align 4,,10
	.p2align 3
L1133:
	movl	44(%esp), %esi
	movl	_texcache+12(,%esi,4), %eax
	movl	%eax, (%ebx)
	movl	%ebp, %eax
	movb	%al, 38(%ebx)
	movl	%ebx, %eax
	movl	%ebx, _texcache+12(,%esi,4)
	movl	68(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	72(%esp), %ebp
	.cfi_restore 5
	movl	60(%esp), %ebx
	movl	64(%esp), %esi
	addl	$76, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L1132:
	.cfi_restore_state
	movl	%ebx, 52(%esp)
	xorl	%eax, %eax
	movl	%ebp, 56(%esp)
	movl	32(%esp), %ebp
L996:
	movl	_texcache+44(,%eax,4), %edi
	testl	%edi, %edi
	je	L998
	movl	%eax, 48(%esp)
	.p2align 4
	.p2align 3
L1005:
	movl	8(%edi), %eax
	testl	%eax, %eax
	je	L999
	movl	4(%eax), %ecx
	testl	%ecx, %ecx
	je	L999
	movl	4(%ebp), %ebx
	testl	%ebx, %ebx
	jne	L1113
	jmp	L999
	.p2align 4,,10
	.p2align 3
L1136:
	movzbl	(%ecx), %edx
	testb	%dl, %dl
	je	L999
	movzbl	_toupperlookup(%edx), %edx
	cmpb	%dl, _toupperlookup(%eax)
	jne	L999
	addl	$1, %ebx
	addl	$1, %ecx
L1113:
	movzbl	(%ebx), %eax
	testb	%al, %al
	jne	L1136
	cmpb	$0, (%ecx)
	jne	L999
	movl	52(%esp), %ebx
	movl	(%edi), %eax
	movl	%eax, (%ebx)
	movl	4(%edi), %eax
	movl	_drawingskybox, %ebp
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
	movl	%eax, 24(%ebx)
	movl	28(%edi), %eax
	movl	%eax, 28(%ebx)
	movl	32(%edi), %eax
	movl	%eax, 32(%ebx)
	movl	36(%edi), %eax
	movl	%eax, 36(%ebx)
	movl	40(%edi), %eax
	movw	%si, 32(%ebx)
	movl	20(%esp), %esi
	movl	%eax, 40(%ebx)
	xorl	%eax, %eax
	testl	%ebp, %ebp
	setg	%al
	movl	%esi, %ecx
	sarl	$2, %esi
	movl	%esi, %edx
	notl	%ecx
	sall	$2, %eax
	movl	44(%esp), %esi
	andl	$1, %edx
	orl	%edx, %eax
	movl	%ecx, %edx
	sall	$7, %ecx
	sall	$8, %edx
	andl	%ecx, %edx
	andw	$256, %dx
	orl	%edx, %eax
	movl	%eax, %edx
	orl	$10, %eax
	orl	$2, %edx
	movw	%dx, 34(%ebx)
	testb	$8, 34(%edi)
	cmove	%edx, %eax
	movw	%ax, 34(%ebx)
	movl	32(%esp), %eax
	movl	%eax, 8(%ebx)
	movl	_texcache+12(,%esi,4), %eax
	movl	%eax, (%ebx)
	movl	%ebx, %eax
	movl	%ebx, _texcache+12(,%esi,4)
	movl	68(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	72(%esp), %ebp
	.cfi_restore 5
	movl	60(%esp), %ebx
	movl	64(%esp), %esi
	addl	$76, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L999:
	.cfi_restore_state
	movl	(%edi), %edi
	testl	%edi, %edi
	jne	L1005
	movl	48(%esp), %eax
L998:
	addl	$1, %eax
	cmpl	$8192, %eax
	jne	L996
	movl	56(%esp), %ebp
	movl	52(%esp), %ebx
	jmp	L997
	.p2align 4,,10
	.p2align 3
L950:
	movl	_r_useindexedcolortextures, %edi
	testl	%edi, %edi
	je	L967
	movl	_gltexfiltermode, %eax
	xorl	%edi, %edi
	movl	%eax, 36(%esp)
	testl	%eax, %eax
	jne	L967
L968:
	movl	32(%esp), %eax
	testl	%eax, %eax
	jne	L961
	jmp	L1110
	.p2align 4,,10
	.p2align 3
L1131:
	movl	_r_useindexedcolortextures, %ecx
	testl	%ecx, %ecx
	je	L962
	movl	_gltexfiltermode, %eax
	movl	%eax, 36(%esp)
	testl	%eax, %eax
	je	L961
L967:
	movl	_r_usetileshades, %eax
	movl	%eax, 36(%esp)
	testl	%eax, %eax
	je	L968
L965:
	xorl	%eax, %eax
	testb	$1, _globalflags
	cmove	%ebx, %eax
	movl	%eax, 36(%esp)
	jmp	L968
L1134:
	movl	_hicinitcounter, %edx
	testl	%edx, %edx
	je	L1009
	movl	24(%esp), %edx
	movl	%esi, %eax
	call	_hicclearsubst.part.0.isra.0
	jmp	L1009
L993:
	movl	$44, %eax
	call	__Z13handle_memerri
L1129:
	movl	_hicinitcounter, %eax
	testl	%eax, %eax
	je	L1119
	movl	24(%esp), %edx
	movl	%esi, %eax
	call	_hicclearsubst.part.0.isra.0
	jmp	L1119
L1014:
	movl	68(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	72(%esp), %ebp
	.cfi_restore 5
	xorl	%ebx, %ebx
	jmp	L943
L1013:
	.cfi_restore_state
	movl	$1, %edi
	jmp	L949
L962:
	movl	_r_usetileshades, %eax
	movl	%eax, 36(%esp)
	testl	%eax, %eax
	jne	L965
	jmp	L961
L1106:
	movl	68(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	72(%esp), %ebp
	.cfi_restore 5
	jmp	L943
L958:
	.cfi_restore_state
	movl	_r_useindexedcolortextures, %edx
	testl	%edx, %edx
	je	L966
	movl	_gltexfiltermode, %edi
	movl	%eax, 32(%esp)
	testl	%edi, %edi
	movl	%edi, 36(%esp)
	movl	$1, %edi
	je	L961
	jmp	L967
L966:
	movl	_r_usetileshades, %edi
	movl	%eax, 32(%esp)
	testl	%edi, %edi
	movl	%edi, 36(%esp)
	movl	$1, %edi
	jne	L965
	jmp	L961
	.cfi_endproc
LFE190:
	.section .rdata,"dr"
LC491:
	.ascii "No active texcache!\0"
LC492:
	.ascii "source/build/src/texcache.cpp\0"
	.text
	.p2align 4
	.globl	_texcache_enabled
	.def	_texcache_enabled;	.scl	2;	.type	32;	.endef
_texcache_enabled:
LFB195:
	.cfi_startproc
	testb	$64, _glinfo+29
	je	L1152
	movl	_glusetexcompr, %eax
	testl	%eax, %eax
	je	L1153
	movl	_glusetexcache, %eax
	testl	%eax, %eax
	je	L1153
	movl	_texcache+24, %ecx
	testl	%ecx, %ecx
	je	L1140
	movl	_texcache+28, %edx
	movl	$1, %eax
	testl	%edx, %edx
	je	L1140
L1153:
	ret
	.p2align 4,,10
	.p2align 3
L1140:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jge	L1156
L1152:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1156:
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	$LC491, 12(%esp)
	movl	$330, 8(%esp)
	movl	$LC492, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	xorl	%eax, %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE195:
	.section .rdata,"dr"
LC493:
	.ascii "ab+\0"
	.align 4
LC494:
	.ascii "Unable to open cache file %s or %s: %s.\0"
	.align 4
LC495:
	.ascii "// automatically generated by the engine, DO NOT MODIFY!\12\0"
LC496:
	.ascii "Opened %s as cache file.\0"
	.text
	.p2align 4
	.globl	_texcache_openfiles
	.def	_texcache_openfiles;	.scl	2;	.type	32;	.endef
_texcache_openfiles:
LFB197:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$28, %esp
	.cfi_def_cfa_offset 36
	movl	$_TEXCACHEFILE, 4(%esp)
	movl	$_ptempbuf, (%esp)
	call	_strcpy
	movl	$_ptempbuf, (%esp)
	call	_strlen
	movl	$1684957486, _ptempbuf(%eax)
	movl	$7890276, _ptempbuf+3(%eax)
	movl	$_ptempbuf, (%esp)
	call	*__imp__GetFileAttributesA@4
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	%eax, %ebx
	movl	$LC493, 4(%esp)
	movl	$_ptempbuf, (%esp)
	call	_fopen
	movl	$LC493, 4(%esp)
	movl	$_TEXCACHEFILE, (%esp)
	movl	%eax, _texcache+24
	call	_fopen
	movl	_texcache+24, %edx
	movl	%eax, _texcache+28
	testl	%edx, %edx
	je	L1163
	testl	%eax, %eax
	je	L1163
	cmpl	$-1, %ebx
	je	L1165
L1162:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	jns	L1166
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1166:
	.cfi_restore_state
	movl	$_TEXCACHEFILE, 16(%esp)
	movl	$LC496, 12(%esp)
	movl	$362, 8(%esp)
	movl	$LC492, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1163:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1167
L1160:
	call	__ZL19texcache_closefilesv
	movl	$0, _glusetexcache
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1167:
	.cfi_restore_state
	call	*__imp___errno
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*__imp__strerror
	movl	$_ptempbuf, 20(%esp)
	movl	%eax, 24(%esp)
	movl	$_TEXCACHEFILE, 16(%esp)
	movl	$LC494, 12(%esp)
	movl	$351, 8(%esp)
	movl	$LC492, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1160
	.p2align 4,,10
	.p2align 3
L1165:
	movl	%edx, 12(%esp)
	movl	$57, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC495, (%esp)
	call	_fwrite
	jmp	L1162
	.cfi_endproc
LFE197:
	.p2align 4
	.globl	_texcache_readdata
	.def	_texcache_readdata;	.scl	2;	.type	32;	.endef
_texcache_readdata:
LFB198:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 28
	movl	_texcache+32836, %eax
	addl	%eax, %edx
	movl	%edx, _texcache+32836
	cmpl	$-1, _texcache+16
	je	L1169
	cmpl	%edx, _texcache+4
	jnb	L1173
L1169:
	movl	%eax, 4(%esp)
	movl	_texcache+28, %eax
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	call	_fseek
	testl	%eax, %eax
	movl	$1, %eax
	je	L1174
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
L1174:
	.cfi_restore_state
	movl	_texcache+28, %eax
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	call	_fread
	cmpl	$1, %eax
	setne	%al
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movzbl	%al, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1173:
	.cfi_restore_state
	addl	_texcache, %eax
	movl	%esi, 8(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_memcpy
	addl	$16, %esp
	.cfi_def_cfa_offset 12
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE198:
	.section .rdata,"dr"
LC497:
	.ascii "%08I64x\0"
	.text
	.p2align 4
	.globl	_texcache_calcid.isra.0
	.def	_texcache_calcid.isra.0;	.scl	2;	.type	32;	.endef
_texcache_calcid.isra.0:
LFB200:
	.cfi_startproc
	subl	$320, %esp
	.cfi_def_cfa_offset 324
	movl	%esi, 308(%esp)
	.cfi_offset 6, -16
	leal	36(%esp), %esi
	movl	$268, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	movl	%ebx, 304(%esp)
	.cfi_offset 3, -20
	movl	%ecx, %ebx
	movl	%ebp, 316(%esp)
	.cfi_offset 5, -8
	movl	%edx, %ebp
	movl	%eax, 24(%esp)
	call	_memset
	movl	324(%esp), %eax
	movl	%ebp, (%esp)
	movl	%ebx, 36(%esp)
	movl	%eax, 40(%esp)
	movzbl	328(%esp), %eax
	movb	%al, 44(%esp)
	call	_strlen
	movl	%ebp, 4(%esp)
	movl	%eax, %ebx
	leal	45(%esp), %eax
	leal	1(%ebx), %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	call	_memcpy
	leal	9(%ebx), %ecx
	cmpl	$16, %ecx
	ja	L1176
	movl	40(%esp), %edx
	movl	36(%esp), %eax
	movl	%edi, 312(%esp)
	movl	37(%esp,%ebx), %esi
	movl	41(%esp,%ebx), %ebp
	xorl	$1736602491, %edx
	xorl	$-364758550, %eax
	.cfi_offset 7, -12
	movl	%esi, %edi
	xorl	$-1353270213, %ebp
	movl	%edx, %esi
	xorl	$160846345, %edi
	movl	%ebp, 4(%esp)
	bswap	%esi
	movl	%edi, (%esp)
	movl	%edi, %ebx
	movl	%esi, 16(%esp)
	movl	%eax, %esi
	addl	%ecx, %ebx
	bswap	%esi
	movl	%esi, 20(%esp)
	movl	%ebp, %esi
	adcl	$0, %esi
	addl	16(%esp), %ebx
	adcl	20(%esp), %esi
	call	_XXH3_mul128_fold64.lto_priv.0
	addl	%eax, %ebx
	adcl	%edx, %esi
	movl	%ebx, %ecx
	movl	%esi, %ebx
L1184:
	movl	%ebx, %eax
	xorl	%edx, %edx
	shrl	$5, %eax
	xorl	%ebx, %edx
	xorl	%ebx, %ebx
	xorl	%ecx, %eax
	imull	$-1640531463, %edx, %ecx
	imull	$374761361, %eax, %edx
	movl	%eax, %edi
	movl	$-1640531463, %eax
	addl	%edx, %ecx
	mull	%edi
	movl	312(%esp), %edi
	.cfi_restore 7
	addl	%ecx, %edx
	xorl	%edx, %eax
	xorl	%ebx, %edx
L1177:
	movl	%eax, 8(%esp)
	movl	24(%esp), %eax
	movl	%edx, 12(%esp)
	movl	$LC497, 4(%esp)
	movl	%eax, (%esp)
	call	_sprintf
	movl	304(%esp), %ebx
	movl	308(%esp), %esi
	movl	316(%esp), %ebp
	addl	$320, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1176:
	.cfi_restore_state
	cmpl	$128, %ecx
	jbe	L1185
	cmpl	$240, %ecx
	jbe	L1186
	movl	%ecx, %edx
	movl	%esi, %eax
	call	_XXH3_hashLong_64b_withSeed.constprop.0
	jmp	L1177
	.p2align 4,,10
	.p2align 3
L1185:
	movl	$-2048144761, %eax
	imull	$-1640531535, %ecx, %ebp
	movl	%edi, 312(%esp)
	.cfi_offset 7, -12
	mull	%ecx
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	addl	%ebp, 20(%esp)
	cmpl	$32, %ecx
	jbe	L1179
	cmpl	$64, %ecx
	jbe	L1180
	cmpl	$96, %ecx
	jbe	L1181
	movl	92(%esp), %edi
	movl	96(%esp), %ebp
	movl	84(%esp), %eax
	movl	88(%esp), %edx
	xorl	$-943989560, %edi
	xorl	$491719623, %ebp
	movl	%edi, (%esp)
	xorl	$1064762073, %eax
	xorl	$1060412643, %edx
	movl	%ebp, 4(%esp)
	call	_XXH3_mul128_fold64.lto_priv.0
	movl	%eax, 28(%esp)
	leal	-55(%esi,%ebx), %eax
	movl	(%eax), %edi
	movl	4(%eax), %ebp
	movl	%edx, 32(%esp)
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	xorl	$1272992187, %edi
	xorl	$827962573, %ebp
	xorl	$-914448489, %eax
	xorl	$1685289177, %edx
	movl	%eax, (%esp)
	movl	%edi, %eax
	movl	%edx, 4(%esp)
	movl	%ebp, %edx
	call	_XXH3_mul128_fold64.lto_priv.0
	addl	28(%esp), %eax
	adcl	32(%esp), %edx
	addl	%eax, 16(%esp)
	adcl	%edx, 20(%esp)
L1181:
	movl	76(%esp), %edi
	movl	80(%esp), %ebp
	movl	68(%esp), %eax
	movl	72(%esp), %edx
	xorl	$-1956261801, %edi
	xorl	$-1557245157, %ebp
	movl	%edi, (%esp)
	xorl	$-1152243603, %eax
	xorl	$-889142383, %edx
	movl	%ebp, 4(%esp)
	call	_XXH3_mul128_fold64.lto_priv.0
	addl	16(%esp), %eax
	adcl	20(%esp), %edx
	movl	%eax, %edi
	leal	-39(%esi,%ebx), %eax
	movl	%edx, %ebp
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	xorl	$-1756863326, %edx
	xorl	$1324944802, %ecx
	movl	%edx, 16(%esp)
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	%ecx, 20(%esp)
	xorl	$-659759447, %edx
	xorl	$1190074631, %eax
	movl	%edx, 4(%esp)
	movl	20(%esp), %edx
	movl	%eax, (%esp)
	movl	16(%esp), %eax
	call	_XXH3_mul128_fold64.lto_priv.0
	addl	%edi, %eax
	adcl	%ebp, %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
L1180:
	movl	60(%esp), %edi
	movl	64(%esp), %ebp
	movl	52(%esp), %eax
	movl	56(%esp), %edx
	xorl	$2110806609, %edi
	xorl	$561184716, %ebp
	movl	%edi, (%esp)
	xorl	$1323727356, %eax
	xorl	$2028323020, %edx
	movl	%ebp, 4(%esp)
	call	_XXH3_mul128_fold64.lto_priv.0
	addl	16(%esp), %eax
	adcl	20(%esp), %edx
	movl	%eax, %edi
	leal	-23(%esi,%ebx), %eax
	movl	%edx, %ebp
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	xorl	$1950746857, %edx
	xorl	$-1910225929, %ecx
	movl	%edx, 16(%esp)
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	%ecx, 20(%esp)
	xorl	$1277573761, %edx
	xorl	$-426756689, %eax
	movl	%edx, 4(%esp)
	movl	20(%esp), %edx
	movl	%eax, (%esp)
	movl	16(%esp), %eax
	call	_XXH3_mul128_fold64.lto_priv.0
	addl	%edi, %eax
	adcl	%ebp, %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
L1179:
	movl	44(%esp), %edi
	movl	48(%esp), %ebp
	movl	36(%esp), %eax
	movl	40(%esp), %edx
	xorl	$746651979, %edi
	xorl	$481108471, %ebp
	movl	%edi, (%esp)
	xorl	$963444457, %eax
	xorl	$-1102339037, %edx
	movl	%ebp, 4(%esp)
	call	_XXH3_mul128_fold64.lto_priv.0
	leal	-7(%esi,%ebx), %ecx
	addl	16(%esp), %eax
	adcl	20(%esp), %edx
	movl	12(%ecx), %ebx
	movl	%eax, %edi
	movl	%edx, %ebp
	movl	(%ecx), %eax
	movl	4(%ecx), %edx
	movl	8(%ecx), %ecx
	xorl	$526889911, %ebx
	xorl	$-378678001, %eax
	xorl	$-1532739519, %ecx
	movl	%ebx, 4(%esp)
	xorl	$-610824061, %edx
	movl	%ecx, (%esp)
	call	_XXH3_mul128_fold64.lto_priv.0
	addl	%eax, %edi
	adcl	%edx, %ebp
	movl	%edi, %ecx
	movl	%ebp, %ebx
	jmp	L1184
	.p2align 4,,10
	.p2align 3
L1186:
	.cfi_restore 7
	movl	$49, (%esp)
	movl	%ecx, %edx
	movl	%esi, %eax
	movl	$0, 4(%esp)
	call	_XXH3_len_129to240_64b.constprop.0
	jmp	L1177
	.cfi_endproc
LFE200:
	.section .rdata,"dr"
LC498:
	.ascii " %d %d\12\0"
	.align 4
LC499:
	.ascii "fatal error in texcache: no indexFilePtr\0"
	.text
	.p2align 4
	.globl	_texcache_postwritetex
	.def	_texcache_postwritetex;	.scl	2;	.type	32;	.endef
_texcache_postwritetex:
LFB203:
	.cfi_startproc
	subl	$104, %esp
	.cfi_def_cfa_offset 108
	movl	%esi, 92(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	%edi, 96(%esp)
	.cfi_offset 7, -12
	movl	%edx, %edi
	movl	%eax, %edx
	movl	$_texcache+32812, %eax
	movl	%ebx, 88(%esp)
	.cfi_offset 3, -20
	call	_hash_find
	testl	%eax, %eax
	js	L1188
	movl	_texcache+40, %edx
	movl	(%edx,%eax,4), %ebx
	movl	%edi, 4(%ebx)
	movl	_texcache+28, %eax
	movl	$2, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_fseek
	movl	_texcache+28, %eax
	movl	%eax, (%esp)
	call	_ftell
	subl	4(%ebx), %eax
	movl	%eax, 8(%ebx)
	movl	_texcache+24, %esi
	testl	%esi, %esi
	je	L1197
L1208:
	movl	(%ebx), %edi
	movl	%edi, (%esp)
	call	_strlen
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edi, (%esp)
	call	_fwrite
	movl	8(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	4(%ebx), %eax
	leal	24(%esp), %ebx
	movl	$LC498, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$64, 4(%esp)
	movl	%ebx, (%esp)
	call	_snprintf
	movl	_texcache+24, %esi
	testl	%esi, %esi
	je	L1187
	movl	%ebx, (%esp)
	call	_strlen
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	%ebx, (%esp)
	call	_fwrite
L1187:
	movl	88(%esp), %ebx
	movl	92(%esp), %esi
	movl	96(%esp), %edi
	addl	$104, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1188:
	.cfi_restore_state
	movl	_texcache+36, %ebx
	movl	%ebp, 100(%esp)
	.cfi_offset 5, -8
	movl	_g_sm_heap, %ecx
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 104
	subl	$4, %esp
	.cfi_def_cfa_offset 108
	movl	%esi, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %edx
	movl	%eax, %ebp
	movl	%edx, (%esp)
	movl	%edx, 20(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 104
	subl	$4, %esp
	.cfi_def_cfa_offset 108
	testl	%eax, %eax
	je	L1190
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 20(%esp)
	call	_strcpy
	movl	20(%esp), %ecx
	movb	$0, (%ecx,%ebp)
	movl	%ecx, (%ebx)
	movl	%edi, 4(%ebx)
	movl	_texcache+28, %eax
	movl	$2, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_fseek
	movl	_texcache+28, %eax
	movl	%eax, (%esp)
	call	_ftell
	subl	4(%ebx), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, 8(%ebx)
	movl	$16, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 104
	subl	$4, %esp
	.cfi_def_cfa_offset 108
	testl	%eax, %eax
	je	L1206
	movl	$0, (%eax)
	movl	%esi, %edx
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	%eax, 12(%ebx)
	movl	_texcache+32828, %ecx
	movl	$_texcache+32812, %eax
	movl	$0, (%esp)
	call	_hash_add
	movl	_texcache+32828, %eax
	movl	_texcache+32832, %ecx
	leal	1(%eax), %edx
	movl	_texcache+40, %eax
	movl	%edx, _texcache+32828
	cmpl	%ecx, %edx
	jg	L1207
L1194:
	movl	%ebx, -4(%eax,%edx,4)
	movl	12(%ebx), %eax
	movl	_texcache+24, %esi
	movl	100(%esp), %ebp
	.cfi_restore 5
	movl	%eax, _texcache+36
	testl	%esi, %esi
	jne	L1208
L1197:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1187
	movl	$LC499, 12(%esp)
	movl	$732, 8(%esp)
	movl	$LC492, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1187
	.p2align 4,,10
	.p2align 3
L1207:
	.cfi_offset 5, -8
	addl	$512, %ecx
	movl	%eax, (%esp)
	leal	0(,%ecx,4), %esi
	movl	%ecx, _texcache+32832
	movl	_g_sm_heap, %ecx
	movl	%esi, 4(%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 100
	subl	$8, %esp
	.cfi_def_cfa_offset 108
	testl	%eax, %eax
	jne	L1200
	testl	%esi, %esi
	jne	L1195
L1200:
	movl	%eax, _texcache+40
	movl	_texcache+32828, %edx
	jmp	L1194
	.p2align 4,,10
	.p2align 3
L1195:
	movl	%esi, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1190:
	movl	20(%esp), %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1206:
	movl	$16, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE203:
	.section .rdata,"dr"
	.align 4
LC500:
	.ascii "glGetTexLevelParameteriv returned GL_FALSE!\0"
LC501:
	.ascii "texcache mystery error\0"
	.text
	.p2align 4
	.globl	_texcache_writetex_fromdriver
	.def	_texcache_writetex_fromdriver;	.scl	2;	.type	32;	.endef
_texcache_writetex_fromdriver:
LFB204:
	.cfi_startproc
	subl	$116, %esp
	.cfi_def_cfa_offset 120
	movl	%ebx, 100(%esp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	%edi, 108(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	call	_texcache_enabled
	testl	%eax, %eax
	je	L1209
	leal	72(%esp), %eax
	movl	$0, 72(%esp)
	movl	%eax, 12(%esp)
	movl	$34465, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glGetTexLevelParameteriv
	.cfi_def_cfa_offset 104
	subl	$16, %esp
	.cfi_def_cfa_offset 120
	cmpl	$1, 72(%esp)
	je	L1211
	cmpl	$1, __ZZ28texcache_writetex_fromdriverE26glGetTexLevelParameterivOK
	je	L1287
L1209:
	movl	100(%esp), %ebx
	movl	108(%esp), %edi
	addl	$116, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1211:
	.cfi_restore_state
	movl	%esi, 104(%esp)
	movl	$825514572, (%ebx)
	cmpl	$2, _glusetexcache
	.cfi_offset 6, -16
	je	L1288
L1213:
	movl	_texcache+28, %eax
	movl	$2, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_fseek
	movl	_texcache+28, %eax
	movl	%eax, (%esp)
	call	_ftell
	movl	$1, 8(%esp)
	movl	%eax, %esi
	movl	_texcache+28, %eax
	movl	$20, 4(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 12(%esp)
	call	_fwrite
	cmpl	$1, %eax
	je	L1289
	movl	$0, 28(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
L1214:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1290
L1246:
	movl	_texcache+36, %eax
	movl	_g_sm_heap, %ecx
	movl	$0, 4(%eax)
	movl	_texcache+36, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 116
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 120
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 116
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 120
	movl	36(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 116
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 120
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 116
	subl	$4, %esp
	.cfi_def_cfa_offset 120
	movl	104(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	100(%esp), %ebx
	movl	108(%esp), %edi
	addl	$116, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1289:
	.cfi_restore_state
	movl	%ebp, 112(%esp)
	.cfi_offset 5, -8
	.p2align 4
	.p2align 3
L1215:
	call	*_glad_glGetError
	testl	%eax, %eax
	jne	L1215
	movl	%eax, 56(%esp)
	movl	$0, 40(%esp)
	movl	$0, 28(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	%edi, 64(%esp)
	movl	%esi, 68(%esp)
L1267:
	movl	40(%esp), %esi
	leal	72(%esp), %eax
	movl	$34465, 8(%esp)
	movl	%eax, 12(%esp)
	movl	%esi, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glGetTexLevelParameteriv
	.cfi_def_cfa_offset 104
	subl	$16, %esp
	.cfi_def_cfa_offset 120
	call	*_glad_glGetError
	testl	%eax, %eax
	jne	L1285
	cmpl	$1, 72(%esp)
	jne	L1285
	leal	72(%esp), %eax
	movl	$4099, 8(%esp)
	movl	%eax, 12(%esp)
	movl	%esi, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glGetTexLevelParameteriv
	.cfi_def_cfa_offset 104
	subl	$16, %esp
	.cfi_def_cfa_offset 120
	call	*_glad_glGetError
	testl	%eax, %eax
	jne	L1285
	movl	72(%esp), %eax
	movl	$4096, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, 80(%esp)
	leal	72(%esp), %eax
	movl	%eax, 12(%esp)
	movl	$3553, (%esp)
	call	*_glad_glGetTexLevelParameteriv
	.cfi_def_cfa_offset 104
	subl	$16, %esp
	.cfi_def_cfa_offset 120
	call	*_glad_glGetError
	testl	%eax, %eax
	jne	L1285
	movl	72(%esp), %eax
	movl	$4097, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, 52(%esp)
	movl	%eax, 84(%esp)
	leal	72(%esp), %eax
	movl	%eax, 12(%esp)
	movl	$3553, (%esp)
	call	*_glad_glGetTexLevelParameteriv
	.cfi_def_cfa_offset 104
	subl	$16, %esp
	.cfi_def_cfa_offset 120
	call	*_glad_glGetError
	testl	%eax, %eax
	jne	L1285
	movl	72(%esp), %eax
	movl	$4101, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, 60(%esp)
	movl	%eax, 88(%esp)
	leal	72(%esp), %eax
	movl	%eax, 12(%esp)
	movl	$3553, (%esp)
	call	*_glad_glGetTexLevelParameteriv
	.cfi_def_cfa_offset 104
	subl	$16, %esp
	.cfi_def_cfa_offset 120
	call	*_glad_glGetError
	testl	%eax, %eax
	jne	L1285
	movl	72(%esp), %eax
	movl	$32881, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, 92(%esp)
	leal	72(%esp), %eax
	movl	%eax, 12(%esp)
	movl	$3553, (%esp)
	call	*_glad_glGetTexLevelParameteriv
	.cfi_def_cfa_offset 104
	subl	$16, %esp
	.cfi_def_cfa_offset 120
	call	*_glad_glGetError
	testl	%eax, %eax
	jne	L1285
	movl	72(%esp), %eax
	movl	$34464, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, 96(%esp)
	leal	72(%esp), %eax
	movl	%eax, 12(%esp)
	movl	$3553, (%esp)
	call	*_glad_glGetTexLevelParameteriv
	.cfi_def_cfa_offset 104
	subl	$16, %esp
	.cfi_def_cfa_offset 120
	call	*_glad_glGetError
	testl	%eax, %eax
	jne	L1285
	movl	72(%esp), %ebp
	movl	%ebp, 76(%esp)
	cmpl	%ebp, 56(%esp)
	jb	L1291
L1217:
	movl	32(%esp), %edi
	movl	40(%esp), %eax
	movl	$3553, (%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glGetCompressedTexImage
	.cfi_def_cfa_offset 108
	subl	$12, %esp
	.cfi_def_cfa_offset 120
	call	*_glad_glGetError
	testl	%eax, %eax
	jne	L1285
	movl	_texcache+28, %eax
	movl	$1, 8(%esp)
	movl	$24, 4(%esp)
	movl	%eax, 12(%esp)
	leal	76(%esp), %eax
	movl	%eax, (%esp)
	call	_fwrite
	cmpl	$1, %eax
	jne	L1285
	movl	80(%esp), %eax
	xorl	%ebx, %ebx
	subl	$33778, %eax
	cmpl	$1, %eax
	ja	L1249
	movl	28(%esp), %ecx
	movl	%edi, %edx
L1225:
	movzbl	(%edx,%ebx), %eax
	movb	%al, (%ecx,%ebx)
	addl	$1, %ebx
	cmpl	$8, %ebx
	jne	L1225
	cmpl	$16, %ebp
	jbe	L1226
	movl	28(%esp), %eax
	movl	$16, %esi
	leal	8(%eax), %ecx
	movl	32(%esp), %eax
	leal	16(%eax), %edx
	.p2align 4
	.p2align 3
L1227:
	xorl	%eax, %eax
	movl	%ebx, %edi
	.p2align 4
	.p2align 4
	.p2align 3
L1228:
	movzbl	(%edx,%eax), %ebx
	movb	%bl, (%ecx,%eax)
	addl	$1, %eax
	cmpl	$8, %eax
	jne	L1228
	addl	$16, %esi
	movl	%edi, %ebx
	addl	$8, %ecx
	addl	$16, %edx
	cmpl	%ebp, %esi
	jb	L1227
L1226:
	movzbl	_divtable32+84, %ecx
	movl	_divtable32+80, %edx
	movl	%ecx, %edi
	andl	$31, %edi
	testl	%edx, %edx
	je	L1292
	movl	%edx, %eax
	imull	%ebp
	movl	%ecx, %eax
	sarb	$7, %al
	movsbl	%al, %esi
	movl	%ebp, %eax
	xorl	%esi, %eax
	addl	%edx, %eax
	subl	%esi, %eax
	andl	$64, %ecx
	movl	%edi, %ecx
	cmove	%edx, %eax
	movl	%eax, %edx
	shrl	$31, %eax
	sarl	%cl, %edx
	addl	%edx, %eax
L1230:
	movl	36(%esp), %ecx
	movl	28(%esp), %edx
	sall	$3, %eax
	call	__Z13dxt_handle_ioiPvPc
	movl	$16, 48(%esp)
	movl	$16, 20(%esp)
	jmp	L1224
	.p2align 4,,10
	.p2align 3
L1287:
	.cfi_restore 5
	.cfi_restore 6
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1293
L1212:
	movl	$0, __ZZ28texcache_writetex_fromdriverE26glGetTexLevelParameterivOK
	jmp	L1209
	.p2align 4,,10
	.p2align 3
L1288:
	.cfi_offset 6, -16
	orl	$4, 12(%ebx)
	jmp	L1213
	.p2align 4,,10
	.p2align 3
L1249:
	.cfi_offset 5, -8
	movl	$8, 48(%esp)
	movl	$8, 20(%esp)
L1224:
	movl	32(%esp), %esi
	movl	28(%esp), %edi
	leal	(%ebx,%esi), %eax
	leal	4(%esi,%ebx), %ecx
	movl	%eax, 24(%esp)
	testl	%ebp, %ebp
	je	L1272
	movl	%ecx, 44(%esp)
	movl	%ebp, 16(%esp)
	movl	%eax, %ebp
L1234:
	xorl	%ebx, %ebx
	.p2align 6
	.p2align 4
	.p2align 3
L1233:
	movzwl	0(%ebp,%ebx), %eax
	addl	$2, %edi
	addl	20(%esp), %ebx
	movl	%eax, %ecx
	movl	%eax, %edx
	movl	%eax, %esi
	andw	$2016, %ax
	shrw	$5, %cx
	shrw	$11, %dx
	andl	$63, %ecx
	sarl	%ecx
	subl	%ecx, %esi
	subl	%ecx, %edx
	andl	$31, %esi
	sall	$11, %edx
	addl	%esi, %eax
	addl	%eax, %edx
	movw	%dx, -2(%edi)
	cmpl	16(%esp), %ebx
	jb	L1233
	addl	$2, %ebp
	cmpl	44(%esp), %ebp
	jne	L1234
	movl	16(%esp), %ebp
L1235:
	movl	48(%esp), %eax
	leal	0(,%eax,4), %edi
	addl	%edi, %eax
	movzbl	_divtable32+4(%eax), %ebx
	movl	_divtable32(%eax), %edx
	movl	%ebx, %ecx
	andl	$31, %ecx
	testl	%edx, %edx
	jne	L1237
	movl	$-1, %eax
	movl	%ebp, %edx
	sarb	$7, %bl
	sall	%cl, %eax
	sarl	$31, %edx
	movsbl	%bl, %ebx
	notl	%eax
	andl	%edx, %eax
	addl	%ebp, %eax
	sarl	%cl, %eax
	xorl	%ebx, %eax
	subl	%ebx, %eax
L1238:
	movl	28(%esp), %ebx
	movl	36(%esp), %ecx
	sall	$2, %eax
	movl	%ebx, %edx
	call	__Z13dxt_handle_ioiPvPc
	testl	%ebp, %ebp
	je	L1240
	movl	24(%esp), %eax
	movl	20(%esp), %esi
	movl	%edi, 16(%esp)
	.p2align 4
	.p2align 3
L1241:
	movzbl	5(%eax), %edi
	movzbl	4(%eax), %ecx
	leal	0(,%edi,4), %edx
	andl	$3, %ecx
	movzbl	7(%eax), %edi
	andl	$12, %edx
	orl	%ecx, %edx
	movzbl	6(%eax), %ecx
	sall	$6, %edi
	sall	$4, %ecx
	andl	$48, %ecx
	addl	%edi, %ecx
	addl	%ecx, %edx
	movb	%dl, (%ebx)
	movzbl	4(%eax), %edx
	movzbl	5(%eax), %ecx
	movzbl	6(%eax), %edi
	shrb	$2, %dl
	andl	$12, %ecx
	andl	$3, %edx
	orl	%ecx, %edx
	leal	0(,%edi,4), %ecx
	andl	$48, %ecx
	addl	%ecx, %edx
	movzbl	7(%eax), %ecx
	shrb	$2, %cl
	sall	$6, %ecx
	addl	%ecx, %edx
	movb	%dl, 1(%ebx)
	movzbl	5(%eax), %edx
	movzbl	4(%eax), %ecx
	movzbl	6(%eax), %edi
	shrb	$2, %dl
	shrb	$4, %cl
	andl	$12, %edx
	andl	$48, %edi
	andl	$3, %ecx
	orl	%ecx, %edx
	movzbl	7(%eax), %ecx
	shrb	$4, %cl
	sall	$6, %ecx
	addl	%edi, %ecx
	addl	%ecx, %edx
	movb	%dl, 2(%ebx)
	movzbl	6(%eax), %ecx
	movzbl	5(%eax), %edx
	shrb	$6, %cl
	shrb	$6, %dl
	sall	$4, %ecx
	leal	(%ecx,%edx,4), %ecx
	movzbl	4(%eax), %edx
	shrb	$6, %dl
	addl	%ecx, %edx
	movzbl	7(%eax), %ecx
	andl	$-64, %ecx
	addl	%esi, %eax
	addl	$4, %ebx
	addl	%ecx, %edx
	movb	%dl, -1(%ebx)
	movl	%eax, %edx
	subl	24(%esp), %edx
	cmpl	%ebp, %edx
	jb	L1241
	movl	16(%esp), %edi
L1240:
	addl	48(%esp), %edi
	movzbl	_divtable32+4(%edi), %ebx
	movl	_divtable32(%edi), %edx
	movl	%ebx, %ecx
	andl	$31, %ecx
	testl	%edx, %edx
	jne	L1242
	movl	$-1, %eax
	movl	%ebp, %edx
	sarb	$7, %bl
	sall	%cl, %eax
	sarl	$31, %edx
	movsbl	%bl, %ebx
	notl	%eax
	andl	%edx, %eax
	addl	%ebp, %eax
	sarl	%cl, %eax
	xorl	%ebx, %eax
	subl	%ebx, %eax
L1243:
	movl	36(%esp), %ecx
	movl	28(%esp), %edx
	sall	$2, %eax
	call	__Z13dxt_handle_ioiPvPc
	addl	$1, 40(%esp)
	cmpl	$1, 52(%esp)
	jg	L1267
	cmpl	$1, 60(%esp)
	jg	L1267
	movl	68(%esp), %edx
	movl	64(%esp), %eax
	call	_texcache_postwritetex
	movl	32(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_remember_state
	.cfi_def_cfa_offset 116
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 120
	movl	36(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 116
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 120
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 116
	subl	$4, %esp
	.cfi_def_cfa_offset 120
	movl	104(%esp), %esi
	.cfi_restore 6
	movl	112(%esp), %ebp
	.cfi_restore 5
	jmp	L1209
	.p2align 3
	.p2align 4,,10
	.p2align 3
L1272:
	.cfi_restore_state
	addl	$2, %eax
	cmpl	%eax, %ecx
	jne	L1272
	jmp	L1235
	.p2align 4,,10
	.p2align 3
L1237:
	movl	%edx, %eax
	imull	%ebp
	movl	%ebx, %eax
	sarb	$7, %al
	movsbl	%al, %esi
	movl	%ebp, %eax
	xorl	%esi, %eax
	addl	%edx, %eax
	subl	%esi, %eax
	andl	$64, %ebx
	cmove	%edx, %eax
	movl	%eax, %edx
	shrl	$31, %eax
	sarl	%cl, %edx
	addl	%edx, %eax
	jmp	L1238
	.p2align 4,,10
	.p2align 3
L1242:
	movl	%edx, %eax
	movl	%ebp, %esi
	imull	%ebp
	movl	%ebx, %eax
	sarb	$7, %al
	movsbl	%al, %eax
	xorl	%eax, %esi
	addl	%edx, %esi
	subl	%eax, %esi
	andl	$64, %ebx
	cmove	%edx, %esi
	movl	%esi, %eax
	shrl	$31, %esi
	sarl	%cl, %eax
	addl	%esi, %eax
	jmp	L1243
	.p2align 4,,10
	.p2align 3
L1291:
	movl	32(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 112
	subl	$8, %esp
	.cfi_def_cfa_offset 120
	movl	%eax, 32(%esp)
	testl	%eax, %eax
	je	L1286
	movl	36(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 112
	subl	$8, %esp
	.cfi_def_cfa_offset 120
	movl	%eax, 36(%esp)
	testl	%eax, %eax
	je	L1286
	movl	28(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 112
	subl	$8, %esp
	.cfi_def_cfa_offset 120
	movl	%eax, 28(%esp)
	testl	%eax, %eax
	je	L1286
	movl	%ebp, 56(%esp)
	jmp	L1217
	.p2align 4,,10
	.p2align 3
L1285:
	movl	112(%esp), %ebp
	.cfi_restore 5
	jmp	L1214
	.p2align 4,,10
	.p2align 3
L1290:
	movl	$LC501, 12(%esp)
	movl	$675, 8(%esp)
	movl	$LC492, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1246
L1292:
	.cfi_offset 5, -8
	sarb	$7, %cl
	movl	$-1, %eax
	movsbl	%cl, %edx
	movl	%edi, %ecx
	sall	%cl, %eax
	movl	%ebp, %ecx
	sarl	$31, %ecx
	notl	%eax
	andl	%ecx, %eax
	movl	%edi, %ecx
	addl	%ebp, %eax
	sarl	%cl, %eax
	xorl	%edx, %eax
	subl	%edx, %eax
	jmp	L1230
L1286:
	movl	%ebp, %eax
	call	__Z13handle_memerri
L1293:
	.cfi_restore 5
	.cfi_restore 6
	movl	$LC500, 12(%esp)
	movl	$594, 8(%esp)
	movl	$LC492, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1212
	.cfi_endproc
LFE204:
	.section .rdata,"dr"
LC502:
	.ascii "UNKNOWN/INVALID\0"
	.align 4
LC503:
	.ascii "Invalid texcache format, have format %s but need format %s.\0"
	.text
	.p2align 4
	.globl	__ZL17texcache_loadmipsPK14texcachehead_tPj.constprop.0
	.def	__ZL17texcache_loadmipsPK14texcachehead_tPj.constprop.0;	.scl	2;	.type	32;	.endef
__ZL17texcache_loadmipsPK14texcachehead_tPj.constprop.0:
LFB211:
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
	subl	$104, %esp
	.cfi_def_cfa_offset 124
	movl	%eax, 72(%esp)
	movl	%edx, 56(%esp)
	movl	$0, 52(%esp)
	movl	$0, 68(%esp)
	movl	$0, 32(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
L1295:
	movl	$24, %edx
	leal	80(%esp), %eax
	call	_texcache_readdata
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L1362
	movl	80(%esp), %ebp
	cmpl	68(%esp), %ebp
	jle	L1298
	movl	36(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 116
	subl	$8, %esp
	.cfi_def_cfa_offset 124
	movl	%eax, 36(%esp)
	testl	%eax, %eax
	jne	L1341
	testl	%ebp, %ebp
	jne	L1299
L1341:
	movl	80(%esp), %eax
	movl	_g_sm_heap, %ecx
	leal	16(%eax), %ebx
	movl	40(%esp), %eax
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 116
	subl	$8, %esp
	.cfi_def_cfa_offset 124
	movl	%eax, 40(%esp)
	testl	%eax, %eax
	jne	L1301
	testl	%ebx, %ebx
	jne	L1303
L1301:
	movl	80(%esp), %ebx
	movl	32(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 116
	subl	$8, %esp
	.cfi_def_cfa_offset 124
	movl	%eax, 32(%esp)
	testl	%eax, %eax
	jne	L1342
	testl	%ebx, %ebx
	jne	L1303
L1342:
	movl	%ebp, 68(%esp)
	movl	80(%esp), %ebp
L1298:
	movl	72(%esp), %eax
	movzbl	12(%eax), %eax
	movb	%al, 44(%esp)
	shrb	$2, %al
	andl	$1, %eax
	movl	%eax, 48(%esp)
	movl	84(%esp), %eax
	subl	$33778, %eax
	cmpl	$1, %eax
	ja	L1335
	movl	_divtable32+80, %edx
	movzbl	_divtable32+84, %ecx
	testl	%edx, %edx
	jne	L1306
	movl	$-1, %eax
	movl	%ebp, %ebx
	movl	%ecx, %edx
	sall	%cl, %eax
	sarl	$31, %ebx
	notl	%eax
	sarb	$7, %dl
	andl	%ebx, %eax
	movsbl	%dl, %edx
	addl	%ebp, %eax
	sarl	%cl, %eax
	xorl	%edx, %eax
	subl	%edx, %eax
L1307:
	movl	48(%esp), %ebx
	sall	$3, %eax
	movl	%ebp, %ecx
	movl	%ebx, 4(%esp)
	movl	40(%esp), %ebx
	movl	%ebx, (%esp)
	movl	32(%esp), %ebx
	movl	%ebx, %edx
	call	__Z15dedxt_handle_ioiPviPci
	testl	%eax, %eax
	jne	L1309
	movl	36(%esp), %edx
	xorl	%esi, %esi
	movl	%ebx, %ecx
	.p2align 4
	.p2align 4
	.p2align 3
L1310:
	movzbl	(%ecx,%esi), %eax
	movb	%al, (%edx,%esi)
	addl	$1, %esi
	cmpl	$8, %esi
	jne	L1310
	movl	80(%esp), %ebp
	cmpl	$16, %ebp
	jle	L1337
	movl	32(%esp), %eax
	movl	36(%esp), %ebx
	leal	8(%eax), %ecx
	leal	16(%ebx), %edx
	.p2align 4
	.p2align 3
L1311:
	xorl	%esi, %esi
	.p2align 4
	.p2align 4
	.p2align 3
L1312:
	movzbl	(%ecx,%esi), %eax
	movb	%al, (%edx,%esi)
	addl	$1, %esi
	cmpl	$8, %esi
	jne	L1312
	addl	$16, %edx
	movl	80(%esp), %ebp
	addl	$8, %ecx
	movl	%edx, %eax
	subl	%ebx, %eax
	cmpl	%eax, %ebp
	jg	L1311
L1337:
	movl	$16, %ebx
L1305:
	leal	0(,%ebx,4), %eax
	movl	%eax, 60(%esp)
	addl	%ebx, %eax
	movzbl	_divtable32+4(%eax), %edi
	movl	_divtable32(%eax), %edx
	movl	%edi, %ecx
	andl	$31, %ecx
	testl	%edx, %edx
	jne	L1313
	movl	%edi, %eax
	movl	%ebp, %edx
	sarb	$7, %al
	sarl	$31, %edx
	movsbl	%al, %edi
	movl	$-1, %eax
	sall	%cl, %eax
	notl	%eax
	andl	%edx, %eax
	addl	%ebp, %eax
	sarl	%cl, %eax
	xorl	%edi, %eax
	subl	%edi, %eax
L1314:
	movl	48(%esp), %edi
	movl	32(%esp), %edx
	sall	$2, %eax
	movl	%ebp, %ecx
	movl	%edi, 4(%esp)
	movl	40(%esp), %edi
	movl	%edi, (%esp)
	call	__Z15dedxt_handle_ioiPviPci
	testl	%eax, %eax
	jne	L1309
	movl	36(%esp), %eax
	movl	80(%esp), %edi
	leal	(%eax,%esi), %ebp
	movl	%ebp, 64(%esp)
	testl	%edi, %edi
	jle	L1338
	movl	32(%esp), %esi
	xorl	%eax, %eax
L1319:
	movl	%eax, 44(%esp)
	xorl	%ecx, %ecx
	.p2align 6
	.p2align 4
	.p2align 3
L1317:
	movzwl	(%esi), %eax
	addl	$2, %esi
	movl	%eax, %edi
	movl	%eax, %edx
	shrw	$5, %di
	shrw	$11, %dx
	andl	$63, %edi
	sarl	%edi
	addl	%edi, %edx
	addl	%eax, %edi
	andw	$2016, %ax
	andl	$31, %edi
	sall	$11, %edx
	addl	%edi, %eax
	addl	%eax, %edx
	movw	%dx, 0(%ebp,%ecx)
	movl	80(%esp), %edi
	addl	%ebx, %ecx
	cmpl	%edi, %ecx
	jl	L1317
	cmpl	$2, 44(%esp)
	je	L1318
L1358:
	testl	%edi, %edi
	jle	L1318
	addl	$2, %ebp
	movl	$2, %eax
	jmp	L1319
	.p2align 4,,10
	.p2align 3
L1318:
	movl	60(%esp), %eax
	addl	%ebx, %eax
	movzbl	_divtable32+4(%eax), %esi
	movl	_divtable32(%eax), %edx
	movl	%esi, %ecx
	andl	$31, %ecx
	testl	%edx, %edx
	jne	L1320
	movl	%esi, %eax
	movl	%edi, %edx
	sarb	$7, %al
	sarl	$31, %edx
	movsbl	%al, %esi
	movl	$-1, %eax
	sall	%cl, %eax
	notl	%eax
	andl	%edx, %eax
	addl	%edi, %eax
	sarl	%cl, %eax
	xorl	%esi, %eax
	subl	%esi, %eax
L1321:
	movl	48(%esp), %esi
	movl	32(%esp), %ebp
	movl	%edi, %ecx
	sall	$2, %eax
	movl	%esi, 4(%esp)
	movl	40(%esp), %esi
	movl	%ebp, %edx
	movl	%esi, (%esp)
	call	__Z15dedxt_handle_ioiPviPci
	movl	%eax, %edi
	testl	%eax, %eax
	jne	L1309
	movl	80(%esp), %edx
	testl	%edx, %edx
	jle	L1323
	movl	64(%esp), %edx
	movl	%edi, 44(%esp)
	movl	%ebp, %eax
	movl	%edx, %esi
	movl	%edx, %edi
	.p2align 4
	.p2align 3
L1324:
	movzbl	2(%eax), %edx
	movzbl	3(%eax), %ecx
	movzbl	(%eax), %ebp
	sall	$4, %edx
	sall	$6, %ecx
	andl	$48, %edx
	andl	$3, %ebp
	addl	%ecx, %edx
	movzbl	1(%eax), %ecx
	sall	$2, %ecx
	andl	$12, %ecx
	orl	%ebp, %ecx
	addl	%ecx, %edx
	movb	%dl, 4(%esi)
	movzbl	(%eax), %edx
	movzbl	1(%eax), %ecx
	shrb	$2, %dl
	andl	$12, %ecx
	andl	$3, %edx
	orl	%ecx, %edx
	movzbl	2(%eax), %ecx
	sall	$2, %ecx
	andl	$48, %ecx
	addl	%ecx, %edx
	movzbl	3(%eax), %ecx
	shrb	$2, %cl
	sall	$6, %ecx
	addl	%ecx, %edx
	movb	%dl, 5(%esi)
	movzbl	1(%eax), %edx
	movzbl	(%eax), %ecx
	movzbl	2(%eax), %ebp
	shrb	$2, %dl
	shrb	$4, %cl
	andl	$12, %edx
	andl	$48, %ebp
	andl	$3, %ecx
	orl	%ecx, %edx
	movzbl	3(%eax), %ecx
	shrb	$4, %cl
	sall	$6, %ecx
	addl	%ebp, %ecx
	addl	%ecx, %edx
	movb	%dl, 6(%esi)
	movzbl	2(%eax), %ecx
	movzbl	1(%eax), %edx
	shrb	$6, %cl
	sall	$4, %ecx
	shrb	$6, %dl
	leal	(%ecx,%edx,4), %edx
	movzbl	(%eax), %ecx
	shrb	$6, %cl
	addl	$4, %eax
	addl	%ecx, %edx
	movzbl	-1(%eax), %ecx
	andl	$-64, %ecx
	addl	%ecx, %edx
	movb	%dl, 7(%esi)
	addl	%ebx, %esi
	movl	80(%esp), %edx
	movl	%esi, %ecx
	subl	%edi, %ecx
	cmpl	%ecx, %edx
	jg	L1324
	movl	44(%esp), %edi
L1323:
	movl	36(%esp), %eax
	movl	%edx, 24(%esp)
	movl	$3553, (%esp)
	movl	%eax, 28(%esp)
	movl	96(%esp), %eax
	movl	%eax, 20(%esp)
	movl	92(%esp), %eax
	movl	%eax, 16(%esp)
	movl	88(%esp), %eax
	movl	%eax, 12(%esp)
	movl	84(%esp), %eax
	movl	%eax, 8(%esp)
	movl	52(%esp), %eax
	movl	%eax, 4(%esp)
	call	*_glad_glCompressedTexImage2D
	.cfi_def_cfa_offset 92
	subl	$32, %esp
	.cfi_def_cfa_offset 124
	call	*_glad_glGetError
	movl	56(%esp), %ebx
	movl	%eax, (%ebx)
	testl	%eax, %eax
	jne	L1363
	leal	76(%esp), %eax
	movl	$4099, 8(%esp)
	movl	%eax, 12(%esp)
	movl	52(%esp), %eax
	movl	$3553, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glGetTexLevelParameteriv
	.cfi_def_cfa_offset 108
	subl	$16, %esp
	.cfi_def_cfa_offset 124
	call	*_glad_glGetError
	movl	56(%esp), %ebx
	movl	%eax, (%ebx)
	testl	%eax, %eax
	jne	L1364
	movl	84(%esp), %eax
	movl	76(%esp), %edx
	cmpl	%edx, %eax
	jne	L1365
	addl	$1, 52(%esp)
	cmpl	$1, 88(%esp)
	jg	L1295
	cmpl	$1, 92(%esp)
	jg	L1295
	movl	36(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	jmp	L1294
	.p2align 4,,10
	.p2align 3
L1313:
	movl	%edx, %eax
	imull	%ebp
	movl	%edi, %eax
	sarb	$7, %al
	movsbl	%al, %eax
	movl	%eax, 64(%esp)
	xorl	%ebp, %eax
	addl	%edx, %eax
	movl	%edx, 44(%esp)
	subl	64(%esp), %eax
	andl	$64, %edi
	cmove	44(%esp), %eax
	movl	%eax, %edx
	shrl	$31, %eax
	sarl	%cl, %edx
	addl	%edx, %eax
	jmp	L1314
	.p2align 4,,10
	.p2align 3
L1320:
	movl	%edx, %eax
	imull	%edi
	movl	%esi, %eax
	sarb	$7, %al
	movsbl	%al, %ebp
	movl	%edi, %eax
	xorl	%ebp, %eax
	subl	%ebp, %eax
	addl	%edx, %eax
	andl	$64, %esi
	cmovne	%eax, %edx
	movl	%edx, %eax
	shrl	$31, %edx
	sarl	%cl, %eax
	addl	%edx, %eax
	jmp	L1321
	.p2align 4,,10
	.p2align 3
L1335:
	movl	$8, %ebx
	jmp	L1305
L1338:
	movl	64(%esp), %ebp
	movl	32(%esp), %esi
	jmp	L1358
L1303:
	movl	%ebx, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1306:
	movl	%ecx, %ebx
	movl	%edx, %eax
	sarb	$7, %bl
	imull	%ebp
	movl	%ebp, %eax
	movsbl	%bl, %ebx
	xorl	%ebx, %eax
	subl	%ebx, %eax
	addl	%edx, %eax
	testb	$64, %cl
	cmovne	%eax, %edx
	movl	%edx, %eax
	shrl	$31, %edx
	sarl	%cl, %eax
	addl	%edx, %eax
	jmp	L1307
L1299:
	movl	%ebp, %eax
	call	__Z13handle_memerri
L1362:
	movl	36(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	$2, %edi
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	subl	$4, %esp
	.cfi_def_cfa_offset 124
L1294:
	addl	$104, %esp
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
L1309:
	.cfi_restore_state
	movl	36(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	$3, %edi
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	jmp	L1294
L1363:
	movl	36(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	$4, %edi
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	jmp	L1294
L1364:
	movl	36(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	$5, %edi
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	jmp	L1294
L1365:
	movl	__ZN6loguru18g_stderr_verbosityE, %ecx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ebx
	cmpl	%ebx, %ecx
	cmovl	%ebx, %ecx
	cmpl	$-2, %ecx
	jl	L1329
	subl	$33776, %edx
	movl	$LC502, %ecx
	cmpl	$3, %edx
	ja	L1330
	movl	_CSWTCH.242(,%edx,4), %ecx
L1330:
	subl	$33776, %eax
	movl	$LC502, %edx
	cmpl	$3, %eax
	ja	L1331
	movl	_CSWTCH.242(,%eax,4), %edx
L1331:
	movl	%ecx, 20(%esp)
	movl	%edx, 16(%esp)
	movl	$LC503, 12(%esp)
	movl	$828, 8(%esp)
	movl	$LC492, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L1329:
	movl	36(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	$-1, %edi
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	jmp	L1294
	.cfi_endproc
LFE211:
	.section .rdata,"dr"
	.align 4
LC504:
	.ascii "Unable to load cached data: %s (error %x)\0"
	.text
	.p2align 4
	.globl	_texcache_loadtile
	.def	_texcache_loadtile;	.scl	2;	.type	32;	.endef
_texcache_loadtile:
LFB214:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%ecx, %ebx
	subl	$32, %esp
	.cfi_def_cfa_offset 44
	movl	$0, 28(%esp)
	testb	$1, (%edx)
	je	L1367
	leal	12(%ecx), %eax
	movl	%edx, 24(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glGenTextures
	.cfi_def_cfa_offset 36
	subl	$8, %esp
	.cfi_def_cfa_offset 44
	movl	24(%esp), %edx
	orl	$2, (%edx)
L1367:
	movl	12(%ebx), %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	4(%esi), %eax
	movl	%eax, 24(%ebx)
	movl	8(%esi), %eax
	movl	%eax, 28(%ebx)
	.p2align 4
	.p2align 3
L1368:
	call	*_glad_glGetError
	testl	%eax, %eax
	jne	L1368
	leal	28(%esp), %edx
	movl	%esi, %eax
	call	__ZL17texcache_loadmipsPK14texcachehead_tPj.constprop.0
	testl	%eax, %eax
	jne	L1380
L1366:
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L1380:
	.cfi_restore_state
	jg	L1381
L1370:
	movl	$-1, %eax
	jmp	L1366
L1381:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L1370
	movl	28(%esp), %edx
	movl	__ZL15texcache_errors.lto_priv.0(,%eax,4), %eax
	movl	$LC504, 12(%esp)
	movl	$878, 8(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC492, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1370
	.cfi_endproc
LFE214:
	.align 2
	.p2align 4
	.globl	__ZN3mio10basic_mmapILNS_11access_modeE1EcE5unmapEv
	.def	__ZN3mio10basic_mmapILNS_11access_modeE1EcE5unmapEv;	.scl	2;	.type	32;	.endef
__ZN3mio10basic_mmapILNS_11access_modeE1EcE5unmapEv:
LFB216:
	.cfi_startproc
	cmpl	$-1, 12(%ecx)
	je	L1391
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 3, -16
	movl	%ecx, %ebx
	subl	$4, %esp
	cmpl	$-1, 16(%ecx)
	je	L1384
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L1385
	addl	4(%ecx), %eax
	subl	8(%ecx), %eax
L1385:
	movl	%eax, (%esp)
	call	*__imp__UnmapViewOfFile@4
	movl	16(%ebx), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	call	*__imp__CloseHandle@4
	subl	$4, %esp
L1384:
	cmpb	$0, 20(%ebx)
	jne	L1394
L1386:
	movl	$-1, %eax
	movl	$0, (%ebx)
	movl	$0, 4(%ebx)
	movl	$0, 8(%ebx)
	movl	%eax, 12(%ebx)
	movl	%eax, 16(%ebx)
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L1394:
	.cfi_restore_state
	movl	12(%ebx), %eax
	movl	%eax, (%esp)
	call	*__imp__CloseHandle@4
	subl	$4, %esp
	jmp	L1386
	.p2align 4,,10
	.p2align 3
L1391:
	.cfi_def_cfa 4, 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 7
	ret
	.cfi_endproc
LFE216:
	.p2align 4
	.globl	_texcache_init
	.def	_texcache_init;	.scl	2;	.type	32;	.endef
_texcache_init:
LFB218:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	_texcache+24, %edx
	testl	%edx, %edx
	je	L1404
L1396:
	call	__ZL19texcache_closefilesv
	movl	$_texcache, %ecx
	call	__ZN3mio10basic_mmapILNS_11access_modeE1EcE5unmapEv
	movl	_texcache+40, %eax
	movl	$0, _texcache+32832
	testl	%eax, %eax
	je	L1398
	call	_texcache_freeptrs.part.0
L1398:
	movl	$16, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 4
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	testl	%eax, %eax
	je	L1399
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	%eax, _texcache+32
	movl	%eax, _texcache+36
	movl	$_texcache+32812, %eax
	movl	$0, _texcache+32828
	movl	$1024, _texcache+32812
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	jmp	_hash_init
	.p2align 4,,10
	.p2align 3
L1404:
	.cfi_restore_state
	movl	_texcache+28, %eax
	testl	%eax, %eax
	je	L1397
	movl	%eax, (%esp)
	call	_fclose
L1397:
	movl	$0, _texcache+28
	jmp	L1396
	.p2align 4,,10
	.p2align 3
L1399:
	movl	$16, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE218:
	.p2align 4
	.globl	_texcache_invalidate
	.def	_texcache_invalidate;	.scl	2;	.type	32;	.endef
_texcache_invalidate:
LFB219:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	_r_downsize, %eax
	movl	%eax, _r_downsizevar
	call	_polymost_glreset
	call	_texcache_init
	movl	$_TEXCACHEFILE, (%esp)
	call	_unlink
	movl	$_TEXCACHEFILE, 4(%esp)
	movl	$_ptempbuf, (%esp)
	call	_strcpy
	movl	$_ptempbuf, (%esp)
	call	_strlen
	movl	$1684957486, _ptempbuf(%eax)
	movl	$7890276, _ptempbuf+3(%eax)
	movl	$_ptempbuf, (%esp)
	call	_unlink
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	jmp	_texcache_openfiles
	.cfi_endproc
LFE219:
	.align 2
	.p2align 4
	.globl	__ZN3mio10basic_mmapILNS_11access_modeE1EcE4syncILS1_1EEENSt9enable_ifIXeqT_LS1_1EEvE4typeERSt10error_code.constprop.0
	.def	__ZN3mio10basic_mmapILNS_11access_modeE1EcE4syncILS1_1EEENSt9enable_ifIXeqT_LS1_1EEvE4typeERSt10error_code.constprop.0;	.scl	2;	.type	32;	.endef
__ZN3mio10basic_mmapILNS_11access_modeE1EcE4syncILS1_1EEENSt9enable_ifIXeqT_LS1_1EEvE4typeERSt10error_code.constprop.0:
LFB222:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%esi, 16(%esp)
	.cfi_offset 6, -12
	movl	28(%esp), %esi
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -16
	movl	%ecx, %ebx
	call	__ZNSt3_V215system_categoryEv
	movl	$0, (%esi)
	movl	%eax, 4(%esi)
	movl	12(%ebx), %edx
	cmpl	$-1, %edx
	je	L1424
	movl	%edi, 20(%esp)
	.cfi_offset 7, -8
	movl	%eax, %edi
	movl	(%ebx), %eax
	movl	__imp__FlushFileBuffers@4, %ecx
	testl	%eax, %eax
	je	L1410
	movl	8(%ebx), %edx
	movl	%edx, 4(%esp)
	subl	%edx, %eax
	addl	4(%ebx), %eax
	movl	%eax, (%esp)
	call	*__imp__FlushViewOfFile@8
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	testl	%eax, %eax
	je	L1423
	movl	12(%ebx), %eax
	movl	__imp__FlushFileBuffers@4, %ecx
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	call	*%ecx
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	testl	%eax, %eax
	je	L1423
	movl	12(%ebx), %edx
	movl	8(%esp), %ecx
L1410:
	movl	%edx, (%esp)
	call	*%ecx
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	testl	%eax, %eax
	je	L1423
	movl	20(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	12(%esp), %ebx
	movl	16(%esp), %esi
	addl	$24, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret	$4
	.p2align 4,,10
	.p2align 3
L1423:
	.cfi_restore_state
	call	*__imp__GetLastError@0
	movl	%edi, 4(%esi)
	movl	%eax, (%esi)
	movl	20(%esp), %edi
	.cfi_restore 7
	movl	12(%esp), %ebx
	movl	16(%esp), %esi
	addl	$24, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret	$4
	.p2align 4,,10
	.p2align 3
L1424:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	call	__ZNSt3_V216generic_categoryEv
	movl	$9, (%esi)
	movl	%eax, 4(%esi)
	movl	12(%esp), %ebx
	movl	16(%esp), %esi
	addl	$24, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret	$4
	.cfi_endproc
LFE222:
	.p2align 4
	.globl	___tcftexcache.lto_priv.0
	.def	___tcftexcache.lto_priv.0;	.scl	2;	.type	32;	.endef
___tcftexcache.lto_priv.0:
LFB224:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	$_texcache, %ecx
	leal	4(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN3mio10basic_mmapILNS_11access_modeE1EcE4syncILS1_1EEENSt9enable_ifIXeqT_LS1_1EEvE4typeERSt10error_code.constprop.0
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	cmpl	$-1, _texcache+12
	je	L1425
	cmpl	$-1, _texcache+16
	je	L1427
	movl	_texcache, %eax
	testl	%eax, %eax
	je	L1428
	addl	_texcache+4, %eax
	subl	_texcache+8, %eax
L1428:
	movl	%eax, (%esp)
	call	*__imp__UnmapViewOfFile@4
	.cfi_def_cfa_offset 12
	movl	_texcache+16, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	%eax, (%esp)
	call	*__imp__CloseHandle@4
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
L1427:
	cmpb	$0, _texcache+20
	jne	L1433
L1425:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1433:
	.cfi_restore_state
	movl	_texcache+12, %eax
	movl	%eax, (%esp)
	call	*__imp__CloseHandle@4
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE224:
	.section .rdata,"dr"
LC505:
	.ascii "skin\0"
LC506:
	.ascii "texture\0"
LC507:
	.ascii "r_downsize doesn't match\0"
	.align 4
LC508:
	.ascii "Got bad %s data from cache: %s\0"
	.text
	.p2align 4
	.globl	_texcache_readtexheader.part.0
	.def	_texcache_readtexheader.part.0;	.scl	2;	.type	32;	.endef
_texcache_readtexheader.part.0:
LFB226:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%ecx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edx, %ebx
	movl	%eax, %edx
	movl	$_texcache+32812, %eax
	subl	$24, %esp
	.cfi_def_cfa_offset 40
	call	_hash_find
	testl	%eax, %eax
	js	L1435
	movl	_texcache+40, %edx
	movl	(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	L1435
	movl	4(%eax), %eax
	movl	$20, %edx
	movl	%eax, _texcache+32836
	movl	%ebx, %eax
	call	_texcache_readdata
	testl	%eax, %eax
	jne	L1453
	cmpl	$825514572, (%ebx)
	jne	L1454
	movl	12(%ebx), %edx
	movl	16(%ebx), %ecx
	testl	%esi, %esi
	je	L1437
	cmpl	_r_downsize, %ecx
	jne	L1475
	testb	$4, %dl
	jne	L1476
	cmpl	$2, _glusetexcache
	jne	L1446
	movl	$4, %ebx
	.p2align 4
	.p2align 3
L1445:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L1434
	movl	__ZZ22texcache_readtexheaderE10error_msgs(,%ebx,4), %edx
	movl	$LC505, %eax
	jmp	L1439
	.p2align 4,,10
	.p2align 3
L1453:
	xorl	%ecx, %ecx
L1436:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1435
	movl	__ZZ22texcache_readtexheaderE10error_msgs(,%ecx,4), %edx
	testl	%edi, %edi
	movl	$LC506, %eax
	movl	$LC505, %ecx
	cmovne	%ecx, %eax
L1439:
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC508, 12(%esp)
	movl	$557, 8(%esp)
	movl	$LC492, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L1435:
	xorl	%eax, %eax
L1434:
	addl	$24, %esp
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
L1454:
	.cfi_restore_state
	movl	$1, %ecx
	jmp	L1436
	.p2align 4,,10
	.p2align 3
L1437:
	movl	_glusetexcache, %eax
	testb	$4, %dl
	jne	L1477
	cmpl	$2, %eax
	je	L1478
L1443:
	movl	%edx, %eax
	andl	$8, %eax
	jne	L1446
	cmpl	_r_downsize, %ecx
	jne	L1434
L1446:
	movl	_gltexmaxsize, %ecx
	testl	%ecx, %ecx
	je	L1447
	movl	$1, %eax
	sall	%cl, %eax
	movl	8(%ebx), %ecx
	movl	%eax, %esi
	movl	4(%ebx), %eax
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	movl	$5, %ecx
	cmpl	%eax, %esi
	jl	L1436
L1447:
	cmpb	$0, _glinfo+29
	js	L1449
	andl	$1, %edx
	movl	$6, %ecx
	jne	L1436
L1449:
	movl	$1, %eax
	jmp	L1434
	.p2align 4,,10
	.p2align 3
L1477:
	cmpl	$2, %eax
	je	L1443
	movl	$3, %ecx
L1442:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovge	%eax, %edx
	xorl	%eax, %eax
	cmpl	$-2, %edx
	jl	L1434
	movl	__ZZ22texcache_readtexheaderE10error_msgs(,%ecx,4), %edx
	movl	$LC506, %eax
	jmp	L1439
	.p2align 4,,10
	.p2align 3
L1475:
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	__ZN6loguru18g_stderr_verbosityE, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L1434
	movl	$LC507, %edx
	movl	$LC505, %eax
	jmp	L1439
	.p2align 4,,10
	.p2align 3
L1476:
	cmpl	$2, _glusetexcache
	je	L1446
	movl	$3, %ebx
	jmp	L1445
L1478:
	movl	$4, %ecx
	jmp	L1442
	.cfi_endproc
LFE226:
	.p2align 4
	.globl	__ZL18maxheap_bubbleDownj.lto_priv.0
	.def	__ZL18maxheap_bubbleDownj.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL18maxheap_bubbleDownj.lto_priv.0:
LFB227:
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
	leal	1(%eax,%eax), %eax
	pushl	%ebx
	andl	$-16, %esp
	subl	$16, %esp
	.cfi_offset 3, -20
	movl	_heapNodes, %edi
	cmpl	%edi, %eax
	jnb	L1479
	movl	%edi, 12(%esp)
	jmp	L1482
	.p2align 4,,10
	.p2align 3
L1488:
	sall	$4, %ebx
	addl	%ecx, %ebx
	movl	_nodes+28(,%ebx,4), %ebx
	cmpl	%ebx, %edx
	jnb	L1483
	movl	%ebx, %edx
	leal	(%esi,%esi,8), %ebx
	leal	_nodes(,%ebx,4), %eax
	cmpl	%edx, 28(%eax)
	jnb	L1479
L1489:
	movl	8(%eax), %esi
	movlps	_nodes(,%ebx,4), %xmm2
	movups	12(%eax), %xmm1
	movlps	28(%eax), %xmm0
	movl	%esi, 8(%esp)
	leal	(%ecx,%ecx,8), %esi
	movl	_nodes(,%esi,4), %edi
	leal	_nodes(,%esi,4), %edx
	movl	%edi, _nodes(,%ebx,4)
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
	leal	1(%ecx,%ecx), %eax
	movlps	%xmm2, _nodes(,%esi,4)
	movl	8(%esp), %esi
	movups	%xmm1, 12(%edx)
	movl	%esi, 8(%edx)
	movlps	%xmm0, 28(%edx)
	cmpl	12(%esp), %eax
	jnb	L1479
	movl	%ecx, %esi
L1482:
	leal	1(%esi), %ebx
	leal	(%eax,%eax,8), %edx
	movl	_nodes+28(,%edx,4), %edx
	leal	(%ebx,%ebx), %ecx
	cmpl	12(%esp), %ecx
	jb	L1488
L1483:
	leal	(%esi,%esi,8), %ebx
	movl	%eax, %ecx
	leal	_nodes(,%ebx,4), %eax
	cmpl	%edx, 28(%eax)
	jb	L1489
L1479:
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
LFE227:
	.p2align 4
	.globl	__ZL11maxheap_popv.lto_priv.0
	.def	__ZL11maxheap_popv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL11maxheap_popv.lto_priv.0:
LFB228:
	.cfi_startproc
	movl	_heapNodes, %edx
	testl	%edx, %edx
	je	L1494
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	subl	$1, %edx
	movlps	_nodes, %xmm2
	leal	(%edx,%edx,8), %eax
	movl	_nodes+8, %ecx
	movups	_nodes+12, %xmm1
	sall	$2, %eax
	movlps	_nodes+28, %xmm0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	movl	_nodes(%eax), %ebx
	andl	$-16, %esp
	movl	%ebx, _nodes
	movl	_nodes+4(%eax), %ebx
	movl	%edx, _heapNodes
	movl	%ebx, _nodes+4
	movl	_nodes+8(%eax), %ebx
	movl	%ebx, _nodes+8
	movl	_nodes+12(%eax), %ebx
	movl	%ebx, _nodes+12
	movl	_nodes+16(%eax), %ebx
	movl	%ebx, _nodes+16
	movl	_nodes+20(%eax), %ebx
	movl	%ebx, _nodes+20
	movl	_nodes+24(%eax), %ebx
	movl	%ebx, _nodes+24
	movl	_nodes+28(%eax), %ebx
	movl	%ebx, _nodes+28
	movl	_nodes+32(%eax), %ebx
	movl	%ebx, _nodes+32
	movl	%ecx, _nodes+8(%eax)
	movlps	%xmm2, _nodes(%eax)
	movups	%xmm1, _nodes+12(%eax)
	movlps	%xmm0, _nodes+28(%eax)
	xorl	%eax, %eax
	call	__ZL18maxheap_bubbleDownj.lto_priv.0
	movl	_heapNodes, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	leal	(%eax,%eax,8), %eax
	leal	_nodes(,%eax,4), %eax
	ret
	.p2align 4,,10
	.p2align 3
L1494:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE228:
	.p2align 4
	.globl	__ZL10kdtree_addjP8TreeNode.lto_priv.0
	.def	__ZL10kdtree_addjP8TreeNode.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL10kdtree_addjP8TreeNode.lto_priv.0:
LFB229:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%eax, %ecx
	imull	$-36, %eax, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	addl	$_nodes+2214180, %eax
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%edx, %ebx
	andl	$-16, %esp
	subl	$32, %esp
	movl	20(%edx), %esi
L1500:
	cmpl	%esi, 20(%eax)
	jb	L1511
	movl	24(%ebx), %edi
	cmpl	%edi, 24(%eax)
	jb	L1511
	cmpl	$-1, 32(%eax)
	jne	L1513
	movl	32(%ebx), %edx
	movl	%edx, 32(%eax)
	leal	(%edx,%edx,4), %edx
	movl	%ecx, _tiles(,%edx,4)
	movss	20(%ebx), %xmm1
	movss	24(%ebx), %xmm2
	movss	12(%eax), %xmm0
	movss	16(%eax), %xmm3
	movl	32(%ebx), %edx
	unpcklps	%xmm2, %xmm1
	unpcklps	%xmm3, %xmm0
	leal	(%edx,%edx,4), %edx
	movlhps	%xmm1, %xmm0
	movups	%xmm0, _tiles+4(,%edx,4)
	movl	20(%ebx), %edx
	movl	24(%ebx), %edi
	movl	12(%eax), %ebx
	movl	20(%eax), %esi
	movl	%edi, 24(%esp)
	movl	%ebx, 12(%esp)
	addl	%edx, %ebx
	movl	%esi, %ecx
	movl	%esi, 28(%esp)
	movl	24(%eax), %esi
	subl	%edx, %ecx
	movl	%ebx, 16(%esp)
	movl	16(%eax), %ebx
	subl	%edi, %esi
	movl	%ebx, 20(%esp)
	addl	%ebx, %edi
	movl	28(%esp), %ebx
	cmpl	%esi, %ecx
	cmovb	%ecx, %edx
	cmovnb	%ecx, %ebx
	movl	20(%esp), %ecx
	movl	%edx, (%esp)
	movl	%ebx, 28(%esp)
	movl	24(%esp), %ebx
	movl	%ecx, %edx
	cmovnb	%edi, %ecx
	cmovb	%edi, %edx
	cmovnb	%esi, %ebx
	cmovnb	24(%eax), %esi
	movl	%ecx, 20(%esp)
	movl	%edx, 8(%esp)
	movl	%ebx, 24(%esp)
	movl	16(%esp), %ebx
	movl	%esi, 4(%esp)
	movl	12(%esp), %esi
	movl	%ebx, %edx
	cmovnb	%esi, %ebx
	cmovb	%esi, %edx
	movl	%ebx, 16(%esp)
	movl	_heapNodes, %edi
	movl	%edx, %ebx
	movl	_nextTreeNodeIndex, %edx
	leal	-1(%edi), %ecx
	movl	%edi, 12(%esp)
	cmpl	%edx, %ecx
	je	L1507
	leal	(%edx,%edx,8), %ecx
	sall	$2, %ecx
	movl	%ebx, _nodes+12(%ecx)
	movl	8(%esp), %ebx
	leal	_nodes+12(%ecx), %edi
	leal	_nodes(%ecx), %esi
	movl	%eax, _nodes(%ecx)
	movl	$0, _nodes+4(%ecx)
	movl	$0, _nodes+8(%ecx)
	movl	4(%esp), %ecx
	movl	%ebx, 4(%edi)
	movl	28(%esp), %ebx
	movl	%ecx, 12(%edi)
	cmpl	%ecx, %ebx
	movl	%ebx, 8(%edi)
	cmovnb	%ebx, %ecx
	movl	$-1, 32(%esi)
	movl	%ecx, 28(%esi)
	leal	-1(%edx), %ecx
	movl	%ecx, _nextTreeNodeIndex
	movl	%esi, 4(%eax)
	cmpl	%edx, 12(%esp)
	je	L1508
	movl	16(%esp), %esi
	leal	(%ecx,%ecx,8), %ecx
	movl	24(%esp), %edi
	sall	$2, %ecx
	movl	%esi, _nodes+12(%ecx)
	movl	20(%esp), %esi
	movl	%eax, _nodes(%ecx)
	movl	%esi, _nodes+16(%ecx)
	movl	(%esp), %esi
	movl	$0, _nodes+4(%ecx)
	cmpl	%edi, %esi
	movl	%esi, %ebx
	movl	$0, _nodes+8(%ecx)
	cmovb	%edi, %ebx
	movl	%esi, _nodes+20(%ecx)
	subl	$2, %edx
	movl	%edi, _nodes+24(%ecx)
	movl	%ebx, _nodes+28(%ecx)
	movl	$-1, _nodes+32(%ecx)
	movl	%edx, _nextTreeNodeIndex
	leal	_nodes(%ecx), %edx
L1509:
	movl	%edx, 8(%eax)
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
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1511:
	.cfi_restore_state
	movl	%eax, %edi
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1510
	movl	8(%eax), %edx
	cmpl	%edi, %edx
	je	L1511
	testl	%edx, %edx
	je	L1511
	movl	%edx, %eax
	jmp	L1500
	.p2align 4,,10
	.p2align 3
L1510:
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
L1513:
	.cfi_restore_state
	movl	4(%eax), %eax
	jmp	L1500
L1507:
	movl	$0, 4(%eax)
L1508:
	xorl	%edx, %edx
	jmp	L1509
	.cfi_endproc
LFE229:
	.p2align 4
	.globl	__ZL15rejectQueue_addP8TreeNode.isra.0
	.def	__ZL15rejectQueue_addP8TreeNode.isra.0;	.scl	2;	.type	32;	.endef
__ZL15rejectQueue_addP8TreeNode.isra.0:
LFB233:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	%ebx, (%esp)
	.cfi_offset 3, -12
	movl	_numRejected, %ebx
	cmpl	$30719, %ebx
	ja	L1514
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	movl	_rejectQueueHeadIndex, %esi
	movl	%eax, %ecx
	movl	$-2004318071, %eax
	addl	%ebx, %esi
	addl	$1, %ebx
	mull	%esi
	shrl	$14, %edx
	imull	$30720, %edx, %edx
	subl	%edx, %esi
	leal	(%esi,%esi,8), %edx
	movl	(%ecx), %esi
	movl	%ebx, _numRejected
	leal	_rejectQueue(,%edx,4), %eax
	movl	%esi, _rejectQueue(,%edx,4)
	movl	4(%ecx), %edx
	movl	%edx, 4(%eax)
	movl	8(%ecx), %edx
	movl	%edx, 8(%eax)
	movl	12(%ecx), %edx
	movl	%edx, 12(%eax)
	movl	16(%ecx), %edx
	movl	%edx, 16(%eax)
	movl	20(%ecx), %edx
	movl	%edx, 20(%eax)
	movl	24(%ecx), %edx
	movl	%edx, 24(%eax)
	movl	28(%ecx), %edx
	movl	%edx, 28(%eax)
	movl	32(%ecx), %edx
	movl	%edx, 32(%eax)
	movl	4(%esp), %esi
	.cfi_restore 6
L1514:
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE233:
	.p2align 4
	.globl	__Z18tilepacker_addTilejjj.part.0
	.def	__Z18tilepacker_addTilejjj.part.0;	.scl	2;	.type	32;	.endef
__Z18tilepacker_addTilejjj.part.0:
LFB234:
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
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_offset 3, -20
	movl	%eax, %ebx
	andl	$-16, %esp
	subl	$16, %esp
	movl	_nextTreeNodeIndex, %edi
	movl	_heapNodes, %eax
	leal	1(%edi), %ecx
	cmpl	%eax, %ecx
	je	L1517
	cmpl	%esi, %edx
	movl	%edx, 12(%esp)
	movss	12(%esp), %xmm1
	leal	(%eax,%eax,8), %edi
	cmovb	%esi, %edx
	movl	%esi, 12(%esp)
	movss	12(%esp), %xmm2
	addl	$1, %eax
	movl	$0, _nodes(,%edi,4)
	xorps	%xmm0, %xmm0
	unpcklps	%xmm2, %xmm1
	movl	%edx, _nodes+28(,%edi,4)
	movl	$0, _nodes+4(,%edi,4)
	movlhps	%xmm1, %xmm0
	movl	$0, _nodes+8(,%edi,4)
	movl	%ebx, _nodes+32(,%edi,4)
	movl	%eax, _heapNodes
	movups	%xmm0, _nodes+12(,%edi,4)
L1517:
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
LFE234:
	.p2align 4
	.globl	_tileSetData
	.def	_tileSetData;	.scl	2;	.type	32;	.endef
_tileSetData:
LFB238:
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
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	_faketiledata(,%eax,4), %edi
	movl	_g_sm_heap, %ecx
	cmpl	$2113929216, %edx
	ja	L1521
	movl	$-2139062143, %eax
	movl	%edi, (%esp)
	mull	%edx
	shrl	$7, %edx
	leal	16(%edx,%esi), %edx
	movl	%edx, 4(%esp)
	movl	%edx, 8(%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 24
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	testl	%eax, %eax
	movl	8(%esp), %edx
	je	L1522
L1528:
	movl	%eax, _faketiledata(,%ebx,4)
	movl	%esi, %ecx
	movl	%edx, (%esp)
	movl	%eax, %edx
	movl	%ebp, %eax
	call	_LZ4_compress_fast.constprop.0
	movl	_g_sm_heap, %ecx
	movl	%eax, %esi
	movl	_faketiledata(,%ebx,4), %eax
	cmpl	$-1, %esi
	je	L1532
	movl	%esi, _faketilesize(,%ebx,4)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 24
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	testl	%eax, %eax
	jne	L1529
	testl	%esi, %esi
	jne	L1525
L1529:
	movl	%eax, _faketiledata(,%ebx,4)
	movl	%ebx, %edx
	movl	%ebx, %eax
	sarl	$3, %eax
	andl	$7, %edx
	movb	$-36, _tilefilenum(%ebx)
	movzbl	__ZL8pow2char.lto_priv.13(%edx), %edx
	orb	%dl, _faketile(%eax)
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
L1521:
	.cfi_restore_state
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 24
	xorl	%edx, %edx
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	jmp	L1528
	.p2align 4,,10
	.p2align 3
L1532:
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 28
	movl	%ebx, %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	sarl	$3, %edx
	movl	$0, _faketiledata(,%ebx,4)
	andl	$7, %ebx
	movzbl	__ZL8pow2char.lto_priv.13(%ebx), %eax
	notl	%eax
	andb	%al, _faketile(%edx)
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
L1522:
	.cfi_restore_state
	movl	%edx, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1525:
	movl	%esi, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE238:
	.p2align 4
	.globl	_tileDelete
	.def	_tileDelete;	.scl	2;	.type	32;	.endef
_tileDelete:
LFB241:
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
	call	__ZL14tileSoftDeletei
	movl	_faketiledata(,%eax,4), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movswl	_tiletovox(%esi,%esi), %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	$0, _faketiledata(,%esi,4)
	cmpl	$2047, %ebx
	ja	L1534
	movl	_voxmodels(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1535
	call	_voxfree
	movl	$0, _voxmodels(,%ebx,4)
L1535:
	movl	__ZL12voxfilenames.lto_priv.0(,%ebx,4), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	leal	(%ebx,%ebx,4), %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	$0, __ZL12voxfilenames.lto_priv.0(,%ebx,4)
	movl	$16843009, __ZL7voxlock.lto_priv.0(%edx)
	movb	$1, __ZL7voxlock.lto_priv.0+4(%edx)
	movl	$0, _voxoff(,%edx,4)
	movl	$0, _voxoff+4(,%edx,4)
	movl	$0, _voxoff+8(,%edx,4)
	movl	$0, _voxoff+12(,%edx,4)
	movl	$0, _voxoff+16(,%edx,4)
	movl	$65536, _voxscale(,%ebx,4)
	movb	$0, _voxflags(%ebx)
L1534:
	movl	$-1, %edx
	movw	%dx, _tiletovox(%esi,%esi)
	cmpl	$30719, %esi
	ja	L1536
	movl	$255, %ebx
	.p2align 4
	.p2align 3
L1538:
	movl	_hicinitcounter, %eax
	testl	%eax, %eax
	je	L1537
	movl	%ebx, %edx
	movl	%esi, %eax
	call	_hicclearsubst.part.0.isra.0
L1537:
	subl	$1, %ebx
	jnb	L1538
L1536:
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	_md_undefinetile.isra.0
	.cfi_endproc
LFE241:
	.p2align 4
	.globl	_tileUpdatePicSiz
	.def	_tileUpdatePicSiz;	.scl	2;	.type	32;	.endef
_tileUpdatePicSiz:
LFB244:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	movswl	_tilesiz(,%eax,4), %edx
	movl	$15, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1545:
	cmpl	%edx, _pow2long.lto_priv.2(,%eax,4)
	jle	L1546
	subl	$1, %eax
	cmpl	$1, %eax
	jne	L1545
	movl	$1, %eax
L1546:
	movswl	_tilesiz+2(,%ebx,4), %ecx
	movl	$15, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L1548:
	cmpl	%ecx, _pow2long.lto_priv.2(,%edx,4)
	jle	L1554
	subl	$1, %edx
	cmpl	$1, %edx
	jne	L1548
	movl	$16, %edx
	orl	%edx, %eax
	movb	%al, _picsiz(%ebx)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1554:
	.cfi_restore_state
	sall	$4, %edx
	orl	%edx, %eax
	movb	%al, _picsiz(%ebx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE244:
	.section .rdata,"dr"
	.align 4
LC509:
	.ascii "Unable to load %s: bad version.\0"
LC510:
	.ascii "source/build/src/tiles.cpp\0"
	.align 4
LC511:
	.ascii "Unable to load %s: tile range is reversed, negative, or exceeds MAXTILES: file likely corrupt.\0"
	.text
	.p2align 4
	.globl	_artReadHeader
	.def	_artReadHeader;	.scl	2;	.type	32;	.endef
_artReadHeader:
LFB245:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%edx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%ecx, %esi
	movl	$4, %ecx
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %ebx
	subl	$32, %esp
	.cfi_def_cfa_offset 48
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	leal	28(%esp), %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	28(%esp), %eax
	cmpl	$1279874370, %eax
	je	L1565
L1556:
	cmpl	$1, %eax
	jne	L1566
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	leal	24(%esp), %edx
	movl	$4, %ecx
	movl	%ebx, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	%esi, %edx
	movl	%ebx, %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$4, %ecx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	leal	4(%esi), %edx
	movl	$4, %ecx
	movl	%ebx, %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	4(%esi), %eax
	movl	(%esi), %edx
	cmpl	$30463, %eax
	seta	%cl
	cmpl	$30463, %edx
	seta	23(%esp)
	orb	23(%esp), %cl
	jne	L1563
	cmpl	%edx, %eax
	jl	L1563
	subl	%edx, %eax
	addl	$1, %eax
	movl	%eax, 8(%esi)
	addl	$32, %esp
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
L1566:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1567
L1558:
	movl	%ebx, %eax
	call	_kclose
	addl	$32, %esp
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
L1565:
	.cfi_restore_state
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$4, %ecx
	leal	28(%esp), %edx
	movl	%ebx, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$1414676804, 28(%esp)
	jne	L1557
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$4, %ecx
	leal	28(%esp), %edx
	movl	%ebx, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	28(%esp), %eax
	jmp	L1556
	.p2align 4,,10
	.p2align 3
L1557:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1558
	movl	%edi, 16(%esp)
	movl	$LC509, 12(%esp)
	movl	$316, 8(%esp)
	movl	$LC510, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1558
	.p2align 4,,10
	.p2align 3
L1567:
	movl	%edi, 16(%esp)
	movl	$LC509, 12(%esp)
	movl	$324, 8(%esp)
	movl	$LC510, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1558
	.p2align 4,,10
	.p2align 3
L1563:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1558
	movl	%edi, 16(%esp)
	movl	$LC511, 12(%esp)
	movl	$337, 8(%esp)
	movl	$LC510, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1558
	.cfi_endproc
LFE245:
	.section .rdata,"dr"
	.align 4
LC512:
	.ascii "Unable to load art: bad version.\0"
	.align 4
LC513:
	.ascii "Unable to load art: tile range is reversed, negative, or exceeds MAXTILES: data likely corrupt.\0"
	.text
	.p2align 4
	.globl	_artCheckUnitFileHeader
	.def	_artCheckUnitFileHeader;	.scl	2;	.type	32;	.endef
_artCheckUnitFileHeader:
LFB247:
	.cfi_startproc
	cmpl	$24, %edx
	jle	L1575
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	cmpl	$1, (%eax)
	jne	L1582
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -8
	movl	8(%eax), %edx
	movl	12(%eax), %eax
	cmpl	$30463, %eax
	seta	%cl
	cmpl	$30463, %edx
	seta	%bl
	orb	%bl, %cl
	jne	L1577
	cmpl	%eax, %edx
	jg	L1577
	sete	%al
	movl	16(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	movzbl	%al, %eax
	leal	-3(%eax,%eax,2), %eax
	ret
	.p2align 4,,10
	.p2align 3
L1577:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1574
	movl	16(%esp), %ebx
	.cfi_restore 3
L1571:
	movl	$-2, %eax
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1574:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -8
	movl	$LC513, 12(%esp)
	movl	$361, 8(%esp)
	movl	$LC510, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	16(%esp), %ebx
	.cfi_restore 3
	jmp	L1571
	.p2align 4,,10
	.p2align 3
L1575:
	.cfi_def_cfa_offset 4
	movl	$-1, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1582:
	.cfi_def_cfa_offset 24
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1571
	movl	$LC512, 12(%esp)
	movl	$352, 8(%esp)
	movl	$LC510, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1571
	.cfi_endproc
LFE247:
	.p2align 4
	.globl	_artReadManifest
	.def	_artReadManifest;	.scl	2;	.type	32;	.endef
_artReadManifest:
LFB249:
	.cfi_startproc
	subl	$56, %esp
	.cfi_def_cfa_offset 60
	movl	_g_sm_heap, %ecx
	movl	%ebx, 40(%esp)
	movl	%esi, 44(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	%edx, %esi
	movl	%eax, 32(%esp)
	movl	8(%edx), %eax
	movl	%edx, 16(%esp)
	leal	(%eax,%eax), %ebx
	movl	%eax, 12(%esp)
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 56
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	movl	%eax, 24(%esp)
	testl	%eax, %eax
	je	L1599
	movl	8(%esi), %eax
	movl	_g_sm_heap, %ecx
	leal	(%eax,%eax), %ebx
	movl	%eax, 12(%esp)
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 56
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	movl	%eax, 28(%esp)
	testl	%eax, %eax
	je	L1599
	movl	16(%esp), %esi
	movl	32(%esp), %ebx
	movl	24(%esp), %edx
	movl	8(%esi), %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	leal	(%eax,%eax), %ecx
	movl	%eax, 12(%esp)
	movl	%ebx, %eax
	call	__Z14kread_internaliPviPKhPKiPi
	movl	8(%esi), %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	28(%esp), %edx
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	leal	(%eax,%eax), %ecx
	movl	%eax, 12(%esp)
	movl	%ebx, %eax
	call	__Z14kread_internaliPviPKhPKiPi
	movl	8(%esi), %eax
	movl	_g_sm_heap, %ecx
	leal	7(%eax), %ebx
	movl	%eax, 12(%esp)
	sarl	$3, %ebx
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 56
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1599
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%ebp, 52(%esp)
	.cfi_offset 5, -8
	call	_memset
	movl	16(%esp), %eax
	movl	%esi, 12(%eax)
	movl	(%eax), %ebp
	cmpl	4(%eax), %ebp
	jg	L1589
	leal	_picanm(%ebp,%ebp,4), %eax
	movl	%edi, 48(%esp)
	movl	%eax, 20(%esp)
	movl	%ebp, %eax
	.cfi_offset 7, -12
	jmp	L1590
	.p2align 4,,10
	.p2align 3
L1600:
	addl	$5, 20(%esp)
	movl	(%eax), %eax
L1590:
	movl	%ebp, %ebx
	movl	28(%esp), %esi
	movl	$4, %ecx
	leal	36(%esp), %edx
	subl	%eax, %ebx
	movl	24(%esp), %eax
	movzwl	(%esi,%ebx,2), %edi
	movzwl	(%eax,%ebx,2), %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movswl	%ax, %esi
	movw	%ax, 12(%esp)
	movswl	%di, %eax
	imull	%eax, %esi
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	32(%esp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	testl	%esi, %esi
	je	L1591
	movzwl	12(%esp), %eax
	movl	16(%esp), %ecx
	sall	$16, %edi
	orl	%eax, %edi
	movl	%ebx, %eax
	andl	$7, %ebx
	movl	%edi, _tilesiz(,%ebp,4)
	sarl	$3, %eax
	addl	12(%ecx), %eax
	movzbl	__ZL8pow2char.lto_priv.13(%ebx), %edx
	orb	%dl, (%eax)
	movl	36(%esp), %eax
	movl	20(%esp), %edi
	movl	%eax, %edx
	movb	%ah, 1(%edi)
	andl	$63, %edx
	movb	%dl, (%edi)
	movl	%eax, %edx
	shrl	$16, %edx
	movb	%dl, 2(%edi)
	movl	%eax, %edx
	andl	$-64, %eax
	shrl	$24, %edx
	andl	$15, %edx
	orl	%edx, %eax
	movb	%al, 3(%edi)
L1591:
	movl	16(%esp), %eax
	addl	$1, %ebp
	cmpl	%ebp, 4(%eax)
	jge	L1600
	movl	48(%esp), %edi
	.cfi_restore 7
L1589:
	movl	24(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 56
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 56
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	movl	52(%esp), %ebp
	.cfi_restore 5
	movl	40(%esp), %ebx
	movl	44(%esp), %esi
	addl	$56, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1599:
	.cfi_def_cfa_offset 60
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	%ebx, %eax
	movl	%edi, 48(%esp)
	movl	%ebp, 52(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	call	__Z13handle_memerri
	.cfi_endproc
LFE249:
	.p2align 4
	.globl	_artPreloadFile
	.def	_artPreloadFile;	.scl	2;	.type	32;	.endef
_artPreloadFile:
LFB251:
	.cfi_startproc
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	%esi, 28(%esp)
	.cfi_offset 6, -16
	movl	%edx, %esi
	movl	%ebx, 24(%esp)
	movl	%edi, 32(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	movl	(%edx), %ebx
	movl	%eax, 20(%esp)
	cmpl	4(%edx), %ebx
	jg	L1609
	movl	%ebp, 36(%esp)
	.cfi_offset 5, -8
	movl	$1, %ecx
	movl	%ebx, %ebp
	xorl	%edi, %edi
	movl	$0, 16(%esp)
	movl	%ebx, 12(%esp)
	jmp	L1608
	.p2align 4,,10
	.p2align 3
L1607:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	20(%esp), %eax
	movl	%ebp, %ecx
	movl	%edi, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	12(%esp), %eax
	movl	%edi, %ecx
	movl	%ebp, %edx
	call	_tileSetData
L1604:
	addl	$1, 12(%esp)
	movl	12(%esp), %eax
	cmpl	%eax, 4(%esi)
	jl	L1613
	movl	(%esi), %ebp
	subl	%ebp, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.13(%eax), %ecx
L1608:
	movl	12(%esp), %eax
	movl	12(%esi), %edx
	subl	%ebp, %eax
	sarl	$3, %eax
	movzbl	(%edx,%eax), %ebx
	andl	%ecx, %ebx
	cmpb	%cl, %bl
	jne	L1604
	movl	12(%esp), %eax
	movswl	_tilesiz(,%eax,4), %ebp
	movswl	_tilesiz+2(,%eax,4), %eax
	imull	%eax, %ebp
	testl	%ebp, %ebp
	je	L1614
	cmpl	16(%esp), %ebp
	jle	L1607
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%ebp, 4(%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 36
	subl	$8, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1615
	movl	%ebp, 16(%esp)
	jmp	L1607
	.p2align 4,,10
	.p2align 3
L1613:
	movl	36(%esp), %ebp
	.cfi_restore 5
L1602:
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 40
	movl	12(%esi), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	movl	$0, 12(%esi)
	movl	24(%esp), %ebx
	movl	28(%esp), %esi
	movl	32(%esp), %edi
	addl	$40, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1614:
	.cfi_def_cfa_offset 44
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	12(%esp), %eax
	call	_tileDelete
	jmp	L1604
	.p2align 4,,10
	.p2align 3
L1609:
	.cfi_restore 5
	xorl	%edi, %edi
	jmp	L1602
	.p2align 4,,10
	.p2align 3
L1615:
	.cfi_offset 5, -8
	movl	%ebp, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE251:
	.section .rdata,"dr"
LC514:
	.ascii "cache1d\0"
LC515:
	.ascii "dummytile\0"
	.align 4
LC516:
	.ascii "Per-map .art file could not be loaded %s: tile %d is locked by %s.\0"
LC517:
	.ascii "Per-map .art file %s loaded\0"
	.text
	.p2align 4
	.globl	__ZL18artReadIndexedFilei.lto_priv.0
	.def	__ZL18artReadIndexedFilei.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL18artReadIndexedFilei.lto_priv.0:
LFB253:
	.cfi_startproc
	subl	$84, %esp
	.cfi_def_cfa_offset 88
	movl	%ebx, 68(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%esi, 72(%esp)
	.cfi_offset 6, -16
	call	__ZL21artGetIndexedFileNamei
	xorl	%edx, %edx
	movl	%eax, 36(%esp)
	movl	%eax, %esi
	call	_kopen4load.part.0
	cmpl	$-1, %eax
	je	L1653
	leal	52(%esp), %ecx
	movl	%esi, %edx
	movl	%edi, 76(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	call	_artReadHeader
	movl	%eax, 32(%esp)
	testl	%eax, %eax
	jne	L1667
	movl	%ebp, 80(%esp)
	.cfi_offset 5, -8
	cmpl	$199, %ebx
	jle	L1620
	movl	52(%esp), %esi
	movl	56(%esp), %ebp
	cmpl	%ebp, %esi
	jg	L1621
	movl	%ebx, 28(%esp)
	movl	%esi, %eax
	jmp	L1623
	.p2align 4,,10
	.p2align 3
L1669:
	cmpb	$-57, _walock(%eax)
	ja	L1622
	addl	$1, %eax
	cmpl	%ebp, %eax
	jg	L1668
L1623:
	movl	%eax, %edx
	movl	%eax, %ecx
	andl	$7, %edx
	sarl	$3, %ecx
	movzbl	__ZL8pow2char.lto_priv.13(%edx), %edx
	movzbl	_faketile(%ecx), %ebx
	andl	%edx, %ebx
	cmpb	%bl, %dl
	jne	L1669
L1622:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-1, %edx
	jl	L1624
	cmpb	$-57, _walock(%eax)
	movl	$LC515, %edx
	movl	$LC514, %ecx
	movl	%eax, 20(%esp)
	cmova	%ecx, %edx
	movl	36(%esp), %eax
	movl	$LC516, 12(%esp)
	movl	$538, 8(%esp)
	movl	%edx, 24(%esp)
	movl	%eax, 16(%esp)
	movl	$LC510, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L1624:
	movl	%edi, %eax
	call	_kclose
	movl	76(%esp), %edi
	.cfi_restore 7
	movl	80(%esp), %ebp
	.cfi_restore 5
	movl	$-3, 32(%esp)
L1616:
	movl	32(%esp), %eax
	movl	68(%esp), %ebx
	movl	72(%esp), %esi
	addl	$84, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1668:
	.cfi_def_cfa_offset 88
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	28(%esp), %ebx
L1621:
	movl	60(%esp), %ebp
	leal	_waloff(,%esi,4), %eax
	movl	$0, 4(%esp)
	addl	$_walock, %esi
	movl	%eax, (%esp)
	leal	0(,%ebp,4), %edx
	movl	%edx, 8(%esp)
	call	_memset
	movl	%ebp, 8(%esp)
	movl	$1, 4(%esp)
	movl	%esi, (%esp)
	call	_memset
	leal	52(%esp), %edx
	movl	%edi, %eax
	call	_artReadManifest
	cmpb	$-2, __ZL7filegrp.lto_priv.0(%edi)
	jne	L1670
	movl	52(%esp), %ebx
	cmpl	%ebx, 56(%esp)
	jl	L1655
	movl	%ebx, 28(%esp)
	movl	%ebx, %ecx
	movl	$1, %edx
	xorl	%ebp, %ebp
	movl	$0, 44(%esp)
	movl	%edi, 48(%esp)
	jmp	L1643
	.p2align 4,,10
	.p2align 3
L1674:
	movl	$-2139062143, %eax
	mull	%esi
	shrl	$7, %edx
	leal	16(%esi,%edx), %edx
	movl	%edx, %eax
L1636:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, 40(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 84
	subl	$4, %esp
	.cfi_def_cfa_offset 88
	testl	%eax, %eax
	movl	%eax, %edi
	movl	40(%esp), %edx
	je	L1637
	movl	%edx, (%esp)
	movl	%esi, %ecx
	movl	%eax, %edx
	movl	%ebp, %eax
	call	_LZ4_compress_fast.constprop.0
	movl	_g_sm_heap, %ecx
	movl	%eax, %esi
	cmpl	$-1, %eax
	je	L1671
	movl	28(%esp), %eax
	movl	%esi, _faketilesize(,%eax,4)
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 80
	subl	$8, %esp
	.cfi_def_cfa_offset 88
	testl	%eax, %eax
	jne	L1658
	testl	%esi, %esi
	jne	L1640
L1658:
	movl	28(%esp), %esi
	movl	%eax, _faketiledata(,%esi,4)
	movl	%esi, %ebx
	movl	%esi, %eax
	sarl	$3, %eax
	andl	$7, %ebx
	movzbl	__ZL8pow2char.lto_priv.13(%ebx), %edx
	orb	%dl, _faketile(%eax)
	movb	$-36, _tilefilenum(%esi)
L1632:
	addl	$1, 28(%esp)
	movl	28(%esp), %eax
	cmpl	56(%esp), %eax
	jg	L1665
	movl	52(%esp), %ecx
	subl	%ecx, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.13(%eax), %edx
L1643:
	movl	28(%esp), %eax
	subl	%ecx, %eax
	movl	64(%esp), %ecx
	sarl	$3, %eax
	movzbl	(%ecx,%eax), %ebx
	andl	%edx, %ebx
	cmpb	%dl, %bl
	jne	L1632
	movl	28(%esp), %eax
	movswl	_tilesiz(,%eax,4), %esi
	movswl	_tilesiz+2(,%eax,4), %eax
	imull	%eax, %esi
	testl	%esi, %esi
	je	L1672
	cmpl	44(%esp), %esi
	jg	L1673
L1635:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	48(%esp), %eax
	movl	%esi, %ecx
	movl	%ebp, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$2113929216, %esi
	jbe	L1674
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	L1636
	.p2align 4,,10
	.p2align 3
L1670:
	movl	%edi, %eax
	call	_ktell
	movl	56(%esp), %edx
	movl	64(%esp), %ebp
	movl	%eax, %esi
	movl	52(%esp), %eax
	cmpl	%edx, %eax
	jg	L1675
L1650:
	leal	1(%edx), %ecx
	movl	%ebx, 40(%esp)
	xorl	%edx, %edx
	movl	%ecx, 28(%esp)
	movl	$1, %ecx
	movl	%edi, 44(%esp)
	jmp	L1648
	.p2align 4,,10
	.p2align 3
L1676:
	addl	$1, %edx
	movl	%edx, %ecx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.13(%ecx), %ecx
L1648:
	movl	%edx, %edi
	sarl	$3, %edi
	movzbl	0(%ebp,%edi), %edi
	andl	%ecx, %edi
	movl	%edi, %ebx
	cmpb	%cl, %bl
	jne	L1646
	movswl	_tilesiz(,%eax,4), %ecx
	movswl	_tilesiz+2(,%eax,4), %edi
	movl	%esi, __ZL12tilefileoffs(,%eax,4)
	movzbl	40(%esp), %ebx
	imull	%edi, %ecx
	movb	%bl, _tilefilenum(%eax)
	addl	%ecx, %esi
L1646:
	addl	$1, %eax
	cmpl	28(%esp), %eax
	jne	L1676
	movl	_g_sm_heap, %ecx
	movl	40(%esp), %ebx
	movl	%ebp, (%esp)
	movl	44(%esp), %edi
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 84
	subl	$4, %esp
	.cfi_def_cfa_offset 88
	movl	$0, 64(%esp)
	cmpl	$199, %ebx
	jg	L1644
L1645:
	movl	%edi, %eax
	call	_kclose
	movl	32(%esp), %eax
	movl	76(%esp), %edi
	.cfi_restore 7
	movl	80(%esp), %ebp
	.cfi_restore 5
	movl	68(%esp), %ebx
	movl	72(%esp), %esi
	addl	$84, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1667:
	.cfi_def_cfa_offset 88
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%edi, %eax
	call	_kclose
	movl	32(%esp), %eax
	movl	76(%esp), %edi
	.cfi_restore 7
	movl	68(%esp), %ebx
	movl	72(%esp), %esi
	addl	$84, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1620:
	.cfi_def_cfa_offset 88
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	leal	52(%esp), %edx
	movl	%edi, %eax
	call	_artReadManifest
	cmpb	$-2, __ZL7filegrp.lto_priv.0(%edi)
	jne	L1677
	leal	52(%esp), %edx
	movl	%edi, %eax
	call	_artPreloadFile
	jmp	L1645
	.p2align 4,,10
	.p2align 3
L1665:
	movl	48(%esp), %edi
L1630:
	movl	%ebp, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 84
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 88
	movl	64(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 84
	subl	$4, %esp
	.cfi_def_cfa_offset 88
	movl	$0, 64(%esp)
L1644:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L1645
	movl	36(%esp), %eax
	movl	$LC517, 12(%esp)
	movl	$585, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC510, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1645
	.p2align 4,,10
	.p2align 3
L1673:
	movl	%ebp, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%esi, 4(%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 80
	subl	$8, %esp
	.cfi_def_cfa_offset 88
	movl	%eax, %ebp
	testl	%eax, %eax
	je	L1640
	movl	%esi, 44(%esp)
	jmp	L1635
	.p2align 4,,10
	.p2align 3
L1671:
	movl	%edi, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 84
	subl	$4, %esp
	.cfi_def_cfa_offset 88
	jmp	L1632
	.p2align 4,,10
	.p2align 3
L1672:
	movl	28(%esp), %eax
	call	__ZL14tileSoftDeletei
	jmp	L1632
L1677:
	movl	%edi, %eax
	call	_ktell
	movl	56(%esp), %edx
	movl	64(%esp), %ebp
	movl	%eax, %esi
	movl	52(%esp), %eax
	cmpl	%eax, %edx
	jge	L1650
	movl	%ebp, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 84
	subl	$4, %esp
	.cfi_def_cfa_offset 88
	movl	$0, 64(%esp)
	jmp	L1645
L1637:
	movl	%edx, %eax
	call	__Z13handle_memerri
L1640:
	movl	%esi, %eax
	call	__Z13handle_memerri
L1653:
	.cfi_restore 5
	.cfi_restore 7
	movl	$-1, 32(%esp)
	jmp	L1616
L1655:
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	xorl	%ebp, %ebp
	jmp	L1630
L1675:
	movl	%ebp, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 84
	subl	$4, %esp
	.cfi_def_cfa_offset 88
	movl	$0, 64(%esp)
	jmp	L1644
	.cfi_endproc
LFE253:
	.section .rdata,"dr"
LC518:
	.ascii "Failed opening .art file %s!\0"
	.text
	.p2align 4
	.globl	_tileLoadData
	.def	_tileLoadData;	.scl	2;	.type	32;	.endef
_tileLoadData:
LFB259:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	%ebp, 48(%esp)
	.cfi_offset 5, -8
	movswl	%ax, %ebp
	movl	%edi, 44(%esp)
	.cfi_offset 7, -12
	movswl	_rottile+2(,%ebp,4), %edi
	cmpl	$-1, %edi
	je	L1679
	movl	_waloff(,%edi,4), %edx
	testl	%edx, %edx
	je	L1711
L1680:
	movl	_waloff(,%ebp,4), %eax
	movl	%eax, 24(%esp)
	testl	%eax, %eax
	jne	L1712
L1678:
	movl	44(%esp), %edi
	movl	48(%esp), %ebp
	addl	$52, %esp
	.cfi_remember_state
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1679:
	.cfi_restore_state
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	%ebp, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movl	%esi, 40(%esp)
	movzbl	__ZL8pow2char.lto_priv.13(%eax), %eax
	.cfi_offset 6, -16
	movl	%ecx, %esi
	movzbl	_faketile(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%cl, %al
	je	L1713
	movzbl	_tilefilenum(%ebp), %edi
	movl	__ZL6artfil.lto_priv.0, %eax
	movl	__ZL9artfilplc.lto_priv.0, %ecx
	cmpl	%edi, __ZL9artfilnum.lto_priv.0
	je	L1688
	cmpl	$-1, %eax
	jne	L1714
L1689:
	movl	%edi, %eax
	call	__ZL21artGetIndexedFileNamei
	movl	%eax, 20(%esp)
	call	_kopen4loadfrommod.constprop.0
	movl	%eax, __ZL6artfil.lto_priv.0
	cmpl	$-1, %eax
	je	L1715
	movl	%edi, __ZL9artfilnum.lto_priv.0
	xorl	%ecx, %ecx
	movl	$0, __ZL9artfilplc.lto_priv.0
L1688:
	movl	__ZL12tilefileoffs(,%ebp,4), %edx
	cmpl	%ecx, %edx
	je	L1693
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	xorl	%ecx, %ecx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	__ZL6artfil.lto_priv.0, %eax
L1693:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	%ebx, %ecx
	movl	%esi, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	addl	__ZL12tilefileoffs(,%ebp,4), %ebx
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	44(%esp), %edi
	movl	48(%esp), %ebp
	movl	%ebx, __ZL9artfilplc.lto_priv.0
	movl	36(%esp), %ebx
	.cfi_restore 3
	addl	$52, %esp
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1711:
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	%edi, %eax
	call	_tileLoad.isra.0
	movl	_waloff(,%edi,4), %eax
	testl	%eax, %eax
	jne	L1680
	movl	44(%esp), %edi
	movl	48(%esp), %ebp
	addl	$52, %esp
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1714:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	_kclose
	jmp	L1689
	.p2align 4,,10
	.p2align 3
L1713:
	movl	_faketiledata(,%ebp,4), %eax
	testl	%eax, %eax
	je	L1709
	movl	_faketilesize(,%ebp,4), %ecx
	movl	%ebx, (%esp)
	movl	%esi, %edx
	call	_LZ4_decompress_safe
	movl	36(%esp), %ebx
	.cfi_restore 3
	movl	40(%esp), %esi
	.cfi_restore 6
	jmp	L1678
	.p2align 4,,10
	.p2align 3
L1712:
	movl	%esi, 40(%esp)
	movl	%ebx, 36(%esp)
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movswl	_rottile+2(,%ebp,4), %ebx
	movswl	_tilesiz(,%ebx,4), %edx
	movswl	_tilesiz+2(,%ebx,4), %ecx
	movl	%edx, %esi
	testl	%edx, %edx
	jle	L1682
	movl	_waloff(,%ebx,4), %eax
	movl	$0, 20(%esp)
	movl	%ebp, 32(%esp)
	movl	%eax, 28(%esp)
	.p2align 4
	.p2align 3
L1685:
	testw	%cx, %cx
	jle	L1683
	movl	20(%esp), %eax
	movl	28(%esp), %edi
	movl	%edx, %esi
	imull	%eax, %ecx
	subl	%eax, %esi
	xorl	%eax, %eax
	leal	(%edi,%ecx), %ebp
	movl	24(%esp), %edi
	leal	-1(%edi,%esi), %edi
	.p2align 6
	.p2align 4
	.p2align 3
L1684:
	imull	%eax, %edx
	movzbl	0(%ebp,%eax), %ecx
	addl	$1, %eax
	movb	%cl, (%edi,%edx)
	movswl	_tilesiz+2(,%ebx,4), %ecx
	movswl	_tilesiz(,%ebx,4), %edx
	movswl	%cx, %esi
	cmpl	%esi, %eax
	jl	L1684
	movswl	%dx, %edx
	movl	%edx, %esi
L1683:
	addl	$1, 20(%esp)
	cmpl	20(%esp), %edx
	jg	L1685
	movl	32(%esp), %ebp
L1682:
	movw	%cx, _tilesiz(,%ebp,4)
	movl	%ebp, %eax
	movw	%si, _tilesiz+2(,%ebp,4)
	movl	36(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	44(%esp), %edi
	movl	48(%esp), %ebp
	addl	$52, %esp
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	_tileUpdatePicSiz
L1709:
	.cfi_restore_state
	movl	36(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	40(%esp), %esi
	.cfi_restore 6
	jmp	L1678
L1715:
	.cfi_restore_state
	call	__ZN6loguru24current_verbosity_cutoffEv
	cmpl	$-2, %eax
	jge	L1716
L1691:
	call	_engineUnInit
	cmpl	$0, _g_sm_heap
	je	L1692
	call	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0
	movl	_g_sm_heap, %eax
	testl	%eax, %eax
	je	L1692
	call	__sm_allocator_destroy.part.0.lto_priv.4
L1692:
	movl	$1, (%esp)
	call	_exit
L1716:
	movl	20(%esp), %eax
	movl	$LC518, 12(%esp)
	movl	$727, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC510, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1691
	.cfi_endproc
LFE259:
	.p2align 4
	.globl	_tileLoad.isra.0
	.def	_tileLoad.isra.0;	.scl	2;	.type	32;	.endef
_tileLoad.isra.0:
LFB263:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movswl	%ax, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	cmpl	$30719, %ebx
	ja	L1717
	movswl	_tilesiz(,%ebx,4), %edx
	movswl	_tilesiz+2(,%ebx,4), %eax
	imull	%eax, %edx
	testl	%edx, %edx
	jle	L1717
	movl	_waloff(,%ebx,4), %ecx
	testl	%ecx, %ecx
	je	L1721
L1719:
	movl	%ebx, %eax
	call	_tileLoadData
	cmpl	$2, _rendmode
	jle	L1717
	cmpl	$200, _qsetmode
	je	L1722
L1717:
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1722:
	.cfi_restore_state
	xorl	%edx, %edx
	movl	%ebx, %eax
	movl	$513, %ecx
	call	__Z15gltexinvalidateiii
	movl	$513, (%esp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	_texcache_fetch
	xorl	%edx, %edx
	movl	%ebx, %eax
	movl	$516, %ecx
	call	__Z15gltexinvalidateiii
	movl	$516, (%esp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	_texcache_fetch
	jmp	L1717
	.p2align 4,,10
	.p2align 3
L1721:
	leal	_walock(%ebx), %ecx
	leal	_waloff(,%ebx,4), %eax
	movl	%edx, 4(%esp)
	movb	$-57, _walock(%ebx)
	call	__ZN7cache1d13allocateBlockEPiiPc.constprop.0
	movl	_waloff(,%ebx,4), %ecx
	movl	4(%esp), %edx
	jmp	L1719
	.cfi_endproc
LFE263:
	.p2align 4
	.globl	_artClearMapArt.part.0
	.def	_artClearMapArt.part.0;	.scl	2;	.type	32;	.endef
_artClearMapArt.part.0:
LFB266:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	xorl	%eax, %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 20
L1724:
	movl	$0, __ZL14mapartfilename(%eax)
	addl	$16, %eax
	movl	$0, __ZL14mapartfilename-12(%eax)
	movl	$0, __ZL14mapartfilename-8(%eax)
	movl	$0, __ZL14mapartfilename-4(%eax)
	cmpl	$256, %eax
	jb	L1724
	movl	$0, __ZL13mapartfnXXofs
	cmpl	$199, __ZL9artfilnum.lto_priv.0
	jg	L1755
L1726:
	xorl	%eax, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L1728:
	cmpb	$-57, _tilefilenum(%eax)
	jbe	L1727
	movb	$1, _walock(%eax)
	movl	$0, _waloff(,%eax,4)
L1727:
	addl	$1, %eax
	cmpl	$30720, %eax
	jne	L1728
	movl	__ZL17g_bakTileFileOffs, %ecx
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1730:
	cmpb	$-57, _tilefilenum(%eax)
	jbe	L1729
	movl	(%ecx,%eax,4), %edx
	movl	%edx, __ZL12tilefileoffs(,%eax,4)
L1729:
	addl	$1, %eax
	cmpl	$30720, %eax
	jne	L1730
	movl	%ecx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	movl	__ZL12g_bakTileSiz, %ecx
	xorl	%eax, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$0, __ZL17g_bakTileFileOffs
	.p2align 5
	.p2align 4
	.p2align 3
L1732:
	cmpb	$-57, _tilefilenum(%eax)
	jbe	L1731
	movl	(%ecx,%eax,4), %edx
	movl	%edx, _tilesiz(,%eax,4)
L1731:
	addl	$1, %eax
	cmpl	$30720, %eax
	jne	L1732
	movl	%ecx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	movl	__ZL11g_bakPicAnm, %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$0, __ZL12g_bakTileSiz
	.p2align 6
	.p2align 4
	.p2align 3
L1734:
	cmpb	$-57, _tilefilenum(%eax)
	jbe	L1733
	movl	(%ecx,%edx), %ebx
	movl	%ebx, _picanm(%edx)
	movzbl	4(%ecx,%edx), %ebx
	movb	%bl, _picanm+4(%edx)
L1733:
	addl	$1, %eax
	addl	$5, %edx
	cmpl	$30720, %eax
	jne	L1734
	movl	%ecx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	movl	__ZL12g_bakRottile, %ecx
	xorl	%eax, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$0, __ZL11g_bakPicAnm
	.p2align 5
	.p2align 4
	.p2align 3
L1736:
	cmpb	$-57, _tilefilenum(%eax)
	jbe	L1735
	movl	(%ecx,%eax,4), %edx
	movl	%edx, _rottile(,%eax,4)
L1735:
	addl	$1, %eax
	cmpl	$30720, %eax
	jne	L1736
	movl	%ecx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	movl	__ZL13g_bakFakeTile, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$0, __ZL12g_bakRottile
	movl	%ebx, 4(%esp)
	movl	$3840, 8(%esp)
	movl	$_faketile, (%esp)
	call	_memcpy
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	xorl	%ebx, %ebx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	movl	__ZL17g_bakFakeTileData, %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$0, __ZL13g_bakFakeTile
	.p2align 4
	.p2align 3
L1740:
	cmpb	$-57, _tilefilenum(%ebx)
	jbe	L1738
	movl	_faketiledata(,%ebx,4), %eax
	cmpl	(%edx,%ebx,4), %eax
	je	L1738
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	movl	__ZL17g_bakFakeTileData, %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	(%edx,%ebx,4), %eax
	movl	%eax, _faketiledata(,%ebx,4)
L1738:
	addl	$1, %ebx
	cmpl	$30464, %ebx
	jne	L1740
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	movl	__ZL16g_bakTileFileNum.lto_priv.0, %ecx
	xorl	%eax, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$0, __ZL17g_bakFakeTileData
	.p2align 5
	.p2align 4
	.p2align 3
L1742:
	cmpb	$-57, _tilefilenum(%eax)
	jbe	L1741
	movzbl	(%ecx,%eax), %edx
	movb	%dl, _tilefilenum(%eax)
L1741:
	addl	$1, %eax
	cmpl	$30720, %eax
	jne	L1742
	movl	%ecx, (%esp)
	movl	_g_sm_heap, %ecx
	xorl	%ebx, %ebx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$0, __ZL16g_bakTileFileNum.lto_priv.0
	.p2align 4
	.p2align 3
L1743:
	movl	%ebx, %eax
	addl	$1, %ebx
	call	_tileUpdatePicSiz
	cmpl	$30720, %ebx
	jne	L1743
	movl	$1, %eax
	call	__Z19gltexinvalidatetypei
	cmpl	$4, _rendmode
	je	L1756
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
L1755:
	.cfi_restore_state
	movl	__ZL6artfil.lto_priv.0, %eax
	call	_kclose
	movl	$-1, __ZL6artfil.lto_priv.0
	movl	$-1, __ZL9artfilnum.lto_priv.0
	movl	$0, __ZL9artfilplc.lto_priv.0
	jmp	L1726
L1756:
	addl	$12, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	_polymer_texinvalidate
	.cfi_endproc
LFE266:
	.p2align 4
	.globl	_artSetupMapArt.part.0
	.def	_artSetupMapArt.part.0;	.scl	2;	.type	32;	.endef
_artSetupMapArt.part.0:
LFB276:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%eax, 4(%esp)
	movl	$__ZL14mapartfilename, (%esp)
	call	_strcpy
	movl	$46, 4(%esp)
	movl	$__ZL14mapartfilename, (%esp)
	call	_strrchr
	testl	%eax, %eax
	je	L1790
	movl	$777541727, (%eax)
	movl	$7631457, 4(%eax)
L1759:
	movl	$__ZL14mapartfilename, (%esp)
	call	_strlen
	leal	-6(%eax), %edx
	movl	%edx, __ZL13mapartfnXXofs
	movl	$12336, %edx
	movw	%dx, __ZL14mapartfilename-6(%eax)
	movl	$__ZL14mapartfilename, %eax
	call	_kopen4loadfrommod.constprop.0
	cmpl	$-1, %eax
	je	L1791
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -8
	call	_kclose
	movl	$30720, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	testl	%eax, %eax
	je	L1764
	movl	$30720, 8(%esp)
	movl	$_tilefilenum, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, __ZL16g_bakTileFileNum.lto_priv.0
	call	_memcpy
	movl	$122880, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	testl	%eax, %eax
	je	L1766
	movl	$122880, 8(%esp)
	movl	$__ZL12tilefileoffs, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, __ZL17g_bakTileFileOffs
	call	_memcpy
	movl	$122880, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	testl	%eax, %eax
	je	L1766
	movl	$122880, 8(%esp)
	movl	$_tilesiz, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, __ZL12g_bakTileSiz
	call	_memcpy
	movl	$153600, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	testl	%eax, %eax
	je	L1768
	movl	$153600, 8(%esp)
	movl	$_picanm, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, __ZL11g_bakPicAnm
	call	_memcpy
	movl	$3840, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	testl	%eax, %eax
	je	L1792
	movl	$3840, 8(%esp)
	movl	$_faketile, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, __ZL13g_bakFakeTile
	call	_memcpy
	movl	$122880, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	testl	%eax, %eax
	je	L1766
	movl	$122880, 8(%esp)
	movl	$_faketiledata, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, __ZL17g_bakFakeTileData
	call	_memcpy
	movl	$122880, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	testl	%eax, %eax
	je	L1766
	movl	$122880, 8(%esp)
	movl	$200, %ebx
	movl	$_rottile, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, __ZL12g_bakRottile
	call	_memcpy
	jmp	L1775
	.p2align 4,,10
	.p2align 3
L1772:
	addl	$1, %ebx
	cmpl	$220, %ebx
	je	L1773
L1775:
	movl	%ebx, %eax
	call	__ZL18artReadIndexedFilei.lto_priv.0
	testl	%eax, %eax
	je	L1772
	cmpl	$200, %ebx
	je	L1777
	cmpl	$-1, %eax
	jne	L1777
L1773:
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L1776:
	movl	%ebx, %eax
	addl	$1, %ebx
	call	_tileUpdatePicSiz
	cmpl	$30720, %ebx
	jne	L1776
	movl	$1, %eax
	call	__Z19gltexinvalidatetypei
	movl	12(%esp), %ebx
	.cfi_restore 3
	cmpl	$4, _rendmode
	je	L1793
L1757:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
L1790:
	.cfi_restore_state
	movl	$__ZL14mapartfilename, (%esp)
	call	_strlen
	movl	$777541727, __ZL14mapartfilename(%eax)
	movl	$7631457, __ZL14mapartfilename+4(%eax)
	jmp	L1759
L1766:
	.cfi_offset 3, -8
	movl	$122880, %eax
	call	__Z13handle_memerri
L1791:
	.cfi_restore 3
	xorl	%eax, %eax
L1761:
	movl	$0, __ZL14mapartfilename(%eax)
	addl	$16, %eax
	movl	$0, __ZL14mapartfilename-12(%eax)
	movl	$0, __ZL14mapartfilename-8(%eax)
	movl	$0, __ZL14mapartfilename-4(%eax)
	cmpl	$256, %eax
	jb	L1761
	movl	$0, __ZL13mapartfnXXofs
	jmp	L1757
L1792:
	.cfi_offset 3, -8
	movl	$3840, %eax
	call	__Z13handle_memerri
L1777:
	movl	__ZL16g_bakTileFileNum.lto_priv.0, %eax
	testl	%eax, %eax
	je	L1773
	call	_artClearMapArt.part.0
	jmp	L1773
L1764:
	movl	$30720, %eax
	call	__Z13handle_memerri
L1793:
	.cfi_restore 3
	addl	$16, %esp
	.cfi_def_cfa_offset 4
	jmp	_polymer_texinvalidate
L1768:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -8
	movl	$153600, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE276:
.lcomm __ZL17g_bakFakeTileData,4,4
.lcomm __ZL13g_bakFakeTile,4,4
.lcomm __ZL12g_bakRottile,4,4
.lcomm __ZL11g_bakPicAnm,4,4
.lcomm __ZL12g_bakTileSiz,4,4
.lcomm __ZL17g_bakTileFileOffs,4,4
.lcomm __ZL12tilefileoffs,122880,32
.lcomm __ZL14mapartfilename,256,32
.lcomm __ZL13mapartfnXXofs,4,4
.lcomm _faketilesize,122880,32
	.section .rdata,"dr"
	.align 4
LC520:
	.ascii "failed reading texture cache header\0"
	.align 4
LC521:
	.ascii "header magic string doesn't match\0"
	.align 4
LC522:
	.ascii "compression doesn't match: cache contains compressed data\0"
	.align 4
LC523:
	.ascii "compression doesn't match: cache contains uncompressed data\0"
	.align 4
LC524:
	.ascii "texture in cache exceeds maximum supported size\0"
	.align 4
LC525:
	.ascii "texture in cache has non-power-of-two size, unsupported\0"
	.align 4
__ZZ22texcache_readtexheaderE10error_msgs:
	.long	LC520
	.long	LC521
	.long	LC507
	.long	LC522
	.long	LC523
	.long	LC524
	.long	LC525
LC526:
	.ascii "GL_COMPRESSED_RGB_S3TC_DXT1\0"
LC527:
	.ascii "GL_COMPRESSED_RGBA_S3TC_DXT1\0"
LC528:
	.ascii "GL_COMPRESSED_RGBA_S3TC_DXT3\0"
LC529:
	.ascii "GL_COMPRESSED_RGBA_S3TC_DXT5\0"
	.align 4
_CSWTCH.242:
	.long	LC526
	.long	LC527
	.long	LC528
	.long	LC529
	.data
	.align 4
__ZZ28texcache_writetex_fromdriverE26glGetTexLevelParameterivOK:
	.long	1
.lcomm _g_keyFIFOend,1,1
	.section .rdata,"dr"
	.align 4
_CSWTCH.725:
	.long	47
	.long	42
	.long	45
	.long	43
	.align 32
_g_keyAsciiTable:
	.ascii "\0\0"
	.ascii "1234567890-=\0\0qwertyuiop[]\0\0asdfghjkl;'`\0\\zxcvbnm,./\0*\0 \0\0\0\0\0\0\0\0\0\0\0\0\0"
	.ascii "789-456+1230.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
.lcomm _g_ImGuiCapturedDevices,1,1
.lcomm __ZZ12handleeventsE14rumbleZeroTime,4,4
.lcomm __ZZ17videoBeginDrawingE16backupFrameplace,4,4
	.globl	_GLAD_GL_SGIS_fog_function
	.bss
	.align 4
_GLAD_GL_SGIS_fog_function:
	.space 4
	.globl	_GLAD_GL_EXT_framebuffer_object
	.align 4
_GLAD_GL_EXT_framebuffer_object:
	.space 4
	.globl	_GLAD_GL_EXT_fog_coord
	.align 4
_GLAD_GL_EXT_fog_coord:
	.space 4
	.globl	_glad_glIsVertexArray
	.align 4
_glad_glIsVertexArray:
	.space 4
	.globl	_glad_glGenVertexArrays
	.align 4
_glad_glGenVertexArrays:
	.space 4
	.globl	_glad_glDeleteVertexArrays
	.align 4
_glad_glDeleteVertexArrays:
	.space 4
	.globl	_glad_glBindVertexArray
	.align 4
_glad_glBindVertexArray:
	.space 4
	.globl	_GLAD_GL_ARB_vertex_array_object
	.align 4
_GLAD_GL_ARB_vertex_array_object:
	.space 4
	.globl	_GLAD_GL_ARB_timer_query
	.align 4
_GLAD_GL_ARB_timer_query:
	.space 4
	.globl	_GLAD_GL_ARB_sync
	.align 4
_GLAD_GL_ARB_sync:
	.space 4
	.globl	_GLAD_GL_ARB_sampler_objects
	.align 4
_GLAD_GL_ARB_sampler_objects:
	.space 4
	.globl	_glad_glFlushMappedBufferRange
	.align 4
_glad_glFlushMappedBufferRange:
	.space 4
	.globl	_GLAD_GL_ARB_map_buffer_range
	.align 4
_GLAD_GL_ARB_map_buffer_range:
	.space 4
	.globl	_GLAD_GL_ARB_debug_output
	.align 4
_GLAD_GL_ARB_debug_output:
	.space 4
	.globl	_GLAD_GL_ARB_clip_control
	.align 4
_GLAD_GL_ARB_clip_control:
	.space 4
	.globl	_GLAD_GL_ARB_buffer_storage
	.align 4
_GLAD_GL_ARB_buffer_storage:
	.space 4
	.globl	_GLAD_GL_VERSION_2_1
	.align 4
_GLAD_GL_VERSION_2_1:
	.space 4
	.globl	_GLAD_GL_VERSION_1_2
	.align 4
_GLAD_GL_VERSION_1_2:
	.space 4
.lcomm _glad_glGetTexLevelParameteriv,4,4
	.globl	_GLAD_GL_VERSION_1_0
	.align 4
_GLAD_GL_VERSION_1_0:
	.space 4
	.globl	_GLAD_GL_KHR_robustness
	.align 4
_GLAD_GL_KHR_robustness:
	.space 4
	.globl	_GLAD_GL_KHR_debug
	.align 4
_GLAD_GL_KHR_debug:
	.space 4
	.globl	_libgl.lto_priv.0
	.align 4
_libgl.lto_priv.0:
	.space 4
.lcomm _wgl_get_proc_address,4,4
	.section .rdata,"dr"
LC530:
	.ascii "glActiveTexture\0"
LC531:
	.ascii "glAttachShader\0"
LC532:
	.ascii "glBindBuffer\0"
LC533:
	.ascii "glBindTexture\0"
LC534:
	.ascii "glBlendEquation\0"
LC535:
	.ascii "glBlendEquationSeparate\0"
LC536:
	.ascii "glBlendFuncSeparate\0"
LC537:
	.ascii "glBufferData\0"
LC538:
	.ascii "glBufferSubData\0"
LC539:
	.ascii "glCompileShader\0"
LC540:
	.ascii "glCreateProgram\0"
LC541:
	.ascii "glCreateShader\0"
LC542:
	.ascii "glDeleteBuffers\0"
LC543:
	.ascii "glDeleteProgram\0"
LC544:
	.ascii "glDeleteShader\0"
LC545:
	.ascii "glDeleteTextures\0"
LC546:
	.ascii "glDetachShader\0"
LC547:
	.ascii "glDisableVertexAttribArray\0"
LC548:
	.ascii "glDrawElements\0"
LC549:
	.ascii "glDrawElementsBaseVertex\0"
LC550:
	.ascii "glEnableVertexAttribArray\0"
LC551:
	.ascii "glGenBuffers\0"
LC552:
	.ascii "glGenTextures\0"
LC553:
	.ascii "glGetAttribLocation\0"
LC554:
	.ascii "glGetProgramInfoLog\0"
LC555:
	.ascii "glGetProgramiv\0"
LC556:
	.ascii "glGetShaderInfoLog\0"
LC557:
	.ascii "glGetShaderiv\0"
LC558:
	.ascii "glGetStringi\0"
LC559:
	.ascii "glGetUniformLocation\0"
LC560:
	.ascii "glGetVertexAttribPointerv\0"
LC561:
	.ascii "glGetVertexAttribiv\0"
LC562:
	.ascii "glIsProgram\0"
LC563:
	.ascii "glLinkProgram\0"
LC564:
	.ascii "glShaderSource\0"
LC565:
	.ascii "glUniform1i\0"
LC566:
	.ascii "glUniformMatrix4fv\0"
LC567:
	.ascii "glUseProgram\0"
LC568:
	.ascii "glVertexAttribPointer\0"
	.align 32
_proc_names:
	.long	LC530
	.long	LC531
	.long	LC532
	.long	LC350
	.long	LC533
	.long	LC371
	.long	LC534
	.long	LC535
	.long	LC536
	.long	LC537
	.long	LC538
	.long	LC38
	.long	LC39
	.long	LC539
	.long	LC540
	.long	LC541
	.long	LC542
	.long	LC543
	.long	LC544
	.long	LC545
	.long	LC372
	.long	LC546
	.long	LC45
	.long	LC547
	.long	LC548
	.long	LC549
	.long	LC46
	.long	LC550
	.long	LC48
	.long	LC551
	.long	LC552
	.long	LC373
	.long	LC553
	.long	LC60
	.long	LC62
	.long	LC554
	.long	LC555
	.long	LC556
	.long	LC557
	.long	LC23
	.long	LC558
	.long	LC559
	.long	LC560
	.long	LC561
	.long	LC68
	.long	LC562
	.long	LC563
	.long	LC55
	.long	LC29
	.long	LC57
	.long	LC30
	.long	LC564
	.long	LC36
	.long	LC33
	.long	LC565
	.long	LC566
	.long	LC567
	.long	LC568
	.long	LC70
.lcomm _version,8,4
	.globl	__ZL9stb__dout.lto_priv.0
	.bss
	.align 4
__ZL9stb__dout.lto_priv.0:
	.space 4
	.globl	__ZL18stb__barrier_out_b.lto_priv.0
	.align 4
__ZL18stb__barrier_out_b.lto_priv.0:
	.space 4
	.globl	__ZL18stb__barrier_out_e.lto_priv.0
	.align 4
__ZL18stb__barrier_out_e.lto_priv.0:
	.space 4
	.globl	__ZL17stb__barrier_in_b.lto_priv.0
	.align 4
__ZL17stb__barrier_in_b.lto_priv.0:
	.space 4
	.section .rdata,"dr"
	.align 4
__ZZN11ImFontAtlas21GetGlyphRangesDefaultEvE6ranges:
	.word	32
	.word	255
	.word	0
	.align 32
__ZL39proggy_clean_ttf_compressed_data_base85:
	.ascii "7])#######hV0qs'/###[),##/l:$#Q6>##5[n42>c-TH`->>#/e>11NNV=Bv(*:.F?uu#(gRU.o0XGH`$vhLG1hxt9?W`#,5LsCp#-i>.r$<$6pD>Lb';9Crc6tgXmKVeU2cD4Eo3R/2*>]b(MC;$jPfY.;h^`IWM9<Lh2TlS+f-s$o6Q<BWH`YiU.xfLq$N;$0iR/GX:U(jcW2p/W*q?-qmnUCI;jHSAiFWM.R*kU@C=GH?a9wp8f$e.-4^Qg1)Q-GL(lf(r/7GrRgwV%MS=C#`8ND>Qo#t'X#(v#Y9w0#1D$CIf;W'#pWUPXOuxXuU(H9M(1<q-UE31#^-V'8IRUo7Qf./L>=Ke$$'5F%)]0^#0X@U.a<r:QLtFsLcL6##lOj)#.Y5<-R&KgLwqJfLgN&;Q?gI^#DY2uLi@^rMl9t=cWq6##weg>$FBjVQTSDgEKnIS7EM9>ZY9w0#L;>>#Mx&4Mvt//L[MkA#W@lK.N'[0#7RL_&#w+F%HtG9M#XL`N&.,GM4Pg;-<nLENhvx>-VsM.M0rJfLH2eTM`*oJMHRC`NkfimM2J,W-jXS:)r0wK#@Fge$U>`w'N7G#$#fB#$E^$#:9:hk+eOe--6x)F7*E%?76%^GMHePW-Z5l'&GiF#$956:rS?dA#fiK:)Yr+`&#0j@'DbG&#^$PG.Ll+DNa<XCMKEV*N)LN/N*b=%Q6pia-Xg8I$<MR&,VdJe$<(7G;Ckl'&hF;;$<_=X(b.RS%%)###MPBuuE1V:v&cX&#2m#(&cV]`k9OhLMbn%s$G2,B$BfD3X*sp5#l,$R#]x_X1xKX%b5U*[r5iMfUo9U`N99hG)tm+/Us9pG)XPu`<0s-)WTt(gCRxIg(%6sfh=ktMKn3j)<6<b5Sk_/0(^]AaN#(p/L>&VZ>1i%h1S9u5o@YaaW$e+b<TWFn/Z:Oh(Cx2$lNEoN^e)#CFY@@I;BOQ*sRwZtZxRcU7uW6CXow0i(?$Q[cjOd[P4d)]>ROPOpxTO7Stwi1::iB1q)C_=dV26J;2,]7op$]uQr@_V7$q^%lQwtuHY]=DX,n3L#0PHDO4f9>dC@O>HBuKPpP*E,N+b3L#lpR/MrTEH.IAQk.a>D[.e;mc.x]Ip.PH^'/aqUO/$1WxLoW0[iLA<QT;5HKD+@qQ'NQ(3_PLhE48R.qAPSwQ0/WK?Z,[x?-J;jQTWA0X@KJ(_Y8N-:/M74:/-ZpKrUss?d#dZq]DAbkU*JqkL+nwX@@47`5>w=4h(9.`GCRUxHPeR`5Mjol(dUWxZa(>STrPkrJiWx`5U7F#.g*jrohGg`cg:lSTvEY/EV_7H4Q9[Z%cnv;JQYZ5q.l7Zeas:HOIZOB?G<Nald$qs]@]L<J7bR*>gv:[7MI2k).'2($5FNP&EQ(,)U]W]+fh18.vsai00);D3@4ku5P?DP8aJt+;qUM]=+b'8@;mViBKx0DE[-auGl8:PJ&Dj+M6OC]O^((##]`0i)drT;-7X`=-H3[igUnPG-NZlo.#k@h#=Ork$m>a>$-?Tm$UV(?#P6YY#'/###xe7q.73rI3*pP/$1>s9)W,JrM7SN]'/4C#v$U`0#V.[0>xQsH$fEmPMgY2u7Kh(G%siIfLSoS+MK2eTM$=5,M8p`A.;_R%#u[K#$x4AG8.kK/HSB==-'Ie/QTtG?-.*^N-4B/ZM_3YlQC7(p7q)&](`6_c)$/*JL(L-^(]$wIM`dPtOdGA,U3:w2M-0<q-]L_?^)1vw'.,MRsqVr.L;aN&#/EgJ)PBc[-f>+WomX2u7lqM2iEumMTcsF?-aT=Z-97UEnXglEn1K-bnEO`guFt(c%=;Am_Qs@jLooI&NX;]0#j4#F14;gl8-GQpgwhrq8'=l_f-b49'UOqkLu7-##oDY2L(te+Mch&gLYtJ,MEtJfLh'x'M=$CS-ZZ%P]8bZ>#S?YY#%Q&q'3^Fw&?D)UDNrocM3A76//oL?#h7gl85[qW/NDOk%16ij;+:1a'iNIdb-ou8."
	.ascii "P*w,v5#EI$TWS>Pot-R*H'-SEpA:g)f+O$%%`kA#G=8RMmG1&O`>to8bC]T&$,n.LoO>29sp3dt-52U%VM#q7'DHpg+#Z9%H[K<L%a2E-grWVM3@2=-k22tL]4$##6We'8UJCKE[d_=%wI;'6X-GsLX4j^SgJ$##R*w,vP3wK#iiW&#*h^D&R?jp7+/u&#(AP##XU8c$fSYW-J95_-Dp[g9wcO&#M-h1OcJlc-*vpw0xUX&#OQFKNX@QI'IoPp7nb,QU//MQ&ZDkKP)X<WSVL(68uVl&#c'[0#(s1X&xm$Y%B7*K:eDA323j998GXbA#pwMs-jgD$9QISB-A_(aN4xoFM^@C58D0+Q+q3n0#3U1InDjF682-SjMXJK)(h$hxua_K]ul92%'BOU&#BRRh-slg8KDlr:%L71Ka:.A;%YULjDPmL<LYs8i#XwJOYaKPKc1h:'9Ke,g)b),78=I39B;xiY$bgGw-&.Zi9InXDuYa%G*f2Bq7mn9^#p1vv%#(Wi-;/Z5ho;#2:;%d&#x9v68C5g?ntX0X)pT`;%pB3q7mgGN)3%(P8nTd5L7GeA-GL@+%J3u2:(Yf>et`e;)f#Km8&+DC$I46>#Kr]]u-[=99tts1.qb#q72g1WJO81q+eN'03'eM>&1XxY-caEnOj%2n8)),?ILR5^.Ibn<-X-Mq7[a82Lq:F&#ce+S9wsCK*x`569E8ew'He]h:sI[2LM$[guka3ZRd6:t%IG:;$%YiJ:Nq=?eAw;/:nnDq0(CYcMpG)qLN4$##&J<j$UpK<Q4a1]MupW^-sj_$%[HK%'F####QRZJ::Y3EGl4'@%FkiAOg#p[##O`gukTfBHagL<LHw%q&OV0##F=6/:chIm0@eCP8X]:kFI%hl8hgO@RcBhS-@Qb$%+m=hPDLg*%K8ln(wcf3/'DW-$.lR?n[nCH-eXOONTJlh:.RYF%3'p6sq:UIMA945&^HFS87@$EP2iG<-lCO$%c`uKGD3rC$x0BL8aFn--`ke%#HMP'vh1/R&O_J9'um,.<tx[@%wsJk&bUT2`0uMv7gg#qp/ij.L56'hl;.s5CUrxjOM7-##.l+Au'A&O:-T72L]P`&=;ctp'XScX*rU.>-XTt,%OVU4)S1+R-#dg0/Nn?Ku1^0f$B*P:Rowwm-`0PKjYDDM'3]d39VZHEl4,.j']Pk-M.h^&:0FACm$maq-&sgw0t7/6(^xtk%LuH88Fj-ekm>GA#_>568x6(OFRl-IZp`&b,_P'$M<Jnq79VsJW/mWS*PUiq76;]/NM_>hLbxfc$mj`,O;&%W2m`Zh:/)Uetw:aJ%]K9h:TcF]u_-Sj9,VK3M.*'&0D[Ca]J9gp8,kAW]%(?A%R$f<->Zts'^kn=-^@c4%-pY6qI%J%1IGxfLU9CP8cbPlXv);C=b),<2mOvP8up,UVf3839acAWAW-W?#ao/^#%KYo8fRULNd2.>%m]UK:n%r$'sw]J;5pAoO_#2mO3n,'=H5(etHg*`+RLgv>=4U8guD$I%D:W>-r5V*%j*W:Kvej.Lp$<M-SGZ':+Q_k+uvOSLiEo(<aD/K<CCc`'Lx>'?;++O'>()jLR-^u68PHm8ZFWe+ej8h:9r6L*0//c&iH&R8pRbA#Kjm%upV1g:a_#Ur7FuA#(tRh#.Y5K+@?3<-8m0$PEn;J:rh6?I6uG<-`wMU'ircp0LaE_OtlMb&1#6T.#FDKu#1Lw%u%+GM+X'e?YLfjM[VO0MbuFp7;>Q&#WIo)0@F%q7c#4XAXN-U&VB<HFF*qL($/V,;(kXZejWO`<[5??ewY(*9=%wDc;,u<'9t3W-(H1th3+G]ucQ]kLs7df($/*JL]@*t7Bu_G3_7mp7<iaQjO@.kLg;x3B0lqp7Hf,^Ze7-##@/c58Mo(3;knp0%)A7?-W+eI'o8)b<nKnw'Ho8C=Y>pqB>0ie&jhZ[?iLR@@_AvA-iQC(=ksRZRVp7`.=+NpBC%rh&3]R:8XDmE5^V8O(x<<aG"
	.ascii "/1N$#FX$0V5Y6x'aErI3I$7x%E`v<-BY,)%-?Psf*l?%C3.mM(=/M0:JxG'?7WhH%o'a<-80g0NBxoO(GH<dM]n.+%q@jH?f.UsJ2Ggs&4<-e47&Kl+f//9@`b+?.TeN_&B8Ss?v;^Trk;f#YvJkl&w$]>-+k?'(<S:68tq*WoDfZu';mM?8X[ma8W%*`-=;D.(nc7/;)g:T1=^J$&BRV(-lTmNB6xqB[@0*o.erM*<SWF]u2=st-*(6v>^](H.aREZSi,#1:[IXaZFOm<-ui#qUq2$##Ri;u75OK#(RtaW-K-F`S+cF]uN`-KMQ%rP/Xri.LRcB##=YL3BgM/3MD?@f&1'BW-)Ju<L25gl8uhVm1hL$##*8###'A3/LkKW+(^rWX?5W_8g)a(m&K8P>#bmmWCMkk&#TR`C,5d>g)F;t,4:@_l8G/5h4vUd%&%950:VXD'QdWoY-F$BtUwmfe$YqL'8(PWX(P?^@Po3$##`MSs?DWBZ/S>+4%>fX,VWv/w'KD`LP5IbH;rTV>n3cEK8U#bX]l-/V+^lj3;vlMb&[5YQ8#pekX9JP3XUC72L,,?+Ni&co7ApnO*5NK,((W-i:$,kp'UDAO(G0Sq7MVjJsbIu)'Z,*[>br5fX^:FPAWr-m2KgL<LUN098kTF&#lvo58=/vjDo;.;)Ka*hLR#/k=rKbxuV`>Q_nN6'8uTG&#1T5g)uLv:873UpTLgH+#FgpH'_o1780Ph8KmxQJ8#H72L4@768@Tm&Qh4CB/5OvmA&,Q&QbUoi$a_%3M01H)4x7I^&KQVgtFnV+;[Pc>[m4k//,]1?#`VY[Jr*3&&slRfLiVZJ:]?=K3Sw=[$=uRB?3xk48@aeg<Z'<$#4H)6,>e0jT6'N#(q%.O=?2S]u*(m<-V8J'(1)G][68hW$5'q[GC&5j`TE?m'esFGNRM)j,ffZ?-qx8;->g4t*:CIP/[Qap7/9'#(1sao7w-.qNUdkJ)tCF&#B^;xGvn2r9FEPFFFcL@.iFNkTve$m%#QvQS8U@)2Z+3K:AKM5isZ88+dKQ)W6>J%CL<KE>`.d*(B`-n8D9oK<Up]c$X$(,)M8Zt7/[rdkqTgl-0cuGMv'?>-XV1q['-5k'cAZ69e;D_?$ZPP&s^+7])$*$#@QYi9,5P&#9r+$%CE=68>K8r0=dSC%%(@p7.m7jilQ02'0-VWAg<a/''3u.=4L$Y)6k/K:_[3=&jvL<L0C/2'v:^;-DIBW,B4E68:kZ;%?8(Q8BH=kO65BW?xSG&#@uU,DS*,?.+(o(#1vCS8#CHF>TlGW'b)Tq7VT9q^*^$$.:&N@@$&)WHtPm*5_rO0&e%K&#-30j(E4#'Zb.o/(Tpm$>K'f@[PvFl,hfINTNU6u'0pao7%XUp9]5.>%h`8_=VYbxuel.NTSsJfLacFu3B'lQSu/m6-Oqem8T+oE--$0a/k]uj9EwsG>%veR*hv^BFpQj:K'#SJ,sB-'#](j.Lg92rTw-*n%@/;39rrJF,l#qV%OrtBeC6/,;qB3ebNW[?,Hqj2L.1NP&GjUR=1D8QaS3Up&@*9wP?+lo7b?@%'k4`p0Z$22%K3+iCZj?XJN4Nm&+YF]u@-W$U%VEQ/,,>>#)D<h#`)h0:<Q6909ua+&VU%n2:cG3FJ-%@Bj-DgLr`Hw&HAKjKjseK</xKT*)B,N9X3]krc12t'pgTV(Lv-tL[xg_%=M_q7a^x?7Ubd>#%8cY#YZ?=,`Wdxu/ae&#w6)R89tI#6@s'(6Bf7a&?S=^ZI_kS&ai`&=tE72L_D,;^R)7[$s<Eh#c&)q.MXI%#v9ROa5FZO%sF7q7Nwb&#ptUJ:aqJe$Sl68%.D###EC><?-aF&#RNQv>o8lKN%5/$(vdfq7+ebA#u1p]ovUKW&Y%q]'>$1@-[xfn$7ZTp7mM,G,Ko7a&Gu%G[RMxJs[0MM%wci.LFDK)(<c`Q8N)jEIF*+?P2a8g%)$q]o2aH8C&<SibC/q,(e:v;-b#6[$NtDZ8"
	.ascii "4Je2KNvB#$P5?tQ3nt(0d=j.LQf./Ll33+(;q3L-w=8dX$#WF&uIJ@-bfI>%:_i2B5CsR8&9Z&#=mPEnm0f`<&c)QL5uJ#%u%lJj+D-r;BoF&#4DoS97h5g)E#o:&S4weDF,9^Hoe`h*L+_a*NrLW-1pG_&2UdB86e%B/:=>)N4xeW.*wft-;$'58-ESqr<b?UI(_%@[P46>#U`'6AQ]m&6/`Z>#S?YY#Vc;r7U2&326d=w&H####?TZ`*4?&.MK?LP8Vxg>$[QXc%QJv92.(Db*B)gb*BM9dM*hJMAo*c&#b0v=Pjer]$gG&JXDf->'StvU7505l9$AFvgYRI^&<^b68?j#q9QX4SM'RO#&sL1IM.rJfLUAj221]d##DW=m83u5;'bYx,*Sl0hL(W;;$doB&O/TQ:(Z^xBdLjL<Lni;''X.`$#8+1GD:k$YUWsbn8ogh6rxZ2Z9]%nd+>V#*8U_72Lh+2Q8Cj0i:6hp&$C/:p(HK>T8Y[gHQ4`4)'$Ab(Nof%V'8hL&#<NEdtg(n'=S1A(Q1/I&4([%dM`,Iu'1:_hL>SfD07&6D<fp8dHM7/g+tlPN9J*rKaPct&?'uBCem^jn%9_K)<,C5K3s=5g&GmJb*[SYq7K;TRLGCsM-$$;S%:Y@r7AK0pprpL<Lrh,q7e/%KWK:50I^+m'vi`3?%Zp+<-d+$L-Sv:@.o19n$s0&39;kn;S%BSq*$3WoJSCLweV[aZ'MQIjO<7;X-X;&+dMLvu#^UsGEC9WEc[X(wI7#2.(F0jV*eZf<-Qv3J-c+J5AlrB#$p(H68LvEA'q3n0#m,[`*8Ft)FcYgEud]CWfm68,(aLA$@EFTgLXoBq/UPlp7:d[/;r_ix=:TF`S5H-b<LI&HY(K=h#)]Lk$K14lVfm:x$H<3^Ql<M`$OhapBnkup'D#L$Pb_`N*g]2e;X/Dtg,bsj&K#2[-:iYr'_wgH)NUIR8a1n#S?Yej'h8^58UbZd+^FKD*T@;6A7aQC[K8d-(v6GI$x:T<&'Gp5Uf>@M.*J:;$-rv29'M]8qMv-tLp,'886iaC=Hb*YJoKJ,(j%K=H`K.v9HggqBIiZu'QvBT.#=)0ukruV&.)3=(^1`o*Pj4<-<aN((^7('#Z0wK#5GX@7u][`*S^43933A4rl][`*O4CgLEl]v$1Q3AeF37dbXk,.)vj#x'd`;qgbQR%FW,2(?LO=s%Sc68%NP'##Aotl8x=BE#j1UD([3$M(]UI2LX3RpKN@;/#f'f/&_mt&F)XdF<9t4)Qa.*kTLwQ'(TTB9.xH'>#MJ+gLq9-##@HuZPN0]u:h7.T..G:;$/Usj(T7`Q8tT72LnYl<-qx8;-HV7Q-&Xdx%1a,hC=0u+HlsV>nuIQL-5<N?)NBS)QN*_I,?&)2'IM%L3I)X((e/dl2&8'<M:^#M*Q+[T.Xri.LYS3v%fF`68h;b-X[/En'CR.q7E)p'/kle2HM,u;^%OKC-N+Ll%F9CF<Nf'^#t2L,;27W:0O@6##U6W7:$rJfLWHj$#)woqBefIZ.PK<b*t7ed;p*_m;4ExK#h@&]>_>@kXQtMacfD.m-VAb8;IReM3$wf0''hra*so568'Ip&vRs849'MRYSp%:t:h5qSgwpEr$B>Q,;s(C#$)`svQuF$##-D,##,g68@2[T;.XSdN9Qe)rpt._K-#5wF)sP'##p#C0c%-Gb%hd+<-j'Ai*x&&HMkT]C'OSl##5RG[JXaHN;d'uA#x._U;.`PU@(Z3dt4r152@:v,'R.Sj'w#0<-;kPI)FfJ&#AYJ&#//)>-k=m=*XnK$>=)72L]0I%>.G690a:$##<,);?;72#?x9+d;^V'9;jY@;)br#q^YQpx:X#Te$Z^'=-=bGhLf:D6&bNwZ9-ZD#n^9HhLMr5G;']d&6'wYmTFmL<LD)F^%[tC'8;+9E#C$g%#5Y>q9wI>P(9mI[>kC-ekLC/R&CH+s'B;K-M6$EB%is00:+A4[7xks.LrNk0&E)wIL"
	.ascii "YF@2L'0Nb$+pv<(2.768/FrY&h$^3i&@+G%JT'<-,v`3;_)I9M^AE]CN?Cl2AZg+%4iTpT3<n-&%H%b<FDj2M<hH=&Eh<2Len$b*aTX=-8QxN)k11IM1c^j%9s<L<NFSo)B?+<-(GxsF,^-Eh@$4dXhN$+#rxK8'je'D7k`e;)2pYwPA'_p9&@^18ml1^[@g4t*[JOa*[=Qp7(qJ_oOL^('7fB&Hq-:sf,sNj8xq^>$U4O]GKx'm9)b@p7YsvK3w^YR-CdQ*:Ir<($u&)#(&?L9Rg3H)4fiEp^iI9O8KnTj,]H?D*r7'M;PwZ9K0E^k&-cpI;.p/6_vwoFMV<->#%Xi.LxVnrU(4&8/P+:hLSKj$#U%]49t'I:rgMi'FL@a:0Y-uA[39',(vbma*hU%<-SRF`Tt:542R_VV$p@[p8DV[A,?1839FWdF<TddF<9Ah-6&9tWoDlh]&1SpGMq>Ti1O*H&#(AL8[_P%.M>v^-))qOT*F5Cq0`Ye%+$B6i:7@0IX<N+T+0MlMBPQ*Vj>SsD<U4JHY8kD2)2fU/M#$e.)T4,_=8hLim[&);?UkK'-x?'(:siIfL<$pFM`i<?%W(mGDHM%>iWP,##P`%/L<eXi:@Z9C.7o=@(pXdAO/NLQ8lPl+HPOQa8wD8=^GlPa8TKI1CjhsCTSLJM'/Wl>-S(qw%sf/@%#B6;/U7K]uZbi^Oc^2n<bhPmUkMw>%t<)'mEVE''n`WnJra$^TKvX5B>;_aSEK',(hwa0:i4G?.Bci.(X[?b*($,=-n<.Q%`(X=?+@Am*Js0&=3bh8K]mL<LoNs'6,'85`0?t/'_U59@]ddF<#LdF<eWdF<OuN/45rY<-L@&#+fm>69=Lb,OcZV/);TTm8VI;?%OtJ<(b4mq7M6:u?KRdF<gR@2L=FNU-<b[(9c/ML3m;Z[$oF3g)GAWqpARc=<ROu7cL5l;-[A]%/+fsd;l#SafT/f*W]0=O'$(Tb<[)*@e775R-:Yob%g*>l*:xP?Yb.5)%w_I?7uk5JC+FS(m#i'k.'a0i)9<7b'fs'59hq$*5Uhv##pi^8+hIEBF`nvo`;'l0.^S1<-wUK2/Coh58KKhLjM=SO*rfO`+qC`W-On.=AJ56>>i2@2LH6A:&5q`?9I3@@'04&p2/LVa*T-4<-i3;M9UvZd+N7>b*eIwg:CC)c<>nO&#<IGe;__.thjZl<%w(Wk2xmp4Q@I#I9,DF]u7-P=.-_:YJ]aS@V?6*C()dOp7:WL,b&3Rg/.cmM9&r^>$(>.Z-I&J(Q0Hd5Q%7Co-b`-c<N(6r@ip+AurK<m86QIth*#v;-OBqi+L7wDE-Ir8K['m+DDSLwK&/.?-V%U_%3:qKNu$_b*B-kp7NaD'QdWQPKYq[@>P)hI;*_F]u`Rb[.j8_Q/<&>uu+VsH$sM9TA%?)(vmJ80),P7E>)tjD%2L=-t#fK[%`v=Q8<FfNkgg^oIbah*#8/Qt$F&:K*-(N/'+1vMB,u()-a.VUU*#[e%gAAO(S>WlA2);Sa>gXm8YB`1d@K#n]76-a$U,mF<fX]idqd)<3,]J7JmW4`6]uks=4-72L(jEk+:bJ0M^q-8Dm_Z?0olP1C9Sa&H[d&c$ooQUj]Exd*3ZM@-WGW2%s',B-_M%>%Ul:#/'xoFM9QX-$.QN'>[%$Z$uF6pA6Ki2O5:8w*vP1<-1`[G,)-m#>0`P&#eb#.3i)rtB61(o'$?X3B</R90;eZ]%Ncq;-Tl]#F>2Qft^ae_5tKL9MUe9b*sLEQ95C&`=G?@Mj=wh*'3E>=-<)Gt*Iw)'QG:`@IwOf7&]1i'S01B+Ev/Nac#9S;=;YQpg_6U`*kVY39xK,[/6Aj7:'1Bm-_1EYfa1+o&o4hp7KN_Q(OlIo@S%;jVdn0'1<Vc52=u`3^o-n1'g4v58Hj&6_t7$##?M)c<$bgQ_'SY((-xkA#Y(,p'H9rIVY-b,'%bCPF7.J<Up^,(dU1VY*5#WkTU>h19w,WQhLI)3S#f$2("
	.ascii "eb,jr*b;3Vw]*7NH%$c4Vs,eD9>XW8?N]o+(*pgC%/72LV-u<Hp,3@e^9UB1J+ak9-TN/mhKPg+AJYd$MlvAF_jCK*.O-^(63adMT->W%iewS8W6m2rtCpo'RS1R84=@paTKt)>=%&1[)*vp'u+x,VrwN;&]kuO9JDbg=pO$J*.jVe;u'm0dr9l,<*wMK*Oe=g8lV_KEBFkO'oU]^=[-792#ok,)i]lR8qQ2oA8wcRCZ^7w/Njh;?.stX?Q1>S1q4Bn$)K1<-rGdO'$Wr.Lc.CG)$/*JL4tNR/,SVO3,aUw'DJN:)Ss;wGn9A32ijw%FL+Z0Fn.U9;reSq)bmI32U==5ALuG&#Vf1398/pVo1*c-(aY168o<`JsSbk-,1N;$>0:OUas(3:8Z972LSfF8eb=c-;>SPw7.6hn3m`9^Xkn(r.qS[0;T%&Qc=+STRxX'q1BNk3&*eu2;&8q$&x>Q#Q7^Tf+6<(d%ZVmj2bDi%.3L2n+4W'$PiDDG)g,r%+?,$@?uou5tSe2aN_AQU*<h`e-GI7)?OK2A.d7_c)?wQ5AS@DL3r#7fSkgl6-++D:'A,uq7SvlB$pcpH'q3n0#_%dY#xCpr-l<F0NR@-##FEV6NTF6##$l84N1w?AO>'IAOURQ##V^Fv-XFbGM7Fl(N<3DhLGF%q.1rC$#:T__&Pi68%0xi_&[qFJ(77j_&JWoF.V735&T,[R*:xFR*K5>>#`bW-?4Ne_&6Ne_&6Ne_&n`kr-#GJcM6X;uM6X;uM(.a..^2TkL%oR(#;u.T%fAr%4tJ8&><1=GHZ_+m9/#H1F^R#SC#*N=BA9(D?v[UiFY>>^8p,KKF.W]L29uLkLlu/+4T<XoIB&hx=T1PcDaB&;HH+-AFr?(m9HZV)FKS8JCw;SD=6[^/DZUL`EUDf]GGlG&>w$)F./^n3+rlo+DB;5sIYGNk+i1t-69Jg--0pao7Sm#K)pdHW&;LuDNH@H>#/X-TI(;P>#,Gc>#0Su>#4`1?#8lC?#<xU?#@.i?#D:%@#HF7@#LRI@#P_[@#Tkn@#Xw*A#]-=A#a9OA#d<F&#*;G##.GY##2Sl##6`($#:l:$#>xL$#B.`$#F:r$#JF.%#NR@%#R_R%#Vke%#Zww%#_-4&#3^Rh%Sflr-k'MS.o?.5/sWel/wpEM0%3'/1)K^f1-d>G21&v(35>V`39V7A4=onx4A1OY5EI0;6Ibgr6M$HS7Q<)58C5w,;WoA*#[%T*#`1g*#d=#+#hI5+#lUG+#pbY+#tnl+#x$),#&1;,#*=M,#.I`,#2Ur,#6b.-#;w[H#iQtA#m^0B#qjBB#uvTB##-hB#'9$C#+E6C#/QHC#3^ZC#7jmC#;v)D#?,<D#C8ND#GDaD#KPsD#O]/E#g1A5#KA*1#gC17#MGd;#8(02#L-d3#rWM4#Hga1#,<w0#T.j<#O#'2#CYN1#qa^:#_4m3#o@/=#eG8=#t8J5#`+78#4uI-#m3B2#SB[8#Q0@8#i[*9#iOn8#1Nm;#^sN9#qh<9#:=x-#P;K2#$%X9#bC+.#Rg;<#mN=.#MTF.#RZO.#2?)4#Y#(/#[)1/#b;L/#dAU/#0Sv;#lY$0#n`-0#sf60#(F24#wrH0#%/e0#TmD<#%JSMFove:CTBEXI:<eh2g)B,3h2^G3i;#d3jD>)4kMYD4lVu`4m`:&5niUA5@(A5BA1]PBB:xlBCC=2CDLXMCEUtiCf&0g2'tN?PGT4CPGT4CPGT4CPGT4CPGT4CPGT4CPGT4CPGT4CPGT4CPGT4CPGT4CPGT4CPGT4CP-qekC`.9kEg^+F$kwViFJTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5o,^<-28ZI'O?;xpO?;xpO?;xpO?;xpO?;xpO?;xpO?;xpO?;xpO?;xpO?;xpO?;xpO?;xpO?;xpO?;xp;7q-#lLYI:xvD=#\0"
	.align 4
LC0:
	.long	1067450368
	.align 4
LC1:
	.long	1051372204
	.align 4
LC2:
	.long	1068149419
	.align 4
LC3:
	.long	1061158912
	.align 4
LC4:
	.long	1069547520
	.align 4
LC5:
	.long	1199570688
	.set	LC6,LC426
	.set	LC7,LC434
	.align 4
LC8:
	.long	1132396544
	.align 4
LC9:
	.long	1123942400
	.set	LC10,LC427
	.align 4
LC11:
	.long	1132462080
	.align 16
LC416:
	.long	-1082130432
	.long	-1082130432
	.long	1015580809
	.long	1084227584
	.align 16
LC423:
	.long	1086324736
	.long	1049414861
	.long	1028443341
	.long	1050253722
	.set	LC425,LC416
	.align 16
LC426:
	.long	1065353216
	.long	1058642330
	.long	1090519040
	.long	1090519040
	.align 16
LC427:
	.long	0
	.long	1065353216
	.long	1107296256
	.long	1107296256
	.align 16
LC428:
	.long	0
	.long	1065353216
	.long	0
	.long	1065353216
	.align 16
LC429:
	.long	1082130432
	.long	1077936128
	.long	0
	.long	0
	.align 16
LC430:
	.long	1090519040
	.long	1082130432
	.long	1082130432
	.long	1082130432
	.align 16
LC431:
	.long	1082130432
	.long	1073741824
	.long	0
	.long	0
	.align 16
LC432:
	.long	1101529088
	.long	1086324736
	.long	1096810496
	.long	1091567616
	.align 16
LC433:
	.long	1094713344
	.long	0
	.long	1082130432
	.long	1082130432
	.align 16
LC434:
	.long	1056964608
	.long	1056964608
	.long	0
	.long	0
	.align 16
LC435:
	.long	1077936128
	.long	0
	.long	1056964608
	.long	1101004800
	.align 16
LC436:
	.long	1077936128
	.long	1100480512
	.long	1100480512
	.long	1077936128
	.align 4
LC438:
	.long	1078530011
	.align 4
LC439:
	.long	1111490560
	.set	LC440,LC444+8
	.align 16
LC444:
	.long	0
	.long	-1
	.long	-1
	.long	-1
	.align 16
LC445:
	.long	0
	.long	0
	.long	0
	.long	-1
	.align 16
LC448:
	.long	0
	.long	1008981770
	.long	0
	.long	0
	.align 16
LC449:
	.long	0
	.long	2
	.long	2
	.long	1024
	.align 4
LC465:
	.long	1095761920
	.align 4
LC473:
	.long	LC412
	.align 4
LC474:
	.long	LC410
	.align 4
LC475:
	.long	LC414
	.align 4
LC476:
	.long	__ZL31ImGui_ImplSDL2_GetClipboardTextPv.lto_priv.0
	.align 4
LC477:
	.long	__ZL27ImGui_ImplSDL2_RenderWindowP13ImGuiViewportPv.lto_priv.0
	.align 4
LC478:
	.long	__ZL25ImGui_ImplSDL2_ShowWindowP13ImGuiViewport.lto_priv.0
	.align 4
LC479:
	.long	__ZL27ImGui_ImplSDL2_CreateWindowP13ImGuiViewport.lto_priv.0
	.align 4
LC480:
	.long	__ZL28ImGui_ImplSDL2_GetWindowSizeP13ImGuiViewport.lto_priv.0
	.align 4
LC481:
	.long	__ZL27ImGui_ImplSDL2_GetWindowPosP13ImGuiViewport.lto_priv.0
	.align 4
LC482:
	.long	__ZL29ImGui_ImplSDL2_SetWindowTitleP13ImGuiViewportPKc.lto_priv.0
	.align 4
LC483:
	.long	__ZL29ImGui_ImplSDL2_GetWindowFocusP13ImGuiViewport.lto_priv.0
	.align 16
LC487:
	.long	-1
	.long	0
	.long	9000
	.long	4500
	.align 16
LC488:
	.long	18000
	.long	-1
	.long	13500
	.long	-1
	.align 16
LC489:
	.long	27000
	.long	27500
	.long	-1
	.long	-1
	.align 16
LC490:
	.long	22500
	.long	-1
	.long	-1
	.long	-1
	.def	___udivdi3;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_pow;	.scl	2;	.type	32;	.endef
	.def	_SDL_SetWindowGammaRamp;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z13gloadtile_artiiiiiP8pthtyp_ti;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
	.def	__Z22setvideomode_sdlcommonPiS_iiS_.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z26setvideomode_sdlcommonpostiiiii;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetNumVideoDisplays;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetDesktopDisplayMode;	.scl	2;	.type	32;	.endef
	.def	_SDL_CreateWindow;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetWindowSurface;	.scl	2;	.type	32;	.endef
	.def	__Z24windowsHandleFocusChangei;	.scl	2;	.type	32;	.endef
	.def	_SDL_GL_SetAttribute;	.scl	2;	.type	32;	.endef
	.def	_SDL_GL_CreateContext;	.scl	2;	.type	32;	.endef
	.def	_SDL_GL_GetProcAddress;	.scl	2;	.type	32;	.endef
	.def	__ZL11find_coreGLv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL19load_GL_VERSION_1_1PFPvPKcE.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZL19load_GL_VERSION_1_3PFPvPKcE.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZL19load_GL_VERSION_1_4PFPvPKcE.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZL19load_GL_VERSION_1_5PFPvPKcE.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZL19load_GL_VERSION_2_0PFPvPKcE.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZL19load_GL_VERSION_3_0PFPvPKcE.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZL17find_extensionsGLv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL22load_GL_ARB_robustnessPFPvPKcE.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZL17load_GL_KHR_debugPFPvPKcE.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_SDL_GL_SetSwapInterval;	.scl	2;	.type	32;	.endef
	.def	__ZL18sdlayer_checkvsynci.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL13MallocWrapperjPv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui15StyleColorsDarkEP10ImGuiStyle;	.scl	2;	.type	32;	.endef
	.def	_sincosf;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui10InitializeEv;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetCurrentVideoDriver;	.scl	2;	.type	32;	.endef
	.def	_strncmp;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	__ZL24destroy_window_resourcesv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL31ImGui_ImplSDL2_SetClipboardTextPvPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL33ImGui_ImplSDL2_SetPlatformImeDataP13ImGuiViewportP20ImGuiPlatformImeData.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_SDL_CreateSystemCursor;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetWindowWMInfo;	.scl	2;	.type	32;	.endef
	.def	_SDL_SetHint;	.scl	2;	.type	32;	.endef
	.def	__ZL29ImGui_ImplSDL2_UpdateMonitorsv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_close_libgl.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_atexit;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	__Z14ImFormatStringPcjPKcz;	.scl	2;	.type	32;	.endef
	.def	__ZL20stb_decompress_tokenPKh.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL11FreeWrapperPvS_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetError;	.scl	2;	.type	32;	.endef
	.def	__ZL30ImGui_ImplOpenGL3_RenderWindowP13ImGuiViewportPv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_wm_setapptitle;	.scl	2;	.type	32;	.endef
	.def	__ZL26ImGui_ImplSDL2_SwapBuffersP13ImGuiViewportPv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL27ImGui_ImplSDL2_SetWindowPosP13ImGuiViewport6ImVec2.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL30ImGui_ImplSDL2_CreateVkSurfaceP13ImGuiViewportyPKvPy.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL28ImGui_ImplSDL2_DestroyWindowP13ImGuiViewport.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL29ImGui_ImplSDL2_SetWindowFocusP13ImGuiViewport.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL28ImGui_ImplSDL2_SetWindowSizeP13ImGuiViewport6ImVec2.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL29ImGui_ImplSDL2_SetWindowAlphaP13ImGuiViewportf.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL33ImGui_ImplSDL2_GetWindowMinimizedP13ImGuiViewport.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetWindowID;	.scl	2;	.type	32;	.endef
	.def	_initprintf;	.scl	2;	.type	32;	.endef
	.def	_calc_ylookup;	.scl	2;	.type	32;	.endef
	.def	__Z20glsurface_setPalettePv.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZL22_internal_getrowheighti.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_SDL_PollEvent;	.scl	2;	.type	32;	.endef
	.def	__Z27ImGui_ImplSDL2_ProcessEventPK9SDL_Event;	.scl	2;	.type	32;	.endef
	.def	__Z14OSD_HandleCharc;	.scl	2;	.type	32;	.endef
	.def	__Z16timerUpdateClockv;	.scl	2;	.type	32;	.endef
	.def	__Z17OSD_ResizeDisplayii;	.scl	2;	.type	32;	.endef
	.def	__ZL20videoAllocateBuffersv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_videoSetViewableArea;	.scl	2;	.type	32;	.endef
	.def	__Z13TerminateGamev;	.scl	2;	.type	32;	.endef
	.def	_SDL_IsTextInputActive;	.scl	2;	.type	32;	.endef
	.def	_SDL_free;	.scl	2;	.type	32;	.endef
	.def	_enet_gettime.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	_SDL_JoystickRumble;	.scl	2;	.type	32;	.endef
	.def	__Z10SetVisHighv;	.scl	2;	.type	32;	.endef
	.def	__Z16OSD_CaptureInputi;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui8EndFrameEv;	.scl	2;	.type	32;	.endef
	.def	_SDL_SetWindowGrab;	.scl	2;	.type	32;	.endef
	.def	_SDL_SetRelativeMouseMode;	.scl	2;	.type	32;	.endef
	.def	_SDL_HasClipboardText;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetClipboardText;	.scl	2;	.type	32;	.endef
	.def	_SDL_GameControllerRumble;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetWindowDisplayIndex;	.scl	2;	.type	32;	.endef
	.def	_videoGetModes.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_videoSetGameMode;	.scl	2;	.type	32;	.endef
	.def	__ZL15OSD_HistoryNextv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL15OSD_HistoryPrevv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_SDL_NumJoysticks;	.scl	2;	.type	32;	.endef
	.def	_Bstrtoken.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z12OSD_DispatchPKcb;	.scl	2;	.type	32;	.endef
	.def	_memmove;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	__Z18_mi_malloc_genericP9mi_heap_sjbj;	.scl	2;	.type	32;	.endef
	.def	__Z15mi_heap_try_newP9mi_heap_sjb;	.scl	2;	.type	32;	.endef
	.def	_mi_new_nothrow;	.scl	2;	.type	32;	.endef
	.def	_hicfindsubst;	.scl	2;	.type	32;	.endef
	.def	__Z12gloadtile_hiiiiP10hicreplc_tiP8pthtyp_tit;	.scl	2;	.type	32;	.endef
	.def	_hicfindskybox.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_hicclearsubst.part.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_fwrite;	.scl	2;	.type	32;	.endef
	.def	_fseek;	.scl	2;	.type	32;	.endef
	.def	_fread;	.scl	2;	.type	32;	.endef
	.def	_XXH3_mul128_fold64.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	_XXH3_hashLong_64b_withSeed.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_XXH3_len_129to240_64b.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_hash_find;	.scl	2;	.type	32;	.endef
	.def	_ftell;	.scl	2;	.type	32;	.endef
	.def	_snprintf;	.scl	2;	.type	32;	.endef
	.def	_hash_add;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z13dxt_handle_ioiPvPc;	.scl	2;	.type	32;	.endef
	.def	__Z15dedxt_handle_ioiPviPci;	.scl	2;	.type	32;	.endef
	.def	__Z19buildgl_bindTexturejj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_hash_init;	.scl	2;	.type	32;	.endef
	.def	_polymost_glreset;	.scl	2;	.type	32;	.endef
	.def	_unlink;	.scl	2;	.type	32;	.endef
	.def	__ZNSt3_V215system_categoryEv;	.scl	2;	.type	32;	.endef
	.def	__ZNSt3_V216generic_categoryEv;	.scl	2;	.type	32;	.endef
	.def	_LZ4_compress_fast.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_voxfree;	.scl	2;	.type	32;	.endef
	.def	_md_undefinetile.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z14kread_internaliPviPKhPKiPi;	.scl	2;	.type	32;	.endef
	.def	_kclose;	.scl	2;	.type	32;	.endef
	.def	_kopen4load.part.0;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_ktell;	.scl	2;	.type	32;	.endef
	.def	_kopen4loadfrommod.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z15klseek_internaliiiPKhPiS1_;	.scl	2;	.type	32;	.endef
	.def	_LZ4_decompress_safe;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru24current_verbosity_cutoffEv;	.scl	2;	.type	32;	.endef
	.def	_engineUnInit;	.scl	2;	.type	32;	.endef
	.def	__sm_allocator_destroy.part.0.lto_priv.4;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
	.def	__Z15gltexinvalidateiii;	.scl	2;	.type	32;	.endef
	.def	__ZN7cache1d13allocateBlockEPiiPc.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z19gltexinvalidatetypei;	.scl	2;	.type	32;	.endef
	.def	_polymer_texinvalidate;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	__ZL31ImGui_ImplSDL2_GetClipboardTextPv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL27ImGui_ImplSDL2_RenderWindowP13ImGuiViewportPv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL25ImGui_ImplSDL2_ShowWindowP13ImGuiViewport.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL27ImGui_ImplSDL2_CreateWindowP13ImGuiViewport.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL28ImGui_ImplSDL2_GetWindowSizeP13ImGuiViewport.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL27ImGui_ImplSDL2_GetWindowPosP13ImGuiViewport.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL29ImGui_ImplSDL2_SetWindowTitleP13ImGuiViewportPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL29ImGui_ImplSDL2_GetWindowFocusP13ImGuiViewport.lto_priv.0;	.scl	2;	.type	32;	.endef
