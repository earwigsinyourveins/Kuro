	.file	"<artificial>"
	.text
	.p2align 4
	.def	__ZL24Polymost_SendTexToDriveri4vec2IiEiPK7coltypeii;	.scl	3;	.type	32;	.endef
__ZL24Polymost_SendTexToDriveri4vec2IiEiPK7coltypeii:
LFB0:
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
	je	L2
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
L2:
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
LFE0:
	.section .rdata,"dr"
LC1:
	.ascii "%d_%d\0"
	.text
	.p2align 4
	.globl	_polymer_getbuildmaterial.lto_priv.0
	.def	_polymer_getbuildmaterial.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_getbuildmaterial.lto_priv.0:
LFB1:
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
	movl	$LC1, 4(%esp)
	movl	%ebx, (%esp)
	call	_sprintf
	movl	_prbuckethead, %eax
	testl	%eax, %eax
	je	L7
	movl	%ebx, %edx
	movl	$__ZL9h_buckets, %eax
	call	_hash_find
	movl	%eax, %esi
	cmpl	$-1, %eax
	je	L7
L13:
	movss	LC4, %xmm0
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
	je	L192
L14:
	movl	-44(%ebp), %eax
	xorl	%ecx, %ecx
	movl	%eax, (%esp)
	movl	-36(%ebp), %edx
	movl	-32(%ebp), %eax
	call	_texcache_fetch
	movss	LC4, %xmm0
	testl	%eax, %eax
	movl	%eax, %ebx
	je	L193
	movl	12(%eax), %eax
	movl	%eax, 44(%edi)
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	L19
	movss	12(%eax), %xmm1
	movss	%xmm1, 48(%edi)
	movl	8(%ebx), %eax
	movss	16(%eax), %xmm1
	movl	_pr_artmapping, %eax
	movss	%xmm1, 52(%edi)
	testl	%eax, %eax
	jne	L20
	movl	_pr_highpalookups, %eax
	movl	%eax, -44(%ebp)
	testl	%eax, %eax
	jne	L21
L190:
	movl	8(%ebx), %eax
	movl	%eax, -40(%ebp)
L22:
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	je	L29
L24:
	movl	-40(%ebp), %eax
	movss	24(%eax), %xmm1
	ucomiss	%xmm0, %xmm1
	jp	L101
	je	L51
L101:
	movss	%xmm1, 80(%edi)
	movl	8(%ebx), %eax
	movl	%eax, -40(%ebp)
L51:
	movl	-40(%ebp), %eax
	movss	28(%eax), %xmm1
	movss	%xmm1, 84(%edi)
L29:
	cmpl	$3, _rendmode
	je	L194
L53:
	movsbl	-46(%ebp), %eax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	mulss	_shadescale, %xmm1
	cmpl	$4, _r_usenewshading
	je	L195
	movswl	_numshades, %edx
	movl	_shadescale_unbounded, %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%edx, %xmm3
	testl	%ecx, %ecx
	je	L61
L63:
	movaps	%xmm3, %xmm2
L62:
	xorps	%xmm4, %xmm4
	movaps	%xmm1, %xmm0
	cmpnltss	%xmm4, %xmm0
	movss	LC0, %xmm4
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
L57:
	movb	%al, 74(%edi)
	movb	%al, 73(%edi)
	movb	%al, 72(%edi)
	movl	-36(%ebp), %eax
	movzwl	_hictinting(,%eax,8), %edx
	movzwl	34(%ebx), %eax
	andl	$2, %eax
	testb	$-60, %dl
	jne	L96
	testw	%ax, %ax
	je	L67
	movzbl	-45(%ebp), %eax
	cmpb	%al, 38(%ebx)
	jne	L68
	movzwl	36(%ebx), %eax
	andl	$32, %edx
	andw	$199, %ax
	orw	%dx, %ax
	je	L97
L68:
	movl	-36(%ebp), %edx
	xorps	%xmm1, %xmm1
	xorps	%xmm2, %xmm2
	movss	LC6, %xmm3
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
	jne	L196
	.p2align 4
	.p2align 3
L69:
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
	je	L18
	testb	$16, 34(%ebx)
	jne	L197
	.p2align 4
	.p2align 3
L18:
	movl	-32(%ebp), %eax
	movl	$1, %ecx
	movl	$255, %edx
	call	_hicfindsubst
	testl	%eax, %eax
	je	L74
	movl	-32(%ebp), %eax
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	movl	$255, %edx
	call	_texcache_fetch
	testl	%eax, %eax
	je	L74
	movl	8(%eax), %edx
	testl	%edx, %edx
	je	L74
	cmpb	$-1, 32(%edx)
	je	L198
	.p2align 4
	.p2align 3
L74:
	movl	-32(%ebp), %eax
	movl	$1, %ecx
	movl	$254, %edx
	call	_hicfindsubst
	testl	%eax, %eax
	je	L75
	movl	-32(%ebp), %eax
	movl	$1, (%esp)
	xorl	%ecx, %ecx
	movl	$254, %edx
	call	_texcache_fetch
	testl	%eax, %eax
	je	L75
	movl	8(%eax), %edx
	testl	%edx, %edx
	je	L75
	cmpb	$-2, 32(%edx)
	je	L199
	.p2align 4
	.p2align 3
L75:
	movl	-32(%ebp), %eax
	movl	$1, %ecx
	movl	$253, %edx
	call	_hicfindsubst
	testl	%eax, %eax
	je	L76
	movl	-32(%ebp), %eax
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	movl	$253, %edx
	call	_texcache_fetch
	testl	%eax, %eax
	je	L76
	movl	8(%eax), %edx
	testl	%edx, %edx
	je	L76
	cmpb	$-3, 32(%edx)
	je	L200
	.p2align 4
	.p2align 3
L76:
	movl	-32(%ebp), %eax
	movl	$1, %ecx
	movl	$252, %edx
	call	_hicfindsubst
	testl	%eax, %eax
	je	L46
	movl	-32(%ebp), %eax
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	movl	$252, %edx
	call	_texcache_fetch
	testl	%eax, %eax
	je	L46
	movl	8(%eax), %edx
	testl	%edx, %edx
	je	L46
	cmpb	$-4, 32(%edx)
	je	L201
	.p2align 4
	.p2align 3
L46:
	movl	104(%esi), %ecx
	testl	%ecx, %ecx
	je	L6
	leal	4(%esi), %edx
	xorl	%eax, %eax
	movl	%edx, -36(%ebp)
L78:
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
	jb	L78
	movl	(%edi,%eax), %ecx
	movl	-36(%ebp), %edx
	movl	%ecx, (%edx,%eax)
	movl	$0, 104(%esi)
L6:
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
L7:
	.cfi_restore_state
	movl	$128, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L9
	movl	__ZL9h_buckets+12, %eax
	testl	%eax, %eax
	je	L202
L11:
	movl	_prbuckethead, %eax
	movl	%esi, _prbuckethead
	movl	$1024, %edx
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
	je	L12
	movl	%eax, 108(%esi)
	movl	%esi, %ecx
	movl	%ebx, %edx
	movl	$__ZL9h_buckets, %eax
	movl	$1, (%esp)
	call	_hash_add
	jmp	L13
	.p2align 4,,10
	.p2align 3
L20:
	movl	_globalflags, %eax
	andl	$1, %eax
	orl	_gltexfiltermode, %eax
	je	L203
	movl	_pr_highpalookups, %eax
	movl	%eax, -44(%ebp)
	testl	%eax, %eax
	je	L190
	movzbl	_curbasepal, %eax
	movb	%al, -44(%ebp)
	movl	_prhighpalookups(,%eax,4), %eax
	testl	%eax, %eax
	je	L99
L31:
	movl	-36(%ebp), %ecx
	leal	(%eax,%ecx,8), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L47
L87:
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	testl	%eax, %eax
	jne	L86
L47:
	movl	$0, -44(%ebp)
L49:
	testl	%ebx, %ebx
	je	L18
	movzbl	-45(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	8(%ebx), %eax
	movl	%eax, -40(%ebp)
	jmp	L22
	.p2align 4,,10
	.p2align 3
L96:
	movss	LC6, %xmm3
	movaps	%xmm0, %xmm1
	movaps	%xmm0, %xmm2
L66:
	testw	%ax, %ax
	je	L69
L196:
	testb	$1, -44(%ebp)
	jne	L69
	cmpw	$-1, _hictinting+2042
	je	L204
L72:
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
	jmp	L69
	.p2align 4,,10
	.p2align 3
L192:
	call	_tileLoad
	jmp	L14
	.p2align 4,,10
	.p2align 3
L193:
	movl	_pr_artmapping, %edx
	testl	%edx, %edx
	je	L205
	movl	_globalflags, %eax
	andl	$1, %eax
	orl	_gltexfiltermode, %eax
	je	L206
	movl	_pr_highpalookups, %eax
	testl	%eax, %eax
	je	L18
	movzbl	_curbasepal, %eax
	movb	%al, -44(%ebp)
	movl	_prhighpalookups(,%eax,4), %eax
	testl	%eax, %eax
	jne	L31
	jmp	L18
	.p2align 4,,10
	.p2align 3
L194:
	movl	_r_useindexedcolortextures, %eax
	testl	%eax, %eax
	je	L54
	movl	_gltexfiltermode, %eax
	testl	%eax, %eax
	jne	L54
L55:
	movl	_usehightile, %eax
	testl	%eax, %eax
	jne	L207
L56:
	movss	LC0, %xmm4
	movl	$-1, %eax
	movaps	%xmm4, %xmm0
	jmp	L57
	.p2align 4,,10
	.p2align 3
L19:
	movl	_pr_artmapping, %eax
	testl	%eax, %eax
	jne	L20
	movl	_pr_highpalookups, %eax
	movl	%eax, -44(%ebp)
	testl	%eax, %eax
	je	L29
L21:
	movzbl	_curbasepal, %eax
	movb	%al, -44(%ebp)
	movl	_prhighpalookups(,%eax,4), %eax
	testl	%eax, %eax
	je	L99
	movl	-36(%ebp), %ecx
	leal	(%eax,%ecx,8), %eax
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	jne	L87
L99:
	movl	$0, -44(%ebp)
	jmp	L190
	.p2align 4,,10
	.p2align 3
L61:
	cmpl	%edx, %eax
	jge	L63
	subl	$1, %edx
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%edx, %xmm2
	jmp	L62
	.p2align 4,,10
	.p2align 3
L67:
	testw	$264, %dx
	jne	L208
	movss	LC6, %xmm3
	movaps	%xmm0, %xmm1
	movaps	%xmm0, %xmm2
	jmp	L69
	.p2align 4,,10
	.p2align 3
L197:
	movl	4(%ebx), %eax
	movl	12(%eax), %eax
	movl	%eax, 92(%edi)
	jmp	L18
	.p2align 4,,10
	.p2align 3
L205:
	movl	_pr_highpalookups, %eax
	testl	%eax, %eax
	je	L18
	movzbl	_curbasepal, %eax
	movb	%al, -44(%ebp)
	movl	_prhighpalookups(,%eax,4), %eax
	testl	%eax, %eax
	je	L18
	movl	-36(%ebp), %ecx
	leal	(%eax,%ecx,8), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	jne	L87
	jmp	L18
	.p2align 4,,10
	.p2align 3
L54:
	movl	_r_usetileshades, %eax
	testl	%eax, %eax
	je	L53
	testb	$1, _globalflags
	jne	L53
	jmp	L55
	.p2align 4,,10
	.p2align 3
L200:
	movl	12(%eax), %eax
	movl	%eax, 76(%edi)
	jmp	L76
	.p2align 4,,10
	.p2align 3
L199:
	movl	12(%eax), %eax
	movl	%eax, 92(%edi)
	jmp	L75
	.p2align 4,,10
	.p2align 3
L201:
	movl	12(%eax), %edx
	movl	%edx, 8(%edi)
	movl	8(%eax), %edx
	movss	24(%edx), %xmm0
	movss	%xmm0, 12(%edi)
	movl	8(%eax), %eax
	movss	28(%eax), %xmm0
	movss	%xmm0, 16(%edi)
	jmp	L46
	.p2align 4,,10
	.p2align 3
L198:
	movl	12(%eax), %edx
	movl	%edx, 60(%edi)
	movl	8(%eax), %edx
	movss	12(%edx), %xmm0
	movss	%xmm0, 64(%edi)
	movl	8(%eax), %eax
	movss	16(%eax), %xmm0
	movss	%xmm0, 68(%edi)
	jmp	L74
	.p2align 4,,10
	.p2align 3
L9:
	movl	$128, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L195:
	divss	_frealmaxshade, %xmm1
	movaps	%xmm0, %xmm2
	movss	LC0, %xmm4
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
	jmp	L57
	.p2align 4,,10
	.p2align 3
L202:
	movl	$__ZL9h_buckets, %eax
	call	_hash_init
	jmp	L11
	.p2align 4,,10
	.p2align 3
L203:
	movl	8(%ebx), %eax
	movl	%eax, -40(%ebp)
	testl	%eax, %eax
	je	L23
	movl	_pr_highpalookups, %eax
	movl	%eax, -44(%ebp)
	testl	%eax, %eax
	je	L24
	movzbl	_curbasepal, %eax
	movb	%al, -44(%ebp)
	movl	_prhighpalookups(,%eax,4), %eax
	testl	%eax, %eax
	je	L191
	movl	-36(%ebp), %ecx
	movl	(%eax,%ecx,8), %edx
	testl	%edx, %edx
	je	L191
	movl	4(%eax,%ecx,8), %eax
	movl	%eax, -52(%ebp)
	testl	%eax, %eax
	jne	L209
L84:
	movl	$0, -44(%ebp)
	jmp	L22
	.p2align 4,,10
	.p2align 3
L206:
	cmpw	$30463, -52(%ebp)
	jle	L26
	movl	_pr_highpalookups, %eax
	testl	%eax, %eax
	je	L18
	movzbl	_curbasepal, %eax
	movb	%al, -44(%ebp)
	movl	_prhighpalookups(,%eax,4), %eax
	testl	%eax, %eax
	je	L18
	movl	-36(%ebp), %ecx
	movl	(%eax,%ecx,8), %edx
	testl	%edx, %edx
	je	L18
	movl	4(%eax,%ecx,8), %eax
	movl	%eax, -52(%ebp)
	testl	%eax, %eax
	je	L18
	.p2align 4
	.p2align 3
L86:
	movl	-32(%ebp), %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	call	_hicfindsubst
	movss	LC4, %xmm0
	testl	%eax, %eax
	je	L47
L48:
	cmpb	$0, -44(%ebp)
	je	L210
L50:
	movl	-52(%ebp), %eax
	movl	$1, -44(%ebp)
	movb	$0, -45(%ebp)
	movl	%eax, 56(%edi)
	jmp	L49
	.p2align 4,,10
	.p2align 3
L208:
	movl	-36(%ebp), %edx
	xorps	%xmm1, %xmm1
	xorps	%xmm2, %xmm2
	movss	LC6, %xmm3
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
	jmp	L66
	.p2align 4,,10
	.p2align 3
L97:
	movss	LC6, %xmm3
	movaps	%xmm0, %xmm1
	movaps	%xmm0, %xmm2
	movl	$2, %eax
	jmp	L66
	.p2align 4,,10
	.p2align 3
L12:
	movl	$4096, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L207:
	movl	_globalpal, %edx
	movswl	_globalpicnum, %eax
	movzwl	_hictinting(,%edx,8), %ecx
	andl	$256, %ecx
	call	_hicfindsubst
	movss	LC4, %xmm0
	testl	%eax, %eax
	jne	L53
	jmp	L56
	.p2align 4,,10
	.p2align 3
L26:
	movl	-36(%ebp), %eax
	movzwl	_hictinting(,%eax,8), %eax
	testw	$264, %ax
	je	L32
	movzbl	-45(%ebp), %ecx
	testb	$16, %al
	movl	$0, %eax
	cmovne	%ecx, %eax
	movb	%al, -45(%ebp)
L32:
	movl	-32(%ebp), %eax
	movl	_prartmaps(,%eax,4), %edx
	testl	%edx, %edx
	je	L33
	movzbl	_curbasepal, %eax
	movl	_prbasepalmaps(,%eax,4), %ebx
	testl	%ebx, %ebx
	je	L34
	movzbl	-45(%ebp), %ebx
	movl	_prlookups(,%ebx,4), %ecx
	testl	%ecx, %ecx
	jne	L36
L35:
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
L189:
	movl	-32(%ebp), %eax
	movl	_prartmaps(,%eax,4), %edx
	movzbl	_curbasepal, %eax
L36:
	movl	%edx, 24(%edi)
	movl	_prbasepalmaps(,%eax,4), %edx
	movl	%edx, 28(%edi)
	movl	_prlookups(,%ebx,4), %eax
	movl	%eax, 32(%edi)
	testl	%eax, %eax
	je	L100
	testl	%edx, %edx
	jne	L44
L100:
	movl	$0, 24(%edi)
L44:
	movss	LC0, %xmm2
	movsbl	-46(%ebp), %eax
	xorps	%xmm0, %xmm0
	movss	LC6, %xmm1
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
	jmp	L46
	.p2align 4,,10
	.p2align 3
L23:
	cmpw	$30463, -52(%ebp)
	jle	L26
	movl	_pr_highpalookups, %eax
	movl	%eax, -44(%ebp)
	testl	%eax, %eax
	je	L29
	movzbl	_curbasepal, %eax
	movb	%al, -44(%ebp)
	movl	_prhighpalookups(,%eax,4), %eax
	testl	%eax, %eax
	je	L211
	movl	-36(%ebp), %ecx
	movl	(%eax,%ecx,8), %edx
	testl	%edx, %edx
	je	L84
	movl	4(%eax,%ecx,8), %eax
	movl	%eax, -52(%ebp)
	testl	%eax, %eax
	je	L84
	jmp	L86
	.p2align 4,,10
	.p2align 3
L204:
	cmpb	$-1, _hictinting+2044
	jne	L72
	jmp	L69
	.p2align 4,,10
	.p2align 3
L210:
	movl	-36(%ebp), %edx
	movl	-32(%ebp), %eax
	xorl	%ecx, %ecx
	call	_hicfindsubst
	movzbl	-45(%ebp), %ecx
	movss	LC4, %xmm0
	cmpb	%cl, 32(%eax)
	jne	L50
	jmp	L47
	.p2align 4,,10
	.p2align 3
L191:
	movl	$0, -44(%ebp)
	jmp	L24
L33:
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
	je	L37
	movl	-32(%ebp), %edx
	movswl	_tilesiz+2(,%edx,4), %eax
	testw	%ax, %ax
	jle	L38
	movl	$0, -40(%ebp)
	xorl	%ebx, %ebx
	movl	%edx, %ecx
	movl	%esi, -64(%ebp)
	movl	%edi, -68(%ebp)
	.p2align 4
	.p2align 3
L39:
	movl	-60(%ebp), %esi
	movl	-56(%ebp), %edi
	movl	$0, -36(%ebp)
	addl	-40(%ebp), %edi
	addl	%ebx, %esi
	cmpw	$0, _tilesiz(,%ecx,4)
	jle	L41
	movl	%ebx, -52(%ebp)
	xorl	%edx, %edx
	.p2align 6
	.p2align 4
	.p2align 3
L40:
	imull	%edx, %eax
	movl	%edx, -36(%ebp)
	movzbl	(%esi,%eax), %eax
	movb	%al, (%edi,%edx)
	movswl	_tilesiz(,%ecx,4), %ebx
	addl	$1, %edx
	movswl	_tilesiz+2(,%ecx,4), %eax
	cmpl	%ebx, %edx
	jl	L40
	movl	-40(%ebp), %esi
	movl	-36(%ebp), %edx
	movl	-52(%ebp), %ebx
	leal	1(%esi,%edx), %esi
	movl	%esi, -40(%ebp)
L41:
	addl	$1, %ebx
	cmpl	%eax, %ebx
	jl	L39
	movl	-64(%ebp), %esi
	movl	-68(%ebp), %edi
L38:
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
	jne	L188
	.p2align 4
	.p2align 3
L34:
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
L188:
	movzbl	-45(%ebp), %ebx
	movl	_prlookups(,%ebx,4), %eax
	testl	%eax, %eax
	jne	L189
	jmp	L35
L209:
	movl	-32(%ebp), %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	call	_hicfindsubst
	movss	LC4, %xmm0
	testl	%eax, %eax
	jne	L48
	jmp	L84
L211:
	movl	$0, -44(%ebp)
	jmp	L29
L37:
	movl	%ebx, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE1:
	.section .rdata,"dr"
	.align 4
LC7:
	.ascii "Compiling program with bits (octal) %o\0"
LC8:
	.ascii "source/build/src/polymer.cpp\0"
	.align 4
LC9:
	.ascii "Failed to compile program with bits (octal) %o!\0"
LC10:
	.ascii "Linking log:\12%s\0"
LC11:
	.ascii "Vertex compile log:\12%s\0"
LC12:
	.ascii "Fragment compile log:\12%s\0"
LC13:
	.ascii "Vertex source dump:\12%s\0"
LC14:
	.ascii "Fragment source dump:\12%s\0"
LC15:
	.ascii "u_colorCorrection\0"
LC16:
	.ascii "nextFrameData\0"
LC17:
	.ascii "nextFrameNormal\0"
LC18:
	.ascii "frameProgress\0"
LC19:
	.ascii "T\0"
LC20:
	.ascii "B\0"
LC21:
	.ascii "N\0"
LC22:
	.ascii "eyePosition\0"
LC23:
	.ascii "normalMap\0"
LC24:
	.ascii "normalBias\0"
LC25:
	.ascii "artMap\0"
LC26:
	.ascii "basePalMap\0"
LC27:
	.ascii "lookupMap\0"
LC28:
	.ascii "shadeOffset\0"
LC29:
	.ascii "visibility\0"
LC30:
	.ascii "diffuseMap\0"
LC31:
	.ascii "diffuseScale\0"
LC32:
	.ascii "highPalookupMap\0"
LC33:
	.ascii "detailMap\0"
LC34:
	.ascii "detailScale\0"
LC35:
	.ascii "specMap\0"
LC36:
	.ascii "specMaterial\0"
LC37:
	.ascii "mirrorMap\0"
LC38:
	.ascii "linearFog\0"
LC39:
	.ascii "glowMap\0"
LC40:
	.ascii "shadowProjMatrix\0"
LC41:
	.ascii "shadowMap\0"
LC42:
	.ascii "lightMap\0"
LC43:
	.ascii "spotDir\0"
LC44:
	.ascii "spotRadius\0"
	.text
	.p2align 4
	.globl	_polymer_compileprogram.lto_priv.0
	.def	_polymer_compileprogram.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_compileprogram.lto_priv.0:
LFB9:
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
L214:
	btl	%eax, %edi
	jnc	L213
	movl	%eax, %edx
	sall	$4, %edx
	movl	__ZL13prprogrambits(%edx), %edx
	movl	%edx, 28(%esp,%ecx,4)
	addl	$1, %ecx
L213:
	addl	$1, %eax
	cmpl	$21, %eax
	jne	L214
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L216:
	btl	%eax, %edi
	jnc	L215
	movl	%eax, %edx
	sall	$4, %edx
	movl	__ZL13prprogrambits+4(%edx), %edx
	movl	%edx, 28(%esp,%ecx,4)
	addl	$1, %ecx
L215:
	addl	$1, %eax
	cmpl	$21, %eax
	jne	L216
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
L218:
	btl	%eax, %edi
	jnc	L217
	movl	%eax, %edx
	sall	$4, %edx
	movl	__ZL13prprogrambits+8(%edx), %edx
	movl	%edx, 28(%esp,%ecx,4)
	addl	$1, %ecx
L217:
	addl	$1, %eax
	cmpl	$21, %eax
	jne	L218
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L220:
	btl	%eax, %edi
	jnc	L219
	movl	%eax, %edx
	sall	$4, %edx
	movl	__ZL13prprogrambits+12(%edx), %edx
	movl	%edx, 28(%esp,%ecx,4)
	addl	$1, %ecx
L219:
	addl	$1, %eax
	cmpl	$21, %eax
	jne	L220
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
	je	L221
	movl	$0, 108(%eax)
	movl	$0, 112(%eax)
	movl	$0, 116(%eax)
	movl	$0, 120(%eax)
	xorl	%eax, %eax
L222:
	movl	$0, 4(%ebx,%eax)
	movl	$0, 8(%ebx,%eax)
	movl	$0, 12(%ebx,%eax)
	movl	$0, 16(%ebx,%eax)
	addl	$16, %eax
	cmpl	$112, %eax
	jb	L222
	movl	%esi, (%ebx)
	cmpl	$1, _pr_verbosity
	jg	L319
L225:
	movl	24(%esp), %edx
	testl	%edx, %edx
	je	L320
L227:
	movl	$LC15, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 4(%ebx)
	testl	$2, %edi
	je	L234
	movl	$LC16, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetAttribLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 8(%ebx)
	movl	$LC17, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetAttribLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 12(%ebx)
	movl	$LC18, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 16(%ebx)
L234:
	testl	$8, %edi
	je	L235
	movl	$LC19, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetAttribLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 20(%ebx)
	movl	$LC20, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetAttribLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 24(%ebx)
	movl	$LC21, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetAttribLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 28(%ebx)
	movl	$LC22, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 32(%ebx)
	movl	$LC23, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 36(%ebx)
	movl	$LC24, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 40(%ebx)
L235:
	testl	$16, %edi
	je	L236
	movl	$LC25, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 44(%ebx)
	movl	$LC26, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 48(%ebx)
	movl	$LC27, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 52(%ebx)
	movl	$LC28, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 56(%ebx)
	movl	$LC29, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 60(%ebx)
L236:
	testl	$32, %edi
	je	L237
	movl	$LC30, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 64(%ebx)
	movl	$LC31, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 68(%ebx)
L237:
	testl	$512, %edi
	je	L238
	movl	$LC32, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 72(%ebx)
L238:
	testl	$64, %edi
	je	L239
	movl	$LC33, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 76(%ebx)
	movl	$LC34, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 80(%ebx)
L239:
	testl	$1024, %edi
	je	L240
	movl	$LC35, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 84(%ebx)
L240:
	testl	$2048, %edi
	je	L241
	movl	$LC36, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 88(%ebx)
L241:
	testl	$4096, %edi
	je	L242
	movl	$LC37, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 92(%ebx)
L242:
	testl	$8192, %edi
	je	L243
	movl	$LC38, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 96(%ebx)
L243:
	testl	$16384, %edi
	je	L244
	movl	$LC39, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 100(%ebx)
L244:
	testl	$32768, %edi
	je	L245
	movl	$LC40, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 104(%ebx)
L245:
	testl	$65536, %edi
	je	L246
	movl	$LC41, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 108(%ebx)
L246:
	testl	$131072, %edi
	je	L247
	movl	$LC42, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 112(%ebx)
L247:
	testl	$262144, %edi
	je	L248
	movl	$LC43, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 116(%ebx)
	movl	$LC44, 4(%esp)
	movl	%esi, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 8400
	subl	$8, %esp
	.cfi_def_cfa_offset 8408
	movl	%eax, 120(%ebx)
L248:
	movl	$0, (%esp)
	movl	%edi, %edx
	movl	$__ZL14prprogramtable.lto_priv.0, %eax
	movl	%ebx, %ecx
	call	_inthash_add
	movl	__ZL13prprogramptrs.lto_priv.0+4, %edx
	movl	__ZL13prprogramptrs.lto_priv.0, %eax
	cmpl	__ZL13prprogramptrs.lto_priv.0+8, %edx
	je	L321
L249:
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
L319:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$6, %eax
	jg	L322
	movl	24(%esp), %eax
	testl	%eax, %eax
	jne	L227
L252:
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
	jg	L323
L230:
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
	jg	L324
L231:
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
	jg	L325
L232:
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
	jg	L326
L233:
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
	jle	L227
	leal	196(%esp), %eax
	movl	$LC14, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$5712, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L227
L320:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$6, %eax
	jle	L318
	movl	%edi, 16(%esp)
	movl	$LC9, 12(%esp)
	movl	$5696, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L318:
	movl	_pr_verbosity, %eax
	testl	%eax, %eax
	jle	L227
	jmp	L252
L321:
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
	jne	L253
	testl	%edi, %edi
	jne	L250
L253:
	movl	%eax, __ZL13prprogramptrs.lto_priv.0
	movl	__ZL13prprogramptrs.lto_priv.0+4, %edx
	movl	%esi, __ZL13prprogramptrs.lto_priv.0+8
	jmp	L249
L322:
	movl	%edi, 16(%esp)
	movl	$LC7, 12(%esp)
	movl	$5694, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L225
L221:
	movl	$124, %eax
	call	__Z13handle_memerri
L323:
	leal	196(%esp), %eax
	movl	$LC10, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$5700, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L230
L326:
	leal	196(%esp), %eax
	movl	$LC13, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$5709, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L233
L325:
	leal	196(%esp), %eax
	movl	$LC12, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$5706, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L232
L324:
	leal	196(%esp), %eax
	movl	$LC11, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$5703, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L231
L250:
	movl	%edi, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE9:
	.p2align 4
	.globl	_polymer_bindmaterial.lto_priv.0
	.def	_polymer_bindmaterial.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_bindmaterial.lto_priv.0:
LFB14:
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
	subl	$176, %esp
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
	je	L330
	movl	8(%ebx), %edi
	movl	%eax, %edx
	orl	$8, %edx
	testl	%edi, %edi
	cmovne	%edx, %eax
L330:
	movl	_pr_artmapping, %edx
	movl	_overridematerial, %edi
	testl	%edx, %edx
	je	L331
	movl	_gltexfiltermode, %edx
	testl	%edx, %edx
	je	L488
L331:
	movl	%eax, %edx
	orl	$288, %edx
	cmpl	$0, 44(%ebx)
	cmovne	%edx, %eax
L334:
	movl	%eax, %edx
	orb	$2, %dh
	cmpl	$0, 56(%ebx)
	cmovne	%edx, %eax
	movl	_r_detailmapping, %edx
	testl	%edx, %edx
	je	L338
	movl	%eax, %edx
	orl	$64, %edx
	cmpl	$0, 60(%ebx)
	cmovne	%edx, %eax
L338:
	movl	%eax, %edx
	orb	$-128, %dl
	cmpl	$0, _pr_specularmapping
	je	L341
	orl	$1152, %eax
	cmpl	$0, 76(%ebx)
	cmovne	%eax, %edx
L341:
	movss	80(%ebx), %xmm0
	ucomiss	LC5, %xmm0
	jp	L342
	jne	L342
	movss	LC4, %xmm0
	ucomiss	84(%ebx), %xmm0
	jp	L342
	jne	L342
	movl	_pr_overridespecular, %eax
	testl	%eax, %eax
	je	L345
	.p2align 4
	.p2align 3
L342:
	orb	$8, %dh
L345:
	testl	%ecx, %ecx
	jne	L346
	movl	88(%ebx), %eax
	testl	%eax, %eax
	jne	L489
	movl	%edx, %eax
	orb	$32, %ah
	cmpl	$0, 24(%ebx)
	cmove	%eax, %edx
L348:
	movl	_r_glowmapping, %eax
	testl	%eax, %eax
	je	L346
	movl	%edx, %eax
	orb	$64, %ah
	cmpl	$0, 92(%ebx)
	cmovne	%eax, %edx
L346:
	testl	%esi, %esi
	je	L352
	movl	-140(%ebp), %eax
	movswl	(%eax,%ecx,2), %eax
	imull	$270, %eax, %eax
	leal	_prlights(%eax), %ecx
	cmpw	$0, _prlights+24(%eax)
	je	L490
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
L352:
	andl	%edi, %edx
	movl	$__ZL14prprogramtable.lto_priv.0, %eax
	movl	%edx, -136(%ebp)
	orl	$1048577, %edx
	movl	%edx, -144(%ebp)
	call	_inthash_find
	movl	%eax, %esi
	cmpl	$-1, %eax
	je	L491
L357:
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
	je	L359
	movl	8(%esi), %eax
	movl	%eax, (%esp)
	call	*_glad_glEnableVertexAttribArray
	movl	12(%esi), %eax
	subl	$4, %esp
	cmpl	$-1, %eax
	je	L360
	movl	%eax, (%esp)
	call	*_glad_glEnableVertexAttribArray
	subl	$4, %esp
L360:
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
	je	L361
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
L361:
	movss	(%ebx), %xmm0
	movss	%xmm0, 4(%esp)
	movl	16(%esi), %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
L359:
	testb	$4, -136(%ebp)
	je	L362
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
	jne	L492
L363:
	movss	_g_glColorCorrection+12, %xmm0
	movss	_g_glColorCorrection, %xmm2
	movss	%xmm0, 16(%esp)
	movss	_g_glColorCorrection+8, %xmm0
	movss	%xmm0, 12(%esp)
	movss	_g_glColorCorrection+4, %xmm0
	movss	%xmm0, 8(%esp)
	movss	LC4, %xmm0
	minss	%xmm0, %xmm2
	movss	%xmm2, 4(%esp)
	movl	4(%esi), %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform4f
	subl	$20, %esp
L366:
	movl	-136(%ebp), %eax
	xorl	%edi, %edi
	andl	$8, %eax
	movl	%eax, -156(%ebp)
	jne	L493
L367:
	movl	-148(%ebp), %eax
	testl	%eax, %eax
	jne	L494
L374:
	testb	$32, -136(%ebp)
	jne	L495
L382:
	testb	$2, -135(%ebp)
	jne	L496
L384:
	testb	$64, -136(%ebp)
	je	L386
	movl	-156(%ebp), %eax
	movss	64(%ebx), %xmm1
	movss	68(%ebx), %xmm0
	testl	%eax, %eax
	jne	L387
	mulss	48(%ebx), %xmm1
	mulss	52(%ebx), %xmm0
L387:
	movss	%xmm1, -76(%ebp)
	leal	33984(%edi), %eax
	movss	%xmm0, -72(%ebp)
	cmpl	_gl+4, %eax
	je	L388
	movl	%eax, _gl+4
	movl	%eax, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L388:
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
L386:
	testb	$-128, -136(%ebp)
	je	L389
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
L389:
	testb	$4, -135(%ebp)
	jne	L497
L390:
	testb	$8, -135(%ebp)
	je	L392
	movl	_pr_overridespecular, %ecx
	movl	_glad_glUniform2fv, %eax
	movl	88(%esi), %edx
	testl	%ecx, %ecx
	jne	L498
	leal	80(%ebx), %ecx
L486:
	movl	%ecx, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	subl	$12, %esp
L392:
	testb	$16, -135(%ebp)
	jne	L499
L395:
	testb	$32, -135(%ebp)
	je	L397
	xorl	%eax, %eax
	cmpl	$1, _r_usenewshading
	setg	%al
	movl	%eax, 4(%esp)
	movl	96(%esi), %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	subl	$8, %esp
L397:
	testb	$64, -135(%ebp)
	jne	L500
L398:
	testb	$8, -134(%ebp)
	je	L400
	movl	_curlight, %ecx
	xorps	%xmm2, %xmm2
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	movl	-140(%ebp), %edx
	movswl	(%edx,%ecx,2), %edx
	imull	$270, %edx, %eax
	movl	%edx, -152(%ebp)
	cvtsi2ssl	_prlights+8(%eax), %xmm2
	leal	_prlights(%eax), %edx
	mulss	LC47, %xmm2
	cvtsi2ssl	_prlights+4(%eax), %xmm0
	movl	%edx, -156(%ebp)
	leal	-76(%ebp), %edx
	cvtsi2ssl	_prlights(%eax), %xmm1
	movl	_curmodelviewmatrix, %eax
	xorps	LC48, %xmm1
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
	movss	LC4, %xmm0
	testb	$4, -134(%ebp)
	jne	L501
L401:
	imull	$270, -152(%ebp), %edx
	xorps	%xmm1, %xmm1
	xorps	%xmm2, %xmm2
	movss	LC6, %xmm3
	cvtsi2ssl	_prlights+16(%edx), %xmm1
	movzbl	_prlights+28(%edx), %eax
	mulss	LC52, %xmm1
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
	jne	L408
	testb	$2, _prlights+38(%edx)
	je	L408
	xorps	LC48, %xmm2
	xorps	LC48, %xmm1
	xorps	LC48, %xmm0
	movss	%xmm2, -76(%ebp)
	movss	%xmm1, -72(%ebp)
	movss	%xmm0, -68(%ebp)
L408:
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
	je	L502
L487:
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
L400:
	cmpl	$33984, _gl+4
	je	L327
	movl	$33984, _gl+4
	movl	$33984, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L327:
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
L362:
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
	jmp	L366
	.p2align 4,,10
	.p2align 3
L492:
	movl	$32779, (%esp)
	call	*_glad_glBlendEquation
	subl	$4, %esp
	jmp	L363
	.p2align 4,,10
	.p2align 3
L490:
	orl	$524288, %edx
	jmp	L352
	.p2align 4,,10
	.p2align 3
L489:
	orb	$16, %dh
	jmp	L348
	.p2align 4,,10
	.p2align 3
L488:
	movl	24(%ebx), %edx
	testl	%edx, %edx
	je	L331
	testb	$1, _globalflags
	jne	L331
	testl	$16, %edi
	je	L331
	orl	$16, %eax
	jmp	L334
	.p2align 4,,10
	.p2align 3
L498:
	movss	_pr_specularpower, %xmm0
	leal	-76(%ebp), %ecx
	movss	%xmm0, -76(%ebp)
	movss	_pr_specularfactor, %xmm0
	movss	%xmm0, -72(%ebp)
	jmp	L486
	.p2align 4,,10
	.p2align 3
L497:
	leal	33984(%edi), %eax
	cmpl	_gl+4, %eax
	je	L391
	movl	%eax, _gl+4
	movl	%eax, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L391:
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
	jmp	L390
	.p2align 4,,10
	.p2align 3
L500:
	leal	33984(%edi), %eax
	cmpl	_gl+4, %eax
	je	L399
	movl	%eax, _gl+4
	movl	%eax, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L399:
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
	jmp	L398
	.p2align 4,,10
	.p2align 3
L499:
	leal	33984(%edi), %eax
	cmpl	_gl+4, %eax
	je	L396
	movl	%eax, _gl+4
	movl	%eax, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L396:
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
	jmp	L395
	.p2align 4,,10
	.p2align 3
L496:
	leal	33984(%edi), %eax
	cmpl	_gl+4, %eax
	je	L385
	movl	%eax, _gl+4
	movl	%eax, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L385:
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
	jmp	L384
	.p2align 4,,10
	.p2align 3
L495:
	leal	33984(%edi), %eax
	cmpl	_gl+4, %eax
	je	L383
	movl	%eax, _gl+4
	movl	%eax, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L383:
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
	jmp	L382
	.p2align 4,,10
	.p2align 3
L494:
	leal	33984(%edi), %eax
	cmpl	_gl+4, %eax
	je	L375
	movl	%eax, _gl+4
	movl	%eax, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L375:
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
	je	L376
	movl	%eax, _gl+4
	movl	%eax, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L376:
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
	je	L377
	movl	%eax, _gl+4
	movl	%eax, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L377:
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
	je	L503
	movss	LC45, %xmm2
	mulss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	movl	%ecx, (%esp)
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm0, %xmm1
	movss	LC4, %xmm0
	cmpnltss	%xmm1, %xmm0
	movss	LC46, %xmm1
	andps	%xmm0, %xmm1
	andnps	%xmm2, %xmm0
	orps	%xmm1, %xmm0
	movss	%xmm0, 4(%esp)
	call	*%edx
	subl	$8, %esp
	jmp	L374
	.p2align 4,,10
	.p2align 3
L493:
	movss	_fglobalposy, %xmm0
	movss	%xmm0, -92(%ebp)
	movss	LC47, %xmm0
	mulss	_fglobalposz, %xmm0
	movss	%xmm0, -88(%ebp)
	movss	_fglobalposx, %xmm0
	xorps	LC48, %xmm0
	movss	%xmm0, -84(%ebp)
	cmpl	$33984, _gl+4
	je	L368
	movl	$33984, _gl+4
	movl	$33984, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L368:
	movl	-152(%ebp), %edx
	xorl	%eax, %eax
	call	__Z25buildgl_bindSamplerObjectii
	movl	8(%ebx), %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	_glad_glUniform3fv, %eax
	movl	32(%esi), %edx
	leal	-92(%ebp), %ecx
	cmpb	$1, 96(%ebx)
	jne	L484
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
L484:
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
	jne	L504
	leal	12(%ebx), %ecx
L485:
	movl	%ecx, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	20(%ebx), %eax
	subl	$12, %esp
	testl	%eax, %eax
	je	L373
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
L373:
	movl	$1, %edi
	jmp	L367
	.p2align 4,,10
	.p2align 3
L491:
	movl	-144(%ebp), %eax
	call	_polymer_compileprogram.lto_priv.0
	movl	%eax, %esi
	jmp	L357
	.p2align 4,,10
	.p2align 3
L502:
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
	jmp	L487
	.p2align 4,,10
	.p2align 3
L501:
	movl	-156(%ebp), %ecx
	movl	$1024, %eax
	xorps	%xmm1, %xmm1
	xorps	%xmm2, %xmm2
	movss	LC51, %xmm4
	movss	%xmm0, -164(%ebp)
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
	movss	%xmm1, -160(%ebp)
	movss	%xmm2, -152(%ebp)
	call	@getangle@8
	xorps	%xmm2, %xmm2
	movl	-140(%ebp), %ecx
	movss	LC51, %xmm4
	addl	$1024, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	cvtsi2ssl	%eax, %xmm2
	movl	_curlight, %eax
	movswl	(%ecx,%eax,2), %eax
	movl	$128, %ecx
	movaps	%xmm2, %xmm5
	imull	$270, %eax, %eax
	divss	%xmm4, %xmm5
	movl	_prlights+12(%eax), %edx
	subl	$100, %edx
	movss	%xmm5, -156(%ebp)
	call	@getangle@8
	xorps	%xmm2, %xmm2
	movss	-84(%ebp), %xmm5
	movss	LC51, %xmm4
	addl	$512, %eax
	movss	-160(%ebp), %xmm1
	movss	-88(%ebp), %xmm6
	andl	$2047, %eax
	subss	-156(%ebp), %xmm6
	movl	-140(%ebp), %ecx
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
	subss	-100(%ebp), %xmm2
	addss	48(%eax), %xmm1
	subss	-108(%ebp), %xmm1
	movss	%xmm3, -128(%ebp)
	movl	_curlight, %eax
	movss	%xmm2, -124(%ebp)
	xorps	%xmm2, %xmm2
	movss	%xmm1, -132(%ebp)
	movswl	(%ecx,%eax,2), %edx
	xorps	%xmm1, %xmm1
	movss	-164(%ebp), %xmm0
	imull	$270, %edx, %edx
	movss	%xmm0, -152(%ebp)
	movswl	_prlights+24(%edx), %eax
	addl	$512, %eax
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
	je	L402
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
	jne	L403
	movl	$_spritemodelview, (%esp)
	call	*_glad_glMultMatrixf
	movss	-148(%ebp), %xmm0
	subl	$4, %esp
L403:
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
	jne	L505
L404:
	testb	$2, -134(%ebp)
	jne	L506
L402:
	movl	_curlight, %ecx
	movl	-140(%ebp), %eax
	movswl	(%eax,%ecx,2), %eax
	movl	%eax, -152(%ebp)
	jmp	L401
	.p2align 4,,10
	.p2align 3
L504:
	movss	_pr_parallaxscale, %xmm0
	leal	-76(%ebp), %ecx
	movss	%xmm0, -76(%ebp)
	movss	_pr_parallaxbias, %xmm0
	movss	%xmm0, -72(%ebp)
	jmp	L485
	.p2align 4,,10
	.p2align 3
L503:
	mulss	LC49, %xmm0
	movl	%ecx, (%esp)
	mulss	%xmm1, %xmm0
	movss	%xmm0, 4(%esp)
	call	*%edx
	subl	$8, %esp
	jmp	L374
	.p2align 4,,10
	.p2align 3
L506:
	leal	33984(%edi), %eax
	cmpl	_gl+4, %eax
	je	L407
	movss	%xmm0, -136(%ebp)
	movl	%eax, _gl+4
	movl	%eax, (%esp)
	call	*_glad_glActiveTexture
	movss	-136(%ebp), %xmm0
	subl	$4, %esp
L407:
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
	jmp	L402
	.p2align 4,,10
	.p2align 3
L505:
	leal	33984(%edi), %eax
	cmpl	_gl+4, %eax
	je	L405
	movl	%eax, _gl+4
	movl	%eax, (%esp)
	call	*_glad_glActiveTexture
	movss	-152(%ebp), %xmm0
	subl	$4, %esp
L405:
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
	jmp	L404
	.cfi_endproc
LFE14:
	.p2align 4
	.globl	_polymer_unbindmaterial.lto_priv.0
	.def	_polymer_unbindmaterial.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_unbindmaterial.lto_priv.0:
LFB19:
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
	je	L528
L509:
	testl	$2, %esi
	je	L510
	movl	12(%ebx), %eax
	cmpl	$-1, %eax
	je	L511
	movl	%eax, (%esp)
	call	*_glad_glDisableVertexAttribArray
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
L511:
	movl	8(%ebx), %eax
	movl	%eax, (%esp)
	call	*_glad_glDisableVertexAttribArray
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
L510:
	testl	$4, %esi
	je	L512
	call	*_glad_glPopAttrib
L512:
	andl	$8, %esi
	je	L513
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
L513:
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
L528:
	.cfi_restore_state
	movl	%esi, %eax
	call	_polymer_compileprogram.lto_priv.0
	movl	%eax, %ebx
	jmp	L509
	.cfi_endproc
LFE19:
	.p2align 4
	.globl	_polymer_drawmdsprite.lto_priv.0
	.def	_polymer_drawmdsprite.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_drawmdsprite.lto_priv.0:
LFB20:
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
	jle	L530
	movzbl	17(%ebx), %eax
L531:
	movzbl	%al, %edi
	movl	-184(%ebp), %eax
	movl	_models, %esi
	movswl	14(%eax), %ebx
	movl	%ebx, %eax
	leal	0(,%ebx,4), %edx
	jmp	L532
	.p2align 6
	.p2align 4,,10
	.p2align 3
L534:
	leal	0(,%eax,4), %edx
	leal	(%edx,%eax), %ecx
	movzbl	_tile2model+17(,%ecx,4), %ecx
	cmpl	%ecx, %edi
	je	L651
L532:
	addl	%edx, %eax
	movswl	_tile2model+4(,%eax,4), %eax
	cmpl	$-1, %eax
	jne	L534
L533:
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
	je	L748
L535:
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
	je	L749
	movl	-184(%ebp), %esi
	xorps	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	movl	48(%edx), %ecx
	movss	LC48, %xmm6
	cvtsi2ssl	44(%edx), %xmm0
	movl	40(%edx), %edx
	addl	%ebx, %eax
	cvtsi2ssl	4(%esi), %xmm1
	addl	8(%esi), %ecx
	addl	(%esi), %edx
	andl	$2047, %eax
	movss	LC56, %xmm5
	movl	$0x00000000, -224(%ebp)
	movl	$0x00000000, -220(%ebp)
	movl	$0x00000000, -216(%ebp)
	addss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	movups	%xmm6, -200(%ebp)
	cvtsi2ssl	%ecx, %xmm0
	movss	%xmm5, -212(%ebp)
	mulss	LC47, %xmm0
	movss	%xmm1, -172(%ebp)
	movss	%xmm0, -180(%ebp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	xorps	%xmm6, %xmm0
	movss	%xmm0, -204(%ebp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm5, %xmm0
L543:
	subss	LC57, %xmm0
	movl	-184(%ebp), %eax
	testb	$32, 12(%eax)
	jne	L750
L544:
	movss	%xmm0, -208(%ebp)
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glPushMatrix
	call	*_glad_glLoadIdentity
	xorps	%xmm3, %xmm3
	movss	_pr_overridemodelscale, %xmm1
	movl	-176(%ebp), %eax
	movss	LC58, %xmm2
	movss	-208(%ebp), %xmm0
	mulss	8(%eax), %xmm2
	ucomiss	%xmm3, %xmm1
	jp	L672
	jne	L672
	movl	-176(%ebp), %eax
	mulss	12(%eax), %xmm2
	movss	%xmm2, -252(%ebp)
L547:
	movl	_maxspritesonscreen, %eax
	movl	_glad_glTranslatef, %ebx
	xorps	-200(%ebp), %xmm0
	movl	-184(%ebp), %ecx
	cmpl	%ecx, _tspriteptr(,%eax,4)
	je	L751
	movss	-204(%ebp), %xmm5
	movss	%xmm0, -208(%ebp)
	movss	%xmm5, 8(%esp)
	movss	-180(%ebp), %xmm5
	movss	%xmm5, 4(%esp)
	movss	-172(%ebp), %xmm6
	movss	%xmm6, (%esp)
	call	*%ebx
	movss	LC4, %xmm6
	subl	$12, %esp
	movl	$0x00000000, 12(%esp)
	movss	%xmm6, -264(%ebp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm6, 8(%esp)
	movss	-208(%ebp), %xmm0
	movss	%xmm0, (%esp)
	call	*_glad_glRotatef
	subl	$16, %esp
L549:
	movl	-184(%ebp), %ebx
	testb	$32, 12(%ebx)
	je	L550
	movswl	14(%ebx), %eax
	movzbl	21(%ebx), %edx
	xorps	%xmm0, %xmm0
	movswl	_tilesiz+2(,%eax,4), %eax
	movl	$0x00000000, 4(%esp)
	movl	$0x00000000, (%esp)
	imull	%edx, %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	LC67, %xmm0
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
L551:
	movl	-184(%ebp), %eax
	movzwl	12(%eax), %eax
	movw	%ax, -172(%ebp)
	andw	$160, %ax
	cmpw	$128, %ax
	je	L752
L552:
	movl	-176(%ebp), %eax
	movl	-184(%ebp), %ebx
	xorps	%xmm1, %xmm1
	movss	LC63, %xmm0
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
	jne	L553
	movss	LC64, %xmm0
	testb	$4, %al
	je	L555
L554:
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
L556:
	shrw	$3, %ax
	shrw	$2, %dx
	andl	$1, %eax
	xorl	$1, %edx
	xorl	$1, %eax
	cmpb	%al, %dl
	je	L555
	cmpl	$1028, _culledface
	movl	$1029, %edx
	movl	$1028, %eax
	cmove	%edx, %eax
	movl	%eax, _culledface
	movl	%eax, (%esp)
	call	*_glad_glCullFace
	subl	$4, %esp
L555:
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
	movss	LC63, %xmm0
	subl	$12, %esp
	mulss	16(%eax), %xmm0
	movl	$0x00000000, 4(%esp)
	movl	$0x00000000, (%esp)
	movss	%xmm0, 8(%esp)
	call	*_glad_glTranslatef
	movswl	30(%ebx), %eax
	subl	$12, %esp
	cmpw	$16383, %ax
	jg	L558
	sall	$6, %eax
	addl	_spriteext, %eax
	movswl	24(%eax), %ecx
	movswl	26(%eax), %edx
	movl	%ecx, %esi
	orw	%dx, %si
	je	L558
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
	mulss	LC50, %xmm0
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
L558:
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
	fdivrl	LC65
	movl	$_mdspritespace, -172(%ebp)
	fstps	-180(%ebp)
	.p2align 4
	.p2align 3
L559:
	movl	%ecx, %eax
L563:
	addl	$1, %eax
	movl	%eax, -92(%ebp,%eax,4)
	cmpl	$3, %eax
	jne	L563
	testl	%esi, %esi
	je	L561
	movl	$0, -168(%ebp)
	cmpl	$1, %esi
	je	L561
L753:
	movl	$1, -164(%ebp)
	cmpl	$3, %esi
	jne	L657
	movl	$2, -160(%ebp)
L564:
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
	je	L566
	xorps	-200(%ebp), %xmm0
L566:
	mulss	-180(%ebp), %xmm0
	movl	%esi, %eax
	movl	-172(%ebp), %ebx
	addl	$1, %esi
	sall	$4, %eax
	movss	%xmm0, (%ebx,%eax)
	cmpl	$4, %esi
	je	L567
	testl	%ecx, %ecx
	je	L559
	movl	$0, -88(%ebp)
	cmpl	$1, %ecx
	je	L559
	movl	$1, -84(%ebp)
	cmpl	$3, %ecx
	jne	L656
	movl	$2, -80(%ebp)
	movl	$0, -168(%ebp)
	cmpl	$1, %esi
	jne	L753
	.p2align 4
	.p2align 3
L561:
	movl	%esi, %eax
L565:
	addl	$1, %eax
	movl	%eax, -172(%ebp,%eax,4)
	cmpl	$3, %eax
	jne	L565
	jmp	L564
L530:
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movzbl	17(%eax), %eax
	jmp	L531
L750:
	subss	LC57, %xmm0
	jmp	L544
L672:
	mulss	%xmm2, %xmm1
	movss	%xmm1, -252(%ebp)
	jmp	L547
	.p2align 4,,10
	.p2align 3
L567:
	addl	$1, %ecx
	cmpl	$4, %ecx
	je	L754
	addl	$4, -172(%ebp)
	movl	$0, -88(%ebp)
	cmpl	$1, %ecx
	je	L740
	movl	$1, -84(%ebp)
	cmpl	$3, %ecx
	jne	L655
	movl	$2, -80(%ebp)
	xorl	%esi, %esi
	jmp	L561
	.p2align 4,,10
	.p2align 3
L657:
	movl	$2, %esi
	jmp	L561
L656:
	movl	$2, %ecx
	jmp	L559
L655:
	movl	$2, %ecx
L740:
	xorl	%esi, %esi
	jmp	L559
L754:
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
	movss	LC0, %xmm0
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
	je	L573
	movzbl	_curbasepal, %ecx
	movl	_prhighpalookups(,%ecx,4), %ecx
	testl	%ecx, %ecx
	je	L573
	movl	(%ecx,%edx,8), %esi
	testl	%esi, %esi
	je	L573
	movl	4(%ecx,%edx,8), %esi
	testl	%esi, %esi
	jne	L658
L573:
	testb	$-60, _hictinting(,%edx,8)
	jne	L579
	movl	-176(%ebp), %ecx
	testb	$1, 28(%ecx)
	je	L755
	movl	$1, _globalnoeffect
L579:
	movss	LC6, %xmm1
	movl	%eax, %ecx
L576:
	movzbl	_hictinting+2044, %esi
	cmpw	$-1, _hictinting+2042
	je	L756
L580:
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
L577:
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
	je	L581
	testb	$2, %ah
	jne	L582
	movb	$-86, _mdspritematerial+75
	movss	LC53, %xmm0
L581:
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
	jne	L583
	movl	-184(%ebp), %ebx
	movb	$3, _mdspritematerial+72
	movzbl	30(%ebx), %eax
	movb	%al, _mdspritematerial+73
	movzbl	31(%ebx), %eax
	movb	$-1, _mdspritematerial+75
	movb	%al, _mdspritematerial+74
L583:
	movl	_pr_gpusmoothing, %ebx
	testl	%ebx, %ebx
	je	L584
	movl	-176(%ebp), %eax
	movss	60(%eax), %xmm0
	movss	%xmm0, _mdspritematerial
L584:
	movl	_lightcount, %eax
	movb	$1, _mdspritematerial+96
	movl	%eax, -172(%ebp)
	testl	%eax, %eax
	je	L585
	movl	_depth, %eax
	testl	%eax, %eax
	je	L586
	movl	_mirrors-8(,%eax,8), %ecx
	testl	%ecx, %ecx
	je	L585
L586:
	movl	_pr_maxlightpriority, %ebx
	testl	%ebx, %ebx
	jle	L585
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
L587:
	testl	%eax, %eax
	jle	L599
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
	divss	LC66, %xmm0
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
L600:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	cmpb	$31, %dl
	ja	L593
L735:
	movb	%dl, -200(%ebp)
	jmp	L742
	.p2align 5
	.p2align 4,,10
	.p2align 3
L588:
	addl	$1, %eax
L742:
	imull	$270, %eax, %edx
	testb	$1, _prlights+254(%edx)
	je	L588
	imull	$270, %eax, %edx
	leal	1(%eax), %esi
	addl	$1, %ecx
	leal	_prlights(%edx), %ebx
	movl	%ebx, -180(%ebp)
	movl	%edi, %ebx
	cmpb	%bl, _prlights+31(%edx)
	jne	L746
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
	mulss	LC50, %xmm4
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
	divss	LC66, %xmm3
	subss	-256(%ebp), %xmm1
	addss	-252(%ebp), %xmm3
	mulss	%xmm2, %xmm2
	mulss	%xmm1, %xmm1
	mulss	%xmm3, %xmm3
	addss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	comiss	%xmm1, %xmm3
	jb	L746
	movzbl	-200(%ebp), %ebx
	movl	%ebx, %edx
	movw	%ax, -88(%ebp,%ebx,2)
	addl	$1, %edx
	cmpl	%ecx, -172(%ebp)
	je	L593
	movl	%esi, %eax
	cmpb	$31, %dl
	jbe	L735
L593:
	addl	$1, %edi
	movl	%edi, %eax
	movzbl	%al, %eax
	cmpl	%eax, -272(%ebp)
	jg	L600
L763:
	movl	-176(%ebp), %eax
	movb	%dl, -216(%ebp)
	movl	-276(%ebp), %edi
	movl	164(%eax), %edx
	testl	%edx, %edx
	jg	L757
L602:
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
	je	L649
	cmpl	$1028, _culledface
	movl	$1029, %edx
	movl	$1028, %eax
	cmove	%edx, %eax
	movl	%eax, _culledface
	movl	%eax, (%esp)
	call	*_glad_glCullFace
	subl	$4, %esp
L649:
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
L599:
	.cfi_restore_state
	addb	$1, -180(%ebp)
	movzbl	-180(%ebp), %edx
	cmpl	%edx, %ebx
	jg	L587
L585:
	movl	-176(%ebp), %eax
	movb	$0, -216(%ebp)
	movl	164(%eax), %edx
	testl	%edx, %edx
	jle	L602
L757:
	movl	$0, -172(%ebp)
	.p2align 4
	.p2align 3
L648:
	movl	-176(%ebp), %ebx
	movl	-184(%ebp), %ecx
	movl	196(%ebx), %eax
	movl	68(%ebx), %ebx
	movl	%eax, -212(%ebp)
	movzbl	17(%ecx), %eax
	testl	%ebx, %ebx
	je	L662
	movb	$0, -204(%ebp)
	movl	%eax, %edx
	movb	%al, -208(%ebp)
	jmp	L612
	.p2align 5
	.p2align 4,,10
	.p2align 3
L605:
	movl	144(%ebx), %ebx
	testl	%ebx, %ebx
	je	L738
L758:
	movzbl	17(%ecx), %edx
L612:
	cmpb	%dl, (%ebx)
	jne	L605
	movswl	14(%ecx), %esi
	movl	4(%ebx), %eax
	movl	%esi, -200(%ebp)
	leal	0(,%esi,4), %edx
	movl	%eax, -180(%ebp)
	movl	%esi, %eax
	jmp	L606
	.p2align 6
	.p2align 4,,10
	.p2align 3
L608:
	leal	0(,%eax,4), %edx
	leal	(%edx,%eax), %esi
	movzbl	_tile2model+17(,%esi,4), %esi
	cmpl	%esi, %edi
	je	L663
L606:
	addl	%edx, %eax
	movswl	_tile2model+4(,%eax,4), %eax
	cmpl	$-1, %eax
	jne	L608
	movl	-200(%ebp), %esi
L607:
	leal	(%esi,%esi,4), %eax
	movsbl	_tile2model+16(,%eax,4), %eax
	cmpl	%eax, -180(%ebp)
	jne	L605
	movl	-172(%ebp), %eax
	cmpl	%eax, 8(%ebx)
	jne	L605
	movss	152(%ebx), %xmm0
	ucomiss	-264(%ebp), %xmm0
	jp	L673
	je	L610
L673:
	movss	%xmm0, _mdspritematerial+80
L610:
	movss	156(%ebx), %xmm0
	movl	144(%ebx), %ebx
	movb	$1, -204(%ebp)
	movss	%xmm0, _mdspritematerial+84
	testl	%ebx, %ebx
	jne	L758
	.p2align 4
	.p2align 3
L738:
	movzbl	-208(%ebp), %eax
L603:
	movzbl	_curbasepal, %edx
	testb	%dl, %dl
	sete	%cl
	testb	%cl, -204(%ebp)
	jne	L674
	cmpb	$0, -265(%ebp)
	je	L674
	movl	-184(%ebp), %eax
	xorl	%esi, %esi
	movzbl	17(%eax), %ecx
	movl	_prhighpalookups(,%edx,4), %eax
	movl	4(%eax,%ecx,8), %eax
	movl	%eax, _mdspritematerial+56
L615:
	movl	-184(%ebp), %eax
	movswl	14(%eax), %ebx
	movl	%ebx, %eax
	leal	0(,%ebx,4), %edx
	jmp	L616
	.p2align 6
	.p2align 4,,10
	.p2align 3
L618:
	leal	0(,%eax,4), %edx
	leal	(%edx,%eax), %ecx
	movzbl	_tile2model+17(,%ecx,4), %ecx
	cmpl	%ecx, %edi
	je	L664
L616:
	addl	%edx, %eax
	movswl	_tile2model+4(,%eax,4), %eax
	cmpl	$-1, %eax
	jne	L618
L617:
	leal	(%ebx,%ebx,4), %eax
	movl	-172(%ebp), %ebx
	movl	%esi, %ecx
	movsbl	_tile2model+16(,%eax,4), %edx
	movl	%ebx, (%esp)
	movl	-176(%ebp), %eax
	call	_mdloadskin
	movl	%eax, _mdspritematerial+44
	testl	%eax, %eax
	jne	L759
L619:
	movl	-176(%ebp), %ebx
	addl	$1, -172(%ebp)
	movl	-172(%ebp), %eax
	cmpl	%eax, 164(%ebx)
	jg	L648
	jmp	L602
	.p2align 4,,10
	.p2align 3
L746:
	cmpl	%ecx, -172(%ebp)
	je	L760
	movl	%esi, %eax
	jmp	L742
	.p2align 4,,10
	.p2align 3
L663:
	movl	%eax, %esi
	jmp	L607
	.p2align 4,,10
	.p2align 3
L674:
	movzbl	%al, %esi
	jmp	L615
	.p2align 4,,10
	.p2align 3
L664:
	movl	%eax, %ebx
	jmp	L617
	.p2align 4,,10
	.p2align 3
L759:
	movl	-212(%ebp), %esi
	movl	%ebx, %eax
	sall	$7, %eax
	addl	%eax, %esi
	testb	$1, -266(%ebp)
	je	L761
L620:
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
	je	L645
	imull	40(%ecx), %edx
	imull	$60, %edx, %eax
	movl	%eax, _mdspritematerial+4
L645:
	movl	-176(%ebp), %eax
	movl	220(%eax), %eax
	movl	(%eax,%ebx), %edx
	movl	$34963, %eax
	call	__Z18buildgl_bindBufferjj
	movl	%edi, -180(%ebp)
	movzbl	-216(%ebp), %ebx
	movl	$0, _curlight
L647:
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
	jg	L762
L646:
	movl	$34963, %eax
	movl	-180(%ebp), %edi
	call	__Z18buildgl_bindBufferjj.constprop.0
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj.constprop.0
	movl	$32885, (%esp)
	call	*_glad_glDisableClientState
	subl	$4, %esp
	jmp	L619
	.p2align 4,,10
	.p2align 3
L762:
	cmpl	_pr_maxlightpasses, %eax
	jl	L647
	jmp	L646
L760:
	addl	$1, %edi
	movzbl	-200(%ebp), %edx
	movl	%edi, %eax
	movzbl	%al, %eax
	cmpl	%eax, -272(%ebp)
	jg	L600
	jmp	L763
L662:
	movb	$0, -204(%ebp)
	jmp	L603
L761:
	movl	-184(%ebp), %eax
	movswl	14(%eax), %ebx
	movl	%ebx, %eax
	leal	0(,%ebx,4), %edx
	jmp	L621
	.p2align 6
	.p2align 4,,10
	.p2align 3
L623:
	leal	0(,%eax,4), %edx
	leal	(%edx,%eax), %ecx
	movzbl	_tile2model+17(,%ecx,4), %ecx
	cmpl	%ecx, %edi
	je	L665
L621:
	addl	%edx, %eax
	movswl	_tile2model+4(,%eax,4), %eax
	cmpl	$-1, %eax
	jne	L623
L622:
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
	je	L624
	movl	%esi, -204(%ebp)
	jmp	L629
	.p2align 4
	.p2align 4,,10
	.p2align 3
L625:
	movl	144(%ebx), %ebx
	testl	%ebx, %ebx
	je	L764
L629:
	cmpb	$-1, (%ebx)
	jne	L625
	movl	4(%ebx), %eax
	movl	%ecx, -200(%ebp)
	leal	0(,%ecx,4), %edx
	movl	%eax, -180(%ebp)
	movl	%ecx, %eax
	jmp	L626
	.p2align 6
	.p2align 4,,10
	.p2align 3
L628:
	leal	0(,%eax,4), %edx
	leal	(%edx,%eax), %esi
	movzbl	_tile2model+17(,%esi,4), %esi
	cmpl	%esi, %edi
	je	L666
L626:
	addl	%edx, %eax
	movswl	_tile2model+4(,%eax,4), %eax
	cmpl	$-1, %eax
	jne	L628
	movl	-200(%ebp), %esi
L627:
	leal	(%esi,%esi,4), %eax
	movsbl	_tile2model+16(,%eax,4), %eax
	cmpl	%eax, -180(%ebp)
	jne	L625
	movl	-172(%ebp), %eax
	cmpl	%eax, 8(%ebx)
	jne	L625
	movss	148(%ebx), %xmm0
	movl	-184(%ebp), %eax
	movl	144(%ebx), %ebx
	movss	%xmm0, _mdspritematerial+68
	movss	%xmm0, _mdspritematerial+64
	movswl	14(%eax), %ecx
	testl	%ebx, %ebx
	jne	L629
L764:
	movl	-204(%ebp), %esi
L624:
	movl	%ecx, %ebx
	movl	%ecx, %eax
	leal	0(,%ecx,4), %edx
	jmp	L630
	.p2align 6
	.p2align 4,,10
	.p2align 3
L632:
	leal	0(,%eax,4), %edx
	leal	(%edx,%eax), %ecx
	movzbl	_tile2model+17(,%ecx,4), %ecx
	cmpl	%ecx, %edi
	je	L667
L630:
	addl	%edx, %eax
	movswl	_tile2model+4(,%eax,4), %eax
	cmpl	$-1, %eax
	jne	L632
L631:
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
	jmp	L633
	.p2align 6
	.p2align 4,,10
	.p2align 3
L635:
	leal	0(,%eax,4), %edx
	leal	(%edx,%eax), %ecx
	movzbl	_tile2model+17(,%ecx,4), %ecx
	cmpl	%ecx, %edi
	je	L668
L633:
	addl	%edx, %eax
	movswl	_tile2model+4(,%eax,4), %eax
	cmpl	$-1, %eax
	jne	L635
L634:
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
	je	L636
	movl	%esi, -204(%ebp)
	jmp	L641
	.p2align 4
	.p2align 4,,10
	.p2align 3
L637:
	movl	144(%ebx), %ebx
	testl	%ebx, %ebx
	je	L765
L641:
	cmpb	$-4, (%ebx)
	jne	L637
	movl	4(%ebx), %eax
	movl	%ecx, -200(%ebp)
	leal	0(,%ecx,4), %edx
	movl	%eax, -180(%ebp)
	movl	%ecx, %eax
	jmp	L638
	.p2align 6
	.p2align 4,,10
	.p2align 3
L640:
	leal	0(,%eax,4), %edx
	leal	(%edx,%eax), %esi
	movzbl	_tile2model+17(,%esi,4), %esi
	cmpl	%esi, %edi
	je	L669
L638:
	addl	%edx, %eax
	movswl	_tile2model+4(,%eax,4), %eax
	cmpl	$-1, %eax
	jne	L640
	movl	-200(%ebp), %esi
L639:
	leal	(%esi,%esi,4), %eax
	movsbl	_tile2model+16(,%eax,4), %eax
	cmpl	%eax, -180(%ebp)
	jne	L637
	movl	-172(%ebp), %eax
	cmpl	%eax, 8(%ebx)
	jne	L637
	movss	152(%ebx), %xmm0
	movl	-184(%ebp), %eax
	movss	%xmm0, _mdspritematerial+12
	movss	156(%ebx), %xmm0
	movl	144(%ebx), %ebx
	movss	%xmm0, _mdspritematerial+16
	movswl	14(%eax), %ecx
	testl	%ebx, %ebx
	jne	L641
L765:
	movl	-204(%ebp), %esi
L636:
	movl	%ecx, %ebx
	movl	%ecx, %eax
	leal	0(,%ecx,4), %edx
	jmp	L642
	.p2align 6
	.p2align 4,,10
	.p2align 3
L644:
	leal	0(,%eax,4), %edx
	leal	(%edx,%eax), %ecx
	movzbl	_tile2model+17(,%ecx,4), %ecx
	cmpl	%ecx, %edi
	je	L670
L642:
	addl	%edx, %eax
	movswl	_tile2model+4(,%eax,4), %eax
	cmpl	$-1, %eax
	jne	L644
L643:
	leal	(%ebx,%ebx,4), %eax
	movl	$254, %ecx
	movsbl	_tile2model+16(,%eax,4), %edx
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	movl	-176(%ebp), %eax
	call	_mdloadskin
	movl	%eax, _mdspritematerial+92
	jmp	L620
L666:
	movl	%eax, %esi
	jmp	L627
L669:
	movl	%eax, %esi
	jmp	L639
L550:
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 8(%esp)
	movss	-264(%ebp), %xmm6
	movl	$0xc2b40000, (%esp)
	movss	%xmm6, 4(%esp)
	call	*_glad_glRotatef
	subl	$16, %esp
	jmp	L551
L651:
	movl	%eax, %ebx
	jmp	L533
L553:
	movl	-184(%ebp), %ebx
	xorps	%xmm0, %xmm0
	movswl	14(%ebx), %eax
	movzbl	21(%ebx), %edx
	movswl	_tilesiz+2(,%eax,4), %eax
	movl	$0x00000000, 4(%esp)
	movl	$0x00000000, (%esp)
	imull	%edx, %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	LC58, %xmm0
	movss	%xmm0, 8(%esp)
	call	*_glad_glTranslatef
	movss	LC64, %xmm0
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
	je	L556
	jmp	L554
L749:
	movss	_fglobalposy, %xmm6
	movss	4(%esi), %xmm0
	addl	%ebx, %eax
	movss	_fglobalposz, %xmm3
	movss	LC47, %xmm2
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
	movss	LC48, %xmm5
	mulss	%xmm2, %xmm0
	movups	%xmm5, -200(%ebp)
	xorps	%xmm1, %xmm5
	subss	(%esi), %xmm1
	movss	%xmm5, -204(%ebp)
	movss	LC56, %xmm5
	movss	%xmm1, -224(%ebp)
	movss	%xmm5, -212(%ebp)
	movss	%xmm0, -220(%ebp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	LC55, %xmm0
	mulss	%xmm5, %xmm0
	jmp	L543
L751:
	movl	_qglobalang, %eax
	xorps	%xmm1, %xmm1
	movss	-212(%ebp), %xmm2
	movss	%xmm0, -240(%ebp)
	andl	$134217727, %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	LC55, %xmm1
	mulss	%xmm1, %xmm2
	mulss	LC59, %xmm1
	subss	LC57, %xmm2
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
	movss	LC60, %xmm1
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
	movss	LC4, %xmm6
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
	jmp	L549
L670:
	movl	%eax, %ebx
	jmp	L643
L752:
	movl	-184(%ebp), %ebx
	xorps	%xmm0, %xmm0
	movswl	14(%ebx), %eax
	movzbl	21(%ebx), %edx
	movswl	_tilesiz+2(,%eax,4), %eax
	movl	$0x00000000, 4(%esp)
	movl	$0x00000000, (%esp)
	imull	%edx, %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	LC67, %xmm0
	movss	%xmm0, 8(%esp)
	call	*_glad_glTranslatef
	subl	$12, %esp
	jmp	L552
L582:
	movb	$85, _mdspritematerial+75
	movss	LC54, %xmm0
	jmp	L581
L665:
	movl	%eax, %ebx
	jmp	L622
L667:
	movl	%eax, %ebx
	jmp	L631
L668:
	movl	%eax, %ebx
	jmp	L634
L658:
	movb	$1, -265(%ebp)
	movl	%eax, %ecx
	movss	LC6, %xmm1
	jmp	L577
L755:
	movzbl	%al, %eax
	xorps	%xmm3, %xmm3
	xorps	%xmm2, %xmm2
	movss	LC6, %xmm1
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
	jmp	L576
L748:
	movl	-176(%ebp), %esi
	movl	164(%esi), %eax
	leal	0(,%eax,4), %ebx
	movl	%eax, -172(%ebp)
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L729
	movl	%eax, 220(%esi)
	movl	164(%esi), %eax
	leal	0(,%eax,4), %ebx
	movl	%eax, -172(%ebp)
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L729
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
	je	L729
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
	jle	L535
	movl	%edi, -172(%ebp)
	movl	-176(%ebp), %edi
L541:
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
	jl	L541
	movl	-172(%ebp), %edi
	jmp	L535
L756:
	movl	%esi, %edx
	movb	$0, -265(%ebp)
	cmpb	$-1, %dl
	jne	L580
	jmp	L577
L729:
	movl	%ebx, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE20:
	.p2align 4
	.globl	_polymer_removelight.lto_priv.0
	.def	_polymer_removelight.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_removelight.lto_priv.0:
LFB23:
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
	je	L767
	movl	%ebx, 12(%esp)
	movl	%esi, 16(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	%edi, %esi
	.p2align 4
	.p2align 3
L771:
	movl	(%eax), %ebx
	movzwl	248(%ebx), %edx
	leal	-1(%edx), %eax
	testl	%edx, %edx
	jne	L770
	jmp	L768
	.p2align 4
	.p2align 4,,10
	.p2align 3
L769:
	subl	$1, %eax
	jb	L768
L770:
	cmpw	184(%ebx,%eax,2), %si
	jne	L769
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
L768:
	movl	262(%ebp), %eax
	movl	4(%eax), %edx
	movl	%edx, 262(%ebp)
	movl	__ZL6plpool.lto_priv.0, %edx
	movl	%eax, __ZL6plpool.lto_priv.0
	movl	%edx, 4(%eax)
	movl	$0, (%eax)
	movl	262(%ebp), %eax
	testl	%eax, %eax
	jne	L771
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	16(%esp), %esi
	.cfi_restore 6
L767:
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
LFE23:
	.p2align 4
	.globl	_polymer_addplanelight.lto_priv.0
	.def	_polymer_addplanelight.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_addplanelight.lto_priv.0:
LFB24:
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
	jne	L782
	movswl	%cx, %esi
	xorl	%edi, %edi
L783:
	addl	$1, %edx
	movw	%cx, 184(%ebx,%edi,2)
	movw	%dx, 248(%ebx)
L786:
	imull	$270, %esi, %eax
	movl	_prlights+262(%eax), %edi
	testl	%edi, %edi
	je	L791
	movl	%edi, %eax
	jmp	L792
	.p2align 4
	.p2align 4,,10
	.p2align 3
L805:
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L791
L792:
	cmpl	%ebx, (%eax)
	jne	L805
L781:
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
L782:
	.cfi_restore_state
	cmpw	$31, %dx
	je	L781
	movl	%ebp, 28(%esp)
	.cfi_offset 5, -8
	movzwl	%dx, %ebp
	leal	(%eax,%ebp,2), %esi
	jmp	L787
	.p2align 4
	.p2align 4,,10
	.p2align 3
L785:
	addl	$2, %eax
	cmpl	%eax, %esi
	je	L806
L787:
	cmpw	%cx, 184(%eax)
	jne	L785
	movl	28(%esp), %ebp
	.cfi_restore 5
	movswl	%cx, %esi
	jmp	L786
	.p2align 4,,10
	.p2align 3
L791:
	movl	__ZL6plpool.lto_priv.0, %eax
	testl	%eax, %eax
	je	L807
	imull	$270, %esi, %edx
	movl	%eax, _prlights+262(%edx)
	movl	4(%eax), %edx
	movl	%edx, __ZL6plpool.lto_priv.0
	movl	%edi, 4(%eax)
L795:
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
L806:
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
L788:
	movswl	184(%ebx,%edi,2), %eax
	imull	$270, %eax, %eax
	cmpb	%dl, _prlights+31(%eax)
	jnb	L789
	addl	$1, %edi
	cmpl	%edi, %ebp
	jne	L788
L789:
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
	jmp	L783
L807:
	movl	$8, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	testl	%eax, %eax
	je	L794
	imull	$270, %esi, %edx
	movl	%eax, _prlights+262(%edx)
	movl	%edi, 4(%eax)
	jmp	L795
L794:
	movl	$8, %eax
	movl	%ebp, 28(%esp)
	.cfi_offset 5, -8
	call	__Z13handle_memerri
	.cfi_endproc
LFE24:
	.p2align 4
	.globl	_polymer_planeinlight.isra.0
	.def	_polymer_planeinlight.isra.0;	.scl	2;	.type	32;	.endef
_polymer_planeinlight.isra.0:
LFB26:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$36, %esp
	movl	%eax, 4(%esp)
	testl	%edx, %edx
	je	L822
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	movl	%edx, %esi
	movl	%ebx, -12(%ebp)
	movl	%edi, -4(%ebp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	cmpw	$0, 24(%ecx)
	je	L810
	leal	-24(%eax), %edi
	leal	154(%ecx), %eax
	xorps	%xmm5, %xmm5
	movl	%eax, 4(%esp)
	leal	(%edx,%edx,2), %eax
	leal	234(%ecx), %ebx
	leal	(%edi,%eax,8), %eax
	movl	%eax, 8(%esp)
L813:
	movss	(%ebx), %xmm4
	movss	4(%ebx), %xmm3
	leal	-1(%esi), %edx
	movss	8(%ebx), %xmm2
	movss	12(%ebx), %xmm1
	movl	8(%esp), %eax
	.p2align 6
	.p2align 4
	.p2align 3
L811:
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
	jne	L811
	cmpl	$-1, %edx
	je	L819
	subl	$16, %ebx
	cmpl	%ebx, 4(%esp)
	jne	L813
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
L810:
	.cfi_restore_state
	xorps	%xmm0, %xmm0
	xorps	%xmm3, %xmm3
	xorl	%edi, %edi
	cvtsi2ssl	4(%ecx), %xmm0
	cvtsi2ssl	16(%ecx), %xmm3
	movss	%xmm0, 12(%esp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	8(%ecx), %xmm0
	mulss	LC47, %xmm0
	movss	%xmm0, 16(%esp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	(%ecx), %xmm0
	xorps	LC48, %xmm0
	movss	%xmm0, 20(%esp)
L820:
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
L818:
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
	jg	L818
	movl	(%esp), %edi
	cmpl	8(%esp), %esi
	je	L819
	cmpl	%ebx, %esi
	je	L819
	addl	$4, %edi
	cmpl	$12, %edi
	jne	L820
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
L822:
	.cfi_def_cfa 5, 8
	.cfi_offset 5, -8
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L819:
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
LFE26:
	.p2align 4
	.globl	_polymer_processspotlight.lto_priv.0
	.def	_polymer_processspotlight.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_processspotlight.lto_priv.0:
LFB29:
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
	ja	L831
	movl	$90, 12(%ebx)
	movl	$-10, %edx
L832:
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
	mulss	LC56, %xmm0
	cvtsi2ssl	8(%ebx), %xmm4
	cvtsi2ssl	%eax, %xmm5
	mulss	LC56, %xmm5
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
	mulss	LC56, %xmm6
	movss	%xmm6, -20(%ebp)
	movl	$5889, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glPushMatrix
	call	*_glad_glLoadIdentity
	xorps	%xmm1, %xmm1
	movss	-28(%ebp), %xmm0
	movss	LC52, %xmm3
	movss	LC69, %xmm2
	cvtsi2ssl	16(%ebx), %xmm1
	addss	%xmm0, %xmm0
	mulss	%xmm3, %xmm1
	movss	%xmm1, (%esp)
	movss	LC4, %xmm1
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
	movss	LC52, %xmm3
	subl	$16, %esp
	movss	%xmm3, 8(%esp)
	movss	%xmm3, 4(%esp)
	movss	%xmm3, (%esp)
	call	*_glad_glScalef
	movss	-32(%ebp), %xmm7
	subl	$12, %esp
	movss	%xmm7, 8(%esp)
	movss	-36(%ebp), %xmm4
	mulss	LC50, %xmm4
	movss	%xmm4, 4(%esp)
	movss	-16(%ebp), %xmm0
	xorps	LC48, %xmm0
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
L831:
	.cfi_restore_state
	leal	-101(%eax), %edx
	cmpl	$8, %edx
	ja	L835
	movl	$110, 12(%ebx)
	movl	$10, %edx
	jmp	L832
L835:
	leal	-100(%eax), %edx
	jmp	L832
	.cfi_endproc
LFE29:
	.section .rdata,"dr"
	.align 4
LC70:
	.ascii "FBO #%d initialization failed.\0"
	.text
	.p2align 4
	.globl	_polymer_initrendertargets.lto_priv.0
	.def	_polymer_initrendertargets.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_initrendertargets.lto_priv.0:
LFB30:
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
	jne	L837
	movl	_prrts, %eax
	testl	%eax, %eax
	je	L838
	movl	__ZZ25polymer_initrendertargetsE6ocount, %ebx
	testl	%ebx, %ebx
	jle	L839
	.p2align 4
	.p2align 3
L841:
	leal	(%esi,%esi,2), %ebx
	sall	$3, %ebx
	addl	%ebx, %eax
	movl	4(%eax), %ecx
	testl	%ecx, %ecx
	je	L840
	addl	$4, %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteTextures
	movl	_prrts, %eax
	subl	$8, %esp
	addl	%ebx, %eax
	movl	$0, 4(%eax)
L840:
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
	jg	L841
L839:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, _prrts
L838:
	movl	$0, __ZZ25polymer_initrendertargetsE6ocount
L836:
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
L837:
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
	je	L843
	movl	%edi, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	%ebx, _prrts
	testl	%esi, %esi
	jle	L836
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
L845:
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
	je	L848
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	movl	(%eax), %eax
	movl	$36064, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$36160, (%esp)
	call	*_glad_glFramebufferTexture2DEXT
	subl	$20, %esp
L849:
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
	je	L850
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jg	L863
L850:
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
	je	L836
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
	je	L845
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
	jmp	L845
	.p2align 4,,10
	.p2align 3
L848:
	movl	$0, (%esp)
	call	*_glad_glDrawBuffer
	subl	$4, %esp
	movl	$0, (%esp)
	call	*_glad_glReadBuffer
	subl	$4, %esp
	jmp	L849
	.p2align 4,,10
	.p2align 3
L863:
	movl	-20(%ebp), %eax
	movl	$LC70, 12(%esp)
	movl	$6374, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC8, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L850
	.p2align 4,,10
	.p2align 3
L843:
	movl	$24, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE30:
	.section .rdata,"dr"
	.align 4
LC75:
	.ascii "Can't update uninitialized sector %i.\0"
	.align 4
LC80:
	.ascii "Tessellating floor of sector %i\0"
	.align 4
LC81:
	.ascii "sector %d is a very sad sector\0"
	.align 4
LC82:
	.ascii "Tessellated floor of sector %i.\0"
LC83:
	.ascii "Updated sector %i.\0"
	.text
	.p2align 4
	.globl	_polymer_updatesector.part.0.isra.0
	.def	_polymer_updatesector.part.0.isra.0;	.scl	2;	.type	32;	.endef
_polymer_updatesector.part.0.isra.0:
LFB32:
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
	je	L1116
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
L869:
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
	je	L867
	xorps	%xmm0, %xmm0
	movl	256(%edi), %eax
	movl	$1, -72(%ebp)
	cvtsi2ssl	%ecx, %xmm0
	xorps	LC48, %xmm0
	movss	%xmm0, 8(%eax,%ebx,2)
	movl	4(%edi), %eax
	movss	%xmm0, 8(%eax,%ebx,2)
	movl	(%edi), %eax
	movss	%xmm0, 8(%eax,%ebx)
	movl	(%edi), %edx
L867:
	movl	4(%esi), %ecx
	movss	(%edx,%ebx), %xmm0
	movl	%ecx, -44(%ebp)
	movss	%xmm0, (%esp)
	call	_lrintf
	movl	-44(%ebp), %ecx
	cmpl	%eax, %ecx
	je	L868
	xorps	%xmm0, %xmm0
	movl	256(%edi), %eax
	movl	$1, -72(%ebp)
	cvtsi2ssl	%ecx, %xmm0
	movss	%xmm0, (%eax,%ebx,2)
	movl	4(%edi), %eax
	movss	%xmm0, (%eax,%ebx,2)
	movl	(%edi), %eax
	movss	%xmm0, (%eax,%ebx)
L868:
	movl	-36(%ebp), %eax
	addl	$1, -40(%ebp)
	addl	$32, %esi
	addl	$12, %ebx
	movswl	2(%eax), %edx
	movl	%edx, %eax
	cmpl	%edx, -40(%ebp)
	jl	L869
	movl	-72(%ebp), %edx
	testl	%edx, %edx
	je	L1117
L870:
	testw	%ax, %ax
	jle	L872
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
L873:
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
	xorps	LC48, %xmm0
	addl	$1, %ebx
	mulss	LC50, %xmm0
	movl	4(%edx), %ecx
	movss	%xmm0, 4(%ecx,%eax,8)
	xorps	%xmm0, %xmm0
	movl	256(%edx), %ecx
	cvtsi2ssl	-24(%ebp), %xmm0
	xorps	LC48, %xmm0
	mulss	LC50, %xmm0
	movss	%xmm0, 4(%ecx,%eax,8)
	movl	-36(%ebp), %eax
	movswl	2(%eax), %eax
	cmpl	%eax, %ebx
	jl	L873
L872:
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
L874:
	movl	-36(%ebp), %eax
	movswl	24(%eax), %eax
	movw	%ax, -74(%ebp)
	cmpb	$63, _picanm+3(%eax,%eax,4)
	ja	L1118
L875:
	movl	-36(%ebp), %eax
	movswl	16(%eax), %eax
	movw	%ax, -76(%ebp)
	movzbl	_picanm+3(%eax,%eax,4), %edx
	testb	$64, -51(%ebp)
	jne	L876
L882:
	cmpb	$63, %dl
	ja	L1119
L878:
	movl	-36(%ebp), %eax
	movl	-60(%ebp), %ecx
	addl	$12, %eax
	movl	%eax, -104(%ebp)
	leal	532(%ecx), %eax
	movl	%eax, -108(%ebp)
	movl	%edi, %eax
	testb	%al, %al
	jne	L884
	movl	-72(%ebp), %eax
	testl	%eax, %eax
	je	L1120
L884:
	movl	-36(%ebp), %eax
	movzwl	14(%eax), %ecx
	testb	$64, %cl
	jne	L886
	testb	$64, 12(%eax)
	jne	L886
	movss	LC72, %xmm7
	movl	-36(%ebp), %eax
	movl	$0x00000000, -96(%ebp)
	movl	$0x00000000, -80(%ebp)
	movss	%xmm7, -88(%ebp)
	movss	%xmm7, -92(%ebp)
	cmpw	$0, 2(%eax)
	jle	L901
L1125:
	movswl	(%eax), %eax
	xorl	%esi, %esi
	sall	$5, %eax
	addl	_wall, %eax
	movl	%eax, -56(%ebp)
	.p2align 4
	.p2align 3
L914:
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
	je	L1121
L903:
	movl	-56(%ebp), %eax
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	-64(%ebp), %eax
	addl	%ebx, %eax
	movl	%eax, -40(%ebp)
	testl	$64, %edi
	je	L904
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
	jne	L906
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
	xorps	LC48, %xmm2
	andps	%xmm0, %xmm2
	andnps	%xmm3, %xmm0
	orps	%xmm2, %xmm0
L906:
	movss	%xmm0, -20(%ebp)
	testl	$4, %edi
	je	L907
	leal	-24(%ebp), %eax
	leal	-20(%ebp), %ebx
/APP
 # 2808 "source/build/src/polymer.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
L907:
	movss	-24(%ebp), %xmm1
	testl	$16, %edi
	je	L908
	xorps	LC48, %xmm1
	movss	%xmm1, -24(%ebp)
L908:
	movss	-20(%ebp), %xmm0
	testl	$32, %edi
	je	L909
	xorps	LC48, %xmm0
	movss	%xmm0, -20(%ebp)
L909:
	movss	LC74, %xmm4
	andl	$8, %edi
	je	L910
	movss	LC73, %xmm4
L910:
	movswl	_tilesiz(,%esi,4), %eax
	movzbl	-44(%ebp), %ecx
	xorps	%xmm3, %xmm3
	xorps	%xmm5, %xmm5
	cvtsi2ssl	%eax, %xmm3
	testb	%cl, %cl
	je	L911
	movzbl	_picsiz(%esi), %eax
	xorps	%xmm2, %xmm2
	xorps	%xmm5, %xmm5
	movss	LC79, %xmm6
	mulss	%xmm3, %xmm6
	andl	$15, %eax
	cvtsi2ssl	_pow2long.lto_priv.1(,%eax,4), %xmm2
	movzbl	%cl, %eax
	cvtsi2ssl	%eax, %xmm5
	divss	%xmm6, %xmm5
	mulss	%xmm2, %xmm5
L911:
	movzbl	-48(%ebp), %ebx
	xorps	%xmm2, %xmm2
	testb	%bl, %bl
	je	L912
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
	mulss	LC79, %xmm6
	divss	%xmm6, %xmm2
	mulss	%xmm7, %xmm2
L912:
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
	je	L1122
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
	jne	L903
L1121:
	movl	%esi, %eax
	movss	%xmm0, -40(%ebp)
	call	_tileLoad
	movss	-40(%ebp), %xmm0
	jmp	L903
	.p2align 4,,10
	.p2align 3
L886:
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
	je	L1123
L888:
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
	mulss	LC76, %xmm1
	movzwl	14(%ebx), %eax
	andw	$2, %ax
	movw	%ax, -40(%ebp)
	movaps	%xmm1, %xmm7
	mulss	%xmm0, %xmm7
	movss	%xmm7, -80(%ebp)
	je	L890
	movzwl	12(%ebx), %eax
	movss	%xmm7, -96(%ebp)
	movw	%ax, -40(%ebp)
	andw	$2, %ax
	movw	%ax, -44(%ebp)
	je	L1124
L891:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edi, %xmm0
	movss	%xmm0, 4(%esp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%esi, %xmm0
	movss	%xmm0, (%esp)
	call	_atan2f
	fldl	LC78
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
	jg	L1125
	.p2align 4
	.p2align 3
L901:
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
L915:
	cmpl	$1, _pr_nullrender
	jle	L1126
L917:
	movl	-60(%ebp), %eax
	testb	$5, 560(%eax)
	je	L1127
L920:
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
	je	L922
	andw	$128, %ax
	cmpw	$1, %ax
	sbbl	%eax, %eax
	andl	$85, %eax
	addl	$85, %eax
	movb	%al, 151(%edi)
L922:
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
	je	L924
	andw	$128, %ax
	cmpw	$1, %ax
	sbbl	%eax, %eax
	andl	$85, %eax
	addl	$85, %eax
	movb	%al, 403(%esi)
L924:
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
L921:
	movl	-72(%ebp), %esi
	testl	%esi, %esi
	jne	L1128
L976:
	cmpb	$0, -109(%ebp)
	jne	L1129
L928:
	movl	-60(%ebp), %ebx
	movzbl	560(%ebx), %eax
	movb	%al, -36(%ebp)
	andl	$-4, %eax
	orl	$2, %eax
	movb	%al, 560(%ebx)
	cmpl	$2, _pr_verbosity
	jg	L1130
L864:
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
L876:
	.cfi_restore_state
	testb	$16, _globalorientation+1
	je	L882
	movswl	-74(%ebp), %ecx
	movzwl	_rottile(,%ecx,4), %esi
	cmpw	$-1, %si
	je	L883
	cmpb	$63, %dl
	ja	L879
	movw	%si, -74(%ebp)
L880:
	movzwl	_rottile(,%eax,4), %eax
	cmpw	$-1, %ax
	cmove	-76(%ebp), %ax
	movw	%ax, -76(%ebp)
	jmp	L878
	.p2align 4,,10
	.p2align 3
L1117:
	movl	-60(%ebp), %ecx
	movzbl	560(%ecx), %ebx
	movl	%ebx, %edi
	andl	$1, %edi
	jne	L870
	movl	-36(%ebp), %esi
	movl	528(%ecx), %ecx
	cmpl	%ecx, 8(%esi)
	jne	L870
	movl	%esi, %ecx
	movl	-60(%ebp), %esi
	movl	524(%esi), %esi
	cmpl	%esi, 4(%ecx)
	jne	L870
	movl	-60(%ebp), %esi
	movzwl	546(%esi), %esi
	cmpw	%si, 26(%ecx)
	jne	L870
	movl	-60(%ebp), %esi
	movzwl	538(%esi), %esi
	cmpw	%si, 18(%ecx)
	jne	L870
	movl	-36(%ebp), %ecx
	movl	-60(%ebp), %eax
	movzbl	552(%eax), %eax
	cmpb	%al, 32(%ecx)
	setne	-109(%ebp)
	jmp	L874
	.p2align 4,,10
	.p2align 3
L1123:
	movl	-36(%ebp), %eax
	testb	$2, 12(%eax)
	jne	L888
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
	xorps	%xmm2, %xmm2
	movw	%cx, -44(%ebp)
	movw	%bx, -40(%ebp)
	movss	%xmm2, -80(%ebp)
L889:
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
	movss	LC71, %xmm1
	movl	%eax, -48(%ebp)
	testl	%eax, %eax
	jne	L1131
L892:
	movaps	%xmm0, %xmm7
	mulss	%xmm1, %xmm7
	movss	%xmm7, -96(%ebp)
	cmpw	$0, -40(%ebp)
	jne	L900
	movss	%xmm7, -80(%ebp)
L900:
	cmpw	$0, -44(%ebp)
	je	L891
	movss	%xmm2, -96(%ebp)
	jmp	L891
	.p2align 4,,10
	.p2align 3
L1120:
	movzwl	-74(%ebp), %eax
	cmpw	%ax, 554(%ecx)
	jne	L884
	movl	%ecx, %eax
	movzwl	-76(%ebp), %ecx
	cmpw	%cx, 556(%eax)
	jne	L884
	movl	-100(%ebp), %ecx
	movl	_sectorchanged(,%ecx,4), %ecx
	cmpl	%ecx, 568(%eax)
	jne	L884
L885:
	cmpb	$0, -109(%ebp)
	jne	L915
	andl	$5, %ebx
	jne	L920
	movl	$21, 8(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcmp
	testl	%eax, %eax
	jne	L920
	jmp	L928
	.p2align 4,,10
	.p2align 3
L904:
	xorps	%xmm0, %xmm0
	negl	%edx
	cvtsi2ssl	%ecx, %xmm0
	movss	%xmm0, -24(%ebp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	jmp	L906
	.p2align 4,,10
	.p2align 3
L1122:
	movl	-36(%ebp), %eax
	movl	-68(%ebp), %esi
	addl	$32, -56(%ebp)
	movswl	2(%eax), %eax
	addl	$1, %esi
	cmpl	%eax, %esi
	jl	L914
	jmp	L901
	.p2align 4,,10
	.p2align 3
L1118:
	call	_animateoffs
	addw	%ax, -74(%ebp)
	jmp	L875
	.p2align 4,,10
	.p2align 3
L1128:
	cmpl	$1, _pr_verbosity
	jg	L1132
L927:
	movl	-100(%ebp), %eax
	movl	_prsectors(,%eax,4), %eax
	movl	%eax, -68(%ebp)
	testl	%eax, %eax
	je	L928
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
	jmp	L942
	.p2align 6
	.p2align 4,,10
	.p2align 3
L987:
	movl	-56(%ebp), %eax
	addl	$1, -48(%ebp)
	movl	%eax, -44(%ebp)
	movl	-52(%ebp), %eax
	movswl	2(%eax), %eax
	cmpl	%eax, -48(%ebp)
	jge	L1133
L942:
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
	jle	L987
	movl	-68(%ebp), %eax
	movl	(%edi), %ebx
	movl	(%eax), %esi
	testl	%ebx, %ebx
	je	L1134
L930:
	movl	%ebx, %eax
	call	__ZL16tessMeshMakeEdgeP8TESSmesh.lto_priv.0
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L940
	movl	4(%eax), %ecx
	movl	(%edi), %eax
	movl	%ebx, %edx
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L940
	movl	-64(%ebp), %eax
	movl	$0, -36(%ebp)
	leal	(%eax,%eax,2), %eax
	leal	(%esi,%eax,4), %esi
L937:
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
	je	L934
	movl	(%edi), %eax
	movl	%ebx, %edx
	movl	%ecx, -40(%ebp)
	call	__ZL17tessMeshSplitEdgeP8TESSmeshP12TESShalfEdge.lto_priv.0
	movl	-40(%ebp), %ecx
	testl	%eax, %eax
	je	L940
	addl	$1, -36(%ebp)
	movl	12(%ebx), %ebx
	addl	$12, %esi
	jmp	L937
	.p2align 4,,10
	.p2align 3
L940:
	movl	$1, 4(%edi)
L934:
	movl	-52(%ebp), %eax
	movl	-56(%ebp), %ecx
	movl	$0, -44(%ebp)
	addl	%ecx, -64(%ebp)
	movl	_prtess, %edi
	addl	$1, -48(%ebp)
	movswl	2(%eax), %eax
	cmpl	%eax, -48(%ebp)
	jl	L942
L1133:
	movl	%edi, %eax
	call	__Z13tessTesselateP14TESStesselatoriiiiPKf.constprop.0
	testl	%eax, %eax
	je	L928
	movl	_prtess, %eax
	movl	108(%eax), %ecx
	movl	100(%eax), %ebx
	movl	%ecx, -36(%ebp)
	testl	%ebx, %ebx
	je	L928
	testl	%ecx, %ecx
	je	L928
	movl	104(%eax), %ebx
	movl	96(%eax), %edi
	movl	-68(%ebp), %eax
	movl	176(%eax), %eax
	movl	%eax, -40(%ebp)
	testl	%eax, %eax
	je	L1135
	movl	-36(%ebp), %esi
	leal	(%esi,%esi), %eax
	movl	%eax, -44(%ebp)
	addl	%eax, %esi
	movl	-68(%ebp), %eax
	movl	508(%eax), %edx
	cmpl	%edx, %esi
	jl	L944
	testl	%esi, %esi
	jle	L945
	movl	%edx, -48(%ebp)
	cmpl	%edx, %esi
	sete	%cl
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L947:
	movl	(%ebx,%eax,4), %edx
	cmpl	$-1, (%edi,%edx,4)
	jne	L990
	testb	%cl, %cl
	jne	L944
L990:
	addl	$1, %eax
	cmpl	%eax, %esi
	jne	L947
	cmpl	-48(%ebp), %esi
	je	L953
L943:
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
	jne	L991
	cmpb	$0, -40(%ebp)
	je	L950
L991:
	movl	-68(%ebp), %ecx
	movl	%eax, 176(%ecx)
	movl	%esi, 4(%esp)
	movl	428(%ecx), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	testl	%eax, %eax
	jne	L992
	cmpb	$0, -40(%ebp)
	je	L950
L992:
	movl	-68(%ebp), %esi
	movl	-44(%ebp), %edx
	addl	-36(%ebp), %edx
	movl	%eax, 428(%esi)
	movl	%edx, 508(%esi)
	testl	%edx, %edx
	jle	L949
L953:
	movl	%edi, -40(%ebp)
	xorl	%esi, %esi
	movl	-68(%ebp), %edi
	movl	%ebx, -36(%ebp)
	jmp	L956
	.p2align 4,,10
	.p2align 3
L954:
	movl	428(%edi), %edx
	movzwl	(%edx,%eax), %ecx
	movl	508(%edi), %eax
	movl	176(%edi), %edx
	subl	%esi, %eax
	addl	$1, %esi
	movw	%cx, -2(%edx,%eax,2)
	movl	508(%edi), %edx
	cmpl	%edx, %esi
	jge	L949
L956:
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
	jne	L954
	movl	__ZN6loguru18g_stderr_verbosityE, %ecx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %ecx
	cmovl	%edx, %ecx
	cmpl	$-1, %ecx
	jl	L955
	movl	%eax, -44(%ebp)
	movl	-100(%ebp), %eax
	movl	$LC81, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3020, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	-44(%ebp), %eax
L955:
	movl	428(%edi), %edx
	xorl	%ecx, %ecx
	movw	%cx, (%edx,%eax)
	jmp	L954
	.p2align 4,,10
	.p2align 3
L1129:
	movl	-60(%ebp), %eax
	addl	$1, 564(%eax)
	movl	-100(%ebp), %eax
	movl	_prsectors(,%eax,4), %edx
	testl	%edx, %edx
	je	L958
	movzwl	252(%edx), %eax
	movl	-84(%ebp), %ebx
	addl	_sector, %ebx
	testl	%eax, %eax
	je	L959
	subl	$1, %eax
	movl	%edx, %esi
	.p2align 4
	.p2align 3
L961:
	movswl	188(%esi,%eax,2), %ecx
	cmpl	$31, %ecx
	ja	L960
	imull	$270, %ecx, %ecx
	movzbl	_prlights+254(%ecx), %edx
	testb	$1, %dl
	je	L960
	orl	$2, %edx
	movb	%dl, _prlights+254(%ecx)
L960:
	subl	$1, %eax
	jnb	L961
	movl	%esi, %edx
L959:
	movzwl	504(%edx), %eax
	testl	%eax, %eax
	je	L962
	subl	$1, %eax
	movl	%edx, %esi
	.p2align 4
	.p2align 3
L964:
	movswl	440(%esi,%eax,2), %ecx
	cmpl	$31, %ecx
	ja	L963
	imull	$270, %ecx, %ecx
	movzbl	_prlights+254(%ecx), %edx
	testb	$1, %dl
	je	L963
	orl	$2, %edx
	movb	%dl, _prlights+254(%ecx)
L963:
	subl	$1, %eax
	jnb	L964
L962:
	movswl	2(%ebx), %ecx
	testl	%ecx, %ecx
	je	L958
	subl	$1, %ecx
	.p2align 4
	.p2align 3
L974:
	movswl	(%ebx), %eax
	addl	%ecx, %eax
	movl	_prwalls(,%eax,4), %edx
	testl	%edx, %edx
	je	L965
	movzwl	248(%edx), %eax
	testl	%eax, %eax
	je	L966
	movl	%ecx, -36(%ebp)
	subl	$1, %eax
	.p2align 4
	.p2align 3
L968:
	movswl	184(%edx,%eax,2), %esi
	cmpl	$31, %esi
	ja	L967
	imull	$270, %esi, %esi
	movzbl	_prlights+254(%esi), %edi
	testl	$1, %edi
	je	L967
	orl	$2, %edi
	movl	%edi, %ecx
	movb	%cl, _prlights+254(%esi)
L967:
	subl	$1, %eax
	jnb	L968
	movl	-36(%ebp), %ecx
L966:
	movzwl	500(%edx), %eax
	testl	%eax, %eax
	je	L969
	movl	%ecx, -36(%ebp)
	subl	$1, %eax
	.p2align 4
	.p2align 3
L971:
	movswl	436(%edx,%eax,2), %esi
	cmpl	$31, %esi
	ja	L970
	imull	$270, %esi, %esi
	movzbl	_prlights+254(%esi), %edi
	testl	$1, %edi
	je	L970
	orl	$2, %edi
	movl	%edi, %ecx
	movb	%cl, _prlights+254(%esi)
L970:
	subl	$1, %eax
	jnb	L971
	movl	-36(%ebp), %ecx
L969:
	movzwl	752(%edx), %eax
	testl	%eax, %eax
	je	L965
	movl	%ecx, -36(%ebp)
	subl	$1, %eax
	.p2align 4
	.p2align 3
L973:
	movswl	688(%edx,%eax,2), %esi
	cmpl	$31, %esi
	ja	L972
	imull	$270, %esi, %esi
	movzbl	_prlights+254(%esi), %edi
	testl	$1, %edi
	je	L972
	orl	$2, %edi
	movl	%edi, %ecx
	movb	%cl, _prlights+254(%esi)
L972:
	subl	$1, %eax
	jnb	L973
	movl	-36(%ebp), %ecx
L965:
	subl	$1, %ecx
	jnb	L974
L958:
	movl	-60(%ebp), %ebx
	leal	4(%ebx), %eax
	call	_polymer_computeplane.lto_priv.0
	leal	256(%ebx), %eax
	call	_polymer_computeplane.lto_priv.0
	jmp	L928
	.p2align 4,,10
	.p2align 3
L1130:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L864
	movl	-100(%ebp), %eax
	movl	$LC83, 12(%esp)
	movl	$2946, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC8, 4(%esp)
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
L890:
	.cfi_restore_state
	movl	-36(%ebp), %eax
	testb	$2, 12(%eax)
	je	L1136
	movl	$2, %eax
	movss	-80(%ebp), %xmm2
	movl	$0x00000000, -80(%ebp)
	movw	%ax, -44(%ebp)
	jmp	L889
	.p2align 4,,10
	.p2align 3
L1127:
	movzwl	-74(%ebp), %ecx
	cmpw	%cx, 554(%eax)
	jne	L920
	movzwl	-76(%ebp), %ebx
	cmpw	556(%eax), %bx
	jne	L920
	movl	$21, 8(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcmp
	testl	%eax, %eax
	jne	L920
	jmp	L921
	.p2align 4,,10
	.p2align 3
L1119:
	call	_animateoffs
	addw	%ax, -76(%ebp)
	jmp	L878
L1132:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L927
	movl	-100(%ebp), %eax
	movl	$LC80, 12(%esp)
	movl	$2954, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC8, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L927
L1124:
	movl	$2, %eax
	xorps	%xmm2, %xmm2
	movw	%ax, -40(%ebp)
	jmp	L889
L1136:
	xorl	%eax, %eax
	xorps	%xmm2, %xmm2
	movw	%ax, -44(%ebp)
	movss	%xmm2, -80(%ebp)
	jmp	L889
L883:
	cmpb	$63, %dl
	jbe	L880
	movzwl	-74(%ebp), %esi
L879:
	call	_animateoffs
	movw	%si, -74(%ebp)
	addw	%ax, -76(%ebp)
	movswl	-76(%ebp), %eax
	jmp	L880
L945:
	cmpl	%edx, %esi
	jne	L943
L949:
	movl	-68(%ebp), %eax
	movl	%edx, 432(%eax)
	movl	%edx, 180(%eax)
	cmpl	$2, _pr_verbosity
	jle	L944
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L944
	movl	-100(%ebp), %eax
	movl	$LC82, 12(%esp)
	movl	$3028, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC8, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L944:
	cmpl	$1, _pr_nullrender
	jg	L976
	movl	-60(%ebp), %eax
	movl	508(%eax), %ebx
	cmpl	%ebx, 512(%eax)
	jl	L1137
L957:
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
	jmp	L976
L1131:
	movl	%eax, %ecx
	cmpl	%eax, _lastd_s32
	je	L893
	cmpl	$16383, %eax
	jbe	L893
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
	je	L1138
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
	jnb	L896
	movzbl	-52(%ebp), %edx
	subl	$1, %edx
L897:
	movl	-56(%ebp), %eax
	movl	%edx, %ebx
	orl	$-128, %ebx
	cmpl	$0, -48(%ebp)
	leal	1(%eax), %ecx
	notl	%eax
	cmovs	%ebx, %edx
	cmovs	%eax, %ecx
L895:
	movl	%ecx, _divtable32
	movb	%dl, _divtable32+4
L893:
	movl	-48(%ebp), %ebx
	xorl	%eax, %eax
	cmpl	$16383, %ebx
	cmovbe	%ebx, %eax
	movl	_divtable32(%eax,%eax,4), %edx
	movzbl	_divtable32+4(%eax,%eax,4), %ecx
	testl	%edx, %edx
	jne	L898
	movl	%ecx, %edx
	movl	$1048576, %eax
	xorps	%xmm1, %xmm1
	sarb	$7, %dl
	sarl	%cl, %eax
	movsbl	%dl, %edx
	xorl	%edx, %eax
	subl	%edx, %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	LC77, %xmm1
	jmp	L892
L1134:
	movl	112(%edi), %eax
	cmpl	$__ZL9heapAllocPvj.lto_priv.0, %eax
	jne	L931
	movl	$152, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1139
L932:
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
	jmp	L930
L1126:
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
	jmp	L917
L898:
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
	mulss	LC77, %xmm1
	jmp	L892
L1138:
	sarl	$24, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	andl	$-128, %edx
	orb	-52(%ebp), %dl
	jmp	L895
L1135:
	leal	(%ecx,%ecx), %eax
	movl	%eax, -44(%ebp)
	jmp	L943
L1137:
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
	jmp	L957
L931:
	movl	$152, 4(%esp)
	movl	124(%edi), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L932
	movl	$0, (%edi)
	movl	$1, 4(%edi)
	jmp	L934
L896:
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
	jmp	L897
L1139:
	movl	$152, %eax
	call	__Z13handle_memerri
L950:
	movl	%esi, %eax
	call	__Z13handle_memerri
L1116:
	movl	_pr_verbosity, %ecx
	testl	%ecx, %ecx
	jle	L864
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L864
	movl	-100(%ebp), %eax
	movl	$LC75, 12(%esp)
	movl	$2628, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC8, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L864
	.cfi_endproc
LFE32:
	.p2align 4
	.globl	_polymer_culllight.lto_priv.0
	.def	_polymer_culllight.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_culllight.lto_priv.0:
LFB41:
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
	je	L1246
L1141:
	movswl	_numsectors, %eax
	andl	$7, %edi
	sarl	$3, %ebx
	movzbl	__ZL8pow2char.lto_priv.7(%edi), %ecx
	addl	$7, %eax
	sarl	$3, %eax
	imull	%esi, %eax
	addl	%eax, %edx
	movzbl	(%edx,%ebx), %eax
	andl	%ecx, %eax
	cmpb	%al, %cl
	movl	$1, %eax
	je	L1247
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
L1247:
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
	movzbl	__ZL8pow2char.lto_priv.9(%ecx), %ecx
	orb	%cl, __ZL12drawingstate.lto_priv.0(%eax)
	.p2align 4
	.p2align 3
L1184:
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
	je	L1248
L1143:
	xorl	%ebx, %ebx
	jmp	L1146
	.p2align 4,,10
	.p2align 3
L1145:
	movswl	2(%edi), %eax
	addl	$1, %ebx
	addl	$32, %esi
	cmpl	%eax, %ebx
	jge	L1249
L1146:
	movswl	12(%esi), %eax
	testw	%ax, %ax
	js	L1144
	movl	_prsectors(,%eax,4), %edx
	testb	$2, 560(%edx)
	je	L1250
L1144:
	movswl	(%edi), %edx
	movl	%edx, %eax
	addl	%ebx, %edx
	movl	_prwalls(,%edx,4), %edx
	testb	$2, 796(%edx)
	jne	L1145
	addl	%ebx, %eax
	addl	$1, %ebx
	addl	$32, %esi
	cwtl
	call	_polymer_updatewall.lto_priv.0
	movswl	2(%edi), %eax
	cmpl	%eax, %ebx
	jl	L1146
L1249:
	testb	$1, 14(%edi)
	jne	L1148
	cmpw	$0, 24(%ebp)
	jne	L1149
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
	jg	L1244
	testb	$1, 12(%edi)
	jne	L1158
	movl	12(%esp), %eax
	subl	524(%eax), %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovs	%ecx, %eax
	sarl	$4, %eax
L1187:
	cmpl	%edx, %eax
	jl	L1245
	.p2align 4
	.p2align 3
L1158:
	movl	%edi, 12(%esp)
	movl	%ebp, %edi
	xorl	%ebp, %ebp
	jmp	L1180
	.p2align 4,,10
	.p2align 3
L1252:
	cmpw	_numsectors, %ax
	jge	L1167
	leal	(%eax,%eax,4), %ebx
	movl	_sector, %eax
	movswl	%cx, %ecx
	leal	(%eax,%ebx,8), %eax
	movl	%eax, 24(%esp)
	movl	16(%esp), %eax
	call	_wallvisible
	testl	%eax, %eax
	je	L1185
L1168:
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
	jne	L1193
	testb	$1, 14(%ecx)
	je	L1171
	testb	$1, 12(%ebx)
	movl	$0, %ebx
	je	L1172
L1173:
	movl	24(%esp), %eax
	testb	$1, 12(%eax)
	je	L1172
L1175:
	movl	12(%esp), %eax
	movl	4(%edi), %edx
	movzwl	(%eax), %ecx
	movl	(%edi), %eax
	addl	%ebp, %ecx
	movswl	%cx, %ecx
	call	_wallvisible
	testl	%eax, %eax
	jne	L1176
L1170:
	movl	12(%esp), %eax
	addl	$1, %ebp
	movswl	2(%eax), %eax
	cmpl	%ebp, %eax
	jle	L1251
L1180:
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
	jns	L1252
L1167:
	movl	16(%esp), %eax
	movswl	%cx, %ecx
	call	_wallvisible
	testl	%eax, %eax
	jne	L1253
	movl	$0, 24(%esp)
L1185:
	movl	20(%esp), %eax
	movswl	10(%eax), %ecx
	cmpw	$-1, %cx
	je	L1170
	movl	4(%edi), %edx
	movl	(%edi), %eax
	call	_wallvisible
	testl	%eax, %eax
	jne	L1168
	jmp	L1170
	.p2align 4,,10
	.p2align 3
L1248:
	cmpl	$2, _pr_nullrender
	jg	L1143
	call	_polymer_updatesector.part.0.isra.0
	jmp	L1143
	.p2align 4,,10
	.p2align 3
L1250:
	cmpl	$2, _pr_nullrender
	jg	L1144
	call	_polymer_updatesector.part.0.isra.0
	jmp	L1144
	.p2align 4,,10
	.p2align 3
L1253:
	movl	4(%esi), %edx
	movl	(%esi), %eax
	movl	%edi, %ecx
	call	_polymer_planeinlight.isra.0
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1172
	movl	28(%esp), %edx
	movl	%esi, %eax
	call	_polymer_addplanelight.lto_priv.0
	.p2align 4
	.p2align 3
L1172:
	movl	256(%esi), %edx
	movl	252(%esi), %eax
	movl	%edi, %ecx
	call	_polymer_planeinlight.isra.0
	testl	%eax, %eax
	je	L1175
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
	je	L1170
	cmpl	$1, %ebx
	jne	L1176
	movl	508(%esi), %ebx
L1177:
	cmpl	$4, %ebx
	jne	L1178
	movl	504(%esi), %eax
	movss	4(%eax), %xmm0
	comiss	76(%eax), %xmm0
	jb	L1178
	movss	28(%eax), %xmm0
	comiss	52(%eax), %xmm0
	jnb	L1170
	.p2align 4
	.p2align 3
L1178:
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
	ja	L1170
	movl	%ecx, %esi
	movl	%ecx, %edx
	sarl	$3, %esi
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.9(%edx), %edx
	movzbl	__ZL12drawingstate.lto_priv.0(%esi), %eax
	movb	%dl, 16(%esp)
	movl	%eax, %edx
	notl	%edx
	testb	%dl, 16(%esp)
	je	L1170
	orb	16(%esp), %al
	movl	4(%edi), %edx
	movb	%al, __ZL12drawingstate.lto_priv.0(%esi)
	movl	(%edi), %eax
	movl	$0, (%esp)
	call	_getsectordist
	cmpl	16(%edi), %eax
	jge	L1170
	movl	36(%esp), %eax
	addl	$1, %ebp
	movw	%bx, __ZL11sectorqueue.lto_priv.0(%eax,%eax)
	addl	$1, %eax
	movl	%eax, 36(%esp)
	movl	12(%esp), %eax
	movswl	2(%eax), %eax
	cmpl	%ebp, %eax
	jg	L1180
	.p2align 4
	.p2align 3
L1251:
	movl	32(%esp), %eax
	movl	%edi, %ebp
	movswl	__ZL11sectorqueue.lto_priv.0(%eax,%eax), %eax
	movswl	_headspritesect(%eax,%eax), %ebx
	testw	%bx, %bx
	jns	L1183
	jmp	L1181
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1182:
	movswl	_nextspritesect(%ebx,%ebx), %ebx
	testw	%bx, %bx
	js	L1181
L1183:
	imull	$44, %ebx, %eax
	addl	_sprite, %eax
	movl	_prsprites(,%ebx,4), %esi
	testb	$48, 12(%eax)
	je	L1182
	testl	%esi, %esi
	je	L1182
	movl	4(%esi), %edx
	movl	(%esi), %eax
	movl	%ebp, %ecx
	call	_polymer_planeinlight.isra.0
	testl	%eax, %eax
	je	L1182
	movl	28(%esp), %edx
	movl	%esi, %eax
	call	_polymer_addplanelight.lto_priv.0
	movswl	_nextspritesect(%ebx,%ebx), %ebx
	testw	%bx, %bx
	jns	L1183
	.p2align 4
	.p2align 3
L1181:
	addl	$1, 32(%esp)
	movl	32(%esp), %eax
	cmpl	%eax, 36(%esp)
	jne	L1184
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
L1193:
	.cfi_restore_state
	movb	%dl, 16(%esp)
L1171:
	movl	4(%esi), %edx
	movl	(%esi), %eax
	movl	%edi, %ecx
	call	_polymer_planeinlight.isra.0
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L1254
L1174:
	movl	12(%esp), %eax
	testb	$1, 12(%eax)
	je	L1172
	cmpb	$0, 16(%esp)
	je	L1173
	jmp	L1172
	.p2align 4,,10
	.p2align 3
L1176:
	movl	508(%esi), %ebx
	movl	504(%esi), %eax
	movl	%edi, %ecx
	movl	%ebx, %edx
	call	_polymer_planeinlight.isra.0
	testl	%eax, %eax
	je	L1170
	jmp	L1177
	.p2align 4,,10
	.p2align 3
L1254:
	movl	28(%esp), %edx
	movl	%esi, %eax
	call	_polymer_addplanelight.lto_priv.0
	jmp	L1174
	.p2align 4,,10
	.p2align 3
L1244:
	movl	12(%esp), %eax
	movl	28(%esp), %edx
	addl	$4, %eax
	call	_polymer_addplanelight.lto_priv.0
	movl	32(%esp), %eax
	movswl	__ZL11sectorqueue.lto_priv.0(%eax,%eax), %eax
	call	_yax_getbunch.constprop.0
	testw	%ax, %ax
	js	L1148
	cwtl
	movzwl	_headsectbunch(%eax,%eax), %esi
	cmpw	$-1, %si
	je	L1148
	movl	%ebp, 20(%esp)
	movl	%edi, 24(%esp)
	.p2align 4
	.p2align 3
L1157:
	movswl	%si, %ebx
	testw	%si, %si
	js	L1155
	movl	%ebx, %edi
	movl	%esi, %eax
	sarl	$3, %edi
	andl	$7, %eax
	movzbl	__ZL12drawingstate.lto_priv.0(%edi), %ebp
	movzbl	__ZL8pow2char.lto_priv.9(%eax), %ecx
	movl	%ebp, %eax
	movb	%cl, 16(%esp)
	notl	%eax
	testb	%al, %cl
	je	L1155
	movl	_prsectors(,%ebx,4), %eax
	movl	20(%esp), %ecx
	movl	260(%eax), %edx
	movl	256(%eax), %eax
	call	_polymer_planeinlight.isra.0
	testl	%eax, %eax
	je	L1155
	movzbl	16(%esp), %eax
	movl	36(%esp), %edx
	orl	%ebp, %eax
	movw	%si, __ZL11sectorqueue.lto_priv.0(%edx,%edx)
	movb	%al, __ZL12drawingstate.lto_priv.0(%edi)
	leal	1(%edx), %eax
	movl	%eax, 36(%esp)
	.p2align 4
	.p2align 3
L1155:
	movzwl	_nextsectbunch(%ebx,%ebx), %esi
	cmpw	$-1, %si
	jne	L1157
	movl	20(%esp), %ebp
	movl	24(%esp), %edi
	.p2align 4
	.p2align 3
L1148:
	testb	$1, 12(%edi)
	jne	L1158
	cmpw	$0, 24(%ebp)
	jne	L1159
	movl	12(%esp), %eax
	movl	8(%ebp), %edx
	subl	524(%eax), %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	movl	16(%ebp), %edx
	sarl	$4, %eax
	jmp	L1187
	.p2align 4,,10
	.p2align 3
L1149:
	movl	12(%esp), %eax
	movl	%ebp, %ecx
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	call	_polymer_planeinlight.isra.0
	testl	%eax, %eax
	jne	L1244
	testb	$1, 12(%edi)
	jne	L1158
L1159:
	movl	12(%esp), %eax
	movl	%ebp, %ecx
	movl	260(%eax), %edx
	movl	256(%eax), %eax
	call	_polymer_planeinlight.isra.0
	testl	%eax, %eax
	je	L1158
L1245:
	movl	12(%esp), %eax
	movl	28(%esp), %edx
	addl	$256, %eax
	call	_polymer_addplanelight.lto_priv.0
	movl	32(%esp), %eax
	movswl	__ZL11sectorqueue.lto_priv.0(%eax,%eax), %eax
	call	_yax_getbunch.constprop.1
	testw	%ax, %ax
	js	L1158
	cwtl
	movzwl	_headsectbunch+512(%eax,%eax), %esi
	cmpw	$-1, %si
	je	L1158
	movl	%ebp, 16(%esp)
	movl	%edi, 20(%esp)
	.p2align 4
	.p2align 3
L1166:
	movswl	%si, %ebx
	testw	%si, %si
	js	L1164
	movl	%ebx, %ebp
	movl	%esi, %eax
	sarl	$3, %ebp
	andl	$7, %eax
	movzbl	__ZL12drawingstate.lto_priv.0(%ebp), %edi
	movzbl	__ZL8pow2char.lto_priv.9(%eax), %ecx
	movl	%edi, %eax
	movb	%cl, 12(%esp)
	notl	%eax
	testb	%al, %cl
	je	L1164
	movl	_prsectors(,%ebx,4), %eax
	movl	16(%esp), %ecx
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	call	_polymer_planeinlight.isra.0
	testl	%eax, %eax
	je	L1164
	movzbl	12(%esp), %eax
	movl	36(%esp), %edx
	orl	%edi, %eax
	movw	%si, __ZL11sectorqueue.lto_priv.0(%edx,%edx)
	movb	%al, __ZL12drawingstate.lto_priv.0(%ebp)
	leal	1(%edx), %eax
	movl	%eax, 36(%esp)
	.p2align 4
	.p2align 3
L1164:
	movzwl	_nextsectbunch+8192(%ebx,%ebx), %esi
	cmpw	$-1, %si
	jne	L1166
	movl	16(%esp), %ebp
	movl	20(%esp), %edi
	jmp	L1158
L1246:
	.cfi_restore 5
	call	_calc_sector_reachability
	movl	__ZL16reachablesectors.lto_priv.0, %edx
	jmp	L1141
	.cfi_endproc
LFE41:
	.p2align 4
	.globl	__Z19gltexinvalidatetypei
	.def	__Z19gltexinvalidatetypei;	.scl	2;	.type	32;	.endef
__Z19gltexinvalidatetypei:
LFB46:
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
	je	L1256
	cmpl	$2, %eax
	je	L1257
	cmpl	$1, %eax
	je	L1258
	.p2align 4
	.p2align 3
L1264:
	movl	_texcache+44(,%esi,4), %eax
	testl	%eax, %eax
	jne	L1261
	jmp	L1259
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1262:
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1259
L1261:
	movl	8(%eax), %ecx
	testl	%ecx, %ecx
	jne	L1262
	movzwl	34(%eax), %edx
	testb	$2, %dh
	jne	L1262
	movl	%edx, %ecx
	orb	$-128, %cl
	andl	$16, %edx
	movw	%cx, 34(%eax)
	je	L1262
	movl	4(%eax), %edx
	orw	$128, 34(%edx)
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L1261
L1259:
	addl	$1, %esi
	cmpl	$8192, %esi
	jne	L1264
L1265:
	movl	%ebx, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	_clearskins
L1273:
	.cfi_restore_state
	addl	$1, %esi
	cmpl	$8192, %esi
	je	L1265
	.p2align 4
	.p2align 3
L1256:
	movl	_texcache+44(,%esi,4), %eax
	testl	%eax, %eax
	je	L1273
	.p2align 6
	.p2align 4
	.p2align 3
L1275:
	movzwl	34(%eax), %edx
	movl	%edx, %ecx
	orb	$-128, %cl
	andl	$16, %edx
	movw	%cx, 34(%eax)
	je	L1274
	movl	4(%eax), %edx
	orw	$128, 34(%edx)
L1274:
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L1275
	addl	$1, %esi
	cmpl	$8192, %esi
	jne	L1256
	jmp	L1265
L1269:
	addl	$1, %esi
	cmpl	$8192, %esi
	je	L1265
	.p2align 4
	.p2align 3
L1257:
	movl	_texcache+44(,%esi,4), %eax
	testl	%eax, %eax
	je	L1269
	.p2align 4
	.p2align 3
L1271:
	movzwl	34(%eax), %edx
	testb	$2, %dh
	jne	L1272
	movl	%edx, %ecx
	orb	$-128, %cl
	andl	$16, %edx
	movw	%cx, 34(%eax)
	je	L1272
	movl	4(%eax), %edx
	orw	$128, 34(%edx)
L1272:
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L1271
	addl	$1, %esi
	cmpl	$8192, %esi
	jne	L1257
	jmp	L1265
	.p2align 4,,10
	.p2align 3
L1266:
	addl	$1, %esi
	cmpl	$8192, %esi
	je	L1265
L1258:
	movl	_texcache+44(,%esi,4), %eax
	testl	%eax, %eax
	jne	L1268
	jmp	L1266
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1267:
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1266
L1268:
	movl	8(%eax), %edx
	testl	%edx, %edx
	jne	L1267
	movzwl	34(%eax), %edx
	movl	%edx, %ecx
	orb	$-128, %cl
	andl	$16, %edx
	movw	%cx, 34(%eax)
	je	L1267
	movl	4(%eax), %edx
	orw	$128, 34(%edx)
	jmp	L1267
	.cfi_endproc
LFE46:
	.p2align 4
	.globl	__Z15bind_2d_textureji.isra.0
	.def	__Z15bind_2d_textureji.isra.0;	.scl	2;	.type	32;	.endef
__Z15bind_2d_textureji.isra.0:
LFB48:
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
	je	L1322
	movl	$9729, %eax
	movl	$5, %esi
	movl	$10, %ebx
L1313:
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
	je	L1323
L1314:
	movss	LC4, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	_glanisotropy, %xmm1
	comiss	%xmm1, %xmm0
	jb	L1324
L1315:
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
L1324:
	.cfi_restore_state
	movss	_glinfo+16, %xmm2
	movaps	%xmm2, %xmm0
	cmpnless	%xmm1, %xmm0
	andps	%xmm0, %xmm1
	andnps	%xmm2, %xmm0
	orps	%xmm1, %xmm0
	jmp	L1315
	.p2align 4,,10
	.p2align 3
L1323:
	movl	_r_useindexedcolortextures, %ecx
	testl	%ecx, %ecx
	je	L1314
	movss	LC4, %xmm0
	movl	_gltexfiltermode, %edx
	testl	%edx, %edx
	je	L1315
	jmp	L1314
	.p2align 4,,10
	.p2align 3
L1322:
	movl	_gltexfiltermode, %esi
	leal	(%esi,%esi), %ebx
	leal	(%ebx,%esi), %eax
	movl	_glfiltermodes+8(,%eax,4), %eax
	jmp	L1313
	.cfi_endproc
LFE48:
	.p2align 4
	.globl	__Z16multiplyMatrix4fPfPKf.constprop.0.isra.0
	.def	__Z16multiplyMatrix4fPfPKf.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
__Z16multiplyMatrix4fPfPKf.constprop.0.isra.0:
LFB51:
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
LFE51:
	.section .rdata,"dr"
LC84:
	.ascii "glCreateShader failed!\0"
LC85:
	.ascii "source/build/src/polymost.cpp\0"
LC86:
	.ascii "Compile Status: %u\0"
LC87:
	.ascii "Log:\12%s\0"
	.text
	.p2align 4
	.globl	__ZL23polymost2_compileShaderjPKcPi.lto_priv.0
	.def	__ZL23polymost2_compileShaderjPKcPi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL23polymost2_compileShaderjPKcPi.lto_priv.0:
LFB52:
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
	je	L1337
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
	jne	L1327
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
	jg	L1338
L1330:
	movl	32(%esp), %edx
	testl	%edx, %edx
	jg	L1339
L1327:
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
L1337:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$2, %eax
	jle	L1327
	movl	$LC84, 12(%esp)
	movl	$454, 8(%esp)
	movl	$LC85, 4(%esp)
	movl	$3, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1327
	.p2align 4,,10
	.p2align 3
L1339:
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, 20(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 44
	subl	$4, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	je	L1332
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
	jg	L1340
L1333:
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
L1338:
	.cfi_restore_state
	movl	28(%esp), %eax
	movl	$LC86, 12(%esp)
	movl	$470, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC85, 4(%esp)
	movl	$3, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1330
	.p2align 4,,10
	.p2align 3
L1340:
	movl	%ecx, 16(%esp)
	movl	$LC87, 12(%esp)
	movl	$475, 8(%esp)
	movl	$LC85, 4(%esp)
	movl	$3, (%esp)
	movl	%ecx, 20(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	20(%esp), %ecx
	jmp	L1333
	.p2align 4,,10
	.p2align 3
L1332:
	movl	20(%esp), %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE52:
	.p2align 4
	.globl	__Z28polymost_resetVertexPointersv
	.def	__Z28polymost_resetVertexPointersv;	.scl	2;	.type	32;	.endef
__Z28polymost_resetVertexPointersv:
LFB53:
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
	je	L1342
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
L1342:
	movl	_r_glowmapping, %eax
	testl	%eax, %eax
	je	L1343
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
L1343:
	movl	$33984, (%esp)
	call	*_glad_glClientActiveTexture
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	addl	$16, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE53:
	.section .rdata,"dr"
LC88:
	.ascii "polymost_resetState()\0"
LC89:
	.ascii "polymost_resetProgram()\0"
	.text
	.p2align 4
	.globl	__Z19polymost_resetStatev
	.def	__Z19polymost_resetStatev;	.scl	2;	.type	32;	.endef
__Z19polymost_resetStatev:
LFB54:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	$LC88, 4(%esp)
	movl	$3, (%esp)
	call	__Z26buildgl_outputDebugMessagehPKcz.constprop.0
	call	__Z28buildgl_resetStateAccountingv
	call	__Z28polymost_resetVertexPointersv
	cmpl	$3, _rendmode
	je	L1355
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1355:
	.cfi_restore_state
	movl	$LC89, 4(%esp)
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
	je	L1347
	movl	$33985, _gl+4
	movl	$33985, (%esp)
	call	*_glad_glActiveTexture
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
L1347:
	movl	__ZL16palswapTextureID.lto_priv.0, %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	cmpl	$33986, _gl+4
	je	L1348
	movl	$33986, _gl+4
	movl	$33986, (%esp)
	call	*_glad_glActiveTexture
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
L1348:
	movzbl	_curbasepal, %eax
	movl	__ZL17paletteTextureIDs.lto_priv.0(,%eax,4), %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	_gl+4, %edx
	cmpl	$33984, %edx
	je	L1351
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
	jne	L1356
	addl	$_gl, %eax
	movl	%ecx, %edx
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	jmp	_inthash_delete
	.p2align 4,,10
	.p2align 3
L1356:
	.cfi_restore_state
	movl	%edx, %ecx
L1349:
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
L1351:
	.cfi_restore_state
	movl	$33984, %ecx
	jmp	L1349
	.cfi_endproc
LFE54:
	.section .rdata,"dr"
	.align 4
LC90:
	.ascii "polymost_setCurrentShaderProgram(programID:%u)\0"
LC91:
	.ascii "s_texture\0"
LC92:
	.ascii "s_palswap\0"
LC93:
	.ascii "s_palette\0"
LC94:
	.ascii "s_detail\0"
LC95:
	.ascii "s_glow\0"
LC96:
	.ascii "u_texturePosSize\0"
LC97:
	.ascii "u_halfTexelSize\0"
LC98:
	.ascii "u_palswapPos\0"
LC99:
	.ascii "u_palswapSize\0"
LC100:
	.ascii "u_clamp\0"
LC101:
	.ascii "u_shade\0"
LC102:
	.ascii "u_numShades\0"
LC103:
	.ascii "u_visFactor\0"
LC104:
	.ascii "u_fogEnabled\0"
LC105:
	.ascii "u_usePalette\0"
LC106:
	.ascii "u_useColorOnly\0"
LC107:
	.ascii "u_useDetailMapping\0"
LC108:
	.ascii "u_useGlowMapping\0"
LC109:
	.ascii "u_npotEmulation\0"
LC110:
	.ascii "u_rotMatrix\0"
LC111:
	.ascii "u_shadeInterpolate\0"
	.text
	.p2align 4
	.globl	__ZL32polymost_setCurrentShaderProgramj.lto_priv.0
	.def	__ZL32polymost_setCurrentShaderProgramj.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL32polymost_setCurrentShaderProgramj.lto_priv.0:
LFB56:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$20, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, 8(%esp)
	movl	$LC90, 4(%esp)
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
	movl	$LC91, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL22polymost1TexSamplerLoc.lto_priv.0
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC92, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL26polymost1PalSwapSamplerLoc.lto_priv.0
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC93, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL26polymost1PaletteSamplerLoc.lto_priv.0
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC94, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL25polymost1DetailSamplerLoc.lto_priv.0
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC95, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL23polymost1GlowSamplerLoc.lto_priv.0
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC96, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL26polymost1TexturePosSizeLoc
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC97, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL25polymost1HalfTexelSizeLoc
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC98, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL22polymost1PalswapPosLoc.lto_priv.0
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC99, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL23polymost1PalswapSizeLoc.lto_priv.0
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC100, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL17polymost1ClampLoc
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC101, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL17polymost1ShadeLoc.lto_priv.0
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC102, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL21polymost1NumShadesLoc.lto_priv.0
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC103, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL21polymost1VisFactorLoc
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC104, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL22polymost1FogEnabledLoc.lto_priv.0
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC105, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL22polymost1UsePaletteLoc.lto_priv.0
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC106, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL24polymost1UseColorOnlyLoc.lto_priv.0
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC107, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL28polymost1UseDetailMappingLoc.lto_priv.0
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC108, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL26polymost1UseGlowMappingLoc.lto_priv.0
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC109, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL25polymost1NPOTEmulationLoc
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC110, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL21polymost1RotMatrixLoc.lto_priv.0
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC111, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, __ZL28polymost1ShadeInterpolateLoc.lto_priv.0
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$LC15, 4(%esp)
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
	movl	__ZL22polymost1PalswapPosLoc.lto_priv.0, %eax
	movss	__ZL19polymost1PalswapPos.lto_priv.0+4, %xmm0
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movss	%xmm0, 8(%esp)
	movss	__ZL19polymost1PalswapPos.lto_priv.0, %xmm0
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
	movl	__ZL17polymost1ShadeLoc.lto_priv.0, %eax
	movss	__ZL14polymost1Shade.lto_priv.0, %xmm0
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, (%esp)
	movss	%xmm0, 4(%esp)
	call	*_glad_glUniform1f
	.cfi_def_cfa_offset 20
	movl	__ZL21polymost1NumShadesLoc.lto_priv.0, %eax
	movss	__ZL18polymost1NumShades.lto_priv.0+4, %xmm0
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movss	%xmm0, 8(%esp)
	movss	__ZL18polymost1NumShades.lto_priv.0, %xmm0
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
LFE56:
	.p2align 4
	.globl	__Z26polymost_setTexturePosSizeRK4vec4IfE
	.def	__Z26polymost_setTexturePosSizeRK4vec4IfE;	.scl	2;	.type	32;	.endef
__Z26polymost_setTexturePosSizeRK4vec4IfE:
LFB57:
	.cfi_startproc
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %ecx
	cmpl	%ecx, _gl
	jne	L1362
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
L1362:
	ret
	.cfi_endproc
LFE57:
	.p2align 4
	.globl	__Z25polymost_setHalfTexelSizeRK4vec2IfE
	.def	__Z25polymost_setHalfTexelSizeRK4vec2IfE;	.scl	2;	.type	32;	.endef
__Z25polymost_setHalfTexelSizeRK4vec2IfE:
LFB59:
	.cfi_startproc
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %ecx
	cmpl	%ecx, _gl
	jne	L1372
	movss	(%eax), %xmm0
	ucomiss	__ZL22polymost1HalfTexelSize, %xmm0
	jp	L1367
	jne	L1367
	movss	4(%eax), %xmm1
	ucomiss	__ZL22polymost1HalfTexelSize+4, %xmm1
	jp	L1367
	je	L1372
L1367:
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
L1372:
	ret
	.cfi_endproc
LFE59:
	.p2align 4
	.globl	__Z17polymost_setClampc
	.def	__Z17polymost_setClampc;	.scl	2;	.type	32;	.endef
__Z17polymost_setClampc:
LFB60:
	.cfi_startproc
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %ecx
	cmpl	%ecx, _gl
	jne	L1382
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
	je	L1377
	ucomiss	__ZL14polymost1Clamp.lto_priv.0+4, %xmm1
	setnp	%al
	cmovne	%edx, %eax
	testb	%al, %al
	je	L1377
L1382:
	ret
	.p2align 4,,10
	.p2align 3
L1377:
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
LFE60:
	.p2align 4
	.globl	__Z22polymost_setVisibilityf
	.def	__Z22polymost_setVisibilityf;	.scl	2;	.type	32;	.endef
__Z22polymost_setVisibilityf:
LFB61:
	.cfi_startproc
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L1392
	cmpl	$3, _rendmode
	je	L1395
L1394:
	movss	LC112, %xmm0
L1388:
	mulss	_fviewingrange, %xmm0
	mulss	LC113, %xmm0
	ucomiss	__ZL18polymost1VisFactor, %xmm0
	jp	L1390
	je	L1392
L1390:
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
L1392:
	ret
	.p2align 4,,10
	.p2align 3
L1395:
	movl	_r_useindexedcolortextures, %edx
	testl	%edx, %edx
	je	L1394
	movl	_gltexfiltermode, %eax
	testl	%eax, %eax
	je	L1388
	jmp	L1394
	.cfi_endproc
LFE61:
	.p2align 4
	.globl	__Z25polymost_useDetailMappingc
	.def	__Z25polymost_useDetailMappingc;	.scl	2;	.type	32;	.endef
__Z25polymost_useDetailMappingc:
LFB63:
	.cfi_startproc
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %ecx
	cmpl	%ecx, _gl
	jne	L1405
	movzbl	%al, %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	ucomiss	__ZL25polymost1UseDetailMapping.lto_priv.0, %xmm0
	jp	L1400
	je	L1405
L1400:
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	testb	%al, %al
	jne	L1407
L1399:
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
L1405:
	ret
	.p2align 4,,10
	.p2align 3
L1407:
	.cfi_def_cfa_offset 16
	movl	__ZL32polymost1ExtendedShaderProgramID.lto_priv.0, %eax
	movl	%edx, 8(%esp)
	call	__ZL32polymost_setCurrentShaderProgramj.lto_priv.0
	movl	8(%esp), %edx
	jmp	L1399
	.cfi_endproc
LFE63:
	.p2align 4
	.globl	__Z23polymost_useGlowMappingc
	.def	__Z23polymost_useGlowMappingc;	.scl	2;	.type	32;	.endef
__Z23polymost_useGlowMappingc:
LFB65:
	.cfi_startproc
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %ecx
	cmpl	%ecx, _gl
	jne	L1417
	movzbl	%al, %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	ucomiss	__ZL23polymost1UseGlowMapping.lto_priv.0, %xmm0
	jp	L1412
	je	L1417
L1412:
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	testb	%al, %al
	jne	L1419
L1411:
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
L1417:
	ret
	.p2align 4,,10
	.p2align 3
L1419:
	.cfi_def_cfa_offset 16
	movl	__ZL32polymost1ExtendedShaderProgramID.lto_priv.0, %eax
	movl	%edx, 8(%esp)
	call	__ZL32polymost_setCurrentShaderProgramj.lto_priv.0
	movl	8(%esp), %edx
	jmp	L1411
	.cfi_endproc
LFE65:
	.p2align 4
	.globl	__Z22polymost_npotEmulationcff
	.def	__Z22polymost_npotEmulationcff;	.scl	2;	.type	32;	.endef
__Z22polymost_npotEmulationcff:
LFB67:
	.cfi_startproc
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %edx
	cmpl	%edx, _gl
	jne	L1425
	movzbl	%al, %eax
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	ucomiss	__ZL22polymost1NPOTEmulation+8, %xmm2
	jp	L1423
	je	L1425
L1423:
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	xorps	%xmm3, %xmm3
	movss	LC4, %xmm2
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
L1425:
	ret
	.cfi_endproc
LFE67:
	.p2align 4
	.globl	__ZL16polymost_bindPthPK8pthtyp_t.lto_priv.0
	.def	__ZL16polymost_bindPthPK8pthtyp_t.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL16polymost_bindPthPK8pthtyp_t.lto_priv.0:
LFB69:
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
	movups	LC114, %xmm0
	movl	$0x00000000, 8(%esp)
	andw	$514, %ax
	movl	$0x00000000, 12(%esp)
	movups	%xmm0, 16(%esp)
	cmpw	$512, %ax
	je	L1435
L1428:
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
L1435:
	.cfi_restore_state
	movswl	32(%ebx), %eax
	movl	_waloff(,%eax,4), %ecx
	testl	%ecx, %ecx
	jne	L1429
	movl	_tiles+12, %edx
	testl	%edx, %edx
	je	L1428
	movswl	_tilesiz+2(,%eax,4), %esi
	movl	_tiles+4, %ecx
	movl	_tiles+8, %edx
	movswl	_tilesiz(,%eax,4), %eax
	movl	%esi, %edi
L1430:
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	xorps	%xmm3, %xmm3
	movzwl	%cx, %esi
	movss	LC60, %xmm2
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
	jmp	L1428
	.p2align 4,,10
	.p2align 3
L1429:
	leal	1(%eax), %edx
	cmpl	$30720, %edx
	ja	L1428
	leal	(%edx,%edx,4), %edx
	leal	_tiles(,%edx,4), %edx
	movl	12(%edx), %ecx
	testl	%ecx, %ecx
	je	L1428
	movswl	_tilesiz+2(,%eax,4), %esi
	movl	%esi, %edi
	cmpl	%esi, %ecx
	jb	L1428
	movswl	_tilesiz(,%eax,4), %eax
	cmpl	%eax, 16(%edx)
	jb	L1428
	movl	4(%edx), %ecx
	movl	8(%edx), %edx
	jmp	L1430
	.cfi_endproc
LFE69:
	.section .rdata,"dr"
	.align 4
LC115:
	.ascii "Unable to use persistent stream buffers: required extensions missing.\0"
	.text
	.p2align 4
	.globl	__Z21polymost_initdrawpolyv
	.def	__Z21polymost_initdrawpolyv;	.scl	2;	.type	32;	.endef
__Z21polymost_initdrawpolyv:
LFB72:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	movl	_r_persistentStreamBuffer, %eax
	testl	%eax, %eax
	je	L1437
	movzwl	_glinfo+28, %edx
	notl	%edx
	testw	$8194, %dx
	je	L1437
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$2, %eax
	jg	L1457
L1440:
	movl	$0, _r_persistentStreamBuffer
	xorl	%edx, %edx
	jmp	L1439
	.p2align 4,,10
	.p2align 3
L1437:
	testl	%eax, %eax
	setne	%dl
L1439:
	movl	_r_drawpolyVertsBufferLength, %eax
	movb	%dl, __ZL22persistentStreamBuffer.lto_priv.0
	movl	$0, __ZL19drawpolyVertsOffset.lto_priv.0
	movl	%eax, __ZL25drawpolyVertsBufferLength.lto_priv.0
	movl	_drawpolyVertsID, %eax
	movl	$0, __ZL27drawpolyVertsSubBufferIndex.lto_priv.0
	movl	%eax, (%esp)
	call	*_glad_glIsBuffer
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	testb	%al, %al
	je	L1441
	movl	$_drawpolyVertsID, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glDeleteBuffers
	.cfi_def_cfa_offset 16
	subl	$8, %esp
	.cfi_def_cfa_offset 24
L1441:
	movl	$_drawpolyVertsID, 4(%esp)
	xorl	%ebx, %ebx
	movl	$1, (%esp)
	call	*_glad_glGenBuffers
	.cfi_def_cfa_offset 16
	subl	$8, %esp
	.cfi_def_cfa_offset 24
L1443:
	movl	__ZL17drawpolyVertsSync.lto_priv.0(,%ebx,4), %eax
	movl	%eax, (%esp)
	call	*_glad_glIsSync
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	testb	%al, %al
	je	L1442
	movl	__ZL17drawpolyVertsSync.lto_priv.0(,%ebx,4), %eax
	movl	%eax, (%esp)
	call	*_glad_glDeleteSync
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
L1442:
	addl	$1, %ebx
	cmpl	$3, %ebx
	jne	L1443
	movl	_drawpolyVertsID, %edx
	movl	$34962, %eax
	movl	$0, __ZL17drawpolyVertsSync.lto_priv.0
	movl	$0, __ZL17drawpolyVertsSync.lto_priv.0+4
	movl	$0, __ZL17drawpolyVertsSync.lto_priv.0+8
	call	__Z18buildgl_bindBufferjj
	movl	__ZL25drawpolyVertsBufferLength.lto_priv.0, %eax
	cmpb	$0, __ZL22persistentStreamBuffer.lto_priv.0
	je	L1444
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
	movl	%eax, __ZL13drawpolyVerts.lto_priv.0
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
L1444:
	.cfi_restore_state
	leal	(%eax,%eax,4), %eax
	movl	$35040, 12(%esp)
	sall	$2, %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$__ZL25defaultDrawpolyVertsArray, __ZL13drawpolyVerts.lto_priv.0
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
L1457:
	.cfi_restore_state
	movl	$LC115, 12(%esp)
	movl	$894, 8(%esp)
	movl	$LC85, 4(%esp)
	movl	$3, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1440
	.cfi_endproc
LFE72:
	.section .rdata,"dr"
	.align 4
LC116:
	.ascii "Failed syncing mmap texcache: %s (%d).\0"
LC117:
	.ascii "source/build/src/texcache.cpp\0"
	.text
	.p2align 4
	.globl	_polymost_glreset
	.def	_polymost_glreset;	.scl	2;	.type	32;	.endef
_polymost_glreset:
LFB73:
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
	je	L1528
L1459:
	movss	LC6, %xmm1
	movl	$_fogtable, %edx
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L1460:
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
	jne	L1460
	movl	__ZL11gltexcacnum, %edx
	xorl	%esi, %esi
	testl	%edx, %edx
	js	L1529
	.p2align 4
	.p2align 3
L1461:
	movl	_texcache+44(,%esi,4), %ebx
	testl	%ebx, %ebx
	je	L1463
	movl	%esi, -108(%ebp)
	jmp	L1488
	.p2align 4,,10
	.p2align 3
L1533:
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
	je	L1478
	movl	_tlsCacheBuckets@secrel32(%eax), %ecx
	subl	%ecx, %edi
	movl	%ecx, -104(%ebp)
	movzbl	_tlsCacheBuckets@secrel32+60(%eax), %ecx
	movl	%edi, -92(%ebp)
	cmpb	$9, %cl
	jbe	L1530
	movl	_tlsCacheBuckets@secrel32+56(%eax), %edi
	movl	%edi, -88(%ebp)
	movl	_tlsCacheBuckets@secrel32+4(%eax), %edi
	movl	%edi, -96(%ebp)
	cmpl	%edx, -88(%ebp)
	jnb	L1480
	movl	-88(%ebp), %ecx
	movl	-92(%ebp), %esi
	movl	%esi, (%edi,%ecx,4)
	addl	$1, %ecx
	movl	%ecx, _tlsCacheBuckets@secrel32+56(%eax)
L1476:
	testl	%ebx, %ebx
	je	L1531
L1488:
	movl	%ebx, %edi
	movl	(%ebx), %ebx
	testb	$16, 34(%edi)
	je	L1464
	movl	4(%edi), %eax
	movl	$1, (%esp)
	addl	$12, %eax
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteTextures
	movl	4(%edi), %esi
	subl	$8, %esp
	cmpl	$16384, %esi
	jbe	L1464
	movl	_g_sm_heap, %ecx
	movl	%esi, %eax
	xorl	%edx, %edx
	subl	12(%ecx), %eax
	divl	4(%ecx)
	cmpl	(%ecx), %eax
	jnb	L1465
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
	je	L1466
	movl	_tlsCacheBuckets@secrel32(%edx), %ecx
	subl	%ecx, %esi
	movl	%ecx, -112(%ebp)
	movzbl	_tlsCacheBuckets@secrel32+60(%edx), %ecx
	movl	%esi, -96(%ebp)
	cmpb	$9, %cl
	jbe	L1532
	movl	_tlsCacheBuckets@secrel32+56(%edx), %esi
	movl	%esi, -92(%ebp)
	movl	_tlsCacheBuckets@secrel32+4(%edx), %esi
	movl	%esi, -100(%ebp)
	cmpl	%eax, -92(%ebp)
	jnb	L1468
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %ecx
	movl	%eax, (%esi,%ecx,4)
	leal	1(%ecx), %eax
	movl	%eax, _tlsCacheBuckets@secrel32+56(%edx)
	.p2align 4
	.p2align 3
L1464:
	leal	12(%edi), %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteTextures
	subl	$8, %esp
	cmpl	$16384, %edi
	jbe	L1476
	movl	_g_sm_heap, %ecx
	movl	%edi, %eax
	xorl	%edx, %edx
	subl	12(%ecx), %eax
	divl	4(%ecx)
	movl	%eax, %esi
	cmpl	(%ecx), %eax
	jb	L1533
	movl	%edi, %eax
	call	_mi_free
	testl	%ebx, %ebx
	jne	L1488
L1531:
	movl	-108(%ebp), %esi
L1463:
	movl	$0, _texcache+44(,%esi,4)
	addl	$1, %esi
	cmpl	$8192, %esi
	jne	L1461
	xorl	%eax, %eax
	call	_clearskins
L1462:
	movl	__ZL12polymosttext.lto_priv.0, %eax
	testl	%eax, %eax
	je	L1489
	movl	$__ZL12polymosttext.lto_priv.0, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glDeleteTextures
	subl	$8, %esp
L1489:
	movl	$0, __ZL12polymosttext.lto_priv.0
	call	_md_freevbos
	movl	_texcache+28, %eax
	testl	%eax, %eax
	je	L1490
	movl	%eax, (%esp)
	call	*__imp___fileno
	movl	%eax, (%esp)
	call	_filelength
	testl	%eax, %eax
	jle	L1490
	cmpl	$-1, _texcache+16
	je	L1490
	leal	-48(%ebp), %eax
	movl	$_texcache, %ecx
	movl	%eax, (%esp)
	call	__ZN3mio10basic_mmapILNS_11access_modeE1EcE4syncILS1_1EEENSt9enable_ifIXeqT_LS1_1EEvE4typeERSt10error_code.constprop.0
	movl	-48(%ebp), %ebx
	subl	$4, %esp
	testl	%ebx, %ebx
	jne	L1534
L1490:
	cmpb	$0, _nogl
	je	L1535
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
L1465:
	.cfi_restore_state
	movl	%esi, %eax
	call	_mi_free
	jmp	L1464
	.p2align 4,,10
	.p2align 3
L1478:
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
L1487:
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	-84(%ebp), %ebx
	movl	%eax, (%edi)
	movl	%edx, 4(%edi)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	lock cmpxchg8b	(%esi)
	je	L1526
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	jmp	L1487
	.p2align 4,,10
	.p2align 3
L1530:
	movl	-96(%ebp), %esi
	movl	-100(%ebp), %edi
	leal	_tlsCacheBuckets@secrel32(%esi,%edi), %edx
	movl	-92(%ebp), %esi
	movl	%esi, 12(%edx,%ecx,4)
	addb	$1, _tlsCacheBuckets@secrel32+60(%eax)
	jmp	L1476
	.p2align 4,,10
	.p2align 3
L1480:
	movl	-88(%ebp), %edi
	movl	$1, %edx
	shrl	%edi
	je	L1481
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
	jnb	L1499
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
	jnb	L1482
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
L1483:
	movl	_tlsCacheBuckets@secrel32+4(%eax), %ecx
	leal	(%esi,%edx), %ebx
	movl	(%ecx,%edx,4), %ecx
	movl	%ebx, (%edi)
	addl	$1, %edx
	movl	%ecx, 4(%edi)
	movl	_tlsCacheBuckets@secrel32(%eax), %edi
	addl	%ecx, %edi
	cmpl	_tlsCacheBuckets@secrel32+56(%eax), %edx
	jb	L1483
	movl	-88(%ebp), %ebx
	movl	-104(%ebp), %esi
	movl	%edi, -96(%ebp)
L1482:
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
L1485:
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	-88(%ebp), %ebx
	movl	-104(%ebp), %ecx
	movl	%eax, (%edi)
	movl	%edx, 4(%edi)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	lock cmpxchg8b	(%esi)
	je	L1502
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	jmp	L1485
	.p2align 4,,10
	.p2align 3
L1502:
	movl	-96(%ebp), %esi
	movl	-84(%ebp), %edi
	movl	__tls_index, %ecx
	movl	-112(%ebp), %ebx
	movl	%esi, %eax
	sall	$6, %eax
	addl	(%edi,%ecx,4), %eax
	movl	_tlsCacheBuckets@secrel32+56(%eax), %edx
	subl	-100(%ebp), %edx
L1481:
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
	jmp	L1476
	.p2align 4,,10
	.p2align 3
L1466:
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
L1475:
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	-84(%ebp), %edi
	movl	-88(%ebp), %ebx
	movl	%eax, (%esi)
	movl	%edx, 4(%esi)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	lock cmpxchg8b	(%edi)
	je	L1525
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	jmp	L1475
	.p2align 4,,10
	.p2align 3
L1526:
	movl	-88(%ebp), %ebx
	jmp	L1476
	.p2align 4,,10
	.p2align 3
L1532:
	movl	-104(%ebp), %esi
	movl	-100(%ebp), %eax
	leal	_tlsCacheBuckets@secrel32(%eax,%esi), %eax
	movl	-96(%ebp), %esi
	movl	%esi, 12(%eax,%ecx,4)
	addb	$1, _tlsCacheBuckets@secrel32+60(%edx)
	jmp	L1464
	.p2align 4,,10
	.p2align 3
L1468:
	movl	-92(%ebp), %esi
	movl	$1, %eax
	shrl	%esi
	je	L1469
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
	jnb	L1497
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
	jnb	L1470
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
L1471:
	movl	_tlsCacheBuckets@secrel32+4(%edx), %ecx
	leal	(%edi,%eax), %ebx
	movl	(%ecx,%eax,4), %ecx
	movl	%ebx, (%esi)
	addl	$1, %eax
	movl	%ecx, 4(%esi)
	movl	_tlsCacheBuckets@secrel32(%edx), %esi
	addl	%ecx, %esi
	cmpl	_tlsCacheBuckets@secrel32+56(%edx), %eax
	jb	L1471
	movl	-92(%ebp), %ebx
	movl	-112(%ebp), %edi
	movl	%esi, -100(%ebp)
L1470:
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
L1473:
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	-92(%ebp), %ebx
	movl	-112(%ebp), %ecx
	movl	%eax, (%esi)
	movl	%edx, 4(%esi)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	lock cmpxchg8b	(%edi)
	je	L1500
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	jmp	L1473
L1500:
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %esi
	movl	__tls_index, %ecx
	movl	-116(%ebp), %ebx
	sall	$6, %eax
	movl	-100(%ebp), %edi
	addl	(%esi,%ecx,4), %eax
	movl	_tlsCacheBuckets@secrel32+56(%eax), %eax
	subl	-104(%ebp), %eax
L1469:
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
	jmp	L1464
	.p2align 4,,10
	.p2align 3
L1525:
	movl	-92(%ebp), %ebx
	movl	-96(%ebp), %edi
	jmp	L1464
L1499:
	movl	-116(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	L1482
L1497:
	movl	-120(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L1470
L1529:
	movss	LC50, %xmm0
	movl	$0, __ZL11gltexcacnum
	movl	$0x00000000, _gsinang2
	movl	$0x00000000, _gsinang
	movss	%xmm0, _gcosang2
	movss	%xmm0, _gcosang
	jmp	L1462
L1528:
	cmpl	$33984, _gl+4
	je	L1459
	movl	$33984, _gl+4
	movl	$33984, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
	jmp	L1459
L1535:
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
L1534:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1492
	movl	-44(%ebp), %eax
	leal	-40(%ebp), %ecx
	movl	(%eax), %edx
	movl	%eax, (%esp)
	movl	%ebx, 4(%esp)
	call	*16(%edx)
	subl	$8, %esp
	movl	%ebx, 20(%esp)
	movl	-40(%ebp), %eax
	movl	$LC116, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$278, 8(%esp)
	movl	$LC117, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	-40(%ebp), %eax
	leal	-32(%ebp), %edx
	cmpl	%edx, %eax
	je	L1492
	call	_mi_free
L1492:
	movl	$_texcache, %ecx
	call	__ZN3mio10basic_mmapILNS_11access_modeE1EcE5unmapEv
	jmp	L1490
	.cfi_endproc
LFE73:
	.p2align 4
	.globl	__ZL11fogcalc_oldii.lto_priv.0
	.def	__ZL11fogcalc_oldii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL11fogcalc_oldii.lto_priv.0:
LFB91:
	.cfi_startproc
	movss	_gvisibility, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	cmpl	$1, _r_usenewshading
	je	L1545
	testl	%eax, %eax
	js	L1546
	mulss	LC120, %xmm0
	cmpl	$239, %edx
	jle	L1542
L1547:
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
L1539:
	movss	LC52, %xmm0
	comiss	%xmm1, %xmm0
	jnb	L1543
	movss	LC121, %xmm2
	movaps	%xmm2, %xmm0
	cmpless	%xmm1, %xmm0
	andps	%xmm0, %xmm2
	andnps	%xmm1, %xmm0
	orps	%xmm2, %xmm0
L1543:
	movss	%xmm0, __ZL9fogresult.lto_priv.0
	ret
	.p2align 4,,10
	.p2align 3
L1546:
	mulss	LC119, %xmm0
	cmpl	$239, %edx
	jg	L1547
L1542:
	addl	$16, %edx
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%edx, %xmm2
	addss	%xmm2, %xmm0
	mulss	%xmm0, %xmm1
	jmp	L1539
	.p2align 4,,10
	.p2align 3
L1545:
	mulss	LC118, %xmm0
	cmpl	$239, %edx
	jle	L1542
	subl	$240, %edx
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%edx, %xmm2
	addss	%xmm2, %xmm0
	mulss	%xmm0, %xmm1
	jmp	L1539
	.cfi_endproc
LFE91:
	.p2align 4
	.globl	_calc_and_apply_fog
	.def	_calc_and_apply_fog;	.scl	2;	.type	32;	.endef
_calc_and_apply_fog:
LFB92:
	.cfi_startproc
	cmpl	$0, _nofog
	jne	L1573
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
	je	L1576
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
	jle	L1577
	leal	16(%edx), %eax
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	_globalvisibility, %xmm0
	movzbl	%al, %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	L1556
	jne	L1556
	cmpl	$2, %esi
	jne	L1558
	testl	%ebx, %ebx
	jg	L1578
L1558:
	movl	$0x7212699f, __ZL9fogresult.lto_priv.0
	movl	$0x72177617, __ZL10fogresult2.lto_priv.0
L1555:
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
	jle	L1579
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
L1576:
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
	je	L1553
	movl	_globalvisibility, %eax
	testl	%eax, %eax
	jle	L1553
	addl	$16, %edx
	xorps	%xmm2, %xmm2
	xorps	%xmm1, %xmm1
	movss	_frealmaxshade, %xmm3
	movss	LC123, %xmm0
	movzbl	%dl, %edx
	movss	LC124, %xmm4
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
L1552:
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
L1573:
	ret
	.p2align 4,,10
	.p2align 3
L1556:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movswl	_numshades, %eax
	subl	$1, %eax
	cmpl	$3, %esi
	je	L1580
	movss	LC4, %xmm1
	divss	%xmm0, %xmm1
L1561:
	imull	$-600, %ebx, %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	mulss	%xmm1, %xmm0
L1562:
	movss	%xmm0, __ZL9fogresult.lto_priv.0
	subl	%ebx, %eax
	xorps	%xmm0, %xmm0
	imull	$600, %eax, %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, __ZL10fogresult2.lto_priv.0
	jmp	L1555
	.p2align 4,,10
	.p2align 3
L1553:
	movss	LC122, %xmm0
	xorps	%xmm1, %xmm1
	jmp	L1552
	.p2align 4,,10
	.p2align 3
L1579:
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
L1577:
	.cfi_restore_state
	movl	%ebx, %eax
	call	__ZL11fogcalc_oldii.lto_priv.0
	jmp	L1555
	.p2align 4,,10
	.p2align 3
L1580:
	cmpl	%eax, %ebx
	jl	L1560
	movl	$0xbf800000, __ZL9fogresult.lto_priv.0
	movl	$0x00000000, __ZL10fogresult2.lto_priv.0
	jmp	L1555
	.p2align 4,,10
	.p2align 3
L1560:
	movss	LC4, %xmm1
	divss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	testl	%ebx, %ebx
	jg	L1562
	jmp	L1561
	.p2align 4,,10
	.p2align 3
L1578:
	movswl	_numshades, %eax
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	movl	$0xf212699f, __ZL9fogresult.lto_priv.0
	cvtsi2ssl	%ebx, %xmm1
	subl	$1, %eax
	subl	%ebx, %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	LC126, %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, __ZL10fogresult2.lto_priv.0
	jmp	L1555
	.cfi_endproc
LFE92:
	.p2align 4
	.globl	__ZL13resizeglcheckv.lto_priv.0
	.def	__ZL13resizeglcheckv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL13resizeglcheckv.lto_priv.0:
LFB95:
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
	je	L1582
	movl	%eax, __ZL17lastglpolygonmode.lto_priv.0
	movl	_glad_glPolygonMode, %edx
	cmpl	$1, %eax
	je	L1583
	cmpl	$2, %eax
	je	L1584
	movl	$6914, 4(%esp)
	movl	$1032, (%esp)
	call	*%edx
	movl	_r_polygonmode, %eax
	subl	$8, %esp
L1582:
	movss	LC4, %xmm1
	testl	%eax, %eax
	je	L1585
	movss	%xmm1, 8(%esp)
	movss	%xmm1, 4(%esp)
	movss	%xmm1, (%esp)
	movl	$0x00000000, 12(%esp)
	call	*_glad_glClearColor
	subl	$16, %esp
	movl	$16640, (%esp)
	call	*_glad_glClear
	movss	LC4, %xmm1
	subl	$4, %esp
L1585:
	movl	_windowxy1, %ebx
	movl	_windowxy2, %edx
	subl	%ebx, %edx
	leal	1(%edx), %edi
	cmpl	$1, _glprojectionhacks
	je	L1586
L1588:
	movss	%xmm1, -84(%ebp)
	movaps	%xmm1, %xmm0
L1587:
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
	movss	LC4, %xmm1
	subl	$4, %esp
L1589:
	movl	$0, -76(%ebp,%eax)
	movl	$0, -72(%ebp,%eax)
	movl	$0, -68(%ebp,%eax)
	movl	$0, -64(%ebp,%eax)
	addl	$16, %eax
	cmpl	$48, %eax
	jb	L1589
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
	fmuls	LC128
	movss	%xmm1, -36(%ebp)
	fdivrs	LC129
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
	movss	LC73, %xmm0
	movaps	%xmm0, %xmm3
	addss	%xmm2, %xmm0
	subss	%xmm2, %xmm3
	mulss	LC74, %xmm2
	xorps	LC48, %xmm2
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
	movss	LC4, %xmm1
	testl	%eax, %eax
	je	L1599
L1581:
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
L1583:
	.cfi_restore_state
	movl	$6913, 4(%esp)
	movl	$1032, (%esp)
	call	*%edx
	movl	_r_polygonmode, %eax
	subl	$8, %esp
	jmp	L1582
	.p2align 4,,10
	.p2align 3
L1586:
	movl	_r_yshearing, %edx
	testl	%edx, %edx
	jne	L1588
	call	__ZL18get_projhack_ratiov.part.0.lto_priv.0
	movss	LC4, %xmm6
	fstps	-84(%ebp)
	movss	-84(%ebp), %xmm0
	divss	%xmm0, %xmm6
	movss	%xmm6, -84(%ebp)
	jmp	L1587
	.p2align 4,,10
	.p2align 3
L1599:
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L1581
	ucomiss	__ZL19polymost1FogEnabled.lto_priv.0, %xmm1
	jp	L1593
	je	L1581
L1593:
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
L1584:
	.cfi_restore_state
	movl	$6912, 4(%esp)
	movl	$1032, (%esp)
	call	*%edx
	movl	_r_polygonmode, %eax
	subl	$8, %esp
	jmp	L1582
	.cfi_endproc
LFE95:
	.p2align 4
	.globl	__ZL15fixtransparencyP7coltype4vec2IiES2_i.lto_priv.0
	.def	__ZL15fixtransparencyP7coltype4vec2IiES2_i.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL15fixtransparencyP7coltype4vec2IiES2_i.lto_priv.0:
LFB99:
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
	je	L1600
	subl	$1, %ebp
	andl	$4, %esi
	movl	%edi, 40(%esp)
	.cfi_offset 7, -12
	leal	-1(%edx), %edi
	movl	%ebp, 16(%esp)
	jne	L1716
	movl	16(%esp), %esi
	movl	%edi, 8(%esp)
	movl	%esi, 12(%esp)
L1602:
	movl	16(%esp), %ebx
	testl	%ebx, %ebx
	js	L1698
	testl	%edi, %edi
	js	L1698
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
	je	L1717
	.p2align 4
	.p2align 3
L1644:
	movl	%ebx, 24(%esp)
	movl	28(%esp), %edx
	jmp	L1604
	.p2align 4,,10
	.p2align 3
L1625:
	cmpb	$0, 7(%eax)
	je	L1715
	movzbl	4(%eax), %ebp
	movl	4(%esp), %ecx
	addl	$1, %edi
	addl	%ebp, %esi
	movzbl	5(%eax), %ebp
	addl	%ebp, %ebx
	movzbl	6(%eax), %ebp
	addl	%ebp, (%esp)
	cmpb	$0, 3(%eax,%ecx)
	jne	L1631
	movl	16(%esp), %ebp
	cmpl	%ebp, 12(%esp)
	jg	L1632
L1707:
	cmpl	$1, %edi
	je	L1630
L1633:
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
L1623:
	subl	$1, %edx
	subl	$4, %eax
	cmpl	$-1, %edx
	je	L1718
L1604:
	cmpb	$0, 3(%eax)
	jne	L1623
	testl	%edx, %edx
	je	L1648
	cmpb	$0, -1(%eax)
	je	L1648
	movzbl	-2(%eax), %edi
	movzbl	-4(%eax), %esi
	movzbl	-3(%eax), %ebx
	movl	%edi, (%esp)
	movl	$1, %edi
L1624:
	cmpl	%edx, 8(%esp)
	jg	L1625
L1715:
	movl	4(%esp), %ecx
	cmpb	$0, 3(%eax,%ecx)
	jne	L1631
	movl	16(%esp), %ebp
	cmpl	%ebp, 12(%esp)
	jg	L1632
	cmpl	$1, %edi
	jne	L1623
L1630:
	movb	%bl, 1(%eax)
	movzbl	(%esp), %ebx
	movl	%esi, %ecx
	subl	$1, %edx
	movb	%cl, (%eax)
	subl	$4, %eax
	movb	%bl, 6(%eax)
	cmpl	$-1, %edx
	jne	L1604
	.p2align 4
	.p2align 3
L1718:
	subl	$1, 16(%esp)
	movl	16(%esp), %edx
	movl	24(%esp), %ebx
	addl	4(%esp), %ebx
	movl	%ebx, %eax
	testl	%edx, %edx
	jne	L1644
L1717:
	movl	28(%esp), %edi
	jmp	L1622
	.p2align 4,,10
	.p2align 3
L1606:
	cmpb	$0, -1(%eax)
	jne	L1620
	cmpl	%edi, 8(%esp)
	jg	L1645
	movl	12(%esp), %edx
	testl	%edx, %edx
	jle	L1605
	movl	20(%esp), %esi
	cmpb	$0, 3(%eax,%esi)
	je	L1605
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	xorl	%edx, %edx
	.p2align 4
	.p2align 3
L1610:
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
	je	L1614
	cmpl	$1, %ebp
	je	L1609
L1615:
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
L1605:
	subl	$1, %edi
	subl	$4, %eax
	cmpl	$-1, %edi
	je	L1698
L1622:
	cmpb	$0, 3(%eax)
	jne	L1605
	testl	%edi, %edi
	jne	L1606
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
L1621:
	cmpl	%edi, 8(%esp)
	jle	L1705
L1607:
	cmpb	$0, 7(%eax)
	je	L1705
	movzbl	4(%eax), %ebp
	addl	$1, %esi
	addl	%ebp, %ebx
	movzbl	5(%eax), %ebp
	addl	%ebp, %ecx
	movzbl	6(%eax), %ebp
	addl	%ebp, %edx
	movl	12(%esp), %ebp
	testl	%ebp, %ebp
	jg	L1618
L1699:
	cmpl	$1, %esi
	jne	L1615
L1609:
	subl	$1, %edi
	movb	%bl, (%eax)
	subl	$4, %eax
	movb	%cl, 5(%eax)
	movb	%dl, 6(%eax)
	cmpl	$-1, %edi
	jne	L1622
	.p2align 4
	.p2align 3
L1698:
	movl	40(%esp), %edi
	.cfi_restore 7
L1600:
	movl	32(%esp), %ebx
	movl	36(%esp), %esi
	movl	44(%esp), %ebp
	addl	$48, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
L1716:
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
	jmp	L1602
	.p2align 4,,10
	.p2align 3
L1648:
	movl	$0, (%esp)
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	jmp	L1624
	.p2align 4,,10
	.p2align 3
L1631:
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
	jle	L1634
	movl	20(%esp), %ecx
	cmpb	$0, 3(%eax,%ecx)
	je	L1634
L1635:
	movl	20(%esp), %ecx
	movzbl	(%eax,%ecx), %ebp
	addl	%ebp, %esi
	movzbl	1(%eax,%ecx), %ebp
	addl	%ebp, %ebx
	movzbl	2(%eax,%ecx), %ebp
	addl	%ebp, (%esp)
	leal	1(%edi), %ebp
	cmpl	$2, %edi
	je	L1640
	cmpl	$4, %ebp
	je	L1641
	cmpl	$1, %ebp
	jne	L1633
	jmp	L1630
	.p2align 4,,10
	.p2align 3
L1634:
	cmpl	$3, %edi
	jne	L1707
L1640:
	imull	$85, %esi, %esi
	imull	$85, %ebx, %ebx
	leal	128(%esi), %ecx
	movb	%ch, (%eax)
	imull	$85, (%esp), %ecx
	subl	$-128, %ebx
	movb	%bh, 1(%eax)
	subl	$-128, %ecx
	movb	%ch, 2(%eax)
	jmp	L1623
	.p2align 4,,10
	.p2align 3
L1632:
	movl	20(%esp), %ecx
	cmpb	$0, 3(%eax,%ecx)
	jne	L1635
	cmpl	$1, %edi
	je	L1630
	cmpl	$2, %edi
	je	L1633
	jmp	L1623
	.p2align 4,,10
	.p2align 3
L1641:
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
	jmp	L1623
	.p2align 4,,10
	.p2align 3
L1705:
	movl	12(%esp), %ebp
	testl	%ebp, %ebp
	jg	L1608
L1701:
	cmpl	$1, %esi
	jne	L1605
	jmp	L1609
	.p2align 4,,10
	.p2align 3
L1620:
	movzbl	-4(%eax), %ebx
	movzbl	-3(%eax), %ecx
	movl	$1, %esi
	movzbl	-2(%eax), %edx
	jmp	L1621
	.p2align 4,,10
	.p2align 3
L1608:
	movl	20(%esp), %ebp
	cmpb	$0, 3(%eax,%ebp)
	jne	L1610
	jmp	L1701
	.p2align 4,,10
	.p2align 3
L1614:
	imull	$85, %ebx, %ebx
	imull	$85, %ecx, %ecx
	imull	$85, %edx, %edx
	subl	$-128, %ebx
	subl	$-128, %ecx
	movb	%bh, (%eax)
	subl	$-128, %edx
	movb	%ch, 1(%eax)
	movb	%dh, 2(%eax)
	jmp	L1605
	.p2align 4,,10
	.p2align 3
L1645:
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	L1607
	.p2align 4,,10
	.p2align 3
L1618:
	movl	20(%esp), %ebp
	cmpb	$0, 3(%eax,%ebp)
	jne	L1610
	jmp	L1699
	.cfi_endproc
LFE99:
	.p2align 4
	.globl	__Z13uploadtexturei4vec2IiEiP7coltypeS0_i
	.def	__Z13uploadtexturei4vec2IiEiP7coltypeS0_i;	.scl	2;	.type	32;	.endef
__Z13uploadtexturei4vec2IiEiP7coltypeS0_i:
LFB100:
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
	jne	L1723
	movl	_glusetexcompr, %eax
	cmpl	$2, %eax
	je	L1722
	testb	$4, 150(%esp)
	jne	L1723
	testl	%eax, %eax
	jne	L1722
L1723:
	movl	_gltexmaxsize, %ecx
	movl	$32856, 92(%esp)
	testl	%ecx, %ecx
	jle	L1724
L1827:
	movl	$1, %eax
	leal	-1(%ecx), %esi
	sall	%cl, %eax
L1725:
	movl	_gltexmiplevel, %edx
	cmpl	%edx, %esi
	cmovle	%esi, %edx
L1727:
	xorl	%ecx, %ecx
	testl	%edx, %edx
	cmovns	%edx, %ecx
	movl	%ecx, 80(%esp)
L1728:
	movl	80(%esp), %esi
	movl	%esi, _gltexmiplevel
	movl	%esi, %ecx
	jmp	L1730
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1731:
	addl	$1, %ecx
L1730:
	movl	%ebx, %edx
	sarl	%cl, %edx
	cmpl	%eax, %edx
	jg	L1731
	movl	%edi, %edx
	sarl	%cl, %edx
	cmpl	%eax, %edx
	jg	L1731
	movl	%ecx, 80(%esp)
	testb	$32, 149(%esp)
	je	L1732
	testw	$1040, 149(%esp)
	movl	_r_downsize, %eax
	sete	%dl
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	testb	%dl, %dl
	cmove	%ecx, %eax
	movl	%eax, 80(%esp)
L1732:
	movl	_glusetexcache, %esi
	testl	%esi, %esi
	jne	L1734
	movl	_gltexfiltermode, %eax
	leal	(%eax,%eax,2), %eax
	movl	_glfiltermodes+4(,%eax,4), %eax
	subl	$9728, %eax
	cmpl	$1, %eax
	jbe	L1818
L1734:
	movl	80(%esp), %eax
	testl	%eax, %eax
	je	L1769
L1739:
	cmpl	$1, %ebx
	jg	L1737
	cmpl	$1, %edi
	jle	L1719
L1737:
	movl	148(%esp), %eax
	movl	%ebp, 124(%esp)
	.cfi_offset 5, -8
	movl	$1, 72(%esp)
	andl	$-2093057, %eax
	movl	%eax, 100(%esp)
	.p2align 4
	.p2align 3
L1802:
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
L1765:
	movl	%ecx, %ebp
	cmpl	%ebx, 40(%esp)
	jg	L1740
	movl	%ecx, 28(%esp)
	movl	$1, %edi
	movl	%ebx, 56(%esp)
	jmp	L1748
	.p2align 4,,10
	.p2align 3
L1820:
	movzbl	1(%ebp), %ebx
	movzbl	0(%ebp), %eax
	movl	%edx, 20(%esp)
	movl	$1, 24(%esp)
	movzbl	2(%ebp), %ecx
	movl	%ebx, 16(%esp)
	cmpl	%edi, 32(%esp)
	jg	L1742
L1746:
	movzbl	16(%esp), %edx
	movzbl	20(%esp), %ebx
L1744:
	movb	%al, -2(%esi,%edi,2)
	addl	$8, %ebp
	movb	%dl, -1(%esi,%edi,2)
	movb	%cl, (%esi,%edi,2)
	movb	%bl, 1(%esi,%edi,2)
	addl	$2, %edi
	cmpl	%edi, 36(%esp)
	je	L1819
L1748:
	movzbl	3(%ebp), %edx
	testb	%dl, %dl
	jne	L1820
	movl	$0, 24(%esp)
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	cmpl	%edi, 32(%esp)
	jle	L1746
L1742:
	movzbl	7(%ebp), %edx
	testb	%dl, %dl
	je	L1746
	movzbl	4(%ebp), %ebx
	addl	%edx, 20(%esp)
	addl	%ebx, %eax
	movzbl	5(%ebp), %ebx
	addl	%ebx, 16(%esp)
	movzbl	6(%ebp), %ebx
	addl	%ebx, %ecx
	cmpl	$1, 24(%esp)
	jne	L1746
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
	jmp	L1744
	.p2align 4,,10
	.p2align 3
L1740:
	movl	64(%esp), %eax
	movl	%ecx, 56(%esp)
	movl	$1, %edi
	movl	%ebx, 60(%esp)
	addl	%ecx, %eax
	movl	%eax, 16(%esp)
	jmp	L1764
	.p2align 4,,10
	.p2align 3
L1823:
	movzbl	1(%ebp), %ecx
	movzbl	2(%ebp), %edx
	movl	$1, 20(%esp)
	movzbl	0(%ebp), %ebx
	movl	%ecx, 24(%esp)
	movl	%edx, 28(%esp)
	cmpl	%edi, 32(%esp)
	jg	L1751
L1824:
	movl	16(%esp), %ecx
	movzbl	3(%ecx), %edx
	testb	%dl, %dl
	jne	L1752
L1753:
	cmpl	$2, 20(%esp)
	jne	L1821
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
L1763:
	movb	%bl, -2(%esi,%edi,2)
	addl	$8, %ebp
	movb	%cl, -1(%esi,%edi,2)
	movb	%dl, (%esi,%edi,2)
	movb	%al, 1(%esi,%edi,2)
	addl	$2, %edi
	addl	$8, 16(%esp)
	cmpl	%edi, 36(%esp)
	je	L1822
L1764:
	movzbl	3(%ebp), %eax
	testb	%al, %al
	jne	L1823
	movl	$0, 20(%esp)
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	cmpl	%edi, 32(%esp)
	jle	L1824
L1751:
	movzbl	7(%ebp), %edx
	testb	%dl, %dl
	jne	L1754
	movl	16(%esp), %ecx
	movzbl	3(%ecx), %edx
	testb	%dl, %dl
	je	L1755
	.p2align 4
	.p2align 3
L1752:
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
	jle	L1817
	movl	16(%esp), %edx
	movzbl	7(%edx), %edx
	testb	%dl, %dl
	jne	L1758
L1817:
	cmpl	$3, 20(%esp)
	jne	L1753
L1760:
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
	jmp	L1763
	.p2align 4,,10
	.p2align 3
L1754:
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
	jne	L1752
L1755:
	movl	16(%esp), %edx
	movzbl	7(%edx), %edx
	testb	%dl, %dl
	je	L1753
L1758:
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
	je	L1760
	cmpl	$4, %ecx
	jne	L1753
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
	jmp	L1763
L1821:
	movzbl	24(%esp), %ecx
	movzbl	28(%esp), %edx
	jmp	L1763
	.p2align 4,,10
	.p2align 3
L1819:
	movl	28(%esp), %ecx
	movl	56(%esp), %ebx
L1749:
	addl	$2, %ebx
	addl	52(%esp), %esi
	addl	48(%esp), %ecx
	cmpl	%ebx, 44(%esp)
	jne	L1765
	movl	84(%esp), %edi
	movl	88(%esp), %esi
	testb	$64, 149(%esp)
	je	L1825
L1766:
	movl	72(%esp), %ebx
	cmpl	%ebx, 80(%esp)
	jle	L1826
L1767:
	addl	$1, 72(%esp)
	cmpl	$1, %edi
	jg	L1802
	cmpl	$1, %esi
	jg	L1802
	movl	124(%esp), %ebp
	.cfi_restore 5
L1719:
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
L1822:
	.cfi_def_cfa_offset 132
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	56(%esp), %ecx
	movl	60(%esp), %ebx
	jmp	L1749
L1826:
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
	jmp	L1767
L1825:
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
	call	__ZL15fixtransparencyP7coltype4vec2IiES2_i.lto_priv.0
	jmp	L1766
L1818:
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
	je	L1769
L1735:
	movl	_glusetexcache, %edx
	testl	%edx, %edx
	jne	L1739
	movl	_gltexfiltermode, %eax
	leal	(%eax,%eax,2), %eax
	movl	_glfiltermodes+4(,%eax,4), %eax
	subl	$9728, %eax
	cmpl	$1, %eax
	ja	L1739
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
L1769:
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
	jmp	L1735
L1722:
	movzbl	_glinfo+29, %eax
	movl	_gltexmaxsize, %ecx
	andl	$64, %eax
	cmpb	$1, %al
	sbbl	%eax, %eax
	andl	$-1174, %eax
	addl	$34030, %eax
	movl	%eax, 92(%esp)
	testl	%ecx, %ecx
	jg	L1827
L1724:
	movl	_glinfo+20, %eax
	testl	%eax, %eax
	jne	L1726
	movl	_gltexmiplevel, %edx
	movl	$64, %eax
	movl	$6, _gltexmaxsize
	cmpl	$4, %edx
	jle	L1727
	movl	$5, 80(%esp)
	jmp	L1728
L1726:
	xorl	%ecx, %ecx
	cmpl	$1, %eax
	jle	L1828
L1729:
	sarl	%eax
	movl	%ecx, %esi
	leal	1(%ecx), %ecx
	cmpl	$1, %eax
	jne	L1729
	movl	%ecx, _gltexmaxsize
	sall	%cl, %eax
	jmp	L1725
L1828:
	movl	$0, _gltexmaxsize
	movl	$1, %eax
	movl	$0, 80(%esp)
	jmp	L1728
	.cfi_endproc
LFE100:
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
	.globl	__ZL13drawpolyVerts.lto_priv.0
	.data
	.align 4
__ZL13drawpolyVerts.lto_priv.0:
	.long	__ZL25defaultDrawpolyVertsArray
	.globl	_glad_glDeleteSync
	.bss
	.align 4
_glad_glDeleteSync:
	.space 4
	.globl	__ZL17drawpolyVertsSync.lto_priv.0
	.align 4
__ZL17drawpolyVertsSync.lto_priv.0:
	.space 12
	.globl	_glad_glIsSync
	.align 4
_glad_glIsSync:
	.space 4
	.globl	__ZL27drawpolyVertsSubBufferIndex.lto_priv.0
	.align 4
__ZL27drawpolyVertsSubBufferIndex.lto_priv.0:
	.space 4
	.globl	__ZL19drawpolyVertsOffset.lto_priv.0
	.align 4
__ZL19drawpolyVertsOffset.lto_priv.0:
	.space 4
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
	.globl	__ZL18polymost1NumShades.lto_priv.0
	.align 4
__ZL18polymost1NumShades.lto_priv.0:
	.long	1115684864
	.long	1015021568
	.globl	__ZL14polymost1Shade.lto_priv.0
	.bss
	.align 4
__ZL14polymost1Shade.lto_priv.0:
	.space 4
	.globl	__ZL19polymost1PalswapPos.lto_priv.0
	.align 4
__ZL19polymost1PalswapPos.lto_priv.0:
	.space 8
.lcomm __ZL22polymost1HalfTexelSize,8,4
	.data
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
	.globl	__ZL21polymost1NumShadesLoc.lto_priv.0
	.align 4
__ZL21polymost1NumShadesLoc.lto_priv.0:
	.long	-1
	.globl	__ZL17polymost1ShadeLoc.lto_priv.0
	.align 4
__ZL17polymost1ShadeLoc.lto_priv.0:
	.long	-1
	.align 4
__ZL17polymost1ClampLoc:
	.long	-1
	.globl	__ZL22polymost1PalswapPosLoc.lto_priv.0
	.align 4
__ZL22polymost1PalswapPosLoc.lto_priv.0:
	.long	-1
	.align 4
__ZL25polymost1HalfTexelSizeLoc:
	.long	-1
	.align 4
__ZL26polymost1TexturePosSizeLoc:
	.long	-1
	.globl	__ZL17paletteTextureIDs.lto_priv.0
	.bss
	.align 32
__ZL17paletteTextureIDs.lto_priv.0:
	.space 1024
	.globl	__ZL12polymosttext.lto_priv.0
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
	.globl	_glad_glGetAttribLocation
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
LC130:
	.ascii "#version 120\12#extension GL_ARB_texture_rectangle : enable\12\12\0"
LC131:
	.ascii "\0"
	.align 4
LC132:
	.ascii "attribute vec4 nextFrameData;\12attribute vec4 nextFrameNormal;\12uniform float frameProgress;\12\12\0"
	.align 4
LC133:
	.ascii "  vec4 currentFramePosition;\12  vec4 nextFramePosition;\12\12  currentFramePosition = curVertex * -(frameProgress - 1.0);\12  nextFramePosition = nextFrameData * frameProgress;\12  curVertex = currentFramePosition + nextFramePosition;\12\12  currentFramePosition = vec4(curNormal, 1.0) * -(frameProgress - 1.0);\12  nextFramePosition = nextFrameNormal * frameProgress;\12  curNormal = vec3(currentFramePosition + nextFramePosition);\12\12\0"
LC134:
	.ascii "#define PR_LIGHTING_PASS\12\12\0"
	.align 4
LC135:
	.ascii "  result = vec4(0.0, 0.0, 0.0, 1.0);\12\12\0"
	.align 4
LC136:
	.ascii "attribute vec3 T;\12attribute vec3 B;\12attribute vec3 N;\12uniform vec3 eyePosition;\12varying vec3 tangentSpaceEyeVec;\12\12#define PR_USE_NORMAL_MAP\12\12\0"
	.align 4
LC137:
	.ascii "  TBN = mat3(T, B, N);\12  tangentSpaceEyeVec = eyePosition - vec3(curVertex);\12  tangentSpaceEyeVec = TBN * tangentSpaceEyeVec;\12\12\0"
	.align 4
LC138:
	.ascii "uniform sampler2D normalMap;\12uniform vec2 normalBias;\12varying vec3 tangentSpaceEyeVec;\12\12#define PR_USE_NORMAL_MAP\12\12\0"
	.align 4
LC139:
	.ascii "  vec4 normalStep;\12  float biasedHeight;\12\12  eyeVec = normalize(tangentSpaceEyeVec);\12\12  for (int i = 0; i < 4; i++) {\12    normalStep = texture2D(normalMap, commonTexCoord.st);\12    biasedHeight = normalStep.a * normalBias.x - normalBias.y;\12    commonTexCoord += (biasedHeight - commonTexCoord.z) * normalStep.z * eyeVec;\12  }\12\12  normalTexel = texture2D(normalMap, commonTexCoord.st);\12\12\0"
LC140:
	.ascii "varying vec3 horizDistance;\12\12\0"
	.align 4
LC141:
	.ascii "  gl_TexCoord[0] = gl_MultiTexCoord0;\12  horizDistance = vec3(gl_ModelViewMatrix * curVertex);\12\12\0"
	.align 4
LC142:
	.ascii "uniform sampler2D artMap;\12uniform sampler2D basePalMap;\12uniform sampler2DRect lookupMap;\12uniform float shadeOffset;\12uniform float visibility;\12varying vec3 horizDistance;\12\12\0"
	.align 4
LC143:
	.ascii "  float shadeLookup = length(horizDistance) * (1.0 / 1.024) * visibility + shadeOffset;\12  float colorIndex = texture2D(artMap, commonTexCoord.st).r * 256.0;\12  float colorIndexNear = texture2DRect(lookupMap, vec2(colorIndex, floor(shadeLookup))).r;\12  float colorIndexFar = texture2DRect(lookupMap, vec2(colorIndex, floor(shadeLookup + 1.0))).r;\12  float colorIndexFullbright = texture2DRect(lookupMap, vec2(colorIndex, 0.0)).r;\12  vec3 texelNear = texture2D(basePalMap, vec2(colorIndexNear, 0.5)).rgb;\12  vec3 texelFar = texture2D(basePalMap, vec2(colorIndexFar, 0.5)).rgb;\12  diffuseTexel.rgb = texture2D(basePalMap, vec2(colorIndexFullbright, 0.5)).rgb;\12\12#ifndef PR_LIGHTING_PASS\12  result.rgb = mix(texelNear, texelFar, fract(shadeLookup));\12  result.a = float(colorIndex != 256.0);\12#endif\12\12\0"
LC144:
	.ascii "uniform vec2 diffuseScale;\12\12\0"
	.align 4
LC145:
	.ascii "  gl_TexCoord[0] = vec4(diffuseScale, 1.0, 1.0) * gl_MultiTexCoord0;\12\12\0"
	.align 4
LC146:
	.ascii "uniform sampler2D diffuseMap;\12\12\0"
	.align 4
LC147:
	.ascii "  diffuseTexel = texture2D(diffuseMap, commonTexCoord.st);\12\12\0"
	.align 4
LC148:
	.ascii "uniform vec2 detailScale;\12varying vec2 fragDetailScale;\12\12\0"
	.align 4
LC149:
	.ascii "  fragDetailScale = detailScale;\12#ifndef PR_USE_NORMAL_MAP\12  gl_TexCoord[1] = vec4(detailScale, 1.0, 1.0) * gl_MultiTexCoord0;\12#endif\12\12\0"
	.align 4
LC150:
	.ascii "uniform sampler2D detailMap;\12varying vec2 fragDetailScale;\12\12\0"
	.align 4
LC151:
	.ascii "#ifndef PR_USE_NORMAL_MAP\12  diffuseTexel *= texture2D(detailMap, gl_TexCoord[1].st);\12#else\12  diffuseTexel *= texture2D(detailMap, commonTexCoord.st * fragDetailScale);\12#endif\12  diffuseTexel.rgb *= 2.0;\12\12\0"
LC152:
	.ascii "  gl_FrontColor = gl_Color;\12\12\0"
	.align 4
LC153:
	.ascii "#ifndef PR_LIGHTING_PASS\12  result *= vec4(gl_Color);\12#endif\12\12\0"
	.align 4
LC154:
	.ascii "#ifndef PR_LIGHTING_PASS\12  result *= diffuseTexel;\12#endif\12\12\0"
	.align 4
LC155:
	.ascii "uniform sampler3D highPalookupMap;\12\12\0"
	.align 4
LC156:
	.ascii "  float highPalScale = 0.9921875; // for 6 bits\12  float highPalBias = 0.00390625;\12\12#ifndef PR_LIGHTING_PASS\12  result.rgb = texture3D(highPalookupMap, result.rgb * highPalScale + highPalBias).rgb;\12#endif\12  diffuseTexel.rgb = texture3D(highPalookupMap, diffuseTexel.rgb * highPalScale + highPalBias).rgb;\12\12\0"
	.align 4
LC157:
	.ascii "uniform sampler2D specMap;\12\12#define PR_USE_SPECULAR_MAP\12\12\0"
	.align 4
LC158:
	.ascii "  specTexel = texture2D(specMap, commonTexCoord.st);\12\12\0"
LC159:
	.ascii "uniform vec2 specMaterial;\12\12\0"
	.align 4
LC160:
	.ascii "  specularMaterial = specMaterial;\12\12\0"
	.align 4
LC161:
	.ascii "uniform sampler2DRect mirrorMap;\12\12\0"
	.align 4
LC162:
	.ascii "  vec2 mirrorCoords = gl_FragCoord.st;\12#ifdef PR_USE_NORMAL_MAP\12  mirrorCoords += 100.0 * (normalTexel.rg - 0.5);\12#endif\12  vec4 mirrorTexel = texture2DRect(mirrorMap, mirrorCoords);\12  result = vec4((result.rgb * -(specTexel.a - 1.0)) + (mirrorTexel.rgb * specTexel.rgb * specTexel.a), result.a);\12\12\0"
LC163:
	.ascii "uniform bool linearFog;\12\0"
	.align 4
LC164:
	.ascii "  float fogFactor;\12  float fragDepth = gl_FragCoord.z / gl_FragCoord.w;\12  if (!linearFog) {\12    fragDepth *= fragDepth;\12    fogFactor = exp2(-gl_Fog.density * gl_Fog.density * fragDepth * 1.442695);\12  } else {\12    fogFactor = gl_Fog.scale * (gl_Fog.end - fragDepth);\12    fogFactor = clamp(fogFactor, 0.0, 1.0);  }\12  result.rgb = mix(gl_Fog.color.rgb, result.rgb, fogFactor);\12\12\0"
LC165:
	.ascii "uniform sampler2D glowMap;\12\12\0"
	.align 4
LC166:
	.ascii "  vec4 glowTexel = texture2D(glowMap, commonTexCoord.st);\12  result = vec4((result.rgb * -(glowTexel.a - 1.0)) + (glowTexel.rgb * glowTexel.a), result.a);\12\12\0"
	.align 4
LC167:
	.ascii "uniform mat4 shadowProjMatrix;\12\12\0"
	.align 4
LC168:
	.ascii "  gl_TexCoord[2] = shadowProjMatrix * curVertex;\12\12\0"
	.align 4
LC169:
	.ascii "uniform sampler2DShadow shadowMap;\12\12\0"
	.align 4
LC170:
	.ascii "  shadowResult = shadow2DProj(shadowMap, gl_TexCoord[2]).a;\12\12\0"
LC171:
	.ascii "uniform sampler2D lightMap;\12\12\0"
	.align 4
LC172:
	.ascii "  lightTexel = texture2D(lightMap, vec2(gl_TexCoord[2].s, -gl_TexCoord[2].t) / gl_TexCoord[2].q).rgb;\12\12\0"
	.align 4
LC173:
	.ascii "uniform vec3 spotDir;\12uniform vec2 spotRadius;\12#define PR_SPOTLIGHT\12\12\0"
	.align 4
LC174:
	.ascii "  spotVector = spotDir;\12  spotCosRadius = spotRadius;\12\12\0"
	.align 4
LC175:
	.ascii "varying vec3 vertexNormal;\12varying vec3 eyeVector;\12varying vec3 lightVector;\12varying vec3 tangentSpaceLightVector;\12\12\0"
	.align 4
LC176:
	.ascii "  vec3 vertexPos = vec3(gl_ModelViewMatrix * curVertex);\12  eyeVector = -vertexPos;\12  lightVector = gl_LightSource[0].ambient.rgb - vertexPos;\12\12#ifdef PR_USE_NORMAL_MAP\12  tangentSpaceLightVector = gl_LightSource[0].specular.rgb - vec3(curVertex);\12  tangentSpaceLightVector = TBN * tangentSpaceLightVector;\12#else\12  vertexNormal = normalize(gl_NormalMatrix * curNormal);\12#endif\12\12\0"
	.align 4
LC177:
	.ascii "  vec3 L = normalize(lightVector);\12  float pointLightDistance = dot(lightVector,lightVector);\12  float lightAttenuation = clamp(-(gl_LightSource[0].linearAttenuation * pointLightDistance - 1.0), 0.0, 1.0);\12  float spotAttenuation = 1.0;\12\12#ifdef PR_SPOTLIGHT\12  float spotCosAngle = dot(-L, normalize(spotVector));\12  spotAttenuation = clamp((spotCosAngle - spotCosRadius.x) * spotCosRadius.y, 0.0, 1.0);\12#endif\12#ifdef PR_USE_NORMAL_MAP\12  vec3 E = eyeVec;\12  vec3 N = normalize(2.0 * (normalTexel.rgb - 0.5));\12  L = normalize(tangentSpaceLightVector);\12#else\12  vec3 E = normalize(eyeVector);\12  vec3 N = normalize(vertexNormal);\12#endif\12\12  float NdotL = max(dot(N, L), 0.0);\12  vec3 R = reflect(-L, N);\12  vec3 lightDiffuse = gl_Color.a * shadowResult * lightTexel *\12                 gl_LightSource[0].diffuse.rgb * lightAttenuation * spotAttenuation;\12  result += vec4(lightDiffuse * diffuseTexel.a * diffuseTexel.rgb * NdotL, 0.0);\12\12#ifndef PR_USE_SPECULAR_MAP\12  specTexel.rgb = diffuseTexel.rgb * diffuseTexel.a;\12#endif\12\12  float lightSpecular = pow( max(dot(R, E), 0.0), specularMaterial.x * specTexel.a) * specularMaterial.y;\12  result += vec4(lightDiffuse * specTexel.rgb * lightSpecular, 0.0);\12\12\0"
	.align 4
LC178:
	.ascii "void main(void)\12{\12  vec4 curVertex = gl_Vertex;\12  vec3 curNormal = gl_Normal;\12  mat3 TBN;\12\12  gl_TexCoord[0] = gl_MultiTexCoord0;\12\12\0"
	.align 4
LC179:
	.ascii "  gl_Position = gl_ModelViewProjectionMatrix * curVertex;\12}\12\0"
	.align 4
LC180:
	.ascii "uniform vec4 u_colorCorrection;\12const vec4 c_vec4_luma_709 = vec4(0.2126, 0.7152, 0.0722, 0.0);\12const vec2 c_vec2_zero_one = vec2(0.0, 1.0);\12void main(void)\12{\12  vec3 commonTexCoord = vec3(gl_TexCoord[0].st, 0.0);\12  vec4 result = vec4(1.0, 1.0, 1.0, 1.0);\12  vec4 diffuseTexel = vec4(1.0, 1.0, 1.0, 1.0);\12  vec4 specTexel = vec4(1.0, 1.0, 1.0, 1.0);\12  vec4 normalTexel;\12  vec3 eyeVec;\12  vec3 spotVector;\12  vec2 spotCosRadius;\12  float shadowResult = 1.0;\12  vec2 specularMaterial = vec2(15.0, 1.0);\12  vec3 lightTexel = vec3(1.0, 1.0, 1.0);\12\12\0"
	.align 4
LC181:
	.ascii "  vec4 v_cc = vec4(u_colorCorrection.x - 1.0, 0.5 * -(u_colorCorrection.y - 1.0), -(u_colorCorrection.z - 1.0), 1.0);\12  gl_FragColor =\12               mat4(c_vec2_zero_one.yxxx, c_vec2_zero_one.xyxx, c_vec2_zero_one.xxyx, v_cc.xxxw) *\12#ifndef PR_LIGHTING_PASS\12               mat4(u_colorCorrection.ywww, u_colorCorrection.wyww, u_colorCorrection.wwyw, v_cc.yyyw) *\12#endif\12               mat4((c_vec4_luma_709.xxxw * v_cc.z) + u_colorCorrection.zwww,\12                      (c_vec4_luma_709.yyyw * v_cc.z) + u_colorCorrection.wzww,\12                      (c_vec4_luma_709.zzzw * v_cc.z) + u_colorCorrection.wwzw,\12                      c_vec2_zero_one.xxxy) *\12               result;\12}\12\0"
	.align 32
__ZL13prprogrambits:
	.long	LC130
	.long	LC131
	.long	LC130
	.long	LC131
	.long	LC132
	.long	LC133
	.long	LC131
	.long	LC131
	.long	LC131
	.long	LC131
	.long	LC134
	.long	LC135
	.long	LC136
	.long	LC137
	.long	LC138
	.long	LC139
	.long	LC140
	.long	LC141
	.long	LC142
	.long	LC143
	.long	LC144
	.long	LC145
	.long	LC146
	.long	LC147
	.long	LC148
	.long	LC149
	.long	LC150
	.long	LC151
	.long	LC131
	.long	LC152
	.long	LC131
	.long	LC153
	.long	LC131
	.long	LC131
	.long	LC131
	.long	LC154
	.long	LC131
	.long	LC131
	.long	LC155
	.long	LC156
	.long	LC131
	.long	LC131
	.long	LC157
	.long	LC158
	.long	LC131
	.long	LC131
	.long	LC159
	.long	LC160
	.long	LC131
	.long	LC131
	.long	LC161
	.long	LC162
	.long	LC131
	.long	LC131
	.long	LC163
	.long	LC164
	.long	LC131
	.long	LC131
	.long	LC165
	.long	LC166
	.long	LC167
	.long	LC168
	.long	LC131
	.long	LC131
	.long	LC131
	.long	LC131
	.long	LC169
	.long	LC170
	.long	LC131
	.long	LC131
	.long	LC171
	.long	LC172
	.long	LC131
	.long	LC131
	.long	LC173
	.long	LC174
	.long	LC175
	.long	LC176
	.long	LC175
	.long	LC177
	.long	LC178
	.long	LC179
	.long	LC180
	.long	LC181
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
	.section .rdata,"dr"
	.align 4
LC0:
	.long	1132396544
	.set	LC4,LC114+8
	.align 4
LC5:
	.long	1097859072
	.align 4
LC6:
	.long	998277249
	.align 4
LC45:
	.long	986542113
	.align 4
LC46:
	.long	981859127
	.align 4
LC47:
	.long	-1115684864
	.align 16
LC48:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 4
LC49:
	.long	914358272
	.align 4
LC50:
	.long	1031798784
	.align 4
LC51:
	.long	1182792704
	.align 4
LC52:
	.long	981668463
	.align 4
LC53:
	.long	1126825984
	.align 4
LC54:
	.long	1118437376
	.align 4
LC55:
	.long	931135488
	.align 4
LC56:
	.long	1043595264
	.align 4
LC57:
	.long	1119092736
	.align 4
LC58:
	.long	1048576000
	.align 4
LC59:
	.long	994643931
	.align 4
LC60:
	.long	1199570944
	.align 4
LC63:
	.long	1115684864
	.align 4
LC64:
	.long	-1082130432
	.align 8
LC65:
	.long	0
	.long	1072693248
	.align 4
LC66:
	.long	1148846080
	.align 4
LC67:
	.long	-1107296256
	.align 4
LC69:
	.long	1036831949
	.align 4
LC71:
	.long	981467136
	.align 4
LC72:
	.long	1073741824
	.align 4
LC73:
	.long	1090519040
	.align 4
LC74:
	.long	1098907648
	.align 4
LC76:
	.long	813694976
	.align 4
LC77:
	.long	897581056
	.align 8
LC78:
	.long	1413754136
	.long	1073291771
	.align 4
LC79:
	.long	1132462080
	.align 4
LC112:
	.long	-1048576000
	.align 4
LC113:
	.long	880803840
	.align 16
LC114:
	.long	0
	.long	0
	.long	1065353216
	.long	1065353216
	.align 4
LC118:
	.long	1063675494
	.align 4
LC119:
	.long	1080033280
	.align 4
LC120:
	.long	1059648963
	.align 4
LC121:
	.long	1120403456
	.align 4
LC122:
	.long	-51331646
	.align 4
LC123:
	.long	1216348160
	.align 4
LC124:
	.long	1056964608
	.align 4
LC126:
	.long	1913809311
	.align 4
LC128:
	.long	1140850688
	.align 4
LC129:
	.long	1082130432
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	_hash_find;	.scl	2;	.type	32;	.endef
	.def	_texcache_fetch;	.scl	2;	.type	32;	.endef
	.def	_hicfindsubst;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_hash_add;	.scl	2;	.type	32;	.endef
	.def	_tileLoad;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_hash_init;	.scl	2;	.type	32;	.endef
	.def	__Z19buildgl_bindTexturejj;	.scl	2;	.type	32;	.endef
	.def	__Z19buildgl_bindTexturejj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_inthash_add;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_inthash_find;	.scl	2;	.type	32;	.endef
	.def	__Z25buildgl_bindSamplerObjectii;	.scl	2;	.type	32;	.endef
	.def	@getangle@8;	.scl	2;	.type	32;	.endef
	.def	_updateanimation;	.scl	2;	.type	32;	.endef
	.def	_mdloadskin;	.scl	2;	.type	32;	.endef
	.def	__Z18buildgl_bindBufferjj;	.scl	2;	.type	32;	.endef
	.def	__Z18buildgl_bindBufferjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_cosf;	.scl	2;	.type	32;	.endef
	.def	_sinf;	.scl	2;	.type	32;	.endef
	.def	_memmove;	.scl	2;	.type	32;	.endef
	.def	__Z22buildgl_setPerspectiveffff;	.scl	2;	.type	32;	.endef
	.def	_polymer_extractfrustum.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_lrintf;	.scl	2;	.type	32;	.endef
	.def	_getzsofslopeptr;	.scl	2;	.type	32;	.endef
	.def	_atan2f;	.scl	2;	.type	32;	.endef
	.def	_sincosf;	.scl	2;	.type	32;	.endef
	.def	_memcmp;	.scl	2;	.type	32;	.endef
	.def	_animateoffs;	.scl	2;	.type	32;	.endef
	.def	__ZL16tessMeshMakeEdgeP8TESSmesh.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL17tessMeshSplitEdgeP8TESSmeshP12TESShalfEdge.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z13tessTesselateP14TESStesselatoriiiiPKf.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_polymer_computeplane.lto_priv.0;	.scl	2;	.type	32;	.endef
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
	.def	_inthash_delete;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	_md_freevbos;	.scl	2;	.type	32;	.endef
	.def	_filelength;	.scl	2;	.type	32;	.endef
	.def	__ZN3mio10basic_mmapILNS_11access_modeE1EcE4syncILS1_1EEENSt9enable_ifIXeqT_LS1_1EEvE4typeERSt10error_code.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN3mio10basic_mmapILNS_11access_modeE1EcE5unmapEv;	.scl	2;	.type	32;	.endef
	.def	__Z19buildgl_setViewportiiii;	.scl	2;	.type	32;	.endef
	.def	__ZL18get_projhack_ratiov.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
