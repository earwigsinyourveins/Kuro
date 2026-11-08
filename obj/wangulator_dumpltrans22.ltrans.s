	.file	"<artificial>"
	.text
	.p2align 4
	.def	_videoSetGamma.part.0;	.scl	3;	.type	32;	.endef
_videoSetGamma.part.0:
LFB0:
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
	ja	L53
	movss	%xmm0, 16(%esp)
L2:
	movss	LC6, %xmm0
	movaps	%xmm0, %xmm7
	divss	16(%esp), %xmm7
	movss	%xmm7, 24(%esp)
	subss	%xmm0, %xmm7
	movss	%xmm7, 44(%esp)
	flds	44(%esp)
L4:
	movss	_g_videoContrast, %xmm0
	movss	LC4, %xmm2
	comiss	%xmm0, %xmm2
	jbe	L6
	movss	LC7, %xmm1
	movaps	%xmm1, %xmm2
	cmpltss	%xmm0, %xmm2
	andps	%xmm2, %xmm0
	andnps	%xmm1, %xmm2
	orps	%xmm0, %xmm2
L6:
	fstpl	8(%esp)
	flds	LC8
	movss	%xmm2, 44(%esp)
	fstpl	(%esp)
	call	_pow
	movss	16(%esp), %xmm7
	ucomiss	__ZL10lastvidgcb.lto_priv.0, %xmm7
	movss	44(%esp), %xmm2
	jp	L8
	jne	L8
	ucomiss	__ZL10lastvidgcb.lto_priv.0+4, %xmm2
	jp	L8
	movl	$0, %eax
	je	L54
L8:
	movss	LC6, %xmm0
	movss	16(%esp), %xmm7
	movaps	%xmm2, %xmm3
	ucomiss	%xmm0, %xmm7
	subss	%xmm0, %xmm3
	mulss	LC9, %xmm3
	jp	L12
	jne	L12
	fstp	%st(0)
	movss	LC11, %xmm4
	xorl	%eax, %eax
	leal	48(%esp), %ebx
	xorps	%xmm5, %xmm5
	movss	LC5, %xmm1
	jmp	L18
	.p2align 4,,10
	.p2align 3
L47:
	movaps	%xmm1, %xmm0
L14:
	cvttss2sil	%xmm0, %edx
L16:
	movw	%dx, 1024(%ebx,%eax,2)
	movw	%dx, 512(%ebx,%eax,2)
	movw	%dx, (%ebx,%eax,2)
	addl	$1, %eax
	cmpl	$256, %eax
	je	L19
L18:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm2, %xmm0
	subss	%xmm3, %xmm0
	maxss	%xmm5, %xmm0
	mulss	%xmm4, %xmm0
	comiss	%xmm0, %xmm1
	jbe	L47
	xorl	%edx, %edx
	comiss	%xmm5, %xmm0
	jbe	L16
	jmp	L14
L19:
	movl	__ZL10sdl_window.lto_priv.0, %eax
	testl	%eax, %eax
	je	L35
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
	js	L25
	movss	%xmm2, __ZL10lastvidgcb.lto_priv.0+4
	movss	16(%esp), %xmm7
	movl	$1, _gammabrightness
	movss	%xmm7, __ZL10lastvidgcb.lto_priv.0
	jmp	L1
L54:
	fstp	%st(0)
L1:
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
L35:
	.cfi_restore_state
	movl	$-2147483648, %eax
L25:
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
L53:
	.cfi_restore_state
	comiss	LC3, %xmm7
	ja	L2
	movss	LC2, %xmm7
	flds	LC1
	movss	%xmm7, 24(%esp)
	movss	LC3, %xmm7
	movss	%xmm7, 16(%esp)
	jmp	L4
L12:
	movss	LC11, %xmm4
	fstps	20(%esp)
	xorl	%esi, %esi
	leal	48(%esp), %ebx
	movss	LC5, %xmm1
	jmp	L24
	.p2align 4,,10
	.p2align 3
L49:
	movaps	%xmm1, %xmm0
L20:
	cvttss2sil	%xmm0, %eax
L22:
	movw	%ax, 1024(%ebx,%esi,2)
	movw	%ax, 512(%ebx,%esi,2)
	movw	%ax, (%ebx,%esi,2)
	addl	$1, %esi
	cmpl	$256, %esi
	je	L19
L24:
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
	jbe	L49
	xorps	%xmm6, %xmm6
	xorl	%eax, %eax
	comiss	%xmm6, %xmm0
	jbe	L22
	jmp	L20
	.cfi_endproc
LFE0:
	.p2align 4
	.def	__ZL15texcache_tryartiiii;	.scl	3;	.type	32;	.endef
__ZL15texcache_tryartiiii:
LFB1:
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
	je	L56
	leal	8(%edx), %ebp
	andl	$-513, 52(%esp)
	movl	_texcache+12(,%ebp,4), %ebx
	testb	$16, %al
	je	L97
	movl	%edi, 20(%esp)
	movl	%edi, 24(%esp)
	testl	%ebx, %ebx
	jne	L67
	jmp	L59
	.p2align 4
	.p2align 4,,10
	.p2align 3
L62:
	movl	(%ebx), %ebx
	testl	%ebx, %ebx
	je	L59
L67:
	movswl	32(%ebx), %eax
	cmpl	%eax, %esi
	jne	L62
	movzbl	38(%ebx), %eax
	cmpl	%eax, %edi
	jne	L62
	movzbl	39(%ebx), %eax
	cmpl	%eax, 16(%esp)
	jne	L62
	movzwl	34(%ebx), %edx
	testb	$2, %dh
	jne	L62
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
	jne	L62
	cmpl	$4, _rendmode
	je	L65
	cmpb	$0, _glinfo+29
	js	L98
L65:
	xorl	%eax, %eax
L66:
	movl	%edx, %ecx
	shrw	$5, %cx
	andl	$1, %ecx
	cmpb	%cl, %al
	jne	L62
	movl	%edx, %eax
	jmp	L64
	.p2align 4,,10
	.p2align 3
L97:
	movl	%edi, 24(%esp)
	movl	$0, 20(%esp)
	testl	%ebx, %ebx
	jne	L67
	.p2align 4
	.p2align 3
L59:
	movl	$44, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 48
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L70
	movl	$0, 28(%eax)
	movl	$0, 32(%eax)
	movl	$0, 36(%eax)
	movl	$0, 40(%eax)
	xorl	%eax, %eax
L71:
	movl	$0, (%ebx,%eax)
	movl	$0, 4(%ebx,%eax)
	movl	$0, 8(%ebx,%eax)
	movl	$0, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L71
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
L55:
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
L56:
	.cfi_restore_state
	leal	8(%edx), %ebp
	movl	_texcache+12(,%ebp,4), %ebx
	testl	%ebx, %ebx
	je	L60
	movl	52(%esp), %edx
	sarl	$2, %edx
	testb	$2, 53(%esp)
	jne	L61
	jmp	L99
	.p2align 4
	.p2align 4,,10
	.p2align 3
L68:
	movl	(%ebx), %ebx
	testl	%ebx, %ebx
	je	L60
L61:
	movswl	32(%ebx), %eax
	cmpl	%esi, %eax
	jne	L68
	movzwl	34(%ebx), %eax
	testb	$2, %ah
	je	L68
	movl	%edx, %ecx
	xorl	%eax, %ecx
	andl	$1, %ecx
	jne	L68
	movl	%edi, 20(%esp)
	movl	$-1, 24(%esp)
L64:
	testb	$-128, %al
	je	L55
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
	jmp	L55
	.p2align 4,,10
	.p2align 3
L60:
	movl	%edi, 20(%esp)
	movl	$-1, 24(%esp)
	jmp	L59
L70:
	movl	$44, %eax
	call	__Z13handle_memerri
L99:
	movl	%edi, 20(%esp)
	movl	$-1, 24(%esp)
	jmp	L67
L98:
	movl	_usehightile, %eax
	testl	%eax, %eax
	jne	L65
	cmpl	$1, _r_npotwallmode
	jne	L65
	movswl	_tilesiz+2(,%esi,4), %ecx
	movl	52(%esp), %eax
	shrl	$5, %eax
	cmpl	$1, %ecx
	movl	%eax, 28(%esp)
	setg	%al
	andb	28(%esp), %al
	je	L66
	leal	-1(%ecx), %eax
	testl	%ecx, %eax
	setne	%al
	jmp	L66
	.cfi_endproc
LFE1:
	.p2align 4
	.def	__ZL19texcache_closefilesv;	.scl	3;	.type	32;	.endef
__ZL19texcache_closefilesv:
LFB2:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	_texcache+28, %eax
	testl	%eax, %eax
	je	L101
	movl	%eax, (%esp)
	call	_fclose
	movl	$0, _texcache+28
L101:
	movl	_texcache+24, %eax
	testl	%eax, %eax
	je	L102
	movl	%eax, (%esp)
	call	_fclose
	movl	$0, _texcache+24
L102:
	movl	_texcache+40, %eax
	movl	$0, _texcache+32832
	testl	%eax, %eax
	je	L100
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	jmp	_texcache_freeptrs.part.0
	.p2align 4,,10
	.p2align 3
L100:
	.cfi_restore_state
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE2:
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
LFB4:
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
	je	L112
	testl	%eax, %eax
	je	L113
L261:
	movl	$-1, %eax
L111:
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
L113:
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
L112:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	-464(%ebp), %ecx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%ecx, -484(%ebp)
	cmpl	$1, %eax
	jle	L115
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
L115:
	movl	__ZL10sdl_window.lto_priv.0, %edi
	testl	%edi, %edi
	je	L117
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
L117:
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
	je	L385
L119:
	xorl	%ecx, %ecx
	cmpl	$1, %eax
	sete	%cl
	sall	$4, %ecx
	movl	%ecx, -488(%ebp)
L120:
	cmpl	$8, -480(%ebp)
	jg	L121
	cmpb	$0, _nogl
	je	L122
	movl	_GLOBALHIDE, %ecx
	movl	-468(%ebp), %eax
	testl	%ecx, %ecx
	je	L254
	movl	-488(%ebp), %ecx
	orl	$8, %ecx
	cmpb	$0, _g_windowPosValid
	je	L255
	movl	_g_windowPos+4, %esi
	movl	_g_windowPos, %edx
L256:
	movl	%ecx, 20(%esp)
L383:
	movl	%eax, 16(%esp)
	movl	-484(%ebp), %eax
	movl	%esi, 8(%esp)
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	$LC19, (%esp)
	call	_SDL_CreateWindow
	movl	%eax, __ZL10sdl_window.lto_priv.0
	testl	%eax, %eax
	je	L386
	movl	%eax, (%esp)
	call	_SDL_GetWindowSurface
	movl	%eax, __ZL11sdl_surface.lto_priv.0
	testl	%eax, %eax
	je	L387
L253:
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
	jmp	L111
	.p2align 4,,10
	.p2align 3
L121:
	movl	$-1, %eax
	cmpb	$0, _nogl
	jne	L111
L122:
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
L125:
	movl	4(%ebx), %eax
	addl	$8, %ebx
	movl	%eax, 4(%esp)
	movl	-8(%ebx), %eax
	movl	%eax, (%esp)
	call	_SDL_GL_SetAttribute
	leal	-384(%ebp), %eax
	cmpl	%ebx, %eax
	jne	L125
	movl	_GLOBALHIDE, %ecx
	movl	%edi, -488(%ebp)
	movl	%edi, %eax
	movl	-492(%ebp), %edx
	movl	-520(%ebp), %ebx
	movl	-468(%ebp), %edi
	testl	%ecx, %ecx
	je	L126
	orl	$10, %eax
	movl	%eax, %ecx
	cmpb	$0, _g_windowPosValid
	je	L131
L384:
	movl	_g_windowPos+4, %eax
	movl	_g_windowPos, %edx
L132:
	movl	%ecx, 20(%esp)
	movl	%edi, 16(%esp)
	movl	-484(%ebp), %ecx
	movl	%eax, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 4(%esp)
	movl	$LC19, (%esp)
	call	_SDL_CreateWindow
	movl	%eax, __ZL10sdl_window.lto_priv.0
L129:
	testl	%eax, %eax
	je	L133
	movl	%eax, (%esp)
	call	_SDL_GL_CreateContext
	movl	__ZL10sdl_window.lto_priv.0, %edx
	movl	%eax, __ZL11sdl_context.lto_priv.0
	testl	%edx, %edx
	je	L133
	testl	%eax, %eax
	je	L133
L134:
	movl	$0, _GLVersion
	movl	$0, _GLVersion+4
	movl	$LC23, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glGetString
	testl	%eax, %eax
	je	L137
	movl	$7938, (%esp)
	call	*%eax
	subl	$4, %esp
	testl	%eax, %eax
	je	L137
	call	__ZL11find_coreGLv.lto_priv.0
	movl	_GLAD_GL_VERSION_1_0, %eax
	testl	%eax, %eax
	je	L138
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
	movl	%eax, _glad_glScissor
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
L138:
	call	__ZL19load_GL_VERSION_1_1PFPvPKcE.constprop.0
	movl	_GLAD_GL_VERSION_1_2, %eax
	testl	%eax, %eax
	je	L139
	movl	$LC329, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC330, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glTexImage3D
	movl	$LC331, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC332, (%esp)
	call	_SDL_GL_GetProcAddress
L139:
	call	__ZL19load_GL_VERSION_1_3PFPvPKcE.constprop.0
	call	__ZL19load_GL_VERSION_1_4PFPvPKcE.constprop.0
	call	__ZL19load_GL_VERSION_1_5PFPvPKcE.constprop.0
	call	__ZL19load_GL_VERSION_2_0PFPvPKcE.constprop.0
	movl	_GLAD_GL_VERSION_2_1, %ecx
	testl	%ecx, %ecx
	je	L140
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
L140:
	call	__ZL19load_GL_VERSION_3_0PFPvPKcE.constprop.0
	call	__ZL17find_extensionsGLv.lto_priv.0
	testl	%eax, %eax
	je	L137
	movl	_GLAD_GL_ARB_buffer_storage, %edx
	testl	%edx, %edx
	je	L141
	movl	$LC339, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glBufferStorage
L141:
	movl	_GLAD_GL_ARB_clip_control, %eax
	testl	%eax, %eax
	je	L142
	movl	$LC340, (%esp)
	call	_SDL_GL_GetProcAddress
L142:
	movl	_GLAD_GL_ARB_debug_output, %eax
	testl	%eax, %eax
	je	L143
	movl	$LC341, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC342, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glDebugMessageInsertARB
	movl	$LC343, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC344, (%esp)
	call	_SDL_GL_GetProcAddress
L143:
	movl	_GLAD_GL_ARB_map_buffer_range, %eax
	testl	%eax, %eax
	je	L144
	movl	$LC345, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	%eax, _glad_glMapBufferRange
	movl	$LC346, (%esp)
	call	_SDL_GL_GetProcAddress
L144:
	call	__ZL22load_GL_ARB_robustnessPFPvPKcE.constprop.0
	movl	_GLAD_GL_ARB_sampler_objects, %eax
	testl	%eax, %eax
	je	L145
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
L145:
	movl	_GLAD_GL_ARB_sync, %eax
	testl	%eax, %eax
	je	L146
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
L146:
	movl	_GLAD_GL_ARB_timer_query, %ecx
	testl	%ecx, %ecx
	je	L147
	movl	$LC368, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC369, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC370, (%esp)
	call	_SDL_GL_GetProcAddress
L147:
	movl	_GLAD_GL_ARB_vertex_array_object, %edx
	testl	%edx, %edx
	je	L148
	movl	$LC371, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC372, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC373, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC374, (%esp)
	call	_SDL_GL_GetProcAddress
L148:
	movl	_GLAD_GL_EXT_fog_coord, %eax
	testl	%eax, %eax
	je	L149
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
L149:
	movl	_GLAD_GL_EXT_framebuffer_object, %eax
	testl	%eax, %eax
	je	L150
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
L150:
	movl	_GLAD_GL_KHR_debug, %eax
	testl	%eax, %eax
	je	L151
	call	__ZL17load_GL_KHR_debugPFPvPKcE.part.0.constprop.0
L151:
	movl	_GLAD_GL_KHR_robustness, %eax
	testl	%eax, %eax
	je	L152
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
L152:
	movl	_GLAD_GL_SGIS_fog_function, %eax
	testl	%eax, %eax
	je	L137
	movl	$LC407, (%esp)
	call	_SDL_GL_GetProcAddress
	movl	$LC408, (%esp)
	call	_SDL_GL_GetProcAddress
	.p2align 4
	.p2align 3
L137:
	cmpl	$1, _GLVersion
	jle	L388
	cmpb	$0, _nogl
	jne	L155
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
	je	L157
	addl	$1, 188(%eax)
L157:
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
L158:
	movss	%xmm1, 4(%eax)
	addl	$16, %eax
	movss	%xmm1, -16(%eax)
	cmpl	%eax, %ecx
	jne	L158
	movl	$511, %ecx
	xorl	%eax, %eax
	movb	$1, 14241(%edi)
	movw	%cx, 14242(%edi)
	movl	$0, 14364(%edi)
	movl	$0, 14368(%edi)
	movl	$0, 14372(%edi)
	movl	$0, 14376(%edi)
L159:
	movl	$0, 14264(%edi,%eax)
	movl	$0, 14268(%edi,%eax)
	movl	$0, 14272(%edi,%eax)
	movl	$0, 14276(%edi,%eax)
	addl	$16, %eax
	cmpl	$112, %eax
	jb	L159
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
L161:
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
	jne	L161
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
L162:
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
	jne	L162
	leal	17916(%edi), %eax
	leal	17964(%edi), %ecx
	.p2align 4
	.p2align 4
	.p2align 3
L163:
	xorl	%edx, %edx
	movlps	%xmm0, (%eax)
	addl	$12, %eax
	movw	%dx, -4(%eax)
	cmpl	%eax, %ecx
	jne	L163
	movl	$0, 18244(%edi)
	movl	$0, 18248(%edi)
	movl	$0, 18252(%edi)
	movl	$0, 18256(%edi)
	movl	$0, 18260(%edi)
	movl	$0, 18264(%edi)
	movl	$280, 8(%esp)
	movl	$255, 4(%esp)
	movl	%ecx, (%esp)
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
L164:
	movl	$0, 18312(%edi,%eax)
	movl	$0, 18316(%edi,%eax)
	movl	$0, 18320(%edi,%eax)
	movl	$0, 18324(%edi,%eax)
	addl	$16, %eax
	cmpl	$48, %eax
	jb	L164
	movl	$0, 18492(%edi)
	xorl	%eax, %eax
	movl	$0, 18496(%edi)
	movl	$0, 18500(%edi)
	movl	$0, 18504(%edi)
L166:
	movl	$0, 18372(%edi,%eax)
	movl	$0, 18376(%edi,%eax)
	movl	$0, 18380(%edi,%eax)
	movl	$0, 18384(%edi,%eax)
	addl	$16, %eax
	cmpl	$128, %eax
	jb	L166
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
L168:
	xorl	%esi, %esi
	movl	%esi, 23232(%edi,%eax)
	movl	%esi, 23236(%edi,%eax)
	movl	%esi, 23240(%edi,%eax)
	movl	%esi, 23244(%edi,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L168
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
L170:
	xorl	%edx, %edx
	movl	%edx, 23376(%edi,%eax)
	movl	%edx, 23380(%edi,%eax)
	movl	%edx, 23384(%edi,%eax)
	movl	%edx, 23388(%edi,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L170
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
	je	L172
	addl	$1, 188(%eax)
L172:
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
L173:
	movl	$0, 23676(%edi,%eax)
	movl	$0, 23680(%edi,%eax)
	movl	$0, 23684(%edi,%eax)
	movl	$0, 23688(%edi,%eax)
	addl	$16, %eax
	cmpl	$224, %eax
	jb	L173
	movl	$0, 23916(%edi)
	movl	$0, 23920(%edi)
	movl	$0x00000000, 23924(%edi)
	movl	$-1, 23936(%edi)
	movlps	%xmm0, 23928(%edi)
	movl	%edi, _GImGui
	call	__ZN5ImGui10InitializeEv
	movl	-488(%ebp), %ecx
	testl	%ecx, %ecx
	je	L389
	movl	-488(%ebp), %eax
	movl	%eax, _GImGui
L176:
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
L178:
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
	je	L177
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, %ecx
	jmp	L178
	.p2align 4,,10
	.p2align 3
L385:
	movl	-468(%ebp), %edi
	cmpl	%edi, -444(%ebp)
	jne	L119
	subl	$1, %eax
	xorl	%ecx, %ecx
	cmpl	$1, %eax
	setbe	%cl
	sall	$4, %ecx
	movl	%ecx, -488(%ebp)
	jmp	L120
L388:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L390
L154:
	movb	$1, _nogl
L155:
	call	__ZL24destroy_window_resourcesv.lto_priv.0
	movl	%ebx, (%esp)
	movl	-480(%ebp), %ecx
	movl	%edi, %edx
	movl	-484(%ebp), %eax
	call	_videoSetMode
	jmp	L111
	.p2align 4,,10
	.p2align 3
L126:
	movl	-488(%ebp), %ecx
	orl	$2, %ecx
	cmpb	$0, _NoHide
	jne	L391
	cmpb	$0, _g_windowPosValid
	jne	L384
L131:
	orl	$805240832, %edx
	movl	%edx, %eax
	jmp	L132
	.p2align 4,,10
	.p2align 3
L177:
	movl	_GImGui, %eax
	movl	-520(%ebp), %ebx
	testl	%eax, %eax
	je	L179
	addl	$1, 188(%eax)
L179:
	movl	$0, 4(%esp)
	movl	$80, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	$0, 64(%eax)
	movl	%eax, %edi
	movl	$0, 68(%eax)
	movl	$0, 72(%eax)
	movl	$0, 76(%eax)
	xorl	%eax, %eax
L180:
	movl	$0, (%edi,%eax)
	movl	$0, 4(%edi,%eax)
	movl	$0, 8(%edi,%eax)
	movl	$0, 12(%edi,%eax)
	addl	$16, %eax
	cmpl	$64, %eax
	jb	L180
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
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_SDL_GetWindowWMInfo
	testl	%eax, %eax
	je	L184
	movl	-136(%ebp), %eax
	movl	%eax, 64(%esi)
L184:
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
	je	L185
	testb	$4, 13(%eax)
	jne	L392
L185:
	movl	_GImGui, %eax
	movl	%eax, -488(%ebp)
	movl	$LC458, (%esp)
	call	*__imp__LoadLibraryA@4
	subl	$4, %esp
	movl	%eax, _libgl.lto_priv.0
	testl	%eax, %eax
	je	L186
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
	jmp	L189
	.p2align 4,,10
	.p2align 3
L187:
	movl	%eax, _imgl3wProcs(,%esi,4)
	addl	$1, %esi
	cmpl	$59, %esi
	je	L188
	movl	_wgl_get_proc_address, %edx
L189:
	movl	_proc_names(,%esi,4), %ebx
	movl	%ebx, (%esp)
	call	*%edx
	subl	$4, %esp
	testl	%eax, %eax
	jne	L187
	movl	%ebx, 4(%esp)
	movl	_libgl.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*%edi
	subl	$8, %esp
	jmp	L187
L188:
	movl	_imgl3wProcs+136, %eax
	movl	-492(%ebp), %ebx
	testl	%eax, %eax
	je	L186
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
	jne	L190
	movl	_version+4, %eax
	testl	%eax, %eax
	jne	L186
	movl	$7938, (%esp)
	call	*_imgl3wProcs+156
	subl	$4, %esp
	movl	$_version+4, 12(%esp)
	movl	$_version, 8(%esp)
	movl	$LC460, 4(%esp)
	movl	%eax, (%esp)
	call	___mingw_sscanf
	movl	_version, %eax
L190:
	cmpl	$1, %eax
	jle	L186
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L192
	addl	$1, 188(%eax)
L192:
	movl	$0, 4(%esp)
	movl	$84, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	$0, 68(%eax)
	movl	%eax, %esi
	movl	$0, 72(%eax)
	movl	$0, 76(%eax)
	movl	$0, 80(%eax)
	xorl	%eax, %eax
L194:
	movl	$0, (%esi,%eax)
	movl	$0, 4(%esi,%eax)
	movl	$0, 8(%esi,%eax)
	movl	$0, 12(%esi,%eax)
	addl	$16, %eax
	cmpl	$80, %eax
	jb	L194
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
	jne	L196
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
L196:
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
	leal	-144(%ebp), %eax
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
	jle	L198
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L200:
	movl	%edi, 4(%esp)
	movl	$7939, (%esp)
	call	*_imgl3wProcs+160
	subl	$8, %esp
	testl	%eax, %eax
	je	L199
	movl	$LC463, 4(%esp)
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L199
	movb	$1, 80(%esi)
L199:
	addl	$1, %edi
	cmpl	-144(%ebp), %edi
	jl	L200
L198:
	movl	-488(%ebp), %eax
	testb	$4, 9(%eax)
	jne	L393
L193:
	movl	__ZL10g_ImGui_IO.lto_priv.0, %eax
	movl	64(%eax), %eax
	movl	%eax, -496(%ebp)
	xorl	%eax, %eax
L201:
	movl	$0, -384(%ebp,%eax)
	movl	$0, -380(%ebp,%eax)
	movl	$0, -376(%ebp,%eax)
	movl	$0, -372(%ebp,%eax)
	addl	$16, %eax
	cmpl	$112, %eax
	jb	L201
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
	movss	%xmm5, -504(%ebp)
	divss	LC465, %xmm0
	cvttss2sil	%xmm0, %eax
	xorps	%xmm0, %xmm0
	testl	%edx, %edx
	cvtsi2ssl	%eax, %xmm0
	movl	$__ZZN11ImFontAtlas21GetGlyphRangesDefaultEvE6ranges, %eax
	cmovne	%edx, %eax
	movl	%eax, -524(%ebp)
	movl	_GImGui, %eax
	movss	%xmm0, -340(%ebp)
	testl	%eax, %eax
	je	L204
	addl	$1, 188(%eax)
L204:
	movl	$0, 4(%esp)
	movl	$9584, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%ebx, -528(%ebp)
	movl	$__ZL39proggy_clean_ttf_compressed_data_base85, %edx
	movl	$41, %ebx
	movl	%eax, %esi
	movl	%eax, -500(%ebp)
	movl	$55, %eax
	movb	$35, -488(%ebp)
	movl	%esi, %edi
	movb	$35, -492(%ebp)
	movb	$93, -520(%ebp)
	jmp	L216
	.p2align 4,,10
	.p2align 3
L394:
	movzbl	3(%edx), %ecx
	movzbl	1(%edx), %ebx
	addl	$4, %edi
	movb	%cl, -492(%ebp)
	movzbl	4(%edx), %ecx
	movb	%bl, -520(%ebp)
	movzbl	2(%edx), %ebx
	movb	%cl, -488(%ebp)
L216:
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
	jne	L394
	movl	-500(%ebp), %eax
	movl	-528(%ebp), %ebx
	movl	8(%eax), %eax
	bswap	%eax
	movl	%eax, -488(%ebp)
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L217
	addl	$1, 188(%eax)
L217:
	movl	$0, 4(%esp)
	movl	-488(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-500(%ebp), %edx
	movl	%eax, -492(%ebp)
	movl	%eax, %ecx
	cmpl	$48215, (%edx)
	jne	L218
	movl	4(%edx), %eax
	testl	%eax, %eax
	jne	L218
	movl	8(%edx), %edi
	movl	%edx, __ZL17stb__barrier_in_b.lto_priv.0
	leal	16(%edx), %eax
	movl	%ecx, __ZL18stb__barrier_out_b.lto_priv.0
	bswap	%edi
	addl	%ecx, %edi
	movl	%ecx, __ZL9stb__dout.lto_priv.0
	movl	%edi, __ZL18stb__barrier_out_e.lto_priv.0
	jmp	L219
	.p2align 4,,10
	.p2align 3
L395:
	cmpl	__ZL9stb__dout.lto_priv.0, %edi
	jb	L218
L219:
	movl	%eax, %esi
	call	__ZL20stb_decompress_tokenPKh.lto_priv.0
	cmpl	%eax, %esi
	jne	L395
	.p2align 4
	.p2align 3
L218:
	xorl	%eax, %eax
L220:
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
	jb	L220
	leal	-264(%ebp,%eax), %edx
	leal	-384(%ebp,%eax), %eax
	movl	(%eax), %ecx
	movl	4(%eax), %eax
	movl	%ecx, (%edx)
	movl	%eax, 4(%edx)
	xorl	%eax, %eax
	movb	$1, -256(%ebp)
L222:
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
	jb	L222
	leal	-144(%ebp,%eax), %edx
	leal	-264(%ebp,%eax), %eax
	movss	-504(%ebp), %xmm3
	xorps	%xmm0, %xmm0
	movl	(%eax), %ecx
	movl	4(%eax), %eax
	comiss	%xmm0, %xmm3
	movl	%eax, 4(%edx)
	movl	-492(%ebp), %eax
	movl	%ecx, (%edx)
	movl	%eax, -144(%ebp)
	movl	-488(%ebp), %eax
	movl	%eax, -140(%ebp)
	ja	L224
	movss	-128(%ebp), %xmm3
	movss	%xmm3, -504(%ebp)
L224:
	movss	-504(%ebp), %xmm7
	movl	-524(%ebp), %eax
	movss	%xmm7, -128(%ebp)
	movl	%eax, -96(%ebp)
	cmpb	$0, -84(%ebp)
	je	L396
L225:
	movl	-496(%ebp), %edx
	movl	84(%edx), %eax
	cmpl	88(%edx), %eax
	je	L397
L235:
	movl	-496(%ebp), %edx
	movl	92(%edx), %esi
L238:
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
	xorl	%eax, %eax
L242:
	movl	-144(%ebp,%eax), %edi
	movl	-140(%ebp,%eax), %ecx
	movl	%ecx, -488(%ebp)
	movl	-136(%ebp,%eax), %esi
	movl	-132(%ebp,%eax), %ecx
	movl	%edi, (%edx,%eax)
	movl	-488(%ebp), %edi
	movl	%esi, 8(%edx,%eax)
	movl	%ecx, 12(%edx,%eax)
	movl	%edi, 4(%edx,%eax)
	addl	$16, %eax
	cmpl	$112, %eax
	jb	L242
	movl	-496(%ebp), %edi
	movl	84(%edi), %eax
	leal	1(%eax), %edx
	imull	$120, %eax, %eax
	addl	92(%edi), %eax
	movl	%edx, 84(%edi)
	movl	%edi, %edx
	movl	116(%eax), %edi
	movl	%eax, %esi
	testl	%edi, %edi
	jne	L244
	movl	%edx, %eax
	movl	60(%edx), %edx
	movl	68(%eax), %eax
	movl	-4(%eax,%edx,4), %eax
	movl	%eax, 116(%esi)
L244:
	cmpb	$0, 8(%esi)
	je	L398
L245:
	movl	116(%esi), %eax
	cmpw	$-1, 60(%eax)
	jne	L247
	movzwl	-72(%ebp), %edx
	movw	%dx, 60(%eax)
L247:
	movl	-496(%ebp), %eax
	movb	$0, 24(%eax)
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	L248
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L249
	subl	$1, 188(%edx)
L249:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L248:
	movl	-496(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	L250
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L251
	subl	$1, 188(%edx)
L251:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L250:
	movl	-496(%ebp), %eax
	movl	$0, 28(%eax)
	movl	$0, 32(%eax)
	movb	$0, 25(%eax)
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L252
	subl	$1, 188(%eax)
L252:
	movl	$0, 4(%esp)
	movl	-500(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	jmp	L253
	.p2align 4,,10
	.p2align 3
L133:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L399
L135:
	movb	$1, _nogl
	jmp	L134
L254:
	cmpb	$0, _g_windowPosValid
	je	L258
	movl	_g_windowPos+4, %esi
	movl	_g_windowPos, %edx
L259:
	movl	-488(%ebp), %edi
	movl	%edi, 20(%esp)
	jmp	L383
L397:
	leal	1(%eax), %ecx
	testl	%eax, %eax
	jne	L236
	movl	$8, %eax
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%eax, %edi
L237:
	movl	_GImGui, %eax
	imull	$120, %edi, %edx
	testl	%eax, %eax
	je	L239
	addl	$1, 188(%eax)
L239:
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-496(%ebp), %edx
	movl	%eax, %esi
	movl	92(%edx), %eax
	testl	%eax, %eax
	je	L240
	imull	$120, 84(%edx), %edx
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	%edx, 8(%esp)
	call	_memcpy
	movl	-496(%ebp), %edx
	movl	92(%edx), %edx
	testl	%edx, %edx
	je	L241
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L241
	subl	$1, 188(%eax)
L241:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L240:
	movl	-496(%ebp), %eax
	movl	%esi, 92(%eax)
	movl	%edi, 88(%eax)
	movl	84(%eax), %eax
	jmp	L238
L186:
	movl	$2, (%esp)
	call	*__imp____acrt_iob_func
	movl	$LC461, 4(%esp)
	movl	%eax, (%esp)
	call	___mingw_fprintf
	jmp	L193
L398:
	movl	_GImGui, %eax
	movl	4(%esi), %edx
	testl	%eax, %eax
	je	L246
	addl	$1, 188(%eax)
L246:
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
	jmp	L245
L396:
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L226
	addl	$1, 188(%eax)
L226:
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
	je	L400
L228:
	movl	-496(%ebp), %edx
	movl	68(%edx), %eax
	movl	%esi, (%eax,%ecx,4)
	addl	$1, 60(%edx)
	jmp	L225
L391:
	leal	-144(%ebp), %edx
	movl	%ecx, -488(%ebp)
	movl	%edx, (%esp)
	movl	$1, 12(%esp)
	movl	$LC20, 8(%esp)
	movl	$LC21, 4(%esp)
	call	___mingw_sprintf
	movl	-488(%ebp), %ecx
	movl	%edi, 16(%esp)
	movl	%ecx, 20(%esp)
	movl	-484(%ebp), %eax
	movl	$20, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$0, 4(%esp)
	movl	$LC19, (%esp)
	call	_SDL_CreateWindow
	movl	%eax, __ZL10sdl_window.lto_priv.0
	leal	-144(%ebp), %eax
	call	_wm_setapptitle
	movl	__ZL10sdl_window.lto_priv.0, %eax
	jmp	L129
L389:
	movl	_GImGui, %eax
	movl	%eax, -488(%ebp)
	jmp	L176
L399:
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
	jmp	L135
L255:
	orl	$805240832, %edx
	movl	%edx, %esi
	jmp	L256
L258:
	orl	$805240832, %edx
	movl	%edx, %esi
	jmp	L259
L393:
	movl	_GImGui, %eax
	movl	$__ZL30ImGui_ImplOpenGL3_RenderWindowP13ImGuiViewportPv.lto_priv.0, 14348(%eax)
	jmp	L193
L390:
	movl	$LC409, 12(%esp)
	movl	$2015, 8(%esp)
	movl	$LC18, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L154
L392:
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
	jmp	L185
L236:
	movl	%eax, %edx
	movl	%ecx, %edi
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	cmpl	%ecx, %edx
	cmovge	%edx, %edi
	cmpl	%edi, %eax
	jge	L235
	jmp	L237
L400:
	leal	1(%ecx), %eax
	movl	%eax, -488(%ebp)
	testl	%ecx, %ecx
	jne	L229
	movl	-488(%ebp), %edi
	movl	$8, %eax
	cmpl	%eax, -488(%ebp)
	cmovl	%eax, %edi
L230:
	movl	_GImGui, %eax
	leal	0(,%edi,4), %edx
	testl	%eax, %eax
	je	L232
	addl	$1, 188(%eax)
L232:
	xorl	%eax, %eax
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-496(%ebp), %ecx
	movl	%eax, -488(%ebp)
	movl	68(%ecx), %edx
	testl	%edx, %edx
	je	L233
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
	je	L234
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L234
	subl	$1, 188(%eax)
L234:
	xorl	%eax, %eax
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L233:
	movl	-496(%ebp), %eax
	movl	-488(%ebp), %edx
	movl	%edi, 64(%eax)
	movl	60(%eax), %ecx
	movl	%edx, 68(%eax)
	jmp	L228
L229:
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
	jge	L228
	jmp	L230
L387:
	call	_SDL_GetError
	movl	$LC468, (%esp)
	movl	%eax, 4(%esp)
	call	_initprintf
	call	__ZL24destroy_window_resourcesv.lto_priv.0
	jmp	L261
L386:
	call	_SDL_GetError
	movl	$LC467, (%esp)
	movl	%eax, 4(%esp)
	call	_initprintf
	call	__ZL24destroy_window_resourcesv.lto_priv.0
	jmp	L261
	.cfi_endproc
LFE4:
	.p2align 4
	.globl	_videoBeginDrawing
	.def	_videoBeginDrawing;	.scl	2;	.type	32;	.endef
_videoBeginDrawing:
LFB105:
	.cfi_startproc
	cmpl	$8, _bpp
	jle	L402
	movl	$0, _frameplace
	movl	$0, _bytesperline
	movb	$0, _modechange
	ret
	.p2align 4,,10
	.p2align 3
L402:
	movl	_lockcount, %eax
	leal	1(%eax), %edx
	movl	%edx, _lockcount
	testl	%eax, %eax
	jg	L401
	movl	_mirrorBuffer, %eax
	cmpb	$0, _inpreparemirror
	jne	L405
	movl	__ZL6buffer.lto_priv.0, %eax
	cmpb	$0, _nogl
	cmovne	__ZL6buffer.lto_priv.1, %eax
L405:
	movl	%eax, _frameplace
	cmpb	$0, _modechange
	jne	L407
L401:
	ret
	.p2align 4,,10
	.p2align 3
L407:
	movl	_xdim, %eax
	movl	_ydim, %edx
	movl	%eax, _bytesperline
	call	_calc_ylookup
	movb	$0, _modechange
	ret
	.cfi_endproc
LFE105:
	.p2align 4
	.globl	_videoEndDrawing
	.def	_videoEndDrawing;	.scl	2;	.type	32;	.endef
_videoEndDrawing:
LFB109:
	.cfi_startproc
	cmpl	$8, _bpp
	jg	L415
	movl	_frameplace, %eax
	testl	%eax, %eax
	je	L408
	movl	_lockcount, %eax
	cmpl	$1, %eax
	jg	L416
	movl	$0, _frameplace
	testl	%eax, %eax
	je	L408
	movl	$0, _lockcount
L408:
	ret
	.p2align 4,,10
	.p2align 3
L415:
	movl	$0, _frameplace
	ret
	.p2align 4,,10
	.p2align 3
L416:
	subl	$1, %eax
	movl	%eax, _lockcount
	ret
	.cfi_endproc
LFE109:
	.p2align 4
	.globl	_videoSetGamma
	.def	_videoSetGamma;	.scl	2;	.type	32;	.endef
_videoSetGamma:
LFB111:
	.cfi_startproc
	cmpb	$0, _novideo
	jne	L426
	cmpb	$0, _nogl
	je	L429
	jmp	_videoSetGamma.part.0
	.p2align 4,,10
	.p2align 3
L429:
	movss	_g_videoGamma, %xmm0
	movss	_g_videoContrast, %xmm1
	movl	$0x00000000, _g_glColorCorrection+12
	movss	_g_videoSaturation, %xmm2
	movss	%xmm0, _g_glColorCorrection
	movss	%xmm1, _g_glColorCorrection+4
	movss	%xmm2, _g_glColorCorrection+8
	cmpl	$3, _rendmode
	je	L430
L426:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L430:
	movl	_gl, %eax
	testl	%eax, %eax
	je	L426
	cmpl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	jne	L426
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
LFE111:
	.section .rdata,"dr"
LC484:
	.ascii "\15\12\0"
LC485:
	.ascii "Pasted %d lines.\0"
LC486:
	.ascii "source/build/src/osd.cpp\0"
	.text
	.p2align 4
	.globl	_handleevents
	.def	_handleevents;	.scl	2;	.type	32;	.endef
_handleevents:
LFB116:
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
	jne	L808
L432:
	cmpb	$2, __ZL6linked.lto_priv.0
	ja	L433
	je	L809
L434:
	testb	$2, _g_mouseBits
	je	L439
	movl	_osd, %eax
	testb	$4, 1172(%eax)
	jne	L810
L439:
	movl	_inputchecked, %ebx
	testl	%ebx, %ebx
	je	L445
	cmpb	$0, _g_mouseEnabled
	je	L445
	movl	_osd, %edx
	movl	_g_mouseBits, %eax
	testb	$4, 1172(%edx)
	je	L447
	testb	$48, %al
	je	L447
	movl	3248(%edx), %edx
	movl	_ydim, %ecx
	movl	16(%edx), %edx
	cmpl	$__ZL22_internal_getrowheighti.lto_priv.0, %edx
	jne	L449
	testl	%ecx, %ecx
	leal	7(%ecx), %edx
	cmovns	%ecx, %edx
	sarl	$3, %edx
L450:
	sarl	$4, %edx
	testb	$16, %al
	je	L451
	movl	_osd, %ebx
	movzwl	1152(%ebx), %ecx
	movl	32(%ebx), %esi
	subl	__ZL10osdrowscur.lto_priv.0, %esi
	cmpl	%esi, %ecx
	jge	L451
	addl	%edx, %ecx
	cmpl	%esi, %ecx
	cmovg	%esi, %ecx
	movw	%cx, 1152(%ebx)
L451:
	testb	$32, %al
	je	L447
	movl	_osd, %ebx
	movzwl	1152(%ebx), %ecx
	testw	%cx, %cx
	je	L447
	subl	%edx, %ecx
	movl	$0, %edx
	cmovs	%edx, %ecx
	movw	%cx, 1152(%ebx)
	.p2align 4
	.p2align 3
L447:
	andl	$-49, %eax
	movl	%eax, _g_mouseBits
L445:
	movl	__ZL10g_ImGui_IO.lto_priv.0, %eax
	movb	$0, _g_ImGuiCapturedDevices
	testl	%eax, %eax
	je	L453
	cmpb	$0, 153(%eax)
	je	L454
	movb	$1, _g_ImGuiCapturedDevices
L454:
	cmpb	$0, 152(%eax)
	jne	L811
L453:
	leal	-144(%ebp), %ebx
	.p2align 4
	.p2align 3
L619:
	movl	%ebx, (%esp)
	call	_SDL_PollEvent
	testl	%eax, %eax
	je	L812
L620:
	movl	__ZL10g_ImGui_IO.lto_priv.0, %edx
	movl	-144(%ebp), %eax
	testl	%edx, %edx
	je	L455
	cmpb	$0, 153(%edx)
	je	L456
	leal	-768(%eax), %ecx
	cmpl	$1, %ecx
	jbe	L457
	cmpl	$771, %eax
	je	L457
	cmpb	$0, 152(%edx)
	je	L458
	leal	-1024(%eax), %edx
	cmpl	$3, %edx
	jbe	L459
	cmpl	$769, %eax
	ja	L468
L802:
	cmpl	$512, %eax
	jne	L472
	.p2align 4
	.p2align 3
L469:
	movzbl	-132(%ebp), %edx
	leal	-4(%edx), %eax
	cmpb	$9, %al
	ja	L619
	movzbl	%al, %eax
	jmp	*L588(,%eax,4)
	.section .rdata,"dr"
	.align 4
L588:
	.long	L593
	.long	L592
	.long	L619
	.long	L591
	.long	L590
	.long	L590
	.long	L589
	.long	L589
	.long	L587
	.long	L587
	.text
	.p2align 4,,10
	.p2align 3
L459:
	movl	%ebx, %eax
	call	__Z27ImGui_ImplSDL2_ProcessEventPK9SDL_Event
	testb	%al, %al
	jne	L619
	movl	-144(%ebp), %eax
	.p2align 4
	.p2align 3
L455:
	cmpl	$769, %eax
	je	L463
	jbe	L465
	cmpl	$1027, %eax
	je	L473
L464:
	cmpl	$4096, %eax
	je	L474
	leal	-132(%ebp), %esi
	cmpl	$771, %eax
	jne	L481
L484:
	movl	_osd, %eax
	movzbl	(%esi), %edi
	movl	3244(%eax), %eax
	movl	%edi, %ecx
	cmpb	_g_keyAsciiTable(%eax), %cl
	je	L483
	movzbl	_g_keyAsciiEnd, %eax
	movzbl	_g_keyAsciiPos, %edx
	addl	$1, %eax
	andl	$63, %eax
	cmpl	%edx, %eax
	je	L483
	movzbl	%cl, %eax
	call	__Z14OSD_HandleCharc
	testl	%eax, %eax
	je	L483
	movzbl	_g_keyAsciiEnd, %edx
	movl	%edi, %ecx
	movl	%edx, %eax
	movb	%cl, _g_keyAsciiFIFO(%edx)
	addl	$1, %eax
	andl	$63, %eax
	movb	%al, _g_keyAsciiEnd
	.p2align 4
	.p2align 3
L483:
	leal	-101(%ebp), %eax
	cmpl	%esi, %eax
	je	L619
	addl	$1, %esi
	cmpb	$0, (%esi)
	jne	L484
	movl	%ebx, (%esp)
	call	_SDL_PollEvent
	testl	%eax, %eax
	jne	L620
L812:
	movl	$0, _inputchecked
	call	__Z16timerUpdateClockv
	movl	_frameplace, %eax
	testl	%eax, %eax
	jne	L689
	movl	__ZL10sdl_resize.lto_priv.0, %edx
	testl	%edx, %edx
	je	L689
	movl	_fullscreen, %eax
	movl	_upscalefactor, %ebx
	movl	__ZL10sdl_resize.lto_priv.0+4, %ecx
	movzbl	%al, %eax
	cmpl	$200, _qsetmode
	je	L813
	movl	%ebx, (%esp)
	call	_videoSet2dMode
L623:
	movl	$0, __ZL10sdl_resize.lto_priv.0
	movl	$0, __ZL10sdl_resize.lto_priv.0+4
L689:
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
L457:
	.cfi_restore_state
	movl	%ebx, %eax
	call	__Z27ImGui_ImplSDL2_ProcessEventPK9SDL_Event
	movl	%eax, %edx
	movl	-144(%ebp), %eax
	testb	%dl, %dl
	je	L461
	cmpl	$771, %eax
	je	L619
L461:
	movl	__ZL10g_ImGui_IO.lto_priv.0, %edx
L456:
	cmpb	$0, 152(%edx)
	je	L455
	leal	-1024(%eax), %edx
	cmpl	$3, %edx
	jbe	L459
	cmpl	$769, %eax
	je	L463
	ja	L464
L465:
	cmpl	$512, %eax
	je	L469
	cmpl	$768, %eax
	je	L477
L472:
	cmpl	$256, %eax
	jne	L479
	cmpb	$0, _DemoPlaying
	je	L619
	call	__Z14CON_ReallyQuitv
	jmp	L619
	.p2align 4,,10
	.p2align 3
L477:
	cmpl	$109, -124(%ebp)
	je	L814
L485:
	movl	-128(%ebp), %esi
	movzbl	__ZL14keytranslation.lto_priv.0(%esi), %edi
	movl	%edi, %edx
L630:
	movzbl	_g_keyAsciiEnd, %eax
	movzbl	_g_keyAsciiPos, %ecx
	addl	$1, %eax
	andl	$63, %eax
	cmpl	%ecx, %eax
	je	L487
	cmpl	$88, %esi
	je	L632
	cmpl	$40, %esi
	je	L632
	cmpl	$41, %esi
	je	L633
	cmpl	$42, %esi
	je	L634
	cmpl	$43, %esi
	je	L635
	movzwl	-120(%ebp), %eax
	andw	$4035, %ax
	cmpw	$64, %ax
	je	L815
L489:
	movl	_osd, %esi
	movl	3244(%esi), %eax
	movl	%eax, -148(%ebp)
	movzbl	_g_keyAsciiTable(%eax), %eax
	cmpl	-124(%ebp), %eax
	je	L492
	movb	%dl, -148(%ebp)
	call	_SDL_IsTextInputActive
	movzbl	-148(%ebp), %edx
	testl	%eax, %eax
	jne	L490
	movl	-124(%ebp), %esi
	movzwl	-120(%ebp), %ecx
	leal	-97(%esi), %eax
	cmpl	$25, %eax
	ja	L493
	movl	%ecx, %eax
	shrw	$13, %ax
	andl	$1, %eax
	andl	$3, %ecx
	leal	-32(%esi), %ecx
	setne	-148(%ebp)
	cmpb	-148(%ebp), %al
	cmovne	%ecx, %esi
	jmp	L495
	.p2align 4,,10
	.p2align 3
L458:
	cmpl	$769, %eax
	jbe	L802
	cmpl	$1027, %eax
	je	L473
L468:
	cmpl	$4096, %eax
	jne	L481
	.p2align 4
	.p2align 3
L474:
	movl	_g_fileDropCallback, %eax
	testl	%eax, %eax
	je	L482
	movl	-136(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
L482:
	movl	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	_SDL_free
	jmp	L619
	.p2align 4,,10
	.p2align 3
L473:
	movl	-124(%ebp), %esi
	testl	%esi, %esi
	jle	L586
	orl	$16, _g_mouseBits
	jmp	L619
	.p2align 4,,10
	.p2align 3
L463:
	movl	-128(%ebp), %eax
	movzbl	__ZL14keytranslation.lto_priv.0(%eax), %edi
	movl	$769, %eax
	movl	%edi, %edx
L467:
	movl	_osd, %esi
	testl	%esi, %esi
	je	L582
	cmpl	3244(%esi), %edi
	je	L816
	movl	1172(%esi), %ecx
	testb	$4, %cl
	je	L582
L628:
	cmpb	$42, %dl
	je	L642
	cmpb	$54, %dl
	je	L642
	andl	$127, %edx
	cmpb	$29, %dl
	jne	L619
	andl	$-33, %ecx
	movl	%ecx, 1172(%esi)
	jmp	L619
	.p2align 4,,10
	.p2align 3
L809:
	cmpb	$0, __ZL6linked.lto_priv.0+1
	jne	L433
	cmpb	$8, __ZL6linked.lto_priv.0+2
	jbe	L434
	.p2align 4
	.p2align 3
L433:
	testb	$2, _joystick+44
	je	L434
	movl	_joystick+36, %eax
	testl	%eax, %eax
	je	L435
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
	jne	L817
	movl	__ZL6joydev.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_JoystickRumble
L437:
	movl	$0, _joystick+36
	xorl	%eax, %eax
	movw	%ax, _joystick+40
	jmp	L434
	.p2align 4,,10
	.p2align 3
L811:
	orb	$2, _g_ImGuiCapturedDevices
	jmp	L453
	.p2align 4,,10
	.p2align 3
L487:
	movl	_osd, %esi
	movl	3244(%esi), %eax
	movl	%eax, -148(%ebp)
	movzbl	_g_keyAsciiTable(%eax), %eax
	movl	%eax, %ecx
	movl	-144(%ebp), %eax
	cmpl	%ecx, -124(%ebp)
	je	L492
L624:
	cmpl	%edi, -148(%ebp)
	je	L818
L533:
	movl	1172(%esi), %ecx
	testb	$4, %cl
	je	L532
	cmpl	$768, %eax
	jne	L628
	movl	3248(%esi), %eax
	movl	24(%eax), %ecx
	xorl	%eax, %eax
	cmpl	$__ZL17_internal_gettimev.lto_priv.0, %ecx
	jne	L819
L540:
	movl	%eax, __ZL10osdkeytime.lto_priv.0
	cmpb	$-45, %dl
	ja	L619
	cmpb	$-100, %dl
	jbe	L820
	addl	$99, %edx
	cmpb	$54, %dl
	ja	L619
	movzbl	%dl, %edx
	jmp	*L547(,%edx,4)
	.section .rdata,"dr"
	.align 4
L547:
	.long	L545
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L619
	.long	L556
	.long	L555
	.long	L554
	.long	L619
	.long	L553
	.long	L619
	.long	L552
	.long	L619
	.long	L551
	.long	L550
	.long	L549
	.long	L548
	.long	L546
	.text
	.p2align 4,,10
	.p2align 3
L481:
	cmpl	$1538, %eax
	je	L599
	jbe	L821
	cmpl	$1618, %eax
	ja	L610
	cmpl	$1616, %eax
	ja	L611
	cmpl	$1540, %eax
	jbe	L612
	cmpl	$1616, %eax
	jne	L619
L613:
	cmpb	$0, _appactive
	je	L619
	movzbl	-132(%ebp), %eax
	cmpl	_joystick+16, %eax
	jge	L619
	movswl	-128(%ebp), %ecx
	movl	_joystick, %edx
	movl	%ecx, (%edx,%eax,4)
	jmp	L619
	.p2align 4,,10
	.p2align 3
L632:
	movl	$13, %esi
L495:
	movl	%esi, %eax
	movb	%dl, -148(%ebp)
	movzbl	%al, %eax
	call	__Z14OSD_HandleCharc
	movzbl	-148(%ebp), %edx
	testl	%eax, %eax
	je	L490
	movzbl	_g_keyAsciiEnd, %ecx
	movl	%esi, %eax
	movb	%al, _g_keyAsciiFIFO(%ecx)
	movzbl	_g_keyAsciiEnd, %eax
	addl	$1, %eax
	andl	$63, %eax
	movb	%al, _g_keyAsciiEnd
L490:
	movl	_osd, %esi
	movl	-144(%ebp), %eax
	testl	%esi, %esi
	je	L532
	movl	3244(%esi), %ecx
	movl	%ecx, -148(%ebp)
	cmpl	%edi, -148(%ebp)
	jne	L533
L818:
	cmpb	$0, _keystatus+42
	je	L627
L534:
	cmpl	$768, %eax
	jne	L535
	movl	__ZL10osdrowscur.lto_priv.0, %eax
	cmpl	$-1, %eax
	je	L638
	cmpl	1144(%esi), %eax
	je	L639
	movzbl	1154(%esi), %edx
	movl	%edx, %ecx
	negl	%ecx
	cmpb	$-1, %dl
	sete	%dl
	movsbl	%cl, %edi
	movzbl	%dl, %edx
L536:
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
L535:
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L581:
	movzbl	_g_keyRemapTable(%esi), %eax
	cmpb	$0, _keystatus(%eax)
	je	L579
	movl	_keypresscallback, %edx
	testl	%edx, %edx
	je	L579
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	*%edx
	movzbl	_g_keyRemapTable(%esi), %eax
L579:
	addl	$1, %esi
	movb	$0, _keystatus(%eax)
	cmpl	$256, %esi
	jne	L581
	jmp	L619
	.p2align 4,,10
	.p2align 3
L642:
	andl	$-17, %ecx
	movl	%ecx, 1172(%esi)
	jmp	L619
	.p2align 4,,10
	.p2align 3
L816:
	cmpb	$0, _keystatus+42
	jne	L535
L627:
	movl	1172(%esi), %edx
	andl	$132, %edx
	cmpl	$128, %edx
	jne	L534
L532:
	cmpl	$768, %eax
	je	L822
L582:
	cmpl	$89, %edi
	je	L619
	movzbl	_g_keyRemapTable(%edi), %eax
	movb	$0, _keystatus(%eax)
	movl	_keypresscallback, %eax
	testl	%eax, %eax
	je	L619
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	*%eax
	jmp	L619
	.p2align 4,,10
	.p2align 3
L586:
	je	L619
	orl	$32, _g_mouseBits
	jmp	L619
L822:
	movzbl	_g_keyRemapTable(%edi), %eax
	cmpb	$0, _keystatus(%eax)
	jne	L584
	movl	_keypresscallback, %edx
	testl	%edx, %edx
	je	L584
	movl	$1, 4(%esp)
	movl	%edi, (%esp)
	call	*%edx
	movzbl	_g_keyRemapTable(%edi), %eax
L584:
	movb	$1, _keystatus(%eax)
	movzbl	_g_keyFIFOend, %eax
	addl	$2, %eax
	andl	$63, %eax
	movb	%al, _g_keyFIFOend
	jmp	L619
	.p2align 4,,10
	.p2align 3
L808:
	call	__ZN5ImGui8EndFrameEv
	movb	$0, _g_ImGuiFrameActive
	jmp	L432
	.p2align 4,,10
	.p2align 3
L814:
	cmpb	$1, -132(%ebp)
	jne	L485
	testb	$-64, -120(%ebp)
	je	L485
	movl	_MOUSEHIDE, %ecx
	xorl	%eax, %eax
	movl	__ZL10sdl_window.lto_priv.0, %edx
	testl	%ecx, %ecx
	sete	%al
	movl	%eax, _MOUSEHIDE
	testl	%edx, %edx
	je	L486
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_SDL_SetWindowGrab
	movl	_MOUSEHIDE, %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	setne	%al
L486:
	movl	%eax, (%esp)
	call	_SDL_SetRelativeMouseMode
	movl	-128(%ebp), %esi
	movl	-144(%ebp), %eax
	movzbl	__ZL14keytranslation.lto_priv.0(%esi), %edi
	movl	%edi, %edx
	cmpl	$768, %eax
	jne	L467
	jmp	L630
	.p2align 4,,10
	.p2align 3
L820:
	cmpb	$42, %dl
	je	L542
	ja	L543
	cmpb	$1, %dl
	jne	L823
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
	jmp	L619
	.p2align 4,,10
	.p2align 3
L821:
	cmpl	$1536, %eax
	je	L601
	cmpl	$1537, %eax
	je	L602
	cmpl	$1024, %eax
	jne	L479
	movlps	-124(%ebp), %xmm1
	movlps	%xmm1, _g_mouseAbs
L602:
	cmpb	$0, _appactive
	je	L619
	cmpb	$0, _g_mouseGrabbed
	je	L619
	movl	-116(%ebp), %eax
	addl	%eax, _g_mousePos
	movl	-112(%ebp), %eax
	addl	%eax, _g_mousePos+4
	jmp	L619
	.p2align 4,,10
	.p2align 3
L590:
	movl	$0, __ZL13sdl_minimized.lto_priv.0
	jmp	L619
	.p2align 4,,10
	.p2align 3
L587:
	cmpb	$12, %dl
	sete	%al
	movb	%al, _appactive
	cmpb	$0, _g_mouseGrabbed
	je	L595
	cmpb	$0, _g_mouseEnabled
	jne	L824
L595:
	movzbl	%al, %eax
	call	__Z24windowsHandleFocusChangei
	jmp	L619
	.p2align 4,,10
	.p2align 3
L589:
	cmpb	$10, %dl
	sete	_g_mouseInsideWindow
	jmp	L619
	.p2align 4,,10
	.p2align 3
L810:
	call	_SDL_HasClipboardText
	testl	%eax, %eax
	je	L439
	call	_SDL_GetClipboardText
	movl	$0, -88(%ebp)
	movl	%eax, %ebx
	movl	_osd, %eax
	movl	40(%eax), %esi
	testl	%esi, %esi
	jne	L825
L440:
	movl	%ebx, (%esp)
	call	_SDL_free
	jmp	L439
L612:
	testb	$1, _joystick+44
	jne	L619
L611:
	cmpb	$0, _appactive
	je	L619
	movzbl	-132(%ebp), %ecx
	cmpl	_joystick+24, %ecx
	jge	L619
	movl	$1, %eax
	movl	_joystick+12, %edx
	sall	%cl, %eax
	cmpb	$1, -131(%ebp)
	je	L826
	notl	%eax
	andl	%edx, %eax
	movl	%eax, _joystick+12
	jmp	L619
L817:
	movl	__ZL10controller.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_GameControllerRumble
	jmp	L437
L593:
	movl	_fullscreen, %esi
	testl	%esi, %esi
	jne	L619
	movlps	-128(%ebp), %xmm2
	movl	__ZL10sdl_window.lto_priv.0, %eax
	movb	$1, _g_windowPosValid
	movlps	%xmm2, _g_windowPos
	movl	%eax, (%esp)
	call	_SDL_GetWindowDisplayIndex
	cmpl	_r_displayindex, %eax
	jne	L598
	cmpb	$0, __ZL12modeschecked.lto_priv.0
	jne	L619
L598:
	movl	%eax, _r_displayindex
	movb	$0, __ZL12modeschecked.lto_priv.0
	call	_videoGetModes.constprop.0
	jmp	L619
L592:
	movl	_fullscreen, %ecx
	testl	%ecx, %ecx
	jne	L619
	movl	-124(%ebp), %eax
	movl	-128(%ebp), %edx
	andl	$-2, %eax
	andl	$-2, %edx
	movl	%edx, __ZL10sdl_resize.lto_priv.0
	movl	%eax, __ZL10sdl_resize.lto_priv.0+4
	jmp	L619
L591:
	movl	$1, __ZL13sdl_minimized.lto_priv.0
	jmp	L619
L492:
	movl	-144(%ebp), %eax
	jmp	L624
L813:
	movl	%ebx, 4(%esp)
	movl	_bpp, %ebx
	movl	%ebx, (%esp)
	call	_videoSetGameMode
	jmp	L623
L542:
	movl	_osd, %eax
	orl	$16, 1172(%eax)
	jmp	L619
L549:
	movzwl	1152(%esi), %eax
	testw	%ax, %ax
	je	L619
L805:
	subl	$1, %eax
	movw	%ax, 1152(%esi)
	jmp	L619
L550:
	call	__ZL15OSD_HistoryNextv.lto_priv.0
	jmp	L619
L551:
	movl	_osd, %edx
	testb	$32, 1172(%edx)
	jne	L827
	movzwl	52(%esi), %eax
	movw	%ax, 54(%esi)
	movw	%ax, 58(%esi)
	subw	1148(%edx), %ax
	addw	$4, %ax
	jns	L806
	xorl	%edi, %edi
	movw	%di, 56(%esi)
	movl	1148(%edx), %eax
	subl	$4, %eax
	movw	%ax, 58(%esi)
	jmp	L619
L552:
	movzwl	54(%esi), %eax
	movzwl	52(%esi), %ecx
	cmpw	%cx, %ax
	jge	L569
	movl	_osd, %edx
	testb	$32, 1172(%edx)
	je	L570
	movl	44(%esi), %edi
	movswl	%ax, %edx
	jmp	L573
L571:
	leal	1(%edx), %eax
	addl	$1, %edx
	movw	%ax, 54(%esi)
	cmpw	%dx, %cx
	jle	L574
L573:
	cmpb	$32, (%edi,%edx)
	jne	L571
	movzwl	54(%esi), %eax
L574:
	movswl	%ax, %edx
	cmpw	%ax, %cx
	jg	L576
	jmp	L569
	.p2align 5
	.p2align 4,,10
	.p2align 3
L575:
	leal	1(%edx), %eax
	addl	$1, %edx
	movw	%ax, 54(%esi)
	cmpw	%dx, %cx
	jle	L569
L576:
	cmpb	$32, (%edi,%edx)
	je	L575
	movzwl	54(%esi), %eax
L569:
	movzwl	58(%esi), %edx
	cmpw	%ax, %dx
	jg	L619
	movzwl	56(%esi), %ecx
	movw	%ax, 58(%esi)
	addl	%eax, %ecx
	subl	%edx, %ecx
	movw	%cx, 56(%esi)
	jmp	L619
L823:
	cmpb	$29, %dl
	jne	L619
L545:
	movl	_osd, %eax
	orl	$32, 1172(%eax)
	jmp	L619
L553:
	movzwl	54(%esi), %eax
	testw	%ax, %ax
	jle	L561
	movl	_osd, %edx
	testb	$32, 1172(%edx)
	je	L562
	movl	44(%esi), %ecx
	movswl	%ax, %edx
	jmp	L565
	.p2align 5
	.p2align 4,,10
	.p2align 3
L563:
	leal	-1(%edx), %eax
	subl	$1, %edx
	movw	%ax, 54(%esi)
	testw	%dx, %dx
	jle	L566
L565:
	cmpb	$32, -1(%ecx,%edx)
	je	L563
	movzwl	54(%esi), %eax
L566:
	movswl	%ax, %edx
	testw	%ax, %ax
	jg	L568
	jmp	L561
	.p2align 5
	.p2align 4,,10
	.p2align 3
L567:
	leal	-1(%edx), %eax
	subl	$1, %edx
	movw	%ax, 54(%esi)
	testw	%dx, %dx
	jle	L561
L568:
	cmpb	$32, -1(%ecx,%edx)
	jne	L567
	movzwl	54(%esi), %eax
L561:
	movzwl	56(%esi), %edx
	cmpw	%ax, %dx
	jle	L619
	movzwl	58(%esi), %ecx
	addl	%eax, %ecx
	subl	%edx, %ecx
	movw	%cx, 58(%esi)
L806:
	movw	%ax, 56(%esi)
	jmp	L619
L554:
	movl	_osd, %eax
	movzwl	1152(%esi), %ecx
	movl	32(%eax), %eax
	subl	__ZL10osdrowscur.lto_priv.0, %eax
	movl	%ecx, %edx
	cmpl	%eax, %ecx
	jge	L619
	addl	$1, %edx
	movw	%dx, 1152(%esi)
	jmp	L619
L555:
	call	__ZL15OSD_HistoryPrevv.lto_priv.0
	jmp	L619
L556:
	movl	_osd, %eax
	testb	$32, 1172(%eax)
	je	L558
	movl	32(%eax), %eax
	jmp	L805
L546:
	movswl	54(%esi), %edx
	movswl	52(%esi), %eax
	cmpw	%ax, %dx
	je	L619
	testw	%ax, %ax
	je	L619
	cmpw	%ax, %dx
	jl	L828
L577:
	subl	$1, %eax
	movw	%ax, 52(%esi)
	jmp	L619
L548:
	movl	_osd, %ecx
	movl	1172(%ecx), %edx
	movl	%edx, %eax
	andl	$-9, %edx
	notl	%eax
	andl	$8, %eax
	orl	%edx, %eax
	movl	%eax, 1172(%ecx)
	jmp	L619
	.p2align 4,,10
	.p2align 3
L819:
	movb	%dl, -148(%ebp)
	call	*%ecx
	movzbl	-148(%ebp), %edx
	jmp	L540
L610:
	subl	$1619, %eax
	cmpl	$1, %eax
	ja	L619
	movl	_g_controllerHotplugCallback, %edx
	testl	%edx, %edx
	je	L619
	call	_SDL_NumJoysticks
	cmpl	__ZL12numjoysticks.lto_priv.0, %eax
	je	L619
	call	*_g_controllerHotplugCallback
	jmp	L619
	.p2align 4,,10
	.p2align 3
L479:
	subl	$1025, %eax
	cmpl	$1, %eax
	ja	L619
	cmpb	$5, -128(%ebp)
	ja	L619
	movzbl	-128(%ebp), %eax
	jmp	*L605(,%eax,4)
	.section .rdata,"dr"
	.align 4
L605:
	.long	L619
	.long	L641
	.long	L608
	.long	L607
	.long	L606
	.long	L604
	.text
L435:
	movl	__ZZ12handleeventsE14rumbleZeroTime, %edi
	testl	%edi, %edi
	je	L434
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
	jb	L434
	testb	$1, _joystick+44
	movl	$0, __ZZ12handleeventsE14rumbleZeroTime
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	je	L438
	movl	__ZL10controller.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_GameControllerRumble
	jmp	L434
	.p2align 4,,10
	.p2align 3
L601:
	testb	$1, _joystick+44
	jne	L619
	jmp	L613
L599:
	movups	LC487, %xmm0
	movups	%xmm0, -88(%ebp)
	movups	LC488, %xmm0
	movups	%xmm0, -72(%ebp)
	movups	LC489, %xmm0
	movups	%xmm0, -56(%ebp)
	movups	LC490, %xmm0
	movups	%xmm0, -40(%ebp)
	cmpb	$0, _appactive
	je	L619
	movzbl	-132(%ebp), %eax
	cmpl	_joystick+28, %eax
	jge	L619
	movzbl	-131(%ebp), %edx
	andl	$15, %edx
	movl	-88(%ebp,%edx,4), %ecx
	movl	_joystick+4, %edx
	movl	%ecx, (%edx,%eax,4)
	jmp	L619
L543:
	cmpb	$54, %dl
	je	L542
	cmpb	$58, %dl
	jne	L619
	movl	_osd, %ecx
	movl	1172(%ecx), %edx
	movl	%edx, %eax
	andl	$-65, %edx
	notl	%eax
	andl	$64, %eax
	orl	%edx, %eax
	movl	%eax, 1172(%ecx)
	jmp	L619
L633:
	movl	$27, %esi
	jmp	L495
L825:
	movl	%ebx, (%esp)
	call	_strlen
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%eax, %edi
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L441
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
	je	L443
	.p2align 4
	.p2align 3
L442:
	movl	_osd, %edx
	addl	$1, %edi
	addl	$1, 3240(%edx)
	call	__Z12OSD_DispatchPKcb.constprop.0
	movl	_osd, %eax
	leal	-88(%ebp), %ecx
	movl	$LC484, %edx
	subl	$1, 3240(%eax)
	xorl	%eax, %eax
	call	_Bstrtoken.constprop.0
	testl	%eax, %eax
	jne	L442
L443:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L444
	movl	%edi, 16(%esp)
	movl	$LC485, 12(%esp)
	movl	$172, 8(%esp)
	movl	$LC486, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L444:
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	andl	$-3, _g_mouseBits
	jmp	L440
L558:
	movl	$0, 54(%esi)
	movl	1148(%eax), %eax
	subl	$4, %eax
	movw	%ax, 58(%esi)
	jmp	L619
L827:
	xorl	%eax, %eax
	movw	%ax, 1152(%esi)
	jmp	L619
L824:
	movl	__ZL10sdl_window.lto_priv.0, %eax
	testl	%eax, %eax
	je	L597
	movl	_MOUSEHIDE, %ecx
	xorl	%edx, %edx
	movl	%eax, (%esp)
	testl	%ecx, %ecx
	setne	%dl
	movl	%edx, 4(%esp)
	call	_SDL_SetWindowGrab
L597:
	movl	_MOUSEHIDE, %edi
	xorl	%eax, %eax
	testl	%edi, %edi
	setne	%al
	movl	%eax, (%esp)
	call	_SDL_SetRelativeMouseMode
	movzbl	_appactive, %eax
	jmp	L595
L604:
	movl	$64, %edx
L609:
	movl	_g_mouseBits, %ecx
	movl	%edx, %eax
	notl	%eax
	orl	%ecx, %edx
	andl	%ecx, %eax
	cmpb	$1, -127(%ebp)
	cmove	%edx, %eax
	movl	%eax, _g_mouseBits
	jmp	L619
L641:
	movl	$1, %edx
	jmp	L609
L606:
	movl	$8, %edx
	jmp	L609
L607:
	movl	$2, %edx
	jmp	L609
L608:
	movl	$4, %edx
	jmp	L609
L815:
	leal	-4(%esi), %eax
	subl	$3, %esi
	cmpl	$25, %eax
	jbe	L495
	jmp	L489
L449:
	movl	%ecx, (%esp)
	call	*%edx
	movl	%eax, %edx
	movl	_g_mouseBits, %eax
	jmp	L450
L634:
	movl	$8, %esi
	jmp	L495
L635:
	movl	$9, %esi
	jmp	L495
L493:
	testb	$3, %cl
	je	L496
	leal	-39(%esi), %eax
	cmpl	$57, %eax
	ja	L497
	jmp	*L498(,%eax,4)
	.section .rdata,"dr"
	.align 4
L498:
	.long	L518
	.long	L497
	.long	L497
	.long	L497
	.long	L497
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
	.long	L504
	.long	L497
	.long	L503
	.long	L497
	.long	L502
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L501
	.long	L500
	.long	L499
	.long	L497
	.long	L497
	.long	L636
	.text
L497:
	leal	-1073741908(%esi), %eax
	cmpl	$3, %eax
	ja	L531
	movl	_CSWTCH.725(,%eax,4), %esi
	jmp	L495
L562:
	subl	$1, %eax
	movw	%ax, 54(%esi)
	jmp	L561
L570:
	addl	$1, %eax
	movw	%ax, 54(%esi)
	jmp	L569
L496:
	andb	$16, %ch
	je	L497
	leal	-1073741913(%esi), %eax
	cmpl	$44, %eax
	ja	L497
	jmp	*L519(,%eax,4)
	.section .rdata,"dr"
	.align 4
L519:
	.long	L530
	.long	L529
	.long	L528
	.long	L527
	.long	L526
	.long	L525
	.long	L524
	.long	L523
	.long	L522
	.long	L521
	.long	L520
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L497
	.long	L637
	.text
L826:
	orl	%edx, %eax
	movl	%eax, _joystick+12
	jmp	L619
L828:
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
	jmp	L577
L531:
	cmpl	$127, %esi
	ja	L490
	jmp	L495
	.p2align 4,,10
	.p2align 3
L438:
	movl	__ZL6joydev.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_JoystickRumble
	jmp	L434
L441:
	movl	%edi, %eax
	call	__Z13handle_memerri
L638:
	movl	$1, %edx
	movl	$1, %edi
	movl	$1, %ecx
	jmp	L536
L639:
	xorl	%edx, %edx
	movl	$-1, %edi
	movl	$-1, %ecx
	jmp	L536
L636:
	movl	$126, %esi
	jmp	L495
L499:
	movl	$125, %esi
	jmp	L495
L500:
	movl	$124, %esi
	jmp	L495
L501:
	movl	$123, %esi
	jmp	L495
L502:
	movl	$43, %esi
	jmp	L495
L637:
	movl	$44, %esi
	jmp	L495
L520:
	movl	$46, %esi
	jmp	L495
L521:
	movl	$48, %esi
	jmp	L495
L522:
	movl	$57, %esi
	jmp	L495
L523:
	movl	$56, %esi
	jmp	L495
L524:
	movl	$55, %esi
	jmp	L495
L525:
	movl	$54, %esi
	jmp	L495
L526:
	movl	$53, %esi
	jmp	L495
L527:
	movl	$52, %esi
	jmp	L495
L528:
	movl	$51, %esi
	jmp	L495
L529:
	movl	$50, %esi
	jmp	L495
L530:
	movl	$49, %esi
	jmp	L495
L503:
	movl	$58, %esi
	jmp	L495
L504:
	movl	$40, %esi
	jmp	L495
L505:
	movl	$42, %esi
	jmp	L495
L506:
	movl	$38, %esi
	jmp	L495
L507:
	movl	$94, %esi
	jmp	L495
L508:
	movl	$37, %esi
	jmp	L495
L509:
	movl	$36, %esi
	jmp	L495
L510:
	movl	$35, %esi
	jmp	L495
L511:
	movl	$64, %esi
	jmp	L495
L512:
	movl	$33, %esi
	jmp	L495
L513:
	movl	$41, %esi
	jmp	L495
L514:
	movl	$63, %esi
	jmp	L495
L515:
	movl	$62, %esi
	jmp	L495
L516:
	movl	$95, %esi
	jmp	L495
L517:
	movl	$60, %esi
	jmp	L495
L518:
	movl	$34, %esi
	jmp	L495
	.cfi_endproc
LFE116:
	.section .rdata,"dr"
LC493:
	.ascii "##Background\0"
LC495:
	.ascii "##Foreground\0"
LC500:
	.ascii "gdi32.dll\0"
LC501:
	.ascii "D3DKMTOpenAdapterFromHdc\0"
LC502:
	.ascii "D3DKMTCloseAdapter\0"
	.align 4
LC503:
	.ascii "D3DKMTWaitForVerticalBlankEvent\0"
LC504:
	.ascii "Failed flushing DWM!\0"
LC505:
	.ascii "source/build/src/winbits.cpp\0"
	.align 4
LC506:
	.ascii "null device context for display: %s windowx: %d windowy: %d.\0"
	.align 4
LC507:
	.ascii "D3DKMTCloseAdapter() failed: NTSTATUS: 0x%08x (%s)\0"
	.align 4
LC508:
	.ascii "D3DKMTWaitForVerticalBlankEvent() failed: NTSTATUS: 0x%08x (%s)\0"
	.align 4
LC509:
	.ascii "D3DKMTOpenAdapterFromHdc() failed: NTSTATUS: 0x%08x (%s)\0"
	.align 4
LC510:
	.ascii "Unable to use D3DKMT, falling back to DWM sync.\0"
	.align 4
LC511:
	.ascii "Frame was still locked at a depth of %d when videoShowFrame() was called!\0"
	.text
	.p2align 4
	.globl	_videoShowFrame.part.0
	.def	_videoShowFrame.part.0;	.scl	2;	.type	32;	.endef
_videoShowFrame.part.0:
LFB138:
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
	subl	$288, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	cmpb	$0, _nogl
	je	L1217
	movl	_lockcount, %eax
	testl	%eax, %eax
	jne	L1218
L998:
	movl	__ZL11sdl_surface.lto_priv.0, %ecx
	testb	$2, (%ecx)
	jne	L1219
	movl	20(%ecx), %eax
	movl	__ZL6buffer.lto_priv.1, %edi
	movl	%eax, %ebx
	testl	%edi, %edi
	je	L1024
	testl	%eax, %eax
	je	L1024
L1214:
	movl	4(%ecx), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	L1003
	ja	L1004
	subl	$15, %eax
	cmpb	$1, %al
	ja	L1015
	movl	__ZL8yScale16.lto_priv.0, %eax
	movl	__ZL13destBufferRes.lto_priv.0, %esi
	movl	__ZL9bufferRes.lto_priv.1+4, %edx
	movl	%eax, -196(%ebp)
/APP
 # 152 "source/build/src/softsurface.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$0, -188(%ebp)
	imull	%esi, %eax
	leal	(%ebx,%eax,2), %eax
	movl	%eax, -200(%ebp)
	cmpl	%eax, %ebx
	jnb	L1015
	movl	%edi, %eax
	movl	%ebx, %edi
	.p2align 4
	.p2align 3
L1007:
	addl	%esi, %esi
	movl	__ZL18scanPosLookupTable.lto_priv.0, %ebx
	leal	(%edi,%esi), %ecx
	movl	%ecx, -184(%ebp)
	addl	$-128, %ecx
	movl	%ecx, -176(%ebp)
	cmpl	%ecx, %edi
	jnb	L1008
	movl	%edi, -192(%ebp)
	movl	%edi, %edx
	movl	-176(%ebp), %edi
	movl	%ebx, %ecx
	movl	%esi, -176(%ebp)
	.p2align 4
	.p2align 3
L1009:
	movzwl	(%ecx), %esi
	subl	$-128, %edx
	subl	$-128, %ecx
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -128(%edx)
	movzwl	-126(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -126(%edx)
	movzwl	-124(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -124(%edx)
	movzwl	-122(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -122(%edx)
	movzwl	-120(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -120(%edx)
	movzwl	-118(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -118(%edx)
	movzwl	-116(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -116(%edx)
	movzwl	-114(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -114(%edx)
	movzwl	-112(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -112(%edx)
	movzwl	-110(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -110(%edx)
	movzwl	-108(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -108(%edx)
	movzwl	-106(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -106(%edx)
	movzwl	-104(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -104(%edx)
	movzwl	-102(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -102(%edx)
	movzwl	-100(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -100(%edx)
	movzwl	-98(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -98(%edx)
	movzwl	-96(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -96(%edx)
	movzwl	-94(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -94(%edx)
	movzwl	-92(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -92(%edx)
	movzwl	-90(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -90(%edx)
	movzwl	-88(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -88(%edx)
	movzwl	-86(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -86(%edx)
	movzwl	-84(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -84(%edx)
	movzwl	-82(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -82(%edx)
	movzwl	-80(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -80(%edx)
	movzwl	-78(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -78(%edx)
	movzwl	-76(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -76(%edx)
	movzwl	-74(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -74(%edx)
	movzwl	-72(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -72(%edx)
	movzwl	-70(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -70(%edx)
	movzwl	-68(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -68(%edx)
	movzwl	-66(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -66(%edx)
	movzwl	-64(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -64(%edx)
	movzwl	-62(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -62(%edx)
	movzwl	-60(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -60(%edx)
	movzwl	-58(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -58(%edx)
	movzwl	-56(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -56(%edx)
	movzwl	-54(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -54(%edx)
	movzwl	-52(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -52(%edx)
	movzwl	-50(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -50(%edx)
	movzwl	-48(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -48(%edx)
	movzwl	-46(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -46(%edx)
	movzwl	-44(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -44(%edx)
	movzwl	-42(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -42(%edx)
	movzwl	-40(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -40(%edx)
	movzwl	-38(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -38(%edx)
	movzwl	-36(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -36(%edx)
	movzwl	-34(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -34(%edx)
	movzwl	-32(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -32(%edx)
	movzwl	-30(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -30(%edx)
	movzwl	-28(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -28(%edx)
	movzwl	-26(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -26(%edx)
	movzwl	-24(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -24(%edx)
	movzwl	-22(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -22(%edx)
	movzwl	-20(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -20(%edx)
	movzwl	-18(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -18(%edx)
	movzwl	-16(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -16(%edx)
	movzwl	-14(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -14(%edx)
	movzwl	-12(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -12(%edx)
	movzwl	-10(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -10(%edx)
	movzwl	-8(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -8(%edx)
	movzwl	-6(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -6(%edx)
	movzwl	-4(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -4(%edx)
	movzwl	-2(%ecx), %esi
	movzbl	(%eax,%esi), %esi
	movzwl	__ZL4pPal(,%esi,4), %esi
	movw	%si, -2(%edx)
	cmpl	%edi, %edx
	jb	L1009
	movl	-176(%ebp), %esi
	movl	-192(%ebp), %edi
	subl	$129, %esi
	andl	$-128, %esi
	leal	128(%edi,%esi), %edi
	leal	128(%ebx,%esi), %ebx
L1008:
	movl	-184(%ebp), %esi
	cmpl	%esi, %edi
	jnb	L1010
	movl	%edi, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L1011:
	movzwl	(%ebx), %ecx
	addl	$2, %edx
	addl	$2, %ebx
	movzbl	(%eax,%ecx), %ecx
	movzwl	__ZL4pPal(,%ecx,4), %ecx
	movw	%cx, -2(%edx)
	cmpl	%esi, %edx
	jb	L1011
	movl	-184(%ebp), %edx
	subl	$1, %edx
	subl	%edi, %edx
	andl	$-2, %edx
	leal	2(%edi,%edx), %edi
L1010:
	movl	__ZL9bufferRes.lto_priv.1, %ecx
	movl	%ecx, -176(%ebp)
	movl	-188(%ebp), %ecx
	addl	-196(%ebp), %ecx
	movl	%ecx, %ebx
	shrl	$16, %ebx
	subl	$1, %ebx
	je	L1012
	movl	__ZL13destBufferRes.lto_priv.0, %edx
	movl	%eax, -184(%ebp)
	movl	%edi, %esi
	movl	%ecx, -188(%ebp)
	addl	%edx, %edx
	subl	%edx, %esi
	.p2align 4
	.p2align 3
L1013:
	movl	%edx, 8(%esp)
	movl	%edi, (%esp)
	movl	%esi, 4(%esp)
	call	_memcpy
	movl	__ZL13destBufferRes.lto_priv.0, %edx
	addl	%edx, %edx
	addl	%edx, %edi
	subl	$1, %ebx
	jne	L1013
	movl	-184(%ebp), %eax
	movl	-188(%ebp), %ecx
L1012:
	cmpl	-200(%ebp), %edi
	jnb	L1215
	movzwl	%cx, %ecx
	movl	__ZL13destBufferRes.lto_priv.0, %esi
	addl	-176(%ebp), %eax
	movl	%ecx, -188(%ebp)
	jmp	L1007
L1219:
	movl	%ecx, (%esp)
	call	_SDL_LockSurface
	movl	__ZL11sdl_surface.lto_priv.0, %ecx
	movl	20(%ecx), %edi
	movl	%ecx, %eax
	testl	%edi, %edi
	movl	%edi, %ebx
	movl	__ZL6buffer.lto_priv.1, %edi
	je	L1002
	testl	%edi, %edi
	jne	L1214
L1002:
	testb	$2, (%eax)
	je	L1024
	movl	%eax, (%esp)
	call	_SDL_UnlockSurface
L1024:
	movl	__ZL10sdl_window.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_UpdateWindowSurface
	testl	%eax, %eax
	jne	L1220
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
L1218:
	.cfi_restore_state
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	__ZN6loguru18g_stderr_verbosityE, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-1, %edx
	jge	L1221
	.p2align 4
	.p2align 3
L1000:
	call	_videoEndDrawing
	movl	_lockcount, %eax
	testl	%eax, %eax
	je	L998
	call	_videoEndDrawing
	movl	_lockcount, %eax
	testl	%eax, %eax
	jne	L1000
	jmp	L998
L1217:
	cmpl	$8, _bpp
	jle	L831
	movzbl	_palfadedelta, %ebx
	testb	%bl, %bl
	jne	L1222
L832:
	cmpb	$0, _g_ImGuiFrameActive
	jne	L1223
L844:
	cmpl	$1, _r_glfinish
	je	L1224
L967:
	cmpl	$2, __ZL17vsync_renderlayer.lto_priv.0
	je	L968
L969:
	movl	__ZL10sdl_window.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_GL_SwapWindow
	cmpl	$1, _r_glfinish
	je	L1225
L995:
	cmpl	$8, _bpp
	jg	L1226
	cmpl	$33984, _gl+4
	je	L997
	movl	$33984, _gl+4
	movl	$33984, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L997:
	movl	__ZL11bufferTexID.lto_priv.0, %eax
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
	jmp	__Z19buildgl_bindTexturejj.constprop.0
L1220:
	.cfi_restore_state
	movl	__ZL10sdl_window.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_GetWindowSurface
	movl	%eax, __ZL11sdl_surface.lto_priv.0
	movl	__ZL10sdl_window.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_UpdateWindowSurface
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
L1226:
	.cfi_restore_state
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
	jmp	__Z19polymost_resetStatev
L1224:
	.cfi_restore_state
	cmpl	$1, _r_finishbeforeswap
	jne	L967
L968:
	call	*_glad_glFinish
	cmpl	$2, __ZL17vsync_renderlayer.lto_priv.0
	jne	L969
	cmpb	$0, __ZGVZ14videoShowFrameE12nextSwapTime
	je	L1227
L970:
	movl	__ZL9sys_timer.lto_priv.0, %eax
	cmpl	$1, %eax
	je	L971
	cmpl	$3, %eax
	jne	L1228
	movl	__ZL8tsc_freq.lto_priv.0, %eax
	movl	__ZL8tsc_freq.lto_priv.0+4, %edx
L973:
	movl	%eax, -176(%ebp)
	movl	%edx, -172(%ebp)
	fildq	-176(%ebp)
	testl	%edx, %edx
	jns	L974
	fadds	LC498
L974:
	fstpl	-176(%ebp)
	fldl	-176(%ebp)
	fdivl	_refreshfreq
	flds	LC499
	fxch	%st(1)
	fcomi	%st(1), %st
	jnb	L975
	fstp	%st(1)
	fnstcw	-166(%ebp)
	movzwl	-166(%ebp), %eax
	orb	$12, %ah
	movw	%ax, -168(%ebp)
	fldcw	-168(%ebp)
	fistpq	-184(%ebp)
	fldcw	-166(%ebp)
L976:
	call	__Z26timerGetPerformanceCounterv
	movl	__ZZ14videoShowFrameE12nextSwapTime, %ecx
	movl	__ZZ14videoShowFrameE12nextSwapTime+4, %ebx
	movl	%edx, %edi
	cmpl	%ecx, %eax
	movl	%ecx, -176(%ebp)
	sbbl	%ebx, %edi
	movl	%ebx, -172(%ebp)
	jc	L1229
	movl	-184(%ebp), %esi
	subl	-176(%ebp), %eax
	movl	-180(%ebp), %edi
	sbbl	-172(%ebp), %edx
	cmpl	%esi, %eax
	movl	%edx, %eax
	sbbl	%edi, %eax
	jc	L980
	addl	%esi, -176(%ebp)
	adcl	%edi, -172(%ebp)
L980:
	movl	-176(%ebp), %ecx
	movl	-172(%ebp), %ebx
	addl	-184(%ebp), %ecx
	adcl	-180(%ebp), %ebx
	movl	%ecx, __ZZ14videoShowFrameE12nextSwapTime
	movl	%ebx, __ZZ14videoShowFrameE12nextSwapTime+4
	jmp	L969
L1221:
	movl	%eax, 16(%esp)
	movl	$LC511, 12(%esp)
	movl	$2313, 8(%esp)
	movl	$LC18, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	_lockcount, %edx
	testl	%edx, %edx
	jne	L1000
	jmp	L998
L1004:
	cmpb	$32, %al
	je	L1003
L1015:
	movl	%ecx, %eax
	jmp	L1002
L1222:
	movzbl	_palfadergb, %eax
	movzbl	_palfadergb+2, %edi
	movzbl	_palfadergb+1, %esi
	movb	%al, -176(%ebp)
	movl	$5889, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glPushMatrix
	call	*_glad_glLoadIdentity
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glPushMatrix
	call	*_glad_glLoadIdentity
	movl	$2929, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L833
	movl	$2929, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$2929, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L833:
	movl	$3008, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L834
	movl	$3008, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L834:
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	je	L1230
L835:
	movl	$771, 4(%esp)
	movl	$770, (%esp)
	call	*_glad_glBlendFunc
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$8, %esp
	call	_inthash_find
	cmpl	$1, %eax
	je	L837
	movl	$3042, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L837:
	movl	%edi, %eax
	movl	%ebx, 12(%esp)
	movzbl	%al, %edi
	movl	%esi, %eax
	movzbl	%al, %esi
	movl	%edi, 8(%esp)
	movl	%esi, 4(%esp)
	movzbl	-176(%ebp), %eax
	movl	%eax, (%esp)
	call	*_glad_glColor4ub
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	subl	$16, %esp
	cmpl	%eax, _gl
	jne	L838
	movss	LC6, %xmm7
	ucomiss	__ZL21polymost1UseColorOnly.lto_priv.0, %xmm7
	jp	L1040
	je	L838
L1040:
	movl	$0x3f800000, __ZL21polymost1UseColorOnly.lto_priv.0
	movl	$0x3f800000, 4(%esp)
	movl	__ZL24polymost1UseColorOnlyLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
L838:
	movl	$4, (%esp)
	call	*_glad_glBegin
	subl	$4, %esp
	movl	$0x3f800000, 4(%esp)
	movl	$0xc0200000, (%esp)
	call	*_glad_glVertex2f
	subl	$8, %esp
	movl	$0x3f800000, 4(%esp)
	movl	$0x40200000, (%esp)
	call	*_glad_glVertex2f
	subl	$8, %esp
	movl	$0xc0200000, 4(%esp)
	movl	$0x00000000, (%esp)
	call	*_glad_glVertex2f
	subl	$8, %esp
	call	*_glad_glEnd
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L840
	xorps	%xmm0, %xmm0
	ucomiss	__ZL21polymost1UseColorOnly.lto_priv.0, %xmm0
	jp	L1041
	je	L840
L1041:
	movl	$0x00000000, __ZL21polymost1UseColorOnly.lto_priv.0
	movl	$0x00000000, 4(%esp)
	movl	__ZL24polymost1UseColorOnlyLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
L840:
	call	*_glad_glPopMatrix
	movl	$5889, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glPopMatrix
	jmp	L832
L1215:
	movl	__ZL11sdl_surface.lto_priv.0, %eax
	jmp	L1002
L1003:
	movl	__ZL8yScale16.lto_priv.0, %eax
	movl	__ZL13destBufferRes.lto_priv.0, %esi
	movl	__ZL9bufferRes.lto_priv.1+4, %edx
	movl	%eax, -196(%ebp)
/APP
 # 152 "source/build/src/softsurface.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	imull	%esi, %eax
	leal	(%ebx,%eax,4), %eax
	movl	%eax, -200(%ebp)
	cmpl	%eax, %ebx
	jnb	L1015
	movl	$0, -188(%ebp)
	movl	%edi, %eax
	movl	%ebx, %edi
	.p2align 4
	.p2align 3
L1023:
	sall	$2, %esi
	movl	__ZL18scanPosLookupTable.lto_priv.0, %ebx
	leal	(%edi,%esi), %ecx
	movl	%ecx, -184(%ebp)
	subl	$256, %ecx
	movl	%ecx, -176(%ebp)
	cmpl	%ecx, %edi
	jnb	L1016
	movl	%edi, -192(%ebp)
	movl	%edi, %edx
	movl	-176(%ebp), %edi
	movl	%ebx, %ecx
	movl	%ebx, -176(%ebp)
	.p2align 4
	.p2align 3
L1017:
	movzwl	(%ecx), %ebx
	addl	$256, %edx
	subl	$-128, %ecx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -256(%edx)
	movzwl	-126(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -252(%edx)
	movzwl	-124(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -248(%edx)
	movzwl	-122(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -244(%edx)
	movzwl	-120(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -240(%edx)
	movzwl	-118(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -236(%edx)
	movzwl	-116(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -232(%edx)
	movzwl	-114(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -228(%edx)
	movzwl	-112(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -224(%edx)
	movzwl	-110(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -220(%edx)
	movzwl	-108(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -216(%edx)
	movzwl	-106(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -212(%edx)
	movzwl	-104(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -208(%edx)
	movzwl	-102(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -204(%edx)
	movzwl	-100(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -200(%edx)
	movzwl	-98(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -196(%edx)
	movzwl	-96(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -192(%edx)
	movzwl	-94(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -188(%edx)
	movzwl	-92(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -184(%edx)
	movzwl	-90(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -180(%edx)
	movzwl	-88(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -176(%edx)
	movzwl	-86(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -172(%edx)
	movzwl	-84(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -168(%edx)
	movzwl	-82(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -164(%edx)
	movzwl	-80(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -160(%edx)
	movzwl	-78(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -156(%edx)
	movzwl	-76(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -152(%edx)
	movzwl	-74(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -148(%edx)
	movzwl	-72(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -144(%edx)
	movzwl	-70(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -140(%edx)
	movzwl	-68(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -136(%edx)
	movzwl	-66(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -132(%edx)
	movzwl	-64(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -128(%edx)
	movzwl	-62(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -124(%edx)
	movzwl	-60(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -120(%edx)
	movzwl	-58(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -116(%edx)
	movzwl	-56(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -112(%edx)
	movzwl	-54(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -108(%edx)
	movzwl	-52(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -104(%edx)
	movzwl	-50(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -100(%edx)
	movzwl	-48(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -96(%edx)
	movzwl	-46(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -92(%edx)
	movzwl	-44(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -88(%edx)
	movzwl	-42(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -84(%edx)
	movzwl	-40(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -80(%edx)
	movzwl	-38(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -76(%edx)
	movzwl	-36(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -72(%edx)
	movzwl	-34(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -68(%edx)
	movzwl	-32(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -64(%edx)
	movzwl	-30(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -60(%edx)
	movzwl	-28(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -56(%edx)
	movzwl	-26(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -52(%edx)
	movzwl	-24(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -48(%edx)
	movzwl	-22(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -44(%edx)
	movzwl	-20(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -40(%edx)
	movzwl	-18(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -36(%edx)
	movzwl	-16(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -32(%edx)
	movzwl	-14(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -28(%edx)
	movzwl	-12(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -24(%edx)
	movzwl	-10(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -20(%edx)
	movzwl	-8(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -16(%edx)
	movzwl	-6(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -12(%edx)
	movzwl	-4(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -8(%edx)
	movzwl	-2(%ecx), %ebx
	movzbl	(%eax,%ebx), %ebx
	movl	__ZL4pPal(,%ebx,4), %ebx
	movl	%ebx, -4(%edx)
	cmpl	%edi, %edx
	jb	L1017
	subl	$257, %esi
	movl	-192(%ebp), %edi
	movl	-176(%ebp), %ebx
	movl	%esi, %edx
	andl	$-256, %esi
	shrl	$8, %edx
	leal	256(%edi,%esi), %edi
	sall	$7, %edx
	leal	128(%ebx,%edx), %ebx
L1016:
	movl	-184(%ebp), %esi
	cmpl	%esi, %edi
	jnb	L1018
	movl	%edi, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L1019:
	movzwl	(%ebx), %ecx
	addl	$4, %edx
	addl	$2, %ebx
	movzbl	(%eax,%ecx), %ecx
	movl	__ZL4pPal(,%ecx,4), %ecx
	movl	%ecx, -4(%edx)
	cmpl	%esi, %edx
	jb	L1019
	movl	-184(%ebp), %edx
	subl	$1, %edx
	subl	%edi, %edx
	andl	$-4, %edx
	leal	4(%edi,%edx), %edi
L1018:
	movl	__ZL9bufferRes.lto_priv.1, %ecx
	movl	%ecx, -176(%ebp)
	movl	-188(%ebp), %ecx
	addl	-196(%ebp), %ecx
	movl	%ecx, %ebx
	shrl	$16, %ebx
	subl	$1, %ebx
	je	L1020
	movl	__ZL13destBufferRes.lto_priv.0, %edx
	movl	%eax, -184(%ebp)
	movl	%edi, %esi
	movl	%ecx, -188(%ebp)
	sall	$2, %edx
	subl	%edx, %esi
	.p2align 4
	.p2align 3
L1021:
	movl	%edx, 8(%esp)
	movl	%edi, (%esp)
	movl	%esi, 4(%esp)
	call	_memcpy
	movl	__ZL13destBufferRes.lto_priv.0, %edx
	sall	$2, %edx
	addl	%edx, %edi
	subl	$1, %ebx
	jne	L1021
	movl	-184(%ebp), %eax
	movl	-188(%ebp), %ecx
L1020:
	cmpl	-200(%ebp), %edi
	jnb	L1215
	movzwl	%cx, %ecx
	movl	__ZL13destBufferRes.lto_priv.0, %esi
	addl	-176(%ebp), %eax
	movl	%ecx, -188(%ebp)
	jmp	L1023
L831:
	movl	__ZL6buffer.lto_priv.0, %ecx
	testl	%ecx, %ecx
	je	L832
	movl	__ZL18colorCorrectionLoc.lto_priv.0, %eax
	cmpl	$-1, %eax
	je	L842
	movss	_g_glColorCorrection+12, %xmm0
	movss	%xmm0, 16(%esp)
	movss	_g_glColorCorrection+8, %xmm0
	movss	%xmm0, 12(%esp)
	movss	_g_glColorCorrection+4, %xmm0
	movss	%xmm0, 8(%esp)
	movss	_g_glColorCorrection, %xmm0
	movl	%eax, (%esp)
	movss	%xmm0, 4(%esp)
	call	*_glad_glUniform4f
	subl	$20, %esp
L842:
	cmpl	$33984, _gl+4
	je	L843
	movl	$33984, _gl+4
	movl	$33984, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L843:
	movl	__ZL6buffer.lto_priv.0, %eax
	movl	$5121, 28(%esp)
	movl	$6403, 24(%esp)
	movl	%eax, 32(%esp)
	movl	__ZL9bufferRes.lto_priv.0+4, %eax
	movl	%eax, 20(%esp)
	movl	__ZL9bufferRes.lto_priv.0, %eax
	movl	$0, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexSubImage2D
	subl	$36, %esp
	movl	$4, 8(%esp)
	movl	$0, 4(%esp)
	movl	$5, (%esp)
	call	*_glad_glDrawArrays
	subl	$12, %esp
	jmp	L832
L1225:
	movl	_r_finishbeforeswap, %ecx
	testl	%ecx, %ecx
	jne	L995
	cmpl	$2, __ZL17vsync_renderlayer.lto_priv.0
	je	L995
	call	*_glad_glFinish
	jmp	L995
L1223:
	movl	_GImGui, %eax
	movl	%eax, -176(%ebp)
	movl	16048(%eax), %esi
	movl	%eax, %edi
	cmpl	%esi, 16052(%eax)
	je	L845
	call	__ZN5ImGui8EndFrameEv
	movl	16048(%edi), %esi
L845:
	movl	-176(%ebp), %eax
	movl	16060(%eax), %edi
	movl	23476(%eax), %edx
	movl	%esi, 16060(%eax)
	movl	$0, 180(%eax)
	movl	%edi, -196(%ebp)
	testl	%edx, %edx
	jle	L846
	xorl	%ebx, %ebx
	movl	%eax, %edi
	.p2align 4
	.p2align 3
L848:
	movl	23484(%edi), %edx
	leal	(%ebx,%ebx,4), %eax
	leal	(%edx,%eax,4), %eax
	cmpl	$4, 4(%eax)
	jne	L847
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	*12(%eax)
L847:
	addl	$1, %ebx
	cmpl	23476(%edi), %ebx
	jl	L848
L846:
	movl	-176(%ebp), %eax
	movl	18608(%eax), %eax
	testl	%eax, %eax
	je	L849
	movl	%esi, -200(%ebp)
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L856:
	movl	-176(%ebp), %eax
	movl	%edi, -184(%ebp)
	movl	18616(%eax), %eax
	movl	(%eax,%edi,4), %esi
	leal	176(%esi), %eax
	movl	%esi, %edi
	addl	$200, %esi
	movl	%eax, -188(%ebp)
	movl	%eax, %ebx
L854:
	movl	4(%ebx), %eax
	testl	%eax, %eax
	jns	L850
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L851
	addl	$1, 188(%eax)
L851:
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, -192(%ebp)
	movl	%eax, %edx
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	L852
	movl	(%ebx), %ecx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	sall	$2, %ecx
	movl	%ecx, 8(%esp)
	call	_memcpy
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	L853
	movl	_GImGui, %ecx
	testl	%ecx, %ecx
	je	L853
	subl	$1, 188(%ecx)
L853:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L852:
	movl	-192(%ebp), %eax
	movl	$0, 4(%ebx)
	movl	%eax, 8(%ebx)
L850:
	movl	$0, (%ebx)
	addl	$12, %ebx
	cmpl	%esi, %ebx
	jne	L854
	movl	%edi, %esi
	movl	-184(%ebp), %edi
	movl	120(%esi), %ecx
	testl	%ecx, %ecx
	je	L855
	xorl	%edx, %edx
	movl	$LC493, %ecx
	movl	%esi, %eax
	call	__ZL19GetViewportDrawListP14ImGuiViewportPjPKc.lto_priv.0
	movl	%eax, %edx
	movl	-188(%ebp), %eax
	call	__ZL21AddDrawListToDrawDataP8ImVectorIP10ImDrawListES1_.lto_priv.0
L855:
	movl	-176(%ebp), %eax
	addl	$1, %edi
	cmpl	18608(%eax), %edi
	jne	L856
	movl	-200(%ebp), %esi
L849:
	movl	-176(%ebp), %eax
	movl	19020(%eax), %edi
	testl	%edi, %edi
	je	L857
	movl	$0, -184(%ebp)
	testb	$32, 13(%edi)
	je	L1231
L858:
	movl	-184(%ebp), %eax
	movl	%eax, -164(%ebp)
	movl	-176(%ebp), %eax
	movl	19028(%eax), %edi
L859:
	movl	-176(%ebp), %eax
	movl	%edi, -160(%ebp)
	movl	16076(%eax), %edx
	testl	%edx, %edx
	je	L860
	movl	%esi, -192(%ebp)
	xorl	%ebx, %ebx
	movl	%eax, %esi
	.p2align 4
	.p2align 3
L862:
	movl	16084(%esi), %eax
	movl	(%eax,%ebx,4), %eax
	cmpb	$0, 223(%eax)
	je	L861
	cmpb	$0, 230(%eax)
	jne	L861
	cmpl	%eax, %edi
	movl	12(%eax), %edx
	setne	-188(%ebp)
	cmpl	-184(%ebp), %eax
	setne	%cl
	testb	%cl, -188(%ebp)
	je	L861
	testl	$16777216, %edx
	je	L1232
	.p2align 4
	.p2align 3
L861:
	addl	$1, %ebx
	cmpl	16076(%esi), %ebx
	jne	L862
	movl	-192(%ebp), %esi
L860:
	leal	-164(%ebp), %ebx
L864:
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L863
	cmpb	$0, 223(%eax)
	je	L863
	cmpb	$0, 230(%eax)
	je	L1233
L863:
	addl	$4, %ebx
	leal	-156(%ebp), %eax
	cmpl	%ebx, %eax
	jne	L864
	cmpl	%esi, -196(%ebp)
	je	L865
	movl	_GImGui, %edi
	movl	18580(%edi), %eax
	movl	%eax, %edx
	subl	$1, %edx
	js	L866
	movl	18588(%edi), %ecx
	leal	(%eax,%eax,4), %eax
	leal	-36(%ecx,%eax,8), %eax
L869:
	movl	(%eax), %ebx
	testl	%ebx, %ebx
	je	L867
	testb	$8, 15(%ebx)
	je	L867
	cmpb	$0, 223(%ebx)
	je	L867
	cmpb	$0, 230(%ebx)
	jne	L867
L868:
	movss	19060(%edi), %xmm0
	xorps	%xmm1, %xmm1
	comiss	%xmm0, %xmm1
	jnb	L1234
L875:
	movl	19024(%edi), %esi
	testl	%esi, %esi
	je	L1235
	movzbl	223(%esi), %eax
	testl	%ebx, %ebx
	jne	L878
	cmpb	$1, %al
	jne	L872
	testl	%ebx, %ebx
	jne	L878
	testb	%al, %al
	je	L893
L1028:
	movl	15472(%edi), %eax
	movl	%eax, -104(%ebp)
	movl	15476(%edi), %eax
	movl	%eax, -100(%ebp)
	movl	15480(%edi), %eax
	movl	%eax, -96(%ebp)
	movl	15484(%edi), %eax
	movl	%eax, -92(%ebp)
	mulss	14404(%edi), %xmm0
	leal	-104(%ebp), %eax
	mulss	15484(%edi), %xmm0
	movl	%eax, -192(%ebp)
	movss	%xmm0, -92(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	cmpl	$16777215, %eax
	jbe	L894
	movl	%eax, %edx
	movl	%esi, %eax
	call	__ZN5ImGuiL34RenderDimmedBackgroundBehindWindowEP11ImGuiWindowj.part.0.lto_priv.0
	movl	19024(%edi), %esi
L894:
	movl	19028(%edi), %eax
	movl	48(%esi), %ecx
	movl	%eax, -188(%ebp)
	movl	%ecx, -184(%ebp)
	testl	%eax, %eax
	je	L895
	movl	48(%eax), %ebx
	testl	%ebx, %ebx
	je	L896
	cmpl	%ecx, %ebx
	je	L1035
	movl	_GImGui, %eax
	movss	19060(%edi), %xmm0
	movl	15472(%eax), %edx
	movl	%edx, -104(%ebp)
	movl	15476(%eax), %edx
	movl	%edx, -100(%ebp)
	movl	15480(%eax), %edx
	movl	%edx, -96(%ebp)
	movl	15484(%eax), %edx
	movl	%edx, -92(%ebp)
	mulss	14404(%eax), %xmm0
	mulss	15484(%eax), %xmm0
	movl	-192(%ebp), %eax
	movss	%xmm0, -92(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	cmpl	$16777215, %eax
	jbe	L896
	movl	%eax, %edx
	movl	-188(%ebp), %eax
	call	__ZN5ImGuiL34RenderDimmedBackgroundBehindWindowEP11ImGuiWindowj.part.0.lto_priv.0
	movl	19024(%edi), %esi
	movl	48(%esi), %eax
	movl	%eax, -184(%ebp)
	movl	19028(%edi), %eax
	movl	%eax, -188(%ebp)
	testl	%eax, %eax
	je	L895
	movl	48(%eax), %eax
	movl	%eax, -188(%ebp)
L895:
	movss	68(%esi), %xmm1
	movss	76(%esi), %xmm3
	movss	15516(%edi), %xmm6
	movss	72(%esi), %xmm0
	addss	%xmm1, %xmm3
	movss	80(%esi), %xmm4
	movl	-184(%ebp), %eax
	subss	%xmm6, %xmm1
	addss	%xmm0, %xmm4
	subss	%xmm6, %xmm0
	addss	%xmm6, %xmm3
	movss	%xmm1, -124(%ebp)
	movss	%xmm0, -120(%ebp)
	movss	16(%eax), %xmm2
	addss	%xmm6, %xmm4
	movaps	%xmm3, %xmm5
	subss	%xmm1, %xmm5
	comiss	%xmm2, %xmm5
	jb	L899
	movaps	%xmm4, %xmm5
	subss	%xmm0, %xmm5
	comiss	20(%eax), %xmm5
	jb	L899
	movss	LC425, %xmm5
	subss	%xmm6, %xmm5
	subss	%xmm5, %xmm1
	subss	%xmm5, %xmm0
	addss	%xmm5, %xmm3
	addss	%xmm5, %xmm4
	movss	%xmm1, -124(%ebp)
	movss	%xmm0, -120(%ebp)
L899:
	movl	676(%esi), %ecx
	movl	(%ecx), %ebx
	testl	%ebx, %ebx
	je	L1236
L902:
	movl	-184(%ebp), %eax
	movss	%xmm4, -208(%ebp)
	movss	%xmm3, -204(%ebp)
	movss	12(%eax), %xmm1
	movss	8(%eax), %xmm0
	movl	$0, 4(%esp)
	movss	20(%eax), %xmm5
	addss	%xmm0, %xmm2
	addss	%xmm1, %xmm5
	movss	%xmm5, (%esp)
	call	__ZN10ImDrawList12PushClipRectERK6ImVec2S2_b.isra.0
	movl	_GImGui, %eax
	movl	676(%esi), %ecx
	subl	$8, %esp
	movss	124(%esi), %xmm2
	movss	19036(%edi), %xmm0
	movl	15456(%eax), %edx
	movl	%ecx, -200(%ebp)
	movss	%xmm2, -196(%ebp)
	movl	%edx, -104(%ebp)
	movl	15460(%eax), %edx
	movl	%edx, -100(%ebp)
	movl	15464(%eax), %edx
	movl	%edx, -96(%ebp)
	movl	15468(%eax), %edx
	movl	%edx, -92(%ebp)
	mulss	14404(%eax), %xmm0
	mulss	15468(%eax), %xmm0
	movl	-192(%ebp), %eax
	movss	%xmm0, -92(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movl	-200(%ebp), %ecx
	cmpl	$16777215, %eax
	jbe	L903
	movss	-204(%ebp), %xmm3
	movss	-208(%ebp), %xmm4
	leal	-124(%ebp), %ebx
	movss	%xmm3, -116(%ebp)
	movaps	%xmm4, %xmm1
	movaps	%xmm3, %xmm0
	movss	%xmm4, -112(%ebp)
	movl	$0x40400000, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	movss	-196(%ebp), %xmm2
	call	__ZN10ImDrawList7AddRectERK6ImVec2S2_jfif.part.0.constprop.0.isra.0
	movl	676(%esi), %ecx
	subl	$12, %esp
L903:
	call	__ZN10ImDrawList11PopClipRectEv
	movl	18608(%edi), %edx
	testl	%edx, %edx
	jle	L872
L904:
	xorl	%esi, %esi
L906:
	movl	18616(%edi), %eax
	movl	(%eax,%esi,4), %ebx
	cmpl	%ebx, -184(%ebp)
	je	L905
	cmpl	%ebx, -188(%ebp)
	je	L905
	movl	$LC495, %ecx
	movl	$1, %edx
	movl	%ebx, %eax
	addl	$8, %ebx
	call	__ZL19GetViewportDrawListP14ImGuiViewportPjPKc.lto_priv.0
	movss	19060(%edi), %xmm0
	movl	%eax, -192(%ebp)
	movl	_GImGui, %eax
	movl	15472(%eax), %edx
	movl	%edx, -104(%ebp)
	movl	15476(%eax), %edx
	movl	%edx, -100(%ebp)
	movl	15480(%eax), %edx
	movl	%edx, -96(%ebp)
	movl	15484(%eax), %edx
	movl	%edx, -92(%ebp)
	mulss	14404(%eax), %xmm0
	mulss	15484(%eax), %xmm0
	leal	-104(%ebp), %eax
	movss	%xmm0, -92(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movss	12(%ebx), %xmm0
	movss	8(%ebx), %xmm1
	leal	-104(%ebp), %edx
	addss	4(%ebx), %xmm0
	addss	(%ebx), %xmm1
	movss	%xmm0, -100(%ebp)
	xorps	%xmm0, %xmm0
	movss	%xmm1, -104(%ebp)
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ebx, (%esp)
	movl	-192(%ebp), %ecx
	call	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	subl	$16, %esp
L905:
	addl	$1, %esi
	cmpl	%esi, 18608(%edi)
	jg	L906
	jmp	L872
	.p2align 4,,10
	.p2align 3
L867:
	subl	$1, %edx
	subl	$40, %eax
	cmpl	$-1, %edx
	jne	L869
	xorl	%ebx, %ebx
	jmp	L868
L1036:
	xorl	%eax, %eax
	testb	$1, %dl
	je	L911
	movl	$1, %eax
	cmpl	%edx, %eax
	je	L865
L911:
	addl	$2, %eax
	cmpl	%edx, %eax
	jne	L911
L865:
	movl	-176(%ebp), %eax
	movl	$0, 172(%eax)
	movl	$0, 176(%eax)
	movl	18608(%eax), %eax
	testl	%eax, %eax
	jle	L936
	movl	$0, -184(%ebp)
	.p2align 4
	.p2align 3
L962:
	movl	-176(%ebp), %eax
	movl	-184(%ebp), %edi
	movl	18616(%eax), %eax
	movl	(%eax,%edi,4), %ebx
	movl	176(%ebx), %edi
	movl	188(%ebx), %eax
	movl	180(%ebx), %edx
	leal	(%edi,%eax), %esi
	cmpl	%esi, %edx
	jge	L938
	testl	%edx, %edx
	jne	L939
	movl	$8, %eax
	cmpl	%eax, %esi
	cmovge	%esi, %eax
	movl	%eax, %ecx
L940:
	movl	_GImGui, %eax
	leal	0(,%ecx,4), %edx
	testl	%eax, %eax
	je	L942
	addl	$1, 188(%eax)
L942:
	movl	%ecx, -192(%ebp)
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	184(%ebx), %edx
	movl	-192(%ebp), %ecx
	movl	%eax, -188(%ebp)
	testl	%edx, %edx
	je	L943
	movl	176(%ebx), %ecx
	movl	%edx, 4(%esp)
	leal	0(,%ecx,4), %eax
	movl	%eax, 8(%esp)
	movl	-188(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	184(%ebx), %edx
	movl	-192(%ebp), %ecx
	testl	%edx, %edx
	je	L944
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L944
	subl	$1, 188(%eax)
L944:
	movl	%ecx, -192(%ebp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-192(%ebp), %ecx
L943:
	movl	-188(%ebp), %eax
	movl	%ecx, 180(%ebx)
	movl	%eax, 184(%ebx)
	movl	188(%ebx), %eax
L938:
	movl	%esi, 176(%ebx)
	testl	%eax, %eax
	je	L945
	movl	184(%ebx), %edx
	movl	196(%ebx), %ecx
	sall	$2, %eax
	movl	%eax, 8(%esp)
	leal	(%edx,%edi,4), %edx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
	movl	192(%ebx), %eax
	testl	%eax, %eax
	jns	L948
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L952
	addl	$1, 188(%eax)
L952:
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	196(%ebx), %edx
	movl	%eax, %esi
	testl	%edx, %edx
	je	L950
	movl	188(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%esi, (%esp)
	sall	$2, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	196(%ebx), %edx
	testl	%edx, %edx
	je	L951
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L951
	subl	$1, 188(%eax)
L951:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L950:
	movl	%esi, 196(%ebx)
	movl	$0, 192(%ebx)
L948:
	movl	$0, 188(%ebx)
L945:
	movl	124(%ebx), %eax
	testl	%eax, %eax
	je	L954
	movl	$1, %edx
	movl	$LC495, %ecx
	movl	%ebx, %eax
	call	__ZL19GetViewportDrawListP14ImGuiViewportPjPKc.lto_priv.0
	movl	%eax, %edx
	leal	176(%ebx), %eax
	call	__ZL21AddDrawListToDrawDataP8ImVectorIP10ImDrawListES1_.lto_priv.0
L954:
	movl	4(%ebx), %ecx
	movl	_GImGui, %eax
	leal	128(%ebx), %edx
	movb	$1, 128(%ebx)
	movl	176(%ebx), %edi
	movl	%edx, 48(%ebx)
	movl	%eax, -188(%ebp)
	andl	$1024, %ecx
	movl	%edi, -192(%ebp)
	testl	%edi, %edi
	jle	L955
	movl	184(%ebx), %eax
	movl	%edi, 132(%ebx)
	movl	8(%ebx), %esi
	movl	12(%ebx), %edi
	movl	$0, 136(%ebx)
	movl	%eax, 144(%ebx)
	movl	$0, 140(%ebx)
	movl	%esi, 148(%ebx)
	movl	%edi, 152(%ebx)
	testl	%ecx, %ecx
	je	L1027
	movl	$0x00000000, 156(%ebx)
	movl	-188(%ebp), %edi
	movl	$0x00000000, 160(%ebx)
	movl	88(%edi), %edx
	movl	92(%edi), %ecx
	movl	%ebx, 172(%ebx)
	movl	%edx, 164(%ebx)
	movl	%ecx, 168(%ebx)
L1030:
	xorl	%ecx, %ecx
	.p2align 4
	.p2align 3
L960:
	movl	(%eax,%ecx,4), %esi
	movl	(%esi), %eax
	testl	%eax, %eax
	jle	L958
	movl	8(%esi), %edx
	leal	(%eax,%eax,4), %edi
	leal	-12(%edx,%edi,8), %edx
	jmp	L959
	.p2align 4,,10
	.p2align 3
L1237:
	movl	4(%edx), %edi
	testl	%edi, %edi
	jne	L958
	subl	$1, %eax
	subl	$40, %edx
	movl	%eax, (%esi)
	testl	%eax, %eax
	je	L958
L959:
	movl	(%edx), %edi
	testl	%edi, %edi
	je	L1237
L958:
	movl	24(%esi), %eax
	addl	$1, %ecx
	addl	%eax, 140(%ebx)
	movl	12(%esi), %eax
	addl	%eax, 136(%ebx)
	cmpl	176(%ebx), %ecx
	jge	L1196
	movl	184(%ebx), %eax
	jmp	L960
	.p2align 4,,10
	.p2align 3
L1196:
	movl	48(%ebx), %edx
	movl	12(%edx), %eax
L961:
	movl	-176(%ebp), %edi
	addl	$1, -184(%ebp)
	addl	%eax, 172(%edi)
	movl	8(%edx), %eax
	addl	%eax, 176(%edi)
	movl	-184(%ebp), %eax
	cmpl	18608(%edi), %eax
	jl	L962
L936:
	movl	-176(%ebp), %esi
	movl	23476(%esi), %eax
	testl	%eax, %eax
	jle	L963
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L965:
	movl	23484(%esi), %edx
	leal	(%ebx,%ebx,4), %eax
	leal	(%edx,%eax,4), %eax
	cmpl	$5, 4(%eax)
	jne	L964
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	*12(%eax)
L964:
	addl	$1, %ebx
	cmpl	23476(%esi), %ebx
	jl	L965
L963:
	movl	_GImGui, %eax
	movl	18616(%eax), %eax
	movl	(%eax), %edx
	cmpb	$0, 128(%edx)
	leal	128(%edx), %eax
	movl	$0, %edx
	cmove	%edx, %eax
	call	__Z32ImGui_ImplOpenGL3_RenderDrawDataP10ImDrawData
	movb	$0, _g_ImGuiFrameActive
	jmp	L844
L1027:
	movl	-188(%ebp), %eax
	movss	20(%ebx), %xmm0
	movss	16(%ebx), %xmm1
	movss	%xmm0, 160(%ebx)
	movss	%xmm1, 156(%ebx)
	movl	88(%eax), %esi
	movl	92(%eax), %edi
	movl	-192(%ebp), %eax
	movl	%ebx, 172(%ebx)
	movl	%esi, 164(%ebx)
	movl	%edi, 168(%ebx)
	testl	%eax, %eax
	jle	L957
	movl	184(%ebx), %eax
	jmp	L1030
L955:
	movl	-192(%ebp), %eax
	movl	8(%ebx), %esi
	movl	$0, 144(%ebx)
	movl	$0, 136(%ebx)
	movl	12(%ebx), %edi
	movl	%eax, 132(%ebx)
	movl	$0, 140(%ebx)
	movl	%esi, 148(%ebx)
	movl	%edi, 152(%ebx)
	testl	%ecx, %ecx
	je	L1027
	movl	$0x00000000, 156(%ebx)
	movl	-188(%ebp), %eax
	movl	$0x00000000, 160(%ebx)
	movl	88(%eax), %esi
	movl	92(%eax), %edi
	movl	%ebx, 172(%ebx)
	xorl	%eax, %eax
	movl	%esi, 164(%ebx)
	movl	%edi, 168(%ebx)
	jmp	L961
L939:
	movl	%edx, %ecx
	shrl	$31, %ecx
	addl	%edx, %ecx
	sarl	%ecx
	addl	%edx, %ecx
	cmpl	%esi, %ecx
	cmovl	%esi, %ecx
	cmpl	%ecx, %edx
	jge	L938
	jmp	L940
L1228:
	call	_SDL_GetPerformanceFrequency
	jmp	L973
L1233:
	movl	12(%eax), %edx
	sarl	$25, %edx
	andl	$1, %edx
	call	__ZL19AddWindowToDrawDataP11ImGuiWindowi.lto_priv.0
	jmp	L863
L1231:
	movl	840(%edi), %eax
	movl	%eax, -184(%ebp)
	jmp	L858
L1230:
	xorps	%xmm0, %xmm0
	ucomiss	__ZL19polymost1FogEnabled.lto_priv.0, %xmm0
	jp	L1039
	je	L835
L1039:
	movl	$0x00000000, __ZL19polymost1FogEnabled.lto_priv.0
	movl	$0x00000000, 4(%esp)
	movl	__ZL22polymost1FogEnabledLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
	jmp	L835
L1234:
	comiss	19036(%edi), %xmm1
	jb	L875
L872:
	movl	-176(%ebp), %edi
	cmpb	$0, 104(%edi)
	je	L865
	movl	19064(%edi), %eax
	cmpl	$-1, %eax
	je	L865
	movl	_GImGui, %ecx
	movl	18608(%ecx), %edx
	testl	%edx, %edx
	jle	L865
	cmpl	$8, %eax
	ja	L1036
	movl	15532(%ecx), %edx
	movss	14608(%edi), %xmm2
	leal	(%eax,%eax,2), %eax
	movl	$0, -192(%ebp)
	movss	3528(%edi), %xmm7
	movl	%eax, -252(%ebp)
	movss	%xmm2, -224(%ebp)
	movss	3532(%edi), %xmm2
	movl	48(%edx), %edi
	movl	%ecx, -220(%ebp)
	movl	%edi, -228(%ebp)
	movss	%xmm7, -236(%ebp)
	movss	%xmm2, -232(%ebp)
	jmp	L935
L1242:
	xorl	%eax, %eax
L922:
	movl	%eax, 112(%ebx)
	movl	%ebx, %ecx
	call	__ZN10ImDrawList19_OnChangedTextureIDEv
L912:
	movl	-220(%ebp), %edi
	addl	$1, -192(%ebp)
	movl	-192(%ebp), %eax
	cmpl	%eax, 18608(%edi)
	jle	L865
L935:
	movl	-228(%ebp), %edi
	movl	$0, -104(%ebp)
	movl	$0, -100(%ebp)
	movl	$0, -96(%ebp)
	movl	$0, -92(%ebp)
	movl	$0, -88(%ebp)
	movl	$0, -84(%ebp)
	movl	$0, -80(%ebp)
	movl	$0, -76(%ebp)
	testb	$2, (%edi)
	jne	L912
	xorps	%xmm3, %xmm3
	xorps	%xmm0, %xmm0
	movss	48(%edi), %xmm1
	movss	44(%edi), %xmm2
	imull	$28, 1128(%edi), %eax
	addl	80(%edi), %eax
	movzwl	6(%eax), %edx
	movl	-252(%ebp), %ecx
	unpcklps	%xmm1, %xmm2
	movss	LC496, %xmm7
	movzwl	4(%eax), %eax
	movlhps	%xmm2, %xmm2
	cvtsi2ssl	%edx, %xmm3
	leal	__ZL34FONT_ATLAS_DEFAULT_TEX_CURSOR_DATA(,%ecx,8), %edx
	cvtsi2ssl	%eax, %xmm0
	addss	4(%edx), %xmm3
	movss	8(%edx), %xmm6
	addss	__ZL34FONT_ATLAS_DEFAULT_TEX_CURSOR_DATA(,%ecx,8), %xmm0
	movss	12(%edx), %xmm4
	movaps	%xmm6, %xmm5
	movl	-220(%ebp), %eax
	movl	-192(%ebp), %ecx
	movss	%xmm4, -204(%ebp)
	addss	%xmm3, %xmm4
	addss	%xmm0, %xmm5
	addss	%xmm0, %xmm7
	unpcklps	%xmm3, %xmm0
	unpcklps	%xmm4, %xmm5
	movlhps	%xmm5, %xmm0
	mulps	%xmm2, %xmm0
	movaps	%xmm6, %xmm5
	addss	%xmm7, %xmm5
	unpcklps	%xmm4, %xmm5
	movups	%xmm0, -104(%ebp)
	movaps	%xmm7, %xmm0
	unpcklps	%xmm3, %xmm0
	movss	-232(%ebp), %xmm3
	subss	20(%edx), %xmm3
	movlhps	%xmm5, %xmm0
	mulps	%xmm2, %xmm0
	movss	-236(%ebp), %xmm5
	subss	16(%edx), %xmm5
	movups	%xmm0, -88(%ebp)
	movl	18616(%eax), %eax
	movl	(%eax,%ecx,4), %eax
	movss	%xmm5, -156(%ebp)
	movss	%xmm3, -152(%ebp)
	movss	12(%eax), %xmm2
	movss	20(%eax), %xmm0
	addss	%xmm2, %xmm0
	comiss	%xmm3, %xmm0
	jbe	L912
	movss	-224(%ebp), %xmm7
	movss	-204(%ebp), %xmm1
	movss	%xmm3, -208(%ebp)
	movss	LC497, %xmm0
	mulss	40(%eax), %xmm7
	addss	%xmm0, %xmm1
	mulss	%xmm7, %xmm1
	addss	%xmm3, %xmm1
	comiss	%xmm2, %xmm1
	jbe	L912
	movss	8(%eax), %xmm1
	movss	16(%eax), %xmm2
	addss	%xmm1, %xmm2
	comiss	%xmm5, %xmm2
	jbe	L912
	addss	%xmm6, %xmm0
	movss	%xmm6, -212(%ebp)
	movss	%xmm7, -196(%ebp)
	movss	%xmm5, -200(%ebp)
	mulss	%xmm7, %xmm0
	addss	%xmm5, %xmm0
	comiss	%xmm1, %xmm0
	movss	%xmm0, -248(%ebp)
	jbe	L912
	movl	$LC495, %ecx
	movl	$1, %edx
	call	__ZL19GetViewportDrawListP14ImGuiViewportPjPKc.lto_priv.0
	movl	4(%edi), %esi
	movl	%eax, %ecx
	movl	%eax, %ebx
	movl	%esi, (%esp)
	call	__ZN10ImDrawList13PushTextureIDEPv
	movss	-204(%ebp), %xmm4
	xorps	%xmm1, %xmm1
	movss	-196(%ebp), %xmm7
	movss	-212(%ebp), %xmm6
	movss	-208(%ebp), %xmm3
	subl	$4, %esp
	addss	%xmm1, %xmm4
	mulss	%xmm7, %xmm1
	addss	LC6, %xmm6
	movss	-200(%ebp), %xmm5
	movaps	%xmm4, %xmm0
	mulss	%xmm7, %xmm0
	movaps	%xmm0, %xmm2
	movaps	%xmm6, %xmm0
	movaps	%xmm1, %xmm6
	mulss	%xmm7, %xmm0
	addss	%xmm3, %xmm2
	addss	%xmm3, %xmm6
	addss	%xmm5, %xmm7
	movss	%xmm2, -244(%ebp)
	movss	%xmm2, -140(%ebp)
	addss	%xmm5, %xmm0
	movss	%xmm6, -240(%ebp)
	movss	%xmm7, -124(%ebp)
	movss	%xmm6, -120(%ebp)
	movss	%xmm0, -144(%ebp)
	cmpl	%esi, 112(%ebx)
	je	L1238
	movl	%esi, (%esp)
	movl	%ebx, %ecx
	leal	-124(%ebp), %edi
	call	__ZN10ImDrawList13PushTextureIDEPv
	movl	%ebx, %ecx
	subl	$4, %esp
	movl	$4, 4(%esp)
	movl	$6, (%esp)
	call	__ZN10ImDrawList11PrimReserveEii
	leal	-80(%ebp), %eax
	movl	%ebx, %ecx
	subl	$8, %esp
	movl	$805306368, 16(%esp)
	movl	%eax, -188(%ebp)
	movl	%eax, 12(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, -184(%ebp)
	movl	%eax, 8(%esp)
	leal	-144(%ebp), %eax
	movl	%eax, -216(%ebp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	__ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j
	movl	72(%ebx), %eax
	subl	$20, %esp
	movl	%eax, %edx
	subl	$1, %edx
	movl	%edx, 72(%ebx)
	jne	L932
	xorl	%eax, %eax
L934:
	movl	%eax, 112(%ebx)
	movl	%ebx, %ecx
	call	__ZN10ImDrawList19_OnChangedTextureIDEv
L933:
	movss	-196(%ebp), %xmm4
	movss	-248(%ebp), %xmm6
	movss	-244(%ebp), %xmm7
	movaps	%xmm4, %xmm0
	movss	%xmm6, -144(%ebp)
	movss	-240(%ebp), %xmm6
	addss	%xmm4, %xmm0
	addss	-200(%ebp), %xmm0
	movss	%xmm7, -140(%ebp)
	movss	%xmm6, -120(%ebp)
	movss	%xmm0, -124(%ebp)
	cmpl	%esi, 112(%ebx)
	je	L1239
	movl	%esi, (%esp)
	movl	%ebx, %ecx
	call	__ZN10ImDrawList13PushTextureIDEPv
	movl	%ebx, %ecx
	subl	$4, %esp
	movl	$4, 4(%esp)
	movl	$6, (%esp)
	call	__ZN10ImDrawList11PrimReserveEii
	movl	%ebx, %ecx
	subl	$8, %esp
	movl	$805306368, 16(%esp)
	movl	-188(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-216(%ebp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	__ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j
	movl	72(%ebx), %eax
	subl	$20, %esp
	movl	%eax, %edx
	subl	$1, %edx
	movl	%edx, 72(%ebx)
	jne	L929
	xorl	%eax, %eax
L931:
	movl	%eax, 112(%ebx)
	movl	%ebx, %ecx
	call	__ZN10ImDrawList19_OnChangedTextureIDEv
L930:
	movss	-196(%ebp), %xmm4
	movss	-204(%ebp), %xmm0
	movss	-208(%ebp), %xmm6
	mulss	%xmm4, %xmm0
	mulss	-212(%ebp), %xmm4
	addss	%xmm0, %xmm6
	movss	-200(%ebp), %xmm0
	addss	%xmm4, %xmm0
	movss	%xmm6, -204(%ebp)
	movss	%xmm6, -120(%ebp)
	movss	%xmm0, -196(%ebp)
	movss	%xmm0, -124(%ebp)
	cmpl	%esi, 112(%ebx)
	je	L1240
	movl	%esi, (%esp)
	movl	%ebx, %ecx
	call	__ZN10ImDrawList13PushTextureIDEPv
	movl	%ebx, %ecx
	subl	$4, %esp
	movl	$4, 4(%esp)
	movl	$6, (%esp)
	call	__ZN10ImDrawList11PrimReserveEii
	movl	%ebx, %ecx
	subl	$8, %esp
	movl	$-16777216, 16(%esp)
	movl	-188(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-184(%ebp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-156(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j
	movl	72(%ebx), %eax
	subl	$20, %esp
	movl	%eax, %edx
	subl	$1, %edx
	movl	%edx, 72(%ebx)
	jne	L926
	xorl	%eax, %eax
L928:
	movl	%eax, 112(%ebx)
	movl	%ebx, %ecx
	call	__ZN10ImDrawList19_OnChangedTextureIDEv
L927:
	movss	-196(%ebp), %xmm6
	movss	-204(%ebp), %xmm7
	movss	%xmm6, -124(%ebp)
	movss	%xmm7, -120(%ebp)
	cmpl	%esi, 112(%ebx)
	je	L1241
	movl	%esi, (%esp)
	movl	%ebx, %ecx
	call	__ZN10ImDrawList13PushTextureIDEPv
	movl	%ebx, %ecx
	subl	$4, %esp
	movl	$4, 4(%esp)
	movl	$6, (%esp)
	call	__ZN10ImDrawList11PrimReserveEii
	leal	-104(%ebp), %eax
	leal	-96(%ebp), %edx
	movl	%ebx, %ecx
	subl	$8, %esp
	movl	%eax, 8(%esp)
	leal	-156(%ebp), %eax
	movl	%edx, 12(%esp)
	movl	%eax, (%esp)
	movl	$-1, 16(%esp)
	movl	%edi, 4(%esp)
	call	__ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j
	movl	72(%ebx), %eax
	subl	$20, %esp
	movl	%eax, %edx
	subl	$1, %edx
	movl	%edx, 72(%ebx)
	jne	L923
	xorl	%eax, %eax
L925:
	movl	%eax, 112(%ebx)
	movl	%ebx, %ecx
	call	__ZN10ImDrawList19_OnChangedTextureIDEv
L924:
	movl	72(%ebx), %eax
	movl	%eax, %edx
	subl	$1, %edx
	movl	%edx, 72(%ebx)
	je	L1242
	movl	80(%ebx), %edx
	movl	-8(%edx,%eax,4), %eax
	jmp	L922
L975:
	fnstcw	-166(%ebp)
	fsubp	%st, %st(1)
	movzwl	-166(%ebp), %eax
	orb	$12, %ah
	movw	%ax, -168(%ebp)
	fldcw	-168(%ebp)
	fistpq	-176(%ebp)
	fldcw	-166(%ebp)
	movl	-172(%ebp), %edx
	movl	-176(%ebp), %eax
	addl	$-2147483648, %edx
	movl	%eax, -184(%ebp)
	movl	%edx, -180(%ebp)
	jmp	L976
L1229:
	cmpl	$5, __ZL3osv.lto_priv.0+4
	jbe	L980
	movl	__ZL15dwmapi_DwmFlush.lto_priv.0, %eax
	testl	%eax, %eax
	je	L980
	movl	__ZL30dwmapi_DwmIsCompositionEnabled.lto_priv.0, %eax
	testl	%eax, %eax
	je	L980
	movl	__ZZ20windowsWaitForVBlankvE6hGDI32, %eax
	testl	%eax, %eax
	je	L1243
L981:
	movl	__ZZ20windowsWaitForVBlankvE10useDWMsync, %edi
	testl	%edi, %edi
	jne	L1213
	movl	_fullscreen, %esi
	testl	%esi, %esi
	je	L1213
	movl	__ZZ20windowsWaitForVBlankvE30gdi32_D3DKMTOpenAdapterFromHdc, %ebx
	testl	%ebx, %ebx
	je	L1213
	movl	__ZZ20windowsWaitForVBlankvE24gdi32_D3DKMTCloseAdapter, %ecx
	testl	%ecx, %ecx
	je	L1213
	movl	__ZZ20windowsWaitForVBlankvE25gdi32_D3DKMTWaitForVBlank, %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	L1213
L986:
	movl	$0, -100(%ebp,%eax)
	movl	$0, -96(%ebp,%eax)
	movl	$0, -92(%ebp,%eax)
	movl	$0, -88(%ebp,%eax)
	addl	$16, %eax
	cmpl	$64, %eax
	jb	L986
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	%ebx, -100(%ebp,%eax)
	movl	$72, -104(%ebp)
	call	__Z11win_gethwndv
	movl	%esi, 4(%esp)
	leal	-64(%ebp), %esi
	movl	%eax, (%esp)
	call	*__imp__MonitorFromWindow@8
	leal	-104(%ebp), %edx
	pushl	%edi
	pushl	%edi
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__GetMonitorInfoA@8
	pushl	%eax
	pushl	%eax
	xorl	%eax, %eax
	movl	%eax, -144(%ebp)
	movl	%eax, -140(%ebp)
	movl	%eax, -136(%ebp)
	movl	%eax, -132(%ebp)
	movl	%eax, -128(%ebp)
	movl	%eax, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%esi, (%esp)
	call	*__imp__CreateDCA@16
	subl	$16, %esp
	movl	%eax, -144(%ebp)
	testl	%eax, %eax
	je	L1244
	leal	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	*__ZZ20windowsWaitForVBlankvE30gdi32_D3DKMTOpenAdapterFromHdc
	movl	%eax, %esi
	movl	-144(%ebp), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	call	*__imp__DeleteDC@4
	subl	$4, %esp
	testl	%esi, %esi
	js	L990
	movl	-140(%ebp), %eax
	leal	-156(%ebp), %ebx
	movl	$0, -152(%ebp)
	movl	%eax, -156(%ebp)
	movl	-128(%ebp), %eax
	movl	%eax, -148(%ebp)
	movl	%ebx, (%esp)
	call	*__ZZ20windowsWaitForVBlankvE25gdi32_D3DKMTWaitForVBlank
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	js	L991
	movl	%ebx, (%esp)
	call	*__ZZ20windowsWaitForVBlankvE24gdi32_D3DKMTCloseAdapter
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	jns	L985
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	leal	-124(%ebp), %ebx
	cmpl	%edx, %eax
	cmovge	%eax, %edx
	cmpl	$-2, %edx
	jge	L1245
L994:
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L989
	movl	$LC510, 12(%esp)
	movl	$520, 8(%esp)
	movl	$LC505, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L989:
	movl	$1, __ZZ20windowsWaitForVBlankvE10useDWMsync
	jmp	L982
	.p2align 4,,10
	.p2align 3
L971:
	leal	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	*__imp__QueryPerformanceFrequency@4
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	subl	$4, %esp
	jmp	L973
L1227:
	call	__Z26timerGetPerformanceCounterv
	movb	$1, __ZGVZ14videoShowFrameE12nextSwapTime
	movl	%eax, __ZZ14videoShowFrameE12nextSwapTime
	movl	%edx, __ZZ14videoShowFrameE12nextSwapTime+4
	jmp	L970
L1232:
	sarl	$25, %edx
	andl	$1, %edx
	call	__ZL19AddWindowToDrawDataP11ImGuiWindowi.lto_priv.0
	jmp	L861
L857:
	movl	$0, -164(%ebp)
	movl	$0, -184(%ebp)
	jmp	L859
L1235:
	testl	%ebx, %ebx
	je	L872
L878:
	movl	16084(%edi), %ecx
	movl	16076(%edi), %eax
	leal	(%ecx,%eax,4), %edx
	movl	%ecx, -184(%ebp)
	cmpl	%edx, %ecx
	jnb	L1032
	movl	%ecx, %eax
	jmp	L884
L882:
	addl	$4, %eax
	cmpl	%edx, %eax
	jnb	L1246
L884:
	cmpl	(%eax), %ebx
	jne	L882
	subl	-184(%ebp), %eax
	js	L1033
L1211:
	sarl	$2, %eax
	movl	%eax, %edx
L881:
	movl	%ebx, -188(%ebp)
L890:
	movl	-184(%ebp), %eax
	movl	(%eax,%edx,4), %ecx
	movl	12(%ecx), %esi
	testl	$16777216, %esi
	jne	L889
	cmpl	832(%ecx), %ebx
	je	L886
	movl	%ecx, %eax
	jmp	L887
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1247:
	movl	828(%eax), %eax
	testl	%eax, %eax
	je	L883
L887:
	cmpl	%ebx, %eax
	jne	L1247
L886:
	cmpb	$0, 223(%ecx)
	je	L889
	cmpb	$0, 230(%ecx)
	jne	L889
	movl	%esi, %eax
	movl	12(%ebx), %esi
	sarl	$25, %eax
	sarl	$25, %esi
	andl	$1, %eax
	andl	$1, %esi
	cmpl	%esi, %eax
	cmovg	-188(%ebp), %ecx
	movl	%ecx, -188(%ebp)
L889:
	subl	$1, %edx
	jnb	L890
L883:
	movl	15488(%edi), %eax
	movl	%eax, -104(%ebp)
	movl	15492(%edi), %eax
	movl	%eax, -100(%ebp)
	movl	15496(%edi), %eax
	movl	%eax, -96(%ebp)
	movl	15500(%edi), %eax
	movl	%eax, -92(%ebp)
	mulss	14404(%edi), %xmm0
	leal	-104(%ebp), %eax
	mulss	15500(%edi), %xmm0
	movl	%eax, -192(%ebp)
	movss	%xmm0, -92(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	cmpl	$16777215, %eax
	jbe	L891
	movl	%eax, %edx
	movl	-188(%ebp), %eax
	call	__ZN5ImGuiL34RenderDimmedBackgroundBehindWindowEP11ImGuiWindowj.part.0.lto_priv.0
L891:
	movl	18608(%edi), %esi
	testl	%esi, %esi
	jle	L872
	movl	48(%ebx), %eax
	movl	%ebx, -188(%ebp)
	xorl	%esi, %esi
	movl	%eax, -184(%ebp)
L910:
	movl	18616(%edi), %eax
	movl	(%eax,%esi,4), %ebx
	cmpl	%ebx, -184(%ebp)
	je	L907
	testl	%ebx, %ebx
	je	L907
	movl	108(%ebx), %eax
	testl	%eax, %eax
	je	L908
	movl	-188(%ebp), %edx
	call	__ZN5ImGui13IsWindowAboveEP11ImGuiWindowS1_
	testb	%al, %al
	jne	L907
L908:
	movl	$LC495, %ecx
	movl	$1, %edx
	movl	%ebx, %eax
	addl	$8, %ebx
	call	__ZL19GetViewportDrawListP14ImGuiViewportPjPKc.lto_priv.0
	movss	19060(%edi), %xmm0
	movl	%eax, -196(%ebp)
	movl	_GImGui, %eax
	movl	15488(%eax), %edx
	movl	%edx, -104(%ebp)
	movl	15492(%eax), %edx
	movl	%edx, -100(%ebp)
	movl	15496(%eax), %edx
	movl	%edx, -96(%ebp)
	movl	15500(%eax), %edx
	movl	%edx, -92(%ebp)
	mulss	14404(%eax), %xmm0
	mulss	15500(%eax), %xmm0
	movl	-192(%ebp), %eax
	movss	%xmm0, -92(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movss	4(%ebx), %xmm0
	movss	(%ebx), %xmm1
	addss	12(%ebx), %xmm0
	addss	8(%ebx), %xmm1
	movss	%xmm0, -100(%ebp)
	xorps	%xmm0, %xmm0
	movss	%xmm1, -104(%ebp)
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-192(%ebp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	movl	-196(%ebp), %ecx
	call	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	subl	$16, %esp
L907:
	addl	$1, %esi
	cmpl	18608(%edi), %esi
	jl	L910
	jmp	L872
L1246:
	subl	-184(%ebp), %eax
	jmp	L1211
L1213:
	leal	-124(%ebp), %ebx
L982:
	movl	$0, -124(%ebp)
	movl	%ebx, (%esp)
	call	*__ZL30dwmapi_DwmIsCompositionEnabled.lto_priv.0
	subl	$4, %esp
	testl	%eax, %eax
	js	L985
	movl	-124(%ebp), %eax
	testl	%eax, %eax
	je	L985
	call	*__ZL15dwmapi_DwmFlush.lto_priv.0
	testl	%eax, %eax
	jne	L1248
L985:
	movl	__ZZ14videoShowFrameE12nextSwapTime, %eax
	movl	__ZZ14videoShowFrameE12nextSwapTime+4, %edx
	movl	%eax, -176(%ebp)
	movl	%edx, -172(%ebp)
	jmp	L980
L1241:
	movl	$4, 4(%esp)
	movl	%ebx, %ecx
	movl	$6, (%esp)
	call	__ZN10ImDrawList11PrimReserveEii
	leal	-104(%ebp), %eax
	leal	-96(%ebp), %edx
	movl	%ebx, %ecx
	subl	$8, %esp
	movl	%eax, 8(%esp)
	leal	-156(%ebp), %eax
	movl	$-1, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	__ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j
	subl	$20, %esp
	jmp	L924
L1240:
	movl	$4, 4(%esp)
	movl	%ebx, %ecx
	movl	$6, (%esp)
	call	__ZN10ImDrawList11PrimReserveEii
	movl	%ebx, %ecx
	subl	$8, %esp
	movl	$-16777216, 16(%esp)
	movl	-188(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-184(%ebp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-156(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j
	subl	$20, %esp
	jmp	L927
L1239:
	movl	$4, 4(%esp)
	movl	%ebx, %ecx
	movl	$6, (%esp)
	call	__ZN10ImDrawList11PrimReserveEii
	movl	%ebx, %ecx
	subl	$8, %esp
	movl	$805306368, 16(%esp)
	movl	-188(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-216(%ebp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	__ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j
	subl	$20, %esp
	jmp	L930
L1238:
	movl	$4, 4(%esp)
	movl	%ebx, %ecx
	leal	-124(%ebp), %edi
	movl	$6, (%esp)
	call	__ZN10ImDrawList11PrimReserveEii
	leal	-80(%ebp), %eax
	movl	%ebx, %ecx
	subl	$8, %esp
	movl	$805306368, 16(%esp)
	movl	%eax, -188(%ebp)
	movl	%eax, 12(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, -184(%ebp)
	movl	%eax, 8(%esp)
	leal	-144(%ebp), %eax
	movl	%eax, -216(%ebp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	__ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j
	subl	$20, %esp
	jmp	L933
L929:
	movl	80(%ebx), %edx
	movl	-8(%edx,%eax,4), %eax
	jmp	L931
L932:
	movl	80(%ebx), %edx
	movl	-8(%edx,%eax,4), %eax
	jmp	L934
L923:
	movl	80(%ebx), %edx
	movl	-8(%edx,%eax,4), %eax
	jmp	L925
L926:
	movl	80(%ebx), %edx
	movl	-8(%edx,%eax,4), %eax
	jmp	L928
L866:
	movss	19060(%edi), %xmm0
	xorps	%xmm1, %xmm1
	comiss	%xmm0, %xmm1
	jnb	L1249
L1194:
	movl	19024(%edi), %esi
	testl	%esi, %esi
	je	L872
	cmpb	$0, 223(%esi)
	jne	L1028
	jmp	L872
L1033:
	movl	%ebx, -188(%ebp)
	jmp	L883
L1032:
	xorl	%edx, %edx
	jmp	L881
L1249:
	comiss	19036(%edi), %xmm1
	jb	L1194
	jmp	L872
L957:
	movl	140(%ebx), %eax
	jmp	L961
L1245:
	movl	__imp__GetLastError@0, %edx
	leal	-120(%ebp), %edi
	movl	%edx, -188(%ebp)
	call	*%edx
	movl	$4, %ecx
	movl	%eax, -176(%ebp)
	xorl	%eax, %eax
	rep stosl
	xorl	%eax, %eax
	movl	%esi, -124(%ebp)
	movl	%eax, 12(%esp)
	leal	-164(%ebp), %eax
	movl	%eax, 8(%esp)
	xorl	%eax, %eax
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__GetOverlappedResult@16
	subl	$16, %esp
	call	*-188(%ebp)
	movl	%eax, %edi
	movl	-176(%ebp), %eax
	movl	%eax, (%esp)
	call	*__imp__SetLastError@4
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	pushl	%eax
	movl	%edx, 24(%esp)
	movl	%ecx, 4(%esp)
	movl	$1024, 20(%esp)
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 16(%esp)
	movl	$1024, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$4608, (%esp)
	call	*__imp__FormatMessageA@28
	subl	$28, %esp
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 20(%esp)
	movl	%esi, 16(%esp)
	movl	$LC507, 12(%esp)
	movl	$512, 8(%esp)
	movl	$LC505, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	jmp	L994
L991:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	leal	-124(%ebp), %ebx
	cmpl	%edx, %eax
	cmovge	%eax, %edx
	cmpl	$-2, %edx
	jl	L994
	movl	__imp__GetLastError@0, %edx
	leal	-120(%ebp), %edi
	movl	%edx, -188(%ebp)
	call	*%edx
	movl	$4, %ecx
	xorl	%edx, %edx
	movl	%eax, -176(%ebp)
	xorl	%eax, %eax
	rep stosl
	xorl	%eax, %eax
	movl	%esi, -124(%ebp)
	movl	%eax, 12(%esp)
	leal	-164(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, 4(%esp)
	call	*__imp__GetOverlappedResult@16
	subl	$16, %esp
	call	*-188(%ebp)
	movl	%eax, %edi
	movl	-176(%ebp), %eax
	movl	%eax, (%esp)
	call	*__imp__SetLastError@4
	xorl	%eax, %eax
	pushl	%ecx
	movl	%eax, 24(%esp)
	xorl	%eax, %eax
	movl	$1024, 20(%esp)
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 16(%esp)
	movl	$1024, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$4608, (%esp)
	call	*__imp__FormatMessageA@28
	subl	$28, %esp
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 20(%esp)
	movl	%esi, 16(%esp)
	movl	$LC508, 12(%esp)
	movl	$515, 8(%esp)
	movl	$LC505, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	jmp	L994
L990:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	leal	-124(%ebp), %ebx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L989
	movl	__imp__GetLastError@0, %edx
	leal	-120(%ebp), %edi
	movl	%edx, -188(%ebp)
	call	*%edx
	movl	$4, %ecx
	movl	%eax, -176(%ebp)
	xorl	%eax, %eax
	rep stosl
	leal	-156(%ebp), %eax
	movl	%esi, -124(%ebp)
	xorl	%edi, %edi
	movl	%eax, 8(%esp)
	xorl	%eax, %eax
	movl	%edi, 12(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__GetOverlappedResult@16
	subl	$16, %esp
	call	*-188(%ebp)
	movl	%eax, %edi
	movl	-176(%ebp), %eax
	movl	%eax, (%esp)
	call	*__imp__SetLastError@4
	pushl	%eax
	xorl	%eax, %eax
	movl	%eax, 24(%esp)
	xorl	%eax, %eax
	movl	$1024, 20(%esp)
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 16(%esp)
	movl	$1024, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$4608, (%esp)
	call	*__imp__FormatMessageA@28
	subl	$28, %esp
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 20(%esp)
	movl	%esi, 16(%esp)
	movl	$LC509, 12(%esp)
	movl	$518, 8(%esp)
	movl	$LC505, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	jmp	L994
L1244:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	leal	-124(%ebp), %ebx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L989
	movl	_g_windowPos+4, %eax
	movl	%eax, 24(%esp)
	movl	_g_windowPos, %eax
	movl	%esi, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$LC506, 12(%esp)
	movl	$493, 8(%esp)
	movl	$LC505, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L989
	.p2align 4,,10
	.p2align 3
L1243:
	movl	$LC500, (%esp)
	call	*__imp__GetModuleHandleA@4
	subl	$4, %esp
	movl	%eax, __ZZ20windowsWaitForVBlankvE6hGDI32
	testl	%eax, %eax
	je	L981
	movl	__imp__GetProcAddress@8, %ebx
	movl	$LC501, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	subl	$8, %esp
	movl	%eax, __ZZ20windowsWaitForVBlankvE30gdi32_D3DKMTOpenAdapterFromHdc
	movl	$LC502, 4(%esp)
	movl	__ZZ20windowsWaitForVBlankvE6hGDI32, %eax
	movl	%eax, (%esp)
	call	*%ebx
	subl	$8, %esp
	movl	%eax, __ZZ20windowsWaitForVBlankvE24gdi32_D3DKMTCloseAdapter
	movl	$LC503, 4(%esp)
	movl	__ZZ20windowsWaitForVBlankvE6hGDI32, %eax
	movl	%eax, (%esp)
	call	*%ebx
	subl	$8, %esp
	movl	%eax, __ZZ20windowsWaitForVBlankvE25gdi32_D3DKMTWaitForVBlank
	jmp	L981
L1248:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L985
	movl	$LC504, 12(%esp)
	movl	$479, 8(%esp)
	movl	$LC505, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L985
L1236:
	movss	%xmm4, -200(%ebp)
	movss	%xmm3, -196(%ebp)
	call	__ZN10ImDrawList10AddDrawCmdEv
	movl	-184(%ebp), %eax
	movl	676(%esi), %ecx
	movss	-200(%ebp), %xmm4
	movss	-196(%ebp), %xmm3
	movss	16(%eax), %xmm2
	jmp	L902
L893:
	movl	18608(%edi), %eax
	testl	%eax, %eax
	jle	L872
	movl	$0, -188(%ebp)
	movl	$0, -184(%ebp)
	jmp	L904
L1035:
	movl	-184(%ebp), %eax
	movl	%eax, -188(%ebp)
	jmp	L895
L896:
	movl	%ebx, -188(%ebp)
	jmp	L895
	.cfi_endproc
LFE138:
	.align 2
	.p2align 4
	.globl	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0
	.def	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0;	.scl	2;	.type	32;	.endef
__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0:
LFB190:
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
L1258:
	movl	56(%esi), %eax
	cmpb	$0, 60(%esi)
	je	L1251
	xorl	%edx, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L1252:
	movl	12(%esi,%edx,4), %edi
	movl	4(%esi), %ecx
	addl	$1, %edx
	movl	%edi, (%ecx,%eax,4)
	movl	56(%esi), %eax
	movzbl	60(%esi), %ecx
	addl	$1, %eax
	movl	%eax, 56(%esi)
	cmpl	%ecx, %edx
	jb	L1252
L1251:
	testl	%eax, %eax
	jne	L1269
L1253:
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
	jne	L1258
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
L1269:
	.cfi_restore_state
	movl	4(%esi), %edx
	movl	(%edx), %ecx
	addl	(%esi), %ecx
	cmpl	$1, %eax
	je	L1259
	movl	4(%edx), %edi
	movl	$16777215, (%ecx)
	movl	%edi, 4(%ecx)
	addl	(%esi), %edi
	cmpl	$2, 56(%esi)
	jbe	L1254
	movl	%ecx, 12(%esp)
	movl	$2, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1255:
	movl	4(%esi), %edx
	leal	16777214(%eax), %ecx
	movl	(%edx,%eax,4), %edx
	movl	%ecx, (%edi)
	addl	$1, %eax
	movl	%edx, 4(%edi)
	movl	(%esi), %edi
	addl	%edx, %edi
	cmpl	56(%esi), %eax
	jb	L1255
	movl	12(%esp), %ecx
L1254:
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
L1257:
	movl	24(%esp), %eax
	movl	28(%esp), %edx
	movl	12(%esp), %esi
	movl	8(%esp), %ebx
	movl	%eax, (%edi)
	movl	%edx, 4(%edi)
	movl	24(%esp), %eax
	movl	28(%esp), %edx
	lock cmpxchg8b	(%esi)
	je	L1267
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	jmp	L1257
L1267:
	movl	(%esp), %ebx
	movl	4(%esp), %esi
	jmp	L1253
L1259:
	movl	%ecx, %edi
	jmp	L1254
	.cfi_endproc
LFE190:
	.p2align 4
	.globl	__ZdlPv
	.def	__ZdlPv;	.scl	2;	.type	32;	.endef
__ZdlPv:
LFB197:
	.cfi_startproc
	movl	4(%esp), %eax
	jmp	_mi_free
	.cfi_endproc
LFE197:
	.p2align 4
	.globl	__ZdaPv
	.def	__ZdaPv;	.scl	2;	.type	32;	.endef
__ZdaPv:
LFB199:
	.cfi_startproc
	movl	4(%esp), %eax
	jmp	_mi_free
	.cfi_endproc
LFE199:
	.p2align 4
	.globl	__ZdlPvRKSt9nothrow_t
	.def	__ZdlPvRKSt9nothrow_t;	.scl	2;	.type	32;	.endef
__ZdlPvRKSt9nothrow_t:
LFB200:
	.cfi_startproc
	movl	4(%esp), %eax
	jmp	_mi_free
	.cfi_endproc
LFE200:
	.p2align 4
	.globl	__ZdaPvRKSt9nothrow_t
	.def	__ZdaPvRKSt9nothrow_t;	.scl	2;	.type	32;	.endef
__ZdaPvRKSt9nothrow_t:
LFB202:
	.cfi_startproc
	movl	4(%esp), %eax
	jmp	_mi_free
	.cfi_endproc
LFE202:
	.p2align 4
	.globl	__Znwj
	.def	__Znwj;	.scl	2;	.type	32;	.endef
__Znwj:
LFB203:
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
	ja	L1275
	leal	3(%edx), %eax
	shrl	$2, %eax
	movl	184(%ebx,%eax,4), %ecx
	movl	8(%ecx), %eax
	testl	%eax, %eax
	je	L1275
	movl	(%eax), %edx
	addw	$1, 16(%ecx)
	movl	%edx, 8(%ecx)
L1274:
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1275:
	.cfi_restore_state
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	movl	%ebx, %eax
	movl	%edx, 4(%esp)
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	movl	4(%esp), %edx
	testl	%eax, %eax
	jne	L1274
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	movl	%ebx, %eax
	xorl	%ecx, %ecx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z15mi_heap_try_newP9mi_heap_sjb
	.cfi_endproc
LFE203:
	.p2align 4
	.globl	__Znaj
	.def	__Znaj;	.scl	2;	.type	32;	.endef
__Znaj:
LFB213:
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
	ja	L1281
	leal	3(%edx), %eax
	shrl	$2, %eax
	movl	184(%ebx,%eax,4), %ecx
	movl	8(%ecx), %eax
	testl	%eax, %eax
	je	L1281
	movl	(%eax), %edx
	addw	$1, 16(%ecx)
	movl	%edx, 8(%ecx)
L1280:
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1281:
	.cfi_restore_state
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	movl	%ebx, %eax
	movl	%edx, 4(%esp)
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	movl	4(%esp), %edx
	testl	%eax, %eax
	jne	L1280
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	movl	%ebx, %eax
	xorl	%ecx, %ecx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z15mi_heap_try_newP9mi_heap_sjb
	.cfi_endproc
LFE213:
	.p2align 4
	.globl	__ZnwjRKSt9nothrow_t
	.def	__ZnwjRKSt9nothrow_t;	.scl	2;	.type	32;	.endef
__ZnwjRKSt9nothrow_t:
LFB214:
	.cfi_startproc
	movl	4(%esp), %eax
	jmp	_mi_new_nothrow
	.cfi_endproc
LFE214:
	.p2align 4
	.globl	__ZnajRKSt9nothrow_t
	.def	__ZnajRKSt9nothrow_t;	.scl	2;	.type	32;	.endef
__ZnajRKSt9nothrow_t:
LFB216:
	.cfi_startproc
	movl	4(%esp), %eax
	jmp	_mi_new_nothrow
	.cfi_endproc
LFE216:
	.p2align 4
	.globl	__ZdlPvj
	.def	__ZdlPvj;	.scl	2;	.type	32;	.endef
__ZdlPvj:
LFB217:
	.cfi_startproc
	movl	4(%esp), %eax
	jmp	_mi_free
	.cfi_endproc
LFE217:
	.p2align 4
	.globl	__ZdaPvj
	.def	__ZdaPvj;	.scl	2;	.type	32;	.endef
__ZdaPvj:
LFB220:
	.cfi_startproc
	movl	4(%esp), %eax
	jmp	_mi_free
	.cfi_endproc
LFE220:
	.p2align 4
	.globl	__Z19softsurface_destroyv
	.def	__Z19softsurface_destroyv;	.scl	2;	.type	32;	.endef
__Z19softsurface_destroyv:
LFB221:
	.cfi_startproc
	movl	__ZL6buffer.lto_priv.1, %eax
	testl	%eax, %eax
	je	L1296
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
L1296:
	ret
	.cfi_endproc
LFE221:
	.p2align 4
	.globl	__Z22softsurface_setPalettePvjjj.part.0.constprop.0
	.def	__Z22softsurface_setPalettePvjjj.part.0.constprop.0;	.scl	2;	.type	32;	.endef
__Z22softsurface_setPalettePvjjj.part.0.constprop.0:
LFB223:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%edx, %ebp
	movl	$8, %edx
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%ecx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%eax, %esi
	rep bsfl	%eax, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ecx
	movl	%esi, %ebx
	shrl	%cl, %ebx
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, (%esp)
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
L1300:
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
	movl	%eax, __ZL4pPal(,%ebx,4)
	addl	$1, %ebx
	cmpl	$256, %ebx
	jne	L1300
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
LFE223:
	.p2align 4
	.globl	_texcache_fetch
	.def	_texcache_fetch;	.scl	2;	.type	32;	.endef
_texcache_fetch:
LFB224:
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
	jne	L1304
	cmpl	$3, _rendmode
	je	L1486
L1305:
	cmpl	$251, 24(%esp)
	jg	L1351
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
L1304:
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
	je	L1487
	testb	$1, 31(%esp)
	je	L1313
L1484:
	movl	36(%esp), %eax
	testl	%eax, %eax
	jne	L1314
	cmpl	$3, _rendmode
	je	L1310
	movl	32(%esp), %ebp
	testl	%ebp, %ebp
	jne	L1315
L1470:
	movl	68(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	72(%esp), %ebp
	.cfi_restore 5
	jmp	L1305
	.p2align 4,,10
	.p2align 3
L1487:
	.cfi_restore_state
	testl	%ecx, %ecx
	jne	L1309
	cmpl	$3, _rendmode
	je	L1310
	testl	%eax, %eax
	je	L1470
L1315:
	andl	$-513, 20(%esp)
	xorl	%edi, %edi
L1319:
	movzwl	30(%esp), %ecx
	movl	%esi, %eax
	andl	$8191, %eax
	testb	$32, %cl
	jne	L1330
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
	je	L1336
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
	jne	L1352
	jmp	L1333
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1347:
	movl	(%ebx), %ebx
	testl	%ebx, %ebx
	je	L1336
L1352:
	movswl	32(%ebx), %eax
	cmpl	%esi, %eax
	jne	L1347
	movzbl	38(%ebx), %eax
	cmpl	%ebp, %eax
	jne	L1347
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
	jle	L1488
	orl	$6, %eax
	cmpl	%eax, %ecx
	jne	L1347
	movzbl	40(%ebx), %eax
	cmpl	%eax, %edi
	jne	L1347
L1349:
	testb	$-128, %dl
	je	L1466
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
	je	L1347
L1343:
	cmpl	$-2, %eax
	setne	%al
	cmpl	$30719, %esi
	seta	%dl
	orb	%dl, %al
	jne	L1479
	cmpl	$255, 24(%esp)
	jbe	L1489
	.p2align 4
	.p2align 3
L1479:
	movl	_drawingskybox, %eax
	testl	%eax, %eax
	jne	L1468
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
L1486:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	_r_useindexedcolortextures, %eax
	testl	%eax, %eax
	jne	L1490
	movl	%edi, 68(%esp)
	.cfi_offset 7, -12
	movl	_r_usetileshades, %edi
	movl	%edi, 36(%esp)
	testl	%edi, %edi
	je	L1471
	testb	$1, _globalflags
	cmove	%ecx, %eax
	movl	%eax, 36(%esp)
L1471:
	movl	68(%esp), %edi
	.cfi_restore 7
	jmp	L1305
L1468:
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	68(%esp), %edi
	.cfi_restore 7
	movl	72(%esp), %ebp
	.cfi_restore 5
L1351:
	xorl	%ebx, %ebx
L1303:
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
L1314:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	xorl	%edi, %edi
L1309:
	movl	24(%esp), %edx
	movl	%esi, %eax
	call	_hicfindskybox.constprop.0
	movl	%eax, 32(%esp)
	testl	%eax, %eax
	je	L1374
	movl	$0, 36(%esp)
	cmpl	$3, _rendmode
	je	L1491
L1321:
	testl	%edi, %edi
	jne	L1319
	jmp	L1315
L1490:
	.cfi_restore 5
	.cfi_restore 7
	movl	_gltexfiltermode, %eax
	testl	%eax, %eax
	je	L1305
	movl	_r_usetileshades, %eax
	testl	%eax, %eax
	je	L1305
	testb	$1, _globalflags
	cmovne	36(%esp), %ebx
	movl	%ebx, 36(%esp)
	jmp	L1305
L1313:
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%esi, %eax
	call	_hicfindsubst
	testl	%eax, %eax
	je	L1484
	testb	$64, 33(%eax)
	je	L1484
	movl	36(%esp), %edi
	testl	%edi, %edi
	jne	L1373
	cmpl	$3, _rendmode
	je	L1318
	movl	%eax, 32(%esp)
	movl	$1, %edi
	jmp	L1319
L1335:
	movl	24(%esp), %ebp
	testl	%ebx, %ebx
	jne	L1333
L1334:
	movl	24(%esp), %ebp
	.p2align 4
	.p2align 3
L1472:
	movl	$0, 40(%esp)
L1336:
	movl	$44, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1353
	movl	$0, 28(%eax)
	movl	$0, 32(%eax)
	movl	$0, 36(%eax)
	movl	$0, 40(%eax)
	xorl	%eax, %eax
L1354:
	movl	$0, (%ebx,%eax)
	movl	$0, 4(%ebx,%eax)
	movl	$0, 8(%ebx,%eax)
	movl	$0, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L1354
	cmpl	$255, 24(%esp)
	je	L1492
L1357:
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
	je	L1493
	cmpl	$-2, %eax
	setne	%al
	cmpl	$30719, %esi
	seta	%dl
	orb	%dl, %al
	jne	L1369
	cmpl	$255, 24(%esp)
	jbe	L1494
L1369:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	jmp	L1479
	.p2align 4,,10
	.p2align 3
L1330:
	testb	$-57, 30(%esp)
	je	L1332
	addl	$8, %eax
	movl	24(%esp), %ebp
	movl	_texcache+12(,%eax,4), %ebx
	movl	%eax, 44(%esp)
	testl	%ebx, %ebx
	je	L1334
L1333:
	movl	20(%esp), %eax
	sall	$9, %edi
	movl	%edi, 40(%esp)
	notl	%eax
	movl	%eax, 48(%esp)
	sall	$8, %eax
	movl	%eax, 52(%esp)
	jmp	L1346
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1339:
	movl	(%ebx), %ebx
	testl	%ebx, %ebx
	je	L1472
L1346:
	movswl	32(%ebx), %eax
	cmpl	%esi, %eax
	jne	L1339
	movzbl	38(%ebx), %eax
	cmpl	%ebp, %eax
	jne	L1339
	movzwl	30(%esp), %eax
	cmpw	36(%ebx), %ax
	jne	L1339
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
	jle	L1495
	orl	$6, %eax
	cmpl	%ecx, %eax
	jne	L1339
	movzbl	40(%ebx), %eax
	cmpl	%edi, %eax
	jne	L1339
L1344:
	testb	$-128, %dl
	je	L1466
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
	jne	L1343
	jmp	L1339
	.p2align 4,,10
	.p2align 3
L1495:
	orl	$2, %eax
	cmpl	%ecx, %eax
	jne	L1339
	jmp	L1344
	.p2align 4,,10
	.p2align 3
L1488:
	orl	$2, %eax
	cmpl	%ecx, %eax
	jne	L1347
	jmp	L1349
	.p2align 4,,10
	.p2align 3
L1332:
	movl	32(%esp), %ecx
	addl	$8, %eax
	movl	%eax, 44(%esp)
	movl	_texcache+12(,%eax,4), %ebx
	cmpb	$0, 32(%ecx)
	jne	L1335
	xorl	%ebp, %ebp
	testl	%ebx, %ebx
	jne	L1333
	jmp	L1472
	.p2align 4,,10
	.p2align 3
L1493:
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
L1492:
	.cfi_restore_state
	movl	%ebx, 52(%esp)
	xorl	%eax, %eax
	movl	%ebp, 56(%esp)
	movl	32(%esp), %ebp
L1356:
	movl	_texcache+44(,%eax,4), %edi
	testl	%edi, %edi
	je	L1358
	movl	%eax, 48(%esp)
	.p2align 4
	.p2align 3
L1365:
	movl	8(%edi), %eax
	testl	%eax, %eax
	je	L1359
	movl	4(%eax), %ecx
	testl	%ecx, %ecx
	je	L1359
	movl	4(%ebp), %ebx
	testl	%ebx, %ebx
	jne	L1473
	jmp	L1359
	.p2align 4,,10
	.p2align 3
L1496:
	movzbl	(%ecx), %edx
	testb	%dl, %dl
	je	L1359
	movzbl	_toupperlookup(%edx), %edx
	cmpb	%dl, _toupperlookup(%eax)
	jne	L1359
	addl	$1, %ebx
	addl	$1, %ecx
L1473:
	movzbl	(%ebx), %eax
	testb	%al, %al
	jne	L1496
	cmpb	$0, (%ecx)
	jne	L1359
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
L1359:
	.cfi_restore_state
	movl	(%edi), %edi
	testl	%edi, %edi
	jne	L1365
	movl	48(%esp), %eax
L1358:
	addl	$1, %eax
	cmpl	$8192, %eax
	jne	L1356
	movl	56(%esp), %ebp
	movl	52(%esp), %ebx
	jmp	L1357
	.p2align 4,,10
	.p2align 3
L1310:
	movl	_r_useindexedcolortextures, %edi
	testl	%edi, %edi
	je	L1327
	movl	_gltexfiltermode, %eax
	xorl	%edi, %edi
	movl	%eax, 36(%esp)
	testl	%eax, %eax
	jne	L1327
L1328:
	movl	32(%esp), %eax
	testl	%eax, %eax
	jne	L1321
	jmp	L1470
	.p2align 4,,10
	.p2align 3
L1491:
	movl	_r_useindexedcolortextures, %ecx
	testl	%ecx, %ecx
	je	L1322
	movl	_gltexfiltermode, %eax
	movl	%eax, 36(%esp)
	testl	%eax, %eax
	je	L1321
L1327:
	movl	_r_usetileshades, %eax
	movl	%eax, 36(%esp)
	testl	%eax, %eax
	je	L1328
L1325:
	xorl	%eax, %eax
	testb	$1, _globalflags
	cmove	%ebx, %eax
	movl	%eax, 36(%esp)
	jmp	L1328
L1494:
	movl	_hicinitcounter, %edx
	testl	%edx, %edx
	je	L1369
	movl	24(%esp), %edx
	movl	%esi, %eax
	call	_hicclearsubst.part.0.isra.0
	jmp	L1369
L1353:
	movl	$44, %eax
	call	__Z13handle_memerri
L1489:
	movl	_hicinitcounter, %eax
	testl	%eax, %eax
	je	L1479
	movl	24(%esp), %edx
	movl	%esi, %eax
	call	_hicclearsubst.part.0.isra.0
	jmp	L1479
L1374:
	movl	68(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	72(%esp), %ebp
	.cfi_restore 5
	xorl	%ebx, %ebx
	jmp	L1303
L1373:
	.cfi_restore_state
	movl	$1, %edi
	jmp	L1309
L1322:
	movl	_r_usetileshades, %eax
	movl	%eax, 36(%esp)
	testl	%eax, %eax
	jne	L1325
	jmp	L1321
L1466:
	movl	68(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	72(%esp), %ebp
	.cfi_restore 5
	jmp	L1303
L1318:
	.cfi_restore_state
	movl	_r_useindexedcolortextures, %edx
	testl	%edx, %edx
	je	L1326
	movl	_gltexfiltermode, %edi
	movl	%eax, 32(%esp)
	testl	%edi, %edi
	movl	%edi, 36(%esp)
	movl	$1, %edi
	je	L1321
	jmp	L1327
L1326:
	movl	_r_usetileshades, %edi
	movl	%eax, 32(%esp)
	testl	%edi, %edi
	movl	%edi, 36(%esp)
	movl	$1, %edi
	jne	L1325
	jmp	L1321
	.cfi_endproc
LFE224:
	.p2align 4
	.globl	_texcache_init
	.def	_texcache_init;	.scl	2;	.type	32;	.endef
_texcache_init:
LFB229:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	_texcache+24, %edx
	testl	%edx, %edx
	je	L1506
L1498:
	call	__ZL19texcache_closefilesv
	movl	$_texcache, %ecx
	call	__ZN3mio10basic_mmapILNS_11access_modeE1EcE5unmapEv
	movl	_texcache+40, %eax
	movl	$0, _texcache+32832
	testl	%eax, %eax
	je	L1500
	call	_texcache_freeptrs.part.0
L1500:
	movl	$16, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 4
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	testl	%eax, %eax
	je	L1501
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
L1506:
	.cfi_restore_state
	movl	_texcache+28, %eax
	testl	%eax, %eax
	je	L1499
	movl	%eax, (%esp)
	call	_fclose
L1499:
	movl	$0, _texcache+28
	jmp	L1498
	.p2align 4,,10
	.p2align 3
L1501:
	movl	$16, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE229:
	.section .rdata,"dr"
LC512:
	.ascii "No active texcache!\0"
LC513:
	.ascii "source/build/src/texcache.cpp\0"
	.text
	.p2align 4
	.globl	_texcache_enabled
	.def	_texcache_enabled;	.scl	2;	.type	32;	.endef
_texcache_enabled:
LFB230:
	.cfi_startproc
	testb	$64, _glinfo+29
	je	L1522
	movl	_glusetexcompr, %eax
	testl	%eax, %eax
	je	L1523
	movl	_glusetexcache, %eax
	testl	%eax, %eax
	je	L1523
	movl	_texcache+24, %ecx
	testl	%ecx, %ecx
	je	L1510
	movl	_texcache+28, %edx
	movl	$1, %eax
	testl	%edx, %edx
	je	L1510
L1523:
	ret
	.p2align 4,,10
	.p2align 3
L1510:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jge	L1526
L1522:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1526:
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	$LC512, 12(%esp)
	movl	$330, 8(%esp)
	movl	$LC513, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	xorl	%eax, %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE230:
	.section .rdata,"dr"
LC514:
	.ascii "ab+\0"
	.align 4
LC515:
	.ascii "Unable to open cache file %s or %s: %s.\0"
	.align 4
LC516:
	.ascii "// automatically generated by the engine, DO NOT MODIFY!\12\0"
LC517:
	.ascii "Opened %s as cache file.\0"
	.text
	.p2align 4
	.globl	_texcache_openfiles
	.def	_texcache_openfiles;	.scl	2;	.type	32;	.endef
_texcache_openfiles:
LFB232:
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
	movl	$LC514, 4(%esp)
	movl	$_ptempbuf, (%esp)
	call	_fopen
	movl	$LC514, 4(%esp)
	movl	$_TEXCACHEFILE, (%esp)
	movl	%eax, _texcache+24
	call	_fopen
	movl	_texcache+24, %edx
	movl	%eax, _texcache+28
	testl	%edx, %edx
	je	L1533
	testl	%eax, %eax
	je	L1533
	cmpl	$-1, %ebx
	je	L1535
L1532:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	jns	L1536
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1536:
	.cfi_restore_state
	movl	$_TEXCACHEFILE, 16(%esp)
	movl	$LC517, 12(%esp)
	movl	$362, 8(%esp)
	movl	$LC513, 4(%esp)
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
L1533:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1537
L1530:
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
L1537:
	.cfi_restore_state
	call	*__imp___errno
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*__imp__strerror
	movl	$_ptempbuf, 20(%esp)
	movl	%eax, 24(%esp)
	movl	$_TEXCACHEFILE, 16(%esp)
	movl	$LC515, 12(%esp)
	movl	$351, 8(%esp)
	movl	$LC513, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1530
	.p2align 4,,10
	.p2align 3
L1535:
	movl	%edx, 12(%esp)
	movl	$57, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC516, (%esp)
	call	_fwrite
	jmp	L1532
	.cfi_endproc
LFE232:
	.p2align 4
	.globl	_texcache_invalidate
	.def	_texcache_invalidate;	.scl	2;	.type	32;	.endef
_texcache_invalidate:
LFB233:
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
LFE233:
	.p2align 4
	.globl	_texcache_readdata
	.def	_texcache_readdata;	.scl	2;	.type	32;	.endef
_texcache_readdata:
LFB235:
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
	je	L1541
	cmpl	%edx, _texcache+4
	jnb	L1545
L1541:
	movl	%eax, 4(%esp)
	movl	_texcache+28, %eax
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	call	_fseek
	testl	%eax, %eax
	movl	$1, %eax
	je	L1546
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
L1546:
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
L1545:
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
LFE235:
	.section .rdata,"dr"
LC518:
	.ascii "%08I64x\0"
	.text
	.p2align 4
	.globl	_texcache_calcid.isra.0
	.def	_texcache_calcid.isra.0;	.scl	2;	.type	32;	.endef
_texcache_calcid.isra.0:
LFB237:
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
	ja	L1548
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
L1556:
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
L1549:
	movl	%eax, 8(%esp)
	movl	24(%esp), %eax
	movl	%edx, 12(%esp)
	movl	$LC518, 4(%esp)
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
L1548:
	.cfi_restore_state
	cmpl	$128, %ecx
	jbe	L1557
	cmpl	$240, %ecx
	jbe	L1558
	movl	%ecx, %edx
	movl	%esi, %eax
	call	_XXH3_hashLong_64b_withSeed.constprop.0
	jmp	L1549
	.p2align 4,,10
	.p2align 3
L1557:
	movl	$-2048144761, %eax
	imull	$-1640531535, %ecx, %ebp
	movl	%edi, 312(%esp)
	.cfi_offset 7, -12
	mull	%ecx
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	addl	%ebp, 20(%esp)
	cmpl	$32, %ecx
	jbe	L1551
	cmpl	$64, %ecx
	jbe	L1552
	cmpl	$96, %ecx
	jbe	L1553
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
L1553:
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
L1552:
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
L1551:
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
	jmp	L1556
	.p2align 4,,10
	.p2align 3
L1558:
	.cfi_restore 7
	movl	$49, (%esp)
	movl	%ecx, %edx
	movl	%esi, %eax
	movl	$0, 4(%esp)
	call	_XXH3_len_129to240_64b.constprop.0
	jmp	L1549
	.cfi_endproc
LFE237:
.lcomm __ZL4pPal,1024,32
.lcomm __ZZ20windowsWaitForVBlankvE10useDWMsync,4,4
.lcomm __ZZ20windowsWaitForVBlankvE25gdi32_D3DKMTWaitForVBlank,4,4
.lcomm __ZZ20windowsWaitForVBlankvE24gdi32_D3DKMTCloseAdapter,4,4
.lcomm __ZZ20windowsWaitForVBlankvE30gdi32_D3DKMTOpenAdapterFromHdc,4,4
.lcomm __ZZ20windowsWaitForVBlankvE6hGDI32,4,4
	.globl	__ZL30dwmapi_DwmIsCompositionEnabled.lto_priv.0
	.bss
	.align 4
__ZL30dwmapi_DwmIsCompositionEnabled.lto_priv.0:
	.space 4
	.globl	__ZL15dwmapi_DwmFlush.lto_priv.0
	.align 4
__ZL15dwmapi_DwmFlush.lto_priv.0:
	.space 4
	.globl	__ZL8tsc_freq.lto_priv.0
	.align 8
__ZL8tsc_freq.lto_priv.0:
	.space 8
	.globl	__ZL9sys_timer.lto_priv.0
	.align 4
__ZL9sys_timer.lto_priv.0:
	.space 4
	.section .rdata,"dr"
	.align 32
__ZL34FONT_ATLAS_DEFAULT_TEX_CURSOR_DATA:
	.long	0
	.long	1077936128
	.long	1094713344
	.long	1100480512
	.long	0
	.long	0
	.long	1095761920
	.long	0
	.long	1088421888
	.long	1098907648
	.long	1065353216
	.long	1090519040
	.long	1106771968
	.long	0
	.long	1102577664
	.long	1102577664
	.long	1093664768
	.long	1093664768
	.long	1101529088
	.long	0
	.long	1091567616
	.long	1102577664
	.long	1082130432
	.long	1093664768
	.long	1113325568
	.long	1099956224
	.long	1102577664
	.long	1091567616
	.long	1093664768
	.long	1082130432
	.long	1116864512
	.long	0
	.long	1099431936
	.long	1099431936
	.long	1090519040
	.long	1090519040
	.long	1113325568
	.long	0
	.long	1099431936
	.long	1099431936
	.long	1090519040
	.long	1090519040
	.long	1119223808
	.long	0
	.long	1099431936
	.long	1102053376
	.long	1084227584
	.long	0
	.long	1121583104
	.long	0
	.long	1095761920
	.long	1097859072
	.long	1086324736
	.long	1088421888
.lcomm __ZZ14videoShowFrameE12nextSwapTime,8,8
.lcomm __ZGVZ14videoShowFrameE12nextSwapTime,8,8
.lcomm _g_keyFIFOend,1,1
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
.lcomm __ZZ12handleeventsE14rumbleZeroTime,4,4
.lcomm _g_ImGuiFrameActive,1,1
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
	.globl	_glad_glGetTexLevelParameteriv
	.align 4
_glad_glGetTexLevelParameteriv:
	.space 4
.lcomm _glad_glFinish,4,4
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
LC519:
	.ascii "glActiveTexture\0"
LC520:
	.ascii "glAttachShader\0"
LC521:
	.ascii "glBindBuffer\0"
LC522:
	.ascii "glBindTexture\0"
LC523:
	.ascii "glBlendEquation\0"
LC524:
	.ascii "glBlendEquationSeparate\0"
LC525:
	.ascii "glBlendFuncSeparate\0"
LC526:
	.ascii "glBufferData\0"
LC527:
	.ascii "glBufferSubData\0"
LC528:
	.ascii "glCompileShader\0"
LC529:
	.ascii "glCreateProgram\0"
LC530:
	.ascii "glCreateShader\0"
LC531:
	.ascii "glDeleteBuffers\0"
LC532:
	.ascii "glDeleteProgram\0"
LC533:
	.ascii "glDeleteShader\0"
LC534:
	.ascii "glDeleteTextures\0"
LC535:
	.ascii "glDetachShader\0"
LC536:
	.ascii "glDisableVertexAttribArray\0"
LC537:
	.ascii "glDrawElements\0"
LC538:
	.ascii "glDrawElementsBaseVertex\0"
LC539:
	.ascii "glEnableVertexAttribArray\0"
LC540:
	.ascii "glGenBuffers\0"
LC541:
	.ascii "glGenTextures\0"
LC542:
	.ascii "glGetAttribLocation\0"
LC543:
	.ascii "glGetProgramInfoLog\0"
LC544:
	.ascii "glGetProgramiv\0"
LC545:
	.ascii "glGetShaderInfoLog\0"
LC546:
	.ascii "glGetShaderiv\0"
LC547:
	.ascii "glGetStringi\0"
LC548:
	.ascii "glGetUniformLocation\0"
LC549:
	.ascii "glGetVertexAttribPointerv\0"
LC550:
	.ascii "glGetVertexAttribiv\0"
LC551:
	.ascii "glIsProgram\0"
LC552:
	.ascii "glLinkProgram\0"
LC553:
	.ascii "glShaderSource\0"
LC554:
	.ascii "glUniform1i\0"
LC555:
	.ascii "glUniformMatrix4fv\0"
LC556:
	.ascii "glUseProgram\0"
LC557:
	.ascii "glVertexAttribPointer\0"
	.align 32
_proc_names:
	.long	LC519
	.long	LC520
	.long	LC521
	.long	LC350
	.long	LC522
	.long	LC371
	.long	LC523
	.long	LC524
	.long	LC525
	.long	LC526
	.long	LC527
	.long	LC38
	.long	LC39
	.long	LC528
	.long	LC529
	.long	LC530
	.long	LC531
	.long	LC532
	.long	LC533
	.long	LC534
	.long	LC372
	.long	LC535
	.long	LC45
	.long	LC536
	.long	LC537
	.long	LC538
	.long	LC46
	.long	LC539
	.long	LC48
	.long	LC540
	.long	LC541
	.long	LC373
	.long	LC542
	.long	LC60
	.long	LC62
	.long	LC543
	.long	LC544
	.long	LC545
	.long	LC546
	.long	LC23
	.long	LC547
	.long	LC548
	.long	LC549
	.long	LC550
	.long	LC68
	.long	LC551
	.long	LC552
	.long	LC55
	.long	LC29
	.long	LC57
	.long	LC30
	.long	LC553
	.long	LC36
	.long	LC33
	.long	LC554
	.long	LC555
	.long	LC556
	.long	LC557
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
	.align 4
LC496:
	.long	1123418112
	.set	LC497,LC431+4
	.align 4
LC498:
	.long	1602224128
	.align 4
LC499:
	.long	1593835520
	.def	___udivdi3;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_pow;	.scl	2;	.type	32;	.endef
	.def	_SDL_SetWindowGammaRamp;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z13gloadtile_artiiiiiP8pthtyp_ti;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
	.def	_texcache_freeptrs.part.0;	.scl	2;	.type	32;	.endef
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
	.def	_wm_setapptitle;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetError;	.scl	2;	.type	32;	.endef
	.def	__ZL30ImGui_ImplOpenGL3_RenderWindowP13ImGuiViewportPv.lto_priv.0;	.scl	2;	.type	32;	.endef
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
	.def	__ZL22_internal_getrowheighti.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_SDL_PollEvent;	.scl	2;	.type	32;	.endef
	.def	__Z27ImGui_ImplSDL2_ProcessEventPK9SDL_Event;	.scl	2;	.type	32;	.endef
	.def	__Z14OSD_HandleCharc;	.scl	2;	.type	32;	.endef
	.def	__Z16timerUpdateClockv;	.scl	2;	.type	32;	.endef
	.def	_videoSet2dMode;	.scl	2;	.type	32;	.endef
	.def	__Z14CON_ReallyQuitv;	.scl	2;	.type	32;	.endef
	.def	_SDL_IsTextInputActive;	.scl	2;	.type	32;	.endef
	.def	_SDL_free;	.scl	2;	.type	32;	.endef
	.def	_enet_gettime.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	_SDL_JoystickRumble;	.scl	2;	.type	32;	.endef
	.def	__ZL17_internal_gettimev.lto_priv.0;	.scl	2;	.type	32;	.endef
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
	.def	__Z12OSD_DispatchPKcb.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_memmove;	.scl	2;	.type	32;	.endef
	.def	_SDL_LockSurface;	.scl	2;	.type	32;	.endef
	.def	_SDL_UnlockSurface;	.scl	2;	.type	32;	.endef
	.def	_SDL_UpdateWindowSurface;	.scl	2;	.type	32;	.endef
	.def	_SDL_GL_SwapWindow;	.scl	2;	.type	32;	.endef
	.def	__Z19buildgl_bindTexturejj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z19polymost_resetStatev;	.scl	2;	.type	32;	.endef
	.def	__Z26timerGetPerformanceCounterv;	.scl	2;	.type	32;	.endef
	.def	_inthash_find;	.scl	2;	.type	32;	.endef
	.def	_inthash_add;	.scl	2;	.type	32;	.endef
	.def	__ZL19GetViewportDrawListP14ImGuiViewportPjPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL21AddDrawListToDrawDataP8ImVectorIP10ImDrawListES1_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGuiL34RenderDimmedBackgroundBehindWindowEP11ImGuiWindowj.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList12PushClipRectERK6ImVec2S2_b.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList7AddRectERK6ImVec2S2_jfif.part.0.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList11PopClipRectEv;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi;	.scl	2;	.type	32;	.endef
	.def	__Z32ImGui_ImplOpenGL3_RenderDrawDataP10ImDrawData;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetPerformanceFrequency;	.scl	2;	.type	32;	.endef
	.def	__ZL19AddWindowToDrawDataP11ImGuiWindowi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList19_OnChangedTextureIDEv;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList13PushTextureIDEPv;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList11PrimReserveEii;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j;	.scl	2;	.type	32;	.endef
	.def	__Z11win_gethwndv;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui13IsWindowAboveEP11ImGuiWindowS1_;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList10AddDrawCmdEv;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	__Z18_mi_malloc_genericP9mi_heap_sjbj;	.scl	2;	.type	32;	.endef
	.def	__Z15mi_heap_try_newP9mi_heap_sjb;	.scl	2;	.type	32;	.endef
	.def	_mi_new_nothrow;	.scl	2;	.type	32;	.endef
	.def	_hicfindsubst;	.scl	2;	.type	32;	.endef
	.def	__Z12gloadtile_hiiiiP10hicreplc_tiP8pthtyp_tit;	.scl	2;	.type	32;	.endef
	.def	_hicfindskybox.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_hicclearsubst.part.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZN3mio10basic_mmapILNS_11access_modeE1EcE5unmapEv;	.scl	2;	.type	32;	.endef
	.def	_hash_init;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_fwrite;	.scl	2;	.type	32;	.endef
	.def	_polymost_glreset;	.scl	2;	.type	32;	.endef
	.def	_unlink;	.scl	2;	.type	32;	.endef
	.def	_fseek;	.scl	2;	.type	32;	.endef
	.def	_fread;	.scl	2;	.type	32;	.endef
	.def	_XXH3_mul128_fold64.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	_XXH3_hashLong_64b_withSeed.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_XXH3_len_129to240_64b.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZL31ImGui_ImplSDL2_GetClipboardTextPv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL27ImGui_ImplSDL2_RenderWindowP13ImGuiViewportPv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL25ImGui_ImplSDL2_ShowWindowP13ImGuiViewport.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL27ImGui_ImplSDL2_CreateWindowP13ImGuiViewport.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL28ImGui_ImplSDL2_GetWindowSizeP13ImGuiViewport.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL27ImGui_ImplSDL2_GetWindowPosP13ImGuiViewport.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL29ImGui_ImplSDL2_SetWindowTitleP13ImGuiViewportPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL29ImGui_ImplSDL2_GetWindowFocusP13ImGuiViewport.lto_priv.0;	.scl	2;	.type	32;	.endef
