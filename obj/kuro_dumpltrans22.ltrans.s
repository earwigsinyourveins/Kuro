	.file	"<artificial>"
	.text
	.p2align 4
	.globl	__ZNSt6thread24_M_thread_deps_never_runEv
	.def	__ZNSt6thread24_M_thread_deps_never_runEv;	.scl	2;	.type	32;	.endef
__ZNSt6thread24_M_thread_deps_never_runEv:
LFB0:
	.cfi_startproc
	ret
	.cfi_endproc
LFE0:
	.section .rdata,"dr"
LC0:
	.ascii "DBG\0"
LC1:
	.ascii "ENG\0"
LC2:
	.ascii "GFX\0"
LC3:
	.ascii "GL\0"
LC4:
	.ascii "ASS\0"
LC5:
	.ascii "INPT\0"
LC6:
	.ascii "NET\0"
LC7:
	.ascii "PR\0"
LC8:
	.ascii "MEM\0"
	.text
	.p2align 4
	.globl	__Z23engineVerbosityCallbacki
	.def	__Z23engineVerbosityCallbacki;	.scl	2;	.type	32;	.endef
__Z23engineVerbosityCallbacki:
LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorps	%xmm0, %xmm0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$64, %esp
	movl	8(%ebp), %eax
	movl	$LC1, 12(%esp)
	movss	12(%esp), %xmm1
	movl	$LC3, 12(%esp)
	movss	12(%esp), %xmm2
	unpcklps	%xmm1, %xmm0
	movl	$LC7, 12(%esp)
	movss	LC9, %xmm1
	movl	$LC8, 48(%esp)
	unpcklps	%xmm2, %xmm1
	movlhps	%xmm1, %xmm0
	movss	LC10, %xmm1
	movups	%xmm0, 16(%esp)
	movss	12(%esp), %xmm0
	movl	$LC5, 12(%esp)
	movss	12(%esp), %xmm2
	unpcklps	%xmm0, %xmm1
	movss	LC11, %xmm0
	unpcklps	%xmm2, %xmm0
	movlhps	%xmm1, %xmm0
	movups	%xmm0, 32(%esp)
	cmpl	$8, %eax
	jbe	L8
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	cmpl	$127, %eax
	movl	$LC0, %edx
	movl	$0, %eax
	cmove	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L8:
	.cfi_restore_state
	movl	16(%esp,%eax,4), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1:
	.align 2
	.p2align 4
	.def	__ZNSt24uniform_int_distributionIjEclISt26linear_congruential_engineIjLj48271ELj0ELj2147483647EEEEjRT_RKNS0_10param_typeE.constprop.0.isra.0;	.scl	3;	.type	32;	.endef
__ZNSt24uniform_int_distributionIjEclISt26linear_congruential_engineIjLj48271ELj0ELj2147483647EEEEjRT_RKNS0_10param_typeE.constprop.0.isra.0:
LFB5:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%esi, 20(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -20
	movl	4(%edx), %ebx
	movl	%edx, 4(%esp)
	cmpl	$2147483644, %ebx
	ja	L10
	addl	$1, %ebx
	movl	$2147483645, %eax
	xorl	%edx, %edx
	movl	%edi, 24(%esp)
	divl	%ebx
	movl	%ebp, 28(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	(%esi), %ebp
	movl	$-1131474031, %edi
	imull	%eax, %ebx
	movl	%eax, (%esp)
	.p2align 6
	.p2align 4
	.p2align 3
L13:
	movl	%ebp, %eax
	movl	%ebp, %ecx
	mull	%edi
	shrl	$15, %edx
	imull	$44488, %edx, %eax
	imull	$3399, %edx, %edx
	subl	%eax, %ecx
	imull	$48271, %ecx, %eax
	movl	%eax, %ebp
	leal	2147483647(%eax), %ecx
	subl	%edx, %ebp
	subl	%edx, %ecx
	cmpl	%edx, %eax
	cmovb	%ecx, %ebp
	leal	-1(%ebp), %eax
	cmpl	%ebx, %eax
	jnb	L13
	movl	(%esp), %ecx
	xorl	%edx, %edx
	movl	%ebp, (%esi)
	movl	24(%esp), %edi
	.cfi_restore 7
	movl	28(%esp), %ebp
	.cfi_restore 5
	divl	%ecx
L14:
	movl	4(%esp), %esi
	movl	16(%esp), %ebx
	addl	(%esi), %eax
	movl	20(%esp), %esi
	addl	$32, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L10:
	.cfi_restore_state
	cmpl	$2147483645, %ebx
	je	L15
	movl	%ebx, %edx
	movl	$-2147483645, %eax
	movl	%edi, 24(%esp)
	shrl	%edx
	movl	%ebp, 28(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	mull	%edx
	shrl	$29, %edx
	movl	%edx, (%esp)
L22:
	movl	(%esp), %eax
	leal	8(%esp), %edx
	movl	$0, 8(%esp)
	movl	%eax, 12(%esp)
	movl	%esi, %eax
	call	__ZNSt24uniform_int_distributionIjEclISt26linear_congruential_engineIjLj48271ELj0ELj2147483647EEEEjRT_RKNS0_10param_typeE.constprop.0.isra.0
	movl	(%esi), %edi
	imull	$2147483646, %eax, %ecx
	movl	$-1131474031, %eax
	mull	%edi
	shrl	$15, %edx
	imull	$44488, %edx, %eax
	imull	$3399, %edx, %edx
	subl	%eax, %edi
	imull	$48271, %edi, %eax
	movl	%eax, %ebp
	leal	2147483647(%eax), %edi
	subl	%edx, %ebp
	subl	%edx, %edi
	cmpl	%edx, %eax
	movl	%ebp, %eax
	cmovb	%edi, %eax
	movl	%eax, (%esi)
	leal	-1(%ecx,%eax), %eax
	cmpl	%eax, %ebx
	jb	L22
	cmpl	%ecx, %eax
	jb	L22
	movl	24(%esp), %edi
	.cfi_restore 7
	movl	28(%esp), %ebp
	.cfi_restore 5
	jmp	L14
	.p2align 4,,10
	.p2align 3
L15:
	movl	(%eax), %ecx
	movl	$-1131474031, %eax
	mull	%ecx
	shrl	$15, %edx
	imull	$44488, %edx, %eax
	imull	$3399, %edx, %edx
	subl	%eax, %ecx
	imull	$48271, %ecx, %ecx
	movl	%ecx, %ebx
	leal	2147483647(%ecx), %eax
	subl	%edx, %ebx
	subl	%edx, %eax
	cmpl	%edx, %ecx
	cmovnb	%ebx, %eax
	movl	%eax, (%esi)
	subl	$1, %eax
	jmp	L14
	.cfi_endproc
LFE5:
	.align 2
	.p2align 4
	.def	__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPN5async6detail15threadpool_dataEjjES6_ijEEEEE6_M_runEv;	.scl	3;	.type	32;	.endef
__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPN5async6detail15threadpool_dataEjjES6_ijEEEEE6_M_runEv:
LFB7:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	4(%ecx), %eax
	movl	%eax, 8(%esp)
	movl	8(%ecx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ecx), %eax
	movl	%eax, (%esp)
	call	*16(%ecx)
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE7:
	.align 2
	.p2align 4
	.def	__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPN5async6detail15threadpool_dataEjjES6_jjEEEEE6_M_runEv;	.scl	3;	.type	32;	.endef
__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPN5async6detail15threadpool_dataEjjES6_jjEEEEE6_M_runEv:
LFB8:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	4(%ecx), %eax
	movl	%eax, 8(%esp)
	movl	8(%ecx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ecx), %eax
	movl	%eax, (%esp)
	call	*16(%ecx)
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE8:
	.p2align 4
	.def	__ZL11addcliplineiiiisi;	.scl	3;	.type	32;	.endef
__ZL11addcliplineiiiisi:
LFB9:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	%edi, 8(%esp)
	.cfi_offset 7, -8
	movl	%edx, %edi
	movzwl	__ZL7clipnum, %edx
	cmpw	$4095, %dx
	jg	L32
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
	andb	__ZL8pow2char.lto_priv.6(%ebx), %al
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
L32:
	.cfi_def_cfa_offset 16
	.cfi_offset 7, -8
	orl	$2, __ZL15clipmove_warned.lto_priv.0
	movl	8(%esp), %edi
	addl	$12, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE9:
	.align 2
	.p2align 4
	.def	__ZNKSt14default_deleteIN5async6detail16work_steal_queue14circular_arrayEEclEPS3_.part.0;	.scl	3;	.type	32;	.endef
__ZNKSt14default_deleteIN5async6detail16work_steal_queue14circular_arrayEEclEPS3_.part.0:
LFB11:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	8(%eax), %edx
	testl	%edx, %edx
	je	L34
	movl	8(%edx), %eax
	testl	%eax, %eax
	je	L35
	movl	%edx, (%esp)
	call	__ZNKSt14default_deleteIN5async6detail16work_steal_queue14circular_arrayEEclEPS3_.part.0
	movl	(%esp), %edx
L35:
	movl	4(%edx), %eax
	movl	%edx, (%esp)
	call	_mi_free
	movl	(%esp), %eax
	call	_mi_free
L34:
	movl	4(%ebx), %eax
	call	_mi_free
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	_mi_free
	.cfi_endproc
LFE11:
	.section .rdata,"dr"
LC12:
	.ascii "vector::_M_realloc_append\0"
	.section	.text.unlikely,"x"
	.align 2
LCOLDB13:
	.text
LHOTB13:
	.align 2
	.p2align 4
	.def	__ZN5async6detail19continuation_vector7try_addEONS0_13ref_count_ptrINS0_9task_baseEEE;	.scl	3;	.type	32;	.endef
__ZN5async6detail19continuation_vector7try_addEONS0_13ref_count_ptrINS0_9task_baseEEE:
LFB19:
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
	pushl	%ebx
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	subl	$44, %esp
	movl	(%ecx), %esi
	movl	%esi, 32(%esp)
L68:
	testl	$1, %esi
	jne	L73
	testl	$2, %esi
	jne	L87
	cmpl	$3, %esi
	ja	L88
	movl	8(%ebp), %eax
	movl	(%eax), %edx
L65:
	movl	32(%esp), %eax
	lock cmpxchgl	%edx, (%edi)
	sete	%dl
	je	L67
	movl	%eax, 32(%esp)
	movl	%eax, %esi
	jmp	L68
	.p2align 4,,10
	.p2align 3
L88:
	testl	%ebx, %ebx
	je	L89
L58:
	movl	%ebx, %edx
	orl	$2, %edx
	jmp	L65
	.p2align 4,,10
	.p2align 3
L67:
	movl	8(%ebp), %eax
	movl	%edx, %esi
	movl	$0, (%eax)
L43:
	addl	$44, %esp
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
	ret	$4
	.p2align 4,,10
	.p2align 3
L89:
	.cfi_restore_state
	movl	%fs:44, %eax
	movl	__tls_index, %ecx
	movl	(%eax,%ecx,4), %eax
	movl	__mi_heap_default@secrel32(%eax), %eax
	movl	%eax, 28(%esp)
	movl	200(%eax), %eax
	movl	8(%eax), %ebx
	testl	%ebx, %ebx
	je	L90
	movl	(%ebx), %edx
	addw	$1, 16(%eax)
	movl	%edx, 8(%eax)
L61:
	movl	8(%ebp), %eax
	movl	__tls_index, %ecx
	andl	$-4, %esi
	movl	%esi, 36(%esp)
	movl	(%eax), %eax
	movl	$0, (%ebx)
	movl	$0, 4(%ebx)
	movl	%eax, 40(%esp)
	movl	%fs:44, %eax
	movl	$0, 8(%ebx)
	movl	(%eax,%ecx,4), %eax
	movl	__mi_heap_default@secrel32(%eax), %esi
	movl	192(%esi), %edx
	movl	8(%edx), %eax
	testl	%eax, %eax
	je	L91
	movl	(%eax), %ecx
	addw	$1, 16(%edx)
	movl	%ecx, 8(%edx)
L64:
	movl	36(%esp), %ecx
	leal	8(%eax), %edx
	movl	%eax, (%ebx)
	movl	%edx, 8(%ebx)
	movl	%ecx, (%eax)
	movl	40(%esp), %ecx
	movl	%ecx, 4(%eax)
	leal	12(%ebx), %eax
	movl	%edx, 4(%ebx)
	movl	$0, 12(%ebx)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_pthread_mutex_init
	jmp	L58
	.p2align 4,,10
	.p2align 3
L73:
	xorl	%esi, %esi
L44:
	testl	%ebx, %ebx
	je	L43
	leal	12(%ebx), %eax
	movl	%eax, (%esp)
	call	_pthread_mutex_destroy
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L71
	call	_mi_free
L71:
	movl	%ebx, %eax
	call	_mi_free
	addl	$44, %esp
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
	ret	$4
	.p2align 4,,10
	.p2align 3
L87:
	.cfi_restore_state
	movl	32(%esp), %eax
	andl	$-4, %eax
	addl	$12, %eax
	movl	%eax, (%esp)
	movl	%eax, 28(%esp)
	call	_pthread_mutex_lock
	testl	%eax, %eax
	jne	L84
	xorl	%esi, %esi
	testl	$1, (%edi)
	je	L92
L47:
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	_pthread_mutex_unlock
	jmp	L44
	.p2align 4,,10
	.p2align 3
L92:
	movl	32(%esp), %edi
	movl	8(%ebp), %eax
	andl	$-4, %edi
	movl	(%eax), %esi
	movl	$0, (%eax)
	movl	4(%edi), %eax
	cmpl	8(%edi), %eax
	je	L48
	movl	%esi, (%eax)
	addl	$4, 4(%edi)
L49:
	movl	$1, %esi
	jmp	L47
L91:
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	movl	$8, %edx
	movl	%esi, %eax
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	testl	%eax, %eax
	jne	L64
	xorl	%ecx, %ecx
	movl	$8, %edx
	movl	%esi, %eax
	call	__Z15mi_heap_try_newP9mi_heap_sjb
	jmp	L64
L90:
	movl	$0, (%esp)
	movl	28(%esp), %eax
	xorl	%ecx, %ecx
	movl	$16, %edx
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L61
	movl	28(%esp), %eax
	xorl	%ecx, %ecx
	movl	$16, %edx
	call	__Z15mi_heap_try_newP9mi_heap_sjb
	movl	%eax, %ebx
	jmp	L61
L48:
	movl	(%edi), %ecx
	subl	%ecx, %eax
	movl	%ecx, 16(%esp)
	movl	%eax, %edx
	movl	%eax, 20(%esp)
	sarl	$2, %edx
	cmpl	$536870911, %edx
	je	L85
	testl	%edx, %edx
	movl	$1, %eax
	cmovne	%edx, %eax
	addl	%edx, %eax
	movl	$536870911, %edx
	cmpl	%edx, %eax
	cmova	%edx, %eax
	movl	%fs:44, %edx
	leal	0(,%eax,4), %ecx
	movl	__tls_index, %eax
	movl	%ecx, 24(%esp)
	movl	(%edx,%eax,4), %eax
	movl	__mi_heap_default@secrel32(%eax), %eax
	movl	%eax, 12(%esp)
	cmpl	$512, %ecx
	ja	L51
	movl	184(%eax,%ecx), %eax
	movl	8(%eax), %ecx
	testl	%ecx, %ecx
	je	L93
	movl	(%ecx), %edx
	addw	$1, 16(%eax)
	movl	%edx, 8(%eax)
L54:
	movl	20(%esp), %eax
	movl	%esi, (%ecx,%eax)
	testl	%eax, %eax
	je	L55
	movl	%eax, 8(%esp)
	movl	16(%esp), %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, 12(%esp)
	call	_memcpy
	movl	12(%esp), %ecx
L55:
	movl	20(%esp), %eax
	leal	4(%ecx,%eax), %esi
	movl	16(%esp), %eax
	testl	%eax, %eax
	je	L56
	movl	%ecx, 20(%esp)
	call	_mi_free
	movl	20(%esp), %ecx
L56:
	movl	%esi, 4(%edi)
	movl	24(%esp), %esi
	movl	%ecx, (%edi)
	addl	%ecx, %esi
	movl	%esi, 8(%edi)
	jmp	L49
L93:
	xorl	%edx, %edx
	movl	12(%esp), %eax
	movl	%edx, (%esp)
	movl	24(%esp), %edx
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	movl	%eax, %ecx
L53:
	testl	%ecx, %ecx
	jne	L54
	movl	24(%esp), %edx
	movl	12(%esp), %eax
	call	__Z15mi_heap_try_newP9mi_heap_sjb
	movl	%eax, %ecx
	jmp	L54
L51:
	xorl	%eax, %eax
	movl	24(%esp), %edx
	xorl	%ecx, %ecx
	movl	%eax, (%esp)
	movl	12(%esp), %eax
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	movl	%eax, %ecx
	jmp	L53
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__ZN5async6detail19continuation_vector7try_addEONS0_13ref_count_ptrINS0_9task_baseEEE.cold;	.scl	3;	.type	32;	.endef
__ZN5async6detail19continuation_vector7try_addEONS0_13ref_count_ptrINS0_9task_baseEEE.cold:
LFSB19:
L85:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$LC12, (%esp)
	call	__ZSt20__throw_length_errorPKc
L84:
	movl	%eax, (%esp)
	call	__ZSt20__throw_system_errori
	.cfi_endproc
LFE19:
	.text
	.section	.text.unlikely,"x"
LCOLDE13:
	.text
LHOTE13:
	.p2align 4
	.def	__ZN5async6detail9task_funcINS0_21inline_scheduler_implENS_16task_wait_handle14wait_exec_funcIZNS0_L20generic_wait_handlerES3_EUlvE_EENS0_9fake_voidEE8scheduleEPNS0_9task_baseENS0_13ref_count_ptrIS9_EE;	.scl	3;	.type	32;	.endef
__ZN5async6detail9task_funcINS0_21inline_scheduler_implENS_16task_wait_handle14wait_exec_funcIZNS0_L20generic_wait_handlerES3_EUlvE_EENS0_9fake_voidEE8scheduleEPNS0_9task_baseENS0_13ref_count_ptrIS9_EE:
LFB48:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	16(%esp), %eax
	movl	(%eax), %ebx
	lock addl	$1, (%ebx)
	movl	12(%ebx), %eax
	movl	%ebx, (%esp)
	call	*4(%eax)
	lock subl	$1, (%ebx)
	je	L97
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L97:
	.cfi_restore_state
	movl	12(%ebx), %eax
	movl	%ebx, 12(%esp)
	movl	(%eax), %eax
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	*%eax
	.cfi_endproc
LFE48:
	.p2align 4
	.def	__ZN5async6detail9task_funcINS0_21inline_scheduler_implENS_16task_wait_handle14wait_exec_funcIZNS0_L16thread_task_loopEPNS0_15threadpool_dataEjS3_EUlvE_EENS0_9fake_voidEE8scheduleEPNS0_9task_baseENS0_13ref_count_ptrISB_EE;	.scl	3;	.type	32;	.endef
__ZN5async6detail9task_funcINS0_21inline_scheduler_implENS_16task_wait_handle14wait_exec_funcIZNS0_L16thread_task_loopEPNS0_15threadpool_dataEjS3_EUlvE_EENS0_9fake_voidEE8scheduleEPNS0_9task_baseENS0_13ref_count_ptrISB_EE:
LFB63:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	16(%esp), %eax
	movl	(%eax), %ebx
	lock addl	$1, (%ebx)
	movl	12(%ebx), %eax
	movl	%ebx, (%esp)
	call	*4(%eax)
	lock subl	$1, (%ebx)
	je	L101
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L101:
	.cfi_restore_state
	movl	12(%ebx), %eax
	movl	%ebx, 12(%esp)
	movl	(%eax), %eax
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	*%eax
	.cfi_endproc
LFE63:
	.section	.text.unlikely,"x"
LCOLDB15:
	.text
LHOTB15:
	.p2align 4
	.def	__ZN5async6detailL20generic_wait_handlerENS_16task_wait_handleE;	.scl	3;	.type	32;	.endef
__ZN5async6detailL20generic_wait_handlerENS_16task_wait_handleE:
LFB64:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-8, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	pushl	%esi
	pushl	%ebx
	.cfi_escape 0x10,0x6,0x2,0x75,0x7c
	.cfi_escape 0x10,0x3,0x2,0x75,0x78
	leal	-32(%ebp), %esi
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x74,0x6
	subl	$44, %esp
	movl	$0, -24(%ebp)
	movl	(%ecx), %ebx
	movb	$0, -20(%ebp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_pthread_mutex_init
	leal	-28(%ebp), %ecx
	call	__ZNSt18condition_variableC1Ev
	movb	$1, -20(%ebp)
	movl	$64, 4(%esp)
	movl	$64, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj
	subl	$8, %esp
	testl	%eax, %eax
	je	L103
	movl	$1, (%eax)
	movb	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$__ZZN5async16inline_schedulerEvE8instance, -48(%ebp)
	movl	%esi, 20(%eax)
	movss	LC14, %xmm0
	movss	-48(%ebp), %xmm1
	unpcklps	%xmm1, %xmm0
	movlps	%xmm0, 12(%eax)
	movzbl	4(%ebx), %edx
	subl	$3, %edx
	cmpb	$1, %dl
	jbe	L140
	movl	%eax, -44(%ebp)
	leal	-44(%ebp), %eax
	leal	8(%ebx), %ecx
	movl	%eax, (%esp)
	call	__ZN5async6detail19continuation_vector7try_addEONS0_13ref_count_ptrINS0_9task_baseEEE
	movl	-44(%ebp), %ebx
	subl	$4, %esp
	testb	%al, %al
	jne	L106
	testl	%ebx, %ebx
	jne	L141
	movl	12, %eax
	movl	$0, (%esp)
	call	*4(%eax)
	lock subl	$1, 0
	je	L142
L110:
	movl	%esi, -40(%ebp)
	movb	$0, -36(%ebp)
	movl	%esi, (%esp)
	call	_pthread_mutex_lock
	testl	%eax, %eax
	jne	L137
	movl	-24(%ebp), %edx
	movb	$1, -36(%ebp)
	leal	-40(%ebp), %ebx
	testl	%edx, %edx
	jne	L143
	.p2align 4
	.p2align 3
L112:
	movl	%ebx, (%esp)
	leal	-28(%ebp), %ecx
	call	__ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE
	movl	-24(%ebp), %eax
	subl	$4, %esp
	testl	%eax, %eax
	je	L112
	movl	$0, -24(%ebp)
	cmpb	$0, -36(%ebp)
	jne	L113
L114:
	cmpb	$0, -20(%ebp)
	jne	L144
	leal	-12(%ebp), %esp
	popl	%ecx
	.cfi_remember_state
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L106:
	.cfi_restore_state
	testl	%ebx, %ebx
	je	L110
	movl	%ebx, %eax
	jmp	L108
	.p2align 4,,10
	.p2align 3
L140:
L117:
	movl	%eax, %ebx
	lock addl	$1, (%eax)
	movl	12(%eax), %edx
	movl	%eax, (%esp)
	movl	%eax, -48(%ebp)
	call	*4(%edx)
	movl	-48(%ebp), %eax
	lock subl	$1, (%eax)
	je	L116
L108:
	lock subl	$1, (%eax)
	jne	L110
	movl	12(%eax), %edx
	movl	%eax, (%esp)
	call	*(%edx)
	jmp	L110
	.p2align 4,,10
	.p2align 3
L144:
	movl	%esi, (%esp)
	call	_pthread_mutex_destroy
	leal	-28(%ebp), %ecx
	call	__ZNSt18condition_variableD1Ev
	leal	-12(%ebp), %esp
	popl	%ecx
	.cfi_remember_state
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L143:
	.cfi_restore_state
	movl	$0, -24(%ebp)
L113:
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	je	L114
	movl	%eax, (%esp)
	call	_pthread_mutex_unlock
	jmp	L114
	.p2align 4,,10
	.p2align 3
L142:
	xorl	%eax, %eax
L116:
	movl	%eax, -48(%ebp)
	movl	12(%eax), %edx
	movl	%ebx, (%esp)
	call	*(%edx)
	movl	-48(%ebp), %eax
	jmp	L108
	.p2align 4,,10
	.p2align 3
L103:
	movl	$64, %eax
	call	__Z13handle_memerri
L141:
	movl	%ebx, %eax
	jmp	L117
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__ZN5async6detailL20generic_wait_handlerENS_16task_wait_handleE.cold;	.scl	3;	.type	32;	.endef
__ZN5async6detailL20generic_wait_handlerENS_16task_wait_handleE.cold:
LFSB64:
L137:
	.cfi_escape 0xf,0x3,0x75,0x74,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x78
	.cfi_escape 0x10,0x5,0x2,0x75,0
	.cfi_escape 0x10,0x6,0x2,0x75,0x7c
	movl	%eax, (%esp)
	call	__ZSt20__throw_system_errori
	.cfi_endproc
LFE64:
	.text
	.section	.text.unlikely,"x"
LCOLDE15:
	.text
LHOTE15:
	.section .rdata,"dr"
	.align 4
LC16:
	.ascii "cannot create std::vector larger than max_size()\0"
	.section	.text.unlikely,"x"
LCOLDB19:
	.text
LHOTB19:
	.p2align 4
	.def	__ZN5async6detailL16thread_task_loopEPNS0_15threadpool_dataEjNS_16task_wait_handleE;	.scl	3;	.type	32;	.endef
__ZN5async6detailL16thread_task_loopEPNS0_15threadpool_dataEjNS_16task_wait_handleE:
LFB76:
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
	subl	$96, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%edx, -56(%ebp)
	sall	$6, %edx
	movss	LC18, %xmm2
	movl	$__ZZN5async16inline_schedulerEvE8instance, -48(%ebp)
	movss	-48(%ebp), %xmm0
	movl	%edx, -80(%ebp)
	addl	8(%eax), %edx
	movl	%eax, -52(%ebp)
	unpcklps	%xmm0, %xmm2
	movl	%ecx, -68(%ebp)
	movl	%edx, -84(%ebp)
	movl	$0, -24(%ebp)
	movb	$0, -20(%ebp)
	movb	$0, -73(%ebp)
	movlps	%xmm2, -96(%ebp)
	.p2align 4
	.p2align 3
L146:
	movl	-68(%ebp), %ecx
	testl	%ecx, %ecx
	je	L147
	cmpb	$0, -73(%ebp)
	je	L148
	leal	-32(%ebp), %esi
	movl	%esi, (%esp)
	call	_pthread_mutex_lock
	testl	%eax, %eax
	jne	L276
	movl	-24(%ebp), %ebx
	movl	%ebx, %eax
	andl	$-2, %eax
	movl	%eax, -24(%ebp)
	movl	%esi, (%esp)
	call	_pthread_mutex_unlock
	andl	$1, %ebx
	jne	L150
L147:
	movl	-84(%ebp), %esi
	movl	8(%esi), %edx
	leal	4(%esi), %edi
	movl	%edx, %eax
	subl	4(%esi), %eax
	testl	%eax, %eax
	jg	L294
L151:
	movl	-52(%ebp), %eax
	movl	4(%eax), %ebx
	cmpl	$536870911, %ebx
	ja	L205
	.p2align 4
	.p2align 3
L156:
	testl	%ebx, %ebx
	je	L157
	movl	__tls_index, %esi
	movl	%fs:44, %eax
	leal	0(,%ebx,4), %edi
	movl	(%eax,%esi,4), %eax
	movl	__mi_heap_default@secrel32(%eax), %esi
	cmpl	$512, %edi
	ja	L158
	movl	184(%esi,%edi), %eax
	movl	8(%eax), %ecx
	movl	%ecx, -64(%ebp)
	testl	%ecx, %ecx
	je	L295
	movl	-64(%ebp), %esi
	movl	(%esi), %edx
	addw	$1, 16(%eax)
	movl	%edx, 8(%eax)
	leal	(%esi,%edi), %eax
	movl	%eax, -48(%ebp)
L161:
	movl	-64(%ebp), %ecx
	movl	$0, (%ecx)
	movl	%ecx, %edi
	leal	4(%ecx), %esi
	cmpl	$1, %ebx
	je	L211
	movl	-48(%ebp), %ebx
	cmpl	%ebx, %esi
	je	L163
	leal	-4(%ebx), %eax
	movl	$0, 4(%esp)
	subl	%ecx, %eax
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	_memset
	cmpl	%edi, %ebx
	je	L166
L163:
	movl	-64(%ebp), %edi
	movl	$-4, %edx
	xorl	%eax, %eax
	subl	%edi, %edx
	addl	-48(%ebp), %edx
	movl	%edi, %ebx
	shrl	$2, %edx
	leal	1(%edx), %ecx
	andl	$1, %edx
	jne	L167
	movl	-64(%ebp), %eax
	movl	-64(%ebp), %edi
	movl	$0, (%eax)
	movl	$1, %eax
	cmpl	%ecx, %eax
	je	L283
	.p2align 4
	.p2align 4
	.p2align 3
L167:
	movl	%eax, (%edi,%eax,4)
	leal	1(%eax), %edx
	addl	$2, %eax
	movl	%edx, (%edi,%edx,4)
	cmpl	%ecx, %eax
	jne	L167
L283:
	movl	-48(%ebp), %edi
	movl	-64(%ebp), %ecx
	cmpl	%ecx, %edi
	je	L166
	movl	-52(%ebp), %edx
	movl	-80(%ebp), %eax
	subl	%ecx, %edi
	movl	%edi, %ecx
	addl	8(%edx), %eax
	sarl	$2, %ecx
	xorl	%edx, %edx
	addl	$12, %eax
	movl	%eax, -60(%ebp)
	movl	$2147483645, %eax
	divl	%ecx
	cmpl	%ecx, %eax
	jnb	L296
	cmpl	-48(%ebp), %esi
	je	L176
	movl	%ebx, -72(%ebp)
	movl	-64(%ebp), %ebx
	movl	$4, %esi
	.p2align 4
	.p2align 3
L172:
	movl	%esi, %eax
	leal	-40(%ebp), %edx
	movl	$0, -40(%ebp)
	sarl	$2, %eax
	movl	%eax, -36(%ebp)
	movl	-60(%ebp), %eax
	call	__ZNSt24uniform_int_distributionIjEclISt26linear_congruential_engineIjLj48271ELj0ELj2147483647EEEEjRT_RKNS0_10param_typeE.constprop.0.isra.0
	movl	(%ebx,%esi), %edx
	movl	(%ebx,%eax,4), %ecx
	movl	%ecx, (%ebx,%esi)
	addl	$4, %esi
	movl	%edx, (%ebx,%eax,4)
	leal	(%ebx,%esi), %eax
	cmpl	%eax, -48(%ebp)
	jne	L172
	movl	-72(%ebp), %ebx
	.p2align 4
	.p2align 3
L176:
	movl	(%ebx), %edx
	cmpl	%edx, -56(%ebp)
	je	L173
	movl	-52(%ebp), %eax
	sall	$6, %edx
	addl	8(%eax), %edx
	leal	4(%edx), %esi
	movl	%edx, %ecx
L174:
	movl	(%esi), %eax
	lock orl	$0, (%esp)
	movl	8(%ecx), %edx
	subl	%eax, %edx
	testl	%edx, %edx
	jle	L173
	movl	(%ecx), %edi
	movl	(%edi), %edx
	movl	4(%edi), %edi
	subl	$1, %edx
	andl	%eax, %edx
	movl	(%edi,%edx,4), %edi
	leal	1(%eax), %edx
	lock cmpxchgl	%edx, (%esi)
	jne	L174
	testl	%edi, %edi
	jne	L175
L173:
	addl	$4, %ebx
	cmpl	%ebx, -48(%ebp)
	jne	L176
L166:
	movl	-64(%ebp), %eax
	call	_mi_free
L157:
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	_pthread_mutex_lock
	testl	%eax, %eax
	jne	L277
	movl	-52(%ebp), %ecx
	movl	20(%ecx), %eax
	cmpl	24(%ecx), %eax
	je	L179
	movl	16(%ecx), %edx
	movl	12(%ecx), %esi
	movl	(%edx,%eax,4), %ebx
	leal	-1(%esi), %edx
	addl	$1, %eax
	movl	%esi, -48(%ebp)
	andl	%eax, %edx
	movl	%edx, 20(%ecx)
	testl	%ebx, %ebx
	jne	L297
L179:
	movl	-68(%ebp), %edx
	testl	%edx, %edx
	je	L298
	cmpb	$0, -20(%ebp)
	je	L184
L210:
	leal	-32(%ebp), %ebx
	cmpb	$0, -73(%ebp)
	je	L299
L192:
	movl	-52(%ebp), %ecx
	movl	32(%ecx), %eax
	movl	36(%ecx), %edx
	movl	%ebx, (%edx,%eax,4)
	addl	$1, %eax
	movl	%eax, 32(%ecx)
	movl	%ecx, (%esp)
	call	_pthread_mutex_unlock
	movl	%ebx, -40(%ebp)
	movb	$0, -36(%ebp)
	movl	%ebx, (%esp)
	call	_pthread_mutex_lock
	testl	%eax, %eax
	jne	L278
	movl	-24(%ebp), %esi
	movb	$1, -36(%ebp)
	leal	-40(%ebp), %edi
	testl	%esi, %esi
	jne	L300
	.p2align 4
	.p2align 3
L195:
	movl	%edi, (%esp)
	leal	-28(%ebp), %ecx
	call	__ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE
	movl	-24(%ebp), %eax
	subl	$4, %esp
	testl	%eax, %eax
	je	L195
	movl	$0, -24(%ebp)
	movl	%eax, %esi
	cmpb	$0, -36(%ebp)
	jne	L196
L197:
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	_pthread_mutex_lock
	testl	%eax, %eax
	jne	L279
	movl	-52(%ebp), %eax
	movl	32(%eax), %ecx
	testl	%ecx, %ecx
	je	L200
	movl	36(%eax), %edi
	xorl	%edx, %edx
	movl	%edi, %eax
	jmp	L203
	.p2align 4
	.p2align 4,,10
	.p2align 3
L201:
	addl	$1, %edx
	addl	$4, %eax
	cmpl	%ecx, %edx
	je	L200
L203:
	cmpl	%ebx, (%eax)
	jne	L201
	subl	$1, %ecx
	cmpl	%edx, %ecx
	je	L202
	leal	(%edi,%ecx,4), %edx
	movl	(%edx), %edi
	movl	%edi, (%eax)
	movl	%ebx, (%edx)
L202:
	movl	-52(%ebp), %eax
	movl	%ecx, 32(%eax)
L200:
	movl	-68(%ebp), %eax
	testl	%eax, %eax
	je	L204
	andl	$1, %esi
	jne	L181
L204:
	movl	-52(%ebp), %esi
	movl	%esi, (%esp)
	call	_pthread_mutex_unlock
	movl	4(%esi), %ebx
	cmpl	$536870911, %ebx
	jbe	L156
	jmp	L205
	.p2align 4,,10
	.p2align 3
L175:
	movl	-64(%ebp), %eax
	call	_mi_free
	movl	12(%edi), %eax
	movl	%edi, (%esp)
	call	*4(%eax)
	lock subl	$1, (%edi)
	jne	L146
	movl	12(%edi), %eax
	movl	%edi, (%esp)
	call	*(%eax)
	jmp	L146
	.p2align 4,,10
	.p2align 3
L300:
	movl	$0, -24(%ebp)
L196:
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	je	L197
	movl	%eax, (%esp)
	call	_pthread_mutex_unlock
	jmp	L197
	.p2align 4,,10
	.p2align 3
L298:
	movl	-52(%ebp), %eax
	cmpb	$0, 28(%eax)
	jne	L181
	leal	-32(%ebp), %ebx
	cmpb	$0, -20(%ebp)
	jne	L192
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	call	_pthread_mutex_init
	leal	-28(%ebp), %ecx
	call	__ZNSt18condition_variableC1Ev
	movb	$1, -20(%ebp)
	jmp	L192
	.p2align 4,,10
	.p2align 3
L296:
	andl	$1, %ecx
	je	L301
L169:
	leal	-40(%ebp), %edi
	cmpl	-48(%ebp), %esi
	je	L176
	movl	%ebx, -88(%ebp)
	movl	%edi, -72(%ebp)
	movl	-64(%ebp), %edi
	.p2align 4
	.p2align 3
L170:
	movl	%esi, %eax
	movl	-72(%ebp), %edx
	movl	$0, -40(%ebp)
	addl	$8, %esi
	subl	%edi, %eax
	sarl	$2, %eax
	leal	2(%eax), %ebx
	addl	$1, %eax
	imull	%ebx, %eax
	subl	$1, %eax
	movl	%eax, -36(%ebp)
	movl	-60(%ebp), %eax
	call	__ZNSt24uniform_int_distributionIjEclISt26linear_congruential_engineIjLj48271ELj0ELj2147483647EEEEjRT_RKNS0_10param_typeE.constprop.0.isra.0
	xorl	%edx, %edx
	divl	%ebx
	movl	-8(%esi), %ebx
	movl	(%edi,%eax,4), %ecx
	movl	%ecx, -8(%esi)
	movl	%ebx, (%edi,%eax,4)
	leal	(%edi,%edx,4), %eax
	movl	-4(%esi), %edx
	movl	(%eax), %ebx
	movl	%ebx, -4(%esi)
	movl	%edx, (%eax)
	cmpl	-48(%ebp), %esi
	jne	L170
	movl	-88(%ebp), %ebx
	jmp	L176
	.p2align 4,,10
	.p2align 3
L299:
	movl	$64, 4(%esp)
	movl	$64, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj
	subl	$8, %esp
	movl	%eax, %edi
	testl	%eax, %eax
	je	L185
	movl	$1, (%eax)
	movb	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	%ebx, 20(%eax)
	movlps	-96(%ebp), %xmm1
	movlps	%xmm1, 12(%eax)
	movl	-68(%ebp), %eax
	movzbl	4(%eax), %eax
	subl	$3, %eax
	cmpb	$1, %al
	jbe	L302
	movl	-68(%ebp), %eax
	movl	%edi, -44(%ebp)
	leal	8(%eax), %ecx
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN5async6detail19continuation_vector7try_addEONS0_13ref_count_ptrINS0_9task_baseEEE
	movl	-44(%ebp), %edi
	subl	$4, %esp
	movb	%al, -73(%ebp)
	testb	%al, %al
	jne	L188
	testl	%edi, %edi
	jne	L209
	movl	12, %eax
	movl	$0, (%esp)
	call	*4(%eax)
	lock subl	$1, 0
	je	L303
L193:
	movb	$1, -73(%ebp)
	jmp	L192
	.p2align 4,,10
	.p2align 3
L184:
	leal	-32(%ebp), %ebx
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	call	_pthread_mutex_init
	leal	-28(%ebp), %ecx
	call	__ZNSt18condition_variableC1Ev
	movb	$1, -20(%ebp)
	jmp	L210
	.p2align 4,,10
	.p2align 3
L148:
	movl	-68(%ebp), %eax
	movzbl	4(%eax), %eax
	subl	$3, %eax
	cmpb	$1, %al
	ja	L147
L150:
	cmpb	$0, -20(%ebp)
	jne	L304
L145:
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
L294:
	.cfi_restore_state
	leal	-1(%edx), %eax
	movl	%esi, %ecx
	movl	%eax, 8(%esi)
	lock orl	$0, (%esp)
	movl	4(%esi), %esi
	cmpl	%esi, %eax
	js	L305
	movl	-84(%ebp), %ecx
	movl	(%ecx), %ebx
	movl	(%ebx), %ecx
	movl	4(%ebx), %ebx
	subl	$1, %ecx
	andl	%eax, %ecx
	movl	(%ebx,%ecx,4), %ebx
	cmpl	%esi, %eax
	jne	L153
	lock cmpxchgl	%edx, (%edi)
	movl	-84(%ebp), %eax
	movl	%edx, 8(%eax)
	jne	L151
L153:
	testl	%ebx, %ebx
	je	L151
L293:
	movl	12(%ebx), %eax
	movl	%ebx, (%esp)
	call	*4(%eax)
	lock subl	$1, (%ebx)
	jne	L146
	movl	12(%ebx), %eax
	movl	%ebx, (%esp)
	call	*(%eax)
	jmp	L146
	.p2align 4,,10
	.p2align 3
L211:
	movl	%esi, -48(%ebp)
	jmp	L163
L301:
	movlps	LC17, %xmm3
	movl	-60(%ebp), %eax
	leal	-40(%ebp), %edx
	movlps	%xmm3, -40(%ebp)
	call	__ZNSt24uniform_int_distributionIjEclISt26linear_congruential_engineIjLj48271ELj0ELj2147483647EEEEjRT_RKNS0_10param_typeE.constprop.0.isra.0
	movl	-64(%ebp), %edi
	movl	4(%edi), %edx
	movl	(%edi,%eax,4), %ecx
	leal	8(%edi), %esi
	movl	%ecx, 4(%edi)
	movl	%edx, (%edi,%eax,4)
	jmp	L169
L302:
L209:
	movl	%edi, %esi
	lock addl	$1, (%edi)
	movl	12(%edi), %eax
	movl	%edi, (%esp)
	call	*4(%eax)
	lock subl	$1, (%edi)
	je	L208
L190:
	lock subl	$1, (%edi)
	jne	L193
	movl	12(%edi), %eax
	movl	%edi, (%esp)
	call	*(%eax)
	jmp	L193
L305:
	movl	%edx, 8(%ecx)
	jmp	L151
L188:
	testl	%edi, %edi
	je	L192
	jmp	L190
L158:
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	movl	%edi, %edx
	movl	%esi, %eax
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	movl	%eax, -64(%ebp)
L160:
	movl	-64(%ebp), %eax
	testl	%eax, %eax
	jne	L291
	xorl	%ecx, %ecx
	movl	%edi, %edx
	movl	%esi, %eax
	call	__Z15mi_heap_try_newP9mi_heap_sjb
	movl	%eax, -64(%ebp)
L291:
	addl	%edi, %eax
	movl	%eax, -48(%ebp)
	jmp	L161
L295:
	movl	$0, (%esp)
	movl	%edi, %edx
	movl	%esi, %eax
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	movl	%eax, -64(%ebp)
	jmp	L160
L304:
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_pthread_mutex_destroy
	leal	-28(%ebp), %ecx
	call	__ZNSt18condition_variableD1Ev
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
L303:
	.cfi_restore_state
	xorl	%esi, %esi
L208:
	movl	12(%edi), %eax
	movl	%esi, (%esp)
	call	*(%eax)
	jmp	L190
L297:
	movl	%ecx, (%esp)
	call	_pthread_mutex_unlock
	jmp	L293
L181:
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	_pthread_mutex_unlock
	cmpb	$0, -20(%ebp)
	je	L145
	jmp	L304
L185:
	movl	$64, %eax
	call	__Z13handle_memerri
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__ZN5async6detailL16thread_task_loopEPNS0_15threadpool_dataEjNS_16task_wait_handleE.cold;	.scl	3;	.type	32;	.endef
__ZN5async6detailL16thread_task_loopEPNS0_15threadpool_dataEjNS_16task_wait_handleE.cold:
LFSB76:
L278:
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	.cfi_escape 0x10,0x5,0x2,0x75,0
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_offset 7, -8
	movl	%eax, (%esp)
	call	__ZSt20__throw_system_errori
L205:
	movl	$LC16, (%esp)
	call	__ZSt20__throw_length_errorPKc
L276:
	movl	%eax, (%esp)
	call	__ZSt20__throw_system_errori
L277:
	movl	%eax, (%esp)
	call	__ZSt20__throw_system_errori
L279:
	movl	%eax, (%esp)
	call	__ZSt20__throw_system_errori
	.cfi_endproc
LFE76:
	.text
	.section	.text.unlikely,"x"
LCOLDE19:
	.text
LHOTE19:
	.p2align 4
	.def	__ZN5async6detailL23threadpool_wait_handlerENS_16task_wait_handleE;	.scl	3;	.type	32;	.endef
__ZN5async6detailL23threadpool_wait_handlerENS_16task_wait_handleE:
LFB93:
	.cfi_startproc
	movl	%fs:44, %edx
	movl	__tls_index, %eax
	movl	4(%esp), %ecx
	movl	(%edx,%eax,4), %eax
	movl	__ZN5async6detailL9thread_idE@secrel32(%eax), %edx
	movl	__ZN5async6detailL17owning_threadpoolE@secrel32(%eax), %eax
	jmp	__ZN5async6detailL16thread_task_loopEPNS0_15threadpool_dataEjNS_16task_wait_handleE
	.cfi_endproc
LFE93:
	.section	.text.unlikely,"x"
	.align 2
LCOLDB20:
	.text
LHOTB20:
	.align 2
	.p2align 4
	.def	__ZN5async6detail15threadpool_dataD1Ev;	.scl	3;	.type	32;	.endef
__ZN5async6detail15threadpool_dataD1Ev:
LFB94:
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
	subl	$40, %esp
	.cfi_def_cfa_offset 60
	movl	64(%ecx), %eax
	movl	%ecx, 20(%esp)
	testl	%eax, %eax
	je	L308
	leal	56(%ecx), %edx
	movl	$3, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
L308:
	movl	20(%esp), %edi
	movl	48(%edi), %eax
	testl	%eax, %eax
	je	L309
	leal	40(%edi), %edx
	movl	$3, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
L309:
	movl	20(%esp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	L310
	call	_mi_free
L310:
	movl	20(%esp), %ebp
	movl	20(%ebp), %ebx
	movl	16(%ebp), %edx
	cmpl	24(%ebp), %ebx
	je	L311
	leal	36(%esp), %esi
	jmp	L315
	.p2align 4,,10
	.p2align 3
L381:
	movl	16(%ebp), %edx
L312:
	movl	12(%ebp), %eax
	addl	$1, %ebx
	subl	$1, %eax
	andl	%eax, %ebx
	cmpl	24(%ebp), %ebx
	je	L311
L315:
	movl	(%edx,%ebx,4), %edi
	testl	%edi, %edi
	je	L312
	movl	12(%edi), %eax
	movl	8(%eax), %eax
	movl	$0, 36(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	call	*%eax
	movl	36(%esp), %eax
	testl	%eax, %eax
	je	L313
	movl	%esi, %ecx
	call	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv
L313:
	lock subl	$1, (%edi)
	jne	L381
	movl	12(%edi), %eax
	movl	%edi, (%esp)
	call	*(%eax)
	jmp	L381
	.p2align 4,,10
	.p2align 3
L311:
	movl	%edx, %eax
	call	_mi_free
	movl	20(%esp), %eax
	movl	4(%eax), %ebx
	testl	%ebx, %ebx
	je	L382
	movl	20(%esp), %eax
	movl	$0, 16(%esp)
	leal	36(%esp), %edi
	movl	8(%eax), %eax
	.p2align 4
	.p2align 3
L331:
	movl	16(%esp), %edx
	sall	$6, %edx
	addl	%eax, %edx
	movl	16(%edx), %ecx
	testl	%ecx, %ecx
	jne	L378
	movl	8(%edx), %ecx
	movl	4(%edx), %esi
	movl	(%edx), %ebp
	cmpl	%esi, %ecx
	je	L318
	movl	%ecx, 12(%esp)
	jmp	L321
	.p2align 5
	.p2align 4,,10
	.p2align 3
L319:
	addl	$1, %esi
	cmpl	%esi, 12(%esp)
	je	L322
L321:
	movl	0(%ebp), %eax
	movl	4(%ebp), %edx
	subl	$1, %eax
	andl	%esi, %eax
	movl	(%edx,%eax,4), %ebx
	testl	%ebx, %ebx
	je	L319
	movl	12(%ebx), %edx
	movl	8(%edx), %edx
	movl	$0, 36(%esp)
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	call	*%edx
	movl	36(%esp), %eax
	testl	%eax, %eax
	je	L320
	movl	%edi, %ecx
	call	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv
L320:
	lock subl	$1, (%ebx)
	jne	L319
	addl	$1, %esi
	movl	12(%ebx), %edx
	movl	%ebx, (%esp)
	call	*(%edx)
	cmpl	%esi, 12(%esp)
	jne	L321
	.p2align 4
	.p2align 3
L322:
	movl	8(%ebp), %ebx
	testl	%ebx, %ebx
	je	L324
	movl	8(%ebx), %esi
	testl	%esi, %esi
	je	L325
	movl	8(%esi), %edx
	testl	%edx, %edx
	je	L326
	movl	8(%edx), %eax
	movl	%eax, 12(%esp)
	testl	%eax, %eax
	je	L327
	movl	8(%eax), %eax
	movl	%eax, 24(%esp)
	testl	%eax, %eax
	je	L328
	movl	8(%eax), %ecx
	testl	%ecx, %ecx
	je	L329
	movl	8(%ecx), %eax
	testl	%eax, %eax
	je	L330
	movl	%ecx, 32(%esp)
	movl	%edx, 28(%esp)
	call	__ZNKSt14default_deleteIN5async6detail16work_steal_queue14circular_arrayEEclEPS3_.part.0
	movl	32(%esp), %ecx
	movl	28(%esp), %edx
L330:
	movl	4(%ecx), %eax
	movl	%edx, 32(%esp)
	movl	%ecx, 28(%esp)
	call	_mi_free
	movl	28(%esp), %eax
	call	_mi_free
	movl	32(%esp), %edx
L329:
	movl	24(%esp), %eax
	movl	%edx, 28(%esp)
	movl	4(%eax), %eax
	call	_mi_free
	movl	24(%esp), %eax
	call	_mi_free
	movl	28(%esp), %edx
L328:
	movl	12(%esp), %eax
	movl	%edx, 24(%esp)
	movl	4(%eax), %eax
	call	_mi_free
	movl	12(%esp), %eax
	call	_mi_free
	movl	24(%esp), %edx
L327:
	movl	4(%edx), %eax
	movl	%edx, 12(%esp)
	call	_mi_free
	movl	12(%esp), %eax
	call	_mi_free
L326:
	movl	4(%esi), %eax
	call	_mi_free
	movl	%esi, %eax
	call	_mi_free
L325:
	movl	4(%ebx), %eax
	call	_mi_free
	movl	%ebx, %eax
	call	_mi_free
L324:
	movl	4(%ebp), %eax
	call	_mi_free
	movl	%ebp, %eax
	call	_mi_free
	movl	20(%esp), %eax
	movl	8(%eax), %eax
	jmp	L323
	.p2align 4,,10
	.p2align 3
L318:
	testl	%ebp, %ebp
	jne	L322
L323:
	movl	20(%esp), %esi
	addl	$1, 16(%esp)
	movl	16(%esp), %ecx
	cmpl	4(%esi), %ecx
	jb	L331
L316:
	call	_mi_free
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	_pthread_mutex_destroy
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
L382:
	.cfi_restore_state
	movl	8(%eax), %eax
	jmp	L316
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__ZN5async6detail15threadpool_dataD1Ev.cold;	.scl	3;	.type	32;	.endef
__ZN5async6detail15threadpool_dataD1Ev.cold:
LFSB94:
L378:
	.cfi_def_cfa_offset 60
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	__ZSt9terminatev
	.cfi_endproc
LFE94:
	.text
	.section	.text.unlikely,"x"
LCOLDE20:
	.text
LHOTE20:
	.section	.text.unlikely,"x"
LCOLDB21:
	.text
LHOTB21:
	.p2align 4
	.def	__ZN5async6detailL29recursive_spawn_worker_threadEPNS0_15threadpool_dataEjj;	.scl	3;	.type	32;	.endef
__ZN5async6detailL29recursive_spawn_worker_threadEPNS0_15threadpool_dataEjj:
LFB101:
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
	subl	$36, %esp
	.cfi_def_cfa_offset 56
	movl	__tls_index, %ebx
	movl	%fs:44, %edx
	movl	64(%esp), %esi
	movl	56(%esp), %ebp
	movl	60(%esp), %edi
	cmpl	$1, %esi
	je	L392
	movl	(%edx,%ebx,4), %eax
	movl	%edi, 12(%esp)
	movl	%ebx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	%edx, 24(%esp)
L384:
	movl	%esi, %eax
	shrl	%esi
	movl	12(%esp), %edi
	movl	$0, 28(%esp)
	subl	%esi, %eax
	movl	%eax, 8(%esp)
	movl	16(%esp), %eax
	leal	(%esi,%edi), %ebx
	movl	__mi_heap_default@secrel32(%eax), %edi
	movl	204(%edi), %edx
	movl	8(%edx), %eax
	testl	%eax, %eax
	je	L403
	movl	(%eax), %ecx
	addw	$1, 16(%edx)
	movl	%ecx, 8(%edx)
L389:
	movl	8(%esp), %edi
	movl	$__ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPN5async6detail15threadpool_dataEjjES6_jjEEEEEE+8, (%eax)
	leal	28(%esp), %ecx
	movl	%ebx, 8(%eax)
	movl	%edi, 4(%eax)
	movl	%ebp, 12(%eax)
	movl	$__ZN5async6detailL29recursive_spawn_worker_threadEPNS0_15threadpool_dataEjj, 16(%eax)
	movl	%eax, 32(%esp)
	leal	32(%esp), %eax
	movl	$__ZNSt6thread24_M_thread_deps_never_runEv, 4(%esp)
	movl	%eax, (%esp)
	call	__ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE
	.cfi_def_cfa_offset 48
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	movl	32(%esp), %ecx
	testl	%ecx, %ecx
	je	L390
	movl	(%ecx), %eax
	call	*4(%eax)
L390:
	sall	$6, %ebx
	addl	8(%ebp), %ebx
	movl	16(%ebx), %eax
	testl	%eax, %eax
	jne	L400
	movl	28(%esp), %eax
	movl	%eax, 16(%ebx)
	cmpl	$1, %esi
	jne	L384
	movl	12(%esp), %edi
	movl	20(%esp), %ebx
	movl	24(%esp), %edx
L392:
	movl	(%edx,%ebx,4), %eax
	movl	%edi, %ecx
	sall	$6, %ecx
	addl	8(%ebp), %ecx
	movl	%ebp, __ZN5async6detailL17owning_threadpoolE@secrel32(%eax)
	movl	%edi, __ZN5async6detailL9thread_idE@secrel32(%eax)
	movl	$__ZN5async6detailL23threadpool_wait_handlerENS_16task_wait_handleE, __ZN5async6detailL19thread_wait_handlerE.lto_priv.0@secrel32(%eax)
	movl	$3, %eax
	mull	%edi
	movl	%edi, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%eax, %edx
	movl	%edi, %eax
	shrl	$30, %edx
	movl	%edx, %ebx
	sall	$31, %ebx
	subl	%edx, %ebx
	movl	$1, %edx
	subl	%ebx, %eax
	cmove	%edx, %eax
	movl	%eax, 12(%ecx)
	movl	48(%ebp), %ecx
	testl	%ecx, %ecx
	je	L385
	leal	40(%ebp), %eax
	movl	%eax, (%esp)
	call	*52(%ebp)
L385:
	movl	%edi, %edx
	xorl	%ecx, %ecx
	movl	%ebp, %eax
	call	__ZN5async6detailL16thread_task_loopEPNS0_15threadpool_dataEjNS_16task_wait_handleE
	movl	64(%ebp), %edx
	testl	%edx, %edx
	je	L383
	leal	56(%ebp), %eax
	movl	%eax, 56(%esp)
	movl	68(%ebp), %eax
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
	jmp	*%eax
	.p2align 4,,10
	.p2align 3
L383:
	.cfi_restore_state
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
L403:
	.cfi_restore_state
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	movl	$20, %edx
	movl	%edi, %eax
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	testl	%eax, %eax
	jne	L389
	xorl	%ecx, %ecx
	movl	$20, %edx
	movl	%edi, %eax
	call	__Z15mi_heap_try_newP9mi_heap_sjb
	jmp	L389
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__ZN5async6detailL29recursive_spawn_worker_threadEPNS0_15threadpool_dataEjj.cold;	.scl	3;	.type	32;	.endef
__ZN5async6detailL29recursive_spawn_worker_threadEPNS0_15threadpool_dataEjj.cold:
LFSB101:
L400:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	__ZSt9terminatev
	.cfi_endproc
LFE101:
	.text
	.section	.text.unlikely,"x"
LCOLDE21:
	.text
LHOTE21:
	.section	.text.unlikely,"x"
LCOLDB22:
	.text
LHOTB22:
	.p2align 4
	.def	__ZN5async6detail9task_funcINS0_21inline_scheduler_implENS_16task_wait_handle14wait_exec_funcIZNS0_L20generic_wait_handlerES3_EUlvE_EENS0_9fake_voidEE3runEPNS0_9task_baseE;	.scl	3;	.type	32;	.endef
__ZN5async6detail9task_funcINS0_21inline_scheduler_implENS_16task_wait_handle14wait_exec_funcIZNS0_L20generic_wait_handlerES3_EUlvE_EENS0_9fake_voidEE3runEPNS0_9task_baseE:
LFB107:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %eax
	movl	20(%eax), %ebx
	testl	%ebx, %ebx
	je	L407
	movl	%ebx, (%esp)
	call	_pthread_mutex_lock
	testl	%eax, %eax
	jne	L408
	orl	$1, 8(%ebx)
	leal	4(%ebx), %ecx
	call	__ZNSt18condition_variable10notify_oneEv
	movl	%ebx, 12(%esp)
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	_pthread_mutex_unlock
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__ZN5async6detail9task_funcINS0_21inline_scheduler_implENS_16task_wait_handle14wait_exec_funcIZNS0_L20generic_wait_handlerES3_EUlvE_EENS0_9fake_voidEE3runEPNS0_9task_baseE.cold;	.scl	3;	.type	32;	.endef
__ZN5async6detail9task_funcINS0_21inline_scheduler_implENS_16task_wait_handle14wait_exec_funcIZNS0_L20generic_wait_handlerES3_EUlvE_EENS0_9fake_voidEE3runEPNS0_9task_baseE.cold:
LFSB107:
L407:
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -8
	movl	$1, (%esp)
	call	__ZSt20__throw_system_errori
L408:
	movl	%eax, (%esp)
	call	__ZSt20__throw_system_errori
	.cfi_endproc
LFE107:
	.text
	.section	.text.unlikely,"x"
LCOLDE22:
	.text
LHOTE22:
	.section	.text.unlikely,"x"
LCOLDB23:
	.text
LHOTB23:
	.p2align 4
	.def	__ZN5async6detail9task_funcINS0_21inline_scheduler_implENS_16task_wait_handle14wait_exec_funcIZNS0_L16thread_task_loopEPNS0_15threadpool_dataEjS3_EUlvE_EENS0_9fake_voidEE3runEPNS0_9task_baseE;	.scl	3;	.type	32;	.endef
__ZN5async6detail9task_funcINS0_21inline_scheduler_implENS_16task_wait_handle14wait_exec_funcIZNS0_L16thread_task_loopEPNS0_15threadpool_dataEjS3_EUlvE_EENS0_9fake_voidEE3runEPNS0_9task_baseE:
LFB110:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %eax
	movl	20(%eax), %ebx
	testl	%ebx, %ebx
	je	L413
	movl	%ebx, (%esp)
	call	_pthread_mutex_lock
	testl	%eax, %eax
	jne	L414
	orl	$1, 8(%ebx)
	leal	4(%ebx), %ecx
	call	__ZNSt18condition_variable10notify_oneEv
	movl	%ebx, 12(%esp)
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	_pthread_mutex_unlock
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__ZN5async6detail9task_funcINS0_21inline_scheduler_implENS_16task_wait_handle14wait_exec_funcIZNS0_L16thread_task_loopEPNS0_15threadpool_dataEjS3_EUlvE_EENS0_9fake_voidEE3runEPNS0_9task_baseE.cold;	.scl	3;	.type	32;	.endef
__ZN5async6detail9task_funcINS0_21inline_scheduler_implENS_16task_wait_handle14wait_exec_funcIZNS0_L16thread_task_loopEPNS0_15threadpool_dataEjS3_EUlvE_EENS0_9fake_voidEE3runEPNS0_9task_baseE.cold:
LFSB110:
L413:
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -8
	movl	$1, (%esp)
	call	__ZSt20__throw_system_errori
L414:
	movl	%eax, (%esp)
	call	__ZSt20__throw_system_errori
	.cfi_endproc
LFE110:
	.text
	.section	.text.unlikely,"x"
LCOLDE23:
	.text
LHOTE23:
	.p2align 4
	.def	__ZN5async6detail11task_resultINS0_9fake_voidEE7destroyEPNS0_9task_baseE;	.scl	3;	.type	32;	.endef
__ZN5async6detail11task_resultINS0_9fake_voidEE7destroyEPNS0_9task_baseE:
LFB111:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -16
	movl	28(%esp), %ebx
	testl	%ebx, %ebx
	je	L416
	movl	%esi, 16(%esp)
	cmpb	$4, 4(%ebx)
	.cfi_offset 6, -12
	je	L444
L418:
	movl	8(%ebx), %esi
	testl	$2, %esi
	je	L420
	movl	%esi, %ecx
	movl	%edi, 20(%esp)
	.cfi_offset 7, -8
	andl	$-4, %ecx
	movl	(%ecx), %eax
	movl	%ecx, %edi
	movl	4(%ecx), %ecx
	cmpl	%ecx, %eax
	jne	L423
	jmp	L421
	.p2align 4
	.p2align 4,,10
	.p2align 3
L422:
	addl	$4, %eax
	cmpl	%eax, %ecx
	je	L421
L423:
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L422
	lock subl	$1, (%edx)
	jne	L422
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%edx), %eax
	movl	%edx, (%esp)
	call	*(%eax)
	movl	4(%esp), %eax
	movl	8(%esp), %ecx
	addl	$4, %eax
	cmpl	%eax, %ecx
	jne	L423
	.p2align 4
	.p2align 3
L421:
	cmpl	$3, %esi
	ja	L445
	movl	20(%esp), %edi
	.cfi_restore 7
L424:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	movl	16(%esp), %esi
	.cfi_restore 6
L416:
	movl	12(%esp), %ebx
	addl	$24, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L420:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	testl	$1, %esi
	jne	L424
	cmpl	$3, %esi
	jbe	L424
	andl	$-4, %esi
	lock subl	$1, (%esi)
	jne	L424
	movl	12(%esi), %eax
	movl	%esi, (%esp)
	call	*(%eax)
	jmp	L424
	.p2align 4,,10
	.p2align 3
L444:
	movl	16(%ebx), %eax
	testl	%eax, %eax
	je	L418
	leal	16(%ebx), %ecx
	call	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv
	jmp	L418
	.p2align 4,,10
	.p2align 3
L445:
	.cfi_offset 7, -8
	leal	12(%edi), %eax
	movl	%eax, (%esp)
	call	_pthread_mutex_destroy
	movl	(%edi), %eax
	testl	%eax, %eax
	je	L425
	call	_mi_free
L425:
	movl	%edi, %eax
	call	_mi_free
	movl	20(%esp), %edi
	.cfi_restore 7
	jmp	L424
	.cfi_endproc
LFE111:
	.p2align 4
	.def	__ZN5async6detail9task_funcINS0_21inline_scheduler_implENS_16task_wait_handle14wait_exec_funcIZNS0_L20generic_wait_handlerES3_EUlvE_EENS0_9fake_voidEE7destroyEPNS0_9task_baseE;	.scl	3;	.type	32;	.endef
__ZN5async6detail9task_funcINS0_21inline_scheduler_implENS_16task_wait_handle14wait_exec_funcIZNS0_L20generic_wait_handlerES3_EUlvE_EENS0_9fake_voidEE7destroyEPNS0_9task_baseE:
LFB115:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -16
	movl	28(%esp), %ebx
	testl	%ebx, %ebx
	je	L446
	movl	%esi, 16(%esp)
	movzbl	4(%ebx), %eax
	cmpb	$4, 4(%ebx)
	.cfi_offset 6, -12
	je	L474
L448:
	movl	8(%ebx), %esi
	testl	$2, %esi
	je	L450
	movl	%esi, %ecx
	movl	%edi, 20(%esp)
	.cfi_offset 7, -8
	andl	$-4, %ecx
	movl	(%ecx), %eax
	movl	%ecx, %edi
	movl	4(%ecx), %ecx
	cmpl	%ecx, %eax
	jne	L453
	jmp	L451
	.p2align 4
	.p2align 4,,10
	.p2align 3
L452:
	addl	$4, %eax
	cmpl	%eax, %ecx
	je	L451
L453:
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L452
	lock subl	$1, (%edx)
	jne	L452
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%edx), %eax
	movl	%edx, (%esp)
	call	*(%eax)
	movl	4(%esp), %eax
	movl	8(%esp), %ecx
	addl	$4, %eax
	cmpl	%eax, %ecx
	jne	L453
	.p2align 4
	.p2align 3
L451:
	cmpl	$3, %esi
	ja	L475
	movl	20(%esp), %edi
	.cfi_restore 7
L454:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	movl	16(%esp), %esi
	.cfi_restore 6
L446:
	movl	12(%esp), %ebx
	addl	$24, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L450:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	testl	$1, %esi
	jne	L454
	cmpl	$3, %esi
	jbe	L454
	andl	$-4, %esi
	lock subl	$1, (%esi)
	jne	L454
	movl	12(%esi), %eax
	movl	%esi, (%esp)
	call	*(%eax)
	jmp	L454
	.p2align 4,,10
	.p2align 3
L474:
	movl	16(%ebx), %eax
	testl	%eax, %eax
	je	L448
	leal	16(%ebx), %ecx
	call	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv
	jmp	L448
	.p2align 4,,10
	.p2align 3
L475:
	.cfi_offset 7, -8
	leal	12(%edi), %eax
	movl	%eax, (%esp)
	call	_pthread_mutex_destroy
	movl	(%edi), %eax
	testl	%eax, %eax
	je	L455
	call	_mi_free
L455:
	movl	%edi, %eax
	call	_mi_free
	movl	20(%esp), %edi
	.cfi_restore 7
	jmp	L454
	.cfi_endproc
LFE115:
	.p2align 4
	.def	__ZN5async6detail9task_funcINS0_21inline_scheduler_implENS_16task_wait_handle14wait_exec_funcIZNS0_L16thread_task_loopEPNS0_15threadpool_dataEjS3_EUlvE_EENS0_9fake_voidEE7destroyEPNS0_9task_baseE;	.scl	3;	.type	32;	.endef
__ZN5async6detail9task_funcINS0_21inline_scheduler_implENS_16task_wait_handle14wait_exec_funcIZNS0_L16thread_task_loopEPNS0_15threadpool_dataEjS3_EUlvE_EENS0_9fake_voidEE7destroyEPNS0_9task_baseE:
LFB118:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -16
	movl	28(%esp), %ebx
	testl	%ebx, %ebx
	je	L476
	movl	%esi, 16(%esp)
	movzbl	4(%ebx), %eax
	cmpb	$4, 4(%ebx)
	.cfi_offset 6, -12
	je	L504
L478:
	movl	8(%ebx), %esi
	testl	$2, %esi
	je	L480
	movl	%esi, %ecx
	movl	%edi, 20(%esp)
	.cfi_offset 7, -8
	andl	$-4, %ecx
	movl	(%ecx), %eax
	movl	%ecx, %edi
	movl	4(%ecx), %ecx
	cmpl	%ecx, %eax
	jne	L483
	jmp	L481
	.p2align 4
	.p2align 4,,10
	.p2align 3
L482:
	addl	$4, %eax
	cmpl	%eax, %ecx
	je	L481
L483:
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L482
	lock subl	$1, (%edx)
	jne	L482
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%edx), %eax
	movl	%edx, (%esp)
	call	*(%eax)
	movl	4(%esp), %eax
	movl	8(%esp), %ecx
	addl	$4, %eax
	cmpl	%eax, %ecx
	jne	L483
	.p2align 4
	.p2align 3
L481:
	cmpl	$3, %esi
	ja	L505
	movl	20(%esp), %edi
	.cfi_restore 7
L484:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	movl	16(%esp), %esi
	.cfi_restore 6
L476:
	movl	12(%esp), %ebx
	addl	$24, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L480:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	testl	$1, %esi
	jne	L484
	cmpl	$3, %esi
	jbe	L484
	andl	$-4, %esi
	lock subl	$1, (%esi)
	jne	L484
	movl	12(%esi), %eax
	movl	%esi, (%esp)
	call	*(%eax)
	jmp	L484
	.p2align 4,,10
	.p2align 3
L504:
	movl	16(%ebx), %eax
	testl	%eax, %eax
	je	L478
	leal	16(%ebx), %ecx
	call	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv
	jmp	L478
	.p2align 4,,10
	.p2align 3
L505:
	.cfi_offset 7, -8
	leal	12(%edi), %eax
	movl	%eax, (%esp)
	call	_pthread_mutex_destroy
	movl	(%edi), %eax
	testl	%eax, %eax
	je	L485
	call	_mi_free
L485:
	movl	%edi, %eax
	call	_mi_free
	movl	20(%esp), %edi
	.cfi_restore 7
	jmp	L484
	.cfi_endproc
LFE118:
	.section .rdata,"dr"
LC24:
	.ascii "         --- BUCKET LIST ---\0"
	.align 4
LC25:
	.ascii "source/build/src/baselayer.cpp\0"
	.align 4
LC26:
	.ascii "bucket #%u (%d blocks of %d bytes):\0"
LC27:
	.ascii "cache hit\0"
LC28:
	.ascii "%12s: %u\0"
LC29:
	.ascii "hit\0"
LC30:
	.ascii "miss\0"
LC31:
	.ascii "%12s: %s%u\0"
LC32:
	.ascii "freed\0"
LC33:
	.ascii "in use\0"
LC34:
	.ascii "%12s: %u (%d bytes)\0"
	.align 4
LC35:
	.ascii "%d total bytes in use across %d buckets.\0"
	.text
	.p2align 4
	.globl	__ZL18osdfunc_bucketlistPK13osdfuncparm_t.lto_priv.0
	.def	__ZL18osdfunc_bucketlistPK13osdfuncparm_t.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL18osdfunc_bucketlistPK13osdfuncparm_t.lto_priv.0:
LFB120:
	.cfi_startproc
	subl	$64, %esp
	.cfi_def_cfa_offset 68
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	movl	%edi, 56(%esp)
	.cfi_offset 7, -12
	movl	__ZN6loguru18g_stderr_verbosityE, %edi
	movl	%eax, %edx
	cmpl	%eax, %edi
	cmovge	%edi, %edx
	testl	%edx, %edx
	jns	L538
	movl	_g_sm_heap, %edx
	movl	(%edx), %ecx
	movl	%ecx, 36(%esp)
	testl	%ecx, %ecx
	jle	L528
L522:
	movl	%ebx, 48(%esp)
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	movl	%esi, 52(%esp)
	movl	%ebp, 60(%esp)
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	movl	$0, 40(%esp)
	jmp	L520
	.p2align 4,,10
	.p2align 3
L512:
	testl	%ebp, %ebp
	jne	L539
L514:
	testl	%edx, %edx
	jne	L540
L513:
	addl	%ebx, %ebp
	leal	0(%ebp,%edx), %ebx
	movl	28(%esp), %ebp
	subl	%esi, %ebx
	imull	%ebx, %ebp
	addl	%ebp, 40(%esp)
	testl	%esi, %esi
	jne	L541
L517:
	testl	%ecx, %ecx
	js	L518
	movl	%ebp, 24(%esp)
	movl	%ebx, 20(%esp)
	movl	$LC33, 16(%esp)
	movl	$LC34, 12(%esp)
	movl	$141, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %edi
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	cmpl	%eax, %edi
	movl	%eax, %ecx
	cmovge	%edi, %ecx
L518:
	movl	32(%esp), %ebx
	cmpl	36(%esp), %ebx
	jge	L537
	movl	_g_sm_heap, %edx
	movl	(%edx), %ecx
L520:
	leal	1(%ebx), %esi
	movl	%esi, %ebp
	movl	%esi, 32(%esp)
	sall	$4, %ebp
	cmpl	%eax, %edi
	cmovl	%eax, %edi
	movl	%ebp, 28(%esp)
	testl	%edi, %edi
	js	L509
	xorl	%eax, %eax
	cmpl	%ecx, %ebx
	jnb	L510
	movl	4(%edx), %eax
	xorl	%edx, %edx
	divl	%ebp
L510:
	movl	28(%esp), %edi
	movl	%eax, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%edi, 24(%esp)
	movl	$LC26, 12(%esp)
	movl	$117, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	_g_sm_heap, %edx
	movl	(%edx), %ecx
L509:
	cmpl	%ecx, %ebx
	jnb	L524
	leal	(%ebx,%ebx,4), %eax
	leal	68(%edx,%eax,8), %ebx
	leal	8(%ebx), %edx
	leal	12(%ebx), %eax
	leal	4(%ebx), %ecx
L511:
	movl	(%ebx), %ebx
	movl	(%ecx), %ebp
	movl	(%edx), %edx
	movl	(%eax), %esi
	movl	__ZN6loguru18g_stderr_verbosityE, %edi
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	cmpl	%eax, %edi
	movl	%eax, %ecx
	cmovge	%edi, %ecx
	testl	%ebx, %ebx
	je	L512
	testl	%ecx, %ecx
	js	L513
	movl	%ebx, 20(%esp)
	movl	$LC27, 16(%esp)
	movl	$LC28, 12(%esp)
	movl	$127, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	$0, (%esp)
	movl	%edx, 44(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %edi
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	movl	44(%esp), %edx
	cmpl	%eax, %edi
	movl	%eax, %ecx
	cmovge	%edi, %ecx
	testl	%ebp, %ebp
	je	L514
	.p2align 4
	.p2align 3
L539:
	testl	%ecx, %ecx
	js	L513
	movl	%ebp, 20(%esp)
	movl	$LC29, 16(%esp)
	movl	$LC28, 12(%esp)
	movl	$130, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	$0, (%esp)
	movl	%edx, 44(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %edi
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	movl	44(%esp), %edx
	cmpl	%eax, %edi
	movl	%eax, %ecx
	cmovge	%edi, %ecx
	testl	%edx, %edx
	je	L513
L540:
	testl	%ecx, %ecx
	js	L513
	movl	_osd, %eax
	movl	%edx, 24(%esp)
	movl	%edx, 44(%esp)
	movl	1104(%eax), %eax
	movl	$LC30, 16(%esp)
	movl	$LC31, 12(%esp)
	movl	%eax, 20(%esp)
	movl	$133, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %edi
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	movl	44(%esp), %edx
	cmpl	%eax, %edi
	movl	%eax, %ecx
	cmovge	%edi, %ecx
	jmp	L513
	.p2align 4,,10
	.p2align 3
L541:
	testl	%ecx, %ecx
	js	L518
	movl	%esi, 20(%esp)
	movl	$LC32, 16(%esp)
	movl	$LC28, 12(%esp)
	movl	$136, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %edi
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	cmpl	%eax, %edi
	movl	%eax, %ecx
	cmovge	%edi, %ecx
	jmp	L517
	.p2align 4,,10
	.p2align 3
L524:
	movl	$4, %ecx
	movl	$12, %eax
	movl	$8, %edx
	xorl	%ebx, %ebx
	jmp	L511
	.p2align 4,,10
	.p2align 3
L537:
	movl	48(%esp), %ebx
	.cfi_restore 3
	movl	52(%esp), %esi
	.cfi_restore 6
	movl	60(%esp), %ebp
	.cfi_restore 5
L519:
	testl	%ecx, %ecx
	jns	L542
L528:
	movl	56(%esp), %edi
	xorl	%eax, %eax
	addl	$64, %esp
	.cfi_remember_state
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L542:
	.cfi_restore_state
	movl	36(%esp), %eax
	movl	$LC35, 12(%esp)
	movl	$144, 8(%esp)
	movl	%eax, 20(%esp)
	movl	40(%esp), %eax
	movl	$LC25, 4(%esp)
	movl	%eax, 16(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	56(%esp), %edi
	xorl	%eax, %eax
	addl	$64, %esp
	.cfi_remember_state
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L538:
	.cfi_restore_state
	movl	$LC24, 12(%esp)
	movl	$108, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	_g_sm_heap, %edx
	movl	__ZN6loguru18g_stderr_verbosityE, %edi
	movl	(%edx), %eax
	testl	%eax, %eax
	movl	%eax, 36(%esp)
	movl	%eax, %ecx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	jg	L522
	cmpl	%eax, %edi
	movl	$0, 40(%esp)
	cmovge	%edi, %eax
	movl	%eax, %ecx
	jmp	L519
	.cfi_endproc
LFE120:
	.section .rdata,"dr"
LC36:
	.ascii "\0"
LC37:
	.ascii " (no anisotropic filtering)\0"
LC38:
	.ascii "OpenGL driver: %s %s\0"
LC39:
	.ascii "OpenGL context: version %d.%d\0"
LC40:
	.ascii "supported\0"
LC41:
	.ascii "not supported\0"
LC42:
	.ascii " BGRA textures:           %s\0"
LC43:
	.ascii " Buffer storage:          %s\0"
LC44:
	.ascii " Debug output:            %s\0"
LC45:
	.ascii " Depth textures:          %s\0"
LC46:
	.ascii " Frame buffer objects:    %s\0"
LC47:
	.ascii " GLSL:                    %s\0"
	.align 4
LC49:
	.ascii " Maximum anisotropy:      %.1f%s\0"
	.align 4
LC50:
	.ascii " Maximum texture size:    %dpx\0"
LC51:
	.ascii " Multi-texturing:         %s\0"
LC52:
	.ascii " Non-power-of-2 textures: %s\0"
LC53:
	.ascii " Occlusion queries:       %s\0"
LC54:
	.ascii " Rectangle textures:      %s\0"
LC55:
	.ascii " Reset notifications:     %s\0"
LC56:
	.ascii " Sampler objects:         %s\0"
LC57:
	.ascii " Shadow textures:         %s\0"
LC58:
	.ascii " Sync:                    %s\0"
LC59:
	.ascii " Texture compression:     %s\0"
LC60:
	.ascii " Extensions:\12%s\0"
	.text
	.p2align 4
	.globl	_osdcmd_glinfo
	.def	_osdcmd_glinfo;	.scl	2;	.type	32;	.endef
_osdcmd_glinfo:
LFB122:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-8, %esp
	subl	$36, %esp
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$1, %eax
	jg	L554
L544:
	movl	_glinfo+24, %eax
	testl	%eax, %eax
	jne	L555
L545:
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L555:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	$LC40, 28(%esp)
	movl	$LC41, 32(%esp)
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L545
	movzbl	_glinfo+28, %eax
	notl	%eax
	andl	$1, %eax
	movl	28(%esp,%eax,4), %eax
	movl	$LC42, 12(%esp)
	movl	$724, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC25, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L545
	movzbl	_glinfo+28, %eax
	shrb	%al
	andl	$1, %eax
	xorl	$1, %eax
	movl	28(%esp,%eax,4), %eax
	movl	$LC43, 12(%esp)
	movl	$725, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC25, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L545
	movzbl	_glinfo+28, %eax
	shrb	$2, %al
	andl	$1, %eax
	xorl	$1, %eax
	movl	28(%esp,%eax,4), %eax
	movl	$LC44, 12(%esp)
	movl	$726, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC25, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L545
	movzbl	_glinfo+28, %eax
	shrb	$4, %al
	andl	$1, %eax
	xorl	$1, %eax
	movl	28(%esp,%eax,4), %eax
	movl	$LC45, 12(%esp)
	movl	$727, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC25, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L545
	movzbl	_glinfo+28, %eax
	shrb	$5, %al
	andl	$1, %eax
	xorl	$1, %eax
	movl	28(%esp,%eax,4), %eax
	movl	$LC46, 12(%esp)
	movl	$728, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC25, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L545
	movzbl	_glinfo+28, %eax
	shrb	$6, %al
	andl	$1, %eax
	xorl	$1, %eax
	movl	28(%esp,%eax,4), %eax
	movl	$LC47, 12(%esp)
	movl	$729, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC25, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L545
	movss	_glinfo+16, %xmm0
	comiss	LC48, %xmm0
	movl	$LC37, %edx
	movl	$LC36, %eax
	flds	_glinfo+16
	movl	$LC49, 12(%esp)
	movl	$730, 8(%esp)
	cmovbe	%edx, %eax
	movl	$LC25, 4(%esp)
	movl	$0, (%esp)
	movl	%eax, 24(%esp)
	fstpl	16(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L545
	movl	_glinfo+20, %eax
	movl	$LC50, 12(%esp)
	movl	$731, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC25, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L545
	movsbl	_glinfo+28, %eax
	notl	%eax
	shrl	$31, %eax
	movl	28(%esp,%eax,4), %eax
	movl	$LC51, 12(%esp)
	movl	$732, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC25, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L545
	movsbl	_glinfo+29, %eax
	notl	%eax
	shrl	$31, %eax
	movl	28(%esp,%eax,4), %eax
	movl	$LC52, 12(%esp)
	movl	$733, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC25, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L545
	movzbl	_glinfo+29, %eax
	notl	%eax
	andl	$1, %eax
	movl	28(%esp,%eax,4), %eax
	movl	$LC53, 12(%esp)
	movl	$734, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC25, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L545
	movzbl	_glinfo+29, %eax
	shrb	%al
	andl	$1, %eax
	xorl	$1, %eax
	movl	28(%esp,%eax,4), %eax
	movl	$LC54, 12(%esp)
	movl	$735, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC25, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L545
	movzbl	_glinfo+29, %eax
	shrb	$2, %al
	andl	$1, %eax
	xorl	$1, %eax
	movl	28(%esp,%eax,4), %eax
	movl	$LC55, 12(%esp)
	movl	$736, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC25, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L545
	movzbl	_glinfo+29, %eax
	shrb	$3, %al
	andl	$1, %eax
	xorl	$1, %eax
	movl	28(%esp,%eax,4), %eax
	movl	$LC56, 12(%esp)
	movl	$737, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC25, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L545
	movzbl	_glinfo+29, %eax
	shrb	$4, %al
	andl	$1, %eax
	xorl	$1, %eax
	movl	28(%esp,%eax,4), %eax
	movl	$LC57, 12(%esp)
	movl	$738, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC25, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L545
	movzbl	_glinfo+29, %eax
	shrb	$5, %al
	andl	$1, %eax
	xorl	$1, %eax
	movl	28(%esp,%eax,4), %eax
	movl	$LC58, 12(%esp)
	movl	$739, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC25, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L545
	movzbl	_glinfo+29, %eax
	shrb	$6, %al
	andl	$1, %eax
	xorl	$1, %eax
	movl	28(%esp,%eax,4), %eax
	movl	$LC59, 12(%esp)
	movl	$740, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC25, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L545
	movl	_glinfo+12, %eax
	movl	$LC60, 12(%esp)
	movl	$744, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC25, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	xorl	%eax, %eax
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L554:
	.cfi_restore_state
	movl	_glinfo+8, %eax
	movl	$LC38, 12(%esp)
	movl	$712, 8(%esp)
	movl	%eax, 20(%esp)
	movl	_glinfo+4, %eax
	movl	$LC25, 4(%esp)
	movl	%eax, 16(%esp)
	movl	$2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	_GLVersion, %eax
	testl	%eax, %eax
	je	L544
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$1, %edx
	jle	L544
	movl	_GLVersion+4, %edx
	movl	%eax, 16(%esp)
	movl	$LC39, 12(%esp)
	movl	%edx, 20(%esp)
	movl	$715, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	$2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L544
	.cfi_endproc
LFE122:
	.p2align 4
	.globl	__ZL16osdfunc_heapinfoPK13osdfuncparm_t.lto_priv.0
	.def	__ZL16osdfunc_heapinfoPK13osdfuncparm_t.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL16osdfunc_heapinfoPK13osdfuncparm_t.lto_priv.0:
LFB123:
	.cfi_startproc
	xorl	%eax, %eax
	call	_mi_stats_print_out.constprop.0
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE123:
	.section .rdata,"dr"
	.align 4
LC62:
	.ascii "Processing model data. This may take a while...\0"
LC63:
	.ascii "source/build/src/engine.cpp\0"
	.align 4
LC64:
	.ascii "Failed processing md3model '%s'!\0"
	.align 4
LC65:
	.ascii "Null geometry for md3model '%s'!\0"
	.align 4
LC66:
	.ascii "Rendering method changed to %s.\0"
	.text
	.p2align 4
	.globl	__ZL21osdfunc_setrendermodePK13osdfuncparm_t.lto_priv.0
	.def	__ZL21osdfunc_setrendermodePK13osdfuncparm_t.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL21osdfunc_setrendermodePK13osdfuncparm_t.lto_priv.0:
LFB126:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	36(%esp), %eax
	movl	(%eax), %edx
	cmpl	$1, %edx
	je	L594
	movl	$1, %edx
L557:
	movl	%edx, %eax
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L594:
	.cfi_restore_state
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%eax), %eax
	movl	%edx, 20(%esp)
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_strtol
	leal	-3(%eax), %ecx
	cmpl	$1, %ecx
	jbe	L580
	testl	%eax, %eax
	movl	20(%esp), %edx
	jne	L557
L580:
	cmpl	_rendmode, %eax
	je	L560
	movl	%eax, 20(%esp)
	call	__Z28buildgl_resetStateAccountingv
	cmpl	$8, _bpp
	je	L595
	cmpl	$4, 20(%esp)
	jne	L567
	movl	_nextmodelid, %eax
	testl	%eax, %eax
	jle	L568
	movl	%ebx, 28(%esp)
	.cfi_offset 3, -8
	xorl	%edx, %edx
	jmp	L573
	.p2align 6
	.p2align 4,,10
	.p2align 3
L569:
	addl	$1, %edx
	cmpl	_nextmodelid, %edx
	jge	L596
L573:
	movl	_models, %eax
	leal	0(,%edx,4), %ecx
	movl	(%eax,%edx,4), %eax
	cmpl	$3, (%eax)
	jne	L569
	movl	196(%eax), %ebx
	movl	124(%ebx), %ebx
	testl	%ebx, %ebx
	jne	L569
	movl	__ZZL20PolymerProcessModelsvE6warned, %ebx
	testl	%ebx, %ebx
	je	L597
L570:
	movl	%ecx, 24(%esp)
	movl	%edx, 20(%esp)
	call	_md3postload_polymer.part.0
	movl	20(%esp), %edx
	movl	24(%esp), %ecx
	testl	%eax, %eax
	jne	L572
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	cmpl	%eax, __ZN6loguru18g_stderr_verbosityE
	cmovge	__ZN6loguru18g_stderr_verbosityE, %eax
	cmpl	$-2, %eax
	jl	L569
	movl	_models, %eax
	movl	%edx, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	(%eax,%ecx), %eax
	movl	$LC64, 12(%esp)
	movl	$14958, 8(%esp)
	addl	$88, %eax
	movl	$LC63, 4(%esp)
	movl	%eax, 16(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	24(%esp), %edx
	movl	20(%esp), %ecx
L572:
	movl	_models, %eax
	movl	(%eax,%ecx), %eax
	movl	196(%eax), %ecx
	movl	124(%ecx), %ecx
	testl	%ecx, %ecx
	jne	L569
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, __ZN6loguru18g_stderr_verbosityE
	cmovge	__ZN6loguru18g_stderr_verbosityE, %ecx
	cmpl	$-2, %ecx
	jl	L569
	addl	$88, %eax
	movl	$LC65, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$14961, 8(%esp)
	movl	$LC63, 4(%esp)
	movl	$-2, (%esp)
	movl	%edx, 20(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	20(%esp), %edx
	jmp	L569
	.p2align 4,,10
	.p2align 3
L595:
	.cfi_restore 3
	cmpb	$0, _nogl
	je	L598
L562:
	cmpl	$4, _rendmode
	je	L565
L593:
	movb	$0, _inpreparemirror
	movb	$1, _basepalreset
	movl	$0, _rendmode
L576:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$1, %eax
	jle	L560
	movl	_rendmode, %eax
	movl	$LC66, 12(%esp)
	movl	$683, 8(%esp)
	movl	__ZZL21osdfunc_setrendermodePK13osdfuncparm_tE5modes(,%eax,4), %eax
	movl	$LC25, 4(%esp)
	movl	$2, (%esp)
	movl	%eax, 16(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L560:
	xorl	%edx, %edx
	addl	$32, %esp
	.cfi_def_cfa_offset 4
	movl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L596:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -8
	movl	28(%esp), %ebx
	.cfi_restore 3
L568:
	call	_polymer_init
	testl	%eax, %eax
	je	L574
	movb	$0, _inpreparemirror
	movb	$1, _basepalreset
	movl	$4, _rendmode
	movl	$4, _glrendmode
	jmp	L576
	.p2align 4,,10
	.p2align 3
L567:
	cmpl	$4, _rendmode
	je	L599
L574:
	movb	$0, _inpreparemirror
	movb	$1, _basepalreset
	movl	$3, _rendmode
	movl	$3, _glrendmode
	movl	$-1, __ZL11lastbasepal.lto_priv.0
	call	__Z19polymost_resetStatev
	jmp	L576
	.p2align 4,,10
	.p2align 3
L598:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L563
	movl	$3042, (%esp)
	call	*_glad_glDisable
	.cfi_def_cfa_offset 32
	xorl	%ecx, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	$1, (%esp)
	call	_inthash_add
L563:
	movl	$3008, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L562
	movl	$3008, (%esp)
	call	*_glad_glDisable
	.cfi_def_cfa_offset 32
	xorl	%ecx, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	$1, (%esp)
	call	_inthash_add
	cmpl	$4, _rendmode
	jne	L593
L565:
	call	_engineClearLightsFromMHK
	call	_polymer_uninit
	jmp	L593
	.p2align 4,,10
	.p2align 3
L597:
	.cfi_offset 3, -8
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	cmpl	%eax, __ZN6loguru18g_stderr_verbosityE
	cmovge	__ZN6loguru18g_stderr_verbosityE, %eax
	testl	%eax, %eax
	js	L571
	movl	$LC62, 12(%esp)
	movl	$14952, 8(%esp)
	movl	$LC63, 4(%esp)
	movl	$0, (%esp)
	movl	%ecx, 24(%esp)
	movl	%edx, 20(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	24(%esp), %ecx
	movl	20(%esp), %edx
L571:
	movl	%ecx, 24(%esp)
	movl	%edx, 20(%esp)
	call	_videoNextPage
	movl	_models, %eax
	movl	24(%esp), %ecx
	movl	$1, __ZZL20PolymerProcessModelsvE6warned
	movl	20(%esp), %edx
	movl	(%eax,%ecx), %eax
	movl	196(%eax), %ebx
	movl	124(%ebx), %ebx
	testl	%ebx, %ebx
	jne	L569
	jmp	L570
	.p2align 4,,10
	.p2align 3
L599:
	.cfi_restore 3
	call	_engineClearLightsFromMHK
	call	_polymer_uninit
	jmp	L574
	.cfi_endproc
LFE126:
	.section .rdata,"dr"
	.align 4
LC67:
	.ascii "r_displayindex: change video display.\0"
LC68:
	.ascii "Detected displays:\0"
LC69:
	.ascii " %s\0"
LC70:
	.ascii "%s %d\0"
	.text
	.p2align 4
	.globl	__ZL19osdcmd_displayindexPK13osdfuncparm_t.lto_priv.0
	.def	__ZL19osdcmd_displayindexPK13osdfuncparm_t.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL19osdcmd_displayindexPK13osdfuncparm_t.lto_priv.0:
LFB136:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$28, %esp
	.cfi_def_cfa_offset 36
	movl	36(%esp), %ebx
	cmpl	$1, (%ebx)
	jne	L601
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_strtol
	cmpl	_g_numdisplays, %eax
	jb	L611
L601:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	jns	L612
L604:
	movl	_g_numdisplays, %eax
	testl	%eax, %eax
	jle	L605
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L607:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L606
	movl	%ebx, (%esp)
	call	_SDL_GetDisplayName
	movl	$LC69, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$760, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L606:
	addl	$1, %ebx
	cmpl	%ebx, _g_numdisplays
	jg	L607
L605:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L612:
	.cfi_restore_state
	movl	$LC67, 12(%esp)
	movl	$756, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L604
	movl	$LC68, 12(%esp)
	movl	$757, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L604
	.p2align 4,,10
	.p2align 3
L611:
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	__ZN6loguru18g_stderr_verbosityE, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	jns	L613
	movl	%eax, _r_displayindex
	call	__Z17osdcmd_restartvidPK13osdfuncparm_t.constprop.0.isra.0
L614:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L613:
	.cfi_restore_state
	movl	%eax, 20(%esp)
	movl	4(%ebx), %edx
	movl	$LC70, 12(%esp)
	movl	%edx, 16(%esp)
	movl	$765, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	$0, (%esp)
	movl	%eax, 24(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	24(%esp), %eax
	movl	%eax, _r_displayindex
	call	__Z17osdcmd_restartvidPK13osdfuncparm_t.constprop.0.isra.0
	jmp	L614
	.cfi_endproc
LFE136:
	.section .rdata,"dr"
	.align 2
LC71:
	.ascii "n\0t\0d\0l\0l\0.\0d\0l\0l\0\0\0"
LC72:
	.ascii "RtlDllShutdownInProgress\0"
	.section	.text.unlikely,"x"
LCOLDB73:
	.text
LHOTB73:
	.p2align 4
	.globl	___tcf_ZZN5async6detail9singletonINS0_22default_scheduler_implEE12get_instanceEvE8instance.lto_priv.0
	.def	___tcf_ZZN5async6detail9singletonINS0_22default_scheduler_implEE12get_instanceEvE8instance.lto_priv.0;	.scl	2;	.type	32;	.endef
___tcf_ZZN5async6detail9singletonINS0_22default_scheduler_implEE12get_instanceEvE8instance.lto_priv.0:
LFB138:
	.cfi_startproc
	movl	__ZZN5async6detail9singletonINS0_22default_scheduler_implEE12get_instanceEvE8instance, %ecx
	testl	%ecx, %ecx
	je	L615
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%esi, 12(%esp)
	movl	$LC71, (%esp)
	.cfi_offset 6, -16
	call	*__imp__GetModuleHandleW@4
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	movl	$LC72, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__GetProcAddress@8
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	testl	%eax, %eax
	je	L617
	call	*%eax
	testb	%al, %al
	jne	L648
L617:
	movl	%ebp, 20(%esp)
	.cfi_offset 5, -8
	movl	__ZZN5async6detail9singletonINS0_22default_scheduler_implEE12get_instanceEvE8instance, %ebp
	movl	%ebx, 8(%esp)
	movl	%edi, 16(%esp)
	testl	%ebp, %ebp
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	je	L623
	movl	%ebp, (%esp)
	call	_pthread_mutex_lock
	testl	%eax, %eax
	jne	L643
	movl	__ZZN5async6detail9singletonINS0_22default_scheduler_implEE12get_instanceEvE8instance, %eax
	movb	$1, 28(%eax)
	movl	32(%eax), %edi
	testl	%edi, %edi
	je	L622
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L625:
	movl	36(%eax), %eax
	movl	(%eax,%esi,4), %ebx
	testl	%ebx, %ebx
	je	L623
	movl	%ebx, (%esp)
	call	_pthread_mutex_lock
	testl	%eax, %eax
	jne	L644
	orl	$2, 8(%ebx)
	leal	4(%ebx), %ecx
	addl	$1, %esi
	call	__ZNSt18condition_variable10notify_oneEv
	movl	%ebx, (%esp)
	call	_pthread_mutex_unlock
	movl	__ZZN5async6detail9singletonINS0_22default_scheduler_implEE12get_instanceEvE8instance, %eax
	cmpl	%esi, %edi
	jne	L625
L622:
	movl	$0, 32(%eax)
	movl	%ebp, (%esp)
	call	_pthread_mutex_unlock
	movl	__ZZN5async6detail9singletonINS0_22default_scheduler_implEE12get_instanceEvE8instance, %esi
	movl	4(%esi), %eax
	testl	%eax, %eax
	je	L626
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L627:
	movl	%ebx, %ecx
	addl	$1, %ebx
	sall	$6, %ecx
	addl	8(%esi), %ecx
	addl	$16, %ecx
	call	__ZNSt6thread4joinEv
	movl	__ZZN5async6detail9singletonINS0_22default_scheduler_implEE12get_instanceEvE8instance, %esi
	cmpl	4(%esi), %ebx
	jb	L627
L626:
	movl	%esi, %ecx
	call	__ZN5async6detail15threadpool_dataD1Ev
	movl	8(%esp), %ebx
	.cfi_restore 3
	movl	16(%esp), %edi
	.cfi_restore 7
	movl	%esi, %eax
	movl	20(%esp), %ebp
	.cfi_restore 5
	movl	12(%esp), %esi
	addl	$24, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	_mi_free
	.p2align 4,,10
	.p2align 3
L615:
	ret
	.p2align 4,,10
	.p2align 3
L648:
	.cfi_def_cfa_offset 28
	.cfi_offset 6, -16
	movl	__ZZN5async6detail9singletonINS0_22default_scheduler_implEE12get_instanceEvE8instance, %esi
	movl	4(%esi), %edx
	testl	%edx, %edx
	je	L618
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L619:
	movl	%ebx, %ecx
	addl	$1, %ebx
	sall	$6, %ecx
	addl	8(%esi), %ecx
	addl	$16, %ecx
	call	__ZNSt6thread6detachEv
	movl	__ZZN5async6detail9singletonINS0_22default_scheduler_implEE12get_instanceEvE8instance, %esi
	cmpl	4(%esi), %ebx
	jb	L619
	movl	8(%esp), %ebx
	.cfi_restore 3
L618:
	movl	%esi, %ecx
	call	__ZN5async6detail15threadpool_dataD1Ev
	movl	%esi, %eax
	movl	12(%esp), %esi
	addl	$24, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	_mi_free
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	___tcf_ZZN5async6detail9singletonINS0_22default_scheduler_implEE12get_instanceEvE8instance.lto_priv.0.cold;	.scl	3;	.type	32;	.endef
___tcf_ZZN5async6detail9singletonINS0_22default_scheduler_implEE12get_instanceEvE8instance.lto_priv.0.cold:
LFSB138:
L644:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%eax, (%esp)
	call	__ZSt20__throw_system_errori
L623:
	movl	$1, (%esp)
	call	__ZSt20__throw_system_errori
L643:
	movl	%eax, (%esp)
	call	__ZSt20__throw_system_errori
	.cfi_endproc
LFE138:
	.text
	.section	.text.unlikely,"x"
LCOLDE73:
	.text
LHOTE73:
	.align 2
	.p2align 4
	.def	__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPN5async6detail15threadpool_dataEjjES6_ijEEEEED1Ev;	.scl	3;	.type	32;	.endef
__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPN5async6detail15threadpool_dataEjjES6_ijEEEEED1Ev:
LFB142:
	.cfi_startproc
	movl	$__ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPN5async6detail15threadpool_dataEjjES6_ijEEEEEE+8, (%ecx)
	jmp	__ZNSt6thread6_StateD2Ev
	.cfi_endproc
LFE142:
	.align 2
	.p2align 4
	.def	__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPN5async6detail15threadpool_dataEjjES6_ijEEEEED0Ev;	.scl	3;	.type	32;	.endef
__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPN5async6detail15threadpool_dataEjjES6_ijEEEEED0Ev:
LFB143:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%ecx, %ebx
	movl	$__ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPN5async6detail15threadpool_dataEjjES6_ijEEEEEE+8, (%ecx)
	call	__ZNSt6thread6_StateD2Ev
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	_mi_free
	.cfi_endproc
LFE143:
	.align 2
	.p2align 4
	.def	__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPN5async6detail15threadpool_dataEjjES6_jjEEEEED1Ev;	.scl	3;	.type	32;	.endef
__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPN5async6detail15threadpool_dataEjjES6_jjEEEEED1Ev:
LFB144:
	.cfi_startproc
	movl	$__ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPN5async6detail15threadpool_dataEjjES6_jjEEEEEE+8, (%ecx)
	jmp	__ZNSt6thread6_StateD2Ev
	.cfi_endproc
LFE144:
	.align 2
	.p2align 4
	.def	__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPN5async6detail15threadpool_dataEjjES6_jjEEEEED0Ev;	.scl	3;	.type	32;	.endef
__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPN5async6detail15threadpool_dataEjjES6_jjEEEEED0Ev:
LFB145:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%ecx, %ebx
	movl	$__ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPN5async6detail15threadpool_dataEjjES6_jjEEEEEE+8, (%ecx)
	call	__ZNSt6thread6_StateD2Ev
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	_mi_free
	.cfi_endproc
LFE145:
	.align 2
	.p2align 4
	.def	__ZN7cache1d20inc_and_check_cacnumEv.constprop.0;	.scl	3;	.type	32;	.endef
__ZN7cache1d20inc_and_check_cacnumEv.constprop.0:
LFB147:
	.cfi_startproc
	movl	_g_cache+16, %eax
	movl	_g_cache+12, %edx
	addl	$1, %eax
	movl	%eax, _g_cache+16
	cmpl	%edx, %eax
	jge	L664
	ret
	.p2align 4,,10
	.p2align 3
L664:
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	addl	$1024, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	sall	$4, %edx
	movl	%edx, %esi
	subl	$48, %esp
	.cfi_def_cfa_offset 60
	movl	__ZZ12BgetpagesizeE8pageSize, %eax
	cmpl	$-1, %eax
	je	L665
L658:
	movl	$16384, %edx
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	cmpl	%edx, %eax
	cmova	%edx, %eax
	movl	%eax, 4(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj
	.cfi_def_cfa_offset 52
	subl	$8, %esp
	.cfi_def_cfa_offset 60
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L659
	movl	_g_cache+12, %eax
	movl	$16384, 8(%esp)
	movl	$0, 4(%esp)
	sall	$4, %eax
	addl	%ebx, %eax
	movl	%eax, (%esp)
	call	_memset
	movl	_g_cache+12, %eax
	movl	%ebx, (%esp)
	sall	$4, %eax
	movl	%eax, 8(%esp)
	movl	_g_cache, %eax
	movl	%eax, 4(%esp)
	call	_memcpy
	movl	_g_cache, %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 56
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	movl	%ebx, _g_cache
	addl	$1024, _g_cache+12
	addl	$48, %esp
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
L665:
	.cfi_restore_state
	leal	12(%esp), %eax
	movl	%eax, (%esp)
	call	*__imp__GetSystemInfo@4
	.cfi_def_cfa_offset 56
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	movl	16(%esp), %eax
	movl	%eax, __ZZ12BgetpagesizeE8pageSize
	jmp	L658
	.p2align 4,,10
	.p2align 3
L659:
	movl	%esi, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE147:
	.section .rdata,"dr"
LC74:
	.ascii "ART:%4d \0"
LC75:
	.ascii "HI:%4d \0"
LC76:
	.ascii "VOX:%4d \0"
LC77:
	.ascii "Block listing:\0"
LC78:
	.ascii "source/build/src/cache1d.cpp\0"
LC79:
	.ascii "%4d \0"
LC80:
	.ascii "@ %x: \0"
LC81:
	.ascii "SIZ:%5d \0"
LC82:
	.ascii "LCK:%d \0"
LC83:
	.ascii "%s\0"
LC84:
	.ascii "Cache size:  %dKB\0"
LC85:
	.ascii "Used:        %dKB\0"
LC86:
	.ascii "Remaining:   %dKB\0"
LC87:
	.ascii "Block count: %d/%d\0"
	.text
	.align 2
	.p2align 4
	.def	__ZN7cache1d6reportEv.constprop.0;	.scl	3;	.type	32;	.endef
__ZN7cache1d6reportEv.constprop.0:
LFB150:
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
	jmp	L672
	.p2align 4,,10
	.p2align 3
L669:
	addl	$1, %edi
	cmpl	$30719, %edi
	je	L710
L672:
	movl	_waloff(,%edi,4), %edx
	testl	%edx, %edx
	jne	L711
L667:
	leal	(%edi,%edi,2), %eax
	movl	_classicht(,%eax,4), %edx
	testl	%edx, %edx
	jne	L712
L668:
	movswl	_tiletovox(%edi,%edi), %eax
	cmpw	$-1, %ax
	je	L669
	xorl	%esi, %esi
	leal	(%eax,%eax,4), %eax
	addl	%esi, %eax
	movl	_voxoff(,%eax,4), %edx
	testl	%edx, %edx
	jne	L713
	.p2align 5
	.p2align 4
	.p2align 3
L670:
	addl	$1, %esi
	cmpl	$5, %esi
	je	L669
	movswl	_tiletovox(%edi,%edi), %eax
	leal	(%eax,%eax,4), %eax
	addl	%esi, %eax
	movl	_voxoff(,%eax,4), %edx
	testl	%edx, %edx
	je	L670
L713:
	movl	%ebx, -28(%ebp)
	movl	%edi, %ecx
	leal	-28(%ebp), %eax
	movl	$1, (%esp)
	call	_inthash_add
	jmp	L670
	.p2align 4,,10
	.p2align 3
L712:
	movl	%ebx, -28(%ebp)
	movl	%edi, %ecx
	leal	-28(%ebp), %eax
	movl	$1, (%esp)
	call	_inthash_add
	jmp	L668
	.p2align 4,,10
	.p2align 3
L711:
	movl	%ebx, -28(%ebp)
	movl	%edi, %ecx
	leal	-28(%ebp), %eax
	movl	$1, (%esp)
	call	_inthash_add
	jmp	L667
L710:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L673
	movl	$LC77, 12(%esp)
	movl	$301, 8(%esp)
	movl	$LC78, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L673:
	movl	$140, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	movl	_g_cache+16, %eax
	movl	$0, -36(%ebp)
	leal	39(%esp), %edi
	andl	$-16, %edi
	testl	%eax, %eax
	jle	L674
	movl	%ebx, -44(%ebp)
	xorl	%esi, %esi
	jmp	L681
	.p2align 4,,10
	.p2align 3
L715:
	subl	_g_cache+4, %eax
	movl	$128, %ebx
	movl	$LC80, 8(%esp)
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
	movl	$LC81, 8(%esp)
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
	movl	$LC82, 8(%esp)
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
	je	L677
	movl	$LC74, %ecx
	cmpl	_waloff(,%eax,4), %edx
	je	L679
	leal	(%eax,%eax,2), %ecx
	cmpl	_classicht(,%ecx,4), %edx
	movl	$LC75, %ecx
	movl	$LC76, %edx
	cmovne	%edx, %ecx
L679:
	movl	%eax, 12(%esp)
	movl	$128, %eax
	subl	%ebx, %eax
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	(%edi,%ebx), %eax
	movl	%eax, (%esp)
	call	*__imp___snprintf
	addl	%eax, %ebx
L677:
	cmpl	$127, %ebx
	jg	L680
	movb	$0, -1(%edi,%ebx)
L680:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L678
	movl	%edi, 16(%esp)
	movl	$LC83, 12(%esp)
	movl	$341, 8(%esp)
	movl	$LC78, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L678:
	addl	$1, %esi
	cmpl	_g_cache+16, %esi
	jge	L714
L681:
	movb	$0, (%edi)
	movl	%esi, 12(%esp)
	movl	$LC79, 8(%esp)
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
	je	L675
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L715
L675:
	movl	%edi, (%esp)
	call	_strlen
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	$1162170950, (%edi,%eax)
	movb	$0, 4(%edi,%eax)
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L678
	movl	%edi, 16(%esp)
	addl	$1, %esi
	movl	$LC83, 12(%esp)
	movl	$320, 8(%esp)
	movl	$LC78, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	cmpl	_g_cache+16, %esi
	jl	L681
L714:
	movl	-44(%ebp), %ebx
L674:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	jns	L716
L682:
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
L716:
	.cfi_restore_state
	movl	_g_cache+8, %eax
	movl	$LC84, 12(%esp)
	movl	$344, 8(%esp)
	sarl	$10, %eax
	movl	$LC78, 4(%esp)
	movl	%eax, 16(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L682
	movl	-36(%ebp), %esi
	movl	$LC85, 12(%esp)
	movl	$345, 8(%esp)
	movl	%esi, %eax
	movl	$LC78, 4(%esp)
	sarl	$10, %eax
	movl	$0, (%esp)
	movl	%eax, 16(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L682
	movl	_g_cache+8, %eax
	movl	$LC86, 12(%esp)
	movl	$346, 8(%esp)
	subl	%esi, %eax
	movl	$LC78, 4(%esp)
	sarl	$10, %eax
	movl	$0, (%esp)
	movl	%eax, 16(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L682
	movl	_g_cache+12, %eax
	movl	%eax, 20(%esp)
	movl	_g_cache+16, %eax
	movl	$LC87, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$347, 8(%esp)
	movl	$LC78, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L682
	.cfi_endproc
LFE150:
	.p2align 4
	.globl	__ZL17osdfunc_cacheinfoPK13osdfuncparm_t.lto_priv.0
	.def	__ZL17osdfunc_cacheinfoPK13osdfuncparm_t.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL17osdfunc_cacheinfoPK13osdfuncparm_t.lto_priv.0:
LFB152:
	.cfi_startproc
	call	__ZN7cache1d6reportEv.constprop.0
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE152:
	.section .rdata,"dr"
LC88:
	.ascii "vid_gamma\0"
LC89:
	.ascii "vid_contrast\0"
LC90:
	.ascii "vid_saturation\0"
LC94:
	.ascii "r_maxfps\0"
	.text
	.p2align 4
	.globl	__ZL25osdcmd_cvar_set_baselayerPK13osdfuncparm_t.lto_priv.0
	.def	__ZL25osdcmd_cvar_set_baselayerPK13osdfuncparm_t.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL25osdcmd_cvar_set_baselayerPK13osdfuncparm_t.lto_priv.0:
LFB153:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	andl	$-8, %esp
	subl	$24, %esp
	.cfi_offset 3, -12
	movl	8(%ebp), %ebx
	movl	%ebx, (%esp)
	call	__Z15osdcmd_cvar_setPK13osdfuncparm_t
	movl	4(%ebx), %ebx
	movl	$LC88, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L719
	movl	$LC89, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L719
	movl	$LC90, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L719
	movl	$LC94, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L739
	movl	_r_maxfps, %ecx
	testl	%ecx, %ecx
	jle	L724
	movl	$1000, %eax
	movl	$30, %edx
	cmpl	%eax, %ecx
	cmovle	%ecx, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, _r_maxfps
	cltd
L725:
	movl	%eax, 8(%esp)
	movl	$10000, %eax
	movl	%edx, 12(%esp)
	imull	__ZL19clockTicksPerSecond.lto_priv.0
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.7
	movl	-4(%ebp), %ebx
	xorl	%eax, %eax
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L719:
	.cfi_restore_state
	movss	_g_videoGamma, %xmm0
	xorps	%xmm2, %xmm2
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	subss	LC48, %xmm0
	mulss	LC91, %xmm0
	movaps	%xmm0, %xmm1
	cmpnltss	%xmm2, %xmm1
	movss	LC93, %xmm2
	andps	%xmm0, %xmm1
	movaps	%xmm2, %xmm0
	cmpltss	%xmm1, %xmm0
	andps	%xmm0, %xmm2
	andnps	%xmm1, %xmm0
	orps	%xmm2, %xmm0
	cvttss2sil	%xmm0, %eax
	movzbl	%al, %eax
	call	_videoSetPalette
L739:
	movl	-4(%ebp), %ebx
	xorl	%eax, %eax
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L724:
	.cfi_restore_state
	cmpl	$-1, %ecx
	je	L726
	movl	$1000, %eax
	xorl	%edx, %edx
	testl	%ecx, %ecx
	je	L725
	cmpl	$-2, %ecx
	je	L739
	movl	%ecx, %eax
	cltd
	jmp	L725
	.p2align 4,,10
	.p2align 3
L726:
	fnstcw	22(%esp)
	fldl	_refreshfreq
	movzwl	22(%esp), %eax
	orb	$12, %ah
	movw	%ax, 20(%esp)
	fldcw	20(%esp)
	fistpl	16(%esp)
	fldcw	22(%esp)
	movl	16(%esp), %eax
	cltd
	jmp	L725
	.cfi_endproc
LFE153:
	.p2align 4
	.def	__ZL16clipupdatesector4vec2IiEPsi;	.scl	3;	.type	32;	.endef
__ZL16clipupdatesector4vec2IiEPsi:
LFB158:
	.cfi_startproc
	subl	$120, %esp
	.cfi_def_cfa_offset 124
	movl	%esi, 108(%esp)
	.cfi_offset 6, -16
	movl	%ecx, %esi
	movl	%eax, 72(%esp)
	movl	%edx, 68(%esp)
	cmpl	$2147483647, _enginecompatibilitymode
	jne	L742
	movl	%edi, 112(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	movl	%ebp, 116(%esp)
	.cfi_offset 5, -8
	movl	%edx, %ebp
	movl	%ebx, 104(%esp)
	.cfi_offset 3, -20
	movswl	(%ecx), %ebx
	movl	%ebx, %ecx
	call	_inside
	cmpl	$1, %eax
	je	L777
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
	movzbl	__ZL8pow2char.lto_priv.6(%edx), %edx
	orb	%dl, __ZZL16clipupdatesector4vec2IiEPsiE9insidemap(%eax)
	movzwl	(%esi), %ebx
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZZL16clipupdatesector4vec2IiEPsiE10sectbitmap, (%esp)
	call	_memset
	movswl	%bx, %eax
	movl	%esi, 40(%esp)
	sarl	$3, %eax
	movw	%bx, __ZZL16clipupdatesector4vec2IiEPsiE8sectlist
	andl	$7, %ebx
	movzbl	__ZL8pow2char.lto_priv.6(%ebx), %ebx
	orb	%bl, __ZZL16clipupdatesector4vec2IiEPsiE10sectbitmap(%eax)
	movl	_sector, %eax
	movw	%bp, 20(%esp)
	xorl	%ebp, %ebp
	movl	%ebx, %edi
	movl	%eax, 28(%esp)
	movl	_wall, %eax
	movl	%eax, 36(%esp)
	.p2align 4
	.p2align 3
L752:
	movswl	__ZZL16clipupdatesector4vec2IiEPsiE8sectlist(%ebp,%ebp), %ecx
	movl	%edi, %edx
	movl	%ecx, %esi
	movw	%cx, 16(%esp)
	sarl	$3, %esi
	movzbl	__ZZL16clipupdatesector4vec2IiEPsiE9insidemap(%esi), %ebx
	movl	%ebx, %eax
	notl	%eax
	testb	%dl, %al
	je	L745
	movl	68(%esp), %edx
	movl	72(%esp), %eax
	movl	%ecx, 32(%esp)
	call	_inside
	movl	32(%esp), %ecx
	cmpl	$1, %eax
	je	L778
L745:
	orl	%edi, %ebx
	movl	28(%esp), %edi
	leal	(%ecx,%ecx,4), %eax
	movb	%bl, __ZZL16clipupdatesector4vec2IiEPsiE9insidemap(%esi)
	leal	(%edi,%eax,8), %eax
	movswl	(%eax), %edx
	movswl	2(%eax), %ebx
	addl	%edx, %ebx
	cmpl	%ebx, %edx
	jge	L746
	movl	%edx, %eax
	subl	%edx, %ebx
	sall	$5, %eax
	sall	$5, %ebx
	addl	36(%esp), %eax
	leal	(%ebx,%eax), %esi
	jmp	L750
	.p2align 4
	.p2align 4,,10
	.p2align 3
L749:
	addl	$32, %eax
	cmpl	%esi, %eax
	je	L746
L750:
	movzwl	12(%eax), %edx
	testw	%dx, %dx
	js	L749
	movswl	%dx, %edi
	movl	%edx, %ebx
	sarl	$3, %edi
	andl	$7, %ebx
	movl	%edi, 16(%esp)
	movzbl	__ZL8pow2char.lto_priv.6(%ebx), %ebx
	movzbl	__ZL13clipsectormap.lto_priv.0(%edi), %edi
	andl	%ebx, %edi
	movl	%edi, %ecx
	cmpb	%cl, %bl
	jne	L749
	movl	16(%esp), %edi
	movzbl	__ZZL16clipupdatesector4vec2IiEPsiE10sectbitmap(%edi), %edi
	movl	%edi, %ecx
	notl	%ecx
	testb	%bl, %cl
	je	L749
	movswl	20(%esp), %ecx
	orl	%edi, %ebx
	movl	16(%esp), %edi
	addl	$32, %eax
	movb	%bl, __ZZL16clipupdatesector4vec2IiEPsiE10sectbitmap(%edi)
	movl	%ecx, %edi
	addl	$1, %edi
	movw	%dx, __ZZL16clipupdatesector4vec2IiEPsiE8sectlist(%ecx,%ecx)
	movw	%di, 20(%esp)
	cmpl	%esi, %eax
	jne	L750
	.p2align 4
	.p2align 3
L746:
	movswl	20(%esp), %eax
	addl	$1, %ebp
	cmpl	%ebp, %eax
	jle	L751
	movzwl	__ZZL16clipupdatesector4vec2IiEPsiE8sectlist(%ebp,%ebp), %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.6(%eax), %edi
	jmp	L752
L767:
	movl	%edi, %eax
	call	_yax_getbunch.constprop.1
	movl	%eax, %ebx
	movl	%edi, %eax
	call	_yax_getbunch.constprop.0
	testw	%ax, %bx
	js	L766
	movl	104(%esp), %ebx
	.cfi_restore 3
	movl	112(%esp), %edi
	.cfi_restore 7
	movl	116(%esp), %ebp
	.cfi_restore 5
	.p2align 4
	.p2align 3
L742:
	movl	68(%esp), %eax
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	72(%esp), %eax
	movl	%eax, (%esp)
	call	_updatesector
L743:
	movl	108(%esp), %esi
	xorl	%eax, %eax
	addl	$120, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L751:
	.cfi_def_cfa_offset 124
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	40(%esp), %esi
	movl	$1, %edi
	movzwl	(%esi), %ebx
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZZL16clipupdatesector4vec2IiEPsiE10sectbitmap, (%esp)
	call	_memset
	movswl	%bx, %eax
	movw	%bx, __ZZL16clipupdatesector4vec2IiEPsiE8sectlist
	andl	$7, %ebx
	sarl	$3, %eax
	movzbl	__ZL8pow2char.lto_priv.6(%ebx), %ebx
	movl	%esi, 100(%esp)
	orb	%bl, __ZZL16clipupdatesector4vec2IiEPsiE10sectbitmap(%eax)
	movl	72(%esp), %eax
	movw	%di, 98(%esp)
	movl	%ebx, %esi
	movl	%eax, 88(%esp)
	sarl	$31, %eax
	movl	$0, 84(%esp)
	movl	%eax, 92(%esp)
	.p2align 4
	.p2align 3
L765:
	movl	84(%esp), %eax
	movl	%esi, %edx
	movswl	__ZZL16clipupdatesector4vec2IiEPsiE8sectlist(%eax,%eax), %ecx
	movl	%ecx, %edi
	movl	%ecx, %ebp
	sarl	$3, %edi
	movzbl	__ZZL16clipupdatesector4vec2IiEPsiE9insidemap(%edi), %ebx
	movl	%ebx, %eax
	notl	%eax
	testb	%dl, %al
	je	L753
	movl	68(%esp), %edx
	movl	72(%esp), %eax
	movl	%ecx, 16(%esp)
	call	_inside
	movl	16(%esp), %ecx
	cmpl	$1, %eax
	je	L754
L753:
	movl	_sector, %eax
	leal	(%ecx,%ecx,4), %edx
	orl	%esi, %ebx
	movb	%bl, __ZZL16clipupdatesector4vec2IiEPsiE9insidemap(%edi)
	leal	(%eax,%edx,8), %eax
	movswl	(%eax), %ebp
	movswl	2(%eax), %eax
	addl	%ebp, %eax
	movl	%eax, 36(%esp)
	cmpl	%eax, %ebp
	jge	L756
	movl	%ebp, %eax
	sall	$5, %eax
	addl	_wall, %eax
	movl	%eax, 28(%esp)
	movl	68(%esp), %eax
	movl	%eax, 76(%esp)
	sarl	$31, %eax
	movl	%eax, 80(%esp)
	jmp	L763
	.p2align 5
	.p2align 4,,10
	.p2align 3
L762:
	addl	$32, 28(%esp)
	addl	$1, %ebp
	cmpl	%ebp, 36(%esp)
	je	L756
L763:
	movl	28(%esp), %eax
	cmpw	$0, 12(%eax)
	js	L762
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
	jge	L770
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
	jge	L760
	shldl	$15, %ecx, %ebx
	sall	$15, %ecx
	movl	%eax, 8(%esp)
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	movl	%edx, 12(%esp)
	call	_tabledivide64.lto_priv.9
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
	movl	%edx, %ecx
	addl	%eax, %ecx
	movl	20(%esp), %eax
	mull	%esi
	movl	32(%esp), %esi
	addl	%ecx, %edx
	shrdl	$30, %edx, %eax
	addl	%eax, %esi
	movl	%esi, 44(%esp)
L760:
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
	movl	124(%esp), %esi
	addl	%eax, %edx
	leal	8(%esi), %ecx
	cmpl	%edx, %ecx
	jl	L762
	movl	28(%esp), %eax
	movswl	12(%eax), %eax
	movl	%eax, %ecx
	sarl	$3, %eax
	movzbl	__ZZL16clipupdatesector4vec2IiEPsiE10sectbitmap(%eax), %edx
	movl	%ecx, %ebx
	movl	%eax, %edi
	andl	$7, %ebx
	movl	%edx, %esi
	movzbl	__ZL8pow2char.lto_priv.6(%ebx), %ebx
	notl	%esi
	movl	%esi, %eax
	testb	%bl, %al
	je	L762
	movswl	98(%esp), %eax
	orl	%ebx, %edx
	addl	$32, 28(%esp)
	addl	$1, %ebp
	movb	%dl, __ZZL16clipupdatesector4vec2IiEPsiE10sectbitmap(%edi)
	movl	%eax, %edi
	movw	%cx, __ZZL16clipupdatesector4vec2IiEPsiE8sectlist(%eax,%eax)
	addl	$1, %edi
	movw	%di, 98(%esp)
	cmpl	%ebp, 36(%esp)
	jne	L763
	.p2align 4
	.p2align 3
L756:
	addl	$1, 84(%esp)
	movswl	98(%esp), %eax
	movl	84(%esp), %esi
	cmpl	%esi, %eax
	jle	L764
	movzwl	__ZZL16clipupdatesector4vec2IiEPsiE8sectlist(%esi,%esi), %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.6(%eax), %esi
	jmp	L765
	.p2align 4,,10
	.p2align 3
L770:
	movl	32(%esp), %eax
	movl	%eax, 44(%esp)
	movl	40(%esp), %eax
	movl	%eax, 48(%esp)
	jmp	L760
L777:
	movl	104(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	112(%esp), %edi
	.cfi_restore 7
	movl	116(%esp), %ebp
	.cfi_restore 5
	jmp	L743
L764:
	.cfi_restore_state
	movl	_numyaxbunches, %eax
	movl	100(%esp), %esi
	testl	%eax, %eax
	jle	L766
	movswl	(%esi), %edi
	movswl	_numsectors, %eax
	cmpl	%eax, %edi
	jb	L767
L766:
	movl	104(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	112(%esp), %edi
	.cfi_restore 7
	movl	$1, %eax
	movl	116(%esp), %ebp
	.cfi_restore 5
	movl	108(%esp), %esi
	addl	$120, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L778:
	.cfi_restore_state
	movl	40(%esp), %esi
	movzwl	16(%esp), %eax
	movw	%ax, (%esi)
	movl	104(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	112(%esp), %edi
	.cfi_restore 7
	movl	116(%esp), %ebp
	.cfi_restore 5
	jmp	L743
L754:
	.cfi_restore_state
	movl	__ZL11clipsectnum.lto_priv.0, %eax
	movl	%esi, %ebx
	movl	100(%esp), %esi
	cmpl	$511, %eax
	jle	L779
	orl	$1, __ZL15clipmove_warned.lto_priv.0
L758:
	movw	%bp, (%esi)
	movl	104(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	112(%esp), %edi
	.cfi_restore 7
	movl	116(%esp), %ebp
	.cfi_restore 5
	jmp	L743
L779:
	.cfi_restore_state
	leal	1(%eax), %edx
	orb	%bl, __ZL13clipsectormap.lto_priv.0(%edi)
	movl	%edx, __ZL11clipsectnum.lto_priv.0
	movw	%bp, _clipsectorlist(%eax,%eax)
	jmp	L758
	.cfi_endproc
LFE158:
	.p2align 4
	.globl	_tdefl_flush_block.lto_priv.0
	.def	_tdefl_flush_block.lto_priv.0;	.scl	2;	.type	32;	.endef
_tdefl_flush_block.lto_priv.0:
LFB165:
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
	subl	$32, %esp
	movl	%edx, 28(%esp)
	movb	$0, 24(%esp)
	testb	$8, 10(%eax)
	je	L781
	movl	28(%eax), %eax
	subl	64(%ebx), %eax
	cmpl	%eax, 36(%ebx)
	setnb	24(%esp)
L781:
	movl	(%ebx), %ecx
	testl	%ecx, %ecx
	je	L899
L782:
	leal	234098(%ebx), %eax
	movl	%eax, 20(%esp)
L783:
	movl	20(%esp), %eax
	movl	44(%ebx), %edx
	movl	$0, 88(%ebx)
	movl	$0, 92(%ebx)
	movl	56(%ebx), %ecx
	movl	%eax, 48(%ebx)
	addl	$85180, %eax
	movl	%eax, 52(%ebx)
	movzbl	(%edx), %eax
	sarl	%cl, %eax
	movb	%al, (%edx)
	movl	8(%ebx), %edx
	xorl	%eax, %eax
	cmpl	$8, 56(%ebx)
	sete	%al
	subl	%eax, 40(%ebx)
	testb	$16, %dh
	je	L784
	movl	100(%ebx), %eax
	testl	%eax, %eax
	je	L785
L784:
	movl	72(%ebx), %eax
	movl	68(%ebx), %edi
	movl	48(%ebx), %esi
L786:
	xorl	%edx, %edx
	cmpl	$4, 28(%esp)
	movl	%edi, %ecx
	sete	%dl
	addl	$1, %edi
	sall	%cl, %edx
	movl	%edi, 68(%ebx)
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, 72(%ebx)
	cmpl	$7, %edi
	jbe	L796
	.p2align 6
	.p2align 4
	.p2align 3
L798:
	cmpl	52(%ebx), %esi
	jnb	L797
	leal	1(%esi), %eax
	movl	%eax, 48(%ebx)
	movb	%cl, (%esi)
	movl	72(%ebx), %ecx
	movl	48(%ebx), %esi
L797:
	movl	68(%ebx), %eax
	shrl	$8, %ecx
	movl	%ecx, 72(%ebx)
	leal	-8(%eax), %edi
	movl	%edi, 68(%ebx)
	cmpl	$7, %edi
	ja	L798
L796:
	cmpb	$0, 24(%esp)
	je	L799
	movl	28(%ebx), %eax
	subl	64(%ebx), %eax
	cmpl	%eax, 36(%ebx)
	jb	L801
L800:
	addl	$2, %edi
	movl	%esi, 48(%ebx)
	movl	%ecx, 72(%ebx)
	movl	%edi, 68(%ebx)
	cmpl	$7, %edi
	ja	L807
	jmp	L804
	.p2align 6
	.p2align 4,,10
	.p2align 3
L900:
	movl	48(%ebx), %esi
L807:
	cmpl	52(%ebx), %esi
	jnb	L805
	leal	1(%esi), %eax
	movl	%eax, 48(%ebx)
	movb	%cl, (%esi)
	movl	72(%ebx), %ecx
L805:
	movl	68(%ebx), %eax
	shrl	$8, %ecx
	movl	%ecx, 72(%ebx)
	leal	-8(%eax), %edi
	movl	%edi, 68(%ebx)
	cmpl	$7, %edi
	ja	L900
	testl	%edi, %edi
	jne	L901
L808:
	movl	%edi, %eax
	movl	60(%ebx), %edx
	movl	%ecx, %edi
	movl	$2, %esi
	movl	%eax, %ecx
L815:
	movzwl	%dx, %eax
	sall	%cl, %eax
	addl	$16, %ecx
	orl	%eax, %edi
	movl	%ecx, 68(%ebx)
	movl	%edi, 72(%ebx)
	cmpl	$7, %ecx
	jbe	L854
	movl	%edi, %edx
	.p2align 6
	.p2align 4
	.p2align 3
L813:
	movl	48(%ebx), %eax
	cmpl	52(%ebx), %eax
	jnb	L812
	leal	1(%eax), %ecx
	movl	%ecx, 48(%ebx)
	movb	%dl, (%eax)
	movl	72(%ebx), %edx
L812:
	movl	68(%ebx), %eax
	shrl	$8, %edx
	movl	%edx, 72(%ebx)
	subl	$8, %eax
	movl	%eax, 68(%ebx)
	cmpl	$7, %eax
	ja	L813
	movl	60(%ebx), %eax
L811:
	movl	%eax, %edx
	xorl	$65535, %edx
	movl	%edx, 60(%ebx)
	cmpl	$1, %esi
	je	L814
	movl	72(%ebx), %edi
	movl	68(%ebx), %ecx
	movl	$1, %esi
	jmp	L815
	.p2align 4,,10
	.p2align 3
L799:
	movl	$1, %edx
	testb	$4, 10(%ebx)
	je	L902
L802:
	movl	%ebx, %eax
	movl	%ecx, 24(%esp)
	call	_tdefl_compress_block.lto_priv.0
	movl	60(%ebx), %edx
	movl	24(%esp), %ecx
	movl	%eax, 16(%esp)
	testl	%edx, %edx
	jne	L903
L803:
	movl	16(%esp), %edx
	testl	%edx, %edx
	je	L801
L816:
	movl	28(%esp), %esi
	testl	%esi, %esi
	je	L821
L907:
	movl	68(%ebx), %eax
	cmpl	$4, %esi
	je	L904
	addl	$3, %eax
	movl	%eax, 68(%ebx)
	cmpl	$7, %eax
	jbe	L830
	movl	72(%ebx), %edx
	.p2align 6
	.p2align 4
	.p2align 3
L832:
	movl	48(%ebx), %eax
	cmpl	52(%ebx), %eax
	jnb	L831
	leal	1(%eax), %ecx
	movl	%ecx, 48(%ebx)
	movb	%dl, (%eax)
	movl	72(%ebx), %edx
L831:
	movl	68(%ebx), %eax
	shrl	$8, %edx
	movl	%edx, 72(%ebx)
	subl	$8, %eax
	movl	%eax, 68(%ebx)
	cmpl	$7, %eax
	ja	L832
L830:
	testl	%eax, %eax
	jne	L905
	movl	72(%ebx), %eax
	movl	68(%ebx), %ecx
L836:
	movl	$2, %esi
	xorl	%edx, %edx
	movl	%eax, %edi
L840:
	movl	%edx, %eax
	sall	%cl, %eax
	addl	$16, %ecx
	orl	%edi, %eax
	movl	%ecx, 68(%ebx)
	movl	%eax, 72(%ebx)
	cmpl	$7, %ecx
	jbe	L837
	.p2align 6
	.p2align 4
	.p2align 3
L839:
	movl	48(%ebx), %ecx
	cmpl	52(%ebx), %ecx
	jnb	L838
	leal	1(%ecx), %edi
	movl	%edi, 48(%ebx)
	movb	%al, (%ecx)
	movl	72(%ebx), %eax
L838:
	movl	68(%ebx), %edi
	shrl	$8, %eax
	movl	%eax, 72(%ebx)
	leal	-8(%edi), %ecx
	movl	%ecx, 68(%ebx)
	cmpl	$7, %ecx
	ja	L839
L837:
	cmpl	$1, %esi
	je	L821
	movl	72(%ebx), %edi
	movl	68(%ebx), %ecx
	xorl	$65535, %edx
	movl	$1, %esi
	jmp	L840
	.p2align 4,,10
	.p2align 3
L785:
	andl	$4095, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L788:
	cmpl	%edx, _s_tdefl_num_probes.lto_priv.0(,%eax,4)
	je	L787
	addl	$1, %eax
	cmpl	$11, %eax
	jne	L788
	movl	$218, 16(%esp)
L789:
	movl	68(%ebx), %edi
	movl	$120, %eax
	movl	48(%ebx), %esi
	movl	52(%ebx), %edx
	movl	%edi, %ecx
	sall	%cl, %eax
	leal	8(%edi), %ecx
	orl	72(%ebx), %eax
	movl	%eax, 72(%ebx)
	movl	%ecx, 68(%ebx)
	cmpl	$-9, %edi
	ja	L790
	.p2align 6
	.p2align 4
	.p2align 3
L792:
	cmpl	%edx, %esi
	jnb	L791
	leal	1(%esi), %edx
	movl	%edx, 48(%ebx)
	movb	%al, (%esi)
	movl	72(%ebx), %eax
	movl	48(%ebx), %esi
	movl	52(%ebx), %edx
L791:
	movl	68(%ebx), %edi
	shrl	$8, %eax
	movl	%eax, 72(%ebx)
	leal	-8(%edi), %ecx
	movl	%ecx, 68(%ebx)
	cmpl	$7, %ecx
	ja	L792
L897:
	movl	%edi, 12(%esp)
	movl	16(%esp), %edi
	sall	%cl, %edi
	orl	%edi, %eax
	movl	12(%esp), %edi
	movl	%eax, 72(%ebx)
	movl	%edi, 68(%ebx)
	jmp	L795
	.p2align 6
	.p2align 4,,10
	.p2align 3
L906:
	movl	52(%ebx), %edx
L795:
	cmpl	%edx, %esi
	jnb	L794
	leal	1(%esi), %edx
	movl	%edx, 48(%ebx)
	movb	%al, (%esi)
	movl	72(%ebx), %eax
	movl	48(%ebx), %esi
L794:
	movl	68(%ebx), %edi
	shrl	$8, %eax
	movl	%eax, 72(%ebx)
	subl	$8, %edi
	movl	%edi, 68(%ebx)
	cmpl	$7, %edi
	ja	L906
	jmp	L786
	.p2align 4,,10
	.p2align 3
L903:
	movl	48(%ebx), %eax
	subl	%esi, %eax
	addl	$1, %eax
	cmpl	%edx, %eax
	jb	L803
	movl	28(%ebx), %eax
	subl	64(%ebx), %eax
	cmpl	%eax, 36(%ebx)
	jb	L803
	jmp	L800
	.p2align 4,,10
	.p2align 3
L902:
	xorl	%edx, %edx
	cmpl	$47, 60(%ebx)
	setbe	%dl
	jmp	L802
	.p2align 4,,10
	.p2align 3
L801:
	movl	%esi, 48(%ebx)
	movl	$1, %edx
	movl	%ebx, %eax
	movl	%ecx, 72(%ebx)
	movl	%edi, 68(%ebx)
	call	_tdefl_compress_block.lto_priv.0
	movl	28(%esp), %esi
	testl	%esi, %esi
	jne	L907
	.p2align 4
	.p2align 3
L821:
	leal	33170(%ebx), %eax
	movl	$576, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	xorl	%eax, %eax
	movl	$0, 33794(%ebx)
	movl	$0, 33798(%ebx)
	movl	$0, 33802(%ebx)
	movl	$0, 33806(%ebx)
L841:
	movl	$0, 33746(%ebx,%eax)
	movl	$0, 33750(%ebx,%eax)
	movl	$0, 33754(%ebx,%eax)
	movl	$0, 33758(%ebx,%eax)
	addl	$16, %eax
	cmpl	$48, %eax
	jb	L841
	leal	37491(%ebx), %eax
	xorl	%edx, %edx
	addl	$1, 100(%ebx)
	movl	48(%ebx), %esi
	movl	%eax, 40(%ebx)
	leal	37490(%ebx), %eax
	movl	%eax, 44(%ebx)
	movl	60(%ebx), %eax
	addl	%eax, 64(%ebx)
	movl	$8, %eax
	movl	%eax, 56(%ebx)
	movl	%edx, 60(%ebx)
	subl	20(%esp), %esi
	je	L898
	movl	(%ebx), %eax
	leal	234098(%ebx), %edx
	testl	%eax, %eax
	je	L845
	movl	120(%ebx), %ecx
	movl	132(%ebx), %eax
	subl	112(%ebx), %eax
	movl	%eax, (%ecx)
	movl	4(%ebx), %eax
	movl	%esi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	call	*(%ebx)
	testl	%eax, %eax
	je	L846
L898:
	movl	92(%ebx), %eax
L780:
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
	ret
	.p2align 4,,10
	.p2align 3
L814:
	.cfi_restore_state
	cmpl	$65535, %eax
	je	L816
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L820:
	movl	64(%ebx), %eax
	movl	68(%ebx), %ecx
	addl	%esi, %eax
	andl	$32767, %eax
	movzbl	144(%ebx,%eax), %edx
	leal	8(%ecx), %eax
	movl	%eax, 68(%ebx)
	sall	%cl, %edx
	orl	72(%ebx), %edx
	movl	%edx, 72(%ebx)
	cmpl	$-9, %ecx
	ja	L817
	.p2align 6
	.p2align 4
	.p2align 3
L819:
	movl	48(%ebx), %eax
	cmpl	52(%ebx), %eax
	jnb	L818
	leal	1(%eax), %ecx
	movl	%ecx, 48(%ebx)
	movb	%dl, (%eax)
	movl	72(%ebx), %edx
L818:
	movl	68(%ebx), %eax
	shrl	$8, %edx
	movl	%edx, 72(%ebx)
	subl	$8, %eax
	movl	%eax, 68(%ebx)
	cmpl	$7, %eax
	ja	L819
L817:
	addl	$1, %esi
	cmpl	60(%ebx), %esi
	jb	L820
	jmp	L816
	.p2align 4,,10
	.p2align 3
L899:
	movl	124(%ebx), %eax
	movl	140(%ebx), %edx
	movl	(%eax), %eax
	subl	%edx, %eax
	cmpl	$85195, %eax
	jbe	L782
	addl	116(%ebx), %edx
	movl	%edx, 20(%esp)
	jmp	L783
L787:
	movl	$1, 16(%esp)
	cmpl	$1, %eax
	jbe	L789
	movl	$94, 16(%esp)
	cmpl	$5, %eax
	jbe	L789
	cmpl	$6, %eax
	movl	$156, %edx
	movl	$218, %eax
	cmove	%edx, %eax
	movl	%eax, 16(%esp)
	jmp	L789
L905:
	movl	$8, 68(%ebx)
	movl	72(%ebx), %eax
	.p2align 6
	.p2align 4
	.p2align 3
L835:
	movl	48(%ebx), %edx
	cmpl	52(%ebx), %edx
	jnb	L834
	leal	1(%edx), %ecx
	movl	%ecx, 48(%ebx)
	movb	%al, (%edx)
	movl	72(%ebx), %eax
L834:
	movl	68(%ebx), %esi
	shrl	$8, %eax
	movl	%eax, 72(%ebx)
	leal	-8(%esi), %ecx
	movl	%ecx, 68(%ebx)
	cmpl	$7, %ecx
	ja	L835
	jmp	L836
L901:
	movl	48(%ebx), %esi
L804:
	movl	$8, 68(%ebx)
	jmp	L810
	.p2align 6
	.p2align 4,,10
	.p2align 3
L908:
	movl	48(%ebx), %esi
L810:
	cmpl	52(%ebx), %esi
	jnb	L809
	leal	1(%esi), %eax
	movl	%eax, 48(%ebx)
	movb	%cl, (%esi)
	movl	72(%ebx), %ecx
L809:
	movl	68(%ebx), %eax
	shrl	$8, %ecx
	movl	%ecx, 72(%ebx)
	leal	-8(%eax), %edi
	movl	%edi, 68(%ebx)
	cmpl	$7, %edi
	ja	L908
	jmp	L808
L904:
	testl	%eax, %eax
	je	L823
	movl	$8, 68(%ebx)
	movl	72(%ebx), %edx
	.p2align 6
	.p2align 4
	.p2align 3
L825:
	movl	48(%ebx), %eax
	cmpl	52(%ebx), %eax
	jnb	L824
	leal	1(%eax), %ecx
	movl	%ecx, 48(%ebx)
	movb	%dl, (%eax)
	movl	72(%ebx), %edx
L824:
	movl	68(%ebx), %eax
	shrl	$8, %edx
	movl	%edx, 72(%ebx)
	subl	$8, %eax
	movl	%eax, 68(%ebx)
	cmpl	$7, %eax
	ja	L825
L823:
	testb	$16, 9(%ebx)
	je	L821
	movl	24(%ebx), %edi
	movl	$4, %esi
L829:
	movl	68(%ebx), %ecx
	movl	%edi, %edx
	shrl	$24, %edx
	sall	%cl, %edx
	leal	8(%ecx), %eax
	orl	72(%ebx), %edx
	movl	%edx, 72(%ebx)
	movl	%eax, 68(%ebx)
	cmpl	$-9, %ecx
	ja	L826
	.p2align 6
	.p2align 4
	.p2align 3
L828:
	movl	48(%ebx), %eax
	cmpl	52(%ebx), %eax
	jnb	L827
	leal	1(%eax), %ecx
	movl	%ecx, 48(%ebx)
	movb	%dl, (%eax)
	movl	72(%ebx), %edx
L827:
	movl	68(%ebx), %eax
	shrl	$8, %edx
	movl	%edx, 72(%ebx)
	subl	$8, %eax
	movl	%eax, 68(%ebx)
	cmpl	$7, %eax
	ja	L828
L826:
	sall	$8, %edi
	subl	$1, %esi
	jne	L829
	jmp	L821
L845:
	movl	140(%ebx), %eax
	cmpl	%edx, 20(%esp)
	je	L909
	addl	%esi, %eax
	movl	%eax, 140(%ebx)
	jmp	L898
L854:
	movl	%edx, %eax
	jmp	L811
L846:
	movl	$-1, 108(%ebx)
	movl	$-1, %eax
	jmp	L780
L790:
	addl	$16, %edi
	jmp	L897
L909:
	movl	124(%ebx), %edx
	movl	20(%esp), %ecx
	movl	(%edx), %edi
	subl	%eax, %edi
	cmpl	%esi, %edi
	cmova	%esi, %edi
	addl	116(%ebx), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	%edi, 8(%esp)
	call	_memcpy
	movl	%esi, %eax
	addl	%edi, 140(%ebx)
	subl	%edi, %eax
	je	L898
	movl	%edi, 88(%ebx)
	movl	%eax, 92(%ebx)
	jmp	L780
	.cfi_endproc
LFE165:
	.p2align 4
	.globl	_tdefl_flush_output_buffer.lto_priv.0
	.def	_tdefl_flush_output_buffer.lto_priv.0;	.scl	2;	.type	32;	.endef
_tdefl_flush_output_buffer.lto_priv.0:
LFB166:
	.cfi_startproc
	movl	120(%eax), %ecx
	movl	%eax, %edx
	testl	%ecx, %ecx
	je	L911
	movl	132(%eax), %eax
	subl	112(%edx), %eax
	movl	%eax, (%ecx)
L911:
	movl	124(%edx), %ecx
	testl	%ecx, %ecx
	je	L922
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$20, %esp
	.cfi_def_cfa_offset 28
	movl	140(%edx), %eax
	movl	(%ecx), %ecx
	movl	88(%edx), %ebx
	movl	%edx, 16(%esp)
	subl	%eax, %ecx
	cmpl	92(%edx), %ecx
	cmova	92(%edx), %ecx
	leal	234098(%edx,%ebx), %ebx
	addl	116(%edx), %eax
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%ecx, 12(%esp)
	call	_memcpy
	movl	16(%esp), %edx
	movl	12(%esp), %ecx
	movl	124(%edx), %eax
	addl	%ecx, 88(%edx)
	subl	%ecx, 92(%edx)
	addl	140(%edx), %ecx
	movl	%ecx, 140(%edx)
	movl	%ecx, (%eax)
	movl	96(%edx), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	L910
	movl	92(%edx), %ebx
	xorl	%eax, %eax
	testl	%ebx, %ebx
	sete	%al
L910:
	addl	$20, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L922:
	movl	96(%edx), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	L924
	movl	92(%edx), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	sete	%al
	ret
	.p2align 4,,10
	.p2align 3
L924:
	ret
	.cfi_endproc
LFE166:
	.p2align 4
	.globl	_XXH3_mul128_fold64.lto_priv.0
	.def	_XXH3_mul128_fold64.lto_priv.0;	.scl	2;	.type	32;	.endef
_XXH3_mul128_fold64.lto_priv.0:
LFB167:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	movl	%edx, %edi
	pushl	%esi
	pushl	%ebx
	andl	$-8, %esp
	subl	$24, %esp
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %ecx
	movl	%eax, 8(%esp)
	mull	%ecx
	movl	%edi, 4(%esp)
	movl	%eax, 16(%esp)
	movl	%edi, %eax
	movl	%edx, 20(%esp)
	mull	%ecx
	movl	20(%esp), %ebx
	movl	%ebx, %ecx
	xorl	%ebx, %ebx
	movl	%edx, %edi
	xorl	%edx, %edx
	addl	%eax, %ecx
	movl	8(%esp), %eax
	adcl	%edx, %ebx
	mull	12(%ebp)
	movl	%edi, %esi
	addl	%eax, %ecx
	movl	4(%esp), %eax
	adcl	%edx, %ebx
	mull	12(%ebp)
	movl	%ecx, 8(%esp)
	xorl	%edi, %edi
	movl	%esi, %ecx
	movl	%ebx, 12(%esp)
	movl	%edi, %ebx
	addl	%eax, %ecx
	movl	8(%esp), %eax
	adcl	%edx, %ebx
	movl	12(%esp), %edx
	movl	%edx, %edi
	movl	%eax, %edx
	movl	%edi, %esi
	xorl	%edi, %edi
	addl	%ecx, %esi
	movl	16(%esp), %ecx
	adcl	%ebx, %edi
	xorl	%ebx, %ebx
	leal	-12(%ebp), %esp
	xorl	%eax, %eax
	orl	%ebx, %edx
	orl	%ecx, %eax
	popl	%ebx
	.cfi_restore 3
	xorl	%esi, %eax
	xorl	%edi, %edx
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
	.def	_XXH3_mergeAccs;	.scl	3;	.type	32;	.endef
_XXH3_mergeAccs:
LFB169:
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
	xorl	%esi, %esi
	pushl	%ebx
	andl	$-8, %esp
	subl	$24, %esp
	.cfi_offset 3, -20
	movl	8(%ebp), %eax
	movl	%edx, 12(%esp)
	movl	12(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	%edi, 8(%esp)
L930:
	movl	8(%esp), %edx
	movl	12(%esp), %edi
	movl	(%edx,%esi), %ecx
	movl	4(%edx,%esi), %ebx
	movl	8(%edx,%esi), %eax
	movl	12(%edx,%esi), %edx
	xorl	8(%edi,%esi), %eax
	xorl	12(%edi,%esi), %edx
	xorl	(%edi,%esi), %ecx
	xorl	4(%edi,%esi), %ebx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, %eax
	movl	%ebx, %edx
	call	_XXH3_mul128_fold64.lto_priv.0
	addl	%eax, 16(%esp)
	adcl	%edx, 20(%esp)
	addl	$16, %esi
	cmpl	$64, %esi
	jne	L930
	movl	20(%esp), %esi
	movl	16(%esp), %ebx
	xorl	%edx, %edx
	leal	-12(%ebp), %esp
	movl	%esi, %eax
	xorl	%edx, %esi
	shrl	$5, %eax
	imull	$-1640531463, %esi, %ecx
	xorl	%eax, %ebx
	movl	$-1640531463, %eax
	imull	$374761361, %ebx, %edx
	addl	%edx, %ecx
	mull	%ebx
	xorl	%ebx, %ebx
	addl	%ecx, %edx
	xorl	%edx, %eax
	xorl	%ebx, %edx
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
LFE169:
	.p2align 4
	.globl	_XXH3_len_129to240_64b.constprop.0
	.def	_XXH3_len_129to240_64b.constprop.0;	.scl	2;	.type	32;	.endef
_XXH3_len_129to240_64b.constprop.0:
LFB171:
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
	xorl	%esi, %esi
	pushl	%ebx
	.cfi_offset 3, -20
	movl	%edx, %ebx
	imull	$-1640531535, %ebx, %ecx
	andl	$-8, %esp
	subl	$48, %esp
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%ebx, 16(%esp)
	movl	%eax, 40(%esp)
	movl	$-2048144761, %eax
	movl	%edx, 44(%esp)
	mull	%ebx
	movl	%eax, 24(%esp)
	movl	%ebx, %eax
	movl	%edx, 28(%esp)
	shrl	$4, %eax
	addl	%ecx, 28(%esp)
	movl	%eax, 12(%esp)
	.p2align 4
	.p2align 3
L934:
	movl	40(%esp), %eax
	movl	44(%esp), %edx
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	_XXH3_kSecret.lto_priv.0(%esi), %ecx
	adcl	_XXH3_kSecret.lto_priv.0+4(%esi), %ebx
	xorl	(%edi,%esi), %ecx
	xorl	4(%edi,%esi), %ebx
	movl	%ecx, 32(%esp)
	movl	_XXH3_kSecret.lto_priv.0+8(%esi), %ecx
	movl	%ebx, 36(%esp)
	movl	_XXH3_kSecret.lto_priv.0+12(%esi), %ebx
	subl	%eax, %ecx
	sbbl	%edx, %ebx
	movl	%ecx, %eax
	xorl	8(%edi,%esi), %eax
	movl	%ebx, %edx
	xorl	12(%edi,%esi), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	32(%esp), %eax
	movl	36(%esp), %edx
	call	_XXH3_mul128_fold64.lto_priv.0
	addl	%eax, 24(%esp)
	adcl	%edx, 28(%esp)
	addl	$16, %esi
	cmpl	$128, %esi
	jne	L934
	movl	40(%esp), %eax
	movl	16(%esp), %ebx
	movl	44(%esp), %edx
	addl	$2124400689, %eax
	leal	-16(%edi,%ebx), %ecx
	adcl	$1937299913, %edx
	movl	%eax, %ebx
	movl	$-1396315548, %eax
	xorl	(%ecx), %ebx
	movl	%edx, %esi
	movl	$-338479997, %edx
	xorl	4(%ecx), %esi
	subl	40(%esp), %eax
	sbbl	44(%esp), %edx
	xorl	8(%ecx), %eax
	xorl	12(%ecx), %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	movl	%edx, 4(%esp)
	movl	%esi, %edx
	call	_XXH3_mul128_fold64.lto_priv.0
	movl	28(%esp), %esi
	movl	24(%esp), %ebx
	movl	%eax, 16(%esp)
	movl	%esi, %eax
	movl	%edx, 20(%esp)
	xorl	%edx, %edx
	shrl	$5, %eax
	xorl	%edx, %esi
	xorl	%eax, %ebx
	imull	$-1640531463, %esi, %ecx
	movl	$-1640531463, %eax
	imull	$374761361, %ebx, %edx
	addl	%edx, %ecx
	mull	%ebx
	xorl	%ebx, %ebx
	addl	%ecx, %edx
	movl	%edx, %ecx
	xorl	%edx, %ebx
	xorl	%eax, %ecx
	movl	12(%esp), %eax
	movl	%ebx, 36(%esp)
	movl	%ecx, 32(%esp)
	cmpl	$8, %eax
	je	L935
	subl	$8, %eax
	xorl	%esi, %esi
	sall	$4, %eax
	movl	%eax, 12(%esp)
	.p2align 4
	.p2align 3
L936:
	movl	32(%esp), %eax
	movl	36(%esp), %edx
	movl	%eax, 32(%esp)
	movl	40(%esp), %eax
	movl	%edx, 36(%esp)
	movl	44(%esp), %edx
	movl	%eax, %ecx
	addl	_XXH3_kSecret.lto_priv.0+3(%esi), %ecx
	movl	%edx, %ebx
	adcl	_XXH3_kSecret.lto_priv.0+7(%esi), %ebx
	xorl	128(%edi,%esi), %ecx
	xorl	132(%edi,%esi), %ebx
	movl	%ecx, 24(%esp)
	movl	_XXH3_kSecret.lto_priv.0+11(%esi), %ecx
	movl	%ebx, 28(%esp)
	movl	_XXH3_kSecret.lto_priv.0+15(%esi), %ebx
	subl	%eax, %ecx
	sbbl	%edx, %ebx
	movl	%ecx, %eax
	xorl	136(%edi,%esi), %eax
	movl	%ebx, %edx
	xorl	140(%edi,%esi), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	24(%esp), %eax
	movl	28(%esp), %edx
	call	_XXH3_mul128_fold64.lto_priv.0
	addl	%eax, 16(%esp)
	adcl	%edx, 20(%esp)
	addl	$16, %esi
	cmpl	%esi, 12(%esp)
	jne	L936
L935:
	movl	32(%esp), %eax
	movl	36(%esp), %edx
	addl	16(%esp), %eax
	adcl	20(%esp), %edx
	leal	-12(%ebp), %esp
	xorl	%ebx, %ebx
	movl	%edx, %ecx
	xorl	%ebx, %edx
	xorl	%ebx, %ebx
	shrl	$5, %ecx
	xorl	%ecx, %eax
	imull	$-1640531463, %edx, %ecx
	imull	$374761361, %eax, %edx
	movl	%eax, %esi
	movl	$-1640531463, %eax
	addl	%edx, %ecx
	mull	%esi
	addl	%ecx, %edx
	xorl	%edx, %eax
	xorl	%ebx, %edx
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
LFE171:
	.p2align 4
	.globl	_XXH3_hashLong_64b_default.constprop.0
	.def	_XXH3_hashLong_64b_default.constprop.0;	.scl	2;	.type	32;	.endef
_XXH3_hashLong_64b_default.constprop.0:
LFB173:
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
	leal	384(%eax), %esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$104, %esp
	.cfi_offset 3, -20
	movups	LC96, %xmm0
	movl	%eax, 20(%esp)
	leal	40(%esp), %edi
	movups	%xmm0, 40(%esp)
	movups	LC97, %xmm0
	movl	$0, 28(%esp)
	movups	%xmm0, 56(%esp)
	movups	LC98, %xmm0
	movups	%xmm0, 72(%esp)
	movups	LC99, %xmm0
	movups	%xmm0, 88(%esp)
	.p2align 4
	.p2align 3
L945:
	prefetcht0	(%esi)
	movl	%esi, 24(%esp)
	leal	-384(%esi), %ebx
	xorl	%ecx, %ecx
	.p2align 4
	.p2align 3
L944:
	movl	28(%esp), %esi
	movl	(%ebx,%ecx,8), %eax
	movl	4(%ebx,%ecx,8), %edx
	xorl	_XXH3_kSecret.lto_priv.0(%esi,%ecx,8), %eax
	xorl	_XXH3_kSecret.lto_priv.0+4(%esi,%ecx,8), %edx
	movl	%ecx, %esi
	xorl	$1, %esi
	movl	%eax, 32(%esp)
	movl	(%ebx,%ecx,8), %eax
	movl	%edx, 36(%esp)
	movl	4(%ebx,%ecx,8), %edx
	addl	%eax, (%edi,%esi,8)
	movl	32(%esp), %eax
	adcl	%edx, 4(%edi,%esi,8)
	mull	36(%esp)
	addl	%eax, (%edi,%ecx,8)
	adcl	%edx, 4(%edi,%ecx,8)
	addl	$1, %ecx
	cmpl	$8, %ecx
	jne	L944
	movl	24(%esp), %esi
	addl	$8, 28(%esp)
	addl	$64, %esi
	cmpl	$120, 28(%esp)
	jne	L945
	movl	20(%esp), %ebx
	xorl	%ecx, %ecx
	.p2align 4
	.p2align 3
L946:
	movl	%ecx, %esi
	movl	960(%ebx,%ecx,8), %eax
	movl	964(%ebx,%ecx,8), %edx
	xorl	_XXH3_kSecret.lto_priv.0+121(,%ecx,8), %eax
	xorl	_XXH3_kSecret.lto_priv.0+125(,%ecx,8), %edx
	xorl	$1, %esi
	movl	%eax, 32(%esp)
	movl	960(%ebx,%ecx,8), %eax
	movl	%edx, 36(%esp)
	movl	964(%ebx,%ecx,8), %edx
	addl	%eax, (%edi,%esi,8)
	movl	32(%esp), %eax
	adcl	%edx, 4(%edi,%esi,8)
	mull	36(%esp)
	addl	%eax, (%edi,%ecx,8)
	adcl	%edx, 4(%edi,%ecx,8)
	addl	$1, %ecx
	cmpl	$8, %ecx
	jne	L946
	movl	$-1356194816, (%esp)
	movl	%edi, %eax
	movl	$_XXH3_kSecret.lto_priv.0+11, %edx
	movl	$-572078569, 4(%esp)
	call	_XXH3_mergeAccs
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
LFE173:
	.p2align 4
	.globl	_XXH3_hashLong_64b_withSeed.constprop.0
	.def	_XXH3_hashLong_64b_withSeed.constprop.0;	.scl	2;	.type	32;	.endef
_XXH3_hashLong_64b_withSeed.constprop.0:
LFB176:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	xorl	%edi, %edi
	pushl	%esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$312, %esp
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%eax, 28(%esp)
	movl	%edx, 24(%esp)
	.p2align 4
	.p2align 3
L952:
	movl	_XXH3_kSecret.lto_priv.0+8(%edi), %eax
	movl	_XXH3_kSecret.lto_priv.0+12(%edi), %edx
	movl	_XXH3_kSecret.lto_priv.0(%edi), %ecx
	movl	_XXH3_kSecret.lto_priv.0+4(%edi), %ebx
	addl	$-49, %eax
	adcl	$-1, %edx
	addl	$49, %ecx
	movl	%eax, 128(%esp,%edi)
	adcl	$0, %ebx
	movl	%ecx, 120(%esp,%edi)
	movl	%ebx, 124(%esp,%edi)
	movl	%edx, 132(%esp,%edi)
	addl	$16, %edi
	cmpl	$192, %edi
	jne	L952
	movups	LC96, %xmm0
	movl	24(%esp), %eax
	movups	%xmm0, 56(%esp)
	movups	LC97, %xmm0
	subl	$1, %eax
	movl	%eax, %ebx
	movups	%xmm0, 72(%esp)
	movups	LC98, %xmm0
	shrl	$10, %ebx
	movups	%xmm0, 88(%esp)
	movups	LC99, %xmm0
	movups	%xmm0, 104(%esp)
	je	L953
	movl	28(%esp), %ecx
	sall	$10, %ebx
	movl	%eax, 20(%esp)
	leal	56(%esp), %edi
	movl	%ebx, 16(%esp)
	movl	%ecx, 36(%esp)
	addl	%ebx, %ecx
	movl	%ecx, 32(%esp)
	.p2align 4
	.p2align 3
L957:
	movl	36(%esp), %eax
	movl	%edi, %ebx
	leal	384(%eax), %esi
	leal	120(%esp), %eax
	movl	%eax, 44(%esp)
	movl	%esi, %eax
	.p2align 4
	.p2align 3
L955:
	prefetcht0	(%eax)
	movl	%eax, 40(%esp)
	leal	-384(%eax), %ecx
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L954:
	movl	44(%esp), %edi
	movl	(%ecx,%esi,8), %eax
	movl	4(%ecx,%esi,8), %edx
	xorl	(%edi,%esi,8), %eax
	xorl	4(%edi,%esi,8), %edx
	movl	%esi, %edi
	xorl	$1, %edi
	movl	%eax, 48(%esp)
	movl	(%ecx,%esi,8), %eax
	movl	%edx, 52(%esp)
	movl	4(%ecx,%esi,8), %edx
	addl	%eax, (%ebx,%edi,8)
	movl	48(%esp), %eax
	adcl	%edx, 4(%ebx,%edi,8)
	mull	52(%esp)
	addl	%eax, (%ebx,%esi,8)
	adcl	%edx, 4(%ebx,%esi,8)
	addl	$1, %esi
	cmpl	$8, %esi
	jne	L954
	movl	40(%esp), %eax
	addl	$8, 44(%esp)
	leal	248(%esp), %ecx
	addl	$64, %eax
	cmpl	44(%esp), %ecx
	jne	L955
	movl	%ebx, %edi
	xorl	%esi, %esi
	.p2align 6
	.p2align 4
	.p2align 3
L956:
	movl	4(%edi,%esi,8), %edx
	movl	(%edi,%esi,8), %eax
	xorl	248(%esp,%esi,8), %eax
	movl	%edx, %ebx
	xorl	252(%esp,%esi,8), %edx
	movl	%ebx, %ecx
	xorl	%ebx, %ebx
	shrl	$15, %ecx
	xorl	%ebx, %edx
	movl	$-1640531535, %ebx
	xorl	%ecx, %eax
	imull	$-1640531535, %edx, %ecx
	mull	%ebx
	addl	%ecx, %edx
	movl	%eax, (%edi,%esi,8)
	movl	%edx, 4(%edi,%esi,8)
	addl	$1, %esi
	cmpl	$8, %esi
	jne	L956
	addl	$1024, 36(%esp)
	movl	36(%esp), %eax
	cmpl	%eax, 32(%esp)
	jne	L957
	movl	20(%esp), %eax
	subl	16(%esp), %eax
	shrl	$6, %eax
	je	L960
L959:
	leal	120(%esp), %ebx
	movl	32(%esp), %ecx
	movl	%ebx, 44(%esp)
	leal	120(%esp,%eax,8), %ebx
	movl	%ebx, 40(%esp)
	movl	%edi, %ebx
	.p2align 4
	.p2align 3
L962:
	xorl	%esi, %esi
	prefetcht0	384(%ecx)
	.p2align 4
	.p2align 3
L961:
	movl	44(%esp), %edi
	movl	(%ecx,%esi,8), %eax
	movl	4(%ecx,%esi,8), %edx
	xorl	(%edi,%esi,8), %eax
	xorl	4(%edi,%esi,8), %edx
	movl	%esi, %edi
	xorl	$1, %edi
	movl	%eax, 48(%esp)
	movl	(%ecx,%esi,8), %eax
	movl	%edx, 52(%esp)
	movl	4(%ecx,%esi,8), %edx
	addl	%eax, (%ebx,%edi,8)
	movl	48(%esp), %eax
	adcl	%edx, 4(%ebx,%edi,8)
	mull	52(%esp)
	addl	%eax, (%ebx,%esi,8)
	adcl	%edx, 4(%ebx,%esi,8)
	addl	$1, %esi
	cmpl	$8, %esi
	jne	L961
	addl	$8, 44(%esp)
	addl	$64, %ecx
	movl	44(%esp), %eax
	cmpl	%eax, 40(%esp)
	jne	L962
	movl	%ebx, %edi
L960:
	movl	28(%esp), %eax
	movl	24(%esp), %ecx
	xorl	%ebx, %ebx
	addl	%eax, %ecx
	.p2align 4
	.p2align 3
L963:
	movl	%ebx, %esi
	movl	-64(%ecx,%ebx,8), %eax
	movl	-60(%ecx,%ebx,8), %edx
	xorl	241(%esp,%ebx,8), %eax
	xorl	245(%esp,%ebx,8), %edx
	xorl	$1, %esi
	movl	%eax, 48(%esp)
	movl	-64(%ecx,%ebx,8), %eax
	movl	%edx, 52(%esp)
	movl	-60(%ecx,%ebx,8), %edx
	addl	%eax, (%edi,%esi,8)
	movl	48(%esp), %eax
	adcl	%edx, 4(%edi,%esi,8)
	mull	52(%esp)
	addl	%eax, (%edi,%ebx,8)
	adcl	%edx, 4(%edi,%ebx,8)
	addl	$1, %ebx
	cmpl	$8, %ebx
	jne	L963
	movl	24(%esp), %eax
	movl	$-2048144761, %edx
	imull	$-1640531535, %eax, %ecx
	mull	%edx
	addl	%ecx, %edx
	movl	%eax, (%esp)
	movl	%edi, %eax
	movl	%edx, 4(%esp)
	leal	131(%esp), %edx
	call	_XXH3_mergeAccs
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
L953:
	.cfi_restore_state
	movl	28(%esp), %ebx
	shrl	$6, %eax
	leal	56(%esp), %edi
	movl	%ebx, 32(%esp)
	jmp	L959
	.cfi_endproc
LFE176:
	.p2align 4
	.globl	_renderDrawLine
	.def	_renderDrawLine;	.scl	2;	.type	32;	.endef
_renderDrawLine:
LFB179:
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
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%eax, %ebx
	subl	$84, %esp
	movzbl	4(%edi), %eax
	movl	(%edi), %ecx
	movl	%esi, %edi
	addl	_palookup, %eax
	movl	%edx, -20(%ebp)
	subl	%ebx, %edi
	movzbl	(%eax), %eax
	movl	%ecx, -24(%ebp)
	subl	%edx, %ecx
	movl	_wx2, %edx
	movb	%al, -28(%ebp)
	cmpl	$2, _rendmode
	jg	L1030
	testl	%edi, %edi
	js	L997
	cmpl	%edx, %ebx
	jge	L978
	movl	_wx1, %eax
	cmpl	%eax, %esi
	jl	L978
	cmpl	%eax, %ebx
	jl	L1031
L998:
	cmpl	%edx, %esi
	jle	L999
	movl	%edi, %eax
	subl	%esi, %edx
	movl	%edi, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%edx, %eax
	imull	%ecx
	movl	%ecx, -32(%ebp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.6
	movl	_wx2, %esi
	addl	%eax, -24(%ebp)
	movl	-32(%ebp), %ecx
	jmp	L999
	.p2align 4,,10
	.p2align 3
L997:
	cmpl	%edx, %esi
	jge	L978
	movl	_wx1, %eax
	cmpl	%eax, %ebx
	jl	L978
	cmpl	%eax, %esi
	jl	L1032
L1000:
	cmpl	%edx, %ebx
	jg	L1033
L999:
	movl	_wy2, %eax
	movl	%eax, -32(%ebp)
	testl	%ecx, %ecx
	js	L1001
	cmpl	%eax, -20(%ebp)
	jge	L978
	movl	_wy1, %edx
	cmpl	-24(%ebp), %edx
	jg	L978
	cmpl	%edx, -20(%ebp)
	jl	L1034
L1002:
	movl	-32(%ebp), %edx
	cmpl	%edx, -24(%ebp)
	jg	L1035
L1003:
	movl	%edi, %eax
/APP
 # 206 "source/build/src/2d.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	%ecx, %eax
/APP
 # 206 "source/build/src/2d.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, %edx
	jl	L1005
	testl	%edi, %edi
	je	L978
	movl	-20(%ebp), %eax
	cmovs	-24(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	%esi, %eax
	cmovns	%ebx, %esi
	cmovns	%eax, %ebx
	movl	%ecx, %eax
	movl	%edi, 8(%esp)
	sarl	$31, %edi
	cltd
	sall	$12, %eax
	movl	%edi, 12(%esp)
	shldl	$12, %ecx, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.6
	movl	%eax, -20(%ebp)
	movl	%eax, %edx
	movl	$2047, %eax
	subl	%esi, %eax
	andl	$4095, %eax
/APP
 # 216 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $12, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	$2048, %ebx
	leal	2048(%esi), %edi
	movl	%eax, -32(%ebp)
	sarl	$12, %edi
	sarl	$12, %ebx
	call	_videoBeginDrawing
	cmpl	%ebx, %edi
	jge	L1007
	movl	-32(%ebp), %eax
	addl	-24(%ebp), %eax
	jmp	L1009
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1008:
	addl	$1, %edi
	addl	-20(%ebp), %eax
	cmpl	%edi, %ebx
	je	L1007
L1009:
	movl	_startumost, %esi
	movl	%eax, %edx
	sarl	$12, %edx
	movswl	(%esi,%edi,2), %esi
	cmpl	%esi, %edx
	jl	L1008
	movl	_startdmost, %esi
	movswl	(%esi,%edi,2), %esi
	cmpl	%esi, %edx
	jge	L1008
	movl	_frameplace, %ecx
	movl	_ylookup, %esi
	movl	%ecx, -24(%ebp)
	addl	(%esi,%edx,4), %ecx
	movl	-24(%ebp), %esi
	leal	(%ecx,%edi), %edx
	cmpl	%edx, %esi
	jg	L1008
	movl	_bytesperline, %ecx
	imull	_ydim, %ecx
	addl	%ecx, %esi
	cmpl	%esi, %edx
	jge	L1008
	movzbl	-28(%ebp), %ecx
	movb	%cl, (%edx)
	jmp	L1008
	.p2align 4,,10
	.p2align 3
L1030:
	movl	%ecx, -36(%ebp)
	movl	%edx, -32(%ebp)
	call	_paletteGetColor
	movl	-32(%ebp), %edx
	movzbl	%ah, %ecx
	movl	%eax, -44(%ebp)
	shrl	$16, %eax
	testl	%edi, %edi
	movl	%ecx, -28(%ebp)
	movl	-36(%ebp), %ecx
	movl	%eax, -40(%ebp)
	js	L980
	cmpl	%edx, %ebx
	jl	L1036
L978:
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
L1036:
	.cfi_restore_state
	movl	_wx1, %eax
	cmpl	%eax, %esi
	jl	L978
	cmpl	%eax, %ebx
	jl	L1037
L982:
	cmpl	%edx, %esi
	jg	L1038
L983:
	movl	_wy2, %eax
	movl	%eax, -32(%ebp)
	testl	%ecx, %ecx
	js	L985
	cmpl	%eax, -20(%ebp)
	jge	L978
	movl	_wy1, %edx
	cmpl	-24(%ebp), %edx
	jg	L978
	cmpl	%edx, -20(%ebp)
	jl	L1039
L986:
	movl	-32(%ebp), %edx
	cmpl	%edx, -24(%ebp)
	jle	L987
	movl	%ecx, 8(%esp)
	sarl	$31, %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, %ecx
	subl	-24(%ebp), %ecx
	movl	%ecx, %eax
	imull	%edi
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.6
	addl	%eax, %esi
	movl	_wy2, %eax
	movl	%eax, -24(%ebp)
	jmp	L987
	.p2align 4,,10
	.p2align 3
L980:
	cmpl	%edx, %esi
	jge	L978
	movl	_wx1, %eax
	cmpl	%eax, %ebx
	jl	L978
	cmpl	%eax, %esi
	jl	L1040
L984:
	cmpl	%edx, %ebx
	jle	L983
	movl	%edi, %eax
	subl	%ebx, %edx
	movl	%edi, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%edx, %eax
	imull	%ecx
	movl	%ecx, -32(%ebp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.6
	movl	_wx2, %ebx
	addl	%eax, -20(%ebp)
	movl	-32(%ebp), %ecx
	jmp	L983
	.p2align 4,,10
	.p2align 3
L1001:
	movl	-24(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jge	L978
	movl	_wy1, %edx
	cmpl	%edx, -20(%ebp)
	jl	L978
	cmpl	%edx, %eax
	jl	L1041
L1004:
	movl	-32(%ebp), %edx
	cmpl	%edx, -20(%ebp)
	jle	L1003
	movl	%ecx, %eax
	movl	%ecx, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%ecx, -36(%ebp)
	movl	%edx, %ecx
	subl	-20(%ebp), %ecx
	movl	%ecx, %eax
	imull	%edi
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.6
	movl	-36(%ebp), %ecx
	addl	%eax, %ebx
	movl	_wy2, %eax
	movl	%eax, -20(%ebp)
	jmp	L1003
	.p2align 4,,10
	.p2align 3
L1005:
	movl	-24(%ebp), %edx
	testl	%ecx, %ecx
	cmovns	%ebx, %esi
	movl	%edx, %eax
	cmovns	-20(%ebp), %edx
	movl	%edx, -24(%ebp)
	movl	%eax, %edx
	cmovs	-20(%ebp), %edx
	movl	%edi, %eax
	movl	%edx, -20(%ebp)
	cltd
	sall	$12, %eax
	shldl	$12, %edi, %edx
	movl	%ecx, 8(%esp)
	sarl	$31, %ecx
	movl	%ecx, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.6
	movl	-24(%ebp), %edi
	movl	%eax, -32(%ebp)
	movl	%eax, %edx
	movl	$2047, %eax
	subl	%edi, %eax
	andl	$4095, %eax
/APP
 # 238 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $12, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-20(%ebp), %edx
	movl	%eax, %ebx
	addl	$2048, %edi
	sarl	$12, %edi
	leal	2048(%edx), %eax
	sarl	$12, %eax
	movl	%eax, -20(%ebp)
	call	_videoBeginDrawing
	cmpl	-20(%ebp), %edi
	jge	L1007
	leal	(%ebx,%esi), %eax
	movl	_ylookup, %ebx
	movl	_frameplace, %ecx
	addl	(%ebx,%edi,4), %ecx
	jmp	L1012
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1011:
	addl	-32(%ebp), %eax
	addl	4(%ebx), %ecx
	addl	$1, %edi
	cmpl	%edi, -20(%ebp)
	je	L1007
L1012:
	movl	_startumost, %esi
	movl	%eax, %edx
	sarl	$12, %edx
	movswl	(%esi,%edx,2), %esi
	cmpl	%edi, %esi
	jg	L1011
	movl	_startdmost, %esi
	movswl	(%esi,%edx,2), %esi
	cmpl	%edi, %esi
	jle	L1011
	leal	(%edx,%ecx), %esi
	movl	%esi, -24(%ebp)
	movl	_frameplace, %esi
	cmpl	%esi, -24(%ebp)
	jl	L1011
	movl	_bytesperline, %edx
	imull	_ydim, %edx
	addl	%esi, %edx
	cmpl	%edx, -24(%ebp)
	jge	L1011
	movzbl	-28(%ebp), %ebx
	movl	-24(%ebp), %esi
	movb	%bl, (%esi)
	movl	_ylookup, %ebx
	jmp	L1011
	.p2align 4,,10
	.p2align 3
L1007:
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
	jmp	_videoEndDrawing
	.p2align 4,,10
	.p2align 3
L985:
	.cfi_restore_state
	movl	-24(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jge	L978
	movl	_wy1, %edx
	cmpl	%edx, -20(%ebp)
	jl	L978
	cmpl	%edx, %eax
	jl	L1042
L988:
	movl	-32(%ebp), %edx
	cmpl	%edx, -20(%ebp)
	jg	L1043
L987:
	movl	_ydim, %eax
	movl	%eax, 12(%esp)
	movl	_xdim, %eax
	movl	$0, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$0, (%esp)
	call	*_glad_glViewport
	subl	$16, %esp
	movl	$5889, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glLoadIdentity
	movl	$0, 40(%esp)
	movl	$1072693248, 44(%esp)
	movl	$0, 32(%esp)
	movl	$-1074790400, 36(%esp)
	movl	$0, 24(%esp)
	movl	$0, 28(%esp)
	fildl	_ydim
	fstpl	16(%esp)
	fildl	_xdim
	movl	$0, (%esp)
	movl	$0, 4(%esp)
	fstpl	8(%esp)
	call	*_glad_glOrtho
	subl	$48, %esp
	cmpl	$4, _rendmode
	jne	L989
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glLoadIdentity
L989:
	movl	$3008, %edx
	movl	$_gl+88, %eax
	movl	$1, _polymost2d
	call	_inthash_find
	testl	%eax, %eax
	je	L990
	movl	$3008, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L990:
	movl	$2929, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L991
	movl	$2929, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$2929, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L991:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L992
	movl	$3042, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L992:
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L993
	movss	LC48, %xmm0
	ucomiss	__ZL21polymost1UseColorOnly.lto_priv.0, %xmm0
	jp	L1013
	je	L993
L1013:
	movss	%xmm0, __ZL21polymost1UseColorOnly.lto_priv.0
	movss	%xmm0, 4(%esp)
	movl	__ZL24polymost1UseColorOnlyLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
L993:
	movl	$1, (%esp)
	call	*_glad_glBegin
	subl	$4, %esp
	movl	$255, 12(%esp)
	movzbl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movzbl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movzbl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	*_glad_glColor4ub
	xorps	%xmm1, %xmm1
	movss	LC102, %xmm0
	cvtsi2ssl	-20(%ebp), %xmm1
	subl	$16, %esp
	mulss	%xmm0, %xmm1
	movss	%xmm1, 4(%esp)
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ebx, %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, (%esp)
	call	*_glad_glVertex2f
	xorps	%xmm1, %xmm1
	movss	LC102, %xmm0
	cvtsi2ssl	-24(%ebp), %xmm1
	subl	$8, %esp
	mulss	%xmm0, %xmm1
	movss	%xmm1, 4(%esp)
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%esi, %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, (%esp)
	call	*_glad_glVertex2f
	subl	$8, %esp
	call	*_glad_glEnd
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L978
	xorps	%xmm0, %xmm0
	ucomiss	__ZL21polymost1UseColorOnly.lto_priv.0, %xmm0
	jp	L1014
	je	L978
L1014:
	movl	$0x00000000, __ZL21polymost1UseColorOnly.lto_priv.0
	movl	$0x00000000, 4(%esp)
	movl	__ZL24polymost1UseColorOnlyLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
	jmp	L978
	.p2align 4,,10
	.p2align 3
L1031:
	movl	%edi, %edx
	subl	%ebx, %eax
	movl	%edi, 8(%esp)
	sarl	$31, %edx
	movl	%edx, 12(%esp)
	imull	%ecx
	movl	%ecx, -32(%ebp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.6
	movl	_wx1, %ebx
	addl	%eax, -20(%ebp)
	movl	_wx2, %edx
	movl	-32(%ebp), %ecx
	jmp	L998
	.p2align 4,,10
	.p2align 3
L1034:
	movl	%ecx, %eax
	movl	%ecx, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	subl	-20(%ebp), %edx
	movl	%edx, %eax
	movl	%ecx, -36(%ebp)
	imull	%edi
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.6
	movl	-36(%ebp), %ecx
	addl	%eax, %ebx
	movl	_wy1, %eax
	movl	%eax, -20(%ebp)
	movl	_wy2, %eax
	movl	%eax, -32(%ebp)
	jmp	L1002
	.p2align 4,,10
	.p2align 3
L1035:
	movl	%ecx, %eax
	movl	%ecx, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%ecx, -36(%ebp)
	movl	%edx, %ecx
	subl	-24(%ebp), %ecx
	movl	%ecx, %eax
	imull	%edi
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.6
	movl	-36(%ebp), %ecx
	addl	%eax, %esi
	movl	_wy2, %eax
	movl	%eax, -24(%ebp)
	jmp	L1003
	.p2align 4,,10
	.p2align 3
L1040:
	movl	%edi, %edx
	subl	%esi, %eax
	movl	%edi, 8(%esp)
	sarl	$31, %edx
	movl	%edx, 12(%esp)
	imull	%ecx
	movl	%ecx, -32(%ebp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.6
	movl	_wx1, %esi
	addl	%eax, -24(%ebp)
	movl	_wx2, %edx
	movl	-32(%ebp), %ecx
	jmp	L984
	.p2align 4,,10
	.p2align 3
L1041:
	movl	%ecx, %eax
	movl	%ecx, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	subl	-24(%ebp), %edx
	movl	%edx, %eax
	movl	%ecx, -36(%ebp)
	imull	%edi
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.6
	movl	-36(%ebp), %ecx
	addl	%eax, %esi
	movl	_wy1, %eax
	movl	%eax, -24(%ebp)
	movl	_wy2, %eax
	movl	%eax, -32(%ebp)
	jmp	L1004
	.p2align 4,,10
	.p2align 3
L1032:
	movl	%edi, %edx
	subl	%esi, %eax
	movl	%edi, 8(%esp)
	sarl	$31, %edx
	movl	%edx, 12(%esp)
	imull	%ecx
	movl	%ecx, -32(%ebp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.6
	movl	_wx1, %esi
	addl	%eax, -24(%ebp)
	movl	_wx2, %edx
	movl	-32(%ebp), %ecx
	jmp	L1000
	.p2align 4,,10
	.p2align 3
L1033:
	movl	%edi, %eax
	subl	%ebx, %edx
	movl	%edi, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%edx, %eax
	imull	%ecx
	movl	%ecx, -32(%ebp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.6
	movl	_wx2, %ebx
	addl	%eax, -20(%ebp)
	movl	-32(%ebp), %ecx
	jmp	L999
	.p2align 4,,10
	.p2align 3
L1038:
	movl	%edi, %eax
	subl	%esi, %edx
	movl	%edi, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%edx, %eax
	imull	%ecx
	movl	%ecx, -32(%ebp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.6
	movl	_wx2, %esi
	addl	%eax, -24(%ebp)
	movl	-32(%ebp), %ecx
	jmp	L983
	.p2align 4,,10
	.p2align 3
L1037:
	movl	%edi, %edx
	subl	%ebx, %eax
	movl	%edi, 8(%esp)
	sarl	$31, %edx
	movl	%edx, 12(%esp)
	imull	%ecx
	movl	%ecx, -32(%ebp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.6
	movl	_wx1, %ebx
	addl	%eax, -20(%ebp)
	movl	_wx2, %edx
	movl	-32(%ebp), %ecx
	jmp	L982
	.p2align 4,,10
	.p2align 3
L1039:
	movl	%ecx, %eax
	movl	%ecx, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	subl	-20(%ebp), %edx
	movl	%edx, %eax
	movl	%ecx, -36(%ebp)
	imull	%edi
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.6
	movl	-36(%ebp), %ecx
	addl	%eax, %ebx
	movl	_wy1, %eax
	movl	%eax, -20(%ebp)
	movl	_wy2, %eax
	movl	%eax, -32(%ebp)
	jmp	L986
L1043:
	movl	%ecx, 8(%esp)
	sarl	$31, %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, %ecx
	subl	-20(%ebp), %ecx
	movl	%ecx, %eax
	imull	%edi
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.6
	addl	%eax, %ebx
	movl	_wy2, %eax
	movl	%eax, -20(%ebp)
	jmp	L987
L1042:
	movl	%ecx, %eax
	movl	%ecx, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	subl	-24(%ebp), %edx
	movl	%edx, %eax
	movl	%ecx, -36(%ebp)
	imull	%edi
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.6
	movl	-36(%ebp), %ecx
	addl	%eax, %esi
	movl	_wy1, %eax
	movl	%eax, -24(%ebp)
	movl	_wy2, %eax
	movl	%eax, -32(%ebp)
	jmp	L988
	.cfi_endproc
LFE179:
	.p2align 4
	.globl	_polymostSet2dView.part.0
	.def	_polymostSet2dView.part.0;	.scl	2;	.type	32;	.endef
_polymostSet2dView.part.0:
LFB187:
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
	subl	$52, %esp
	movl	_ydim, %eax
	movl	%eax, 12(%esp)
	movl	_xdim, %eax
	movl	$0, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$0, (%esp)
	call	*_glad_glViewport
	subl	$16, %esp
	movl	$5889, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glLoadIdentity
	movl	$0, 40(%esp)
	movl	$1072693248, 44(%esp)
	movl	$0, 32(%esp)
	movl	$-1074790400, 36(%esp)
	movl	$0, 24(%esp)
	movl	$0, 28(%esp)
	fildl	_ydim
	fstpl	16(%esp)
	fildl	_xdim
	movl	$0, (%esp)
	movl	$0, 4(%esp)
	fstpl	8(%esp)
	call	*_glad_glOrtho
	subl	$48, %esp
	cmpl	$4, _rendmode
	jne	L1045
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glLoadIdentity
L1045:
	movl	$2929, %edx
	movl	$_gl+88, %eax
	movl	$1, _polymost2d
	call	_inthash_find
	testl	%eax, %eax
	je	L1046
	movl	$2929, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$2929, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1046:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L1044
	movl	$3042, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1044:
	movl	-4(%ebp), %edi
	.cfi_def_cfa 7, 0
	leave
	.cfi_restore 5
	leal	-8(%edi), %esp
	.cfi_def_cfa 4, 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE187:
	.section	.text.unlikely,"x"
	.align 2
LCOLDB104:
	.text
LHOTB104:
	.align 2
	.p2align 4
	.globl	__ZN5async20threadpool_schedulerC2Ej.constprop.0
	.def	__ZN5async20threadpool_schedulerC2Ej.constprop.0;	.scl	2;	.type	32;	.endef
__ZN5async20threadpool_schedulerC2Ej.constprop.0:
LFB189:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$32, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%eax, -36(%ebp)
	movl	__tls_index, %esi
	movl	%fs:44, %eax
	movl	(%eax,%esi,4), %eax
	movl	__mi_heap_default@secrel32(%eax), %ebx
	movl	256(%ebx), %eax
	movl	8(%eax), %edi
	testl	%edi, %edi
	je	L1095
	movl	(%edi), %edx
	addw	$1, 16(%eax)
	movl	%edx, 8(%eax)
L1058:
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	_pthread_mutex_init
	movl	-36(%ebp), %eax
	movl	$64, %ecx
	movl	__tls_index, %esi
	movl	%eax, 4(%edi)
	movl	%eax, %edx
	movl	%fs:44, %eax
	sall	$6, %edx
	movl	(%eax,%esi,4), %eax
	movl	%eax, -32(%ebp)
	movl	__mi_heap_default@secrel32(%eax), %eax
	movl	$0, (%esp)
	call	__ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_sjjjb.constprop.0
	testl	%eax, %eax
	je	L1066
	movl	4(%edi), %ecx
	movl	%eax, 8(%edi)
	testl	%ecx, %ecx
	je	L1060
	movl	%edi, -24(%ebp)
	movups	LC103, %xmm0
	xorl	%esi, %esi
	jmp	L1067
	.p2align 4,,10
	.p2align 3
L1097:
	movl	8(%eax), %eax
L1067:
	movl	%esi, %edx
	sall	$6, %edx
	leal	(%eax,%edx), %edi
	movl	-32(%ebp), %eax
	movl	__mi_heap_default@secrel32(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	196(%eax), %eax
	movl	8(%eax), %ebx
	testl	%ebx, %ebx
	je	L1096
	movl	(%ebx), %edx
	addw	$1, 16(%eax)
	movl	%edx, 8(%eax)
L1063:
	movl	__tls_index, %ecx
	movl	%fs:44, %eax
	movl	$32, (%ebx)
	movl	(%eax,%ecx,4), %eax
	movl	__mi_heap_default@secrel32(%eax), %eax
	movl	312(%eax), %ecx
	movl	8(%ecx), %edx
	testl	%edx, %edx
	je	L1064
	testb	$63, %dl
	jne	L1064
	movl	(%edx), %eax
	addw	$1, 16(%ecx)
	movl	%eax, 8(%ecx)
L1065:
	movl	-24(%ebp), %eax
	movl	%edx, 4(%ebx)
	addl	$1, %esi
	movl	$0, 8(%ebx)
	movl	%ebx, (%edi)
	movups	%xmm0, 4(%edi)
	cmpl	4(%eax), %esi
	jb	L1097
	movl	-24(%ebp), %edi
L1060:
	movl	%fs:44, %eax
	movl	$64, %ecx
	movl	$128, %edx
	movl	__tls_index, %esi
	movl	$32, 12(%edi)
	movl	(%eax,%esi,4), %ebx
	movl	__mi_heap_default@secrel32(%ebx), %eax
	movl	$0, (%esp)
	call	__ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_sjjjb.constprop.0
	testl	%eax, %eax
	je	L1066
	movl	%eax, 16(%edi)
	movl	-36(%ebp), %eax
	movl	$0, 20(%edi)
	movl	__mi_heap_default@secrel32(%ebx), %ebx
	movl	$0, 24(%edi)
	movb	$0, 28(%edi)
	movl	$0, 32(%edi)
	cmpl	$536870911, %eax
	ja	L1078
	leal	0(,%eax,4), %esi
	cmpl	$512, %esi
	ja	L1068
	movl	184(%ebx,%esi), %edx
	movl	8(%edx), %eax
	testl	%eax, %eax
	je	L1068
	movl	(%eax), %ecx
	addw	$1, 16(%edx)
	movl	%ecx, 8(%edx)
L1071:
	movl	%eax, 36(%edi)
	movl	$0, 40(%edi)
	movl	$0, 44(%edi)
	movl	$0, 48(%edi)
	movl	$0, 52(%edi)
	movl	$0, 56(%edi)
	movl	$0, 60(%edi)
	movl	$0, 64(%edi)
	movl	$0, 68(%edi)
	movl	204(%ebx), %edx
	movl	%edi, __ZZN5async6detail9singletonINS0_22default_scheduler_implEE12get_instanceEvE8instance
	movl	8(%edx), %eax
	movl	$0, -20(%ebp)
	testl	%eax, %eax
	je	L1098
	movl	(%eax), %ecx
	addw	$1, 16(%edx)
	movl	%ecx, 8(%edx)
L1075:
	movl	-36(%ebp), %esi
	movl	$__ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPN5async6detail15threadpool_dataEjjES6_ijEEEEEE+8, (%eax)
	leal	-20(%ebp), %ecx
	movl	$0, 8(%eax)
	movl	%esi, 4(%eax)
	movl	%edi, 12(%eax)
	movl	$__ZN5async6detailL29recursive_spawn_worker_threadEPNS0_15threadpool_dataEjj, 16(%eax)
	movl	%eax, -16(%ebp)
	leal	-16(%ebp), %eax
	movl	$__ZNSt6thread24_M_thread_deps_never_runEv, 4(%esp)
	movl	%eax, (%esp)
	call	__ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE
	movl	-16(%ebp), %ecx
	subl	$8, %esp
	testl	%ecx, %ecx
	je	L1076
	movl	(%ecx), %eax
	call	*4(%eax)
L1076:
	movl	__ZZN5async6detail9singletonINS0_22default_scheduler_implEE12get_instanceEvE8instance, %eax
	movl	8(%eax), %eax
	movl	16(%eax), %edx
	testl	%edx, %edx
	jne	L1091
	movl	-20(%ebp), %edx
	movl	%edx, 16(%eax)
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
L1064:
	.cfi_restore_state
	movl	$0, (%esp)
	movl	$128, %edx
	movl	$64, %ecx
	call	__ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_sjjjb.constprop.0
	movups	LC103, %xmm0
	testl	%eax, %eax
	movl	%eax, %edx
	jne	L1065
	jmp	L1066
	.p2align 4,,10
	.p2align 3
L1096:
	movl	$0, (%esp)
	movl	-28(%ebp), %eax
	xorl	%ecx, %ecx
	movl	$12, %edx
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	movups	LC103, %xmm0
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	L1063
	movl	-28(%ebp), %eax
	xorl	%ecx, %ecx
	movl	$12, %edx
	call	__Z15mi_heap_try_newP9mi_heap_sjb
	movups	LC103, %xmm0
	movl	%eax, %ebx
	jmp	L1063
	.p2align 4,,10
	.p2align 3
L1078:
	movl	$-1, %esi
L1068:
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	movl	%esi, %edx
	movl	%ebx, %eax
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	testl	%eax, %eax
	jne	L1094
	xorl	%ecx, %ecx
	movl	%esi, %edx
	movl	%ebx, %eax
	call	__Z15mi_heap_try_newP9mi_heap_sjb
L1094:
	movl	%fs:44, %esi
	movl	__tls_index, %ecx
	movl	(%esi,%ecx,4), %edx
	movl	__mi_heap_default@secrel32(%edx), %ebx
	jmp	L1071
	.p2align 4,,10
	.p2align 3
L1095:
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	movl	$72, %edx
	movl	%ebx, %eax
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	movl	%eax, %edi
	testl	%eax, %eax
	jne	L1058
	xorl	%ecx, %ecx
	movl	$72, %edx
	movl	%ebx, %eax
	call	__Z15mi_heap_try_newP9mi_heap_sjb
	movl	%eax, %edi
	jmp	L1058
	.p2align 4,,10
	.p2align 3
L1098:
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	movl	$20, %edx
	movl	%ebx, %eax
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	testl	%eax, %eax
	jne	L1075
	xorl	%ecx, %ecx
	movl	$20, %edx
	movl	%ebx, %eax
	call	__Z15mi_heap_try_newP9mi_heap_sjb
	jmp	L1075
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__ZN5async20threadpool_schedulerC2Ej.constprop.0.cold;	.scl	3;	.type	32;	.endef
__ZN5async20threadpool_schedulerC2Ej.constprop.0.cold:
LFSB189:
L1091:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	__ZSt9terminatev
L1066:
	call	_abort
	.cfi_endproc
LFE189:
	.text
	.section	.text.unlikely,"x"
LCOLDE104:
	.text
LHOTE104:
	.section	.text.unlikely,"x"
	.align 2
LCOLDB105:
	.text
LHOTB105:
	.align 2
	.p2align 4
	.globl	__ZN5async20threadpool_scheduler8scheduleENS_15task_run_handleE
	.def	__ZN5async20threadpool_scheduler8scheduleENS_15task_run_handleE;	.scl	2;	.type	32;	.endef
__ZN5async20threadpool_scheduler8scheduleENS_15task_run_handleE:
LFB202:
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
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$20, %esp
	.cfi_def_cfa_offset 40
	movl	%fs:44, %eax
	movl	__tls_index, %edi
	movl	(%ecx), %esi
	movl	(%eax,%edi,4), %edi
	cmpl	%esi, __ZN5async6detailL17owning_threadpoolE@secrel32(%edi)
	je	L1140
	movl	%esi, (%esp)
	call	_pthread_mutex_lock
	testl	%eax, %eax
	jne	L1135
	movl	40(%esp), %eax
	movl	0(%ebp), %ebx
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	40(%esp), %eax
	movl	$0, (%eax)
	movl	12(%ebx), %eax
	movl	24(%ebx), %ecx
	movl	%eax, 4(%esp)
	subl	$1, %eax
	leal	1(%ecx), %edx
	andl	%eax, %edx
	cmpl	%edx, 20(%ebx)
	je	L1141
L1114:
	movl	16(%ebx), %eax
	movl	8(%esp), %edi
	movl	%edi, (%eax,%ecx,4)
	movl	24(%ebx), %eax
	movl	12(%ebx), %edi
	addl	$1, %eax
	leal	-1(%edi), %edx
	andl	%edx, %eax
	movl	%eax, 24(%ebx)
	movl	0(%ebp), %eax
	movl	32(%eax), %ebx
	testl	%ebx, %ebx
	je	L1139
	movl	36(%eax), %eax
	subl	$1, %ebx
	movl	(%eax,%ebx,4), %edi
	testl	%edi, %edi
	je	L1119
	movl	%edi, (%esp)
	call	_pthread_mutex_lock
	testl	%eax, %eax
	jne	L1136
	orl	$2, 8(%edi)
	leal	4(%edi), %ecx
	call	__ZNSt18condition_variable10notify_oneEv
	movl	%edi, (%esp)
	call	_pthread_mutex_unlock
	movl	0(%ebp), %eax
	movl	%ebx, 32(%eax)
L1139:
	movl	%esi, (%esp)
	call	_pthread_mutex_unlock
L1099:
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
	ret	$4
	.p2align 4,,10
	.p2align 3
L1140:
	.cfi_restore_state
	movl	__ZN5async6detailL9thread_idE@secrel32(%edi), %eax
	sall	$6, %eax
	addl	8(%esi), %eax
	movl	40(%esp), %esi
	movl	%eax, 8(%esp)
	movl	(%esi), %esi
	movl	%esi, 12(%esp)
	movl	40(%esp), %esi
	movl	$0, (%esi)
	movl	8(%eax), %esi
	movl	%esi, 4(%esp)
	movl	4(%eax), %ecx
	movl	%ecx, 16(%esp)
	subl	%ecx, %esi
	movl	(%eax), %ebx
	movl	(%ebx), %eax
	cmpl	%eax, %esi
	jge	L1142
L1101:
	movl	4(%esp), %esi
	movl	4(%ebx), %edx
	subl	$1, %eax
	movl	12(%esp), %edi
	andl	%esi, %eax
	movl	%edi, (%edx,%eax,4)
	leal	1(%esi), %eax
	movl	8(%esp), %esi
	movl	%eax, 8(%esi)
	movl	0(%ebp), %ebx
	movl	32(%ebx), %eax
	testl	%eax, %eax
	je	L1099
	movl	%ebx, (%esp)
	call	_pthread_mutex_lock
	testl	%eax, %eax
	jne	L1133
	movl	0(%ebp), %eax
	movl	32(%eax), %esi
	testl	%esi, %esi
	je	L1138
	movl	36(%eax), %eax
	subl	$1, %esi
	movl	(%eax,%esi,4), %edi
	testl	%edi, %edi
	je	L1119
	movl	%edi, (%esp)
	call	_pthread_mutex_lock
	testl	%eax, %eax
	jne	L1134
	orl	$2, 8(%edi)
	leal	4(%edi), %ecx
	call	__ZNSt18condition_variable10notify_oneEv
	movl	%edi, (%esp)
	call	_pthread_mutex_unlock
	movl	0(%ebp), %eax
	movl	%esi, 32(%eax)
L1138:
	movl	%ebx, (%esp)
	call	_pthread_mutex_unlock
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
	ret	$4
	.p2align 4,,10
	.p2align 3
L1141:
	.cfi_restore_state
	movl	4(%esp), %eax
	movl	4(%esp), %edx
	movl	$64, %ecx
	addl	%eax, %eax
	sall	$3, %edx
	movl	%eax, 12(%esp)
	movl	__mi_heap_default@secrel32(%edi), %eax
	movl	$0, (%esp)
	call	__ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_sjjjb.constprop.0
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1115
	movl	12(%ebx), %eax
	testl	%eax, %eax
	je	L1121
	xorl	%edx, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L1117:
	movl	20(%ebx), %ecx
	subl	$1, %eax
	addl	%edx, %ecx
	andl	%ecx, %eax
	movl	16(%ebx), %ecx
	movl	(%ecx,%eax,4), %eax
	movl	%edx, %ecx
	movl	%eax, (%edi,%edx,4)
	movl	12(%ebx), %eax
	addl	$1, %edx
	cmpl	%edx, %eax
	jne	L1117
L1116:
	movl	16(%ebx), %eax
	movl	%ecx, 24(%ebx)
	movl	$0, 20(%ebx)
	movl	$0, 16(%ebx)
	movl	$0, 12(%ebx)
	call	_mi_free
	movl	12(%esp), %ecx
	movl	16(%ebx), %eax
	movl	%edi, 16(%ebx)
	movl	%ecx, 12(%ebx)
	call	_mi_free
	movl	24(%ebx), %ecx
	jmp	L1114
	.p2align 4,,10
	.p2align 3
L1142:
	movl	__mi_heap_default@secrel32(%edi), %edi
	movl	196(%edi), %eax
	movl	8(%eax), %esi
	testl	%esi, %esi
	je	L1143
	movl	(%esi), %edx
	addw	$1, 16(%eax)
	movl	%edx, 8(%eax)
L1104:
	movl	(%ebx), %eax
	movl	__tls_index, %ecx
	leal	(%eax,%eax), %edx
	movl	%edx, (%esi)
	leal	0(,%eax,8), %edx
	movl	%fs:44, %eax
	movl	(%eax,%ecx,4), %eax
	movl	$64, %ecx
	movl	__mi_heap_default@secrel32(%eax), %eax
	movl	$0, (%esp)
	call	__ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_sjjjb.constprop.0
	movl	%eax, %edx
	testl	%eax, %eax
	je	L1115
	movl	%eax, 4(%esi)
	movl	16(%esp), %edi
	movl	%ebx, 8(%esi)
	cmpl	%edi, 4(%esp)
	je	L1106
	movl	(%ebx), %eax
	movl	4(%ebx), %ecx
	subl	$1, %eax
	andl	%edi, %eax
	movl	(%ecx,%eax,4), %ecx
	movl	(%esi), %eax
	subl	$1, %eax
	andl	%edi, %eax
	movl	%ecx, (%edx,%eax,4)
	movl	4(%esp), %ecx
	leal	1(%edi), %eax
	cmpl	%eax, %ecx
	je	L1106
	movl	%ebp, 16(%esp)
	.p2align 6
	.p2align 4
	.p2align 3
L1107:
	movl	(%ebx), %edi
	movl	4(%esi), %ebp
	leal	-1(%edi), %edx
	movl	4(%ebx), %edi
	andl	%eax, %edx
	movl	(%edi,%edx,4), %edi
	movl	(%esi), %edx
	subl	$1, %edx
	andl	%eax, %edx
	addl	$1, %eax
	movl	%edi, 0(%ebp,%edx,4)
	cmpl	%eax, %ecx
	jne	L1107
	movl	16(%esp), %ebp
L1106:
	movl	%esi, %ebx
	movl	8(%esp), %eax
	movl	%esi, (%eax)
	movl	(%esi), %eax
	jmp	L1101
	.p2align 4,,10
	.p2align 3
L1121:
	movl	$-1, %ecx
	jmp	L1116
L1143:
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	movl	$12, %edx
	movl	%edi, %eax
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L1104
	xorl	%ecx, %ecx
	movl	$12, %edx
	movl	%edi, %eax
	call	__Z15mi_heap_try_newP9mi_heap_sjb
	movl	%eax, %esi
	jmp	L1104
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__ZN5async20threadpool_scheduler8scheduleENS_15task_run_handleE.cold;	.scl	3;	.type	32;	.endef
__ZN5async20threadpool_scheduler8scheduleENS_15task_run_handleE.cold:
LFSB202:
L1134:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%eax, (%esp)
	call	__ZSt20__throw_system_errori
L1133:
	movl	%eax, (%esp)
	call	__ZSt20__throw_system_errori
L1115:
	call	_abort
L1135:
	movl	%eax, (%esp)
	call	__ZSt20__throw_system_errori
L1119:
	movl	$1, (%esp)
	call	__ZSt20__throw_system_errori
L1136:
	movl	%eax, (%esp)
	call	__ZSt20__throw_system_errori
	.cfi_endproc
LFE202:
	.text
	.section	.text.unlikely,"x"
LCOLDE105:
	.text
LHOTE105:
	.p2align 4
	.globl	_initputs
	.def	_initputs;	.scl	2;	.type	32;	.endef
_initputs:
LFB209:
	.cfi_startproc
	movl	__ZL10startupdlg.lto_priv.0, %edx
	testl	%edx, %edx
	je	L1147
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
	subl	$12, %esp
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, %esi
	leal	17(%eax), %eax
	shrl	$2, %eax
	sall	$2, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	leal	27(%esp), %edi
	movl	%esi, 8(%esp)
	andl	$-16, %edi
	movl	%ebx, 4(%esp)
	movl	%edi, (%esp)
	call	_memcpy
	movl	$10, %eax
	movw	%ax, (%edi,%esi)
	movl	%edi, %eax
	call	_startwin_puts.isra.0
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
	.p2align 4,,10
	.p2align 3
L1147:
	ret
	.cfi_endproc
LFE209:
	.p2align 4
	.globl	_initprintf
	.def	_initprintf;	.scl	2;	.type	32;	.endef
_initprintf:
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
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	movl	44(%esp), %edi
	movl	%edi, (%esp)
	call	_strlen
	cmpl	$1, %eax
	jbe	L1157
	movl	$1, %ebx
	.p2align 3
	.p2align 4
	.p2align 3
L1152:
	addl	%ebx, %ebx
	cmpl	%ebx, %eax
	jg	L1152
	movl	$16, %eax
	cmpl	%eax, %ebx
	cmovl	%eax, %ebx
L1151:
	xorl	%ebp, %ebp
	leal	48(%esp), %esi
	jmp	L1155
	.p2align 4,,10
	.p2align 3
L1158:
	movl	%esi, 20(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%ebp, (%esp)
	call	*__imp___vsnprintf
	cmpl	%ebx, %eax
	jb	L1163
L1155:
	addl	%ebx, %ebx
	movl	%ebp, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%ebx, 4(%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 36
	subl	$8, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, %ebp
	testl	%eax, %eax
	jne	L1158
	testl	%ebx, %ebx
	je	L1158
	movl	%ebx, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1163:
	movl	%eax, 16(%esp)
	movl	%ebp, %eax
	call	_initputs
	movl	%ebp, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	movl	16(%esp), %eax
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
L1157:
	.cfi_restore_state
	movl	$16, %ebx
	jmp	L1151
	.cfi_endproc
LFE211:
	.section .rdata,"dr"
LC107:
	.ascii "%s%s%s\12\0"
LC108:
	.ascii "%s%s\12\0"
	.text
	.p2align 4
	.globl	__Z17engineLogCallbackPvRKN6loguru7MessageE
	.def	__Z17engineLogCallbackPvRKN6loguru7MessageE;	.scl	2;	.type	32;	.endef
__Z17engineLogCallbackPvRKN6loguru7MessageE:
LFB212:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	12(%ebp), %ebx
	cmpb	$0, _g_useLogCallback
	jne	L1178
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
L1178:
	.cfi_restore_state
	movl	__ZL10startupdlg.lto_priv.0, %eax
	testl	%eax, %eax
	jne	L1179
L1166:
	movl	_osd, %ecx
	movl	12(%ebx), %eax
	movl	%ecx, -20(%ebp)
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, %esi
	movl	20(%ebx), %eax
	movl	%eax, -24(%ebp)
	movl	%eax, (%esp)
	call	_strlen
	movl	24(%ebx), %edx
	movl	%eax, %edi
	movl	%edx, (%esp)
	movl	%edx, -16(%ebp)
	call	_strlen
	movl	-20(%ebp), %ecx
	movl	1156(%ecx), %edx
	leal	4(%edx,%esi), %esi
	addl	%edi, %esi
	addl	%eax, %esi
	leal	15(%esi), %eax
	shrl	$2, %eax
	sall	$2, %eax
	call	___chkstk_ms
	movl	-16(%ebp), %edx
	subl	%eax, %esp
	leal	39(%esp), %edi
	andl	$-16, %edi
	cmpl	$-1, (%ebx)
	movb	$0, (%edi)
	je	L1180
	jge	L1168
	movl	1104(%ecx), %eax
	testl	%eax, %eax
	je	L1168
L1177:
	movl	%edx, 20(%esp)
	movl	-24(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	%ecx, 16(%esp)
	movl	$LC107, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	call	*__imp___snprintf
L1169:
	movl	%edi, %eax
	call	__Z8OSD_PutsPKc
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
L1180:
	.cfi_restore_state
	movl	1108(%ecx), %eax
	testl	%eax, %eax
	jne	L1177
L1168:
	movl	%edx, 16(%esp)
	movl	-24(%ebp), %eax
	movl	$LC108, 8(%esp)
	movl	%eax, 12(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	call	*__imp___snprintf
	jmp	L1169
	.p2align 4,,10
	.p2align 3
L1179:
	movl	24(%ebx), %eax
	call	_initputs
	jmp	L1166
	.cfi_endproc
LFE212:
	.p2align 4
	.globl	_mouseReadButtons
	.def	_mouseReadButtons;	.scl	2;	.type	32;	.endef
_mouseReadButtons:
LFB213:
	.cfi_startproc
	cmpb	$0, _g_mouseEnabled
	je	L1184
	cmpb	$0, _appactive
	je	L1184
	cmpb	$0, _g_mouseInsideWindow
	je	L1184
	movl	_osd, %eax
	testl	%eax, %eax
	je	L1185
	testb	$4, 1172(%eax)
	jne	L1184
L1185:
	movl	_g_mouseBits, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1184:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE213:
	.p2align 4
	.globl	_calc_ylookup
	.def	_calc_ylookup;	.scl	2;	.type	32;	.endef
_calc_ylookup:
LFB215:
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
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	leal	1(%edx), %eax
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, 16(%esp)
	cmpl	%eax, __ZZ12calc_ylookupE10ylookupsiz
	jl	L1200
	cmpl	$2, %esi
	jle	L1196
L1201:
	leal	(%ebx,%ebx), %ebp
	movl	%esi, 20(%esp)
	leal	-2(%esi), %eax
	xorl	%edx, %edx
	leal	0(%ebp,%ebx), %ecx
	movl	%eax, 8(%esp)
	leal	0(,%ebx,4), %edi
	xorl	%eax, %eax
	movl	%ecx, 12(%esp)
	.p2align 4
	.p2align 3
L1193:
	movl	_ylookup, %esi
	movl	%edx, (%esi,%eax,4)
	movl	_ylookup, %ecx
	leal	(%edx,%ebx), %esi
	movl	%esi, 4(%ecx,%eax,4)
	movl	_ylookup, %ecx
	leal	0(%ebp,%edx), %esi
	movl	%esi, 8(%ecx,%eax,4)
	movl	12(%esp), %ecx
	leal	(%edx,%ecx), %esi
	movl	_ylookup, %ecx
	addl	%edi, %edx
	movl	%esi, 12(%ecx,%eax,4)
	addl	$4, %eax
	cmpl	8(%esp), %eax
	jl	L1193
	movl	20(%esp), %esi
	leal	-3(%esi), %eax
	movl	%eax, %edx
	andl	$-4, %eax
	shrl	$2, %edx
	addl	$4, %eax
	addl	$1, %edx
	imull	%edi, %edx
L1192:
	movl	16(%esp), %edi
	cmpl	%eax, %edi
	jle	L1194
	sall	$2, %eax
	leal	0(,%edi,4), %ecx
L1195:
	movl	_ylookup, %esi
	movl	%edx, (%esi,%eax)
	addl	$4, %eax
	addl	%ebx, %edx
	cmpl	%ecx, %eax
	jne	L1195
L1194:
	movl	%ebx, (%esp)
	call	_setvlinebpl
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
L1200:
	.cfi_restore_state
	movl	_ylookup, %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 40
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	movl	16(%esp), %ebp
	movl	$16, 4(%esp)
	leal	0(,%ebp,4), %edi
	movl	%edi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj
	.cfi_def_cfa_offset 36
	subl	$8, %esp
	.cfi_def_cfa_offset 44
	testl	%eax, %eax
	je	L1191
	movl	%eax, _ylookup
	movl	%ebp, __ZZ12calc_ylookupE10ylookupsiz
	cmpl	$2, %esi
	jg	L1201
L1196:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	L1192
L1191:
	movl	%edi, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE215:
	.section	.text.unlikely,"x"
	.align 2
LCOLDB109:
	.text
LHOTB109:
	.align 2
	.p2align 4
	.globl	__ZN5async6detail19continuation_vector14flush_and_lockIZNS0_9task_base17run_continuationsEvEUlNS0_13ref_count_ptrIS3_EEE_EEvOT_
	.def	__ZN5async6detail19continuation_vector14flush_and_lockIZNS0_9task_base17run_continuationsEvEUlNS0_13ref_count_ptrIS3_EEE_EEvOT_;	.scl	2;	.type	32;	.endef
__ZN5async6detail19continuation_vector14flush_and_lockIZNS0_9task_base17run_continuationsEvEUlNS0_13ref_count_ptrIS3_EEE_EEvOT_:
LFB216:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -20
	movl	40(%esp), %ebx
	movl	(%ecx), %eax
	movl	%eax, 12(%esp)
L1204:
	orl	$1, %eax
	movl	%eax, %edx
	movl	12(%esp), %eax
	lock cmpxchgl	%edx, (%ecx)
	sete	%dl
	je	L1203
	movl	%eax, 12(%esp)
L1203:
	movl	12(%esp), %eax
	testb	%dl, %dl
	je	L1204
	testb	$2, %al
	jne	L1231
	cmpl	$3, %eax
	ja	L1232
L1202:
	movl	20(%esp), %ebx
	addl	$36, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret	$4
	.p2align 4,,10
	.p2align 3
L1232:
	.cfi_restore_state
	andl	$-4, %eax
	movl	12(%eax), %edx
	movl	12(%edx), %edx
	movl	%eax, 16(%esp)
	leal	16(%esp), %eax
	movl	%eax, 4(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	16(%esp), %eax
	testl	%eax, %eax
	je	L1202
	lock subl	$1, (%eax)
	jne	L1202
	movl	12(%eax), %edx
	movl	%eax, (%esp)
	call	*(%edx)
	jmp	L1202
	.p2align 4,,10
	.p2align 3
L1231:
	andl	$-4, %eax
	addl	$12, %eax
	movl	%eax, (%esp)
	movl	%eax, 8(%esp)
	call	_pthread_mutex_lock
	testl	%eax, %eax
	jne	L1227
	movl	12(%esp), %eax
	movl	%esi, 24(%esp)
	movl	%ebp, 32(%esp)
	andl	$-4, %eax
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	movl	(%eax), %ebp
	movl	4(%eax), %esi
	cmpl	%ebp, %esi
	je	L1207
	movl	%edi, 28(%esp)
	.cfi_offset 7, -12
	leal	16(%esp), %edi
	jmp	L1209
	.p2align 4,,10
	.p2align 3
L1208:
	addl	$4, %ebp
	cmpl	%ebp, %esi
	je	L1233
L1209:
	movl	0(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%edx), %edx
	movl	%eax, 16(%esp)
	movl	%edi, 4(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	16(%esp), %eax
	testl	%eax, %eax
	je	L1208
	lock subl	$1, (%eax)
	jne	L1208
	addl	$4, %ebp
	movl	12(%eax), %edx
	movl	%eax, (%esp)
	call	*(%edx)
	cmpl	%ebp, %esi
	jne	L1209
	.p2align 4
	.p2align 3
L1233:
	movl	12(%esp), %eax
	andl	$-4, %eax
	movl	(%eax), %edx
	cmpl	%edx, 4(%eax)
	je	L1229
	movl	%edx, 4(%eax)
	movl	28(%esp), %edi
	.cfi_restore 7
L1207:
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	call	_pthread_mutex_unlock
	movl	24(%esp), %esi
	.cfi_restore 6
	movl	32(%esp), %ebp
	.cfi_restore 5
	movl	20(%esp), %ebx
	addl	$36, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret	$4
	.p2align 4,,10
	.p2align 3
L1229:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	28(%esp), %edi
	.cfi_restore 7
	jmp	L1207
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__ZN5async6detail19continuation_vector14flush_and_lockIZNS0_9task_base17run_continuationsEvEUlNS0_13ref_count_ptrIS3_EEE_EEvOT_.cold;	.scl	3;	.type	32;	.endef
__ZN5async6detail19continuation_vector14flush_and_lockIZNS0_9task_base17run_continuationsEvEUlNS0_13ref_count_ptrIS3_EEE_EEvOT_.cold:
LFSB216:
L1227:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -20
	movl	%eax, (%esp)
	movl	%esi, 24(%esp)
	movl	%edi, 28(%esp)
	movl	%ebp, 32(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	call	__ZSt20__throw_system_errori
	.cfi_endproc
LFE216:
	.text
	.section	.text.unlikely,"x"
LCOLDE109:
	.text
LHOTE109:
	.p2align 4
	.def	__ZN5async6detail9task_funcINS0_21inline_scheduler_implENS_16task_wait_handle14wait_exec_funcIZNS0_L20generic_wait_handlerES3_EUlvE_EENS0_9fake_voidEE6cancelEPNS0_9task_baseEONSt15__exception_ptr13exception_ptrE;	.scl	3;	.type	32;	.endef
__ZN5async6detail9task_funcINS0_21inline_scheduler_implENS_16task_wait_handle14wait_exec_funcIZNS0_L20generic_wait_handlerES3_EUlvE_EENS0_9fake_voidEE6cancelEPNS0_9task_baseEONSt15__exception_ptr13exception_ptrE:
LFB218:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	16(%esp), %eax
	movl	12(%esp), %ecx
	movl	(%eax), %edx
	movl	$0, (%eax)
	leal	4(%esp), %eax
	movl	%edx, 16(%ecx)
	movb	$4, 4(%ecx)
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	addl	$8, %ecx
	call	__ZN5async6detail19continuation_vector14flush_and_lockIZNS0_9task_base17run_continuationsEvEUlNS0_13ref_count_ptrIS3_EEE_EEvOT_
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE218:
	.p2align 4
	.def	__ZN5async6detail9task_funcINS0_21inline_scheduler_implENS_16task_wait_handle14wait_exec_funcIZNS0_L16thread_task_loopEPNS0_15threadpool_dataEjS3_EUlvE_EENS0_9fake_voidEE6cancelEPNS0_9task_baseEONSt15__exception_ptr13exception_ptrE;	.scl	3;	.type	32;	.endef
__ZN5async6detail9task_funcINS0_21inline_scheduler_implENS_16task_wait_handle14wait_exec_funcIZNS0_L16thread_task_loopEPNS0_15threadpool_dataEjS3_EUlvE_EENS0_9fake_voidEE6cancelEPNS0_9task_baseEONSt15__exception_ptr13exception_ptrE:
LFB221:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	16(%esp), %eax
	movl	12(%esp), %ecx
	movl	(%eax), %edx
	movl	$0, (%eax)
	leal	4(%esp), %eax
	movl	%edx, 16(%ecx)
	movb	$4, 4(%ecx)
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	addl	$8, %ecx
	call	__ZN5async6detail19continuation_vector14flush_and_lockIZNS0_9task_base17run_continuationsEvEUlNS0_13ref_count_ptrIS3_EEE_EEvOT_
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE221:
	.p2align 4
	.globl	__sm_allocator_destroy.part.0.lto_priv.0
	.def	__sm_allocator_destroy.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
__sm_allocator_destroy.part.0.lto_priv.0:
LFB222:
	.cfi_startproc
	movl	%eax, %edx
	movl	372(%eax), %eax
	testl	%eax, %eax
	je	L1244
	pushl	%ecx
	.cfi_def_cfa_offset 8
	movl	%edx, (%esp)
	call	_mi_free
	movl	(%esp), %eax
	popl	%edx
	.cfi_def_cfa_offset 4
	jmp	_mi_free
L1244:
	movl	%edx, %eax
	jmp	_mi_free
	.cfi_endproc
LFE222:
	.globl	__sm_allocator_destroy.part.0.lto_priv.2
	.def	__sm_allocator_destroy.part.0.lto_priv.2;	.scl	2;	.type	32;	.endef
	.set	__sm_allocator_destroy.part.0.lto_priv.2,__sm_allocator_destroy.part.0.lto_priv.0
	.globl	__sm_allocator_destroy.part.0.lto_priv.3
	.def	__sm_allocator_destroy.part.0.lto_priv.3;	.scl	2;	.type	32;	.endef
	.set	__sm_allocator_destroy.part.0.lto_priv.3,__sm_allocator_destroy.part.0.lto_priv.0
	.globl	__sm_allocator_destroy.part.0.lto_priv.4
	.def	__sm_allocator_destroy.part.0.lto_priv.4;	.scl	2;	.type	32;	.endef
	.set	__sm_allocator_destroy.part.0.lto_priv.4,__sm_allocator_destroy.part.0.lto_priv.0
	.globl	__sm_allocator_destroy.part.0.lto_priv.1
	.def	__sm_allocator_destroy.part.0.lto_priv.1;	.scl	2;	.type	32;	.endef
	.set	__sm_allocator_destroy.part.0.lto_priv.1,__sm_allocator_destroy.part.0.lto_priv.0
	.p2align 4
	.globl	__ZZ18engineSetupLoggingRiPPcENUlRKN6loguru7MessageEE_4_FUNES5_.lto_priv.0
	.def	__ZZ18engineSetupLoggingRiPPcENUlRKN6loguru7MessageEE_4_FUNES5_.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZZ18engineSetupLoggingRiPPcENUlRKN6loguru7MessageEE_4_FUNES5_.lto_priv.0:
LFB228:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	_g_sm_heap, %eax
	testl	%eax, %eax
	je	L1248
	call	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0
	movl	_g_sm_heap, %eax
	testl	%eax, %eax
	je	L1248
	call	__sm_allocator_destroy.part.0.lto_priv.0
L1248:
	movl	$1, (%esp)
	call	_exit
	.cfi_endproc
LFE228:
	.section .rdata,"dr"
LC110:
	.ascii "Cache size: %d\0"
	.align 4
LC111:
	.ascii "*Newhandle: 0x%08x, Newbytes: %d, *Newlock: %d\0"
LC112:
	.ascii "allocateBlock\0"
	.align 4
LC113:
	.ascii "BUFFER TOO BIG TO FIT IN CACHE!\0"
	.align 4
LC114:
	.ascii "fatal_exit(%s) at %s:%d in %s()\12\0"
	.align 4
LC115:
	.ascii "ALLOCACHE CALLED WITH LOCK OF 0!\0"
LC116:
	.ascii "CACHE SPACE ALL LOCKED UP!\0"
	.text
	.align 2
	.p2align 4
	.globl	__ZN7cache1d13allocateBlockEPiiPc.constprop.0
	.def	__ZN7cache1d13allocateBlockEPiiPc.constprop.0;	.scl	2;	.type	32;	.endef
__ZN7cache1d13allocateBlockEPiiPc.constprop.0:
LFB232:
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
	jb	L1318
L1254:
	movl	64(%esp), %eax
	cmpb	$0, (%eax)
	je	L1319
L1258:
	movl	_g_cache+16, %eax
	subl	$1, %eax
	js	L1283
	movl	_g_cache+8, %edi
	movl	_g_cache, %edx
	movl	$0, 60(%esp)
	movl	$0, 56(%esp)
	movl	%edi, 40(%esp)
	movl	%edi, %esi
	movl	$2147483647, 28(%esp)
	movl	%edx, 36(%esp)
	jmp	L1271
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1263:
	subl	$1, %eax
	jb	L1320
L1271:
	movl	36(%esp), %edi
	movl	%eax, %edx
	movl	32(%esp), %ebx
	sall	$4, %edx
	subl	8(%edi,%edx), %esi
	leal	(%ebx,%esi), %ebp
	cmpl	%ebp, 40(%esp)
	jl	L1263
	cmpl	%ebp, %esi
	jge	L1264
	leal	(%edi,%edx), %ecx
	movl	%esi, 44(%esp)
	movl	%esi, %ebx
	xorl	%edi, %edi
	movl	%eax, 48(%esp)
	movl	%edx, 52(%esp)
	jmp	L1268
	.p2align 4,,10
	.p2align 3
L1265:
	cmpb	$-57, %dl
	ja	L1315
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
	jge	L1315
	addl	%esi, %ebx
	addl	$16, %ecx
	cmpl	%ebx, %ebp
	jle	L1321
L1268:
	movl	(%ecx), %eax
	movzbl	(%eax), %edx
	testb	%dl, %dl
	jne	L1265
	movl	8(%ecx), %esi
	addl	$16, %ecx
	addl	%esi, %ebx
	cmpl	%ebx, %ebp
	jg	L1268
L1321:
	movl	44(%esp), %esi
	movl	48(%esp), %eax
	movl	52(%esp), %edx
	cmpl	%edi, 28(%esp)
	jle	L1263
	testl	%edi, %edi
	je	L1270
	movl	%esi, 60(%esp)
	movl	%edi, 28(%esp)
	movl	%eax, 56(%esp)
	subl	$1, %eax
	jnb	L1271
L1320:
	movl	56(%esp), %eax
	movl	36(%esp), %edx
	movl	%eax, %edi
	leal	1(%eax), %ebp
	sall	$4, %edi
	movl	%edi, 40(%esp)
	cmpl	$2147483647, 28(%esp)
	je	L1261
L1272:
	movl	32(%esp), %eax
	movl	56(%esp), %ecx
	movl	%eax, %ebx
	negl	%ebx
	testl	%eax, %eax
	jle	L1275
	.p2align 6
	.p2align 4
	.p2align 3
L1277:
	movl	%ecx, %esi
	sall	$4, %esi
	leal	(%edx,%esi), %eax
	movl	(%eax), %edi
	cmpb	$0, (%edi)
	je	L1276
	movl	4(%eax), %eax
	movl	$0, (%eax)
	movl	_g_cache, %edx
	leal	(%edx,%esi), %eax
L1276:
	addl	$1, %ecx
	addl	8(%eax), %ebx
	js	L1277
L1275:
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
	je	L1253
	movl	%ebp, %edi
	sall	$4, %edi
	cmpl	%ebp, _g_cache+16
	je	L1322
	movl	_g_cache, %eax
	addl	%edi, %eax
	movl	(%eax), %edx
	cmpb	$0, (%edx)
	jne	L1280
	addl	%ebx, 8(%eax)
L1253:
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
L1315:
	.cfi_restore_state
	movl	44(%esp), %esi
	movl	48(%esp), %eax
	jmp	L1263
L1280:
	call	__ZN7cache1d20inc_and_check_cacnumEv.constprop.0
	movl	_g_cache+16, %eax
	leal	-1(%eax), %esi
	cmpl	%ebp, %esi
	jle	L1281
	movl	%ebx, 28(%esp)
	leal	-2(%eax), %edx
	sall	$4, %edx
	.p2align 6
	.p2align 4
	.p2align 3
L1282:
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
	jne	L1282
	movl	28(%esp), %ebx
L1281:
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
L1319:
	.cfi_restore_state
	call	__ZN7cache1d6reportEv.constprop.0
	movl	$LC112, 16(%esp)
	movl	$137, 12(%esp)
	movl	$LC78, 8(%esp)
	movl	$LC115, 4(%esp)
	movl	$LC114, (%esp)
	call	_initprintf
	movl	_g_sm_heap, %ebx
	testl	%ebx, %ebx
	je	L1259
	call	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0
	movl	_g_sm_heap, %ebx
	testl	%ebx, %ebx
	je	L1259
	movl	372(%ebx), %eax
	testl	%eax, %eax
	je	L1260
	call	_mi_free
L1260:
	movl	%ebx, %eax
	call	_mi_free
L1259:
	movl	$LC115, 4(%esp)
	movl	$0, (%esp)
	call	*__imp__FatalAppExitA@8
	.cfi_def_cfa_offset 84
	subl	$8, %esp
	.cfi_def_cfa_offset 92
	jmp	L1258
L1264:
	movl	28(%esp), %ecx
	testl	%ecx, %ecx
	jle	L1263
L1270:
	movl	%edx, 40(%esp)
	leal	1(%eax), %ebp
	movl	36(%esp), %edx
	movl	%esi, 60(%esp)
	movl	%eax, 56(%esp)
	jmp	L1272
L1283:
	movl	$0, 40(%esp)
	movl	$1, %ebp
	movl	$0, 60(%esp)
	movl	$0, 56(%esp)
L1261:
	call	__ZN7cache1d6reportEv.constprop.0
	movl	$LC112, 16(%esp)
	movl	$183, 12(%esp)
	movl	$LC78, 8(%esp)
	movl	$LC116, 4(%esp)
	movl	$LC114, (%esp)
	call	_initprintf
	movl	_g_sm_heap, %eax
	testl	%eax, %eax
	je	L1273
	call	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0
	movl	_g_sm_heap, %ebx
	testl	%ebx, %ebx
	je	L1273
	movl	372(%ebx), %eax
	testl	%eax, %eax
	je	L1274
	call	_mi_free
L1274:
	movl	%ebx, %eax
	call	_mi_free
L1273:
	movl	$LC116, 4(%esp)
	movl	$0, (%esp)
	call	*__imp__FatalAppExitA@8
	.cfi_def_cfa_offset 84
	movl	_g_cache, %edx
	subl	$8, %esp
	.cfi_def_cfa_offset 92
	jmp	L1272
L1318:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1323
L1255:
	call	__ZN7cache1d6reportEv.constprop.0
	movl	$LC112, 16(%esp)
	movl	$131, 12(%esp)
	movl	$LC78, 8(%esp)
	movl	$LC113, 4(%esp)
	movl	$LC114, (%esp)
	call	_initprintf
	movl	_g_sm_heap, %esi
	testl	%esi, %esi
	je	L1256
	call	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0
	movl	_g_sm_heap, %ebx
	testl	%ebx, %ebx
	je	L1256
	movl	372(%ebx), %eax
	testl	%eax, %eax
	je	L1257
	call	_mi_free
L1257:
	movl	%ebx, %eax
	call	_mi_free
L1256:
	movl	$LC113, 4(%esp)
	movl	$0, (%esp)
	call	*__imp__FatalAppExitA@8
	.cfi_def_cfa_offset 84
	subl	$8, %esp
	.cfi_def_cfa_offset 92
	jmp	L1254
L1322:
	call	__ZN7cache1d20inc_and_check_cacnumEv.constprop.0
	addl	_g_cache, %edi
	movl	%ebx, 8(%edi)
	movl	$__ZL8zerochar.lto_priv.0, (%edi)
	jmp	L1253
L1323:
	movl	%eax, 16(%esp)
	movl	$LC110, 12(%esp)
	movl	$128, 8(%esp)
	movl	$LC78, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1255
	movl	64(%esp), %eax
	movzbl	(%eax), %eax
	movl	$LC111, 12(%esp)
	movl	$129, 8(%esp)
	movl	%eax, 24(%esp)
	movl	32(%esp), %eax
	movl	$LC78, 4(%esp)
	movl	%eax, 20(%esp)
	movl	68(%esp), %eax
	movl	$-2, (%esp)
	movl	%eax, 16(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1255
	.cfi_endproc
LFE232:
	.p2align 4
	.globl	__ZL19get_floorspr_pointsPKviiPiS1_S1_S1_S1_S1_S1_S1_i.lto_priv.0
	.def	__ZL19get_floorspr_pointsPKviiPiS1_S1_S1_S1_S1_S1_S1_i.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL19get_floorspr_pointsPKviiPiS1_S1_S1_S1_S1_S1_S1_i.lto_priv.0:
LFB233:
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
	jne	L1325
	movsbl	22(%ebx), %ecx
	addl	%ecx, %esi
	movsbl	23(%ebx), %ecx
	addl	%ecx, %edx
L1325:
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
	call	_tabledivide64.lto_priv.8
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
	call	_tabledivide64.lto_priv.8
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
	call	_tabledivide64.lto_priv.8
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
	call	_tabledivide64.lto_priv.8
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
LFE233:
	.globl	__ZL19get_floorspr_pointsPKviiPiS1_S1_S1_S1_S1_S1_S1_i.lto_priv.1
	.def	__ZL19get_floorspr_pointsPKviiPiS1_S1_S1_S1_S1_S1_S1_i.lto_priv.1;	.scl	2;	.type	32;	.endef
	.set	__ZL19get_floorspr_pointsPKviiPiS1_S1_S1_S1_S1_S1_S1_i.lto_priv.1,__ZL19get_floorspr_pointsPKviiPiS1_S1_S1_S1_S1_S1_S1_i.lto_priv.0
	.p2align 4
	.globl	_clipshape_idx_for_sprite
	.def	_clipshape_idx_for_sprite;	.scl	2;	.type	32;	.endef
_clipshape_idx_for_sprite:
LFB235:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	testl	%edx, %edx
	js	L1340
	movl	%ebx, (%esp)
	movl	__ZL5sectq.lto_priv.0, %ecx
	xorl	%edx, %edx
	movl	%esi, 4(%esp)
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	_sector, %esi
L1337:
	movswl	(%ecx), %ecx
	movzwl	12(%eax), %ebx
	leal	(%ecx,%ecx,4), %eax
	leal	(%esi,%eax,8), %ecx
	jmp	L1336
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1338:
	xorl	%edx, %edx
L1336:
	movswl	36(%ecx), %eax
	xorl	%ebx, %eax
	testb	$32, %al
	jne	L1338
	movl	(%esp), %ebx
	.cfi_restore 3
	movl	4(%esp), %esi
	.cfi_restore 6
	movl	%edx, %eax
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1340:
	.cfi_def_cfa_offset 12
	movswl	14(%eax), %edx
	movswl	__ZL8pictoidx.lto_priv.0(%edx,%edx), %edx
	testl	%edx, %edx
	jns	L1341
	movl	%edx, %eax
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
L1341:
	.cfi_restore_state
	movl	%esi, 4(%esp)
	movl	__ZL5sectq.lto_priv.0, %ecx
	movl	%ebx, (%esp)
	.cfi_offset 6, -8
	.cfi_offset 3, -12
	movl	_sector, %esi
	jmp	L1337
	.cfi_endproc
LFE235:
	.p2align 4
	.globl	_clipinsideboxline
	.def	_clipinsideboxline;	.scl	2;	.type	32;	.endef
_clipinsideboxline:
LFB236:
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
	js	L1345
	cmpl	%eax, %ebx
	movl	%edi, 8(%esp)
	.cfi_offset 7, -12
	leal	(%edx,%edx), %edi
	cmovle	%ebx, %eax
	cmpl	%eax, %edi
	jle	L1358
	movl	%edx, %eax
	subl	%ebp, %eax
	movl	20(%esp), %ebp
	addl	%eax, %ebp
	addl	28(%esp), %eax
	testl	%eax, %ebp
	js	L1358
	cmpl	%eax, %ebp
	cmovle	%ebp, %eax
	cmpl	%eax, %edi
	jle	L1358
	subl	%esi, %ecx
	movl	%edx, %esi
	movl	28(%esp), %eax
	subl	%ebx, %edx
	subl	20(%esp), %eax
	subl	%ebp, %esi
	imull	%ecx, %esi
	imull	%eax, %edx
	cmpl	%edx, %esi
	jge	L1359
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
L1358:
	.cfi_restore_state
	movl	8(%esp), %edi
	.cfi_restore 7
L1345:
	xorl	%eax, %eax
L1342:
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
L1359:
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
	jmp	L1342
	.cfi_endproc
LFE236:
	.p2align 4
	.globl	__Z14clipsprite_tryPK13uspritetypev7iiii
	.def	__Z14clipsprite_tryPK13uspritetypev7iiii;	.scl	2;	.type	32;	.endef
__Z14clipsprite_tryPK13uspritetypev7iiii:
LFB237:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movswl	14(%eax), %eax
	cmpw	$0, __ZL8pictoidx.lto_priv.0(%eax,%eax)
	jns	L1370
	movl	16(%esp), %ebx
	xorl	%eax, %eax
	addl	$32, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1370:
	.cfi_restore_state
	movl	__ZL5sectq.lto_priv.0, %eax
	movl	%edi, 24(%esp)
	movl	%ebp, 28(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	%edx, %ebp
	movl	%esi, 20(%esp)
	.cfi_offset 6, -16
	movswl	(%eax), %eax
	movzwl	12(%ebx), %esi
	leal	(%eax,%eax,4), %edx
	movl	__ZL11clipmapinfo.lto_priv.0+4, %eax
	movl	%esi, %edi
	leal	(%eax,%edx,8), %edx
	.p2align 4
	.p2align 4
	.p2align 3
L1362:
	movswl	36(%edx), %eax
	xorl	%esi, %eax
	testb	$32, %al
	jne	L1362
	andl	$48, %edi
	movl	%ecx, 8(%esp)
	movzbl	29(%edx), %esi
	cmpw	$32, %di
	je	L1363
	movl	%esi, 4(%esp)
	movl	$0, (%esp)
	call	_divideu32.lto_priv.0
L1364:
	subl	$1024, %eax
	movl	%ebp, %edx
	movl	(%ebx), %ecx
	subl	%eax, %edx
	cmpl	%edx, %ecx
	jl	L1365
	movl	8(%esp), %edx
	movl	4(%ebx), %esi
	subl	%eax, %edx
	cmpl	%edx, %esi
	jl	L1365
	movl	36(%esp), %edx
	addl	%eax, %edx
	cmpl	%edx, %ecx
	jg	L1365
	addl	40(%esp), %eax
	cmpl	%eax, %esi
	jg	L1365
	movl	__ZL13clipspritenum.lto_priv.0, %edx
	cmpl	$4095, %edx
	jg	L1365
	subl	_sprite, %ebx
	leal	1(%edx), %ecx
	sarl	$2, %ebx
	movl	%ecx, __ZL13clipspritenum.lto_priv.0
	imull	$-1171354717, %ebx, %eax
	movw	%ax, __ZL14clipspritelist.lto_priv.0(%edx,%edx)
L1365:
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
L1363:
	.cfi_restore_state
	movzbl	30(%edx), %eax
	movl	$0, (%esp)
	movl	%eax, 4(%esp)
	call	_divideu32.lto_priv.0
	movl	%esi, 4(%esp)
	movl	$0, (%esp)
	movl	%eax, 12(%esp)
	call	_divideu32.lto_priv.0
	movl	12(%esp), %edx
	cmpl	%eax, %edx
	cmovnb	%edx, %eax
	jmp	L1364
	.cfi_endproc
LFE237:
	.p2align 4
	.def	__ZL15clipmove_spriteP4vec3IiEiiiii4vec2IiES3_S3_S3_i;	.scl	3;	.type	32;	.endef
__ZL15clipmove_spriteP4vec3IiEiiiii4vec2IiES3_S3_S3_i:
LFB238:
	.cfi_startproc
	subl	$224, %esp
	.cfi_def_cfa_offset 228
	movl	%eax, 64(%esp)
	movl	240(%esp), %eax
	movl	%ebp, 220(%esp)
	.cfi_offset 5, -8
	movswl	_headspritesect(%edx,%edx), %ebp
	movl	%eax, 48(%esp)
	movl	244(%esp), %eax
	movl	%ecx, 84(%esp)
	movl	%eax, 52(%esp)
	movl	248(%esp), %eax
	movl	%eax, 60(%esp)
	movl	252(%esp), %eax
	movl	%eax, 56(%esp)
	movl	256(%esp), %eax
	movl	%eax, 100(%esp)
	movl	260(%esp), %eax
	movl	%eax, 104(%esp)
	movl	264(%esp), %eax
	movl	%eax, 132(%esp)
	movl	268(%esp), %eax
	movl	%eax, 136(%esp)
	testl	%ebp, %ebp
	js	L1371
	movl	%ebx, 208(%esp)
	movl	%esi, 212(%esp)
	movl	%edi, 216(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.p2align 4
	.p2align 3
L1424:
	imull	$44, %ebp, %edi
	movl	%edi, 40(%esp)
	addl	_sprite, %edi
	movzwl	12(%edi), %eax
	movl	%edi, 36(%esp)
	movw	%ax, 140(%esp)
	movl	%eax, %esi
	testl	%eax, 236(%esp)
	je	L1373
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
	jne	L1373
	movl	(%edi), %ecx
	movl	4(%edi), %edi
	movl	%ecx, 72(%esp)
	movl	%edi, 76(%esp)
	testl	$32, %esi
	jne	L1374
	andl	$48, %esi
	cmpw	$16, %si
	je	L1375
	cmpl	%ecx, %ebx
	jl	L1373
	cmpl	%ecx, 48(%esp)
	jle	L1476
	.p2align 4
	.p2align 3
L1373:
	movswl	_nextspritesect(%ebp,%ebp), %ebp
	testl	%ebp, %ebp
	jns	L1424
L1480:
	movl	208(%esp), %ebx
	.cfi_restore 3
	movl	212(%esp), %esi
	.cfi_restore 6
	movl	216(%esp), %edi
	.cfi_restore 7
L1371:
	movl	220(%esp), %ebp
	addl	$224, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1375:
	.cfi_def_cfa_offset 228
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
	subl	232(%esp), %edx
	cmpl	%edx, %ebx
	jle	L1373
	addl	228(%esp), %eax
	cmpl	%eax, %ebx
	jge	L1373
	movl	36(%esp), %edi
	movswl	28(%edi), %eax
	movswl	14(%edi), %ecx
	movsbl	22(%edi), %ebx
	movzbl	20(%edi), %esi
	movl	%eax, 40(%esp)
	movl	%eax, %edx
	movsbl	_picanm+1(%ecx,%ecx,4), %eax
	addl	%ebx, %eax
	movl	%eax, %ebx
	negl	%ebx
	testb	$4, 12(%edi)
	movswl	_tilesiz(,%ecx,4), %edi
	cmovne	%ebx, %eax
	andl	$2047, %edx
	movl	40(%esp), %ebx
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
	movl	%eax, 72(%esp)
	movl	%ebx, %eax
	movl	%esi, 68(%esp)
/APP
 # 417 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	76(%esp), %edx
	subl	%eax, %edx
	movl	%ebx, %eax
	movl	%edx, 44(%esp)
	movl	%edx, %ebx
	movl	%edi, %edx
/APP
 # 418 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	272(%esp), %edx
	leal	(%ebx,%eax), %edi
	movl	36(%esp), %ecx
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	movl	%edx, 12(%esp)
	movl	104(%esp), %edx
	movl	%ebx, (%esp)
	movl	%eax, 76(%esp)
	movl	100(%esp), %eax
	call	_clipinsideboxline
	testl	%eax, %eax
	je	L1373
	movl	40(%esp), %ecx
	movl	84(%esp), %edx
	leal	768(%ecx), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
/APP
 # 1210 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 40(%esp)
	leal	256(%ecx), %eax
	movl	84(%esp), %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
/APP
 # 1211 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 88(%esp)
	movl	64(%esp), %eax
	movl	4(%eax), %ecx
	movl	(%eax), %ebx
	cmpl	$2147483647, _enginecompatibilitymode
	je	L1381
L1383:
	movl	40(%esp), %eax
	movl	88(%esp), %esi
	movl	%eax, 92(%esp)
L1382:
	movl	36(%esp), %edx
	movl	%edi, %eax
	subl	%ecx, %eax
	subl	%ebx, %edx
	imull	%eax, %edx
	movl	68(%esp), %eax
	subl	%ebx, %eax
	movl	44(%esp), %ebx
	subl	%ecx, %ebx
	imull	%ebx, %eax
	cmpl	%eax, %edx
	jge	L1477
	testb	$64, 140(%esp)
	jne	L1373
	movl	36(%esp), %ecx
	leal	-16384(%ebp), %eax
	movl	%edi, %edx
	movl	68(%esp), %ebx
	cwtl
	subl	%esi, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	subl	%esi, %ecx
	movl	44(%esp), %eax
	movl	92(%esp), %esi
	addl	%esi, %eax
	subl	%esi, %ebx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__ZL11addcliplineiiiisi
L1385:
	movl	64(%esp), %eax
	movl	(%eax), %ebx
	movl	4(%eax), %ecx
	movl	%ebx, %edx
	movl	%ecx, %eax
	subl	36(%esp), %edx
	subl	44(%esp), %eax
	imull	72(%esp), %edx
	imull	76(%esp), %eax
	addl	%edx, %eax
	js	L1478
	movl	68(%esp), %edx
	movl	%edi, %eax
	subl	%ecx, %eax
	imull	76(%esp), %eax
	subl	%ebx, %edx
	imull	72(%esp), %edx
	addl	%edx, %eax
	jns	L1373
	movl	68(%esp), %eax
	movl	40(%esp), %ebx
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
	jmp	L1373
	.p2align 4,,10
	.p2align 3
L1374:
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
	jne	L1387
	movzwl	22(%ebx), %eax
	movw	%ax, 108(%esp)
	testw	%ax, %ax
	je	L1387
	movswl	108(%esp), %eax
	movswl	28(%ebx), %ecx
	movl	64(%esp), %edi
	movl	%eax, 92(%esp)
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
	movl	92(%esp), %eax
/APP
 # 1813 "source/build/include/build.h" 1
	imull %edx; shrdl $18, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	88(%esp), %ecx
	addl	%eax, 68(%esp)
	movl	68(%esp), %eax
	subl	232(%esp), %eax
	cmpl	%ecx, %eax
	jge	L1393
	movl	68(%esp), %eax
	addl	228(%esp), %eax
	cmpl	%ecx, %eax
	jg	L1392
L1393:
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
	movl	232(%esp), %eax
	movl	%ebp, 148(%esp)
	movl	%ecx, 196(%esp)
	movl	36(%esp), %ebp
	addl	%ecx, %eax
	movl	%eax, 200(%esp)
	movl	%ecx, %eax
	movl	92(%esp), %ecx
	subl	228(%esp), %eax
	movl	%eax, 204(%esp)
	movl	%edx, %eax
	movl	%ecx, %ebx
	subl	%esi, %edx
	sall	$8, %eax
	sarl	$31, %ebx
	movl	%ecx, 76(%esp)
	movl	%eax, 88(%esp)
	sall	$8, %edx
	leal	196(%esp), %eax
	movl	%ebx, 80(%esp)
	movl	%eax, 44(%esp)
	movl	%edx, 128(%esp)
L1423:
	movl	76(%esp), %eax
	movl	80(%esp), %edx
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
	call	_tabledivide64.lto_priv.8
	movl	108(%esp), %edx
	movl	%eax, %ecx
/APP
 # 1343 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $12, %edx, %eax
 # 0 "" 2
/NO_APP
	cmpl	88(%esp), %eax
	jg	L1414
	cmpl	%eax, 128(%esp)
	jg	L1414
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
	movl	%eax, 92(%esp)
	addl	%ecx, %eax
	movl	84(%esp), %edx
	movl	%ecx, 36(%esp)
	movswl	28(%ebp), %ecx
	movl	%eax, 120(%esp)
	leal	1792(%ecx), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
/APP
 # 1354 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 156(%esp)
	movl	84(%esp), %edx
	movl	%eax, 164(%esp)
	leal	1280(%ecx), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
/APP
 # 1355 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	272(%esp), %edx
	movl	36(%esp), %ecx
	movl	%edi, 4(%esp)
	movl	%eax, 168(%esp)
	movl	%eax, 160(%esp)
	movl	120(%esp), %eax
	movl	%edx, 12(%esp)
	movl	104(%esp), %edx
	movl	%eax, 8(%esp)
	movl	100(%esp), %eax
	movl	%ecx, (%esp)
	movl	%esi, %ecx
	call	_clipinsideboxline
	testl	%eax, %eax
	jne	L1479
L1414:
	addl	$4, 44(%esp)
	leal	208(%esp), %ecx
	cmpl	%ecx, 44(%esp)
	jne	L1423
	movl	148(%esp), %ebp
	movswl	_nextspritesect(%ebp,%ebp), %ebp
	testl	%ebp, %ebp
	jns	L1424
	jmp	L1480
	.p2align 4,,10
	.p2align 3
L1387:
	movl	68(%esp), %eax
	subl	232(%esp), %eax
	cmpl	88(%esp), %eax
	jge	L1373
	movl	68(%esp), %eax
	addl	228(%esp), %eax
	cmpl	88(%esp), %eax
	jle	L1373
	xorl	%eax, %eax
	movw	%ax, 108(%esp)
L1392:
	movzwl	140(%esp), %eax
	testb	$64, %al
	je	L1394
	movl	88(%esp), %ebx
	cmpl	%ebx, 68(%esp)
	setl	%dl
	shrw	$3, %ax
	andl	$1, %eax
	xorl	$1, %eax
	cmpb	%al, %dl
	je	L1373
L1394:
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
	movl	%eax, 128(%esp)
	movl	84(%esp), %edx
	andl	$2047, %ecx
	movswl	_sintable(%ecx,%ecx), %eax
/APP
 # 1261 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 120(%esp)
	movl	64(%esp), %eax
	movl	_ryi+4, %ecx
	movl	_rxi+4, %edi
	movl	4(%eax), %ebx
	movl	(%eax), %esi
	movl	%ecx, %eax
	movl	%edi, 72(%esp)
	movl	_rxi, %edx
	subl	%ebx, %eax
	movl	%ecx, 68(%esp)
	movl	%eax, 76(%esp)
	movl	%edi, %eax
	subl	%esi, %eax
	movl	%edx, 88(%esp)
	subl	%esi, %edx
	movl	%eax, %edi
	movl	%eax, 116(%esp)
	movl	_ryi, %eax
	imull	76(%esp), %edx
	movl	%eax, 92(%esp)
	subl	%ebx, %eax
	imull	%edi, %eax
	cmpl	%eax, %edx
	jge	L1395
	movl	92(%esp), %eax
	movl	88(%esp), %edx
	movl	272(%esp), %edi
	movl	72(%esp), %ecx
	movl	%eax, 8(%esp)
	movl	68(%esp), %eax
	movl	%edx, 4(%esp)
	movl	104(%esp), %edx
	movl	%eax, (%esp)
	movl	100(%esp), %eax
	movl	%edi, 12(%esp)
	call	_clipinsideboxline
	testl	%eax, %eax
	je	L1481
	cmpl	$2147483647, _enginecompatibilitymode
	jne	L1399
	movl	92(%esp), %ecx
	movl	88(%esp), %edi
	movl	72(%esp), %eax
	subl	%ecx, %ebx
	movl	%ebx, %edx
	movl	120(%esp), %ebx
	subl	%edi, %eax
	subl	%ebx, %edx
	imull	%eax, %edx
	movl	%esi, %eax
	movl	128(%esp), %esi
	subl	%edi, %eax
	movl	68(%esp), %edi
	subl	%esi, %eax
	subl	%ecx, %edi
	movl	%esi, %ecx
	imull	%edi, %eax
	sarl	%ecx
	cmpl	%eax, %edx
	cmovge	%esi, %ecx
	movl	%ecx, 128(%esp)
	movl	%ebx, %ecx
	sarl	%ecx
	cmpl	%eax, %edx
	cmovge	%ebx, %ecx
	movl	%ecx, 120(%esp)
L1399:
	leal	-16384(%ebp), %ebx
	movl	120(%esp), %esi
	movl	128(%esp), %eax
	movl	$0, 8(%esp)
	movswl	%bx, %ebx
	movl	88(%esp), %ecx
	movl	68(%esp), %edx
	movl	%ebx, 4(%esp)
	movl	92(%esp), %ebx
	addl	%eax, %ecx
	addl	%eax, %edx
	movl	72(%esp), %eax
	addl	%esi, %ebx
	movl	%ebx, (%esp)
	subl	%esi, %eax
	call	__ZL11addcliplineiiiisi
	movl	64(%esp), %ecx
	movl	_rxi+4, %eax
	movl	(%ecx), %esi
	movl	4(%ecx), %ebx
	movl	%eax, 72(%esp)
	subl	%esi, %eax
	movl	%eax, 116(%esp)
	movl	_ryi+8, %eax
	movl	%eax, 88(%esp)
L1475:
	subl	%ebx, %eax
	movl	%eax, 112(%esp)
	movl	_rxi+8, %eax
	movl	%eax, 92(%esp)
	subl	%esi, %eax
	movl	%eax, 124(%esp)
	movl	_ryi+4, %eax
	movl	%eax, %edi
	movl	%eax, 68(%esp)
	subl	%ebx, %edi
	movl	%edi, 76(%esp)
L1397:
	movl	116(%esp), %eax
	movl	124(%esp), %edx
	imull	112(%esp), %eax
	imull	76(%esp), %edx
	cmpl	%edx, %eax
	jge	L1406
	movl	272(%esp), %eax
	movl	92(%esp), %ecx
	movl	104(%esp), %edx
	movl	%eax, 12(%esp)
	movl	68(%esp), %eax
	movl	%eax, 8(%esp)
	movl	72(%esp), %eax
	movl	%eax, 4(%esp)
	movl	88(%esp), %eax
	movl	%eax, (%esp)
	movl	100(%esp), %eax
	call	_clipinsideboxline
	testl	%eax, %eax
	je	L1407
	cmpl	$2147483647, _enginecompatibilitymode
	jne	L1409
	movl	68(%esp), %edi
	movl	72(%esp), %ecx
	movl	92(%esp), %eax
	subl	%edi, %ebx
	movl	%ebx, %edx
	movl	120(%esp), %ebx
	subl	%ecx, %eax
	subl	%ebx, %edx
	imull	%eax, %edx
	movl	%esi, %eax
	movl	128(%esp), %esi
	subl	%ecx, %eax
	movl	88(%esp), %ecx
	subl	%esi, %eax
	subl	%edi, %ecx
	imull	%ecx, %eax
	movl	%esi, %ecx
	sarl	%ecx
	cmpl	%eax, %edx
	cmovge	%esi, %ecx
	movl	%ecx, 128(%esp)
	movl	%ebx, %ecx
	sarl	%ecx
	cmpl	%eax, %edx
	cmovge	%ebx, %ecx
	movl	%ecx, 120(%esp)
L1409:
	leal	-16384(%ebp), %ebx
	movl	128(%esp), %esi
	movl	120(%esp), %eax
	movl	$0, 8(%esp)
	movswl	%bx, %ebx
	movl	72(%esp), %ecx
	movl	88(%esp), %edx
	movl	%ebx, 4(%esp)
	movl	68(%esp), %ebx
	subl	%eax, %ecx
	subl	%eax, %edx
	movl	92(%esp), %eax
	addl	%esi, %ebx
	movl	%ebx, (%esp)
	subl	%esi, %eax
	call	__ZL11addcliplineiiiisi
L1407:
	movl	44(%esp), %edi
	testl	%edi, %edi
	je	L1373
	movl	64(%esp), %eax
	movl	8(%eax), %eax
	movl	%eax, 88(%esp)
	movswl	108(%esp), %eax
	movl	%eax, 92(%esp)
	jmp	L1393
	.p2align 4,,10
	.p2align 3
L1476:
	cmpl	%edi, 52(%esp)
	jg	L1373
	cmpl	%edi, 56(%esp)
	jl	L1373
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
	subl	232(%esp), %edx
	cmpl	%edx, %ebx
	jle	L1373
	addl	228(%esp), %eax
	cmpl	%eax, %ebx
	jge	L1373
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
	jmp	L1373
	.p2align 4,,10
	.p2align 3
L1479:
	movl	92(%esp), %ecx
	movl	64(%esp), %edx
	negl	%ebx
	movl	%ebx, %esi
	movl	%ebx, 124(%esp)
	movl	%ebx, %edi
	movl	%ecx, 188(%esp)
	sarl	$31, %ecx
	movl	(%edx), %eax
	sarl	$31, %edi
	movl	%ecx, 192(%esp)
	movl	144(%esp), %ecx
	cltd
	movl	%edi, 184(%esp)
	movl	184(%esp), %edi
	movl	%ecx, %ebx
	movl	%esi, 180(%esp)
	sarl	$31, %ebx
	subl	%ecx, %eax
	sbbl	%ebx, %edx
	movl	%eax, 172(%esp)
	movl	124(%esp), %eax
	movl	172(%esp), %ebx
	movl	%edx, 176(%esp)
	movl	176(%esp), %ecx
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
	movl	92(%esp), %ebx
	movl	%eax, 92(%esp)
	movl	%edx, 96(%esp)
	movl	92(%esp), %eax
	movl	192(%esp), %edx
	movl	%ebx, %ecx
	imull	96(%esp), %ecx
	movl	%ebx, 92(%esp)
	imull	%eax, %edx
	addl	%edx, %ecx
	mull	%ebx
	addl	%ecx, %edx
	addl	%eax, %esi
	adcl	%edx, %edi
	xorl	%eax, %eax
	cmpl	%esi, %eax
	sbbl	%edi, %eax
	jge	L1425
	movl	124(%esp), %eax
	imull	%eax
	movl	%eax, %ecx
	movl	92(%esp), %eax
	movl	%edx, %ebx
	imull	%eax
	addl	%ecx, %eax
	movl	%edi, %ecx
	adcl	%ebx, %edx
	cmpl	%eax, %esi
	sbbl	%edx, %ecx
	jge	L1426
	movl	%esi, %ebx
	movl	%edi, %esi
	movl	%eax, 8(%esp)
	shldl	$15, %ebx, %esi
	sall	$15, %ebx
	movl	%edx, 12(%esp)
	movl	%ebx, (%esp)
	movl	%esi, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	184(%esp), %esi
	movl	124(%esp), %edi
	movl	%eax, %ecx
	movl	%edx, %ebx
	shldl	$15, %eax, %ebx
	sall	$15, %ecx
	movl	124(%esp), %eax
	imull	%ebx, %edi
	movl	%ecx, 172(%esp)
	imull	%ecx, %esi
	movl	144(%esp), %ecx
	movl	%ebx, 176(%esp)
	mull	172(%esp)
	addl	%edi, %esi
	addl	%esi, %edx
	movl	%eax, %esi
	movl	92(%esp), %eax
	shrdl	$30, %edx, %esi
	movl	192(%esp), %edx
	imull	176(%esp), %eax
	leal	(%ecx,%esi), %edi
	movl	172(%esp), %ecx
	imull	%ecx, %edx
	movl	36(%esp), %ecx
	leal	(%edx,%eax), %ebx
	movl	92(%esp), %eax
	mull	172(%esp)
	addl	%ebx, %edx
	shrdl	$30, %edx, %eax
	leal	(%ecx,%eax), %edx
L1415:
	movl	40(%esp), %ebx
	addl	_sprite, %ebx
	movzwl	12(%ebx), %eax
	movl	8(%ebx), %ecx
	notl	%eax
	testb	$48, %al
	jne	L1417
	movzwl	22(%ebx), %eax
	movw	%ax, 172(%esp)
	testw	%ax, %ax
	je	L1417
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
	movswl	172(%esp), %eax
/APP
 # 1813 "source/build/include/build.h" 1
	imull %edx; shrdl $18, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
L1417:
	movl	64(%esp), %ebx
	movl	%ecx, %edx
	subl	232(%esp), %edx
	movl	8(%ebx), %eax
	cmpl	%edx, %eax
	jl	L1414
	addl	228(%esp), %ecx
	cmpl	%ecx, %eax
	jg	L1414
	movl	4(%ebx), %ecx
	movl	(%ebx), %ebx
	cmpl	$2147483647, _enginecompatibilitymode
	je	L1482
L1420:
	movl	144(%esp), %edx
	movl	120(%esp), %eax
	subl	%ebx, %edx
	subl	%ecx, %eax
	imull	%eax, %edx
	movl	152(%esp), %eax
	subl	%ebx, %eax
	movl	36(%esp), %ebx
	subl	%ecx, %ebx
	imull	%ebx, %eax
	cmpl	%eax, %edx
	jge	L1483
	testb	$64, 140(%esp)
	jne	L1414
	movl	160(%esp), %eax
	movl	144(%esp), %ecx
	movl	$0, 8(%esp)
	movl	120(%esp), %edx
	movl	164(%esp), %esi
	subl	%eax, %ecx
	movl	152(%esp), %ebx
	subl	%eax, %edx
	movzwl	142(%esp), %eax
	subl	%esi, %ebx
	subw	$16384, %ax
	cwtl
	movl	%eax, 4(%esp)
	movl	36(%esp), %eax
	addl	%esi, %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__ZL11addcliplineiiiisi
	jmp	L1414
	.p2align 4,,10
	.p2align 3
L1395:
	movl	_ryi+12, %edi
	movl	_ryi+8, %edx
	movl	_rxi+8, %eax
	movl	_rxi+12, %ecx
	movl	%edx, 88(%esp)
	subl	%ebx, %edx
	movl	%edi, 144(%esp)
	subl	%ebx, %edi
	movl	%edx, 112(%esp)
	movl	%edi, %edx
	movl	%eax, 92(%esp)
	subl	%esi, %eax
	movl	%eax, 124(%esp)
	imull	%eax, %edx
	movl	%ecx, %eax
	subl	%esi, %eax
	imull	112(%esp), %eax
	cmpl	%eax, %edx
	jge	L1397
	movl	88(%esp), %edx
	movl	272(%esp), %edi
	movl	%ecx, 148(%esp)
	movl	92(%esp), %eax
	movl	%edi, 12(%esp)
	movl	144(%esp), %edi
	movl	%edx, 8(%esp)
	movl	104(%esp), %edx
	movl	%eax, 4(%esp)
	movl	100(%esp), %eax
	movl	%edi, (%esp)
	call	_clipinsideboxline
	testl	%eax, %eax
	je	L1397
	cmpl	$2147483647, _enginecompatibilitymode
	movl	148(%esp), %ecx
	jne	L1404
	movl	%ebx, %eax
	movl	%ecx, %edx
	subl	88(%esp), %eax
	subl	92(%esp), %edx
	subl	120(%esp), %eax
	subl	92(%esp), %esi
	imull	%edx, %eax
	movl	144(%esp), %edi
	subl	88(%esp), %edi
	movl	%eax, %ebx
	movl	%esi, %eax
	movl	128(%esp), %esi
	subl	%esi, %eax
	movl	%esi, %edx
	imull	%edi, %eax
	sarl	%edx
	cmpl	%eax, %ebx
	cmovge	%esi, %edx
	movl	120(%esp), %esi
	movl	%edx, 128(%esp)
	movl	%esi, %edx
	sarl	%edx
	cmpl	%eax, %ebx
	cmovge	%esi, %edx
	movl	%edx, 120(%esp)
L1404:
	movl	120(%esp), %esi
	movl	128(%esp), %eax
	movl	$0, 8(%esp)
	movl	92(%esp), %edx
	movl	144(%esp), %ebx
	subl	%eax, %edx
	subl	%eax, %ebx
	leal	(%ecx,%esi), %eax
	leal	-16384(%ebp), %ecx
	movswl	%cx, %ecx
	movl	%ecx, 4(%esp)
	movl	88(%esp), %ecx
	subl	%esi, %ecx
	movl	%ecx, (%esp)
	movl	%edx, %ecx
	movl	%ebx, %edx
	call	__ZL11addcliplineiiiisi
	movl	64(%esp), %ebx
	movl	_rxi+4, %eax
	movl	(%ebx), %esi
	movl	4(%ebx), %ebx
	movl	%eax, 72(%esp)
	subl	%esi, %eax
	movl	%eax, 116(%esp)
	movl	_ryi+8, %eax
	movl	%eax, 88(%esp)
	jmp	L1475
	.p2align 4,,10
	.p2align 3
L1406:
	movl	_ryi+12, %edx
	movl	_rxi+12, %edi
	movl	_ryi, %eax
	movl	_rxi, %ecx
	movl	%edx, 68(%esp)
	movl	%edi, %edx
	movl	%eax, 72(%esp)
	subl	%esi, %edx
	subl	%ebx, %eax
	movl	%ecx, 76(%esp)
	subl	%esi, %ecx
	imull	%eax, %edx
	movl	%ecx, %eax
	movl	68(%esp), %ecx
	subl	%ebx, %ecx
	imull	%ecx, %eax
	cmpl	%eax, %edx
	jge	L1407
	movl	272(%esp), %edx
	movl	72(%esp), %eax
	movl	%edi, 4(%esp)
	movl	76(%esp), %ecx
	movl	%edx, 12(%esp)
	movl	68(%esp), %edx
	movl	%eax, (%esp)
	movl	100(%esp), %eax
	movl	%edx, 8(%esp)
	movl	104(%esp), %edx
	call	_clipinsideboxline
	testl	%eax, %eax
	je	L1407
	cmpl	$2147483647, _enginecompatibilitymode
	jne	L1412
	movl	%ebx, %eax
	movl	76(%esp), %edx
	movl	120(%esp), %ebx
	subl	68(%esp), %eax
	subl	%edi, %edx
	subl	%ebx, %eax
	imull	%edx, %eax
	movl	%eax, %ecx
	movl	%esi, %eax
	movl	128(%esp), %esi
	subl	%edi, %eax
	subl	%esi, %eax
	movl	%eax, 88(%esp)
	movl	72(%esp), %eax
	subl	68(%esp), %eax
	movl	%eax, %edx
	movl	88(%esp), %eax
	imull	%edx, %eax
	movl	%esi, %edx
	sarl	%edx
	cmpl	%eax, %ecx
	cmovge	%esi, %edx
	movl	%edx, 128(%esp)
	movl	%ebx, %edx
	sarl	%edx
	cmpl	%eax, %ecx
	cmovge	%ebx, %edx
	movl	%edx, 120(%esp)
L1412:
	leal	-16384(%ebp), %ebx
	movl	128(%esp), %esi
	movl	120(%esp), %eax
	movl	$0, 8(%esp)
	movswl	%bx, %ebx
	movl	72(%esp), %edx
	movl	%ebx, 4(%esp)
	movl	68(%esp), %ebx
	leal	(%edi,%eax), %ecx
	addl	%eax, %edx
	movl	76(%esp), %eax
	subl	%esi, %ebx
	movl	%ebx, (%esp)
	addl	%esi, %eax
	call	__ZL11addcliplineiiiisi
	jmp	L1407
L1426:
	movl	120(%esp), %edx
	movl	152(%esp), %edi
	jmp	L1415
L1481:
	movl	_ryi+8, %eax
	movl	%eax, 88(%esp)
	subl	%ebx, %eax
	movl	%eax, 112(%esp)
	movl	_rxi+8, %eax
	movl	%eax, 92(%esp)
	subl	%esi, %eax
	movl	%eax, 124(%esp)
	jmp	L1397
L1381:
	movl	88(%esp), %esi
	movl	%ecx, %edx
	subl	44(%esp), %edx
	movl	%ebx, %eax
	subl	36(%esp), %eax
	subl	40(%esp), %eax
	subl	%esi, %edx
	imull	72(%esp), %edx
	imull	76(%esp), %eax
	movl	%edx, 92(%esp)
	cmpl	%eax, 92(%esp)
	jge	L1383
	movl	40(%esp), %edx
	sarl	%esi
	sarl	%edx
	movl	%edx, 92(%esp)
	jmp	L1382
L1482:
	movl	168(%esp), %edi
	movl	%ecx, %edx
	subl	36(%esp), %edx
	movl	%ebx, %eax
	movl	156(%esp), %esi
	subl	144(%esp), %eax
	subl	%edi, %edx
	imull	124(%esp), %edx
	subl	%esi, %eax
	sarl	%esi
	imull	92(%esp), %eax
	movl	%edx, 124(%esp)
	movl	%esi, %edx
	movl	%edi, %esi
	cmpl	%eax, 124(%esp)
	cmovge	156(%esp), %edx
	sarl	%esi
	cmpl	%eax, 124(%esp)
	cmovge	%edi, %esi
	movl	%edx, 164(%esp)
	movl	%esi, 160(%esp)
	jmp	L1420
L1477:
	movl	44(%esp), %ebx
	movl	68(%esp), %ecx
	movl	$0, 8(%esp)
	movl	36(%esp), %eax
	leal	(%esi,%ebx), %edx
	addl	%esi, %ecx
	movl	92(%esp), %esi
	leal	(%esi,%eax), %ebx
	leal	-16384(%ebp), %eax
	cwtl
	movl	%eax, 4(%esp)
	movl	%edi, %eax
	subl	%esi, %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__ZL11addcliplineiiiisi
	jmp	L1385
L1425:
	movl	36(%esp), %edx
	movl	144(%esp), %edi
	jmp	L1415
L1483:
	movl	160(%esp), %eax
	movl	152(%esp), %ecx
	movl	$0, 8(%esp)
	movl	36(%esp), %edx
	movl	164(%esp), %esi
	addl	%eax, %ecx
	movl	144(%esp), %ebx
	addl	%eax, %edx
	movzwl	142(%esp), %eax
	subw	$16384, %ax
	cwtl
	movl	%eax, 4(%esp)
	movl	120(%esp), %eax
	subl	%esi, %eax
	movl	%eax, (%esp)
	leal	(%ebx,%esi), %eax
	call	__ZL11addcliplineiiiisi
	jmp	L1414
L1478:
	movl	40(%esp), %ebx
	movl	36(%esp), %eax
	movl	$1, 8(%esp)
	movl	44(%esp), %edi
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
	jmp	L1373
	.cfi_endproc
LFE238:
	.p2align 4
	.globl	__Z20clipsprite_initindexiPK13uspritetypev7PiPK4vec3IiE
	.def	__Z20clipsprite_initindexiPK13uspritetypev7PiPK4vec3IiE;	.scl	2;	.type	32;	.endef
__Z20clipsprite_initindexiPK13uspritetypev7PiPK4vec3IiE:
LFB246:
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
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%ecx, %ebx
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	movl	8(%edx), %eax
	movzwl	28(%edx), %esi
	movzwl	12(%edi), %ebp
	movl	%eax, 16(%esp)
	movl	__ZL5sectq.lto_priv.0, %eax
	movw	%si, 36(%esp)
	andl	$48, %ebp
	movswl	(%eax), %eax
	leal	(%eax,%eax,4), %eax
	sall	$3, %eax
	movl	%eax, 40(%esp)
	addl	_sector, %eax
	movzwl	38(%eax), %esi
	movzbl	29(%eax), %ecx
	movw	%si, 44(%esp)
	movzwl	36(%eax), %esi
	andl	$2, %esi
	movw	%si, 32(%esp)
	movzbl	30(%eax), %esi
	movzbl	20(%edx), %eax
	xorl	%edx, %edx
	movl	%ecx, 8(%esp)
	movl	$0, 12(%esp)
	shldl	$22, %eax, %edx
	sall	$22, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	cmpw	$32, %bp
	je	L1485
	call	_tabledivide64.lto_priv.8
	movl	%esi, 8(%esp)
	xorl	%edx, %edx
	movl	%eax, 20(%esp)
	movl	%eax, %ebp
	movl	$0, 12(%esp)
	movzbl	21(%edi), %eax
	shldl	$22, %eax, %edx
	sall	$22, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.8
	movzwl	12(%edi), %ecx
	movl	$1, %edx
	movl	%ebp, 24(%esp)
	movl	%eax, 28(%esp)
	movl	%ecx, %eax
	movl	$1, 60(%esp)
	shrw	%ax
	andl	$2, %eax
	subl	%eax, %edx
	movl	%edx, 56(%esp)
L1486:
	cmpw	$0, 32(%esp)
	jne	L1487
	movl	56(%esp), %eax
	imull	60(%esp), %eax
	movl	%eax, 72(%esp)
	cmpl	$-1, %eax
	je	L1488
L1487:
	movl	$1, 72(%esp)
L1489:
	movl	_sector, %eax
	movl	40(%esp), %esi
	movswl	36(%eax,%esi), %eax
	xorl	%ecx, %eax
	testb	$-128, %al
	je	L1490
	movswl	14(%edi), %eax
	movzbl	21(%edi), %edx
	shrw	$6, %cx
	andl	$2, %ecx
	movswl	_tilesiz+2(,%eax,4), %eax
	imull	%edx, %eax
	leal	-1(%ecx), %edx
	addl	%eax, %eax
	imull	%edx, %eax
	addl	%eax, 16(%esp)
L1490:
	movl	$0, __ZL11clipsectnum.lto_priv.0
	movl	$0, (%ebx)
	movl	__ZL5sectq.lto_priv.0, %eax
	movl	_sector, %ebx
	movswl	(%eax), %eax
	movw	%ax, 70(%esp)
	movl	%eax, 64(%esp)
	leal	(%eax,%eax,4), %eax
	leal	(%ebx,%eax,8), %ecx
	movswl	2(%ecx), %eax
	movswl	(%ecx), %ebx
	leal	22(%ecx), %edx
	subl	_sector, %edx
	leal	(%eax,%ebx), %ebp
	movl	%edx, %eax
	movl	%ebp, 40(%esp)
	movl	$-858993459, %ebp
	mull	%ebp
	movl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	22(%ecx), %edx
/APP
 # 724 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $22, %edx, %eax
 # 0 "" 2
/NO_APP
	leal	8(%ecx), %edx
	subl	_sector, %edx
	movl	%eax, %esi
	addl	16(%esp), %esi
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	32(%ecx), %edx
	subl	_sector, %edx
	movl	%edx, %eax
	movl	%esi, 8(%ecx)
	mull	%ebp
	movl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	32(%ecx), %edx
/APP
 # 725 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $22, %edx, %eax
 # 0 "" 2
/NO_APP
	leal	4(%ecx), %edx
	subl	_sector, %edx
	movl	%eax, %esi
	movl	%edx, %eax
	mull	%ebp
	movl	16(%esp), %eax
	movl	40(%esp), %ebp
	addl	%esi, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	%eax, 4(%ecx)
	cmpl	%ebp, %ebx
	jge	L1491
	cmpw	$0, 32(%esp)
	je	L1492
	.p2align 4
	.p2align 3
L1493:
	movl	%ebx, %ecx
	movl	_wall, %esi
	sall	$5, %ecx
	movl	%ecx, %eax
	addl	%ecx, %esi
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	20(%esp), %eax
	movl	16(%esi), %edx
/APP
 # 731 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $22, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, (%esi)
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
	movl	%eax, 4(%esi)
	addl	$1, %ebx
	movl	(%edi), %edx
	addl	%edx, (%esi)
	addl	4(%edi), %eax
	movl	%eax, 4(%esi)
	cmpl	%ebx, %ebp
	jne	L1493
L1491:
	movl	96(%esp), %eax
	movl	64(%esp), %ecx
	movl	4(%eax), %edx
	movl	(%eax), %eax
	call	_inside
	movl	__ZL11clipsectnum.lto_priv.0, %edx
	cmpl	$1, %eax
	je	L1504
L1495:
	testl	%edx, %edx
	jne	L1484
	movl	__ZL5sectq.lto_priv.0, %eax
	movswl	(%eax), %eax
	movl	$1, __ZL11clipsectnum.lto_priv.0
	movl	%eax, %edx
	sarl	$3, %eax
	movl	%edx, %ecx
	movw	%dx, _clipsectorlist
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.6(%ecx), %ecx
	orb	%cl, __ZL13clipsectormap.lto_priv.0(%eax)
L1484:
	movl	72(%esp), %eax
	addl	$76, %esp
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
L1492:
	.cfi_restore_state
	movzwl	36(%esp), %eax
	subw	44(%esp), %ax
	movl	%ebx, 16(%esp)
	movl	%eax, %esi
	addw	$512, %ax
	movl	%edi, 52(%esp)
	andl	$2047, %esi
	andl	$2047, %eax
	movl	%esi, 48(%esp)
	movl	%eax, 44(%esp)
	.p2align 4
	.p2align 3
L1494:
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
	movl	60(%esp), %edi
	movl	56(%esp), %ebx
	imull	0(%ebp), %ebx
	imull	%eax, %edi
	movl	44(%esp), %eax
	movl	%ebx, 0(%ebp)
	movl	%edi, 4(%ebp)
	movl	%edi, %ecx
	movswl	_sintable(%eax,%eax), %edx
	movl	48(%esp), %eax
	movl	%ecx, %esi
	movl	%ebx, 28(%esp)
	movl	%edx, 32(%esp)
	negl	%esi
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
	movl	52(%esp), %ebx
	movl	%eax, 4(%ebp)
	addl	$1, 16(%esp)
	movl	16(%esp), %ecx
	movl	%edi, 0(%ebp)
	addl	(%ebx), %edi
	movl	%edi, 0(%ebp)
	addl	4(%ebx), %eax
	movl	%eax, 4(%ebp)
	cmpl	%ecx, 40(%esp)
	jne	L1494
	jmp	L1491
	.p2align 4,,10
	.p2align 3
L1504:
	cmpl	$511, %edx
	jg	L1496
	movzwl	70(%esp), %edi
	movl	64(%esp), %eax
	movl	%edi, %ecx
	sarl	$3, %eax
	movw	%di, _clipsectorlist(%edx,%edx)
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.6(%ecx), %ecx
	orb	%cl, __ZL13clipsectormap.lto_priv.0(%eax)
	leal	1(%edx), %eax
	movl	%eax, __ZL11clipsectnum.lto_priv.0
	movl	%eax, %edx
	jmp	L1495
	.p2align 4,,10
	.p2align 3
L1496:
	movl	72(%esp), %eax
	orl	$1, __ZL15clipmove_warned.lto_priv.0
	addl	$76, %esp
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
L1485:
	.cfi_restore_state
	call	_tabledivide64.lto_priv.8
	movl	%esi, 8(%esp)
	xorl	%edx, %edx
	movl	%eax, 20(%esp)
	movl	%eax, %ebp
	movl	$0, 12(%esp)
	movzbl	21(%edi), %eax
	shldl	$22, %eax, %edx
	sall	$22, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.8
	movzwl	12(%edi), %ecx
	movl	$1, %edx
	movl	%ebp, 28(%esp)
	movl	%eax, 24(%esp)
	movl	%edx, %esi
	movl	%ecx, %eax
	shrw	%ax
	andl	$2, %eax
	subl	%eax, %esi
	movl	%ecx, %eax
	shrw	$2, %ax
	movl	%esi, 56(%esp)
	andl	$2, %eax
	subl	%eax, %edx
	movl	%edx, 60(%esp)
	jmp	L1486
L1488:
	movl	__ZL11loadwallinv.lto_priv.0, %eax
	movl	%eax, _wall
	jmp	L1489
	.cfi_endproc
LFE246:
	.p2align 4
	.globl	__Z24getceilzofslope_19950829iii
	.def	__Z24getceilzofslope_19950829iii;	.scl	2;	.type	32;	.endef
__Z24getceilzofslope_19950829iii:
LFB248:
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
	jne	L1517
L1506:
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
L1517:
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
	jbe	L1507
	.p2align 4
	.p2align 4
	.p2align 3
L1508:
	shrl	$2, %eax
	addl	$1, %ecx
	cmpl	$2047, %eax
	ja	L1508
L1507:
	movzwl	_sqrtable_old(%eax,%eax), %eax
	sall	%cl, %eax
	shrl	$10, %eax
	jne	L1509
	movl	28(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	36(%esp), %edi
	.cfi_restore 7
	jmp	L1506
	.p2align 4,,10
	.p2align 3
L1509:
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
	call	_tabledivide64.lto_priv.8
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
LFE248:
	.p2align 4
	.globl	__Z24getflorzofslope_19950829iii
	.def	__Z24getflorzofslope_19950829iii;	.scl	2;	.type	32;	.endef
__Z24getflorzofslope_19950829iii:
LFB250:
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
	jne	L1530
L1519:
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
L1530:
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
	jbe	L1520
	.p2align 4
	.p2align 4
	.p2align 3
L1521:
	shrl	$2, %eax
	addl	$1, %ecx
	cmpl	$2047, %eax
	ja	L1521
L1520:
	movzwl	_sqrtable_old(%eax,%eax), %eax
	sall	%cl, %eax
	shrl	$10, %eax
	jne	L1522
	movl	28(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	36(%esp), %edi
	.cfi_restore 7
	jmp	L1519
	.p2align 4,,10
	.p2align 3
L1522:
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
	call	_tabledivide64.lto_priv.8
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
LFE250:
	.p2align 4
	.def	__ZL14cliptestsectoriiii4vec2IiEi;	.scl	3;	.type	32;	.endef
__ZL14cliptestsectoriiii4vec2IiEi:
LFB251:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	leal	(%edx,%edx,4), %ebp
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	sall	$3, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	_enginecompatibilitymode, %edx
	movl	68(%esp), %eax
	movl	%ecx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	72(%esp), %eax
	movl	%eax, 12(%esp)
	movl	_sector, %eax
	leal	(%eax,%ebp), %esi
	cmpl	$19950829, %edx
	je	L1532
	cmpl	$2147483647, %edx
	je	L1567
	leal	(%edi,%edi,4), %ebx
	sall	$3, %ebx
	addl	%ebx, %eax
	testb	$2, 14(%eax)
	je	L1568
	movl	12(%esp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	movl	16(%esp), %ecx
	movl	%ecx, 4(%esp)
	call	_getflorzofslopeptr.part.0
	movl	%eax, %edi
	movl	_sector, %eax
	addl	%ebp, %eax
L1548:
	testb	$2, 14(%eax)
	je	L1569
	movl	12(%esp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	movl	16(%esp), %ecx
	movl	%ecx, 4(%esp)
	call	_getflorzofslopeptr.part.0
L1550:
	subl	$256, %edi
	cmpl	%eax, %edi
	jle	L1551
	testb	$1, 14(%esi)
	jne	L1551
	movl	20(%esp), %edx
	subl	$1, %edx
	subl	%edx, %eax
	cmpl	76(%esp), %eax
	jle	L1552
L1551:
	movl	_sector, %eax
	addl	%eax, %ebx
	testb	$2, 12(%ebx)
	je	L1570
	movl	12(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 8(%esp)
	movl	16(%esp), %eax
	movl	%eax, 4(%esp)
	call	_getceilzofslopeptr.part.0
	movl	%eax, %ebx
	movl	_sector, %eax
	addl	%ebp, %eax
	testb	$2, 12(%eax)
	je	L1571
L1555:
	movl	12(%esp), %edi
	movl	%eax, (%esp)
	movl	%edi, 8(%esp)
	movl	16(%esp), %edi
	movl	%edi, 4(%esp)
	call	_getceilzofslopeptr.part.0
L1556:
	addl	$256, %ebx
	cmpl	%eax, %ebx
	jl	L1566
L1546:
	xorl	%eax, %eax
L1531:
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
	.p2align 4,,10
	.p2align 3
L1567:
	.cfi_restore_state
	movl	8(%esi), %eax
	movl	4(%esi), %ebp
	movl	%eax, 24(%esp)
	movl	%eax, 40(%esp)
	movzwl	14(%esi), %eax
	orw	12(%esi), %ax
	movl	%ebp, 36(%esp)
	testb	$2, %al
	jne	L1572
L1534:
	cmpl	%ebp, 24(%esp)
	jle	L1552
	movl	_sector, %edx
	leal	(%edi,%edi,4), %eax
	leal	(%edx,%eax,8), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %ecx
	movzwl	14(%eax), %ebx
	orw	12(%eax), %bx
	andl	$2, %ebx
	movl	%edx, 32(%esp)
	movl	%ecx, 28(%esp)
	jne	L1573
L1537:
	movl	24(%esp), %eax
	subl	%ebp, %eax
/APP
 # 849 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	%edx, %eax
	subl	%ecx, %eax
/APP
 # 851 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, %ebx
	jl	L1574
L1538:
	testb	$1, 14(%esi)
	jne	L1540
	movl	20(%esp), %ebx
	movl	24(%esp), %eax
	subl	$1, %ebx
	subl	%ebx, %eax
	cmpl	76(%esp), %eax
	jle	L1575
L1540:
	testb	$1, 12(%esi)
	jne	L1546
	movl	64(%esp), %eax
	leal	-1(%ebp,%eax), %eax
	cmpl	76(%esp), %eax
	jl	L1546
	addl	$256, %ecx
	xorl	%eax, %eax
	cmpl	%ebp, %ecx
	setl	%al
	jmp	L1531
	.p2align 4,,10
	.p2align 3
L1532:
	movl	12(%esp), %ecx
	movl	16(%esp), %edx
	movl	%edi, %eax
	call	__Z24getflorzofslope_19950829iii
	movl	12(%esp), %ecx
	movl	16(%esp), %edx
	movl	%eax, %ebp
	movl	%ebx, %eax
	call	__Z24getflorzofslope_19950829iii
	cmpl	%eax, %ebp
	jle	L1544
	testb	$1, 14(%esi)
	jne	L1544
	movl	20(%esp), %edx
	subl	$1, %edx
	subl	%edx, %eax
	cmpl	76(%esp), %eax
	jle	L1552
L1544:
	movl	16(%esp), %ebp
	movl	12(%esp), %ecx
	movl	%edi, %eax
	movl	%ebp, %edx
	call	__Z24getceilzofslope_19950829iii
	movl	12(%esp), %ecx
	movl	%ebp, %edx
	movl	%eax, %edi
	movl	%ebx, %eax
	call	__Z24getceilzofslope_19950829iii
	cmpl	%eax, %edi
	jge	L1546
L1566:
	testb	$1, 12(%esi)
	jne	L1546
	movl	64(%esp), %esi
	leal	-1(%eax,%esi), %eax
	cmpl	76(%esp), %eax
	setge	%al
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movzbl	%al, %eax
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
L1574:
	.cfi_restore_state
	movl	64(%esp), %eax
	addl	$511, %eax
	cmpl	%ebx, %eax
	jl	L1538
L1552:
	addl	$44, %esp
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
L1570:
	.cfi_restore_state
	addl	%ebp, %eax
	movl	4(%ebx), %ebx
	testb	$2, 12(%eax)
	jne	L1555
L1571:
	movl	4(%eax), %eax
	jmp	L1556
	.p2align 4,,10
	.p2align 3
L1573:
	leal	32(%esp), %eax
	movl	12(%esp), %ecx
	movl	16(%esp), %edx
	movl	%eax, 4(%esp)
	leal	28(%esp), %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	_yax_getzsofslope
	movl	32(%esp), %edx
	movl	28(%esp), %ecx
	jmp	L1537
	.p2align 4,,10
	.p2align 3
L1569:
	movl	8(%eax), %eax
	jmp	L1550
	.p2align 4,,10
	.p2align 3
L1568:
	movl	8(%eax), %edi
	movl	%esi, %eax
	jmp	L1548
	.p2align 4,,10
	.p2align 3
L1572:
	leal	40(%esp), %eax
	movl	12(%esp), %ecx
	movl	16(%esp), %edx
	movl	%eax, 4(%esp)
	leal	36(%esp), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_yax_getzsofslope
	movl	40(%esp), %eax
	movl	36(%esp), %ebp
	movl	%eax, 24(%esp)
	jmp	L1534
	.p2align 4,,10
	.p2align 3
L1575:
	subl	$256, %edx
	cmpl	24(%esp), %edx
	jg	L1552
	jmp	L1540
	.cfi_endproc
LFE251:
	.p2align 4
	.globl	__ZL20get_floorspr_clipyou4vec2IiES0_S0_S0_.lto_priv.0
	.def	__ZL20get_floorspr_clipyou4vec2IiES0_S0_S0_.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL20get_floorspr_clipyou4vec2IiES0_S0_S0_.lto_priv.0:
LFB254:
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
	js	L1593
L1577:
	movl	(%esp), %ebx
	xorl	%esi, %ebx
	js	L1594
L1581:
	movl	(%esp), %ebx
	movl	%ecx, %edi
	xorl	%ebx, %edi
	js	L1595
L1585:
	movl	%ecx, %esi
	xorl	%edx, %esi
	js	L1596
L1576:
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
L1593:
	.cfi_restore_state
	movl	%ebx, %eax
	movl	%ebx, %edi
	notl	%eax
	shrl	$31, %eax
	xorl	%ebp, %ebx
	jns	L1577
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
	jns	L1581
	.p2align 4
	.p2align 3
L1594:
	movl	8(%esp), %ebx
	movl	%ebx, %edi
	xorl	%ebp, %edi
	js	L1597
	movl	%eax, %esi
	movl	(%esp), %ebx
	movl	%ecx, %edi
	xorl	$1, %esi
	testl	%ebp, %ebp
	cmovns	%esi, %eax
	xorl	%ebx, %edi
	jns	L1585
L1595:
	movl	8(%esp), %edi
	movl	%edi, %esi
	xorl	4(%esp), %esi
	js	L1598
	movl	8(%esp), %esi
	movl	%eax, %ebx
	xorl	$1, %ebx
	testl	%esi, %esi
	movl	%ecx, %esi
	cmovns	%ebx, %eax
	xorl	%edx, %esi
	jns	L1576
L1596:
	movl	12(%esp), %esi
	movl	%esi, %edi
	xorl	4(%esp), %edi
	js	L1599
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
L1597:
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
	jmp	L1581
	.p2align 4,,10
	.p2align 3
L1598:
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
	jmp	L1585
	.p2align 4,,10
	.p2align 3
L1599:
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
LFE254:
	.section .rdata,"dr"
	.align 4
LC117:
	.ascii "clipmove: clipsectnum >= MAXCLIPSECTORS at (%d,%d,%d) for sprite %d (tile %d) with vector (%d,%d)!\0"
LC118:
	.ascii "source/build/src/clip.cpp\0"
	.align 4
LC119:
	.ascii "clipmove: clipsectnum >= MAXCLIPSECTORS at (%d,%d,%d) with vector (%d,%d)!\0"
	.align 4
LC120:
	.ascii "clipmove: clipnum >= MAXCLIPNUM at (%d,%d,%d) for sprite %d (tile %d) with vector (%d,%d)!\0"
	.align 4
LC121:
	.ascii "clipmove: clipnum >= MAXCLIPNUM at (%d,%d,%d) with vector (%d,%d)!\0"
	.text
	.p2align 4
	.globl	_clipmove
	.def	_clipmove;	.scl	2;	.type	32;	.endef
_clipmove:
LFB255:
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
	subl	$784, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	16(%ebp), %eax
	orl	20(%ebp), %eax
	movl	%eax, 108(%esp)
	je	L1600
	movl	12(%ebp), %eax
	movl	$0, 108(%esp)
	movzwl	(%eax), %eax
	movw	%ax, 64(%esp)
	testw	%ax, %ax
	js	L1600
	movzwl	36(%ebp), %eax
	movl	16(%ebp), %edi
	movl	20(%ebp), %esi
	movl	%eax, 80(%esp)
	movl	36(%ebp), %eax
	sarl	$14, %edi
	sarl	$14, %esi
	movl	%edi, 120(%esp)
	shrl	$16, %eax
	movl	%esi, 116(%esp)
	movl	%eax, 108(%esp)
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %eax
	leal	(%edx,%edi), %ebx
	leal	(%eax,%esi), %ecx
	addl	%ebx, %edx
	addl	%ecx, %eax
	movl	%ebx, 72(%esp)
	sarl	%edx
	sarl	%eax
	movl	%ecx, 68(%esp)
	movl	%edx, 104(%esp)
	movl	%esi, %edx
	movl	%eax, 100(%esp)
	movl	%edi, %eax
	imull	%esi, %edx
	imull	%edi, %eax
	addl	%edx, %eax
	movl	_enginecompatibilitymode, %edx
	cmpl	$2147483647, %edx
	je	L1603
	cmpl	$19950829, %edx
	je	L1909
L1603:
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
L1606:
	movl	$1, __ZL11clipsectnum.lto_priv.0
	movl	24(%ebp), %edi
	movl	$0, __ZL13clipspritenum.lto_priv.0
	leal	1032(%eax,%edi), %eax
	movl	104(%esp), %edi
	movl	$0, __ZL15clipmove_warned.lto_priv.0
	movl	%eax, 96(%esp)
	movl	$0, 228(%esp)
	movl	%edi, %esi
	addl	%eax, %edi
	subl	%eax, %esi
	movl	%edi, 168(%esp)
	movl	%esi, 192(%esp)
	movl	100(%esp), %esi
	movl	%esi, %ebx
	subl	%eax, %ebx
	addl	%esi, %eax
	movl	%ebx, 164(%esp)
	movswl	_numsectors, %ebx
	movl	%eax, 152(%esp)
	movzwl	64(%esp), %eax
	addl	$7, %ebx
	movw	%ax, _clipsectorlist
	sarl	$3, %ebx
	xorl	%eax, %eax
	movw	%ax, __ZL7clipnum
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL13clipsectormap.lto_priv.0, (%esp)
	call	_memset
	movl	12(%ebp), %eax
	movswl	(%eax), %eax
	movl	%eax, %edx
	sarl	$3, %eax
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.6(%edx), %edx
	orb	%dl, __ZL13clipsectormap.lto_priv.0(%eax)
	movl	_numyaxbunches, %eax
	testl	%eax, %eax
	jle	L1607
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL15yax_clipsectmap, (%esp)
	call	_memset
L1607:
	movl	108(%esp), %edi
	movl	24(%ebp), %esi
	movl	$1, %edx
	movl	$0, 132(%esp)
	movl	$-1, %ebx
	testl	%edi, %edi
	sete	67(%esp)
	negl	%esi
	xorl	%eax, %eax
	xorl	%edi, %edi
	movl	%esi, 124(%esp)
	jmp	L1608
	.p2align 4,,10
	.p2align 3
L1911:
	addl	$1, %edi
L1612:
	cmpl	%edi, __ZL13clipspritenum.lto_priv.0
	jle	L1719
L1915:
	movl	228(%esp), %eax
	movl	__ZL11clipsectnum.lto_priv.0, %edx
L1608:
	cmpl	%edx, %eax
	jl	L1892
	movl	132(%esp), %esi
	testl	%esi, %esi
	je	L1910
L1610:
	movswl	__ZL14clipspritelist.lto_priv.0(%edi,%edi), %eax
	movl	%ebx, %edx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	%eax, 132(%esp)
	call	_clipshape_idx_for_sprite
	movl	%eax, %ebx
	testl	%eax, %eax
	js	L1911
	movl	8(%ebp), %eax
	movl	132(%esp), %edx
	leal	228(%esp), %ecx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__Z20clipsprite_initindexiPK13uspritetypev7PiPK4vec3IiE
	movl	%ebx, 60(%esp)
	movl	228(%esp), %eax
	movl	%edi, 56(%esp)
L1613:
	leal	1(%eax), %edx
	movswl	_clipsectorlist(%eax,%eax), %eax
	movl	%edx, 228(%esp)
	movw	%ax, 92(%esp)
	leal	(%eax,%eax,4), %edx
	movl	%eax, 112(%esp)
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movswl	(%eax), %esi
	movl	%eax, 84(%esp)
	movswl	2(%eax), %eax
	movl	%esi, 76(%esp)
	addl	%esi, %eax
	movl	%eax, 156(%esp)
	cmpl	%eax, %esi
	jge	L1614
	movl	_wall, %edi
	movl	%esi, %eax
	movl	%esi, 208(%esp)
	sall	$5, %eax
	movl	%edi, 204(%esp)
	addl	%eax, %edi
	jmp	L1679
	.p2align 4,,10
	.p2align 3
L1914:
	testw	%ax, %ax
	js	L1616
	movl	_sector, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	movl	%eax, 204(%esp)
	cmpl	$19950829, _enginecompatibilitymode
	je	L1623
	movl	200(%esp), %edx
	movl	116(%esp), %eax
	movl	%esi, 12(%esp)
	movl	%ecx, 232(%esp)
	leal	272(%esp), %ecx
	movl	%ecx, 36(%esp)
	leal	232(%esp), %ecx
	movl	%ecx, 28(%esp)
	movl	176(%esp), %ecx
	movl	%edx, 24(%esp)
	movl	212(%esp), %edx
	movl	%eax, 4(%esp)
	movl	120(%esp), %eax
	movl	%ebx, 236(%esp)
	leal	236(%esp), %ebx
	movl	%ecx, 20(%esp)
	xorl	%ecx, %ecx
	movl	%edx, 16(%esp)
	movl	144(%esp), %edx
	movl	%eax, (%esp)
	movl	136(%esp), %eax
	movl	%ebx, 32(%esp)
	movl	$0, 8(%esp)
	call	_rintersect
	cmpl	$-1, %eax
	je	L1624
	movlps	232(%esp), %xmm4
	movlps	%xmm4, 184(%esp)
L1623:
	movl	204(%esp), %eax
	testb	$1, 14(%eax)
	je	L1912
L1625:
	movl	204(%esp), %eax
	testb	$1, 12(%eax)
	je	L1913
L1631:
	movzwl	12(%edi), %eax
	movw	%ax, 128(%esp)
L1634:
	cmpw	$0, 128(%esp)
	js	L1616
L1656:
	movswl	128(%esp), %eax
	movl	%eax, %esi
	sarl	$3, %eax
	movzbl	__ZL13clipsectormap.lto_priv.0(%eax), %edx
	movl	%esi, %ecx
	andl	$7, %ecx
	movl	%edx, %ebx
	movzbl	__ZL8pow2char.lto_priv.6(%ecx), %ecx
	notl	%ebx
	testb	%cl, %bl
	je	L1616
	movl	__ZL11clipsectnum.lto_priv.0, %ebx
	cmpl	$511, %ebx
	jg	L1674
	orl	%ecx, %edx
	movw	%si, _clipsectorlist(%ebx,%ebx)
	movb	%dl, __ZL13clipsectormap.lto_priv.0(%eax)
	leal	1(%ebx), %eax
	movl	%eax, __ZL11clipsectnum.lto_priv.0
	.p2align 4
	.p2align 3
L1616:
	addl	$1, 208(%esp)
	movl	208(%esp), %eax
	cmpl	%eax, 156(%esp)
	je	L1614
	movl	_wall, %eax
	addl	$32, %edi
	movl	%eax, 204(%esp)
L1679:
	movswl	8(%edi), %eax
	movl	(%edi), %esi
	movl	192(%esp), %ebx
	sall	$5, %eax
	addl	204(%esp), %eax
	cmpl	%esi, %ebx
	jle	L1615
	cmpl	(%eax), %ebx
	jg	L1616
L1615:
	movl	168(%esp), %ecx
	cmpl	%esi, %ecx
	jge	L1617
	cmpl	(%eax), %ecx
	jl	L1616
L1617:
	movl	4(%edi), %ebx
	movl	4(%eax), %ecx
	movl	164(%esp), %edx
	movl	%ebx, 212(%esp)
	movl	%ecx, 200(%esp)
	cmpl	%ebx, %edx
	jle	L1618
	cmpl	%ecx, %edx
	jg	L1616
L1618:
	movl	152(%esp), %ebx
	cmpl	212(%esp), %ebx
	jge	L1619
	cmpl	200(%esp), %ebx
	jl	L1616
L1619:
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movl	212(%esp), %ebx
	movl	200(%esp), %edx
	movlps	(%eax), %xmm1
	movl	%ecx, 176(%esp)
	subl	%esi, %ecx
	subl	%ebx, %edx
	movl	%ecx, 196(%esp)
	movlps	%xmm1, 184(%esp)
	movl	184(%esp), %eax
	movlps	%xmm1, 216(%esp)
	movl	%eax, 136(%esp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 144(%esp)
	subl	%ebx, %eax
	movl	%eax, %ebx
	movl	136(%esp), %eax
	imull	%ecx, %ebx
	subl	%esi, %eax
	movl	%eax, %ecx
	imull	%edx, %ecx
	cmpl	%ecx, %ebx
	jl	L1616
	movl	196(%esp), %ecx
	testl	%edx, %edx
	movl	168(%esp), %eax
	movl	%edx, 160(%esp)
	cmovle	192(%esp), %eax
	testl	%ecx, %ecx
	movl	%eax, %ebx
	movl	164(%esp), %eax
	cmovle	152(%esp), %eax
	subl	%esi, %ebx
	movl	%eax, %ecx
	imull	160(%esp), %ebx
	subl	212(%esp), %ecx
	imull	196(%esp), %ecx
	cmpl	%ebx, %ecx
	jge	L1616
	movswl	12(%edi), %eax
	movl	132(%esp), %edx
	movw	%ax, 128(%esp)
	testl	%edx, %edx
	jne	L1914
	cmpw	$0, 128(%esp)
	js	L1637
	movzwl	14(%edi), %eax
	andl	80(%esp), %eax
	movl	%eax, 88(%esp)
	jne	L1637
	cmpw	$0, _editstatus
	jne	L1652
	cmpl	$19950829, _enginecompatibilitymode
	je	L1653
	movl	200(%esp), %eax
	movl	%ecx, 232(%esp)
	leal	272(%esp), %ecx
	movl	%ebx, 236(%esp)
	leal	232(%esp), %ebx
	movl	144(%esp), %edx
	movl	%eax, 24(%esp)
	movl	176(%esp), %eax
	movl	%ecx, 36(%esp)
	leal	236(%esp), %ecx
	movl	%eax, 20(%esp)
	movl	212(%esp), %eax
	movl	%ecx, 32(%esp)
	xorl	%ecx, %ecx
	movl	%eax, 16(%esp)
	movl	116(%esp), %eax
	movl	%ebx, 28(%esp)
	movl	%eax, 4(%esp)
	movl	120(%esp), %eax
	movl	%esi, 12(%esp)
	movl	%eax, (%esp)
	movl	136(%esp), %eax
	movl	$0, 8(%esp)
	call	_rintersect
	movzwl	12(%edi), %ebx
	movw	%bx, 128(%esp)
	cmpl	$-1, %eax
	je	L1654
	movlps	232(%esp), %xmm7
	movlps	%xmm7, 184(%esp)
L1653:
	movl	8(%ebp), %eax
	movl	184(%esp), %ecx
	movl	188(%esp), %ebx
	movlps	184(%esp), %xmm7
	movl	8(%eax), %eax
	movswl	128(%esp), %edx
	movl	%ecx, 4(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 12(%esp)
	movl	28(%ebp), %eax
	movlps	%xmm7, 232(%esp)
	movl	%eax, (%esp)
	movl	112(%esp), %eax
	movl	32(%ebp), %ecx
	call	__ZL14cliptestsectoriiii4vec2IiEi
	movl	%eax, 88(%esp)
	cmpl	$2147483647, _enginecompatibilitymode
	je	L1650
	testl	%eax, %eax
	je	L1631
	.p2align 4
	.p2align 3
L1641:
	movzwl	208(%esp), %eax
	leal	-32768(%eax), %ecx
L1666:
	movl	120(%esp), %ebx
	movswl	%cx, %ecx
	movl	212(%esp), %edx
	movl	%esi, %eax
	movl	%ecx, 204(%esp)
	testl	%ebx, %ebx
	movl	124(%esp), %ebx
	cmovns	24(%ebp), %ebx
	movl	%ecx, 4(%esp)
	movl	212(%esp), %ecx
	movl	$0, 8(%esp)
	subl	%ebx, %eax
	subl	%ebx, %edx
	addl	%ebx, %ecx
	movl	%ecx, (%esp)
	movl	%eax, %ecx
	call	__ZL11addcliplineiiiisi
	movl	204(%esp), %ecx
	movl	176(%esp), %eax
	movl	$0, 8(%esp)
	movl	200(%esp), %edx
	movl	%ecx, 4(%esp)
	movl	200(%esp), %ecx
	subl	%ebx, %eax
	subl	%ebx, %edx
	addl	%ebx, %ecx
	movl	%ecx, (%esp)
	movl	%eax, %ecx
	call	__ZL11addcliplineiiiisi
	movl	116(%esp), %eax
	movl	124(%esp), %ebx
	movl	212(%esp), %edx
	movl	204(%esp), %ecx
	testl	%eax, %eax
	cmovns	24(%ebp), %ebx
	movl	%esi, %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	subl	%ebx, %edx
	subl	%ebx, %eax
	movl	%edx, (%esp)
	movl	%eax, 184(%esp)
	movl	184(%esp), %ecx
	leal	(%esi,%ebx), %eax
	call	__ZL11addcliplineiiiisi
	movl	176(%esp), %eax
	movl	200(%esp), %edx
	movl	$0, 8(%esp)
	movl	%eax, %ecx
	subl	%ebx, %edx
	addl	%ebx, %eax
	subl	%ebx, %ecx
	movl	204(%esp), %ebx
	movl	%edx, (%esp)
	movl	%ebx, 4(%esp)
	call	__ZL11addcliplineiiiisi
	movl	160(%esp), %eax
	movl	124(%esp), %ebx
	movl	196(%esp), %edx
	testl	%eax, %eax
	movl	%ebx, %eax
	cmovle	24(%ebp), %eax
	testl	%edx, %edx
	cmovns	24(%ebp), %ebx
	movl	%ebx, 184(%esp)
	cmpl	$2147483647, _enginecompatibilitymode
	jne	L1672
	movl	8(%ebp), %ebx
	movl	8(%ebp), %edx
	movl	4(%ebx), %ebx
	movl	(%edx), %edx
	movl	%ebx, %ecx
	subl	212(%esp), %ecx
	subl	184(%esp), %ecx
	movl	%ebx, 144(%esp)
	imull	196(%esp), %ecx
	movl	%edx, 196(%esp)
	subl	%esi, %edx
	movl	%eax, %ebx
	subl	%eax, %edx
	imull	160(%esp), %edx
	sarl	%ebx
	cmpl	%edx, %ecx
	cmovl	%ebx, %eax
	movl	184(%esp), %ebx
	sarl	%ebx
	cmpl	%edx, %ecx
	movl	%ebx, %ecx
	cmovge	184(%esp), %ecx
	movl	%ecx, 184(%esp)
L1672:
	movl	176(%esp), %ecx
	movl	184(%esp), %ebx
	movl	$0, 8(%esp)
	movl	212(%esp), %edx
	addl	%eax, %ecx
	addl	%esi, %eax
	movl	204(%esp), %esi
	addl	%ebx, %edx
	movl	%esi, 4(%esp)
	movl	200(%esp), %esi
	addl	%ebx, %esi
	movl	%esi, (%esp)
	call	__ZL11addcliplineiiiisi
	jmp	L1616
L1748:
	movl	48(%esp), %eax
	movl	52(%esp), %edx
	shldl	$20, %esi, %edi
	sall	$20, %esi
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%edi, 4(%esp)
	call	_tabledivide64.lto_priv.8
	movl	%eax, %ecx
	movl	_enginecompatibilitymode, %eax
	movl	%ecx, %edx
	movl	%eax, 168(%esp)
	movl	212(%esp), %eax
/APP
 # 1772 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $20, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	184(%esp), %edi
	movl	%ecx, %edx
	addl	%edi, %eax
	movl	%eax, 72(%esp)
	movl	200(%esp), %eax
/APP
 # 1772 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $20, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	208(%esp), %eax
	movl	%eax, 68(%esp)
L1745:
	cmpl	$19950829, 168(%esp)
	jne	L1749
	movl	120(%esp), %eax
	leal	1(%eax), %ecx
	movl	_clipmoveboxtracenum, %eax
	movl	%eax, 204(%esp)
	cmpl	%ecx, %eax
	jl	L1753
	movl	16(%ebp), %edi
	movl	20(%ebp), %esi
	leal	272(%esp), %ebx
	movl	212(%esp), %edx
	movl	200(%esp), %eax
	movl	%ebx, 200(%esp)
	sarl	$6, %edi
	sarl	$6, %esi
	imull	%edi, %edx
	imull	%esi, %eax
	addl	%edx, %eax
	movl	%eax, 212(%esp)
	jmp	L1759
	.p2align 4,,10
	.p2align 3
L1891:
	addl	$1, %ecx
	cmpl	204(%esp), %ecx
	jg	L1753
L1759:
	movl	200(%esp), %eax
	movl	(%eax,%ecx,4), %edx
	sall	$4, %edx
	movl	__ZL6clipit+12(%edx), %ebx
	subl	__ZL6clipit+4(%edx), %ebx
	movl	__ZL6clipit+8(%edx), %eax
	subl	__ZL6clipit(%edx), %eax
	movl	%ebx, %edx
	imull	%edi, %eax
	imull	%esi, %edx
	addl	%edx, %eax
	xorl	212(%esp), %eax
	jns	L1891
L1600:
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
L1614:
	.cfi_restore_state
	movl	__ZL15clipmove_warned.lto_priv.0, %edx
	testl	%edx, %edx
	jne	L1675
L1680:
	movl	132(%esp), %edx
	testl	%edx, %edx
	jne	L1686
	cmpb	$0, 67(%esp)
	je	L1676
L1686:
	movl	228(%esp), %eax
	cmpl	__ZL11clipsectnum.lto_priv.0, %eax
	jl	L1613
L1900:
	movl	60(%esp), %ebx
	movl	56(%esp), %edi
	cmpl	%edi, __ZL13clipspritenum.lto_priv.0
	jg	L1915
L1719:
	movl	132(%esp), %eax
	testl	%eax, %eax
	je	L1720
	movzwl	__ZL11origmapinfo.lto_priv.0+2, %eax
	movzwl	__ZL11origmapinfo.lto_priv.0, %ebx
	movw	%ax, _numwalls
	movl	__ZL11origmapinfo.lto_priv.0+4, %eax
	movw	%bx, _numsectors
	movl	%eax, _sector
	movl	__ZL11origmapinfo.lto_priv.0+8, %eax
	movl	%eax, _wall
	movl	__ZL15origclipsectnum.lto_priv.0, %eax
	movl	%eax, __ZL11clipsectnum.lto_priv.0
	addl	%eax, %eax
	movl	%eax, 8(%esp)
	movl	$__ZL18origclipsectorlist.lto_priv.0, 4(%esp)
	movl	$_clipsectorlist, (%esp)
	call	_memcpy
	movswl	%bx, %eax
	movl	$__ZL17origclipsectormap.lto_priv.0, 4(%esp)
	addl	$7, %eax
	movl	$__ZL13clipsectormap.lto_priv.0, (%esp)
	sarl	$3, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
L1720:
	movl	_clipmoveboxtracenum, %eax
	movl	$0, 272(%esp)
	movl	$0, 276(%esp)
	movl	%eax, 120(%esp)
	movl	%eax, 104(%esp)
	movl	20(%ebp), %eax
	movl	$0, 280(%esp)
	movl	%eax, 112(%esp)
	movl	16(%ebp), %eax
	movl	$0, 284(%esp)
	movl	%eax, 116(%esp)
	movl	$0, 108(%esp)
L1768:
	movswl	__ZL7clipnum, %ebx
	leal	-1(%ebx), %eax
	movl	%eax, 196(%esp)
	cmpl	$2147483647, _enginecompatibilitymode
	je	L1721
L1724:
	movl	196(%esp), %eax
	testl	%eax, %eax
	js	L1916
L1722:
	movl	8(%ebp), %eax
L1901:
	movl	(%eax), %eax
	movl	%eax, 184(%esp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 208(%esp)
L1729:
	movl	68(%esp), %eax
	movl	$-1, 124(%esp)
	movl	%eax, 164(%esp)
	movl	72(%esp), %eax
	movl	%eax, 128(%esp)
	jmp	L1742
	.p2align 4,,10
	.p2align 3
L1738:
	subl	$1, 196(%esp)
	cmpl	$-1, 196(%esp)
	je	L1917
L1742:
	movl	196(%esp), %eax
	sall	$4, %eax
	movl	__ZL6clipit+12(%eax), %ebx
	movl	__ZL6clipit+4(%eax), %edi
	movl	__ZL6clipit+8(%eax), %ecx
	movl	__ZL6clipit(%eax), %esi
	movl	%ebx, %edx
	movl	%edi, 212(%esp)
	subl	%edi, %edx
	movl	%ecx, %eax
	movl	%ecx, 176(%esp)
	movl	%edx, %ecx
	movl	208(%esp), %edx
	subl	%esi, %eax
	movl	%eax, 204(%esp)
	subl	%edi, %edx
	movl	%ecx, 200(%esp)
	imull	%eax, %edx
	movl	184(%esp), %eax
	subl	%esi, %eax
	imull	%ecx, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %edi
	testl	%ecx, %ecx
	jle	L1738
	movl	204(%esp), %edx
	movl	164(%esp), %ecx
	movl	%esi, 192(%esp)
	subl	212(%esp), %ecx
	imull	%ecx, %edx
	movl	128(%esp), %ecx
	movl	%ecx, %eax
	subl	%esi, %eax
	imull	200(%esp), %eax
	cmpl	%eax, %edx
	jg	L1738
	movl	208(%esp), %eax
	movl	164(%esp), %esi
	movl	212(%esp), %edx
	subl	184(%esp), %ecx
	subl	%eax, %esi
	movl	%ecx, 168(%esp)
	subl	%eax, %edx
	movl	192(%esp), %eax
	subl	184(%esp), %eax
	imull	%ecx, %edx
	imull	%esi, %eax
	cmpl	%eax, %edx
	jg	L1738
	movl	176(%esp), %edx
	subl	184(%esp), %edx
	movl	%edx, %ecx
	subl	208(%esp), %ebx
	imull	%esi, %ecx
	imull	168(%esp), %ebx
	cmpl	%ecx, %ebx
	jle	L1738
	movl	200(%esp), %edx
	movl	168(%esp), %ecx
	movl	204(%esp), %eax
	imull	%ecx, %edx
	imull	%esi, %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	je	L1738
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
	jmp	L1739
	.p2align 4,,10
	.p2align 3
L1741:
	movl	144(%esp), %esi
	movl	148(%esp), %edi
	subl	%esi, 176(%esp)
	movl	136(%esp), %esi
	sbbl	%edi, 180(%esp)
	movl	140(%esp), %edi
	subl	%esi, 168(%esp)
	sbbl	%edi, 172(%esp)
	subl	$1, 132(%esp)
	je	L1740
L1739:
	movl	%ebx, %eax
	movl	180(%esp), %edx
	movl	%ebx, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	176(%esp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_tabledivide64.lto_priv.8
	movl	184(%esp), %edi
	movl	172(%esp), %edx
	movl	%ebx, 8(%esp)
	movl	%eax, 156(%esp)
	addl	%eax, %edi
	movl	%ebx, %eax
	movl	%edx, 4(%esp)
	sarl	$31, %eax
	movl	%edi, 160(%esp)
	movl	%eax, 12(%esp)
	movl	168(%esp), %eax
	movl	%eax, (%esp)
	call	_tabledivide64.lto_priv.8
	movl	208(%esp), %esi
	movl	%eax, 152(%esp)
	leal	(%esi,%eax), %ecx
	movl	%edi, %eax
	subl	192(%esp), %eax
	movl	%ecx, %edx
	imull	200(%esp), %eax
	subl	212(%esp), %edx
	imull	204(%esp), %edx
	cmpl	%eax, %edx
	jle	L1741
	movl	156(%esp), %ebx
	movl	%ecx, 212(%esp)
	negl	%ebx
	movl	%ebx, %eax
/APP
 # 952 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	152(%esp), %eax
	negl	%eax
/APP
 # 952 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	128(%esp), %edi
	leal	(%eax,%ebx), %edx
	movl	184(%esp), %eax
	subl	%edi, %eax
/APP
 # 952 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	%esi, %eax
	movl	164(%esp), %esi
	subl	%esi, %eax
/APP
 # 952 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%ecx, %eax
	cmpl	%eax, %edx
	movl	124(%esp), %eax
	cmovl	212(%esp), %esi
	cmovl	160(%esp), %edi
	cmovl	196(%esp), %eax
	movl	%esi, 164(%esp)
	movl	%edi, 128(%esp)
	movl	%eax, 124(%esp)
	jmp	L1738
	.p2align 4,,10
	.p2align 3
L1637:
	movl	112(%esp), %eax
	movl	%ecx, 204(%esp)
	call	_yax_getbunch.constprop.1
	movl	204(%esp), %ecx
	testw	%ax, %ax
	js	L1642
	movl	80(%esp), %eax
	movl	%eax, %edx
	sall	$5, %eax
	sall	$9, %edx
	andl	$2048, %eax
	andl	$512, %edx
	orl	%edx, %eax
	movl	84(%esp), %edx
	movzwl	12(%edx), %edx
	testl	%edx, %eax
	je	L1918
L1642:
	cmpl	$2147483647, _enginecompatibilitymode
	jne	L1641
L1657:
	movzwl	92(%esp), %ebx
	cmpw	%bx, 64(%esp)
	je	L1641
	movl	8(%ebp), %eax
	movl	112(%esp), %ecx
	movl	4(%eax), %edx
	movl	(%eax), %eax
	call	_inside
	movl	%eax, 88(%esp)
	cmpl	$1, %eax
	jne	L1641
L1894:
	movl	_wall, %eax
	movl	%eax, 204(%esp)
L1785:
	movl	76(%esp), %eax
	movl	%esi, 184(%esp)
	movzwl	64(%esp), %ecx
	movl	156(%esp), %esi
	movl	204(%esp), %ebx
	jmp	L1664
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1919:
	addl	$1, %eax
	cmpl	%eax, %esi
	je	L1665
L1664:
	movl	%eax, %edx
	sall	$5, %edx
	cmpw	12(%ebx,%edx), %cx
	jne	L1919
	movl	184(%esp), %esi
	cmpl	%eax, 156(%esp)
	je	L1665
L1661:
	movl	88(%esp), %ecx
	testl	%ecx, %ecx
	je	L1631
	jmp	L1641
	.p2align 4,,10
	.p2align 3
L1912:
	leal	264(%esp), %ecx
	movswl	12(%edi), %ebx
	movl	188(%esp), %edx
	movl	%ecx, (%esp)
	movlps	184(%esp), %xmm3
	movl	184(%esp), %eax
	movl	%ebx, %ecx
	movlps	%xmm3, 264(%esp)
	call	_getsectordist
	movl	_sector, %eax
	leal	(%ebx,%ebx,4), %edx
	leal	(%eax,%edx,8), %eax
	testb	$2, 14(%eax)
	je	L1920
	movl	268(%esp), %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	264(%esp), %edx
	movl	%edx, 4(%esp)
	call	_getflorzofslopeptr.part.0
L1627:
	movl	32(%ebp), %ebx
	movl	8(%ebp), %ecx
	subl	$1, %ebx
	movl	8(%ecx), %edx
	subl	%ebx, %eax
	movl	%edx, 144(%esp)
	cmpl	%edx, %eax
	jg	L1625
	movl	__ZL5sectq.lto_priv.0, %ecx
	movl	188(%esp), %edx
	movlps	184(%esp), %xmm6
	movl	184(%esp), %eax
	movswl	(%ecx), %ecx
	movlps	%xmm6, 256(%esp)
	movl	%ecx, 136(%esp)
	leal	256(%esp), %ecx
	movl	%ecx, (%esp)
	movl	136(%esp), %ecx
	call	_getsectordist
	movl	136(%esp), %ecx
	movl	_sector, %eax
	leal	(%ecx,%ecx,4), %edx
	leal	(%eax,%edx,8), %eax
	testb	$2, 14(%eax)
	je	L1921
	movl	260(%esp), %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	256(%esp), %edx
	movl	%edx, 4(%esp)
	call	_getflorzofslopeptr.part.0
L1629:
	addl	%eax, %ebx
	cmpl	%ebx, 144(%esp)
	jg	L1625
L1630:
	movl	132(%esp), %ebx
	subl	_sprite, %ebx
	sarl	$2, %ebx
	imull	$-1171354717, %ebx, %ebx
	leal	-16384(%ebx), %ecx
	jmp	L1666
	.p2align 4,,10
	.p2align 3
L1913:
	movl	__ZL5sectq.lto_priv.0, %ecx
	movl	188(%esp), %edx
	movlps	184(%esp), %xmm5
	movl	184(%esp), %eax
	movswl	(%ecx), %ebx
	leal	248(%esp), %ecx
	movl	%ecx, (%esp)
	movl	%ebx, %ecx
	movlps	%xmm5, 248(%esp)
	call	_getsectordist
	movl	_sector, %eax
	leal	(%ebx,%ebx,4), %edx
	leal	(%eax,%edx,8), %eax
	testb	$2, 12(%eax)
	je	L1922
	movl	252(%esp), %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	248(%esp), %edx
	movl	%edx, 4(%esp)
	call	_getceilzofslopeptr.part.0
L1633:
	movl	28(%ebp), %ebx
	movl	8(%ebp), %ecx
	movzwl	12(%edi), %edx
	movl	8(%ecx), %ecx
	subl	$1, %ebx
	subl	%ebx, %eax
	movw	%dx, 128(%esp)
	movl	%ecx, 204(%esp)
	cmpl	%ecx, %eax
	jg	L1634
	movswl	128(%esp), %ecx
	movlps	184(%esp), %xmm6
	movl	184(%esp), %eax
	movl	188(%esp), %edx
	movl	%ecx, 184(%esp)
	leal	240(%esp), %ecx
	movl	%ecx, (%esp)
	movl	184(%esp), %ecx
	movlps	%xmm6, 240(%esp)
	call	_getsectordist
	movl	184(%esp), %ecx
	movl	_sector, %eax
	leal	(%ecx,%ecx,4), %edx
	leal	(%eax,%edx,8), %eax
	testb	$2, 12(%eax)
	je	L1923
	movl	244(%esp), %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	240(%esp), %edx
	movl	%edx, 4(%esp)
	call	_getceilzofslopeptr.part.0
L1636:
	addl	%eax, %ebx
	cmpl	%ebx, 204(%esp)
	jle	L1630
	jmp	L1631
	.p2align 4,,10
	.p2align 3
L1675:
	testb	$1, %dl
	je	L1681
	movl	_sprite, %ecx
	movl	8(%ebp), %ebx
	xorl	%eax, %eax
	jmp	L1683
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1682:
	addl	$1, %eax
	addl	$44, %ecx
	cmpl	$16384, %eax
	je	L1924
L1683:
	cmpl	%ecx, %ebx
	jne	L1682
	movl	__ZN6loguru18g_stderr_verbosityE, %ecx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ebx
	cmpl	%ebx, %ecx
	cmovl	%ebx, %ecx
	cmpl	$-2, %ecx
	jge	L1925
L1681:
	andl	$2, %edx
	je	L1680
	movl	_sprite, %edx
	movl	8(%ebp), %ecx
	xorl	%eax, %eax
	jmp	L1685
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1684:
	addl	$1, %eax
	addl	$44, %edx
	cmpl	$16384, %eax
	je	L1926
L1685:
	cmpl	%edx, %ecx
	jne	L1684
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L1680
	movl	20(%ebp), %edi
	movl	%edi, 40(%esp)
	movl	16(%ebp), %edi
	movl	%edi, 36(%esp)
	movl	8(%ebp), %edi
	movswl	14(%edi), %edx
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	movl	8(%edi), %eax
	movl	%eax, 24(%esp)
	movl	4(%edi), %eax
	movl	%eax, 20(%esp)
	movl	(%edi), %eax
	movl	$LC120, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1468, 8(%esp)
	movl	$LC118, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1680
	.p2align 4,,10
	.p2align 3
L1674:
	orl	$1, __ZL15clipmove_warned.lto_priv.0
	jmp	L1616
	.p2align 4,,10
	.p2align 3
L1624:
	movl	8(%ebp), %eax
	movlps	(%eax), %xmm6
	movlps	%xmm6, 184(%esp)
	jmp	L1623
L1910:
	movl	%edx, __ZL15origclipsectnum.lto_priv.0
	addl	%edx, %edx
	movl	%edx, 8(%esp)
	movl	$_clipsectorlist, 4(%esp)
	movl	$__ZL18origclipsectorlist.lto_priv.0, (%esp)
	call	_memcpy
	movswl	_numsectors, %eax
	movl	$__ZL13clipsectormap.lto_priv.0, 4(%esp)
	movl	$__ZL17origclipsectormap.lto_priv.0, (%esp)
	movl	%eax, %esi
	addl	$7, %eax
	sarl	$3, %eax
	movzwl	%si, %esi
	movl	%eax, 8(%esp)
	call	_memcpy
	movzwl	_numwalls, %eax
	movss	_sector, %xmm0
	movss	_wall, %xmm7
	sall	$16, %eax
	orl	%eax, %esi
	movzwl	__ZL11clipmapinfo.lto_priv.0, %eax
	unpcklps	%xmm7, %xmm0
	movl	%esi, __ZL11origmapinfo.lto_priv.0
	movw	%ax, _numsectors
	movzwl	__ZL11clipmapinfo.lto_priv.0+2, %eax
	movlps	%xmm0, __ZL11origmapinfo.lto_priv.0+4
	movw	%ax, _numwalls
	movl	__ZL11clipmapinfo.lto_priv.0+4, %eax
	movl	%eax, _sector
	movl	__ZL11clipmapinfo.lto_priv.0+8, %eax
	movl	%eax, _wall
	jmp	L1610
	.p2align 4,,10
	.p2align 3
L1652:
	cmpl	$2147483647, _enginecompatibilitymode
	jne	L1656
	movzwl	92(%esp), %ebx
	cmpw	%bx, 64(%esp)
	je	L1656
	movl	112(%esp), %ecx
	movl	144(%esp), %edx
	movl	136(%esp), %eax
	call	_inside
	cmpl	$1, %eax
	jne	L1656
	jmp	L1785
	.p2align 4,,10
	.p2align 3
L1676:
	movl	96(%esp), %eax
	movl	112(%esp), %edx
	movl	%eax, 44(%esp)
	movl	120(%esp), %eax
	movl	%eax, 36(%esp)
	movl	116(%esp), %eax
	movl	%eax, 40(%esp)
	movl	104(%esp), %eax
	movl	%eax, 28(%esp)
	movl	100(%esp), %eax
	movl	%eax, 32(%esp)
	movl	168(%esp), %eax
	movl	%eax, 20(%esp)
	movl	152(%esp), %eax
	movl	%eax, 24(%esp)
	movl	192(%esp), %eax
	movl	%eax, 12(%esp)
	movl	164(%esp), %eax
	movl	%eax, 16(%esp)
	movl	108(%esp), %eax
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
	jg	L1687
	movl	228(%esp), %eax
	cmpl	__ZL11clipsectnum.lto_priv.0, %eax
	jge	L1899
L1677:
	movl	$0, 132(%esp)
	jmp	L1613
L1920:
	movl	8(%eax), %eax
	jmp	L1627
L1922:
	movl	4(%eax), %eax
	jmp	L1633
L1918:
	movswl	208(%esp), %eax
	xorl	%edx, %edx
	movl	%ecx, 204(%esp)
	call	_yax_getnextwall
	movl	_enginecompatibilitymode, %edx
	movl	204(%esp), %ecx
	testw	%ax, %ax
	movl	%edx, 184(%esp)
	js	L1927
	cwtl
	sall	$5, %eax
	movl	%eax, 144(%esp)
	addl	_wall, %eax
	movzwl	12(%eax), %edx
	movw	%dx, 204(%esp)
	testw	%dx, %dx
	js	L1645
	movzwl	14(%eax), %eax
	testl	%eax, 80(%esp)
	jne	L1645
	cmpl	$19950829, 184(%esp)
	je	L1648
	movl	8(%ebp), %eax
	movl	%ebx, 236(%esp)
	movl	200(%esp), %ebx
	movl	%ecx, 232(%esp)
	leal	272(%esp), %ecx
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%ecx, 36(%esp)
	leal	236(%esp), %ecx
	movl	%ebx, 24(%esp)
	movl	176(%esp), %ebx
	movl	%eax, 204(%esp)
	leal	232(%esp), %eax
	movl	%ebx, 20(%esp)
	movl	212(%esp), %ebx
	movl	%ecx, 32(%esp)
	xorl	%ecx, %ecx
	movl	%ebx, 16(%esp)
	movl	116(%esp), %ebx
	movl	%eax, 28(%esp)
	movl	204(%esp), %eax
	movl	%ebx, 4(%esp)
	movl	120(%esp), %ebx
	movl	%esi, 12(%esp)
	movl	%ebx, (%esp)
	movl	$0, 8(%esp)
	call	_rintersect
	movl	_wall, %edx
	movl	144(%esp), %ebx
	movzwl	12(%edx,%ebx), %ebx
	movw	%bx, 204(%esp)
	cmpl	$-1, %eax
	je	L1648
	movl	232(%esp), %ecx
	movl	236(%esp), %ebx
	jmp	L1649
L1645:
	cmpl	$2147483647, 184(%esp)
	jne	L1641
	jmp	L1657
	.p2align 4,,10
	.p2align 3
L1917:
	movl	124(%esp), %eax
	testl	%eax, %eax
	jns	L1798
	movl	_enginecompatibilitymode, %eax
	movl	116(%esp), %esi
	orl	112(%esp), %esi
L1735:
	cmpl	$2147483647, %eax
	je	L1725
L1765:
	movl	8(%ebp), %eax
	movl	128(%esp), %edi
	subl	$1, 120(%esp)
	movl	%edi, (%eax)
	movl	164(%esp), %edi
	movl	%edi, 4(%eax)
L1766:
	testl	%esi, %esi
	je	L1767
	movl	124(%esp), %esi
	testl	%esi, %esi
	js	L1767
	movl	120(%esp), %ebx
	testl	%ebx, %ebx
	jle	L1767
	movl	104(%esp), %ecx
	testl	%ecx, %ecx
	jg	L1768
L1767:
	cmpl	$2147483647, _enginecompatibilitymode
	je	L1600
	movl	__ZL11clipsectnum.lto_priv.0, %eax
	testl	%eax, %eax
	jle	L1770
	movl	8(%ebp), %esi
	movl	8(%ebp), %edi
	movl	$_clipsectorlist, %ebx
	leal	_clipsectorlist(%eax,%eax), %eax
	movl	%eax, 208(%esp)
	movl	(%esi), %esi
	movl	4(%edi), %edi
	movl	%esi, 212(%esp)
	jmp	L1772
L1771:
	addl	$2, %ebx
	cmpl	%ebx, 208(%esp)
	je	L1770
L1772:
	movswl	(%ebx), %ecx
	movl	212(%esp), %eax
	movl	%edi, %edx
	movl	%ecx, %esi
	call	_inside
	cmpl	$1, %eax
	jne	L1771
	movl	12(%ebp), %eax
	movw	%si, (%eax)
	jmp	L1600
L1798:
	movl	164(%esp), %eax
	movl	%eax, 208(%esp)
	movl	128(%esp), %eax
	movl	%eax, 184(%esp)
	movl	124(%esp), %eax
	movl	%eax, 196(%esp)
L1740:
	movl	196(%esp), %eax
	sall	$4, %eax
	movl	__ZL6clipit+8(%eax), %edi
	subl	__ZL6clipit(%eax), %edi
	movl	__ZL6clipit+12(%eax), %esi
	subl	__ZL6clipit+4(%eax), %esi
	movl	%edi, %eax
	movl	%edi, 212(%esp)
	imull	%edi
	movl	_enginecompatibilitymode, %edi
	movl	%esi, 200(%esp)
	movl	%edi, 168(%esp)
	movl	%eax, %ecx
	movl	%esi, %eax
	movl	%edx, %ebx
	imull	%esi
	addl	%ecx, %eax
	adcl	%ebx, %edx
	cmpl	$2147483647, %edi
	je	L1743
	movl	%eax, 48(%esp)
	movl	%eax, %ecx
	sarl	$31, %eax
	movl	%eax, 52(%esp)
	cmpl	$-2147483648, %ecx
	je	L1745
	testl	%ecx, %ecx
	jle	L1745
	movl	68(%esp), %ebx
	movl	72(%esp), %eax
	subl	208(%esp), %ebx
	subl	184(%esp), %eax
	imull	200(%esp), %ebx
	imull	212(%esp)
	addl	%ebx, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	sarl	$31, %edi
	cmpl	$19950829, 168(%esp)
	je	L1748
L1786:
/APP
 # 1769 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	sarl	$11, %eax
	cmpl	%ecx, %eax
	jl	L1748
	movl	212(%esp), %eax
	xorl	%edx, %edx
/APP
 # 1772 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $20, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	184(%esp), %edi
	xorl	%edx, %edx
	addl	%edi, %eax
	movl	%eax, 72(%esp)
	movl	200(%esp), %eax
/APP
 # 1772 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $20, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	208(%esp), %edi
	addl	%edi, %eax
	movl	%eax, 68(%esp)
L1749:
	movl	212(%esp), %eax
	movl	16(%ebp), %edx
	movl	200(%esp), %esi
	movl	20(%ebp), %edi
/APP
 # 1779 "source/build/src/clip.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 200(%esp)
	movl	120(%esp), %eax
	leal	272(%esp), %ebx
	leal	1(%eax), %ecx
	movl	_clipmoveboxtracenum, %eax
	movl	%eax, 204(%esp)
	cmpl	%ecx, %eax
	jl	L1753
	movl	%ebx, 192(%esp)
	jmp	L1752
	.p2align 4,,10
	.p2align 3
L1928:
	addl	$1, %ecx
	cmpl	%ecx, 204(%esp)
	jl	L1753
L1752:
	movl	192(%esp), %eax
	movl	(%eax,%ecx,4), %eax
	movl	%eax, %edx
	movl	%eax, 212(%esp)
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
	jns	L1928
	cmpl	$2147483647, 168(%esp)
	je	L1929
	cmpl	$19961112, 168(%esp)
	jne	L1600
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_updatesector
	jmp	L1600
	.p2align 4,,10
	.p2align 3
L1721:
	movl	116(%esp), %esi
	orl	112(%esp), %esi
	je	L1724
	movl	196(%esp), %eax
	testl	%eax, %eax
	js	L1795
	movl	%eax, %esi
	movl	24(%ebp), %eax
	sall	$4, %ebx
	addl	$__ZL6clipit-16, %ebx
	subl	$1, %eax
	movl	%eax, 204(%esp)
	jmp	L1728
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1726:
	subl	$1, %esi
	subl	$16, %ebx
	cmpl	$-1, %esi
	je	L1722
L1728:
	movl	%esi, %eax
	movl	%esi, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.6(%eax), %eax
	movzbl	__ZL10clipignore(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%cl, %al
	je	L1726
	movl	4(%ebx), %ecx
	movl	(%ebx), %edx
	movl	8(%ebx), %eax
	movl	12(%ebx), %edi
	movl	%ecx, 212(%esp)
	movl	8(%ebp), %ecx
	movl	%eax, 200(%esp)
	movl	4(%ecx), %ecx
	movl	%edx, 192(%esp)
	movl	%ecx, 208(%esp)
	movl	8(%ebp), %ecx
	movl	(%ecx), %ecx
	movl	%eax, 4(%esp)
	movl	%edi, 8(%esp)
	movl	%ecx, 184(%esp)
	movl	204(%esp), %ecx
	movl	184(%esp), %eax
	movl	%ecx, 12(%esp)
	movl	212(%esp), %ecx
	movl	%ecx, (%esp)
	movl	%edx, %ecx
	movl	208(%esp), %edx
	call	_clipinsideboxline
	testl	%eax, %eax
	je	L1726
	movl	212(%esp), %edx
	movl	%edi, %esi
	movl	200(%esp), %eax
	movl	192(%esp), %ecx
	subl	%edx, %esi
	movl	%esi, 200(%esp)
	movl	%edx, %esi
	subl	%ecx, %eax
	subl	%edi, %esi
	movl	%eax, 204(%esp)
	movl	%esi, %ebx
/APP
 # 969 "source/build/src/clip.cpp" 1
	addl %ebx, %ebx; sbbl %eax, %eax; cmpl %ebx, %eax; adcb $0, %al
 # 0 "" 2
/NO_APP
	movl	%eax, 176(%esp)
	movl	204(%esp), %ebx
/APP
 # 969 "source/build/src/clip.cpp" 1
	addl %ebx, %ebx; sbbl %eax, %eax; cmpl %ebx, %eax; adcb $0, %al
 # 0 "" 2
/NO_APP
	movl	%eax, 168(%esp)
	movl	%ebx, %eax
/APP
 # 970 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	200(%esp), %eax
/APP
 # 970 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	208(%esp), %eax
	movl	184(%esp), %edi
	subl	%edx, %eax
	movl	204(%esp), %edx
	subl	%ecx, %edi
	imull	%eax, %edx
	movl	200(%esp), %eax
	imull	%edi, %eax
	cmpl	%eax, %edx
	jg	L1796
	cmpl	%ebx, %esi
	movl	208(%esp), %edi
	movl	184(%esp), %ebx
	setle	%al
	movl	%eax, %edx
	jmp	L1733
L1931:
	movl	8(%ebp), %eax
	addl	176(%esp), %ebx
	movl	%ebx, (%eax)
	movl	4(%eax), %edi
L1732:
	movl	%edi, %esi
	movl	%ebx, %eax
	subl	212(%esp), %esi
	xorl	$1, %edx
	subl	192(%esp), %eax
	imull	204(%esp), %esi
	imull	200(%esp), %eax
	cmpl	%eax, %esi
	jg	L1930
L1733:
	testb	%dl, %dl
	je	L1931
	movl	8(%ebp), %eax
	addl	168(%esp), %edi
	movl	%edi, 4(%eax)
	movl	(%eax), %ebx
	jmp	L1732
L1687:
	movl	112(%esp), %edi
	movl	%edi, %eax
	call	_yax_getbunch.constprop.1
	movl	%eax, %ebx
	movl	%edi, %eax
	call	_yax_getbunch.constprop.0
	movl	92(%esp), %ecx
	movl	%eax, %edx
	movl	%edi, %eax
	sarl	$3, %eax
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.6(%ecx), %ecx
	orb	%cl, __ZL15yax_clipsectmap(%eax)
	testw	%dx, %bx
	js	L1908
	movzwl	92(%esp), %eax
	movl	8(%ebp), %esi
	xorl	%edi, %edi
	movl	$1, 208(%esp)
	movw	%ax, 272(%esp)
	leal	272(%esp), %eax
	movl	%eax, 204(%esp)
	.p2align 4
	.p2align 3
L1690:
	movl	204(%esp), %eax
	movswl	(%eax,%edi,2), %eax
	cmpw	$0, _editstatus
	je	L1932
	xorl	%edx, %edx
	call	_yax_getbunch.part.0
L1707:
	cmpw	$-1, %ax
	je	L1709
	cwtl
	movswl	_headsectbunch+512(%eax,%eax), %ebx
	cmpl	$-1, %ebx
	je	L1709
	movl	%edi, 200(%esp)
	jmp	L1717
	.p2align 4,,10
	.p2align 3
L1712:
	movl	4(%esi), %ecx
	movl	%edx, 212(%esp)
	movl	%ecx, 8(%esp)
	movl	(%esi), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	_getflorzofslopeptr.part.0
	movl	212(%esp), %edx
	movl	%eax, %ecx
L1713:
	cmpl	$255, 208(%esp)
	setle	%al
	cmpl	$8191, %edx
	setle	%dl
	testb	%dl, %al
	je	L1716
	subl	%ecx, %edi
	movl	%edi, %ecx
	negl	%ecx
	movl	%ecx, %eax
	cmovs	%edi, %eax
	cmpl	$32767, %eax
	jg	L1716
	movl	208(%esp), %eax
	movw	%bx, 272(%esp,%eax,2)
	addl	$1, %eax
	movl	%eax, 208(%esp)
	.p2align 5
	.p2align 4
	.p2align 3
L1716:
	movswl	_nextsectbunch+8192(%ebx,%ebx), %ebx
	cmpl	$-1, %ebx
	je	L1933
L1717:
	movswl	_numsectors, %eax
	cmpl	%eax, %ebx
	jnb	L1716
	movl	%ebx, %edx
	movl	%ebx, %ecx
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL15yax_clipsectmap(%edx), %eax
	movzbl	__ZL8pow2char.lto_priv.6(%ecx), %ecx
	movb	%al, 212(%esp)
	notl	%eax
	testb	%cl, %al
	je	L1716
	movzbl	212(%esp), %eax
	orl	%ecx, %eax
	movb	%al, __ZL15yax_clipsectmap(%edx)
	movl	96(%esp), %eax
	movl	%ebx, %edx
	movl	%eax, 44(%esp)
	movl	120(%esp), %eax
	movl	%eax, 36(%esp)
	movl	116(%esp), %eax
	movl	%eax, 40(%esp)
	movl	104(%esp), %eax
	movl	%eax, 28(%esp)
	movl	100(%esp), %eax
	movl	%eax, 32(%esp)
	movl	168(%esp), %eax
	movl	%eax, 20(%esp)
	movl	152(%esp), %eax
	movl	%eax, 24(%esp)
	movl	192(%esp), %eax
	movl	%eax, 12(%esp)
	movl	164(%esp), %eax
	movl	%eax, 16(%esp)
	movl	108(%esp), %eax
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
	jne	L1712
	movl	8(%eax), %ecx
	jmp	L1713
	.p2align 4,,10
	.p2align 3
L1933:
	movl	200(%esp), %edi
L1709:
	addl	$1, %edi
	cmpl	208(%esp), %edi
	jl	L1690
	movzwl	92(%esp), %eax
	movl	8(%ebp), %esi
	xorl	%edi, %edi
	movl	$1, 208(%esp)
	movw	%ax, 272(%esp)
	.p2align 4
	.p2align 3
L1704:
	movl	204(%esp), %eax
	movswl	(%eax,%edi,2), %eax
	cmpw	$0, _editstatus
	je	L1691
	movl	$1, %edx
	call	_yax_getbunch.part.0
L1692:
	cmpw	$-1, %ax
	je	L1696
	cwtl
	movswl	_headsectbunch(%eax,%eax), %ebx
	cmpl	$-1, %ebx
	je	L1696
	movl	%edi, 200(%esp)
	jmp	L1695
	.p2align 4,,10
	.p2align 3
L1888:
	movl	4(%esi), %edx
	movl	%edx, 8(%esp)
	movl	(%esi), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_getceilzofslopeptr.part.0
L1703:
	subl	8(%esi), %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	cmpl	$32767, %eax
	jg	L1700
	cmpl	$8191, %edi
	setle	%dl
	cmpl	$255, 208(%esp)
	setle	%al
	testb	%al, %dl
	je	L1700
	movl	208(%esp), %eax
	movw	%bx, 272(%esp,%eax,2)
	addl	$1, %eax
	movl	%eax, 208(%esp)
	.p2align 5
	.p2align 4
	.p2align 3
L1700:
	movswl	_nextsectbunch(%ebx,%ebx), %ebx
	cmpl	$-1, %ebx
	je	L1934
L1695:
	movswl	_numsectors, %eax
	cmpl	%eax, %ebx
	jnb	L1700
	movl	%ebx, %edx
	movl	%ebx, %eax
	sarl	$3, %edx
	andl	$7, %eax
	movzbl	__ZL15yax_clipsectmap(%edx), %ecx
	movzbl	__ZL8pow2char.lto_priv.6(%eax), %eax
	movl	%edx, 212(%esp)
	movl	%ecx, %edi
	notl	%edi
	movl	%edi, %edx
	testb	%al, %dl
	je	L1700
	movl	212(%esp), %edi
	orl	%ecx, %eax
	movl	%ebx, %edx
	movb	%al, __ZL15yax_clipsectmap(%edi)
	movl	96(%esp), %eax
	movl	%eax, 44(%esp)
	movl	120(%esp), %eax
	movl	%eax, 36(%esp)
	movl	116(%esp), %eax
	movl	%eax, 40(%esp)
	movl	104(%esp), %eax
	movl	%eax, 28(%esp)
	movl	100(%esp), %eax
	movl	%eax, 32(%esp)
	movl	168(%esp), %eax
	movl	%eax, 20(%esp)
	movl	152(%esp), %eax
	movl	%eax, 24(%esp)
	movl	192(%esp), %eax
	movl	%eax, 12(%esp)
	movl	164(%esp), %eax
	movl	%eax, 16(%esp)
	movl	108(%esp), %eax
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
	jne	L1888
	movl	4(%eax), %eax
	jmp	L1703
	.p2align 4,,10
	.p2align 3
L1934:
	movl	200(%esp), %edi
L1696:
	addl	$1, %edi
	cmpl	208(%esp), %edi
	jl	L1704
L1908:
	movl	228(%esp), %eax
	cmpl	%eax, __ZL11clipsectnum.lto_priv.0
	jg	L1677
L1899:
	movl	$0, 132(%esp)
	movl	60(%esp), %ebx
	movl	56(%esp), %edi
	jmp	L1612
	.p2align 4,,10
	.p2align 3
L1691:
	movzwl	_yax_bunchnum+2(,%eax,4), %eax
	jmp	L1692
L1932:
	movzwl	_yax_bunchnum(,%eax,4), %eax
	jmp	L1707
L1892:
	movl	%ebx, 60(%esp)
	movl	%edi, 56(%esp)
	jmp	L1613
L1753:
	movl	196(%esp), %eax
	sall	$4, %eax
	movl	__ZL6clipit+4(%eax), %edx
	movl	__ZL6clipit(%eax), %ecx
	movl	__ZL6clipit+8(%eax), %edi
	movl	__ZL6clipit+12(%eax), %eax
	movl	%edx, %ebx
	movl	%eax, %esi
	subl	%ecx, %edi
	subl	%eax, %ebx
	subl	%edx, %esi
/APP
 # 969 "source/build/src/clip.cpp" 1
	addl %ebx, %ebx; sbbl %eax, %eax; cmpl %ebx, %eax; adcb $0, %al
 # 0 "" 2
/NO_APP
	movl	%eax, 164(%esp)
	movl	%edi, %ebx
/APP
 # 969 "source/build/src/clip.cpp" 1
	addl %ebx, %ebx; sbbl %eax, %eax; cmpl %ebx, %eax; adcb $0, %al
 # 0 "" 2
/NO_APP
	movl	%eax, 160(%esp)
	movl	%edi, %eax
/APP
 # 970 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 200(%esp)
	movl	%esi, %eax
	movl	%esi, 212(%esp)
/APP
 # 970 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	68(%esp), %eax
	movl	72(%esp), %ebx
	subl	%edx, %eax
	subl	%ecx, %ebx
	imull	%edi, %eax
	imull	212(%esp), %ebx
	cmpl	%eax, %ebx
	jl	L1760
	cmpl	%esi, 200(%esp)
	movl	72(%esp), %ebx
	movl	%ecx, 200(%esp)
	setle	%al
	movl	%edi, 192(%esp)
	movl	68(%esp), %esi
	movl	%edx, 176(%esp)
	movl	%eax, %ecx
	jmp	L1763
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1936:
	addl	164(%esp), %ebx
L1762:
	movl	%ebx, %edx
	movl	%esi, %eax
	subl	200(%esp), %edx
	xorl	$1, %ecx
	subl	176(%esp), %eax
	imull	212(%esp), %edx
	imull	192(%esp), %eax
	cmpl	%eax, %edx
	jl	L1935
L1763:
	testb	%cl, %cl
	je	L1936
	addl	160(%esp), %esi
	jmp	L1762
L1935:
	movl	%ebx, 72(%esp)
	movl	%esi, 68(%esp)
L1760:
	movl	72(%esp), %eax
	subl	184(%esp), %eax
	sall	$14, %eax
	movl	204(%esp), %edi
	movl	%eax, 116(%esp)
	movl	68(%esp), %eax
	subl	208(%esp), %eax
	sall	$14, %eax
	movl	%eax, 112(%esp)
	cmpl	%edi, 120(%esp)
	jne	L1764
	movl	196(%esp), %eax
	movzwl	__ZL13clipobjectval(%eax,%eax), %eax
	movl	%eax, 108(%esp)
L1764:
	movl	120(%esp), %eax
	movl	196(%esp), %edi
	movl	208(%esp), %ebx
	movl	116(%esp), %esi
	movl	%edi, 272(%esp,%eax,4)
	movl	168(%esp), %eax
	movl	%ebx, 164(%esp)
	movl	184(%esp), %ebx
	movl	%edi, 124(%esp)
	orl	112(%esp), %esi
	movl	%ebx, 128(%esp)
	cmpl	$2147483647, %eax
	jne	L1765
L1725:
	movl	96(%esp), %eax
	movl	164(%esp), %edx
	movl	%eax, (%esp)
	movl	128(%esp), %eax
	movl	12(%ebp), %ecx
	call	__ZL16clipupdatesector4vec2IiEPsi
	testl	%eax, %eax
	je	L1765
	subl	$1, 104(%esp)
	jmp	L1766
L1648:
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	4(%eax), %ebx
L1649:
	movl	8(%ebp), %eax
	movl	%ecx, 232(%esp)
	movswl	204(%esp), %edx
	movl	%ebx, 236(%esp)
	movl	8(%eax), %eax
	movl	%ecx, 4(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 12(%esp)
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	movl	112(%esp), %eax
	movl	32(%ebp), %ecx
	call	__ZL14cliptestsectoriiii4vec2IiEi
	movl	%eax, 88(%esp)
	cmpl	$2147483647, _enginecompatibilitymode
	jne	L1661
L1650:
	movzwl	92(%esp), %ebx
	cmpw	%bx, 64(%esp)
	je	L1661
	movl	8(%ebp), %eax
	movl	112(%esp), %ecx
	movl	4(%eax), %edx
	movl	(%eax), %eax
	call	_inside
	cmpl	$1, %eax
	jne	L1661
	jmp	L1894
L1921:
	movl	8(%eax), %eax
	jmp	L1629
L1927:
	cmpl	$2147483647, %edx
	jne	L1641
	jmp	L1657
L1923:
	movl	4(%eax), %eax
	jmp	L1636
L1743:
	cmpl	$-2147483647, %eax
	movl	%edx, %edi
	sbbl	$-1, %edi
	jl	L1749
	xorl	%ecx, %ecx
	movl	$2147483647, %ebx
	cmpl	%eax, %ebx
	movl	%ecx, %edi
	sbbl	%edx, %edi
	cmovge	%eax, %ebx
	cmovge	%edx, %ecx
	movl	%ebx, 48(%esp)
	movl	%ecx, 52(%esp)
	movl	%ebx, %ecx
	testl	%ebx, %ebx
	jle	L1749
	movl	68(%esp), %eax
	subl	208(%esp), %eax
	imull	200(%esp)
	movl	%eax, %esi
	movl	%edx, %edi
	movl	72(%esp), %eax
	subl	184(%esp), %eax
	imull	212(%esp)
	addl	%eax, %esi
	adcl	%edx, %edi
	xorl	%eax, %eax
	movl	$2147483647, %edx
	cmpl	%esi, %edx
	movl	%eax, %ebx
	sbbl	%edi, %ebx
	cmovl	%eax, %edi
	cmovl	%edx, %esi
	movl	$-2147483648, %edx
	movl	$-1, %eax
	cmpl	%edx, %esi
	movl	%edi, %ebx
	sbbl	%eax, %ebx
	cmovl	%edx, %esi
	cmovl	%eax, %edi
	movl	%esi, %eax
	jmp	L1786
L1925:
	movl	20(%ebp), %edi
	movl	%edi, 40(%esp)
	movl	16(%ebp), %edi
	movl	%edi, 36(%esp)
	movl	8(%ebp), %edi
	movswl	14(%edi), %edx
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	movl	8(%edi), %eax
	movl	%eax, 24(%esp)
	movl	4(%edi), %eax
	movl	%eax, 20(%esp)
	movl	(%edi), %eax
	movl	$LC117, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1451, 8(%esp)
	movl	$LC118, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZL15clipmove_warned.lto_priv.0, %edx
	jmp	L1681
L1929:
	movl	8(%ebp), %eax
	movl	96(%esp), %edi
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%edi, (%esp)
	movl	12(%ebp), %ecx
	call	__ZL16clipupdatesector4vec2IiEPsi
	jmp	L1600
L1654:
	movl	8(%ebp), %eax
	movlps	(%eax), %xmm5
	movlps	%xmm5, 184(%esp)
	jmp	L1653
L1926:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1680
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
	movl	$LC121, 12(%esp)
	movl	$1474, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC118, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1680
L1924:
	movl	__ZN6loguru18g_stderr_verbosityE, %ecx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	cmpl	$-2, %ecx
	jl	L1681
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
	movl	$LC119, 12(%esp)
	movl	$1457, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC118, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZL15clipmove_warned.lto_priv.0, %edx
	jmp	L1681
L1909:
/APP
 # 12528 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	xorl	%ecx, %ecx
	cmpl	$2047, %eax
	jbe	L1604
L1605:
	shrl	$2, %eax
	addl	$1, %ecx
	cmpl	$2047, %eax
	ja	L1605
L1604:
	movzwl	_sqrtable_old(%eax,%eax), %eax
	sall	%cl, %eax
	shrl	$10, %eax
	jmp	L1606
L1916:
	movl	68(%esp), %edi
	movl	116(%esp), %esi
	movl	$-1, 124(%esp)
	movl	_enginecompatibilitymode, %eax
	orl	112(%esp), %esi
	movl	%edi, 164(%esp)
	movl	72(%esp), %edi
	movl	%edi, 128(%esp)
	jmp	L1735
L1930:
	movl	%edi, %edx
L1730:
	movl	12(%ebp), %eax
	movswl	(%eax), %ecx
	movl	%ebx, %eax
	call	_inside
	cmpl	$1, %eax
	movl	8(%ebp), %eax
	je	L1901
	movl	184(%esp), %edi
	movl	%edi, (%eax)
	movl	208(%esp), %edi
	movl	%edi, 4(%eax)
	jmp	L1729
L1770:
	movl	12(%ebp), %eax
	movl	$-1, %edx
	movw	%dx, (%eax)
	movswl	_numsectors, %ebx
	testw	%bx, %bx
	jle	L1600
	movl	$2147483647, 204(%esp)
	movl	8(%ebp), %esi
	jmp	L1783
	.p2align 4,,10
	.p2align 3
L1937:
	subl	$1, %ebx
L1774:
	testl	%ebx, %ebx
	je	L1600
L1783:
	movl	4(%esi), %edx
	movl	(%esi), %eax
	leal	-1(%ebx), %edi
	movswl	%di, %ecx
	movl	%edx, 212(%esp)
	movl	%eax, 208(%esp)
	call	_inside
	cmpl	$1, %eax
	jne	L1937
	subl	$1, %ebx
	leal	(%ebx,%ebx,4), %eax
	leal	0(,%eax,8), %edx
	movl	_sector, %eax
	addl	%edx, %eax
	cmpl	$19950829, _enginecompatibilitymode
	je	L1775
	testb	$2, 12(%eax)
	jne	L1938
L1775:
	movl	4(%eax), %eax
	subl	8(%esi), %eax
L1776:
	testl	%eax, %eax
	jle	L1777
	cmpl	%eax, 204(%esp)
	jle	L1774
	movl	12(%ebp), %edx
	movl	%eax, 204(%esp)
	movw	%di, (%edx)
	jmp	L1774
L1777:
	movl	_sector, %eax
	addl	%edx, %eax
	movl	8(%esi), %edx
	cmpl	$19950829, _enginecompatibilitymode
	je	L1779
	testb	$2, 14(%eax)
	jne	L1780
L1779:
	subl	8(%eax), %edx
L1781:
	testl	%edx, %edx
	jle	L1939
	cmpl	%edx, 204(%esp)
	jle	L1774
	movl	12(%ebp), %eax
	movl	%edx, 204(%esp)
	movw	%di, (%eax)
	jmp	L1774
L1938:
	movl	%edx, 200(%esp)
	movl	212(%esp), %ecx
	movl	208(%esp), %edx
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	call	_getceilzofslopeptr.part.0
	movl	200(%esp), %edx
	subl	8(%esi), %eax
	jmp	L1776
L1780:
	movl	4(%esi), %ecx
	movl	%edx, 212(%esp)
	movl	%ecx, 8(%esp)
	movl	(%esi), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	_getflorzofslopeptr.part.0
	movl	212(%esp), %edx
	subl	%eax, %edx
	jmp	L1781
L1665:
	movl	__ZL15clipmove_warned.lto_priv.0, %edx
	testl	%edx, %edx
	jne	L1675
	movl	108(%esp), %ecx
	testl	%ecx, %ecx
	jne	L1676
	movl	228(%esp), %eax
	cmpl	%eax, __ZL11clipsectnum.lto_priv.0
	jg	L1677
	jmp	L1900
	.p2align 4,,10
	.p2align 3
L1795:
	movl	68(%esp), %eax
	movl	$-1, 124(%esp)
	movl	%eax, 164(%esp)
	movl	72(%esp), %eax
	movl	%eax, 128(%esp)
	jmp	L1725
L1796:
	movl	184(%esp), %ebx
	movl	208(%esp), %edx
	jmp	L1730
L1939:
	movl	12(%ebp), %eax
	movw	%di, (%eax)
	jmp	L1600
	.cfi_endproc
LFE255:
	.p2align 4
	.globl	_pushmove.constprop.0
	.def	_pushmove.constprop.0;	.scl	2;	.type	32;	.endef
_pushmove.constprop.0:
LFB266:
	.cfi_startproc
	subl	$96, %esp
	.cfi_def_cfa_offset 100
	movl	104(%esp), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	js	L1941
	movl	%ebx, 80(%esp)
	movl	%esi, 84(%esp)
	movl	%edi, 88(%esp)
	movl	%ebp, 92(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	$1, 56(%esp)
	movl	$32, 64(%esp)
L1963:
	cmpl	$2147483647, _enginecompatibilitymode
	je	L1942
	testw	%ax, %ax
	js	L1964
L1942:
	movw	%ax, _clipsectorlist
	movswl	_numsectors, %eax
	movl	$0, 4(%esp)
	addl	$7, %eax
	movl	$__ZL13clipsectormap.lto_priv.0, (%esp)
	movl	$1, __ZL11clipsectnum.lto_priv.0
	sarl	$3, %eax
	movl	%eax, 8(%esp)
	call	_memset
	movl	104(%esp), %eax
	movl	$0, 68(%esp)
	movl	$0, 40(%esp)
	movswl	(%eax), %eax
	movl	%eax, %edx
	sarl	$3, %eax
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.6(%edx), %edx
	orb	%dl, __ZL13clipsectormap.lto_priv.0(%eax)
	movl	56(%esp), %eax
	sall	$5, %eax
	movl	%eax, 60(%esp)
	.p2align 4
	.p2align 3
L1962:
	movl	68(%esp), %eax
	movswl	_clipsectorlist(%eax,%eax), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	cmpl	$1, 56(%esp)
	je	L1980
	movswl	(%eax), %esi
	movswl	2(%eax), %eax
	addl	%esi, %eax
	movl	%esi, 52(%esp)
	movl	%eax, 16(%esp)
L1945:
	movl	16(%esp), %eax
	cmpl	52(%esp), %eax
	je	L1946
	movl	_wall, %ebp
	sall	$5, %eax
	addl	%ebp, %eax
	movl	%eax, 28(%esp)
	movl	108(%esp), %eax
	subl	$4, %eax
	movl	%eax, 20(%esp)
	jmp	L1961
	.p2align 4,,10
	.p2align 3
L1959:
	movl	56(%esp), %edi
	movl	52(%esp), %ebx
	addl	%edi, 16(%esp)
	cmpl	%ebx, 16(%esp)
	je	L1946
	movl	60(%esp), %edi
	addl	%edi, 28(%esp)
	movl	_wall, %ebp
L1961:
	movl	100(%esp), %eax
	movl	20(%esp), %edi
	movl	(%eax), %ebx
	movl	4(%eax), %esi
	movl	16(%esp), %eax
	sall	$5, %eax
	leal	0(%ebp,%eax), %edx
	movl	%eax, 24(%esp)
	movswl	8(%edx), %eax
	movl	(%edx), %ecx
	movl	%edi, 12(%esp)
	sall	$5, %eax
	addl	%ebp, %eax
	movl	4(%eax), %edi
	movl	%edi, 8(%esp)
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	4(%edx), %eax
	movl	%esi, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_clipinsideboxline
	cmpl	$1, %eax
	jne	L1959
	movl	28(%esp), %eax
	movzwl	12(%eax), %ecx
	testw	%cx, %cx
	js	L1949
	testb	$1, 14(%eax)
	jne	L1949
	cmpl	$19950829, _enginecompatibilitymode
	je	L1952
	movl	%eax, %edi
	movswl	8(%eax), %eax
	sall	$5, %eax
	addl	%ebp, %eax
	movl	(%edi), %ebp
	movl	4(%edi), %edi
	movl	(%eax), %edx
	movl	4(%eax), %eax
	subl	%ebp, %ebx
	subl	%edi, %esi
	subl	%ebp, %edx
	subl	%edi, %eax
	imull	%eax, %esi
	movl	%edx, 36(%esp)
	imull	%edx, %ebx
	movl	%eax, 32(%esp)
	addl	%esi, %ebx
	xorl	%esi, %esi
	testl	%ebx, %ebx
	jle	L1953
	movl	%edx, %eax
	movl	32(%esp), %esi
	imull	%edx, %eax
	movl	%eax, %edx
	movl	%esi, %eax
	imull	%esi, %eax
	movl	$1073741824, %esi
	addl	%edx, %eax
	cmpl	%eax, %ebx
	jl	L1981
L1953:
	movl	36(%esp), %eax
	movl	%esi, %edx
/APP
 # 1935 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	leal	(%eax,%ebp), %ebx
	movl	%esi, %edx
	movl	32(%esp), %eax
/APP
 # 1936 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	leal	(%eax,%edi), %esi
L1952:
	movswl	%cx, %edx
	movl	100(%esp), %ecx
	movl	68(%esp), %eax
	movl	8(%ecx), %ecx
	movswl	_clipsectorlist(%eax,%eax), %eax
	movl	%ebx, 4(%esp)
	movl	%esi, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	112(%esp), %ecx
	movl	%ecx, (%esp)
	movl	116(%esp), %ecx
	call	__ZL14cliptestsectoriiii4vec2IiEi
	testl	%eax, %eax
	jne	L1982
	movl	28(%esp), %eax
	movswl	12(%eax), %eax
	movl	%eax, %edx
	sarl	$3, %eax
	movzbl	__ZL13clipsectormap.lto_priv.0(%eax), %ecx
	movl	%edx, %ebx
	movl	%eax, %edi
	andl	$7, %ebx
	movl	%ecx, %esi
	movzbl	__ZL8pow2char.lto_priv.6(%ebx), %ebx
	notl	%esi
	movl	%esi, %eax
	testb	%bl, %al
	je	L1959
	movl	__ZL11clipsectnum.lto_priv.0, %esi
	cmpl	$511, %esi
	jg	L1960
	orl	%ebx, %ecx
	leal	1(%esi), %eax
	movw	%dx, _clipsectorlist(%esi,%esi)
	movb	%cl, __ZL13clipsectormap.lto_priv.0(%edi)
	movl	%eax, __ZL11clipsectnum.lto_priv.0
	jmp	L1959
	.p2align 4,,10
	.p2align 3
L1982:
	movl	_wall, %ebp
L1949:
	movl	28(%esp), %ebx
	movswl	8(%ebx), %eax
	sall	$5, %eax
	addl	%ebp, %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%ebx), %edx
	subl	(%ebx), %ecx
	call	@getangle@8
	movl	100(%esp), %ebx
	movl	100(%esp), %ecx
	movl	$16, 32(%esp)
	leal	1024(%eax), %edx
	addl	$512, %eax
	andl	$2047, %edx
	andl	$2047, %eax
	movl	4(%ebx), %edi
	movl	(%ecx), %ecx
	movzwl	_sintable(%edx,%edx), %edx
	movzwl	_sintable(%eax,%eax), %ebp
	movl	%edi, 76(%esp)
	sarw	$11, %dx
	sarw	$11, %bp
	movl	%ecx, 72(%esp)
	movswl	%bp, %ebp
	movswl	%dx, %ebx
	movl	%ebx, 44(%esp)
	addl	%ebp, %edi
	addl	%ecx, %ebx
	movl	%ebp, 48(%esp)
	movl	100(%esp), %ebp
	jmp	L1956
	.p2align 4,,10
	.p2align 3
L1983:
	movl	_wall, %ecx
	movl	24(%esp), %eax
	movl	20(%esp), %esi
	leal	(%ecx,%eax), %edx
	movswl	8(%edx), %eax
	sall	$5, %eax
	addl	%ecx, %eax
	movl	(%edx), %ecx
	movl	%esi, 12(%esp)
	movl	4(%eax), %esi
	movl	%esi, 8(%esp)
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	4(%edx), %eax
	movl	%edi, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_clipinsideboxline
	addl	44(%esp), %ebx
	addl	48(%esp), %edi
	testl	%eax, %eax
	je	L1955
L1956:
	subl	$1, 32(%esp)
	movl	%ebx, 36(%esp)
	movl	%ebx, 0(%ebp)
	movl	%edi, 40(%esp)
	movl	%edi, 4(%ebp)
	jne	L1983
L1955:
	cmpl	$2147483647, _enginecompatibilitymode
	je	L1984
	subl	$1, 64(%esp)
	movl	64(%esp), %edx
	testl	%edx, %edx
	jle	L1977
	movl	104(%esp), %eax
	movl	%eax, 8(%esp)
	movl	40(%esp), %eax
	movl	%eax, 4(%esp)
	movl	36(%esp), %eax
	movl	%eax, (%esp)
	call	_updatesector
L1979:
	movl	$-1, 40(%esp)
	jmp	L1959
	.p2align 4,,10
	.p2align 3
L1960:
	orl	$1, __ZL15clipmove_warned.lto_priv.0
	jmp	L1959
	.p2align 4,,10
	.p2align 3
L1984:
	movl	104(%esp), %eax
	movl	108(%esp), %ecx
	movzwl	(%eax), %ebx
	movl	100(%esp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%ecx, (%esp)
	movl	104(%esp), %ecx
	call	__ZL16clipupdatesector4vec2IiEPsi
	movl	104(%esp), %eax
	cmpw	$0, (%eax)
	js	L1985
	subl	$1, 64(%esp)
	movl	64(%esp), %ecx
	testl	%ecx, %ecx
	jg	L1979
L1977:
	movl	80(%esp), %ebx
	.cfi_restore 3
	movl	84(%esp), %esi
	.cfi_restore 6
	movl	88(%esp), %edi
	.cfi_restore 7
	movl	92(%esp), %ebp
	.cfi_restore 5
L1941:
	movl	$-1, 40(%esp)
L1940:
	movl	40(%esp), %eax
	addl	$96, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1946:
	.cfi_def_cfa_offset 100
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	addl	$1, 68(%esp)
	movl	68(%esp), %eax
	cmpl	__ZL11clipsectnum.lto_priv.0, %eax
	jl	L1962
	movl	40(%esp), %eax
	testl	%eax, %eax
	je	L1978
	movl	104(%esp), %eax
	negl	56(%esp)
	movzwl	(%eax), %eax
	jmp	L1963
	.p2align 4,,10
	.p2align 3
L1981:
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%ebx, %eax
	cltd
	sall	$30, %eax
	shldl	$30, %ebx, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.8
	movl	%eax, %esi
	movl	28(%esp), %eax
	movl	(%eax), %ebp
	movl	4(%eax), %edi
	movzwl	12(%eax), %ecx
	jmp	L1953
L1980:
	movswl	(%eax), %ecx
	movswl	2(%eax), %eax
	addl	%ecx, %eax
	movl	%ecx, 16(%esp)
	movl	%eax, 52(%esp)
	jmp	L1945
L1985:
	movl	100(%esp), %edi
	movl	72(%esp), %eax
	movl	%eax, (%edi)
	movl	76(%esp), %eax
	movl	%eax, 4(%edi)
	movl	104(%esp), %eax
	movw	%bx, (%eax)
	movl	80(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	84(%esp), %esi
	.cfi_restore 6
	movl	88(%esp), %edi
	.cfi_restore 7
	movl	92(%esp), %ebp
	.cfi_restore 5
	jmp	L1941
L1964:
	.cfi_restore_state
	movl	80(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	84(%esp), %esi
	.cfi_restore 6
	movl	$0, 40(%esp)
	movl	88(%esp), %edi
	.cfi_restore 7
	movl	92(%esp), %ebp
	.cfi_restore 5
	jmp	L1940
L1978:
	.cfi_restore_state
	movl	80(%esp), %ebx
	.cfi_restore 3
	movl	84(%esp), %esi
	.cfi_restore 6
	movl	88(%esp), %edi
	.cfi_restore 7
	movl	92(%esp), %ebp
	.cfi_restore 5
	jmp	L1940
	.cfi_endproc
LFE266:
	.globl	_nextsectbunch
	.bss
	.align 32
_nextsectbunch:
	.space 16384
	.globl	_headsectbunch
	.align 32
_headsectbunch:
	.space 1024
	.globl	__ZL11origmapinfo.lto_priv.0
	.align 8
__ZL11origmapinfo.lto_priv.0:
	.space 12
	.globl	__ZL17origclipsectormap.lto_priv.0
	.align 32
__ZL17origclipsectormap.lto_priv.0:
	.space 512
	.globl	__ZL18origclipsectorlist.lto_priv.0
	.align 32
__ZL18origclipsectorlist.lto_priv.0:
	.space 1024
	.globl	__ZL15origclipsectnum.lto_priv.0
	.align 4
__ZL15origclipsectnum.lto_priv.0:
	.space 4
.lcomm __ZL15yax_clipsectmap,512,32
	.globl	_ryi
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
.lcomm __ZL10clipignore,512,32
.lcomm __ZL13clipobjectval,8192,32
.lcomm __ZL6clipit,65536,32
.lcomm __ZL7clipnum,2,2
	.globl	__ZL15clipmove_warned.lto_priv.0
	.align 4
__ZL15clipmove_warned.lto_priv.0:
	.space 4
	.globl	_clipsectorlist
	.align 32
_clipsectorlist:
	.space 1024
	.globl	__ZL13clipsectormap.lto_priv.0
	.align 32
__ZL13clipsectormap.lto_priv.0:
	.space 512
	.globl	__ZL11clipsectnum.lto_priv.0
	.align 4
__ZL11clipsectnum.lto_priv.0:
	.space 4
	.globl	__ZL11loadwallinv.lto_priv.0
	.align 4
__ZL11loadwallinv.lto_priv.0:
	.space 4
	.globl	__ZL14clipspritelist.lto_priv.0
	.align 32
__ZL14clipspritelist.lto_priv.0:
	.space 8192
	.globl	__ZL13clipspritenum.lto_priv.0
	.align 4
__ZL13clipspritenum.lto_priv.0:
	.space 4
	.globl	_divideu32_noinline
	.section .rdata,"dr"
	.align 4
_divideu32_noinline:
	.long	_divideu32.lto_priv.0
	.globl	__ZL11clipmapinfo.lto_priv.0
	.bss
	.align 4
__ZL11clipmapinfo.lto_priv.0:
	.space 12
	.globl	__ZL5sectq.lto_priv.0
	.align 4
__ZL5sectq.lto_priv.0:
	.space 4
	.globl	__ZL8clipinfo.lto_priv.0
	.section .rdata,"dr"
	.align 32
__ZL8clipinfo.lto_priv.0:
	.space 3072
	.globl	__ZL8pictoidx.lto_priv.0
	.bss
	.align 32
__ZL8pictoidx.lto_priv.0:
	.space 61440
	.globl	_classicht
	.align 32
_classicht:
	.space 368640
	.data
	.align 4
__ZZ12BgetpagesizeE8pageSize:
	.long	-1
	.globl	_r_maxfps
	.align 4
_r_maxfps:
	.long	-1
	.globl	_g_videoGamma
	.align 4
_g_videoGamma:
	.long	1065353216
	.globl	_r_displayindex
	.bss
	.align 4
_r_displayindex:
	.space 4
	.globl	_g_numdisplays
	.data
	.align 4
_g_numdisplays:
	.long	1
	.globl	_GLVersion
	.bss
	.align 4
_GLVersion:
	.space 8
	.globl	_glinfo
	.section .rdata,"dr"
LC122:
	.ascii "Unknown\0"
LC123:
	.ascii "0.0.0\0"
	.data
	.align 32
_glinfo:
	.long	LC122
	.long	LC122
	.long	LC123
	.long	LC36
	.long	1065353216
	.long	64
	.long	0
	.long	0
	.globl	__ZL11lastbasepal.lto_priv.0
	.align 4
__ZL11lastbasepal.lto_priv.0:
	.long	-1
	.globl	_nextmodelid
	.bss
	.align 4
_nextmodelid:
	.space 4
.lcomm __ZZL20PolymerProcessModelsvE6warned,4,4
	.globl	_models
	.align 4
_models:
	.space 4
	.globl	_basepalreset
	.data
_basepalreset:
	.byte	1
	.globl	_nogl
	.bss
_nogl:
	.space 1
	.section .rdata,"dr"
LC124:
	.ascii "software (x86 ASM)\0"
LC125:
	.ascii "Polymost\0"
LC126:
	.ascii "Polymer (for great justice)\0"
	.align 4
__ZZL21osdfunc_setrendermodePK13osdfuncparm_tE5modes:
	.long	LC124
	.long	0
	.long	0
	.long	LC125
	.long	LC126
	.globl	_baselayer_osdcmd_vidmode_func
	.align 4
_baselayer_osdcmd_vidmode_func:
	.space 4
	.globl	_g_fileDropCallback
	.set	_g_fileDropCallback,_baselayer_osdcmd_vidmode_func
.lcomm __ZZ12calc_ylookupE10ylookupsiz,4,4
	.globl	_g_mouseInsideWindow
	.data
_g_mouseInsideWindow:
	.byte	1
	.globl	_appactive
_appactive:
	.byte	1
	.globl	_g_useLogCallback
_g_useLogCallback:
	.byte	1
	.section .rdata,"dr"
	.align 4
__ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPN5async6detail15threadpool_dataEjjES6_ijEEEEEE:
	.long	0
	.long	0
	.long	__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPN5async6detail15threadpool_dataEjjES6_ijEEEEED1Ev
	.long	__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPN5async6detail15threadpool_dataEjjES6_ijEEEEED0Ev
	.long	__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPN5async6detail15threadpool_dataEjjES6_ijEEEEE6_M_runEv
	.globl	__ZZN5async6detail9singletonINS0_22default_scheduler_implEE12get_instanceEvE8instance
	.bss
	.align 4
__ZZN5async6detail9singletonINS0_22default_scheduler_implEE12get_instanceEvE8instance:
	.space 4
	.globl	__ZN5async6detailL19thread_wait_handlerE.lto_priv.0
	.section	.tls$,"dw"
	.align 4
__ZN5async6detailL19thread_wait_handlerE.lto_priv.0:
	.long	__ZN5async6detailL20generic_wait_handlerENS_16task_wait_handleE
	.section .rdata,"dr"
	.align 4
__ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPN5async6detail15threadpool_dataEjjES6_jjEEEEEE:
	.long	0
	.long	0
	.long	__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPN5async6detail15threadpool_dataEjjES6_jjEEEEED1Ev
	.long	__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPN5async6detail15threadpool_dataEjjES6_jjEEEEED0Ev
	.long	__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPN5async6detail15threadpool_dataEjjES6_jjEEEEE6_M_runEv
	.section	.tls$,"dw"
	.align 4
__ZN5async6detailL17owning_threadpoolE:
	.space 4
	.align 4
__ZN5async6detailL9thread_idE:
	.space 4
	.section .rdata,"dr"
	.align 4
__ZN5async6detail9task_funcINS0_21inline_scheduler_implENS_16task_wait_handle14wait_exec_funcIZNS0_L16thread_task_loopEPNS0_15threadpool_dataEjS3_EUlvE_EENS0_9fake_voidEE11vtable_implE:
	.long	__ZN5async6detail9task_funcINS0_21inline_scheduler_implENS_16task_wait_handle14wait_exec_funcIZNS0_L16thread_task_loopEPNS0_15threadpool_dataEjS3_EUlvE_EENS0_9fake_voidEE7destroyEPNS0_9task_baseE
	.long	__ZN5async6detail9task_funcINS0_21inline_scheduler_implENS_16task_wait_handle14wait_exec_funcIZNS0_L16thread_task_loopEPNS0_15threadpool_dataEjS3_EUlvE_EENS0_9fake_voidEE3runEPNS0_9task_baseE
	.long	__ZN5async6detail9task_funcINS0_21inline_scheduler_implENS_16task_wait_handle14wait_exec_funcIZNS0_L16thread_task_loopEPNS0_15threadpool_dataEjS3_EUlvE_EENS0_9fake_voidEE6cancelEPNS0_9task_baseEONSt15__exception_ptr13exception_ptrE
	.long	__ZN5async6detail9task_funcINS0_21inline_scheduler_implENS_16task_wait_handle14wait_exec_funcIZNS0_L16thread_task_loopEPNS0_15threadpool_dataEjS3_EUlvE_EENS0_9fake_voidEE8scheduleEPNS0_9task_baseENS0_13ref_count_ptrISB_EE
.lcomm __ZZN5async16inline_schedulerEvE8instance,1,1
	.align 4
__ZN5async6detail9task_funcINS0_21inline_scheduler_implENS_16task_wait_handle14wait_exec_funcIZNS0_L20generic_wait_handlerES3_EUlvE_EENS0_9fake_voidEE11vtable_implE:
	.long	__ZN5async6detail9task_funcINS0_21inline_scheduler_implENS_16task_wait_handle14wait_exec_funcIZNS0_L20generic_wait_handlerES3_EUlvE_EENS0_9fake_voidEE7destroyEPNS0_9task_baseE
	.long	__ZN5async6detail9task_funcINS0_21inline_scheduler_implENS_16task_wait_handle14wait_exec_funcIZNS0_L20generic_wait_handlerES3_EUlvE_EENS0_9fake_voidEE3runEPNS0_9task_baseE
	.long	__ZN5async6detail9task_funcINS0_21inline_scheduler_implENS_16task_wait_handle14wait_exec_funcIZNS0_L20generic_wait_handlerES3_EUlvE_EENS0_9fake_voidEE6cancelEPNS0_9task_baseEONSt15__exception_ptr13exception_ptrE
	.long	__ZN5async6detail9task_funcINS0_21inline_scheduler_implENS_16task_wait_handle14wait_exec_funcIZNS0_L20generic_wait_handlerES3_EUlvE_EENS0_9fake_voidEE8scheduleEPNS0_9task_baseENS0_13ref_count_ptrIS9_EE
	.globl	__ZL24polymost1UseColorOnlyLoc.lto_priv.0
	.data
	.align 4
__ZL24polymost1UseColorOnlyLoc.lto_priv.0:
	.long	-1
	.globl	_glad_glUniform1f
	.bss
	.align 4
_glad_glUniform1f:
	.space 4
	.globl	__ZL21polymost1UseColorOnly.lto_priv.0
	.align 4
__ZL21polymost1UseColorOnly.lto_priv.0:
	.space 4
	.globl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0
	.align 4
__ZL31polymost1CurrentShaderProgramID.lto_priv.0:
	.space 4
	.globl	_glad_glEnable
	.align 4
_glad_glEnable:
	.space 4
	.globl	_glad_glEnd
	.align 4
_glad_glEnd:
	.space 4
	.globl	_glad_glVertex2f
	.align 4
_glad_glVertex2f:
	.space 4
	.globl	_glad_glColor4ub
	.align 4
_glad_glColor4ub:
	.space 4
	.globl	_glad_glBegin
	.align 4
_glad_glBegin:
	.space 4
	.globl	_polymost2d
	.align 4
_polymost2d:
	.space 4
	.globl	_glad_glOrtho
	.align 4
_glad_glOrtho:
	.space 4
	.globl	_glad_glLoadIdentity
	.align 4
_glad_glLoadIdentity:
	.space 4
	.globl	_glad_glMatrixMode
	.align 4
_glad_glMatrixMode:
	.space 4
	.globl	_glad_glViewport
	.align 4
_glad_glViewport:
	.space 4
	.globl	_bytesperline
	.align 4
_bytesperline:
	.space 4
	.globl	_wy1
	.align 4
_wy1:
	.space 4
	.globl	_wy2
	.align 4
_wy2:
	.space 4
	.globl	_wx1
	.align 4
_wx1:
	.space 4
	.globl	_wx2
	.align 4
_wx2:
	.space 4
	.globl	_XXH3_kSecret.lto_priv.0
	.section .rdata,"dr"
	.align 64
_XXH3_kSecret.lto_priv.0:
	.ascii "\270\376l9#\244K\276|\1\201,\367!\255\34\336\324m\351\203\220\227\333r@\244\244\267\263g\37\313y\346N\314\300\345x\202Z\320}\314\377r!\270\10Ft\367C$\216\340"
	.ascii "5\220\346\201:&L<(R\273\221\303\0\313\210\320e\213\33S.\243qdH\227\242\15\371N8\31\357F\251\336\254\330\250\372v?\343\234"
	.ascii "4?\371\334\273\307\307\13O\35\212Q\340K\315\264Y1\310\237~\311\331xsd\352\305\254\203"
	.ascii "4\323\353\303\305\201\240\377\372\23c\353\27\15\335Q\267\360\332I\323\26U&)\324h\236+\26\276X}G\241\374\217\370\270\321z\320"
	.ascii "1\316E\313:\217\225\26\4(\257\327\373\312\273K@~"
	.globl	_s_tdefl_num_probes.lto_priv.0
	.align 32
_s_tdefl_num_probes.lto_priv.0:
	.long	0
	.long	1
	.long	6
	.long	32
	.long	16
	.long	32
	.long	128
	.long	256
	.long	512
	.long	768
	.long	1500
	.align 4
LC9:
	.long	LC2
	.align 4
LC10:
	.long	LC6
	.align 4
LC11:
	.long	LC4
	.align 4
LC14:
	.long	__ZN5async6detail9task_funcINS0_21inline_scheduler_implENS_16task_wait_handle14wait_exec_funcIZNS0_L20generic_wait_handlerES3_EUlvE_EENS0_9fake_voidEE11vtable_implE
	.align 8
LC17:
	.long	0
	.long	1
	.align 4
LC18:
	.long	__ZN5async6detail9task_funcINS0_21inline_scheduler_implENS_16task_wait_handle14wait_exec_funcIZNS0_L16thread_task_loopEPNS0_15threadpool_dataEjS3_EUlvE_EENS0_9fake_voidEE11vtable_implE
	.align 4
LC48:
	.long	1065353216
	.align 4
LC91:
	.long	1092616192
	.align 4
LC93:
	.long	1097859072
	.align 16
LC96:
	.long	-1028477379
	.long	0
	.long	-2048144761
	.long	-1640531535
	.align 16
LC97:
	.long	668265295
	.long	-1028477379
	.long	-1640531463
	.long	374761393
	.align 16
LC98:
	.long	-1028477341
	.long	-2048144777
	.long	-2048144777
	.long	0
	.align 16
LC99:
	.long	374761413
	.long	668265263
	.long	-1640531535
	.long	0
	.align 4
LC102:
	.long	964689920
	.align 16
LC103:
	.long	0
	.long	0
	.long	1
	.long	0
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	_pthread_mutex_init;	.scl	2;	.type	32;	.endef
	.def	_pthread_mutex_destroy;	.scl	2;	.type	32;	.endef
	.def	_pthread_mutex_lock;	.scl	2;	.type	32;	.endef
	.def	_pthread_mutex_unlock;	.scl	2;	.type	32;	.endef
	.def	__Z18_mi_malloc_genericP9mi_heap_sjbj;	.scl	2;	.type	32;	.endef
	.def	__Z15mi_heap_try_newP9mi_heap_sjb;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	__ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	__ZSt20__throw_system_errori;	.scl	2;	.type	32;	.endef
	.def	__ZNSt18condition_variableC1Ev;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj;	.scl	2;	.type	32;	.endef
	.def	__ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE;	.scl	2;	.type	32;	.endef
	.def	__ZNSt18condition_variableD1Ev;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv;	.scl	2;	.type	32;	.endef
	.def	__ZSt9terminatev;	.scl	2;	.type	32;	.endef
	.def	__ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE;	.scl	2;	.type	32;	.endef
	.def	__ZNSt18condition_variable10notify_oneEv;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_mi_stats_print_out.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_strtol;	.scl	2;	.type	32;	.endef
	.def	__Z28buildgl_resetStateAccountingv;	.scl	2;	.type	32;	.endef
	.def	_md3postload_polymer.part.0;	.scl	2;	.type	32;	.endef
	.def	_polymer_init;	.scl	2;	.type	32;	.endef
	.def	__Z19polymost_resetStatev;	.scl	2;	.type	32;	.endef
	.def	_inthash_find;	.scl	2;	.type	32;	.endef
	.def	_inthash_add;	.scl	2;	.type	32;	.endef
	.def	_engineClearLightsFromMHK;	.scl	2;	.type	32;	.endef
	.def	_polymer_uninit;	.scl	2;	.type	32;	.endef
	.def	_videoNextPage;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetDisplayName;	.scl	2;	.type	32;	.endef
	.def	__Z17osdcmd_restartvidPK13osdfuncparm_t.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZNSt6thread4joinEv;	.scl	2;	.type	32;	.endef
	.def	__ZNSt6thread6detachEv;	.scl	2;	.type	32;	.endef
	.def	__ZNSt6thread6_StateD2Ev;	.scl	2;	.type	32;	.endef
	.def	_inthash_init;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	__Z15osdcmd_cvar_setPK13osdfuncparm_t;	.scl	2;	.type	32;	.endef
	.def	_strcasecmp;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.7;	.scl	2;	.type	32;	.endef
	.def	_videoSetPalette;	.scl	2;	.type	32;	.endef
	.def	_inside;	.scl	2;	.type	32;	.endef
	.def	_getsectordist;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.1;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_updatesector;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.9;	.scl	2;	.type	32;	.endef
	.def	_tdefl_compress_block.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.6;	.scl	2;	.type	32;	.endef
	.def	_videoBeginDrawing;	.scl	2;	.type	32;	.endef
	.def	_paletteGetColor;	.scl	2;	.type	32;	.endef
	.def	_videoEndDrawing;	.scl	2;	.type	32;	.endef
	.def	__ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_sjjjb.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_sjjjb.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_abort;	.scl	2;	.type	32;	.endef
	.def	_startwin_puts.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z8OSD_PutsPKc;	.scl	2;	.type	32;	.endef
	.def	_setvlinebpl;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
	.def	_copybufbyte;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.8;	.scl	2;	.type	32;	.endef
	.def	_divideu32.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_getflorzofslopeptr.part.0;	.scl	2;	.type	32;	.endef
	.def	_getceilzofslopeptr.part.0;	.scl	2;	.type	32;	.endef
	.def	_yax_getzsofslope;	.scl	2;	.type	32;	.endef
	.def	_rintersect;	.scl	2;	.type	32;	.endef
	.def	_yax_getnextwall;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.part.0;	.scl	2;	.type	32;	.endef
	.def	@getangle@8;	.scl	2;	.type	32;	.endef
