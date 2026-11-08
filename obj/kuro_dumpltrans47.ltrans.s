	.file	"<artificial>"
	.text
	.p2align 4
	.def	__ZL10stb__matchPKhj;	.scl	3;	.type	32;	.endef
__ZL10stb__matchPKhj:
LFB0:
	.cfi_startproc
	movl	__ZL9stb__dout.lto_priv.0, %ecx
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	__ZL18stb__barrier_out_e.lto_priv.0, %ebx
	leal	(%ecx,%edx), %esi
	cmpl	%esi, %ebx
	jb	L12
	cmpl	__ZL18stb__barrier_out_b.lto_priv.0, %eax
	jb	L4
	leal	1(%ecx), %ebx
	movl	%ebx, __ZL9stb__dout.lto_priv.0
	movzbl	(%eax), %ebx
	movb	%bl, (%ecx)
	subl	$1, %edx
	je	L1
	addl	%eax, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L5:
	movl	__ZL9stb__dout.lto_priv.0, %ecx
	addl	$1, %eax
	leal	1(%ecx), %ebx
	movl	%ebx, __ZL9stb__dout.lto_priv.0
	movzbl	(%eax), %ebx
	movb	%bl, (%ecx)
	cmpl	%edx, %eax
	jne	L5
L1:
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
L4:
	.cfi_restore_state
	addl	$1, %ebx
	movl	%ebx, __ZL9stb__dout.lto_priv.0
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
L12:
	.cfi_restore_state
	movl	%esi, __ZL9stb__dout.lto_priv.0
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE0:
	.section	.text.unlikely,"x"
LCOLDB3:
	.text
LHOTB3:
	.p2align 4
	.def	__ZL34ImGui_ImplOpenGL3_SetupRenderStateP10ImDrawDataiij;	.scl	3;	.type	32;	.endef
__ZL34ImGui_ImplOpenGL3_SetupRenderStateP10ImDrawDataiij:
LFB2:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%edx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$96, %esp
	.cfi_def_cfa_offset 116
	movl	_GImGui, %eax
	movl	_imgl3wProcs+104, %edx
	testl	%eax, %eax
	je	L14
	movl	132(%eax), %ebx
	movl	%ecx, %ebp
	movl	$3042, (%esp)
	call	*%edx
	.cfi_def_cfa_offset 112
	subl	$4, %esp
	.cfi_def_cfa_offset 116
	movl	$32774, (%esp)
	call	*_imgl3wProcs+24
	.cfi_def_cfa_offset 112
	subl	$4, %esp
	.cfi_def_cfa_offset 116
	movl	$771, 12(%esp)
	movl	$1, 8(%esp)
	movl	$771, 4(%esp)
	movl	$770, (%esp)
	call	*_imgl3wProcs+32
	.cfi_def_cfa_offset 100
	subl	$16, %esp
	.cfi_def_cfa_offset 116
	movl	$2884, (%esp)
	call	*_imgl3wProcs+88
	.cfi_def_cfa_offset 112
	subl	$4, %esp
	.cfi_def_cfa_offset 116
	movl	$2929, (%esp)
	call	*_imgl3wProcs+88
	.cfi_def_cfa_offset 112
	subl	$4, %esp
	.cfi_def_cfa_offset 116
	movl	$2960, (%esp)
	call	*_imgl3wProcs+88
	.cfi_def_cfa_offset 112
	subl	$4, %esp
	.cfi_def_cfa_offset 116
	movl	$3089, (%esp)
	call	*_imgl3wProcs+104
	.cfi_def_cfa_offset 112
	subl	$4, %esp
	.cfi_def_cfa_offset 116
	cmpl	$309, (%ebx)
	ja	L27
L15:
	movl	$6914, 4(%esp)
	movl	$1032, (%esp)
	call	*_imgl3wProcs+192
	.cfi_def_cfa_offset 108
	subl	$8, %esp
	.cfi_def_cfa_offset 116
	cmpb	$0, 80(%ebx)
	je	L16
	leal	32(%esp), %edx
	movl	$0, 32(%esp)
	movl	%edx, 4(%esp)
	movl	%edx, 28(%esp)
	movl	$37724, (%esp)
	call	*_imgl3wProcs+136
	.cfi_def_cfa_offset 108
	subl	$8, %esp
	.cfi_def_cfa_offset 116
	movl	32(%esp), %eax
	movl	%ebp, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 24(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	*_imgl3wProcs+232
	.cfi_def_cfa_offset 100
	movss	20(%esi), %xmm0
	movss	28(%esi), %xmm4
	subl	$16, %esp
	.cfi_def_cfa_offset 116
	movss	24(%esi), %xmm1
	movss	32(%esi), %xmm2
	cmpl	$36002, 24(%esp)
	addss	%xmm0, %xmm4
	movl	28(%esp), %edx
	addss	%xmm1, %xmm2
	jne	L28
L17:
	xorl	%eax, %eax
L18:
	movl	$0, 36(%esp,%eax)
	movl	$0, 40(%esp,%eax)
	movl	$0, 44(%esp,%eax)
	movl	$0, 48(%esp,%eax)
	addl	$16, %eax
	cmpl	$48, %eax
	jb	L18
	movss	LC2, %xmm3
	movaps	%xmm4, %xmm6
	movl	%edx, 24(%esp)
	subss	%xmm0, %xmm6
	movl	$0, 36(%esp,%eax)
	movaps	%xmm3, %xmm5
	movl	$0, 40(%esp,%eax)
	movl	$0xbf800000, 72(%esp)
	divss	%xmm6, %xmm5
	movl	$0x3f800000, 92(%esp)
	movss	%xmm5, 32(%esp)
	movaps	%xmm2, %xmm5
	subss	%xmm1, %xmm5
	divss	%xmm5, %xmm3
	movss	%xmm3, 52(%esp)
	movaps	%xmm0, %xmm3
	subss	%xmm4, %xmm0
	addss	%xmm4, %xmm3
	divss	%xmm0, %xmm3
	movaps	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	subss	%xmm2, %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm3, 80(%esp)
	movss	%xmm0, 84(%esp)
	movl	40(%ebx), %eax
	movl	%eax, (%esp)
	call	*_imgl3wProcs+224
	.cfi_def_cfa_offset 112
	subl	$4, %esp
	.cfi_def_cfa_offset 116
	movl	$0, 4(%esp)
	movl	44(%ebx), %eax
	movl	%eax, (%esp)
	call	*_imgl3wProcs+216
	.cfi_def_cfa_offset 108
	subl	$8, %esp
	.cfi_def_cfa_offset 116
	movl	24(%esp), %edx
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edx, 12(%esp)
	movl	48(%ebx), %eax
	movl	%eax, (%esp)
	call	*_imgl3wProcs+220
	.cfi_def_cfa_offset 100
	subl	$16, %esp
	.cfi_def_cfa_offset 116
	cmpl	$329, (%ebx)
	jbe	L20
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	*_imgl3wProcs+12
	.cfi_def_cfa_offset 108
	subl	$8, %esp
	.cfi_def_cfa_offset 116
L20:
	movl	116(%esp), %eax
	movl	%eax, (%esp)
	call	*_imgl3wProcs+20
	.cfi_def_cfa_offset 112
	movl	64(%ebx), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 116
	movl	%eax, 4(%esp)
	movl	$34962, (%esp)
	call	*_imgl3wProcs+8
	.cfi_def_cfa_offset 108
	movl	68(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 116
	movl	%eax, 4(%esp)
	movl	$34963, (%esp)
	call	*_imgl3wProcs+8
	.cfi_def_cfa_offset 108
	movl	52(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 116
	movl	%eax, (%esp)
	call	*_imgl3wProcs+108
	.cfi_def_cfa_offset 112
	movl	56(%ebx), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 116
	movl	%eax, (%esp)
	call	*_imgl3wProcs+108
	.cfi_def_cfa_offset 112
	movl	60(%ebx), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 116
	movl	%eax, (%esp)
	call	*_imgl3wProcs+108
	.cfi_def_cfa_offset 112
	subl	$4, %esp
	.cfi_def_cfa_offset 116
	movl	$0, 20(%esp)
	movl	$20, 16(%esp)
	movl	$0, 12(%esp)
	movl	$5126, 8(%esp)
	movl	$2, 4(%esp)
	movl	52(%ebx), %eax
	movl	%eax, (%esp)
	call	*_imgl3wProcs+228
	.cfi_def_cfa_offset 92
	subl	$24, %esp
	.cfi_def_cfa_offset 116
	movl	$8, 20(%esp)
	movl	$20, 16(%esp)
	movl	$0, 12(%esp)
	movl	$5126, 8(%esp)
	movl	$2, 4(%esp)
	movl	56(%ebx), %eax
	movl	%eax, (%esp)
	call	*_imgl3wProcs+228
	.cfi_def_cfa_offset 92
	subl	$24, %esp
	.cfi_def_cfa_offset 116
	movl	$16, 20(%esp)
	movl	$20, 16(%esp)
	movl	$1, 12(%esp)
	movl	$5121, 8(%esp)
	movl	$4, 4(%esp)
	movl	60(%ebx), %eax
	movl	%eax, (%esp)
	call	*_imgl3wProcs+228
	.cfi_def_cfa_offset 92
	subl	$24, %esp
	.cfi_def_cfa_offset 116
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
L27:
	.cfi_restore_state
	movl	$36765, (%esp)
	call	*_imgl3wProcs+88
	.cfi_def_cfa_offset 112
	subl	$4, %esp
	.cfi_def_cfa_offset 116
	jmp	L15
	.p2align 4,,10
	.p2align 3
L16:
	movl	%ebp, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	*_imgl3wProcs+232
	.cfi_def_cfa_offset 100
	movss	20(%esi), %xmm0
	movss	28(%esi), %xmm4
	movss	24(%esi), %xmm2
	movss	32(%esi), %xmm1
	subl	$16, %esp
	.cfi_def_cfa_offset 116
	addss	%xmm0, %xmm4
	leal	32(%esp), %edx
	addss	%xmm2, %xmm1
	jmp	L17
L28:
	movaps	%xmm2, %xmm3
	movaps	%xmm1, %xmm2
	movaps	%xmm3, %xmm1
	jmp	L17
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__ZL34ImGui_ImplOpenGL3_SetupRenderStateP10ImDrawDataiij.cold;	.scl	3;	.type	32;	.endef
__ZL34ImGui_ImplOpenGL3_SetupRenderStateP10ImDrawDataiij.cold:
LFSB2:
L14:
	.cfi_def_cfa_offset 116
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$3042, (%esp)
	call	*%edx
	.cfi_def_cfa_offset 112
	pushl	%eax
	.cfi_def_cfa_offset 116
	movl	$32774, (%esp)
	call	*_imgl3wProcs+24
	.cfi_def_cfa_offset 112
	pushl	%edx
	.cfi_def_cfa_offset 116
	movl	$771, 12(%esp)
	movl	$1, 8(%esp)
	movl	$771, 4(%esp)
	movl	$770, (%esp)
	call	*_imgl3wProcs+32
	.cfi_def_cfa_offset 100
	subl	$16, %esp
	.cfi_def_cfa_offset 116
	movl	$2884, (%esp)
	call	*_imgl3wProcs+88
	.cfi_def_cfa_offset 112
	pushl	%ecx
	.cfi_def_cfa_offset 116
	movl	$2929, (%esp)
	call	*_imgl3wProcs+88
	.cfi_def_cfa_offset 112
	pushl	%ebx
	.cfi_def_cfa_offset 116
	movl	$2960, (%esp)
	call	*_imgl3wProcs+88
	.cfi_def_cfa_offset 112
	pushl	%esi
	.cfi_def_cfa_offset 116
	movl	$3089, (%esp)
	call	*_imgl3wProcs+104
	.cfi_def_cfa_offset 112
	pushl	%edi
	.cfi_def_cfa_offset 116
	movl	0, %eax
	ud2
	.cfi_endproc
LFE2:
	.text
	.section	.text.unlikely,"x"
LCOLDE3:
	.text
LHOTE3:
	.p2align 4
	.globl	__ZL29TableSettingsHandler_ClearAllP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0
	.def	__ZL29TableSettingsHandler_ClearAllP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL29TableSettingsHandler_ClearAllP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0:
LFB6:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	movl	8(%ebp), %edx
	movl	19260(%edx), %eax
	testl	%eax, %eax
	je	L30
	xorl	%ecx, %ecx
	.p2align 4
	.p2align 3
L32:
	movl	19268(%edx), %eax
	movl	4(%eax,%ecx,8), %eax
	cmpl	$-1, %eax
	je	L31
	imull	$488, %eax, %eax
	addl	19256(%edx), %eax
	je	L31
	movl	$-1, 56(%eax)
L31:
	addl	$1, %ecx
	cmpl	19260(%edx), %ecx
	jne	L32
L30:
	movl	23472(%edx), %eax
	testl	%eax, %eax
	je	L29
	movl	_GImGui, %ecx
	movl	$0, 23464(%edx)
	movl	$0, 23468(%edx)
	testl	%ecx, %ecx
	je	L34
	subl	$1, 188(%ecx)
L34:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 8(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	8(%ebp), %edx
	movl	$0, 23472(%edx)
L29:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE6:
	.p2align 4
	.globl	__ZL29TableSettingsHandler_ApplyAllP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0
	.def	__ZL29TableSettingsHandler_ApplyAllP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL29TableSettingsHandler_ApplyAllP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0:
LFB9:
	.cfi_startproc
	movl	4(%esp), %ecx
	movl	19260(%ecx), %eax
	testl	%eax, %eax
	je	L49
	xorl	%edx, %edx
	.p2align 4
	.p2align 3
L52:
	movl	19268(%ecx), %eax
	movl	4(%eax,%edx,8), %eax
	cmpl	$-1, %eax
	je	L51
	imull	$488, %eax, %eax
	addl	19256(%ecx), %eax
	je	L51
	movb	$1, 476(%eax)
	movl	$-1, 56(%eax)
L51:
	addl	$1, %edx
	cmpl	19260(%ecx), %edx
	jne	L52
L49:
	ret
	.cfi_endproc
LFE9:
	.align 2
	.p2align 4
	.def	__ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.isra.0;	.scl	3;	.type	32;	.endef
__ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.isra.0:
LFB11:
	.cfi_startproc
	movss	LC4, %xmm1
	addss	%xmm0, %xmm1
	cvttss2sil	%xmm1, %edx
	cmpl	$63, %edx
	jg	L61
	movzbl	444(%eax,%edx), %eax
	ret
	.p2align 4,,10
	.p2align 3
L61:
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movss	20(%eax), %xmm1
	minss	%xmm0, %xmm1
	divss	%xmm0, %xmm1
	movss	LC1, %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, (%esp)
	call	_acosf
	movss	LC5, %xmm0
	fstps	4(%esp)
	divss	4(%esp), %xmm0
	movss	%xmm0, (%esp)
	call	_ceilf
	movl	$512, %edx
	fstps	4(%esp)
	cvttss2sil	4(%esp), %eax
	addl	$1, %eax
	andl	$-2, %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	$4, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE11:
	.align 2
	.p2align 4
	.def	__ZNK6ImFont21CalcWordWrapPositionAEfPKcS1_f;	.scl	3;	.type	32;	.endef
__ZNK6ImFont21CalcWordWrapPositionAEfPKcS1_f:
LFB14:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	%ebp, 40(%esp)
	.cfi_offset 5, -8
	movl	48(%esp), %ebp
	cmpl	52(%esp), %ebp
	jnb	L84
	divss	%xmm0, %xmm1
	xorps	%xmm2, %xmm2
	movl	%ebx, 28(%esp)
	.cfi_offset 3, -20
	movl	$1, %ebx
	movl	%esi, 32(%esp)
	movaps	%xmm2, %xmm0
	.cfi_offset 6, -16
	movl	%ecx, %esi
	movaps	%xmm2, %xmm3
	movl	%edi, 36(%esp)
	.cfi_offset 7, -12
	movl	%ebp, %edi
	movl	%ebp, 4(%esp)
	movl	$0, 20(%esp)
	jmp	L83
	.p2align 4,,10
	.p2align 3
L106:
	movl	8(%esi), %ecx
	movss	(%ecx,%eax,4), %xmm4
L73:
	cmpl	$32, %eax
	sete	%cl
	cmpl	$9, %eax
	movl	%ecx, %ebp
	sete	%cl
	orl	%ebp, %ecx
	cmpl	$12288, %eax
	movb	%cl, (%esp)
	sete	%cl
	orb	(%esp), %cl
	je	L102
	testb	%bl, %bl
	je	L77
	movl	%edi, 4(%esp)
	addss	%xmm2, %xmm3
	xorps	%xmm2, %xmm2
L77:
	addss	%xmm4, %xmm2
	xorl	%ebx, %ebx
L78:
	movaps	%xmm3, %xmm4
	addss	%xmm0, %xmm4
	comiss	%xmm1, %xmm4
	ja	L103
L71:
	cmpl	52(%esp), %edx
	jnb	L104
L90:
	movl	%edx, %edi
L83:
	movzbl	(%edi), %eax
	leal	1(%edi), %edx
	cmpl	$127, %eax
	ja	L105
L69:
	cmpl	$31, %eax
	ja	L70
	cmpl	$10, %eax
	je	L85
	cmpl	$13, %eax
	je	L71
L70:
	cmpl	%eax, (%esi)
	jg	L106
	movss	12(%esi), %xmm4
	jmp	L73
	.p2align 4,,10
	.p2align 3
L105:
	movl	52(%esp), %ecx
	movl	%edi, %edx
	leal	24(%esp), %eax
	movss	%xmm1, 16(%esp)
	movss	%xmm2, 12(%esp)
	movss	%xmm0, 8(%esp)
	movss	%xmm3, (%esp)
	call	__Z18ImTextCharFromUtf8PjPKcS1_
	movss	16(%esp), %xmm1
	movss	12(%esp), %xmm2
	leal	(%edi,%eax), %edx
	movss	8(%esp), %xmm0
	movl	24(%esp), %eax
	movss	(%esp), %xmm3
	jmp	L69
	.p2align 4,,10
	.p2align 3
L102:
	addss	%xmm4, %xmm0
	testb	%bl, %bl
	je	L107
	movl	%edx, 4(%esp)
L75:
	movl	%eax, %ecx
	xorl	%ebx, %ebx
	andl	$-3, %ecx
	cmpl	$44, %ecx
	je	L78
	movaps	%xmm3, %xmm4
	subl	$33, %eax
	movl	$1140850691, %ecx
	movl	$1, %ebx
	addss	%xmm0, %xmm4
	btl	%eax, %ecx
	setnc	%cl
	cmpl	$30, %eax
	cmovbe	%ecx, %ebx
	comiss	%xmm1, %xmm4
	jbe	L71
	.p2align 4
	.p2align 3
L103:
	comiss	%xmm0, %xmm1
	movl	48(%esp), %ebp
	jbe	L80
	movl	20(%esp), %edi
	testl	%edi, %edi
	cmove	4(%esp), %edi
L80:
	movl	%edi, %edx
	jmp	L82
	.p2align 4,,10
	.p2align 3
L107:
	addss	%xmm2, %xmm0
	movl	4(%esp), %ebx
	xorps	%xmm2, %xmm2
	movl	%ebx, 20(%esp)
	addss	%xmm0, %xmm3
	movaps	%xmm2, %xmm0
	jmp	L75
	.p2align 4,,10
	.p2align 3
L85:
	xorps	%xmm2, %xmm2
	movl	$1, %ebx
	movaps	%xmm2, %xmm0
	movaps	%xmm2, %xmm3
	cmpl	52(%esp), %edx
	jb	L90
	.p2align 4
	.p2align 3
L104:
	movl	48(%esp), %ebp
L82:
	xorl	%eax, %eax
	cmpl	%ebp, %edx
	movl	28(%esp), %ebx
	.cfi_restore 3
	movl	32(%esp), %esi
	.cfi_restore 6
	sete	%al
	movl	36(%esp), %edi
	.cfi_restore 7
	addl	%eax, %edx
L66:
	movl	40(%esp), %ebp
	movl	%edx, %eax
	addl	$44, %esp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret	$8
L84:
	.cfi_restore_state
	movl	%ebp, %edx
	jmp	L66
	.cfi_endproc
LFE14:
	.p2align 4
	.globl	_close_libgl.lto_priv.0
	.def	_close_libgl.lto_priv.0;	.scl	2;	.type	32;	.endef
_close_libgl.lto_priv.0:
LFB15:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	_libgl.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*__imp__FreeLibrary@4
	.cfi_def_cfa_offset 4
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE15:
	.section	.text.unlikely,"x"
LCOLDB8:
	.text
LHOTB8:
	.p2align 4
	.globl	__ZL31ImGui_ImplSDL2_GetClipboardTextPv.lto_priv.0
	.def	__ZL31ImGui_ImplSDL2_GetClipboardTextPv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL31ImGui_ImplSDL2_GetClipboardTextPv.lto_priv.0:
LFB16:
	.cfi_startproc
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L111
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	128(%eax), %ebx
	movl	68(%ebx), %eax
	testl	%eax, %eax
	je	L112
	movl	%eax, (%esp)
	call	_SDL_free
L112:
	call	_SDL_GetClipboardText
	movl	%eax, 68(%ebx)
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__ZL31ImGui_ImplSDL2_GetClipboardTextPv.lto_priv.0.cold;	.scl	3;	.type	32;	.endef
__ZL31ImGui_ImplSDL2_GetClipboardTextPv.lto_priv.0.cold:
LFSB16:
L111:
	movl	68, %eax
	ud2
	.cfi_endproc
LFE16:
	.text
	.section	.text.unlikely,"x"
LCOLDE8:
	.text
LHOTE8:
	.p2align 4
	.globl	__ZL31ImGui_ImplSDL2_SetClipboardTextPvPKc.lto_priv.0
	.def	__ZL31ImGui_ImplSDL2_SetClipboardTextPvPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL31ImGui_ImplSDL2_SetClipboardTextPvPKc.lto_priv.0:
LFB18:
	.cfi_startproc
	movl	8(%esp), %eax
	movl	%eax, 4(%esp)
	jmp	_SDL_SetClipboardText
	.cfi_endproc
LFE18:
	.p2align 4
	.globl	__ZL33ImGui_ImplSDL2_SetPlatformImeDataP13ImGuiViewportP20ImGuiPlatformImeData.lto_priv.0
	.def	__ZL33ImGui_ImplSDL2_SetPlatformImeDataP13ImGuiViewportP20ImGuiPlatformImeData.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL33ImGui_ImplSDL2_SetPlatformImeDataP13ImGuiViewportP20ImGuiPlatformImeData.lto_priv.0:
LFB19:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	28(%esp), %eax
	cmpb	$0, (%eax)
	je	L122
	cvttss2sil	4(%eax), %edx
	movl	$1, 12(%esp)
	movl	%edx, 4(%esp)
	cvttss2sil	8(%eax), %edx
	cvttss2sil	12(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 16(%esp)
	leal	4(%esp), %eax
	movl	%eax, (%esp)
	call	_SDL_SetTextInputRect
	call	_SDL_StartTextInput
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L122:
	.cfi_restore_state
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	jmp	_SDL_StopTextInput
	.cfi_endproc
LFE19:
	.p2align 4
	.globl	__ZL27ImGui_ImplSDL2_GetWindowPosP13ImGuiViewport.lto_priv.0
	.def	__ZL27ImGui_ImplSDL2_GetWindowPosP13ImGuiViewport.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL27ImGui_ImplSDL2_GetWindowPosP13ImGuiViewport.lto_priv.0:
LFB21:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	28(%esp), %eax
	leal	16(%esp), %edx
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	56(%eax), %eax
	movl	%edx, 8(%esp)
	leal	20(%esp), %edx
	movl	%edx, 4(%esp)
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_SDL_GetWindowPosition
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	20(%esp), %xmm0
	cvtsi2ssl	16(%esp), %xmm1
	movss	%xmm0, 12(%esp)
	movl	12(%esp), %eax
	movss	%xmm1, 12(%esp)
	movl	12(%esp), %edx
	addl	$24, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE21:
	.p2align 4
	.globl	__ZL27ImGui_ImplSDL2_RenderWindowP13ImGuiViewportPv.lto_priv.0
	.def	__ZL27ImGui_ImplSDL2_RenderWindowP13ImGuiViewportPv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL27ImGui_ImplSDL2_RenderWindowP13ImGuiViewportPv.lto_priv.0:
LFB22:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	56(%eax), %eax
	movl	12(%eax), %edx
	testl	%edx, %edx
	je	L128
	movl	%edx, 8(%esp)
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	jmp	_SDL_GL_MakeCurrent
	.p2align 4,,10
	.p2align 3
L128:
	ret
	.cfi_endproc
LFE22:
	.p2align 4
	.globl	__ZL29ImGui_ImplSDL2_GetWindowFocusP13ImGuiViewport.lto_priv.0
	.def	__ZL29ImGui_ImplSDL2_GetWindowFocusP13ImGuiViewport.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL29ImGui_ImplSDL2_GetWindowFocusP13ImGuiViewport.lto_priv.0:
LFB23:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	8(%esp), %eax
	movl	56(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_SDL_GetWindowFlags
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	shrl	$9, %eax
	andl	$1, %eax
	ret
	.cfi_endproc
LFE23:
	.p2align 4
	.globl	__ZL33ImGui_ImplSDL2_GetWindowMinimizedP13ImGuiViewport.lto_priv.0
	.def	__ZL33ImGui_ImplSDL2_GetWindowMinimizedP13ImGuiViewport.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL33ImGui_ImplSDL2_GetWindowMinimizedP13ImGuiViewport.lto_priv.0:
LFB24:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	8(%esp), %eax
	movl	56(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_SDL_GetWindowFlags
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	shrl	$6, %eax
	andl	$1, %eax
	ret
	.cfi_endproc
LFE24:
	.section .rdata,"dr"
LC9:
	.ascii "No Title Yet\0"
	.text
	.p2align 4
	.globl	__ZL27ImGui_ImplSDL2_CreateWindowP13ImGuiViewport.lto_priv.0
	.def	__ZL27ImGui_ImplSDL2_CreateWindowP13ImGuiViewport.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL27ImGui_ImplSDL2_CreateWindowP13ImGuiViewport.lto_priv.0:
LFB25:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	xorl	%edi, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$104, %esp
	.cfi_def_cfa_offset 124
	movl	_GImGui, %eax
	movl	124(%esp), %ebx
	testl	%eax, %eax
	je	L135
	addl	$1, 188(%eax)
	movl	128(%eax), %edi
L135:
	movl	$0, 4(%esp)
	movl	$16, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, 56(%ebx)
	movl	%eax, %ebp
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	_GImGui, %eax
	movl	18616(%eax), %eax
	movl	(%eax), %eax
	movl	56(%eax), %ecx
	movl	12(%ecx), %esi
	testl	%esi, %esi
	je	L136
	movl	%ecx, 24(%esp)
	call	_SDL_GL_GetCurrentContext
	movl	$1, 4(%esp)
	movl	$22, (%esp)
	movl	%eax, 28(%esp)
	call	_SDL_GL_SetAttribute
	movl	24(%esp), %ecx
	movl	12(%ecx), %eax
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	call	_SDL_GL_MakeCurrent
	movl	$2, 24(%esp)
L137:
	movl	(%edi), %eax
	movl	%eax, (%esp)
	call	_SDL_GetWindowFlags
	movl	4(%ebx), %edi
	andl	$8192, %eax
	movl	%edi, %edx
	leal	(%edi,%edi), %ecx
	sall	$6, %edx
	andl	$16, %ecx
	andl	$32768, %edx
	orl	%ecx, %edx
	orl	%edx, %eax
	movl	%edi, %edx
	shrl	$3, %edx
	andl	$1, %edx
	xorl	$1, %edx
	sall	$5, %edx
	orl	%edx, %eax
	orl	24(%esp), %eax
	orl	$8, %eax
	movl	%eax, 20(%esp)
	cvttss2sil	20(%ebx), %eax
	movl	%eax, 16(%esp)
	cvttss2sil	16(%ebx), %eax
	movl	%eax, 12(%esp)
	cvttss2sil	12(%ebx), %eax
	movl	%eax, 8(%esp)
	cvttss2sil	8(%ebx), %eax
	movl	$LC9, (%esp)
	movl	%eax, 4(%esp)
	call	_SDL_CreateWindow
	movb	$1, 8(%ebp)
	movl	%eax, 0(%ebp)
	testl	%esi, %esi
	je	L138
	movl	%eax, (%esp)
	call	_SDL_GL_CreateContext
	movl	%eax, 12(%ebp)
	movl	$0, (%esp)
	call	_SDL_GL_SetSwapInterval
	movl	28(%esp), %esi
	movl	0(%ebp), %eax
	testl	%esi, %esi
	je	L138
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_SDL_GL_MakeCurrent
	movl	0(%ebp), %eax
L138:
	movl	$7682, %edx
	movl	%eax, 60(%ebx)
	movw	%dx, 32(%esp)
	leal	32(%esp), %edx
	movl	$0, 64(%ebx)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movb	$10, 34(%esp)
	call	_SDL_GetWindowWMInfo
	testl	%eax, %eax
	je	L134
	movl	40(%esp), %eax
	movl	%eax, 64(%ebx)
L134:
	addl	$104, %esp
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
L136:
	.cfi_restore_state
	movzbl	74(%edi), %eax
	movl	$0, 28(%esp)
	sall	$28, %eax
	movl	%eax, 24(%esp)
	jmp	L137
	.cfi_endproc
LFE25:
	.p2align 4
	.globl	__ZL28ImGui_ImplSDL2_DestroyWindowP13ImGuiViewport.lto_priv.0
	.def	__ZL28ImGui_ImplSDL2_DestroyWindowP13ImGuiViewport.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL28ImGui_ImplSDL2_DestroyWindowP13ImGuiViewport.lto_priv.0:
LFB28:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	L154
	movl	12(%eax), %edx
	testl	%edx, %edx
	je	L155
	cmpb	$0, 8(%eax)
	jne	L171
L156:
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L157
	subl	$1, 188(%edx)
L157:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L154:
	movl	8(%ebp), %eax
	movl	$0, 56(%eax)
	movl	$0, 60(%eax)
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L171:
	.cfi_restore_state
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	call	_SDL_GL_DeleteContext
	movl	8(%esp), %eax
L155:
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L156
	cmpb	$0, 8(%eax)
	je	L156
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	call	_SDL_DestroyWindow
	movl	8(%esp), %eax
	jmp	L156
	.cfi_endproc
LFE28:
	.p2align 4
	.globl	__ZL25ImGui_ImplSDL2_ShowWindowP13ImGuiViewport.lto_priv.0
	.def	__ZL25ImGui_ImplSDL2_ShowWindowP13ImGuiViewport.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL25ImGui_ImplSDL2_ShowWindowP13ImGuiViewport.lto_priv.0:
LFB29:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$20, %esp
	.cfi_def_cfa_offset 28
	movl	28(%esp), %edx
	movl	4(%edx), %eax
	movl	56(%edx), %ecx
	movl	64(%edx), %ebx
	testb	$16, %al
	jne	L181
L173:
	testb	$32, %al
	jne	L182
	movl	(%ecx), %eax
	movl	%eax, 28(%esp)
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	_SDL_ShowWindow
	.p2align 4,,10
	.p2align 3
L182:
	.cfi_restore_state
	movl	%ebx, (%esp)
	movl	$8, 4(%esp)
	call	*__imp__ShowWindow@8
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L181:
	.cfi_restore_state
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	$-20, 4(%esp)
	movl	%ebx, (%esp)
	call	*__imp__GetWindowLongA@8
	.cfi_def_cfa_offset 20
	andl	$-262145, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	orb	$-128, %al
	movl	$-20, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, (%esp)
	call	*__imp__SetWindowLongA@12
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	16(%esp), %edx
	movl	12(%esp), %ecx
	movl	4(%edx), %eax
	jmp	L173
	.cfi_endproc
LFE29:
	.p2align 4
	.globl	__ZL27ImGui_ImplSDL2_SetWindowPosP13ImGuiViewport6ImVec2.lto_priv.0
	.def	__ZL27ImGui_ImplSDL2_SetWindowPosP13ImGuiViewport6ImVec2.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL27ImGui_ImplSDL2_SetWindowPosP13ImGuiViewport6ImVec2.lto_priv.0:
LFB30:
	.cfi_startproc
	cvttss2sil	12(%esp), %eax
	movl	%eax, 12(%esp)
	cvttss2sil	8(%esp), %eax
	movl	%eax, 8(%esp)
	movl	4(%esp), %eax
	movl	56(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	jmp	_SDL_SetWindowPosition
	.cfi_endproc
LFE30:
	.p2align 4
	.globl	__ZL28ImGui_ImplSDL2_GetWindowSizeP13ImGuiViewport.lto_priv.0
	.def	__ZL28ImGui_ImplSDL2_GetWindowSizeP13ImGuiViewport.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL28ImGui_ImplSDL2_GetWindowSizeP13ImGuiViewport.lto_priv.0:
LFB31:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	28(%esp), %eax
	leal	16(%esp), %edx
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	56(%eax), %eax
	movl	%edx, 8(%esp)
	leal	20(%esp), %edx
	movl	%edx, 4(%esp)
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_SDL_GetWindowSize
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	20(%esp), %xmm0
	cvtsi2ssl	16(%esp), %xmm1
	movss	%xmm0, 12(%esp)
	movl	12(%esp), %eax
	movss	%xmm1, 12(%esp)
	movl	12(%esp), %edx
	addl	$24, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE31:
	.p2align 4
	.globl	__ZL28ImGui_ImplSDL2_SetWindowSizeP13ImGuiViewport6ImVec2.lto_priv.0
	.def	__ZL28ImGui_ImplSDL2_SetWindowSizeP13ImGuiViewport6ImVec2.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL28ImGui_ImplSDL2_SetWindowSizeP13ImGuiViewport6ImVec2.lto_priv.0:
LFB32:
	.cfi_startproc
	cvttss2sil	12(%esp), %eax
	movl	%eax, 12(%esp)
	cvttss2sil	8(%esp), %eax
	movl	%eax, 8(%esp)
	movl	4(%esp), %eax
	movl	56(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	jmp	_SDL_SetWindowSize
	.cfi_endproc
LFE32:
	.p2align 4
	.globl	__ZL29ImGui_ImplSDL2_SetWindowTitleP13ImGuiViewportPKc.lto_priv.0
	.def	__ZL29ImGui_ImplSDL2_SetWindowTitleP13ImGuiViewportPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL29ImGui_ImplSDL2_SetWindowTitleP13ImGuiViewportPKc.lto_priv.0:
LFB33:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	56(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	jmp	_SDL_SetWindowTitle
	.cfi_endproc
LFE33:
	.p2align 4
	.globl	__ZL29ImGui_ImplSDL2_SetWindowAlphaP13ImGuiViewportf.lto_priv.0
	.def	__ZL29ImGui_ImplSDL2_SetWindowAlphaP13ImGuiViewportf.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL29ImGui_ImplSDL2_SetWindowAlphaP13ImGuiViewportf.lto_priv.0:
LFB34:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	56(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	jmp	_SDL_SetWindowOpacity
	.cfi_endproc
LFE34:
	.p2align 4
	.globl	__ZL29ImGui_ImplSDL2_SetWindowFocusP13ImGuiViewport.lto_priv.0
	.def	__ZL29ImGui_ImplSDL2_SetWindowFocusP13ImGuiViewport.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL29ImGui_ImplSDL2_SetWindowFocusP13ImGuiViewport.lto_priv.0:
LFB35:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	56(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	jmp	_SDL_RaiseWindow
	.cfi_endproc
LFE35:
	.p2align 4
	.globl	__ZL26ImGui_ImplSDL2_SwapBuffersP13ImGuiViewportPv.lto_priv.0
	.def	__ZL26ImGui_ImplSDL2_SwapBuffersP13ImGuiViewportPv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL26ImGui_ImplSDL2_SwapBuffersP13ImGuiViewportPv.lto_priv.0:
LFB36:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %eax
	movl	56(%eax), %edx
	movl	12(%edx), %eax
	testl	%eax, %eax
	je	L190
	movl	%eax, 4(%esp)
	movl	(%edx), %eax
	movl	%edx, 8(%esp)
	movl	%eax, (%esp)
	call	_SDL_GL_MakeCurrent
	movl	8(%esp), %edx
	movl	(%edx), %eax
	movl	%eax, 16(%esp)
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	jmp	_SDL_GL_SwapWindow
	.p2align 4,,10
	.p2align 3
L190:
	.cfi_restore_state
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE36:
	.p2align 4
	.globl	__ZL30ImGui_ImplSDL2_CreateVkSurfaceP13ImGuiViewportyPKvPy.lto_priv.0
	.def	__ZL30ImGui_ImplSDL2_CreateVkSurfaceP13ImGuiViewportyPKvPy.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL30ImGui_ImplSDL2_CreateVkSurfaceP13ImGuiViewportyPKvPy.lto_priv.0:
LFB37:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	32(%esp), %eax
	movl	%eax, 8(%esp)
	movl	20(%esp), %eax
	movl	%eax, 4(%esp)
	movl	16(%esp), %eax
	movl	56(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_SDL_Vulkan_CreateSurface
	testl	%eax, %eax
	sete	%al
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	movzbl	%al, %eax
	ret
	.cfi_endproc
LFE37:
	.section .rdata,"dr"
LC11:
	.ascii "0x%08X,%d\0"
	.text
	.p2align 4
	.globl	__ZL29TableSettingsHandler_ReadOpenP12ImGuiContextP20ImGuiSettingsHandlerPKc.lto_priv.0
	.def	__ZL29TableSettingsHandler_ReadOpenP12ImGuiContextP20ImGuiSettingsHandlerPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL29TableSettingsHandler_ReadOpenP12ImGuiContextP20ImGuiSettingsHandlerPKc.lto_priv.0:
LFB38:
	.cfi_startproc
	subl	$60, %esp
	.cfi_def_cfa_offset 64
	leal	36(%esp), %eax
	movl	$LC11, 4(%esp)
	movl	%eax, 12(%esp)
	leal	40(%esp), %eax
	movl	%eax, 8(%esp)
	movl	72(%esp), %eax
	movl	$0, 40(%esp)
	movl	%eax, (%esp)
	movl	$0, 36(%esp)
	call	___mingw_sscanf
	cmpl	$1, %eax
	jle	L215
	movl	_GImGui, %edx
	movl	40(%esp), %ecx
	movl	%ebx, 44(%esp)
	movl	%esi, 48(%esp)
	movl	%edi, 52(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	23472(%edx), %esi
	leal	4(%esi), %eax
	testl	%esi, %esi
	je	L230
	.p2align 5
	.p2align 4
	.p2align 3
L201:
	cmpl	(%eax), %ecx
	je	L199
	movl	23464(%edx), %ebx
	addl	-4(%eax), %eax
	leal	4(%esi,%ebx), %ebx
	cmpl	%ebx, %eax
	jne	L201
L230:
	movl	%ebp, 56(%esp)
	.cfi_offset 5, -8
L198:
	movl	36(%esp), %ebx
	movl	23464(%edx), %esi
	movl	%ebx, %eax
	sall	$4, %eax
	addl	$24, %eax
	movl	%eax, 16(%esp)
	leal	(%esi,%eax), %edi
	movl	23468(%edx), %eax
	cmpl	%eax, %edi
	jg	L231
L204:
	movl	23472(%edx), %ebp
L208:
	movl	16(%esp), %eax
	movl	%edi, 23464(%edx)
	movl	%eax, 0(%ebp,%esi)
	movl	23472(%edx), %eax
	leal	4(%eax,%esi), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	testl	%ebx, %ebx
	jle	L211
	leal	20(%eax), %edx
	xorl	%esi, %esi
	movl	%eax, %edi
	.p2align 6
	.p2align 4
	.p2align 3
L212:
	movl	$-1, %eax
	addl	$1, %esi
	movl	$0x00000000, (%edx)
	addl	$16, %edx
	movw	%ax, -4(%edx)
	movzbl	-2(%edx), %eax
	movl	$0, -12(%edx)
	andl	$-12, %eax
	movl	$-1, -8(%edx)
	orl	$4, %eax
	movb	%al, -2(%edx)
	cmpl	%esi, %ebx
	jne	L212
	movl	%edi, %eax
L211:
	movl	%ecx, (%eax)
	movw	%bx, 12(%eax)
	movw	%bx, 14(%eax)
	movb	$1, 16(%eax)
	movl	44(%esp), %ebx
	.cfi_restore 3
	movl	48(%esp), %esi
	.cfi_restore 6
	movl	52(%esp), %edi
	.cfi_restore 7
	movl	56(%esp), %ebp
	.cfi_restore 5
	addl	$60, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L199:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movswl	14(%eax), %ebx
	movl	36(%esp), %esi
	movl	%ebx, %edi
	cmpl	%esi, %ebx
	jge	L232
	movl	%ebp, 56(%esp)
	movl	$0, (%eax)
	movl	40(%esp), %ecx
	movl	_GImGui, %edx
	.cfi_offset 5, -8
	jmp	L198
	.p2align 4,,10
	.p2align 3
L231:
	testl	%eax, %eax
	jne	L205
	movl	$8, %eax
	cmpl	%eax, %edi
	cmovge	%edi, %eax
	movl	%eax, 20(%esp)
L206:
	movl	20(%esp), %eax
	addl	$1, 188(%edx)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 28(%esp)
	movl	%edx, 24(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	24(%esp), %edx
	movl	28(%esp), %ecx
	movl	%eax, %ebp
	movl	23472(%edx), %eax
	testl	%eax, %eax
	je	L209
	movl	23464(%edx), %ecx
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	movl	%ecx, 8(%esp)
	call	_memcpy
	movl	24(%esp), %edx
	movl	28(%esp), %ecx
	movl	23472(%edx), %eax
	testl	%eax, %eax
	movl	%eax, 24(%esp)
	je	L210
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L210
	subl	$1, 188(%eax)
L210:
	movl	24(%esp), %eax
	movl	$0, 4(%esp)
	movl	%edx, 32(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 28(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	32(%esp), %edx
	movl	28(%esp), %ecx
L209:
	movl	20(%esp), %eax
	movl	%ebp, 23472(%edx)
	movl	%eax, 23468(%edx)
	jmp	L208
	.p2align 4,,10
	.p2align 3
L205:
	movl	%eax, %ebp
	shrl	$31, %ebp
	addl	%eax, %ebp
	sarl	%ebp
	addl	%eax, %ebp
	cmpl	%edi, %ebp
	cmovl	%edi, %ebp
	movl	%ebp, 20(%esp)
	cmpl	%ebp, %eax
	jge	L204
	jmp	L206
	.p2align 4,,10
	.p2align 3
L232:
	.cfi_restore 5
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	testl	%ebx, %ebx
	jle	L202
	sall	$4, %ebx
	movl	%ebp, 56(%esp)
	.cfi_offset 5, -8
	leal	20(%eax), %edx
	leal	20(%eax,%ebx), %ebp
	.p2align 6
	.p2align 4
	.p2align 3
L203:
	movl	$-1, %ebx
	movl	$0x00000000, (%edx)
	addl	$16, %edx
	movw	%bx, -4(%edx)
	movzbl	-2(%edx), %ebx
	movl	$0, -12(%edx)
	andl	$-12, %ebx
	movl	$-1, -8(%edx)
	orl	$4, %ebx
	movb	%bl, -2(%edx)
	cmpl	%ebp, %edx
	jne	L203
	movl	56(%esp), %ebp
	.cfi_restore 5
L202:
	sall	$16, %edi
	movzwl	%si, %esi
	movl	%ecx, (%eax)
	orl	%edi, %esi
	movb	$1, 16(%eax)
	movl	%esi, 12(%eax)
	movl	44(%esp), %ebx
	.cfi_restore 3
	movl	48(%esp), %esi
	.cfi_restore 6
	movl	52(%esp), %edi
	.cfi_restore 7
	addl	$60, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L215:
	.cfi_def_cfa_offset 64
	xorl	%eax, %eax
	addl	$60, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE38:
	.section .rdata,"dr"
LC12:
	.ascii "RefScale=%f\0"
LC13:
	.ascii "Column %d%n\0"
LC14:
	.ascii "UserID=0x%08X%n\0"
LC15:
	.ascii "Width=%d%n\0"
LC16:
	.ascii "Weight=%f%n\0"
LC17:
	.ascii "Visible=%d%n\0"
LC18:
	.ascii "Order=%d%n\0"
LC19:
	.ascii "Sort=%d%c%n\0"
	.text
	.p2align 4
	.globl	__ZL29TableSettingsHandler_ReadLineP12ImGuiContextP20ImGuiSettingsHandlerPvPKc.lto_priv.0
	.def	__ZL29TableSettingsHandler_ReadLineP12ImGuiContextP20ImGuiSettingsHandlerPvPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL29TableSettingsHandler_ReadLineP12ImGuiContextP20ImGuiSettingsHandlerPvPKc.lto_priv.0:
LFB45:
	.cfi_startproc
	subl	$56, %esp
	.cfi_def_cfa_offset 60
	movl	72(%esp), %eax
	movl	%ebx, 44(%esp)
	.cfi_offset 3, -16
	leal	40(%esp), %ebx
	movl	%ebx, 8(%esp)
	movl	$LC12, 4(%esp)
	movl	%eax, (%esp)
	movl	$0x00000000, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	call	___mingw_sscanf
	cmpl	$1, %eax
	je	L292
	leal	36(%esp), %eax
	movl	%esi, 48(%esp)
	.cfi_offset 6, -12
	leal	32(%esp), %esi
	movl	%eax, 8(%esp)
	movl	72(%esp), %eax
	movl	%esi, 12(%esp)
	movl	$LC13, 4(%esp)
	movl	%eax, (%esp)
	call	___mingw_sscanf
	cmpl	$1, %eax
	je	L293
L288:
	movl	48(%esp), %esi
	.cfi_restore 6
L233:
	movl	44(%esp), %ebx
	addl	$56, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L293:
	.cfi_def_cfa_offset 60
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	movl	36(%esp), %ecx
	testl	%ecx, %ecx
	js	L288
	movl	68(%esp), %eax
	movswl	12(%eax), %eax
	cmpl	%eax, %ecx
	jge	L288
	movl	72(%esp), %edx
	addl	32(%esp), %edx
	movl	%edi, 52(%esp)
	.cfi_offset 7, -8
	movzbl	(%edx), %eax
	cmpb	$9, %al
	je	L273
	cmpb	$32, %al
	jne	L238
	.p2align 4
	.p2align 4
	.p2align 3
L273:
	movzbl	1(%edx), %eax
	addl	$1, %edx
	cmpb	$32, %al
	je	L273
	cmpb	$9, %al
	je	L273
L238:
	movl	68(%esp), %edi
	movl	%ecx, %eax
	movl	%edx, 20(%esp)
	sall	$4, %eax
	movb	$0, 27(%esp)
	leal	20(%edi,%eax), %eax
	movw	%cx, 8(%eax)
	movl	%eax, %edi
	leal	28(%esp), %eax
	movl	%edx, (%esp)
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC14, 4(%esp)
	call	___mingw_sscanf
	movl	20(%esp), %edx
	cmpl	$1, %eax
	je	L294
L241:
	leal	28(%esp), %eax
	movl	%edx, (%esp)
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC15, 4(%esp)
	movl	%edx, 20(%esp)
	call	___mingw_sscanf
	movl	20(%esp), %edx
	cmpl	$1, %eax
	je	L295
L245:
	movl	%edx, (%esp)
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$LC16, 4(%esp)
	movl	%edx, 20(%esp)
	call	___mingw_sscanf
	movl	20(%esp), %edx
	cmpl	$1, %eax
	je	L296
L249:
	leal	28(%esp), %eax
	movl	%edx, (%esp)
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC17, 4(%esp)
	movl	%edx, 20(%esp)
	call	___mingw_sscanf
	movl	20(%esp), %edx
	cmpl	$1, %eax
	je	L297
L253:
	leal	28(%esp), %eax
	movl	%edx, (%esp)
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC18, 4(%esp)
	movl	%edx, 20(%esp)
	call	___mingw_sscanf
	movl	20(%esp), %edx
	cmpl	$1, %eax
	je	L298
L257:
	leal	27(%esp), %eax
	movl	%esi, 16(%esp)
	movl	%eax, 12(%esp)
	leal	28(%esp), %eax
	movl	%eax, 8(%esp)
	movl	$LC19, 4(%esp)
	movl	%edx, (%esp)
	call	___mingw_sscanf
	cmpl	$2, %eax
	je	L299
	movl	48(%esp), %esi
	.cfi_restore 6
	movl	52(%esp), %edi
	.cfi_restore 7
	jmp	L233
	.p2align 4,,10
	.p2align 3
L292:
	movss	40(%esp), %xmm0
	movl	68(%esp), %eax
	movss	%xmm0, 8(%eax)
	movl	44(%esp), %ebx
	addl	$56, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L299:
	.cfi_def_cfa_offset 60
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movl	28(%esp), %eax
	cmpb	$94, 27(%esp)
	movzbl	14(%edi), %ecx
	movw	%ax, 12(%edi)
	sete	%al
	negl	%eax
	movl	%ecx, %edx
	movb	%cl, 20(%esp)
	andl	$3, %eax
	andl	$-4, %edx
	xorl	$1, %eax
	orl	%edx, %eax
	movb	%al, 14(%edi)
	movl	68(%esp), %eax
	orl	$8, 4(%eax)
	movl	48(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	52(%esp), %edi
	.cfi_restore 7
	jmp	L233
	.p2align 4,,10
	.p2align 3
L298:
	.cfi_restore_state
	addl	32(%esp), %edx
	movzbl	(%edx), %eax
	cmpb	$9, %al
	jne	L291
	.p2align 4
	.p2align 4
	.p2align 3
L278:
	movzbl	1(%edx), %eax
	addl	$1, %edx
	cmpb	$9, %al
	je	L278
L291:
	cmpb	$32, %al
	je	L278
	movl	28(%esp), %eax
	movw	%ax, 10(%edi)
	movl	68(%esp), %eax
	orl	$2, 4(%eax)
	jmp	L257
	.p2align 4,,10
	.p2align 3
L297:
	addl	32(%esp), %edx
	movzbl	(%edx), %eax
	cmpb	$9, %al
	jne	L290
	.p2align 4
	.p2align 4
	.p2align 3
L277:
	movzbl	1(%edx), %eax
	addl	$1, %edx
	cmpb	$9, %al
	je	L277
L290:
	cmpb	$32, %al
	je	L277
	movzbl	28(%esp), %ecx
	movzbl	14(%edi), %eax
	andl	$1, %ecx
	movb	%al, 20(%esp)
	andl	$-5, %eax
	sall	$2, %ecx
	orl	%ecx, %eax
	movb	%al, 14(%edi)
	movl	68(%esp), %eax
	orl	$4, 4(%eax)
	jmp	L253
	.p2align 4,,10
	.p2align 3
L295:
	addl	32(%esp), %edx
	movzbl	(%edx), %eax
	cmpb	$9, %al
	je	L275
	cmpb	$32, %al
	jne	L246
	.p2align 4
	.p2align 4
	.p2align 3
L275:
	movzbl	1(%edx), %eax
	addl	$1, %edx
	cmpb	$32, %al
	je	L275
	cmpb	$9, %al
	je	L275
L246:
	xorps	%xmm0, %xmm0
	movl	68(%esp), %eax
	andb	$-9, 14(%edi)
	cvtsi2ssl	28(%esp), %xmm0
	movss	%xmm0, (%edi)
	orl	$1, 4(%eax)
	jmp	L245
	.p2align 4,,10
	.p2align 3
L296:
	addl	32(%esp), %edx
	movzbl	(%edx), %eax
	cmpb	$9, %al
	je	L276
	cmpb	$32, %al
	jne	L250
	.p2align 4
	.p2align 4
	.p2align 3
L276:
	movzbl	1(%edx), %eax
	addl	$1, %edx
	cmpb	$32, %al
	je	L276
	cmpb	$9, %al
	je	L276
L250:
	movss	40(%esp), %xmm0
	movl	68(%esp), %eax
	orb	$8, 14(%edi)
	movss	%xmm0, (%edi)
	orl	$1, 4(%eax)
	jmp	L249
	.p2align 4,,10
	.p2align 3
L294:
	addl	32(%esp), %edx
	movzbl	(%edx), %eax
	cmpb	$9, %al
	je	L274
	cmpb	$32, %al
	jne	L242
	.p2align 4
	.p2align 4
	.p2align 3
L274:
	movzbl	1(%edx), %eax
	addl	$1, %edx
	cmpb	$32, %al
	je	L274
	cmpb	$9, %al
	je	L274
L242:
	movl	28(%esp), %eax
	movl	%eax, 4(%edi)
	jmp	L241
	.cfi_endproc
LFE45:
	.section .rdata,"dr"
LC20:
	.ascii "[%s][0x%08X,%d]\12\0"
LC21:
	.ascii "RefScale=%g\12\0"
LC22:
	.ascii "Column %-2d\0"
LC23:
	.ascii " UserID=%08X\0"
LC24:
	.ascii " Weight=%.4f\0"
LC25:
	.ascii " Width=%d\0"
LC26:
	.ascii " Visible=%d\0"
LC27:
	.ascii " Sort=%d%c\0"
LC28:
	.ascii " Order=%d\0"
	.text
	.p2align 4
	.globl	__ZL29TableSettingsHandler_WriteAllP12ImGuiContextP20ImGuiSettingsHandlerP15ImGuiTextBuffer.lto_priv.0
	.def	__ZL29TableSettingsHandler_WriteAllP12ImGuiContextP20ImGuiSettingsHandlerP15ImGuiTextBuffer.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL29TableSettingsHandler_WriteAllP12ImGuiContextP20ImGuiSettingsHandlerP15ImGuiTextBuffer.lto_priv.0:
LFB47:
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
	subl	$36, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %eax
	movl	16(%ebp), %ebx
	movl	23472(%eax), %edx
	testl	%edx, %edx
	je	L300
	movl	%edx, %ecx
	addl	$4, %edx
	.p2align 4
	.p2align 3
L342:
	movl	(%edx), %eax
	testl	%eax, %eax
	je	L302
	movl	4(%edx), %edi
	movl	%edi, 32(%esp)
	andl	$15, %edi
	je	L302
	movl	(%ebx), %esi
	movswl	12(%edx), %ecx
	cmpl	$1, %esi
	adcl	$29, %esi
	imull	$50, %ecx, %edi
	addl	%edi, %esi
	cmpl	4(%ebx), %esi
	jle	L303
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L304
	addl	$1, 188(%eax)
L304:
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	movl	%edx, 28(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	8(%ebx), %edi
	movl	28(%esp), %edx
	movl	%eax, %ecx
	testl	%edi, %edi
	je	L305
	movl	(%ebx), %eax
	movl	%ecx, (%esp)
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 24(%esp)
	movl	%ecx, 28(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	28(%esp), %ecx
	movl	24(%esp), %edx
	testl	%eax, %eax
	je	L306
	subl	$1, 188(%eax)
L306:
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	movl	%edx, 24(%esp)
	movl	%ecx, 28(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	24(%esp), %edx
	movl	28(%esp), %ecx
L305:
	movl	%ecx, 8(%ebx)
	movl	%esi, 4(%ebx)
	movswl	12(%edx), %ecx
	movl	(%edx), %eax
L303:
	movl	%ecx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%edx, 28(%esp)
	movl	(%eax), %eax
	movl	$LC20, 4(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 8(%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	movl	28(%esp), %edx
	xorps	%xmm1, %xmm1
	movss	8(%edx), %xmm0
	ucomiss	%xmm1, %xmm0
	jp	L347
	jne	L347
L307:
	cmpw	$0, 12(%edx)
	jle	L309
	movl	32(%esp), %ecx
	leal	20(%edx), %esi
	movl	%ecx, %edi
	movl	%ecx, %eax
	andl	$5, %edi
	andl	$8, %eax
	movl	%edi, 28(%esp)
	movl	%ecx, %edi
	movl	%eax, 24(%esp)
	andl	$2, %edi
	jne	L344
	testl	%eax, %eax
	je	L412
	movl	%edx, 24(%esp)
	jmp	L311
	.p2align 4,,10
	.p2align 3
L319:
	movl	%edi, 8(%esp)
	movl	$LC22, 4(%esp)
	movl	%ebx, (%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	movl	4(%esi), %edx
	testl	%edx, %edx
	jne	L332
L331:
	testb	$1, 32(%esp)
	je	L409
	testb	$8, 14(%esi)
	jne	L328
L330:
	cvttss2sil	(%esi), %edx
	movl	$LC25, 4(%esp)
	movl	%ebx, (%esp)
	movl	%edx, 8(%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	.p2align 4
	.p2align 3
L409:
	testb	$4, 32(%esp)
	je	L327
	movzbl	14(%esi), %edx
	movl	$LC26, 4(%esp)
	movl	%ebx, (%esp)
	shrb	$2, %dl
	andl	$1, %edx
	movl	%edx, 8(%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
L327:
	movswl	12(%esi), %edx
	cmpw	$-1, %dx
	je	L324
	movzbl	14(%esi), %ecx
	movl	$118, %eax
	movl	%edx, 8(%esp)
	movl	$LC27, 4(%esp)
	andl	$3, %ecx
	movl	%ebx, (%esp)
	cmpb	$1, %cl
	movl	$94, %ecx
	cmove	%eax, %ecx
	movl	%ecx, 12(%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
L324:
	movl	%ebx, %ecx
	call	__ZN15ImGuiTextBuffer6appendEPKcS1_.constprop.0
L322:
	movl	24(%esp), %eax
	addl	$1, %edi
	addl	$16, %esi
	movswl	12(%eax), %edx
	cmpl	%edx, %edi
	jge	L413
L311:
	movl	28(%esp), %eax
	orl	4(%esi), %eax
	jne	L319
	cmpw	$-1, 12(%esi)
	je	L322
	movl	%edi, 8(%esp)
	movl	$LC22, 4(%esp)
	movl	%ebx, (%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	movl	4(%esi), %edx
	testl	%edx, %edx
	je	L409
	.p2align 4
	.p2align 3
L332:
	movl	%edx, 8(%esp)
	movl	$LC23, 4(%esp)
	movl	%ebx, (%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	jmp	L331
	.p2align 4,,10
	.p2align 3
L411:
	movl	20(%esp), %edx
L309:
	movl	%ebx, %ecx
	movl	%edx, 32(%esp)
	call	__ZN15ImGuiTextBuffer6appendEPKcS1_.constprop.0
	movl	8(%ebp), %eax
	movl	32(%esp), %edx
	movl	23472(%eax), %ecx
L302:
	movl	8(%ebp), %eax
	addl	-4(%edx), %edx
	movl	23464(%eax), %eax
	leal	4(%ecx,%eax), %eax
	cmpl	%eax, %edx
	jne	L342
L300:
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
L328:
	.cfi_restore_state
	flds	(%esi)
	movl	$LC24, 4(%esp)
	movl	%ebx, (%esp)
	fstpl	8(%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	testb	$8, 14(%esi)
	jne	L409
	jmp	L330
	.p2align 4,,10
	.p2align 3
L413:
	movl	%eax, %edx
	jmp	L309
	.p2align 4,,10
	.p2align 3
L347:
	movss	%xmm0, 28(%esp)
	flds	28(%esp)
	movl	$LC21, 4(%esp)
	movl	%ebx, (%esp)
	fstpl	8(%esp)
	movl	%edx, 24(%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	movl	24(%esp), %edx
	jmp	L307
	.p2align 4,,10
	.p2align 3
L344:
	movl	%edx, 20(%esp)
	xorl	%edi, %edi
	jmp	L310
	.p2align 4,,10
	.p2align 3
L333:
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	movl	4(%esi), %eax
	testl	%eax, %eax
	jne	L334
L336:
	testb	$1, 32(%esp)
	je	L337
	testb	$8, 14(%esi)
	jne	L414
L338:
	cvttss2sil	(%esi), %eax
	movl	$LC25, 4(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 8(%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	.p2align 4
	.p2align 3
L337:
	testb	$4, 32(%esp)
	je	L339
	movzbl	14(%esi), %eax
	movl	$LC26, 4(%esp)
	movl	%ebx, (%esp)
	shrb	$2, %al
	andl	$1, %eax
	movl	%eax, 8(%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
L339:
	movswl	10(%esi), %eax
	movl	$LC28, 4(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 8(%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	movl	24(%esp), %eax
	testl	%eax, %eax
	je	L340
	movswl	12(%esi), %eax
	cmpw	$-1, %ax
	je	L340
	movzbl	14(%esi), %edx
	movl	$94, %ecx
	movl	%eax, 8(%esp)
	movl	$LC27, 4(%esp)
	andl	$3, %edx
	movl	%ebx, (%esp)
	cmpb	$1, %dl
	movl	$118, %edx
	cmovne	%ecx, %edx
	movl	%edx, 12(%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
L340:
	movl	%ebx, %ecx
	addl	$1, %edi
	addl	$16, %esi
	call	__ZN15ImGuiTextBuffer6appendEPKcS1_.constprop.0
	movl	20(%esp), %eax
	movswl	12(%eax), %eax
	cmpl	%edi, %eax
	jle	L411
L310:
	movl	28(%esp), %eax
	orl	4(%esi), %eax
	movl	%edi, 8(%esp)
	movl	$LC22, 4(%esp)
	movl	%ebx, (%esp)
	jne	L333
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	movl	4(%esi), %eax
	testl	%eax, %eax
	je	L337
L334:
	movl	%eax, 8(%esp)
	movl	$LC23, 4(%esp)
	movl	%ebx, (%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	jmp	L336
	.p2align 4,,10
	.p2align 3
L414:
	flds	(%esi)
	movl	$LC24, 4(%esp)
	movl	%ebx, (%esp)
	fstpl	8(%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	testb	$8, 14(%esi)
	jne	L337
	jmp	L338
	.p2align 4,,10
	.p2align 3
L412:
	movl	%edx, 20(%esp)
	movl	%eax, %edi
	jmp	L318
	.p2align 4,,10
	.p2align 3
L315:
	cvttss2sil	(%esi), %eax
	movl	$LC25, 4(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 8(%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
L314:
	testb	$4, 32(%esp)
	je	L317
	movzbl	14(%esi), %eax
	movl	$LC26, 4(%esp)
	movl	%ebx, (%esp)
	shrb	$2, %al
	andl	$1, %eax
	movl	%eax, 8(%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
L317:
	movl	%ebx, %ecx
	call	__ZN15ImGuiTextBuffer6appendEPKcS1_.constprop.0
L312:
	movl	20(%esp), %eax
	addl	$1, %edi
	addl	$16, %esi
	movswl	12(%eax), %eax
	cmpl	%eax, %edi
	jge	L411
L318:
	movl	28(%esp), %eax
	orl	4(%esi), %eax
	je	L312
	movl	%edi, 8(%esp)
	movl	$LC22, 4(%esp)
	movl	%ebx, (%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	movl	4(%esi), %eax
	testl	%eax, %eax
	je	L313
	movl	%eax, 8(%esp)
	movl	$LC23, 4(%esp)
	movl	%ebx, (%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
L313:
	testb	$1, 32(%esp)
	je	L314
	testb	$8, 14(%esi)
	je	L315
	flds	(%esi)
	movl	$LC24, 4(%esp)
	movl	%ebx, (%esp)
	fstpl	8(%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	testb	$8, 14(%esi)
	jne	L314
	jmp	L315
	.cfi_endproc
LFE47:
	.p2align 4
	.globl	__ZN5ImGui15StyleColorsDarkEP10ImGuiStyle
	.def	__ZN5ImGui15StyleColorsDarkEP10ImGuiStyle;	.scl	2;	.type	32;	.endef
__ZN5ImGui15StyleColorsDarkEP10ImGuiStyle:
LFB48:
	.cfi_startproc
	movss	LC1, %xmm0
	movups	LC35, %xmm3
	xorps	%xmm1, %xmm1
	movups	LC36, %xmm2
	movups	%xmm1, 268(%eax)
	shufps	$0, %xmm0, %xmm0
	movups	%xmm0, 220(%eax)
	movups	LC30, %xmm0
	movups	%xmm1, 316(%eax)
	movups	%xmm0, 236(%eax)
	movups	LC31, %xmm0
	movups	%xmm3, 348(%eax)
	movups	%xmm0, 252(%eax)
	movups	LC32, %xmm0
	movups	%xmm2, 364(%eax)
	movups	%xmm0, 284(%eax)
	movups	LC33, %xmm0
	movups	%xmm0, 300(%eax)
	movups	LC34, %xmm0
	movups	%xmm0, 332(%eax)
	movups	LC37, %xmm0
	movups	%xmm0, 380(%eax)
	movups	LC38, %xmm0
	movups	%xmm0, 396(%eax)
	movups	LC39, %xmm0
	movups	%xmm0, 412(%eax)
	movups	LC40, %xmm0
	movups	%xmm0, 428(%eax)
	movups	LC41, %xmm0
	movups	%xmm0, 444(%eax)
	movups	LC42, %xmm0
	movups	%xmm0, 460(%eax)
	movups	LC43, %xmm0
	movups	%xmm0, 476(%eax)
	movups	LC44, %xmm0
	movups	LC46, %xmm4
	movups	%xmm3, 556(%eax)
	movups	LC47, %xmm3
	movups	%xmm2, 716(%eax)
	movups	LC53, %xmm2
	movups	%xmm3, 588(%eax)
	movups	LC48, %xmm3
	movups	%xmm0, 492(%eax)
	movups	LC45, %xmm0
	movups	%xmm3, 604(%eax)
	movups	LC49, %xmm3
	movups	%xmm2, 732(%eax)
	movups	LC54, %xmm2
	movups	%xmm3, 620(%eax)
	movups	LC50, %xmm3
	movups	%xmm0, 508(%eax)
	movups	%xmm3, 668(%eax)
	movups	LC51, %xmm3
	movups	%xmm0, 540(%eax)
	movups	%xmm3, 684(%eax)
	movups	LC52, %xmm3
	movups	%xmm0, 572(%eax)
	movups	%xmm0, 636(%eax)
	movups	%xmm2, 748(%eax)
	movl	$1054615798, 652(%eax)
	movl	$1054615798, 656(%eax)
	movl	$1056964608, 660(%eax)
	movl	$1056964608, 664(%eax)
	movl	$1048911544, 764(%eax)
	movups	%xmm4, 524(%eax)
	movups	%xmm3, 700(%eax)
	movl	$1058474557, 768(%eax)
	movups	LC55, %xmm2
	movups	%xmm1, 972(%eax)
	movups	LC67, %xmm1
	movups	%xmm2, 780(%eax)
	movups	LC56, %xmm2
	movups	%xmm1, 988(%eax)
	movups	LC68, %xmm1
	movups	%xmm2, 796(%eax)
	movups	LC57, %xmm2
	movups	%xmm1, 1004(%eax)
	movups	LC69, %xmm1
	movups	%xmm2, 812(%eax)
	movups	LC58, %xmm2
	movl	$1065017672, 772(%eax)
	movups	%xmm2, 828(%eax)
	movups	LC59, %xmm2
	movl	$1061997773, 776(%eax)
	movups	%xmm2, 844(%eax)
	movups	LC60, %xmm2
	movups	%xmm2, 860(%eax)
	movups	LC61, %xmm2
	movups	%xmm2, 876(%eax)
	movups	LC62, %xmm2
	movups	%xmm2, 892(%eax)
	movups	LC63, %xmm2
	movups	%xmm2, 908(%eax)
	movups	LC64, %xmm2
	movups	%xmm2, 924(%eax)
	movups	LC65, %xmm2
	movups	%xmm2, 940(%eax)
	movups	LC66, %xmm2
	movups	%xmm2, 956(%eax)
	movups	%xmm1, 1020(%eax)
	movups	%xmm0, 1036(%eax)
	movups	LC70, %xmm0
	movups	%xmm0, 1052(%eax)
	movups	LC71, %xmm0
	movups	%xmm0, 1068(%eax)
	movups	LC72, %xmm0
	movups	%xmm0, 1084(%eax)
	ret
	.cfi_endproc
LFE48:
	.align 2
	.p2align 4
	.globl	__ZN10ImDrawList10AddDrawCmdEv
	.def	__ZN10ImDrawList10AddDrawCmdEv;	.scl	2;	.type	32;	.endef
__ZN10ImDrawList10AddDrawCmdEv:
LFB51:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	andl	$-8, %esp
	subl	$60, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	96(%ecx), %eax
	movss	116(%ecx), %xmm0
	movss	12(%ecx), %xmm1
	movl	$0, 48(%esp)
	movl	%eax, 20(%esp)
	movl	100(%ecx), %eax
	unpcklps	%xmm1, %xmm0
	movl	$0, 52(%esp)
	movl	%eax, 24(%esp)
	movl	104(%ecx), %eax
	movl	$0, 56(%esp)
	movl	%eax, 28(%esp)
	movl	108(%ecx), %eax
	movlps	%xmm0, 40(%esp)
	movl	%eax, 32(%esp)
	movl	112(%ecx), %eax
	movl	%eax, 36(%esp)
	movl	(%ecx), %eax
	cmpl	4(%ecx), %eax
	je	L434
L417:
	movl	8(%ecx), %ebx
L420:
	movl	20(%esp), %edx
	leal	(%eax,%eax,4), %eax
	movl	%edx, (%ebx,%eax,8)
	movl	24(%esp), %edx
	movl	%edx, 4(%ebx,%eax,8)
	movl	28(%esp), %edx
	movl	%edx, 8(%ebx,%eax,8)
	movl	32(%esp), %edx
	movl	%edx, 12(%ebx,%eax,8)
	movl	36(%esp), %edx
	movl	%edx, 16(%ebx,%eax,8)
	movl	40(%esp), %edx
	movl	%edx, 20(%ebx,%eax,8)
	movl	44(%esp), %edx
	movl	%edx, 24(%ebx,%eax,8)
	movl	48(%esp), %edx
	movl	%edx, 28(%ebx,%eax,8)
	movl	52(%esp), %edx
	movl	%edx, 32(%ebx,%eax,8)
	movl	56(%esp), %edx
	movl	%edx, 36(%ebx,%eax,8)
	addl	$1, (%ecx)
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
L434:
	.cfi_restore_state
	leal	1(%eax), %ebx
	testl	%eax, %eax
	jne	L418
	movl	$8, %edx
	cmpl	%edx, %ebx
	cmovge	%ebx, %edx
L419:
	movl	_GImGui, %ebx
	leal	(%edx,%edx,4), %eax
	sall	$3, %eax
	testl	%ebx, %ebx
	je	L421
	addl	$1, 188(%ebx)
L421:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 16(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	12(%esp), %ecx
	movl	16(%esp), %edx
	movl	%eax, %ebx
	movl	8(%ecx), %esi
	testl	%esi, %esi
	je	L422
	movl	(%ecx), %eax
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	leal	(%eax,%eax,4), %eax
	movl	%edx, 12(%esp)
	sall	$3, %eax
	movl	%ecx, 16(%esp)
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	16(%esp), %ecx
	movl	12(%esp), %edx
	testl	%eax, %eax
	je	L423
	subl	$1, 188(%eax)
L423:
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 16(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	12(%esp), %ecx
	movl	16(%esp), %edx
L422:
	movl	%ebx, 8(%ecx)
	movl	(%ecx), %eax
	movl	%edx, 4(%ecx)
	jmp	L420
	.p2align 4,,10
	.p2align 3
L418:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	cmpl	%ebx, %edx
	cmovl	%ebx, %edx
	cmpl	%edx, %eax
	jge	L417
	jmp	L419
	.cfi_endproc
LFE51:
	.align 2
	.p2align 4
	.def	__ZN10ImDrawList18_OnChangedClipRectEv;	.scl	3;	.type	32;	.endef
__ZN10ImDrawList18_OnChangedClipRectEv:
LFB54:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$16, %esp
	.cfi_def_cfa_offset 28
	movl	(%ecx), %eax
	movl	8(%ecx), %edx
	leal	-1(%eax), %ebx
	leal	(%ebx,%ebx,4), %esi
	leal	(%edx,%esi,8), %esi
	movl	28(%esi), %edx
	testl	%edx, %edx
	je	L436
	movl	96(%ecx), %eax
	cmpl	%eax, (%esi)
	je	L443
L437:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__ZN10ImDrawList10AddDrawCmdEv
	.p2align 4,,10
	.p2align 3
L436:
	.cfi_restore_state
	cmpl	$1, %eax
	jle	L439
	leal	-40(%esi), %eax
	movl	$24, 8(%esp)
	movl	%eax, 4(%esp)
	leal	96(%ecx), %eax
	movl	%eax, (%esp)
	movl	%ecx, 12(%esp)
	call	_memcmp
	movl	12(%esp), %ecx
	testl	%eax, %eax
	je	L444
L439:
	movl	96(%ecx), %eax
	movl	%eax, (%esi)
	movl	100(%ecx), %eax
	movl	%eax, 4(%esi)
	movl	104(%ecx), %eax
	movl	%eax, 8(%esi)
	movl	108(%ecx), %eax
	movl	%eax, 12(%esi)
L435:
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
L443:
	.cfi_restore_state
	movl	100(%ecx), %eax
	cmpl	%eax, 4(%esi)
	jne	L437
	movl	104(%ecx), %eax
	cmpl	%eax, 8(%esi)
	jne	L437
	movl	108(%ecx), %eax
	cmpl	%eax, 12(%esi)
	jne	L437
	jmp	L439
	.p2align 4,,10
	.p2align 3
L444:
	movl	-12(%esi), %eax
	addl	-16(%esi), %eax
	cmpl	24(%esi), %eax
	jne	L439
	movl	-8(%esi), %eax
	testl	%eax, %eax
	jne	L439
	movl	%ebx, (%ecx)
	jmp	L435
	.cfi_endproc
LFE54:
	.align 2
	.p2align 4
	.globl	__ZN10ImDrawList19_OnChangedTextureIDEv
	.def	__ZN10ImDrawList19_OnChangedTextureIDEv;	.scl	2;	.type	32;	.endef
__ZN10ImDrawList19_OnChangedTextureIDEv:
LFB55:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$16, %esp
	.cfi_def_cfa_offset 28
	movl	(%ecx), %eax
	movl	8(%ecx), %edx
	leal	-1(%eax), %ebx
	leal	(%ebx,%ebx,4), %esi
	leal	(%edx,%esi,8), %esi
	movl	28(%esi), %edx
	testl	%edx, %edx
	je	L446
	movl	112(%ecx), %eax
	cmpl	%eax, 16(%esi)
	jne	L452
L447:
	movl	%eax, 16(%esi)
L445:
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
L446:
	.cfi_restore_state
	cmpl	$1, %eax
	jle	L449
	leal	-40(%esi), %eax
	movl	$24, 8(%esp)
	movl	%eax, 4(%esp)
	leal	96(%ecx), %eax
	movl	%eax, (%esp)
	movl	%ecx, 12(%esp)
	call	_memcmp
	movl	12(%esp), %ecx
	testl	%eax, %eax
	jne	L449
	movl	-12(%esi), %eax
	addl	-16(%esi), %eax
	cmpl	24(%esi), %eax
	je	L453
	.p2align 4
	.p2align 3
L449:
	movl	112(%ecx), %eax
	jmp	L447
	.p2align 4,,10
	.p2align 3
L452:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__ZN10ImDrawList10AddDrawCmdEv
	.p2align 4,,10
	.p2align 3
L453:
	.cfi_restore_state
	movl	-8(%esi), %eax
	testl	%eax, %eax
	jne	L449
	movl	%ebx, (%ecx)
	jmp	L445
	.cfi_endproc
LFE55:
	.align 2
	.p2align 4
	.globl	__ZN10ImDrawList12PushClipRectERK6ImVec2S2_b.isra.0
	.def	__ZN10ImDrawList12PushClipRectERK6ImVec2S2_b.isra.0;	.scl	2;	.type	32;	.endef
__ZN10ImDrawList12PushClipRectERK6ImVec2S2_b.isra.0:
LFB57:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$76, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movss	8(%ebp), %xmm4
	cmpb	$0, 12(%ebp)
	je	L455
	movss	96(%ecx), %xmm7
	movss	100(%ecx), %xmm3
	movss	104(%ecx), %xmm6
	movss	108(%ecx), %xmm5
	maxss	%xmm0, %xmm7
	maxss	%xmm1, %xmm3
	minss	%xmm2, %xmm6
	minss	%xmm4, %xmm5
	movaps	%xmm7, %xmm0
	movaps	%xmm3, %xmm1
	movaps	%xmm6, %xmm2
	movaps	%xmm5, %xmm4
L455:
	movaps	%xmm2, %xmm3
	movaps	%xmm0, %xmm5
	movl	60(%ecx), %eax
	cmpless	%xmm0, %xmm3
	unpcklps	%xmm1, %xmm0
	andps	%xmm3, %xmm5
	andnps	%xmm2, %xmm3
	movaps	%xmm4, %xmm2
	cmpnless	%xmm1, %xmm2
	orps	%xmm5, %xmm3
	andps	%xmm2, %xmm4
	andnps	%xmm1, %xmm2
	orps	%xmm4, %xmm2
	unpcklps	%xmm2, %xmm3
	movlhps	%xmm3, %xmm0
	cmpl	64(%ecx), %eax
	je	L485
L462:
	movl	68(%ecx), %edx
L465:
	sall	$4, %eax
	movups	%xmm0, 60(%esp)
	addl	%edx, %eax
	movl	64(%esp), %edx
	movss	%xmm0, (%eax)
	movl	%edx, 4(%eax)
	movl	68(%esp), %edx
	movl	%edx, 8(%eax)
	movl	72(%esp), %edx
	movl	%edx, 12(%eax)
	addl	$1, 60(%ecx)
	movups	%xmm0, 96(%ecx)
	call	__ZN10ImDrawList18_OnChangedClipRectEv
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$8
	.p2align 4,,10
	.p2align 3
L485:
	.cfi_restore_state
	leal	1(%eax), %edx
	testl	%eax, %eax
	jne	L463
	movl	$8, %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, %esi
L464:
	movl	_GImGui, %eax
	movl	%esi, %edx
	sall	$4, %edx
	testl	%eax, %eax
	je	L466
	addl	$1, 188(%eax)
L466:
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	movl	%ecx, 28(%esp)
	movups	%xmm0, 44(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	28(%esp), %ecx
	movups	44(%esp), %xmm0
	movl	%eax, %edx
	movl	68(%ecx), %ebx
	testl	%ebx, %ebx
	je	L467
	movl	60(%ecx), %eax
	movl	%edx, (%esp)
	movl	%ebx, 4(%esp)
	sall	$4, %eax
	movl	%edx, 44(%esp)
	movl	%eax, 8(%esp)
	movups	%xmm0, 12(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	44(%esp), %edx
	movl	28(%esp), %ecx
	movups	12(%esp), %xmm0
	testl	%eax, %eax
	je	L468
	subl	$1, 188(%eax)
L468:
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 44(%esp)
	movups	%xmm0, 28(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	12(%esp), %ecx
	movups	28(%esp), %xmm0
	movl	44(%esp), %edx
L467:
	movl	%edx, 68(%ecx)
	movl	60(%ecx), %eax
	movl	%esi, 64(%ecx)
	jmp	L465
	.p2align 4,,10
	.p2align 3
L463:
	movl	%edx, %ebx
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	cmpl	%ebx, %edx
	cmovl	%ebx, %edx
	movl	%edx, %esi
	cmpl	%edx, %eax
	jge	L462
	jmp	L464
	.cfi_endproc
LFE57:
	.align 2
	.p2align 4
	.globl	__ZN10ImDrawList11PopClipRectEv
	.def	__ZN10ImDrawList11PopClipRectEv;	.scl	2;	.type	32;	.endef
__ZN10ImDrawList11PopClipRectEv:
LFB60:
	.cfi_startproc
	movl	60(%ecx), %eax
	movl	%eax, %edx
	subl	$1, %edx
	movl	%edx, 60(%ecx)
	je	L487
	addl	$268435454, %eax
	sall	$4, %eax
	addl	68(%ecx), %eax
L488:
	movl	(%eax), %edx
	movl	%edx, 96(%ecx)
	movl	4(%eax), %edx
	movl	%edx, 100(%ecx)
	movl	8(%eax), %edx
	movl	%edx, 104(%ecx)
	movl	12(%eax), %eax
	movl	%eax, 108(%ecx)
	jmp	__ZN10ImDrawList18_OnChangedClipRectEv
	.p2align 4,,10
	.p2align 3
L487:
	movl	44(%ecx), %eax
	addl	$24, %eax
	jmp	L488
	.cfi_endproc
LFE60:
	.align 2
	.p2align 4
	.globl	__ZN10ImDrawList13PushTextureIDEPv
	.def	__ZN10ImDrawList13PushTextureIDEPv;	.scl	2;	.type	32;	.endef
__ZN10ImDrawList13PushTextureIDEPv:
LFB61:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%ebx, 20(%esp)
	movl	72(%ecx), %eax
	cmpl	76(%ecx), %eax
	.cfi_offset 3, -12
	je	L507
L490:
	movl	80(%ecx), %ebx
L493:
	movl	32(%esp), %edx
	movl	%edx, (%ebx,%eax,4)
	addl	$1, 72(%ecx)
	movl	%edx, 112(%ecx)
	call	__ZN10ImDrawList19_OnChangedTextureIDEv
	movl	20(%esp), %ebx
	addl	$28, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret	$4
	.p2align 4,,10
	.p2align 3
L507:
	.cfi_restore_state
	movl	%esi, 24(%esp)
	.cfi_offset 6, -8
	leal	1(%eax), %edx
	testl	%eax, %eax
	jne	L491
	movl	$8, %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, %esi
L492:
	movl	_GImGui, %eax
	leal	0(,%esi,4), %ebx
	testl	%eax, %eax
	je	L494
	addl	$1, 188(%eax)
L494:
	movl	%ebx, (%esp)
	movl	$0, 4(%esp)
	movl	%ecx, 12(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	12(%esp), %ecx
	movl	%eax, %ebx
	movl	80(%ecx), %edx
	testl	%edx, %edx
	je	L495
	movl	72(%ecx), %eax
	movl	%edx, 4(%esp)
	movl	%ebx, (%esp)
	sall	$2, %eax
	movl	%ecx, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	12(%esp), %edx
	movl	16(%esp), %ecx
	testl	%eax, %eax
	je	L496
	subl	$1, 188(%eax)
L496:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 12(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	12(%esp), %ecx
L495:
	movl	%ebx, 80(%ecx)
	movl	72(%ecx), %eax
	movl	%esi, 76(%ecx)
	movl	24(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L493
	.p2align 4,,10
	.p2align 3
L491:
	.cfi_restore_state
	movl	%eax, %ebx
	shrl	$31, %ebx
	addl	%eax, %ebx
	sarl	%ebx
	addl	%eax, %ebx
	cmpl	%edx, %ebx
	cmovge	%ebx, %edx
	movl	%edx, %esi
	cmpl	%edx, %eax
	jl	L492
	movl	24(%esp), %esi
	.cfi_restore 6
	jmp	L490
	.cfi_endproc
LFE61:
	.align 2
	.p2align 4
	.globl	__ZN10ImDrawList11PrimReserveEii
	.def	__ZN10ImDrawList11PrimReserveEii;	.scl	2;	.type	32;	.endef
__ZN10ImDrawList11PrimReserveEii:
LFB64:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -20
	movl	%ecx, %ebx
	movl	%edi, 28(%esp)
	.cfi_offset 7, -12
	movl	44(%esp), %edi
	movl	%esi, 24(%esp)
	movl	40(%ecx), %eax
	addl	%edi, %eax
	cmpl	$65535, %eax
	.cfi_offset 6, -16
	jbe	L509
	testb	$8, 36(%ecx)
	jne	L549
L509:
	movl	(%ebx), %eax
	movl	40(%esp), %esi
	leal	-5(%eax,%eax,4), %edx
	movl	8(%ebx), %eax
	addl	%esi, 28(%eax,%edx,8)
	movl	24(%ebx), %esi
	movl	28(%ebx), %eax
	leal	(%edi,%esi), %edx
	cmpl	%eax, %edx
	jle	L515
	testl	%eax, %eax
	jne	L513
	movl	$8, %ecx
	movl	%ebp, 32(%esp)
	cmpl	%ecx, %edx
	cmovge	%edx, %ecx
	.cfi_offset 5, -8
L514:
	movl	_GImGui, %edi
	leal	(%ecx,%ecx,4), %eax
	sall	$2, %eax
	testl	%edi, %edi
	je	L516
	addl	$1, 188(%edi)
L516:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	32(%ebx), %ebp
	movl	12(%esp), %edx
	movl	16(%esp), %ecx
	movl	%eax, %edi
	testl	%ebp, %ebp
	je	L517
	movl	24(%ebx), %eax
	movl	%ebp, 4(%esp)
	movl	%edi, (%esp)
	leal	(%eax,%eax,4), %eax
	sall	$2, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	12(%esp), %edx
	movl	16(%esp), %ecx
	testl	%eax, %eax
	je	L518
	subl	$1, 188(%eax)
L518:
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	16(%esp), %ecx
	movl	12(%esp), %edx
L517:
	movl	%edi, 32(%ebx)
	movl	%ecx, 28(%ebx)
	movl	32(%esp), %ebp
	.cfi_restore 5
	jmp	L512
	.p2align 4,,10
	.p2align 3
L513:
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	addl	%eax, %ecx
	cmpl	%edx, %ecx
	cmovl	%edx, %ecx
	cmpl	%ecx, %eax
	jl	L550
L515:
	movl	32(%ebx), %edi
L512:
	leal	(%esi,%esi,4), %eax
	movl	%edx, 24(%ebx)
	movl	40(%esp), %ecx
	leal	(%edi,%eax,4), %eax
	movl	12(%ebx), %edx
	movl	%eax, 52(%ebx)
	movl	16(%ebx), %eax
	addl	%edx, %ecx
	cmpl	%eax, %ecx
	jle	L523
	testl	%eax, %eax
	jne	L521
	movl	$8, %esi
	movl	%ebp, 32(%esp)
	cmpl	%esi, %ecx
	cmovge	%ecx, %esi
	.cfi_offset 5, -8
L522:
	movl	_GImGui, %eax
	leal	(%esi,%esi), %edi
	testl	%eax, %eax
	je	L524
	addl	$1, 188(%eax)
L524:
	movl	%edi, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	20(%ebx), %ebp
	movl	12(%esp), %ecx
	movl	16(%esp), %edx
	movl	%eax, %edi
	testl	%ebp, %ebp
	je	L525
	movl	12(%ebx), %eax
	movl	%ebp, 4(%esp)
	movl	%edi, (%esp)
	addl	%eax, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	12(%esp), %ecx
	movl	16(%esp), %edx
	testl	%eax, %eax
	je	L526
	subl	$1, 188(%eax)
L526:
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	16(%esp), %edx
	movl	12(%esp), %ecx
L525:
	movl	%edi, 20(%ebx)
	movl	%esi, 16(%ebx)
	movl	32(%esp), %ebp
	.cfi_restore 5
	jmp	L520
	.p2align 4,,10
	.p2align 3
L521:
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%eax, %esi
	sarl	%esi
	addl	%eax, %esi
	cmpl	%ecx, %esi
	cmovl	%ecx, %esi
	cmpl	%esi, %eax
	jl	L551
L523:
	movl	20(%ebx), %edi
L520:
	leal	(%edi,%edx,2), %eax
	movl	%ecx, 12(%ebx)
	movl	%eax, 56(%ebx)
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	movl	28(%esp), %edi
	addl	$36, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret	$8
	.p2align 4,,10
	.p2align 3
L549:
	.cfi_restore_state
	movl	(%ecx), %eax
	movl	$0, 40(%ecx)
	leal	-5(%eax,%eax,4), %edx
	movl	8(%ecx), %eax
	leal	(%eax,%edx,8), %eax
	movl	24(%ecx), %edx
	movl	%edx, 116(%ecx)
	movl	28(%eax), %ecx
	testl	%ecx, %ecx
	jne	L552
	movl	%edx, 20(%eax)
	jmp	L509
	.p2align 4,,10
	.p2align 3
L550:
	movl	%ebp, 32(%esp)
	.cfi_remember_state
	.cfi_offset 5, -8
	jmp	L514
	.p2align 4,,10
	.p2align 3
L551:
	.cfi_restore_state
	movl	%ebp, 32(%esp)
	.cfi_offset 5, -8
	jmp	L522
	.p2align 4,,10
	.p2align 3
L552:
	.cfi_restore 5
	movl	%ebx, %ecx
	call	__ZN10ImDrawList10AddDrawCmdEv
	jmp	L509
	.cfi_endproc
LFE64:
	.align 2
	.p2align 4
	.globl	__ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j
	.def	__ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j;	.scl	2;	.type	32;	.endef
__ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j:
LFB70:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	56(%ecx), %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	24(%esp), %eax
	movl	28(%esp), %ebx
	movl	20(%esp), %esi
	movss	(%eax), %xmm7
	movss	4(%eax), %xmm2
	movl	32(%esp), %eax
	movss	4(%esi), %xmm6
	movss	(%esi), %xmm3
	movss	4(%ebx), %xmm4
	movss	(%eax), %xmm5
	movss	4(%eax), %xmm0
	movl	40(%ecx), %eax
	movss	(%ebx), %xmm1
	movl	36(%esp), %edx
	movw	%ax, (%edi)
	movl	56(%ecx), %edi
	leal	1(%eax), %ebp
	movw	%bp, 2(%edi)
	movl	56(%ecx), %ebp
	leal	2(%eax), %edi
	movw	%di, 4(%ebp)
	movl	56(%ecx), %ebp
	movw	%ax, 6(%ebp)
	movl	56(%ecx), %ebp
	addl	$3, %eax
	movw	%di, 8(%ebp)
	movl	56(%ecx), %edi
	movw	%ax, 10(%edi)
	movl	4(%esi), %edi
	movl	52(%ecx), %eax
	movl	(%esi), %esi
	movl	%edi, 4(%eax)
	movl	%esi, (%eax)
	movl	(%ebx), %esi
	movl	4(%ebx), %edi
	movl	52(%ecx), %eax
	movl	24(%esp), %ebx
	movl	%esi, 8(%eax)
	movl	%edi, 12(%eax)
	movl	52(%ecx), %eax
	movl	%edx, 16(%eax)
	movl	52(%ecx), %eax
	movss	%xmm7, 20(%eax)
	movss	%xmm6, 24(%eax)
	movl	52(%ecx), %eax
	movss	%xmm5, 28(%eax)
	movss	%xmm4, 32(%eax)
	movl	52(%ecx), %eax
	movl	%edx, 36(%eax)
	movl	(%ebx), %esi
	movl	4(%ebx), %edi
	movl	52(%ecx), %eax
	movl	32(%esp), %ebx
	movl	%esi, 40(%eax)
	movl	%edi, 44(%eax)
	movl	4(%ebx), %edi
	movl	52(%ecx), %eax
	movl	(%ebx), %esi
	movl	%esi, 48(%eax)
	movl	%edi, 52(%eax)
	movl	52(%ecx), %eax
	movl	%edx, 56(%eax)
	movl	52(%ecx), %eax
	movss	%xmm3, 60(%eax)
	movss	%xmm2, 64(%eax)
	movl	52(%ecx), %eax
	movss	%xmm1, 68(%eax)
	movss	%xmm0, 72(%eax)
	movl	52(%ecx), %eax
	movl	%edx, 76(%eax)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	addl	$80, 52(%ecx)
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	addl	$4, 40(%ecx)
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	addl	$12, 56(%ecx)
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret	$20
	.cfi_endproc
LFE70:
	.align 2
	.p2align 4
	.globl	__ZN10ImDrawList16_PathArcToFastExERK6ImVec2fiii.constprop.0
	.def	__ZN10ImDrawList16_PathArcToFastExERK6ImVec2fiii.constprop.0;	.scl	2;	.type	32;	.endef
__ZN10ImDrawList16_PathArcToFastExERK6ImVec2fiii.constprop.0:
LFB72:
	.cfi_startproc
	subl	$60, %esp
	.cfi_def_cfa_offset 64
	movaps	%xmm0, %xmm1
	movss	LC74, %xmm0
	movl	%ebx, 44(%esp)
	.cfi_offset 3, -20
	movl	68(%esp), %ebx
	comiss	%xmm1, %xmm0
	movl	%ebp, 56(%esp)
	.cfi_offset 5, -8
	movl	64(%esp), %ebp
	movl	%esi, 48(%esp)
	movl	%ecx, 12(%esp)
	.cfi_offset 6, -16
	ja	L617
	movl	12(%esp), %eax
	movl	%edi, 52(%esp)
	movaps	%xmm1, %xmm0
	movss	%xmm1, 16(%esp)
	movl	44(%eax), %esi
	movl	%esi, %eax
	.cfi_offset 7, -12
	call	__ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.isra.0
	xorl	%edx, %edx
	movss	16(%esp), %xmm1
	movl	%eax, %ecx
	movl	$48, %eax
	idivl	%ecx
	movl	72(%esp), %ecx
	subl	%ebx, %ecx
	movl	%ecx, %edx
	negl	%edx
	cmovs	%ecx, %edx
	cmpl	$1, %eax
	jg	L566
	movl	$1, 16(%esp)
	leal	1(%edx), %eax
	movl	$1, %edi
	movb	$0, 23(%esp)
L567:
	movl	12(%esp), %edx
	movl	84(%edx), %ecx
	movl	%ecx, 24(%esp)
	addl	%eax, %ecx
	movl	88(%edx), %eax
	cmpl	%eax, %ecx
	jg	L569
	movl	92(%edx), %edx
L570:
	movl	12(%esp), %eax
	movl	%ecx, 84(%eax)
	movl	24(%esp), %eax
	leal	(%edx,%eax,8), %ecx
	movl	%ebx, %edx
	cmpl	$47, %ebx
	jbe	L576
	movl	$715827883, %eax
	imull	%ebx
	movl	%ebx, %eax
	sarl	$31, %eax
	sarl	$3, %edx
	subl	%eax, %edx
	leal	(%edx,%edx,2), %eax
	movl	%ebx, %edx
	sall	$4, %eax
	subl	%eax, %edx
	leal	48(%edx), %eax
	cmovs	%eax, %edx
L576:
	cmpl	%ebx, 72(%esp)
	jl	L578
	jmp	L577
	.p2align 4,,10
	.p2align 3
L618:
	movl	12(%esp), %eax
	addl	%edi, %edx
	movl	16(%esp), %edi
	cmpl	$47, %edx
	movl	44(%eax), %esi
	leal	-48(%edx), %eax
	cmovg	%eax, %edx
L577:
	leal	6(%edx), %eax
	addl	$8, %ecx
	addl	%edi, %ebx
	movss	8(%esi,%eax,8), %xmm2
	movss	12(%esi,%eax,8), %xmm0
	mulss	%xmm1, %xmm2
	addss	0(%ebp), %xmm2
	mulss	%xmm1, %xmm0
	movss	%xmm2, -8(%ecx)
	addss	4(%ebp), %xmm0
	movss	%xmm0, -4(%ecx)
	cmpl	%ebx, 72(%esp)
	jge	L618
	cmpb	$0, 23(%esp)
	je	L615
L621:
	movl	$715827883, %eax
	imull	72(%esp)
	movl	72(%esp), %eax
	sarl	$31, %eax
	sarl	$3, %edx
	subl	%eax, %edx
	leal	(%edx,%edx,2), %eax
	movl	72(%esp), %edx
	sall	$4, %eax
	subl	%eax, %edx
	leal	48(%edx), %eax
	cmovs	%eax, %edx
	movl	12(%esp), %eax
	movl	44(%eax), %eax
	addl	$6, %edx
	movss	8(%eax,%edx,8), %xmm0
	movss	12(%eax,%edx,8), %xmm2
	mulss	%xmm1, %xmm0
	addss	0(%ebp), %xmm0
	mulss	%xmm2, %xmm1
	movss	%xmm0, (%ecx)
	addss	4(%ebp), %xmm1
	movss	%xmm1, 4(%ecx)
	movl	52(%esp), %edi
	.cfi_restore 7
L555:
	movl	44(%esp), %ebx
	movl	48(%esp), %esi
	movl	56(%esp), %ebp
	addl	$60, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret	$12
	.p2align 4,,10
	.p2align 3
L566:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpl	$12, %eax
	movl	$12, %edi
	cmovle	%eax, %edi
	movl	%edx, %eax
	cltd
	idivl	%edi
	movl	%edi, 16(%esp)
	testl	%edx, %edx
	je	L619
	movl	16(%esp), %edi
	movb	$1, 23(%esp)
	addl	$2, %eax
	movl	%edi, %ecx
	subl	%edx, %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	addl	%ecx, %edx
	sarl	%edx
	subl	%edx, %edi
	jmp	L567
	.p2align 4,,10
	.p2align 3
L620:
	movl	12(%esp), %eax
	subl	%edi, %edx
	movl	16(%esp), %edi
	movl	44(%eax), %esi
	leal	48(%edx), %eax
	cmovs	%eax, %edx
L578:
	leal	6(%edx), %eax
	addl	$8, %ecx
	subl	%edi, %ebx
	movss	8(%esi,%eax,8), %xmm2
	movss	12(%esi,%eax,8), %xmm0
	mulss	%xmm1, %xmm2
	addss	0(%ebp), %xmm2
	mulss	%xmm1, %xmm0
	movss	%xmm2, -8(%ecx)
	addss	4(%ebp), %xmm0
	movss	%xmm0, -4(%ecx)
	cmpl	%ebx, 72(%esp)
	jle	L620
	cmpb	$0, 23(%esp)
	jne	L621
L615:
	movl	52(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L555
	.p2align 4,,10
	.p2align 3
L619:
	.cfi_restore_state
	movb	$0, 23(%esp)
	addl	$1, %eax
	jmp	L567
	.p2align 4,,10
	.p2align 3
L569:
	testl	%eax, %eax
	jne	L571
	movl	$8, %eax
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%eax, 28(%esp)
L572:
	movl	28(%esp), %eax
	leal	0(,%eax,8), %edx
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L573
	addl	$1, 188(%eax)
L573:
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	movl	%ecx, 32(%esp)
	movss	%xmm1, 36(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	32(%esp), %ecx
	movss	36(%esp), %xmm1
	movl	%eax, %edx
	movl	12(%esp), %eax
	movl	92(%eax), %esi
	testl	%esi, %esi
	je	L574
	movl	84(%eax), %eax
	movl	%edx, (%esp)
	movl	%esi, 4(%esp)
	sall	$3, %eax
	movl	%ecx, 36(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 32(%esp)
	movss	%xmm1, 40(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	32(%esp), %edx
	movl	36(%esp), %ecx
	movss	40(%esp), %xmm1
	testl	%eax, %eax
	je	L575
	subl	$1, 188(%eax)
L575:
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	movl	%edx, 36(%esp)
	movl	%ecx, 32(%esp)
	movss	%xmm1, 40(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movss	40(%esp), %xmm1
	movl	36(%esp), %edx
	movl	32(%esp), %ecx
L574:
	movl	12(%esp), %eax
	movl	28(%esp), %esi
	movl	%edx, 92(%eax)
	movl	%esi, 88(%eax)
	movl	44(%eax), %esi
	jmp	L570
	.p2align 4,,10
	.p2align 3
L617:
	.cfi_restore 7
	movl	84(%ecx), %eax
	cmpl	88(%ecx), %eax
	je	L622
L558:
	movl	12(%esp), %ebx
	movl	92(%ebx), %esi
L561:
	movl	0(%ebp), %edx
	movl	%edx, (%esi,%eax,8)
	movl	4(%ebp), %edx
	movl	%edx, 4(%esi,%eax,8)
	movl	12(%esp), %eax
	addl	$1, 84(%eax)
	jmp	L555
	.p2align 4,,10
	.p2align 3
L571:
	.cfi_offset 7, -12
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	movl	%edx, 28(%esp)
	cmpl	%edx, %eax
	jl	L572
	movl	12(%esp), %eax
	movl	92(%eax), %edx
	jmp	L570
	.p2align 4,,10
	.p2align 3
L622:
	.cfi_restore 7
	leal	1(%eax), %edx
	testl	%eax, %eax
	jne	L559
	movl	$8, %ebx
	movl	%edi, 52(%esp)
	cmpl	%ebx, %edx
	cmovge	%edx, %ebx
	.cfi_offset 7, -12
L560:
	movl	_GImGui, %eax
	leal	0(,%ebx,8), %edx
	testl	%eax, %eax
	je	L562
	addl	$1, 188(%eax)
L562:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %esi
	movl	12(%esp), %eax
	movl	92(%eax), %edi
	testl	%edi, %edi
	je	L563
	movl	84(%eax), %eax
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 16(%esp)
	sall	$3, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L564
	subl	$1, 188(%eax)
L564:
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L563:
	movl	12(%esp), %eax
	movl	%esi, 92(%eax)
	movl	%ebx, 88(%eax)
	movl	84(%eax), %eax
	movl	52(%esp), %edi
	.cfi_restore 7
	jmp	L561
L559:
	movl	%eax, %ebx
	shrl	$31, %ebx
	addl	%eax, %ebx
	sarl	%ebx
	addl	%eax, %ebx
	cmpl	%edx, %ebx
	cmovl	%edx, %ebx
	cmpl	%ebx, %eax
	jge	L558
	movl	%edi, 52(%esp)
	.cfi_offset 7, -12
	jmp	L560
	.cfi_endproc
LFE72:
	.align 2
	.p2align 4
	.def	__ZN10ImDrawList8PathRectERK6ImVec2S2_fi;	.scl	3;	.type	32;	.endef
__ZN10ImDrawList8PathRectERK6ImVec2S2_fi:
LFB76:
	.cfi_startproc
	subl	$60, %esp
	.cfi_def_cfa_offset 64
	movaps	%xmm0, %xmm3
	movl	%esi, 48(%esp)
	.cfi_offset 6, -16
	movl	68(%esp), %esi
	movl	%edi, 52(%esp)
	.cfi_offset 7, -12
	movl	64(%esp), %edi
	movl	%ebx, 44(%esp)
	movl	72(%esp), %eax
	.cfi_offset 3, -20
	movl	%ecx, %ebx
	movss	(%edi), %xmm4
	movss	(%esi), %xmm0
	subss	%xmm4, %xmm0
	cmpl	$-1, %eax
	je	L808
	leal	-1(%eax), %edx
	cmpl	$14, %edx
	jbe	L809
	testl	$496, %eax
	je	L810
L627:
	movss	%xmm0, 12(%esp)
	flds	12(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	%eax, %edx
	fstps	12(%esp)
	movss	12(%esp), %xmm0
	notl	%ecx
	andl	$80, %edx
	andl	$48, %ecx
	je	L628
	movss	LC74, %xmm1
	movl	%eax, %ecx
	notl	%ecx
	andl	$192, %ecx
	je	L628
L625:
	movss	LC1, %xmm2
	movss	4(%edi), %xmm5
	subss	%xmm2, %xmm0
	minss	%xmm0, %xmm3
	movss	4(%esi), %xmm0
	subss	%xmm5, %xmm0
	movss	%xmm0, 12(%esp)
	flds	12(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	fstps	12(%esp)
	cmpl	$80, %edx
	je	L629
	movl	%eax, %edx
	movss	12(%esp), %xmm0
	notl	%edx
	andl	$160, %edx
	je	L811
	subss	%xmm2, %xmm0
	movaps	%xmm3, %xmm2
	minss	%xmm0, %xmm2
	comiss	%xmm2, %xmm1
	ja	L807
	movl	%eax, %edx
	andl	$496, %edx
	cmpl	$256, %edx
	jne	L638
L807:
	movl	%ebp, 56(%esp)
	movl	84(%ebx), %eax
	cmpl	88(%ebx), %eax
	.cfi_offset 5, -8
	je	L812
L639:
	movl	92(%ebx), %ecx
L642:
	movl	(%edi), %edx
	movl	%edx, (%ecx,%eax,8)
	movl	4(%edi), %edx
	movl	%edx, 4(%ecx,%eax,8)
	movl	84(%ebx), %ecx
	movl	88(%ebx), %edx
	leal	1(%ecx), %eax
	movl	%eax, 84(%ebx)
	movss	4(%edi), %xmm0
	movss	(%esi), %xmm1
	movss	%xmm0, 40(%esp)
	movss	%xmm1, 36(%esp)
	cmpl	%eax, %edx
	je	L813
L646:
	movl	92(%ebx), %ecx
L649:
	movl	36(%esp), %edx
	movl	%edx, (%ecx,%eax,8)
	movl	40(%esp), %edx
	movl	%edx, 4(%ecx,%eax,8)
	movl	84(%ebx), %ecx
	movl	88(%ebx), %edx
	leal	1(%ecx), %eax
	movl	%eax, 84(%ebx)
	cmpl	%eax, %edx
	je	L814
L653:
	movl	92(%ebx), %ecx
L656:
	movl	(%esi), %edx
	movl	%edx, (%ecx,%eax,8)
	movl	4(%esi), %edx
	movl	%edx, 4(%ecx,%eax,8)
	movl	84(%ebx), %ecx
	movl	88(%ebx), %edx
	leal	1(%ecx), %eax
	movl	%eax, 84(%ebx)
	movss	4(%esi), %xmm0
	movss	(%edi), %xmm1
	movss	%xmm0, 40(%esp)
	movss	%xmm1, 36(%esp)
	cmpl	%eax, %edx
	je	L815
L660:
	movl	92(%ebx), %edi
L663:
	movl	36(%esp), %edx
	movl	%edx, (%edi,%eax,8)
	movl	40(%esp), %edx
	movl	%edx, 4(%edi,%eax,8)
	addl	$1, 84(%ebx)
	movl	56(%esp), %ebp
	.cfi_restore 5
L623:
	movl	44(%esp), %ebx
	movl	48(%esp), %esi
	movl	52(%esp), %edi
	addl	$60, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret	$12
	.p2align 4,,10
	.p2align 3
L810:
	.cfi_restore_state
	movss	%xmm0, 12(%esp)
	orb	$-16, %al
	flds	12(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	movss	LC74, %xmm1
	fstps	12(%esp)
	movss	12(%esp), %xmm0
	movl	$80, %edx
	mulss	%xmm1, %xmm0
	jmp	L625
	.p2align 4,,10
	.p2align 3
L628:
	movss	LC74, %xmm1
	movss	12(%esp), %xmm0
	mulss	%xmm1, %xmm0
	jmp	L625
	.p2align 4,,10
	.p2align 3
L811:
	mulss	%xmm1, %xmm0
	subss	%xmm2, %xmm0
	movaps	%xmm3, %xmm2
	minss	%xmm0, %xmm2
	comiss	%xmm2, %xmm1
	ja	L807
	testb	$16, %al
	jne	L816
	movaps	%xmm2, %xmm6
	movaps	%xmm2, %xmm3
	xorps	%xmm0, %xmm0
	jmp	L669
	.p2align 4,,10
	.p2align 3
L629:
	movss	12(%esp), %xmm6
	mulss	%xmm1, %xmm6
	subss	%xmm2, %xmm6
	minss	%xmm6, %xmm3
	comiss	%xmm3, %xmm1
	movaps	%xmm3, %xmm0
	movaps	%xmm3, %xmm2
	ja	L807
L637:
	xorps	%xmm6, %xmm6
	testb	$32, %al
	jne	L817
L668:
	xorps	%xmm3, %xmm3
	testb	$-128, %al
	jne	L818
L669:
	testb	$64, %al
	jne	L670
	xorps	%xmm2, %xmm2
L670:
	addss	%xmm0, %xmm4
	addss	%xmm0, %xmm5
	comiss	%xmm0, %xmm1
	movss	%xmm4, 36(%esp)
	movss	%xmm5, 40(%esp)
	ja	L819
L671:
	leal	36(%esp), %eax
	movl	$36, 8(%esp)
	movl	%ebx, %ecx
	movl	$24, 4(%esp)
	movl	%eax, (%esp)
	movss	%xmm1, 24(%esp)
	movss	%xmm6, 20(%esp)
	movss	%xmm2, 16(%esp)
	movss	%xmm3, 12(%esp)
	call	__ZN10ImDrawList16_PathArcToFastExERK6ImVec2fiii.constprop.0
	.cfi_def_cfa_offset 52
	subl	$12, %esp
	.cfi_def_cfa_offset 64
	movss	24(%esp), %xmm1
	movss	20(%esp), %xmm6
	movss	16(%esp), %xmm2
	movss	12(%esp), %xmm3
L680:
	movss	4(%edi), %xmm4
	movss	(%esi), %xmm0
	comiss	%xmm6, %xmm1
	addss	%xmm6, %xmm4
	subss	%xmm6, %xmm0
	movss	%xmm4, 40(%esp)
	movss	%xmm0, 36(%esp)
	ja	L820
	leal	36(%esp), %eax
	movaps	%xmm6, %xmm0
	movl	%ebx, %ecx
	movss	%xmm1, 20(%esp)
	movl	$48, 8(%esp)
	movl	$36, 4(%esp)
	movl	%eax, (%esp)
	movss	%xmm2, 16(%esp)
	movss	%xmm3, 12(%esp)
	call	__ZN10ImDrawList16_PathArcToFastExERK6ImVec2fiii.constprop.0
	.cfi_def_cfa_offset 52
	subl	$12, %esp
	.cfi_def_cfa_offset 64
	movss	20(%esp), %xmm1
	movss	16(%esp), %xmm2
	movss	12(%esp), %xmm3
L690:
	movss	4(%esi), %xmm0
	movss	(%esi), %xmm4
	comiss	%xmm3, %xmm1
	subss	%xmm3, %xmm0
	subss	%xmm3, %xmm4
	movss	%xmm0, 40(%esp)
	movss	%xmm4, 36(%esp)
	ja	L821
	leal	36(%esp), %eax
	movaps	%xmm3, %xmm0
	movl	%ebx, %ecx
	movss	%xmm1, 16(%esp)
	movl	$12, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movss	%xmm2, 12(%esp)
	call	__ZN10ImDrawList16_PathArcToFastExERK6ImVec2fiii.constprop.0
	.cfi_def_cfa_offset 52
	subl	$12, %esp
	.cfi_def_cfa_offset 64
	movss	16(%esp), %xmm1
	movss	12(%esp), %xmm2
L700:
	movss	4(%esi), %xmm0
	movss	(%edi), %xmm3
	comiss	%xmm2, %xmm1
	subss	%xmm2, %xmm0
	addss	%xmm2, %xmm3
	movss	%xmm0, 40(%esp)
	movss	%xmm3, 36(%esp)
	ja	L822
	leal	36(%esp), %eax
	movl	$24, 8(%esp)
	movaps	%xmm2, %xmm0
	movl	%ebx, %ecx
	movl	$12, 4(%esp)
	movl	%eax, (%esp)
	call	__ZN10ImDrawList16_PathArcToFastExERK6ImVec2fiii.constprop.0
	.cfi_def_cfa_offset 52
	subl	$12, %esp
	.cfi_def_cfa_offset 64
	jmp	L623
	.p2align 4,,10
	.p2align 3
L809:
	sall	$4, %eax
	jmp	L627
	.p2align 4,,10
	.p2align 3
L815:
	.cfi_offset 5, -8
	addl	$2, %ecx
	testl	%edx, %edx
	jne	L661
	movl	$8, %esi
	cmpl	%esi, %ecx
	cmovge	%ecx, %esi
L662:
	movl	_GImGui, %eax
	leal	0(,%esi,8), %edx
	testl	%eax, %eax
	je	L664
	addl	$1, 188(%eax)
L664:
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	92(%ebx), %edx
	movl	%eax, %edi
	testl	%edx, %edx
	je	L665
	movl	84(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%edi, (%esp)
	sall	$3, %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	12(%esp), %edx
	testl	%eax, %eax
	je	L666
	subl	$1, 188(%eax)
L666:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L665:
	movl	%edi, 92(%ebx)
	movl	84(%ebx), %eax
	movl	%esi, 88(%ebx)
	jmp	L663
	.p2align 4,,10
	.p2align 3
L814:
	addl	$2, %ecx
	testl	%edx, %edx
	jne	L654
	movl	$8, %edx
	cmpl	%edx, %ecx
	cmovge	%ecx, %edx
	movl	%edx, %ebp
L655:
	movl	_GImGui, %eax
	leal	0(,%ebp,8), %ecx
	testl	%eax, %eax
	je	L657
	addl	$1, 188(%eax)
L657:
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	92(%ebx), %edx
	movl	%eax, %ecx
	testl	%edx, %edx
	je	L658
	movl	84(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	sall	$3, %eax
	movl	%edx, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%ecx, 12(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	12(%esp), %ecx
	movl	16(%esp), %edx
	testl	%eax, %eax
	je	L659
	subl	$1, 188(%eax)
L659:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 12(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	12(%esp), %ecx
L658:
	movl	%ecx, 92(%ebx)
	movl	84(%ebx), %eax
	movl	%ebp, 88(%ebx)
	jmp	L656
	.p2align 4,,10
	.p2align 3
L813:
	addl	$2, %ecx
	testl	%edx, %edx
	jne	L647
	movl	$8, %edx
	cmpl	%edx, %ecx
	cmovge	%ecx, %edx
	movl	%edx, %ebp
L648:
	movl	_GImGui, %eax
	leal	0(,%ebp,8), %ecx
	testl	%eax, %eax
	je	L650
	addl	$1, 188(%eax)
L650:
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	92(%ebx), %edx
	movl	%eax, %ecx
	testl	%edx, %edx
	je	L651
	movl	84(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	sall	$3, %eax
	movl	%edx, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%ecx, 12(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	12(%esp), %ecx
	movl	16(%esp), %edx
	testl	%eax, %eax
	je	L652
	subl	$1, 188(%eax)
L652:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 12(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	12(%esp), %ecx
L651:
	movl	%ecx, 92(%ebx)
	movl	84(%ebx), %eax
	movl	%ebp, 88(%ebx)
	jmp	L649
	.p2align 4,,10
	.p2align 3
L812:
	leal	1(%eax), %ecx
	testl	%eax, %eax
	jne	L640
	movl	$8, %edx
	cmpl	%edx, %ecx
	cmovge	%ecx, %edx
	movl	%edx, %ebp
L641:
	movl	_GImGui, %eax
	leal	0(,%ebp,8), %ecx
	testl	%eax, %eax
	je	L643
	addl	$1, 188(%eax)
L643:
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	92(%ebx), %edx
	movl	%eax, %ecx
	testl	%edx, %edx
	je	L644
	movl	84(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	sall	$3, %eax
	movl	%edx, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%ecx, 12(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	12(%esp), %ecx
	movl	16(%esp), %edx
	testl	%eax, %eax
	je	L645
	subl	$1, 188(%eax)
L645:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 12(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	12(%esp), %ecx
L644:
	movl	%ecx, 92(%ebx)
	movl	84(%ebx), %eax
	movl	%ebp, 88(%ebx)
	jmp	L642
	.p2align 4,,10
	.p2align 3
L822:
	.cfi_restore 5
	movl	84(%ebx), %eax
	cmpl	88(%ebx), %eax
	je	L823
L703:
	movl	92(%ebx), %edi
L706:
	movl	36(%esp), %edx
	movl	%edx, (%edi,%eax,8)
	movl	40(%esp), %edx
	movl	%edx, 4(%edi,%eax,8)
	addl	$1, 84(%ebx)
	jmp	L623
	.p2align 4,,10
	.p2align 3
L821:
	movl	84(%ebx), %eax
	cmpl	88(%ebx), %eax
	je	L824
L693:
	movl	92(%ebx), %ecx
L696:
	movl	36(%esp), %edx
	movl	%edx, (%ecx,%eax,8)
	movl	40(%esp), %edx
	movl	%edx, 4(%ecx,%eax,8)
	addl	$1, 84(%ebx)
	jmp	L700
	.p2align 4,,10
	.p2align 3
L820:
	movl	84(%ebx), %eax
	cmpl	88(%ebx), %eax
	je	L825
L683:
	movl	92(%ebx), %ecx
L686:
	movl	36(%esp), %edx
	movl	%edx, (%ecx,%eax,8)
	movl	40(%esp), %edx
	movl	%edx, 4(%ecx,%eax,8)
	addl	$1, 84(%ebx)
	jmp	L690
	.p2align 4,,10
	.p2align 3
L819:
	movl	84(%ebx), %eax
	cmpl	88(%ebx), %eax
	je	L826
L673:
	movl	92(%ebx), %ecx
L676:
	movl	36(%esp), %edx
	movl	%edx, (%ecx,%eax,8)
	movl	40(%esp), %edx
	movl	%edx, 4(%ecx,%eax,8)
	addl	$1, 84(%ebx)
	jmp	L680
	.p2align 4,,10
	.p2align 3
L808:
	movss	%xmm0, 12(%esp)
	flds	12(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	fstps	12(%esp)
	movss	12(%esp), %xmm0
	movl	$80, %edx
	movss	LC74, %xmm1
	movl	$240, %eax
	mulss	%xmm1, %xmm0
	jmp	L625
	.p2align 4,,10
	.p2align 3
L640:
	.cfi_offset 5, -8
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	cmpl	%ecx, %edx
	cmovge	%edx, %ecx
	movl	%ecx, %ebp
	cmpl	%ecx, %eax
	jge	L639
	jmp	L641
	.p2align 4,,10
	.p2align 3
L647:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	cmpl	%ecx, %edx
	cmovge	%edx, %ecx
	movl	%ecx, %ebp
	cmpl	%ecx, %eax
	jge	L646
	jmp	L648
	.p2align 4,,10
	.p2align 3
L654:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	cmpl	%ecx, %edx
	cmovge	%edx, %ecx
	movl	%ecx, %ebp
	cmpl	%ecx, %eax
	jge	L653
	jmp	L655
	.p2align 4,,10
	.p2align 3
L661:
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%eax, %esi
	sarl	%esi
	addl	%eax, %esi
	cmpl	%ecx, %esi
	cmovl	%ecx, %esi
	cmpl	%esi, %eax
	jge	L660
	jmp	L662
	.p2align 4,,10
	.p2align 3
L818:
	.cfi_restore 5
	movaps	%xmm2, %xmm3
	jmp	L669
	.p2align 4,,10
	.p2align 3
L817:
	movaps	%xmm2, %xmm6
	jmp	L668
	.p2align 4,,10
	.p2align 3
L638:
	testb	$16, %al
	jne	L712
	xorps	%xmm0, %xmm0
	jmp	L637
	.p2align 4,,10
	.p2align 3
L823:
	leal	1(%eax), %edx
	testl	%eax, %eax
	jne	L704
	movl	$8, %esi
	cmpl	%esi, %edx
	cmovge	%edx, %esi
L705:
	movl	_GImGui, %eax
	leal	0(,%esi,8), %edx
	testl	%eax, %eax
	je	L707
	addl	$1, 188(%eax)
L707:
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	92(%ebx), %edx
	movl	%eax, %edi
	testl	%edx, %edx
	je	L708
	movl	84(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%edi, (%esp)
	sall	$3, %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	12(%esp), %edx
	testl	%eax, %eax
	je	L709
	subl	$1, 188(%eax)
L709:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L708:
	movl	%edi, 92(%ebx)
	movl	84(%ebx), %eax
	movl	%esi, 88(%ebx)
	jmp	L706
	.p2align 4,,10
	.p2align 3
L826:
	movl	%ebp, 56(%esp)
	leal	1(%eax), %ecx
	testl	%eax, %eax
	.cfi_offset 5, -8
	jne	L674
	movl	$8, %edx
	cmpl	%edx, %ecx
	cmovge	%ecx, %edx
	movl	%edx, %ebp
L675:
	movl	_GImGui, %eax
	leal	0(,%ebp,8), %ecx
	testl	%eax, %eax
	je	L677
	addl	$1, 188(%eax)
L677:
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	movss	%xmm1, 24(%esp)
	movss	%xmm6, 20(%esp)
	movss	%xmm2, 16(%esp)
	movss	%xmm3, 12(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	92(%ebx), %edx
	movss	12(%esp), %xmm3
	movss	16(%esp), %xmm2
	movss	20(%esp), %xmm6
	movl	%eax, %ecx
	testl	%edx, %edx
	movss	24(%esp), %xmm1
	je	L678
	movl	84(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	sall	$3, %eax
	movl	%edx, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%ecx, 12(%esp)
	movss	%xmm1, 32(%esp)
	movss	%xmm6, 28(%esp)
	movss	%xmm2, 24(%esp)
	movss	%xmm3, 20(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	12(%esp), %ecx
	movl	16(%esp), %edx
	movss	20(%esp), %xmm3
	testl	%eax, %eax
	movss	24(%esp), %xmm2
	movss	28(%esp), %xmm6
	movss	32(%esp), %xmm1
	je	L679
	subl	$1, 188(%eax)
L679:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 24(%esp)
	movss	%xmm1, 28(%esp)
	movss	%xmm6, 20(%esp)
	movss	%xmm2, 16(%esp)
	movss	%xmm3, 12(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movss	28(%esp), %xmm1
	movl	24(%esp), %ecx
	movss	20(%esp), %xmm6
	movss	16(%esp), %xmm2
	movss	12(%esp), %xmm3
L678:
	movl	%ecx, 92(%ebx)
	movl	84(%ebx), %eax
	movl	%ebp, 88(%ebx)
	movl	56(%esp), %ebp
	.cfi_restore 5
	jmp	L676
	.p2align 4,,10
	.p2align 3
L824:
	movl	%ebp, 56(%esp)
	leal	1(%eax), %ecx
	testl	%eax, %eax
	.cfi_offset 5, -8
	jne	L694
	movl	$8, %edx
	cmpl	%edx, %ecx
	cmovge	%ecx, %edx
	movl	%edx, %ebp
L695:
	movl	_GImGui, %eax
	leal	0(,%ebp,8), %ecx
	testl	%eax, %eax
	je	L697
	addl	$1, 188(%eax)
L697:
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	movss	%xmm1, 16(%esp)
	movss	%xmm2, 12(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	92(%ebx), %edx
	movss	12(%esp), %xmm2
	movss	16(%esp), %xmm1
	movl	%eax, %ecx
	testl	%edx, %edx
	je	L698
	movl	84(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	sall	$3, %eax
	movl	%edx, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%ecx, 12(%esp)
	movss	%xmm1, 24(%esp)
	movss	%xmm2, 20(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	12(%esp), %ecx
	movl	16(%esp), %edx
	movss	20(%esp), %xmm2
	testl	%eax, %eax
	movss	24(%esp), %xmm1
	je	L699
	subl	$1, 188(%eax)
L699:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 16(%esp)
	movss	%xmm1, 20(%esp)
	movss	%xmm2, 12(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movss	20(%esp), %xmm1
	movl	16(%esp), %ecx
	movss	12(%esp), %xmm2
L698:
	movl	%ecx, 92(%ebx)
	movl	84(%ebx), %eax
	movl	%ebp, 88(%ebx)
	movl	56(%esp), %ebp
	.cfi_restore 5
	jmp	L696
	.p2align 4,,10
	.p2align 3
L825:
	movl	%ebp, 56(%esp)
	.cfi_offset 5, -8
	leal	1(%eax), %ecx
	testl	%eax, %eax
	jne	L684
	movl	$8, %edx
	cmpl	%edx, %ecx
	cmovge	%ecx, %edx
	movl	%edx, %ebp
L685:
	movl	_GImGui, %eax
	leal	0(,%ebp,8), %ecx
	testl	%eax, %eax
	je	L687
	addl	$1, 188(%eax)
L687:
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	movss	%xmm1, 20(%esp)
	movss	%xmm2, 16(%esp)
	movss	%xmm3, 12(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	92(%ebx), %edx
	movss	12(%esp), %xmm3
	movss	16(%esp), %xmm2
	movss	20(%esp), %xmm1
	movl	%eax, %ecx
	testl	%edx, %edx
	je	L688
	movl	84(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	sall	$3, %eax
	movl	%edx, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%ecx, 12(%esp)
	movss	%xmm1, 28(%esp)
	movss	%xmm2, 24(%esp)
	movss	%xmm3, 20(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	12(%esp), %ecx
	movl	16(%esp), %edx
	movss	20(%esp), %xmm3
	testl	%eax, %eax
	movss	24(%esp), %xmm2
	movss	28(%esp), %xmm1
	je	L689
	subl	$1, 188(%eax)
L689:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 20(%esp)
	movss	%xmm1, 24(%esp)
	movss	%xmm2, 16(%esp)
	movss	%xmm3, 12(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movss	24(%esp), %xmm1
	movl	20(%esp), %ecx
	movss	16(%esp), %xmm2
	movss	12(%esp), %xmm3
L688:
	movl	%ecx, 92(%ebx)
	movl	84(%ebx), %eax
	movl	%ebp, 88(%ebx)
	movl	56(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L686
	.p2align 4,,10
	.p2align 3
L684:
	.cfi_restore_state
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	cmpl	%ecx, %edx
	cmovge	%edx, %ecx
	movl	%ecx, %ebp
	cmpl	%ecx, %eax
	jl	L685
	movl	56(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L683
	.p2align 4,,10
	.p2align 3
L694:
	.cfi_restore_state
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	cmpl	%ecx, %edx
	cmovge	%edx, %ecx
	movl	%ecx, %ebp
	cmpl	%ecx, %eax
	jl	L695
	movl	56(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L693
	.p2align 4,,10
	.p2align 3
L674:
	.cfi_restore_state
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	cmpl	%ecx, %edx
	cmovge	%edx, %ecx
	movl	%ecx, %ebp
	cmpl	%ecx, %eax
	jl	L675
	movl	56(%esp), %ebp
	.cfi_restore 5
	jmp	L673
	.p2align 4,,10
	.p2align 3
L704:
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%eax, %esi
	sarl	%esi
	addl	%eax, %esi
	cmpl	%edx, %esi
	cmovl	%edx, %esi
	cmpl	%esi, %eax
	jge	L703
	jmp	L705
	.p2align 4,,10
	.p2align 3
L816:
	addss	%xmm2, %xmm4
	addss	%xmm2, %xmm5
	movaps	%xmm2, %xmm0
	movss	%xmm4, 36(%esp)
	movss	%xmm5, 40(%esp)
	testb	$64, %al
	je	L711
	movaps	%xmm2, %xmm6
	movaps	%xmm2, %xmm3
	jmp	L671
	.p2align 4,,10
	.p2align 3
L711:
	movaps	%xmm2, %xmm6
	movaps	%xmm2, %xmm3
	xorps	%xmm2, %xmm2
	jmp	L671
	.p2align 4,,10
	.p2align 3
L712:
	movaps	%xmm2, %xmm0
	jmp	L637
	.cfi_endproc
LFE76:
	.align 2
	.p2align 4
	.globl	__ZN10ImDrawList11_PathArcToNERK6ImVec2fffi
	.def	__ZN10ImDrawList11_PathArcToNERK6ImVec2fffi;	.scl	2;	.type	32;	.endef
__ZN10ImDrawList11_PathArcToNERK6ImVec2fffi:
LFB81:
	.cfi_startproc
	subl	$68, %esp
	.cfi_def_cfa_offset 72
	movss	%xmm1, 12(%esp)
	movss	LC74, %xmm1
	movl	%ebx, 52(%esp)
	.cfi_offset 3, -20
	movl	%ecx, %ebx
	comiss	%xmm0, %xmm1
	movl	%edi, 60(%esp)
	movl	84(%ecx), %eax
	movl	88(%ecx), %edx
	.cfi_offset 7, -12
	ja	L883
	movl	76(%esp), %ecx
	movl	%esi, 56(%esp)
	movl	%ebp, 64(%esp)
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	leal	1(%eax,%ecx), %esi
	cmpl	%edx, %esi
	jg	L884
L838:
	movl	76(%esp), %eax
	testl	%eax, %eax
	js	L882
	xorps	%xmm7, %xmm7
	subss	12(%esp), %xmm2
	movl	84(%ebx), %ebp
	xorl	%esi, %esi
	cvtsi2ssl	76(%esp), %xmm7
	leal	44(%esp), %edi
	movss	%xmm0, 24(%esp)
	movss	%xmm2, 20(%esp)
	movss	%xmm7, 16(%esp)
	jmp	L848
	.p2align 4,,10
	.p2align 3
L842:
	movl	92(%ebx), %edx
L844:
	leal	(%edx,%ebp,8), %eax
	movl	(%edi), %edx
	addl	$1, %esi
	movl	%edx, (%eax)
	movl	4(%edi), %edx
	movl	%edx, 4(%eax)
	movl	84(%ebx), %eax
	leal	1(%eax), %ebp
	movl	%ebp, 84(%ebx)
	cmpl	%esi, 76(%esp)
	jl	L882
L848:
	xorps	%xmm1, %xmm1
	leal	36(%esp), %eax
	cvtsi2ssl	%esi, %xmm1
	divss	16(%esp), %xmm1
	mulss	20(%esp), %xmm1
	movl	%eax, 8(%esp)
	addss	12(%esp), %xmm1
	leal	40(%esp), %eax
	movl	%eax, 4(%esp)
	movss	%xmm1, (%esp)
	call	_sincosf
	movss	24(%esp), %xmm3
	movss	40(%esp), %xmm1
	movl	72(%esp), %eax
	mulss	%xmm3, %xmm1
	mulss	36(%esp), %xmm3
	movss	(%eax), %xmm2
	addss	4(%eax), %xmm1
	movss	%xmm1, 48(%esp)
	addss	%xmm3, %xmm2
	movss	%xmm2, 44(%esp)
	cmpl	%ebp, 88(%ebx)
	jne	L842
	testl	%ebp, %ebp
	je	L849
	movl	%ebp, %edx
	leal	1(%ebp), %ecx
	shrl	$31, %edx
	addl	%ebp, %edx
	sarl	%edx
	addl	%ebp, %edx
	cmpl	%ecx, %edx
	cmovge	%edx, %ecx
	movl	%ecx, 28(%esp)
	cmpl	%ebp, %ecx
	jle	L842
	.p2align 4
	.p2align 3
L843:
	movl	28(%esp), %eax
	leal	0(,%eax,8), %edx
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L845
	addl	$1, 188(%eax)
L845:
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	92(%ebx), %ebp
	movl	%eax, %edx
	testl	%ebp, %ebp
	je	L846
	movl	84(%ebx), %eax
	movl	%edx, (%esp)
	movl	%ebp, 4(%esp)
	sall	$3, %eax
	movl	%edx, 32(%esp)
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	32(%esp), %edx
	testl	%eax, %eax
	je	L847
	subl	$1, 188(%eax)
L847:
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	movl	%edx, 32(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	32(%esp), %edx
L846:
	movl	28(%esp), %eax
	movl	84(%ebx), %ebp
	movl	%edx, 92(%ebx)
	movl	%eax, 88(%ebx)
	jmp	L844
	.p2align 4,,10
	.p2align 3
L849:
	movl	$8, 28(%esp)
	jmp	L843
	.p2align 4,,10
	.p2align 3
L882:
	movl	56(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	64(%esp), %ebp
	.cfi_restore 5
	movl	52(%esp), %ebx
	movl	60(%esp), %edi
	addl	$68, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret	$8
	.p2align 4,,10
	.p2align 3
L884:
	.cfi_restore_state
	movl	_GImGui, %eax
	leal	0(,%esi,8), %edx
	testl	%eax, %eax
	je	L839
	addl	$1, 188(%eax)
L839:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movss	%xmm2, 20(%esp)
	movss	%xmm0, 16(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	92(%ebx), %edi
	movss	16(%esp), %xmm0
	movss	20(%esp), %xmm2
	movl	%eax, %ebp
	testl	%edi, %edi
	je	L840
	movl	84(%ebx), %eax
	movl	%edi, 4(%esp)
	movl	%ebp, (%esp)
	sall	$3, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movss	16(%esp), %xmm0
	movss	20(%esp), %xmm2
	testl	%eax, %eax
	je	L841
	subl	$1, 188(%eax)
L841:
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	movss	%xmm2, 20(%esp)
	movss	%xmm0, 16(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movss	20(%esp), %xmm2
	movss	16(%esp), %xmm0
L840:
	movl	%ebp, 92(%ebx)
	movl	%esi, 88(%ebx)
	jmp	L838
	.p2align 4,,10
	.p2align 3
L883:
	.cfi_restore 5
	.cfi_restore 6
	cmpl	%edx, %eax
	je	L830
	movl	92(%ecx), %edi
L831:
	movl	72(%esp), %ecx
	movl	(%ecx), %edx
	movl	%edx, (%edi,%eax,8)
	movl	4(%ecx), %edx
	movl	%edx, 4(%edi,%eax,8)
	addl	$1, 84(%ebx)
	movl	52(%esp), %ebx
	movl	60(%esp), %edi
	addl	$68, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret	$8
L830:
	.cfi_restore_state
	movl	%esi, 56(%esp)
	leal	1(%eax), %edx
	testl	%eax, %eax
	.cfi_offset 6, -16
	jne	L832
	movl	$8, %esi
	movl	%ebp, 64(%esp)
	cmpl	%esi, %edx
	cmovge	%edx, %esi
	.cfi_offset 5, -8
L833:
	movl	_GImGui, %eax
	leal	0(,%esi,8), %edx
	testl	%eax, %eax
	je	L834
	addl	$1, 188(%eax)
L834:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	92(%ebx), %ebp
	movl	%eax, %edi
	testl	%ebp, %ebp
	je	L835
	movl	84(%ebx), %eax
	movl	%ebp, 4(%esp)
	movl	%edi, (%esp)
	sall	$3, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L836
	subl	$1, 188(%eax)
L836:
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L835:
	movl	%edi, 92(%ebx)
	movl	84(%ebx), %eax
	movl	%esi, 88(%ebx)
	movl	56(%esp), %esi
	.cfi_restore 6
	movl	64(%esp), %ebp
	.cfi_restore 5
	jmp	L831
L832:
	.cfi_offset 6, -16
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%eax, %esi
	sarl	%esi
	addl	%eax, %esi
	cmpl	%edx, %esi
	cmovl	%edx, %esi
	cmpl	%eax, %esi
	jg	L881
	movl	92(%ecx), %edi
	movl	56(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L831
L881:
	.cfi_restore_state
	movl	%ebp, 64(%esp)
	.cfi_offset 5, -8
	jmp	L833
	.cfi_endproc
LFE81:
	.align 2
	.p2align 4
	.globl	__ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4
	.def	__ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4;	.scl	2;	.type	32;	.endef
__ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4:
LFB82:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%ecx, %edx
	leal	8(%esp), %edi
	.cfi_def_cfa 7, 0
	andl	$-16, %esp
	pushl	-4(%edi)
	movl	%edi, %eax
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
	movl	(%edi), %esi
	movl	16(%eax), %ebx
	movl	20(%eax), %eax
	movl	4(%edi), %ecx
	movl	%esi, -36(%ebp)
	movl	8(%edi), %esi
	movl	%eax, -52(%ebp)
	movl	12(%edi), %edi
	movl	%esi, -68(%ebp)
	cmpl	$16777215, %esi
	jbe	L885
	movss	%xmm1, -32(%ebp)
	testl	%ebx, %ebx
	je	L1019
L887:
	cmpl	%edi, %ebx
	je	L885
	movl	-36(%ebp), %esi
	testl	%esi, %esi
	je	L1020
L888:
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	L889
	jne	L889
	movl	44(%edx), %eax
	movss	12(%eax), %xmm0
L889:
	movss	96(%edx), %xmm5
	movss	104(%edx), %xmm6
	movss	108(%edx), %xmm4
	movl	-52(%ebp), %eax
	movss	100(%edx), %xmm7
	movss	%xmm5, -64(%ebp)
	movss	%xmm6, -56(%ebp)
	movss	%xmm4, -44(%ebp)
	testl	%eax, %eax
	je	L891
	movss	(%eax), %xmm2
	minss	8(%eax), %xmm6
	minss	12(%eax), %xmm4
	movaps	%xmm2, %xmm1
	cmpnless	%xmm5, %xmm1
	movss	%xmm6, -56(%ebp)
	movss	%xmm4, -44(%ebp)
	andps	%xmm1, %xmm2
	andnps	%xmm5, %xmm1
	orps	%xmm2, %xmm1
	movss	4(%eax), %xmm2
	movss	%xmm1, -64(%ebp)
	movaps	%xmm2, %xmm1
	cmpnless	%xmm7, %xmm1
	andps	%xmm1, %xmm2
	andnps	%xmm7, %xmm1
	orps	%xmm2, %xmm1
	movaps	%xmm1, %xmm7
L891:
	cvttss2sil	4(%ecx), %eax
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%eax, %xmm3
	comiss	-44(%ebp), %xmm3
	ja	L885
	movl	-36(%ebp), %esi
	movaps	%xmm0, %xmm5
	movss	(%ecx), %xmm4
	movss	16(%esi), %xmm1
	movss	%xmm4, -76(%ebp)
	divss	%xmm1, %xmm5
	mulss	%xmm5, %xmm1
	movaps	%xmm1, %xmm2
	movss	%xmm1, -40(%ebp)
	addss	%xmm3, %xmm2
	comiss	%xmm2, %xmm7
	ja	L1021
	movl	%ebx, %eax
	subl	%edi, %eax
	cmpl	$10000, %eax
	jle	L958
	movss	-32(%ebp), %xmm6
	xorps	%xmm0, %xmm0
	comiss	%xmm0, %xmm6
	jbe	L910
L959:
	movl	%ebx, %eax
	subl	%edi, %eax
L958:
	movl	12(%edx), %esi
	leal	(%eax,%eax,2), %ecx
	sall	$2, %eax
	movss	%xmm3, -96(%ebp)
	addl	%ecx, %ecx
	movss	%xmm5, -84(%ebp)
	addl	%ecx, %esi
	movss	%xmm7, -80(%ebp)
	movl	%esi, -100(%ebp)
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	movl	%edx, %ecx
	movl	%edx, -48(%ebp)
	call	__ZN10ImDrawList11PrimReserveEii
	movl	-48(%ebp), %edx
	subl	$8, %esp
	movl	52(%edx), %eax
	movl	%eax, -88(%ebp)
	movl	56(%edx), %eax
	movl	%eax, -72(%ebp)
	movl	40(%edx), %eax
	movl	%eax, -60(%ebp)
	cmpl	%ebx, %edi
	jnb	L917
	cvttss2sil	-76(%ebp), %eax
	xorps	%xmm7, %xmm7
	movl	-36(%ebp), %esi
	movl	$0, -36(%ebp)
	movss	-84(%ebp), %xmm5
	movss	-96(%ebp), %xmm3
	movl	%edx, -96(%ebp)
	movl	%edi, %edx
	cvtsi2ssl	%eax, %xmm7
	movss	%xmm7, -92(%ebp)
	movaps	%xmm7, %xmm6
	movss	-80(%ebp), %xmm7
	movss	%xmm7, -108(%ebp)
	.p2align 4
	.p2align 3
L956:
	movss	-32(%ebp), %xmm4
	xorps	%xmm2, %xmm2
	comiss	%xmm2, %xmm4
	jbe	L918
	movl	-36(%ebp), %ecx
	testl	%ecx, %ecx
	je	L929
L920:
	cmpl	-36(%ebp), %edx
	jnb	L1022
L918:
	movzbl	(%edx), %eax
	cmpl	$127, %eax
	ja	L931
	addl	$1, %edx
L932:
	cmpl	$31, %eax
	ja	L933
	cmpl	$10, %eax
	je	L1023
	cmpl	$13, %eax
	je	L936
L933:
	movzwl	%ax, %eax
	cmpl	20(%esi), %eax
	jnb	L1017
	movl	28(%esi), %ecx
	movzwl	(%ecx,%eax,2), %eax
	cmpw	$-1, %ax
	je	L1017
	leal	(%eax,%eax,4), %ecx
	movl	40(%esi), %eax
	leal	(%eax,%ecx,8), %eax
L939:
	testl	%eax, %eax
	je	L936
	movss	4(%eax), %xmm1
	movzbl	(%eax), %ecx
	mulss	%xmm5, %xmm1
	testb	$2, %cl
	je	L942
	movss	8(%eax), %xmm0
	movss	-56(%ebp), %xmm7
	mulss	%xmm5, %xmm0
	addss	%xmm6, %xmm0
	comiss	%xmm0, %xmm7
	movss	%xmm0, -48(%ebp)
	jb	L942
	movss	16(%eax), %xmm2
	mulss	%xmm5, %xmm2
	addss	%xmm6, %xmm2
	movaps	%xmm2, %xmm4
	movss	-64(%ebp), %xmm2
	movss	%xmm4, -76(%ebp)
	comiss	%xmm2, %xmm4
	jb	L942
	movss	12(%eax), %xmm4
	mulss	%xmm5, %xmm4
	addss	%xmm3, %xmm4
	movss	%xmm4, -80(%ebp)
	movss	20(%eax), %xmm4
	mulss	%xmm5, %xmm4
	addss	%xmm3, %xmm4
	movss	%xmm4, -84(%ebp)
	movss	24(%eax), %xmm4
	movaps	%xmm4, %xmm7
	movss	%xmm4, -104(%ebp)
	movss	28(%eax), %xmm4
	movss	%xmm4, -112(%ebp)
	movss	32(%eax), %xmm4
	movss	%xmm4, -116(%ebp)
	movss	36(%eax), %xmm4
	movl	-52(%ebp), %eax
	movss	%xmm4, -120(%ebp)
	testl	%eax, %eax
	je	L946
	comiss	-48(%ebp), %xmm2
	movaps	%xmm2, %xmm0
	jbe	L947
	movss	-76(%ebp), %xmm2
	subss	-48(%ebp), %xmm2
	movaps	%xmm2, %xmm4
	movss	-76(%ebp), %xmm2
	subss	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	divss	%xmm4, %xmm0
	movss	LC1, %xmm4
	subss	%xmm0, %xmm4
	movss	-116(%ebp), %xmm0
	subss	%xmm7, %xmm0
	mulss	%xmm0, %xmm4
	addss	%xmm7, %xmm4
	movss	-64(%ebp), %xmm7
	movss	%xmm7, -48(%ebp)
	movss	%xmm4, -104(%ebp)
L947:
	movss	-108(%ebp), %xmm7
	movss	-80(%ebp), %xmm0
	comiss	%xmm0, %xmm7
	jbe	L949
	movss	-84(%ebp), %xmm2
	movaps	%xmm2, %xmm4
	subss	%xmm7, %xmm2
	subss	%xmm0, %xmm4
	movaps	%xmm7, %xmm0
	movss	%xmm0, -80(%ebp)
	movaps	%xmm2, %xmm7
	movss	-120(%ebp), %xmm2
	subss	-112(%ebp), %xmm2
	divss	%xmm4, %xmm7
	movss	LC1, %xmm4
	subss	%xmm7, %xmm4
	mulss	%xmm2, %xmm4
	addss	-112(%ebp), %xmm4
	movss	%xmm4, -112(%ebp)
L949:
	movss	-56(%ebp), %xmm7
	movss	-76(%ebp), %xmm2
	comiss	%xmm7, %xmm2
	jbe	L951
	subss	-48(%ebp), %xmm2
	movaps	%xmm7, %xmm4
	subss	-48(%ebp), %xmm4
	movss	%xmm7, -76(%ebp)
	movss	-104(%ebp), %xmm0
	divss	%xmm2, %xmm4
	movss	-116(%ebp), %xmm2
	subss	%xmm0, %xmm2
	mulss	%xmm2, %xmm4
	addss	%xmm0, %xmm4
	movss	%xmm4, -116(%ebp)
L951:
	movss	-84(%ebp), %xmm4
	movss	-44(%ebp), %xmm7
	comiss	%xmm7, %xmm4
	jbe	L953
	movss	-80(%ebp), %xmm0
	movss	%xmm7, -84(%ebp)
	subss	%xmm0, %xmm4
	movaps	%xmm4, %xmm2
	movaps	%xmm7, %xmm4
	subss	%xmm0, %xmm4
	movss	-112(%ebp), %xmm0
	divss	%xmm2, %xmm4
	movss	-120(%ebp), %xmm2
	subss	%xmm0, %xmm2
	mulss	%xmm2, %xmm4
	addss	%xmm0, %xmm4
	movss	%xmm4, -120(%ebp)
L953:
	movss	-80(%ebp), %xmm7
	comiss	-84(%ebp), %xmm7
	jnb	L942
L946:
	movss	-112(%ebp), %xmm7
	movss	-104(%ebp), %xmm4
	movl	%ecx, %eax
	movss	-80(%ebp), %xmm0
	movl	-88(%ebp), %ecx
	andl	$1, %eax
	unpcklps	%xmm7, %xmm4
	negl	%eax
	movzwl	-60(%ebp), %edi
	movaps	%xmm4, %xmm2
	movss	-48(%ebp), %xmm4
	andl	$16777215, %eax
	orl	-68(%ebp), %eax
	movl	%eax, 16(%ecx)
	unpcklps	%xmm0, %xmm4
	movl	%eax, 36(%ecx)
	movlhps	%xmm2, %xmm4
	movss	-116(%ebp), %xmm2
	movups	%xmm4, (%ecx)
	movl	%eax, 56(%ecx)
	movaps	%xmm2, %xmm4
	movl	%eax, 76(%ecx)
	movl	-72(%ebp), %eax
	unpcklps	%xmm7, %xmm4
	movaps	%xmm4, %xmm7
	movss	-76(%ebp), %xmm4
	unpcklps	%xmm0, %xmm4
	movlhps	%xmm7, %xmm4
	movss	-120(%ebp), %xmm7
	movups	%xmm4, 20(%ecx)
	movaps	%xmm2, %xmm4
	movss	-76(%ebp), %xmm2
	unpcklps	%xmm7, %xmm4
	movaps	%xmm4, %xmm0
	movss	-84(%ebp), %xmm4
	unpcklps	%xmm4, %xmm2
	movlhps	%xmm0, %xmm2
	movss	-48(%ebp), %xmm0
	movups	%xmm2, 40(%ecx)
	movss	-104(%ebp), %xmm2
	unpcklps	%xmm4, %xmm0
	unpcklps	%xmm7, %xmm2
	movlhps	%xmm2, %xmm0
	movups	%xmm0, 60(%ecx)
	movl	-72(%ebp), %ecx
	movw	%di, (%eax)
	movzwl	-60(%ebp), %edi
	addl	$12, %ecx
	leal	1(%edi), %eax
	movw	%di, -6(%ecx)
	movw	%ax, -10(%ecx)
	leal	2(%edi), %eax
	movw	%ax, -8(%ecx)
	movw	%ax, -4(%ecx)
	leal	3(%edi), %eax
	movw	%ax, -2(%ecx)
	addl	$80, -88(%ebp)
	addl	$4, -60(%ebp)
	movl	%ecx, -72(%ebp)
	.p2align 4
	.p2align 3
L942:
	addss	%xmm1, %xmm6
L936:
	cmpl	%ebx, %edx
	jb	L956
	.p2align 4
	.p2align 3
L1014:
	movl	-96(%ebp), %edx
L917:
	movl	-88(%ebp), %edi
	movl	(%edx), %ecx
	movl	8(%edx), %ebx
	movl	%edi, %eax
	subl	32(%edx), %eax
	leal	-5(%ecx,%ecx,4), %esi
	movl	-100(%ebp), %ecx
	sarl	$2, %eax
	imull	$-858993459, %eax, %eax
	movl	%eax, 24(%edx)
	movl	-72(%ebp), %eax
	subl	20(%edx), %eax
	sarl	%eax
	movl	%eax, 12(%edx)
	subl	%eax, %ecx
	movl	-72(%ebp), %eax
	subl	%ecx, 28(%ebx,%esi,8)
	movl	%eax, 56(%edx)
	movl	-60(%ebp), %eax
	movl	%edi, 52(%edx)
	movl	%eax, 40(%edx)
L885:
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
	ret	$24
	.p2align 4,,10
	.p2align 3
L1019:
	.cfi_restore_state
	movl	%edx, -48(%ebp)
	movl	%ecx, -44(%ebp)
	movss	%xmm0, -40(%ebp)
	movl	%edi, (%esp)
	call	_strlen
	movl	-48(%ebp), %edx
	movl	-44(%ebp), %ecx
	movss	-40(%ebp), %xmm0
	leal	(%edi,%eax), %ebx
	jmp	L887
	.p2align 4,,10
	.p2align 3
L1021:
	movl	%edx, -72(%ebp)
	movss	%xmm7, -48(%ebp)
	movss	%xmm2, -36(%ebp)
	movss	%xmm5, -60(%ebp)
	.p2align 4
	.p2align 3
L896:
	movl	%ebx, %eax
	subl	%edi, %eax
	cmpl	%ebx, %edi
	jnb	L906
	movl	%eax, 8(%esp)
	movl	$10, 4(%esp)
	movl	%edi, (%esp)
	call	_memchr
	movss	-32(%ebp), %xmm1
	xorps	%xmm4, %xmm4
	comiss	%xmm4, %xmm1
	jbe	L1007
	testl	%eax, %eax
	movl	%edi, (%esp)
	movl	%esi, %ecx
	cmove	%ebx, %eax
	movl	%eax, 4(%esp)
	movss	-60(%ebp), %xmm0
	call	__ZNK6ImFont21CalcWordWrapPositionAEfPKcS1_f
	subl	$8, %esp
	movl	%eax, %edi
	cmpl	%ebx, %eax
	jb	L901
	jmp	L1024
	.p2align 4
	.p2align 4,,10
	.p2align 3
L970:
	addl	$1, %edi
	cmpl	%edi, %ebx
	je	L1025
L901:
	movzbl	(%edi), %eax
	cmpb	$32, %al
	je	L970
	cmpb	$9, %al
	je	L970
L902:
	cmpb	$10, %al
	jne	L1016
	addl	$1, %edi
L1016:
	movl	%ebx, %eax
	subl	%edi, %eax
L905:
	movss	-36(%ebp), %xmm3
	movss	-40(%ebp), %xmm0
	movss	-48(%ebp), %xmm7
	addss	%xmm3, %xmm0
	comiss	%xmm0, %xmm7
	jbe	L906
	movss	%xmm0, -36(%ebp)
	jmp	L896
	.p2align 4,,10
	.p2align 3
L1020:
	movl	44(%edx), %eax
	movl	8(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	L888
	.p2align 4,,10
	.p2align 3
L1022:
	addss	-40(%ebp), %xmm3
	cmpl	%ebx, %edx
	jb	L921
	jmp	L1026
	.p2align 4
	.p2align 4,,10
	.p2align 3
L974:
	addl	$1, %edx
	cmpl	%ebx, %edx
	je	L1014
L921:
	movzbl	(%edx), %eax
	cmpb	$32, %al
	je	L974
	cmpb	$9, %al
	je	L974
	cmpb	$10, %al
	jne	L928
L922:
	addl	$1, %edx
	cmpl	%ebx, %edx
	jnb	L1014
L967:
	movss	-92(%ebp), %xmm6
L929:
	movss	%xmm3, -84(%ebp)
	movaps	%xmm6, %xmm0
	movl	%esi, %ecx
	movl	%edx, (%esp)
	movl	%ebx, 4(%esp)
	subss	-92(%ebp), %xmm0
	movss	-32(%ebp), %xmm1
	movl	%edx, -80(%ebp)
	movss	%xmm6, -76(%ebp)
	subss	%xmm0, %xmm1
	movss	%xmm5, -48(%ebp)
	movaps	%xmm5, %xmm0
	call	__ZNK6ImFont21CalcWordWrapPositionAEfPKcS1_f
	movss	-84(%ebp), %xmm3
	movl	-80(%ebp), %edx
	subl	$8, %esp
	movss	-76(%ebp), %xmm6
	movss	-48(%ebp), %xmm5
	movl	%eax, -36(%ebp)
	jmp	L920
	.p2align 4,,10
	.p2align 3
L1007:
	testl	%eax, %eax
	je	L961
	leal	1(%eax), %edi
	movl	%ebx, %eax
	subl	%edi, %eax
	jmp	L905
	.p2align 4,,10
	.p2align 3
L1017:
	movl	44(%esi), %eax
	jmp	L939
	.p2align 4,,10
	.p2align 3
L931:
	movl	%ebx, %ecx
	leal	-28(%ebp), %eax
	movl	%edx, -48(%ebp)
	movss	%xmm3, -84(%ebp)
	movss	%xmm6, -80(%ebp)
	movss	%xmm5, -76(%ebp)
	call	__Z18ImTextCharFromUtf8PjPKcS1_
	movl	-48(%ebp), %edx
	movss	-84(%ebp), %xmm3
	movss	-80(%ebp), %xmm6
	movss	-76(%ebp), %xmm5
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	jmp	L932
	.p2align 4,,10
	.p2align 3
L1025:
	movzbl	(%ebx), %eax
	jmp	L902
	.p2align 4,,10
	.p2align 3
L1023:
	addss	-40(%ebp), %xmm3
	comiss	-44(%ebp), %xmm3
	ja	L1014
	movss	-92(%ebp), %xmm6
	jmp	L936
	.p2align 4,,10
	.p2align 3
L961:
	movl	%ebx, %edi
	xorl	%eax, %eax
	jmp	L905
	.p2align 4,,10
	.p2align 3
L906:
	movss	-48(%ebp), %xmm7
	movss	-60(%ebp), %xmm5
	movl	%esi, -36(%ebp)
	movl	-72(%ebp), %edx
	cmpl	$10000, %eax
	jle	L912
	movss	-32(%ebp), %xmm6
	xorps	%xmm0, %xmm0
	comiss	%xmm0, %xmm6
	jbe	L910
L912:
	cmpl	%edi, %ebx
	jne	L959
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
	ret	$24
L910:
	.cfi_restore_state
	movss	-44(%ebp), %xmm6
	movaps	%xmm3, %xmm0
	movl	%edi, %eax
	comiss	%xmm3, %xmm6
	jbe	L885
	movl	%edx, -80(%ebp)
	movl	-36(%ebp), %esi
	movss	%xmm7, -48(%ebp)
	movss	%xmm5, -60(%ebp)
	movss	%xmm3, -72(%ebp)
	jmp	L913
	.p2align 4,,10
	.p2align 3
L916:
	movl	%ebx, %ecx
	movss	%xmm0, -36(%ebp)
	subl	%eax, %ecx
	movl	$10, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	_memchr
	movss	-36(%ebp), %xmm0
	addss	-40(%ebp), %xmm0
	movl	%eax, %ecx
	movss	-44(%ebp), %xmm7
	leal	1(%eax), %eax
	testl	%ecx, %ecx
	cmove	%ebx, %eax
	comiss	%xmm0, %xmm7
	jbe	L1008
L913:
	cmpl	%ebx, %eax
	jb	L916
L1008:
	movss	-48(%ebp), %xmm7
	movss	-60(%ebp), %xmm5
	movl	%esi, -36(%ebp)
	movl	%eax, %ebx
	movss	-72(%ebp), %xmm3
	movl	-80(%ebp), %edx
	jmp	L912
L928:
	cmpl	%ebx, %edx
	jb	L967
	jmp	L1014
	.p2align 4,,10
	.p2align 3
L1024:
	movzbl	(%eax), %eax
	jmp	L902
L1026:
	cmpb	$10, (%edx)
	jne	L1014
	jmp	L922
	.cfi_endproc
LFE82:
	.align 2
	.p2align 4
	.globl	__ZN18ImDrawListSplitter15ClearFreeMemoryEv
	.def	__ZN18ImDrawListSplitter15ClearFreeMemoryEv;	.scl	2;	.type	32;	.endef
__ZN18ImDrawListSplitter15ClearFreeMemoryEv:
LFB87:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ecx), %eax
	testl	%eax, %eax
	jle	L1028
	movl	%ebx, -12(%ebp)
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	movl	%esi, -8(%ebp)
	movl	%edi, -4(%ebp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	jmp	L1034
	.p2align 4,,10
	.p2align 3
L1029:
	movl	16(%ecx), %esi
	addl	%edi, %esi
	movl	8(%esi), %eax
	testl	%eax, %eax
	je	L1030
	movl	$0, (%esi)
	movl	_GImGui, %edx
	movl	$0, 4(%esi)
	testl	%edx, %edx
	je	L1031
	subl	$1, 188(%edx)
L1031:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	8(%esp), %ecx
	movl	$0, 8(%esi)
	addl	16(%ecx), %edi
	movl	%edi, %esi
L1030:
	movl	20(%esi), %eax
	testl	%eax, %eax
	je	L1032
	movl	_GImGui, %edx
	movl	$0, 12(%esi)
	movl	$0, 16(%esi)
	testl	%edx, %edx
	je	L1033
	subl	$1, 188(%edx)
L1033:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 20(%esi)
	movl	8(%esp), %ecx
L1032:
	addl	$1, %ebx
	cmpl	%ebx, 8(%ecx)
	jle	L1057
L1034:
	leal	(%ebx,%ebx,2), %edi
	sall	$3, %edi
	cmpl	%ebx, (%ecx)
	jne	L1029
	movl	16(%ecx), %eax
	addl	%edi, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	movl	$0, 20(%eax)
	jmp	L1029
	.p2align 4,,10
	.p2align 3
L1057:
	movl	-12(%ebp), %ebx
	.cfi_restore 3
	movl	-8(%ebp), %esi
	.cfi_restore 6
	movl	-4(%ebp), %edi
	.cfi_restore 7
L1028:
	xorl	%eax, %eax
	movl	$1, %edx
	movl	%eax, (%ecx)
	movl	16(%ecx), %eax
	movl	%edx, 4(%ecx)
	testl	%eax, %eax
	je	L1027
	movl	_GImGui, %edx
	movl	$0, 8(%ecx)
	movl	$0, 12(%ecx)
	testl	%edx, %edx
	je	L1036
	subl	$1, 188(%edx)
L1036:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	8(%esp), %ecx
	movl	$0, 16(%ecx)
L1027:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE87:
	.align 2
	.p2align 4
	.globl	__ZN18ImDrawListSplitter5SplitEP10ImDrawListi.constprop.0
	.def	__ZN18ImDrawListSplitter5SplitEP10ImDrawListi.constprop.0;	.scl	2;	.type	32;	.endef
__ZN18ImDrawListSplitter5SplitEP10ImDrawListi.constprop.0:
LFB89:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$28, %esp
	cmpl	$1, 8(%ecx)
	jg	L1059
	cmpl	$1, 12(%ecx)
	jle	L1098
	movl	16(%ecx), %edx
L1064:
	movlps	LC76, %xmm0
	movlps	%xmm0, 4(%ecx)
	movl	$0, (%edx)
	movl	$0, 4(%edx)
	movl	$0, 8(%edx)
	movl	$0, 12(%edx)
	movl	$0, 16(%edx)
	movl	$0, 20(%edx)
	movl	16(%ecx), %eax
	movl	$0, 24(%eax)
	movl	$0, 28(%eax)
	movl	$0, 32(%eax)
	movl	$0, 36(%eax)
	movl	$0, 40(%eax)
	movl	$0, 44(%eax)
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L1059:
	.cfi_restore_state
	movl	16(%ecx), %eax
	movl	$2, 4(%ecx)
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	movl	$0, 20(%eax)
	movl	16(%ecx), %edx
	movl	28(%edx), %eax
	testl	%eax, %eax
	jns	L1076
	movl	_GImGui, %eax
	movl	%esi, -4(%ebp)
	testl	%eax, %eax
	.cfi_offset 6, -12
	je	L1080
	addl	$1, 188(%eax)
L1080:
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 16(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	16(%esp), %edx
	movl	12(%esp), %ecx
	movl	%eax, %esi
	movl	32(%edx), %eax
	testl	%eax, %eax
	je	L1078
	movl	%ebx, -8(%ebp)
	.cfi_offset 3, -16
	movl	24(%edx), %ebx
	movl	%eax, 4(%esp)
	leal	(%ebx,%ebx,4), %ebx
	movl	%esi, (%esp)
	sall	$3, %ebx
	movl	%ecx, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%edx, 16(%esp)
	call	_memcpy
	movl	16(%esp), %edx
	movl	12(%esp), %ecx
	movl	32(%edx), %eax
	testl	%eax, %eax
	je	L1079
	movl	_GImGui, %ebx
	testl	%ebx, %ebx
	je	L1079
	subl	$1, 188(%ebx)
L1079:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 16(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	16(%esp), %edx
	movl	12(%esp), %ecx
	movl	-8(%ebp), %ebx
	.cfi_restore 3
L1078:
	movl	%esi, 32(%edx)
	movl	$0, 28(%edx)
	movl	-4(%ebp), %esi
	.cfi_restore 6
L1076:
	movl	$0, 24(%edx)
	movl	16(%ecx), %edx
	movl	40(%edx), %eax
	testl	%eax, %eax
	jns	L1069
	movl	_GImGui, %eax
	movl	%esi, -4(%ebp)
	testl	%eax, %eax
	.cfi_offset 6, -12
	je	L1073
	addl	$1, 188(%eax)
L1073:
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	movl	%edx, 16(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	16(%esp), %edx
	movl	%eax, %esi
	movl	44(%edx), %eax
	testl	%eax, %eax
	je	L1071
	movl	%ebx, -8(%ebp)
	.cfi_offset 3, -16
	movl	36(%edx), %ebx
	movl	%eax, 4(%esp)
	leal	(%ebx,%ebx), %ecx
	movl	%esi, (%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 16(%esp)
	call	_memcpy
	movl	16(%esp), %edx
	movl	44(%edx), %eax
	testl	%eax, %eax
	je	L1072
	movl	_GImGui, %ecx
	testl	%ecx, %ecx
	je	L1072
	subl	$1, 188(%ecx)
L1072:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 16(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	16(%esp), %edx
	movl	-8(%ebp), %ebx
	.cfi_restore 3
L1071:
	movl	%esi, 44(%edx)
	movl	$0, 40(%edx)
	movl	-4(%ebp), %esi
	.cfi_restore 6
L1069:
	movl	$0, 36(%edx)
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L1098:
	.cfi_restore_state
	movl	_GImGui, %eax
	movl	%ebx, -8(%ebp)
	.cfi_offset 3, -16
	testl	%eax, %eax
	je	L1061
	addl	$1, 188(%eax)
L1061:
	movl	$0, 4(%esp)
	movl	$48, (%esp)
	movl	%ecx, 16(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	16(%esp), %ecx
	movl	%eax, %edx
	movl	16(%ecx), %ebx
	testl	%ebx, %ebx
	je	L1062
	movl	8(%ecx), %eax
	movl	%edx, (%esp)
	movl	%ebx, 4(%esp)
	leal	(%eax,%eax,2), %eax
	movl	%ecx, 12(%esp)
	sall	$3, %eax
	movl	%edx, 16(%esp)
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	16(%esp), %edx
	movl	12(%esp), %ecx
	testl	%eax, %eax
	je	L1063
	subl	$1, 188(%eax)
L1063:
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 16(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	12(%esp), %ecx
	movl	16(%esp), %edx
L1062:
	movl	%edx, 16(%ecx)
	movl	$2, 12(%ecx)
	movl	-8(%ebp), %ebx
	.cfi_restore 3
	jmp	L1064
	.cfi_endproc
LFE89:
	.align 2
	.p2align 4
	.globl	__ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi
	.def	__ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi;	.scl	2;	.type	32;	.endef
__ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi:
LFB94:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%ecx, %eax
	movl	28(%esp), %edx
	movl	24(%esp), %ecx
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -12
	movl	(%eax), %ebx
	cmpl	%edx, %ebx
	je	L1099
	movl	%esi, 16(%esp)
	.cfi_offset 6, -8
	leal	(%ebx,%ebx,2), %esi
	movl	16(%eax), %ebx
	leal	(%ebx,%esi,8), %ebx
	movl	(%ecx), %esi
	movl	%esi, (%ebx)
	movl	4(%ecx), %esi
	movl	%esi, 4(%ebx)
	movl	8(%ecx), %esi
	movl	%esi, 8(%ebx)
	movl	(%eax), %ebx
	leal	(%ebx,%ebx,2), %esi
	movl	16(%eax), %ebx
	leal	(%ebx,%esi,8), %ebx
	movl	12(%ecx), %esi
	movl	%esi, 12(%ebx)
	movl	16(%ecx), %esi
	movl	%esi, 16(%ebx)
	movl	20(%ecx), %esi
	movl	%esi, 20(%ebx)
	movl	16(%eax), %ebx
	movl	%edx, (%eax)
	leal	(%edx,%edx,2), %edx
	sall	$3, %edx
	addl	%edx, %ebx
	movl	(%ebx), %esi
	movl	%esi, (%ecx)
	movl	4(%ebx), %esi
	movl	%esi, 4(%ecx)
	movl	8(%ebx), %ebx
	movl	%ebx, 8(%ecx)
	addl	16(%eax), %edx
	movl	%edx, %eax
	movl	12(%edx), %edx
	movl	%edx, 12(%ecx)
	movl	16(%eax), %edx
	movl	%edx, 16(%ecx)
	movl	12(%ecx), %edx
	movl	20(%eax), %eax
	movl	%eax, 20(%ecx)
	leal	(%eax,%edx,2), %eax
	movl	%eax, 56(%ecx)
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L1101
	leal	-5(%eax,%eax,4), %edx
	leal	(%ebx,%edx,8), %eax
	testl	%eax, %eax
	je	L1101
	movl	28(%eax), %ebx
	leal	96(%ecx), %edx
	testl	%ebx, %ebx
	je	L1108
	movl	$24, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 24(%esp)
	call	_memcmp
	movl	24(%esp), %ecx
	testl	%eax, %eax
	jne	L1101
	movl	16(%esp), %esi
	.cfi_restore 6
L1099:
	movl	12(%esp), %ebx
	addl	$20, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret	$8
	.p2align 4,,10
	.p2align 3
L1101:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	call	__ZN10ImDrawList10AddDrawCmdEv
	movl	16(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	12(%esp), %ebx
	addl	$20, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret	$8
	.p2align 4,,10
	.p2align 3
L1108:
	.cfi_restore_state
	movl	96(%ecx), %ecx
	movl	%ecx, (%eax)
	movl	4(%edx), %ecx
	movl	%ecx, 4(%eax)
	movl	8(%edx), %ecx
	movl	%ecx, 8(%eax)
	movl	12(%edx), %ecx
	movl	%ecx, 12(%eax)
	movl	16(%edx), %ecx
	movl	%ecx, 16(%eax)
	movl	20(%edx), %edx
	movl	%edx, 20(%eax)
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	12(%esp), %ebx
	addl	$20, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret	$8
	.cfi_endproc
LFE94:
	.align 2
	.p2align 4
	.globl	__ZN6ImFontD2Ev
	.def	__ZN6ImFontD2Ev;	.scl	2;	.type	32;	.endef
__ZN6ImFontD2Ev:
LFB95:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	movl	%ecx, %ebx
	subl	$8, %esp
	movl	40(%ecx), %eax
	movl	$0x00000000, 16(%ecx)
	movl	$0x00000000, 12(%ecx)
	testl	%eax, %eax
	je	L1110
	movl	_GImGui, %edx
	movl	$0, 32(%ecx)
	movl	$0, 36(%ecx)
	testl	%edx, %edx
	je	L1111
	subl	$1, 188(%edx)
L1111:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 40(%ebx)
L1110:
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	L1112
	movl	$0, (%ebx)
	movl	_GImGui, %edx
	movl	$0, 4(%ebx)
	testl	%edx, %edx
	je	L1113
	subl	$1, 188(%edx)
L1113:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 8(%ebx)
L1112:
	movl	28(%ebx), %eax
	testl	%eax, %eax
	je	L1114
	movl	_GImGui, %edx
	movl	$0, 20(%ebx)
	movl	$0, 24(%ebx)
	testl	%edx, %edx
	je	L1115
	subl	$1, 188(%edx)
L1115:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 28(%ebx)
L1114:
	movl	40(%ebx), %eax
	movl	$0, 44(%ebx)
	movl	$0, 48(%ebx)
	movb	$1, 72(%ebx)
	movl	$0x00000000, 84(%ebx)
	movl	$0x00000000, 80(%ebx)
	movl	$0, 88(%ebx)
	testl	%eax, %eax
	je	L1116
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L1117
	subl	$1, 188(%edx)
L1117:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1116:
	movl	28(%ebx), %eax
	testl	%eax, %eax
	je	L1118
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L1119
	subl	$1, 188(%edx)
L1119:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1118:
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	L1109
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L1121
	subl	$1, 188(%edx)
L1121:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1109:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE95:
	.globl	__ZN6ImFontD1Ev
	.def	__ZN6ImFontD1Ev;	.scl	2;	.type	32;	.endef
	.set	__ZN6ImFontD1Ev,__ZN6ImFontD2Ev
	.align 2
	.p2align 4
	.globl	__ZNK6ImFont13CalcTextSizeAEfffPKcS1_PS1_
	.def	__ZNK6ImFont13CalcTextSizeAEfffPKcS1_PS1_;	.scl	2;	.type	32;	.endef
__ZNK6ImFont13CalcTextSizeAEfffPKcS1_PS1_:
LFB97:
	.cfi_startproc
	subl	$60, %esp
	.cfi_def_cfa_offset 64
	movl	%ebx, 44(%esp)
	.cfi_offset 3, -20
	movl	68(%esp), %ebx
	movl	%esi, 48(%esp)
	movl	64(%esp), %edx
	.cfi_offset 6, -16
	movl	%ecx, %esi
	movss	%xmm0, 12(%esp)
	movss	%xmm1, 8(%esp)
	testl	%ebx, %ebx
	je	L1215
L1160:
	cmpl	%ebx, %edx
	jnb	L1191
	xorps	%xmm4, %xmm4
	movl	%edi, 52(%esp)
	.cfi_offset 7, -12
	xorl	%edi, %edi
	movss	12(%esp), %xmm7
	movl	%ebp, 56(%esp)
	.cfi_offset 5, -8
	movaps	%xmm4, %xmm5
	movaps	%xmm4, %xmm3
	movaps	%xmm4, %xmm6
	divss	16(%esi), %xmm7
	jmp	L1184
	.p2align 4,,10
	.p2align 3
L1219:
	testl	%edi, %edi
	je	L1172
L1164:
	movl	%edx, %ebp
	movaps	%xmm3, %xmm1
	cmpl	%edi, %edx
	jnb	L1216
	movzbl	(%edx), %eax
	cmpl	$127, %eax
	ja	L1173
L1220:
	addl	$1, %edx
L1174:
	cmpl	$31, %eax
	ja	L1175
	cmpl	$10, %eax
	je	L1217
	cmpl	$13, %eax
	je	L1179
L1175:
	cmpl	%eax, (%esi)
	jle	L1180
	movl	8(%esi), %ecx
	movss	(%ecx,%eax,4), %xmm0
	mulss	%xmm7, %xmm0
	addss	%xmm0, %xmm3
	comiss	8(%esp), %xmm3
	jnb	L1218
L1179:
	cmpl	%ebx, %edx
	jnb	L1183
L1184:
	comiss	%xmm6, %xmm2
	ja	L1219
	movzbl	(%edx), %eax
	movl	%edx, %ebp
	movaps	%xmm3, %xmm1
	cmpl	$127, %eax
	jbe	L1220
L1173:
	movl	%ebx, %ecx
	leal	40(%esp), %eax
	movl	%edx, 64(%esp)
	movss	%xmm1, 36(%esp)
	movss	%xmm2, 32(%esp)
	movss	%xmm4, 28(%esp)
	movss	%xmm7, 24(%esp)
	movss	%xmm5, 20(%esp)
	movss	%xmm3, 16(%esp)
	call	__Z18ImTextCharFromUtf8PjPKcS1_
	movl	64(%esp), %edx
	xorps	%xmm6, %xmm6
	movss	36(%esp), %xmm1
	movss	32(%esp), %xmm2
	movss	28(%esp), %xmm4
	addl	%eax, %edx
	movss	24(%esp), %xmm7
	movl	40(%esp), %eax
	movss	20(%esp), %xmm5
	movss	16(%esp), %xmm3
	jmp	L1174
	.p2align 4,,10
	.p2align 3
L1216:
	maxss	%xmm5, %xmm3
	addss	12(%esp), %xmm4
	movaps	%xmm3, %xmm5
	cmpl	%ebx, %edx
	jb	L1165
	jmp	L1221
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1197:
	leal	1(%edx), %eax
	cmpl	%eax, %ebx
	je	L1222
	movl	%eax, %edx
L1165:
	movzbl	(%edx), %eax
	cmpb	$32, %al
	je	L1197
	cmpb	$9, %al
	je	L1197
	cmpb	$10, %al
	je	L1166
	xorps	%xmm3, %xmm3
	cmpl	%ebx, %edx
	jnb	L1214
L1172:
	movaps	%xmm2, %xmm1
	movl	%edx, (%esp)
	movaps	%xmm7, %xmm0
	movl	%esi, %ecx
	subss	%xmm3, %xmm1
	movl	%ebx, 4(%esp)
	movl	%edx, 64(%esp)
	movss	%xmm4, 32(%esp)
	movss	%xmm5, 28(%esp)
	movss	%xmm2, 24(%esp)
	movss	%xmm3, 20(%esp)
	movss	%xmm7, 16(%esp)
	call	__ZNK6ImFont21CalcWordWrapPositionAEfPKcS1_f
	.cfi_def_cfa_offset 56
	xorps	%xmm6, %xmm6
	subl	$8, %esp
	.cfi_def_cfa_offset 64
	movl	%eax, %edi
	movss	32(%esp), %xmm4
	movss	28(%esp), %xmm5
	movl	64(%esp), %edx
	movss	24(%esp), %xmm2
	movss	20(%esp), %xmm3
	movss	16(%esp), %xmm7
	jmp	L1164
	.p2align 4,,10
	.p2align 3
L1180:
	movss	12(%esi), %xmm0
	mulss	%xmm7, %xmm0
	addss	%xmm0, %xmm3
	comiss	8(%esp), %xmm3
	jb	L1179
L1218:
	movl	%ebp, %edx
	movaps	%xmm1, %xmm3
L1183:
	xorps	%xmm1, %xmm1
	movaps	%xmm3, %xmm0
	comiss	%xmm1, %xmm3
	maxss	%xmm5, %xmm0
	jbe	L1190
	movl	52(%esp), %edi
	.cfi_restore 7
	movl	56(%esp), %ebp
	.cfi_restore 5
L1161:
	addss	12(%esp), %xmm4
L1185:
	movl	72(%esp), %eax
	testl	%eax, %eax
	je	L1187
	movl	72(%esp), %eax
	movl	%edx, (%eax)
L1187:
	movss	%xmm0, 8(%esp)
	movl	44(%esp), %ebx
	movl	8(%esp), %eax
	movl	48(%esp), %esi
	movss	%xmm4, 8(%esp)
	movl	8(%esp), %edx
	addl	$60, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret	$12
	.p2align 4,,10
	.p2align 3
L1222:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	leal	2(%edx), %ecx
	cmpb	$10, 1(%edx)
	cmove	%ecx, %eax
L1167:
	xorps	%xmm1, %xmm1
	movaps	%xmm5, %xmm0
	movl	%eax, %edx
	cmpnltss	%xmm1, %xmm0
	andps	%xmm5, %xmm0
L1190:
	xorps	%xmm1, %xmm1
	movl	52(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	56(%esp), %ebp
	.cfi_restore 5
	ucomiss	%xmm1, %xmm4
	jp	L1185
	jne	L1185
	jmp	L1161
	.p2align 4,,10
	.p2align 3
L1217:
	.cfi_restore_state
	movaps	%xmm3, %xmm0
	addss	12(%esp), %xmm4
	cmpnless	%xmm5, %xmm0
	andps	%xmm0, %xmm3
	andnps	%xmm5, %xmm0
	orps	%xmm3, %xmm0
	xorps	%xmm3, %xmm3
	movaps	%xmm0, %xmm5
	jmp	L1179
L1221:
	cmpb	$10, (%edx)
	jne	L1214
	.p2align 4
	.p2align 3
L1166:
	addl	$1, %edx
	xorps	%xmm3, %xmm3
	cmpl	%ebx, %edx
	jb	L1172
L1214:
	movl	%edx, %eax
	jmp	L1167
	.p2align 4,,10
	.p2align 3
L1215:
	.cfi_restore 5
	.cfi_restore 7
	movl	%edx, (%esp)
	movss	%xmm2, 16(%esp)
	call	_strlen
	movl	64(%esp), %edx
	movss	16(%esp), %xmm2
	leal	(%edx,%eax), %ebx
	jmp	L1160
L1191:
	xorps	%xmm4, %xmm4
	movaps	%xmm4, %xmm0
	jmp	L1161
	.cfi_endproc
LFE97:
	.p2align 4
	.globl	__ZN5ImGui30CalcRoundingFlagsForRectInRectERK6ImRectS2_f.constprop.0.isra.0
	.def	__ZN5ImGui30CalcRoundingFlagsForRectInRectERK6ImRectS2_f.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
__ZN5ImGui30CalcRoundingFlagsForRectInRectERK6ImRectS2_f.constprop.0.isra.0:
LFB100:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movaps	%xmm0, %xmm3
	movss	LC2, %xmm0
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movss	16(%esp), %xmm5
	movss	12(%esp), %xmm4
	addss	%xmm0, %xmm5
	comiss	%xmm3, %xmm5
	movss	24(%esp), %xmm3
	subss	%xmm0, %xmm3
	setnb	%dl
	comiss	%xmm3, %xmm2
	movss	20(%esp), %xmm2
	addss	%xmm0, %xmm2
	setnb	%bl
	comiss	%xmm1, %xmm2
	movss	28(%esp), %xmm1
	subss	%xmm0, %xmm1
	setnb	%cl
	comiss	%xmm1, %xmm4
	setnb	%al
	movl	%eax, %esi
	movl	%ebx, %eax
	andl	%ecx, %eax
	testb	%dl, %dl
	je	L1224
	testb	%cl, %cl
	je	L1224
	testb	%al, %al
	je	L1228
	comiss	%xmm1, %xmm4
	jb	L1238
	movl	$496, %eax
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
L1224:
	.cfi_restore_state
	movl	$288, %ecx
	testb	%al, %al
	je	L1239
L1227:
	movl	%esi, %eax
	andl	%ebx, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	movzbl	%al, %eax
	sall	$7, %eax
	orl	%ecx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1239:
	.cfi_restore_state
	movl	$256, %ecx
L1225:
	andl	%esi, %edx
	movzbl	%dl, %edx
	sall	$6, %edx
	orl	%edx, %ecx
	jmp	L1227
	.p2align 4,,10
	.p2align 3
L1228:
	movl	$272, %ecx
	jmp	L1225
L1238:
	movl	$304, %ecx
	jmp	L1227
	.cfi_endproc
LFE100:
	.p2align 4
	.globl	__ZL20stb_decompress_tokenPKh.lto_priv.0
	.def	__ZL20stb_decompress_tokenPKh.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL20stb_decompress_tokenPKh.lto_priv.0:
LFB101:
	.cfi_startproc
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	%ebx, 24(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movzbl	(%eax), %eax
	cmpb	$31, %al
	jbe	L1241
	movl	__ZL9stb__dout.lto_priv.0, %edx
	movzbl	%al, %ecx
	testb	%al, %al
	js	L1278
	cmpb	$63, %al
	ja	L1279
	movl	%edi, 32(%esp)
	leal	-31(%ecx), %eax
	.cfi_offset 7, -12
	movl	__ZL18stb__barrier_out_e.lto_priv.0, %edi
	movl	%esi, 28(%esp)
	.cfi_offset 6, -16
	leal	(%edx,%eax), %esi
	movl	%esi, 12(%esp)
	cmpl	%esi, %edi
	jb	L1247
	leal	1(%ebx), %esi
	movl	%ebp, 36(%esp)
	.cfi_offset 5, -8
	movl	%esi, %ebp
	cmpl	__ZL17stb__barrier_in_b.lto_priv.0, %esi
	jnb	L1246
	addl	$1, %edi
	movl	36(%esp), %ebp
	.cfi_restore 5
	movl	%edi, 12(%esp)
L1247:
	movl	12(%esp), %eax
	movl	28(%esp), %esi
	.cfi_restore 6
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	%eax, __ZL9stb__dout.lto_priv.0
	movzbl	(%ebx), %eax
	leal	-30(%ebx,%eax), %ebx
L1240:
	movl	%ebx, %eax
	movl	24(%esp), %ebx
	addl	$40, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1241:
	.cfi_restore_state
	cmpb	$23, %al
	ja	L1280
	cmpb	$15, %al
	ja	L1281
	cmpb	$7, %al
	ja	L1282
	je	L1283
	cmpb	$6, %al
	je	L1284
	cmpb	$4, %al
	jne	L1240
	movzwl	2(%ebx), %ecx
	movzwl	4(%ebx), %edx
	addl	$6, %ebx
	movzbl	-5(%ebx), %eax
	rolw	$8, %cx
	rolw	$8, %dx
	movzwl	%cx, %ecx
	sall	$16, %eax
	movzwl	%dx, %edx
	addl	%ecx, %eax
	addl	$1, %edx
	notl	%eax
	addl	__ZL9stb__dout.lto_priv.0, %eax
	call	__ZL10stb__matchPKhj
	jmp	L1240
	.p2align 4,,10
	.p2align 3
L1279:
	movzwl	(%ebx), %eax
	movzbl	2(%ebx), %ecx
	addl	$3, %ebx
	rolw	$8, %ax
	movzwl	%ax, %eax
	subl	$16384, %eax
	notl	%eax
	addl	%edx, %eax
	leal	1(%ecx), %edx
	call	__ZL10stb__matchPKhj
	movl	%ebx, %eax
	movl	24(%esp), %ebx
	addl	$40, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1280:
	.cfi_restore_state
	movzwl	1(%ebx), %edx
	movzbl	3(%ebx), %ecx
	sall	$16, %eax
	addl	$4, %ebx
	rolw	$8, %dx
	movzwl	%dx, %edx
	leal	-1572864(%edx,%eax), %eax
	leal	1(%ecx), %edx
	notl	%eax
	addl	__ZL9stb__dout.lto_priv.0, %eax
	call	__ZL10stb__matchPKhj
	movl	%ebx, %eax
	movl	24(%esp), %ebx
	addl	$40, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1278:
	.cfi_restore_state
	movzbl	1(%ebx), %eax
	addl	$2, %ebx
	notl	%eax
	addl	%edx, %eax
	leal	-127(%ecx), %edx
	call	__ZL10stb__matchPKhj
	movl	%ebx, %eax
	movl	24(%esp), %ebx
	addl	$40, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1282:
	.cfi_restore_state
	movl	%edi, 32(%esp)
	movzwl	(%ebx), %eax
	movl	__ZL9stb__dout.lto_priv.0, %ecx
	.cfi_offset 7, -12
	movl	__ZL18stb__barrier_out_e.lto_priv.0, %edi
	rolw	$8, %ax
	movzwl	%ax, %eax
	subl	$2047, %eax
	leal	(%ecx,%eax), %edx
	cmpl	%edx, %edi
	jb	L1260
	movl	%esi, 28(%esp)
	.cfi_offset 6, -16
	leal	2(%ebx), %esi
	cmpl	__ZL17stb__barrier_in_b.lto_priv.0, %esi
	jnb	L1259
	movl	28(%esp), %esi
	.cfi_restore 6
	leal	1(%edi), %edx
L1260:
	movl	%edx, __ZL9stb__dout.lto_priv.0
	movzwl	(%ebx), %eax
	movl	32(%esp), %edi
	.cfi_restore 7
	rolw	$8, %ax
	movzwl	%ax, %eax
	leal	-2045(%ebx,%eax), %ebx
	jmp	L1240
	.p2align 4,,10
	.p2align 3
L1281:
	movzwl	1(%ebx), %ecx
	movzwl	3(%ebx), %edx
	sall	$16, %eax
	addl	$5, %ebx
	rolw	$8, %cx
	rolw	$8, %dx
	movzwl	%cx, %ecx
	movzwl	%dx, %edx
	leal	-1048576(%ecx,%eax), %eax
	addl	$1, %edx
	notl	%eax
	addl	__ZL9stb__dout.lto_priv.0, %eax
	call	__ZL10stb__matchPKhj
	movl	%ebx, %eax
	movl	24(%esp), %ebx
	addl	$40, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1246:
	.cfi_def_cfa_offset 44
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpl	$16, %eax
	jnb	L1248
	testb	$8, %al
	jne	L1285
	testb	$4, %al
	jne	L1286
	testl	%eax, %eax
	je	L1277
	movzbl	1(%ebx), %ecx
	movb	%cl, (%edx)
	testb	$2, %al
	jne	L1287
L1277:
	movl	36(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L1247
	.p2align 4,,10
	.p2align 3
L1248:
	.cfi_restore_state
	movl	-16(%esi,%eax), %edi
	movl	%edi, -16(%edx,%eax)
	movl	-12(%esi,%eax), %edi
	movl	%edi, -12(%edx,%eax)
	movl	-8(%esi,%eax), %edi
	movl	%edi, -8(%edx,%eax)
	movl	-4(%esi,%eax), %edi
	movl	%edi, -4(%edx,%eax)
	leal	-32(%ecx), %eax
	cmpl	$16, %eax
	jb	L1277
	movl	%ebx, 20(%esp)
	andl	$-16, %eax
	movl	%esi, %ecx
	movl	%eax, 16(%esp)
	xorl	%eax, %eax
L1253:
	movl	4(%ecx,%eax), %esi
	movl	8(%ecx,%eax), %edi
	movl	12(%ecx,%eax), %ebx
	movl	(%ecx,%eax), %ebp
	movl	%esi, 4(%edx,%eax)
	movl	%ebp, (%edx,%eax)
	movl	%edi, 8(%edx,%eax)
	movl	%ebx, 12(%edx,%eax)
	addl	$16, %eax
	cmpl	16(%esp), %eax
	jb	L1253
	movl	20(%esp), %ebx
	movl	36(%esp), %ebp
	.cfi_restore 5
	jmp	L1247
	.p2align 4,,10
	.p2align 3
L1283:
	.cfi_restore 6
	.cfi_restore 7
	movl	%edi, 32(%esp)
	movzwl	1(%ebx), %eax
	movl	__ZL9stb__dout.lto_priv.0, %ecx
	.cfi_offset 7, -12
	movl	__ZL18stb__barrier_out_e.lto_priv.0, %edi
	rolw	$8, %ax
	movzwl	%ax, %eax
	addl	$1, %eax
	leal	(%ecx,%eax), %edx
	cmpl	%edx, %edi
	jb	L1264
	movl	%esi, 28(%esp)
	.cfi_offset 6, -16
	leal	3(%ebx), %esi
	cmpl	__ZL17stb__barrier_in_b.lto_priv.0, %esi
	jnb	L1263
	movl	28(%esp), %esi
	.cfi_restore 6
	leal	1(%edi), %edx
L1264:
	movl	%edx, __ZL9stb__dout.lto_priv.0
	movzwl	1(%ebx), %eax
	movl	32(%esp), %edi
	.cfi_restore 7
	rolw	$8, %ax
	movzwl	%ax, %eax
	leal	4(%ebx,%eax), %ebx
	jmp	L1240
	.p2align 4,,10
	.p2align 3
L1284:
	movzwl	2(%ebx), %ecx
	movzbl	1(%ebx), %eax
	addl	$5, %ebx
	movzbl	-1(%ebx), %edx
	rolw	$8, %cx
	sall	$16, %eax
	movzwl	%cx, %ecx
	addl	$1, %edx
	addl	%ecx, %eax
	notl	%eax
	addl	__ZL9stb__dout.lto_priv.0, %eax
	call	__ZL10stb__matchPKhj
	jmp	L1240
	.p2align 4,,10
	.p2align 3
L1259:
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%esi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%ecx, (%esp)
	movl	%edx, 12(%esp)
	call	_memcpy
	movl	12(%esp), %edx
	movl	28(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L1260
L1263:
	.cfi_restore_state
	movl	%esi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%ecx, (%esp)
	movl	%edx, 12(%esp)
	call	_memcpy
	movl	12(%esp), %edx
	movl	28(%esp), %esi
	.cfi_restore 6
	jmp	L1264
L1285:
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	1(%ebx), %esi
	movl	5(%ebx), %edi
	movl	%esi, (%edx)
	movl	%edi, 4(%edx)
	movl	-8(%ebp,%eax), %esi
	movl	-4(%ebp,%eax), %edi
	movl	%esi, -8(%edx,%eax)
	movl	%edi, -4(%edx,%eax)
	movl	36(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L1247
L1286:
	.cfi_restore_state
	movl	1(%ebx), %esi
	movl	%esi, (%edx)
	movl	-4(%ebp,%eax), %ecx
	movl	%ecx, -4(%edx,%eax)
	movl	36(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L1247
L1287:
	.cfi_restore_state
	movzwl	-2(%esi,%eax), %ecx
	movw	%cx, -2(%edx,%eax)
	movl	36(%esp), %ebp
	.cfi_restore 5
	jmp	L1247
	.cfi_endproc
LFE101:
	.align 2
	.p2align 4
	.globl	__ZN10ImDrawList9PathArcToERK6ImVec2fffi.part.0
	.def	__ZN10ImDrawList9PathArcToERK6ImVec2fffi.part.0;	.scl	2;	.type	32;	.endef
__ZN10ImDrawList9PathArcToERK6ImVec2fffi.part.0:
LFB103:
	.cfi_startproc
	subl	$76, %esp
	.cfi_def_cfa_offset 80
	movaps	%xmm0, %xmm6
	movl	%ebx, 60(%esp)
	movl	44(%ecx), %eax
	.cfi_offset 3, -20
	movl	%ecx, %ebx
	movss	%xmm0, 24(%esp)
	movss	440(%eax), %xmm0
	movss	%xmm2, 20(%esp)
	comiss	%xmm6, %xmm0
	jb	L1365
	movaps	%xmm2, %xmm5
	movaps	%xmm1, %xmm3
	movl	%esi, 64(%esp)
	movss	LC77, %xmm2
	movaps	%xmm5, %xmm0
	comiss	%xmm5, %xmm1
	movl	%edi, 68(%esp)
	movss	LC78, %xmm4
	mulss	%xmm2, %xmm3
	movl	%ebp, 72(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	mulss	%xmm2, %xmm0
	divss	%xmm4, %xmm3
	divss	%xmm4, %xmm0
	jbe	L1366
	cvttss2sil	%xmm3, %esi
	xorps	%xmm4, %xmm4
	movss	%xmm0, (%esp)
	movss	%xmm1, 32(%esp)
	movss	%xmm3, 28(%esp)
	cvtsi2ssl	%esi, %xmm4
	movss	%xmm4, 16(%esp)
	call	_ceilf
	movss	28(%esp), %xmm3
	xorps	%xmm0, %xmm0
	movss	16(%esp), %xmm4
	fstps	12(%esp)
	movss	32(%esp), %xmm1
	cvttss2sil	12(%esp), %edx
	movss	LC77, %xmm2
	comiss	%xmm0, %xmm3
	jb	L1367
L1296:
	cvttss2sil	%xmm4, %ebp
	movl	$0, %eax
	movl	%ebp, %edi
	subl	%edx, %edi
	cmovs	%eax, %edi
L1303:
	movss	LC5, %xmm3
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebp, %xmm0
	mulss	%xmm3, %xmm0
	addss	%xmm0, %xmm0
	divss	%xmm2, %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, 12(%esp)
	flds	12(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	xorps	%xmm0, %xmm0
	fstps	12(%esp)
	cvtsi2ssl	%edx, %xmm0
	mulss	%xmm3, %xmm0
	addss	%xmm0, %xmm0
	divss	%xmm2, %xmm0
	movss	20(%esp), %xmm2
	subss	%xmm0, %xmm2
	movss	%xmm2, 16(%esp)
	flds	16(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	xorl	%eax, %eax
	movss	12(%esp), %xmm7
	comiss	LC79, %xmm7
	fstps	16(%esp)
	movss	16(%esp), %xmm7
	setnb	%al
	comiss	LC79, %xmm7
	leal	1(%edi,%eax), %esi
	sbbl	$-1, %esi
	addl	84(%ebx), %esi
	cmpl	88(%ebx), %esi
	jle	L1304
	movl	_GImGui, %eax
	leal	0(,%esi,8), %ecx
	testl	%eax, %eax
	je	L1305
	addl	$1, 188(%eax)
L1305:
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, 32(%esp)
	movss	%xmm1, 36(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	92(%ebx), %ecx
	movl	32(%esp), %edx
	movl	%eax, 28(%esp)
	movss	36(%esp), %xmm1
	testl	%ecx, %ecx
	je	L1306
	movl	%edx, 36(%esp)
	movl	84(%ebx), %edx
	movl	%ecx, 4(%esp)
	leal	0(,%edx,8), %eax
	movl	%ecx, 32(%esp)
	movl	%eax, 8(%esp)
	movl	28(%esp), %eax
	movss	%xmm1, 40(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	32(%esp), %ecx
	movl	36(%esp), %edx
	movss	40(%esp), %xmm1
	testl	%eax, %eax
	je	L1307
	subl	$1, 188(%eax)
L1307:
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	movl	%edx, 32(%esp)
	movss	%xmm1, 36(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movss	36(%esp), %xmm1
	movl	32(%esp), %edx
L1306:
	movl	28(%esp), %eax
	movl	%esi, 88(%ebx)
	movl	%eax, 92(%ebx)
L1304:
	movss	12(%esp), %xmm7
	comiss	LC79, %xmm7
	jnb	L1371
L1308:
	testl	%edi, %edi
	jne	L1372
L1317:
	movss	16(%esp), %xmm7
	comiss	LC79, %xmm7
	jnb	L1373
	movl	64(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	68(%esp), %edi
	.cfi_restore 7
	movl	72(%esp), %ebp
	.cfi_restore 5
	movl	60(%esp), %ebx
	addl	$76, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret	$4
	.p2align 4,,10
	.p2align 3
L1366:
	.cfi_restore_state
	movss	%xmm3, (%esp)
	movss	%xmm1, 28(%esp)
	movss	%xmm0, 16(%esp)
	call	_ceilf
	movss	16(%esp), %xmm0
	xorps	%xmm4, %xmm4
	xorps	%xmm3, %xmm3
	fstps	12(%esp)
	movss	28(%esp), %xmm1
	cvttss2sil	12(%esp), %ebp
	movss	LC77, %xmm2
	cvttss2sil	%xmm0, %eax
	comiss	%xmm4, %xmm0
	cvtsi2ssl	%eax, %xmm3
	jb	L1368
L1301:
	cvttss2sil	%xmm3, %edx
	movl	$0, %eax
	movl	%edx, %edi
	subl	%ebp, %edi
	cmovs	%eax, %edi
	jmp	L1303
	.p2align 4,,10
	.p2align 3
L1365:
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movss	20(%esp), %xmm0
	movss	%xmm1, 28(%esp)
	subss	%xmm1, %xmm0
	movss	%xmm0, 12(%esp)
	flds	12(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	movss	24(%esp), %xmm0
	fstps	12(%esp)
	call	__ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.isra.0
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	12(%esp), %xmm0
	divss	LC78, %xmm0
	movss	%xmm0, (%esp)
	call	_ceilf
	movss	20(%esp), %xmm2
	movss	28(%esp), %xmm1
	movl	%ebx, %ecx
	movss	LC78, %xmm7
	fstps	16(%esp)
	divss	12(%esp), %xmm7
	cvttss2sil	%xmm7, %eax
	cvttss2sil	16(%esp), %edx
	movss	24(%esp), %xmm0
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, 4(%esp)
	movl	80(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN10ImDrawList11_PathArcToNERK6ImVec2fffi
	.cfi_def_cfa_offset 72
	subl	$8, %esp
	.cfi_def_cfa_offset 80
	movl	60(%esp), %ebx
	addl	$76, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret	$4
	.p2align 4,,10
	.p2align 3
L1373:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	leal	48(%esp), %eax
	leal	44(%esp), %edx
	movss	20(%esp), %xmm4
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movss	%xmm4, (%esp)
	call	_sincosf
	movss	24(%esp), %xmm6
	movss	48(%esp), %xmm0
	movl	80(%esp), %eax
	mulss	%xmm6, %xmm0
	mulss	44(%esp), %xmm6
	movss	(%eax), %xmm1
	addss	4(%eax), %xmm0
	movl	84(%ebx), %eax
	movss	%xmm0, 56(%esp)
	addss	%xmm6, %xmm1
	movss	%xmm1, 52(%esp)
	cmpl	88(%ebx), %eax
	je	L1374
L1320:
	movl	92(%ebx), %edi
L1323:
	movl	52(%esp), %edx
	leal	(%edi,%eax,8), %eax
	movl	%edx, (%eax)
	movl	56(%esp), %edx
	movl	%edx, 4(%eax)
	addl	$1, 84(%ebx)
	movl	64(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	68(%esp), %edi
	.cfi_restore 7
	movl	72(%esp), %ebp
	.cfi_restore 5
	movl	60(%esp), %ebx
	addl	$76, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret	$4
	.p2align 4,,10
	.p2align 3
L1372:
	.cfi_restore_state
	movl	80(%esp), %eax
	movss	24(%esp), %xmm0
	movl	%edx, 8(%esp)
	movl	%ebx, %ecx
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	call	__ZN10ImDrawList16_PathArcToFastExERK6ImVec2fiii.constprop.0
	.cfi_def_cfa_offset 68
	subl	$12, %esp
	.cfi_def_cfa_offset 80
	jmp	L1317
	.p2align 4,,10
	.p2align 3
L1371:
	leal	48(%esp), %eax
	leal	44(%esp), %ecx
	movss	%xmm1, (%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 12(%esp)
	call	_sincosf
	movss	24(%esp), %xmm4
	movss	48(%esp), %xmm0
	movl	80(%esp), %eax
	movl	12(%esp), %edx
	mulss	%xmm4, %xmm0
	mulss	44(%esp), %xmm4
	movss	(%eax), %xmm1
	addss	4(%eax), %xmm0
	movl	84(%ebx), %eax
	cmpl	88(%ebx), %eax
	movss	%xmm0, 56(%esp)
	addss	%xmm4, %xmm1
	movss	%xmm1, 52(%esp)
	je	L1375
L1310:
	movl	92(%ebx), %esi
L1313:
	movl	52(%esp), %ecx
	leal	(%esi,%eax,8), %eax
	movl	%ecx, (%eax)
	movl	56(%esp), %ecx
	movl	%ecx, 4(%eax)
	addl	$1, 84(%ebx)
	jmp	L1308
	.p2align 4,,10
	.p2align 3
L1367:
	ucomiss	%xmm4, %xmm3
	jp	L1330
	je	L1296
L1330:
	subl	$1, %esi
	xorps	%xmm4, %xmm4
	cvtsi2ssl	%esi, %xmm4
	jmp	L1296
	.p2align 4,,10
	.p2align 3
L1368:
	ucomiss	%xmm3, %xmm0
	jp	L1332
	je	L1301
L1332:
	subl	$1, %eax
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%eax, %xmm3
	jmp	L1301
	.p2align 4,,10
	.p2align 3
L1375:
	leal	1(%eax), %esi
	testl	%eax, %eax
	jne	L1311
	movl	$8, %eax
	cmpl	%eax, %esi
	cmovge	%esi, %eax
	movl	%eax, 12(%esp)
L1312:
	movl	12(%esp), %eax
	leal	0(,%eax,8), %ecx
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1314
	addl	$1, 188(%eax)
L1314:
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, 28(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	92(%ebx), %ecx
	movl	28(%esp), %edx
	movl	%eax, %esi
	testl	%ecx, %ecx
	je	L1315
	movl	84(%ebx), %eax
	movl	%ecx, 4(%esp)
	movl	%esi, (%esp)
	sall	$3, %eax
	movl	%edx, 32(%esp)
	movl	%eax, 8(%esp)
	movl	%ecx, 28(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	28(%esp), %ecx
	movl	32(%esp), %edx
	testl	%eax, %eax
	je	L1316
	subl	$1, 188(%eax)
L1316:
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	movl	%edx, 28(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	28(%esp), %edx
L1315:
	movl	12(%esp), %eax
	movl	%esi, 92(%ebx)
	movl	%eax, 88(%ebx)
	movl	84(%ebx), %eax
	jmp	L1313
	.p2align 4,,10
	.p2align 3
L1374:
	leal	1(%eax), %edx
	testl	%eax, %eax
	jne	L1321
	movl	$8, %esi
	cmpl	%esi, %edx
	cmovge	%edx, %esi
L1322:
	movl	_GImGui, %eax
	leal	0(,%esi,8), %edx
	testl	%eax, %eax
	je	L1324
	addl	$1, 188(%eax)
L1324:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	92(%ebx), %ebp
	movl	%eax, %edi
	testl	%ebp, %ebp
	je	L1325
	movl	84(%ebx), %eax
	movl	%ebp, 4(%esp)
	movl	%edi, (%esp)
	sall	$3, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1326
	subl	$1, 188(%eax)
L1326:
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1325:
	movl	%edi, 92(%ebx)
	movl	84(%ebx), %eax
	movl	%esi, 88(%ebx)
	jmp	L1323
	.p2align 4,,10
	.p2align 3
L1321:
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%eax, %esi
	sarl	%esi
	addl	%eax, %esi
	cmpl	%edx, %esi
	cmovl	%edx, %esi
	cmpl	%esi, %eax
	jge	L1320
	jmp	L1322
	.p2align 4,,10
	.p2align 3
L1311:
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	addl	%eax, %ecx
	cmpl	%esi, %ecx
	cmovge	%ecx, %esi
	movl	%esi, 12(%esp)
	cmpl	%esi, %eax
	jge	L1310
	jmp	L1312
	.cfi_endproc
LFE103:
	.align 2
	.p2align 4
	.globl	__ZN18ImDrawListSplitter5MergeEP10ImDrawList.part.0
	.def	__ZN18ImDrawListSplitter5MergeEP10ImDrawList.part.0;	.scl	2;	.type	32;	.endef
__ZN18ImDrawListSplitter5MergeEP10ImDrawList.part.0:
LFB105:
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
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %esi
	movl	$0, 4(%esp)
	movl	%ecx, 12(%esp)
	movl	%esi, (%esp)
	call	__ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi
	.cfi_def_cfa_offset 40
	movl	(%esi), %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 48
	testl	%ebx, %ebx
	jle	L1461
	movl	8(%esi), %edx
	leal	(%ebx,%ebx,4), %eax
	leal	-12(%edx,%eax,8), %eax
	jmp	L1380
	.p2align 4,,10
	.p2align 3
L1463:
	movl	4(%eax), %ecx
	testl	%ecx, %ecx
	jne	L1379
	subl	$1, %ebx
	subl	$40, %eax
	movl	%ebx, (%esi)
	testl	%ebx, %ebx
	je	L1462
L1380:
	movl	(%eax), %edi
	testl	%edi, %edi
	je	L1463
L1379:
	movl	12(%esp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jle	L1413
	leal	-5(%ebx,%ebx,4), %ecx
	xorl	%ebx, %ebx
	leal	(%edx,%ecx,8), %ecx
	movl	%ecx, 16(%esp)
	testl	%ecx, %ecx
	je	L1378
	movl	28(%ecx), %ebx
	addl	24(%ecx), %ebx
L1378:
	cmpl	$1, %eax
	jle	L1415
L1471:
	movl	$0, 24(%esp)
	movl	$1, %ebp
	movl	$0, 20(%esp)
	movl	%esi, 48(%esp)
	.p2align 4
	.p2align 3
L1389:
	movl	12(%esp), %ecx
	leal	0(%ebp,%ebp,2), %eax
	movl	16(%ecx), %edx
	leal	(%edx,%eax,8), %edi
	movl	(%edi), %eax
	testl	%eax, %eax
	jle	L1383
	movl	8(%edi), %esi
	leal	-1(%eax), %edx
	leal	(%edx,%edx,4), %ecx
	leal	(%esi,%ecx,8), %ecx
	cmpl	$0, 28(%ecx)
	jne	L1384
	cmpl	$0, 32(%ecx)
	je	L1464
L1384:
	movl	16(%esp), %edx
	testl	%edx, %edx
	je	L1465
L1412:
	movl	16(%esp), %eax
	movl	$24, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_memcmp
	testl	%eax, %eax
	jne	L1386
	movl	16(%esp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	L1466
L1386:
	movl	(%edi), %eax
	addl	%eax, 20(%esp)
	leal	-5(%eax,%eax,4), %edx
	leal	(%esi,%edx,8), %ecx
	movl	12(%edi), %edx
	addl	%edx, 24(%esp)
	movl	%ecx, 16(%esp)
	testl	%eax, %eax
	jle	L1388
L1411:
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1387:
	leal	(%eax,%eax,4), %edx
	addl	$1, %eax
	movl	%ebx, 24(%esi,%edx,8)
	movl	8(%edi), %esi
	addl	28(%esi,%edx,8), %ebx
	cmpl	(%edi), %eax
	jl	L1387
L1388:
	movl	12(%esp), %eax
	addl	$1, %ebp
	cmpl	4(%eax), %ebp
	jl	L1389
L1473:
	movl	20(%esp), %eax
	movl	48(%esp), %esi
	movl	%eax, 16(%esp)
L1382:
	movl	4(%esi), %eax
	movl	20(%esp), %edi
	addl	(%esi), %edi
	cmpl	%eax, %edi
	jle	L1390
	testl	%eax, %eax
	jne	L1391
	movl	$8, %ebx
	cmpl	%ebx, %edi
	cmovge	%edi, %ebx
L1392:
	movl	_GImGui, %edx
	leal	(%ebx,%ebx,4), %eax
	sall	$3, %eax
	testl	%edx, %edx
	je	L1393
	addl	$1, 188(%edx)
L1393:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	8(%esi), %ebp
	movl	%eax, %edx
	testl	%ebp, %ebp
	je	L1394
	movl	(%esi), %eax
	movl	%edx, (%esp)
	movl	%ebp, 4(%esp)
	leal	(%eax,%eax,4), %eax
	movl	%edx, 20(%esp)
	sall	$3, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	20(%esp), %edx
	testl	%eax, %eax
	je	L1395
	subl	$1, 188(%eax)
L1395:
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	movl	%edx, 20(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	20(%esp), %edx
L1394:
	movl	%edx, 8(%esi)
	movl	%ebx, 4(%esi)
L1390:
	movl	12(%esi), %ebp
	movl	24(%esp), %ebx
	movl	%edi, (%esi)
	movl	16(%esi), %eax
	addl	%ebp, %ebx
	cmpl	%eax, %ebx
	jle	L1460
	testl	%eax, %eax
	jne	L1398
	movl	$8, %eax
	cmpl	%eax, %ebx
	cmovge	%ebx, %eax
	movl	%eax, %ecx
L1399:
	movl	_GImGui, %eax
	leal	(%ecx,%ecx), %edx
	testl	%eax, %eax
	je	L1400
	addl	$1, 188(%eax)
L1400:
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	movl	%ecx, 20(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	20(%esi), %edi
	movl	20(%esp), %ecx
	movl	%eax, %edx
	testl	%edi, %edi
	je	L1401
	movl	12(%esi), %eax
	movl	%edx, (%esp)
	movl	%edi, 4(%esp)
	addl	%eax, %eax
	movl	%ecx, 24(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 20(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	20(%esp), %edx
	movl	24(%esp), %ecx
	testl	%eax, %eax
	je	L1402
	subl	$1, 188(%eax)
L1402:
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	movl	%edx, 24(%esp)
	movl	%ecx, 20(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	24(%esp), %edx
	movl	20(%esp), %ecx
L1401:
	movl	%edx, 20(%esi)
	movl	(%esi), %edi
	movl	%ecx, 16(%esi)
L1397:
	movl	12(%esp), %ecx
	movl	%ebx, 12(%esi)
	leal	(%edx,%ebp,2), %eax
	cmpl	$1, 4(%ecx)
	jle	L1403
	subl	16(%esp), %edi
	movl	8(%esi), %edx
	movl	%esi, 48(%esp)
	movl	$1, %ebx
	leal	(%edi,%edi,4), %ecx
	movl	%eax, %ebp
	leal	(%edx,%ecx,8), %edi
	movl	%edi, 16(%esp)
	movl	12(%esp), %edi
	jmp	L1406
	.p2align 4,,10
	.p2align 3
L1404:
	movl	12(%esi), %edx
	testl	%edx, %edx
	jne	L1467
L1405:
	addl	$1, %ebx
	cmpl	4(%edi), %ebx
	jge	L1468
L1406:
	movl	16(%edi), %edx
	leal	(%ebx,%ebx,2), %eax
	leal	(%edx,%eax,8), %esi
	movl	(%esi), %eax
	testl	%eax, %eax
	je	L1404
	leal	(%eax,%eax,4), %edx
	movl	8(%esi), %eax
	sall	$3, %edx
	movl	%eax, 4(%esp)
	movl	16(%esp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 20(%esp)
	call	_memcpy
	movl	20(%esp), %edx
	addl	%edx, 16(%esp)
	movl	12(%esi), %edx
	testl	%edx, %edx
	je	L1405
L1467:
	movl	20(%esi), %eax
	addl	%edx, %edx
	movl	%ebp, (%esp)
	addl	$1, %ebx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 20(%esp)
	call	_memcpy
	addl	20(%esp), %ebp
	cmpl	4(%edi), %ebx
	jl	L1406
L1468:
	movl	48(%esp), %esi
	movl	%ebp, %eax
	movl	(%esi), %edi
L1403:
	movl	%eax, 56(%esi)
	testl	%edi, %edi
	je	L1407
	movl	8(%esi), %eax
	leal	-5(%edi,%edi,4), %edx
	leal	(%eax,%edx,8), %eax
	movl	32(%eax), %ebx
	testl	%ebx, %ebx
	je	L1408
L1407:
	movl	%esi, %ecx
	call	__ZN10ImDrawList10AddDrawCmdEv
	movl	(%esi), %eax
	leal	-5(%eax,%eax,4), %edx
	movl	8(%esi), %eax
	leal	(%eax,%edx,8), %eax
L1408:
	movl	28(%eax), %ecx
	leal	96(%esi), %edx
	testl	%ecx, %ecx
	je	L1469
	movl	$24, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcmp
	testl	%eax, %eax
	jne	L1470
L1410:
	movl	12(%esp), %eax
	movl	$1, 4(%eax)
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
	ret	$4
L1413:
	.cfi_restore_state
	movl	$0, 16(%esp)
	xorl	%ebx, %ebx
	cmpl	$1, %eax
	jg	L1471
L1415:
	movl	$0, 16(%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	jmp	L1382
L1464:
	movl	%edx, (%edi)
	movl	%edx, %eax
	testl	%edx, %edx
	je	L1385
	movl	16(%esp), %edx
	testl	%edx, %edx
	jne	L1412
L1385:
	testl	%eax, %eax
	jg	L1472
	.p2align 4
	.p2align 3
L1383:
	addl	%eax, 20(%esp)
	movl	12(%esp), %eax
	addl	$1, %ebp
	movl	12(%edi), %ecx
	addl	%ecx, 24(%esp)
	cmpl	4(%eax), %ebp
	jl	L1389
	jmp	L1473
	.p2align 4,,10
	.p2align 3
L1465:
	movl	12(%edi), %edx
	addl	%eax, 20(%esp)
	addl	%edx, 24(%esp)
	movl	%ecx, 16(%esp)
	jmp	L1411
L1398:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	cmpl	%ebx, %edx
	movl	%edx, %ecx
	cmovl	%ebx, %ecx
	cmpl	%ecx, %eax
	jl	L1399
L1460:
	movl	20(%esi), %edx
	jmp	L1397
L1466:
	movl	32(%esi), %eax
	testl	%eax, %eax
	jne	L1386
	movl	16(%esp), %ecx
	movl	28(%esi), %eax
	addl	%eax, 28(%ecx)
	movl	(%edi), %eax
	movl	8(%edi), %edx
	addl	28(%esi), %ebx
	leal	-5(%eax,%eax,4), %eax
	sall	$3, %eax
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	leal	40(%edx), %eax
	movl	%eax, 4(%esp)
	call	_memmove
	movl	(%edi), %eax
	subl	$1, %eax
	movl	%eax, (%edi)
	jmp	L1385
L1469:
	movl	96(%esi), %ecx
	movl	%ecx, (%eax)
	movl	4(%edx), %ecx
	movl	%ecx, 4(%eax)
	movl	8(%edx), %ecx
	movl	%ecx, 8(%eax)
	movl	12(%edx), %ecx
	movl	%ecx, 12(%eax)
	movl	16(%edx), %ecx
	movl	%ecx, 16(%eax)
	movl	20(%edx), %edx
	movl	%edx, 20(%eax)
	jmp	L1410
L1462:
	movl	12(%esp), %eax
	movl	$0, 16(%esp)
	movl	4(%eax), %eax
	jmp	L1378
L1391:
	movl	%eax, %ebx
	shrl	$31, %ebx
	addl	%eax, %ebx
	sarl	%ebx
	addl	%eax, %ebx
	cmpl	%edi, %ebx
	cmovl	%edi, %ebx
	cmpl	%ebx, %eax
	jge	L1390
	jmp	L1392
L1470:
	movl	%esi, %ecx
	call	__ZN10ImDrawList10AddDrawCmdEv
	jmp	L1410
L1472:
	movl	8(%edi), %esi
	leal	-5(%eax,%eax,4), %edx
	addl	%eax, 20(%esp)
	leal	(%esi,%edx,8), %ecx
	movl	%ecx, 16(%esp)
	movl	12(%edi), %ecx
	addl	%ecx, 24(%esp)
	jmp	L1411
L1461:
	movl	12(%esp), %eax
	movl	$0, 16(%esp)
	xorl	%ebx, %ebx
	movl	4(%eax), %eax
	jmp	L1378
	.cfi_endproc
LFE105:
	.align 2
	.p2align 4
	.globl	__ZN10ImDrawList17_ResetForNewFrameEv
	.def	__ZN10ImDrawList17_ResetForNewFrameEv;	.scl	2;	.type	32;	.endef
__ZN10ImDrawList17_ResetForNewFrameEv:
LFB109:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$72, %esp
	movl	%ebx, -12(%ebp)
	.cfi_offset 3, -20
	movl	%ecx, %ebx
	movl	%edi, -4(%ebp)
	cmpl	$1, 124(%ecx)
	.cfi_offset 7, -12
	jle	L1475
	movl	%ebx, (%esp)
	leal	120(%ecx), %ecx
	call	__ZN18ImDrawListSplitter5MergeEP10ImDrawList.part.0
	subl	$4, %esp
L1475:
	movl	4(%ebx), %eax
	testl	%eax, %eax
	jns	L1476
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1477
	addl	$1, 188(%eax)
L1477:
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	8(%ebx), %edx
	movl	%eax, %ecx
	testl	%edx, %edx
	je	L1478
	movl	(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	leal	(%eax,%eax,4), %eax
	movl	%edx, -60(%ebp)
	sall	$3, %eax
	movl	%ecx, -56(%ebp)
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	-56(%ebp), %ecx
	movl	-60(%ebp), %edx
	testl	%eax, %eax
	je	L1479
	subl	$1, 188(%eax)
L1479:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%ecx, -56(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-56(%ebp), %ecx
L1478:
	movl	%ecx, 8(%ebx)
	movl	$0, 4(%ebx)
L1476:
	movl	16(%ebx), %eax
	movl	$0, (%ebx)
	testl	%eax, %eax
	jns	L1480
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1481
	addl	$1, 188(%eax)
L1481:
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	20(%ebx), %edx
	movl	%eax, %ecx
	testl	%edx, %edx
	je	L1482
	movl	12(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	addl	%eax, %eax
	movl	%edx, -60(%ebp)
	movl	%eax, 8(%esp)
	movl	%ecx, -56(%ebp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	-56(%ebp), %ecx
	movl	-60(%ebp), %edx
	testl	%eax, %eax
	je	L1483
	subl	$1, 188(%eax)
L1483:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%ecx, -56(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-56(%ebp), %ecx
L1482:
	movl	%ecx, 20(%ebx)
	movl	$0, 16(%ebx)
L1480:
	movl	28(%ebx), %edi
	movl	$0, 12(%ebx)
	testl	%edi, %edi
	jns	L1484
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1485
	addl	$1, 188(%eax)
L1485:
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	32(%ebx), %edx
	movl	%eax, %ecx
	testl	%edx, %edx
	je	L1486
	movl	24(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	leal	(%eax,%eax,4), %eax
	movl	%edx, -60(%ebp)
	sall	$2, %eax
	movl	%ecx, -56(%ebp)
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	-56(%ebp), %ecx
	movl	-60(%ebp), %edx
	testl	%eax, %eax
	je	L1487
	subl	$1, 188(%eax)
L1487:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%ecx, -56(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-56(%ebp), %ecx
L1486:
	movl	%ecx, 32(%ebx)
	movl	$0, 28(%ebx)
L1484:
	movl	44(%ebx), %eax
	movl	64(%ebx), %ecx
	movl	$0, 24(%ebx)
	movl	40(%eax), %eax
	movl	$0, 96(%ebx)
	movl	$0, 100(%ebx)
	movl	%eax, 36(%ebx)
	movl	$0, 104(%ebx)
	movl	$0, 108(%ebx)
	movl	$0, 112(%ebx)
	movl	$0, 116(%ebx)
	movl	$0, 40(%ebx)
	movl	$0, 52(%ebx)
	movl	$0, 56(%ebx)
	testl	%ecx, %ecx
	jns	L1488
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1489
	addl	$1, 188(%eax)
L1489:
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	68(%ebx), %edx
	movl	%eax, %ecx
	testl	%edx, %edx
	je	L1490
	movl	60(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	sall	$4, %eax
	movl	%edx, -60(%ebp)
	movl	%eax, 8(%esp)
	movl	%ecx, -56(%ebp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	-56(%ebp), %ecx
	movl	-60(%ebp), %edx
	testl	%eax, %eax
	je	L1491
	subl	$1, 188(%eax)
L1491:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%ecx, -56(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-56(%ebp), %ecx
L1490:
	movl	%ecx, 68(%ebx)
	movl	$0, 64(%ebx)
L1488:
	movl	76(%ebx), %edx
	movl	$0, 60(%ebx)
	testl	%edx, %edx
	jns	L1492
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1493
	addl	$1, 188(%eax)
L1493:
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	80(%ebx), %edx
	movl	%eax, %ecx
	testl	%edx, %edx
	je	L1494
	movl	72(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	sall	$2, %eax
	movl	%edx, -60(%ebp)
	movl	%eax, 8(%esp)
	movl	%ecx, -56(%ebp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	-56(%ebp), %ecx
	movl	-60(%ebp), %edx
	testl	%eax, %eax
	je	L1495
	subl	$1, 188(%eax)
L1495:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%ecx, -56(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-56(%ebp), %ecx
L1494:
	movl	%ecx, 80(%ebx)
	movl	$0, 76(%ebx)
L1492:
	movl	88(%ebx), %eax
	movl	$0, 72(%ebx)
	testl	%eax, %eax
	jns	L1496
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1497
	addl	$1, 188(%eax)
L1497:
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	92(%ebx), %edx
	movl	%eax, %ecx
	testl	%edx, %edx
	je	L1498
	movl	84(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	sall	$3, %eax
	movl	%edx, -60(%ebp)
	movl	%eax, 8(%esp)
	movl	%ecx, -56(%ebp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	-56(%ebp), %ecx
	movl	-60(%ebp), %edx
	testl	%eax, %eax
	je	L1499
	subl	$1, 188(%eax)
L1499:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%ecx, -56(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-56(%ebp), %ecx
L1498:
	movl	%ecx, 92(%ebx)
	movl	$0, 88(%ebx)
L1496:
	movl	$1, %edx
	movl	$0, 84(%ebx)
	xorl	%eax, %eax
	movl	%edx, 124(%ebx)
	movl	%eax, 120(%ebx)
	xorl	%eax, %eax
L1500:
	movl	$0, -52(%ebp,%eax)
	movl	$0, -48(%ebp,%eax)
	movl	$0, -44(%ebp,%eax)
	movl	$0, -40(%ebp,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L1500
	movl	$0, -52(%ebp,%eax)
	movl	$0, -48(%ebp,%eax)
	movl	(%ebx), %eax
	cmpl	4(%ebx), %eax
	je	L1575
L1502:
	movl	8(%ebx), %ecx
L1505:
	movl	-52(%ebp), %edx
	leal	(%eax,%eax,4), %eax
	movl	%edx, (%ecx,%eax,8)
	movl	-48(%ebp), %edx
	movl	%edx, 4(%ecx,%eax,8)
	movl	-44(%ebp), %edx
	movl	%edx, 8(%ecx,%eax,8)
	movl	-40(%ebp), %edx
	movl	%edx, 12(%ecx,%eax,8)
	movl	-36(%ebp), %edx
	movl	%edx, 16(%ecx,%eax,8)
	movl	-32(%ebp), %edx
	movl	%edx, 20(%ecx,%eax,8)
	movl	-28(%ebp), %edx
	movl	%edx, 24(%ecx,%eax,8)
	movl	-24(%ebp), %edx
	movl	%edx, 28(%ecx,%eax,8)
	movl	-20(%ebp), %edx
	movl	%edx, 32(%ecx,%eax,8)
	movl	-16(%ebp), %edx
	movl	%edx, 36(%ecx,%eax,8)
	movl	$0x3f800000, 140(%ebx)
	addl	$1, (%ebx)
	movl	-12(%ebp), %ebx
	movl	-4(%ebp), %edi
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L1575:
	.cfi_restore_state
	leal	1(%eax), %ecx
	testl	%eax, %eax
	jne	L1503
	movl	$8, %edx
	movl	%esi, -8(%ebp)
	cmpl	%edx, %ecx
	cmovge	%ecx, %edx
	.cfi_offset 6, -16
L1504:
	movl	_GImGui, %ecx
	leal	(%edx,%edx,4), %eax
	sall	$3, %eax
	testl	%ecx, %ecx
	je	L1506
	addl	$1, 188(%ecx)
L1506:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -56(%ebp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	8(%ebx), %esi
	movl	-56(%ebp), %edx
	movl	%eax, %ecx
	testl	%esi, %esi
	je	L1507
	movl	(%ebx), %eax
	movl	%ecx, (%esp)
	movl	%esi, 4(%esp)
	leal	(%eax,%eax,4), %eax
	movl	%edx, -60(%ebp)
	sall	$3, %eax
	movl	%ecx, -56(%ebp)
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	-56(%ebp), %ecx
	movl	-60(%ebp), %edx
	testl	%eax, %eax
	je	L1508
	subl	$1, 188(%eax)
L1508:
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	movl	%ecx, -60(%ebp)
	movl	%edx, -56(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-60(%ebp), %ecx
	movl	-56(%ebp), %edx
L1507:
	movl	%ecx, 8(%ebx)
	movl	(%ebx), %eax
	movl	%edx, 4(%ebx)
	movl	-8(%ebp), %esi
	.cfi_restore 6
	jmp	L1505
	.p2align 4,,10
	.p2align 3
L1503:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	%edx, %eax
	jge	L1502
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	jmp	L1504
	.cfi_endproc
LFE109:
	.align 2
	.p2align 4
	.globl	__ZN10ImDrawList11AddPolylineEPK6ImVec2ijif.part.0
	.def	__ZN10ImDrawList11AddPolylineEPK6ImVec2ijif.part.0;	.scl	2;	.type	32;	.endef
__ZN10ImDrawList11AddPolylineEPK6ImVec2ijif.part.0:
LFB114:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movaps	%xmm0, %xmm6
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
	subl	$100, %esp
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	(%edi), %eax
	movl	4(%edi), %ebx
	movl	8(%edi), %ecx
	movl	12(%edi), %edi
	movl	%eax, -52(%ebp)
	movl	44(%esi), %eax
	cmpl	$1, %edi
	movl	%ebx, -36(%ebp)
	movss	(%eax), %xmm7
	movss	4(%eax), %xmm2
	sbbl	$0, %ebx
	movl	%ecx, -76(%ebp)
	movl	36(%esi), %eax
	movl	%ebx, -48(%ebp)
	movl	%eax, %ebx
	andl	$1, %ebx
	je	L1578
	movss	LC1, %xmm0
	movaps	%xmm6, %xmm1
	movss	LC1, %xmm5
	andl	$16777215, %ecx
	movss	140(%esi), %xmm4
	movl	%ecx, -68(%ebp)
	cmpless	%xmm6, %xmm0
	movss	%xmm4, -28(%ebp)
	andps	%xmm0, %xmm1
	andnps	%xmm5, %xmm0
	orps	%xmm1, %xmm0
	cvttss2sil	%xmm0, %ebx
	movaps	%xmm0, %xmm5
	movss	%xmm0, -88(%ebp)
	movl	%ebx, -92(%ebp)
	testb	$2, %al
	je	L1579
	cmpl	$62, %ebx
	jle	L1691
L1579:
	comiss	-28(%ebp), %xmm6
	movl	-36(%ebp), %eax
	movss	%xmm2, -64(%ebp)
	movss	%xmm7, -44(%ebp)
	ja	L1692
	leal	(%eax,%eax,2), %eax
	movl	%esi, %ecx
	movl	%eax, -72(%ebp)
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %ebx
	leal	(%ebx,%ebx,2), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	__ZN10ImDrawList11PrimReserveEii
	movl	44(%esi), %ebx
	movl	-72(%ebp), %edx
	subl	$8, %esp
	movb	$1, -32(%ebp)
	movss	-64(%ebp), %xmm2
	movb	$0, -40(%ebp)
	movss	-44(%ebp), %xmm7
L1580:
	cmpl	%edx, 48(%ebx)
	jge	L1583
	movl	52(%ebx), %eax
	testl	%eax, %eax
	je	L1584
	movl	_GImGui, %ecx
	testl	%ecx, %ecx
	je	L1585
	subl	$1, 188(%ecx)
L1585:
	movl	%edx, -56(%ebp)
	movss	%xmm2, -64(%ebp)
	movss	%xmm7, -44(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-56(%ebp), %edx
	movss	-64(%ebp), %xmm2
	movss	-44(%ebp), %xmm7
L1584:
	movl	_GImGui, %eax
	leal	0(,%edx,8), %ecx
	testl	%eax, %eax
	je	L1586
	addl	$1, 188(%eax)
L1586:
	movl	%edx, -56(%ebp)
	movss	%xmm2, -64(%ebp)
	movss	%xmm7, -44(%ebp)
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-56(%ebp), %edx
	movss	-64(%ebp), %xmm2
	movl	%eax, 52(%ebx)
	movss	-44(%ebp), %xmm7
	movl	%edx, 48(%ebx)
	movl	44(%esi), %ebx
L1583:
	movl	-36(%ebp), %eax
	movl	52(%ebx), %ecx
	leal	0(,%eax,8), %ebx
	movl	%ecx, -44(%ebp)
	leal	(%ecx,%ebx), %eax
	movl	%eax, -56(%ebp)
	movl	-48(%ebp), %eax
	testl	%eax, %eax
	jle	L1587
	movl	-52(%ebp), %edx
	movl	%edi, -80(%ebp)
	xorl	%eax, %eax
	xorps	%xmm5, %xmm5
	movl	%esi, -84(%ebp)
	movl	-52(%ebp), %edi
	movl	-48(%ebp), %esi
	movl	%ebx, -64(%ebp)
	addl	$8, %edx
	movl	%ecx, %ebx
	.p2align 4
	.p2align 3
L1591:
	addl	$1, %eax
	movl	%edx, %ecx
	cmpl	%eax, -36(%ebp)
	cmove	%edi, %ecx
	movss	(%ecx), %xmm0
	movss	4(%ecx), %xmm1
	subss	-8(%edx), %xmm0
	subss	-4(%edx), %xmm1
	movaps	%xmm0, %xmm4
	movaps	%xmm1, %xmm3
	mulss	%xmm0, %xmm4
	mulss	%xmm1, %xmm3
	addss	%xmm3, %xmm4
	comiss	%xmm5, %xmm4
	jbe	L1589
	xorps	%xmm3, %xmm3
	movss	%xmm4, %xmm3
	rsqrtss	%xmm3, %xmm3
	mulss	%xmm3, %xmm0
	mulss	%xmm3, %xmm1
L1589:
	xorps	LC80, %xmm0
	movss	%xmm1, -8(%ebx,%eax,8)
	addl	$8, %edx
	movss	%xmm0, -4(%ebx,%eax,8)
	cmpl	%eax, %esi
	jne	L1591
	movl	-80(%ebp), %edi
	movl	-64(%ebp), %ebx
	movl	-84(%ebp), %esi
	testl	%edi, %edi
	je	L1593
	cmpb	$0, -32(%ebp)
	je	L1693
	movl	40(%esi), %edi
	cmpb	$0, -40(%ebp)
	je	L1601
	movss	LC74, %xmm3
	movss	-88(%ebp), %xmm0
	mulss	%xmm3, %xmm0
	addss	LC1, %xmm0
	movss	%xmm0, -28(%ebp)
L1602:
	movss	LC82, %xmm5
	movss	-28(%ebp), %xmm4
	xorl	%eax, %eax
	movl	%edi, -28(%ebp)
	jmp	L1613
	.p2align 4,,10
	.p2align 3
L1609:
	movl	-28(%ebp), %ebx
	movl	-44(%ebp), %edi
	leal	0(,%eax,8), %edx
	movl	%eax, %ecx
	sall	$4, %ecx
	addl	-56(%ebp), %ecx
	addl	$2, %ebx
	movl	%ebx, -32(%ebp)
	leal	(%edi,%edx), %ebx
	addl	-52(%ebp), %edx
	movl	%ebx, -40(%ebp)
L1610:
	movl	-44(%ebp), %edi
	movl	-40(%ebp), %ebx
	movss	-8(%edi,%eax,8), %xmm1
	movss	-4(%edi,%eax,8), %xmm0
	addss	(%ebx), %xmm1
	addss	4(%ebx), %xmm0
	mulss	%xmm3, %xmm1
	mulss	%xmm3, %xmm0
	movaps	%xmm1, %xmm2
	mulss	%xmm1, %xmm2
	movaps	%xmm0, %xmm6
	mulss	%xmm0, %xmm6
	addss	%xmm6, %xmm2
	comiss	LC81, %xmm2
	jbe	L1611
	movss	LC1, %xmm6
	movaps	%xmm5, %xmm7
	divss	%xmm2, %xmm6
	movaps	%xmm5, %xmm2
	cmpltss	%xmm6, %xmm2
	andps	%xmm2, %xmm7
	andnps	%xmm6, %xmm2
	orps	%xmm7, %xmm2
	mulss	%xmm2, %xmm1
	mulss	%xmm2, %xmm0
L1611:
	mulss	%xmm4, %xmm1
	movss	(%edx), %xmm2
	movl	-32(%ebp), %edi
	mulss	%xmm4, %xmm0
	movzwl	-28(%ebp), %ebx
	addss	%xmm1, %xmm2
	movss	%xmm2, (%ecx)
	movss	4(%edx), %xmm2
	addss	%xmm0, %xmm2
	movss	%xmm2, 4(%ecx)
	movss	(%edx), %xmm2
	subss	%xmm1, %xmm2
	movss	%xmm2, 8(%ecx)
	movss	4(%edx), %xmm1
	leal	1(%ebx), %edx
	movzwl	-28(%ebp), %ebx
	subss	%xmm0, %xmm1
	movss	%xmm1, 12(%ecx)
	movl	56(%esi), %ecx
	movw	%di, (%ecx)
	movl	56(%esi), %ecx
	movw	%bx, 2(%ecx)
	movl	56(%esi), %ecx
	movl	%edi, %ebx
	leal	1(%edi), %edi
	movw	%dx, 4(%ecx)
	movl	56(%esi), %ecx
	movw	%di, 6(%ecx)
	movl	56(%esi), %ecx
	movw	%dx, 8(%ecx)
	movl	56(%esi), %edx
	movw	%bx, 10(%edx)
	addl	$12, 56(%esi)
	cmpl	%eax, -48(%ebp)
	jle	L1595
	movl	-32(%ebp), %ebx
	movl	%ebx, -28(%ebp)
L1613:
	addl	$1, %eax
	cmpl	%eax, -36(%ebp)
	jne	L1609
	movl	40(%esi), %ebx
	movl	-44(%ebp), %edi
	movl	-52(%ebp), %edx
	movl	-56(%ebp), %ecx
	movl	%ebx, -32(%ebp)
	movl	%edi, -40(%ebp)
	jmp	L1610
	.p2align 4,,10
	.p2align 3
L1692:
	sall	$2, %eax
	movl	%esi, %ecx
	movl	%eax, -72(%ebp)
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %ebx
	leal	(%ebx,%ebx,8), %eax
	addl	%eax, %eax
	movl	%eax, (%esp)
	call	__ZN10ImDrawList11PrimReserveEii
	movl	-72(%ebp), %eax
	movl	-36(%ebp), %ecx
	subl	$8, %esp
	movl	44(%esi), %ebx
	movb	$0, -32(%ebp)
	movb	$0, -40(%ebp)
	movss	-44(%ebp), %xmm7
	leal	(%eax,%ecx), %edx
	movss	-64(%ebp), %xmm2
	jmp	L1580
	.p2align 4,,10
	.p2align 3
L1587:
	testl	%edi, %edi
	jne	L1694
	.p2align 4
	.p2align 3
L1593:
	movl	-44(%ebp), %edi
	movl	-12(%edi,%ebx), %ecx
	movl	-16(%edi,%ebx), %edx
	leal	-8(%edi,%ebx), %eax
	movl	%edx, (%eax)
	movl	%ecx, 4(%eax)
	movss	4(%edi), %xmm6
	movss	(%edi), %xmm1
	movl	-52(%ebp), %edi
	movl	%ecx, -60(%ebp)
	movss	%xmm6, -80(%ebp)
	movss	(%edi), %xmm4
	movss	4(%edi), %xmm6
	movl	-36(%ebp), %edi
	subl	$1, %edi
	movl	%edi, -64(%ebp)
	cmpb	$0, -32(%ebp)
	je	L1599
	cmpb	$0, -40(%ebp)
	je	L1600
	movss	LC74, %xmm3
	mulss	-88(%ebp), %xmm3
	addss	LC1, %xmm3
	movss	%xmm3, -28(%ebp)
L1600:
	movss	-28(%ebp), %xmm5
	movss	-80(%ebp), %xmm0
	movl	-56(%ebp), %ecx
	movl	-44(%ebp), %edi
	mulss	%xmm5, %xmm1
	movl	-52(%ebp), %edx
	mulss	%xmm5, %xmm0
	addss	%xmm4, %xmm1
	addss	%xmm6, %xmm0
	movaps	%xmm5, %xmm6
	movss	%xmm1, (%ecx)
	movss	%xmm0, 4(%ecx)
	movss	4(%edi), %xmm1
	movss	(%edi), %xmm3
	movl	%ecx, %edi
	movss	4(%edx), %xmm0
	mulss	%xmm5, %xmm1
	mulss	%xmm5, %xmm3
	subss	%xmm1, %xmm0
	movss	(%edx), %xmm1
	subss	%xmm3, %xmm1
	movss	%xmm0, 12(%ecx)
	movss	%xmm1, 8(%ecx)
	movss	4(%eax), %xmm0
	movss	(%eax), %xmm1
	leal	-8(%edx,%ebx), %ecx
	movl	-64(%ebp), %edx
	mulss	%xmm5, %xmm0
	mulss	%xmm5, %xmm1
	addss	4(%ecx), %xmm0
	sall	$4, %edx
	addss	(%ecx), %xmm1
	movss	%xmm0, 4(%edi,%edx)
	movss	%xmm1, (%edi,%edx)
	movss	4(%eax), %xmm1
	mulss	(%eax), %xmm6
	movss	4(%ecx), %xmm0
	mulss	%xmm5, %xmm1
	subss	%xmm1, %xmm0
	movss	(%ecx), %xmm1
	subss	%xmm6, %xmm1
	movss	%xmm0, 12(%edi,%edx)
	movss	%xmm1, 8(%edi,%edx)
	movl	-48(%ebp), %edx
	testl	%edx, %edx
	jle	L1603
	movss	LC74, %xmm3
	movl	40(%esi), %edi
	cmpb	$0, -40(%ebp)
	jne	L1602
L1601:
	movl	%edi, -32(%ebp)
	movss	-28(%ebp), %xmm5
	xorl	%edx, %edx
	movss	LC74, %xmm3
	movss	%xmm7, -40(%ebp)
	jmp	L1608
	.p2align 4,,10
	.p2align 3
L1696:
	movl	-32(%ebp), %eax
	movl	-44(%ebp), %edi
	movl	%edx, %ecx
	sall	$4, %ecx
	addl	-56(%ebp), %ecx
	addl	$3, %eax
	movl	%eax, -28(%ebp)
	leal	0(,%edx,8), %eax
	leal	(%edi,%eax), %ebx
	addl	-52(%ebp), %eax
L1605:
	movl	-44(%ebp), %edi
	movss	(%ebx), %xmm1
	movss	4(%ebx), %xmm0
	addss	-8(%edi,%edx,8), %xmm1
	addss	-4(%edi,%edx,8), %xmm0
	mulss	%xmm3, %xmm1
	mulss	%xmm3, %xmm0
	movaps	%xmm1, %xmm6
	mulss	%xmm1, %xmm6
	movaps	%xmm0, %xmm4
	mulss	%xmm0, %xmm4
	addss	%xmm6, %xmm4
	comiss	LC81, %xmm4
	jbe	L1606
	movss	LC1, %xmm6
	movss	LC82, %xmm7
	divss	%xmm4, %xmm6
	movss	LC82, %xmm4
	cmpltss	%xmm6, %xmm4
	andps	%xmm4, %xmm7
	andnps	%xmm6, %xmm4
	orps	%xmm7, %xmm4
	mulss	%xmm4, %xmm1
	mulss	%xmm4, %xmm0
L1606:
	mulss	%xmm5, %xmm1
	movss	(%eax), %xmm4
	movzwl	-28(%ebp), %edi
	mulss	%xmm5, %xmm0
	movzwl	-32(%ebp), %ebx
	addss	%xmm1, %xmm4
	movss	%xmm4, (%ecx)
	movss	4(%eax), %xmm4
	addss	%xmm0, %xmm4
	movss	%xmm4, 4(%ecx)
	movss	(%eax), %xmm4
	subss	%xmm1, %xmm4
	movss	%xmm4, 8(%ecx)
	movss	4(%eax), %xmm1
	movzwl	-28(%ebp), %eax
	subss	%xmm0, %xmm1
	addl	$1, %eax
	movss	%xmm1, 12(%ecx)
	movl	56(%esi), %ecx
	movw	%di, (%ecx)
	movl	56(%esi), %ecx
	movzwl	-28(%ebp), %edi
	movw	%bx, 2(%ecx)
	movzwl	-32(%ebp), %ecx
	movl	56(%esi), %ebx
	addl	$2, %ecx
	movw	%cx, 4(%ebx)
	movl	56(%esi), %ebx
	movw	%cx, 6(%ebx)
	movl	56(%esi), %ecx
	leal	2(%edi), %ebx
	movw	%bx, 8(%ecx)
	movl	56(%esi), %ecx
	movw	%di, 10(%ecx)
	movl	56(%esi), %ecx
	movl	-32(%ebp), %edi
	movw	%ax, 12(%ecx)
	movl	56(%esi), %ecx
	leal	1(%edi), %ebx
	movw	%bx, 14(%ecx)
	movl	56(%esi), %ecx
	movw	%di, 16(%ecx)
	movl	56(%esi), %ecx
	movw	%di, 18(%ecx)
	movzwl	-28(%ebp), %edi
	movl	56(%esi), %ecx
	movw	%di, 20(%ecx)
	movl	56(%esi), %ecx
	movw	%ax, 22(%ecx)
	addl	$24, 56(%esi)
	cmpl	%edx, -48(%ebp)
	jle	L1695
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
L1608:
	addl	$1, %edx
	cmpl	%edx, -36(%ebp)
	jne	L1696
	movl	40(%esi), %eax
	movl	-56(%ebp), %ecx
	movl	-44(%ebp), %ebx
	movl	%eax, -28(%ebp)
	movl	-52(%ebp), %eax
	jmp	L1605
	.p2align 4,,10
	.p2align 3
L1578:
	movl	-48(%ebp), %edi
	movss	%xmm0, -40(%ebp)
	movl	%esi, %ecx
	movss	%xmm2, -32(%ebp)
	leal	0(,%edi,4), %eax
	movss	%xmm7, -28(%ebp)
	movl	%eax, 4(%esp)
	leal	(%edi,%edi,2), %eax
	addl	%eax, %eax
	movl	%eax, (%esp)
	call	__ZN10ImDrawList11PrimReserveEii
	subl	$8, %esp
	testl	%edi, %edi
	jle	L1576
	movss	-40(%ebp), %xmm6
	movl	-52(%ebp), %eax
	mulss	LC74, %xmm6
	movss	-28(%ebp), %xmm7
	movss	-32(%ebp), %xmm2
	movl	-76(%ebp), %ecx
	addl	$8, %eax
	.p2align 4
	.p2align 3
L1628:
	movl	-52(%ebp), %edx
	addl	$1, %ebx
	cmpl	%ebx, -36(%ebp)
	movss	-8(%eax), %xmm3
	cmovne	%eax, %edx
	movss	(%edx), %xmm0
	movss	4(%edx), %xmm1
	subss	-4(%eax), %xmm1
	subss	%xmm3, %xmm0
	movaps	%xmm1, %xmm4
	mulss	%xmm1, %xmm4
	movaps	%xmm0, %xmm5
	mulss	%xmm0, %xmm5
	addss	%xmm4, %xmm5
	xorps	%xmm4, %xmm4
	comiss	%xmm4, %xmm5
	jbe	L1626
	xorps	%xmm4, %xmm4
	movss	%xmm5, %xmm4
	rsqrtss	%xmm4, %xmm4
	mulss	%xmm4, %xmm0
	mulss	%xmm4, %xmm1
L1626:
	mulss	%xmm6, %xmm1
	movl	52(%esi), %edi
	addl	$8, %eax
	mulss	%xmm6, %xmm0
	addss	%xmm1, %xmm3
	movss	%xmm3, (%edi)
	movss	-12(%eax), %xmm3
	movl	52(%esi), %edi
	subss	%xmm0, %xmm3
	movss	%xmm3, 4(%edi)
	movl	52(%esi), %edi
	movss	%xmm7, 8(%edi)
	movss	%xmm2, 12(%edi)
	movl	52(%esi), %edi
	movl	%ecx, 16(%edi)
	movss	(%edx), %xmm3
	movl	52(%esi), %edi
	addss	%xmm1, %xmm3
	movss	%xmm3, 20(%edi)
	movss	4(%edx), %xmm3
	movl	52(%esi), %edi
	subss	%xmm0, %xmm3
	movss	%xmm3, 24(%edi)
	movl	52(%esi), %edi
	movss	%xmm7, 28(%edi)
	movss	%xmm2, 32(%edi)
	movl	52(%esi), %edi
	movl	%ecx, 36(%edi)
	movss	(%edx), %xmm3
	movl	52(%esi), %edi
	subss	%xmm1, %xmm3
	movss	%xmm3, 40(%edi)
	movss	4(%edx), %xmm3
	movl	52(%esi), %edi
	addss	%xmm0, %xmm3
	movss	%xmm3, 44(%edi)
	movl	52(%esi), %edx
	movss	%xmm7, 48(%edx)
	movss	%xmm2, 52(%edx)
	movl	52(%esi), %edx
	movl	%ecx, 56(%edx)
	movl	52(%esi), %edx
	movss	-16(%eax), %xmm3
	subss	%xmm1, %xmm3
	movss	%xmm3, 60(%edx)
	addss	-12(%eax), %xmm0
	movl	52(%esi), %edx
	movss	%xmm0, 64(%edx)
	movl	52(%esi), %edx
	movss	%xmm7, 68(%edx)
	movss	%xmm2, 72(%edx)
	movl	52(%esi), %edx
	movl	%ecx, 76(%edx)
	movl	56(%esi), %edx
	movl	40(%esi), %edi
	addl	$80, 52(%esi)
	movw	%di, (%edx)
	movzwl	40(%esi), %edx
	movl	56(%esi), %edi
	addl	$1, %edx
	movw	%dx, 2(%edi)
	movzwl	40(%esi), %edx
	movl	56(%esi), %edi
	addl	$2, %edx
	movw	%dx, 4(%edi)
	movl	56(%esi), %edx
	movl	40(%esi), %edi
	movw	%di, 6(%edx)
	movzwl	40(%esi), %edx
	movl	56(%esi), %edi
	addl	$2, %edx
	movw	%dx, 8(%edi)
	movzwl	40(%esi), %edx
	movl	56(%esi), %edi
	addl	$3, %edx
	movw	%dx, 10(%edi)
	addl	$12, 56(%esi)
	addl	$4, 40(%esi)
	cmpl	%ebx, -48(%ebp)
	jne	L1628
L1576:
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
	ret	$16
	.p2align 4,,10
	.p2align 3
L1599:
	.cfi_restore_state
	movss	-28(%ebp), %xmm0
	movss	-88(%ebp), %xmm5
	movss	LC74, %xmm3
	movl	-56(%ebp), %eax
	subss	%xmm0, %xmm5
	movl	-44(%ebp), %ecx
	movl	-52(%ebp), %edi
	movl	%eax, %ebx
	mulss	%xmm3, %xmm5
	addss	%xmm5, %xmm0
	movss	%xmm5, -84(%ebp)
	mulss	%xmm0, %xmm1
	addss	%xmm4, %xmm1
	movaps	%xmm0, %xmm4
	movss	-80(%ebp), %xmm0
	movss	%xmm4, -40(%ebp)
	mulss	%xmm4, %xmm0
	movss	%xmm1, (%eax)
	addss	%xmm6, %xmm0
	movaps	%xmm5, %xmm6
	movss	%xmm0, 4(%eax)
	movss	4(%ecx), %xmm0
	movss	(%ecx), %xmm1
	mulss	%xmm5, %xmm0
	mulss	%xmm5, %xmm1
	addss	4(%edi), %xmm0
	addss	(%edi), %xmm1
	movss	%xmm0, 12(%eax)
	movss	%xmm1, 8(%eax)
	movss	4(%ecx), %xmm1
	movss	(%ecx), %xmm4
	movss	4(%edi), %xmm0
	mulss	%xmm5, %xmm1
	mulss	%xmm5, %xmm4
	movss	-40(%ebp), %xmm5
	subss	%xmm1, %xmm0
	movss	(%edi), %xmm1
	subss	%xmm4, %xmm1
	movss	%xmm0, 20(%eax)
	movss	%xmm1, 16(%eax)
	movss	4(%ecx), %xmm1
	movss	(%ecx), %xmm4
	movss	4(%edi), %xmm0
	mulss	%xmm5, %xmm1
	mulss	%xmm5, %xmm4
	subss	%xmm1, %xmm0
	movss	(%edi), %xmm1
	subss	%xmm4, %xmm1
	movss	%xmm0, 28(%eax)
	movss	%xmm1, 24(%eax)
	movl	-64(%ebp), %eax
	sall	$3, %eax
	leal	(%ecx,%eax), %edx
	addl	%edi, %eax
	movl	-64(%ebp), %edi
	movss	4(%edx), %xmm0
	movss	(%edx), %xmm1
	sall	$5, %edi
	movl	-48(%ebp), %ecx
	mulss	%xmm5, %xmm0
	mulss	%xmm5, %xmm1
	addss	4(%eax), %xmm0
	addss	(%eax), %xmm1
	movss	%xmm0, 4(%ebx,%edi)
	movss	%xmm1, (%ebx,%edi)
	movss	4(%edx), %xmm0
	movss	(%edx), %xmm1
	mulss	%xmm6, %xmm0
	mulss	%xmm6, %xmm1
	addss	4(%eax), %xmm0
	addss	(%eax), %xmm1
	movss	%xmm0, 12(%ebx,%edi)
	movss	%xmm1, 8(%ebx,%edi)
	movss	4(%edx), %xmm1
	movss	4(%eax), %xmm0
	mulss	%xmm6, %xmm1
	mulss	(%edx), %xmm6
	subss	%xmm1, %xmm0
	movss	(%eax), %xmm1
	subss	%xmm6, %xmm1
	movss	%xmm0, 20(%ebx,%edi)
	movss	%xmm1, 16(%ebx,%edi)
	movss	4(%edx), %xmm1
	movss	4(%eax), %xmm0
	mulss	%xmm5, %xmm1
	mulss	(%edx), %xmm5
	subss	%xmm1, %xmm0
	movss	(%eax), %xmm1
	subss	%xmm5, %xmm1
	movss	%xmm0, 28(%ebx,%edi)
	movss	%xmm1, 24(%ebx,%edi)
	testl	%ecx, %ecx
	jle	L1594
L1598:
	movl	40(%esi), %eax
	movss	-84(%ebp), %xmm5
	movss	%xmm7, -80(%ebp)
	movl	$0, -32(%ebp)
	movss	-40(%ebp), %xmm6
	movl	%eax, -28(%ebp)
	movss	%xmm2, -88(%ebp)
	jmp	L1622
	.p2align 4,,10
	.p2align 3
L1618:
	movl	-28(%ebp), %eax
	movl	-44(%ebp), %ebx
	movl	-32(%ebp), %edx
	addl	$4, %eax
	movl	%eax, -40(%ebp)
	movl	-32(%ebp), %eax
	sall	$5, %edx
	addl	-56(%ebp), %edx
	sall	$3, %eax
	leal	(%ebx,%eax), %ecx
	addl	-52(%ebp), %eax
L1619:
	movl	-44(%ebp), %ebx
	movl	-32(%ebp), %edi
	movss	-8(%ebx,%edi,8), %xmm1
	movss	-4(%ebx,%edi,8), %xmm0
	addss	(%ecx), %xmm1
	addss	4(%ecx), %xmm0
	mulss	%xmm3, %xmm1
	mulss	%xmm3, %xmm0
	movaps	%xmm1, %xmm4
	mulss	%xmm1, %xmm4
	movaps	%xmm0, %xmm2
	mulss	%xmm0, %xmm2
	addss	%xmm4, %xmm2
	comiss	LC81, %xmm2
	jbe	L1620
	movss	LC1, %xmm4
	movss	LC82, %xmm7
	divss	%xmm2, %xmm4
	movss	LC82, %xmm2
	cmpltss	%xmm4, %xmm2
	andps	%xmm2, %xmm7
	andnps	%xmm4, %xmm2
	orps	%xmm7, %xmm2
	mulss	%xmm2, %xmm1
	mulss	%xmm2, %xmm0
L1620:
	movaps	%xmm6, %xmm4
	movss	(%eax), %xmm7
	movaps	%xmm6, %xmm2
	movzwl	-28(%ebp), %ebx
	mulss	%xmm1, %xmm4
	movzwl	-28(%ebp), %edi
	mulss	%xmm0, %xmm2
	addl	$1, %ebx
	mulss	%xmm5, %xmm1
	addl	$2, %edi
	mulss	%xmm5, %xmm0
	movw	%di, -64(%ebp)
	addss	%xmm4, %xmm7
	movss	%xmm7, (%edx)
	movss	4(%eax), %xmm7
	addss	%xmm2, %xmm7
	movss	%xmm7, 4(%edx)
	movss	(%eax), %xmm7
	addss	%xmm1, %xmm7
	movss	%xmm7, 8(%edx)
	movss	4(%eax), %xmm7
	addss	%xmm0, %xmm7
	movss	%xmm7, 12(%edx)
	movss	(%eax), %xmm7
	subss	%xmm1, %xmm7
	movss	%xmm7, 16(%edx)
	movss	4(%eax), %xmm1
	subss	%xmm0, %xmm1
	movss	%xmm1, 20(%edx)
	movss	(%eax), %xmm0
	subss	%xmm4, %xmm0
	movss	%xmm0, 24(%edx)
	movss	4(%eax), %xmm0
	movzwl	-40(%ebp), %eax
	subss	%xmm2, %xmm0
	addl	$1, %eax
	movss	%xmm0, 28(%edx)
	movl	56(%esi), %edx
	movw	%ax, (%edx)
	movl	56(%esi), %edx
	movw	%bx, 2(%edx)
	movl	56(%esi), %edx
	movw	%di, 4(%edx)
	movl	56(%esi), %edx
	movw	%di, 6(%edx)
	movzwl	-40(%ebp), %edx
	movl	56(%esi), %ecx
	addl	$2, %edx
	movw	%dx, 8(%ecx)
	movl	56(%esi), %ecx
	movw	%ax, 10(%ecx)
	movl	56(%esi), %ecx
	movzwl	-28(%ebp), %edi
	movw	%ax, 12(%ecx)
	movl	56(%esi), %ecx
	movw	%bx, 14(%ecx)
	movl	56(%esi), %ebx
	movzwl	-28(%ebp), %ecx
	movw	%di, 16(%ebx)
	movl	56(%esi), %ebx
	movl	-40(%ebp), %edi
	movw	%cx, 18(%ebx)
	movl	56(%esi), %ebx
	movw	%di, 20(%ebx)
	movl	56(%esi), %ebx
	movw	%ax, 22(%ebx)
	movl	56(%esi), %eax
	movzwl	-64(%ebp), %ebx
	movw	%dx, 24(%eax)
	movl	56(%esi), %eax
	movw	%bx, 26(%eax)
	movzwl	-28(%ebp), %eax
	movl	56(%esi), %ecx
	addl	$3, %eax
	movw	%ax, 28(%ecx)
	movl	56(%esi), %ecx
	movw	%ax, 30(%ecx)
	movl	56(%esi), %eax
	leal	3(%edi), %ecx
	movw	%cx, 32(%eax)
	movl	56(%esi), %eax
	movw	%dx, 34(%eax)
	movl	-32(%ebp), %eax
	addl	$36, 56(%esi)
	cmpl	%eax, -48(%ebp)
	je	L1697
	movl	-40(%ebp), %eax
	movl	%eax, -28(%ebp)
L1622:
	addl	$1, -32(%ebp)
	movl	-32(%ebp), %eax
	cmpl	%eax, -36(%ebp)
	jne	L1618
	movl	40(%esi), %eax
	movl	-56(%ebp), %edx
	movl	-44(%ebp), %ecx
	movl	%eax, -40(%ebp)
	movl	-52(%ebp), %eax
	jmp	L1619
	.p2align 4,,10
	.p2align 3
L1691:
	xorps	%xmm1, %xmm1
	movl	$0, %ecx
	cvtsi2ssl	%ebx, %xmm1
	subss	%xmm1, %xmm5
	movss	LC79, %xmm1
	comiss	%xmm5, %xmm1
	setnb	%dl
	ucomiss	LC1, %xmm4
	setnp	%al
	cmovne	%ecx, %eax
	andb	%al, %dl
	movb	%dl, -40(%ebp)
	je	L1579
	movl	-36(%ebp), %eax
	movss	%xmm2, -64(%ebp)
	movl	%esi, %ecx
	movss	%xmm7, -44(%ebp)
	addl	%eax, %eax
	movl	%eax, -72(%ebp)
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %ebx
	leal	(%ebx,%ebx,2), %eax
	addl	%eax, %eax
	movl	%eax, (%esp)
	call	__ZN10ImDrawList11PrimReserveEii
	movl	-72(%ebp), %eax
	movl	-36(%ebp), %ecx
	subl	$8, %esp
	movl	44(%esi), %ebx
	movss	-44(%ebp), %xmm7
	leal	(%eax,%ecx), %edx
	movzbl	-40(%ebp), %eax
	movss	-64(%ebp), %xmm2
	movb	%al, -32(%ebp)
	jmp	L1580
	.p2align 4,,10
	.p2align 3
L1693:
	movss	-28(%ebp), %xmm6
	movss	-88(%ebp), %xmm0
	movss	LC74, %xmm3
	subss	%xmm6, %xmm0
	movaps	%xmm0, %xmm5
	mulss	%xmm3, %xmm5
	addss	%xmm5, %xmm6
	movss	%xmm5, -84(%ebp)
	movss	%xmm6, -40(%ebp)
	jmp	L1598
	.p2align 4,,10
	.p2align 3
L1697:
	movss	-80(%ebp), %xmm7
	movss	-88(%ebp), %xmm2
L1594:
	movl	-36(%ebp), %edi
	testl	%edi, %edi
	je	L1615
	movl	-56(%ebp), %edx
	sall	$5, %edi
	movl	52(%esi), %eax
	leal	(%edi,%edx), %ecx
	movl	-76(%ebp), %edi
	movl	%ecx, -28(%ebp)
	.p2align 4
	.p2align 3
L1623:
	movl	(%edx), %ecx
	movl	4(%edx), %ebx
	addl	$32, %edx
	movl	%ebx, 4(%eax)
	movl	-68(%ebp), %ebx
	movl	%ecx, (%eax)
	movl	52(%esi), %eax
	movss	%xmm7, 8(%eax)
	movss	%xmm2, 12(%eax)
	movl	52(%esi), %eax
	movl	%ebx, 16(%eax)
	movl	-24(%edx), %ecx
	movl	-20(%edx), %ebx
	movl	52(%esi), %eax
	movl	%ecx, 20(%eax)
	movl	%ebx, 24(%eax)
	movl	52(%esi), %eax
	movss	%xmm7, 28(%eax)
	movss	%xmm2, 32(%eax)
	movl	52(%esi), %eax
	movl	%edi, 36(%eax)
	movl	-16(%edx), %ecx
	movl	52(%esi), %eax
	movl	-12(%edx), %ebx
	movl	%ecx, 40(%eax)
	movl	%ebx, 44(%eax)
	movl	52(%esi), %eax
	movss	%xmm7, 48(%eax)
	movss	%xmm2, 52(%eax)
	movl	52(%esi), %eax
	movl	%edi, 56(%eax)
	movl	52(%esi), %eax
	movl	-8(%edx), %ecx
	movl	-4(%edx), %ebx
	movl	%ecx, 60(%eax)
	movl	%ebx, 64(%eax)
	movl	52(%esi), %eax
	movl	-68(%ebp), %ebx
	movss	%xmm7, 68(%eax)
	movss	%xmm2, 72(%eax)
	movl	52(%esi), %eax
	movl	%ebx, 76(%eax)
	movl	52(%esi), %eax
	addl	$80, %eax
	movl	%eax, 52(%esi)
	cmpl	%edx, -28(%ebp)
	jne	L1623
L1615:
	movzwl	-72(%ebp), %eax
	addl	%eax, 40(%esi)
L1698:
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
	ret	$16
L1694:
	.cfi_restore_state
	cmpb	$0, -32(%ebp)
	je	L1594
L1603:
	cmpb	$0, -40(%ebp)
	je	L1596
	.p2align 4
	.p2align 3
L1595:
	movl	-36(%ebp), %edi
	testl	%edi, %edi
	je	L1615
	movl	44(%esi), %edx
	movl	-92(%ebp), %eax
	sall	$4, %edi
	sall	$4, %eax
	addl	508(%edx), %eax
	movl	-56(%ebp), %edx
	movss	(%eax), %xmm3
	movss	4(%eax), %xmm2
	leal	(%edi,%edx), %ecx
	movss	8(%eax), %xmm1
	movss	12(%eax), %xmm0
	movl	-76(%ebp), %edi
	movl	52(%esi), %eax
	movl	%ecx, -28(%ebp)
	.p2align 4
	.p2align 3
L1616:
	movl	(%edx), %ecx
	movl	4(%edx), %ebx
	addl	$16, %edx
	movl	%ecx, (%eax)
	movl	%ebx, 4(%eax)
	movl	52(%esi), %eax
	movss	%xmm3, 8(%eax)
	movss	%xmm2, 12(%eax)
	movl	52(%esi), %eax
	movl	%edi, 16(%eax)
	movl	52(%esi), %eax
	movl	-8(%edx), %ecx
	movl	-4(%edx), %ebx
	movl	%ecx, 20(%eax)
	movl	%ebx, 24(%eax)
	movl	52(%esi), %eax
	movss	%xmm1, 28(%eax)
	movss	%xmm0, 32(%eax)
	movl	52(%esi), %eax
	movl	%edi, 36(%eax)
	movl	52(%esi), %eax
	addl	$40, %eax
	movl	%eax, 52(%esi)
	cmpl	-28(%ebp), %edx
	jne	L1616
	movzwl	-72(%ebp), %eax
	addl	%eax, 40(%esi)
	jmp	L1698
	.p2align 4,,10
	.p2align 3
L1695:
	movss	-40(%ebp), %xmm7
L1596:
	movl	-36(%ebp), %eax
	testl	%eax, %eax
	je	L1615
	movl	-36(%ebp), %ebx
	movl	-56(%ebp), %ecx
	movl	52(%esi), %eax
	movl	-52(%ebp), %edx
	sall	$4, %ebx
	movl	%ecx, -28(%ebp)
	movl	-68(%ebp), %edi
	addl	%ecx, %ebx
	movl	%ebx, -32(%ebp)
	.p2align 4
	.p2align 3
L1617:
	movl	(%edx), %ecx
	movl	4(%edx), %ebx
	addl	$8, %edx
	movl	%ebx, 4(%eax)
	movl	-76(%ebp), %ebx
	movl	%ecx, (%eax)
	movl	52(%esi), %eax
	movss	%xmm7, 8(%eax)
	movss	%xmm2, 12(%eax)
	movl	52(%esi), %eax
	movl	%ebx, 16(%eax)
	movl	-28(%ebp), %ebx
	movl	52(%esi), %eax
	movl	(%ebx), %ecx
	movl	4(%ebx), %ebx
	movl	%ecx, 20(%eax)
	movl	%ebx, 24(%eax)
	movl	52(%esi), %eax
	movl	-28(%ebp), %ebx
	movss	%xmm7, 28(%eax)
	movss	%xmm2, 32(%eax)
	movl	52(%esi), %eax
	movl	%edi, 36(%eax)
	movl	52(%esi), %eax
	movl	8(%ebx), %ecx
	movl	12(%ebx), %ebx
	movl	%ecx, 40(%eax)
	movl	%ebx, 44(%eax)
	movl	52(%esi), %eax
	movss	%xmm7, 48(%eax)
	movss	%xmm2, 52(%eax)
	movl	52(%esi), %eax
	movl	%edi, 56(%eax)
	movl	52(%esi), %eax
	addl	$16, -28(%ebp)
	movl	-28(%ebp), %ebx
	addl	$60, %eax
	movl	%eax, 52(%esi)
	cmpl	%ebx, -32(%ebp)
	jne	L1617
	movzwl	-72(%ebp), %eax
	addl	%eax, 40(%esi)
	jmp	L1698
	.cfi_endproc
LFE114:
	.align 2
	.p2align 4
	.globl	__ZN10ImDrawList7AddLineERK6ImVec2S2_jf.isra.0
	.def	__ZN10ImDrawList7AddLineERK6ImVec2S2_jf.isra.0;	.scl	2;	.type	32;	.endef
__ZN10ImDrawList7AddLineERK6ImVec2S2_jf.isra.0:
LFB117:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	cmpl	$16777215, 52(%esp)
	ja	L1735
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret	$8
	.p2align 4,,10
	.p2align 3
L1735:
	.cfi_restore_state
	movss	LC74, %xmm3
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -12
	movl	%ecx, %ebx
	movl	84(%ecx), %eax
	addss	%xmm3, %xmm0
	addss	%xmm3, %xmm1
	movss	%xmm0, 28(%esp)
	movss	%xmm1, 32(%esp)
	cmpl	88(%ecx), %eax
	je	L1736
L1701:
	movl	92(%ebx), %ecx
L1704:
	movl	28(%esp), %edx
	movl	%edx, (%ecx,%eax,8)
	movl	32(%esp), %edx
	movl	%edx, 4(%ecx,%eax,8)
	movl	84(%ebx), %ecx
	movl	48(%esp), %edx
	leal	1(%ecx), %eax
	movl	%eax, 84(%ebx)
	movss	4(%edx), %xmm0
	addss	%xmm3, %xmm0
	addss	(%edx), %xmm3
	movl	88(%ebx), %edx
	movss	%xmm3, 28(%esp)
	movss	%xmm0, 32(%esp)
	cmpl	%eax, %edx
	je	L1737
L1708:
	movl	92(%ebx), %ecx
L1711:
	movl	28(%esp), %edx
	movl	%edx, (%ecx,%eax,8)
	movl	32(%esp), %edx
	movl	%edx, 4(%ecx,%eax,8)
	movl	84(%ebx), %eax
	addl	$1, %eax
	movl	%eax, 84(%ebx)
	cmpl	$1, %eax
	jle	L1715
	movl	52(%esp), %ecx
	movl	$0, 12(%esp)
	movaps	%xmm2, %xmm0
	movl	%eax, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	92(%ebx), %eax
	movl	%ebx, %ecx
	movl	%eax, (%esp)
	call	__ZN10ImDrawList11AddPolylineEPK6ImVec2ijif.part.0
	.cfi_def_cfa_offset 32
	subl	$16, %esp
	.cfi_def_cfa_offset 48
L1715:
	movl	$0, 84(%ebx)
	movl	36(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	addl	$44, %esp
	.cfi_def_cfa_offset 4
	ret	$8
	.p2align 4,,10
	.p2align 3
L1736:
	.cfi_restore_state
	movl	%esi, 40(%esp)
	leal	1(%eax), %ecx
	testl	%eax, %eax
	.cfi_offset 6, -8
	jne	L1702
	movl	$8, %edx
	cmpl	%edx, %ecx
	cmovge	%ecx, %edx
	movl	%edx, %esi
L1703:
	movl	_GImGui, %eax
	leal	0(,%esi,8), %ecx
	testl	%eax, %eax
	je	L1705
	addl	$1, 188(%eax)
L1705:
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	movss	%xmm2, 16(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	92(%ebx), %edx
	movss	16(%esp), %xmm2
	movss	LC74, %xmm3
	movl	%eax, %ecx
	testl	%edx, %edx
	je	L1706
	movl	84(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	sall	$3, %eax
	movl	%edx, 20(%esp)
	movl	%eax, 8(%esp)
	movl	%ecx, 16(%esp)
	movss	%xmm2, 24(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	16(%esp), %ecx
	movl	20(%esp), %edx
	movss	24(%esp), %xmm2
	testl	%eax, %eax
	je	L1707
	subl	$1, 188(%eax)
L1707:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 16(%esp)
	movss	%xmm2, 20(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movss	20(%esp), %xmm2
	movl	16(%esp), %ecx
	movss	LC74, %xmm3
L1706:
	movl	%ecx, 92(%ebx)
	movl	84(%ebx), %eax
	movl	%esi, 88(%ebx)
	movl	40(%esp), %esi
	.cfi_restore 6
	jmp	L1704
	.p2align 4,,10
	.p2align 3
L1737:
	movl	%esi, 40(%esp)
	.cfi_offset 6, -8
	addl	$2, %ecx
	testl	%edx, %edx
	jne	L1709
	movl	$8, %edx
	cmpl	%edx, %ecx
	cmovge	%ecx, %edx
	movl	%edx, %esi
L1710:
	movl	_GImGui, %eax
	leal	0(,%esi,8), %ecx
	testl	%eax, %eax
	je	L1712
	addl	$1, 188(%eax)
L1712:
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	movss	%xmm2, 16(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	92(%ebx), %edx
	movss	16(%esp), %xmm2
	movl	%eax, %ecx
	testl	%edx, %edx
	je	L1713
	movl	84(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	sall	$3, %eax
	movl	%edx, 20(%esp)
	movl	%eax, 8(%esp)
	movl	%ecx, 16(%esp)
	movss	%xmm2, 24(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	16(%esp), %ecx
	movl	20(%esp), %edx
	movss	24(%esp), %xmm2
	testl	%eax, %eax
	je	L1714
	subl	$1, 188(%eax)
L1714:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 16(%esp)
	movss	%xmm2, 20(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movss	20(%esp), %xmm2
	movl	16(%esp), %ecx
L1713:
	movl	%ecx, 92(%ebx)
	movl	84(%ebx), %eax
	movl	%esi, 88(%ebx)
	movl	40(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L1711
	.p2align 4,,10
	.p2align 3
L1709:
	.cfi_restore_state
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	cmpl	%ecx, %edx
	cmovge	%edx, %ecx
	movl	%ecx, %esi
	cmpl	%ecx, %eax
	jl	L1710
	movl	40(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L1708
	.p2align 4,,10
	.p2align 3
L1702:
	.cfi_restore_state
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	cmpl	%ecx, %edx
	cmovge	%edx, %ecx
	movl	%ecx, %esi
	cmpl	%ecx, %eax
	jl	L1703
	movl	40(%esp), %esi
	.cfi_restore 6
	jmp	L1701
	.cfi_endproc
LFE117:
	.align 2
	.p2align 4
	.globl	__ZN10ImDrawList7AddRectERK6ImVec2S2_jfif.part.0.constprop.0.isra.0
	.def	__ZN10ImDrawList7AddRectERK6ImVec2S2_jfif.part.0.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
__ZN10ImDrawList7AddRectERK6ImVec2S2_jfif.part.0.constprop.0.isra.0:
LFB124:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%ecx, %ebx
	subl	$32, %esp
	.cfi_def_cfa_offset 40
	movss	LC74, %xmm3
	movl	40(%esp), %eax
	movss	4(%eax), %xmm4
	movss	(%eax), %xmm5
	addss	%xmm3, %xmm4
	addss	%xmm3, %xmm5
	testb	$1, 36(%ecx)
	jne	L1743
	movss	LC83, %xmm3
L1743:
	leal	24(%esp), %eax
	subss	%xmm3, %xmm0
	movl	%ebx, %ecx
	movss	%xmm5, 16(%esp)
	movl	%eax, 4(%esp)
	leal	16(%esp), %eax
	subss	%xmm3, %xmm1
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	movss	%xmm0, 24(%esp)
	movaps	%xmm2, %xmm0
	movss	%xmm1, 28(%esp)
	movss	%xmm4, 20(%esp)
	call	__ZN10ImDrawList8PathRectERK6ImVec2S2_fi
	.cfi_def_cfa_offset 28
	movl	84(%ebx), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 40
	cmpl	$1, %eax
	jle	L1741
	cmpl	$16777215, 44(%esp)
	jbe	L1741
	movl	44(%esp), %edx
	movss	48(%esp), %xmm0
	movl	%eax, 4(%esp)
	movl	%ebx, %ecx
	movl	$1, 12(%esp)
	movl	%edx, 8(%esp)
	movl	92(%ebx), %eax
	movl	%eax, (%esp)
	call	__ZN10ImDrawList11AddPolylineEPK6ImVec2ijif.part.0
	.cfi_def_cfa_offset 24
	subl	$16, %esp
	.cfi_def_cfa_offset 40
L1741:
	movl	$0, 84(%ebx)
	addl	$32, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret	$12
	.cfi_endproc
LFE124:
	.align 2
	.p2align 4
	.globl	__ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij.part.0
	.def	__ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij.part.0;	.scl	2;	.type	32;	.endef
__ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij.part.0:
LFB125:
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
	subl	$68, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	8(%edi), %eax
	movl	4(%edi), %esi
	movl	(%edi), %ebx
	movl	%ecx, %edi
	movl	%eax, -32(%ebp)
	movl	44(%ecx), %eax
	movss	(%eax), %xmm3
	movss	4(%eax), %xmm4
	leal	-6(%esi,%esi,2), %eax
	testb	$4, 36(%ecx)
	je	L1745
	movss	140(%ecx), %xmm7
	leal	(%esi,%esi), %edx
	movss	%xmm4, -40(%ebp)
	movl	%edx, -60(%ebp)
	movss	%xmm3, -28(%ebp)
	movss	%xmm7, -48(%ebp)
	movl	%edx, 4(%esp)
	addl	%esi, %edx
	leal	(%eax,%edx,2), %eax
	movl	%eax, (%esp)
	call	__ZN10ImDrawList11PrimReserveEii
	movl	40(%edi), %edx
	movss	-28(%ebp), %xmm3
	subl	$8, %esp
	cmpl	$2, %esi
	movss	-40(%ebp), %xmm4
	movl	%edx, -36(%ebp)
	jle	L1746
	movzwl	-36(%ebp), %ecx
	movl	56(%edi), %eax
	movl	%ebx, -28(%ebp)
	movl	-36(%ebp), %ebx
	leal	2(%ecx), %edx
	movl	$2, %ecx
	.p2align 6
	.p2align 4
	.p2align 3
L1747:
	movw	%bx, (%eax)
	movl	56(%edi), %eax
	addl	$1, %ecx
	movw	%dx, 2(%eax)
	movl	56(%edi), %eax
	addl	$2, %edx
	movw	%dx, 4(%eax)
	movl	56(%edi), %eax
	addl	$6, %eax
	movl	%eax, 56(%edi)
	cmpl	%ecx, %esi
	jne	L1747
	movl	44(%edi), %edx
	movl	-28(%ebp), %ebx
	cmpl	48(%edx), %esi
	jle	L1748
L1749:
	movl	52(%edx), %eax
	testl	%eax, %eax
	je	L1751
	movl	_GImGui, %ecx
	testl	%ecx, %ecx
	je	L1752
	subl	$1, 188(%ecx)
L1752:
	movl	%edx, -44(%ebp)
	movss	%xmm4, -40(%ebp)
	movss	%xmm3, -28(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-44(%ebp), %edx
	movss	-40(%ebp), %xmm4
	movss	-28(%ebp), %xmm3
L1751:
	movl	_GImGui, %eax
	leal	0(,%esi,8), %ecx
	testl	%eax, %eax
	je	L1753
	addl	$1, 188(%eax)
L1753:
	movl	%edx, -44(%ebp)
	movss	%xmm4, -40(%ebp)
	movss	%xmm3, -28(%ebp)
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-44(%ebp), %edx
	movss	-40(%ebp), %xmm4
	movss	-28(%ebp), %xmm3
	movl	%eax, 52(%edx)
	movl	%esi, 48(%edx)
	movl	44(%edi), %edx
L1750:
	testl	%esi, %esi
	je	L1754
L1748:
	movl	-32(%ebp), %eax
	movl	52(%edx), %edx
	movl	%edi, -52(%ebp)
	xorl	%ecx, %ecx
	xorps	%xmm5, %xmm5
	andl	$16777215, %eax
	movl	%edx, -44(%ebp)
	movl	%eax, -40(%ebp)
	leal	-1(%esi), %eax
	movl	%eax, -28(%ebp)
	jmp	L1757
	.p2align 4,,10
	.p2align 3
L1765:
	movl	%edi, %ecx
L1757:
	sall	$3, %eax
	movss	(%ebx,%ecx,8), %xmm0
	movss	4(%ebx,%ecx,8), %xmm1
	leal	(%ebx,%eax), %edi
	subss	(%edi), %xmm0
	subss	4(%edi), %xmm1
	movaps	%xmm0, %xmm6
	movaps	%xmm1, %xmm2
	mulss	%xmm0, %xmm6
	mulss	%xmm1, %xmm2
	addss	%xmm2, %xmm6
	comiss	%xmm5, %xmm6
	jbe	L1755
	xorps	%xmm2, %xmm2
	movss	%xmm6, %xmm2
	rsqrtss	%xmm2, %xmm2
	mulss	%xmm2, %xmm0
	mulss	%xmm2, %xmm1
L1755:
	xorps	LC80, %xmm0
	leal	1(%ecx), %edi
	movss	%xmm1, (%edx,%eax)
	movss	%xmm0, 4(%edx,%eax)
	movl	%ecx, %eax
	cmpl	%edi, %esi
	jne	L1765
	movss	-48(%ebp), %xmm5
	movl	-36(%ebp), %eax
	movl	%ecx, -56(%ebp)
	movss	LC74, %xmm7
	movl	-52(%ebp), %edi
	movss	%xmm3, -52(%ebp)
	leal	1(%eax), %esi
	movl	-28(%ebp), %edx
	movl	%ebx, -28(%ebp)
	mulss	%xmm7, %xmm5
	movw	%si, -48(%ebp)
	movl	%eax, %esi
	xorl	%eax, %eax
	movaps	%xmm5, %xmm6
	jmp	L1760
	.p2align 4,,10
	.p2align 3
L1766:
	addl	$1, %eax
L1760:
	movl	-44(%ebp), %ebx
	leal	(%ebx,%edx,8), %ecx
	movss	(%ecx), %xmm1
	movss	4(%ecx), %xmm0
	addss	(%ebx,%eax,8), %xmm1
	addss	4(%ebx,%eax,8), %xmm0
	mulss	%xmm7, %xmm1
	mulss	%xmm7, %xmm0
	movaps	%xmm1, %xmm2
	mulss	%xmm1, %xmm2
	movaps	%xmm0, %xmm5
	mulss	%xmm0, %xmm5
	addss	%xmm5, %xmm2
	comiss	LC81, %xmm2
	jbe	L1758
	movss	LC1, %xmm5
	movss	LC82, %xmm3
	divss	%xmm2, %xmm5
	movss	LC82, %xmm2
	cmpltss	%xmm5, %xmm2
	andps	%xmm2, %xmm3
	andnps	%xmm5, %xmm2
	orps	%xmm3, %xmm2
	mulss	%xmm2, %xmm1
	mulss	%xmm2, %xmm0
L1758:
	mulss	%xmm6, %xmm1
	movl	-28(%ebp), %ebx
	movl	52(%edi), %ecx
	addl	%edx, %edx
	mulss	%xmm6, %xmm0
	movss	-52(%ebp), %xmm3
	movss	(%ebx,%eax,8), %xmm2
	subss	%xmm1, %xmm2
	movss	%xmm2, (%ecx)
	movss	4(%ebx,%eax,8), %xmm2
	movl	52(%edi), %ecx
	movl	-32(%ebp), %ebx
	subss	%xmm0, %xmm2
	movss	%xmm2, 4(%ecx)
	movl	52(%edi), %ecx
	movss	%xmm3, 8(%ecx)
	movss	%xmm4, 12(%ecx)
	movl	52(%edi), %ecx
	movl	%ebx, 16(%ecx)
	movl	-28(%ebp), %ebx
	movl	52(%edi), %ecx
	addss	(%ebx,%eax,8), %xmm1
	movss	%xmm1, 20(%ecx)
	addss	4(%ebx,%eax,8), %xmm0
	movl	52(%edi), %ecx
	movl	-40(%ebp), %ebx
	movss	%xmm0, 24(%ecx)
	movl	52(%edi), %ecx
	movss	%xmm3, 28(%ecx)
	movss	%xmm4, 32(%ecx)
	movl	52(%edi), %ecx
	movl	%ebx, 36(%ecx)
	movzwl	-36(%ebp), %ebx
	movl	56(%edi), %ecx
	addl	$40, 52(%edi)
	movw	%si, (%ecx)
	leal	(%edx,%ebx), %ecx
	movl	56(%edi), %ebx
	addw	-48(%ebp), %dx
	movw	%cx, 2(%ebx)
	movl	56(%edi), %ecx
	movw	%dx, 4(%ecx)
	movl	56(%edi), %ecx
	movw	%dx, 6(%ecx)
	movl	56(%edi), %edx
	leal	1(%esi), %ecx
	movw	%cx, 8(%edx)
	movl	56(%edi), %edx
	movw	%si, 10(%edx)
	addl	$2, %esi
	movl	%eax, %edx
	addl	$12, 56(%edi)
	cmpl	%eax, -56(%ebp)
	jne	L1766
L1754:
	movzwl	-60(%ebp), %esi
	addl	40(%edi), %esi
	jmp	L1761
	.p2align 4,,10
	.p2align 3
L1745:
	movss	%xmm4, -36(%ebp)
	movss	%xmm3, -28(%ebp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	__ZN10ImDrawList11PrimReserveEii
	subl	$8, %esp
	testl	%esi, %esi
	je	L1762
	leal	(%ebx,%esi,8), %edx
	movss	-28(%ebp), %xmm3
	movl	52(%edi), %eax
	movl	%edx, -28(%ebp)
	movss	-36(%ebp), %xmm4
	.p2align 6
	.p2align 4
	.p2align 3
L1763:
	movl	(%ebx), %edx
	movl	4(%ebx), %ecx
	addl	$8, %ebx
	movl	%edx, (%eax)
	movl	-32(%ebp), %edx
	movl	%ecx, 4(%eax)
	movl	52(%edi), %eax
	movss	%xmm3, 8(%eax)
	movss	%xmm4, 12(%eax)
	movl	52(%edi), %eax
	movl	%edx, 16(%eax)
	movl	52(%edi), %eax
	addl	$20, %eax
	movl	%eax, 52(%edi)
	cmpl	%ebx, -28(%ebp)
	jne	L1763
	cmpl	$2, %esi
	jle	L1762
	movl	56(%edi), %edx
	movl	$2, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L1764:
	movl	40(%edi), %ecx
	movw	%cx, (%edx)
	movl	40(%edi), %edx
	movl	56(%edi), %ecx
	leal	-1(%edx,%eax), %edx
	movw	%dx, 2(%ecx)
	movzwl	40(%edi), %ecx
	movl	56(%edi), %edx
	addl	%eax, %ecx
	addl	$1, %eax
	movw	%cx, 4(%edx)
	movl	56(%edi), %ebx
	leal	6(%ebx), %edx
	movl	%edx, 56(%edi)
	cmpl	%eax, %esi
	jne	L1764
L1762:
	movzwl	%si, %esi
	addl	40(%edi), %esi
L1761:
	movl	%esi, 40(%edi)
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
	ret	$12
	.p2align 4,,10
	.p2align 3
L1746:
	.cfi_restore_state
	movl	44(%edi), %edx
	cmpl	48(%edx), %esi
	jg	L1749
	jmp	L1750
	.cfi_endproc
LFE125:
	.align 2
	.p2align 4
	.globl	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	.def	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi;	.scl	2;	.type	32;	.endef
__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi:
LFB126:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%esi, 16(%esp)
	.cfi_offset 6, -8
	movl	32(%esp), %esi
	cmpl	$16777215, %esi
	jbe	L1788
	movss	LC74, %xmm1
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -12
	movl	%ecx, %ebx
	comiss	%xmm0, %xmm1
	ja	L1790
	movl	36(%esp), %eax
	andl	$496, %eax
	cmpl	$256, %eax
	je	L1790
	movl	36(%esp), %eax
	movl	%eax, 8(%esp)
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	24(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN10ImDrawList8PathRectERK6ImVec2S2_fi
	.cfi_def_cfa_offset 12
	movl	84(%ebx), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 24
	cmpl	$2, %eax
	jle	L1792
	movl	%esi, 8(%esp)
	movl	%ebx, %ecx
	movl	%eax, 4(%esp)
	movl	92(%ebx), %eax
	movl	%eax, (%esp)
	call	__ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij.part.0
	.cfi_def_cfa_offset 12
	subl	$12, %esp
	.cfi_def_cfa_offset 24
L1792:
	movl	$0, 84(%ebx)
	movl	12(%esp), %ebx
	.cfi_restore 3
L1788:
	movl	16(%esp), %esi
	addl	$20, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret	$16
	.p2align 4,,10
	.p2align 3
L1790:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	$4, 4(%esp)
	movl	%ebx, %ecx
	movl	$6, (%esp)
	call	__ZN10ImDrawList11PrimReserveEii
	.cfi_def_cfa_offset 16
	movl	56(%ebx), %edx
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	24(%esp), %eax
	movss	4(%eax), %xmm4
	movl	28(%esp), %eax
	movss	(%eax), %xmm5
	movss	4(%eax), %xmm2
	movl	24(%esp), %eax
	movss	(%eax), %xmm3
	movl	44(%ebx), %eax
	movss	(%eax), %xmm1
	movss	4(%eax), %xmm0
	movl	40(%ebx), %eax
	movw	%ax, (%edx)
	movl	56(%ebx), %edx
	leal	1(%eax), %ecx
	movw	%cx, 2(%edx)
	movl	56(%ebx), %ecx
	leal	2(%eax), %edx
	movw	%dx, 4(%ecx)
	movl	56(%ebx), %ecx
	movw	%ax, 6(%ecx)
	movl	56(%ebx), %ecx
	addl	$3, %eax
	movw	%dx, 8(%ecx)
	movl	56(%ebx), %edx
	movw	%ax, 10(%edx)
	movl	24(%esp), %eax
	movl	52(%ebx), %ecx
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%edx, 4(%ecx)
	movl	%eax, (%ecx)
	movl	52(%ebx), %eax
	movss	%xmm1, 8(%eax)
	movss	%xmm0, 12(%eax)
	movl	52(%ebx), %eax
	movl	%esi, 16(%eax)
	movl	52(%ebx), %eax
	movss	%xmm5, 20(%eax)
	movss	%xmm4, 24(%eax)
	movl	52(%ebx), %eax
	movss	%xmm1, 28(%eax)
	movss	%xmm0, 32(%eax)
	movl	52(%ebx), %eax
	movl	%esi, 36(%eax)
	movl	28(%esp), %eax
	movl	52(%ebx), %ecx
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%edx, 44(%ecx)
	movl	%eax, 40(%ecx)
	movl	52(%ebx), %eax
	movss	%xmm1, 48(%eax)
	movss	%xmm0, 52(%eax)
	movl	52(%ebx), %eax
	movl	%esi, 56(%eax)
	movl	52(%ebx), %eax
	movss	%xmm3, 60(%eax)
	movss	%xmm2, 64(%eax)
	movl	52(%ebx), %eax
	movss	%xmm1, 68(%eax)
	movss	%xmm0, 72(%eax)
	movl	52(%ebx), %eax
	movl	%esi, 76(%eax)
	addl	$80, 52(%ebx)
	addl	$4, 40(%ebx)
	addl	$12, 56(%ebx)
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	16(%esp), %esi
	addl	$20, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret	$16
	.cfi_endproc
LFE126:
	.p2align 4
	.globl	__ZN5ImGuiL34RenderDimmedBackgroundBehindWindowEP11ImGuiWindowj.part.0.lto_priv.0
	.def	__ZN5ImGuiL34RenderDimmedBackgroundBehindWindowEP11ImGuiWindowj.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZN5ImGuiL34RenderDimmedBackgroundBehindWindowEP11ImGuiWindowj.part.0.lto_priv.0:
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
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	movl	%eax, %esi
	pushl	%ebx
	subl	$156, %esp
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	48(%eax), %eax
	movl	%edx, -100(%ebp)
	movss	8(%eax), %xmm0
	movss	16(%eax), %xmm2
	movss	12(%eax), %xmm1
	movss	20(%eax), %xmm3
	addss	%xmm0, %xmm2
	movl	840(%esi), %eax
	movaps	%xmm0, %xmm4
	addss	%xmm1, %xmm3
	unpcklps	%xmm1, %xmm4
	movl	676(%eax), %ebx
	movaps	%xmm2, %xmm5
	unpcklps	%xmm3, %xmm5
	movlhps	%xmm5, %xmm4
	movups	%xmm4, -88(%ebp)
	movl	(%ebx), %edi
	testl	%edi, %edi
	je	L1904
L1795:
	movss	LC1, %xmm4
	movl	$0, 4(%esp)
	movl	%ebx, %ecx
	addss	%xmm4, %xmm3
	subss	%xmm4, %xmm0
	addss	%xmm4, %xmm2
	subss	%xmm4, %xmm1
	movss	%xmm3, (%esp)
	call	__ZN10ImDrawList12PushClipRectERK6ImVec2S2_b.isra.0
	leal	-80(%ebp), %edx
	movl	%ebx, %ecx
	xorps	%xmm0, %xmm0
	subl	$8, %esp
	movl	$0, 12(%esp)
	movl	-100(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movl	(%ebx), %eax
	movl	8(%ebx), %edx
	subl	$16, %esp
	movl	%eax, -108(%ebp)
	subl	$1, %eax
	leal	(%eax,%eax,4), %ecx
	movl	%eax, -104(%ebp)
	leal	(%edx,%ecx,8), %ecx
	movl	(%ecx), %edi
	movl	%edi, -64(%ebp)
	movl	4(%ecx), %edi
	movl	%edi, -60(%ebp)
	movl	8(%ecx), %edi
	movl	%edi, -56(%ebp)
	movl	12(%ecx), %edi
	movl	%edi, -52(%ebp)
	movl	16(%ecx), %edi
	movl	%edi, -48(%ebp)
	movl	20(%ecx), %edi
	movl	%edi, -44(%ebp)
	movl	24(%ecx), %edi
	movl	%edi, -40(%ebp)
	movl	28(%ecx), %edi
	movl	%edi, -36(%ebp)
	movl	32(%ecx), %edi
	movl	%edi, -32(%ebp)
	movl	36(%ecx), %ecx
	movl	%ecx, -28(%ebp)
	movl	4(%ebx), %ecx
	movl	%eax, (%ebx)
	jne	L1796
	testl	%ecx, %ecx
	je	L1905
L1797:
	movl	-104(%ebp), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	movl	-64(%ebp), %edx
	movl	%edx, (%eax)
	movl	-60(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	-56(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	-52(%ebp), %edx
	movl	%edx, 12(%eax)
	movl	-48(%ebp), %edx
	movl	%edx, 16(%eax)
	movl	-44(%ebp), %edx
	movl	%edx, 20(%eax)
	movl	-40(%ebp), %edx
	movl	%edx, 24(%eax)
	movl	-36(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	-32(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	-28(%ebp), %edx
	movl	%edx, 36(%eax)
	movl	(%ebx), %eax
	addl	$1, %eax
L1801:
	movl	%eax, (%ebx)
	movl	%ebx, %ecx
	call	__ZN10ImDrawList11PopClipRectEv
	movl	%ebx, %ecx
	call	__ZN10ImDrawList10AddDrawCmdEv
	movl	832(%esi), %eax
	testb	$1, 909(%eax)
	je	L1794
	movl	840(%esi), %ebx
	jmp	L1812
	.p2align 4,,10
	.p2align 3
L1906:
	cmpb	$0, 230(%edx)
	jne	L1811
	movl	%edx, %ebx
L1812:
	movl	440(%ebx), %eax
	subl	$1, %eax
	js	L1810
	movl	448(%ebx), %ecx
L1813:
	movl	(%ecx,%eax,4), %edx
	cmpb	$0, 223(%edx)
	jne	L1906
L1811:
	subl	$1, %eax
	jnb	L1813
L1810:
	movl	676(%ebx), %ebx
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L1907
L1814:
	movl	$0, 4(%esp)
	movss	-76(%ebp), %xmm0
	movl	%ebx, %ecx
	movss	%xmm0, (%esp)
	movss	-80(%ebp), %xmm2
	movss	-84(%ebp), %xmm1
	movss	-88(%ebp), %xmm0
	call	__ZN10ImDrawList12PushClipRectERK6ImVec2S2_b.isra.0
	movl	832(%esi), %eax
	subl	$8, %esp
	movss	68(%eax), %xmm2
	movss	72(%eax), %xmm1
	movss	80(%eax), %xmm5
	movss	76(%eax), %xmm6
	movl	840(%esi), %eax
	addss	%xmm2, %xmm6
	addss	%xmm1, %xmm5
	movss	68(%eax), %xmm4
	movss	76(%eax), %xmm7
	movss	72(%eax), %xmm3
	movss	80(%eax), %xmm0
	addss	%xmm4, %xmm7
	comiss	%xmm4, %xmm2
	movss	%xmm5, -104(%ebp)
	addss	%xmm3, %xmm0
	movss	%xmm6, -108(%ebp)
	seta	-115(%ebp)
	comiss	%xmm6, %xmm7
	movss	%xmm0, -112(%ebp)
	movss	%xmm7, -120(%ebp)
	seta	-114(%ebp)
	comiss	%xmm3, %xmm1
	seta	-124(%ebp)
	comiss	%xmm5, %xmm0
	seta	-113(%ebp)
	comiss	%xmm4, %xmm2
	jbe	L1908
	comiss	%xmm3, %xmm1
	movl	$272, %eax
	movl	$256, %edx
	movl	%ebx, %ecx
	movss	-104(%ebp), %xmm6
	movss	%xmm2, -96(%ebp)
	leal	-96(%ebp), %edi
	leal	-64(%ebp), %esi
	movss	%xmm3, -140(%ebp)
	xorps	%xmm0, %xmm0
	cmovbe	%eax, %edx
	movzbl	-113(%ebp), %eax
	movss	%xmm2, -136(%ebp)
	movss	%xmm4, -64(%ebp)
	xorl	$1, %eax
	movss	%xmm4, -132(%ebp)
	movzbl	%al, %eax
	movss	%xmm1, -60(%ebp)
	sall	$6, %eax
	movss	%xmm1, -128(%ebp)
	orl	%edx, %eax
	movss	%xmm6, -92(%ebp)
	movl	%eax, 12(%esp)
	movl	-100(%ebp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	call	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movss	-120(%ebp), %xmm7
	movss	-128(%ebp), %xmm1
	subl	$16, %esp
	comiss	-108(%ebp), %xmm7
	movss	-132(%ebp), %xmm4
	movss	-136(%ebp), %xmm2
	movss	-140(%ebp), %xmm3
	ja	L1816
	comiss	%xmm3, %xmm1
	ja	L1821
	movss	-112(%ebp), %xmm7
	comiss	-104(%ebp), %xmm7
	jbe	L1823
	movl	$384, %eax
	jmp	L1822
	.p2align 4,,10
	.p2align 3
L1908:
	comiss	%xmm6, %xmm7
	jbe	L1898
	leal	-96(%ebp), %edi
	leal	-64(%ebp), %esi
L1816:
	movzbl	-113(%ebp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	sall	$7, %eax
	comiss	%xmm3, %xmm1
	jbe	L1909
	movss	-120(%ebp), %xmm7
	movss	-104(%ebp), %xmm6
	orb	$1, %ah
	xorps	%xmm0, %xmm0
	movss	%xmm3, -136(%ebp)
	movl	%ebx, %ecx
	movss	%xmm7, -96(%ebp)
	movss	-108(%ebp), %xmm7
	movss	%xmm2, -132(%ebp)
	movss	%xmm1, -60(%ebp)
	movss	%xmm1, -128(%ebp)
	movss	%xmm4, -140(%ebp)
	movss	%xmm6, -92(%ebp)
	movss	%xmm7, -64(%ebp)
	movl	%eax, 12(%esp)
	movl	-100(%ebp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	call	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movss	-132(%ebp), %xmm2
	movss	-128(%ebp), %xmm1
	subl	$16, %esp
	comiss	-140(%ebp), %xmm2
	movss	-136(%ebp), %xmm3
	jbe	L1910
	movss	-108(%ebp), %xmm6
	movss	%xmm1, -92(%ebp)
	movss	%xmm1, -136(%ebp)
	movss	%xmm6, -96(%ebp)
	movss	%xmm2, -64(%ebp)
	movss	%xmm2, -132(%ebp)
	movss	%xmm3, -60(%ebp)
	movss	%xmm3, -128(%ebp)
	movl	$256, 12(%esp)
L1903:
	movl	-100(%ebp), %eax
	movl	%edi, 4(%esp)
	xorps	%xmm0, %xmm0
	movl	%ebx, %ecx
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movss	-112(%ebp), %xmm6
	movss	-128(%ebp), %xmm3
	movl	$256, %edx
	subl	$16, %esp
	comiss	-104(%ebp), %xmm6
	movss	-132(%ebp), %xmm2
	movss	-136(%ebp), %xmm1
	movss	-140(%ebp), %xmm4
	ja	L1826
L1835:
	movss	%xmm2, -96(%ebp)
	xorps	%xmm0, %xmm0
	movl	%ebx, %ecx
	movss	%xmm2, -140(%ebp)
	movss	%xmm1, -92(%ebp)
	movss	%xmm1, -136(%ebp)
	movss	%xmm4, -64(%ebp)
	movss	%xmm4, -132(%ebp)
	movss	%xmm3, -60(%ebp)
	movss	%xmm3, -128(%ebp)
	movl	$16, 12(%esp)
	movl	-100(%ebp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	call	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movss	-140(%ebp), %xmm2
	movss	-128(%ebp), %xmm3
	movss	-136(%ebp), %xmm1
	movss	-132(%ebp), %xmm4
	subl	$16, %esp
L1827:
	cmpb	$0, -114(%ebp)
	je	L1828
	cmpb	$0, -124(%ebp)
	je	L1828
L1834:
	movss	-120(%ebp), %xmm7
	movss	%xmm4, -128(%ebp)
	xorps	%xmm0, %xmm0
	movl	%ebx, %ecx
	movss	-108(%ebp), %xmm6
	movss	%xmm2, -124(%ebp)
	movss	%xmm7, -96(%ebp)
	movss	%xmm1, -92(%ebp)
	movss	%xmm6, -64(%ebp)
	movss	%xmm3, -60(%ebp)
	movl	$32, 12(%esp)
	movl	-100(%ebp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	call	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movss	-128(%ebp), %xmm4
	movss	-124(%ebp), %xmm2
	subl	$16, %esp
L1828:
	cmpb	$0, -115(%ebp)
	je	L1829
	cmpb	$0, -113(%ebp)
	je	L1829
	movss	-112(%ebp), %xmm7
	movss	-104(%ebp), %xmm6
	xorps	%xmm0, %xmm0
	movl	%ebx, %ecx
	movss	%xmm2, -96(%ebp)
	movss	%xmm7, -92(%ebp)
	movss	%xmm4, -64(%ebp)
	movss	%xmm6, -60(%ebp)
	movl	$64, 12(%esp)
	movl	-100(%ebp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	call	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	subl	$16, %esp
L1829:
	cmpb	$0, -114(%ebp)
	je	L1823
	cmpb	$0, -113(%ebp)
	je	L1823
	movss	-120(%ebp), %xmm7
	movss	-112(%ebp), %xmm6
	xorps	%xmm0, %xmm0
	movl	%ebx, %ecx
	movss	%xmm7, -96(%ebp)
	movss	-108(%ebp), %xmm7
	movss	%xmm6, -92(%ebp)
	movss	-104(%ebp), %xmm6
	movss	%xmm7, -64(%ebp)
	movss	%xmm6, -60(%ebp)
	movl	$128, 12(%esp)
	movl	-100(%ebp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	call	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	subl	$16, %esp
L1823:
	movl	%ebx, %ecx
	call	__ZN10ImDrawList11PopClipRectEv
L1794:
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
L1796:
	.cfi_restore_state
	cmpl	%ecx, %eax
	je	L1911
L1803:
	movl	-104(%ebp), %ecx
	testl	%ecx, %ecx
	jg	L1912
L1808:
	movl	-64(%ebp), %eax
	movl	%eax, (%edx)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%edx)
	movl	-56(%ebp), %eax
	movl	%eax, 8(%edx)
	movl	-52(%ebp), %eax
	movl	%eax, 12(%edx)
	movl	-48(%ebp), %eax
	movl	%eax, 16(%edx)
	movl	-44(%ebp), %eax
	movl	%eax, 20(%edx)
	movl	-40(%ebp), %eax
	movl	%eax, 24(%edx)
	movl	-36(%ebp), %eax
	movl	%eax, 28(%edx)
	movl	-32(%ebp), %eax
	movl	%eax, 32(%edx)
	movl	-28(%ebp), %eax
	movl	%eax, 36(%edx)
	movl	(%ebx), %eax
	addl	$1, %eax
	jmp	L1801
	.p2align 4,,10
	.p2align 3
L1904:
	movl	%ebx, %ecx
	call	__ZN10ImDrawList10AddDrawCmdEv
	movss	-76(%ebp), %xmm3
	movss	-80(%ebp), %xmm2
	movss	-84(%ebp), %xmm1
	movss	-88(%ebp), %xmm0
	jmp	L1795
	.p2align 4,,10
	.p2align 3
L1911:
	movl	%eax, %ecx
	movl	-108(%ebp), %edi
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	addl	%eax, %ecx
	cmpl	%edi, %ecx
	cmovl	%edi, %ecx
	cmpl	%eax, %ecx
	jle	L1803
	movl	_GImGui, %edx
	leal	(%ecx,%ecx,4), %eax
	sall	$3, %eax
	testl	%edx, %edx
	je	L1805
	addl	$1, 188(%edx)
L1805:
	movl	%ecx, -104(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-104(%ebp), %ecx
	movl	%eax, %edx
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	L1806
	movl	(%ebx), %edi
	movl	%ecx, -108(%ebp)
	movl	%edx, (%esp)
	leal	(%edi,%edi,4), %edi
	movl	%eax, 4(%esp)
	sall	$3, %edi
	movl	%edi, 8(%esp)
	movl	%edx, -104(%ebp)
	call	_memcpy
	movl	8(%ebx), %eax
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %ecx
	testl	%eax, %eax
	je	L1807
	movl	_GImGui, %edi
	testl	%edi, %edi
	je	L1807
	subl	$1, 188(%edi)
L1807:
	movl	%ecx, -108(%ebp)
	movl	%edx, -104(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-108(%ebp), %ecx
	movl	-104(%ebp), %edx
L1806:
	movl	(%ebx), %eax
	movl	%edx, 8(%ebx)
	movl	%ecx, 4(%ebx)
	movl	%eax, -104(%ebp)
	jmp	L1803
	.p2align 4,,10
	.p2align 3
L1905:
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1798
	addl	$1, 188(%eax)
L1798:
	movl	$0, 4(%esp)
	movl	$320, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %edx
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	L1799
	movl	(%ebx), %ecx
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	leal	(%ecx,%ecx,4), %ecx
	sall	$3, %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, -104(%ebp)
	call	_memcpy
	movl	8(%ebx), %eax
	movl	-104(%ebp), %edx
	testl	%eax, %eax
	je	L1800
	movl	_GImGui, %ecx
	testl	%ecx, %ecx
	je	L1800
	subl	$1, 188(%ecx)
L1800:
	movl	%edx, -104(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-104(%ebp), %edx
L1799:
	movl	(%ebx), %eax
	movl	%edx, 8(%ebx)
	movl	$8, 4(%ebx)
	movl	%eax, -104(%ebp)
	jmp	L1797
	.p2align 4,,10
	.p2align 3
L1912:
	movl	-104(%ebp), %eax
	movl	%edx, 4(%esp)
	addl	$40, %edx
	movl	%edx, (%esp)
	leal	(%eax,%eax,4), %eax
	sall	$3, %eax
	movl	%eax, 8(%esp)
	call	_memmove
	movl	8(%ebx), %edx
	jmp	L1808
	.p2align 4,,10
	.p2align 3
L1907:
	movl	%ebx, %ecx
	call	__ZN10ImDrawList10AddDrawCmdEv
	jmp	L1814
	.p2align 4,,10
	.p2align 3
L1898:
	comiss	%xmm3, %xmm1
	jbe	L1913
	movss	-108(%ebp), %xmm6
	movss	%xmm1, -92(%ebp)
	leal	-96(%ebp), %edi
	leal	-64(%ebp), %esi
	movss	%xmm4, -140(%ebp)
	xorps	%xmm0, %xmm0
	movl	%ebx, %ecx
	movss	%xmm6, -96(%ebp)
	movss	%xmm1, -136(%ebp)
	movss	%xmm2, -64(%ebp)
	movss	%xmm2, -132(%ebp)
	movss	%xmm3, -60(%ebp)
	movss	%xmm3, -128(%ebp)
	movl	$304, 12(%esp)
	movl	-100(%ebp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	call	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movss	-112(%ebp), %xmm6
	movss	-128(%ebp), %xmm3
	subl	$16, %esp
	comiss	-104(%ebp), %xmm6
	movss	-132(%ebp), %xmm2
	movss	-136(%ebp), %xmm1
	movss	-140(%ebp), %xmm4
	jbe	L1829
L1833:
	movl	$320, %edx
	jmp	L1826
	.p2align 4,,10
	.p2align 3
L1909:
	movss	-120(%ebp), %xmm6
	movss	-108(%ebp), %xmm7
	xorps	%xmm0, %xmm0
	movl	%ebx, %ecx
	orl	$288, %eax
	movss	%xmm4, -140(%ebp)
	movss	%xmm6, -96(%ebp)
	movss	-104(%ebp), %xmm6
	movss	%xmm3, -136(%ebp)
	movss	%xmm2, -132(%ebp)
	movss	%xmm7, -64(%ebp)
	movss	%xmm1, -60(%ebp)
	movss	%xmm1, -128(%ebp)
	movss	%xmm6, -92(%ebp)
	movl	%eax, 12(%esp)
	movl	-100(%ebp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	call	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movss	-112(%ebp), %xmm7
	movss	-128(%ebp), %xmm1
	subl	$16, %esp
	comiss	-104(%ebp), %xmm7
	movss	-132(%ebp), %xmm2
	movss	-136(%ebp), %xmm3
	movss	-140(%ebp), %xmm4
	jbe	L1823
	comiss	%xmm4, %xmm2
	movl	$256, %edx
	movl	$320, %eax
	cmovbe	%eax, %edx
L1826:
	movzbl	-114(%ebp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	sall	$7, %eax
	orl	%edx, %eax
L1822:
	movss	-108(%ebp), %xmm7
	movss	-112(%ebp), %xmm6
	xorps	%xmm0, %xmm0
	movl	%ebx, %ecx
	movss	%xmm4, -140(%ebp)
	movss	%xmm7, -96(%ebp)
	movss	-104(%ebp), %xmm7
	movss	%xmm3, -136(%ebp)
	movss	%xmm1, -132(%ebp)
	movss	%xmm2, -64(%ebp)
	movss	%xmm2, -128(%ebp)
	movss	%xmm6, -92(%ebp)
	movss	%xmm7, -60(%ebp)
	movl	%eax, 12(%esp)
	movl	-100(%ebp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	call	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movss	-128(%ebp), %xmm2
	movss	-132(%ebp), %xmm1
	subl	$16, %esp
	cmpb	$0, -115(%ebp)
	movss	-136(%ebp), %xmm3
	movss	-140(%ebp), %xmm4
	je	L1827
	cmpb	$0, -124(%ebp)
	jne	L1835
	jmp	L1827
L1913:
	movss	-112(%ebp), %xmm6
	comiss	-104(%ebp), %xmm6
	jbe	L1823
	movl	$448, %eax
	leal	-96(%ebp), %edi
	leal	-64(%ebp), %esi
	jmp	L1822
L1821:
	movss	-108(%ebp), %xmm6
	movss	%xmm4, -140(%ebp)
	movss	%xmm1, -92(%ebp)
	movss	%xmm6, -96(%ebp)
	movss	%xmm1, -136(%ebp)
	movss	%xmm2, -64(%ebp)
	movss	%xmm2, -132(%ebp)
	movss	%xmm3, -60(%ebp)
	movss	%xmm3, -128(%ebp)
	movl	$288, 12(%esp)
	jmp	L1903
L1910:
	movss	-108(%ebp), %xmm6
	movss	%xmm1, -92(%ebp)
	xorps	%xmm0, %xmm0
	movl	%ebx, %ecx
	movss	%xmm1, -136(%ebp)
	movss	%xmm6, -96(%ebp)
	movss	%xmm2, -64(%ebp)
	movss	%xmm2, -132(%ebp)
	movss	%xmm3, -60(%ebp)
	movss	%xmm3, -128(%ebp)
	movl	$272, 12(%esp)
	movl	-100(%ebp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	call	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movss	-112(%ebp), %xmm6
	movss	-128(%ebp), %xmm3
	subl	$16, %esp
	comiss	-104(%ebp), %xmm6
	movss	-132(%ebp), %xmm2
	movss	-136(%ebp), %xmm1
	movss	-140(%ebp), %xmm4
	ja	L1833
	jmp	L1834
	.cfi_endproc
LFE131:
	.p2align 4
	.globl	__ZN5ImGui12RenderBulletEP10ImDrawList6ImVec2j
	.def	__ZN5ImGui12RenderBulletEP10ImDrawList6ImVec2j;	.scl	2;	.type	32;	.endef
__ZN5ImGui12RenderBulletEP10ImDrawList6ImVec2j:
LFB139:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%edx, 12(%esp)
	movl	%ecx, 16(%esp)
	cmpl	$16777215, 28(%esp)
	jbe	L1914
	movss	LC84, %xmm0
	movl	44(%eax), %edx
	movss	LC74, %xmm1
	mulss	12(%edx), %xmm0
	comiss	%xmm0, %xmm1
	ja	L1914
	movss	LC85, %xmm2
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -8
	movl	%eax, %ebx
	leal	12(%esp), %eax
	movl	%eax, (%esp)
	xorps	%xmm1, %xmm1
	movl	%ebx, %ecx
	movl	$7, 4(%esp)
	call	__ZN10ImDrawList11_PathArcToNERK6ImVec2fffi
	.cfi_def_cfa_offset 20
	movl	84(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	cmpl	$2, %eax
	jle	L1916
	movl	28(%esp), %ecx
	movl	%eax, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	92(%ebx), %eax
	movl	%ebx, %ecx
	movl	%eax, (%esp)
	call	__ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij.part.0
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
L1916:
	movl	$0, 84(%ebx)
	movl	20(%esp), %ebx
	.cfi_restore 3
L1914:
	addl	$24, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE139:
	.section	.text.unlikely,"x"
LCOLDB86:
	.text
LHOTB86:
	.p2align 4
	.globl	__Z32ImGui_ImplOpenGL3_RenderDrawDataP10ImDrawData
	.def	__Z32ImGui_ImplOpenGL3_RenderDrawDataP10ImDrawData;	.scl	2;	.type	32;	.endef
__Z32ImGui_ImplOpenGL3_RenderDrawDataP10ImDrawData:
LFB143:
	.cfi_startproc
	subl	$168, %esp
	.cfi_def_cfa_offset 172
	movl	%edi, 160(%esp)
	movss	28(%eax), %xmm0
	mulss	36(%eax), %xmm0
	.cfi_offset 7, -12
	cvttss2sil	%xmm0, %edi
	movss	32(%eax), %xmm0
	mulss	40(%eax), %xmm0
	movl	%edi, 48(%esp)
	cvttss2sil	%xmm0, %ecx
	movl	%ecx, 32(%esp)
	testl	%edi, %edi
	jle	L1918
	testl	%ecx, %ecx
	jle	L1918
	movl	%eax, %edi
	movl	_GImGui, %eax
	movl	%ebx, 152(%esp)
	movl	%esi, 156(%esp)
	movl	_imgl3wProcs+136, %edx
	movl	%ebp, 164(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	testl	%eax, %eax
	je	L1920
	movl	132(%eax), %esi
	leal	108(%esp), %eax
	movl	$34016, (%esp)
	movl	%eax, 4(%esp)
	movl	%esi, 20(%esp)
	call	*%edx
	.cfi_def_cfa_offset 164
	subl	$8, %esp
	.cfi_def_cfa_offset 172
	movl	$33984, (%esp)
	call	*_imgl3wProcs
	.cfi_def_cfa_offset 168
	subl	$4, %esp
	.cfi_def_cfa_offset 172
	leal	104(%esp), %eax
	movl	$35725, (%esp)
	movl	%eax, 4(%esp)
	call	*_imgl3wProcs+136
	.cfi_def_cfa_offset 164
	subl	$8, %esp
	.cfi_def_cfa_offset 172
	leal	100(%esp), %eax
	movl	$32873, (%esp)
	movl	%eax, 4(%esp)
	call	*_imgl3wProcs+136
	.cfi_def_cfa_offset 164
	subl	$8, %esp
	.cfi_def_cfa_offset 172
	cmpl	$329, (%esi)
	ja	L1957
	movl	$0, 96(%esp)
L1922:
	leal	92(%esp), %eax
	movl	$34964, (%esp)
	movl	%eax, 4(%esp)
	call	*_imgl3wProcs+136
	.cfi_def_cfa_offset 164
	subl	$8, %esp
	.cfi_def_cfa_offset 172
	leal	88(%esp), %eax
	movl	$34229, (%esp)
	movl	%eax, 4(%esp)
	call	*_imgl3wProcs+136
	.cfi_def_cfa_offset 164
	subl	$8, %esp
	.cfi_def_cfa_offset 172
	leal	112(%esp), %eax
	movl	$2880, (%esp)
	movl	%eax, 4(%esp)
	call	*_imgl3wProcs+136
	.cfi_def_cfa_offset 164
	subl	$8, %esp
	.cfi_def_cfa_offset 172
	leal	136(%esp), %eax
	movl	$2978, (%esp)
	movl	%eax, 4(%esp)
	call	*_imgl3wProcs+136
	.cfi_def_cfa_offset 164
	subl	$8, %esp
	.cfi_def_cfa_offset 172
	leal	120(%esp), %eax
	movl	$3088, (%esp)
	movl	%eax, 4(%esp)
	call	*_imgl3wProcs+136
	.cfi_def_cfa_offset 164
	subl	$8, %esp
	.cfi_def_cfa_offset 172
	leal	84(%esp), %eax
	movl	$32969, (%esp)
	movl	%eax, 4(%esp)
	call	*_imgl3wProcs+136
	.cfi_def_cfa_offset 164
	subl	$8, %esp
	.cfi_def_cfa_offset 172
	leal	80(%esp), %eax
	movl	$32968, (%esp)
	movl	%eax, 4(%esp)
	call	*_imgl3wProcs+136
	.cfi_def_cfa_offset 164
	subl	$8, %esp
	.cfi_def_cfa_offset 172
	leal	76(%esp), %eax
	movl	$32971, (%esp)
	movl	%eax, 4(%esp)
	call	*_imgl3wProcs+136
	.cfi_def_cfa_offset 164
	subl	$8, %esp
	.cfi_def_cfa_offset 172
	leal	72(%esp), %eax
	movl	$32970, (%esp)
	movl	%eax, 4(%esp)
	call	*_imgl3wProcs+136
	.cfi_def_cfa_offset 164
	subl	$8, %esp
	.cfi_def_cfa_offset 172
	leal	68(%esp), %eax
	movl	$32777, (%esp)
	movl	%eax, 4(%esp)
	call	*_imgl3wProcs+136
	.cfi_def_cfa_offset 164
	subl	$8, %esp
	.cfi_def_cfa_offset 172
	leal	64(%esp), %eax
	movl	$34877, (%esp)
	movl	%eax, 4(%esp)
	call	*_imgl3wProcs+136
	.cfi_def_cfa_offset 164
	subl	$8, %esp
	.cfi_def_cfa_offset 172
	movl	$3042, (%esp)
	call	*_imgl3wProcs+176
	.cfi_def_cfa_offset 168
	subl	$4, %esp
	.cfi_def_cfa_offset 172
	movb	%al, 54(%esp)
	movl	$2884, (%esp)
	call	*_imgl3wProcs+176
	.cfi_def_cfa_offset 168
	subl	$4, %esp
	.cfi_def_cfa_offset 172
	movb	%al, 55(%esp)
	movl	$2929, (%esp)
	call	*_imgl3wProcs+176
	.cfi_def_cfa_offset 168
	subl	$4, %esp
	.cfi_def_cfa_offset 172
	movb	%al, 56(%esp)
	movl	$2960, (%esp)
	call	*_imgl3wProcs+176
	.cfi_def_cfa_offset 168
	subl	$4, %esp
	.cfi_def_cfa_offset 172
	movb	%al, 57(%esp)
	movl	$3089, (%esp)
	call	*_imgl3wProcs+176
	.cfi_def_cfa_offset 168
	subl	$4, %esp
	.cfi_def_cfa_offset 172
	xorl	%esi, %esi
	movb	%al, 58(%esp)
	movl	20(%esp), %eax
	cmpl	$309, (%eax)
	jbe	L1923
	movl	$36765, (%esp)
	call	*_imgl3wProcs+176
	.cfi_def_cfa_offset 168
	subl	$4, %esp
	.cfi_def_cfa_offset 172
	movl	%eax, %esi
L1923:
	leal	60(%esp), %eax
	movl	$0, 60(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	*_imgl3wProcs+124
	.cfi_def_cfa_offset 164
	subl	$8, %esp
	.cfi_def_cfa_offset 172
	movl	60(%esp), %eax
	movl	32(%esp), %ecx
	movl	48(%esp), %edx
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__ZL34ImGui_ImplOpenGL3_SetupRenderStateP10ImDrawDataiij
	movl	4(%edi), %eax
	testl	%eax, %eax
	jle	L1924
	movss	20(%edi), %xmm3
	movl	%esi, %eax
	movss	40(%edi), %xmm7
	xorl	%ebp, %ebp
	movb	%al, 59(%esp)
	movss	%xmm3, 28(%esp)
	movss	24(%edi), %xmm3
	movss	%xmm7, 40(%esp)
	movss	%xmm3, 44(%esp)
	movss	36(%edi), %xmm3
	movss	%xmm3, 24(%esp)
	.p2align 4
	.p2align 3
L1935:
	movl	16(%edi), %eax
	movl	(%eax,%ebp,4), %esi
	movl	12(%esi), %ecx
	movl	24(%esi), %eax
	leal	(%ecx,%ecx), %ebx
	movl	20(%esp), %ecx
	leal	(%eax,%eax,4), %eax
	sall	$2, %eax
	cmpb	$0, 81(%ecx)
	je	L1925
	cmpl	%eax, 72(%ecx)
	jge	L1926
	movl	%eax, 72(%ecx)
	movl	%eax, 36(%esp)
	movl	%eax, 4(%esp)
	movl	$35040, 12(%esp)
	movl	$0, 8(%esp)
	movl	$34962, (%esp)
	call	*_imgl3wProcs+36
	.cfi_def_cfa_offset 156
	subl	$16, %esp
	.cfi_def_cfa_offset 172
	movl	36(%esp), %eax
L1926:
	movl	20(%esp), %ecx
	cmpl	%ebx, 76(%ecx)
	jge	L1927
	movl	%ebx, 76(%ecx)
	movl	%eax, 36(%esp)
	movl	$35040, 12(%esp)
	movl	$0, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	$34963, (%esp)
	call	*_imgl3wProcs+36
	.cfi_def_cfa_offset 156
	subl	$16, %esp
	.cfi_def_cfa_offset 172
	movl	36(%esp), %eax
L1927:
	movl	32(%esi), %edx
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, 12(%esp)
	movl	$34962, (%esp)
	call	*_imgl3wProcs+40
	.cfi_def_cfa_offset 156
	movl	20(%esi), %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 172
	movl	%eax, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	$34963, (%esp)
	call	*_imgl3wProcs+40
	.cfi_def_cfa_offset 156
	subl	$16, %esp
	.cfi_def_cfa_offset 172
L1928:
	movl	(%esi), %eax
	testl	%eax, %eax
	jle	L1929
	movl	%ebp, 36(%esp)
	xorl	%ebx, %ebx
	jmp	L1934
	.p2align 4,,10
	.p2align 3
L1960:
	cmpl	$-1, %edx
	je	L1958
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	*%edx
L1932:
	addl	$1, %ebx
	cmpl	%ebx, (%esi)
	jle	L1959
L1934:
	movl	8(%esi), %edx
	leal	(%ebx,%ebx,4), %eax
	leal	(%edx,%eax,8), %ebp
	movl	32(%ebp), %edx
	testl	%edx, %edx
	jne	L1960
	movss	28(%esp), %xmm5
	movss	0(%ebp), %xmm1
	movss	8(%ebp), %xmm0
	movss	24(%esp), %xmm6
	subss	%xmm5, %xmm1
	subss	%xmm5, %xmm0
	mulss	%xmm6, %xmm1
	mulss	%xmm6, %xmm0
	comiss	%xmm0, %xmm1
	jnb	L1932
	movss	44(%esp), %xmm7
	movss	4(%ebp), %xmm3
	movss	12(%ebp), %xmm2
	movss	40(%esp), %xmm4
	subss	%xmm7, %xmm3
	subss	%xmm7, %xmm2
	mulss	%xmm4, %xmm3
	mulss	%xmm4, %xmm2
	comiss	%xmm2, %xmm3
	jnb	L1932
	movaps	%xmm2, %xmm4
	subss	%xmm1, %xmm0
	subss	%xmm3, %xmm4
	cvttss2sil	%xmm4, %edx
	movl	%edx, 12(%esp)
	cvttss2sil	%xmm0, %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	32(%esp), %xmm0
	movl	%edx, 8(%esp)
	subss	%xmm2, %xmm0
	cvttss2sil	%xmm0, %edx
	movl	%edx, 4(%esp)
	cvttss2sil	%xmm1, %edx
	movl	%edx, (%esp)
	call	*_imgl3wProcs+200
	.cfi_def_cfa_offset 156
	movl	16(%ebp), %edx
	subl	$16, %esp
	.cfi_def_cfa_offset 172
	movl	%edx, 4(%esp)
	movl	$3553, (%esp)
	call	*_imgl3wProcs+16
	.cfi_def_cfa_offset 164
	movl	24(%ebp), %eax
	movl	28(%ebp), %ecx
	subl	$8, %esp
	.cfi_def_cfa_offset 172
	leal	(%eax,%eax), %edx
	movl	20(%esp), %eax
	cmpl	$319, (%eax)
	jbe	L1933
	movl	20(%ebp), %eax
	movl	%edx, 12(%esp)
	addl	$1, %ebx
	movl	$5123, 8(%esp)
	movl	%eax, 16(%esp)
	movl	%ecx, 4(%esp)
	movl	$4, (%esp)
	call	*_imgl3wProcs+100
	.cfi_def_cfa_offset 152
	subl	$20, %esp
	.cfi_def_cfa_offset 172
	cmpl	%ebx, (%esi)
	jg	L1934
	.p2align 4
	.p2align 3
L1959:
	movl	36(%esp), %ebp
L1929:
	addl	$1, %ebp
	cmpl	%ebp, 4(%edi)
	jg	L1935
	movzbl	59(%esp), %esi
L1924:
	leal	60(%esp), %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_imgl3wProcs+80
	.cfi_def_cfa_offset 164
	subl	$8, %esp
	.cfi_def_cfa_offset 172
	movl	104(%esp), %eax
	movl	%eax, (%esp)
	call	*_imgl3wProcs+180
	.cfi_def_cfa_offset 168
	subl	$4, %esp
	.cfi_def_cfa_offset 172
	testb	%al, %al
	je	L1936
	movl	104(%esp), %eax
	movl	%eax, (%esp)
	call	*_imgl3wProcs+224
	.cfi_def_cfa_offset 168
	subl	$4, %esp
	.cfi_def_cfa_offset 172
L1936:
	movl	100(%esp), %eax
	movl	$3553, (%esp)
	movl	%eax, 4(%esp)
	call	*_imgl3wProcs+16
	.cfi_def_cfa_offset 164
	subl	$8, %esp
	.cfi_def_cfa_offset 172
	movl	20(%esp), %eax
	cmpl	$329, (%eax)
	jbe	L1937
	movl	96(%esp), %eax
	movl	$0, (%esp)
	movl	%eax, 4(%esp)
	call	*_imgl3wProcs+12
	.cfi_def_cfa_offset 164
	subl	$8, %esp
	.cfi_def_cfa_offset 172
L1937:
	movl	108(%esp), %eax
	movl	%eax, (%esp)
	call	*_imgl3wProcs
	.cfi_def_cfa_offset 168
	subl	$4, %esp
	.cfi_def_cfa_offset 172
	movl	88(%esp), %eax
	movl	%eax, (%esp)
	call	*_imgl3wProcs+20
	.cfi_def_cfa_offset 168
	subl	$4, %esp
	.cfi_def_cfa_offset 172
	movl	92(%esp), %eax
	movl	$34962, (%esp)
	movl	%eax, 4(%esp)
	call	*_imgl3wProcs+8
	.cfi_def_cfa_offset 164
	subl	$8, %esp
	.cfi_def_cfa_offset 172
	movl	64(%esp), %eax
	movl	%eax, 4(%esp)
	movl	68(%esp), %eax
	movl	%eax, (%esp)
	call	*_imgl3wProcs+28
	.cfi_def_cfa_offset 164
	subl	$8, %esp
	.cfi_def_cfa_offset 172
	movl	72(%esp), %eax
	movl	%eax, 12(%esp)
	movl	76(%esp), %eax
	movl	%eax, 8(%esp)
	movl	80(%esp), %eax
	movl	%eax, 4(%esp)
	movl	84(%esp), %eax
	movl	%eax, (%esp)
	call	*_imgl3wProcs+32
	.cfi_def_cfa_offset 156
	subl	$16, %esp
	.cfi_def_cfa_offset 172
	cmpb	$0, 54(%esp)
	movl	$3042, (%esp)
	je	L1938
	call	*_imgl3wProcs+104
	.cfi_def_cfa_offset 168
	subl	$4, %esp
	.cfi_def_cfa_offset 172
L1939:
	cmpb	$0, 55(%esp)
	movl	$2884, (%esp)
	je	L1940
	call	*_imgl3wProcs+104
	.cfi_def_cfa_offset 168
	subl	$4, %esp
	.cfi_def_cfa_offset 172
L1941:
	cmpb	$0, 56(%esp)
	movl	$2929, (%esp)
	je	L1942
	call	*_imgl3wProcs+104
	.cfi_def_cfa_offset 168
	subl	$4, %esp
	.cfi_def_cfa_offset 172
L1943:
	cmpb	$0, 57(%esp)
	movl	$2960, (%esp)
	je	L1944
	call	*_imgl3wProcs+104
	.cfi_def_cfa_offset 168
	subl	$4, %esp
	.cfi_def_cfa_offset 172
L1945:
	cmpb	$0, 58(%esp)
	movl	$3089, (%esp)
	je	L1946
	call	*_imgl3wProcs+104
	.cfi_def_cfa_offset 168
	subl	$4, %esp
	.cfi_def_cfa_offset 172
L1947:
	movl	20(%esp), %eax
	cmpl	$309, (%eax)
	jbe	L1948
	movl	%esi, %eax
	movl	$36765, (%esp)
	testb	%al, %al
	je	L1949
	call	*_imgl3wProcs+104
	.cfi_def_cfa_offset 168
	subl	$4, %esp
	.cfi_def_cfa_offset 172
L1948:
	movl	112(%esp), %eax
	movl	$1032, (%esp)
	movl	%eax, 4(%esp)
	call	*_imgl3wProcs+192
	.cfi_def_cfa_offset 164
	subl	$8, %esp
	.cfi_def_cfa_offset 172
	movl	148(%esp), %eax
	movl	%eax, 12(%esp)
	movl	144(%esp), %eax
	movl	%eax, 8(%esp)
	movl	140(%esp), %eax
	movl	%eax, 4(%esp)
	movl	136(%esp), %eax
	movl	%eax, (%esp)
	call	*_imgl3wProcs+232
	.cfi_def_cfa_offset 156
	subl	$16, %esp
	.cfi_def_cfa_offset 172
	movl	132(%esp), %eax
	movl	%eax, 12(%esp)
	movl	128(%esp), %eax
	movl	%eax, 8(%esp)
	movl	124(%esp), %eax
	movl	%eax, 4(%esp)
	movl	120(%esp), %eax
	movl	%eax, (%esp)
	call	*_imgl3wProcs+200
	.cfi_def_cfa_offset 156
	subl	$16, %esp
	.cfi_def_cfa_offset 172
	movl	152(%esp), %ebx
	.cfi_restore 3
	movl	156(%esp), %esi
	.cfi_restore 6
	movl	164(%esp), %ebp
	.cfi_restore 5
L1918:
	movl	160(%esp), %edi
	addl	$168, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L1957:
	.cfi_def_cfa_offset 172
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	leal	96(%esp), %eax
	movl	$35097, (%esp)
	movl	%eax, 4(%esp)
	call	*_imgl3wProcs+136
	.cfi_def_cfa_offset 164
	subl	$8, %esp
	.cfi_def_cfa_offset 172
	jmp	L1922
	.p2align 4,,10
	.p2align 3
L1958:
	movl	60(%esp), %eax
	movl	32(%esp), %ecx
	movl	48(%esp), %edx
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__ZL34ImGui_ImplOpenGL3_SetupRenderStateP10ImDrawDataiij
	jmp	L1932
	.p2align 4,,10
	.p2align 3
L1933:
	movl	%edx, 12(%esp)
	movl	$5123, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$4, (%esp)
	call	*_imgl3wProcs+96
	.cfi_def_cfa_offset 156
	subl	$16, %esp
	.cfi_def_cfa_offset 172
	jmp	L1932
	.p2align 4,,10
	.p2align 3
L1925:
	movl	$35040, 12(%esp)
	movl	32(%esi), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$34962, (%esp)
	call	*_imgl3wProcs+36
	.cfi_def_cfa_offset 156
	subl	$16, %esp
	.cfi_def_cfa_offset 172
	movl	$35040, 12(%esp)
	movl	20(%esi), %eax
	movl	%ebx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$34963, (%esp)
	call	*_imgl3wProcs+36
	.cfi_def_cfa_offset 156
	subl	$16, %esp
	.cfi_def_cfa_offset 172
	jmp	L1928
L1946:
	call	*_imgl3wProcs+88
	.cfi_def_cfa_offset 168
	subl	$4, %esp
	.cfi_def_cfa_offset 172
	jmp	L1947
L1944:
	call	*_imgl3wProcs+88
	.cfi_def_cfa_offset 168
	subl	$4, %esp
	.cfi_def_cfa_offset 172
	jmp	L1945
L1942:
	call	*_imgl3wProcs+88
	.cfi_def_cfa_offset 168
	subl	$4, %esp
	.cfi_def_cfa_offset 172
	jmp	L1943
L1940:
	call	*_imgl3wProcs+88
	.cfi_def_cfa_offset 168
	subl	$4, %esp
	.cfi_def_cfa_offset 172
	jmp	L1941
L1938:
	call	*_imgl3wProcs+88
	.cfi_def_cfa_offset 168
	subl	$4, %esp
	.cfi_def_cfa_offset 172
	jmp	L1939
L1949:
	call	*_imgl3wProcs+88
	.cfi_def_cfa_offset 168
	subl	$4, %esp
	.cfi_def_cfa_offset 172
	jmp	L1948
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__Z32ImGui_ImplOpenGL3_RenderDrawDataP10ImDrawData.cold;	.scl	3;	.type	32;	.endef
__Z32ImGui_ImplOpenGL3_RenderDrawDataP10ImDrawData.cold:
LFSB143:
L1920:
	.cfi_def_cfa_offset 172
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	leal	108(%esp), %eax
	movl	$34016, (%esp)
	movl	%eax, 4(%esp)
	call	*%edx
	.cfi_def_cfa_offset 164
	pushl	%eax
	.cfi_def_cfa_offset 168
	pushl	%eax
	.cfi_def_cfa_offset 172
	movl	$33984, (%esp)
	call	*_imgl3wProcs
	.cfi_def_cfa_offset 168
	pushl	%edx
	.cfi_def_cfa_offset 172
	leal	104(%esp), %eax
	movl	$35725, (%esp)
	movl	%eax, 4(%esp)
	call	*_imgl3wProcs+136
	.cfi_def_cfa_offset 164
	pushl	%ecx
	.cfi_def_cfa_offset 168
	pushl	%ecx
	.cfi_def_cfa_offset 172
	leal	100(%esp), %eax
	movl	$32873, (%esp)
	movl	%eax, 4(%esp)
	call	*_imgl3wProcs+136
	.cfi_def_cfa_offset 164
	pushl	%ebx
	.cfi_def_cfa_offset 168
	pushl	%ebx
	.cfi_def_cfa_offset 172
	movl	0, %eax
	ud2
	.cfi_endproc
LFE143:
	.text
	.section	.text.unlikely,"x"
LCOLDE86:
	.text
LHOTE86:
	.p2align 4
	.globl	__ZL30ImGui_ImplOpenGL3_RenderWindowP13ImGuiViewportPv.lto_priv.0
	.def	__ZL30ImGui_ImplOpenGL3_RenderWindowP13ImGuiViewportPv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL30ImGui_ImplOpenGL3_RenderWindowP13ImGuiViewportPv.lto_priv.0:
LFB144:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	24(%esp), %eax
	testb	$1, 5(%eax)
	jne	L1962
	movl	%eax, 16(%esp)
	movl	$0x3f800000, 12(%esp)
	movl	$0x00000000, 8(%esp)
	movl	$0x00000000, 4(%esp)
	movl	$0x00000000, (%esp)
	call	*_imgl3wProcs+48
	.cfi_def_cfa_offset 8
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	movl	$16384, (%esp)
	call	*_imgl3wProcs+44
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	16(%esp), %eax
L1962:
	movl	48(%eax), %eax
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	jmp	__Z32ImGui_ImplOpenGL3_RenderDrawDataP10ImDrawData
	.cfi_endproc
LFE144:
	.p2align 4
	.globl	__Z27ImGui_ImplSDL2_ProcessEventPK9SDL_Event
	.def	__Z27ImGui_ImplSDL2_ProcessEventPK9SDL_Event;	.scl	2;	.type	32;	.endef
__Z27ImGui_ImplSDL2_ProcessEventPK9SDL_Event:
LFB145:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%eax, %edx
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
	subl	$72, %esp
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	_GImGui, %ebx
	testl	%ebx, %ebx
	je	L1965
	movl	128(%ebx), %esi
L1965:
	movl	(%edx), %eax
	cmpl	$1024, %eax
	je	L1966
	ja	L1967
	cmpl	$769, %eax
	ja	L1968
	cmpl	$767, %eax
	ja	L1969
	cmpl	$512, %eax
	jne	L1971
	movzbl	12(%edx), %eax
	movb	%al, -48(%ebp)
	cmpb	$10, %al
	je	L2456
	cmpb	$11, -48(%ebp)
	je	L2457
	cmpb	$12, -48(%ebp)
	je	L2458
	cmpb	$13, -48(%ebp)
	je	L2459
	movzbl	-48(%ebp), %eax
	cmpb	$14, %al
	sete	%bl
	cmpb	$4, %al
	sete	%al
	orb	%al, %bl
	movl	%ebx, %edi
	je	L2460
L2154:
	movl	8(%edx), %eax
	movl	%eax, (%esp)
	call	_SDL_GetWindowFromID
	movl	%eax, %esi
	movl	_GImGui, %eax
	movl	18608(%eax), %ebx
	testl	%ebx, %ebx
	je	L1999
	movl	18616(%eax), %ecx
	xorl	%eax, %eax
	jmp	L2156
	.p2align 4
	.p2align 4,,10
	.p2align 3
L2461:
	addl	$1, %eax
	cmpl	%eax, %ebx
	je	L1999
L2156:
	movl	(%ecx,%eax,4), %edx
	cmpl	60(%edx), %esi
	jne	L2461
	cmpb	$14, -48(%ebp)
	je	L2462
	movl	%edi, %eax
	testb	%al, %al
	jne	L2463
	movb	$1, 70(%edx)
	.p2align 4
	.p2align 3
L1999:
	movl	$1, %edi
L1964:
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
	.p2align 4,,10
	.p2align 3
L1967:
	.cfi_restore_state
	cmpl	$1026, %eax
	jbe	L1973
	cmpl	$1027, %eax
	jne	L1971
	movzbl	14241(%ebx), %edi
	movl	%edi, %eax
	testb	%al, %al
	je	L1999
	movss	28(%edx), %xmm0
	xorps	%xmm1, %xmm1
	movss	32(%edx), %xmm2
	movl	$0, %edx
	ucomiss	%xmm1, %xmm0
	setnp	%al
	cmovne	%edx, %eax
	testb	%al, %al
	je	L2001
	ucomiss	%xmm1, %xmm2
	setnp	%al
	cmovne	%edx, %eax
	testb	%al, %al
	jne	L1999
L2001:
	movl	3524(%ebx), %esi
	movl	$2, %eax
	xorps	LC80, %xmm0
	movl	$1, %edx
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	movss	%xmm0, -32(%ebp)
	movss	%xmm2, -28(%ebp)
	movl	14380(%esi), %eax
	cmpl	14384(%esi), %eax
	je	L2464
L2002:
	movl	14388(%esi), %ebx
L2005:
	movl	-40(%ebp), %edx
	leal	(%eax,%eax,2), %eax
	movl	%edx, (%ebx,%eax,8)
	movl	-36(%ebp), %edx
	movl	%edx, 4(%ebx,%eax,8)
	movl	-32(%ebp), %edx
	movl	%edx, 8(%ebx,%eax,8)
	movl	-28(%ebp), %edx
	movl	%edx, 12(%ebx,%eax,8)
	movl	-24(%ebp), %edx
	movl	%edx, 16(%ebx,%eax,8)
	movl	-20(%ebp), %edx
	movl	%edx, 20(%ebx,%eax,8)
	addl	$1, 14380(%esi)
	jmp	L1964
	.p2align 4,,10
	.p2align 3
L1973:
	movzbl	16(%edx), %ecx
	cmpb	$1, %cl
	je	L2373
	cmpb	$3, %cl
	je	L2374
	cmpb	$2, %cl
	je	L2375
	cmpb	$4, %cl
	je	L2376
	cmpb	$5, %cl
	jne	L1971
	movl	$16, -56(%ebp)
	movl	$4, -48(%ebp)
	.p2align 4
	.p2align 3
L2008:
	cmpb	$0, 14241(%ebx)
	je	L2020
	movl	3524(%ebx), %edi
	movl	14380(%ebx), %ecx
	cmpl	$1025, %eax
	sete	-57(%ebp)
	movl	%edi, -52(%ebp)
	movl	%ecx, %edi
	subl	$1, %edi
	movl	%edi, -64(%ebp)
	js	L2010
	movl	14388(%ebx), %edi
	leal	(%ecx,%ecx,2), %ecx
	movl	%eax, -68(%ebp)
	leal	-24(%edi,%ecx,8), %ecx
	movl	-64(%ebp), %edi
L2013:
	cmpl	$3, (%ecx)
	jne	L2011
	movl	-48(%ebp), %eax
	cmpl	8(%ecx), %eax
	jne	L2011
	movl	-68(%ebp), %eax
	movzbl	12(%ecx), %ecx
L2370:
	cmpb	%cl, -57(%ebp)
	je	L2020
	movzbl	-57(%ebp), %eax
	movl	-48(%ebp), %edi
	movl	$0, -28(%ebp)
	movlps	LC89, %xmm0
	movl	-52(%ebp), %ecx
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	%edi, -32(%ebp)
	movb	%al, -28(%ebp)
	movlps	%xmm0, -40(%ebp)
	movl	14380(%ecx), %eax
	cmpl	14384(%ecx), %eax
	je	L2465
L2014:
	movl	-52(%ebp), %edi
	movl	14388(%edi), %ebx
L2017:
	movl	-40(%ebp), %ecx
	leal	(%eax,%eax,2), %eax
	movl	%ecx, (%ebx,%eax,8)
	movl	-36(%ebp), %ecx
	movl	%ecx, 4(%ebx,%eax,8)
	movl	-32(%ebp), %ecx
	movl	%ecx, 8(%ebx,%eax,8)
	movl	-28(%ebp), %ecx
	movl	%ecx, 12(%ebx,%eax,8)
	movl	-24(%ebp), %ecx
	movl	%ecx, 16(%ebx,%eax,8)
	movl	-20(%ebp), %ecx
	movl	%ecx, 20(%ebx,%eax,8)
	movl	-52(%ebp), %eax
	addl	$1, 14380(%eax)
	movl	(%edx), %eax
L2020:
	movl	-56(%ebp), %edi
	movl	20(%esi), %ebx
	movl	%edi, %ecx
	notl	%edi
	orl	%ebx, %ecx
	movl	%edi, %edx
	andl	%ebx, %edx
	cmpl	$1025, %eax
	movl	%ecx, %eax
	cmovne	%edx, %eax
	movl	%eax, 20(%esi)
	jmp	L1999
	.p2align 4,,10
	.p2align 3
L1969:
	leal	8(%ebx), %esi
	cmpb	$0, 14241(%ebx)
	je	L2033
	movzwl	24(%edx), %edi
	xorl	%eax, %eax
	movl	%edx, -48(%ebp)
	movl	%esi, %ecx
	movl	$4096, (%esp)
	testw	$192, %di
	setne	%al
	movl	%eax, 4(%esp)
	call	__ZN7ImGuiIO11AddKeyEventE8ImGuiKeyb.part.0
	movl	-48(%ebp), %edx
	subl	$8, %esp
	testl	$3, %edi
	setne	%al
	cmpb	$0, 14241(%ebx)
	je	L2033
	movzbl	%al, %eax
	movl	$8192, (%esp)
	movl	%esi, %ecx
	movl	%eax, 4(%esp)
	call	__ZN7ImGuiIO11AddKeyEventE8ImGuiKeyb.part.0
	movl	-48(%ebp), %edx
	subl	$8, %esp
	testw	$768, %di
	setne	%al
	cmpb	$0, 14241(%ebx)
	je	L2033
	movzbl	%al, %eax
	movl	$16384, (%esp)
	movl	%esi, %ecx
	movl	%eax, 4(%esp)
	call	__ZN7ImGuiIO11AddKeyEventE8ImGuiKeyb.part.0
	movl	-48(%ebp), %edx
	subl	$8, %esp
	testw	$3072, %di
	setne	%al
	cmpb	$0, 14241(%ebx)
	je	L2033
	movzbl	%al, %eax
	movl	$32768, (%esp)
	movl	%esi, %ecx
	movl	%eax, 4(%esp)
	call	__ZN7ImGuiIO11AddKeyEventE8ImGuiKeyb.part.0
	movl	-48(%ebp), %edx
	subl	$8, %esp
	movl	20(%edx), %eax
	cmpl	$127, %eax
	jg	L2034
	cmpl	$7, %eax
	jle	L2036
	leal	-8(%eax), %ecx
	cmpl	$119, %ecx
	ja	L2036
	jmp	*L2092(,%ecx,4)
	.section .rdata,"dr"
	.align 4
L2092:
	.long	L2144
	.long	L2143
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2366
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2365
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2364
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2145
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2363
	.long	L2362
	.long	L2361
	.long	L2360
	.long	L2359
	.long	L2358
	.long	L2357
	.long	L2356
	.long	L2355
	.long	L2354
	.long	L2353
	.long	L2352
	.long	L2351
	.long	L2350
	.long	L2036
	.long	L2349
	.long	L2036
	.long	L2348
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2347
	.long	L2346
	.long	L2345
	.long	L2036
	.long	L2036
	.long	L2344
	.long	L2343
	.long	L2342
	.long	L2341
	.long	L2340
	.long	L2339
	.long	L2338
	.long	L2337
	.long	L2336
	.long	L2335
	.long	L2334
	.long	L2333
	.long	L2332
	.long	L2331
	.long	L2330
	.long	L2329
	.long	L2328
	.long	L2327
	.long	L2326
	.long	L2325
	.long	L2324
	.long	L2323
	.long	L2322
	.long	L2321
	.long	L2320
	.long	L2319
	.long	L2318
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2317
	.text
	.p2align 4,,10
	.p2align 3
L2034:
	leal	-1073741881(%eax), %ecx
	cmpl	$174, %ecx
	ja	L2036
	jmp	*L2163(,%ecx,4)
	.section .rdata,"dr"
	.align 4
L2163:
	.long	L2089
	.long	L2264
	.long	L2263
	.long	L2262
	.long	L2261
	.long	L2260
	.long	L2259
	.long	L2258
	.long	L2257
	.long	L2256
	.long	L2255
	.long	L2254
	.long	L2253
	.long	L2252
	.long	L2251
	.long	L2250
	.long	L2249
	.long	L2248
	.long	L2247
	.long	L2036
	.long	L2246
	.long	L2245
	.long	L2244
	.long	L2243
	.long	L2242
	.long	L2241
	.long	L2240
	.long	L2239
	.long	L2238
	.long	L2237
	.long	L2236
	.long	L2235
	.long	L2234
	.long	L2233
	.long	L2232
	.long	L2231
	.long	L2230
	.long	L2229
	.long	L2228
	.long	L2227
	.long	L2226
	.long	L2225
	.long	L2224
	.long	L2036
	.long	L2223
	.long	L2036
	.long	L2222
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2221
	.long	L2220
	.long	L2219
	.long	L2218
	.long	L2217
	.long	L2216
	.long	L2215
	.long	L2214
	.text
	.p2align 4,,10
	.p2align 3
L1968:
	cmpl	$771, %eax
	jne	L1971
	movzbl	14241(%ebx), %edi
	movl	%edi, %eax
	testb	%al, %al
	je	L1999
	cmpb	$0, 12(%edx)
	je	L1964
	movb	%al, -48(%ebp)
	leal	12(%edx), %esi
	.p2align 4
	.p2align 3
L2032:
	movl	%esi, %edx
	xorl	%ecx, %ecx
	leal	-44(%ebp), %eax
	call	__Z18ImTextCharFromUtf8PjPKcS1_
	addl	%eax, %esi
	movl	-44(%ebp), %eax
	testl	%eax, %eax
	je	L2024
	cmpb	$0, 14241(%ebx)
	je	L2024
	movl	3524(%ebx), %edi
	movlps	LC90, %xmm4
	movl	%eax, -32(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movlps	%xmm4, -40(%ebp)
	movl	14380(%edi), %eax
	cmpl	14384(%edi), %eax
	je	L2466
L2025:
	movl	14388(%edi), %edx
L2028:
	leal	(%eax,%eax,2), %eax
	leal	(%edx,%eax,8), %eax
	movl	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	-36(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	-32(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	-28(%ebp), %edx
	movl	%edx, 12(%eax)
	movl	-24(%ebp), %edx
	movl	%edx, 16(%eax)
	movl	-20(%ebp), %edx
	movl	%edx, 20(%eax)
	addl	$1, 14380(%edi)
L2024:
	cmpb	$0, (%esi)
	jne	L2032
	movzbl	-48(%ebp), %edi
	jmp	L1964
	.p2align 4,,10
	.p2align 3
L1966:
	xorps	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	24(%edx), %xmm1
	cvtsi2ssl	20(%edx), %xmm0
	testb	$4, 9(%ebx)
	jne	L1976
	cmpb	$0, 14241(%ebx)
	je	L1999
	movl	3524(%ebx), %esi
L1978:
	cvttss2sil	%xmm1, %eax
	xorps	%xmm2, %xmm2
	xorps	%xmm3, %xmm3
	comiss	%xmm2, %xmm1
	cvtsi2ssl	%eax, %xmm3
	jb	L2467
L1981:
	cvttss2sil	%xmm0, %eax
	xorps	%xmm2, %xmm2
	xorps	%xmm1, %xmm1
	comiss	%xmm2, %xmm0
	cvtsi2ssl	%eax, %xmm1
	jb	L2468
L1986:
	movl	14380(%ebx), %eax
	movl	%eax, %edx
	subl	$1, %edx
	js	L1989
	movl	14388(%ebx), %ecx
	leal	(%eax,%eax,2), %eax
	leal	-24(%ecx,%eax,8), %eax
L1991:
	cmpl	$1, (%eax)
	jne	L2469
	movss	12(%eax), %xmm2
	movss	8(%eax), %xmm0
L2371:
	ucomiss	%xmm1, %xmm0
	movl	$0, %edx
	setnp	%al
	cmovne	%edx, %eax
	testb	%al, %al
	je	L2379
	ucomiss	%xmm2, %xmm3
	setnp	%al
	cmovne	%edx, %eax
	testb	%al, %al
	jne	L1999
L2379:
	movl	$1, %eax
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	%eax, -40(%ebp)
	movl	%eax, -36(%ebp)
	movss	%xmm1, -32(%ebp)
	movss	%xmm3, -28(%ebp)
	movl	14380(%esi), %eax
	cmpl	14384(%esi), %eax
	je	L2470
L1993:
	movl	14388(%esi), %ebx
L1996:
	movl	-40(%ebp), %edx
	leal	(%eax,%eax,2), %eax
	movl	%edx, (%ebx,%eax,8)
	movl	-36(%ebp), %edx
	movl	%edx, 4(%ebx,%eax,8)
	movl	-32(%ebp), %edx
	movl	%edx, 8(%ebx,%eax,8)
	movl	-28(%ebp), %edx
	movl	%edx, 12(%ebx,%eax,8)
	movl	-24(%ebp), %edx
	movl	%edx, 16(%ebx,%eax,8)
	movl	-20(%ebp), %edx
	movl	%edx, 20(%ebx,%eax,8)
	addl	$1, 14380(%esi)
	jmp	L1999
	.p2align 4,,10
	.p2align 3
L1971:
	leal	-12(%ebp), %esp
	xorl	%edi, %edi
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	%edi, %eax
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
L2466:
	.cfi_restore_state
	leal	1(%eax), %ecx
	testl	%eax, %eax
	jne	L2026
	movl	$8, %eax
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%eax, -52(%ebp)
L2027:
	movl	-52(%ebp), %eax
	movl	_GImGui, %edx
	leal	(%eax,%eax,2), %eax
	sall	$3, %eax
	testl	%edx, %edx
	je	L2029
	addl	$1, 188(%edx)
L2029:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %edx
	movl	14388(%edi), %eax
	testl	%eax, %eax
	je	L2030
	movl	14380(%edi), %ecx
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	leal	(%ecx,%ecx,2), %ecx
	sall	$3, %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, -56(%ebp)
	call	_memcpy
	movl	14388(%edi), %ecx
	movl	-56(%ebp), %edx
	testl	%ecx, %ecx
	je	L2031
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L2031
	subl	$1, 188(%eax)
L2031:
	movl	%edx, -56(%ebp)
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-56(%ebp), %edx
L2030:
	movl	-52(%ebp), %eax
	movl	%edx, 14388(%edi)
	movl	%eax, 14384(%edi)
	movl	14380(%edi), %eax
	jmp	L2028
	.p2align 4,,10
	.p2align 3
L2026:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	cmpl	%ecx, %edx
	cmovge	%edx, %ecx
	movl	%ecx, -52(%ebp)
	cmpl	%ecx, %eax
	jge	L2025
	jmp	L2027
	.p2align 4,,10
	.p2align 3
L2036:
	movzbl	14241(%ebx), %edi
	movl	%edi, %eax
	testb	%al, %al
	je	L1999
	xorl	%eax, %eax
	cmpl	$768, (%edx)
	movl	%esi, %ecx
	sete	%al
	xorl	%edx, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ZN7ImGuiIO11AddKeyEventE8ImGuiKeyb.part.0
	pushl	%ecx
	pushl	%ecx
	jmp	L1964
	.p2align 4,,10
	.p2align 3
L2375:
	movl	$4, -56(%ebp)
	movl	$2, -48(%ebp)
	jmp	L2008
	.p2align 4,,10
	.p2align 3
L2467:
	ucomiss	%xmm3, %xmm1
	jp	L2377
	je	L1981
L2377:
	subl	$1, %eax
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%eax, %xmm3
	jmp	L1981
	.p2align 4,,10
	.p2align 3
L2459:
	movl	3524(%ebx), %eax
	xorl	%edx, %edx
	call	__ZN7ImGuiIO13AddFocusEventEb.isra.0
	jmp	L1999
L2214:
	movl	$534, %edi
	.p2align 4
	.p2align 3
L2090:
	cmpb	$0, 14241(%ebx)
	je	L2148
	cmpl	$768, (%edx)
	movl	%edx, -48(%ebp)
	movl	%esi, %ecx
	sete	%al
	movl	%edi, (%esp)
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	call	__ZN7ImGuiIO11AddKeyEventE8ImGuiKeyb.part.0
	movl	-48(%ebp), %edx
	subl	$8, %esp
	movl	20(%edx), %eax
L2148:
	movl	16(%edx), %edx
	cmpl	$-1, %edx
	cmovne	%edx, %eax
	cmpl	$511, %eax
	ja	L1999
	movl	%edi, 200(%ebx,%eax,4)
	movl	%eax, 200(%ebx,%edi,4)
	jmp	L1999
L2219:
	movl	$529, %edi
	jmp	L2090
L2220:
	movl	$528, %edi
	jmp	L2090
L2221:
	movl	$527, %edi
	jmp	L2090
L2222:
	movl	$616, %edi
	jmp	L2090
L2223:
	movl	$535, %edi
	jmp	L2090
L2224:
	movl	$610, %edi
	jmp	L2090
L2225:
	movl	$600, %edi
	jmp	L2090
L2226:
	movl	$609, %edi
	jmp	L2090
L2227:
	movl	$608, %edi
	jmp	L2090
L2228:
	movl	$607, %edi
	jmp	L2090
L2229:
	movl	$606, %edi
	jmp	L2090
L2230:
	movl	$605, %edi
	jmp	L2090
L2231:
	movl	$604, %edi
	jmp	L2090
L2232:
	movl	$603, %edi
	jmp	L2090
L2233:
	movl	$602, %edi
	jmp	L2090
L2234:
	movl	$601, %edi
	jmp	L2090
L2235:
	movl	$615, %edi
	jmp	L2090
L2236:
	movl	$614, %edi
	jmp	L2090
L2237:
	movl	$613, %edi
	jmp	L2090
L2238:
	movl	$612, %edi
	jmp	L2090
L2239:
	movl	$611, %edi
	jmp	L2090
L2240:
	movl	$597, %edi
	jmp	L2090
L2241:
	movl	$515, %edi
	jmp	L2090
L2242:
	movl	$516, %edi
	jmp	L2090
L2243:
	movl	$513, %edi
	jmp	L2090
L2244:
	movl	$514, %edi
	jmp	L2090
L2245:
	movl	$518, %edi
	jmp	L2090
L2246:
	movl	$520, %edi
	jmp	L2090
L2247:
	movl	$517, %edi
	jmp	L2090
L2248:
	movl	$519, %edi
	jmp	L2090
L2249:
	movl	$521, %edi
	jmp	L2090
L2250:
	movl	$599, %edi
	jmp	L2090
L2251:
	movl	$596, %edi
	jmp	L2090
L2252:
	movl	$598, %edi
	jmp	L2090
L2253:
	movl	$583, %edi
	jmp	L2090
L2254:
	movl	$582, %edi
	jmp	L2090
L2255:
	movl	$581, %edi
	jmp	L2090
L2256:
	movl	$580, %edi
	jmp	L2090
L2257:
	movl	$579, %edi
	jmp	L2090
L2258:
	movl	$578, %edi
	jmp	L2090
L2259:
	movl	$577, %edi
	jmp	L2090
L2260:
	movl	$576, %edi
	jmp	L2090
L2261:
	movl	$575, %edi
	jmp	L2090
L2262:
	movl	$574, %edi
	jmp	L2090
L2263:
	movl	$573, %edi
	jmp	L2090
L2264:
	movl	$572, %edi
	jmp	L2090
L2089:
	movl	$595, %edi
	jmp	L2090
L2215:
	movl	$533, %edi
	jmp	L2090
L2216:
	movl	$532, %edi
	jmp	L2090
L2217:
	movl	$531, %edi
	jmp	L2090
L2218:
	movl	$530, %edi
	jmp	L2090
L2143:
	cmpb	$0, 14241(%ebx)
	je	L2147
	cmpl	$768, (%edx)
	movl	%edx, -48(%ebp)
	movl	%esi, %ecx
	sete	%al
	movl	$512, (%esp)
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	call	__ZN7ImGuiIO11AddKeyEventE8ImGuiKeyb.part.0
	pushl	%eax
	pushl	%eax
	movl	-48(%ebp), %edx
	movl	20(%edx), %eax
L2147:
	movl	$512, %edi
	jmp	L2148
L2144:
	movl	$523, %edi
	jmp	L2090
L2365:
	movl	$526, %edi
	jmp	L2090
L2366:
	movl	$525, %edi
	jmp	L2090
L2362:
	movl	$586, %edi
	jmp	L2090
L2363:
	movl	$585, %edi
	jmp	L2090
L2145:
	movl	$584, %edi
	jmp	L2090
L2364:
	movl	$524, %edi
	jmp	L2090
L2354:
	movl	$541, %edi
	jmp	L2090
L2355:
	movl	$540, %edi
	jmp	L2090
L2356:
	movl	$539, %edi
	jmp	L2090
L2357:
	movl	$538, %edi
	jmp	L2090
L2358:
	movl	$537, %edi
	jmp	L2090
L2359:
	movl	$536, %edi
	jmp	L2090
L2360:
	movl	$588, %edi
	jmp	L2090
L2361:
	movl	$587, %edi
	jmp	L2090
L2338:
	movl	$551, %edi
	jmp	L2090
L2339:
	movl	$550, %edi
	jmp	L2090
L2340:
	movl	$549, %edi
	jmp	L2090
L2341:
	movl	$548, %edi
	jmp	L2090
L2342:
	movl	$547, %edi
	jmp	L2090
L2343:
	movl	$546, %edi
	jmp	L2090
L2344:
	movl	$594, %edi
	jmp	L2090
L2345:
	movl	$593, %edi
	jmp	L2090
L2346:
	movl	$592, %edi
	jmp	L2090
L2347:
	movl	$591, %edi
	jmp	L2090
L2348:
	movl	$590, %edi
	jmp	L2090
L2349:
	movl	$589, %edi
	jmp	L2090
L2350:
	movl	$545, %edi
	jmp	L2090
L2351:
	movl	$544, %edi
	jmp	L2090
L2352:
	movl	$543, %edi
	jmp	L2090
L2353:
	movl	$542, %edi
	jmp	L2090
L2318:
	movl	$571, %edi
	jmp	L2090
L2319:
	movl	$570, %edi
	jmp	L2090
L2320:
	movl	$569, %edi
	jmp	L2090
L2321:
	movl	$568, %edi
	jmp	L2090
L2317:
	movl	$522, %edi
	jmp	L2090
L2322:
	movl	$567, %edi
	jmp	L2090
L2323:
	movl	$566, %edi
	jmp	L2090
L2324:
	movl	$565, %edi
	jmp	L2090
L2325:
	movl	$564, %edi
	jmp	L2090
L2326:
	movl	$563, %edi
	jmp	L2090
L2327:
	movl	$562, %edi
	jmp	L2090
L2328:
	movl	$561, %edi
	jmp	L2090
L2329:
	movl	$560, %edi
	jmp	L2090
L2330:
	movl	$559, %edi
	jmp	L2090
L2331:
	movl	$558, %edi
	jmp	L2090
L2332:
	movl	$557, %edi
	jmp	L2090
L2333:
	movl	$556, %edi
	jmp	L2090
L2334:
	movl	$555, %edi
	jmp	L2090
L2335:
	movl	$554, %edi
	jmp	L2090
L2336:
	movl	$553, %edi
	jmp	L2090
L2337:
	movl	$552, %edi
	jmp	L2090
	.p2align 4,,10
	.p2align 3
L2011:
	subl	$1, %edi
	subl	$24, %ecx
	cmpl	$-1, %edi
	jne	L2013
	movl	-68(%ebp), %eax
L2010:
	movl	-52(%ebp), %edi
	movl	-48(%ebp), %ecx
	movzbl	3536(%edi,%ecx), %ecx
	jmp	L2370
	.p2align 4,,10
	.p2align 3
L2469:
	subl	$1, %edx
	subl	$24, %eax
	cmpl	$-1, %edx
	jne	L1991
L1989:
	movss	3528(%esi), %xmm0
	movss	3532(%esi), %xmm2
	jmp	L2371
	.p2align 4,,10
	.p2align 3
L2456:
	movl	8(%edx), %eax
	movl	$0, 64(%esi)
	movl	%eax, 16(%esi)
	jmp	L1999
	.p2align 4,,10
	.p2align 3
L2033:
	movl	20(%edx), %eax
	cmpl	$127, %eax
	jg	L2034
	cmpl	$7, %eax
	jle	L2036
	leal	-8(%eax), %ecx
	cmpl	$119, %ecx
	ja	L2036
	jmp	*L2266(,%ecx,4)
	.section .rdata,"dr"
	.align 4
L2266:
	.long	L2144
	.long	L2147
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2366
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2365
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2364
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2145
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2363
	.long	L2362
	.long	L2361
	.long	L2360
	.long	L2359
	.long	L2358
	.long	L2357
	.long	L2356
	.long	L2355
	.long	L2354
	.long	L2353
	.long	L2352
	.long	L2351
	.long	L2350
	.long	L2036
	.long	L2349
	.long	L2036
	.long	L2348
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2347
	.long	L2346
	.long	L2345
	.long	L2036
	.long	L2036
	.long	L2344
	.long	L2343
	.long	L2342
	.long	L2341
	.long	L2340
	.long	L2339
	.long	L2338
	.long	L2337
	.long	L2336
	.long	L2335
	.long	L2334
	.long	L2333
	.long	L2332
	.long	L2331
	.long	L2330
	.long	L2329
	.long	L2328
	.long	L2327
	.long	L2326
	.long	L2325
	.long	L2324
	.long	L2323
	.long	L2322
	.long	L2321
	.long	L2320
	.long	L2319
	.long	L2318
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2036
	.long	L2317
	.text
	.p2align 4,,10
	.p2align 3
L2373:
	movl	$1, -56(%ebp)
	movl	$0, -48(%ebp)
	jmp	L2008
	.p2align 4,,10
	.p2align 3
L1976:
	movl	8(%edx), %eax
	movss	%xmm0, -52(%ebp)
	movss	%xmm1, -48(%ebp)
	movl	%eax, (%esp)
	call	_SDL_GetWindowFromID
	leal	-44(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	-40(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_SDL_GetWindowPosition
	cmpb	$0, 14241(%ebx)
	je	L1999
	xorps	%xmm2, %xmm2
	movss	-52(%ebp), %xmm0
	movss	-48(%ebp), %xmm1
	cvtsi2ssl	-40(%ebp), %xmm2
	movl	3524(%ebx), %esi
	movl	_GImGui, %ebx
	addss	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2ssl	-44(%ebp), %xmm2
	addss	%xmm2, %xmm1
	jmp	L1978
L2460:
	cmpb	$5, -48(%ebp)
	je	L2154
	jmp	L1999
	.p2align 4,,10
	.p2align 3
L2374:
	movl	$2, -56(%ebp)
	movl	$1, -48(%ebp)
	jmp	L2008
	.p2align 4,,10
	.p2align 3
L2458:
	movl	3524(%ebx), %eax
	movl	$1, %edx
	call	__ZN7ImGuiIO13AddFocusEventEb.isra.0
	jmp	L1999
	.p2align 4,,10
	.p2align 3
L2470:
	leal	1(%eax), %edx
	testl	%eax, %eax
	jne	L1994
	movl	$8, %edi
	cmpl	%edi, %edx
	cmovge	%edx, %edi
L1995:
	leal	(%edi,%edi,2), %eax
	addl	$1, 188(%ebx)
	sall	$3, %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %ebx
	movl	14388(%esi), %eax
	testl	%eax, %eax
	je	L1997
	movl	14380(%esi), %edx
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	leal	(%edx,%edx,2), %edx
	sall	$3, %edx
	movl	%edx, 8(%esp)
	call	_memcpy
	movl	14388(%esi), %eax
	testl	%eax, %eax
	je	L1998
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L1998
	subl	$1, 188(%edx)
L1998:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1997:
	movl	%ebx, 14388(%esi)
	movl	14380(%esi), %eax
	movl	%edi, 14384(%esi)
	jmp	L1996
	.p2align 4,,10
	.p2align 3
L2468:
	ucomiss	%xmm1, %xmm0
	jp	L2378
	je	L1986
L2378:
	subl	$1, %eax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	jmp	L1986
	.p2align 4,,10
	.p2align 3
L2457:
	movl	16048(%ebx), %eax
	addl	$1, %eax
	movl	%eax, 64(%esi)
	jmp	L1999
	.p2align 4,,10
	.p2align 3
L2464:
	leal	1(%eax), %edx
	testl	%eax, %eax
	jne	L2003
	movl	$8, %eax
	cmpl	%eax, %edx
	cmovl	%eax, %edx
L2004:
	leal	(%edx,%edx,2), %eax
	addl	$1, 188(%ebx)
	sall	$3, %eax
	movl	$0, 4(%esp)
	movl	%edx, -48(%ebp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-48(%ebp), %edx
	movl	%eax, %ebx
	movl	14388(%esi), %eax
	testl	%eax, %eax
	je	L2006
	movl	14380(%esi), %ecx
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	leal	(%ecx,%ecx,2), %ecx
	sall	$3, %ecx
	movl	%ecx, 8(%esp)
	call	_memcpy
	movl	14388(%esi), %eax
	movl	-48(%ebp), %edx
	testl	%eax, %eax
	je	L2007
	movl	_GImGui, %ecx
	testl	%ecx, %ecx
	je	L2007
	subl	$1, 188(%ecx)
L2007:
	movl	%edx, -48(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-48(%ebp), %edx
L2006:
	movl	%ebx, 14388(%esi)
	movl	14380(%esi), %eax
	movl	%edx, 14384(%esi)
	jmp	L2005
	.p2align 4,,10
	.p2align 3
L2465:
	leal	1(%eax), %edi
	testl	%eax, %eax
	jne	L2015
	movl	$8, %eax
	cmpl	%eax, %edi
	cmovl	%eax, %edi
L2016:
	leal	(%edi,%edi,2), %eax
	addl	$1, 188(%ebx)
	sall	$3, %eax
	movl	%edx, -48(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-48(%ebp), %edx
	movl	%eax, %ebx
	movl	-52(%ebp), %eax
	movl	14388(%eax), %ecx
	testl	%ecx, %ecx
	je	L2018
	movl	14380(%eax), %eax
	movl	%ecx, 4(%esp)
	movl	%ebx, (%esp)
	leal	(%eax,%eax,2), %eax
	sall	$3, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	-52(%ebp), %eax
	movl	-48(%ebp), %edx
	movl	14388(%eax), %ecx
	testl	%ecx, %ecx
	je	L2019
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L2019
	subl	$1, 188(%eax)
L2019:
	movl	%edx, -48(%ebp)
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-48(%ebp), %edx
L2018:
	movl	-52(%ebp), %eax
	movl	%ebx, 14388(%eax)
	movl	%edi, 14384(%eax)
	movl	14380(%eax), %eax
	jmp	L2017
	.p2align 4,,10
	.p2align 3
L2462:
	movb	$1, 71(%edx)
	jmp	L1999
	.p2align 4,,10
	.p2align 3
L2376:
	movl	$8, -56(%ebp)
	movl	$3, -48(%ebp)
	jmp	L2008
	.p2align 4,,10
	.p2align 3
L1994:
	movl	%eax, %edi
	shrl	$31, %edi
	addl	%eax, %edi
	sarl	%edi
	addl	%eax, %edi
	cmpl	%edx, %edi
	cmovl	%edx, %edi
	cmpl	%edi, %eax
	jge	L1993
	jmp	L1995
L2463:
	movb	$1, 69(%edx)
	jmp	L1964
L2003:
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	addl	%eax, %ecx
	cmpl	%edx, %ecx
	cmovge	%ecx, %edx
	cmpl	%edx, %eax
	jge	L2002
	jmp	L2004
L2015:
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	addl	%eax, %ecx
	cmpl	%edi, %ecx
	cmovge	%ecx, %edi
	cmpl	%edi, %eax
	jge	L2014
	jmp	L2016
	.cfi_endproc
LFE145:
	.p2align 4
	.globl	__ZL29ImGui_ImplSDL2_UpdateMonitorsv.lto_priv.0
	.def	__ZL29ImGui_ImplSDL2_UpdateMonitorsv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL29ImGui_ImplSDL2_UpdateMonitorsv.lto_priv.0:
LFB167:
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
	subl	$96, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	_GImGui, %esi
	movl	14360(%esi), %eax
	testl	%eax, %eax
	jns	L2472
	addl	$1, 188(%esi)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %ebx
	movl	14364(%esi), %eax
	testl	%eax, %eax
	je	L2473
	movl	14356(%esi), %edx
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	leal	(%edx,%edx,8), %edx
	sall	$2, %edx
	movl	%edx, 8(%esp)
	call	_memcpy
	movl	14364(%esi), %eax
	testl	%eax, %eax
	je	L2474
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2474
	subl	$1, 188(%edx)
L2474:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2473:
	movl	%ebx, 14364(%esi)
	movl	$0, 14360(%esi)
L2472:
	movl	$0, 14356(%esi)
	call	_SDL_GetNumVideoDisplays
	movl	%eax, 24(%esp)
	testl	%eax, %eax
	jle	L2471
	xorl	%edi, %edi
	leal	48(%esp), %ebx
	jmp	L2484
	.p2align 4,,10
	.p2align 3
L2477:
	movl	14364(%esi), %edx
L2480:
	leal	(%eax,%eax,8), %eax
	addl	$1, %edi
	leal	(%edx,%eax,4), %eax
	movl	(%ebx), %edx
	movl	%edx, (%eax)
	movl	4(%ebx), %edx
	movl	%edx, 4(%eax)
	movl	8(%ebx), %edx
	movl	%edx, 8(%eax)
	movl	12(%ebx), %edx
	movl	%edx, 12(%eax)
	movl	16(%ebx), %edx
	movl	%edx, 16(%eax)
	movl	20(%ebx), %edx
	movl	%edx, 20(%eax)
	movl	24(%ebx), %edx
	movl	%edx, 24(%eax)
	movl	28(%ebx), %edx
	movl	%edx, 28(%eax)
	movl	32(%ebx), %edx
	movl	%edx, 32(%eax)
	addl	$1, 14356(%esi)
	cmpl	%edi, 24(%esp)
	je	L2471
L2484:
	leal	32(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	movl	$0x3f800000, 80(%esp)
	call	_SDL_GetDisplayBounds
	xorps	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	leal	32(%esp), %eax
	cvtsi2ssl	32(%esp), %xmm1
	movl	%eax, 4(%esp)
	cvtsi2ssl	36(%esp), %xmm0
	movl	%edi, (%esp)
	movss	%xmm1, 48(%esp)
	xorps	%xmm1, %xmm1
	movss	%xmm0, 52(%esp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	40(%esp), %xmm1
	cvtsi2ssl	44(%esp), %xmm0
	movss	%xmm1, 56(%esp)
	movss	%xmm0, 60(%esp)
	call	_SDL_GetDisplayUsableBounds
	xorps	%xmm0, %xmm0
	xorps	%xmm2, %xmm2
	xorps	%xmm1, %xmm1
	xorps	%xmm3, %xmm3
	cvtsi2ssl	32(%esp), %xmm0
	leal	28(%esp), %eax
	movl	%edi, (%esp)
	cvtsi2ssl	36(%esp), %xmm2
	movl	$0, 12(%esp)
	cvtsi2ssl	40(%esp), %xmm1
	movl	$0, 8(%esp)
	cvtsi2ssl	44(%esp), %xmm3
	movl	%eax, 4(%esp)
	movl	$0x00000000, 28(%esp)
	unpcklps	%xmm2, %xmm0
	unpcklps	%xmm3, %xmm1
	movlhps	%xmm1, %xmm0
	movups	%xmm0, 64(%esp)
	call	_SDL_GetDisplayDPI
	testl	%eax, %eax
	jne	L2476
	movss	28(%esp), %xmm0
	divss	LC91, %xmm0
	movss	%xmm0, 80(%esp)
L2476:
	movl	14356(%esi), %eax
	cmpl	14360(%esi), %eax
	jne	L2477
	leal	1(%eax), %ecx
	testl	%eax, %eax
	jne	L2478
	movl	$8, %eax
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%eax, 20(%esp)
L2479:
	movl	20(%esp), %eax
	movl	_GImGui, %edx
	leal	(%eax,%eax,8), %eax
	sall	$2, %eax
	testl	%edx, %edx
	je	L2481
	addl	$1, 188(%edx)
L2481:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %edx
	movl	14364(%esi), %eax
	testl	%eax, %eax
	je	L2482
	movl	14356(%esi), %ecx
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	leal	(%ecx,%ecx,8), %ecx
	movl	%edx, 16(%esp)
	sall	$2, %ecx
	movl	%ecx, 8(%esp)
	call	_memcpy
	movl	14364(%esi), %ecx
	movl	16(%esp), %edx
	testl	%ecx, %ecx
	je	L2483
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L2483
	subl	$1, 188(%eax)
L2483:
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	movl	%edx, 16(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	16(%esp), %edx
L2482:
	movl	20(%esp), %eax
	movl	%edx, 14364(%esi)
	movl	%eax, 14360(%esi)
	movl	14356(%esi), %eax
	jmp	L2480
	.p2align 4,,10
	.p2align 3
L2478:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	cmpl	%ecx, %edx
	cmovge	%edx, %ecx
	movl	%ecx, 20(%esp)
	cmpl	%ecx, %eax
	jge	L2477
	jmp	L2479
	.p2align 4,,10
	.p2align 3
L2471:
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
LFE167:
	.p2align 4
	.globl	__ZN5ImGui33SetWindowClipRectBeforeSetChannelEP11ImGuiWindowRK6ImRect
	.def	__ZN5ImGui33SetWindowClipRectBeforeSetChannelEP11ImGuiWindowRK6ImRect;	.scl	2;	.type	32;	.endef
__ZN5ImGui33SetWindowClipRectBeforeSetChannelEP11ImGuiWindowRK6ImRect:
LFB173:
	.cfi_startproc
	movl	(%edx), %ecx
	movups	(%edx), %xmm0
	movl	%ecx, 584(%eax)
	movl	4(%edx), %ecx
	movl	%ecx, 588(%eax)
	movl	8(%edx), %ecx
	movl	%ecx, 592(%eax)
	movl	12(%edx), %edx
	movl	%edx, 596(%eax)
	movl	676(%eax), %edx
	movups	%xmm0, 96(%edx)
	movl	676(%eax), %edx
	movl	60(%edx), %eax
	addl	$268435455, %eax
	sall	$4, %eax
	addl	68(%edx), %eax
	movups	%xmm0, (%eax)
	ret
	.cfi_endproc
LFE173:
	.section .rdata,"dr"
LC92:
	.ascii "   \0"
	.text
	.p2align 4
	.globl	__ZN5ImGui4TextEPKcz.constprop.0
	.def	__ZN5ImGui4TextEPKcz.constprop.0;	.scl	2;	.type	32;	.endef
__ZN5ImGui4TextEPKcz.constprop.0:
LFB175:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	leal	20(%esp), %eax
	movl	$LC92, (%esp)
	movl	%eax, 4(%esp)
	movl	%eax, 8(%esp)
	call	__ZN5ImGui5TextVEPKcPc
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE175:
	.set	LC1,LC30+12
	.section .rdata,"dr"
	.align 4
LC2:
	.long	1073741824
	.align 4
LC4:
	.long	1065353199
	.align 4
LC5:
	.long	1078530011
	.align 16
LC30:
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	1065353216
	.align 16
LC31:
	.long	1031127695
	.long	1031127695
	.long	1031127695
	.long	1064346583
	.align 16
LC32:
	.long	1034147594
	.long	1034147594
	.long	1034147594
	.long	1064346583
	.align 16
LC33:
	.long	1054615798
	.long	1054615798
	.long	1056964608
	.long	1056964608
	.align 16
LC34:
	.long	1042536202
	.long	1049918177
	.long	1056293519
	.long	1057635697
	.align 16
LC35:
	.long	1048911544
	.long	1058474557
	.long	1065017672
	.long	1053609165
	.align 16
LC36:
	.long	1048911544
	.long	1058474557
	.long	1065017672
	.long	1059816735
	.align 16
LC37:
	.long	1025758986
	.long	1025758986
	.long	1025758986
	.long	1065353216
	.align 16
LC38:
	.long	1042536202
	.long	1049918177
	.long	1056293519
	.long	1065353216
	.align 16
LC39:
	.long	0
	.long	0
	.long	0
	.long	1057132380
	.align 16
LC40:
	.long	1041194025
	.long	1041194025
	.long	1041194025
	.long	1065353216
	.align 16
LC41:
	.long	1017370378
	.long	1017370378
	.long	1017370378
	.long	1057467924
	.align 16
LC42:
	.long	1050589266
	.long	1050589266
	.long	1050589266
	.long	1065353216
	.align 16
LC43:
	.long	1053944709
	.long	1053944709
	.long	1053944709
	.long	1065353216
	.align 16
LC44:
	.long	1057132380
	.long	1057132380
	.long	1057132380
	.long	1065353216
	.align 16
LC45:
	.long	1048911544
	.long	1058474557
	.long	1065017672
	.long	1065353216
	.align 16
LC46:
	.long	1047904911
	.long	1057300152
	.long	1063339950
	.long	1065353216
	.align 16
LC47:
	.long	1031127695
	.long	1057467924
	.long	1065017672
	.long	1065353216
	.align 16
LC48:
	.long	1048911544
	.long	1058474557
	.long	1065017672
	.long	1050589266
	.align 16
LC49:
	.long	1048911544
	.long	1058474557
	.long	1065017672
	.long	1061997773
	.align 16
LC50:
	.long	1036831949
	.long	1053609165
	.long	1061158912
	.long	1061662228
	.align 16
LC51:
	.long	1036831949
	.long	1053609165
	.long	1061158912
	.long	1065353216
	.align 16
LC52:
	.long	1048911544
	.long	1058474557
	.long	1065017672
	.long	1045220557
	.align 16
LC53:
	.long	1048911544
	.long	1058474557
	.long	1065017672
	.long	1064514355
	.align 16
LC54:
	.long	1043878379
	.long	1051931442
	.long	1058306786
	.long	1063037960
	.align 16
LC55:
	.long	1045220556
	.long	1053944708
	.long	1059984507
	.long	1065353216
	.align 16
LC56:
	.long	1032536982
	.long	1037100382
	.long	1041730898
	.long	1064890165
	.align 16
LC57:
	.long	1040925588
	.long	1048978652
	.long	1054414471
	.long	1065353216
	.align 16
LC58:
	.long	1048911544
	.long	1058474557
	.long	1065017672
	.long	1060320051
	.align 16
LC59:
	.long	1045220557
	.long	1045220557
	.long	1045220557
	.long	1065353216
	.align 16
LC60:
	.long	1058810102
	.long	1058810102
	.long	1058810102
	.long	1065353216
	.align 16
LC61:
	.long	1065353216
	.long	1054615798
	.long	1051931443
	.long	1065353216
	.align 16
LC62:
	.long	1063675494
	.long	1060320051
	.long	0
	.long	1065353216
	.align 16
LC63:
	.long	1065353216
	.long	1058642330
	.long	0
	.long	1065353216
	.align 16
LC64:
	.long	1044549468
	.long	1044549468
	.long	1045220557
	.long	1065353216
	.align 16
LC65:
	.long	1050589266
	.long	1050589266
	.long	1051931443
	.long	1065353216
	.align 16
LC66:
	.long	1047233823
	.long	1047233823
	.long	1048576000
	.long	1065353216
	.align 16
LC67:
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1031127695
	.align 16
LC68:
	.long	1048911544
	.long	1058474557
	.long	1065017672
	.long	1051931443
	.align 16
LC69:
	.long	1065353216
	.long	1065353216
	.long	0
	.long	1063675494
	.align 16
LC70:
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1060320051
	.align 16
LC71:
	.long	1061997773
	.long	1061997773
	.long	1061997773
	.long	1045220557
	.align 16
LC72:
	.long	1061997773
	.long	1061997773
	.long	1061997773
	.long	1051931443
	.set	LC74,LC30
	.align 8
LC76:
	.long	2
	.long	2
	.align 4
LC77:
	.long	1111490560
	.align 4
LC78:
	.long	1086918619
	.align 4
LC79:
	.long	925353388
	.align 16
LC80:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 4
LC81:
	.long	897988541
	.align 4
LC82:
	.long	1120403456
	.align 4
LC83:
	.long	1056629064
	.set	LC84,LC52+12
	.align 4
LC85:
	.long	1085271520
	.align 8
LC89:
	.long	3
	.long	1
	.align 8
LC90:
	.long	6
	.long	2
	.align 4
LC91:
	.long	1119879168
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	__ZL11FreeWrapperPvS_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_acosf;	.scl	2;	.type	32;	.endef
	.def	_ceilf;	.scl	2;	.type	32;	.endef
	.def	__Z18ImTextCharFromUtf8PjPKcS1_;	.scl	2;	.type	32;	.endef
	.def	_SDL_free;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetClipboardText;	.scl	2;	.type	32;	.endef
	.def	_SDL_SetClipboardText;	.scl	2;	.type	32;	.endef
	.def	_SDL_SetTextInputRect;	.scl	2;	.type	32;	.endef
	.def	_SDL_StartTextInput;	.scl	2;	.type	32;	.endef
	.def	_SDL_StopTextInput;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetWindowPosition;	.scl	2;	.type	32;	.endef
	.def	_SDL_GL_MakeCurrent;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetWindowFlags;	.scl	2;	.type	32;	.endef
	.def	__ZL13MallocWrapperjPv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_SDL_GL_GetCurrentContext;	.scl	2;	.type	32;	.endef
	.def	_SDL_GL_SetAttribute;	.scl	2;	.type	32;	.endef
	.def	_SDL_CreateWindow;	.scl	2;	.type	32;	.endef
	.def	_SDL_GL_CreateContext;	.scl	2;	.type	32;	.endef
	.def	_SDL_GL_SetSwapInterval;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetWindowWMInfo;	.scl	2;	.type	32;	.endef
	.def	_SDL_GL_DeleteContext;	.scl	2;	.type	32;	.endef
	.def	_SDL_DestroyWindow;	.scl	2;	.type	32;	.endef
	.def	_SDL_ShowWindow;	.scl	2;	.type	32;	.endef
	.def	_SDL_SetWindowPosition;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetWindowSize;	.scl	2;	.type	32;	.endef
	.def	_SDL_SetWindowSize;	.scl	2;	.type	32;	.endef
	.def	_SDL_SetWindowTitle;	.scl	2;	.type	32;	.endef
	.def	_SDL_SetWindowOpacity;	.scl	2;	.type	32;	.endef
	.def	_SDL_RaiseWindow;	.scl	2;	.type	32;	.endef
	.def	_SDL_GL_SwapWindow;	.scl	2;	.type	32;	.endef
	.def	_SDL_Vulkan_CreateSurface;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	__ZN15ImGuiTextBuffer7appendfEPKcz;	.scl	2;	.type	32;	.endef
	.def	__ZN15ImGuiTextBuffer6appendEPKcS1_.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_memcmp;	.scl	2;	.type	32;	.endef
	.def	_sincosf;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_memmove;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetWindowFromID;	.scl	2;	.type	32;	.endef
	.def	__ZN7ImGuiIO11AddKeyEventE8ImGuiKeyb.part.0;	.scl	2;	.type	32;	.endef
	.def	__ZN7ImGuiIO13AddFocusEventEb.isra.0;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetNumVideoDisplays;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetDisplayBounds;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetDisplayUsableBounds;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetDisplayDPI;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui5TextVEPKcPc;	.scl	2;	.type	32;	.endef
