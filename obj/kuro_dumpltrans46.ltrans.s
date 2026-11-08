	.file	"<artificial>"
	.text
	.p2align 4
	.def	__ZN5ImGuiL33DockNodeUpdateHasCentralNodeChildEP13ImGuiDockNode;	.scl	3;	.type	32;	.endef
__ZN5ImGuiL33DockNodeUpdateHasCentralNodeChildEP13ImGuiDockNode:
LFB0:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	andb	$-33, 160(%eax)
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	L2
	call	__ZN5ImGuiL33DockNodeUpdateHasCentralNodeChildEP13ImGuiDockNode
L2:
	movl	32(%ebx), %eax
	testl	%eax, %eax
	je	L3
	call	__ZN5ImGuiL33DockNodeUpdateHasCentralNodeChildEP13ImGuiDockNode
L3:
	movl	24(%ebx), %eax
	testl	%eax, %eax
	je	L18
L1:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L18:
	.cfi_restore_state
	movl	120(%ebx), %eax
	testl	%eax, %eax
	je	L1
	.p2align 4
	.p2align 4
	.p2align 3
L5:
	orb	$32, 160(%eax)
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	L5
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE0:
	.p2align 4
	.def	__ZN5ImGuiL25DockNodeUpdateVisibleFlagEP13ImGuiDockNode;	.scl	3;	.type	32;	.endef
__ZN5ImGuiL25DockNodeUpdateVisibleFlagEP13ImGuiDockNode:
LFB3:
	.cfi_startproc
	movl	%eax, %edx
	movl	16(%eax), %eax
	movl	%eax, %ecx
	shrl	$10, %eax
	shrl	$11, %ecx
	andl	$1, %eax
	andl	$1, %ecx
	cmpl	$0, 24(%edx)
	cmove	%eax, %ecx
	movl	36(%edx), %eax
	testl	%eax, %eax
	setg	%al
	orl	%ecx, %eax
	movl	28(%edx), %ecx
	testl	%ecx, %ecx
	je	L22
	movzbl	160(%ecx), %ecx
	andl	$1, %ecx
	orl	%ecx, %eax
L22:
	movl	32(%edx), %ecx
	testl	%ecx, %ecx
	je	L23
	movzbl	160(%ecx), %ecx
	andl	$1, %ecx
	orl	%ecx, %eax
L23:
	movzbl	160(%edx), %ecx
	andl	$1, %eax
	andl	$-2, %ecx
	orl	%ecx, %eax
	movb	%al, 160(%edx)
	ret
	.cfi_endproc
LFE3:
	.p2align 4
	.def	__ZL24DockNodeIsDropAllowedOneP11ImGuiWindowS0_;	.scl	3;	.type	32;	.endef
__ZL24DockNodeIsDropAllowedOneP11ImGuiWindowS0_:
LFB4:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	%ebx, (%esp)
	.cfi_offset 3, -12
	movl	%eax, %ebx
	movl	940(%edx), %eax
	testl	%eax, %eax
	je	L31
	testb	$4, 17(%eax)
	jne	L58
L32:
	addl	$80, %eax
L34:
	movl	(%eax), %edx
	movl	20(%ebx), %ecx
	cmpl	%ecx, %edx
	je	L35
	testl	%edx, %edx
	je	L36
	testl	%ecx, %ecx
	sete	%dl
	andb	25(%eax), %dl
	movl	%edx, %eax
L30:
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L58:
	.cfi_restore_state
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	movzwl	242(%edx), %esi
	cmpw	%si, 242(%ebx)
	movl	4(%esp), %esi
	.cfi_restore 6
	jge	L32
L37:
	xorl	%eax, %eax
L60:
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L36:
	.cfi_restore_state
	testl	%ecx, %ecx
	je	L37
	movzbl	45(%ebx), %eax
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L35:
	.cfi_restore_state
	movl	_GImGui, %edx
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	movl	18580(%edx), %eax
	movl	%eax, %esi
	subl	$1, %esi
	js	L42
	movl	18588(%edx), %edx
	leal	(%eax,%eax,4), %eax
	leal	-36(%edx,%eax,8), %ecx
	.p2align 4
	.p2align 3
L41:
	movl	(%ecx), %edx
	testl	%edx, %edx
	je	L39
	cmpl	832(%ebx), %edx
	je	L57
	movl	%ebx, %eax
	jmp	L40
	.p2align 4
	.p2align 4,,10
	.p2align 3
L59:
	movl	828(%eax), %eax
	testl	%eax, %eax
	je	L39
L40:
	cmpl	%eax, %edx
	jne	L59
L57:
	movl	4(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	xorl	%eax, %eax
	jmp	L60
	.p2align 4,,10
	.p2align 3
L39:
	.cfi_restore_state
	subl	$1, %esi
	subl	$40, %ecx
	cmpl	$-1, %esi
	jne	L41
L42:
	movl	4(%esp), %esi
	.cfi_restore 6
	movl	$1, %eax
	jmp	L30
	.p2align 4,,10
	.p2align 3
L31:
	leal	20(%edx), %eax
	jmp	L34
	.cfi_endproc
LFE4:
	.p2align 4
	.def	__ZN5ImGuiL24DockNodePreviewDockSetupEP11ImGuiWindowP13ImGuiDockNodeS1_S3_P20ImGuiDockPreviewDatabb.constprop.0;	.scl	3;	.type	32;	.endef
__ZN5ImGuiL24DockNodePreviewDockSetupEP11ImGuiWindowP13ImGuiDockNodeS1_S3_P20ImGuiDockPreviewDatabb.constprop.0:
LFB7:
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
	movl	%edx, %esi
	pushl	%ebx
	.cfi_offset 3, -20
	movl	%eax, %ebx
	andl	$-16, %esp
	subl	$64, %esp
	movl	_GImGui, %edi
	movl	8(%ebp), %eax
	movl	%ecx, 12(%esp)
	movl	%edi, 20(%esp)
	movl	940(%ecx), %edi
	testl	%edx, %edx
	je	L62
	testb	$1, 160(%edx)
	je	L64
	testl	%edi, %edi
	je	L69
	movl	16(%edi), %ecx
	movl	%edx, 16(%esp)
	movl	16(%esi), %edx
	movb	$1, 165(%eax)
	movl	%ecx, 8(%esp)
	cmpb	$0, 16(%ebp)
	je	L279
	.p2align 4
	.p2align 3
L92:
	movb	$0, 165(%eax)
L80:
	movb	$1, 166(%eax)
	testb	$16, %dl
	jne	L96
	movl	20(%esp), %ecx
	cmpb	$0, 96(%ecx)
	jne	L96
	movl	8(%esp), %edi
	andl	$131072, %edx
	andl	$262144, %edi
	cmpb	$1, 16(%ebp)
	je	L99
	testl	%esi, %esi
	je	L99
	movl	24(%esi), %ecx
	testl	%ecx, %ecx
	je	L280
	orl	%edx, %edi
	je	L101
L102:
	movb	$0, 166(%eax)
	jmp	L101
	.p2align 4
	.p2align 4,,10
	.p2align 3
L64:
	movl	%edx, %ecx
	movl	24(%edx), %edx
	testl	%edx, %edx
	jne	L64
	movl	%ecx, 16(%esp)
	testl	%edi, %edi
	je	L71
	movl	16(%edi), %ecx
	movl	%ecx, 8(%esp)
L70:
	movl	16(%esi), %edx
	movb	$1, 165(%eax)
	cmpb	$0, 16(%ebp)
	jne	L92
L279:
	testl	$65536, %edx
	jne	L92
	testb	$4, %dl
	je	L81
	testb	$8, 17(%esi)
	jne	L92
L81:
	movl	28(%esi), %ecx
	testl	%ecx, %ecx
	je	L281
L83:
	testl	%edi, %edi
	jne	L75
	testl	$524288, %edx
	jne	L92
	testb	$16, 10(%esp)
	je	L78
L87:
	movl	28(%esi), %ecx
	testl	%ecx, %ecx
	jne	L92
	movl	36(%esi), %edi
	testl	%edi, %edi
	jne	L92
L85:
	testb	$32, 10(%esp)
	je	L80
	jmp	L92
	.p2align 4,,10
	.p2align 3
L99:
	orl	%edx, %edi
	je	L98
	.p2align 4
	.p2align 3
L96:
	movb	$0, 166(%eax)
L98:
	testl	%esi, %esi
	je	L103
L101:
	movzbl	160(%esi), %edx
	shrb	$3, %dl
	andl	$1, %edx
	je	L104
	movzbl	160(%eax), %edi
	orl	$8, %edi
	movl	%edi, %ecx
	movb	%cl, 160(%eax)
L105:
	andl	$1, %edx
	andl	$-17, %edi
	sall	$4, %edx
	orl	%edi, %edx
	movb	%dl, 160(%eax)
	movl	16(%esp), %edi
	testl	%edi, %edi
	je	L107
	movl	52(%edi), %edx
	movl	56(%edi), %ecx
	movl	%edx, 52(%eax)
	movl	%ecx, 56(%eax)
	movl	60(%edi), %edx
	movl	64(%edi), %ecx
	movl	%edx, 60(%eax)
	movl	%ecx, 64(%eax)
L108:
	movl	%esi, 168(%eax)
	movl	$-1, 172(%eax)
	movb	$0, 167(%eax)
	cmpb	$0, 226(%ebx)
	je	L282
L109:
	movzbl	165(%eax), %edx
	movb	%dl, 164(%eax)
	cmpb	$0, 12(%ebp)
	jne	L277
	cmpb	$0, 167(%eax)
	jne	L277
	movl	20(%esp), %esi
	cmpb	$0, 97(%esi)
	je	L283
L277:
	movl	$0x00000000, 176(%eax)
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
L282:
	.cfi_restore_state
	movl	_GImGui, %esi
	cmpb	$0, 16(%ebp)
	movl	%esi, 16(%esp)
	jne	L110
	cmpb	$0, 165(%eax)
	je	L284
	leal	180(%eax), %ecx
	movl	$-1, %esi
	movl	$-1, %edx
L144:
	movss	52(%eax), %xmm5
	movss	60(%eax), %xmm1
	movss	56(%eax), %xmm2
	addss	64(%eax), %xmm2
	addss	%xmm5, %xmm1
	movl	16(%esp), %ebx
	movss	LC3, %xmm6
	movaps	%xmm2, %xmm4
	subss	56(%eax), %xmm4
	addss	56(%eax), %xmm2
	movaps	%xmm1, %xmm0
	addss	%xmm5, %xmm1
	subss	%xmm5, %xmm0
	xorps	%xmm5, %xmm5
	mulss	%xmm6, %xmm2
	mulss	%xmm6, %xmm1
	movaps	%xmm0, %xmm3
	minss	%xmm4, %xmm3
	movss	15516(%ebx), %xmm4
	mulss	LC2, %xmm3
	movaps	%xmm4, %xmm7
	mulss	%xmm6, %xmm7
	mulss	LC4, %xmm4
	movaps	%xmm3, %xmm0
	cmpless	%xmm7, %xmm0
	andps	%xmm0, %xmm7
	andnps	%xmm3, %xmm0
	xorps	%xmm3, %xmm3
	orps	%xmm7, %xmm0
	movaps	%xmm4, %xmm7
	minss	%xmm0, %xmm7
	xorps	%xmm0, %xmm0
	cvttss2sil	%xmm7, %edi
	mulss	LC5, %xmm7
	cvtsi2ssl	%edi, %xmm3
	cvttss2sil	%xmm7, %edi
	movss	LC6, %xmm7
	mulss	%xmm3, %xmm7
	movaps	%xmm3, %xmm4
	cvtsi2ssl	%edi, %xmm0
	cvttss2sil	%xmm7, %edi
	xorps	%xmm7, %xmm7
	unpcklps	%xmm0, %xmm4
	unpcklps	%xmm3, %xmm0
	movlhps	%xmm4, %xmm4
	movlhps	%xmm0, %xmm0
	cvtsi2ssl	%edi, %xmm7
	cvttss2sil	%xmm2, %edi
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%edi, %xmm2
	cvttss2sil	%xmm1, %edi
	cvtsi2ssl	%edi, %xmm5
	leal	1(%esi), %edi
	cmpl	$4, %edi
	ja	L126
	jmp	*L122(,%edi,4)
	.section .rdata,"dr"
	.align 4
L122:
	.long	L125
	.long	L115
	.long	L124
	.long	L123
	.long	L121
	.text
	.p2align 4,,10
	.p2align 3
L104:
	movl	12(%esp), %ecx
	movzbl	233(%ecx), %ecx
	movb	%cl, 8(%esp)
	movl	%ecx, %edx
	movzbl	160(%eax), %edi
	andl	$1, %edx
	sall	$3, %edx
	andl	$-9, %edi
	orl	%edx, %edi
	movl	$1, %edx
	movl	%edi, %ecx
	movb	%cl, 160(%eax)
	jmp	L105
	.p2align 4,,10
	.p2align 3
L103:
	movzbl	233(%ebx), %edx
	testb	%dl, %dl
	je	L285
L106:
	movzbl	160(%eax), %edi
	andl	$1, %edx
	sall	$3, %edx
	andl	$-9, %edi
	orl	%edx, %edi
	movl	%edi, %ecx
	movb	%cl, 160(%eax)
	movzbl	12(%ebx), %edx
	shrb	$5, %dl
	andl	$1, %edx
	xorl	$1, %edx
	jmp	L105
	.p2align 4,,10
	.p2align 3
L62:
	movl	40(%ebx), %edx
	testl	%edi, %edi
	je	L66
	movl	16(%edi), %ecx
	movb	$1, 165(%eax)
	movl	%ecx, 8(%esp)
	cmpb	$0, 16(%ebp)
	jne	L203
	movl	$0, 16(%esp)
	testl	$65536, %edx
	jne	L92
L75:
	movl	28(%edi), %ecx
	testl	%ecx, %ecx
	je	L88
	movl	124(%edi), %edi
	testl	%edi, %edi
	je	L92
L88:
	testl	$524288, %edx
	jne	L92
	testb	$16, 10(%esp)
	je	L78
	testl	%esi, %esi
	jne	L87
	jmp	L92
	.p2align 4,,10
	.p2align 3
L107:
	movl	68(%ebx), %edx
	movl	72(%ebx), %ecx
	movl	%edx, 52(%eax)
	movl	%ecx, 56(%eax)
	movl	76(%ebx), %edx
	movl	80(%ebx), %ecx
	movl	%edx, 60(%eax)
	movl	%ecx, 64(%eax)
	jmp	L108
	.p2align 4,,10
	.p2align 3
L110:
	cmpb	$0, 165(%eax)
	je	L286
	leal	180(%eax), %edx
	movl	$-1, %ecx
	movl	$-1, %esi
L172:
	movss	52(%eax), %xmm5
	addss	60(%eax), %xmm5
	movss	56(%eax), %xmm6
	addss	64(%eax), %xmm6
	movl	16(%esp), %ebx
	movaps	%xmm5, %xmm2
	subss	52(%eax), %xmm2
	addss	52(%eax), %xmm5
	movaps	%xmm6, %xmm3
	subss	56(%eax), %xmm3
	movss	15516(%ebx), %xmm7
	movss	%xmm6, 8(%esp)
	movss	LC3, %xmm6
	movaps	%xmm2, %xmm1
	movaps	%xmm7, %xmm4
	minss	%xmm3, %xmm1
	mulss	%xmm6, %xmm4
	mulss	LC2, %xmm1
	mulss	%xmm6, %xmm3
	mulss	%xmm6, %xmm2
	mulss	%xmm6, %xmm5
	movaps	%xmm1, %xmm0
	cmpnless	%xmm4, %xmm0
	andps	%xmm0, %xmm1
	andnps	%xmm4, %xmm0
	movss	8(%esp), %xmm4
	addss	56(%eax), %xmm4
	orps	%xmm1, %xmm0
	movss	LC4, %xmm1
	mulss	%xmm1, %xmm7
	mulss	%xmm6, %xmm4
	minss	%xmm0, %xmm7
	xorps	%xmm0, %xmm0
	mulss	%xmm7, %xmm1
	mulss	LC10, %xmm7
	cvttss2sil	%xmm1, %edi
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%edi, %xmm0
	cvttss2sil	%xmm7, %edi
	cvtsi2ssl	%edi, %xmm1
	subss	%xmm1, %xmm3
	subss	%xmm1, %xmm2
	cvttss2sil	%xmm3, %edi
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%edi, %xmm3
	cvttss2sil	%xmm2, %edi
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%edi, %xmm2
	cvttss2sil	%xmm4, %edi
	xorps	%xmm4, %xmm4
	cvtsi2ssl	%edi, %xmm4
	cvttss2sil	%xmm5, %edi
	xorps	%xmm5, %xmm5
	cvtsi2ssl	%edi, %xmm5
	leal	1(%esi), %edi
	cmpl	$4, %edi
	ja	L153
	jmp	*L155(,%edi,4)
	.section .rdata,"dr"
	.align 4
L155:
	.long	L158
	.long	L149
	.long	L157
	.long	L156
	.long	L154
	.text
	.p2align 4,,10
	.p2align 3
L123:
	movaps	%xmm2, %xmm1
	movaps	%xmm5, %xmm0
	subss	%xmm7, %xmm1
	unpcklps	%xmm1, %xmm0
	movlhps	%xmm0, %xmm0
	movaps	%xmm0, %xmm1
	subps	%xmm4, %xmm1
	addps	%xmm0, %xmm4
	shufps	$228, %xmm4, %xmm1
	movups	%xmm1, (%ecx)
L126:
	movl	20(%esp), %ebx
	movss	3532(%ebx), %xmm4
	movss	3528(%ebx), %xmm6
	movaps	%xmm4, %xmm1
	subss	%xmm2, %xmm1
	movaps	%xmm6, %xmm2
	subss	%xmm5, %xmm2
	movaps	%xmm1, %xmm0
	mulss	%xmm1, %xmm0
	movaps	%xmm2, %xmm5
	mulss	%xmm2, %xmm5
	addss	%xmm0, %xmm5
	movss	LC7, %xmm0
	mulss	%xmm3, %xmm0
	mulss	%xmm0, %xmm0
	comiss	%xmm5, %xmm0
	ja	L287
	movss	LC8, %xmm0
	mulss	%xmm3, %xmm0
	mulss	%xmm0, %xmm0
	comiss	%xmm5, %xmm0
	jbe	L288
	movss	%xmm2, 8(%esp)
	flds	8(%esp)
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
	movss	4(%esp), %xmm6
	fstps	8(%esp)
	comiss	8(%esp), %xmm6
	ja	L289
	xorps	%xmm0, %xmm0
	xorl	%ebx, %ebx
	comiss	%xmm0, %xmm1
	seta	%bl
	leal	2(%ebx), %edi
L138:
	cmpl	%esi, %edi
	sete	%bl
	movl	%ebx, %edi
L137:
	movl	%edi, %ebx
	testb	%bl, %bl
	je	L143
L132:
	movl	%esi, 172(%eax)
	movb	$1, 167(%eax)
L143:
	addl	$1, %edx
	cmpl	$4, %edx
	je	L142
L290:
	addl	$16, %ecx
L141:
	movl	%edx, %esi
	cmpb	$0, 166(%eax)
	jne	L144
	addl	$1, %edx
	cmpl	$4, %edx
	jne	L290
	.p2align 4
	.p2align 3
L142:
	movl	172(%eax), %ecx
	cmpl	$-1, %ecx
	je	L109
	movb	$1, 164(%eax)
	cmpb	$0, 12(%ebp)
	jne	L178
	cmpb	$0, 167(%eax)
	jne	L178
	movl	20(%esp), %esi
	cmpb	$0, 97(%esi)
	jne	L178
	movb	$0, 164(%eax)
	.p2align 4
	.p2align 3
L178:
	movl	52(%eax), %ebx
	movl	56(%eax), %esi
	xorl	%edx, %edx
	cmpl	$1, %ecx
	setbe	%dl
	xorps	%xmm4, %xmm4
	movl	$0x00000000, 24(%esp)
	movss	LC3, %xmm3
	movl	%ebx, 32(%esp)
	movl	60(%eax), %ebx
	movl	%esi, 36(%esp)
	movl	64(%eax), %esi
	movss	32(%esp,%edx,4), %xmm0
	movl	%ebx, 48(%esp)
	movl	%esi, 52(%esp)
	movl	12(%esp), %esi
	movl	$0x00000000, 28(%esp)
	movss	%xmm0, 24(%esp,%edx,4)
	movss	48(%esp,%edx,4), %xmm0
	movl	$0x00000000, 176(%eax)
	movl	76(%esi), %ebx
	movl	$0x00000000, 40(%esp)
	movl	80(%esi), %esi
	movl	$0x00000000, 44(%esp)
	movss	%xmm0, 40(%esp,%edx,4)
	seta	%dl
	movzbl	%dl, %edx
	movl	%esi, 60(%esp)
	movl	16(%esp), %esi
	sall	$2, %edx
	movl	%ebx, 56(%esp)
	leal	48(%esp,%edx), %ebx
	movss	14488(%esi), %xmm2
	leal	40(%esp,%edx), %esi
	movss	56(%esp,%edx), %xmm1
	movss	(%ebx), %xmm0
	comiss	%xmm4, %xmm1
	subss	%xmm2, %xmm0
	mulss	%xmm0, %xmm3
	jbe	L180
	comiss	%xmm1, %xmm3
	jnb	L276
L180:
	cvttss2sil	%xmm3, %edi
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%edi, %xmm1
L276:
	subss	%xmm1, %xmm0
	andl	$-3, %ecx
	movss	%xmm1, (%esi)
	cvttss2sil	%xmm0, %edi
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edi, %xmm0
	movss	%xmm0, (%ebx)
	divss	60(%eax,%edx), %xmm1
	cmpl	$1, %ecx
	jne	L184
	addss	32(%esp,%edx), %xmm0
	addss	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	comiss	%xmm1, %xmm2
	movss	%xmm0, 24(%esp,%edx)
	movss	LC0, %xmm0
	ja	L185
	movaps	%xmm0, %xmm2
	movaps	%xmm0, %xmm3
	cmpltss	%xmm1, %xmm2
	andps	%xmm2, %xmm3
	andnps	%xmm1, %xmm2
	orps	%xmm3, %xmm2
	subss	%xmm2, %xmm0
L185:
	movl	24(%esp), %ebx
	movl	28(%esp), %esi
	movss	%xmm0, 176(%eax)
	movl	%ebx, 52(%eax)
	movl	40(%esp), %ebx
	movl	%esi, 56(%eax)
	movl	44(%esp), %esi
	movl	%ebx, 60(%eax)
	movl	%esi, 64(%eax)
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
L121:
	.cfi_restore_state
	addss	%xmm2, %xmm7
	movaps	%xmm5, %xmm0
	unpcklps	%xmm7, %xmm0
	movlhps	%xmm0, %xmm0
	movaps	%xmm0, %xmm1
	addps	%xmm4, %xmm0
	subps	%xmm4, %xmm1
	shufps	$228, %xmm0, %xmm1
	movups	%xmm1, (%ecx)
	jmp	L126
	.p2align 4,,10
	.p2align 3
L124:
	addss	%xmm5, %xmm7
	unpcklps	%xmm2, %xmm7
	movlhps	%xmm7, %xmm7
	movaps	%xmm7, %xmm1
	addps	%xmm0, %xmm7
	subps	%xmm0, %xmm1
	shufps	$228, %xmm7, %xmm1
	movups	%xmm1, (%ecx)
	jmp	L126
	.p2align 4,,10
	.p2align 3
L156:
	subss	%xmm3, %xmm4
	movaps	%xmm5, %xmm2
	addss	%xmm0, %xmm5
	subss	%xmm0, %xmm2
	movaps	%xmm4, %xmm3
	addss	%xmm1, %xmm4
	subss	%xmm1, %xmm3
	movaps	%xmm2, %xmm0
	unpcklps	%xmm4, %xmm5
	unpcklps	%xmm3, %xmm0
	movlhps	%xmm5, %xmm0
	movups	%xmm0, (%edx)
L163:
	movl	20(%esp), %ebx
	movss	3528(%ebx), %xmm0
	comiss	(%edx), %xmm0
	jb	L273
	movss	3532(%ebx), %xmm1
	comiss	4(%edx), %xmm1
	jb	L273
L165:
	movss	8(%edx), %xmm2
	comiss	%xmm0, %xmm2
	ja	L162
	.p2align 4
	.p2align 3
L273:
	addl	$1, %ecx
	addl	$16, %edx
L150:
	movl	%ecx, %esi
	cmpb	$0, 166(%eax)
	jne	L172
	.p2align 4
	.p2align 3
L170:
	addl	$1, %ecx
	cmpl	$4, %ecx
	je	L142
	addl	$16, %edx
	movl	%ecx, %esi
	cmpb	$0, 166(%eax)
	jne	L172
	jmp	L170
	.p2align 4,,10
	.p2align 3
L157:
	addss	%xmm5, %xmm2
	movaps	%xmm4, %xmm5
	subss	%xmm0, %xmm5
	addss	%xmm4, %xmm0
	movaps	%xmm2, %xmm3
	subss	%xmm1, %xmm3
	addss	%xmm2, %xmm1
	unpcklps	%xmm5, %xmm3
	unpcklps	%xmm0, %xmm1
	movlhps	%xmm1, %xmm3
	movups	%xmm3, (%edx)
	jmp	L163
	.p2align 4,,10
	.p2align 3
L154:
	addss	%xmm4, %xmm3
	movaps	%xmm5, %xmm2
	addss	%xmm0, %xmm5
	movl	20(%esp), %ebx
	subss	%xmm0, %xmm2
	movaps	%xmm3, %xmm4
	addss	%xmm1, %xmm3
	subss	%xmm1, %xmm4
	movaps	%xmm2, %xmm0
	unpcklps	%xmm3, %xmm5
	unpcklps	%xmm4, %xmm0
	movlhps	%xmm5, %xmm0
	movups	%xmm0, (%edx)
	movss	3528(%ebx), %xmm0
	comiss	(%edx), %xmm0
	jb	L142
	movss	3532(%ebx), %xmm1
	comiss	4(%edx), %xmm1
	jb	L142
	movss	8(%edx), %xmm2
	comiss	%xmm0, %xmm2
	jbe	L142
L162:
	movss	12(%edx), %xmm0
	comiss	%xmm1, %xmm0
	jbe	L170
	movl	%esi, 172(%eax)
	movb	$1, 167(%eax)
	jmp	L170
	.p2align 4,,10
	.p2align 3
L285:
	movl	12(%esp), %ecx
	movzbl	233(%ecx), %edx
	jmp	L106
	.p2align 4,,10
	.p2align 3
L284:
	leal	212(%eax), %ecx
	movl	$1, %edx
	cmpb	$0, 166(%eax)
	je	L141
	movss	56(%eax), %xmm2
	movss	52(%eax), %xmm1
	leal	196(%eax), %ecx
	movss	64(%eax), %xmm5
	movss	60(%eax), %xmm4
	movss	LC3, %xmm6
	movl	16(%esp), %esi
	addss	%xmm2, %xmm5
	addss	%xmm1, %xmm4
	movaps	%xmm6, %xmm7
	mulss	15516(%esi), %xmm7
	movaps	%xmm5, %xmm3
	movaps	%xmm4, %xmm0
	subss	%xmm2, %xmm3
	subss	%xmm1, %xmm0
	addss	%xmm5, %xmm2
	addss	%xmm4, %xmm1
	xorps	%xmm5, %xmm5
	minss	%xmm3, %xmm0
	mulss	LC2, %xmm0
	mulss	%xmm6, %xmm2
	mulss	%xmm6, %xmm1
	movaps	%xmm0, %xmm3
	cmpnless	%xmm7, %xmm3
	andps	%xmm3, %xmm0
	andnps	%xmm7, %xmm3
	movss	15516(%esi), %xmm7
	mulss	LC4, %xmm7
	orps	%xmm0, %xmm3
	xorps	%xmm0, %xmm0
	minss	%xmm3, %xmm7
	xorps	%xmm3, %xmm3
	cvttss2sil	%xmm7, %edx
	mulss	LC5, %xmm7
	cvtsi2ssl	%edx, %xmm3
	cvttss2sil	%xmm7, %edx
	movss	LC6, %xmm7
	mulss	%xmm3, %xmm7
	cvtsi2ssl	%edx, %xmm0
	cvttss2sil	%xmm7, %edx
	xorps	%xmm7, %xmm7
	unpcklps	%xmm3, %xmm0
	movlhps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm7
	cvttss2sil	%xmm2, %edx
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%edx, %xmm2
	cvttss2sil	%xmm1, %edx
	cvtsi2ssl	%edx, %xmm5
	xorl	%edx, %edx
L115:
	movaps	%xmm5, %xmm1
	xorl	%esi, %esi
	subss	%xmm7, %xmm1
	unpcklps	%xmm2, %xmm1
	movlhps	%xmm1, %xmm1
	movaps	%xmm1, %xmm4
	addps	%xmm0, %xmm1
	subps	%xmm0, %xmm4
	shufps	$228, %xmm1, %xmm4
	movups	%xmm4, (%ecx)
	jmp	L126
	.p2align 4,,10
	.p2align 3
L286:
	cmpb	$0, 166(%eax)
	je	L146
	movss	52(%eax), %xmm7
	movss	60(%eax), %xmm5
	leal	196(%eax), %edx
	movss	56(%eax), %xmm4
	addss	64(%eax), %xmm4
	addss	%xmm7, %xmm5
	movss	15516(%esi), %xmm3
	movss	LC3, %xmm6
	mulss	%xmm6, %xmm3
	movaps	%xmm4, %xmm0
	subss	56(%eax), %xmm0
	movaps	%xmm5, %xmm2
	subss	%xmm7, %xmm2
	addss	%xmm5, %xmm7
	xorps	%xmm5, %xmm5
	mulss	%xmm6, %xmm7
	movaps	%xmm2, %xmm1
	minss	%xmm0, %xmm1
	mulss	%xmm6, %xmm2
	mulss	LC2, %xmm1
	movaps	%xmm1, %xmm0
	cmpnless	%xmm3, %xmm0
	andps	%xmm0, %xmm1
	andnps	%xmm3, %xmm0
	movss	LC4, %xmm3
	orps	%xmm1, %xmm0
	movss	15516(%esi), %xmm1
	mulss	%xmm3, %xmm1
	minss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	mulss	%xmm1, %xmm3
	mulss	LC10, %xmm1
	cvttss2sil	%xmm3, %ecx
	movss	56(%eax), %xmm3
	addss	%xmm4, %xmm3
	xorps	%xmm4, %xmm4
	cvtsi2ssl	%ecx, %xmm0
	cvttss2sil	%xmm1, %ecx
	mulss	%xmm6, %xmm3
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm1
	subss	%xmm1, %xmm2
	cvttss2sil	%xmm2, %ecx
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%ecx, %xmm2
	cvttss2sil	%xmm3, %ecx
	cvtsi2ssl	%ecx, %xmm4
	cvttss2sil	%xmm7, %ecx
	cvtsi2ssl	%ecx, %xmm5
	xorl	%ecx, %ecx
L149:
	subss	%xmm2, %xmm5
	movaps	%xmm4, %xmm2
	addss	%xmm0, %xmm4
	xorl	%esi, %esi
	subss	%xmm0, %xmm2
	movaps	%xmm5, %xmm3
	addss	%xmm1, %xmm5
	subss	%xmm1, %xmm3
	unpcklps	%xmm4, %xmm5
	movaps	%xmm3, %xmm0
	unpcklps	%xmm2, %xmm0
	movlhps	%xmm5, %xmm0
	movups	%xmm0, (%edx)
	jmp	L163
	.p2align 4,,10
	.p2align 3
L66:
	movl	12(%esp), %ecx
	movl	40(%ecx), %ecx
	movb	$1, 165(%eax)
	movl	%ecx, 8(%esp)
	cmpb	$0, 16(%ebp)
	je	L291
L203:
	movl	$0, 16(%esp)
	jmp	L92
L125:
	movaps	%xmm5, %xmm0
	movaps	%xmm3, %xmm1
	unpcklps	%xmm2, %xmm0
	shufps	$0, %xmm1, %xmm1
	movlhps	%xmm0, %xmm0
	movaps	%xmm0, %xmm4
	addps	%xmm1, %xmm0
	subps	%xmm1, %xmm4
	shufps	$228, %xmm0, %xmm4
	movups	%xmm4, (%ecx)
	jmp	L126
L158:
	unpcklps	%xmm0, %xmm0
	unpcklps	%xmm4, %xmm5
	movaps	%xmm0, %xmm1
	movlhps	%xmm5, %xmm1
	movlhps	%xmm0, %xmm5
	movaps	%xmm5, %xmm0
	addps	%xmm1, %xmm5
	subps	%xmm1, %xmm0
	shufps	$228, %xmm5, %xmm0
	movups	%xmm0, (%edx)
	jmp	L163
	.p2align 4,,10
	.p2align 3
L288:
	mulss	LC9, %xmm3
	xorps	%xmm1, %xmm1
	movss	(%ecx), %xmm0
	cvttss2sil	%xmm3, %edi
	cvtsi2ssl	%edi, %xmm1
	subss	%xmm1, %xmm0
	comiss	%xmm0, %xmm6
	jb	L143
	movss	4(%ecx), %xmm0
	subss	%xmm1, %xmm0
	comiss	%xmm0, %xmm4
	jb	L143
	movss	8(%ecx), %xmm0
	addss	%xmm1, %xmm0
	comiss	%xmm6, %xmm0
	jbe	L143
	addss	12(%ecx), %xmm1
	comiss	%xmm4, %xmm1
	ja	L132
	jmp	L143
	.p2align 4,,10
	.p2align 3
L184:
	testl	%ecx, %ecx
	je	L187
	xorps	%xmm0, %xmm0
	comiss	%xmm1, %xmm0
	ja	L190
L269:
	movss	LC0, %xmm2
	movaps	%xmm2, %xmm0
	cmpltss	%xmm1, %xmm0
	andps	%xmm0, %xmm2
	andnps	%xmm1, %xmm0
	orps	%xmm2, %xmm0
	jmp	L185
	.p2align 4,,10
	.p2align 3
L187:
	movss	32(%esp,%edx), %xmm0
	movss	%xmm0, 24(%esp,%edx)
	xorps	%xmm0, %xmm0
	comiss	%xmm1, %xmm0
	jbe	L269
L190:
	xorps	%xmm0, %xmm0
	jmp	L185
	.p2align 4,,10
	.p2align 3
L287:
	cmpl	$-1, %esi
	sete	%bl
	movl	%ebx, %edi
	jmp	L137
	.p2align 4,,10
	.p2align 3
L69:
	movl	12(%esp), %ecx
	movl	%edx, 16(%esp)
	movl	40(%ecx), %ecx
	movl	%ecx, 8(%esp)
	jmp	L70
	.p2align 4,,10
	.p2align 3
L71:
	movl	12(%esp), %ecx
	movl	40(%ecx), %ecx
	movl	%ecx, 8(%esp)
	jmp	L70
	.p2align 4,,10
	.p2align 3
L291:
	testl	$65536, %edx
	jne	L203
	testl	$524288, %edx
	jne	L203
	testb	$16, 10(%esp)
	movl	$0, 16(%esp)
	jne	L92
	.p2align 4
	.p2align 3
L78:
	testb	$32, 10(%esp)
	je	L80
	testl	%esi, %esi
	je	L80
	movl	28(%esi), %ecx
	testl	%ecx, %ecx
	jne	L80
	movl	36(%esi), %edi
	testl	%edi, %edi
	jne	L80
	jmp	L92
	.p2align 4,,10
	.p2align 3
L283:
	movb	$0, 164(%eax)
	jmp	L277
	.p2align 4,,10
	.p2align 3
L281:
	movl	36(%esi), %ecx
	testl	%ecx, %ecx
	jne	L83
	testl	$524288, %edx
	jne	L92
	movl	8(%esp), %ecx
	testl	$1048576, %ecx
	je	L85
	andl	$2097152, %ecx
	jne	L92
	jmp	L80
	.p2align 4,,10
	.p2align 3
L289:
	xorps	%xmm0, %xmm0
	xorl	%ebx, %ebx
	comiss	%xmm0, %xmm2
	seta	%bl
	movl	%ebx, %edi
	jmp	L138
	.p2align 4,,10
	.p2align 3
L280:
	orl	%edx, %edi
	movl	16(%esi), %edx
	andl	$2048, %edx
	orl	%edi, %edx
	je	L101
	jmp	L102
L146:
	leal	212(%eax), %edx
	movl	$1, %ecx
	jmp	L150
L153:
	movl	20(%esp), %ebx
	movss	3528(%ebx), %xmm0
	comiss	(%edx), %xmm0
	jb	L273
	movl	20(%esp), %ebx
	movss	3532(%ebx), %xmm1
	comiss	4(%edx), %xmm1
	jnb	L165
	jmp	L273
	.cfi_endproc
LFE7:
	.p2align 4
	.def	__ZN5ImGuiL25DockNodeTreeUpdatePosSizeEP13ImGuiDockNode6ImVec2S2_S1_;	.scl	3;	.type	32;	.endef
__ZN5ImGuiL25DockNodeTreeUpdatePosSizeEP13ImGuiDockNode6ImVec2S2_S1_:
LFB14:
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
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	88(%esp), %ebx
	testl	%ebx, %ebx
	je	L332
	cmpl	%eax, 88(%esp)
	je	L332
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	L334
	movl	80(%esp), %edx
	movl	84(%esp), %ecx
	movl	%edi, 52(%esp)
	movl	%ebp, 56(%esp)
	movl	32(%esi), %ebx
	movl	%edx, 44(%esp)
	movl	%ecx, 48(%esp)
	movl	%edx, 36(%esp)
	movl	%ecx, 40(%esp)
L296:
	movl	88(%esp), %edx
	.p2align 4
	.p2align 4
	.p2align 3
L302:
	cmpl	%eax, %edx
	je	L329
	movl	24(%edx), %edx
	testl	%edx, %edx
	jne	L302
	xorl	%ecx, %ecx
L301:
	movl	88(%esp), %edx
	.p2align 4
	.p2align 4
	.p2align 3
L304:
	cmpl	%ebx, %edx
	je	L330
	movl	24(%edx), %edx
	testl	%edx, %edx
	jne	L304
	movb	$0, 22(%esp)
L303:
	movzbl	160(%ebx), %edx
	testb	$1, 160(%eax)
	je	L305
	andl	$1, %edx
	je	L352
L299:
	movss	LC12, %xmm2
	movl	76(%esi), %edx
	xorps	%xmm3, %xmm3
	movaps	%xmm3, %xmm1
	leal	0(,%edx,4), %esi
	movl	%esi, %edx
	movss	80(%esp,%esi), %xmm0
	leal	68(%eax,%esi), %esi
	movl	%edx, 12(%esp)
	leal	36(%esp,%edx), %edx
	movl	%edx, 24(%esp)
	movl	12(%esp), %edx
	subss	%xmm2, %xmm0
	movl	%esi, 28(%esp)
	leal	44(%esp,%edx), %edx
	movl	%edx, 16(%esp)
	movzbl	160(%ebx), %edx
	cmpless	%xmm0, %xmm1
	movb	%dl, 23(%esp)
	movzbl	160(%eax), %edx
	andps	%xmm0, %xmm1
	movb	%dl, 32(%esp)
	testb	%dl, %dl
	js	L353
	movzbl	23(%esp), %edx
	shrb	$7, %dl
	je	L316
	movl	12(%esp), %esi
	movaps	%xmm1, %xmm3
	subss	LC0, %xmm3
	minss	60(%ebx,%esi), %xmm3
	movss	%xmm3, 68(%ebx,%esi)
	movl	24(%esp), %esi
	subss	%xmm3, %xmm1
	movss	%xmm3, (%esi)
	movl	28(%esp), %esi
	movaps	%xmm1, %xmm0
	movss	%xmm1, (%esi)
	movl	16(%esp), %esi
	movss	%xmm1, (%esi)
	.p2align 4
	.p2align 3
L315:
	movl	12(%esp), %esi
	addss	%xmm2, %xmm0
	movl	88(%esp), %edx
	addss	52(%esp,%esi), %xmm0
	movss	%xmm0, 52(%esp,%esi)
	testl	%edx, %edx
	jne	L324
L298:
	andb	$127, 160(%ebx)
	movzbl	160(%eax), %edx
	movl	%edx, %ecx
	andl	$127, %ecx
	movb	%cl, 160(%eax)
	movl	%edx, %ecx
	movzbl	160(%ebx), %edx
	andl	$1, %ecx
	andl	$1, %edx
	movb	%dl, 22(%esp)
L324:
	testb	%cl, %cl
	je	L312
	movl	44(%esp), %edx
	movl	48(%esp), %ecx
	movl	$0, 8(%esp)
	movl	%edx, (%esp)
	movl	%edi, %edx
	movl	%ecx, 4(%esp)
	movl	%ebp, %ecx
	call	__ZN5ImGuiL25DockNodeTreeUpdatePosSizeEP13ImGuiDockNode6ImVec2S2_S1_
L312:
	cmpb	$0, 22(%esp)
	jne	L311
L334:
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
L332:
	.cfi_restore_state
	movl	80(%esp), %edx
	movl	84(%esp), %ecx
	movl	%edi, 52(%esi)
	movl	28(%esi), %eax
	movl	%ebp, 56(%esi)
	movl	%edx, 60(%esi)
	movl	%ecx, 64(%esi)
	testl	%eax, %eax
	je	L334
	movl	%ecx, 48(%esp)
	movl	32(%esi), %ebx
	movl	%ecx, 40(%esp)
	movl	88(%esp), %ecx
	movl	%edi, 52(%esp)
	movl	%ebp, 56(%esp)
	movl	%edx, 44(%esp)
	movl	%edx, 36(%esp)
	testl	%ecx, %ecx
	jne	L296
	testb	$1, 160(%eax)
	je	L298
	testb	$1, 160(%ebx)
	je	L298
	movb	$0, 22(%esp)
	xorl	%ecx, %ecx
	jmp	L299
	.p2align 4,,10
	.p2align 3
L305:
	andl	$1, %edx
	jne	L308
	cmpb	$0, 22(%esp)
	je	L307
	testb	%cl, %cl
	jne	L354
L311:
	movl	36(%esp), %eax
	movl	40(%esp), %edx
	movl	$0, 8(%esp)
	movl	56(%esp), %ecx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	movl	%edx, 4(%esp)
	movl	52(%esp), %edx
	call	__ZN5ImGuiL25DockNodeTreeUpdatePosSizeEP13ImGuiDockNode6ImVec2S2_S1_
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
L329:
	.cfi_restore_state
	movl	$1, %ecx
	jmp	L301
	.p2align 4,,10
	.p2align 3
L330:
	movb	$1, 22(%esp)
	jmp	L303
	.p2align 4,,10
	.p2align 3
L353:
	movl	12(%esp), %edx
	leal	68(%ebx,%edx), %edx
	movl	%edx, 32(%esp)
	movzbl	23(%esp), %edx
	shrb	$7, %dl
	jne	L314
	movl	12(%esp), %edx
	movaps	%xmm1, %xmm0
	subss	LC0, %xmm0
	minss	60(%eax,%edx), %xmm0
	movl	24(%esp), %edx
	movss	%xmm0, (%esi)
	movl	16(%esp), %esi
	subss	%xmm0, %xmm1
	movss	%xmm0, (%esi)
	movl	32(%esp), %esi
	movss	%xmm1, (%esi)
	movss	%xmm1, (%edx)
	jmp	L315
	.p2align 4,,10
	.p2align 3
L352:
	cmpb	$0, 22(%esp)
	jne	L299
L307:
	testb	%cl, %cl
	je	L334
	movl	44(%esp), %ecx
	movl	48(%esp), %ebx
	movl	$0, 8(%esp)
	movl	%edi, %edx
	movl	%ecx, (%esp)
	movl	%ebp, %ecx
	movl	%ebx, 4(%esp)
	call	__ZN5ImGuiL25DockNodeTreeUpdatePosSizeEP13ImGuiDockNode6ImVec2S2_S1_
	jmp	L334
	.p2align 4,,10
	.p2align 3
L308:
	testb	%cl, %cl
	je	L312
	jmp	L299
	.p2align 4,,10
	.p2align 3
L316:
	movl	_GImGui, %edx
	movl	12(%esp), %esi
	movaps	%xmm1, %xmm4
	movss	LC3, %xmm5
	movss	14428(%edx,%esi), %xmm0
	addss	%xmm0, %xmm0
	minss	%xmm0, %xmm4
	mulss	%xmm5, %xmm4
	cvttss2sil	%xmm4, %edx
	xorps	%xmm4, %xmm4
	cvtsi2ssl	%edx, %xmm4
	movl	28(%esp), %edx
	movss	(%edx), %xmm6
	ucomiss	%xmm3, %xmm6
	jp	L333
	je	L317
L333:
	testb	$32, 23(%esp)
	jne	L319
L317:
	movl	12(%esp), %esi
	xorps	%xmm0, %xmm0
	movss	68(%ebx,%esi), %xmm3
	ucomiss	%xmm0, %xmm3
	jp	L320
	jne	L320
L322:
	addss	%xmm6, %xmm3
	divss	%xmm3, %xmm6
	xorps	%xmm3, %xmm3
	movaps	%xmm6, %xmm0
	mulss	%xmm1, %xmm0
	addss	%xmm5, %xmm0
	cvttss2sil	%xmm0, %esi
	cvtsi2ssl	%esi, %xmm3
	movaps	%xmm3, %xmm0
	cmpless	%xmm4, %xmm0
	andps	%xmm0, %xmm4
	andnps	%xmm3, %xmm0
	orps	%xmm4, %xmm0
L351:
	movl	16(%esp), %esi
	subss	%xmm0, %xmm1
	movss	%xmm0, (%esi)
	movl	24(%esp), %esi
	movss	%xmm1, (%esi)
	jmp	L315
	.p2align 4,,10
	.p2align 3
L314:
	movl	16(%esp), %esi
	movl	24(%esp), %edx
	movss	(%esi), %xmm0
	movss	(%edx), %xmm3
	addss	%xmm0, %xmm3
	divss	%xmm3, %xmm0
	mulss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %esi
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%esi, %xmm0
	movl	28(%esp), %esi
	movss	%xmm0, (%esi)
	movl	16(%esp), %esi
	subss	%xmm0, %xmm1
	movss	%xmm0, (%esi)
	movl	32(%esp), %esi
	movss	%xmm1, (%esi)
	movss	%xmm1, (%edx)
	jmp	L315
L320:
	testb	$32, 32(%esp)
	je	L322
	movaps	%xmm1, %xmm0
	movl	24(%esp), %esi
	subss	%xmm4, %xmm0
	movaps	%xmm0, %xmm4
	minss	%xmm3, %xmm4
	subss	%xmm4, %xmm1
	movss	%xmm4, (%esi)
	movl	16(%esp), %esi
	movaps	%xmm1, %xmm0
	movss	%xmm1, (%esi)
	jmp	L315
L319:
	movaps	%xmm1, %xmm0
	subss	%xmm4, %xmm0
	minss	%xmm6, %xmm0
	jmp	L351
L354:
	movb	%cl, 22(%esp)
	jmp	L299
	.cfi_endproc
LFE14:
	.p2align 4
	.def	__ZN5ImGuiL32DockNodeTreeFindFallbackLeafNodeEP13ImGuiDockNode;	.scl	3;	.type	32;	.endef
__ZN5ImGuiL32DockNodeTreeFindFallbackLeafNodeEP13ImGuiDockNode:
LFB15:
	.cfi_startproc
	.p2align 4
	.p2align 3
L357:
	movl	28(%eax), %ecx
	testl	%ecx, %ecx
	je	L355
	movl	28(%ecx), %edx
	testl	%edx, %edx
	je	L358
	movl	28(%edx), %eax
	testl	%eax, %eax
	je	L361
	movl	28(%eax), %edx
	testl	%edx, %edx
	je	L355
	movl	28(%edx), %eax
	testl	%eax, %eax
	je	L361
	movl	28(%eax), %edx
	testl	%edx, %edx
	je	L355
	movl	28(%edx), %eax
	testl	%eax, %eax
	je	L361
	movl	28(%eax), %edx
	testl	%edx, %edx
	je	L355
	movl	28(%edx), %eax
	testl	%eax, %eax
	jne	L357
L361:
	movl	%edx, %eax
L355:
	ret
L358:
	movl	%ecx, %eax
	ret
	.cfi_endproc
LFE15:
	.p2align 4
	.def	__ZN5ImGuiL32DockNodeTreeFindVisibleNodeByPosEP13ImGuiDockNode6ImVec2;	.scl	3;	.type	32;	.endef
__ZN5ImGuiL32DockNodeTreeFindVisibleNodeByPosEP13ImGuiDockNode6ImVec2:
LFB17:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%esi, 12(%esp)
	testb	$1, 160(%eax)
	.cfi_offset 6, -12
	je	L378
	movl	%edx, (%esp)
	movss	52(%eax), %xmm0
	movss	(%esp), %xmm1
	comiss	%xmm0, %xmm1
	jb	L378
	movl	%ecx, (%esp)
	movss	56(%eax), %xmm2
	movss	(%esp), %xmm3
	comiss	%xmm2, %xmm3
	jb	L378
	addss	60(%eax), %xmm0
	xorps	%xmm4, %xmm4
	addss	%xmm4, %xmm0
	comiss	%xmm1, %xmm0
	jbe	L378
	movl	%ebx, 8(%esp)
	movl	%edi, 16(%esp)
	.cfi_offset 3, -16
	.cfi_offset 7, -8
	addss	64(%eax), %xmm2
	addss	%xmm4, %xmm2
	comiss	%xmm3, %xmm2
	ja	L393
	movl	8(%esp), %ebx
	.cfi_restore 3
	movl	16(%esp), %edi
	.cfi_restore 7
L378:
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	12(%esp), %esi
	addl	$20, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L393:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movl	28(%eax), %ebx
	movl	%eax, %esi
	testl	%ebx, %ebx
	je	L392
	movl	%eax, %edi
	movl	%ebx, %eax
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	__ZN5ImGuiL32DockNodeTreeFindVisibleNodeByPosEP13ImGuiDockNode6ImVec2
	movl	(%esp), %ecx
	movl	4(%esp), %edx
	testl	%eax, %eax
	movl	%eax, %esi
	je	L394
L392:
	movl	%esi, %eax
	movl	8(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	16(%esp), %edi
	.cfi_restore 7
	movl	12(%esp), %esi
	addl	$20, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L394:
	.cfi_restore_state
	movl	32(%edi), %eax
	movl	%edi, %ebx
	call	__ZN5ImGuiL32DockNodeTreeFindVisibleNodeByPosEP13ImGuiDockNode6ImVec2
	movl	16(%esp), %edi
	.cfi_restore 7
	testl	%eax, %eax
	cmovne	%eax, %ebx
	movl	%ebx, %esi
	movl	8(%esp), %ebx
	.cfi_restore 3
	movl	%esi, %eax
	movl	12(%esp), %esi
	addl	$20, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE17:
	.p2align 4
	.globl	__ZL32SetPlatformImeDataFn_DefaultImplP13ImGuiViewportP20ImGuiPlatformImeData.lto_priv.0
	.def	__ZL32SetPlatformImeDataFn_DefaultImplP13ImGuiViewportP20ImGuiPlatformImeData.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL32SetPlatformImeDataFn_DefaultImplP13ImGuiViewportP20ImGuiPlatformImeData.lto_priv.0:
LFB18:
	.cfi_startproc
	ret
	.cfi_endproc
LFE18:
	.p2align 4
	.def	__ZL38DockSettingsHandler_DockNodeToSettingsP16ImGuiDockContextP13ImGuiDockNodei;	.scl	3;	.type	32;	.endef
__ZL38DockSettingsHandler_DockNodeToSettingsP16ImGuiDockContextP13ImGuiDockNodei:
LFB19:
	.cfi_startproc
	subl	$72, %esp
	.cfi_def_cfa_offset 76
	movl	%ebx, 56(%esp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	%esi, 60(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	%edi, 64(%esp)
	.cfi_offset 7, -12
	movl	%ecx, %edi
L411:
	movl	(%ebx), %eax
	movl	24(%ebx), %edx
	xorl	%ecx, %ecx
	movw	%cx, 38(%esp)
	movl	%eax, 20(%esp)
	xorl	%eax, %eax
	testl	%edx, %edx
	je	L397
	movl	(%edx), %eax
L397:
	movl	%eax, 24(%esp)
	testb	$4, 17(%ebx)
	je	L398
	movl	112(%ebx), %eax
	testl	%eax, %eax
	je	L398
	movl	824(%eax), %eax
	testl	%eax, %eax
	je	L398
	movl	8(%eax), %eax
L400:
	movl	%eax, 28(%esp)
	movl	28(%ebx), %edx
	movl	148(%ebx), %eax
	movl	%eax, 32(%esp)
	movl	$-1, %eax
	testl	%edx, %edx
	je	L401
	movzbl	76(%ebx), %eax
L401:
	movb	%al, 36(%esp)
	movl	%edi, %eax
	cvttss2sil	52(%ebx), %edx
	movb	%al, 37(%esp)
	movl	8(%ebx), %eax
	andl	$12712992, %eax
	movl	%eax, 40(%esp)
	cvttss2sil	56(%ebx), %eax
	movw	%dx, 44(%esp)
	cvttss2sil	60(%ebx), %edx
	movw	%ax, 46(%esp)
	cvttss2sil	64(%ebx), %eax
	movw	%dx, 48(%esp)
	cvttss2sil	68(%ebx), %edx
	movw	%ax, 50(%esp)
	cvttss2sil	72(%ebx), %eax
	movw	%dx, 52(%esp)
	movw	%ax, 54(%esp)
	movl	24(%esi), %eax
	cmpl	28(%esi), %eax
	je	L434
L402:
	movl	32(%esi), %edx
L405:
	leal	(%eax,%eax,8), %eax
	leal	(%edx,%eax,4), %eax
	movl	20(%esp), %edx
	movl	%edx, (%eax)
	movl	24(%esp), %edx
	movl	%edx, 4(%eax)
	movl	28(%esp), %edx
	movl	%edx, 8(%eax)
	movl	32(%esp), %edx
	movl	%edx, 12(%eax)
	movl	36(%esp), %edx
	movl	%edx, 16(%eax)
	movl	40(%esp), %edx
	movl	%edx, 20(%eax)
	movl	44(%esp), %edx
	movl	%edx, 24(%eax)
	movl	48(%esp), %edx
	movl	%edx, 28(%eax)
	movl	52(%esp), %edx
	movl	%edx, 32(%eax)
	addl	$1, 24(%esi)
	movl	28(%ebx), %edx
	testl	%edx, %edx
	je	L409
	leal	1(%edi), %ecx
	movl	%esi, %eax
	call	__ZL38DockSettingsHandler_DockNodeToSettingsP16ImGuiDockContextP13ImGuiDockNodei
L409:
	movl	32(%ebx), %ebx
	testl	%ebx, %ebx
	je	L396
	addl	$1, %edi
	jmp	L411
	.p2align 4,,10
	.p2align 3
L398:
	xorl	%eax, %eax
	jmp	L400
	.p2align 4,,10
	.p2align 3
L396:
	movl	56(%esp), %ebx
	movl	60(%esp), %esi
	movl	64(%esp), %edi
	addl	$72, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L434:
	.cfi_restore_state
	movl	%ebp, 68(%esp)
	.cfi_offset 5, -8
	leal	1(%eax), %edx
	testl	%eax, %eax
	jne	L403
	movl	$8, %ebp
	cmpl	%ebp, %edx
	cmovge	%edx, %ebp
L404:
	movl	_GImGui, %edx
	leal	0(%ebp,%ebp,8), %eax
	sall	$2, %eax
	testl	%edx, %edx
	je	L406
	addl	$1, 188(%edx)
L406:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	32(%esi), %ecx
	movl	%eax, %edx
	testl	%ecx, %ecx
	je	L407
	movl	24(%esi), %eax
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	leal	(%eax,%eax,8), %eax
	movl	%ecx, 16(%esp)
	sall	$2, %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	12(%esp), %edx
	movl	16(%esp), %ecx
	testl	%eax, %eax
	je	L408
	subl	$1, 188(%eax)
L408:
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	movl	%edx, 12(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	12(%esp), %edx
L407:
	movl	%edx, 32(%esi)
	movl	24(%esi), %eax
	movl	%ebp, 28(%esi)
	movl	68(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L405
	.p2align 4,,10
	.p2align 3
L403:
	.cfi_restore_state
	movl	%eax, %ebp
	shrl	$31, %ebp
	addl	%eax, %ebp
	sarl	%ebp
	addl	%eax, %ebp
	cmpl	%edx, %ebp
	cmovl	%edx, %ebp
	cmpl	%ebp, %eax
	jl	L404
	movl	68(%esp), %ebp
	.cfi_restore 5
	jmp	L402
	.cfi_endproc
LFE19:
	.section .rdata,"dr"
LC13:
	.ascii "*Missing Text*\0"
LC14:
	.ascii "N/A\0"
LC16:
	.ascii "\0"
LC26:
	.ascii "   \0"
	.text
	.p2align 4
	.globl	__ZN5ImGui33DockNodeWindowMenuHandler_DefaultEP12ImGuiContextP13ImGuiDockNodeP11ImGuiTabBar
	.def	__ZN5ImGui33DockNodeWindowMenuHandler_DefaultEP12ImGuiContextP13ImGuiDockNodeP11ImGuiTabBar;	.scl	2;	.type	32;	.endef
__ZN5ImGui33DockNodeWindowMenuHandler_DefaultEP12ImGuiContextP13ImGuiDockNodeP11ImGuiTabBar:
LFB24:
	.cfi_startproc
	subl	$80, %esp
	.cfi_def_cfa_offset 84
	movl	%edi, 72(%esp)
	.cfi_offset 7, -12
	movl	92(%esp), %edi
	movl	%esi, 68(%esp)
	movl	%ebp, 76(%esp)
	movl	(%edi), %eax
	cmpl	$1, %eax
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	je	L436
	xorl	%esi, %esi
	leal	48(%esp), %ebp
	testl	%eax, %eax
	jle	L435
	movl	%ebx, 64(%esp)
	.cfi_offset 3, -20
	jmp	L437
	.p2align 4,,10
	.p2align 3
L572:
	movl	4(%eax), %eax
L484:
	movl	%ebp, (%esp)
	xorl	%ecx, %ecx
	movzbl	%dl, %edx
	call	__ZN5ImGui10SelectableEPKcbiRK6ImVec2
	testb	%al, %al
	jne	L571
L485:
	call	__ZN5ImGui8SameLineEff.constprop.0
	movl	$LC26, (%esp)
	call	__ZN5ImGui4TextEPKcz.constprop.0
L482:
	addl	$1, %esi
	cmpl	(%edi), %esi
	jge	L570
L437:
	leal	(%esi,%esi,2), %ebx
	sall	$4, %ebx
	addl	8(%edi), %ebx
	testb	$32, 6(%ebx)
	jne	L482
	movl	20(%edi), %eax
	cmpl	%eax, (%ebx)
	movl	$0x00000000, 48(%esp)
	movl	8(%ebx), %eax
	movl	$0x00000000, 52(%esp)
	sete	%dl
	testl	%eax, %eax
	jne	L572
	movl	36(%ebx), %ecx
	movl	$LC14, %eax
	cmpl	$-1, %ecx
	je	L484
	movl	140(%edi), %eax
	addl	%ecx, %eax
	jmp	L484
	.p2align 4,,10
	.p2align 3
L436:
	.cfi_restore 3
	movl	_GImGui, %esi
	movl	88(%esp), %eax
	movl	%ebx, 64(%esp)
	.cfi_offset 3, -20
	movl	23520(%esi), %edi
	movl	16(%eax), %edx
	movl	$LC13, %eax
	testl	%edi, %edi
	cmove	%eax, %edi
	movl	16148(%esi), %eax
	movb	$1, 225(%eax)
	movl	16148(%esi), %ebx
	movzbl	228(%ebx), %ebp
	movl	%ebp, %eax
	testb	%al, %al
	je	L573
L570:
	movl	64(%esp), %ebx
	.cfi_restore 3
L435:
	movl	68(%esp), %esi
	movl	72(%esp), %edi
	movl	76(%esp), %ebp
	addl	$80, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L571:
	.cfi_def_cfa_offset 84
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	(%ebx), %eax
	movl	%eax, 24(%edi)
	jmp	L485
	.p2align 4,,10
	.p2align 3
L573:
	movss	296(%ebx), %xmm7
	movl	$1, %ecx
	movl	%edi, %eax
	movss	300(%ebx), %xmm4
	movss	LC15, %xmm0
	andl	$8192, %edx
	movl	%edx, 28(%esp)
	xorl	%edx, %edx
	movss	%xmm7, 32(%esp)
	movss	%xmm4, 36(%esp)
	call	__ZN5ImGui12CalcTextSizeEPKcS1_bf
	movl	%eax, 20(%esp)
	movl	18592(%esi), %eax
	movl	%edx, 24(%esp)
	cmpl	%eax, 18580(%esi)
	jle	L441
	testb	$16, 15(%ebx)
	jne	L441
	leal	(%eax,%eax,4), %edx
	movl	18588(%esi), %eax
	movl	12(%eax,%edx,8), %ecx
	cmpl	%ecx, 384(%ebx)
	je	L574
L441:
	movb	$0, 16(%esp)
L443:
	movl	%edi, %eax
	call	__ZN5ImGui6PushIDEPKc
	movl	464(%ebx), %eax
	testl	%eax, %eax
	je	L575
	movss	LC18, %xmm0
	mulss	15516(%esi), %xmm0
	movl	%ebp, %ecx
	movl	%ebx, %ebp
	movzwl	424(%ebx), %edx
	cvttss2sil	%xmm0, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	cvttss2sil	20(%esp), %eax
	movl	%esi, 20(%esp)
	cmpw	%dx, %ax
	cmovb	%edx, %eax
	movzwl	428(%ebx), %edx
	movw	%ax, 424(%ebx)
	cvttss2sil	%xmm0, %eax
	cmpw	%dx, %ax
	cmovb	%edx, %eax
	xorl	%edx, %edx
	movw	%ax, 428(%ebx)
	xorl	%eax, %eax
L454:
	movzwl	422(%ebp,%edx,2), %esi
	testw	%si, %si
	setne	%bl
	testb	%cl, %cl
	je	L453
	testb	%bl, %bl
	je	L453
	addw	412(%ebp), %ax
L453:
	addl	$1, %edx
	orl	%ebx, %ecx
	addl	%esi, %eax
	cmpl	$4, %edx
	jne	L454
	movl	404(%ebp), %edx
	movzwl	%ax, %eax
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	movl	%eax, 408(%ebp)
	movl	20(%esp), %esi
	movl	%ebp, %ebx
	cmpl	%edx, %eax
	cmovb	%edx, %eax
	movzwl	%ax, %edx
	shrl	$16, %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	LC19, %xmm0
	cvtsi2ssl	%edx, %xmm1
	movl	_GImGui, %edx
	movl	16148(%edx), %eax
	addss	%xmm1, %xmm0
	movl	456(%eax), %ecx
	movss	%xmm0, 20(%esp)
	testl	%ecx, %ecx
	je	L576
L455:
	movss	560(%eax), %xmm2
	movss	%xmm2, 44(%esp)
L456:
	movss	296(%eax), %xmm3
	leal	48(%esp), %eax
	movl	$192937984, %ecx
	xorl	%edx, %edx
	movss	20(%esp), %xmm5
	movss	24(%esp), %xmm6
	movl	%eax, (%esp)
	movl	$LC16, %eax
	movss	%xmm3, 40(%esp)
	movss	%xmm5, 48(%esp)
	movss	%xmm6, 52(%esp)
	call	__ZN5ImGui10SelectableEPKcbiRK6ImVec2
	movl	%eax, %ebp
	testb	$2, 18321(%esi)
	jne	L577
L452:
	movl	_GImGui, %eax
	movl	16148(%eax), %edx
	subl	$1, 284(%edx)
	cmpb	$0, 16(%esp)
	jne	L578
L481:
	movl	%ebp, %eax
	testb	%al, %al
	je	L570
	movl	88(%esp), %eax
	orb	$4, 161(%eax)
	movl	64(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	68(%esp), %esi
	movl	72(%esp), %edi
	movl	76(%esp), %ebp
	addl	$80, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
L575:
	.cfi_restore_state
	movss	LC3, %xmm0
	mulss	14480(%esi), %xmm0
	xorps	%xmm2, %xmm2
	leal	48(%esp), %ebp
	movss	300(%ebx), %xmm1
	addss	352(%ebx), %xmm1
	movl	%ebp, %edx
	movss	%xmm1, 32(%esp)
	cvttss2sil	%xmm0, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movzwl	416(%ebx), %eax
	addss	296(%ebx), %xmm0
	cvtsi2ssl	%eax, %xmm2
	movl	$14, %eax
	movss	%xmm0, 296(%ebx)
	movss	14484(%esi), %xmm1
	movss	%xmm1, 52(%esp)
	addss	%xmm0, %xmm2
	movss	14480(%esi), %xmm0
	addss	%xmm0, %xmm0
	movss	%xmm2, 24(%esp)
	movss	%xmm0, 48(%esp)
	call	__ZN5ImGui12PushStyleVarEiRK6ImVec2
	movl	%ebp, (%esp)
	movl	28(%esp), %edx
	movl	$176160768, %ecx
	movss	20(%esp), %xmm3
	movl	$LC16, %eax
	movl	$0x00000000, 52(%esp)
	shrl	$13, %edx
	movss	%xmm3, 48(%esp)
	call	__ZN5ImGui10SelectableEPKcbiRK6ImVec2
	movl	%eax, %ebp
	call	__ZN5ImGui11PopStyleVarEi.constprop.0
	testb	$2, 18321(%esi)
	jne	L579
L451:
	movss	LC17, %xmm0
	mulss	14480(%esi), %xmm0
	cvttss2sil	%xmm0, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	addss	296(%ebx), %xmm0
	movss	%xmm0, 296(%ebx)
	jmp	L452
L578:
	movl	18556(%eax), %edx
	leal	-1(%edx), %ecx
	movl	%ecx, 18556(%eax)
	movl	18564(%eax), %ecx
	movl	-8(%ecx,%edx,4), %edx
	movl	%edx, 18284(%eax)
	jmp	L481
L574:
	movl	4(%eax,%edx,8), %eax
	testl	%eax, %eax
	je	L441
	testb	$16, 15(%eax)
	je	L441
	movl	18284(%esi), %edx
	movl	18556(%esi), %eax
	orb	$1, %dh
	movl	%edx, 16(%esp)
	movl	%edx, 18284(%esi)
	cmpl	18560(%esi), %eax
	je	L580
L444:
	movl	18564(%esi), %ecx
L447:
	movl	16(%esp), %edx
	movb	$1, 16(%esp)
	movl	%edx, (%ecx,%eax,4)
	addl	$1, 18556(%esi)
	jmp	L443
L579:
	movl	$1, 4(%esp)
	movl	24(%esp), %eax
	movl	%edi, %ecx
	movl	$0, (%esp)
	movl	32(%esp), %edx
	call	__ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	jmp	L451
L577:
	movzwl	416(%ebx), %eax
	xorps	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	movl	%edi, %ecx
	movss	36(%esp), %xmm7
	movl	$1, 4(%esp)
	cvtsi2ssl	%eax, %xmm0
	addss	32(%esp), %xmm0
	movl	$0, (%esp)
	addss	%xmm1, %xmm7
	movss	%xmm0, 24(%esp)
	movl	24(%esp), %eax
	movss	%xmm7, 24(%esp)
	movl	24(%esp), %edx
	call	__ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	movl	28(%esp), %eax
	xorps	%xmm1, %xmm1
	testl	%eax, %eax
	je	L452
	movl	_GImGui, %edi
	movss	44(%esp), %xmm0
	subss	40(%esp), %xmm0
	subss	20(%esp), %xmm0
	movl	14624(%edi), %eax
	movaps	%xmm0, %xmm6
	movl	%eax, 48(%esp)
	movl	14628(%edi), %eax
	cmpnless	%xmm1, %xmm6
	movl	%eax, 52(%esp)
	movl	14632(%edi), %eax
	andps	%xmm0, %xmm6
	movl	%eax, 56(%esp)
	movss	15516(%esi), %xmm0
	movl	14636(%edi), %eax
	movss	%xmm6, 28(%esp)
	movaps	%xmm0, %xmm3
	movss	%xmm0, 24(%esp)
	mulss	LC20, %xmm3
	movl	%eax, 60(%esp)
	leal	48(%esp), %eax
	movss	14404(%edi), %xmm1
	mulss	14636(%edi), %xmm1
	movss	%xmm3, 20(%esp)
	movss	%xmm1, 60(%esp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movss	20(%esp), %xmm3
	movss	LC0, %xmm4
	movss	24(%esp), %xmm0
	movl	676(%ebx), %esi
	movl	%eax, 44(%esp)
	movaps	%xmm4, %xmm2
	movaps	%xmm3, %xmm1
	divss	LC21, %xmm1
	movss	LC24, %xmm6
	cmpless	%xmm1, %xmm2
	movzwl	420(%ebx), %eax
	mulss	%xmm0, %xmm6
	mulss	LC25, %xmm0
	andps	%xmm2, %xmm1
	andnps	%xmm4, %xmm2
	orps	%xmm1, %xmm2
	movaps	%xmm2, %xmm5
	movss	%xmm2, 40(%esp)
	movss	LC3, %xmm2
	movaps	%xmm5, %xmm1
	mulss	LC22, %xmm5
	mulss	%xmm2, %xmm1
	mulss	%xmm2, %xmm0
	addss	36(%esp), %xmm0
	movaps	%xmm5, %xmm4
	xorps	%xmm5, %xmm5
	cvtsi2ssl	%eax, %xmm5
	addss	28(%esp), %xmm5
	subss	%xmm1, %xmm3
	addss	%xmm4, %xmm0
	addss	%xmm6, %xmm5
	addss	32(%esp), %xmm5
	movaps	%xmm3, %xmm1
	addss	%xmm3, %xmm0
	divss	LC23, %xmm1
	mulss	%xmm1, %xmm2
	addss	%xmm4, %xmm5
	movaps	%xmm0, %xmm4
	addss	%xmm1, %xmm5
	subss	%xmm2, %xmm4
	movaps	%xmm5, %xmm6
	movss	%xmm5, 20(%esp)
	movss	%xmm4, 24(%esp)
	subss	%xmm1, %xmm6
	subss	%xmm1, %xmm4
	movss	%xmm6, 48(%esp)
	movss	%xmm4, 52(%esp)
	movl	84(%esi), %eax
	cmpl	88(%esi), %eax
	je	L581
L460:
	movl	92(%esi), %edi
L463:
	movl	48(%esp), %edx
	movss	20(%esp), %xmm3
	movss	24(%esp), %xmm7
	movl	%edx, (%edi,%eax,8)
	movl	52(%esp), %edx
	movss	%xmm3, 48(%esp)
	movl	%edx, 4(%edi,%eax,8)
	movl	84(%esi), %ebx
	movl	88(%esi), %edx
	movss	%xmm7, 52(%esp)
	leal	1(%ebx), %eax
	movl	%eax, 84(%esi)
	cmpl	%eax, %edx
	je	L582
L466:
	movl	92(%esi), %edi
L469:
	addss	%xmm1, %xmm1
	movss	20(%esp), %xmm0
	movl	48(%esp), %edx
	movl	%edx, (%edi,%eax,8)
	movl	52(%esp), %edx
	addss	%xmm1, %xmm0
	movl	%edx, 4(%edi,%eax,8)
	movl	84(%esi), %ebx
	movl	88(%esi), %edx
	movss	%xmm0, 48(%esp)
	movss	24(%esp), %xmm0
	leal	1(%ebx), %eax
	movl	%eax, 84(%esi)
	subss	%xmm1, %xmm0
	movss	%xmm0, 52(%esp)
	cmpl	%eax, %edx
	je	L583
L473:
	movl	92(%esi), %edi
L476:
	movl	48(%esp), %edx
	movl	%edx, (%edi,%eax,8)
	movl	52(%esp), %edx
	movl	%edx, 4(%edi,%eax,8)
	movl	84(%esi), %eax
	addl	$1, %eax
	movl	%eax, 84(%esi)
	cmpl	$1, %eax
	jle	L480
	movl	44(%esp), %ecx
	cmpl	$16777215, %ecx
	jbe	L480
	movl	%ecx, 8(%esp)
	movss	40(%esp), %xmm0
	movl	%esi, %ecx
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	92(%esi), %eax
	movl	%eax, (%esp)
	call	__ZN10ImDrawList11AddPolylineEPK6ImVec2ijif.part.0
	.cfi_def_cfa_offset 68
	subl	$16, %esp
	.cfi_def_cfa_offset 84
L480:
	movl	$0, 84(%esi)
	jmp	L452
L576:
	movl	19228(%edx), %edx
	testl	%edx, %edx
	jne	L455
	movss	608(%eax), %xmm3
	movss	%xmm3, 44(%esp)
	jmp	L456
L580:
	leal	1(%eax), %ecx
	movl	%ecx, %edx
	testl	%eax, %eax
	jne	L445
	movl	$8, %eax
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%eax, 40(%esp)
L446:
	movl	40(%esp), %eax
	addl	$1, 188(%esi)
	movl	$0, 4(%esp)
	sall	$2, %eax
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %ecx
	movl	18564(%esi), %eax
	testl	%eax, %eax
	je	L448
	movl	18556(%esi), %edx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	sall	$2, %edx
	movl	%ecx, 44(%esp)
	movl	%edx, 8(%esp)
	call	_memcpy
	movl	18564(%esi), %eax
	movl	44(%esp), %ecx
	testl	%eax, %eax
	movl	%eax, %edx
	je	L449
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L449
	subl	$1, 188(%eax)
L449:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 44(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	44(%esp), %ecx
L448:
	movl	40(%esp), %eax
	movl	%ecx, 18564(%esi)
	movl	%eax, 18560(%esi)
	movl	18556(%esi), %eax
	jmp	L447
L445:
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	addl	%eax, %ecx
	cmpl	%edx, %ecx
	cmovl	%edx, %ecx
	movl	%ecx, 40(%esp)
	cmpl	%ecx, %eax
	jge	L444
	jmp	L446
L583:
	addl	$2, %ebx
	testl	%edx, %edx
	jne	L474
	movl	$8, %eax
	cmpl	%eax, %ebx
	cmovl	%eax, %ebx
L475:
	movl	_GImGui, %eax
	leal	0(,%ebx,8), %edx
	testl	%eax, %eax
	je	L477
	addl	$1, 188(%eax)
L477:
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	92(%esi), %edx
	movl	%eax, %edi
	testl	%edx, %edx
	je	L478
	movl	84(%esi), %eax
	movl	%edx, 4(%esp)
	movl	%edi, (%esp)
	sall	$3, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	92(%esi), %edx
	testl	%edx, %edx
	je	L479
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L479
	subl	$1, 188(%eax)
L479:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L478:
	movl	%edi, 92(%esi)
	movl	84(%esi), %eax
	movl	%ebx, 88(%esi)
	jmp	L476
L582:
	addl	$2, %ebx
	testl	%edx, %edx
	jne	L467
	movl	$8, %eax
	cmpl	%eax, %ebx
	cmovl	%eax, %ebx
L468:
	movl	_GImGui, %eax
	leal	0(,%ebx,8), %edx
	testl	%eax, %eax
	je	L470
	addl	$1, 188(%eax)
L470:
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	movss	%xmm1, 28(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	92(%esi), %edx
	movss	28(%esp), %xmm1
	movl	%eax, %edi
	testl	%edx, %edx
	je	L471
	movl	84(%esi), %eax
	movl	%edx, 4(%esp)
	movl	%edi, (%esp)
	sall	$3, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	92(%esi), %edx
	movss	28(%esp), %xmm1
	testl	%edx, %edx
	je	L472
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L472
	subl	$1, 188(%eax)
L472:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movss	%xmm1, 28(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movss	28(%esp), %xmm1
L471:
	movl	%edi, 92(%esi)
	movl	84(%esi), %eax
	movl	%ebx, 88(%esi)
	jmp	L469
L581:
	leal	1(%eax), %ebx
	testl	%eax, %eax
	jne	L461
	movl	$8, %eax
	cmpl	%eax, %ebx
	cmovl	%eax, %ebx
L462:
	addl	$1, 188(%edi)
	leal	0(,%ebx,8), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movss	%xmm1, 28(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	92(%esi), %edx
	movss	28(%esp), %xmm1
	movl	%eax, %edi
	testl	%edx, %edx
	je	L464
	movl	84(%esi), %eax
	movl	%edx, 4(%esp)
	movl	%edi, (%esp)
	sall	$3, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	92(%esi), %edx
	movss	28(%esp), %xmm1
	testl	%edx, %edx
	je	L465
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L465
	subl	$1, 188(%eax)
L465:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movss	%xmm1, 28(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movss	28(%esp), %xmm1
L464:
	movl	%edi, 92(%esi)
	movl	84(%esi), %eax
	movl	%ebx, 88(%esi)
	jmp	L463
L461:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	cmpl	%ebx, %edx
	cmovge	%edx, %ebx
	cmpl	%ebx, %eax
	jge	L460
	jmp	L462
L467:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	cmpl	%ebx, %edx
	cmovge	%edx, %ebx
	cmpl	%ebx, %eax
	jge	L466
	jmp	L468
L474:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	cmpl	%ebx, %edx
	cmovge	%edx, %ebx
	cmpl	%ebx, %eax
	jge	L473
	jmp	L475
	.cfi_endproc
LFE24:
	.section .rdata,"dr"
LC28:
	.ascii "##Foreground\0"
	.text
	.p2align 4
	.def	__ZN5ImGuiL25DockNodePreviewDockRenderEP11ImGuiWindowP13ImGuiDockNodeS1_PK20ImGuiDockPreviewData;	.scl	3;	.type	32;	.endef
__ZN5ImGuiL25DockNodePreviewDockRenderEP11ImGuiWindowP13ImGuiDockNodeS1_PK20ImGuiDockPreviewData:
LFB58:
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
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%edi, %ebx
	movl	%eax, %edi
	subl	$304, %esp
	movl	(%ebx), %eax
	movl	%edx, -144(%ebp)
	movl	$1, %edx
	movl	%ecx, -140(%ebp)
	movl	$LC28, %ecx
	movl	%eax, -128(%ebp)
	movl	_GImGui, %eax
	movl	%eax, -124(%ebp)
	movzbl	99(%eax), %ebx
	movl	48(%edi), %eax
	call	__ZL19GetViewportDrawListP14ImGuiViewportPjPKc.lto_priv.0
	movl	%eax, -168(%ebp)
	movl	%eax, -112(%ebp)
	movl	48(%esi), %eax
	cmpl	%eax, 48(%edi)
	je	L585
	testb	%bl, %bl
	je	L945
L586:
	movl	_GImGui, %ebx
	leal	-56(%ebp), %esi
	movss	LC27, %xmm0
	movl	15232(%ebx), %eax
	movl	%eax, -56(%ebp)
	movl	15236(%ebx), %eax
	movl	%eax, -52(%ebp)
	movl	15240(%ebx), %eax
	movl	%eax, -48(%ebp)
	movl	15244(%ebx), %eax
	movl	%eax, -44(%ebp)
	movss	14404(%ebx), %xmm7
	movl	%esi, %eax
	movss	15244(%ebx), %xmm5
	mulss	%xmm7, %xmm0
	movss	%xmm7, -132(%ebp)
	movss	%xmm5, -136(%ebp)
	mulss	%xmm5, %xmm0
	movss	%xmm0, -44(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movss	-132(%ebp), %xmm0
	mulss	LC5, %xmm0
	movl	%eax, -148(%ebp)
	movl	15232(%ebx), %eax
	mulss	-136(%ebp), %xmm0
	movl	%eax, -56(%ebp)
	movl	15236(%ebx), %eax
	movl	%eax, -52(%ebp)
	movl	15240(%ebx), %eax
	movl	%eax, -48(%ebp)
	movl	%esi, %eax
	movss	%xmm0, -44(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movss	-132(%ebp), %xmm0
	mulss	LC18, %xmm0
	movl	%eax, -164(%ebp)
	movl	15232(%ebx), %eax
	mulss	-136(%ebp), %xmm0
	movl	%eax, -56(%ebp)
	movl	15236(%ebx), %eax
	movl	%eax, -52(%ebp)
	movl	15240(%ebx), %eax
	movl	%eax, -48(%ebp)
	movl	%esi, %eax
	movss	%xmm0, -44(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movl	$1, -180(%ebp)
	movss	LC10, %xmm0
	movl	%eax, -192(%ebp)
L745:
	movl	15456(%ebx), %eax
	mulss	-132(%ebp), %xmm0
	movl	%eax, -56(%ebp)
	movl	15460(%ebx), %eax
	movl	%eax, -52(%ebp)
	movl	15464(%ebx), %eax
	movl	%eax, -48(%ebp)
	movl	15468(%ebx), %eax
	movl	%eax, -44(%ebp)
	mulss	15468(%ebx), %xmm0
	movl	%esi, %eax
	movss	%xmm0, -44(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movl	%eax, -136(%ebp)
	movl	-140(%ebp), %eax
	movl	940(%eax), %edx
	movl	-128(%ebp), %eax
	movzbl	164(%eax), %eax
	testl	%edx, %edx
	je	L588
	movl	36(%edx), %edx
	testl	%edx, %edx
	jle	L589
L588:
	testb	%al, %al
	jne	L590
L591:
	movl	-124(%ebp), %eax
	movl	%esi, -140(%ebp)
	movl	$-1, %ebx
	movss	LC23, %xmm1
	movl	-144(%ebp), %esi
	movss	14472(%eax), %xmm5
	movl	-128(%ebp), %eax
	movaps	%xmm5, %xmm0
	movaps	%xmm5, %xmm2
	addl	$180, %eax
	cmpnless	%xmm1, %xmm0
	andps	%xmm0, %xmm2
	andnps	%xmm1, %xmm0
	orps	%xmm0, %xmm2
	movss	%xmm2, -132(%ebp)
L741:
	movss	(%eax), %xmm0
	movss	8(%eax), %xmm1
	comiss	%xmm1, %xmm0
	ja	L732
	movss	4(%eax), %xmm2
	movss	12(%eax), %xmm3
	comiss	%xmm3, %xmm2
	ja	L732
	movl	(%eax), %edx
	unpcklps	%xmm3, %xmm1
	unpcklps	%xmm2, %xmm0
	movl	-128(%ebp), %edi
	movlhps	%xmm1, %xmm0
	movl	-164(%ebp), %ecx
	movss	LC33, %xmm2
	movss	LC12, %xmm1
	movl	%edx, -56(%ebp)
	movl	4(%eax), %edx
	shufps	$0, %xmm2, %xmm2
	addps	%xmm0, %xmm2
	shufps	$0, %xmm1, %xmm1
	addps	%xmm1, %xmm0
	movl	%edx, -52(%ebp)
	movl	8(%eax), %edx
	movaps	%xmm2, %xmm4
	movaps	%xmm2, %xmm3
	movl	%edx, -48(%ebp)
	movl	12(%eax), %edx
	movaps	%xmm0, %xmm1
	movaps	%xmm0, %xmm5
	shufps	$85, %xmm0, %xmm1
	unpckhps	%xmm2, %xmm3
	shufps	$228, %xmm2, %xmm0
	shufps	$255, %xmm2, %xmm4
	movl	%edx, -44(%ebp)
	movups	%xmm0, -72(%ebp)
	cmpl	%ebx, 172(%edi)
	jne	L733
	cmpb	$0, 167(%edi)
	cmovne	-192(%ebp), %ecx
L733:
	movaps	%xmm4, %xmm0
	xorps	%xmm7, %xmm7
	movl	%ecx, -160(%ebp)
	movss	LC3, %xmm2
	addss	%xmm1, %xmm0
	leal	-112(%ebp), %edi
	movl	%eax, -184(%ebp)
	movl	%esi, -188(%ebp)
	movss	%xmm4, -168(%ebp)
	mulss	%xmm2, %xmm0
	movss	%xmm3, -176(%ebp)
	movss	%xmm1, -204(%ebp)
	movss	%xmm5, -208(%ebp)
	cvttss2sil	%xmm0, %edx
	movaps	%xmm3, %xmm0
	addss	%xmm5, %xmm0
	mulss	%xmm2, %xmm0
	cvtsi2ssl	%edx, %xmm7
	movss	%xmm7, -196(%ebp)
	xorps	%xmm7, %xmm7
	cvttss2sil	%xmm0, %edx
	cvtsi2ssl	%edx, %xmm7
	movl	-180(%ebp), %edx
	leal	(%edi,%edx,4), %edx
	movl	%edx, -144(%ebp)
	leal	-2(%ebx), %edx
	movl	%edx, -148(%ebp)
	leal	-48(%ebp), %edx
	movl	%edx, -152(%ebp)
	movss	%xmm7, -200(%ebp)
L737:
	movl	(%edi), %esi
	movl	$0, 12(%esp)
	movl	-160(%ebp), %eax
	movl	%esi, %ecx
	movl	%eax, 8(%esp)
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	movss	-132(%ebp), %xmm0
	call	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movl	-136(%ebp), %eax
	subl	$16, %esp
	cmpl	$16777215, %eax
	jbe	L734
	movl	%eax, 4(%esp)
	leal	-72(%ebp), %eax
	movl	%esi, %ecx
	movl	$0x3f800000, 8(%esp)
	movl	%eax, (%esp)
	movss	-132(%ebp), %xmm2
	movss	-168(%ebp), %xmm1
	movss	-176(%ebp), %xmm0
	call	__ZN10ImDrawList7AddRectERK6ImVec2S2_jfif.part.0.constprop.0.isra.0
	subl	$12, %esp
L734:
	cmpl	$1, %ebx
	jbe	L946
	cmpl	$1, -148(%ebp)
	jbe	L947
L736:
	addl	$4, %edi
	cmpl	-144(%ebp), %edi
	jne	L737
	movl	-184(%ebp), %eax
	movl	-188(%ebp), %esi
L732:
	testl	%esi, %esi
	je	L738
	testb	$16, 16(%esi)
	jne	L933
L738:
	movl	-124(%ebp), %ecx
	cmpb	$0, 96(%ecx)
	jne	L933
	addl	$1, %ebx
	addl	$16, %eax
	cmpl	$4, %ebx
	jne	L741
L933:
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
L590:
	.cfi_restore_state
	movl	-128(%ebp), %edx
	movss	52(%edx), %xmm0
	movss	60(%edx), %xmm2
	movss	56(%edx), %xmm1
	movss	64(%edx), %xmm5
	addss	%xmm0, %xmm2
	movaps	%xmm0, %xmm3
	addss	%xmm1, %xmm5
	unpcklps	%xmm1, %xmm3
	movaps	%xmm2, %xmm4
	unpcklps	%xmm5, %xmm4
	movlhps	%xmm4, %xmm3
	movups	%xmm3, -56(%ebp)
	cmpl	$-1, 172(%edx)
	je	L948
L743:
	movl	-180(%ebp), %ecx
	leal	-112(%ebp), %ebx
	movb	%al, -176(%ebp)
	leal	(%ebx,%ecx,4), %ecx
	movl	%ecx, -152(%ebp)
	leal	-48(%ebp), %ecx
	movl	%ecx, -160(%ebp)
L597:
	movss	72(%edi), %xmm4
	movss	80(%edi), %xmm6
	addl	$4, %ebx
	movl	-4(%ebx), %ecx
	movss	68(%edi), %xmm3
	addss	%xmm4, %xmm6
	movl	%ecx, -132(%ebp)
	movss	%xmm6, 16(%esp)
	movss	76(%edi), %xmm6
	movss	%xmm4, 8(%esp)
	addss	%xmm3, %xmm6
	movss	%xmm3, 4(%esp)
	movss	%xmm5, (%esp)
	movss	%xmm6, 12(%esp)
	call	__ZN5ImGui30CalcRoundingFlagsForRectInRectERK6ImRectS2_f.constprop.0.isra.0
	movss	124(%edi), %xmm0
	movl	%eax, 12(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-160(%ebp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	movl	-132(%ebp), %ecx
	call	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	subl	$16, %esp
	cmpl	-152(%ebp), %ebx
	jne	L595
	movl	-128(%ebp), %ecx
	movzbl	-176(%ebp), %eax
	testb	%al, 164(%ecx)
	je	L591
L596:
	movl	-128(%ebp), %eax
	cmpl	$-1, 172(%eax)
	jne	L591
	cmpb	$0, 165(%eax)
	je	L591
	movl	-128(%ebp), %ecx
	movl	_GImGui, %eax
	movss	52(%ecx), %xmm0
	movss	56(%ecx), %xmm4
	movss	14464(%eax), %xmm3
	movzbl	160(%ecx), %edx
	movaps	%xmm0, %xmm5
	addss	60(%ecx), %xmm0
	movss	%xmm4, -152(%ebp)
	movss	14424(%eax), %xmm4
	movss	15516(%eax), %xmm2
	movss	14468(%eax), %xmm1
	addss	%xmm4, %xmm5
	subss	%xmm4, %xmm0
	addss	%xmm3, %xmm5
	movaps	%xmm0, %xmm7
	subss	%xmm3, %xmm7
	movss	%xmm5, -204(%ebp)
	movss	%xmm7, -236(%ebp)
	testb	$8, %dl
	je	L598
	subss	%xmm2, %xmm7
	movss	%xmm7, -236(%ebp)
L598:
	andl	$16, %edx
	je	L600
	movl	14444(%eax), %edx
	testl	%edx, %edx
	jne	L601
	movss	14488(%eax), %xmm0
	addss	%xmm2, %xmm0
	addss	-204(%ebp), %xmm0
	movss	%xmm0, -204(%ebp)
L600:
	movl	-144(%ebp), %ecx
	testl	%ecx, %ecx
	je	L603
	movl	48(%ecx), %eax
	testl	%eax, %eax
	je	L603
	movl	-124(%ebp), %edx
	movss	14488(%edx), %xmm0
	testb	$48, 17(%ecx)
	je	L604
	movl	44(%ecx), %eax
	movss	%xmm0, -148(%ebp)
	movss	%xmm1, -176(%ebp)
	movl	(%eax), %eax
	movss	%xmm2, -160(%ebp)
	call	__ZN5ImGui15TabItemCalcSizeEP11ImGuiWindow
	movss	-148(%ebp), %xmm0
	movss	-160(%ebp), %xmm2
	movl	%eax, -132(%ebp)
	addss	-132(%ebp), %xmm0
	addss	-204(%ebp), %xmm0
	movss	-176(%ebp), %xmm1
	movss	%xmm0, -148(%ebp)
L605:
	movl	-140(%ebp), %eax
	movl	940(%eax), %eax
	movl	%eax, -224(%ebp)
	testl	%eax, %eax
	je	L748
	movl	48(%eax), %eax
	movl	%eax, -224(%ebp)
	testl	%eax, %eax
	je	L748
	movl	(%eax), %eax
	movl	%eax, -212(%ebp)
	testl	%eax, %eax
	jle	L591
L606:
	addss	%xmm1, %xmm1
	addss	-152(%ebp), %xmm2
	movl	-180(%ebp), %eax
	movl	%edi, -232(%ebp)
	movl	%esi, -132(%ebp)
	xorl	%edi, %edi
	leal	-112(%ebp,%eax,4), %eax
	addss	%xmm1, %xmm2
	movl	%eax, -260(%ebp)
	movss	%xmm2, -248(%ebp)
	jmp	L729
	.p2align 4,,10
	.p2align 3
L934:
	movl	%eax, -184(%ebp)
L607:
	movl	-232(%ebp), %edx
	movl	-184(%ebp), %eax
	call	__ZL24DockNodeIsDropAllowedOneP11ImGuiWindowS0_
	testb	%al, %al
	jne	L949
L609:
	addl	$1, %edi
	cmpl	-212(%ebp), %edi
	je	L944
L729:
	movl	-224(%ebp), %eax
	testl	%eax, %eax
	je	L749
	movl	8(%eax), %edx
L608:
	leal	(%edi,%edi,2), %eax
	sall	$4, %eax
	movl	8(%edx,%eax), %eax
	testl	%eax, %eax
	jne	L934
	addl	$1, %edi
	cmpl	-212(%ebp), %edi
	jne	L608
L944:
	movl	-132(%ebp), %esi
	jmp	L591
	.p2align 4,,10
	.p2align 3
L589:
	testb	%al, %al
	je	L591
	movl	-128(%ebp), %eax
	movss	52(%eax), %xmm0
	movss	60(%eax), %xmm2
	movss	56(%eax), %xmm1
	movss	64(%eax), %xmm5
	addss	%xmm0, %xmm2
	movaps	%xmm0, %xmm3
	addss	%xmm1, %xmm5
	unpcklps	%xmm1, %xmm3
	movaps	%xmm2, %xmm4
	unpcklps	%xmm5, %xmm4
	movlhps	%xmm4, %xmm3
	movups	%xmm3, -56(%ebp)
	cmpl	$-1, 172(%eax)
	jne	L593
	movl	-128(%ebp), %eax
	cmpb	$0, 165(%eax)
	je	L591
L593:
	xorl	%eax, %eax
	jmp	L743
	.p2align 4,,10
	.p2align 3
L945:
	movl	$LC28, %ecx
	movl	$1, %edx
	call	__ZL19GetViewportDrawListP14ImGuiViewportPjPKc.lto_priv.0
	movl	$2, -180(%ebp)
	movl	%eax, -108(%ebp)
L587:
	movl	_GImGui, %ebx
	leal	-56(%ebp), %esi
	movss	LC24, %xmm0
	movl	15232(%ebx), %eax
	movl	%eax, -56(%ebp)
	movl	15236(%ebx), %eax
	movl	%eax, -52(%ebp)
	movl	15240(%ebx), %eax
	movl	%eax, -48(%ebp)
	movl	15244(%ebx), %eax
	movl	%eax, -44(%ebp)
	movss	14404(%ebx), %xmm7
	movl	%esi, %eax
	movss	15244(%ebx), %xmm6
	mulss	%xmm7, %xmm0
	movss	%xmm7, -132(%ebp)
	movss	%xmm6, -136(%ebp)
	mulss	%xmm6, %xmm0
	movss	%xmm0, -44(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movss	-132(%ebp), %xmm0
	mulss	LC35, %xmm0
	movl	%eax, -148(%ebp)
	movl	15232(%ebx), %eax
	mulss	-136(%ebp), %xmm0
	movl	%eax, -56(%ebp)
	movl	15236(%ebx), %eax
	movl	%eax, -52(%ebp)
	movl	15240(%ebx), %eax
	movl	%eax, -48(%ebp)
	movl	%esi, %eax
	movss	%xmm0, -44(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movss	-136(%ebp), %xmm6
	mulss	-132(%ebp), %xmm6
	movl	%eax, -164(%ebp)
	movl	15232(%ebx), %eax
	movl	%eax, -56(%ebp)
	movl	15236(%ebx), %eax
	movl	%eax, -52(%ebp)
	movl	15240(%ebx), %eax
	movss	%xmm6, -44(%ebp)
	movl	%eax, -48(%ebp)
	movl	%esi, %eax
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movss	LC27, %xmm0
	movl	%eax, -192(%ebp)
	jmp	L745
	.p2align 4,,10
	.p2align 3
L595:
	movss	-56(%ebp), %xmm0
	movss	-52(%ebp), %xmm1
	movss	-48(%ebp), %xmm2
	movss	-44(%ebp), %xmm5
	jmp	L597
	.p2align 4,,10
	.p2align 3
L585:
	testb	%bl, %bl
	jne	L586
	movl	$1, -180(%ebp)
	jmp	L587
	.p2align 4,,10
	.p2align 3
L948:
	movl	-128(%ebp), %eax
	movzbl	165(%eax), %eax
	testb	%al, %al
	je	L596
	movss	14468(%ebx), %xmm3
	addss	%xmm3, %xmm3
	addss	15516(%ebx), %xmm3
	addss	%xmm3, %xmm1
	movss	%xmm1, -52(%ebp)
	jmp	L743
	.p2align 4,,10
	.p2align 3
L749:
	movl	-140(%ebp), %eax
	movl	%eax, -184(%ebp)
	jmp	L607
	.p2align 4,,10
	.p2align 3
L949:
	movl	-184(%ebp), %esi
	movl	%esi, %eax
	call	__ZN5ImGui15TabItemCalcSizeEP11ImGuiWindow
	movss	-148(%ebp), %xmm7
	movl	_GImGui, %ebx
	movl	%eax, -176(%ebp)
	movl	-124(%ebp), %eax
	movaps	%xmm7, %xmm2
	movss	-176(%ebp), %xmm0
	movl	%edx, -160(%ebp)
	movss	-160(%ebp), %xmm6
	addss	-152(%ebp), %xmm6
	addss	%xmm0, %xmm2
	movl	924(%esi), %ecx
	movl	912(%esi), %edx
	addss	14488(%eax), %xmm0
	movl	%ecx, -240(%ebp)
	movss	%xmm6, -216(%ebp)
	addss	%xmm7, %xmm0
	movss	%xmm0, -264(%ebp)
	movss	14404(%ebx), %xmm0
	comiss	LC0, %xmm0
	jnb	L610
	fnstcw	-118(%ebp)
	movl	%edx, %eax
	xorps	%xmm1, %xmm1
	andl	$16777215, %edx
	shrl	$24, %eax
	cvtsi2ssl	%eax, %xmm1
	movzwl	-118(%ebp), %eax
	orb	$12, %ah
	movw	%ax, -120(%ebp)
	mulss	%xmm0, %xmm1
	movss	%xmm1, -160(%ebp)
	flds	-160(%ebp)
	xorps	%xmm1, %xmm1
	fldcw	-120(%ebp)
	fistpq	-160(%ebp)
	fldcw	-118(%ebp)
	movl	-160(%ebp), %eax
	sall	$24, %eax
	orl	%eax, %edx
	movl	%ecx, %eax
	andl	$16777215, %ecx
	shrl	$24, %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, -160(%ebp)
	flds	-160(%ebp)
	fldcw	-120(%ebp)
	fistpq	-160(%ebp)
	fldcw	-118(%ebp)
	movl	-160(%ebp), %eax
	sall	$24, %eax
	orl	%ecx, %eax
	movl	%eax, -240(%ebp)
L610:
	movl	$0, -56(%ebp)
	movl	14624(%ebx), %eax
	movl	%eax, -52(%ebp)
	movl	14628(%ebx), %eax
	movl	%eax, -48(%ebp)
	movl	14632(%ebx), %eax
	movl	%eax, -44(%ebp)
	movl	14636(%ebx), %eax
	movl	%eax, -40(%ebp)
	movl	18508(%ebx), %eax
	cmpl	18512(%ebx), %eax
	je	L950
L611:
	movl	18516(%ebx), %esi
L614:
	leal	(%eax,%eax,4), %eax
	xorps	%xmm0, %xmm0
	xorps	%xmm3, %xmm3
	movl	%edi, -272(%ebp)
	leal	(%esi,%eax,4), %eax
	movl	-132(%ebp), %esi
	xorps	%xmm1, %xmm1
	xorps	%xmm4, %xmm4
	movaps	%xmm2, %xmm7
	subss	-148(%ebp), %xmm7
	movss	%xmm2, -188(%ebp)
	movl	(%esi), %ecx
	movl	%ecx, (%eax)
	movl	4(%esi), %ecx
	movss	%xmm7, -228(%ebp)
	movl	%ecx, 4(%eax)
	movl	8(%esi), %ecx
	movl	%ecx, 8(%eax)
	movl	12(%esi), %ecx
	movl	%ecx, 12(%eax)
	movl	16(%esi), %ecx
	movl	%ecx, 16(%eax)
	movzbl	%dl, %eax
	cvtsi2ssl	%eax, %xmm0
	movzbl	%dh, %eax
	addl	$1, 18508(%ebx)
	cvtsi2ssl	%eax, %xmm3
	movl	%edx, %eax
	shrl	$24, %edx
	shrl	$16, %eax
	cvtsi2ssl	%edx, %xmm4
	cmpl	$16777215, -240(%ebp)
	movzbl	%al, %eax
	setbe	-253(%ebp)
	cvtsi2ssl	%eax, %xmm1
	leal	-112(%ebp), %eax
	unpcklps	%xmm3, %xmm0
	movl	%eax, -208(%ebp)
	movl	-168(%ebp), %eax
	movl	%eax, %edi
	unpcklps	%xmm4, %xmm1
	movlhps	%xmm1, %xmm0
	mulps	LC29, %xmm0
	movups	%xmm0, 14624(%ebx)
L728:
	movl	-184(%ebp), %eax
	movss	-148(%ebp), %xmm4
	comiss	-204(%ebp), %xmm4
	movl	12(%eax), %eax
	movl	%eax, -244(%ebp)
	jb	L621
	movss	-152(%ebp), %xmm7
	comiss	%xmm7, %xmm7
	jb	L621
L727:
	movss	-236(%ebp), %xmm7
	comiss	-188(%ebp), %xmm7
	jb	L621
	movss	-248(%ebp), %xmm6
	comiss	-216(%ebp), %xmm6
	jnb	L622
	.p2align 4
	.p2align 3
L621:
	movl	$0, 4(%esp)
	movss	-248(%ebp), %xmm7
	movl	%edi, %ecx
	movss	%xmm7, (%esp)
	movss	-236(%ebp), %xmm2
	movss	-152(%ebp), %xmm1
	movss	-204(%ebp), %xmm0
	call	__ZN10ImDrawList12PushClipRectERK6ImVec2S2_b.isra.0
	subl	$8, %esp
L622:
	movl	_GImGui, %eax
	xorps	%xmm7, %xmm7
	movss	LC3, %xmm0
	mulss	-228(%ebp), %xmm0
	movss	-148(%ebp), %xmm6
	subss	LC0, %xmm0
	movss	14540(%eax), %xmm1
	movl	%eax, -176(%ebp)
	movss	%xmm6, -56(%ebp)
	minss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	cmpnless	%xmm7, %xmm0
	addss	-216(%ebp), %xmm7
	andps	%xmm1, %xmm0
	movss	%xmm7, -52(%ebp)
	movss	LC0, %xmm1
	movl	84(%edi), %eax
	addss	-152(%ebp), %xmm1
	movss	%xmm7, -160(%ebp)
	cmpl	88(%edi), %eax
	je	L951
L626:
	movl	92(%edi), %ebx
L629:
	movl	-132(%ebp), %ecx
	movaps	%xmm1, %xmm7
	movss	-148(%ebp), %xmm6
	addss	%xmm0, %xmm7
	movl	(%ecx), %edx
	addss	%xmm0, %xmm6
	movl	%edx, (%ebx,%eax,8)
	movl	4(%ecx), %edx
	movss	%xmm7, -196(%ebp)
	movl	%edx, 4(%ebx,%eax,8)
	movl	84(%edi), %edx
	movss	%xmm6, -220(%ebp)
	leal	1(%edx), %eax
	movl	%eax, 84(%edi)
	movss	%xmm7, -52(%ebp)
	movss	LC3, %xmm7
	movss	%xmm6, -56(%ebp)
	comiss	%xmm0, %xmm7
	ja	L952
	movl	$36, 8(%esp)
	movl	%edi, %ecx
	movl	$24, 4(%esp)
	movl	-132(%ebp), %esi
	movl	%esi, (%esp)
	movss	%xmm0, -200(%ebp)
	call	__ZN10ImDrawList16_PathArcToFastExERK6ImVec2fiii.constprop.0
	movss	-200(%ebp), %xmm0
	movss	-188(%ebp), %xmm7
	movl	%edi, %ecx
	movss	-196(%ebp), %xmm6
	subl	$12, %esp
	subss	%xmm0, %xmm7
	movss	%xmm6, -52(%ebp)
	movss	%xmm7, -200(%ebp)
	movss	%xmm7, -56(%ebp)
	movl	$48, 8(%esp)
	movl	$36, 4(%esp)
	movl	%esi, (%esp)
	movss	%xmm0, -252(%ebp)
	call	__ZN10ImDrawList16_PathArcToFastExERK6ImVec2fiii.constprop.0
	movl	84(%edi), %eax
	movss	-252(%ebp), %xmm0
	subl	$12, %esp
L643:
	movss	-188(%ebp), %xmm7
	movss	%xmm7, -56(%ebp)
	movss	-160(%ebp), %xmm7
	movss	%xmm7, -52(%ebp)
	cmpl	%eax, 88(%edi)
	je	L953
L650:
	movl	92(%edi), %ebx
L652:
	movl	-132(%ebp), %ecx
	movl	(%ecx), %edx
	movl	%edx, (%ebx,%eax,8)
	movl	4(%ecx), %edx
	movl	%edx, 4(%ebx,%eax,8)
	movl	84(%edi), %eax
	addl	$1, %eax
	movl	%eax, 84(%edi)
	cmpl	$2, %eax
	jle	L656
	cmpb	$0, -253(%ebp)
	jne	L656
	movl	-240(%ebp), %ecx
	movss	%xmm0, -252(%ebp)
	movl	%eax, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	92(%edi), %eax
	movl	%edi, %ecx
	movl	%eax, (%esp)
	call	__ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij.part.0
	movss	-252(%ebp), %xmm0
	subl	$12, %esp
L656:
	movl	-176(%ebp), %eax
	movl	$0, 84(%edi)
	xorps	%xmm4, %xmm4
	movss	14544(%eax), %xmm1
	comiss	%xmm4, %xmm1
	ja	L657
	movl	_GImGui, %eax
	movl	%eax, -220(%ebp)
L658:
	movl	-124(%ebp), %ecx
	movl	-184(%ebp), %eax
	xorl	%edx, %edx
	movss	LC15, %xmm0
	movss	14464(%ecx), %xmm2
	movss	14468(%ecx), %xmm7
	movl	$1, %ecx
	movl	4(%eax), %eax
	movss	%xmm2, -196(%ebp)
	movl	%eax, -200(%ebp)
	movss	%xmm7, -160(%ebp)
	call	__ZN5ImGui12CalcTextSizeEPKcS1_bf
	movss	LC0, %xmm6
	comiss	-228(%ebp), %xmm6
	movl	%eax, -176(%ebp)
	movl	%edx, -172(%ebp)
	jnb	L689
	movss	-188(%ebp), %xmm7
	movss	-196(%ebp), %xmm2
	movss	-148(%ebp), %xmm6
	movss	-216(%ebp), %xmm3
	movaps	%xmm7, %xmm4
	movss	-160(%ebp), %xmm0
	addss	-152(%ebp), %xmm0
	subss	%xmm2, %xmm4
	movaps	%xmm6, %xmm1
	addss	%xmm2, %xmm1
	movaps	%xmm4, %xmm5
	unpcklps	%xmm3, %xmm5
	movaps	%xmm1, %xmm3
	unpcklps	%xmm0, %xmm3
	movaps	%xmm3, %xmm0
	movlhps	%xmm5, %xmm0
	movups	%xmm0, -72(%ebp)
	testb	$16, -242(%ebp)
	je	L690
	addss	%xmm2, %xmm2
	movaps	%xmm7, %xmm0
	movl	-220(%ebp), %ecx
	movss	15516(%ecx), %xmm3
	subss	%xmm2, %xmm0
	movaps	%xmm0, %xmm2
	subss	%xmm3, %xmm2
	movaps	%xmm2, %xmm0
	cmpless	%xmm6, %xmm0
	andps	%xmm0, %xmm6
	andnps	%xmm2, %xmm0
	movaps	%xmm3, %xmm2
	orps	%xmm6, %xmm0
	addss	%xmm0, %xmm2
	comiss	%xmm2, %xmm7
	jb	L690
	movss	14468(%ecx), %xmm1
	movss	-152(%ebp), %xmm5
	movss	%xmm4, -244(%ebp)
	movl	14624(%ecx), %eax
	movss	%xmm3, -220(%ebp)
	addss	%xmm3, %xmm5
	addss	%xmm1, %xmm1
	movss	%xmm0, -252(%ebp)
	addss	%xmm1, %xmm5
	movss	14464(%ecx), %xmm1
	movl	%eax, -56(%ebp)
	movl	14628(%ecx), %eax
	addss	%xmm1, %xmm1
	movl	%eax, -52(%ebp)
	movl	14632(%ecx), %eax
	movss	%xmm5, -196(%ebp)
	addss	%xmm2, %xmm1
	movl	%eax, -48(%ebp)
	movl	14636(%ecx), %eax
	movl	%eax, -44(%ebp)
	movl	-132(%ebp), %eax
	movss	%xmm1, -160(%ebp)
	movss	14636(%ecx), %xmm1
	mulss	14404(%ecx), %xmm1
	movss	%xmm1, -44(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movss	-252(%ebp), %xmm0
	movss	-196(%ebp), %xmm1
	addss	-160(%ebp), %xmm0
	addss	-152(%ebp), %xmm1
	mulss	LC3, %xmm0
	mulss	LC3, %xmm1
	movss	%xmm0, -160(%ebp)
	movl	-160(%ebp), %edx
	movss	%xmm1, -160(%ebp)
	movl	-160(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__ZN5ImGui12RenderBulletEP10ImDrawList6ImVec2j
	movss	-64(%ebp), %xmm2
	movss	-72(%ebp), %xmm1
	movss	-220(%ebp), %xmm3
	movss	-244(%ebp), %xmm4
	mulss	LC10, %xmm3
	movl	_GImGui, %eax
	movss	-60(%ebp), %xmm6
	movl	%eax, -220(%ebp)
	subss	%xmm3, %xmm4
	subss	%xmm3, %xmm2
	movaps	%xmm4, %xmm5
	movss	%xmm2, -64(%ebp)
L692:
	movl	-200(%ebp), %eax
	movl	%eax, %ebx
	cmpl	$-1, %eax
	jne	L693
	jmp	L694
	.p2align 4,,10
	.p2align 3
L696:
	addl	$1, %ebx
	cmpl	$-1, %ebx
	je	L694
L693:
	movzbl	(%ebx), %eax
	testb	%al, %al
	je	L694
	cmpb	$35, %al
	jne	L696
	cmpb	$35, 1(%ebx)
	jne	L696
	.p2align 4
	.p2align 3
L694:
	movl	-176(%ebp), %eax
	movaps	%xmm2, %xmm0
	movl	-172(%ebp), %edx
	subss	%xmm1, %xmm0
	movl	%eax, -104(%ebp)
	movss	-104(%ebp), %xmm3
	movl	%edx, -100(%ebp)
	comiss	%xmm0, %xmm3
	jbe	L932
	movl	44(%edi), %eax
	movaps	%xmm5, %xmm0
	movaps	%xmm5, %xmm3
	movl	$0, -116(%ebp)
	movss	%xmm4, -176(%ebp)
	cmpnless	%xmm2, %xmm0
	movl	8(%eax), %ecx
	movss	12(%eax), %xmm7
	leal	-116(%ebp), %eax
	movss	%xmm6, -276(%ebp)
	movss	%xmm5, -160(%ebp)
	movss	LC0, %xmm5
	movaps	%xmm7, %xmm4
	divss	16(%ecx), %xmm4
	movss	%xmm4, -244(%ebp)
	andps	%xmm0, %xmm3
	mulss	64(%ecx), %xmm4
	andnps	%xmm2, %xmm0
	movl	%ecx, -252(%ebp)
	xorps	%xmm2, %xmm2
	orps	%xmm3, %xmm0
	movss	%xmm7, -196(%ebp)
	subss	%xmm4, %xmm0
	movss	%xmm4, -268(%ebp)
	movl	%eax, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	-200(%ebp), %eax
	subss	%xmm1, %xmm0
	movss	LC0, %xmm1
	movl	%eax, (%esp)
	cmpless	%xmm0, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm5, %xmm1
	orps	%xmm0, %xmm1
	movaps	%xmm7, %xmm0
	call	__ZNK6ImFont13CalcTextSizeAEfffPKcS1_PS1_
	movl	-116(%ebp), %esi
	movss	-160(%ebp), %xmm5
	subl	$12, %esp
	cmpl	%esi, -200(%ebp)
	movss	-176(%ebp), %xmm4
	movss	-276(%ebp), %xmm6
	jne	L762
	cmpl	%ebx, %esi
	jb	L701
L762:
	movl	%eax, -160(%ebp)
	movss	-160(%ebp), %xmm3
L703:
	movl	-200(%ebp), %ecx
	cmpl	%esi, %ecx
	jnb	L704
	movl	%ebx, -280(%ebp)
	movl	%esi, %eax
	movl	%ecx, %ebx
	movl	%edi, -288(%ebp)
	movl	-252(%ebp), %edi
	movss	%xmm5, -276(%ebp)
	movss	%xmm4, -284(%ebp)
	movss	%xmm6, -292(%ebp)
	jmp	L706
	.p2align 4,,10
	.p2align 3
L763:
	leal	-1(%eax), %esi
	movss	%xmm3, -176(%ebp)
	xorps	%xmm2, %xmm2
	movl	%edi, %ecx
	movss	LC31, %xmm1
	movl	%eax, 4(%esp)
	movl	$0, 8(%esp)
	movl	%esi, (%esp)
	movss	-196(%ebp), %xmm0
	call	__ZNK6ImFont13CalcTextSizeAEfffPKcS1_PS1_
	movss	-176(%ebp), %xmm3
	subl	$12, %esp
	movl	%eax, -160(%ebp)
	subss	-160(%ebp), %xmm3
	cmpl	%esi, %ebx
	je	L954
	movl	%esi, %eax
L706:
	movzbl	-1(%eax), %edx
	cmpb	$32, %dl
	je	L763
	cmpb	$9, %dl
	je	L763
	movss	-276(%ebp), %xmm5
	movl	-280(%ebp), %ebx
	movl	%eax, %esi
	movss	-284(%ebp), %xmm4
	movl	-288(%ebp), %edi
	movss	-292(%ebp), %xmm6
L704:
	leal	-72(%ebp), %edx
	leal	-80(%ebp), %eax
	movss	%xmm5, -176(%ebp)
	movss	%xmm3, -160(%ebp)
	movl	$0x00000000, -80(%ebp)
	movl	$0x00000000, -76(%ebp)
	movl	%edx, -288(%ebp)
	movss	%xmm4, -56(%ebp)
	movss	%xmm6, -52(%ebp)
	movl	%eax, 12(%esp)
	leal	-104(%ebp), %eax
	movl	$0, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	-200(%ebp), %eax
	movl	%eax, (%esp)
	movl	-132(%ebp), %ecx
	movl	%edi, %eax
	call	__ZN5ImGui19RenderTextClippedExEP10ImDrawListRK6ImVec2S4_PKcS6_PS3_S4_PK6ImRect
	movss	-160(%ebp), %xmm3
	xorps	%xmm0, %xmm0
	addss	-72(%ebp), %xmm3
	movss	-268(%ebp), %xmm1
	movss	-176(%ebp), %xmm5
	cvttss2sil	%xmm3, %eax
	cvtsi2ssl	%eax, %xmm0
	addss	%xmm0, %xmm1
	comiss	%xmm1, %xmm5
	jb	L719
	movl	-252(%ebp), %ecx
	cmpw	$0, 62(%ecx)
	jle	L719
	cvttss2sil	-68(%ebp), %eax
	movss	-196(%ebp), %xmm4
	xorps	%xmm5, %xmm5
	xorps	%xmm1, %xmm1
	comiss	%xmm1, %xmm4
	cvtsi2ssl	%eax, %xmm5
	movss	%xmm5, -268(%ebp)
	jb	L955
	movl	%edi, -176(%ebp)
	xorl	%esi, %esi
	movl	-252(%ebp), %edi
	movl	%ebx, -292(%ebp)
	movss	%xmm0, -160(%ebp)
	jmp	L709
	.p2align 4,,10
	.p2align 3
L715:
	movl	28(%edi), %eax
	movzwl	(%eax,%ebx,2), %eax
	cmpw	$-1, %ax
	je	L943
	leal	(%eax,%eax,4), %ebx
	movl	40(%edi), %eax
	leal	(%eax,%ebx,8), %eax
L716:
	testl	%eax, %eax
	je	L718
	movzbl	(%eax), %ebx
	testb	$2, %bl
	je	L718
	andl	$1, %ebx
	xorps	%xmm3, %xmm3
	xorps	%xmm4, %xmm4
	movss	-196(%ebp), %xmm0
	negl	%ebx
	divss	16(%edi), %xmm0
	movss	%xmm0, -280(%ebp)
	andl	$16777215, %ebx
	orl	%ecx, %ebx
	cvttss2sil	-160(%ebp), %ecx
	cvtsi2ssl	%ecx, %xmm3
	cvttss2sil	-268(%ebp), %ecx
	movss	%xmm3, -276(%ebp)
	cvtsi2ssl	%ecx, %xmm4
	movss	%xmm4, -252(%ebp)
	movl	$4, 4(%esp)
	movl	$6, (%esp)
	movl	-176(%ebp), %ecx
	movl	%eax, -284(%ebp)
	call	__ZN10ImDrawList11PrimReserveEii
	movl	-284(%ebp), %eax
	movss	-280(%ebp), %xmm0
	subl	$8, %esp
	movss	-252(%ebp), %xmm4
	movss	-276(%ebp), %xmm3
	movss	36(%eax), %xmm1
	movss	32(%eax), %xmm2
	movss	%xmm1, -92(%ebp)
	movss	28(%eax), %xmm1
	movss	%xmm2, -96(%ebp)
	movss	24(%eax), %xmm2
	movss	%xmm1, -84(%ebp)
	movss	20(%eax), %xmm1
	movss	%xmm2, -88(%ebp)
	movss	16(%eax), %xmm2
	mulss	%xmm0, %xmm1
	mulss	%xmm0, %xmm2
	addss	%xmm4, %xmm1
	addss	%xmm3, %xmm2
	movss	%xmm1, -76(%ebp)
	movss	%xmm2, -80(%ebp)
	movss	12(%eax), %xmm1
	mulss	%xmm0, %xmm1
	mulss	8(%eax), %xmm0
	leal	-96(%ebp), %eax
	addss	%xmm4, %xmm1
	addss	%xmm3, %xmm0
	movss	%xmm1, -52(%ebp)
	movss	%xmm0, -56(%ebp)
	movl	%eax, 12(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-80(%ebp), %eax
	movl	%ebx, 16(%esp)
	movl	%eax, 4(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	movl	-176(%ebp), %ecx
	call	__ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j
	subl	$20, %esp
L718:
	movss	-244(%ebp), %xmm0
	mulss	68(%edi), %xmm0
	addl	$1, %esi
	addss	-160(%ebp), %xmm0
	movswl	62(%edi), %eax
	movss	%xmm0, -160(%ebp)
	cmpl	%eax, %esi
	jge	L956
L709:
	movl	_GImGui, %eax
	movzwl	60(%edi), %ebx
	movl	14624(%eax), %ecx
	movl	%ecx, -56(%ebp)
	movl	14628(%eax), %ecx
	movl	%ecx, -52(%ebp)
	movl	14632(%eax), %ecx
	movl	%ecx, -48(%ebp)
	movl	14636(%eax), %ecx
	movl	%ecx, -44(%ebp)
	movss	14636(%eax), %xmm0
	mulss	14404(%eax), %xmm0
	movl	-132(%ebp), %eax
	movss	%xmm0, -44(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movl	%eax, %ecx
	cmpl	20(%edi), %ebx
	jb	L715
L943:
	movl	44(%edi), %eax
	jmp	L716
L932:
	leal	-80(%ebp), %eax
	leal	-72(%ebp), %edx
	movl	$0x00000000, -80(%ebp)
	movl	$0x00000000, -76(%ebp)
	movl	%edx, -288(%ebp)
	movss	%xmm4, -56(%ebp)
	movss	%xmm6, -52(%ebp)
	movl	%eax, 12(%esp)
	leal	-104(%ebp), %eax
	movl	$0, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	-200(%ebp), %eax
	movl	%eax, (%esp)
	movl	-132(%ebp), %ecx
	movl	%edi, %eax
	call	__ZN5ImGui19RenderTextClippedExEP10ImDrawListRK6ImVec2S4_PKcS6_PS3_S4_PK6ImRect
L719:
	movl	-220(%ebp), %eax
	cmpb	$0, 23524(%eax)
	je	L689
	movl	-200(%ebp), %edx
	movl	-288(%ebp), %eax
	movl	%ebx, %ecx
	call	__ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_
L689:
	movss	-148(%ebp), %xmm7
	comiss	-204(%ebp), %xmm7
	jb	L721
	movss	-152(%ebp), %xmm7
	comiss	%xmm7, %xmm7
	jb	L721
	movss	-236(%ebp), %xmm6
	comiss	-188(%ebp), %xmm6
	jb	L721
	movss	-248(%ebp), %xmm5
	comiss	-216(%ebp), %xmm5
	jb	L721
	addl	$4, -208(%ebp)
	movl	-208(%ebp), %eax
	cmpl	-260(%ebp), %eax
	je	L726
	movl	(%eax), %edi
	movl	-184(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -244(%ebp)
	jmp	L727
	.p2align 4,,10
	.p2align 3
L721:
	movl	%edi, %ecx
	call	__ZN10ImDrawList11PopClipRectEv
	addl	$4, -208(%ebp)
	movl	-208(%ebp), %eax
	cmpl	-260(%ebp), %eax
	je	L726
	movl	(%eax), %edi
	jmp	L728
	.p2align 4,,10
	.p2align 3
L726:
	movl	-272(%ebp), %edi
	call	__ZN5ImGui13PopStyleColorEi.constprop.0
	movss	-264(%ebp), %xmm5
	movss	%xmm5, -148(%ebp)
	jmp	L609
	.p2align 4,,10
	.p2align 3
L690:
	movss	-188(%ebp), %xmm5
	movss	-216(%ebp), %xmm6
	movaps	%xmm4, %xmm2
	subss	LC0, %xmm5
	jmp	L692
L657:
	movss	LC3, %xmm1
	addss	-148(%ebp), %xmm1
	movss	-160(%ebp), %xmm6
	movss	%xmm1, -56(%ebp)
	movss	%xmm6, -52(%ebp)
	movl	88(%edi), %ecx
	testl	%ecx, %ecx
	je	L659
	movl	92(%edi), %eax
L660:
	movss	LC3, %xmm5
	movl	-132(%ebp), %ecx
	movss	LC3, %xmm1
	movss	LC3, %xmm2
	movl	(%ecx), %edx
	addss	-196(%ebp), %xmm1
	comiss	%xmm0, %xmm5
	addss	-220(%ebp), %xmm2
	movl	%edx, (%eax)
	movl	4(%ecx), %edx
	movl	%edx, 4(%eax)
	movl	84(%edi), %edx
	leal	1(%edx), %eax
	movl	%eax, 84(%edi)
	movss	%xmm2, -56(%ebp)
	movss	%xmm1, -52(%ebp)
	ja	L957
	movss	%xmm1, -220(%ebp)
	movl	%edi, %ecx
	movl	$36, 8(%esp)
	movl	$24, 4(%esp)
	movl	-132(%ebp), %esi
	movl	%esi, (%esp)
	movss	%xmm0, -196(%ebp)
	call	__ZN10ImDrawList16_PathArcToFastExERK6ImVec2fiii.constprop.0
	movss	-200(%ebp), %xmm2
	movss	-220(%ebp), %xmm1
	movl	%edi, %ecx
	subss	LC3, %xmm2
	subl	$12, %esp
	movss	%xmm1, -52(%ebp)
	movss	%xmm2, -56(%ebp)
	movl	$48, 8(%esp)
	movl	$36, 4(%esp)
	movl	%esi, (%esp)
	movss	-196(%ebp), %xmm0
	call	__ZN10ImDrawList16_PathArcToFastExERK6ImVec2fiii.constprop.0
	movl	84(%edi), %eax
	subl	$12, %esp
L675:
	movss	-188(%ebp), %xmm0
	movss	-160(%ebp), %xmm6
	subss	LC3, %xmm0
	movss	%xmm6, -52(%ebp)
	movss	%xmm0, -56(%ebp)
	cmpl	%eax, 88(%edi)
	je	L958
L682:
	movl	92(%edi), %esi
L684:
	leal	(%esi,%eax,8), %eax
	movl	-132(%ebp), %esi
	movl	(%esi), %edx
	movl	%edx, (%eax)
	movl	4(%esi), %edx
	movl	_GImGui, %ecx
	movl	%edx, 4(%eax)
	movl	84(%edi), %eax
	movl	%ecx, -220(%ebp)
	leal	1(%eax), %ebx
	movl	-176(%ebp), %eax
	movl	%ebx, 84(%edi)
	movss	14544(%eax), %xmm6
	movl	14704(%ecx), %eax
	movl	%eax, -56(%ebp)
	movl	14708(%ecx), %eax
	movss	%xmm6, -160(%ebp)
	movl	%eax, -52(%ebp)
	movl	14712(%ecx), %eax
	movl	%eax, -48(%ebp)
	movl	14716(%ecx), %eax
	movl	%eax, -44(%ebp)
	movss	14404(%ecx), %xmm0
	movl	%esi, %eax
	mulss	14716(%ecx), %xmm0
	movss	%xmm0, -44(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	cmpl	$1, %ebx
	jle	L688
	cmpl	$16777215, %eax
	jbe	L688
	movl	$0, 12(%esp)
	movl	%edi, %ecx
	movl	%eax, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	92(%edi), %eax
	movl	%eax, (%esp)
	movss	-160(%ebp), %xmm0
	call	__ZN10ImDrawList11AddPolylineEPK6ImVec2ijif.part.0
	movl	_GImGui, %eax
	subl	$16, %esp
	movl	%eax, -220(%ebp)
L688:
	movl	$0, 84(%edi)
	jmp	L658
L953:
	testl	%eax, %eax
	je	L750
	movl	%eax, %esi
	leal	1(%eax), %edx
	shrl	$31, %esi
	addl	%eax, %esi
	sarl	%esi
	addl	%eax, %esi
	cmpl	%edx, %esi
	cmovl	%edx, %esi
	cmpl	%eax, %esi
	jle	L650
L651:
	movl	_GImGui, %eax
	leal	0(,%esi,8), %edx
	testl	%eax, %eax
	je	L653
	addl	$1, 188(%eax)
L653:
	movss	%xmm0, -252(%ebp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movss	-252(%ebp), %xmm0
	movl	%eax, %ebx
	movl	92(%edi), %eax
	testl	%eax, %eax
	je	L654
	movl	84(%edi), %ecx
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	leal	0(,%ecx,8), %edx
	movl	%edx, 8(%esp)
	call	_memcpy
	movl	92(%edi), %edx
	movss	-252(%ebp), %xmm0
	testl	%edx, %edx
	je	L655
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L655
	subl	$1, 188(%eax)
L655:
	movss	%xmm0, -252(%ebp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movss	-252(%ebp), %xmm0
L654:
	movl	%ebx, 92(%edi)
	movl	84(%edi), %eax
	movl	%esi, 88(%edi)
	jmp	L652
L952:
	cmpl	88(%edi), %eax
	je	L634
L941:
	movl	92(%edi), %esi
L635:
	movl	-132(%ebp), %ecx
	movss	-188(%ebp), %xmm4
	movss	-196(%ebp), %xmm7
	movl	(%ecx), %edx
	subss	%xmm0, %xmm4
	movl	%edx, (%esi,%eax,8)
	movl	4(%ecx), %edx
	movss	%xmm4, -200(%ebp)
	movl	%edx, 4(%esi,%eax,8)
	movl	84(%edi), %edx
	leal	1(%edx), %eax
	movl	%eax, 84(%edi)
	movss	%xmm4, -56(%ebp)
	movss	%xmm7, -52(%ebp)
	cmpl	88(%edi), %eax
	je	L959
L642:
	movl	92(%edi), %esi
L646:
	movl	-132(%ebp), %ecx
	movl	(%ecx), %edx
	movl	%edx, (%esi,%eax,8)
	movl	4(%ecx), %edx
	movl	%edx, 4(%esi,%eax,8)
	movl	84(%edi), %eax
	addl	$1, %eax
	movl	%eax, 84(%edi)
	jmp	L643
L951:
	leal	1(%eax), %esi
	testl	%eax, %eax
	jne	L627
	movl	$8, %eax
	cmpl	%eax, %esi
	cmovl	%eax, %esi
L628:
	movl	-176(%ebp), %eax
	movss	%xmm0, -200(%ebp)
	movss	%xmm1, -196(%ebp)
	addl	$1, 188(%eax)
	leal	0(,%esi,8), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movss	-196(%ebp), %xmm1
	movss	-200(%ebp), %xmm0
	movl	%eax, %ebx
	movl	92(%edi), %eax
	testl	%eax, %eax
	je	L630
	movl	84(%edi), %ecx
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	leal	0(,%ecx,8), %edx
	movl	%edx, 8(%esp)
	call	_memcpy
	movl	92(%edi), %edx
	movss	-196(%ebp), %xmm1
	movss	-200(%ebp), %xmm0
	testl	%edx, %edx
	je	L631
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L631
	subl	$1, 188(%eax)
L631:
	movss	%xmm0, -200(%ebp)
	movss	%xmm1, -196(%ebp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movss	-200(%ebp), %xmm0
	movss	-196(%ebp), %xmm1
L630:
	movl	%ebx, 92(%edi)
	movl	84(%edi), %eax
	movl	%esi, 88(%edi)
	jmp	L629
L748:
	movl	$1, -212(%ebp)
	jmp	L606
L603:
	movss	-204(%ebp), %xmm4
	movss	%xmm4, -148(%ebp)
	testb	$32, 15(%edi)
	jne	L605
	movl	-124(%ebp), %eax
	movss	%xmm1, -176(%ebp)
	movss	%xmm2, -160(%ebp)
	movss	14488(%eax), %xmm0
	movl	%edi, %eax
	movss	%xmm0, -148(%ebp)
	call	__ZN5ImGui15TabItemCalcSizeEP11ImGuiWindow
	movss	-148(%ebp), %xmm0
	movss	-176(%ebp), %xmm1
	movl	%eax, -132(%ebp)
	addss	-132(%ebp), %xmm0
	addss	-204(%ebp), %xmm0
	movss	-160(%ebp), %xmm2
	movss	%xmm0, -148(%ebp)
	jmp	L605
L627:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	cmpl	%esi, %edx
	cmovge	%edx, %esi
	cmpl	%esi, %eax
	jge	L626
	jmp	L628
L950:
	leal	1(%eax), %esi
	testl	%eax, %eax
	jne	L612
	movl	$8, %eax
	cmpl	%eax, %esi
	cmovge	%esi, %eax
	movl	%eax, -160(%ebp)
L613:
	addl	$1, 188(%ebx)
	movl	%edx, -188(%ebp)
	movss	%xmm2, -176(%ebp)
	movl	$0, 4(%esp)
	movl	-160(%ebp), %eax
	leal	(%eax,%eax,4), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	18516(%ebx), %ecx
	movss	-176(%ebp), %xmm2
	movl	-188(%ebp), %edx
	movl	%eax, %esi
	testl	%ecx, %ecx
	je	L615
	movl	18508(%ebx), %eax
	movl	%ecx, 4(%esp)
	movl	%esi, (%esp)
	leal	(%eax,%eax,4), %eax
	sall	$2, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	18516(%ebx), %ecx
	movss	-176(%ebp), %xmm2
	movl	-188(%ebp), %edx
	testl	%ecx, %ecx
	je	L616
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L616
	subl	$1, 188(%eax)
L616:
	movl	%edx, -188(%ebp)
	movss	%xmm2, -176(%ebp)
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-188(%ebp), %edx
	movss	-176(%ebp), %xmm2
L615:
	movl	-160(%ebp), %eax
	movl	%esi, 18516(%ebx)
	movl	%eax, 18512(%ebx)
	movl	18508(%ebx), %eax
	jmp	L614
L750:
	movl	$8, %esi
	jmp	L651
L954:
	movss	-276(%ebp), %xmm5
	movl	-280(%ebp), %ebx
	movss	-284(%ebp), %xmm4
	movl	-288(%ebp), %edi
	movss	-292(%ebp), %xmm6
	movl	-200(%ebp), %esi
	jmp	L704
L958:
	testl	%eax, %eax
	je	L751
	movl	%eax, %edx
	leal	1(%eax), %ecx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	cmpl	%ecx, %edx
	cmovge	%edx, %ecx
	movl	%ecx, %ebx
	cmpl	%eax, %ecx
	jle	L682
L683:
	movl	_GImGui, %eax
	leal	0(,%ebx,8), %edx
	testl	%eax, %eax
	je	L685
	addl	$1, 188(%eax)
L685:
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	92(%edi), %edx
	movl	%eax, %esi
	testl	%edx, %edx
	je	L686
	movl	84(%edi), %eax
	movl	%edx, 4(%esp)
	movl	%esi, (%esp)
	sall	$3, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	92(%edi), %edx
	testl	%edx, %edx
	je	L687
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L687
	subl	$1, 188(%eax)
L687:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L686:
	movl	%esi, 92(%edi)
	movl	84(%edi), %eax
	movl	%ebx, 88(%edi)
	jmp	L684
L957:
	cmpl	88(%edi), %eax
	je	L666
L942:
	movl	92(%edi), %esi
L667:
	leal	(%esi,%eax,8), %eax
	movl	-132(%ebp), %esi
	movss	-200(%ebp), %xmm0
	subss	LC3, %xmm0
	movl	(%esi), %edx
	movl	%edx, (%eax)
	movl	4(%esi), %edx
	movl	%edx, 4(%eax)
	movl	84(%edi), %edx
	leal	1(%edx), %eax
	movl	%eax, 84(%edi)
	movss	%xmm0, -56(%ebp)
	movss	%xmm1, -52(%ebp)
	cmpl	88(%edi), %eax
	je	L960
L674:
	movl	92(%edi), %esi
L678:
	leal	(%esi,%eax,8), %eax
	movl	-132(%ebp), %esi
	movl	(%esi), %edx
	movl	%edx, (%eax)
	movl	4(%esi), %edx
	movl	%edx, 4(%eax)
	movl	84(%edi), %eax
	addl	$1, %eax
	movl	%eax, 84(%edi)
	jmp	L675
L601:
	cmpl	$1, %edx
	jne	L600
	addss	%xmm2, %xmm3
	movss	-236(%ebp), %xmm4
	subss	%xmm3, %xmm4
	movss	%xmm4, -236(%ebp)
	jmp	L600
L959:
	addl	$2, %edx
	testl	%eax, %eax
	jne	L644
	movl	$8, %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, %ebx
L645:
	movl	_GImGui, %eax
	leal	0(,%ebx,8), %edx
	testl	%eax, %eax
	je	L647
	addl	$1, 188(%eax)
L647:
	movss	%xmm0, -252(%ebp)
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	92(%edi), %edx
	movss	-252(%ebp), %xmm0
	movl	%eax, %esi
	testl	%edx, %edx
	je	L648
	movl	84(%edi), %eax
	movl	%edx, 4(%esp)
	movl	%esi, (%esp)
	sall	$3, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	92(%edi), %edx
	movss	-252(%ebp), %xmm0
	testl	%edx, %edx
	je	L649
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L649
	subl	$1, 188(%eax)
L649:
	movss	%xmm0, -252(%ebp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movss	-252(%ebp), %xmm0
L648:
	movl	%esi, 92(%edi)
	movl	84(%edi), %eax
	movl	%ebx, 88(%edi)
	jmp	L646
L634:
	addl	$2, %edx
	testl	%eax, %eax
	jne	L636
	movl	$8, %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, %ebx
L637:
	movl	_GImGui, %eax
	leal	0(,%ebx,8), %edx
	testl	%eax, %eax
	je	L638
	addl	$1, 188(%eax)
L638:
	movss	%xmm0, -200(%ebp)
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	92(%edi), %edx
	movss	-200(%ebp), %xmm0
	movl	%eax, %esi
	testl	%edx, %edx
	je	L639
	movl	84(%edi), %eax
	movl	%edx, 4(%esp)
	movl	%esi, (%esp)
	sall	$3, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	92(%edi), %edx
	movss	-200(%ebp), %xmm0
	testl	%edx, %edx
	je	L640
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L640
	subl	$1, 188(%eax)
L640:
	movss	%xmm0, -200(%ebp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movss	-200(%ebp), %xmm0
L639:
	movl	%esi, 92(%edi)
	movl	84(%edi), %eax
	movl	%ebx, 88(%edi)
	jmp	L635
L956:
	movl	-292(%ebp), %ebx
	movl	-176(%ebp), %edi
	jmp	L719
L612:
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	addl	%eax, %ecx
	cmpl	%esi, %ecx
	cmovge	%ecx, %esi
	movl	%esi, -160(%ebp)
	cmpl	%esi, %eax
	jge	L611
	jmp	L613
L751:
	movl	$8, %ebx
	jmp	L683
L659:
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L661
	addl	$1, 188(%eax)
L661:
	movss	%xmm0, -252(%ebp)
	movl	$0, 4(%esp)
	movl	$64, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	92(%edi), %edx
	movss	-252(%ebp), %xmm0
	movl	%eax, %ebx
	testl	%edx, %edx
	je	L662
	movl	84(%edi), %eax
	movl	%edx, 4(%esp)
	movl	%ebx, (%esp)
	sall	$3, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	92(%edi), %edx
	movss	-252(%ebp), %xmm0
	testl	%edx, %edx
	je	L663
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L663
	subl	$1, 188(%eax)
L663:
	movss	%xmm0, -252(%ebp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movss	-252(%ebp), %xmm0
L662:
	movl	84(%edi), %eax
	movl	%ebx, 92(%edi)
	movl	$8, 88(%edi)
	leal	(%ebx,%eax,8), %eax
	jmp	L660
L955:
	movl	%edi, -176(%ebp)
	xorl	%esi, %esi
	movl	%ecx, %edi
	movl	%ebx, -280(%ebp)
	movss	%xmm0, -160(%ebp)
	jmp	L714
L962:
	movl	28(%edi), %eax
	movzwl	(%eax,%ebx,2), %eax
	cmpw	$-1, %ax
	je	L710
	leal	(%eax,%eax,4), %ebx
	movl	40(%edi), %eax
	leal	(%eax,%ebx,8), %eax
L712:
	testl	%eax, %eax
	je	L713
	movzbl	(%eax), %ebx
	testb	$2, %bl
	je	L713
	andl	$1, %ebx
	xorps	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	negl	%ebx
	andl	$16777215, %ebx
	orl	%ecx, %ebx
	cvttss2sil	-160(%ebp), %ecx
	cvtsi2ssl	%ecx, %xmm1
	cvttss2sil	-268(%ebp), %ecx
	movss	%xmm1, -252(%ebp)
	cvtsi2ssl	%ecx, %xmm0
	movss	%xmm0, -196(%ebp)
	movl	$4, 4(%esp)
	movl	$6, (%esp)
	movl	-176(%ebp), %ecx
	movl	%eax, -276(%ebp)
	call	__ZN10ImDrawList11PrimReserveEii
	movl	-276(%ebp), %eax
	movss	-196(%ebp), %xmm0
	subl	$8, %esp
	movss	-252(%ebp), %xmm1
	movss	36(%eax), %xmm2
	movss	32(%eax), %xmm3
	movss	%xmm2, -92(%ebp)
	movss	28(%eax), %xmm2
	movss	%xmm3, -96(%ebp)
	movss	24(%eax), %xmm3
	movss	%xmm2, -84(%ebp)
	movss	20(%eax), %xmm2
	movss	%xmm3, -88(%ebp)
	movss	16(%eax), %xmm3
	addss	%xmm0, %xmm2
	addss	%xmm1, %xmm3
	movss	%xmm2, -76(%ebp)
	movss	%xmm3, -80(%ebp)
	addss	12(%eax), %xmm0
	addss	8(%eax), %xmm1
	leal	-96(%ebp), %eax
	movss	%xmm1, -56(%ebp)
	movss	%xmm0, -52(%ebp)
	movl	%eax, 12(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-80(%ebp), %eax
	movl	%ebx, 16(%esp)
	movl	%eax, 4(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	movl	-176(%ebp), %ecx
	call	__ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j
	subl	$20, %esp
L713:
	movss	-244(%ebp), %xmm0
	mulss	68(%edi), %xmm0
	addl	$1, %esi
	addss	-160(%ebp), %xmm0
	movswl	62(%edi), %eax
	movss	%xmm0, -160(%ebp)
	cmpl	%esi, %eax
	jle	L961
L714:
	movl	_GImGui, %eax
	movzwl	60(%edi), %ebx
	movl	14624(%eax), %ecx
	movl	%ecx, -56(%ebp)
	movl	14628(%eax), %ecx
	movl	%ecx, -52(%ebp)
	movl	14632(%eax), %ecx
	movl	%ecx, -48(%ebp)
	movl	14636(%eax), %ecx
	movl	%ecx, -44(%ebp)
	movss	14636(%eax), %xmm0
	mulss	14404(%eax), %xmm0
	movl	-132(%ebp), %eax
	movss	%xmm0, -44(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movl	%eax, %ecx
	cmpl	20(%edi), %ebx
	jb	L962
L710:
	movl	44(%edi), %eax
	jmp	L712
L961:
	movl	-280(%ebp), %ebx
	movl	-176(%ebp), %edi
	jmp	L719
L636:
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	addl	%eax, %ecx
	cmpl	%edx, %ecx
	cmovge	%ecx, %edx
	movl	%edx, %ebx
	cmpl	%edx, %eax
	jge	L941
	jmp	L637
L644:
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	addl	%eax, %ecx
	cmpl	%edx, %ecx
	cmovge	%ecx, %edx
	movl	%edx, %ebx
	cmpl	%edx, %eax
	jge	L642
	jmp	L645
L604:
	addss	64(%eax), %xmm0
	addss	-204(%ebp), %xmm0
	movss	%xmm0, -148(%ebp)
	jmp	L605
L960:
	addl	$2, %edx
	testl	%eax, %eax
	jne	L676
	movl	$8, %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, %ebx
L677:
	movl	_GImGui, %eax
	leal	0(,%ebx,8), %edx
	testl	%eax, %eax
	je	L679
	addl	$1, 188(%eax)
L679:
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	92(%edi), %edx
	movl	%eax, %esi
	testl	%edx, %edx
	je	L680
	movl	84(%edi), %eax
	movl	%edx, 4(%esp)
	movl	%esi, (%esp)
	sall	$3, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	92(%edi), %edx
	testl	%edx, %edx
	je	L681
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L681
	subl	$1, 188(%eax)
L681:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L680:
	movl	%esi, 92(%edi)
	movl	84(%edi), %eax
	movl	%ebx, 88(%edi)
	jmp	L678
L666:
	addl	$2, %edx
	testl	%eax, %eax
	jne	L668
	movl	$8, %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, %ebx
L669:
	movl	_GImGui, %eax
	leal	0(,%ebx,8), %edx
	testl	%eax, %eax
	je	L670
	addl	$1, 188(%eax)
L670:
	movss	%xmm1, -196(%ebp)
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	92(%edi), %edx
	movss	-196(%ebp), %xmm1
	movl	%eax, %esi
	testl	%edx, %edx
	je	L671
	movl	84(%edi), %eax
	movl	%edx, 4(%esp)
	movl	%esi, (%esp)
	sall	$3, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	92(%edi), %edx
	movss	-196(%ebp), %xmm1
	testl	%edx, %edx
	je	L672
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L672
	subl	$1, 188(%eax)
L672:
	movss	%xmm1, -196(%ebp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movss	-196(%ebp), %xmm1
L671:
	movl	%esi, 92(%edi)
	movl	84(%edi), %eax
	movl	%ebx, 88(%edi)
	jmp	L667
L701:
	movl	-200(%ebp), %esi
	movl	-132(%ebp), %eax
	movl	%ebx, %ecx
	movss	%xmm6, -280(%ebp)
	movss	%xmm4, -276(%ebp)
	movl	%esi, %edx
	movss	%xmm5, -176(%ebp)
	call	__Z18ImTextCharFromUtf8PjPKcS1_
	movl	%esi, %ecx
	movl	$0, 8(%esp)
	xorps	%xmm2, %xmm2
	movss	LC31, %xmm1
	leal	(%esi,%eax), %esi
	movl	%ecx, (%esp)
	movl	%esi, 4(%esp)
	movss	-196(%ebp), %xmm0
	movl	-252(%ebp), %ecx
	call	__ZNK6ImFont13CalcTextSizeAEfffPKcS1_PS1_
	movss	-280(%ebp), %xmm6
	movss	-276(%ebp), %xmm4
	subl	$12, %esp
	movss	-176(%ebp), %xmm5
	movl	%eax, -160(%ebp)
	movss	-160(%ebp), %xmm3
	jmp	L703
L668:
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	addl	%eax, %ecx
	cmpl	%edx, %ecx
	cmovge	%ecx, %edx
	movl	%edx, %ebx
	cmpl	%edx, %eax
	jge	L942
	jmp	L669
L676:
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	addl	%eax, %ecx
	cmpl	%edx, %ecx
	cmovge	%ecx, %edx
	movl	%edx, %ebx
	cmpl	%edx, %eax
	jge	L674
	jmp	L677
L947:
	movl	-136(%ebp), %eax
	movss	-176(%ebp), %xmm7
	leal	-80(%ebp), %edx
	movl	%esi, %ecx
	movss	-196(%ebp), %xmm1
	movss	LC0, %xmm2
	movss	%xmm7, -80(%ebp)
	movss	%xmm1, -76(%ebp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movss	-208(%ebp), %xmm0
	call	__ZN10ImDrawList7AddLineERK6ImVec2S2_jf.isra.0
	pushl	%eax
	pushl	%eax
	jmp	L736
L946:
	movss	-200(%ebp), %xmm0
	movss	-168(%ebp), %xmm6
	leal	-80(%ebp), %edx
	movl	%esi, %ecx
	movss	LC0, %xmm2
	movl	-136(%ebp), %eax
	movss	%xmm0, -80(%ebp)
	movss	%xmm6, -76(%ebp)
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	movss	-204(%ebp), %xmm1
	call	__ZN10ImDrawList7AddLineERK6ImVec2S2_jf.isra.0
	pushl	%edx
	pushl	%edx
	jmp	L736
	.cfi_endproc
LFE58:
	.section .rdata,"dr"
LC36:
	.ascii "Data\0"
	.text
	.p2align 4
	.globl	__ZN5ImGuiL28DockSettingsHandler_ReadOpenEP12ImGuiContextP20ImGuiSettingsHandlerPKc.lto_priv.0
	.def	__ZN5ImGuiL28DockSettingsHandler_ReadOpenEP12ImGuiContextP20ImGuiSettingsHandlerPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZN5ImGuiL28DockSettingsHandler_ReadOpenEP12ImGuiContextP20ImGuiSettingsHandlerPKc.lto_priv.0:
LFB91:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	20(%esp), %eax
	movl	$LC36, 4(%esp)
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	sete	%al
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	movzbl	%al, %eax
	ret
	.cfi_endproc
LFE91:
	.section .rdata,"dr"
LC37:
	.ascii "DockNode\0"
LC38:
	.ascii "DockSpace\0"
LC39:
	.ascii "ID=0x%08X%n\0"
LC40:
	.ascii " Parent=0x%08X%n\0"
LC41:
	.ascii " Window=0x%08X%n\0"
LC42:
	.ascii " Pos=%i,%i%n\0"
LC43:
	.ascii " Size=%i,%i%n\0"
LC44:
	.ascii " SizeRef=%i,%i%n\0"
LC45:
	.ascii " Split=%c%n\0"
LC46:
	.ascii " NoResize=%d%n\0"
LC47:
	.ascii " CentralNode=%d%n\0"
LC48:
	.ascii " NoTabBar=%d%n\0"
LC49:
	.ascii " HiddenTabBar=%d%n\0"
LC50:
	.ascii " NoWindowMenuButton=%d%n\0"
LC51:
	.ascii " NoCloseButton=%d%n\0"
LC52:
	.ascii " Selected=0x%08X%n\0"
	.text
	.p2align 4
	.globl	__ZN5ImGuiL28DockSettingsHandler_ReadLineEP12ImGuiContextP20ImGuiSettingsHandlerPvPKc.lto_priv.0
	.def	__ZN5ImGuiL28DockSettingsHandler_ReadLineEP12ImGuiContextP20ImGuiSettingsHandlerPvPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZN5ImGuiL28DockSettingsHandler_ReadLineEP12ImGuiContextP20ImGuiSettingsHandlerPvPKc.lto_priv.0:
LFB92:
	.cfi_startproc
	subl	$88, %esp
	.cfi_def_cfa_offset 92
	movl	%ebx, 76(%esp)
	.cfi_offset 3, -16
	movl	104(%esp), %ebx
	movl	%esi, 80(%esp)
	movzbl	(%ebx), %eax
	movl	$0, 56(%esp)
	movb	$0, 27(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	$0, 40(%esp)
	movl	$0, 44(%esp)
	movl	$0, 48(%esp)
	movl	$0, 52(%esp)
	movl	$0, 60(%esp)
	movl	$0, 64(%esp)
	movl	$0, 68(%esp)
	movl	$0, 72(%esp)
	movb	$-1, 56(%esp)
	cmpb	$9, %al
	.cfi_offset 6, -12
	je	L1030
	cmpb	$32, %al
	jne	L966
	.p2align 4
	.p2align 4
	.p2align 3
L1030:
	movzbl	1(%ebx), %eax
	addl	$1, %ebx
	cmpb	$32, %al
	je	L1030
	cmpb	$9, %al
	je	L1030
L966:
	movl	$8, 8(%esp)
	movl	$LC37, 4(%esp)
	movl	%ebx, (%esp)
	call	_strncmp
	testl	%eax, %eax
	jne	L969
	movzbl	8(%ebx), %eax
	leal	8(%ebx), %esi
	cmpb	$9, %al
	jne	L1045
	.p2align 4
	.p2align 4
	.p2align 3
L1031:
	movzbl	1(%esi), %eax
	addl	$1, %esi
	cmpb	$9, %al
	je	L1031
L1045:
	cmpb	$32, %al
	je	L1031
L970:
	leal	28(%esp), %ebx
	leal	40(%esp), %eax
	movl	$LC39, 4(%esp)
	movl	%ebx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	call	___mingw_sscanf
	cmpl	$1, %eax
	je	L1048
L965:
	movl	76(%esp), %ebx
	movl	80(%esp), %esi
	addl	$88, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L969:
	.cfi_restore_state
	movl	$9, 8(%esp)
	movl	$LC38, 4(%esp)
	movl	%ebx, (%esp)
	call	_strncmp
	testl	%eax, %eax
	jne	L965
	movzbl	9(%ebx), %eax
	leal	9(%ebx), %esi
	cmpb	$9, %al
	je	L1032
	cmpb	$32, %al
	jne	L974
	.p2align 4
	.p2align 4
	.p2align 3
L1032:
	movzbl	1(%esi), %eax
	addl	$1, %esi
	cmpb	$32, %al
	je	L1032
	cmpb	$9, %al
	je	L1032
L974:
	movl	$1024, 60(%esp)
	jmp	L970
	.p2align 4,,10
	.p2align 3
L1048:
	addl	28(%esp), %esi
	leal	44(%esp), %eax
	movl	%ebx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC40, 4(%esp)
	movl	%esi, (%esp)
	call	___mingw_sscanf
	cmpl	$1, %eax
	jne	L977
	movl	44(%esp), %edx
	testl	%edx, %edx
	je	L965
	addl	28(%esp), %esi
L977:
	leal	48(%esp), %eax
	movl	%ebx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC41, 4(%esp)
	movl	%esi, (%esp)
	call	___mingw_sscanf
	cmpl	$1, %eax
	je	L1049
	movl	%edi, 84(%esp)
	.cfi_offset 7, -8
L978:
	movl	44(%esp), %eax
	movl	%ebx, 16(%esp)
	testl	%eax, %eax
	jne	L979
	leal	32(%esp), %edx
	leal	36(%esp), %eax
	movl	$LC42, 4(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, %edi
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	call	___mingw_sscanf
	leal	32(%esp), %edx
	cmpl	$2, %eax
	je	L1050
L1044:
	movl	84(%esp), %edi
	.cfi_restore 7
	jmp	L965
L1049:
	movl	48(%esp), %eax
	testl	%eax, %eax
	je	L965
	movl	%edi, 84(%esp)
	.cfi_offset 7, -8
	addl	28(%esp), %esi
	jmp	L978
L979:
	leal	32(%esp), %eax
	movl	$LC44, 4(%esp)
	movl	%eax, 12(%esp)
	leal	36(%esp), %eax
	movl	%eax, 8(%esp)
	movl	%eax, %edi
	movl	%esi, (%esp)
	call	___mingw_sscanf
	cmpl	$2, %eax
	jne	L980
	movl	36(%esp), %eax
	addl	28(%esp), %esi
	movw	%ax, 72(%esp)
	movl	32(%esp), %eax
	movw	%ax, 74(%esp)
L980:
	leal	27(%esp), %eax
	movl	%ebx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC45, 4(%esp)
	movl	%esi, (%esp)
	call	___mingw_sscanf
	cmpl	$1, %eax
	je	L1051
L981:
	movl	%ebx, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$LC46, 4(%esp)
	movl	%esi, (%esp)
	call	___mingw_sscanf
	cmpl	$1, %eax
	je	L1052
L984:
	movl	%ebx, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$LC47, 4(%esp)
	movl	%esi, (%esp)
	call	___mingw_sscanf
	cmpl	$1, %eax
	je	L1053
L987:
	movl	%ebx, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$LC48, 4(%esp)
	movl	%esi, (%esp)
	call	___mingw_sscanf
	cmpl	$1, %eax
	je	L1054
L990:
	movl	%ebx, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$LC49, 4(%esp)
	movl	%esi, (%esp)
	call	___mingw_sscanf
	cmpl	$1, %eax
	je	L1055
L993:
	movl	%ebx, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$LC50, 4(%esp)
	movl	%esi, (%esp)
	call	___mingw_sscanf
	cmpl	$1, %eax
	je	L1056
L996:
	movl	%ebx, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$LC51, 4(%esp)
	movl	%esi, (%esp)
	call	___mingw_sscanf
	cmpl	$1, %eax
	je	L1057
L999:
	leal	52(%esp), %eax
	movl	%ebx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC52, 4(%esp)
	movl	%esi, (%esp)
	call	___mingw_sscanf
	movl	92(%esp), %eax
	movl	44(%esp), %ebx
	movl	23400(%eax), %ecx
	testl	%ebx, %ebx
	je	L1003
	testl	%ecx, %ecx
	jle	L1003
	movl	23408(%eax), %esi
	xorl	%edx, %edx
	movl	%esi, %eax
	jmp	L1005
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1058:
	addl	$1, %edx
	addl	$36, %eax
	cmpl	%ecx, %edx
	je	L1006
L1005:
	cmpl	(%eax), %ebx
	jne	L1058
	movzbl	17(%eax), %eax
	addl	$1, %eax
	movb	%al, 57(%esp)
L1006:
	movl	92(%esp), %eax
	cmpl	%ecx, 23404(%eax)
	je	L1046
L1007:
	movl	%esi, %ebx
L1009:
	movl	40(%esp), %edx
	leal	(%ecx,%ecx,8), %eax
	movl	%edx, (%ebx,%eax,4)
	movl	44(%esp), %edx
	movl	%edx, 4(%ebx,%eax,4)
	movl	48(%esp), %edx
	movl	%edx, 8(%ebx,%eax,4)
	movl	52(%esp), %edx
	movl	%edx, 12(%ebx,%eax,4)
	movl	56(%esp), %edx
	movl	%edx, 16(%ebx,%eax,4)
	movl	60(%esp), %edx
	movl	%edx, 20(%ebx,%eax,4)
	movl	64(%esp), %edx
	movl	%edx, 24(%ebx,%eax,4)
	movl	68(%esp), %edx
	movl	%edx, 28(%ebx,%eax,4)
	movl	72(%esp), %edx
	movl	%edx, 32(%ebx,%eax,4)
	movl	92(%esp), %eax
	addl	$1, 23400(%eax)
	movl	84(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	76(%esp), %ebx
	movl	80(%esp), %esi
	addl	$88, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L1003:
	.cfi_restore_state
	movl	92(%esp), %eax
	cmpl	%ecx, 23404(%eax)
	je	L1040
L1047:
	movl	23408(%eax), %esi
	jmp	L1007
L1040:
	movl	$8, %esi
	testl	%ecx, %ecx
	jne	L1046
L1008:
	movl	_GImGui, %edx
	leal	(%esi,%esi,8), %eax
	sall	$2, %eax
	testl	%edx, %edx
	je	L1010
	addl	$1, 188(%edx)
L1010:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %ebx
	movl	92(%esp), %eax
	movl	23408(%eax), %edx
	testl	%edx, %edx
	je	L1011
	movl	23400(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%ebx, (%esp)
	leal	(%eax,%eax,8), %eax
	movl	%edx, 20(%esp)
	sall	$2, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	20(%esp), %edx
	testl	%eax, %eax
	je	L1012
	subl	$1, 188(%eax)
L1012:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1011:
	movl	92(%esp), %eax
	movl	%ebx, 23408(%eax)
	movl	23400(%eax), %ecx
	movl	%esi, 23404(%eax)
	jmp	L1009
L1046:
	movl	%ecx, %eax
	leal	1(%ecx), %esi
	shrl	$31, %eax
	addl	%ecx, %eax
	sarl	%eax
	addl	%ecx, %eax
	cmpl	%esi, %eax
	cmovge	%eax, %esi
	cmpl	%ecx, %esi
	jg	L1008
	movl	92(%esp), %eax
	jmp	L1047
L1057:
	movl	36(%esp), %eax
	addl	28(%esp), %esi
	testl	%eax, %eax
	je	L999
	orl	$32768, 60(%esp)
	jmp	L999
L1056:
	movl	36(%esp), %edx
	addl	28(%esp), %esi
	testl	%edx, %edx
	je	L996
	orl	$16384, 60(%esp)
	jmp	L996
L1051:
	movzbl	27(%esp), %eax
	addl	28(%esp), %esi
	cmpb	$88, %al
	je	L1059
	cmpb	$89, %al
	jne	L981
	movb	$1, 56(%esp)
	jmp	L981
L1055:
	movl	36(%esp), %ecx
	addl	28(%esp), %esi
	testl	%ecx, %ecx
	je	L993
	orl	$8192, 60(%esp)
	jmp	L993
L1053:
	movl	36(%esp), %eax
	addl	28(%esp), %esi
	testl	%eax, %eax
	je	L987
	orl	$2048, 60(%esp)
	jmp	L987
L1052:
	movl	36(%esp), %eax
	addl	28(%esp), %esi
	testl	%eax, %eax
	je	L984
	orl	$32, 60(%esp)
	jmp	L984
L1054:
	movl	36(%esp), %eax
	addl	28(%esp), %esi
	testl	%eax, %eax
	je	L990
	orl	$4096, 60(%esp)
	jmp	L990
L1050:
	movl	36(%esp), %eax
	addl	28(%esp), %esi
	movl	%ebx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$LC43, 4(%esp)
	movl	%esi, (%esp)
	movw	%ax, 64(%esp)
	movl	32(%esp), %eax
	movw	%ax, 66(%esp)
	call	___mingw_sscanf
	cmpl	$2, %eax
	jne	L1044
	movl	36(%esp), %eax
	addl	28(%esp), %esi
	movw	%ax, 68(%esp)
	movl	32(%esp), %eax
	movw	%ax, 70(%esp)
	jmp	L980
L1059:
	movb	$0, 56(%esp)
	jmp	L981
	.cfi_endproc
LFE92:
	.section .rdata,"dr"
LC53:
	.ascii "DockNode \0"
LC54:
	.ascii "[%s][Data]\12\0"
LC55:
	.ascii "%*s%s%*s\0"
LC56:
	.ascii " ID=0x%08X\0"
LC57:
	.ascii " Parent=0x%08X SizeRef=%d,%d\0"
LC58:
	.ascii " Window=0x%08X\0"
LC59:
	.ascii " Pos=%d,%d Size=%d,%d\0"
LC60:
	.ascii " Split=%c\0"
LC61:
	.ascii " NoResize=1\0"
LC62:
	.ascii " CentralNode=1\0"
LC63:
	.ascii " NoTabBar=1\0"
LC64:
	.ascii " HiddenTabBar=1\0"
LC65:
	.ascii " NoWindowMenuButton=1\0"
LC66:
	.ascii " NoCloseButton=1\0"
LC67:
	.ascii " Selected=0x%08X\0"
LC68:
	.ascii "\12\0"
	.text
	.p2align 4
	.globl	__ZN5ImGuiL28DockSettingsHandler_WriteAllEP12ImGuiContextP20ImGuiSettingsHandlerP15ImGuiTextBuffer.lto_priv.0
	.def	__ZN5ImGuiL28DockSettingsHandler_WriteAllEP12ImGuiContextP20ImGuiSettingsHandlerP15ImGuiTextBuffer.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZN5ImGuiL28DockSettingsHandler_WriteAllEP12ImGuiContextP20ImGuiSettingsHandlerP15ImGuiTextBuffer.lto_priv.0:
LFB93:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	%edi, 44(%esp)
	.cfi_offset 7, -12
	movl	56(%esp), %edi
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -20
	movl	60(%esp), %ebx
	movl	%esi, 40(%esp)
	.cfi_offset 6, -16
	movl	64(%esp), %esi
	testb	$64, 8(%edi)
	jne	L1146
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
L1146:
	.cfi_restore_state
	movl	%ebp, 48(%esp)
	.cfi_offset 5, -8
	movl	23404(%edi), %eax
	testl	%eax, %eax
	jns	L1062
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1063
	addl	$1, 188(%eax)
L1063:
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	23408(%edi), %ebp
	movl	%eax, %edx
	testl	%ebp, %ebp
	je	L1064
	movl	23400(%edi), %eax
	movl	%edx, (%esp)
	movl	%ebp, 4(%esp)
	leal	(%eax,%eax,8), %eax
	movl	%edx, 28(%esp)
	sall	$2, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	28(%esp), %edx
	testl	%eax, %eax
	je	L1065
	subl	$1, 188(%eax)
L1065:
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	movl	%edx, 28(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	28(%esp), %edx
L1064:
	movl	23376(%edi), %ebp
	movl	%edx, 23408(%edi)
	movl	$0, 23404(%edi)
	movl	$0, 23400(%edi)
	testl	%ebp, %ebp
	jle	L1066
L1067:
	movl	_GImGui, %edx
	leal	0(%ebp,%ebp,8), %eax
	sall	$2, %eax
	testl	%edx, %edx
	je	L1069
	addl	$1, 188(%edx)
L1069:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	23408(%edi), %edx
	movl	%eax, %ecx
	testl	%edx, %edx
	je	L1070
	movl	23400(%edi), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	leal	(%eax,%eax,8), %eax
	movl	%edx, 32(%esp)
	sall	$2, %eax
	movl	%ecx, 28(%esp)
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	28(%esp), %ecx
	movl	32(%esp), %edx
	testl	%eax, %eax
	je	L1071
	subl	$1, 188(%eax)
L1071:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 28(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	28(%esp), %ecx
L1070:
	movl	%ecx, 23408(%edi)
	movl	%ebp, 23404(%edi)
	movl	23376(%edi), %ebp
L1068:
	testl	%ebp, %ebp
	jle	L1066
	leal	23376(%edi), %eax
	xorl	%ebp, %ebp
	movl	%eax, 28(%esp)
	jmp	L1073
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1072:
	addl	$1, %ebp
	cmpl	%ebp, 23376(%edi)
	jle	L1066
L1073:
	movl	23384(%edi), %eax
	movl	4(%eax,%ebp,8), %edx
	testl	%edx, %edx
	je	L1072
	movl	24(%edx), %ecx
	testl	%ecx, %ecx
	jne	L1072
	movl	28(%esp), %eax
	xorl	%ecx, %ecx
	addl	$1, %ebp
	call	__ZL38DockSettingsHandler_DockNodeToSettingsP16ImGuiDockContextP13ImGuiDockNodei
	cmpl	%ebp, 23376(%edi)
	jg	L1073
	.p2align 4
	.p2align 3
L1066:
	movl	23400(%edi), %edx
	testl	%edx, %edx
	jle	L1091
	movl	23408(%edi), %eax
	leal	(%edx,%edx,8), %edx
	addl	$17, %eax
	leal	(%eax,%edx,4), %ecx
	xorl	%edx, %edx
	.p2align 4
	.p2align 4
	.p2align 3
L1075:
	movzbl	(%eax), %ebp
	cmpl	%ebp, %edx
	cmovl	%ebp, %edx
	addl	$36, %eax
	cmpl	%eax, %ecx
	jne	L1075
	movl	%edx, 32(%esp)
L1074:
	movl	(%ebx), %eax
	movl	$LC54, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	movl	23400(%edi), %eax
	testl	%eax, %eax
	jle	L1076
	xorl	%ebp, %ebp
	jmp	L1090
	.p2align 4,,10
	.p2align 3
L1078:
	movl	8(%ebx), %eax
	testl	%eax, %eax
	jne	L1147
L1080:
	movswl	30(%ebx), %eax
	movl	%eax, 20(%esp)
	movswl	28(%ebx), %eax
	movl	%eax, 16(%esp)
	movswl	26(%ebx), %eax
	movl	%eax, 12(%esp)
	movswl	24(%ebx), %eax
	movl	$LC59, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
L1079:
	movzbl	16(%ebx), %eax
	cmpb	$-1, %al
	je	L1081
	cmpb	$1, %al
	movl	$88, %eax
	movl	$LC60, 4(%esp)
	sbbl	$-1, %eax
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
L1081:
	movl	20(%ebx), %eax
	testb	$32, %al
	jne	L1148
L1083:
	testb	$8, %ah
	jne	L1149
L1084:
	testb	$16, %ah
	jne	L1150
L1085:
	testb	$32, %ah
	jne	L1151
L1086:
	testb	$64, %ah
	jne	L1152
L1087:
	testb	$-128, %ah
	jne	L1153
L1088:
	movl	12(%ebx), %eax
	testl	%eax, %eax
	jne	L1154
L1089:
	movl	$LC68, 4(%esp)
	addl	$1, %ebp
	movl	%esi, (%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	cmpl	%ebp, 23400(%edi)
	jle	L1076
L1090:
	movl	23408(%edi), %edx
	leal	0(%ebp,%ebp,8), %eax
	movl	$LC38, %ecx
	leal	(%edx,%eax,4), %ebx
	movl	32(%esp), %edx
	movzbl	17(%ebx), %eax
	subl	%eax, %edx
	addl	%edx, %edx
	testb	$4, 21(%ebx)
	movl	$LC16, 24(%esp)
	movl	%edx, 28(%esp)
	movl	$LC53, %edx
	cmove	%edx, %ecx
	movl	28(%esp), %edx
	addl	%eax, %eax
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	$LC16, 12(%esp)
	movl	$LC55, 4(%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	movl	(%ebx), %eax
	movl	$LC56, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	movl	4(%ebx), %eax
	testl	%eax, %eax
	je	L1078
	movswl	34(%ebx), %edx
	movl	%edx, 16(%esp)
	movswl	32(%ebx), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	$LC57, 4(%esp)
	movl	%esi, (%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	jmp	L1079
	.p2align 4,,10
	.p2align 3
L1062:
	movl	$0, 23400(%edi)
	movl	23376(%edi), %ebp
	cmpl	%eax, %ebp
	jle	L1068
	jmp	L1067
	.p2align 4,,10
	.p2align 3
L1154:
	movl	%eax, 8(%esp)
	movl	$LC67, 4(%esp)
	movl	%esi, (%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	jmp	L1089
	.p2align 4,,10
	.p2align 3
L1153:
	movl	$LC66, 4(%esp)
	movl	%esi, (%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	jmp	L1088
	.p2align 4,,10
	.p2align 3
L1152:
	movl	$LC65, 4(%esp)
	movl	%esi, (%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	movl	20(%ebx), %eax
	jmp	L1087
	.p2align 4,,10
	.p2align 3
L1151:
	movl	$LC64, 4(%esp)
	movl	%esi, (%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	movl	20(%ebx), %eax
	jmp	L1086
	.p2align 4,,10
	.p2align 3
L1150:
	movl	$LC63, 4(%esp)
	movl	%esi, (%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	movl	20(%ebx), %eax
	jmp	L1085
	.p2align 4,,10
	.p2align 3
L1149:
	movl	$LC62, 4(%esp)
	movl	%esi, (%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	movl	20(%ebx), %eax
	jmp	L1084
	.p2align 4,,10
	.p2align 3
L1148:
	movl	$LC61, 4(%esp)
	movl	%esi, (%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	movl	20(%ebx), %eax
	jmp	L1083
	.p2align 4,,10
	.p2align 3
L1147:
	movl	%eax, 8(%esp)
	movl	$LC58, 4(%esp)
	movl	%esi, (%esp)
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	jmp	L1080
	.p2align 4,,10
	.p2align 3
L1076:
	movl	48(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	movl	36(%esp), %ebx
	movl	%esi, 56(%esp)
	movl	44(%esp), %edi
	movl	40(%esp), %esi
	movl	$LC68, 60(%esp)
	addl	$52, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	__ZN15ImGuiTextBuffer7appendfEPKcz
	.p2align 4,,10
	.p2align 3
L1091:
	.cfi_restore_state
	movl	$0, 32(%esp)
	jmp	L1074
	.cfi_endproc
LFE93:
	.p2align 4
	.globl	__ZL30GetClipboardTextFn_DefaultImplPv.lto_priv.0
	.def	__ZL30GetClipboardTextFn_DefaultImplPv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL30GetClipboardTextFn_DefaultImplPv.lto_priv.0:
LFB96:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$68, %esp
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	movl	8(%ebp), %esi
	movl	%ecx, -16(%ebp)
	movl	%ebx, -12(%ebp)
	movl	23320(%esi), %eax
	testl	%eax, %eax
	.cfi_offset 1, -24
	.cfi_offset 3, -20
	je	L1156
	movl	_GImGui, %edx
	movl	$0, 23312(%esi)
	movl	$0, 23316(%esi)
	testl	%edx, %edx
	je	L1157
	subl	$1, 188(%edx)
L1157:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 23320(%esi)
L1156:
	movl	$0, (%esp)
	xorl	%ebx, %ebx
	call	*__imp__OpenClipboard@4
	subl	$4, %esp
	testl	%eax, %eax
	je	L1155
	movl	$13, (%esp)
	call	*__imp__GetClipboardData@4
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1191
	movl	%eax, (%esp)
	call	*__imp__GlobalLock@4
	subl	$4, %esp
	testl	%eax, %eax
	je	L1160
	movl	%eax, 8(%esp)
	movl	%eax, -20(%ebp)
	movl	__imp__WideCharToMultiByte@32, %eax
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$-1, 12(%esp)
	movl	$0, 4(%esp)
	movl	$65001, (%esp)
	movl	%eax, -24(%ebp)
	call	*%eax
	movl	-20(%ebp), %edx
	movl	%eax, %ecx
	movl	23316(%esi), %eax
	subl	$32, %esp
	cmpl	%eax, %ecx
	jle	L1165
	movl	%edi, -4(%ebp)
	.cfi_offset 7, -12
	testl	%eax, %eax
	jne	L1163
	movl	$8, %eax
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%eax, -28(%ebp)
L1164:
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1166
	addl	$1, 188(%eax)
L1166:
	movl	-28(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%ecx, -36(%ebp)
	movl	%eax, (%esp)
	movl	%edx, -32(%ebp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	23320(%esi), %edi
	movl	-32(%ebp), %edx
	movl	%eax, -20(%ebp)
	movl	-36(%ebp), %ecx
	testl	%edi, %edi
	je	L1167
	movl	23312(%esi), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	-32(%ebp), %edx
	movl	-36(%ebp), %ecx
	testl	%eax, %eax
	je	L1168
	subl	$1, 188(%eax)
L1168:
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	movl	%ecx, -36(%ebp)
	movl	%edx, -32(%ebp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-36(%ebp), %ecx
	movl	-32(%ebp), %edx
L1167:
	movl	-20(%ebp), %eax
	movl	%eax, 23320(%esi)
	movl	-28(%ebp), %eax
	movl	%eax, 23316(%esi)
	movl	-4(%ebp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L1162
	.p2align 4,,10
	.p2align 3
L1163:
	.cfi_restore_state
	movl	%eax, %edi
	shrl	$31, %edi
	addl	%eax, %edi
	sarl	%edi
	addl	%eax, %edi
	cmpl	%ecx, %edi
	cmovl	%ecx, %edi
	movl	%edi, -28(%ebp)
	cmpl	%edi, %eax
	jl	L1164
	movl	-4(%ebp), %edi
	.cfi_restore 7
L1165:
	movl	23320(%esi), %eax
	movl	%eax, -20(%ebp)
L1162:
	movl	-20(%ebp), %eax
	movl	%ecx, 23312(%esi)
	movl	$0, 28(%esp)
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	$0, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	$-1, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	$65001, (%esp)
	call	*%eax
	subl	$32, %esp
L1160:
	movl	%ebx, (%esp)
	call	*__imp__GlobalUnlock@4
	subl	$4, %esp
	call	*__imp__CloseClipboard@0
	movl	23320(%esi), %ebx
L1155:
	movl	%ebx, %eax
	movl	-8(%ebp), %esi
	movl	-12(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 3
	.cfi_restore 1
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L1191:
	.cfi_restore_state
	call	*__imp__CloseClipboard@0
	jmp	L1155
	.cfi_endproc
LFE96:
	.p2align 4
	.globl	__ZL30SetClipboardTextFn_DefaultImplPvPKc.lto_priv.0
	.def	__ZL30SetClipboardTextFn_DefaultImplPvPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL30SetClipboardTextFn_DefaultImplPvPKc.lto_priv.0:
LFB100:
	.cfi_startproc
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	%esi, 28(%esp)
	.cfi_offset 6, -16
	movl	48(%esp), %esi
	movl	$0, (%esp)
	call	*__imp__OpenClipboard@4
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	testl	%eax, %eax
	jne	L1197
	movl	28(%esp), %esi
	addl	$40, %esp
	.cfi_remember_state
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1197:
	.cfi_restore_state
	movl	%ebx, 24(%esp)
	movl	%edi, 32(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	movl	__imp__MultiByteToWideChar@24, %edi
	movl	%ebp, 36(%esp)
	.cfi_offset 5, -8
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$-1, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$0, 4(%esp)
	movl	$65001, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 20
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, %ebp
	leal	(%eax,%eax), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	*__imp__GlobalAlloc@8
	.cfi_def_cfa_offset 36
	subl	$8, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1195
	movl	%eax, (%esp)
	call	*__imp__GlobalLock@4
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	movl	%ebp, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$-1, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$0, 4(%esp)
	movl	$65001, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 20
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	movl	%ebx, (%esp)
	call	*__imp__GlobalUnlock@4
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	call	*__imp__EmptyClipboard@0
	movl	%ebx, 4(%esp)
	movl	$13, (%esp)
	call	*__imp__SetClipboardData@8
	.cfi_def_cfa_offset 36
	subl	$8, %esp
	.cfi_def_cfa_offset 44
	testl	%eax, %eax
	je	L1198
L1195:
	movl	24(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %ebp
	.cfi_restore 5
	movl	28(%esp), %esi
	addl	$40, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	*__imp__CloseClipboard@0
	.p2align 4,,10
	.p2align 3
L1198:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	*__imp__GlobalFree@4
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	jmp	L1195
	.cfi_endproc
LFE100:
	.p2align 4
	.globl	__ZN5ImGui27BeginDockableDragDropSourceEP11ImGuiWindow
	.def	__ZN5ImGui27BeginDockableDragDropSourceEP11ImGuiWindow;	.scl	2;	.type	32;	.endef
__ZN5ImGui27BeginDockableDragDropSourceEP11ImGuiWindow:
LFB102:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%eax, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	andl	$-8, %esp
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	_GImGui, %ebx
	movl	160(%eax), %eax
	movl	%eax, 18312(%ebx)
	movl	840(%edx), %esi
	cmpb	$0, 97(%ebx)
	jne	L1200
	movss	16244(%ebx), %xmm1
	xorps	%xmm0, %xmm0
	comiss	%xmm0, %xmm1
	jb	L1199
	movss	16248(%ebx), %xmm2
	comiss	%xmm0, %xmm2
	jb	L1199
	movss	84(%esi), %xmm0
	comiss	%xmm1, %xmm0
	jbe	L1199
	movss	14468(%ebx), %xmm0
	addss	%xmm0, %xmm0
	addss	15516(%ebx), %xmm0
	comiss	%xmm2, %xmm0
	jbe	L1199
	.p2align 4
	.p2align 3
L1200:
	testl	%eax, %eax
	je	L1199
	cmpl	16224(%ebx), %eax
	jne	L1199
	movl	16260(%ebx), %ecx
	xorl	%edx, %edx
	cmpl	$-1, %ecx
	cmove	%edx, %ecx
	cmpb	$0, 3536(%ebx,%ecx)
	je	L1199
	movl	16148(%ebx), %edx
	cmpb	$0, 228(%edx)
	jne	L1199
	movss	48(%ebx), %xmm0
	movb	$0, 16237(%ebx)
	movss	14216(%ebx,%ecx,4), %xmm1
	movl	284(%edx), %edi
	mulss	%xmm0, %xmm0
	movl	292(%edx), %edx
	movl	-4(%edx,%edi,4), %edi
	xorl	%edx, %edx
	movb	$1, 18272(%ebx)
	movw	%dx, 18764(%ebx)
	movzbl	18741(%ebx), %edx
	movl	$15, 18268(%ebx)
	comiss	%xmm0, %xmm1
	movb	%dl, 18740(%ebx)
	jb	L1199
	movl	%ebx, %edx
	cmpb	$0, 19068(%ebx)
	je	L1237
L1208:
	movl	16048(%ebx), %eax
	andl	$-2, 18320(%ebx)
	movl	%edx, %edi
	movb	$1, 19069(%ebx)
	movl	%eax, 19076(%ebx)
	movl	19188(%edx), %eax
	movl	$1464682847, 19104(%edx)
	movl	$1329876553, 19108(%edx)
	movl	$87, 19112(%edx)
	movl	$0, 19116(%edx)
	movl	$0, 19120(%edx)
	movl	$0, 19124(%edx)
	movl	$0, 19128(%edx)
	movl	$0, 19132(%edx)
	movb	$0, 19136(%edx)
	testl	%eax, %eax
	jns	L1210
	addl	$1, 188(%edx)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	movl	%edx, 20(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	20(%esp), %edx
	movl	%eax, %edi
	movl	19192(%edx), %eax
	testl	%eax, %eax
	je	L1211
	movl	19184(%edx), %ecx
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	%ecx, 8(%esp)
	call	_memcpy
	movl	20(%esp), %edx
	movl	19192(%edx), %eax
	testl	%eax, %eax
	je	L1212
	movl	_GImGui, %ecx
	testl	%ecx, %ecx
	je	L1212
	subl	$1, 188(%ecx)
L1212:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 20(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	20(%esp), %edx
L1211:
	movl	$0, 19188(%edx)
	movl	%edi, 19192(%edx)
	movl	_GImGui, %edi
L1210:
	leal	19196(%edx), %eax
	movl	%esi, 19196(%edx)
	movl	%eax, 19084(%edx)
	movl	16048(%edx), %eax
	movl	$0, 19184(%edx)
	movl	$0, 19200(%edx)
	movl	$0, 19204(%edx)
	movl	$0, 19208(%edx)
	movl	$4, 19088(%edx)
	movl	%eax, 19100(%edx)
	testb	$1, 19072(%edi)
	je	L1238
L1213:
	cmpl	$-1, 19100(%edi)
	je	L1239
L1214:
	movb	$0, 19069(%edi)
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L1215:
	movl	__ZL22GWindowDockStyleColors(,%edi,4), %eax
	addl	$914, %eax
	sall	$4, %eax
	addl	%ebx, %eax
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movl	%eax, 912(%esi,%edi,4)
	addl	$1, %edi
	cmpl	$6, %edi
	jne	L1215
L1199:
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
L1238:
	.cfi_restore_state
	call	__ZN5ImGui3EndEv
	jmp	L1213
	.p2align 4,,10
	.p2align 3
L1239:
	call	__ZN5ImGui13ClearDragDropEv
	jmp	L1214
L1237:
	movl	%eax, 20(%esp)
	movss	20(%esp), %xmm0
	movl	%edi, 20(%esp)
	movss	20(%esp), %xmm3
	movl	%ecx, 12(%esp)
	unpcklps	%xmm3, %xmm0
	movl	%eax, 16(%esp)
	movlps	%xmm0, 20(%esp)
	call	__ZN5ImGui13ClearDragDropEv
	movlps	20(%esp), %xmm0
	movl	12(%esp), %ecx
	movb	$1, 19068(%ebx)
	movl	$37, 19072(%ebx)
	movl	16(%esp), %eax
	movl	%ecx, 19080(%ebx)
	movlps	%xmm0, 19092(%ebx)
	cmpl	16224(%ebx), %eax
	jne	L1236
	movb	$1, 16238(%ebx)
L1236:
	movl	_GImGui, %edx
	jmp	L1208
	.cfi_endproc
LFE102:
	.section .rdata,"dr"
LC69:
	.ascii "[%05d] \0"
LC70:
	.ascii "%s\0"
	.text
	.p2align 4
	.globl	__ZN5ImGui8DebugLogEPKcz
	.def	__ZN5ImGui8DebugLogEPKcz;	.scl	2;	.type	32;	.endef
__ZN5ImGui8DebugLogEPKcz:
LFB112:
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
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	movl	_GImGui, %esi
	leal	56(%esp), %ebp
	movl	16048(%esi), %eax
	leal	23580(%esi), %edi
	movl	23580(%esi), %ebx
	movl	%ebp, 28(%esp)
	movl	$LC69, 4(%esp)
	movl	%eax, 8(%esp)
	cmpl	$1, %ebx
	movl	%edi, (%esp)
	adcl	$-1, %ebx
	call	__ZN15ImGuiTextBuffer7appendfEPKcz
	movl	52(%esp), %eax
	movl	%ebp, 4(%esp)
	movl	%edi, %ecx
	movl	%eax, (%esp)
	call	__ZN15ImGuiTextBuffer8appendfvEPKcPc
	.cfi_def_cfa_offset 44
	subl	$8, %esp
	.cfi_def_cfa_offset 52
	testb	$4, 23577(%esi)
	je	L1241
	movl	23588(%esi), %eax
	movl	$__ZN15ImGuiTextBuffer11EmptyStringE, %edx
	movl	$LC70, (%esp)
	testl	%eax, %eax
	cmove	%edx, %eax
	addl	%ebx, %eax
	movl	%eax, 4(%esp)
	call	___mingw_printf
L1241:
	movl	23580(%esi), %eax
	movl	23588(%esi), %ebp
	cmpl	$1, %eax
	adcl	$-1, %eax
	testl	%ebp, %ebp
	movl	%eax, 16(%esp)
	movl	%eax, %ecx
	movl	$__ZN15ImGuiTextBuffer11EmptyStringE, %eax
	cmove	%eax, %ebp
	cmpl	%ecx, %ebx
	je	L1240
	movl	23604(%esi), %eax
	testl	%eax, %eax
	je	L1245
	cmpb	$10, -1(%ebp,%eax)
	je	L1245
L1246:
	movl	16(%esp), %eax
	addl	%ebp, %ebx
	leal	0(%ebp,%eax), %edi
	.p2align 4
	.p2align 3
L1254:
	movl	%edi, %eax
	movl	$10, 4(%esp)
	subl	%ebx, %eax
	movl	%ebx, (%esp)
	movl	%eax, 8(%esp)
	call	_memchr
	testl	%eax, %eax
	je	L1295
	leal	1(%eax), %ebx
	cmpl	%edi, %ebx
	jnb	L1254
	movl	%ebx, %eax
	subl	%ebp, %eax
	movl	%eax, 12(%esp)
	movl	23592(%esi), %eax
	cmpl	23596(%esi), %eax
	je	L1296
L1256:
	movl	23600(%esi), %edx
L1259:
	movl	12(%esp), %ecx
	movl	%ecx, (%edx,%eax,4)
	addl	$1, 23592(%esi)
	jmp	L1254
	.p2align 4,,10
	.p2align 3
L1295:
	movl	23604(%esi), %eax
	movl	16(%esp), %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, 23604(%esi)
L1240:
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
L1296:
	.cfi_restore_state
	leal	1(%eax), %ecx
	testl	%eax, %eax
	jne	L1257
	movl	$8, %eax
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%eax, 20(%esp)
L1258:
	movl	20(%esp), %eax
	leal	0(,%eax,4), %edx
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1260
	addl	$1, 188(%eax)
L1260:
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %edx
	movl	23600(%esi), %eax
	testl	%eax, %eax
	je	L1261
	movl	23592(%esi), %ecx
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	sall	$2, %ecx
	movl	%edx, 24(%esp)
	movl	%ecx, 8(%esp)
	call	_memcpy
	movl	23600(%esi), %ecx
	movl	24(%esp), %edx
	testl	%ecx, %ecx
	je	L1262
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1262
	subl	$1, 188(%eax)
L1262:
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	movl	%edx, 24(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	24(%esp), %edx
L1261:
	movl	20(%esp), %eax
	movl	%edx, 23600(%esi)
	movl	%eax, 23596(%esi)
	movl	23592(%esi), %eax
	jmp	L1259
	.p2align 4,,10
	.p2align 3
L1257:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	cmpl	%ecx, %edx
	cmovge	%edx, %ecx
	movl	%ecx, 20(%esp)
	cmpl	%ecx, %eax
	jge	L1256
	jmp	L1258
	.p2align 4,,10
	.p2align 3
L1245:
	movl	23592(%esi), %eax
	cmpl	23596(%esi), %eax
	je	L1297
L1247:
	movl	23600(%esi), %edi
L1250:
	movl	23604(%esi), %edx
	movl	%edx, (%edi,%eax,4)
	addl	$1, 23592(%esi)
	jmp	L1246
	.p2align 4,,10
	.p2align 3
L1297:
	leal	1(%eax), %edx
	testl	%eax, %eax
	jne	L1248
	movl	$8, %eax
	cmpl	%eax, %edx
	cmovl	%eax, %edx
L1249:
	movl	_GImGui, %eax
	leal	0(,%edx,4), %ecx
	testl	%eax, %eax
	je	L1251
	addl	$1, 188(%eax)
L1251:
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	movl	%edx, 12(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	12(%esp), %edx
	movl	%eax, %edi
	movl	23600(%esi), %eax
	testl	%eax, %eax
	je	L1252
	movl	23592(%esi), %ecx
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	sall	$2, %ecx
	movl	%ecx, 8(%esp)
	call	_memcpy
	movl	23600(%esi), %ecx
	movl	12(%esp), %edx
	testl	%ecx, %ecx
	je	L1253
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1253
	subl	$1, 188(%eax)
L1253:
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	movl	%edx, 12(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	12(%esp), %edx
L1252:
	movl	%edi, 23600(%esi)
	movl	23592(%esi), %eax
	movl	%edx, 23596(%esi)
	jmp	L1250
	.p2align 4,,10
	.p2align 3
L1248:
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	addl	%eax, %ecx
	cmpl	%edx, %ecx
	cmovge	%ecx, %edx
	cmpl	%edx, %eax
	jge	L1247
	jmp	L1249
	.cfi_endproc
LFE112:
	.section .rdata,"dr"
	.align 4
LC71:
	.ascii "[docking] DockNodeRemoveWindow node 0x%08X window '%s'\12\0"
	.align 4
LC72:
	.ascii "[viewport] Node %08X transfer Viewport %08X=>%08X for Window '%s'\12\0"
	.text
	.p2align 4
	.globl	__ZN5ImGuiL20DockNodeRemoveWindowEP13ImGuiDockNodeP11ImGuiWindowj.lto_priv.0
	.def	__ZN5ImGuiL20DockNodeRemoveWindowEP13ImGuiDockNodeP11ImGuiWindowj.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZN5ImGuiL20DockNodeRemoveWindowEP13ImGuiDockNodeP11ImGuiWindowj.lto_priv.0:
LFB115:
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
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_offset 3, -20
	movl	%edx, %ebx
	andl	$-16, %esp
	subl	$68, %esp
	movl	_GImGui, %eax
	movl	%edx, 52(%esp)
	movss	52(%esp), %xmm0
	movl	%eax, 48(%esp)
	shufps	$0, %xmm0, %xmm0
	testb	$64, 23576(%eax)
	jne	L1379
L1299:
	movl	12(%ebx), %ecx
	movl	%esi, 944(%ebx)
	movl	824(%ebx), %esi
	andb	$-10, 909(%ebx)
	movl	$0, 936(%ebx)
	andl	$-16777217, %ecx
	movl	%ecx, 12(%ebx)
	testl	%esi, %esi
	je	L1301
	movl	448(%esi), %eax
	movl	440(%esi), %edx
	movl	%edx, 44(%esp)
	leal	(%eax,%edx,4), %edx
	movl	%eax, 52(%esp)
	cmpl	%edx, %eax
	jb	L1304
	jmp	L1301
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1380:
	addl	$4, %eax
	cmpl	%edx, %eax
	jnb	L1301
L1304:
	cmpl	%ebx, (%eax)
	jne	L1380
	cmpl	%edx, %eax
	jb	L1381
	.p2align 4
	.p2align 3
L1301:
	andl	$8388608, %ecx
	movl	%ebx, 848(%ebx)
	movl	$0, 824(%ebx)
	movups	%xmm0, 832(%ebx)
	je	L1305
	movl	$0, 848(%ebx)
	testb	$-128, 14
	je	L1305
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1306:
	movl	824(%eax), %eax
	movl	%eax, 848(%ebx)
	testb	$-128, 14(%eax)
	jne	L1306
L1305:
	movl	36(%edi), %ecx
	testl	%ecx, %ecx
	jle	L1307
	movl	44(%edi), %esi
	xorl	%eax, %eax
	movl	%esi, %edx
	jmp	L1309
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1308:
	addl	$1, %eax
	addl	$4, %edx
	cmpl	%ecx, %eax
	je	L1307
L1309:
	cmpl	%ebx, (%edx)
	jne	L1308
	sall	$2, %eax
	movl	%edx, (%esp)
	movl	%eax, 52(%esp)
	leal	-1(%ecx), %eax
	movl	52(%esp), %ecx
	sarl	$2, %ecx
	subl	%ecx, %eax
	leal	0(,%eax,4), %ecx
	movl	52(%esp), %eax
	movl	%ecx, 8(%esp)
	leal	4(%esi,%eax), %eax
	movl	%eax, 4(%esp)
	call	_memmove
	subl	$1, 36(%edi)
L1307:
	cmpl	%ebx, 116(%edi)
	je	L1382
L1310:
	movl	48(%edi), %ecx
	orb	$2, 161(%edi)
	testl	%ecx, %ecx
	je	L1378
	movl	164(%ebx), %esi
	testl	%esi, %esi
	je	L1313
	movl	(%ecx), %eax
	movl	%eax, 52(%esp)
	testl	%eax, %eax
	jle	L1313
	movl	8(%ecx), %edx
	movl	%ecx, 40(%esp)
	movl	52(%esp), %ecx
	movl	%edx, 44(%esp)
	movl	%edx, %eax
	xorl	%edx, %edx
	jmp	L1315
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1384:
	addl	$1, %edx
	addl	$48, %eax
	cmpl	%edx, %ecx
	je	L1383
L1315:
	cmpl	(%eax), %esi
	jne	L1384
	movl	40(%esp), %ecx
	movl	52(%esp), %edx
	movl	%eax, (%esp)
	movl	%ecx, 20(%esp)
	subl	$1, %edx
	movl	%eax, %ecx
	subl	44(%esp), %ecx
	movl	%edx, 40(%esp)
	movl	%ecx, %edx
	sarl	$4, %edx
	movl	%ecx, 52(%esp)
	movl	40(%esp), %ecx
	imull	$-1431655765, %edx, %edx
	subl	%edx, %ecx
	leal	(%ecx,%ecx,2), %edx
	movl	52(%esp), %ecx
	sall	$4, %edx
	movl	%edx, 8(%esp)
	movl	44(%esp), %edx
	leal	48(%edx,%ecx), %edx
	movl	%edx, 4(%esp)
	call	_memmove
	movl	20(%esp), %ecx
	subl	$1, (%ecx)
L1313:
	cmpl	28(%ecx), %esi
	je	L1385
L1316:
	cmpl	20(%ecx), %esi
	je	L1386
L1317:
	cmpl	24(%ecx), %esi
	je	L1387
L1318:
	movl	16(%edi), %edx
	movl	36(%edi), %eax
	testb	$8, %dh
	je	L1319
L1391:
	testl	%eax, %eax
	jg	L1320
	movl	48(%edi), %esi
	testl	%esi, %esi
	je	L1388
L1321:
	movl	140(%esi), %eax
	testl	%eax, %eax
	je	L1324
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L1325
	subl	$1, 188(%edx)
L1325:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1324:
	movl	8(%esi), %eax
	testl	%eax, %eax
	je	L1326
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L1327
	subl	$1, 188(%edx)
L1327:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1326:
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1328
	subl	$1, 188(%eax)
L1328:
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 48(%edi)
L1378:
	movl	36(%edi), %eax
L1312:
	testl	%eax, %eax
	jne	L1320
	movl	16(%edi), %edx
L1322:
	andb	$12, %dh
	je	L1389
L1323:
	leal	-12(%ebp), %esp
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
	jmp	__ZN5ImGuiL25DockNodeUpdateVisibleFlagEP13ImGuiDockNode
	.p2align 4,,10
	.p2align 3
L1319:
	.cfi_restore_state
	cmpl	$1, %eax
	jg	L1323
	movl	48(%edi), %esi
	testl	%esi, %esi
	jne	L1321
	jmp	L1312
	.p2align 4,,10
	.p2align 3
L1320:
	cmpl	$1, %eax
	jne	L1323
	testb	$8, 17(%edi)
	jne	L1323
	movl	112(%edi), %eax
	testl	%eax, %eax
	je	L1323
	movl	44(%edi), %edx
	movl	(%edx), %ebx
	cmpb	$0, 222(%eax)
	je	L1330
	movl	24(%edi), %edx
	testl	%edx, %edx
	je	L1390
L1330:
	movzbl	226(%eax), %eax
	movb	%al, 226(%ebx)
	leal	-12(%ebp), %esp
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
	jmp	__ZN5ImGuiL25DockNodeUpdateVisibleFlagEP13ImGuiDockNode
	.p2align 4,,10
	.p2align 3
L1379:
	.cfi_restore_state
	movl	4(%edx), %eax
	movups	%xmm0, 52(%esp)
	movl	%eax, 8(%esp)
	movl	(%edi), %eax
	movl	$LC71, (%esp)
	movl	%eax, 4(%esp)
	call	__ZN5ImGui8DebugLogEPKcz
	movups	52(%esp), %xmm0
	jmp	L1299
	.p2align 4,,10
	.p2align 3
L1382:
	movl	$0, 116(%edi)
	jmp	L1310
	.p2align 4,,10
	.p2align 3
L1387:
	movl	$0, 24(%ecx)
	movl	16(%edi), %edx
	movl	36(%edi), %eax
	testb	$8, %dh
	je	L1319
	jmp	L1391
	.p2align 4,,10
	.p2align 3
L1385:
	movl	$0, 28(%ecx)
	cmpl	20(%ecx), %esi
	jne	L1317
L1386:
	movl	$0, 20(%ecx)
	cmpl	24(%ecx), %esi
	jne	L1318
	jmp	L1387
	.p2align 4,,10
	.p2align 3
L1381:
	movl	44(%esp), %ecx
	movl	%eax, %edx
	subl	52(%esp), %edx
	movl	%eax, (%esp)
	movl	%edx, 40(%esp)
	leal	-1(%ecx), %edx
	movl	40(%esp), %ecx
	movups	%xmm0, 20(%esp)
	sarl	$2, %ecx
	subl	%ecx, %edx
	leal	0(,%edx,4), %ecx
	movl	40(%esp), %edx
	movl	%ecx, 8(%esp)
	movl	52(%esp), %ecx
	leal	4(%ecx,%edx), %edx
	movl	%edx, 4(%esp)
	call	_memmove
	subl	$1, 440(%esi)
	movups	20(%esp), %xmm0
	movl	12(%ebx), %ecx
	jmp	L1301
	.p2align 4,,10
	.p2align 3
L1383:
	movl	40(%esp), %ecx
	cmpl	28(%ecx), %esi
	jne	L1316
	jmp	L1385
	.p2align 4,,10
	.p2align 3
L1389:
	movl	(%edi), %eax
	cmpl	%eax, 944(%ebx)
	je	L1323
	movl	48(%esp), %eax
	leal	-12(%ebp), %esp
	movl	%edi, %edx
	movl	$1, %ecx
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
	jmp	__ZN5ImGuiL21DockContextRemoveNodeEP12ImGuiContextP13ImGuiDockNodeb.lto_priv.0
L1390:
	.cfi_restore_state
	movl	48(%esp), %esi
	testb	$-128, 23576(%esi)
	jne	L1392
L1332:
	movl	48(%eax), %eax
	movl	%ebx, 108(%eax)
	movl	112(%edi), %eax
	movl	8(%ebx), %edx
	movl	48(%eax), %eax
	movl	%edx, (%eax)
	movl	112(%edi), %eax
	jmp	L1330
L1388:
	testl	%eax, %eax
	je	L1322
	jmp	L1323
L1392:
	movl	4(%ebx), %edx
	movl	%edx, 16(%esp)
	movl	8(%ebx), %edx
	movl	%edx, 12(%esp)
	movl	48(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	(%edi), %eax
	movl	$LC72, (%esp)
	movl	%eax, 4(%esp)
	call	__ZN5ImGui8DebugLogEPKcz
	movl	112(%edi), %eax
	jmp	L1332
	.cfi_endproc
LFE115:
	.section .rdata,"dr"
	.align 4
LC73:
	.ascii "[docking] DockNodeAddWindow node 0x%08X window '%s'\12\0"
	.text
	.p2align 4
	.def	__ZN5ImGuiL17DockNodeAddWindowEP13ImGuiDockNodeP11ImGuiWindowb;	.scl	3;	.type	32;	.endef
__ZN5ImGuiL17DockNodeAddWindowEP13ImGuiDockNodeP11ImGuiWindowb:
LFB126:
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
	movl	%edx, %esi
	pushl	%ebx
	.cfi_offset 3, -20
	movl	%eax, %ebx
	andl	$-8, %esp
	subl	$28, %esp
	movl	936(%edx), %eax
	movl	_GImGui, %edi
	movb	%cl, 27(%esp)
	testl	%eax, %eax
	je	L1394
	xorl	%ecx, %ecx
	call	__ZN5ImGuiL20DockNodeRemoveWindowEP13ImGuiDockNodeP11ImGuiWindowj.lto_priv.0
L1394:
	testb	$64, 23576(%edi)
	jne	L1446
	movl	112(%ebx), %eax
	testl	%eax, %eax
	movl	36(%ebx), %eax
	je	L1396
L1397:
	cmpl	%eax, 40(%ebx)
	je	L1399
L1445:
	movl	44(%ebx), %edi
L1403:
	movl	%esi, (%edi,%eax,4)
	addl	$1, 36(%ebx)
	orb	$2, 161(%ebx)
	movzbl	909(%esi), %edx
	movl	%ebx, 936(%esi)
	movl	(%ebx), %eax
	movl	%eax, 944(%esi)
	cmpl	$1, 36(%ebx)
	setg	%al
	andl	$-10, %edx
	orl	%edx, %eax
	movb	%al, 909(%esi)
	movl	112(%ebx), %edi
	testl	%edi, %edi
	je	L1447
L1407:
	cmpb	$0, 27(%esp)
	je	L1410
	movl	48(%ebx), %eax
	testl	%eax, %eax
	je	L1448
L1411:
	movl	%esi, %ecx
	movl	$4194304, %edx
	call	__ZN5ImGui12TabBarAddTabEP11ImGuiTabBariP11ImGuiWindow
L1410:
	movl	%ebx, %eax
	call	__ZN5ImGuiL25DockNodeUpdateVisibleFlagEP13ImGuiDockNode
	movl	112(%ebx), %ecx
	testl	%ecx, %ecx
	je	L1393
	movl	12(%esi), %edx
	leal	-12(%ebp), %esp
	movl	%esi, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	orl	$16777216, %edx
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	jmp	__ZN5ImGui30UpdateWindowParentAndRootLinksEP11ImGuiWindowiS1_
	.p2align 4,,10
	.p2align 3
L1393:
	.cfi_restore_state
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
L1446:
	.cfi_restore_state
	movl	4(%esi), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	$LC73, (%esp)
	movl	%eax, 4(%esp)
	call	__ZN5ImGui8DebugLogEPKcz
	movl	112(%ebx), %eax
	testl	%eax, %eax
	movl	36(%ebx), %eax
	jne	L1397
L1396:
	cmpl	$1, %eax
	jne	L1397
	movl	44(%ebx), %edi
	movl	(%edi), %edx
	cmpb	$0, 224(%edx)
	jne	L1398
	movl	$2, %eax
	subb	223(%edx), %al
	movb	$1, 230(%edx)
	movb	%al, 260(%edx)
	movl	36(%ebx), %eax
	jmp	L1397
	.p2align 4,,10
	.p2align 3
L1399:
	movl	$8, %edx
	testl	%eax, %eax
	jne	L1449
L1401:
	movl	_GImGui, %eax
	leal	0(,%edx,4), %ecx
	testl	%eax, %eax
	je	L1404
	addl	$1, 188(%eax)
L1404:
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, 20(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	44(%ebx), %ecx
	movl	20(%esp), %edx
	movl	%eax, %edi
	testl	%ecx, %ecx
	je	L1405
	movl	36(%ebx), %eax
	movl	%ecx, 4(%esp)
	movl	%edi, (%esp)
	sall	$2, %eax
	movl	%edx, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%ecx, 20(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	20(%esp), %ecx
	movl	16(%esp), %edx
	testl	%eax, %eax
	je	L1406
	subl	$1, 188(%eax)
L1406:
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	movl	%edx, 20(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	20(%esp), %edx
L1405:
	movl	%edi, 44(%ebx)
	movl	36(%ebx), %eax
	movl	%edx, 40(%ebx)
	jmp	L1403
	.p2align 4,,10
	.p2align 3
L1447:
	movl	24(%ebx), %ecx
	testl	%ecx, %ecx
	jne	L1407
	testb	$4, 17(%ebx)
	jne	L1407
	movzbl	156(%ebx), %eax
	testb	$7, %al
	jne	L1408
	andl	$-8, %eax
	orl	$2, %eax
	movb	%al, 156(%ebx)
L1408:
	testb	$56, %al
	jne	L1409
	movzbl	156(%ebx), %eax
	andl	$-57, %eax
	orl	$16, %eax
	movb	%al, 156(%ebx)
L1409:
	movzwl	156(%ebx), %eax
	testw	$448, %ax
	jne	L1407
	andw	$-449, %ax
	orb	$-128, %al
	movw	%ax, 156(%ebx)
	jmp	L1407
	.p2align 4,,10
	.p2align 3
L1449:
	movl	%eax, %edx
	leal	1(%eax), %ecx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	%eax, %edx
	jle	L1445
	jmp	L1401
	.p2align 4,,10
	.p2align 3
L1448:
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1412
	addl	$1, 188(%eax)
L1412:
	movl	$0, 4(%esp)
	movl	$144, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	xorl	%edx, %edx
	movl	$0, 128(%eax)
	movl	$0, 132(%eax)
	movl	$0, 136(%eax)
	movl	$0, 140(%eax)
L1413:
	movl	$0, (%eax,%edx)
	movl	$0, 4(%eax,%edx)
	movl	$0, 8(%eax,%edx)
	movl	$0, 12(%eax,%edx)
	addl	$16, %edx
	cmpl	$128, %edx
	jb	L1413
	movlps	LC74, %xmm0
	movl	$-1, %edx
	movl	%eax, 48(%ebx)
	movw	%dx, 108(%eax)
	movlps	%xmm0, 32(%eax)
	movss	148(%ebx), %xmm0
	unpcklps	%xmm0, %xmm0
	movlps	%xmm0, 20(%eax)
	cmpl	$1, 36(%ebx)
	jle	L1411
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L1415:
	movl	44(%ebx), %edx
	movl	(%edx,%edi,4), %ecx
	xorl	%edx, %edx
	addl	$1, %edi
	call	__ZN5ImGui12TabBarAddTabEP11ImGuiTabBariP11ImGuiWindow
	movl	36(%ebx), %ecx
	movl	48(%ebx), %eax
	leal	-1(%ecx), %edx
	cmpl	%edi, %edx
	jg	L1415
	jmp	L1411
	.p2align 4,,10
	.p2align 3
L1398:
	cmpl	$1, 40(%ebx)
	jne	L1403
	movl	$2, %edx
	jmp	L1401
	.cfi_endproc
LFE126:
	.p2align 4
	.globl	__ZN5ImGuiL19DockNodeMoveWindowsEP13ImGuiDockNodeS1_.lto_priv.0
	.def	__ZN5ImGuiL19DockNodeMoveWindowsEP13ImGuiDockNodeS1_.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZN5ImGuiL19DockNodeMoveWindowsEP13ImGuiDockNodeS1_.lto_priv.0:
LFB130:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%edx, %ecx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$32, %esp
	movl	%edi, -4(%ebp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	movl	%ebx, -12(%ebp)
	movl	48(%edx), %eax
	testl	%eax, %eax
	.cfi_offset 3, -20
	je	L1451
	movl	48(%edi), %edx
	testl	%edx, %edx
	je	L1452
L1451:
	movb	$0, 15(%esp)
L1453:
	movl	44(%ecx), %ebx
	movl	36(%ecx), %eax
	leal	(%ebx,%eax,4), %eax
	cmpl	%ebx, %eax
	je	L1454
	movzbl	15(%esp), %edx
	movl	%ecx, 8(%esp)
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	xorl	$1, %edx
	movzbl	%dl, %esi
	movl	%esi, 16(%esp)
	movl	%eax, %esi
	.p2align 4
	.p2align 3
L1455:
	movl	(%ebx), %edx
	movl	16(%esp), %ecx
	movl	%edi, %eax
	addl	$4, %ebx
	andb	$-2, 909(%edx)
	movl	$0, 936(%edx)
	call	__ZN5ImGuiL17DockNodeAddWindowEP13ImGuiDockNodeP11ImGuiWindowb
	cmpl	%ebx, %esi
	jne	L1455
	movl	8(%esp), %ecx
	movl	-8(%ebp), %esi
	.cfi_restore 6
	movl	44(%ecx), %ebx
L1454:
	testl	%ebx, %ebx
	je	L1456
	movl	_GImGui, %eax
	movl	$0, 36(%ecx)
	movl	$0, 40(%ecx)
	testl	%eax, %eax
	je	L1457
	subl	$1, 188(%eax)
L1457:
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	movl	%ecx, 16(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	16(%esp), %ecx
	movl	$0, 44(%ecx)
L1456:
	cmpb	$0, 15(%esp)
	jne	L1450
	movl	48(%ecx), %ebx
	testl	%ebx, %ebx
	je	L1450
	movl	48(%edi), %eax
	testl	%eax, %eax
	je	L1459
	movl	20(%ebx), %edx
	movl	%edx, 20(%eax)
	movl	48(%ecx), %ebx
	testl	%ebx, %ebx
	je	L1450
L1459:
	movl	140(%ebx), %eax
	testl	%eax, %eax
	je	L1460
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L1461
	subl	$1, 188(%edx)
L1461:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 16(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	16(%esp), %ecx
L1460:
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	L1462
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L1463
	subl	$1, 188(%edx)
L1463:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 16(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	16(%esp), %ecx
L1462:
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1464
	subl	$1, 188(%eax)
L1464:
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	movl	%ecx, 16(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	16(%esp), %ecx
	movl	$0, 48(%ecx)
L1450:
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
L1452:
	.cfi_restore_state
	movl	%eax, 48(%edi)
	movb	$1, 15(%esp)
	movl	$0, 48(%ecx)
	jmp	L1453
	.cfi_endproc
LFE130:
	.section .rdata,"dr"
	.align 4
LC75:
	.ascii "[docking] DockSettingsRenameNodeReferences: from 0x%08X -> to 0x%08X\12\0"
	.text
	.p2align 4
	.globl	__ZN5ImGuiL32DockSettingsRenameNodeReferencesEjj.lto_priv.0
	.def	__ZN5ImGuiL32DockSettingsRenameNodeReferencesEjj.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZN5ImGuiL32DockSettingsRenameNodeReferencesEjj.lto_priv.0:
LFB131:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	_GImGui, %edx
	testb	$64, 23576(%edx)
	jne	L1517
L1501:
	movl	16076(%edx), %eax
	testl	%eax, %eax
	jle	L1502
	xorl	%eax, %eax
	jmp	L1504
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1503:
	addl	$1, %eax
	cmpl	%eax, 16076(%edx)
	jle	L1502
L1504:
	movl	16084(%edx), %ecx
	movl	(%ecx,%eax,4), %ecx
	cmpl	%ebx, 944(%ecx)
	jne	L1503
	movl	936(%ecx), %edi
	testl	%edi, %edi
	jne	L1503
	movl	%esi, 944(%ecx)
	addl	$1, %eax
	cmpl	%eax, 16076(%edx)
	jg	L1504
	.p2align 4
	.p2align 3
L1502:
	movl	23460(%edx), %edi
	testl	%edi, %edi
	je	L1500
	leal	4(%edi), %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1507:
	cmpl	%ebx, 20(%eax)
	jne	L1506
	movl	%esi, 20(%eax)
	movl	23460(%edx), %edi
L1506:
	movl	23452(%edx), %ecx
	addl	-4(%eax), %eax
	leal	4(%edi,%ecx), %ecx
	cmpl	%ecx, %eax
	jne	L1507
L1500:
	addl	$16, %esp
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
L1517:
	.cfi_restore_state
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC75, (%esp)
	movl	%edx, 12(%esp)
	call	__ZN5ImGui8DebugLogEPKcz
	movl	12(%esp), %edx
	jmp	L1501
	.cfi_endproc
LFE131:
	.p2align 4
	.globl	__ZN5ImGuiL28DockSettingsHandler_ClearAllEP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0
	.def	__ZN5ImGuiL28DockSettingsHandler_ClearAllEP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZN5ImGuiL28DockSettingsHandler_ClearAllEP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0:
LFB132:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$40, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %ebx
	movl	23408(%ebx), %eax
	testl	%eax, %eax
	je	L1519
	movl	_GImGui, %edx
	movl	$0, 23400(%ebx)
	movl	$0, 23404(%ebx)
	testl	%edx, %edx
	je	L1520
	subl	$1, 188(%edx)
L1520:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 23408(%ebx)
L1519:
	movl	_GImGui, %ebx
	movl	23460(%ebx), %eax
	movl	%ebx, 24(%esp)
	testl	%eax, %eax
	je	L1521
	addl	$4, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1522:
	movl	$0, 20(%eax)
	movl	23452(%ebx), %edx
	movl	23460(%ebx), %ecx
	addl	-4(%eax), %eax
	leal	4(%ecx,%edx), %edx
	cmpl	%edx, %eax
	jne	L1522
L1521:
	movl	16076(%ebx), %edx
	testl	%edx, %edx
	jle	L1523
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L1524:
	movl	16084(%ebx), %eax
	movl	(%eax,%esi,4), %edx
	movl	23576(%ebx), %eax
	addl	$1, %esi
	call	__ZN5ImGui30DockContextProcessUndockWindowEP12ImGuiContextP11ImGuiWindowb.constprop.0.isra.0
	cmpl	16076(%ebx), %esi
	jl	L1524
	movl	_GImGui, %ebx
	movl	%ebx, 24(%esp)
L1523:
	movl	23376(%ebx), %eax
	testl	%eax, %eax
	jle	L1525
	movl	$0, 32(%esp)
	xorl	%eax, %eax
	xorl	%esi, %esi
	movl	%ebx, %edi
	movl	$0, 28(%esp)
	jmp	L1535
	.p2align 4,,10
	.p2align 3
L1528:
	movl	28(%esp), %eax
	movl	36(%esp), %ecx
	movl	%ebx, (%eax,%ecx)
	movl	%edx, %eax
L1526:
	addl	$1, %esi
	cmpl	23376(%edi), %esi
	jge	L1628
L1535:
	movl	23384(%edi), %edx
	movl	4(%edx,%esi,8), %ebx
	testl	%ebx, %ebx
	je	L1526
	leal	0(,%eax,4), %ecx
	leal	1(%eax), %edx
	movl	%ecx, 36(%esp)
	movl	32(%esp), %ecx
	cmpl	%ecx, %eax
	jne	L1528
	testl	%ecx, %ecx
	jne	L1529
	movl	$8, %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, 32(%esp)
L1530:
	movl	32(%esp), %eax
	leal	0(,%eax,4), %ecx
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1532
	addl	$1, 188(%eax)
L1532:
	movl	%ecx, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, 16(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	28(%esp), %ecx
	movl	16(%esp), %edx
	movl	%eax, 20(%esp)
	testl	%ecx, %ecx
	je	L1533
	movl	36(%esp), %edx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	16(%esp), %edx
	testl	%eax, %eax
	je	L1534
	subl	$1, 188(%eax)
L1534:
	movl	28(%esp), %eax
	movl	$0, 4(%esp)
	movl	%edx, 16(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	16(%esp), %edx
L1533:
	movl	20(%esp), %eax
	movl	%eax, 28(%esp)
	jmp	L1528
	.p2align 4,,10
	.p2align 3
L1529:
	movl	32(%esp), %ecx
	movl	%ecx, %eax
	sarl	%eax
	addl	%ecx, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	%ecx, %eax
	jle	L1528
	movl	%eax, 32(%esp)
	jmp	L1530
	.p2align 4,,10
	.p2align 3
L1628:
	movl	%edi, %ebx
	movl	%eax, %ecx
	movl	28(%esp), %edi
	movl	23460(%ebx), %eax
	movl	%eax, 36(%esp)
	testl	%eax, %eax
	je	L1539
	leal	4(%eax), %edx
	jmp	L1543
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1540:
	movl	23452(%ebx), %eax
	movl	36(%esp), %esi
	addl	-4(%edx), %edx
	leal	4(%esi,%eax), %eax
	cmpl	%eax, %edx
	je	L1539
L1543:
	movl	20(%edx), %esi
	testl	%esi, %esi
	je	L1540
	testl	%ecx, %ecx
	je	L1540
	movl	%edx, 32(%esp)
	xorl	%eax, %eax
	jmp	L1542
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1541:
	addl	$1, %eax
	cmpl	%eax, %ecx
	je	L1629
L1542:
	movl	(%edi,%eax,4), %edx
	cmpl	(%edx), %esi
	jne	L1541
	movl	32(%esp), %edx
	movl	$0, 20(%edx)
	movl	23460(%ebx), %eax
	movl	%eax, 36(%esp)
	jmp	L1540
	.p2align 4,,10
	.p2align 3
L1629:
	movl	32(%esp), %edx
	jmp	L1540
	.p2align 4,,10
	.p2align 3
L1539:
	cmpl	$1, %ecx
	jg	L1630
	jne	L1631
	movl	(%edi), %edx
	movl	%ebx, %eax
	xorl	%ecx, %ecx
	call	__ZN5ImGuiL21DockContextRemoveNodeEP12ImGuiContextP13ImGuiDockNodeb.lto_priv.0
	movl	23384(%ebx), %eax
	testl	%eax, %eax
	je	L1623
L1627:
	movl	_GImGui, %ebx
L1549:
	movl	24(%esp), %ecx
	movl	$0, 23376(%ecx)
	movl	$0, 23380(%ecx)
	testl	%ebx, %ebx
	je	L1555
	subl	$1, 188(%ebx)
L1555:
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	24(%esp), %eax
	movl	$0, 23384(%eax)
L1554:
	movl	24(%esp), %eax
	movl	23396(%eax), %eax
	testl	%eax, %eax
	je	L1556
	movl	_GImGui, %ebx
L1550:
	movl	24(%esp), %ecx
	movl	$0, 23388(%ecx)
	movl	$0, 23392(%ecx)
	testl	%ebx, %ebx
	je	L1557
	subl	$1, 188(%ebx)
L1557:
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	24(%esp), %eax
	movl	$0, 23396(%eax)
L1556:
	testl	%edi, %edi
	jne	L1553
L1518:
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
L1630:
	.cfi_restore_state
	movl	$__ZL30DockNodeComparerDepthMostFirstPKvS0_.lto_priv.0, 12(%esp)
	xorl	%esi, %esi
	movl	$4, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edi, (%esp)
	movl	%ecx, 32(%esp)
	call	_qsort
	movl	%ebx, 36(%esp)
	movl	32(%esp), %ebx
	.p2align 4
	.p2align 3
L1545:
	movl	(%edi,%esi,4), %edx
	movl	36(%esp), %eax
	xorl	%ecx, %ecx
	addl	$1, %esi
	call	__ZN5ImGuiL21DockContextRemoveNodeEP12ImGuiContextP13ImGuiDockNodeb.lto_priv.0
	cmpl	%ebx, %esi
	jl	L1545
	movl	36(%esp), %ebx
	movl	23384(%ebx), %eax
	testl	%eax, %eax
	jne	L1627
L1623:
	movl	23396(%ebx), %eax
	movl	_GImGui, %ebx
	testl	%eax, %eax
	jne	L1550
L1553:
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1558
	subl	$1, 188(%eax)
L1558:
	movl	%edi, 8(%ebp)
	movl	$0, 12(%ebp)
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
	jmp	__ZL11FreeWrapperPvS_.lto_priv.0
L1631:
	.cfi_restore_state
	movl	23384(%ebx), %eax
	testl	%eax, %eax
	jne	L1627
	jmp	L1554
L1525:
	movl	23460(%ebx), %edi
	movl	%edi, 36(%esp)
	testl	%edi, %edi
	je	L1537
	leal	4(%edi), %edx
	xorl	%ecx, %ecx
	xorl	%edi, %edi
	jmp	L1543
L1537:
	movl	23384(%ebx), %eax
	testl	%eax, %eax
	jne	L1549
	movl	23396(%ebx), %eax
	testl	%eax, %eax
	jne	L1550
	jmp	L1518
	.cfi_endproc
LFE132:
	.section .rdata,"dr"
	.align 4
LC76:
	.ascii "[docking] DockContextPruneUnusedSettingsNodes: Prune 0x%08X\12\0"
LC77:
	.ascii "##DockNode_%02X\0"
	.section	.text.unlikely,"x"
LCOLDB78:
	.text
LHOTB78:
	.p2align 4
	.globl	__ZN5ImGuiL28DockSettingsHandler_ApplyAllEP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0
	.def	__ZN5ImGuiL28DockSettingsHandler_ApplyAllEP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZN5ImGuiL28DockSettingsHandler_ApplyAllEP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0:
LFB138:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	%ecx
	subl	$88, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.cfi_offset 1, -24
	movl	8(%ebp), %eax
	movl	16076(%eax), %ebx
	movl	%eax, -44(%ebp)
	movl	%ebx, -52(%ebp)
	testl	%ebx, %ebx
	je	L1905
L1912:
	movl	23400(%eax), %eax
	movl	%eax, -56(%ebp)
L1633:
	movl	-56(%ebp), %esi
	testl	%esi, %esi
	jle	L1731
	movl	-44(%ebp), %eax
	movl	$0, -40(%ebp)
	movl	23408(%eax), %edi
	jmp	L1747
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1732:
	addl	$1, -40(%ebp)
	addl	$36, %edi
	movl	-40(%ebp), %eax
	cmpl	%eax, -56(%ebp)
	je	L1731
L1747:
	movl	(%edi), %edx
	testl	%edx, %edx
	je	L1732
	movl	-44(%ebp), %ebx
	movl	%ebx, %eax
	call	__ZN5ImGuiL18DockContextAddNodeEP12ImGuiContextj.lto_priv.0
	movl	4(%edi), %edx
	movl	%eax, %esi
	xorl	%eax, %eax
	testl	%edx, %edx
	je	L1733
	movl	%edx, (%esp)
	leal	23376(%ebx), %ecx
	call	__ZNK12ImGuiStorage10GetVoidPtrEj
	subl	$4, %esp
L1733:
	movl	%eax, 24(%esi)
	movswl	26(%edi), %edx
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%edx, %xmm0
	movswl	24(%edi), %edx
	cvtsi2ssl	%edx, %xmm1
	movss	%xmm0, 56(%esi)
	xorps	%xmm0, %xmm0
	movss	%xmm1, 52(%esi)
	movswl	30(%edi), %edx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%edx, %xmm0
	movswl	28(%edi), %edx
	cvtsi2ssl	%edx, %xmm1
	movss	%xmm0, 64(%esi)
	xorps	%xmm0, %xmm0
	movss	%xmm1, 60(%esi)
	movswl	34(%edi), %edx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%edx, %xmm0
	movswl	32(%edi), %edx
	cvtsi2ssl	%edx, %xmm1
	movzwl	156(%esi), %edx
	andw	$-512, %dx
	movss	%xmm0, 72(%esi)
	orl	$73, %edx
	movw	%dx, 156(%esi)
	movss	%xmm1, 68(%esi)
	testl	%eax, %eax
	je	L1734
	movl	28(%eax), %ebx
	testl	%ebx, %ebx
	je	L1914
	movl	32(%eax), %ecx
	testl	%ecx, %ecx
	je	L1915
	movl	12(%edi), %edx
	movl	%edx, 148(%esi)
	movsbl	16(%edi), %edx
	movl	%edx, 76(%esi)
	movl	20(%edi), %ecx
	movl	12(%esi), %edx
	orl	4(%esi), %edx
	andl	$12712992, %ecx
	orl	%ecx, %edx
	movl	%ecx, 8(%esi)
	movl	%edx, 16(%esi)
	.p2align 4
	.p2align 4
	.p2align 3
L1739:
	movl	%eax, %edx
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	L1739
L1754:
	movl	(%edx), %eax
	movl	$LC77, 8(%esp)
	movl	$20, 4(%esp)
	movl	%eax, 12(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z14ImFormatStringPcjPKcz
	movzbl	-36(%ebp), %ecx
	testb	%cl, %cl
	je	L1773
	leal	-35(%ebp), %ebx
	movl	%edi, -48(%ebp)
	movl	$-1, %eax
	movzbl	(%ebx), %edx
	cmpb	$35, %cl
	je	L1741
	.p2align 6
	.p2align 4
	.p2align 3
L1744:
	movl	%eax, %edi
	xorl	%ecx, %eax
	movzbl	%al, %eax
	shrl	$8, %edi
	xorl	__ZL17GCrc32LookupTable.lto_priv.0(,%eax,4), %edi
	movl	%edi, %eax
	testb	%dl, %dl
	je	L1916
	addl	$1, %ebx
	movl	%edx, %ecx
L1917:
	movzbl	(%ebx), %edx
	cmpb	$35, %cl
	jne	L1744
L1741:
	cmpb	$35, %dl
	jne	L1744
	cmpb	$35, 1(%ebx)
	jne	L1744
	addl	$1, %ebx
	movl	$-1885708032, %eax
	movl	%edx, %ecx
	jmp	L1917
	.p2align 4,,10
	.p2align 3
L1916:
	movl	-48(%ebp), %edi
	notl	%eax
L1740:
	movl	_GImGui, %ecx
	movl	%eax, (%esp)
	addl	$36, %edi
	addl	$16124, %ecx
	call	__ZNK12ImGuiStorage10GetVoidPtrEj
	subl	$4, %esp
	addl	$1, -40(%ebp)
	movl	%eax, 112(%esi)
	movl	-40(%ebp), %eax
	cmpl	%eax, -56(%ebp)
	jne	L1747
L1731:
	movl	-44(%ebp), %edi
	movl	16076(%edi), %edx
	testl	%edx, %edx
	jle	L1632
	leal	23376(%edi), %esi
	xorl	%ebx, %ebx
	movl	%esi, -40(%ebp)
	.p2align 4
	.p2align 3
L1750:
	movl	16084(%edi), %eax
	movl	(%eax,%ebx,4), %esi
	movl	944(%esi), %ecx
	testl	%ecx, %ecx
	je	L1749
	movl	16048(%edi), %eax
	subl	$1, %eax
	cmpl	%eax, 624(%esi)
	jl	L1749
	movl	936(%esi), %eax
	testl	%eax, %eax
	jne	L1749
	movl	%ecx, (%esp)
	movl	-40(%ebp), %ecx
	call	__ZNK12ImGuiStorage10GetVoidPtrEj
	movl	$1, %ecx
	movl	%esi, %edx
	subl	$4, %esp
	call	__ZN5ImGuiL17DockNodeAddWindowEP13ImGuiDockNodeP11ImGuiWindowb
L1749:
	addl	$1, %ebx
	cmpl	16076(%edi), %ebx
	jl	L1750
L1632:
	leal	-16(%ebp), %esp
	popl	%ecx
	.cfi_remember_state
	.cfi_restore 1
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
L1914:
	.cfi_restore_state
	movl	%esi, 28(%eax)
	movl	24(%esi), %eax
L1736:
	movl	12(%edi), %edx
	movl	%edx, 148(%esi)
	movsbl	16(%edi), %edx
	movl	%edx, 76(%esi)
	movl	20(%edi), %ecx
	movl	4(%esi), %edx
	orl	12(%esi), %edx
	andl	$12712992, %ecx
	orl	%ecx, %edx
	movl	%ecx, 8(%esi)
	movl	%edx, 16(%esi)
	testl	%eax, %eax
	jne	L1739
	movl	%esi, %edx
	jmp	L1754
	.p2align 4,,10
	.p2align 3
L1915:
	movl	%esi, 32(%eax)
	movl	24(%esi), %eax
	jmp	L1736
L1905:
	movl	-44(%ebp), %eax
	movl	23400(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	%eax, -72(%ebp)
	testl	%eax, %eax
	jg	L1918
	movl	-44(%ebp), %eax
	movl	23460(%eax), %edx
	testl	%edx, %edx
	je	L1633
	movl	$0, -48(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -60(%ebp)
L1751:
	movl	-48(%ebp), %ebx
	movl	-40(%ebp), %eax
	sall	$3, %ebx
	addl	%ebx, %eax
	movl	%eax, -56(%ebp)
	movl	%ebx, %eax
	sarl	$3, %eax
	movl	%eax, -64(%ebp)
	jmp	L1752
	.p2align 4,,10
	.p2align 3
L1734:
	movl	12(%edi), %eax
	movl	%eax, 148(%esi)
	movsbl	16(%edi), %eax
	movl	%eax, 76(%esi)
	movl	20(%edi), %edx
	movl	4(%esi), %eax
	orl	12(%esi), %eax
	andl	$12712992, %edx
	orl	%edx, %eax
	movl	%edx, 8(%esi)
	movl	%esi, %edx
	movl	%eax, 16(%esi)
	jmp	L1754
L1773:
	xorl	%eax, %eax
	jmp	L1740
L1918:
	sall	$4, %eax
	movl	%eax, %edx
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1635
	addl	$1, 188(%eax)
L1635:
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, -60(%ebp)
	movl	-56(%ebp), %eax
	leal	0(,%eax,8), %edx
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1636
	addl	$1, 188(%eax)
L1636:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	$0, -48(%ebp)
	movl	%eax, -40(%ebp)
	movl	-44(%ebp), %eax
	movl	23400(%eax), %eax
	testl	%eax, %eax
	jle	L1637
	movl	-56(%ebp), %eax
	movl	$0, -80(%ebp)
	movl	$0, -56(%ebp)
	movl	%eax, -84(%ebp)
	.p2align 4
	.p2align 3
L1690:
	movl	-44(%ebp), %esi
	movl	-56(%ebp), %eax
	movl	-40(%ebp), %ecx
	movl	23408(%esi), %edx
	leal	(%eax,%eax,8), %eax
	leal	(%edx,%eax,4), %eax
	movl	%eax, -64(%ebp)
	movl	4(%eax), %esi
	movl	-48(%ebp), %eax
	sall	$3, %eax
	movl	%eax, -76(%ebp)
	leal	(%ecx,%eax), %ebx
	sarl	$3, %eax
	testl	%esi, %esi
	je	L1639
	movl	%eax, -68(%ebp)
	movl	-40(%ebp), %edi
	movl	%eax, %edx
	jmp	L1640
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1641:
	movl	%edx, %eax
	shrl	%eax
	cmpl	%esi, (%edi,%eax,8)
	jb	L1919
	movl	%eax, %edx
L1640:
	testl	%edx, %edx
	jne	L1641
	movl	-68(%ebp), %eax
	cmpl	%ebx, %edi
	je	L1639
	cmpl	(%edi), %esi
	jne	L1639
	movl	4(%edi), %edx
	cmpl	$-1, %edx
	je	L1639
	sall	$4, %edx
	addl	-60(%ebp), %edx
	je	L1639
	movl	-64(%ebp), %esi
	movl	(%esi), %edi
	movl	12(%edx), %esi
	movl	%esi, -68(%ebp)
L1642:
	movl	-40(%ebp), %esi
	jmp	L1644
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1645:
	movl	%eax, %edx
	shrl	%edx
	cmpl	%edi, (%esi,%edx,8)
	jb	L1920
	movl	%edx, %eax
L1644:
	testl	%eax, %eax
	jne	L1645
	cmpl	%ebx, %esi
	je	L1646
	cmpl	(%esi), %edi
	je	L1647
L1646:
	movl	-48(%ebp), %eax
	movl	%esi, %ebx
	subl	-40(%ebp), %ebx
	movl	%edi, -36(%ebp)
	movl	%ebx, %edx
	movl	$-1, -32(%ebp)
	sarl	$3, %edx
	leal	1(%eax), %edi
	cmpl	-72(%ebp), %eax
	je	L1921
L1649:
	movl	-40(%ebp), %eax
	leal	(%eax,%ebx), %esi
	movl	-48(%ebp), %eax
	cmpl	%eax, %edx
	jl	L1922
L1656:
	movl	-36(%ebp), %eax
	movl	%edi, -48(%ebp)
	movl	%eax, (%esi)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esi)
L1647:
	movl	4(%esi), %ebx
	cmpl	$-1, %ebx
	je	L1657
	sall	$4, %ebx
	addl	-60(%ebp), %ebx
L1658:
	movl	-68(%ebp), %eax
	movl	%eax, 12(%ebx)
	movl	-64(%ebp), %eax
	movl	4(%eax), %esi
	testl	%esi, %esi
	jne	L1923
L1666:
	movl	-44(%ebp), %eax
	addl	$1, -56(%ebp)
	movl	23400(%eax), %eax
	cmpl	%eax, -56(%ebp)
	jl	L1690
	testl	%eax, %eax
	jle	L1637
	movl	-48(%ebp), %ebx
	leal	(%eax,%eax,8), %edx
	movl	_GImGui, %ecx
	sall	$3, %ebx
	movl	%ebx, %eax
	movl	%ebx, -76(%ebp)
	sarl	$3, %eax
	movl	%eax, -72(%ebp)
	movl	%eax, -64(%ebp)
	movl	-40(%ebp), %eax
	addl	%ebx, %eax
	movl	%eax, -56(%ebp)
	movl	-44(%ebp), %eax
	movl	23408(%eax), %eax
	leal	8(%eax), %edi
	movl	%eax, -80(%ebp)
	leal	(%edi,%edx,4), %esi
	movl	%edi, %ebx
	movl	%esi, -48(%ebp)
	.p2align 4
	.p2align 3
L1696:
	movl	(%ebx), %esi
	testl	%esi, %esi
	je	L1691
	movl	23460(%ecx), %edi
	testl	%edi, %edi
	je	L1691
	leal	4(%edi), %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1693:
	cmpl	(%eax), %esi
	je	L1692
	movl	23452(%ecx), %edx
	addl	-4(%eax), %eax
	leal	4(%edi,%edx), %edx
	cmpl	%edx, %eax
	jne	L1693
L1691:
	addl	$36, %ebx
	cmpl	-48(%ebp), %ebx
	jne	L1696
	movl	-44(%ebp), %ecx
	movl	-76(%ebp), %ebx
	movl	-80(%ebp), %eax
	movl	23460(%ecx), %edx
	testl	%edx, %edx
	je	L1697
L1752:
	movl	-44(%ebp), %eax
	movl	%ebx, -68(%ebp)
	leal	4(%edx), %ecx
	movl	23452(%eax), %eax
	leal	4(%edx,%eax), %eax
	movl	%eax, -48(%ebp)
	.p2align 4
	.p2align 3
L1706:
	movl	20(%ecx), %esi
	testl	%esi, %esi
	je	L1699
	movl	-64(%ebp), %eax
	movl	-40(%ebp), %edi
	jmp	L1700
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1701:
	movl	%eax, %edx
	shrl	%edx
	cmpl	%esi, (%edi,%edx,8)
	jb	L1924
	movl	%edx, %eax
L1700:
	testl	%eax, %eax
	jne	L1701
	cmpl	%edi, -56(%ebp)
	je	L1699
	cmpl	(%edi), %esi
	jne	L1699
	movl	4(%edi), %edx
	cmpl	$-1, %edx
	je	L1699
	sall	$4, %edx
	addl	-60(%ebp), %edx
	je	L1699
	movl	12(%edx), %edi
	addl	$1, (%edx)
	movl	-64(%ebp), %eax
	movl	-40(%ebp), %ebx
	cmpl	%edi, %esi
	jne	L1704
	jmp	L1703
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1705:
	movl	%eax, %edx
	shrl	%edx
	cmpl	%edi, (%ebx,%edx,8)
	jb	L1925
	movl	%edx, %eax
L1704:
	testl	%eax, %eax
	jne	L1705
	cmpl	%ebx, -56(%ebp)
	je	L1699
	cmpl	(%ebx), %edi
	jne	L1699
	movl	4(%ebx), %edx
	cmpl	$-1, %edx
	je	L1699
	sall	$4, %edx
	addl	-60(%ebp), %edx
	je	L1699
L1703:
	addl	$1, 4(%edx)
L1699:
	addl	-4(%ecx), %ecx
	cmpl	-48(%ebp), %ecx
	jne	L1706
	movl	-44(%ebp), %eax
	movl	-68(%ebp), %ebx
	movl	23400(%eax), %edi
	testl	%edi, %edi
	jle	L1707
	movl	23408(%eax), %eax
L1697:
	movl	-40(%ebp), %ecx
	movl	%ebx, %edi
	sarl	$3, %edi
	addl	%ebx, %ecx
	movl	%edi, -56(%ebp)
	movl	%ecx, -64(%ebp)
	.p2align 4
	.p2align 3
L1727:
	movl	-52(%ebp), %esi
	leal	(%esi,%esi,8), %edx
	movl	-40(%ebp), %esi
	leal	(%eax,%edx,4), %eax
	movl	%eax, -48(%ebp)
	movl	(%eax), %ecx
	movl	-56(%ebp), %eax
	jmp	L1709
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1710:
	movl	%eax, %edx
	shrl	%edx
	cmpl	%ecx, (%esi,%edx,8)
	jb	L1926
	movl	%edx, %eax
L1709:
	testl	%eax, %eax
	jne	L1710
	cmpl	%esi, -64(%ebp)
	je	L1711
	cmpl	(%esi), %ecx
	jne	L1711
	movl	4(%esi), %eax
	cmpl	$-1, %eax
	je	L1711
	movl	-60(%ebp), %ebx
	sall	$4, %eax
	addl	%ebx, %eax
	movl	(%eax), %ebx
	movl	%eax, -68(%ebp)
	cmpl	$1, %ebx
	jg	L1712
	movl	12(%eax), %edi
	movl	-40(%ebp), %esi
	movl	-56(%ebp), %eax
	cmpl	%edi, %ecx
	je	L1927
	movl	%ecx, -72(%ebp)
	jmp	L1715
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1716:
	movl	%eax, %edx
	shrl	%edx
	cmpl	%edi, (%esi,%edx,8)
	jb	L1928
	movl	%edx, %eax
L1715:
	testl	%eax, %eax
	jne	L1716
	movl	-72(%ebp), %ecx
	cmpl	%esi, -64(%ebp)
	je	L1717
	cmpl	(%esi), %edi
	jne	L1717
	movl	4(%esi), %eax
	cmpl	$-1, %eax
	je	L1717
	sall	$4, %eax
	addl	-60(%ebp), %eax
L1714:
	cmpl	$1, %ebx
	je	L1929
	testl	%ebx, %ebx
	jne	L1720
	movl	-48(%ebp), %ebx
	movl	4(%ebx), %edi
	testl	%edi, %edi
	jne	L1720
	movl	-68(%ebp), %edi
	movl	8(%edi), %esi
	testl	%esi, %esi
	jne	L1720
L1721:
	movl	-44(%ebp), %eax
	testb	$64, 23576(%eax)
	jne	L1930
L1722:
	movl	_GImGui, %ecx
	movl	23460(%ecx), %edx
	testl	%edx, %edx
	je	L1723
	movl	-48(%ebp), %ebx
	leal	4(%edx), %eax
	movl	(%ebx), %esi
L1724:
	cmpl	20(%eax), %esi
	je	L1931
	movl	23452(%ecx), %ebx
	addl	-4(%eax), %eax
	leal	4(%edx,%ebx), %ebx
	cmpl	%ebx, %eax
	jne	L1724
	.p2align 4
	.p2align 3
L1723:
	movl	-48(%ebp), %eax
	movl	$0, (%eax)
L1712:
	movl	-44(%ebp), %ebx
	addl	$1, -52(%ebp)
	movl	-52(%ebp), %eax
	cmpl	23400(%ebx), %eax
	jge	L1707
	movl	23408(%ebx), %eax
	jmp	L1727
	.p2align 4,,10
	.p2align 3
L1926:
	subl	$1, %eax
	leal	8(%esi,%edx,8), %esi
	subl	%edx, %eax
	jmp	L1709
	.p2align 4,,10
	.p2align 3
L1920:
	subl	$1, %eax
	leal	8(%esi,%edx,8), %esi
	subl	%edx, %eax
	jmp	L1644
	.p2align 4,,10
	.p2align 3
L1639:
	movl	-64(%ebp), %ecx
	movl	(%ecx), %edi
	movl	%edi, -68(%ebp)
	jmp	L1642
	.p2align 4,,10
	.p2align 3
L1929:
	movl	-48(%ebp), %ebx
	movl	4(%ebx), %esi
	testl	%esi, %esi
	jne	L1720
	movl	-68(%ebp), %edi
	movl	8(%edi), %edx
	testl	%edx, %edx
	jne	L1720
	testb	$8, 21(%ebx)
	je	L1721
	.p2align 4
	.p2align 3
L1720:
	movl	4(%eax), %ebx
	testl	%ebx, %ebx
	jne	L1712
	jmp	L1721
	.p2align 4,,10
	.p2align 3
L1924:
	subl	$1, %eax
	leal	8(%edi,%edx,8), %edi
	subl	%edx, %eax
	jmp	L1700
	.p2align 4,,10
	.p2align 3
L1919:
	subl	$1, %edx
	leal	8(%edi,%eax,8), %edi
	subl	%eax, %edx
	jmp	L1640
	.p2align 4,,10
	.p2align 3
L1928:
	subl	$1, %eax
	leal	8(%esi,%edx,8), %esi
	subl	%edx, %eax
	jmp	L1715
	.p2align 4,,10
	.p2align 3
L1692:
	movl	20(%eax), %esi
	testl	%esi, %esi
	je	L1691
	movl	-72(%ebp), %eax
	movl	-40(%ebp), %edi
	movl	%ebx, -68(%ebp)
	jmp	L1694
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1695:
	movl	%eax, %edx
	shrl	%edx
	cmpl	%esi, (%edi,%edx,8)
	jb	L1932
	movl	%edx, %eax
L1694:
	testl	%eax, %eax
	jne	L1695
	movl	-68(%ebp), %ebx
	cmpl	%edi, -56(%ebp)
	je	L1691
	cmpl	(%edi), %esi
	jne	L1691
	movl	4(%edi), %eax
	cmpl	$-1, %eax
	je	L1691
	sall	$4, %eax
	addl	-60(%ebp), %eax
	je	L1691
	addl	$1, 8(%eax)
	jmp	L1691
	.p2align 4,,10
	.p2align 3
L1923:
	movl	-48(%ebp), %eax
	movl	-40(%ebp), %ebx
	leal	0(,%eax,8), %edi
	movl	%edi, %eax
	sarl	$3, %eax
	jmp	L1668
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1669:
	movl	%eax, %edx
	shrl	%edx
	cmpl	%esi, (%ebx,%edx,8)
	jb	L1933
	movl	%edx, %eax
L1668:
	testl	%eax, %eax
	jne	L1669
	movl	-40(%ebp), %eax
	addl	%edi, %eax
	cmpl	%eax, %ebx
	je	L1670
	cmpl	(%ebx), %esi
	je	L1671
L1670:
	subl	-40(%ebp), %ebx
	movl	-48(%ebp), %eax
	movl	%esi, -36(%ebp)
	movl	%ebx, %ecx
	movl	$-1, -32(%ebp)
	movl	%ebx, %esi
	sarl	$3, %ecx
	leal	1(%eax), %edx
	cmpl	-72(%ebp), %eax
	je	L1934
L1673:
	movl	-40(%ebp), %eax
	leal	(%eax,%esi), %ebx
	movl	-48(%ebp), %eax
	cmpl	%eax, %ecx
	jl	L1935
L1680:
	movl	-36(%ebp), %eax
	movl	%edx, -48(%ebp)
	movl	%eax, (%ebx)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%ebx)
L1671:
	movl	4(%ebx), %eax
	cmpl	$-1, %eax
	je	L1681
	sall	$4, %eax
	addl	-60(%ebp), %eax
	movl	8(%eax), %edi
	leal	1(%edi), %edx
L1682:
	movl	%edx, 8(%eax)
	jmp	L1666
	.p2align 4,,10
	.p2align 3
L1933:
	subl	$1, %eax
	leal	8(%ebx,%edx,8), %ebx
	subl	%edx, %eax
	jmp	L1668
L1931:
	movl	$-1, %edx
	movl	$0, 20(%eax)
	movw	%dx, 28(%eax)
	jmp	L1723
	.p2align 4,,10
	.p2align 3
L1921:
	testl	%eax, %eax
	jne	L1650
	movl	$8, %eax
	cmpl	%eax, %edi
	cmovge	%edi, %eax
	movl	%eax, -72(%ebp)
L1651:
	movl	-72(%ebp), %eax
	leal	0(,%eax,8), %ecx
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1653
	addl	$1, 188(%eax)
L1653:
	movl	%edx, -88(%ebp)
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-88(%ebp), %edx
	movl	%eax, %esi
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	je	L1654
	movl	-76(%ebp), %ecx
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	%ecx, 8(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	-88(%ebp), %edx
	testl	%eax, %eax
	je	L1655
	subl	$1, 188(%eax)
L1655:
	movl	%edx, -76(%ebp)
	movl	$0, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-76(%ebp), %edx
L1654:
	movl	%esi, -40(%ebp)
	movl	-40(%ebp), %eax
	leal	(%eax,%ebx), %esi
	movl	-48(%ebp), %eax
	cmpl	%eax, %edx
	jge	L1656
	.p2align 4
	.p2align 3
L1922:
	subl	%edx, %eax
	movl	%esi, 4(%esp)
	sall	$3, %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	leal	8(%eax,%ebx), %eax
	movl	%eax, (%esp)
	call	_memmove
	jmp	L1656
	.p2align 4,,10
	.p2align 3
L1717:
	xorl	%eax, %eax
	jmp	L1714
	.p2align 4,,10
	.p2align 3
L1925:
	subl	$1, %eax
	leal	8(%ebx,%edx,8), %ebx
	subl	%edx, %eax
	jmp	L1704
	.p2align 4,,10
	.p2align 3
L1657:
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esi)
	movl	%eax, %ebx
	leal	1(%eax), %esi
	movl	-84(%ebp), %eax
	movl	%esi, -80(%ebp)
	sall	$4, %ebx
	cmpl	%eax, %esi
	jle	L1662
	testl	%eax, %eax
	jne	L1660
	movl	$8, %eax
	cmpl	%eax, %esi
	cmovge	%esi, %eax
	movl	%eax, -84(%ebp)
L1661:
	movl	-84(%ebp), %edx
	movl	_GImGui, %eax
	sall	$4, %edx
	testl	%eax, %eax
	je	L1663
	addl	$1, 188(%eax)
L1663:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %esi
	movl	-60(%ebp), %eax
	testl	%eax, %eax
	je	L1664
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	_memcpy
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1665
	subl	$1, 188(%eax)
L1665:
	movl	$0, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1664:
	movl	%esi, -60(%ebp)
L1662:
	addl	-60(%ebp), %ebx
	movl	$0, 8(%ebx)
	movl	$0, (%ebx)
	movl	$0, 4(%ebx)
	movl	$0, 12(%ebx)
	jmp	L1658
	.p2align 4,,10
	.p2align 3
L1927:
	movl	-68(%ebp), %eax
	jmp	L1714
L1932:
	subl	$1, %eax
	leal	8(%edi,%edx,8), %edi
	subl	%edx, %eax
	jmp	L1694
L1637:
	movl	-44(%ebp), %eax
	movl	23460(%eax), %edx
	testl	%edx, %edx
	jne	L1751
L1707:
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	je	L1728
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1729
	subl	$1, 188(%eax)
L1729:
	movl	$0, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1728:
	movl	-60(%ebp), %edi
	testl	%edi, %edi
	je	L1913
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1730
	subl	$1, 188(%eax)
L1730:
	movl	$0, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1913:
	movl	-44(%ebp), %eax
	jmp	L1912
L1650:
	movl	-48(%ebp), %esi
	movl	%esi, %eax
	shrl	$31, %eax
	addl	%esi, %eax
	sarl	%eax
	addl	%esi, %eax
	cmpl	%edi, %eax
	cmovl	%edi, %eax
	cmpl	%esi, %eax
	jle	L1649
	movl	%eax, -72(%ebp)
	jmp	L1651
L1930:
	movl	%ecx, 4(%esp)
	movl	$LC76, (%esp)
	call	__ZN5ImGui8DebugLogEPKcz
	jmp	L1722
L1934:
	testl	%eax, %eax
	jne	L1674
	movl	$8, %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, -72(%ebp)
L1675:
	movl	-72(%ebp), %eax
	leal	0(,%eax,8), %ebx
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1677
	addl	$1, 188(%eax)
L1677:
	movl	%ecx, -68(%ebp)
	movl	%edx, -64(%ebp)
	movl	%ebx, (%esp)
	movl	$0, 4(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-64(%ebp), %edx
	movl	-68(%ebp), %ecx
	movl	%eax, %ebx
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	je	L1678
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	-64(%ebp), %edx
	movl	-68(%ebp), %ecx
	testl	%eax, %eax
	je	L1679
	subl	$1, 188(%eax)
L1679:
	movl	%ecx, -68(%ebp)
	movl	%edx, -64(%ebp)
	movl	$0, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-68(%ebp), %ecx
	movl	-64(%ebp), %edx
L1678:
	movl	%ebx, -40(%ebp)
	movl	-40(%ebp), %eax
	leal	(%eax,%esi), %ebx
	movl	-48(%ebp), %eax
	cmpl	%eax, %ecx
	jge	L1680
L1935:
	subl	%ecx, %eax
	movl	%edx, -64(%ebp)
	sall	$3, %eax
	movl	%ebx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	leal	8(%eax,%esi), %eax
	movl	%eax, (%esp)
	call	_memmove
	movl	-64(%ebp), %edx
	jmp	L1680
L1681:
	movl	-80(%ebp), %eax
	movl	%eax, 4(%ebx)
	leal	1(%eax), %edi
	movl	%eax, %ebx
	movl	-84(%ebp), %eax
	movl	%edi, -80(%ebp)
	sall	$4, %ebx
	cmpl	%eax, %edi
	jle	L1686
	testl	%eax, %eax
	je	L1936
	movl	-84(%ebp), %edi
	movl	-80(%ebp), %ecx
	movl	%edi, %eax
	shrl	$31, %eax
	addl	%edi, %eax
	sarl	%eax
	addl	%edi, %eax
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	%edi, %eax
	jle	L1686
	movl	%eax, -84(%ebp)
L1685:
	movl	-84(%ebp), %edx
	movl	_GImGui, %eax
	sall	$4, %edx
	testl	%eax, %eax
	je	L1687
	addl	$1, 188(%eax)
L1687:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %esi
	movl	-60(%ebp), %eax
	testl	%eax, %eax
	je	L1688
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	_memcpy
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L1689
	subl	$1, 188(%eax)
L1689:
	movl	$0, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1688:
	movl	%esi, -60(%ebp)
L1686:
	movl	-60(%ebp), %eax
	movl	$1, %edx
	addl	%ebx, %eax
	movl	$0, 8(%eax)
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 12(%eax)
	jmp	L1682
L1674:
	movl	-48(%ebp), %ebx
	movl	%ebx, %eax
	shrl	$31, %eax
	addl	%ebx, %eax
	sarl	%eax
	addl	%ebx, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	%ebx, %eax
	jle	L1673
	movl	%eax, -72(%ebp)
	jmp	L1675
L1660:
	movl	-84(%ebp), %ecx
	movl	-80(%ebp), %esi
	movl	%ecx, %eax
	shrl	$31, %eax
	addl	%ecx, %eax
	sarl	%eax
	addl	%ecx, %eax
	cmpl	%esi, %eax
	cmovl	%esi, %eax
	cmpl	%ecx, %eax
	jle	L1662
	movl	%eax, -84(%ebp)
	jmp	L1661
L1936:
	movl	$8, %eax
	cmpl	%eax, %edi
	cmovge	%edi, %eax
	movl	%eax, -84(%ebp)
	jmp	L1685
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__ZN5ImGuiL28DockSettingsHandler_ApplyAllEP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0.cold;	.scl	3;	.type	32;	.endef
__ZN5ImGuiL28DockSettingsHandler_ApplyAllEP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0.cold:
LFSB138:
L1711:
	.cfi_def_cfa 5, 8
	.cfi_offset 1, -24
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	0, %eax
	ud2
	.cfi_endproc
LFE138:
	.text
	.section	.text.unlikely,"x"
LCOLDE78:
	.text
LHOTE78:
	.p2align 4
	.globl	__ZN5ImGui34DebugLocateItemResolveWithLastItemEv
	.def	__ZN5ImGui34DebugLocateItemResolveWithLastItemEv;	.scl	2;	.type	32;	.endef
__ZN5ImGui34DebugLocateItemResolveWithLastItemEv:
LFB164:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	$LC28, %ecx
	movl	$1, %edx
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
	subl	$92, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	_GImGui, %esi
	movss	LC23, %xmm0
	movss	LC81, %xmm1
	movups	18324(%esi), %xmm2
	shufps	$0, %xmm0, %xmm0
	movl	16148(%esi), %eax
	movl	$0, 18288(%esi)
	shufps	$0, %xmm1, %xmm1
	addps	%xmm2, %xmm0
	addps	%xmm1, %xmm2
	movl	48(%eax), %eax
	movaps	%xmm2, %xmm3
	movaps	%xmm0, %xmm1
	movaps	%xmm2, %xmm4
	movss	%xmm2, -56(%ebp)
	shufps	$228, %xmm0, %xmm3
	shufps	$255, %xmm0, %xmm1
	unpckhps	%xmm0, %xmm0
	shufps	$85, %xmm2, %xmm4
	movups	%xmm3, -88(%ebp)
	movss	%xmm1, -64(%ebp)
	movss	%xmm0, -60(%ebp)
	movss	%xmm4, -52(%ebp)
	call	__ZL19GetViewportDrawListP14ImGuiViewportPjPKc.lto_priv.0
	movups	-88(%ebp), %xmm3
	movss	-52(%ebp), %xmm5
	movss	3528(%esi), %xmm4
	movss	-60(%ebp), %xmm0
	movl	%eax, %ebx
	movups	%xmm3, -40(%ebp)
	movss	3532(%esi), %xmm3
	movss	-64(%ebp), %xmm1
	comiss	%xmm3, %xmm5
	ja	L1938
	movaps	%xmm1, %xmm7
	minss	%xmm3, %xmm7
	movss	%xmm7, -52(%ebp)
L1938:
	movss	-56(%ebp), %xmm6
	comiss	%xmm4, %xmm6
	ja	L1939
	movaps	%xmm0, %xmm7
	minss	%xmm4, %xmm7
	movss	%xmm7, -56(%ebp)
L1939:
	leal	-40(%ebp), %eax
	movss	%xmm4, -64(%ebp)
	xorps	%xmm2, %xmm2
	movl	%ebx, %ecx
	movss	%xmm3, -60(%ebp)
	movl	%eax, (%esp)
	movl	$0x3f800000, 8(%esp)
	movl	$-16711936, 4(%esp)
	call	__ZN10ImDrawList7AddRectERK6ImVec2S2_jfif.part.0.constprop.0.isra.0
	movss	-64(%ebp), %xmm4
	movss	-60(%ebp), %xmm3
	movss	LC3, %xmm1
	subl	$12, %esp
	movl	84(%ebx), %eax
	addss	%xmm1, %xmm4
	addss	%xmm1, %xmm3
	movss	%xmm4, -48(%ebp)
	movss	%xmm3, -44(%ebp)
	cmpl	88(%ebx), %eax
	je	L1980
L1940:
	movl	92(%ebx), %edx
L1943:
	movss	-56(%ebp), %xmm0
	leal	(%edx,%eax,8), %eax
	movl	-48(%ebp), %edx
	addss	%xmm1, %xmm0
	movl	%edx, (%eax)
	movl	-44(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	84(%ebx), %ecx
	movss	%xmm0, -48(%ebp)
	movss	-52(%ebp), %xmm0
	movl	88(%ebx), %edx
	leal	1(%ecx), %eax
	addss	%xmm1, %xmm0
	movl	%eax, 84(%ebx)
	movss	%xmm0, -44(%ebp)
	cmpl	%eax, %edx
	je	L1981
L1947:
	movl	92(%ebx), %edx
L1950:
	leal	(%edx,%eax,8), %eax
	movl	-48(%ebp), %edx
	movl	%edx, (%eax)
	movl	-44(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	84(%ebx), %eax
	addl	$1, %eax
	movl	%eax, 84(%ebx)
	cmpl	$1, %eax
	jle	L1954
	movss	LC0, %xmm0
	movl	%eax, 4(%esp)
	movl	%ebx, %ecx
	movl	$0, 12(%esp)
	movl	$-16711936, 8(%esp)
	movl	92(%ebx), %eax
	movl	%eax, (%esp)
	call	__ZN10ImDrawList11AddPolylineEPK6ImVec2ijif.part.0
	subl	$16, %esp
L1954:
	movl	$0, 84(%ebx)
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
L1980:
	.cfi_restore_state
	leal	1(%eax), %edx
	testl	%eax, %eax
	jne	L1941
	movl	$8, %esi
	cmpl	%esi, %edx
	cmovge	%edx, %esi
L1942:
	movl	_GImGui, %eax
	leal	0(,%esi,8), %edx
	testl	%eax, %eax
	je	L1944
	addl	$1, 188(%eax)
L1944:
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movss	LC3, %xmm1
	movl	%eax, %edx
	movl	92(%ebx), %eax
	testl	%eax, %eax
	je	L1945
	movl	84(%ebx), %ecx
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	sall	$3, %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, -60(%ebp)
	call	_memcpy
	movl	92(%ebx), %eax
	movl	-60(%ebp), %edx
	testl	%eax, %eax
	je	L1946
	movl	_GImGui, %ecx
	testl	%ecx, %ecx
	je	L1946
	subl	$1, 188(%ecx)
L1946:
	movl	%edx, -60(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-60(%ebp), %edx
	movss	LC3, %xmm1
L1945:
	movl	%edx, 92(%ebx)
	movl	84(%ebx), %eax
	movl	%esi, 88(%ebx)
	jmp	L1943
	.p2align 4,,10
	.p2align 3
L1981:
	addl	$2, %ecx
	testl	%edx, %edx
	jne	L1948
	movl	$8, %esi
	cmpl	%esi, %ecx
	cmovge	%ecx, %esi
L1949:
	movl	_GImGui, %eax
	leal	0(,%esi,8), %edx
	testl	%eax, %eax
	je	L1951
	addl	$1, 188(%eax)
L1951:
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %edx
	movl	92(%ebx), %eax
	testl	%eax, %eax
	je	L1952
	movl	84(%ebx), %ecx
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	sall	$3, %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, -52(%ebp)
	call	_memcpy
	movl	92(%ebx), %eax
	movl	-52(%ebp), %edx
	testl	%eax, %eax
	je	L1953
	movl	_GImGui, %ecx
	testl	%ecx, %ecx
	je	L1953
	subl	$1, 188(%ecx)
L1953:
	movl	%edx, -52(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-52(%ebp), %edx
L1952:
	movl	%edx, 92(%ebx)
	movl	84(%ebx), %eax
	movl	%esi, 88(%ebx)
	jmp	L1950
	.p2align 4,,10
	.p2align 3
L1948:
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%eax, %esi
	sarl	%esi
	addl	%eax, %esi
	cmpl	%ecx, %esi
	cmovl	%ecx, %esi
	cmpl	%esi, %eax
	jge	L1947
	jmp	L1949
	.p2align 4,,10
	.p2align 3
L1941:
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%eax, %esi
	sarl	%esi
	addl	%eax, %esi
	cmpl	%edx, %esi
	cmovl	%edx, %esi
	cmpl	%esi, %eax
	jge	L1940
	jmp	L1942
	.cfi_endproc
LFE164:
	.section .rdata,"dr"
LC82:
	.ascii "%d\0"
LC83:
	.ascii "%.*s\0"
	.text
	.p2align 4
	.globl	__ZN5ImGui15DebugHookIdInfoEjiPKvS1_.constprop.0
	.def	__ZN5ImGui15DebugHookIdInfoEjiPKvS1_.constprop.0;	.scl	2;	.type	32;	.endef
__ZN5ImGui15DebugHookIdInfoEjiPKvS1_.constprop.0:
LFB168:
	.cfi_startproc
	addl	$-128, %esp
	.cfi_def_cfa_offset 132
	movl	%esi, 116(%esp)
	.cfi_offset 6, -16
	movl	%edx, %esi
	movl	_GImGui, %edx
	movl	%edi, 120(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	movl	%ebx, 112(%esp)
	movl	23644(%edx), %eax
	.cfi_offset 3, -20
	movl	16148(%edx), %ebx
	cmpl	$-1, %eax
	je	L2016
	cmpl	284(%ebx), %eax
	je	L2017
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
	.p2align 4,,10
	.p2align 3
L2017:
	.cfi_restore_state
	leal	(%eax,%eax,8), %ebx
	movl	23660(%edx), %eax
	leal	(%eax,%ebx,8), %ebx
	leal	12(%ebx), %edi
	cmpl	$11, %esi
	je	L1998
	movl	%ecx, 12(%esp)
	movl	$LC82, 8(%esp)
	movl	$57, 4(%esp)
	movl	%edi, (%esp)
	call	__Z14ImFormatStringPcjPKcz
L1999:
	movl	%esi, %eax
	movb	$1, 5(%ebx)
	movb	%al, 8(%ebx)
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
	.p2align 4,,10
	.p2align 3
L1998:
	.cfi_restore_state
	movl	%ecx, (%esp)
	movl	%ecx, 20(%esp)
	call	_strlen
	movl	20(%esp), %ecx
	movl	$LC83, 8(%esp)
	movl	%eax, 12(%esp)
	movl	%ecx, 16(%esp)
	movl	$57, 4(%esp)
	movl	%edi, (%esp)
	call	__Z14ImFormatStringPcjPKcz
	jmp	L1999
	.p2align 4,,10
	.p2align 3
L2016:
	movl	%ebp, 124(%esp)
	.cfi_offset 5, -8
	leal	40(%esp), %ecx
	xorl	%eax, %eax
	movl	$0, 23644(%edx)
L1984:
	movl	$0, (%ecx,%eax)
	movl	$0, 4(%ecx,%eax)
	movl	$0, 8(%ecx,%eax)
	movl	$0, 12(%ecx,%eax)
	addl	$16, %eax
	cmpl	$64, %eax
	jb	L1984
	movl	$0, (%ecx,%eax)
	movl	$0, 4(%ecx,%eax)
	movl	284(%ebx), %eax
	leal	1(%eax), %ebp
	movl	23656(%edx), %eax
	movl	%ebp, 28(%esp)
	cmpl	%eax, %ebp
	jle	L1986
	testl	%eax, %eax
	jne	L1987
	movl	$8, %esi
	cmpl	%esi, %ebp
	cmovge	%ebp, %esi
	leal	(%esi,%esi,8), %eax
	sall	$3, %eax
L1988:
	addl	$1, 188(%edx)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 24(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	24(%esp), %edx
	leal	40(%esp), %ecx
	movl	%eax, 20(%esp)
	movl	23660(%edx), %ebp
	testl	%ebp, %ebp
	je	L1989
	movl	23652(%edx), %eax
	movl	%ebp, 4(%esp)
	leal	(%eax,%eax,8), %eax
	sall	$3, %eax
	movl	%eax, 8(%esp)
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	24(%esp), %edx
	movl	23660(%edx), %eax
	testl	%eax, %eax
	je	L1990
	movl	_GImGui, %ebp
	testl	%ebp, %ebp
	je	L1990
	subl	$1, 188(%ebp)
L1990:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 24(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	24(%esp), %edx
	leal	40(%esp), %ecx
L1989:
	movl	20(%esp), %eax
	movl	%esi, 23656(%edx)
	movl	%eax, 23660(%edx)
L1986:
	movl	23652(%edx), %esi
	cmpl	%esi, 28(%esp)
	jle	L1991
	movl	%ebx, 32(%esp)
	movl	%edi, 36(%esp)
	movl	%edx, %edi
L1994:
	movl	23660(%edi), %edx
	leal	(%esi,%esi,8), %eax
	leal	(%edx,%eax,8), %edx
	movl	56(%ecx), %eax
	movl	%eax, 56(%edx)
	movl	60(%ecx), %eax
	movl	%eax, 60(%edx)
	movl	64(%ecx), %eax
	movl	%eax, 64(%edx)
	movl	68(%ecx), %eax
	movl	%eax, 68(%edx)
	xorl	%eax, %eax
	movl	%edi, 20(%esp)
	movl	%esi, 24(%esp)
L1992:
	movl	4(%ecx,%eax), %esi
	movl	8(%ecx,%eax), %edi
	movl	12(%ecx,%eax), %ebx
	movl	(%ecx,%eax), %ebp
	movl	%esi, 4(%edx,%eax)
	movl	%ebp, (%edx,%eax)
	movl	%edi, 8(%edx,%eax)
	movl	%ebx, 12(%edx,%eax)
	addl	$16, %eax
	cmpl	$64, %eax
	jb	L1992
	movl	24(%esp), %esi
	movl	20(%esp), %edi
	addl	$1, %esi
	cmpl	%esi, 28(%esp)
	jne	L1994
	movl	%edi, %edx
	movl	32(%esp), %ebx
	movl	36(%esp), %edi
	.p2align 4
	.p2align 3
L1991:
	movl	28(%esp), %eax
	movl	%eax, 23652(%edx)
	movl	284(%ebx), %ecx
	testl	%ecx, %ecx
	js	L2015
	xorl	%eax, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L1997:
	movl	%edi, %esi
	cmpl	%ecx, %eax
	jge	L1996
	movl	292(%ebx), %ecx
	movl	(%ecx,%eax,4), %esi
L1996:
	movl	23660(%edx), %ebp
	leal	(%eax,%eax,8), %ecx
	addl	$1, %eax
	leal	0(%ebp,%ecx,8), %ecx
	movl	%esi, (%ecx)
	movl	284(%ebx), %ecx
	cmpl	%eax, %ecx
	jge	L1997
L2015:
	movl	124(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
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
L1987:
	.cfi_restore_state
	movl	%eax, %esi
	movl	28(%esp), %ebp
	shrl	$31, %esi
	addl	%eax, %esi
	sarl	%esi
	addl	%eax, %esi
	cmpl	%ebp, %esi
	cmovl	%ebp, %esi
	cmpl	%esi, %eax
	jge	L1986
	leal	(%esi,%esi,8), %eax
	sall	$3, %eax
	jmp	L1988
	.cfi_endproc
LFE168:
	.p2align 4
	.globl	__ZN5ImGui11BeginDockedEP11ImGuiWindowPb.constprop.0
	.def	__ZN5ImGui11BeginDockedEP11ImGuiWindowPb.constprop.0;	.scl	2;	.type	32;	.endef
__ZN5ImGui11BeginDockedEP11ImGuiWindowPb.constprop.0:
LFB172:
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
	subl	$20, %esp
	.cfi_def_cfa_offset 40
	movl	_GImGui, %edi
	andb	$-8, 909(%eax)
	movl	12(%eax), %eax
	cmpb	$0, 98(%edi)
	jne	L2019
	cmpb	$0, 44(%esi)
	je	L2020
L2019:
	testl	$18874369, %eax
	jne	L2020
	cmpb	$0, 231(%esi)
	je	L2085
	testb	$1, 18372(%edi)
	jne	L2086
L2053:
	movl	944(%esi), %ebp
L2022:
	movl	936(%esi), %ebx
	testl	%ebp, %ebp
	je	L2027
	testl	%ebx, %ebx
	je	L2087
L2027:
	movl	16048(%edi), %edx
	xorl	%ebp, %ebp
	cmpl	%edx, 132(%ebx)
	jl	L2038
	.p2align 4
	.p2align 3
L2037:
	movl	__ZL22GWindowDockStyleColors(,%ebp,4), %eax
	addl	$914, %eax
	sall	$4, %eax
	addl	%edi, %eax
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movl	%eax, 912(%esi,%ebp,4)
	addl	$1, %ebp
	cmpl	$6, %ebp
	jne	L2037
	movl	112(%ebx), %eax
	testl	%eax, %eax
	je	L2088
	movl	$3, 20(%ebx)
	testb	$1, 16(%ebx)
	jne	L2043
	movzwl	242(%eax), %eax
	cmpw	%ax, 242(%esi)
	jl	L2084
L2043:
	movl	_GImGui, %eax
	movl	18372(%eax), %ebp
	movl	%ebp, %edx
	orl	$1, %edx
	movl	%edx, 18372(%eax)
	movl	52(%ebx), %edx
	movl	56(%ebx), %ecx
	movb	$1, 18432(%eax)
	movl	%edx, 18392(%eax)
	movl	%ebp, %edx
	orl	$3, %edx
	movl	%ecx, 18396(%eax)
	movl	$0x00000000, 18400(%eax)
	movl	$0x00000000, 18404(%eax)
	movl	$1, 18376(%eax)
	movl	%edx, 18372(%eax)
	movl	60(%ebx), %edx
	movl	64(%ebx), %ecx
	movl	$1, 18380(%eax)
	movl	%edx, 18408(%eax)
	movl	%ecx, 18412(%eax)
	movb	$0, 18432(%edi)
	movzbl	909(%esi), %eax
	andl	$-8, %eax
	orl	$3, %eax
	movb	%al, 909(%esi)
	movl	16(%ebx), %edx
	andl	$1, %edx
	jne	L2018
	cmpl	%esi, 116(%ebx)
	sete	%cl
	sall	$2, %ecx
	orl	%ecx, %eax
	movb	%al, 909(%esi)
	movl	12(%esi), %eax
	movl	%eax, %ecx
	orl	$16842754, %ecx
	movl	%ecx, 12(%esi)
	movl	%eax, %ecx
	orl	$16842755, %eax
	andl	$-2, %ecx
	orl	$16842754, %ecx
	testb	$48, 17(%ebx)
	cmove	%ecx, %eax
	movl	936(%esi), %ecx
	movl	%eax, 12(%esi)
	movl	48(%ebx), %eax
	testl	%eax, %eax
	je	L2046
	cmpb	$0, 224(%esi)
	je	L2046
	movl	164(%esi), %ebx
	movl	48(%ecx), %eax
	testl	%ebx, %ebx
	je	L2047
	testl	%eax, %eax
	je	L2047
	movl	(%eax), %ebp
	testl	%ebp, %ebp
	jle	L2047
	movl	8(%eax), %edi
	movl	%edi, %eax
	jmp	L2051
	.p2align 4
	.p2align 4,,10
	.p2align 3
L2089:
	addl	$1, %edx
	addl	$48, %eax
	cmpl	%ebp, %edx
	je	L2047
L2051:
	cmpl	(%eax), %ebx
	jne	L2089
	subl	%edi, %eax
	sarl	$4, %eax
	imulw	$-21845, %ax, %ax
L2049:
	movw	%ax, 910(%esi)
L2046:
	movl	112(%ecx), %ebx
	movl	4(%esi), %edi
	movl	284(%ebx), %edx
	movl	292(%ebx), %eax
	movl	-4(%eax,%edx,4), %ecx
	xorl	%edx, %edx
	movl	%edi, %eax
	call	__Z9ImHashStrPKcjj
	movl	(%ebx), %edx
	cmpl	16200(%edx), %eax
	je	L2090
L2052:
	movl	%eax, 168(%esi)
L2018:
	addl	$20, %esp
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
L2020:
	.cfi_restore_state
	testb	$1, 18372(%edi)
	je	L2025
	movsbl	264(%esi), %edx
	testl	%edx, 18376(%edi)
	je	L2025
L2054:
	cmpb	$0, 18432(%edi)
	jne	L2084
L2025:
	testl	$2097152, %eax
	je	L2053
L2084:
	movl	23576(%edi), %eax
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %edx
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
	jmp	__ZN5ImGui30DockContextProcessUndockWindowEP12ImGuiContextP11ImGuiWindowb.constprop.0.isra.0
	.p2align 4
	.p2align 4,,10
	.p2align 3
L2038:
	.cfi_restore_state
	movl	%ebx, %eax
	movl	24(%ebx), %ebx
	testl	%ebx, %ebx
	jne	L2038
	cmpl	132(%eax), %edx
	jg	L2084
	orb	$1, 909(%esi)
	addl	$20, %esp
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
L2085:
	.cfi_restore_state
	movl	944(%esi), %ebp
	testl	%ebp, %ebp
	jne	L2022
	leal	23376(%edi), %ebx
	movl	$1, %ebp
	jmp	L2023
	.p2align 4,,10
	.p2align 3
L2024:
	addl	$1, %ebp
L2023:
	movl	%ebp, (%esp)
	movl	%ebx, %ecx
	call	__ZNK12ImGuiStorage10GetVoidPtrEj
	.cfi_def_cfa_offset 36
	subl	$4, %esp
	.cfi_def_cfa_offset 40
	testl	%eax, %eax
	jne	L2024
	movl	%ebp, 944(%esi)
	jmp	L2022
	.p2align 4,,10
	.p2align 3
L2086:
	movsbl	264(%esi), %edx
	testl	%edx, 18376(%edi)
	jne	L2054
	jmp	L2053
	.p2align 4,,10
	.p2align 3
L2088:
	cmpl	$2, 20(%ebx)
	jne	L2042
	orb	$1, 909(%esi)
L2042:
	cmpl	$1, 36(%ebx)
	jle	L2018
	movl	$2, %eax
	subb	223(%esi), %al
	movb	$1, 230(%esi)
	movb	%al, 260(%esi)
	jmp	L2018
	.p2align 4,,10
	.p2align 3
L2087:
	movl	%ebp, (%esp)
	leal	23376(%edi), %ecx
	call	__ZNK12ImGuiStorage10GetVoidPtrEj
	.cfi_def_cfa_offset 36
	subl	$4, %esp
	.cfi_def_cfa_offset 40
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L2028
	movl	28(%eax), %edx
	testl	%edx, %edx
	jne	L2084
L2029:
	movzbl	160(%ebx), %eax
	andl	$1, %eax
	movb	%al, 12(%esp)
	jne	L2030
	movl	%ebx, %ebp
	jmp	L2036
	.p2align 5
	.p2align 4,,10
	.p2align 3
L2031:
	testl	%eax, %eax
	je	L2033
	movzbl	160(%eax), %ecx
	movl	%eax, %ebp
	andl	$1, %ecx
	movb	%cl, 12(%esp)
L2036:
	movl	24(%ebp), %eax
	cmpb	$0, 12(%esp)
	je	L2031
	testl	%eax, %eax
	je	L2033
	.p2align 4
	.p2align 4
	.p2align 3
L2032:
	movl	%eax, %edx
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	L2032
L2035:
	movl	%edx, %eax
	call	__ZN5ImGuiL33DockNodeUpdateHasCentralNodeChildEP13ImGuiDockNode
	movl	52(%ebp), %eax
	movl	56(%ebp), %edx
	movl	%ebx, 8(%esp)
	movl	%eax, 12(%esp)
	movl	60(%ebp), %eax
	movl	%edx, 16(%esp)
	movl	64(%ebp), %edx
	movl	%eax, (%esp)
	movl	16(%esp), %ecx
	movl	%ebp, %eax
	movl	%edx, 4(%esp)
	movl	12(%esp), %edx
	call	__ZN5ImGuiL25DockNodeTreeUpdatePosSizeEP13ImGuiDockNode6ImVec2S2_S1_
	movzbl	160(%ebx), %eax
	andl	$1, %eax
	movb	%al, 12(%esp)
L2030:
	movl	%ebx, %eax
	movl	$1, %ecx
	movl	%esi, %edx
	call	__ZN5ImGuiL17DockNodeAddWindowEP13ImGuiDockNodeP11ImGuiWindowb
	movzbl	160(%ebx), %eax
	andl	$-2, %eax
	orb	12(%esp), %al
	movb	%al, 160(%ebx)
	jmp	L2027
	.p2align 4,,10
	.p2align 3
L2090:
	movl	%edi, %ecx
	movl	$11, %edx
	movl	%eax, 12(%esp)
	call	__ZN5ImGui15DebugHookIdInfoEjiPKvS1_.constprop.0
	movl	12(%esp), %eax
	jmp	L2052
L2028:
	movl	%ebp, %edx
	movl	%edi, %eax
	call	__ZN5ImGuiL18DockContextAddNodeEP12ImGuiContextj.lto_priv.0
	movl	%eax, %ebx
	movzwl	156(%eax), %eax
	andw	$-512, %ax
	orb	$-110, %al
	movw	%ax, 156(%ebx)
	movl	16048(%edi), %eax
	movl	%eax, 132(%ebx)
	jmp	L2029
	.p2align 4,,10
	.p2align 3
L2047:
	movl	$-1, %eax
	jmp	L2049
L2033:
	movl	%ebp, %edx
	jmp	L2035
	.cfi_endproc
LFE172:
	.align 2
	.p2align 4
	.globl	__ZN7ImGuiIO11AddKeyEventE8ImGuiKeyb.part.0
	.def	__ZN7ImGuiIO11AddKeyEventE8ImGuiKeyb.part.0;	.scl	2;	.type	32;	.endef
__ZN7ImGuiIO11AddKeyEventE8ImGuiKeyb.part.0:
LFB182:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%ecx, %eax
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
	movl	8(%ebp), %edx
	movss	LC0, %xmm0
	cmpb	$0, 12(%ebp)
	jne	L2092
	xorps	%xmm0, %xmm0
L2092:
	testl	%edx, %edx
	je	L2091
	cmpb	$0, 14233(%eax)
	je	L2091
	movl	_GImGui, %edi
	movb	$0, 14234(%eax)
	movl	3516(%eax), %ebx
	movl	14380(%edi), %esi
	movl	%esi, %eax
	subl	$1, %eax
	js	L2143
	movl	14388(%edi), %ecx
	leal	(%esi,%esi,2), %esi
	leal	-24(%ecx,%esi,8), %esi
L2097:
	cmpl	$5, (%esi)
	jne	L2095
	cmpl	8(%esi), %edx
	jne	L2095
	movzbl	12(%esi), %eax
	movss	16(%esi), %xmm1
L2104:
	cmpb	%al, 12(%ebp)
	jne	L2105
	ucomiss	%xmm1, %xmm0
	jp	L2105
	je	L2091
L2105:
	movzbl	12(%ebp), %eax
	movlps	LC84, %xmm2
	movl	%edx, 20(%esp)
	movl	$0, 24(%esp)
	movl	$0, 32(%esp)
	movb	%al, 24(%esp)
	movl	14380(%ebx), %eax
	movlps	%xmm2, 12(%esp)
	movss	%xmm0, 28(%esp)
	cmpl	14384(%ebx), %eax
	je	L2147
L2107:
	movl	14388(%ebx), %edi
L2110:
	movl	12(%esp), %edx
	leal	(%eax,%eax,2), %eax
	movl	%edx, (%edi,%eax,8)
	movl	16(%esp), %edx
	movl	%edx, 4(%edi,%eax,8)
	movl	20(%esp), %edx
	movl	%edx, 8(%edi,%eax,8)
	movl	24(%esp), %edx
	movl	%edx, 12(%edi,%eax,8)
	movl	28(%esp), %edx
	movl	%edx, 16(%edi,%eax,8)
	movl	32(%esp), %edx
	movl	%edx, 20(%edi,%eax,8)
	addl	$1, 14380(%ebx)
L2091:
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
	ret	$8
	.p2align 4,,10
	.p2align 3
L2095:
	.cfi_restore_state
	subl	$1, %eax
	subl	$24, %esi
	cmpl	$-1, %eax
	jne	L2097
L2143:
	movl	%edx, %esi
	testb	$-8, %dh
	je	L2102
	cmpl	$4096, %edx
	je	L2100
	movl	$649, %esi
	cmpl	$8192, %edx
	je	L2102
	xorl	%eax, %eax
	cmpl	$16384, %edx
	setne	%al
	leal	650(%eax), %esi
L2102:
	sall	$4, %esi
	addl	%edi, %esi
	movzbl	3564(%esi), %eax
	movss	3576(%esi), %xmm1
	jmp	L2104
	.p2align 4,,10
	.p2align 3
L2147:
	leal	1(%eax), %edx
	testl	%eax, %eax
	jne	L2108
	movl	$8, %esi
	cmpl	%esi, %edx
	cmovge	%edx, %esi
L2109:
	leal	(%esi,%esi,2), %eax
	addl	$1, 188(%edi)
	sall	$3, %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %edi
	movl	14388(%ebx), %eax
	testl	%eax, %eax
	je	L2111
	movl	14380(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	leal	(%edx,%edx,2), %edx
	sall	$3, %edx
	movl	%edx, 8(%esp)
	call	_memcpy
	movl	14388(%ebx), %eax
	testl	%eax, %eax
	je	L2112
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2112
	subl	$1, 188(%edx)
L2112:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2111:
	movl	%edi, 14388(%ebx)
	movl	14380(%ebx), %eax
	movl	%esi, 14384(%ebx)
	jmp	L2110
	.p2align 4,,10
	.p2align 3
L2108:
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%eax, %esi
	sarl	%esi
	addl	%eax, %esi
	cmpl	%edx, %esi
	cmovl	%edx, %esi
	cmpl	%esi, %eax
	jge	L2107
	jmp	L2109
L2100:
	movl	$648, %esi
	jmp	L2102
	.cfi_endproc
LFE182:
	.section .rdata,"dr"
LC85:
	.ascii "_IMWINDOW\0"
	.text
	.p2align 4
	.globl	__ZN5ImGui27BeginDockableDragDropTargetEP11ImGuiWindow
	.def	__ZN5ImGui27BeginDockableDragDropTargetEP11ImGuiWindow;	.scl	2;	.type	32;	.endef
__ZN5ImGui27BeginDockableDragDropTargetEP11ImGuiWindow:
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
	andl	$-16, %esp
	subl	$700, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	_GImGui, %ebx
	cmpb	$0, 19068(%ebx)
	jne	L2264
L2148:
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
L2264:
	.cfi_restore_state
	movl	%eax, %edi
	movl	16156(%ebx), %eax
	testl	%eax, %eax
	je	L2148
	movl	16148(%ebx), %esi
	movl	840(%eax), %eax
	cmpl	%eax, 840(%esi)
	jne	L2148
	movss	68(%edi), %xmm5
	movss	76(%edi), %xmm6
	movss	72(%edi), %xmm3
	movss	80(%edi), %xmm4
	addss	%xmm5, %xmm6
	movaps	%xmm5, %xmm0
	movl	8(%edi), %ecx
	movss	%xmm5, 40(%esp)
	addss	%xmm3, %xmm4
	unpcklps	%xmm3, %xmm0
	movl	$1, 8(%esp)
	movl	%ecx, 48(%esp)
	movaps	%xmm6, %xmm1
	movss	%xmm3, 32(%esp)
	unpcklps	%xmm4, %xmm1
	movss	%xmm4, 36(%esp)
	movlhps	%xmm1, %xmm0
	movups	%xmm0, 76(%esp)
	movl	84(%esp), %eax
	movl	88(%esp), %edx
	movlps	%xmm0, 52(%esp)
	movl	%eax, (%esp)
	movl	52(%esp), %eax
	movl	%edx, 4(%esp)
	movl	56(%esp), %edx
	movss	%xmm6, 44(%esp)
	movups	%xmm0, 60(%esp)
	call	__ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.isra.0
	movb	%al, 27(%esp)
	testb	%al, %al
	je	L2148
	movl	48(%esp), %ecx
	cmpl	19092(%ebx), %ecx
	je	L2148
	movzbl	228(%esi), %eax
	movb	%al, 26(%esp)
	testb	%al, %al
	jne	L2148
	movups	60(%esp), %xmm0
	movl	%ecx, 19156(%ebx)
	movb	$1, 19070(%ebx)
	movups	%xmm0, 19140(%ebx)
	cmpl	$-1, 19100(%ebx)
	je	L2150
	leal	19104(%ebx), %eax
	movl	$LC85, (%esp)
	movl	%eax, 4(%esp)
	call	_strcmp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L2265
L2150:
	movb	$0, 19070(%ebx)
	cmpb	$0, 19138(%ebx)
	je	L2148
L2172:
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
	jmp	__ZN5ImGui13ClearDragDropEv
	.p2align 4,,10
	.p2align 3
L2265:
	.cfi_restore_state
	movl	19084(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 52(%esp)
	movl	940(%eax), %eax
	testl	%eax, %eax
	je	L2151
	movl	28(%eax), %edx
	testl	%edx, %edx
	je	L2266
L2152:
	movss	44(%esp), %xmm0
	movss	36(%esp), %xmm1
	subss	40(%esp), %xmm0
	subss	32(%esp), %xmm1
	mulss	%xmm1, %xmm0
	comiss	19164(%ebx), %xmm0
	ja	L2262
	movl	19172(%ebx), %eax
	movl	48(%esp), %edx
	movl	$3072, 19160(%ebx)
	movb	$0, 60(%esp)
	cmpl	%eax, %edx
	movl	%eax, 44(%esp)
	movl	16048(%ebx), %eax
	movl	%edx, 19168(%ebx)
	movl	%eax, 19176(%ebx)
	movss	%xmm0, 19164(%ebx)
	sete	19137(%ebx)
	je	L2267
L2157:
	movzbl	60(%esp), %eax
	movb	%al, 19138(%ebx)
	movl	940(%edi), %eax
	testl	%eax, %eax
	je	L2268
	movl	3528(%ebx), %edx
	movl	3532(%ebx), %ecx
	call	__ZN5ImGuiL32DockNodeTreeFindVisibleNodeByPosEP13ImGuiDockNode6ImVec2
	movl	%eax, %esi
	testl	%eax, %eax
	je	L2164
	testb	$4, 17(%eax)
	je	L2163
	movl	24(%eax), %ecx
	testl	%ecx, %ecx
	je	L2269
	.p2align 4
	.p2align 3
L2163:
	movl	48(%esi), %eax
	testl	%eax, %eax
	je	L2164
	testb	$48, 17(%esi)
	je	L2270
L2164:
	movss	14468(%ebx), %xmm0
	movss	76(%edi), %xmm1
	addss	68(%edi), %xmm1
	movl	68(%edi), %eax
	addss	%xmm0, %xmm0
	addss	15516(%ebx), %xmm0
	movl	72(%edi), %edx
	addss	72(%edi), %xmm0
	movzbl	97(%ebx), %ecx
	movl	%eax, 100(%esp)
	movl	%edx, 104(%esp)
	movss	%xmm1, 108(%esp)
	movss	%xmm0, 112(%esp)
	testb	%cl, %cl
	jne	L2169
L2166:
	movl	108(%esp), %eax
	movl	112(%esp), %edx
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	100(%esp), %eax
	movl	%edx, 4(%esp)
	movl	104(%esp), %edx
	call	__ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.isra.0
	movl	%eax, %ecx
L2169:
	movl	44(%esp), %edx
	cmpl	%edx, 48(%esp)
	je	L2170
L2168:
	cmpb	$0, 60(%esp)
	jne	L2171
	movb	$0, 19070(%ebx)
	jmp	L2148
	.p2align 4,,10
	.p2align 3
L2266:
	movl	36(%eax), %edx
	testl	%edx, %edx
	jle	L2150
	movl	44(%eax), %ecx
	movl	%ebx, 28(%esp)
	movl	%edx, %ebx
	movl	%edi, 60(%esp)
	movl	%ecx, %edi
	jmp	L2153
	.p2align 4,,10
	.p2align 3
L2272:
	addl	$1, %esi
	cmpl	%esi, %ebx
	je	L2271
L2153:
	movl	(%edi,%esi,4), %eax
	movl	60(%esp), %edx
	call	__ZL24DockNodeIsDropAllowedOneP11ImGuiWindowS0_
	testb	%al, %al
	je	L2272
	movl	28(%esp), %ebx
	movl	60(%esp), %edi
	jmp	L2152
	.p2align 4,,10
	.p2align 3
L2271:
	movl	28(%esp), %ebx
	jmp	L2150
	.p2align 4,,10
	.p2align 3
L2151:
	movl	52(%esp), %eax
	movl	%edi, %edx
	call	__ZL24DockNodeIsDropAllowedOneP11ImGuiWindowS0_
	testb	%al, %al
	jne	L2152
	jmp	L2150
	.p2align 4,,10
	.p2align 3
L2268:
	movl	936(%edi), %esi
	testl	%esi, %esi
	jne	L2163
	movzbl	27(%esp), %eax
	movb	%al, 26(%esp)
	jmp	L2164
	.p2align 4,,10
	.p2align 3
L2170:
	testl	%esi, %esi
	jne	L2167
	cmpb	$0, 26(%esp)
	je	L2156
L2167:
	movzwl	584(%esp), %eax
	xorps	%xmm0, %xmm0
	movups	LC86, %xmm1
	movl	$0, 532(%esp)
	movups	%xmm0, 480(%esp)
	xorps	%xmm0, %xmm0
	andw	$-512, %ax
	movl	$0, 464(%esp)
	orl	$9, %eax
	movl	$0, 468(%esp)
	movw	%ax, 584(%esp)
	movzwl	588(%esp), %eax
	movl	$0, 472(%esp)
	andw	$-2048, %ax
	movl	$0x00000000, 496(%esp)
	orl	$1, %eax
	movl	$0x00000000, 500(%esp)
	movl	$0, 508(%esp)
	movl	$0, 516(%esp)
	movl	$0, 520(%esp)
	movl	$0, 524(%esp)
	movl	$0, 528(%esp)
	movl	$-1, 512(%esp)
	movb	$1, 533(%esp)
	movl	$0, 428(%esp)
	movl	$0, 460(%esp)
	movl	$0, 452(%esp)
	movl	$0, 456(%esp)
	movl	$0, 476(%esp)
	movl	$-1, 504(%esp)
	movl	$0, 448(%esp)
	movl	$-1, 536(%esp)
	movl	$0, 572(%esp)
	movl	$0, 576(%esp)
	movl	$0, 580(%esp)
	movups	%xmm0, 432(%esp)
	movups	%xmm0, 540(%esp)
	movups	%xmm1, 556(%esp)
	movw	%ax, 588(%esp)
	xorl	%eax, %eax
L2175:
	movl	$0, 608(%esp,%eax)
	movl	$0, 612(%esp,%eax)
	movl	$0, 616(%esp,%eax)
	movl	$0, 620(%esp,%eax)
	addl	$16, %eax
	cmpl	$80, %eax
	jb	L2175
	movups	LC87, %xmm0
	movl	$0, 592(%esp)
	leal	508(%esp), %edx
	leal	444(%esp), %eax
	movl	$0, 596(%esp)
	movl	$-1, 600(%esp)
	movl	$0x00000000, 604(%esp)
	movups	%xmm0, 608(%esp)
	.p2align 5
	.p2align 4
	.p2align 3
L2177:
	movups	%xmm0, 180(%eax)
	addl	$32, %eax
	movups	%xmm0, 164(%eax)
	cmpl	%eax, %edx
	jne	L2177
	movzwl	312(%esp), %eax
	xorps	%xmm2, %xmm2
	movl	$0, 260(%esp)
	movl	$0, 192(%esp)
	andw	$-512, %ax
	movl	$0, 196(%esp)
	orl	$9, %eax
	movl	$0, 200(%esp)
	movw	%ax, 312(%esp)
	movzwl	316(%esp), %eax
	movl	$0x00000000, 224(%esp)
	andw	$-2048, %ax
	movl	$0x00000000, 228(%esp)
	movl	$0, 236(%esp)
	orl	$1, %eax
	movl	$0, 244(%esp)
	movl	$0, 248(%esp)
	movl	$0, 252(%esp)
	movl	$0, 256(%esp)
	movl	$-1, 240(%esp)
	movb	$1, 261(%esp)
	movl	$0, 156(%esp)
	movl	$0, 188(%esp)
	movl	$0, 180(%esp)
	movl	$0, 184(%esp)
	movl	$0, 204(%esp)
	movl	$-1, 232(%esp)
	movl	$0, 176(%esp)
	movl	$-1, 264(%esp)
	movl	$0, 300(%esp)
	movl	$0, 304(%esp)
	movl	$0, 308(%esp)
	movups	%xmm2, 208(%esp)
	xorps	%xmm2, %xmm2
	movw	%ax, 316(%esp)
	xorl	%eax, %eax
	movups	%xmm2, 160(%esp)
	movups	%xmm2, 268(%esp)
	movups	%xmm1, 284(%esp)
L2178:
	movl	$0, 336(%esp,%eax)
	movl	$0, 340(%esp,%eax)
	movl	$0, 344(%esp,%eax)
	movl	$0, 348(%esp,%eax)
	addl	$16, %eax
	cmpl	$80, %eax
	jb	L2178
	movl	$0, 320(%esp)
	leal	236(%esp), %edx
	leal	172(%esp), %eax
	movl	$0, 324(%esp)
	movl	$-1, 328(%esp)
	movl	$0x00000000, 332(%esp)
	movups	%xmm0, 336(%esp)
	.p2align 5
	.p2align 4
	.p2align 3
L2180:
	movups	%xmm0, 180(%eax)
	addl	$32, %eax
	movups	%xmm0, 164(%eax)
	cmpl	%edx, %eax
	jne	L2180
	testl	%esi, %esi
	je	L2263
	movl	24(%esi), %eax
	testl	%eax, %eax
	je	L2273
	.p2align 4
	.p2align 4
	.p2align 3
L2182:
	movl	%eax, %edx
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	L2182
L2184:
	movzbl	%cl, %eax
	movl	$1, 8(%esp)
	movl	52(%esp), %ecx
	movl	%eax, 60(%esp)
	movl	%eax, 4(%esp)
	leal	156(%esp), %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__ZN5ImGuiL24DockNodePreviewDockSetupEP11ImGuiWindowP13ImGuiDockNodeS1_S3_P20ImGuiDockPreviewDatabb.constprop.0
	movl	28(%esi), %eax
	cmpb	$0, 323(%esp)
	je	L2274
	testl	%eax, %eax
	je	L2275
L2198:
	leal	156(%esp), %eax
	movb	$0, 592(%esp)
	movl	%eax, 60(%esp)
L2199:
	leal	428(%esp), %eax
	movl	52(%esp), %ecx
	movl	%esi, %edx
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__ZN5ImGuiL25DockNodePreviewDockRenderEP11ImGuiWindowP13ImGuiDockNodeS1_PK20ImGuiDockPreviewData
	leal	156(%esp), %eax
	movl	52(%esp), %ecx
	movl	%esi, %edx
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__ZN5ImGuiL25DockNodePreviewDockRenderEP11ImGuiWindowP13ImGuiDockNodeS1_PK20ImGuiDockPreviewData
	movl	60(%esp), %eax
	cmpb	$0, 164(%eax)
	je	L2188
	cmpb	$0, 19138(%ebx)
	jne	L2276
L2188:
	leal	156(%esp), %ecx
	call	__ZN13ImGuiDockNodeD1Ev
	leal	428(%esp), %ecx
	call	__ZN13ImGuiDockNodeD1Ev
	movl	_GImGui, %ebx
L2262:
	movzbl	19138(%ebx), %eax
	movb	%al, 60(%esp)
L2156:
	movb	$0, 19070(%ebx)
	cmpb	$0, 60(%esp)
	je	L2148
	jmp	L2172
	.p2align 4,,10
	.p2align 3
L2267:
	movzbl	27(%esp), %ecx
	movl	19080(%ebx), %eax
	movb	%cl, 60(%esp)
	cmpb	$0, 3536(%ebx,%eax)
	je	L2157
	addl	$641, %eax
	xorl	%edx, %edx
	call	__ZN5ImGui12TestKeyOwnerE8ImGuiKeyj
	xorl	$1, %eax
	movb	%al, 60(%esp)
	jmp	L2157
	.p2align 4,,10
	.p2align 3
L2171:
	testl	%esi, %esi
	jne	L2167
	cmpb	$0, 26(%esp)
	jne	L2167
	movb	$0, 19070(%ebx)
	jmp	L2172
L2270:
	movl	40(%eax), %edx
	movzbl	97(%ebx), %ecx
	movl	%edx, 100(%esp)
	movl	44(%eax), %edx
	movl	%edx, 104(%esp)
	movl	48(%eax), %edx
	movl	52(%eax), %eax
	movl	%edx, 108(%esp)
	movl	%eax, 112(%esp)
	testb	%cl, %cl
	je	L2204
	movl	44(%esp), %edx
	cmpl	%edx, 48(%esp)
	je	L2167
	jmp	L2168
L2274:
	testl	%eax, %eax
	je	L2181
L2200:
	leal	428(%esp), %eax
	movl	%eax, 60(%esp)
	jmp	L2199
L2273:
	testb	$8, 17(%esi)
	jne	L2185
	movl	28(%esi), %eax
	testl	%eax, %eax
	jne	L2185
L2263:
	movzbl	%cl, %eax
	movl	%eax, 60(%esp)
L2181:
	movl	60(%esp), %eax
	movl	52(%esp), %ecx
	movl	$0, 8(%esp)
	movl	%esi, %edx
	movl	%eax, 4(%esp)
	leal	428(%esp), %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__ZN5ImGuiL24DockNodePreviewDockSetupEP11ImGuiWindowP13ImGuiDockNodeS1_S3_P20ImGuiDockPreviewDatabb.constprop.0
	jmp	L2200
L2269:
	movl	120(%eax), %eax
	testl	%eax, %eax
	je	L2162
	movl	28(%esi), %edx
	testl	%edx, %edx
	je	L2203
L2162:
	movl	%esi, %eax
	call	__ZN5ImGuiL32DockNodeTreeFindFallbackLeafNodeEP13ImGuiDockNode
	movl	%eax, %esi
	jmp	L2163
L2185:
	movl	%esi, %edx
	jmp	L2184
L2204:
	movb	$0, 26(%esp)
	jmp	L2166
L2276:
	movl	%eax, %ecx
	movl	%edi, 120(%esp)
	movss	176(%eax), %xmm0
	movl	168(%ecx), %edx
	movl	172(%eax), %eax
	movl	$0, 144(%esp)
	movl	$0, 148(%esp)
	movl	%edx, 124(%esp)
	movl	52(%esp), %edx
	movl	%eax, 132(%esp)
	leal	156(%esp), %eax
	cmpl	%eax, %ecx
	movl	%edx, 128(%esp)
	movl	23388(%ebx), %ecx
	movl	$1, 116(%esp)
	movss	%xmm0, 136(%esp)
	sete	140(%esp)
	cmpl	23392(%ebx), %ecx
	je	L2277
L2190:
	movl	23396(%ebx), %eax
	leal	(%ecx,%ecx,8), %edx
	leal	(%eax,%edx,4), %eax
	movl	116(%esp), %edx
	movl	%edx, (%eax)
	movl	120(%esp), %edx
	movl	%edx, 4(%eax)
	movl	124(%esp), %edx
	movl	%edx, 8(%eax)
	movl	128(%esp), %edx
	movl	%edx, 12(%eax)
	movl	132(%esp), %edx
	movl	%edx, 16(%eax)
	movl	136(%esp), %edx
	movl	%edx, 20(%eax)
	movl	140(%esp), %edx
	movl	%edx, 24(%eax)
	movl	144(%esp), %edx
	movl	%edx, 28(%eax)
	movl	148(%esp), %edx
	movl	%edx, 32(%eax)
	addl	$1, 23388(%ebx)
	jmp	L2188
L2275:
	movl	60(%esp), %eax
	movl	52(%esp), %ecx
	movl	$0, 8(%esp)
	movl	%esi, %edx
	movl	%eax, 4(%esp)
	leal	428(%esp), %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__ZN5ImGuiL24DockNodePreviewDockSetupEP11ImGuiWindowP13ImGuiDockNodeS1_S3_P20ImGuiDockPreviewDatabb.constprop.0
	jmp	L2198
L2203:
	movl	%eax, %esi
	jmp	L2163
L2277:
	leal	1(%ecx), %esi
	testl	%ecx, %ecx
	jne	L2191
	movl	$8, %eax
	cmpl	%eax, %esi
	cmovl	%eax, %esi
L2192:
	movl	_GImGui, %eax
	imull	$36, %esi, %edx
	testl	%eax, %eax
	je	L2194
	addl	$1, 188(%eax)
L2194:
	xorl	%ecx, %ecx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %edi
	movl	23396(%ebx), %eax
	testl	%eax, %eax
	je	L2195
	imull	$36, 23388(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	%edx, 8(%esp)
	call	_memcpy
	movl	23396(%ebx), %edx
	testl	%edx, %edx
	je	L2196
	movl	_GImGui, %eax
	testl	%eax, %eax
	je	L2196
	subl	$1, 188(%eax)
L2196:
	xorl	%eax, %eax
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2195:
	movl	%edi, 23396(%ebx)
	movl	23388(%ebx), %ecx
	movl	%esi, 23392(%ebx)
	jmp	L2190
L2191:
	movl	%ecx, %eax
	movl	$2, %edi
	cltd
	idivl	%edi
	addl	%ecx, %eax
	cmpl	%esi, %eax
	cmovge	%eax, %esi
	cmpl	%esi, %ecx
	jge	L2190
	jmp	L2192
	.cfi_endproc
LFE190:
	.align 2
	.p2align 4
	.globl	__ZN12ImGuiContextD1Ev
	.def	__ZN12ImGuiContextD1Ev;	.scl	2;	.type	32;	.endef
__ZN12ImGuiContextD1Ev:
LFB205:
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
	movl	%ecx, %ebx
	subl	$8, %esp
	movl	23948(%ecx), %eax
	testl	%eax, %eax
	je	L2279
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2280
	subl	$1, 188(%edx)
L2280:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2279:
	movl	23660(%ebx), %eax
	testl	%eax, %eax
	je	L2281
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2282
	subl	$1, 188(%edx)
L2282:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2281:
	movl	23600(%ebx), %eax
	testl	%eax, %eax
	je	L2283
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2284
	subl	$1, 188(%edx)
L2284:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2283:
	movl	23588(%ebx), %eax
	testl	%eax, %eax
	je	L2285
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2286
	subl	$1, 188(%edx)
L2286:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2285:
	movl	23544(%ebx), %eax
	testl	%eax, %eax
	je	L2287
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2288
	subl	$1, 188(%edx)
L2288:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2287:
	movl	23484(%ebx), %eax
	testl	%eax, %eax
	je	L2289
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2290
	subl	$1, 188(%edx)
L2290:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2289:
	movl	23472(%ebx), %eax
	testl	%eax, %eax
	je	L2291
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2292
	subl	$1, 188(%edx)
L2292:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2291:
	movl	23460(%ebx), %eax
	testl	%eax, %eax
	je	L2293
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2294
	subl	$1, 188(%edx)
L2294:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2293:
	movl	23448(%ebx), %eax
	testl	%eax, %eax
	je	L2295
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2296
	subl	$1, 188(%edx)
L2296:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2295:
	movl	23436(%ebx), %eax
	testl	%eax, %eax
	je	L2297
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2298
	subl	$1, 188(%edx)
L2298:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2297:
	movl	23408(%ebx), %eax
	testl	%eax, %eax
	je	L2299
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2300
	subl	$1, 188(%edx)
L2300:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2299:
	movl	23396(%ebx), %eax
	testl	%eax, %eax
	je	L2301
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2302
	subl	$1, 188(%edx)
L2302:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2301:
	movl	23384(%ebx), %eax
	testl	%eax, %eax
	je	L2303
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2304
	subl	$1, 188(%edx)
L2304:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2303:
	movl	23332(%ebx), %eax
	testl	%eax, %eax
	je	L2305
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2306
	subl	$1, 188(%edx)
L2306:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2305:
	movl	23320(%ebx), %eax
	testl	%eax, %eax
	je	L2307
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2308
	subl	$1, 188(%edx)
L2308:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2307:
	leal	23092(%ebx), %ecx
	call	__ZN6ImFontD1Ev
	movl	19436(%ebx), %eax
	testl	%eax, %eax
	je	L2309
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2310
	subl	$1, 188(%edx)
L2310:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2309:
	movl	19424(%ebx), %eax
	testl	%eax, %eax
	je	L2311
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2312
	subl	$1, 188(%edx)
L2312:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2311:
	movl	19412(%ebx), %eax
	testl	%eax, %eax
	je	L2313
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2314
	subl	$1, 188(%edx)
L2314:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2313:
	movl	19360(%ebx), %eax
	testl	%eax, %eax
	je	L2315
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2316
	subl	$1, 188(%edx)
L2316:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2315:
	movl	19348(%ebx), %eax
	testl	%eax, %eax
	je	L2317
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2318
	subl	$1, 188(%edx)
L2318:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2317:
	movl	19320(%ebx), %edx
	testl	%edx, %edx
	jle	L2319
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L2325:
	movl	19328(%ebx), %eax
	movl	4(%eax,%esi,8), %eax
	cmpl	$-1, %eax
	je	L2320
	leal	(%eax,%eax,8), %edi
	sall	$4, %edi
	addl	19316(%ebx), %edi
	movl	140(%edi), %eax
	testl	%eax, %eax
	je	L2321
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2322
	subl	$1, 188(%edx)
L2322:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2321:
	movl	8(%edi), %eax
	testl	%eax, %eax
	je	L2320
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2324
	subl	$1, 188(%edx)
L2324:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2320:
	addl	$1, %esi
	cmpl	19320(%ebx), %esi
	jl	L2325
L2319:
	movl	19328(%ebx), %eax
	testl	%eax, %eax
	je	L2326
	movl	_GImGui, %edx
	movl	$0, 19320(%ebx)
	movl	$0, 19324(%ebx)
	testl	%edx, %edx
	je	L2327
	subl	$1, 188(%edx)
L2327:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 19328(%ebx)
L2326:
	movl	19316(%ebx), %eax
	testl	%eax, %eax
	je	L2328
	movl	_GImGui, %edx
	movl	$0, 19308(%ebx)
	movl	$0, 19312(%ebx)
	testl	%edx, %edx
	je	L2329
	subl	$1, 188(%edx)
L2329:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 19316(%ebx)
L2328:
	movl	$0, 19332(%ebx)
	movl	19328(%ebx), %eax
	movl	$0, 19336(%ebx)
	testl	%eax, %eax
	je	L2330
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2331
	subl	$1, 188(%edx)
L2331:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2330:
	movl	19316(%ebx), %eax
	testl	%eax, %eax
	je	L2332
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2333
	subl	$1, 188(%edx)
L2333:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2332:
	movl	19300(%ebx), %eax
	testl	%eax, %eax
	je	L2334
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2335
	subl	$1, 188(%edx)
L2335:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2334:
	movl	19288(%ebx), %eax
	testl	%eax, %eax
	je	L2336
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2337
	subl	$1, 188(%edx)
L2337:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2336:
	movl	19260(%ebx), %eax
	testl	%eax, %eax
	jle	L2338
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L2347:
	movl	19268(%ebx), %eax
	movl	4(%eax,%edi,8), %eax
	cmpl	$-1, %eax
	je	L2339
	imull	$488, %eax, %esi
	addl	19256(%ebx), %esi
	movl	8(%esi), %eax
	testl	%eax, %eax
	je	L2340
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2340
	subl	$1, 188(%edx)
L2340:
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	404(%esi), %eax
	testl	%eax, %eax
	je	L2341
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2342
	subl	$1, 188(%edx)
L2342:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2341:
	movl	380(%esi), %eax
	testl	%eax, %eax
	je	L2343
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2344
	subl	$1, 188(%edx)
L2344:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2343:
	movl	348(%esi), %eax
	testl	%eax, %eax
	je	L2339
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2346
	subl	$1, 188(%edx)
L2346:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2339:
	addl	$1, %edi
	cmpl	19260(%ebx), %edi
	jl	L2347
L2338:
	movl	19268(%ebx), %eax
	testl	%eax, %eax
	je	L2348
	movl	_GImGui, %edx
	movl	$0, 19260(%ebx)
	movl	$0, 19264(%ebx)
	testl	%edx, %edx
	je	L2349
	subl	$1, 188(%edx)
L2349:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 19268(%ebx)
L2348:
	movl	19256(%ebx), %eax
	testl	%eax, %eax
	je	L2350
	movl	_GImGui, %edx
	movl	$0, 19248(%ebx)
	movl	$0, 19252(%ebx)
	testl	%edx, %edx
	je	L2351
	subl	$1, 188(%edx)
L2351:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	$0, 19256(%ebx)
L2350:
	movl	$0, 19272(%ebx)
	movl	19268(%ebx), %eax
	movl	$0, 19276(%ebx)
	testl	%eax, %eax
	je	L2352
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2353
	subl	$1, 188(%edx)
L2353:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2352:
	movl	19256(%ebx), %eax
	testl	%eax, %eax
	je	L2354
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2355
	subl	$1, 188(%edx)
L2355:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2354:
	movl	19244(%ebx), %eax
	testl	%eax, %eax
	je	L2356
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2357
	subl	$1, 188(%edx)
L2357:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2356:
	movl	19224(%ebx), %eax
	testl	%eax, %eax
	je	L2358
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2359
	subl	$1, 188(%edx)
L2359:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2358:
	movl	19192(%ebx), %eax
	testl	%eax, %eax
	je	L2360
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2361
	subl	$1, 188(%edx)
L2361:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2360:
	movl	18616(%ebx), %eax
	testl	%eax, %eax
	je	L2362
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2363
	subl	$1, 188(%edx)
L2363:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2362:
	movl	18600(%ebx), %eax
	testl	%eax, %eax
	je	L2364
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2365
	subl	$1, 188(%edx)
L2365:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2364:
	movl	18588(%ebx), %eax
	testl	%eax, %eax
	je	L2366
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2367
	subl	$1, 188(%edx)
L2367:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2366:
	movl	18576(%ebx), %eax
	testl	%eax, %eax
	je	L2368
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2369
	subl	$1, 188(%edx)
L2369:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2368:
	movl	18564(%ebx), %eax
	testl	%eax, %eax
	je	L2370
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2371
	subl	$1, 188(%edx)
L2371:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2370:
	movl	18552(%ebx), %eax
	testl	%eax, %eax
	je	L2372
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2373
	subl	$1, 188(%edx)
L2373:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2372:
	movl	18540(%ebx), %eax
	testl	%eax, %eax
	je	L2374
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2375
	subl	$1, 188(%edx)
L2375:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2374:
	movl	18528(%ebx), %eax
	testl	%eax, %eax
	je	L2376
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2377
	subl	$1, 188(%edx)
L2377:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2376:
	movl	18516(%ebx), %eax
	testl	%eax, %eax
	je	L2378
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2379
	subl	$1, 188(%edx)
L2379:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2378:
	movl	18264(%ebx), %eax
	testl	%eax, %eax
	je	L2380
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2381
	subl	$1, 188(%edx)
L2381:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2380:
	movl	18252(%ebx), %eax
	testl	%eax, %eax
	je	L2382
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2383
	subl	$1, 188(%edx)
L2383:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2382:
	movl	16132(%ebx), %eax
	testl	%eax, %eax
	je	L2384
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2385
	subl	$1, 188(%edx)
L2385:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2384:
	movl	16120(%ebx), %eax
	testl	%eax, %eax
	je	L2386
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2387
	subl	$1, 188(%edx)
L2387:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2386:
	movl	16108(%ebx), %eax
	testl	%eax, %eax
	je	L2388
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2389
	subl	$1, 188(%edx)
L2389:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2388:
	movl	16096(%ebx), %eax
	testl	%eax, %eax
	je	L2390
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2391
	subl	$1, 188(%edx)
L2391:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2390:
	movl	16084(%ebx), %eax
	testl	%eax, %eax
	je	L2392
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2393
	subl	$1, 188(%edx)
L2393:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2392:
	movl	15576(%ebx), %eax
	testl	%eax, %eax
	je	L2394
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2395
	subl	$1, 188(%edx)
L2395:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2394:
	movl	14400(%ebx), %eax
	testl	%eax, %eax
	je	L2396
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2397
	subl	$1, 188(%edx)
L2397:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2396:
	movl	14388(%ebx), %eax
	testl	%eax, %eax
	je	L2398
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2399
	subl	$1, 188(%edx)
L2399:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2398:
	movl	14376(%ebx), %eax
	testl	%eax, %eax
	je	L2400
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2401
	subl	$1, 188(%edx)
L2401:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2400:
	movl	14364(%ebx), %eax
	testl	%eax, %eax
	je	L2402
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2403
	subl	$1, 188(%edx)
L2403:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2402:
	movl	14256(%ebx), %eax
	testl	%eax, %eax
	je	L2278
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L2405
	subl	$1, 188(%edx)
L2405:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2278:
	addl	$8, %esp
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
LFE205:
	.section .rdata,"dr"
	.align 4
__ZL22GWindowDockStyleColors:
	.long	0
	.long	33
	.long	34
	.long	35
	.long	36
	.long	37
	.align 4
LC0:
	.long	1065353216
	.align 4
LC2:
	.long	1040187392
	.align 4
LC3:
	.long	1056964608
	.align 4
LC4:
	.long	1069547520
	.align 4
LC5:
	.long	1063675494
	.align 4
LC6:
	.long	1075419546
	.align 4
LC7:
	.long	1068708659
	.align 4
LC8:
	.long	1076258406
	.align 4
LC9:
	.long	1050253722
	.align 4
LC10:
	.long	1061997773
	.align 4
LC12:
	.long	1073741824
	.align 4
LC15:
	.long	-1082130432
	.align 4
LC17:
	.long	-1090519040
	.align 4
LC18:
	.long	1067030938
	.align 4
LC19:
	.long	1199570944
	.align 4
LC20:
	.long	1063105069
	.align 4
LC21:
	.long	1084227584
	.align 4
LC22:
	.long	1048576000
	.align 4
LC23:
	.long	1077936128
	.align 4
LC24:
	.long	1053609165
	.align 4
LC25:
	.long	1040791372
	.align 4
LC27:
	.long	1058642330
	.align 16
LC29:
	.long	998277249
	.long	998277249
	.long	998277249
	.long	998277249
	.set	LC31,LC87
	.align 4
LC33:
	.long	-1073741824
	.align 4
LC35:
	.long	1060320051
	.set	LC74,LC86+8
	.align 4
LC81:
	.long	-1069547520
	.align 8
LC84:
	.long	5
	.long	2
	.align 16
LC86:
	.long	0
	.long	-1
	.long	-1
	.long	-1
	.align 16
LC87:
	.long	2139095039
	.long	2139095039
	.long	-8388609
	.long	-8388609
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	__ZL13MallocWrapperjPv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	__ZL11FreeWrapperPvS_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui10SelectableEPKcbiRK6ImVec2;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui8SameLineEff.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui4TextEPKcz.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui12CalcTextSizeEPKcS1_bf;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui6PushIDEPKc;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui12PushStyleVarEiRK6ImVec2;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui11PopStyleVarEi.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui10RenderTextE6ImVec2PKcS2_b;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList11AddPolylineEPK6ImVec2ijif.part.0;	.scl	2;	.type	32;	.endef
	.def	__ZL19GetViewportDrawListP14ImGuiViewportPjPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList7AddRectERK6ImVec2S2_jfif.part.0.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui30CalcRoundingFlagsForRectInRectERK6ImRectS2_f.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui15TabItemCalcSizeEP11ImGuiWindow;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList12PushClipRectERK6ImVec2S2_b.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList16_PathArcToFastExERK6ImVec2fiii.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij.part.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui12RenderBulletEP10ImDrawList6ImVec2j;	.scl	2;	.type	32;	.endef
	.def	__ZNK6ImFont13CalcTextSizeAEfffPKcS1_PS1_;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui19RenderTextClippedExEP10ImDrawListRK6ImVec2S4_PKcS6_PS3_S4_PK6ImRect;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList11PrimReserveEii;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList11PopClipRectEv;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui13PopStyleColorEi.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z18ImTextCharFromUtf8PjPKcS1_;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList7AddLineERK6ImVec2S2_jf.isra.0;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	_strncmp;	.scl	2;	.type	32;	.endef
	.def	__ZN15ImGuiTextBuffer7appendfEPKcz;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui3EndEv;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui13ClearDragDropEv;	.scl	2;	.type	32;	.endef
	.def	__ZN15ImGuiTextBuffer8appendfvEPKcPc;	.scl	2;	.type	32;	.endef
	.def	_memmove;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGuiL21DockContextRemoveNodeEP12ImGuiContextP13ImGuiDockNodeb.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui12TabBarAddTabEP11ImGuiTabBariP11ImGuiWindow;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui30UpdateWindowParentAndRootLinksEP11ImGuiWindowiS1_;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui30DockContextProcessUndockWindowEP12ImGuiContextP11ImGuiWindowb.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZL30DockNodeComparerDepthMostFirstPKvS0_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_qsort;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGuiL18DockContextAddNodeEP12ImGuiContextj.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZNK12ImGuiStorage10GetVoidPtrEj;	.scl	2;	.type	32;	.endef
	.def	__Z14ImFormatStringPcjPKcz;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	__Z9ImHashStrPKcjj;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZN13ImGuiDockNodeD1Ev;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui12TestKeyOwnerE8ImGuiKeyj;	.scl	2;	.type	32;	.endef
	.def	__ZN6ImFontD1Ev;	.scl	2;	.type	32;	.endef
