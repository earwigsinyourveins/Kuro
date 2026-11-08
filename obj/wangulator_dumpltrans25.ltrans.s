	.file	"<artificial>"
	.text
	.p2align 4
	.def	__ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i;	.scl	3;	.type	32;	.endef
__ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i:
LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	movl	%ebx, -8(%ebp)
	.cfi_offset 3, -16
	movl	%edx, %ebx
	movzbl	264(%eax), %edx
	testl	%ecx, %ecx
	je	L2
	movl	%esi, -4(%ebp)
	.cfi_offset 6, -12
	movsbl	%dl, %esi
	testl	%ecx, %esi
	movl	-4(%ebp), %esi
	.cfi_restore 6
	je	L1
L2:
	andl	$-15, %edx
	xorps	%xmm2, %xmm2
	movss	68(%eax), %xmm1
	xorps	%xmm3, %xmm3
	movb	%dl, 264(%eax)
	movl	$0, %ecx
	movss	72(%eax), %xmm4
	movss	LC0, %xmm0
	movss	%xmm0, 268(%eax)
	movss	%xmm0, 272(%eax)
	cvttss2sil	4(%ebx), %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm2
	cvttss2sil	(%ebx), %edx
	movss	%xmm2, 72(%eax)
	cvtsi2ssl	%edx, %xmm0
	movaps	%xmm0, %xmm5
	movss	%xmm0, 68(%eax)
	subss	%xmm1, %xmm5
	ucomiss	%xmm3, %xmm5
	setnp	%dl
	cmovne	%ecx, %edx
	testb	%dl, %dl
	je	L7
	movaps	%xmm2, %xmm5
	subss	%xmm4, %xmm5
	ucomiss	%xmm3, %xmm5
	setnp	%dl
	cmovne	%ecx, %edx
	testb	%dl, %dl
	jne	L1
L7:
	unpcklps	%xmm2, %xmm0
	unpcklps	%xmm4, %xmm1
	movlhps	%xmm1, %xmm1
	movlhps	%xmm0, %xmm0
	subps	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movaps	%xmm0, %xmm2
	shufps	$85, %xmm0, %xmm1
	testb	$1, 13(%eax)
	je	L21
L5:
	movss	296(%eax), %xmm3
	movups	312(%eax), %xmm6
	addss	%xmm2, %xmm3
	addps	%xmm6, %xmm0
	addss	328(%eax), %xmm2
	movss	%xmm3, 296(%eax)
	movss	300(%eax), %xmm3
	movss	%xmm2, 328(%eax)
	addss	%xmm1, %xmm3
	addss	332(%eax), %xmm1
	movups	%xmm0, 312(%eax)
	movss	%xmm3, 300(%eax)
	movss	%xmm1, 332(%eax)
L1:
	movl	-8(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L21:
	.cfi_restore_state
	movl	_GImGui, %edx
	xorps	%xmm3, %xmm3
	comiss	23424(%edx), %xmm3
	jb	L5
	movss	28(%edx), %xmm3
	movss	%xmm3, 23424(%edx)
	jmp	L5
	.cfi_endproc
LFE0:
	.p2align 4
	.def	__ZN5ImGui13SetWindowSizeEP11ImGuiWindowRK6ImVec2i;	.scl	3;	.type	32;	.endef
__ZN5ImGui13SetWindowSizeEP11ImGuiWindowRK6ImVec2i:
LFB3:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	%ebx, (%esp)
	.cfi_offset 3, -12
	movl	%ecx, %ebx
	movzbl	265(%eax), %ecx
	testl	%ebx, %ebx
	je	L23
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	movsbl	%cl, %esi
	testl	%ebx, %esi
	movl	4(%esp), %esi
	.cfi_restore 6
	je	L22
L23:
	andl	$-15, %ecx
	xorps	%xmm0, %xmm0
	movss	84(%eax), %xmm2
	movss	88(%eax), %xmm4
	movb	%cl, 265(%eax)
	comiss	(%edx), %xmm0
	setnb	%cl
	addl	%ecx, %ecx
	movb	%cl, 252(%eax)
	comiss	4(%edx), %xmm0
	setnb	%cl
	addl	%ecx, %ecx
	movb	%cl, 253(%eax)
	movss	(%edx), %xmm1
	comiss	%xmm1, %xmm0
	jnb	L49
	cvttss2sil	%xmm1, %ecx
	xorps	%xmm1, %xmm1
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%ecx, %xmm1
	movss	%xmm1, 84(%eax)
	movss	4(%edx), %xmm0
	comiss	%xmm0, %xmm3
	jnb	L50
L46:
	cvttss2sil	%xmm0, %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movss	%xmm0, 88(%eax)
L30:
	ucomiss	%xmm1, %xmm2
	jp	L31
	jne	L31
	ucomiss	88(%eax), %xmm4
	jp	L31
	je	L22
L31:
	testb	$1, 13(%eax)
	jne	L22
	movl	_GImGui, %eax
	xorps	%xmm0, %xmm0
	comiss	23424(%eax), %xmm0
	jnb	L51
L22:
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L49:
	.cfi_restore_state
	movb	$0, 255(%eax)
	movss	4(%edx), %xmm0
	xorps	%xmm3, %xmm3
	movaps	%xmm2, %xmm1
	comiss	%xmm0, %xmm3
	jb	L46
L50:
	movb	$0, 255(%eax)
	jmp	L30
	.p2align 4,,10
	.p2align 3
L51:
	movss	28(%eax), %xmm0
	movss	%xmm0, 23424(%eax)
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE3:
	.p2align 4
	.def	__ZN5ImGui17GetKeyMagnitude2dE8ImGuiKeyS0_S0_S0_;	.scl	3;	.type	32;	.endef
__ZN5ImGui17GetKeyMagnitude2dE8ImGuiKeyS0_S0_S0_:
LFB4:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	sall	$4, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%edx, %ebx
	movl	%ecx, %edx
	sall	$4, %edx
	sall	$4, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	_GImGui, %ecx
	movl	16(%esp), %esi
	movss	3576(%ebx,%ecx), %xmm1
	subss	3576(%ecx,%eax), %xmm1
	sall	$4, %esi
	movss	3576(%esi,%ecx), %xmm0
	subss	3576(%ecx,%edx), %xmm0
	movss	%xmm1, (%esp)
	movl	(%esp), %eax
	movss	%xmm0, (%esp)
	movl	(%esp), %edx
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE4:
	.p2align 4
	.def	__ZL38CalcNextScrollFromScrollTargetAndClampP11ImGuiWindow;	.scl	3;	.type	32;	.endef
__ZL38CalcNextScrollFromScrollTargetAndClampP11ImGuiWindow:
LFB7:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	xorl	%edx, %edx
	xorps	%xmm2, %xmm2
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$16, %esp
	.cfi_def_cfa_offset 28
	movl	176(%eax), %ebx
	movl	172(%eax), %ecx
	movss	136(%eax), %xmm0
	movss	132(%eax), %xmm1
	addss	152(%eax), %xmm0
	addss	148(%eax), %xmm1
	movl	%ebx, 12(%esp)
	addss	144(%eax), %xmm0
	addss	140(%eax), %xmm1
	movl	%ecx, 8(%esp)
	movzbl	226(%eax), %esi
	leal	8(%esp), %ecx
	movss	%xmm1, (%esp)
	movss	%xmm0, 4(%esp)
L66:
	movss	188(%eax,%edx,4), %xmm0
	movss	LC0, %xmm7
	comiss	%xmm0, %xmm7
	ja	L55
	movss	(%ecx,%edx,4), %xmm0
L56:
	movaps	%xmm2, %xmm1
	cmpless	%xmm0, %xmm1
	andps	%xmm1, %xmm0
	cvttss2sil	%xmm0, %ebx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebx, %xmm0
	movl	%esi, %ebx
	movss	%xmm0, (%ecx,%edx,4)
	testb	%bl, %bl
	jne	L63
	cmpb	$0, 228(%eax)
	jne	L63
	movss	180(%eax,%edx,4), %xmm3
	movaps	%xmm0, %xmm1
	minss	%xmm3, %xmm1
	movss	%xmm1, (%ecx,%edx,4)
L63:
	cmpl	$1, %edx
	jne	L67
	movl	8(%esp), %eax
	movl	12(%esp), %edx
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
L55:
	.cfi_restore_state
	movss	204(%eax,%edx,4), %xmm3
	movss	84(%eax,%edx,4), %xmm1
	movss	196(%eax,%edx,4), %xmm4
	movss	(%esp,%edx,4), %xmm5
	comiss	%xmm2, %xmm3
	jbe	L58
	movaps	%xmm3, %xmm6
	addss	%xmm2, %xmm6
	comiss	%xmm0, %xmm6
	jb	L71
	mulss	%xmm4, %xmm0
	addss	%xmm2, %xmm0
L58:
	subss	%xmm5, %xmm1
	mulss	%xmm4, %xmm1
	subss	%xmm1, %xmm0
	jmp	L56
	.p2align 4,,10
	.p2align 3
L67:
	movl	$1, %edx
	jmp	L66
	.p2align 4,,10
	.p2align 3
L71:
	movss	180(%eax,%edx,4), %xmm6
	addss	%xmm1, %xmm6
	subss	%xmm5, %xmm6
	movaps	%xmm6, %xmm7
	subss	%xmm3, %xmm7
	comiss	%xmm7, %xmm0
	jb	L58
	movaps	%xmm6, %xmm3
	subss	%xmm5, %xmm1
	subss	%xmm0, %xmm3
	mulss	%xmm4, %xmm1
	mulss	%xmm4, %xmm3
	addss	%xmm3, %xmm0
	subss	%xmm1, %xmm0
	jmp	L56
	.cfi_endproc
LFE7:
	.p2align 4
	.def	__ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_PiRK6ImRectS6_24ImGuiPopupPositionPolicy.isra.0;	.scl	3;	.type	32;	.endef
__ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_PiRK6ImRectS6_24ImGuiPopupPositionPolicy.isra.0:
LFB9:
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
	subl	$48, %esp
	movl	8(%ebp), %eax
	movss	4(%edx), %xmm7
	movss	%xmm0, 28(%esp)
	movss	4(%ebx), %xmm0
	movss	(%edx), %xmm6
	movss	%xmm1, 16(%esp)
	movss	4(%eax), %xmm1
	movss	8(%eax), %xmm5
	movss	%xmm2, 12(%esp)
	movss	12(%eax), %xmm2
	comiss	%xmm0, %xmm1
	movss	%xmm7, 24(%esp)
	movaps	%xmm1, %xmm3
	movss	%xmm2, 8(%esp)
	ja	L74
	subss	%xmm7, %xmm2
	movaps	%xmm2, %xmm3
	minss	%xmm0, %xmm3
L74:
	movss	(%eax), %xmm0
	movss	(%ebx), %xmm4
	comiss	%xmm4, %xmm0
	movaps	%xmm0, %xmm2
	ja	L77
	movaps	%xmm5, %xmm7
	subss	%xmm6, %xmm7
	movaps	%xmm7, %xmm2
	minss	%xmm4, %xmm2
L77:
	movups	LC2, %xmm4
	movl	(%esi), %edi
	movups	%xmm4, 32(%esp)
	cmpl	$-1, %edi
	jne	L80
	movl	32(%esp), %ecx
	cmpl	$-1, %ecx
	je	L81
	movl	$0, 20(%esp)
L82:
	testl	%ecx, %ecx
	jne	L87
	movss	28(%esp), %xmm4
	subss	%xmm0, %xmm4
	comiss	%xmm4, %xmm6
	ja	L86
L84:
	movss	28(%esp), %xmm2
	xorl	%ecx, %ecx
	subss	%xmm6, %xmm2
L91:
	movaps	%xmm0, %xmm4
	movl	%ecx, (%esi)
	cmpnless	%xmm2, %xmm4
	andps	%xmm4, %xmm0
	andnps	%xmm2, %xmm4
	orps	%xmm0, %xmm4
	movss	%xmm4, 28(%esp)
L127:
	movaps	%xmm1, %xmm0
	movl	28(%esp), %eax
	cmpnless	%xmm3, %xmm0
	andps	%xmm0, %xmm1
	andnps	%xmm3, %xmm0
	orps	%xmm1, %xmm0
	movss	%xmm0, 28(%esp)
	movl	28(%esp), %edx
L124:
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
L80:
	.cfi_restore_state
	testl	%edi, %edi
	jne	L83
	movss	28(%esp), %xmm4
	subss	%xmm0, %xmm4
	comiss	%xmm4, %xmm6
	jbe	L84
	movl	32(%esp), %ecx
	movl	$0, 20(%esp)
	testl	%ecx, %ecx
	je	L81
	.p2align 4
	.p2align 3
L87:
	cmpl	$1, %ecx
	je	L128
L89:
	cmpl	$2, %ecx
	jne	L93
	movss	16(%esp), %xmm4
	movss	24(%esp), %xmm7
	subss	%xmm1, %xmm4
	comiss	%xmm4, %xmm7
	jbe	L129
L86:
	addl	$1, 20(%esp)
	cmpl	$4, 20(%esp)
	jne	L90
	movl	$-1, (%esi)
	movss	(%ebx), %xmm1
	movss	4(%ebx), %xmm0
	cmpl	$2, 16(%ebp)
	je	L130
	movss	(%edx), %xmm3
	movss	4(%edx), %xmm5
	movss	(%eax), %xmm2
	addss	%xmm3, %xmm1
	minss	8(%eax), %xmm1
	addss	%xmm5, %xmm0
	minss	12(%eax), %xmm0
	subss	%xmm3, %xmm1
	movaps	%xmm0, %xmm3
	movaps	%xmm2, %xmm0
	subss	%xmm5, %xmm3
	movaps	%xmm1, %xmm4
	movss	4(%eax), %xmm1
	cmpnless	%xmm4, %xmm0
	andps	%xmm0, %xmm2
	andnps	%xmm4, %xmm0
	orps	%xmm2, %xmm0
	movss	%xmm0, 28(%esp)
	jmp	L127
	.p2align 4,,10
	.p2align 3
L81:
	movl	$1, 20(%esp)
L90:
	movl	20(%esp), %ecx
	movl	32(%esp,%ecx,4), %ecx
	cmpl	%ecx, %edi
	jne	L82
	jmp	L86
	.p2align 4,,10
	.p2align 3
L128:
	movaps	%xmm5, %xmm4
	subss	12(%esp), %xmm4
	comiss	%xmm4, %xmm6
	ja	L86
	movss	12(%esp), %xmm2
	jmp	L91
	.p2align 4,,10
	.p2align 3
L93:
	cmpl	$3, %ecx
	jne	L91
	movss	8(%esp), %xmm4
	subss	12(%ebp), %xmm4
	movss	24(%esp), %xmm7
	comiss	%xmm4, %xmm7
	ja	L86
	movss	12(%ebp), %xmm3
	jmp	L91
	.p2align 4,,10
	.p2align 3
L129:
	movss	16(%esp), %xmm3
	subss	24(%esp), %xmm3
	jmp	L91
	.p2align 4,,10
	.p2align 3
L83:
	movl	$-1, 20(%esp)
	movl	%edi, %ecx
	cmpl	$1, %edi
	jne	L89
	movss	12(%esp), %xmm7
	movaps	%xmm5, %xmm4
	subss	%xmm7, %xmm4
	comiss	%xmm4, %xmm6
	ja	L110
	movaps	%xmm7, %xmm2
	jmp	L91
	.p2align 4,,10
	.p2align 3
L110:
	movl	$0, 20(%esp)
	jmp	L90
	.p2align 4,,10
	.p2align 3
L130:
	movss	LC3, %xmm2
	addss	%xmm2, %xmm1
	addss	%xmm2, %xmm0
	movss	%xmm1, 28(%esp)
	movl	28(%esp), %eax
	movss	%xmm0, 28(%esp)
	movl	28(%esp), %edx
	jmp	L124
	.cfi_endproc
LFE9:
	.p2align 4
	.def	__ZN5ImGuiL12NavScoreItemEP16ImGuiNavItemData;	.scl	3;	.type	32;	.endef
__ZN5ImGuiL12NavScoreItemEP16ImGuiNavItemData:
LFB11:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	%eax, %ecx
	movl	_GImGui, %eax
	movl	%ebx, 28(%esp)
	movl	16148(%eax), %edx
	.cfi_offset 3, -12
	movl	384(%edx), %ebx
	cmpl	%ebx, 18732(%eax)
	jne	L135
	movss	18792(%eax), %xmm1
	movss	18352(%eax), %xmm4
	movss	18796(%eax), %xmm6
	movss	18800(%eax), %xmm3
	movss	%xmm1, 16(%esp)
	movss	18804(%eax), %xmm1
	movss	18340(%eax), %xmm7
	addl	$1, 18824(%eax)
	movss	18344(%eax), %xmm2
	movss	18348(%eax), %xmm0
	movl	18680(%eax), %ebx
	movss	%xmm4, (%esp)
	movss	%xmm6, 12(%esp)
	movss	%xmm3, 24(%esp)
	movss	%xmm1, 20(%esp)
	cmpl	%ebx, 824(%edx)
	je	L238
	movl	%esi, 32(%esp)
	cmpl	$1, 18788(%eax)
	.cfi_offset 6, -8
	jbe	L239
L142:
	movss	584(%edx), %xmm1
	movss	592(%edx), %xmm3
	comiss	%xmm7, %xmm1
	ja	L189
	movaps	%xmm3, %xmm4
	comiss	%xmm0, %xmm1
	minss	%xmm7, %xmm4
	movaps	%xmm4, %xmm7
	ja	L190
L248:
	minss	%xmm0, %xmm3
	movaps	%xmm3, %xmm0
L144:
	movss	16(%esp), %xmm4
	comiss	%xmm0, %xmm4
	ja	L240
L217:
	xorl	%edx, %edx
	comiss	24(%esp), %xmm7
	xorps	%xmm4, %xmm4
	ja	L241
L148:
	movss	12(%esp), %xmm6
	movss	20(%esp), %xmm3
	movss	LC6, %xmm5
	movss	(%esp), %xmm1
	subss	%xmm6, %xmm3
	subss	%xmm2, %xmm1
	mulss	%xmm3, %xmm5
	addss	%xmm6, %xmm5
	movss	LC7, %xmm6
	mulss	%xmm1, %xmm6
	addss	%xmm2, %xmm6
	comiss	%xmm6, %xmm5
	ja	L242
	mulss	LC6, %xmm1
	mulss	LC7, %xmm3
	addss	12(%esp), %xmm3
	addss	%xmm2, %xmm1
	comiss	%xmm3, %xmm1
	ja	L243
	xorps	%xmm1, %xmm1
L153:
	movss	%xmm4, 4(%esp)
	flds	4(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	fstps	4(%esp)
	movss	%xmm1, 8(%esp)
	flds	8(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	addss	%xmm7, %xmm0
	movss	24(%esp), %xmm5
	addss	16(%esp), %xmm5
	fstps	8(%esp)
	addss	(%esp), %xmm2
	movss	8(%esp), %xmm3
	addss	4(%esp), %xmm3
	subss	%xmm5, %xmm0
	movss	20(%esp), %xmm5
	addss	12(%esp), %xmm5
	movss	%xmm0, (%esp)
	subss	%xmm5, %xmm2
	flds	(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	fstps	(%esp)
	movss	%xmm2, 4(%esp)
	flds	4(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	fstps	4(%esp)
	movss	4(%esp), %xmm5
	addss	(%esp), %xmm5
	testb	%dl, %dl
	je	L158
	movss	%xmm4, (%esp)
	flds	(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	fstps	4(%esp)
	movss	%xmm1, (%esp)
	flds	(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	movss	4(%esp), %xmm0
	fstps	(%esp)
	comiss	(%esp), %xmm0
	xorps	%xmm0, %xmm0
	ja	L244
	comiss	%xmm0, %xmm1
	movaps	%xmm3, %xmm7
	movaps	%xmm1, %xmm2
	movl	$3, %edx
	movaps	%xmm4, %xmm0
	ja	L161
	movl	$2, %edx
	.p2align 4
	.p2align 3
L161:
	movl	18780(%eax), %ebx
	movss	32(%ecx), %xmm6
	movl	%ebx, %esi
	cmpl	%ebx, %edx
	je	L168
L173:
	xorl	%edx, %edx
L169:
	ucomiss	LC0, %xmm6
	jp	L236
	jne	L236
	movss	40(%ecx), %xmm1
	comiss	%xmm7, %xmm1
	jbe	L236
	cmpl	$1, 18732(%eax)
	je	L245
L236:
	movl	32(%esp), %esi
	.cfi_restore 6
	movl	28(%esp), %ebx
	movl	%edx, %eax
	addl	$36, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L238:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -12
	movss	596(%edx), %xmm1
	comiss	%xmm2, %xmm1
	ja	L246
	.p2align 4
	.p2align 3
L135:
	xorl	%edx, %edx
L131:
	movl	28(%esp), %ebx
	movl	%edx, %eax
	addl	$36, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L246:
	.cfi_restore_state
	movss	588(%edx), %xmm3
	comiss	%xmm3, %xmm4
	jbe	L135
	movss	592(%edx), %xmm6
	comiss	%xmm7, %xmm6
	jbe	L135
	movss	584(%edx), %xmm5
	comiss	%xmm5, %xmm0
	jbe	L135
	maxss	%xmm2, %xmm3
	maxss	%xmm7, %xmm5
	movl	%esi, 32(%esp)
	.cfi_offset 6, -8
	minss	(%esp), %xmm1
	minss	%xmm0, %xmm6
	movaps	%xmm3, %xmm2
	movaps	%xmm5, %xmm7
	movss	%xmm1, (%esp)
	movaps	%xmm6, %xmm0
	cmpl	$1, 18788(%eax)
	ja	L142
L239:
	movss	588(%edx), %xmm1
	movss	596(%edx), %xmm3
	comiss	%xmm2, %xmm1
	ja	L187
	movaps	%xmm3, %xmm4
	minss	%xmm2, %xmm4
	movaps	%xmm4, %xmm2
L143:
	movss	(%esp), %xmm4
	comiss	%xmm4, %xmm1
	ja	L188
	minss	%xmm4, %xmm3
	movss	%xmm3, (%esp)
	jmp	L144
	.p2align 4,,10
	.p2align 3
L168:
	comiss	%xmm3, %xmm6
	ja	L247
	ucomiss	%xmm6, %xmm3
	jp	L173
	jne	L173
	movss	36(%ecx), %xmm3
	comiss	%xmm5, %xmm3
	jbe	L225
	movss	%xmm5, 36(%ecx)
	movl	$1, %edx
	jmp	L169
	.p2align 4,,10
	.p2align 3
L189:
	comiss	%xmm0, %xmm1
	movaps	%xmm1, %xmm7
	jbe	L248
L190:
	movss	16(%esp), %xmm4
	movaps	%xmm1, %xmm0
	comiss	%xmm0, %xmm4
	jbe	L217
L240:
	movaps	%xmm0, %xmm4
	subss	16(%esp), %xmm4
L237:
	xorps	%xmm1, %xmm1
	movl	$1, %edx
	ucomiss	%xmm1, %xmm4
	setp	4(%esp)
	movzbl	4(%esp), %ebx
	cmove	%ebx, %edx
	jmp	L148
	.p2align 4,,10
	.p2align 3
L158:
	xorps	%xmm6, %xmm6
	movl	$1, %ebx
	ucomiss	%xmm6, %xmm0
	setp	%dl
	cmovne	%ebx, %edx
	testb	%dl, %dl
	jne	L207
	ucomiss	%xmm6, %xmm2
	setp	%dl
	cmovne	%ebx, %edx
	testb	%dl, %dl
	jne	L207
	xorl	%edx, %edx
	xorps	%xmm7, %xmm7
	movl	18684(%eax), %esi
	cmpl	%esi, 18312(%eax)
	setnb	%dl
	movaps	%xmm7, %xmm2
	movaps	%xmm7, %xmm0
	jmp	L161
	.p2align 4,,10
	.p2align 3
L242:
	subss	%xmm5, %xmm6
	movaps	%xmm6, %xmm1
L152:
	xorps	%xmm3, %xmm3
	movl	$1, %ebx
	ucomiss	%xmm3, %xmm1
	setp	4(%esp)
	movzbl	4(%esp), %esi
	cmovne	%ebx, %esi
	movl	%esi, %ebx
	andb	%dl, %bl
	je	L249
	cmpnltss	%xmm4, %xmm3
	movaps	%xmm4, %xmm5
	movl	%ebx, %edx
	movss	LC5, %xmm4
	movss	LC4, %xmm6
	divss	LC8, %xmm5
	andps	%xmm3, %xmm4
	andnps	%xmm6, %xmm3
	orps	%xmm4, %xmm3
	movaps	%xmm5, %xmm4
	addss	%xmm3, %xmm4
	jmp	L153
	.p2align 4,,10
	.p2align 3
L207:
	movss	%xmm0, (%esp)
	flds	(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	fstps	4(%esp)
	movss	%xmm2, (%esp)
	flds	(%esp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	movss	4(%esp), %xmm7
	fstps	(%esp)
	comiss	(%esp), %xmm7
	ja	L250
	xorps	%xmm6, %xmm6
	xorl	%edx, %edx
	movaps	%xmm5, %xmm7
	comiss	%xmm6, %xmm2
	seta	%dl
	addl	$2, %edx
	jmp	L161
	.p2align 4,,10
	.p2align 3
L243:
	subss	%xmm3, %xmm1
	jmp	L152
	.p2align 4,,10
	.p2align 3
L241:
	movaps	%xmm7, %xmm4
	subss	24(%esp), %xmm4
	jmp	L237
	.p2align 4,,10
	.p2align 3
L188:
	movss	%xmm1, (%esp)
	jmp	L144
	.p2align 4,,10
	.p2align 3
L187:
	movaps	%xmm1, %xmm2
	jmp	L143
	.p2align 4,,10
	.p2align 3
L244:
	xorl	%edx, %edx
	comiss	%xmm0, %xmm4
	movaps	%xmm3, %xmm7
	movaps	%xmm1, %xmm2
	movaps	%xmm4, %xmm0
	seta	%dl
	jmp	L161
	.p2align 4,,10
	.p2align 3
L247:
	movss	%xmm3, 32(%ecx)
	movss	%xmm5, 36(%ecx)
L172:
	movl	32(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	$1, %edx
	jmp	L131
	.p2align 4,,10
	.p2align 3
L250:
	.cfi_restore_state
	xorps	%xmm6, %xmm6
	xorl	%edx, %edx
	movaps	%xmm5, %xmm7
	comiss	%xmm6, %xmm0
	seta	%dl
	jmp	L161
	.p2align 4,,10
	.p2align 3
L245:
	movl	18680(%eax), %eax
	testb	$16, 15(%eax)
	jne	L236
	testl	%esi, %esi
	jne	L182
	xorps	%xmm1, %xmm1
	comiss	%xmm0, %xmm1
	jbe	L236
L183:
	movss	%xmm7, 40(%ecx)
	jmp	L172
	.p2align 4,,10
	.p2align 3
L249:
	orl	%esi, %edx
	jmp	L153
	.p2align 4,,10
	.p2align 3
L225:
	ucomiss	%xmm5, %xmm3
	jp	L173
	jne	L173
	leal	-2(%ebx), %edx
	cmpl	$1, %edx
	ja	L178
	movaps	%xmm1, %xmm4
L178:
	xorps	%xmm1, %xmm1
	comiss	%xmm4, %xmm1
	seta	%dl
	jmp	L169
L182:
	cmpl	$1, %esi
	je	L251
	cmpl	$2, %esi
	je	L252
	cmpl	$3, %esi
	jne	L236
	xorps	%xmm0, %xmm0
	comiss	%xmm0, %xmm2
	ja	L183
	jmp	L236
L251:
	xorps	%xmm1, %xmm1
	comiss	%xmm1, %xmm0
	ja	L183
	jmp	L236
L252:
	xorps	%xmm0, %xmm0
	comiss	%xmm2, %xmm0
	jbe	L236
	jmp	L183
	.cfi_endproc
LFE11:
	.p2align 4
	.def	__ZN5ImGuiL20NavApplyItemToResultEP16ImGuiNavItemData;	.scl	3;	.type	32;	.endef
__ZN5ImGuiL20NavApplyItemToResultEP16ImGuiNavItemData:
LFB15:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	_GImGui, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	movl	16148(%edx), %ecx
	movl	%ecx, (%eax)
	movl	18312(%edx), %ebx
	movl	%ebx, 4(%eax)
	movl	18280(%edx), %ebx
	movl	%ebx, 8(%eax)
	movl	18316(%edx), %ebx
	movl	%ebx, 28(%eax)
	movss	316(%ecx), %xmm2
	movss	312(%ecx), %xmm0
	movups	18340(%edx), %xmm1
	movl	-4(%ebp), %ebx
	unpcklps	%xmm2, %xmm0
	movlhps	%xmm0, %xmm0
	subps	%xmm0, %xmm1
	movups	%xmm1, 12(%eax)
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE15:
	.p2align 4
	.def	__ZN5ImGui33NavMoveRequestResolveWithLastItemEP16ImGuiNavItemData;	.scl	3;	.type	32;	.endef
__ZN5ImGui33NavMoveRequestResolveWithLastItemEP16ImGuiNavItemData:
LFB17:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%eax, %edx
	movl	_GImGui, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	movl	16148(%eax), %ecx
	movb	$0, 18765(%eax)
	movl	%ecx, (%edx)
	movl	18312(%eax), %ebx
	movl	%ebx, 4(%edx)
	movl	18280(%eax), %ebx
	movl	%ebx, 8(%edx)
	movl	18316(%eax), %ebx
	movl	%ebx, 28(%edx)
	movss	316(%ecx), %xmm2
	movss	312(%ecx), %xmm0
	movups	18340(%eax), %xmm1
	movl	_GImGui, %eax
	unpcklps	%xmm2, %xmm0
	movlhps	%xmm0, %xmm0
	subps	%xmm0, %xmm1
	movups	%xmm1, 12(%edx)
	movzbl	18765(%eax), %edx
	testb	%dl, %dl
	jne	L256
	movzbl	18741(%eax), %edx
L256:
	movb	%dl, 18740(%eax)
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE17:
	.p2align 4
	.def	__ZN5ImGuiL28NavRestoreLastChildNavWindowEP11ImGuiWindow;	.scl	3;	.type	32;	.endef
__ZN5ImGuiL28NavRestoreLastChildNavWindowEP11ImGuiWindow:
LFB18:
	.cfi_startproc
	movl	%eax, %ecx
	movl	852(%eax), %eax
	testl	%eax, %eax
	je	L259
	cmpb	$0, 224(%eax)
	jne	L297
L259:
	movl	940(%ecx), %eax
	testl	%eax, %eax
	je	L298
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	L298
	movl	(%eax), %edx
	testl	%edx, %edx
	jle	L298
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	leal	(%edx,%edx,2), %edx
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	sall	$4, %edx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	xorl	%esi, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	8(%eax), %eax
	addl	%eax, %edx
L278:
	movl	%eax, %ebx
	testl	%esi, %esi
	jne	L277
L263:
	movl	8(%eax), %esi
	addl	$48, %eax
	testl	%esi, %esi
	je	L273
	cmpb	$0, 224(%esi)
	je	L273
	movl	%ebx, %esi
	cmpl	%edx, %eax
	je	L274
L305:
	movl	%eax, %ebx
L277:
	movl	16(%esi), %edi
L275:
	cmpl	16(%eax), %edi
	jge	L303
	movl	8(%eax), %ebp
	testl	%ebp, %ebp
	je	L303
	addl	$48, %eax
	cmpb	$0, 224(%ebp)
	je	L276
	movl	%ebx, %esi
	cmpl	%eax, %edx
	jne	L305
	.p2align 4
	.p2align 3
L268:
	testl	%esi, %esi
	je	L262
L274:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	8(%esi), %eax
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
L262:
	.cfi_restore_state
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	%ecx, %eax
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
L303:
	.cfi_restore_state
	addl	$48, %eax
	cmpl	%edx, %eax
	je	L268
	movl	%eax, %ebx
	jmp	L275
	.p2align 4,,10
	.p2align 3
L273:
	cmpl	%eax, %edx
	je	L262
	movl	%eax, %ebx
	jmp	L263
	.p2align 4,,10
	.p2align 3
L276:
	cmpl	%eax, %edx
	jne	L278
	jmp	L268
	.p2align 4,,10
	.p2align 3
L298:
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movl	%ecx, %eax
L297:
	ret
	.cfi_endproc
LFE18:
	.p2align 4
	.def	__ZN5ImGuiL22NavCalcPreferredRefPosEv;	.scl	3;	.type	32;	.endef
__ZN5ImGuiL22NavCalcPreferredRefPosEv:
LFB20:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	_GImGui, %ecx
	cmpb	$0, 18738(%ecx)
	jne	L309
	cmpb	$0, 18739(%ecx)
	jne	L332
L309:
	movss	3528(%ecx), %xmm0
	comiss	LC10, %xmm0
	leal	3528(%ecx), %eax
	jnb	L333
L312:
	movss	19380(%ecx), %xmm0
	movss	19384(%ecx), %xmm1
L314:
	addss	LC4, %xmm0
L315:
	movss	%xmm0, (%esp)
	movl	(%esp), %eax
	movss	%xmm1, (%esp)
	movl	(%esp), %edx
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L333:
	.cfi_restore_state
	movss	4(%eax), %xmm1
	comiss	LC10, %xmm1
	jnb	L314
	jmp	L312
	.p2align 4,,10
	.p2align 3
L332:
	movl	%ebx, 28(%esp)
	.cfi_offset 3, -8
	movl	18680(%ecx), %ebx
	testl	%ebx, %ebx
	je	L334
	movl	18732(%ecx), %eax
	movss	312(%ebx), %xmm0
	movss	316(%ebx), %xmm1
	sall	$4, %eax
	addl	%ebx, %eax
	movss	876(%eax), %xmm2
	movss	872(%eax), %xmm3
	addss	%xmm1, %xmm2
	addss	%xmm0, %xmm3
	addss	868(%eax), %xmm1
	addss	864(%eax), %xmm0
	movl	16048(%ecx), %eax
	cmpl	%eax, 624(%ebx)
	je	L320
	movss	188(%ebx), %xmm4
	ucomiss	LC0, %xmm4
	jp	L317
	jne	L317
	movss	192(%ebx), %xmm4
	ucomiss	LC0, %xmm4
	jp	L317
	jne	L317
L320:
	movaps	%xmm2, %xmm5
	movss	14468(%ecx), %xmm4
	subss	%xmm0, %xmm3
	movl	48(%ebx), %eax
	subss	%xmm1, %xmm5
	minss	%xmm5, %xmm4
	subss	%xmm4, %xmm2
	movss	LC11, %xmm4
	mulss	14464(%ecx), %xmm4
	minss	%xmm3, %xmm4
	movss	12(%eax), %xmm3
	comiss	%xmm2, %xmm3
	movaps	%xmm4, %xmm1
	addss	%xmm0, %xmm1
	movss	8(%eax), %xmm0
	ja	L325
	addss	20(%eax), %xmm3
	minss	%xmm2, %xmm3
L325:
	comiss	%xmm1, %xmm0
	ja	L326
	addss	16(%eax), %xmm0
	minss	%xmm1, %xmm0
L326:
	cvttss2sil	%xmm3, %eax
	xorps	%xmm1, %xmm1
	movl	28(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	cvtsi2ssl	%eax, %xmm1
	cvttss2sil	%xmm0, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	jmp	L315
	.p2align 4,,10
	.p2align 3
L334:
	.cfi_restore_state
	movl	28(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	jmp	L309
	.p2align 4,,10
	.p2align 3
L317:
	.cfi_restore_state
	movl	%ebx, %eax
	movl	%ecx, 8(%esp)
	movss	%xmm0, 24(%esp)
	movss	%xmm1, 20(%esp)
	movss	%xmm3, 16(%esp)
	movss	%xmm2, 12(%esp)
	call	__ZL38CalcNextScrollFromScrollTargetAndClampP11ImGuiWindow
	movss	24(%esp), %xmm0
	movl	8(%esp), %ecx
	movl	%eax, (%esp)
	movss	176(%ebx), %xmm4
	movss	20(%esp), %xmm1
	movss	16(%esp), %xmm3
	movl	%edx, 4(%esp)
	movss	172(%ebx), %xmm5
	subss	4(%esp), %xmm4
	subss	(%esp), %xmm5
	movss	12(%esp), %xmm2
	addss	%xmm4, %xmm1
	addss	%xmm4, %xmm2
	addss	%xmm5, %xmm0
	addss	%xmm5, %xmm3
	jmp	L320
	.cfi_endproc
LFE20:
	.p2align 4
	.def	__ZN5ImGui25FindBestWindowPosForPopupEP11ImGuiWindow;	.scl	3;	.type	32;	.endef
__ZN5ImGui25FindBestWindowPosForPopupEP11ImGuiWindow:
LFB22:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%eax, %ecx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	andl	$-16, %esp
	subl	$60, %esp
	.cfi_offset 3, -12
	movl	64(%eax), %eax
	movl	_GImGui, %ebx
	testl	%eax, %eax
	js	L336
	leal	(%eax,%eax,8), %edx
	movl	14364(%ebx), %eax
	leal	(%eax,%edx,4), %eax
	movss	16(%eax), %xmm0
	movss	20(%eax), %xmm2
	movss	28(%eax), %xmm3
	movss	24(%eax), %xmm1
	addss	%xmm2, %xmm3
	addss	%xmm0, %xmm1
L337:
	movss	14604(%ebx), %xmm5
	movaps	%xmm3, %xmm6
	movss	14600(%ebx), %xmm4
	subss	%xmm2, %xmm6
	movaps	%xmm5, %xmm7
	addss	%xmm5, %xmm7
	comiss	%xmm7, %xmm6
	jbe	L354
	addss	%xmm5, %xmm2
	movaps	%xmm5, %xmm6
	xorps	LC13, %xmm6
L338:
	movaps	%xmm4, %xmm7
	movaps	%xmm1, %xmm5
	addss	%xmm4, %xmm7
	subss	%xmm0, %xmm5
	comiss	%xmm7, %xmm5
	jbe	L355
	addss	%xmm4, %xmm0
	movaps	%xmm4, %xmm5
	xorps	LC13, %xmm5
L340:
	addss	%xmm5, %xmm1
	addss	%xmm6, %xmm3
	movl	12(%ecx), %eax
	unpcklps	%xmm2, %xmm0
	unpcklps	%xmm3, %xmm1
	movlhps	%xmm1, %xmm0
	testl	$268435456, %eax
	je	L342
	movl	824(%ecx), %eax
	cmpb	$0, 394(%eax)
	jne	L357
	movss	68(%eax), %xmm3
	movss	76(%eax), %xmm2
	movss	14488(%ebx), %xmm1
	movss	LC0, %xmm4
	addss	%xmm3, %xmm2
	addss	%xmm1, %xmm3
	subss	%xmm1, %xmm2
	subss	212(%eax), %xmm2
	movss	LC12, %xmm1
L344:
	leal	256(%ecx), %ebx
	leal	76(%ecx), %edx
	movl	$0, 8(%esp)
	leal	68(%ecx), %eax
	leal	44(%esp), %ecx
	movups	%xmm0, 44(%esp)
	movaps	%xmm3, %xmm0
	movl	%ecx, (%esp)
	movl	%ebx, %ecx
	movss	%xmm4, 4(%esp)
	call	__ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_PiRK6ImRectS6_24ImGuiPopupPositionPolicy.isra.0
	movl	-4(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L354:
	.cfi_restore_state
	xorps	%xmm6, %xmm6
	jmp	L338
	.p2align 4,,10
	.p2align 3
L342:
	testl	$67108864, %eax
	jne	L358
	testl	$33554432, %eax
	je	L347
	movss	14608(%ebx), %xmm4
	movl	%ecx, 32(%esp)
	movups	%xmm0, 12(%esp)
	movss	%xmm4, 28(%esp)
	call	__ZN5ImGuiL22NavCalcPreferredRefPosEv
	cmpb	$0, 18738(%ebx)
	movl	32(%esp), %ecx
	movl	%eax, 36(%esp)
	movss	36(%esp), %xmm2
	movl	%edx, 40(%esp)
	movss	40(%esp), %xmm3
	movaps	%xmm2, %xmm4
	movups	12(%esp), %xmm0
	subss	LC15, %xmm4
	movaps	%xmm3, %xmm1
	subss	LC14, %xmm1
	jne	L348
	cmpb	$0, 18739(%ebx)
	je	L348
	testb	$4, 8(%ebx)
	jne	L348
	addss	LC14, %xmm3
	addss	LC15, %xmm2
	jmp	L349
	.p2align 4,,10
	.p2align 3
L355:
	xorps	%xmm5, %xmm5
	jmp	L340
	.p2align 4,,10
	.p2align 3
L357:
	movss	596(%eax), %xmm4
	movss	588(%eax), %xmm1
	movss	LC12, %xmm3
	movss	LC0, %xmm2
	jmp	L344
	.p2align 4,,10
	.p2align 3
L336:
	movl	48(%ecx), %eax
	movss	12(%eax), %xmm2
	movss	20(%eax), %xmm3
	movss	8(%eax), %xmm0
	movss	16(%eax), %xmm1
	addss	%xmm2, %xmm3
	addss	%xmm0, %xmm1
	jmp	L337
	.p2align 4,,10
	.p2align 3
L347:
	movl	68(%ecx), %eax
	movl	72(%ecx), %edx
	movl	-4(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L358:
	.cfi_restore_state
	movss	68(%ecx), %xmm2
	movss	72(%ecx), %xmm1
	leal	76(%ecx), %edx
	leal	68(%ecx), %eax
	leal	256(%ecx), %ebx
	leal	44(%esp), %ecx
	movups	%xmm0, 44(%esp)
	movl	%ecx, (%esp)
	movaps	%xmm2, %xmm0
	movl	%ebx, %ecx
	movl	$0, 8(%esp)
	movss	%xmm1, 4(%esp)
	call	__ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_PiRK6ImRectS6_24ImGuiPopupPositionPolicy.isra.0
	movl	-4(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L348:
	.cfi_restore_state
	movss	28(%esp), %xmm5
	mulss	LC16, %xmm5
	addss	%xmm5, %xmm3
	addss	%xmm5, %xmm2
L349:
	leal	256(%ecx), %ebx
	leal	76(%ecx), %edx
	movups	%xmm0, 44(%esp)
	movaps	%xmm4, %xmm0
	leal	44(%esp), %ecx
	leal	36(%esp), %eax
	movl	$2, 8(%esp)
	movl	%ecx, (%esp)
	movl	%ebx, %ecx
	movss	%xmm3, 4(%esp)
	call	__ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_PiRK6ImRectS6_24ImGuiPopupPositionPolicy.isra.0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE22:
	.p2align 4
	.globl	__ZL30WindowSettingsHandler_ClearAllP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0
	.def	__ZL30WindowSettingsHandler_ClearAllP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL30WindowSettingsHandler_ClearAllP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0:
LFB26:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	movl	8(%ebp), %edx
	movl	16076(%edx), %eax
	testl	%eax, %eax
	je	L360
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L361:
	movl	16084(%edx), %ecx
	movl	(%ecx,%eax,4), %ecx
	addl	$1, %eax
	movl	$-1, 672(%ecx)
	cmpl	%eax, 16076(%edx)
	jne	L361
L360:
	movl	23460(%edx), %eax
	testl	%eax, %eax
	je	L359
	movl	_GImGui, %ecx
	movl	$0, 23452(%edx)
	movl	$0, 23456(%edx)
	testl	%ecx, %ecx
	je	L363
	subl	$1, 188(%ecx)
L363:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 8(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	8(%ebp), %edx
	movl	$0, 23460(%edx)
L359:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE26:
	.p2align 4
	.def	__ZN5ImGui18SetCurrentViewportEP11ImGuiWindowP14ImGuiViewportP.isra.0;	.scl	3;	.type	32;	.endef
__ZN5ImGui18SetCurrentViewportEP11ImGuiWindowP14ImGuiViewportP.isra.0:
LFB30:
	.cfi_startproc
	movl	_GImGui, %edx
	testl	%eax, %eax
	je	L381
	movl	16048(%edx), %ecx
	movl	%ecx, 76(%eax)
	cmpl	18624(%edx), %eax
	je	L379
	movss	40(%eax), %xmm0
	movl	%eax, 18624(%edx)
	movss	%xmm0, 18620(%edx)
	movl	14328(%edx), %edx
	testl	%edx, %edx
	je	L382
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	%eax, (%esp)
	call	*%edx
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L379:
	ret
	.p2align 4,,10
	.p2align 3
L381:
	movl	18624(%edx), %eax
	testl	%eax, %eax
	je	L383
	movl	$0x3f800000, 18620(%edx)
	movl	$0, 18624(%edx)
	ret
	.p2align 4,,10
	.p2align 3
L382:
	ret
	.p2align 4,,10
	.p2align 3
L383:
	ret
	.cfi_endproc
LFE30:
	.p2align 4
	.def	__ZN5ImGuiL30GetWindowAlwaysWantOwnViewportEP11ImGuiWindow;	.scl	3;	.type	32;	.endef
__ZN5ImGuiL30GetWindowAlwaysWantOwnViewportEP11ImGuiWindow:
LFB31:
	.cfi_startproc
	movl	_GImGui, %edx
	movl	%eax, %ecx
	movzbl	100(%edx), %eax
	testb	%al, %al
	jne	L385
	testb	$8, 29(%ecx)
	je	L384
L385:
	testb	$4, 15505(%edx)
	je	L388
	movzbl	909(%ecx), %eax
	andl	$1, %eax
	jne	L388
	movl	12(%ecx), %edx
	testl	$318767104, %edx
	jne	L384
	andl	$201326592, %edx
	cmpl	$67108864, %edx
	setne	%al
L384:
	ret
	.p2align 4,,10
	.p2align 3
L388:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE31:
	.p2align 4
	.def	__ZN5ImGuiL29UpdateViewportPlatformMonitorEP14ImGuiViewportP;	.scl	3;	.type	32;	.endef
__ZN5ImGuiL29UpdateViewportPlatformMonitorEP14ImGuiViewportP:
LFB34:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$16, %esp
	.cfi_def_cfa_offset 28
	movl	_GImGui, %eax
	movl	14356(%eax), %ebx
	leal	-1(%ebx), %edx
	cmpl	$1, %ebx
	jle	L394
	movss	8(%esi), %xmm3
	movss	16(%esi), %xmm5
	movl	$-1, %ecx
	xorl	%edx, %edx
	movss	12(%esi), %xmm4
	movss	20(%esi), %xmm2
	addss	%xmm3, %xmm5
	movl	14364(%eax), %eax
	addss	%xmm4, %xmm2
	movss	%xmm4, (%esp)
	movaps	%xmm5, %xmm0
	movss	%xmm5, 8(%esp)
	subss	%xmm3, %xmm0
	movss	%xmm2, 4(%esp)
	subss	%xmm4, %xmm2
	mulss	%xmm2, %xmm0
	movss	LC4, %xmm2
	mulss	LC18, %xmm0
	movaps	%xmm2, %xmm1
	cmpless	%xmm0, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm2, %xmm1
	movss	LC17, %xmm2
	orps	%xmm0, %xmm1
	movss	%xmm1, 12(%esp)
	jmp	L408
	.p2align 4,,10
	.p2align 3
L419:
	movss	(%esp), %xmm7
	comiss	%xmm1, %xmm7
	jb	L416
	comiss	8(%esp), %xmm5
	jnb	L399
	movaps	%xmm6, %xmm4
	minss	%xmm7, %xmm4
L400:
	movaps	%xmm5, %xmm7
	minss	%xmm3, %xmm7
L403:
	comiss	4(%esp), %xmm1
	ja	L404
	movaps	%xmm6, %xmm1
	minss	4(%esp), %xmm1
L404:
	movss	8(%esp), %xmm6
	comiss	%xmm6, %xmm0
	ja	L405
	minss	%xmm6, %xmm5
	movaps	%xmm5, %xmm0
L405:
	subss	%xmm7, %xmm0
	subss	%xmm4, %xmm1
	mulss	%xmm1, %xmm0
	comiss	%xmm0, %xmm2
	maxss	%xmm0, %xmm2
	cmovbe	%edx, %ecx
	addl	$1, %edx
	cmpl	%edx, %ebx
	je	L407
	movss	12(%esp), %xmm7
	addl	$36, %eax
	comiss	%xmm2, %xmm7
	jbe	L407
L408:
	movss	(%eax), %xmm0
	movss	4(%eax), %xmm1
	movss	12(%eax), %xmm6
	movss	8(%eax), %xmm5
	comiss	%xmm0, %xmm3
	addss	%xmm1, %xmm6
	addss	%xmm0, %xmm5
	jnb	L419
	comiss	(%esp), %xmm1
	movaps	%xmm1, %xmm4
	jbe	L401
L402:
	comiss	%xmm3, %xmm0
	movaps	%xmm0, %xmm7
	ja	L403
	jmp	L400
	.p2align 4,,10
	.p2align 3
L399:
	comiss	4(%esp), %xmm6
	jnb	L394
L401:
	movaps	%xmm6, %xmm4
	minss	(%esp), %xmm4
	jmp	L402
	.p2align 4,,10
	.p2align 3
L416:
	comiss	(%esp), %xmm1
	movaps	%xmm1, %xmm4
	ja	L400
	movaps	%xmm6, %xmm4
	minss	(%esp), %xmm4
	jmp	L400
	.p2align 4,,10
	.p2align 3
L407:
	movl	%ecx, %edx
L394:
	movw	%dx, 104(%esi)
	addl	$16, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE34:
	.p2align 4
	.globl	__ZL30DockNodeComparerDepthMostFirstPKvS0_.lto_priv.0
	.def	__ZL30DockNodeComparerDepthMostFirstPKvS0_.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL30DockNodeComparerDepthMostFirstPKvS0_.lto_priv.0:
LFB36:
	.cfi_startproc
	movl	4(%esp), %eax
	xorl	%edx, %edx
	movl	(%eax), %ecx
	movl	8(%esp), %eax
	movl	(%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	L421
	.p2align 4
	.p2align 4
	.p2align 3
L422:
	movl	24(%eax), %eax
	addl	$1, %edx
	testl	%eax, %eax
	jne	L422
L421:
	movl	24(%ecx), %eax
	testl	%eax, %eax
	je	L420
	xorl	%ecx, %ecx
	.p2align 4
	.p2align 4
	.p2align 3
L424:
	movl	24(%eax), %eax
	addl	$1, %ecx
	testl	%eax, %eax
	jne	L424
	subl	%ecx, %edx
L420:
	movl	%edx, %eax
	ret
	.cfi_endproc
LFE36:
	.section .rdata,"dr"
LC19:
	.ascii "<NULL>\0"
LC20:
	.ascii "[focus] SetNavWindow(\"%s\")\12\0"
	.text
	.p2align 4
	.def	__ZN5ImGui12SetNavWindowEP11ImGuiWindow;	.scl	3;	.type	32;	.endef
__ZN5ImGui12SetNavWindowEP11ImGuiWindow:
LFB37:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	_GImGui, %edx
	movl	%edx, %ecx
	cmpl	%eax, 18680(%edx)
	je	L432
	testb	$2, 23576(%edx)
	jne	L442
L433:
	movl	%eax, 18680(%edx)
L432:
	xorl	%eax, %eax
	movb	$0, 18741(%edx)
	movw	%ax, 18764(%edx)
	movzbl	18765(%ecx), %eax
	testb	%al, %al
	jne	L435
	movzbl	18741(%ecx), %eax
L435:
	movb	%al, 18740(%ecx)
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L442:
	.cfi_restore_state
	movl	$LC19, %ecx
	testl	%eax, %eax
	je	L434
	movl	4(%eax), %ecx
L434:
	movl	%ecx, 4(%esp)
	movl	$LC20, (%esp)
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	call	__ZN5ImGui8DebugLogEPKcz
	movl	_GImGui, %ecx
	movl	12(%esp), %eax
	movl	8(%esp), %edx
	jmp	L433
	.cfi_endproc
LFE37:
	.section .rdata,"dr"
	.align 4
LC23:
	.ascii "[viewport] Add Viewport %08X '%s'\12\0"
	.text
	.p2align 4
	.def	__ZN5ImGuiL17AddUpdateViewportEP11ImGuiWindowjRK6ImVec2S4_i;	.scl	3;	.type	32;	.endef
__ZN5ImGuiL17AddUpdateViewportEP11ImGuiWindowjRK6ImVec2S4_i:
LFB38:
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
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	12(%ebp), %ebx
	movl	_GImGui, %esi
	movl	%eax, 20(%esp)
	orl	$1, %ebx
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%ebx, 24(%esp)
	testl	%eax, %eax
	je	L444
	movl	%eax, %ecx
	movl	16160(%esi), %eax
	testl	%eax, %eax
	je	L445
	cmpl	%ecx, 840(%eax)
	movl	$161, %eax
	cmovne	%ebx, %eax
	movl	%eax, 24(%esp)
L445:
	movl	20(%esp), %eax
	movl	24(%esp), %ebx
	movl	12(%eax), %ecx
	movl	%ebx, %eax
	orb	$-128, %al
	movl	%ecx, %edx
	notl	%edx
	andl	$262656, %edx
	cmovne	%ebx, %eax
	movl	%eax, %ebx
	orl	$32, %eax
	andb	$16, %ch
	cmove	%ebx, %eax
	movl	%eax, 24(%esp)
L444:
	movl	18608(%esi), %ecx
	testl	%ecx, %ecx
	jle	L447
	movl	18616(%esi), %edi
	movl	16(%esp), %ebx
	xorl	%eax, %eax
	jmp	L449
	.p2align 4
	.p2align 4,,10
	.p2align 3
L524:
	addl	$1, %eax
	cmpl	%ecx, %eax
	je	L523
L449:
	movl	(%edi,%eax,4), %edx
	cmpl	(%edx), %ebx
	jne	L524
	movzbl	70(%edx), %eax
	cmpb	$0, 69(%edx)
	jne	L479
	movl	12(%esp), %edi
	movl	(%edi), %ecx
	movl	4(%edi), %ebx
	movl	%ecx, 8(%edx)
	movl	%ebx, 12(%edx)
	testb	%al, %al
	je	L452
	cmpl	$286331153, (%edx)
	je	L452
	.p2align 4
	.p2align 3
L453:
	movl	4(%edx), %eax
	andl	$1024, %eax
	orl	24(%esp), %eax
	movl	%eax, 4(%edx)
L454:
	movss	224(%edx), %xmm2
	movss	16(%edx), %xmm0
	xorps	%xmm5, %xmm5
	movss	228(%edx), %xmm4
	movss	20(%edx), %xmm3
	subss	%xmm2, %xmm0
	addss	232(%edx), %xmm0
	movl	20(%esp), %edi
	subss	%xmm4, %xmm3
	addss	236(%edx), %xmm3
	addss	8(%edx), %xmm2
	addss	12(%edx), %xmm4
	movl	%edi, 108(%edx)
	movaps	%xmm0, %xmm1
	cmpnless	%xmm5, %xmm0
	movl	16048(%esi), %eax
	movl	%eax, 76(%edx)
	andps	%xmm1, %xmm0
	movaps	%xmm3, %xmm1
	cmpnless	%xmm5, %xmm1
	andps	%xmm3, %xmm1
	unpcklps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	unpcklps	%xmm4, %xmm1
	movlhps	%xmm0, %xmm1
	movups	%xmm1, 24(%edx)
	testl	%edi, %edi
	je	L443
	movb	$1, 222(%edi)
L443:
	leal	-12(%ebp), %esp
	movl	%edx, %eax
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
L479:
	.cfi_restore_state
	cmpl	$286331153, (%edx)
	je	L525
	testb	%al, %al
	jne	L453
L452:
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	4(%eax), %ebx
	movl	%ecx, 16(%edx)
	movl	%ebx, 20(%edx)
	jmp	L453
	.p2align 4,,10
	.p2align 3
L523:
	movl	%ebx, 16(%esp)
L447:
	addl	$1, 188(%esi)
	movl	$0, 4(%esp)
	movl	$256, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	xorl	%ecx, %ecx
	movl	%eax, %edx
	leal	4(%eax), %eax
	movl	$0, 52(%eax)
	movl	$0, 56(%eax)
	movl	$0, 60(%eax)
	movl	$0, 64(%eax)
	movl	16(%esp), %ebx
L455:
	movl	$0, (%eax,%ecx)
	movl	$0, 4(%eax,%ecx)
	movl	$0, 8(%eax,%ecx)
	movl	$0, 12(%eax,%ecx)
	addl	$16, %ecx
	cmpl	$64, %ecx
	jb	L455
	leal	128(%edx), %eax
	movl	$0x00000000, 88(%edx)
	xorl	%ecx, %ecx
	movl	$0x00000000, 92(%edx)
	movl	$0, 32(%eax)
	movl	$0, 36(%eax)
	movl	$0, 40(%eax)
	movl	$0, 44(%eax)
L457:
	movl	$0, (%eax,%ecx)
	movl	$0, 4(%eax,%ecx)
	movl	$0, 8(%eax,%ecx)
	movl	$0, 12(%eax,%ecx)
	addl	$16, %ecx
	cmpl	$32, %ecx
	jb	L457
	movlps	LC21, %xmm0
	movl	$-1, %edi
	movl	%ebx, (%edx)
	movl	$0, 176(%edx)
	movlps	%xmm0, 72(%edx)
	movlps	%xmm0, 112(%edx)
	movss	LC4, %xmm0
	movl	$0, 180(%edx)
	movss	%xmm0, 100(%edx)
	movss	%xmm0, 96(%edx)
	movups	LC22, %xmm0
	movl	$0, 184(%edx)
	movups	%xmm0, 216(%edx)
	xorps	%xmm0, %xmm0
	movl	$0, 188(%edx)
	movl	$0, 192(%edx)
	movl	$0, 196(%edx)
	movl	$0x00000000, 248(%edx)
	movl	$0x00000000, 252(%edx)
	movl	$-1, 80(%edx)
	movl	$0, 84(%edx)
	movw	%di, 104(%edx)
	movl	$0, 108(%edx)
	movl	$0, 120(%edx)
	movl	$0, 124(%edx)
	movl	$2139095039, 208(%edx)
	movl	$2139095039, 212(%edx)
	movl	$2139095039, 200(%edx)
	movl	$2139095039, 204(%edx)
	movups	%xmm0, 232(%edx)
	movl	18608(%esi), %eax
	movl	%ebx, 16(%esp)
	movl	%eax, 72(%edx)
	movl	12(%esp), %eax
	movl	(%eax), %ecx
	movl	4(%eax), %ebx
	movl	8(%ebp), %eax
	movl	%ecx, 8(%edx)
	movl	%ebx, 12(%edx)
	movl	%ecx, 88(%edx)
	movl	(%eax), %ecx
	movl	%ebx, 92(%edx)
	movl	4(%eax), %ebx
	movl	24(%esp), %eax
	movl	%ecx, 16(%edx)
	movl	%ebx, 20(%edx)
	movl	%eax, 4(%edx)
	movl	%edx, %eax
	movl	%edx, 24(%esp)
	call	__ZN5ImGuiL29UpdateViewportPlatformMonitorEP14ImGuiViewportP
	movl	18608(%esi), %eax
	movl	24(%esp), %edx
	cmpl	18612(%esi), %eax
	je	L526
L459:
	movl	18616(%esi), %edi
L462:
	movl	%edx, (%edi,%eax,4)
	addl	$1, 18608(%esi)
	testb	$-128, 23576(%esi)
	je	L466
	movl	20(%esp), %ecx
	movl	$LC19, %eax
	testl	%ecx, %ecx
	je	L467
	movl	4(%ecx), %eax
L467:
	movl	%eax, 8(%esp)
	movl	16(%esp), %eax
	movl	$LC23, (%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 24(%esp)
	call	__ZN5ImGui8DebugLogEPKcz
	movl	24(%esp), %edx
L466:
	movss	15548(%esi), %xmm0
	minss	8(%edx), %xmm0
	movss	15556(%esi), %xmm2
	movss	%xmm0, 15548(%esi)
	movss	15552(%esi), %xmm0
	minss	12(%edx), %xmm0
	movss	%xmm0, 15552(%esi)
	movss	8(%edx), %xmm1
	addss	16(%edx), %xmm1
	movaps	%xmm1, %xmm0
	cmpnless	%xmm2, %xmm0
	andps	%xmm0, %xmm1
	andnps	%xmm2, %xmm0
	movss	15560(%esi), %xmm2
	orps	%xmm1, %xmm0
	movss	%xmm0, 15556(%esi)
	movss	12(%edx), %xmm1
	addss	20(%edx), %xmm1
	movaps	%xmm1, %xmm0
	cmpnless	%xmm2, %xmm0
	andps	%xmm0, %xmm1
	andnps	%xmm2, %xmm0
	orps	%xmm1, %xmm0
	movss	%xmm0, 15560(%esi)
	movswl	104(%edx), %eax
	cmpw	$-1, %ax
	je	L454
	movl	14364(%esi), %ecx
	leal	(%eax,%eax,8), %eax
	leal	(%ecx,%eax,4), %eax
	movss	32(%eax), %xmm0
	movss	%xmm0, 40(%edx)
	jmp	L454
	.p2align 4,,10
	.p2align 3
L525:
	movl	12(%esp), %eax
	movl	(%eax), %ecx
	movl	4(%eax), %ebx
	movl	8(%ebp), %eax
	movl	%ecx, 8(%edx)
	movl	%ebx, 12(%edx)
	movl	(%eax), %ecx
	movl	4(%eax), %ebx
	movl	%ecx, 16(%edx)
	movl	%ebx, 20(%edx)
	jmp	L453
L526:
	leal	1(%eax), %edi
	testl	%eax, %eax
	jne	L460
	movl	$8, %eax
	cmpl	%eax, %edi
	cmovge	%edi, %eax
	movl	%eax, %ebx
L461:
	movl	_GImGui, %eax
	leal	0(,%ebx,4), %ecx
	testl	%eax, %eax
	je	L463
	addl	$1, 188(%eax)
L463:
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	movl	%edx, 24(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	24(%esp), %edx
	movl	%eax, %edi
	movl	18616(%esi), %eax
	testl	%eax, %eax
	je	L464
	movl	18608(%esi), %ecx
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	sall	$2, %ecx
	movl	%ecx, 8(%esp)
	call	_memcpy
	movl	18616(%esi), %ecx
	movl	24(%esp), %edx
	testl	%ecx, %ecx
	je	L465
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L465
	subl	$1, 188(%eax)
L465:
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	movl	%edx, 24(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	24(%esp), %edx
L464:
	movl	%edi, 18616(%esi)
	movl	18608(%esi), %eax
	movl	%ebx, 18612(%esi)
	jmp	L462
L460:
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	addl	%eax, %ecx
	cmpl	%edi, %ecx
	cmovge	%ecx, %edi
	movl	%edi, %ebx
	cmpl	%edi, %eax
	jge	L459
	jmp	L461
	.cfi_endproc
LFE38:
	.p2align 4
	.def	__ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow;	.scl	3;	.type	32;	.endef
__ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow:
LFB47:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%eax, %ecx
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	_GImGui, %esi
	movl	16076(%esi), %ebx
	movl	16084(%esi), %edi
	leal	1073741823(%ebx), %edx
	movl	(%edi,%edx,4), %eax
	cmpl	%ecx, %eax
	je	L527
	cmpl	%ecx, 840(%eax)
	je	L527
	movl	%ebx, %eax
	subl	$2, %eax
	js	L527
	leal	-4(%edi,%edx,4), %edx
	jmp	L530
	.p2align 4
	.p2align 4,,10
	.p2align 3
L529:
	subl	$1, %eax
	subl	$4, %edx
	cmpl	$-1, %eax
	je	L527
L530:
	cmpl	%ecx, (%edx)
	jne	L529
	subl	%eax, %ebx
	leal	4(%edi,%eax,4), %eax
	movl	%edx, (%esp)
	leal	-4(,%ebx,4), %ebx
	movl	%eax, 4(%esp)
	movl	%ebx, 8(%esp)
	movl	%ecx, 12(%esp)
	call	_memmove
	movl	16076(%esi), %edx
	movl	16084(%esi), %eax
	movl	12(%esp), %ecx
	movl	%ecx, -4(%eax,%edx,4)
L527:
	addl	$16, %esp
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
LFE47:
	.p2align 4
	.def	__ZN5ImGuiL36UpdateTryMergeWindowIntoHostViewportEP11ImGuiWindowP14ImGuiViewportP;	.scl	3;	.type	32;	.endef
__ZN5ImGuiL36UpdateTryMergeWindowIntoHostViewportEP11ImGuiWindowP14ImGuiViewportP:
LFB48:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%esi, 12(%esp)
	.cfi_offset 6, -16
	movl	48(%eax), %esi
	cmpl	%edx, %esi
	je	L534
	movl	%eax, %ecx
	movl	4(%edx), %eax
	andl	$5120, %eax
	cmpl	$4096, %eax
	je	L535
L534:
	xorl	%edx, %edx
L533:
	movl	12(%esp), %esi
	movl	%edx, %eax
	addl	$24, %esp
	.cfi_remember_state
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L535:
	.cfi_restore_state
	movss	8(%edx), %xmm0
	movss	68(%ecx), %xmm1
	comiss	%xmm0, %xmm1
	jb	L534
	movss	12(%edx), %xmm3
	movss	72(%ecx), %xmm2
	comiss	%xmm3, %xmm2
	jb	L534
	movss	76(%ecx), %xmm4
	addss	16(%edx), %xmm0
	addss	%xmm1, %xmm4
	comiss	%xmm4, %xmm0
	jb	L534
	movl	%ebx, 8(%esp)
	movl	%edi, 16(%esp)
	movl	%ebp, 20(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movss	80(%ecx), %xmm5
	addss	20(%edx), %xmm3
	addss	%xmm2, %xmm5
	comiss	%xmm5, %xmm3
	jnb	L572
L570:
	movl	8(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	16(%esp), %edi
	.cfi_restore 7
	movl	20(%esp), %ebp
	.cfi_restore 5
	jmp	L534
	.p2align 4,,10
	.p2align 3
L572:
	.cfi_restore_state
	movl	%ecx, %eax
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	__ZN5ImGuiL30GetWindowAlwaysWantOwnViewportEP11ImGuiWindow
	testb	%al, %al
	jne	L570
	movl	_GImGui, %ebp
	movl	4(%esp), %ecx
	movl	16076(%ebp), %edi
	testl	%edi, %edi
	jle	L541
	movl	16084(%ebp), %ebx
	movb	%al, 4(%esp)
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L547:
	movl	(%ebx,%eax,4), %edx
	cmpl	%edx, %ecx
	je	L542
	cmpb	$0, 224(%edx)
	je	L543
	cmpb	$0, 222(%edx)
	je	L543
	testb	$1, 15(%edx)
	jne	L543
	movl	48(%edx), %edx
	movss	12(%edx), %xmm0
	movss	20(%edx), %xmm3
	addss	%xmm0, %xmm3
	comiss	%xmm2, %xmm3
	jbe	L543
	comiss	%xmm0, %xmm5
	jbe	L543
	movss	8(%edx), %xmm0
	movss	16(%edx), %xmm3
	addss	%xmm0, %xmm3
	comiss	%xmm1, %xmm3
	jbe	L543
	comiss	%xmm0, %xmm4
	jbe	L543
	movzbl	4(%esp), %edx
	movl	8(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	16(%esp), %edi
	.cfi_restore 7
	movl	20(%esp), %ebp
	.cfi_restore 5
	jmp	L533
	.p2align 4,,10
	.p2align 3
L543:
	.cfi_restore_state
	addl	$1, %eax
	cmpl	%edi, %eax
	jne	L547
L542:
	cmpb	$0, 222(%ecx)
	je	L550
	movl	(%esp), %edi
	xorl	%eax, %eax
	jmp	L554
	.p2align 5
	.p2align 4,,10
	.p2align 3
L552:
	addl	$1, %eax
	cmpl	%eax, 16076(%ebp)
	jle	L566
	movl	16084(%ebp), %ebx
L554:
	movl	(%ebx,%eax,4), %edx
	cmpl	48(%edx), %esi
	jne	L552
	cmpb	$0, 222(%edx)
	je	L553
	cmpl	108(%esi), %edx
	je	L573
L553:
	movl	%edi, 48(%edx)
	movl	(%edi), %ebx
	movl	%ebx, 52(%edx)
	cmpl	%edx, 108(%edi)
	sete	222(%edx)
	jmp	L552
	.p2align 4,,10
	.p2align 3
L566:
	cmpb	$0, 222(%ecx)
	je	L550
	movl	48(%ecx), %esi
L549:
	cmpl	108(%esi), %ecx
	jne	L550
	movl	$0x00000000, 16(%esi)
	movl	$0x00000000, 20(%esi)
L550:
	movl	(%esp), %edi
	movl	%edi, 48(%ecx)
	movl	(%edi), %eax
	movl	%eax, 52(%ecx)
	cmpl	%ecx, 108(%edi)
	movl	%ecx, %eax
	sete	222(%ecx)
	call	__ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow
	movl	$1, %edx
	movl	8(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	16(%esp), %edi
	.cfi_restore 7
	movl	20(%esp), %ebp
	.cfi_restore 5
	movl	12(%esp), %esi
	movl	%edx, %eax
	addl	$24, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L573:
	.cfi_restore_state
	movl	$0x00000000, 16(%esi)
	movl	$0x00000000, 20(%esi)
	jmp	L553
L541:
	cmpb	$0, 222(%ecx)
	jne	L549
	jmp	L550
	.cfi_endproc
LFE48:
	.section .rdata,"dr"
	.align 4
LC25:
	.ascii "[viewport] Window '%s' steal Viewport %08X from Window '%s'\12\0"
	.text
	.p2align 4
	.def	__ZN5ImGuiL20WindowSelectViewportEP11ImGuiWindow;	.scl	3;	.type	32;	.endef
__ZN5ImGuiL20WindowSelectViewportEP11ImGuiWindow:
LFB50:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	%esi, 32(%esp)
	.cfi_offset 6, -16
	movl	_GImGui, %esi
	movl	%edi, 36(%esp)
	.cfi_offset 7, -12
	movl	12(%eax), %edi
	movl	$-1, 64(%eax)
	movl	18616(%esi), %edx
	movl	(%edx), %ecx
	movl	%ecx, 16(%esp)
	testb	$4, 15505(%esi)
	je	L750
	movl	%ebx, 28(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%ebp, 40(%esp)
	.cfi_offset 5, -8
	movb	$0, 222(%eax)
	movl	%edi, %eax
	andl	$100663296, %eax
	movl	%eax, 20(%esp)
	je	L578
	cmpb	$0, 229(%ebx)
	je	L578
	movl	$0, 48(%ebx)
	movl	$0, 52(%ebx)
	movl	18372(%esi), %eax
	testb	$1, %ah
	jne	L581
	movl	824(%ebx), %edx
	testl	%edx, %edx
	je	L736
L663:
	cmpb	$0, 231(%edx)
	jne	L751
L584:
	movl	48(%edx), %eax
	movl	%eax, 48(%ebx)
	testl	%eax, %eax
	jne	L735
L583:
	movl	52(%ebx), %ecx
	testl	%ecx, %ecx
	je	L735
	movl	18608(%esi), %ebp
	testl	%ebp, %ebp
	jle	L587
	movl	18616(%esi), %edx
	movl	%esi, 24(%esp)
	xorl	%eax, %eax
	movl	%edx, %esi
	jmp	L589
	.p2align 4
	.p2align 4,,10
	.p2align 3
L753:
	addl	$1, %eax
	cmpl	%ebp, %eax
	je	L752
L589:
	movl	(%esi,%eax,4), %edx
	cmpl	(%edx), %ecx
	jne	L753
	movl	24(%esp), %esi
	movl	%edx, 48(%ebx)
	movl	18372(%esi), %eax
	andl	$256, %eax
	jmp	L585
	.p2align 4,,10
	.p2align 3
L578:
	testb	$1, 18373(%esi)
	je	L754
L581:
	movl	%esi, %eax
L580:
	movl	18608(%eax), %ecx
	testl	%ecx, %ecx
	jle	L725
	movl	18616(%eax), %edi
	movl	18464(%esi), %ebp
	xorl	%eax, %eax
	jmp	L597
	.p2align 4
	.p2align 4,,10
	.p2align 3
L755:
	addl	$1, %eax
	cmpl	%ecx, %eax
	je	L725
L597:
	movl	(%edi,%eax,4), %edx
	cmpl	(%edx), %ebp
	jne	L755
	movl	%edx, 48(%ebx)
	movl	18464(%esi), %eax
	movl	%eax, 52(%ebx)
L620:
	cmpl	%ebx, 108(%edx)
	sete	222(%ebx)
	movl	(%edx), %eax
	movl	%eax, 52(%ebx)
	movl	28(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	40(%esp), %ebp
	.cfi_restore 5
	movl	32(%esp), %esi
	movl	36(%esp), %edi
	addl	$44, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L754:
	.cfi_restore_state
	movl	48(%ebx), %eax
	testl	%eax, %eax
	je	L756
L582:
	testl	$285212672, %edi
	je	L599
	movl	824(%ebx), %eax
	movl	48(%eax), %eax
	movl	%eax, 48(%ebx)
	testl	%eax, %eax
	je	L600
L601:
	movl	20(%esp), %ebp
	testl	%ebp, %ebp
	je	L659
L658:
	testl	$33554432, %edi
	jne	L607
L738:
	movl	48(%ebx), %ebp
L622:
	movl	18592(%esi), %eax
	leal	-5(%eax,%eax,4), %edx
	movl	18600(%esi), %eax
	leal	32(%eax,%edx,8), %eax
L623:
	movss	(%eax), %xmm1
	movss	4(%eax), %xmm3
	movzbl	229(%ebx), %eax
	cmpb	$0, 18738(%esi)
	jne	L624
	cmpb	$0, 18739(%esi)
	je	L624
	movl	18680(%esi), %edx
	testl	%edx, %edx
	je	L624
	testb	%al, %al
	je	L757
L626:
	call	__ZN5ImGuiL22NavCalcPreferredRefPosEv
	movl	%eax, 16(%esp)
	movss	16(%esp), %xmm1
	movl	%edx, 16(%esp)
	movss	16(%esp), %xmm3
L635:
	movl	_GImGui, %eax
	movl	14356(%eax), %ecx
	testl	%ecx, %ecx
	jle	L636
	movl	14364(%eax), %eax
	xorl	%edx, %edx
	.p2align 4
	.p2align 3
L642:
	movss	(%eax), %xmm0
	comiss	%xmm0, %xmm1
	jb	L637
	movss	4(%eax), %xmm2
	comiss	%xmm2, %xmm3
	jb	L637
	addss	8(%eax), %xmm0
	comiss	%xmm1, %xmm0
	jbe	L637
	addss	12(%eax), %xmm2
	comiss	%xmm3, %xmm2
	jbe	L637
L641:
	movl	%edx, 64(%ebx)
	movl	%ebp, %edx
	jmp	L620
	.p2align 4,,10
	.p2align 3
L750:
	.cfi_restore 3
	.cfi_restore 5
	cmpb	$0, 222(%eax)
	jne	L758
L576:
	movl	16(%esp), %edi
	movl	%edi, 48(%eax)
	movl	(%edi), %edx
	movl	%edx, 52(%eax)
	cmpl	%eax, 108(%edi)
	sete	222(%eax)
	movl	32(%esp), %esi
	movl	36(%esp), %edi
	addl	$44, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L761:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	16224(%esi), %eax
	testl	%eax, %eax
	je	L617
	cmpb	$0, 16237(%esi)
	je	L609
L617:
	movl	_GImGui, %eax
	movl	18616(%eax), %eax
	movl	(%eax), %edx
	movl	%ebx, %eax
	call	__ZN5ImGuiL36UpdateTryMergeWindowIntoHostViewportEP11ImGuiWindowP14ImGuiViewportP
	movl	48(%ebx), %ebp
	testl	%ebp, %ebp
	je	L743
	movl	20(%esp), %eax
	testl	%eax, %eax
	jne	L738
	.p2align 4
	.p2align 3
L659:
	movl	48(%ebx), %eax
L643:
	movl	108(%eax), %ebp
	testl	%ebp, %ebp
	setne	%cl
	cmpl	%ebx, %ebp
	setne	%dl
	andb	%dl, %cl
	movb	%cl, 16(%esp)
	jne	L646
	movl	48(%ebx), %edx
L645:
	movl	64(%ebx), %ecx
	testl	%ecx, %ecx
	jns	L620
	andl	$16777216, %edi
	jne	L620
L644:
	movswl	104(%eax), %eax
	movl	%eax, 64(%ebx)
	jmp	L620
	.p2align 4,,10
	.p2align 3
L758:
	.cfi_restore 3
	.cfi_restore 5
	movl	48(%eax), %edx
	cmpl	108(%edx), %eax
	jne	L576
	movl	$0x00000000, 16(%edx)
	movl	$0x00000000, 20(%edx)
	jmp	L576
	.p2align 4,,10
	.p2align 3
L624:
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	comiss	LC10, %xmm1
	jb	L629
	comiss	LC10, %xmm3
	jb	L629
	testb	%al, %al
	jne	L635
	andl	$301989888, %edi
	jne	L635
	.p2align 4
	.p2align 3
L629:
	movswl	104(%ebp), %eax
	movl	%ebp, %edx
	movl	%eax, 64(%ebx)
	jmp	L620
	.p2align 4,,10
	.p2align 3
L599:
	movl	936(%ebx), %eax
	testl	%eax, %eax
	je	L602
	movl	112(%eax), %eax
	testl	%eax, %eax
	je	L602
	movl	48(%eax), %eax
	movl	%eax, 48(%ebx)
	testl	%eax, %eax
	jne	L601
	.p2align 4
	.p2align 3
L600:
	movl	16(%esp), %edx
	movl	%ebx, %eax
	call	__ZN5ImGuiL36UpdateTryMergeWindowIntoHostViewportEP11ImGuiWindowP14ImGuiViewportP
	testb	%al, %al
	je	L604
	movl	20(%esp), %ecx
	testl	%ecx, %ecx
	jne	L658
	movl	48(%ebx), %eax
	testl	%eax, %eax
	jne	L643
	xorl	%edx, %edx
	jmp	L645
	.p2align 4,,10
	.p2align 3
L602:
	testl	$33554432, %edi
	jne	L759
	movl	%ebx, %eax
	call	__ZN5ImGuiL30GetWindowAlwaysWantOwnViewportEP11ImGuiWindow
	testb	%al, %al
	jne	L615
	movl	16160(%esi), %eax
	movl	48(%ebx), %ebp
	testl	%eax, %eax
	je	L610
	cmpl	%ebx, 840(%eax)
	je	L760
L610:
	testl	%ebp, %ebp
	je	L743
	cmpl	%ebx, 108(%ebp)
	je	L761
L609:
	movl	20(%esp), %ecx
	testl	%ecx, %ecx
	jne	L622
	movl	%ebp, %edx
	testl	%ebp, %ebp
	jne	L665
L749:
	movl	64(%ebx), %ebp
	testl	%ebp, %ebp
	jns	L620
	xorl	%eax, %eax
	jmp	L644
	.p2align 4,,10
	.p2align 3
L607:
	movl	48(%ebx), %ebp
	leal	3528(%esi), %eax
	jmp	L623
L752:
	movl	$0, 48(%ebx)
	movl	24(%esp), %esi
L587:
	movss	56(%ebx), %xmm0
	ucomiss	LC0, %xmm0
	jp	L591
	je	L735
L591:
	movss	60(%ebx), %xmm0
	ucomiss	LC0, %xmm0
	jp	L593
	je	L735
L593:
	leal	76(%ebx), %eax
	movl	8(%ebx), %edx
	movl	$0, 4(%esp)
	leal	56(%ebx), %ecx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__ZN5ImGuiL17AddUpdateViewportEP11ImGuiWindowjRK6ImVec2S4_i
	movl	%eax, 48(%ebx)
	.p2align 4
	.p2align 3
L735:
	movl	18372(%esi), %eax
L736:
	andl	$256, %eax
L585:
	testl	%eax, %eax
	je	L582
	movl	_GImGui, %eax
	jmp	L580
	.p2align 4,,10
	.p2align 3
L725:
	movl	$0, 48(%ebx)
	movl	18464(%esi), %eax
	movl	16(%esp), %edx
	movl	%eax, 52(%ebx)
	movl	%ebx, %eax
	call	__ZN5ImGuiL36UpdateTryMergeWindowIntoHostViewportEP11ImGuiWindowP14ImGuiViewportP
	testb	%al, %al
	je	L619
L741:
	movl	48(%ebx), %edx
	jmp	L620
	.p2align 4,,10
	.p2align 3
L646:
	andl	$16777216, %edi
	jne	L741
	movl	936(%ebx), %edi
	testl	%edi, %edi
	je	L762
	movl	64(%ebx), %esi
	movl	48(%ebx), %edx
	testl	%esi, %esi
	jns	L620
	jmp	L644
	.p2align 4,,10
	.p2align 3
L751:
	cmpb	$0, 224(%edx)
	je	L583
	jmp	L584
L759:
	movl	18628(%esi), %eax
	movl	%eax, 48(%ebx)
	testl	%eax, %eax
	jne	L607
	movl	16(%esp), %edx
	movl	%ebx, %eax
	call	__ZN5ImGuiL36UpdateTryMergeWindowIntoHostViewportEP11ImGuiWindowP14ImGuiViewportP
	testb	%al, %al
	jne	L607
L604:
	leal	76(%ebx), %eax
	movl	8(%ebx), %edx
	movl	$0, 4(%esp)
	leal	68(%ebx), %ecx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__ZN5ImGuiL17AddUpdateViewportEP11ImGuiWindowjRK6ImVec2S4_i
	movl	20(%esp), %edx
	movl	%eax, 48(%ebx)
	testl	%edx, %edx
	jne	L658
	jmp	L643
	.p2align 4,,10
	.p2align 3
L619:
	movl	8(%ebx), %edx
	movl	$0, 4(%esp)
	leal	68(%ebx), %ecx
L739:
	leal	76(%ebx), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__ZN5ImGuiL17AddUpdateViewportEP11ImGuiWindowjRK6ImVec2S4_i
	movl	%eax, 48(%ebx)
	movl	%eax, %edx
	jmp	L620
	.p2align 4,,10
	.p2align 3
L637:
	addl	$1, %edx
	addl	$36, %eax
	cmpl	%ecx, %edx
	jne	L642
L636:
	movl	$-1, %edx
	jmp	L641
L756:
	movl	824(%ebx), %edx
	testl	%edx, %edx
	jne	L663
	jmp	L583
L757:
	andl	$301989888, %edi
	jne	L626
	jmp	L629
L762:
	movzbl	909(%ebx), %edx
	movl	%edx, %ecx
	shrb	$2, %cl
	andl	$1, %edx
	movl	%ecx, %edi
	movzbl	16(%esp), %ecx
	cmovne	%edi, %ecx
	movb	%cl, 16(%esp)
	andl	$1, %ecx
	testb	%dl, %dl
	movl	%ecx, %edi
	movzbl	16(%esp), %ecx
	cmovne	%edi, %ecx
	movl	%ecx, %edx
	testb	$32, 15(%ebx)
	je	L650
	movl	16048(%esi), %ecx
	cmpl	%ecx, 76(%eax)
	jge	L650
	testb	%dl, %dl
	jne	L763
L650:
	movl	_GImGui, %eax
	movl	18616(%eax), %eax
	movl	(%eax), %edx
	movl	%ebx, %eax
	call	__ZN5ImGuiL36UpdateTryMergeWindowIntoHostViewportEP11ImGuiWindowP14ImGuiViewportP
	testb	%al, %al
	jne	L741
	movl	8(%ebx), %edx
	leal	68(%ebx), %ecx
	movl	$32, 4(%esp)
	jmp	L739
L760:
	movl	_GImGui, %eax
	movss	3528(%eax), %xmm0
	comiss	LC10, %xmm0
	jb	L610
	movss	3532(%eax), %xmm0
	comiss	LC10, %xmm0
	jb	L610
	testl	%ebp, %ebp
	je	L743
	cmpl	%ebx, 108(%ebp)
	jne	L609
L615:
	leal	76(%ebx), %eax
	movl	8(%ebx), %edx
	movl	$0, 4(%esp)
	leal	68(%ebx), %ecx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__ZN5ImGuiL17AddUpdateViewportEP11ImGuiWindowjRK6ImVec2S4_i
	movl	%eax, 48(%ebx)
	movl	%eax, %ebp
	jmp	L609
L743:
	movl	16(%esp), %edx
	movl	%ebx, %eax
	call	__ZN5ImGuiL36UpdateTryMergeWindowIntoHostViewportEP11ImGuiWindowP14ImGuiViewportP
	testb	%al, %al
	je	L604
	cmpl	$0, 20(%esp)
	jne	L738
	movl	48(%ebx), %edx
	testl	%edx, %edx
	je	L749
	movl	%edx, %eax
	jmp	L643
	.p2align 4,,10
	.p2align 3
L763:
	testb	$-128, 23576(%esi)
	jne	L764
L651:
	movl	48(%ebx), %eax
	movl	%ebx, 108(%eax)
	movl	48(%ebx), %eax
	movl	8(%ebx), %edx
	movl	%edx, (%eax)
	movl	48(%ebx), %eax
	movl	$0, 84(%eax)
	jmp	L741
L764:
	movl	4(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	4(%ebx), %eax
	movl	$LC25, (%esp)
	movl	%eax, 4(%esp)
	call	__ZN5ImGui8DebugLogEPKcz
	jmp	L651
L665:
	movl	%ebp, %eax
	jmp	L643
	.cfi_endproc
LFE50:
	.p2align 4
	.globl	__ZL30WindowSettingsHandler_ApplyAllP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0
	.def	__ZL30WindowSettingsHandler_ApplyAllP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL30WindowSettingsHandler_ApplyAllP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0:
LFB55:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	%esi, 8(%esp)
	.cfi_offset 6, -8
	movl	16(%esp), %esi
	movl	23460(%esi), %edx
	testl	%edx, %edx
	je	L765
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -12
	leal	4(%edx), %ebx
	.p2align 4
	.p2align 3
L769:
	cmpb	$0, 31(%ebx)
	je	L767
	movl	_GImGui, %eax
	leal	16124(%eax), %ecx
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	__ZNK12ImGuiStorage10GetVoidPtrEj
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	testl	%eax, %eax
	je	L768
	movl	%ebx, %edx
	call	__ZL19ApplyWindowSettingsP11ImGuiWindowP19ImGuiWindowSettings.lto_priv.0
L768:
	movb	$0, 31(%ebx)
	movl	23460(%esi), %edx
L767:
	movl	23452(%esi), %eax
	addl	-4(%ebx), %ebx
	leal	4(%edx,%eax), %eax
	cmpl	%eax, %ebx
	jne	L769
	movl	4(%esp), %ebx
	.cfi_restore 3
L765:
	movl	8(%esp), %esi
	addl	$12, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE55:
	.p2align 4
	.def	__ZN5ImGui7LogTextEPKcz;	.scl	3;	.type	32;	.endef
__ZN5ImGui7LogTextEPKcz:
LFB56:
	.cfi_startproc
	movl	_GImGui, %edx
	cmpb	$0, 23524(%edx)
	jne	L802
	ret
	.p2align 4,,10
	.p2align 3
L802:
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	%esi, 28(%esp)
	movl	23532(%edx), %eax
	leal	44(%esp), %ecx
	.cfi_offset 6, -12
	leal	23536(%edx), %esi
	movl	%ecx, 20(%esp)
	testl	%eax, %eax
	je	L780
	movl	%ebx, 24(%esp)
	movl	23540(%edx), %eax
	testl	%eax, %eax
	.cfi_offset 3, -16
	jns	L781
	movl	%edi, 32(%esp)
	.cfi_offset 7, -8
	testl	%edx, %edx
	je	L782
	addl	$1, 188(%edx)
L782:
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	movl	%edx, 16(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	16(%esp), %edx
	leal	44(%esp), %ecx
	movl	%eax, %ebx
	movl	%eax, %edi
	movl	23544(%edx), %eax
	testl	%eax, %eax
	je	L783
	movl	23536(%edx), %ecx
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	movl	%ecx, 8(%esp)
	call	_memcpy
	movl	16(%esp), %edx
	movl	23544(%edx), %eax
	testl	%eax, %eax
	je	L784
	movl	_GImGui, %ebx
	testl	%ebx, %ebx
	je	L784
	subl	$1, 188(%ebx)
L784:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 16(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	16(%esp), %edx
	leal	44(%esp), %ecx
L783:
	movl	%edi, 23544(%edx)
	movl	$0, 23540(%edx)
	movl	32(%esp), %edi
	.cfi_restore 7
L781:
	movl	40(%esp), %eax
	movl	%edx, 16(%esp)
	movl	$0, 23536(%edx)
	movl	%ecx, 4(%esp)
	movl	%esi, %ecx
	movl	%eax, (%esp)
	call	__ZN15ImGuiTextBuffer8appendfvEPKcPc
	.cfi_def_cfa_offset 32
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	movl	16(%esp), %edx
	movl	23536(%edx), %eax
	movl	23532(%edx), %ecx
	cmpl	$1, %eax
	adcl	$-1, %eax
	movl	%eax, %ebx
	movl	23544(%edx), %eax
	movl	$__ZN15ImGuiTextBuffer11EmptyStringE, %edx
	movl	%ecx, 12(%esp)
	movl	%ebx, 8(%esp)
	testl	%eax, %eax
	movl	$1, 4(%esp)
	cmove	%edx, %eax
	movl	%eax, (%esp)
	call	_fwrite
	movl	24(%esp), %ebx
	.cfi_restore 3
	movl	28(%esp), %esi
	addl	$36, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L780:
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -12
	movl	40(%esp), %eax
	movl	%ecx, 4(%esp)
	movl	%esi, %ecx
	movl	%eax, (%esp)
	call	__ZN15ImGuiTextBuffer8appendfvEPKcPc
	.cfi_def_cfa_offset 32
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	movl	28(%esp), %esi
	addl	$36, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE56:
	.section .rdata,"dr"
LC26:
	.ascii "###\0"
	.text
	.p2align 4
	.def	__ZN5ImGui23CreateNewWindowSettingsEPKc;	.scl	3;	.type	32;	.endef
__ZN5ImGui23CreateNewWindowSettingsEPKc:
LFB60:
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
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	movl	_GImGui, %esi
	movl	$LC26, 4(%esp)
	movl	%eax, (%esp)
	call	_strstr
	testl	%eax, %eax
	cmovne	%eax, %ebx
	movl	%ebx, (%esp)
	call	_strlen
	movl	23452(%esi), %edx
	movl	%eax, %edi
	addl	$44, %eax
	andl	$-4, %eax
	movl	%eax, 12(%esp)
	leal	(%edx,%eax), %ecx
	movl	23456(%esi), %eax
	cmpl	%eax, %ecx
	jle	L825
	testl	%eax, %eax
	jne	L807
	movl	$8, %eax
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%eax, 16(%esp)
L808:
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L809
	addl	$1, 188(%eax)
L809:
	movl	16(%esp), %eax
	movl	$0, 4(%esp)
	movl	%ecx, 24(%esp)
	movl	%eax, (%esp)
	movl	%edx, 20(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	20(%esp), %edx
	movl	24(%esp), %ecx
	movl	%eax, %ebp
	movl	23460(%esi), %eax
	testl	%eax, %eax
	je	L810
	movl	%edx, 24(%esp)
	movl	23452(%esi), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ebp, (%esp)
	movl	%ecx, 28(%esp)
	call	_memcpy
	movl	23460(%esi), %eax
	movl	24(%esp), %edx
	movl	28(%esp), %ecx
	testl	%eax, %eax
	movl	%eax, 20(%esp)
	je	L811
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L811
	subl	$1, 188(%eax)
L811:
	movl	20(%esp), %eax
	movl	$0, 4(%esp)
	movl	%ecx, 28(%esp)
	movl	%eax, (%esp)
	movl	%edx, 24(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	28(%esp), %ecx
	movl	24(%esp), %edx
L810:
	movl	16(%esp), %eax
	movl	%ebp, 23460(%esi)
	movl	%eax, 23456(%esi)
	jmp	L806
	.p2align 4,,10
	.p2align 3
L807:
	movl	%eax, %ebp
	shrl	$31, %ebp
	addl	%eax, %ebp
	sarl	%ebp
	addl	%eax, %ebp
	cmpl	%ecx, %ebp
	cmovl	%ecx, %ebp
	movl	%ebp, 16(%esp)
	cmpl	%ebp, %eax
	jl	L808
L825:
	movl	23460(%esi), %ebp
L806:
	movl	12(%esp), %eax
	movl	%ecx, 23452(%esi)
	xorl	%ecx, %ecx
	movl	%eax, 0(%ebp,%edx)
	movl	23460(%esi), %eax
	leal	4(%eax,%edx), %esi
	movl	$-1, %eax
	movl	%edi, %edx
	addl	$1, %edi
	movl	$0, 28(%esi)
	movl	$0, (%esi)
	movw	%ax, 28(%esi)
	movl	%ebx, %eax
	movl	$0, 4(%esi)
	movl	$0, 8(%esi)
	movl	$0, 12(%esi)
	movl	$0, 16(%esi)
	movl	$0, 20(%esi)
	movl	$0, 24(%esi)
	movl	$0, 32(%esi)
	call	__Z9ImHashStrPKcjj
	movl	%eax, (%esi)
	leal	36(%esi), %eax
	movl	%edi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	addl	$32, %esp
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
	ret
	.cfi_endproc
LFE60:
	.p2align 4
	.globl	__ZL30WindowSettingsHandler_ReadOpenP12ImGuiContextP20ImGuiSettingsHandlerPKc.lto_priv.0
	.def	__ZL30WindowSettingsHandler_ReadOpenP12ImGuiContextP20ImGuiSettingsHandlerPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL30WindowSettingsHandler_ReadOpenP12ImGuiContextP20ImGuiSettingsHandlerPKc.lto_priv.0:
LFB62:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$36, %esp
	.cfi_def_cfa_offset 48
	movl	56(%esp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L839
	movl	56(%esp), %ecx
	movl	$-1, %esi
	addl	$1, %ecx
	movzbl	(%ecx), %edx
	cmpb	$35, %al
	je	L828
	.p2align 4
	.p2align 3
L831:
	xorl	%esi, %eax
	movl	%esi, %ebx
	movzbl	%al, %eax
	shrl	$8, %ebx
	movl	__ZL17GCrc32LookupTable.lto_priv.0(,%eax,4), %esi
	xorl	%ebx, %esi
	testb	%dl, %dl
	je	L847
	addl	$1, %ecx
	movl	%edx, %eax
L848:
	movzbl	(%ecx), %edx
	cmpb	$35, %al
	jne	L831
L828:
	cmpb	$35, %dl
	jne	L831
	cmpb	$35, 1(%ecx)
	jne	L831
	addl	$1, %ecx
	movl	$-1885708032, %esi
	movl	%edx, %eax
	jmp	L848
	.p2align 4,,10
	.p2align 3
L847:
	notl	%esi
L827:
	movl	_GImGui, %ebx
	movl	23460(%ebx), %ecx
	testl	%ecx, %ecx
	je	L834
	leal	4(%ecx), %eax
	.p2align 5
	.p2align 4
	.p2align 3
L836:
	cmpl	%esi, (%eax)
	je	L835
	movl	23452(%ebx), %edx
	addl	-4(%eax), %eax
	leal	4(%ecx,%edx), %edx
	cmpl	%edx, %eax
	jne	L836
L834:
	movl	56(%esp), %eax
	call	__ZN5ImGui23CreateNewWindowSettingsEPKc
	movl	%esi, (%eax)
	movb	$1, 31(%eax)
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
L835:
	.cfi_restore_state
	movl	$-1, %edx
	movl	$0, 28(%esp)
	movw	%dx, 28(%esp)
	movl	28(%esp), %edx
	movl	$0, (%eax)
	movl	%edx, 28(%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	movl	$0, 20(%eax)
	movl	$0, 24(%eax)
	movb	$0, 32(%eax)
	movl	%esi, (%eax)
	movb	$1, 31(%eax)
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
L839:
	.cfi_restore_state
	xorl	%esi, %esi
	jmp	L827
	.cfi_endproc
LFE62:
	.section .rdata,"dr"
LC27:
	.ascii "Pos=%i,%i\0"
LC28:
	.ascii "Size=%i,%i\0"
LC29:
	.ascii "ViewportId=0x%08X\0"
LC30:
	.ascii "ViewportPos=%i,%i\0"
LC31:
	.ascii "Collapsed=%d\0"
LC32:
	.ascii "DockId=0x%X,%d\0"
LC33:
	.ascii "DockId=0x%X\0"
LC34:
	.ascii "ClassId=0x%X\0"
	.text
	.p2align 4
	.globl	__ZL30WindowSettingsHandler_ReadLineP12ImGuiContextP20ImGuiSettingsHandlerPvPKc.lto_priv.0
	.def	__ZL30WindowSettingsHandler_ReadLineP12ImGuiContextP20ImGuiSettingsHandlerPvPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL30WindowSettingsHandler_ReadLineP12ImGuiContextP20ImGuiSettingsHandlerPvPKc.lto_priv.0:
LFB65:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$32, %esp
	.cfi_def_cfa_offset 44
	movl	56(%esp), %eax
	leal	24(%esp), %esi
	leal	28(%esp), %ebx
	movl	$LC27, 4(%esp)
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, (%esp)
	call	___mingw_sscanf
	cmpl	$2, %eax
	jne	L850
	movl	28(%esp), %eax
	movl	52(%esp), %edx
	movw	%ax, 4(%edx)
	movl	24(%esp), %eax
	movw	%ax, 6(%edx)
L849:
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
	.p2align 4,,10
	.p2align 3
L850:
	.cfi_restore_state
	movl	56(%esp), %eax
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$LC28, 4(%esp)
	movl	%eax, (%esp)
	call	___mingw_sscanf
	cmpl	$2, %eax
	jne	L852
	movl	28(%esp), %eax
	movl	52(%esp), %edx
	movw	%ax, 8(%edx)
	movl	24(%esp), %eax
	movw	%ax, 10(%edx)
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
	.p2align 4,,10
	.p2align 3
L852:
	.cfi_restore_state
	leal	16(%esp), %eax
	movl	$LC29, 4(%esp)
	movl	%eax, 8(%esp)
	movl	56(%esp), %eax
	movl	%eax, (%esp)
	call	___mingw_sscanf
	cmpl	$1, %eax
	jne	L853
	movl	16(%esp), %eax
	movl	52(%esp), %edx
	movl	%eax, 16(%edx)
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
	.p2align 4,,10
	.p2align 3
L853:
	.cfi_restore_state
	movl	56(%esp), %eax
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$LC30, 4(%esp)
	movl	%eax, (%esp)
	call	___mingw_sscanf
	cmpl	$2, %eax
	jne	L854
	movl	28(%esp), %eax
	movl	52(%esp), %ecx
	movw	%ax, 12(%ecx)
	movl	24(%esp), %eax
	movw	%ax, 14(%ecx)
	jmp	L849
	.p2align 4,,10
	.p2align 3
L854:
	movl	56(%esp), %eax
	leal	20(%esp), %ebx
	movl	$LC31, 4(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, (%esp)
	call	___mingw_sscanf
	cmpl	$1, %eax
	jne	L855
	movl	20(%esp), %edx
	movl	52(%esp), %eax
	testl	%edx, %edx
	setne	30(%eax)
	jmp	L849
	.p2align 4,,10
	.p2align 3
L855:
	leal	16(%esp), %eax
	movl	%ebx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	56(%esp), %eax
	movl	$LC32, 4(%esp)
	movl	%eax, (%esp)
	call	___mingw_sscanf
	cmpl	$2, %eax
	jne	L856
	movl	16(%esp), %eax
	movl	52(%esp), %ecx
	movl	%eax, 20(%ecx)
	movl	20(%esp), %eax
	movw	%ax, 28(%ecx)
	jmp	L849
	.p2align 4,,10
	.p2align 3
L856:
	leal	16(%esp), %eax
	movl	$LC33, 4(%esp)
	movl	%eax, 8(%esp)
	movl	56(%esp), %eax
	movl	%eax, (%esp)
	call	___mingw_sscanf
	cmpl	$1, %eax
	jne	L857
	movl	16(%esp), %eax
	movl	52(%esp), %ecx
	movl	%eax, 20(%ecx)
	movl	$-1, %eax
	movw	%ax, 28(%ecx)
	jmp	L849
L857:
	leal	16(%esp), %eax
	movl	$LC34, 4(%esp)
	movl	%eax, 8(%esp)
	movl	56(%esp), %eax
	movl	%eax, (%esp)
	call	___mingw_sscanf
	cmpl	$1, %eax
	jne	L849
	movl	16(%esp), %eax
	movl	52(%esp), %edx
	movl	%eax, 24(%edx)
	jmp	L849
	.cfi_endproc
LFE65:
	.section .rdata,"dr"
LC35:
	.ascii "[%s][%s]\12\0"
LC36:
	.ascii "ViewportPos=%d,%d\12\0"
LC37:
	.ascii "ViewportId=0x%08X\12\0"
LC38:
	.ascii "Pos=%d,%d\12\0"
LC39:
	.ascii "Size=%d,%d\12\0"
LC40:
	.ascii "Collapsed=%d\12\0"
LC41:
	.ascii "DockId=0x%08X\12\0"
LC42:
	.ascii "DockId=0x%08X,%d\12\0"
LC43:
	.ascii "ClassId=0x%08X\12\0"
	.text
	.p2align 4
	.globl	__ZL30WindowSettingsHandler_WriteAllP12ImGuiContextP20ImGuiSettingsHandlerP15ImGuiTextBuffer.lto_priv.0
	.def	__ZL30WindowSettingsHandler_WriteAllP12ImGuiContextP20ImGuiSettingsHandlerP15ImGuiTextBuffer.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL30WindowSettingsHandler_WriteAllP12ImGuiContextP20ImGuiSettingsHandlerP15ImGuiTextBuffer.lto_priv.0:
LFB66:
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
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	movl	44(%esp), %esi
	movl	48(%esp), %edi
	movl	52(%esp), %ebx
	movl	16076(%esi), %eax
	testl	%eax, %eax
	je	L860
	xorl	%edi, %edi
	jmp	L866
	.p2align 4,,10
	.p2align 3
L920:
	addl	%edx, %eax
	je	L863
L864:
	movss	72(%ebx), %xmm0
	subss	60(%ebx), %xmm0
	cvttss2sil	%xmm0, %edx
	movss	68(%ebx), %xmm0
	subss	56(%ebx), %xmm0
	cvttss2sil	%xmm0, %ecx
	movw	%dx, 6(%eax)
	movw	%cx, 4(%eax)
	cvttss2sil	88(%ebx), %edx
	cvttss2sil	84(%ebx), %ecx
	movw	%dx, 10(%eax)
	movw	%cx, 8(%eax)
	movl	52(%ebx), %edx
	movl	%edx, 16(%eax)
	cvttss2sil	60(%ebx), %edx
	cvttss2sil	56(%ebx), %ecx
	movw	%dx, 14(%eax)
	movw	%cx, 12(%eax)
	movl	944(%ebx), %edx
	movl	%edx, 20(%eax)
	movl	20(%ebx), %edx
	movl	%edx, 24(%eax)
	movzwl	910(%ebx), %edx
	movw	%dx, 28(%eax)
	movzbl	226(%ebx), %edx
	movb	$0, 32(%eax)
	movb	%dl, 30(%eax)
L861:
	addl	$1, %edi
	cmpl	%edi, 16076(%esi)
	je	L919
L866:
	movl	16084(%esi), %eax
	movl	(%eax,%edi,4), %ebx
	testb	$1, 13(%ebx)
	jne	L861
	movl	_GImGui, %ebp
	movl	672(%ebx), %eax
	movl	23460(%ebp), %edx
	cmpl	$-1, %eax
	jne	L920
	testl	%edx, %edx
	je	L863
	movl	8(%ebx), %ecx
	movl	%ebx, 16(%esp)
	leal	4(%edx), %eax
	movl	%ecx, %ebx
	.p2align 5
	.p2align 4
	.p2align 3
L865:
	cmpl	(%eax), %ebx
	je	L917
	movl	23452(%ebp), %ecx
	addl	-4(%eax), %eax
	leal	4(%edx,%ecx), %ecx
	cmpl	%ecx, %eax
	jne	L865
	movl	16(%esp), %ebx
L863:
	movl	4(%ebx), %eax
	call	__ZN5ImGui23CreateNewWindowSettingsEPKc
	movl	%eax, %edx
	subl	23460(%esi), %edx
	movl	%edx, 672(%ebx)
	jmp	L864
	.p2align 4,,10
	.p2align 3
L919:
	movl	48(%esp), %edi
	movl	52(%esp), %ebx
L860:
	movl	(%ebx), %eax
	movl	23452(%esi), %edx
	cmpl	$1, %eax
	leal	(%edx,%edx,2), %edx
	adcl	$-1, %eax
	leal	(%eax,%edx,2), %ebp
	cmpl	4(%ebx), %ebp
	jg	L921
L867:
	movl	23460(%esi), %edx
	testl	%edx, %edx
	je	L859
	leal	4(%edx), %ebp
	jmp	L880
	.p2align 4,,10
	.p2align 3
L924:
	cmpl	$286331153, 16(%ebp)
	je	L874
L875:
	movswl	8(%ebp), %eax
	movswl	10(%ebp), %edx
	movl	%eax, %ecx
	orw	%dx, %cx
	je	L876
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC39, 4(%esp)
	movl	%ebx, (%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
L876:
	movzbl	30(%ebp), %eax
	movl	$LC40, 4(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 8(%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	movl	20(%ebp), %eax
	testl	%eax, %eax
	je	L877
	movswl	28(%ebp), %edx
	cmpw	$-1, %dx
	je	L922
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	$LC42, 4(%esp)
	movl	%ebx, (%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	movl	24(%ebp), %eax
	testl	%eax, %eax
	jne	L923
L877:
	movl	%ebx, %ecx
	call	__ZN15ImGuiTextBuffer6appendEPKcS1_.constprop.0
	movl	23460(%esi), %edx
L872:
	movl	23452(%esi), %eax
	addl	-4(%ebp), %ebp
	leal	4(%edx,%eax), %eax
	cmpl	%eax, %ebp
	je	L859
L880:
	cmpb	$0, 32(%ebp)
	jne	L872
	leal	36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	(%edi), %eax
	movl	$LC35, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, (%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	movl	16(%ebp), %eax
	testl	%eax, %eax
	je	L873
	cmpl	$286331153, %eax
	je	L873
	movswl	14(%ebp), %eax
	movl	%eax, 12(%esp)
	movswl	12(%ebp), %eax
	movl	$LC36, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, (%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	movl	16(%ebp), %eax
	movl	$LC37, 4(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 8(%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
L873:
	movswl	4(%ebp), %eax
	movswl	6(%ebp), %edx
	movl	%eax, %ecx
	orw	%dx, %cx
	je	L924
L874:
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC38, 4(%esp)
	movl	%ebx, (%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	jmp	L875
	.p2align 4,,10
	.p2align 3
L859:
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
L917:
	.cfi_restore_state
	movl	16(%esp), %ebx
	jmp	L864
	.p2align 4,,10
	.p2align 3
L922:
	movl	%eax, 8(%esp)
	movl	$LC41, 4(%esp)
	movl	%ebx, (%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	movl	24(%ebp), %eax
	testl	%eax, %eax
	je	L877
L923:
	movl	%eax, 8(%esp)
	movl	$LC43, 4(%esp)
	movl	%ebx, (%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	jmp	L877
	.p2align 4,,10
	.p2align 3
L921:
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L868
	addl	$1, 188(%eax)
L868:
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	8(%ebx), %edx
	movl	%eax, %ecx
	testl	%edx, %edx
	je	L869
	movl	(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 20(%esp)
	movl	%ecx, 16(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	16(%esp), %ecx
	movl	20(%esp), %edx
	testl	%eax, %eax
	je	L870
	subl	$1, 188(%eax)
L870:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 16(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	16(%esp), %ecx
L869:
	movl	%ecx, 8(%ebx)
	movl	%ebp, 4(%ebx)
	jmp	L867
	.cfi_endproc
LFE66:
	.p2align 4
	.def	__ZN5ImGuiL23WindowSyncOwnedViewportEP11ImGuiWindowS1_;	.scl	3;	.type	32;	.endef
__ZN5ImGuiL23WindowSyncOwnedViewportEP11ImGuiWindowS1_:
LFB70:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%eax, %ecx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$16, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	_GImGui, %eax
	movl	48(%ecx), %ebx
	movl	%edx, (%esp)
	movl	%eax, 12(%esp)
	movzbl	69(%ebx), %eax
	testb	%al, %al
	jne	L986
	movl	68(%ecx), %esi
	cmpl	%esi, 8(%ebx)
	je	L987
L930:
	movl	68(%ecx), %eax
	movl	72(%ecx), %edx
	movl	%eax, 8(%ebx)
	movl	$1, %eax
	movl	%edx, 12(%ebx)
	movl	48(%ecx), %ebx
L929:
	cmpb	$0, 70(%ebx)
	jne	L988
	movl	76(%ecx), %edi
	cmpl	%edi, 16(%ebx)
	je	L989
L936:
	movl	76(%ecx), %eax
	movl	80(%ecx), %edx
	movl	%eax, 16(%ebx)
	movl	$1, %eax
	movl	%edx, 20(%ebx)
	movl	48(%ecx), %ebx
L935:
	movss	224(%ebx), %xmm2
	movss	16(%ebx), %xmm0
	xorps	%xmm5, %xmm5
	movss	228(%ebx), %xmm4
	movss	20(%ebx), %xmm3
	subss	%xmm2, %xmm0
	addss	232(%ebx), %xmm0
	subss	%xmm4, %xmm3
	addss	236(%ebx), %xmm3
	addss	8(%ebx), %xmm2
	addss	12(%ebx), %xmm4
	movaps	%xmm0, %xmm1
	cmpnless	%xmm5, %xmm0
	andps	%xmm1, %xmm0
	movaps	%xmm3, %xmm1
	cmpnless	%xmm5, %xmm1
	andps	%xmm3, %xmm1
	unpcklps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	unpcklps	%xmm4, %xmm1
	movlhps	%xmm0, %xmm1
	movups	%xmm1, 24(%ebx)
	testb	%al, %al
	jne	L990
L942:
	movl	48(%ecx), %esi
	movl	12(%ecx), %edx
	movl	4(%esi), %eax
	movl	%edx, %ebx
	movl	%edx, %edi
	andl	$134217728, %ebx
	andl	$-793, %eax
	andl	$369098752, %edi
	movl	%ebx, 8(%esp)
	setne	7(%esp)
	testl	$33554432, %edx
	je	L943
	testl	%ebx, %ebx
	jne	L991
	orl	$528, %eax
L946:
	orl	$8, %eax
L950:
	movl	8(%esp), %edi
	shrl	$27, %edi
	movl	%edi, %ebx
	xorl	$1, %ebx
	andb	7(%esp), %bl
	movzbl	%bl, %ebx
	negl	%ebx
	andl	$96, %ebx
	orl	%ebx, %eax
L954:
	movl	32(%ecx), %ebx
	movl	32(%ecx), %edi
	orl	28(%ecx), %eax
	notl	%ebx
	andl	%eax, %ebx
	testl	%edi, %edi
	cmovne	%ebx, %eax
	movl	%eax, %ebx
	orb	$1, %bh
	testb	$-128, %dl
	cmove	%ebx, %eax
	movl	%eax, 4(%esi)
	movl	24(%ecx), %eax
	movl	48(%ecx), %ecx
	cmpl	$-1, %eax
	je	L992
L958:
	movl	%eax, 44(%ecx)
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
L943:
	.cfi_restore_state
	movl	12(%esp), %ebx
	cmpb	$0, 101(%ebx)
	jne	L947
	testl	%edi, %edi
	jne	L948
	cmpb	$0, 102(%ebx)
	jne	L946
	jmp	L950
	.p2align 4,,10
	.p2align 3
L947:
	movl	8(%esp), %ebx
	testl	%ebx, %ebx
	jne	L993
	movl	12(%esp), %edi
	orl	$16, %eax
	cmpb	$0, 102(%edi)
	jne	L946
	cmpb	$0, 7(%esp)
	jne	L946
	jmp	L950
	.p2align 4,,10
	.p2align 3
L991:
	movl	12(%esp), %edi
	orb	$2, %ah
	cmpb	$0, 102(%edi)
	je	L946
L945:
	orl	$8, %eax
	jmp	L954
	.p2align 4,,10
	.p2align 3
L989:
	movl	80(%ecx), %esi
	cmpl	%esi, 20(%ebx)
	jne	L936
	jmp	L935
	.p2align 4,,10
	.p2align 3
L987:
	movl	72(%ecx), %esi
	cmpl	%esi, 12(%ebx)
	jne	L930
	jmp	L929
	.p2align 4,,10
	.p2align 3
L992:
	andl	$100663296, %edx
	je	L959
	movl	(%esp), %eax
	testl	%eax, %eax
	je	L959
	cmpb	$0, 231(%eax)
	je	L960
	cmpb	$0, 224(%eax)
	je	L959
L960:
	movl	(%esp), %eax
	movl	48(%eax), %eax
	movl	(%eax), %eax
	jmp	L958
	.p2align 4,,10
	.p2align 3
L959:
	movl	12(%esp), %eax
	cmpb	$1, 103(%eax)
	sbbl	%eax, %eax
	andl	$286331153, %eax
	movl	%eax, 44(%ecx)
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
L988:
	.cfi_restore_state
	movl	16(%ebx), %esi
	movl	20(%ebx), %edi
	movl	%esi, 76(%ecx)
	movl	%edi, 80(%ecx)
	movl	%esi, 84(%ecx)
	movl	%edi, 88(%ecx)
	testb	$1, 13(%ecx)
	jne	L935
	movl	12(%esp), %edx
	xorps	%xmm0, %xmm0
	comiss	23424(%edx), %xmm0
	jb	L935
	movss	28(%edx), %xmm0
	movss	%xmm0, 23424(%edx)
	movl	48(%ecx), %ebx
	jmp	L935
	.p2align 4,,10
	.p2align 3
L990:
	movl	48(%ecx), %eax
	movl	%ecx, 8(%esp)
	call	__ZN5ImGuiL29UpdateViewportPlatformMonitorEP14ImGuiViewportP
	movl	8(%esp), %ecx
	jmp	L942
	.p2align 4,,10
	.p2align 3
L986:
	movl	8(%ebx), %eax
	movl	12(%ebx), %edx
	movl	%eax, 68(%ecx)
	movl	%edx, 72(%ecx)
	testb	$1, 13(%ecx)
	jne	L985
	movl	12(%esp), %eax
	xorps	%xmm0, %xmm0
	comiss	23424(%eax), %xmm0
	jb	L985
	movl	12(%esp), %eax
	movss	28(%eax), %xmm0
	movss	%xmm0, 23424(%eax)
	movl	48(%ecx), %ebx
L985:
	xorl	%eax, %eax
	jmp	L929
	.p2align 4,,10
	.p2align 3
L993:
	movl	12(%esp), %ebx
	cmpb	$0, 102(%ebx)
	jne	L945
	testl	%edi, %edi
	je	L954
	jmp	L946
L948:
	cmpl	$0, 8(%esp)
	je	L951
	movl	12(%esp), %edi
	cmpb	$0, 102(%edi)
	jne	L945
	jmp	L946
L951:
	orl	$16, %eax
	jmp	L946
	.cfi_endproc
LFE70:
	.p2align 4
	.globl	__ZN5ImGui13IsWindowAboveEP11ImGuiWindowS1_
	.def	__ZN5ImGui13IsWindowAboveEP11ImGuiWindowS1_;	.scl	2;	.type	32;	.endef
__ZN5ImGui13IsWindowAboveEP11ImGuiWindowS1_:
LFB71:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	%eax, %ecx
	movl	%ebx, (%esp)
	.cfi_offset 3, -12
	movl	%edx, %ebx
	movl	12(%eax), %eax
	movl	12(%edx), %edx
	sarl	$25, %eax
	sarl	$25, %edx
	andl	$1, %eax
	andl	$1, %edx
	subl	%edx, %eax
	jne	L1004
	movl	_GImGui, %edx
	movl	16076(%edx), %eax
	subl	$1, %eax
	js	L998
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	movl	16084(%edx), %esi
	jmp	L999
	.p2align 4,,10
	.p2align 3
L1005:
	cmpl	%edx, %ebx
	je	L1003
	subl	$1, %eax
	jb	L1003
L999:
	movl	(%esi,%eax,4), %edx
	cmpl	%edx, %ecx
	jne	L1005
	movl	4(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	(%esp), %ebx
	movl	$1, %eax
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1003:
	.cfi_restore_state
	movl	4(%esp), %esi
	.cfi_restore 6
L998:
	movl	(%esp), %ebx
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1004:
	.cfi_restore_state
	cmpl	$1, %eax
	movl	(%esp), %ebx
	sete	%al
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE71:
	.p2align 4
	.globl	__ZN5ImGui6PushIDEPKc
	.def	__ZN5ImGui6PushIDEPKc;	.scl	2;	.type	32;	.endef
__ZN5ImGui6PushIDEPKc:
LFB72:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%eax, %ebp
	xorl	%edx, %edx
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
	movl	_GImGui, %eax
	movl	16148(%eax), %ebx
	movl	292(%ebx), %eax
	movl	284(%ebx), %esi
	movl	-4(%eax,%esi,4), %ecx
	movl	%ebp, %eax
	call	__Z9ImHashStrPKcjj
	movl	%eax, %edi
	movl	(%ebx), %eax
	cmpl	16200(%eax), %edi
	je	L1028
L1007:
	cmpl	%esi, 288(%ebx)
	je	L1029
L1008:
	movl	292(%ebx), %ebp
L1010:
	movl	%edi, 0(%ebp,%esi,4)
	addl	$1, 284(%ebx)
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
L1029:
	.cfi_restore_state
	testl	%esi, %esi
	jne	L1030
	movl	$8, %ecx
L1009:
	movl	_GImGui, %eax
	leal	0(,%ecx,4), %edx
	testl	%eax, %eax
	je	L1011
	addl	$1, 188(%eax)
L1011:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 12(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	12(%esp), %ecx
	movl	%eax, %ebp
	movl	292(%ebx), %eax
	testl	%eax, %eax
	je	L1012
	movl	284(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	leal	0(,%edx,4), %esi
	movl	%esi, 8(%esp)
	call	_memcpy
	movl	292(%ebx), %eax
	movl	12(%esp), %ecx
	testl	%eax, %eax
	je	L1013
	movl	_GImGui, %esi
	testl	%esi, %esi
	je	L1013
	subl	$1, 188(%esi)
L1013:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 12(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	12(%esp), %ecx
L1012:
	movl	%ebp, 292(%ebx)
	movl	284(%ebx), %esi
	movl	%ecx, 288(%ebx)
	jmp	L1010
	.p2align 4,,10
	.p2align 3
L1028:
	movl	%ebp, %ecx
	movl	$11, %edx
	movl	%edi, %eax
	call	__ZN5ImGui15DebugHookIdInfoEjiPKvS1_.constprop.0
	movl	284(%ebx), %esi
	jmp	L1007
	.p2align 4,,10
	.p2align 3
L1030:
	movl	%esi, %ecx
	leal	1(%esi), %eax
	shrl	$31, %ecx
	addl	%esi, %ecx
	sarl	%ecx
	addl	%esi, %ecx
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	cmpl	%esi, %ecx
	jle	L1008
	jmp	L1009
	.cfi_endproc
LFE72:
	.p2align 4
	.globl	__ZN5ImGui25CalcTypematicRepeatAmountEffff
	.def	__ZN5ImGui25CalcTypematicRepeatAmountEffff;	.scl	2;	.type	32;	.endef
__ZN5ImGui25CalcTypematicRepeatAmountEffff:
LFB76:
	.cfi_startproc
	xorps	%xmm3, %xmm3
	ucomiss	%xmm3, %xmm1
	jp	L1043
	movl	$1, %eax
	je	L1031
L1043:
	comiss	%xmm1, %xmm0
	jnb	L1038
	xorps	%xmm3, %xmm3
	comiss	4(%esp), %xmm3
	jnb	L1048
	comiss	%xmm0, %xmm2
	ja	L1040
	subss	%xmm2, %xmm0
	divss	4(%esp), %xmm0
	cvttss2sil	%xmm0, %edx
L1041:
	subss	%xmm2, %xmm1
	divss	4(%esp), %xmm1
	cvttss2sil	%xmm1, %eax
	subl	%edx, %eax
L1031:
	ret
	.p2align 4,,10
	.p2align 3
L1040:
	comiss	%xmm1, %xmm2
	jbe	L1049
L1038:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1048:
	comiss	%xmm0, %xmm2
	jbe	L1038
	xorl	%eax, %eax
	comiss	%xmm2, %xmm1
	setnb	%al
	ret
L1049:
	movl	$-1, %edx
	jmp	L1041
	.cfi_endproc
LFE76:
	.p2align 4
	.globl	__ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.isra.0
	.def	__ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.isra.0;	.scl	2;	.type	32;	.endef
__ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.isra.0:
LFB79:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	%eax, %ecx
	movl	_GImGui, %eax
	movss	12(%esp), %xmm4
	movss	16(%esp), %xmm3
	movl	%ecx, (%esp)
	movss	(%esp), %xmm0
	movl	%edx, (%esp)
	movss	(%esp), %xmm1
	cmpb	$0, 20(%esp)
	jne	L1077
L1051:
	movss	14504(%eax), %xmm2
	movaps	%xmm0, %xmm6
	movss	3528(%eax), %xmm5
	subss	%xmm2, %xmm6
	comiss	%xmm6, %xmm5
	jb	L1058
	movss	14508(%eax), %xmm7
	movaps	%xmm1, %xmm6
	movss	%xmm7, (%esp)
	subss	(%esp), %xmm6
	movss	3532(%eax), %xmm7
	movss	%xmm7, 4(%esp)
	comiss	%xmm6, %xmm7
	jnb	L1078
	.p2align 4
	.p2align 3
L1058:
	xorl	%eax, %eax
L1050:
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1078:
	.cfi_restore_state
	addss	%xmm4, %xmm2
	comiss	%xmm5, %xmm2
	jbe	L1058
	movss	(%esp), %xmm7
	addss	%xmm3, %xmm7
	comiss	4(%esp), %xmm7
	jbe	L1058
	movl	18628(%eax), %eax
	movss	12(%eax), %xmm2
	movss	20(%eax), %xmm5
	addss	%xmm2, %xmm5
	comiss	%xmm1, %xmm5
	jbe	L1058
	comiss	%xmm2, %xmm3
	jbe	L1058
	movss	8(%eax), %xmm1
	movss	16(%eax), %xmm2
	addss	%xmm1, %xmm2
	comiss	%xmm0, %xmm2
	jbe	L1058
	comiss	%xmm1, %xmm4
	seta	%al
	jmp	L1050
	.p2align 4,,10
	.p2align 3
L1077:
	movl	16148(%eax), %edx
	movss	588(%edx), %xmm5
	movaps	%xmm5, %xmm2
	cmpless	%xmm1, %xmm2
	andps	%xmm2, %xmm1
	andnps	%xmm5, %xmm2
	movss	584(%edx), %xmm5
	orps	%xmm2, %xmm1
	movaps	%xmm5, %xmm2
	cmpless	%xmm0, %xmm2
	andps	%xmm2, %xmm0
	andnps	%xmm5, %xmm2
	movss	596(%edx), %xmm5
	orps	%xmm2, %xmm0
	minss	%xmm5, %xmm3
	movss	592(%edx), %xmm5
	minss	%xmm5, %xmm4
	jmp	L1051
	.cfi_endproc
LFE79:
	.p2align 4
	.globl	__ZN5ImGui12TestKeyOwnerE8ImGuiKeyj
	.def	__ZN5ImGui12TestKeyOwnerE8ImGuiKeyj;	.scl	2;	.type	32;	.endef
__ZN5ImGui12TestKeyOwnerE8ImGuiKeyj:
LFB81:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%edx, %ebx
	leal	-512(%eax), %edx
	cmpl	$139, %edx
	jbe	L1080
	cmpl	$4096, %eax
	je	L1080
	leal	-8192(%eax), %edx
	andl	$-8193, %edx
	je	L1121
	cmpl	$32768, %eax
	je	L1084
	cmpl	$2048, %eax
	je	L1084
L1097:
	movl	$1, %ecx
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	movl	%ecx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1080:
	.cfi_restore_state
	movl	_GImGui, %esi
	cmpb	$0, 18272(%esi)
	jne	L1089
L1091:
	testb	$-8, %ah
	movl	$136, %eax
	cmovne	%eax, %edx
L1090:
	testl	%ebx, %ebx
	je	L1094
L1096:
	leal	(%edx,%edx,2), %eax
	movl	16284(%esi,%eax,4), %edx
	cmpl	%edx, %ebx
	je	L1097
	cmpl	$-1, %edx
	setne	%cl
	orb	16292(%esi,%eax,4), %cl
	xorl	$1, %ecx
L1079:
	movl	%ecx, %eax
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
L1089:
	.cfi_restore_state
	cmpl	%ebx, 16224(%esi)
	je	L1091
	testl	%ebx, %ebx
	jne	L1092
	testb	$-8, %ah
	jne	L1093
L1094:
	leal	(%edx,%edx,2), %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	movzbl	16292(%esi,%eax,4), %ecx
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	xorl	$1, %ecx
	movl	%ecx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1121:
	.cfi_restore_state
	movl	_GImGui, %esi
	cmpb	$0, 18272(%esi)
	je	L1083
	cmpl	16224(%esi), %ebx
	je	L1083
	testl	%ebx, %ebx
	je	L1095
	cmpl	$8192, %eax
	jne	L1100
	movl	$137, %edx
	jmp	L1096
	.p2align 4,,10
	.p2align 3
L1083:
	cmpl	$8192, %eax
	je	L1106
	cmpl	$16384, %eax
	je	L1107
L1088:
	cmpl	$32768, %eax
	je	L1108
	cmpb	$1, 105(%esi)
	sbbl	%edx, %edx
	andl	$-3, %edx
	addl	$139, %edx
	jmp	L1090
	.p2align 4,,10
	.p2align 3
L1084:
	movl	_GImGui, %esi
	cmpb	$0, 18272(%esi)
	je	L1088
	cmpl	16224(%esi), %ebx
	je	L1088
	testl	%ebx, %ebx
	je	L1093
L1100:
	cmpl	$16384, %eax
	jne	L1088
	movl	$138, %edx
	jmp	L1096
	.p2align 4,,10
	.p2align 3
L1092:
	xorl	%ecx, %ecx
	cmpl	$104, %edx
	jbe	L1079
	testb	$-8, %ah
	movl	$136, %eax
	cmovne	%eax, %edx
	jmp	L1096
	.p2align 4,,10
	.p2align 3
L1093:
	cmpl	$4096, %eax
	je	L1122
L1095:
	cmpl	$8192, %eax
	je	L1123
	cmpl	$16384, %eax
	je	L1111
	cmpl	$32768, %eax
	je	L1112
	cmpb	$1, 105(%esi)
	sbbl	%edx, %edx
	andl	$-3, %edx
	addl	$139, %edx
	jmp	L1094
	.p2align 4,,10
	.p2align 3
L1108:
	movl	$139, %edx
	jmp	L1090
	.p2align 4,,10
	.p2align 3
L1107:
	movl	$138, %edx
	jmp	L1090
	.p2align 4,,10
	.p2align 3
L1106:
	movl	$137, %edx
	jmp	L1090
L1122:
	movl	$136, %edx
	jmp	L1094
L1111:
	movl	$138, %edx
	jmp	L1094
L1123:
	movl	$137, %edx
	jmp	L1094
L1112:
	movl	$139, %edx
	jmp	L1094
	.cfi_endproc
LFE81:
	.p2align 4
	.globl	__ZN5ImGui14IsMouseClickedEiji
	.def	__ZN5ImGui14IsMouseClickedEiji;	.scl	2;	.type	32;	.endef
__ZN5ImGui14IsMouseClickedEiji:
LFB86:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -12
	movl	%edx, %ebx
	movl	_GImGui, %edx
	cmpb	$0, 3536(%edx,%eax)
	je	L1124
	movss	14136(%edx,%eax,4), %xmm1
	xorps	%xmm0, %xmm0
	comiss	%xmm1, %xmm0
	ja	L1124
	ucomiss	%xmm0, %xmm1
	movl	%esi, 8(%esp)
	.cfi_offset 6, -8
	movl	%ebx, %esi
	movl	%eax, %ebx
	jp	L1132
	je	L1128
L1132:
	testl	%ecx, %ecx
	je	L1143
	movss	52(%edx), %xmm2
	comiss	%xmm2, %xmm1
	jbe	L1143
	movss	56(%edx), %xmm3
	movaps	%xmm1, %xmm0
	subss	24(%edx), %xmm0
	movss	%xmm3, (%esp)
	call	__ZN5ImGui25CalcTypematicRepeatAmountEffff
	testl	%eax, %eax
	jle	L1143
L1128:
	leal	641(%ebx), %eax
	movl	%esi, %edx
	movl	4(%esp), %ebx
	movl	8(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	addl	$12, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__ZN5ImGui12TestKeyOwnerE8ImGuiKeyj
	.p2align 4,,10
	.p2align 3
L1143:
	.cfi_restore_state
	movl	8(%esp), %esi
	.cfi_restore 6
L1124:
	movl	4(%esp), %ebx
	xorl	%eax, %eax
	addl	$12, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE86:
	.p2align 4
	.globl	__ZN5ImGui7ItemAddERK6ImRectjPS1_i.constprop.0
	.def	__ZN5ImGui7ItemAddERK6ImRectjPS1_i.constprop.0;	.scl	2;	.type	32;	.endef
__ZN5ImGui7ItemAddERK6ImRectjPS1_i.constprop.0:
LFB88:
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
	andl	$-16, %esp
	subl	$76, %esp
	.cfi_offset 3, -20
	movl	_GImGui, %ebx
	movl	%edx, 18312(%ebx)
	movl	(%eax), %eax
	movl	16148(%ebx), %edi
	movl	%eax, 18324(%ebx)
	movl	4(%esi), %eax
	movl	%eax, 18328(%ebx)
	movl	8(%esi), %eax
	movl	%eax, 18332(%ebx)
	movl	12(%esi), %eax
	movl	%eax, 18336(%ebx)
	movl	(%esi), %eax
	movl	%eax, 18340(%ebx)
	movl	4(%esi), %eax
	movl	%eax, 18344(%ebx)
	movl	8(%esi), %eax
	movl	%eax, 18348(%ebx)
	movl	12(%esi), %eax
	movl	%eax, 18352(%ebx)
	movl	18284(%ebx), %eax
	orl	%ecx, %eax
	movl	%eax, 18316(%ebx)
	movl	$0, 18320(%ebx)
	testl	%edx, %edx
	jne	L1252
	movl	$0, 18292(%ebx)
	movss	12(%esi), %xmm0
	comiss	588(%edi), %xmm0
	jbe	L1253
	movss	596(%edi), %xmm0
	comiss	4(%esi), %xmm0
	jbe	L1201
	movss	8(%esi), %xmm0
	comiss	584(%edi), %xmm0
	jbe	L1201
	movss	592(%edi), %xmm0
	comiss	(%esi), %xmm0
	ja	L1200
L1201:
	movzbl	23524(%ebx), %eax
	testb	%al, %al
	je	L1144
	.p2align 4
	.p2align 3
L1203:
	movl	(%esi), %eax
	movl	4(%esi), %edx
	movl	$1, 8(%esp)
	movl	12(%esi), %edi
	movl	8(%esi), %esi
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	call	__ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.isra.0
	testb	%al, %al
	je	L1214
	orl	$1, 18320(%ebx)
L1144:
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
L1253:
	.cfi_restore_state
	movzbl	23524(%ebx), %eax
	testb	%al, %al
	jne	L1203
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
L1214:
	.cfi_restore_state
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
	.p2align 4,,10
	.p2align 3
L1252:
	.cfi_restore_state
	movl	16224(%ebx), %ecx
	cmpl	%ecx, %edx
	jne	L1146
	movl	%edx, 16228(%ebx)
L1146:
	cmpl	16264(%ebx), %edx
	jne	L1147
	movb	$1, 16268(%ebx)
L1147:
	testb	$8, %al
	je	L1254
	movl	$0, 18292(%ebx)
	movss	12(%esi), %xmm0
	comiss	588(%edi), %xmm0
	jbe	L1195
L1193:
	movss	596(%edi), %xmm0
	comiss	4(%esi), %xmm0
	ja	L1209
L1241:
	movl	16224(%ebx), %ecx
L1195:
	cmpl	%ecx, %edx
	je	L1207
	cmpl	18684(%ebx), %edx
	je	L1207
L1196:
	movzbl	23524(%ebx), %eax
	testb	%al, %al
	je	L1144
	.p2align 4
	.p2align 3
L1207:
	cmpl	18288(%ebx), %edx
	jne	L1203
	call	__ZN5ImGui34DebugLocateItemResolveWithLastItemEv
	jmp	L1203
	.p2align 4,,10
	.p2align 3
L1254:
	movl	384(%edi), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	orw	%ax, 390(%edi)
	movl	18684(%ebx), %eax
	movl	%eax, 60(%esp)
	cmpl	%eax, %edx
	je	L1149
	cmpb	$0, 18740(%ebx)
	jne	L1149
	movl	$0, 18292(%ebx)
	movss	12(%esi), %xmm0
	comiss	588(%edi), %xmm0
	ja	L1193
	cmpl	16224(%ebx), %edx
	jne	L1196
	jmp	L1207
	.p2align 4,,10
	.p2align 3
L1209:
	movss	8(%esi), %xmm0
	comiss	584(%edi), %xmm0
	jbe	L1241
	movss	592(%edi), %xmm0
	comiss	(%esi), %xmm0
	jbe	L1241
	cmpl	18288(%ebx), %edx
	jne	L1200
	call	__ZN5ImGui34DebugLocateItemResolveWithLastItemEv
	.p2align 4
	.p2align 3
L1200:
	orl	$512, 18320(%ebx)
	jmp	L1203
	.p2align 4,,10
	.p2align 3
L1149:
	movl	18680(%ebx), %ecx
	movl	848(%edi), %eax
	movl	%ecx, 44(%esp)
	cmpl	%eax, 848(%ecx)
	je	L1255
L1151:
	movl	$0, 18292(%ebx)
	movss	12(%esi), %xmm0
	comiss	588(%edi), %xmm0
	ja	L1193
	jmp	L1241
	.p2align 4,,10
	.p2align 3
L1255:
	cmpl	%ecx, %edi
	je	L1152
	movl	12(%edi), %eax
	orl	12(%ecx), %eax
	testl	$8388608, %eax
	je	L1151
L1152:
	movl	18312(%ebx), %eax
	movl	16148(%ebx), %ecx
	movups	18340(%ebx), %xmm0
	movl	%eax, 40(%esp)
	movl	18316(%ebx), %eax
	movl	%ecx, 36(%esp)
	movl	%eax, 12(%esp)
	cmpb	$0, 18741(%ebx)
	je	L1154
	movl	384(%ecx), %eax
	cmpl	%eax, 18732(%ebx)
	je	L1256
L1154:
	cmpb	$0, 18765(%ebx)
	je	L1160
	testb	$4, 12(%esp)
	jne	L1160
L1159:
	movl	18768(%ebx), %eax
	movl	%eax, %ecx
	testb	$4, %ah
	jne	L1257
	movl	40(%esp), %eax
	cmpl	%eax, 60(%esp)
	je	L1258
L1179:
	movl	%edx, 32(%esp)
	leal	18836(%ebx), %eax
	movl	36(%esp), %edx
	leal	18924(%ebx), %ecx
	cmpl	%edx, 44(%esp)
	movups	%xmm0, 12(%esp)
	cmove	%eax, %ecx
	movl	%ecx, %eax
	movl	%ecx, 60(%esp)
	call	__ZN5ImGuiL12NavScoreItemEP16ImGuiNavItemData
	movups	12(%esp), %xmm0
	movl	32(%esp), %edx
	testb	%al, %al
	jne	L1259
L1182:
	testb	$32, 18768(%ebx)
	je	L1248
	movl	36(%esp), %eax
	movaps	%xmm0, %xmm2
	shufps	$85, %xmm0, %xmm2
	movss	596(%eax), %xmm5
	comiss	%xmm2, %xmm5
	jbe	L1248
	movl	36(%esp), %eax
	movaps	%xmm0, %xmm1
	shufps	$255, %xmm0, %xmm1
	movss	588(%eax), %xmm4
	comiss	%xmm4, %xmm1
	jbe	L1248
	movl	36(%esp), %eax
	movss	592(%eax), %xmm6
	comiss	%xmm0, %xmm6
	jbe	L1248
	movl	36(%esp), %eax
	movaps	%xmm0, %xmm3
	unpckhps	%xmm0, %xmm3
	comiss	584(%eax), %xmm3
	jbe	L1248
	minss	%xmm1, %xmm5
	maxss	%xmm2, %xmm4
	subss	%xmm2, %xmm1
	mulss	LC44, %xmm1
	movaps	%xmm5, %xmm3
	subss	%xmm4, %xmm3
	comiss	%xmm1, %xmm3
	jnb	L1188
L1248:
	movl	18684(%ebx), %eax
	movl	%eax, 60(%esp)
	.p2align 4
	.p2align 3
L1160:
	movl	60(%esp), %ecx
	cmpl	%ecx, 40(%esp)
	jne	L1151
L1176:
	movl	36(%esp), %eax
	cmpl	18680(%ebx), %eax
	je	L1192
	movl	%edx, 44(%esp)
	movups	%xmm0, 60(%esp)
	call	__ZN5ImGui12SetNavWindowEP11ImGuiWindow
	movl	44(%esp), %edx
	movups	60(%esp), %xmm0
L1192:
	movl	36(%esp), %ecx
	movl	384(%ecx), %eax
	movb	$1, 18736(%ebx)
	movl	%eax, 18732(%ebx)
	movl	18280(%ebx), %eax
	movl	%eax, 18688(%ebx)
	movss	316(%ecx), %xmm2
	movss	312(%ecx), %xmm1
	movl	384(%ecx), %eax
	unpcklps	%xmm2, %xmm1
	movl	%eax, 60(%esp)
	sall	$4, %eax
	movlhps	%xmm1, %xmm1
	subps	%xmm1, %xmm0
	movups	%xmm0, 864(%eax,%ecx)
	jmp	L1151
L1256:
	movl	12(%esp), %ecx
	testb	$4, %cl
	jne	L1160
	movzbl	18765(%ebx), %eax
	andl	$16, %ecx
	movb	%al, 32(%esp)
	je	L1156
	cmpl	$0, 18744(%ebx)
	jne	L1260
	movl	40(%esp), %eax
	movl	%eax, 18744(%ebx)
	movl	36(%esp), %eax
	movss	316(%eax), %xmm2
	movss	312(%eax), %xmm1
	unpcklps	%xmm2, %xmm1
	movaps	%xmm0, %xmm2
	movlhps	%xmm1, %xmm1
	subps	%xmm1, %xmm2
	movups	%xmm2, 18748(%ebx)
	cmpb	$0, 32(%esp)
	jne	L1159
	jmp	L1160
L1257:
	testb	$2, %ah
	je	L1239
	movl	18828(%ebx), %eax
	movl	%eax, 44(%esp)
L1162:
	leal	18836(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	44(%esp), %eax
	cmpl	$1, %eax
	je	L1168
	addl	$1, %eax
	je	L1261
	cmpl	$0, 44(%esp)
	jne	L1160
	movl	40(%esp), %eax
	cmpl	%eax, 60(%esp)
	je	L1262
	cmpl	$0, 18972(%ebx)
	jne	L1151
L1178:
	leal	18968(%ebx), %eax
	movl	%edx, 12(%esp)
	movups	%xmm0, 44(%esp)
	call	__ZN5ImGuiL20NavApplyItemToResultEP16ImGuiNavItemData
	movl	18684(%ebx), %eax
	movups	44(%esp), %xmm0
	movl	12(%esp), %edx
	movl	%eax, 60(%esp)
	jmp	L1160
	.p2align 4,,10
	.p2align 3
L1258:
	andl	$16, %ecx
	je	L1176
	jmp	L1179
L1259:
	movl	60(%esp), %eax
	movl	%edx, 44(%esp)
	movups	%xmm0, 60(%esp)
	call	__ZN5ImGuiL20NavApplyItemToResultEP16ImGuiNavItemData
	movl	44(%esp), %edx
	movups	60(%esp), %xmm0
	jmp	L1182
L1156:
	movl	40(%esp), %eax
	movl	%eax, 18744(%ebx)
	movl	36(%esp), %eax
	movss	316(%eax), %xmm2
	movss	312(%eax), %xmm1
	movb	$0, 18741(%ebx)
	movzbl	32(%esp), %eax
	unpcklps	%xmm2, %xmm1
	movaps	%xmm0, %xmm2
	movlhps	%xmm1, %xmm1
	subps	%xmm1, %xmm2
	movb	%al, 18740(%ebx)
	movups	%xmm2, 18748(%ebx)
	testb	%al, %al
	jne	L1159
	jmp	L1160
L1239:
	movl	36(%esp), %eax
	movl	384(%eax), %eax
	cmpl	%eax, 18732(%ebx)
	jne	L1160
	movl	18828(%ebx), %ecx
	movl	12(%esp), %eax
	movl	%ecx, 44(%esp)
	testb	$1, %al
	jne	L1163
	movl	8(%ebx), %ecx
	andl	$1024, %eax
	andl	$1, %ecx
	orl	%eax, %ecx
	jne	L1162
	movl	44(%esp), %ecx
	cmpl	$1, %ecx
	je	L1164
	movl	40(%esp), %eax
	cmpl	%eax, 60(%esp)
	jne	L1160
	addl	$1, %ecx
	jne	L1160
L1165:
	cmpl	$0, 18840(%ebx)
	je	L1176
	movzbl	18741(%ebx), %eax
	movb	$0, 18765(%ebx)
	movb	%al, 18740(%ebx)
	jmp	L1160
L1260:
	cmpb	$0, 32(%esp)
	jne	L1159
	jmp	L1160
L1164:
	movl	40(%esp), %eax
	cmpl	%eax, 60(%esp)
	jne	L1151
	movl	$1, 18832(%ebx)
	jmp	L1176
L1188:
	leal	18880(%ebx), %ecx
	movl	%edx, 12(%esp)
	movl	%ecx, %eax
	movups	%xmm0, 44(%esp)
	movl	%ecx, 60(%esp)
	call	__ZN5ImGuiL12NavScoreItemEP16ImGuiNavItemData
	movups	44(%esp), %xmm0
	movl	12(%esp), %edx
	testb	%al, %al
	je	L1248
	movl	60(%esp), %eax
	movl	%edx, 12(%esp)
	movups	%xmm0, 44(%esp)
	call	__ZN5ImGuiL20NavApplyItemToResultEP16ImGuiNavItemData
	movl	18684(%ebx), %eax
	movl	12(%esp), %edx
	movups	44(%esp), %xmm0
	movl	%eax, 60(%esp)
	jmp	L1160
L1168:
	cmpl	$0, 18972(%ebx)
	je	L1263
L1172:
	movl	18832(%ebx), %eax
	testl	%eax, %eax
	jle	L1164
	subl	$1, %eax
	movl	%eax, 18832(%ebx)
	jne	L1164
	movl	12(%esp), %eax
	movl	%edx, 32(%esp)
	movups	%xmm0, 44(%esp)
	call	__ZN5ImGui33NavMoveRequestResolveWithLastItemEP16ImGuiNavItemData
	movl	18684(%ebx), %eax
	movups	44(%esp), %xmm0
	movl	32(%esp), %edx
	movl	%eax, 60(%esp)
	jmp	L1160
L1163:
	movl	44(%esp), %eax
	cmpl	$1, %eax
	je	L1164
	addl	$1, %eax
	jne	L1160
	movl	40(%esp), %eax
	cmpl	%eax, 60(%esp)
	jne	L1160
	jmp	L1165
L1261:
	movl	40(%esp), %eax
	cmpl	%eax, 60(%esp)
	je	L1165
	movl	12(%esp), %eax
	movl	%edx, 60(%esp)
	call	__ZN5ImGuiL20NavApplyItemToResultEP16ImGuiNavItemData
	movl	60(%esp), %edx
	jmp	L1151
L1263:
	leal	18968(%ebx), %eax
	movl	%edx, 32(%esp)
	movups	%xmm0, 44(%esp)
	call	__ZN5ImGuiL20NavApplyItemToResultEP16ImGuiNavItemData
	movl	32(%esp), %edx
	movups	44(%esp), %xmm0
	jmp	L1172
L1262:
	movl	12(%esp), %eax
	movl	%edx, 44(%esp)
	movups	%xmm0, 60(%esp)
	call	__ZN5ImGui33NavMoveRequestResolveWithLastItemEP16ImGuiNavItemData
	cmpl	$0, 18972(%ebx)
	movups	60(%esp), %xmm0
	movl	44(%esp), %edx
	jne	L1248
	jmp	L1178
	.cfi_endproc
LFE88:
	.section .rdata,"dr"
LC45:
	.ascii "\15\12\0"
	.text
	.p2align 4
	.globl	__ZN5ImGui3EndEv
	.def	__ZN5ImGui3EndEv;	.scl	2;	.type	32;	.endef
__ZN5ImGui3EndEv:
LFB92:
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
	subl	$116, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	_GImGui, %ebx
	cmpl	$1, 16112(%ebx)
	jle	L1378
L1265:
	movl	16148(%ebx), %eax
	movl	456(%eax), %edx
	movl	%eax, -64(%ebp)
	testl	%edx, %edx
	je	L1267
	movb	$1, 225(%eax)
	movl	16148(%ebx), %esi
	movb	$1, 225(%esi)
	movl	16148(%ebx), %eax
	movl	456(%esi), %edi
	movl	480(%eax), %edx
	movl	488(%eax), %ecx
	movss	-4(%ecx,%edx,4), %xmm0
	subl	$1, %edx
	movl	%edx, 480(%eax)
	movss	%xmm0, 472(%eax)
	cmpl	$1, 16(%edi)
	jg	L1379
L1268:
	movss	300(%esi), %xmm1
	movss	32(%edi), %xmm2
	movl	4(%edi), %eax
	movaps	%xmm1, %xmm0
	cmpnless	%xmm2, %xmm0
	andps	%xmm0, %xmm1
	andnps	%xmm2, %xmm0
	orps	%xmm1, %xmm0
	movss	%xmm0, 32(%edi)
	movss	%xmm0, 300(%esi)
	testb	$16, %al
	jne	L1271
	movss	40(%edi), %xmm1
	movss	%xmm1, 320(%esi)
L1271:
	testb	$1, %al
	jne	L1272
	movzbl	228(%esi), %edx
	testb	%dl, %dl
	jne	L1272
	cmpl	$1, 16(%edi)
	jle	L1282
	movss	588(%esi), %xmm2
	movss	36(%edi), %xmm3
	andl	$2, %eax
	movl	%eax, %ecx
	movaps	%xmm2, %xmm1
	cmpnless	%xmm3, %xmm1
	andps	%xmm1, %xmm2
	andnps	%xmm3, %xmm1
	movss	596(%esi), %xmm3
	orps	%xmm2, %xmm1
	movaps	%xmm0, %xmm2
	minss	%xmm3, %xmm2
	je	L1321
	movss	LC11, %xmm3
	leal	-56(%ebp), %eax
	movl	%ebx, -92(%ebp)
	movl	$1, %ebx
	movl	%esi, -72(%ebp)
	movl	$28, %esi
	movl	%eax, -68(%ebp)
	movb	%dl, -96(%ebp)
	movss	%xmm1, -76(%ebp)
	movss	%xmm2, -80(%ebp)
	movss	%xmm3, -88(%ebp)
	jmp	L1281
	.p2align 4,,10
	.p2align 3
L1381:
	movss	20(%eax), %xmm5
	movl	100(%eax), %edx
	movss	24(%eax), %xmm0
	subss	%xmm5, %xmm0
	mulss	(%edx,%esi), %xmm0
	addss	%xmm5, %xmm0
L1279:
	addss	%xmm4, %xmm0
	movss	-88(%ebp), %xmm5
	movl	(%edi), %edx
	movl	$8, %ecx
	movss	-80(%ebp), %xmm7
	movss	-76(%ebp), %xmm6
	movl	-68(%ebp), %eax
	addl	%ebx, %edx
	movaps	%xmm0, %xmm4
	movss	%xmm0, -84(%ebp)
	subss	%xmm5, %xmm4
	addss	%xmm0, %xmm5
	unpcklps	%xmm6, %xmm4
	unpcklps	%xmm7, %xmm5
	movlhps	%xmm5, %xmm4
	movups	%xmm4, -56(%ebp)
	call	__ZN5ImGui7ItemAddERK6ImRectjPS1_i.constprop.0
	testb	%al, %al
	je	L1280
	movl	_GImGui, %eax
	movl	15056(%eax), %edx
	movl	%edx, -40(%ebp)
	movl	15060(%eax), %edx
	movl	%edx, -36(%ebp)
	movl	15064(%eax), %edx
	movl	%edx, -32(%ebp)
	movl	15068(%eax), %edx
	movl	%edx, -28(%ebp)
	movss	14404(%eax), %xmm4
	mulss	15068(%eax), %xmm4
	leal	-40(%ebp), %eax
	movss	%xmm4, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	cvttss2sil	-84(%ebp), %ecx
	xorps	%xmm0, %xmm0
	leal	-40(%ebp), %edx
	movss	LC4, %xmm2
	movss	-80(%ebp), %xmm7
	cvtsi2ssl	%ecx, %xmm0
	movl	-72(%ebp), %ecx
	movl	676(%ecx), %ecx
	movss	%xmm7, -36(%ebp)
	movss	%xmm0, -40(%ebp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movss	-76(%ebp), %xmm1
	addss	%xmm2, %xmm1
	call	__ZN10ImDrawList7AddLineERK6ImVec2S2_jf.isra.0
	subl	$8, %esp
L1280:
	addl	$1, %ebx
	addl	$28, %esi
	cmpl	%ebx, 16(%edi)
	jle	L1380
L1281:
	movl	-72(%ebp), %eax
	movss	68(%eax), %xmm4
	movl	_GImGui, %eax
	movl	16148(%eax), %eax
	movl	456(%eax), %eax
	testl	%eax, %eax
	jne	L1381
	xorps	%xmm0, %xmm0
	jmp	L1279
	.p2align 4,,10
	.p2align 3
L1272:
	xorl	%edx, %edx
L1282:
	movb	%dl, 9(%edi)
	movl	568(%esi), %eax
	xorps	%xmm1, %xmm1
	movss	68(%esi), %xmm0
	addss	364(%esi), %xmm0
	movl	%eax, 552(%esi)
	movl	572(%esi), %eax
	movl	%eax, 556(%esi)
	movl	576(%esi), %eax
	addss	%xmm1, %xmm0
	movl	%eax, 560(%esi)
	movl	580(%esi), %eax
	movl	%eax, 564(%esi)
	movl	76(%edi), %eax
	movl	%eax, 568(%esi)
	movl	80(%edi), %eax
	movl	%eax, 572(%esi)
	movl	84(%edi), %eax
	movl	%eax, 576(%esi)
	movl	88(%edi), %eax
	movl	$0, 456(%esi)
	movl	%eax, 580(%esi)
	cvttss2sil	%xmm0, %eax
	xorps	%xmm0, %xmm0
	movl	$0x00000000, 368(%esi)
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, 296(%esi)
L1267:
	movl	-64(%ebp), %eax
	testb	$32, 15(%eax)
	je	L1382
L1302:
	movl	_GImGui, %esi
	movl	18544(%esi), %eax
	movl	%eax, %edx
	subl	$1, %edx
	movl	%edx, 18544(%esi)
	movl	$0, %edx
	jne	L1383
	movl	-64(%ebp), %eax
	movl	%edx, 18280(%esi)
	testb	$1, 15(%eax)
	je	L1384
L1304:
	movl	-64(%ebp), %eax
	cmpb	$0, 361(%eax)
	jne	L1385
L1313:
	movl	-64(%ebp), %edi
	movl	936(%edi), %eax
	testl	%eax, %eax
	je	L1314
	testb	$4, 909(%edi)
	je	L1314
	movl	112(%eax), %eax
	testl	%eax, %eax
	je	L1314
	movss	324(%edi), %xmm0
	movss	320(%edi), %xmm1
	addss	120(%edi), %xmm0
	addss	116(%edi), %xmm1
	subss	120(%eax), %xmm0
	subss	116(%eax), %xmm1
	movss	%xmm0, 324(%eax)
	movss	%xmm1, 320(%eax)
L1314:
	movl	16112(%ebx), %eax
	movl	16120(%ebx), %edx
	leal	-1(%eax), %ecx
	imull	$84, %ecx, %eax
	movl	4(%edx,%eax), %esi
	movl	%esi, 18312(%ebx)
	movl	8(%edx,%eax), %esi
	movl	%esi, 18316(%ebx)
	movl	12(%edx,%eax), %esi
	movl	%esi, 18320(%ebx)
	movl	16(%edx,%eax), %esi
	movl	%esi, 18324(%ebx)
	movl	20(%edx,%eax), %esi
	movl	%esi, 18328(%ebx)
	movl	24(%edx,%eax), %esi
	movl	%esi, 18332(%ebx)
	movl	28(%edx,%eax), %esi
	movl	%esi, 18336(%ebx)
	movl	32(%edx,%eax), %esi
	movl	%esi, 18340(%ebx)
	movl	36(%edx,%eax), %esi
	movl	%esi, 18344(%ebx)
	movl	40(%edx,%eax), %esi
	movl	%esi, 18348(%ebx)
	movl	44(%edx,%eax), %esi
	movl	%esi, 18352(%ebx)
	movl	48(%edx,%eax), %esi
	movl	%esi, 18356(%ebx)
	movl	52(%edx,%eax), %esi
	movl	%esi, 18360(%ebx)
	movl	56(%edx,%eax), %esi
	movl	%esi, 18364(%ebx)
	movl	60(%edx,%eax), %esi
	movl	%esi, 18368(%ebx)
	movl	-64(%ebp), %edi
	movl	12(%edi), %esi
	testl	$268435456, %esi
	je	L1315
	subl	$1, 18604(%ebx)
	movl	12(%edi), %esi
L1315:
	andl	$67108864, %esi
	je	L1316
	subl	$1, 18592(%ebx)
L1316:
	movl	%ecx, 16112(%ebx)
	xorl	%esi, %esi
	testl	%ecx, %ecx
	je	L1317
	movl	-84(%edx,%eax), %esi
L1317:
	movl	%esi, %eax
	call	__ZL16SetCurrentWindowP11ImGuiWindow.lto_priv.0
	movl	16148(%ebx), %eax
	testl	%eax, %eax
	je	L1264
	movl	48(%eax), %eax
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
	jmp	__ZN5ImGui18SetCurrentViewportEP11ImGuiWindowP14ImGuiViewportP.isra.0
	.p2align 4,,10
	.p2align 3
L1378:
	.cfi_restore_state
	cmpb	$0, 16065(%ebx)
	je	L1265
L1264:
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
	movl	18552(%esi), %edx
	movl	-8(%edx,%eax,4), %edx
	movl	-64(%ebp), %eax
	movl	%edx, 18280(%esi)
	testb	$1, 15(%eax)
	jne	L1304
L1384:
	cmpb	$0, 23524(%esi)
	je	L1304
	movl	$LC45, (%esp)
	call	__ZN5ImGui7LogTextEPKcz
	movl	23528(%esi), %eax
	cmpl	$2, %eax
	je	L1305
	cmpl	$4, %eax
	je	L1306
	cmpl	$1, %eax
	je	L1307
L1377:
	movl	23544(%esi), %eax
L1308:
	movb	$0, 23524(%esi)
	movl	$0, 23528(%esi)
	movl	$0, 23532(%esi)
	testl	%eax, %eax
	je	L1304
	movl	_GImGui, %edx
L1311:
	movl	$0, 23536(%esi)
	movl	$0, 23540(%esi)
	testl	%edx, %edx
	je	L1312
	subl	$1, 188(%edx)
L1312:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 23544(%esi)
	jmp	L1304
	.p2align 4,,10
	.p2align 3
L1382:
	call	__ZN5ImGui11PopClipRectEv
	jmp	L1302
	.p2align 4,,10
	.p2align 3
L1385:
	movl	_GImGui, %eax
	movl	16148(%eax), %eax
	movss	296(%eax), %xmm4
	movss	320(%eax), %xmm3
	movb	$0, 361(%eax)
	movss	300(%eax), %xmm2
	movss	324(%eax), %xmm1
	movaps	%xmm4, %xmm0
	cmpless	%xmm3, %xmm0
	andps	%xmm0, %xmm3
	andnps	%xmm4, %xmm0
	orps	%xmm3, %xmm0
	movss	%xmm0, 320(%eax)
	movaps	%xmm2, %xmm0
	cmpless	%xmm1, %xmm0
	andps	%xmm0, %xmm1
	andnps	%xmm2, %xmm0
	orps	%xmm1, %xmm0
	movss	%xmm0, 324(%eax)
	jmp	L1313
	.p2align 4,,10
	.p2align 3
L1379:
	call	__ZN5ImGui11PopClipRectEv
	cmpl	$1, 108(%edi)
	jle	L1268
	movl	676(%esi), %eax
	leal	104(%edi), %ecx
	movl	%eax, (%esp)
	call	__ZN18ImDrawListSplitter5MergeEP10ImDrawList.part.0
	subl	$4, %esp
	jmp	L1268
	.p2align 4,,10
	.p2align 3
L1380:
	movl	-92(%ebp), %ebx
	movl	-72(%ebp), %esi
	movzbl	-96(%ebp), %edx
	jmp	L1282
	.p2align 4,,10
	.p2align 3
L1307:
	movl	23532(%esi), %eax
	movl	%eax, (%esp)
	call	_fflush
	movl	23544(%esi), %eax
	jmp	L1308
	.p2align 4,,10
	.p2align 3
L1306:
	movl	23544(%esi), %eax
	cmpl	$1, 23536(%esi)
	jle	L1308
	testl	%eax, %eax
	je	L1309
	movl	_GImGui, %edx
	movl	144(%edx), %ecx
	movl	%edx, %edi
	testl	%ecx, %ecx
	je	L1386
L1310:
	movl	%eax, 4(%esp)
	movl	148(%edi), %eax
	movl	%eax, (%esp)
	call	*%ecx
	jmp	L1377
	.p2align 4,,10
	.p2align 3
L1305:
	movl	23532(%esi), %eax
	movl	%eax, (%esp)
	call	_fclose
	movl	23544(%esi), %eax
	jmp	L1308
	.p2align 4,,10
	.p2align 3
L1321:
	movss	LC11, %xmm3
	leal	-56(%ebp), %eax
	movl	%ebx, -104(%ebp)
	movl	$1, %ebx
	movl	$-1, -96(%ebp)
	movl	%eax, -68(%ebp)
	movl	%esi, -72(%ebp)
	movb	%dl, -105(%ebp)
	movl	%ecx, -112(%ebp)
	movss	%xmm1, -76(%ebp)
	movss	%xmm2, -80(%ebp)
	movss	%xmm3, -92(%ebp)
	jmp	L1278
	.p2align 4,,10
	.p2align 3
L1388:
	movl	$27, %eax
	cmpb	$0, -57(%ebp)
	je	L1286
	movl	-104(%ebp), %eax
	movl	$4, 19064(%eax)
L1287:
	movl	-100(%ebp), %ecx
	movl	$29, %eax
	testb	$2, 8(%ecx,%esi)
	movl	-96(%ebp), %ecx
	cmove	%ebx, %ecx
	movl	%ecx, -96(%ebp)
L1286:
	movl	_GImGui, %edx
	addl	$13, %eax
	leal	-40(%ebp), %esi
	sall	$4, %eax
	addl	%edx, %eax
	movl	14416(%eax), %ecx
	movl	%ecx, -40(%ebp)
	movl	14420(%eax), %ecx
	movl	%ecx, -36(%ebp)
	movl	14424(%eax), %ecx
	movl	%ecx, -32(%ebp)
	movl	14428(%eax), %ecx
	movl	%ecx, -28(%ebp)
	movss	14404(%edx), %xmm0
	mulss	14428(%eax), %xmm0
	movl	%esi, %eax
	movss	%xmm0, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	cvttss2sil	-84(%ebp), %edx
	xorps	%xmm0, %xmm0
	movl	-72(%ebp), %ecx
	movss	LC4, %xmm2
	movss	-80(%ebp), %xmm6
	movl	676(%ecx), %ecx
	movss	%xmm6, -36(%ebp)
	cvtsi2ssl	%edx, %xmm0
	movss	%xmm0, -40(%ebp)
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movss	-76(%ebp), %xmm1
	addss	%xmm2, %xmm1
	call	__ZN10ImDrawList7AddLineERK6ImVec2S2_jf.isra.0
	subl	$8, %esp
L1284:
	movl	16(%edi), %eax
	addl	$1, %ebx
	cmpl	%eax, %ebx
	jge	L1387
L1278:
	movl	100(%edi), %eax
	imull	$28, %ebx, %esi
	movl	%eax, -100(%ebp)
	movl	-72(%ebp), %eax
	movss	68(%eax), %xmm4
	movl	_GImGui, %eax
	movl	16148(%eax), %eax
	movl	456(%eax), %eax
	testl	%eax, %eax
	je	L1323
	movss	20(%eax), %xmm5
	movl	100(%eax), %edx
	movss	24(%eax), %xmm0
	subss	%xmm5, %xmm0
	mulss	(%edx,%esi), %xmm0
	addss	%xmm5, %xmm0
L1283:
	addss	%xmm0, %xmm4
	movss	-92(%ebp), %xmm7
	movl	(%edi), %edx
	movl	$8, %ecx
	movss	-80(%ebp), %xmm6
	movl	-68(%ebp), %eax
	addl	%ebx, %edx
	movaps	%xmm4, %xmm0
	movss	%xmm4, -84(%ebp)
	addss	%xmm7, %xmm4
	subss	%xmm7, %xmm0
	movl	%edx, -88(%ebp)
	unpcklps	%xmm6, %xmm4
	movss	-76(%ebp), %xmm6
	unpcklps	%xmm6, %xmm0
	movlhps	%xmm4, %xmm0
	movups	%xmm0, -56(%ebp)
	call	__ZN5ImGui7ItemAddERK6ImRectjPS1_i.constprop.0
	testb	%al, %al
	je	L1284
	leal	-57(%ebp), %eax
	movb	$0, -58(%ebp)
	leal	-58(%ebp), %ecx
	movb	$0, -57(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	-88(%ebp), %edx
	movl	-68(%ebp), %eax
	call	__ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	cmpb	$0, -58(%ebp)
	je	L1388
	movl	-104(%ebp), %eax
	cmpb	$0, -57(%ebp)
	movl	$4, 19064(%eax)
	movl	$28, %eax
	je	L1286
	jmp	L1287
	.p2align 4,,10
	.p2align 3
L1387:
	movl	-104(%ebp), %ebx
	movl	-72(%ebp), %esi
	movzbl	-105(%ebp), %edx
	movl	-112(%ebp), %ecx
	movss	-92(%ebp), %xmm3
	cmpl	$-1, -96(%ebp)
	je	L1282
	cmpb	$0, 9(%edi)
	jne	L1288
	testl	%eax, %eax
	js	L1288
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1289:
	movl	100(%edi), %edx
	addl	$1, %ecx
	addl	%eax, %edx
	addl	$28, %eax
	movss	(%edx), %xmm0
	movss	%xmm0, 4(%edx)
	cmpl	16(%edi), %ecx
	jle	L1289
L1288:
	movl	_GImGui, %ecx
	movb	$1, 9(%edi)
	movss	3528(%ecx), %xmm0
	subss	16244(%ecx), %xmm0
	movl	16148(%ecx), %eax
	movss	14516(%ecx), %xmm6
	movl	456(%eax), %edx
	addss	%xmm0, %xmm3
	subss	68(%eax), %xmm3
	movl	4(%edi), %eax
	movl	%edx, -72(%ebp)
	movl	%eax, -76(%ebp)
	movl	%edx, %eax
	movl	100(%edx), %edx
	movss	24(%eax), %xmm0
	movss	20(%eax), %xmm1
	movl	%edx, -68(%ebp)
	movl	-96(%ebp), %edx
	movaps	%xmm0, %xmm4
	subss	%xmm1, %xmm4
	subl	$1, %edx
	js	L1389
	imull	$28, %edx, %edx
	movl	-68(%ebp), %eax
	movss	(%eax,%edx), %xmm5
	movl	-96(%ebp), %eax
	mulss	%xmm4, %xmm5
	leal	1(%eax), %edx
	addss	%xmm1, %xmm5
	addss	%xmm6, %xmm5
	movaps	%xmm5, %xmm2
	cmpless	%xmm3, %xmm2
	andps	%xmm2, %xmm3
	andnps	%xmm5, %xmm2
	orps	%xmm3, %xmm2
	testb	$4, -76(%ebp)
	jne	L1319
	movl	%esi, -80(%ebp)
	movl	%eax, %edx
	movl	-68(%ebp), %esi
	movl	%edi, -84(%ebp)
	movl	-72(%ebp), %eax
	movl	%ecx, %edi
	movl	%ebx, -76(%ebp)
	jmp	L1301
	.p2align 4,,10
	.p2align 3
L1390:
	movl	16(%eax), %ecx
	subl	$1, %ecx
	cmpl	%edx, %ecx
	jle	L1294
	movzbl	9(%eax), %ecx
	movb	%cl, -72(%ebp)
	movl	%edx, %ecx
	testl	%edx, %edx
	jns	L1297
	movl	12(%eax), %ecx
L1297:
	addl	$1, %ecx
	imull	$28, %ecx, %ecx
	leal	(%esi,%ecx), %ebx
	leal	-28(%esi,%ecx), %ecx
	cmpb	$0, -72(%ebp)
	je	L1298
	movss	4(%ebx), %xmm3
	subss	4(%ecx), %xmm3
L1299:
	mulss	%xmm4, %xmm3
	movl	$1, %ecx
L1296:
	testb	$8, -68(%ebp)
	jne	L1300
	movl	16(%eax), %eax
	xorps	%xmm5, %xmm5
	subl	%edx, %eax
	cvtsi2ssl	%eax, %xmm5
	mulss	14516(%edi), %xmm5
	subss	%xmm5, %xmm0
	minss	%xmm0, %xmm2
L1300:
	movaps	%xmm2, %xmm0
	imull	$28, %edx, %eax
	subss	%xmm1, %xmm0
	divss	%xmm4, %xmm0
	movss	%xmm0, (%esi,%eax)
	testb	%cl, %cl
	je	L1328
	movss	14516(%edi), %xmm1
	movaps	%xmm3, %xmm0
	addl	$1, %edx
	movl	_GImGui, %edi
	cmpless	%xmm1, %xmm0
	movl	16148(%edi), %eax
	movl	456(%eax), %eax
	andps	%xmm0, %xmm1
	andnps	%xmm3, %xmm0
	orps	%xmm1, %xmm0
	movss	20(%eax), %xmm1
	movl	100(%eax), %esi
	addss	%xmm0, %xmm2
	movss	24(%eax), %xmm0
	movaps	%xmm0, %xmm4
	subss	%xmm1, %xmm4
L1301:
	testl	%edx, %edx
	jns	L1293
	movl	12(%eax), %edx
L1293:
	movl	4(%eax), %ecx
	movl	%ecx, -68(%ebp)
	andl	$4, %ecx
	je	L1390
L1294:
	xorl	%ecx, %ecx
	xorps	%xmm3, %xmm3
	jmp	L1296
	.p2align 4,,10
	.p2align 3
L1298:
	movss	(%ebx), %xmm3
	subss	(%ecx), %xmm3
	jmp	L1299
	.p2align 4,,10
	.p2align 3
L1328:
	movl	-76(%ebp), %ebx
	movl	-80(%ebp), %esi
	movl	$1, %edx
	movl	-84(%ebp), %edi
	jmp	L1282
	.p2align 4,,10
	.p2align 3
L1323:
	xorps	%xmm0, %xmm0
	jmp	L1283
	.p2align 4,,10
	.p2align 3
L1389:
	movl	12(%eax), %eax
	imull	$28, %eax, %edx
	movl	%eax, -80(%ebp)
	movl	-68(%ebp), %eax
	movss	(%eax,%edx), %xmm5
	mulss	%xmm4, %xmm5
	addss	%xmm1, %xmm5
	addss	%xmm6, %xmm5
	movaps	%xmm5, %xmm2
	cmpless	%xmm3, %xmm2
	andps	%xmm2, %xmm3
	andnps	%xmm5, %xmm2
	orps	%xmm3, %xmm2
	testb	$4, -76(%ebp)
	je	L1376
	cmpl	$-1, -96(%ebp)
	movl	$1, %edx
	cmovl	-80(%ebp), %edx
L1319:
	imull	$28, %edx, %edx
	movl	-68(%ebp), %eax
	movss	(%eax,%edx), %xmm3
	mulss	%xmm4, %xmm3
	addss	%xmm1, %xmm3
	subss	%xmm6, %xmm3
	minss	%xmm3, %xmm2
L1376:
	movl	-96(%ebp), %edx
	movl	-72(%ebp), %eax
	movl	%esi, -80(%ebp)
	movl	%edi, -84(%ebp)
	movl	-68(%ebp), %esi
	movl	%ecx, %edi
	movl	%ebx, -76(%ebp)
	jmp	L1301
L1309:
	movl	_GImGui, %edi
	movl	$__ZN15ImGuiTextBuffer11EmptyStringE, %eax
	movl	144(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1310
	movb	$0, 23524(%esi)
	movl	$0, 23528(%esi)
	movl	$0, 23532(%esi)
	jmp	L1304
L1386:
	movb	$0, 23524(%esi)
	movl	$0, 23528(%esi)
	movl	$0, 23532(%esi)
	jmp	L1311
	.cfi_endproc
LFE92:
	.p2align 4
	.globl	__ZN5ImGui8SameLineEff.constprop.0
	.def	__ZN5ImGui8SameLineEff.constprop.0;	.scl	2;	.type	32;	.endef
__ZN5ImGui8SameLineEff.constprop.0:
LFB108:
	.cfi_startproc
	movl	_GImGui, %edx
	movl	16148(%edx), %eax
	cmpb	$0, 228(%eax)
	jne	L1391
	movss	14480(%edx), %xmm0
	addss	304(%eax), %xmm0
	movb	$1, 360(%eax)
	movl	344(%eax), %edx
	movl	348(%eax), %ecx
	movss	%xmm0, 296(%eax)
	movss	308(%eax), %xmm0
	movl	%edx, 336(%eax)
	movss	%xmm0, 300(%eax)
	movss	356(%eax), %xmm0
	movl	%ecx, 340(%eax)
	movss	%xmm0, 352(%eax)
L1391:
	ret
	.cfi_endproc
LFE108:
	.p2align 4
	.globl	__ZN5ImGui8ItemSizeERK6ImVec2f.constprop.0.isra.0
	.def	__ZN5ImGui8ItemSizeERK6ImVec2f.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
__ZN5ImGui8ItemSizeERK6ImVec2f.constprop.0.isra.0:
LFB111:
	.cfi_startproc
	movl	_GImGui, %edx
	movaps	%xmm0, %xmm2
	movl	16148(%edx), %eax
	cmpb	$0, 228(%eax)
	jne	L1393
	movss	352(%eax), %xmm4
	xorps	%xmm0, %xmm0
	movaps	%xmm4, %xmm5
	cmpnless	%xmm0, %xmm5
	movss	300(%eax), %xmm0
	movaps	%xmm0, %xmm3
	andps	%xmm4, %xmm5
	cmpb	$0, 360(%eax)
	je	L1397
	movss	308(%eax), %xmm3
L1397:
	subss	%xmm3, %xmm0
	addss	296(%eax), %xmm2
	movss	%xmm3, 308(%eax)
	addss	%xmm1, %xmm0
	movss	%xmm2, 304(%eax)
	addss	%xmm5, %xmm0
	movss	340(%eax), %xmm5
	movaps	%xmm0, %xmm1
	cmpnless	%xmm5, %xmm0
	andps	%xmm0, %xmm1
	andnps	%xmm5, %xmm0
	movss	320(%eax), %xmm5
	orps	%xmm1, %xmm0
	movss	68(%eax), %xmm1
	addss	364(%eax), %xmm1
	addss	368(%eax), %xmm1
	addss	%xmm0, %xmm3
	cvttss2sil	%xmm1, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm1
	movss	%xmm1, 296(%eax)
	addss	14484(%edx), %xmm3
	xorps	%xmm1, %xmm1
	cvttss2sil	%xmm3, %ecx
	movaps	%xmm2, %xmm3
	cmpnless	%xmm5, %xmm3
	cvtsi2ssl	%ecx, %xmm1
	andps	%xmm3, %xmm2
	andnps	%xmm5, %xmm3
	movl	464(%eax), %ecx
	orps	%xmm2, %xmm3
	movss	%xmm3, 320(%eax)
	movss	324(%eax), %xmm3
	movss	%xmm1, 300(%eax)
	movaps	%xmm1, %xmm2
	subss	14484(%edx), %xmm2
	xorl	%edx, %edx
	movss	%xmm0, 348(%eax)
	xorps	%xmm0, %xmm0
	cmpless	%xmm4, %xmm0
	movw	%dx, 360(%eax)
	movl	$0x00000000, 340(%eax)
	movaps	%xmm2, %xmm1
	movl	$0x00000000, 352(%eax)
	cmpnless	%xmm3, %xmm1
	andps	%xmm4, %xmm0
	movss	%xmm0, 356(%eax)
	andps	%xmm1, %xmm2
	andnps	%xmm3, %xmm1
	orps	%xmm2, %xmm1
	movss	%xmm1, 324(%eax)
	testl	%ecx, %ecx
	je	L1409
L1393:
	ret
	.p2align 4,,10
	.p2align 3
L1409:
	jmp	__ZN5ImGui8SameLineEff.constprop.0
	.cfi_endproc
LFE111:
	.section .rdata,"dr"
	.align 4
LC46:
	.ascii "[popup] ClosePopupToLevel(%d), restore_focus_to_window_under_popup=%d\12\0"
	.text
	.p2align 4
	.globl	__ZN5ImGui17ClosePopupToLevelEib
	.def	__ZN5ImGui17ClosePopupToLevelEib;	.scl	2;	.type	32;	.endef
__ZN5ImGui17ClosePopupToLevelEib:
LFB112:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	%esi, 32(%esp)
	.cfi_offset 6, -16
	movl	_GImGui, %esi
	movl	%ebx, 28(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movb	%dl, 15(%esp)
	testb	$4, 23576(%esi)
	jne	L1469
L1411:
	movl	18588(%esi), %edx
	leal	(%ebx,%ebx,4), %eax
	leal	(%edx,%eax,8), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	18584(%esi), %eax
	cmpl	%eax, %ebx
	jle	L1412
	movl	%edi, 36(%esp)
	testl	%eax, %eax
	.cfi_offset 7, -12
	je	L1470
	movl	%eax, %edi
	shrl	$31, %edi
	addl	%eax, %edi
	sarl	%edi
	addl	%eax, %edi
	cmpl	%ebx, %edi
	cmovl	%ebx, %edi
	cmpl	%edi, %eax
	jl	L1471
	movl	36(%esp), %edi
	.cfi_restore 7
L1412:
	movl	%ebx, 18580(%esi)
	cmpb	$0, 15(%esp)
	je	L1410
	testl	%edx, %edx
	je	L1419
	movl	12(%edx), %eax
	testl	$268435456, %eax
	jne	L1472
	testl	%ecx, %ecx
	je	L1421
L1468:
	cmpb	$0, 224(%ecx)
	jne	L1422
	testl	$16777216, %eax
	je	L1434
	.p2align 5
	.p2align 4
	.p2align 3
L1429:
	movl	824(%edx), %edx
	movl	12(%edx), %ecx
	andl	$16777216, %ecx
	jne	L1429
L1428:
	movswl	244(%edx), %eax
	addl	%ecx, %eax
	js	L1430
	movl	_GImGui, %edx
	movl	16096(%edx), %ebx
	.p2align 4
	.p2align 3
L1432:
	movl	(%ebx,%eax,4), %edx
	testl	%edx, %edx
	je	L1431
	cmpb	$0, 224(%edx)
	je	L1431
	movl	12(%edx), %ecx
	notl	%ecx
	andl	$262656, %ecx
	jne	L1473
L1431:
	subl	$1, %eax
	jnb	L1432
L1430:
	movl	28(%esp), %ebx
	movl	32(%esp), %esi
	xorl	%eax, %eax
	addl	$44, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__ZN5ImGui11FocusWindowEP11ImGuiWindow
	.p2align 4,,10
	.p2align 3
L1410:
	.cfi_restore_state
	movl	28(%esp), %ebx
	movl	32(%esp), %esi
	addl	$44, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1470:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$8, %eax
	movl	%ebp, 40(%esp)
	cmpl	%eax, %ebx
	cmovge	%ebx, %eax
	movl	%eax, %edi
	.cfi_offset 5, -8
L1414:
	leal	(%edi,%edi,4), %eax
	leal	0(,%eax,8), %ebp
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1415
	addl	$1, 188(%eax)
L1415:
	movl	%ebp, (%esp)
	movl	$0, 4(%esp)
	movl	%ecx, 24(%esp)
	movl	%edx, 20(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	20(%esp), %edx
	movl	24(%esp), %ecx
	movl	%eax, 16(%esp)
	movl	%eax, %ebp
	movl	18588(%esi), %eax
	testl	%eax, %eax
	je	L1416
	movl	18580(%esi), %ecx
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	leal	(%ecx,%ecx,4), %ecx
	sall	$3, %ecx
	movl	%ecx, 8(%esp)
	call	_memcpy
	movl	18588(%esi), %eax
	movl	20(%esp), %edx
	movl	24(%esp), %ecx
	testl	%eax, %eax
	je	L1417
	movl	_GImGui, %ebp
	testl	%ebp, %ebp
	je	L1417
	subl	$1, 188(%ebp)
L1417:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 24(%esp)
	movl	%edx, 20(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	24(%esp), %ecx
	movl	20(%esp), %edx
L1416:
	movl	16(%esp), %eax
	movl	%edi, 18584(%esi)
	movl	%eax, 18588(%esi)
	movl	36(%esp), %edi
	.cfi_restore 7
	movl	40(%esp), %ebp
	.cfi_restore 5
	jmp	L1412
	.p2align 4,,10
	.p2align 3
L1469:
	movzbl	%dl, %eax
	movl	%ebx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$LC46, (%esp)
	call	__ZN5ImGui8DebugLogEPKcz
	jmp	L1411
	.p2align 4,,10
	.p2align 3
L1472:
	movl	824(%edx), %ecx
	testl	%ecx, %ecx
	jne	L1468
L1421:
	movl	28(%esp), %ebx
	movl	32(%esp), %esi
	movl	%ecx, %eax
	addl	$44, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__ZN5ImGui11FocusWindowEP11ImGuiWindow
	.p2align 4,,10
	.p2align 3
L1419:
	.cfi_restore_state
	testl	%ecx, %ecx
	je	L1421
L1422:
	movl	18732(%esi), %eax
	testl	%eax, %eax
	jne	L1421
	movl	%ecx, %eax
	call	__ZN5ImGuiL28NavRestoreLastChildNavWindowEP11ImGuiWindow
	movl	%eax, %ecx
	jmp	L1421
	.p2align 4,,10
	.p2align 3
L1471:
	.cfi_offset 7, -12
	movl	%ebp, 40(%esp)
	.cfi_offset 5, -8
	jmp	L1414
	.p2align 4,,10
	.p2align 3
L1473:
	.cfi_restore 5
	.cfi_restore 7
	movl	%edx, %eax
	call	__ZN5ImGuiL28NavRestoreLastChildNavWindowEP11ImGuiWindow
	movl	28(%esp), %ebx
	movl	32(%esp), %esi
	addl	$44, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__ZN5ImGui11FocusWindowEP11ImGuiWindow
L1434:
	.cfi_restore_state
	movl	$-1, %ecx
	jmp	L1428
	.cfi_endproc
LFE112:
	.section .rdata,"dr"
	.align 4
LC47:
	.ascii "[popup] ClosePopupsOverWindow(\"%s\")\12\0"
	.text
	.p2align 4
	.globl	__ZN5ImGui21ClosePopupsOverWindowEP11ImGuiWindowb
	.def	__ZN5ImGui21ClosePopupsOverWindowEP11ImGuiWindowb;	.scl	2;	.type	32;	.endef
__ZN5ImGui21ClosePopupsOverWindowEP11ImGuiWindowb:
LFB117:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	%ebp, 32(%esp)
	.cfi_offset 5, -8
	movl	%eax, %ebp
	movl	_GImGui, %eax
	movl	%edi, 28(%esp)
	.cfi_offset 7, -12
	movl	18580(%eax), %edi
	testl	%edi, %edi
	je	L1474
	movl	%esi, 24(%esp)
	movl	%edx, %ecx
	testl	%ebp, %ebp
	.cfi_offset 6, -16
	je	L1476
	testl	%edi, %edi
	jle	L1507
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -20
	movl	18588(%eax), %ebx
	xorl	%esi, %esi
	movl	%eax, 16(%esp)
	movl	%ebp, 8(%esp)
	leal	4(%ebx), %edx
	jmp	L1485
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1480:
	addl	$1, %esi
	addl	$40, %edx
	cmpl	%esi, %edi
	je	L1506
L1485:
	movl	(%edx), %eax
	testl	%eax, %eax
	je	L1480
	testb	$1, 15(%eax)
	jne	L1480
	cmpl	%esi, %edi
	jle	L1506
	movl	%edx, 12(%esp)
	movl	%edx, %ebx
	movl	%esi, %ebp
	.p2align 4
	.p2align 3
L1483:
	movl	(%ebx), %edx
	testl	%edx, %edx
	je	L1481
	movl	8(%esp), %eax
	cmpl	832(%eax), %edx
	je	L1502
	.p2align 4
	.p2align 4
	.p2align 3
L1482:
	cmpl	%eax, %edx
	je	L1502
	movl	828(%eax), %eax
	testl	%eax, %eax
	jne	L1482
L1481:
	addl	$1, %ebp
	addl	$40, %ebx
	cmpl	%ebp, %edi
	jne	L1483
	movl	16(%esp), %eax
	movl	8(%esp), %ebp
	testb	$4, 23576(%eax)
	je	L1508
	movl	4(%ebp), %eax
	movl	20(%esp), %ebx
	.cfi_restore 3
L1478:
	movl	%eax, 4(%esp)
	movl	$LC47, (%esp)
	movb	%cl, 8(%esp)
	call	__ZN5ImGui8DebugLogEPKcz
	movzbl	8(%esp), %ecx
	jmp	L1479
L1506:
	.cfi_offset 3, -20
	movl	20(%esp), %ebx
	.cfi_restore 3
L1507:
	movl	24(%esp), %esi
	.cfi_restore 6
L1474:
	movl	28(%esp), %edi
	movl	32(%esp), %ebp
	addl	$36, %esp
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1502:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	12(%esp), %edx
	jmp	L1480
L1476:
	.cfi_restore 3
	testl	%edi, %edi
	jle	L1507
	movl	23576(%eax), %esi
	andl	$4, %esi
	je	L1479
	xorl	%esi, %esi
	movl	$LC19, %eax
	jmp	L1478
L1508:
	.cfi_offset 3, -20
	movl	20(%esp), %ebx
	.cfi_restore 3
L1479:
	movl	28(%esp), %edi
	movl	32(%esp), %ebp
	movl	%esi, %eax
	movzbl	%cl, %edx
	movl	24(%esp), %esi
	.cfi_restore 6
	addl	$36, %esp
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	__ZN5ImGui17ClosePopupToLevelEib
	.cfi_endproc
LFE117:
	.p2align 4
	.globl	__ZN5ImGui11FocusWindowEP11ImGuiWindow
	.def	__ZN5ImGui11FocusWindowEP11ImGuiWindow;	.scl	2;	.type	32;	.endef
__ZN5ImGui11FocusWindowEP11ImGuiWindow:
LFB119:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	movl	_GImGui, %esi
	movl	%ebx, -12(%ebp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	cmpl	%eax, 18680(%esi)
	je	L1510
	call	__ZN5ImGui12SetNavWindowEP11ImGuiWindow
	testl	%ebx, %ebx
	je	L1553
	movl	%edi, -4(%ebp)
	cmpb	$0, 18739(%esi)
	.cfi_offset 7, -12
	jne	L1554
L1514:
	movl	856(%ebx), %eax
	xorl	%edx, %edx
	movl	$0, 18732(%esi)
	movl	%eax, 18684(%esi)
	movl	896(%ebx), %eax
	movb	$0, 18736(%esi)
	movl	%eax, 18688(%esi)
	movl	%ebx, %eax
	call	__ZN5ImGui21ClosePopupsOverWindowEP11ImGuiWindowb
L1515:
	movl	840(%ebx), %eax
	movl	832(%ebx), %ecx
	movl	936(%ebx), %edi
	movl	%eax, 4(%esp)
	movl	16252(%esi), %eax
	testl	%eax, %eax
	je	L1517
	movl	16224(%esi), %edx
	testl	%edi, %edi
	je	L1555
	cmpl	112(%edi), %eax
	je	L1556
	testl	%edx, %edx
	jne	L1557
L1552:
	movl	16048(%esi), %eax
	movl	%eax, 628(%ebx)
L1523:
	movl	48(%edi), %eax
	testl	%eax, %eax
	je	L1526
	movl	164(%ebx), %edx
	movl	%edx, 24(%eax)
	movl	48(%edi), %eax
	movl	%edx, 20(%eax)
L1526:
	movl	_GImGui, %esi
	movl	16096(%esi), %edx
	movl	16088(%esi), %edi
	cmpl	-4(%edx,%edi,4), %ecx
	je	L1529
	movswl	244(%ecx), %eax
	subl	$1, %edi
	cmpl	%edi, %eax
	jge	L1530
	movl	%ecx, (%esp)
	.p2align 6
	.p2align 4
	.p2align 3
L1531:
	addl	$1, %eax
	movl	(%edx,%eax,4), %ecx
	movl	%ecx, -4(%edx,%eax,4)
	movl	16096(%esi), %edx
	movl	-4(%edx,%eax,4), %edx
	subw	$1, 244(%edx)
	movl	16096(%esi), %edx
	cmpl	%eax, %edi
	jne	L1531
	movl	(%esp), %ecx
L1530:
	movl	%ecx, (%edx,%edi,4)
	movw	%di, 244(%ecx)
L1529:
	movl	4(%esp), %edi
	movl	12(%ecx), %eax
	orl	12(%edi), %eax
	orl	12(%ebx), %eax
	testb	$32, %ah
	je	L1558
	movl	-4(%ebp), %edi
	.cfi_restore 7
L1509:
	movl	-12(%ebp), %ebx
	movl	-8(%ebp), %esi
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L1510:
	.cfi_restore_state
	testl	%eax, %eax
	je	L1559
	movl	%edi, -4(%ebp)
	.cfi_offset 7, -12
	jmp	L1515
	.p2align 4,,10
	.p2align 3
L1558:
	movl	-12(%ebp), %ebx
	movl	-8(%ebp), %esi
	movl	%edi, %eax
	movl	-4(%ebp), %edi
	.cfi_remember_state
	.cfi_restore 7
	leave
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	jmp	__ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow
	.p2align 4,,10
	.p2align 3
L1554:
	.cfi_restore_state
	movb	$1, 18737(%esi)
	jmp	L1514
	.p2align 4,,10
	.p2align 3
L1557:
	cmpl	832(%eax), %ecx
	je	L1552
	cmpb	$0, 16238(%esi)
	jne	L1552
	xorl	%eax, %eax
	xorl	%edx, %edx
	movl	%ecx, (%esp)
	call	__ZN5ImGui11SetActiveIDEjP11ImGuiWindow
	movl	16048(%esi), %eax
	movl	(%esp), %ecx
	movl	%eax, 628(%ebx)
	jmp	L1523
	.p2align 4,,10
	.p2align 3
L1553:
	.cfi_restore 7
	movl	$0, 18732(%esi)
	xorl	%eax, %eax
	xorl	%edx, %edx
	movl	$0, 18684(%esi)
	movl	$0, 18688(%esi)
	movb	$0, 18736(%esi)
	call	__ZN5ImGui21ClosePopupsOverWindowEP11ImGuiWindowb
	movl	16252(%esi), %eax
	testl	%eax, %eax
	je	L1509
L1512:
	movl	16224(%esi), %edx
	testl	%edx, %edx
	je	L1509
	movl	832(%eax), %eax
	testl	%eax, %eax
	je	L1509
	cmpb	$0, 16238(%esi)
	jne	L1509
	movl	-12(%ebp), %ebx
	movl	-8(%ebp), %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	jmp	__ZN5ImGui11SetActiveIDEjP11ImGuiWindow
	.p2align 4,,10
	.p2align 3
L1517:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	16048(%esi), %eax
	movl	%eax, 628(%ebx)
	testl	%edi, %edi
	jne	L1523
	jmp	L1526
	.p2align 4,,10
	.p2align 3
L1556:
	movl	16048(%esi), %eax
	movl	%eax, 628(%ebx)
	jmp	L1523
	.p2align 4,,10
	.p2align 3
L1559:
	.cfi_restore 7
	movl	16252(%esi), %eax
	testl	%eax, %eax
	jne	L1512
	jmp	L1509
L1555:
	.cfi_offset 7, -12
	testl	%edx, %edx
	je	L1527
	cmpl	832(%eax), %ecx
	je	L1527
	cmpb	$0, 16238(%esi)
	je	L1560
L1527:
	movl	16048(%esi), %eax
	movl	%eax, 628(%ebx)
	jmp	L1526
L1560:
	xorl	%eax, %eax
	xorl	%edx, %edx
	movl	%ecx, (%esp)
	call	__ZN5ImGui11SetActiveIDEjP11ImGuiWindow
	movl	16048(%esi), %eax
	movl	(%esp), %ecx
	movl	%eax, 628(%ebx)
	jmp	L1526
	.cfi_endproc
LFE119:
	.section .rdata,"dr"
LC55:
	.ascii "#RESIZE\0"
	.align 4
LC60:
	.ascii "[nav] NavInitRequest: from NavInitWindow(), init_for_nav=%d, window=\"%s\", layer=%d\12\0"
	.section	.text.unlikely,"x"
LCOLDB61:
	.text
LHOTB61:
	.p2align 4
	.globl	__ZN5ImGui5BeginEPKcPbi.constprop.0.isra.0
	.def	__ZN5ImGui5BeginEPKcPbi.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
__ZN5ImGui5BeginEPKcPbi.constprop.0.isra.0:
LFB123:
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
	subl	$444, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movzbl	(%eax), %ecx
	movl	%eax, -300(%ebp)
	movl	%edx, -256(%ebp)
	movl	_GImGui, %esi
	testb	%cl, %cl
	je	L2109
	leal	1(%eax), %ebx
	movzbl	(%ebx), %edx
	movl	$-1, %eax
	cmpb	$35, %cl
	je	L1563
	.p2align 4
	.p2align 3
L1566:
	xorl	%eax, %ecx
	movl	%eax, %edi
	movzbl	%cl, %ecx
	shrl	$8, %edi
	movl	__ZL17GCrc32LookupTable.lto_priv.0(,%ecx,4), %eax
	xorl	%edi, %eax
	testb	%dl, %dl
	je	L2665
	addl	$1, %ebx
	movl	%edx, %ecx
L2666:
	movzbl	(%ebx), %edx
	cmpb	$35, %cl
	jne	L1566
L1563:
	cmpb	$35, %dl
	jne	L1566
	cmpb	$35, 1(%ebx)
	jne	L1566
	addl	$1, %ebx
	movl	$-1885708032, %eax
	movl	%edx, %ecx
	jmp	L2666
	.p2align 4,,10
	.p2align 3
L2665:
	notl	%eax
L1562:
	movl	%eax, (%esp)
	leal	16124(%esi), %ebx
	movl	%ebx, %ecx
	call	__ZNK12ImGuiStorage10GetVoidPtrEj
	subl	$4, %esp
	testl	%eax, %eax
	movl	%eax, -272(%ebp)
	movl	%eax, %edi
	sete	-277(%ebp)
	je	L2667
L1569:
	movl	16048(%esi), %eax
	movl	16112(%esi), %ebx
	movl	%eax, -240(%ebp)
	movl	624(%edi), %eax
	movl	%eax, -244(%ebp)
	xorl	%eax, %eax
	testl	%ebx, %ebx
	jne	L1587
	movzbl	16065(%esi), %eax
L1587:
	movb	%al, 231(%edi)
	movzbl	229(%edi), %eax
	movl	-240(%ebp), %ebx
	movb	%al, -248(%ebp)
	movl	-244(%ebp), %eax
	leal	-1(%ebx), %ecx
	movl	%ecx, -260(%ebp)
	cmpl	%eax, %ebx
	jne	L2668
	movl	12(%edi), %eax
	movl	%eax, -256(%ebp)
	testb	$2, 18373(%esi)
	jne	L1598
L1600:
	testb	$1, 909(%edi)
	je	L1610
	movl	936(%edi), %eax
	movl	112(%eax), %eax
	movl	%eax, -248(%ebp)
	testl	%eax, %eax
	jne	L1611
	movl	16112(%esi), %eax
	testl	%eax, %eax
	je	L1626
	.p2align 4
	.p2align 3
L1613:
	subl	$1, %eax
	imull	$84, %eax, %eax
	addl	16120(%esi), %eax
	movl	(%eax), %eax
	movl	%eax, -248(%ebp)
L1626:
	movl	-244(%ebp), %ebx
	cmpl	%ebx, -240(%ebp)
	jne	L1625
L1611:
	movl	824(%edi), %eax
	movl	%eax, -264(%ebp)
	movl	284(%edi), %eax
	testl	%eax, %eax
	jne	L1628
L2672:
	movl	288(%edi), %ecx
	testl	%ecx, %ecx
	je	L1629
	movl	292(%edi), %ebx
L1630:
	movl	8(%edi), %edx
	movl	%edx, (%ebx,%eax,4)
	addl	$1, 284(%edi)
	jmp	L1628
	.p2align 4,,10
	.p2align 3
L1598:
	movl	18388(%esi), %edx
	movzbl	267(%edi), %eax
	testl	%edx, %edx
	jne	L2669
L1601:
	andl	$-15, %eax
	movl	18468(%esi), %ebx
	movb	%al, 267(%edi)
	movl	944(%edi), %eax
	movl	%eax, -264(%ebp)
	cmpl	%eax, %ebx
	je	L1602
	movl	_GImGui, %eax
	movl	%ebx, (%esp)
	leal	23376(%eax), %ecx
	call	__ZNK12ImGuiStorage10GetVoidPtrEj
	subl	$4, %esp
	testl	%eax, %eax
	je	L1604
	movl	28(%eax), %edx
	testl	%edx, %edx
	je	L1604
	.p2align 4
	.p2align 4
	.p2align 3
L1606:
	movl	%eax, %edx
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	L1606
	movl	120(%edx), %eax
	testl	%eax, %eax
	je	L1607
	movl	(%eax), %ebx
L1608:
	cmpl	%ebx, -264(%ebp)
	je	L1602
L1604:
	movl	936(%edi), %eax
	testl	%eax, %eax
	je	L1609
	xorl	%ecx, %ecx
	movl	%edi, %edx
	call	__ZN5ImGuiL20DockNodeRemoveWindowEP13ImGuiDockNodeP11ImGuiWindowj.lto_priv.0
L1609:
	movl	%ebx, 944(%edi)
L1602:
	movl	-244(%ebp), %ebx
	cmpl	%ebx, -240(%ebp)
	jne	L1599
	jmp	L1600
	.p2align 4,,10
	.p2align 3
L2668:
	movl	-256(%ebp), %ebx
	orl	$6, %ebx
	cmpl	%ecx, %eax
	movl	%ebx, -256(%ebp)
	setl	-264(%ebp)
	cmpb	$0, 232(%edi)
	jne	L2179
	cmpb	$0, -277(%ebp)
	jne	L2179
L1589:
	movzbl	-264(%ebp), %eax
	movb	$0, 232(%edi)
	movl	-260(%ebp), %ebx
	movb	%al, 229(%edi)
	cmpl	%ebx, -244(%ebp)
	jge	L1597
	orl	$134744072, 264(%edi)
L1597:
	movl	12(%edi), %eax
	xorl	%ecx, %ecx
	movl	%eax, 16(%edi)
	movl	-256(%ebp), %eax
	movl	%eax, 12(%edi)
	movl	-240(%ebp), %eax
	movl	%eax, 624(%edi)
	fldl	16040(%esi)
	movw	%cx, 240(%edi)
	fstps	-264(%ebp)
	movss	-264(%ebp), %xmm0
	movss	%xmm0, 632(%edi)
	movl	16136(%esi), %eax
	leal	1(%eax), %edx
	movl	%edx, 16136(%esi)
	movw	%ax, 242(%edi)
	testb	$2, 18373(%esi)
	jne	L1598
L1599:
	movl	944(%edi), %eax
	testl	%eax, %eax
	jne	L1614
	movl	936(%edi), %ebx
	testl	%ebx, %ebx
	je	L2670
L1614:
	movzbl	909(%edi), %ebx
	movl	%edi, %eax
	movl	%ebx, %ecx
	shrb	$2, %bl
	shrb	%cl
	andl	$1, %ebx
	andl	$1, %ecx
	movb	%cl, -264(%ebp)
	call	__ZN5ImGui11BeginDockedEP11ImGuiWindowPb.constprop.0
	movl	12(%edi), %eax
	movzbl	-264(%ebp), %ecx
	movl	%eax, -256(%ebp)
	movzbl	909(%edi), %eax
	testb	$1, %al
	jne	L1619
	testb	$4, %al
	jne	L2671
	.p2align 4
	.p2align 3
L1624:
	movl	16112(%esi), %eax
	testl	%eax, %eax
	jne	L1613
	movl	$0, -248(%ebp)
L1625:
	xorl	%eax, %eax
	testb	$5, -253(%ebp)
	cmovne	-248(%ebp), %eax
	movl	%eax, -264(%ebp)
	movl	284(%edi), %eax
	testl	%eax, %eax
	je	L2672
L1628:
	movl	18312(%esi), %eax
	movl	%edi, 16148(%esi)
	movl	%edi, -108(%ebp)
	movl	%eax, -104(%ebp)
	movl	18316(%esi), %eax
	movl	%eax, -100(%ebp)
	movl	18320(%esi), %eax
	movl	%eax, -96(%ebp)
	movl	18324(%esi), %eax
	movl	%eax, -92(%ebp)
	movl	18328(%esi), %eax
	movl	%eax, -88(%ebp)
	movl	18332(%esi), %eax
	movl	%eax, -84(%ebp)
	movl	18336(%esi), %eax
	movl	%eax, -80(%ebp)
	movl	18340(%esi), %eax
	movl	%eax, -76(%ebp)
	movl	18344(%esi), %eax
	movl	%eax, -72(%ebp)
	movl	18348(%esi), %eax
	movl	%eax, -68(%ebp)
	movl	18352(%esi), %eax
	movl	%eax, -64(%ebp)
	movl	18356(%esi), %eax
	movl	%eax, -60(%ebp)
	movl	18360(%esi), %eax
	movl	%eax, -56(%ebp)
	movl	18364(%esi), %eax
	movl	%eax, -52(%ebp)
	movl	18368(%esi), %eax
	movl	%eax, -48(%ebp)
	movl	284(%edi), %eax
	movw	%ax, -44(%ebp)
	movl	18508(%esi), %eax
	movw	%ax, -42(%ebp)
	movl	18520(%esi), %eax
	movw	%ax, -40(%ebp)
	movl	18532(%esi), %eax
	movw	%ax, -38(%ebp)
	movl	18544(%esi), %eax
	movw	%ax, -36(%ebp)
	movl	18568(%esi), %eax
	movw	%ax, -34(%ebp)
	movl	18556(%esi), %eax
	movw	%ax, -32(%ebp)
	movl	18592(%esi), %eax
	movw	%ax, -30(%ebp)
	movzwl	23308(%esi), %eax
	movw	%ax, -28(%ebp)
	movl	16112(%esi), %eax
	cmpl	16116(%esi), %eax
	je	L2673
L1634:
	movl	16120(%esi), %ebx
L1637:
	imull	$84, %eax, %eax
	leal	(%ebx,%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 68(%edx)
	movl	-36(%ebp), %eax
	movl	%eax, 72(%edx)
	movl	-32(%ebp), %eax
	movl	%eax, 76(%edx)
	movl	-28(%ebp), %eax
	movl	%eax, 80(%edx)
	xorl	%eax, %eax
	movl	%esi, -268(%ebp)
	movl	%edi, -276(%ebp)
L1641:
	movl	-104(%ebp,%eax), %esi
	movl	-100(%ebp,%eax), %ebx
	movl	-96(%ebp,%eax), %ecx
	movl	-108(%ebp,%eax), %edi
	movl	%esi, 4(%edx,%eax)
	movl	%edi, (%edx,%eax)
	movl	%ebx, 8(%edx,%eax)
	movl	%ecx, 12(%edx,%eax)
	addl	$16, %eax
	cmpl	$80, %eax
	jb	L1641
	movl	-268(%ebp), %esi
	movl	-276(%ebp), %edi
	addl	$1, 16112(%esi)
	testb	$16, -253(%ebp)
	jne	L2674
	.p2align 4
	.p2align 3
L1643:
	movl	-244(%ebp), %ebx
	cmpl	%ebx, -240(%ebp)
	je	L1644
	movl	-264(%ebp), %ecx
	movl	-256(%ebp), %edx
	movl	%edi, %eax
	call	__ZN5ImGui30UpdateWindowParentAndRootLinksEP11ImGuiWindowiS1_
	movl	-248(%ebp), %eax
	movl	%eax, 828(%edi)
L1644:
	movl	8(%edi), %eax
	movl	_GImGui, %ebx
	movl	%eax, -268(%ebp)
	movl	18544(%ebx), %eax
	cmpl	18548(%ebx), %eax
	je	L2675
L1645:
	movl	18552(%ebx), %edx
L1648:
	movl	-268(%ebp), %ecx
	movl	%ecx, (%edx,%eax,4)
	movl	%ecx, 18280(%ebx)
	addl	$1, 18544(%ebx)
	movl	18280(%esi), %eax
	movl	%eax, 896(%edi)
	movl	$0, 16148(%esi)
	testb	$4, -253(%ebp)
	jne	L2676
L1651:
	movl	18372(%esi), %eax
	movb	$0, -268(%ebp)
	testb	$1, %al
	je	L1659
	movsbl	264(%edi), %eax
	movl	18376(%esi), %ecx
	movl	%eax, %edx
	andl	%ecx, %eax
	je	L1660
	movss	18400(%esi), %xmm0
	movss	18404(%esi), %xmm1
	mulss	%xmm0, %xmm0
	mulss	%xmm1, %xmm1
	addss	%xmm1, %xmm0
	comiss	LC50, %xmm0
	ja	L1661
L1660:
	testl	%eax, %eax
	leal	18392(%esi), %edx
	movl	%edi, %eax
	setne	-268(%ebp)
	call	__ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i
	movl	18372(%esi), %eax
L1659:
	testb	$2, %al
	je	L2115
	movl	18380(%esi), %ecx
	movsbl	265(%edi), %eax
	testl	%ecx, %eax
	je	L2116
	movss	18408(%esi), %xmm1
	xorps	%xmm0, %xmm0
	comiss	%xmm0, %xmm1
	movss	18412(%esi), %xmm1
	seta	-288(%ebp)
	comiss	%xmm0, %xmm1
	seta	-284(%ebp)
L1663:
	movl	%edi, %eax
	leal	18408(%esi), %edx
	call	__ZN5ImGui13SetWindowSizeEP11ImGuiWindowRK6ImVec2i
	movl	18372(%esi), %eax
L1662:
	testb	$-128, %al
	je	L1664
	movss	18424(%esi), %xmm0
	xorps	%xmm1, %xmm1
	comiss	%xmm1, %xmm0
	jb	L1665
	movss	%xmm0, 188(%edi)
	movss	%xmm1, 196(%edi)
L1665:
	movss	18428(%esi), %xmm0
	xorps	%xmm1, %xmm1
	comiss	%xmm1, %xmm0
	jb	L2650
	movl	$0x00000000, 200(%edi)
	movss	%xmm0, 192(%edi)
L2650:
	movl	18372(%esi), %eax
L1664:
	testb	$4, %al
	je	L1668
	movl	18416(%esi), %eax
	movl	18420(%esi), %edx
	movl	%eax, 108(%edi)
	movl	%edx, 112(%edi)
	movl	18372(%esi), %eax
L1669:
	testb	$4, %ah
	je	L1670
	movl	18472(%esi), %eax
	movl	%eax, 20(%edi)
	movl	18476(%esi), %eax
	movl	%eax, 24(%edi)
	movl	18480(%esi), %eax
	movl	%eax, 28(%edi)
	movl	18484(%esi), %eax
	movl	%eax, 32(%edi)
	movl	18488(%esi), %eax
	movl	%eax, 36(%edi)
	movl	18492(%esi), %eax
	movl	%eax, 40(%edi)
	movzwl	18496(%esi), %eax
	movw	%ax, 44(%edi)
	movl	18372(%esi), %eax
L1670:
	testb	$8, %al
	je	L1672
	movl	18384(%esi), %ecx
	movzbl	266(%edi), %edx
	testl	%ecx, %ecx
	je	L1673
	movsbl	%dl, %ebx
	testl	%ecx, %ebx
	je	L1672
L1673:
	movzbl	18433(%esi), %eax
	andl	$-15, %edx
	movb	%dl, 266(%edi)
	movb	%al, 226(%edi)
	movl	18372(%esi), %eax
L1672:
	testb	$32, %al
	jne	L2677
L1675:
	cmpb	$0, 229(%edi)
	je	L1676
	andl	$-134744073, 264(%edi)
L1676:
	movl	-256(%ebp), %eax
	movl	-244(%ebp), %edx
	movl	%eax, %ebx
	andl	$536870912, %ebx
	cmpl	%edx, -240(%ebp)
	je	L1677
	notl	%eax
	movups	LC51, %xmm0
	movl	288(%edi), %edx
	movb	$1, 223(%edi)
	testl	$50331648, %eax
	movzbl	261(%edi), %eax
	movb	$0, 233(%edi)
	sete	-304(%ebp)
	movb	%al, -292(%ebp)
	movups	%xmm0, 584(%edi)
	testl	%edx, %edx
	jg	L1678
	movl	$4, %eax
	movl	$32, %edx
	movl	$8, %ecx
	cmovne	%eax, %edx
	movl	$1, %eax
	cmove	%ecx, %eax
	movl	%eax, -240(%ebp)
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1680
	addl	$1, 188(%eax)
L1680:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %ecx
	movl	292(%edi), %eax
	testl	%eax, %eax
	je	L1681
	movl	284(%edi), %edx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	sall	$2, %edx
	movl	%edx, 8(%esp)
	movl	%ecx, -276(%ebp)
	call	_memcpy
	movl	292(%edi), %eax
	movl	-276(%ebp), %ecx
	testl	%eax, %eax
	je	L1682
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L1682
	subl	$1, 188(%edx)
L1682:
	movl	%ecx, -276(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-276(%ebp), %ecx
L1681:
	movl	-240(%ebp), %eax
	movl	%ecx, 292(%edi)
	movl	%eax, 288(%edi)
L1678:
	movl	$1, 284(%edi)
	movl	676(%edi), %ecx
	call	__ZN10ImDrawList17_ResetForNewFrameEv
	movl	$-1, 460(%edi)
	testl	%ebx, %ebx
	jne	L2678
L1683:
	cmpb	$0, 908(%edi)
	jne	L2679
L1684:
	movl	48(%edi), %eax
	testl	%eax, %eax
	je	L1693
	cmpl	%edi, 108(%eax)
	je	L1694
L1693:
	testb	$1, 909(%edi)
	jne	L1694
	movl	19028(%esi), %eax
	testl	%eax, %eax
	je	L1695
	testb	$8, 14(%edi)
	je	L1694
	.p2align 4
	.p2align 3
L1695:
	movzbl	261(%edi), %eax
	movzbl	260(%edi), %edx
	leal	100(%edi), %ebx
	cmpb	$0, 226(%edi)
	je	L1699
	cmpb	$0, 252(%edi)
	jle	L2680
L1699:
	cmpb	$0, 230(%edi)
	je	L1701
	testb	%al, %al
	jne	L1701
	testb	%dl, %dl
	jle	L1701
	.p2align 4
	.p2align 3
L2633:
	subl	$1, %edx
	movb	%dl, 260(%edi)
L1715:
	testb	%al, %al
	jle	L1716
	subl	$1, %eax
	movb	%al, 261(%edi)
L1716:
	movzbl	262(%edi), %eax
	testb	%al, %al
	jle	L1717
	subl	$1, %eax
	movb	%al, 262(%edi)
L1717:
	movl	-272(%ebp), %eax
	testl	%eax, %eax
	je	L2681
L1718:
	movl	-260(%ebp), %ecx
	cmpl	%ecx, -244(%ebp)
	jge	L1720
	movl	-256(%ebp), %eax
	testl	$100663296, %eax
	je	L1720
	movb	$1, 261(%edi)
	testb	$64, %al
	je	L1720
	cmpb	$0, -288(%ebp)
	jne	L1721
	movl	$0x00000000, 84(%edi)
	movl	$0x00000000, 76(%edi)
L1721:
	cmpb	$0, -284(%ebp)
	je	L2682
L1722:
	movl	$0x00000000, 100(%edi)
	movl	100(%edi), %eax
	movl	$0x00000000, 104(%edi)
	movl	104(%edi), %edx
	movl	%eax, 92(%edi)
	movl	%edx, 96(%edi)
	.p2align 4
	.p2align 3
L1720:
	movl	%edi, %eax
	call	__ZN5ImGuiL20WindowSelectViewportEP11ImGuiWindow
	movl	48(%edi), %eax
	call	__ZN5ImGui18SetCurrentViewportEP11ImGuiWindowP14ImGuiViewportP.isra.0
	movss	LC4, %xmm0
	testb	$-128, 9(%esi)
	je	L1723
	movl	48(%edi), %eax
	movss	40(%eax), %xmm0
L1723:
	movl	%edi, %eax
	movss	%xmm0, 668(%edi)
	call	__ZL16SetCurrentWindowP11ImGuiWindow.lto_priv.0
	movl	12(%edi), %ecx
	movzbl	909(%edi), %eax
	andl	$1, %eax
	testb	$33, %cl
	movl	%ecx, -240(%ebp)
	setne	%dl
	andl	$16777216, %ecx
	movl	%ecx, -276(%ebp)
	je	L1724
	movss	14452(%esi), %xmm0
	movss	%xmm0, 128(%edi)
	testb	%al, %al
	jne	L1725
	movl	-240(%ebp), %eax
	testl	$67174400, %eax
	jne	L1729
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	L1729
	jne	L1729
	movaps	%xmm1, %xmm0
	testb	$4, %ah
	je	L1731
	movss	14416(%esi), %xmm0
L1731:
	movl	$0x00000000, 116(%edi)
	movl	%edx, %eax
	xorps	%xmm3, %xmm3
	movss	%xmm0, 120(%edi)
	jmp	L1732
	.p2align 4,,10
	.p2align 3
L2674:
	addl	$1, 18604(%esi)
	jmp	L1643
	.p2align 4,,10
	.p2align 3
L1701:
	movss	108(%edi), %xmm1
	xorps	%xmm3, %xmm3
	movss	112(%edi), %xmm0
	ucomiss	%xmm3, %xmm1
	jp	L1703
	jne	L1703
	movss	320(%edi), %xmm2
	movss	312(%edi), %xmm4
	ucomiss	%xmm3, %xmm0
	movaps	%xmm2, %xmm1
	subss	%xmm4, %xmm1
	cvttss2sil	%xmm1, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm1
	movss	%xmm1, 92(%edi)
	jp	L2118
	jne	L2118
	movss	324(%edi), %xmm1
	subss	316(%edi), %xmm1
	cvttss2sil	%xmm1, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm1
L1705:
	movss	328(%edi), %xmm3
	movss	%xmm1, 96(%edi)
	movaps	%xmm3, %xmm1
	cmpless	%xmm2, %xmm1
	andps	%xmm1, %xmm2
	andnps	%xmm3, %xmm1
	orps	%xmm2, %xmm1
	subss	%xmm4, %xmm1
	cvttss2sil	%xmm1, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm1
	movss	%xmm1, 100(%edi)
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	L1710
	jne	L1710
	movss	324(%edi), %xmm3
	movss	316(%edi), %xmm2
	jmp	L2105
	.p2align 4,,10
	.p2align 3
L1694:
	movl	-272(%ebp), %eax
	testl	%eax, %eax
	je	L1695
	movl	4(%edi), %ebx
	movl	%ebx, 4(%esp)
	movl	-300(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	je	L1695
	movl	156(%edi), %eax
	movl	-300(%ebp), %ecx
	movl	%eax, -240(%ebp)
	movl	%ecx, (%esp)
	call	_strlen
	leal	1(%eax), %edx
	cmpl	%edx, -240(%ebp)
	jb	L2683
L1696:
	movl	%edx, 8(%esp)
	movl	-300(%ebp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_memcpy
	movl	%eax, 4(%edi)
	movl	-240(%ebp), %eax
	movl	%eax, 156(%edi)
	jmp	L1695
	.p2align 4,,10
	.p2align 3
L1668:
	movl	-244(%ebp), %ecx
	cmpl	%ecx, -240(%ebp)
	je	L1669
	movl	$0x00000000, 108(%edi)
	movl	$0x00000000, 112(%edi)
	movl	18372(%esi), %eax
	jmp	L1669
	.p2align 4,,10
	.p2align 3
L2115:
	movb	$0, -284(%ebp)
	movb	$0, -288(%ebp)
	jmp	L1662
	.p2align 4,,10
	.p2align 3
L2675:
	leal	1(%eax), %edx
	movl	%edx, %ecx
	testl	%eax, %eax
	jne	L1646
	movl	$8, %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, -276(%ebp)
L1647:
	addl	$1, 188(%ebx)
	movl	$0, 4(%esp)
	movl	-276(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %edx
	movl	18552(%ebx), %eax
	testl	%eax, %eax
	je	L1649
	movl	18544(%ebx), %ecx
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	sall	$2, %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, -284(%ebp)
	call	_memcpy
	movl	18552(%ebx), %eax
	movl	-284(%ebp), %edx
	testl	%eax, %eax
	je	L1650
	movl	_GImGui, %ecx
	testl	%ecx, %ecx
	je	L1650
	subl	$1, 188(%ecx)
L1650:
	movl	%edx, -284(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-284(%ebp), %edx
L1649:
	movl	-276(%ebp), %eax
	movl	%edx, 18552(%ebx)
	movl	%eax, 18548(%ebx)
	movl	18544(%ebx), %eax
	jmp	L1648
	.p2align 4,,10
	.p2align 3
L2673:
	leal	1(%eax), %ecx
	testl	%eax, %eax
	jne	L1635
	movl	$8, %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
L1636:
	movl	_GImGui, %eax
	imull	$84, %ecx, %edx
	testl	%eax, %eax
	je	L1638
	addl	$1, 188(%eax)
L1638:
	movl	%ecx, -268(%ebp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-268(%ebp), %ecx
	movl	%eax, %ebx
	movl	16120(%esi), %eax
	testl	%eax, %eax
	je	L1639
	imull	$84, 16112(%esi), %edx
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	movl	%edx, 8(%esp)
	call	_memcpy
	movl	16120(%esi), %eax
	movl	-268(%ebp), %ecx
	testl	%eax, %eax
	je	L1640
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L1640
	subl	$1, 188(%edx)
L1640:
	movl	%ecx, -268(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-268(%ebp), %ecx
L1639:
	movl	%ebx, 16120(%esi)
	movl	16112(%esi), %eax
	movl	%ecx, 16116(%esi)
	jmp	L1637
	.p2align 4,,10
	.p2align 3
L1703:
	xorps	%xmm2, %xmm2
	movss	%xmm1, 92(%edi)
	ucomiss	%xmm2, %xmm0
	jp	L2182
	jne	L2182
	movss	324(%edi), %xmm3
	movss	316(%edi), %xmm2
	movss	%xmm1, 100(%edi)
	movaps	%xmm3, %xmm0
	subss	%xmm2, %xmm0
	cvttss2sil	%xmm0, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	movss	%xmm0, 96(%edi)
L2105:
	movss	332(%edi), %xmm1
	movaps	%xmm1, %xmm0
	cmpnless	%xmm3, %xmm0
	andps	%xmm0, %xmm1
	andnps	%xmm3, %xmm0
	orps	%xmm1, %xmm0
	subss	%xmm2, %xmm0
	cvttss2sil	%xmm0, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
L1710:
	movss	%xmm0, 104(%edi)
L1702:
	testb	%dl, %dl
	jg	L2633
	jmp	L1715
	.p2align 4,,10
	.p2align 3
L2676:
	movl	18592(%esi), %eax
	leal	(%eax,%eax,4), %edx
	movl	18588(%esi), %eax
	leal	(%eax,%edx,8), %ebx
	movl	-248(%ebp), %eax
	movl	%edi, 4(%ebx)
	movl	384(%eax), %eax
	movl	%eax, 12(%ebx)
	movl	18592(%esi), %eax
	cmpl	18596(%esi), %eax
	je	L2684
L1652:
	movl	18600(%esi), %ecx
L1655:
	movl	(%ebx), %edx
	leal	(%eax,%eax,4), %eax
	movl	%edx, (%ecx,%eax,8)
	movl	4(%ebx), %edx
	movl	%edx, 4(%ecx,%eax,8)
	movl	8(%ebx), %edx
	movl	%edx, 8(%ecx,%eax,8)
	movl	12(%ebx), %edx
	movl	%edx, 12(%ecx,%eax,8)
	movl	16(%ebx), %edx
	movl	%edx, 16(%ecx,%eax,8)
	movl	20(%ebx), %edx
	movl	%edx, 20(%ecx,%eax,8)
	movl	24(%ebx), %edx
	movl	%edx, 24(%ecx,%eax,8)
	movl	28(%ebx), %edx
	movl	%edx, 28(%ecx,%eax,8)
	movl	32(%ebx), %edx
	movl	%edx, 32(%ecx,%eax,8)
	movl	36(%ebx), %edx
	movl	%edx, 36(%ecx,%eax,8)
	addl	$1, 18592(%esi)
	movl	(%ebx), %eax
	movl	%eax, 248(%edi)
	jmp	L1651
	.p2align 4,,10
	.p2align 3
L2677:
	movl	%edi, %eax
	call	__ZN5ImGui11FocusWindowEP11ImGuiWindow
	jmp	L1675
	.p2align 4,,10
	.p2align 3
L2679:
	movl	676(%edi), %ebx
	movb	$0, 908(%edi)
	movl	900(%edi), %ecx
	cmpl	16(%ebx), %ecx
	jg	L2685
	movl	904(%edi), %ecx
	cmpl	28(%ebx), %ecx
	jg	L2686
L1689:
	movl	$0, 900(%edi)
	movl	$0, 904(%edi)
	jmp	L1684
	.p2align 4,,10
	.p2align 3
L2678:
	movl	676(%edi), %eax
	leal	120(%eax), %ecx
	call	__ZN18ImDrawListSplitter5SplitEP10ImDrawListi.constprop.0
	movl	676(%edi), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	leal	120(%eax), %ecx
	call	__ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi
	subl	$8, %esp
	jmp	L1683
	.p2align 4,,10
	.p2align 3
L2116:
	movb	$0, -288(%ebp)
	movb	$0, -284(%ebp)
	jmp	L1663
	.p2align 4,,10
	.p2align 3
L2179:
	movl	_GImGui, %ebx
	movl	16088(%ebx), %eax
	cmpl	16092(%ebx), %eax
	je	L2687
L1591:
	movl	16096(%ebx), %edx
L1594:
	movl	%edi, (%edx,%eax,4)
	movl	16088(%ebx), %eax
	addl	$1, %eax
	movl	%eax, 16088(%ebx)
	subl	$1, %eax
	movw	%ax, 244(%edi)
	jmp	L1589
	.p2align 4,,10
	.p2align 3
L1677:
	movl	48(%edi), %eax
	call	__ZN5ImGui18SetCurrentViewportEP11ImGuiWindowP14ImGuiViewportP.isra.0
	movl	%edi, %eax
	call	__ZL16SetCurrentWindowP11ImGuiWindow.lto_priv.0
	testl	%ebx, %ebx
	je	L2688
L2661:
	addw	$1, 236(%edi)
	movb	$0, 225(%edi)
	movl	$0, 18372(%esi)
	.p2align 4
	.p2align 3
L2088:
	cmpb	$0, 231(%edi)
	jne	L1561
	cmpb	$0, 116(%esi)
	je	L2220
	cmpb	$0, -277(%ebp)
	jne	L2090
L2220:
	cmpb	$0, 117(%esi)
	je	L1561
	movsbl	23610(%esi), %eax
	cmpl	16112(%esi), %eax
	je	L2090
L1561:
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
L1610:
	.cfi_restore_state
	movl	16112(%esi), %eax
	testl	%eax, %eax
	jne	L1613
	movl	$0, -248(%ebp)
	jmp	L1611
	.p2align 4,,10
	.p2align 3
L1635:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	cmpl	%ecx, %edx
	cmovge	%edx, %ecx
	cmpl	%ecx, %eax
	jge	L1634
	jmp	L1636
	.p2align 4,,10
	.p2align 3
L1646:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	movl	%edx, -276(%ebp)
	cmpl	%edx, %eax
	jge	L1645
	jmp	L1647
	.p2align 4,,10
	.p2align 3
L1661:
	movl	18392(%esi), %ecx
	movl	18396(%esi), %ebx
	andl	$-15, %edx
	movb	$1, -268(%ebp)
	movl	%ecx, 268(%edi)
	movl	%ebx, 272(%edi)
	movl	18400(%esi), %ecx
	movl	18404(%esi), %ebx
	movb	%dl, 264(%edi)
	movl	%ecx, 276(%edi)
	movl	%ebx, 280(%edi)
	movl	18372(%esi), %eax
	jmp	L1659
	.p2align 4,,10
	.p2align 3
L2118:
	movaps	%xmm0, %xmm1
	jmp	L1705
	.p2align 4,,10
	.p2align 3
L2182:
	movss	%xmm0, 96(%edi)
	movss	%xmm1, 100(%edi)
	jmp	L1710
	.p2align 4,,10
	.p2align 3
L2669:
	movsbl	%al, %ecx
	testl	%edx, %ecx
	jne	L1601
	jmp	L1602
	.p2align 4,,10
	.p2align 3
L2685:
	movl	_GImGui, %eax
	leal	(%ecx,%ecx), %edx
	testl	%eax, %eax
	je	L1686
	addl	$1, 188(%eax)
L1686:
	movl	%ecx, -276(%ebp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-276(%ebp), %ecx
	movl	%eax, -240(%ebp)
	movl	20(%ebx), %eax
	testl	%eax, %eax
	je	L1687
	movl	12(%ebx), %ecx
	movl	%eax, 4(%esp)
	leal	(%ecx,%ecx), %edx
	movl	%edx, 8(%esp)
	movl	-240(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	20(%ebx), %eax
	movl	-276(%ebp), %ecx
	testl	%eax, %eax
	je	L1688
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L1688
	subl	$1, 188(%edx)
L1688:
	movl	%ecx, -276(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-276(%ebp), %ecx
L1687:
	movl	-240(%ebp), %eax
	movl	%ecx, 16(%ebx)
	movl	%eax, 20(%ebx)
	movl	676(%edi), %ebx
	movl	904(%edi), %ecx
	cmpl	28(%ebx), %ecx
	jle	L1689
L2686:
	movl	_GImGui, %edx
	leal	(%ecx,%ecx,4), %eax
	sall	$2, %eax
	testl	%edx, %edx
	je	L1690
	addl	$1, 188(%edx)
L1690:
	movl	%ecx, -276(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-276(%ebp), %ecx
	movl	%eax, -240(%ebp)
	movl	32(%ebx), %eax
	testl	%eax, %eax
	je	L1691
	movl	24(%ebx), %edx
	movl	%eax, 4(%esp)
	leal	(%edx,%edx,4), %edx
	sall	$2, %edx
	movl	%edx, 8(%esp)
	movl	-240(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	32(%ebx), %eax
	movl	-276(%ebp), %ecx
	testl	%eax, %eax
	je	L1692
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L1692
	subl	$1, 188(%edx)
L1692:
	movl	%ecx, -276(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-276(%ebp), %ecx
L1691:
	movl	-240(%ebp), %eax
	movl	%ecx, 28(%ebx)
	movl	%eax, 32(%ebx)
	jmp	L1689
	.p2align 4,,10
	.p2align 3
L2687:
	leal	1(%eax), %edx
	movl	%edx, %ecx
	testl	%eax, %eax
	jne	L1592
	movl	$8, %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, -268(%ebp)
L1593:
	addl	$1, 188(%ebx)
	movl	$0, 4(%esp)
	movl	-268(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %edx
	movl	16096(%ebx), %eax
	testl	%eax, %eax
	je	L1595
	movl	16088(%ebx), %ecx
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	sall	$2, %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, -276(%ebp)
	call	_memcpy
	movl	16096(%ebx), %eax
	movl	-276(%ebp), %edx
	testl	%eax, %eax
	je	L1596
	movl	_GImGui, %ecx
	testl	%ecx, %ecx
	je	L1596
	subl	$1, 188(%ecx)
L1596:
	movl	%edx, -276(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-276(%ebp), %edx
L1595:
	movl	-268(%ebp), %eax
	movl	%edx, 16096(%ebx)
	movl	%eax, 16092(%ebx)
	movl	16088(%ebx), %eax
	jmp	L1594
L2688:
	leal	544(%edi), %edx
	leal	536(%edi), %eax
	movl	$1, %ecx
	call	__ZN5ImGui12PushClipRectERK6ImVec2S2_b
	jmp	L2661
L2671:
	cmpb	$1, %bl
	je	L1624
	testb	%cl, %cl
	je	L1624
	movzbl	-248(%ebp), %eax
	orb	229(%edi), %al
	jne	L1624
L1621:
	orl	$134744072, 264(%edi)
	movb	$1, 229(%edi)
	.p2align 4
	.p2align 3
L1623:
	testb	%al, %al
	je	L1624
	movl	936(%edi), %eax
	movl	112(%eax), %eax
	movl	%eax, -248(%ebp)
	testl	%eax, %eax
	jne	L1625
	jmp	L1624
	.p2align 4,,10
	.p2align 3
L1729:
	movl	%edx, %eax
	.p2align 4
	.p2align 3
L1725:
	movl	14416(%esi), %ecx
	movl	14412(%esi), %edx
	movl	%ecx, 120(%edi)
	movl	%edx, 116(%edi)
	movss	116(%edi), %xmm3
L1732:
	movss	14480(%esi), %xmm1
	movss	18500(%esi), %xmm2
	movl	(%edi), %ecx
	movaps	%xmm1, %xmm0
	cmpnless	%xmm3, %xmm0
	andps	%xmm0, %xmm1
	andnps	%xmm3, %xmm0
	orps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	cmpnless	%xmm0, %xmm1
	andps	%xmm1, %xmm2
	andnps	%xmm0, %xmm1
	orps	%xmm2, %xmm1
	movss	%xmm1, 396(%edi)
	movss	18504(%esi), %xmm0
	movss	%xmm0, 400(%edi)
	testb	%al, %al
	je	L2689
	movzbl	-277(%ebp), %eax
	movb	$0, 226(%edi)
	movb	%al, -316(%ebp)
L1743:
	movss	212(%edi), %xmm6
	movl	12(%edi), %eax
	xorps	%xmm1, %xmm1
	movb	$0, 227(%edi)
	movl	$0x00000000, 132(%edi)
	movss	%xmm6, -328(%ebp)
	movss	216(%edi), %xmm6
	movl	$0x00000000, 140(%edi)
	movss	%xmm6, -344(%ebp)
	testb	$1, %al
	jne	L1744
	movl	824(%edi), %edx
	movss	15520(%ecx), %xmm0
	mulss	664(%edi), %xmm0
	mulss	668(%edi), %xmm0
	testl	%edx, %edx
	je	L1745
	mulss	664(%edx), %xmm0
L1745:
	movss	14468(%ecx), %xmm1
	addss	%xmm1, %xmm1
	addss	%xmm0, %xmm1
L1744:
	xorps	%xmm0, %xmm0
	testb	$4, %ah
	je	L1746
	movl	824(%edi), %eax
	movss	15520(%ecx), %xmm2
	mulss	664(%edi), %xmm2
	movss	400(%edi), %xmm3
	mulss	668(%edi), %xmm2
	testl	%eax, %eax
	je	L1747
	mulss	664(%eax), %xmm2
L1747:
	movss	14468(%ecx), %xmm0
	addss	%xmm3, %xmm2
	addss	%xmm0, %xmm0
	addss	%xmm2, %xmm0
L1746:
	addss	%xmm1, %xmm0
	movl	%ebx, %edx
	movl	%edi, %eax
	movl	$0x00000000, 144(%edi)
	movl	$0x00000000, 212(%edi)
	movl	$0x00000000, 216(%edi)
	movss	%xmm0, 136(%edi)
	call	__ZL21CalcWindowAutoFitSizeP11ImGuiWindowRK6ImVec2.lto_priv.0
	movl	%eax, -296(%ebp)
	movl	%edx, -324(%ebp)
	testb	$64, -240(%ebp)
	je	L1748
	cmpb	$0, 226(%edi)
	jne	L1748
	movzbl	-277(%ebp), %eax
	movb	%al, -320(%ebp)
	cmpb	$0, -288(%ebp)
	jne	L1749
	movss	-296(%ebp), %xmm6
	movb	$1, -320(%ebp)
	movss	%xmm6, 84(%edi)
L1749:
	cmpb	$0, -284(%ebp)
	jne	L2651
	movss	-324(%ebp), %xmm1
	movb	$1, -316(%ebp)
	movss	%xmm1, 88(%edi)
	.p2align 4
	.p2align 3
L1751:
	movss	84(%edi), %xmm0
	movl	%edi, %eax
	call	__ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2.isra.0
	movl	%eax, 84(%edi)
	movl	%edx, 88(%edi)
	cmpb	$0, 226(%edi)
	je	L1763
	movl	-276(%ebp), %ecx
	movss	84(%edi), %xmm1
	testl	%ecx, %ecx
	jne	L1764
	movss	72(%edi), %xmm2
	xorps	%xmm0, %xmm0
	testb	$1, 12(%edi)
	jne	L1765
	movl	(%edi), %eax
	movl	824(%edi), %edx
	movss	15520(%eax), %xmm3
	mulss	664(%edi), %xmm3
	mulss	668(%edi), %xmm3
	testl	%edx, %edx
	je	L1766
	mulss	664(%edx), %xmm3
L1766:
	movss	14468(%eax), %xmm0
	addss	%xmm0, %xmm0
	addss	%xmm3, %xmm0
L1765:
	movss	68(%edi), %xmm3
	addss	%xmm2, %xmm0
	movl	-260(%ebp), %ebx
	addss	%xmm3, %xmm1
	subss	%xmm2, %xmm0
	subss	%xmm3, %xmm1
	movss	%xmm0, 80(%edi)
	movss	%xmm1, 76(%edi)
	cmpl	%ebx, -244(%ebp)
	jge	L1768
	movl	$-1, 256(%edi)
	movl	-240(%ebp), %eax
	andl	$201326592, %eax
	cmpl	$67108864, %eax
	jne	L1768
	cmpb	$0, -268(%ebp)
	je	L2103
	.p2align 4
	.p2align 3
L1768:
	movss	268(%edi), %xmm0
	ucomiss	LC0, %xmm0
	jp	L2190
	je	L1793
L2190:
	cmpb	$0, 261(%edi)
	je	L1795
L1793:
	testb	$16, -237(%ebp)
	jne	L1784
	testb	$4, -237(%ebp)
	jne	L1792
L1785:
	movzbl	-268(%ebp), %ebx
	xorl	$1, %ebx
L1797:
	testb	$2, -237(%ebp)
	je	L1789
	cmpb	$0, -268(%ebp)
	jne	L1789
	cmpb	$0, -304(%ebp)
	je	L2102
	.p2align 4
	.p2align 3
L1789:
	movl	64(%edi), %eax
	testl	%eax, %eax
	js	L1801
	movzbl	222(%edi), %edx
	testb	%dl, %dl
	jne	L1802
	movl	48(%edi), %eax
	movss	12(%eax), %xmm4
	movss	20(%eax), %xmm7
	movss	8(%eax), %xmm3
	movss	16(%eax), %xmm6
	addss	%xmm4, %xmm7
	addss	%xmm3, %xmm6
	testb	$4, 5(%eax)
	jne	L2656
	movss	68(%edi), %xmm5
	comiss	%xmm3, %xmm5
	jb	L1805
	movss	72(%edi), %xmm2
	comiss	%xmm4, %xmm2
	movss	%xmm2, -256(%ebp)
	jb	L1805
	movss	76(%edi), %xmm0
	addss	%xmm5, %xmm0
	comiss	%xmm0, %xmm6
	jb	L1805
	addss	80(%edi), %xmm2
	comiss	%xmm2, %xmm7
	jnb	L1804
	.p2align 4
	.p2align 3
L1805:
	leal	76(%edi), %eax
	movl	8(%edi), %edx
	movl	$32, 4(%esp)
	leal	68(%edi), %ecx
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__ZN5ImGuiL17AddUpdateViewportEP11ImGuiWindowjRK6ImVec2S4_i
	movl	%eax, 48(%edi)
	call	__ZN5ImGui18SetCurrentViewportEP11ImGuiWindowP14ImGuiViewportP.isra.0
	movss	LC4, %xmm0
	testb	$-128, 9(%esi)
	je	L1809
	movl	48(%edi), %eax
	movss	40(%eax), %xmm0
L1809:
	movss	%xmm0, 668(%edi)
	movl	%edi, %eax
	call	__ZL16SetCurrentWindowP11ImGuiWindow.lto_priv.0
	.p2align 4
	.p2align 3
L1801:
	movzbl	222(%edi), %edx
	testb	%dl, %dl
	jne	L1802
	movl	48(%edi), %eax
	movss	12(%eax), %xmm4
	movss	20(%eax), %xmm7
	movss	8(%eax), %xmm3
	movss	16(%eax), %xmm6
	addss	%xmm4, %xmm7
	addss	%xmm3, %xmm6
L2656:
	movss	72(%edi), %xmm5
	movss	%xmm5, -256(%ebp)
	movss	68(%edi), %xmm5
L1804:
	movaps	%xmm3, %xmm0
	movaps	%xmm6, %xmm1
	movss	14604(%esi), %xmm2
	movl	-276(%ebp), %ecx
	unpcklps	%xmm7, %xmm1
	unpcklps	%xmm4, %xmm0
	movlhps	%xmm1, %xmm0
	movups	%xmm0, -216(%ebp)
	movaps	%xmm2, %xmm1
	shrl	$24, %ecx
	movss	14596(%esi), %xmm0
	xorb	$1, %cl
	movb	%cl, -284(%ebp)
	cmpless	%xmm0, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm2, %xmm1
	movss	14592(%esi), %xmm2
	orps	%xmm0, %xmm1
	movss	14600(%esi), %xmm0
	cmpless	%xmm2, %xmm0
	andps	%xmm0, %xmm2
	movss	%xmm2, -248(%ebp)
	movss	14600(%esi), %xmm2
	andnps	%xmm2, %xmm0
	movss	-248(%ebp), %xmm2
	orps	%xmm2, %xmm0
	movss	28(%eax), %xmm2
	addss	36(%eax), %xmm2
	subss	%xmm1, %xmm2
	movss	%xmm2, -288(%ebp)
	movss	24(%eax), %xmm2
	addss	32(%eax), %xmm2
	subss	%xmm0, %xmm2
	movss	%xmm2, -348(%ebp)
	movss	28(%eax), %xmm2
	addss	%xmm1, %xmm2
	movss	%xmm2, -268(%ebp)
	movss	24(%eax), %xmm2
	addss	%xmm0, %xmm2
	movss	%xmm2, -248(%ebp)
	je	L1810
	testb	%bl, %bl
	jne	L2690
L1810:
	cvttss2sil	%xmm5, %ecx
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm0
	cvttss2sil	-256(%ebp), %ecx
	movss	%xmm0, 68(%edi)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	movss	%xmm0, 72(%edi)
	testb	%dl, %dl
	jne	L1837
	testb	$1, 909(%edi)
	jne	L1837
	movl	-276(%ebp), %ecx
	testl	%ecx, %ecx
	je	L1838
	movss	14448(%esi), %xmm1
	.p2align 4
	.p2align 3
L1837:
	movl	-260(%ebp), %ecx
	movss	%xmm1, 124(%edi)
	cmpl	%ecx, -244(%ebp)
	jge	L2137
	movl	-240(%ebp), %ebx
	testb	$16, %bh
	jne	L2137
	movb	$1, -292(%ebp)
	testl	$67108864, %ebx
	jne	L1841
	shrl	$25, %ebx
	movzbl	909(%edi), %ecx
	movl	%ebx, %edx
	andl	$1, %edx
	andl	$1, %ecx
	orb	-284(%ebp), %cl
	cmove	%ecx, %edx
	xorl	$1, %edx
	testb	%cl, %cl
	cmovne	%edx, %ecx
	movb	%cl, -292(%ebp)
L1841:
	movl	_GImGui, %ecx
	movl	18580(%ecx), %edx
	movl	%ecx, -256(%ebp)
	movl	%edx, %ebx
	subl	$1, %ebx
	movl	%ebx, -284(%ebp)
	js	L1846
	movl	18588(%ecx), %ecx
	leal	(%edx,%edx,4), %edx
	leal	-36(%ecx,%edx,8), %ecx
	movl	%ecx, -308(%ebp)
	.p2align 4
	.p2align 3
L1845:
	movl	(%ecx), %edx
	testl	%edx, %edx
	je	L1843
	testb	$8, 15(%edx)
	jne	L1844
L1843:
	subl	$1, %ebx
	subl	$40, %ecx
	cmpl	$-1, %ebx
	jne	L1845
L1846:
	movss	124(%edi), %xmm1
	.p2align 4
	.p2align 3
L1840:
	movss	15516(%esi), %xmm2
	movzbl	110(%esi), %ebx
	movss	LC6, %xmm0
	movl	940(%edi), %ecx
	addss	LC4, %xmm1
	movb	%bl, -336(%ebp)
	mulss	%xmm2, %xmm0
	mulss	LC52, %xmm2
	addss	%xmm1, %xmm0
	comiss	%xmm0, %xmm2
	setnb	%dl
	testl	%ecx, %ecx
	je	L2691
	movl	$0, -168(%ebp)
	movl	$0, -164(%ebp)
	movl	$0, -160(%ebp)
	movl	$0, -156(%ebp)
	testb	%dl, %dl
	je	L2100
	movaps	%xmm2, %xmm0
L2100:
	cvttss2sil	%xmm0, %edx
	xorps	%xmm6, %xmm6
	cvtsi2ssl	%edx, %xmm6
	movss	%xmm6, -340(%ebp)
L2101:
	movzbl	226(%edi), %ebx
	movb	%bl, -332(%ebp)
	testb	%bl, %bl
	je	L2692
	leal	-152(%ebp), %ecx
	movl	$-1, %ebx
	movss	LC0, %xmm6
	movl	%ecx, -308(%ebp)
	movss	%xmm6, -312(%ebp)
L1867:
	movb	%bl, 234(%edi)
	cmpb	$0, 222(%edi)
	je	L1938
	cmpb	$0, 69(%eax)
	jne	L1939
	movl	68(%edi), %ecx
	movl	72(%edi), %ebx
	movl	%ecx, 8(%eax)
	movl	%ebx, 12(%eax)
	movl	48(%edi), %eax
L1939:
	cmpb	$0, 70(%eax)
	jne	L1940
	movl	76(%edi), %ecx
	movl	80(%edi), %ebx
	movl	%ecx, 16(%eax)
	movl	%ebx, 20(%eax)
	movl	48(%edi), %eax
L1940:
	movss	224(%eax), %xmm0
	movss	16(%eax), %xmm1
	xorps	%xmm5, %xmm5
	movss	232(%eax), %xmm4
	movss	228(%eax), %xmm3
	subss	%xmm0, %xmm1
	movss	20(%eax), %xmm2
	addss	8(%eax), %xmm0
	subss	%xmm3, %xmm2
	addss	236(%eax), %xmm2
	addss	%xmm1, %xmm4
	addss	12(%eax), %xmm3
	movaps	%xmm4, %xmm1
	unpcklps	%xmm3, %xmm0
	cmpnless	%xmm5, %xmm1
	andps	%xmm4, %xmm1
	movaps	%xmm2, %xmm4
	cmpnless	%xmm5, %xmm4
	andps	%xmm4, %xmm2
	unpcklps	%xmm2, %xmm1
	movlhps	%xmm1, %xmm0
	movups	%xmm0, 24(%eax)
	movl	48(%edi), %eax
	movss	12(%eax), %xmm2
	movss	8(%eax), %xmm0
	movss	16(%eax), %xmm1
	movss	20(%eax), %xmm3
	addss	%xmm0, %xmm1
	addss	%xmm2, %xmm3
	unpcklps	%xmm2, %xmm0
	unpcklps	%xmm3, %xmm1
	movlhps	%xmm1, %xmm0
	movups	%xmm0, -216(%ebp)
L1938:
	movss	136(%edi), %xmm6
	movss	120(%edi), %xmm0
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movss	%xmm6, -248(%ebp)
	addss	%xmm0, %xmm0
	addss	96(%edi), %xmm0
	movss	144(%edi), %xmm6
	movl	%eax, 56(%edi)
	movss	84(%edi), %xmm2
	movss	%xmm6, -256(%ebp)
	movss	116(%edi), %xmm6
	movss	%xmm0, -288(%ebp)
	movaps	%xmm6, %xmm0
	movl	%edx, 60(%edi)
	addss	%xmm6, %xmm0
	addss	92(%edi), %xmm0
	movss	%xmm6, -324(%ebp)
	movss	%xmm0, -296(%ebp)
	cmpb	$0, 226(%edi)
	je	L1945
	movss	140(%edi), %xmm6
	movss	%xmm6, -320(%ebp)
L1946:
	movl	-240(%ebp), %eax
	andl	$83886080, %eax
	cmpl	$16777216, %eax
	movl	-264(%ebp), %eax
	setne	%bl
	orb	-304(%ebp), %bl
	leal	584(%eax), %ecx
	leal	-216(%ebp), %eax
	cmove	%ecx, %eax
	movl	(%eax), %edx
	movl	%edx, -152(%ebp)
	movl	4(%eax), %edx
	movl	%edx, -148(%ebp)
	movl	8(%eax), %edx
	movl	%edx, -144(%ebp)
	movl	12(%eax), %eax
	movl	%eax, -140(%ebp)
	movss	68(%edi), %xmm6
	movss	76(%edi), %xmm7
	movss	72(%edi), %xmm5
	movss	80(%edi), %xmm4
	movaps	%xmm6, %xmm0
	movss	%xmm7, -304(%ebp)
	addss	%xmm6, %xmm7
	unpcklps	%xmm5, %xmm0
	addss	%xmm5, %xmm4
	movaps	%xmm7, %xmm1
	movss	%xmm7, -268(%ebp)
	unpcklps	%xmm4, %xmm1
	movss	%xmm4, -316(%ebp)
	movlhps	%xmm1, %xmm0
	movups	%xmm0, -200(%ebp)
	xorps	%xmm0, %xmm0
	testb	$1, 12(%edi)
	jne	L1972
	movl	(%edi), %eax
	movl	824(%edi), %edx
	movss	15520(%eax), %xmm1
	mulss	664(%edi), %xmm1
	mulss	668(%edi), %xmm1
	testl	%edx, %edx
	je	L1973
	mulss	664(%edx), %xmm1
L1973:
	movss	14468(%eax), %xmm0
	addss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
L1972:
	movl	68(%edi), %eax
	addss	%xmm6, %xmm2
	addss	%xmm5, %xmm0
	movl	72(%edi), %edx
	movl	%eax, -124(%ebp)
	movl	-200(%ebp), %eax
	movl	%edx, -120(%ebp)
	movss	%xmm2, -116(%ebp)
	movss	%xmm0, -112(%ebp)
	movl	%eax, 504(%edi)
	movl	-196(%ebp), %eax
	movl	%eax, 508(%edi)
	movl	-192(%ebp), %eax
	movl	%eax, 512(%edi)
	movl	-188(%ebp), %eax
	movl	%eax, 516(%edi)
	testb	$1, 909(%edi)
	jne	L1974
	movss	508(%edi), %xmm4
L1975:
	movss	-152(%ebp), %xmm3
	movss	-144(%ebp), %xmm0
	movss	504(%edi), %xmm1
	movss	-148(%ebp), %xmm2
	movss	%xmm0, -284(%ebp)
	movaps	%xmm3, %xmm0
	movss	-140(%ebp), %xmm7
	addss	132(%edi), %xmm6
	cmpless	%xmm1, %xmm0
	addss	-248(%ebp), %xmm5
	movl	-240(%ebp), %eax
	movss	%xmm7, -272(%ebp)
	movaps	%xmm2, %xmm7
	andl	$1025, %eax
	andps	%xmm0, %xmm1
	andnps	%xmm3, %xmm0
	movss	%xmm5, -248(%ebp)
	orps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	cmpnless	%xmm4, %xmm1
	movss	%xmm0, -328(%ebp)
	movss	516(%edi), %xmm0
	minss	-272(%ebp), %xmm0
	andps	%xmm1, %xmm7
	andnps	%xmm4, %xmm1
	orps	%xmm7, %xmm1
	movss	512(%edi), %xmm7
	minss	-284(%ebp), %xmm7
	movaps	%xmm7, %xmm4
	movss	-268(%ebp), %xmm7
	subss	-320(%ebp), %xmm7
	unpcklps	%xmm0, %xmm4
	movss	-328(%ebp), %xmm0
	unpcklps	%xmm1, %xmm0
	movaps	%xmm7, %xmm1
	movss	%xmm7, -268(%ebp)
	movlhps	%xmm4, %xmm0
	movss	-316(%ebp), %xmm4
	subss	-256(%ebp), %xmm4
	movups	%xmm0, 504(%edi)
	movaps	%xmm6, %xmm0
	unpcklps	%xmm5, %xmm0
	unpcklps	%xmm4, %xmm1
	movss	%xmm4, -256(%ebp)
	movss	128(%edi), %xmm4
	movlhps	%xmm1, %xmm0
	movups	%xmm0, 520(%edi)
	movaps	%xmm4, %xmm7
	cmpl	$1, %eax
	je	L1984
	movss	14476(%esi), %xmm7
L1984:
	movss	LC18, %xmm0
	movss	-324(%ebp), %xmm1
	xorps	%xmm5, %xmm5
	mulss	%xmm0, %xmm1
	cvttss2sil	%xmm1, %eax
	movaps	%xmm4, %xmm1
	cvtsi2ssl	%eax, %xmm5
	cmpless	%xmm5, %xmm1
	andps	%xmm1, %xmm5
	andnps	%xmm4, %xmm1
	orps	%xmm5, %xmm1
	movaps	%xmm6, %xmm5
	addss	%xmm0, %xmm5
	addss	%xmm1, %xmm5
	cvttss2sil	%xmm5, %eax
	xorps	%xmm5, %xmm5
	cvtsi2ssl	%eax, %xmm5
	movss	%xmm5, -316(%ebp)
	movss	-248(%ebp), %xmm5
	addss	%xmm0, %xmm5
	addss	%xmm7, %xmm5
	xorps	%xmm7, %xmm7
	cvttss2sil	%xmm5, %eax
	movss	-268(%ebp), %xmm5
	addss	%xmm0, %xmm5
	addss	-256(%ebp), %xmm0
	cvtsi2ssl	%eax, %xmm7
	subss	%xmm1, %xmm5
	subss	%xmm4, %xmm0
	xorps	%xmm1, %xmm1
	movaps	%xmm2, %xmm4
	cvttss2sil	%xmm5, %eax
	comiss	%xmm7, %xmm2
	cvtsi2ssl	%eax, %xmm1
	cvttss2sil	%xmm0, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	ja	L1985
	movss	-272(%ebp), %xmm4
	minss	%xmm7, %xmm4
L1985:
	movss	-316(%ebp), %xmm7
	movaps	%xmm3, %xmm5
	comiss	%xmm7, %xmm3
	ja	L1986
	movss	-284(%ebp), %xmm5
	minss	%xmm7, %xmm5
L1986:
	comiss	%xmm0, %xmm2
	movss	%xmm5, 536(%edi)
	movss	%xmm4, 540(%edi)
	ja	L1987
	movss	-272(%ebp), %xmm2
	minss	%xmm0, %xmm2
L1987:
	comiss	%xmm1, %xmm3
	ja	L1988
	movss	-284(%ebp), %xmm3
	minss	%xmm1, %xmm3
L1988:
	movss	%xmm3, 544(%edi)
	movss	-304(%ebp), %xmm3
	xorps	%xmm0, %xmm0
	movss	%xmm2, 548(%edi)
	comiss	%xmm0, %xmm3
	jbe	L1989
	testl	$33554496, -240(%ebp)
	je	L2693
L1989:
	movss	LC15, %xmm0
	mulss	15516(%esi), %xmm0
	cvttss2sil	%xmm0, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
L1991:
	movss	%xmm0, 636(%edi)
	movss	-268(%ebp), %xmm0
	xorps	%xmm2, %xmm2
	movl	%edi, %eax
	movss	-296(%ebp), %xmm1
	subss	%xmm6, %xmm0
	subss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	cmpnless	%xmm2, %xmm0
	andps	%xmm1, %xmm0
	movss	-288(%ebp), %xmm1
	movss	%xmm0, 180(%edi)
	movss	-256(%ebp), %xmm0
	subss	-248(%ebp), %xmm0
	subss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	cmpnless	%xmm2, %xmm0
	andps	%xmm1, %xmm0
	movss	%xmm0, 184(%edi)
	call	__ZL38CalcNextScrollFromScrollTargetAndClampP11ImGuiWindow
	movss	-312(%ebp), %xmm6
	movl	$0x00000000, 152(%edi)
	movl	%edx, 176(%edi)
	movl	676(%edi), %ecx
	movss	%xmm6, 188(%edi)
	movss	%xmm6, 192(%edi)
	movl	%eax, 172(%edi)
	movl	$0x00000000, 148(%edi)
	movl	15512(%esi), %eax
	movl	48(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN10ImDrawList13PushTextureIDEPv
	movl	-308(%ebp), %eax
	leal	-144(%ebp), %edx
	xorl	%ecx, %ecx
	subl	$4, %esp
	call	__ZN5ImGui12PushClipRectERK6ImVec2S2_b
	movzbl	909(%edi), %eax
	testb	$1, %al
	je	L1996
	testb	$4, %al
	je	L1997
L1996:
	movzbl	-336(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -256(%ebp)
	testb	%bl, %bl
	je	L2694
	xorl	%ebx, %ebx
L1998:
	movl	19020(%esi), %edx
	testl	%edx, %edx
	je	L2006
	cmpb	$0, -292(%ebp)
	jne	L2007
L2008:
	movl	844(%edx), %eax
	movl	$1, %ecx
	cmpl	%eax, 844(%edi)
	je	L2010
	movl	936(%edi), %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	je	L2010
	cmpl	%eax, 936(%edx)
	sete	%cl
	.p2align 4
	.p2align 3
L2010:
	leal	-168(%ebp), %eax
	movzbl	%cl, %ecx
	leal	-124(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	-256(%ebp), %eax
	movl	%eax, 4(%esp)
	movzbl	-332(%ebp), %eax
	movl	%eax, (%esp)
	movss	-340(%ebp), %xmm0
	movl	%edi, %eax
	call	__ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.lto_priv.0
	testb	%bl, %bl
	je	L1997
	leal	680(%edi), %eax
	movl	%eax, 676(%edi)
L1997:
	movss	108(%edi), %xmm6
	xorps	%xmm0, %xmm0
	movss	116(%edi), %xmm5
	movss	132(%edi), %xmm4
	ucomiss	%xmm0, %xmm6
	movss	%xmm5, -248(%ebp)
	movss	%xmm4, -272(%ebp)
	jp	L2165
	jne	L2165
	movaps	%xmm5, %xmm0
	movss	76(%edi), %xmm1
	movl	-240(%ebp), %eax
	xorps	%xmm2, %xmm2
	addss	%xmm5, %xmm0
	addss	140(%edi), %xmm4
	andl	$2056, %eax
	subss	%xmm0, %xmm1
	subss	%xmm4, %xmm1
	cmpl	$2048, %eax
	jne	L2013
	movss	92(%edi), %xmm2
L2013:
	movaps	%xmm1, %xmm0
	cmpnless	%xmm2, %xmm0
	andps	%xmm0, %xmm1
	andnps	%xmm2, %xmm0
	orps	%xmm1, %xmm0
	movss	%xmm0, -296(%ebp)
L2011:
	movss	112(%edi), %xmm5
	xorps	%xmm1, %xmm1
	movss	120(%edi), %xmm7
	movss	136(%edi), %xmm4
	ucomiss	%xmm1, %xmm5
	movss	%xmm7, -256(%ebp)
	movss	%xmm4, -288(%ebp)
	jp	L2167
	jne	L2167
	movaps	%xmm7, %xmm1
	movss	80(%edi), %xmm2
	addss	144(%edi), %xmm4
	addss	%xmm7, %xmm1
	movaps	%xmm2, %xmm3
	subss	%xmm1, %xmm3
	subss	%xmm4, %xmm3
	xorps	%xmm4, %xmm4
	testb	$8, -240(%ebp)
	jne	L2018
	movss	96(%edi), %xmm4
L2018:
	movaps	%xmm3, %xmm1
	cmpnless	%xmm4, %xmm1
	andps	%xmm1, %xmm3
	andnps	%xmm4, %xmm1
	orps	%xmm3, %xmm1
	movaps	%xmm1, %xmm2
L2016:
	movss	128(%edi), %xmm4
	movss	172(%edi), %xmm7
	movss	520(%edi), %xmm3
	movaps	%xmm4, %xmm1
	movaps	%xmm4, %xmm0
	movss	%xmm7, -268(%ebp)
	cmpnless	-248(%ebp), %xmm1
	subss	%xmm7, %xmm3
	andps	%xmm1, %xmm0
	movaps	%xmm0, %xmm7
	movss	-248(%ebp), %xmm0
	andnps	%xmm0, %xmm1
	movss	-256(%ebp), %xmm0
	orps	%xmm7, %xmm1
	movss	524(%edi), %xmm7
	addss	%xmm1, %xmm3
	xorps	%xmm1, %xmm1
	cvttss2sil	%xmm3, %eax
	movss	176(%edi), %xmm3
	subss	%xmm3, %xmm7
	movss	%xmm3, -284(%ebp)
	movaps	%xmm4, %xmm3
	cmpnless	%xmm0, %xmm3
	cvtsi2ssl	%eax, %xmm1
	andps	%xmm3, %xmm4
	andnps	%xmm0, %xmm3
	orps	%xmm4, %xmm3
	movss	-296(%ebp), %xmm4
	addss	%xmm3, %xmm7
	xorps	%xmm3, %xmm3
	addss	%xmm1, %xmm4
	cvttss2sil	%xmm7, %eax
	movss	-248(%ebp), %xmm7
	movaps	%xmm4, %xmm0
	movss	68(%edi), %xmm4
	cvtsi2ssl	%eax, %xmm3
	addss	%xmm3, %xmm2
	unpcklps	%xmm3, %xmm1
	movss	72(%edi), %xmm3
	unpcklps	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	movlhps	%xmm0, %xmm1
	movups	%xmm1, 552(%edi)
	movl	556(%edi), %eax
	movaps	%xmm3, %xmm0
	movss	%xmm1, 568(%edi)
	movaps	%xmm4, %xmm1
	ucomiss	%xmm2, %xmm6
	subss	-268(%ebp), %xmm1
	movl	%eax, 572(%edi)
	movl	560(%edi), %eax
	subss	-284(%ebp), %xmm0
	addss	-256(%ebp), %xmm0
	addss	%xmm7, %xmm1
	addss	-288(%ebp), %xmm0
	movl	%eax, 576(%edi)
	addss	-272(%ebp), %xmm1
	movl	564(%edi), %eax
	movss	%xmm0, 604(%edi)
	movl	%eax, 580(%edi)
	movss	%xmm1, 600(%edi)
	jp	L2025
	jne	L2025
	movaps	%xmm7, %xmm2
	movss	76(%edi), %xmm6
	addss	%xmm7, %xmm2
	subss	%xmm2, %xmm6
	movss	-272(%ebp), %xmm2
	addss	140(%edi), %xmm2
	subss	%xmm2, %xmm6
L2025:
	addss	%xmm6, %xmm1
	movss	%xmm1, 608(%edi)
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm5
	jp	L2027
	jne	L2027
	movss	-256(%ebp), %xmm6
	movss	80(%edi), %xmm2
	movaps	%xmm6, %xmm1
	movaps	%xmm2, %xmm5
	addss	%xmm6, %xmm1
	subss	%xmm1, %xmm5
	movss	-288(%ebp), %xmm1
	addss	144(%edi), %xmm1
	subss	%xmm1, %xmm5
L2027:
	addss	%xmm5, %xmm0
	movss	%xmm4, -296(%ebp)
	flds	-296(%ebp)
	fadds	-248(%ebp)
	movss	%xmm0, 612(%edi)
	movss	-248(%ebp), %xmm0
	addss	-272(%ebp), %xmm0
	fsubs	-268(%ebp)
	subss	-268(%ebp), %xmm0
	fadds	-272(%ebp)
	movss	%xmm0, 364(%edi)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -248(%ebp)
	fadds	-248(%ebp)
	movss	%xmm3, -248(%ebp)
	flds	-248(%ebp)
	fadds	-256(%ebp)
	movss	%xmm0, 372(%edi)
	movss	%xmm0, 368(%edi)
	fsubs	-284(%ebp)
	fadds	-288(%ebp)
	fsts	-256(%ebp)
	fxch	%st(1)
	fsts	-248(%ebp)
	fsubs	-248(%ebp)
	movss	-248(%ebp), %xmm6
	movss	%xmm6, 312(%edi)
	movss	-256(%ebp), %xmm6
	movss	%xmm6, 316(%edi)
	fstps	-248(%ebp)
	fsubs	-256(%ebp)
	movss	-248(%ebp), %xmm1
	movss	%xmm1, 376(%edi)
	fstps	-256(%ebp)
	movss	-256(%ebp), %xmm1
	movss	%xmm1, 380(%edi)
	movl	312(%edi), %eax
	movss	184(%edi), %xmm1
	movss	%xmm0, 344(%edi)
	movl	316(%edi), %edx
	movl	-260(%ebp), %ebx
	movl	%eax, 296(%edi)
	movl	%eax, 304(%edi)
	movl	%eax, 320(%edi)
	movl	%eax, 328(%edi)
	movl	344(%edi), %eax
	movl	%edx, 300(%edi)
	movl	%eax, 336(%edi)
	xorl	%eax, %eax
	movw	%ax, 360(%edi)
	movzwl	390(%edi), %eax
	movl	%edx, 308(%edi)
	movw	%ax, 388(%edi)
	xorl	%eax, %eax
	comiss	%xmm0, %xmm1
	movl	%edx, 324(%edi)
	movl	%edx, 332(%edi)
	movss	%xmm0, 348(%edi)
	movl	348(%edi), %edx
	movl	$0, 384(%edi)
	movl	%edx, 340(%edi)
	leal	422(%edi), %edx
	movw	%ax, 390(%edi)
	movb	$0, 392(%edi)
	movb	$0, 394(%edi)
	movss	%xmm0, 356(%edi)
	movss	%xmm0, 352(%edi)
	seta	393(%edi)
	movss	14480(%esi), %xmm0
	cmpl	%ebx, -244(%ebp)
	jl	L2695
L2029:
	cvttss2sil	%xmm0, %eax
	movl	%esi, -248(%ebp)
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	movl	%edx, -260(%ebp)
	movl	%eax, -256(%ebp)
	movw	%ax, 412(%edi)
	xorl	%eax, %eax
	movw	%ax, -244(%ebp)
	jmp	L2035
	.p2align 4,,10
	.p2align 3
L2030:
	cmpl	$2, %ecx
	je	L2696
	cmpl	$3, %ecx
	je	L2697
L2031:
	orl	%eax, %esi
	leal	(%edx,%ebx), %eax
	addl	$1, %ecx
	movw	%ax, -244(%ebp)
L2035:
	movzwl	422(%edi,%ecx,2), %ebx
	movl	%esi, %edx
	testw	%bx, %bx
	setne	%al
	andl	%eax, %edx
	movzbl	%dl, %edx
	negl	%edx
	andw	-256(%ebp), %dx
	addw	-244(%ebp), %dx
	cmpl	$1, %ecx
	jne	L2030
	movw	%dx, 416(%edi)
	jmp	L2031
	.p2align 4,,10
	.p2align 3
L2090:
	movzbl	252(%edi), %eax
	testb	%al, %al
	jle	L2092
	addl	$1, %eax
	movb	%al, 252(%edi)
L2092:
	movzbl	253(%edi), %eax
	testb	%al, %al
	jle	L1561
	addl	$1, %eax
	movb	%al, 253(%edi)
	jmp	L1561
	.p2align 4,,10
	.p2align 3
L1748:
	cmpb	$0, 252(%edi)
	jle	L2698
	movzbl	-277(%ebp), %eax
	movb	%al, -320(%ebp)
	cmpb	$0, -288(%ebp)
	jne	L1754
	movss	-296(%ebp), %xmm0
	cmpb	$0, 255(%edi)
	je	L1755
	movss	84(%edi), %xmm1
	movaps	%xmm0, %xmm2
	cmpless	%xmm1, %xmm2
	andps	%xmm2, %xmm1
	andnps	%xmm0, %xmm2
	orps	%xmm1, %xmm2
	movaps	%xmm2, %xmm0
L1755:
	movb	$1, -320(%ebp)
	movss	%xmm0, 84(%edi)
L1754:
	cmpb	$0, -284(%ebp)
	jne	L1757
	cmpb	$0, 253(%edi)
	jg	L2104
L1757:
	cmpb	$0, 226(%edi)
	je	L2699
L2651:
	movss	88(%edi), %xmm1
	jmp	L1751
	.p2align 4,,10
	.p2align 3
L2697:
	movl	%edx, %eax
	movl	-260(%ebp), %edx
	movl	-248(%ebp), %esi
	movw	%ax, 420(%edi)
	addl	%ebx, %eax
	movzwl	%ax, %eax
	movl	$0, (%edx)
	movl	$0, 4(%edx)
	movl	%eax, 404(%edi)
	movl	444(%edi), %eax
	movl	$0, 408(%edi)
	movl	$0, 432(%edi)
	movl	$0, 436(%edi)
	testl	%eax, %eax
	jns	L2034
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L2036
	addl	$1, 188(%eax)
L2036:
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %ebx
	movl	448(%edi), %eax
	testl	%eax, %eax
	je	L2037
	movl	440(%edi), %ecx
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	leal	0(,%ecx,4), %edx
	movl	%edx, 8(%esp)
	call	_memcpy
	movl	448(%edi), %eax
	testl	%eax, %eax
	je	L2038
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2038
	subl	$1, 188(%edx)
L2038:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2037:
	movl	%ebx, 448(%edi)
	movl	$0, 444(%edi)
L2034:
	movl	-264(%ebp), %ebx
	leal	640(%edi), %eax
	movl	$0, 440(%edi)
	movl	%eax, 452(%edi)
	movl	$1, %eax
	movl	$0, 456(%edi)
	movl	$1, 464(%edi)
	testl	%ebx, %ebx
	je	L2039
	movl	464(%ebx), %eax
L2039:
	movss	636(%edi), %xmm0
	movl	484(%edi), %ebx
	movl	%eax, 468(%edi)
	movl	$0xbf800000, 476(%edi)
	movss	%xmm0, 472(%edi)
	testl	%ebx, %ebx
	jns	L2040
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L2041
	addl	$1, 188(%eax)
L2041:
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %ebx
	movl	488(%edi), %eax
	testl	%eax, %eax
	je	L2042
	movl	480(%edi), %ecx
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	leal	0(,%ecx,4), %edx
	movl	%edx, 8(%esp)
	call	_memcpy
	movl	488(%edi), %eax
	testl	%eax, %eax
	je	L2043
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2043
	subl	$1, 188(%edx)
L2043:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2042:
	movl	%ebx, 488(%edi)
	movl	$0, 484(%edi)
L2040:
	movl	$0, 480(%edi)
	movl	496(%edi), %ecx
	testl	%ecx, %ecx
	jns	L2044
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L2045
	addl	$1, 188(%eax)
L2045:
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %ebx
	movl	500(%edi), %eax
	testl	%eax, %eax
	je	L2046
	movl	492(%edi), %ecx
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	leal	0(,%ecx,4), %edx
	movl	%edx, 8(%esp)
	call	_memcpy
	movl	500(%edi), %eax
	testl	%eax, %eax
	je	L2047
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2047
	subl	$1, 188(%edx)
L2047:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2046:
	movl	%ebx, 500(%edi)
	movl	$0, 496(%edi)
L2044:
	movzbl	252(%edi), %eax
	movl	$0, 492(%edi)
	testb	%al, %al
	jle	L2048
	subl	$1, %eax
	movb	%al, 252(%edi)
L2048:
	movzbl	253(%edi), %eax
	testb	%al, %al
	jle	L2049
	subl	$1, %eax
	movb	%al, 253(%edi)
L2049:
	cmpb	$0, -292(%ebp)
	jne	L2700
L2050:
	testb	$1, -240(%ebp)
	jne	L2057
	testb	$1, 909(%edi)
	je	L2701
L2057:
	movl	$0, 616(%edi)
	testb	$64, 8(%esi)
	je	L2058
	cmpl	%edi, 16160(%esi)
	je	L2702
L2059:
	cmpb	$0, 19068(%esi)
	je	L2058
	testb	$32, -238(%ebp)
	jne	L2058
	movl	16160(%esi), %eax
	testl	%eax, %eax
	je	L2060
	cmpl	%edi, 840(%eax)
	je	L2058
L2060:
	cmpl	%edi, 840(%edi)
	je	L2703
	.p2align 4
	.p2align 3
L2058:
	movss	18284(%esi), %xmm0
	movl	160(%edi), %ecx
	movl	_GImGui, %ebx
	testb	$1, 909(%edi)
	jne	L2704
	movl	%ecx, -256(%ebp)
	movss	%xmm0, -244(%ebp)
	movl	$0, 8(%esp)
	movl	-116(%ebp), %eax
	movl	-112(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	-124(%ebp), %eax
	movl	-120(%ebp), %edx
	call	__ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.isra.0
	movl	-256(%ebp), %ecx
	movss	-244(%ebp), %xmm0
	movzbl	%al, %eax
	movl	%ecx, 18312(%ebx)
	movl	%eax, 18320(%ebx)
	movss	%xmm0, 18316(%ebx)
	movl	-124(%ebp), %eax
	movl	%eax, 18340(%ebx)
	movl	-120(%ebp), %eax
	movl	%eax, 18344(%ebx)
	movl	-116(%ebp), %eax
	movl	%eax, 18348(%ebx)
	movl	-112(%ebp), %eax
	movl	%eax, 18352(%ebx)
	movl	-124(%ebp), %eax
	movl	%eax, 18324(%ebx)
	movl	-120(%ebp), %eax
	movl	%eax, 18328(%ebx)
	movl	-116(%ebp), %eax
	movl	%eax, 18332(%ebx)
	movl	-112(%ebp), %eax
	movl	%eax, 18336(%ebx)
L2062:
	movl	18288(%esi), %eax
	testl	%eax, %eax
	je	L2063
	cmpl	8(%edi), %eax
	je	L2064
	cmpl	160(%edi), %eax
	je	L2064
L2063:
	testb	$32, -237(%ebp)
	je	L2705
L2642:
	movzwl	236(%edi), %eax
	movb	$0, 225(%edi)
	addl	$1, %eax
L2093:
	movw	%ax, 236(%edi)
	movl	$0, 18372(%esi)
	movzbl	909(%edi), %eax
	testb	$1, %al
	je	L2069
	testb	$4, %al
	jne	L2069
	movl	16048(%esi), %eax
	cmpl	%eax, 628(%edi)
	je	L2706
	movb	$1, 260(%edi)
	.p2align 4
	.p2align 3
L2069:
	movl	-276(%ebp), %eax
	testl	%eax, %eax
	je	L2071
	movl	-240(%ebp), %eax
	testb	$64, %al
	jne	L2072
	cmpb	$0, 252(%edi)
	jle	L2707
L2072:
	movl	-264(%ebp), %eax
	testl	%eax, %eax
	je	L2071
	cmpb	$0, 226(%eax)
	jne	L2076
	cmpb	$0, 260(%eax)
	jle	L2077
L2076:
	movl	-264(%ebp), %eax
	movb	$1, 260(%edi)
	cmpb	$0, 226(%eax)
	je	L2077
L2078:
	movb	$1, 261(%edi)
L2071:
	xorps	%xmm0, %xmm0
	comiss	14404(%esi), %xmm0
	jnb	L2708
	cmpb	$0, 260(%edi)
	jg	L2081
	cmpb	$0, 261(%edi)
	jle	L2082
L2081:
	movl	$1, %edx
	movl	$1, %eax
L2083:
	movb	%al, 230(%edi)
	movzbl	263(%edi), %eax
	testb	%al, %al
	jle	L2084
	subl	$1, %eax
	orl	$786944, 12(%edi)
	movb	%al, 263(%edi)
L2084:
	cmpb	$0, 226(%edi)
	jne	L2085
	cmpb	$1, 223(%edi)
	jne	L2085
	testb	%dl, %dl
	je	L2086
L2085:
	cmpb	$0, 252(%edi)
	jle	L2709
L2086:
	movb	$0, 228(%edi)
	jmp	L2088
	.p2align 4,,10
	.p2align 3
L2137:
	movb	$0, -292(%ebp)
	jmp	L1840
	.p2align 4,,10
	.p2align 3
L2696:
	movw	%dx, 418(%edi)
	jmp	L2031
	.p2align 4,,10
	.p2align 3
L2167:
	movaps	%xmm5, %xmm2
	jmp	L2016
	.p2align 4,,10
	.p2align 3
L2165:
	movss	%xmm6, -296(%ebp)
	jmp	L2011
	.p2align 4,,10
	.p2align 3
L1724:
	movl	-240(%ebp), %ecx
	testl	$100663296, %ecx
	je	L1727
	andl	$134217728, %ecx
	jne	L1727
	movss	14460(%esi), %xmm0
L1728:
	movss	%xmm0, 128(%edi)
	orl	%edx, %eax
	jmp	L1725
	.p2align 4,,10
	.p2align 3
L1763:
	movss	88(%edi), %xmm0
	movss	84(%edi), %xmm1
	movl	-260(%ebp), %ebx
	movss	%xmm1, 76(%edi)
	movss	%xmm0, 80(%edi)
	cmpl	%ebx, -244(%ebp)
	jge	L1771
	movl	$-1, 256(%edi)
	movl	-240(%ebp), %eax
	andl	$201326592, %eax
	cmpl	$67108864, %eax
	jne	L1771
	cmpb	$0, -268(%ebp)
	je	L2103
L1771:
	movl	-276(%ebp), %eax
	testl	%eax, %eax
	je	L1768
L1770:
	movl	-264(%ebp), %ebx
	movl	440(%ebx), %eax
	movw	%ax, 240(%edi)
	movl	440(%ebx), %eax
	cmpl	444(%ebx), %eax
	je	L2710
L1772:
	movl	-264(%ebp), %ebx
	movl	448(%ebx), %ebx
L1775:
	movl	%edi, (%ebx,%eax,4)
	movl	-264(%ebp), %ebx
	addl	$1, 440(%ebx)
	movss	268(%edi), %xmm0
	testb	$4, -237(%ebp)
	jne	L1779
	cmpb	$0, -268(%ebp)
	jne	L1780
	cmpb	$0, -304(%ebp)
	jne	L1780
	ucomiss	LC0, %xmm0
	movl	296(%ebx), %eax
	movl	300(%ebx), %edx
	movl	%eax, -256(%ebp)
	movl	%edx, -252(%ebp)
	movl	%eax, 68(%edi)
	movl	%edx, 72(%edi)
	jp	L2188
	jne	L2188
	testb	$16, -237(%ebp)
	jne	L1784
	movl	$1, %ebx
	testb	$2, -237(%ebp)
	je	L1789
L2102:
	movl	%edi, %eax
	call	__ZN5ImGui25FindBestWindowPosForPopupEP11ImGuiWindow
	movl	%eax, 68(%edi)
	movl	%edx, 72(%edi)
	jmp	L1789
L1780:
	ucomiss	LC0, %xmm0
	jp	L2188
	je	L1787
L2188:
	cmpb	$0, 261(%edi)
	je	L1795
	testb	$16, -237(%ebp)
	je	L1785
	.p2align 4
	.p2align 3
L1784:
	movl	%edi, %eax
	call	__ZN5ImGui25FindBestWindowPosForPopupEP11ImGuiWindow
	movl	%eax, 68(%edi)
	movl	%edx, 72(%edi)
L2655:
	movzbl	-268(%ebp), %ebx
	xorl	$1, %ebx
	jmp	L1789
	.p2align 4,,10
	.p2align 3
L1779:
	ucomiss	LC0, %xmm0
	jp	L2189
	je	L1790
L2189:
	cmpb	$0, 261(%edi)
	jne	L1790
	.p2align 4
	.p2align 3
L1795:
	movss	80(%edi), %xmm2
	movzbl	-268(%ebp), %ebx
	xorl	%ecx, %ecx
	movl	%edi, %eax
	mulss	280(%edi), %xmm2
	movss	272(%edi), %xmm1
	leal	-124(%ebp), %edx
	xorl	$1, %ebx
	subss	%xmm2, %xmm1
	movss	76(%edi), %xmm2
	mulss	276(%edi), %xmm2
	movss	%xmm1, -120(%ebp)
	subss	%xmm2, %xmm0
	movss	%xmm0, -124(%ebp)
	call	__ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i
	jmp	L1789
	.p2align 4,,10
	.p2align 3
L1974:
	xorps	%xmm4, %xmm4
	testb	$1, 12(%edi)
	jne	L1976
	movl	(%edi), %eax
	movl	824(%edi), %edx
	movss	15520(%eax), %xmm0
	mulss	664(%edi), %xmm0
	mulss	668(%edi), %xmm0
	testl	%edx, %edx
	je	L1977
	mulss	664(%edx), %xmm0
L1977:
	movss	14468(%eax), %xmm4
	addss	%xmm4, %xmm4
	addss	%xmm0, %xmm4
L1976:
	addss	%xmm5, %xmm4
	jmp	L1975
	.p2align 4,,10
	.p2align 3
L1945:
	movl	-272(%ebp), %ebx
	movss	-288(%ebp), %xmm5
	movss	-296(%ebp), %xmm4
	testl	%ebx, %ebx
	je	L2711
L1947:
	movaps	%xmm2, %xmm0
	cmpb	$0, -320(%ebp)
	jne	L1948
	movss	528(%edi), %xmm0
	subss	520(%edi), %xmm0
	addss	-328(%ebp), %xmm0
L1948:
	cmpb	$0, -316(%ebp)
	je	L1949
	movss	-248(%ebp), %xmm3
	addss	-256(%ebp), %xmm3
	movss	88(%edi), %xmm1
	subss	%xmm3, %xmm1
L1950:
	movl	-240(%ebp), %eax
	testb	$64, %ah
	jne	L1951
	comiss	%xmm1, %xmm5
	jbe	L2639
	testb	$8, %al
	jne	L1954
	movb	$1, 221(%edi)
	testb	$-128, %ah
	jne	L1968
	subss	14520(%esi), %xmm0
	comiss	%xmm0, %xmm4
	jbe	L1967
L1956:
	testb	$8, -239(%ebp)
	jne	L1968
	.p2align 4
	.p2align 3
L1967:
	movb	$0, 220(%edi)
	movss	14520(%esi), %xmm1
	xorps	%xmm0, %xmm0
L1966:
	movss	%xmm1, 212(%edi)
	addss	140(%edi), %xmm1
	movss	%xmm0, 216(%edi)
	addss	-256(%ebp), %xmm0
	movss	%xmm1, -320(%ebp)
	movss	%xmm1, 140(%edi)
	movss	%xmm0, -256(%ebp)
	movss	%xmm0, 144(%edi)
	jmp	L1946
	.p2align 4,,10
	.p2align 3
L2691:
	movl	$0, -168(%ebp)
	movzbl	909(%edi), %ecx
	movl	$0, -164(%ebp)
	movl	$0, -160(%ebp)
	movl	$0, -156(%ebp)
	testb	%dl, %dl
	je	L1866
	movaps	%xmm2, %xmm0
L1866:
	cvttss2sil	%xmm0, %edx
	xorps	%xmm6, %xmm6
	andl	$1, %ecx
	cvtsi2ssl	%edx, %xmm6
	movss	%xmm6, -340(%ebp)
	je	L2101
	movss	LC0, %xmm6
	leal	-152(%ebp), %ecx
	movl	$-1, %ebx
	movb	$0, -332(%ebp)
	movl	%ecx, -308(%ebp)
	movss	%xmm6, -312(%ebp)
	jmp	L1867
	.p2align 4,,10
	.p2align 3
L2006:
	cmpb	$0, -292(%ebp)
	jne	L2007
	movl	18680(%esi), %edx
	testl	%edx, %edx
	jne	L2008
	.p2align 4
	.p2align 3
L2007:
	movzbl	-292(%ebp), %ecx
	jmp	L2010
	.p2align 4,,10
	.p2align 3
L1727:
	movss	14424(%esi), %xmm0
	jmp	L1728
	.p2align 4,,10
	.p2align 3
L2708:
	movb	$1, 260(%edi)
	jmp	L2081
	.p2align 4,,10
	.p2align 3
L2704:
	movss	948(%edi), %xmm6
	movl	%ecx, 18312(%ebx)
	unpcklps	%xmm6, %xmm0
	movlps	%xmm0, 18316(%ebx)
	movl	952(%edi), %eax
	movl	%eax, 18340(%ebx)
	movl	956(%edi), %ecx
	movl	%eax, -244(%ebp)
	movl	%ecx, 18344(%ebx)
	movl	960(%edi), %edx
	movl	%edx, 18348(%ebx)
	movl	964(%edi), %eax
	movl	%ecx, 18328(%ebx)
	movl	%eax, 18336(%ebx)
	movl	%eax, 18352(%ebx)
	movl	-244(%ebp), %eax
	movl	%edx, 18332(%ebx)
	movl	%eax, 18324(%ebx)
	jmp	L2062
	.p2align 4,,10
	.p2align 3
L2695:
	movl	$0, 422(%edi)
	movl	$0, 4(%edx)
	jmp	L2029
	.p2align 4,,10
	.p2align 3
L2700:
	movl	%edi, %eax
	call	__ZN5ImGui11FocusWindowEP11ImGuiWindow
	movl	12(%edi), %eax
	movl	_GImGui, %ebx
	testl	$262144, %eax
	jne	L2712
	movl	23576(%ebx), %edx
	andl	$8, %edx
	cmpl	%edi, 832(%edi)
	je	L2052
	testl	$67108864, %eax
	jne	L2052
	movl	856(%edi), %eax
	testl	%eax, %eax
	jne	L2053
L2052:
	movl	%ebx, %eax
	testl	%edx, %edx
	jne	L2713
L2054:
	movl	896(%edi), %ecx
	movl	18732(%ebx), %edx
	xorps	%xmm0, %xmm0
	movl	$0, 18684(%eax)
	movl	%ecx, 18688(%eax)
	movl	18680(%eax), %ecx
	movl	%edx, 18732(%eax)
	movl	$0, 856(%ecx,%edx,4)
	addl	$54, %edx
	sall	$4, %edx
	addl	18680(%eax), %edx
	movups	%xmm0, (%edx)
	movl	$1, %edx
	movw	%dx, 18741(%ebx)
	movl	$0, 18744(%ebx)
	movups	%xmm0, 18748(%ebx)
	movzbl	18765(%eax), %edx
	testb	%dl, %dl
	je	L2714
L2056:
	movb	%dl, 18740(%eax)
	jmp	L2050
	.p2align 4,,10
	.p2align 3
L1802:
	movl	-248(%ebp), %edx
	movl	%edi, %eax
	call	__ZN5ImGuiL23WindowSyncOwnedViewportEP11ImGuiWindowS1_
	movl	48(%edi), %eax
	movss	72(%edi), %xmm5
	movzbl	222(%edi), %edx
	movss	12(%eax), %xmm4
	movss	20(%eax), %xmm7
	movss	%xmm5, -256(%ebp)
	movss	8(%eax), %xmm3
	movss	16(%eax), %xmm6
	addss	%xmm4, %xmm7
	movss	68(%edi), %xmm5
	addss	%xmm3, %xmm6
	jmp	L1804
	.p2align 4,,10
	.p2align 3
L2698:
	cmpb	$0, 253(%edi)
	jle	L2715
	movzbl	-277(%ebp), %eax
	movb	%al, -320(%ebp)
	cmpb	$0, -284(%ebp)
	jne	L1757
L2104:
	movss	-324(%ebp), %xmm0
	cmpb	$0, 255(%edi)
	je	L1759
	movss	88(%edi), %xmm1
	movaps	%xmm0, %xmm2
	cmpless	%xmm1, %xmm2
	andps	%xmm2, %xmm1
	andnps	%xmm0, %xmm2
	orps	%xmm1, %xmm2
	movaps	%xmm2, %xmm0
L1759:
	movb	$1, -316(%ebp)
	movss	%xmm0, 88(%edi)
	cmpb	$0, 226(%edi)
	jne	L2651
L2699:
	testb	$1, 13(%edi)
	jne	L2651
	movl	_GImGui, %eax
	xorps	%xmm0, %xmm0
	comiss	23424(%eax), %xmm0
	jb	L2651
	movss	28(%eax), %xmm0
	movss	%xmm0, 23424(%eax)
	jmp	L2651
	.p2align 4,,10
	.p2align 3
L2681:
	cmpb	$0, -288(%ebp)
	je	L2184
	cmpb	$0, -284(%ebp)
	jne	L1718
L2184:
	movb	$1, 261(%edi)
	jmp	L1718
	.p2align 4,,10
	.p2align 3
L2709:
	cmpb	$0, 253(%edi)
	jg	L2086
	cmpb	$0, 261(%edi)
	jg	L2086
	movzwl	388(%edi), %eax
	movb	$1, 228(%edi)
	movw	%ax, 390(%edi)
	jmp	L2088
	.p2align 4,,10
	.p2align 3
L1790:
	testb	$16, -237(%ebp)
	jne	L1784
L1792:
	movzbl	-268(%ebp), %ebx
	xorl	$1, %ebx
	cmpb	$0, -292(%ebp)
	jle	L1797
	testb	%bl, %bl
	je	L1797
	jmp	L1784
	.p2align 4,,10
	.p2align 3
L1764:
	movss	88(%edi), %xmm0
	movl	-260(%ebp), %ebx
	movss	%xmm1, 76(%edi)
	movss	%xmm0, 80(%edi)
	cmpl	%ebx, -244(%ebp)
	jge	L1770
	movl	$-1, 256(%edi)
	movl	-240(%ebp), %eax
	andl	$201326592, %eax
	cmpl	$67108864, %eax
	jne	L1770
	cmpb	$0, -268(%ebp)
	jne	L1770
L2103:
	movl	18592(%esi), %eax
	movl	18600(%esi), %edx
	leal	-5(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	movl	28(%eax), %edx
	movl	24(%eax), %eax
	movl	%edx, 72(%edi)
	movl	%eax, 68(%edi)
	jmp	L1771
	.p2align 4,,10
	.p2align 3
L2690:
	testb	%dl, %dl
	je	L2716
	movl	14356(%esi), %ecx
	testl	%ecx, %ecx
	jg	L2717
L1825:
	cvttss2sil	%xmm5, %edx
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%edx, %xmm0
	cvttss2sil	-256(%ebp), %edx
	movss	%xmm0, 68(%edi)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movss	%xmm0, 72(%edi)
	jmp	L1837
	.p2align 4,,10
	.p2align 3
L1951:
	movb	$1, 221(%edi)
	testb	$-128, -239(%ebp)
	jne	L1968
	subss	14520(%esi), %xmm0
	comiss	%xmm0, %xmm4
	jbe	L1967
	testb	$8, -240(%ebp)
	jne	L1967
	jmp	L1956
	.p2align 4,,10
	.p2align 3
L1949:
	movss	532(%edi), %xmm1
	subss	524(%edi), %xmm1
	addss	-344(%ebp), %xmm1
	jmp	L1950
	.p2align 4,,10
	.p2align 3
L2064:
	call	__ZN5ImGui34DebugLocateItemResolveWithLastItemEv
	testb	$32, -237(%ebp)
	jne	L2642
L2705:
	leal	536(%edi), %eax
	leal	544(%edi), %edx
	movl	$1, %ecx
	call	__ZN5ImGui12PushClipRectERK6ImVec2S2_b
	movl	-240(%ebp), %ebx
	movzwl	236(%edi), %eax
	movb	$0, 225(%edi)
	andl	$16777216, %ebx
	addl	$1, %eax
	movl	%ebx, -276(%ebp)
	jmp	L2093
	.p2align 4,,10
	.p2align 3
L2667:
	testl	%esi, %esi
	je	L1570
	addl	$1, 188(%esi)
L1570:
	movl	$0, 4(%esp)
	movl	$968, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %edi
	movl	-300(%ebp), %eax
	movl	%esi, (%esp)
	movl	%edi, %ecx
	movl	%eax, 4(%esp)
	call	__ZN11ImGuiWindowC1EP12ImGuiContextPKc
	movl	-256(%ebp), %eax
	movl	%ebx, %ecx
	subl	$8, %esp
	movl	%eax, 12(%edi)
	movl	%edi, 4(%esp)
	movl	8(%edi), %eax
	movl	%eax, (%esp)
	call	__ZN12ImGuiStorage10SetVoidPtrEjPv
	movl	_GImGui, %ecx
	movss	LC48, %xmm0
	subl	$8, %esp
	movl	18616(%ecx), %eax
	movl	(%eax), %eax
	movss	12(%eax), %xmm1
	addss	%xmm0, %xmm1
	addss	8(%eax), %xmm0
	movss	%xmm1, 72(%edi)
	movss	%xmm0, 68(%edi)
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	$252645135, 264(%edi)
	movl	%eax, 56(%edi)
	movl	68(%edi), %eax
	movl	%edx, 60(%edi)
	movl	72(%edi), %edx
	movl	%eax, 328(%edi)
	movl	%edx, 332(%edi)
	movl	%eax, 320(%edi)
	movl	%edx, 324(%edi)
	movl	%eax, 312(%edi)
	movl	%edx, 316(%edi)
	testb	$64, 12(%edi)
	je	L1571
	movl	$514, %eax
	movw	%ax, 252(%edi)
	xorl	%eax, %eax
L1572:
	movb	%al, 255(%edi)
	movl	16076(%esi), %eax
	cmpl	16080(%esi), %eax
	je	L2718
L1580:
	movl	16084(%esi), %ebx
L1584:
	movl	%edi, (%ebx,%eax,4)
	addl	$1, 16076(%esi)
	jmp	L1569
	.p2align 4,,10
	.p2align 3
L2680:
	cmpb	$0, 253(%edi)
	jg	L1699
	jmp	L1702
L1844:
	movl	832(%edi), %ebx
	cmpl	%edx, %ebx
	je	L1846
	movl	%edi, %ecx
	.p2align 4
	.p2align 4
	.p2align 3
L1847:
	cmpl	%edx, %ecx
	je	L1846
	movl	828(%ecx), %ecx
	testl	%ecx, %ecx
	jne	L1847
	cmpl	%edi, %ebx
	je	L2719
	movb	$0, -292(%ebp)
	movss	124(%edi), %xmm1
	jmp	L1840
	.p2align 4,,10
	.p2align 3
L1968:
	movb	$1, 220(%edi)
	movss	14520(%esi), %xmm1
	movaps	%xmm1, %xmm0
	jmp	L1966
	.p2align 4,,10
	.p2align 3
L2701:
	movss	128(%edi), %xmm2
	movss	-116(%ebp), %xmm1
	movl	%edi, %eax
	leal	-184(%ebp), %edx
	movss	-124(%ebp), %xmm0
	movl	-300(%ebp), %ecx
	subss	%xmm2, %xmm1
	addss	%xmm2, %xmm0
	movss	-112(%ebp), %xmm2
	unpcklps	%xmm2, %xmm1
	movss	-120(%ebp), %xmm2
	unpcklps	%xmm2, %xmm0
	movlhps	%xmm1, %xmm0
	movups	%xmm0, -184(%ebp)
	call	__ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.constprop.0
	jmp	L2057
	.p2align 4,,10
	.p2align 3
L2692:
	movl	12(%edi), %ebx
	andl	$66, %ebx
	jne	L2142
	cmpb	$0, 252(%edi)
	jg	L2143
	cmpb	$0, 253(%edi)
	jg	L2143
	movzbl	224(%edi), %ecx
	movb	%cl, -278(%ebp)
	testb	%cl, %cl
	je	L2143
	movl	_GImGui, %edx
	xorps	%xmm6, %xmm6
	movss	LC6, %xmm0
	movss	15516(%edx), %xmm2
	movzbl	110(%edx), %ecx
	movl	%edx, -284(%ebp)
	mulss	%xmm2, %xmm0
	movb	%cl, -279(%ebp)
	mulss	LC53, %xmm2
	addss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	cmpnless	%xmm2, %xmm0
	andps	%xmm0, %xmm1
	andnps	%xmm2, %xmm0
	orps	%xmm1, %xmm0
	cvttss2sil	%xmm0, %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	mulss	LC54, %xmm0
	cvttss2sil	%xmm0, %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm6
	movss	%xmm6, -404(%ebp)
	testb	%cl, %cl
	je	L1872
	movss	LC11, %xmm0
L1872:
	movss	-404(%ebp), %xmm6
	unpcklps	%xmm0, %xmm0
	movl	-284(%ebp), %ecx
	movaps	%xmm6, %xmm1
	unpcklps	%xmm6, %xmm1
	movaps	%xmm0, %xmm6
	movlhps	%xmm1, %xmm6
	movups	%xmm6, -424(%ebp)
	testb	$8, 13(%ecx)
	je	L1873
	movl	52(%edi), %edx
	cmpl	%edx, 3552(%ecx)
	je	L2720
L1873:
	movss	12(%eax), %xmm2
	movss	8(%eax), %xmm0
	movss	16(%eax), %xmm1
	movss	20(%eax), %xmm3
	addss	%xmm0, %xmm1
	addss	%xmm2, %xmm3
	unpcklps	%xmm2, %xmm0
	unpcklps	%xmm3, %xmm1
	movlhps	%xmm1, %xmm0
	movups	%xmm0, 584(%edi)
L1874:
	movl	$1, 384(%edi)
	movl	$LC55, %eax
	call	__ZN5ImGui6PushIDEPKc
	movzbl	-336(%ebp), %eax
	movss	LC0, %xmm6
	movl	$__ZL15resize_grip_def.lto_priv.0, -256(%ebp)
	movl	%esi, -428(%ebp)
	movl	-284(%ebp), %esi
	addl	$1, %eax
	movl	%ebx, -432(%ebp)
	xorl	%ebx, %ebx
	movl	%eax, -408(%ebp)
	leal	-152(%ebp), %eax
	movl	%eax, -308(%ebp)
	movss	%xmm6, -312(%ebp)
	movss	%xmm6, -360(%ebp)
	movss	%xmm6, -356(%ebp)
	movss	%xmm6, -400(%ebp)
	movss	%xmm6, -396(%ebp)
L1903:
	movups	68(%edi), %xmm0
	movl	-256(%ebp), %eax
	movaps	%xmm0, %xmm3
	movaps	%xmm0, %xmm1
	movups	(%eax), %xmm2
	movlhps	%xmm0, %xmm3
	shufps	$238, %xmm0, %xmm1
	addps	%xmm3, %xmm1
	movaps	%xmm2, %xmm0
	movlhps	%xmm2, %xmm0
	subps	%xmm3, %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm2, %xmm0
	shufps	$238, %xmm2, %xmm0
	mulps	-424(%ebp), %xmm0
	addps	%xmm3, %xmm1
	movaps	%xmm0, %xmm3
	addps	%xmm1, %xmm3
	subps	%xmm0, %xmm1
	movaps	%xmm3, %xmm6
	movaps	%xmm1, %xmm7
	movaps	%xmm1, %xmm4
	unpckhps	%xmm3, %xmm6
	movaps	%xmm3, %xmm5
	shufps	$85, %xmm1, %xmm4
	shufps	$228, %xmm3, %xmm1
	comiss	%xmm6, %xmm7
	movups	%xmm1, -152(%ebp)
	shufps	$255, %xmm3, %xmm5
	jbe	L1875
	movss	%xmm6, -152(%ebp)
	movss	%xmm7, -144(%ebp)
L1875:
	comiss	%xmm5, %xmm4
	jbe	L1877
	movss	%xmm5, -148(%ebp)
	movss	%xmm4, -140(%ebp)
L1877:
	movups	%xmm2, -392(%ebp)
	movl	%edi, %ecx
	movups	%xmm0, -376(%ebp)
	movl	%ebx, (%esp)
	call	__ZN11ImGuiWindow5GetIDEi
	movl	$8, %ecx
	subl	$4, %esp
	movl	%eax, %edx
	movl	%eax, -352(%ebp)
	movl	-308(%ebp), %eax
	call	__ZN5ImGui7ItemAddERK6ImRectjPS1_i.constprop.0
	leal	-184(%ebp), %ecx
	movl	$264192, 4(%esp)
	movl	%ecx, (%esp)
	movl	-352(%ebp), %edx
	leal	-200(%ebp), %ecx
	movl	-308(%ebp), %eax
	call	__ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	movzbl	-200(%ebp), %eax
	movzbl	-184(%ebp), %edx
	movups	-376(%ebp), %xmm0
	movups	-392(%ebp), %xmm2
	testb	%al, %al
	jne	L1879
	testb	%dl, %dl
	je	L2721
	testl	%ebx, %ebx
	jne	L2098
	movl	$6, 19064(%esi)
L1885:
	cmpw	$2, 14098(%esi)
	sete	-352(%ebp)
	je	L2722
L1883:
	movaps	%xmm2, %xmm3
	movaps	%xmm0, %xmm1
	movaps	%xmm0, %xmm4
	shufps	$85, %xmm2, %xmm3
	ucomiss	LC4, %xmm3
	shufps	$255, %xmm0, %xmm1
	shufps	$85, %xmm0, %xmm4
	movss	%xmm1, -376(%ebp)
	movaps	%xmm0, %xmm1
	unpckhps	%xmm0, %xmm1
	movss	%xmm1, -392(%ebp)
	jp	L1888
	jne	L1888
	ucomiss	LC4, %xmm2
	jp	L2199
	je	L2145
L2199:
	movss	-268(%ebp), %xmm1
	movss	-312(%ebp), %xmm6
	movss	LC12, %xmm7
L1892:
	xorps	%xmm5, %xmm5
	ucomiss	%xmm5, %xmm2
	jp	L2203
	movss	-348(%ebp), %xmm5
	movss	%xmm5, -352(%ebp)
	movaps	%xmm7, %xmm5
	jne	L2203
L1890:
	movss	-376(%ebp), %xmm7
	xorps	LC13, %xmm7
	subss	%xmm4, %xmm7
	mulss	%xmm3, %xmm7
	movss	3532(%esi), %xmm3
	subss	16248(%esi), %xmm3
	addss	%xmm4, %xmm7
	movss	-392(%ebp), %xmm4
	xorps	LC13, %xmm4
	subss	%xmm0, %xmm4
	addss	%xmm7, %xmm3
	mulss	%xmm4, %xmm2
	comiss	%xmm3, %xmm1
	addss	%xmm2, %xmm0
	movss	3528(%esi), %xmm2
	subss	16244(%esi), %xmm2
	addss	%xmm2, %xmm0
	ja	L1898
	minss	%xmm3, %xmm6
	movaps	%xmm6, %xmm1
L1898:
	comiss	%xmm0, %xmm5
	ja	L1901
	movss	-352(%ebp), %xmm5
	minss	%xmm0, %xmm5
L1901:
	leal	-224(%ebp), %eax
	movl	%ebx, -352(%ebp)
	leal	-232(%ebp), %ecx
	movaps	%xmm5, %xmm0
	movl	%eax, (%esp)
	movl	-256(%ebp), %edx
	movl	%edi, %eax
	call	__ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.isra.0
	movss	-232(%ebp), %xmm6
	movl	$32, %eax
	movss	%xmm6, -396(%ebp)
	movss	-228(%ebp), %xmm6
	movss	%xmm6, -400(%ebp)
	movss	-224(%ebp), %xmm6
	movss	%xmm6, -356(%ebp)
	movss	-220(%ebp), %xmm6
	movss	%xmm6, -360(%ebp)
L1884:
	movl	_GImGui, %edx
	addl	$13, %eax
	addl	$1, %ebx
	sall	$4, %eax
	addl	%edx, %eax
	movl	14416(%eax), %ecx
	movl	%ecx, -124(%ebp)
	movl	14420(%eax), %ecx
	movl	%ecx, -120(%ebp)
	movl	14424(%eax), %ecx
	movl	%ecx, -116(%ebp)
	movl	14428(%eax), %ecx
	movl	%ecx, -112(%ebp)
	movss	14428(%eax), %xmm0
	leal	-124(%ebp), %eax
	mulss	14404(%edx), %xmm0
	movss	%xmm0, -112(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movl	-352(%ebp), %ecx
	addl	$24, -256(%ebp)
	movl	%eax, -168(%ebp,%ecx,4)
	cmpl	-408(%ebp), %ebx
	jne	L1903
L1902:
	movl	-428(%ebp), %esi
	movl	-432(%ebp), %ebx
	cmpb	$0, -279(%ebp)
	je	L2149
	leal	-124(%ebp), %edx
	movl	%esi, -352(%ebp)
	movl	$__ZL17resize_border_def.lto_priv.0, %esi
	movl	$-1, -324(%ebp)
	movl	%edx, -256(%ebp)
L1922:
	movss	LC11, %xmm1
	movss	-404(%ebp), %xmm0
	movl	%edi, %edx
	movl	%ebx, %ecx
	movl	-256(%ebp), %eax
	call	__ZL19GetResizeBorderRectP11ImGuiWindowiff.lto_priv.0
	leal	4(%ebx), %eax
	movl	%edi, %ecx
	movl	%eax, (%esp)
	call	__ZN11ImGuiWindow5GetIDEi
	movl	$8, %ecx
	subl	$4, %esp
	movl	%eax, %edx
	movl	%eax, -296(%ebp)
	movl	-256(%ebp), %eax
	call	__ZN5ImGui7ItemAddERK6ImRectjPS1_i.constprop.0
	leal	-200(%ebp), %ecx
	movl	$264192, 4(%esp)
	movl	%ecx, (%esp)
	movl	-296(%ebp), %edx
	leal	-233(%ebp), %ecx
	movl	-256(%ebp), %eax
	call	__ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	movzbl	-200(%ebp), %eax
	cmpb	$0, -233(%ebp)
	je	L1905
	movl	-284(%ebp), %ecx
	movss	16216(%ecx), %xmm0
	comiss	LC56, %xmm0
	jbe	L1905
	movl	-284(%ebp), %ecx
	cmpl	$1, %ebx
	jle	L2723
	movl	$3, 19064(%ecx)
	testb	%al, %al
	je	L1913
L2664:
	cmpl	$3, %ebx
	je	L2151
	movss	-288(%ebp), %xmm3
	movss	-312(%ebp), %xmm4
	movss	LC12, %xmm0
	movaps	%xmm0, %xmm1
L1914:
	movl	68(%edi), %eax
	movl	-284(%ebp), %ecx
	movl	72(%edi), %edx
	movl	%eax, -184(%ebp)
	xorl	%eax, %eax
	cmpl	$1, %ebx
	setg	%al
	movl	%edx, -180(%ebp)
	movss	3528(%ecx,%eax,4), %xmm2
	subss	16244(%ecx,%eax,4), %xmm2
	addss	LC11, %xmm2
	movss	%xmm2, -184(%ebp,%eax,4)
	movss	-180(%ebp), %xmm2
	comiss	%xmm2, %xmm1
	ja	L1915
	minss	%xmm2, %xmm3
	movaps	%xmm3, %xmm1
L1915:
	movss	-184(%ebp), %xmm2
	comiss	%xmm2, %xmm0
	ja	L1916
	minss	%xmm2, %xmm4
	movaps	%xmm4, %xmm0
L1916:
	movss	12(%esi), %xmm2
	movss	8(%esi), %xmm3
	leal	-224(%ebp), %eax
	leal	-232(%ebp), %ecx
	minss	16(%esi), %xmm3
	minss	20(%esi), %xmm2
	movss	%xmm3, -152(%ebp)
	movss	%xmm2, -148(%ebp)
	movl	%eax, (%esp)
	movl	-308(%ebp), %edx
	movl	%edi, %eax
	call	__ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.isra.0
	movss	-232(%ebp), %xmm3
	movss	-228(%ebp), %xmm6
	movl	%ebx, -324(%ebp)
	movss	%xmm3, -396(%ebp)
	movss	-224(%ebp), %xmm3
	movss	%xmm6, -400(%ebp)
	movss	-220(%ebp), %xmm6
	movss	%xmm3, -356(%ebp)
	movss	%xmm6, -360(%ebp)
L1913:
	addl	$1, %ebx
	cmpl	$4, %ebx
	je	L1921
	addl	$28, %esi
	jmp	L1922
	.p2align 4,,10
	.p2align 3
L2711:
	xorps	%xmm5, %xmm5
	movaps	%xmm5, %xmm4
	jmp	L1947
	.p2align 4,,10
	.p2align 3
L2702:
	movzbl	3557(%esi), %eax
	cmpb	%al, 97(%esi)
	jne	L2059
	movl	840(%edi), %eax
	testb	$32, 14(%eax)
	jne	L2059
	movl	%edi, %eax
	call	__ZN5ImGui27BeginDockableDragDropSourceEP11ImGuiWindow
	jmp	L2059
	.p2align 4,,10
	.p2align 3
L2693:
	movss	LC59, %xmm0
	mulss	%xmm3, %xmm0
	cvttss2sil	%xmm0, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	jmp	L1991
	.p2align 4,,10
	.p2align 3
L2077:
	movl	-264(%ebp), %eax
	cmpb	$0, 261(%eax)
	jg	L2078
	jmp	L2071
	.p2align 4,,10
	.p2align 3
L2684:
	leal	1(%eax), %ecx
	testl	%eax, %eax
	jne	L1653
	movl	$8, %eax
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%eax, -268(%ebp)
L1654:
	movl	-268(%ebp), %eax
	movl	_GImGui, %edx
	leal	(%eax,%eax,4), %eax
	sall	$3, %eax
	testl	%edx, %edx
	je	L1656
	addl	$1, 188(%edx)
L1656:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %ecx
	movl	18600(%esi), %eax
	testl	%eax, %eax
	je	L1657
	movl	18592(%esi), %edx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	leal	(%edx,%edx,4), %edx
	sall	$3, %edx
	movl	%edx, 8(%esp)
	movl	%ecx, -276(%ebp)
	call	_memcpy
	movl	18600(%esi), %edx
	movl	-276(%ebp), %ecx
	testl	%edx, %edx
	je	L1658
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1658
	subl	$1, 188(%eax)
L1658:
	movl	%ecx, -276(%ebp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-276(%ebp), %ecx
L1657:
	movl	-268(%ebp), %eax
	movl	%ecx, 18600(%esi)
	movl	%eax, 18596(%esi)
	movl	18592(%esi), %eax
	jmp	L1655
	.p2align 4,,10
	.p2align 3
L1629:
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1631
	addl	$1, 188(%eax)
L1631:
	movl	$0, 4(%esp)
	movl	$32, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %ebx
	movl	292(%edi), %eax
	testl	%eax, %eax
	je	L1632
	movl	284(%edi), %ecx
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	leal	0(,%ecx,4), %edx
	movl	%edx, 8(%esp)
	call	_memcpy
	movl	292(%edi), %eax
	testl	%eax, %eax
	je	L1633
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L1633
	subl	$1, 188(%edx)
L1633:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1632:
	movl	%ebx, 292(%edi)
	movl	284(%edi), %eax
	movl	$8, 288(%edi)
	jmp	L1630
	.p2align 4,,10
	.p2align 3
L2082:
	cmpb	$0, 262(%edi)
	setg	%al
	xorl	%edx, %edx
	jmp	L2083
	.p2align 4,,10
	.p2align 3
L2109:
	xorl	%eax, %eax
	jmp	L1562
	.p2align 4,,10
	.p2align 3
L1619:
	andl	$-17, 18372(%esi)
	movzbl	909(%edi), %edx
	movl	%edx, %eax
	andl	$1, %eax
	andl	$4, %edx
	je	L1623
	cmpb	$1, %bl
	je	L1623
	testb	%cl, %cl
	je	L1623
	cmpb	$0, 229(%edi)
	jne	L1623
	cmpb	$0, -248(%ebp)
	jne	L1623
	jmp	L1621
	.p2align 4,,10
	.p2align 3
L2715:
	movzbl	-277(%ebp), %eax
	movss	88(%edi), %xmm1
	movb	%al, -320(%ebp)
	jmp	L1751
	.p2align 4,,10
	.p2align 3
L2639:
	movb	$0, 221(%edi)
	testb	$-128, -239(%ebp)
	je	L2724
L1960:
	movl	$1, %ecx
	xorps	%xmm1, %xmm1
	movw	%cx, 220(%edi)
	movss	14520(%esi), %xmm0
	jmp	L1966
L2724:
	comiss	%xmm0, %xmm4
	jbe	L2095
	movl	-240(%ebp), %eax
	testb	$8, %al
	jne	L2095
	testb	$8, %ah
	jne	L1960
	.p2align 4
	.p2align 3
L2095:
	xorps	%xmm0, %xmm0
	movb	$0, 220(%edi)
	movaps	%xmm0, %xmm1
	jmp	L1966
	.p2align 4,,10
	.p2align 3
L2716:
	subss	%xmm3, %xmm6
	xorps	%xmm0, %xmm0
	comiss	%xmm0, %xmm6
	jbe	L1822
	subss	%xmm4, %xmm7
	comiss	%xmm0, %xmm7
	ja	L2725
L1822:
	cvttss2sil	%xmm5, %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	cvttss2sil	-256(%ebp), %edx
	movss	%xmm0, 68(%edi)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movss	%xmm0, 72(%edi)
	testb	$1, 909(%edi)
	jne	L2726
L1838:
	movl	-240(%ebp), %edx
	andl	$201326592, %edx
	cmpl	$67108864, %edx
	je	L2727
	movss	14420(%esi), %xmm1
	jmp	L1837
	.p2align 4,,10
	.p2align 3
L2689:
	movl	824(%edi), %eax
	movss	15520(%ecx), %xmm1
	mulss	664(%edi), %xmm1
	movss	72(%edi), %xmm2
	mulss	668(%edi), %xmm1
	testl	%eax, %eax
	je	L1738
	mulss	664(%eax), %xmm1
L1738:
	movss	14468(%ecx), %xmm0
	movl	68(%edi), %eax
	movl	72(%edi), %edx
	addss	%xmm0, %xmm0
	movl	%eax, -256(%ebp)
	movl	%edx, -252(%ebp)
	addss	%xmm1, %xmm0
	movss	68(%edi), %xmm1
	addss	84(%edi), %xmm1
	movl	%eax, -124(%ebp)
	movl	%edx, -120(%ebp)
	addss	%xmm2, %xmm0
	movss	%xmm1, -116(%ebp)
	movss	%xmm0, -112(%ebp)
	cmpl	%edi, 16152(%esi)
	je	L2728
L1739:
	movzbl	-277(%ebp), %eax
	movb	%al, -316(%ebp)
	cmpb	$0, 227(%edi)
	je	L1743
L1740:
	movzbl	226(%edi), %eax
	movl	%eax, %edx
	orb	-277(%ebp), %al
	xorl	$1, %edx
	movb	%al, -316(%ebp)
	movb	%dl, 226(%edi)
	testb	$1, -239(%ebp)
	jne	L1743
	movl	_GImGui, %eax
	xorps	%xmm0, %xmm0
	comiss	23424(%eax), %xmm0
	jb	L1743
	movss	28(%eax), %xmm0
	movss	%xmm0, 23424(%eax)
	movl	(%edi), %ecx
	jmp	L1743
	.p2align 4,,10
	.p2align 3
L2670:
	movl	_GImGui, %eax
	cmpb	$0, 98(%eax)
	je	L2729
L1616:
	testl	$18874369, 12(%edi)
	jne	L1617
	cmpb	$0, 231(%edi)
	je	L1614
L1617:
	andb	$-8, 909(%edi)
	jmp	L1624
	.p2align 4,,10
	.p2align 3
L2710:
	leal	1(%eax), %ecx
	testl	%eax, %eax
	jne	L1773
	movl	$8, %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
L1774:
	movl	_GImGui, %eax
	leal	0(,%ecx,4), %edx
	testl	%eax, %eax
	je	L1776
	addl	$1, 188(%eax)
L1776:
	movl	%ecx, -256(%ebp)
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-264(%ebp), %edx
	movl	-256(%ebp), %ecx
	movl	%eax, %ebx
	movl	448(%edx), %eax
	testl	%eax, %eax
	je	L1777
	movl	%ecx, -284(%ebp)
	movl	440(%edx), %ecx
	leal	0(,%ecx,4), %edx
	movl	%ecx, -256(%ebp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_memcpy
	movl	-264(%ebp), %edx
	movl	-284(%ebp), %ecx
	movl	448(%edx), %edx
	testl	%edx, %edx
	je	L1778
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1778
	subl	$1, 188(%eax)
L1778:
	movl	%ecx, -256(%ebp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-256(%ebp), %ecx
L1777:
	movl	-264(%ebp), %eax
	movl	%ebx, 448(%eax)
	movl	%ecx, 444(%eax)
	movl	440(%eax), %eax
	jmp	L1775
	.p2align 4,,10
	.p2align 3
L2712:
	movl	$0, 18684(%ebx)
	movl	896(%edi), %eax
	movl	%eax, 18688(%ebx)
	jmp	L2050
	.p2align 4,,10
	.p2align 3
L1571:
	xorps	%xmm0, %xmm0
	comiss	76(%edi), %xmm0
	movss	80(%edi), %xmm1
	jnb	L2730
	comiss	%xmm1, %xmm0
	movzbl	252(%edi), %eax
	jnb	L2731
L1577:
	testb	%al, %al
	jg	L1575
	cmpb	$0, 253(%edi)
	setg	%al
	jmp	L1572
L2730:
	comiss	%xmm1, %xmm0
	movb	$2, 252(%edi)
	jb	L1575
	movb	$2, 253(%edi)
L1575:
	movl	$1, %eax
	jmp	L1572
L2694:
	movl	-264(%ebp), %eax
	movl	440(%eax), %edx
	cmpl	$1, %edx
	jle	L1999
	movl	448(%eax), %ecx
	movl	-8(%ecx,%edx,4), %edx
	testl	%edx, %edx
	je	L1999
	movss	72(%edx), %xmm1
	movss	80(%edx), %xmm2
	movss	72(%edi), %xmm0
	addss	%xmm1, %xmm2
	comiss	%xmm0, %xmm2
	jbe	L1999
	addss	80(%edi), %xmm0
	comiss	%xmm1, %xmm0
	jbe	L1999
	movss	68(%edx), %xmm1
	movss	76(%edx), %xmm2
	movss	68(%edi), %xmm0
	addss	%xmm1, %xmm2
	comiss	%xmm0, %xmm2
	jbe	L1999
	addss	76(%edi), %xmm0
	comiss	%xmm1, %xmm0
	seta	%al
	jmp	L2001
	.p2align 4,,10
	.p2align 3
L1999:
	xorl	%eax, %eax
L2001:
	movl	676(%edi), %ecx
	movl	(%ecx), %edx
	leal	-5(%edx,%edx,4), %edx
	sall	$3, %edx
	addl	8(%ecx), %edx
	movl	28(%edx), %edx
	testl	%edx, %edx
	jne	L1998
	movl	-264(%ebp), %ebx
	movl	676(%ebx), %edx
	movl	24(%edx), %ecx
	testl	%ecx, %ecx
	setg	%cl
	xorl	$1, %eax
	movl	%eax, %ebx
	andb	%cl, %bl
	je	L1998
	movl	%edx, 676(%edi)
	jmp	L1998
L2707:
	cmpb	$0, 253(%edi)
	jg	L2072
	testl	$8388608, %eax
	je	L2073
	cmpb	$0, 18740(%esi)
	je	L2073
	movl	18680(%esi), %eax
	testl	%eax, %eax
	je	L2073
	movl	848(%edi), %ebx
	cmpl	%ebx, 848(%eax)
	je	L2072
L2073:
	cmpb	$0, 23524(%esi)
	jne	L2072
	movss	504(%edi), %xmm0
	comiss	512(%edi), %xmm0
	jnb	L2074
	movss	508(%edi), %xmm0
	comiss	516(%edi), %xmm0
	jb	L2072
L2074:
	movb	$1, 260(%edi)
	jmp	L2072
	.p2align 4,,10
	.p2align 3
L2718:
	leal	1(%eax), %ebx
	testl	%eax, %eax
	je	L2732
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	cmpl	%ebx, %edx
	cmovl	%ebx, %edx
	cmpl	%edx, %eax
	jge	L1580
	leal	0(,%edx,4), %eax
L1582:
	addl	$1, 188(%ecx)
	movl	%edx, -240(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-240(%ebp), %edx
	movl	%eax, %ebx
	movl	16084(%esi), %eax
	testl	%eax, %eax
	je	L1585
	movl	16076(%esi), %ecx
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	sall	$2, %ecx
	movl	%ecx, 8(%esp)
	call	_memcpy
	movl	16084(%esi), %ecx
	movl	-240(%ebp), %edx
	testl	%ecx, %ecx
	je	L1586
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1586
	subl	$1, 188(%eax)
L1586:
	movl	%edx, -240(%ebp)
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-240(%ebp), %edx
L1585:
	movl	%ebx, 16084(%esi)
	movl	16076(%esi), %eax
	movl	%edx, 16080(%esi)
	jmp	L1584
L2706:
	movb	$1, 261(%edi)
	jmp	L2069
L1653:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	cmpl	%ecx, %edx
	cmovge	%edx, %ecx
	movl	%ecx, -268(%ebp)
	cmpl	%ecx, %eax
	jge	L1652
	jmp	L1654
L2726:
	xorps	%xmm1, %xmm1
	jmp	L1837
L1954:
	movb	$0, 221(%edi)
	testb	$-128, -239(%ebp)
	jne	L1960
	jmp	L2095
L2682:
	movl	$0x00000000, 88(%edi)
	movl	$0x00000000, 80(%edi)
	jmp	L1722
L2729:
	cmpb	$0, 44(%edi)
	je	L1617
	jmp	L1616
L1773:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	cmpl	%ecx, %edx
	cmovge	%edx, %ecx
	cmpl	%ecx, %eax
	jge	L1772
	jmp	L1774
L1592:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	movl	%edx, -268(%ebp)
	cmpl	%edx, %eax
	jge	L1591
	jmp	L1593
L1787:
	testb	$16, -237(%ebp)
	je	L2655
	jmp	L1784
L2053:
	testl	%edx, %edx
	jne	L2733
L2055:
	movl	%eax, 18684(%ebx)
	movl	896(%edi), %eax
	movl	%eax, 18688(%ebx)
	jmp	L2050
L2732:
	movl	$8, %eax
	cmpl	%eax, %ebx
	cmovge	%ebx, %eax
	movl	%eax, %edx
	leal	0(,%eax,4), %eax
	jmp	L1582
L2714:
	movzbl	18741(%eax), %edx
	jmp	L2056
L2143:
	movss	LC0, %xmm3
	leal	-152(%ebp), %ecx
	movl	$-1, %ebx
	movb	$1, -332(%ebp)
	movl	%ecx, -308(%ebp)
	movss	%xmm3, -312(%ebp)
	jmp	L1867
L2725:
	movl	_GImGui, %edx
	movss	76(%edi), %xmm2
	movss	80(%edi), %xmm0
	cmpb	$0, 111(%edx)
	je	L1816
	testb	$1, 12(%edi)
	je	L1817
	movl	940(%edi), %ebx
	testl	%ebx, %ebx
	je	L1816
L1817:
	movss	14468(%edx), %xmm0
	addss	%xmm0, %xmm0
	addss	15516(%edx), %xmm0
L1816:
	movss	-268(%ebp), %xmm1
	movss	-256(%ebp), %xmm6
	subss	%xmm0, %xmm1
	movss	-248(%ebp), %xmm0
	subss	%xmm2, %xmm0
	comiss	%xmm6, %xmm1
	ja	L2128
	movss	-288(%ebp), %xmm1
	minss	%xmm6, %xmm1
	movss	%xmm1, -256(%ebp)
L1819:
	comiss	%xmm5, %xmm0
	ja	L2129
	movss	-348(%ebp), %xmm0
	minss	%xmm5, %xmm0
	movaps	%xmm0, %xmm5
	jmp	L1822
L2731:
	movb	$2, 253(%edi)
	jmp	L1577
L2719:
	movl	-284(%ebp), %eax
	movl	-308(%ebp), %ecx
L1858:
	movl	(%ecx), %ebx
	testl	%ebx, %ebx
	je	L1849
	testb	$8, 15(%ebx)
	je	L1849
	cmpb	$0, 223(%ebx)
	jne	L1850
	cmpb	$0, 224(%ebx)
	jne	L1850
L1849:
	subl	$1, %eax
	subl	$40, %ecx
	cmpl	$-1, %eax
	jne	L1858
	jmp	L1851
	.p2align 4,,10
	.p2align 3
L2713:
	movl	18732(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%edi), %eax
	movl	$1, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$LC60, (%esp)
	call	__ZN5ImGui8DebugLogEPKcz
	movl	_GImGui, %eax
	jmp	L2054
L2142:
	movss	LC0, %xmm6
	leal	-152(%ebp), %ecx
	movl	$-1, %ebx
	movb	$1, -332(%ebp)
	movl	%ecx, -308(%ebp)
	movss	%xmm6, -312(%ebp)
	jmp	L1867
L1905:
	testb	%al, %al
	je	L1913
	cmpl	$1, %ebx
	jle	L2734
	movl	-284(%ebp), %eax
	movl	$3, 19064(%eax)
	jmp	L2664
L2717:
	movswl	104(%eax), %edx
	movl	_GImGui, %ebx
	testl	%edx, %edx
	js	L1826
	cmpl	14356(%ebx), %edx
	jge	L1826
	leal	(%edx,%edx,8), %ecx
	movl	14364(%ebx), %edx
	leal	(%edx,%ecx,4), %edx
L1827:
	movss	20(%edx), %xmm3
	movaps	%xmm1, %xmm6
	movss	16(%edx), %xmm2
	addss	%xmm3, %xmm6
	addss	28(%edx), %xmm3
	movss	%xmm6, -268(%ebp)
	movaps	%xmm0, %xmm6
	subss	%xmm1, %xmm3
	addss	%xmm2, %xmm6
	addss	24(%edx), %xmm2
	movss	%xmm3, -288(%ebp)
	subss	%xmm0, %xmm2
	movss	%xmm6, -248(%ebp)
	movss	80(%edi), %xmm0
	movss	%xmm2, -348(%ebp)
	movss	76(%edi), %xmm2
	cmpb	$0, 111(%ebx)
	je	L1829
	testb	$1, 12(%edi)
	je	L1830
	movl	940(%edi), %edx
	testl	%edx, %edx
	je	L1829
L1830:
	movss	14468(%ebx), %xmm0
	addss	%xmm0, %xmm0
	addss	15516(%ebx), %xmm0
L1829:
	movss	-268(%ebp), %xmm1
	movss	-256(%ebp), %xmm6
	subss	%xmm0, %xmm1
	movss	-248(%ebp), %xmm0
	subss	%xmm2, %xmm0
	comiss	%xmm6, %xmm1
	ja	L2130
	movss	-288(%ebp), %xmm1
	minss	%xmm6, %xmm1
	movss	%xmm1, -256(%ebp)
L1832:
	comiss	%xmm5, %xmm0
	ja	L2131
	movss	-348(%ebp), %xmm0
	minss	%xmm5, %xmm0
	movaps	%xmm0, %xmm5
	jmp	L1825
L1607:
	movl	144(%edx), %ebx
	jmp	L1608
L2683:
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1697
	subl	$1, 188(%eax)
L1697:
	movl	%edx, -240(%ebp)
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	_GImGui, %eax
	movl	-240(%ebp), %edx
	testl	%eax, %eax
	je	L1698
	addl	$1, 188(%eax)
L1698:
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, -240(%ebp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-240(%ebp), %edx
	movl	%eax, %ebx
	jmp	L1696
L2728:
	movl	16204(%esi), %eax
	testl	%eax, %eax
	jne	L1739
	movl	16208(%esi), %eax
	testl	%eax, %eax
	jne	L1739
	movl	%ecx, -296(%ebp)
	movl	$1, 8(%esp)
	movl	-116(%ebp), %eax
	movl	-112(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	-256(%ebp), %eax
	movl	-252(%ebp), %edx
	call	__ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.isra.0
	movl	-296(%ebp), %ecx
	testb	%al, %al
	je	L1739
	cmpw	$2, 14098(%esi)
	jne	L1739
	movb	$1, 227(%edi)
	jmp	L1740
	.p2align 4,,10
	.p2align 3
L1826:
	leal	18640(%ebx), %edx
	jmp	L1827
L2727:
	movss	14456(%esi), %xmm1
	movl	-260(%ebp), %ecx
	movss	%xmm1, 124(%edi)
	cmpl	%ecx, -244(%ebp)
	jge	L2137
	testb	$16, -239(%ebp)
	jne	L2137
	movb	$1, -292(%ebp)
	jmp	L1841
L1879:
	testl	%ebx, %ebx
	je	L1882
	movl	$5, 19064(%esi)
	testb	%dl, %dl
	jne	L1883
	movl	$1, -352(%ebp)
	movl	$31, %eax
	jmp	L1884
L2703:
	testb	$32, 15(%edi)
	jne	L2058
	movl	%edi, %eax
	call	__ZN5ImGui27BeginDockableDragDropTargetEP11ImGuiWindow
	jmp	L2058
L2131:
	movaps	%xmm0, %xmm5
	jmp	L1825
L2130:
	movss	%xmm1, -256(%ebp)
	jmp	L1832
L1882:
	movl	$6, 19064(%esi)
	testb	%dl, %dl
	jne	L1885
L1886:
	movl	$0, -352(%ebp)
	addl	$30, %eax
	jmp	L1884
L2129:
	movaps	%xmm0, %xmm5
	jmp	L1822
L2128:
	movss	%xmm1, -256(%ebp)
	jmp	L1819
L2721:
	testl	%ebx, %ebx
	jne	L1902
	jmp	L1886
L1888:
	ucomiss	LC4, %xmm2
	xorps	%xmm1, %xmm1
	jp	L1893
	jne	L1893
	ucomiss	%xmm1, %xmm3
	movss	-248(%ebp), %xmm5
	jp	L2201
	jne	L2201
	movss	-312(%ebp), %xmm7
	movss	-288(%ebp), %xmm6
	movss	LC12, %xmm1
	movss	%xmm7, -352(%ebp)
	jmp	L1890
L1921:
	movl	-352(%ebp), %esi
	movzbl	-324(%ebp), %ebx
L1904:
	movl	_GImGui, %eax
	movl	%eax, -256(%ebp)
	movl	16148(%eax), %eax
	subl	$1, 284(%eax)
	movl	-284(%ebp), %eax
	movl	$0, 384(%edi)
	movl	19020(%eax), %eax
	testl	%eax, %eax
	je	L1926
	cmpl	%edi, 840(%eax)
	je	L2735
L1926:
	movss	-356(%ebp), %xmm6
	ucomiss	LC0, %xmm6
	jp	L2206
	jne	L2206
L1932:
	movss	-396(%ebp), %xmm3
	ucomiss	LC0, %xmm3
	jp	L2208
	jne	L2208
L1935:
	movl	84(%edi), %eax
	movl	88(%edi), %edx
	movzbl	-332(%ebp), %ecx
	movl	%eax, 76(%edi)
	movl	48(%edi), %eax
	movl	%edx, 80(%edi)
	testb	%cl, %cl
	je	L2153
	movb	%cl, -316(%ebp)
	movb	%cl, -320(%ebp)
	jmp	L1867
L2733:
	movl	18732(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%edi), %eax
	movl	$0, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$LC60, (%esp)
	call	__ZN5ImGui8DebugLogEPKcz
	movl	856(%edi), %eax
	jmp	L2055
L1850:
	cmpl	%edi, %ebx
	je	L1851
	movl	%edi, %edx
	jmp	L1852
L1853:
	cmpl	%edx, %ebx
	je	L1851
L1852:
	movl	828(%edx), %edx
	testl	%edx, %edx
	jne	L1853
	movl	828(%ebx), %edx
	movl	832(%edx), %edx
	testl	%edx, %edx
	je	L1849
	movl	%eax, -284(%ebp)
L1857:
	cmpl	%edi, %edx
	je	L1854
	movl	%edi, %eax
	jmp	L1855
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1856:
	cmpl	%eax, %edx
	je	L1854
L1855:
	movl	828(%eax), %eax
	testl	%eax, %eax
	jne	L1856
	movl	828(%edx), %eax
	movl	832(%eax), %edx
	testl	%edx, %edx
	jne	L1857
	movl	-284(%ebp), %eax
	jmp	L1849
L2098:
	movl	$5, 19064(%esi)
	jmp	L1883
L1893:
	ucomiss	%xmm1, %xmm3
	jp	L2202
	jne	L2202
	movss	LC12, %xmm7
	movss	-288(%ebp), %xmm6
	movaps	%xmm7, %xmm1
	jmp	L1892
L2145:
	movss	-312(%ebp), %xmm7
	movss	-248(%ebp), %xmm5
	movss	-268(%ebp), %xmm1
	movaps	%xmm7, %xmm6
	movss	%xmm7, -352(%ebp)
	jmp	L1890
L2151:
	movss	-312(%ebp), %xmm4
	movss	-268(%ebp), %xmm1
	movss	LC12, %xmm0
	movaps	%xmm4, %xmm3
	jmp	L1914
L2723:
	movl	$4, 19064(%ecx)
	testb	%al, %al
	jne	L1910
	addl	$1, %ebx
	addl	$28, %esi
	jmp	L1922
L2734:
	movl	-284(%ebp), %eax
	movl	$4, 19064(%eax)
	je	L2171
L2657:
	movss	-348(%ebp), %xmm4
	movss	-312(%ebp), %xmm3
	movss	LC12, %xmm0
	movaps	%xmm0, %xmm1
	jmp	L1914
L1854:
	movl	-256(%ebp), %eax
	movl	16084(%eax), %edx
	movl	16076(%eax), %eax
	leal	(%edx,%eax,4), %ecx
	movl	%edx, -284(%ebp)
	cmpl	%ecx, %edx
	jnb	L2139
	movl	832(%ebx), %ebx
	jmp	L1861
	.p2align 4
	.p2align 4,,10
	.p2align 3
L2736:
	addl	$4, %edx
	cmpl	%ecx, %edx
	jnb	L1860
L1861:
	cmpl	%edi, (%edx)
	jne	L2736
L1860:
	movl	%ebx, -308(%ebp)
	movl	-284(%ebp), %ebx
	movl	%edx, %eax
	subl	%ebx, %eax
	movl	%eax, -332(%ebp)
	sarl	$2, %eax
	movl	%eax, -336(%ebp)
	movl	%eax, -292(%ebp)
	movl	%ebx, %eax
	movl	-308(%ebp), %ebx
	jmp	L1863
	.p2align 4
	.p2align 4,,10
	.p2align 3
L2737:
	addl	$4, %eax
	cmpl	%ecx, %eax
	jnb	L1862
L1863:
	cmpl	(%eax), %ebx
	jne	L2737
L1862:
	movl	%eax, %ebx
	subl	-284(%ebp), %ebx
	movl	%ebx, %ecx
	movl	%ebx, -308(%ebp)
	sarl	$2, %ecx
	movl	%ecx, -312(%ebp)
	cmpl	%eax, %edx
	jnb	L1859
	movl	%ecx, %eax
	subl	-336(%ebp), %eax
	leal	-4(,%eax,4), %eax
	movl	%eax, 8(%esp)
	movl	-284(%ebp), %eax
	movl	-332(%ebp), %ecx
	movl	%edx, (%esp)
	leal	4(%eax,%ecx), %eax
	movl	%eax, 4(%esp)
	call	_memmove
	movl	-256(%ebp), %eax
	movl	-308(%ebp), %ebx
	movb	$0, -292(%ebp)
	movl	16084(%eax), %eax
	movl	%edi, -4(%eax,%ebx)
	movss	124(%edi), %xmm1
	movl	48(%edi), %eax
	jmp	L1840
L2139:
	xorl	%edx, %edx
	movl	-284(%ebp), %eax
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	movl	%edx, -292(%ebp)
L1859:
	movl	-292(%ebp), %edx
	movl	%eax, 4(%esp)
	subl	%ecx, %edx
	sall	$2, %edx
	movl	%edx, 8(%esp)
	movl	-284(%ebp), %eax
	leal	4(%eax,%ebx), %eax
	movl	%eax, (%esp)
	call	_memmove
	movl	-256(%ebp), %eax
	movb	$0, -292(%ebp)
	movl	16084(%eax), %eax
	movl	%edi, (%eax,%ebx)
	movss	124(%edi), %xmm1
	movl	48(%edi), %eax
	jmp	L1840
L2208:
	cvttss2sil	-396(%ebp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	cvttss2sil	-400(%ebp), %eax
	movss	%xmm0, 68(%edi)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, 72(%edi)
	testb	$1, 13(%edi)
	jne	L1935
	movl	_GImGui, %eax
	xorps	%xmm0, %xmm0
	comiss	23424(%eax), %xmm0
	jb	L1935
	movss	28(%eax), %xmm0
	movss	%xmm0, 23424(%eax)
	jmp	L1935
L2206:
	movss	-356(%ebp), %xmm3
	movss	-360(%ebp), %xmm6
	movss	%xmm3, 84(%edi)
	movss	%xmm6, 88(%edi)
	testb	$1, 13(%edi)
	jne	L1932
	movl	_GImGui, %eax
	xorps	%xmm0, %xmm0
	comiss	23424(%eax), %xmm0
	jb	L1932
	movss	28(%eax), %xmm0
	movss	%xmm0, 23424(%eax)
	jmp	L1932
L2149:
	movl	$-1, %ebx
	jmp	L1904
L2720:
	testb	$8, 4(%eax)
	jne	L1874
	jmp	L1873
L2735:
	movl	-284(%ebp), %eax
	movl	18728(%eax), %eax
	cmpl	$2, %eax
	je	L1924
	cmpl	$3, %eax
	jne	L1926
	movl	$625, %ecx
	movl	$624, %edx
	movl	$623, %eax
	movl	$626, (%esp)
L2659:
	call	__ZN5ImGui17GetKeyMagnitude2dE8ImGuiKeyS0_S0_S0_
	xorps	%xmm2, %xmm2
	movl	%eax, -288(%ebp)
	movss	-288(%ebp), %xmm0
	movl	%edx, -288(%ebp)
	movss	-288(%ebp), %xmm1
	ucomiss	%xmm2, %xmm0
	jp	L1928
	je	L2738
L1928:
	movl	-284(%ebp), %eax
	movss	-268(%ebp), %xmm4
	movss	LC57, %xmm2
	movl	-256(%ebp), %ecx
	mulss	24(%eax), %xmm2
	movss	88(%eax), %xmm3
	minss	92(%eax), %xmm3
	mulss	%xmm3, %xmm2
	mulss	%xmm2, %xmm0
	mulss	%xmm2, %xmm1
	addss	19052(%eax), %xmm0
	movss	-248(%ebp), %xmm2
	addss	19056(%eax), %xmm1
	movss	%xmm0, 19052(%eax)
	movss	%xmm1, 19056(%eax)
	subss	72(%edi), %xmm4
	subss	80(%edi), %xmm4
	subss	68(%edi), %xmm2
	subss	76(%edi), %xmm2
	movb	$0, 19040(%eax)
	movb	$1, 18739(%eax)
	movaps	%xmm4, %xmm3
	cmpless	%xmm1, %xmm3
	andps	%xmm3, %xmm1
	andnps	%xmm4, %xmm3
	orps	%xmm1, %xmm3
	movaps	%xmm2, %xmm1
	cmpless	%xmm0, %xmm1
	movss	%xmm3, 19056(%eax)
	movss	%xmm3, -248(%ebp)
	andps	%xmm1, %xmm0
	andnps	%xmm2, %xmm1
	orps	%xmm1, %xmm0
	movss	%xmm0, 19052(%eax)
	movl	15136(%ecx), %eax
	movss	%xmm0, -268(%ebp)
	movl	%eax, -124(%ebp)
	movl	15140(%ecx), %eax
	movl	%eax, -120(%ebp)
	movl	15144(%ecx), %eax
	movl	%eax, -116(%ebp)
	movl	15148(%ecx), %eax
	movl	%eax, -112(%ebp)
	movss	15148(%ecx), %xmm1
	leal	-124(%ebp), %eax
	mulss	14404(%ecx), %xmm1
	movss	%xmm1, -112(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	xorps	%xmm2, %xmm2
	xorps	%xmm3, %xmm3
	xorps	%xmm0, %xmm0
	movl	%eax, -168(%ebp)
	cvttss2sil	-248(%ebp), %eax
	movl	$1, %edx
	cvtsi2ssl	%eax, %xmm2
	cvttss2sil	-268(%ebp), %eax
	cvtsi2ssl	%eax, %xmm3
	ucomiss	%xmm0, %xmm3
	setp	%al
	cmovne	%edx, %eax
	testb	%al, %al
	jne	L2205
	ucomiss	%xmm0, %xmm2
	setp	%al
	cmovne	%edx, %eax
	testb	%al, %al
	je	L1926
L2205:
	movaps	%xmm3, %xmm0
	movaps	%xmm2, %xmm1
	addss	84(%edi), %xmm0
	movl	%edi, %eax
	addss	88(%edi), %xmm1
	movss	%xmm3, -248(%ebp)
	movss	%xmm2, -256(%ebp)
	call	__ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2.isra.0
	movl	%eax, -224(%ebp)
	movl	-284(%ebp), %eax
	movl	%edx, -220(%ebp)
	movss	-224(%ebp), %xmm6
	movss	19052(%eax), %xmm0
	subss	-248(%ebp), %xmm0
	movss	-220(%ebp), %xmm3
	movss	%xmm6, -356(%ebp)
	movss	%xmm0, 19052(%eax)
	movss	19056(%eax), %xmm0
	subss	-256(%ebp), %xmm0
	movss	%xmm3, -360(%ebp)
	movss	%xmm0, 19056(%eax)
	jmp	L1926
L2203:
	movaps	%xmm7, %xmm5
	movss	-312(%ebp), %xmm7
	movss	%xmm7, -352(%ebp)
	jmp	L1890
L2722:
	movss	-324(%ebp), %xmm1
	movss	-296(%ebp), %xmm0
	movl	%edi, %eax
	call	__ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2.isra.0
	movl	%eax, -224(%ebp)
	movss	-224(%ebp), %xmm6
	xorl	%eax, %eax
	movl	%edx, -220(%ebp)
	xorl	%edx, %edx
	movss	%xmm6, -356(%ebp)
	movss	-220(%ebp), %xmm6
	movss	%xmm6, -360(%ebp)
	call	__ZN5ImGui11SetActiveIDEjP11ImGuiWindow
	movzbl	-352(%ebp), %eax
	movl	$0, -352(%ebp)
	movb	%al, -332(%ebp)
	movl	$32, %eax
	jmp	L1884
L1924:
	movl	-284(%ebp), %eax
	cmpb	$0, 3557(%eax)
	je	L1926
	movl	$515, %ecx
	movl	$514, %edx
	movl	$513, %eax
	movl	$516, (%esp)
	jmp	L2659
L2201:
	movss	-312(%ebp), %xmm7
	movss	LC12, %xmm1
	movaps	%xmm7, %xmm6
	movss	%xmm7, -352(%ebp)
	jmp	L1890
L1910:
	cmpl	$1, %ebx
	jne	L2657
L2171:
	movss	-312(%ebp), %xmm4
	movss	-248(%ebp), %xmm0
	movss	LC12, %xmm1
	movaps	%xmm4, %xmm3
	jmp	L1914
L2202:
	movss	LC12, %xmm7
	movss	-312(%ebp), %xmm6
	movaps	%xmm7, %xmm1
	jmp	L1892
L2738:
	ucomiss	%xmm2, %xmm1
	jp	L1928
	jne	L1928
	jmp	L1926
L2153:
	movzbl	-278(%ebp), %ecx
	movb	%cl, -332(%ebp)
	jmp	L1867
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__ZN5ImGui5BeginEPKcPbi.constprop.0.isra.0.cold;	.scl	3;	.type	32;	.endef
__ZN5ImGui5BeginEPKcPbi.constprop.0.isra.0.cold:
LFSB123:
L1851:
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	.cfi_escape 0x10,0x5,0x2,0x75,0
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_offset 7, -8
	movl	832, %eax
	ud2
	.cfi_endproc
LFE123:
	.text
	.section	.text.unlikely,"x"
LCOLDE61:
	.text
LHOTE61:
	.section .rdata,"dr"
LC63:
	.ascii "##Tooltip_%02d\0"
LC64:
	.ascii "...\0"
	.text
	.p2align 4
	.globl	__ZN5ImGui10SetTooltipEPKcz.constprop.0
	.def	__ZN5ImGui10SetTooltipEPKcz.constprop.0;	.scl	2;	.type	32;	.endef
__ZN5ImGui10SetTooltipEPKcz.constprop.0:
LFB172:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	%esi, 40(%esp)
	.cfi_offset 6, -16
	movl	_GImGui, %esi
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -20
	leal	60(%esp), %ebx
	movl	%edi, 44(%esp)
	movl	%ebx, 16(%esp)
	cmpb	$0, 19069(%esi)
	.cfi_offset 7, -12
	jne	L2740
	cmpb	$0, 19070(%esi)
	jne	L2740
L2741:
	movswl	23310(%esi), %eax
	movl	$LC63, 8(%esp)
	movl	$16, 4(%esp)
	movl	%eax, 12(%esp)
	leal	20(%esp), %eax
	movl	%eax, (%esp)
	call	__Z14ImFormatStringPcjPKcz
	movzbl	20(%esp), %ecx
	testb	%cl, %cl
	je	L2751
	leal	21(%esp), %edi
	movl	%ebp, 48(%esp)
	.cfi_offset 5, -8
	movl	$-1, %eax
	movzbl	(%edi), %edx
	cmpb	$35, %cl
	je	L2743
	.p2align 4
	.p2align 3
L2746:
	xorl	%eax, %ecx
	movl	%eax, %ebp
	movzbl	%cl, %ecx
	shrl	$8, %ebp
	movl	__ZL17GCrc32LookupTable.lto_priv.0(,%ecx,4), %eax
	xorl	%ebp, %eax
	testb	%dl, %dl
	je	L2758
	addl	$1, %edi
	movl	%edx, %ecx
L2759:
	movzbl	(%edi), %edx
	cmpb	$35, %cl
	jne	L2746
L2743:
	cmpb	$35, %dl
	jne	L2746
	cmpb	$35, 1(%edi)
	jne	L2746
	addl	$1, %edi
	movl	$-1885708032, %eax
	movl	%edx, %ecx
	jmp	L2759
	.p2align 4,,10
	.p2align 3
L2740:
	.cfi_restore 5
	movss	14608(%esi), %xmm0
	movss	LC14, %xmm1
	movl	$0x00000000, 18400(%esi)
	orl	$65, 18372(%esi)
	mulss	%xmm0, %xmm1
	movb	$1, 18432(%esi)
	mulss	LC15, %xmm0
	addss	3532(%esi), %xmm1
	movl	$0x00000000, 18404(%esi)
	addss	3528(%esi), %xmm0
	movl	$1, 18376(%esi)
	movss	%xmm1, 18396(%esi)
	movss	%xmm0, 18392(%esi)
	movss	LC62, %xmm0
	mulss	14700(%esi), %xmm0
	movss	%xmm0, 18460(%esi)
	jmp	L2741
	.p2align 4,,10
	.p2align 3
L2758:
	.cfi_offset 5, -8
	movl	48(%esp), %ebp
	.cfi_restore 5
	notl	%eax
L2742:
	movl	%eax, (%esp)
	movl	_GImGui, %edi
	leal	16124(%edi), %ecx
	call	__ZNK12ImGuiStorage10GetVoidPtrEj
	.cfi_def_cfa_offset 52
	subl	$4, %esp
	.cfi_def_cfa_offset 56
	testl	%eax, %eax
	je	L2749
	cmpb	$0, 223(%eax)
	jne	L2760
L2749:
	leal	20(%esp), %eax
	movl	$36438855, %edx
	call	__ZN5ImGui5BeginEPKcPbi.constprop.0.isra.0
	movl	%ebx, 4(%esp)
	movl	$LC64, (%esp)
	call	__ZN5ImGui5TextVEPKcPc
	call	__ZN5ImGui3EndEv
	movl	36(%esp), %ebx
	movl	40(%esp), %esi
	movl	44(%esp), %edi
	addl	$52, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2760:
	.cfi_restore_state
	movb	$1, 228(%eax)
	movb	$1, 230(%eax)
	movb	$1, 260(%eax)
	movzwl	23310(%esi), %eax
	addl	$1, %eax
	movw	%ax, 23310(%esi)
	cwtl
	movl	%eax, 12(%esp)
	leal	20(%esp), %eax
	movl	$LC63, 8(%esp)
	movl	$16, 4(%esp)
	movl	%eax, (%esp)
	call	__Z14ImFormatStringPcjPKcz
	jmp	L2749
	.p2align 4,,10
	.p2align 3
L2751:
	xorl	%eax, %eax
	jmp	L2742
	.cfi_endproc
LFE172:
	.p2align 4
	.globl	__ZN5ImGui10SetFocusIDEjP11ImGuiWindow
	.def	__ZN5ImGui10SetFocusIDEjP11ImGuiWindow;	.scl	2;	.type	32;	.endef
__ZN5ImGui10SetFocusIDEjP11ImGuiWindow:
LFB178:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	%eax, %ebx
	movl	%edx, %eax
	andl	$-16, %esp
	subl	$16, %esp
	movl	_GImGui, %edx
	cmpl	%eax, 18680(%edx)
	je	L2762
	movl	%edx, 8(%esp)
	movl	%eax, 12(%esp)
	call	__ZN5ImGui12SetNavWindowEP11ImGuiWindow
	movl	8(%esp), %edx
	movl	12(%esp), %eax
L2762:
	movl	384(%eax), %ecx
	movl	18280(%edx), %esi
	movl	%ebx, 18684(%edx)
	movl	%ecx, 18732(%edx)
	movl	%esi, 18688(%edx)
	movl	%ebx, 856(%eax,%ecx,4)
	cmpl	%ebx, 18312(%edx)
	jne	L2763
	movss	316(%eax), %xmm2
	movss	312(%eax), %xmm0
	sall	$4, %ecx
	movups	18340(%edx), %xmm1
	unpcklps	%xmm2, %xmm0
	movlhps	%xmm0, %xmm0
	subps	%xmm0, %xmm1
	movups	%xmm1, 864(%eax,%ecx)
L2763:
	cmpl	$5, 16256(%edx)
	je	L2767
	movb	$1, 18738(%edx)
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
L2767:
	.cfi_restore_state
	movb	$1, 18739(%edx)
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE178:
	.p2align 4
	.globl	__ZN5ImGui13ClearDragDropEv
	.def	__ZN5ImGui13ClearDragDropEv;	.scl	2;	.type	32;	.endef
__ZN5ImGui13ClearDragDropEv:
LFB179:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%edx, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	movl	_GImGui, %eax
	movw	%dx, 19137(%eax)
	movl	19192(%eax), %edx
	movb	$0, 19068(%eax)
	movl	$0, 19092(%eax)
	movl	$0, 19096(%eax)
	movl	$0, 19084(%eax)
	movl	$0, 19088(%eax)
	movl	$0, 19104(%eax)
	movl	$0, 19108(%eax)
	movl	$0, 19112(%eax)
	movl	$0, 19116(%eax)
	movl	$0, 19120(%eax)
	movl	$0, 19124(%eax)
	movl	$0, 19128(%eax)
	movl	$0, 19132(%eax)
	movb	$0, 19136(%eax)
	movl	$-1, 19100(%eax)
	movl	$0, 19160(%eax)
	movl	$0, 19168(%eax)
	movl	$0, 19172(%eax)
	movl	$0x7f7fffff, 19164(%eax)
	movl	$-1, 19176(%eax)
	testl	%edx, %edx
	je	L2769
	subl	$1, 188(%eax)
	movl	$0, 19184(%eax)
	movl	$0, 19188(%eax)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	8(%esp), %eax
	movl	$0, 19192(%eax)
L2769:
	movl	$0, 19196(%eax)
	movl	$0, 19200(%eax)
	movl	$0, 19204(%eax)
	movl	$0, 19208(%eax)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE179:
	.section .rdata,"dr"
LC65:
	.ascii "\0"
LC66:
	.ascii "%*s%.*s\0"
	.text
	.p2align 4
	.globl	__ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_
	.def	__ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_;	.scl	2;	.type	32;	.endef
__ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_:
LFB181:
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
	movl	%edx, %ebx
	subl	$36, %esp
	movl	%eax, 20(%esp)
L2787:
	movl	_GImGui, %edi
	movl	16148(%edi), %eax
	movss	23556(%edi), %xmm0
	addss	14468(%edi), %xmm0
	movl	23548(%edi), %edx
	movl	$0, 23548(%edi)
	addss	LC4, %xmm0
	movl	%eax, 32(%esp)
	movl	23552(%edi), %eax
	movl	$0, 23552(%edi)
	movl	%eax, 24(%esp)
	movl	20(%esp), %eax
	movss	4(%eax), %xmm1
	comiss	%xmm0, %xmm1
	jbe	L2798
	movss	%xmm1, 23556(%edi)
	movl	$LC45, (%esp)
	movl	%edx, 28(%esp)
	call	__ZN5ImGui7LogTextEPKcz
	movb	$1, 23560(%edi)
	movl	28(%esp), %edx
L2777:
	testl	%edx, %edx
	je	L2778
	movl	%edx, (%esp)
	movl	%edx, 28(%esp)
	call	_strlen
	movl	28(%esp), %edx
	leal	(%edx,%eax), %ecx
	movl	20(%esp), %eax
	call	__ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_
L2778:
	movl	32(%esp), %eax
	movl	23564(%edi), %edx
	movl	432(%eax), %eax
	cmpl	%eax, %edx
	jle	L2779
	movl	%eax, 23564(%edi)
	movl	%eax, %edx
L2779:
	subl	%edx, %eax
	movl	%edi, 32(%esp)
	movl	%ebx, %edi
	sall	$2, %eax
	movl	%eax, 28(%esp)
	.p2align 4
	.p2align 3
L2785:
	movl	%esi, %eax
	movl	$10, 4(%esp)
	subl	%edi, %eax
	movl	%edi, (%esp)
	movl	%eax, 8(%esp)
	call	_memchr
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L2788
	cmpl	%eax, %esi
	setne	%al
L2780:
	cmpl	%ebx, %edi
	jne	L2791
	testb	%al, %al
	jne	L2791
L2781:
	movl	24(%esp), %ebx
	testl	%ebx, %ebx
	je	L2774
	movl	%ebx, (%esp)
	call	_strlen
	leal	(%ebx,%eax), %esi
	jmp	L2787
	.p2align 4,,10
	.p2align 3
L2791:
	movl	32(%esp), %eax
	movl	%ebx, %ecx
	movl	$1, %edx
	subl	%edi, %ecx
	cmpb	$0, 23560(%eax)
	cmovne	28(%esp), %edx
	movl	%edi, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	$LC65, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$LC66, (%esp)
	call	__ZN5ImGui7LogTextEPKcz
	movl	32(%esp), %eax
	movb	$0, 23560(%eax)
	cmpb	$10, (%ebx)
	je	L2800
L2784:
	cmpl	%ebx, %esi
	je	L2781
	leal	1(%ebx), %edi
	jmp	L2785
	.p2align 4,,10
	.p2align 3
L2788:
	movl	%esi, %ebx
	xorl	%eax, %eax
	jmp	L2780
	.p2align 4,,10
	.p2align 3
L2800:
	movl	$LC45, (%esp)
	call	__ZN5ImGui7LogTextEPKcz
	movl	32(%esp), %eax
	movb	$1, 23560(%eax)
	jmp	L2784
	.p2align 4,,10
	.p2align 3
L2798:
	movss	%xmm1, 23556(%edi)
	jmp	L2777
	.p2align 4,,10
	.p2align 3
L2774:
	addl	$36, %esp
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
LFE181:
	.p2align 4
	.globl	__ZN5ImGui22DestroyPlatformWindowsEv
	.def	__ZN5ImGui22DestroyPlatformWindowsEv;	.scl	2;	.type	32;	.endef
__ZN5ImGui22DestroyPlatformWindowsEv:
LFB184:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	movl	%edi, -4(%ebp)
	.cfi_offset 7, -12
	movl	_GImGui, %edi
	movl	18608(%edi), %edx
	testl	%edx, %edx
	jle	L2801
	movl	%esi, -8(%ebp)
	movl	%edi, %edx
	.cfi_offset 6, -16
	xorl	%esi, %esi
	movl	%ebx, -12(%ebp)
	.cfi_offset 3, -20
	jmp	L2806
	.p2align 4,,10
	.p2align 3
L2815:
	movl	_GImGui, %edx
L2806:
	movl	18616(%edi), %eax
	movl	(%eax,%esi,4), %ebx
	cmpb	$0, 68(%ebx)
	je	L2803
	movl	14340(%edx), %eax
	testl	%eax, %eax
	je	L2804
	movl	%edx, 4(%esp)
	movl	%ebx, (%esp)
	call	*%eax
	movl	4(%esp), %edx
L2804:
	movl	14268(%edx), %eax
	testl	%eax, %eax
	je	L2805
	movl	%ebx, (%esp)
	call	*%eax
L2805:
	cmpl	$286331153, (%ebx)
	je	L2803
	movb	$0, 68(%ebx)
L2803:
	xorl	%eax, %eax
	movb	$0, 71(%ebx)
	addl	$1, %esi
	movl	$0, 60(%ebx)
	movl	$0, 52(%ebx)
	movl	$0, 56(%ebx)
	movw	%ax, 69(%ebx)
	cmpl	%esi, 18608(%edi)
	jg	L2815
	movl	-12(%ebp), %ebx
	.cfi_restore 3
	movl	-8(%ebp), %esi
	.cfi_restore 6
L2801:
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE184:
	.section .rdata,"dr"
	.align 4
LC67:
	.ascii "[docking] DockContextAddNode 0x%08X\12\0"
	.text
	.p2align 4
	.globl	__ZN5ImGuiL18DockContextAddNodeEP12ImGuiContextj.lto_priv.0
	.def	__ZN5ImGuiL18DockContextAddNodeEP12ImGuiContextj.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZN5ImGuiL18DockContextAddNodeEP12ImGuiContextj.lto_priv.0:
LFB186:
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
	leal	23376(%eax), %esi
	pushl	%ebx
	.cfi_offset 3, -20
	movl	%edx, %ebx
	subl	$8, %esp
	testl	%edx, %edx
	jne	L2818
	movl	$1, %ebx
	jmp	L2817
	.p2align 4,,10
	.p2align 3
L2819:
	addl	$1, %ebx
L2817:
	movl	%ebx, (%esp)
	movl	%esi, %ecx
	call	__ZNK12ImGuiStorage10GetVoidPtrEj
	subl	$4, %esp
	testl	%eax, %eax
	jne	L2819
L2818:
	testb	$64, 23576(%edi)
	jne	L2830
L2820:
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L2821
	addl	$1, 188(%eax)
L2821:
	movl	$0, 4(%esp)
	movl	$164, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	xorps	%xmm0, %xmm0
	movl	%esi, %ecx
	movzwl	156(%eax), %edx
	movups	%xmm0, 52(%eax)
	xorps	%xmm0, %xmm0
	movl	%eax, %edi
	movups	%xmm0, 4(%eax)
	andw	$-512, %dx
	movups	%xmm0, 112(%eax)
	movups	LC68, %xmm0
	orl	$9, %edx
	movl	$0, 104(%eax)
	movw	%dx, 156(%eax)
	movzwl	160(%eax), %edx
	movl	%ebx, (%eax)
	andw	$-2048, %dx
	movl	$0, 36(%eax)
	orl	$1, %edx
	movl	$0, 40(%eax)
	movl	$0, 44(%eax)
	movl	$0x00000000, 68(%eax)
	movl	$0x00000000, 72(%eax)
	movl	$0, 80(%eax)
	movl	$0, 88(%eax)
	movl	$0, 92(%eax)
	movl	$0, 96(%eax)
	movl	$0, 100(%eax)
	movl	$-1, 84(%eax)
	movb	$1, 105(%eax)
	movl	$0, 32(%eax)
	movl	$0, 24(%eax)
	movl	$0, 28(%eax)
	movl	$0, 48(%eax)
	movl	$-1, 76(%eax)
	movl	$0, 20(%eax)
	movl	$-1, 108(%eax)
	movl	$0, 144(%eax)
	movl	$0, 148(%eax)
	movl	$0, 152(%eax)
	movups	%xmm0, 128(%eax)
	movw	%dx, 160(%eax)
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	__ZN12ImGuiStorage10SetVoidPtrEjPv
	movl	%edi, %eax
	subl	$8, %esp
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
L2830:
	.cfi_restore_state
	movl	%ebx, 4(%esp)
	movl	$LC67, (%esp)
	call	__ZN5ImGui8DebugLogEPKcz
	jmp	L2820
	.cfi_endproc
LFE186:
	.section .rdata,"dr"
	.align 4
LC70:
	.ascii "[docking] DockContextProcessUndockWindow window '%s', clear_persistent_docking_ref = %d\12\0"
	.text
	.p2align 4
	.globl	__ZN5ImGui30DockContextProcessUndockWindowEP12ImGuiContextP11ImGuiWindowb.constprop.0.isra.0
	.def	__ZN5ImGui30DockContextProcessUndockWindowEP12ImGuiContextP11ImGuiWindowb.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
__ZN5ImGui30DockContextProcessUndockWindowEP12ImGuiContextP11ImGuiWindowb.constprop.0.isra.0:
LFB191:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%edx, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	testb	$64, %al
	jne	L2850
	movl	936(%ebx), %eax
	testl	%eax, %eax
	je	L2833
L2853:
	xorl	%ecx, %ecx
	movl	%ebx, %edx
	call	__ZN5ImGuiL20DockNodeRemoveWindowEP13ImGuiDockNodeP11ImGuiWindowj.lto_priv.0
L2834:
	movl	48(%ebx), %edx
	andb	$-8, 909(%ebx)
	movb	$0, 226(%ebx)
	movl	_GImGui, %eax
	movss	88(%ebx), %xmm0
	movss	84(%ebx), %xmm1
	testl	%edx, %edx
	je	L2835
	testb	$4, 15505(%eax)
	je	L2851
	movswl	104(%edx), %edx
	testl	%edx, %edx
	js	L2838
	cmpl	14356(%eax), %edx
	jl	L2852
L2838:
	leal	18640(%eax), %edx
L2839:
	movss	LC71, %xmm2
	movss	28(%edx), %xmm3
	mulss	%xmm2, %xmm3
	mulss	24(%edx), %xmm2
	cvttss2sil	%xmm3, %ecx
	xorps	%xmm3, %xmm3
	cvttss2sil	%xmm2, %edx
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%ecx, %xmm3
	cvtsi2ssl	%edx, %xmm2
	minss	%xmm3, %xmm0
	minss	%xmm2, %xmm1
L2835:
	movss	%xmm0, 88(%ebx)
	movl	88(%ebx), %ecx
	xorps	%xmm0, %xmm0
	movss	%xmm1, 84(%ebx)
	movl	84(%ebx), %edx
	movl	%ecx, 80(%ebx)
	movl	%edx, 76(%ebx)
	comiss	23424(%eax), %xmm0
	jb	L2831
	movss	28(%eax), %xmm0
	movss	%xmm0, 23424(%eax)
L2831:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2851:
	.cfi_restore_state
	movss	LC71, %xmm2
	movss	36(%edx), %xmm3
	mulss	%xmm2, %xmm3
	mulss	32(%edx), %xmm2
	cvttss2sil	%xmm3, %ecx
	xorps	%xmm3, %xmm3
	cvttss2sil	%xmm2, %edx
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%ecx, %xmm3
	cvtsi2ssl	%edx, %xmm2
	minss	%xmm3, %xmm0
	minss	%xmm2, %xmm1
	jmp	L2835
	.p2align 4,,10
	.p2align 3
L2850:
	movl	$1, 8(%esp)
	movl	4(%edx), %eax
	movl	$LC70, (%esp)
	movl	%eax, 4(%esp)
	call	__ZN5ImGui8DebugLogEPKcz
	movl	936(%ebx), %eax
	testl	%eax, %eax
	jne	L2853
L2833:
	movl	$0, 944(%ebx)
	jmp	L2834
	.p2align 4,,10
	.p2align 3
L2852:
	leal	(%edx,%edx,8), %ecx
	movl	14364(%eax), %edx
	leal	(%edx,%ecx,4), %edx
	jmp	L2839
	.cfi_endproc
LFE191:
	.align 2
	.p2align 4
	.globl	__ZN13ImGuiDockNodeD2Ev
	.def	__ZN13ImGuiDockNodeD2Ev;	.scl	2;	.type	32;	.endef
__ZN13ImGuiDockNodeD2Ev:
LFB193:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	movl	%ecx, %ebx
	subl	$12, %esp
	movl	48(%ecx), %eax
	testl	%eax, %eax
	je	L2855
	movl	140(%eax), %edx
	testl	%edx, %edx
	je	L2856
	movl	_GImGui, %ecx
	testl	%ecx, %ecx
	je	L2857
	subl	$1, 188(%ecx)
L2857:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	8(%esp), %eax
L2856:
	movl	8(%eax), %edx
	testl	%edx, %edx
	je	L2858
	movl	_GImGui, %ecx
	testl	%ecx, %ecx
	je	L2859
	subl	$1, 188(%ecx)
L2859:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	8(%esp), %eax
L2858:
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2860
	subl	$1, 188(%edx)
L2860:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2855:
	movl	44(%ebx), %eax
	movl	$0, 48(%ebx)
	movl	$0, 28(%ebx)
	movl	$0, 32(%ebx)
	testl	%eax, %eax
	je	L2854
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2862
	subl	$1, 188(%edx)
L2862:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2854:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE193:
	.globl	__ZN13ImGuiDockNodeD1Ev
	.def	__ZN13ImGuiDockNodeD1Ev;	.scl	2;	.type	32;	.endef
	.set	__ZN13ImGuiDockNodeD1Ev,__ZN13ImGuiDockNodeD2Ev
	.section .rdata,"dr"
	.align 4
LC72:
	.ascii "[docking] DockContextRemoveNode 0x%08X\12\0"
	.align 4
LC73:
	.ascii "[docking] DockNodeTreeMerge: 0x%08X + 0x%08X back into parent 0x%08X\12\0"
	.text
	.p2align 4
	.globl	__ZN5ImGuiL21DockContextRemoveNodeEP12ImGuiContextP13ImGuiDockNodeb.lto_priv.0
	.def	__ZN5ImGuiL21DockContextRemoveNodeEP12ImGuiContextP13ImGuiDockNodeb.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZN5ImGuiL21DockContextRemoveNodeEP12ImGuiContextP13ImGuiDockNodeb.lto_priv.0:
LFB196:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	movl	%ecx, %edi
	pushl	%esi
	.cfi_offset 6, -16
	movl	%edx, %esi
	pushl	%ebx
	subl	$44, %esp
	.cfi_offset 3, -20
	movl	%eax, -24(%ebp)
	testb	$64, 23576(%eax)
	jne	L2956
L2889:
	movl	112(%esi), %eax
	testl	%eax, %eax
	je	L2890
	movl	$0, 940(%eax)
L2890:
	movl	24(%esi), %ebx
	testl	%ebx, %ebx
	je	L2894
	movl	%edi, %eax
	testb	%al, %al
	je	L2957
	movl	32(%ebx), %eax
	movl	28(%ebx), %edi
	movl	%eax, %ecx
	movl	%eax, -20(%ebp)
	movl	_GImGui, %eax
	cmpl	%esi, %edi
	cmovne	%edi, %ecx
	testb	$64, 23576(%eax)
	je	L2896
	movl	-20(%ebp), %eax
	movl	(%ebx), %esi
	xorl	%edx, %edx
	testl	%eax, %eax
	je	L2897
	movl	(%eax), %edx
L2897:
	xorl	%eax, %eax
	testl	%edi, %edi
	je	L2898
	movl	(%edi), %eax
L2898:
	movl	%ecx, -16(%ebp)
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC73, (%esp)
	call	__ZN5ImGui8DebugLogEPKcz
	movl	-16(%ebp), %ecx
L2896:
	movl	28(%ecx), %edx
	movss	68(%ebx), %xmm0
	movss	72(%ebx), %xmm1
	movl	%edx, 28(%ebx)
	movl	32(%ecx), %eax
	movss	%xmm0, -28(%ebp)
	movl	%eax, 32(%ebx)
	movss	%xmm1, -32(%ebp)
	testl	%edx, %edx
	je	L2899
	movl	%ebx, 24(%edx)
	movl	32(%ebx), %eax
L2899:
	testl	%eax, %eax
	je	L2900
	movl	%ebx, 24(%eax)
L2900:
	movl	76(%ecx), %eax
	movl	%eax, 76(%ebx)
	movl	68(%ecx), %eax
	movl	72(%ecx), %edx
	movl	%eax, 68(%ebx)
	movl	%edx, 72(%ebx)
	movl	$0, 28(%ecx)
	movl	$0, 32(%ecx)
	testl	%edi, %edi
	je	L2901
	movl	%edi, %edx
	movl	%ebx, %eax
	movl	%ecx, -16(%ebp)
	call	__ZN5ImGuiL19DockNodeMoveWindowsEP13ImGuiDockNodeS1_.lto_priv.0
	movl	(%ebx), %edx
	movl	(%edi), %eax
	call	__ZN5ImGuiL32DockSettingsRenameNodeReferencesEjj.lto_priv.0
	movl	-16(%ebp), %ecx
L2901:
	movl	-20(%ebp), %esi
	testl	%esi, %esi
	je	L2902
	movl	%esi, %edx
	movl	%ebx, %eax
	movl	%ecx, -16(%ebp)
	call	__ZN5ImGuiL19DockNodeMoveWindowsEP13ImGuiDockNodeS1_.lto_priv.0
	movl	(%ebx), %edx
	movl	(%esi), %eax
	call	__ZN5ImGuiL32DockSettingsRenameNodeReferencesEjj.lto_priv.0
	movl	-16(%ebp), %ecx
L2902:
	movl	36(%ebx), %eax
	testl	%eax, %eax
	jle	L2903
	leal	52(%ebx), %eax
	movl	%ecx, -40(%ebp)
	xorl	%esi, %esi
	movl	%eax, -16(%ebp)
	movl	%edi, -36(%ebp)
	leal	60(%ebx), %edi
	.p2align 4
	.p2align 3
L2904:
	movl	44(%ebx), %eax
	movl	-16(%ebp), %edx
	movl	$1, %ecx
	movl	(%eax,%esi,4), %eax
	call	__ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i
	movl	44(%ebx), %eax
	movl	$1, %ecx
	movl	%edi, %edx
	movl	(%eax,%esi,4), %eax
	addl	$1, %esi
	call	__ZN5ImGui13SetWindowSizeEP11ImGuiWindowRK6ImVec2i
	cmpl	36(%ebx), %esi
	jl	L2904
	movl	-36(%ebp), %edi
	movl	-40(%ebp), %ecx
L2903:
	andw	$-512, 156(%ebx)
	movl	116(%ecx), %eax
	movss	-28(%ebp), %xmm2
	movss	-32(%ebp), %xmm3
	movl	%eax, 116(%ebx)
	movl	8(%ebx), %eax
	movl	4(%ebx), %ecx
	movss	%xmm2, 68(%ebx)
	andl	$-12712049, %eax
	movss	%xmm3, 72(%ebx)
	movl	%eax, 8(%ebx)
	testl	%edi, %edi
	je	L2958
	movl	8(%edi), %edx
	movl	-20(%ebp), %esi
	andl	$12712048, %edx
	orl	%eax, %edx
	movl	%edx, 8(%ebx)
	testl	%esi, %esi
	je	L2909
	movl	8(%esi), %eax
	movl	%eax, -16(%ebp)
	andl	$12712048, %eax
	orl	%eax, %edx
	movl	%edx, 8(%ebx)
	movl	12(%edi), %eax
	orl	12(%esi), %eax
	movl	%eax, 12(%ebx)
	orl	%ecx, %eax
	orl	%edx, %eax
	movl	%eax, 16(%ebx)
	movl	-24(%ebp), %ebx
	movl	$0, 4(%esp)
	movl	(%edi), %eax
	addl	$23376, %ebx
	movl	%eax, (%esp)
	movl	%ebx, %ecx
	call	__ZN12ImGuiStorage10SetVoidPtrEjPv
	movl	%edi, %ecx
	subl	$8, %esp
	call	__ZN13ImGuiDockNodeD1Ev
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L2955
	subl	$1, 188(%eax)
L2955:
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2907:
	movl	$0, 4(%esp)
	movl	-20(%ebp), %edi
	movl	%ebx, %ecx
	movl	(%edi), %eax
	movl	%eax, (%esp)
	call	__ZN12ImGuiStorage10SetVoidPtrEjPv
	movl	%edi, %ecx
	subl	$8, %esp
	call	__ZN13ImGuiDockNodeD1Ev
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L2913
	subl	$1, 188(%eax)
L2913:
	movl	$0, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
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
L2957:
	.cfi_restore_state
	testl	%ebx, %ebx
	je	L2894
	cmpl	28(%ebx), %esi
	je	L2959
L2914:
	cmpl	%esi, 32(%ebx)
	je	L2960
L2894:
	movl	-24(%ebp), %ecx
	movl	$0, 4(%esp)
	movl	(%esi), %eax
	addl	$23376, %ecx
	movl	%eax, (%esp)
	call	__ZN12ImGuiStorage10SetVoidPtrEjPv
	movl	%esi, %ecx
	subl	$8, %esp
	call	__ZN13ImGuiDockNodeD1Ev
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L2915
	subl	$1, 188(%eax)
L2915:
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2888:
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
L2956:
	.cfi_restore_state
	movl	(%edx), %eax
	movl	$LC72, (%esp)
	movl	%eax, 4(%esp)
	call	__ZN5ImGui8DebugLogEPKcz
	jmp	L2889
	.p2align 4,,10
	.p2align 3
L2958:
	movl	-20(%ebp), %edi
	testl	%edi, %edi
	je	L2906
	movl	8(%edi), %edx
	movl	%edx, -16(%ebp)
	andl	$12712048, %edx
	orl	%eax, %edx
	movl	%edx, 8(%ebx)
	movl	12(%edi), %eax
	movl	%eax, 12(%ebx)
	orl	%ecx, %eax
	orl	%edx, %eax
	movl	%eax, 16(%ebx)
	movl	-24(%ebp), %eax
	leal	23376(%eax), %ebx
	jmp	L2907
	.p2align 4,,10
	.p2align 3
L2960:
	movl	24(%esi), %eax
	movl	$0, 32(%eax)
	jmp	L2894
	.p2align 4,,10
	.p2align 3
L2909:
	movl	12(%edi), %eax
	movl	%eax, 12(%ebx)
	orl	%ecx, %eax
	movl	-24(%ebp), %ecx
	orl	%edx, %eax
	movl	%eax, 16(%ebx)
	addl	$23376, %ecx
	movl	$0, 4(%esp)
	movl	(%edi), %eax
	movl	%eax, (%esp)
	call	__ZN12ImGuiStorage10SetVoidPtrEjPv
	movl	%edi, %ecx
	subl	$8, %esp
	call	__ZN13ImGuiDockNodeD1Ev
	movl	_GImGui, %eax
	testl	%eax, %eax
	jne	L2961
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	jmp	L2888
	.p2align 4,,10
	.p2align 3
L2959:
	movl	$0, 28(%ebx)
	jmp	L2914
	.p2align 4,,10
	.p2align 3
L2961:
	subl	$1, 188(%eax)
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	jmp	L2888
L2906:
	orl	%ecx, %eax
	movl	$0, 12(%ebx)
	movl	%eax, 16(%ebx)
	jmp	L2888
	.cfi_endproc
LFE196:
	.set	LC0,LC22
	.section .rdata,"dr"
	.align 16
LC2:
	.long	1
	.long	3
	.long	2
	.long	0
	.align 4
LC3:
	.long	1073741824
	.align 4
LC4:
	.long	1065353216
	.align 4
LC5:
	.long	-1082130432
	.align 4
LC6:
	.long	1045220557
	.align 4
LC7:
	.long	1061997773
	.align 4
LC8:
	.long	1148846080
	.align 4
LC10:
	.long	-931528704
	.align 4
LC11:
	.long	1082130432
	.set	LC12,LC51
	.align 16
LC13:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 4
LC14:
	.long	1090519040
	.align 4
LC15:
	.long	1098907648
	.align 4
LC16:
	.long	1103101952
	.align 4
LC17:
	.long	981668463
	.align 4
LC18:
	.long	1056964608
	.set	LC21,LC68+8
	.align 16
LC22:
	.long	2139095039
	.long	2139095039
	.long	0
	.long	0
	.align 4
LC44:
	.long	1060320051
	.align 4
LC48:
	.long	1114636288
	.align 4
LC50:
	.long	925353388
	.align 16
LC51:
	.long	-8388609
	.long	-8388609
	.long	2139095039
	.long	2139095039
	.align 4
LC52:
	.long	1066192077
	.align 4
LC53:
	.long	1068289229
	.align 4
LC54:
	.long	1061158912
	.align 4
LC56:
	.long	1025758986
	.align 4
LC57:
	.long	1142292480
	.align 4
LC59:
	.long	1059481190
	.align 4
LC62:
	.long	1058642330
	.align 16
LC68:
	.long	0
	.long	-1
	.long	-1
	.long	-1
	.align 4
LC71:
	.long	1063675494
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	__ZL11FreeWrapperPvS_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui8DebugLogEPKcz;	.scl	2;	.type	32;	.endef
	.def	__ZL13MallocWrapperjPv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_memmove;	.scl	2;	.type	32;	.endef
	.def	__ZNK12ImGuiStorage10GetVoidPtrEj;	.scl	2;	.type	32;	.endef
	.def	__ZL19ApplyWindowSettingsP11ImGuiWindowP19ImGuiWindowSettings.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN15ImGuiTextBuffer8appendfvEPKcPc;	.scl	2;	.type	32;	.endef
	.def	_fwrite;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	__Z9ImHashStrPKcjj;	.scl	2;	.type	32;	.endef
	.def	__ZN15ImGuiTextBuffer7appendfEPKcz;	.scl	2;	.type	32;	.endef
	.def	__ZN15ImGuiTextBuffer6appendEPKcS1_.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui15DebugHookIdInfoEjiPKvS1_.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui34DebugLocateItemResolveWithLastItemEv;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList7AddLineERK6ImVec2S2_jf.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZL16SetCurrentWindowP11ImGuiWindow.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui11PopClipRectEv;	.scl	2;	.type	32;	.endef
	.def	__ZN18ImDrawListSplitter5MergeEP10ImDrawList.part.0;	.scl	2;	.type	32;	.endef
	.def	_fflush;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui11SetActiveIDEjP11ImGuiWindow;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGuiL20DockNodeRemoveWindowEP13ImGuiDockNodeP11ImGuiWindowj.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui11BeginDockedEP11ImGuiWindowPb.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui30UpdateWindowParentAndRootLinksEP11ImGuiWindowiS1_;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList17_ResetForNewFrameEv;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	__ZN18ImDrawListSplitter5SplitEP10ImDrawListi.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui12PushClipRectERK6ImVec2S2_b;	.scl	2;	.type	32;	.endef
	.def	__ZL21CalcWindowAutoFitSizeP11ImGuiWindowRK6ImVec2.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList13PushTextureIDEPv;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN11ImGuiWindowC1EP12ImGuiContextPKc;	.scl	2;	.type	32;	.endef
	.def	__ZN12ImGuiStorage10SetVoidPtrEjPv;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN11ImGuiWindow5GetIDEi;	.scl	2;	.type	32;	.endef
	.def	__ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZL19GetResizeBorderRectP11ImGuiWindowiff.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui27BeginDockableDragDropSourceEP11ImGuiWindow;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui27BeginDockableDragDropTargetEP11ImGuiWindow;	.scl	2;	.type	32;	.endef
	.def	__Z14ImFormatStringPcjPKcz;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui5TextVEPKcPc;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGuiL19DockNodeMoveWindowsEP13ImGuiDockNodeS1_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGuiL32DockSettingsRenameNodeReferencesEjj.lto_priv.0;	.scl	2;	.type	32;	.endef
