	.file	"<artificial>"
	.text
	.p2align 4
	.def	_polymer_getsky;	.scl	3;	.type	32;	.endef
_polymer_getsky:
LFB0:
	.cfi_startproc
	movb	%cl, __ZL11curskyshade
	movl	_pskynummultis, %ecx
	movb	%dl, __ZL9curskypal
	leal	-1(%ecx), %edx
	movw	%ax, __ZL6cursky.lto_priv.0
	cwtl
	movl	_multipskytile, %ecx
	testl	%edx, %edx
	jg	L4
	jmp	L3
	.p2align 4
	.p2align 4,,10
	.p2align 3
L15:
	subl	$1, %edx
	je	L14
L4:
	cmpl	(%ecx,%edx,4), %eax
	jne	L15
L3:
	movl	_parallaxyscale_override, %eax
	testl	%eax, %eax
	jne	L5
	sall	$5, %edx
	addl	_multipsky, %edx
	xorps	%xmm0, %xmm0
	movl	(%edx), %eax
	testl	%eax, %eax
	jne	L5
	movss	%xmm0, __ZL12curskyangmul.lto_priv.0
	ret
	.p2align 4,,10
	.p2align 3
L5:
	cmpl	$65536, %eax
	movl	$LC1, %edx
	movl	$LC2, %eax
	cmove	%edx, %eax
	movss	(%eax), %xmm0
	movss	%xmm0, __ZL12curskyangmul.lto_priv.0
	ret
	.p2align 4,,10
	.p2align 3
L14:
	xorl	%edx, %edx
	jmp	L3
	.cfi_endproc
LFE0:
	.section .rdata,"dr"
	.align 4
LC3:
	.ascii "Compiling program with bits (octal) %o\0"
LC4:
	.ascii "source/build/src/polymer.cpp\0"
	.align 4
LC5:
	.ascii "Failed to compile program with bits (octal) %o!\0"
LC6:
	.ascii "Linking log:\12%s\0"
LC7:
	.ascii "Vertex compile log:\12%s\0"
LC8:
	.ascii "Fragment compile log:\12%s\0"
LC9:
	.ascii "Vertex source dump:\12%s\0"
LC10:
	.ascii "Fragment source dump:\12%s\0"
LC11:
	.ascii "u_colorCorrection\0"
LC12:
	.ascii "nextFrameData\0"
LC13:
	.ascii "nextFrameNormal\0"
LC14:
	.ascii "frameProgress\0"
LC15:
	.ascii "T\0"
LC16:
	.ascii "B\0"
LC17:
	.ascii "N\0"
LC18:
	.ascii "eyePosition\0"
LC19:
	.ascii "normalMap\0"
LC20:
	.ascii "normalBias\0"
LC21:
	.ascii "artMap\0"
LC22:
	.ascii "basePalMap\0"
LC23:
	.ascii "lookupMap\0"
LC24:
	.ascii "shadeOffset\0"
LC25:
	.ascii "visibility\0"
LC26:
	.ascii "diffuseMap\0"
LC27:
	.ascii "diffuseScale\0"
LC28:
	.ascii "highPalookupMap\0"
LC29:
	.ascii "detailMap\0"
LC30:
	.ascii "detailScale\0"
LC31:
	.ascii "specMap\0"
LC32:
	.ascii "specMaterial\0"
LC33:
	.ascii "mirrorMap\0"
LC34:
	.ascii "linearFog\0"
LC35:
	.ascii "glowMap\0"
LC36:
	.ascii "shadowProjMatrix\0"
LC37:
	.ascii "shadowMap\0"
LC38:
	.ascii "lightMap\0"
LC39:
	.ascii "spotDir\0"
LC40:
	.ascii "spotRadius\0"
	.text
	.p2align 4
	.def	_polymer_compileprogram;	.scl	3;	.type	32;	.endef
_polymer_compileprogram:
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
	pushl	%eax
	.cfi_def_cfa_offset 24
	movl	$8384, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	.cfi_def_cfa_offset 8408
	movl	(%esp,%eax), %eax
	movl	$35633, (%esp)
	movl	%eax, %edi
	call	*_glad_glCreateShader
	.cfi_def_cfa_offset 8404
	xorl	%ecx, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 20(%esp)
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L18:
	btl	%eax, %edi
	jnc	L17
	movl	%eax, %edx
	sall	$4, %edx
	movl	__ZL13prprogrambits(%edx), %edx
	movl	%edx, 28(%esp,%ecx,4)
	addl	$1, %ecx
L17:
	addl	$1, %eax
	cmpl	$21, %eax
	jne	L18
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L20:
	btl	%eax, %edi
	jnc	L19
	movl	%eax, %edx
	sall	$4, %edx
	movl	__ZL13prprogrambits+4(%edx), %edx
	movl	%edx, 28(%esp,%ecx,4)
	addl	$1, %ecx
L19:
	addl	$1, %eax
	cmpl	$21, %eax
	jne	L20
	movl	20(%esp), %esi
	leal	28(%esp), %ebx
	movl	%ecx, 4(%esp)
	movl	$0, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%esi, (%esp)
	call	*_glad_glShaderSource
	.cfi_def_cfa_offset 8392
	subl	$16, %esp
	.cfi_def_cfa_offset 8408
	movl	%esi, (%esp)
	call	*_glad_glCompileShader
	.cfi_def_cfa_offset 8404
	subl	$4, %esp
	.cfi_def_cfa_offset 8408
	movl	$35632, (%esp)
	call	*_glad_glCreateShader
	.cfi_def_cfa_offset 8404
	xorl	%ecx, %ecx
	movl	%eax, %ebp
	subl	$4, %esp
	.cfi_def_cfa_offset 8408
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L22:
	btl	%eax, %edi
	jnc	L21
	movl	%eax, %edx
	sall	$4, %edx
	movl	__ZL13prprogrambits+8(%edx), %edx
	movl	%edx, 28(%esp,%ecx,4)
	addl	$1, %ecx
L21:
	addl	$1, %eax
	cmpl	$21, %eax
	jne	L22
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L24:
	btl	%eax, %edi
	jnc	L23
	movl	%eax, %edx
	sall	$4, %edx
	movl	__ZL13prprogrambits+12(%edx), %edx
	movl	%edx, 28(%esp,%ecx,4)
	addl	$1, %ecx
L23:
	addl	$1, %eax
	cmpl	$21, %eax
	jne	L24
	movl	%ecx, 4(%esp)
	movl	%ebx, 8(%esp)
	movl	$0, 12(%esp)
	movl	%ebp, (%esp)
	call	*_glad_glShaderSource
	.cfi_def_cfa_offset 8392
	subl	$16, %esp
	.cfi_def_cfa_offset 8408
	movl	%ebp, (%esp)
	call	*_glad_glCompileShader
	.cfi_def_cfa_offset 8404
	subl	$4, %esp
	.cfi_def_cfa_offset 8408
	call	*_glad_glCreateProgram
	movl	%eax, %esi
	movl	20(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glAttachShader
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glAttachShader
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%esi, (%esp)
	call	*_glad_glLinkProgram
	.cfi_def_cfa_offset 8404
	subl	$4, %esp
	.cfi_def_cfa_offset 8408
	leal	24(%esp), %eax
	movl	$35714, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetProgramiv
	.cfi_def_cfa_offset 8396
	subl	$12, %esp
	.cfi_def_cfa_offset 8408
	leal	196(%esp), %eax
	movl	$0, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$8192, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetProgramInfoLog
	.cfi_def_cfa_offset 8392
	movl	_g_sm_heap, %ecx
	subl	$16, %esp
	.cfi_def_cfa_offset 8408
	movl	$124, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 8404
	subl	$4, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L25
	movl	$0, 108(%eax)
	movl	$0, 112(%eax)
	movl	$0, 116(%eax)
	movl	$0, 120(%eax)
	xorl	%eax, %eax
L26:
	movl	$0, 4(%ebx,%eax)
	movl	$0, 8(%ebx,%eax)
	movl	$0, 12(%ebx,%eax)
	movl	$0, 16(%ebx,%eax)
	addl	$16, %eax
	cmpl	$112, %eax
	jb	L26
	movl	%esi, (%ebx)
	cmpl	$1, _pr_verbosity
	jg	L123
L29:
	movl	24(%esp), %edx
	testl	%edx, %edx
	je	L124
L31:
	movl	$LC11, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 4(%ebx)
	testl	$2, %edi
	je	L38
	movl	$LC12, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetAttribLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 8(%ebx)
	movl	$LC13, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetAttribLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 12(%ebx)
	movl	$LC14, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 16(%ebx)
L38:
	testl	$8, %edi
	je	L39
	movl	$LC15, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetAttribLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 20(%ebx)
	movl	$LC16, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetAttribLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 24(%ebx)
	movl	$LC17, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetAttribLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 28(%ebx)
	movl	$LC18, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 32(%ebx)
	movl	$LC19, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 36(%ebx)
	movl	$LC20, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 40(%ebx)
L39:
	testl	$16, %edi
	je	L40
	movl	$LC21, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 44(%ebx)
	movl	$LC22, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 48(%ebx)
	movl	$LC23, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 52(%ebx)
	movl	$LC24, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 56(%ebx)
	movl	$LC25, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 60(%ebx)
L40:
	testl	$32, %edi
	je	L41
	movl	$LC26, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 64(%ebx)
	movl	$LC27, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 68(%ebx)
L41:
	testl	$512, %edi
	je	L42
	movl	$LC28, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 72(%ebx)
L42:
	testl	$64, %edi
	je	L43
	movl	$LC29, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 76(%ebx)
	movl	$LC30, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 80(%ebx)
L43:
	testl	$1024, %edi
	je	L44
	movl	$LC31, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 84(%ebx)
L44:
	testl	$2048, %edi
	je	L45
	movl	$LC32, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 88(%ebx)
L45:
	testl	$4096, %edi
	je	L46
	movl	$LC33, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 92(%ebx)
L46:
	testl	$8192, %edi
	je	L47
	movl	$LC34, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 96(%ebx)
L47:
	testl	$16384, %edi
	je	L48
	movl	$LC35, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 100(%ebx)
L48:
	testl	$32768, %edi
	je	L49
	movl	$LC36, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 104(%ebx)
L49:
	testl	$65536, %edi
	je	L50
	movl	$LC37, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 108(%ebx)
L50:
	testl	$131072, %edi
	je	L51
	movl	$LC38, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 112(%ebx)
L51:
	testl	$262144, %edi
	je	L52
	movl	$LC39, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 116(%ebx)
	movl	$LC40, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 120(%ebx)
L52:
	movl	$0, (%esp)
	movl	%edi, %edx
	movl	$__ZL14prprogramtable.lto_priv.0, %eax
	movl	%ebx, %ecx
	call	_inthash_add
	movl	__ZL13prprogramptrs.lto_priv.0+4, %edx
	movl	__ZL13prprogramptrs.lto_priv.0, %eax
	cmpl	__ZL13prprogramptrs.lto_priv.0+8, %edx
	je	L125
L53:
	leal	1(%edx), %ecx
	movl	%ecx, __ZL13prprogramptrs.lto_priv.0+4
	movl	%ebx, (%eax,%edx,4)
	movl	__ZL13prprogramptrs.lto_priv.0+4, %edx
	movl	__ZL13prprogramptrs.lto_priv.0, %eax
	movl	-4(%eax,%edx,4), %eax
	addl	$8388, %esp
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
L123:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$6, %eax
	jg	L126
	movl	24(%esp), %eax
	testl	%eax, %eax
	jne	L31
L56:
	leal	196(%esp), %eax
	movl	$0, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$8192, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetProgramInfoLog
	.cfi_def_cfa_offset 8392
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	subl	$16, %esp
	.cfi_def_cfa_offset 8408
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$6, %eax
	jg	L127
L34:
	leal	196(%esp), %eax
	movl	$0, 8(%esp)
	movl	%eax, 12(%esp)
	movl	20(%esp), %eax
	movl	$8192, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetShaderInfoLog
	.cfi_def_cfa_offset 8392
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	subl	$16, %esp
	.cfi_def_cfa_offset 8408
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$6, %eax
	jg	L128
L35:
	leal	196(%esp), %eax
	movl	$0, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$8192, 4(%esp)
	movl	%ebp, (%esp)
	call	*_glad_glGetShaderInfoLog
	.cfi_def_cfa_offset 8392
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	subl	$16, %esp
	.cfi_def_cfa_offset 8408
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$6, %eax
	jg	L129
L36:
	leal	196(%esp), %eax
	movl	$0, 8(%esp)
	movl	%eax, 12(%esp)
	movl	20(%esp), %eax
	movl	$8192, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetShaderSource
	.cfi_def_cfa_offset 8392
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	subl	$16, %esp
	.cfi_def_cfa_offset 8408
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$6, %eax
	jg	L130
L37:
	leal	196(%esp), %eax
	movl	$0, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$8192, 4(%esp)
	movl	%ebp, (%esp)
	call	*_glad_glGetShaderSource
	.cfi_def_cfa_offset 8392
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	subl	$16, %esp
	.cfi_def_cfa_offset 8408
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$6, %eax
	jle	L31
	leal	196(%esp), %eax
	movl	$LC10, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$5712, 8(%esp)
	movl	$LC4, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L31
L124:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$6, %eax
	jle	L122
	movl	%edi, 16(%esp)
	movl	$LC5, 12(%esp)
	movl	$5696, 8(%esp)
	movl	$LC4, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L122:
	movl	_pr_verbosity, %eax
	testl	%eax, %eax
	jle	L31
	jmp	L56
L125:
	leal	1(%edx), %esi
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	leal	0(,%esi,4), %edi
	movl	%edi, 4(%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	testl	%eax, %eax
	jne	L57
	testl	%edi, %edi
	jne	L54
L57:
	movl	%eax, __ZL13prprogramptrs.lto_priv.0
	movl	__ZL13prprogramptrs.lto_priv.0+4, %edx
	movl	%esi, __ZL13prprogramptrs.lto_priv.0+8
	jmp	L53
L126:
	movl	%edi, 16(%esp)
	movl	$LC3, 12(%esp)
	movl	$5694, 8(%esp)
	movl	$LC4, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L29
L25:
	movl	$124, %eax
	call	__Z13handle_memerri
L127:
	leal	196(%esp), %eax
	movl	$LC6, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$5700, 8(%esp)
	movl	$LC4, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L34
L130:
	leal	196(%esp), %eax
	movl	$LC9, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$5709, 8(%esp)
	movl	$LC4, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L37
L129:
	leal	196(%esp), %eax
	movl	$LC8, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$5706, 8(%esp)
	movl	$LC4, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L36
L128:
	leal	196(%esp), %eax
	movl	$LC7, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$5703, 8(%esp)
	movl	$LC4, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L35
L54:
	movl	%edi, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE1:
	.p2align 4
	.def	__ZL13calc_ypancoefcsi;	.scl	3;	.type	32;	.endef
__ZL13calc_ypancoefcsi:
LFB6:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movswl	%dx, %edx
	movl	%eax, %ebx
	xorps	%xmm2, %xmm2
	xorps	%xmm1, %xmm1
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	movzbl	_picsiz(%edx), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	cvtsi2ssl	_pow2long.lto_priv.1(,%eax,4), %xmm2
	movswl	_tilesiz+2(,%edx,4), %eax
	cvtsi2ssl	%eax, %xmm1
	comiss	%xmm2, %xmm1
	jbe	L132
	addss	%xmm2, %xmm2
L132:
	movzbl	%bl, %eax
	testl	%ecx, %ecx
	jne	L139
L135:
	mulss	LC42, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	divss	%xmm1, %xmm0
	mulss	%xmm2, %xmm0
	movss	%xmm0, 4(%esp)
	flds	4(%esp)
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L139:
	.cfi_restore_state
	movss	LC41, %xmm3
	movaps	%xmm2, %xmm0
	movss	%xmm2, 8(%esp)
	subss	%xmm1, %xmm0
	movss	%xmm1, 4(%esp)
	divss	%xmm2, %xmm3
	mulss	%xmm3, %xmm0
	movss	%xmm0, (%esp)
	call	_lrintf
	movl	$256, %edx
	movss	8(%esp), %xmm2
	movss	4(%esp), %xmm1
	movl	%eax, %ecx
	movzbl	%bl, %eax
	subl	%ecx, %edx
	subl	%ecx, %ebx
	movzbl	%bl, %ebx
	cmpl	%edx, %eax
	cmovg	%ebx, %eax
	jmp	L135
	.cfi_endproc
LFE6:
	.p2align 4
	.globl	_polymer_freeboard.lto_priv.0
	.def	_polymer_freeboard.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_freeboard.lto_priv.0:
LFB8:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	xorl	%ebx, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	.p2align 4
	.p2align 3
L146:
	movl	_prsectors(,%ebx,4), %eax
	testl	%eax, %eax
	je	L141
	movl	(%eax), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	_prsectors(,%ebx,4), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	_prsectors(,%ebx,4), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	256(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	_prsectors(,%ebx,4), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	176(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	_prsectors(,%ebx,4), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	428(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	_prsectors(,%ebx,4), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	264(%eax), %edx
	testl	%edx, %edx
	je	L142
	addl	$264, %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteBuffers
	.cfi_def_cfa_offset 8
	movl	_prsectors(,%ebx,4), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 16
L142:
	movl	436(%eax), %ecx
	testl	%ecx, %ecx
	je	L143
	addl	$436, %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteBuffers
	.cfi_def_cfa_offset 8
	movl	_prsectors(,%ebx,4), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 16
L143:
	movl	12(%eax), %edx
	testl	%edx, %edx
	je	L144
	addl	$12, %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteBuffers
	.cfi_def_cfa_offset 8
	movl	_prsectors(,%ebx,4), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 16
L144:
	movl	184(%eax), %ecx
	testl	%ecx, %ecx
	je	L145
	addl	$184, %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteBuffers
	.cfi_def_cfa_offset 8
	movl	_prsectors(,%ebx,4), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 16
L145:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	$0, _prsectors(,%ebx,4)
L141:
	addl	$1, %ebx
	cmpl	$4096, %ebx
	jne	L146
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L152:
	movl	_prwalls(,%ebx,4), %eax
	testl	%eax, %eax
	je	L147
	movl	756(%eax), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	_prwalls(,%ebx,4), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	504(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	_prwalls(,%ebx,4), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	252(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	_prwalls(,%ebx,4), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	_prwalls(,%ebx,4), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	8(%eax), %edx
	testl	%edx, %edx
	je	L148
	addl	$8, %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteBuffers
	.cfi_def_cfa_offset 8
	movl	_prwalls(,%ebx,4), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 16
L148:
	movl	260(%eax), %ecx
	testl	%ecx, %ecx
	je	L149
	addl	$260, %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteBuffers
	.cfi_def_cfa_offset 8
	movl	_prwalls(,%ebx,4), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 16
L149:
	movl	512(%eax), %edx
	testl	%edx, %edx
	je	L150
	addl	$512, %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteBuffers
	.cfi_def_cfa_offset 8
	movl	_prwalls(,%ebx,4), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 16
L150:
	movl	760(%eax), %ecx
	testl	%ecx, %ecx
	je	L151
	addl	$760, %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteBuffers
	.cfi_def_cfa_offset 8
	movl	_prwalls(,%ebx,4), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 16
L151:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	$0, _prwalls(,%ebx,4)
L147:
	addl	$1, %ebx
	cmpl	$16384, %ebx
	jne	L152
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L155:
	movl	_prsprites(,%ebx,4), %eax
	testl	%eax, %eax
	je	L153
	movl	(%eax), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	_prsprites(,%ebx,4), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	8(%eax), %edx
	testl	%edx, %edx
	je	L154
	addl	$8, %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteBuffers
	.cfi_def_cfa_offset 8
	movl	_prsprites(,%ebx,4), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 16
L154:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	$0, _prsprites(,%ebx,4)
L153:
	addl	$1, %ebx
	cmpl	$16384, %ebx
	jne	L155
	movl	$_prartmaps, %ebx
	.p2align 4
	.p2align 3
L157:
	movl	(%ebx), %ecx
	testl	%ecx, %ecx
	je	L156
	movl	%ebx, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glDeleteTextures
	.cfi_def_cfa_offset 8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	$0, (%ebx)
L156:
	addl	$4, %ebx
	cmpl	$_prartmaps+122880, %ebx
	jne	L157
	movl	$_prbasepalmaps, %ebx
	.p2align 4
	.p2align 3
L159:
	movl	(%ebx), %edx
	testl	%edx, %edx
	je	L158
	movl	%ebx, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glDeleteTextures
	.cfi_def_cfa_offset 8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	$0, (%ebx)
L158:
	addl	$4, %ebx
	cmpl	$_prbasepalmaps+1024, %ebx
	jne	L159
	movl	$_prlookups, %ebx
	.p2align 4
	.p2align 3
L161:
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L160
	movl	%ebx, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glDeleteTextures
	.cfi_def_cfa_offset 8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	$0, (%ebx)
L160:
	addl	$4, %ebx
	cmpl	$_prlookups+1024, %ebx
	jne	L161
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE8:
	.p2align 4
	.globl	_polymer_computeplane.lto_priv.0
	.def	_polymer_computeplane.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_computeplane.lto_priv.0:
LFB10:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$72, %esp
	movl	%edi, -4(%ebp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	movl	172(%eax), %eax
	movl	%eax, 52(%esp)
	testl	%eax, %eax
	je	L197
	movl	176(%edi), %eax
	cmpl	$2, %eax
	jle	L178
	movl	%ebx, -12(%ebp)
	leal	-1(%eax), %ecx
	movl	%esi, -8(%ebp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	(%edi), %esi
	movl	%edi, 8(%esp)
	movl	%ecx, 56(%esp)
	xorl	%ecx, %ecx
	movl	%esi, 12(%esp)
	movl	%eax, %esi
L182:
	movl	%ecx, %eax
	movl	56(%esp), %edi
	cltd
	idivl	%edi
	movl	52(%esp), %eax
	movzwl	(%eax,%edx,2), %ebx
	cmpl	%esi, %ebx
	jg	L196
	leal	1(%ecx), %eax
	cltd
	idivl	%edi
	movl	52(%esp), %eax
	movzwl	(%eax,%edx,2), %edi
	cmpl	%esi, %edi
	jg	L196
	leal	2(%ecx), %eax
	cltd
	idivl	56(%esp)
	movl	52(%esp), %eax
	movzwl	(%eax,%edx,2), %edx
	cmpl	%esi, %edx
	jg	L196
	leal	(%edi,%edi,2), %eax
	movl	12(%esp), %edi
	leal	(%ebx,%ebx,2), %ebx
	leal	(%edi,%eax,8), %eax
	leal	(%edi,%ebx,8), %ebx
	movss	12(%eax), %xmm6
	movss	(%eax), %xmm2
	movss	4(%eax), %xmm1
	movss	8(%eax), %xmm0
	movss	%xmm6, 40(%esp)
	movss	12(%ebx), %xmm6
	movaps	%xmm2, %xmm5
	subss	(%ebx), %xmm5
	movaps	%xmm1, %xmm4
	movaps	%xmm0, %xmm7
	subss	8(%ebx), %xmm7
	movss	%xmm6, 16(%esp)
	movss	16(%eax), %xmm6
	leal	(%edx,%edx,2), %eax
	subss	4(%ebx), %xmm4
	leal	(%edi,%eax,8), %eax
	movss	(%eax), %xmm3
	movss	%xmm6, 20(%esp)
	movss	16(%ebx), %xmm6
	movss	%xmm7, 36(%esp)
	subss	%xmm2, %xmm3
	movss	4(%eax), %xmm2
	movss	%xmm6, 24(%esp)
	movaps	%xmm2, %xmm6
	subss	%xmm1, %xmm6
	movss	8(%eax), %xmm1
	movss	%xmm3, 48(%esp)
	movaps	%xmm7, %xmm3
	subss	%xmm0, %xmm1
	movss	12(%eax), %xmm0
	mulss	%xmm6, %xmm3
	movss	%xmm0, 28(%esp)
	movss	16(%eax), %xmm0
	movl	8(%esp), %eax
	movaps	%xmm1, %xmm2
	movss	%xmm1, 44(%esp)
	movss	%xmm0, 32(%esp)
	mulss	%xmm5, %xmm2
	movaps	%xmm1, %xmm0
	movss	48(%esp), %xmm1
	mulss	%xmm4, %xmm0
	mulss	%xmm1, %xmm7
	mulss	%xmm4, %xmm1
	subss	%xmm0, %xmm3
	movaps	%xmm5, %xmm0
	mulss	%xmm6, %xmm0
	subss	%xmm7, %xmm2
	movaps	%xmm3, %xmm7
	movss	%xmm3, 56(%eax)
	mulss	%xmm3, %xmm7
	movss	%xmm2, 60(%eax)
	subss	%xmm0, %xmm1
	movaps	%xmm2, %xmm0
	mulss	%xmm2, %xmm0
	movss	%xmm1, 64(%eax)
	addss	%xmm7, %xmm0
	movaps	%xmm1, %xmm7
	mulss	%xmm1, %xmm7
	addss	%xmm7, %xmm0
	comiss	LC44, %xmm0
	jnb	L198
	addl	$3, %ecx
	cmpl	%esi, %ecx
	jl	L182
L196:
	movl	-12(%ebp), %ebx
	.cfi_restore 3
	movl	-8(%ebp), %esi
	.cfi_restore 6
L178:
	movl	-4(%ebp), %edi
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L197:
	.cfi_restore_state
	movl	%ebx, -12(%ebp)
	xorl	%ecx, %ecx
	movl	%esi, -8(%ebp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	4(%edi), %eax
	movl	(%edi), %esi
	movl	%eax, 56(%esp)
	subl	$1, %eax
	movl	%eax, 52(%esp)
	.p2align 4
	.p2align 3
L180:
	movl	%ecx, %eax
	cltd
	idivl	52(%esp)
	movl	%edx, %ebx
	cmpl	%edx, 56(%esp)
	jl	L196
	leal	1(%ecx), %edx
	movl	%edx, %eax
	movl	%edx, 12(%esp)
	cltd
	idivl	52(%esp)
	movl	%edx, 48(%esp)
	cmpl	%edx, 56(%esp)
	jl	L196
	leal	2(%ecx), %eax
	cltd
	idivl	52(%esp)
	cmpl	%edx, 56(%esp)
	jl	L196
	movl	48(%esp), %ecx
	leal	(%ecx,%ecx,2), %eax
	leal	(%ebx,%ebx,2), %ecx
	leal	(%esi,%eax,8), %eax
	leal	(%esi,%ecx,8), %ecx
	movss	12(%eax), %xmm6
	movss	(%eax), %xmm2
	movss	4(%eax), %xmm1
	movss	8(%eax), %xmm0
	movss	%xmm6, 40(%esp)
	movss	12(%ecx), %xmm6
	movaps	%xmm2, %xmm5
	subss	(%ecx), %xmm5
	movaps	%xmm1, %xmm4
	movaps	%xmm0, %xmm7
	subss	8(%ecx), %xmm7
	movss	%xmm6, 16(%esp)
	movss	16(%eax), %xmm6
	leal	(%edx,%edx,2), %eax
	subss	4(%ecx), %xmm4
	leal	(%esi,%eax,8), %eax
	movss	(%eax), %xmm3
	movss	%xmm6, 20(%esp)
	movss	16(%ecx), %xmm6
	movss	%xmm7, 36(%esp)
	subss	%xmm2, %xmm3
	movss	4(%eax), %xmm2
	movss	%xmm6, 24(%esp)
	movaps	%xmm2, %xmm6
	subss	%xmm1, %xmm6
	movss	8(%eax), %xmm1
	movss	%xmm3, 48(%esp)
	movaps	%xmm7, %xmm3
	subss	%xmm0, %xmm1
	movss	12(%eax), %xmm0
	mulss	%xmm6, %xmm3
	movss	%xmm0, 28(%esp)
	movss	16(%eax), %xmm0
	movaps	%xmm1, %xmm2
	movss	%xmm1, 44(%esp)
	movss	%xmm0, 32(%esp)
	mulss	%xmm5, %xmm2
	movaps	%xmm1, %xmm0
	movss	48(%esp), %xmm1
	mulss	%xmm4, %xmm0
	mulss	%xmm1, %xmm7
	mulss	%xmm4, %xmm1
	subss	%xmm0, %xmm3
	movaps	%xmm5, %xmm0
	mulss	%xmm6, %xmm0
	subss	%xmm7, %xmm2
	movaps	%xmm3, %xmm7
	movss	%xmm3, 56(%edi)
	mulss	%xmm3, %xmm7
	movss	%xmm2, 60(%edi)
	subss	%xmm0, %xmm1
	movaps	%xmm2, %xmm0
	mulss	%xmm2, %xmm0
	movss	%xmm1, 64(%edi)
	addss	%xmm7, %xmm0
	movaps	%xmm1, %xmm7
	mulss	%xmm1, %xmm7
	addss	%xmm7, %xmm0
	comiss	LC44, %xmm0
	jnb	L189
	movl	12(%esp), %ecx
	cmpl	%ecx, 56(%esp)
	jg	L180
	jmp	L196
	.p2align 4,,10
	.p2align 3
L198:
	movl	%edi, %esi
	movss	%xmm5, 4(%esp)
	movl	%eax, %edi
	movss	%xmm4, (%esp)
L183:
	movss	40(%esp), %xmm4
	subss	16(%esp), %xmm4
	sqrtss	%xmm0, %xmm0
	movss	20(%esp), %xmm7
	movss	28(%esp), %xmm5
	subss	40(%esp), %xmm5
	movss	%xmm4, 16(%esp)
	movaps	%xmm7, %xmm4
	subss	24(%esp), %xmm4
	movss	%xmm5, 20(%esp)
	movss	%xmm4, 24(%esp)
	movss	32(%esp), %xmm4
	subss	%xmm7, %xmm4
	movss	LC45, %xmm7
	divss	%xmm0, %xmm7
	mulss	%xmm7, %xmm3
	mulss	%xmm7, %xmm2
	mulss	%xmm1, %xmm7
	movss	%xmm3, 56(%edi)
	movss	%xmm2, 60(%edi)
	movss	%xmm7, 64(%edi)
	movss	(%esi), %xmm1
	movss	4(%esi), %xmm0
	movss	%xmm3, 56(%esp)
	mulss	%xmm3, %xmm1
	movss	24(%esp), %xmm3
	movss	%xmm2, 40(%esp)
	mulss	%xmm2, %xmm0
	movaps	%xmm4, %xmm2
	movss	%xmm7, 52(%esp)
	addss	%xmm1, %xmm0
	movss	8(%esi), %xmm1
	mulss	%xmm7, %xmm1
	addss	%xmm1, %xmm0
	xorps	LC46, %xmm0
	movss	48(%esp), %xmm1
	movss	%xmm0, 68(%edi)
	movss	16(%esp), %xmm0
	mulss	%xmm3, %xmm1
	mulss	%xmm4, %xmm0
	movaps	%xmm3, %xmm4
	mulss	%xmm5, %xmm4
	movss	LC1, %xmm5
	subss	%xmm4, %xmm0
	movaps	%xmm2, %xmm4
	divss	%xmm0, %xmm5
	movss	4(%esp), %xmm0
	mulss	%xmm2, %xmm0
	subss	%xmm1, %xmm0
	movaps	%xmm3, %xmm1
	mulss	%xmm6, %xmm1
	movaps	%xmm0, %xmm2
	movss	(%esp), %xmm0
	mulss	%xmm4, %xmm0
	mulss	36(%esp), %xmm4
	subss	%xmm1, %xmm0
	mulss	%xmm5, %xmm2
	movaps	%xmm5, %xmm7
	movaps	%xmm0, %xmm5
	movaps	%xmm4, %xmm0
	movss	24(%esp), %xmm4
	mulss	44(%esp), %xmm4
	mulss	%xmm7, %xmm5
	movaps	%xmm2, %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm4, %xmm0
	movaps	%xmm5, %xmm3
	movaps	%xmm0, %xmm5
	movaps	%xmm3, %xmm0
	mulss	%xmm7, %xmm5
	mulss	%xmm3, %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm5, %xmm1
	mulss	%xmm5, %xmm1
	addss	%xmm1, %xmm0
	movss	LC1, %xmm1
	sqrtss	%xmm0, %xmm0
	divss	%xmm0, %xmm1
	movaps	%xmm6, %xmm0
	mulss	%xmm1, %xmm2
	movaps	%xmm1, %xmm4
	mulss	%xmm5, %xmm4
	mulss	%xmm1, %xmm3
	movss	%xmm2, 32(%esp)
	movss	48(%esp), %xmm1
	movss	20(%esp), %xmm5
	movss	%xmm4, 24(%esp)
	movss	16(%esp), %xmm4
	mulss	4(%esp), %xmm5
	movss	20(%esp), %xmm6
	movss	%xmm3, 28(%esp)
	mulss	%xmm4, %xmm1
	mulss	%xmm4, %xmm0
	subss	%xmm5, %xmm1
	movaps	%xmm4, %xmm5
	movss	(%esp), %xmm4
	mulss	%xmm6, %xmm4
	mulss	%xmm7, %xmm1
	subss	%xmm4, %xmm0
	movss	44(%esp), %xmm4
	mulss	%xmm5, %xmm4
	movss	36(%esp), %xmm5
	mulss	%xmm7, %xmm0
	mulss	%xmm6, %xmm5
	movss	56(%esp), %xmm6
	movaps	%xmm4, %xmm2
	movaps	%xmm0, %xmm4
	subss	%xmm5, %xmm2
	mulss	%xmm0, %xmm4
	movaps	%xmm1, %xmm5
	mulss	%xmm1, %xmm5
	mulss	%xmm7, %xmm2
	movss	52(%esp), %xmm7
	addss	%xmm5, %xmm4
	movaps	%xmm2, %xmm5
	mulss	%xmm2, %xmm5
	addss	%xmm5, %xmm4
	movss	LC1, %xmm5
	sqrtss	%xmm4, %xmm4
	divss	%xmm4, %xmm5
	movaps	%xmm7, %xmm4
	mulss	%xmm5, %xmm0
	mulss	%xmm5, %xmm2
	mulss	%xmm5, %xmm1
	movss	40(%esp), %xmm5
	mulss	%xmm0, %xmm4
	mulss	%xmm2, %xmm5
	subss	%xmm5, %xmm4
	movaps	%xmm6, %xmm5
	mulss	%xmm2, %xmm5
	mulss	%xmm0, %xmm6
	movss	%xmm4, 48(%esp)
	mulss	32(%esp), %xmm4
	movaps	%xmm4, %xmm3
	movaps	%xmm7, %xmm4
	mulss	%xmm1, %xmm4
	movaps	%xmm4, %xmm7
	subss	%xmm5, %xmm4
	mulss	28(%esp), %xmm4
	subss	%xmm7, %xmm5
	movss	40(%esp), %xmm7
	subss	%xmm4, %xmm3
	movss	40(%esp), %xmm4
	mulss	%xmm1, %xmm4
	subss	%xmm6, %xmm4
	movss	24(%esp), %xmm6
	mulss	%xmm4, %xmm6
	addss	%xmm3, %xmm6
	movss	LC1, %xmm3
	divss	%xmm6, %xmm3
	movss	48(%esp), %xmm6
	mulss	%xmm3, %xmm5
	mulss	%xmm3, %xmm6
	mulss	%xmm3, %xmm4
	movss	%xmm5, 32(%edi)
	movss	28(%esp), %xmm5
	movss	%xmm6, 20(%edi)
	movss	52(%esp), %xmm6
	movss	%xmm4, 44(%edi)
	movss	24(%esp), %xmm4
	mulss	%xmm6, %xmm5
	mulss	%xmm7, %xmm4
	subss	%xmm5, %xmm4
	movss	24(%esp), %xmm5
	mulss	%xmm3, %xmm4
	movss	%xmm4, 24(%edi)
	movss	32(%esp), %xmm4
	mulss	%xmm6, %xmm4
	movss	56(%esp), %xmm6
	mulss	%xmm6, %xmm5
	subss	%xmm5, %xmm4
	mulss	%xmm3, %xmm4
	movss	%xmm4, 36(%edi)
	movss	32(%esp), %xmm5
	mulss	28(%esp), %xmm6
	mulss	%xmm7, %xmm5
	movss	28(%esp), %xmm7
	movaps	%xmm6, %xmm4
	movss	24(%esp), %xmm6
	subss	%xmm5, %xmm4
	movaps	%xmm6, %xmm5
	mulss	%xmm0, %xmm5
	mulss	%xmm3, %xmm4
	movss	%xmm4, 48(%edi)
	movaps	%xmm7, %xmm4
	mulss	%xmm2, %xmm4
	subss	%xmm5, %xmm4
	mulss	%xmm3, %xmm4
	movss	%xmm4, 28(%edi)
	movaps	%xmm6, %xmm4
	movss	32(%esp), %xmm6
	mulss	%xmm1, %xmm4
	mulss	%xmm6, %xmm2
	mulss	%xmm6, %xmm0
	mulss	%xmm7, %xmm1
	subss	%xmm2, %xmm4
	subss	%xmm1, %xmm0
	movaps	%xmm4, %xmm2
	mulss	%xmm3, %xmm2
	mulss	%xmm3, %xmm0
	movss	%xmm2, 40(%edi)
	movss	%xmm0, 52(%edi)
	movl	-12(%ebp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	-8(%ebp), %esi
	.cfi_restore 6
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
L189:
	.cfi_restore_state
	movss	%xmm5, 4(%esp)
	movss	%xmm4, (%esp)
	jmp	L183
	.cfi_endproc
LFE10:
	.section .rdata,"dr"
LC47:
	.ascii "Frustum extracted.\0"
	.text
	.p2align 4
	.globl	_polymer_extractfrustum.lto_priv.0
	.def	_polymer_extractfrustum.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_extractfrustum.lto_priv.0:
LFB11:
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
	movl	%edx, %edi
	pushl	%esi
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	movl	%eax, %esi
	pushl	%ebx
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%ecx, %ebx
	subl	$92, %esp
	movl	$5890, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	movl	%edi, (%esp)
	call	*_glad_glLoadMatrixf
	subl	$4, %esp
	movl	%esi, (%esp)
	call	*_glad_glMultMatrixf
	leal	-88(%ebp), %eax
	subl	$4, %esp
	movl	%eax, 4(%esp)
	movl	$2984, (%esp)
	call	*_glad_glGetFloatv
	subl	$8, %esp
	call	*_glad_glLoadIdentity
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	movups	-88(%ebp), %xmm0
	movups	-56(%ebp), %xmm1
	subl	$4, %esp
	movaps	%xmm0, %xmm2
	shufps	$221, -72(%ebp), %xmm0
	shufps	$136, -72(%ebp), %xmm2
	movaps	%xmm0, %xmm5
	movaps	%xmm2, %xmm4
	movaps	%xmm1, %xmm3
	shufps	$221, -40(%ebp), %xmm1
	shufps	$136, -40(%ebp), %xmm3
	shufps	$221, %xmm1, %xmm0
	shufps	$136, %xmm1, %xmm5
	shufps	$136, %xmm3, %xmm4
	movaps	%xmm4, %xmm1
	addps	%xmm0, %xmm1
	shufps	$221, %xmm3, %xmm2
	movups	%xmm1, (%ebx)
	movaps	%xmm0, %xmm1
	subps	%xmm4, %xmm1
	movups	%xmm1, 16(%ebx)
	movaps	%xmm0, %xmm1
	subps	%xmm5, %xmm1
	addps	%xmm0, %xmm5
	subps	%xmm2, %xmm0
	movups	%xmm1, 32(%ebx)
	movups	%xmm5, 48(%ebx)
	movups	%xmm0, 64(%ebx)
	cmpl	$2, _pr_verbosity
	jg	L202
L199:
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
L202:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L199
	movl	$LC47, 12(%esp)
	movl	$3862, 8(%esp)
	movl	$LC4, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	leal	-12(%ebp), %esp
	popl	%ebx
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
	.cfi_endproc
LFE11:
	.section .rdata,"dr"
LC48:
	.ascii "%d_%d\0"
	.text
	.p2align 4
	.globl	_polymer_getbuildmaterial.lto_priv.0
	.def	_polymer_getbuildmaterial.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_getbuildmaterial.lto_priv.0:
LFB12:
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
	.cfi_offset 6, -16
	movswl	%dx, %esi
	pushl	%ebx
	.cfi_offset 3, -20
	leal	-28(%ebp), %ebx
	subl	$92, %esp
	movzbl	8(%ebp), %eax
	movw	%dx, -52(%ebp)
	movb	%cl, -45(%ebp)
	movb	%al, -46(%ebp)
	movzbl	12(%ebp), %eax
	movl	%esi, -32(%ebp)
	movb	%al, -47(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -44(%ebp)
	movzbl	%cl, %eax
	movl	%eax, -36(%ebp)
	movl	%eax, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$LC48, 4(%esp)
	movl	%ebx, (%esp)
	call	_sprintf
	movl	_prbuckethead, %eax
	testl	%eax, %eax
	je	L204
	movl	%ebx, %edx
	movl	$__ZL9h_buckets, %eax
	call	_hash_find
	movl	%eax, %esi
	cmpl	$-1, %eax
	je	L204
L210:
	movss	LC1, %xmm0
	movl	-32(%ebp), %eax
	movl	$0x00000000, (%edi)
	movl	$-1, 4(%edi)
	movl	$0, 8(%edi)
	movl	$0x00000000, 16(%edi)
	movl	$0x00000000, 12(%edi)
	movl	$0, 20(%edi)
	movl	$0, 24(%edi)
	movl	$0, 28(%edi)
	movl	$0, 32(%edi)
	movl	$0, 44(%edi)
	movl	$0, 56(%edi)
	movl	$0, 60(%edi)
	movl	$-1, 72(%edi)
	movl	$0, 76(%edi)
	movl	$0x41700000, 80(%edi)
	movl	$0, 88(%edi)
	movl	$0, 92(%edi)
	movb	$0, 96(%edi)
	movss	%xmm0, 52(%edi)
	movss	%xmm0, 48(%edi)
	movss	%xmm0, 68(%edi)
	movss	%xmm0, 64(%edi)
	movss	%xmm0, 84(%edi)
	movl	_waloff(,%eax,4), %ecx
	testl	%ecx, %ecx
	je	L389
L211:
	movl	-44(%ebp), %eax
	xorl	%ecx, %ecx
	movl	%eax, (%esp)
	movl	-36(%ebp), %edx
	movl	-32(%ebp), %eax
	call	_texcache_fetch
	movss	LC1, %xmm0
	testl	%eax, %eax
	movl	%eax, %ebx
	je	L390
	movl	12(%eax), %eax
	movl	%eax, 44(%edi)
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	L216
	movss	12(%eax), %xmm1
	movss	%xmm1, 48(%edi)
	movl	8(%ebx), %eax
	movss	16(%eax), %xmm1
	movl	_pr_artmapping, %eax
	movss	%xmm1, 52(%edi)
	testl	%eax, %eax
	jne	L217
	movl	_pr_highpalookups, %eax
	movl	%eax, -44(%ebp)
	testl	%eax, %eax
	jne	L218
L387:
	movl	8(%ebx), %eax
	movl	%eax, -40(%ebp)
L219:
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	je	L226
L221:
	movl	-40(%ebp), %eax
	movss	24(%eax), %xmm1
	ucomiss	%xmm0, %xmm1
	jp	L298
	je	L248
L298:
	movss	%xmm1, 80(%edi)
	movl	8(%ebx), %eax
	movl	%eax, -40(%ebp)
L248:
	movl	-40(%ebp), %eax
	movss	28(%eax), %xmm1
	movss	%xmm1, 84(%edi)
L226:
	cmpl	$3, _rendmode
	je	L391
L250:
	movsbl	-46(%ebp), %eax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	mulss	_shadescale, %xmm1
	cmpl	$4, _r_usenewshading
	je	L392
	movswl	_numshades, %edx
	movl	_shadescale_unbounded, %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%edx, %xmm3
	testl	%ecx, %ecx
	je	L258
L260:
	movaps	%xmm3, %xmm2
L259:
	xorps	%xmm4, %xmm4
	movaps	%xmm1, %xmm0
	cmpnltss	%xmm4, %xmm0
	movss	LC41, %xmm4
	andps	%xmm1, %xmm0
	minss	%xmm0, %xmm2
	movaps	%xmm3, %xmm0
	subss	%xmm2, %xmm0
	divss	%xmm3, %xmm0
	mulss	%xmm4, %xmm0
	cvttss2sil	%xmm0, %edx
	xorps	%xmm0, %xmm0
	movl	%edx, %eax
	movzbl	%dl, %edx
	cvtsi2ssl	%edx, %xmm0
L254:
	movb	%al, 74(%edi)
	movb	%al, 73(%edi)
	movb	%al, 72(%edi)
	movl	-36(%ebp), %eax
	movzwl	_hictinting(,%eax,8), %edx
	movzwl	34(%ebx), %eax
	andl	$2, %eax
	testb	$-60, %dl
	jne	L293
	testw	%ax, %ax
	je	L264
	movzbl	-45(%ebp), %eax
	cmpb	%al, 38(%ebx)
	jne	L265
	movzwl	36(%ebx), %eax
	andl	$32, %edx
	andw	$199, %ax
	orw	%dx, %ax
	je	L294
L265:
	movl	-36(%ebp), %edx
	xorps	%xmm1, %xmm1
	xorps	%xmm2, %xmm2
	movss	LC51, %xmm3
	movzbl	_hictinting+2(,%edx,8), %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm0, %xmm1
	mulss	%xmm3, %xmm1
	cvttss2sil	%xmm1, %eax
	xorps	%xmm1, %xmm1
	movl	%eax, -36(%ebp)
	movzbl	-36(%ebp), %eax
	movb	%al, 72(%edi)
	movzbl	_hictinting+3(,%edx,8), %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm0, %xmm1
	mulss	%xmm3, %xmm1
	cvttss2sil	%xmm1, %ecx
	xorps	%xmm1, %xmm1
	movb	%cl, 73(%edi)
	movzbl	_hictinting+4(,%edx,8), %eax
	movzbl	%cl, %ecx
	movzbl	-36(%ebp), %edx
	cvtsi2ssl	%ecx, %xmm2
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	mulss	%xmm3, %xmm0
	cvttss2sil	%xmm0, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movl	%eax, -40(%ebp)
	movzbl	-40(%ebp), %eax
	movzbl	-40(%ebp), %edx
	movb	%al, 74(%edi)
	movzwl	34(%ebx), %eax
	cvtsi2ssl	%edx, %xmm1
	andl	$2, %eax
	testw	%ax, %ax
	jne	L393
	.p2align 4
	.p2align 3
L266:
	mulss	%xmm4, %xmm0
	mulss	%xmm4, %xmm2
	mulss	%xmm4, %xmm1
	mulss	%xmm3, %xmm0
	mulss	%xmm3, %xmm2
	mulss	%xmm3, %xmm1
	cvttss2sil	%xmm0, %eax
	movb	%al, 72(%edi)
	cvttss2sil	%xmm2, %eax
	movb	%al, 73(%edi)
	cvttss2sil	%xmm1, %eax
	movb	%al, 74(%edi)
	movl	_r_fullbrights, %eax
	testl	%eax, %eax
	je	L215
	testb	$16, 34(%ebx)
	jne	L394
	.p2align 4
	.p2align 3
L215:
	movl	-32(%ebp), %eax
	movl	$1, %ecx
	movl	$255, %edx
	call	_hicfindsubst
	testl	%eax, %eax
	je	L271
	movl	-32(%ebp), %eax
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	movl	$255, %edx
	call	_texcache_fetch
	testl	%eax, %eax
	je	L271
	movl	8(%eax), %edx
	testl	%edx, %edx
	je	L271
	cmpb	$-1, 32(%edx)
	je	L395
	.p2align 4
	.p2align 3
L271:
	movl	-32(%ebp), %eax
	movl	$1, %ecx
	movl	$254, %edx
	call	_hicfindsubst
	testl	%eax, %eax
	je	L272
	movl	-32(%ebp), %eax
	movl	$1, (%esp)
	xorl	%ecx, %ecx
	movl	$254, %edx
	call	_texcache_fetch
	testl	%eax, %eax
	je	L272
	movl	8(%eax), %edx
	testl	%edx, %edx
	je	L272
	cmpb	$-2, 32(%edx)
	je	L396
	.p2align 4
	.p2align 3
L272:
	movl	-32(%ebp), %eax
	movl	$1, %ecx
	movl	$253, %edx
	call	_hicfindsubst
	testl	%eax, %eax
	je	L273
	movl	-32(%ebp), %eax
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	movl	$253, %edx
	call	_texcache_fetch
	testl	%eax, %eax
	je	L273
	movl	8(%eax), %edx
	testl	%edx, %edx
	je	L273
	cmpb	$-3, 32(%edx)
	je	L397
	.p2align 4
	.p2align 3
L273:
	movl	-32(%ebp), %eax
	movl	$1, %ecx
	movl	$252, %edx
	call	_hicfindsubst
	testl	%eax, %eax
	je	L243
	movl	-32(%ebp), %eax
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	movl	$252, %edx
	call	_texcache_fetch
	testl	%eax, %eax
	je	L243
	movl	8(%eax), %edx
	testl	%edx, %edx
	je	L243
	cmpb	$-4, 32(%edx)
	je	L398
	.p2align 4
	.p2align 3
L243:
	movl	104(%esi), %ecx
	testl	%ecx, %ecx
	je	L203
	leal	4(%esi), %edx
	xorl	%eax, %eax
	movl	%edx, -36(%ebp)
L275:
	movl	12(%edi,%eax), %edx
	movl	8(%edi,%eax), %ecx
	movl	4(%edi,%eax), %ebx
	movl	%edx, -32(%ebp)
	movl	(%edi,%eax), %edx
	movl	%ecx, 12(%esi,%eax)
	movl	-32(%ebp), %ecx
	movl	%edx, 4(%esi,%eax)
	movl	%ebx, 8(%esi,%eax)
	movl	%ecx, 16(%esi,%eax)
	addl	$16, %eax
	cmpl	$96, %eax
	jb	L275
	movl	(%edi,%eax), %ecx
	movl	-36(%ebp), %edx
	movl	%ecx, (%edx,%eax)
	movl	$0, 104(%esi)
L203:
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
L204:
	.cfi_restore_state
	movl	$128, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L206
	movl	__ZL9h_buckets+12, %eax
	testl	%eax, %eax
	je	L399
L208:
	movl	_prbuckethead, %eax
	movl	$1024, %edx
	movl	%esi, _prbuckethead
	movl	$1, 104(%esi)
	movl	%eax, 124(%esi)
	movzwl	-52(%ebp), %eax
	movl	%edx, 116(%esi)
	movw	%ax, (%esi)
	movzbl	-45(%ebp), %eax
	movb	%al, 2(%esi)
	xorl	%eax, %eax
	movl	%eax, 112(%esi)
	movl	$4096, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L209
	movl	%eax, 108(%esi)
	movl	%esi, %ecx
	movl	%ebx, %edx
	movl	$__ZL9h_buckets, %eax
	movl	$1, (%esp)
	call	_hash_add
	jmp	L210
	.p2align 4,,10
	.p2align 3
L217:
	movl	_globalflags, %eax
	andl	$1, %eax
	orl	_gltexfiltermode, %eax
	je	L400
	movl	_pr_highpalookups, %eax
	movl	%eax, -44(%ebp)
	testl	%eax, %eax
	je	L387
	movzbl	_curbasepal, %eax
	movb	%al, -44(%ebp)
	movl	_prhighpalookups(,%eax,4), %eax
	testl	%eax, %eax
	je	L296
L228:
	movl	-36(%ebp), %ecx
	leal	(%eax,%ecx,8), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L244
L284:
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	testl	%eax, %eax
	jne	L283
L244:
	movl	$0, -44(%ebp)
L246:
	testl	%ebx, %ebx
	je	L215
	movzbl	-45(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	8(%ebx), %eax
	movl	%eax, -40(%ebp)
	jmp	L219
	.p2align 4,,10
	.p2align 3
L293:
	movss	LC51, %xmm3
	movaps	%xmm0, %xmm1
	movaps	%xmm0, %xmm2
L263:
	testw	%ax, %ax
	je	L266
L393:
	testb	$1, -44(%ebp)
	jne	L266
	cmpw	$-1, _hictinting+2042
	je	L401
L269:
	movzbl	_hictinting+2042, %eax
	xorps	%xmm5, %xmm5
	cvtsi2ssl	%eax, %xmm5
	mulss	%xmm5, %xmm0
	xorps	%xmm5, %xmm5
	mulss	%xmm3, %xmm0
	cvttss2sil	%xmm0, %edx
	xorps	%xmm0, %xmm0
	movb	%dl, 72(%edi)
	movzbl	_hictinting+2043, %eax
	movzbl	%dl, %edx
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	mulss	%xmm3, %xmm0
	cvttss2sil	%xmm0, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movb	%al, 73(%edi)
	movzbl	%al, %eax
	cvtsi2ssl	%eax, %xmm2
	movzbl	_hictinting+2044, %eax
	cvtsi2ssl	%eax, %xmm5
	mulss	%xmm5, %xmm1
	mulss	%xmm3, %xmm1
	cvttss2sil	%xmm1, %eax
	xorps	%xmm1, %xmm1
	movzbl	%al, %eax
	cvtsi2ssl	%eax, %xmm1
	jmp	L266
	.p2align 4,,10
	.p2align 3
L389:
	call	_tileLoad.isra.0
	jmp	L211
	.p2align 4,,10
	.p2align 3
L390:
	movl	_pr_artmapping, %edx
	testl	%edx, %edx
	je	L402
	movl	_globalflags, %eax
	andl	$1, %eax
	orl	_gltexfiltermode, %eax
	je	L403
	movl	_pr_highpalookups, %eax
	testl	%eax, %eax
	je	L215
	movzbl	_curbasepal, %eax
	movb	%al, -44(%ebp)
	movl	_prhighpalookups(,%eax,4), %eax
	testl	%eax, %eax
	jne	L228
	jmp	L215
	.p2align 4,,10
	.p2align 3
L391:
	movl	_r_useindexedcolortextures, %eax
	testl	%eax, %eax
	je	L251
	movl	_gltexfiltermode, %eax
	testl	%eax, %eax
	jne	L251
L252:
	movl	_usehightile, %eax
	testl	%eax, %eax
	jne	L404
L253:
	movss	LC41, %xmm4
	movl	$-1, %eax
	movaps	%xmm4, %xmm0
	jmp	L254
	.p2align 4,,10
	.p2align 3
L216:
	movl	_pr_artmapping, %eax
	testl	%eax, %eax
	jne	L217
	movl	_pr_highpalookups, %eax
	movl	%eax, -44(%ebp)
	testl	%eax, %eax
	je	L226
L218:
	movzbl	_curbasepal, %eax
	movb	%al, -44(%ebp)
	movl	_prhighpalookups(,%eax,4), %eax
	testl	%eax, %eax
	je	L296
	movl	-36(%ebp), %ecx
	leal	(%eax,%ecx,8), %eax
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	jne	L284
L296:
	movl	$0, -44(%ebp)
	jmp	L387
	.p2align 4,,10
	.p2align 3
L258:
	cmpl	%edx, %eax
	jge	L260
	subl	$1, %edx
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%edx, %xmm2
	jmp	L259
	.p2align 4,,10
	.p2align 3
L264:
	testw	$264, %dx
	jne	L405
	movss	LC51, %xmm3
	movaps	%xmm0, %xmm1
	movaps	%xmm0, %xmm2
	jmp	L266
	.p2align 4,,10
	.p2align 3
L394:
	movl	4(%ebx), %eax
	movl	12(%eax), %eax
	movl	%eax, 92(%edi)
	jmp	L215
	.p2align 4,,10
	.p2align 3
L402:
	movl	_pr_highpalookups, %eax
	testl	%eax, %eax
	je	L215
	movzbl	_curbasepal, %eax
	movb	%al, -44(%ebp)
	movl	_prhighpalookups(,%eax,4), %eax
	testl	%eax, %eax
	je	L215
	movl	-36(%ebp), %ecx
	leal	(%eax,%ecx,8), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	jne	L284
	jmp	L215
	.p2align 4,,10
	.p2align 3
L251:
	movl	_r_usetileshades, %eax
	testl	%eax, %eax
	je	L250
	testb	$1, _globalflags
	jne	L250
	jmp	L252
	.p2align 4,,10
	.p2align 3
L397:
	movl	12(%eax), %eax
	movl	%eax, 76(%edi)
	jmp	L273
	.p2align 4,,10
	.p2align 3
L396:
	movl	12(%eax), %eax
	movl	%eax, 92(%edi)
	jmp	L272
	.p2align 4,,10
	.p2align 3
L398:
	movl	12(%eax), %edx
	movl	%edx, 8(%edi)
	movl	8(%eax), %edx
	movss	24(%edx), %xmm0
	movss	%xmm0, 12(%edi)
	movl	8(%eax), %eax
	movss	28(%eax), %xmm0
	movss	%xmm0, 16(%edi)
	jmp	L243
	.p2align 4,,10
	.p2align 3
L395:
	movl	12(%eax), %edx
	movl	%edx, 60(%edi)
	movl	8(%eax), %edx
	movss	12(%edx), %xmm0
	movss	%xmm0, 64(%edi)
	movl	8(%eax), %eax
	movss	16(%eax), %xmm0
	movss	%xmm0, 68(%edi)
	jmp	L271
	.p2align 4,,10
	.p2align 3
L206:
	movl	$128, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L392:
	divss	_frealmaxshade, %xmm1
	movaps	%xmm0, %xmm2
	movss	LC41, %xmm4
	subss	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	cmpltss	%xmm2, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm2, %xmm1
	xorps	%xmm2, %xmm2
	orps	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	cmpnltss	%xmm2, %xmm1
	andps	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	mulss	%xmm4, %xmm1
	cvttss2sil	%xmm1, %edx
	movl	%edx, %eax
	movzbl	%dl, %edx
	cvtsi2ssl	%edx, %xmm0
	jmp	L254
	.p2align 4,,10
	.p2align 3
L399:
	movl	$__ZL9h_buckets, %eax
	call	_hash_init
	jmp	L208
	.p2align 4,,10
	.p2align 3
L400:
	movl	8(%ebx), %eax
	movl	%eax, -40(%ebp)
	testl	%eax, %eax
	je	L220
	movl	_pr_highpalookups, %eax
	movl	%eax, -44(%ebp)
	testl	%eax, %eax
	je	L221
	movzbl	_curbasepal, %eax
	movb	%al, -44(%ebp)
	movl	_prhighpalookups(,%eax,4), %eax
	testl	%eax, %eax
	je	L388
	movl	-36(%ebp), %ecx
	movl	(%eax,%ecx,8), %edx
	testl	%edx, %edx
	je	L388
	movl	4(%eax,%ecx,8), %eax
	movl	%eax, -52(%ebp)
	testl	%eax, %eax
	jne	L406
L281:
	movl	$0, -44(%ebp)
	jmp	L219
	.p2align 4,,10
	.p2align 3
L403:
	cmpw	$30463, -52(%ebp)
	jle	L223
	movl	_pr_highpalookups, %eax
	testl	%eax, %eax
	je	L215
	movzbl	_curbasepal, %eax
	movb	%al, -44(%ebp)
	movl	_prhighpalookups(,%eax,4), %eax
	testl	%eax, %eax
	je	L215
	movl	-36(%ebp), %ecx
	movl	(%eax,%ecx,8), %edx
	testl	%edx, %edx
	je	L215
	movl	4(%eax,%ecx,8), %eax
	movl	%eax, -52(%ebp)
	testl	%eax, %eax
	je	L215
	.p2align 4
	.p2align 3
L283:
	movl	-32(%ebp), %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	call	_hicfindsubst
	movss	LC1, %xmm0
	testl	%eax, %eax
	je	L244
L245:
	cmpb	$0, -44(%ebp)
	je	L407
L247:
	movl	-52(%ebp), %eax
	movl	$1, -44(%ebp)
	movb	$0, -45(%ebp)
	movl	%eax, 56(%edi)
	jmp	L246
	.p2align 4,,10
	.p2align 3
L405:
	movl	-36(%ebp), %edx
	xorps	%xmm1, %xmm1
	xorps	%xmm2, %xmm2
	movss	LC51, %xmm3
	movzbl	_hictinting+2(,%edx,8), %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm0, %xmm1
	mulss	%xmm3, %xmm1
	cvttss2sil	%xmm1, %ecx
	xorps	%xmm1, %xmm1
	movb	%cl, 72(%edi)
	movzbl	_hictinting+3(,%edx,8), %eax
	movzbl	%cl, %ecx
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm0, %xmm1
	mulss	%xmm3, %xmm1
	cvttss2sil	%xmm1, %eax
	xorps	%xmm1, %xmm1
	movl	%eax, -36(%ebp)
	movzbl	-36(%ebp), %eax
	movb	%al, 73(%edi)
	movzbl	_hictinting+4(,%edx,8), %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	mulss	%xmm3, %xmm0
	cvttss2sil	%xmm0, %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	movzbl	-36(%ebp), %ecx
	cvtsi2ssl	%ecx, %xmm2
	movb	%dl, 74(%edi)
	movzwl	34(%ebx), %eax
	movzbl	%dl, %edx
	cvtsi2ssl	%edx, %xmm1
	andl	$2, %eax
	jmp	L263
	.p2align 4,,10
	.p2align 3
L294:
	movss	LC51, %xmm3
	movaps	%xmm0, %xmm1
	movaps	%xmm0, %xmm2
	movl	$2, %eax
	jmp	L263
	.p2align 4,,10
	.p2align 3
L209:
	movl	$4096, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L404:
	movl	_globalpal, %edx
	movswl	_globalpicnum, %eax
	movzwl	_hictinting(,%edx,8), %ecx
	andl	$256, %ecx
	call	_hicfindsubst
	movss	LC1, %xmm0
	testl	%eax, %eax
	jne	L250
	jmp	L253
	.p2align 4,,10
	.p2align 3
L223:
	movl	-36(%ebp), %eax
	movzwl	_hictinting(,%eax,8), %eax
	testw	$264, %ax
	je	L229
	movzbl	-45(%ebp), %ecx
	testb	$16, %al
	movl	$0, %eax
	cmovne	%ecx, %eax
	movb	%al, -45(%ebp)
L229:
	movl	-32(%ebp), %eax
	movl	_prartmaps(,%eax,4), %edx
	testl	%edx, %edx
	je	L230
	movzbl	_curbasepal, %eax
	movl	_prbasepalmaps(,%eax,4), %ebx
	testl	%ebx, %ebx
	je	L231
	movzbl	-45(%ebp), %ebx
	movl	_prlookups(,%ebx,4), %ecx
	testl	%ecx, %ecx
	jne	L233
L232:
	leal	_prlookups(,%ebx,4), %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glGenTextures
	movl	_prlookups(,%ebx,4), %edx
	movl	$34037, %eax
	subl	$8, %esp
	call	__Z19buildgl_bindTexturejj
	movl	_palookup(,%ebx,4), %eax
	movl	$5121, 28(%esp)
	movl	$6403, 24(%esp)
	movl	%eax, 32(%esp)
	movl	$0, 20(%esp)
	movswl	_numshades, %eax
	movl	$256, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$6403, 8(%esp)
	movl	$0, 4(%esp)
	movl	$34037, (%esp)
	call	*_glad_glTexImage2D
	subl	$36, %esp
	movl	$0, 8(%esp)
	movl	$33084, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$9728, 8(%esp)
	movl	$10241, 4(%esp)
	movl	$34037, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$9728, 8(%esp)
	movl	$10240, 4(%esp)
	movl	$34037, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$33071, 8(%esp)
	movl	$10242, 4(%esp)
	movl	$34037, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$33071, 8(%esp)
	movl	$10243, 4(%esp)
	movl	$34037, (%esp)
	call	*_glad_glTexParameteri
	xorl	%edx, %edx
	movl	$34037, %eax
	subl	$12, %esp
	call	__Z19buildgl_bindTexturejj
L386:
	movl	-32(%ebp), %eax
	movl	_prartmaps(,%eax,4), %edx
	movzbl	_curbasepal, %eax
L233:
	movl	%edx, 24(%edi)
	movl	_prbasepalmaps(,%eax,4), %edx
	movl	%edx, 28(%edi)
	movl	_prlookups(,%ebx,4), %eax
	movl	%eax, 32(%edi)
	testl	%eax, %eax
	je	L297
	testl	%edx, %edx
	jne	L241
L297:
	movl	$0, 24(%edi)
L241:
	movss	LC41, %xmm2
	movsbl	-46(%ebp), %eax
	xorps	%xmm0, %xmm0
	movss	LC51, %xmm1
	movl	%eax, 36(%edi)
	movzbl	-47(%ebp), %eax
	addl	$16, %eax
	movzbl	%al, %eax
	cvtsi2ssl	%eax, %xmm0
	movzbl	72(%edi), %eax
	movss	%xmm0, 40(%edi)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	xorps	%xmm0, %xmm0
	movb	%al, 72(%edi)
	movzbl	73(%edi), %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	xorps	%xmm0, %xmm0
	movb	%al, 73(%edi)
	movzbl	74(%edi), %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movb	%al, 74(%edi)
	jmp	L243
	.p2align 4,,10
	.p2align 3
L220:
	cmpw	$30463, -52(%ebp)
	jle	L223
	movl	_pr_highpalookups, %eax
	movl	%eax, -44(%ebp)
	testl	%eax, %eax
	je	L226
	movzbl	_curbasepal, %eax
	movb	%al, -44(%ebp)
	movl	_prhighpalookups(,%eax,4), %eax
	testl	%eax, %eax
	je	L408
	movl	-36(%ebp), %ecx
	movl	(%eax,%ecx,8), %edx
	testl	%edx, %edx
	je	L281
	movl	4(%eax,%ecx,8), %eax
	movl	%eax, -52(%ebp)
	testl	%eax, %eax
	je	L281
	jmp	L283
	.p2align 4,,10
	.p2align 3
L401:
	cmpb	$-1, _hictinting+2044
	jne	L269
	jmp	L266
	.p2align 4,,10
	.p2align 3
L407:
	movl	-36(%ebp), %edx
	movl	-32(%ebp), %eax
	xorl	%ecx, %ecx
	call	_hicfindsubst
	movzbl	-45(%ebp), %ecx
	movss	LC1, %xmm0
	cmpb	%cl, 32(%eax)
	jne	L247
	jmp	L244
	.p2align 4,,10
	.p2align 3
L388:
	movl	$0, -44(%ebp)
	jmp	L221
L230:
	movl	-32(%ebp), %edx
	movl	_waloff(,%edx,4), %eax
	movswl	_tilesiz(,%edx,4), %ebx
	movl	%eax, -60(%ebp)
	movswl	_tilesiz+2(,%edx,4), %eax
	imull	%eax, %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -56(%ebp)
	testl	%eax, %eax
	je	L234
	movl	-32(%ebp), %edx
	movswl	_tilesiz+2(,%edx,4), %eax
	testw	%ax, %ax
	jle	L235
	movl	$0, -40(%ebp)
	xorl	%ebx, %ebx
	movl	%edx, %ecx
	movl	%esi, -64(%ebp)
	movl	%edi, -68(%ebp)
	.p2align 4
	.p2align 3
L236:
	movl	-60(%ebp), %esi
	movl	-56(%ebp), %edi
	movl	$0, -36(%ebp)
	addl	-40(%ebp), %edi
	addl	%ebx, %esi
	cmpw	$0, _tilesiz(,%ecx,4)
	jle	L238
	movl	%ebx, -52(%ebp)
	xorl	%edx, %edx
	.p2align 6
	.p2align 4
	.p2align 3
L237:
	imull	%edx, %eax
	movl	%edx, -36(%ebp)
	movzbl	(%esi,%eax), %eax
	movb	%al, (%edi,%edx)
	movswl	_tilesiz(,%ecx,4), %ebx
	addl	$1, %edx
	movswl	_tilesiz+2(,%ecx,4), %eax
	cmpl	%ebx, %edx
	jl	L237
	movl	-40(%ebp), %esi
	movl	-36(%ebp), %edx
	movl	-52(%ebp), %ebx
	leal	1(%esi,%edx), %esi
	movl	%esi, -40(%ebp)
L238:
	addl	$1, %ebx
	cmpl	%eax, %ebx
	jl	L236
	movl	-64(%ebp), %esi
	movl	-68(%ebp), %edi
L235:
	movl	-32(%ebp), %ebx
	movl	$1, (%esp)
	leal	_prartmaps(,%ebx,4), %eax
	movl	%eax, 4(%esp)
	call	*_glad_glGenTextures
	movl	_prartmaps(,%ebx,4), %eax
	subl	$8, %esp
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	-56(%ebp), %eax
	movl	$5121, 28(%esp)
	movl	$6403, 24(%esp)
	movl	%eax, 32(%esp)
	movl	$0, 20(%esp)
	movswl	_tilesiz+2(,%ebx,4), %eax
	movl	%eax, 16(%esp)
	movswl	_tilesiz(,%ebx,4), %eax
	movl	$6403, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$0, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexImage2D
	subl	$36, %esp
	movl	$0, 8(%esp)
	movl	$33084, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$9728, 8(%esp)
	movl	$10241, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$9728, 8(%esp)
	movl	$10240, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	movl	-44(%ebp), %ecx
	subl	$12, %esp
	andl	$4, %ecx
	movl	$10242, 4(%esp)
	cmpl	$1, %ecx
	movl	$3553, (%esp)
	sbbl	%ebx, %ebx
	andl	$-22574, %ebx
	addl	$33071, %ebx
	movl	%ebx, 8(%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	%ebx, 8(%esp)
	movl	$10243, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	xorl	%eax, %eax
	subl	$12, %esp
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movzbl	_curbasepal, %eax
	subl	$4, %esp
	movl	_prbasepalmaps(,%eax,4), %ecx
	testl	%ecx, %ecx
	jne	L385
	.p2align 4
	.p2align 3
L231:
	leal	_prbasepalmaps(,%eax,4), %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glGenTextures
	movzbl	_curbasepal, %eax
	subl	$8, %esp
	movl	_prbasepalmaps(,%eax,4), %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	movzbl	_curbasepal, %eax
	movl	_basepaltable(,%eax,4), %eax
	movl	$5121, 28(%esp)
	movl	$6407, 24(%esp)
	movl	%eax, 32(%esp)
	movl	$0, 20(%esp)
	movl	$1, 16(%esp)
	movl	$256, 12(%esp)
	movl	$6407, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexImage2D
	subl	$36, %esp
	movl	$0, 8(%esp)
	movl	$33084, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$9728, 8(%esp)
	movl	$10241, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$9728, 8(%esp)
	movl	$10240, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$33071, 8(%esp)
	movl	$10242, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$33071, 8(%esp)
	movl	$10243, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	xorl	%eax, %eax
	subl	$12, %esp
	call	__Z19buildgl_bindTexturejj.constprop.0
L385:
	movzbl	-45(%ebp), %ebx
	movl	_prlookups(,%ebx,4), %eax
	testl	%eax, %eax
	jne	L386
	jmp	L232
L406:
	movl	-32(%ebp), %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	call	_hicfindsubst
	movss	LC1, %xmm0
	testl	%eax, %eax
	jne	L245
	jmp	L281
L408:
	movl	$0, -44(%ebp)
	jmp	L226
L234:
	movl	%ebx, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE12:
	.section .rdata,"dr"
LC53:
	.ascii "Skipped wall %i.\0"
LC56:
	.ascii "Updated wall %i.\0"
	.text
	.p2align 4
	.globl	_polymer_updatewall.lto_priv.0
	.def	_polymer_updatewall.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_updatewall.lto_priv.0:
LFB20:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$100, %esp
	movl	%edi, -4(%ebp)
	.cfi_offset 7, -12
	movswl	%ax, %edi
	movswl	_wallsect(%edi,%edi), %eax
	cmpl	$2, _pr_nullrender
	jg	L409
	testl	%eax, %eax
	js	L409
	movzwl	_numsectors, %edx
	cmpw	%dx, %ax
	jge	L409
	movl	%ebx, -12(%ebp)
	testw	%di, %di
	.cfi_offset 3, -20
	js	L640
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	movzwl	_numwalls, %esi
	movw	%si, -28(%ebp)
	cmpw	%di, %si
	jl	L647
	movl	_sector, %ecx
	leal	(%eax,%eax,4), %esi
	leal	(%ecx,%esi,8), %esi
	movl	%ecx, -36(%ebp)
	movl	%esi, -20(%ebp)
	movl	%esi, %ecx
	movswl	(%esi), %esi
	cmpw	%si, %di
	jl	L647
	movswl	2(%ecx), %ebx
	addl	%esi, %ebx
	cmpl	%ebx, %edi
	jge	L647
	movl	4(%ecx), %esi
	cmpl	%esi, 8(%ecx)
	je	L658
	movl	%edi, %esi
	movl	_prsectors(,%eax,4), %eax
	movl	_prwalls(,%edi,4), %ebx
	sall	$5, %esi
	movl	%esi, -48(%ebp)
	addl	_wall, %esi
	movl	%eax, -24(%ebp)
	movzwl	10(%esi), %ecx
	movl	564(%eax), %eax
	movl	%esi, -16(%ebp)
	movw	%cx, -32(%ebp)
	movl	%eax, -52(%ebp)
	testw	%cx, %cx
	js	L415
	cmpw	%cx, -28(%ebp)
	jg	L412
L415:
	movl	$0, -40(%ebp)
	movl	$0, -28(%ebp)
L414:
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L659
L416:
	movl	-16(%ebp), %esi
	leal	16384(%edi), %ecx
	movzwl	14(%esi), %eax
	movl	%eax, _globalorientation
	movl	%eax, %edx
	movswl	16(%esi), %eax
	movw	%ax, -36(%ebp)
	cmpb	$63, _picanm+3(%eax,%eax,4)
	ja	L660
L420:
	movl	-16(%ebp), %eax
	movswl	18(%eax), %eax
	movw	%ax, -44(%ebp)
	andl	$16384, %ecx
	je	L657
	andb	$16, %dh
	je	L428
	movswl	-36(%ebp), %eax
	movzwl	_rottile(,%eax,4), %edx
	cmpw	$-1, %dx
	je	L429
	movswl	-44(%ebp), %eax
	movw	%dx, -36(%ebp)
	testw	%ax, %ax
	js	L422
	cmpb	$63, _picanm+3(%eax,%eax,4)
	ja	L425
L426:
	movzwl	_rottile(,%eax,4), %eax
	cmpw	$-1, %ax
	cmove	-44(%ebp), %ax
	movw	%ax, -44(%ebp)
	.p2align 4
	.p2align 3
L422:
	movzwl	-32(%ebp), %eax
	testw	%ax, %ax
	js	L430
	xorl	%esi, %esi
	movw	%si, -56(%ebp)
	cmpw	%ax, _numwalls
	jle	L431
	movl	_wall, %esi
	movl	-48(%ebp), %edx
	movzwl	14(%esi,%edx), %eax
	movl	%eax, _globalorientation
	movl	%eax, %edx
	movswl	-32(%ebp), %eax
	sall	$5, %eax
	movswl	16(%esi,%eax), %eax
	movw	%ax, -56(%ebp)
	cmpb	$63, _picanm+3(%eax,%eax,4)
	ja	L661
L432:
	testl	%ecx, %ecx
	je	L431
	andb	$16, %dh
	je	L431
	movswl	-56(%ebp), %eax
	movl	%eax, %esi
	movzwl	_rottile(,%eax,4), %eax
	cmpw	$-1, %ax
	cmove	%esi, %eax
	movw	%ax, -56(%ebp)
	.p2align 4
	.p2align 3
L431:
	testb	$5, 796(%ebx)
	je	L523
	movl	-16(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%eax, 792(%ebx)
	movl	14(%edx), %eax
	movl	%eax, 764(%ebx)
	movl	18(%edx), %eax
	movl	%eax, 768(%ebx)
	movl	22(%edx), %eax
	movl	%eax, 772(%ebx)
	movzwl	-36(%ebp), %eax
	movw	%ax, 784(%ebx)
	movzwl	-44(%ebp), %eax
	movw	%ax, 786(%ebx)
	movl	_wallchanged(,%edi,4), %eax
	movl	%eax, 800(%ebx)
L436:
	movswl	-32(%ebp), %eax
	cmpw	%ax, _numwalls
	jle	L437
	movzwl	-56(%ebp), %esi
	sall	$5, %eax
	addl	_wall, %eax
	movw	%si, 776(%ebx)
	movzbl	24(%eax), %edx
	movb	%dl, 780(%ebx)
	movzbl	25(%eax), %edx
	movb	%dl, 781(%ebx)
	movzwl	14(%eax), %edx
	movw	%dx, 778(%ebx)
	movzbl	20(%eax), %eax
	movb	%al, 782(%ebx)
L437:
	movl	-16(%ebp), %esi
	movb	$0, 788(%ebx)
	movzwl	14(%esi), %eax
	movw	%ax, -52(%ebp)
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movswl	(%eax), %ecx
	movl	%edi, %eax
	movl	%edx, -72(%ebp)
	subl	%ecx, %eax
	leal	(%eax,%eax,2), %eax
	leal	(%edx,%eax,8), %eax
	movswl	12(%esi), %edx
	movl	%edx, %esi
	movswl	_numsectors, %edx
	cmpl	%edx, %esi
	jnb	L439
	movl	-40(%ebp), %esi
	testl	%esi, %esi
	je	L439
	movl	4(%esi), %esi
	movswl	-32(%ebp), %edx
	movl	%esi, -32(%ebp)
	movl	_wall, %esi
	movl	%edx, -60(%ebp)
	sall	$5, %edx
	movswl	8(%esi,%edx), %esi
	movl	%edx, -64(%ebp)
	movl	-28(%ebp), %edx
	movl	%esi, -68(%ebp)
	movswl	(%edx), %edx
	subl	%edx, %esi
	movl	%edx, -76(%ebp)
	leal	(%esi,%esi,2), %edx
	movl	-32(%ebp), %esi
	leal	(%esi,%edx,8), %edx
	movss	4(%edx), %xmm0
	comiss	4(%eax), %xmm0
	jbe	L662
	movl	(%eax), %ecx
	movl	(%ebx), %edx
	movb	$1, -76(%ebp)
	movl	%ecx, (%edx)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	8(%eax), %eax
	movl	%eax, 8(%edx)
L462:
	movl	(%ebx), %eax
	movl	-20(%ebp), %esi
	leal	24(%eax), %edx
	movl	-16(%ebp), %eax
	movswl	(%esi), %ecx
	movswl	8(%eax), %eax
	subl	%ecx, %eax
	movl	-24(%ebp), %ecx
	leal	(%eax,%eax,2), %eax
	movl	4(%ecx), %ecx
	leal	(%ecx,%eax,8), %eax
	movl	(%ebx), %ecx
	movl	(%eax), %esi
	movl	%esi, 24(%ecx)
	movl	4(%eax), %ecx
	movl	-28(%ebp), %esi
	movl	%ecx, 4(%edx)
	movl	8(%eax), %eax
	movl	-60(%ebp), %ecx
	movl	%eax, 8(%edx)
	movswl	(%esi), %edx
	movl	(%ebx), %eax
	subl	%edx, %ecx
	movl	-40(%ebp), %edx
	leal	(%ecx,%ecx,2), %ecx
	addl	$48, %eax
	movl	4(%edx), %edx
	movl	%eax, -32(%ebp)
	leal	(%edx,%ecx,8), %ecx
	movl	(%ebx), %edx
	movl	(%ecx), %eax
	movl	%eax, 48(%edx)
	movl	-32(%ebp), %eax
	movl	4(%ecx), %edx
	movl	%edx, 4(%eax)
	movl	8(%ecx), %edx
	movl	-68(%ebp), %ecx
	movl	%edx, 8(%eax)
	movswl	(%esi), %edx
	movl	(%ebx), %eax
	subl	%edx, %ecx
	movl	-40(%ebp), %edx
	leal	(%ecx,%ecx,2), %ecx
	movl	4(%edx), %edx
	leal	(%edx,%ecx,8), %ecx
	movl	(%ecx), %esi
	movl	%esi, 72(%eax)
	movl	4(%ecx), %edx
	movl	%edx, 76(%eax)
	movl	8(%ecx), %edx
	movzwl	-56(%ebp), %ecx
	movl	%edx, 80(%eax)
	movl	-16(%ebp), %eax
	testb	$2, 14(%eax)
	movl	-48(%ebp), %eax
	cmovne	-64(%ebp), %eax
	cmove	-36(%ebp), %cx
	movl	%eax, -48(%ebp)
	addl	_wall, %eax
	movzbl	24(%eax), %edx
	movb	%dl, -80(%ebp)
	movzbl	25(%eax), %edx
	movb	%dl, -72(%ebp)
	movswl	%cx, %edx
	movzbl	21(%eax), %ecx
	movl	%edx, -32(%ebp)
	movl	-20(%ebp), %edx
	movl	$0, 8(%esp)
	movsbl	32(%edx), %edx
	movl	%edx, 4(%esp)
	movsbl	20(%eax), %eax
	movl	-32(%ebp), %edx
	movl	%eax, (%esp)
	leal	72(%ebx), %eax
	call	_polymer_getbuildmaterial.lto_priv.0
	movl	_wall, %edx
	movl	%eax, 16(%ebx)
	movl	-48(%ebp), %eax
	movl	%edx, -56(%ebp)
	movzwl	14(%edx,%eax), %eax
	andw	$4, %ax
	jne	L464
	movl	-28(%ebp), %esi
	movl	8(%esi), %esi
L465:
	xorps	%xmm5, %xmm5
	cmpb	$0, -72(%ebp)
	jne	L663
L466:
	movzbl	-80(%ebp), %eax
	xorps	%xmm1, %xmm1
	xorps	%xmm6, %xmm6
	xorl	%edx, %edx
	testb	$8, -52(%ebp)
	cvtsi2ssl	%esi, %xmm6
	movl	%edi, -72(%ebp)
	movss	LC46, %xmm3
	movss	LC55, %xmm2
	cvtsi2ssl	%eax, %xmm1
	movl	-16(%ebp), %esi
	movss	%xmm1, -48(%ebp)
	je	L467
L473:
	movl	$9, %eax
	xorps	%xmm4, %xmm4
	btl	%edx, %eax
	jnc	L468
	movss	LC52, %xmm4
L468:
	movzbl	22(%esi), %ecx
	xorps	%xmm0, %xmm0
	movl	(%ebx), %edi
	leal	(%edx,%edx,2), %eax
	sall	$3, %eax
	xorps	%xmm7, %xmm7
	cvtsi2ssl	%ecx, %xmm0
	movl	-32(%ebp), %ecx
	movswl	_tilesiz(,%ecx,4), %ecx
	mulss	%xmm4, %xmm0
	xorps	%xmm4, %xmm4
	cvtsi2ssl	%ecx, %xmm4
	addss	-48(%ebp), %xmm0
	divss	%xmm4, %xmm0
	xorps	%xmm4, %xmm4
	movss	%xmm0, 12(%edi,%eax)
	movl	-32(%ebp), %edi
	movl	(%ebx), %ecx
	movss	LC54, %xmm0
	movswl	_tilesiz+2(,%edi,4), %edi
	addl	%eax, %ecx
	mulss	4(%ecx), %xmm0
	cvtsi2ssl	%edi, %xmm4
	movzbl	23(%esi), %edi
	cvtsi2ssl	%edi, %xmm7
	mulss	%xmm2, %xmm4
	addss	%xmm6, %xmm0
	xorps	%xmm3, %xmm0
	divss	%xmm7, %xmm4
	divss	%xmm4, %xmm0
	addss	%xmm5, %xmm0
	movss	%xmm0, 16(%ecx)
	movzwl	14(%esi), %ecx
	testb	$2, %cl
	je	L469
	movl	-56(%ebp), %edi
	movl	-64(%ebp), %ecx
	testb	$1, 15(%edi,%ecx)
	je	L471
L472:
	addl	(%ebx), %eax
	movss	16(%eax), %xmm0
	xorps	%xmm3, %xmm0
	movss	%xmm0, 16(%eax)
L471:
	addl	$1, %edx
	cmpl	$4, %edx
	jne	L473
L649:
	movl	%esi, -16(%ebp)
	movl	-72(%ebp), %edi
	cmpb	$0, -76(%ebp)
	je	L479
	orb	$1, 788(%ebx)
L479:
	movl	(%ebx), %edx
	movl	504(%ebx), %eax
	leal	72(%edx), %ecx
	movl	72(%edx), %edx
	movl	%edx, (%eax)
	movl	4(%ecx), %edx
	movl	%edx, 4(%eax)
	movl	8(%ecx), %edx
	movl	%edx, 8(%eax)
	movl	12(%ecx), %edx
	movl	%edx, 12(%eax)
	movl	16(%ecx), %edx
	movl	%edx, 16(%eax)
	movl	(%ebx), %ecx
	movl	504(%ebx), %eax
	leal	48(%ecx), %edx
	movl	48(%ecx), %ecx
L650:
	movl	%ecx, 24(%eax)
	movl	4(%edx), %ecx
	movl	%ecx, 28(%eax)
	movl	8(%edx), %ecx
	movl	%ecx, 32(%eax)
	movl	12(%edx), %ecx
	movl	%ecx, 36(%eax)
	movl	16(%edx), %edx
	movl	%edx, 40(%eax)
	movl	-24(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	256(%eax), %esi
	movl	-20(%ebp), %eax
	movl	256(%edx), %edx
	movswl	(%eax), %eax
	movl	%edx, -32(%ebp)
	movl	-28(%ebp), %edx
	movl	%eax, %ecx
	movl	-68(%ebp), %eax
	movswl	(%edx), %edx
	subl	%edx, %eax
	movl	%edx, -48(%ebp)
	movl	-32(%ebp), %edx
	leal	(%eax,%eax,2), %eax
	leal	(%edx,%eax,8), %eax
	movl	%edi, %edx
	subl	%ecx, %edx
	leal	(%edx,%edx,2), %edx
	movss	4(%esi,%edx,8), %xmm0
	comiss	4(%eax), %xmm0
	ja	L480
	movl	-16(%ebp), %edx
	movswl	8(%edx), %edx
	subl	%ecx, %edx
	leal	(%edx,%edx,2), %edx
	leal	(%esi,%edx,8), %ecx
	movl	-60(%ebp), %edx
	movl	-32(%ebp), %esi
	subl	-48(%ebp), %edx
	movss	4(%ecx), %xmm0
	leal	(%edx,%edx,2), %edx
	comiss	4(%esi,%edx,8), %xmm0
	ja	L480
	movl	-16(%ebp), %esi
	movb	$0, -48(%ebp)
	testb	$48, 14(%esi)
	je	L664
	.p2align 4
	.p2align 3
L481:
	movl	252(%ebx), %edx
	testl	%edx, %edx
	je	L665
L482:
	movl	(%eax), %ecx
	movl	-28(%ebp), %esi
	movl	%ecx, (%edx)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	8(%eax), %eax
	movl	-60(%ebp), %ecx
	movl	%eax, 8(%edx)
	movswl	(%esi), %edx
	movl	252(%ebx), %eax
	subl	%edx, %ecx
	movl	-40(%ebp), %edx
	leal	(%ecx,%ecx,2), %ecx
	movl	256(%edx), %edx
	leal	(%edx,%ecx,8), %ecx
	movl	(%ecx), %esi
	movl	%esi, 24(%eax)
	movl	4(%ecx), %edx
	movl	-20(%ebp), %esi
	movl	%edx, 28(%eax)
	movl	8(%ecx), %edx
	movl	%edx, 32(%eax)
	movl	-16(%ebp), %eax
	movswl	(%esi), %edx
	movl	-24(%ebp), %esi
	movswl	8(%eax), %eax
	subl	%edx, %eax
	leal	(%eax,%eax,2), %edx
	movl	256(%esi), %eax
	movl	-28(%ebp), %esi
	leal	(%eax,%edx,8), %edx
	movswl	(%esi), %ecx
	movl	-60(%ebp), %eax
	movss	4(%edx), %xmm0
	movl	252(%ebx), %esi
	subl	%ecx, %eax
	leal	(%eax,%eax,2), %ecx
	movl	-40(%ebp), %eax
	movl	256(%eax), %eax
	leal	(%eax,%ecx,8), %eax
	leal	48(%esi), %ecx
	comiss	4(%eax), %xmm0
	jbe	L636
	movl	(%edx), %eax
	movl	%eax, 48(%esi)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%edx), %eax
	movl	%eax, 8(%ecx)
L486:
	movl	-20(%ebp), %esi
	movl	%edi, %ecx
	movl	252(%ebx), %eax
	movswl	(%esi), %edx
	addl	$72, %eax
	movl	%eax, -32(%ebp)
	subl	%edx, %ecx
	movl	-24(%ebp), %edx
	leal	(%ecx,%ecx,2), %ecx
	movl	256(%edx), %edx
	leal	(%edx,%ecx,8), %ecx
	movl	252(%ebx), %edx
	movl	(%ecx), %eax
	movl	%eax, 72(%edx)
	movl	-32(%ebp), %eax
	movl	4(%ecx), %edx
	movl	%edx, 4(%eax)
	movl	8(%ecx), %edx
	movl	%edx, 8(%eax)
	movl	-16(%ebp), %eax
	movzbl	21(%eax), %ecx
	movswl	-36(%ebp), %eax
	movl	$0, 8(%esp)
	movsbl	32(%esi), %edx
	movl	-16(%ebp), %esi
	movl	%eax, -32(%ebp)
	leal	324(%ebx), %eax
	movl	%edx, 4(%esp)
	movsbl	20(%esi), %edx
	movl	%edx, (%esp)
	movl	-32(%ebp), %edx
	call	_polymer_getbuildmaterial.lto_priv.0
	movl	%eax, 268(%ebx)
	movzwl	14(%esi), %eax
	movl	%eax, %edx
	andw	$48, %dx
	jne	L666
L487:
	andw	$4, %ax
	je	L489
	movl	-20(%ebp), %esi
	movl	4(%esi), %esi
L490:
	movl	-16(%ebp), %edx
	xorps	%xmm4, %xmm4
	movzbl	25(%edx), %edx
	testb	%dl, %dl
	jne	L667
L491:
	xorps	%xmm5, %xmm5
	xorl	%edx, %edx
	testb	$8, -52(%ebp)
	movl	%edi, -36(%ebp)
	movss	LC54, %xmm1
	cvtsi2ssl	%esi, %xmm5
	movl	-16(%ebp), %esi
	movss	LC46, %xmm3
	movss	LC55, %xmm2
	je	L492
L495:
	movl	$9, %eax
	xorps	%xmm6, %xmm6
	btl	%edx, %eax
	jnc	L493
	movss	LC52, %xmm6
L493:
	movzbl	22(%esi), %ecx
	xorps	%xmm0, %xmm0
	movl	252(%ebx), %edi
	leal	(%edx,%edx,2), %eax
	sall	$3, %eax
	xorps	%xmm7, %xmm7
	cvtsi2ssl	%ecx, %xmm0
	movzbl	24(%esi), %ecx
	mulss	%xmm6, %xmm0
	xorps	%xmm6, %xmm6
	cvtsi2ssl	%ecx, %xmm6
	movl	-32(%ebp), %ecx
	movswl	_tilesiz(,%ecx,4), %ecx
	addss	%xmm6, %xmm0
	xorps	%xmm6, %xmm6
	cvtsi2ssl	%ecx, %xmm6
	divss	%xmm6, %xmm0
	xorps	%xmm6, %xmm6
	movss	%xmm0, 12(%edi,%eax)
	movl	-32(%ebp), %edi
	movl	252(%ebx), %ecx
	movswl	_tilesiz+2(,%edi,4), %edi
	addl	%eax, %ecx
	movss	4(%ecx), %xmm0
	cvtsi2ssl	%edi, %xmm6
	movzbl	23(%esi), %edi
	mulss	%xmm1, %xmm0
	cvtsi2ssl	%edi, %xmm7
	mulss	%xmm2, %xmm6
	addss	%xmm5, %xmm0
	divss	%xmm7, %xmm6
	xorps	%xmm3, %xmm0
	divss	%xmm6, %xmm0
	addss	%xmm4, %xmm0
	movss	%xmm0, 16(%ecx)
	testb	$1, 15(%esi)
	je	L494
	addl	252(%ebx), %eax
	movss	16(%eax), %xmm0
	xorps	%xmm3, %xmm0
	movss	%xmm0, 16(%eax)
L494:
	addl	$1, %edx
	cmpl	$4, %edx
	jne	L495
L651:
	movl	%esi, -16(%ebp)
	movl	-36(%ebp), %edi
	cmpb	$0, -48(%ebp)
	je	L499
	orb	$2, 788(%ebx)
L499:
	movl	252(%ebx), %ecx
	movl	504(%ebx), %eax
	leal	24(%ecx), %edx
	movl	24(%ecx), %ecx
	movl	%ecx, 48(%eax)
	movl	4(%edx), %ecx
	movl	%ecx, 52(%eax)
	movl	8(%edx), %ecx
	movl	%ecx, 56(%eax)
	movl	12(%edx), %ecx
	movl	%ecx, 60(%eax)
	movl	16(%edx), %edx
	movl	%edx, 64(%eax)
	movl	252(%ebx), %eax
	movl	504(%ebx), %ecx
	movl	(%eax), %esi
	leal	72(%ecx), %edx
	movl	%esi, 72(%ecx)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	8(%eax), %ecx
	movl	%ecx, 8(%edx)
	movl	12(%eax), %ecx
	movl	%ecx, 12(%edx)
	movl	16(%eax), %eax
	movl	%eax, 16(%edx)
	movl	-16(%ebp), %eax
	movzwl	14(%eax), %eax
	testb	$16, %al
	jne	L500
	testb	$32, %al
	je	L459
	andl	$4, %eax
	movl	%eax, %edx
L501:
	movl	-20(%ebp), %eax
	leal	4(%eax), %ecx
	movl	-28(%ebp), %eax
	addl	$4, %eax
	testw	%dx, %dx
	cmovne	%ecx, %eax
	movl	(%eax), %ecx
L505:
	movl	-16(%ebp), %eax
	movswl	-44(%ebp), %esi
	xorps	%xmm4, %xmm4
	movzbl	25(%eax), %eax
	movl	%esi, -28(%ebp)
	testb	%al, %al
	jne	L668
L507:
	xorps	%xmm5, %xmm5
	xorl	%edx, %edx
	testb	$8, -52(%ebp)
	movl	%edi, -32(%ebp)
	cvtsi2ssl	%ecx, %xmm5
	movl	-16(%ebp), %esi
	je	L510
L513:
	movl	$9, %eax
	xorps	%xmm6, %xmm6
	btl	%edx, %eax
	jnc	L511
	movss	LC52, %xmm6
L511:
	movzbl	22(%esi), %ecx
	xorps	%xmm0, %xmm0
	movl	504(%ebx), %edi
	leal	(%edx,%edx,2), %eax
	sall	$3, %eax
	xorps	%xmm7, %xmm7
	cvtsi2ssl	%ecx, %xmm0
	movzbl	24(%esi), %ecx
	mulss	%xmm6, %xmm0
	xorps	%xmm6, %xmm6
	cvtsi2ssl	%ecx, %xmm6
	movl	-28(%ebp), %ecx
	movswl	_tilesiz(,%ecx,4), %ecx
	addss	%xmm6, %xmm0
	xorps	%xmm6, %xmm6
	cvtsi2ssl	%ecx, %xmm6
	divss	%xmm6, %xmm0
	xorps	%xmm6, %xmm6
	movss	%xmm0, 12(%edi,%eax)
	movl	-28(%ebp), %edi
	movl	504(%ebx), %ecx
	movswl	_tilesiz+2(,%edi,4), %edi
	addl	%eax, %ecx
	movss	4(%ecx), %xmm0
	cvtsi2ssl	%edi, %xmm6
	movzbl	23(%esi), %edi
	mulss	%xmm1, %xmm0
	cvtsi2ssl	%edi, %xmm7
	mulss	%xmm2, %xmm6
	addss	%xmm5, %xmm0
	divss	%xmm7, %xmm6
	xorps	%xmm3, %xmm0
	divss	%xmm6, %xmm0
	addss	%xmm4, %xmm0
	movss	%xmm0, 16(%ecx)
	testb	$1, 15(%esi)
	je	L512
	addl	504(%ebx), %eax
	movss	16(%eax), %xmm0
	xorps	%xmm3, %xmm0
	movss	%xmm0, 16(%eax)
L512:
	addl	$1, %edx
	cmpl	$4, %edx
	jne	L513
L652:
	movl	%esi, -16(%ebp)
	movl	-32(%ebp), %edi
L459:
	movl	-16(%ebp), %eax
	cmpw	$0, 12(%eax)
	js	L669
L516:
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %esi
	movl	756(%ebx), %eax
	movswl	(%edx), %ecx
	movl	%edi, %edx
	subl	%ecx, %edx
	leal	(%edx,%edx,2), %ecx
	movl	4(%esi), %edx
	leal	(%edx,%ecx,8), %edx
	movl	(%edx), %ecx
	movl	%ecx, (%eax)
	movl	4(%edx), %ecx
	movl	%ecx, 4(%eax)
	movl	8(%edx), %edx
	movl	-20(%ebp), %ecx
	movl	%edx, 8(%eax)
	movl	756(%ebx), %eax
	movswl	(%ecx), %ecx
	leal	20(%eax), %edx
	movl	-16(%ebp), %eax
	movswl	8(%eax), %eax
	subl	%ecx, %eax
	movl	4(%esi), %ecx
	leal	(%eax,%eax,2), %eax
	leal	(%ecx,%eax,8), %eax
	movl	756(%ebx), %ecx
	movl	(%eax), %esi
	movl	%esi, 20(%ecx)
	movl	4(%eax), %ecx
	movl	-20(%ebp), %esi
	movl	%ecx, 4(%edx)
	movl	8(%eax), %eax
	movl	%eax, 8(%edx)
	movl	-16(%ebp), %eax
	movswl	(%esi), %esi
	movl	756(%ebx), %ecx
	movswl	8(%eax), %eax
	leal	40(%ecx), %edx
	subl	%esi, %eax
	leal	(%eax,%eax,2), %esi
	movl	-24(%ebp), %eax
	movl	256(%eax), %eax
	leal	(%eax,%esi,8), %eax
	movl	(%eax), %esi
	movl	%esi, 40(%ecx)
	movl	4(%eax), %ecx
	movl	-20(%ebp), %esi
	movl	%ecx, 4(%edx)
	movl	8(%eax), %eax
	movl	%edi, %ecx
	movl	%eax, 8(%edx)
	movswl	(%esi), %esi
	movl	756(%ebx), %edx
	subl	%esi, %ecx
	movl	-24(%ebp), %esi
	leal	(%ecx,%ecx,2), %ecx
	leal	60(%edx), %eax
	movl	256(%esi), %esi
	leal	(%esi,%ecx,8), %ecx
	movl	(%ecx), %esi
	movl	%esi, 60(%edx)
	movl	4(%ecx), %edx
	movl	%edx, 4(%eax)
	movl	8(%ecx), %edx
	movl	%edx, 8(%eax)
	movzbl	788(%ebx), %esi
	testl	$1, %esi
	jne	L670
L519:
	andl	$2, %esi
	jne	L671
L520:
	leal	504(%ebx), %eax
	call	_polymer_computeplane.lto_priv.0
	cmpl	$1, _pr_nullrender
	jle	L672
L521:
	movzbl	796(%ebx), %eax
	andl	$-8, %eax
	orl	$2, %eax
	movb	%al, 796(%ebx)
	cmpl	$2, _pr_verbosity
	jle	L647
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L647
	movl	%edi, 16(%esp)
	movl	$LC56, 12(%esp)
	movl	$3637, 8(%esp)
L653:
	movl	$LC4, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	-12(%ebp), %ebx
	.cfi_restore 3
	movl	-8(%ebp), %esi
	.cfi_restore 6
L409:
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L647:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	-12(%ebp), %ebx
	.cfi_restore 3
	movl	-8(%ebp), %esi
	.cfi_restore 6
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L640:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	-12(%ebp), %ebx
	.cfi_restore 3
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L467:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movss	LC52, %xmm4
	movl	$9, %eax
	btl	%edx, %eax
	jnc	L475
	xorps	%xmm4, %xmm4
L475:
	movzbl	22(%esi), %ecx
	xorps	%xmm0, %xmm0
	movl	(%ebx), %edi
	leal	(%edx,%edx,2), %eax
	sall	$3, %eax
	xorps	%xmm7, %xmm7
	cvtsi2ssl	%ecx, %xmm0
	movl	-32(%ebp), %ecx
	movswl	_tilesiz(,%ecx,4), %ecx
	mulss	%xmm4, %xmm0
	xorps	%xmm4, %xmm4
	cvtsi2ssl	%ecx, %xmm4
	addss	-48(%ebp), %xmm0
	divss	%xmm4, %xmm0
	xorps	%xmm4, %xmm4
	movss	%xmm0, 12(%edi,%eax)
	movl	-32(%ebp), %edi
	movl	(%ebx), %ecx
	movss	LC54, %xmm0
	movswl	_tilesiz+2(,%edi,4), %edi
	addl	%eax, %ecx
	mulss	4(%ecx), %xmm0
	cvtsi2ssl	%edi, %xmm4
	movzbl	23(%esi), %edi
	cvtsi2ssl	%edi, %xmm7
	mulss	%xmm2, %xmm4
	addss	%xmm6, %xmm0
	xorps	%xmm3, %xmm0
	divss	%xmm7, %xmm4
	divss	%xmm4, %xmm0
	addss	%xmm5, %xmm0
	movss	%xmm0, 16(%ecx)
	movzwl	14(%esi), %ecx
	testb	$2, %cl
	je	L673
	movl	-56(%ebp), %edi
	movl	-64(%ebp), %ecx
	testb	$1, 15(%edi,%ecx)
	je	L478
L477:
	addl	(%ebx), %eax
	movss	16(%eax), %xmm0
	xorps	%xmm3, %xmm0
	movss	%xmm0, 16(%eax)
L478:
	addl	$1, %edx
	cmpl	$4, %edx
	jne	L467
	jmp	L649
	.p2align 4,,10
	.p2align 3
L492:
	movss	LC52, %xmm6
	movl	$9, %eax
	btl	%edx, %eax
	jnc	L497
	xorps	%xmm6, %xmm6
L497:
	movzbl	22(%esi), %ecx
	xorps	%xmm0, %xmm0
	movl	252(%ebx), %edi
	leal	(%edx,%edx,2), %eax
	sall	$3, %eax
	xorps	%xmm7, %xmm7
	cvtsi2ssl	%ecx, %xmm0
	movzbl	24(%esi), %ecx
	mulss	%xmm6, %xmm0
	xorps	%xmm6, %xmm6
	cvtsi2ssl	%ecx, %xmm6
	movl	-32(%ebp), %ecx
	movswl	_tilesiz(,%ecx,4), %ecx
	addss	%xmm6, %xmm0
	xorps	%xmm6, %xmm6
	cvtsi2ssl	%ecx, %xmm6
	divss	%xmm6, %xmm0
	xorps	%xmm6, %xmm6
	movss	%xmm0, 12(%edi,%eax)
	movl	-32(%ebp), %edi
	movl	252(%ebx), %ecx
	movswl	_tilesiz+2(,%edi,4), %edi
	addl	%eax, %ecx
	movss	4(%ecx), %xmm0
	cvtsi2ssl	%edi, %xmm6
	movzbl	23(%esi), %edi
	mulss	%xmm1, %xmm0
	cvtsi2ssl	%edi, %xmm7
	mulss	%xmm2, %xmm6
	addss	%xmm5, %xmm0
	divss	%xmm7, %xmm6
	xorps	%xmm3, %xmm0
	divss	%xmm6, %xmm0
	addss	%xmm4, %xmm0
	movss	%xmm0, 16(%ecx)
	testb	$1, 15(%esi)
	je	L498
	addl	252(%ebx), %eax
	movss	16(%eax), %xmm0
	xorps	%xmm3, %xmm0
	movss	%xmm0, 16(%eax)
L498:
	addl	$1, %edx
	cmpl	$4, %edx
	jne	L492
	jmp	L651
	.p2align 4,,10
	.p2align 3
L510:
	movss	LC52, %xmm6
	movl	$9, %eax
	btl	%edx, %eax
	jnc	L514
	xorps	%xmm6, %xmm6
L514:
	movzbl	22(%esi), %ecx
	xorps	%xmm0, %xmm0
	movl	504(%ebx), %edi
	leal	(%edx,%edx,2), %eax
	sall	$3, %eax
	xorps	%xmm7, %xmm7
	cvtsi2ssl	%ecx, %xmm0
	movzbl	24(%esi), %ecx
	mulss	%xmm6, %xmm0
	xorps	%xmm6, %xmm6
	cvtsi2ssl	%ecx, %xmm6
	movl	-28(%ebp), %ecx
	movswl	_tilesiz(,%ecx,4), %ecx
	addss	%xmm6, %xmm0
	xorps	%xmm6, %xmm6
	cvtsi2ssl	%ecx, %xmm6
	divss	%xmm6, %xmm0
	xorps	%xmm6, %xmm6
	movss	%xmm0, 12(%edi,%eax)
	movl	-28(%ebp), %edi
	movl	504(%ebx), %ecx
	movswl	_tilesiz+2(,%edi,4), %edi
	addl	%eax, %ecx
	movss	4(%ecx), %xmm0
	cvtsi2ssl	%edi, %xmm6
	movzbl	23(%esi), %edi
	mulss	%xmm1, %xmm0
	cvtsi2ssl	%edi, %xmm7
	mulss	%xmm2, %xmm6
	addss	%xmm5, %xmm0
	divss	%xmm7, %xmm6
	xorps	%xmm3, %xmm0
	divss	%xmm6, %xmm0
	addss	%xmm4, %xmm0
	movss	%xmm0, 16(%ecx)
	testb	$1, 15(%esi)
	je	L515
	addl	504(%ebx), %eax
	movss	16(%eax), %xmm0
	xorps	%xmm3, %xmm0
	movss	%xmm0, 16(%eax)
L515:
	addl	$1, %edx
	cmpl	$4, %edx
	jne	L510
	jmp	L652
	.p2align 4,,10
	.p2align 3
L428:
	movswl	-44(%ebp), %eax
L657:
	testw	%ax, %ax
	js	L422
	cmpb	$63, _picanm+3(%eax,%eax,4)
	jbe	L422
	movl	%ecx, -56(%ebp)
	call	_animateoffs
	movl	-56(%ebp), %ecx
	addw	%ax, -44(%ebp)
	jmp	L422
	.p2align 4,,10
	.p2align 3
L439:
	movl	(%eax), %ecx
	movl	(%ebx), %edx
	movl	%ecx, (%edx)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	8(%eax), %eax
	movl	-20(%ebp), %ecx
	movl	%eax, 8(%edx)
	movl	(%ebx), %eax
	movswl	(%ecx), %ecx
	movl	(%ebx), %esi
	leal	24(%eax), %edx
	movl	-16(%ebp), %eax
	movswl	8(%eax), %eax
	subl	%ecx, %eax
	movl	-24(%ebp), %ecx
	leal	(%eax,%eax,2), %eax
	movl	4(%ecx), %ecx
	leal	(%ecx,%eax,8), %eax
	movl	(%eax), %ecx
	movl	%ecx, 24(%esi)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	8(%eax), %eax
	movl	-20(%ebp), %ecx
	movl	%eax, 8(%edx)
	movl	(%ebx), %eax
	movswl	(%ecx), %ecx
	movl	(%ebx), %esi
	leal	48(%eax), %edx
	movl	-16(%ebp), %eax
	movswl	8(%eax), %eax
	subl	%ecx, %eax
	movl	-24(%ebp), %ecx
	leal	(%eax,%eax,2), %eax
	movl	256(%ecx), %ecx
	leal	(%ecx,%eax,8), %eax
	movl	(%eax), %ecx
	movl	%ecx, 48(%esi)
	movl	4(%eax), %ecx
	movl	%edi, %esi
	movl	%ecx, 4(%edx)
	movl	8(%eax), %eax
	movl	-20(%ebp), %ecx
	movl	%eax, 8(%edx)
	movl	(%ebx), %eax
	movswl	(%ecx), %edx
	subl	%edx, %esi
	movl	-24(%ebp), %edx
	leal	(%esi,%esi,2), %ecx
	movl	256(%edx), %edx
	leal	(%edx,%ecx,8), %ecx
	movl	(%ecx), %edx
	movl	%edx, 72(%eax)
	movl	4(%ecx), %edx
	movl	%edx, 76(%eax)
	movl	8(%ecx), %edx
	movl	%edx, 80(%eax)
	movl	-16(%ebp), %edx
	movzwl	-36(%ebp), %eax
	movzbl	21(%edx), %ecx
	cmpw	$0, 12(%edx)
	movl	$0, 8(%esp)
	movl	-20(%ebp), %edx
	cmovns	-44(%ebp), %ax
	movsbl	32(%edx), %edx
	movswl	%ax, %esi
	leal	72(%ebx), %eax
	movl	%esi, -36(%ebp)
	movl	%edx, 4(%esp)
	movl	-16(%ebp), %edx
	movsbl	20(%edx), %edx
	movl	%edx, (%esp)
	movl	%esi, %edx
	call	_polymer_getbuildmaterial.lto_priv.0
	movl	-16(%ebp), %edx
	movl	%eax, 16(%ebx)
	movzwl	14(%edx), %eax
	movl	%eax, %ecx
	andw	$4, %cx
	je	L443
	movl	-20(%ebp), %edx
	movl	8(%edx), %esi
L444:
	testb	$32, %al
	je	L446
	movl	-16(%ebp), %edx
	cmpw	$0, 12(%edx)
	js	L446
	testb	$2, %al
	je	L674
	movswl	-32(%ebp), %eax
	sall	$5, %eax
	addl	_wall, %eax
	testb	$4, 14(%eax)
	je	L450
L449:
	movl	-20(%ebp), %eax
	movl	4(%eax), %esi
	.p2align 4
	.p2align 3
L446:
	movl	-16(%ebp), %eax
	xorps	%xmm3, %xmm3
	movzbl	25(%eax), %eax
	testb	%al, %al
	jne	L675
L451:
	xorps	%xmm4, %xmm4
	xorl	%edx, %edx
	testb	$8, -52(%ebp)
	movl	%edi, -28(%ebp)
	movss	LC55, %xmm2
	cvtsi2ssl	%esi, %xmm4
	movl	-16(%ebp), %esi
	je	L452
L455:
	movl	$9, %eax
	xorps	%xmm5, %xmm5
	btl	%edx, %eax
	jnc	L453
	movss	LC52, %xmm5
L453:
	movzbl	22(%esi), %ecx
	xorps	%xmm0, %xmm0
	movl	(%ebx), %edi
	leal	(%edx,%edx,2), %eax
	sall	$3, %eax
	xorps	%xmm6, %xmm6
	cvtsi2ssl	%ecx, %xmm0
	movzbl	24(%esi), %ecx
	mulss	%xmm5, %xmm0
	xorps	%xmm5, %xmm5
	cvtsi2ssl	%ecx, %xmm5
	movl	-36(%ebp), %ecx
	movswl	_tilesiz(,%ecx,4), %ecx
	addss	%xmm5, %xmm0
	xorps	%xmm5, %xmm5
	cvtsi2ssl	%ecx, %xmm5
	divss	%xmm5, %xmm0
	xorps	%xmm5, %xmm5
	movss	%xmm0, 12(%edi,%eax)
	movl	-36(%ebp), %edi
	movl	(%ebx), %ecx
	movss	LC54, %xmm0
	movswl	_tilesiz+2(,%edi,4), %edi
	addl	%eax, %ecx
	mulss	4(%ecx), %xmm0
	cvtsi2ssl	%edi, %xmm5
	movzbl	23(%esi), %edi
	cvtsi2ssl	%edi, %xmm6
	mulss	%xmm2, %xmm5
	addss	%xmm4, %xmm0
	xorps	LC46, %xmm0
	divss	%xmm6, %xmm5
	divss	%xmm5, %xmm0
	addss	%xmm3, %xmm0
	movss	%xmm0, 16(%ecx)
	testb	$1, 15(%esi)
	je	L454
	addl	(%ebx), %eax
	movss	16(%eax), %xmm0
	xorps	LC46, %xmm0
	movss	%xmm0, 16(%eax)
L454:
	addl	$1, %edx
	cmpl	$4, %edx
	jne	L455
L648:
	orb	$1, 788(%ebx)
	movl	-28(%ebp), %edi
	movl	%esi, -16(%ebp)
	jmp	L459
	.p2align 4,,10
	.p2align 3
L452:
	movss	LC52, %xmm5
	movl	$9, %eax
	btl	%edx, %eax
	jnc	L457
	xorps	%xmm5, %xmm5
L457:
	movzbl	22(%esi), %ecx
	xorps	%xmm0, %xmm0
	movl	(%ebx), %edi
	leal	(%edx,%edx,2), %eax
	sall	$3, %eax
	xorps	%xmm6, %xmm6
	cvtsi2ssl	%ecx, %xmm0
	movzbl	24(%esi), %ecx
	mulss	%xmm5, %xmm0
	xorps	%xmm5, %xmm5
	cvtsi2ssl	%ecx, %xmm5
	movl	-36(%ebp), %ecx
	movswl	_tilesiz(,%ecx,4), %ecx
	addss	%xmm5, %xmm0
	xorps	%xmm5, %xmm5
	cvtsi2ssl	%ecx, %xmm5
	divss	%xmm5, %xmm0
	xorps	%xmm5, %xmm5
	movss	%xmm0, 12(%edi,%eax)
	movl	-36(%ebp), %edi
	movl	(%ebx), %ecx
	movss	LC54, %xmm0
	movswl	_tilesiz+2(,%edi,4), %edi
	addl	%eax, %ecx
	mulss	4(%ecx), %xmm0
	cvtsi2ssl	%edi, %xmm5
	movzbl	23(%esi), %edi
	cvtsi2ssl	%edi, %xmm6
	mulss	%xmm2, %xmm5
	addss	%xmm4, %xmm0
	xorps	LC46, %xmm0
	divss	%xmm6, %xmm5
	divss	%xmm5, %xmm0
	addss	%xmm3, %xmm0
	movss	%xmm0, 16(%ecx)
	testb	$1, 15(%esi)
	je	L458
	addl	(%ebx), %eax
	movss	16(%eax), %xmm0
	xorps	LC46, %xmm0
	movss	%xmm0, 16(%eax)
L458:
	addl	$1, %edx
	cmpl	$4, %edx
	jne	L452
	jmp	L648
	.p2align 4,,10
	.p2align 3
L673:
	andb	$1, %ch
	jne	L477
	jmp	L478
	.p2align 4,,10
	.p2align 3
L469:
	andb	$1, %ch
	jne	L472
	jmp	L471
	.p2align 4,,10
	.p2align 3
L430:
	testb	$5, 796(%ebx)
	je	L676
	movl	-16(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%eax, 792(%ebx)
	movl	14(%edx), %eax
	movl	%eax, 764(%ebx)
	movl	18(%edx), %eax
	movl	%eax, 768(%ebx)
	movl	22(%edx), %eax
	movl	%eax, 772(%ebx)
	movzwl	-36(%ebp), %eax
	movw	%ax, 784(%ebx)
	movzwl	-44(%ebp), %eax
	movw	%ax, 786(%ebx)
	movl	_wallchanged(,%edi,4), %eax
	movl	%eax, 800(%ebx)
	xorl	%eax, %eax
	movw	%ax, -56(%ebp)
	jmp	L437
	.p2align 4,,10
	.p2align 3
L480:
	movb	$1, -48(%ebp)
	jmp	L481
L676:
	xorl	%edx, %edx
	movw	%dx, -56(%ebp)
L523:
	movl	-52(%ebp), %eax
	cmpl	%eax, 792(%ebx)
	je	L677
L434:
	movl	-16(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%eax, 792(%ebx)
	movl	14(%edx), %eax
	movl	%eax, 764(%ebx)
	movl	18(%edx), %eax
	movl	%eax, 768(%ebx)
	movl	22(%edx), %eax
	movl	%eax, 772(%ebx)
	movzwl	-36(%ebp), %eax
	movw	%ax, 784(%ebx)
	movzwl	-44(%ebp), %eax
	movw	%ax, 786(%ebx)
	movl	_wallchanged(,%edi,4), %eax
	movl	%eax, 800(%ebx)
	cmpw	$0, -32(%ebp)
	jns	L436
	jmp	L437
	.p2align 4,,10
	.p2align 3
L660:
	movl	%edx, -56(%ebp)
	movl	%ecx, -44(%ebp)
	call	_animateoffs
	movl	-56(%ebp), %edx
	addw	%ax, -36(%ebp)
	movl	-44(%ebp), %ecx
	jmp	L420
	.p2align 4,,10
	.p2align 3
L671:
	leal	252(%ebx), %eax
	call	_polymer_computeplane.lto_priv.0
	jmp	L520
	.p2align 4,,10
	.p2align 3
L670:
	movl	%ebx, %eax
	call	_polymer_computeplane.lto_priv.0
	jmp	L519
	.p2align 4,,10
	.p2align 3
L412:
	movl	-16(%ebp), %eax
	movswl	12(%eax), %eax
	testw	%ax, %ax
	js	L415
	cmpw	%ax, %dx
	jle	L415
	movl	_prsectors(,%eax,4), %esi
	leal	(%eax,%eax,4), %eax
	movl	%esi, -40(%ebp)
	movl	564(%esi), %esi
	addl	%esi, -52(%ebp)
	movl	-36(%ebp), %esi
	leal	(%esi,%eax,8), %eax
	movl	%eax, -28(%ebp)
	jmp	L414
	.p2align 4,,10
	.p2align 3
L658:
	cmpl	$1, _pr_verbosity
	jle	L647
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L647
	movl	%edi, 16(%esp)
	movl	$LC53, 12(%esp)
	movl	$3250, 8(%esp)
	jmp	L653
	.p2align 4,,10
	.p2align 3
L443:
	movl	-20(%ebp), %esi
	movl	4(%esi), %esi
	jmp	L444
	.p2align 4,,10
	.p2align 3
L672:
	leal	(%edi,%edi,8), %eax
	sall	$5, %eax
	addl	_prwalldataoffset, %eax
	movl	%eax, %esi
	leal	96(%eax), %eax
	leal	192(%esi), %edx
	movl	%eax, -20(%ebp)
	movl	$34962, %eax
	movl	%edx, -16(%ebp)
	movl	_prmapvbo, %edx
	call	__Z18buildgl_bindBufferjj
	movl	(%ebx), %eax
	movl	$96, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$34962, (%esp)
	call	*_glad_glBufferSubData
	movl	_prmapvbo, %edx
	movl	$34962, %eax
	subl	$16, %esp
	call	__Z18buildgl_bindBufferjj
	movl	252(%ebx), %eax
	testl	%eax, %eax
	je	L522
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	$96, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$34962, (%esp)
	call	*_glad_glBufferSubData
	subl	$16, %esp
L522:
	movl	_prmapvbo, %edx
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj
	movl	504(%ebx), %eax
	movl	$96, 8(%esp)
	movl	$34962, (%esp)
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	call	*_glad_glBufferSubData
	movl	760(%ebx), %edx
	movl	$34962, %eax
	subl	$16, %esp
	call	__Z18buildgl_bindBufferjj
	movl	756(%ebx), %eax
	movl	$80, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$34962, (%esp)
	call	*_glad_glBufferSubData
	movl	$34962, %eax
	subl	$16, %esp
	call	__Z18buildgl_bindBufferjj.constprop.0
	movl	$-1431655765, %ecx
	movl	%esi, %eax
	mull	%ecx
	movl	-20(%ebp), %eax
	shrl	$4, %edx
	movl	%edx, 12(%ebx)
	mull	%ecx
	movl	-16(%ebp), %eax
	shrl	$4, %edx
	movl	%edx, 264(%ebx)
	mull	%ecx
	shrl	$4, %edx
	movl	%edx, 516(%ebx)
	jmp	L521
	.p2align 4,,10
	.p2align 3
L669:
	movl	(%ebx), %ecx
	movl	504(%ebx), %edx
	movl	80(%ecx), %eax
	movl	%eax, 80(%edx)
	movl	84(%ecx), %eax
	movl	%eax, 84(%edx)
	movl	88(%ecx), %eax
	movl	%eax, 88(%edx)
	movl	92(%ecx), %eax
	movl	%eax, 92(%edx)
	xorl	%eax, %eax
	movl	%edi, -32(%ebp)
	movl	%ebx, -36(%ebp)
L517:
	movl	12(%ecx,%eax), %ebx
	movl	4(%ecx,%eax), %edi
	movl	8(%ecx,%eax), %esi
	movl	%ebx, -28(%ebp)
	movl	(%ecx,%eax), %ebx
	movl	%edi, 4(%edx,%eax)
	movl	%ebx, (%edx,%eax)
	movl	%esi, 8(%edx,%eax)
	movl	-28(%ebp), %edi
	movl	%edi, 12(%edx,%eax)
	addl	$16, %eax
	cmpl	$80, %eax
	jb	L517
	movl	-32(%ebp), %edi
	movl	-36(%ebp), %ebx
	jmp	L516
	.p2align 4,,10
	.p2align 3
L662:
	movl	-16(%ebp), %esi
	movswl	8(%esi), %esi
	subl	%ecx, %esi
	movl	-60(%ebp), %ecx
	subl	-76(%ebp), %ecx
	leal	(%esi,%esi,2), %esi
	leal	(%ecx,%ecx,2), %ecx
	movl	%esi, -80(%ebp)
	movl	-32(%ebp), %esi
	movss	4(%esi,%ecx,8), %xmm0
	movl	-72(%ebp), %ecx
	movl	-80(%ebp), %esi
	comiss	4(%ecx,%esi,8), %xmm0
	ja	L534
	movb	$0, -76(%ebp)
	testb	$48, -52(%ebp)
	je	L678
L460:
	movl	(%edx), %ecx
	movl	(%ebx), %eax
	movl	%ecx, (%eax)
	movl	4(%edx), %ecx
	movl	%ecx, 4(%eax)
	movl	8(%edx), %edx
	movl	%edx, 8(%eax)
	jmp	L462
	.p2align 4,,10
	.p2align 3
L464:
	movl	-20(%ebp), %esi
	movl	4(%esi), %esi
	jmp	L465
	.p2align 4,,10
	.p2align 3
L500:
	movl	%eax, %edx
	andl	$4, %edx
	testb	$32, %al
	jne	L501
	testw	%dx, %dx
	je	L506
	movl	-28(%ebp), %eax
	movl	8(%eax), %edx
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, %ecx
	jmp	L505
	.p2align 4,,10
	.p2align 3
L489:
	movl	-28(%ebp), %esi
	movl	4(%esi), %esi
	jmp	L490
	.p2align 4,,10
	.p2align 3
L636:
	movl	(%eax), %edx
	movl	%edx, 48(%esi)
	movl	4(%eax), %edx
	movl	%edx, 4(%ecx)
	movl	8(%eax), %eax
	movl	%eax, 8(%ecx)
	jmp	L486
L659:
	movl	$96, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L417
	movl	$0, 80(%eax)
	xorl	%edx, %edx
	movl	$0, 84(%eax)
	movl	$0, 88(%eax)
	movl	$0, 92(%eax)
	movl	-16(%ebp), %esi
L418:
	movl	$0, (%eax,%edx)
	movl	$0, 4(%eax,%edx)
	movl	$0, 8(%eax,%edx)
	movl	$0, 12(%eax,%edx)
	addl	$16, %edx
	cmpl	$80, %edx
	jb	L418
	movl	%esi, -16(%ebp)
	movl	%eax, (%ebx)
	movl	$4, 4(%ebx)
	jmp	L416
L675:
	shrw	$2, %cx
	movl	-36(%ebp), %edx
	andl	$1, %ecx
	xorl	$1, %ecx
	call	__ZL13calc_ypancoefcsi
	fstps	-28(%ebp)
	movss	-28(%ebp), %xmm3
	jmp	L451
L663:
	shrw	$2, %ax
	movl	-32(%ebp), %edx
	movl	%eax, %ecx
	movzbl	-72(%ebp), %eax
	andl	$1, %ecx
	xorl	$1, %ecx
	call	__ZL13calc_ypancoefcsi
	fstps	-48(%ebp)
	movss	-48(%ebp), %xmm5
	jmp	L466
L666:
	movl	-16(%ebp), %esi
	cmpw	$48, %dx
	leal	576(%ebx), %eax
	setne	%dl
	movzbl	21(%esi), %ecx
	movl	-20(%ebp), %esi
	movzbl	%dl, %edx
	movl	%edx, 8(%esp)
	movsbl	32(%esi), %edx
	movl	-16(%ebp), %esi
	movl	%edx, 4(%esp)
	movsbl	20(%esi), %edx
	movl	%edx, (%esp)
	movswl	-44(%ebp), %edx
	call	_polymer_getbuildmaterial.lto_priv.0
	movl	%eax, 520(%ebx)
	movzwl	14(%esi), %eax
	testb	$-128, %al
	je	L487
	testb	$2, %ah
	je	L488
	movb	$85, 651(%ebx)
	movzwl	14(%esi), %eax
	jmp	L487
L667:
	movzwl	%ax, %ecx
	movzbl	%dl, %eax
	movl	-32(%ebp), %edx
	call	__ZL13calc_ypancoefcsi
	fstps	-36(%ebp)
	movss	-36(%ebp), %xmm4
	jmp	L491
L665:
	movl	$96, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edx
	testl	%eax, %eax
	je	L483
	movl	%eax, 252(%ebx)
	movl	-28(%ebp), %eax
	movl	$4, 256(%ebx)
	movswl	(%eax), %ecx
	movl	-68(%ebp), %eax
	subl	%ecx, %eax
	leal	(%eax,%eax,2), %ecx
	movl	-40(%ebp), %eax
	movl	256(%eax), %eax
	leal	(%eax,%ecx,8), %eax
	jmp	L482
L534:
	movb	$1, -76(%ebp)
	jmp	L460
L677:
	movzwl	-36(%ebp), %eax
	cmpw	%ax, 784(%ebx)
	jne	L434
	movzwl	-44(%ebp), %eax
	cmpw	%ax, 786(%ebx)
	jne	L434
	movl	_wallchanged(,%edi,4), %eax
	cmpl	%eax, 800(%ebx)
	jne	L434
	movzwl	-32(%ebp), %eax
	testw	%ax, %ax
	js	L435
	cmpw	%ax, _numwalls
	jl	L435
	movzwl	-56(%ebp), %eax
	cmpw	%ax, 776(%ebx)
	jne	L434
	movswl	-32(%ebp), %eax
	sall	$5, %eax
	addl	_wall, %eax
	movzbl	24(%eax), %edx
	movl	%eax, %ecx
	movsbl	780(%ebx), %eax
	cmpl	%eax, %edx
	jne	L434
	movzbl	25(%ecx), %edx
	movsbl	781(%ebx), %eax
	cmpl	%eax, %edx
	jne	L434
	movzwl	14(%ecx), %edx
	movswl	778(%ebx), %eax
	cmpl	%eax, %edx
	jne	L434
	movzbl	20(%ecx), %eax
	cmpb	%al, 782(%ebx)
	jne	L434
L435:
	orb	$2, 796(%ebx)
	movl	-12(%ebp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	-8(%ebp), %esi
	.cfi_restore 6
	jmp	L409
	.p2align 4,,10
	.p2align 3
L668:
	.cfi_restore_state
	movzbl	_picsiz(%esi), %edx
	xorps	%xmm5, %xmm5
	xorps	%xmm0, %xmm0
	movb	%dl, -32(%ebp)
	shrb	$4, %dl
	movzbl	%dl, %edx
	cvtsi2ssl	_pow2long.lto_priv.1(,%edx,4), %xmm5
	movswl	_tilesiz+2(,%esi,4), %edx
	cvtsi2ssl	%edx, %xmm0
	comiss	%xmm5, %xmm0
	jbe	L508
	addss	%xmm5, %xmm5
L508:
	mulss	LC42, %xmm0
	xorps	%xmm4, %xmm4
	cvtsi2ssl	%eax, %xmm4
	divss	%xmm0, %xmm4
	mulss	%xmm5, %xmm4
	jmp	L507
L661:
	movl	%ecx, -64(%ebp)
	movl	%edx, -60(%ebp)
	call	_animateoffs
	movl	-64(%ebp), %ecx
	addw	%ax, -56(%ebp)
	movl	-60(%ebp), %edx
	jmp	L432
L674:
	testw	%cx, %cx
	jne	L449
L450:
	movl	-28(%ebp), %eax
	movl	8(%eax), %esi
	jmp	L446
L429:
	movswl	-44(%ebp), %eax
	testw	%ax, %ax
	js	L422
	cmpb	$63, _picanm+3(%eax,%eax,4)
	jbe	L426
	movzwl	-36(%ebp), %edx
L425:
	movl	%ecx, -56(%ebp)
	movl	%edx, -36(%ebp)
	call	_animateoffs
	movl	-56(%ebp), %ecx
	addw	%ax, -44(%ebp)
	movswl	-44(%ebp), %eax
	jmp	L426
L506:
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, %ecx
	jmp	L505
L664:
	movl	504(%ebx), %edx
	movl	%ecx, %esi
	movl	(%ecx), %ecx
	leal	48(%edx), %eax
	movl	%ecx, 48(%edx)
	movl	4(%esi), %edx
	movl	%edx, 4(%eax)
	movl	8(%esi), %edx
	movl	%edx, 8(%eax)
	movl	12(%esi), %edx
	movl	%edx, 12(%eax)
	movl	16(%esi), %edx
	movl	-20(%ebp), %esi
	movl	%edx, 16(%eax)
	movl	%edi, %edx
	movl	504(%ebx), %eax
	movswl	(%esi), %ecx
	movl	-24(%ebp), %esi
	subl	%ecx, %edx
	leal	(%edx,%edx,2), %ecx
	movl	256(%esi), %edx
	leal	(%edx,%ecx,8), %edx
	movl	(%edx), %ecx
	movl	%ecx, 72(%eax)
	movl	4(%edx), %ecx
	movl	%ecx, 76(%eax)
	movl	8(%edx), %ecx
	movl	%ecx, 80(%eax)
	movl	12(%edx), %ecx
	movl	%ecx, 84(%eax)
	movl	16(%edx), %edx
	movl	%edx, 88(%eax)
	jmp	L459
L488:
	movl	-16(%ebp), %eax
	movb	$-86, 651(%ebx)
	movzwl	14(%eax), %eax
	jmp	L487
L678:
	movl	(%eax), %ecx
	movl	504(%ebx), %edx
	movl	-16(%ebp), %esi
	movl	%ecx, (%edx)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	8(%eax), %ecx
	movl	%ecx, 8(%edx)
	movl	12(%eax), %ecx
	movl	%ecx, 12(%edx)
	movl	16(%eax), %eax
	movl	%eax, 16(%edx)
	movswl	8(%esi), %edx
	movl	-20(%ebp), %esi
	movl	504(%ebx), %eax
	movswl	(%esi), %ecx
	movl	-24(%ebp), %esi
	subl	%ecx, %edx
	leal	(%edx,%edx,2), %ecx
	movl	4(%esi), %edx
	leal	(%edx,%ecx,8), %edx
	movl	(%edx), %ecx
	jmp	L650
L417:
	movl	$24, %eax
	call	__Z13handle_memerri
L483:
	movl	$96, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE20:
	.p2align 4
	.globl	_polymer_bindmaterial.lto_priv.0
	.def	_polymer_bindmaterial.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_bindmaterial.lto_priv.0:
LFB21:
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
	subl	$180, %esp
	movl	_curlight, %ecx
	movl	%edx, -140(%ebp)
	testl	%ecx, %ecx
	setne	%dl
	xorl	%eax, %eax
	testl	%esi, %esi
	setne	%al
	andl	%edx, %eax
	xorl	%edx, %edx
	sall	$2, %eax
	cmpl	$-1, 4(%ebx)
	setne	%dl
	addl	%edx, %edx
	orl	%edx, %eax
	movl	_pr_normalmapping, %edx
	testl	%edx, %edx
	je	L682
	movl	8(%ebx), %edi
	movl	%eax, %edx
	orl	$8, %edx
	testl	%edi, %edi
	cmovne	%edx, %eax
L682:
	movl	_pr_artmapping, %edx
	movl	_overridematerial, %edi
	testl	%edx, %edx
	je	L683
	movl	_gltexfiltermode, %edx
	testl	%edx, %edx
	je	L840
L683:
	movl	%eax, %edx
	orl	$288, %edx
	cmpl	$0, 44(%ebx)
	cmovne	%edx, %eax
L686:
	movl	%eax, %edx
	orb	$2, %dh
	cmpl	$0, 56(%ebx)
	cmovne	%edx, %eax
	movl	_r_detailmapping, %edx
	testl	%edx, %edx
	je	L690
	movl	%eax, %edx
	orl	$64, %edx
	cmpl	$0, 60(%ebx)
	cmovne	%edx, %eax
L690:
	movl	%eax, %edx
	orb	$-128, %dl
	cmpl	$0, _pr_specularmapping
	je	L693
	orl	$1152, %eax
	cmpl	$0, 76(%ebx)
	cmovne	%eax, %edx
L693:
	movss	80(%ebx), %xmm0
	ucomiss	LC50, %xmm0
	jp	L694
	jne	L694
	movss	LC1, %xmm0
	ucomiss	84(%ebx), %xmm0
	jp	L694
	jne	L694
	movl	_pr_overridespecular, %eax
	testl	%eax, %eax
	je	L697
	.p2align 4
	.p2align 3
L694:
	orb	$8, %dh
L697:
	testl	%ecx, %ecx
	jne	L698
	movl	88(%ebx), %eax
	testl	%eax, %eax
	jne	L841
	movl	%edx, %eax
	orb	$32, %ah
	cmpl	$0, 24(%ebx)
	cmove	%eax, %edx
L700:
	movl	_r_glowmapping, %eax
	testl	%eax, %eax
	je	L698
	movl	%edx, %eax
	orb	$64, %ah
	cmpl	$0, 92(%ebx)
	cmovne	%eax, %edx
L698:
	testl	%esi, %esi
	je	L704
	movl	-140(%ebp), %eax
	movswl	(%eax,%ecx,2), %eax
	imull	$270, %eax, %eax
	leal	_prlights(%eax), %ecx
	cmpw	$0, _prlights+24(%eax)
	je	L842
	movl	%edx, %eax
	orl	$884736, %edx
	movl	258(%ecx), %esi
	orl	$786432, %eax
	cmpl	$-1, 250(%ecx)
	cmove	%eax, %edx
	movl	%edx, %eax
	orl	$163840, %eax
	testl	%esi, %esi
	cmovne	%eax, %edx
L704:
	andl	%edi, %edx
	movl	$__ZL14prprogramtable.lto_priv.0, %eax
	movl	%edx, -136(%ebp)
	orl	$1048577, %edx
	movl	%edx, -144(%ebp)
	call	_inthash_find
	movl	%eax, %esi
	cmpl	$-1, %eax
	je	L843
L709:
	movl	(%esi), %edi
	movl	%edi, (%esp)
	call	*_glad_glUseProgram
	subl	$4, %esp
	movl	%edi, _gl
	movl	-136(%ebp), %edi
	movl	%edi, %eax
	andl	$16, %eax
	cmpl	$1, %eax
	movl	%eax, -148(%ebp)
	sbbl	%eax, %eax
	andl	$-510, %eax
	addl	$512, %eax
	movl	%eax, -152(%ebp)
	movl	%eax, %edx
	xorl	%eax, %eax
	call	__Z25buildgl_bindSamplerObjectii
	andl	$2, %edi
	je	L711
	movl	8(%esi), %eax
	movl	%eax, (%esp)
	call	*_glad_glEnableVertexAttribArray
	movl	12(%esi), %eax
	subl	$4, %esp
	cmpl	$-1, %eax
	je	L712
	movl	%eax, (%esp)
	call	*_glad_glEnableVertexAttribArray
	subl	$4, %esp
L712:
	movl	4(%ebx), %eax
	movl	$60, 16(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 20(%esp)
	movl	$5126, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%esi), %eax
	movl	%eax, (%esp)
	call	*_glad_glVertexAttribPointer
	movl	12(%esi), %eax
	subl	$24, %esp
	cmpl	$-1, %eax
	je	L713
	movl	4(%ebx), %ecx
	movl	$60, 16(%esp)
	movl	$0, 12(%esp)
	leal	12(%ecx), %edx
	movl	$5126, 8(%esp)
	movl	%edx, 20(%esp)
	movl	$3, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glVertexAttribPointer
	subl	$24, %esp
L713:
	movss	(%ebx), %xmm0
	movss	%xmm0, 4(%esp)
	movl	16(%esi), %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
L711:
	testb	$4, -136(%ebp)
	je	L714
	movl	$16384, (%esp)
	call	*_glad_glPushAttrib
	subl	$4, %esp
	movl	$3042, (%esp)
	call	*_glad_glEnable
	subl	$4, %esp
	movl	$1, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glBlendFunc
	movl	_curlight, %eax
	movl	-140(%ebp), %ecx
	subl	$8, %esp
	movswl	(%ecx,%eax,2), %eax
	imull	$270, %eax, %eax
	testb	$2, _prlights+38(%eax)
	jne	L844
L715:
	movss	_g_glColorCorrection+12, %xmm0
	movss	_g_glColorCorrection, %xmm2
	movss	%xmm0, 16(%esp)
	movss	_g_glColorCorrection+8, %xmm0
	movss	%xmm0, 12(%esp)
	movss	_g_glColorCorrection+4, %xmm0
	movss	%xmm0, 8(%esp)
	movss	LC1, %xmm0
	minss	%xmm0, %xmm2
	movss	%xmm2, 4(%esp)
	movl	4(%esi), %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform4f
	subl	$20, %esp
L718:
	movl	-136(%ebp), %eax
	xorl	%edi, %edi
	andl	$8, %eax
	movl	%eax, -156(%ebp)
	jne	L845
L719:
	movl	-148(%ebp), %eax
	testl	%eax, %eax
	jne	L846
L726:
	testb	$32, -136(%ebp)
	jne	L847
L734:
	testb	$2, -135(%ebp)
	jne	L848
L736:
	testb	$64, -136(%ebp)
	je	L738
	movl	-156(%ebp), %eax
	movss	64(%ebx), %xmm1
	movss	68(%ebx), %xmm0
	testl	%eax, %eax
	jne	L739
	mulss	48(%ebx), %xmm1
	mulss	52(%ebx), %xmm0
L739:
	movss	%xmm1, -76(%ebp)
	leal	33984(%edi), %eax
	movss	%xmm0, -72(%ebp)
	cmpl	_gl+4, %eax
	je	L740
	movl	%eax, _gl+4
	movl	%eax, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L740:
	movl	$2, %edx
	movl	%edi, %eax
	call	__Z25buildgl_bindSamplerObjectii
	movl	60(%ebx), %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	%edi, 4(%esp)
	movl	76(%esi), %eax
	addl	$1, %edi
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	leal	-76(%ebp), %eax
	subl	$8, %esp
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	80(%esi), %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform2fv
	subl	$12, %esp
L738:
	testb	$-128, -136(%ebp)
	je	L741
	movzbl	75(%ebx), %eax
	movl	%eax, 12(%esp)
	movzbl	74(%ebx), %eax
	movl	%eax, 8(%esp)
	movzbl	73(%ebx), %eax
	movl	%eax, 4(%esp)
	movzbl	72(%ebx), %eax
	movl	%eax, (%esp)
	call	*_glad_glColor4ub
	subl	$16, %esp
L741:
	testb	$4, -135(%ebp)
	jne	L849
L742:
	testb	$8, -135(%ebp)
	je	L744
	movl	_pr_overridespecular, %ecx
	movl	_glad_glUniform2fv, %eax
	movl	88(%esi), %edx
	testl	%ecx, %ecx
	jne	L850
	leal	80(%ebx), %ecx
L838:
	movl	%ecx, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	subl	$12, %esp
L744:
	testb	$16, -135(%ebp)
	jne	L851
L747:
	testb	$32, -135(%ebp)
	je	L749
	xorl	%eax, %eax
	cmpl	$1, _r_usenewshading
	setg	%al
	movl	%eax, 4(%esp)
	movl	96(%esi), %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	subl	$8, %esp
L749:
	testb	$64, -135(%ebp)
	jne	L852
L750:
	testb	$8, -134(%ebp)
	je	L752
	movl	_curlight, %ecx
	xorps	%xmm2, %xmm2
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	movl	-140(%ebp), %edx
	leal	(%edx,%ecx,2), %edx
	movl	%edx, -156(%ebp)
	movswl	(%edx), %edx
	imull	$270, %edx, %eax
	movl	%edx, -152(%ebp)
	cvtsi2ssl	_prlights+8(%eax), %xmm2
	leal	_prlights(%eax), %edx
	mulss	LC59, %xmm2
	cvtsi2ssl	_prlights+4(%eax), %xmm0
	movl	%edx, -160(%ebp)
	leal	-76(%ebp), %edx
	cvtsi2ssl	_prlights(%eax), %xmm1
	movl	_curmodelviewmatrix, %eax
	xorps	LC46, %xmm1
	movl	%edx, -148(%ebp)
	movss	%xmm1, -84(%ebp)
	movss	%xmm0, -92(%ebp)
	movss	%xmm2, -88(%ebp)
	movss	(%eax), %xmm3
	movss	16(%eax), %xmm4
	mulss	%xmm0, %xmm3
	mulss	%xmm2, %xmm4
	addss	%xmm4, %xmm3
	movss	32(%eax), %xmm4
	mulss	%xmm1, %xmm4
	addss	%xmm4, %xmm3
	addss	48(%eax), %xmm3
	movss	20(%eax), %xmm4
	mulss	%xmm2, %xmm4
	movss	%xmm3, -108(%ebp)
	movss	4(%eax), %xmm3
	mulss	24(%eax), %xmm2
	mulss	%xmm0, %xmm3
	mulss	8(%eax), %xmm0
	addss	%xmm4, %xmm3
	movss	36(%eax), %xmm4
	addss	%xmm2, %xmm0
	mulss	%xmm1, %xmm4
	mulss	40(%eax), %xmm1
	addss	%xmm4, %xmm3
	addss	52(%eax), %xmm3
	addss	%xmm1, %xmm0
	addss	56(%eax), %xmm0
	movss	%xmm3, -104(%ebp)
	movss	%xmm0, -100(%ebp)
	movss	LC1, %xmm0
	testb	$4, -134(%ebp)
	jne	L853
L753:
	imull	$270, -152(%ebp), %edx
	xorps	%xmm1, %xmm1
	xorps	%xmm2, %xmm2
	movss	LC51, %xmm3
	cvtsi2ssl	_prlights+16(%edx), %xmm1
	movzbl	_prlights+28(%edx), %eax
	mulss	LC63, %xmm1
	cvtsi2ssl	%eax, %xmm2
	movzbl	_prlights+29(%edx), %eax
	movss	%xmm1, -132(%ebp)
	mulss	%xmm1, %xmm1
	mulss	%xmm3, %xmm2
	divss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	movzbl	_prlights+30(%edx), %eax
	movss	%xmm2, -76(%ebp)
	mulss	%xmm3, %xmm1
	movss	%xmm1, -72(%ebp)
	movss	%xmm0, -128(%ebp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm3, %xmm0
	movss	%xmm0, -68(%ebp)
	testl	%ecx, %ecx
	jne	L760
	testb	$2, _prlights+38(%edx)
	je	L760
	xorps	LC46, %xmm2
	xorps	LC46, %xmm1
	xorps	LC46, %xmm0
	movss	%xmm2, -76(%ebp)
	movss	%xmm1, -72(%ebp)
	movss	%xmm0, -68(%ebp)
L760:
	leal	-108(%ebp), %eax
	movl	$4608, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$16384, (%esp)
	call	*_glad_glLightfv
	movl	-148(%ebp), %eax
	subl	$12, %esp
	movl	%eax, 8(%esp)
	movl	$4609, 4(%esp)
	movl	$16384, (%esp)
	call	*_glad_glLightfv
	movl	_glad_glLightfv, %eax
	leal	-92(%ebp), %edx
	subl	$12, %esp
	cmpb	$1, 96(%ebx)
	je	L854
L839:
	movl	%edx, 8(%esp)
	movl	$4610, 4(%esp)
	movl	$16384, (%esp)
	call	*%eax
	leal	-128(%ebp), %eax
	subl	$12, %esp
	movl	%eax, 8(%esp)
	movl	$4616, 4(%esp)
	movl	$16384, (%esp)
	call	*_glad_glLightfv
	subl	$12, %esp
L752:
	cmpl	$33984, _gl+4
	je	L679
	movl	$33984, _gl+4
	movl	$33984, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L679:
	movl	-144(%ebp), %eax
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
L714:
	.cfi_restore_state
	movss	_g_glColorCorrection+12, %xmm0
	movss	%xmm0, 16(%esp)
	movss	_g_glColorCorrection+8, %xmm0
	movss	%xmm0, 12(%esp)
	movss	_g_glColorCorrection+4, %xmm0
	movss	%xmm0, 8(%esp)
	movss	_g_glColorCorrection, %xmm0
	movss	%xmm0, 4(%esp)
	movl	4(%esi), %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform4f
	subl	$20, %esp
	jmp	L718
	.p2align 4,,10
	.p2align 3
L844:
	movl	$32779, (%esp)
	call	*_glad_glBlendEquation
	subl	$4, %esp
	jmp	L715
	.p2align 4,,10
	.p2align 3
L842:
	orl	$524288, %edx
	jmp	L704
	.p2align 4,,10
	.p2align 3
L841:
	orb	$16, %dh
	jmp	L700
	.p2align 4,,10
	.p2align 3
L840:
	movl	24(%ebx), %edx
	testl	%edx, %edx
	je	L683
	testb	$1, _globalflags
	jne	L683
	testl	$16, %edi
	je	L683
	orl	$16, %eax
	jmp	L686
	.p2align 4,,10
	.p2align 3
L850:
	movss	_pr_specularpower, %xmm0
	leal	-76(%ebp), %ecx
	movss	%xmm0, -76(%ebp)
	movss	_pr_specularfactor, %xmm0
	movss	%xmm0, -72(%ebp)
	jmp	L838
	.p2align 4,,10
	.p2align 3
L849:
	leal	33984(%edi), %eax
	cmpl	_gl+4, %eax
	je	L743
	movl	%eax, _gl+4
	movl	%eax, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L743:
	movl	-152(%ebp), %edx
	movl	%edi, %eax
	call	__Z25buildgl_bindSamplerObjectii
	movl	76(%ebx), %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	%edi, 4(%esp)
	movl	84(%esi), %eax
	addl	$1, %edi
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	subl	$8, %esp
	jmp	L742
	.p2align 4,,10
	.p2align 3
L852:
	leal	33984(%edi), %eax
	cmpl	_gl+4, %eax
	je	L751
	movl	%eax, _gl+4
	movl	%eax, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L751:
	movl	$3, %edx
	movl	%edi, %eax
	call	__Z25buildgl_bindSamplerObjectii
	movl	92(%ebx), %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	%edi, 4(%esp)
	movl	100(%esi), %eax
	addl	$1, %edi
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	subl	$8, %esp
	jmp	L750
	.p2align 4,,10
	.p2align 3
L851:
	leal	33984(%edi), %eax
	cmpl	_gl+4, %eax
	je	L748
	movl	%eax, _gl+4
	movl	%eax, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L748:
	movl	%edi, %eax
	movl	$1, %edx
	call	__Z25buildgl_bindSamplerObjectii
	movl	88(%ebx), %edx
	movl	$34037, %eax
	call	__Z19buildgl_bindTexturejj
	movl	%edi, 4(%esp)
	movl	92(%esi), %eax
	addl	$1, %edi
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	subl	$8, %esp
	jmp	L747
	.p2align 4,,10
	.p2align 3
L848:
	leal	33984(%edi), %eax
	cmpl	_gl+4, %eax
	je	L737
	movl	%eax, _gl+4
	movl	%eax, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L737:
	movl	%edi, %eax
	movl	$1, %edx
	call	__Z25buildgl_bindSamplerObjectii
	movl	56(%ebx), %edx
	movl	$32879, %eax
	call	__Z19buildgl_bindTexturejj
	movl	%edi, 4(%esp)
	movl	72(%esi), %eax
	addl	$1, %edi
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	subl	$8, %esp
	jmp	L736
	.p2align 4,,10
	.p2align 3
L847:
	leal	33984(%edi), %eax
	cmpl	_gl+4, %eax
	je	L735
	movl	%eax, _gl+4
	movl	%eax, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L735:
	movl	-152(%ebp), %edx
	movl	%edi, %eax
	call	__Z25buildgl_bindSamplerObjectii
	movl	44(%ebx), %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	%edi, 4(%esp)
	movl	64(%esi), %eax
	addl	$1, %edi
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	leal	48(%ebx), %eax
	subl	$8, %esp
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	68(%esi), %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform2fv
	subl	$12, %esp
	jmp	L734
	.p2align 4,,10
	.p2align 3
L846:
	leal	33984(%edi), %eax
	cmpl	_gl+4, %eax
	je	L727
	movl	%eax, _gl+4
	movl	%eax, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L727:
	movl	$512, %edx
	movl	%edi, %eax
	call	__Z25buildgl_bindSamplerObjectii
	movl	24(%ebx), %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	%edi, 4(%esp)
	movl	44(%esi), %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	leal	1(%edi), %eax
	subl	$8, %esp
	movl	%eax, -148(%ebp)
	leal	33985(%edi), %eax
	cmpl	_gl+4, %eax
	je	L728
	movl	%eax, _gl+4
	movl	%eax, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L728:
	movl	-148(%ebp), %eax
	movl	$513, %edx
	call	__Z25buildgl_bindSamplerObjectii
	movl	28(%ebx), %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	-148(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	48(%esi), %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	leal	2(%edi), %eax
	subl	$8, %esp
	movl	%eax, -148(%ebp)
	leal	33986(%edi), %eax
	cmpl	_gl+4, %eax
	je	L729
	movl	%eax, _gl+4
	movl	%eax, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L729:
	movl	-148(%ebp), %eax
	movl	$513, %edx
	addl	$3, %edi
	call	__Z25buildgl_bindSamplerObjectii
	movl	32(%ebx), %edx
	movl	$34037, %eax
	call	__Z19buildgl_bindTexturejj
	movl	-148(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	52(%esi), %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	xorps	%xmm0, %xmm0
	cvtsi2ssl	36(%ebx), %xmm0
	subl	$8, %esp
	movss	%xmm0, 4(%esp)
	movl	56(%esi), %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	xorps	%xmm0, %xmm0
	movss	40(%ebx), %xmm1
	movl	60(%esi), %ecx
	movl	_r_usenewshading, %eax
	movl	_glad_glUniform1f, %edx
	subl	$8, %esp
	cvtsi2ssl	_globalvisibility, %xmm0
	cmpl	$4, %eax
	je	L855
	movss	LC57, %xmm2
	mulss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	movl	%ecx, (%esp)
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm0, %xmm1
	movss	LC1, %xmm0
	cmpnltss	%xmm1, %xmm0
	movss	LC58, %xmm1
	andps	%xmm0, %xmm1
	andnps	%xmm2, %xmm0
	orps	%xmm1, %xmm0
	movss	%xmm0, 4(%esp)
	call	*%edx
	subl	$8, %esp
	jmp	L726
	.p2align 4,,10
	.p2align 3
L845:
	movss	_fglobalposy, %xmm0
	movss	%xmm0, -92(%ebp)
	movss	LC59, %xmm0
	mulss	_fglobalposz, %xmm0
	movss	%xmm0, -88(%ebp)
	movss	_fglobalposx, %xmm0
	xorps	LC46, %xmm0
	movss	%xmm0, -84(%ebp)
	cmpl	$33984, _gl+4
	je	L720
	movl	$33984, _gl+4
	movl	$33984, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L720:
	movl	-152(%ebp), %edx
	xorl	%eax, %eax
	call	__Z25buildgl_bindSamplerObjectii
	movl	8(%ebx), %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	_glad_glUniform3fv, %eax
	movl	32(%esi), %edx
	leal	-92(%ebp), %ecx
	cmpb	$1, 96(%ebx)
	jne	L836
	movss	-92(%ebp), %xmm0
	movss	-88(%ebp), %xmm3
	leal	-76(%ebp), %ecx
	movss	_mdspritespace, %xmm1
	movss	-84(%ebp), %xmm2
	movss	_mdspritespace+16, %xmm4
	mulss	%xmm0, %xmm1
	mulss	%xmm3, %xmm4
	addss	%xmm4, %xmm1
	movss	_mdspritespace+32, %xmm4
	mulss	%xmm2, %xmm4
	addss	%xmm4, %xmm1
	addss	_mdspritespace+48, %xmm1
	movss	_mdspritespace+20, %xmm4
	mulss	%xmm3, %xmm4
	mulss	_mdspritespace+24, %xmm3
	movss	%xmm1, -76(%ebp)
	movss	_mdspritespace+4, %xmm1
	mulss	%xmm0, %xmm1
	mulss	_mdspritespace+8, %xmm0
	addss	%xmm4, %xmm1
	movss	_mdspritespace+36, %xmm4
	addss	%xmm3, %xmm0
	mulss	%xmm2, %xmm4
	mulss	_mdspritespace+40, %xmm2
	addss	%xmm4, %xmm1
	addss	_mdspritespace+52, %xmm1
	addss	%xmm2, %xmm0
	addss	_mdspritespace+56, %xmm0
	movss	%xmm1, -72(%ebp)
	movss	%xmm0, -68(%ebp)
L836:
	movl	%ecx, 8(%esp)
	movl	%edx, (%esp)
	movl	$1, 4(%esp)
	call	*%eax
	subl	$12, %esp
	movl	$0, 4(%esp)
	movl	36(%esi), %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	movl	_pr_overrideparallax, %ecx
	movl	_glad_glUniform2fv, %eax
	movl	40(%esi), %edx
	subl	$8, %esp
	testl	%ecx, %ecx
	jne	L856
	leal	12(%ebx), %ecx
L837:
	movl	%ecx, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	20(%ebx), %eax
	subl	$12, %esp
	testl	%eax, %eax
	je	L725
	movl	20(%esi), %eax
	movl	%eax, (%esp)
	call	*_glad_glEnableVertexAttribArray
	movl	24(%esi), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	call	*_glad_glEnableVertexAttribArray
	movl	28(%esi), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	call	*_glad_glEnableVertexAttribArray
	movl	20(%ebx), %eax
	subl	$4, %esp
	movl	%eax, 20(%esp)
	movl	$60, 16(%esp)
	movl	$0, 12(%esp)
	movl	$5126, 8(%esp)
	movl	$3, 4(%esp)
	movl	20(%esi), %eax
	movl	%eax, (%esp)
	call	*_glad_glVertexAttribPointer
	movl	20(%ebx), %eax
	subl	$24, %esp
	addl	$12, %eax
	movl	$60, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$5126, 8(%esp)
	movl	$3, 4(%esp)
	movl	24(%esi), %eax
	movl	%eax, (%esp)
	call	*_glad_glVertexAttribPointer
	movl	20(%ebx), %eax
	subl	$24, %esp
	addl	$24, %eax
	movl	$60, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$5126, 8(%esp)
	movl	$3, 4(%esp)
	movl	28(%esi), %eax
	movl	%eax, (%esp)
	call	*_glad_glVertexAttribPointer
	subl	$24, %esp
L725:
	movl	$1, %edi
	jmp	L719
	.p2align 4,,10
	.p2align 3
L843:
	movl	-144(%ebp), %eax
	call	_polymer_compileprogram
	movl	%eax, %esi
	jmp	L709
	.p2align 4,,10
	.p2align 3
L854:
	movss	-92(%ebp), %xmm0
	movss	-88(%ebp), %xmm3
	leal	-120(%ebp), %edx
	movss	_mdspritespace, %xmm1
	movss	-84(%ebp), %xmm2
	movss	_mdspritespace+16, %xmm4
	mulss	%xmm0, %xmm1
	mulss	%xmm3, %xmm4
	addss	%xmm4, %xmm1
	movss	_mdspritespace+32, %xmm4
	mulss	%xmm2, %xmm4
	addss	%xmm4, %xmm1
	addss	_mdspritespace+48, %xmm1
	movss	_mdspritespace+20, %xmm4
	mulss	%xmm3, %xmm4
	mulss	_mdspritespace+24, %xmm3
	movss	%xmm1, -120(%ebp)
	movss	_mdspritespace+4, %xmm1
	mulss	%xmm0, %xmm1
	mulss	_mdspritespace+8, %xmm0
	addss	%xmm4, %xmm1
	movss	_mdspritespace+36, %xmm4
	addss	%xmm3, %xmm0
	mulss	%xmm2, %xmm4
	mulss	_mdspritespace+40, %xmm2
	addss	%xmm4, %xmm1
	addss	_mdspritespace+52, %xmm1
	addss	%xmm2, %xmm0
	addss	_mdspritespace+56, %xmm0
	movss	%xmm1, -116(%ebp)
	movss	%xmm0, -112(%ebp)
	jmp	L839
	.p2align 4,,10
	.p2align 3
L853:
	movl	-160(%ebp), %ecx
	movl	$1024, %eax
	xorps	%xmm1, %xmm1
	xorps	%xmm2, %xmm2
	movss	LC62, %xmm4
	movss	%xmm0, -168(%ebp)
	movswl	20(%ecx), %edx
	subl	%edx, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	cvtsi2ssl	%eax, %xmm1
	movl	$512, %eax
	subl	%edx, %eax
	movl	12(%ecx), %edx
	movl	$128, %ecx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	subl	$100, %edx
	divss	%xmm4, %xmm1
	cvtsi2ssl	%eax, %xmm2
	divss	%xmm4, %xmm2
	movss	%xmm1, -164(%ebp)
	movss	%xmm2, -152(%ebp)
	call	@getangle@8
	xorps	%xmm2, %xmm2
	movl	$128, %ecx
	movss	LC62, %xmm4
	addl	$1024, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	cvtsi2ssl	%eax, %xmm2
	movl	-156(%ebp), %eax
	movswl	(%eax), %eax
	movaps	%xmm2, %xmm5
	imull	$270, %eax, %eax
	divss	%xmm4, %xmm5
	movl	_prlights+12(%eax), %edx
	subl	$100, %edx
	movss	%xmm5, -160(%ebp)
	call	@getangle@8
	xorps	%xmm2, %xmm2
	movss	-84(%ebp), %xmm5
	movss	LC62, %xmm4
	addl	$512, %eax
	movss	-164(%ebp), %xmm1
	movss	-88(%ebp), %xmm6
	andl	$2047, %eax
	subss	-160(%ebp), %xmm6
	movswl	_sintable(%eax,%eax), %eax
	cvtsi2ssl	%eax, %xmm2
	movl	_curmodelviewmatrix, %eax
	movss	%xmm6, -116(%ebp)
	divss	%xmm4, %xmm2
	mulss	%xmm2, %xmm1
	mulss	-152(%ebp), %xmm2
	addss	-92(%ebp), %xmm1
	movss	%xmm1, -120(%ebp)
	subss	%xmm2, %xmm5
	movss	%xmm5, -112(%ebp)
	movss	4(%eax), %xmm3
	movss	20(%eax), %xmm2
	movss	24(%eax), %xmm7
	mulss	%xmm6, %xmm2
	mulss	%xmm1, %xmm3
	mulss	%xmm6, %xmm7
	mulss	16(%eax), %xmm6
	addss	%xmm2, %xmm3
	movss	36(%eax), %xmm2
	mulss	%xmm5, %xmm2
	addss	%xmm2, %xmm3
	movss	8(%eax), %xmm2
	addss	52(%eax), %xmm3
	subss	-104(%ebp), %xmm3
	mulss	%xmm1, %xmm2
	mulss	(%eax), %xmm1
	addss	%xmm7, %xmm2
	movss	40(%eax), %xmm7
	addss	%xmm6, %xmm1
	mulss	%xmm5, %xmm7
	mulss	32(%eax), %xmm5
	addss	%xmm7, %xmm2
	addss	56(%eax), %xmm2
	addss	%xmm5, %xmm1
	addss	48(%eax), %xmm1
	movl	-156(%ebp), %eax
	movss	%xmm3, -128(%ebp)
	subss	-108(%ebp), %xmm1
	subss	-100(%ebp), %xmm2
	movswl	(%eax), %edx
	imull	$270, %edx, %edx
	movss	%xmm1, -132(%ebp)
	xorps	%xmm1, %xmm1
	movss	%xmm2, -124(%ebp)
	xorps	%xmm2, %xmm2
	movswl	_prlights+24(%edx), %eax
	movss	-168(%ebp), %xmm0
	addl	$512, %eax
	movss	%xmm0, -152(%ebp)
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	cvtsi2ssl	%eax, %xmm2
	movswl	_prlights+22(%edx), %eax
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	divss	%xmm4, %xmm2
	cvtsi2ssl	%eax, %xmm1
	leal	-132(%ebp), %eax
	divss	%xmm4, %xmm1
	movss	%xmm2, -120(%ebp)
	subss	%xmm2, %xmm1
	movaps	%xmm0, %xmm2
	divss	%xmm1, %xmm2
	movss	%xmm2, -116(%ebp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	116(%esi), %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform3fv
	leal	-120(%ebp), %eax
	subl	$12, %esp
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	120(%esi), %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform2fv
	movss	-152(%ebp), %xmm0
	subl	$12, %esp
	testb	$-128, -135(%ebp)
	je	L754
	movss	%xmm0, -148(%ebp)
	movl	$5890, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	movl	$__ZL10shadowBias, (%esp)
	call	*_glad_glLoadMatrixf
	movl	-140(%ebp), %ecx
	movl	_curlight, %eax
	subl	$4, %esp
	movswl	(%ecx,%eax,2), %eax
	imull	$270, %eax, %eax
	addl	$_prlights+42, %eax
	movl	%eax, (%esp)
	call	*_glad_glMultMatrixf
	movl	_curlight, %eax
	movl	-140(%ebp), %ecx
	subl	$4, %esp
	movswl	(%ecx,%eax,2), %eax
	imull	$270, %eax, %eax
	addl	$_prlights+106, %eax
	movl	%eax, (%esp)
	call	*_glad_glMultMatrixf
	movss	-148(%ebp), %xmm0
	subl	$4, %esp
	cmpb	$1, 96(%ebx)
	jne	L755
	movl	$_spritemodelview, (%esp)
	call	*_glad_glMultMatrixf
	movss	-148(%ebp), %xmm0
	subl	$4, %esp
L755:
	leal	-76(%ebp), %eax
	movss	%xmm0, -152(%ebp)
	movl	%eax, -148(%ebp)
	movl	%eax, 4(%esp)
	movl	$2984, (%esp)
	call	*_glad_glGetFloatv
	subl	$8, %esp
	call	*_glad_glLoadIdentity
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	movl	-148(%ebp), %eax
	subl	$4, %esp
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	104(%esi), %eax
	movl	%eax, (%esp)
	call	*_glad_glUniformMatrix4fv
	movss	-152(%ebp), %xmm0
	subl	$16, %esp
	testb	$1, -134(%ebp)
	jne	L857
L756:
	testb	$2, -134(%ebp)
	jne	L858
L754:
	movl	_curlight, %ecx
	movl	-140(%ebp), %eax
	movswl	(%eax,%ecx,2), %eax
	movl	%eax, -152(%ebp)
	jmp	L753
	.p2align 4,,10
	.p2align 3
L856:
	movss	_pr_parallaxscale, %xmm0
	leal	-76(%ebp), %ecx
	movss	%xmm0, -76(%ebp)
	movss	_pr_parallaxbias, %xmm0
	movss	%xmm0, -72(%ebp)
	jmp	L837
	.p2align 4,,10
	.p2align 3
L855:
	mulss	LC60, %xmm0
	movl	%ecx, (%esp)
	mulss	%xmm1, %xmm0
	movss	%xmm0, 4(%esp)
	call	*%edx
	subl	$8, %esp
	jmp	L726
	.p2align 4,,10
	.p2align 3
L858:
	leal	33984(%edi), %eax
	cmpl	_gl+4, %eax
	je	L759
	movss	%xmm0, -136(%ebp)
	movl	%eax, _gl+4
	movl	%eax, (%esp)
	call	*_glad_glActiveTexture
	movss	-136(%ebp), %xmm0
	subl	$4, %esp
L759:
	movl	$1, %edx
	movl	%edi, %eax
	movss	%xmm0, -136(%ebp)
	call	__Z25buildgl_bindSamplerObjectii
	movl	-140(%ebp), %ecx
	movl	_curlight, %eax
	movswl	(%ecx,%eax,2), %eax
	imull	$270, %eax, %eax
	movl	_prlights+258(%eax), %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	%edi, 4(%esp)
	movl	112(%esi), %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	movss	-136(%ebp), %xmm0
	subl	$8, %esp
	jmp	L754
	.p2align 4,,10
	.p2align 3
L857:
	leal	33984(%edi), %eax
	cmpl	_gl+4, %eax
	je	L757
	movl	%eax, _gl+4
	movl	%eax, (%esp)
	call	*_glad_glActiveTexture
	movss	-152(%ebp), %xmm0
	subl	$4, %esp
L757:
	movl	%edi, %eax
	movl	$16384, %edx
	movss	%xmm0, -152(%ebp)
	call	__Z25buildgl_bindSamplerObjectii
	movl	-140(%ebp), %ecx
	movl	_curlight, %eax
	movswl	(%ecx,%eax,2), %eax
	imull	$270, %eax, %eax
	movl	_prlights+250(%eax), %eax
	leal	(%eax,%eax,2), %edx
	movl	_prrts, %eax
	leal	(%eax,%edx,8), %eax
	movl	8(%eax), %edx
	movl	(%eax), %eax
	call	__Z19buildgl_bindTexturejj
	movl	%edi, 4(%esp)
	movl	108(%esi), %eax
	addl	$1, %edi
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	movss	-152(%ebp), %xmm0
	subl	$8, %esp
	jmp	L756
	.cfi_endproc
LFE21:
	.p2align 4
	.globl	_polymer_unbindmaterial.lto_priv.0
	.def	_polymer_unbindmaterial.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_unbindmaterial.lto_priv.0:
LFB26:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%eax, %edx
	movl	%eax, %esi
	movl	$__ZL14prprogramtable.lto_priv.0, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	call	_inthash_find
	movl	%eax, %ebx
	cmpl	$-1, %eax
	je	L880
L861:
	testl	$2, %esi
	je	L862
	movl	12(%ebx), %eax
	cmpl	$-1, %eax
	je	L863
	movl	%eax, (%esp)
	call	*_glad_glDisableVertexAttribArray
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
L863:
	movl	8(%ebx), %eax
	movl	%eax, (%esp)
	call	*_glad_glDisableVertexAttribArray
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
L862:
	testl	$4, %esi
	je	L864
	call	*_glad_glPopAttrib
L864:
	andl	$8, %esi
	je	L865
	movl	20(%ebx), %eax
	movl	%eax, (%esp)
	call	*_glad_glDisableVertexAttribArray
	.cfi_def_cfa_offset 12
	movl	24(%ebx), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	%eax, (%esp)
	call	*_glad_glDisableVertexAttribArray
	.cfi_def_cfa_offset 12
	movl	28(%ebx), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	%eax, (%esp)
	call	*_glad_glDisableVertexAttribArray
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
L865:
	movl	$0, (%esp)
	call	*_glad_glUseProgram
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	$0, _gl
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
L880:
	.cfi_restore_state
	movl	%esi, %eax
	call	_polymer_compileprogram
	movl	%eax, %ebx
	jmp	L861
	.cfi_endproc
LFE26:
	.p2align 4
	.globl	_polymer_emptybuckets.lto_priv.0
	.def	_polymer_emptybuckets.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_emptybuckets.lto_priv.0:
LFB27:
	.cfi_startproc
	movl	_pr_buckets, %edx
	testl	%edx, %edx
	jne	L906
	ret
	.p2align 4,,10
	.p2align 3
L906:
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	_prmapvbo, %edx
	movl	$34962, %eax
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -20
	movl	_prbuckethead, %ebx
	call	__Z18buildgl_bindBufferjj
	movl	$0, 12(%esp)
	movl	$24, 8(%esp)
	movl	$5126, 4(%esp)
	movl	$3, (%esp)
	call	*_glad_glVertexPointer
	.cfi_def_cfa_offset 20
	subl	$16, %esp
	.cfi_def_cfa_offset 36
	movl	$12, 12(%esp)
	movl	$24, 8(%esp)
	movl	$5126, 4(%esp)
	movl	$2, (%esp)
	call	*_glad_glTexCoordPointer
	.cfi_def_cfa_offset 20
	movl	_prindexringvbo, %edx
	movl	$34963, %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 36
	call	__Z18buildgl_bindBufferjj
	xorl	%eax, %eax
	testl	%ebx, %ebx
	je	L883
	.p2align 4
	.p2align 4
	.p2align 3
L884:
	addl	112(%ebx), %eax
	movl	124(%ebx), %ebx
	testl	%ebx, %ebx
	jne	L884
L883:
	addl	_prindexringoffset, %eax
	cmpl	$65534, %eax
	jbe	L885
	movl	$34963, (%esp)
	call	*_glad_glUnmapBuffer
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	$202, 12(%esp)
	movl	$262140, 8(%esp)
	movl	$0, 4(%esp)
	movl	$34963, (%esp)
	call	*_glad_glMapBufferRange
	.cfi_def_cfa_offset 20
	subl	$16, %esp
	.cfi_def_cfa_offset 36
	movl	%eax, _prindexring
	movl	$0, _prindexringoffset
L885:
	movl	_prbuckethead, %ebx
	testl	%ebx, %ebx
	je	L886
	movl	%edi, 24(%esp)
	movl	%ebp, 28(%esp)
	movl	%esi, 20(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	%ebx, %esi
	.p2align 4
	.p2align 3
L889:
	movl	112(%esi), %eax
	testl	%eax, %eax
	je	L904
	movl	_prindexringoffset, %edi
	movl	_prindexring, %edx
	sall	$2, %eax
	movl	108(%esi), %ecx
	movl	%eax, 8(%esp)
	leal	0(,%edi,4), %ebp
	addl	%ebp, %edx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
	addl	112(%esi), %edi
	movl	%ebp, 120(%esi)
	movl	%edi, _prindexringoffset
L904:
	movl	124(%esi), %esi
	testl	%esi, %esi
	jne	L889
	.p2align 4
	.p2align 3
L892:
	movl	112(%ebx), %eax
	testl	%eax, %eax
	je	L905
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leal	4(%ebx), %eax
	call	_polymer_bindmaterial.lto_priv.0
	movl	%eax, %esi
	movl	120(%ebx), %eax
	movl	$5125, 8(%esp)
	movl	%eax, 12(%esp)
	movl	112(%ebx), %eax
	movl	$4, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDrawElements
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 36
	call	_polymer_unbindmaterial.lto_priv.0
	movl	$0, 112(%ebx)
L905:
	movl	124(%ebx), %ebx
	testl	%ebx, %ebx
	jne	L892
	movl	20(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %edi
	.cfi_restore 7
	movl	28(%esp), %ebp
	.cfi_restore 5
L886:
	movl	$34963, %eax
	call	__Z18buildgl_bindBufferjj.constprop.0
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj.constprop.0
	movl	16(%esp), %ebx
	movl	$0, _prcanbucket
	addl	$32, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE27:
	.p2align 4
	.globl	_polymer_drawplane.lto_priv.0
	.def	_polymer_drawplane.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_drawplane.lto_priv.0:
LFB28:
	.cfi_startproc
	movl	_pr_nullrender, %edx
	testl	%edx, %edx
	jg	L979
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	%esi, 32(%esp)
	.cfi_offset 6, -16
	movl	_pr_buckets, %esi
	movl	%ebp, 40(%esp)
	.cfi_offset 5, -8
	movl	%eax, %ebp
	movl	%ebx, 28(%esp)
	testl	%esi, %esi
	.cfi_offset 3, -20
	je	L909
	movl	_prcanbucket, %ebx
	testl	%ebx, %ebx
	je	L909
	movl	16(%eax), %esi
	testl	%esi, %esi
	je	L909
	movl	%edi, 36(%esp)
	.cfi_offset 7, -12
	movl	176(%eax), %ecx
	testl	%ecx, %ecx
	jne	L984
	movl	112(%esi), %edi
	movl	116(%esi), %eax
	movl	$6, 16(%esp)
	movl	$6, %ebx
	movl	108(%esi), %edx
	leal	6(%edi), %ecx
	cmpl	%eax, %ecx
	jnb	L914
	jmp	L916
	.p2align 4,,10
	.p2align 3
L947:
	movl	112(%esi), %edi
	movl	116(%esi), %eax
	movl	%edx, 108(%esi)
	leal	(%edi,%ebx), %ecx
	cmpl	%eax, %ecx
	jb	L985
L914:
	leal	(%eax,%eax), %ecx
	leal	0(,%eax,8), %edi
	movl	%ecx, 116(%esi)
	movl	_g_sm_heap, %ecx
	movl	%edx, (%esp)
	movl	%edi, 4(%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 40
	subl	$8, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, %edx
	testl	%eax, %eax
	jne	L947
	testl	%edi, %edi
	je	L947
	movl	%edi, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L909:
	.cfi_restore 7
	movss	64(%ebp), %xmm0
	movss	%xmm0, 8(%esp)
	movss	60(%ebp), %xmm0
	movss	%xmm0, 4(%esp)
	movss	56(%ebp), %xmm0
	movss	%xmm0, (%esp)
	call	*_glad_glNormal3f
	.cfi_def_cfa_offset 36
	movl	12(%ebp), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 48
	cmpl	$-1, %eax
	je	L919
	movl	_prmapvbo, %edx
	leal	(%eax,%eax,2), %ebx
	sall	$3, %ebx
	testl	%edx, %edx
	jne	L986
L921:
	movl	0(%ebp), %eax
	movl	$24, 8(%esp)
	movl	$5126, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$3, (%esp)
	call	*_glad_glVertexPointer
	.cfi_def_cfa_offset 32
	movl	0(%ebp), %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 48
	addl	$12, %eax
	movl	$24, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$5126, 4(%esp)
	movl	$2, (%esp)
	call	*_glad_glTexCoordPointer
	.cfi_def_cfa_offset 32
	leal	72(%ebp), %eax
	movzwl	248(%ebp), %ecx
	subl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	$0, _curlight
	movl	%eax, 16(%esp)
	leal	20(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	32(%ebp), %eax
	movl	%eax, 24(%esp)
	.p2align 4
	.p2align 3
L933:
	movl	16(%esp), %eax
	leal	184(%ebp), %edx
	call	_polymer_bindmaterial.lto_priv.0
	movl	%eax, %ebx
	movl	%eax, %edx
	movl	$__ZL14prprogramtable.lto_priv.0, %eax
	call	_inthash_find
	cmpl	$-1, %eax
	je	L923
L983:
	movl	%eax, %esi
	testb	$8, %bl
	je	L925
	movl	20(%esp), %eax
	movl	%eax, 4(%esp)
	movl	20(%esi), %eax
	movl	%eax, (%esp)
	call	*_glad_glVertexAttrib3fv
	.cfi_def_cfa_offset 40
	subl	$8, %esp
	.cfi_def_cfa_offset 48
	movl	24(%esp), %eax
	movl	%eax, 4(%esp)
	movl	24(%esi), %eax
	movl	%eax, (%esp)
	call	*_glad_glVertexAttrib3fv
	.cfi_def_cfa_offset 40
	leal	44(%ebp), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, 4(%esp)
	movl	28(%esi), %eax
	movl	%eax, (%esp)
	call	*_glad_glVertexAttrib3fv
	.cfi_def_cfa_offset 40
	subl	$8, %esp
	.cfi_def_cfa_offset 48
L925:
	movl	172(%ebp), %eax
	testl	%eax, %eax
	je	L987
	movl	%eax, 12(%esp)
	movl	$5123, 8(%esp)
	movl	176(%ebp), %eax
	movl	$4, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDrawElements
	.cfi_def_cfa_offset 32
	subl	$16, %esp
	.cfi_def_cfa_offset 48
L927:
	movl	%ebx, %eax
	call	_polymer_unbindmaterial.lto_priv.0
	movzwl	248(%ebp), %ecx
	movl	_curlight, %eax
	testw	%cx, %cx
	je	L930
	movl	_depth, %edx
	testl	%edx, %edx
	je	L931
	movl	_mirrors-8(,%edx,8), %edx
	testl	%edx, %edx
	je	L930
L931:
	movswl	184(%ebp,%eax,2), %edx
	imull	$270, %edx, %edx
	orb	$4, _prlights+254(%edx)
	movzwl	248(%ebp), %ecx
L930:
	addl	$1, %eax
	movl	%eax, _curlight
	cmpl	%ecx, %eax
	jge	L907
	cmpl	_pr_maxlightpasses, %eax
	jge	L907
	movl	_depth, %eax
	testl	%eax, %eax
	je	L933
	movl	_mirrors-8(,%eax,8), %eax
	testl	%eax, %eax
	jne	L933
L907:
	movl	28(%esp), %ebx
	movl	32(%esp), %esi
	movl	40(%esp), %ebp
	addl	$44, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L987:
	.cfi_restore_state
	movl	$4, 8(%esp)
	movl	$0, 4(%esp)
	movl	$7, (%esp)
	call	*_glad_glDrawArrays
	.cfi_def_cfa_offset 36
	subl	$12, %esp
	.cfi_def_cfa_offset 48
	jmp	L927
	.p2align 4,,10
	.p2align 3
L923:
	movl	%ebx, %eax
	call	_polymer_compileprogram
	jmp	L983
	.p2align 4,,10
	.p2align 3
L979:
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	ret
	.p2align 4,,10
	.p2align 3
L919:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	8(%ebp), %edx
	xorl	%ebx, %ebx
	testl	%edx, %edx
	je	L921
L986:
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj
	movl	%ebx, 12(%esp)
	addl	$12, %ebx
	movl	$24, 8(%esp)
	movl	$5126, 4(%esp)
	movl	$3, (%esp)
	call	*_glad_glVertexPointer
	.cfi_def_cfa_offset 32
	subl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	%ebx, 12(%esp)
	movl	$24, 8(%esp)
	movl	$5126, 4(%esp)
	movl	$2, (%esp)
	call	*_glad_glTexCoordPointer
	.cfi_def_cfa_offset 32
	movl	172(%ebp), %ecx
	subl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%ecx, %ecx
	je	L922
	movl	180(%ebp), %edx
	movl	$34963, %eax
	call	__Z18buildgl_bindBufferjj
L922:
	leal	72(%ebp), %eax
	movzwl	248(%ebp), %ecx
	movl	$0, _curlight
	movl	%eax, 16(%esp)
	leal	20(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	32(%ebp), %eax
	movl	%eax, 24(%esp)
	.p2align 4
	.p2align 3
L945:
	movl	16(%esp), %eax
	leal	184(%ebp), %edx
	call	_polymer_bindmaterial.lto_priv.0
	movl	%eax, %edx
	movl	%eax, %esi
	movl	$__ZL14prprogramtable.lto_priv.0, %eax
	call	_inthash_find
	movl	%eax, %ebx
	cmpl	$-1, %eax
	je	L988
L935:
	testl	$8, %esi
	je	L936
	movl	20(%esp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebx), %eax
	movl	%eax, (%esp)
	call	*_glad_glVertexAttrib3fv
	.cfi_def_cfa_offset 40
	subl	$8, %esp
	.cfi_def_cfa_offset 48
	movl	24(%esp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebx), %eax
	movl	%eax, (%esp)
	call	*_glad_glVertexAttrib3fv
	.cfi_def_cfa_offset 40
	leal	44(%ebp), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, 4(%esp)
	movl	28(%ebx), %eax
	movl	%eax, (%esp)
	call	*_glad_glVertexAttrib3fv
	.cfi_def_cfa_offset 40
	subl	$8, %esp
	.cfi_def_cfa_offset 48
L936:
	movl	172(%ebp), %eax
	testl	%eax, %eax
	je	L937
	movl	$0, 12(%esp)
	movl	$5123, 8(%esp)
	movl	176(%ebp), %eax
	movl	$4, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDrawElements
	.cfi_def_cfa_offset 32
	subl	$16, %esp
	.cfi_def_cfa_offset 48
L938:
	movl	%esi, %eax
	call	_polymer_unbindmaterial.lto_priv.0
	movzwl	248(%ebp), %ecx
	movl	_curlight, %eax
	testw	%cx, %cx
	je	L941
	movl	_depth, %edx
	testl	%edx, %edx
	je	L940
	movl	_mirrors-8(,%edx,8), %ebx
	testl	%ebx, %ebx
	je	L941
L940:
	movswl	184(%ebp,%eax,2), %edx
	imull	$270, %edx, %edx
	orb	$4, _prlights+254(%edx)
	movzwl	248(%ebp), %ecx
L941:
	addl	$1, %eax
	movl	%eax, _curlight
	cmpl	%ecx, %eax
	jge	L942
	cmpl	_pr_maxlightpasses, %eax
	jge	L942
	movl	_depth, %eax
	testl	%eax, %eax
	je	L945
	movl	_mirrors-8(,%eax,8), %edx
	testl	%edx, %edx
	jne	L945
	.p2align 4
	.p2align 3
L942:
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj.constprop.0
	movl	172(%ebp), %eax
	testl	%eax, %eax
	je	L907
	movl	28(%esp), %ebx
	movl	32(%esp), %esi
	movl	$34963, %eax
	movl	40(%esp), %ebp
	addl	$44, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	__Z18buildgl_bindBufferjj.constprop.0
	.p2align 4,,10
	.p2align 3
L937:
	.cfi_restore_state
	movl	$4, 8(%esp)
	movl	$0, 4(%esp)
	movl	$7, (%esp)
	call	*_glad_glDrawArrays
	.cfi_def_cfa_offset 36
	subl	$12, %esp
	.cfi_def_cfa_offset 48
	jmp	L938
	.p2align 4,,10
	.p2align 3
L988:
	movl	%esi, %eax
	call	_polymer_compileprogram
	movl	%eax, %ebx
	jmp	L935
L984:
	.cfi_offset 7, -12
	movl	112(%esi), %edi
	movl	116(%esi), %eax
	movl	%ecx, 16(%esp)
	movl	108(%esi), %edx
	leal	(%edi,%ecx), %ebx
	cmpl	%eax, %ebx
	jb	L911
	movl	%ecx, %ebx
	jmp	L914
L985:
	movl	176(%ebp), %ecx
L911:
	testl	%ecx, %ecx
	jle	L916
	movl	172(%ebp), %eax
	movl	12(%ebp), %ebx
	leal	1(%edi), %ecx
	movzwl	(%eax), %eax
	movl	%ecx, 112(%esi)
	addl	%ebx, %eax
	movl	%eax, (%edx,%edi,4)
	cmpl	$1, 176(%ebp)
	jle	L982
	movl	$1, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L917:
	movl	112(%esi), %ecx
	movl	172(%ebp), %edx
	movl	12(%ebp), %ebx
	movzwl	(%edx,%eax,2), %edx
	leal	1(%ecx), %edi
	addl	$1, %eax
	movl	%edi, 112(%esi)
	movl	108(%esi), %edi
	addl	%ebx, %edx
	movl	%edx, (%edi,%ecx,4)
	cmpl	%eax, 176(%ebp)
	jg	L917
L982:
	movl	36(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L907
L916:
	.cfi_restore_state
	movl	12(%ebp), %eax
	leal	1(%edi), %ebx
	movl	%ebx, 112(%esi)
	movl	%eax, (%edx,%edi,4)
	movl	$1, %eax
L918:
	movl	112(%esi), %ecx
	movl	108(%esi), %ebx
	addl	$1, %eax
	movl	12(%ebp), %edx
	addl	__ZZ19polymer_bucketplaneE11quadindices-4(,%eax,4), %edx
	leal	1(%ecx), %edi
	movl	%edi, 112(%esi)
	movl	%edx, (%ebx,%ecx,4)
	cmpl	$6, %eax
	jne	L918
	jmp	L982
	.cfi_endproc
LFE28:
	.section .rdata,"dr"
LC64:
	.ascii "Drawing sector %i\0"
LC65:
	.ascii "Finished drawing sector %i.\0"
	.text
	.p2align 4
	.globl	_polymer_drawsector.lto_priv.0
	.def	_polymer_drawsector.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_drawsector.lto_priv.0:
LFB31:
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
	movswl	%ax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$40, %esp
	.cfi_def_cfa_offset 60
	movw	%ax, 20(%esp)
	cmpl	$2, _pr_verbosity
	jg	L1037
L990:
	movl	20(%esp), %edx
	movl	_automapping, %ecx
	movl	%esi, %eax
	sarl	$3, %eax
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.11(%edx), %edx
	testl	%ecx, %ecx
	je	L991
	orb	%dl, _show2dsector(%eax)
L991:
	movl	_sector, %ebx
	leal	(%esi,%esi,4), %edi
	orb	%dl, _gotsector(%eax)
	sall	$3, %edi
	movl	_prsectors(,%esi,4), %eax
	addl	%edi, %ebx
	movzwl	14(%ebx), %edx
	movl	%eax, 24(%esp)
	movl	%ebp, %eax
	testw	$384, %dx
	je	L1038
L992:
	andl	$1, %edx
	je	L993
	cmpb	$0, __ZL8prdidsky
	je	L1039
L994:
	leal	32(%esp), %eax
	addl	_sector, %edi
	movl	%eax, 16(%esp)
	leal	36(%esp), %eax
	movl	%eax, 12(%esp)
	movl	_globalposy, %eax
	movl	%edi, (%esp)
	movl	%eax, 8(%esp)
	movl	_globalposx, %eax
	movl	%eax, 4(%esp)
	call	_getzsofslopeptr
	movl	32(%esp), %eax
	cmpl	%eax, _globalposz
	jle	L1017
L1004:
	movl	$0, 28(%esp)
L1000:
	movzwl	12(%ebx), %edx
	movl	%ebp, %eax
	testw	$384, %dx
	je	L1040
L1005:
	andl	$1, %edx
	movl	36(%esp), %edi
	je	L1006
	cmpb	$0, __ZL8prdidsky
	je	L1007
	cmpl	%edi, _globalposz
	jge	L1008
	.p2align 4
	.p2align 3
L1009:
	cmpl	$3, _pr_verbosity
	jg	L1041
L989:
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
L1006:
	.cfi_restore_state
	cmpl	%edi, _globalposz
	jl	L1009
	movzwl	_searchit, %edx
	testl	%eax, %eax
	je	L1008
	cmpw	$2, %dx
	je	L1011
	movzbl	33(%ebx), %ecx
	movzbl	21(%ebx), %edx
	movl	_globalflags, %eax
	movzbl	32(%ebx), %edi
	testb	%cl, %cl
	cmove	%edx, %ecx
	andl	$4, %eax
	jne	L1023
	testb	$2, _hictinting+1(,%edx,8)
	jne	L1015
	movsbl	20(%ebx), %eax
	jmp	L1015
	.p2align 4,,10
	.p2align 3
L993:
	leal	32(%esp), %edx
	addl	_sector, %edi
	movl	%eax, 28(%esp)
	movl	%edx, 16(%esp)
	leal	36(%esp), %edx
	movl	%edx, 12(%esp)
	movl	_globalposy, %edx
	movl	%edi, (%esp)
	movl	%edx, 8(%esp)
	movl	_globalposx, %edx
	movl	%edx, 4(%esp)
	call	_getzsofslopeptr
	movl	32(%esp), %eax
	cmpl	%eax, _globalposz
	jg	L1004
	movl	28(%esp), %eax
	movzwl	_searchit, %edx
	testl	%eax, %eax
	je	L1017
	cmpw	$2, %dx
	je	L997
	movzbl	33(%ebx), %ecx
	movzbl	29(%ebx), %edx
	movl	_globalflags, %eax
	movzbl	32(%ebx), %edi
	testb	%cl, %cl
	cmove	%edx, %ecx
	andl	$4, %eax
	jne	L1020
	testb	$2, _hictinting+1(,%edx,8)
	jne	L1002
	movsbl	28(%ebx), %eax
	jmp	L1002
	.p2align 4,,10
	.p2align 3
L1008:
	cmpw	$2, _searchit
	je	L1011
	movl	28(%esp), %eax
	orl	%ebp, %eax
	jne	L1009
	movl	_cursectormaskcount, %eax
	testl	%eax, %eax
	je	L1009
	testw	$384, 12(%ebx)
	je	L1009
	movswl	(%eax), %edx
	movl	_cursectormasks, %ecx
	leal	1(%edx), %ebx
	movw	%bx, (%eax)
	movzwl	20(%esp), %eax
	movw	%ax, (%ecx,%edx,2)
	jmp	L1009
	.p2align 4,,10
	.p2align 3
L1017:
	cmpw	$2, _searchit
	je	L997
	testl	%ebp, %ebp
	jne	L1004
	movl	_cursectormaskcount, %eax
	testl	%eax, %eax
	je	L1004
	testw	$384, 14(%ebx)
	je	L1004
	movswl	(%eax), %edx
	movl	_cursectormasks, %edi
	movl	$1, 28(%esp)
	leal	1(%edx), %ecx
	movw	%cx, (%eax)
	movzwl	20(%esp), %eax
	movw	%ax, (%edi,%edx,2)
	jmp	L1000
	.p2align 4,,10
	.p2align 3
L1040:
	movl	%esi, %eax
	call	_yax_getbunch.constprop.1
	movzwl	12(%ebx), %edx
	cwtl
	shrl	$31, %eax
	jmp	L1005
	.p2align 4,,10
	.p2align 3
L1041:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L989
	movl	%esi, 16(%esp)
	movl	$LC65, 12(%esp)
	movl	$3139, 8(%esp)
	movl	$LC4, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
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
L1038:
	.cfi_restore_state
	movl	%esi, %eax
	call	_yax_getbunch.constprop.0
	movzwl	14(%ebx), %edx
	cwtl
	shrl	$31, %eax
	jmp	L992
	.p2align 4,,10
	.p2align 3
L1037:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L990
	movl	%esi, 16(%esp)
	movl	$LC64, 12(%esp)
	movl	$3035, 8(%esp)
	movl	$LC4, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L990
	.p2align 4,,10
	.p2align 3
L1039:
	movsbl	28(%ebx), %ecx
	movzbl	29(%ebx), %edx
	movswl	24(%ebx), %eax
	call	_polymer_getsky
	movb	$1, __ZL8prdidsky
	jmp	L994
	.p2align 4,,10
	.p2align 3
L1007:
	movsbl	20(%ebx), %ecx
	movzbl	21(%ebx), %edx
	movswl	16(%ebx), %eax
	call	_polymer_getsky
	movb	$1, __ZL8prdidsky
	cmpl	%edi, _globalposz
	jge	L1008
	jmp	L1009
	.p2align 4,,10
	.p2align 3
L1023:
	xorl	%eax, %eax
L1015:
	movl	%edi, %edx
	call	_calc_and_apply_fog
	movl	24(%esp), %eax
	addl	$256, %eax
	call	_polymer_drawplane.lto_priv.0
	jmp	L1009
	.p2align 4,,10
	.p2align 3
L1020:
	xorl	%eax, %eax
L1002:
	movl	%edi, %edx
	call	_calc_and_apply_fog
	movl	24(%esp), %eax
	addl	$4, %eax
	call	_polymer_drawplane.lto_priv.0
	jmp	L1004
	.p2align 4,,10
	.p2align 3
L1011:
	movl	24(%esp), %edi
	movzwl	20(%esp), %ecx
	movl	400(%edi), %ebx
	movb	$1, 400(%edi)
	leal	256(%edi), %eax
	movw	%cx, 401(%edi)
	movb	$-1, 403(%edi)
	call	_polymer_drawplane.lto_priv.0
	movl	%ebx, 400(%edi)
	jmp	L1009
	.p2align 4,,10
	.p2align 3
L997:
	movl	24(%esp), %eax
	movzwl	20(%esp), %ecx
	movl	148(%eax), %edi
	movb	$2, 148(%eax)
	addl	$4, %eax
	movw	%cx, 145(%eax)
	movb	$-1, 147(%eax)
	call	_polymer_drawplane.lto_priv.0
	movl	24(%esp), %eax
	movl	%edi, 148(%eax)
	jmp	L1004
	.cfi_endproc
LFE31:
	.section .rdata,"dr"
LC66:
	.ascii "Drawing wall %i\0"
LC67:
	.ascii "Finished drawing wall %i.\0"
	.text
	.p2align 4
	.globl	_polymer_drawwall.lto_priv.0
	.def	_polymer_drawwall.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_drawwall.lto_priv.0:
LFB32:
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
	movswl	%dx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$36, %esp
	.cfi_def_cfa_offset 56
	movw	%dx, 24(%esp)
	cmpl	$2, _pr_verbosity
	jg	L1083
L1043:
	movl	_sector, %ecx
	cwtl
	movl	_wall, %edx
	movl	%esi, %ebp
	leal	(%eax,%eax,4), %eax
	sall	$5, %ebp
	movl	_prwalls(,%esi,4), %ebx
	leal	(%ecx,%eax,8), %eax
	movl	%ebp, 20(%esp)
	addl	%ebp, %edx
	movzwl	12(%eax), %edi
	movw	%di, 28(%esp)
	testb	$1, 14(%eax)
	je	L1044
	movswl	12(%edx), %edi
	testw	%di, %di
	js	L1064
	leal	(%edi,%edi,4), %edi
	leal	(%ecx,%edi,8), %ecx
	movzwl	14(%ecx), %edi
	movl	%edi, %ebp
	andl	$1, %ebp
	movl	%ebp, 32(%esp)
	testb	$1, 28(%esp)
	je	L1082
	movzwl	12(%ecx), %ecx
	andl	$1, %ecx
	movl	%ecx, 28(%esp)
	jmp	L1047
	.p2align 4,,10
	.p2align 3
L1044:
	testb	$1, 28(%esp)
	jne	L1084
L1064:
	movl	$0, 32(%esp)
L1082:
	movl	$0, 28(%esp)
L1047:
	movzbl	33(%eax), %ecx
	testb	%cl, %cl
	jne	L1049
	movzbl	29(%eax), %ecx
L1049:
	movzbl	32(%eax), %edi
	movl	_globalflags, %eax
	andl	$4, %eax
	jne	L1065
	movzbl	21(%edx), %ebp
	testb	$2, _hictinting+1(,%ebp,8)
	je	L1085
L1050:
	movl	%edi, %edx
	call	_calc_and_apply_fog
	movzbl	788(%ebx), %eax
	testb	$1, %al
	je	L1054
	movl	32(%esp), %ecx
	movzwl	_searchit, %edx
	testl	%ecx, %ecx
	jne	L1086
	cmpw	$2, %dx
	je	L1053
	movl	%ebx, %eax
	call	_polymer_drawplane.lto_priv.0
	movzbl	788(%ebx), %eax
L1054:
	testb	$2, %al
	je	L1056
	movl	28(%esp), %edx
	movzwl	_searchit, %eax
	testl	%edx, %edx
	jne	L1087
	cmpw	$2, %ax
	je	L1058
	leal	252(%ebx), %eax
	call	_polymer_drawplane.lto_priv.0
L1056:
	movl	20(%esp), %eax
	addl	_wall, %eax
	testb	$32, 14(%eax)
	je	L1060
	cmpw	$0, 12(%eax)
	js	L1060
	leal	504(%ebx), %eax
	cmpw	$2, _searchit
	je	L1088
	call	_polymer_drawplane.lto_priv.0
	.p2align 4
	.p2align 3
L1060:
	movl	_automapping, %eax
	testl	%eax, %eax
	je	L1062
	movl	24(%esp), %eax
	movl	%esi, %edx
	sarl	$3, %edx
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.11(%eax), %eax
	orb	%al, _show2dwall(%edx)
L1062:
	cmpl	$2, _pr_verbosity
	jg	L1089
L1042:
	addl	$36, %esp
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
L1065:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	L1050
	.p2align 4,,10
	.p2align 3
L1087:
	cmpw	$2, %ax
	jne	L1056
L1058:
	movzwl	24(%esp), %eax
	movl	396(%ebx), %edi
	movb	$0, 396(%ebx)
	movb	$-1, 399(%ebx)
	movw	%ax, 397(%ebx)
	leal	252(%ebx), %eax
	call	_polymer_drawplane.lto_priv.0
	movl	%edi, 396(%ebx)
	jmp	L1056
	.p2align 4,,10
	.p2align 3
L1086:
	cmpw	$2, %dx
	jne	L1054
L1053:
	movzwl	24(%esp), %eax
	movl	144(%ebx), %edi
	movb	$5, 144(%ebx)
	movb	$-1, 147(%ebx)
	movw	%ax, 145(%ebx)
	movl	%ebx, %eax
	call	_polymer_drawplane.lto_priv.0
	movl	%edi, 144(%ebx)
	movzbl	788(%ebx), %eax
	jmp	L1054
	.p2align 4,,10
	.p2align 3
L1085:
	movsbl	20(%edx), %eax
	jmp	L1050
	.p2align 4,,10
	.p2align 3
L1084:
	movswl	12(%edx), %edi
	testw	%di, %di
	js	L1064
	leal	(%edi,%edi,4), %edi
	movl	$0, 32(%esp)
	leal	(%ecx,%edi,8), %ecx
	movzwl	12(%ecx), %ecx
	andl	$1, %ecx
	movl	%ecx, 28(%esp)
	jmp	L1047
	.p2align 4,,10
	.p2align 3
L1089:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L1042
	movl	%esi, 16(%esp)
	movl	$LC67, 12(%esp)
	movl	$3710, 8(%esp)
	movl	$LC4, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	addl	$36, %esp
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
L1083:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$6, %edx
	jle	L1043
	movl	%esi, 16(%esp)
	movl	$LC66, 12(%esp)
	movl	$3648, 8(%esp)
	movl	$LC4, 4(%esp)
	movl	$7, (%esp)
	movl	%eax, 20(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	20(%esp), %eax
	jmp	L1043
	.p2align 4,,10
	.p2align 3
L1088:
	movzwl	24(%esp), %ecx
	movl	648(%ebx), %edi
	movb	$4, 648(%ebx)
	movb	$-1, 651(%ebx)
	movw	%cx, 649(%ebx)
	call	_polymer_drawplane.lto_priv.0
	movl	%edi, 648(%ebx)
	jmp	L1060
	.cfi_endproc
LFE32:
	.p2align 4
	.globl	_polymer_displayrooms.lto_priv.0
	.def	_polymer_displayrooms.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_displayrooms.lto_priv.0:
LFB33:
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
	pushl	%eax
	movl	$197216, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	leal	-196976(%ebp), %esi
	leal	-197040(%ebp), %edi
	movl	(%esp,%eax), %eax
	movl	%esi, _curmodelviewmatrix
	movl	%eax, %ebx
	movl	%esi, 4(%esp)
	movl	$2982, (%esp)
	call	*_glad_glGetFloatv
	subl	$8, %esp
	movl	%edi, 4(%esp)
	movl	$2983, (%esp)
	call	*_glad_glGetFloatv
	leal	-196704(%ebp), %ecx
	movl	%edi, %edx
	movl	%esi, %eax
	subl	$8, %esp
	call	_polymer_extractfrustum.lto_priv.0
	movswl	_numwalls, %eax
	movl	$0, 4(%esp)
	movl	$__ZL7queryid, (%esp)
	sall	$2, %eax
	movl	%eax, 8(%esp)
	call	_memset
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL12drawingstate.lto_priv.0, (%esp)
	call	_memset
	movw	%bx, __ZL11sectorqueue.lto_priv.0
	movswl	%bx, %edx
	movl	%ebx, %eax
	movswl	_numsectors, %ebx
	sarl	$3, %edx
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.11(%eax), %eax
	orb	%al, __ZL12drawingstate.lto_priv.0(%edx)
	addl	%ebx, %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -197204(%ebp)
	testl	%eax, %eax
	je	L1091
	movl	$2, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -197208(%ebp)
	testl	%eax, %eax
	je	L1409
	movl	-197208(%ebp), %eax
	xorl	%edx, %edx
	movl	-197204(%ebp), %esi
	movw	%dx, (%eax)
	movl	$2929, %edx
	movl	%eax, _cursectormaskcount
	movl	$_gl+88, %eax
	movl	%esi, _cursectormasks
	call	_inthash_find
	testl	%eax, %eax
	je	L1094
	movl	$2929, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$2929, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1094:
	movl	$0x3f800000, 12(%esp)
	movl	$0x3f800000, 8(%esp)
	movl	$0x3f800000, 4(%esp)
	movl	$0x3f800000, (%esp)
	call	*_glad_glColor4f
	movzbl	__ZL9curskypal, %eax
	movss	LC59, %xmm2
	mulss	_fglobalposz, %xmm2
	subl	$16, %esp
	movss	_fglobalposy, %xmm1
	movswl	__ZL6cursky.lto_priv.0, %ebx
	movb	%al, -197160(%ebp)
	movss	%xmm1, -197152(%ebp)
	movzbl	__ZL11curskyshade, %esi
	movss	_fglobalposx, %xmm0
	xorps	LC46, %xmm0
	movw	%bx, -197144(%ebp)
	movss	%xmm2, -197140(%ebp)
	movss	%xmm0, -197136(%ebp)
	call	*_glad_glPushMatrix
	call	*_glad_glLoadIdentity
	movl	_curskymodelviewmatrix, %eax
	movl	%eax, (%esp)
	call	*_glad_glLoadMatrixf
	movss	-197136(%ebp), %xmm0
	subl	$4, %esp
	movss	%xmm0, 8(%esp)
	movss	-197140(%ebp), %xmm2
	movss	%xmm2, 4(%esp)
	movss	-197152(%ebp), %xmm1
	movss	%xmm1, (%esp)
	call	*_glad_glTranslatef
	movss	LC68, %xmm0
	subl	$12, %esp
	movss	%xmm0, 8(%esp)
	movss	%xmm0, 4(%esp)
	movss	%xmm0, (%esp)
	call	*_glad_glScalef
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%ebx, %eax
	subl	$12, %esp
	movl	$1, _drawingskybox
	movl	$0, (%esp)
	call	_texcache_fetch
	movl	$0, _drawingskybox
	testl	%eax, %eax
	je	L1095
	testb	$4, 34(%eax)
	jne	L1410
L1095:
	movl	_pskynummultis, %eax
	movl	_multipsky, %ecx
	movl	_multipskytile, %edx
	subl	$1, %eax
	testl	%eax, %eax
	jg	L1126
	jmp	L1125
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1412:
	subl	$1, %eax
	je	L1411
L1126:
	cmpl	(%edx,%eax,4), %ebx
	jne	L1412
L1125:
	movswl	_pskybits_override, %edi
	sall	$5, %eax
	addl	%eax, %ecx
	cmpw	$-1, %di
	je	L1413
L1128:
	leal	9(%ecx), %eax
	movl	%edi, %ecx
	movl	%eax, -197156(%ebp)
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -197168(%ebp)
	testl	%eax, %eax
	movzbl	-197160(%ebp), %eax
	movl	%eax, -197136(%ebp)
	jle	L1414
	movl	%esi, %eax
	movl	-197156(%ebp), %ecx
	movl	%edi, -197172(%ebp)
	movsbl	%al, %eax
	movl	%eax, -197140(%ebp)
	leal	-180240(%ebp), %eax
	movl	%ecx, %esi
	movl	%eax, -197196(%ebp)
	movl	%eax, %ebx
	movl	-197168(%ebp), %eax
	addl	%ecx, %eax
	movl	%eax, -197152(%ebp)
	.p2align 4
	.p2align 3
L1151:
	movl	$30719, %eax
	movsbw	(%esi), %di
	addw	-197144(%ebp), %di
	cmpw	%ax, %di
	cmovg	%eax, %edi
	movswl	%di, %eax
	cmpb	$63, _picanm+3(%eax,%eax,4)
	ja	L1415
L1130:
	movl	_waloff(,%eax,4), %edx
	testl	%edx, %edx
	je	L1416
L1131:
	movl	$0, (%esp)
	movl	-197136(%ebp), %edx
	xorl	%ecx, %ecx
	call	_texcache_fetch
	movl	%eax, %edi
	cmpl	$3, _rendmode
	je	L1417
L1132:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-197140(%ebp), %xmm0
	mulss	_shadescale, %xmm0
	cmpl	$4, _r_usenewshading
	je	L1418
	movswl	_numshades, %eax
	movl	_shadescale_unbounded, %edx
	xorps	%xmm4, %xmm4
	cvtsi2ssl	%eax, %xmm4
	testl	%edx, %edx
	jne	L1142
	cmpl	-197140(%ebp), %eax
	jle	L1142
	subl	$1, %eax
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
L1141:
	movaps	%xmm0, %xmm1
	xorps	%xmm3, %xmm3
	cmpnltss	%xmm3, %xmm1
	andps	%xmm0, %xmm1
	minss	%xmm1, %xmm2
	movaps	%xmm4, %xmm1
	subss	%xmm2, %xmm1
	divss	%xmm4, %xmm1
	movaps	%xmm1, %xmm0
L1136:
	movss	%xmm0, 8(%ebx)
	movss	%xmm0, 4(%ebx)
	movss	%xmm0, (%ebx)
	testl	%edi, %edi
	je	L1145
	movl	-197136(%ebp), %eax
	movzwl	34(%edi), %edx
	movzwl	_hictinting(,%eax,8), %eax
	testb	$-60, %al
	jne	L1146
	andl	$2, %edx
	je	L1147
	movzbl	-197160(%ebp), %ecx
	cmpb	38(%edi), %cl
	jne	L1148
	movzwl	36(%edi), %edx
	andl	$32, %eax
	andw	$199, %dx
	orw	%ax, %dx
	je	L1149
L1148:
	movl	-197136(%ebp), %edi
	xorps	%xmm1, %xmm1
	movzbl	_hictinting+2(,%edi,8), %eax
	cvtsi2ssl	%eax, %xmm1
	movzbl	_hictinting+3(,%edi,8), %eax
	mulss	LC51, %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, (%ebx)
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	movzbl	_hictinting+4(,%edi,8), %eax
	mulss	LC51, %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, 4(%ebx)
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	mulss	LC51, %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, 8(%ebx)
L1149:
	movzbl	_hictinting+2044, %eax
	cmpw	$-1, _hictinting+2042
	je	L1419
L1150:
	movzbl	_hictinting+2042, %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movzbl	_hictinting+2043, %edx
	mulss	LC51, %xmm0
	mulss	(%ebx), %xmm0
	movss	%xmm0, (%ebx)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	mulss	LC51, %xmm0
	mulss	4(%ebx), %xmm0
	movss	%xmm0, 4(%ebx)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	LC51, %xmm0
	mulss	8(%ebx), %xmm0
	movss	%xmm0, 8(%ebx)
L1145:
	addl	$1, %esi
	addl	$12, %ebx
	cmpl	%esi, -197152(%ebp)
	jne	L1151
	movl	-197172(%ebp), %edi
L1129:
	movl	$3553, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1152
	movl	$3553, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3553, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1152:
	movl	$0, -197152(%ebp)
	movl	$3, %eax
	cmpl	%eax, %edi
	cmovge	%edi, %eax
	xorl	%ebx, %ebx
	movl	%eax, %ecx
	movl	$16, %eax
	sarl	%cl, %eax
	movl	%eax, -197160(%ebp)
	movzbl	-197168(%ebp), %eax
	subl	$1, %eax
	movb	%al, -197164(%ebp)
	.p2align 4
	.p2align 3
L1153:
	movl	-197156(%ebp), %edi
	movzbl	-197164(%ebp), %eax
	andb	-197152(%ebp), %al
	movsbl	%al, %esi
	movsbw	(%edi,%esi), %ax
	addw	-197144(%ebp), %ax
	movl	$4, (%esp)
	movl	-197140(%ebp), %ecx
	movl	-197136(%ebp), %edx
	cwtl
	call	_polymer_inb4rotatesprite
	leal	(%esi,%esi,2), %eax
	movl	$0x3f800000, 12(%esp)
	movl	%ebx, %esi
	movss	-180232(%ebp,%eax,4), %xmm0
	movss	%xmm0, 8(%esp)
	movss	-180236(%ebp,%eax,4), %xmm0
	movss	%xmm0, 4(%esp)
	movss	-180240(%ebp,%eax,4), %xmm0
	movss	%xmm0, (%esp)
	call	*_glad_glColor4f
	movl	$4, %eax
	addl	-197160(%ebp), %ebx
	subl	$16, %esp
	call	__Z29polymost_startBufferedDrawingi
	movl	$1067240653, %edx
	movss	_artskydata+4(,%esi,8), %xmm0
	movl	$0x3f9ccccd, -197116(%ebp)
	movss	%xmm0, -197120(%ebp)
	movss	_artskydata(,%esi,8), %xmm0
	movss	%xmm0, -197112(%ebp)
	movl	$0, (%esp)
	movl	$0, 4(%esp)
	movl	-197120(%ebp), %eax
	movl	-197112(%ebp), %ecx
	call	__Z19polymost_bufferVert4vec3IfE4vec2IfE
	movl	$-1080242995, %edx
	movss	_artskydata+4(,%esi,8), %xmm0
	movl	$0xbf9ccccd, -197104(%ebp)
	movss	%xmm0, -197108(%ebp)
	movss	_artskydata(,%esi,8), %xmm0
	movl	%ebx, %esi
	andl	$15, %esi
	movss	%xmm0, -197100(%ebp)
	leal	1(%esi,%esi), %edi
	movl	$0, (%esp)
	movl	$1065353216, 4(%esp)
	movl	-197108(%ebp), %eax
	movl	-197100(%ebp), %ecx
	call	__Z19polymost_bufferVert4vec3IfE4vec2IfE
	movl	$-1080242995, %edx
	movss	_artskydata(,%edi,4), %xmm0
	movl	$0xbf9ccccd, -197092(%ebp)
	movss	%xmm0, -197096(%ebp)
	movss	_artskydata(,%esi,8), %xmm0
	movss	%xmm0, -197088(%ebp)
	movl	$1065353216, (%esp)
	movl	$1065353216, 4(%esp)
	movl	-197096(%ebp), %eax
	movl	-197088(%ebp), %ecx
	call	__Z19polymost_bufferVert4vec3IfE4vec2IfE
	movl	$1067240653, %edx
	movss	_artskydata(,%edi,4), %xmm0
	movl	$0x3f9ccccd, -197080(%ebp)
	movss	%xmm0, -197084(%ebp)
	movss	_artskydata(,%esi,8), %xmm0
	movss	%xmm0, -197076(%ebp)
	movl	$1065353216, (%esp)
	movl	$0, 4(%esp)
	movl	-197076(%ebp), %ecx
	movl	-197084(%ebp), %eax
	call	__Z19polymost_bufferVert4vec3IfE4vec2IfE
	movl	$7, %eax
	call	__Z30polymost_finishBufferedDrawingi
	movl	_rotatespritematerialbits, %eax
	call	_polymer_unbindmaterial.lto_priv.0
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj.constprop.0
	addl	$1, -197152(%ebp)
	cmpl	$15, %ebx
	jle	L1153
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	__Z25buildgl_bindSamplerObjectii
	movl	$3553, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L1123
	movl	$3553, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3553, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1123:
	call	*_glad_glPopMatrix
	movl	$2929, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1155
	movl	$2929, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$2929, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1155:
	xorl	%eax, %eax
	movl	$1, _prcanbucket
	movb	$0, __ZL8prdidsky
	movl	$0, -197168(%ebp)
	movl	$0, -197200(%ebp)
	movw	%ax, -197184(%ebp)
	movl	$1, -197144(%ebp)
	movl	$0, -197152(%ebp)
	.p2align 4
	.p2align 3
L1156:
	movl	-197152(%ebp), %eax
	movl	_sector, %edx
	movl	%eax, -197192(%ebp)
	movswl	__ZL11sectorqueue.lto_priv.0(%eax,%eax), %eax
	leal	(%eax,%eax,4), %ecx
	leal	(%edx,%ecx,8), %edi
	movl	_prsectors(,%eax,4), %edx
	movswl	(%edi), %esi
	sall	$5, %esi
	addl	_wall, %esi
	testb	$2, 560(%edx)
	je	L1420
L1157:
	xorl	%ebx, %ebx
	jmp	L1160
	.p2align 4,,10
	.p2align 3
L1159:
	movswl	2(%edi), %eax
	addl	$1, %ebx
	addl	$32, %esi
	cmpl	%eax, %ebx
	jge	L1421
L1160:
	movswl	12(%esi), %eax
	testw	%ax, %ax
	js	L1158
	movl	_prsectors(,%eax,4), %edx
	testb	$2, 560(%edx)
	je	L1422
L1158:
	movswl	(%edi), %eax
	movl	%eax, %edx
	addl	%ebx, %eax
	movl	_prwalls(,%eax,4), %eax
	testb	$2, 796(%eax)
	jne	L1159
	leal	(%edx,%ebx), %eax
	addl	$1, %ebx
	addl	$32, %esi
	cwtl
	call	_polymer_updatewall.lto_priv.0
	movswl	2(%edi), %eax
	cmpl	%eax, %ebx
	jl	L1160
L1421:
	movl	-197152(%ebp), %esi
	xorl	%edx, %edx
	movswl	__ZL11sectorqueue.lto_priv.0(%esi,%esi), %eax
	call	_polymer_drawsector.lto_priv.0
	movswl	__ZL11sectorqueue.lto_priv.0(%esi,%esi), %eax
	movswl	_headspritesect(%eax,%eax), %eax
	testl	%eax, %eax
	js	L1161
	movl	_sprite, %esi
	cmpb	$0, _showinvisibility
	jne	L1400
	movl	%edi, -197156(%ebp)
	movl	%esi, %edi
	.p2align 4
	.p2align 3
L1166:
	imull	$44, %eax, %edx
	addl	%edi, %edx
	movzwl	12(%edx), %ecx
	testw	%cx, %cx
	js	L1165
	movzbl	20(%edx), %ebx
	movb	%bl, -197136(%ebp)
	testb	%bl, %bl
	je	L1165
	movzbl	21(%edx), %ebx
	movb	%bl, -197140(%ebp)
	testb	%bl, %bl
	je	L1165
	cmpl	$4095, -197168(%ebp)
	jle	L1423
	.p2align 4
	.p2align 3
L1165:
	movswl	_nextspritesect(%eax,%eax), %eax
	testl	%eax, %eax
	jns	L1166
	movl	-197156(%ebp), %edi
L1161:
	movzwl	(%edi), %edx
	xorl	%eax, %eax
	movswl	2(%edi), %ecx
	movl	%edi, -197160(%ebp)
	cmpl	$0, _pr_buckets
	movl	_wall, %esi
	sete	%al
	leal	-1(%ecx), %ebx
	movw	%dx, -197164(%ebp)
	movw	%ax, -197136(%ebp)
	movswl	%dx, %eax
	movw	%dx, -197172(%ebp)
	movl	%eax, %edx
	sall	$5, %edx
	movl	%ebx, -197156(%ebp)
	addl	%esi, %edx
	movl	%edx, -197140(%ebp)
	movl	%ebx, %edx
	movl	-197140(%ebp), %edi
	movl	%eax, -197140(%ebp)
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1172:
	movl	%edx, %ebx
	sall	$5, %ebx
	cmpw	$0, 12(%edi,%ebx)
	jns	L1171
	orw	-197136(%ebp), %ax
L1171:
	subl	$1, %edx
	jns	L1172
	movl	-197156(%ebp), %ebx
	movw	%ax, -197182(%ebp)
	movl	-197160(%ebp), %edi
	movl	-197140(%ebp), %eax
	testl	%ebx, %ebx
	js	L1401
	movl	%edi, -197156(%ebp)
	leal	-1(%ecx), %edi
	movzwl	-197164(%ebp), %ecx
	jmp	L1196
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1175:
	leal	-1(%edi), %eax
	movl	%ecx, %edx
L1183:
	cmpl	$-1, %eax
	je	L1424
	movl	_wall, %esi
	movl	%eax, %edi
	movswl	%cx, %eax
L1196:
	addl	%edi, %eax
	sall	$5, %eax
	cmpw	$0, 12(%esi,%eax)
	js	L1175
	addl	%edi, %ecx
	movl	_globalposy, %edx
	movl	_globalposx, %eax
	movw	%di, -197160(%ebp)
	movswl	%cx, %ecx
	call	_wallvisible
	xorps	%xmm5, %xmm5
	testl	%eax, %eax
	movl	-197156(%ebp), %eax
	je	L1408
	movswl	(%eax), %eax
	movl	%edi, -197164(%ebp)
	leal	-196704(%ebp), %esi
	movl	%eax, %ecx
	addl	%edi, %eax
	movl	%eax, -197180(%ebp)
	movl	_prwalls(,%eax,4), %eax
	movw	%cx, -197176(%ebp)
	movl	504(%eax), %ebx
	movl	%eax, -197172(%ebp)
	movl	508(%eax), %eax
	movl	%ebx, -197188(%ebp)
	leal	-24(%ebx), %edi
	movl	%eax, -197136(%ebp)
	leal	(%eax,%eax,2), %eax
	leal	-24(%ebx,%eax,8), %eax
	movl	%eax, -197140(%ebp)
L1178:
	movl	-197136(%ebp), %ebx
	movss	64(%esi), %xmm4
	movss	68(%esi), %xmm3
	movss	72(%esi), %xmm2
	movss	76(%esi), %xmm1
	movl	-197140(%ebp), %eax
	leal	-1(%ebx), %edx
	.p2align 6
	.p2align 4
	.p2align 3
L1177:
	movss	(%eax), %xmm0
	movss	4(%eax), %xmm6
	xorl	%ebx, %ebx
	mulss	%xmm3, %xmm6
	mulss	%xmm4, %xmm0
	addss	%xmm6, %xmm0
	movss	8(%eax), %xmm6
	mulss	%xmm2, %xmm6
	addss	%xmm6, %xmm0
	addss	%xmm1, %xmm0
	comiss	%xmm0, %xmm5
	seta	%bl
	subl	$24, %eax
	subl	%ebx, %edx
	cmpl	%eax, %edi
	jne	L1177
	cmpl	$-1, %edx
	je	L1402
	subl	$16, %esi
	leal	-196784(%ebp), %eax
	cmpl	%esi, %eax
	jne	L1178
	movl	-197164(%ebp), %edi
	movzwl	-197176(%ebp), %edx
	cmpl	$4, -197136(%ebp)
	je	L1425
L1180:
	movl	-197172(%ebp), %eax
	leal	504(%eax), %esi
	movl	-197180(%ebp), %eax
	sall	$5, %eax
	addl	_wall, %eax
	movzwl	14(%eax), %edx
	movl	%edx, %ebx
	andl	$48, %ebx
	cmpw	$16, %bx
	je	L1426
	movl	_depth, %ebx
	testl	%ebx, %ebx
	jne	L1187
	testb	$16, _overridematerial+1
	je	L1187
	cmpw	$560, 18(%eax)
	je	L1427
L1187:
	andl	$32, %edx
	jne	L1175
L1186:
	cmpw	$0, -197182(%ebp)
	je	L1189
	movswl	12(%eax), %eax
	movl	%eax, %edx
	sarl	$3, %eax
	andl	$7, %edx
	movzbl	__ZL12drawingstate.lto_priv.0(%eax), %ecx
	movzbl	__ZL8pow2char.lto_priv.11(%edx), %edx
	andl	%edx, %ecx
	cmpb	%cl, %dl
	je	L1189
	movss	LC59, %xmm0
	movl	-197172(%ebp), %eax
	mulss	_fglobalposz, %xmm0
	movss	_fglobalposy, %xmm1
	mulss	564(%eax), %xmm0
	mulss	560(%eax), %xmm1
	addss	%xmm1, %xmm0
	movss	_fglobalposx, %xmm1
	mulss	568(%eax), %xmm1
	subss	%xmm1, %xmm0
	addss	572(%eax), %xmm0
	movss	LC71, %xmm1
	comiss	%xmm0, %xmm1
	ja	L1189
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	*_glad_glColorMask
	subl	$16, %esp
	movl	$0, (%esp)
	call	*_glad_glDepthMask
	movl	-197156(%ebp), %ebx
	subl	$4, %esp
	movswl	(%ebx), %eax
	movl	$1, (%esp)
	addl	%edi, %eax
	leal	__ZL7queryid(,%eax,4), %eax
	movl	%eax, 4(%esp)
	call	*_glad_glGenQueries
	movswl	(%ebx), %eax
	subl	$8, %esp
	addl	%edi, %eax
	movl	__ZL7queryid(,%eax,4), %eax
	movl	$35092, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glBeginQuery
	movl	-197172(%ebp), %eax
	movl	_overridematerial, %ebx
	subl	$8, %esp
	movl	$0, _overridematerial
	movzbl	788(%eax), %eax
	movb	%al, -197136(%ebp)
	notl	%eax
	testb	$5, %al
	je	L1428
L1193:
	movl	%esi, %eax
	call	_polymer_drawplane.lto_priv.0
	movl	-197172(%ebp), %eax
	movzbl	788(%eax), %eax
	movb	%al, -197136(%ebp)
	notl	%eax
	testb	$10, %al
	je	L1429
L1194:
	movl	%ebx, _overridematerial
	movl	$35092, (%esp)
	call	*_glad_glEndQuery
	subl	$4, %esp
	movl	$1, (%esp)
	call	*_glad_glDepthMask
	subl	$4, %esp
	movl	$1, 12(%esp)
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glColorMask
	movl	-197156(%ebp), %eax
	subl	$16, %esp
	movzwl	(%eax), %ecx
	jmp	L1175
L1420:
	cmpl	$2, _pr_nullrender
	jg	L1157
	call	_polymer_updatesector.part.0.isra.0
	jmp	L1157
	.p2align 4,,10
	.p2align 3
L1422:
	cmpl	$2, _pr_nullrender
	jg	L1158
	call	_polymer_updatesector.part.0.isra.0
	jmp	L1158
L1189:
	movl	-197180(%ebp), %eax
	movl	$-1, __ZL7queryid(,%eax,4)
	movl	-197156(%ebp), %eax
	.p2align 4
	.p2align 3
L1408:
	movzwl	(%eax), %ecx
	jmp	L1175
	.p2align 4,,10
	.p2align 3
L1424:
	movl	-197156(%ebp), %edi
	movl	-197152(%ebp), %esi
	movl	%edx, %ecx
	movswl	2(%edi), %ebx
	subl	$1, %ebx
	jmp	L1199
	.p2align 4,,10
	.p2align 3
L1197:
	subl	$1, %ebx
	js	L1198
L1430:
	movzwl	(%edi), %ecx
L1199:
	addl	%ebx, %ecx
	movl	_globalposy, %edx
	movl	_globalposx, %eax
	movswl	%cx, %ecx
	call	_wallvisible
	testl	%eax, %eax
	je	L1197
	movzwl	(%edi), %edx
	movswl	__ZL11sectorqueue.lto_priv.0(%esi,%esi), %eax
	addl	%ebx, %edx
	movswl	%dx, %edx
	call	_polymer_drawwall.lto_priv.0
	subl	$1, %ebx
	jns	L1430
L1198:
	movl	-197152(%ebp), %eax
	movswl	__ZL11sectorqueue.lto_priv.0(%eax,%eax), %ebx
	movl	%ebx, %eax
	call	_yax_getbunch.constprop.0
	testw	%ax, %ax
	jns	L1431
L1201:
	movl	%ebx, %eax
	call	_yax_getbunch.constprop.1
	testw	%ax, %ax
	jns	L1432
L1209:
	movswl	2(%edi), %ebx
	movl	%edi, %esi
	subl	$1, %ebx
	cmpw	$0, -197182(%ebp)
	jne	L1216
	jmp	L1223
	.p2align 4,,10
	.p2align 3
L1434:
	movl	$0, -197124(%ebp)
	movswl	(%esi), %eax
	addl	%ebx, %eax
	cmpl	$-1, __ZL7queryid(,%eax,4)
	je	L1433
	movl	$0, __ZL7queryid(,%eax,4)
L1221:
	movswl	(%esi), %eax
	movl	-197140(%ebp), %edi
	movl	-197144(%ebp), %ecx
	addl	%ebx, %eax
	sall	$5, %eax
	movzwl	12(%edi,%eax), %eax
	movw	%ax, __ZL11sectorqueue.lto_priv.0(%ecx,%ecx)
	movswl	(%esi), %eax
	addl	%ebx, %eax
	sall	$5, %eax
	movswl	12(%edi,%eax), %eax
	movl	%eax, %edx
	sarl	$3, %eax
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.11(%edx), %edx
	orb	%dl, __ZL12drawingstate.lto_priv.0(%eax)
	leal	1(%ecx), %eax
	movl	%eax, -197144(%ebp)
L1218:
	subl	$1, %ebx
	js	L1224
L1223:
	movswl	(%esi), %eax
	addl	%ebx, %eax
	movl	__ZL7queryid(,%eax,4), %edi
	movl	%edi, -197136(%ebp)
	testl	%edi, %edi
	je	L1218
	movl	_wall, %edi
	movl	%eax, %edx
	sall	$5, %edx
	movswl	12(%edi,%edx), %edx
	movl	%edi, -197140(%ebp)
	movl	%edx, %edi
	sarl	$3, %edx
	andl	$7, %edi
	movzbl	__ZL8pow2char.lto_priv.11(%edi), %edi
	movl	%edi, %ecx
	andb	__ZL12drawingstate.lto_priv.0(%edx), %cl
	movl	%ecx, %edx
	movl	%edi, %ecx
	cmpb	%cl, %dl
	jne	L1434
	cmpl	$-1, -197136(%ebp)
	je	L1218
	leal	__ZL7queryid(,%eax,4), %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteQueries
	movswl	(%esi), %eax
	subl	$8, %esp
	addl	%ebx, %eax
	movl	$0, __ZL7queryid(,%eax,4)
	subl	$1, %ebx
	jns	L1223
	.p2align 4
	.p2align 3
L1224:
	addl	$1, -197152(%ebp)
	movl	-197144(%ebp), %esi
	cmpl	%esi, -197152(%ebp)
	jne	L1156
	call	_polymer_emptybuckets.lto_priv.0
	movl	_pr_buckets, %edx
	testl	%edx, %edx
	jne	L1435
L1232:
	movl	-197200(%ebp), %eax
	leal	-1(%eax), %esi
	testl	%eax, %eax
	je	L1236
	leal	-196912(%ebp), %edi
L1241:
	movl	_prrts, %eax
	movl	12(%eax), %eax
	movl	$36160, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glBindFramebufferEXT
	subl	$8, %esp
	movl	$2048, (%esp)
	call	*_glad_glPushAttrib
	movl	_windowxy2+4, %eax
	movl	_windowxy1, %edx
	subl	$4, %esp
	movl	%eax, %ecx
	subl	_windowxy1+4, %ecx
	notl	%eax
	addl	$1, %ecx
	movl	%ecx, 12(%esp)
	movl	_windowxy2, %ecx
	subl	%edx, %ecx
	addl	$1, %ecx
	movl	%ecx, 8(%esp)
	addl	_ydim, %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*_glad_glViewport
	subl	$16, %esp
	movl	$16640, (%esp)
	call	*_glad_glClear
	movl	_curskymodelviewmatrix, %eax
	subl	$4, %esp
	movl	(%eax), %edx
	movl	%edx, (%edi)
	movl	4(%eax), %edx
	movl	%edx, 4(%edi)
	movl	8(%eax), %edx
	movl	%edx, 8(%edi)
	movl	12(%eax), %edx
	movl	%edx, 12(%edi)
	movl	16(%eax), %edx
	movl	%edx, 16(%edi)
	movl	20(%eax), %edx
	movl	%edx, 20(%edi)
	movl	24(%eax), %edx
	movl	%edx, 24(%edi)
	movl	28(%eax), %edx
	movl	%edx, 28(%edi)
	movl	32(%eax), %edx
	movl	%edx, 32(%edi)
	movl	36(%eax), %edx
	movl	%edx, 36(%edi)
	movl	40(%eax), %edx
	movl	%edx, 40(%edi)
	movl	44(%eax), %edx
	movl	%edx, 44(%edi)
	movl	48(%eax), %edx
	movl	%edx, 48(%edi)
	movl	52(%eax), %edx
	movl	%edx, 52(%edi)
	movl	56(%eax), %edx
	movl	%edx, 56(%edi)
	movl	60(%eax), %eax
	movl	%edi, _curskymodelviewmatrix
	movl	%eax, 60(%edi)
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glPushMatrix
	movl	-196784(%ebp,%esi,8), %ebx
	leal	-197072(%ebp), %eax
	flds	56(%ebx)
	fstpl	-197072(%ebp)
	flds	60(%ebx)
	fstpl	-197064(%ebp)
	flds	64(%ebx)
	fstpl	-197056(%ebp)
	flds	68(%ebx)
	fstpl	-197048(%ebp)
	movl	%eax, 4(%esp)
	movl	$12288, (%esp)
	call	*_glad_glClipPlane
	movl	(%ebx), %eax
	movss	56(%ebx), %xmm4
	movss	60(%ebx), %xmm1
	movss	64(%ebx), %xmm0
	subl	$8, %esp
	movss	(%eax), %xmm3
	movss	4(%eax), %xmm2
	movaps	%xmm4, %xmm6
	movaps	%xmm1, %xmm7
	mulss	%xmm1, %xmm2
	mulss	%xmm4, %xmm3
	addss	%xmm2, %xmm3
	movss	8(%eax), %xmm2
	leal	-196848(%ebp), %eax
	movl	$0x00000000, -196836(%ebp)
	movl	$0x00000000, -196820(%ebp)
	movl	$0x00000000, -196804(%ebp)
	mulss	%xmm0, %xmm2
	movl	$0x3f800000, -196788(%ebp)
	movaps	%xmm3, %xmm5
	movss	LC1, %xmm3
	addss	%xmm2, %xmm5
	movaps	%xmm4, %xmm2
	addss	%xmm4, %xmm2
	addss	%xmm5, %xmm5
	mulss	%xmm2, %xmm6
	xorps	LC46, %xmm2
	mulss	%xmm5, %xmm4
	subss	%xmm6, %xmm3
	movss	LC1, %xmm6
	movss	%xmm4, -196800(%ebp)
	movss	%xmm3, -196848(%ebp)
	movaps	%xmm1, %xmm3
	mulss	%xmm2, %xmm3
	mulss	%xmm0, %xmm2
	movss	%xmm3, -196844(%ebp)
	movss	%xmm3, -196832(%ebp)
	movaps	%xmm1, %xmm3
	addss	%xmm1, %xmm3
	movss	%xmm2, -196840(%ebp)
	mulss	%xmm5, %xmm1
	movss	%xmm2, -196816(%ebp)
	movaps	%xmm0, %xmm2
	addss	%xmm0, %xmm2
	mulss	%xmm3, %xmm7
	xorps	LC46, %xmm3
	mulss	%xmm0, %xmm3
	movss	%xmm1, -196796(%ebp)
	mulss	%xmm0, %xmm2
	mulss	%xmm5, %xmm0
	subss	%xmm7, %xmm6
	movss	%xmm3, -196824(%ebp)
	movss	%xmm3, -196812(%ebp)
	movss	LC1, %xmm3
	movss	%xmm6, -196828(%ebp)
	subss	%xmm2, %xmm3
	movss	%xmm0, -196792(%ebp)
	movss	%xmm3, -196808(%ebp)
	movl	%eax, (%esp)
	call	*_glad_glMultMatrixf
	subl	$4, %esp
	call	*_glad_glPushMatrix
	movl	_curskymodelviewmatrix, %eax
	movl	%eax, (%esp)
	call	*_glad_glLoadMatrixf
	leal	-196848(%ebp), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	call	*_glad_glMultMatrixf
	movl	_curskymodelviewmatrix, %eax
	subl	$4, %esp
	movl	%eax, 4(%esp)
	movl	$2982, (%esp)
	call	*_glad_glGetFloatv
	subl	$8, %esp
	call	*_glad_glPopMatrix
	movl	$1029, %ecx
	movl	$1028, %eax
	cmpl	$1028, _culledface
	cmove	%ecx, %eax
	movl	%eax, _culledface
	movl	%eax, (%esp)
	call	*_glad_glCullFace
	movswl	-196778(%ebp,%esi,8), %eax
	subl	$4, %esp
	testw	%ax, %ax
	js	L1238
	leal	-197132(%ebp), %ecx
	leal	-197128(%ebp), %edx
	movl	$_viewangle, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	_qglobalhoriz, %eax
	movl	%eax, 4(%esp)
	movl	_qglobalang, %eax
	movl	%eax, (%esp)
	movl	_globalposz, %ecx
	movl	_globalposy, %edx
	movl	_globalposx, %eax
	call	_renderPrepareMirror
L1238:
	movl	_globalposz, %ecx
	xorps	%xmm5, %xmm5
	xorps	%xmm7, %xmm7
	xorps	%xmm6, %xmm6
	movl	_globalposy, %eax
	movss	60(%ebx), %xmm2
	testl	%ecx, %ecx
	movss	56(%ebx), %xmm3
	movss	64(%ebx), %xmm1
	movl	%ecx, -197156(%ebp)
	cvtsi2ssl	%eax, %xmm5
	movl	%eax, -197144(%ebp)
	leal	15(%ecx), %eax
	movl	_globalposx, %edx
	cmovns	%ecx, %eax
	movaps	%xmm2, %xmm4
	movl	%edx, -197136(%ebp)
	sarl	$4, %eax
	negl	%eax
	movaps	%xmm5, %xmm0
	movss	%xmm5, -197140(%ebp)
	movaps	%xmm2, %xmm5
	cvtsi2ssl	%eax, %xmm7
	mulss	%xmm3, %xmm0
	movl	%edx, %eax
	mulss	%xmm2, %xmm5
	negl	%eax
	cvtsi2ssl	%eax, %xmm6
	mulss	%xmm7, %xmm4
	addss	%xmm4, %xmm0
	movaps	%xmm1, %xmm4
	mulss	%xmm6, %xmm4
	addss	%xmm4, %xmm0
	movaps	%xmm3, %xmm4
	addss	68(%ebx), %xmm0
	mulss	%xmm3, %xmm4
	addss	%xmm4, %xmm5
	movaps	%xmm1, %xmm4
	mulss	%xmm1, %xmm4
	addss	%xmm5, %xmm4
	divss	%xmm4, %xmm0
	xorps	LC46, %xmm0
	mulss	%xmm0, %xmm1
	mulss	%xmm0, %xmm3
	mulss	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addss	%xmm1, %xmm1
	addss	%xmm3, %xmm3
	addss	-197140(%ebp), %xmm3
	addss	%xmm2, %xmm2
	addss	%xmm6, %xmm1
	cvttss2sil	%xmm3, %ecx
	addss	%xmm7, %xmm2
	cvttss2sil	%xmm1, %edx
	cvttss2sil	%xmm2, %eax
	movl	%ecx, _globalposy
	negl	%edx
	cvtsi2ssl	%edx, %xmm0
	movl	%edx, _globalposx
	negl	%eax
	sall	$4, %eax
	movl	%eax, _globalposz
	movss	%xmm0, _fglobalposx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	movl	-196780(%ebp,%esi,8), %ecx
	movl	%ecx, -197148(%ebp)
	movss	%xmm0, _fglobalposy
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movl	_depth, %eax
	leal	1(%eax), %edx
	movl	%ecx, _mirrors+4(,%eax,8)
	movl	%edx, _depth
	movl	-196784(%ebp,%esi,8), %edx
	movss	%xmm0, _fglobalposz
	movl	%edx, _mirrors(,%eax,8)
	movswl	-196780(%ebp,%esi,8), %eax
	movl	%edx, -197152(%ebp)
	call	_polymer_displayrooms.lto_priv.0
	movl	-197136(%ebp), %eax
	xorps	%xmm0, %xmm0
	movl	-197204(%ebp), %ecx
	movss	-197140(%ebp), %xmm5
	movl	$12288, %edx
	subl	$1, _depth
	cvtsi2ssl	%eax, %xmm0
	movl	%ecx, _cursectormasks
	movl	-197208(%ebp), %ecx
	movl	%eax, _globalposx
	movl	-197144(%ebp), %eax
	movl	%ecx, _cursectormaskcount
	movl	-197156(%ebp), %ecx
	movl	%eax, _globalposy
	movl	$_gl+88, %eax
	movss	%xmm0, _fglobalposx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	movl	%ecx, _globalposz
	movss	%xmm5, _fglobalposy
	movss	%xmm0, _fglobalposz
	call	_inthash_find
	testl	%eax, %eax
	je	L1239
	movl	$12288, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$12288, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1239:
	cmpl	$1028, _culledface
	movl	$1029, %ecx
	movl	$1028, %eax
	cmove	%ecx, %eax
	movl	%eax, _culledface
	movl	%eax, (%esp)
	call	*_glad_glCullFace
	subl	$4, %esp
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glPopMatrix
	call	*_glad_glPopAttrib
	movl	$0, 4(%esp)
	movl	$36160, (%esp)
	call	*_glad_glBindFramebufferEXT
	movl	_prrts, %eax
	subl	$8, %esp
	movl	4(%eax), %eax
	movl	%eax, 160(%ebx)
	movl	%ebx, %eax
	call	_polymer_drawplane.lto_priv.0
	movl	$0, 160(%ebx)
	subl	$1, %esi
	jnb	L1241
L1236:
	movl	-197168(%ebp), %eax
	movl	%eax, _spritesortcnt
	imull	$44, %eax, %eax
	movl	%eax, 8(%esp)
	movl	-197196(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	_tsprite, %eax
	movl	%eax, (%esp)
	call	_memcpy
	movswl	-197184(%ebp), %eax
	leal	-196624(%ebp), %edx
	movw	%ax, _maskwallcnt
	addl	%eax, %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$_maskwall, (%esp)
	call	_memcpy
	movl	_depth, %eax
	testl	%eax, %eax
	jne	L1436
L1090:
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
L1227:
	.cfi_restore_state
	movl	$0, -197124(%ebp)
	movswl	(%esi), %eax
	addl	%ebx, %eax
	movl	__ZL7queryid(,%eax,4), %eax
	cmpl	$-1, %eax
	je	L1230
	leal	-197124(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	$34918, 4(%esp)
	call	*_glad_glGetQueryObjectiv
	movswl	(%esi), %eax
	subl	$12, %esp
	addl	%ebx, %eax
	movl	$1, (%esp)
	leal	__ZL7queryid(,%eax,4), %eax
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteQueries
	movswl	(%esi), %eax
	movl	-197124(%ebp), %ecx
	subl	$8, %esp
	addl	%ebx, %eax
	movl	$0, __ZL7queryid(,%eax,4)
	testl	%ecx, %ecx
	je	L1226
	movl	_wall, %eax
	movl	%eax, -197140(%ebp)
L1231:
	movswl	(%esi), %eax
	movl	-197140(%ebp), %edi
	movl	-197144(%ebp), %ecx
	addl	%ebx, %eax
	sall	$5, %eax
	movzwl	12(%edi,%eax), %eax
	movw	%ax, __ZL11sectorqueue.lto_priv.0(%ecx,%ecx)
	movswl	(%esi), %eax
	addl	%ebx, %eax
	sall	$5, %eax
	movswl	12(%edi,%eax), %eax
	movl	%eax, %edx
	sarl	$3, %eax
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.11(%edx), %edx
	orb	%dl, __ZL12drawingstate.lto_priv.0(%eax)
	leal	1(%ecx), %eax
	movl	%eax, -197144(%ebp)
L1226:
	subl	$1, %ebx
	js	L1224
L1216:
	movswl	(%esi), %eax
	addl	%ebx, %eax
	movl	__ZL7queryid(,%eax,4), %edi
	movl	%edi, -197136(%ebp)
	testl	%edi, %edi
	je	L1226
	movl	_wall, %edi
	movl	%eax, %edx
	sall	$5, %edx
	movswl	12(%edi,%edx), %edx
	movl	%edi, -197140(%ebp)
	movl	%edx, %edi
	sarl	$3, %edx
	andl	$7, %edi
	movzbl	__ZL8pow2char.lto_priv.11(%edi), %edi
	movl	%edi, %ecx
	andb	__ZL12drawingstate.lto_priv.0(%edx), %cl
	movl	%ecx, %edx
	movl	%edi, %ecx
	cmpb	%dl, %cl
	jne	L1227
	cmpl	$-1, -197136(%ebp)
	je	L1226
	leal	__ZL7queryid(,%eax,4), %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteQueries
	movswl	(%esi), %eax
	subl	$8, %esp
	addl	%ebx, %eax
	movl	$0, __ZL7queryid(,%eax,4)
	jmp	L1226
L1400:
	movl	%edi, -197140(%ebp)
	.p2align 4
	.p2align 3
L1162:
	imull	$44, %eax, %edx
	addl	%esi, %edx
	movzbl	20(%edx), %ecx
	movb	%cl, -197136(%ebp)
	testb	%cl, %cl
	je	L1170
	movzbl	21(%edx), %edi
	movl	%edi, %ebx
	testb	%bl, %bl
	je	L1170
	cmpl	$4095, -197168(%ebp)
	jle	L1437
	.p2align 4
	.p2align 3
L1170:
	movswl	_nextspritesect(%eax,%eax), %eax
	testl	%eax, %eax
	jns	L1162
	movl	-197140(%ebp), %edi
	jmp	L1161
L1402:
	movl	-197164(%ebp), %edi
	jmp	L1175
L1432:
	cwtl
	movzwl	_headsectbunch+512(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L1209
	movl	%edi, -197176(%ebp)
	xorps	%xmm5, %xmm5
	.p2align 4
	.p2align 3
L1215:
	movswl	%ax, %ecx
	testw	%ax, %ax
	js	L1248
	movl	%ecx, %esi
	movl	%eax, %edx
	sarl	$3, %esi
	andl	$7, %edx
	movzbl	__ZL12drawingstate.lto_priv.0(%esi), %ebx
	movzbl	__ZL8pow2char.lto_priv.11(%edx), %edx
	movl	%esi, -197160(%ebp)
	movb	%bl, -197156(%ebp)
	notl	%ebx
	movb	%dl, -197140(%ebp)
	testb	%bl, -197140(%ebp)
	je	L1248
	movl	_prsectors(,%ecx,4), %edx
	movw	%ax, -197172(%ebp)
	leal	-196704(%ebp), %esi
	movl	%ecx, -197164(%ebp)
	movl	4(%edx), %ebx
	movl	8(%edx), %edi
	subl	$24, %ebx
	leal	(%edi,%edi,2), %edx
	leal	(%ebx,%edx,8), %edx
	movl	%edx, -197136(%ebp)
L1213:
	movss	64(%esi), %xmm4
	movss	68(%esi), %xmm3
	leal	-1(%edi), %edx
	movss	72(%esi), %xmm2
	movss	76(%esi), %xmm1
	movl	-197136(%ebp), %eax
	.p2align 6
	.p2align 4
	.p2align 3
L1212:
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
	cmpl	%eax, %ebx
	jne	L1212
	cmpl	$-1, %edx
	je	L1404
	subl	$16, %esi
	leal	-196784(%ebp), %eax
	cmpl	%esi, %eax
	jne	L1213
	movl	-197144(%ebp), %esi
	movzwl	-197172(%ebp), %eax
	movl	-197160(%ebp), %edi
	movl	-197164(%ebp), %ecx
	movw	%ax, __ZL11sectorqueue.lto_priv.0(%esi,%esi)
	movzbl	-197156(%ebp), %eax
	orb	-197140(%ebp), %al
	movb	%al, __ZL12drawingstate.lto_priv.0(%edi)
	leal	1(%esi), %eax
	movl	%eax, -197144(%ebp)
L1248:
	movzwl	_nextsectbunch+8192(%ecx,%ecx), %eax
	cmpw	$-1, %ax
	jne	L1215
	movl	-197176(%ebp), %edi
	jmp	L1209
L1431:
	cwtl
	movzwl	_headsectbunch(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L1201
	movl	%edi, -197176(%ebp)
	xorps	%xmm5, %xmm5
	.p2align 4
	.p2align 3
L1207:
	movswl	%ax, %ecx
	testw	%ax, %ax
	js	L1249
	movl	%ecx, %esi
	movl	%eax, %edx
	sarl	$3, %esi
	andl	$7, %edx
	movzbl	__ZL12drawingstate.lto_priv.0(%esi), %ebx
	movzbl	__ZL8pow2char.lto_priv.11(%edx), %edx
	movl	%esi, -197160(%ebp)
	movb	%bl, -197156(%ebp)
	notl	%ebx
	movb	%dl, -197140(%ebp)
	testb	%bl, -197140(%ebp)
	je	L1249
	movl	_prsectors(,%ecx,4), %edx
	movw	%ax, -197172(%ebp)
	leal	-196704(%ebp), %esi
	movl	%ecx, -197164(%ebp)
	movl	256(%edx), %ebx
	movl	260(%edx), %edi
	subl	$24, %ebx
	leal	(%edi,%edi,2), %edx
	leal	(%ebx,%edx,8), %edx
	movl	%edx, -197136(%ebp)
L1205:
	movss	64(%esi), %xmm4
	movss	68(%esi), %xmm3
	leal	-1(%edi), %edx
	movss	72(%esi), %xmm2
	movss	76(%esi), %xmm1
	movl	-197136(%ebp), %eax
	.p2align 6
	.p2align 4
	.p2align 3
L1204:
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
	cmpl	%eax, %ebx
	jne	L1204
	cmpl	$-1, %edx
	je	L1403
	subl	$16, %esi
	leal	-196784(%ebp), %eax
	cmpl	%esi, %eax
	jne	L1205
	movl	-197144(%ebp), %esi
	movzwl	-197172(%ebp), %eax
	movl	-197160(%ebp), %edi
	movl	-197164(%ebp), %ecx
	movw	%ax, __ZL11sectorqueue.lto_priv.0(%esi,%esi)
	movzbl	-197156(%ebp), %eax
	orb	-197140(%ebp), %al
	movb	%al, __ZL12drawingstate.lto_priv.0(%edi)
	leal	1(%esi), %eax
	movl	%eax, -197144(%ebp)
L1249:
	movzwl	_nextsectbunch(%ecx,%ecx), %eax
	cmpw	$-1, %ax
	jne	L1207
	movl	-197152(%ebp), %eax
	movl	-197176(%ebp), %edi
	movswl	__ZL11sectorqueue.lto_priv.0(%eax,%eax), %ebx
	jmp	L1201
L1230:
	movl	$1, -197124(%ebp)
	movswl	(%esi), %eax
	addl	%ebx, %eax
	movl	$0, __ZL7queryid(,%eax,4)
	jmp	L1231
L1433:
	movl	$1, -197124(%ebp)
	movswl	(%esi), %eax
	addl	%ebx, %eax
	movl	$0, __ZL7queryid(,%eax,4)
	jmp	L1221
L1142:
	movaps	%xmm4, %xmm2
	jmp	L1141
L1425:
	movl	-197172(%ebp), %eax
	testb	$12, 788(%eax)
	jne	L1180
	movl	-197188(%ebp), %esi
	movss	4(%esi), %xmm0
	comiss	76(%esi), %xmm0
	jb	L1180
	movss	28(%esi), %xmm0
	comiss	52(%esi), %xmm0
	leal	-1(%edi), %eax
	jb	L1180
	jmp	L1183
	.p2align 4,,10
	.p2align 3
L1426:
	movswl	18(%eax), %edx
	cmpw	$0, _tilesiz(,%edx,4)
	jle	L1186
	cmpw	$0, _tilesiz+2(,%edx,4)
	jle	L1186
	movswl	-197184(%ebp), %edx
	addw	-197160(%ebp), %cx
	movl	%edx, %ebx
	movw	%cx, -196624(%ebp,%edx,2)
	addl	$1, %ebx
	movw	%bx, -197184(%ebp)
	jmp	L1186
L1423:
	movl	-197168(%ebp), %ebx
	imull	$44, %ebx, %esi
	addl	-197196(%ebp), %esi
	addl	$1, %ebx
	movw	%cx, 12(%esi)
	movl	14(%edx), %ecx
	movl	%ebx, -197168(%ebp)
	movl	(%edx), %ebx
	movl	%ecx, 14(%esi)
	movzbl	19(%edx), %ecx
	movl	%ebx, (%esi)
	movl	4(%edx), %ebx
	movb	%cl, 19(%esi)
	movzbl	-197136(%ebp), %ecx
	movl	%ebx, 4(%esi)
	movl	8(%edx), %ebx
	movb	%cl, 20(%esi)
	movzbl	-197140(%ebp), %ecx
	movl	%ebx, 8(%esi)
	movb	%cl, 21(%esi)
	movl	22(%edx), %ecx
	movb	$0, 18(%esi)
	movl	%ecx, 22(%esi)
	movl	26(%edx), %ecx
	movw	%ax, 30(%esi)
	movl	%ecx, 26(%esi)
	movl	32(%edx), %ecx
	movl	%ecx, 32(%esi)
	movzwl	36(%edx), %ecx
	movw	%cx, 36(%esi)
	movzwl	38(%edx), %ecx
	movl	40(%edx), %edx
	movw	%cx, 38(%esi)
	movl	%edx, 40(%esi)
	jmp	L1165
L1437:
	movl	-197168(%ebp), %ecx
	imull	$44, %ecx, %ebx
	addl	$1, %ecx
	addl	-197196(%ebp), %ebx
	movl	%ecx, -197168(%ebp)
	movl	(%edx), %ecx
	movb	$0, 18(%ebx)
	movl	%ecx, (%ebx)
	movl	4(%edx), %ecx
	movw	%ax, 30(%ebx)
	movl	%ecx, 4(%ebx)
	movl	8(%edx), %ecx
	movl	%ecx, 8(%ebx)
	movzwl	12(%edx), %ecx
	movw	%cx, 12(%ebx)
	movl	14(%edx), %ecx
	movl	%ecx, 14(%ebx)
	movzbl	19(%edx), %ecx
	movb	%cl, 19(%ebx)
	movzbl	-197136(%ebp), %ecx
	movb	%cl, 20(%ebx)
	movl	%edi, %ecx
	movb	%cl, 21(%ebx)
	movl	22(%edx), %ecx
	movl	%ecx, 22(%ebx)
	movl	26(%edx), %ecx
	movl	%ecx, 26(%ebx)
	movl	32(%edx), %ecx
	movl	%ecx, 32(%ebx)
	movzwl	36(%edx), %ecx
	movw	%cx, 36(%ebx)
	movzwl	38(%edx), %ecx
	movl	40(%edx), %edx
	movw	%cx, 38(%ebx)
	movl	%edx, 40(%ebx)
	jmp	L1170
L1146:
	andl	$2, %edx
	je	L1145
	jmp	L1149
L1417:
	movl	_r_useindexedcolortextures, %eax
	testl	%eax, %eax
	je	L1133
	movl	_gltexfiltermode, %eax
	testl	%eax, %eax
	je	L1134
L1133:
	movl	_r_usetileshades, %eax
	testl	%eax, %eax
	je	L1132
	testb	$1, _globalflags
	jne	L1132
L1134:
	movl	_usehightile, %ecx
	testl	%ecx, %ecx
	jne	L1438
L1135:
	movss	LC1, %xmm0
	jmp	L1136
L1403:
	movl	-197164(%ebp), %ecx
	jmp	L1249
L1404:
	movl	-197164(%ebp), %ecx
	jmp	L1248
L1416:
	movl	%eax, -197164(%ebp)
	call	_tileLoad.isra.0
	movl	-197164(%ebp), %eax
	jmp	L1131
L1415:
	call	_animateoffs
	addl	%eax, %edi
	movswl	%di, %eax
	jmp	L1130
L1418:
	movss	LC1, %xmm1
	divss	_frealmaxshade, %xmm0
	movss	LC1, %xmm2
	subss	%xmm0, %xmm1
	movss	LC1, %xmm0
	cmpltss	%xmm1, %xmm0
	andps	%xmm0, %xmm2
	andnps	%xmm1, %xmm0
	orps	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	movaps	%xmm0, %xmm1
	cmpnltss	%xmm2, %xmm1
	andps	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	jmp	L1136
L1147:
	testw	$264, %ax
	je	L1145
	movl	-197136(%ebp), %edi
	xorps	%xmm1, %xmm1
	movss	LC51, %xmm2
	movzbl	_hictinting+2(,%edi,8), %eax
	cvtsi2ssl	%eax, %xmm1
	movzbl	_hictinting+3(,%edi,8), %eax
	mulss	%xmm2, %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, (%ebx)
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	movzbl	_hictinting+4(,%edi,8), %eax
	mulss	%xmm2, %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, 4(%ebx)
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm2, %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, 8(%ebx)
	jmp	L1145
L1401:
	movl	-197152(%ebp), %esi
	movzwl	-197172(%ebp), %ecx
	jmp	L1199
L1435:
	movl	-197192(%ebp), %eax
	movl	$__ZL11sectorqueue.lto_priv.0, %esi
	movl	$-1, _overridematerial
	leal	__ZL11sectorqueue.lto_priv.0+2(%eax,%eax), %eax
	movl	%eax, -197136(%ebp)
L1235:
	movswl	(%esi), %eax
	movl	_sector, %edx
	leal	(%eax,%eax,4), %ebx
	leal	(%edx,%ebx,8), %edi
	xorl	%edx, %edx
	call	_polymer_drawsector.lto_priv.0
	cmpw	$0, 2(%edi)
	jle	L1233
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L1234:
	movzwl	(%edi), %edx
	movswl	(%esi), %eax
	addl	%ebx, %edx
	addl	$1, %ebx
	movswl	%dx, %edx
	call	_polymer_drawwall.lto_priv.0
	movswl	2(%edi), %eax
	cmpl	%ebx, %eax
	jg	L1234
L1233:
	addl	$2, %esi
	cmpl	-197136(%ebp), %esi
	jne	L1235
	jmp	L1232
L1438:
	movl	_globalpal, %edx
	movswl	_globalpicnum, %eax
	movzwl	_hictinting(,%edx,8), %ecx
	andl	$256, %ecx
	call	_hicfindsubst
	testl	%eax, %eax
	jne	L1132
	jmp	L1135
L1413:
	movsbl	8(%ecx), %edi
	jmp	L1128
L1410:
	movl	_skyboxdatavbo, %edx
	testl	%edx, %edx
	jne	L1096
	movl	$_skyboxdatavbo, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glGenBuffers
	movl	_skyboxdatavbo, %edx
	movl	$34962, %eax
	subl	$8, %esp
	call	__Z18buildgl_bindBufferjj
	movl	$35044, 12(%esp)
	movl	$__ZL10skyboxdata, 8(%esp)
	movl	$480, 4(%esp)
	movl	$34962, (%esp)
	call	*_glad_glBufferData
	movl	$34962, %eax
	subl	$16, %esp
	call	__Z18buildgl_bindBufferjj.constprop.0
	movl	_skyboxdatavbo, %edx
L1096:
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj
	cmpb	$63, _picanm+3(%ebx,%ebx,4)
	ja	L1439
L1097:
	movzbl	-197160(%ebp), %ecx
	movl	%esi, %eax
	movl	%ebx, %edx
	leal	-180240(%ebp), %edi
	movsbl	%al, %eax
	movl	%edi, -197196(%ebp)
	movl	%ecx, -197136(%ebp)
	movl	$1, _drawingskybox
	movl	$3, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, -197140(%ebp)
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	_polymer_getbuildmaterial.lto_priv.0
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edi, %eax
	call	_polymer_bindmaterial.lto_priv.0
	movl	$3, %edx
	xorl	%edi, %edi
	movl	%eax, -197152(%ebp)
	xorl	%eax, %eax
	call	__Z25buildgl_bindSamplerObjectii
	movl	%ebx, -197144(%ebp)
	xorl	%ebx, %ebx
L1122:
	addl	$1, %ebx
	xorl	%ecx, %ecx
	movl	%ebx, _drawingskybox
	movl	$4, (%esp)
	movl	-197136(%ebp), %edx
	movl	-197144(%ebp), %eax
	call	_texcache_fetch
	movl	%eax, %esi
	cmpl	$3, _rendmode
	je	L1440
L1098:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-197140(%ebp), %xmm0
	mulss	_shadescale, %xmm0
	cmpl	$4, _r_usenewshading
	je	L1441
	movswl	_numshades, %eax
	movl	_shadescale_unbounded, %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%eax, %xmm3
	testl	%ecx, %ecx
	jne	L1108
	cmpl	-197140(%ebp), %eax
	jg	L1442
L1108:
	movaps	%xmm3, %xmm2
L1107:
	movaps	%xmm0, %xmm1
	xorps	%xmm7, %xmm7
	cmpnltss	%xmm7, %xmm1
	andps	%xmm0, %xmm1
	movaps	%xmm3, %xmm0
	minss	%xmm1, %xmm2
	subss	%xmm2, %xmm0
	divss	%xmm3, %xmm0
L1102:
	movl	_glad_glColor4f, %edx
	testl	%esi, %esi
	je	L1111
L1444:
	movl	-197136(%ebp), %eax
	movzwl	34(%esi), %ecx
	movzwl	_hictinting(,%eax,8), %eax
	testb	$-60, %al
	jne	L1112
	andl	$2, %ecx
	je	L1113
	movzbl	-197160(%ebp), %ecx
	cmpb	38(%esi), %cl
	jne	L1114
	movzwl	36(%esi), %ecx
	andl	$32, %eax
	andw	$199, %cx
	orw	%cx, %ax
	je	L1115
L1114:
	movl	-197136(%ebp), %ecx
	xorps	%xmm3, %xmm3
	xorps	%xmm1, %xmm1
	xorps	%xmm2, %xmm2
	movss	LC51, %xmm4
	movzbl	_hictinting+2(,%ecx,8), %eax
	cvtsi2ssl	%eax, %xmm3
	movzbl	_hictinting+3(,%ecx,8), %eax
	cvtsi2ssl	%eax, %xmm1
	movzbl	_hictinting+4(,%ecx,8), %eax
	cvtsi2ssl	%eax, %xmm2
	mulss	%xmm4, %xmm3
	mulss	%xmm4, %xmm1
	mulss	%xmm4, %xmm2
	mulss	%xmm0, %xmm1
	mulss	%xmm0, %xmm2
	mulss	%xmm3, %xmm0
L1116:
	movzbl	_hictinting+2044, %eax
	cmpw	$-1, _hictinting+2042
	je	L1119
L1120:
	movzbl	_hictinting+2042, %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%ecx, %xmm3
	movzbl	_hictinting+2043, %ecx
	mulss	LC51, %xmm3
	mulss	%xmm3, %xmm0
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%ecx, %xmm3
	mulss	LC51, %xmm3
	mulss	%xmm3, %xmm1
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%eax, %xmm3
	mulss	LC51, %xmm3
	mulss	%xmm3, %xmm2
L1118:
	movl	$0x3f800000, 12(%esp)
	movss	%xmm2, 8(%esp)
	movss	%xmm1, 4(%esp)
	movss	%xmm0, (%esp)
	call	*%edx
	movl	$3553, %edx
	movl	$_gl+88, %eax
	subl	$16, %esp
	call	_inthash_find
	cmpl	$1, %eax
	je	L1244
	movl	$3553, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3553, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1244:
	movl	12(%esi), %eax
L1247:
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	%edi, 12(%esp)
	movl	$20, 8(%esp)
	movl	$5126, 4(%esp)
	movl	$3, (%esp)
	call	*_glad_glVertexPointer
	leal	12(%edi), %eax
	subl	$16, %esp
	movl	%eax, 12(%esp)
	movl	$20, 8(%esp)
	movl	$5126, 4(%esp)
	movl	$2, (%esp)
	call	*_glad_glTexCoordPointer
	subl	$16, %esp
	movl	$4, 8(%esp)
	movl	$0, 4(%esp)
	movl	$7, (%esp)
	call	*_glad_glDrawArrays
	movl	$3553, %edx
	movl	$_gl+88, %eax
	subl	$12, %esp
	call	_inthash_find
	testl	%eax, %eax
	je	L1121
	movl	$3553, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3553, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1121:
	addl	$80, %edi
	cmpl	$6, %ebx
	jne	L1122
	movl	-197152(%ebp), %eax
	movl	$0, _drawingskybox
	call	_polymer_unbindmaterial.lto_priv.0
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj.constprop.0
	jmp	L1123
L1112:
	andl	$2, %ecx
	je	L1117
L1115:
	movaps	%xmm0, %xmm1
	movaps	%xmm0, %xmm2
	jmp	L1116
L1440:
	movl	_r_useindexedcolortextures, %eax
	testl	%eax, %eax
	je	L1099
	movl	_gltexfiltermode, %eax
	testl	%eax, %eax
	je	L1100
L1099:
	movl	_r_usetileshades, %eax
	testl	%eax, %eax
	je	L1098
	testb	$1, _globalflags
	jne	L1098
L1100:
	movl	_usehightile, %eax
	testl	%eax, %eax
	jne	L1443
L1101:
	movss	LC1, %xmm0
	movl	_glad_glColor4f, %edx
	testl	%esi, %esi
	jne	L1444
L1111:
	movl	$0x3f800000, 12(%esp)
	movss	%xmm0, 8(%esp)
	movss	%xmm0, 4(%esp)
	movss	%xmm0, (%esp)
	call	*%edx
	movl	$3553, %edx
	movl	$_gl+88, %eax
	subl	$16, %esp
	call	_inthash_find
	cmpl	$1, %eax
	je	L1251
	movl	$3553, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3553, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1251:
	xorl	%eax, %eax
	jmp	L1247
L1441:
	movss	LC1, %xmm1
	xorps	%xmm7, %xmm7
	divss	_frealmaxshade, %xmm0
	movss	LC1, %xmm2
	subss	%xmm0, %xmm1
	movss	LC1, %xmm0
	cmpltss	%xmm1, %xmm0
	andps	%xmm0, %xmm2
	andnps	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	orps	%xmm2, %xmm1
	movaps	%xmm1, %xmm0
	cmpnltss	%xmm7, %xmm0
	andps	%xmm1, %xmm0
	jmp	L1102
L1113:
	testw	$264, %ax
	jne	L1445
L1117:
	movaps	%xmm0, %xmm2
	movaps	%xmm0, %xmm1
	jmp	L1118
L1411:
	xorl	%eax, %eax
	jmp	L1125
L1427:
	andl	$32, %edx
	je	L1186
	movzwl	-197160(%ebp), %edx
	movl	-197152(%ebp), %eax
	movl	-197200(%ebp), %ebx
	movzwl	__ZL11sectorqueue.lto_priv.0(%eax,%eax), %eax
	addl	%ecx, %edx
	sall	$16, %edx
	movl	%esi, -196784(%ebp,%ebx,8)
	orl	%edx, %eax
	movl	%eax, -196780(%ebp,%ebx,8)
	movl	-197156(%ebp), %eax
	addl	$1, %ebx
	movl	%ebx, -197200(%ebp)
	movzwl	(%eax), %ecx
	jmp	L1175
L1436:
	movl	_viewangle, %eax
	call	_set_globalang
	movl	$2884, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L1243
	movl	$2884, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$2884, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1243:
	call	_renderDrawMasks
	movl	$2884, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1090
	movl	$2884, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$2884, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
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
L1442:
	.cfi_restore_state
	subl	$1, %eax
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	jmp	L1107
L1445:
	movl	-197136(%ebp), %ecx
	xorps	%xmm3, %xmm3
	xorps	%xmm1, %xmm1
	xorps	%xmm2, %xmm2
	movss	LC51, %xmm4
	movzbl	_hictinting+2(,%ecx,8), %eax
	cvtsi2ssl	%eax, %xmm3
	movzbl	_hictinting+3(,%ecx,8), %eax
	cvtsi2ssl	%eax, %xmm1
	movzbl	_hictinting+4(,%ecx,8), %eax
	cvtsi2ssl	%eax, %xmm2
	mulss	%xmm4, %xmm3
	mulss	%xmm4, %xmm1
	mulss	%xmm4, %xmm2
	mulss	%xmm0, %xmm1
	mulss	%xmm0, %xmm2
	mulss	%xmm3, %xmm0
	jmp	L1118
L1439:
	movl	%ebx, %eax
	call	_animateoffs
	addw	%ax, -197144(%ebp)
	movswl	-197144(%ebp), %ebx
	jmp	L1097
L1419:
	cmpb	$-1, %al
	jne	L1150
	jmp	L1145
L1414:
	leal	-180240(%ebp), %eax
	movl	%eax, -197196(%ebp)
	movl	%esi, %eax
	movsbl	%al, %eax
	movl	%eax, -197140(%ebp)
	jmp	L1129
L1443:
	movl	_globalpal, %edx
	movswl	_globalpicnum, %eax
	movzwl	_hictinting(,%edx,8), %ecx
	andl	$256, %ecx
	call	_hicfindsubst
	testl	%eax, %eax
	jne	L1098
	jmp	L1101
L1429:
	movl	-197172(%ebp), %eax
	addl	$252, %eax
	call	_polymer_drawplane.lto_priv.0
	jmp	L1194
L1428:
	movl	-197172(%ebp), %eax
	call	_polymer_drawplane.lto_priv.0
	jmp	L1193
L1091:
	movl	%ebx, %eax
	call	__Z13handle_memerri
L1409:
	movl	$2, %eax
	call	__Z13handle_memerri
L1119:
	cmpb	$-1, %al
	jne	L1120
	jmp	L1118
	.cfi_endproc
LFE33:
	.p2align 4
	.globl	_polymer_drawmdsprite.lto_priv.0
	.def	_polymer_drawmdsprite.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_drawmdsprite.lto_priv.0:
LFB53:
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
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%eax, %ebx
	subl	$332, %esp
	movl	%eax, -184(%ebp)
	movswl	30(%eax), %eax
	cmpw	$16383, %ax
	jle	L1447
	movzbl	17(%ebx), %eax
L1448:
	movzbl	%al, %edi
	movl	-184(%ebp), %eax
	movl	_models, %esi
	movswl	14(%eax), %ebx
	movl	%ebx, %eax
	leal	0(,%ebx,4), %edx
	jmp	L1449
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1451:
	leal	0(,%eax,4), %edx
	leal	(%edx,%eax), %ecx
	movzbl	_tile2model+17(,%ecx,4), %ecx
	cmpl	%ecx, %edi
	je	L1568
L1449:
	addl	%edx, %eax
	movswl	_tile2model+4(,%eax,4), %eax
	cmpl	$-1, %eax
	jne	L1451
L1450:
	leal	(%ebx,%ebx,4), %eax
	movl	-184(%ebp), %edx
	movl	%edi, %ecx
	movswl	_tile2model(,%eax,4), %eax
	movl	(%esi,%eax,4), %eax
	movl	%eax, %ebx
	movl	%eax, -176(%ebp)
	call	_updateanimation
	movl	220(%ebx), %esi
	testl	%esi, %esi
	je	L1665
L1452:
	movl	-184(%ebp), %esi
	movl	_maxspritesonscreen, %ecx
	movswl	30(%esi), %edx
	movzbl	18(%esi), %eax
	sall	$6, %edx
	addl	_spriteext, %edx
	movb	%al, -266(%ebp)
	movswl	20(%edx), %ebx
	movswl	28(%esi), %eax
	cmpl	%esi, _tspriteptr(,%ecx,4)
	je	L1666
	movl	-184(%ebp), %esi
	xorps	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	movl	48(%edx), %ecx
	movss	LC46, %xmm6
	cvtsi2ssl	44(%edx), %xmm0
	movl	40(%edx), %edx
	addl	%ebx, %eax
	cvtsi2ssl	4(%esi), %xmm1
	addl	8(%esi), %ecx
	addl	(%esi), %edx
	andl	$2047, %eax
	movss	LC75, %xmm5
	movl	$0x00000000, -224(%ebp)
	movl	$0x00000000, -220(%ebp)
	movl	$0x00000000, -216(%ebp)
	addss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	movups	%xmm6, -200(%ebp)
	cvtsi2ssl	%ecx, %xmm0
	movss	%xmm5, -212(%ebp)
	mulss	LC59, %xmm0
	movss	%xmm1, -172(%ebp)
	movss	%xmm0, -180(%ebp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	xorps	%xmm6, %xmm0
	movss	%xmm0, -204(%ebp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm5, %xmm0
L1460:
	subss	LC76, %xmm0
	movl	-184(%ebp), %eax
	testb	$32, 12(%eax)
	jne	L1667
L1461:
	movss	%xmm0, -208(%ebp)
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glPushMatrix
	call	*_glad_glLoadIdentity
	xorps	%xmm3, %xmm3
	movss	_pr_overridemodelscale, %xmm1
	movl	-176(%ebp), %eax
	movss	LC77, %xmm2
	movss	-208(%ebp), %xmm0
	mulss	8(%eax), %xmm2
	ucomiss	%xmm3, %xmm1
	jp	L1589
	jne	L1589
	movl	-176(%ebp), %eax
	mulss	12(%eax), %xmm2
	movss	%xmm2, -252(%ebp)
L1464:
	movl	_maxspritesonscreen, %eax
	movl	_glad_glTranslatef, %ebx
	xorps	-200(%ebp), %xmm0
	movl	-184(%ebp), %ecx
	cmpl	%ecx, _tspriteptr(,%eax,4)
	je	L1668
	movss	-204(%ebp), %xmm5
	movss	%xmm0, -208(%ebp)
	movss	%xmm5, 8(%esp)
	movss	-180(%ebp), %xmm5
	movss	%xmm5, 4(%esp)
	movss	-172(%ebp), %xmm6
	movss	%xmm6, (%esp)
	call	*%ebx
	movss	LC1, %xmm6
	subl	$12, %esp
	movl	$0x00000000, 12(%esp)
	movss	%xmm6, -264(%ebp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm6, 8(%esp)
	movss	-208(%ebp), %xmm0
	movss	%xmm0, (%esp)
	call	*_glad_glRotatef
	subl	$16, %esp
L1466:
	movl	-184(%ebp), %ebx
	testb	$32, 12(%ebx)
	je	L1467
	movswl	14(%ebx), %eax
	movzbl	21(%ebx), %edx
	xorps	%xmm0, %xmm0
	movswl	_tilesiz+2(,%eax,4), %eax
	movl	$0x00000000, 4(%esp)
	movl	$0x00000000, (%esp)
	imull	%edx, %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	LC84, %xmm0
	movss	%xmm0, 8(%esp)
	call	*_glad_glTranslatef
	movss	-264(%ebp), %xmm6
	subl	$12, %esp
	movl	$0x00000000, 8(%esp)
	movl	$0x00000000, 4(%esp)
	movl	$0x42b40000, (%esp)
	movss	%xmm6, 12(%esp)
	call	*_glad_glRotatef
	subl	$16, %esp
L1468:
	movl	-184(%ebp), %eax
	movzwl	12(%eax), %eax
	movw	%ax, -172(%ebp)
	andw	$160, %ax
	cmpw	$128, %ax
	je	L1669
L1469:
	movl	-176(%ebp), %eax
	movl	-184(%ebp), %ebx
	xorps	%xmm1, %xmm1
	movss	LC82, %xmm0
	mulss	20(%eax), %xmm0
	movzbl	21(%ebx), %eax
	mulss	-252(%ebp), %xmm0
	movl	$0x00000000, 4(%esp)
	cvtsi2ssl	%eax, %xmm1
	movl	$0x00000000, (%esp)
	mulss	%xmm1, %xmm0
	movss	%xmm0, 8(%esp)
	call	*_glad_glTranslatef
	movzwl	12(%ebx), %eax
	subl	$12, %esp
	testb	$8, %al
	jne	L1470
	movss	LC45, %xmm0
	testb	$4, %al
	je	L1472
L1471:
	movss	-264(%ebp), %xmm6
	movss	%xmm0, 4(%esp)
	movss	%xmm6, 8(%esp)
	movss	%xmm6, (%esp)
	call	*_glad_glScalef
	movl	-184(%ebp), %eax
	subl	$12, %esp
	movzwl	12(%eax), %eax
	movl	%eax, %edx
	andl	$4, %edx
L1473:
	shrw	$3, %ax
	shrw	$2, %dx
	andl	$1, %eax
	xorl	$1, %edx
	xorl	$1, %eax
	cmpb	%al, %dl
	je	L1472
	cmpl	$1028, _culledface
	movl	$1029, %edx
	movl	$1028, %eax
	cmove	%edx, %eax
	movl	%eax, _culledface
	movl	%eax, (%esp)
	call	*_glad_glCullFace
	subl	$4, %esp
L1472:
	movl	-184(%ebp), %ebx
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	movss	-252(%ebp), %xmm6
	movzbl	20(%ebx), %eax
	cvtsi2ssl	%eax, %xmm0
	movzbl	21(%ebx), %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm6, %xmm0
	mulss	%xmm6, %xmm1
	movss	%xmm0, 4(%esp)
	movss	%xmm0, (%esp)
	movss	%xmm1, 8(%esp)
	call	*_glad_glScalef
	movl	-176(%ebp), %eax
	movss	LC82, %xmm0
	subl	$12, %esp
	mulss	16(%eax), %xmm0
	movl	$0x00000000, 4(%esp)
	movl	$0x00000000, (%esp)
	movss	%xmm0, 8(%esp)
	call	*_glad_glTranslatef
	movswl	30(%ebx), %eax
	subl	$12, %esp
	cmpw	$16383, %ax
	jg	L1475
	sall	$6, %eax
	addl	_spriteext, %eax
	movswl	24(%eax), %ecx
	movswl	26(%eax), %edx
	movl	%ecx, %esi
	orw	%dx, %si
	je	L1475
	xorps	%xmm3, %xmm3
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	movss	-252(%ebp), %xmm6
	cvtsi2ssl	%edx, %xmm3
	movzbl	20(%ebx), %edx
	xorps	%xmm2, %xmm2
	xorps	%xmm4, %xmm4
	cvtsi2ssl	%ecx, %xmm4
	movss	-212(%ebp), %xmm5
	cvtsi2ssl	%edx, %xmm0
	movl	28(%eax), %edx
	mulss	%xmm5, %xmm3
	negl	%edx
	cvtsi2ssl	%edx, %xmm1
	movl	32(%eax), %edx
	mulss	%xmm5, %xmm4
	xorps	%xmm5, %xmm5
	mulss	%xmm6, %xmm0
	negl	%edx
	cvtsi2ssl	%edx, %xmm2
	movss	%xmm3, -208(%ebp)
	movss	%xmm4, -212(%ebp)
	divss	%xmm0, %xmm1
	divss	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsi2ssl	36(%eax), %xmm0
	movzbl	21(%ebx), %eax
	mulss	LC61, %xmm0
	cvtsi2ssl	%eax, %xmm5
	mulss	%xmm6, %xmm5
	movups	-200(%ebp), %xmm6
	divss	%xmm5, %xmm0
	movaps	%xmm6, %xmm5
	xorps	%xmm0, %xmm5
	movss	%xmm0, -204(%ebp)
	movss	%xmm5, 8(%esp)
	movaps	%xmm6, %xmm5
	xorps	%xmm1, %xmm6
	xorps	%xmm2, %xmm5
	movss	%xmm2, -180(%ebp)
	movss	%xmm5, 4(%esp)
	movss	%xmm1, -172(%ebp)
	movss	%xmm6, (%esp)
	call	*_glad_glTranslatef
	subl	$12, %esp
	movl	$0x00000000, 12(%esp)
	movss	-264(%ebp), %xmm6
	movl	$0x00000000, 4(%esp)
	movss	%xmm6, 8(%esp)
	movss	-212(%ebp), %xmm4
	movss	%xmm4, (%esp)
	call	*_glad_glRotatef
	subl	$16, %esp
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 8(%esp)
	movl	$0xbf800000, 4(%esp)
	movss	-208(%ebp), %xmm3
	movss	%xmm3, (%esp)
	call	*_glad_glRotatef
	movss	-204(%ebp), %xmm0
	subl	$16, %esp
	movss	%xmm0, 8(%esp)
	movss	-180(%ebp), %xmm2
	movss	%xmm2, 4(%esp)
	movss	-172(%ebp), %xmm1
	movss	%xmm1, (%esp)
	call	*_glad_glTranslatef
	subl	$12, %esp
L1475:
	movl	$_spritemodelview, 4(%esp)
	xorl	%esi, %esi
	movl	$2982, (%esp)
	call	*_glad_glGetFloatv
	subl	$8, %esp
	call	*_glad_glPopMatrix
	call	*_glad_glPushMatrix
	movl	$_spritemodelview, (%esp)
	call	*_glad_glMultMatrixf
	movl	_spritemodelview, %eax
	xorl	%ecx, %ecx
	subl	$4, %esp
	movl	%eax, -152(%ebp)
	movl	_spritemodelview+4, %eax
	movl	%eax, -148(%ebp)
	movl	_spritemodelview+8, %eax
	movl	%eax, -144(%ebp)
	movl	_spritemodelview+12, %eax
	movl	%eax, -140(%ebp)
	movl	_spritemodelview+16, %eax
	movl	%eax, -136(%ebp)
	movl	_spritemodelview+20, %eax
	movl	%eax, -132(%ebp)
	movl	_spritemodelview+24, %eax
	movl	%eax, -128(%ebp)
	movl	_spritemodelview+28, %eax
	movl	%eax, -124(%ebp)
	movl	_spritemodelview+32, %eax
	movl	%eax, -120(%ebp)
	movl	_spritemodelview+36, %eax
	movl	%eax, -116(%ebp)
	movl	_spritemodelview+40, %eax
	movl	%eax, -112(%ebp)
	movl	_spritemodelview+44, %eax
	movl	%eax, -108(%ebp)
	movl	_spritemodelview+48, %eax
	movl	%eax, -104(%ebp)
	movl	_spritemodelview+52, %eax
	movl	%eax, -100(%ebp)
	movl	_spritemodelview+56, %eax
	movl	%eax, -96(%ebp)
	movl	_spritemodelview+60, %eax
	movl	%eax, -92(%ebp)
	movss	-92(%ebp), %xmm2
	movss	-108(%ebp), %xmm4
	movss	-112(%ebp), %xmm0
	movss	-96(%ebp), %xmm1
	movss	-100(%ebp), %xmm3
	mulss	%xmm2, %xmm0
	movss	-96(%ebp), %xmm5
	movss	-124(%ebp), %xmm6
	mulss	%xmm4, %xmm1
	mulss	%xmm4, %xmm3
	mulss	-116(%ebp), %xmm5
	subss	%xmm1, %xmm0
	movss	-116(%ebp), %xmm1
	mulss	%xmm2, %xmm1
	mulss	-120(%ebp), %xmm2
	subss	%xmm3, %xmm1
	movss	-112(%ebp), %xmm3
	mulss	-100(%ebp), %xmm3
	subss	%xmm3, %xmm5
	movss	-132(%ebp), %xmm3
	mulss	%xmm0, %xmm3
	mulss	-136(%ebp), %xmm0
	movaps	%xmm5, %xmm7
	movss	-128(%ebp), %xmm5
	mulss	%xmm1, %xmm5
	mulss	-136(%ebp), %xmm1
	subss	%xmm5, %xmm3
	movaps	%xmm6, %xmm5
	mulss	%xmm7, %xmm5
	addss	%xmm5, %xmm3
	mulss	-152(%ebp), %xmm3
	movss	-96(%ebp), %xmm5
	mulss	-120(%ebp), %xmm5
	movss	%xmm3, -172(%ebp)
	movss	-104(%ebp), %xmm3
	flds	-172(%ebp)
	mulss	%xmm3, %xmm4
	subss	%xmm4, %xmm2
	movss	-112(%ebp), %xmm4
	mulss	%xmm3, %xmm4
	mulss	-116(%ebp), %xmm3
	subss	%xmm4, %xmm5
	movss	-128(%ebp), %xmm4
	mulss	%xmm2, %xmm4
	mulss	-132(%ebp), %xmm2
	subss	%xmm4, %xmm0
	movaps	%xmm6, %xmm4
	mulss	%xmm5, %xmm4
	subss	%xmm2, %xmm1
	addss	%xmm4, %xmm0
	movups	-200(%ebp), %xmm4
	xorps	%xmm4, %xmm0
	mulss	-148(%ebp), %xmm0
	movss	%xmm0, -180(%ebp)
	movss	-100(%ebp), %xmm0
	mulss	-120(%ebp), %xmm0
	fadds	-180(%ebp)
	subss	%xmm3, %xmm0
	mulss	%xmm0, %xmm6
	addss	%xmm6, %xmm1
	mulss	-144(%ebp), %xmm1
	movl	%edi, -204(%ebp)
	mulss	-136(%ebp), %xmm7
	mulss	-132(%ebp), %xmm5
	mulss	-128(%ebp), %xmm0
	movss	%xmm1, -172(%ebp)
	fadds	-172(%ebp)
	subss	%xmm5, %xmm7
	addss	%xmm7, %xmm0
	xorps	%xmm4, %xmm0
	mulss	-140(%ebp), %xmm0
	movss	%xmm0, -172(%ebp)
	fadds	-172(%ebp)
	fdivrl	LC83
	movl	$_mdspritespace, -172(%ebp)
	fstps	-180(%ebp)
	.p2align 4
	.p2align 3
L1476:
	movl	%ecx, %eax
L1480:
	addl	$1, %eax
	movl	%eax, -92(%ebp,%eax,4)
	cmpl	$3, %eax
	jne	L1480
	testl	%esi, %esi
	je	L1478
	movl	$0, -168(%ebp)
	cmpl	$1, %esi
	je	L1478
L1670:
	movl	$1, -164(%ebp)
	cmpl	$3, %esi
	jne	L1574
	movl	$2, -160(%ebp)
L1481:
	movl	-84(%ebp), %eax
	movl	-168(%ebp), %ebx
	leal	0(,%eax,4), %edx
	movl	-164(%ebp), %eax
	addl	%edx, %eax
	movss	-152(%ebp,%eax,4), %xmm3
	movl	-80(%ebp), %eax
	leal	0(,%eax,4), %edi
	addl	-160(%ebp), %edi
	movaps	%xmm3, %xmm0
	movss	-152(%ebp,%edi,4), %xmm2
	movl	-160(%ebp), %edi
	mulss	%xmm2, %xmm0
	addl	%edx, %edi
	addl	%ebx, %edx
	movss	-152(%ebp,%edi,4), %xmm4
	leal	0(,%eax,4), %edi
	leal	(%ebx,%eax,4), %eax
	addl	-164(%ebp), %edi
	movss	-152(%ebp,%edx,4), %xmm6
	movl	-164(%ebp), %edx
	movss	-152(%ebp,%eax,4), %xmm5
	movaps	%xmm4, %xmm7
	movl	-88(%ebp), %eax
	movss	-152(%ebp,%edi,4), %xmm1
	mulss	%xmm6, %xmm2
	mulss	%xmm5, %xmm4
	sall	$2, %eax
	mulss	%xmm1, %xmm7
	addl	%eax, %ebx
	addl	%eax, %edx
	addl	-160(%ebp), %eax
	mulss	%xmm6, %xmm1
	mulss	%xmm5, %xmm3
	subss	%xmm4, %xmm2
	mulss	-152(%ebp,%edx,4), %xmm2
	subss	%xmm7, %xmm0
	mulss	-152(%ebp,%ebx,4), %xmm0
	subss	%xmm3, %xmm1
	mulss	-152(%ebp,%eax,4), %xmm1
	leal	(%ecx,%esi), %eax
	subss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	testb	$1, %al
	je	L1483
	xorps	-200(%ebp), %xmm0
L1483:
	mulss	-180(%ebp), %xmm0
	movl	%esi, %eax
	movl	-172(%ebp), %ebx
	addl	$1, %esi
	sall	$4, %eax
	movss	%xmm0, (%ebx,%eax)
	cmpl	$4, %esi
	je	L1484
	testl	%ecx, %ecx
	je	L1476
	movl	$0, -88(%ebp)
	cmpl	$1, %ecx
	je	L1476
	movl	$1, -84(%ebp)
	cmpl	$3, %ecx
	jne	L1573
	movl	$2, -80(%ebp)
	movl	$0, -168(%ebp)
	cmpl	$1, %esi
	jne	L1670
	.p2align 4
	.p2align 3
L1478:
	movl	%esi, %eax
L1482:
	addl	$1, %eax
	movl	%eax, -172(%ebp,%eax,4)
	cmpl	$3, %eax
	jne	L1482
	jmp	L1481
L1447:
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movzbl	17(%eax), %eax
	jmp	L1448
L1667:
	subss	LC76, %xmm0
	jmp	L1461
L1589:
	mulss	%xmm2, %xmm1
	movss	%xmm1, -252(%ebp)
	jmp	L1464
	.p2align 4,,10
	.p2align 3
L1484:
	addl	$1, %ecx
	cmpl	$4, %ecx
	je	L1671
	addl	$4, -172(%ebp)
	movl	$0, -88(%ebp)
	cmpl	$1, %ecx
	je	L1657
	movl	$1, -84(%ebp)
	cmpl	$3, %ecx
	jne	L1572
	movl	$2, -80(%ebp)
	xorl	%esi, %esi
	jmp	L1478
	.p2align 4,,10
	.p2align 3
L1574:
	movl	$2, %esi
	jmp	L1478
L1573:
	movl	$2, %ecx
	jmp	L1476
L1572:
	movl	$2, %ecx
L1657:
	xorl	%esi, %esi
	jmp	L1476
L1671:
	movl	-184(%ebp), %ecx
	xorps	%xmm3, %xmm3
	xorps	%xmm2, %xmm2
	xorps	%xmm0, %xmm0
	movss	-264(%ebp), %xmm6
	xorps	%xmm1, %xmm1
	movswl	_numshades, %eax
	movl	$0, _mdspritematerial+20
	movl	$0, _mdspritematerial+24
	movl	-204(%ebp), %edi
	cvtsi2ssl	%eax, %xmm2
	movl	$0, _mdspritematerial+28
	movl	$0, _mdspritematerial+32
	movl	$0, _mdspritematerial+44
	movl	$0, _mdspritematerial+56
	movl	$0, _mdspritematerial+60
	movl	$-1, _mdspritematerial+72
	movl	$0, _mdspritematerial+76
	movl	$0x41700000, _mdspritematerial+80
	movl	$0, _mdspritematerial+88
	movl	$0, _mdspritematerial+92
	movb	$0, _mdspritematerial+96
	movss	%xmm3, _mdspritematerial+16
	movss	%xmm6, _mdspritematerial+52
	movss	%xmm6, _mdspritematerial+48
	movss	%xmm6, _mdspritematerial+68
	movss	%xmm6, _mdspritematerial+64
	movss	%xmm6, _mdspritematerial+84
	movsbl	16(%ecx), %eax
	movl	$-1, _mdspritematerial+4
	movl	$0, _mdspritematerial+8
	cvtsi2ssl	%eax, %xmm0
	movl	-176(%ebp), %eax
	mulss	_shadescale, %xmm0
	movss	%xmm3, _mdspritematerial+12
	movss	%xmm3, _mdspritematerial
	cvtsi2ssl	4(%eax), %xmm1
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	cmpnltss	%xmm3, %xmm1
	andps	%xmm0, %xmm1
	movaps	%xmm2, %xmm0
	minss	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	subss	%xmm0, %xmm1
	movss	LC41, %xmm0
	divss	%xmm2, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2sil	%xmm1, %eax
	movb	%al, _mdspritematerial+74
	movl	%eax, %ebx
	movb	%al, _mdspritematerial+73
	movb	%al, _mdspritematerial+72
	movzbl	17(%ecx), %edx
	movl	_pr_highpalookups, %ecx
	testl	%ecx, %ecx
	je	L1490
	movzbl	_curbasepal, %ecx
	movl	_prhighpalookups(,%ecx,4), %ecx
	testl	%ecx, %ecx
	je	L1490
	movl	(%ecx,%edx,8), %esi
	testl	%esi, %esi
	je	L1490
	movl	4(%ecx,%edx,8), %esi
	testl	%esi, %esi
	jne	L1575
L1490:
	testb	$-60, _hictinting(,%edx,8)
	jne	L1496
	movl	-176(%ebp), %ecx
	testb	$1, 28(%ecx)
	je	L1672
	movl	$1, _globalnoeffect
L1496:
	movss	LC51, %xmm1
	movl	%eax, %ecx
L1493:
	movzbl	_hictinting+2044, %esi
	cmpw	$-1, _hictinting+2042
	je	L1673
L1497:
	xorps	%xmm2, %xmm2
	xorps	%xmm3, %xmm3
	movzbl	%al, %eax
	movb	$0, -265(%ebp)
	movzbl	_hictinting+2042, %edx
	cvtsi2ssl	%edx, %xmm2
	movzbl	%bl, %edx
	cvtsi2ssl	%edx, %xmm3
	movzbl	_hictinting+2043, %edx
	mulss	%xmm3, %xmm2
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%eax, %xmm3
	mulss	%xmm1, %xmm2
	cvttss2sil	%xmm2, %ebx
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%edx, %xmm2
	movzbl	%cl, %edx
	movl	%esi, %ecx
	movzbl	%cl, %esi
	mulss	%xmm3, %xmm2
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%esi, %xmm3
	mulss	%xmm1, %xmm2
	cvttss2sil	%xmm2, %eax
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%edx, %xmm2
	mulss	%xmm3, %xmm2
	mulss	%xmm1, %xmm2
	cvttss2sil	%xmm2, %ecx
L1494:
	movzbl	%bl, %ebx
	xorps	%xmm2, %xmm2
	movzbl	%al, %eax
	movzbl	%cl, %ecx
	cvtsi2ssl	%ebx, %xmm2
	mulss	%xmm0, %xmm2
	mulss	%xmm1, %xmm2
	cvttss2sil	%xmm2, %edx
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	movb	%dl, _mdspritematerial+72
	mulss	%xmm0, %xmm2
	mulss	%xmm1, %xmm2
	cvttss2sil	%xmm2, %eax
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%ecx, %xmm2
	movb	%al, _mdspritematerial+73
	mulss	%xmm0, %xmm2
	mulss	%xmm2, %xmm1
	cvttss2sil	%xmm1, %eax
	movb	%al, _mdspritematerial+74
	movl	-184(%ebp), %eax
	movzwl	12(%eax), %eax
	testb	$2, %al
	je	L1498
	testb	$2, %ah
	jne	L1499
	movb	$-86, _mdspritematerial+75
	movss	LC72, %xmm0
L1498:
	movl	-184(%ebp), %eax
	movss	-264(%ebp), %xmm1
	movswl	30(%eax), %eax
	sall	$6, %eax
	addl	_spriteext, %eax
	subss	8(%eax), %xmm1
	mulss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movb	%al, _mdspritematerial+75
	cmpw	$2, _searchit
	jne	L1500
	movl	-184(%ebp), %ebx
	movb	$3, _mdspritematerial+72
	movzbl	30(%ebx), %eax
	movb	%al, _mdspritematerial+73
	movzbl	31(%ebx), %eax
	movb	$-1, _mdspritematerial+75
	movb	%al, _mdspritematerial+74
L1500:
	movl	_pr_gpusmoothing, %ebx
	testl	%ebx, %ebx
	je	L1501
	movl	-176(%ebp), %eax
	movss	60(%eax), %xmm0
	movss	%xmm0, _mdspritematerial
L1501:
	movl	_lightcount, %eax
	movb	$1, _mdspritematerial+96
	movl	%eax, -172(%ebp)
	testl	%eax, %eax
	je	L1502
	movl	_depth, %eax
	testl	%eax, %eax
	je	L1503
	movl	_mirrors-8(,%eax,8), %ecx
	testl	%ecx, %ecx
	je	L1502
L1503:
	movl	_pr_maxlightpriority, %ebx
	testl	%ebx, %ebx
	jle	L1502
	movl	-176(%ebp), %eax
	movl	-184(%ebp), %esi
	imull	$56, 36(%eax), %edx
	movl	188(%eax), %ecx
	movss	60(%eax), %xmm2
	imull	$56, 40(%eax), %eax
	addl	%ecx, %edx
	movss	32(%edx), %xmm3
	addl	%ecx, %eax
	movss	36(%edx), %xmm1
	movss	36(%eax), %xmm0
	movzbl	21(%esi), %ecx
	movss	%xmm3, -256(%ebp)
	movss	32(%eax), %xmm3
	movss	24(%eax), %xmm5
	movss	28(%eax), %xmm7
	movzbl	20(%esi), %esi
	movss	%xmm3, -260(%ebp)
	movss	24(%edx), %xmm4
	movss	28(%edx), %xmm6
	movss	_spritemodelview, %xmm3
	movss	%xmm3, -276(%ebp)
	movss	_spritemodelview+16, %xmm3
	movss	%xmm3, -280(%ebp)
	movss	_spritemodelview+32, %xmm3
	movss	%xmm3, -284(%ebp)
	movss	_spritemodelview+48, %xmm3
	movss	%xmm3, -288(%ebp)
	movss	_spritemodelview+4, %xmm3
	movss	%xmm3, -292(%ebp)
	movss	_spritemodelview+20, %xmm3
	movss	%xmm3, -296(%ebp)
	movss	_spritemodelview+36, %xmm3
	movss	%xmm3, -300(%ebp)
	movss	_spritemodelview+52, %xmm3
	movss	%xmm3, -304(%ebp)
	movss	_spritemodelview+8, %xmm3
	movss	%xmm3, -308(%ebp)
	movss	_spritemodelview+24, %xmm3
	movss	%xmm3, -312(%ebp)
	movss	_spritemodelview+40, %xmm3
	movss	%xmm3, -316(%ebp)
	movss	_spritemodelview+56, %xmm3
	movss	%xmm3, -320(%ebp)
	movss	_rootmodelviewmatrix, %xmm3
	movss	%xmm3, -204(%ebp)
	movss	_rootmodelviewmatrix+16, %xmm3
	movss	%xmm3, -208(%ebp)
	movss	_rootmodelviewmatrix+32, %xmm3
	movss	%xmm3, -212(%ebp)
	movss	_rootmodelviewmatrix+48, %xmm3
	movss	%xmm3, -216(%ebp)
	movss	_rootmodelviewmatrix+4, %xmm3
	movss	%xmm3, -220(%ebp)
	movss	_rootmodelviewmatrix+20, %xmm3
	movss	%xmm3, -224(%ebp)
	movss	_rootmodelviewmatrix+36, %xmm3
	movss	%xmm3, -228(%ebp)
	movss	_rootmodelviewmatrix+52, %xmm3
	movss	%xmm3, -232(%ebp)
	movss	_rootmodelviewmatrix+8, %xmm3
	movss	%xmm3, -236(%ebp)
	movss	_rootmodelviewmatrix+24, %xmm3
	movss	%xmm3, -240(%ebp)
	movss	_rootmodelviewmatrix+40, %xmm3
	movss	%xmm3, -244(%ebp)
	movss	_rootmodelviewmatrix+56, %xmm3
	movl	-172(%ebp), %eax
	movb	$0, -180(%ebp)
	movss	%xmm3, -248(%ebp)
L1504:
	testl	%eax, %eax
	jle	L1516
	movss	-264(%ebp), %xmm3
	mulss	%xmm2, %xmm0
	movzbl	%cl, %eax
	xorl	%edx, %edx
	mulss	%xmm2, %xmm5
	subss	%xmm2, %xmm3
	mulss	%xmm2, %xmm7
	mulss	%xmm3, %xmm1
	mulss	%xmm3, %xmm6
	mulss	%xmm3, %xmm4
	addss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	-252(%ebp), %xmm0
	movl	%esi, %eax
	movzbl	%al, %eax
	addss	%xmm5, %xmm4
	movaps	%xmm6, %xmm5
	movss	%xmm1, -272(%ebp)
	xorps	%xmm1, %xmm1
	addss	%xmm7, %xmm5
	cvtsi2ssl	%eax, %xmm1
	mulss	-252(%ebp), %xmm1
	maxss	%xmm1, %xmm0
	movss	-256(%ebp), %xmm1
	mulss	-272(%ebp), %xmm0
	divss	LC68, %xmm0
	movss	%xmm0, -252(%ebp)
	movss	-260(%ebp), %xmm0
	mulss	%xmm3, %xmm1
	movss	-304(%ebp), %xmm3
	mulss	%xmm2, %xmm0
	movss	-288(%ebp), %xmm2
	movaps	%xmm1, %xmm6
	movss	-276(%ebp), %xmm1
	addss	%xmm0, %xmm6
	movss	-280(%ebp), %xmm0
	mulss	%xmm4, %xmm1
	mulss	%xmm5, %xmm0
	addss	%xmm1, %xmm0
	movss	-284(%ebp), %xmm1
	mulss	%xmm6, %xmm1
	addss	%xmm1, %xmm0
	movss	-292(%ebp), %xmm1
	mulss	%xmm4, %xmm1
	addss	%xmm0, %xmm2
	movss	-296(%ebp), %xmm0
	mulss	%xmm5, %xmm0
	addss	%xmm1, %xmm0
	movss	-300(%ebp), %xmm1
	mulss	%xmm6, %xmm1
	addss	%xmm1, %xmm0
	movss	-308(%ebp), %xmm1
	mulss	%xmm4, %xmm1
	movss	-320(%ebp), %xmm4
	addss	%xmm0, %xmm3
	movss	-312(%ebp), %xmm0
	mulss	%xmm5, %xmm0
	movss	-232(%ebp), %xmm5
	addss	%xmm1, %xmm0
	movss	-316(%ebp), %xmm1
	mulss	%xmm6, %xmm1
	movss	-216(%ebp), %xmm6
	addss	%xmm1, %xmm0
	movss	-204(%ebp), %xmm1
	mulss	%xmm2, %xmm1
	addss	%xmm0, %xmm4
	movss	-208(%ebp), %xmm0
	mulss	%xmm3, %xmm0
	addss	%xmm1, %xmm0
	movss	-212(%ebp), %xmm1
	mulss	%xmm4, %xmm1
	addss	%xmm1, %xmm0
	movss	-220(%ebp), %xmm1
	mulss	%xmm2, %xmm1
	addss	%xmm0, %xmm6
	movss	-224(%ebp), %xmm0
	mulss	%xmm3, %xmm0
	mulss	-240(%ebp), %xmm3
	addss	%xmm1, %xmm0
	movss	-228(%ebp), %xmm1
	mulss	%xmm4, %xmm1
	mulss	-244(%ebp), %xmm4
	addss	%xmm1, %xmm0
	movss	-236(%ebp), %xmm1
	mulss	%xmm2, %xmm1
	addss	%xmm0, %xmm5
	movaps	%xmm3, %xmm0
	addss	%xmm1, %xmm0
	addss	%xmm4, %xmm0
	addss	-248(%ebp), %xmm0
	movl	%ebx, -272(%ebp)
	movl	%edi, -276(%ebp)
	movzbl	-180(%ebp), %edi
	movss	%xmm5, -260(%ebp)
	movups	-200(%ebp), %xmm5
	movss	%xmm0, -256(%ebp)
	.p2align 4
	.p2align 3
L1517:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	cmpb	$31, %dl
	ja	L1510
L1652:
	movb	%dl, -200(%ebp)
	jmp	L1659
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1505:
	addl	$1, %eax
L1659:
	imull	$270, %eax, %edx
	testb	$1, _prlights+254(%edx)
	je	L1505
	imull	$270, %eax, %edx
	leal	1(%eax), %esi
	addl	$1, %ecx
	leal	_prlights(%edx), %ebx
	movl	%ebx, -180(%ebp)
	movl	%edi, %ebx
	cmpb	%bl, _prlights+31(%edx)
	jne	L1663
	xorps	%xmm4, %xmm4
	xorps	%xmm1, %xmm1
	xorps	%xmm3, %xmm3
	movss	-204(%ebp), %xmm0
	cvtsi2ssl	_prlights+8(%edx), %xmm4
	movss	-208(%ebp), %xmm2
	movss	-224(%ebp), %xmm7
	cvtsi2ssl	_prlights+4(%edx), %xmm1
	cvtsi2ssl	_prlights(%edx), %xmm3
	xorps	%xmm5, %xmm4
	mulss	LC61, %xmm4
	mulss	%xmm1, %xmm0
	xorps	%xmm5, %xmm3
	mulss	%xmm4, %xmm2
	mulss	%xmm4, %xmm7
	mulss	-240(%ebp), %xmm4
	addss	%xmm2, %xmm0
	movss	-212(%ebp), %xmm2
	mulss	%xmm3, %xmm2
	addss	%xmm2, %xmm0
	movss	-220(%ebp), %xmm2
	addss	-216(%ebp), %xmm0
	mulss	%xmm1, %xmm2
	mulss	-236(%ebp), %xmm1
	subss	%xmm6, %xmm0
	mulss	%xmm0, %xmm0
	addss	%xmm7, %xmm2
	movss	-228(%ebp), %xmm7
	addss	%xmm4, %xmm1
	mulss	%xmm3, %xmm7
	mulss	-244(%ebp), %xmm3
	addss	%xmm7, %xmm2
	addss	-232(%ebp), %xmm2
	subss	-260(%ebp), %xmm2
	addss	%xmm3, %xmm1
	xorps	%xmm3, %xmm3
	cvtsi2ssl	_prlights+16(%edx), %xmm3
	addss	-248(%ebp), %xmm1
	divss	LC68, %xmm3
	subss	-256(%ebp), %xmm1
	addss	-252(%ebp), %xmm3
	mulss	%xmm2, %xmm2
	mulss	%xmm1, %xmm1
	mulss	%xmm3, %xmm3
	addss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	comiss	%xmm1, %xmm3
	jb	L1663
	movzbl	-200(%ebp), %ebx
	movl	%ebx, %edx
	movw	%ax, -88(%ebp,%ebx,2)
	addl	$1, %edx
	cmpl	%ecx, -172(%ebp)
	je	L1510
	movl	%esi, %eax
	cmpb	$31, %dl
	jbe	L1652
L1510:
	addl	$1, %edi
	movl	%edi, %eax
	movzbl	%al, %eax
	cmpl	%eax, -272(%ebp)
	jg	L1517
L1680:
	movl	-176(%ebp), %eax
	movb	%dl, -216(%ebp)
	movl	-276(%ebp), %edi
	movl	164(%eax), %edx
	testl	%edx, %edx
	jg	L1674
L1519:
	call	*_glad_glPopMatrix
	movl	-184(%ebp), %eax
	movzwl	12(%eax), %eax
	movl	%eax, %edx
	shrw	$3, %ax
	shrw	$2, %dx
	andl	$1, %eax
	andl	$1, %edx
	xorl	$1, %eax
	xorl	$1, %edx
	cmpb	%al, %dl
	je	L1566
	cmpl	$1028, _culledface
	movl	$1029, %edx
	movl	$1028, %eax
	cmove	%edx, %eax
	movl	%eax, _culledface
	movl	%eax, (%esp)
	call	*_glad_glCullFace
	subl	$4, %esp
L1566:
	movl	$0, _globalnoeffect
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
L1516:
	.cfi_restore_state
	addb	$1, -180(%ebp)
	movzbl	-180(%ebp), %edx
	cmpl	%edx, %ebx
	jg	L1504
L1502:
	movl	-176(%ebp), %eax
	movb	$0, -216(%ebp)
	movl	164(%eax), %edx
	testl	%edx, %edx
	jle	L1519
L1674:
	movl	$0, -172(%ebp)
	.p2align 4
	.p2align 3
L1565:
	movl	-176(%ebp), %ebx
	movl	-184(%ebp), %ecx
	movl	196(%ebx), %eax
	movl	68(%ebx), %ebx
	movl	%eax, -212(%ebp)
	movzbl	17(%ecx), %eax
	testl	%ebx, %ebx
	je	L1579
	movb	$0, -204(%ebp)
	movl	%eax, %edx
	movb	%al, -208(%ebp)
	jmp	L1529
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1522:
	movl	144(%ebx), %ebx
	testl	%ebx, %ebx
	je	L1655
L1675:
	movzbl	17(%ecx), %edx
L1529:
	cmpb	%dl, (%ebx)
	jne	L1522
	movswl	14(%ecx), %esi
	movl	4(%ebx), %eax
	movl	%esi, -200(%ebp)
	leal	0(,%esi,4), %edx
	movl	%eax, -180(%ebp)
	movl	%esi, %eax
	jmp	L1523
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1525:
	leal	0(,%eax,4), %edx
	leal	(%edx,%eax), %esi
	movzbl	_tile2model+17(,%esi,4), %esi
	cmpl	%esi, %edi
	je	L1580
L1523:
	addl	%edx, %eax
	movswl	_tile2model+4(,%eax,4), %eax
	cmpl	$-1, %eax
	jne	L1525
	movl	-200(%ebp), %esi
L1524:
	leal	(%esi,%esi,4), %eax
	movsbl	_tile2model+16(,%eax,4), %eax
	cmpl	%eax, -180(%ebp)
	jne	L1522
	movl	-172(%ebp), %eax
	cmpl	%eax, 8(%ebx)
	jne	L1522
	movss	152(%ebx), %xmm0
	ucomiss	-264(%ebp), %xmm0
	jp	L1590
	je	L1527
L1590:
	movss	%xmm0, _mdspritematerial+80
L1527:
	movss	156(%ebx), %xmm0
	movl	144(%ebx), %ebx
	movb	$1, -204(%ebp)
	movss	%xmm0, _mdspritematerial+84
	testl	%ebx, %ebx
	jne	L1675
	.p2align 4
	.p2align 3
L1655:
	movzbl	-208(%ebp), %eax
L1520:
	movzbl	_curbasepal, %edx
	testb	%dl, %dl
	sete	%cl
	testb	%cl, -204(%ebp)
	jne	L1591
	cmpb	$0, -265(%ebp)
	je	L1591
	movl	-184(%ebp), %eax
	xorl	%esi, %esi
	movzbl	17(%eax), %ecx
	movl	_prhighpalookups(,%edx,4), %eax
	movl	4(%eax,%ecx,8), %eax
	movl	%eax, _mdspritematerial+56
L1532:
	movl	-184(%ebp), %eax
	movswl	14(%eax), %ebx
	movl	%ebx, %eax
	leal	0(,%ebx,4), %edx
	jmp	L1533
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1535:
	leal	0(,%eax,4), %edx
	leal	(%edx,%eax), %ecx
	movzbl	_tile2model+17(,%ecx,4), %ecx
	cmpl	%ecx, %edi
	je	L1581
L1533:
	addl	%edx, %eax
	movswl	_tile2model+4(,%eax,4), %eax
	cmpl	$-1, %eax
	jne	L1535
L1534:
	leal	(%ebx,%ebx,4), %eax
	movl	-172(%ebp), %ebx
	movl	%esi, %ecx
	movsbl	_tile2model+16(,%eax,4), %edx
	movl	%ebx, (%esp)
	movl	-176(%ebp), %eax
	call	_mdloadskin
	movl	%eax, _mdspritematerial+44
	testl	%eax, %eax
	jne	L1676
L1536:
	movl	-176(%ebp), %ebx
	addl	$1, -172(%ebp)
	movl	-172(%ebp), %eax
	cmpl	%eax, 164(%ebx)
	jg	L1565
	jmp	L1519
	.p2align 4,,10
	.p2align 3
L1663:
	cmpl	%ecx, -172(%ebp)
	je	L1677
	movl	%esi, %eax
	jmp	L1659
	.p2align 4,,10
	.p2align 3
L1580:
	movl	%eax, %esi
	jmp	L1524
	.p2align 4,,10
	.p2align 3
L1591:
	movzbl	%al, %esi
	jmp	L1532
	.p2align 4,,10
	.p2align 3
L1581:
	movl	%eax, %ebx
	jmp	L1534
	.p2align 4,,10
	.p2align 3
L1676:
	movl	-212(%ebp), %esi
	movl	%ebx, %eax
	sall	$7, %eax
	addl	%eax, %esi
	testb	$1, -266(%ebp)
	je	L1678
L1537:
	movl	$32885, (%esp)
	call	*_glad_glEnableClientState
	movl	-176(%ebp), %ecx
	movl	-172(%ebp), %edx
	subl	$4, %esp
	movl	224(%ecx), %eax
	leal	0(,%edx,4), %ebx
	movl	(%eax,%edx,4), %edx
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$5126, 4(%esp)
	movl	$2, (%esp)
	call	*_glad_glTexCoordPointer
	movl	-176(%ebp), %ecx
	movl	-172(%ebp), %edx
	subl	$16, %esp
	movl	228(%ecx), %eax
	movl	(%eax,%edx,4), %edx
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj
	movl	-176(%ebp), %ecx
	movl	36(%ecx), %eax
	imull	80(%esi), %eax
	movl	$60, 8(%esp)
	movl	$5126, 4(%esp)
	movl	$3, (%esp)
	imull	$60, %eax, %eax
	movl	%eax, 12(%esp)
	call	*_glad_glVertexPointer
	movl	-176(%ebp), %ecx
	subl	$16, %esp
	movl	36(%ecx), %eax
	imull	80(%esi), %eax
	movl	$60, 4(%esp)
	movl	$5126, (%esp)
	imull	$60, %eax, %eax
	addl	$12, %eax
	movl	%eax, 8(%esp)
	call	*_glad_glNormalPointer
	movl	-176(%ebp), %ecx
	movl	80(%esi), %edx
	subl	$12, %esp
	movl	36(%ecx), %eax
	imull	%edx, %eax
	imull	$60, %eax, %eax
	addl	$24, %eax
	movl	%eax, _mdspritematerial+20
	movl	_pr_gpusmoothing, %eax
	testl	%eax, %eax
	je	L1562
	imull	40(%ecx), %edx
	imull	$60, %edx, %eax
	movl	%eax, _mdspritematerial+4
L1562:
	movl	-176(%ebp), %eax
	movl	220(%eax), %eax
	movl	(%eax,%ebx), %edx
	movl	$34963, %eax
	call	__Z18buildgl_bindBufferjj
	movl	%edi, -180(%ebp)
	movzbl	-216(%ebp), %ebx
	movl	$0, _curlight
L1564:
	movl	%ebx, %ecx
	leal	-88(%ebp), %edx
	movl	$_mdspritematerial, %eax
	call	_polymer_bindmaterial.lto_priv.0
	movl	$0, 12(%esp)
	movl	$5125, 8(%esp)
	movl	84(%esi), %edx
	movl	%eax, %edi
	movl	$4, (%esp)
	leal	(%edx,%edx,2), %edx
	movl	%edx, 4(%esp)
	call	*_glad_glDrawElements
	movl	%edi, %eax
	subl	$16, %esp
	call	_polymer_unbindmaterial.lto_priv.0
	movl	_curlight, %eax
	addl	$1, %eax
	movl	%eax, _curlight
	cmpl	%eax, %ebx
	jg	L1679
L1563:
	movl	$34963, %eax
	movl	-180(%ebp), %edi
	call	__Z18buildgl_bindBufferjj.constprop.0
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj.constprop.0
	movl	$32885, (%esp)
	call	*_glad_glDisableClientState
	subl	$4, %esp
	jmp	L1536
	.p2align 4,,10
	.p2align 3
L1679:
	cmpl	_pr_maxlightpasses, %eax
	jl	L1564
	jmp	L1563
L1677:
	addl	$1, %edi
	movzbl	-200(%ebp), %edx
	movl	%edi, %eax
	movzbl	%al, %eax
	cmpl	%eax, -272(%ebp)
	jg	L1517
	jmp	L1680
L1579:
	movb	$0, -204(%ebp)
	jmp	L1520
L1678:
	movl	-184(%ebp), %eax
	movswl	14(%eax), %ebx
	movl	%ebx, %eax
	leal	0(,%ebx,4), %edx
	jmp	L1538
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1540:
	leal	0(,%eax,4), %edx
	leal	(%edx,%eax), %ecx
	movzbl	_tile2model+17(,%ecx,4), %ecx
	cmpl	%ecx, %edi
	je	L1582
L1538:
	addl	%edx, %eax
	movswl	_tile2model+4(,%eax,4), %eax
	cmpl	$-1, %eax
	jne	L1540
L1539:
	leal	(%ebx,%ebx,4), %eax
	movl	$255, %ecx
	movsbl	_tile2model+16(,%eax,4), %edx
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	movl	-176(%ebp), %ebx
	movl	%ebx, %eax
	call	_mdloadskin
	movl	68(%ebx), %ebx
	movl	%eax, _mdspritematerial+60
	movl	-184(%ebp), %eax
	movswl	14(%eax), %ecx
	testl	%ebx, %ebx
	je	L1541
	movl	%esi, -204(%ebp)
	jmp	L1546
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1542:
	movl	144(%ebx), %ebx
	testl	%ebx, %ebx
	je	L1681
L1546:
	cmpb	$-1, (%ebx)
	jne	L1542
	movl	4(%ebx), %eax
	movl	%ecx, -200(%ebp)
	leal	0(,%ecx,4), %edx
	movl	%eax, -180(%ebp)
	movl	%ecx, %eax
	jmp	L1543
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1545:
	leal	0(,%eax,4), %edx
	leal	(%edx,%eax), %esi
	movzbl	_tile2model+17(,%esi,4), %esi
	cmpl	%esi, %edi
	je	L1583
L1543:
	addl	%edx, %eax
	movswl	_tile2model+4(,%eax,4), %eax
	cmpl	$-1, %eax
	jne	L1545
	movl	-200(%ebp), %esi
L1544:
	leal	(%esi,%esi,4), %eax
	movsbl	_tile2model+16(,%eax,4), %eax
	cmpl	%eax, -180(%ebp)
	jne	L1542
	movl	-172(%ebp), %eax
	cmpl	%eax, 8(%ebx)
	jne	L1542
	movss	148(%ebx), %xmm0
	movl	-184(%ebp), %eax
	movl	144(%ebx), %ebx
	movss	%xmm0, _mdspritematerial+68
	movss	%xmm0, _mdspritematerial+64
	movswl	14(%eax), %ecx
	testl	%ebx, %ebx
	jne	L1546
L1681:
	movl	-204(%ebp), %esi
L1541:
	movl	%ecx, %ebx
	movl	%ecx, %eax
	leal	0(,%ecx,4), %edx
	jmp	L1547
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1549:
	leal	0(,%eax,4), %edx
	leal	(%edx,%eax), %ecx
	movzbl	_tile2model+17(,%ecx,4), %ecx
	cmpl	%ecx, %edi
	je	L1584
L1547:
	addl	%edx, %eax
	movswl	_tile2model+4(,%eax,4), %eax
	cmpl	$-1, %eax
	jne	L1549
L1548:
	leal	(%ebx,%ebx,4), %eax
	movl	$253, %ecx
	movsbl	_tile2model+16(,%eax,4), %edx
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	movl	-176(%ebp), %eax
	call	_mdloadskin
	movl	%eax, _mdspritematerial+76
	movl	-184(%ebp), %eax
	movswl	14(%eax), %ebx
	movl	%ebx, %eax
	leal	0(,%ebx,4), %edx
	jmp	L1550
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1552:
	leal	0(,%eax,4), %edx
	leal	(%edx,%eax), %ecx
	movzbl	_tile2model+17(,%ecx,4), %ecx
	cmpl	%ecx, %edi
	je	L1585
L1550:
	addl	%edx, %eax
	movswl	_tile2model+4(,%eax,4), %eax
	cmpl	$-1, %eax
	jne	L1552
L1551:
	leal	(%ebx,%ebx,4), %eax
	movl	$252, %ecx
	movsbl	_tile2model+16(,%eax,4), %edx
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	movl	-176(%ebp), %ebx
	movl	%ebx, %eax
	call	_mdloadskin
	movl	68(%ebx), %ebx
	movl	%eax, _mdspritematerial+8
	movl	-184(%ebp), %eax
	movswl	14(%eax), %ecx
	testl	%ebx, %ebx
	je	L1553
	movl	%esi, -204(%ebp)
	jmp	L1558
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1554:
	movl	144(%ebx), %ebx
	testl	%ebx, %ebx
	je	L1682
L1558:
	cmpb	$-4, (%ebx)
	jne	L1554
	movl	4(%ebx), %eax
	movl	%ecx, -200(%ebp)
	leal	0(,%ecx,4), %edx
	movl	%eax, -180(%ebp)
	movl	%ecx, %eax
	jmp	L1555
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1557:
	leal	0(,%eax,4), %edx
	leal	(%edx,%eax), %esi
	movzbl	_tile2model+17(,%esi,4), %esi
	cmpl	%esi, %edi
	je	L1586
L1555:
	addl	%edx, %eax
	movswl	_tile2model+4(,%eax,4), %eax
	cmpl	$-1, %eax
	jne	L1557
	movl	-200(%ebp), %esi
L1556:
	leal	(%esi,%esi,4), %eax
	movsbl	_tile2model+16(,%eax,4), %eax
	cmpl	%eax, -180(%ebp)
	jne	L1554
	movl	-172(%ebp), %eax
	cmpl	%eax, 8(%ebx)
	jne	L1554
	movss	152(%ebx), %xmm0
	movl	-184(%ebp), %eax
	movss	%xmm0, _mdspritematerial+12
	movss	156(%ebx), %xmm0
	movl	144(%ebx), %ebx
	movss	%xmm0, _mdspritematerial+16
	movswl	14(%eax), %ecx
	testl	%ebx, %ebx
	jne	L1558
L1682:
	movl	-204(%ebp), %esi
L1553:
	movl	%ecx, %ebx
	movl	%ecx, %eax
	leal	0(,%ecx,4), %edx
	jmp	L1559
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1561:
	leal	0(,%eax,4), %edx
	leal	(%edx,%eax), %ecx
	movzbl	_tile2model+17(,%ecx,4), %ecx
	cmpl	%ecx, %edi
	je	L1587
L1559:
	addl	%edx, %eax
	movswl	_tile2model+4(,%eax,4), %eax
	cmpl	$-1, %eax
	jne	L1561
L1560:
	leal	(%ebx,%ebx,4), %eax
	movl	$254, %ecx
	movsbl	_tile2model+16(,%eax,4), %edx
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	movl	-176(%ebp), %eax
	call	_mdloadskin
	movl	%eax, _mdspritematerial+92
	jmp	L1537
L1583:
	movl	%eax, %esi
	jmp	L1544
L1586:
	movl	%eax, %esi
	jmp	L1556
L1467:
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 8(%esp)
	movss	-264(%ebp), %xmm6
	movl	$0xc2b40000, (%esp)
	movss	%xmm6, 4(%esp)
	call	*_glad_glRotatef
	subl	$16, %esp
	jmp	L1468
L1568:
	movl	%eax, %ebx
	jmp	L1450
L1470:
	movl	-184(%ebp), %ebx
	xorps	%xmm0, %xmm0
	movswl	14(%ebx), %eax
	movzbl	21(%ebx), %edx
	movswl	_tilesiz+2(,%eax,4), %eax
	movl	$0x00000000, 4(%esp)
	movl	$0x00000000, (%esp)
	imull	%edx, %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	LC77, %xmm0
	movss	%xmm0, 8(%esp)
	call	*_glad_glTranslatef
	movss	LC45, %xmm0
	subl	$12, %esp
	movss	%xmm0, 8(%esp)
	movss	-264(%ebp), %xmm5
	movss	%xmm0, -172(%ebp)
	movss	%xmm5, 4(%esp)
	movss	%xmm5, (%esp)
	call	*_glad_glScalef
	movzwl	12(%ebx), %eax
	movss	-172(%ebp), %xmm0
	subl	$12, %esp
	movl	%eax, %edx
	andw	$4, %dx
	je	L1473
	jmp	L1471
L1666:
	movss	_fglobalposy, %xmm6
	movss	4(%esi), %xmm0
	addl	%ebx, %eax
	movss	_fglobalposz, %xmm3
	movss	LC59, %xmm2
	subss	%xmm6, %xmm0
	movswl	_globalang, %edx
	movss	_fglobalposx, %xmm1
	movss	%xmm6, -172(%ebp)
	movaps	%xmm3, %xmm5
	mulss	%xmm2, %xmm5
	subl	%edx, %eax
	movss	%xmm0, -216(%ebp)
	movss	8(%esi), %xmm0
	andl	$2047, %eax
	sall	$16, %eax
	addl	_qglobalang, %eax
	subss	%xmm3, %xmm0
	andl	$134217727, %eax
	movss	%xmm5, -180(%ebp)
	movss	LC46, %xmm5
	mulss	%xmm2, %xmm0
	movups	%xmm5, -200(%ebp)
	xorps	%xmm1, %xmm5
	subss	(%esi), %xmm1
	movss	%xmm5, -204(%ebp)
	movss	LC75, %xmm5
	movss	%xmm1, -224(%ebp)
	movss	%xmm5, -212(%ebp)
	movss	%xmm0, -220(%ebp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	LC74, %xmm0
	mulss	%xmm5, %xmm0
	jmp	L1460
L1668:
	movl	_qglobalang, %eax
	xorps	%xmm1, %xmm1
	movss	-212(%ebp), %xmm2
	movss	%xmm0, -240(%ebp)
	andl	$134217727, %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	LC74, %xmm1
	mulss	%xmm1, %xmm2
	mulss	LC78, %xmm1
	subss	LC76, %xmm2
	movss	%xmm2, -208(%ebp)
	movss	%xmm1, (%esp)
	movss	%xmm1, -232(%ebp)
	call	_cosf
	movss	-232(%ebp), %xmm1
	xorps	-200(%ebp), %xmm1
	fstps	-228(%ebp)
	movss	%xmm1, (%esp)
	call	_sinf
	movl	-184(%ebp), %esi
	xorps	%xmm2, %xmm2
	movss	LC79, %xmm1
	movss	-204(%ebp), %xmm7
	fstps	-232(%ebp)
	movswl	30(%esi), %eax
	sall	$6, %eax
	addl	_spriteext, %eax
	cvtsi2ssl	36(%eax), %xmm2
	divss	%xmm2, %xmm1
	movss	%xmm1, -236(%ebp)
	movss	%xmm7, 8(%esp)
	movss	-180(%ebp), %xmm7
	movss	%xmm7, 4(%esp)
	movss	-172(%ebp), %xmm7
	movss	%xmm7, (%esp)
	call	*%ebx
	movss	-232(%ebp), %xmm4
	subl	$12, %esp
	movss	%xmm4, 12(%esp)
	movl	$0x00000000, 8(%esp)
	movss	-228(%ebp), %xmm3
	xorps	-200(%ebp), %xmm3
	movss	%xmm3, 4(%esp)
	movss	_horizang, %xmm2
	movss	%xmm2, (%esp)
	call	*_glad_glRotatef
	movss	-228(%ebp), %xmm3
	xorps	%xmm2, %xmm2
	subl	$16, %esp
	movss	%xmm3, 12(%esp)
	movl	$0x00000000, 8(%esp)
	movss	-232(%ebp), %xmm4
	movss	%xmm4, 4(%esp)
	movswl	30(%esi), %eax
	sall	$6, %eax
	addl	_spriteext, %eax
	movswl	26(%eax), %eax
	cvtsi2ssl	%eax, %xmm2
	mulss	-212(%ebp), %xmm2
	movss	%xmm2, (%esp)
	call	*_glad_glRotatef
	movss	LC1, %xmm6
	subl	$16, %esp
	movl	$0x00000000, 12(%esp)
	movss	%xmm6, -264(%ebp)
	movss	%xmm6, 8(%esp)
	movl	$0x00000000, 4(%esp)
	movss	-208(%ebp), %xmm2
	xorps	-200(%ebp), %xmm2
	movss	%xmm2, (%esp)
	call	*_glad_glRotatef
	movss	-264(%ebp), %xmm6
	subl	$16, %esp
	movss	%xmm6, 8(%esp)
	movss	%xmm6, 4(%esp)
	movss	-236(%ebp), %xmm1
	movss	%xmm1, (%esp)
	call	*_glad_glScalef
	subl	$12, %esp
	movl	$0x00000000, 12(%esp)
	movss	-264(%ebp), %xmm6
	movl	$0x00000000, 4(%esp)
	movss	%xmm6, 8(%esp)
	movss	-208(%ebp), %xmm2
	movss	%xmm2, (%esp)
	call	*_glad_glRotatef
	movss	-224(%ebp), %xmm5
	subl	$16, %esp
	movss	%xmm5, 8(%esp)
	movss	-220(%ebp), %xmm5
	movss	%xmm5, 4(%esp)
	movss	-216(%ebp), %xmm5
	movss	%xmm5, (%esp)
	call	*_glad_glTranslatef
	subl	$12, %esp
	movl	$0x00000000, 12(%esp)
	movss	-264(%ebp), %xmm6
	movl	$0x00000000, 4(%esp)
	movss	%xmm6, 8(%esp)
	movss	-240(%ebp), %xmm0
	movss	%xmm0, (%esp)
	call	*_glad_glRotatef
	subl	$16, %esp
	jmp	L1466
L1587:
	movl	%eax, %ebx
	jmp	L1560
L1669:
	movl	-184(%ebp), %ebx
	xorps	%xmm0, %xmm0
	movswl	14(%ebx), %eax
	movzbl	21(%ebx), %edx
	movswl	_tilesiz+2(,%eax,4), %eax
	movl	$0x00000000, 4(%esp)
	movl	$0x00000000, (%esp)
	imull	%edx, %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	LC84, %xmm0
	movss	%xmm0, 8(%esp)
	call	*_glad_glTranslatef
	subl	$12, %esp
	jmp	L1469
L1499:
	movb	$85, _mdspritematerial+75
	movss	LC73, %xmm0
	jmp	L1498
L1582:
	movl	%eax, %ebx
	jmp	L1539
L1584:
	movl	%eax, %ebx
	jmp	L1548
L1585:
	movl	%eax, %ebx
	jmp	L1551
L1575:
	movb	$1, -265(%ebp)
	movl	%eax, %ecx
	movss	LC51, %xmm1
	jmp	L1494
L1672:
	movzbl	%al, %eax
	xorps	%xmm3, %xmm3
	xorps	%xmm2, %xmm2
	movss	LC51, %xmm1
	cvtsi2ssl	%eax, %xmm3
	movzbl	_hictinting+2(,%edx,8), %eax
	cvtsi2ssl	%eax, %xmm2
	movzbl	_hictinting+3(,%edx,8), %eax
	movzbl	_hictinting+4(,%edx,8), %edx
	mulss	%xmm3, %xmm2
	mulss	%xmm1, %xmm2
	cvttss2sil	%xmm2, %ebx
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	mulss	%xmm3, %xmm2
	mulss	%xmm1, %xmm2
	cvttss2sil	%xmm2, %eax
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%edx, %xmm2
	mulss	%xmm3, %xmm2
	mulss	%xmm1, %xmm2
	cvttss2sil	%xmm2, %ecx
	jmp	L1493
L1665:
	movl	-176(%ebp), %esi
	movl	164(%esi), %eax
	leal	0(,%eax,4), %ebx
	movl	%eax, -172(%ebp)
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1646
	movl	%eax, 220(%esi)
	movl	164(%esi), %eax
	leal	0(,%eax,4), %ebx
	movl	%eax, -172(%ebp)
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1646
	movl	-176(%ebp), %ebx
	movl	%eax, 224(%ebx)
	movl	164(%ebx), %eax
	leal	0(,%eax,4), %ebx
	movl	%eax, -172(%ebp)
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1646
	movl	-176(%ebp), %ebx
	xorl	%esi, %esi
	movl	%eax, 228(%ebx)
	movl	220(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	164(%ebx), %eax
	movl	%eax, (%esp)
	call	*_glad_glGenBuffers
	movl	224(%ebx), %eax
	subl	$8, %esp
	movl	%eax, 4(%esp)
	movl	164(%ebx), %eax
	movl	%eax, (%esp)
	call	*_glad_glGenBuffers
	movl	228(%ebx), %eax
	subl	$8, %esp
	movl	%eax, 4(%esp)
	movl	164(%ebx), %eax
	movl	%eax, (%esp)
	call	*_glad_glGenBuffers
	movl	164(%ebx), %ebx
	subl	$8, %esp
	testl	%ebx, %ebx
	jle	L1452
	movl	%edi, -172(%ebp)
	movl	-176(%ebp), %edi
L1458:
	movl	220(%edi), %eax
	movl	%esi, %ebx
	sall	$7, %ebx
	addl	196(%edi), %ebx
	movl	(%eax,%esi,4), %edx
	movl	$34963, %eax
	call	__Z18buildgl_bindBufferjj
	movl	$35044, 12(%esp)
	movl	108(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	84(%ebx), %eax
	movl	$34963, (%esp)
	leal	(%eax,%eax,2), %eax
	sall	$2, %eax
	movl	%eax, 4(%esp)
	call	*_glad_glBufferData
	movl	$34963, %eax
	subl	$16, %esp
	call	__Z18buildgl_bindBufferjj.constprop.0
	movl	224(%edi), %eax
	movl	(%eax,%esi,4), %edx
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj
	movl	$35044, 12(%esp)
	movl	116(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	80(%ebx), %eax
	movl	$34962, (%esp)
	sall	$3, %eax
	movl	%eax, 4(%esp)
	call	*_glad_glBufferData
	movl	228(%edi), %eax
	subl	$16, %esp
	movl	(%eax,%esi,4), %edx
	movl	$34962, %eax
	addl	$1, %esi
	call	__Z18buildgl_bindBufferjj
	movl	$35044, 12(%esp)
	movl	124(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	72(%ebx), %eax
	imull	80(%ebx), %eax
	movl	$34962, (%esp)
	imull	$60, %eax, %eax
	movl	%eax, 4(%esp)
	call	*_glad_glBufferData
	movl	$34962, %eax
	subl	$16, %esp
	call	__Z18buildgl_bindBufferjj.constprop.0
	cmpl	164(%edi), %esi
	jl	L1458
	movl	-172(%ebp), %edi
	jmp	L1452
L1673:
	movl	%esi, %edx
	movb	$0, -265(%ebp)
	cmpb	$-1, %dl
	jne	L1497
	jmp	L1494
L1646:
	movl	%ebx, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE53:
	.globl	_glad_glGetAttribLocation
	.bss
	.align 4
_glad_glGetAttribLocation:
	.space 4
	.globl	_glad_glGetShaderSource
	.align 4
_glad_glGetShaderSource:
	.space 4
	.globl	_glad_glGetProgramInfoLog
	.align 4
_glad_glGetProgramInfoLog:
	.space 4
	.globl	_glad_glGetProgramiv
	.align 4
_glad_glGetProgramiv:
	.space 4
	.section .rdata,"dr"
	.align 4
LC85:
	.ascii "#version 120\12#extension GL_ARB_texture_rectangle : enable\12\12\0"
LC86:
	.ascii "\0"
	.align 4
LC87:
	.ascii "attribute vec4 nextFrameData;\12attribute vec4 nextFrameNormal;\12uniform float frameProgress;\12\12\0"
	.align 4
LC88:
	.ascii "  vec4 currentFramePosition;\12  vec4 nextFramePosition;\12\12  currentFramePosition = curVertex * -(frameProgress - 1.0);\12  nextFramePosition = nextFrameData * frameProgress;\12  curVertex = currentFramePosition + nextFramePosition;\12\12  currentFramePosition = vec4(curNormal, 1.0) * -(frameProgress - 1.0);\12  nextFramePosition = nextFrameNormal * frameProgress;\12  curNormal = vec3(currentFramePosition + nextFramePosition);\12\12\0"
LC89:
	.ascii "#define PR_LIGHTING_PASS\12\12\0"
	.align 4
LC90:
	.ascii "  result = vec4(0.0, 0.0, 0.0, 1.0);\12\12\0"
	.align 4
LC91:
	.ascii "attribute vec3 T;\12attribute vec3 B;\12attribute vec3 N;\12uniform vec3 eyePosition;\12varying vec3 tangentSpaceEyeVec;\12\12#define PR_USE_NORMAL_MAP\12\12\0"
	.align 4
LC92:
	.ascii "  TBN = mat3(T, B, N);\12  tangentSpaceEyeVec = eyePosition - vec3(curVertex);\12  tangentSpaceEyeVec = TBN * tangentSpaceEyeVec;\12\12\0"
	.align 4
LC93:
	.ascii "uniform sampler2D normalMap;\12uniform vec2 normalBias;\12varying vec3 tangentSpaceEyeVec;\12\12#define PR_USE_NORMAL_MAP\12\12\0"
	.align 4
LC94:
	.ascii "  vec4 normalStep;\12  float biasedHeight;\12\12  eyeVec = normalize(tangentSpaceEyeVec);\12\12  for (int i = 0; i < 4; i++) {\12    normalStep = texture2D(normalMap, commonTexCoord.st);\12    biasedHeight = normalStep.a * normalBias.x - normalBias.y;\12    commonTexCoord += (biasedHeight - commonTexCoord.z) * normalStep.z * eyeVec;\12  }\12\12  normalTexel = texture2D(normalMap, commonTexCoord.st);\12\12\0"
LC95:
	.ascii "varying vec3 horizDistance;\12\12\0"
	.align 4
LC96:
	.ascii "  gl_TexCoord[0] = gl_MultiTexCoord0;\12  horizDistance = vec3(gl_ModelViewMatrix * curVertex);\12\12\0"
	.align 4
LC97:
	.ascii "uniform sampler2D artMap;\12uniform sampler2D basePalMap;\12uniform sampler2DRect lookupMap;\12uniform float shadeOffset;\12uniform float visibility;\12varying vec3 horizDistance;\12\12\0"
	.align 4
LC98:
	.ascii "  float shadeLookup = length(horizDistance) * (1.0 / 1.024) * visibility + shadeOffset;\12  float colorIndex = texture2D(artMap, commonTexCoord.st).r * 256.0;\12  float colorIndexNear = texture2DRect(lookupMap, vec2(colorIndex, floor(shadeLookup))).r;\12  float colorIndexFar = texture2DRect(lookupMap, vec2(colorIndex, floor(shadeLookup + 1.0))).r;\12  float colorIndexFullbright = texture2DRect(lookupMap, vec2(colorIndex, 0.0)).r;\12  vec3 texelNear = texture2D(basePalMap, vec2(colorIndexNear, 0.5)).rgb;\12  vec3 texelFar = texture2D(basePalMap, vec2(colorIndexFar, 0.5)).rgb;\12  diffuseTexel.rgb = texture2D(basePalMap, vec2(colorIndexFullbright, 0.5)).rgb;\12\12#ifndef PR_LIGHTING_PASS\12  result.rgb = mix(texelNear, texelFar, fract(shadeLookup));\12  result.a = float(colorIndex != 256.0);\12#endif\12\12\0"
LC99:
	.ascii "uniform vec2 diffuseScale;\12\12\0"
	.align 4
LC100:
	.ascii "  gl_TexCoord[0] = vec4(diffuseScale, 1.0, 1.0) * gl_MultiTexCoord0;\12\12\0"
	.align 4
LC101:
	.ascii "uniform sampler2D diffuseMap;\12\12\0"
	.align 4
LC102:
	.ascii "  diffuseTexel = texture2D(diffuseMap, commonTexCoord.st);\12\12\0"
	.align 4
LC103:
	.ascii "uniform vec2 detailScale;\12varying vec2 fragDetailScale;\12\12\0"
	.align 4
LC104:
	.ascii "  fragDetailScale = detailScale;\12#ifndef PR_USE_NORMAL_MAP\12  gl_TexCoord[1] = vec4(detailScale, 1.0, 1.0) * gl_MultiTexCoord0;\12#endif\12\12\0"
	.align 4
LC105:
	.ascii "uniform sampler2D detailMap;\12varying vec2 fragDetailScale;\12\12\0"
	.align 4
LC106:
	.ascii "#ifndef PR_USE_NORMAL_MAP\12  diffuseTexel *= texture2D(detailMap, gl_TexCoord[1].st);\12#else\12  diffuseTexel *= texture2D(detailMap, commonTexCoord.st * fragDetailScale);\12#endif\12  diffuseTexel.rgb *= 2.0;\12\12\0"
LC107:
	.ascii "  gl_FrontColor = gl_Color;\12\12\0"
	.align 4
LC108:
	.ascii "#ifndef PR_LIGHTING_PASS\12  result *= vec4(gl_Color);\12#endif\12\12\0"
	.align 4
LC109:
	.ascii "#ifndef PR_LIGHTING_PASS\12  result *= diffuseTexel;\12#endif\12\12\0"
	.align 4
LC110:
	.ascii "uniform sampler3D highPalookupMap;\12\12\0"
	.align 4
LC111:
	.ascii "  float highPalScale = 0.9921875; // for 6 bits\12  float highPalBias = 0.00390625;\12\12#ifndef PR_LIGHTING_PASS\12  result.rgb = texture3D(highPalookupMap, result.rgb * highPalScale + highPalBias).rgb;\12#endif\12  diffuseTexel.rgb = texture3D(highPalookupMap, diffuseTexel.rgb * highPalScale + highPalBias).rgb;\12\12\0"
	.align 4
LC112:
	.ascii "uniform sampler2D specMap;\12\12#define PR_USE_SPECULAR_MAP\12\12\0"
	.align 4
LC113:
	.ascii "  specTexel = texture2D(specMap, commonTexCoord.st);\12\12\0"
LC114:
	.ascii "uniform vec2 specMaterial;\12\12\0"
	.align 4
LC115:
	.ascii "  specularMaterial = specMaterial;\12\12\0"
	.align 4
LC116:
	.ascii "uniform sampler2DRect mirrorMap;\12\12\0"
	.align 4
LC117:
	.ascii "  vec2 mirrorCoords = gl_FragCoord.st;\12#ifdef PR_USE_NORMAL_MAP\12  mirrorCoords += 100.0 * (normalTexel.rg - 0.5);\12#endif\12  vec4 mirrorTexel = texture2DRect(mirrorMap, mirrorCoords);\12  result = vec4((result.rgb * -(specTexel.a - 1.0)) + (mirrorTexel.rgb * specTexel.rgb * specTexel.a), result.a);\12\12\0"
LC118:
	.ascii "uniform bool linearFog;\12\0"
	.align 4
LC119:
	.ascii "  float fogFactor;\12  float fragDepth = gl_FragCoord.z / gl_FragCoord.w;\12  if (!linearFog) {\12    fragDepth *= fragDepth;\12    fogFactor = exp2(-gl_Fog.density * gl_Fog.density * fragDepth * 1.442695);\12  } else {\12    fogFactor = gl_Fog.scale * (gl_Fog.end - fragDepth);\12    fogFactor = clamp(fogFactor, 0.0, 1.0);  }\12  result.rgb = mix(gl_Fog.color.rgb, result.rgb, fogFactor);\12\12\0"
LC120:
	.ascii "uniform sampler2D glowMap;\12\12\0"
	.align 4
LC121:
	.ascii "  vec4 glowTexel = texture2D(glowMap, commonTexCoord.st);\12  result = vec4((result.rgb * -(glowTexel.a - 1.0)) + (glowTexel.rgb * glowTexel.a), result.a);\12\12\0"
	.align 4
LC122:
	.ascii "uniform mat4 shadowProjMatrix;\12\12\0"
	.align 4
LC123:
	.ascii "  gl_TexCoord[2] = shadowProjMatrix * curVertex;\12\12\0"
	.align 4
LC124:
	.ascii "uniform sampler2DShadow shadowMap;\12\12\0"
	.align 4
LC125:
	.ascii "  shadowResult = shadow2DProj(shadowMap, gl_TexCoord[2]).a;\12\12\0"
LC126:
	.ascii "uniform sampler2D lightMap;\12\12\0"
	.align 4
LC127:
	.ascii "  lightTexel = texture2D(lightMap, vec2(gl_TexCoord[2].s, -gl_TexCoord[2].t) / gl_TexCoord[2].q).rgb;\12\12\0"
	.align 4
LC128:
	.ascii "uniform vec3 spotDir;\12uniform vec2 spotRadius;\12#define PR_SPOTLIGHT\12\12\0"
	.align 4
LC129:
	.ascii "  spotVector = spotDir;\12  spotCosRadius = spotRadius;\12\12\0"
	.align 4
LC130:
	.ascii "varying vec3 vertexNormal;\12varying vec3 eyeVector;\12varying vec3 lightVector;\12varying vec3 tangentSpaceLightVector;\12\12\0"
	.align 4
LC131:
	.ascii "  vec3 vertexPos = vec3(gl_ModelViewMatrix * curVertex);\12  eyeVector = -vertexPos;\12  lightVector = gl_LightSource[0].ambient.rgb - vertexPos;\12\12#ifdef PR_USE_NORMAL_MAP\12  tangentSpaceLightVector = gl_LightSource[0].specular.rgb - vec3(curVertex);\12  tangentSpaceLightVector = TBN * tangentSpaceLightVector;\12#else\12  vertexNormal = normalize(gl_NormalMatrix * curNormal);\12#endif\12\12\0"
	.align 4
LC132:
	.ascii "  vec3 L = normalize(lightVector);\12  float pointLightDistance = dot(lightVector,lightVector);\12  float lightAttenuation = clamp(-(gl_LightSource[0].linearAttenuation * pointLightDistance - 1.0), 0.0, 1.0);\12  float spotAttenuation = 1.0;\12\12#ifdef PR_SPOTLIGHT\12  float spotCosAngle = dot(-L, normalize(spotVector));\12  spotAttenuation = clamp((spotCosAngle - spotCosRadius.x) * spotCosRadius.y, 0.0, 1.0);\12#endif\12#ifdef PR_USE_NORMAL_MAP\12  vec3 E = eyeVec;\12  vec3 N = normalize(2.0 * (normalTexel.rgb - 0.5));\12  L = normalize(tangentSpaceLightVector);\12#else\12  vec3 E = normalize(eyeVector);\12  vec3 N = normalize(vertexNormal);\12#endif\12\12  float NdotL = max(dot(N, L), 0.0);\12  vec3 R = reflect(-L, N);\12  vec3 lightDiffuse = gl_Color.a * shadowResult * lightTexel *\12                 gl_LightSource[0].diffuse.rgb * lightAttenuation * spotAttenuation;\12  result += vec4(lightDiffuse * diffuseTexel.a * diffuseTexel.rgb * NdotL, 0.0);\12\12#ifndef PR_USE_SPECULAR_MAP\12  specTexel.rgb = diffuseTexel.rgb * diffuseTexel.a;\12#endif\12\12  float lightSpecular = pow( max(dot(R, E), 0.0), specularMaterial.x * specTexel.a) * specularMaterial.y;\12  result += vec4(lightDiffuse * specTexel.rgb * lightSpecular, 0.0);\12\12\0"
	.align 4
LC133:
	.ascii "void main(void)\12{\12  vec4 curVertex = gl_Vertex;\12  vec3 curNormal = gl_Normal;\12  mat3 TBN;\12\12  gl_TexCoord[0] = gl_MultiTexCoord0;\12\12\0"
	.align 4
LC134:
	.ascii "  gl_Position = gl_ModelViewProjectionMatrix * curVertex;\12}\12\0"
	.align 4
LC135:
	.ascii "uniform vec4 u_colorCorrection;\12const vec4 c_vec4_luma_709 = vec4(0.2126, 0.7152, 0.0722, 0.0);\12const vec2 c_vec2_zero_one = vec2(0.0, 1.0);\12void main(void)\12{\12  vec3 commonTexCoord = vec3(gl_TexCoord[0].st, 0.0);\12  vec4 result = vec4(1.0, 1.0, 1.0, 1.0);\12  vec4 diffuseTexel = vec4(1.0, 1.0, 1.0, 1.0);\12  vec4 specTexel = vec4(1.0, 1.0, 1.0, 1.0);\12  vec4 normalTexel;\12  vec3 eyeVec;\12  vec3 spotVector;\12  vec2 spotCosRadius;\12  float shadowResult = 1.0;\12  vec2 specularMaterial = vec2(15.0, 1.0);\12  vec3 lightTexel = vec3(1.0, 1.0, 1.0);\12\12\0"
	.align 4
LC136:
	.ascii "  vec4 v_cc = vec4(u_colorCorrection.x - 1.0, 0.5 * -(u_colorCorrection.y - 1.0), -(u_colorCorrection.z - 1.0), 1.0);\12  gl_FragColor =\12               mat4(c_vec2_zero_one.yxxx, c_vec2_zero_one.xyxx, c_vec2_zero_one.xxyx, v_cc.xxxw) *\12#ifndef PR_LIGHTING_PASS\12               mat4(u_colorCorrection.ywww, u_colorCorrection.wyww, u_colorCorrection.wwyw, v_cc.yyyw) *\12#endif\12               mat4((c_vec4_luma_709.xxxw * v_cc.z) + u_colorCorrection.zwww,\12                      (c_vec4_luma_709.yyyw * v_cc.z) + u_colorCorrection.wzww,\12                      (c_vec4_luma_709.zzzw * v_cc.z) + u_colorCorrection.wwzw,\12                      c_vec2_zero_one.xxxy) *\12               result;\12}\12\0"
	.align 32
__ZL13prprogrambits:
	.long	LC85
	.long	LC86
	.long	LC85
	.long	LC86
	.long	LC87
	.long	LC88
	.long	LC86
	.long	LC86
	.long	LC86
	.long	LC86
	.long	LC89
	.long	LC90
	.long	LC91
	.long	LC92
	.long	LC93
	.long	LC94
	.long	LC95
	.long	LC96
	.long	LC97
	.long	LC98
	.long	LC99
	.long	LC100
	.long	LC101
	.long	LC102
	.long	LC103
	.long	LC104
	.long	LC105
	.long	LC106
	.long	LC86
	.long	LC107
	.long	LC86
	.long	LC108
	.long	LC86
	.long	LC86
	.long	LC86
	.long	LC109
	.long	LC86
	.long	LC86
	.long	LC110
	.long	LC111
	.long	LC86
	.long	LC86
	.long	LC112
	.long	LC113
	.long	LC86
	.long	LC86
	.long	LC114
	.long	LC115
	.long	LC86
	.long	LC86
	.long	LC116
	.long	LC117
	.long	LC86
	.long	LC86
	.long	LC118
	.long	LC119
	.long	LC86
	.long	LC86
	.long	LC120
	.long	LC121
	.long	LC122
	.long	LC123
	.long	LC86
	.long	LC86
	.long	LC86
	.long	LC86
	.long	LC124
	.long	LC125
	.long	LC86
	.long	LC86
	.long	LC126
	.long	LC127
	.long	LC86
	.long	LC86
	.long	LC128
	.long	LC129
	.long	LC130
	.long	LC131
	.long	LC130
	.long	LC132
	.long	LC133
	.long	LC134
	.long	LC135
	.long	LC136
	.globl	_glad_glLightfv
	.bss
	.align 4
_glad_glLightfv:
	.space 4
	.globl	_glad_glUniformMatrix4fv
	.align 4
_glad_glUniformMatrix4fv:
	.space 4
	.section .rdata,"dr"
	.align 32
__ZL10shadowBias:
	.long	1056964608
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1056964608
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1056964608
	.long	0
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	1065353216
	.globl	_glad_glUniform2fv
	.bss
	.align 4
_glad_glUniform2fv:
	.space 4
	.globl	_glad_glUniform3fv
	.align 4
_glad_glUniform3fv:
	.space 4
	.globl	_glad_glBlendEquation
	.align 4
_glad_glBlendEquation:
	.space 4
	.data
	.align 4
__ZL9h_buckets:
	.long	2048
	.space 8
	.long	0
	.globl	_glad_glNormalPointer
	.bss
	.align 4
_glad_glNormalPointer:
	.space 4
.lcomm _mdspritematerial,100,32
.lcomm _mdspritespace,64,32
.lcomm _prlookups,1024,32
.lcomm _prbasepalmaps,1024,32
	.section .rdata,"dr"
	.align 4
__ZZ19polymer_bucketplaneE11quadindices:
	.long	0
	.long	1
	.long	2
	.long	0
	.long	2
	.long	3
	.globl	_pr_maxlightpasses
	.data
	.align 4
_pr_maxlightpasses:
	.long	10
	.globl	_glad_glVertexAttrib3fv
	.bss
	.align 4
_glad_glVertexAttrib3fv:
	.space 4
.lcomm _curlight,4,4
	.globl	_glad_glNormal3f
	.align 4
_glad_glNormal3f:
	.space 4
.lcomm _prindexringoffset,4,4
.lcomm _prbuckethead,4,4
	.section .rdata,"dr"
	.align 32
__ZL10skyboxdata:
	.long	-1090519040
	.long	-1090519040
	.long	1056964608
	.long	0
	.long	1065353216
	.long	-1090519040
	.long	-1090519040
	.long	-1090519040
	.long	1065353216
	.long	1065353216
	.long	-1090519040
	.long	1056964608
	.long	-1090519040
	.long	1065353216
	.long	0
	.long	-1090519040
	.long	1056964608
	.long	1056964608
	.long	0
	.long	0
	.long	-1090519040
	.long	-1090519040
	.long	-1090519040
	.long	0
	.long	1065353216
	.long	1056964608
	.long	-1090519040
	.long	-1090519040
	.long	1065353216
	.long	1065353216
	.long	1056964608
	.long	1056964608
	.long	-1090519040
	.long	1065353216
	.long	0
	.long	-1090519040
	.long	1056964608
	.long	-1090519040
	.long	0
	.long	0
	.long	1056964608
	.long	-1090519040
	.long	-1090519040
	.long	0
	.long	1065353216
	.long	1056964608
	.long	-1090519040
	.long	1056964608
	.long	1065353216
	.long	1065353216
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	1065353216
	.long	0
	.long	1056964608
	.long	1056964608
	.long	-1090519040
	.long	0
	.long	0
	.long	1056964608
	.long	-1090519040
	.long	1056964608
	.long	0
	.long	1065353216
	.long	-1090519040
	.long	-1090519040
	.long	1056964608
	.long	1065353216
	.long	1065353216
	.long	-1090519040
	.long	1056964608
	.long	1056964608
	.long	1065353216
	.long	0
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	0
	.long	0
	.long	-1090519040
	.long	1056964608
	.long	-1090519040
	.long	1065353216
	.long	1065353216
	.long	1056964608
	.long	1056964608
	.long	-1090519040
	.long	1065353216
	.long	0
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	0
	.long	0
	.long	-1090519040
	.long	1056964608
	.long	1056964608
	.long	0
	.long	1065353216
	.long	-1090519040
	.long	-1090519040
	.long	1056964608
	.long	0
	.long	0
	.long	1056964608
	.long	-1090519040
	.long	1056964608
	.long	0
	.long	1065353216
	.long	1056964608
	.long	-1090519040
	.long	-1090519040
	.long	1065353216
	.long	1065353216
	.long	-1090519040
	.long	-1090519040
	.long	-1090519040
	.long	1065353216
	.long	0
	.globl	_globalb
_globalb:
	.byte	-1
	.globl	_globalg
	.set	_globalg,_globalb
	.globl	_globalr
	.set	_globalr,_globalb
	.globl	_glad_glClipPlane
	.bss
	.align 4
_glad_glClipPlane:
	.space 4
	.globl	_glad_glDeleteQueries
	.align 4
_glad_glDeleteQueries:
	.space 4
	.globl	_glad_glGetQueryObjectiv
	.align 4
_glad_glGetQueryObjectiv:
	.space 4
	.globl	_glad_glEndQuery
	.align 4
_glad_glEndQuery:
	.space 4
	.globl	_glad_glBeginQuery
	.align 4
_glad_glBeginQuery:
	.space 4
	.globl	_glad_glGenQueries
	.align 4
_glad_glGenQueries:
	.space 4
.lcomm __ZL8prdidsky,1,1
.lcomm __ZL9curskypal,1,1
.lcomm __ZL11curskyshade,1,1
	.globl	__ZL11sectorqueue.lto_priv.0
	.align 32
__ZL11sectorqueue.lto_priv.0:
	.space 8192
	.globl	__ZL12drawingstate.lto_priv.0
	.align 32
__ZL12drawingstate.lto_priv.0:
	.space 512
.lcomm __ZL7queryid,65536,32
	.section .rdata,"dr"
	.align 4
LC1:
	.long	1065353216
	.align 4
LC2:
	.long	1047395703
	.align 4
LC41:
	.long	1132396544
	.align 4
LC42:
	.long	1132462080
	.align 4
LC44:
	.long	1181376512
	.align 4
LC45:
	.long	-1082130432
	.align 16
LC46:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 4
LC50:
	.long	1097859072
	.align 4
LC51:
	.long	998277249
	.align 4
LC52:
	.long	1090519040
	.align 4
LC54:
	.long	1098907648
	.align 4
LC55:
	.long	1157627904
	.align 4
LC57:
	.long	986542113
	.align 4
LC58:
	.long	981859127
	.align 4
LC59:
	.long	-1115684864
	.align 4
LC60:
	.long	914358272
	.align 4
LC61:
	.long	1031798784
	.align 4
LC62:
	.long	1182792704
	.align 4
LC63:
	.long	981668463
	.align 4
LC68:
	.long	1148846080
	.align 4
LC71:
	.long	1120403456
	.align 4
LC72:
	.long	1126825984
	.align 4
LC73:
	.long	1118437376
	.align 4
LC74:
	.long	931135488
	.align 4
LC75:
	.long	1043595264
	.align 4
LC76:
	.long	1119092736
	.align 4
LC77:
	.long	1048576000
	.align 4
LC78:
	.long	994643931
	.align 4
LC79:
	.long	1199570944
	.align 4
LC82:
	.long	1115684864
	.align 8
LC83:
	.long	0
	.long	1072693248
	.align 4
LC84:
	.long	-1107296256
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_inthash_add;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_lrintf;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	_hash_find;	.scl	2;	.type	32;	.endef
	.def	_texcache_fetch;	.scl	2;	.type	32;	.endef
	.def	_hicfindsubst;	.scl	2;	.type	32;	.endef
	.def	_hash_add;	.scl	2;	.type	32;	.endef
	.def	_tileLoad.isra.0;	.scl	2;	.type	32;	.endef
	.def	_hash_init;	.scl	2;	.type	32;	.endef
	.def	__Z19buildgl_bindTexturejj;	.scl	2;	.type	32;	.endef
	.def	__Z19buildgl_bindTexturejj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_animateoffs;	.scl	2;	.type	32;	.endef
	.def	__Z18buildgl_bindBufferjj;	.scl	2;	.type	32;	.endef
	.def	__Z18buildgl_bindBufferjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_inthash_find;	.scl	2;	.type	32;	.endef
	.def	__Z25buildgl_bindSamplerObjectii;	.scl	2;	.type	32;	.endef
	.def	@getangle@8;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_getzsofslopeptr;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.1;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_calc_and_apply_fog;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_polymer_inb4rotatesprite;	.scl	2;	.type	32;	.endef
	.def	__Z29polymost_startBufferedDrawingi;	.scl	2;	.type	32;	.endef
	.def	__Z19polymost_bufferVert4vec3IfE4vec2IfE;	.scl	2;	.type	32;	.endef
	.def	__Z30polymost_finishBufferedDrawingi;	.scl	2;	.type	32;	.endef
	.def	_wallvisible;	.scl	2;	.type	32;	.endef
	.def	_polymer_updatesector.part.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	_renderPrepareMirror;	.scl	2;	.type	32;	.endef
	.def	_set_globalang;	.scl	2;	.type	32;	.endef
	.def	_renderDrawMasks;	.scl	2;	.type	32;	.endef
	.def	_updateanimation;	.scl	2;	.type	32;	.endef
	.def	_mdloadskin;	.scl	2;	.type	32;	.endef
	.def	_cosf;	.scl	2;	.type	32;	.endef
	.def	_sinf;	.scl	2;	.type	32;	.endef
