	.file	"<artificial>"
	.text
	.p2align 4
	.def	__ZL11alloc_voiceP12context_datai;	.scl	3;	.type	32;	.endef
__ZL11alloc_voiceP12context_datai:
LFB0:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%eax, %ecx
	movl	%edi, 20(%esp)
	.cfi_offset 7, -12
	movl	%edx, %edi
	movl	%esi, 16(%esp)
	movl	712(%eax), %edx
	testl	%edx, %edx
	.cfi_offset 6, -16
	jle	L2
	movl	%ebx, 12(%esp)
	movl	%ebp, 24(%esp)
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	movl	720(%eax), %ebp
	xorl	%eax, %eax
	movl	%ebp, %ebx
	movl	%ebp, %esi
	jmp	L4
	.p2align 5
	.p2align 4,,10
	.p2align 3
L21:
	addl	$1, %eax
	addl	$136, %esi
	cmpl	%eax, %edx
	je	L5
L4:
	cmpl	$-1, (%esi)
	jne	L21
	cmpl	%eax, %edx
	je	L5
	imull	$136, %eax, %edx
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	24(%esp), %ebp
	.cfi_restore 5
L7:
	leal	0(,%edi,8), %esi
	addl	716(%ecx), %esi
	addl	$1, (%esi)
	movl	720(%ecx), %esi
	addl	$1, 708(%ecx)
	movl	%edi, (%esi,%edx)
	movl	720(%ecx), %esi
	movl	%edi, 4(%esi,%edx)
	movl	716(%ecx), %edx
	movl	%eax, 4(%edx,%edi,8)
L1:
	movl	16(%esp), %esi
	movl	20(%esp), %edi
	addl	$28, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L5:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	700(%ecx), %eax
	movl	%edi, 8(%esp)
	xorl	%esi, %esi
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	movl	$-1, %eax
	movl	(%esp), %ebp
	movl	%ecx, (%esp)
	movl	$2147483647, %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L9:
	cmpl	(%ebx), %ebp
	jg	L8
	movl	16(%ebx), %edi
	cmpl	%edi, %ecx
	cmovg	%edi, %ecx
	cmovg	%esi, %eax
L8:
	addl	$1, %esi
	addl	$136, %ebx
	cmpl	%esi, %edx
	jne	L9
	movl	4(%esp), %ebp
	movl	(%esp), %ecx
	movl	8(%esp), %edi
	cmpl	$-1, %eax
	je	L19
	imull	$136, %eax, %edx
	movl	716(%ecx), %ebx
	movl	0(%ebp,%edx), %esi
	movl	$-1, 4(%ebx,%esi,8)
	movl	720(%ecx), %ebx
	movl	4(%ebx,%edx), %esi
	movl	716(%ecx), %ebx
	subl	$1, (%ebx,%esi,8)
	subl	$1, 708(%ecx)
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	24(%esp), %ebp
	.cfi_restore 5
	jmp	L7
L2:
	je	L10
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	L7
L10:
	movl	16(%esp), %esi
	movl	20(%esp), %edi
	movl	$-1, %eax
	addl	$28, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L19:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	24(%esp), %ebp
	.cfi_restore 5
	jmp	L1
	.cfi_endproc
LFE0:
	.p2align 4
	.def	__ZL19ChildWindowComparerPKvS0_;	.scl	3;	.type	32;	.endef
__ZL19ChildWindowComparerPKvS0_:
LFB2:
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
	movl	16(%esp), %eax
	movl	(%eax), %esi
	movl	20(%esp), %eax
	movl	(%eax), %ebx
	movl	12(%esi), %ecx
	movl	12(%ebx), %edx
	movl	%ecx, %eax
	andl	$67108864, %eax
	movl	%edx, %edi
	andl	$67108864, %edi
	subl	%edi, %eax
	jne	L22
	andl	$33554432, %ecx
	andl	$33554432, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	jne	L22
	movswl	240(%esi), %eax
	movswl	240(%ebx), %edx
	subl	%edx, %eax
L22:
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
LFE2:
	.section .rdata,"dr"
LC0:
	.ascii "%-20.20s\0"
	.text
	.p2align 4
	.def	__Z15libxmp_snprintfPcjPKcz.constprop.0;	.scl	3;	.type	32;	.endef
__Z15libxmp_snprintfPcjPKcz.constprop.0:
LFB4:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	leal	36(%esp), %eax
	movl	$LC0, 8(%esp)
	movl	%eax, 16(%esp)
	movl	%eax, 12(%esp)
	movl	24(%esp), %eax
	movl	$21, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp___vsnprintf
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE4:
	.section .rdata,"dr"
LC1:
	.ascii "Extended Module: \0"
	.text
	.p2align 4
	.globl	__ZL7xm_testP10HIO_HANDLEPci.lto_priv.0
	.def	__ZL7xm_testP10HIO_HANDLEPci.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL7xm_testP10HIO_HANDLEPci.lto_priv.0:
LFB5:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$32, %esp
	.cfi_def_cfa_offset 40
	movl	40(%esp), %eax
	cmpl	$1, (%eax)
	je	L28
L30:
	movl	$-1, %ebx
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L28:
	.cfi_restore_state
	movl	40(%esp), %eax
	leal	12(%esp), %ebx
	movl	$17, %ecx
	movl	$1, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	cmpl	$16, %eax
	jbe	L30
	movl	%ebx, (%esp)
	movl	$17, 8(%esp)
	movl	$LC1, 4(%esp)
	call	_memcmp
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L30
	movl	40(%esp), %eax
	movl	44(%esp), %edx
	movl	$20, %ecx
	call	__Z17libxmp_read_titleP10HIO_HANDLEPci
	addl	$32, %esp
	.cfi_def_cfa_offset 8
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE5:
	.p2align 4
	.def	__ZL13load_patternsP11module_dataiP10HIO_HANDLE;	.scl	3;	.type	32;	.endef
__ZL13load_patternsP11module_dataiP10HIO_HANDLE:
LFB7:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%ecx, %ebp
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$52, %esp
	.cfi_def_cfa_offset 72
	addl	$1, 128(%eax)
	movl	%edx, 44(%esp)
	call	__Z19libxmp_init_patternP10xmp_module
	movl	$65536, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 68
	subl	$4, %esp
	.cfi_def_cfa_offset 72
	movl	%eax, 40(%esp)
	testl	%eax, %eax
	je	L33
	movl	$65536, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	$0, 36(%esp)
	cmpl	$1, 128(%edi)
	jle	L35
	movl	%ebp, 32(%esp)
	movl	%edi, %ebp
	.p2align 4
	.p2align 3
L34:
	cmpl	$258, 44(%esp)
	jle	L36
	movl	32(%esp), %esi
	movl	%esi, %eax
	call	__Z11hio_read32lP10HIO_HANDLE
	movl	%eax, %ebx
	cmpl	$1, (%esi)
	je	L171
L38:
	movl	32(%esp), %eax
	call	__Z11hio_read16lP10HIO_HANDLE
	movl	%eax, %edi
	cmpw	$256, %ax
	ja	L41
	movl	$9, 12(%esp)
L40:
	movl	32(%esp), %eax
	call	__Z11hio_read16lP10HIO_HANDLE
	movl	%eax, %esi
	movl	32(%esp), %eax
	cmpl	$1, (%eax)
	jne	L42
	movl	8(%eax), %eax
	subl	12(%esp), %ebx
	addl	4(%eax), %ebx
	js	L172
	movl	8(%eax), %ecx
	cmpl	%ebx, %ecx
	cmovg	%ebx, %ecx
	movl	%ecx, 4(%eax)
	movl	32(%esp), %eax
	movl	12(%eax), %eax
	cmpl	$-1, %eax
	je	L173
L44:
	movl	32(%esp), %ecx
	movl	$0, 12(%ecx)
	testl	%eax, %eax
	jne	L41
L45:
	testw	%di, %di
	movl	$256, %eax
	cmove	%eax, %edi
	movl	%ebp, %eax
	movzwl	%di, %ebx
	movl	36(%esp), %edi
	movl	%edi, %edx
	call	__Z20libxmp_alloc_patternP10xmp_modulei
	cmpl	$-1, %eax
	je	L41
	leal	0(,%edi,4), %eax
	movl	%edi, %edx
	movl	%eax, 28(%esp)
	movl	168(%ebp), %eax
	movl	(%eax,%edi,4), %eax
	movl	%ebx, (%eax)
	movl	%ebp, %eax
	call	__Z30libxmp_alloc_tracks_in_patternP10xmp_modulei
	cmpl	$-1, %eax
	je	L41
	testw	%si, %si
	je	L47
	movzwl	%si, %ecx
	movl	32(%esp), %esi
	movl	40(%esp), %eax
	movl	%ecx, %edx
	cmpl	$1, (%esi)
	je	L174
L48:
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 12(%esp)
	call	_memset
	movl	12(%esp), %ecx
L49:
	movl	$0, 24(%esp)
	movl	40(%esp), %esi
	movl	%ecx, %edi
	movl	%ebx, 48(%esp)
L50:
	movl	136(%ebp), %edx
	testl	%edx, %edx
	jle	L90
	movl	24(%esp), %eax
	movl	$0, 12(%esp)
	movl	%ebp, 16(%esp)
	sall	$3, %eax
	movl	%eax, 20(%esp)
	.p2align 4
	.p2align 3
L89:
	movl	%edi, %edx
	subl	$1, %edx
	js	L41
	movl	16(%esp), %ebx
	movl	28(%esp), %ecx
	movl	168(%ebx), %eax
	movl	(%eax,%ecx), %eax
	movl	12(%esp), %ecx
	movl	4(%eax,%ecx,4), %ecx
	movl	172(%ebx), %eax
	movl	(%eax,%ecx,4), %ecx
	movzbl	(%esi), %eax
	testb	%al, %al
	js	L175
	subl	$5, %edi
	js	L41
	movl	20(%esp), %ebx
	addl	$5, %esi
	movb	%al, 4(%ecx,%ebx)
	movzbl	-4(%esi), %eax
	movb	%al, 5(%ecx,%ebx)
	movzbl	-3(%esi), %eax
	movb	%al, 6(%ecx,%ebx)
	movzbl	-2(%esi), %eax
	movb	%al, 7(%ecx,%ebx)
	movzbl	-1(%esi), %eax
	movb	%al, 8(%ecx,%ebx)
L57:
	movl	20(%esp), %eax
	addl	%ecx, %eax
	movzbl	7(%eax), %edx
	leal	-18(%edx), %ebx
	cmpb	$14, %bl
	ja	L58
	movl	$30067, %ebp
	btl	%ebx, %ebp
	jnc	L59
	movb	$0, 7(%eax)
	xorl	%edx, %edx
L59:
	movzbl	4(%eax), %ebx
	cmpb	$97, %bl
	je	L61
L63:
	testb	%bl, %bl
	je	L66
L96:
	addl	$12, %ebx
	movb	%bl, 4(%eax)
L66:
	cmpb	$14, %dl
	je	L176
L67:
	cmpb	$33, %dl
	jne	L64
	movzbl	8(%eax), %edx
	movl	%edx, %ebx
	shrb	$4, %bl
	cmpb	$9, %bl
	je	L177
	.p2align 4
	.p2align 3
L64:
	movzbl	6(%eax), %edx
	testb	%dl, %dl
	je	L72
	leal	-16(%edx), %ebx
	cmpb	$64, %bl
	jbe	L178
	movl	%edx, %ebx
	shrb	$4, %bl
	subl	$6, %ebx
	cmpb	$9, %bl
	ja	L74
	movzbl	%bl, %ebx
	jmp	*L76(,%ebx,4)
	.section .rdata,"dr"
	.align 4
L76:
	.long	L85
	.long	L84
	.long	L83
	.long	L82
	.long	L81
	.long	L80
	.long	L79
	.long	L78
	.long	L77
	.long	L75
	.text
	.p2align 4,,10
	.p2align 3
L77:
	addl	$32, %edx
	movb	$-75, 9(%eax)
	movb	%dl, 10(%eax)
	.p2align 4
	.p2align 3
L74:
	movb	$0, 6(%eax)
L72:
	movl	16(%esp), %ecx
	addl	$1, 12(%esp)
	movl	12(%esp), %eax
	cmpl	136(%ecx), %eax
	jl	L89
	movl	%ecx, %ebp
L90:
	addl	$1, 24(%esp)
	movl	48(%esp), %ecx
	cmpl	%ecx, 24(%esp)
	jne	L50
	.p2align 4
	.p2align 3
L47:
	movl	128(%ebp), %eax
	addl	$1, 36(%esp)
	subl	$1, %eax
	cmpl	36(%esp), %eax
	jg	L34
	movl	%ebp, %edi
L35:
	movl	36(%esp), %ebx
	movl	%edi, %eax
	movl	136(%edi), %esi
	movl	%ebx, %edx
	call	__Z20libxmp_alloc_patternP10xmp_modulei
	cmpl	$-1, %eax
	je	L41
	movl	168(%edi), %eax
	movl	%ebx, %ecx
	imull	%ebx, %esi
	leal	0(,%ebx,4), %ebx
	movl	(%eax,%ecx,4), %eax
	movl	$64, %ecx
	movl	%esi, %edx
	movl	$64, (%eax)
	movl	%edi, %eax
	call	__Z18libxmp_alloc_trackP10xmp_moduleii
	cmpl	$-1, %eax
	je	L41
	movl	136(%edi), %eax
	testl	%eax, %eax
	jle	L91
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L92:
	movl	168(%edi), %edx
	movl	(%edx,%ebx), %edx
	movl	%esi, 4(%edx,%eax,4)
	addl	$1, %eax
	cmpl	%eax, 136(%edi)
	jg	L92
L91:
	movl	40(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 68
	xorl	%eax, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 72
	addl	$52, %esp
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
L78:
	.cfi_restore_state
	sall	$4, %edx
	movb	$-75, 9(%eax)
	movb	%dl, 10(%eax)
	jmp	L74
	.p2align 4,,10
	.p2align 3
L79:
	sall	$4, %edx
	movb	$8, 9(%eax)
	movb	%dl, 10(%eax)
	jmp	L74
	.p2align 4,,10
	.p2align 3
L80:
	addl	$80, %edx
	movb	$4, 9(%eax)
	movb	%dl, 10(%eax)
	jmp	L74
	.p2align 4,,10
	.p2align 3
L81:
	sall	$4, %edx
	movb	$4, 9(%eax)
	movb	%dl, 10(%eax)
	jmp	L74
	.p2align 4,,10
	.p2align 3
L82:
	addl	$112, %edx
	movb	$14, 9(%eax)
	orl	$-96, %edx
	movb	%dl, 10(%eax)
	jmp	L74
	.p2align 4,,10
	.p2align 3
L83:
	addl	$-128, %edx
	movb	$14, 9(%eax)
	orl	$-80, %edx
	movb	%dl, 10(%eax)
	jmp	L74
	.p2align 4,,10
	.p2align 3
L84:
	sall	$4, %edx
	movb	$-92, 9(%eax)
	movb	%dl, 10(%eax)
	jmp	L74
	.p2align 4,,10
	.p2align 3
L85:
	subl	$96, %edx
	movb	$-92, 9(%eax)
	movb	%dl, 10(%eax)
	jmp	L74
	.p2align 4,,10
	.p2align 3
L75:
	movl	%edx, %ebx
	leal	16(%edx), %ebp
	movzbl	7(%eax), %edx
	movb	$3, 9(%eax)
	sall	$4, %ebx
	movb	%bl, 10(%eax)
	cmpb	$3, %dl
	je	L101
	cmpb	$5, %dl
	je	L179
	cmpb	$9, %dl
	jne	L74
	movl	20(%esp), %ebx
	xorl	%ebp, %ebp
	movw	%bp, 7(%ecx,%ebx)
	jmp	L74
	.p2align 4,,10
	.p2align 3
L175:
	testb	$1, %al
	jne	L52
	addl	$1, %esi
	movl	%edx, %edi
L53:
	testb	$2, %al
	je	L54
	subl	$1, %edi
	jb	L41
	movzbl	(%esi), %edx
	movl	24(%esp), %ebx
	addl	$1, %esi
	movb	%dl, 5(%ecx,%ebx,8)
L54:
	testb	$4, %al
	je	L55
	subl	$1, %edi
	jb	L41
	movzbl	(%esi), %edx
	movl	24(%esp), %ebx
	addl	$1, %esi
	movb	%dl, 6(%ecx,%ebx,8)
L55:
	testb	$8, %al
	je	L56
	subl	$1, %edi
	jb	L41
	movzbl	(%esi), %edx
	movl	24(%esp), %ebx
	addl	$1, %esi
	movb	%dl, 7(%ecx,%ebx,8)
L56:
	testb	$16, %al
	je	L57
	subl	$1, %edi
	jb	L41
	movzbl	(%esi), %eax
	movl	24(%esp), %ebx
	addl	$1, %esi
	movb	%al, 8(%ecx,%ebx,8)
	jmp	L57
	.p2align 4,,10
	.p2align 3
L61:
	cmpb	$1, 5(%eax)
	sbbl	%ebx, %ebx
	andl	$-2, %ebx
	subl	$125, %ebx
	movb	%bl, 4(%eax)
	cmpb	$14, %dl
	jne	L67
L176:
	movzbl	8(%eax), %edx
	movl	%edx, %ebx
	shrb	$4, %bl
	cmpb	$5, %bl
	je	L180
	cmpb	$67, %dl
	je	L69
	cmpb	$115, %dl
	jne	L64
L69:
	subl	$1, %edx
	movb	%dl, 8(%eax)
	jmp	L64
	.p2align 4,,10
	.p2align 3
L58:
	cmpb	$34, %dl
	jbe	L60
	movzbl	4(%eax), %ebx
	movb	$0, 7(%eax)
	xorl	%edx, %edx
	cmpb	$97, %bl
	je	L61
	xorl	%edx, %edx
	testb	%bl, %bl
	jne	L96
	jmp	L64
	.p2align 4,,10
	.p2align 3
L178:
	subl	$15, %edx
	movb	%dl, 6(%eax)
	jmp	L72
	.p2align 4,,10
	.p2align 3
L52:
	subl	$2, %edi
	cmpl	$-1, %edi
	je	L41
	movzbl	1(%esi), %edx
	movl	24(%esp), %ebx
	addl	$2, %esi
	movb	%dl, 4(%ecx,%ebx,8)
	jmp	L53
	.p2align 4,,10
	.p2align 3
L177:
	movl	%edx, %ebx
	andl	$15, %ebx
	andl	$14, %edx
	jne	L181
	movb	$-115, 7(%eax)
	movb	%bl, 8(%eax)
	jmp	L64
	.p2align 4,,10
	.p2align 3
L180:
	subl	$8, %edx
	andl	$15, %edx
	orl	$80, %edx
	movb	%dl, 8(%eax)
	jmp	L64
	.p2align 4,,10
	.p2align 3
L36:
	movl	32(%esp), %edi
	movl	%edi, %eax
	call	__Z11hio_read32lP10HIO_HANDLE
	movl	%eax, %ebx
	cmpl	$1, (%edi)
	je	L39
L95:
	movl	$8, 12(%esp)
	movl	$1, %edi
	jmp	L40
	.p2align 4,,10
	.p2align 3
L181:
	subl	$14, %ebx
	cmpb	$1, %bl
	ja	L64
	movb	$-113, 7(%eax)
	movb	%bl, 8(%eax)
	jmp	L64
L172:
	movl	32(%esp), %ebp
	movl	$0, 12(%ebp)
L41:
	movl	40(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 68
	movl	$-1, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 72
	addl	$52, %esp
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
L173:
	.cfi_restore_state
	movl	32(%esp), %eax
	movl	$0, 12(%eax)
	jmp	L45
	.p2align 4,,10
	.p2align 3
L101:
	xorl	%edx, %edx
L86:
	movb	%dl, 7(%eax)
	movl	%ebp, %edx
	movl	$-1, %ecx
	sall	$5, %edx
	testb	%bl, %bl
	movb	$0, 8(%eax)
	cmovs	%ecx, %edx
	movb	%dl, 10(%eax)
	jmp	L74
	.p2align 4,,10
	.p2align 3
L171:
	movl	32(%esp), %eax
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	jmp	L38
	.p2align 4,,10
	.p2align 3
L39:
	movl	32(%esp), %esi
	movl	%esi, %eax
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	cmpl	$1, (%esi)
	jne	L95
	movl	32(%esp), %eax
	call	__Z9hio_read8P10HIO_HANDLE.part.0
	movl	$8, 12(%esp)
	movzbl	%al, %edx
	leal	1(%edx), %edi
	jmp	L40
	.p2align 4,,10
	.p2align 3
L174:
	movl	%esi, (%esp)
	movl	40(%esp), %eax
	movl	$1, %edx
	movl	%ecx, 12(%esp)
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	movl	12(%esp), %ecx
	cmpl	%eax, %ecx
	jle	L49
	movl	%ecx, %edx
	subl	%eax, %edx
	addl	40(%esp), %eax
	jmp	L48
L179:
	movl	$10, %edx
	jmp	L86
L42:
	movl	32(%esp), %eax
	movl	12(%eax), %eax
	jmp	L44
L33:
	movl	$65536, %eax
	call	__Z13handle_memerri
L60:
	movzbl	4(%eax), %ebx
	cmpb	$97, %bl
	jne	L63
	cmpb	$14, 7(%eax)
	jne	L61
	movzbl	8(%eax), %ebx
	shrb	$4, %bl
	cmpb	$13, %bl
	jne	L61
	movb	$-127, 4(%eax)
	jmp	L64
	.cfi_endproc
LFE7:
	.p2align 4
	.globl	__ZL13MallocWrapperjPv.lto_priv.0
	.def	__ZL13MallocWrapperjPv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL13MallocWrapperjPv.lto_priv.0:
LFB14:
	.cfi_startproc
	jmp	_malloc
	.cfi_endproc
LFE14:
	.p2align 4
	.globl	__ZL11FreeWrapperPvS_.lto_priv.0
	.def	__ZL11FreeWrapperPvS_.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL11FreeWrapperPvS_.lto_priv.0:
LFB15:
	.cfi_startproc
	jmp	_free
	.cfi_endproc
LFE15:
	.p2align 4
	.def	__ZL21AddWindowToSortBufferP8ImVectorIP11ImGuiWindowES1_;	.scl	3;	.type	32;	.endef
__ZL21AddWindowToSortBufferP8ImVectorIP11ImGuiWindowES1_:
LFB16:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	%ebx, 28(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%esi, 32(%esp)
	.cfi_offset 6, -16
	movl	%edx, %esi
	movl	%edi, 36(%esp)
	.cfi_offset 7, -12
	movl	(%eax), %edi
	cmpl	4(%eax), %edi
	je	L201
L185:
	movl	8(%ebx), %ecx
L188:
	movl	%esi, (%ecx,%edi,4)
	addl	$1, (%ebx)
	cmpb	$0, 223(%esi)
	je	L184
	movl	%ebp, 40(%esp)
	.cfi_offset 5, -8
	movl	440(%esi), %ebp
	cmpl	$1, %ebp
	ja	L202
	testl	%ebp, %ebp
	jle	L200
L204:
	xorl	%edi, %edi
L195:
	movl	448(%esi), %eax
	movl	(%eax,%edi,4), %edx
	cmpb	$0, 223(%edx)
	jne	L203
L194:
	addl	$1, %edi
	cmpl	%edi, %ebp
	jne	L195
L200:
	movl	40(%esp), %ebp
	.cfi_restore 5
L184:
	movl	28(%esp), %ebx
	movl	32(%esp), %esi
	movl	36(%esp), %edi
	addl	$44, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L202:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$__ZL19ChildWindowComparerPKvS0_, 12(%esp)
	movl	$4, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	448(%esi), %eax
	movl	%eax, (%esp)
	call	_qsort
	testl	%ebp, %ebp
	jg	L204
	jmp	L200
	.p2align 4,,10
	.p2align 3
L203:
	movl	%ebx, %eax
	call	__ZL21AddWindowToSortBufferP8ImVectorIP11ImGuiWindowES1_
	jmp	L194
	.p2align 4,,10
	.p2align 3
L201:
	.cfi_restore 5
	movl	%ebp, 40(%esp)
	.cfi_offset 5, -8
	leal	1(%edi), %ecx
	testl	%edi, %edi
	jne	L186
	movl	$8, %eax
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%eax, %ebp
L187:
	movl	_GImGui, %edx
	leal	0(,%ebp,4), %eax
	testl	%edx, %edx
	je	L189
	addl	$1, 188(%edx)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 20(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	(%ebx), %edi
	movl	20(%esp), %edx
	movl	%eax, %ecx
	movl	8(%ebx), %eax
	testl	%eax, %eax
	movl	%eax, 16(%esp)
	je	L191
	leal	0(,%edi,4), %eax
	movl	%ecx, (%esp)
	movl	%eax, 8(%esp)
	movl	16(%esp), %eax
	movl	%edx, 24(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, 20(%esp)
	call	_memcpy
	movl	24(%esp), %edx
	movl	20(%esp), %ecx
	subl	$1, 188(%edx)
L196:
	movl	16(%esp), %eax
	movl	$0, 4(%esp)
	movl	%ecx, 20(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	(%ebx), %edi
	movl	20(%esp), %ecx
L191:
	movl	%ecx, 8(%ebx)
	movl	%ebp, 4(%ebx)
	movl	40(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L188
	.p2align 4,,10
	.p2align 3
L186:
	.cfi_restore_state
	movl	%edi, %eax
	shrl	$31, %eax
	addl	%edi, %eax
	sarl	%eax
	addl	%edi, %eax
	cmpl	%ecx, %eax
	cmovge	%eax, %ecx
	movl	%ecx, %ebp
	cmpl	%ecx, %edi
	jl	L187
	movl	40(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L185
	.p2align 4,,10
	.p2align 3
L189:
	.cfi_restore_state
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %ecx
	movl	8(%ebx), %eax
	movl	%eax, 16(%esp)
	testl	%eax, %eax
	je	L191
	leal	0(,%edi,4), %eax
	movl	%ecx, (%esp)
	movl	%eax, 8(%esp)
	movl	16(%esp), %eax
	movl	%ecx, 20(%esp)
	movl	%eax, 4(%esp)
	call	_memcpy
	movl	20(%esp), %ecx
	jmp	L196
	.cfi_endproc
LFE16:
	.p2align 4
	.globl	__Z18libxmp_load_sampleP11module_dataP10HIO_HANDLEiP10xmp_samplePKv
	.def	__Z18libxmp_load_sampleP11module_dataP10HIO_HANDLEiP10xmp_samplePKv;	.scl	2;	.type	32;	.endef
__Z18libxmp_load_sampleP11module_dataP10HIO_HANDLEiP10xmp_samplePKv:
LFB21:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$44, %esp
	movl	%ebx, -12(%ebp)
	.cfi_offset 3, -20
	movl	8(%ebp), %ebx
	movl	%edi, -4(%ebp)
	.cfi_offset 7, -12
	movl	12(%ebp), %edi
	movl	%edi, -16(%ebp)
	movl	32(%ebx), %edi
	testl	%edi, %edi
	jle	L260
	cmpl	$268435456, %edi
	jg	L207
	testl	%eax, %eax
	je	L208
	testb	$1, 1304(%eax)
	jne	L207
L208:
	movl	%ecx, %eax
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	andl	$16, %eax
	movl	%eax, -20(%ebp)
	je	L211
	movl	36(%ebx), %eax
	testl	%eax, %eax
	js	L305
L212:
	movl	40(%ebx), %esi
	cmpl	%edi, %esi
	jg	L213
	cmpl	%eax, %edi
	jg	L214
L222:
	andl	$-7, 44(%ebx)
	movl	$0, 36(%ebx)
	movl	$0, 40(%ebx)
L223:
	movl	44(%ebx), %eax
	movl	%eax, %esi
	andl	$6, %esi
	cmpl	$4, %esi
	je	L306
L224:
	movl	%eax, %esi
	andl	$96, %esi
	cmpl	$64, %esi
	je	L307
L225:
	testb	$1, 44(%ebx)
	movl	%edx, -32(%ebp)
	leal	(%edi,%edi), %edx
	movl	$4, %eax
	cmovne	%edx, %edi
	movl	$8, %edx
	movl	%ecx, -24(%ebp)
	movl	_g_sm_heap, %ecx
	cmovne	%edx, %eax
	leal	4(%edi,%eax), %edx
	movl	%edx, (%esp)
	movl	%edx, -28(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L227
	movl	%eax, 48(%ebx)
	movl	-20(%ebp), %edx
	movl	$0, (%eax)
	movl	48(%ebx), %eax
	addl	$4, %eax
	movl	%eax, 48(%ebx)
	testl	%edx, %edx
	je	L308
	movl	-16(%ebp), %esi
	movl	%edi, 8(%esp)
	movl	%eax, (%esp)
	movl	%esi, 4(%esp)
	call	_memcpy
	movl	44(%ebx), %edx
	movl	48(%ebx), %eax
L230:
	andl	$1, %edx
	testb	$2, -24(%ebp)
	je	L240
	movl	32(%ebx), %ecx
	testl	%edx, %edx
	je	L309
	testl	%ecx, %ecx
	je	L236
	leal	(%eax,%ecx,2), %edx
	andl	$1, %ecx
	je	L243
	addw	$-32768, (%eax)
	addl	$2, %eax
	cmpl	%eax, %edx
	je	L296
	.p2align 5
	.p2align 4
	.p2align 3
L243:
	addw	$-32768, (%eax)
	addw	$-32768, 2(%eax)
	addl	$4, %eax
	cmpl	%eax, %edx
	jne	L243
L296:
	movl	44(%ebx), %edx
	movl	48(%ebx), %eax
	andl	$1, %edx
L240:
	testl	%edx, %edx
	jne	L236
L235:
	leal	-1(%edi), %edx
	addl	$3, %edi
L245:
	leal	(%eax,%edx), %ecx
	addl	$1, %edx
	movzbl	(%ecx), %ecx
	movb	%cl, (%eax,%edx)
	movl	48(%ebx), %eax
	cmpl	%edx, %edi
	jne	L245
	movzbl	(%eax), %edx
	testb	$1, 44(%ebx)
	je	L248
L310:
	movb	%dl, -2(%eax)
	movl	48(%ebx), %eax
	movzbl	1(%eax), %edx
	movb	%dl, -1(%eax)
	movl	-8(%ebp), %esi
	.cfi_restore 6
L260:
	movl	-12(%ebp), %ebx
	movl	-4(%ebp), %edi
	xorl	%eax, %eax
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L207:
	.cfi_restore_state
	andl	$16, %ecx
	jne	L260
	cmpl	$1, (%edx)
	jne	L260
	movl	8(%edx), %eax
	addl	4(%eax), %edi
	js	L209
	movl	8(%eax), %ecx
	cmpl	%edi, %ecx
	cmovg	%edi, %ecx
	movl	%ecx, 4(%eax)
	cmpl	$-1, 12(%edx)
	jne	L260
	movl	$0, 12(%edx)
	jmp	L260
	.p2align 4,,10
	.p2align 3
L211:
	.cfi_offset 6, -16
	testl	%edx, %edx
	je	L303
	cmpl	$1, (%edx)
	jne	L250
	movl	8(%edx), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jns	L215
	movl	$22, 12(%edx)
L215:
	movl	4(%edx), %esi
	movl	%esi, -24(%ebp)
	cmpl	%eax, %esi
	jle	L303
	movl	32(%ebx), %edi
	leal	(%edi,%eax), %esi
	movl	%esi, -28(%ebp)
	movl	-24(%ebp), %esi
	cmpl	%esi, -28(%ebp)
	jle	L220
	testb	$64, %ch
	jne	L220
	movl	%esi, %edi
	subl	%eax, %edi
	movl	%edi, 32(%ebx)
L220:
	movl	36(%ebx), %eax
	testl	%eax, %eax
	jns	L212
	movl	$0, 36(%ebx)
	xorl	%eax, %eax
	jmp	L212
	.p2align 4,,10
	.p2align 3
L305:
	movl	40(%ebx), %eax
	movl	$0, 36(%ebx)
	cmpl	%eax, %edi
	movl	%eax, %esi
	movl	$0, %eax
	jge	L214
L213:
	movl	%edi, 40(%ebx)
	cmpl	%eax, %edi
	jg	L223
	jmp	L222
	.p2align 4,,10
	.p2align 3
L236:
	leal	-2(%edi), %edx
	addl	$6, %edi
	.p2align 5
	.p2align 4
	.p2align 3
L246:
	movzbl	(%eax,%edx), %ecx
	movb	%cl, 2(%eax,%edx)
	addl	$1, %edx
	movl	48(%ebx), %eax
	cmpl	%edi, %edx
	jne	L246
	movzbl	(%eax), %edx
	testb	$1, 44(%ebx)
	jne	L310
L248:
	movb	%dl, -1(%eax)
	xorl	%eax, %eax
	movl	-8(%ebp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	-12(%ebp), %ebx
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L308:
	.cfi_restore_state
	movl	-32(%ebp), %esi
	xorl	%edx, %edx
	cmpl	$1, (%esi)
	je	L311
L231:
	movl	-20(%ebp), %esi
	cmpl	%esi, %edi
	je	L232
	movl	%edi, %ecx
	addl	%eax, %edx
	movl	$0, 4(%esp)
	subl	%esi, %ecx
	movl	%edx, (%esp)
	movl	%ecx, 8(%esp)
	call	_memset
	movl	48(%ebx), %eax
L232:
	movl	44(%ebx), %edx
	testb	$1, -24(%ebp)
	je	L230
	andl	$1, %edx
	movl	32(%ebx), %ecx
	je	L312
	testl	%ecx, %ecx
	je	L236
	leal	(%eax,%ecx,2), %ecx
	xorl	%edx, %edx
	.p2align 4
	.p2align 4
	.p2align 3
L237:
	addw	(%eax), %dx
	addl	$2, %eax
	movw	%dx, -2(%eax)
	cmpl	%eax, %ecx
	jne	L237
L304:
	movl	44(%ebx), %edx
	movl	48(%ebx), %eax
	andl	$1, %edx
	jmp	L240
	.p2align 4,,10
	.p2align 3
L303:
	movl	-8(%ebp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	-12(%ebp), %ebx
	xorl	%eax, %eax
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L214:
	.cfi_restore_state
	cmpl	%esi, %eax
	jge	L222
	jmp	L223
	.p2align 4,,10
	.p2align 3
L306:
	andl	$-5, %eax
	movl	%eax, 44(%ebx)
	jmp	L224
	.p2align 4,,10
	.p2align 3
L307:
	andl	$-65, %eax
	movl	%eax, 44(%ebx)
	jmp	L225
	.p2align 4,,10
	.p2align 3
L309:
	leal	(%eax,%ecx), %edx
	testl	%ecx, %ecx
	je	L235
	movl	%edx, %ecx
	subl	%eax, %ecx
	andl	$1, %ecx
	je	L244
	addb	$-128, (%eax)
	addl	$1, %eax
	cmpl	%eax, %edx
	je	L296
	.p2align 4
	.p2align 4
	.p2align 3
L244:
	addb	$-128, (%eax)
	addb	$-128, 1(%eax)
	addl	$2, %eax
	cmpl	%eax, %edx
	jne	L244
	jmp	L296
	.p2align 4,,10
	.p2align 3
L312:
	xorl	%edx, %edx
	testl	%ecx, %ecx
	je	L235
	movl	%ebx, -16(%ebp)
	leal	(%eax,%ecx), %ebx
	.p2align 4
	.p2align 4
	.p2align 3
L239:
	movzbl	(%eax), %ecx
	addl	$1, %eax
	addl	%ecx, %edx
	movb	%dl, -1(%eax)
	cmpl	%eax, %ebx
	jne	L239
	movl	-16(%ebp), %ebx
	jmp	L304
L209:
	.cfi_restore 6
	movl	$22, 12(%edx)
	jmp	L260
	.p2align 4,,10
	.p2align 3
L227:
	.cfi_offset 6, -16
	movl	-28(%ebp), %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L311:
	movl	%esi, (%esp)
	movl	$1, %edx
	movl	%edi, %ecx
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	movl	%eax, %edx
	movl	48(%ebx), %eax
	movl	%edx, -20(%ebp)
	jmp	L231
L250:
	movl	$-1, %eax
	jmp	L215
	.cfi_endproc
LFE21:
	.p2align 4
	.def	__ZL16load_instrumentsP11module_dataiP10HIO_HANDLE;	.scl	3;	.type	32;	.endef
__ZL16load_instrumentsP11module_dataiP10HIO_HANDLE:
LFB28:
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
	pushl	%ebx
	andl	$-8, %esp
	subl	$1792, %esp
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	$1024, 144(%eax)
	movl	%eax, 40(%esp)
	movl	%edx, 24(%esp)
	movl	%ecx, 44(%esp)
	call	__Z22libxmp_init_instrumentP11module_data
	cmpl	$-1, %eax
	je	L313
	movl	140(%edi), %ebx
	testl	%ebx, %ebx
	jle	L374
	movl	$0, 32(%esp)
	movl	$0, 52(%esp)
L372:
	movl	44(%esp), %edi
	cmpl	$1, (%edi)
	jne	L315
	movl	8(%edi), %eax
	imull	$764, 32(%esp), %ebx
	movl	4(%eax), %eax
	movl	%eax, 28(%esp)
	testl	%eax, %eax
	js	L416
	movl	40(%esp), %eax
	movl	176(%eax), %edi
	addl	%ebx, %edi
L318:
	movl	44(%esp), %eax
	movl	$1, %ecx
	movl	$33, %edx
	movl	%eax, (%esp)
	leal	96(%esp), %eax
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	cmpl	$1, %eax
	jne	L315
	movl	100(%esp), %eax
	movl	96(%esp), %edx
	movl	125(%esp), %ecx
	movl	%eax, 64(%esp)
	movl	104(%esp), %eax
	movl	%edx, 60(%esp)
	movl	%eax, 68(%esp)
	movl	108(%esp), %eax
	movl	%ecx, 92(%esp)
	movl	%eax, 72(%esp)
	movl	112(%esp), %eax
	movl	%eax, 76(%esp)
	movl	116(%esp), %eax
	movl	%eax, 80(%esp)
	movzwl	120(%esp), %eax
	movw	%ax, 84(%esp)
	movzbl	122(%esp), %eax
	movb	%al, 86(%esp)
	movzwl	123(%esp), %eax
	movw	%ax, 88(%esp)
	cmpl	$28, %edx
	jle	L321
	cmpw	$32, %ax
	ja	L321
	testw	%ax, %ax
	je	L379
	cmpl	$256, %ecx
	ja	L321
L379:
	movl	40(%esp), %esi
	movl	$22, %ecx
	leal	64(%esp), %edx
	movl	176(%esi), %eax
	addl	%ebx, %eax
	call	__Z18libxmp_copy_adjustPcPhi.isra.0
	movzwl	88(%esp), %ecx
	movl	%ecx, 36(%edi)
	testl	%ecx, %ecx
	jne	L323
	movl	44(%esp), %eax
	cmpl	$1, (%eax)
	jne	L321
	movl	8(%eax), %edx
	movl	60(%esp), %ecx
	movl	4(%edx), %eax
	leal	-33(%ecx,%eax), %ecx
	testl	%ecx, %ecx
	js	L339
	movl	8(%edx), %eax
	cmpl	%ecx, %eax
	cmovg	%ecx, %eax
	movl	%eax, 4(%edx)
	movl	44(%esp), %eax
	cmpl	$-1, 12(%eax)
	je	L417
L326:
	movl	40(%esp), %edi
	addl	$1, 32(%esp)
	movl	32(%esp), %eax
	cmpl	%eax, 140(%edi)
	jg	L372
L315:
	movl	52(%esp), %edx
	movl	40(%esp), %eax
	call	__Z22libxmp_realloc_samplesP11module_datai
	cmpl	$-1, %eax
	sete	%al
	movzbl	%al, %eax
	negl	%eax
	jmp	L313
	.p2align 4,,10
	.p2align 3
L323:
	movl	32(%esp), %edx
	movl	40(%esp), %eax
	call	__Z26libxmp_alloc_subinstrumentP10xmp_moduleii.part.0
	testl	%eax, %eax
	js	L321
	movl	60(%esp), %edx
	cmpl	$240, %edx
	jbe	L418
	movl	44(%esp), %eax
	cmpl	$1, (%eax)
	jne	L321
	movl	%eax, (%esp)
	movl	$1, %ecx
	movl	$208, %edx
	leal	96(%esp), %eax
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	cmpl	$1, %eax
	jne	L321
	xorl	%eax, %eax
L337:
	movl	96(%esp,%eax), %esi
	movl	100(%esp,%eax), %ebx
	movl	104(%esp,%eax), %ecx
	movl	108(%esp,%eax), %edx
	movl	%esi, 304(%esp,%eax)
	movl	%ebx, 308(%esp,%eax)
	movl	%ecx, 312(%esp,%eax)
	movl	%edx, 316(%esp,%eax)
	addl	$16, %eax
	cmpl	$96, %eax
	jb	L337
	movl	192(%esp), %eax
	movl	%eax, 400(%esp)
	movl	196(%esp), %eax
	movl	%eax, 404(%esp)
	movl	200(%esp), %eax
	movl	%eax, 408(%esp)
	movl	204(%esp), %eax
	movl	%eax, 412(%esp)
	movl	208(%esp), %eax
	movl	%eax, 416(%esp)
	movl	212(%esp), %eax
	movl	%eax, 420(%esp)
	movl	216(%esp), %eax
	movl	%eax, 424(%esp)
	movl	220(%esp), %eax
	movl	%eax, 428(%esp)
	movl	224(%esp), %eax
	movl	%eax, 432(%esp)
	movl	228(%esp), %eax
	movl	%eax, 436(%esp)
	movl	232(%esp), %eax
	movl	%eax, 440(%esp)
	movl	236(%esp), %eax
	movl	%eax, 444(%esp)
	movl	240(%esp), %eax
	movl	%eax, 448(%esp)
	movl	244(%esp), %eax
	movl	%eax, 452(%esp)
	movl	248(%esp), %eax
	movl	%eax, 456(%esp)
	movl	252(%esp), %eax
	movl	%eax, 460(%esp)
	movl	256(%esp), %eax
	movzbl	289(%esp), %ebx
	movl	296(%esp), %esi
	movl	%eax, 464(%esp)
	movl	260(%esp), %eax
	movb	%bl, 48(%esp)
	movzbl	291(%esp), %ebx
	movl	%eax, 468(%esp)
	movl	264(%esp), %eax
	movb	%bl, 36(%esp)
	movzbl	292(%esp), %ebx
	movl	%eax, 472(%esp)
	movl	268(%esp), %eax
	movb	%bl, 20(%esp)
	movzbl	294(%esp), %ebx
	movl	%eax, 476(%esp)
	movl	272(%esp), %eax
	movb	%bl, 19(%esp)
	movzbl	295(%esp), %ebx
	movl	%eax, 480(%esp)
	movl	276(%esp), %eax
	movb	%bl, 18(%esp)
	movzbl	297(%esp), %ebx
	movl	%eax, 484(%esp)
	movl	280(%esp), %eax
	movl	292(%esp), %edx
	movl	%esi, 8(%esp)
	movl	%eax, 488(%esp)
	movl	284(%esp), %eax
	movb	%bl, 17(%esp)
	movl	%eax, 492(%esp)
	movl	288(%esp), %eax
	movzwl	302(%esp), %ebx
	movl	300(%esp), %ecx
	movl	%edx, 500(%esp)
	movl	%eax, 496(%esp)
	movw	%bx, 14(%esp)
	movl	44(%esp), %ebx
	movl	%esi, 504(%esp)
	movl	%ecx, 508(%esp)
	cmpl	$1, (%ebx)
	jne	L321
	movl	8(%ebx), %ecx
	movl	60(%esp), %esi
	movl	4(%ecx), %ebx
	leal	-241(%esi,%ebx), %ebx
	testl	%ebx, %ebx
	js	L339
	movzbl	%dh, %esi
	movl	8(%ecx), %edx
	movl	%esi, 56(%esp)
	movl	%eax, %esi
	shrl	$16, %esi
	cmpl	%ebx, %edx
	cmovg	%ebx, %edx
	movl	44(%esp), %ebx
	movl	%edx, 4(%ecx)
	cmpl	$-1, 12(%ebx)
	je	L419
L340:
	movzwl	14(%esp), %edx
	movzbl	%al, %ebx
	movl	%esi, %eax
	movzbl	8(%esp), %ecx
	movzbl	%al, %esi
	movzbl	36(%esp), %eax
	movl	%ebx, 48(%edi)
	addl	%edx, %edx
	movl	%esi, 56(%edi)
	movl	%edx, 40(%edi)
	movzbl	56(%esp), %edx
	movl	%eax, 64(%edi)
	movzbl	20(%esp), %eax
	movl	%edx, 212(%edi)
	movzbl	19(%esp), %edx
	movl	%eax, 68(%edi)
	movzbl	48(%esp), %eax
	movl	%edx, 220(%edi)
	movzbl	18(%esp), %edx
	movl	%ecx, 44(%edi)
	movl	%edx, 224(%edi)
	movzbl	17(%esp), %edx
	movl	%eax, 204(%edi)
	movl	%edx, 200(%edi)
	leal	-1(%ebx), %edx
	cmpl	$11, %edx
	jbe	L341
	andl	$-2, %ecx
	movl	%ecx, 44(%edi)
L342:
	leal	-1(%eax), %edx
	cmpl	$11, %edx
	jbe	L350
	andl	$-2, 200(%edi)
L351:
	movl	36(%edi), %eax
	leal	292(%esp), %ebx
	movl	$-1, %esi
	movl	%eax, 56(%esp)
	movl	$12, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L360:
	movzbl	(%ebx,%eax), %ecx
	cmpl	%ecx, 56(%esp)
	movl	%ecx, %edx
	cmovle	%esi, %edx
	movb	%dl, 512(%edi,%eax,2)
	addl	$1, %eax
	cmpl	$108, %eax
	jne	L360
L336:
	movl	56(%esp), %eax
	testl	%eax, %eax
	jle	L375
L333:
	leal	512(%esp), %eax
	movl	%edi, 36(%esp)
	leal	530(%esp), %esi
	movl	52(%esp), %edi
	movl	%eax, 20(%esp)
	movl	$0, 56(%esp)
	jmp	L366
	.p2align 4,,10
	.p2align 3
L421:
	movl	44(%esp), %ecx
	movl	40(%esp), %eax
	movl	$40, %edx
	movl	180(%eax), %eax
	movl	%ecx, (%esp)
	movl	$1, %ecx
	movl	%eax, 52(%esp)
	leal	96(%esp), %eax
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	cmpl	$1, %eax
	jne	L321
	movl	96(%esp), %eax
	movl	%eax, -18(%esi)
	cmpl	$268435456, %eax
	ja	L321
	movzbl	109(%esp), %ecx
	movl	56(%esp), %eax
	imull	$52, %edi, %edx
	movlps	100(%esp), %xmm0
	movb	%cl, -5(%esi)
	movzwl	110(%esp), %ecx
	sall	$6, %eax
	addl	%ebx, %eax
	movl	52(%esp), %ebx
	movlps	%xmm0, -14(%esi)
	movw	%cx, -4(%esi)
	movzbl	112(%esp), %ecx
	addl	%edx, %ebx
	movzbl	108(%esp), %edx
	movb	%cl, -2(%esi)
	movzbl	113(%esp), %ecx
	movb	%dl, -6(%esi)
	movb	%cl, -1(%esi)
	movl	114(%esp), %ecx
	movl	%ecx, (%esi)
	movl	118(%esp), %ecx
	movl	%ecx, 4(%esi)
	movl	122(%esp), %ecx
	movl	%ecx, 8(%esi)
	movl	126(%esp), %ecx
	movl	%ecx, 12(%esi)
	movl	130(%esp), %ecx
	movl	%ecx, 16(%esi)
	movzwl	134(%esp), %ecx
	movw	%cx, 20(%esi)
	movl	$22, %ecx
	movl	%edx, (%eax)
	movzbl	-3(%esi), %edx
	movl	%edx, 8(%eax)
	movsbl	-2(%esi), %edx
	movl	%edx, 12(%eax)
	movsbl	-5(%esi), %edx
	movl	%edx, 16(%eax)
	movzbl	506(%esp), %edx
	movl	%edi, 40(%eax)
	movl	%edx, 20(%eax)
	movzbl	508(%esp), %edx
	sall	$2, %edx
	movl	%edx, 24(%eax)
	movzbl	509(%esp), %edx
	movl	%edx, 28(%eax)
	movzbl	507(%esp), %edx
	movl	%edx, 32(%eax)
	movl	%esi, %edx
	movl	%ebx, %eax
	call	__Z18libxmp_copy_adjustPcPhi.isra.0
	movl	-18(%esi), %eax
	movl	$0, 48(%esp)
	movl	%eax, 32(%ebx)
	movl	-14(%esi), %ecx
	movl	%eax, 52(%esp)
	movl	%ecx, 36(%ebx)
	movl	-10(%esi), %eax
	addl	-14(%esi), %eax
	movl	$0, 44(%ebx)
	movl	%eax, 40(%ebx)
	movzbl	-4(%esi), %edx
	testb	$16, %dl
	je	L363
	movl	52(%esp), %edx
	sarl	%ecx
	sarl	%eax
	movl	$1, 48(%esp)
	movl	$1, 44(%ebx)
	sarl	%edx
	movl	%ecx, 36(%ebx)
	movl	%edx, 32(%ebx)
	movl	%eax, 40(%ebx)
	movzbl	-4(%esi), %edx
L363:
	testb	$32, %dl
	je	L364
	sarl	32(%ebx)
	sarl	36(%ebx)
	sarl	40(%ebx)
	movzbl	-4(%esi), %edx
L364:
	leal	(%edx,%edx), %eax
	andl	$2, %eax
	orl	48(%esp), %eax
	movl	%eax, %edx
	movl	%eax, 44(%ebx)
	orl	$6, %edx
	testb	$2, -4(%esi)
	cmovne	%edx, %eax
	addl	$1, 56(%esp)
	addl	$1, %edi
	addl	$40, %esi
	movl	%eax, 44(%ebx)
	movl	36(%esp), %eax
	movl	36(%eax), %eax
	cmpl	56(%esp), %eax
	jle	L420
L366:
	movl	36(%esp), %eax
	movl	40(%esp), %ecx
	movl	756(%eax), %ebx
	movl	144(%ecx), %eax
	cmpl	%edi, %eax
	jg	L362
	leal	(%eax,%eax,2), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	movl	%ecx, %eax
	sarl	%edx
	call	__Z22libxmp_realloc_samplesP11module_datai
	cmpl	$-1, %eax
	je	L313
L362:
	movl	44(%esp), %eax
	cmpl	$1, (%eax)
	je	L421
L321:
	movl	$-1, %eax
L313:
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
L416:
	.cfi_restore_state
	movl	40(%esp), %eax
	movl	$22, 12(%edi)
	movl	176(%eax), %edi
	addl	%ebx, %edi
	jmp	L318
L339:
	movl	44(%esp), %eax
	movl	$22, 12(%eax)
	jmp	L321
	.p2align 4,,10
	.p2align 3
L418:
	xorl	%eax, %eax
L329:
	movl	$0, 304(%esp,%eax)
	movl	$0, 308(%esp,%eax)
	movl	$0, 312(%esp,%eax)
	movl	$0, 316(%esp,%eax)
	addl	$16, %eax
	cmpl	$208, %eax
	jb	L329
	movl	44(%esp), %eax
	cmpl	$1, (%eax)
	jne	L331
	movl	8(%eax), %eax
	movl	4(%eax), %ecx
	leal	-33(%ecx,%edx), %ecx
	testl	%ecx, %ecx
	js	L422
	movl	8(%eax), %edx
	cmpl	%ecx, %edx
	cmovg	%ecx, %edx
	movl	%edx, 4(%eax)
	movl	44(%esp), %eax
	cmpl	$-1, 12(%eax)
	je	L335
L414:
	movl	36(%edi), %eax
	movl	%eax, 56(%esp)
	jmp	L336
L420:
	movl	%edi, 52(%esp)
	xorl	%ebx, %ebx
	movl	36(%esp), %edi
	testl	%eax, %eax
	jle	L361
	cmpl	$259, 24(%esp)
	jg	L423
L361:
	movl	44(%esp), %eax
	cmpl	$1, (%eax)
	jne	L321
	movl	60(%esp), %edx
L334:
	movzwl	88(%esp), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	addl	28(%esp), %eax
	addl	%ebx, %eax
	js	L339
	movl	44(%esp), %edi
	movl	8(%edi), %ecx
	movl	8(%ecx), %edx
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	movl	%edx, 4(%ecx)
	cmpl	$-1, 12(%edi)
	jne	L326
	movl	$0, 12(%edi)
	jmp	L326
L417:
	movl	$0, 12(%eax)
	jmp	L326
L350:
	sall	$2, %eax
	leal	228(%edi), %esi
	cmpl	$16, %eax
	jnb	L352
	testb	$8, %al
	jne	L424
	testb	$4, %al
	jne	L425
	testl	%eax, %eax
	je	L351
	movzbl	448(%esp), %eax
	movb	%al, 228(%edi)
	jmp	L351
L341:
	leal	0(,%ebx,4), %eax
	leal	72(%edi), %esi
	cmpl	$16, %eax
	jnb	L343
	testb	$8, %al
	jne	L426
	testb	$4, %al
	jne	L427
	testl	%eax, %eax
	jne	L428
L344:
	movl	204(%edi), %eax
	jmp	L342
L419:
	movl	$0, 12(%ebx)
	jmp	L340
L423:
	movl	%edi, 56(%esp)
	xorl	%esi, %esi
	movl	20(%esp), %edi
	jmp	L370
	.p2align 4,,10
	.p2align 3
L367:
	movl	56(%esp), %eax
	addl	$1, %esi
	cmpl	%esi, 36(%eax)
	jle	L361
L415:
	addl	$40, %edi
L370:
	movl	56(%esp), %ecx
	movl	%esi, %eax
	movl	$0, 4(%esp)
	sall	$6, %eax
	movl	44(%esp), %edx
	addl	756(%ecx), %eax
	movl	40(%esp), %ecx
	imull	$52, 40(%eax), %eax
	addl	180(%ecx), %eax
	movl	$1, %ecx
	movl	%eax, (%esp)
	movl	40(%esp), %eax
	call	__Z18libxmp_load_sampleP11module_dataP10HIO_HANDLEiP10xmp_samplePKv
	movl	(%edi), %eax
	addl	%eax, %ebx
	testb	$32, 14(%edi)
	je	L367
	movl	44(%esp), %ecx
	cmpl	$1, (%ecx)
	jne	L368
	movl	8(%ecx), %edx
	shrl	%eax
	addl	4(%edx), %eax
	js	L429
	movl	8(%edx), %ecx
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	44(%esp), %eax
	movl	%ecx, 4(%edx)
	cmpl	$-1, 12(%eax)
	jne	L367
	movl	$0, 12(%eax)
	jmp	L367
L343:
	movl	384(%esp,%eax), %edx
	movl	%edx, -16(%esi,%eax)
	movl	388(%esp,%eax), %edx
	movl	%edx, -12(%esi,%eax)
	movl	392(%esp,%eax), %edx
	movl	%edx, -8(%esi,%eax)
	movl	396(%esp,%eax), %edx
	movl	%edx, -4(%esi,%eax)
	subl	$1, %eax
	cmpl	$16, %eax
	jb	L344
	andl	$-16, %eax
	xorl	%ebx, %ebx
	movl	%eax, 48(%esp)
L348:
	movl	408(%esp,%ebx), %eax
	movl	404(%esp,%ebx), %ecx
	movl	%eax, 56(%esp)
	movl	400(%esp,%ebx), %edx
	movl	412(%esp,%ebx), %eax
	movl	%ecx, 4(%esi,%ebx)
	movl	%edx, (%esi,%ebx)
	movl	56(%esp), %ecx
	movl	%eax, 12(%esi,%ebx)
	movl	%ecx, 8(%esi,%ebx)
	addl	$16, %ebx
	cmpl	48(%esp), %ebx
	jb	L348
	jmp	L344
L352:
	movl	432(%esp,%eax), %edx
	movl	%edx, -16(%esi,%eax)
	movl	436(%esp,%eax), %edx
	movl	%edx, -12(%esi,%eax)
	movl	440(%esp,%eax), %edx
	movl	%edx, -8(%esi,%eax)
	movl	444(%esp,%eax), %edx
	movl	%edx, -4(%esi,%eax)
	subl	$1, %eax
	cmpl	$16, %eax
	jb	L351
	andl	$-16, %eax
	xorl	%ebx, %ebx
	movl	%eax, 48(%esp)
L357:
	movl	456(%esp,%ebx), %eax
	movl	452(%esp,%ebx), %ecx
	movl	%eax, 56(%esp)
	movl	448(%esp,%ebx), %edx
	movl	460(%esp,%ebx), %eax
	movl	%ecx, 4(%esi,%ebx)
	movl	%edx, (%esi,%ebx)
	movl	56(%esp), %ecx
	movl	%eax, 12(%esi,%ebx)
	movl	%ecx, 8(%esi,%ebx)
	addl	$16, %ebx
	cmpl	48(%esp), %ebx
	jb	L357
	jmp	L351
L428:
	movzbl	400(%esp), %eax
	movb	%al, 72(%edi)
	jmp	L344
L422:
	movl	44(%esp), %eax
	xorl	%ebx, %ebx
	movl	$22, 12(%eax)
	movl	36(%edi), %ecx
	testl	%ecx, %ecx
	jg	L333
	jmp	L334
	.p2align 4,,10
	.p2align 3
L335:
	movl	44(%esp), %eax
	movl	$0, 12(%eax)
	jmp	L414
L429:
	movl	$22, 12(%ecx)
	jmp	L367
L331:
	movl	36(%edi), %edx
	testl	%edx, %edx
	jg	L333
	jmp	L321
	.p2align 4,,10
	.p2align 3
L375:
	xorl	%ebx, %ebx
	jmp	L361
L374:
	movl	$0, 52(%esp)
	jmp	L315
L425:
	movl	448(%esp), %edx
	movl	%edx, (%esi)
	movl	444(%esp,%eax), %edx
	movl	%edx, -4(%esi,%eax)
	jmp	L351
L427:
	movl	400(%esp), %edx
	movl	%edx, (%esi)
	movl	396(%esp,%eax), %edx
	movl	%edx, -4(%esi,%eax)
	jmp	L344
L426:
	movl	400(%esp), %ecx
	movl	404(%esp), %ebx
	movl	%ecx, (%esi)
	movl	%ebx, 4(%esi)
	movl	392(%esp,%eax), %ecx
	movl	396(%esp,%eax), %ebx
	movl	%ecx, -8(%esi,%eax)
	movl	%ebx, -4(%esi,%eax)
	jmp	L344
L368:
	movl	56(%esp), %eax
	addl	$1, %esi
	cmpl	%esi, 36(%eax)
	jg	L415
	jmp	L321
	.p2align 4,,10
	.p2align 3
L424:
	movl	448(%esp), %ecx
	movl	452(%esp), %ebx
	movl	%ecx, (%esi)
	movl	%ebx, 4(%esi)
	movl	440(%esp,%eax), %ecx
	movl	444(%esp,%eax), %ebx
	movl	%ecx, -8(%esi,%eax)
	movl	%ebx, -4(%esi,%eax)
	jmp	L351
	.cfi_endproc
LFE28:
	.section .rdata,"dr"
LC2:
	.ascii "MED2XM\0"
LC3:
	.ascii "FastTracker v2.00\0"
LC4:
	.ascii "OpenMPT \0"
	.text
	.p2align 4
	.globl	__ZL7xm_loadP11module_dataP10HIO_HANDLEi.lto_priv.0
	.def	__ZL7xm_loadP11module_dataP10HIO_HANDLEi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL7xm_loadP11module_dataP10HIO_HANDLEi.lto_priv.0:
LFB35:
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
	subl	$480, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	12(%ebp), %edi
	movl	8(%ebp), %ebx
	cmpl	$1, (%edi)
	je	L491
L431:
	movl	$-1, %eax
L430:
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
L491:
	.cfi_restore_state
	movl	%edi, (%esp)
	leal	64(%esp), %eax
	movl	$1, %ecx
	movl	$80, %edx
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	cmpl	$1, %eax
	jne	L431
	movl	64(%esp), %eax
	movl	%eax, 144(%esp)
	movl	68(%esp), %eax
	movl	%eax, 148(%esp)
	movl	72(%esp), %eax
	movl	%eax, 152(%esp)
	movl	76(%esp), %eax
	movl	%eax, 156(%esp)
	movzbl	80(%esp), %eax
	movb	%al, 160(%esp)
	movl	81(%esp), %eax
	movl	%eax, 161(%esp)
	movl	85(%esp), %eax
	movl	%eax, 165(%esp)
	movl	89(%esp), %eax
	movl	%eax, 169(%esp)
	movl	93(%esp), %eax
	movl	%eax, 173(%esp)
	movl	97(%esp), %eax
	movl	%eax, 177(%esp)
	movl	102(%esp), %eax
	movl	%eax, 182(%esp)
	movl	106(%esp), %eax
	movl	%eax, 186(%esp)
	movl	110(%esp), %eax
	movl	%eax, 190(%esp)
	movl	114(%esp), %eax
	movl	%eax, 194(%esp)
	movl	118(%esp), %eax
	movl	%eax, 198(%esp)
	movzwl	122(%esp), %eax
	movw	%ax, 202(%esp)
	movl	124(%esp), %edx
	movzwl	130(%esp), %eax
	movzwl	136(%esp), %ecx
	movups	128(%esp), %xmm0
	movl	%edx, 204(%esp)
	cmpw	$256, 134(%esp)
	movw	%ax, 34(%esp)
	movzwl	142(%esp), %eax
	movw	%cx, 36(%esp)
	movzwl	140(%esp), %ecx
	movups	%xmm0, 208(%esp)
	movw	%ax, 32(%esp)
	seta	%al
	cmpw	$256, 128(%esp)
	movl	%eax, %esi
	seta	%al
	movw	%cx, 30(%esp)
	orl	%esi, %eax
	cmpw	$64, 132(%esp)
	seta	%cl
	orb	%cl, %al
	jne	L431
	movzwl	36(%esp), %ecx
	orw	34(%esp), %cx
	cmpw	$255, %cx
	ja	L431
	movzwl	32(%esp), %eax
	subl	$32, %eax
	cmpw	$968, %ax
	ja	L460
	cmpw	$31, 30(%esp)
	jbe	L432
L460:
	cmpl	$843334989, 182(%esp)
	jne	L431
	cmpw	$19800, 186(%esp)
	jne	L431
L432:
	subl	$20, %edx
	cmpl	$256, %edx
	ja	L431
	xorl	%eax, %eax
L436:
	movl	$0, 224(%esp,%eax)
	movl	$0, 228(%esp,%eax)
	movl	$0, 232(%esp,%eax)
	movl	$0, 236(%esp,%eax)
	addl	$16, %eax
	cmpl	$256, %eax
	jb	L436
	cmpl	$1, (%edi)
	jne	L431
	movl	%edi, (%esp)
	movl	$1, %ecx
	leal	224(%esp), %eax
	call	__Z8hio_readPvjjP10HIO_HANDLE.part.0
	cmpl	$1, %eax
	jne	L431
	leal	161(%esp), %eax
	movl	$20, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_strncpy
	movzwl	214(%esp), %ecx
	movzwl	212(%esp), %eax
	movl	$8363, 1264(%ebx)
	movzwl	216(%esp), %esi
	movzwl	208(%esp), %edx
	movl	%eax, 136(%ebx)
	imull	%ecx, %eax
	movl	%esi, 140(%ebx)
	movzwl	210(%esp), %esi
	movl	%ecx, 128(%ebx)
	leal	224(%esp), %ecx
	addl	$1, %eax
	movl	%esi, 160(%ebx)
	movzwl	220(%esp), %esi
	movl	%eax, 132(%ebx)
	movzwl	218(%esp), %eax
	movl	%esi, 148(%ebx)
	movzwl	222(%esp), %esi
	addl	%eax, %eax
	movl	%edx, 156(%ebx)
	andl	$2, %eax
	movl	%esi, 152(%ebx)
	leal	43(%esp), %esi
	movl	%eax, 1300(%ebx)
	leal	952(%ebx), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	leal	182(%esp), %eax
	movl	$LC0, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$21, 4(%esp)
	movl	%esi, (%esp)
	call	__Z15libxmp_snprintfPcjPKcz.constprop.0
	leal	63(%esp), %eax
	jmp	L441
	.p2align 4,,10
	.p2align 3
L438:
	testb	%dl, %dl
	jne	L440
	cmpl	%esi, %eax
	je	L440
L457:
	subl	$1, %eax
L441:
	movzbl	(%eax), %edx
	cmpb	$32, %dl
	jne	L438
	movb	$0, (%eax)
	cmpl	%esi, %eax
	jne	L457
	.p2align 4
	.p2align 3
L440:
	movl	$17, 8(%esp)
	movl	$LC3, 4(%esp)
	movl	%esi, (%esp)
	call	_strncmp
	testl	%eax, %eax
	je	L442
	cmpl	$1852141647, 43(%esp)
	je	L492
L445:
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z15libxmp_set_typeP11module_dataPKcz
	cmpl	$1, (%edi)
	jne	L431
	movl	16(%ebp), %edx
	movl	204(%esp), %eax
	leal	60(%edx,%eax), %edx
	testl	%edx, %edx
	js	L493
	movl	8(%edi), %ecx
	movl	8(%ecx), %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	%eax, 4(%ecx)
	cmpl	$-1, 12(%edi)
	je	L494
L448:
	movzwl	202(%esp), %edx
	movl	%edi, %ecx
	movl	%ebx, %eax
	cmpw	$259, %dx
	ja	L449
	call	__ZL16load_instrumentsP11module_dataiP10HIO_HANDLE
	cmpl	$-1, %eax
	je	L430
	movzwl	202(%esp), %edx
	movl	%edi, %ecx
	movl	%ebx, %eax
	call	__ZL13load_patternsP11module_dataiP10HIO_HANDLE
	cmpl	$-1, %eax
	je	L430
L450:
	cmpw	$259, 202(%esp)
	ja	L451
	movl	140(%ebx), %esi
	testl	%esi, %esi
	jle	L451
	movl	$0, 36(%esp)
	movl	176(%ebx), %eax
	movl	%edi, 12(%ebp)
	xorl	%edi, %edi
L452:
	leal	(%eax,%edi), %edx
	xorl	%esi, %esi
	movl	36(%edx), %ecx
	testl	%ecx, %ecx
	jle	L454
	.p2align 4
	.p2align 3
L453:
	movl	%esi, %eax
	movl	$0, 4(%esp)
	movl	$1, %ecx
	addl	$1, %esi
	sall	$6, %eax
	addl	756(%edx), %eax
	imull	$52, 40(%eax), %eax
	addl	180(%ebx), %eax
	movl	%eax, (%esp)
	movl	12(%ebp), %edx
	movl	%ebx, %eax
	call	__Z18libxmp_load_sampleP11module_dataP10HIO_HANDLEiP10xmp_samplePKv
	movl	176(%ebx), %eax
	leal	(%eax,%edi), %edx
	cmpl	%esi, 36(%edx)
	jg	L453
L454:
	addl	$1, 36(%esp)
	addl	$764, %edi
	movl	36(%esp), %ecx
	cmpl	%ecx, 140(%ebx)
	jg	L452
	.p2align 4
	.p2align 3
L451:
	movl	136(%ebx), %edx
	testl	%edx, %edx
	jle	L455
	leal	(%edx,%edx,2), %ecx
	leal	184(%ebx), %eax
	leal	(%eax,%ecx,4), %edx
	andl	$1, %ecx
	je	L456
	movl	$128, (%eax)
	leal	196(%ebx), %eax
	cmpl	%edx, %eax
	je	L455
	.p2align 5
	.p2align 4
	.p2align 3
L456:
	movl	$128, (%eax)
	addl	$24, %eax
	movl	$128, -12(%eax)
	cmpl	%edx, %eax
	jne	L456
L455:
	orl	$33554464, 1292(%ebx)
	xorl	%eax, %eax
	movl	$1, 1296(%ebx)
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
L492:
	.cfi_restore_state
	cmpl	$542396493, 47(%esp)
	jne	L445
	.p2align 4
	.p2align 3
L442:
	orl	$67108864, 1292(%ebx)
	jmp	L445
	.p2align 4,,10
	.p2align 3
L449:
	call	__ZL13load_patternsP11module_dataiP10HIO_HANDLE
	cmpl	$-1, %eax
	je	L430
	movzwl	202(%esp), %edx
	movl	%edi, %ecx
	movl	%ebx, %eax
	call	__ZL16load_instrumentsP11module_dataiP10HIO_HANDLE
	cmpl	$-1, %eax
	jne	L450
	jmp	L430
	.p2align 4,,10
	.p2align 3
L493:
	movl	$22, 12(%edi)
	jmp	L431
	.p2align 4,,10
	.p2align 3
L494:
	movl	$0, 12(%edi)
	jmp	L448
	.cfi_endproc
LFE35:
	.p2align 4
	.globl	__ZL11scan_moduleP12context_dataii.lto_priv.0
	.def	__ZL11scan_moduleP12context_dataii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL11scan_moduleP12context_dataii.lto_priv.0:
LFB36:
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
	movl	$512, %esi
	pushl	%ebx
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	$3200, %edx
	andl	$-8, %esp
	subl	$916, %esp
	cmpl	$4, 2616(%eax)
	cmovne	%esi, %edx
	movl	%edx, 20(%esp)
	movl	1476(%eax), %edx
	testl	%edx, %edx
	je	L769
	movl	%ecx, 24(%esp)
	movl	%eax, %esi
	movl	%ebx, 28(%esp)
	jle	L498
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L502:
	movzbl	2272(%esi,%ebx), %eax
	cmpl	%eax, 1448(%esi)
	jle	L499
	movl	1488(%esi), %edx
	movl	(%edx,%eax,4), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L501
L499:
	movl	$1, %eax
L501:
	movl	9804(%esi), %edx
	movl	(%edx,%ebx,4), %edx
	movl	%eax, 8(%esp)
	addl	$1, %ebx
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	_memset
	cmpl	%ebx, 1476(%esi)
	jg	L502
L498:
	movl	1456(%esi), %eax
	testl	%eax, %eax
	jle	L503
	leal	0(,%eax,4), %ebx
	leal	404(%esp), %eax
	movl	$0, 4(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, (%esp)
	call	_memset
	leal	148(%esp), %eax
	movl	%ebx, 8(%esp)
	movl	$255, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
L503:
	movl	1484(%esi), %eax
	movl	$0, 64(%esp)
	xorl	%ebx, %ebx
	movl	$0, 36(%esp)
	movl	%eax, 72(%esp)
	movl	1472(%esi), %eax
	movl	$-1, 52(%esp)
	movl	%eax, 112(%esp)
	movl	1468(%esi), %eax
	fnstcw	146(%esp)
	movl	$0, 116(%esp)
	movl	%eax, 124(%esp)
	movzwl	146(%esp), %eax
	movl	$0, 120(%esp)
	movl	$0, 140(%esp)
	orb	$12, %ah
	movl	$-1, 56(%esp)
	movw	%ax, 144(%esp)
	movl	28(%esp), %eax
	fldl	2568(%esi)
	movl	$0, 40(%esp)
	fldcw	144(%esp)
	fistpl	88(%esp)
	fldcw	146(%esp)
	subl	$1, %eax
	movl	%eax, 48(%esp)
	movzbl	2615(%esi), %eax
	shrb	$3, %al
	andl	$1, %eax
	movb	%al, 19(%esp)
	fldz
	fldz
L504:
	addl	$1, 48(%esp)
	movl	1476(%esi), %ecx
	movl	48(%esp), %eax
	cmpl	%ecx, %eax
	jnb	L506
	movzbl	2272(%esi,%eax), %edx
L507:
	movl	28(%esp), %eax
	testl	%eax, %eax
	je	L512
	movl	48(%esp), %eax
	cmpb	$-1, 64(%esi,%eax)
	jne	L602
L512:
	movl	48(%esp), %edi
	movzbl	%dl, %eax
	movzbl	24(%esp), %edx
	movb	%dl, 64(%esi,%edi)
	cmpl	%eax, 1448(%esi)
	jg	L513
	cmpl	$255, %eax
	jne	L516
	cmpb	$0, 19(%esp)
	cmove	%edi, %ecx
	movl	%ecx, 48(%esp)
L516:
	addl	$1, 140(%esp)
	cmpl	$513, 140(%esp)
	jne	L504
L602:
	movl	$0, 132(%esp)
	movl	%ebx, %edi
	jmp	L505
L770:
	movl	%ecx, %edi
	movl	%ebx, %esi
L505:
	testl	%edi, %edi
	je	L629
	movl	9804(%esi), %eax
	movl	48(%esp), %edi
	movl	(%eax,%edi,4), %eax
L526:
	movl	48(%esp), %edi
	movzbl	2272(%esi,%edi), %edx
	cmpl	%edx, 1448(%esi)
	jle	L590
	movl	1488(%esi), %ecx
	movl	120(%esp), %edi
	movl	(%ecx,%edx,4), %edx
	cmpl	%edi, (%edx)
	jg	L778
L590:
	movl	$0, 120(%esp)
L589:
	movl	24(%esp), %edx
	movzbl	(%eax), %eax
	movl	372(%esi), %ecx
	movl	120(%esp), %edi
	sall	$4, %edx
	movl	%eax, 12(%ecx,%edx)
	movl	372(%esi), %eax
	movl	%edi, 4(%eax,%edx)
	movl	48(%esp), %edi
	movl	372(%esi), %eax
	movl	%edi, 8(%eax,%edx)
	movl	132(%esp), %eax
	imull	124(%esp), %eax
	addl	116(%esp), %eax
	movl	%eax, 140(%esp)
	fildl	140(%esp)
	fmull	2576(%esi)
	fildl	88(%esp)
	fmulp	%st, %st(1)
	fildl	112(%esp)
	fdivrp	%st, %st(1)
	fxch	%st(1)
	fsubp	%st, %st(2)
	faddp	%st, %st(1)
	fldcw	144(%esp)
	fistpl	140(%esp)
	fldcw	146(%esp)
	movl	140(%esp), %edx
L769:
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
L506:
	.cfi_restore_state
	movl	1480(%esi), %eax
	movl	%eax, 48(%esp)
	cmpl	%eax, %ecx
	jge	L779
L508:
	movl	28(%esp), %eax
	movl	%eax, 48(%esp)
	movzbl	2272(%esi,%eax), %edx
L510:
	cmpb	$-1, %dl
	jne	L507
	cmpb	$0, 19(%esp)
	je	L507
	jmp	L602
	.p2align 4,,10
	.p2align 3
L513:
	movl	1488(%esi), %edx
	movl	120(%esp), %edi
	leal	(%edx,%eax,4), %ecx
	movl	(%ecx), %eax
	cmpl	%edi, (%eax)
	jle	L601
	movl	%edi, %eax
L517:
	movl	48(%esp), %edi
	leal	0(,%edi,4), %edx
	movl	%edx, 76(%esp)
	movl	9804(%esi), %edx
	movl	(%edx,%edi,4), %edx
	cmpb	$0, (%edx,%eax)
	je	L636
	movl	64(%esp), %edi
	testl	%edi, %edi
	je	L602
L636:
	movl	76(%esp), %eax
	addl	48(%esp), %eax
	movl	2644(%esi,%eax,4), %edx
	testl	%edx, %edx
	jns	L519
	movl	72(%esp), %edi
	fildl	116(%esp)
	movl	%edi, 2640(%esi,%eax,4)
	movl	112(%esp), %edi
	movl	%edi, 2636(%esi,%eax,4)
	movl	124(%esp), %edi
	movl	%edi, 2632(%esi,%eax,4)
	fmull	2576(%esi)
	fildl	88(%esp)
	fmulp	%st, %st(1)
	fildl	112(%esp)
	fdivrp	%st, %st(1)
	fadd	%st(1), %st
	fldcw	144(%esp)
	fistpl	2644(%esi,%eax,4)
	fldcw	146(%esp)
L519:
	movl	76(%esp), %eax
	movl	48(%esp), %edi
	addl	%edi, %eax
	movl	2648(%esi,%eax,4), %eax
	testl	%eax, %eax
	jne	L520
	testl	%edi, %edi
	jne	L780
L520:
	movl	1456(%esi), %edx
	movl	(%ecx), %ecx
	testl	%edx, %edx
	jle	L522
	leal	660(%esp), %eax
	movl	%ebx, 132(%esp)
	movl	1492(%esi), %edi
	movl	%eax, 136(%esp)
	xorl	%eax, %eax
	movl	%esi, 128(%esp)
	movl	136(%esp), %esi
	.p2align 5
	.p2align 4
	.p2align 3
L523:
	movl	4(%ecx,%eax,4), %ebx
	movl	(%edi,%ebx,4), %ebx
	movl	%ebx, (%esi,%eax,4)
	addl	$1, %eax
	cmpl	%edx, %eax
	jne	L523
	movl	132(%esp), %ebx
	movl	128(%esp), %esi
L522:
	movl	(%ecx), %eax
	movl	%eax, 96(%esp)
	cmpl	%eax, 120(%esp)
	jge	L524
	movl	20(%esp), %eax
	movl	$0, 80(%esp)
	movl	%ebx, %ecx
	movl	%esi, %ebx
	movl	$0, 132(%esp)
	leal	1(%eax), %edi
	movl	$0, 60(%esp)
	movl	%edi, 32(%esp)
	.p2align 4
	.p2align 3
L586:
	movl	112(%esp), %edi
	movl	$20, %eax
	movl	32(%esp), %esi
	cmpl	%eax, %edi
	cmovge	%edi, %eax
	movl	%eax, 112(%esp)
	cmpl	%esi, 60(%esp)
	je	L770
	movl	9804(%ebx), %eax
	movl	76(%esp), %edi
	movl	36(%esp), %esi
	movl	120(%esp), %edx
	addl	(%eax,%edi), %edx
	movzbl	(%edx), %eax
	testl	%esi, %esi
	jne	L525
	testb	%al, %al
	jne	L781
L525:
	addl	$1, %eax
	movl	76(%esp), %edi
	movb	%al, (%edx)
	movl	9804(%ebx), %eax
	movl	(%eax,%edi), %eax
	movl	120(%esp), %edi
	cmpb	$0, (%eax,%edi)
	je	L771
	movl	1456(%ebx), %ecx
	movl	$0, 44(%esp)
	testl	%ecx, %ecx
	jle	L527
	leal	660(%esp), %eax
	xorl	%esi, %esi
	movl	%eax, 108(%esp)
	leal	0(,%edi,8), %eax
	movl	%ebx, %edi
	movl	%eax, 84(%esp)
	jmp	L584
	.p2align 5
	.p2align 4,,10
	.p2align 3
L528:
	addl	$1, %esi
	cmpl	%esi, 1456(%edi)
	jle	L782
L584:
	movl	108(%esp), %eax
	movl	(%eax,%esi,4), %edx
	movl	120(%esp), %eax
	cmpl	%eax, (%edx)
	jle	L528
	addl	84(%esp), %edx
	movzbl	8(%edx), %ecx
	movzbl	9(%edx), %ebx
	movzbl	7(%edx), %eax
	movb	%cl, 100(%esp)
	movl	%ecx, 136(%esp)
	movzbl	10(%edx), %ecx
	movl	%ebx, 128(%esp)
	movb	%cl, 92(%esp)
	movl	%ecx, 140(%esp)
	cmpl	$16, %eax
	je	L637
	cmpl	$16, %ebx
	je	L637
L529:
	cmpl	$17, %eax
	je	L638
	cmpl	$17, 128(%esp)
	je	L638
L533:
	cmpl	$15, 128(%esp)
	jne	L541
	movl	140(%esp), %ecx
	testl	%ecx, %ecx
	je	L541
	movl	2612(%edi), %ebx
	movl	132(%esp), %edx
	imull	124(%esp), %edx
	addl	%edx, 116(%esp)
	andl	$268435456, %ebx
	movl	%ebx, 132(%esp)
	jne	L607
	movl	124(%esp), %edx
	movl	%ecx, 124(%esp)
	testb	$1, 32(%edi)
	jne	L544
L783:
	movl	124(%esp), %ecx
	cmpl	$31, %ecx
	jle	L544
	fildl	116(%esp)
	fmull	2576(%edi)
	movl	%edx, 124(%esp)
	fildl	88(%esp)
	movl	$0, 116(%esp)
	fmulp	%st, %st(1)
	fildl	112(%esp)
	movl	%ecx, 112(%esp)
	fdivrp	%st, %st(1)
	faddp	%st, %st(1)
L544:
	cmpl	$1, 132(%esp)
	je	L775
L541:
	movl	136(%esp), %ebx
	testl	%ebx, %ebx
	je	L543
	cmpl	$15, %eax
	jne	L543
	movl	132(%esp), %edx
	movl	124(%esp), %ebx
	imull	%ebx, %edx
	addl	%edx, 116(%esp)
	testb	$16, 2615(%edi)
	jne	L608
	movl	136(%esp), %ecx
	movl	%ebx, %edx
	movl	$1, 132(%esp)
	movl	%ecx, 124(%esp)
	testb	$1, 32(%edi)
	je	L783
	cmpl	$1, 132(%esp)
	jne	L541
	.p2align 4
	.p2align 3
L775:
	movl	$0, 132(%esp)
	.p2align 4
	.p2align 3
L543:
	movl	136(%esp), %ecx
	movl	140(%esp), %ebx
	testl	%ecx, %ecx
	setne	%dl
	testl	%ebx, %ebx
	setne	104(%esp)
	cmpl	$163, %eax
	jne	L545
	testb	%dl, %dl
	je	L545
	movl	132(%esp), %ebx
	imull	124(%esp), %ebx
	addl	%ebx, 116(%esp)
	cmpl	$171, 128(%esp)
	jne	L548
	cmpb	$0, 104(%esp)
	je	L548
	cmpl	$19, 140(%esp)
	jg	L613
	movl	136(%esp), %edx
	movl	$0, 132(%esp)
	movl	%edx, 124(%esp)
L559:
	cmpl	$135, 128(%esp)
	jne	L616
	cmpb	$0, 104(%esp)
	je	L616
	movl	136(%esp), %edx
	cmpl	$135, %eax
	cmovne	140(%esp), %edx
	jmp	L555
	.p2align 4,,10
	.p2align 3
L779:
	movzbl	2272(%esi,%eax), %eax
	movl	%eax, %edx
	cmpl	1448(%esi), %eax
	jge	L508
	movl	48(%esp), %eax
	movzbl	64(%esi,%eax), %eax
	cmpl	%eax, 24(%esp)
	jne	L508
	jmp	L510
L601:
	movl	$0, 120(%esp)
	xorl	%eax, %eax
	jmp	L517
	.p2align 4,,10
	.p2align 3
L545:
	cmpl	$163, 128(%esp)
	jne	L549
	cmpb	$0, 104(%esp)
	je	L549
	cmpl	$163, %eax
	je	L571
	movl	132(%esp), %ebx
	imull	124(%esp), %ebx
	addl	%ebx, 116(%esp)
	cmpl	$171, %eax
	jne	L551
	testb	%dl, %dl
	je	L551
	cmpl	$19, 136(%esp)
	jg	L609
	movl	140(%esp), %edx
	movl	%edx, 124(%esp)
	xorl	%edx, %edx
	movl	%edx, 132(%esp)
	.p2align 4
	.p2align 3
L553:
	cmpl	$11, 128(%esp)
	je	L776
	cmpl	$11, %eax
	jne	L571
L776:
	movl	140(%esp), %edx
	movl	$0, 64(%esp)
	movl	$0, 80(%esp)
	movl	%edx, 56(%esp)
	movl	$0, 96(%esp)
	jmp	L571
	.p2align 4,,10
	.p2align 3
L549:
	cmpl	$171, %eax
	jne	L554
	testb	%dl, %dl
	je	L554
	cmpl	$19, 136(%esp)
	jg	L612
	cmpl	$135, 128(%esp)
	jne	L553
	movl	140(%esp), %edx
	cmpb	$0, 104(%esp)
	je	L553
	.p2align 4
	.p2align 3
L555:
	movl	132(%esp), %ecx
	imull	124(%esp), %ecx
	movl	%edx, %ebx
	addl	116(%esp), %ecx
	fldl	2576(%edi)
	andl	$240, %ebx
	fildl	88(%esp)
	fildl	112(%esp)
	movl	%ecx, 132(%esp)
	fildl	132(%esp)
	movl	%ebx, 132(%esp)
	fmul	%st(3), %st
	fmul	%st(2), %st
	fdiv	%st(1), %st
	faddp	%st, %st(4)
	je	L784
	cmpl	$16, 132(%esp)
	je	L785
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	movl	$0, 116(%esp)
	movl	$0, 132(%esp)
L562:
	cmpl	$136, %eax
	je	L594
	cmpl	$142, %eax
	je	L786
L570:
	cmpl	$11, %eax
	je	L767
	movl	%edx, 112(%esp)
	cmpl	$11, 128(%esp)
	je	L787
L571:
	cmpl	$13, %eax
	je	L641
	cmpl	$13, 128(%esp)
	jne	L575
L641:
	cmpl	$13, %eax
	movl	136(%esp), %edx
	cmovne	140(%esp), %edx
	movl	$0, 96(%esp)
	movl	%edx, %ecx
	andl	$15, %edx
	sarl	$4, %ecx
	leal	(%ecx,%ecx,4), %ecx
	leal	(%edx,%ecx,2), %edx
	movl	%edx, 80(%esp)
L575:
	cmpl	$14, %eax
	je	L642
	cmpl	$14, 128(%esp)
	jne	L528
L642:
	cmpl	$14, %eax
	movl	136(%esp), %eax
	cmovne	140(%esp), %eax
	movl	%eax, 140(%esp)
L579:
	movl	140(%esp), %eax
	sarl	$4, %eax
	cmpl	$14, %eax
	je	L788
	cmpl	$6, %eax
	jne	L528
	movl	140(%esp), %ecx
	andl	$15, %ecx
	je	L582
	leal	404(%esp), %edx
	movl	(%edx,%esi,4), %eax
	testl	%eax, %eax
	je	L583
	subl	$1, %eax
	movl	%eax, (%edx,%esi,4)
	jne	L625
	movl	2612(%edi), %eax
	subl	$1, 36(%esp)
	andl	$1, %eax
	movl	%eax, 64(%esp)
	je	L528
	movl	120(%esp), %eax
	movl	$0, 64(%esp)
	movl	%eax, 148(%esp,%esi,4)
	addl	$1, %esi
	cmpl	%esi, 1456(%edi)
	jg	L584
	.p2align 4
	.p2align 3
L782:
	movl	%edi, %ebx
L527:
	movl	52(%esp), %eax
	testl	%eax, %eax
	js	L585
	movl	148(%esp,%eax,4), %eax
	movl	$-1, 52(%esp)
	movl	%eax, 120(%esp)
L585:
	addl	$1, 120(%esp)
	movl	$1, %ecx
	movl	120(%esp), %eax
	addl	$1, 132(%esp)
	addl	$1, 60(%esp)
	cmpl	96(%esp), %eax
	jl	L586
	movl	80(%esp), %edi
	movl	%ebx, %esi
	movl	%ecx, %ebx
	movl	44(%esp), %ecx
	movl	132(%esp), %eax
	imull	124(%esp), %eax
	movl	$0, 140(%esp)
	addl	%eax, 116(%esp)
	testl	%edi, %edi
	setne	%dl
	xorl	%eax, %eax
	testl	%ecx, %ecx
	setne	%al
	andl	%edx, %eax
	addl	%edi, %eax
	movl	56(%esp), %edi
	movl	%eax, 120(%esp)
	testl	%edi, %edi
	leal	-1(%edi), %eax
	cmovs	48(%esp), %eax
	movl	%eax, 48(%esp)
	movl	$-1, %eax
	cmovs	%edi, %eax
	movl	%eax, 56(%esp)
	jmp	L504
	.p2align 4,,10
	.p2align 3
L637:
	movl	2592(%edi), %edx
	movl	140(%esp), %ebx
	cmpl	%edx, %ebx
	cmovg	%edx, %ebx
	movl	%ebx, 72(%esp)
	cmpl	$16, %eax
	jne	L529
	movl	136(%esp), %ecx
	cmpl	%edx, %ecx
	cmovle	%ecx, %edx
	movl	%edx, 72(%esp)
	cmpl	$17, 128(%esp)
	jne	L533
L532:
	movl	140(%esp), %edx
	testl	%edx, %edx
	jne	L606
	.p2align 4
	.p2align 3
L789:
	movl	40(%esp), %edx
	testl	%edx, %edx
	je	L533
L535:
	movl	40(%esp), %ecx
	movl	%ecx, %edx
	andl	$15, %ecx
	movl	%ecx, %ebx
	movl	2612(%edi), %ecx
	sarl	$4, %edx
	testb	$32, %cl
	je	L536
	cmpl	$15, %ebx
	jne	L537
	testl	%edx, %edx
	je	L537
L773:
	addl	%edx, 72(%esp)
	jmp	L533
L633:
	movl	140(%esp), %eax
	movl	112(%esp), %edx
	movl	%eax, 124(%esp)
	xorl	%eax, %eax
	movl	%eax, 132(%esp)
	.p2align 4
	.p2align 3
L594:
	movl	9804(%edi), %eax
	movl	76(%esp), %ecx
	movl	120(%esp), %ebx
	addl	(%eax,%ecx), %ebx
	movl	100(%esp), %ecx
	movzbl	(%ebx), %eax
	andl	$15, %ecx
	addl	%ecx, %eax
	movl	%ecx, 136(%esp)
	movl	$255, %ecx
	cmpl	$255, %eax
	cmovg	%ecx, %eax
	movl	136(%esp), %ecx
	imull	124(%esp), %ecx
	addl	%ecx, 116(%esp)
	movb	%al, (%ebx)
	cmpl	$11, 128(%esp)
	jne	L569
L621:
	movl	140(%esp), %eax
	movl	%edx, 112(%esp)
	movl	$0, 64(%esp)
	movl	%eax, 56(%esp)
	movl	$0, 80(%esp)
	movl	$0, 96(%esp)
	jmp	L528
	.p2align 4,,10
	.p2align 3
L554:
	cmpl	$171, 128(%esp)
	jne	L560
	cmpb	$0, 104(%esp)
	je	L560
	cmpl	$171, %eax
	jne	L558
	cmpl	$19, 136(%esp)
	jle	L571
	.p2align 4
	.p2align 3
L612:
	movl	136(%esp), %ecx
	movl	%ecx, 68(%esp)
L552:
	movl	132(%esp), %ebx
	imull	124(%esp), %ebx
	addl	116(%esp), %ebx
	movl	68(%esp), %ecx
	movl	$0, 116(%esp)
	movl	%ebx, 132(%esp)
	fildl	132(%esp)
	fmull	2576(%edi)
	fildl	88(%esp)
	movl	$0, 132(%esp)
	fmulp	%st, %st(1)
	fildl	112(%esp)
	movl	%ecx, 112(%esp)
	fdivrp	%st, %st(1)
	faddp	%st, %st(1)
L560:
	cmpl	$135, %eax
	jne	L559
	testb	%dl, %dl
	je	L559
	movl	136(%esp), %edx
	jmp	L555
	.p2align 4,,10
	.p2align 3
L786:
	cmpl	$11, 128(%esp)
	je	L621
	movl	136(%esp), %eax
	movl	$0, 96(%esp)
	movl	%eax, 80(%esp)
L569:
	cmpl	$13, 128(%esp)
	jne	L591
	movl	140(%esp), %eax
	movl	%edx, 112(%esp)
	movl	$0, 96(%esp)
	sarl	$4, %eax
	leal	(%eax,%eax,4), %ecx
	movl	92(%esp), %eax
	andl	$15, %eax
	leal	(%eax,%ecx,2), %eax
	movl	%eax, 80(%esp)
	jmp	L528
	.p2align 4,,10
	.p2align 3
L638:
	movl	140(%esp), %edx
	cmpl	$17, %eax
	cmove	136(%esp), %edx
	testl	%edx, %edx
	je	L789
L606:
	movl	%edx, 40(%esp)
	jmp	L535
	.p2align 4,,10
	.p2align 3
L784:
	fld	%st(2)
	movl	124(%esp), %ebx
	fmul	%st(2), %st
	fld	%st(0)
	fdiv	%st(2), %st
	faddp	%st, %st(5)
	cmpl	$1, %ebx
	jle	L792
	fstp	%st(1)
	movl	%eax, 104(%esp)
	movl	112(%esp), %eax
	movl	$1, %ecx
	movl	%esi, 68(%esp)
	movl	%ebx, %esi
	jmp	L565
	.p2align 6
	.p2align 4,,10
	.p2align 3
L793:
	fstp	%st(0)
L565:
	subl	%edx, %eax
	movl	$32, %ebx
	cmpl	%ebx, %eax
	cmovl	%ebx, %eax
	addl	$1, %ecx
	movl	%eax, 116(%esp)
	fildl	116(%esp)
	fld	%st(1)
	fdiv	%st(1), %st
	faddp	%st, %st(5)
	cmpl	%esi, %ecx
	jne	L793
	fstp	%st(1)
	movl	%eax, 112(%esp)
	movl	68(%esp), %esi
	movl	104(%esp), %eax
	jmp	L564
L792:
	fstp	%st(0)
	.p2align 4
	.p2align 3
L564:
	fildl	124(%esp)
	movl	112(%esp), %edx
	movl	$0, 116(%esp)
	fmulp	%st, %st(3)
	fxch	%st(2)
	fmulp	%st, %st(1)
	fdivp	%st, %st(1)
	fsubrp	%st, %st(1)
	jmp	L562
	.p2align 4,,10
	.p2align 3
L607:
	movl	140(%esp), %edx
	movl	$0, 132(%esp)
	movl	%edx, 124(%esp)
	jmp	L541
	.p2align 4,,10
	.p2align 3
L608:
	movl	136(%esp), %edx
	movl	$0, 132(%esp)
	movl	%edx, 124(%esp)
	jmp	L543
	.p2align 4,,10
	.p2align 3
L787:
	cmpl	$11, %eax
	jne	L623
L767:
	cmpl	$13, 128(%esp)
	jne	L574
	movl	140(%esp), %eax
	movl	%edx, 112(%esp)
	movl	$0, 64(%esp)
	sarl	$4, %eax
	movl	$0, 96(%esp)
	leal	(%eax,%eax,4), %ecx
	movl	92(%esp), %eax
	andl	$15, %eax
	leal	(%eax,%ecx,2), %eax
	movl	%eax, 80(%esp)
	movl	136(%esp), %eax
	movl	%eax, 56(%esp)
	jmp	L528
	.p2align 4,,10
	.p2align 3
L788:
	cmpl	$2, 2616(%edi)
	jne	L643
	movl	44(%esp), %ebx
	testl	%ebx, %ebx
	jne	L528
L643:
	movl	140(%esp), %eax
	andl	$15, %eax
	movl	%eax, %edx
	movl	%eax, 44(%esp)
	movl	124(%esp), %eax
	imull	%edx, %eax
	addl	%eax, 116(%esp)
	jmp	L528
	.p2align 4,,10
	.p2align 3
L548:
	cmpl	$135, 128(%esp)
	jne	L644
	movl	136(%esp), %edx
	movl	$0, 132(%esp)
	movl	%edx, 124(%esp)
	movl	140(%esp), %edx
	cmpb	$0, 104(%esp)
	jne	L555
L644:
	movl	136(%esp), %edx
	movl	$0, 132(%esp)
	movl	%edx, 124(%esp)
	movl	112(%esp), %edx
	jmp	L570
	.p2align 4,,10
	.p2align 3
L591:
	movl	%edx, 112(%esp)
	cmpl	$14, 128(%esp)
	je	L579
	jmp	L528
	.p2align 4,,10
	.p2align 3
L785:
	fld	%st(2)
	fmul	%st(2), %st
	fld	%st(0)
	fdiv	%st(2), %st
	faddp	%st, %st(5)
	cmpl	$1, 124(%esp)
	jle	L619
	fstp	%st(1)
	andl	$15, %edx
	movl	%eax, 116(%esp)
	movl	$1, %ecx
	movl	%edx, %ebx
	movl	112(%esp), %edx
	movl	%esi, 112(%esp)
	movl	124(%esp), %esi
	jmp	L567
	.p2align 6
	.p2align 4,,10
	.p2align 3
L794:
	fstp	%st(0)
L567:
	addl	%ebx, %edx
	movl	$255, %eax
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	addl	$1, %ecx
	movl	%edx, 132(%esp)
	fildl	132(%esp)
	fld	%st(1)
	fdiv	%st(1), %st
	faddp	%st, %st(5)
	cmpl	%esi, %ecx
	jne	L794
	fstp	%st(1)
	movl	116(%esp), %eax
	movl	112(%esp), %esi
L566:
	fildl	124(%esp)
	movl	$0, 116(%esp)
	movl	$0, 132(%esp)
	fmulp	%st, %st(3)
	fxch	%st(2)
	fmulp	%st, %st(1)
	fdivp	%st, %st(1)
	fsubrp	%st, %st(1)
	jmp	L562
	.p2align 4,,10
	.p2align 3
L582:
	movl	120(%esp), %edx
	testb	$4, 2615(%edi)
	movl	$1, 64(%esp)
	leal	-1(%edx), %eax
	movl	%eax, 148(%esp,%esi,4)
	movl	80(%esp), %eax
	cmovne	%edx, %eax
	movl	%eax, 80(%esp)
	jmp	L528
	.p2align 4,,10
	.p2align 3
L574:
	cmpl	$14, 128(%esp)
	jne	L790
	movl	136(%esp), %eax
	movl	%edx, 112(%esp)
	movl	$0, 64(%esp)
	movl	%eax, 56(%esp)
	movl	$0, 80(%esp)
	movl	$0, 96(%esp)
	jmp	L579
L623:
	movl	%edx, 112(%esp)
	jmp	L776
	.p2align 4,,10
	.p2align 3
L536:
	subl	%ebx, %edx
	andl	$64, %ecx
	jne	L774
	movl	124(%esp), %ecx
	subl	$1, %ecx
	imull	%edx, %ecx
	addl	%ecx, 72(%esp)
	jmp	L533
	.p2align 4,,10
	.p2align 3
L613:
	movl	136(%esp), %ecx
	movl	$0, 132(%esp)
	movl	%ecx, 124(%esp)
	movl	140(%esp), %ecx
	movl	%ecx, 68(%esp)
	jmp	L552
	.p2align 4,,10
	.p2align 3
L774:
	imull	124(%esp), %edx
	jmp	L773
	.p2align 4,,10
	.p2align 3
L583:
	addl	$1, 36(%esp)
	movl	%ecx, (%edx,%esi,4)
	movl	%esi, 52(%esp)
	jmp	L528
	.p2align 4,,10
	.p2align 3
L790:
	movl	136(%esp), %eax
	movl	%edx, 112(%esp)
	movl	$0, 64(%esp)
	movl	%eax, 56(%esp)
	movl	$0, 80(%esp)
	movl	$0, 96(%esp)
	jmp	L528
	.p2align 4,,10
	.p2align 3
L537:
	cmpl	$15, %edx
	jne	L538
	testl	%ebx, %ebx
	je	L538
	subl	%ebx, 72(%esp)
	jmp	L533
L558:
	cmpl	$19, 140(%esp)
	jle	L560
	movl	140(%esp), %ecx
	movl	%ecx, 68(%esp)
	jmp	L552
L625:
	movl	%esi, 52(%esp)
	jmp	L528
L538:
	subl	%ebx, %edx
	andl	$64, %ecx
	jne	L774
	movl	124(%esp), %ecx
	subl	$1, %ecx
	imull	%ecx, %edx
	addl	%edx, 72(%esp)
	jmp	L533
L619:
	fstp	%st(0)
	movl	112(%esp), %edx
	jmp	L566
L771:
	movl	%ebx, %esi
	jmp	L526
L780:
	cmpl	28(%esp), %edi
	je	L791
L521:
	movl	120(%esp), %edi
	movl	76(%esp), %eax
	addl	48(%esp), %eax
	movl	%edi, 2648(%esi,%eax,4)
	jmp	L520
L778:
	addl	%edi, %eax
	jmp	L589
L791:
	fstp	%st(1)
	fildl	116(%esp)
	fmull	2576(%esi)
	fildl	88(%esp)
	fmulp	%st, %st(1)
	fildl	112(%esp)
	fdivrp	%st, %st(1)
	fadd	%st(1), %st
	fxch	%st(1)
	jmp	L521
L781:
	subl	$1, 132(%esp)
	movl	%ecx, %edi
	movl	%ebx, %esi
	jmp	L505
L524:
	movl	56(%esp), %edi
	movl	$0, 120(%esp)
	testl	%edi, %edi
	leal	-1(%edi), %eax
	cmovs	48(%esp), %eax
	movl	%eax, 48(%esp)
	movl	$-1, %eax
	cmovs	%edi, %eax
	movl	%eax, 56(%esp)
	jmp	L516
L629:
	fstp	%st(0)
	fstp	%st(0)
	movl	$-1, %edx
	jmp	L769
L616:
	movl	112(%esp), %edx
	jmp	L562
L551:
	cmpl	$135, %eax
	jne	L596
	testb	%dl, %dl
	je	L596
	movl	140(%esp), %edx
	xorl	%ecx, %ecx
	movl	%ecx, 132(%esp)
	movl	%edx, 124(%esp)
	movl	136(%esp), %edx
	jmp	L555
L609:
	movl	140(%esp), %ecx
	xorl	%ebx, %ebx
	movl	%ebx, 132(%esp)
	movl	%ecx, 124(%esp)
	movl	136(%esp), %ecx
	movl	%ecx, 68(%esp)
	jmp	L552
L596:
	cmpl	$136, %eax
	je	L633
	cmpl	$142, %eax
	je	L634
	movl	140(%esp), %edx
	xorl	%ecx, %ecx
	movl	%ecx, 132(%esp)
	movl	%edx, 124(%esp)
	movl	112(%esp), %edx
	jmp	L570
L634:
	movl	140(%esp), %eax
	movl	112(%esp), %edx
	movl	%eax, 124(%esp)
	movl	136(%esp), %eax
	movl	%eax, 80(%esp)
	xorl	%eax, %eax
	movl	%eax, 132(%esp)
	movl	%eax, 96(%esp)
	jmp	L569
	.cfi_endproc
LFE36:
	.p2align 4
	.globl	__Z22libxmp_virt_resetvoiceP12context_dataii
	.def	__Z22libxmp_virt_resetvoiceP12context_dataii;	.scl	2;	.type	32;	.endef
__Z22libxmp_virt_resetvoiceP12context_dataii:
LFB37:
	.cfi_startproc
	cmpl	712(%eax), %edx
	jnb	L805
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	imull	$136, %edx, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	addl	720(%eax), %edx
	testl	%ecx, %ecx
	jne	L808
L797:
	subl	$1, 708(%eax)
	movl	716(%eax), %ecx
	movl	4(%edx), %ebx
	subl	$1, (%ecx,%ebx,8)
	movl	716(%eax), %eax
	movl	(%edx), %ecx
	movl	$-1, 4(%eax,%ecx,8)
	xorl	%eax, %eax
	movl	$0, 120(%edx)
	movl	$0, 124(%edx)
	movl	$0, 128(%edx)
	movl	$0, 132(%edx)
L798:
	movl	$0, 8(%edx,%eax)
	movl	$0, 12(%edx,%eax)
	movl	$0, 16(%edx,%eax)
	movl	$0, 20(%edx,%eax)
	addl	$16, %eax
	cmpl	$112, %eax
	jb	L798
	movlps	LC7, %xmm0
	movlps	%xmm0, (%edx)
	movl	-4(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L808:
	.cfi_restore_state
	orl	$2, 88(%edx)
	movl	$0, 72(%edx)
	movl	$0, 76(%edx)
	movl	$0, 16(%edx)
	jmp	L797
	.p2align 4,,10
	.p2align 3
L805:
	.cfi_def_cfa 4, 4
	.cfi_restore 3
	.cfi_restore 5
	ret
	.cfi_endproc
LFE37:
	.p2align 4
	.globl	__Z24libxmp_virt_resetchannelP12context_datai
	.def	__Z24libxmp_virt_resetchannelP12context_datai;	.scl	2;	.type	32;	.endef
__Z24libxmp_virt_resetchannelP12context_datai:
LFB39:
	.cfi_startproc
	cmpl	704(%eax), %edx
	jnb	L815
	movl	%eax, %ecx
	movl	716(%eax), %eax
	movl	4(%eax,%edx,8), %eax
	cmpl	712(%ecx), %eax
	jnb	L815
	testl	%eax, %eax
	js	L815
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	imull	$136, %eax, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	720(%ecx), %ebx
	addl	%eax, %ebx
	orl	$2, 88(%ebx)
	movl	$0, 72(%ebx)
	movl	$0, 76(%ebx)
	movl	$0, 16(%ebx)
	movl	720(%ecx), %ebx
	subl	$1, 708(%ecx)
	movl	4(%ebx,%eax), %esi
	movl	716(%ecx), %ebx
	subl	$1, (%ebx,%esi,8)
	movl	716(%ecx), %ebx
	movl	$-1, 4(%ebx,%edx,8)
	addl	720(%ecx), %eax
	xorl	%edx, %edx
	movl	$0, 120(%eax)
	movl	$0, 124(%eax)
	movl	$0, 128(%eax)
	movl	$0, 132(%eax)
L811:
	movl	$0, 8(%eax,%edx)
	movl	$0, 12(%eax,%edx)
	movl	$0, 16(%eax,%edx)
	movl	$0, 20(%eax,%edx)
	addl	$16, %edx
	cmpl	$112, %edx
	jb	L811
	movl	$-1, %ecx
	movl	%ecx, (%eax)
	movl	%ecx, 4(%eax)
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L815:
	ret
	.cfi_endproc
LFE39:
	.p2align 4
	.globl	__Z18libxmp_virt_setvolP12context_dataii
	.def	__Z18libxmp_virt_setvolP12context_dataii;	.scl	2;	.type	32;	.endef
__Z18libxmp_virt_setvolP12context_dataii:
LFB40:
	.cfi_startproc
	cmpl	704(%eax), %edx
	jnb	L825
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	movl	%edx, %esi
	movl	716(%eax), %edx
	movl	%ebx, -12(%ebp)
	.cfi_offset 3, -20
	movl	4(%edx,%esi,8), %ebx
	cmpl	712(%eax), %ebx
	jnb	L818
	testl	%ebx, %ebx
	js	L818
	imull	$136, %ebx, %edx
	addl	720(%eax), %edx
	movl	%edi, -4(%ebp)
	.cfi_offset 7, -12
	movl	4(%edx), %edi
	cmpl	$63, %edi
	jg	L820
	cmpb	$0, 636(%eax,%edi)
	je	L820
L821:
	orl	$2, 88(%edx)
	movl	$0, 72(%edx)
	movl	$0, 76(%edx)
	movl	$0, 16(%edx)
	cmpl	%esi, 700(%eax)
	jle	L829
	movl	-4(%ebp), %edi
	.cfi_restore 7
L818:
	movl	-12(%ebp), %ebx
	movl	-8(%ebp), %esi
	leave
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L820:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	testl	%ecx, %ecx
	je	L821
	movl	%ecx, 16(%edx)
	movl	-4(%ebp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	-12(%ebp), %ebx
	movl	-8(%ebp), %esi
	leave
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L829:
	.cfi_restore_state
	movl	-4(%ebp), %edi
	.cfi_restore 7
	movl	-8(%ebp), %esi
	movl	%ebx, %edx
	movl	$1, %ecx
	movl	-12(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	jmp	__Z22libxmp_virt_resetvoiceP12context_dataii
	.p2align 4,,10
	.p2align 3
L825:
	ret
	.cfi_endproc
LFE40:
	.p2align 4
	.globl	__Z20libxmp_virt_setpatchP12context_dataiiiiiiii
	.def	__Z20libxmp_virt_setpatchP12context_dataiiiiiiii;	.scl	2;	.type	32;	.endef
__Z20libxmp_virt_setpatchP12context_dataiiiiiiii:
LFB41:
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
	andl	$-8, %esp
	subl	$40, %esp
	.cfi_offset 3, -20
	movl	24(%ebp), %edx
	cmpl	704(%eax), %esi
	jnb	L862
	movl	%eax, %ebx
	testl	%ecx, %ecx
	movl	$-1, %eax
	cmovns	8(%ebp), %eax
	movl	%ecx, 24(%esp)
	movl	%eax, 36(%esp)
	testl	%edx, %edx
	je	L833
	movl	712(%ebx), %eax
	testl	%eax, %eax
	jle	L833
	movl	20(%ebp), %edi
	testl	%edi, %edi
	je	L860
	cmpl	$3, %edx
	je	L861
	movl	%ebx, %eax
	xorl	%edx, %edx
	movl	%ecx, %edi
	jmp	L841
	.p2align 5
	.p2align 4,,10
	.p2align 3
L836:
	addl	$1, %edx
	cmpl	712(%eax), %edx
	jge	L892
L841:
	imull	$136, %edx, %ecx
	addl	720(%eax), %ecx
	cmpl	%esi, 4(%ecx)
	jne	L836
	cmpl	48(%ecx), %edi
	jne	L836
	movl	20(%ebp), %ebx
	movl	%ebx, 64(%ecx)
	cmpl	$2, 24(%ebp)
	je	L893
	cmpl	$1, 24(%ebp)
	jne	L836
	movl	68(%ecx), %ebx
	cmpl	%ebx, 16(%ebp)
	jne	L836
	jmp	L838
	.p2align 4,,10
	.p2align 3
L892:
	movl	%eax, %ebx
L833:
	movl	716(%ebx), %eax
	movl	4(%eax,%esi,8), %edi
	testl	%edi, %edi
	js	L846
	imull	$136, %edi, %ecx
	movl	720(%ebx), %eax
	movl	64(%eax,%ecx), %eax
	movl	%ecx, 28(%esp)
	testl	%eax, %eax
	jne	L894
L847:
	movl	36(%esp), %eax
	testl	%eax, %eax
	js	L895
L851:
	imull	$136, %edi, %eax
	movl	720(%ebx), %edx
	movl	36(%esp), %ecx
	movl	%eax, 32(%esp)
	addl	%eax, %edx
	movl	1464(%ebx), %eax
	movl	%eax, 20(%esp)
	cmpl	%eax, %ecx
	jl	L896
	movl	20(%esp), %ecx
	addl	9824(%ebx), %ecx
	movl	$0, 28(%esp)
	movl	%ecx, %eax
	movl	36(%esp), %ecx
	cmpl	%eax, %ecx
	jge	L854
	subl	20(%esp), %ecx
	imull	$52, %ecx, %ecx
	addl	9832(%ebx), %ecx
	movl	%ecx, 28(%esp)
L854:
	movl	36(%esp), %eax
	movl	$0, 44(%edx)
	andl	$-29, 88(%edx)
	movl	%eax, 52(%edx)
	movl	$0, 12(%edx)
	movl	$0, 16(%edx)
	movzbl	1260(%ebx), %eax
	shrb	$2, %al
	andl	$1, %eax
	xorl	$1, %eax
	addl	%eax, %eax
	movl	%eax, 44(%edx)
	cmpl	712(%ebx), %edi
	jnb	L855
	movl	720(%ebx), %eax
	movl	32(%esp), %ecx
	imull	$480, (%eax,%ecx), %eax
	addl	376(%ebx), %eax
	andl	$-33, 8(%eax)
	movl	44(%edx), %eax
L855:
	movl	28(%esp), %ecx
	movl	48(%ecx), %ecx
	movl	%ecx, 92(%edx)
	movl	%eax, %ecx
	orl	$16, %ecx
	movl	%ecx, 44(%edx)
	testb	$1, 2614(%ebx)
	je	L856
	testb	$1, 1276(%ebx)
	jne	L897
L856:
	movl	28(%esp), %eax
	testb	$1, 44(%eax)
	je	L857
	orl	$1, 44(%edx)
L857:
	movl	$0, (%esp)
	movl	%edi, %edx
	movl	%ebx, %eax
	movl	$0, 4(%esp)
	call	__Z21libxmp_mixer_voiceposP12context_dataidi.constprop.0
	movl	32(%esp), %edi
	movl	$149, %eax
	addl	720(%ebx), %edi
	cmpl	%eax, 12(%ebp)
	cmovle	12(%ebp), %eax
	movl	%eax, 36(%esp)
	fildl	36(%esp)
	movl	%eax, 8(%edi)
	fldz
	faddp	%st, %st(1)
	fdivs	LC8
	fstpl	8(%esp)
	flds	LC9
	fstpl	(%esp)
	call	_pow
	fdivrs	LC10
	orl	$2, 88(%edi)
	movl	$0, 72(%edi)
	movl	32(%esp), %ecx
	movl	$0, 76(%edi)
	fstpl	24(%edi)
	movl	24(%esp), %edi
	movl	720(%ebx), %eax
	movl	%edi, 48(%eax,%ecx)
	movl	20(%ebp), %edi
	movl	720(%ebx), %eax
	movl	%edi, 64(%eax,%ecx)
	movl	720(%ebx), %eax
	movl	16(%ebp), %ebx
	movl	%ebx, 68(%eax,%ecx)
L852:
	movl	%esi, %edi
L830:
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
	ret
	.p2align 4,,10
	.p2align 3
L896:
	.cfi_restore_state
	imull	$52, %ecx, %eax
	addl	1500(%ebx), %eax
	movl	%eax, 28(%esp)
	jmp	L854
	.p2align 4,,10
	.p2align 3
L894:
	movl	%esi, %edx
	movl	%ebx, %eax
	call	__ZL11alloc_voiceP12context_datai
	movl	%eax, 20(%esp)
	cmpl	$-1, %eax
	je	L862
	movl	704(%ebx), %ecx
	movl	700(%ebx), %eax
	movl	%edi, 32(%esp)
L849:
	movl	%eax, %esi
	cmpl	%eax, %ecx
	jle	L848
	movl	716(%ebx), %edi
	leal	0(,%eax,8), %edx
	addl	$1, %eax
	movl	4(%edi,%edx), %edi
	testl	%edi, %edi
	jns	L849
	movl	32(%esp), %edi
L850:
	movl	720(%ebx), %eax
	movl	28(%esp), %ecx
	movl	%esi, (%eax,%ecx)
	movl	716(%ebx), %eax
	movl	%edi, 4(%eax,%edx)
	movl	36(%esp), %eax
	movl	20(%esp), %edi
	testl	%eax, %eax
	jns	L851
L895:
	movl	$1, %ecx
	movl	%edi, %edx
	movl	%ebx, %eax
	call	__Z22libxmp_virt_resetvoiceP12context_dataii
	jmp	L852
	.p2align 4,,10
	.p2align 3
L848:
	subl	$1, %esi
	movl	32(%esp), %edi
	leal	0(,%esi,8), %edx
	jmp	L850
	.p2align 4,,10
	.p2align 3
L846:
	movl	%esi, %edx
	movl	%ebx, %eax
	call	__ZL11alloc_voiceP12context_datai
	movl	%eax, %edi
	cmpl	$-1, %eax
	jne	L847
	jmp	L830
	.p2align 4,,10
	.p2align 3
L897:
	orl	$20, %eax
	movl	%eax, 44(%edx)
	jmp	L856
	.p2align 4,,10
	.p2align 3
L861:
	movl	%ebx, %eax
	xorl	%edi, %edi
	movl	24(%esp), %ebx
	jmp	L835
	.p2align 5
	.p2align 4,,10
	.p2align 3
L842:
	addl	$1, %edi
	cmpl	%edi, 712(%eax)
	jle	L892
L835:
	imull	$136, %edi, %edx
	addl	720(%eax), %edx
	cmpl	4(%edx), %esi
	jne	L842
	cmpl	48(%edx), %ebx
	jne	L842
	movl	20(%ebp), %ecx
	movl	%ecx, 64(%edx)
	cmpl	$3, 28(%ebp)
	jne	L865
	cmpl	$2, %ecx
	je	L842
L865:
	movl	28(%ebp), %ecx
	testl	%ecx, %ecx
	je	L898
	movl	28(%ebp), %ecx
	movl	%ecx, 64(%edx)
	jmp	L842
	.p2align 4,,10
	.p2align 3
L860:
	movl	%ebx, %eax
	xorl	%edi, %edi
	movl	24(%esp), %ebx
	jmp	L834
	.p2align 5
	.p2align 4,,10
	.p2align 3
L845:
	addl	$1, %edi
	cmpl	%edi, 712(%eax)
	jle	L892
L834:
	imull	$136, %edi, %edx
	addl	720(%eax), %edx
	cmpl	4(%edx), %esi
	jne	L845
	cmpl	48(%edx), %ebx
	jne	L845
	movl	$1, %ecx
	movl	%edi, %edx
	movl	%eax, 32(%esp)
	call	__Z22libxmp_virt_resetvoiceP12context_dataii
	movl	32(%esp), %eax
	jmp	L845
	.p2align 4,,10
	.p2align 3
L893:
	movl	36(%esp), %ebx
	cmpl	52(%ecx), %ebx
	jne	L836
L838:
	cmpl	$2, 20(%ebp)
	jne	L864
	cmpl	$3, 28(%ebp)
	je	L836
L864:
	movl	28(%ebp), %ebx
	testl	%ebx, %ebx
	je	L840
	movl	28(%ebp), %ebx
	movl	%ebx, 64(%ecx)
	jmp	L836
L840:
	movl	$1, %ecx
	movl	%edx, 28(%esp)
	movl	%eax, 32(%esp)
	call	__Z22libxmp_virt_resetvoiceP12context_dataii
	movl	28(%esp), %edx
	movl	32(%esp), %eax
	jmp	L836
L862:
	movl	$-1, %edi
	jmp	L830
L898:
	movl	$1, %ecx
	movl	%edi, %edx
	movl	%eax, 32(%esp)
	call	__Z22libxmp_virt_resetvoiceP12context_dataii
	movl	32(%esp), %eax
	jmp	L842
	.cfi_endproc
LFE41:
	.p2align 4
	.globl	__Z20libxmp_virt_pastnoteP12context_dataii
	.def	__Z20libxmp_virt_pastnoteP12context_dataii;	.scl	2;	.type	32;	.endef
__Z20libxmp_virt_pastnoteP12context_dataii:
LFB49:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%esi, 8(%esp)
	.cfi_offset 6, -12
	movl	%edx, %esi
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -16
	movl	700(%eax), %ebx
	movl	704(%eax), %edx
	cmpl	%edx, %ebx
	jge	L899
	movl	%edi, 12(%esp)
	.cfi_offset 7, -8
	cmpl	$3, %ecx
	je	L901
	cmpl	$2, %ecx
	jne	L904
	jmp	L902
	.p2align 4
	.p2align 4,,10
	.p2align 3
L903:
	addl	$1, %ebx
	cmpl	%edx, %ebx
	jge	L913
L904:
	cmpl	%edx, %ebx
	jnb	L903
	movl	716(%eax), %ecx
	movl	4(%ecx,%ebx,8), %edi
	cmpl	712(%eax), %edi
	jnb	L903
	testl	%edi, %edi
	js	L903
	imull	$136, %edi, %ecx
	addl	720(%eax), %ecx
	cmpl	4(%ecx), %esi
	jne	L903
	movl	%edi, %edx
	movl	$1, %ecx
	movl	%eax, (%esp)
	addl	$1, %ebx
	call	__Z22libxmp_virt_resetvoiceP12context_dataii
	movl	(%esp), %eax
	movl	704(%eax), %edx
	cmpl	%edx, %ebx
	jl	L904
	.p2align 4
	.p2align 3
L913:
	movl	12(%esp), %edi
	.cfi_restore 7
L899:
	movl	4(%esp), %ebx
	movl	8(%esp), %esi
	addl	$16, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L901:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	imull	$480, %ebx, %edi
	jmp	L908
	.p2align 5
	.p2align 4,,10
	.p2align 3
L907:
	addl	$1, %ebx
	addl	$480, %edi
	cmpl	%ebx, %edx
	jle	L913
L908:
	cmpl	%edx, %ebx
	jnb	L907
	movl	716(%eax), %ecx
	movl	4(%ecx,%ebx,8), %ecx
	cmpl	712(%eax), %ecx
	jnb	L907
	testl	%ecx, %ecx
	js	L907
	imull	$136, %ecx, %ecx
	addl	720(%eax), %ecx
	cmpl	%esi, 4(%ecx)
	jne	L907
	movl	376(%eax), %edx
	addl	%edi, %edx
	orl	$1, 8(%edx)
	movl	704(%eax), %edx
	jmp	L907
	.p2align 4,,10
	.p2align 3
L902:
	imull	$480, %ebx, %edi
	jmp	L906
	.p2align 5
	.p2align 4,,10
	.p2align 3
L905:
	addl	$1, %ebx
	addl	$480, %edi
	cmpl	%edx, %ebx
	jge	L913
L906:
	cmpl	%edx, %ebx
	jnb	L905
	movl	716(%eax), %ecx
	movl	4(%ecx,%ebx,8), %ecx
	cmpl	712(%eax), %ecx
	jnb	L905
	testl	%ecx, %ecx
	js	L905
	imull	$136, %ecx, %ecx
	addl	720(%eax), %ecx
	cmpl	4(%ecx), %esi
	jne	L905
	movl	376(%eax), %edx
	addl	%edi, %edx
	orl	$1026, 8(%edx)
	movl	704(%eax), %edx
	jmp	L905
	.cfi_endproc
LFE49:
	.align 2
	.p2align 4
	.globl	__ZN7ImGuiIO13AddFocusEventEb.isra.0
	.def	__ZN7ImGuiIO13AddFocusEventEb.isra.0;	.scl	2;	.type	32;	.endef
__ZN7ImGuiIO13AddFocusEventEb.isra.0:
LFB53:
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
	subl	$44, %esp
	.cfi_def_cfa_offset 60
	movl	_GImGui, %ebx
	movl	14380(%ebx), %eax
	movl	%eax, %esi
	subl	$1, %esi
	js	L915
	movl	14388(%ebx), %edi
	leal	(%eax,%eax,2), %eax
	leal	-24(%edi,%eax,8), %eax
L917:
	cmpl	$7, (%eax)
	jne	L931
	movzbl	8(%eax), %eax
L925:
	cmpb	%dl, %al
	je	L914
	movl	%edx, %eax
	movl	$0, 28(%esp)
	movl	%ecx, %edx
	movb	%al, 28(%esp)
	movl	14380(%ecx), %eax
	movl	$0, 24(%esp)
	movl	$0, 32(%esp)
	movl	$0, 36(%esp)
	movl	$0, 40(%esp)
	movl	$7, 20(%esp)
	cmpl	14384(%ecx), %eax
	je	L932
L919:
	movl	14388(%edx), %ecx
L923:
	leal	(%eax,%eax,2), %eax
	leal	(%ecx,%eax,8), %eax
	movl	20(%esp), %ecx
	movl	%ecx, (%eax)
	movl	24(%esp), %ecx
	movl	%ecx, 4(%eax)
	movl	28(%esp), %ecx
	movl	%ecx, 8(%eax)
	movl	32(%esp), %ecx
	movl	%ecx, 12(%eax)
	movl	36(%esp), %ecx
	movl	%ecx, 16(%eax)
	movl	40(%esp), %ecx
	movl	%ecx, 20(%eax)
	addl	$1, 14380(%edx)
L914:
	addl	$44, %esp
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
L931:
	.cfi_restore_state
	subl	$1, %esi
	subl	$24, %eax
	cmpl	$-1, %esi
	jne	L917
L915:
	movzbl	14240(%ecx), %eax
	xorl	$1, %eax
	jmp	L925
	.p2align 4,,10
	.p2align 3
L932:
	leal	1(%eax), %ecx
	testl	%eax, %eax
	jne	L920
	movl	$8, %esi
	cmpl	%esi, %ecx
	cmovge	%ecx, %esi
	leal	(%esi,%esi,2), %eax
	sall	$3, %eax
L921:
	addl	$1, 188(%ebx)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 12(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	12(%esp), %edx
	movl	%eax, %ecx
	movl	14388(%edx), %edi
	testl	%edi, %edi
	je	L924
	movl	14380(%edx), %eax
	movl	%ecx, (%esp)
	movl	%edi, 4(%esp)
	leal	(%eax,%eax,2), %eax
	movl	%edx, 16(%esp)
	sall	$3, %eax
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	call	_memcpy
	subl	$1, 188(%ebx)
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	16(%esp), %edx
	movl	12(%esp), %ecx
L924:
	movl	%ecx, 14388(%edx)
	movl	14380(%edx), %eax
	movl	%esi, 14384(%edx)
	jmp	L923
	.p2align 4,,10
	.p2align 3
L920:
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%eax, %esi
	sarl	%esi
	addl	%eax, %esi
	cmpl	%ecx, %esi
	cmovl	%ecx, %esi
	cmpl	%esi, %eax
	jge	L919
	leal	(%esi,%esi,2), %eax
	sall	$3, %eax
	jmp	L921
	.cfi_endproc
LFE53:
	.p2align 4
	.globl	__Z14ImFormatStringPcjPKcz
	.def	__Z14ImFormatStringPcjPKcz;	.scl	2;	.type	32;	.endef
__Z14ImFormatStringPcjPKcz:
LFB58:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	leal	36(%esp), %eax
	movl	%eax, 16(%esp)
	movl	%eax, 12(%esp)
	movl	32(%esp), %eax
	movl	%eax, 8(%esp)
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	24(%esp), %eax
	movl	%eax, (%esp)
	call	___mingw_vsnprintf
	cmpl	$-1, %eax
	je	L936
	cmpl	%eax, 28(%esp)
	jle	L936
	movl	24(%esp), %edx
	movb	$0, (%edx,%eax)
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L936:
	.cfi_restore_state
	movl	28(%esp), %eax
	movl	24(%esp), %edx
	subl	$1, %eax
	movb	$0, (%edx,%eax)
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE58:
	.p2align 4
	.globl	__Z9ImHashStrPKcjj
	.def	__Z9ImHashStrPKcjj;	.scl	2;	.type	32;	.endef
__Z9ImHashStrPKcjj:
LFB59:
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
	movl	%edx, %esi
	movl	%ecx, %edx
	notl	%edx
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%edx, %ebp
	testl	%esi, %esi
	je	L942
	subl	$1, %esi
	movl	%edx, %eax
L946:
	movzbl	(%ebx), %ecx
	addl	$1, %ebx
	cmpb	$35, %cl
	jne	L943
L964:
	cmpl	$1, %esi
	jbe	L943
	cmpb	$35, (%ebx)
	jne	L944
	cmpb	$35, 1(%ebx)
	cmove	%ebp, %eax
L944:
	movl	%eax, %ecx
	movzbl	%al, %eax
	addl	$1, %ebx
	xorl	$35, %eax
	shrl	$8, %ecx
	subl	$1, %esi
	xorl	__ZL17GCrc32LookupTable.lto_priv.0(,%eax,4), %ecx
	movl	%ecx, %eax
	movzbl	-1(%ebx), %ecx
	cmpb	$35, %cl
	je	L964
L943:
	xorl	%eax, %ecx
	movl	%eax, %edi
	movzbl	%cl, %ecx
	shrl	$8, %edi
	movl	__ZL17GCrc32LookupTable.lto_priv.0(,%ecx,4), %eax
	xorl	%edi, %eax
	subl	$1, %esi
	jnb	L946
L945:
	notl	%eax
L941:
	popl	%ebx
	.cfi_remember_state
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
L942:
	.cfi_restore_state
	movzbl	(%eax), %edi
	movl	%edi, %eax
	testb	%al, %al
	je	L955
	movl	%edx, %eax
	movl	%edi, %edx
	addl	$1, %ebx
	movzbl	(%ebx), %ecx
	cmpb	$35, %dl
	je	L965
	.p2align 4
	.p2align 3
L948:
	movl	%eax, %esi
	xorl	%edi, %eax
	movzbl	%al, %eax
	shrl	$8, %esi
	xorl	__ZL17GCrc32LookupTable.lto_priv.0(,%eax,4), %esi
	movl	%esi, %eax
	testb	%cl, %cl
	je	L945
	addl	$1, %ebx
	movl	%ecx, %edi
L966:
	movl	%edi, %edx
	movzbl	(%ebx), %ecx
	cmpb	$35, %dl
	jne	L948
L965:
	cmpb	$35, %cl
	jne	L948
	cmpb	$35, 1(%ebx)
	movl	%ecx, %edi
	cmove	%ebp, %eax
	addl	$1, %ebx
	movl	%eax, %esi
	movzbl	%al, %eax
	xorl	$35, %eax
	shrl	$8, %esi
	xorl	__ZL17GCrc32LookupTable.lto_priv.0(,%eax,4), %esi
	movl	%esi, %eax
	jmp	L966
	.p2align 4,,10
	.p2align 3
L955:
	movl	%ecx, %eax
	jmp	L941
	.cfi_endproc
LFE59:
	.p2align 4
	.globl	__Z18ImTextCharFromUtf8PjPKcS1_
	.def	__Z18ImTextCharFromUtf8PjPKcS1_;	.scl	2;	.type	32;	.endef
__Z18ImTextCharFromUtf8PjPKcS1_:
LFB61:
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
	movl	%eax, 12(%esp)
	movzbl	(%edx), %eax
	movl	%eax, %ebx
	movb	%al, 7(%esp)
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	__ZZ18ImTextCharFromUtf8PjPKcS1_E7lengths(%eax), %eax
	cmpl	$1, %eax
	movl	%eax, %esi
	movl	%eax, (%esp)
	adcl	$0, %esi
	testl	%ecx, %ecx
	leal	(%edx,%esi), %eax
	cmove	%eax, %ecx
	movzbl	%bl, %eax
	cmpl	%ecx, %edx
	jb	L969
	movb	$0, 7(%esp)
	xorl	%eax, %eax
L969:
	leal	1(%edx), %edi
	cmpl	%ecx, %edi
	jnb	L976
	movzbl	1(%edx), %ebx
	movl	%ebx, %edi
	movb	%bl, 5(%esp)
	sall	$12, %edi
	andl	$258048, %edi
	movl	%edi, 8(%esp)
	leal	2(%edx), %edi
	cmpl	%ecx, %edi
	jnb	L977
L986:
	movzbl	2(%edx), %ebx
	leal	3(%edx), %ebp
	movl	%ebx, %edi
	movb	%bl, 6(%esp)
	sall	$6, %edi
	andl	$4032, %edi
	cmpl	%ecx, %ebp
	jnb	L978
L987:
	movzbl	3(%edx), %edx
	movl	%edx, %ecx
	andl	$63, %ecx
L972:
	movl	(%esp), %ebp
	andl	__ZZ18ImTextCharFromUtf8PjPKcS1_E5masks(,%ebp,4), %eax
	sall	$18, %eax
	orl	8(%esp), %eax
	orl	%edi, %eax
	orl	%ecx, %eax
	movl	__ZZ18ImTextCharFromUtf8PjPKcS1_E6shiftc(,%ebp,4), %ecx
	shrl	%cl, %eax
	movl	%eax, %ecx
	shrl	$11, %ecx
	cmpl	$27, %ecx
	je	L973
	movzbl	6(%esp), %ecx
	movl	%edx, %ebx
	shrb	$6, %bl
	shrb	$4, %cl
	movl	%ecx, %edi
	movzbl	5(%esp), %ecx
	andl	$12, %edi
	shrb	$2, %cl
	andl	$48, %ecx
	orl	%edi, %ecx
	orl	%ebx, %ecx
	xorl	%ebx, %ebx
	cmpl	__ZZ18ImTextCharFromUtf8PjPKcS1_E4mins(,%ebp,4), %eax
	setb	%bl
	movzbl	%cl, %ecx
	movl	%ebx, %edi
	xorl	%ebx, %ebx
	sall	$6, %edi
	cmpl	$65535, %eax
	seta	%bl
	movl	%ebx, %ebp
	sall	$8, %ebp
	orl	%ebp, %edi
	movl	(%esp), %ebp
	orl	%edi, %ecx
	movl	%ecx, %edi
	movl	__ZZ18ImTextCharFromUtf8PjPKcS1_E6shifte(,%ebp,4), %ecx
	xorl	$42, %edi
	sarl	%cl, %edi
	testl	%edi, %edi
	jne	L973
	movl	12(%esp), %edx
	movl	%eax, (%edx)
	addl	$16, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
L976:
	.cfi_restore_state
	leal	2(%edx), %edi
	movl	$0, 8(%esp)
	movb	$0, 5(%esp)
	cmpl	%ecx, %edi
	jb	L986
L977:
	leal	3(%edx), %ebp
	movb	$0, 6(%esp)
	xorl	%edi, %edi
	cmpl	%ecx, %ebp
	jb	L987
L978:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	L972
	.p2align 4,,10
	.p2align 3
L973:
	xorl	%eax, %eax
	cmpb	$0, 7(%esp)
	setne	%al
	cmpb	$1, 5(%esp)
	sbbl	$-1, %eax
	cmpb	$1, 6(%esp)
	sbbl	$-1, %eax
	cmpb	$1, %dl
	movl	12(%esp), %edx
	sbbl	$-1, %eax
	cmpl	%eax, %esi
	cmovg	%eax, %esi
	movl	$65533, %eax
	movl	%eax, (%edx)
	addl	$16, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
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
LFE61:
	.p2align 4
	.globl	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	.def	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4;	.scl	2;	.type	32;	.endef
__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4:
LFB62:
	.cfi_startproc
	movss	(%eax), %xmm1
	xorps	%xmm0, %xmm0
	movl	%eax, %edx
	xorl	%eax, %eax
	comiss	%xmm1, %xmm0
	ja	L989
	movss	LC13, %xmm2
	movaps	%xmm2, %xmm0
	cmpltss	%xmm1, %xmm0
	andps	%xmm0, %xmm2
	andnps	%xmm1, %xmm0
	orps	%xmm2, %xmm0
	mulss	LC14, %xmm0
	addss	LC15, %xmm0
	cvttss2sil	%xmm0, %eax
L989:
	movss	4(%edx), %xmm1
	xorps	%xmm0, %xmm0
	comiss	%xmm1, %xmm0
	ja	L990
	movss	LC13, %xmm2
	movaps	%xmm2, %xmm0
	cmpltss	%xmm1, %xmm0
	andps	%xmm0, %xmm2
	andnps	%xmm1, %xmm0
	orps	%xmm2, %xmm0
	mulss	LC14, %xmm0
	addss	LC15, %xmm0
	cvttss2sil	%xmm0, %ecx
	sall	$8, %ecx
	orl	%ecx, %eax
L990:
	movss	8(%edx), %xmm1
	xorps	%xmm0, %xmm0
	comiss	%xmm1, %xmm0
	ja	L991
	movss	LC13, %xmm2
	movaps	%xmm2, %xmm0
	cmpltss	%xmm1, %xmm0
	andps	%xmm0, %xmm2
	andnps	%xmm1, %xmm0
	orps	%xmm2, %xmm0
	mulss	LC14, %xmm0
	addss	LC15, %xmm0
	cvttss2sil	%xmm0, %ecx
	sall	$16, %ecx
	orl	%ecx, %eax
L991:
	movss	12(%edx), %xmm1
	xorps	%xmm0, %xmm0
	comiss	%xmm1, %xmm0
	ja	L988
	movss	LC13, %xmm2
	movaps	%xmm2, %xmm0
	cmpltss	%xmm1, %xmm0
	andps	%xmm0, %xmm2
	andnps	%xmm1, %xmm0
	orps	%xmm2, %xmm0
	mulss	LC14, %xmm0
	addss	LC15, %xmm0
	cvttss2sil	%xmm0, %edx
	sall	$24, %edx
	orl	%edx, %eax
L988:
	ret
	.cfi_endproc
LFE62:
	.align 2
	.p2align 4
	.globl	__ZNK12ImGuiStorage10GetVoidPtrEj
	.def	__ZNK12ImGuiStorage10GetVoidPtrEj;	.scl	2;	.type	32;	.endef
__ZNK12ImGuiStorage10GetVoidPtrEj:
LFB63:
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
	movl	(%ecx), %edi
	movl	8(%ecx), %esi
	movl	20(%esp), %ebx
	sall	$3, %edi
	movl	%edi, %eax
	movl	%esi, %ecx
	sarl	$3, %eax
	jmp	L996
	.p2align 5
	.p2align 4,,10
	.p2align 3
L997:
	movl	%eax, %edx
	shrl	%edx
	leal	(%ecx,%edx,8), %ebp
	cmpl	%ebx, 0(%ebp)
	jb	L1003
	movl	%edx, %eax
L996:
	testl	%eax, %eax
	jne	L997
	addl	%edi, %esi
	cmpl	%esi, %ecx
	je	L1000
	cmpl	%ebx, (%ecx)
	jne	L1000
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	4(%ecx), %eax
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
	.p2align 4,,10
	.p2align 3
L1003:
	.cfi_restore_state
	subl	$1, %eax
	leal	8(%ebp), %ecx
	subl	%edx, %eax
	jmp	L996
	.p2align 4,,10
	.p2align 3
L1000:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
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
	.cfi_endproc
LFE63:
	.align 2
	.p2align 4
	.globl	__ZN12ImGuiStorage10SetVoidPtrEjPv
	.def	__ZN12ImGuiStorage10SetVoidPtrEjPv;	.scl	2;	.type	32;	.endef
__ZN12ImGuiStorage10SetVoidPtrEjPv:
LFB66:
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
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$36, %esp
	.cfi_def_cfa_offset 56
	movl	(%ecx), %ebp
	movl	8(%ecx), %ecx
	movl	56(%esp), %esi
	leal	0(,%ebp,8), %eax
	movl	%ebp, 16(%esp)
	movl	%ecx, %ebx
	movl	%eax, 12(%esp)
	sarl	$3, %eax
	jmp	L1006
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1007:
	movl	%eax, %edx
	shrl	%edx
	leal	(%ebx,%edx,8), %ebp
	cmpl	%esi, 0(%ebp)
	jb	L1023
	movl	%edx, %eax
L1006:
	testl	%eax, %eax
	jne	L1007
	movl	12(%esp), %eax
	movl	16(%esp), %ebp
	addl	%ecx, %eax
	cmpl	%eax, %ebx
	je	L1008
	cmpl	%esi, (%ebx)
	je	L1024
L1008:
	movl	60(%esp), %eax
	subl	%ecx, %ebx
	movl	%esi, 28(%esp)
	movl	%ebx, %esi
	movl	%eax, 32(%esp)
	sarl	$3, %esi
	cmpl	4(%edi), %ebp
	je	L1025
L1011:
	cmpl	%ebp, %esi
	jl	L1026
L1018:
	movl	28(%esp), %eax
	movl	%eax, (%ecx,%ebx)
	movl	32(%esp), %eax
	movl	%eax, 4(%ecx,%ebx)
	addl	$1, (%edi)
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
	ret	$8
	.p2align 4,,10
	.p2align 3
L1023:
	.cfi_restore_state
	subl	$1, %eax
	leal	8(%ebp), %ebx
	subl	%edx, %eax
	jmp	L1006
	.p2align 4,,10
	.p2align 3
L1024:
	movl	60(%esp), %eax
	movl	%eax, 4(%ebx)
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
	ret	$8
	.p2align 4,,10
	.p2align 3
L1025:
	.cfi_restore_state
	leal	1(%ebp), %edx
	testl	%ebp, %ebp
	jne	L1012
	movl	$8, %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, 16(%esp)
L1013:
	movl	16(%esp), %eax
	movl	_GImGui, %edx
	sall	$3, %eax
	testl	%edx, %edx
	je	L1015
	addl	$1, 188(%edx)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 20(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	(%edi), %ebp
	movl	20(%esp), %edx
	movl	%eax, %ecx
	movl	8(%edi), %eax
	testl	%eax, %eax
	movl	%eax, 12(%esp)
	je	L1017
	leal	0(,%ebp,8), %eax
	movl	%ecx, (%esp)
	movl	%eax, 8(%esp)
	movl	12(%esp), %eax
	movl	%edx, 24(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, 20(%esp)
	call	_memcpy
	movl	24(%esp), %edx
	movl	20(%esp), %ecx
	subl	$1, 188(%edx)
L1019:
	movl	12(%esp), %eax
	movl	$0, 4(%esp)
	movl	%ecx, 20(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	(%edi), %ebp
	movl	20(%esp), %ecx
L1017:
	movl	16(%esp), %eax
	movl	%ecx, 8(%edi)
	movl	%eax, 4(%edi)
	jmp	L1011
L1026:
	movl	%ebp, %eax
	subl	%esi, %eax
	sall	$3, %eax
	movl	%eax, 8(%esp)
	leal	(%ecx,%ebx), %eax
	movl	%eax, 4(%esp)
	leal	8(%ecx,%ebx), %eax
	movl	%eax, (%esp)
	call	_memmove
	movl	8(%edi), %ecx
	jmp	L1018
L1012:
	movl	%ebp, %eax
	shrl	$31, %eax
	addl	%ebp, %eax
	sarl	%eax
	addl	%ebp, %eax
	cmpl	%edx, %eax
	cmovge	%eax, %edx
	movl	%edx, 16(%esp)
	cmpl	%edx, %ebp
	jge	L1011
	jmp	L1013
L1015:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 20(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	20(%esp), %ecx
	movl	%eax, %edx
	testl	%ecx, %ecx
	je	L1027
	movl	12(%esp), %eax
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 20(%esp)
	call	_memcpy
	movl	20(%esp), %ecx
	jmp	L1019
L1027:
	movl	%eax, %ecx
	jmp	L1017
	.cfi_endproc
LFE66:
	.align 2
	.p2align 4
	.globl	__ZN15ImGuiTextBuffer6appendEPKcS1_.constprop.0
	.def	__ZN15ImGuiTextBuffer6appendEPKcS1_.constprop.0;	.scl	2;	.type	32;	.endef
__ZN15ImGuiTextBuffer6appendEPKcS1_.constprop.0:
LFB70:
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
	movl	%ecx, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	(%ecx), %ecx
	testl	%ecx, %ecx
	jne	L1029
	movl	4(%ebx), %eax
	cmpl	$2, %eax
	jg	L1051
	leal	(%eax,%eax), %edx
	movl	$2, %esi
	cmpl	%esi, %edx
	cmovl	%esi, %edx
	cmpl	%edx, %eax
	jl	L1054
L1051:
	movl	$2, %esi
	xorl	%ebp, %ebp
	movl	$1, %edi
L1031:
	movl	8(%ebx), %edx
L1034:
	movl	%esi, (%ebx)
	movb	$10, (%edx,%ebp)
	movl	8(%ebx), %eax
	movb	$0, (%eax,%edi)
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
	ret
	.p2align 4,,10
	.p2align 3
L1029:
	.cfi_restore_state
	movl	4(%ebx), %edx
	leal	1(%ecx), %esi
	leal	-1(%ecx), %ebp
	movl	%ecx, %edi
	cmpl	%esi, %edx
	jg	L1031
	leal	(%edx,%edx), %eax
	cmpl	%esi, %eax
	cmovl	%esi, %eax
	cmpl	%eax, %edx
	jl	L1055
L1035:
	cmpl	%esi, %edx
	jge	L1031
	testl	%edx, %edx
	jne	L1041
	movl	$8, %ecx
	cmpl	%ecx, %esi
	cmovge	%esi, %ecx
	movl	%ecx, 12(%esp)
L1042:
	movl	_GImGui, %eax
	movl	%eax, 16(%esp)
	testl	%eax, %eax
	je	L1043
	addl	$1, 188(%eax)
	movl	12(%esp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	8(%ebx), %ecx
	movl	%eax, %edx
	testl	%ecx, %ecx
	je	L1045
	movl	(%ebx), %eax
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	movl	%ecx, 24(%esp)
	movl	%edx, 20(%esp)
	call	_memcpy
	movl	16(%esp), %eax
	movl	20(%esp), %edx
	movl	24(%esp), %ecx
	subl	$1, 188(%eax)
L1046:
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	movl	%edx, 16(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	16(%esp), %edx
L1045:
	movl	12(%esp), %eax
	movl	%edx, 8(%ebx)
	movl	%eax, 4(%ebx)
	jmp	L1034
	.p2align 4,,10
	.p2align 3
L1041:
	movl	%edx, %ecx
	shrl	$31, %ecx
	addl	%edx, %ecx
	sarl	%ecx
	addl	%edx, %ecx
	cmpl	%esi, %ecx
	cmovl	%esi, %ecx
	movl	%ecx, 12(%esp)
	cmpl	%edx, %ecx
	jle	L1031
	jmp	L1042
	.p2align 4,,10
	.p2align 3
L1055:
	movl	%eax, %edx
L1032:
	movl	_GImGui, %eax
	movl	%eax, 24(%esp)
	testl	%eax, %eax
	je	L1036
	addl	$1, 188(%eax)
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, 20(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	20(%esp), %edx
	movl	%eax, 12(%esp)
	movl	8(%ebx), %eax
	testl	%eax, %eax
	movl	%eax, 16(%esp)
	je	L1038
	movl	(%ebx), %eax
	movl	%edx, 20(%esp)
	movl	%eax, 8(%esp)
	movl	16(%esp), %eax
	movl	%eax, 4(%esp)
	movl	12(%esp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	24(%esp), %eax
	movl	20(%esp), %edx
	subl	$1, 188(%eax)
L1048:
	movl	16(%esp), %eax
	movl	$0, 4(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	20(%esp), %edx
L1038:
	movl	12(%esp), %eax
	movl	%edx, 4(%ebx)
	movl	%eax, 8(%ebx)
	jmp	L1035
	.p2align 4,,10
	.p2align 3
L1054:
	xorl	%ebp, %ebp
	movl	$1, %edi
	jmp	L1032
	.p2align 4,,10
	.p2align 3
L1043:
	movl	12(%esp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	8(%ebx), %ecx
	movl	%eax, %edx
	testl	%ecx, %ecx
	je	L1045
	movl	(%ebx), %eax
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	movl	%ecx, 20(%esp)
	movl	%edx, 16(%esp)
	call	_memcpy
	movl	16(%esp), %edx
	movl	20(%esp), %ecx
	jmp	L1046
	.p2align 4,,10
	.p2align 3
L1036:
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	movl	%ecx, 24(%esp)
	movl	%edx, 20(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	20(%esp), %edx
	movl	24(%esp), %ecx
	movl	%eax, 12(%esp)
	movl	8(%ebx), %eax
	testl	%eax, %eax
	movl	%eax, 16(%esp)
	je	L1038
	movl	16(%esp), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, 4(%esp)
	movl	12(%esp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	20(%esp), %edx
	jmp	L1048
	.cfi_endproc
LFE70:
	.align 2
	.p2align 4
	.globl	__ZN15ImGuiTextBuffer8appendfvEPKcPc
	.def	__ZN15ImGuiTextBuffer8appendfvEPKcPc;	.scl	2;	.type	32;	.endef
__ZN15ImGuiTextBuffer8appendfvEPKcPc:
LFB73:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	60(%esp), %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	movl	%eax, 32(%esp)
	movl	%eax, 12(%esp)
	movl	56(%esp), %eax
	movl	%edi, 44(%esp)
	.cfi_offset 7, -12
	movl	%ecx, %edi
	movl	%eax, 8(%esp)
	call	___mingw_vsnprintf
	testl	%eax, %eax
	jle	L1056
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%esi, 40(%esp)
	movl	%ebp, 48(%esp)
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	movl	(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1084
	xorl	%ebp, %ebp
	movl	$1, %esi
L1058:
	movl	4(%edi), %eax
	addl	%ebx, %esi
	cmpl	%esi, %eax
	jg	L1068
	leal	(%eax,%eax), %edx
	cmpl	%esi, %edx
	cmovl	%esi, %edx
	cmpl	%edx, %eax
	jl	L1085
L1061:
	cmpl	%eax, %esi
	jle	L1068
	testl	%eax, %eax
	jne	L1066
	movl	$8, %ecx
	cmpl	%ecx, %esi
	cmovge	%esi, %ecx
	movl	%ecx, 16(%esp)
L1067:
	movl	_GImGui, %eax
	movl	%eax, 20(%esp)
	testl	%eax, %eax
	je	L1069
	addl	$1, 188(%eax)
	movl	16(%esp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	8(%edi), %ecx
	movl	%eax, %edx
	testl	%ecx, %ecx
	je	L1071
	movl	(%edi), %eax
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	movl	%ecx, 28(%esp)
	movl	%edx, 24(%esp)
	call	_memcpy
	movl	20(%esp), %eax
	movl	24(%esp), %edx
	movl	28(%esp), %ecx
	subl	$1, 188(%eax)
L1074:
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	movl	%edx, 20(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	20(%esp), %edx
L1071:
	movl	16(%esp), %eax
	movl	%edx, 8(%edi)
	movl	%eax, 4(%edi)
	jmp	L1060
	.p2align 4,,10
	.p2align 3
L1066:
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	addl	%eax, %ecx
	cmpl	%esi, %ecx
	cmovl	%esi, %ecx
	movl	%ecx, 16(%esp)
	cmpl	%eax, %ecx
	jg	L1067
L1068:
	movl	8(%edi), %edx
L1060:
	movl	32(%esp), %eax
	movl	%esi, (%edi)
	addl	%edx, %ebp
	leal	1(%ebx), %edi
	movl	%edi, 4(%esp)
	movl	%eax, 12(%esp)
	movl	56(%esp), %eax
	movl	%ebp, (%esp)
	movl	%eax, 8(%esp)
	call	___mingw_vsnprintf
	testl	%ebp, %ebp
	je	L1083
	cmpl	$-1, %eax
	je	L1073
	cmpl	%edi, %eax
	cmovl	%eax, %ebx
L1073:
	movb	$0, 0(%ebp,%ebx)
	movl	36(%esp), %ebx
	.cfi_restore 3
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	48(%esp), %ebp
	.cfi_restore 5
L1056:
	movl	44(%esp), %edi
	addl	$52, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret	$8
	.p2align 4,,10
	.p2align 3
L1084:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	leal	-1(%ecx), %ebp
	movl	%ecx, %esi
	jmp	L1058
	.p2align 4,,10
	.p2align 3
L1085:
	movl	_GImGui, %eax
	movl	%eax, 28(%esp)
	testl	%eax, %eax
	je	L1062
	addl	$1, 188(%eax)
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, 24(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	24(%esp), %edx
	movl	%eax, 16(%esp)
	movl	8(%edi), %eax
	testl	%eax, %eax
	movl	%eax, 20(%esp)
	je	L1064
	movl	(%edi), %eax
	movl	%edx, 24(%esp)
	movl	%eax, 8(%esp)
	movl	20(%esp), %eax
	movl	%eax, 4(%esp)
	movl	16(%esp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	28(%esp), %eax
	movl	24(%esp), %edx
	subl	$1, 188(%eax)
L1076:
	movl	20(%esp), %eax
	movl	$0, 4(%esp)
	movl	%edx, 24(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	24(%esp), %edx
L1064:
	movl	16(%esp), %eax
	movl	%edx, 4(%edi)
	movl	%eax, 8(%edi)
	movl	%edx, %eax
	jmp	L1061
	.p2align 4,,10
	.p2align 3
L1083:
	movl	36(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	48(%esp), %ebp
	.cfi_restore 5
	movl	44(%esp), %edi
	addl	$52, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret	$8
	.p2align 4,,10
	.p2align 3
L1062:
	.cfi_restore_state
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	movl	%ecx, 28(%esp)
	movl	%edx, 24(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	24(%esp), %edx
	movl	28(%esp), %ecx
	movl	%eax, 16(%esp)
	movl	8(%edi), %eax
	testl	%eax, %eax
	movl	%eax, 20(%esp)
	je	L1064
	movl	20(%esp), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 24(%esp)
	movl	%eax, 4(%esp)
	movl	16(%esp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	24(%esp), %edx
	jmp	L1076
	.p2align 4,,10
	.p2align 3
L1069:
	movl	16(%esp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	8(%edi), %ecx
	movl	%eax, %edx
	testl	%ecx, %ecx
	je	L1071
	movl	(%edi), %eax
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	movl	%ecx, 24(%esp)
	movl	%edx, 20(%esp)
	call	_memcpy
	movl	20(%esp), %edx
	movl	24(%esp), %ecx
	jmp	L1074
	.cfi_endproc
LFE73:
	.align 2
	.p2align 4
	.globl	__ZN15ImGuiTextBuffer7appendfEPKcz
	.def	__ZN15ImGuiTextBuffer7appendfEPKcz;	.scl	2;	.type	32;	.endef
__ZN15ImGuiTextBuffer7appendfEPKcz:
LFB75:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	leal	24(%esp), %eax
	movl	16(%esp), %ecx
	movl	%eax, 8(%esp)
	movl	%eax, 4(%esp)
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN15ImGuiTextBuffer8appendfvEPKcPc
	.cfi_def_cfa_offset 8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE75:
	.p2align 4
	.globl	__ZN5ImGui13PopStyleColorEi.constprop.0
	.def	__ZN5ImGui13PopStyleColorEi.constprop.0;	.scl	2;	.type	32;	.endef
__ZN5ImGui13PopStyleColorEi.constprop.0:
LFB77:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	_GImGui, %ebx
	movl	18508(%ebx), %ecx
	testl	%ecx, %ecx
	jle	L1088
	movl	18516(%ebx), %eax
	subl	$1, %ecx
	leal	(%ecx,%ecx,4), %edx
	leal	(%eax,%edx,4), %edx
	movl	(%edx), %eax
	movl	4(%edx), %esi
	addl	$913, %eax
	sall	$4, %eax
	movl	%esi, 16(%ebx,%eax)
	movl	8(%edx), %esi
	movl	%esi, 20(%ebx,%eax)
	movl	12(%edx), %esi
	movl	%esi, 24(%ebx,%eax)
	movl	16(%edx), %edx
	movl	%edx, 28(%ebx,%eax)
	movl	%ecx, 18508(%ebx)
L1088:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE77:
	.p2align 4
	.globl	__ZN5ImGui12PushStyleVarEiRK6ImVec2
	.def	__ZN5ImGui12PushStyleVarEiRK6ImVec2;	.scl	2;	.type	32;	.endef
__ZN5ImGui12PushStyleVarEiRK6ImVec2:
LFB78:
	.cfi_startproc
	movl	%edx, %ecx
	leal	(%eax,%eax,2), %edx
	sall	$2, %edx
	cmpl	$8, __ZL13GStyleVarInfo(%edx)
	je	L1110
L1107:
	ret
	.p2align 4,,10
	.p2align 3
L1110:
	cmpl	$2, __ZL13GStyleVarInfo+4(%edx)
	jne	L1107
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	__ZL13GStyleVarInfo+8(%edx), %edx
	movl	%edi, 44(%esp)
	.cfi_offset 7, -12
	movl	%ecx, %edi
	movl	_GImGui, %ecx
	movl	%esi, 40(%esp)
	leal	14404(%ecx,%edx), %edx
	movl	%ebx, 36(%esp)
	movss	(%edx), %xmm1
	movss	4(%edx), %xmm0
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%edx, %esi
	movl	%eax, 24(%esp)
	movl	18520(%ecx), %edx
	movss	%xmm1, 28(%esp)
	movss	%xmm0, 32(%esp)
	cmpl	18524(%ecx), %edx
	je	L1111
L1093:
	movl	18528(%ecx), %ebx
L1097:
	leal	(%edx,%edx,2), %eax
	movl	24(%esp), %edx
	movl	%edx, (%ebx,%eax,4)
	movl	28(%esp), %edx
	movl	%edx, 4(%ebx,%eax,4)
	movl	32(%esp), %edx
	movl	%edx, 8(%ebx,%eax,4)
	addl	$1, 18520(%ecx)
	movl	(%edi), %eax
	movl	4(%edi), %edx
	movl	%eax, 12(%esp)
	movl	%eax, (%esi)
	movl	%edx, 4(%esi)
	movl	36(%esp), %ebx
	movl	40(%esp), %esi
	movl	44(%esp), %edi
	movl	%edx, 16(%esp)
	addl	$52, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1111:
	.cfi_restore_state
	movl	%ebp, 48(%esp)
	.cfi_offset 5, -8
	leal	1(%edx), %ebx
	testl	%edx, %edx
	jne	L1094
	movl	$8, %eax
	cmpl	%eax, %ebx
	cmovge	%ebx, %eax
	movl	%eax, %ebp
	leal	(%eax,%eax,2), %eax
	sall	$2, %eax
L1095:
	addl	$1, 188(%ecx)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 20(%esp)
	movl	%ecx, 12(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	12(%esp), %ecx
	movl	20(%esp), %edx
	movl	%eax, %ebx
	movl	18528(%ecx), %eax
	testl	%eax, %eax
	je	L1098
	leal	(%edx,%edx,2), %edx
	movl	%eax, 4(%esp)
	sall	$2, %edx
	movl	%ebx, (%esp)
	movl	%edx, 8(%esp)
	call	_memcpy
	movl	12(%esp), %ecx
	movl	18528(%ecx), %eax
	testl	%eax, %eax
	je	L1099
	subl	$1, 188(%ecx)
L1099:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 12(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	12(%esp), %ecx
	movl	18520(%ecx), %edx
L1098:
	movl	%ebx, 18528(%ecx)
	movl	%ebp, 18524(%ecx)
	movl	48(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L1097
L1094:
	.cfi_restore_state
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	cmpl	%ebx, %eax
	cmovl	%ebx, %eax
	movl	%eax, %ebp
	cmpl	%eax, %edx
	jl	L1096
	movl	48(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L1093
L1096:
	.cfi_restore_state
	leal	(%eax,%eax,2), %eax
	sall	$2, %eax
	jmp	L1095
	.cfi_endproc
LFE78:
	.p2align 4
	.globl	__ZN5ImGui11PopStyleVarEi.constprop.0
	.def	__ZN5ImGui11PopStyleVarEi.constprop.0;	.scl	2;	.type	32;	.endef
__ZN5ImGui11PopStyleVarEi.constprop.0:
LFB82:
	.cfi_startproc
	movl	_GImGui, %ecx
	movl	18520(%ecx), %eax
	testl	%eax, %eax
	jle	L1119
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	subl	$1, %eax
	movl	%ebx, (%esp)
	movl	18528(%ecx), %edx
	.cfi_offset 3, -12
	leal	(%eax,%eax,2), %ebx
	leal	(%edx,%ebx,4), %ebx
	movl	(%ebx), %edx
	leal	(%edx,%edx,2), %edx
	sall	$2, %edx
	cmpl	$8, __ZL13GStyleVarInfo(%edx)
	je	L1123
	movl	%eax, 18520(%ecx)
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1123:
	.cfi_restore_state
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	movl	__ZL13GStyleVarInfo+8(%edx), %esi
	movl	__ZL13GStyleVarInfo+4(%edx), %edx
	leal	14404(%ecx,%esi), %esi
	cmpl	$1, %edx
	je	L1124
	cmpl	$2, %edx
	je	L1125
	movl	4(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	%eax, 18520(%ecx)
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1124:
	.cfi_restore_state
	movss	4(%ebx), %xmm0
	movss	%xmm0, (%esi)
	movl	18520(%ecx), %eax
	movl	4(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	subl	$1, %eax
	movl	%eax, 18520(%ecx)
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1125:
	.cfi_restore_state
	movss	4(%ebx), %xmm0
	movss	%xmm0, (%esi)
	movss	8(%ebx), %xmm0
	movss	%xmm0, 4(%esi)
	movl	18520(%ecx), %eax
	movl	4(%esp), %esi
	.cfi_restore 6
	subl	$1, %eax
	movl	%eax, 18520(%ecx)
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1119:
	ret
	.cfi_endproc
LFE82:
	.p2align 4
	.globl	__ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	.def	__ZN5ImGui10RenderTextE6ImVec2PKcS2_b;	.scl	2;	.type	32;	.endef
__ZN5ImGui10RenderTextE6ImVec2PKcS2_b:
LFB83:
	.cfi_startproc
	subl	$64, %esp
	.cfi_def_cfa_offset 68
	movl	%ebx, 52(%esp)
	.cfi_offset 3, -16
	movl	68(%esp), %ebx
	movl	%edi, 60(%esp)
	.cfi_offset 7, -8
	movl	%ecx, %edi
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	cmpb	$0, 72(%esp)
	je	L1127
	testl	%ebx, %ebx
	je	L1144
	cmpl	%ebx, %ecx
	jnb	L1126
L1132:
	movl	%edi, %eax
	jmp	L1130
	.p2align 4,,10
	.p2align 3
L1135:
	addl	$1, %eax
	cmpl	%ebx, %eax
	jnb	L1134
L1130:
	movzbl	(%eax), %edx
	testb	%dl, %dl
	je	L1134
	cmpb	$35, %dl
	jne	L1135
	cmpb	$35, 1(%eax)
	jne	L1135
	.p2align 4
	.p2align 3
L1134:
	movl	%eax, %ebx
L1131:
	cmpl	%edi, %ebx
	je	L1126
	movl	%esi, 56(%esp)
	.cfi_offset 6, -12
	movl	_GImGui, %esi
	movl	16148(%esi), %eax
	movss	14636(%esi), %xmm0
	mulss	14404(%esi), %xmm0
	movl	676(%eax), %ecx
	movl	14624(%esi), %eax
	movl	%eax, 36(%esp)
	movl	14628(%esi), %eax
	movl	%ecx, 24(%esp)
	movl	%eax, 40(%esp)
	movl	14632(%esi), %eax
	movss	%xmm0, 48(%esp)
	movl	%eax, 44(%esp)
	leal	36(%esp), %eax
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movss	15516(%esi), %xmm0
	movl	%ebx, 16(%esp)
	xorps	%xmm1, %xmm1
	movl	%eax, 8(%esp)
	leal	28(%esp), %eax
	movl	24(%esp), %ecx
	movl	%eax, 4(%esp)
	movl	$0, 20(%esp)
	movl	%edi, 12(%esp)
	movl	15512(%esi), %edx
	movl	%edx, (%esp)
	call	__ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4
	.cfi_def_cfa_offset 44
	subl	$24, %esp
	.cfi_def_cfa_offset 68
	cmpb	$0, 23524(%esi)
	leal	28(%esp), %eax
	jne	L1145
	movl	56(%esp), %esi
	.cfi_restore 6
L1126:
	movl	52(%esp), %ebx
	movl	60(%esp), %edi
	addl	$64, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1127:
	.cfi_restore_state
	testl	%ebx, %ebx
	jne	L1131
	movl	%ecx, (%esp)
	call	_strlen
	leal	(%edi,%eax), %ebx
	jmp	L1131
	.p2align 4,,10
	.p2align 3
L1145:
	.cfi_offset 6, -12
	movl	%ebx, %ecx
	movl	%edi, %edx
	call	__ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_
	movl	56(%esp), %esi
	.cfi_restore 6
	movl	52(%esp), %ebx
	movl	60(%esp), %edi
	addl	$64, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1144:
	.cfi_def_cfa_offset 68
	.cfi_offset 3, -16
	.cfi_offset 7, -8
	movl	$-1, %ebx
	cmpl	$-1, %ecx
	jne	L1132
	jmp	L1126
	.cfi_endproc
LFE83:
	.section .rdata,"dr"
LC16:
	.ascii "Window\0"
LC17:
	.ascii "Table\0"
LC18:
	.ascii "Docking\0"
	.text
	.p2align 4
	.globl	__ZN5ImGui10InitializeEv
	.def	__ZN5ImGui10InitializeEv;	.scl	2;	.type	32;	.endef
__ZN5ImGui10InitializeEv:
LFB87:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$LC16+1, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	movl	$-1, %esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$108, %esp
	.cfi_offset 3, -20
	movl	_GImGui, %eax
	movss	LC21, %xmm1
	movl	$__ZN5ImGuiL28DockSettingsHandler_ClearAllEP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0, 56(%esp)
	movss	56(%esp), %xmm0
	movl	$__ZN5ImGuiL28DockSettingsHandler_ReadLineEP12ImGuiContextP20ImGuiSettingsHandlerPvPKc.lto_priv.0, 56(%esp)
	movss	56(%esp), %xmm2
	unpcklps	%xmm0, %xmm0
	movl	$__ZL29TableSettingsHandler_WriteAllP12ImGuiContextP20ImGuiSettingsHandlerP15ImGuiTextBuffer.lto_priv.0, 56(%esp)
	unpcklps	%xmm2, %xmm1
	movaps	%xmm0, %xmm4
	movss	56(%esp), %xmm0
	movl	$__ZL29TableSettingsHandler_ReadLineP12ImGuiContextP20ImGuiSettingsHandlerPvPKc.lto_priv.0, 56(%esp)
	movlhps	%xmm1, %xmm4
	movss	56(%esp), %xmm2
	movss	LC22, %xmm1
	movl	$__ZL30WindowSettingsHandler_WriteAllP12ImGuiContextP20ImGuiSettingsHandlerP15ImGuiTextBuffer.lto_priv.0, 56(%esp)
	movl	$0, 72(%esp)
	unpcklps	%xmm0, %xmm1
	movups	%xmm4, 28(%esp)
	movss	LC23, %xmm0
	unpcklps	%xmm2, %xmm0
	movss	LC24, %xmm2
	movlhps	%xmm1, %xmm0
	movss	56(%esp), %xmm1
	movl	$__ZL30WindowSettingsHandler_ReadLineP12ImGuiContextP20ImGuiSettingsHandlerPvPKc.lto_priv.0, 56(%esp)
	movss	56(%esp), %xmm3
	movl	%eax, 56(%esp)
	movl	$87, %eax
	unpcklps	%xmm1, %xmm2
	movss	LC25, %xmm1
	movl	$0, 76(%esp)
	movl	$0, 80(%esp)
	unpcklps	%xmm3, %xmm1
	movl	$0, 84(%esp)
	movl	$0, 88(%esp)
	movlhps	%xmm2, %xmm1
	movl	$0, 92(%esp)
	movl	$LC16, 60(%esp)
	jmp	L1150
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1149:
	movl	%esi, %ecx
	movl	%esi, %ebx
	shrl	$8, %ecx
	movzbl	%bl, %esi
L1148:
	xorl	%esi, %eax
	addl	$1, %edx
	xorl	__ZL17GCrc32LookupTable.lto_priv.0(,%eax,4), %ecx
	movzbl	-1(%edx), %eax
	movl	%ecx, %esi
	cmpl	$LC16+7, %edx
	je	L1256
L1150:
	cmpb	$35, %al
	jne	L1149
	cmpb	$35, (%edx)
	jne	L1149
	cmpb	$35, 1(%edx)
	jne	L1149
	movl	$255, %esi
	movl	$16777215, %ecx
	jmp	L1148
	.p2align 4,,10
	.p2align 3
L1256:
	movl	56(%esp), %eax
	notl	%esi
	movups	%xmm1, 76(%esp)
	movl	%esi, 64(%esp)
	movl	$__ZL30WindowSettingsHandler_ClearAllP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0, 68(%esp)
	movl	23440(%eax), %esi
	cmpl	23444(%eax), %esi
	je	L1257
L1151:
	movl	56(%esp), %eax
	movl	23448(%eax), %edi
L1155:
	movl	60(%esp), %edx
	leal	(%esi,%esi,8), %eax
	movl	$LC17, 60(%esp)
	movl	$-1, %esi
	movl	%edx, (%edi,%eax,4)
	movl	64(%esp), %edx
	movl	%edx, 4(%edi,%eax,4)
	movl	68(%esp), %edx
	movl	%edx, 8(%edi,%eax,4)
	movl	72(%esp), %edx
	movl	$0, 72(%esp)
	movl	%edx, 12(%edi,%eax,4)
	movl	76(%esp), %edx
	movl	$0, 76(%esp)
	movl	%edx, 16(%edi,%eax,4)
	movl	80(%esp), %edx
	movl	$0, 80(%esp)
	movl	%edx, 20(%edi,%eax,4)
	movl	84(%esp), %edx
	movl	$0, 84(%esp)
	movl	%edx, 24(%edi,%eax,4)
	movl	88(%esp), %edx
	movl	$0, 88(%esp)
	movl	%edx, 28(%edi,%eax,4)
	movl	92(%esp), %edx
	movl	$0, 92(%esp)
	movl	%edx, 32(%edi,%eax,4)
	movl	56(%esp), %eax
	movl	$LC17+1, %edx
	addl	$1, 23440(%eax)
	movl	$84, %eax
	jmp	L1161
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1160:
	movl	%esi, %ecx
	movl	%esi, %ebx
	shrl	$8, %ecx
	movzbl	%bl, %esi
L1159:
	xorl	%esi, %eax
	addl	$1, %edx
	xorl	__ZL17GCrc32LookupTable.lto_priv.0(,%eax,4), %ecx
	movzbl	-1(%edx), %eax
	movl	%ecx, %esi
	cmpl	$LC17+6, %edx
	je	L1258
L1161:
	cmpb	$35, %al
	jne	L1160
	cmpb	$35, (%edx)
	jne	L1160
	cmpb	$35, 1(%edx)
	jne	L1160
	movl	$255, %esi
	movl	$16777215, %ecx
	jmp	L1159
	.p2align 4,,10
	.p2align 3
L1258:
	notl	%esi
	movl	$__ZL29TableSettingsHandler_ClearAllP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0, 68(%esp)
	movl	%esi, 64(%esp)
	movl	_GImGui, %esi
	movups	%xmm0, 76(%esp)
	movl	23440(%esi), %edi
	cmpl	23444(%esi), %edi
	je	L1259
L1162:
	movl	23448(%esi), %ecx
L1165:
	movl	60(%esp), %edx
	leal	(%edi,%edi,8), %eax
	movl	%edx, (%ecx,%eax,4)
	movl	64(%esp), %edx
	movl	_GImGui, %edi
	movl	%edx, 4(%ecx,%eax,4)
	movl	68(%esp), %edx
	movl	%edx, 8(%ecx,%eax,4)
	movl	72(%esp), %edx
	movl	%edx, 12(%ecx,%eax,4)
	movl	76(%esp), %edx
	movl	%edx, 16(%ecx,%eax,4)
	movl	80(%esp), %edx
	movl	%edx, 20(%ecx,%eax,4)
	movl	84(%esp), %edx
	movl	%edx, 24(%ecx,%eax,4)
	movl	88(%esp), %edx
	movl	%edx, 28(%ecx,%eax,4)
	movl	92(%esp), %edx
	movl	%edx, 32(%ecx,%eax,4)
	xorl	%eax, %eax
	addl	$1, 23440(%esi)
	.p2align 5
	.p2align 4
	.p2align 3
L1168:
	movl	__ZL24GLocalizationEntriesEnUS(,%eax,8), %edx
	movl	__ZL24GLocalizationEntriesEnUS+4(,%eax,8), %ecx
	addl	$1, %eax
	movl	%ecx, 23492(%edi,%edx,4)
	cmpl	$8, %eax
	jne	L1168
	movl	$__ZL30SetClipboardTextFn_DefaultImplPvPKc.lto_priv.0, 52(%esp)
	movss	52(%esp), %xmm1
	movss	LC26, %xmm0
	movl	56(%esp), %eax
	unpcklps	%xmm1, %xmm0
	movl	%eax, 148(%eax)
	movl	$__ZL32SetPlatformImeDataFn_DefaultImplP13ImGuiViewportP20ImGuiPlatformImeData.lto_priv.0, 152(%eax)
	movlps	%xmm0, 140(%eax)
	addl	$1, 188(%edi)
	movl	$0, 4(%esp)
	movl	$256, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	$0, 56(%eax)
	movl	%eax, %esi
	movl	$0, 60(%eax)
	movl	$0, 64(%eax)
	movl	$0, 68(%eax)
	xorl	%eax, %eax
L1169:
	movl	$0, 8(%esi,%eax)
	movl	$0, 12(%esi,%eax)
	movl	$0, 16(%esi,%eax)
	movl	$0, 20(%esi,%eax)
	addl	$16, %eax
	cmpl	$48, %eax
	jb	L1169
	movl	$0x00000000, 88(%esi)
	xorl	%eax, %eax
	movl	$0x00000000, 92(%esi)
	movl	$0, 160(%esi)
	movl	$0, 164(%esi)
	movl	$0, 168(%esi)
	movl	$0, 172(%esi)
L1171:
	movl	$0, 128(%esi,%eax)
	movl	$0, 132(%esi,%eax)
	movl	$0, 136(%esi,%eax)
	movl	$0, 140(%esi,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L1171
	movl	$-1, %eax
	movl	56(%esp), %ebx
	movss	LC13, %xmm0
	movl	$0, 176(%esi)
	movl	%eax, 112(%esi)
	movss	%xmm0, 100(%esi)
	movss	%xmm0, 96(%esi)
	movups	LC19, %xmm0
	movl	%eax, 116(%esi)
	movl	%eax, 76(%esi)
	movl	%eax, 80(%esi)
	movl	$-1, %eax
	movups	%xmm0, 216(%esi)
	xorps	%xmm0, %xmm0
	movl	$0, 180(%esi)
	movl	$0, 184(%esi)
	movl	$0, 188(%esi)
	movl	$0, 192(%esi)
	movl	$0, 196(%esi)
	movl	$0x00000000, 248(%esi)
	movl	$0x00000000, 252(%esi)
	movl	$0, 84(%esi)
	movw	%ax, 104(%esi)
	movl	$0, 108(%esi)
	movl	$0, 120(%esi)
	movl	$0, 124(%esi)
	movl	$2139095039, 208(%esi)
	movl	$2139095039, 212(%esi)
	movl	$2139095039, 200(%esi)
	movl	$2139095039, 204(%esi)
	movl	$286331153, (%esi)
	movl	$0, 72(%esi)
	movb	$1, 68(%esi)
	movl	$4, 4(%esi)
	movups	%xmm0, 232(%esi)
	movl	18608(%ebx), %eax
	cmpl	18612(%ebx), %eax
	je	L1260
L1173:
	movl	56(%esp), %edi
	movl	18616(%edi), %edx
L1176:
	movl	%esi, (%edx,%eax,4)
	movl	56(%esp), %eax
	addl	$1, 18608(%eax)
	movl	23944(%eax), %eax
	cmpl	$3072, %eax
	jg	L1179
	testl	%eax, %eax
	je	L1210
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%eax, %esi
	sarl	%esi
	addl	%eax, %esi
	movl	$3073, %eax
	cmpl	%eax, %esi
	cmovl	%eax, %esi
	movl	%esi, %eax
L1180:
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L1181
	addl	$1, 188(%edx)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 52(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	56(%esp), %ebx
	movl	%eax, %edi
	movl	23948(%ebx), %eax
	testl	%eax, %eax
	je	L1182
	movl	23940(%ebx), %ecx
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	%ecx, 8(%esp)
	call	_memcpy
	movl	23948(%ebx), %eax
	testl	%eax, %eax
	je	L1208
	movl	52(%esp), %edx
	subl	$1, 188(%edx)
L1208:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1182:
	movl	56(%esp), %eax
	movl	%edi, 23948(%eax)
	movl	%esi, 23944(%eax)
L1179:
	movl	56(%esp), %eax
	movl	23940(%eax), %eax
	cmpl	$3072, %eax
	jle	L1185
L1184:
	movl	56(%esp), %edi
	movl	$3073, 23940(%edi)
	movl	18616(%edi), %eax
	movl	(%eax), %esi
	movl	%edi, %eax
	movl	14368(%edi), %edi
	cmpl	14372(%eax), %edi
	je	L1261
L1186:
	movl	56(%esp), %eax
	movl	14376(%eax), %ecx
L1189:
	movl	56(%esp), %eax
	movl	%esi, (%ecx,%edi,4)
	movl	$LC18+1, %edx
	movl	$-1, %esi
	movl	$0, 92(%esp)
	addl	$1, 14368(%eax)
	movl	$68, %eax
	movl	$LC18, 60(%esp)
	jmp	L1196
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1195:
	movl	%esi, %ecx
	movl	%esi, %ebx
	shrl	$8, %ecx
	movzbl	%bl, %esi
L1194:
	xorl	%esi, %eax
	addl	$1, %edx
	xorl	__ZL17GCrc32LookupTable.lto_priv.0(,%eax,4), %ecx
	movzbl	-1(%edx), %eax
	movl	%ecx, %esi
	cmpl	$LC18+8, %edx
	je	L1262
L1196:
	cmpb	$35, %al
	jne	L1195
	cmpb	$35, (%edx)
	jne	L1195
	cmpb	$35, 1(%edx)
	jne	L1195
	movl	$255, %esi
	movl	$16777215, %ecx
	jmp	L1194
	.p2align 4,,10
	.p2align 3
L1257:
	leal	1(%esi), %edx
	testl	%esi, %esi
	jne	L1152
	movl	$8, %eax
	cmpl	%eax, %edx
	cmovl	%eax, %edx
	leal	(%edx,%edx,8), %eax
	sall	$2, %eax
L1153:
	movl	56(%esp), %ebx
	movl	%edx, 52(%esp)
	movups	%xmm0, 12(%esp)
	addl	$1, 188(%ebx)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	52(%esp), %edx
	movups	12(%esp), %xmm0
	movl	%eax, %edi
	movl	23448(%ebx), %eax
	testl	%eax, %eax
	je	L1156
	leal	(%esi,%esi,8), %ecx
	movl	%eax, 4(%esp)
	sall	$2, %ecx
	movl	%edi, (%esp)
	movl	%ecx, 8(%esp)
	call	_memcpy
	movl	23448(%ebx), %eax
	movl	52(%esp), %edx
	movups	12(%esp), %xmm0
	testl	%eax, %eax
	je	L1157
	subl	$1, 188(%ebx)
L1157:
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, 52(%esp)
	movups	%xmm0, 12(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	56(%esp), %eax
	movups	12(%esp), %xmm0
	movl	52(%esp), %edx
	movl	23440(%eax), %esi
L1156:
	movl	56(%esp), %eax
	movl	%edi, 23448(%eax)
	movl	%edx, 23444(%eax)
	jmp	L1155
	.p2align 4,,10
	.p2align 3
L1259:
	leal	1(%edi), %eax
	testl	%edi, %edi
	jne	L1163
	movl	$8, %edx
	cmpl	%edx, %eax
	cmovge	%eax, %edx
L1164:
	leal	(%edx,%edx,8), %eax
	addl	$1, 188(%esi)
	sall	$2, %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 52(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	52(%esp), %edx
	movl	%eax, %ecx
	movl	23448(%esi), %eax
	testl	%eax, %eax
	je	L1166
	leal	(%edi,%edi,8), %edi
	movl	%ecx, (%esp)
	sall	$2, %edi
	movl	%eax, 4(%esp)
	movl	%edi, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 52(%esp)
	call	_memcpy
	movl	23448(%esi), %eax
	movl	52(%esp), %ecx
	movl	12(%esp), %edx
	testl	%eax, %eax
	je	L1167
	subl	$1, 188(%esi)
L1167:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 52(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	23440(%esi), %edi
	movl	12(%esp), %ecx
	movl	52(%esp), %edx
L1166:
	movl	%ecx, 23448(%esi)
	movl	%edx, 23444(%esi)
	jmp	L1165
	.p2align 4,,10
	.p2align 3
L1163:
	movl	%edi, %edx
	shrl	$31, %edx
	addl	%edi, %edx
	sarl	%edx
	addl	%edi, %edx
	cmpl	%eax, %edx
	cmovl	%eax, %edx
	cmpl	%edx, %edi
	jge	L1162
	jmp	L1164
	.p2align 4,,10
	.p2align 3
L1152:
	movl	%esi, %eax
	shrl	$31, %eax
	addl	%esi, %eax
	sarl	%eax
	addl	%esi, %eax
	cmpl	%edx, %eax
	cmovge	%eax, %edx
	cmpl	%edx, %esi
	jge	L1151
	leal	(%edx,%edx,8), %eax
	sall	$2, %eax
	jmp	L1153
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1185:
	movl	56(%esp), %edi
	movl	23948(%edi), %edx
	movb	$0, (%edx,%eax)
	addl	$1, %eax
	cmpl	$3073, %eax
	jne	L1185
	jmp	L1184
	.p2align 4,,10
	.p2align 3
L1262:
	movups	28(%esp), %xmm5
	movl	56(%esp), %eax
	movl	$__ZN5ImGuiL28DockSettingsHandler_WriteAllEP12ImGuiContextP20ImGuiSettingsHandlerP15ImGuiTextBuffer.lto_priv.0, 28(%esp)
	notl	%esi
	movss	28(%esp), %xmm1
	movl	%esi, 64(%esp)
	movss	LC27, %xmm0
	movl	23440(%eax), %esi
	movups	%xmm5, 68(%esp)
	unpcklps	%xmm1, %xmm0
	movlps	%xmm0, 84(%esp)
	cmpl	23444(%eax), %esi
	je	L1263
L1197:
	movl	56(%esp), %eax
	movl	23448(%eax), %edx
L1200:
	leal	(%esi,%esi,8), %eax
	leal	(%edx,%eax,4), %eax
	movl	60(%esp), %edx
	movl	%edx, (%eax)
	movl	64(%esp), %edx
	movl	%edx, 4(%eax)
	movl	68(%esp), %edx
	movl	%edx, 8(%eax)
	movl	72(%esp), %edx
	movl	%edx, 12(%eax)
	movl	76(%esp), %edx
	movl	%edx, 16(%eax)
	movl	80(%esp), %edx
	movl	%edx, 20(%eax)
	movl	84(%esp), %edx
	movl	%edx, 24(%eax)
	movl	88(%esp), %edx
	movl	%edx, 28(%eax)
	movl	92(%esp), %edx
	movl	%edx, 32(%eax)
	movl	56(%esp), %eax
	addl	$1, 23440(%eax)
	movl	$__ZN5ImGui33DockNodeWindowMenuHandler_DefaultEP12ImGuiContextP13ImGuiDockNodeP11ImGuiTabBar, 23416(%eax)
	movb	$1, (%eax)
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
L1261:
	.cfi_restore_state
	leal	1(%edi), %ecx
	testl	%edi, %edi
	jne	L1187
	movl	$8, %eax
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%eax, %ebx
L1188:
	movl	_GImGui, %edx
	leal	0(,%ebx,4), %eax
	testl	%edx, %edx
	je	L1190
	addl	$1, 188(%edx)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 52(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	56(%esp), %edi
	movl	%eax, %ecx
	movl	14376(%edi), %eax
	movl	14368(%edi), %edi
	testl	%eax, %eax
	je	L1191
	sall	$2, %edi
	movl	%ecx, (%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, 12(%esp)
	call	_memcpy
	movl	56(%esp), %edi
	movl	12(%esp), %ecx
	movl	14376(%edi), %eax
	testl	%eax, %eax
	je	L1206
	movl	52(%esp), %edx
	subl	$1, 188(%edx)
L1206:
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	movl	%ecx, 52(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	56(%esp), %eax
	movl	52(%esp), %ecx
	movl	14368(%eax), %edi
L1191:
	movl	56(%esp), %edx
	movl	%ecx, 14376(%edx)
	movl	%ebx, 14372(%edx)
	jmp	L1189
L1260:
	leal	1(%eax), %ecx
	testl	%eax, %eax
	jne	L1174
	movl	$8, %eax
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%eax, 52(%esp)
L1175:
	movl	52(%esp), %eax
	addl	$1, 188(%edi)
	movl	$0, 4(%esp)
	sall	$2, %eax
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	56(%esp), %ebx
	movl	%eax, %edx
	movl	18616(%ebx), %eax
	testl	%eax, %eax
	je	L1177
	movl	18608(%ebx), %ebx
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	leal	0(,%ebx,4), %ecx
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	call	_memcpy
	movl	56(%esp), %ebx
	movl	12(%esp), %edx
	movl	18616(%ebx), %eax
	testl	%eax, %eax
	jne	L1264
L1178:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 12(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	12(%esp), %edx
L1177:
	movl	56(%esp), %edi
	movl	52(%esp), %eax
	movl	%edx, 18616(%edi)
	movl	%eax, 18612(%edi)
	movl	18608(%edi), %eax
	jmp	L1176
	.p2align 4,,10
	.p2align 3
L1263:
	leal	1(%esi), %eax
	testl	%esi, %esi
	jne	L1198
	movl	$8, %edi
	cmpl	%edi, %eax
	cmovge	%eax, %edi
L1199:
	movl	_GImGui, %ecx
	leal	(%edi,%edi,8), %eax
	sall	$2, %eax
	testl	%ecx, %ecx
	je	L1201
	addl	$1, 188(%ecx)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 28(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	56(%esp), %ebx
	movl	%eax, %edx
	movl	23448(%ebx), %eax
	movl	23440(%ebx), %esi
	testl	%eax, %eax
	je	L1202
	leal	(%esi,%esi,8), %esi
	movl	%edx, (%esp)
	sall	$2, %esi
	movl	%eax, 4(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 52(%esp)
	call	_memcpy
	movl	23448(%ebx), %eax
	movl	52(%esp), %edx
	testl	%eax, %eax
	je	L1204
	movl	28(%esp), %ecx
	subl	$1, 188(%ecx)
L1204:
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, 28(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	56(%esp), %eax
	movl	28(%esp), %edx
	movl	23440(%eax), %esi
L1202:
	movl	56(%esp), %eax
	movl	%edx, 23448(%eax)
	movl	%edi, 23444(%eax)
	jmp	L1200
	.p2align 4,,10
	.p2align 3
L1210:
	movl	$3073, %eax
	movl	$3073, %esi
	jmp	L1180
	.p2align 4,,10
	.p2align 3
L1198:
	movl	%esi, %edi
	shrl	$31, %edi
	addl	%esi, %edi
	sarl	%edi
	addl	%esi, %edi
	cmpl	%eax, %edi
	cmovl	%eax, %edi
	cmpl	%edi, %esi
	jge	L1197
	jmp	L1199
	.p2align 4,,10
	.p2align 3
L1174:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	cmpl	%ecx, %edx
	cmovge	%edx, %ecx
	movl	%ecx, 52(%esp)
	cmpl	%ecx, %eax
	jge	L1173
	jmp	L1175
	.p2align 4,,10
	.p2align 3
L1187:
	movl	%edi, %eax
	shrl	$31, %eax
	addl	%edi, %eax
	sarl	%eax
	addl	%edi, %eax
	cmpl	%ecx, %eax
	cmovge	%eax, %ecx
	movl	%ecx, %ebx
	cmpl	%ecx, %edi
	jge	L1186
	jmp	L1188
L1181:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %edi
	movl	56(%esp), %eax
	movl	23948(%eax), %eax
	testl	%eax, %eax
	je	L1182
	movl	56(%esp), %ebx
	movl	23940(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	%edx, 8(%esp)
	call	_memcpy
	movl	23948(%ebx), %eax
	jmp	L1208
L1264:
	subl	$1, 188(%edi)
	jmp	L1178
L1201:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %edx
	movl	56(%esp), %eax
	movl	23448(%eax), %eax
	testl	%eax, %eax
	je	L1202
	leal	(%esi,%esi,8), %ecx
	movl	%edx, (%esp)
	sall	$2, %ecx
	movl	%eax, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 28(%esp)
	call	_memcpy
	movl	56(%esp), %eax
	movl	28(%esp), %edx
	movl	23448(%eax), %eax
	jmp	L1204
L1190:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %ecx
	movl	56(%esp), %eax
	movl	14376(%eax), %eax
	testl	%eax, %eax
	je	L1191
	leal	0(,%edi,4), %edx
	movl	%ecx, (%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, 52(%esp)
	call	_memcpy
	movl	56(%esp), %eax
	movl	52(%esp), %ecx
	movl	14376(%eax), %eax
	jmp	L1206
	.cfi_endproc
LFE87:
	.section .rdata,"dr"
LC29:
	.ascii "#MOVE\0"
LC30:
	.ascii "#TAB\0"
	.text
	.align 2
	.p2align 4
	.globl	__ZN11ImGuiWindowC2EP12ImGuiContextPKc
	.def	__ZN11ImGuiWindowC2EP12ImGuiContextPKc;	.scl	2;	.type	32;	.endef
__ZN11ImGuiWindowC2EP12ImGuiContextPKc:
LFB101:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	leal	680(%ecx), %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%ecx, %ebx
	subl	$32, %esp
	movl	12(%ebp), %esi
	movl	%ecx, (%esp)
	movl	$968, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, 24(%esp)
	call	_memset
	movl	8(%ebp), %eax
	movl	%eax, (%ebx)
	movl	%esi, (%esp)
	call	_strlen
	leal	1(%eax), %edi
	movl	_GImGui, %eax
	movl	%eax, 28(%esp)
	testl	%eax, %eax
	je	L1266
	addl	$1, 188(%eax)
L1266:
	movl	%edi, (%esp)
	movl	$0, 4(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%edi, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movl	%eax, 4(%ebx)
	movl	%esi, (%esp)
	call	_strlen
	movzbl	(%esi), %edi
	addl	$1, %eax
	movl	%eax, 156(%ebx)
	movl	%edi, %eax
	testb	%al, %al
	je	L1286
	movl	%edi, %ecx
	addl	$1, %esi
	movl	$-1, %eax
	movzbl	(%esi), %edx
	cmpb	$35, %cl
	je	L1268
	.p2align 4
	.p2align 3
L1271:
	xorl	%eax, %ecx
	movl	%eax, %edi
	movzbl	%cl, %ecx
	shrl	$8, %edi
	movl	__ZL17GCrc32LookupTable.lto_priv.0(,%ecx,4), %eax
	xorl	%edi, %eax
	testb	%dl, %dl
	je	L1293
	addl	$1, %esi
	movl	%edx, %ecx
L1294:
	movzbl	(%esi), %edx
	cmpb	$35, %cl
	jne	L1271
L1268:
	cmpb	$35, %dl
	jne	L1271
	cmpb	$35, 1(%esi)
	jne	L1271
	addl	$1, %esi
	movl	$-1885708032, %eax
	movl	%edx, %ecx
	jmp	L1294
	.p2align 4,,10
	.p2align 3
L1293:
	notl	%eax
	movl	%eax, %esi
L1267:
	movl	%esi, 8(%ebx)
	movl	284(%ebx), %edi
	cmpl	288(%ebx), %edi
	je	L1295
L1274:
	movl	292(%ebx), %edx
L1277:
	movl	%esi, (%edx,%edi,4)
	movl	284(%ebx), %eax
	xorl	%edx, %edx
	movl	292(%ebx), %esi
	movl	$-1, 64(%ebx)
	leal	1(%eax), %edi
	movl	$0x7f7fffff, 56(%ebx)
	movl	%edi, 284(%ebx)
	movl	$0x7f7fffff, 60(%ebx)
	movl	(%esi,%eax,4), %ecx
	movl	$LC29, %eax
	movl	%esi, 28(%esp)
	call	__Z9ImHashStrPKcjj
	movl	(%ebx), %esi
	cmpl	16200(%esi), %eax
	je	L1296
L1281:
	movl	%eax, 160(%ebx)
	movl	28(%esp), %eax
	xorl	%edx, %edx
	movl	-4(%eax,%edi,4), %ecx
	movl	$LC30, %eax
	call	__Z9ImHashStrPKcjj
	cmpl	16200(%esi), %eax
	je	L1297
L1282:
	movl	%eax, 164(%ebx)
	movl	$-1, %eax
	movups	LC31, %xmm0
	addl	$15524, %esi
	movw	%ax, 252(%ebx)
	movl	$0x7f7fffff, 276(%ebx)
	movl	276(%ebx), %eax
	movl	$0x7f7fffff, 280(%ebx)
	movl	280(%ebx), %edx
	movl	%eax, 268(%ebx)
	movl	$-1, %eax
	movl	%eax, 624(%ebx)
	movl	%eax, 628(%ebx)
	movl	24(%esp), %eax
	movups	%xmm0, 188(%ebx)
	movss	LC13, %xmm0
	movl	%eax, 676(%ebx)
	movl	4(%ebx), %eax
	movl	%edx, 272(%ebx)
	movl	$-1, %edx
	movl	%esi, 724(%ebx)
	movl	$-1, 256(%ebx)
	movl	$0, 264(%ebx)
	movl	$0xbf800000, 632(%ebx)
	movl	$-1, 672(%ebx)
	movw	%dx, 910(%ebx)
	movl	%eax, 728(%ebx)
	movl	$0, 20(%ebx)
	movl	$0, 28(%ebx)
	movl	$0, 32(%ebx)
	movl	$0, 36(%ebx)
	movl	$0, 40(%ebx)
	movl	$0, 44(%ebx)
	movl	$-1, 24(%ebx)
	movss	%xmm0, 668(%ebx)
	movss	%xmm0, 664(%ebx)
	movb	$1, 45(%ebx)
	addl	$32, %esp
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
L1295:
	.cfi_restore_state
	leal	1(%edi), %eax
	testl	%edi, %edi
	jne	L1275
	movl	$8, %edx
	cmpl	%edx, %eax
	cmovge	%eax, %edx
	movl	%edx, 20(%esp)
L1276:
	movl	20(%esp), %eax
	movl	28(%esp), %edx
	sall	$2, %eax
	testl	%edx, %edx
	je	L1278
	addl	$1, 188(%edx)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	292(%ebx), %ecx
	movl	284(%ebx), %edi
	movl	%eax, %edx
	testl	%ecx, %ecx
	je	L1298
	sall	$2, %edi
	movl	%ecx, 4(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 12(%esp)
	movl	%eax, 16(%esp)
	call	_memcpy
	movl	28(%esp), %eax
	movl	16(%esp), %edx
	movl	12(%esp), %ecx
	subl	$1, 188(%eax)
L1283:
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	movl	%edx, 28(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	284(%ebx), %edi
	movl	8(%ebx), %esi
	movl	28(%esp), %edx
L1280:
	movl	20(%esp), %eax
	movl	%edx, 292(%ebx)
	movl	%eax, 288(%ebx)
	jmp	L1277
	.p2align 4,,10
	.p2align 3
L1296:
	movl	$LC29, %ecx
	movl	$11, %edx
	movl	%eax, 20(%esp)
	call	__ZN5ImGui15DebugHookIdInfoEjiPKvS1_.constprop.0
	movl	292(%ebx), %eax
	movl	284(%ebx), %edi
	movl	(%ebx), %esi
	movl	%eax, 28(%esp)
	movl	20(%esp), %eax
	jmp	L1281
	.p2align 4,,10
	.p2align 3
L1297:
	movl	$LC30, %ecx
	movl	$11, %edx
	movl	%eax, 28(%esp)
	call	__ZN5ImGui15DebugHookIdInfoEjiPKvS1_.constprop.0
	movl	(%ebx), %esi
	movl	28(%esp), %eax
	jmp	L1282
	.p2align 4,,10
	.p2align 3
L1275:
	movl	%edi, %edx
	shrl	$31, %edx
	addl	%edi, %edx
	sarl	%edx
	addl	%edi, %edx
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, 20(%esp)
	cmpl	%eax, %edi
	jge	L1274
	jmp	L1276
	.p2align 4,,10
	.p2align 3
L1286:
	xorl	%esi, %esi
	jmp	L1267
L1298:
	movl	8(%ebx), %esi
	jmp	L1280
L1278:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	292(%ebx), %ecx
	movl	%eax, %edx
	testl	%ecx, %ecx
	je	L1280
	sall	$2, %edi
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	movl	%edi, 8(%esp)
	movl	%ecx, 16(%esp)
	movl	%edx, 28(%esp)
	call	_memcpy
	movl	28(%esp), %edx
	movl	16(%esp), %ecx
	jmp	L1283
	.cfi_endproc
LFE101:
	.globl	__ZN11ImGuiWindowC1EP12ImGuiContextPKc
	.def	__ZN11ImGuiWindowC1EP12ImGuiContextPKc;	.scl	2;	.type	32;	.endef
	.set	__ZN11ImGuiWindowC1EP12ImGuiContextPKc,__ZN11ImGuiWindowC2EP12ImGuiContextPKc
	.align 2
	.p2align 4
	.globl	__ZN11ImGuiWindow5GetIDEi
	.def	__ZN11ImGuiWindow5GetIDEi;	.scl	2;	.type	32;	.endef
__ZN11ImGuiWindow5GetIDEi:
LFB107:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	284(%ecx), %edx
	movl	292(%ecx), %eax
	leal	20(%esp), %esi
	movl	-4(%eax,%edx,4), %eax
	leal	16(%esp), %edx
	notl	%eax
	.p2align 5
	.p2align 4
	.p2align 3
L1300:
	addl	$1, %edx
	movl	%eax, %ebx
	xorb	-1(%edx), %al
	shrl	$8, %ebx
	movzbl	%al, %eax
	xorl	__ZL17GCrc32LookupTable.lto_priv.0(,%eax,4), %ebx
	movl	%ebx, %eax
	cmpl	%esi, %edx
	jne	L1300
	movl	(%ecx), %edx
	notl	%eax
	cmpl	%eax, 16200(%edx)
	je	L1304
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret	$4
	.p2align 4,,10
	.p2align 3
L1304:
	.cfi_restore_state
	movl	16(%esp), %ecx
	movl	$4, %edx
	movl	%eax, (%esp)
	call	__ZN5ImGui15DebugHookIdInfoEjiPKvS1_.constprop.0
	movl	(%esp), %eax
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret	$4
	.cfi_endproc
LFE107:
	.p2align 4
	.globl	__ZL16SetCurrentWindowP11ImGuiWindow.lto_priv.0
	.def	__ZL16SetCurrentWindowP11ImGuiWindow.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL16SetCurrentWindowP11ImGuiWindow.lto_priv.0:
LFB109:
	.cfi_startproc
	movl	_GImGui, %edx
	movl	%eax, 16148(%edx)
	testl	%eax, %eax
	je	L1306
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	460(%eax), %ebx
	xorl	%ecx, %ecx
	cmpl	$-1, %ebx
	je	L1307
	imull	$488, %ebx, %ecx
	addl	19256(%edx), %ecx
L1307:
	movl	%ecx, 19228(%edx)
	movl	(%eax), %ecx
	movss	15520(%ecx), %xmm0
	mulss	664(%eax), %xmm0
	mulss	668(%eax), %xmm0
	movl	824(%eax), %eax
	testl	%eax, %eax
	je	L1309
	mulss	664(%eax), %xmm0
L1309:
	movss	%xmm0, 15536(%edx)
	movss	%xmm0, 15516(%edx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1306:
	movl	$0, 19228(%edx)
	ret
	.cfi_endproc
LFE109:
	.section .rdata,"dr"
LC34:
	.ascii "\0"
	.align 4
LC35:
	.ascii "SetActiveID() cancel MovingWindow\12\0"
	.align 4
LC36:
	.ascii "SetActiveID() old:0x%08X (window \"%s\") -> new:0x%08X (window \"%s\")\12\0"
	.text
	.p2align 4
	.globl	__ZN5ImGui11SetActiveIDEjP11ImGuiWindow
	.def	__ZN5ImGui11SetActiveIDEjP11ImGuiWindow;	.scl	2;	.type	32;	.endef
__ZN5ImGui11SetActiveIDEjP11ImGuiWindow:
LFB110:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, %ecx
	movl	_GImGui, %eax
	movl	%esi, 32(%esp)
	.cfi_offset 6, -16
	movl	%edx, %esi
	movl	%ebx, 28(%esp)
	.cfi_offset 3, -20
	movl	16160(%eax), %ebx
	movl	16224(%eax), %edx
	testl	%ebx, %ebx
	je	L1322
	cmpl	%edx, 160(%ebx)
	je	L1351
L1322:
	cmpl	%edx, %ecx
	setne	16236(%eax)
	je	L1324
L1354:
	testb	$1, 23576(%eax)
	je	L1325
	movl	%ebp, 40(%esp)
	.cfi_offset 5, -8
	movl	$LC34, %ebp
	movl	%edi, 36(%esp)
	.cfi_offset 7, -12
	testl	%esi, %esi
	je	L1326
	movl	4(%esi), %ebp
L1326:
	movl	16252(%eax), %edi
	movl	$LC34, %ebx
	testl	%edi, %edi
	je	L1327
	movl	4(%edi), %ebx
L1327:
	movl	%ebp, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$LC36, (%esp)
	movl	%eax, 24(%esp)
	movl	%ecx, 20(%esp)
	call	__ZN5ImGui8DebugLogEPKcz
	movl	24(%esp), %eax
	movl	20(%esp), %ecx
	movl	36(%esp), %edi
	.cfi_restore 7
	movl	40(%esp), %ebp
	.cfi_restore 5
L1325:
	movl	$0x00000000, 16232(%eax)
	xorl	%ebx, %ebx
	movw	%bx, 16239(%eax)
	movl	$-1, 16260(%eax)
	testl	%ecx, %ecx
	je	L1352
	xorl	%ebx, %ebx
	movl	%ecx, 16276(%eax)
	movl	$0x00000000, 16280(%eax)
	movl	%ecx, 16224(%eax)
	movw	%bx, 16237(%eax)
	movl	%esi, 16252(%eax)
	movb	$0, 16241(%eax)
L1330:
	movl	%ecx, 16228(%eax)
	movl	$5, %edx
	cmpl	%ecx, 18692(%eax)
	je	L1331
	xorl	%edx, %edx
	cmpl	%ecx, 18708(%eax)
	sete	%dl
	leal	1(,%edx,4), %edx
L1331:
	movl	%edx, 16256(%eax)
	jmp	L1329
	.p2align 4,,10
	.p2align 3
L1352:
	xorl	%edx, %edx
	movl	%esi, 16252(%eax)
	movl	$0, 16224(%eax)
	movw	%dx, 16237(%eax)
	movb	$0, 16241(%eax)
L1329:
	movl	$0, 18268(%eax)
	movb	$0, 18272(%eax)
	movl	$0, 18276(%eax)
	movl	28(%esp), %ebx
	movl	32(%esp), %esi
	addl	$44, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1351:
	.cfi_restore_state
	testb	$1, 23576(%eax)
	jne	L1353
L1323:
	movl	$0, 16160(%eax)
	cmpl	%edx, %ecx
	setne	16236(%eax)
	jne	L1354
L1324:
	xorl	%edx, %edx
	movl	%ecx, 16224(%eax)
	movw	%dx, 16237(%eax)
	movl	%esi, 16252(%eax)
	movb	$0, 16241(%eax)
	testl	%ecx, %ecx
	je	L1329
	jmp	L1330
	.p2align 4,,10
	.p2align 3
L1353:
	movl	$LC35, (%esp)
	movl	%ecx, 24(%esp)
	movl	%eax, 20(%esp)
	call	__ZN5ImGui8DebugLogEPKcz
	movl	20(%esp), %eax
	movl	24(%esp), %ecx
	movl	16224(%eax), %edx
	jmp	L1323
	.cfi_endproc
LFE110:
	.p2align 4
	.def	__ZN5ImGui22StartMouseMovingWindowEP11ImGuiWindow;	.scl	3;	.type	32;	.endef
__ZN5ImGui22StartMouseMovingWindowEP11ImGuiWindow:
LFB111:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	_GImGui, %ebx
	call	__ZN5ImGui11FocusWindowEP11ImGuiWindow
	movl	160(%esi), %eax
	movl	%esi, %edx
	call	__ZN5ImGui11SetActiveIDEjP11ImGuiWindow
	movb	$1, 18738(%ebx)
	movl	840(%esi), %eax
	xorl	%edx, %edx
	movss	14012(%ebx), %xmm0
	movss	14008(%ebx), %xmm1
	subss	72(%eax), %xmm0
	subss	68(%eax), %xmm1
	movb	$1, 16238(%ebx)
	movl	_GImGui, %eax
	movss	%xmm1, 16244(%ebx)
	movss	%xmm0, 16248(%ebx)
	movw	%dx, 18764(%eax)
	movzbl	18741(%eax), %edx
	movl	$15, 18268(%eax)
	movb	$1, 18272(%eax)
	movb	%dl, 18740(%eax)
	testb	$4, 12(%esi)
	jne	L1355
	movl	840(%esi), %eax
	testb	$4, 12(%eax)
	je	L1365
L1355:
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
L1365:
	.cfi_restore_state
	movl	940(%esi), %eax
	testl	%eax, %eax
	je	L1357
	movl	116(%eax), %eax
	testl	%eax, %eax
	je	L1357
	testb	$4, 12(%eax)
	jne	L1355
L1357:
	movl	%esi, 16160(%ebx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE111:
	.p2align 4
	.def	__ZN5ImGui28StartMouseMovingWindowOrNodeEP11ImGuiWindowP13ImGuiDockNodeb.constprop.0;	.scl	3;	.type	32;	.endef
__ZN5ImGui28StartMouseMovingWindowOrNodeEP11ImGuiWindowP13ImGuiDockNodeb.constprop.0:
LFB113:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%edx, %ecx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	.cfi_offset 6, -12
	movl	%eax, %esi
	pushl	%ebx
	andl	$-8, %esp
	subl	$60, %esp
	.cfi_offset 3, -16
	movl	_GImGui, %edx
	testl	%ecx, %ecx
	je	L1407
	movl	116(%ecx), %eax
	testl	%eax, %eax
	je	L1407
	testb	$4, 12(%eax)
	jne	L1407
	movl	%ecx, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L1371:
	movl	%eax, %ebx
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	L1371
	movzbl	3536(%edx), %eax
	cmpl	124(%ebx), %ecx
	je	L1408
	testb	%al, %al
	jne	L1369
L1366:
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
L1407:
	.cfi_restore_state
	xorl	%eax, %eax
	cmpb	$0, 3536(%edx)
	je	L1366
L1369:
	movss	14136(%edx), %xmm3
	xorps	%xmm1, %xmm1
	movss	48(%edx), %xmm0
	movss	LC37, %xmm2
	comiss	%xmm3, %xmm1
	mulss	%xmm0, %xmm2
	ja	L1373
	ucomiss	%xmm1, %xmm3
	jp	L1373
	jne	L1373
	movzbl	17840(%edx), %ebx
	xorl	$1, %ebx
L1376:
	xorps	%xmm3, %xmm3
	movaps	%xmm2, %xmm1
	cmpltss	%xmm3, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm2, %xmm1
	orps	%xmm1, %xmm0
	movss	14216(%edx), %xmm1
	mulss	%xmm0, %xmm0
	comiss	%xmm0, %xmm1
	jb	L1378
	testb	%al, %al
	jne	L1409
L1387:
	movl	%esi, %eax
	cmpl	%esi, 16160(%edx)
	je	L1366
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	jmp	__ZN5ImGui22StartMouseMovingWindowEP11ImGuiWindow
	.p2align 4,,10
	.p2align 3
L1373:
	.cfi_restore_state
	xorl	%ebx, %ebx
	jmp	L1376
	.p2align 4,,10
	.p2align 3
L1378:
	testb	%al, %al
	jne	L1366
	testb	%bl, %bl
	jne	L1387
	jmp	L1366
	.p2align 4,,10
	.p2align 3
L1409:
	movl	$0, 48(%esp)
	movl	23388(%edx), %ebx
	movl	$0, 32(%esp)
	movl	$0, 24(%esp)
	movl	$0, 28(%esp)
	movl	$-1, 36(%esp)
	movl	$0x3f000000, 40(%esp)
	movb	$0, 44(%esp)
	movl	$2, 20(%esp)
	movl	%ecx, 52(%esp)
	cmpl	23392(%edx), %ebx
	je	L1410
L1379:
	movl	23396(%edx), %ecx
L1382:
	leal	(%ebx,%ebx,8), %eax
	leal	(%ecx,%eax,4), %eax
	movl	20(%esp), %ecx
	movl	%ecx, (%eax)
	movl	24(%esp), %ecx
	movl	%ecx, 4(%eax)
	movl	28(%esp), %ecx
	movl	%ecx, 8(%eax)
	movl	32(%esp), %ecx
	movl	%ecx, 12(%eax)
	movl	36(%esp), %ecx
	movl	%ecx, 16(%eax)
	movl	40(%esp), %ecx
	movl	%ecx, 20(%eax)
	movl	44(%esp), %ecx
	movl	%ecx, 24(%eax)
	movl	48(%esp), %ecx
	movl	%ecx, 28(%eax)
	movl	52(%esp), %ecx
	movl	%ecx, 32(%eax)
	addl	$1, 23388(%edx)
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
L1410:
	.cfi_restore_state
	leal	1(%ebx), %eax
	testl	%ebx, %ebx
	jne	L1380
	movl	$8, %ecx
	cmpl	%ecx, %eax
	cmovge	%eax, %ecx
	movl	%ecx, %esi
L1381:
	leal	(%esi,%esi,8), %eax
	addl	$1, 188(%edx)
	sall	$2, %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 16(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	16(%esp), %edx
	movl	%eax, %ecx
	movl	23396(%edx), %eax
	testl	%eax, %eax
	je	L1383
	leal	(%ebx,%ebx,8), %ebx
	movl	%ecx, (%esp)
	sall	$2, %ebx
	movl	%eax, 4(%esp)
	movl	%ebx, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 16(%esp)
	call	_memcpy
	movl	12(%esp), %edx
	movl	16(%esp), %ecx
	movl	23396(%edx), %eax
	testl	%eax, %eax
	je	L1384
	subl	$1, 188(%edx)
L1384:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 16(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	16(%esp), %edx
	movl	12(%esp), %ecx
	movl	23388(%edx), %ebx
L1383:
	movl	%ecx, 23396(%edx)
	movl	%esi, 23392(%edx)
	jmp	L1382
	.p2align 4,,10
	.p2align 3
L1408:
	testb	%al, %al
	je	L1366
	cmpl	$0, 120(%ebx)
	setne	%al
	jmp	L1369
	.p2align 4,,10
	.p2align 3
L1380:
	movl	%ebx, %ecx
	shrl	$31, %ecx
	addl	%ebx, %ecx
	sarl	%ecx
	addl	%ebx, %ecx
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%eax, %esi
	cmpl	%eax, %ebx
	jge	L1379
	jmp	L1381
	.cfi_endproc
LFE113:
	.p2align 4
	.globl	__ZL19GetViewportDrawListP14ImGuiViewportPjPKc.lto_priv.0
	.def	__ZL19GetViewportDrawListP14ImGuiViewportPjPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL19GetViewportDrawListP14ImGuiViewportPjPKc.lto_priv.0:
LFB124:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	leal	(%eax,%edx,4), %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	120(%edi), %ebx
	movl	_GImGui, %ebp
	testl	%ebx, %ebx
	je	L1422
L1412:
	movl	16048(%ebp), %eax
	cmpl	%eax, 112(%edi)
	je	L1411
	movl	%ebx, %ecx
	call	__ZN10ImDrawList17_ResetForNewFrameEv
	movl	72(%ebp), %eax
	movl	%ebx, %ecx
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN10ImDrawList13PushTextureIDEPv
	.cfi_def_cfa_offset 28
	movss	12(%esi), %xmm1
	movss	8(%esi), %xmm0
	movl	%ebx, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	movl	$0, 4(%esp)
	movss	20(%esi), %xmm2
	addss	%xmm1, %xmm2
	movss	%xmm2, (%esp)
	movss	16(%esi), %xmm2
	addss	%xmm0, %xmm2
	call	__ZN10ImDrawList12PushClipRectERK6ImVec2S2_b.isra.0
	.cfi_def_cfa_offset 24
	movl	16048(%ebp), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	movl	%eax, 112(%edi)
L1411:
	addl	$12, %esp
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
L1422:
	.cfi_restore_state
	testl	%ebp, %ebp
	je	L1413
	addl	$1, 188(%ebp)
L1413:
	movl	$0, 4(%esp)
	movl	$144, (%esp)
	movl	%ecx, 8(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	$0, 128(%eax)
	movl	%eax, %ebx
	movl	$0, 132(%eax)
	movl	$0, 136(%eax)
	movl	$0, 140(%eax)
	movl	8(%esp), %ecx
	xorl	%eax, %eax
L1414:
	movl	$0, (%ebx,%eax)
	movl	$0, 4(%ebx,%eax)
	movl	$0, 8(%ebx,%eax)
	movl	$0, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	$128, %eax
	jb	L1414
	leal	15524(%ebp), %eax
	movl	%ecx, 48(%ebx)
	movl	%eax, 44(%ebx)
	movl	%ebx, 120(%edi)
	jmp	L1412
	.cfi_endproc
LFE124:
	.p2align 4
	.globl	__ZL21AddDrawListToDrawDataP8ImVectorIP10ImDrawListES1_.lto_priv.0
	.def	__ZL21AddDrawListToDrawDataP8ImVectorIP10ImDrawListES1_.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL21AddDrawListToDrawDataP8ImVectorIP10ImDrawListES1_.lto_priv.0:
LFB125:
	.cfi_startproc
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	%ebx, 24(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	(%edx), %eax
	testl	%eax, %eax
	je	L1423
	cmpl	$1, %eax
	jne	L1425
	movl	8(%edx), %eax
	movl	28(%eax), %ecx
	testl	%ecx, %ecx
	jne	L1425
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	L1423
L1425:
	movl	%edx, %ecx
	movl	%ebx, %edx
	movl	%esi, 28(%esp)
	movl	(%ebx), %ebx
	cmpl	4(%edx), %ebx
	.cfi_offset 6, -16
	je	L1440
L1426:
	movl	8(%edx), %esi
L1429:
	movl	%ecx, (%esi,%ebx,4)
	addl	$1, (%edx)
	movl	28(%esp), %esi
	.cfi_restore 6
L1423:
	movl	24(%esp), %ebx
	addl	$40, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1440:
	.cfi_def_cfa_offset 44
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	%edi, 32(%esp)
	leal	1(%ebx), %esi
	testl	%ebx, %ebx
	.cfi_offset 7, -12
	jne	L1427
	movl	$8, %eax
	movl	%ebp, 36(%esp)
	cmpl	%eax, %esi
	cmovge	%esi, %eax
	movl	%eax, %edi
	.cfi_offset 5, -8
L1428:
	movl	_GImGui, %esi
	movl	%ecx, 16(%esp)
	leal	0(,%edi,4), %eax
	movl	%edx, 12(%esp)
	movl	%esi, 20(%esp)
	testl	%esi, %esi
	je	L1430
	addl	$1, 188(%esi)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	12(%esp), %edx
	movl	16(%esp), %ecx
	movl	%eax, %esi
	movl	8(%edx), %eax
	movl	(%edx), %ebx
	testl	%eax, %eax
	movl	%eax, %ebp
	je	L1432
	sall	$2, %ebx
	movl	%eax, 4(%esp)
	movl	%ebx, 8(%esp)
	movl	%esi, (%esp)
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	call	_memcpy
	movl	20(%esp), %eax
	movl	12(%esp), %edx
	movl	16(%esp), %ecx
	subl	$1, 188(%eax)
L1433:
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	12(%esp), %edx
	movl	16(%esp), %ecx
	movl	(%edx), %ebx
L1432:
	movl	%esi, 8(%edx)
	movl	%edi, 4(%edx)
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %ebp
	.cfi_restore 5
	jmp	L1429
	.p2align 4,,10
	.p2align 3
L1427:
	.cfi_offset 7, -12
	movl	%ebx, %eax
	shrl	$31, %eax
	addl	%ebx, %eax
	sarl	%eax
	addl	%ebx, %eax
	cmpl	%esi, %eax
	cmovge	%eax, %esi
	movl	%esi, %edi
	cmpl	%esi, %ebx
	jl	L1439
	movl	32(%esp), %edi
	.cfi_restore 7
	jmp	L1426
	.p2align 4,,10
	.p2align 3
L1430:
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	12(%esp), %edx
	movl	16(%esp), %ecx
	movl	%eax, %esi
	movl	8(%edx), %eax
	testl	%eax, %eax
	movl	%eax, %ebp
	je	L1432
	sall	$2, %ebx
	movl	%ebp, 4(%esp)
	movl	%ebx, 8(%esp)
	movl	%esi, (%esp)
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	call	_memcpy
	movl	12(%esp), %edx
	movl	16(%esp), %ecx
	jmp	L1433
	.p2align 4,,10
	.p2align 3
L1439:
	.cfi_restore 5
	movl	%ebp, 36(%esp)
	.cfi_offset 5, -8
	jmp	L1428
	.cfi_endproc
LFE125:
	.p2align 4
	.globl	__ZL19AddWindowToDrawDataP11ImGuiWindowi.lto_priv.0
	.def	__ZL19AddWindowToDrawDataP11ImGuiWindowi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL19AddWindowToDrawDataP11ImGuiWindowi.lto_priv.0:
LFB127:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%edx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	_GImGui, %eax
	movl	48(%esi), %ebx
	addl	$1, 180(%eax)
	movl	676(%esi), %edx
	testb	$32, 15(%esi)
	jne	L1450
L1443:
	movl	%edi, %eax
	negl	%eax
	andl	$12, %eax
	leal	176(%ebx,%eax), %eax
	call	__ZL21AddDrawListToDrawDataP8ImVectorIP10ImDrawListES1_.lto_priv.0
	movl	440(%esi), %eax
	testl	%eax, %eax
	jle	L1441
	xorl	%ebx, %ebx
L1447:
	movl	448(%esi), %eax
	movl	(%eax,%ebx,4), %eax
	cmpb	$0, 223(%eax)
	je	L1446
	cmpb	$0, 230(%eax)
	jne	L1446
	movl	%edi, %edx
	call	__ZL19AddWindowToDrawDataP11ImGuiWindowi.lto_priv.0
L1446:
	addl	$1, %ebx
	cmpl	%ebx, 440(%esi)
	jg	L1447
L1441:
	addl	$4, %esp
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
L1450:
	.cfi_restore_state
	cmpl	$1, 124(%edx)
	jle	L1443
	movl	%edx, (%esp)
	leal	120(%edx), %ecx
	call	__ZN18ImDrawListSplitter5MergeEP10ImDrawList.part.0
	.cfi_def_cfa_offset 16
	movl	676(%esi), %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	jmp	L1443
	.cfi_endproc
LFE127:
	.p2align 4
	.globl	__ZN5ImGui12PushClipRectERK6ImVec2S2_b
	.def	__ZN5ImGui12PushClipRectERK6ImVec2S2_b;	.scl	2;	.type	32;	.endef
__ZN5ImGui12PushClipRectERK6ImVec2S2_b:
LFB129:
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
	subl	$20, %esp
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	_GImGui, %eax
	movl	16148(%eax), %ebx
	movb	$1, 225(%ebx)
	movl	16148(%eax), %ebx
	movzbl	%cl, %eax
	movss	(%esi), %xmm0
	movl	676(%ebx), %edi
	movl	%eax, 4(%esp)
	movss	4(%edx), %xmm1
	movl	%edi, %ecx
	movss	%xmm1, (%esp)
	movss	(%edx), %xmm2
	movss	4(%esi), %xmm1
	call	__ZN10ImDrawList12PushClipRectERK6ImVec2S2_b.isra.0
	movl	676(%ebx), %edx
	subl	$8, %esp
	movl	60(%edx), %eax
	addl	$268435455, %eax
	sall	$4, %eax
	addl	68(%edx), %eax
	movups	(%eax), %xmm0
	movups	%xmm0, 584(%ebx)
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
LFE129:
	.p2align 4
	.globl	__ZN5ImGui11PopClipRectEv
	.def	__ZN5ImGui11PopClipRectEv;	.scl	2;	.type	32;	.endef
__ZN5ImGui11PopClipRectEv:
LFB130:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	_GImGui, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	movl	16148(%eax), %edx
	andl	$-16, %esp
	.cfi_offset 3, -12
	movb	$1, 225(%edx)
	movl	16148(%eax), %ebx
	movl	676(%ebx), %ecx
	call	__ZN10ImDrawList11PopClipRectEv
	movl	676(%ebx), %edx
	movl	60(%edx), %eax
	addl	$268435455, %eax
	sall	$4, %eax
	addl	68(%edx), %eax
	movups	(%eax), %xmm0
	movups	%xmm0, 584(%ebx)
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE130:
	.section .rdata,"dr"
LC38:
	.ascii "###NavWindowingList\0"
LC39:
	.ascii "*Missing Text*\0"
LC40:
	.ascii "(Dock node)\0"
	.align 4
LC41:
	.ascii "Calling io.SetPlatformImeDataFn(): WantVisible: %d, InputPos (%.2f,%.2f)\12\0"
LC44:
	.ascii "##MainMenuBar\0"
LC46:
	.ascii "...\0"
	.text
	.p2align 4
	.globl	__ZN5ImGui8EndFrameEv
	.def	__ZN5ImGui8EndFrameEv;	.scl	2;	.type	32;	.endef
__ZN5ImGui8EndFrameEv:
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
	subl	$68, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	_GImGui, %ebx
	movl	16048(%ebx), %eax
	cmpl	%eax, 16052(%ebx)
	je	L1455
	movl	23476(%ebx), %eax
	testl	%eax, %eax
	jle	L1593
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L1459:
	movl	23484(%ebx), %edx
	leal	(%esi,%esi,4), %eax
	leal	(%edx,%eax,4), %eax
	cmpl	$2, 4(%eax)
	jne	L1458
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	*12(%eax)
L1458:
	addl	$1, %esi
	cmpl	23476(%ebx), %esi
	jl	L1459
	movl	_GImGui, %esi
L1457:
	cmpl	$1, 16112(%esi)
	jg	L1461
L1460:
	movl	152(%ebx), %eax
	testl	%eax, %eax
	je	L1462
	leal	23336(%ebx), %eax
	movl	%eax, -44(%ebp)
	movl	23352(%ebx), %eax
	cmpl	%eax, 23336(%ebx)
	je	L1719
L1463:
	movl	_GImGui, %esi
	movl	18608(%esi), %edx
	testl	%edx, %edx
	jle	L1465
	movl	18616(%esi), %edi
	movl	23368(%ebx), %ecx
	movl	%esi, -48(%ebp)
	xorl	%eax, %eax
	movl	%edi, %esi
	jmp	L1467
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1721:
	addl	$1, %eax
	cmpl	%edx, %eax
	je	L1720
L1467:
	movl	(%esi,%eax,4), %edi
	cmpl	(%edi), %ecx
	jne	L1721
	testb	$32, 23576(%ebx)
	jne	L1590
L1470:
	movl	64(%edi), %eax
	testl	%eax, %eax
	je	L1722
L1471:
	movl	-44(%ebp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	*152(%ebx)
L1462:
	movl	16148(%ebx), %eax
	movb	$0, 16065(%ebx)
	testl	%eax, %eax
	je	L1472
	cmpb	$0, 225(%eax)
	jne	L1472
	movb	$0, 223(%eax)
L1472:
	call	__ZN5ImGui3EndEv
	movl	_GImGui, %esi
	movl	19020(%esi), %eax
	movl	%esi, -44(%ebp)
	testl	%eax, %eax
	je	L1714
	movss	LC42, %xmm0
	comiss	19032(%esi), %xmm0
	ja	L1714
	movl	19028(%esi), %edi
	testl	%edi, %edi
	je	L1723
L1476:
	movl	18616(%esi), %eax
	movl	18372(%esi), %edx
	movss	LC43, %xmm0
	movl	(%eax), %eax
	movl	%edx, %ecx
	orl	$17, %edx
	orl	$16, %ecx
	movss	20(%eax), %xmm1
	mulss	%xmm0, %xmm1
	mulss	16(%eax), %xmm0
	movl	%ecx, 18372(%esi)
	movl	$0, 18452(%esi)
	movl	$0, 18456(%esi)
	movss	%xmm1, 18440(%esi)
	movss	%xmm0, 18436(%esi)
	movss	LC28, %xmm0
	movss	%xmm0, 18444(%esi)
	movss	%xmm0, 18448(%esi)
	movss	20(%eax), %xmm1
	movss	LC15, %xmm0
	movss	16(%eax), %xmm2
	mulss	%xmm0, %xmm1
	addss	12(%eax), %xmm1
	mulss	%xmm0, %xmm2
	addss	8(%eax), %xmm2
	movl	%edx, 18372(%esi)
	leal	-40(%ebp), %edx
	movl	$2, %eax
	movss	%xmm0, 18400(%esi)
	movss	%xmm1, 18396(%esi)
	movss	14412(%esi), %xmm1
	movss	%xmm0, 18404(%esi)
	movss	14416(%esi), %xmm0
	movl	$1, 18376(%esi)
	addss	%xmm1, %xmm1
	movb	$1, 18432(%esi)
	addss	%xmm0, %xmm0
	movss	%xmm2, 18392(%esi)
	movss	%xmm1, -40(%ebp)
	movss	%xmm0, -36(%ebp)
	call	__ZN5ImGui12PushStyleVarEiRK6ImVec2
	movl	$791367, %edx
	movl	$LC38, %eax
	call	__ZN5ImGui5BeginEPKcPbi.constprop.0.isra.0
	movl	16088(%esi), %edi
	subl	$1, %edi
	js	L1481
	movl	%ebx, -48(%ebp)
	jmp	L1491
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1482:
	subl	$1, %edi
	jb	L1724
L1491:
	movl	16096(%esi), %eax
	movl	(%eax,%edi,4), %edx
	cmpb	$0, 224(%edx)
	je	L1482
	cmpl	832(%edx), %edx
	jne	L1482
	movl	12(%edx), %ecx
	testl	$524288, %ecx
	jne	L1482
	movl	4(%edx), %ebx
	movl	%ebx, %eax
	cmpl	$-1, %ebx
	je	L1484
	movl	%ecx, -52(%ebp)
	jmp	L1483
	.p2align 4,,10
	.p2align 3
L1487:
	addl	$1, %eax
	cmpl	$-1, %eax
	je	L1485
L1483:
	movzbl	(%eax), %ecx
	testb	%cl, %cl
	je	L1486
	cmpb	$35, %cl
	jne	L1487
	cmpb	$35, 1(%eax)
	jne	L1487
L1486:
	movl	-52(%ebp), %ecx
	cmpl	%eax, %ebx
	je	L1484
L1485:
	leal	-40(%ebp), %eax
	movl	$0x00000000, -40(%ebp)
	movl	$0x00000000, -36(%ebp)
	cmpl	%edx, 19020(%esi)
	movl	%eax, (%esp)
	sete	%dl
	movl	%ebx, %eax
	xorl	%ecx, %ecx
	movzbl	%dl, %edx
	call	__ZN5ImGui10SelectableEPKcbiRK6ImVec2
	subl	$1, %edi
	jnb	L1491
	.p2align 4
	.p2align 3
L1724:
	movl	-48(%ebp), %ebx
L1481:
	call	__ZN5ImGui3EndEv
	call	__ZN5ImGui11PopStyleVarEi.constprop.0
	movl	_GImGui, %esi
L1714:
	movl	-44(%ebp), %eax
	movl	%esi, %edi
	movl	18680(%eax), %edx
	testl	%edx, %edx
	je	L1493
	cmpb	$0, 18765(%esi)
	je	L1493
	movl	18840(%esi), %ecx
	testl	%ecx, %ecx
	je	L1725
	.p2align 4
	.p2align 3
L1493:
	movl	23376(%ebx), %eax
	testl	%eax, %eax
	jle	L1499
	xorl	%esi, %esi
	jmp	L1503
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1501:
	addl	$1, %esi
	cmpl	23376(%ebx), %esi
	jge	L1499
L1503:
	movl	23384(%ebx), %eax
	movl	4(%eax,%esi,8), %edx
	testl	%edx, %edx
	je	L1501
	movl	16048(%ebx), %eax
	cmpl	%eax, 136(%edx)
	jne	L1501
	movzbl	160(%edx), %eax
	testb	$1, %al
	je	L1501
	movl	112(%edx), %ecx
	testl	%ecx, %ecx
	je	L1501
	cmpl	$0, 28(%edx)
	jne	L1501
	testb	$4, %al
	jne	L1501
	movss	14468(%edi), %xmm0
	movss	15516(%edi), %xmm1
	movl	%edx, -48(%ebp)
	movss	60(%edx), %xmm2
	addss	%xmm0, %xmm0
	addss	%xmm0, %xmm1
	movss	64(%edx), %xmm0
	unpcklps	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	unpcklps	%xmm1, %xmm0
	movups	52(%edx), %xmm1
	movlhps	%xmm2, %xmm0
	movlhps	%xmm1, %xmm1
	addps	%xmm1, %xmm0
	movups	%xmm0, -40(%ebp)
	movss	72(%ecx), %xmm4
	movaps	%xmm0, %xmm5
	movaps	%xmm0, %xmm2
	movss	80(%ecx), %xmm6
	movss	68(%ecx), %xmm3
	movaps	%xmm0, %xmm1
	unpckhps	%xmm0, %xmm2
	shufps	$85, %xmm0, %xmm1
	shufps	$255, %xmm0, %xmm0
	addss	%xmm4, %xmm6
	movss	%xmm6, 16(%esp)
	movss	76(%ecx), %xmm6
	movl	%ecx, -44(%ebp)
	addss	%xmm3, %xmm6
	movss	%xmm4, 8(%esp)
	movss	%xmm3, 4(%esp)
	movss	%xmm0, (%esp)
	movaps	%xmm5, %xmm0
	movss	%xmm6, 12(%esp)
	call	__ZN5ImGui30CalcRoundingFlagsForRectInRectERK6ImRectS2_f.constprop.0.isra.0
	movl	-44(%ebp), %ecx
	movl	%eax, %edi
	movl	676(%ecx), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	leal	120(%eax), %ecx
	call	__ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi
	movl	-48(%ebp), %edx
	subl	$8, %esp
	movl	112(%edx), %eax
	movss	124(%eax), %xmm0
	movl	676(%eax), %ecx
	movl	%edi, 12(%esp)
	movl	108(%edx), %eax
	leal	-32(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movl	_GImGui, %edi
	subl	$16, %esp
	jmp	L1501
	.p2align 4,,10
	.p2align 3
L1461:
	call	__ZN5ImGui3EndEv
	cmpl	$1, 16112(%esi)
	jle	L1460
	call	__ZN5ImGui3EndEv
	cmpl	$1, 16112(%esi)
	jg	L1461
	jmp	L1460
	.p2align 4,,10
	.p2align 3
L1733:
	movl	-44(%ebp), %ebx
L1546:
	movl	18616(%edi), %eax
	xorl	%esi, %esi
	movl	(%eax), %eax
	movw	%si, 69(%eax)
	movb	$0, 71(%eax)
	movl	16104(%ebx), %eax
	testl	%eax, %eax
	js	L1726
L1560:
	movl	$0, 16100(%ebx)
	movl	16076(%ebx), %esi
	cmpl	%eax, %esi
	jg	L1727
L1564:
	movl	16084(%ebx), %eax
	testl	%esi, %esi
	je	L1569
	leal	16100(%ebx), %edi
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L1572:
	movl	(%eax,%esi,4), %edx
	cmpb	$0, 223(%edx)
	je	L1570
	testb	$1, 15(%edx)
	jne	L1571
L1570:
	movl	%edi, %eax
	call	__ZL21AddWindowToSortBufferP8ImVectorIP11ImGuiWindowES1_
	movl	16084(%ebx), %eax
L1571:
	addl	$1, %esi
	cmpl	%esi, 16076(%ebx)
	jne	L1572
L1569:
	movl	16080(%ebx), %edx
	movlps	16100(%ebx), %xmm0
	movl	%esi, 16100(%ebx)
	movl	%edx, 16104(%ebx)
	movl	16108(%ebx), %edx
	movl	%eax, 16108(%ebx)
	movl	16136(%ebx), %eax
	movl	%edx, 16084(%ebx)
	movl	%eax, 184(%ebx)
	movl	72(%ebx), %eax
	movlps	%xmm0, 16076(%ebx)
	movb	$0, 16(%eax)
	movl	14252(%ebx), %ecx
	movb	$0, 14240(%ebx)
	movl	$0x00000000, 3548(%ebx)
	movl	$0x00000000, 3544(%ebx)
	testl	%ecx, %ecx
	js	L1728
L1573:
	movl	$0, 14248(%ebx)
	movl	23476(%ebx), %edx
	testl	%edx, %edx
	jle	L1455
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L1578:
	movl	23484(%ebx), %edx
	leal	(%esi,%esi,4), %eax
	leal	(%edx,%eax,4), %eax
	cmpl	$3, 4(%eax)
	jne	L1577
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	*12(%eax)
L1577:
	addl	$1, %esi
	cmpl	23476(%ebx), %esi
	jl	L1578
L1455:
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
L1499:
	.cfi_restore_state
	movl	18624(%edi), %eax
	testl	%eax, %eax
	je	L1504
	movl	$0x3f800000, 18620(%edi)
	movl	$0, 18624(%edi)
L1504:
	movl	16048(%ebx), %esi
	cmpb	$0, 19068(%ebx)
	je	L1505
	movl	19100(%ebx), %eax
	addl	$1, %eax
	cmpl	%esi, %eax
	jge	L1506
	testb	$32, 19072(%ebx)
	jne	L1507
	movl	19080(%ebx), %eax
	cmpb	$0, 3536(%edi,%eax)
	je	L1507
	addl	$641, %eax
	xorl	%edx, %edx
	call	__ZN5ImGui12TestKeyOwnerE8ImGuiKeyj
	testb	%al, %al
	je	L1507
	.p2align 4
	.p2align 3
L1506:
	cmpb	$0, 19138(%ebx)
	je	L1508
L1507:
	call	__ZN5ImGui13ClearDragDropEv
	movl	16048(%ebx), %esi
	cmpb	$0, 19068(%ebx)
	je	L1715
L1508:
	cmpl	%esi, 19076(%ebx)
	jge	L1715
	testb	$1, 19072(%ebx)
	jne	L1715
	movb	$1, 19069(%ebx)
	movl	$LC46, (%esp)
	call	__ZN5ImGui10SetTooltipEPKcz.constprop.0
	movb	$0, 19069(%ebx)
	movl	16048(%ebx), %esi
	.p2align 4
	.p2align 3
L1715:
	movl	_GImGui, %edi
L1505:
	movb	$0, 16064(%ebx)
	movl	%esi, 16052(%ebx)
	movl	16224(%edi), %eax
	testl	%eax, %eax
	jne	L1512
	movl	16204(%edi), %eax
	testl	%eax, %eax
	jne	L1512
	movl	18680(%edi), %eax
	testl	%eax, %eax
	je	L1514
	cmpb	$0, 229(%eax)
	jne	L1512
	cmpb	$0, 14088(%edi)
	je	L1515
	movl	16152(%edi), %eax
	movl	%eax, -44(%ebp)
	testl	%eax, %eax
	je	L1517
	movl	-44(%ebp), %eax
	movl	832(%eax), %esi
	testl	%esi, %esi
	je	L1517
L1586:
	testb	$4, 15(%esi)
	je	L1519
	movl	18580(%edi), %ecx
	testl	%ecx, %ecx
	jle	L1515
	movl	248(%esi), %eax
	movl	%esi, -52(%ebp)
	xorl	%edx, %edx
	movl	%eax, -48(%ebp)
	movl	18588(%edi), %eax
	movl	-48(%ebp), %esi
	jmp	L1522
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1729:
	addl	$1, %edx
	addl	$40, %eax
	cmpl	%ecx, %edx
	je	L1515
L1522:
	cmpl	(%eax), %esi
	jne	L1729
	movl	-52(%ebp), %esi
L1519:
	movl	-44(%ebp), %eax
	call	__ZN5ImGui22StartMouseMovingWindowEP11ImGuiWindow
	cmpb	$0, 111(%edi)
	je	L1523
	testb	$1, 12(%esi)
	jne	L1524
	movl	(%esi), %eax
	movl	824(%esi), %edx
	movss	72(%esi), %xmm2
	movss	15520(%eax), %xmm1
	mulss	664(%esi), %xmm1
	mulss	668(%esi), %xmm1
	testl	%edx, %edx
	je	L1526
	mulss	664(%edx), %xmm1
L1526:
	movss	14468(%eax), %xmm0
	addss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
L1527:
	movss	68(%esi), %xmm1
	movss	14008(%edi), %xmm3
	comiss	%xmm1, %xmm3
	jb	L1528
	movss	14012(%edi), %xmm4
	comiss	%xmm2, %xmm4
	jb	L1528
	addss	84(%esi), %xmm1
	comiss	%xmm3, %xmm1
	jbe	L1528
	addss	%xmm2, %xmm0
	comiss	%xmm4, %xmm0
	ja	L1523
L1528:
	movl	$0, 16160(%edi)
L1523:
	cmpb	$0, 16213(%edi)
	je	L1716
	movl	$0, 16160(%edi)
	movl	_GImGui, %ecx
	jmp	L1521
	.p2align 4,,10
	.p2align 3
L1514:
	cmpb	$0, 14088(%edi)
	jne	L1730
L1515:
	movl	%edi, %ecx
L1521:
	cmpb	$0, 14089(%edi)
	je	L1600
	movl	18580(%ecx), %eax
	movl	%eax, %edx
	subl	$1, %edx
	js	L1537
	movl	16152(%edi), %edi
	movl	%edi, -44(%ebp)
L1588:
	movl	18588(%ecx), %ecx
	leal	(%eax,%eax,4), %eax
	leal	-36(%ecx,%eax,8), %eax
	.p2align 4
	.p2align 3
L1540:
	movl	(%eax), %esi
	testl	%esi, %esi
	je	L1538
	testb	$8, 15(%esi)
	jne	L1539
L1538:
	subl	$1, %edx
	subl	$40, %eax
	cmpl	$-1, %edx
	jne	L1540
	movl	-44(%ebp), %eax
L1542:
	movl	$1, %edx
	call	__ZN5ImGui21ClosePopupsOverWindowEP11ImGuiWindowb
	movl	_GImGui, %edi
	.p2align 4
	.p2align 3
L1512:
	movl	14372(%edi), %eax
	testl	%eax, %eax
	js	L1731
L1543:
	movl	$0, 14368(%edi)
	movl	18608(%edi), %eax
	testl	%eax, %eax
	jle	L1546
	movl	%ebx, -44(%ebp)
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	jmp	L1559
	.p2align 4,,10
	.p2align 3
L1734:
	comiss	16(%ebx), %xmm0
	jnb	L1547
	comiss	20(%ebx), %xmm0
	jnb	L1547
L1548:
	movl	108(%ebx), %eax
	testl	%eax, %eax
	je	L1551
	cmpb	$0, 223(%eax)
	je	L1550
	cmpb	$0, 230(%eax)
	jne	L1550
L1551:
	movl	14368(%edi), %edx
	cmpl	14372(%edi), %edx
	je	L1732
L1552:
	movl	14376(%edi), %ecx
L1555:
	movl	%ebx, (%ecx,%edx,4)
	addl	$1, 14368(%edi)
L1550:
	addl	$1, %esi
	cmpl	18608(%edi), %esi
	jge	L1733
L1559:
	movl	18616(%edi), %eax
	movl	(%eax,%esi,4), %ebx
	movl	8(%ebx), %eax
	movl	12(%ebx), %edx
	movl	%eax, 88(%ebx)
	movl	%edx, 92(%ebx)
	movl	16048(%edi), %eax
	cmpl	%eax, 76(%ebx)
	jge	L1734
L1547:
	testl	%esi, %esi
	je	L1548
	jmp	L1550
	.p2align 4,,10
	.p2align 3
L1731:
	addl	$1, 188(%edi)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %esi
	movl	14376(%edi), %eax
	testl	%eax, %eax
	je	L1544
	movl	14368(%edi), %ecx
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	leal	0(,%ecx,4), %edx
	movl	%edx, 8(%esp)
	call	_memcpy
	movl	14376(%edi), %eax
	testl	%eax, %eax
	je	L1545
	subl	$1, 188(%edi)
L1545:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1544:
	movl	%esi, 14376(%edi)
	movl	$0, 14372(%edi)
	jmp	L1543
	.p2align 4,,10
	.p2align 3
L1728:
	movl	_GImGui, %esi
	testl	%esi, %esi
	je	L1574
	addl	$1, 188(%esi)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %edi
	movl	14256(%ebx), %eax
	testl	%eax, %eax
	je	L1575
	movl	14248(%ebx), %ecx
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	leal	(%ecx,%ecx), %edx
	movl	%edx, 8(%esp)
	call	_memcpy
	movl	14256(%ebx), %eax
	testl	%eax, %eax
	je	L1579
	subl	$1, 188(%esi)
L1579:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1575:
	movl	%edi, 14256(%ebx)
	movl	$0, 14252(%ebx)
	jmp	L1573
	.p2align 4,,10
	.p2align 3
L1726:
	movl	_GImGui, %esi
	testl	%esi, %esi
	je	L1561
	addl	$1, 188(%esi)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %edi
	movl	16108(%ebx), %eax
	testl	%eax, %eax
	je	L1562
	movl	16100(%ebx), %ecx
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	leal	0(,%ecx,4), %edx
	movl	%edx, 8(%esp)
	call	_memcpy
	movl	16108(%ebx), %eax
	testl	%eax, %eax
	je	L1582
	subl	$1, 188(%esi)
L1582:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1562:
	movl	%edi, 16108(%ebx)
	xorl	%eax, %eax
	movl	$0, 16104(%ebx)
	jmp	L1560
	.p2align 4,,10
	.p2align 3
L1727:
	movl	_GImGui, %edx
	leal	0(,%esi,4), %eax
	testl	%edx, %edx
	je	L1565
	addl	$1, 188(%edx)
	movl	%edx, -44(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %edi
	movl	16108(%ebx), %eax
	testl	%eax, %eax
	je	L1717
	movl	16100(%ebx), %ecx
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	sall	$2, %ecx
	movl	%ecx, 8(%esp)
	call	_memcpy
	movl	16108(%ebx), %eax
	testl	%eax, %eax
	je	L1581
	movl	-44(%ebp), %edx
	subl	$1, 188(%edx)
L1581:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1717:
	movl	16076(%ebx), %eax
L1567:
	movl	%esi, 16104(%ebx)
	movl	%eax, %esi
	movl	%edi, 16108(%ebx)
	jmp	L1564
	.p2align 4,,10
	.p2align 3
L1732:
	leal	1(%edx), %ecx
	testl	%edx, %edx
	jne	L1553
	movl	$8, %eax
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%eax, -48(%ebp)
L1554:
	movl	-48(%ebp), %eax
	movl	_GImGui, %ecx
	sall	$2, %eax
	testl	%ecx, %ecx
	je	L1556
	addl	$1, 188(%ecx)
	movl	%ecx, -52(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	14368(%edi), %edx
	xorps	%xmm0, %xmm0
	movl	%eax, %ecx
	movl	14376(%edi), %eax
	testl	%eax, %eax
	je	L1557
	sall	$2, %edx
	movl	%ecx, (%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, -56(%ebp)
	call	_memcpy
	movl	14376(%edi), %eax
	movl	-56(%ebp), %ecx
	testl	%eax, %eax
	je	L1584
	movl	-52(%ebp), %edx
	subl	$1, 188(%edx)
L1584:
	movl	%ecx, -52(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	14368(%edi), %edx
	movl	-52(%ebp), %ecx
	xorps	%xmm0, %xmm0
L1557:
	movl	-48(%ebp), %eax
	movl	%ecx, 14376(%edi)
	movl	%eax, 14372(%edi)
	jmp	L1555
	.p2align 4,,10
	.p2align 3
L1553:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	cmpl	%ecx, %eax
	cmovge	%eax, %ecx
	movl	%ecx, -48(%ebp)
	cmpl	%ecx, %edx
	jge	L1552
	jmp	L1554
	.p2align 4,,10
	.p2align 3
L1725:
	movl	18928(%esi), %edx
	testl	%edx, %edx
	jne	L1493
	movl	18768(%eax), %eax
	testb	$15, %al
	je	L1493
	testb	$-128, %al
	jne	L1493
	movl	18732(%esi), %eax
	movl	18780(%esi), %edx
	movl	18680(%esi), %ecx
	addl	$54, %eax
	movl	%edx, -44(%ebp)
	movl	18768(%esi), %edx
	sall	$4, %eax
	addl	%ecx, %eax
	movl	%edx, -48(%ebp)
	movss	4(%eax), %xmm2
	movss	12(%eax), %xmm3
	cmpl	$0, -44(%ebp)
	jne	L1495
	testb	$5, %dl
	je	L1493
	movss	92(%ecx), %xmm0
	addss	116(%ecx), %xmm0
	andl	$4, %edx
	movl	%edx, -44(%ebp)
	movaps	%xmm0, %xmm1
	je	L1496
	movaps	%xmm3, %xmm4
	movl	$2, -44(%ebp)
	subss	%xmm2, %xmm4
	subss	%xmm4, %xmm2
	subss	%xmm4, %xmm3
L1496:
	unpcklps	%xmm3, %xmm1
	unpcklps	%xmm2, %xmm0
	xorl	%edx, %edx
	movl	%esi, %edi
	movlhps	%xmm1, %xmm0
	movups	%xmm0, (%eax)
	movzbl	18741(%esi), %eax
	movw	%dx, 18764(%esi)
	movb	%al, 18740(%esi)
	movl	-44(%ebp), %eax
	movb	$1, 18766(%esi)
	movl	%eax, 18788(%esi)
	movl	-48(%ebp), %eax
	orb	$-128, %al
	movl	%eax, 18768(%esi)
	jmp	L1493
	.p2align 4,,10
	.p2align 3
L1556:
	movl	%edx, -52(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-52(%ebp), %edx
	xorps	%xmm0, %xmm0
	movl	%eax, %ecx
	movl	14376(%edi), %eax
	testl	%eax, %eax
	je	L1557
	sall	$2, %edx
	movl	%ecx, (%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, -52(%ebp)
	call	_memcpy
	movl	14376(%edi), %eax
	movl	-52(%ebp), %ecx
	jmp	L1584
	.p2align 4,,10
	.p2align 3
L1723:
	movl	$-1, %edx
	movl	$35, %eax
	movl	$LC38+1, %ecx
	jmp	L1480
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1479:
	movl	%edx, %edi
	movzbl	%dl, %edx
	shrl	$8, %edi
L1478:
	xorl	%edx, %eax
	addl	$1, %ecx
	xorl	__ZL17GCrc32LookupTable.lto_priv.0(,%eax,4), %edi
	movzbl	-1(%ecx), %eax
	movl	%edi, %edx
	cmpl	$LC38+20, %ecx
	je	L1735
L1480:
	cmpb	$35, %al
	jne	L1479
	cmpb	$35, (%ecx)
	jne	L1479
	cmpb	$35, 1(%ecx)
	jne	L1479
	movl	$255, %edx
	movl	$16777215, %edi
	jmp	L1478
	.p2align 4,,10
	.p2align 3
L1719:
	movl	-44(%ebp), %eax
	movl	23356(%ebx), %ecx
	cmpl	%ecx, 4(%eax)
	jne	L1463
	movl	23360(%ebx), %ecx
	cmpl	%ecx, 8(%eax)
	jne	L1463
	movl	23364(%ebx), %ecx
	cmpl	%ecx, 12(%eax)
	jne	L1463
	jmp	L1462
	.p2align 4,,10
	.p2align 3
L1720:
	movl	-48(%ebp), %esi
	testb	$32, 23576(%ebx)
	jne	L1591
L1469:
	movl	18616(%esi), %eax
	movl	(%eax), %edi
	jmp	L1470
	.p2align 4,,10
	.p2align 3
L1600:
	movl	%ecx, %edi
	movl	14372(%edi), %eax
	testl	%eax, %eax
	jns	L1543
	jmp	L1731
	.p2align 4,,10
	.p2align 3
L1561:
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %edi
	movl	16108(%ebx), %eax
	testl	%eax, %eax
	je	L1562
	movl	16100(%ebx), %ecx
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	leal	0(,%ecx,4), %edx
	movl	%edx, 8(%esp)
	call	_memcpy
	movl	16108(%ebx), %eax
	jmp	L1582
	.p2align 4,,10
	.p2align 3
L1574:
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %edi
	movl	14256(%ebx), %eax
	testl	%eax, %eax
	je	L1575
	movl	14248(%ebx), %ecx
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	leal	(%ecx,%ecx), %edx
	movl	%edx, 8(%esp)
	call	_memcpy
	movl	14256(%ebx), %eax
	jmp	L1579
	.p2align 4,,10
	.p2align 3
L1565:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %edi
	movl	16108(%ebx), %eax
	testl	%eax, %eax
	jne	L1581
	movl	%esi, %eax
	jmp	L1567
L1465:
	testb	$32, 23576(%ebx)
	je	L1469
L1591:
	xorl	%edi, %edi
L1590:
	flds	23344(%ebx)
	fstpl	16(%esp)
	flds	23340(%ebx)
	fstpl	8(%esp)
	movzbl	23336(%ebx), %eax
	movl	$LC41, (%esp)
	movl	%eax, 4(%esp)
	call	__ZN5ImGui8DebugLogEPKcz
	testl	%edi, %edi
	jne	L1470
	movl	_GImGui, %esi
	jmp	L1469
	.p2align 4,,10
	.p2align 3
L1593:
	movl	%ebx, %esi
	jmp	L1457
	.p2align 4,,10
	.p2align 3
L1735:
	notl	%edx
	leal	16124(%esi), %ecx
	movl	%edx, (%esp)
	call	__ZNK12ImGuiStorage10GetVoidPtrEj
	subl	$4, %esp
	movl	%eax, 19028(%esi)
	jmp	L1476
	.p2align 4,,10
	.p2align 3
L1722:
	movl	156(%ebx), %eax
	testl	%eax, %eax
	je	L1471
	movl	%eax, 64(%edi)
	movl	-44(%ebp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	*152(%ebx)
	movl	$0, 64(%edi)
	jmp	L1462
L1730:
	movl	16152(%edi), %eax
	movl	%eax, -44(%ebp)
	testl	%eax, %eax
	je	L1515
	movl	-44(%ebp), %eax
	movl	832(%eax), %esi
	testl	%esi, %esi
	jne	L1586
	jmp	L1515
	.p2align 4,,10
	.p2align 3
L1484:
	testl	$67108864, %ecx
	je	L1489
	movl	_GImGui, %eax
	movl	23512(%eax), %ebx
	movl	$LC39, %eax
	testl	%ebx, %ebx
	cmove	%eax, %ebx
	jmp	L1485
L1517:
	movl	18580(%edi), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	js	L1533
	movl	18588(%edi), %edx
	leal	(%eax,%eax,4), %esi
	leal	-36(%edx,%esi,8), %edx
	.p2align 4
	.p2align 3
L1536:
	movl	(%edx), %esi
	testl	%esi, %esi
	je	L1534
	testb	$8, 15(%esi)
	jne	L1535
L1534:
	subl	$1, %ecx
	subl	$40, %edx
	cmpl	$-1, %ecx
	jne	L1536
L1533:
	xorl	%eax, %eax
	call	__ZN5ImGui11FocusWindowEP11ImGuiWindow
L1716:
	movl	_GImGui, %ecx
	jmp	L1521
L1539:
	movl	-44(%ebp), %eax
	testl	%eax, %eax
	je	L1736
	movl	-44(%ebp), %eax
	movl	%esi, %edx
	call	__ZN5ImGui13IsWindowAboveEP11ImGuiWindowS1_
	testb	%al, %al
	movl	-44(%ebp), %eax
	cmove	%esi, %eax
	jmp	L1542
L1489:
	andb	$4, %ch
	je	L1490
	movl	%edx, -52(%ebp)
	movl	$LC44, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcmp
	movl	-52(%ebp), %edx
	testl	%eax, %eax
	jne	L1490
	movl	_GImGui, %eax
	movl	23508(%eax), %ebx
	movl	$LC39, %eax
	testl	%ebx, %ebx
	cmove	%eax, %ebx
	jmp	L1485
L1495:
	cmpl	$1, -44(%ebp)
	je	L1737
	movss	(%eax), %xmm0
	movss	8(%eax), %xmm1
	cmpl	$2, -44(%ebp)
	je	L1738
	cmpl	$3, -44(%ebp)
	jne	L1493
	movl	-48(%ebp), %edx
	testb	$10, %dl
	je	L1493
	movss	120(%ecx), %xmm2
	xorps	LC45, %xmm2
	andl	$8, %edx
	movaps	%xmm2, %xmm3
	je	L1496
	movaps	%xmm1, %xmm4
	movl	$1, -44(%ebp)
	subss	%xmm0, %xmm4
	addss	%xmm4, %xmm0
	addss	%xmm4, %xmm1
	jmp	L1496
L1490:
	movl	940(%edx), %ecx
	movl	$LC40, %ebx
	testl	%ecx, %ecx
	jne	L1485
	movl	_GImGui, %eax
	movl	23516(%eax), %ebx
	movl	$LC39, %eax
	testl	%ebx, %ebx
	cmove	%eax, %ebx
	jmp	L1485
L1736:
	movl	%esi, %eax
	jmp	L1542
L1535:
	cmpb	$0, 14089(%edi)
	je	L1512
	leal	-1(%eax), %edx
	movl	%edi, %ecx
	jmp	L1588
L1738:
	movl	-48(%ebp), %edx
	testb	$10, %dl
	je	L1493
	movss	96(%ecx), %xmm2
	addss	120(%ecx), %xmm2
	andl	$8, %edx
	movaps	%xmm2, %xmm3
	je	L1496
	movaps	%xmm1, %xmm4
	movl	$0, -44(%ebp)
	subss	%xmm0, %xmm4
	subss	%xmm4, %xmm0
	subss	%xmm4, %xmm1
	jmp	L1496
L1524:
	testb	$1, 909(%esi)
	je	L1523
	movss	72(%esi), %xmm2
	xorps	%xmm0, %xmm0
	jmp	L1527
L1737:
	movl	-48(%ebp), %edx
	testb	$5, %dl
	je	L1493
	movss	116(%ecx), %xmm0
	xorps	LC45, %xmm0
	andl	$4, %edx
	movaps	%xmm0, %xmm1
	je	L1496
	movaps	%xmm3, %xmm1
	movl	$3, -44(%ebp)
	subss	%xmm2, %xmm1
	addss	%xmm1, %xmm2
	addss	%xmm1, %xmm3
	movaps	%xmm0, %xmm1
	jmp	L1496
L1537:
	movl	16152(%edi), %eax
	jmp	L1542
	.cfi_endproc
LFE131:
	.p2align 4
	.globl	__ZN5ImGui12CalcTextSizeEPKcS1_bf
	.def	__ZN5ImGui12CalcTextSizeEPKcS1_bf;	.scl	2;	.type	32;	.endef
__ZN5ImGui12CalcTextSizeEPKcS1_bf:
LFB162:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movaps	%xmm0, %xmm2
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%edx, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 28
	testb	%cl, %cl
	movl	_GImGui, %ecx
	je	L1740
	testl	%edx, %edx
	je	L1762
	cmpl	%edx, %eax
	jnb	L1746
L1744:
	movl	%esi, %eax
	jmp	L1743
	.p2align 4,,10
	.p2align 3
L1748:
	addl	$1, %eax
	cmpl	%ebx, %eax
	jnb	L1747
L1743:
	movzbl	(%eax), %edx
	testb	%dl, %dl
	je	L1747
	cmpb	$35, %dl
	jne	L1748
	cmpb	$35, 1(%eax)
	jne	L1748
	.p2align 4
	.p2align 3
L1747:
	movl	%eax, %ebx
L1740:
	movss	15516(%ecx), %xmm0
	cmpl	%esi, %ebx
	je	L1745
	movss	LC28, %xmm1
	movl	15512(%ecx), %ecx
	movl	%ebx, 4(%esp)
	movl	%esi, (%esp)
	movl	$0, 8(%esp)
	call	__ZNK6ImFont13CalcTextSizeAEfffPKcS1_PS1_
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, 12(%esp)
	movss	12(%esp), %xmm0
	addss	LC47, %xmm0
	cvttss2sil	%xmm0, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, 12(%esp)
	movl	12(%esp), %eax
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
L1762:
	.cfi_restore_state
	movl	$-1, %ebx
	cmpl	$-1, %eax
	jne	L1744
L1746:
	movss	15516(%ecx), %xmm0
L1745:
	movss	%xmm0, 12(%esp)
	movl	12(%esp), %edx
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
LFE162:
	.p2align 4
	.globl	__ZN5ImGui19RenderTextClippedExEP10ImDrawListRK6ImVec2S4_PKcS6_PS3_S4_PK6ImRect
	.def	__ZN5ImGui19RenderTextClippedExEP10ImDrawListRK6ImVec2S4_PKcS6_PS3_S4_PK6ImRect;	.scl	2;	.type	32;	.endef
__ZN5ImGui19RenderTextClippedExEP10ImDrawListRK6ImVec2S4_PKcS6_PS3_S4_PK6ImRect:
LFB163:
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
	subl	$84, %esp
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	(%edi), %ebx
	movl	8(%edi), %ecx
	movl	%eax, -68(%ebp)
	movl	%edx, %eax
	movl	12(%edi), %edx
	movss	(%eax), %xmm3
	movss	(%ecx), %xmm5
	movl	%ebx, -64(%ebp)
	movss	4(%ecx), %xmm7
	movl	4(%edi), %ebx
	movl	16(%edi), %edi
	movaps	%xmm3, %xmm0
	movss	4(%eax), %xmm4
	addss	%xmm5, %xmm0
	movss	4(%edx), %xmm6
	movss	(%edx), %xmm2
	movss	%xmm7, -60(%ebp)
	testl	%edi, %edi
	je	L1801
	movss	8(%edi), %xmm1
	movl	%edi, %eax
	leal	8(%edi), %ecx
	movl	$1, %edx
	comiss	%xmm1, %xmm0
	jb	L1802
	movss	(%edi), %xmm0
	comiss	%xmm3, %xmm0
	jbe	L1803
L1768:
	xorps	%xmm7, %xmm7
	comiss	%xmm7, %xmm2
	jbe	L1797
	movss	(%esi), %xmm0
	movl	$1, %edx
L1772:
	subss	%xmm3, %xmm0
	subss	%xmm5, %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm3, %xmm0
	movaps	%xmm0, %xmm2
	cmpnless	%xmm3, %xmm2
	andps	%xmm2, %xmm0
	andnps	%xmm3, %xmm2
	orps	%xmm0, %xmm2
	movaps	%xmm2, %xmm3
L1777:
	xorps	%xmm0, %xmm0
	comiss	%xmm0, %xmm6
	jbe	L1781
	movss	4(%esi), %xmm0
	subss	%xmm4, %xmm0
	subss	-60(%ebp), %xmm0
	mulss	%xmm6, %xmm0
	addss	%xmm4, %xmm0
	movaps	%xmm0, %xmm2
	cmpnless	%xmm4, %xmm2
	andps	%xmm2, %xmm0
	andnps	%xmm4, %xmm2
	orps	%xmm0, %xmm2
	movaps	%xmm2, %xmm4
L1781:
	testb	%dl, %dl
	jne	L1776
	movl	_GImGui, %eax
	leal	-40(%ebp), %esi
	movl	14624(%eax), %edx
	movss	14404(%eax), %xmm0
	mulss	14636(%eax), %xmm0
	movl	%edx, -40(%ebp)
	movl	14628(%eax), %edx
	movl	%edx, -36(%ebp)
	movl	14632(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	%esi, %eax
	movss	%xmm0, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movss	%xmm3, -40(%ebp)
	movss	%xmm4, -36(%ebp)
	movl	$0, 20(%esp)
L1800:
	movl	%ebx, 16(%esp)
	movl	-64(%ebp), %ebx
	xorps	%xmm1, %xmm1
	movl	%esi, 4(%esp)
	movaps	%xmm1, %xmm0
	movl	%ebx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, (%esp)
	movl	-68(%ebp), %ecx
	call	__ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4
	subl	$24, %esp
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
L1803:
	.cfi_restore_state
	movss	4(%edi), %xmm7
	comiss	%xmm4, %xmm7
	ja	L1768
	xorps	%xmm0, %xmm0
	comiss	%xmm0, %xmm2
	jbe	L1777
L1806:
	movss	(%esi), %xmm0
	jmp	L1772
	.p2align 4,,10
	.p2align 3
L1802:
	movss	-60(%ebp), %xmm0
	addss	%xmm4, %xmm0
	comiss	12(%edi), %xmm0
	movss	(%edi), %xmm0
	setnb	%dl
	comiss	%xmm3, %xmm0
	ja	L1768
	jmp	L1803
	.p2align 4,,10
	.p2align 3
L1797:
	xorps	%xmm7, %xmm7
	movss	4(%edi), %xmm2
	comiss	%xmm7, %xmm6
	jbe	L1773
	movss	4(%esi), %xmm5
	subss	%xmm4, %xmm5
	subss	-60(%ebp), %xmm5
	mulss	%xmm6, %xmm5
	addss	%xmm4, %xmm5
	movaps	%xmm5, %xmm6
	cmpless	%xmm4, %xmm6
	andps	%xmm6, %xmm4
	andnps	%xmm5, %xmm6
	orps	%xmm6, %xmm4
L1773:
	movl	_GImGui, %eax
	movss	4(%ecx), %xmm5
	unpcklps	%xmm2, %xmm0
	leal	-40(%ebp), %esi
	movl	14624(%eax), %edx
	unpcklps	%xmm5, %xmm1
	movlhps	%xmm1, %xmm0
	movups	%xmm0, -56(%ebp)
	movss	14636(%eax), %xmm0
	mulss	14404(%eax), %xmm0
	movl	%edx, -40(%ebp)
	movl	14628(%eax), %edx
	movl	%edx, -36(%ebp)
	movl	14632(%eax), %edx
	movl	%esi, %eax
	movl	%edx, -32(%ebp)
	movss	%xmm0, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	leal	-56(%ebp), %edx
	movss	%xmm3, -40(%ebp)
	movss	%xmm4, -36(%ebp)
	movl	%edx, 20(%esp)
	jmp	L1800
	.p2align 4,,10
	.p2align 3
L1801:
	movss	(%esi), %xmm1
	comiss	%xmm1, %xmm0
	jb	L1804
	xorps	%xmm0, %xmm0
	comiss	%xmm0, %xmm2
	jbe	L1805
	movaps	%xmm1, %xmm0
	movl	%esi, %ecx
	movl	$1, %edx
	jmp	L1772
	.p2align 4,,10
	.p2align 3
L1805:
	comiss	%xmm0, %xmm6
	jbe	L1798
	movss	4(%esi), %xmm0
	movl	%esi, %ecx
	subss	%xmm4, %xmm0
	subss	-60(%ebp), %xmm0
	mulss	%xmm6, %xmm0
	addss	%xmm4, %xmm0
	movaps	%xmm0, %xmm2
	cmpless	%xmm4, %xmm2
	andps	%xmm2, %xmm4
	andnps	%xmm0, %xmm2
	orps	%xmm2, %xmm4
	.p2align 4
	.p2align 3
L1776:
	movss	4(%eax), %xmm2
	movss	(%eax), %xmm0
	jmp	L1773
	.p2align 4,,10
	.p2align 3
L1804:
	addss	%xmm4, %xmm7
	comiss	4(%esi), %xmm7
	xorps	%xmm0, %xmm0
	movl	%esi, %ecx
	setnb	%dl
	comiss	%xmm0, %xmm2
	ja	L1806
	jmp	L1777
	.p2align 4,,10
	.p2align 3
L1798:
	movaps	%xmm3, %xmm0
	movaps	%xmm4, %xmm2
	movl	%esi, %ecx
	jmp	L1773
	.cfi_endproc
LFE163:
	.p2align 4
	.globl	__ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.constprop.0
	.def	__ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.constprop.0;	.scl	2;	.type	32;	.endef
__ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.constprop.0:
LFB165:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	%edi, 36(%esp)
	.cfi_offset 7, -12
	movl	%edx, %edi
	movl	48(%esp), %edx
	movl	%edx, 20(%esp)
	movl	52(%esp), %edx
	movl	%edx, 24(%esp)
	movl	56(%esp), %edx
	cmpl	$-1, %ecx
	je	L1807
	movl	%ebx, 28(%esp)
	.cfi_offset 3, -20
	movl	%ecx, %ebx
	movl	%esi, 32(%esp)
	.cfi_offset 6, -16
	movl	%ecx, %esi
	jmp	L1808
	.p2align 4,,10
	.p2align 3
L1812:
	addl	$1, %ebx
	cmpl	$-1, %ebx
	je	L1810
L1808:
	movzbl	(%ebx), %ecx
	testb	%cl, %cl
	je	L1811
	cmpb	$35, %cl
	jne	L1812
	cmpb	$35, 1(%ebx)
	jne	L1812
L1811:
	cmpl	%ebx, %esi
	je	L1825
L1810:
	movl	%ebp, 40(%esp)
	.cfi_offset 5, -8
	movl	_GImGui, %ebp
	movl	%edi, %ecx
	movl	%eax, %edi
	movl	16148(%ebp), %eax
	movl	676(%eax), %eax
	movl	%edx, 16(%esp)
	movl	24(%esp), %edx
	movl	%ebx, 4(%esp)
	movl	%esi, (%esp)
	movl	%edx, 12(%esp)
	movl	20(%esp), %edx
	movl	%edx, 8(%esp)
	movl	%edi, %edx
	call	__ZN5ImGui19RenderTextClippedExEP10ImDrawListRK6ImVec2S4_PKcS6_PS3_S4_PK6ImRect
	cmpb	$0, 23524(%ebp)
	jne	L1827
	movl	28(%esp), %ebx
	.cfi_restore 3
	movl	32(%esp), %esi
	.cfi_restore 6
	movl	40(%esp), %ebp
	.cfi_restore 5
L1807:
	movl	36(%esp), %edi
	addl	$44, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1825:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	28(%esp), %ebx
	.cfi_restore 3
	movl	32(%esp), %esi
	.cfi_restore 6
	movl	36(%esp), %edi
	addl	$44, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1827:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	40(%esp), %ebp
	.cfi_restore 5
	movl	%ebx, %ecx
	movl	%esi, %edx
	movl	28(%esp), %ebx
	.cfi_restore 3
	movl	32(%esp), %esi
	.cfi_restore 6
	movl	%edi, %eax
	movl	36(%esp), %edi
	addl	$44, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	__ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_
	.cfi_endproc
LFE165:
	.p2align 4
	.globl	__ZL19ApplyWindowSettingsP11ImGuiWindowP19ImGuiWindowSettings.lto_priv.0
	.def	__ZL19ApplyWindowSettingsP11ImGuiWindowP19ImGuiWindowSettings.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL19ApplyWindowSettingsP11ImGuiWindowP19ImGuiWindowSettings.lto_priv.0:
LFB166:
	.cfi_startproc
	movl	_GImGui, %ecx
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	18616(%ecx), %ecx
	movl	(%ecx), %ecx
	movl	12(%ecx), %ebx
	movl	8(%ecx), %ecx
	movl	%ebx, 60(%eax)
	movl	%ecx, 56(%eax)
	movl	16(%edx), %ecx
	testl	%ecx, %ecx
	jne	L1829
	movss	60(%eax), %xmm2
	movss	56(%eax), %xmm1
L1830:
	movswl	6(%edx), %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	addss	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	cvttss2sil	%xmm0, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm2
	movswl	4(%edx), %ecx
	cvtsi2ssl	%ecx, %xmm0
	movss	%xmm2, 72(%eax)
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	movss	%xmm0, 68(%eax)
	movswl	8(%edx), %ecx
	testw	%cx, %cx
	jle	L1831
	movswl	10(%edx), %ebx
	testw	%bx, %bx
	jle	L1831
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	movss	%xmm0, 84(%eax)
	xorps	%xmm0, %xmm0
	movl	84(%eax), %ecx
	cvtsi2ssl	%ebx, %xmm0
	movl	%ecx, 76(%eax)
	movss	%xmm0, 88(%eax)
	movl	88(%eax), %ebx
	movl	%ebx, 80(%eax)
L1831:
	movzbl	30(%edx), %ecx
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	movb	%cl, 226(%eax)
	movl	20(%edx), %ecx
	movl	%ecx, 944(%eax)
	movzwl	28(%edx), %edx
	movw	%dx, 910(%eax)
	ret
	.p2align 4,,10
	.p2align 3
L1829:
	.cfi_restore_state
	movl	%ecx, 52(%eax)
	movswl	14(%edx), %ecx
	xorps	%xmm2, %xmm2
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm2
	movswl	12(%edx), %ecx
	cvtsi2ssl	%ecx, %xmm1
	movss	%xmm2, 60(%eax)
	movss	%xmm1, 56(%eax)
	jmp	L1830
	.cfi_endproc
LFE166:
	.p2align 4
	.globl	__ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2.isra.0
	.def	__ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2.isra.0;	.scl	2;	.type	32;	.endef
__ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2.isra.0:
LFB168:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movl	_GImGui, %edx
	testb	$16, 18372(%edx)
	je	L1834
	movss	18436(%edx), %xmm3
	xorps	%xmm4, %xmm4
	movss	18440(%edx), %xmm2
	comiss	%xmm4, %xmm3
	jb	L1835
	movss	18444(%edx), %xmm5
	comiss	%xmm4, %xmm5
	jb	L1835
	comiss	%xmm0, %xmm3
	ja	L1838
	minss	%xmm0, %xmm5
	movaps	%xmm5, %xmm3
	jmp	L1838
	.p2align 4,,10
	.p2align 3
L1835:
	movss	84(%eax), %xmm3
L1838:
	xorps	%xmm0, %xmm0
	comiss	%xmm0, %xmm2
	jb	L1841
	movss	18448(%edx), %xmm4
	comiss	%xmm0, %xmm4
	jnb	L1890
L1841:
	movss	88(%eax), %xmm2
L1844:
	movl	18452(%edx), %ecx
	testl	%ecx, %ecx
	je	L1847
	movl	%ebx, 40(%esp)
	movl	%esi, 44(%esp)
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	18456(%edx), %ebx
	movl	72(%eax), %esi
	movl	%edx, 8(%esp)
	movl	%ebx, 12(%esp)
	movl	68(%eax), %ebx
	movl	%esi, 20(%esp)
	movl	88(%eax), %esi
	movl	%ebx, 16(%esp)
	movl	84(%eax), %ebx
	movl	%eax, 4(%esp)
	movl	%ebx, 24(%esp)
	leal	12(%esp), %ebx
	movl	%esi, 28(%esp)
	movl	%ebx, (%esp)
	movss	%xmm3, 32(%esp)
	movss	%xmm2, 36(%esp)
	call	*%ecx
	movss	32(%esp), %xmm3
	movss	36(%esp), %xmm2
	movl	8(%esp), %edx
	movl	4(%esp), %eax
	movl	40(%esp), %ebx
	.cfi_restore 3
	movl	44(%esp), %esi
	.cfi_restore 6
L1847:
	cvttss2sil	%xmm3, %ecx
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm0
	cvttss2sil	%xmm2, %ecx
	cvtsi2ssl	%ecx, %xmm1
L1834:
	movl	12(%eax), %ecx
	testl	$16777280, %ecx
	jne	L1848
	movl	%ebx, 40(%esp)
	.cfi_offset 3, -12
	movl	940(%eax), %ebx
	testl	%ebx, %ebx
	je	L1850
	movl	116(%ebx), %ebx
	testl	%ebx, %ebx
	je	L1850
	movl	12(%ebx), %ecx
	movl	%ebx, %eax
L1850:
	movss	14432(%edx), %xmm3
	movl	(%eax), %ebx
	xorps	%xmm5, %xmm5
	movaps	%xmm3, %xmm2
	cmpnless	%xmm1, %xmm2
	andps	%xmm2, %xmm3
	andnps	%xmm1, %xmm2
	orps	%xmm3, %xmm2
	movss	14428(%edx), %xmm3
	movaps	%xmm3, %xmm1
	cmpnless	%xmm0, %xmm1
	andps	%xmm1, %xmm3
	andnps	%xmm0, %xmm1
	orps	%xmm3, %xmm1
	movaps	%xmm1, %xmm0
	testb	$1, %cl
	jne	L1856
	movl	%esi, 44(%esp)
	.cfi_offset 6, -8
	movl	824(%eax), %esi
	movss	15520(%ebx), %xmm1
	mulss	664(%eax), %xmm1
	mulss	668(%eax), %xmm1
	testl	%esi, %esi
	je	L1857
	mulss	664(%esi), %xmm1
L1857:
	movss	14468(%ebx), %xmm5
	movl	44(%esp), %esi
	.cfi_restore 6
	addss	%xmm5, %xmm5
	addss	%xmm1, %xmm5
L1856:
	xorps	%xmm4, %xmm4
	andb	$4, %ch
	jne	L1891
L1858:
	movss	14420(%edx), %xmm3
	xorps	%xmm6, %xmm6
	addss	%xmm5, %xmm4
	movl	40(%esp), %ebx
	.cfi_restore 3
	subss	LC13, %xmm3
	movaps	%xmm3, %xmm1
	cmpnless	%xmm6, %xmm1
	andps	%xmm3, %xmm1
	movaps	%xmm4, %xmm3
	addss	%xmm1, %xmm3
	movaps	%xmm3, %xmm1
	cmpless	%xmm2, %xmm1
	andps	%xmm1, %xmm2
	andnps	%xmm3, %xmm1
	orps	%xmm2, %xmm1
L1848:
	movss	%xmm0, 4(%esp)
	movl	4(%esp), %eax
	movss	%xmm1, 4(%esp)
	movl	4(%esp), %edx
	addl	$48, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1891:
	.cfi_def_cfa_offset 52
	.cfi_offset 3, -12
	movss	15520(%ebx), %xmm1
	mulss	664(%eax), %xmm1
	mulss	668(%eax), %xmm1
	movss	400(%eax), %xmm6
	movl	824(%eax), %eax
	testl	%eax, %eax
	je	L1859
	mulss	664(%eax), %xmm1
L1859:
	movss	14468(%ebx), %xmm3
	addss	%xmm1, %xmm6
	addss	%xmm3, %xmm3
	movaps	%xmm3, %xmm4
	addss	%xmm6, %xmm4
	jmp	L1858
	.p2align 4,,10
	.p2align 3
L1890:
	.cfi_restore 3
	comiss	%xmm1, %xmm2
	ja	L1844
	minss	%xmm1, %xmm4
	movaps	%xmm4, %xmm2
	jmp	L1844
	.cfi_endproc
LFE168:
	.p2align 4
	.globl	__ZL21CalcWindowAutoFitSizeP11ImGuiWindowRK6ImVec2.lto_priv.0
	.def	__ZL21CalcWindowAutoFitSizeP11ImGuiWindowRK6ImVec2.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL21CalcWindowAutoFitSizeP11ImGuiWindowRK6ImVec2.lto_priv.0:
LFB170:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movss	132(%eax), %xmm0
	addss	140(%eax), %xmm0
	movss	120(%eax), %xmm2
	movss	116(%eax), %xmm3
	movss	4(%edx), %xmm5
	movss	(%edx), %xmm4
	movaps	%xmm0, %xmm6
	addss	%xmm2, %xmm2
	addss	%xmm3, %xmm3
	movl	12(%eax), %ecx
	movss	136(%eax), %xmm0
	addss	144(%eax), %xmm0
	subss	212(%eax), %xmm6
	addss	%xmm2, %xmm5
	addss	%xmm3, %xmm4
	movaps	%xmm0, %xmm7
	subss	216(%eax), %xmm7
	movss	%xmm6, (%esp)
	addss	%xmm6, %xmm4
	addss	%xmm7, %xmm5
	movss	%xmm7, 4(%esp)
	testl	$33554432, %ecx
	je	L1893
	movss	%xmm4, (%esp)
	movl	(%esp), %eax
	movss	%xmm5, (%esp)
	movl	(%esp), %edx
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1893:
	.cfi_restore_state
	movl	%esi, 40(%esp)
	.cfi_offset 6, -8
	movl	_GImGui, %esi
	andl	$335544320, %ecx
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -12
	movss	14428(%esi), %xmm0
	movss	14432(%esi), %xmm1
	je	L1895
	movss	LC48, %xmm6
	movaps	%xmm0, %xmm7
	minss	%xmm6, %xmm7
	minss	%xmm6, %xmm1
	movaps	%xmm7, %xmm0
L1895:
	cmpb	$0, 222(%eax)
	jne	L1914
	movl	48(%eax), %ecx
	movss	32(%ecx), %xmm6
	movss	%xmm6, 8(%esp)
	movss	36(%ecx), %xmm6
L1900:
	movl	64(%eax), %ecx
	testl	%ecx, %ecx
	js	L1903
	cmpl	%ecx, 14356(%esi)
	jg	L1934
L1903:
	comiss	%xmm5, %xmm1
	ja	L1904
	movss	14604(%esi), %xmm7
	addss	%xmm7, %xmm7
	subss	%xmm7, %xmm6
	movaps	%xmm6, %xmm7
	cmpless	%xmm1, %xmm7
	andps	%xmm7, %xmm1
	andnps	%xmm6, %xmm7
	orps	%xmm1, %xmm7
	movaps	%xmm7, %xmm1
	minss	%xmm5, %xmm1
L1904:
	comiss	%xmm4, %xmm0
	ja	L1905
	movss	14600(%esi), %xmm5
	movss	8(%esp), %xmm6
	addss	%xmm5, %xmm5
	subss	%xmm5, %xmm6
	movaps	%xmm6, %xmm5
	cmpless	%xmm0, %xmm5
	andps	%xmm5, %xmm0
	andnps	%xmm6, %xmm5
	orps	%xmm0, %xmm5
	minss	%xmm4, %xmm5
	movaps	%xmm5, %xmm0
L1905:
	movss	%xmm3, 32(%esp)
	movl	%edx, %ebx
	movss	%xmm2, 28(%esp)
	movss	%xmm1, 24(%esp)
	movss	%xmm0, 20(%esp)
	movl	%eax, 16(%esp)
	call	__ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2.isra.0
	movl	16(%esp), %ecx
	movss	20(%esp), %xmm0
	movss	24(%esp), %xmm1
	movss	28(%esp), %xmm2
	movl	%eax, 12(%esp)
	movss	12(%esp), %xmm4
	subss	32(%esp), %xmm4
	movl	%edx, 8(%esp)
	movaps	%xmm4, %xmm3
	subss	(%esp), %xmm3
	movss	(%ebx), %xmm4
	comiss	%xmm3, %xmm4
	jbe	L1906
	movl	12(%ecx), %edx
	movl	$1, %eax
	andl	$2056, %edx
	cmpl	$2048, %edx
	je	L1908
L1906:
	movzbl	13(%ecx), %eax
	shrb	$7, %al
L1908:
	movss	8(%esp), %xmm3
	movl	12(%ecx), %edx
	subss	%xmm2, %xmm3
	movaps	%xmm3, %xmm2
	subss	4(%esp), %xmm2
	movss	4(%ebx), %xmm3
	comiss	%xmm2, %xmm3
	jbe	L1909
	testb	$8, %dl
	jne	L1909
L1911:
	movss	14520(%esi), %xmm2
	testb	%al, %al
	jne	L1935
L1913:
	addss	%xmm2, %xmm0
L1912:
	movss	%xmm0, (%esp)
	movl	36(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	(%esp), %eax
	movl	40(%esp), %esi
	.cfi_restore 6
	movss	%xmm1, (%esp)
	movl	(%esp), %edx
	addl	$44, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1914:
	.cfi_restore_state
	movss	LC28, %xmm6
	movss	%xmm6, 8(%esp)
	jmp	L1900
	.p2align 4,,10
	.p2align 3
L1909:
	andb	$64, %dh
	jne	L1911
	testb	%al, %al
	je	L1912
	addss	14520(%esi), %xmm1
	jmp	L1912
	.p2align 4,,10
	.p2align 3
L1935:
	addss	%xmm2, %xmm1
	jmp	L1913
	.p2align 4,,10
	.p2align 3
L1934:
	leal	(%ecx,%ecx,8), %ebx
	movl	14364(%esi), %ecx
	movss	24(%ecx,%ebx,4), %xmm6
	movss	%xmm6, 8(%esp)
	movss	28(%ecx,%ebx,4), %xmm6
	jmp	L1903
	.cfi_endproc
LFE170:
	.p2align 4
	.globl	__ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.isra.0
	.def	__ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.isra.0;	.scl	2;	.type	32;	.endef
__ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.isra.0:
LFB172:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%edx, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 28
	movss	72(%eax), %xmm6
	movss	68(%eax), %xmm4
	movss	4(%edx), %xmm7
	movss	(%edx), %xmm5
	movaps	%xmm6, %xmm2
	movaps	%xmm4, %xmm3
	addss	80(%eax), %xmm6
	subss	%xmm1, %xmm2
	subss	%xmm0, %xmm3
	addss	76(%eax), %xmm4
	mulss	%xmm7, %xmm2
	mulss	%xmm5, %xmm3
	addss	%xmm1, %xmm2
	subss	%xmm6, %xmm1
	addss	%xmm0, %xmm3
	subss	%xmm4, %xmm0
	mulss	%xmm7, %xmm1
	movss	%xmm2, 8(%esp)
	mulss	%xmm5, %xmm0
	movss	%xmm3, 4(%esp)
	addss	%xmm6, %xmm1
	addss	%xmm4, %xmm0
	subss	%xmm2, %xmm1
	subss	%xmm3, %xmm0
	movss	%xmm1, (%esp)
	movss	%xmm0, 12(%esp)
	call	__ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2.isra.0
	movss	4(%esp), %xmm3
	movss	8(%esp), %xmm2
	xorps	%xmm4, %xmm4
	movss	(%esp), %xmm1
	movss	%xmm3, (%esi)
	movss	%xmm2, 4(%esi)
	ucomiss	(%ebx), %xmm4
	jp	L1937
	jne	L1937
	movl	%eax, (%esp)
	movss	(%esp), %xmm4
	subss	12(%esp), %xmm4
	subss	%xmm4, %xmm3
	movss	%xmm3, (%esi)
L1937:
	xorps	%xmm0, %xmm0
	ucomiss	4(%ebx), %xmm0
	jp	L1939
	jne	L1939
	movl	%edx, (%esp)
	movss	(%esp), %xmm0
	subss	%xmm1, %xmm0
	subss	%xmm0, %xmm2
	movss	%xmm2, 4(%esi)
L1939:
	movl	28(%esp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
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
LFE172:
	.p2align 4
	.globl	__ZL19GetResizeBorderRectP11ImGuiWindowiff.lto_priv.0
	.def	__ZL19GetResizeBorderRectP11ImGuiWindowiff.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL19GetResizeBorderRectP11ImGuiWindowiff.lto_priv.0:
LFB173:
	.cfi_startproc
	xorps	%xmm6, %xmm6
	movss	72(%edx), %xmm3
	movss	80(%edx), %xmm4
	movaps	%xmm0, %xmm5
	ucomiss	%xmm6, %xmm1
	movss	68(%edx), %xmm0
	movss	76(%edx), %xmm2
	addss	%xmm3, %xmm4
	addss	%xmm0, %xmm2
	jp	L1945
	jne	L1945
	movss	LC13, %xmm6
	subss	%xmm6, %xmm2
	subss	%xmm6, %xmm4
L1945:
	testl	%ecx, %ecx
	jne	L1947
	movaps	%xmm0, %xmm6
	movaps	%xmm3, %xmm2
	addss	%xmm1, %xmm0
	subss	%xmm1, %xmm6
	addss	%xmm5, %xmm2
	subss	%xmm5, %xmm4
	movaps	%xmm6, %xmm3
	unpcklps	%xmm4, %xmm0
	unpcklps	%xmm2, %xmm3
	movlhps	%xmm0, %xmm3
	movups	%xmm3, (%eax)
	ret
	.p2align 4,,10
	.p2align 3
L1947:
	cmpl	$1, %ecx
	je	L1953
	cmpl	$2, %ecx
	je	L1954
	cmpl	$3, %ecx
	je	L1955
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%eax)
	ret
	.p2align 4,,10
	.p2align 3
L1953:
	movaps	%xmm2, %xmm0
	addss	%xmm5, %xmm3
	addss	%xmm1, %xmm2
	subss	%xmm1, %xmm0
	subss	%xmm5, %xmm4
	unpcklps	%xmm3, %xmm0
	unpcklps	%xmm4, %xmm2
	movlhps	%xmm2, %xmm0
	movups	%xmm0, (%eax)
	ret
	.p2align 4,,10
	.p2align 3
L1955:
	movaps	%xmm4, %xmm3
	addss	%xmm5, %xmm0
	subss	%xmm5, %xmm2
	subss	%xmm1, %xmm3
	addss	%xmm4, %xmm1
	unpcklps	%xmm3, %xmm0
	unpcklps	%xmm1, %xmm2
	movlhps	%xmm2, %xmm0
	movups	%xmm0, (%eax)
	ret
	.p2align 4,,10
	.p2align 3
L1954:
	movaps	%xmm3, %xmm4
	addss	%xmm5, %xmm0
	subss	%xmm5, %xmm2
	subss	%xmm1, %xmm4
	addss	%xmm1, %xmm3
	unpcklps	%xmm4, %xmm0
	unpcklps	%xmm3, %xmm2
	movlhps	%xmm2, %xmm0
	movups	%xmm0, (%eax)
	ret
	.cfi_endproc
LFE173:
	.section .rdata,"dr"
LC49:
	.ascii "_IMWINDOW\0"
LC52:
	.ascii "#UNHIDE\0"
	.text
	.p2align 4
	.globl	__ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.lto_priv.0
	.def	__ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.lto_priv.0:
LFB174:
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
	subl	$156, %esp
	movzbl	(%edi), %eax
	movss	124(%ebx), %xmm6
	movl	%edx, -88(%ebp)
	movss	128(%ebx), %xmm7
	movb	%cl, -120(%ebp)
	movb	%al, -100(%ebp)
	movl	4(%edi), %eax
	movb	$0, 228(%ebx)
	movl	%eax, -104(%ebp)
	movl	8(%edi), %eax
	movss	%xmm0, -112(%ebp)
	movl	_GImGui, %edi
	movl	%eax, -108(%ebp)
	movl	12(%ebx), %eax
	movss	%xmm6, -84(%ebp)
	movl	%eax, -80(%ebp)
	movss	%xmm7, -96(%ebp)
	cmpb	$0, 226(%ebx)
	je	L1957
	movss	14476(%edi), %xmm4
	movl	$12, %eax
	movss	%xmm7, 14476(%edi)
	movss	%xmm4, -80(%ebp)
	testb	%cl, %cl
	je	L1958
	movzbl	18738(%edi), %eax
	addl	$11, %eax
L1958:
	addl	$13, %eax
	leal	-40(%ebp), %esi
	sall	$4, %eax
	addl	%edi, %eax
	movl	14416(%eax), %ecx
	movl	%ecx, -40(%ebp)
	movl	14420(%eax), %ecx
	movl	%ecx, -36(%ebp)
	movl	14424(%eax), %ecx
	movl	%ecx, -32(%ebp)
	movl	14428(%eax), %ecx
	movl	%ecx, -28(%ebp)
	movss	14428(%eax), %xmm0
	movl	%esi, %eax
	mulss	14404(%edi), %xmm0
	movss	%xmm0, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movl	%eax, %ecx
	movzbl	222(%ebx), %eax
	movl	-88(%ebp), %ebx
	negl	%eax
	movl	(%ebx), %edx
	andl	$-16777216, %eax
	orl	%ecx, %eax
	movl	4(%ebx), %ecx
	movl	%edx, -64(%ebp)
	movl	%edx, -96(%ebp)
	movl	8(%ebx), %edx
	movl	%ecx, -60(%ebp)
	movl	%ecx, -92(%ebp)
	movl	12(%ebx), %ecx
	movl	%edx, -56(%ebp)
	movl	%ecx, -52(%ebp)
	movl	16148(%edi), %ebx
	movl	676(%ebx), %ecx
	movl	%eax, 8(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-64(%ebp), %eax
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movss	-84(%ebp), %xmm0
	call	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movss	14476(%edi), %xmm4
	xorps	%xmm0, %xmm0
	subl	$16, %esp
	comiss	%xmm0, %xmm4
	ja	L2256
L1959:
	movss	-80(%ebp), %xmm4
	movss	%xmm4, 14476(%edi)
L1956:
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
L1957:
	.cfi_restore_state
	movl	-80(%ebp), %eax
	andl	$128, %eax
	movl	%eax, -116(%ebp)
	je	L2257
	testb	$1, 909(%ebx)
	je	L1984
L2266:
	movl	936(%ebx), %eax
	orb	$4, 160(%eax)
	testb	$1, -80(%ebp)
	je	L2258
L1985:
	testb	$4, -79(%ebp)
	jne	L2105
L1987:
	testb	$1, 909(%ebx)
	jne	L2255
L1997:
	cmpb	$0, 220(%ebx)
	jne	L2259
	cmpb	$0, 221(%ebx)
	jne	L2260
L2032:
	cmpb	$0, -100(%ebp)
	je	L1956
	andl	$2, -80(%ebp)
	jne	L2033
	movl	$__ZL15resize_grip_def.lto_priv.0, -88(%ebp)
	leal	-40(%ebp), %esi
L2061:
	movl	-108(%ebp), %eax
	movl	-80(%ebp), %edx
	movl	(%eax,%edx,4), %eax
	movl	%eax, -100(%ebp)
	cmpl	$16777215, %eax
	jbe	L2034
	movss	72(%ebx), %xmm1
	movss	80(%ebx), %xmm0
	movl	-88(%ebp), %eax
	movss	68(%ebx), %xmm2
	addss	%xmm1, %xmm0
	movl	676(%ebx), %edi
	subss	%xmm1, %xmm0
	mulss	4(%eax), %xmm0
	addss	%xmm1, %xmm0
	movss	76(%ebx), %xmm1
	addss	%xmm2, %xmm1
	subss	%xmm2, %xmm1
	mulss	(%eax), %xmm1
	addss	%xmm2, %xmm1
	testl	%edx, %edx
	je	L2118
	movss	-112(%ebp), %xmm3
	movss	-96(%ebp), %xmm6
L2035:
	movl	-88(%ebp), %eax
	movss	8(%eax), %xmm2
	movss	12(%eax), %xmm4
	movaps	%xmm2, %xmm5
	mulss	%xmm6, %xmm5
	addss	%xmm1, %xmm5
	movss	%xmm5, -40(%ebp)
	movaps	%xmm3, %xmm5
	mulss	%xmm4, %xmm5
	addss	%xmm0, %xmm5
	movss	%xmm5, -36(%ebp)
	movl	84(%edi), %edx
	cmpl	88(%edi), %edx
	je	L2261
L2036:
	movl	92(%edi), %ecx
L2039:
	mulss	%xmm4, %xmm6
	movaps	%xmm3, %xmm5
	leal	(%ecx,%edx,8), %eax
	movl	(%esi), %edx
	mulss	%xmm2, %xmm5
	movl	%edx, (%eax)
	movl	4(%esi), %edx
	movl	%edx, 4(%eax)
	movaps	%xmm6, %xmm3
	addl	$1, 84(%edi)
	movl	676(%ebx), %edi
	addss	%xmm1, %xmm5
	addss	%xmm0, %xmm3
	movss	%xmm5, -40(%ebp)
	movss	%xmm3, -36(%ebp)
	movl	84(%edi), %edx
	cmpl	88(%edi), %edx
	je	L2262
L2043:
	movl	92(%edi), %ecx
L2046:
	movss	-84(%ebp), %xmm6
	movss	-96(%ebp), %xmm3
	leal	(%ecx,%edx,8), %eax
	movl	(%esi), %edx
	addss	%xmm6, %xmm3
	movl	%edx, (%eax)
	movl	4(%esi), %edx
	mulss	%xmm3, %xmm2
	movl	%edx, 4(%eax)
	movl	-88(%ebp), %eax
	mulss	%xmm4, %xmm3
	addl	$1, 84(%edi)
	movl	676(%ebx), %ecx
	movss	LC15, %xmm4
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	comiss	%xmm6, %xmm4
	addss	%xmm1, %xmm2
	addss	%xmm0, %xmm3
	movss	%xmm2, -40(%ebp)
	movss	%xmm3, -36(%ebp)
	ja	L2263
	sall	$2, %edx
	sall	$2, %eax
	movl	%esi, (%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movss	-84(%ebp), %xmm0
	call	__ZN10ImDrawList16_PathArcToFastExERK6ImVec2fiii.constprop.0
	subl	$12, %esp
L2059:
	movl	676(%ebx), %edi
	movl	84(%edi), %eax
	cmpl	$2, %eax
	jle	L2060
	movl	-100(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edi, %ecx
	movl	%edx, 8(%esp)
	movl	92(%edi), %eax
	movl	%eax, (%esp)
	call	__ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij.part.0
	subl	$12, %esp
L2060:
	movl	$0, 84(%edi)
L2034:
	addl	$1, -80(%ebp)
	movl	-80(%ebp), %eax
	addl	$24, -88(%ebp)
	cmpl	%eax, -104(%ebp)
	jne	L2061
L2033:
	movl	940(%ebx), %ecx
	testl	%ecx, %ecx
	jne	L1956
	movss	128(%ebx), %xmm6
	xorps	%xmm0, %xmm0
	movl	_GImGui, %eax
	movss	124(%ebx), %xmm4
	comiss	%xmm0, %xmm6
	movl	%eax, -80(%ebp)
	movss	%xmm6, -84(%ebp)
	jbe	L2062
	testb	$-128, 12(%ebx)
	je	L2264
L2062:
	movsbl	234(%ebx), %edi
	cmpl	$-1, %edi
	je	L2064
	movaps	%xmm4, %xmm0
	leal	-56(%ebp), %eax
	xorps	%xmm1, %xmm1
	movl	%edi, %ecx
	movl	%ebx, %edx
	movss	%xmm4, -96(%ebp)
	call	__ZL19GetResizeBorderRectP11ImGuiWindowiff.lto_priv.0
	imull	$28, %edi, %eax
	movss	-96(%ebp), %xmm4
	movss	-52(%ebp), %xmm7
	movss	-56(%ebp), %xmm6
	movss	-48(%ebp), %xmm1
	movl	676(%ebx), %ecx
	movss	__ZL17resize_border_def.lto_priv.0+4(%eax), %xmm2
	subss	%xmm6, %xmm1
	movss	__ZL17resize_border_def.lto_priv.0(%eax), %xmm3
	movss	__ZL17resize_border_def.lto_priv.0+24(%eax), %xmm5
	mulss	%xmm4, %xmm2
	movss	%xmm1, -104(%ebp)
	mulss	__ZL17resize_border_def.lto_priv.0+8(%eax), %xmm1
	mulss	%xmm4, %xmm3
	movss	%xmm2, -96(%ebp)
	movss	-44(%ebp), %xmm2
	addss	%xmm6, %xmm1
	subss	%xmm7, %xmm2
	movss	%xmm3, -88(%ebp)
	movss	LC15, %xmm3
	addss	%xmm3, %xmm1
	comiss	%xmm4, %xmm3
	addss	-88(%ebp), %xmm1
	movss	%xmm2, -100(%ebp)
	mulss	__ZL17resize_border_def.lto_priv.0+12(%eax), %xmm2
	movss	%xmm1, -40(%ebp)
	movaps	%xmm2, %xmm0
	addss	%xmm7, %xmm0
	addss	%xmm3, %xmm0
	addss	-96(%ebp), %xmm0
	movss	%xmm0, -36(%ebp)
	ja	L2265
	leal	-40(%ebp), %esi
	movl	%eax, -124(%ebp)
	movaps	%xmm5, %xmm1
	movaps	%xmm5, %xmm2
	movss	%xmm3, -128(%ebp)
	movaps	%xmm4, %xmm0
	subss	LC53, %xmm1
	movss	%xmm7, -120(%ebp)
	movss	%xmm6, -116(%ebp)
	movl	%esi, (%esp)
	movss	%xmm5, -112(%ebp)
	movss	%xmm4, -108(%ebp)
	call	__ZN10ImDrawList9PathArcToERK6ImVec2fffi.part.0
	movl	-124(%ebp), %eax
	movss	-100(%ebp), %xmm0
	movss	-104(%ebp), %xmm1
	movss	-128(%ebp), %xmm3
	subl	$4, %esp
	mulss	__ZL17resize_border_def.lto_priv.0+20(%eax), %xmm0
	movl	676(%ebx), %ecx
	mulss	__ZL17resize_border_def.lto_priv.0+16(%eax), %xmm1
	addss	-120(%ebp), %xmm0
	movss	LC53, %xmm2
	addss	-116(%ebp), %xmm1
	addss	%xmm3, %xmm0
	addss	-96(%ebp), %xmm0
	addss	%xmm3, %xmm1
	addss	-88(%ebp), %xmm1
	movss	%xmm0, -36(%ebp)
	movss	%xmm1, -40(%ebp)
	movl	%esi, (%esp)
	movss	-112(%ebp), %xmm5
	movss	-108(%ebp), %xmm0
	addss	%xmm5, %xmm2
	movaps	%xmm5, %xmm1
	call	__ZN10ImDrawList9PathArcToERK6ImVec2fffi.part.0
	subl	$4, %esp
L2077:
	movl	_GImGui, %eax
	movl	676(%ebx), %edi
	movl	15088(%eax), %edx
	movl	%edx, -40(%ebp)
	movl	15092(%eax), %edx
	movl	%edx, -36(%ebp)
	movl	15096(%eax), %edx
	movl	%edx, -32(%ebp)
	movl	15100(%eax), %edx
	movl	%edx, -28(%ebp)
	movss	14404(%eax), %xmm0
	mulss	15100(%eax), %xmm0
	movl	%esi, %eax
	movss	%xmm0, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movl	%eax, %edx
	movl	84(%edi), %eax
	cmpl	$1, %eax
	jle	L2084
	cmpl	$16777215, %edx
	jbe	L2084
	movss	LC9, %xmm1
	movss	-84(%ebp), %xmm4
	movl	%edi, %ecx
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movaps	%xmm4, %xmm0
	movl	%eax, 4(%esp)
	movl	92(%edi), %eax
	cmpnless	%xmm1, %xmm0
	movl	%eax, (%esp)
	andps	%xmm0, %xmm4
	andnps	%xmm1, %xmm0
	orps	%xmm4, %xmm0
	call	__ZN10ImDrawList11AddPolylineEPK6ImVec2ijif.part.0
	subl	$16, %esp
L2084:
	movl	$0, 84(%edi)
L2064:
	movl	-80(%ebp), %eax
	xorps	%xmm0, %xmm0
	movss	14476(%eax), %xmm3
	comiss	%xmm0, %xmm3
	jbe	L1956
	testb	$1, 12(%ebx)
	jne	L1956
	testb	$1, 909(%ebx)
	jne	L1956
	movl	(%ebx), %eax
	movl	824(%ebx), %edx
	movss	72(%ebx), %xmm2
	movss	15520(%eax), %xmm1
	mulss	664(%ebx), %xmm1
	mulss	668(%ebx), %xmm1
	testl	%edx, %edx
	je	L2088
	mulss	664(%edx), %xmm1
L2088:
	movss	14468(%eax), %xmm0
	movl	_GImGui, %eax
	leal	-40(%ebp), %esi
	movl	676(%ebx), %edi
	movl	14704(%eax), %edx
	movaps	%xmm0, %xmm4
	addss	%xmm0, %xmm4
	movl	%edx, -40(%ebp)
	movl	14708(%eax), %edx
	movl	%edx, -36(%ebp)
	movl	14712(%eax), %edx
	addss	%xmm1, %xmm4
	movl	%edx, -32(%ebp)
	movl	14716(%eax), %edx
	addss	%xmm2, %xmm4
	subss	LC13, %xmm4
	movl	%edx, -28(%ebp)
	movss	14404(%eax), %xmm0
	mulss	14716(%eax), %xmm0
	movl	%esi, %eax
	movss	%xmm0, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movss	68(%ebx), %xmm0
	movaps	%xmm3, %xmm2
	movl	%edi, %ecx
	movss	76(%ebx), %xmm1
	movss	-84(%ebp), %xmm7
	movss	%xmm4, -36(%ebp)
	addss	%xmm0, %xmm1
	addss	%xmm7, %xmm0
	subss	%xmm7, %xmm1
	movss	%xmm1, -40(%ebp)
	movaps	%xmm4, %xmm1
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	__ZN10ImDrawList7AddLineERK6ImVec2S2_jf.isra.0
	subl	$8, %esp
	jmp	L1956
	.p2align 4,,10
	.p2align 3
L2257:
	movzbl	19068(%edi), %eax
	movb	%al, -124(%ebp)
	testb	%al, %al
	je	L1964
	movl	16048(%edi), %eax
	subl	19176(%edi), %eax
	cmpl	$1, %eax
	jle	L1965
L1966:
	movb	$0, -124(%ebp)
L1964:
	movl	-80(%ebp), %esi
	movl	$4, %eax
	testl	$100663296, %esi
	jne	L1967
	andl	$16777216, %esi
	movl	$2, %eax
	je	L1967
	movzbl	909(%ebx), %ecx
	movl	$3, %eax
	andl	$1, %ecx
	subl	%ecx, %eax
L1967:
	addl	$13, %eax
	leal	-40(%ebp), %esi
	sall	$4, %eax
	addl	%edi, %eax
	movl	14416(%eax), %ecx
	movl	%ecx, -40(%ebp)
	movl	14420(%eax), %ecx
	movl	%ecx, -36(%ebp)
	movl	14424(%eax), %ecx
	movl	%ecx, -32(%ebp)
	movl	14428(%eax), %ecx
	movl	%ecx, -28(%ebp)
	movss	14428(%eax), %xmm0
	movl	%esi, %eax
	mulss	14404(%edi), %xmm0
	movss	%xmm0, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movl	%eax, %edx
	cmpb	$0, 222(%ebx)
	je	L1968
	orl	$-16777216, %edx
	cmpb	$0, -124(%ebp)
	je	L1970
	movss	LC15, %xmm0
	movl	48(%ebx), %eax
	mulss	96(%eax), %xmm0
	movss	%xmm0, 96(%eax)
L1970:
	testb	$1, 909(%ebx)
	je	L1977
	movl	936(%ebx), %eax
	movl	%edx, 108(%eax)
	testb	$1, 909(%ebx)
	je	L1977
	movl	936(%ebx), %eax
	movl	112(%eax), %eax
	movl	676(%eax), %eax
	movl	%eax, -124(%ebp)
L1978:
	movl	-124(%ebp), %eax
	movl	%edx, -128(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	leal	120(%eax), %ecx
	call	__ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi
	movl	-128(%ebp), %edx
	subl	$8, %esp
L1979:
	movss	72(%ebx), %xmm0
	movss	80(%ebx), %xmm1
	movl	$192, %eax
	movss	68(%ebx), %xmm2
	movss	76(%ebx), %xmm3
	addss	%xmm0, %xmm1
	testb	$1, -80(%ebp)
	cmovne	-116(%ebp), %eax
	addss	%xmm2, %xmm3
	movl	%eax, -116(%ebp)
	movss	%xmm1, -52(%ebp)
	xorps	%xmm1, %xmm1
	movss	%xmm3, -56(%ebp)
	testb	$1, 12(%ebx)
	jne	L1981
	movl	(%ebx), %eax
	movl	824(%ebx), %ecx
	movss	15520(%eax), %xmm3
	mulss	664(%ebx), %xmm3
	mulss	668(%ebx), %xmm3
	testl	%ecx, %ecx
	je	L1982
	mulss	664(%ecx), %xmm3
L1982:
	movss	14468(%eax), %xmm1
	addss	%xmm1, %xmm1
	addss	%xmm3, %xmm1
L1981:
	xorps	%xmm3, %xmm3
	addss	%xmm1, %xmm0
	movl	-116(%ebp), %eax
	addss	%xmm3, %xmm2
	movss	%xmm0, -36(%ebp)
	movss	%xmm2, -40(%ebp)
	movl	%eax, 12(%esp)
	leal	-56(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movss	-84(%ebp), %xmm0
	movl	-124(%ebp), %ecx
	call	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	subl	$16, %esp
	testb	$1, 909(%ebx)
	jne	L1983
	testb	$32, -77(%ebp)
	je	L1984
L1983:
	movl	-124(%ebp), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	leal	120(%eax), %ecx
	call	__ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi
	subl	$8, %esp
	testb	$1, 909(%ebx)
	jne	L2266
L1984:
	testb	$1, -80(%ebp)
	jne	L1985
L2107:
	movzbl	-120(%ebp), %eax
	movl	_GImGui, %ecx
	addl	$23, %eax
	sall	$4, %eax
	addl	%ecx, %eax
	movl	14416(%eax), %esi
	movl	%esi, -40(%ebp)
	movl	14420(%eax), %esi
	movl	%esi, -36(%ebp)
	movl	14424(%eax), %esi
	movl	%esi, -32(%ebp)
	movl	14428(%eax), %esi
	movl	%esi, -28(%ebp)
	movss	14404(%ecx), %xmm0
	mulss	14428(%eax), %xmm0
	leal	-40(%ebp), %eax
	movss	%xmm0, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movl	676(%ebx), %ecx
	movl	$48, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-88(%ebp), %esi
	leal	8(%esi), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	movss	-84(%ebp), %xmm0
	call	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	subl	$16, %esp
	testb	$4, -79(%ebp)
	je	L1987
L2105:
	movl	12(%ebx), %eax
	movss	72(%ebx), %xmm0
	xorps	%xmm1, %xmm1
	movl	(%ebx), %ecx
	testb	$1, %al
	jne	L1988
	movl	824(%ebx), %esi
	movss	15520(%ecx), %xmm2
	mulss	664(%ebx), %xmm2
	mulss	668(%ebx), %xmm2
	testl	%esi, %esi
	je	L1989
	mulss	664(%esi), %xmm2
L1989:
	movss	14468(%ecx), %xmm1
	addss	%xmm1, %xmm1
	addss	%xmm2, %xmm1
L1988:
	addss	%xmm0, %xmm1
	xorps	%xmm2, %xmm2
	testb	$4, %ah
	je	L1990
	movl	824(%ebx), %eax
	movss	15520(%ecx), %xmm3
	mulss	664(%ebx), %xmm3
	movss	400(%ebx), %xmm4
	mulss	668(%ebx), %xmm3
	testl	%eax, %eax
	je	L1991
	mulss	664(%eax), %xmm3
L1991:
	movss	14468(%ecx), %xmm2
	addss	%xmm4, %xmm3
	addss	%xmm2, %xmm2
	addss	%xmm3, %xmm2
L1990:
	movss	68(%ebx), %xmm7
	movss	84(%ebx), %xmm4
	addss	%xmm1, %xmm2
	movaps	%xmm0, %xmm3
	movss	80(%ebx), %xmm6
	cmpnless	%xmm1, %xmm3
	movl	676(%ebx), %ecx
	addss	%xmm7, %xmm4
	movss	%xmm7, -120(%ebp)
	addss	76(%ebx), %xmm7
	addss	%xmm0, %xmm6
	andps	%xmm3, %xmm0
	andnps	%xmm1, %xmm3
	minss	%xmm7, %xmm4
	orps	%xmm0, %xmm3
	minss	%xmm6, %xmm2
	movss	%xmm4, -116(%ebp)
	xorps	%xmm4, %xmm4
	movss	%xmm2, -88(%ebp)
	testb	$1, -80(%ebp)
	je	L1994
	movss	-84(%ebp), %xmm4
L1994:
	movl	_GImGui, %eax
	leal	-40(%ebp), %esi
	movl	%ecx, -124(%ebp)
	movl	14832(%eax), %edx
	movl	%edx, -40(%ebp)
	movl	14836(%eax), %edx
	movl	%edx, -36(%ebp)
	movl	14840(%eax), %edx
	movl	%edx, -32(%ebp)
	movl	14844(%eax), %edx
	movl	%edx, -28(%ebp)
	movss	14404(%eax), %xmm0
	mulss	14844(%eax), %xmm0
	movl	%esi, %eax
	movss	%xmm0, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movss	-96(%ebp), %xmm6
	movss	-116(%ebp), %xmm0
	xorps	%xmm1, %xmm1
	addss	%xmm1, %xmm3
	movss	-88(%ebp), %xmm5
	subss	%xmm6, %xmm0
	addss	-120(%ebp), %xmm6
	movss	%xmm5, -52(%ebp)
	movss	%xmm3, -36(%ebp)
	movss	%xmm0, -56(%ebp)
	movaps	%xmm4, %xmm0
	movss	%xmm6, -40(%ebp)
	movl	%eax, 8(%esp)
	leal	-56(%ebp), %eax
	movl	$48, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	-124(%ebp), %ecx
	call	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movss	14476(%edi), %xmm3
	xorps	%xmm1, %xmm1
	subl	$16, %esp
	comiss	%xmm1, %xmm3
	jbe	L1987
	movss	72(%ebx), %xmm0
	addss	80(%ebx), %xmm0
	comiss	-88(%ebp), %xmm0
	jbe	L1987
	movl	_GImGui, %eax
	movl	676(%ebx), %ecx
	movl	14704(%eax), %edx
	movl	%ecx, -124(%ebp)
	movl	%edx, -40(%ebp)
	movl	14708(%eax), %edx
	movl	%edx, -36(%ebp)
	movl	14712(%eax), %edx
	movl	%edx, -32(%ebp)
	movl	14716(%eax), %edx
	movl	%edx, -28(%ebp)
	movss	14716(%eax), %xmm0
	mulss	14404(%eax), %xmm0
	movl	%esi, %eax
	movss	%xmm0, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movss	-116(%ebp), %xmm4
	movaps	%xmm3, %xmm2
	movss	%xmm4, -40(%ebp)
	movss	-88(%ebp), %xmm4
	movss	%xmm4, -36(%ebp)
	movaps	%xmm4, %xmm1
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movss	-120(%ebp), %xmm0
	movl	-124(%ebp), %ecx
	call	__ZN10ImDrawList7AddLineERK6ImVec2S2_jf.isra.0
	subl	$8, %esp
	jmp	L1987
	.p2align 4,,10
	.p2align 3
L2256:
	movl	676(%ebx), %eax
	movl	_GImGui, %ecx
	movl	%eax, -96(%ebp)
	movl	14720(%ecx), %eax
	movl	%ecx, -88(%ebp)
	movl	%eax, -40(%ebp)
	movl	14724(%ecx), %eax
	movl	%eax, -36(%ebp)
	movl	14728(%ecx), %eax
	movl	%eax, -32(%ebp)
	movl	14732(%ecx), %eax
	movl	%eax, -28(%ebp)
	movss	14404(%ecx), %xmm3
	movl	%esi, %eax
	movss	14732(%ecx), %xmm7
	mulss	%xmm3, %xmm7
	movss	%xmm7, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movss	-60(%ebp), %xmm1
	movss	-64(%ebp), %xmm2
	cmpl	$16777215, %eax
	movss	-52(%ebp), %xmm6
	movss	-56(%ebp), %xmm5
	movss	LC13, %xmm0
	movl	-88(%ebp), %ecx
	addss	%xmm0, %xmm1
	addss	%xmm0, %xmm2
	movss	%xmm1, -36(%ebp)
	movss	%xmm2, -40(%ebp)
	jbe	L1961
	addss	%xmm0, %xmm6
	addss	%xmm0, %xmm5
	movss	%xmm4, 8(%esp)
	movss	%xmm4, -88(%ebp)
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	-96(%ebp), %ecx
	movaps	%xmm6, %xmm1
	movaps	%xmm5, %xmm0
	movss	-84(%ebp), %xmm2
	call	__ZN10ImDrawList7AddRectERK6ImVec2S2_jfif.part.0.constprop.0.isra.0
	movl	676(%ebx), %eax
	movss	-56(%ebp), %xmm5
	movl	_GImGui, %ecx
	subl	$12, %esp
	movss	-52(%ebp), %xmm6
	movl	%eax, -96(%ebp)
	movss	-88(%ebp), %xmm4
	movss	14404(%ecx), %xmm3
L1961:
	movl	14704(%ecx), %eax
	movl	%eax, -40(%ebp)
	movl	14708(%ecx), %eax
	movl	%eax, -36(%ebp)
	movl	14712(%ecx), %eax
	movl	%eax, -32(%ebp)
	movl	14716(%ecx), %eax
	movl	%eax, -28(%ebp)
	mulss	14716(%ecx), %xmm3
	movl	%esi, %eax
	movss	%xmm3, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	cmpl	$16777215, %eax
	jbe	L1959
	movl	%eax, 4(%esp)
	leal	-64(%ebp), %eax
	movaps	%xmm6, %xmm1
	movaps	%xmm5, %xmm0
	movl	%eax, (%esp)
	movss	%xmm4, 8(%esp)
	movss	-84(%ebp), %xmm2
	movl	-96(%ebp), %ecx
	call	__ZN10ImDrawList7AddRectERK6ImVec2S2_jfif.part.0.constprop.0.isra.0
	subl	$12, %esp
	jmp	L1959
	.p2align 4,,10
	.p2align 3
L2258:
	testb	$1, 909(%ebx)
	je	L2107
	testb	$4, -79(%ebp)
	jne	L2105
L2255:
	movl	936(%ebx), %esi
	movl	16(%esi), %eax
	andl	$12288, %eax
	cmpl	$8192, %eax
	jne	L1997
	movss	15516(%edi), %xmm0
	xorps	%xmm4, %xmm4
	movss	56(%esi), %xmm5
	movss	LC50, %xmm1
	movl	284(%ebx), %edx
	movss	%xmm5, -116(%ebp)
	mulss	%xmm0, %xmm1
	mulss	LC51, %xmm0
	cvttss2sil	%xmm1, %eax
	cvtsi2ssl	%eax, %xmm4
	cvttss2sil	%xmm0, %eax
	xorps	%xmm0, %xmm0
	movss	%xmm4, -120(%ebp)
	movss	52(%esi), %xmm4
	cvtsi2ssl	%eax, %xmm0
	movl	292(%ebx), %eax
	movaps	%xmm4, %xmm1
	movss	%xmm4, -88(%ebp)
	addss	%xmm0, %xmm1
	addss	%xmm5, %xmm0
	unpcklps	%xmm0, %xmm1
	movaps	%xmm4, %xmm0
	unpcklps	%xmm5, %xmm0
	movlhps	%xmm1, %xmm0
	movups	%xmm0, -56(%ebp)
	movl	-4(%eax,%edx,4), %ecx
	xorl	%edx, %edx
	movl	$LC52, %eax
	call	__Z9ImHashStrPKcjj
	movl	%eax, %edi
	movl	(%ebx), %eax
	cmpl	16200(%eax), %edi
	je	L2267
L1998:
	movl	_GImGui, %eax
	cmpl	%edi, 16224(%eax)
	jne	L1999
	movl	%edi, 16228(%eax)
L1999:
	cmpl	%edi, 16264(%eax)
	jne	L2000
	movb	$1, 16268(%eax)
L2000:
	leal	-74(%ebp), %edx
	movl	$2048, 4(%esp)
	leal	-73(%ebp), %ecx
	movl	%edx, (%esp)
	leal	-56(%ebp), %eax
	movl	%edi, %edx
	call	__ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	movzbl	-74(%ebp), %edx
	movl	_GImGui, %edi
	testb	%al, %al
	je	L2001
	orb	$4, 161(%esi)
	testb	%dl, %dl
	jne	L2003
L2002:
	movzbl	-73(%ebp), %edx
	testb	$2, 160(%esi)
	je	L2103
	movl	$23, %eax
	testb	%dl, %dl
	je	L2006
L2103:
	movzbl	%dl, %edx
	leal	21(%edx), %eax
L2006:
	addl	$13, %eax
	sall	$4, %eax
	addl	%edi, %eax
	movl	14416(%eax), %edx
	movl	%edx, -40(%ebp)
	movl	14420(%eax), %edx
	movl	%edx, -36(%ebp)
	movl	14424(%eax), %edx
	movl	%edx, -32(%ebp)
	movl	14428(%eax), %edx
	movl	%edx, -28(%ebp)
	movss	14404(%edi), %xmm0
	mulss	14428(%eax), %xmm0
	leal	-40(%ebp), %eax
	movss	%xmm0, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movss	-88(%ebp), %xmm7
	xorps	%xmm0, %xmm0
	movss	-120(%ebp), %xmm4
	movss	-116(%ebp), %xmm2
	movl	676(%ebx), %esi
	movl	%eax, %ecx
	movaps	%xmm7, %xmm1
	addss	%xmm0, %xmm1
	addss	%xmm2, %xmm0
	movss	%xmm1, -64(%ebp)
	movaps	%xmm4, %xmm1
	addss	%xmm2, %xmm1
	movss	%xmm0, -36(%ebp)
	movss	%xmm1, -60(%ebp)
	movaps	%xmm4, %xmm1
	addss	%xmm7, %xmm1
	movss	%xmm1, -40(%ebp)
	cmpl	$16777215, %eax
	jbe	L1997
	movl	84(%esi), %eax
	movl	%eax, -120(%ebp)
	cmpl	88(%esi), %eax
	je	L2268
L2010:
	movl	92(%esi), %edx
L2013:
	movss	-88(%ebp), %xmm4
	movl	-120(%ebp), %eax
	movss	%xmm4, -72(%ebp)
	leal	(%edx,%eax,8), %eax
	movss	-116(%ebp), %xmm4
	movl	-72(%ebp), %edx
	movss	%xmm4, -68(%ebp)
	movl	%edx, (%eax)
	movl	-68(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	84(%esi), %eax
	leal	1(%eax), %edi
	movl	%edi, 84(%esi)
	cmpl	%edi, 88(%esi)
	je	L2269
L2016:
	movl	92(%esi), %edx
L2019:
	leal	(%edx,%edi,8), %eax
	movl	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	-36(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	84(%esi), %eax
	leal	1(%eax), %edi
	movl	%edi, 84(%esi)
	cmpl	%edi, 88(%esi)
	je	L2270
L2023:
	movl	92(%esi), %edx
L2026:
	leal	(%edx,%edi,8), %eax
	movl	-64(%ebp), %edx
	movl	%edx, (%eax)
	movl	-60(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	84(%esi), %eax
	addl	$1, %eax
	movl	%eax, 84(%esi)
	cmpl	$2, %eax
	jle	L2030
	movl	%ecx, 8(%esp)
	movl	%esi, %ecx
	movl	%eax, 4(%esp)
	movl	92(%esi), %eax
	movl	%eax, (%esp)
	call	__ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij.part.0
	subl	$12, %esp
L2030:
	movl	$0, 84(%esi)
	jmp	L1997
	.p2align 4,,10
	.p2align 3
L1968:
	testb	$64, 18372(%edi)
	jne	L1972
	cmpb	$0, -124(%ebp)
	je	L1970
	movss	LC15, %xmm3
	andl	$16777215, %edx
	movaps	%xmm3, %xmm0
	jmp	L1976
	.p2align 4,,10
	.p2align 3
L2118:
	movss	-96(%ebp), %xmm3
	movss	-112(%ebp), %xmm6
	jmp	L2035
	.p2align 4,,10
	.p2align 3
L1977:
	movl	676(%ebx), %eax
	movl	%eax, -124(%ebp)
	testb	$32, -77(%ebp)
	je	L1979
	jmp	L1978
	.p2align 4,,10
	.p2align 3
L2259:
	xorl	%eax, %eax
	call	__ZN5ImGui9ScrollbarE9ImGuiAxis
	cmpb	$0, 221(%ebx)
	je	L2032
L2260:
	movl	$1, %eax
	call	__ZN5ImGui9ScrollbarE9ImGuiAxis
	jmp	L2032
	.p2align 4,,10
	.p2align 3
L2263:
	movl	84(%ecx), %edi
	cmpl	88(%ecx), %edi
	je	L2271
L2052:
	movl	92(%ecx), %edx
L2055:
	leal	(%edx,%edi,8), %eax
	movl	(%esi), %edx
	movl	%edx, (%eax)
	movl	4(%esi), %edx
	movl	%edx, 4(%eax)
	addl	$1, 84(%ecx)
	jmp	L2059
	.p2align 4,,10
	.p2align 3
L2262:
	leal	1(%edx), %ecx
	testl	%edx, %edx
	jne	L2044
	movl	$8, %eax
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%eax, -116(%ebp)
L2045:
	movl	-116(%ebp), %eax
	movl	_GImGui, %ecx
	sall	$3, %eax
	testl	%ecx, %ecx
	je	L2047
	addl	$1, 188(%ecx)
	movl	%ecx, -120(%ebp)
	movss	%xmm2, -136(%ebp)
	movss	%xmm4, -132(%ebp)
	movss	%xmm1, -128(%ebp)
	movss	%xmm0, -124(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	84(%edi), %edx
	movss	-124(%ebp), %xmm0
	movl	%eax, %ecx
	movl	92(%edi), %eax
	movss	-128(%ebp), %xmm1
	movss	-132(%ebp), %xmm4
	movss	-136(%ebp), %xmm2
	testl	%eax, %eax
	je	L2048
	sall	$3, %edx
	movss	%xmm2, -140(%ebp)
	movss	%xmm4, -136(%ebp)
	movss	%xmm1, -132(%ebp)
	movss	%xmm0, -128(%ebp)
	movl	%ecx, (%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, -124(%ebp)
	call	_memcpy
	movl	92(%edi), %eax
	movl	-124(%ebp), %ecx
	movss	-128(%ebp), %xmm0
	movss	-132(%ebp), %xmm1
	testl	%eax, %eax
	movss	-136(%ebp), %xmm4
	movss	-140(%ebp), %xmm2
	je	L2095
	movl	-120(%ebp), %edx
	subl	$1, 188(%edx)
L2095:
	movl	%ecx, -136(%ebp)
	movss	%xmm2, -132(%ebp)
	movss	%xmm4, -128(%ebp)
	movss	%xmm1, -124(%ebp)
	movss	%xmm0, -120(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	84(%edi), %edx
	movl	-136(%ebp), %ecx
	movss	-132(%ebp), %xmm2
	movss	-128(%ebp), %xmm4
	movss	-124(%ebp), %xmm1
	movss	-120(%ebp), %xmm0
L2048:
	movl	-116(%ebp), %eax
	movl	%ecx, 92(%edi)
	movl	%eax, 88(%edi)
	jmp	L2046
	.p2align 4,,10
	.p2align 3
L2261:
	leal	1(%edx), %ecx
	testl	%edx, %edx
	jne	L2037
	movl	$8, %eax
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%eax, -116(%ebp)
L2038:
	movl	-116(%ebp), %eax
	movl	_GImGui, %ecx
	sall	$3, %eax
	testl	%ecx, %ecx
	je	L2040
	addl	$1, 188(%ecx)
	movl	%ecx, -120(%ebp)
	movss	%xmm6, -144(%ebp)
	movss	%xmm2, -140(%ebp)
	movss	%xmm4, -136(%ebp)
	movss	%xmm1, -132(%ebp)
	movss	%xmm0, -128(%ebp)
	movss	%xmm3, -124(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	84(%edi), %edx
	movss	-124(%ebp), %xmm3
	movl	%eax, %ecx
	movl	92(%edi), %eax
	movss	-128(%ebp), %xmm0
	movss	-132(%ebp), %xmm1
	movss	-136(%ebp), %xmm4
	testl	%eax, %eax
	movss	-140(%ebp), %xmm2
	movss	-144(%ebp), %xmm6
	je	L2041
	sall	$3, %edx
	movss	%xmm6, -148(%ebp)
	movss	%xmm2, -144(%ebp)
	movss	%xmm4, -140(%ebp)
	movss	%xmm1, -136(%ebp)
	movss	%xmm0, -132(%ebp)
	movss	%xmm3, -128(%ebp)
	movl	%ecx, (%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, -124(%ebp)
	call	_memcpy
	movl	92(%edi), %eax
	movl	-124(%ebp), %ecx
	movss	-128(%ebp), %xmm3
	movss	-132(%ebp), %xmm0
	testl	%eax, %eax
	movss	-136(%ebp), %xmm1
	movss	-140(%ebp), %xmm4
	movss	-144(%ebp), %xmm2
	movss	-148(%ebp), %xmm6
	je	L2097
	movl	-120(%ebp), %edx
	subl	$1, 188(%edx)
L2097:
	movl	%ecx, -144(%ebp)
	movss	%xmm6, -140(%ebp)
	movss	%xmm2, -136(%ebp)
	movss	%xmm4, -132(%ebp)
	movss	%xmm1, -128(%ebp)
	movss	%xmm0, -124(%ebp)
	movss	%xmm3, -120(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	84(%edi), %edx
	movl	-144(%ebp), %ecx
	movss	-140(%ebp), %xmm6
	movss	-136(%ebp), %xmm2
	movss	-132(%ebp), %xmm4
	movss	-128(%ebp), %xmm1
	movss	-124(%ebp), %xmm0
	movss	-120(%ebp), %xmm3
L2041:
	movl	-116(%ebp), %eax
	movl	%ecx, 92(%edi)
	movl	%eax, 88(%edi)
	jmp	L2039
	.p2align 4,,10
	.p2align 3
L1972:
	movss	18460(%edi), %xmm0
	cmpb	$0, -124(%ebp)
	jne	L2272
L1974:
	xorps	%xmm1, %xmm1
	andl	$16777215, %edx
	comiss	%xmm0, %xmm1
	ja	L1970
	comiss	LC13, %xmm0
	jbe	L2254
	movss	LC13, %xmm0
L2254:
	movss	LC15, %xmm3
L1976:
	mulss	LC14, %xmm0
	addss	%xmm3, %xmm0
	cvttss2sil	%xmm0, %eax
	sall	$24, %eax
	orl	%eax, %edx
	jmp	L1970
	.p2align 4,,10
	.p2align 3
L2044:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	cmpl	%ecx, %eax
	cmovge	%eax, %ecx
	movl	%ecx, -116(%ebp)
	cmpl	%ecx, %edx
	jge	L2043
	jmp	L2045
	.p2align 4,,10
	.p2align 3
L2037:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	cmpl	%ecx, %eax
	cmovge	%eax, %ecx
	movl	%ecx, -116(%ebp)
	cmpl	%ecx, %edx
	jge	L2036
	jmp	L2038
	.p2align 4,,10
	.p2align 3
L1965:
	movzbl	99(%edi), %eax
	movb	%al, -124(%ebp)
	testb	%al, %al
	je	L1964
	cmpl	$-1, 19100(%edi)
	je	L1966
	leal	19104(%edi), %eax
	movl	$LC49, (%esp)
	movl	%eax, 4(%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L1966
	movl	19084(%edi), %eax
	cmpl	%ebx, (%eax)
	sete	-124(%ebp)
	jmp	L1964
	.p2align 4,,10
	.p2align 3
L2272:
	movss	LC15, %xmm3
	mulss	%xmm3, %xmm0
	jmp	L1974
	.p2align 4,,10
	.p2align 3
L2040:
	movl	%edx, -144(%ebp)
	movss	%xmm6, -140(%ebp)
	movss	%xmm2, -136(%ebp)
	movss	%xmm4, -132(%ebp)
	movss	%xmm1, -128(%ebp)
	movss	%xmm0, -124(%ebp)
	movss	%xmm3, -120(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movss	-120(%ebp), %xmm3
	movss	-124(%ebp), %xmm0
	movl	%eax, %ecx
	movl	92(%edi), %eax
	movss	-128(%ebp), %xmm1
	movss	-132(%ebp), %xmm4
	movss	-136(%ebp), %xmm2
	testl	%eax, %eax
	movss	-140(%ebp), %xmm6
	movl	-144(%ebp), %edx
	je	L2041
	sall	$3, %edx
	movss	%xmm6, -144(%ebp)
	movss	%xmm2, -140(%ebp)
	movss	%xmm4, -136(%ebp)
	movss	%xmm1, -132(%ebp)
	movss	%xmm0, -128(%ebp)
	movss	%xmm3, -124(%ebp)
	movl	%ecx, (%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, -120(%ebp)
	call	_memcpy
	movl	92(%edi), %eax
	movl	-120(%ebp), %ecx
	movss	-124(%ebp), %xmm3
	movss	-128(%ebp), %xmm0
	movss	-132(%ebp), %xmm1
	movss	-136(%ebp), %xmm4
	movss	-140(%ebp), %xmm2
	movss	-144(%ebp), %xmm6
	jmp	L2097
	.p2align 4,,10
	.p2align 3
L2047:
	movl	%edx, -136(%ebp)
	movss	%xmm2, -132(%ebp)
	movss	%xmm4, -128(%ebp)
	movss	%xmm1, -124(%ebp)
	movss	%xmm0, -120(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movss	-120(%ebp), %xmm0
	movss	-124(%ebp), %xmm1
	movl	%eax, %ecx
	movl	92(%edi), %eax
	movss	-128(%ebp), %xmm4
	movss	-132(%ebp), %xmm2
	movl	-136(%ebp), %edx
	testl	%eax, %eax
	je	L2048
	sall	$3, %edx
	movss	%xmm2, -136(%ebp)
	movss	%xmm4, -132(%ebp)
	movss	%xmm1, -128(%ebp)
	movss	%xmm0, -124(%ebp)
	movl	%ecx, (%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, -120(%ebp)
	call	_memcpy
	movl	92(%edi), %eax
	movl	-120(%ebp), %ecx
	movss	-124(%ebp), %xmm0
	movss	-128(%ebp), %xmm1
	movss	-132(%ebp), %xmm4
	movss	-136(%ebp), %xmm2
	jmp	L2095
	.p2align 4,,10
	.p2align 3
L2271:
	leal	1(%edi), %edx
	testl	%edi, %edi
	jne	L2053
	movl	$8, %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, -116(%ebp)
L2054:
	movl	-116(%ebp), %eax
	movl	_GImGui, %edx
	sall	$3, %eax
	testl	%edx, %edx
	je	L2056
	addl	$1, 188(%edx)
	movl	%ecx, -124(%ebp)
	movl	%edx, -120(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-124(%ebp), %ecx
	movl	%eax, %edx
	movl	92(%ecx), %eax
	movl	84(%ecx), %edi
	testl	%eax, %eax
	je	L2057
	sall	$3, %edi
	movl	%ecx, -128(%ebp)
	movl	%edx, (%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, -124(%ebp)
	call	_memcpy
	movl	-128(%ebp), %ecx
	movl	-124(%ebp), %edx
	movl	92(%ecx), %eax
	testl	%eax, %eax
	je	L2093
	movl	-120(%ebp), %edi
	subl	$1, 188(%edi)
L2093:
	movl	%edx, -124(%ebp)
	movl	%ecx, -120(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-120(%ebp), %ecx
	movl	-124(%ebp), %edx
	movl	84(%ecx), %edi
L2057:
	movl	-116(%ebp), %eax
	movl	%edx, 92(%ecx)
	movl	%eax, 88(%ecx)
	jmp	L2055
	.p2align 4,,10
	.p2align 3
L2001:
	testb	%dl, %dl
	je	L2002
	cmpb	$0, 3536(%edi)
	je	L2003
	movss	48(%edi), %xmm0
	movss	14216(%edi), %xmm1
	mulss	%xmm0, %xmm0
	comiss	%xmm0, %xmm1
	jb	L2003
	movl	%esi, %edx
	movl	%ebx, %eax
	call	__ZN5ImGui28StartMouseMovingWindowOrNodeEP11ImGuiWindowP13ImGuiDockNodeb.constprop.0
	movl	_GImGui, %edi
	.p2align 4
	.p2align 3
L2003:
	movl	$23, %eax
	cmpb	$0, -73(%ebp)
	jne	L2006
	movzbl	160(%esi), %edx
	shrb	%dl
	andl	$1, %edx
	jne	L2006
	jmp	L2103
	.p2align 4,,10
	.p2align 3
L2053:
	movl	%edi, %eax
	shrl	$31, %eax
	addl	%edi, %eax
	sarl	%eax
	addl	%edi, %eax
	cmpl	%edx, %eax
	cmovge	%eax, %edx
	movl	%edx, -116(%ebp)
	cmpl	%edx, %edi
	jge	L2052
	jmp	L2054
L2264:
	movl	%eax, %esi
	movl	14704(%eax), %eax
	movl	676(%ebx), %edi
	movl	%eax, -40(%ebp)
	movl	14708(%esi), %eax
	movl	%eax, -36(%ebp)
	movl	14712(%esi), %eax
	movl	%eax, -32(%ebp)
	movl	14716(%esi), %eax
	movl	%eax, -28(%ebp)
	movss	14404(%esi), %xmm0
	leal	-40(%ebp), %eax
	mulss	14716(%esi), %xmm0
	movss	%xmm0, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	cmpl	$16777215, %eax
	jbe	L2062
	movss	72(%ebx), %xmm1
	movss	68(%ebx), %xmm0
	movaps	%xmm4, %xmm2
	movl	%edi, %ecx
	addss	76(%ebx), %xmm0
	movl	%eax, 4(%esp)
	leal	68(%ebx), %eax
	movl	%eax, (%esp)
	movss	%xmm6, 8(%esp)
	addss	80(%ebx), %xmm1
	movss	%xmm4, -96(%ebp)
	call	__ZN10ImDrawList7AddRectERK6ImVec2S2_jfif.part.0.constprop.0.isra.0
	movss	-96(%ebp), %xmm4
	subl	$12, %esp
	jmp	L2062
L2267:
	movl	$LC52, %ecx
	movl	$11, %edx
	movl	%edi, %eax
	call	__ZN5ImGui15DebugHookIdInfoEjiPKvS1_.constprop.0
	jmp	L1998
L2268:
	leal	1(%eax), %edx
	movl	%edx, -124(%ebp)
	testl	%eax, %eax
	jne	L2011
	movl	$8, %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, -124(%ebp)
L2012:
	addl	$1, 188(%edi)
	movl	%ecx, -120(%ebp)
	movl	$0, 4(%esp)
	movl	-124(%ebp), %eax
	sall	$3, %eax
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-120(%ebp), %ecx
	movl	%eax, %edx
	movl	92(%esi), %eax
	testl	%eax, %eax
	je	L2014
	movl	%ecx, -128(%ebp)
	movl	84(%esi), %ecx
	movl	%edx, (%esp)
	sall	$3, %ecx
	movl	%eax, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, -120(%ebp)
	call	_memcpy
	movl	92(%esi), %eax
	movl	-120(%ebp), %edx
	movl	-128(%ebp), %ecx
	testl	%eax, %eax
	je	L2015
	subl	$1, 188(%edi)
L2015:
	movl	%ecx, -128(%ebp)
	movl	%edx, -120(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-128(%ebp), %ecx
	movl	-120(%ebp), %edx
L2014:
	movl	-124(%ebp), %eax
	movl	%edx, 92(%esi)
	movl	%eax, 88(%esi)
	movl	84(%esi), %eax
	movl	%eax, -120(%ebp)
	jmp	L2013
L2270:
	leal	2(%eax), %edx
	testl	%edi, %edi
	jne	L2024
	movl	$8, %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, -88(%ebp)
L2025:
	movl	-88(%ebp), %eax
	movl	_GImGui, %edx
	sall	$3, %eax
	testl	%edx, %edx
	je	L2027
	addl	$1, 188(%edx)
	movl	%ecx, -120(%ebp)
	movl	%edx, -116(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	92(%esi), %edi
	movl	-120(%ebp), %ecx
	movl	%eax, %edx
	testl	%edi, %edi
	je	L2028
	movl	84(%esi), %eax
	movl	%ecx, -124(%ebp)
	movl	%edx, (%esp)
	sall	$3, %eax
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, -120(%ebp)
	call	_memcpy
	movl	92(%esi), %eax
	movl	-120(%ebp), %edx
	movl	-124(%ebp), %ecx
	testl	%eax, %eax
	je	L2099
	movl	-116(%ebp), %edi
	subl	$1, 188(%edi)
L2099:
	movl	%ecx, -120(%ebp)
	movl	%edx, -116(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-120(%ebp), %ecx
	movl	-116(%ebp), %edx
L2028:
	movl	-88(%ebp), %eax
	movl	84(%esi), %edi
	movl	%edx, 92(%esi)
	movl	%eax, 88(%esi)
	jmp	L2026
L2269:
	leal	2(%eax), %edx
	testl	%edi, %edi
	jne	L2017
	movl	$8, %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, -88(%ebp)
L2018:
	movl	-88(%ebp), %eax
	movl	_GImGui, %edx
	sall	$3, %eax
	testl	%edx, %edx
	je	L2020
	addl	$1, 188(%edx)
	movl	%ecx, -120(%ebp)
	movl	%edx, -116(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	92(%esi), %edi
	movl	-120(%ebp), %ecx
	movl	%eax, %edx
	testl	%edi, %edi
	je	L2021
	movl	84(%esi), %eax
	movl	%ecx, -124(%ebp)
	movl	%edx, (%esp)
	sall	$3, %eax
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, -120(%ebp)
	call	_memcpy
	movl	92(%esi), %eax
	movl	-120(%ebp), %edx
	movl	-124(%ebp), %ecx
	testl	%eax, %eax
	je	L2101
	movl	-116(%ebp), %edi
	subl	$1, 188(%edi)
L2101:
	movl	%ecx, -120(%ebp)
	movl	%edx, -116(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-120(%ebp), %ecx
	movl	-116(%ebp), %edx
L2021:
	movl	-88(%ebp), %eax
	movl	84(%esi), %edi
	movl	%edx, 92(%esi)
	movl	%eax, 88(%esi)
	jmp	L2019
L2056:
	movl	%ecx, -120(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-120(%ebp), %ecx
	movl	%eax, %edx
	movl	92(%ecx), %eax
	testl	%eax, %eax
	je	L2057
	sall	$3, %edi
	movl	%ecx, -124(%ebp)
	movl	%edx, (%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, -120(%ebp)
	call	_memcpy
	movl	-124(%ebp), %ecx
	movl	-120(%ebp), %edx
	movl	92(%ecx), %eax
	jmp	L2093
L2265:
	movl	84(%ecx), %eax
	movl	%eax, -108(%ebp)
	cmpl	88(%ecx), %eax
	je	L2273
L2068:
	imull	$28, %edi, %edi
	movss	-100(%ebp), %xmm0
	movss	-104(%ebp), %xmm1
	movl	-40(%ebp), %edx
	movl	92(%ecx), %eax
	movl	-108(%ebp), %esi
	mulss	__ZL17resize_border_def.lto_priv.0+20(%edi), %xmm0
	mulss	__ZL17resize_border_def.lto_priv.0+16(%edi), %xmm1
	movl	%edx, (%eax,%esi,8)
	movl	-36(%ebp), %edx
	movl	%edx, 4(%eax,%esi,8)
	addss	%xmm7, %xmm0
	addl	$1, 84(%ecx)
	movl	676(%ebx), %esi
	addss	%xmm6, %xmm1
	addss	%xmm3, %xmm0
	addss	-96(%ebp), %xmm0
	addss	%xmm3, %xmm1
	addss	-88(%ebp), %xmm1
	movss	%xmm0, -36(%ebp)
	movss	%xmm1, -40(%ebp)
	movl	84(%esi), %edi
	cmpl	88(%esi), %edi
	je	L2274
L2076:
	movl	-40(%ebp), %edx
	movl	92(%esi), %eax
	movl	%edx, (%eax,%edi,8)
	movl	-36(%ebp), %edx
	movl	%edx, 4(%eax,%edi,8)
	addl	$1, 84(%esi)
	leal	-40(%ebp), %esi
	jmp	L2077
L2017:
	movl	%edi, %eax
	shrl	$31, %eax
	addl	%edi, %eax
	sarl	%eax
	addl	%edi, %eax
	cmpl	%edx, %eax
	cmovge	%eax, %edx
	movl	%edx, -88(%ebp)
	cmpl	%edx, %edi
	jge	L2016
	jmp	L2018
L2011:
	movl	-120(%ebp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	movl	-124(%ebp), %eax
	cmpl	%eax, %edx
	cmovl	%eax, %edx
	movl	%edx, -124(%ebp)
	cmpl	%edx, -120(%ebp)
	jge	L2010
	jmp	L2012
L2024:
	movl	%edi, %eax
	shrl	$31, %eax
	addl	%edi, %eax
	sarl	%eax
	addl	%edi, %eax
	cmpl	%edx, %eax
	cmovge	%eax, %edx
	movl	%edx, -88(%ebp)
	cmpl	%edx, %edi
	jge	L2023
	jmp	L2025
L2274:
	leal	1(%edi), %eax
	movl	%eax, -96(%ebp)
	testl	%edi, %edi
	jne	L2078
	movl	$8, %eax
	cmpl	%eax, -96(%ebp)
	cmovge	-96(%ebp), %eax
	movl	%eax, -96(%ebp)
L2079:
	movl	-96(%ebp), %eax
	movl	_GImGui, %edx
	sall	$3, %eax
	testl	%edx, %edx
	je	L2081
	addl	$1, 188(%edx)
	movl	%edx, -100(%ebp)
	xorl	%edx, %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, -88(%ebp)
	movl	%eax, %edi
	movl	92(%esi), %eax
	testl	%eax, %eax
	je	L2082
	movl	84(%esi), %edx
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	leal	0(,%edx,8), %ecx
	movl	%ecx, 8(%esp)
	call	_memcpy
	movl	92(%esi), %eax
	testl	%eax, %eax
	je	L2089
	movl	-100(%ebp), %edx
	subl	$1, 188(%edx)
L2089:
	xorl	%edi, %edi
	movl	%eax, (%esp)
	movl	%edi, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L2082:
	movl	-88(%ebp), %eax
	movl	84(%esi), %edi
	movl	%eax, 92(%esi)
	movl	-96(%ebp), %eax
	movl	%eax, 88(%esi)
	jmp	L2076
L2273:
	leal	1(%eax), %edx
	movl	%edx, -112(%ebp)
	testl	%eax, %eax
	jne	L2069
	movl	$8, %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, -116(%ebp)
L2070:
	movl	-116(%ebp), %eax
	movl	_GImGui, %esi
	sall	$3, %eax
	cmpl	$0, _GImGui
	je	L2072
	addl	$1, 188(%esi)
	xorl	%edx, %edx
	movl	%ecx, -124(%ebp)
	movss	%xmm3, -128(%ebp)
	movss	%xmm7, -120(%ebp)
	movss	%xmm6, -108(%ebp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-124(%ebp), %ecx
	movss	-108(%ebp), %xmm6
	movss	-120(%ebp), %xmm7
	movss	-128(%ebp), %xmm3
	movl	%eax, -112(%ebp)
	movl	92(%ecx), %edx
	testl	%edx, %edx
	je	L2073
	movl	84(%ecx), %eax
	movl	%ecx, -108(%ebp)
	movss	%xmm7, -124(%ebp)
	sall	$3, %eax
	movss	%xmm6, -120(%ebp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	-108(%ebp), %ecx
	movss	-120(%ebp), %xmm6
	movss	-124(%ebp), %xmm7
	movss	-128(%ebp), %xmm3
	movl	92(%ecx), %eax
	testl	%eax, %eax
	je	L2091
	subl	$1, 188(%esi)
L2091:
	movl	%ecx, -124(%ebp)
	xorl	%ecx, %ecx
	movss	%xmm3, -128(%ebp)
	movss	%xmm7, -120(%ebp)
	movss	%xmm6, -108(%ebp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movss	-128(%ebp), %xmm3
	movl	-124(%ebp), %ecx
	movss	-120(%ebp), %xmm7
	movss	-108(%ebp), %xmm6
L2073:
	movl	-112(%ebp), %eax
	movl	%eax, 92(%ecx)
	movl	-116(%ebp), %eax
	movl	%eax, 88(%ecx)
	movl	84(%ecx), %eax
	movl	%eax, -108(%ebp)
	jmp	L2068
L2020:
	movl	%ecx, -116(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-116(%ebp), %ecx
	movl	%eax, %edx
	movl	92(%esi), %eax
	testl	%eax, %eax
	je	L2021
	sall	$3, %edi
	movl	%ecx, -120(%ebp)
	movl	%edx, (%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, -116(%ebp)
	call	_memcpy
	movl	92(%esi), %eax
	movl	-116(%ebp), %edx
	movl	-120(%ebp), %ecx
	jmp	L2101
L2027:
	movl	%ecx, -116(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-116(%ebp), %ecx
	movl	%eax, %edx
	movl	92(%esi), %eax
	testl	%eax, %eax
	je	L2028
	sall	$3, %edi
	movl	%ecx, -120(%ebp)
	movl	%edx, (%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, -116(%ebp)
	call	_memcpy
	movl	92(%esi), %eax
	movl	-116(%ebp), %edx
	movl	-120(%ebp), %ecx
	jmp	L2099
L2069:
	movl	-108(%ebp), %eax
	movl	$2, %esi
	cltd
	idivl	%esi
	movl	-108(%ebp), %esi
	movl	-112(%ebp), %edx
	addl	%esi, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, -116(%ebp)
	cmpl	%eax, %esi
	jge	L2068
	jmp	L2070
L2078:
	movl	%edi, %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	-96(%ebp), %edx
	movl	%edx, %ecx
	addl	%edi, %eax
	cmpl	%edx, %eax
	cmovge	%eax, %ecx
	movl	%ecx, -96(%ebp)
	cmpl	%ecx, %edi
	jge	L2076
	jmp	L2079
L2072:
	xorl	%edx, %edx
	movl	%ecx, -128(%ebp)
	movss	%xmm3, -132(%ebp)
	movss	%xmm7, -124(%ebp)
	movss	%xmm6, -120(%ebp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-128(%ebp), %ecx
	movss	-120(%ebp), %xmm6
	movss	-124(%ebp), %xmm7
	movss	-132(%ebp), %xmm3
	movl	%eax, -112(%ebp)
	movl	92(%ecx), %eax
	testl	%eax, %eax
	je	L2073
	movl	-108(%ebp), %edx
	movl	%ecx, -128(%ebp)
	movss	%xmm3, -132(%ebp)
	sall	$3, %edx
	movss	%xmm7, -124(%ebp)
	movss	%xmm6, -120(%ebp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	-128(%ebp), %ecx
	movss	-120(%ebp), %xmm6
	movss	-124(%ebp), %xmm7
	movss	-132(%ebp), %xmm3
	movl	92(%ecx), %eax
	jmp	L2091
L2081:
	xorl	%ecx, %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, -88(%ebp)
	movl	92(%esi), %eax
	testl	%eax, %eax
	je	L2082
	sall	$3, %edi
	movl	%eax, 4(%esp)
	movl	%edi, 8(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	92(%esi), %eax
	jmp	L2089
	.cfi_endproc
LFE174:
	.section .rdata,"dr"
LC54:
	.ascii "#COLLAPSE\0"
	.text
	.p2align 4
	.globl	__ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.constprop.0
	.def	__ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.constprop.0;	.scl	2;	.type	32;	.endef
__ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.constprop.0:
LFB196:
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
	movl	%eax, %edi
	pushl	%esi
	pushl	%ebx
	subl	$152, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	_GImGui, %ebx
	movl	12(%eax), %eax
	movl	%edx, -96(%ebp)
	movl	%ecx, -100(%ebp)
	movl	18284(%ebx), %esi
	movl	%eax, -116(%ebp)
	movl	%esi, -104(%ebp)
	testb	$32, %al
	je	L2276
	movl	$1, 384(%edi)
	leal	-56(%ebp), %eax
	movss	14464(%ebx), %xmm5
	movss	15516(%ebx), %xmm3
	movl	%eax, -112(%ebp)
	movss	%xmm5, -88(%ebp)
	movss	%xmm3, -108(%ebp)
	movss	%xmm5, -92(%ebp)
L2277:
	movl	-104(%ebp), %eax
	movl	-116(%ebp), %esi
	movl	$0, 384(%edi)
	movl	$0x00000000, -104(%ebp)
	movl	%eax, 18284(%ebx)
	andl	$1048576, %esi
	je	L2324
	movss	-108(%ebp), %xmm3
	mulss	LC59, %xmm3
	movss	%xmm3, -104(%ebp)
L2324:
	movss	LC33, %xmm0
	movl	-100(%ebp), %eax
	xorl	%edx, %edx
	movl	$1, %ecx
	call	__ZN5ImGui12CalcTextSizeEPKcS1_bf
	xorps	%xmm0, %xmm0
	movss	-88(%ebp), %xmm6
	movss	14488(%ebx), %xmm7
	movl	%edx, -116(%ebp)
	addss	-116(%ebp), %xmm0
	movl	%eax, -108(%ebp)
	movss	-108(%ebp), %xmm5
	addss	-104(%ebp), %xmm5
	movss	%xmm7, -108(%ebp)
	movss	%xmm0, -76(%ebp)
	movss	14464(%ebx), %xmm0
	comiss	%xmm0, %xmm6
	movss	%xmm5, -116(%ebp)
	movss	%xmm5, -80(%ebp)
	jbe	L2325
	addss	%xmm7, %xmm6
	movss	%xmm6, -88(%ebp)
L2325:
	movss	-92(%ebp), %xmm4
	comiss	%xmm0, %xmm4
	jbe	L2327
	addss	-108(%ebp), %xmm4
	movss	%xmm4, -92(%ebp)
L2327:
	movss	14436(%ebx), %xmm5
	xorps	%xmm1, %xmm1
	movl	-96(%ebp), %eax
	comiss	%xmm1, %xmm5
	movss	8(%eax), %xmm2
	movss	(%eax), %xmm0
	jbe	L2332
	movss	LC13, %xmm1
	comiss	%xmm5, %xmm1
	ja	L2385
L2332:
	addss	-88(%ebp), %xmm0
	movl	-96(%ebp), %eax
	movaps	%xmm2, %xmm4
	subss	-92(%ebp), %xmm4
	movss	4(%eax), %xmm6
	movss	12(%eax), %xmm3
	movaps	%xmm0, %xmm1
	unpcklps	%xmm6, %xmm1
	movaps	%xmm4, %xmm7
	movss	%xmm6, -88(%ebp)
	unpcklps	%xmm3, %xmm7
	movaps	%xmm1, %xmm6
	movlhps	%xmm7, %xmm6
	movups	%xmm6, -72(%ebp)
	movss	-108(%ebp), %xmm6
	addss	%xmm4, %xmm6
	movaps	%xmm6, %xmm7
	minss	%xmm2, %xmm7
	movaps	%xmm7, %xmm2
	unpcklps	%xmm3, %xmm2
	movlhps	%xmm2, %xmm1
	movups	%xmm1, -56(%ebp)
	testl	%esi, %esi
	je	L2336
	movaps	%xmm4, %xmm1
	movss	-116(%ebp), %xmm2
	subss	%xmm0, %xmm1
	subss	%xmm2, %xmm1
	mulss	%xmm5, %xmm1
	addss	%xmm0, %xmm1
	addss	%xmm2, %xmm1
	comiss	%xmm1, %xmm0
	jbe	L2386
L2336:
	movl	-112(%ebp), %edi
	leal	-80(%ebp), %ecx
	addl	$14436, %ebx
	leal	-72(%ebp), %eax
	movl	%ebx, 4(%esp)
	leal	-64(%ebp), %edx
	movl	%edi, 8(%esp)
	movl	%ecx, (%esp)
	movl	-100(%ebp), %ecx
	call	__ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.constprop.0
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
L2276:
	.cfi_restore_state
	movl	-104(%ebp), %edx
	movl	14444(%ebx), %eax
	orl	$16, %edx
	movl	%edx, 18284(%ebx)
	movl	$1, 384(%edi)
	movss	15516(%ebx), %xmm5
	movss	14464(%ebx), %xmm0
	movss	%xmm5, -108(%ebp)
	cmpl	$-1, %eax
	je	L2347
	movl	14444(%ebx), %eax
	cmpl	$1, %eax
	je	L2387
	testl	%eax, %eax
	jne	L2348
	movl	-96(%ebp), %eax
	movss	-108(%ebp), %xmm5
	movss	%xmm0, -92(%ebp)
	movss	(%eax), %xmm1
	addss	%xmm0, %xmm5
	movss	4(%eax), %xmm3
	addss	%xmm0, %xmm1
	movss	%xmm5, -88(%ebp)
	subss	%xmm0, %xmm1
L2279:
	movl	284(%edi), %edx
	movl	292(%edi), %eax
	movl	%ebx, %esi
	movl	-4(%eax,%edx,4), %ecx
	xorl	%edx, %edx
	movl	$LC54, %eax
	call	__Z9ImHashStrPKcjj
	movss	-108(%ebp), %xmm4
	movl	%eax, -124(%ebp)
	movl	%eax, %ecx
	movl	(%edi), %eax
	cmpl	16200(%eax), %ecx
	je	L2388
L2280:
	movaps	%xmm1, %xmm2
	addss	%xmm0, %xmm0
	movl	16148(%esi), %eax
	movl	-124(%ebp), %edx
	addss	%xmm4, %xmm2
	addss	%xmm3, %xmm4
	unpcklps	%xmm3, %xmm1
	xorl	%ecx, %ecx
	movl	%eax, -120(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, -112(%ebp)
	addss	%xmm2, %xmm0
	movss	14468(%esi), %xmm2
	addss	%xmm2, %xmm2
	addss	%xmm4, %xmm2
	unpcklps	%xmm2, %xmm0
	movlhps	%xmm0, %xmm1
	movups	%xmm1, -56(%ebp)
	call	__ZN5ImGui7ItemAddERK6ImRectjPS1_i.constprop.0
	leal	-81(%ebp), %eax
	movl	$0, 4(%esp)
	leal	-82(%ebp), %ecx
	movl	%eax, (%esp)
	movl	-124(%ebp), %edx
	movl	-112(%ebp), %eax
	call	__ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	movzbl	-81(%ebp), %ecx
	movb	%al, -133(%ebp)
	movzbl	-82(%ebp), %eax
	movb	%al, -132(%ebp)
	testb	%cl, %cl
	je	L2281
	testb	%al, %al
	je	L2281
	movl	_GImGui, %edx
	movl	14992(%edx), %eax
	movl	%eax, -40(%ebp)
	movl	14996(%edx), %eax
	movl	%eax, -36(%ebp)
	movl	15000(%edx), %eax
	movl	%eax, -32(%ebp)
	movl	15004(%edx), %eax
	movl	%eax, -28(%ebp)
	movss	14404(%edx), %xmm3
	leal	-40(%ebp), %eax
	movss	15004(%edx), %xmm0
	movl	%eax, -124(%ebp)
	mulss	%xmm3, %xmm0
	movss	%xmm0, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movl	_GImGui, %edx
	movl	%eax, -140(%ebp)
	movl	14624(%edx), %eax
	movl	%eax, -40(%ebp)
	movl	14628(%edx), %eax
	movl	%eax, -36(%ebp)
	movl	14632(%edx), %eax
	movl	%eax, -32(%ebp)
	movl	14636(%edx), %eax
	movl	%eax, -28(%ebp)
	mulss	14636(%edx), %xmm3
	movl	-124(%ebp), %eax
	movss	%xmm3, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movl	%eax, -128(%ebp)
	movl	-120(%ebp), %eax
	movl	676(%eax), %edx
L2283:
	movss	-52(%ebp), %xmm1
	movss	-56(%ebp), %xmm0
	xorps	%xmm6, %xmm6
	movss	-44(%ebp), %xmm2
	movss	-48(%ebp), %xmm3
	movss	LC15, %xmm5
	movss	15516(%esi), %xmm4
	addss	%xmm1, %xmm2
	addss	%xmm0, %xmm3
	mulss	%xmm5, %xmm2
	mulss	%xmm5, %xmm3
	subss	%xmm5, %xmm2
	addss	%xmm6, %xmm3
	movss	%xmm2, -36(%ebp)
	movss	%xmm3, -40(%ebp)
	cmpl	$16777215, -140(%ebp)
	jbe	L2284
	mulss	%xmm5, %xmm4
	addss	LC13, %xmm4
	comiss	%xmm4, %xmm5
	ja	L2284
	movss	%xmm5, -132(%ebp)
	movaps	%xmm6, %xmm1
	movaps	%xmm4, %xmm0
	movss	LC55, %xmm2
	movl	$11, 4(%esp)
	movl	-124(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	%edx, %ecx
	movl	%edx, -124(%ebp)
	call	__ZN10ImDrawList11_PathArcToNERK6ImVec2fffi
	movl	-124(%ebp), %edx
	movss	-132(%ebp), %xmm5
	subl	$8, %esp
	movl	84(%edx), %eax
	cmpl	$2, %eax
	jle	L2289
	movl	-140(%ebp), %ecx
	movl	%eax, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	92(%edx), %eax
	movl	%edx, %ecx
	movl	%eax, (%esp)
	call	__ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij.part.0
	movss	-132(%ebp), %xmm5
	movl	-124(%ebp), %edx
	subl	$12, %esp
L2289:
	movl	-120(%ebp), %eax
	movl	$0, 84(%edx)
	movss	-52(%ebp), %xmm1
	movss	-56(%ebp), %xmm0
	movl	676(%eax), %edx
L2284:
	movl	44(%edx), %eax
	addss	14464(%esi), %xmm0
	xorps	%xmm7, %xmm7
	movss	LC56, %xmm2
	addss	14468(%esi), %xmm1
	movss	LC57, %xmm6
	movss	12(%eax), %xmm4
	movl	-120(%ebp), %eax
	mulss	%xmm4, %xmm2
	mulss	%xmm5, %xmm4
	mulss	%xmm2, %xmm6
	mulss	%xmm2, %xmm7
	addss	%xmm4, %xmm0
	addss	%xmm4, %xmm1
	mulss	LC58, %xmm2
	movaps	%xmm6, %xmm3
	xorps	LC45, %xmm3
	cmpb	$0, 226(%eax)
	jne	L2290
	movaps	%xmm2, %xmm5
	movaps	%xmm3, %xmm4
	movss	%xmm6, -124(%ebp)
	xorps	LC45, %xmm5
	movaps	%xmm7, %xmm6
	movss	-124(%ebp), %xmm7
	movaps	%xmm2, %xmm3
	movaps	%xmm4, %xmm2
L2346:
	addss	%xmm0, %xmm3
	addss	%xmm1, %xmm4
	addss	%xmm0, %xmm5
	addss	%xmm1, %xmm2
	addss	%xmm6, %xmm0
	addss	%xmm7, %xmm1
	movss	%xmm3, -80(%ebp)
	movss	%xmm4, -76(%ebp)
	movss	%xmm5, -72(%ebp)
	movss	%xmm2, -68(%ebp)
	movss	%xmm0, -40(%ebp)
	movss	%xmm1, -36(%ebp)
	cmpl	$16777215, -128(%ebp)
	jbe	L2292
	movl	84(%edx), %esi
	cmpl	88(%edx), %esi
	je	L2389
L2293:
	movl	92(%edx), %ecx
L2296:
	leal	(%ecx,%esi,8), %eax
	movl	-40(%ebp), %ecx
	movl	%ecx, (%eax)
	movl	-36(%ebp), %ecx
	movl	%ecx, 4(%eax)
	movl	84(%edx), %eax
	leal	1(%eax), %esi
	movl	%esi, 84(%edx)
	cmpl	%esi, 88(%edx)
	je	L2390
L2302:
	movl	92(%edx), %ecx
L2305:
	leal	(%ecx,%esi,8), %eax
	movl	-72(%ebp), %ecx
	movl	%ecx, (%eax)
	movl	-68(%ebp), %ecx
	movl	%ecx, 4(%eax)
	movl	84(%edx), %eax
	leal	1(%eax), %esi
	movl	%esi, 84(%edx)
	cmpl	%esi, 88(%edx)
	je	L2391
L2311:
	movl	92(%edx), %ecx
L2314:
	leal	(%ecx,%esi,8), %eax
	movl	-80(%ebp), %ecx
	movl	%ecx, (%eax)
	movl	-76(%ebp), %ecx
	movl	%ecx, 4(%eax)
	movl	84(%edx), %eax
	addl	$1, %eax
	movl	%eax, 84(%edx)
	cmpl	$2, %eax
	jle	L2320
	movl	-128(%ebp), %esi
	movl	%eax, 4(%esp)
	movl	%edx, %ecx
	movl	%esi, 8(%esp)
	movl	92(%edx), %eax
	movl	%eax, (%esp)
	movl	%edx, -124(%ebp)
	call	__ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij.part.0
	movl	-124(%ebp), %edx
	subl	$12, %esp
L2320:
	movl	$0, 84(%edx)
L2292:
	movl	_GImGui, %eax
	movl	16224(%eax), %edx
	testl	%edx, %edx
	jne	L2392
L2321:
	cmpb	$0, -133(%ebp)
	je	L2277
	movb	$1, 227(%edi)
	jmp	L2277
	.p2align 4,,10
	.p2align 3
L2386:
	minss	%xmm1, %xmm4
	addss	-88(%ebp), %xmm3
	mulss	LC15, %xmm3
	comiss	%xmm0, %xmm4
	jbe	L2336
	movl	_GImGui, %eax
	movss	%xmm7, -96(%ebp)
	movss	%xmm4, -88(%ebp)
	movl	14624(%eax), %edx
	movl	%edx, -40(%ebp)
	movl	14628(%eax), %edx
	movl	%edx, -36(%ebp)
	movl	14632(%eax), %edx
	movl	%edx, -32(%ebp)
	movl	14636(%eax), %edx
	movl	%edx, -28(%ebp)
	movss	14636(%eax), %xmm0
	mulss	14404(%eax), %xmm0
	leal	-40(%ebp), %eax
	movss	%xmm0, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movl	-88(%ebp), %edx
	movss	%xmm4, -92(%ebp)
	movl	%eax, %ecx
	movl	676(%edi), %eax
	movl	%ecx, (%esp)
	movss	%xmm3, -88(%ebp)
	movl	-88(%ebp), %ecx
	call	__ZN5ImGui12RenderBulletEP10ImDrawList6ImVec2j
	movss	-92(%ebp), %xmm2
	movss	-96(%ebp), %xmm7
	movss	LC15, %xmm0
	mulss	-104(%ebp), %xmm0
	cvttss2sil	%xmm0, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	subss	%xmm0, %xmm2
	minss	%xmm2, %xmm7
	movss	%xmm7, -48(%ebp)
	jmp	L2336
	.p2align 4,,10
	.p2align 3
L2385:
	movaps	%xmm5, %xmm3
	subss	LC15, %xmm3
	movss	%xmm3, -120(%ebp)
	flds	-120(%ebp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	fstps	-120(%ebp)
	movss	-120(%ebp), %xmm3
	movaps	%xmm1, %xmm4
	addss	%xmm3, %xmm3
	subss	%xmm3, %xmm4
	xorps	%xmm3, %xmm3
	comiss	%xmm4, %xmm3
	ja	L2333
	movaps	%xmm1, %xmm3
	cmpltss	%xmm4, %xmm3
	andps	%xmm3, %xmm1
	andnps	%xmm4, %xmm3
	orps	%xmm1, %xmm3
L2333:
	movaps	%xmm2, %xmm1
	movss	-88(%ebp), %xmm6
	movss	-92(%ebp), %xmm4
	subss	%xmm0, %xmm1
	subss	%xmm6, %xmm1
	subss	%xmm4, %xmm1
	movaps	%xmm1, %xmm7
	movaps	%xmm4, %xmm1
	subss	-116(%ebp), %xmm7
	cmpless	%xmm6, %xmm1
	movss	%xmm7, -88(%ebp)
	movaps	%xmm4, %xmm7
	movaps	%xmm6, %xmm4
	andps	%xmm1, %xmm4
	andnps	%xmm7, %xmm1
	orps	%xmm4, %xmm1
	minss	-88(%ebp), %xmm1
	movaps	%xmm7, %xmm4
	mulss	%xmm3, %xmm1
	movaps	%xmm1, %xmm3
	cmpless	%xmm6, %xmm3
	andps	%xmm3, %xmm6
	andnps	%xmm1, %xmm3
	orps	%xmm6, %xmm3
	movss	%xmm3, -88(%ebp)
	movaps	%xmm1, %xmm3
	cmpless	%xmm7, %xmm3
	andps	%xmm3, %xmm4
	andnps	%xmm1, %xmm3
	orps	%xmm4, %xmm3
	movss	%xmm3, -92(%ebp)
	jmp	L2332
	.p2align 4,,10
	.p2align 3
L2281:
	movzbl	-132(%ebp), %eax
	movl	_GImGui, %edx
	movb	%cl, -144(%ebp)
	addl	$34, %eax
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
	movss	14404(%edx), %xmm3
	leal	-40(%ebp), %ecx
	movss	14428(%eax), %xmm0
	movl	%ecx, %eax
	movl	%ecx, -124(%ebp)
	mulss	%xmm3, %xmm0
	movss	%xmm0, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movl	_GImGui, %edx
	movl	%eax, -140(%ebp)
	movl	14624(%edx), %eax
	movl	%eax, -40(%ebp)
	movl	14628(%edx), %eax
	movl	%eax, -36(%ebp)
	movl	14632(%edx), %eax
	movl	%eax, -32(%ebp)
	movl	14636(%edx), %eax
	movl	%eax, -28(%ebp)
	mulss	14636(%edx), %xmm3
	movl	-124(%ebp), %eax
	movss	%xmm3, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movl	-120(%ebp), %ecx
	movl	%eax, -128(%ebp)
	movl	676(%ecx), %edx
	cmpb	$0, -144(%ebp)
	jne	L2283
	cmpb	$0, -132(%ebp)
	jne	L2283
	movss	-56(%ebp), %xmm0
	movss	-52(%ebp), %xmm1
	movss	LC15, %xmm5
	jmp	L2284
	.p2align 4,,10
	.p2align 3
L2387:
	movl	-96(%ebp), %eax
	addss	%xmm0, %xmm5
	movss	%xmm0, -88(%ebp)
	movss	8(%eax), %xmm1
	movss	4(%eax), %xmm3
	movss	%xmm5, -92(%ebp)
	subss	%xmm5, %xmm1
	subss	%xmm0, %xmm1
	jmp	L2279
	.p2align 4,,10
	.p2align 3
L2290:
	movaps	%xmm2, %xmm4
	movaps	%xmm3, %xmm5
	xorps	LC45, %xmm4
	jmp	L2346
	.p2align 4,,10
	.p2align 3
L2392:
	cmpl	18312(%eax), %edx
	jne	L2321
	cmpb	$0, 3536(%eax)
	je	L2321
	movss	48(%eax), %xmm0
	movss	14216(%eax), %xmm1
	mulss	%xmm0, %xmm0
	comiss	%xmm0, %xmm1
	jb	L2321
	movl	-120(%ebp), %eax
	xorl	%edx, %edx
	call	__ZN5ImGui28StartMouseMovingWindowOrNodeEP11ImGuiWindowP13ImGuiDockNodeb.constprop.0
	jmp	L2321
	.p2align 4,,10
	.p2align 3
L2348:
	xorps	%xmm3, %xmm3
	movss	%xmm0, -92(%ebp)
	movss	%xmm0, -88(%ebp)
	movaps	%xmm3, %xmm1
	jmp	L2279
	.p2align 4,,10
	.p2align 3
L2388:
	movl	-124(%ebp), %eax
	movl	$LC54, %ecx
	movl	$11, %edx
	movss	%xmm1, -120(%ebp)
	movss	%xmm3, -112(%ebp)
	call	__ZN5ImGui15DebugHookIdInfoEjiPKvS1_.constprop.0
	movss	-120(%ebp), %xmm1
	movss	-112(%ebp), %xmm3
	movl	_GImGui, %esi
	movss	14464(%esi), %xmm0
	movss	15516(%esi), %xmm4
	jmp	L2280
	.p2align 4,,10
	.p2align 3
L2389:
	leal	1(%esi), %ecx
	testl	%esi, %esi
	jne	L2294
	movl	$8, %eax
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%eax, -124(%ebp)
L2295:
	movl	-124(%ebp), %eax
	movl	_GImGui, %ecx
	sall	$3, %eax
	testl	%ecx, %ecx
	je	L2297
	addl	$1, 188(%ecx)
	movl	%edx, -140(%ebp)
	movl	%ecx, -132(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-140(%ebp), %edx
	movl	%eax, %ecx
	movl	92(%edx), %eax
	movl	84(%edx), %esi
	testl	%eax, %eax
	je	L2298
	sall	$3, %esi
	movl	%edx, -144(%ebp)
	movl	%ecx, (%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, -140(%ebp)
	call	_memcpy
	movl	-144(%ebp), %edx
	movl	-140(%ebp), %ecx
	movl	92(%edx), %eax
	testl	%eax, %eax
	je	L2300
	movl	-132(%ebp), %esi
	subl	$1, 188(%esi)
L2300:
	movl	%ecx, -140(%ebp)
	movl	%edx, -132(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-132(%ebp), %edx
	movl	-140(%ebp), %ecx
	movl	84(%edx), %esi
L2298:
	movl	-124(%ebp), %eax
	movl	%ecx, 92(%edx)
	movl	%eax, 88(%edx)
	jmp	L2296
	.p2align 4,,10
	.p2align 3
L2391:
	addl	$2, %eax
	testl	%esi, %esi
	jne	L2312
	movl	$8, %ecx
	cmpl	%ecx, %eax
	cmovge	%eax, %ecx
	movl	%ecx, -124(%ebp)
L2313:
	movl	-124(%ebp), %eax
	movl	_GImGui, %ecx
	sall	$3, %eax
	testl	%ecx, %ecx
	je	L2315
	addl	$1, 188(%ecx)
	movl	%edx, -140(%ebp)
	movl	%ecx, -132(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-140(%ebp), %edx
	movl	%eax, %ecx
	movl	92(%edx), %eax
	movl	84(%edx), %esi
	testl	%eax, %eax
	je	L2316
	sall	$3, %esi
	movl	%edx, -144(%ebp)
	movl	%ecx, (%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, -140(%ebp)
	call	_memcpy
	movl	-144(%ebp), %edx
	movl	-140(%ebp), %ecx
	movl	92(%edx), %eax
	testl	%eax, %eax
	je	L2318
	movl	-132(%ebp), %esi
	subl	$1, 188(%esi)
L2318:
	movl	%ecx, -140(%ebp)
	movl	%edx, -132(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-132(%ebp), %edx
	movl	-140(%ebp), %ecx
	movl	84(%edx), %esi
L2316:
	movl	-124(%ebp), %eax
	movl	%ecx, 92(%edx)
	movl	%eax, 88(%edx)
	jmp	L2314
	.p2align 4,,10
	.p2align 3
L2390:
	addl	$2, %eax
	testl	%esi, %esi
	jne	L2303
	movl	$8, %ecx
	cmpl	%ecx, %eax
	cmovge	%eax, %ecx
	movl	%ecx, -124(%ebp)
L2304:
	movl	-124(%ebp), %eax
	movl	_GImGui, %ecx
	sall	$3, %eax
	testl	%ecx, %ecx
	je	L2306
	addl	$1, 188(%ecx)
	movl	%edx, -140(%ebp)
	movl	%ecx, -132(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-140(%ebp), %edx
	movl	%eax, %ecx
	movl	92(%edx), %eax
	movl	84(%edx), %esi
	testl	%eax, %eax
	je	L2307
	sall	$3, %esi
	movl	%edx, -144(%ebp)
	movl	%ecx, (%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, -140(%ebp)
	call	_memcpy
	movl	-144(%ebp), %edx
	movl	-140(%ebp), %ecx
	movl	92(%edx), %eax
	testl	%eax, %eax
	je	L2309
	movl	-132(%ebp), %esi
	subl	$1, 188(%esi)
L2309:
	movl	%ecx, -140(%ebp)
	movl	%edx, -132(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-132(%ebp), %edx
	movl	-140(%ebp), %ecx
	movl	84(%edx), %esi
L2307:
	movl	-124(%ebp), %eax
	movl	%ecx, 92(%edx)
	movl	%eax, 88(%edx)
	jmp	L2305
	.p2align 4,,10
	.p2align 3
L2303:
	movl	%esi, %ecx
	shrl	$31, %ecx
	addl	%esi, %ecx
	sarl	%ecx
	addl	%esi, %ecx
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%eax, -124(%ebp)
	cmpl	%eax, %esi
	jge	L2302
	jmp	L2304
	.p2align 4,,10
	.p2align 3
L2312:
	movl	%esi, %ecx
	shrl	$31, %ecx
	addl	%esi, %ecx
	sarl	%ecx
	addl	%esi, %ecx
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%eax, -124(%ebp)
	cmpl	%eax, %esi
	jge	L2311
	jmp	L2313
	.p2align 4,,10
	.p2align 3
L2294:
	movl	%esi, %eax
	shrl	$31, %eax
	addl	%esi, %eax
	sarl	%eax
	addl	%esi, %eax
	cmpl	%ecx, %eax
	cmovge	%eax, %ecx
	movl	%ecx, -124(%ebp)
	cmpl	%ecx, %esi
	jge	L2293
	jmp	L2295
L2297:
	movl	%edx, -132(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-132(%ebp), %edx
	movl	%eax, %ecx
	movl	92(%edx), %eax
	testl	%eax, %eax
	je	L2298
	sall	$3, %esi
	movl	%edx, -140(%ebp)
	movl	%ecx, (%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, -132(%ebp)
	call	_memcpy
	movl	-140(%ebp), %edx
	movl	-132(%ebp), %ecx
	movl	92(%edx), %eax
	jmp	L2300
L2315:
	movl	%edx, -132(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-132(%ebp), %edx
	movl	%eax, %ecx
	movl	92(%edx), %eax
	testl	%eax, %eax
	je	L2316
	sall	$3, %esi
	movl	%edx, -140(%ebp)
	movl	%ecx, (%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, -132(%ebp)
	call	_memcpy
	movl	-140(%ebp), %edx
	movl	-132(%ebp), %ecx
	movl	92(%edx), %eax
	jmp	L2318
L2306:
	movl	%edx, -132(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-132(%ebp), %edx
	movl	%eax, %ecx
	movl	92(%edx), %eax
	testl	%eax, %eax
	je	L2307
	sall	$3, %esi
	movl	%edx, -140(%ebp)
	movl	%ecx, (%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, -132(%ebp)
	call	_memcpy
	movl	-140(%ebp), %edx
	movl	-132(%ebp), %ecx
	movl	92(%edx), %eax
	jmp	L2309
L2347:
	leal	-56(%ebp), %eax
	movss	%xmm0, -92(%ebp)
	movl	%eax, -112(%ebp)
	movss	%xmm0, -88(%ebp)
	jmp	L2277
	.cfi_endproc
LFE196:
	.p2align 4
	.globl	__ZN5ImGui30UpdateWindowParentAndRootLinksEP11ImGuiWindowiS1_
	.def	__ZN5ImGui30UpdateWindowParentAndRootLinksEP11ImGuiWindowiS1_;	.scl	2;	.type	32;	.endef
__ZN5ImGui30UpdateWindowParentAndRootLinksEP11ImGuiWindowiS1_:
LFB206:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	movl	%eax, %ebx
	movl	%ecx, %eax
	andl	$-16, %esp
	subl	$16, %esp
	movl	%ecx, 824(%ebx)
	movl	%ebx, 12(%esp)
	movss	12(%esp), %xmm0
	movl	%ebx, 848(%ebx)
	shufps	$0, %xmm0, %xmm0
	movups	%xmm0, 832(%ebx)
	testl	%ecx, %ecx
	je	L2394
	movl	%edx, %ecx
	andl	$50331648, %ecx
	cmpl	$16777216, %ecx
	je	L2429
	movl	%edx, %ecx
	andl	$134217728, %ecx
	testl	$67108864, %edx
	je	L2400
L2398:
	movl	836(%eax), %edx
	movl	%edx, 836(%ebx)
L2427:
	testl	%ecx, %ecx
	jne	L2394
L2399:
	movl	844(%eax), %edx
	movl	%edx, 844(%ebx)
	.p2align 4
	.p2align 3
L2394:
	testb	$-128, 14(%ebx)
	je	L2393
	movl	%eax, 848(%ebx)
	testb	$-128, 14(%eax)
	je	L2393
	.p2align 5
	.p2align 4
	.p2align 3
L2402:
	movl	824(%eax), %eax
	movl	%eax, 848(%ebx)
	testb	$-128, 14(%eax)
	jne	L2402
L2393:
	movl	-4(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L2400:
	.cfi_restore_state
	testl	%ecx, %ecx
	jne	L2394
	andl	$83886080, %edx
	je	L2394
	jmp	L2399
	.p2align 4,,10
	.p2align 3
L2429:
	movl	840(%eax), %ecx
	movl	%ecx, 840(%ebx)
	testb	$1, 909(%ebx)
	jne	L2396
	testb	$32, 15(%eax)
	jne	L2396
	movl	832(%eax), %ecx
	movl	%ecx, 832(%ebx)
	movl	%edx, %ecx
	andl	$134217728, %ecx
	andl	$67108864, %edx
	jne	L2398
	jmp	L2427
	.p2align 4,,10
	.p2align 3
L2396:
	movl	%edx, %ecx
	andl	$134217728, %ecx
	andl	$67108864, %edx
	jne	L2398
	jmp	L2427
	.cfi_endproc
LFE206:
	.globl	__ZL17resize_border_def.lto_priv.0
	.section .rdata,"dr"
	.align 32
__ZL17resize_border_def.lto_priv.0:
	.long	1065353216
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.long	0
	.long	1078530011
	.long	-1082130432
	.long	0
	.long	1065353216
	.long	0
	.long	1065353216
	.long	1065353216
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.long	1083624420
	.long	0
	.long	-1082130432
	.long	1065353216
	.long	1065353216
	.long	0
	.long	1065353216
	.long	1070141403
	.globl	__ZL15resize_grip_def.lto_priv.0
	.align 32
__ZL15resize_grip_def.lto_priv.0:
	.long	1065353216
	.long	1065353216
	.long	-1082130432
	.long	-1082130432
	.long	0
	.long	3
	.long	0
	.long	1065353216
	.long	1065353216
	.long	-1082130432
	.long	3
	.long	6
	.long	0
	.long	0
	.long	1065353216
	.long	1065353216
	.long	6
	.long	9
	.long	1065353216
	.long	0
	.long	-1082130432
	.long	1065353216
	.long	9
	.long	12
LC60:
	.ascii "Size column to fit###SizeOne\0"
	.align 4
LC61:
	.ascii "Size all columns to fit###SizeAll\0"
	.align 4
LC62:
	.ascii "Size all columns to default###SizeAll\0"
LC63:
	.ascii "Reset order###ResetOrder\0"
LC64:
	.ascii "(Main menu bar)\0"
LC65:
	.ascii "(Popup)\0"
LC66:
	.ascii "(Untitled)\0"
LC67:
	.ascii "Hide tab bar###HideTabBar\0"
	.align 32
__ZL24GLocalizationEntriesEnUS:
	.long	0
	.long	LC60
	.long	1
	.long	LC61
	.long	2
	.long	LC62
	.long	3
	.long	LC63
	.long	4
	.long	LC64
	.long	5
	.long	LC65
	.long	6
	.long	LC66
	.long	7
	.long	LC67
	.align 32
__ZL13GStyleVarInfo:
	.long	8
	.long	1
	.long	0
	.long	8
	.long	1
	.long	4
	.long	8
	.long	2
	.long	8
	.long	8
	.long	1
	.long	16
	.long	8
	.long	1
	.long	20
	.long	8
	.long	2
	.long	24
	.long	8
	.long	2
	.long	32
	.long	8
	.long	1
	.long	44
	.long	8
	.long	1
	.long	48
	.long	8
	.long	1
	.long	52
	.long	8
	.long	1
	.long	56
	.long	8
	.long	2
	.long	60
	.long	8
	.long	1
	.long	68
	.long	8
	.long	1
	.long	72
	.long	8
	.long	2
	.long	76
	.long	8
	.long	2
	.long	84
	.long	8
	.long	1
	.long	108
	.long	8
	.long	2
	.long	92
	.long	8
	.long	1
	.long	116
	.long	8
	.long	1
	.long	120
	.long	8
	.long	1
	.long	124
	.long	8
	.long	1
	.long	128
	.long	8
	.long	1
	.long	136
	.long	8
	.long	2
	.long	152
	.long	8
	.long	2
	.long	160
	.long	8
	.long	1
	.long	168
	.long	8
	.long	2
	.long	172
	.long	8
	.long	2
	.long	180
	.align 4
__ZZ18ImTextCharFromUtf8PjPKcS1_E6shifte:
	.long	0
	.long	6
	.long	4
	.long	2
	.long	0
	.align 4
__ZZ18ImTextCharFromUtf8PjPKcS1_E4mins:
	.long	4194304
	.long	0
	.long	128
	.long	2048
	.long	65536
	.align 4
__ZZ18ImTextCharFromUtf8PjPKcS1_E6shiftc:
	.long	0
	.long	18
	.long	12
	.long	6
	.long	0
	.align 4
__ZZ18ImTextCharFromUtf8PjPKcS1_E5masks:
	.long	0
	.long	127
	.long	31
	.long	15
	.long	7
	.align 32
__ZZ18ImTextCharFromUtf8PjPKcS1_E7lengths:
	.ascii "\1\1\1\1\1\1\1\1\1\1\1\1\1\1\1\1\0\0\0\0\0\0\0\0\2\2\2\2\3\3\4\0"
	.globl	__ZL17GCrc32LookupTable.lto_priv.0
	.align 32
__ZL17GCrc32LookupTable.lto_priv.0:
	.long	0
	.long	1996959894
	.long	-301047508
	.long	-1727442502
	.long	124634137
	.long	1886057615
	.long	-379345611
	.long	-1637575261
	.long	249268274
	.long	2044508324
	.long	-522852066
	.long	-1747789432
	.long	162941995
	.long	2125561021
	.long	-407360249
	.long	-1866523247
	.long	498536548
	.long	1789927666
	.long	-205950648
	.long	-2067906082
	.long	450548861
	.long	1843258603
	.long	-187386543
	.long	-2083289657
	.long	325883990
	.long	1684777152
	.long	-43845254
	.long	-1973040660
	.long	335633487
	.long	1661365465
	.long	-99664541
	.long	-1928851979
	.long	997073096
	.long	1281953886
	.long	-715111964
	.long	-1570279054
	.long	1006888145
	.long	1258607687
	.long	-770865667
	.long	-1526024853
	.long	901097722
	.long	1119000684
	.long	-608450090
	.long	-1396901568
	.long	853044451
	.long	1172266101
	.long	-589951537
	.long	-1412350631
	.long	651767980
	.long	1373503546
	.long	-925412992
	.long	-1076862698
	.long	565507253
	.long	1454621731
	.long	-809855591
	.long	-1195530993
	.long	671266974
	.long	1594198024
	.long	-972236366
	.long	-1324619484
	.long	795835527
	.long	1483230225
	.long	-1050600021
	.long	-1234817731
	.long	1994146192
	.long	31158534
	.long	-1731059524
	.long	-271249366
	.long	1907459465
	.long	112637215
	.long	-1614814043
	.long	-390540237
	.long	2013776290
	.long	251722036
	.long	-1777751922
	.long	-519137256
	.long	2137656763
	.long	141376813
	.long	-1855689577
	.long	-429695999
	.long	1802195444
	.long	476864866
	.long	-2056965928
	.long	-228458418
	.long	1812370925
	.long	453092731
	.long	-2113342271
	.long	-183516073
	.long	1706088902
	.long	314042704
	.long	-1950435094
	.long	-54949764
	.long	1658658271
	.long	366619977
	.long	-1932296973
	.long	-69972891
	.long	1303535960
	.long	984961486
	.long	-1547960204
	.long	-725929758
	.long	1256170817
	.long	1037604311
	.long	-1529756563
	.long	-740887301
	.long	1131014506
	.long	879679996
	.long	-1385723834
	.long	-631195440
	.long	1141124467
	.long	855842277
	.long	-1442165665
	.long	-586318647
	.long	1342533948
	.long	654459306
	.long	-1106571248
	.long	-921952122
	.long	1466479909
	.long	544179635
	.long	-1184443383
	.long	-832445281
	.long	1591671054
	.long	702138776
	.long	-1328506846
	.long	-942167884
	.long	1504918807
	.long	783551873
	.long	-1212326853
	.long	-1061524307
	.long	-306674912
	.long	-1698712650
	.long	62317068
	.long	1957810842
	.long	-355121351
	.long	-1647151185
	.long	81470997
	.long	1943803523
	.long	-480048366
	.long	-1805370492
	.long	225274430
	.long	2053790376
	.long	-468791541
	.long	-1828061283
	.long	167816743
	.long	2097651377
	.long	-267414716
	.long	-2029476910
	.long	503444072
	.long	1762050814
	.long	-144550051
	.long	-2140837941
	.long	426522225
	.long	1852507879
	.long	-19653770
	.long	-1982649376
	.long	282753626
	.long	1742555852
	.long	-105259153
	.long	-1900089351
	.long	397917763
	.long	1622183637
	.long	-690576408
	.long	-1580100738
	.long	953729732
	.long	1340076626
	.long	-776247311
	.long	-1497606297
	.long	1068828381
	.long	1219638859
	.long	-670225446
	.long	-1358292148
	.long	906185462
	.long	1090812512
	.long	-547295293
	.long	-1469587627
	.long	829329135
	.long	1181335161
	.long	-882789492
	.long	-1134132454
	.long	628085408
	.long	1382605366
	.long	-871598187
	.long	-1156888829
	.long	570562233
	.long	1426400815
	.long	-977650754
	.long	-1296233688
	.long	733239954
	.long	1555261956
	.long	-1026031705
	.long	-1244606671
	.long	752459403
	.long	1541320221
	.long	-1687895376
	.long	-328994266
	.long	1969922972
	.long	40735498
	.long	-1677130071
	.long	-351390145
	.long	1913087877
	.long	83908371
	.long	-1782625662
	.long	-491226604
	.long	2075208622
	.long	213261112
	.long	-1831694693
	.long	-438977011
	.long	2094854071
	.long	198958881
	.long	-2032938284
	.long	-237706686
	.long	1759359992
	.long	534414190
	.long	-2118248755
	.long	-155638181
	.long	1873836001
	.long	414664567
	.long	-2012718362
	.long	-15766928
	.long	1711684554
	.long	285281116
	.long	-1889165569
	.long	-127750551
	.long	1634467795
	.long	376229701
	.long	-1609899400
	.long	-686959890
	.long	1308918612
	.long	956543938
	.long	-1486412191
	.long	-799009033
	.long	1231636301
	.long	1047427035
	.long	-1362007478
	.long	-640263460
	.long	1088359270
	.long	936918000
	.long	-1447252397
	.long	-558129467
	.long	1202900863
	.long	817233897
	.long	-1111625188
	.long	-893730166
	.long	1404277552
	.long	615818150
	.long	-1160759803
	.long	-841546093
	.long	1423857449
	.long	601450431
	.long	-1285129682
	.long	-1000256840
	.long	1567103746
	.long	711928724
	.long	-1274298825
	.long	-1022587231
	.long	1510334235
	.long	755167117
	.align 8
LC7:
	.long	-1
	.long	-1
	.align 4
LC8:
	.long	1094713344
	.align 4
LC9:
	.long	1073741824
	.align 4
LC10:
	.long	1180041216
	.align 4
LC13:
	.long	1065353216
	.align 4
LC14:
	.long	1132396544
	.set	LC15,LC31+8
	.align 16
LC19:
	.long	2139095039
	.long	2139095039
	.long	0
	.long	0
	.align 4
LC21:
	.long	__ZN5ImGuiL28DockSettingsHandler_ReadOpenEP12ImGuiContextP20ImGuiSettingsHandlerPKc.lto_priv.0
	.align 4
LC22:
	.long	__ZL29TableSettingsHandler_ApplyAllP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0
	.align 4
LC23:
	.long	__ZL29TableSettingsHandler_ReadOpenP12ImGuiContextP20ImGuiSettingsHandlerPKc.lto_priv.0
	.align 4
LC24:
	.long	__ZL30WindowSettingsHandler_ApplyAllP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0
	.align 4
LC25:
	.long	__ZL30WindowSettingsHandler_ReadOpenP12ImGuiContextP20ImGuiSettingsHandlerPKc.lto_priv.0
	.align 4
LC26:
	.long	__ZL30GetClipboardTextFn_DefaultImplPv.lto_priv.0
	.align 4
LC27:
	.long	__ZN5ImGuiL28DockSettingsHandler_ApplyAllEP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0
	.set	LC28,LC19
	.align 16
LC31:
	.long	2139095039
	.long	2139095039
	.long	1056964608
	.long	1056964608
	.align 4
LC33:
	.long	-1082130432
	.align 4
LC37:
	.long	1071225242
	.align 4
LC42:
	.long	1041865114
	.align 4
LC43:
	.long	1045220557
	.align 16
LC45:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 4
LC47:
	.long	1065353048
	.align 4
LC48:
	.long	1082130432
	.align 4
LC50:
	.long	1060320051
	.align 4
LC51:
	.long	1057803469
	.align 4
LC53:
	.long	1061752795
	.align 4
LC55:
	.long	1085820553
	.align 4
LC56:
	.long	1053609165
	.align 4
LC57:
	.long	1061158912
	.align 4
LC58:
	.long	1063105069
	.align 4
LC59:
	.long	1061997773
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	__Z8hio_readPvjjP10HIO_HANDLE.part.0;	.scl	2;	.type	32;	.endef
	.def	_memcmp;	.scl	2;	.type	32;	.endef
	.def	__Z17libxmp_read_titleP10HIO_HANDLEPci;	.scl	2;	.type	32;	.endef
	.def	__Z19libxmp_init_patternP10xmp_module;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	__Z11hio_read32lP10HIO_HANDLE;	.scl	2;	.type	32;	.endef
	.def	__Z11hio_read16lP10HIO_HANDLE;	.scl	2;	.type	32;	.endef
	.def	__Z20libxmp_alloc_patternP10xmp_modulei;	.scl	2;	.type	32;	.endef
	.def	__Z30libxmp_alloc_tracks_in_patternP10xmp_modulei;	.scl	2;	.type	32;	.endef
	.def	__Z18libxmp_alloc_trackP10xmp_moduleii;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	__Z9hio_read8P10HIO_HANDLE.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_qsort;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	__Z22libxmp_init_instrumentP11module_data;	.scl	2;	.type	32;	.endef
	.def	__Z18libxmp_copy_adjustPcPhi.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z22libxmp_realloc_samplesP11module_datai;	.scl	2;	.type	32;	.endef
	.def	__Z26libxmp_alloc_subinstrumentP10xmp_moduleii.part.0;	.scl	2;	.type	32;	.endef
	.def	_strncpy;	.scl	2;	.type	32;	.endef
	.def	_strncmp;	.scl	2;	.type	32;	.endef
	.def	__Z15libxmp_set_typeP11module_dataPKcz;	.scl	2;	.type	32;	.endef
	.def	__Z21libxmp_mixer_voiceposP12context_dataidi.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_pow;	.scl	2;	.type	32;	.endef
	.def	___mingw_vsnprintf;	.scl	2;	.type	32;	.endef
	.def	_memmove;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGuiL28DockSettingsHandler_ClearAllEP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGuiL28DockSettingsHandler_ReadLineEP12ImGuiContextP20ImGuiSettingsHandlerPvPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL29TableSettingsHandler_WriteAllP12ImGuiContextP20ImGuiSettingsHandlerP15ImGuiTextBuffer.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL29TableSettingsHandler_ReadLineP12ImGuiContextP20ImGuiSettingsHandlerPvPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL30WindowSettingsHandler_WriteAllP12ImGuiContextP20ImGuiSettingsHandlerP15ImGuiTextBuffer.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL30WindowSettingsHandler_ReadLineP12ImGuiContextP20ImGuiSettingsHandlerPvPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL30WindowSettingsHandler_ClearAllP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL29TableSettingsHandler_ClearAllP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL30SetClipboardTextFn_DefaultImplPvPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL32SetPlatformImeDataFn_DefaultImplP13ImGuiViewportP20ImGuiPlatformImeData.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGuiL28DockSettingsHandler_WriteAllEP12ImGuiContextP20ImGuiSettingsHandlerP15ImGuiTextBuffer.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui33DockNodeWindowMenuHandler_DefaultEP12ImGuiContextP13ImGuiDockNodeP11ImGuiTabBar;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui15DebugHookIdInfoEjiPKvS1_.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui8DebugLogEPKcz;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui11FocusWindowEP11ImGuiWindow;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList17_ResetForNewFrameEv;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList13PushTextureIDEPv;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList12PushClipRectERK6ImVec2S2_b.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZN18ImDrawListSplitter5MergeEP10ImDrawList.part.0;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList11PopClipRectEv;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui3EndEv;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui5BeginEPKcPbi.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui10SelectableEPKcbiRK6ImVec2;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui30CalcRoundingFlagsForRectInRectERK6ImRectS2_f.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui12TestKeyOwnerE8ImGuiKeyj;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui13ClearDragDropEv;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui10SetTooltipEPKcz.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui21ClosePopupsOverWindowEP11ImGuiWindowb;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui13IsWindowAboveEP11ImGuiWindowS1_;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	__ZNK6ImFont13CalcTextSizeAEfffPKcS1_PS1_;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList16_PathArcToFastExERK6ImVec2fiii.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij.part.0;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList9PathArcToERK6ImVec2fffi.part.0;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList11AddPolylineEPK6ImVec2ijif.part.0;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList7AddLineERK6ImVec2S2_jf.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList7AddRectERK6ImVec2S2_jfif.part.0.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui9ScrollbarE9ImGuiAxis;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui7ItemAddERK6ImRectjPS1_i.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList11_PathArcToNERK6ImVec2fffi;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui12RenderBulletEP10ImDrawList6ImVec2j;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGuiL28DockSettingsHandler_ReadOpenEP12ImGuiContextP20ImGuiSettingsHandlerPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL29TableSettingsHandler_ApplyAllP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL29TableSettingsHandler_ReadOpenP12ImGuiContextP20ImGuiSettingsHandlerPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL30WindowSettingsHandler_ApplyAllP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL30WindowSettingsHandler_ReadOpenP12ImGuiContextP20ImGuiSettingsHandlerPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL30GetClipboardTextFn_DefaultImplPv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGuiL28DockSettingsHandler_ApplyAllEP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0;	.scl	2;	.type	32;	.endef
