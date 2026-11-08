	.file	"<artificial>"
	.text
	.p2align 4
	.def	__Z14_mi_preloadingv;	.scl	3;	.type	32;	.endef
__Z14_mi_preloadingv:
LFB0:
	.cfi_startproc
	movl	$1, %eax
	ret
	.cfi_endproc
LFE0:
	.p2align 4
	.def	__ZL10mi_out_numyjcPPcS_;	.scl	3;	.type	32;	.endef
__ZL10mi_out_numyjcPPcS_:
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
	pushl	%ebx
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	%edi, %edx
	andl	$-8, %esp
	subl	$52, %esp
	movl	12(%ebp), %eax
	orl	%ebx, %edx
	movl	(%eax), %eax
	je	L24
	movl	%ecx, 36(%esp)
	movl	%eax, %esi
	movl	$0, 40(%esp)
	movl	%eax, 24(%esp)
	jmp	L10
	.p2align 4,,10
	.p2align 3
L15:
	movl	28(%esp), %eax
	movl	32(%esp), %edx
	movl	%eax, %edi
	movl	%edx, %ebx
L10:
	leal	44(%esp), %eax
	movl	40(%esp), %edx
	movl	%edi, (%esp)
	movl	%eax, 16(%esp)
	movl	36(%esp), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, 4(%esp)
	call	___udivmoddi4
	movl	%eax, 28(%esp)
	movl	44(%esp), %eax
	movl	%edx, 32(%esp)
	leal	48(%eax), %ecx
	leal	55(%eax), %edx
	cmpb	$9, %al
	cmovbe	%ecx, %edx
	cmpl	16(%ebp), %esi
	jnb	L9
	movl	12(%ebp), %eax
	movb	%dl, (%esi)
	addl	$1, %esi
	movl	%esi, (%eax)
L9:
	movl	36(%esp), %eax
	movl	40(%esp), %edx
	cmpl	%eax, %edi
	sbbl	%edx, %ebx
	jnc	L15
	movl	24(%esp), %eax
	cmpb	$0, 8(%ebp)
	jne	L25
L12:
	subl	%eax, %esi
	movl	%esi, %edx
	shrl	%esi
	je	L3
	leal	-1(%eax,%edx), %edx
	addl	%eax, %esi
	.p2align 5
	.p2align 4
	.p2align 3
L14:
	movzbl	(%edx), %ecx
	movzbl	(%eax), %ebx
	addl	$1, %eax
	subl	$1, %edx
	movb	%bl, 1(%edx)
	movb	%cl, -1(%eax)
	cmpl	%esi, %eax
	jne	L14
L3:
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
L24:
	.cfi_restore_state
	cmpb	$0, 8(%ebp)
	je	L5
	cmpl	16(%ebp), %eax
	jnb	L3
	movzbl	8(%ebp), %ecx
	movl	12(%ebp), %edi
	addl	$1, %eax
	movb	%cl, -1(%eax)
	movl	%eax, (%edi)
L5:
	cmpl	16(%ebp), %eax
	jnb	L3
	movl	12(%ebp), %edi
	movb	$48, (%eax)
	addl	$1, %eax
	movl	%eax, (%edi)
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
L25:
	.cfi_restore_state
	cmpl	16(%ebp), %esi
	jnb	L12
	movzbl	8(%ebp), %ecx
	movl	12(%ebp), %edi
	addl	$1, %esi
	movb	%cl, -1(%esi)
	movl	%esi, (%edi)
	jmp	L12
	.cfi_endproc
LFE1:
	.p2align 4
	.def	__Z13_mi_vsnprintfPcjPKcS_;	.scl	3;	.type	32;	.endef
__Z13_mi_vsnprintfPcjPKcS_:
LFB2:
	.cfi_startproc
	subl	$60, %esp
	.cfi_def_cfa_offset 64
	movl	%edi, 52(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	leal	-1(%eax,%edx), %eax
	movb	$0, (%eax)
	movl	%edi, 40(%esp)
	cmpl	%eax, %edi
	jnb	L27
	movl	%esi, 48(%esp)
	.cfi_offset 6, -16
	movl	%ecx, %esi
	movl	%ebp, 56(%esp)
	.cfi_offset 5, -8
	movl	%eax, %ebp
	movl	%ebx, 44(%esp)
	.cfi_offset 3, -20
	jmp	L28
	.p2align 4,,10
	.p2align 3
L241:
	leal	-32(%eax), %ecx
	cmpb	$94, %cl
	jbe	L31
	cmpb	$10, %al
	je	L31
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpb	$9, %cl
	je	L31
	movl	40(%esp), %edi
	movl	%edx, %esi
	.p2align 4
	.p2align 3
L33:
	cmpl	%ebp, %edi
	jnb	L228
L28:
	movzbl	(%esi), %eax
	testb	%al, %al
	je	L228
	leal	1(%esi), %edx
	cmpb	$37, %al
	jne	L241
	movzbl	1(%esi), %eax
	testb	%al, %al
	je	L228
	cmpb	$43, %al
	je	L34
	cmpb	$32, %al
	je	L34
	movb	$0, 16(%esp)
	addl	$2, %esi
	movb	$1, 24(%esp)
	cmpb	$45, %al
	je	L242
L37:
	movb	$32, 23(%esp)
	cmpb	$48, %al
	je	L243
L38:
	leal	-49(%eax), %edx
	movl	$0, 12(%esp)
	cmpb	$8, %dl
	jbe	L244
L39:
	cmpb	$122, %al
	sete	%cl
	cmpb	$116, %al
	sete	%dl
	orb	%cl, %dl
	jne	L119
	cmpb	$76, %al
	je	L119
	cmpb	$108, %al
	je	L45
	cmpb	$115, %al
	je	L43
	movl	%eax, %edx
	andl	$-9, %edx
	cmpb	$112, %dl
	je	L46
	cmpb	$117, %al
	je	L47
	cmpb	$105, %al
	je	L123
	movl	%eax, %edx
	cmpb	$100, %al
	je	L123
L75:
	leal	-32(%edx), %eax
	cmpb	$94, %al
	ja	L235
	leal	1(%edi), %eax
	movb	$37, (%edi)
	movl	%eax, 40(%esp)
	cmpl	%ebp, %eax
	jnb	L83
	leal	2(%edi), %eax
	movl	12(%esp), %ebx
	movb	%dl, 1(%edi)
	movl	%eax, 40(%esp)
	movl	%edi, 16(%esp)
	movl	%eax, %edi
	movl	$2, %eax
	cmpl	%ebx, %eax
	jnb	L33
	.p2align 4
	.p2align 3
L246:
	subl	%eax, %ebx
	movl	%ebx, %edx
	cmpl	%ebp, %edi
	jnb	L117
	movl	%eax, 28(%esp)
	movl	12(%esp), %ebx
	xorl	%ecx, %ecx
	movzbl	23(%esp), %eax
	.p2align 5
	.p2align 4
	.p2align 3
L84:
	addl	$1, %ecx
	addl	$1, %edi
	movb	%al, -1(%edi)
	cmpl	%edx, %ecx
	jnb	L121
	cmpl	%ebp, %edi
	jb	L84
L121:
	movl	%ebx, 12(%esp)
	movl	28(%esp), %eax
	movl	%edi, 40(%esp)
	cmpl	%edi, %ebp
	jb	L33
	cmpb	$0, 24(%esp)
	je	L33
	testl	%eax, %eax
	je	L33
L95:
	movl	16(%esp), %ebx
	movl	12(%esp), %ecx
	addl	%ebx, %ecx
	cmpl	%ebp, %ecx
	jnb	L33
L91:
	movl	16(%esp), %ebx
	movl	%edx, 36(%esp)
	movl	%ebp, 28(%esp)
	leal	-1(%ebx,%eax), %ecx
	addl	%eax, %ebx
	movl	%ebx, 24(%esp)
	movl	12(%esp), %ebx
	movl	%eax, 12(%esp)
	movl	24(%esp), %ebp
	.p2align 5
	.p2align 4
	.p2align 3
L86:
	movzbl	(%ecx), %eax
	movl	%ecx, %edx
	subl	12(%esp), %edx
	subl	$1, %ecx
	movb	%al, (%edx,%ebx)
	movl	%ebp, %edx
	subl	%ecx, %edx
	cmpl	%edx, 12(%esp)
	jnb	L86
	movzbl	23(%esp), %eax
	movl	36(%esp), %edx
	movl	28(%esp), %ebp
	movl	%eax, 4(%esp)
	movl	16(%esp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, (%esp)
	call	_memset
	jmp	L33
	.p2align 4,,10
	.p2align 3
L31:
	movb	%al, (%edi)
	addl	$1, %edi
	movl	%edx, %esi
	movl	%edi, 40(%esp)
	jmp	L33
	.p2align 4,,10
	.p2align 3
L119:
	movzbl	(%esi), %edx
	testb	%dl, %dl
	je	L228
	addl	$1, %esi
	cmpb	$115, %dl
	je	L43
	movl	%edx, %ecx
	andl	$-9, %ecx
	cmpb	$112, %cl
	je	L65
	cmpb	$117, %dl
	je	L245
	cmpb	$105, %dl
	je	L120
	cmpb	$100, %dl
	jne	L75
L120:
	cmpb	$122, %al
	je	L240
	cmpb	$116, %al
	jne	L80
L240:
	movl	64(%esp), %ebx
	movl	64(%esp), %eax
	movl	(%ebx), %edx
	addl	$4, %eax
	movl	%edx, %ecx
	sarl	$31, %ecx
	js	L78
L203:
	movl	%edx, 28(%esp)
	movl	%ecx, 32(%esp)
	movl	%eax, 64(%esp)
L79:
	leal	40(%esp), %eax
	movl	%ebp, 8(%esp)
	movl	$10, %ecx
	movl	%eax, 4(%esp)
	movzbl	16(%esp), %eax
	movl	%eax, (%esp)
	.p2align 4
	.p2align 3
L234:
	movl	28(%esp), %eax
	movl	32(%esp), %edx
	call	__ZL10mi_out_numyjcPPcS_
L235:
	movl	40(%esp), %edx
	movl	%edi, 16(%esp)
	movl	%edx, %eax
	subl	%edi, %eax
	movl	%edx, %edi
L60:
	movl	12(%esp), %ebx
	cmpl	%ebx, %eax
	jnb	L33
	jmp	L246
	.p2align 4,,10
	.p2align 3
L34:
	movzbl	2(%esi), %edx
	testb	%dl, %dl
	je	L228
	movb	%al, 16(%esp)
	movzbl	%dl, %eax
	addl	$3, %esi
	movb	$1, 24(%esp)
	cmpb	$45, %al
	jne	L37
L242:
	movzbl	(%esi), %eax
	testb	%al, %al
	je	L228
	movb	$0, 24(%esp)
	addl	$1, %esi
	movb	$32, 23(%esp)
	cmpb	$48, %al
	jne	L38
L243:
	movzbl	(%esi), %eax
	testb	%al, %al
	je	L228
	leal	-49(%eax), %edx
	movb	$48, 23(%esp)
	addl	$1, %esi
	movl	$0, 12(%esp)
	cmpb	$8, %dl
	ja	L39
L244:
	movzbl	(%esi), %edx
	testb	%dl, %dl
	je	L228
	leal	-48(%eax), %ebx
	leal	-48(%edx), %eax
	addl	$1, %esi
	movl	%ebx, 12(%esp)
	cmpb	$9, %al
	jbe	L40
	jmp	L103
	.p2align 5
	.p2align 4,,10
	.p2align 3
L248:
	leal	(%ebx,%ebx,4), %ecx
	addl	$1, %esi
	leal	-48(%eax,%ecx,2), %ebx
	leal	-48(%edx), %eax
	cmpb	$9, %al
	ja	L247
L40:
	movzbl	%dl, %eax
	movzbl	(%esi), %edx
	testb	%dl, %dl
	jne	L248
L228:
	movl	44(%esp), %ebx
	.cfi_restore 3
	movl	48(%esp), %esi
	.cfi_restore 6
	movl	56(%esp), %ebp
	.cfi_restore 5
L27:
	movb	$0, (%edi)
	movl	52(%esp), %edi
	addl	$60, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L65:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpb	$120, %dl
	je	L249
L50:
	movl	64(%esp), %eax
	xorl	%ebx, %ebx
	movl	%ebx, 32(%esp)
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	leal	1(%edi), %eax
	movb	$48, (%edi)
	movl	%ecx, 28(%esp)
	cmpl	%ebp, %eax
	jnb	L111
	movb	$120, 1(%edi)
	addl	$2, %edi
L74:
	movl	12(%esp), %ebx
	movl	$0, %eax
	movl	%edi, 40(%esp)
	movl	%edx, 64(%esp)
	subl	$2, %ebx
	cmovnc	%ebx, %eax
	movl	%eax, 12(%esp)
	testl	%eax, %eax
	jne	L112
	movl	$8, 12(%esp)
	movl	$16, %ecx
	movb	$48, 23(%esp)
	jmp	L55
	.p2align 4,,10
	.p2align 3
L43:
	movl	64(%esp), %eax
	addl	$4, %eax
	movl	%eax, 28(%esp)
	movl	64(%esp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L250
	movzbl	(%eax), %edx
	movl	12(%esp), %ebx
	movl	%edi, %ecx
	testb	%dl, %dl
	jne	L61
	jmp	L251
	.p2align 5
	.p2align 4,,10
	.p2align 3
L63:
	addl	$1, %eax
	movb	%dl, (%ecx)
	addl	$1, %ecx
	movzbl	(%eax), %edx
	testb	%dl, %dl
	je	L252
L61:
	cmpl	%ebp, %ecx
	jb	L63
	movl	%ecx, %eax
	movl	%ebx, 12(%esp)
	subl	%edi, %eax
	movl	%ecx, 40(%esp)
	cmpl	%ebx, %eax
	jb	L253
	movl	28(%esp), %eax
	movl	%ecx, %edi
	movl	%eax, 64(%esp)
	jmp	L33
	.p2align 4,,10
	.p2align 3
L247:
	movl	%ebx, 12(%esp)
	movl	%edx, %eax
	jmp	L39
	.p2align 4,,10
	.p2align 3
L45:
	movzbl	(%esi), %edx
	testb	%dl, %dl
	je	L228
	cmpb	$108, %dl
	je	L51
	addl	$1, %esi
	cmpb	$115, %dl
	je	L43
	movl	%edx, %eax
	andl	$-9, %eax
	cmpb	$112, %al
	je	L56
	cmpb	$117, %dl
	je	L47
	cmpb	$105, %dl
	je	L122
	cmpb	$100, %dl
	jne	L75
L122:
	movl	64(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	movl	%eax, %edx
	movl	64(%esp), %eax
	sarl	$31, %ecx
	addl	$4, %eax
	testl	%ecx, %ecx
	jns	L203
	jmp	L78
	.p2align 4,,10
	.p2align 3
L46:
	cmpb	$120, %al
	jne	L50
L49:
	movl	64(%esp), %eax
	xorl	%edx, %edx
	movl	%edx, 32(%esp)
	movl	12(%esp), %edx
	movl	(%eax), %eax
	movl	%eax, 28(%esp)
	movl	64(%esp), %eax
	addl	$4, %eax
	testl	%edx, %edx
	movl	%eax, 64(%esp)
	jne	L112
L230:
	movl	$2, 12(%esp)
	movl	$16, %ecx
	movb	$48, 23(%esp)
	.p2align 4
	.p2align 3
L55:
	leal	40(%esp), %eax
	movl	%ebp, 8(%esp)
	movl	%eax, 4(%esp)
	movzbl	16(%esp), %eax
	movl	%eax, (%esp)
	jmp	L234
	.p2align 4,,10
	.p2align 3
L245:
	cmpb	$122, %al
	jne	L69
L47:
	movl	64(%esp), %eax
	xorl	%edx, %edx
	movl	$10, %ecx
	movl	%edx, 32(%esp)
	movl	(%eax), %eax
	movl	%eax, 28(%esp)
	movl	64(%esp), %eax
	addl	$4, %eax
	movl	%eax, 64(%esp)
	jmp	L55
	.p2align 4,,10
	.p2align 3
L249:
	cmpb	$122, %al
	je	L49
	movl	$112, %edx
L69:
	cmpb	$116, %al
	movl	64(%esp), %eax
	jne	L70
	movl	64(%esp), %ebx
	addl	$4, %eax
	movl	(%ebx), %ecx
	xorl	%ebx, %ebx
	movl	%ebx, 32(%esp)
	movl	12(%esp), %ebx
	movl	%ecx, 28(%esp)
	testl	%ebx, %ebx
	jne	L229
L73:
	movl	%eax, 64(%esp)
	movl	$10, %ecx
	cmpb	$112, %dl
	je	L230
	jmp	L55
L70:
	movl	64(%esp), %ebx
	addl	$8, %eax
	movl	(%ebx), %ecx
	movl	4(%ebx), %ebx
	movl	%ecx, 28(%esp)
	movl	12(%esp), %ecx
	movl	%ebx, 32(%esp)
	testl	%ecx, %ecx
	je	L73
L229:
	movl	%eax, 64(%esp)
	cmpb	$112, %dl
	movl	$10, %ecx
	movl	$16, %eax
	cmove	%eax, %ecx
	jmp	L55
	.p2align 4,,10
	.p2align 3
L252:
	movl	%ebx, 12(%esp)
	movl	%ecx, %eax
	subl	%edi, %eax
L62:
	movl	28(%esp), %ebx
	movl	%edi, 16(%esp)
	movl	%ecx, %edi
	movl	%ecx, 40(%esp)
	movl	%ebx, 64(%esp)
	jmp	L60
L53:
	cmpb	$120, %dl
	jne	L50
	movl	64(%esp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%edx, 32(%esp)
	movl	12(%esp), %edx
	movl	%eax, 28(%esp)
	movl	64(%esp), %eax
	addl	$8, %eax
	testl	%edx, %edx
	movl	%eax, 64(%esp)
	je	L230
	.p2align 4
	.p2align 3
L112:
	movl	$16, %ecx
	jmp	L55
	.p2align 4,,10
	.p2align 3
L51:
	movzbl	1(%esi), %edx
	testb	%dl, %dl
	je	L228
	addl	$2, %esi
	cmpb	$115, %dl
	je	L43
	movl	%edx, %eax
	andl	$-9, %eax
	cmpb	$112, %al
	je	L53
	cmpb	$117, %dl
	je	L254
	cmpb	$105, %dl
	je	L80
	cmpb	$100, %dl
	jne	L75
L80:
	movl	64(%esp), %ebx
	movl	64(%esp), %eax
	movl	4(%ebx), %ecx
	movl	(%ebx), %edx
	addl	$8, %eax
	testl	%ecx, %ecx
	jns	L203
	movl	%edx, 36(%esp)
	leal	-2147483648(%ecx), %ebx
	orl	%ebx, 36(%esp)
	movl	%eax, 64(%esp)
	movl	$0, 28(%esp)
	movl	$-2147483648, 32(%esp)
	movb	$45, 16(%esp)
	je	L79
	jmp	L78
	.p2align 4,,10
	.p2align 3
L56:
	cmpb	$120, %dl
	jne	L50
	jmp	L49
L123:
	movl	64(%esp), %eax
	addl	$4, 64(%esp)
	movl	(%eax), %eax
	movl	%eax, %ecx
	movl	%eax, 28(%esp)
	movl	%eax, %edx
	sarl	$31, %ecx
	movl	%ecx, 32(%esp)
	testl	%eax, %eax
	jns	L79
	movl	64(%esp), %eax
L78:
	negl	%edx
	movl	%eax, 64(%esp)
	adcl	$0, %ecx
	movl	%edx, 28(%esp)
	negl	%ecx
	movb	$45, 16(%esp)
	movl	%ecx, 32(%esp)
	jmp	L79
	.p2align 4,,10
	.p2align 3
L250:
	movl	40(%esp), %edx
	movl	28(%esp), %ebx
	movl	%edi, 16(%esp)
	movl	%edx, %eax
	movl	%ebx, 64(%esp)
	subl	%edi, %eax
	movl	%edx, %edi
	jmp	L60
L83:
	cmpl	$1, 12(%esp)
	ja	L255
L89:
	movl	%eax, %edi
	movl	44(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	48(%esp), %esi
	.cfi_restore 6
	movl	56(%esp), %ebp
	.cfi_restore 5
	movb	$0, (%edi)
	movl	52(%esp), %edi
	addl	$60, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L253:
	.cfi_restore_state
	subl	%eax, %ebx
	movl	%ebx, %edx
L64:
	movl	%ecx, 40(%esp)
	cmpl	%ecx, %ebp
	jb	L94
	cmpb	$0, 24(%esp)
	jne	L92
L94:
	movl	%ecx, %edi
	movl	44(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	48(%esp), %esi
	.cfi_restore 6
	movl	56(%esp), %ebp
	.cfi_restore 5
	movb	$0, (%edi)
	movl	52(%esp), %edi
	addl	$60, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L103:
	.cfi_restore_state
	movl	%edx, %eax
	jmp	L39
L254:
	movl	64(%esp), %eax
	movl	$10, %ecx
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, 28(%esp)
	movl	64(%esp), %eax
	movl	%edx, 32(%esp)
	addl	$8, %eax
	movl	%eax, 64(%esp)
	jmp	L55
L92:
	testl	%eax, %eax
	je	L94
	movl	28(%esp), %ebx
	movl	%edi, 16(%esp)
	movl	%ecx, %edi
	movl	%ebx, 64(%esp)
	jmp	L95
L111:
	movl	%eax, %edi
	jmp	L74
L251:
	xorl	%eax, %eax
	jmp	L62
L255:
	cmpl	%eax, %ebp
	jne	L89
	cmpb	$0, 24(%esp)
	je	L89
	movl	12(%esp), %ebx
	leal	(%edi,%ebx), %edx
	cmpl	%ebp, %edx
	jnb	L89
	movl	%edi, 16(%esp)
	leal	-1(%ebx), %edx
	movl	%eax, %edi
	movl	$1, %eax
	jmp	L91
L117:
	movl	64(%esp), %ebx
	movl	%edi, %ecx
	movl	16(%esp), %edi
	movl	%ebx, 28(%esp)
	jmp	L64
	.cfi_endproc
LFE2:
	.p2align 4
	.def	__Z11_mi_strlcatPcPKcj.part.0.constprop.0;	.scl	3;	.type	32;	.endef
__Z11_mi_strlcatPcPKcj.part.0.constprop.0:
LFB6:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	movl	%edx, %eax
	cmpb	$0, (%ebx)
	je	L264
	leal	64(%ebx), %ecx
	movl	%ebx, %edx
	.p2align 4
	.p2align 4
	.p2align 3
L259:
	addl	$1, %edx
	cmpb	$0, (%edx)
	je	L272
	cmpl	%ecx, %edx
	jne	L259
	movl	$1, %ebx
L257:
	testl	%eax, %eax
	je	L256
	movzbl	(%eax), %edx
	testb	%dl, %dl
	je	L266
	leal	-1(%ecx,%ebx), %ebx
	jmp	L262
	.p2align 5
	.p2align 4,,10
	.p2align 3
L263:
	addl	$1, %eax
	movb	%dl, (%ecx)
	addl	$1, %ecx
	movzbl	(%eax), %edx
	testb	%dl, %dl
	je	L266
L262:
	cmpl	%ecx, %ebx
	jne	L263
	movb	$0, (%ebx)
L256:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L272:
	.cfi_restore_state
	subl	%edx, %ebx
	movl	%edx, %ecx
	addl	$65, %ebx
	jmp	L257
	.p2align 4,,10
	.p2align 3
L266:
	movl	%ecx, %ebx
	movb	$0, (%ebx)
	jmp	L256
L264:
	movl	%ebx, %ecx
	movl	$65, %ebx
	jmp	L257
	.cfi_endproc
LFE6:
	.p2align 4
	.def	__ZL21mi_recurse_enter_primv;	.scl	3;	.type	32;	.endef
__ZL21mi_recurse_enter_primv:
LFB9:
	.cfi_startproc
	movl	__tls_index, %eax
	movl	%fs:44, %edx
	movl	(%edx,%eax,4), %edx
	xorl	%eax, %eax
	cmpb	$0, __ZL7recurse@secrel32(%edx)
	jne	L273
	movb	$1, __ZL7recurse@secrel32(%edx)
	movl	$1, %eax
L273:
	ret
	.cfi_endproc
LFE9:
	.p2align 4
	.def	__ZL20mi_recurse_exit_primv;	.scl	3;	.type	32;	.endef
__ZL20mi_recurse_exit_primv:
LFB10:
	.cfi_startproc
	movl	__tls_index, %eax
	movl	%fs:44, %edx
	movl	(%edx,%eax,4), %eax
	movb	$0, __ZL7recurse@secrel32(%eax)
	ret
	.cfi_endproc
LFE10:
	.p2align 4
	.def	__ZL24mi_page_free_list_extendP9mi_page_sjjP10mi_stats_s.isra.0;	.scl	3;	.type	32;	.endef
__ZL24mi_page_free_list_extendP9mi_page_sjjP10mi_stats_s.isra.0:
LFB12:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%edx, %esi
	movl	%ecx, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %ebx
	movl	24(%eax), %ecx
	movzwl	2(%eax), %eax
	movl	%eax, %edi
	leal	-1(%eax,%edx), %eax
	imull	%esi, %edi
	imull	%esi, %eax
	addl	%ecx, %edi
	addl	%eax, %ecx
	cmpl	%edi, %ecx
	jb	L278
	movl	%edi, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L279:
	movl	%eax, %edx
	addl	%esi, %eax
	movl	%eax, (%edx)
	cmpl	%eax, %ecx
	jnb	L279
L278:
	movl	8(%ebx), %eax
	movl	%eax, (%ecx)
	movl	%edi, 8(%ebx)
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
LFE12:
	.p2align 4
	.def	__ZL12chacha_blockP15mi_random_cxt_s;	.scl	3;	.type	32;	.endef
__ZL12chacha_blockP15mi_random_cxt_s:
LFB13:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%eax, %ebp
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$136, %esp
	.cfi_def_cfa_offset 156
	movl	(%eax), %eax
	movl	8(%ebp), %edx
	movl	16(%ebp), %edi
	movl	48(%ebp), %esi
	movl	32(%ebp), %ecx
	movl	52(%ebp), %ebx
	movl	%eax, 24(%esp)
	movl	4(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	24(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%edx, 36(%esp)
	movl	56(%ebp), %edx
	movl	%eax, 40(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	40(%ebp), %eax
	movl	%eax, 56(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	movl	28(%ebp), %eax
	movl	%eax, 44(%esp)
	movl	60(%ebp), %eax
	movl	$10, 64(%esp)
	movl	%eax, 52(%esp)
	movl	44(%ebp), %eax
	movl	%ebp, 68(%esp)
	movl	%eax, 48(%esp)
	movl	8(%esp), %eax
	.p2align 4
	.p2align 3
L283:
	movl	24(%esp), %ebp
	addl	%edi, %ebp
	xorl	%ebp, %esi
	roll	$16, %esi
	addl	%esi, %ecx
	xorl	%ecx, %edi
	roll	$12, %edi
	addl	%edi, %ebp
	xorl	%ebp, %esi
	movl	%ebp, 24(%esp)
	roll	$8, %esi
	addl	%esi, %ecx
	movl	%esi, 28(%esp)
	xorl	%ecx, %edi
	movl	%ecx, 32(%esp)
	movl	40(%esp), %ecx
	roll	$7, %edi
	movl	%edi, 60(%esp)
	movl	12(%esp), %edi
	leal	(%edi,%ecx), %esi
	xorl	%esi, %ebx
	roll	$16, %ebx
	addl	%ebx, %eax
	xorl	%eax, %ecx
	roll	$12, %ecx
	leal	(%esi,%ecx), %edi
	movl	56(%esp), %esi
	xorl	%edi, %ebx
	movl	%edi, 12(%esp)
	movl	(%esp), %edi
	roll	$8, %ebx
	addl	%ebx, %eax
	movl	%ebx, 16(%esp)
	movl	4(%esp), %ebx
	xorl	%eax, %ecx
	movl	%eax, 20(%esp)
	movl	36(%esp), %eax
	roll	$7, %ecx
	addl	%eax, %ebx
	xorl	%ebx, %edx
	roll	$16, %edx
	addl	%edx, %esi
	xorl	%esi, %eax
	roll	$12, %eax
	addl	%eax, %ebx
	xorl	%ebx, %edx
	movl	%ebx, 4(%esp)
	roll	$8, %edx
	addl	%edx, %esi
	movl	%edx, 8(%esp)
	xorl	%esi, %eax
	movl	%eax, %edx
	movl	44(%esp), %eax
	roll	$7, %edx
	leal	(%edi,%eax), %ebp
	movl	52(%esp), %edi
	xorl	%ebp, %edi
	movl	%edi, %ebx
	movl	48(%esp), %edi
	roll	$16, %ebx
	addl	%ebx, %edi
	xorl	%edi, %eax
	roll	$12, %eax
	addl	%eax, %ebp
	xorl	%ebp, %ebx
	movl	%ebp, (%esp)
	movl	24(%esp), %ebp
	roll	$8, %ebx
	addl	%ecx, %ebp
	addl	%ebx, %edi
	xorl	%ebp, %ebx
	xorl	%edi, %eax
	roll	$16, %ebx
	roll	$7, %eax
	addl	%ebx, %esi
	xorl	%esi, %ecx
	roll	$12, %ecx
	addl	%ecx, %ebp
	xorl	%ebp, %ebx
	movl	%ebp, 24(%esp)
	roll	$8, %ebx
	leal	(%esi,%ebx), %ebp
	movl	28(%esp), %esi
	movl	%ebx, 52(%esp)
	xorl	%ebp, %ecx
	movl	%ebp, 56(%esp)
	movl	16(%esp), %ebx
	movl	%ecx, %ebp
	roll	$7, %ebp
	movl	%ebp, 40(%esp)
	movl	12(%esp), %ebp
	leal	(%edx,%ebp), %ecx
	xorl	%ecx, %esi
	roll	$16, %esi
	addl	%esi, %edi
	xorl	%edi, %edx
	roll	$12, %edx
	leal	(%ecx,%edx), %ebp
	xorl	%ebp, %esi
	movl	%ebp, 12(%esp)
	roll	$8, %esi
	leal	(%edi,%esi), %ebp
	xorl	%ebp, %edx
	movl	%ebp, 48(%esp)
	movl	%edx, %ebp
	roll	$7, %ebp
	movl	%ebp, 36(%esp)
	movl	4(%esp), %ebp
	movl	32(%esp), %ecx
	movl	60(%esp), %edi
	leal	(%eax,%ebp), %edx
	xorl	%edx, %ebx
	roll	$16, %ebx
	addl	%ebx, %ecx
	xorl	%ecx, %eax
	roll	$12, %eax
	leal	(%edx,%eax), %ebp
	movl	8(%esp), %edx
	xorl	%ebp, %ebx
	movl	%ebp, 4(%esp)
	roll	$8, %ebx
	addl	%ebx, %ecx
	xorl	%ecx, %eax
	movl	%eax, %ebp
	movl	20(%esp), %eax
	roll	$7, %ebp
	movl	%ebp, 44(%esp)
	movl	(%esp), %ebp
	addl	%edi, %ebp
	xorl	%ebp, %edx
	roll	$16, %edx
	addl	%edx, %eax
	xorl	%eax, %edi
	roll	$12, %edi
	addl	%edi, %ebp
	xorl	%ebp, %edx
	movl	%ebp, (%esp)
	roll	$8, %edx
	addl	%edx, %eax
	xorl	%eax, %edi
	roll	$7, %edi
	subl	$1, 64(%esp)
	jne	L283
	movl	%eax, 8(%esp)
	movl	24(%esp), %eax
	movl	%esi, 120(%esp)
	movl	68(%esp), %ebp
	movl	%eax, 72(%esp)
	movl	52(%esp), %eax
	movl	%ebx, 124(%esp)
	movl	%eax, 132(%esp)
	movl	56(%esp), %eax
	movl	%ecx, 104(%esp)
	movl	%eax, 112(%esp)
	movl	40(%esp), %eax
	movl	%edi, 88(%esp)
	movl	%eax, 92(%esp)
	movl	12(%esp), %eax
	movl	%edx, 128(%esp)
	leal	72(%esp), %edx
	movl	%eax, 76(%esp)
	movl	48(%esp), %eax
	movl	%eax, 116(%esp)
	movl	36(%esp), %eax
	movl	%eax, 96(%esp)
	movl	4(%esp), %eax
	movl	%eax, 80(%esp)
	movl	44(%esp), %eax
	movl	%eax, 100(%esp)
	movl	(%esp), %eax
	movl	%eax, 84(%esp)
	movl	8(%esp), %eax
	movl	%eax, 108(%esp)
	movl	64(%esp), %eax
	.p2align 5
	.p2align 4
	.p2align 3
L284:
	movl	0(%ebp,%eax,4), %ecx
	addl	(%edx,%eax,4), %ecx
	movl	%ecx, 64(%ebp,%eax,4)
	addl	$1, %eax
	cmpl	$16, %eax
	jne	L284
	addl	$1, 48(%ebp)
	movl	$16, 128(%ebp)
	jne	L282
	addl	$1, 52(%ebp)
	jne	L282
	addl	$1, 56(%ebp)
L282:
	addl	$136, %esp
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
LFE13:
	.p2align 4
	.def	__ZL33mi_segment_remove_from_free_queueP12mi_segment_sP17mi_segments_tld_s;	.scl	3;	.type	32;	.endef
__ZL33mi_segment_remove_from_free_queueP12mi_segment_sP17mi_segments_tld_s:
LFB15:
	.cfi_startproc
	movl	84(%eax), %ecx
	testl	%ecx, %ecx
	je	L291
	cmpl	$1, %ecx
	jne	L304
	addl	$8, %edx
L291:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	36(%eax), %ecx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	movl	32(%eax), %ebx
	testl	%ebx, %ebx
	je	L306
	testl	%ecx, %ecx
	je	L299
	movl	%ebx, 32(%ecx)
	movl	36(%eax), %ecx
L299:
	movl	%ecx, 36(%ebx)
	cmpl	(%edx), %eax
	je	L307
L297:
	cmpl	4(%edx), %eax
	je	L308
L298:
	movl	$0, 32(%eax)
	movl	$0, 36(%eax)
L289:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L304:
	ret
	.p2align 4,,10
	.p2align 3
L306:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -12
	.cfi_offset 5, -8
	testl	%ecx, %ecx
	je	L309
	movl	$0, 32(%ecx)
	cmpl	(%edx), %eax
	jne	L297
L307:
	movl	32(%eax), %ebx
L295:
	movl	%ebx, (%edx)
	cmpl	4(%edx), %eax
	jne	L298
L308:
	movl	36(%eax), %ecx
	movl	%ecx, 4(%edx)
	jmp	L298
	.p2align 4,,10
	.p2align 3
L309:
	cmpl	(%edx), %eax
	jne	L289
	jmp	L295
	.cfi_endproc
LFE15:
	.p2align 4
	.def	__ZL20mi_page_purge_removeP9mi_page_sP17mi_segments_tld_s;	.scl	3;	.type	32;	.endef
__ZL20mi_page_purge_removeP9mi_page_sP17mi_segments_tld_s:
LFB17:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%edx, %ecx
	movl	40(%eax), %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	movl	36(%eax), %ebx
	testl	%ebx, %ebx
	je	L322
	testl	%edx, %edx
	je	L317
	movl	%ebx, 36(%edx)
	movl	40(%eax), %edx
L317:
	movl	%edx, 40(%ebx)
L313:
	cmpl	%eax, 20(%ecx)
	je	L323
L315:
	cmpl	%eax, 16(%ecx)
	je	L324
L316:
	movl	$0, 36(%eax)
	movl	$0, 40(%eax)
	movl	$0, 8(%eax)
L310:
	movl	-4(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L322:
	.cfi_restore_state
	testl	%edx, %edx
	je	L325
	movl	$0, 36(%edx)
	cmpl	%eax, 20(%ecx)
	jne	L315
L323:
	movl	40(%eax), %edx
	movl	%edx, 20(%ecx)
	cmpl	%eax, 16(%ecx)
	jne	L316
L324:
	movl	36(%eax), %edx
	movl	%edx, 16(%ecx)
	jmp	L316
	.p2align 4,,10
	.p2align 3
L325:
	cmpl	16(%ecx), %eax
	je	L313
	cmpl	20(%ecx), %eax
	jne	L310
	jmp	L313
	.cfi_endproc
LFE17:
	.p2align 4
	.def	__Z22_mi_segment_page_startPK12mi_segment_sPK9mi_page_sPj;	.scl	3;	.type	32;	.endef
__Z22_mi_segment_page_startPK12mi_segment_sPK9mi_page_sPj:
LFB19:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%edx, %ebp
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
	movzbl	(%edx), %esi
	cmpl	$3, 84(%eax)
	je	L334
	movl	80(%eax), %ecx
	movl	$1, %ebx
	sall	%cl, %ebx
L328:
	movl	%esi, %ecx
	movl	%esi, %edx
	movzbl	%cl, %ecx
	imull	%ebx, %ecx
	addl	%eax, %ecx
	testb	%dl, %dl
	jne	L329
	movl	60(%eax), %eax
	addl	%eax, %ecx
	subl	%eax, %ebx
L329:
	movl	20(%ebp), %esi
	leal	-1(%esi), %eax
	cmpl	$65535, %eax
	ja	L332
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%esi
	movl	%esi, %eax
	subl	%edx, %eax
	cmpl	%esi, %eax
	jnb	L332
	leal	(%esi,%eax), %ebp
	addl	%ecx, %eax
	cmpl	%ebp, %ebx
	cmovnb	%eax, %ecx
	movl	%ebx, %eax
	subl	%esi, %eax
	addl	%edx, %eax
	cmpl	%ebp, %ebx
	cmovnb	%eax, %ebx
L332:
	movl	%ebx, (%edi)
	movl	%ecx, %eax
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
L334:
	.cfi_restore_state
	movl	24(%eax), %ebx
	jmp	L328
	.cfi_endproc
LFE19:
	.p2align 4
	.def	__ZL19mi_page_extend_freeP9mi_heap_sP9mi_page_sP8mi_tld_s.part.0.isra.0;	.scl	3;	.type	32;	.endef
__ZL19mi_page_extend_freeP9mi_heap_sP9mi_page_sP8mi_tld_s.part.0.isra.0:
LFB23:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movzwl	4(%eax), %ecx
	movl	20(%eax), %edi
	movzwl	2(%eax), %eax
	subl	%eax, %ecx
	movl	$1, %eax
	cmpl	$4095, %edi
	ja	L336
	movl	$4096, %eax
	xorl	%edx, %edx
	divl	%edi
L336:
	cmpl	%eax, %ecx
	movl	%edi, %edx
	cmovbe	%ecx, %eax
	movl	%eax, %ebx
	movl	%eax, %ecx
	movl	%esi, %eax
	call	__ZL24mi_page_free_list_extendP9mi_page_sjjP10mi_stats_s.isra.0
	addw	%bx, 2(%esi)
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
LFE23:
	.p2align 4
	.def	__ZL30mi_page_usable_aligned_size_ofPK9mi_page_sPKv;	.scl	3;	.type	32;	.endef
__ZL30mi_page_usable_aligned_size_ofPK9mi_page_sPKv:
LFB24:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	movl	%edx, %eax
	movzbl	18(%ebx), %ecx
	subl	24(%ebx), %eax
	movl	20(%ebx), %ebx
	testb	%cl, %cl
	je	L341
	movl	$-1, %edx
	sall	%cl, %edx
	notl	%edx
	andl	%eax, %edx
	movl	%ebx, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	subl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L341:
	.cfi_restore_state
	xorl	%edx, %edx
	divl	%ebx
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	subl	%edx, %eax
	ret
	.cfi_endproc
LFE24:
	.p2align 4
	.def	__ZL21mi_bitmap_mask_acrossjjjPjS_S_.isra.0;	.scl	3;	.type	32;	.endef
__ZL21mi_bitmap_mask_acrossjjjPjS_S_.isra.0:
LFB26:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, (%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%edx, %eax
	andl	$31, %ebx
	movl	%esi, 4(%esp)
	.cfi_offset 6, -16
	movl	%ecx, %esi
	addl	%ebx, %edx
	movl	%edi, 8(%esp)
	cmpl	$32, %edx
	.cfi_offset 7, -12
	ja	L345
	cmpl	$31, %eax
	ja	L348
	testl	%eax, %eax
	je	L349
	movl	%eax, %ecx
	movl	$1, %edx
	xorl	%edi, %edi
	xorl	%eax, %eax
	sall	%cl, %edx
	movl	%ebx, %ecx
	xorl	%ebx, %ebx
	subl	$1, %edx
	sall	%cl, %edx
L346:
	movl	%edx, (%esi)
	movl	20(%esp), %edx
	movl	%edi, (%edx)
	movl	24(%esp), %edx
	movl	%eax, (%edx)
	movl	%ebx, %eax
	movl	4(%esp), %esi
	movl	(%esp), %ebx
	movl	8(%esp), %edi
	addl	$16, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L349:
	.cfi_restore_state
	xorl	%edx, %edx
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	jmp	L346
	.p2align 4,,10
	.p2align 3
L348:
	movl	$-1, %edx
	xorl	%edi, %edi
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	jmp	L346
	.p2align 4,,10
	.p2align 3
L345:
	movl	%ebx, %ecx
	movl	%ebp, 12(%esp)
	.cfi_offset 5, -8
	movl	$1, %ebp
	leal	-1(%ebx), %edi
	negl	%ecx
	leal	-32(%ebx,%eax), %eax
	movl	$-1, %edx
	sall	%cl, %ebp
	movl	%ebx, %ecx
	movl	%eax, %ebx
	subl	$1, %ebp
	sall	%cl, %ebp
	cmpl	$31, %edi
	movl	$-1, %edi
	cmovbe	%ebp, %edx
	shrl	$5, %ebx
	andl	$31, %eax
	je	L354
	movl	%eax, %ecx
	movl	$1, %ebp
	sall	%cl, %ebp
	leal	-1(%ebp), %eax
	movl	12(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L346
	.p2align 4,,10
	.p2align 3
L354:
	.cfi_restore_state
	movl	12(%esp), %ebp
	.cfi_restore 5
	jmp	L346
	.cfi_endproc
LFE26:
	.p2align 4
	.def	__Z22_mi_os_good_alloc_sizej;	.scl	3;	.type	32;	.endef
__Z22_mi_os_good_alloc_sizej:
LFB27:
	.cfi_startproc
	cmpl	$524287, %eax
	ja	L356
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	__ZL16mi_os_mem_config, %ebx
	movl	%ebx, %edx
	notl	%edx
	cmpl	%edx, %eax
	jnb	L355
	leal	-1(%ebx), %ecx
	testl	%ebx, %ecx
	je	L370
	addl	%eax, %ecx
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%ebx
	movl	%ecx, %eax
	subl	%edx, %eax
L355:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L356:
	cmpl	$2097151, %eax
	ja	L371
	movl	$-65536, %edx
	movl	$65535, %ecx
L367:
	addl	%ecx, %eax
	andl	%edx, %eax
L366:
	ret
	.p2align 4,,10
	.p2align 3
L371:
	cmpl	$8388607, %eax
	jbe	L363
	cmpl	$33554431, %eax
	jbe	L364
	cmpl	$-4194306, %eax
	ja	L366
	movl	$-4194304, %edx
	movl	$4194303, %ecx
	jmp	L367
	.p2align 4,,10
	.p2align 3
L370:
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	negl	%ebx
	addl	%ecx, %eax
	andl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L363:
	movl	$-262144, %edx
	movl	$262143, %ecx
	jmp	L367
	.p2align 4,,10
	.p2align 3
L364:
	movl	$-1048576, %edx
	movl	$1048575, %ecx
	jmp	L367
	.cfi_endproc
LFE27:
	.p2align 4
	.def	__ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s;	.scl	3;	.type	32;	.endef
__ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s:
LFB29:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%edx, %eax
	movl	8(%edx), %edx
	cmpl	$512, %edx
	ja	L372
	movl	%ebp, 24(%esp)
	movl	$__mi_page_empty, %ecx
	movl	%edi, 20(%esp)
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	(%eax), %edi
	testl	%edi, %edi
	cmove	%ecx, %edi
	addl	$3, %edx
	shrl	$2, %edx
	movl	%edx, %ebp
	cmpl	%edi, 184(%ebx,%edx,4)
	je	L404
	xorl	%ecx, %ecx
	cmpl	$1, %edx
	jbe	L398
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	cmpl	$4, %edx
	jbe	L406
	leal	-1(%edx), %ecx
	leal	3(%edx), %edx
	andl	$-4, %edx
	subl	$1, %edx
	cmpl	$17, %ebp
	cmovnb	%ecx, %edx
	movl	$31, %ecx
	bsrl	%edx, %esi
	xorl	$31, %esi
	subl	%esi, %ecx
	movl	%ecx, (%esp)
	movl	$29, %ecx
	subl	%esi, %ecx
	movzbl	(%esp), %esi
	shrl	%cl, %edx
	andl	$3, %edx
	leal	-3(%edx,%esi,4), %edx
	movb	%dl, (%esp)
L377:
	movl	-4(%eax), %esi
	leal	3(%esi), %edx
	shrl	$2, %edx
	leal	1(%edx), %ecx
	cmpl	$1, %edx
	jbe	L405
	movl	%edi, 8(%esp)
	subl	$12, %eax
	.p2align 4
	.p2align 3
L388:
	cmpl	$4, %edx
	ja	L381
	leal	1(%edx), %ecx
	andl	$-2, %ecx
L382:
	cmpb	%cl, (%esp)
	jne	L387
	leal	700(%ebx), %ecx
	cmpl	%eax, %ecx
	jnb	L387
	movl	-4(%eax), %esi
	subl	$12, %eax
	leal	3(%esi), %ecx
	movl	%ecx, %edx
	shrl	$2, %edx
	cmpl	$7, %ecx
	ja	L388
L387:
	addl	$1, %edx
	movl	8(%esp), %edi
	movl	16(%esp), %esi
	.cfi_restore 6
	cmpl	%ebp, %edx
	cmova	%ebp, %edx
	movl	%edx, %ecx
L398:
	movl	%ebp, %eax
	movl	%edi, 184(%ebx,%ecx,4)
	subl	%ecx, %eax
	addl	$1, %ecx
	cmpl	%ecx, %ebp
	jb	L404
	testb	$1, %al
	je	L389
	movl	%edi, 184(%ebx,%ecx,4)
	addl	$1, %ecx
	cmpl	%ecx, %ebp
	jb	L404
	.p2align 5
	.p2align 4
	.p2align 3
L389:
	movl	%edi, 184(%ebx,%ecx,4)
	movl	%edi, 188(%ebx,%ecx,4)
	addl	$2, %ecx
	cmpl	%ecx, %ebp
	jnb	L389
L404:
	movl	20(%esp), %edi
	.cfi_restore 7
	movl	24(%esp), %ebp
	.cfi_restore 5
L372:
	movl	12(%esp), %ebx
	addl	$28, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L381:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpl	$262144, %edx
	ja	L387
	leal	3(%edx), %esi
	leal	-1(%edx), %ecx
	andl	$-4, %esi
	subl	$1, %esi
	cmpl	$17, %edx
	cmovnb	%ecx, %esi
	movl	$31, %ecx
	bsrl	%esi, %edi
	xorl	$31, %edi
	subl	%edi, %ecx
	movl	%ecx, 4(%esp)
	movl	$29, %ecx
	subl	%edi, %ecx
	movzbl	4(%esp), %edi
	shrl	%cl, %esi
	andl	$3, %esi
	leal	-3(%esi,%edi,4), %ecx
	jmp	L382
	.p2align 4,,10
	.p2align 3
L405:
	movl	16(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L398
	.p2align 4,,10
	.p2align 3
L406:
	.cfi_restore_state
	leal	1(%edx), %edx
	andl	$-2, %edx
	movb	%dl, (%esp)
	jmp	L377
	.cfi_endproc
LFE29:
	.p2align 4
	.def	__ZL24mi_free_block_delayed_mtP9mi_page_sP10mi_block_s;	.scl	3;	.type	32;	.endef
__ZL24mi_free_block_delayed_mtP9mi_page_sP10mi_block_s:
LFB31:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	leal	28(%eax), %ecx
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %ebx
	movl	28(%eax), %eax
L410:
	movl	%eax, %edi
	movl	%eax, %esi
	andl	$-4, %edi
	andl	$3, %esi
	je	L425
	movl	%edi, (%edx)
	movl	%edx, %edi
	orl	%esi, %edi
L409:
	lock cmpxchgl	%edi, (%ecx)
	jne	L410
	testl	%esi, %esi
	je	L426
	popl	%ebx
	.cfi_remember_state
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
L425:
	.cfi_restore_state
	orl	$1, %edi
	jmp	L409
	.p2align 4,,10
	.p2align 3
L426:
	movl	32(%ebx), %eax
	testl	%eax, %eax
	jne	L427
L412:
	movl	28(%ebx), %eax
L414:
	movl	%eax, %edx
	andl	$-4, %edx
	orl	$2, %edx
	lock cmpxchgl	%edx, (%ecx)
	jne	L414
	popl	%ebx
	.cfi_remember_state
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
L427:
	.cfi_restore_state
	leal	4(%eax), %esi
	movl	4(%eax), %eax
L413:
	movl	%eax, (%edx)
	lock cmpxchgl	%edx, (%esi)
	je	L412
	jmp	L413
	.cfi_endproc
LFE31:
	.p2align 4
	.def	__Z27_mi_arena_field_cursor_initP9mi_heap_sP12mi_subproc_sbP23mi_arena_field_cursor_s;	.scl	3;	.type	32;	.endef
__Z27_mi_arena_field_cursor_initP9mi_heap_sP12mi_subproc_sbP23mi_arena_field_cursor_s:
LFB32:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -20
	movl	%ecx, %ebx
	movl	24(%esp), %ecx
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	$0, 12(%ecx)
	movl	%edx, 16(%ecx)
	movb	%bl, 20(%ecx)
	movb	$0, 21(%ecx)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	(%edx), %edi
	movl	4(%edx), %esi
	movl	__ZL14mi_arena_count, %ebx
	testl	%eax, %eax
	je	L429
	movl	12(%eax), %edx
	testl	%edx, %edx
	je	L430
	jle	L448
	leal	-1(%edx), %edi
	movl	%edx, %ebx
	xorl	%esi, %esi
L432:
	movl	%edi, 4(%ecx)
	movl	%ebx, 8(%ecx)
	movl	%esi, (%ecx)
	movl	4(%esp), %ebx
	movl	8(%esp), %esi
	movl	12(%esp), %edi
	addl	$20, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L430:
	.cfi_restore_state
	testl	%ebx, %ebx
	je	L440
	cmpl	%edi, %esi
	jnb	L440
	movl	%ebp, 16(%esp)
	.cfi_offset 5, -8
	movl	%eax, %edi
	movl	156(%eax), %eax
	testl	%eax, %eax
	jle	L436
	movl	$16, %edx
	leal	-1(%eax), %ebp
	subl	%eax, %edx
L437:
	addl	$16, %edx
	movl	28(%edi,%edx,4), %eax
	movl	$0, 28(%edi,%edx,4)
	xorl	%edx, %edx
	movl	%ebp, 156(%edi)
	movl	16(%esp), %ebp
	.cfi_restore 5
	divl	%ebx
	movl	%edx, %edi
	addl	%edx, %ebx
	jmp	L432
	.p2align 4,,10
	.p2align 3
L429:
	cmpl	%edi, %esi
	jnb	L440
	xorl	%edi, %edi
	testl	%ebx, %ebx
	jne	L432
L440:
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	jmp	L432
	.p2align 4,,10
	.p2align 3
L448:
	movl	$132, %edi
	movl	$133, %ebx
	xorl	%esi, %esi
	jmp	L432
	.p2align 4,,10
	.p2align 3
L436:
	.cfi_offset 5, -8
	leal	28(%edi), %eax
	movl	%ecx, 24(%esp)
	movl	$15, %ebp
	movl	%edx, (%esp)
	call	__ZL12chacha_blockP15mi_random_cxt_s
	movl	24(%esp), %ecx
	movl	(%esp), %edx
	jmp	L437
	.cfi_endproc
LFE32:
	.p2align 4
	.def	__ZL28mi_bitmap_is_claimedx_acrossPSt6atomicIjEjjjPb.constprop.0.isra.0;	.scl	3;	.type	32;	.endef
__ZL28mi_bitmap_is_claimedx_acrossPSt6atomicIjEjjjPb.constprop.0.isra.0:
LFB38:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	%esi, 24(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	leal	16(%esp), %eax
	movl	%eax, 4(%esp)
	leal	12(%esp), %eax
	movl	%eax, (%esp)
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -20
	movl	%ecx, %ebx
	leal	8(%esp), %ecx
	movl	%ebx, %eax
	shrl	$5, %ebx
	movl	%edi, 28(%esp)
	.cfi_offset 7, -12
	call	__ZL21mi_bitmap_mask_acrossjjjPjS_S_.isra.0
	leal	(%esi,%ebx,4), %edx
	movl	%eax, %ecx
	movl	8(%esp), %eax
	movl	(%edx), %esi
	leal	4(%edx), %edi
	andl	%eax, %esi
	cmpl	%eax, %esi
	sete	%dl
	testl	%ecx, %ecx
	je	L450
	movl	%ebp, 32(%esp)
	.cfi_offset 5, -8
	leal	(%edi,%ecx,4), %esi
	leal	-1(%ecx), %ebp
	movl	12(%esp), %ecx
	movl	%edi, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L451:
	movl	(%eax), %ebx
	andl	%ecx, %ebx
	cmpl	%ecx, %ebx
	sete	%bl
	addl	$4, %eax
	andl	%ebx, %edx
	cmpl	%esi, %eax
	jne	L451
	leal	4(%edi,%ebp,4), %edi
	movl	32(%esp), %ebp
	.cfi_restore 5
L450:
	movl	16(%esp), %eax
	testl	%eax, %eax
	jne	L458
L449:
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	movl	%edx, %eax
	movl	28(%esp), %edi
	addl	$36, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L458:
	.cfi_restore_state
	movl	16(%esp), %eax
	movl	(%edi), %ecx
	andl	%eax, %ecx
	cmpl	%eax, %ecx
	sete	%al
	andl	%eax, %edx
	jmp	L449
	.cfi_endproc
LFE38:
	.p2align 4
	.def	__ZL20mi_page_queue_removeP15mi_page_queue_sP9mi_page_s;	.scl	3;	.type	32;	.endef
__ZL20mi_page_queue_removeP15mi_page_queue_sP9mi_page_s:
LFB39:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%edx, %ecx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$4, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	32(%edx), %ebx
	movl	40(%edx), %edx
	testl	%edx, %edx
	je	L460
	movl	36(%ecx), %esi
	movl	%esi, 36(%edx)
L460:
	movl	36(%ecx), %edx
	testl	%edx, %edx
	je	L461
	movl	40(%ecx), %esi
	movl	%esi, 40(%edx)
L461:
	cmpl	%ecx, 4(%eax)
	je	L471
	cmpl	%ecx, (%eax)
	je	L472
L463:
	subl	$1, 164(%ebx)
	movl	$0, 36(%ecx)
	andb	$-2, 6(%ecx)
	movl	$0, 40(%ecx)
	addl	$4, %esp
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
L471:
	.cfi_restore_state
	movl	40(%ecx), %edx
	movl	%edx, 4(%eax)
	cmpl	%ecx, (%eax)
	jne	L463
L472:
	movl	36(%ecx), %edx
	movl	%ecx, (%esp)
	movl	%edx, (%eax)
	movl	%eax, %edx
	movl	%ebx, %eax
	call	__ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s
	movl	(%esp), %ecx
	jmp	L463
	.cfi_endproc
LFE39:
	.p2align 4
	.def	__ZL26mi_page_queue_enqueue_fromP15mi_page_queue_sS0_P9mi_page_s;	.scl	3;	.type	32;	.endef
__ZL26mi_page_queue_enqueue_fromP15mi_page_queue_sS0_P9mi_page_s:
LFB40:
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
	movl	%eax, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	32(%ecx), %esi
	movl	40(%ecx), %eax
	testl	%eax, %eax
	je	L474
	movl	36(%ecx), %edi
	movl	%edi, 36(%eax)
L474:
	movl	36(%ecx), %eax
	testl	%eax, %eax
	je	L475
	movl	40(%ecx), %edi
	movl	%edi, 40(%eax)
L475:
	cmpl	%ecx, 4(%edx)
	je	L487
	cmpl	%ecx, (%edx)
	je	L488
L477:
	movl	4(%ebx), %eax
	movl	$0, 36(%ecx)
	movl	%eax, 40(%ecx)
	movl	4(%ebx), %eax
	testl	%eax, %eax
	je	L478
	movl	%ecx, 36(%eax)
	movl	%ecx, 4(%ebx)
L479:
	movzbl	6(%ecx), %eax
	cmpl	$1048584, 8(%ebx)
	sete	%dl
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, 6(%ecx)
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
L487:
	.cfi_restore_state
	movl	40(%ecx), %eax
	movl	%eax, 4(%edx)
	cmpl	%ecx, (%edx)
	jne	L477
L488:
	movl	36(%ecx), %eax
	movl	%ecx, (%esp)
	movl	%eax, (%edx)
	movl	%esi, %eax
	call	__ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s
	movl	(%esp), %ecx
	jmp	L477
	.p2align 4,,10
	.p2align 3
L478:
	movl	%ecx, (%ebx)
	movl	%ebx, %edx
	movl	%esi, %eax
	movl	%ecx, 4(%ebx)
	movl	%ecx, (%esp)
	call	__ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s
	movl	(%esp), %ecx
	jmp	L479
	.cfi_endproc
LFE40:
	.p2align 4
	.def	__Z15_mi_page_unfullP9mi_page_s;	.scl	3;	.type	32;	.endef
__Z15_mi_page_unfullP9mi_page_s:
LFB41:
	.cfi_startproc
	movzbl	6(%eax), %edx
	testb	$1, %dl
	jne	L503
	ret
	.p2align 4,,10
	.p2align 3
L503:
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	andl	$-2, %edx
	movl	%ebp, 12(%esp)
	movl	%ebx, (%esp)
	.cfi_offset 5, -8
	.cfi_offset 3, -20
	movl	32(%eax), %ebx
	movb	%dl, 6(%eax)
	leal	1588(%ebx), %ebp
	testb	$8, 1(%eax)
	jne	L502
	movl	20(%eax), %ecx
	leal	3(%ecx), %edx
	movl	%edx, %ecx
	shrl	$2, %ecx
	cmpl	$7, %edx
	jbe	L504
	cmpl	$4, %ecx
	jbe	L505
	cmpl	$262144, %ecx
	ja	L502
	leal	3(%ecx), %edx
	movl	%esi, 4(%esp)
	.cfi_offset 6, -16
	leal	-1(%ecx), %esi
	andl	$-4, %edx
	movl	%edi, 8(%esp)
	.cfi_offset 7, -12
	movl	$29, %edi
	subl	$1, %edx
	cmpl	$17, %ecx
	cmovnb	%esi, %edx
	movl	$31, %esi
	bsrl	%edx, %ecx
	xorl	$31, %ecx
	subl	%ecx, %edi
	subl	%ecx, %esi
	movl	%edi, %ecx
	movl	8(%esp), %edi
	.cfi_restore 7
	shrl	%cl, %edx
	andl	$3, %edx
	leal	-3(%edx,%esi,4), %edx
	movl	4(%esp), %esi
	.cfi_restore 6
	movzbl	%dl, %edx
	leal	(%edx,%edx,2), %edx
	leal	700(%ebx,%edx,4), %ebx
	jmp	L491
	.p2align 4,,10
	.p2align 3
L504:
	addl	$712, %ebx
L491:
	orb	$1, 6(%eax)
	movl	%eax, %ecx
	movl	%ebp, %edx
	movl	%ebx, %eax
	movl	12(%esp), %ebp
	movl	(%esp), %ebx
	addl	$16, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	__ZL26mi_page_queue_enqueue_fromP15mi_page_queue_sS0_P9mi_page_s
	.p2align 4,,10
	.p2align 3
L502:
	.cfi_restore_state
	addl	$1576, %ebx
	jmp	L491
	.p2align 4,,10
	.p2align 3
L505:
	addl	$1, %ecx
	andl	$254, %ecx
	leal	(%ecx,%ecx,2), %edx
	leal	700(%ebx,%edx,4), %ebx
	jmp	L491
	.cfi_endproc
LFE41:
	.p2align 4
	.def	__Z17_mi_deferred_freeP9mi_heap_sb;	.scl	3;	.type	32;	.endef
__Z17_mi_deferred_freeP9mi_heap_sb:
LFB44:
	.cfi_startproc
	movl	(%eax), %ecx
	addl	$1, (%ecx)
	adcl	$0, 4(%ecx)
	movl	__ZL13deferred_free, %ecx
	testl	%ecx, %ecx
	je	L512
	movl	(%eax), %ecx
	cmpb	$0, 8(%ecx)
	je	L515
L512:
	ret
	.p2align 4,,10
	.p2align 3
L515:
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movzbl	%dl, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movb	$1, 8(%ecx)
	movl	__ZL13deferred_free, %ecx
	movl	__ZL12deferred_arg, %ebx
	movl	%eax, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	(%eax), %esi
	movl	(%esi), %ebx
	movl	4(%esi), %esi
	movl	%edx, (%esp)
	movl	%ebx, 4(%esp)
	movl	%esi, 8(%esp)
	call	*%ecx
	movl	16(%esp), %eax
	movl	(%eax), %eax
	movb	$0, 8(%eax)
	addl	$20, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE44:
	.p2align 4
	.def	__Z25_mi_bitmap_unclaim_acrossPSt6atomicIjEjjj.isra.0;	.scl	3;	.type	32;	.endef
__Z25_mi_bitmap_unclaim_acrossPSt6atomicIjEjjj.isra.0:
LFB46:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	leal	24(%esp), %eax
	leal	16(%esp), %ecx
	movl	%eax, 4(%esp)
	leal	20(%esp), %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	shrl	$5, %esi
	leal	(%edi,%esi,4), %edi
	leal	4(%edi), %ebp
	call	__ZL21mi_bitmap_mask_acrossjjjPjS_S_.isra.0
	movl	16(%esp), %ecx
	movl	%eax, %ebx
	movl	(%edi), %eax
	notl	%ecx
L517:
	movl	%eax, %esi
	movl	%eax, %edx
	andl	%ecx, %esi
	lock cmpxchgl	%esi, (%edi)
	jne	L517
	notl	%edx
	testl	%edx, 16(%esp)
	sete	%al
	movl	%eax, %esi
	testl	%ebx, %ebx
	je	L518
	leal	-1(%ebx), %eax
	movl	%edi, 12(%esp)
	movl	20(%esp), %ecx
	leal	4(%edi), %edx
	movl	%eax, 8(%esp)
	leal	4(%edi,%ebx,4), %ebp
	.p2align 4
	.p2align 3
L520:
	movl	(%edx), %eax
	notl	%ecx
L519:
	movl	%eax, %edi
	movl	%eax, %ebx
	andl	%ecx, %edi
	lock cmpxchgl	%edi, (%edx)
	jne	L519
	movl	20(%esp), %ecx
	notl	%ebx
	testl	%ecx, %ebx
	sete	%al
	addl	$4, %edx
	andl	%eax, %esi
	cmpl	%ebp, %edx
	jne	L520
	movl	12(%esp), %edi
	movl	8(%esp), %eax
	leal	8(%edi,%eax,4), %ebp
L518:
	movl	24(%esp), %eax
	testl	%eax, %eax
	jne	L537
	addl	$28, %esp
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
L537:
	.cfi_restore_state
	notl	%eax
	movl	%eax, %edx
	movl	0(%ebp), %eax
L522:
	movl	%eax, %ebx
	movl	%eax, %ecx
	andl	%edx, %ebx
	lock cmpxchgl	%ebx, 0(%ebp)
	jne	L522
	notl	%ecx
	testl	%ecx, 24(%esp)
	sete	%al
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	andl	%eax, %esi
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
LFE46:
	.p2align 4
	.def	__ZL35mi_arena_segment_os_clear_abandonedP12mi_segment_sb;	.scl	3;	.type	32;	.endef
__ZL35mi_arena_segment_os_clear_abandonedP12mi_segment_sb:
LFB47:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%eax, %ecx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ebx, -12(%ebp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	%edi, -4(%ebp)
	movl	28(%eax), %edx
	testb	%bl, %bl
	.cfi_offset 7, -12
	jne	L539
L543:
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	movl	68(%ecx), %esi
	movl	72(%ecx), %eax
	movl	%esi, %edi
	orl	%eax, %edi
	je	L560
	testl	%eax, %eax
	je	L546
	movl	%esi, 68(%eax)
	testl	%esi, %esi
	je	L545
L547:
	movl	%eax, 72(%esi)
L548:
	movl	$0, 68(%ecx)
	movl	$0, 72(%ecx)
	lock subl	$1, (%edx)
	lock subl	$1, 4(%edx)
	movl	$1, %eax
	testb	%bl, %bl
	je	L559
/APP
 # 2248 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:24, %eax 
 # 0 "" 2
/NO_APP
	movl	%eax, 76(%ecx)
L549:
	movl	28(%ecx), %eax
	addl	$8, %eax
	movl	%eax, (%esp)
	call	*__imp__LeaveCriticalSection@4
	movl	%ebx, %eax
	movl	-8(%ebp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	-12(%ebp), %ebx
	movl	-4(%ebp), %edi
	subl	$4, %esp
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L560:
	.cfi_restore_state
	cmpl	56(%edx), %ecx
	je	L561
	xorl	%eax, %eax
	testb	%bl, %bl
	jne	L562
L559:
	movl	-8(%ebp), %esi
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
L539:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	%eax, -20(%ebp)
	leal	8(%edx), %eax
	movl	%edx, -16(%ebp)
	movl	%eax, (%esp)
	call	*__imp__TryEnterCriticalSection@4
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %ecx
	subl	$4, %esp
	testl	%eax, %eax
	movl	$0, %eax
	jne	L543
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
L561:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$0, 56(%edx)
L545:
	movl	%eax, 60(%edx)
	jmp	L548
	.p2align 4,,10
	.p2align 3
L546:
	movl	%esi, 56(%edx)
	jmp	L547
	.p2align 4,,10
	.p2align 3
L562:
	xorl	%ebx, %ebx
	jmp	L549
	.cfi_endproc
LFE47:
	.p2align 4
	.def	__ZL10mi_out_bufPKcPv;	.scl	3;	.type	32;	.endef
__ZL10mi_out_bufPKcPv:
LFB49:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	24(%esp), %edx
	testl	%edx, %edx
	je	L563
	cmpl	$16383, __ZL7out_len
	jbe	L571
L563:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L571:
	.cfi_restore_state
	cmpb	$0, (%edx)
	je	L563
	leal	1(%edx), %eax
	movl	%eax, (%esp)
	call	_strlen
	leal	1(%eax), %ecx
	movl	%ecx, %eax
	lock xaddl	%eax, __ZL7out_len
	cmpl	$16383, %eax
	ja	L563
	movl	%esi, 12(%esp)
	.cfi_offset 6, -12
	movl	$16383, %esi
	movl	24(%esp), %edx
	movl	%edi, 16(%esp)
	.cfi_offset 7, -8
	leal	(%eax,%ecx), %edi
	subl	%eax, %esi
	cmpl	$16384, %edi
	cmovnb	%esi, %ecx
	addl	$__ZL7out_buf, %eax
	cmpb	$0, __mi_cpu_has_fsrm
	je	L566
	movl	%eax, %edi
	movl	%edx, %esi
/APP
 # 2169 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	rep movsb
 # 0 "" 2
/NO_APP
	movl	12(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	16(%esp), %edi
	.cfi_restore 7
	jmp	L563
	.p2align 4,,10
	.p2align 3
L566:
	.cfi_restore_state
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movl	12(%esp), %esi
	.cfi_restore 6
	movl	16(%esp), %edi
	.cfi_restore 7
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE49:
	.p2align 4
	.def	__Z23_mi_bitmap_claim_acrossPSt6atomicIjEjjjPb.isra.0;	.scl	3;	.type	32;	.endef
__Z23_mi_bitmap_claim_acrossPSt6atomicIjEjjjPb.isra.0:
LFB55:
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
	movl	%ecx, %ebx
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	leal	28(%esp), %eax
	leal	20(%esp), %ecx
	movl	%eax, 4(%esp)
	leal	24(%esp), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	shrl	$5, %ebx
	leal	(%esi,%ebx,4), %ebx
	call	__ZL21mi_bitmap_mask_acrossjjjPjS_S_.isra.0
	movl	(%ebx), %edi
	leal	4(%ebx), %edx
	movl	%eax, %esi
	movl	%edi, %eax
	movl	%esi, %edi
L573:
	movl	20(%esp), %esi
	movl	%eax, %ecx
	orl	%eax, %esi
	lock cmpxchgl	%esi, (%ebx)
	jne	L573
	movl	%edi, %eax
	movl	20(%esp), %edi
	andl	%edi, %ecx
	movl	%ecx, %ebp
	sete	%cl
	cmpl	%ebp, %edi
	movl	%ecx, %esi
	setne	%cl
	movl	%ecx, %edi
	testl	%eax, %eax
	je	L574
	leal	-1(%eax), %ebp
	leal	4(%ebx,%eax,4), %eax
	movl	%ebx, 12(%esp)
	movl	24(%esp), %ecx
	movl	%eax, 8(%esp)
	leal	4(%ebx), %edx
	movl	%ebp, 16(%esp)
	.p2align 4
	.p2align 3
L576:
	movl	(%edx), %eax
L575:
	movl	%eax, %ebp
	movl	%eax, %ebx
	orl	%ecx, %ebp
	lock cmpxchgl	%ebp, (%edx)
	jne	L575
	movl	24(%esp), %ecx
	andl	%ecx, %ebx
	sete	%al
	andl	%eax, %esi
	cmpl	%ebx, %ecx
	setne	%al
	addl	$4, %edx
	orl	%eax, %edi
	cmpl	8(%esp), %edx
	jne	L576
	movl	12(%esp), %ebx
	movl	16(%esp), %ebp
	leal	8(%ebx,%ebp,4), %edx
L574:
	movl	28(%esp), %ecx
	testl	%ecx, %ecx
	jne	L597
L577:
	movl	52(%esp), %eax
	testl	%eax, %eax
	je	L572
	movl	52(%esp), %ecx
	movl	%edi, %eax
	movb	%al, (%ecx)
L572:
	addl	$32, %esp
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
L597:
	.cfi_restore_state
	movl	(%edx), %eax
L578:
	movl	%eax, %ebp
	movl	%eax, %ebx
	orl	%ecx, %ebp
	lock cmpxchgl	%ebp, (%edx)
	jne	L578
	movl	28(%esp), %eax
	andl	%eax, %ebx
	sete	%dl
	andl	%edx, %esi
	cmpl	%ebx, %eax
	setne	%al
	orl	%eax, %edi
	jmp	L577
	.cfi_endproc
LFE55:
	.p2align 4
	.def	__Z32_mi_arena_segment_mark_abandonedP12mi_segment_s;	.scl	3;	.type	32;	.endef
__Z32_mi_arena_segment_mark_abandonedP12mi_segment_s:
LFB56:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$8, %esp
	.cfi_def_cfa_offset 20
	movl	$0, 76(%eax)
	cmpl	$6, 16(%eax)
	jne	L606
	movl	4(%eax), %ebx
	movl	(%eax), %edx
	testl	%ebx, %ebx
	leal	-4(,%ebx,4), %ecx
	movl	$528, %ebx
	cmovle	%ebx, %ecx
	movl	__ZL9mi_arenas(%ecx), %ebx
	movl	%edx, %ecx
	shrl	$5, %edx
	andl	$31, %ecx
	movl	28(%eax), %esi
	movl	116(%ebx), %eax
	lock btsl	%ecx, (%eax,%edx,4)
	jnc	L607
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
L607:
	.cfi_restore_state
	lock addl	$1, (%esi)
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
L606:
	.cfi_restore_state
	movl	28(%eax), %ebx
	movl	%eax, 4(%esp)
	leal	8(%ebx), %esi
	movl	%esi, (%esp)
	call	*__imp__EnterCriticalSection@4
	.cfi_def_cfa_offset 16
	movl	60(%ebx), %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	testl	%edx, %edx
	movl	4(%esp), %eax
	je	L600
	movl	%eax, 68(%edx)
L601:
	movl	%eax, 60(%ebx)
	movl	%edx, 72(%eax)
	movl	$0, 68(%eax)
	lock addl	$1, 4(%ebx)
	lock addl	$1, (%ebx)
	movl	%esi, (%esp)
	call	*__imp__LeaveCriticalSection@4
	.cfi_def_cfa_offset 16
	subl	$4, %esp
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
L600:
	.cfi_restore_state
	movl	%eax, 56(%ebx)
	jmp	L601
	.cfi_endproc
LFE56:
	.p2align 4
	.def	__ZL11mi_stat_addP15mi_stat_count_sPKS_x.constprop.0;	.scl	3;	.type	32;	.endef
__ZL11mi_stat_addP15mi_stat_count_sPKS_x.constprop.0:
LFB61:
	.cfi_startproc
	cmpl	%edx, %eax
	je	L624
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%esi, 20(%esp)
	.cfi_offset 6, -12
	movl	%eax, %esi
	movl	%edi, 24(%esp)
	movl	(%edx), %eax
	.cfi_offset 7, -8
	movl	%edx, %edi
	movl	4(%edx), %ecx
	movl	%eax, 8(%esp)
	orl	%ecx, %eax
	movl	%ecx, 12(%esp)
	jne	L610
	movl	8(%edi), %eax
	orl	12(%edi), %eax
	je	L608
L610:
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -16
	movl	(%esi), %eax
	movl	4(%esi), %edx
L611:
	movl	8(%esp), %ecx
	movl	12(%esp), %ebx
	addl	%eax, %ecx
	adcl	%edx, %ebx
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	movl	(%esp), %ebx
	movl	4(%esp), %ecx
	lock cmpxchg8b	(%esi)
	jne	L611
	movl	24(%esi), %eax
	movl	28(%esi), %edx
L612:
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	24(%edi), %ecx
	adcl	28(%edi), %ebx
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	movl	(%esp), %ebx
	movl	4(%esp), %ecx
	lock cmpxchg8b	24(%esi)
	jne	L612
	movl	8(%esi), %eax
	movl	12(%esi), %edx
L613:
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	8(%edi), %ecx
	adcl	12(%edi), %ebx
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	movl	(%esp), %ebx
	movl	4(%esp), %ecx
	lock cmpxchg8b	8(%esi)
	jne	L613
	movl	16(%esi), %eax
	movl	20(%esi), %edx
L614:
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	16(%edi), %ecx
	adcl	20(%edi), %ebx
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	movl	(%esp), %ebx
	movl	4(%esp), %ecx
	lock cmpxchg8b	16(%esi)
	jne	L614
	movl	16(%esp), %ebx
	.cfi_restore 3
L608:
	movl	20(%esp), %esi
	movl	24(%esp), %edi
	addl	$28, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L624:
	ret
	.cfi_endproc
LFE61:
	.p2align 4
	.def	__Z31_mi_bitmap_try_find_claim_fieldPSt6atomicIjEjjPj;	.scl	3;	.type	32;	.endef
__Z31_mi_bitmap_try_find_claim_fieldPSt6atomicIjEjjPj:
LFB62:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%edi, 12(%esp)
	.cfi_offset 7, -12
	leal	(%eax,%edx,4), %edi
	movl	%esi, 8(%esp)
	movl	(%edi), %eax
	.cfi_offset 6, -16
	movl	%edx, %esi
	cmpl	$-1, %eax
	je	L628
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%ecx, %edx
	notl	%ebx
	movl	%ebp, 16(%esp)
	.cfi_offset 5, -8
	rep bsfl	%ebx, %ebx
	cmpl	$32, %ecx
	je	L656
	testl	%ecx, %ecx
	je	L640
	movl	$32, %ecx
	subl	%edx, %ecx
	movl	%ecx, (%esp)
	cmpl	%ebx, %ecx
	jb	L655
	movl	%edx, %ecx
	movl	$1, %ebp
	sall	%cl, %ebp
	movl	%ebx, %ecx
	subl	$1, %ebp
	sall	%cl, %ebp
	movl	%ebp, %ecx
	cmpl	$1, %edx
	jne	L641
L634:
	testl	%eax, %ecx
	je	L631
L657:
	addl	$1, %ebx
	cmpl	$32, %ebx
	je	L655
	addl	%ecx, %ecx
	testl	%eax, %ecx
	jne	L657
L631:
	movl	%ecx, %edx
	orl	%eax, %edx
	lock cmpxchgl	%edx, (%edi)
	je	L633
	jmp	L634
	.p2align 4,,10
	.p2align 3
L640:
	movl	%esi, (%esp)
	movl	$32, %ebp
L638:
	movl	%edx, %ecx
	andl	%eax, %ecx
	jne	L635
	movl	%edx, %ecx
	orl	%eax, %ecx
	lock cmpxchgl	%ecx, (%edi)
	jne	L636
	movl	(%esp), %esi
L633:
	movl	24(%esp), %eax
	sall	$5, %esi
	addl	%ebx, %esi
	movl	%esi, (%eax)
	movl	$1, %eax
	movl	4(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	16(%esp), %ebp
	.cfi_restore 5
	movl	8(%esp), %esi
	movl	12(%esp), %edi
	addl	$20, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L635:
	.cfi_restore_state
	bsrl	%ecx, %ecx
	xorl	$31, %ecx
	movl	%ecx, %esi
	movl	$32, %ecx
	subl	%ebx, %ecx
	subl	%esi, %ecx
	addl	%ecx, %ebx
	sall	%cl, %edx
L636:
	cmpl	%ebx, %ebp
	jnb	L638
L655:
	movl	4(%esp), %ebx
	.cfi_restore 3
	movl	16(%esp), %ebp
	.cfi_restore 5
L628:
	movl	8(%esp), %esi
	movl	12(%esp), %edi
	xorl	%eax, %eax
	addl	$20, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L656:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$0, (%esp)
	movl	$-1, %edx
	testl	%ebx, %ebx
	jne	L655
	movl	%esi, (%esp)
	xorl	%ebp, %ebp
	jmp	L638
	.p2align 4,,10
	.p2align 3
L641:
	movl	%ebp, %edx
	movl	(%esp), %ebp
	movl	%esi, (%esp)
	jmp	L638
	.cfi_endproc
LFE62:
	.p2align 4
	.def	__Z29_mi_page_try_use_delayed_freeP9mi_page_s12mi_delayed_eb;	.scl	3;	.type	32;	.endef
__Z29_mi_page_try_use_delayed_freeP9mi_page_s12mi_delayed_eb:
LFB63:
	.cfi_startproc
	.cfi_personality 0x9b,LDFCM0
	.cfi_lsda 0x1b,LLSDA63
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	xorl	%edi, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%edx, %esi
	movl	%ecx, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	xorl	$1, %edx
	leal	28(%eax), %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 20
L663:
	movl	(%ebx), %eax
	movl	%eax, %ecx
	andl	$3, %ecx
	cmpl	$1, %ecx
	je	L666
	cmpl	%ecx, %esi
	je	L662
	cmpl	$3, %ecx
	sete	%cl
	andb	%dl, %cl
	jne	L658
	movl	%eax, %ecx
	andl	$-4, %ecx
	orl	%esi, %ecx
	lock cmpxchgl	%ecx, (%ebx)
	jne	L663
L662:
	movl	$1, %ecx
L658:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%ecx, %eax
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
L666:
	.cfi_restore_state
	cmpl	$3, %edi
	ja	L664
	movb	%dl, 3(%esp)
	addl	$1, %edi
	call	_sched_yield
	movzbl	3(%esp), %edx
	jmp	L663
L664:
	xorl	%ecx, %ecx
	jmp	L658
	.cfi_endproc
LFE63:
	.section	.gcc_except_table,"w"
LLSDA63:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE63-LLSDACSB63
LLSDACSB63:
LLSDACSE63:
	.text
	.p2align 4
	.def	__Z12_mi_snprintfPcjPKcz;	.scl	3;	.type	32;	.endef
__Z12_mi_snprintfPcjPKcz:
LFB64:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	leal	24(%esp), %eax
	movl	20(%esp), %ecx
	movl	16(%esp), %edx
	movl	%eax, (%esp)
	movl	%eax, 4(%esp)
	movl	12(%esp), %eax
	call	__Z13_mi_vsnprintfPcjPKcS_
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE64:
	.p2align 4
	.def	__Z9_mi_fputsPU5cdeclFvPKcPvES1_S0_S0_;	.scl	3;	.type	32;	.endef
__Z9_mi_fputsPU5cdeclFvPKcPvES1_S0_S0_:
LFB65:
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
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	%edx, 8(%esp)
	movl	32(%esp), %edi
	testl	%eax, %eax
	je	L670
	movl	%eax, %ebx
	movl	$1, (%esp)
	movl	__imp____acrt_iob_func, %ebp
	call	*%ebp
	cmpl	%eax, %ebx
	je	L670
	movl	$2, (%esp)
	call	*%ebp
	cmpl	%eax, %ebx
	je	L670
	testl	%esi, %esi
	je	L672
	movl	8(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	*%ebx
L672:
	movl	8(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	*%ebx
L669:
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
L670:
	.cfi_restore_state
	call	__ZL21mi_recurse_enter_primv
	testb	%al, %al
	je	L669
	movl	__ZL10mi_out_arg, %ebp
	movl	$__ZL10mi_out_bufPKcPv, %eax
	movl	__ZL14mi_out_default, %ebx
	testl	%ebx, %ebx
	cmove	%eax, %ebx
	testl	%esi, %esi
	je	L675
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	*%ebx
L675:
	movl	%ebp, 4(%esp)
	movl	%edi, (%esp)
	call	*%ebx
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
	jmp	__ZL20mi_recurse_exit_primv
	.cfi_endproc
LFE65:
	.p2align 4
	.def	__ZL11mi_vfprintfPU5cdeclFvPKcPvES1_S0_S0_Pc.part.0;	.scl	3;	.type	32;	.endef
__ZL11mi_vfprintfPU5cdeclFvPKcPvES1_S0_S0_Pc.part.0:
LFB67:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%ecx, %ebp
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%edx, %edi
	movl	$511, %edx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$516, %esp
	.cfi_def_cfa_offset 536
	movl	540(%esp), %eax
	leal	4(%esp), %ebx
	movl	536(%esp), %ecx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__Z13_mi_vsnprintfPcjPKcS_
	movl	%ebp, %ecx
	call	__ZL20mi_recurse_exit_primv
	movl	%ebx, (%esp)
	movl	%edi, %edx
	movl	%esi, %eax
	call	__Z9_mi_fputsPU5cdeclFvPKcPvES1_S0_S0_
	addl	$516, %esp
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
LFE67:
	.p2align 4
	.def	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0;	.scl	3;	.type	32;	.endef
__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0:
LFB70:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	leal	28(%esp), %ecx
	movl	%ecx, 8(%esp)
	call	__ZL21mi_recurse_enter_primv
	testb	%al, %al
	je	L689
	movl	24(%esp), %eax
	movl	20(%esp), %edx
	movl	%ecx, 4(%esp)
	xorl	%ecx, %ecx
	movl	%eax, (%esp)
	movl	$__ZL15mi_buffered_outPKcPv, %eax
	call	__ZL11mi_vfprintfPU5cdeclFvPKcPvES1_S0_S0_Pc.part.0
L689:
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE70:
	.section .rdata,"dr"
LC0:
	.ascii " \0"
LC1:
	.ascii "B\0"
LC2:
	.ascii "\0"
LC3:
	.ascii "M\0"
LC4:
	.ascii "i\0"
LC5:
	.ascii "K\0"
LC6:
	.ascii "G\0"
LC7:
	.ascii "%12s\0"
LC8:
	.ascii "%lld   %-3s\0"
LC9:
	.ascii "%s%s%s\0"
LC10:
	.ascii "%ld.%ld %-3s\0"
	.text
	.p2align 4
	.def	__ZL16mi_printf_amountxxPU5cdeclFvPKcPvES1_S0_.constprop.0;	.scl	3;	.type	32;	.endef
__ZL16mi_printf_amountxxPU5cdeclFvPKcPvES1_S0_.constprop.0:
LFB73:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	movl	%edx, %edi
	movl	%eax, %edx
	pushl	%esi
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	%edi, %eax
	pushl	%ebx
	andl	$-8, %esp
	subl	$80, %esp
	.cfi_offset 3, -20
	negl	%edx
	movl	8(%ebp), %ebx
	movl	12(%ebp), %ecx
	adcl	$0, %eax
	movb	$0, 48(%esp)
	negl	%eax
	movl	%ebx, 32(%esp)
	cmovs	%esi, %edx
	cmovs	%edi, %eax
	xorl	$1, %ebx
	movl	%ecx, 24(%esp)
	orl	%ecx, %ebx
	jne	L696
	xorl	%ecx, %ecx
	movl	$1023, %ebx
	cmpl	%edx, %ebx
	movl	%ecx, %ebx
	sbbl	%eax, %ebx
	jl	L721
	movl	%esi, %eax
	movl	$LC1, %edx
	leal	48(%esp), %ebx
	xorl	$1, %eax
	orl	%edi, %eax
	je	L707
L712:
	movl	%esi, %eax
	orl	%edi, %eax
	jne	L706
	movl	$LC2, %edx
L706:
	leal	48(%esp), %ebx
	movl	%edx, 20(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, 16(%esp)
	movl	$LC8, 8(%esp)
	movl	$32, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z12_mi_snprintfPcjPKcz
L707:
	movl	20(%ebp), %eax
	testl	%eax, %eax
	movl	$LC7, %eax
	cmovne	20(%ebp), %eax
	movl	%eax, 20(%ebp)
	movl	%ebx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	movl	%eax, 4(%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
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
L721:
	.cfi_restore_state
	movl	$1048575, %ebx
	cmpl	%edx, %ebx
	movl	%ecx, %ebx
	sbbl	%eax, %ebx
	jge	L722
	movl	$1073741823, %ebx
	cmpl	%edx, %ebx
	sbbl	%eax, %ecx
	jge	L723
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%edi, %ecx
	andl	$268435455, %eax
	sarl	$31, %ecx
	movl	%eax, 32(%esp)
	movl	%esi, %eax
	movl	%ecx, %ebx
	andl	$-53687090, %ecx
	shrdl	$28, %edx, %eax
	movl	%edi, %edx
	andl	$107373925, %ebx
	shrl	$24, %edx
	andl	$268435455, %eax
	addl	32(%esp), %eax
	addl	%edx, %eax
	addl	%eax, %ebx
	movl	$1073741845, %eax
	mull	%ebx
	movl	%ebx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%eax, %edx
	movl	$-1342177285, %eax
	shrl	$25, %edx
	imull	$53687091, %edx, %edx
	subl	%edx, %ebx
	addl	%ebx, %ecx
	movl	%ecx, %ebx
	sarl	$31, %ebx
	subl	%ecx, %esi
	sbbl	%ebx, %edi
	imull	$-83886081, %esi, %edx
	xorl	%ebx, %ebx
	imull	$-1342177285, %edi, %ecx
	addl	%edx, %ecx
	mull	%esi
	addl	%ecx, %edx
	movl	%edx, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	adcl	%edx, %ebx
	movl	%ecx, %esi
	movl	%ebx, %edi
	shrdl	$1, %ebx, %esi
	sarl	%edi
	movl	%esi, %ecx
	movl	%esi, %edx
	movl	%edi, %ebx
	andl	$268435455, %edx
	movl	%edi, %eax
	shrdl	$28, %ebx, %ecx
	sarl	$31, %eax
	movl	$-858993459, %ebx
	andl	$268435455, %ecx
	movl	%eax, 32(%esp)
	andl	$3, %eax
	addl	%edx, %ecx
	movl	%edi, %edx
	shrl	$24, %edx
	addl	%edx, %ecx
	addl	%eax, %ecx
	movl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	andl	$-4, %edx
	shrl	$2, %eax
	addl	%eax, %edx
	movl	32(%esp), %eax
	subl	%edx, %ecx
	andl	$-4, %eax
	addl	%eax, %ecx
	movl	%ecx, %eax
	movl	%ecx, 32(%esp)
	cltd
	subl	%ecx, %esi
	sbbl	%edx, %edi
	movl	%edx, 36(%esp)
	imull	$-858993460, %esi, %edx
	movl	%esi, %eax
	imull	$-858993459, %edi, %ecx
	addl	%edx, %ecx
	mull	%ebx
	movl	%edx, %edi
	movl	%eax, %esi
	addl	%ecx, %edi
	movl	%edi, %ebx
	movl	%edi, %ecx
	sarl	$31, %ebx
	xorl	%ebx, %eax
	subl	%ebx, %eax
	xorl	%edx, %edx
	andl	$1, %eax
	xorl	%ebx, %edx
	xorl	%ebx, %eax
	subl	%ebx, %eax
	sbbl	%ebx, %edx
	movl	%eax, 24(%esp)
	movl	24(%esp), %eax
	movl	%edx, 28(%esp)
	movl	$5, %edx
	mull	%edx
	addl	32(%esp), %eax
	shrl	$31, %ecx
	xorl	%ebx, %ebx
	addl	%ecx, %esi
	movl	$LC4, %edx
	movl	$LC1, %ecx
	adcl	%ebx, %edi
	movl	%esi, %ebx
	movl	%eax, %esi
	movl	$LC6, %eax
	shrdl	$1, %edi, %ebx
	movl	%ebx, 32(%esp)
	jmp	L702
	.p2align 4,,10
	.p2align 3
L696:
	movl	32(%esp), %ecx
	orl	24(%esp), %ecx
	je	L699
	xorl	%ecx, %ecx
	movl	$1023, %ebx
	cmpl	%edx, %ebx
	movl	%ecx, %ebx
	sbbl	%eax, %ebx
	jl	L724
L703:
	movl	%esi, %eax
	movl	$LC0, %edx
	xorl	$1, %eax
	orl	%edi, %eax
	je	L706
	jmp	L712
	.p2align 4,,10
	.p2align 3
L699:
	xorl	%ecx, %ecx
	movl	$999, %ebx
	cmpl	%edx, %ebx
	movl	%ecx, %ebx
	sbbl	%eax, %ebx
	jge	L703
	movl	$999999, %ebx
	cmpl	%edx, %ebx
	movl	%ecx, %ebx
	sbbl	%eax, %ebx
	jl	L705
	movl	%edi, %ecx
	movl	%edi, %edx
	movl	%esi, %ebx
	sarl	$31, %ecx
	andl	$1048575, %ebx
	movl	%ecx, %eax
	andl	$-24, %ecx
	andl	$33, %eax
	movl	%eax, 32(%esp)
	movl	%esi, %eax
	shrdl	$20, %edx, %eax
	movl	%edi, %edx
	andl	$1048575, %eax
	shrl	$28, %edx
	addl	%ebx, %eax
	movl	%edi, %ebx
	shrl	$8, %ebx
	andl	$1048575, %ebx
	addl	%eax, %ebx
	movl	$1374389535, %eax
	addl	%edx, %ebx
	addl	32(%esp), %ebx
	mull	%ebx
	shrl	$3, %edx
	leal	(%edx,%edx,4), %eax
	leal	(%eax,%eax,4), %eax
	subl	%eax, %ebx
	movl	$-1030792151, %eax
	addl	%ebx, %ecx
	movl	%ecx, %ebx
	sarl	$31, %ebx
	subl	%ecx, %esi
	sbbl	%ebx, %edi
	imull	$-1889785611, %esi, %edx
	imull	$-1030792151, %edi, %ecx
	addl	%edx, %ecx
	mull	%esi
	addl	%ecx, %edx
	movl	%edx, %ebx
	sarl	$31, %ebx
	movl	%ebx, %ecx
	xorl	%ebx, %ebx
	andl	$3, %ecx
	addl	%eax, %ecx
	adcl	%edx, %ebx
	movl	%ecx, %esi
	movl	%ebx, %edi
	shrdl	$2, %ebx, %esi
	sarl	$2, %edi
	movl	%esi, %ecx
	movl	%esi, %edx
	movl	%edi, %ebx
	andl	$268435455, %edx
	movl	%edi, %eax
	shrdl	$28, %ebx, %ecx
	sarl	$31, %eax
	movl	$-858993459, %ebx
	andl	$268435455, %ecx
	movl	%eax, 32(%esp)
	andl	$3, %eax
	addl	%edx, %ecx
	movl	%edi, %edx
	shrl	$24, %edx
	addl	%edx, %ecx
	addl	%eax, %ecx
	movl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	andl	$-4, %edx
	shrl	$2, %eax
	addl	%eax, %edx
	movl	32(%esp), %eax
	subl	%edx, %ecx
	andl	$-4, %eax
	addl	%eax, %ecx
	movl	%ecx, %eax
	movl	%ecx, 32(%esp)
	cltd
	subl	%ecx, %esi
	sbbl	%edx, %edi
	movl	%edx, 36(%esp)
	imull	$-858993460, %esi, %edx
	movl	%esi, %eax
	imull	$-858993459, %edi, %ecx
	addl	%edx, %ecx
	mull	%ebx
	movl	%edx, %edi
	movl	%eax, %esi
	addl	%ecx, %edi
	movl	%edi, %ebx
	movl	%edi, %ecx
	sarl	$31, %ebx
	xorl	%ebx, %eax
	subl	%ebx, %eax
	xorl	%edx, %edx
	andl	$1, %eax
	xorl	%ebx, %edx
	xorl	%ebx, %eax
	subl	%ebx, %eax
	sbbl	%ebx, %edx
	movl	%eax, 24(%esp)
	movl	24(%esp), %eax
	movl	%edx, 28(%esp)
	movl	$5, %edx
	mull	%edx
	addl	32(%esp), %eax
	shrl	$31, %ecx
	xorl	%ebx, %ebx
	addl	%ecx, %esi
	movl	$LC2, %edx
	movl	$LC0, %ecx
	adcl	%ebx, %edi
	movl	%esi, %ebx
	movl	%eax, %esi
	movl	$LC5, %eax
	shrdl	$1, %edi, %ebx
	movl	%ebx, 32(%esp)
	jmp	L702
	.p2align 4,,10
	.p2align 3
L722:
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%edi, %ecx
	andl	$16777215, %eax
	sarl	$31, %ecx
	movl	%eax, 32(%esp)
	movl	%esi, %eax
	movl	%ecx, %ebx
	andl	$-50, %ecx
	shrdl	$24, %edx, %eax
	movl	%edi, %edx
	andl	$49, %ebx
	shrl	$16, %edx
	andl	$16777215, %eax
	addl	32(%esp), %eax
	addl	%edx, %eax
	addl	%eax, %ebx
	movl	$-1600085855, %eax
	mull	%ebx
	movl	$-84215045, %eax
	shrl	$5, %edx
	imull	$51, %edx, %edx
	subl	%edx, %ebx
	addl	%ebx, %ecx
	movl	%ecx, %ebx
	sarl	$31, %ebx
	subl	%ecx, %esi
	sbbl	%ebx, %edi
	imull	$-84215046, %esi, %edx
	xorl	%ebx, %ebx
	imull	$-84215045, %edi, %ecx
	addl	%edx, %ecx
	mull	%esi
	addl	%ecx, %edx
	movl	%edx, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	adcl	%edx, %ebx
	movl	%ecx, %esi
	movl	%ebx, %edi
	shrdl	$1, %ebx, %esi
	sarl	%edi
	movl	%esi, %ecx
	movl	%esi, %edx
	movl	%edi, %ebx
	andl	$268435455, %edx
	movl	%edi, %eax
	shrdl	$28, %ebx, %ecx
	sarl	$31, %eax
	movl	$-858993459, %ebx
	andl	$268435455, %ecx
	movl	%eax, 32(%esp)
	andl	$3, %eax
	addl	%edx, %ecx
	movl	%edi, %edx
	shrl	$24, %edx
	addl	%edx, %ecx
	addl	%eax, %ecx
	movl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	andl	$-4, %edx
	shrl	$2, %eax
	addl	%eax, %edx
	movl	32(%esp), %eax
	subl	%edx, %ecx
	andl	$-4, %eax
	addl	%eax, %ecx
	movl	%ecx, %eax
	movl	%ecx, 32(%esp)
	cltd
	subl	%ecx, %esi
	sbbl	%edx, %edi
	movl	%edx, 36(%esp)
	imull	$-858993460, %esi, %edx
	movl	%esi, %eax
	imull	$-858993459, %edi, %ecx
	addl	%edx, %ecx
	mull	%ebx
	movl	%edx, %edi
	movl	%eax, %esi
	addl	%ecx, %edi
	movl	%edi, %ebx
	movl	%edi, %ecx
	sarl	$31, %ebx
	xorl	%ebx, %eax
	subl	%ebx, %eax
	xorl	%edx, %edx
	andl	$1, %eax
	xorl	%ebx, %edx
	xorl	%ebx, %eax
	subl	%ebx, %eax
	sbbl	%ebx, %edx
	movl	%eax, 24(%esp)
	movl	24(%esp), %eax
	movl	%edx, 28(%esp)
	movl	$5, %edx
	mull	%edx
	addl	32(%esp), %eax
	shrl	$31, %ecx
	xorl	%ebx, %ebx
	addl	%ecx, %esi
	movl	$LC4, %edx
	movl	$LC1, %ecx
	adcl	%ebx, %edi
	movl	%esi, %ebx
	movl	%eax, %esi
	movl	$LC5, %eax
	shrdl	$1, %edi, %ebx
	movl	%ebx, 32(%esp)
L702:
	leal	40(%esp), %edi
	movl	%edx, 16(%esp)
	leal	48(%esp), %ebx
	movl	%eax, 12(%esp)
	movl	%ecx, 20(%esp)
	movl	$LC9, 8(%esp)
	movl	$8, 4(%esp)
	movl	%edi, (%esp)
	call	__Z12_mi_snprintfPcjPKcz
	movl	%esi, %edx
	movl	%esi, %eax
	movl	%edi, 20(%esp)
	negl	%edx
	movl	$LC10, 8(%esp)
	cmovns	%edx, %eax
	movl	$32, 4(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 16(%esp)
	movl	32(%esp), %eax
	movl	%eax, 12(%esp)
	call	__Z12_mi_snprintfPcjPKcz
	jmp	L707
	.p2align 4,,10
	.p2align 3
L724:
	movl	$1048575, %ebx
	cmpl	%edx, %ebx
	movl	%ecx, %ebx
	sbbl	%eax, %ebx
	jge	L725
	movl	$1073741823, %ebx
	cmpl	%edx, %ebx
	sbbl	%eax, %ecx
	jge	L726
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%edi, %ecx
	andl	$268435455, %eax
	sarl	$31, %ecx
	movl	%eax, 32(%esp)
	movl	%esi, %eax
	movl	%ecx, %ebx
	andl	$-53687090, %ecx
	shrdl	$28, %edx, %eax
	movl	%edi, %edx
	andl	$107373925, %ebx
	shrl	$24, %edx
	andl	$268435455, %eax
	addl	32(%esp), %eax
	addl	%edx, %eax
	addl	%eax, %ebx
	movl	$1073741845, %eax
	mull	%ebx
	movl	%ebx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$25, %eax
	imull	$53687091, %eax, %eax
	subl	%eax, %ebx
	movl	$-1342177285, %eax
	addl	%ebx, %ecx
	movl	%ecx, %ebx
	sarl	$31, %ebx
	subl	%ecx, %esi
	sbbl	%ebx, %edi
	imull	$-83886081, %esi, %edx
	xorl	%ebx, %ebx
	imull	$-1342177285, %edi, %ecx
	addl	%edx, %ecx
	mull	%esi
	addl	%ecx, %edx
	movl	%edx, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	adcl	%edx, %ebx
	movl	%ecx, %esi
	shrdl	$1, %ebx, %esi
	movl	%ebx, %edi
	movl	%esi, %eax
	sarl	%edi
	andl	$268435455, %eax
	movl	%edi, %edx
	movl	%edi, %ecx
	movl	%eax, 32(%esp)
	movl	%esi, %eax
	sarl	$31, %ecx
	shrdl	$28, %edx, %eax
	movl	%edi, %edx
	movl	%ecx, %ebx
	andl	$-4, %ecx
	shrl	$24, %edx
	andl	$268435455, %eax
	addl	32(%esp), %eax
	andl	$3, %ebx
	addl	%edx, %eax
	addl	%eax, %ebx
	movl	$-858993459, %eax
	mull	%ebx
	movl	%edx, %eax
	andl	$-4, %edx
	shrl	$2, %eax
	addl	%eax, %edx
	movl	%esi, %eax
	subl	%edx, %ebx
	movl	%edi, %edx
	addl	%ecx, %ebx
	movl	%ebx, %ecx
	sarl	$31, %ebx
	subl	%ecx, %eax
	movl	%ecx, 32(%esp)
	sbbl	%ebx, %edx
	movl	%eax, %esi
	movl	%ebx, 36(%esp)
	imull	$-858993459, %edx, %ecx
	imull	$-858993460, %eax, %edx
	movl	$-858993459, %eax
	addl	%edx, %ecx
	mull	%esi
	movl	%edx, %edi
	movl	%eax, %esi
	addl	%ecx, %edi
	movl	%edi, %ebx
	movl	%edi, %ecx
	sarl	$31, %ebx
	xorl	%ebx, %eax
	subl	%ebx, %eax
	xorl	%edx, %edx
	andl	$1, %eax
	xorl	%ebx, %edx
	xorl	%ebx, %eax
	subl	%ebx, %eax
	sbbl	%ebx, %edx
	movl	%eax, 24(%esp)
	movl	24(%esp), %eax
	movl	%edx, 28(%esp)
	movl	$5, %edx
	mull	%edx
	addl	32(%esp), %eax
	shrl	$31, %ecx
	xorl	%ebx, %ebx
	addl	%ecx, %esi
	movl	$LC4, %edx
	movl	$LC0, %ecx
	adcl	%ebx, %edi
	movl	%esi, %ebx
	movl	%eax, %esi
	movl	$LC6, %eax
	shrdl	$1, %edi, %ebx
	movl	%ebx, 32(%esp)
	jmp	L702
	.p2align 4,,10
	.p2align 3
L705:
	movl	$999999999, %ebx
	cmpl	%edx, %ebx
	sbbl	%eax, %ecx
	jge	L708
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	movl	$100000000, 8(%esp)
	movl	$0, 12(%esp)
	call	___divdi3
	movl	%eax, %esi
	andl	$268435455, %eax
	movl	%edx, %edi
	movl	%edx, %ebx
	movl	%eax, 32(%esp)
	movl	%esi, %eax
	sarl	$31, %ebx
	shrdl	$28, %edx, %eax
	movl	%edi, %edx
	movl	%ebx, %ecx
	andl	$-4, %ebx
	shrl	$24, %edx
	andl	$268435455, %eax
	addl	32(%esp), %eax
	andl	$3, %ecx
	addl	%edx, %eax
	addl	%eax, %ecx
	movl	$-858993459, %eax
	mull	%ecx
	movl	%edx, %eax
	andl	$-4, %edx
	shrl	$2, %eax
	addl	%eax, %edx
	movl	%esi, %eax
	subl	%edx, %ecx
	movl	%edi, %edx
	addl	%ebx, %ecx
	movl	%ecx, %ebx
	movl	%ecx, 32(%esp)
	sarl	$31, %ebx
	subl	%ecx, %eax
	sbbl	%ebx, %edx
	movl	%eax, %esi
	movl	%ebx, 36(%esp)
	imull	$-858993459, %edx, %ecx
	imull	$-858993460, %eax, %edx
	movl	$-858993459, %eax
	addl	%edx, %ecx
	mull	%esi
	movl	%edx, %edi
	movl	%eax, %esi
	addl	%ecx, %edi
	movl	%edi, %ebx
	movl	%edi, %ecx
	sarl	$31, %ebx
	xorl	%ebx, %eax
	subl	%ebx, %eax
	xorl	%edx, %edx
	andl	$1, %eax
	xorl	%ebx, %edx
	xorl	%ebx, %eax
	subl	%ebx, %eax
	sbbl	%ebx, %edx
	movl	%eax, 24(%esp)
	movl	24(%esp), %eax
	movl	%edx, 28(%esp)
	movl	$5, %edx
	mull	%edx
	addl	32(%esp), %eax
	shrl	$31, %ecx
	xorl	%ebx, %ebx
	addl	%ecx, %esi
	movl	$LC2, %edx
	movl	$LC0, %ecx
	adcl	%ebx, %edi
	movl	%esi, %ebx
	movl	%eax, %esi
	movl	$LC6, %eax
	shrdl	$1, %edi, %ebx
	movl	%ebx, 32(%esp)
	jmp	L702
	.p2align 4,,10
	.p2align 3
L725:
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%edi, %ecx
	andl	$16777215, %eax
	sarl	$31, %ecx
	movl	%eax, 32(%esp)
	movl	%esi, %eax
	movl	%ecx, %ebx
	andl	$-50, %ecx
	shrdl	$24, %edx, %eax
	movl	%edi, %edx
	andl	$49, %ebx
	shrl	$16, %edx
	andl	$16777215, %eax
	addl	32(%esp), %eax
	addl	%edx, %eax
	addl	%eax, %ebx
	movl	$-1600085855, %eax
	mull	%ebx
	movl	$-84215045, %eax
	shrl	$5, %edx
	imull	$51, %edx, %edx
	subl	%edx, %ebx
	addl	%ebx, %ecx
	movl	%ecx, %ebx
	sarl	$31, %ebx
	subl	%ecx, %esi
	sbbl	%ebx, %edi
	imull	$-84215046, %esi, %edx
	xorl	%ebx, %ebx
	imull	$-84215045, %edi, %ecx
	addl	%edx, %ecx
	mull	%esi
	addl	%ecx, %edx
	movl	%edx, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	adcl	%edx, %ebx
	movl	%ecx, %esi
	shrdl	$1, %ebx, %esi
	movl	%ebx, %edi
	movl	%esi, %eax
	sarl	%edi
	andl	$268435455, %eax
	movl	%edi, %edx
	movl	%edi, %ecx
	movl	%eax, 32(%esp)
	movl	%esi, %eax
	sarl	$31, %ecx
	shrdl	$28, %edx, %eax
	movl	%edi, %edx
	movl	%ecx, %ebx
	andl	$-4, %ecx
	shrl	$24, %edx
	andl	$268435455, %eax
	addl	32(%esp), %eax
	andl	$3, %ebx
	addl	%edx, %eax
	addl	%eax, %ebx
	movl	$-858993459, %eax
	mull	%ebx
	movl	%edx, %eax
	andl	$-4, %edx
	shrl	$2, %eax
	addl	%eax, %edx
	movl	%esi, %eax
	subl	%edx, %ebx
	movl	%edi, %edx
	addl	%ecx, %ebx
	movl	%ebx, %ecx
	sarl	$31, %ebx
	subl	%ecx, %eax
	movl	%ecx, 32(%esp)
	sbbl	%ebx, %edx
	movl	%eax, %esi
	movl	%ebx, 36(%esp)
	imull	$-858993459, %edx, %ecx
	imull	$-858993460, %eax, %edx
	movl	$-858993459, %eax
	addl	%edx, %ecx
	mull	%esi
	movl	%edx, %edi
	movl	%eax, %esi
	addl	%ecx, %edi
	movl	%edi, %ebx
	movl	%edi, %ecx
	sarl	$31, %ebx
	xorl	%ebx, %eax
	subl	%ebx, %eax
	xorl	%edx, %edx
	andl	$1, %eax
	xorl	%ebx, %edx
	xorl	%ebx, %eax
	subl	%ebx, %eax
	sbbl	%ebx, %edx
	movl	%eax, 24(%esp)
	movl	24(%esp), %eax
	movl	%edx, 28(%esp)
	movl	$5, %edx
	mull	%edx
	addl	32(%esp), %eax
	shrl	$31, %ecx
	xorl	%ebx, %ebx
	addl	%ecx, %esi
	movl	$LC4, %edx
	movl	$LC0, %ecx
	adcl	%ebx, %edi
	movl	%esi, %ebx
	movl	%eax, %esi
	movl	$LC5, %eax
	shrdl	$1, %edi, %ebx
	movl	%ebx, 32(%esp)
	jmp	L702
L708:
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	movl	$100000, 8(%esp)
	movl	$0, 12(%esp)
	call	___divdi3
	movl	%eax, %esi
	andl	$268435455, %eax
	movl	%edx, %edi
	movl	%edx, %ecx
	movl	%eax, 32(%esp)
	movl	%esi, %eax
	sarl	$31, %ecx
	shrdl	$28, %edx, %eax
	movl	%edi, %edx
	movl	%ecx, %ebx
	andl	$-4, %ecx
	shrl	$24, %edx
	andl	$268435455, %eax
	addl	32(%esp), %eax
	andl	$3, %ebx
	addl	%edx, %eax
	addl	%eax, %ebx
	movl	$-858993459, %eax
	mull	%ebx
	movl	%edx, %eax
	andl	$-4, %edx
	shrl	$2, %eax
	addl	%edx, %eax
	movl	%edi, %edx
	subl	%eax, %ebx
	movl	%esi, %eax
	addl	%ecx, %ebx
	movl	%ebx, %ecx
	sarl	$31, %ebx
	subl	%ecx, %eax
	movl	%ecx, 32(%esp)
	sbbl	%ebx, %edx
	movl	%eax, %esi
	movl	%ebx, 36(%esp)
	imull	$-858993459, %edx, %ecx
	imull	$-858993460, %eax, %edx
	movl	$-858993459, %eax
	addl	%edx, %ecx
	mull	%esi
	movl	%edx, %edi
	movl	%eax, %esi
	addl	%ecx, %edi
	movl	%edi, %ebx
	movl	%edi, %ecx
	sarl	$31, %ebx
	xorl	%ebx, %eax
	subl	%ebx, %eax
	xorl	%edx, %edx
	andl	$1, %eax
	xorl	%ebx, %edx
	xorl	%ebx, %eax
	subl	%ebx, %eax
	sbbl	%ebx, %edx
	movl	%eax, 24(%esp)
	movl	24(%esp), %eax
	movl	%edx, 28(%esp)
	movl	$5, %edx
	mull	%edx
	addl	32(%esp), %eax
	shrl	$31, %ecx
	xorl	%ebx, %ebx
	addl	%ecx, %esi
	movl	$LC2, %edx
	movl	$LC0, %ecx
	adcl	%ebx, %edi
	movl	%esi, %ebx
	movl	%eax, %esi
	movl	$LC3, %eax
	shrdl	$1, %edi, %ebx
	movl	%ebx, 32(%esp)
	jmp	L702
	.p2align 4,,10
	.p2align 3
L723:
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	movl	$104857, 8(%esp)
	movl	$0, 12(%esp)
	call	___divdi3
	movl	%eax, %esi
	movl	%edx, %eax
	movl	%edx, %edi
	sarl	$31, %eax
	movl	%esi, %ecx
	movl	%eax, 32(%esp)
	movl	%eax, %ebx
	movl	%esi, %eax
	andl	$268435455, %ecx
	shrdl	$28, %edx, %eax
	movl	%edi, %edx
	andl	$3, %ebx
	andl	$268435455, %eax
	shrl	$24, %edx
	addl	%ecx, %eax
	addl	%edx, %eax
	leal	(%eax,%ebx), %ecx
	movl	$-858993459, %ebx
	movl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	andl	$-4, %edx
	shrl	$2, %eax
	addl	%eax, %edx
	movl	32(%esp), %eax
	subl	%edx, %ecx
	andl	$-4, %eax
	addl	%eax, %ecx
	movl	%ecx, %eax
	movl	%ecx, 32(%esp)
	cltd
	subl	%ecx, %esi
	sbbl	%edx, %edi
	movl	%edx, 36(%esp)
	imull	$-858993460, %esi, %edx
	movl	%esi, %eax
	imull	$-858993459, %edi, %ecx
	addl	%edx, %ecx
	mull	%ebx
	movl	%edx, %edi
	movl	%eax, %esi
	addl	%ecx, %edi
	movl	%edi, %ebx
	movl	%edi, %ecx
	sarl	$31, %ebx
	xorl	%ebx, %eax
	subl	%ebx, %eax
	xorl	%edx, %edx
	andl	$1, %eax
	xorl	%ebx, %edx
	xorl	%ebx, %eax
	subl	%ebx, %eax
	sbbl	%ebx, %edx
	movl	%eax, 24(%esp)
	movl	24(%esp), %eax
	movl	%edx, 28(%esp)
	movl	$5, %edx
	mull	%edx
	addl	32(%esp), %eax
	shrl	$31, %ecx
	xorl	%ebx, %ebx
	addl	%ecx, %esi
	movl	$LC4, %edx
	movl	$LC1, %ecx
	adcl	%ebx, %edi
	movl	%esi, %ebx
	movl	%eax, %esi
	movl	$LC3, %eax
	shrdl	$1, %edi, %ebx
	movl	%ebx, 32(%esp)
	jmp	L702
L726:
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	movl	$104857, 8(%esp)
	movl	$0, 12(%esp)
	call	___divdi3
	movl	%eax, %esi
	movl	%edx, %eax
	movl	%edx, %edi
	sarl	$31, %eax
	movl	%esi, %ecx
	movl	%eax, 32(%esp)
	movl	%eax, %ebx
	movl	%esi, %eax
	andl	$268435455, %ecx
	shrdl	$28, %edx, %eax
	movl	%edi, %edx
	andl	$3, %ebx
	andl	$268435455, %eax
	shrl	$24, %edx
	addl	%ecx, %eax
	addl	%edx, %eax
	leal	(%eax,%ebx), %ecx
	movl	$-858993459, %ebx
	movl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	andl	$-4, %edx
	shrl	$2, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	32(%esp), %eax
	andl	$-4, %eax
	addl	%eax, %ecx
	movl	%ecx, %eax
	movl	%ecx, 32(%esp)
	cltd
	subl	%ecx, %esi
	sbbl	%edx, %edi
	movl	%edx, 36(%esp)
	imull	$-858993460, %esi, %edx
	movl	%esi, %eax
	imull	$-858993459, %edi, %ecx
	addl	%edx, %ecx
	mull	%ebx
	movl	%edx, %edi
	movl	%eax, %esi
	addl	%ecx, %edi
	movl	%edi, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %eax
	subl	%ecx, %eax
	xorl	%edx, %edx
	andl	$1, %eax
	xorl	%ecx, %edx
	xorl	%ecx, %eax
	subl	%ecx, %eax
	sbbl	%ecx, %edx
	movl	%eax, 24(%esp)
	movl	24(%esp), %eax
	movl	%edx, 28(%esp)
	movl	$5, %edx
	movl	32(%esp), %ecx
	mull	%edx
	addl	%eax, %ecx
	movl	%edi, %eax
	xorl	%edx, %edx
	shrl	$31, %eax
	addl	%esi, %eax
	movl	%ecx, %esi
	movl	$LC0, %ecx
	adcl	%edi, %edx
	movl	%eax, %edi
	movl	$LC3, %eax
	shrdl	$1, %edx, %edi
	movl	$LC4, %edx
	movl	%edi, 32(%esp)
	jmp	L702
	.cfi_endproc
LFE73:
	.section .rdata,"dr"
LC11:
	.ascii "not all freed\0"
LC12:
	.ascii "%10s:\0"
LC13:
	.ascii "%24s\0"
LC14:
	.ascii "  \0"
LC15:
	.ascii "\12\0"
LC16:
	.ascii "  ok\12\0"
	.text
	.p2align 4
	.def	__ZL16mi_stat_print_exPK15mi_stat_count_sPKcxPU5cdeclFvS3_PvES4_S3_.constprop.0;	.scl	3;	.type	32;	.endef
__ZL16mi_stat_print_exPK15mi_stat_count_sPKcxPU5cdeclFvS3_PvES4_S3_.constprop.0:
LFB75:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%eax, %ebp
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
	movl	48(%esp), %ebx
	movl	44(%esp), %eax
	movl	%edx, 12(%esp)
	movl	40(%esp), %esi
	movl	52(%esp), %edi
	movl	$LC12, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	xorl	$1, %esi
	movl	%eax, 16(%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
	orl	16(%esp), %esi
	movl	16(%ebp), %eax
	movl	20(%ebp), %edx
	movl	$0, 12(%esp)
	movl	%ebx, 8(%esp)
	jne	L728
	movl	$1, (%esp)
	movl	$0, 4(%esp)
	call	__ZL16mi_printf_amountxxPU5cdeclFvPKcPvES1_S0_.constprop.0
	movl	0(%ebp), %eax
	movl	4(%ebp), %edx
	movl	%ebx, 8(%esp)
	movl	$0, 12(%esp)
	movl	$1, (%esp)
	movl	$0, 4(%esp)
	call	__ZL16mi_printf_amountxxPU5cdeclFvPKcPvES1_S0_.constprop.0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%ebx, 8(%esp)
	movl	$0, 12(%esp)
	movl	$1, (%esp)
	movl	$0, 4(%esp)
	call	__ZL16mi_printf_amountxxPU5cdeclFvPKcPvES1_S0_.constprop.0
	movl	24(%ebp), %eax
	movl	28(%ebp), %edx
	movl	%ebx, 8(%esp)
	movl	$0, 12(%esp)
	movl	$1, (%esp)
	movl	$0, 4(%esp)
	call	__ZL16mi_printf_amountxxPU5cdeclFvPKcPvES1_S0_.constprop.0
	movl	%ebx, 8(%esp)
	movl	$1, %eax
	xorl	%edx, %edx
	movl	$0, 12(%esp)
	movl	$1, (%esp)
	movl	$0, 4(%esp)
	call	__ZL16mi_printf_amountxxPU5cdeclFvPKcPvES1_S0_.constprop.0
	movl	$LC0, 12(%esp)
	movl	$LC7, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
L729:
	movl	12(%ebp), %eax
	movl	0(%ebp), %ecx
	cmpl	%ecx, 8(%ebp)
	sbbl	4(%ebp), %eax
	jge	L730
	movl	$LC14, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
	testl	%edi, %edi
	movl	$LC11, %eax
	movl	%ebx, 4(%esp)
	cmove	%eax, %edi
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	movl	%edi, 8(%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
	movl	$LC15, 48(%esp)
L734:
	movl	%ebx, 44(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, 40(%esp)
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
	jmp	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
	.p2align 4,,10
	.p2align 3
L730:
	.cfi_restore_state
	movl	$LC16, 48(%esp)
	jmp	L734
	.p2align 4,,10
	.p2align 3
L728:
	movl	$-1, (%esp)
	movl	$-1, 4(%esp)
	call	__ZL16mi_printf_amountxxPU5cdeclFvPKcPvES1_S0_.constprop.0
	movl	0(%ebp), %eax
	movl	4(%ebp), %edx
	movl	%ebx, 8(%esp)
	movl	$0, 12(%esp)
	movl	$-1, (%esp)
	movl	$-1, 4(%esp)
	call	__ZL16mi_printf_amountxxPU5cdeclFvPKcPvES1_S0_.constprop.0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%ebx, 8(%esp)
	movl	$0, 12(%esp)
	movl	$-1, (%esp)
	movl	$-1, 4(%esp)
	call	__ZL16mi_printf_amountxxPU5cdeclFvPKcPvES1_S0_.constprop.0
	movl	24(%ebp), %eax
	movl	28(%ebp), %edx
	movl	%ebx, 8(%esp)
	movl	$0, 12(%esp)
	movl	$-1, (%esp)
	movl	$-1, 4(%esp)
	call	__ZL16mi_printf_amountxxPU5cdeclFvPKcPvES1_S0_.constprop.0
	movl	$LC2, 12(%esp)
	movl	$LC13, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
	jmp	L729
	.cfi_endproc
LFE75:
	.section .rdata,"dr"
LC17:
	.ascii "%sthread 0x%tx: \0"
	.text
	.p2align 4
	.def	__ZL18mi_vfprintf_threadPU5cdeclFvPKcPvES1_S0_S0_Pc.constprop.0;	.scl	3;	.type	32;	.endef
__ZL18mi_vfprintf_threadPU5cdeclFvPKcPvES1_S0_S0_Pc.constprop.0:
LFB81:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%ecx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %ebx
	subl	$596, %esp
	.cfi_def_cfa_offset 612
	cmpb	$0, (%eax)
	je	L736
	xorl	%eax, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L738:
	addl	$1, %eax
	cmpb	$0, (%ebx,%eax)
	je	L737
	cmpl	$33, %eax
	jne	L738
L739:
	call	__ZL21mi_recurse_enter_primv
	testb	%al, %al
	jne	L756
L735:
	addl	$596, %esp
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
L737:
	.cfi_restore_state
	cmpl	$33, %eax
	je	L739
L736:
	movl	__mi_heap_main+8, %eax
	testl	%eax, %eax
	je	L739
/APP
 # 2248 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:24, %edx 
 # 0 "" 2
/NO_APP
	cmpl	%edx, %eax
	je	L739
/APP
 # 2248 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:24, %eax 
 # 0 "" 2
/NO_APP
	movl	%ebx, 12(%esp)
	leal	20(%esp), %ebx
	movl	%eax, 16(%esp)
	movl	$LC17, 8(%esp)
	movl	$64, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z12_mi_snprintfPcjPKcz
	call	__ZL21mi_recurse_enter_primv
	testb	%al, %al
	je	L735
L756:
	movl	%edi, (%esp)
	leal	84(%esp), %eax
	movl	%esi, %ecx
	movl	$511, %edx
	call	__Z13_mi_vsnprintfPcjPKcS_
	movl	%ebx, %ecx
	call	__ZL20mi_recurse_exit_primv
	leal	84(%esp), %eax
	xorl	%edx, %edx
	movl	%eax, (%esp)
	xorl	%eax, %eax
	call	__Z9_mi_fputsPU5cdeclFvPKcPvES1_S0_S0_
	addl	$596, %esp
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
LFE81:
	.p2align 4
	.def	__ZL15mi_buffered_outPKcPv;	.scl	3;	.type	32;	.endef
__ZL15mi_buffered_outPKcPv:
LFB85:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%edi, 12(%esp)
	.cfi_offset 7, -8
	movl	20(%esp), %edi
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -16
	movl	24(%esp), %ebx
	testl	%edi, %edi
	je	L757
	testl	%ebx, %ebx
	je	L757
	movl	%esi, 8(%esp)
	.cfi_offset 6, -12
	movzbl	(%edi), %esi
	movl	%esi, %eax
	testb	%al, %al
	jne	L762
	jmp	L768
	.p2align 4,,10
	.p2align 3
L760:
	movl	8(%ebx), %edx
	movl	%ecx, 12(%ebx)
	movl	%esi, %ecx
	movb	%cl, (%edx,%eax)
	cmpb	$10, %cl
	je	L769
L761:
	movzbl	1(%edi), %esi
	addl	$1, %edi
	movl	%esi, %eax
	testb	%al, %al
	je	L768
L762:
	movl	12(%ebx), %eax
	leal	1(%eax), %ecx
	cmpl	16(%ebx), %eax
	jb	L760
	movl	8(%ebx), %edx
	movb	$0, (%edx,%eax)
	movl	8(%ebx), %ecx
	movl	4(%ebx), %edx
	movl	(%ebx), %eax
	movl	%ecx, (%esp)
	xorl	%ecx, %ecx
	call	__Z9_mi_fputsPU5cdeclFvPKcPvES1_S0_S0_
	movl	$1, %ecx
	movl	8(%ebx), %edx
	xorl	%eax, %eax
	movl	%ecx, 12(%ebx)
	movl	%esi, %ecx
	movb	%cl, (%edx,%eax)
	cmpb	$10, %cl
	jne	L761
L769:
	movl	8(%ebx), %edx
	movl	12(%ebx), %eax
	addl	$1, %edi
	movb	$0, (%edx,%eax)
	movl	8(%ebx), %ecx
	movl	(%ebx), %eax
	movl	4(%ebx), %edx
	movl	%ecx, (%esp)
	xorl	%ecx, %ecx
	call	__Z9_mi_fputsPU5cdeclFvPKcPvES1_S0_S0_
	movl	$0, 12(%ebx)
	movzbl	(%edi), %esi
	movl	%esi, %eax
	testb	%al, %al
	jne	L762
	.p2align 4
	.p2align 3
L768:
	movl	8(%esp), %esi
	.cfi_restore 6
L757:
	movl	4(%esp), %ebx
	movl	12(%esp), %edi
	addl	$16, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE85:
	.p2align 4
	.def	__ZL13mi_out_stderrPKcPv;	.scl	3;	.type	32;	.endef
__ZL13mi_out_stderrPKcPv:
LFB88:
	.cfi_startproc
	ret
	.cfi_endproc
LFE88:
	.section .rdata,"dr"
LC18:
	.ascii "mimalloc_\0"
	.align 4
LC19:
	.ascii "environment option \"mimalloc_%s\" is deprecated -- use \"mimalloc_%s\" instead.\12\0"
LC20:
	.ascii "1;TRUE;YES;ON\0"
LC21:
	.ascii "0;FALSE;NO;OFF\0"
	.align 4
LC22:
	.ascii "environment option mimalloc_%s has an invalid value.\12\0"
	.text
	.p2align 4
	.def	__ZL14mi_option_initP16mi_option_desc_s;	.scl	3;	.type	32;	.endef
__ZL14mi_option_initP16mi_option_desc_s:
LFB91:
	.cfi_startproc
	subl	$176, %esp
	.cfi_def_cfa_offset 180
	movl	$109, %ecx
	movl	$LC18, %edx
	movl	%ebp, 172(%esp)
	.cfi_offset 5, -8
	leal	30(%esp), %ebp
	movl	%ebx, 160(%esp)
	.cfi_offset 3, -20
	leal	94(%esp), %ebx
	movl	%edi, 168(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	movl	%ebp, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L773:
	addl	$1, %edx
	movb	%cl, (%eax)
	addl	$1, %eax
	movzbl	(%edx), %ecx
	testb	%cl, %cl
	je	L772
	cmpl	%ebx, %eax
	jne	L773
L772:
	movl	12(%edi), %edx
	movb	$0, (%eax)
	testl	%edx, %edx
	je	L774
	movl	%ebp, %eax
	call	__Z11_mi_strlcatPcPKcj.part.0.constprop.0
L774:
	movl	__imp__GetEnvironmentVariableA@12, %eax
	leal	95(%esp), %ebx
	movb	$0, 95(%esp)
	movl	$65, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%ebp, (%esp)
	movl	%eax, 12(%esp)
	call	*%eax
	.cfi_def_cfa_offset 168
	subl	$1, %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 180
	cmpl	$63, %eax
	jbe	L775
	movl	16(%edi), %eax
	movl	%eax, 16(%esp)
	testl	%eax, %eax
	je	L771
	movl	%esi, 164(%esp)
	movl	$109, %ecx
	movl	%ebp, %eax
	.cfi_offset 6, -16
	leal	94(%esp), %esi
	movl	$LC18, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L778:
	addl	$1, %edx
	movb	%cl, (%eax)
	addl	$1, %eax
	movzbl	(%edx), %ecx
	testb	%cl, %cl
	je	L777
	cmpl	%esi, %eax
	jne	L778
L777:
	movb	$0, (%eax)
	movl	16(%esp), %edx
	movl	%ebp, %eax
	call	__Z11_mi_strlcatPcPKcj.part.0.constprop.0
	movb	$0, 95(%esp)
	movl	12(%esp), %eax
	movl	$65, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%ebp, (%esp)
	call	*%eax
	.cfi_def_cfa_offset 168
	subl	$1, %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 180
	cmpl	$63, %eax
	jbe	L845
	movl	164(%esp), %esi
	.cfi_restore 6
L771:
	movl	160(%esp), %ebx
	movl	168(%esp), %edi
	movl	172(%esp), %ebp
	addl	$176, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L845:
	.cfi_def_cfa_offset 180
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	12(%edi), %eax
	movl	%eax, 8(%esp)
	movl	16(%edi), %eax
	movl	$LC19, (%esp)
	movl	%eax, 4(%esp)
	call	__Z19_mi_warning_messagePKcz
	movl	164(%esp), %esi
	.cfi_restore 6
L775:
	cmpb	$0, 95(%esp)
	je	L816
	movl	%esi, 164(%esp)
	xorl	%edx, %edx
	.p2align 4
	.cfi_offset 6, -16
	.p2align 4
	.p2align 3
L781:
	movl	%edx, %esi
	addl	$1, %edx
	cmpb	$0, (%ebx,%edx)
	je	L780
	cmpl	$64, %edx
	jne	L781
	movl	$63, %esi
L780:
	movl	%edx, 16(%esp)
	xorl	%ecx, %ecx
	movl	%edi, 20(%esp)
	jmp	L783
	.p2align 6
	.p2align 4,,10
	.p2align 3
L817:
	addl	$1, %ecx
L783:
	movzbl	(%ebx,%ecx), %eax
	leal	-32(%eax), %edx
	movb	%dl, 12(%esp)
	leal	-97(%eax), %edx
	cmpb	$26, %dl
	movzbl	12(%esp), %edx
	cmovb	%edx, %eax
	movb	%al, 0(%ebp,%ecx)
	cmpl	%esi, %ecx
	jne	L817
	movl	16(%esp), %edx
	movl	20(%esp), %edi
	movl	164(%esp), %esi
	.cfi_restore 6
L779:
	movb	$0, 30(%esp,%edx)
	cmpb	$0, 30(%esp)
	jne	L846
L784:
	movl	$1, (%edi)
	movl	$2, 4(%edi)
	jmp	L771
	.p2align 4,,10
	.p2align 3
L846:
	movl	%ebp, 4(%esp)
	movl	$LC20, (%esp)
	call	_strstr
	testl	%eax, %eax
	jne	L784
	movl	%ebp, 4(%esp)
	movl	$LC21, (%esp)
	call	_strstr
	testl	%eax, %eax
	je	L847
	movl	$0, (%edi)
	movl	$2, 4(%edi)
	jmp	L771
L816:
	xorl	%edx, %edx
	jmp	L779
L847:
	leal	24(%esp), %eax
	movl	$10, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	movl	%ebp, 24(%esp)
	call	_strtol
	movl	24(%esp), %ecx
	movl	8(%edi), %ebx
	movzbl	(%ecx), %edx
	cmpl	$9, %ebx
	je	L822
	cmpl	$23, %ebx
	je	L822
	testb	%dl, %dl
	je	L848
	movl	$1, 4(%edi)
	cmpl	$2, %ebx
	jne	L810
	movl	(%edi), %edx
	testl	%edx, %edx
	je	L849
L810:
	movl	12(%edi), %eax
	movl	$LC22, (%esp)
	movl	%eax, 4(%esp)
	call	__Z19_mi_warning_messagePKcz
	jmp	L771
L822:
	movl	%esi, 164(%esp)
	.cfi_offset 6, -16
	xorl	%esi, %esi
	testl	%eax, %eax
	cmovs	%esi, %eax
	cmpb	$75, %dl
	je	L850
	cmpb	$77, %dl
	je	L851
	cmpb	$71, %dl
	je	L852
	cmpb	$84, %dl
	je	L853
	addl	$1023, %eax
	shrl	$10, %eax
	cmpb	$73, %dl
	je	L854
	cmpb	$66, %dl
	jne	L792
	addl	$1, %ecx
	movl	%ecx, 24(%esp)
L792:
	cmpb	$0, (%ecx)
	je	L843
L804:
	movl	$1, 4(%edi)
	movl	164(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L810
L851:
	.cfi_restore_state
	movl	$1024, %edx
	mull	%edx
	seto	%dl
	addl	$1, %ecx
	movl	%edx, %ebp
L796:
	movl	%ecx, 24(%esp)
	movzbl	(%ecx), %esi
	movl	%esi, %edx
	cmpb	$73, %dl
	je	L855
	cmpb	$66, %dl
	jne	L808
	addl	$1, %ecx
	movl	%ecx, 24(%esp)
L808:
	movl	%ebp, %edx
	testb	%dl, %dl
	je	L856
	movl	$2097151, %eax
	jmp	L792
L855:
	cmpb	$66, 1(%ecx)
	je	L857
	movl	%ebp, %edx
	testb	%dl, %dl
	jne	L804
	testl	%eax, %eax
	js	L804
	jmp	L792
L848:
	.cfi_restore 6
	cmpl	$31, %ebx
	ja	L771
L813:
	leal	(%ebx,%ebx,4), %ecx
	movl	__ZL7options+8(,%ecx,4), %edx
	movl	%eax, __ZL7options(,%ecx,4)
	movl	$2, __ZL7options+4(,%ecx,4)
	cmpl	$30, %edx
	je	L858
	cmpl	$31, %edx
	jne	L771
	cmpl	%eax, __ZL7options+600
	jle	L771
	movl	$30, %ebx
	jmp	L813
L858:
	cmpl	%eax, __ZL7options+620
	jge	L771
	movl	$31, %ebx
	jmp	L813
L856:
	.cfi_offset 6, -16
	testl	%eax, %eax
	movl	$2097151, %edx
	cmovs	%edx, %eax
	jmp	L792
L850:
	leal	1(%ecx), %esi
	movl	%esi, 24(%esp)
	movzbl	1(%ecx), %edx
	cmpb	$73, %dl
	je	L859
	cmpb	$66, %dl
	je	L844
L805:
	movl	%esi, %ecx
	jmp	L792
L843:
	movl	164(%esp), %esi
	.cfi_restore 6
	jmp	L813
L849:
	movl	12(%edi), %eax
	movl	$1, (%edi)
	movl	$LC22, (%esp)
	movl	%eax, 4(%esp)
	call	__Z19_mi_warning_messagePKcz
	xorl	%eax, %eax
	movl	%eax, (%edi)
	jmp	L771
L853:
	.cfi_offset 6, -16
	movl	$1073741824, %edx
	mull	%edx
	seto	%dl
	addl	$1, %ecx
	movl	%edx, %ebp
	jmp	L796
L852:
	movl	$1048576, %edx
	mull	%edx
	seto	%dl
	addl	$1, %ecx
	movl	%edx, %ebp
	jmp	L796
L857:
	addl	$2, %ecx
	movl	%ecx, 24(%esp)
	jmp	L808
L854:
	cmpb	$66, 1(%ecx)
	jne	L804
L844:
	addl	$2, %ecx
	movl	%ecx, 24(%esp)
	jmp	L792
L859:
	cmpb	$66, 2(%ecx)
	jne	L805
	addl	$3, %ecx
	movl	%ecx, 24(%esp)
	jmp	L792
	.cfi_endproc
LFE91:
	.section .rdata,"dr"
LC23:
	.ascii "mimalloc: \0"
	.text
	.p2align 4
	.def	__Z19_mi_verbose_messagePKcz;	.scl	3;	.type	32;	.endef
__Z19_mi_verbose_messagePKcz:
LFB100:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	__ZL7options+44, %edx
	testl	%edx, %edx
	je	L867
L861:
	movl	__ZL7options+40, %eax
	testl	%eax, %eax
	jne	L868
L860:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L868:
	.cfi_restore_state
	leal	20(%esp), %ecx
	movl	%ecx, 8(%esp)
	call	__ZL21mi_recurse_enter_primv
	testb	%al, %al
	je	L860
	movl	16(%esp), %eax
	movl	%ecx, 4(%esp)
	xorl	%edx, %edx
	movl	$LC23, %ecx
	movl	%eax, (%esp)
	xorl	%eax, %eax
	call	__ZL11mi_vfprintfPU5cdeclFvPKcPvES1_S0_S0_Pc.part.0
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L867:
	.cfi_restore_state
	movl	$__ZL7options+40, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	jmp	L861
	.cfi_endproc
LFE100:
	.section .rdata,"dr"
LC24:
	.ascii "mimalloc: warning: \0"
	.text
	.p2align 4
	.def	__Z19_mi_warning_messagePKcz;	.scl	3;	.type	32;	.endef
__Z19_mi_warning_messagePKcz:
LFB102:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	__ZL7options+44, %eax
	testl	%eax, %eax
	je	L876
L870:
	movl	__ZL7options+40, %ecx
	testl	%ecx, %ecx
	jne	L874
	movl	__ZL7options+4, %edx
	testl	%edx, %edx
	je	L877
L873:
	movl	__ZL7options, %eax
	testl	%eax, %eax
	je	L869
	movl	$1, %eax
	lock xaddl	%eax, __ZL13warning_count
	cmpl	$16, %eax
	jg	L869
L874:
	movl	8(%esp), %edx
	leal	12(%esp), %ecx
	movl	$LC24, %eax
	movl	%ecx, (%esp)
	call	__ZL18mi_vfprintf_threadPU5cdeclFvPKcPvES1_S0_S0_Pc.constprop.0
L869:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L877:
	.cfi_restore_state
	movl	$__ZL7options, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	jmp	L873
	.p2align 4,,10
	.p2align 3
L876:
	movl	$__ZL7options+40, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	jmp	L870
	.cfi_endproc
LFE102:
	.section .rdata,"dr"
LC25:
	.ascii "mimalloc: error: \0"
	.text
	.p2align 4
	.def	__Z17_mi_error_messageiPKcz;	.scl	3;	.type	32;	.endef
__Z17_mi_error_messageiPKcz:
LFB104:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	__ZL7options+44, %eax
	leal	24(%esp), %ecx
	movl	%ecx, 8(%esp)
	testl	%eax, %eax
	je	L889
L879:
	movl	__ZL7options+40, %eax
	testl	%eax, %eax
	jne	L883
	movl	__ZL7options+4, %eax
	testl	%eax, %eax
	je	L890
L882:
	movl	__ZL7options, %edx
	testl	%edx, %edx
	je	L881
	movl	$1, %eax
	lock xaddl	%eax, __ZL11error_count
	cmpl	$16, %eax
	jg	L881
L883:
	movl	20(%esp), %edx
	movl	$LC25, %eax
	call	__ZL18mi_vfprintf_threadPU5cdeclFvPKcPvES1_S0_S0_Pc.constprop.0
L881:
	movl	__ZL16mi_error_handler, %eax
	testl	%eax, %eax
	je	L878
	movl	__ZL16mi_error_handler, %eax
	movl	__ZL12mi_error_arg, %edx
	movl	%edx, 4(%esp)
	movl	16(%esp), %edx
	movl	%edx, (%esp)
	call	*%eax
L878:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L890:
	.cfi_restore_state
	movl	$__ZL7options, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	leal	24(%esp), %ecx
	jmp	L882
	.p2align 4,,10
	.p2align 3
L889:
	movl	$__ZL7options+40, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	leal	24(%esp), %ecx
	jmp	L879
	.cfi_endproc
LFE104:
	.section .rdata,"dr"
	.align 4
LC26:
	.ascii "internal error: failed to visit all abandoned segments due to failure to acquire the visitor lock\0"
	.text
	.p2align 4
	.def	__ZL43mi_arena_segment_clear_abandoned_next_fieldP23mi_arena_field_cursor_s;	.scl	3;	.type	32;	.endef
__ZL43mi_arena_segment_clear_abandoned_next_fieldP23mi_arena_field_cursor_s:
LFB106:
	.cfi_startproc
	subl	$56, %esp
	.cfi_def_cfa_offset 60
	movl	%ebx, 40(%esp)
	movl	%edi, 48(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	movl	__ZL14mi_arena_count, %ebx
	movl	4(%eax), %edx
	cmpl	8(%eax), %edx
	jnb	L892
	movl	%esi, 44(%esp)
	movl	%ebp, 52(%esp)
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	movl	%eax, 8(%esp)
	movl	12(%eax), %eax
	movl	%eax, %esi
	andl	$31, %eax
	shrl	$5, %esi
	movl	%eax, %ebp
	jmp	L906
	.p2align 4,,10
	.p2align 3
L894:
	movl	8(%esp), %eax
	xorl	%esi, %esi
	xorl	%ebp, %ebp
	movl	4(%eax), %edi
	leal	1(%edi), %edx
	movl	%edi, 12(%esp)
	movl	%edx, 4(%eax)
	cmpl	8(%eax), %edx
	jnb	L924
L906:
	cmpl	%ebx, %edx
	jb	L893
	movl	%edx, %eax
	xorl	%edx, %edx
	divl	%ebx
L893:
	movl	__ZL9mi_arenas(,%edx,4), %ecx
	testl	%ecx, %ecx
	je	L894
	cmpl	32(%ecx), %esi
	jnb	L894
	movb	$0, 27(%esp)
	movl	%ecx, %edi
	movl	%ebx, 36(%esp)
	jmp	L905
	.p2align 5
	.p2align 4,,10
	.p2align 3
L895:
	addl	$1, %esi
	xorl	%ebp, %ebp
	cmpl	32(%edi), %esi
	jnb	L925
L905:
	movl	116(%edi), %eax
	movl	(%eax,%esi,4), %ecx
	testl	%ecx, %ecx
	je	L895
	cmpb	$0, 27(%esp)
	jne	L899
	movl	__ZL7options+584, %edx
	testl	%edx, %edx
	je	L926
L897:
	movl	__ZL7options+580, %eax
	testl	%eax, %eax
	je	L899
	movl	8(%esp), %eax
	movl	%ecx, 12(%esp)
	movzbl	20(%eax), %edx
	leal	68(%edi), %eax
	movl	%eax, (%esp)
	movb	%dl, 27(%esp)
	testb	%dl, %dl
	je	L898
	call	*__imp__EnterCriticalSection@4
	.cfi_def_cfa_offset 56
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	movl	12(%esp), %ecx
L899:
	movl	%esi, %ebx
	movl	%esi, 28(%esp)
	movl	%ecx, %edx
	sall	$5, %ebx
	movl	%ebx, 32(%esp)
	leal	0(%ebp,%ebx), %eax
	jmp	L904
	.p2align 5
	.p2align 4,,10
	.p2align 3
L900:
	addl	$1, %ebp
	addl	$1, %eax
	cmpl	$32, %ebp
	je	L927
L904:
	movl	$1, %esi
	movl	%ebp, %ecx
	movl	%edx, %ebx
	sall	%cl, %esi
	notl	%ebx
	testl	%esi, %ebx
	jne	L900
	movl	%eax, %ecx
	movl	8(%esp), %esi
	movl	$1, %ebx
	sall	%cl, %ebx
	movl	116(%edi), %ecx
	movl	16(%esi), %esi
	movl	%ebx, 20(%esp)
	movl	%eax, %ebx
	shrl	$5, %ebx
	movl	%esi, 16(%esp)
	movl	%eax, %esi
	movl	%ebx, 12(%esp)
	andl	$31, %esi
	lock btrl	%esi, (%ecx,%ebx,4)
	setc	%bl
	movl	%esi, %ecx
	movzbl	%bl, %ebx
	sall	%cl, %ebx
	cmpl	20(%esp), %ebx
	jne	L900
	movl	%eax, %esi
	sall	$21, %esi
	movl	24(%edi), %ecx
	addl	%esi, %ecx
	movl	16(%esp), %esi
	cmpl	28(%ecx), %esi
	je	L901
	movl	116(%edi), %ecx
	movl	12(%esp), %esi
	lock orl	%ebx, (%ecx,%esi,4)
	addl	$1, %ebp
	addl	$1, %eax
	cmpl	$32, %ebp
	jne	L904
	.p2align 4
	.p2align 3
L927:
	movl	28(%esp), %esi
	xorl	%ebp, %ebp
	addl	$1, %esi
	cmpl	32(%edi), %esi
	jb	L905
	.p2align 4
	.p2align 3
L925:
	movl	36(%esp), %ebx
	cmpb	$0, 27(%esp)
	je	L894
	leal	68(%edi), %eax
	movl	%eax, (%esp)
	call	*__imp__LeaveCriticalSection@4
	.cfi_def_cfa_offset 56
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	jmp	L894
	.p2align 4,,10
	.p2align 3
L901:
	movl	%ecx, %edx
	movl	32(%esp), %eax
	movl	%edi, %ecx
	movl	%edx, %edi
	movl	16(%esp), %edx
	lock subl	$1, (%edx)
	cmpb	$0, 27(%esp)
	jne	L928
L902:
	movl	8(%esp), %edx
	leal	1(%ebp,%eax), %eax
	movl	%eax, 12(%edx)
	movl	%edi, %eax
	movl	44(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	52(%esp), %ebp
	.cfi_restore 5
	movl	40(%esp), %ebx
	movl	48(%esp), %edi
	addl	$56, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L898:
	.cfi_restore_state
	call	*__imp__TryEnterCriticalSection@4
	.cfi_def_cfa_offset 56
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	testl	%eax, %eax
	movl	12(%esp), %ecx
	je	L929
	movb	$1, 27(%esp)
	jmp	L899
L924:
	movl	44(%esp), %esi
	.cfi_restore 6
	movl	52(%esp), %ebp
	.cfi_restore 5
L892:
	xorl	%edi, %edi
	movl	40(%esp), %ebx
	movl	%edi, %eax
	movl	48(%esp), %edi
	addl	$56, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L926:
	.cfi_def_cfa_offset 60
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$__ZL7options+580, %eax
	movl	%ecx, 12(%esp)
	call	__ZL14mi_option_initP16mi_option_desc_s
	movl	12(%esp), %ecx
	jmp	L897
	.p2align 4,,10
	.p2align 3
L928:
	leal	68(%ecx), %edx
	movl	%eax, 12(%esp)
	movl	%edx, (%esp)
	call	*__imp__LeaveCriticalSection@4
	.cfi_def_cfa_offset 56
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	movl	12(%esp), %eax
	jmp	L902
L929:
	movl	8(%esp), %eax
	movl	36(%esp), %ebx
	cmpb	$0, 20(%eax)
	je	L894
	movl	$LC26, 4(%esp)
	movl	$14, (%esp)
	call	__Z17_mi_error_messageiPKcz
	jmp	L894
	.cfi_endproc
LFE106:
	.section .rdata,"dr"
	.align 4
LC27:
	.ascii "internal error: failed to visit all abandoned segments due to failure to acquire the OS visitor lock\0"
	.text
	.p2align 4
	.def	__ZL42mi_arena_segment_clear_abandoned_next_listP23mi_arena_field_cursor_s;	.scl	3;	.type	32;	.endef
__ZL42mi_arena_segment_clear_abandoned_next_listP23mi_arena_field_cursor_s:
LFB110:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 20
	cmpb	$0, 21(%eax)
	jne	L945
	movl	16(%eax), %eax
	addl	$32, %eax
	cmpb	$0, 20(%ebx)
	movl	%eax, (%esp)
	je	L932
	call	*__imp__EnterCriticalSection@4
	.cfi_def_cfa_offset 16
	movl	(%ebx), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movb	$1, 21(%ebx)
	testl	%eax, %eax
	je	L933
	.p2align 4
	.p2align 3
L935:
	subl	$1, %eax
	movl	%eax, (%ebx)
	movl	16(%ebx), %eax
	addl	$8, %eax
	movl	%eax, (%esp)
	call	*__imp__EnterCriticalSection@4
	.cfi_def_cfa_offset 16
	movl	16(%ebx), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	56(%eax), %esi
	testl	%esi, %esi
	je	L934
	xorl	%edx, %edx
	movl	%esi, %eax
	call	__ZL35mi_arena_segment_os_clear_abandonedP12mi_segment_sb
	testb	%al, %al
	movl	16(%ebx), %eax
	jne	L934
	addl	$8, %eax
	movl	%eax, (%esp)
	call	*__imp__LeaveCriticalSection@4
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
L945:
	movl	(%ebx), %eax
	testl	%eax, %eax
	jne	L935
L933:
	xorl	%esi, %esi
L946:
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L934:
	.cfi_restore_state
	addl	$8, %eax
	movl	%eax, (%esp)
	call	*__imp__LeaveCriticalSection@4
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	subl	$4, %esp
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
L932:
	.cfi_restore_state
	call	*__imp__TryEnterCriticalSection@4
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	testl	%eax, %eax
	setne	21(%ebx)
	jne	L945
	cmpb	$0, 20(%ebx)
	je	L933
	movl	$LC27, 4(%esp)
	xorl	%esi, %esi
	movl	$14, (%esp)
	call	__Z17_mi_error_messageiPKcz
	jmp	L946
	.cfi_endproc
LFE110:
	.section .rdata,"dr"
LC28:
	.ascii "corrupted thread-free list\12\0"
	.text
	.p2align 4
	.def	__Z21_mi_page_free_collectP9mi_page_sb;	.scl	3;	.type	32;	.endef
__Z21_mi_page_free_collectP9mi_page_sb:
LFB111:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%edi, 24(%esp)
	.cfi_offset 7, -12
	leal	28(%eax), %edi
	movb	%dl, 11(%esp)
	testb	%dl, %dl
	jne	L948
	cmpl	$3, 28(%eax)
	jbe	L976
L948:
	movl	%esi, 20(%esp)
	movl	28(%ebx), %ecx
	.cfi_offset 6, -16
L951:
	movl	%ecx, %edx
	movl	%ecx, %eax
	andl	$3, %edx
	lock cmpxchgl	%edx, (%edi)
	sete	%dl
	movzbl	%dl, %edx
	movl	%edx, %esi
	testl	%edx, %edx
	je	L959
	cmpl	$3, %ecx
	jbe	L952
	movl	%ecx, %eax
	movl	%ebp, 28(%esp)
	.cfi_offset 5, -8
	movzwl	2(%ebx), %ebp
	andl	$-4, %eax
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	je	L960
	movl	%ebp, 12(%esp)
	leal	1(%ebp), %esi
	movl	%eax, %edi
	jmp	L954
	.p2align 5
	.p2align 4,,10
	.p2align 3
L978:
	movl	(%ecx), %ebp
	addl	$1, %edx
	movl	%ecx, %edi
	testl	%ebp, %ebp
	je	L977
	movl	%ebp, %ecx
L954:
	cmpl	%esi, %edx
	jne	L978
	movl	12(%esp), %ebp
L953:
	cmpl	%esi, %ebp
	jb	L979
	movl	12(%ebx), %edx
	movl	%edx, (%edi)
	movl	%eax, 12(%ebx)
	subw	%si, 16(%ebx)
	movl	28(%esp), %ebp
	.cfi_restore 5
L956:
	movl	8(%ebx), %edx
	testl	%edx, %edx
	jne	L957
	movl	20(%esp), %esi
	.cfi_restore 6
L950:
	andb	$-2, 7(%ebx)
	movl	%eax, 8(%ebx)
	movl	$0, 12(%ebx)
	movl	16(%esp), %ebx
	movl	24(%esp), %edi
	addl	$32, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L979:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$LC28, 4(%esp)
	movl	$14, (%esp)
	call	__Z17_mi_error_messageiPKcz
	movl	28(%esp), %ebp
	.cfi_restore 5
L952:
	movl	12(%ebx), %eax
	testl	%eax, %eax
	jne	L956
L975:
	movl	20(%esp), %esi
	.cfi_restore 6
L947:
	movl	16(%esp), %ebx
	movl	24(%esp), %edi
	addl	$32, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L976:
	.cfi_restore_state
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L947
	movl	8(%ebx), %edx
	testl	%edx, %edx
	je	L950
	jmp	L947
	.p2align 4,,10
	.p2align 3
L977:
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	12(%esp), %ebp
	movl	%edx, %esi
	jmp	L953
	.p2align 4,,10
	.p2align 3
L957:
	.cfi_restore 5
	cmpb	$0, 11(%esp)
	je	L975
	.p2align 3
	.p2align 4
	.p2align 3
L958:
	movl	%eax, %ecx
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L958
	movl	%edx, (%ecx)
	movl	12(%ebx), %eax
	andb	$-2, 7(%ebx)
	movl	%eax, 8(%ebx)
	movl	$0, 12(%ebx)
	movl	20(%esp), %esi
	.cfi_restore 6
	jmp	L947
L960:
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	%eax, %edi
	jmp	L953
L959:
	.cfi_restore 5
	movl	%eax, %ecx
	jmp	L951
	.cfi_endproc
LFE111:
	.section .rdata,"dr"
LC29:
	.ascii "using %zd numa regions\12\0"
	.text
	.p2align 4
	.def	__Z26_mi_os_numa_node_count_getv;	.scl	3;	.type	32;	.endef
__Z26_mi_os_numa_node_count_getv:
LFB113:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	__mi_numa_node_count, %ebx
	testl	%ebx, %ebx
	je	L1005
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1005:
	.cfi_restore_state
	movl	__ZL7options+324, %edx
	testl	%edx, %edx
	je	L1006
L982:
	movl	__ZL7options+320, %ebx
	testl	%ebx, %ebx
	jle	L1007
L984:
	movl	%ebx, __mi_numa_node_count
	movl	%ebx, 4(%esp)
	movl	$LC29, (%esp)
	call	__Z19_mi_verbose_messagePKcz
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1007:
	.cfi_restore_state
	leal	8(%esp), %eax
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	call	*__imp__GetNumaHighestNodeNumber@4
	.cfi_def_cfa_offset 28
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	movl	8(%esp), %eax
	leal	12(%esp), %ebx
	testl	%eax, %eax
	jne	L985
	jmp	L993
	.p2align 4,,10
	.p2align 3
L1008:
	movzwl	%ax, %eax
	movl	%eax, (%esp)
	call	*%edx
	.cfi_def_cfa_offset 24
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	testl	%eax, %eax
	je	L990
	movl	12(%esp), %eax
	testl	%eax, %eax
	jne	L1004
L990:
	movl	8(%esp), %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	je	L993
L985:
	movl	__ZL27pGetNumaNodeProcessorMaskEx, %edx
	movl	%ebx, 4(%esp)
	testl	%edx, %edx
	jne	L1008
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	*__imp__GetNumaNodeProcessorMask@8
	.cfi_def_cfa_offset 24
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	testl	%eax, %eax
	je	L990
	movl	12(%esp), %eax
	orl	16(%esp), %eax
	je	L990
	.p2align 4
	.p2align 3
L1004:
	movl	8(%esp), %eax
	leal	1(%eax), %ebx
	jmp	L986
	.p2align 4,,10
	.p2align 3
L993:
	movl	$1, %ebx
L986:
	testl	%ebx, %ebx
	movl	$1, %eax
	cmove	%eax, %ebx
	jmp	L984
	.p2align 4,,10
	.p2align 3
L1006:
	movl	$__ZL7options+320, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	jmp	L982
	.cfi_endproc
LFE113:
	.p2align 4
	.def	__ZL14mi_stat_updateP15mi_stat_count_sx.part.0;	.scl	3;	.type	32;	.endef
__ZL14mi_stat_updateP15mi_stat_count_sx.part.0:
LFB117:
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
	andl	$-8, %esp
	subl	$32, %esp
	.cfi_offset 3, -20
	movl	%edx, 16(%esp)
	movl	%ecx, 20(%esp)
	cmpl	$__mi_stats_main, %eax
	jb	L1010
	cmpl	$__mi_stats_main+672, %eax
	jb	L1040
L1010:
	movl	20(%esi), %ecx
	movl	16(%esp), %eax
	movl	20(%esp), %edx
	addl	24(%esi), %eax
	adcl	28(%esi), %edx
	cmpl	%eax, 16(%esi)
	movl	%eax, 24(%esi)
	sbbl	%edx, %ecx
	movl	%edx, 28(%esi)
	jge	L1017
	movl	%eax, 16(%esi)
	movl	%edx, 20(%esi)
L1017:
	movl	16(%esp), %edx
	xorl	%eax, %eax
	movl	20(%esp), %ecx
	cmpl	%edx, %eax
	sbbl	%ecx, %eax
	jge	L1021
	addl	%edx, (%esi)
	adcl	%ecx, 4(%esi)
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
L1021:
	.cfi_restore_state
	movl	16(%esp), %eax
	movl	20(%esp), %edx
	subl	%eax, 8(%esi)
	sbbl	%edx, 12(%esi)
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
L1040:
	.cfi_restore_state
	movl	24(%eax), %eax
	movl	28(%esi), %edx
L1011:
	movl	16(%esp), %ecx
	movl	20(%esp), %ebx
	addl	%eax, %ecx
	adcl	%edx, %ebx
	movl	%ecx, 8(%esp)
	movl	%ebx, 12(%esp)
	movl	%ebx, %edi
	movl	8(%esp), %ebx
	movl	%ecx, (%esp)
	movl	12(%esp), %ecx
	lock cmpxchg8b	24(%esi)
	jne	L1011
	movl	8(%esp), %eax
	movl	%edi, %ecx
	movl	%eax, %edi
	leal	16(%esi), %eax
	movl	%eax, 4(%esp)
	movlps	16(%esi), %xmm0
	movl	%esi, 8(%esp)
	movlps	%xmm0, 24(%esp)
	movl	24(%esp), %eax
	movl	28(%esp), %edx
L1013:
	cmpl	%edi, %eax
	movl	%edx, %ebx
	sbbl	%ecx, %ebx
	jge	L1012
	movl	4(%esp), %esi
	movl	(%esp), %ebx
	lock cmpxchg8b	(%esi)
	jne	L1013
L1012:
	movl	16(%esp), %edx
	xorl	%eax, %eax
	movl	20(%esp), %ecx
	movl	8(%esp), %esi
	cmpl	%edx, %eax
	sbbl	%ecx, %eax
	jge	L1041
	movl	(%esi), %eax
	movl	4(%esi), %edx
L1018:
	movl	16(%esp), %ecx
	movl	20(%esp), %ebx
	addl	%eax, %ecx
	adcl	%edx, %ebx
	movl	%ecx, 8(%esp)
	movl	%ebx, 12(%esp)
	movl	8(%esp), %ebx
	movl	12(%esp), %ecx
	lock cmpxchg8b	(%esi)
	jne	L1018
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
L1041:
	.cfi_restore_state
	movl	8(%esi), %eax
	movl	12(%esi), %edx
L1020:
	movl	%eax, %ecx
	movl	%edx, %ebx
	subl	16(%esp), %ecx
	sbbl	20(%esp), %ebx
	movl	%ecx, 8(%esp)
	movl	%ebx, 12(%esp)
	movl	8(%esp), %ebx
	movl	12(%esp), %ecx
	lock cmpxchg8b	8(%esi)
	jne	L1020
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
LFE117:
	.section .rdata,"dr"
	.align 4
LC30:
	.ascii "cannot commit OS memory (error: %d (0x%x), address: %p, size: 0x%zx bytes)\12\0"
	.text
	.p2align 4
	.def	__Z13_mi_os_commitPvjPbP10mi_stats_s.isra.0;	.scl	3;	.type	32;	.endef
__Z13_mi_os_commitPvjPbP10mi_stats_s.isra.0:
LFB120:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$28, %esp
	.cfi_def_cfa_offset 44
	testl	%ecx, %ecx
	je	L1043
	movb	$0, (%ecx)
L1043:
	xorl	%ebx, %ebx
	movl	%edx, %eax
	orl	%ebx, %eax
	je	L1044
	movl	$__mi_stats_main+96, %eax
	movl	%ebx, %ecx
	movl	%edx, %esi
	call	__ZL14mi_stat_updateP15mi_stat_count_sx.part.0
	movl	__mi_stats_main+520, %eax
	movl	__mi_stats_main+524, %edx
L1045:
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	$1, %ecx
	adcl	$0, %ebx
	movl	%ecx, 20(%esp)
	movl	%ebx, 24(%esp)
	movl	20(%esp), %ebx
	movl	24(%esp), %ecx
	lock cmpxchg8b	__mi_stats_main+520
	jne	L1045
	movl	__mi_stats_main+512, %eax
	movl	__mi_stats_main+516, %edx
L1046:
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	$1, %ecx
	adcl	$0, %ebx
	movl	%ecx, 20(%esp)
	movl	%ebx, 24(%esp)
	movl	20(%esp), %ebx
	movl	24(%esp), %ecx
	lock cmpxchg8b	__mi_stats_main+512
	jne	L1046
	testl	%edi, %edi
	je	L1047
	movl	__ZL16mi_os_mem_config, %ebx
	leal	(%edi,%esi), %ecx
	leal	-1(%ebx), %eax
	addl	%eax, %ecx
	testl	%eax, %ebx
	je	L1071
	movl	%edi, %eax
	xorl	%edx, %edx
	divl	%ebx
	movl	%ecx, %eax
	subl	%edx, %edi
	xorl	%edx, %edx
	divl	%ebx
	subl	%edx, %ecx
L1049:
	movl	%ecx, %ebx
	subl	%edi, %ebx
	testl	%ebx, %ebx
	jle	L1047
	movl	$4, 12(%esp)
	movl	$4096, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%edi, (%esp)
	call	*__imp__VirtualAlloc@16
	.cfi_def_cfa_offset 28
	subl	$16, %esp
	.cfi_def_cfa_offset 44
	testl	%eax, %eax
	je	L1072
L1047:
	movl	$1, %eax
L1042:
	addl	$28, %esp
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
L1071:
	.cfi_restore_state
	negl	%ebx
	andl	%ebx, %edi
	andl	%ebx, %ecx
	jmp	L1049
	.p2align 4,,10
	.p2align 3
L1072:
	call	*__imp__GetLastError@0
	testl	%eax, %eax
	je	L1047
	movl	%eax, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, 16(%esp)
	movl	%edi, 12(%esp)
	movl	$LC30, (%esp)
	call	__Z19_mi_warning_messagePKcz
	xorl	%eax, %eax
	jmp	L1042
	.p2align 4,,10
	.p2align 3
L1044:
	movl	__mi_stats_main+520, %eax
	movl	__mi_stats_main+524, %edx
L1050:
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	$1, %ecx
	adcl	$0, %ebx
	movl	%ebx, %edi
	movl	%ecx, %ebx
	movl	%edi, %ecx
	lock cmpxchg8b	__mi_stats_main+520
	jne	L1050
	movl	__mi_stats_main+512, %eax
	movl	__mi_stats_main+516, %edx
L1051:
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	$1, %ecx
	adcl	$0, %ebx
	movl	%ebx, %edi
	movl	%ecx, %ebx
	movl	%edi, %ecx
	lock cmpxchg8b	__mi_stats_main+512
	je	L1047
	jmp	L1051
	.cfi_endproc
LFE120:
	.p2align 4
	.def	__ZL21mi_arena_try_alloc_atP10mi_arena_sjjbP10mi_memid_sP11mi_os_tld_s.isra.0;	.scl	3;	.type	32;	.endef
__ZL21mi_arena_try_alloc_atP10mi_arena_sjjbP10mi_memid_sP11mi_os_tld_s.isra.0:
LFB130:
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
	leal	120(%esi), %ebp
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	movl	32(%eax), %eax
	movl	%edx, 32(%esp)
	movb	%cl, 43(%esp)
	movl	%eax, 12(%esp)
	cmpl	$2, %edx
	jbe	L1074
	testl	%eax, %eax
	je	L1075
	movl	%ebp, 4(%esp)
	movl	%edx, %edi
	movl	$0, 8(%esp)
	movl	%ebp, 44(%esp)
	movl	%esi, 36(%esp)
	.p2align 4
	.p2align 3
L1076:
	movl	$4, 20(%esp)
L1099:
	movl	4(%esp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1109
	bsrl	%eax, %eax
	xorl	$31, %eax
	je	L1081
	movl	%eax, %ebp
	cmpl	%edi, %ebp
	jnb	L1148
L1082:
	leal	31(%edi), %eax
	movl	12(%esp), %edx
	subl	8(%esp), %edx
	subl	%ebp, %eax
	shrl	$5, %eax
	cmpl	%edx, %eax
	jnb	L1081
	movl	%ebp, 16(%esp)
	movl	4(%esp), %edx
	movl	%ebp, %eax
	jmp	L1084
	.p2align 4,,10
	.p2align 3
L1150:
	movl	%edi, %ecx
	movl	$1, %ebp
	movl	$-1, %esi
	subl	%eax, %ecx
	sall	%cl, %ebp
	subl	$1, %ebp
	cmpl	$31, %ecx
	cmovbe	%ebp, %esi
	movl	%ebx, %ebp
	andl	%esi, %ebp
	cmpl	$31, %ecx
	cmovbe	%ebp, %ebx
	testl	%ebx, %ebx
	jne	L1081
L1151:
	addl	%ecx, %eax
	cmpl	%edi, %eax
	jnb	L1149
L1084:
	leal	32(%eax), %ecx
	addl	$4, %edx
	movl	(%edx), %ebx
	cmpl	%ecx, %edi
	jb	L1150
	movl	$32, %ecx
	movl	$-1, %esi
	testl	%ebx, %ebx
	je	L1151
L1081:
	addl	$1, 8(%esp)
	movl	8(%esp), %eax
	addl	$4, 4(%esp)
	cmpl	%eax, 12(%esp)
	jne	L1076
L1075:
	xorl	%ebx, %ebx
L1073:
	addl	$76, %esp
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
L1149:
	.cfi_restore_state
	movl	16(%esp), %ebp
	movl	$32, %ebx
	movl	$1, %eax
	movl	$-1, 16(%esp)
	movl	%ebp, %ecx
	subl	%ebp, %ebx
	sall	%cl, %eax
	movl	%ebx, %ecx
	movl	%ebx, 24(%esp)
	subl	$1, %eax
	sall	%cl, %eax
	cmpl	$32, %ebp
	cmove	16(%esp), %eax
	movl	%eax, 16(%esp)
	movl	4(%esp), %eax
	movl	(%eax), %eax
L1088:
	movl	16(%esp), %ebx
	testl	%eax, %ebx
	jne	L1086
	movl	%ebx, %ecx
	movl	4(%esp), %ebx
	orl	%eax, %ecx
	lock cmpxchgl	%ecx, (%ebx)
	jne	L1088
	movl	%esi, 28(%esp)
	movl	4(%esp), %ecx
	xorl	%ebp, %ebp
	jmp	L1087
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1090:
	movl	%ebp, %eax
	movl	$-1, %esi
	lock cmpxchgl	%esi, (%ecx)
	jne	L1092
L1087:
	movl	%ecx, %ebx
	addl	$4, %ecx
	cmpl	%edx, %ecx
	jb	L1090
	movl	28(%esp), %esi
	movl	(%ecx), %eax
L1093:
	testl	%eax, %esi
	jne	L1092
	movl	%esi, %edx
	orl	%eax, %edx
	lock cmpxchgl	%edx, (%ecx)
	jne	L1093
	movl	8(%esp), %eax
	movl	36(%esp), %esi
	sall	$5, %eax
	addl	24(%esp), %eax
	movl	%eax, 52(%esp)
L1094:
	shrl	$5, %eax
	movl	%eax, 92(%esi)
	movl	52(%esp), %eax
	sall	$21, %eax
	movl	24(%esi), %ebx
	addl	%eax, %ebx
	movl	$0, 64(%esp)
	movl	$0, 68(%esp)
	movzbl	64(%esi), %edx
	movl	(%esi), %eax
	movl	$6, 72(%esp)
	movl	52(%esp), %edi
	movb	%dl, 64(%esp)
	movl	96(%esp), %edx
	movl	%eax, 60(%esp)
	movl	%eax, 4(%edx)
	movl	64(%esp), %eax
	movl	$0, 12(%edx)
	movl	%edi, (%edx)
	movl	%eax, 8(%edx)
	movl	$6, 16(%edx)
	movzbl	16(%esi), %eax
	movl	%edi, 56(%esp)
	movb	%al, 12(%edx)
	movl	112(%esi), %eax
	testl	%eax, %eax
	je	L1100
	movl	32(%esp), %edx
	movl	%edi, %ecx
	call	__Z25_mi_bitmap_unclaim_acrossPSt6atomicIjEjjj.isra.0
L1100:
	cmpb	$0, 18(%esi)
	je	L1101
	movl	104(%esi), %eax
	testl	%eax, %eax
	je	L1101
	movl	$0, (%esp)
	movl	32(%esp), %edx
	movl	%edi, %ecx
	call	__Z23_mi_bitmap_claim_acrossPSt6atomicIjEjjjPb.isra.0
	movl	96(%esp), %edx
	movb	%al, 14(%edx)
L1101:
	movl	108(%esi), %eax
	testl	%eax, %eax
	je	L1152
	cmpb	$0, 43(%esp)
	je	L1103
	movl	96(%esp), %eax
	leal	51(%esp), %edx
	movl	%edi, %ecx
	movb	$1, 13(%eax)
	movl	108(%esi), %eax
	movl	%edx, (%esp)
	movl	32(%esp), %edx
	call	__Z23_mi_bitmap_claim_acrossPSt6atomicIjEjjjPb.isra.0
	cmpb	$0, 51(%esp)
	je	L1073
	movl	32(%esp), %edx
	leal	56(%esp), %ecx
	movl	%ebx, %eax
	movb	$0, 56(%esp)
	sall	$21, %edx
	call	__Z13_mi_os_commitPvjPbP10mi_stats_s.isra.0
	testb	%al, %al
	je	L1153
	cmpb	$0, 56(%esp)
	je	L1073
	movl	96(%esp), %eax
	movb	$1, 14(%eax)
	jmp	L1073
	.p2align 4,,10
	.p2align 3
L1109:
	movl	$32, %ebp
	cmpl	%edi, %ebp
	jb	L1082
L1148:
	leal	52(%esp), %eax
	movl	8(%esp), %edx
	movl	%edi, %ecx
	movl	%eax, (%esp)
	movl	44(%esp), %eax
	call	__Z31_mi_bitmap_try_find_claim_fieldPSt6atomicIjEjjPj
	testb	%al, %al
	je	L1081
	movl	36(%esp), %esi
	jmp	L1079
L1152:
	movl	96(%esp), %eax
	movb	$1, 13(%eax)
	addl	$76, %esp
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
L1086:
	.cfi_restore_state
	movl	4(%esp), %eax
	leal	-4(%eax), %ebx
L1092:
	movl	4(%esp), %edx
	movl	%ebx, %eax
	cmpl	%ebx, 4(%esp)
	jnb	L1096
	.p2align 4
	.p2align 4
	.p2align 3
L1095:
	subl	$4, %eax
	movl	$0, 4(%eax)
	cmpl	%eax, %edx
	jb	L1095
	movl	%ebx, %eax
	subl	4(%esp), %eax
	subl	$4, %ebx
	subl	$1, %eax
	andl	$-4, %eax
	subl	%eax, %ebx
L1096:
	cmpl	%ebx, 4(%esp)
	je	L1154
L1097:
	subl	$1, 20(%esp)
	jne	L1099
	jmp	L1081
	.p2align 4,,10
	.p2align 3
L1074:
	movl	12(%esp), %eax
	leal	52(%esp), %ebx
	testl	%eax, %eax
	je	L1075
	movl	%esi, 4(%esp)
	movl	12(%esp), %edi
	xorl	%esi, %esi
	jmp	L1077
	.p2align 4,,10
	.p2align 3
L1155:
	addl	$1, %esi
	cmpl	%esi, %edi
	je	L1075
L1077:
	movl	%ebx, (%esp)
	movl	32(%esp), %ecx
	movl	%esi, %edx
	movl	%ebp, %eax
	call	__Z31_mi_bitmap_try_find_claim_fieldPSt6atomicIjEjjPj
	testb	%al, %al
	je	L1155
	movl	4(%esp), %esi
L1079:
	movl	52(%esp), %eax
	jmp	L1094
	.p2align 4,,10
	.p2align 3
L1103:
	movl	32(%esp), %edx
	movl	%edi, %ecx
	call	__ZL28mi_bitmap_is_claimedx_acrossPSt6atomicIjEjjjPb.constprop.0.isra.0
	movl	96(%esp), %edi
	movb	%al, 13(%edi)
	addl	$76, %esp
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
L1153:
	.cfi_restore_state
	movl	96(%esp), %eax
	movb	$0, 13(%eax)
	jmp	L1073
L1154:
	movl	4(%esp), %eax
	movl	(%eax), %eax
	movl	16(%esp), %ecx
	notl	%ecx
L1098:
	movl	%ecx, %edx
	movl	4(%esp), %esi
	andl	%eax, %edx
	lock cmpxchgl	%edx, (%esi)
	je	L1097
	jmp	L1098
	.cfi_endproc
LFE130:
	.p2align 4
	.def	__ZL24mi_arena_try_alloc_at_idibijjbbiP10mi_memid_sP11mi_os_tld_s.isra.0;	.scl	3;	.type	32;	.endef
__ZL24mi_arena_try_alloc_at_idibijjbbiP10mi_memid_sP11mi_os_tld_s.isra.0:
LFB146:
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
	leal	-4(,%eax,4), %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	testl	%eax, %eax
	movl	$528, %eax
	cmovle	%eax, %esi
	movl	28(%esp), %edi
	movzbl	32(%esp), %ebp
	movb	%dl, 7(%esp)
	movl	44(%esp), %ebx
	movl	40(%esp), %edx
	movl	%ecx, (%esp)
	movzbl	36(%esp), %ecx
	movl	__ZL9mi_arenas(%esi), %eax
	testl	%eax, %eax
	je	L1159
	testb	%cl, %cl
	jne	L1160
	cmpb	$0, 65(%eax)
	jne	L1159
L1160:
	movl	(%eax), %ecx
	cmpb	$0, 64(%eax)
	jne	L1162
	testl	%edx, %edx
	je	L1163
	cmpl	%edx, %ecx
	jne	L1159
L1164:
	movl	%ebx, 28(%esp)
	movl	%ebp, %ecx
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	leal	2097151(%edi), %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movzbl	%cl, %ecx
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	shrl	$21, %edx
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	__ZL21mi_arena_try_alloc_atP10mi_arena_sjjbP10mi_memid_sP11mi_os_tld_s.isra.0
	.p2align 4,,10
	.p2align 3
L1162:
	.cfi_restore_state
	cmpl	%edx, %ecx
	je	L1174
L1159:
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
L1174:
	.cfi_restore_state
	testl	%edx, %edx
	jne	L1164
L1163:
	movl	(%esp), %esi
	testl	%esi, %esi
	js	L1165
	movl	60(%eax), %edx
	testl	%edx, %edx
	js	L1165
	cmpl	%edx, %esi
	je	L1165
	cmpb	$0, 7(%esp)
	jne	L1159
	jmp	L1164
	.p2align 4,,10
	.p2align 3
L1165:
	cmpb	$0, 7(%esp)
	je	L1159
	jmp	L1164
	.cfi_endproc
LFE146:
	.p2align 4
	.def	__ZL18mi_arena_try_allocijjbbiP10mi_memid_sP11mi_os_tld_s.isra.0;	.scl	3;	.type	32;	.endef
__ZL18mi_arena_try_allocijjbbiP10mi_memid_sP11mi_os_tld_s.isra.0:
LFB148:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	%ebx, 28(%esp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	__ZL14mi_arena_count, %edx
	testl	%edx, %edx
	jne	L1198
L1176:
	xorl	%eax, %eax
L1175:
	movl	28(%esp), %ebx
	addl	$44, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1198:
	.cfi_restore_state
	movl	%esi, 32(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	52(%esp), %eax
	movl	%edi, 36(%esp)
	.cfi_offset 7, -12
	movl	%ebx, %edi
	movl	%ebp, 40(%esp)
	.cfi_offset 5, -8
	movl	%ecx, %ebp
	testl	%eax, %eax
	je	L1185
	movl	52(%esp), %eax
	movl	$132, %ecx
	leal	-1(%eax), %ebx
	testl	%eax, %eax
	cmovle	%ecx, %ebx
	cmpl	%edx, %ebx
	jnb	L1199
	movl	56(%esp), %eax
	movzbl	48(%esp), %edx
	movl	%edi, (%esp)
	movl	%esi, %ecx
	movl	%eax, 16(%esp)
	movl	52(%esp), %eax
	movl	%edx, 8(%esp)
	movl	$1, %edx
	movl	%eax, 12(%esp)
	movl	%ebp, %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	52(%esp), %eax
	call	__ZL24mi_arena_try_alloc_at_idibijjbbiP10mi_memid_sP11mi_os_tld_s.isra.0
	movl	32(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	36(%esp), %edi
	.cfi_restore 7
	movl	40(%esp), %ebp
	.cfi_restore 5
	jmp	L1175
	.p2align 4,,10
	.p2align 3
L1185:
	.cfi_restore_state
	movzbl	48(%esp), %eax
	movl	%edx, 24(%esp)
	movl	$1, %ebx
	movzbl	%cl, %ebp
	movl	%eax, 20(%esp)
	jmp	L1177
	.p2align 4,,10
	.p2align 3
L1187:
	addl	$1, %ebx
L1177:
	movl	56(%esp), %eax
	movl	%ebp, 4(%esp)
	movl	%esi, %ecx
	movl	$1, %edx
	movl	$0, 12(%esp)
	movl	%eax, 16(%esp)
	movl	20(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, %eax
	call	__ZL24mi_arena_try_alloc_at_idibijjbbiP10mi_memid_sP11mi_os_tld_s.isra.0
	testl	%eax, %eax
	jne	L1197
	cmpl	%ebx, 24(%esp)
	jne	L1187
	movl	$1, %ebx
	testl	%esi, %esi
	jns	L1183
	jmp	L1197
	.p2align 4,,10
	.p2align 3
L1188:
	addl	$1, %ebx
L1183:
	movl	56(%esp), %eax
	movl	$0, 12(%esp)
	xorl	%edx, %edx
	movl	%esi, %ecx
	movl	%ebp, 4(%esp)
	movl	%eax, 16(%esp)
	movl	20(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, %eax
	call	__ZL24mi_arena_try_alloc_at_idibijjbbiP10mi_memid_sP11mi_os_tld_s.isra.0
	testl	%eax, %eax
	jne	L1197
	cmpl	%ebx, 24(%esp)
	jne	L1188
L1197:
	movl	32(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	36(%esp), %edi
	.cfi_restore 7
	movl	40(%esp), %ebp
	.cfi_restore 5
	jmp	L1175
	.p2align 4,,10
	.p2align 3
L1199:
	.cfi_restore_state
	movl	32(%esp), %esi
	.cfi_restore 6
	movl	36(%esp), %edi
	.cfi_restore 7
	movl	40(%esp), %ebp
	.cfi_restore 5
	jmp	L1176
	.cfi_endproc
LFE148:
	.p2align 4
	.def	__ZL20mi_segment_find_freeP12mi_segment_sP17mi_segments_tld_s;	.scl	3;	.type	32;	.endef
__ZL20mi_segment_find_freeP12mi_segment_sP17mi_segments_tld_s:
LFB149:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	56(%eax), %ecx
	movl	%edx, 8(%esp)
	testl	%ecx, %ecx
	je	L1211
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	movl	%esi, 20(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	%edi, 24(%esp)
	.cfi_offset 7, -12
	leal	88(%eax), %edi
	movl	%ebp, 28(%esp)
	.cfi_offset 5, -8
	jmp	L1210
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1203:
	addl	$1, %ebx
	addl	$48, %edi
	cmpl	56(%esi), %ebx
	jnb	L1223
L1210:
	leal	(%ebx,%ebx), %ebp
	leal	0(%ebp,%ebx), %eax
	sall	$4, %eax
	leal	80(%esi,%eax), %ecx
	testb	$1, 9(%ecx)
	jne	L1203
	movl	8(%esp), %edx
	movl	%edi, %eax
	movl	%ecx, (%esp)
	movl	%edi, 4(%esp)
	call	__ZL20mi_page_purge_removeP9mi_page_sP17mi_segments_tld_s
	movl	(%esp), %ecx
	testb	$2, 9(%ecx)
	jne	L1218
	movzbl	(%edi), %eax
	cmpl	$3, 84(%esi)
	je	L1224
	movl	80(%esi), %ecx
	movl	$1, %edx
	sall	%cl, %edx
L1206:
	movzbl	%al, %eax
	movl	%eax, %ecx
	imull	%edx, %eax
	addl	%esi, %eax
	testb	%cl, %cl
	jne	L1207
	movl	60(%esi), %ecx
	addl	%ecx, %eax
	subl	%ecx, %edx
L1207:
	leal	15(%esp), %ecx
	movb	$0, 15(%esp)
	call	__Z13_mi_os_commitPvjPbP10mi_stats_s.isra.0
	testb	%al, %al
	je	L1203
	leal	0(%ebp,%ebx), %eax
	xorl	%edx, %edx
	movl	%ebp, %edi
	sall	$4, %eax
	movw	%dx, 104(%esi,%eax)
	movzbl	15(%esp), %edx
	movzbl	89(%esi,%eax), %ecx
	movl	$0, 96(%esi,%eax)
	leal	2(,%edx,4), %edx
	andl	$6, %edx
	andl	$-7, %ecx
	orl	%ecx, %edx
	movb	%dl, 89(%esi,%eax)
L1204:
	leal	(%edi,%ebx), %eax
	sall	$4, %eax
	orb	$1, 89(%esi,%eax)
	movl	52(%esi), %eax
	addl	$1, %eax
	movl	%eax, 52(%esi)
	cmpl	56(%esi), %eax
	je	L1225
L1222:
	movl	4(%esp), %eax
	movl	16(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	20(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %edi
	.cfi_restore 7
	movl	28(%esp), %ebp
	.cfi_restore 5
	addl	$32, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1218:
	.cfi_restore_state
	movl	%ebp, %edi
	jmp	L1204
	.p2align 4,,10
	.p2align 3
L1225:
	cmpl	$1, 84(%esi)
	jg	L1222
	movl	8(%esp), %edx
	movl	%esi, %eax
	call	__ZL33mi_segment_remove_from_free_queueP12mi_segment_sP17mi_segments_tld_s
	movl	4(%esp), %eax
	movl	16(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	20(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %edi
	.cfi_restore 7
	movl	28(%esp), %ebp
	.cfi_restore 5
	addl	$32, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1223:
	.cfi_restore_state
	movl	16(%esp), %ebx
	.cfi_restore 3
	movl	20(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %edi
	.cfi_restore 7
	movl	28(%esp), %ebp
	.cfi_restore 5
L1211:
	movl	$0, 4(%esp)
	movl	4(%esp), %eax
	addl	$32, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1224:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	24(%esi), %edx
	jmp	L1206
	.cfi_endproc
LFE149:
	.p2align 4
	.def	__ZL34mi_segment_page_try_alloc_in_queueP9mi_heap_s14mi_page_kind_eP17mi_segments_tld_s;	.scl	3;	.type	32;	.endef
__ZL34mi_segment_page_try_alloc_in_queueP9mi_heap_s14mi_page_kind_eP17mi_segments_tld_s:
LFB153:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	testl	%edx, %edx
	movl	%eax, %ebx
	leal	8(%ecx), %eax
	cmove	%ecx, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1226
	movl	12(%ebx), %edx
	testl	%edx, %edx
	je	L1230
	cmpl	$6, 16(%eax)
	je	L1246
	.p2align 4
	.p2align 4
	.p2align 3
L1232:
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	L1226
	cmpl	$6, 16(%eax)
	jne	L1232
L1246:
	cmpl	4(%eax), %edx
	jne	L1232
	movl	56(%eax), %ebx
	cmpl	%ebx, 52(%eax)
	jnb	L1232
L1233:
	movl	%ecx, %edx
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__ZL20mi_segment_find_freeP12mi_segment_sP17mi_segments_tld_s
	.p2align 4,,10
	.p2align 3
L1247:
	.cfi_restore_state
	cmpb	$0, 8(%eax)
	je	L1236
	movl	4(%eax), %edx
	testl	%edx, %edx
	jne	L1237
	.p2align 4
	.p2align 3
L1236:
	movl	56(%eax), %edx
	cmpl	%edx, 52(%eax)
	jb	L1233
L1237:
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	L1226
L1230:
	cmpl	$6, 16(%eax)
	jne	L1236
	jmp	L1247
	.p2align 4,,10
	.p2align 3
L1226:
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE153:
	.section .rdata,"dr"
	.align 4
LC31:
	.ascii "cannot decommit OS memory (error: %d (0x%x), address: %p, size: 0x%zx bytes)\12\0"
	.text
	.p2align 4
	.def	__ZL17mi_os_decommit_exPvjPbP10mi_stats_s.isra.0;	.scl	3;	.type	32;	.endef
__ZL17mi_os_decommit_exPvjPbP10mi_stats_s.isra.0:
LFB157:
	.cfi_startproc
	testl	%edx, %edx
	je	L1262
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
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	$__mi_stats_main+96, %eax
	subl	$20, %esp
	.cfi_def_cfa_offset 40
	negl	%edx
	sbbl	%ecx, %ecx
	call	__ZL14mi_stat_updateP15mi_stat_count_sx.part.0
	testl	%ebx, %ebx
	je	L1248
	movl	__ZL16mi_os_mem_config, %ecx
	leal	-1(%ecx), %eax
	leal	(%ebx,%eax), %ebp
	addl	%edi, %ebx
	testl	%eax, %ecx
	je	L1265
	movl	%ebp, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%ebx, %eax
	subl	%edx, %ebp
	xorl	%edx, %edx
	divl	%ecx
	subl	%edx, %ebx
L1251:
	subl	%ebp, %ebx
	testl	%ebx, %ebx
	jle	L1248
	movb	$1, (%esi)
	movl	$16384, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%ebp, (%esp)
	call	*__imp__VirtualFree@12
	.cfi_def_cfa_offset 28
	subl	$12, %esp
	.cfi_def_cfa_offset 40
	movb	$1, (%esi)
	testl	%eax, %eax
	jne	L1248
	call	*__imp__GetLastError@0
	testl	%eax, %eax
	je	L1248
	movl	%ebx, 16(%esp)
	movl	%ebp, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC31, (%esp)
	call	__Z19_mi_warning_messagePKcz
L1248:
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
L1265:
	.cfi_restore_state
	negl	%ecx
	andl	%ecx, %ebp
	andl	%ecx, %ebx
	jmp	L1251
	.p2align 4,,10
	.p2align 3
L1262:
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	ret
	.cfi_endproc
LFE157:
	.section .rdata,"dr"
	.align 4
LC32:
	.ascii "cannot reset OS memory (error: %d (0x%x), address: %p, size: 0x%zx bytes)\12\0"
	.text
	.p2align 4
	.def	__Z12_mi_os_resetPvjP10mi_stats_s.isra.0;	.scl	3;	.type	32;	.endef
__Z12_mi_os_resetPvjP10mi_stats_s.isra.0:
LFB162:
	.cfi_startproc
	testl	%edx, %edx
	je	L1289
	testl	%eax, %eax
	je	L1289
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
	leal	(%eax,%edx), %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	movl	__ZL16mi_os_mem_config, %ecx
	leal	-1(%ecx), %ebp
	leal	(%eax,%ebp), %ebx
	testl	%ebp, %ecx
	je	L1292
	movl	%ebx, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%esi, %eax
	subl	%edx, %ebx
	xorl	%edx, %edx
	divl	%ecx
	movl	%ebx, %ebp
	subl	%edx, %esi
L1269:
	subl	%ebp, %esi
	testl	%esi, %esi
	jle	L1266
	movl	%esi, %eax
	cltd
	leal	128(%edi), %eax
	movl	%edx, %ecx
	movl	%esi, %edx
	call	__ZL14mi_stat_updateP15mi_stat_count_sx.part.0
	leal	528(%edi), %ecx
	cmpl	$__mi_stats_main, %ecx
	jb	L1270
	cmpl	$__mi_stats_main+672, %ecx
	jb	L1293
L1270:
	addl	$1, 536(%edi)
	adcl	$0, 540(%edi)
	addl	$1, 528(%edi)
	adcl	$0, 532(%edi)
L1273:
	movl	$4, 12(%esp)
	movl	$524288, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	call	*__imp__VirtualAlloc@16
	.cfi_def_cfa_offset 36
	subl	$16, %esp
	.cfi_def_cfa_offset 52
	testl	%eax, %eax
	je	L1294
L1266:
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
L1292:
	.cfi_restore_state
	negl	%ecx
	andl	%ecx, %ebx
	andl	%ecx, %esi
	movl	%ebx, %ebp
	jmp	L1269
	.p2align 4,,10
	.p2align 3
L1293:
	movl	536(%edi), %eax
	movl	540(%edi), %edx
	movl	%ecx, 28(%esp)
L1271:
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	$1, %ecx
	adcl	$0, %ebx
	movl	%ecx, 20(%esp)
	movl	%ebx, 24(%esp)
	movl	20(%esp), %ebx
	movl	24(%esp), %ecx
	lock cmpxchg8b	536(%edi)
	jne	L1271
	movl	528(%edi), %eax
	movl	532(%edi), %edx
	movl	28(%esp), %edi
L1272:
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	$1, %ecx
	adcl	$0, %ebx
	movl	%ecx, 20(%esp)
	movl	%ebx, 24(%esp)
	movl	20(%esp), %ebx
	movl	24(%esp), %ecx
	lock cmpxchg8b	(%edi)
	je	L1273
	jmp	L1272
	.p2align 4,,10
	.p2align 3
L1289:
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	ret
	.p2align 4,,10
	.p2align 3
L1294:
	.cfi_def_cfa_offset 52
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	*__imp__GetLastError@0
	testl	%eax, %eax
	je	L1266
	movl	%esi, 16(%esp)
	movl	%ebp, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC32, (%esp)
	call	__Z19_mi_warning_messagePKcz
	addl	$32, %esp
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
LFE162:
	.section .rdata,"dr"
	.align 4
LC33:
	.ascii "unable to free OS memory (error: %d (0x%x), size: 0x%zx bytes, address: %p)\12\0"
	.text
	.p2align 4
	.def	__ZL15mi_os_prim_freePvjbP10mi_stats_s.part.0;	.scl	3;	.type	32;	.endef
__ZL15mi_os_prim_freePvjbP10mi_stats_s.part.0:
LFB164:
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
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %ebx
	subl	$52, %esp
	.cfi_def_cfa_offset 72
	movl	__imp__VirtualFree@12, %edi
	movl	$32768, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 60
	subl	$12, %esp
	.cfi_def_cfa_offset 72
	testl	%eax, %eax
	je	L1315
L1296:
	movl	%ebx, %esi
	movl	%ebp, %eax
	negl	%esi
	sbbl	%edi, %edi
	testb	%al, %al
	jne	L1316
	testl	%ebx, %ebx
	je	L1295
L1304:
	addl	$52, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %edx
	movl	%edi, %ecx
	movl	$__mi_stats_main+64, %eax
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
	jmp	__ZL14mi_stat_updateP15mi_stat_count_sx.part.0
	.p2align 4,,10
	.p2align 3
L1295:
	.cfi_restore_state
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
L1316:
	.cfi_restore_state
	testl	%ebx, %ebx
	je	L1295
	movl	%esi, %edx
	movl	%edi, %ecx
	movl	$__mi_stats_main+96, %eax
	call	__ZL14mi_stat_updateP15mi_stat_count_sx.part.0
	jmp	L1304
	.p2align 4,,10
	.p2align 3
L1315:
	movl	__imp__GetLastError@0, %eax
	movl	%eax, 20(%esp)
	call	*%eax
	cmpl	$487, %eax
	je	L1317
L1297:
	testl	%eax, %eax
	je	L1296
L1299:
	movl	%esi, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC33, (%esp)
	call	__Z19_mi_warning_messagePKcz
	jmp	L1296
	.p2align 4,,10
	.p2align 3
L1317:
	leal	24(%esp), %eax
	movl	$0, 24(%esp)
	movl	$0, 28(%esp)
	movl	$0, 32(%esp)
	movl	$0, 36(%esp)
	movl	$0, 40(%esp)
	movl	$0, 44(%esp)
	movl	$0, 48(%esp)
	movl	$28, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	*__imp__VirtualQuery@12
	.cfi_def_cfa_offset 60
	subl	$12, %esp
	.cfi_def_cfa_offset 72
	movl	28(%esp), %eax
	cmpl	%esi, %eax
	jnb	L1300
	movl	%esi, %edx
	subl	%eax, %edx
	cmpl	$2097151, %edx
	jg	L1300
	movl	$32768, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 60
	subl	$12, %esp
	.cfi_def_cfa_offset 72
	testl	%eax, %eax
	jne	L1296
	call	*20(%esp)
	jmp	L1297
	.p2align 4,,10
	.p2align 3
L1300:
	movl	$487, %eax
	jmp	L1299
	.cfi_endproc
LFE164:
	.p2align 4
	.def	__Z11_mi_os_freePvj10mi_memid_sP10mi_stats_s.isra.0;	.scl	3;	.type	32;	.endef
__Z11_mi_os_freePvj10mi_memid_sP10mi_stats_s.isra.0:
LFB168:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%ecx, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %ecx
	leal	-3(%ecx), %eax
	cmpl	$2, %eax
	ja	L1318
	movl	%edx, %eax
	movl	%ecx, (%esp)
	call	__Z22_mi_os_good_alloc_sizej
	testl	%ebx, %ebx
	movl	(%esp), %ecx
	movl	%eax, %edx
	je	L1323
	movl	%esi, %eax
	subl	%ebx, %eax
	addl	%eax, %edx
L1320:
	testl	%edx, %edx
	sete	%al
	testl	%ebx, %ebx
	sete	(%esp)
	orb	(%esp), %al
	cmpl	$4, %ecx
	je	L1326
	testb	%al, %al
	je	L1327
L1318:
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
L1327:
	.cfi_restore_state
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	%ebx, %eax
	movl	$1, %ecx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__ZL15mi_os_prim_freePvjbP10mi_stats_s.part.0
	.p2align 4,,10
	.p2align 3
L1323:
	.cfi_restore_state
	movl	%esi, %ebx
	jmp	L1320
	.p2align 4,,10
	.p2align 3
L1326:
	testb	%al, %al
	jne	L1318
	cmpl	$1073741823, %edx
	jbe	L1318
	leal	(%ebx,%edx), %esi
L1322:
	movl	%ebx, %eax
	movl	$1, %ecx
	movl	$1073741824, %edx
	addl	$1073741824, %ebx
	call	__ZL15mi_os_prim_freePvjbP10mi_stats_s.part.0
	movl	%esi, %eax
	subl	%ebx, %eax
	cmpl	$1073741823, %eax
	ja	L1322
	jmp	L1318
	.cfi_endproc
LFE168:
	.p2align 4
	.def	__Z15_mi_os_purge_exPvjbP10mi_stats_s.part.0;	.scl	3;	.type	32;	.endef
__Z15_mi_os_purge_exPvjbP10mi_stats_s.part.0:
LFB176:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%esi, 20(%esp)
	.cfi_offset 6, -16
	movl	36(%esp), %esi
	movb	%cl, 3(%esp)
	leal	544(%esi), %ecx
	movl	%edi, 24(%esp)
	.cfi_offset 7, -12
	movl	%edx, %edi
	movl	%eax, 4(%esp)
	cmpl	$__mi_stats_main+672, %ecx
	jnb	L1329
	cmpl	$__mi_stats_main, %ecx
	jnb	L1354
L1329:
	addl	$1, 552(%esi)
	adcl	$0, 556(%esi)
	addl	$1, 544(%esi)
	adcl	$0, 548(%esi)
L1332:
	xorl	%edx, %edx
	movl	%edi, %ecx
	orl	%edx, %ecx
	je	L1333
	movl	%edx, %ecx
	leal	160(%esi), %eax
	movl	%edi, %edx
	call	__ZL14mi_stat_updateP15mi_stat_count_sx.part.0
L1333:
	movl	__ZL7options+104, %eax
	testl	%eax, %eax
	je	L1355
L1334:
	cmpb	$0, 3(%esp)
	jne	L1356
	movl	20(%esp), %esi
	movl	24(%esp), %edi
	xorl	%eax, %eax
	addl	$32, %esp
	.cfi_remember_state
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1354:
	.cfi_restore_state
	movl	%ebp, 28(%esp)
	.cfi_offset 5, -8
	movl	%edi, %ebp
	movl	%ecx, %edi
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -20
	movl	552(%esi), %eax
	movl	556(%esi), %edx
L1330:
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	$1, %ecx
	adcl	$0, %ebx
	movl	%ecx, 8(%esp)
	movl	%ebx, 12(%esp)
	movl	8(%esp), %ebx
	movl	12(%esp), %ecx
	lock cmpxchg8b	552(%esi)
	jne	L1330
	movl	%ebp, %ebx
	movl	544(%esi), %eax
	movl	%edi, %ebp
	movl	548(%esi), %edx
	movl	%esi, %edi
	movl	%ebx, %esi
L1331:
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	$1, %ecx
	adcl	$0, %ebx
	movl	%ecx, 8(%esp)
	movl	%ebx, 12(%esp)
	movl	8(%esp), %ebx
	movl	12(%esp), %ecx
	lock cmpxchg8b	0(%ebp)
	jne	L1331
	movl	%esi, %eax
	movl	16(%esp), %ebx
	.cfi_restore 3
	movl	%edi, %esi
	movl	28(%esp), %ebp
	.cfi_restore 5
	movl	%eax, %edi
	jmp	L1332
	.p2align 4,,10
	.p2align 3
L1356:
	movl	4(%esp), %eax
	movl	%esi, %ecx
	movl	%edi, %edx
	call	__Z12_mi_os_resetPvjP10mi_stats_s.isra.0
	movl	20(%esp), %esi
	movl	24(%esp), %edi
	xorl	%eax, %eax
	addl	$32, %esp
	.cfi_remember_state
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1355:
	.cfi_restore_state
	movl	$__ZL7options+100, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	jmp	L1334
	.cfi_endproc
LFE176:
	.p2align 4
	.def	__ZL14mi_arena_purgeP10mi_arena_sjjP10mi_stats_s;	.scl	3;	.type	32;	.endef
__ZL14mi_arena_purgeP10mi_arena_sjjP10mi_stats_s:
LFB177:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	movl	%ecx, %eax
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	sall	$21, %eax
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%ecx, %ebx
	movl	%esi, %ecx
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	%eax, 8(%esp)
	movl	32(%esp), %ebp
	movl	%esi, %eax
	sall	$21, %eax
	movl	24(%edi), %edx
	addl	%edx, %eax
	movl	%ebx, %edx
	movl	%eax, 4(%esp)
	movl	108(%edi), %eax
	call	__ZL28mi_bitmap_is_claimedx_acrossPSt6atomicIjEjjjPb.constprop.0.isra.0
	testb	%al, %al
	movl	__ZL7options+304, %eax
	je	L1358
	testl	%eax, %eax
	je	L1364
L1359:
	movl	__ZL7options+300, %edx
	testl	%edx, %edx
	js	L1362
	movl	8(%esp), %edx
	movl	4(%esp), %eax
	movl	%ebp, (%esp)
	movl	$1, %ecx
	call	__Z15_mi_os_purge_exPvjbP10mi_stats_s.part.0
L1362:
	movl	112(%edi), %eax
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %ecx
	movl	%ebx, %edx
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
	jmp	__Z25_mi_bitmap_unclaim_acrossPSt6atomicIjEjjj.isra.0
	.p2align 4,,10
	.p2align 3
L1358:
	.cfi_restore_state
	testl	%eax, %eax
	je	L1365
L1361:
	movl	__ZL7options+300, %eax
	testl	%eax, %eax
	js	L1362
	movl	8(%esp), %edx
	movl	4(%esp), %eax
	movl	%ebp, (%esp)
	xorl	%ecx, %ecx
	call	__Z15_mi_os_purge_exPvjbP10mi_stats_s.part.0
	jmp	L1362
	.p2align 4,,10
	.p2align 3
L1365:
	movl	$__ZL7options+300, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	jmp	L1361
	.p2align 4,,10
	.p2align 3
L1364:
	movl	$__ZL7options+300, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	jmp	L1359
	.cfi_endproc
LFE177:
	.p2align 4
	.def	__ZL13mi_page_purgeP12mi_segment_sP9mi_page_sP17mi_segments_tld_s.part.0;	.scl	3;	.type	32;	.endef
__ZL13mi_page_purgeP12mi_segment_sP9mi_page_sP17mi_segments_tld_s.part.0:
LFB181:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%ecx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movzbl	(%edx), %esi
	cmpl	$3, 84(%eax)
	je	L1373
	movl	80(%eax), %ecx
	movl	$1, %edx
	sall	%cl, %edx
L1368:
	movl	%esi, %ecx
	movzbl	%cl, %ebx
	imull	%edx, %ebx
	addl	%eax, %ebx
	testb	%cl, %cl
	jne	L1369
	movl	60(%eax), %eax
	addl	%eax, %ebx
	subl	%eax, %edx
L1369:
	movl	__ZL7options+304, %ecx
	movl	52(%edi), %esi
	testl	%ecx, %ecx
	je	L1374
L1370:
	movl	__ZL7options+300, %eax
	testl	%eax, %eax
	js	L1366
	movl	%esi, (%esp)
	movl	$1, %ecx
	movl	%ebx, %eax
	call	__Z15_mi_os_purge_exPvjbP10mi_stats_s.part.0
L1366:
	addl	$8, %esp
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
L1373:
	.cfi_restore_state
	movl	24(%eax), %edx
	jmp	L1368
	.p2align 4,,10
	.p2align 3
L1374:
	movl	$__ZL7options+300, %eax
	movl	%edx, 4(%esp)
	call	__ZL14mi_option_initP16mi_option_desc_s
	movl	4(%esp), %edx
	jmp	L1370
	.cfi_endproc
LFE181:
	.p2align 4
	.def	__ZL22mi_segments_track_sizelP17mi_segments_tld_s;	.scl	3;	.type	32;	.endef
__ZL22mi_segments_track_sizelP17mi_segments_tld_s:
LFB182:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%edx, %ebx
	movl	52(%edx), %eax
	testl	%esi, %esi
	js	L1376
	movl	$1, %edx
	xorl	%ecx, %ecx
	call	__ZL14mi_stat_updateP15mi_stat_count_sx.part.0
	movl	28(%ebx), %edx
	movl	$1, %eax
L1377:
	addl	%edx, %eax
	movl	%eax, 28(%ebx)
	cmpl	%eax, 32(%ebx)
	jnb	L1378
	movl	%eax, 32(%ebx)
L1378:
	movl	36(%ebx), %eax
	addl	%esi, %eax
	movl	%eax, 36(%ebx)
	cmpl	%eax, 40(%ebx)
	jnb	L1375
	movl	%eax, 40(%ebx)
L1375:
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
L1376:
	.cfi_restore_state
	movl	$-1, %edx
	movl	%edx, %ecx
	call	__ZL14mi_stat_updateP15mi_stat_count_sx.part.0
	movl	28(%ebx), %edx
	movl	$-1, %eax
	jmp	L1377
	.cfi_endproc
LFE182:
	.section .rdata,"dr"
	.align 4
LC34:
	.ascii "unable to allocate aligned OS memory (0x%zx bytes, error code: 0x%x, address: %p, alignment: 0x%zx, flags: 0x%x)\12\0"
	.align 4
LC35:
	.ascii "out-of-memory on OS allocation, try again... (attempt %lu, 0x%zx bytes, error code: 0x%x, address: %p, alignment: 0x%zx, flags: 0x%x)\12\0"
	.text
	.p2align 4
	.def	__ZL22win_virtual_alloc_primPvjjm.constprop.0;	.scl	3;	.type	32;	.endef
__ZL22win_virtual_alloc_primPvjjm.constprop.0:
LFB184:
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
	subl	$80, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%ecx, -56(%ebp)
	movl	__ZL7options+564, %ecx
	movl	%eax, -60(%ebp)
	movl	%edx, -52(%ebp)
	testl	%ecx, %ecx
	je	L1424
L1382:
	movl	__ZL7options+560, %eax
	xorl	%ebx, %ebx
	testl	%eax, %eax
	js	L1383
	movl	$2000, %ecx
	cmpl	%ecx, %eax
	cmovle	%eax, %ecx
	cmpl	$1, %eax
	movl	$100, %eax
	cmovne	%ecx, %eax
	movl	%eax, %ebx
L1383:
	testb	$16, -55(%ebp)
	je	L1425
	cmpl	$4194304, -52(%ebp)
	movl	$1, %esi
	movl	%ebx, %edi
	setbe	-61(%ebp)
L1394:
	movl	-52(%ebp), %eax
	cmpl	$1, %eax
	jbe	L1389
	xorl	%edx, %edx
	divl	__ZL16mi_os_mem_config
	testl	%edx, %edx
	je	L1426
L1389:
	movl	$4, 12(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %ecx
	movl	$0, (%esp)
	movl	%ecx, 4(%esp)
	call	*__imp__VirtualAlloc@16
	subl	$16, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L1422
	testl	%edi, %edi
	jle	L1422
	cmpb	$0, -61(%ebp)
	je	L1422
	cmpl	$12288, -56(%ebp)
	jne	L1422
	call	*__imp__GetLastError@0
	cmpl	$635, %eax
	je	L1392
	ja	L1393
	cmpl	$8, %eax
	je	L1392
L1422:
	movl	%ebx, %esi
L1381:
	leal	-12(%ebp), %esp
	movl	%esi, %eax
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
L1393:
	.cfi_restore_state
	subl	$1454, %eax
	cmpl	$1, %eax
	ja	L1422
L1392:
	call	*__imp__GetLastError@0
	movl	$12288, 24(%esp)
	movl	-52(%ebp), %edx
	movl	$0, 16(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, 12(%esp)
	movl	-60(%ebp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$LC35, (%esp)
	call	__Z19_mi_warning_messagePKcz
	leal	(%esi,%esi,4), %eax
	sall	$3, %eax
	cmpl	%edi, %eax
	cmovg	%edi, %eax
	addl	$1, %esi
	movl	%eax, (%esp)
	subl	%eax, %edi
	call	*__imp__Sleep@4
	subl	$4, %esp
	cmpl	$11, %esi
	jne	L1394
	jmp	L1422
	.p2align 4,,10
	.p2align 3
L1426:
	movl	__ZL14pVirtualAlloc2, %ebx
	testl	%ebx, %ebx
	je	L1389
	movl	-52(%ebp), %eax
	movl	$0, -31(%ebp)
	movl	$0, -48(%ebp)
	movl	%eax, -40(%ebp)
	movzbl	-28(%ebp), %eax
	movl	$0, -44(%ebp)
	movl	%eax, -28(%ebp)
	leal	-48(%ebp), %eax
	movl	$0, -20(%ebp)
	movb	$1, -32(%ebp)
	movl	%eax, -24(%ebp)
	call	*__imp__GetCurrentProcess@0
	leal	-32(%ebp), %ecx
	movl	$1, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	$4, 16(%esp)
	movl	-56(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-60(%ebp), %ecx
	movl	$0, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	subl	$28, %esp
	testl	%eax, %eax
	je	L1427
	leal	-12(%ebp), %esp
	movl	%eax, %esi
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	%esi, %eax
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
L1427:
	.cfi_restore_state
	call	*__imp__GetLastError@0
	movl	-56(%ebp), %edx
	movl	%edx, 20(%esp)
	movl	-52(%ebp), %edx
	movl	$0, 12(%esp)
	movl	%edx, 16(%esp)
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	$LC34, (%esp)
	movl	%eax, 4(%esp)
	call	__Z19_mi_warning_messagePKcz
	jmp	L1389
	.p2align 4,,10
	.p2align 3
L1424:
	movl	$__ZL7options+560, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	jmp	L1382
	.p2align 4,,10
	.p2align 3
L1425:
	cmpl	$1, -52(%ebp)
	jbe	L1387
	movl	-52(%ebp), %eax
	xorl	%edx, %edx
	divl	__ZL16mi_os_mem_config
	testl	%edx, %edx
	jne	L1387
	movl	__ZL14pVirtualAlloc2, %esi
	testl	%esi, %esi
	je	L1387
	movl	-52(%ebp), %eax
	movl	$0, -31(%ebp)
	movl	$0, -48(%ebp)
	movl	%eax, -40(%ebp)
	movzbl	-28(%ebp), %eax
	movl	$0, -44(%ebp)
	movl	%eax, -28(%ebp)
	leal	-48(%ebp), %eax
	movl	$0, -20(%ebp)
	movb	$1, -32(%ebp)
	movl	%eax, -24(%ebp)
	call	*__imp__GetCurrentProcess@0
	leal	-32(%ebp), %edx
	movl	$1, 24(%esp)
	movl	%edx, 20(%esp)
	movl	$4, 16(%esp)
	movl	$8192, 12(%esp)
	movl	-60(%ebp), %edi
	movl	$0, 4(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, (%esp)
	call	*%esi
	subl	$28, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L1381
	call	*__imp__GetLastError@0
	movl	$8192, 20(%esp)
	movl	-52(%ebp), %esi
	xorl	%edx, %edx
	movl	%edx, 12(%esp)
	movl	%esi, 16(%esp)
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	$LC34, (%esp)
	movl	%eax, 4(%esp)
	call	__Z19_mi_warning_messagePKcz
	.p2align 4
	.p2align 3
L1387:
	movl	$4, 12(%esp)
	movl	$8192, 8(%esp)
	movl	-60(%ebp), %eax
	movl	$0, (%esp)
	movl	%eax, 4(%esp)
	call	*__imp__VirtualAlloc@16
	subl	$16, %esp
	movl	%eax, %esi
	jmp	L1381
	.cfi_endproc
LFE184:
	.section .rdata,"dr"
	.align 4
LC36:
	.ascii "unable to allocate OS memory (error: %d (0x%x), size: 0x%zx bytes, align: 0x%zx, commit: %d, allow large: %d)\12\0"
	.text
	.p2align 4
	.def	__ZL16mi_os_prim_allocjjbbPbS_P10mi_stats_s.isra.0;	.scl	3;	.type	32;	.endef
__ZL16mi_os_prim_allocjjbbPbS_P10mi_stats_s.isra.0:
LFB191:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movl	%esi, 36(%esp)
	testl	%eax, %eax
	.cfi_offset 6, -16
	je	L1437
	movl	%edi, 40(%esp)
	testl	%edx, %edx
	.cfi_offset 7, -12
	movl	%eax, %edi
	movl	$1, %eax
	cmovne	%edx, %eax
	movl	%ebp, 44(%esp)
	movl	%ebx, 32(%esp)
	.cfi_offset 5, -8
	.cfi_offset 3, -20
	movl	%eax, %ebp
	testb	%cl, %cl
	je	L1457
	movl	$12288, 28(%esp)
	movl	$12288, %esi
L1430:
	movl	60(%esp), %eax
	movzbl	%cl, %ebx
	movb	$1, (%eax)
	movl	__ZL16mi_os_mem_config+4, %ecx
	testl	%ecx, %ecx
	je	L1431
	movl	__ZL7options+124, %edx
	testl	%edx, %edx
	je	L1458
L1432:
	movl	__ZL7options+120, %eax
	testl	%eax, %eax
	je	L1431
	movl	__ZL16mi_os_mem_config+4, %ecx
	movl	%edi, %eax
	xorl	%edx, %edx
	divl	%ecx
	testl	%edx, %edx
	je	L1459
	.p2align 4
	.p2align 3
L1431:
	movl	56(%esp), %eax
	movl	28(%esp), %ecx
	movl	%ebp, %edx
	movb	$0, (%eax)
	movl	%edi, %eax
	call	__ZL22win_virtual_alloc_primPvjjm.constprop.0
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1460
L1434:
	xorl	%ebp, %ebp
	movl	%edi, %edx
	movl	$__mi_stats_main+64, %eax
	movl	%ebp, %ecx
	call	__ZL14mi_stat_updateP15mi_stat_count_sx.part.0
	testb	%bl, %bl
	jne	L1461
L1456:
	movl	32(%esp), %ebx
	.cfi_restore 3
	movl	40(%esp), %edi
	.cfi_restore 7
	movl	44(%esp), %ebp
	.cfi_restore 5
L1428:
	movl	%esi, %eax
	movl	36(%esp), %esi
	addl	$48, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1457:
	.cfi_def_cfa_offset 52
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movb	$0, 52(%esp)
	movl	$8192, %esi
	movl	$8192, 28(%esp)
	jmp	L1430
	.p2align 4,,10
	.p2align 3
L1437:
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 7
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	36(%esp), %esi
	addl	$48, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1459:
	.cfi_def_cfa_offset 52
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%ebp, %eax
	xorl	%edx, %edx
	divl	%ecx
	testl	%edx, %edx
	jne	L1431
	cmpb	$0, 52(%esp)
	je	L1431
	cmpl	$8192, %esi
	je	L1431
	movl	__ZZL17win_virtual_allocPvjjmbbPbE17large_page_try_ok, %eax
	testl	%eax, %eax
	je	L1433
	leal	-1(%eax), %edx
	lock cmpxchgl	%edx, __ZZL17win_virtual_allocPvjjmbbPbE17large_page_try_ok
	jmp	L1431
	.p2align 4,,10
	.p2align 3
L1460:
	call	*__imp__GetLastError@0
	movl	%eax, %edx
	testl	%eax, %eax
	je	L1456
	movzbl	52(%esp), %eax
	movl	%ebx, 20(%esp)
	movl	%ebp, 16(%esp)
	movl	%eax, 24(%esp)
	movl	%edi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$LC36, (%esp)
	call	__Z19_mi_warning_messagePKcz
	movl	%esi, %eax
	movl	32(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	40(%esp), %edi
	.cfi_restore 7
	movl	44(%esp), %ebp
	.cfi_restore 5
	movl	36(%esp), %esi
	addl	$48, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1461:
	.cfi_restore_state
	movl	%edi, %edx
	movl	%ebp, %ecx
	movl	$__mi_stats_main+96, %eax
	call	__ZL14mi_stat_updateP15mi_stat_count_sx.part.0
	movl	32(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	40(%esp), %edi
	.cfi_restore 7
	movl	44(%esp), %ebp
	.cfi_restore 5
	jmp	L1428
	.p2align 4,,10
	.p2align 3
L1433:
	.cfi_restore_state
	movl	56(%esp), %eax
	movl	$536883200, %ecx
	movl	%ebp, %edx
	movb	$1, (%eax)
	movl	%edi, %eax
	call	__ZL22win_virtual_alloc_primPvjjm.constprop.0
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L1434
	movl	$10, __ZZL17win_virtual_allocPvjjmbbPbE17large_page_try_ok
	jmp	L1431
	.p2align 4,,10
	.p2align 3
L1458:
	movl	$__ZL7options+120, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	jmp	L1432
	.cfi_endproc
LFE191:
	.p2align 4
	.def	__Z12_mi_os_allocjP10mi_memid_sP10mi_stats_s;	.scl	3;	.type	32;	.endef
__Z12_mi_os_allocjP10mi_memid_sP10mi_stats_s:
LFB197:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -12
	movl	%edx, %ebx
	movl	$0, (%edx)
	movl	__ZL16mi_os_mem_config, %ecx
	movl	$0, 4(%edx)
	movl	$0, 8(%edx)
	movl	$0, 12(%edx)
	movl	$0, 16(%edx)
	movl	%ecx, %edx
	notl	%edx
	movl	$0, 16(%esp)
	movl	$0, 20(%esp)
	movl	$0, 24(%esp)
	movl	$0, 28(%esp)
	movl	$0, 32(%esp)
	cmpl	%edx, %eax
	jnb	L1463
	leal	-1(%ecx), %edx
	movl	%esi, 40(%esp)
	.cfi_offset 6, -8
	leal	(%eax,%edx), %esi
	testl	%edx, %ecx
	jne	L1464
	negl	%ecx
	movl	%ecx, %eax
	andl	%esi, %eax
	movl	40(%esp), %esi
	.cfi_restore 6
L1463:
	leal	14(%esp), %edx
	movl	$1, %ecx
	movb	$0, 15(%esp)
	movl	%edx, 8(%esp)
	leal	15(%esp), %edx
	movl	%edx, 4(%esp)
	xorl	%edx, %edx
	movl	$0, (%esp)
	movb	$0, 14(%esp)
	call	__ZL16mi_os_prim_allocjjbbPbS_P10mi_stats_s.isra.0
	testl	%eax, %eax
	je	L1462
	movzbl	14(%esp), %edx
	movl	$0, 28(%esp)
	movb	$1, 29(%esp)
	movb	%dl, 30(%esp)
	movzbl	15(%esp), %edx
	movl	$0, (%ebx)
	movb	%dl, 28(%esp)
	movl	28(%esp), %edx
	movl	$0, 4(%ebx)
	movl	$0, 8(%ebx)
	movl	%edx, 12(%ebx)
	movl	$3, 16(%ebx)
L1462:
	movl	36(%esp), %ebx
	addl	$44, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1464:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	%esi, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%esi, %eax
	movl	40(%esp), %esi
	.cfi_restore 6
	subl	%edx, %eax
	jmp	L1463
	.cfi_endproc
LFE197:
	.p2align 4
	.def	__ZL23mi_manage_os_memory_ex2Pvjbib10mi_memid_sPi.constprop.0;	.scl	3;	.type	32;	.endef
__ZL23mi_manage_os_memory_ex2Pvjbib10mi_memid_sPi.constprop.0:
LFB199:
	.cfi_startproc
	.cfi_personality 0x9b,LDFCM0
	.cfi_lsda 0x1b,LLSDA199
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
	subl	$104, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%eax, -92(%ebp)
	movl	(%edi), %eax
	movl	%eax, -96(%ebp)
	movl	24(%edi), %eax
	movl	%eax, -72(%ebp)
	testl	%eax, %eax
	je	L1471
	movl	$0, (%eax)
L1471:
	cmpl	$2097151, %edx
	jbe	L1472
	shrl	$21, %edx
	movb	%cl, -97(%ebp)
	movl	%edi, %ebx
	leal	31(%edx), %eax
	movl	%edx, -80(%ebp)
	shrl	$5, %eax
	cmpb	$1, 16(%edi)
	movl	$0, -36(%ebp)
	movl	%eax, -84(%ebp)
	movl	%eax, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
	movl	$0, -32(%ebp)
	addl	$3, %eax
	movl	$0, -28(%ebp)
	imull	%ecx, %eax
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -56(%ebp)
	leal	128(,%eax,4), %edi
	movl	$0, -52(%ebp)
	movl	%edi, -88(%ebp)
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -40(%ebp)
	movl	__ZL19mi_arena_static_top, %edx
	leal	(%edi,%edx), %eax
	cmpl	$2048, %eax
	ja	L1474
	leal	15(%edx,%edi), %edx
	cmpl	$2048, %edx
	ja	L1474
	leal	15(%edi), %edx
	lock xaddl	%edx, __ZL19mi_arena_static_top
	leal	15(%edx,%edi), %eax
	cmpl	$2048, %eax
	ja	L1527
	addl	$15, %edx
	movl	$0, -44(%ebp)
	andl	$-16, %edx
	movl	$0, -36(%ebp)
	movl	$0, -32(%ebp)
	leal	__ZL15mi_arena_static(%edx), %esi
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$2, -20(%ebp)
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	movl	$0, -48(%ebp)
	movl	$2, -40(%ebp)
	movb	$1, -42(%ebp)
	cmpb	$0, __mi_cpu_has_fsrm
	je	L1476
	movl	%esi, %edi
	movl	-88(%ebp), %ecx
	xorl	%eax, %eax
/APP
 # 1857 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	rep stosb
 # 0 "" 2
/NO_APP
L1479:
	movl	4(%ebx), %eax
	movl	$0, (%esi)
	movb	$0, 64(%esi)
	movl	%eax, 4(%esi)
	movl	8(%ebx), %eax
	movl	%eax, 8(%esi)
	movl	12(%ebx), %eax
	movl	%eax, 12(%esi)
	movl	16(%ebx), %eax
	movl	%eax, 16(%esi)
	movl	20(%ebx), %eax
	movl	-84(%ebp), %ebx
	movl	%eax, 20(%esi)
	movl	-88(%ebp), %eax
	movl	%eax, 36(%esi)
	movl	-56(%ebp), %eax
	movl	%eax, 40(%esi)
	movl	-52(%ebp), %eax
	movl	%eax, 44(%esi)
	movl	-48(%ebp), %eax
	movl	%eax, 48(%esi)
	movl	-44(%ebp), %eax
	movl	%eax, 52(%esi)
	movl	-40(%ebp), %eax
	movl	%ebx, 32(%esi)
	movl	%eax, 56(%esi)
	movl	-80(%ebp), %eax
	movl	%eax, 28(%esi)
	movl	-92(%ebp), %eax
	xchgl	24(%esi), %eax
	xorl	%edx, %edx
	movl	-96(%ebp), %eax
	movl	%eax, 60(%esi)
	movzbl	-97(%ebp), %eax
	movb	%al, 65(%esi)
	xorl	%eax, %eax
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movlps	-64(%ebp), %xmm0
	movlps	%xmm0, 96(%esi)
	lock orl	$0, (%esp)
	xchgl	92(%esi), %eax
	leal	68(%esi), %eax
	movl	%eax, (%esp)
	call	*__imp__InitializeCriticalSection@4
	leal	120(%esi,%ebx,4), %eax
	subl	$4, %esp
	movl	%eax, 104(%esi)
	leal	120(%esi,%ebx,8), %eax
	movl	%eax, 116(%esi)
	cmpb	$0, 16(%esi)
	je	L1528
	movl	$0, 108(%esi)
	movl	$0, 112(%esi)
L1485:
	movl	-84(%ebp), %eax
	movl	%eax, %edx
	sall	$5, %edx
	subl	-80(%ebp), %edx
	testl	%edx, %edx
	jle	L1493
	sall	$5, %eax
	movl	%edx, %ecx
	movl	$-1, %edi
	subl	%edx, %eax
	movl	%eax, %ebx
	shrl	$5, %ebx
	movl	%ebx, -80(%ebp)
	movl	$1, %ebx
	sall	%cl, %ebx
	movl	%eax, %ecx
	movl	-80(%ebp), %eax
	subl	$1, %ebx
	sall	%cl, %ebx
	cmpl	$31, %edx
	cmovbe	%ebx, %edi
	lock orl	%edi, 120(%esi,%eax,4)
L1493:
	movl	-72(%ebp), %eax
	testl	%eax, %eax
	je	L1495
	movl	$-1, (%eax)
	movl	$1, %edi
	lock xaddl	%edi, __ZL14mi_arena_count
	cmpl	$131, %edi
	ja	L1503
	movl	__mi_stats_main+632, %eax
	movl	__mi_stats_main+636, %edx
L1497:
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	$1, %ecx
	adcl	$0, %ebx
	movl	%ecx, -80(%ebp)
	movl	%ebx, -76(%ebp)
	movl	-80(%ebp), %ebx
	movl	-76(%ebp), %ecx
	lock cmpxchg8b	__mi_stats_main+632
	jne	L1497
	movl	__mi_stats_main+624, %eax
	movl	__mi_stats_main+628, %edx
L1498:
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	$1, %ecx
	adcl	$0, %ebx
	movl	%ecx, -80(%ebp)
	movl	%ebx, -76(%ebp)
	movl	-80(%ebp), %ebx
	movl	-76(%ebp), %ecx
	lock cmpxchg8b	__mi_stats_main+624
	jne	L1498
	leal	1(%edi), %eax
	movl	%eax, (%esi)
	movl	%esi, __ZL9mi_arenas(,%edi,4)
	movl	(%esi), %eax
	movl	-72(%ebp), %ecx
	movl	%eax, (%ecx)
L1499:
	leal	-12(%ebp), %esp
	movl	$1, %eax
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
L1503:
	.cfi_restore_state
	lock subl	$1, __ZL14mi_arena_count
L1472:
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
L1527:
	.cfi_restore_state
	lock cmpxchgl	%edx, __ZL19mi_arena_static_top
L1474:
	movl	-88(%ebp), %eax
	leal	-56(%ebp), %edx
	movl	$__mi_stats_main, %ecx
	call	__Z12_mi_os_allocjP10mi_memid_sP10mi_stats_s
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1472
	cmpb	$0, -42(%ebp)
	jne	L1479
	cmpb	$0, __mi_cpu_has_fsrm
	je	L1480
	movl	%eax, %edi
	movl	-88(%ebp), %ecx
	xorl	%eax, %eax
/APP
 # 1857 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	rep stosb
 # 0 "" 2
/NO_APP
L1481:
	movb	$1, -42(%ebp)
	jmp	L1479
	.p2align 4,,10
	.p2align 3
L1528:
	leal	(%ebx,%ebx,2), %eax
	leal	120(%esi,%eax,4), %edx
	leal	0(,%ebx,4), %eax
	leal	120(%esi,%eax,4), %ecx
	movl	%edx, 108(%esi)
	movl	%ecx, 112(%esi)
	cmpb	$0, 17(%esi)
	je	L1485
	cmpl	$16, %eax
	jnb	L1486
	testb	$8, %al
	jne	L1529
	testb	$4, %al
	jne	L1530
	testl	%eax, %eax
	je	L1485
	movb	$-1, (%edx)
	jmp	L1485
	.p2align 4,,10
	.p2align 3
L1495:
	movl	$1, %edi
	lock xaddl	%edi, __ZL14mi_arena_count
	cmpl	$131, %edi
	ja	L1503
	movl	__mi_stats_main+632, %eax
	movl	__mi_stats_main+636, %edx
L1500:
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	$1, %ecx
	adcl	$0, %ebx
	movl	%ecx, -72(%ebp)
	movl	%ebx, -68(%ebp)
	movl	-72(%ebp), %ebx
	movl	-68(%ebp), %ecx
	lock cmpxchg8b	__mi_stats_main+632
	jne	L1500
	movl	__mi_stats_main+624, %eax
	movl	__mi_stats_main+628, %edx
L1501:
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	$1, %ecx
	adcl	$0, %ebx
	movl	%ecx, -72(%ebp)
	movl	%ebx, -68(%ebp)
	movl	-72(%ebp), %ebx
	movl	-68(%ebp), %ecx
	lock cmpxchg8b	__mi_stats_main+624
	jne	L1501
	leal	1(%edi), %eax
	movl	%eax, (%esi)
	movl	%esi, __ZL9mi_arenas(,%edi,4)
	jmp	L1499
	.p2align 4,,10
	.p2align 3
L1476:
	movl	-88(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	_memset
	jmp	L1479
	.p2align 4,,10
	.p2align 3
L1486:
	movl	$-1, -16(%edx,%eax)
	movl	$-1, -12(%edx,%eax)
	movl	$-1, -8(%edx,%eax)
	movl	$-1, -4(%edx,%eax)
	subl	$1, %eax
	cmpl	$16, %eax
	jb	L1485
	andl	$-16, %eax
	xorl	%ecx, %ecx
L1491:
	movl	$-1, (%edx,%ecx)
	movl	$-1, 4(%edx,%ecx)
	movl	$-1, 8(%edx,%ecx)
	movl	$-1, 12(%edx,%ecx)
	addl	$16, %ecx
	cmpl	%eax, %ecx
	jb	L1491
	jmp	L1485
	.p2align 4,,10
	.p2align 3
L1480:
	movl	-88(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	_memset
	jmp	L1481
L1529:
	movl	$-1, (%edx)
	movl	$-1, 4(%edx)
	movl	$-1, -8(%edx,%eax)
	movl	$-1, -4(%edx,%eax)
	jmp	L1485
L1530:
	movl	$-1, (%edx)
	movl	$-1, -4(%edx,%eax)
	jmp	L1485
	.cfi_endproc
LFE199:
	.section	.gcc_except_table,"w"
LLSDA199:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE199-LLSDACSB199
LLSDACSB199:
LLSDACSE199:
	.text
	.section .rdata,"dr"
	.align 4
LC37:
	.ascii "failed to reserve %zu GiB huge pages\12\0"
	.text
	.p2align 4
	.def	_mi_reserve_huge_os_pages_at_ex.part.0.constprop.0.isra.0;	.scl	3;	.type	32;	.endef
_mi_reserve_huge_os_pages_at_ex.part.0.constprop.0.isra.0:
LFB208:
	.cfi_startproc
	.cfi_personality 0x9b,LDFCM0
	.cfi_lsda 0x1b,LLSDA208
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	%eax, %ecx
	cmpl	$-1, %edx
	jl	L1532
	movl	__mi_numa_node_count, %eax
	testl	%eax, %eax
	je	L1534
L1532:
	movl	%ecx, 4(%esp)
	movl	$LC37, (%esp)
	call	__Z19_mi_warning_messagePKcz
	movl	$12, %eax
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1534:
	.cfi_restore_state
	movl	%ecx, 8(%esp)
	call	__Z26_mi_os_numa_node_count_getv
	movl	8(%esp), %ecx
	jmp	L1532
	.cfi_endproc
LFE208:
	.section	.gcc_except_table,"w"
LLSDA208:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE208-LLSDACSB208
LLSDACSB208:
LLSDACSE208:
	.text
	.section .rdata,"dr"
	.align 4
LC38:
	.ascii "unable to allocate aligned OS memory directly, fall back to over-allocation (size: 0x%zx bytes, address: %p, alignment: 0x%zx, commit: %d)\12\0"
	.text
	.p2align 4
	.def	__Z20_mi_os_alloc_alignedjjbbP10mi_memid_sP10mi_stats_s;	.scl	3;	.type	32;	.endef
__Z20_mi_os_alloc_alignedjjbbP10mi_memid_sP10mi_stats_s:
LFB212:
	.cfi_startproc
	subl	$84, %esp
	.cfi_def_cfa_offset 88
	movl	%ebp, 80(%esp)
	.cfi_offset 5, -8
	movl	92(%esp), %ebp
	movl	%ebx, 68(%esp)
	movl	$0, 48(%esp)
	movl	$0, 52(%esp)
	movl	$0, 56(%esp)
	movl	$0, 60(%esp)
	movl	$0, 64(%esp)
	movl	$0, 0(%ebp)
	movl	$0, 4(%ebp)
	movl	$0, 8(%ebp)
	movl	$0, 12(%ebp)
	movl	$0, 16(%ebp)
	testl	%eax, %eax
	.cfi_offset 3, -20
	je	L1540
	movl	%esi, 72(%esp)
	movl	%edx, %ebx
	movl	%edi, 76(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movb	%cl, 23(%esp)
	call	__Z22_mi_os_good_alloc_sizej
	movl	__ZL16mi_os_mem_config, %ecx
	movl	%eax, 28(%esp)
	leal	-1(%ecx), %esi
	movl	%esi, %eax
	leal	(%ebx,%esi), %edi
	andl	%ecx, %eax
	movl	%eax, 24(%esp)
	je	L1583
	movl	%edi, %eax
	xorl	%edx, %edx
	movb	$0, 47(%esp)
	divl	%ecx
	movb	$0, 46(%esp)
	subl	%edx, %edi
	cmpl	%ecx, %edi
	jb	L1581
L1585:
	leal	-1(%edi), %eax
	movl	%eax, 32(%esp)
	testl	%edi, %eax
	jne	L1581
	movl	28(%esp), %eax
	movzbl	23(%esp), %ebx
	andb	88(%esp), %bl
	addl	%eax, %esi
	movl	24(%esp), %eax
	testl	%eax, %eax
	jne	L1541
	negl	%ecx
	andl	%ecx, %esi
L1542:
	leal	46(%esp), %eax
	movzbl	%bl, %ebx
	movzbl	23(%esp), %ecx
	movl	%edi, %edx
	movl	%eax, 8(%esp)
	leal	47(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, %eax
	movl	%ebx, (%esp)
	movl	%ecx, 28(%esp)
	call	__ZL16mi_os_prim_allocjjbbPbS_P10mi_stats_s.isra.0
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1582
	xorl	%edx, %edx
	movl	%ebx, 24(%esp)
	divl	%edi
	testl	%edx, %edx
	jne	L1584
L1543:
	movzbl	23(%esp), %eax
	movl	$0, 60(%esp)
	movl	$0, 8(%ebp)
	movb	%al, 61(%esp)
	movzbl	46(%esp), %eax
	movl	$3, 16(%ebp)
	movb	%al, 62(%esp)
	movzbl	47(%esp), %eax
	movl	%edi, 4(%ebp)
	movb	%al, 60(%esp)
	movl	60(%esp), %eax
	movl	%eax, 12(%ebp)
	movl	24(%esp), %eax
	movl	%eax, 0(%ebp)
	movl	72(%esp), %esi
	.cfi_restore 6
	movl	76(%esp), %edi
	.cfi_restore 7
L1535:
	movl	%ebx, %eax
	movl	80(%esp), %ebp
	movl	68(%esp), %ebx
	addl	$84, %esp
	.cfi_restore 3
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1583:
	.cfi_def_cfa_offset 88
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%ecx, %eax
	movb	$0, 47(%esp)
	negl	%eax
	movb	$0, 46(%esp)
	andl	%eax, %edi
	cmpl	%ecx, %edi
	jnb	L1585
L1581:
	movl	72(%esp), %esi
	.cfi_restore 6
	movl	76(%esp), %edi
	.cfi_restore 7
L1540:
	xorl	%ebx, %ebx
	movl	80(%esp), %ebp
	movl	%ebx, %eax
	movl	68(%esp), %ebx
	addl	$84, %esp
	.cfi_restore 3
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1541:
	.cfi_def_cfa_offset 88
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%esi, %eax
	xorl	%edx, %edx
	divl	%ecx
	subl	%edx, %esi
	jmp	L1542
	.p2align 4,,10
	.p2align 3
L1584:
	movl	28(%esp), %eax
	movl	%edi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 16(%esp)
	movl	%esi, 4(%esp)
	movl	$LC38, (%esp)
	call	__Z19_mi_warning_messagePKcz
	testl	%esi, %esi
	je	L1544
	movl	28(%esp), %ecx
	movl	%esi, %edx
	movl	%ebx, %eax
	call	__ZL15mi_os_prim_freePvjbP10mi_stats_s.part.0
L1544:
	movl	%edi, %eax
	notl	%eax
	cmpl	%eax, %esi
	jnb	L1581
	leal	(%edi,%esi), %eax
	movl	%eax, 24(%esp)
	cmpb	$0, __ZL16mi_os_mem_config+13
	jne	L1545
	leal	46(%esp), %edx
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	movl	%edx, 8(%esp)
	leal	47(%esp), %edx
	movl	%edx, 4(%esp)
	movl	$1, %edx
	call	__ZL16mi_os_prim_allocjjbbPbS_P10mi_stats_s.isra.0
	movl	%eax, 24(%esp)
	testl	%eax, %eax
	je	L1554
	movl	32(%esp), %ebx
	addl	%eax, %ebx
	movl	%edi, %eax
	negl	%eax
	andl	%eax, %ebx
	cmpb	$0, 23(%esp)
	jne	L1586
L1547:
	testl	%ebx, %ebx
	jne	L1543
	.p2align 4
	.p2align 3
L1582:
	movl	72(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	76(%esp), %edi
	.cfi_restore 7
	jmp	L1535
	.p2align 4,,10
	.p2align 3
L1545:
	.cfi_restore_state
	leal	46(%esp), %eax
	movl	$0, (%esp)
	movl	28(%esp), %ecx
	movl	$1, %edx
	movl	%eax, 8(%esp)
	leal	47(%esp), %eax
	movl	%eax, 4(%esp)
	movl	24(%esp), %eax
	call	__ZL16mi_os_prim_allocjjbbPbS_P10mi_stats_s.isra.0
	movl	%eax, 40(%esp)
	movl	%eax, %edx
	testl	%eax, %eax
	je	L1554
	movl	32(%esp), %eax
	movl	%edi, %ebx
	negl	%ebx
	addl	%edx, %eax
	andl	%eax, %ebx
	movl	%ebx, %eax
	subl	%edx, %eax
	movl	__ZL16mi_os_mem_config, %edx
	movl	%eax, 36(%esp)
	leal	-1(%edx), %eax
	leal	(%esi,%eax), %ecx
	testl	%eax, %edx
	je	L1587
	movl	%ecx, %eax
	movl	%edx, %esi
	xorl	%edx, %edx
	divl	%esi
	subl	%edx, %ecx
	movl	%ecx, 32(%esp)
L1549:
	movl	24(%esp), %eax
	movl	36(%esp), %edx
	subl	%edx, %eax
	subl	32(%esp), %eax
	movl	%eax, %esi
	testl	%edx, %edx
	jne	L1588
L1550:
	testl	%esi, %esi
	jne	L1589
L1551:
	movl	%ebx, 24(%esp)
	jmp	L1547
	.p2align 4,,10
	.p2align 3
L1587:
	negl	%edx
	andl	%ecx, %edx
	movl	%edx, 32(%esp)
	jmp	L1549
	.p2align 4,,10
	.p2align 3
L1586:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	movl	%ebx, %eax
	call	__Z13_mi_os_commitPvjPbP10mi_stats_s.isra.0
	jmp	L1547
	.p2align 4,,10
	.p2align 3
L1589:
	movl	32(%esp), %eax
	addl	%ebx, %eax
	je	L1551
	movl	28(%esp), %ecx
	movl	%esi, %edx
	call	__ZL15mi_os_prim_freePvjbP10mi_stats_s.part.0
	jmp	L1551
	.p2align 4,,10
	.p2align 3
L1554:
	movl	72(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	76(%esp), %edi
	.cfi_restore 7
	xorl	%ebx, %ebx
	jmp	L1535
	.p2align 4,,10
	.p2align 3
L1588:
	.cfi_restore_state
	movl	28(%esp), %ecx
	movl	40(%esp), %eax
	call	__ZL15mi_os_prim_freePvjbP10mi_stats_s.part.0
	jmp	L1550
	.cfi_endproc
LFE212:
	.section .rdata,"dr"
LC39:
	.ascii " (in large os pages)\0"
	.align 4
LC40:
	.ascii "failed to reserve %zu KiB memory\12\0"
LC41:
	.ascii "reserved %zu KiB memory%s\12\0"
	.text
	.p2align 4
	.def	_mi_reserve_os_memory_ex.constprop.0;	.scl	3;	.type	32;	.endef
_mi_reserve_os_memory_ex.constprop.0:
LFB217:
	.cfi_startproc
	.cfi_personality 0x9b,LDFCM0
	.cfi_lsda 0x1b,LLSDA217
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
	subl	$52, %esp
	.cfi_def_cfa_offset 72
	movl	72(%esp), %ebp
	testl	%ebp, %ebp
	je	L1591
	movl	$0, 0(%ebp)
L1591:
	leal	2097151(%eax), %ebx
	movzbl	%cl, %ecx
	leal	32(%esp), %eax
	movzbl	%dl, %esi
	movl	%eax, 4(%esp)
	andl	$-2097152, %ebx
	movl	$2097152, %edx
	movl	%ecx, (%esp)
	movl	%ebx, %eax
	movl	%esi, %ecx
	movl	$__mi_stats_main, 8(%esp)
	call	__Z20_mi_os_alloc_alignedjjbbP10mi_memid_sP10mi_stats_s
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1599
	movl	32(%esp), %eax
	movzbl	44(%esp), %ecx
	movl	%ebp, 24(%esp)
	movl	%ebx, %edx
	movl	$-1, (%esp)
	movl	%eax, 4(%esp)
	movl	36(%esp), %eax
	movb	%cl, 28(%esp)
	movl	%eax, 8(%esp)
	movl	40(%esp), %eax
	movl	%eax, 12(%esp)
	movl	44(%esp), %eax
	movl	%eax, 16(%esp)
	movl	48(%esp), %eax
	movl	%eax, 20(%esp)
	movl	%edi, %eax
	call	__ZL23mi_manage_os_memory_ex2Pvjbib10mi_memid_sPi.constprop.0
	testb	%al, %al
	je	L1611
	cmpb	$0, 28(%esp)
	movl	$LC39, %edx
	movl	$LC2, %eax
	movl	$LC41, (%esp)
	cmovne	%edx, %eax
	shrl	$10, %ebx
	movl	%ebx, 4(%esp)
	movl	%eax, 8(%esp)
	call	__Z19_mi_verbose_messagePKcz
	addl	$52, %esp
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
L1611:
	.cfi_restore_state
	movl	48(%esp), %ecx
	leal	-3(%ecx), %eax
	cmpl	$2, %eax
	jbe	L1612
L1595:
	shrl	$10, %ebx
	movl	$LC40, (%esp)
	movl	%ebx, 4(%esp)
	call	__Z19_mi_verbose_messagePKcz
L1599:
	addl	$52, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$12, %eax
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
L1612:
	.cfi_restore_state
	movl	32(%esp), %ebp
	movl	%ebx, %eax
	movl	%ecx, 28(%esp)
	call	__Z22_mi_os_good_alloc_sizej
	movl	28(%esp), %ecx
	testl	%ebp, %ebp
	je	L1601
	subl	%ebp, %edi
	addl	%edi, %eax
L1596:
	cmpl	$4, %ecx
	je	L1613
	testl	%eax, %eax
	je	L1595
	movl	%eax, %edx
	movl	%esi, %ecx
	movl	%ebp, %eax
	call	__ZL15mi_os_prim_freePvjbP10mi_stats_s.part.0
	jmp	L1595
	.p2align 4,,10
	.p2align 3
L1613:
	cmpl	$1073741823, %eax
	jbe	L1595
	leal	0(%ebp,%eax), %esi
L1598:
	movl	%ebp, %eax
	movl	$1, %ecx
	movl	$1073741824, %edx
	addl	$1073741824, %ebp
	call	__ZL15mi_os_prim_freePvjbP10mi_stats_s.part.0
	movl	%esi, %eax
	subl	%ebp, %eax
	cmpl	$1073741823, %eax
	ja	L1598
	jmp	L1595
	.p2align 4,,10
	.p2align 3
L1601:
	movl	%edi, %ebp
	jmp	L1596
	.cfi_endproc
LFE217:
	.section	.gcc_except_table,"w"
LLSDA217:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE217-LLSDACSB217
LLSDACSB217:
LLSDACSE217:
	.text
	.p2align 4
	.def	__Z18_mi_prim_clock_nowv;	.scl	3;	.type	32;	.endef
__Z18_mi_prim_clock_nowv:
LFB218:
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
	leal	-32(%ebp), %eax
	pushl	%ebx
	subl	$44, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%eax, (%esp)
	call	*__imp__QueryPerformanceCounter@4
	movl	__ZZL11mi_to_msecs14_LARGE_INTEGERE5mfreq, %esi
	movl	__ZZL11mi_to_msecs14_LARGE_INTEGERE5mfreq+4, %edx
	subl	$4, %esp
	movl	-32(%ebp), %ecx
	movl	-28(%ebp), %ebx
	movl	%esi, %eax
	orl	%edx, %eax
	je	L1615
	movl	%esi, 8(%esp)
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	movl	%edx, 12(%esp)
	call	___divdi3
	leal	-12(%ebp), %esp
	movl	%edx, %ebx
	movl	%eax, %ecx
	movl	%ebx, %edx
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	movl	%ecx, %eax
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
L1615:
	.cfi_restore_state
	leal	-24(%ebp), %eax
	movl	%ecx, -40(%ebp)
	movl	%ebx, -36(%ebp)
	movl	%eax, (%esp)
	call	*__imp__QueryPerformanceFrequency@4
	subl	$4, %esp
	movl	$1000, 8(%esp)
	movl	$0, 12(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___divdi3
	movl	-40(%ebp), %ecx
	movl	-36(%ebp), %ebx
	movl	%eax, %edi
	orl	%edx, %eax
	movl	%edx, %esi
	je	L1618
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	movl	%edi, 8(%esp)
	movl	%edx, 12(%esp)
	call	___divdi3
	movl	%eax, %ecx
	movl	%edx, %ebx
L1617:
	movl	%edi, __ZZL11mi_to_msecs14_LARGE_INTEGERE5mfreq
	movl	%ebx, %edx
	movl	%ecx, %eax
	movl	%esi, __ZZL11mi_to_msecs14_LARGE_INTEGERE5mfreq+4
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
L1618:
	.cfi_restore_state
	movl	$1, %edi
	xorl	%esi, %esi
	jmp	L1617
	.cfi_endproc
LFE218:
	.p2align 4
	.def	__ZL18mi_pages_try_purgebP17mi_segments_tld_s.part.0;	.scl	3;	.type	32;	.endef
__ZL18mi_pages_try_purgebP17mi_segments_tld_s.part.0:
LFB220:
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
	.cfi_offset 6, -16
	movl	%eax, %esi
	pushl	%ebx
	subl	$4, %esp
	.cfi_offset 3, -20
	call	__Z18_mi_prim_clock_nowv
	movl	20(%edi), %ebx
	movl	%eax, (%esp)
	testl	%ebx, %ebx
	je	L1621
	movl	%esi, %eax
	testb	%al, %al
	je	L1639
	jmp	L1622
	.p2align 4,,10
	.p2align 3
L1624:
	xorl	%edx, %edx
	testl	%esi, %esi
	je	L1634
	movl	%eax, 36(%esi)
	movl	40(%ebx), %edx
L1634:
	movl	%edx, 40(%eax)
	movl	20(%edi), %edx
	movl	16(%edi), %eax
	cmpl	%edx, %ebx
	je	L1628
L1632:
	cmpl	%eax, %ebx
	je	L1669
L1631:
	leal	-1(%ebx), %eax
	movl	$0, 36(%ebx)
	andl	$-2097152, %eax
	movl	$0, 40(%ebx)
	movl	$0, 8(%ebx)
	cmpb	$0, 21(%eax)
	je	L1627
	movl	%edi, %ecx
	movl	%ebx, %edx
	call	__ZL13mi_page_purgeP12mi_segment_sP9mi_page_sP17mi_segments_tld_s.part.0
L1627:
	testl	%esi, %esi
	je	L1626
	movl	%esi, %ebx
L1639:
	movl	(%esp), %eax
	cmpl	%eax, 8(%ebx)
	jg	L1623
	movl	36(%ebx), %eax
	movl	40(%ebx), %esi
	testl	%eax, %eax
	jne	L1624
	testl	%esi, %esi
	je	L1635
	movl	$0, 36(%esi)
	movl	20(%edi), %edx
	movl	16(%edi), %eax
	cmpl	%edx, %ebx
	jne	L1632
L1628:
	movl	40(%ebx), %edx
	movl	%edx, 20(%edi)
	cmpl	%eax, %ebx
	jne	L1631
L1669:
	movl	36(%ebx), %eax
L1629:
	movl	%eax, 16(%edi)
	jmp	L1631
	.p2align 4,,10
	.p2align 3
L1648:
	xorl	%esi, %esi
	testl	%ebx, %ebx
	je	L1645
	movl	%eax, 36(%ebx)
	movl	40(%edx), %esi
L1645:
	movl	%esi, 40(%eax)
	movl	20(%edi), %esi
	movl	16(%edi), %eax
	cmpl	%esi, %edx
	je	L1670
L1646:
	cmpl	%edx, %eax
	je	L1671
L1644:
	leal	-1(%edx), %eax
	movl	$0, 36(%edx)
	andl	$-2097152, %eax
	movl	$0, 40(%edx)
	movl	$0, 8(%edx)
	cmpb	$0, 21(%eax)
	je	L1647
	movl	%edi, %ecx
	call	__ZL13mi_page_purgeP12mi_segment_sP9mi_page_sP17mi_segments_tld_s.part.0
L1647:
	testl	%ebx, %ebx
	je	L1626
L1622:
	movl	%ebx, %edx
	movl	40(%ebx), %ebx
	movl	36(%edx), %eax
	testl	%eax, %eax
	jne	L1648
	testl	%ebx, %ebx
	je	L1640
	movl	$0, 36(%ebx)
	movl	20(%edi), %esi
	movl	16(%edi), %eax
	cmpl	%esi, %edx
	jne	L1646
L1670:
	movl	40(%edx), %esi
	movl	%esi, 20(%edi)
	cmpl	%edx, %eax
	jne	L1644
L1671:
	movl	36(%edx), %eax
L1652:
	movl	%eax, 16(%edi)
	jmp	L1644
	.p2align 4,,10
	.p2align 3
L1635:
	movl	20(%edi), %edx
	cmpl	16(%edi), %ebx
	je	L1636
	cmpl	%edx, %ebx
	je	L1672
	leal	-1(%ebx), %eax
	andl	$-2097152, %eax
	cmpb	$0, 21(%eax)
	je	L1626
	movl	%edi, %ecx
	movl	%ebx, %edx
	call	__ZL13mi_page_purgeP12mi_segment_sP9mi_page_sP17mi_segments_tld_s.part.0
L1626:
	movl	$0, 20(%edi)
L1621:
	movl	$0, 16(%edi)
	addl	$4, %esp
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
L1623:
	.cfi_restore_state
	movl	%ebx, 20(%edi)
	movl	$0, 36(%ebx)
	addl	$4, %esp
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
L1640:
	.cfi_restore_state
	movl	20(%edi), %esi
	cmpl	%edx, 16(%edi)
	je	L1642
	cmpl	%edx, %esi
	je	L1673
	leal	-1(%edx), %eax
	andl	$-2097152, %eax
	cmpb	$0, 21(%eax)
	je	L1626
	movl	%edi, %ecx
	call	__ZL13mi_page_purgeP12mi_segment_sP9mi_page_sP17mi_segments_tld_s.part.0
	jmp	L1626
	.p2align 4,,10
	.p2align 3
L1636:
	cmpl	%edx, %ebx
	jne	L1629
	movl	$0, 20(%edi)
	jmp	L1669
	.p2align 4,,10
	.p2align 3
L1672:
	movl	$0, 20(%edi)
	jmp	L1631
	.p2align 4,,10
	.p2align 3
L1642:
	cmpl	%edx, %esi
	jne	L1652
	movl	40(%edx), %eax
	movl	%eax, 20(%edi)
	movl	36(%edx), %eax
	jmp	L1652
L1673:
	movl	40(%edx), %eax
	movl	%eax, 20(%edi)
	jmp	L1644
	.cfi_endproc
LFE220:
	.p2align 4
	.def	__ZL18mi_segment_abandonP12mi_segment_sP17mi_segments_tld_s;	.scl	3;	.type	32;	.endef
__ZL18mi_segment_abandonP12mi_segment_sP17mi_segments_tld_s:
LFB222:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	__ZL7options+304, %eax
	movl	%edi, 12(%esp)
	.cfi_offset 7, -12
	movl	%edx, %edi
	testl	%eax, %eax
	je	L1694
L1675:
	movl	__ZL7options+300, %eax
	testl	%eax, %eax
	js	L1676
	movl	%edi, %edx
	xorl	%eax, %eax
	call	__ZL18mi_pages_try_purgebP17mi_segments_tld_s.part.0
L1676:
	cmpl	$6, 16(%ebx)
	je	L1677
	cmpb	$0, 12(%ebx)
	jne	L1678
	movl	56(%ebx), %eax
	testl	%eax, %eax
	je	L1678
	movl	%esi, 8(%esp)
	movl	%ebp, 16(%esp)
	.cfi_offset 6, -16
	.cfi_offset 5, -8
L1679:
	leal	88(%ebx), %ebp
	xorl	%esi, %esi
	jmp	L1684
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1683:
	addl	$1, %esi
	addl	$48, %ebp
	cmpl	56(%ebx), %esi
	jnb	L1693
L1684:
	leal	(%esi,%esi,2), %eax
	sall	$4, %eax
	leal	80(%ebx,%eax), %ecx
	testb	$1, 9(%ecx)
	jne	L1683
	movl	%edi, %edx
	movl	%ebp, %eax
	movl	%ecx, (%esp)
	call	__ZL20mi_page_purge_removeP9mi_page_sP17mi_segments_tld_s
	movl	(%esp), %ecx
	testb	$2, 9(%ecx)
	je	L1683
	cmpb	$0, 21(%ebx)
	je	L1683
	movl	%ebp, %edx
	movl	%edi, %ecx
	movl	%ebx, %eax
	addl	$1, %esi
	call	__ZL13mi_page_purgeP12mi_segment_sP9mi_page_sP17mi_segments_tld_s.part.0
	addl	$48, %ebp
	cmpl	56(%ebx), %esi
	jb	L1684
	.p2align 4
	.p2align 3
L1693:
	movl	8(%esp), %esi
	.cfi_restore 6
	movl	16(%esp), %ebp
	.cfi_restore 5
L1678:
	movl	%edi, %edx
	movl	%ebx, %eax
	call	__ZL33mi_segment_remove_from_free_queueP12mi_segment_sP17mi_segments_tld_s
	movl	52(%edi), %eax
	movl	$1, %edx
	xorl	%ecx, %ecx
	addl	$224, %eax
	call	__ZL14mi_stat_updateP15mi_stat_count_sx.part.0
	movl	24(%ebx), %eax
	movl	%edi, %edx
	negl	%eax
	call	__ZL22mi_segments_track_sizelP17mi_segments_tld_s
	movl	$0, 48(%ebx)
	cmpb	$0, 40(%ebx)
	je	L1685
	subl	$1, 44(%edi)
	movb	$0, 40(%ebx)
L1685:
	movl	12(%esp), %edi
	movl	%ebx, %eax
	movl	4(%esp), %ebx
	addl	$20, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	__Z32_mi_arena_segment_mark_abandonedP12mi_segment_s
	.p2align 4,,10
	.p2align 3
L1677:
	.cfi_restore_state
	movl	__ZL7options+244, %ecx
	testl	%ecx, %ecx
	je	L1695
L1680:
	cmpb	$0, 12(%ebx)
	jne	L1678
	movl	56(%ebx), %edx
	testl	%edx, %edx
	je	L1678
	movl	__ZL7options+240, %eax
	movl	%esi, 8(%esp)
	movl	%ebp, 16(%esp)
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	testl	%eax, %eax
	jne	L1679
	leal	88(%ebx), %ebp
	xorl	%esi, %esi
	jmp	L1682
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1681:
	addl	$1, %esi
	addl	$48, %ebp
	cmpl	56(%ebx), %esi
	jnb	L1693
L1682:
	leal	(%esi,%esi,2), %eax
	sall	$4, %eax
	testb	$1, 89(%ebx,%eax)
	jne	L1681
	movl	%edi, %edx
	movl	%ebp, %eax
	call	__ZL20mi_page_purge_removeP9mi_page_sP17mi_segments_tld_s
	jmp	L1681
	.p2align 4,,10
	.p2align 3
L1694:
	.cfi_restore 5
	.cfi_restore 6
	movl	$__ZL7options+300, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	jmp	L1675
L1695:
	movl	$__ZL7options+240, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	jmp	L1680
	.cfi_endproc
LFE222:
	.p2align 4
	.def	__ZL19mi_arenas_try_purgebbP10mi_stats_s;	.scl	3;	.type	32;	.endef
__ZL19mi_arenas_try_purgebbP10mi_stats_s:
LFB225:
	.cfi_startproc
	ret
	.cfi_endproc
LFE225:
	.section .rdata,"dr"
	.align 4
LC42:
	.ascii "trying to free from an invalid arena: %p, size %zu, memid: 0x%zx\12\0"
	.align 4
LC43:
	.ascii "trying to free from an invalid arena block: %p, size %zu, memid: 0x%zx\12\0"
	.align 4
LC44:
	.ascii "trying to free an already freed arena block: %p, size %zu\12\0"
	.text
	.p2align 4
	.def	__Z14_mi_arena_freePvjj10mi_memid_sP10mi_stats_s;	.scl	3;	.type	32;	.endef
__Z14_mi_arena_freePvjj10mi_memid_sP10mi_stats_s:
LFB232:
	.cfi_startproc
	subl	$68, %esp
	.cfi_def_cfa_offset 72
	movl	%esi, 56(%esp)
	.cfi_offset 6, -16
	movl	92(%esp), %esi
	testl	%eax, %eax
	je	L1697
	testl	%edx, %edx
	je	L1697
	movl	%ebx, 52(%esp)
	.cfi_offset 3, -20
	movl	88(%esp), %ebx
	movl	%eax, 40(%esp)
	leal	-3(%ebx), %eax
	movl	%edi, 60(%esp)
	.cfi_offset 7, -12
	movl	%ecx, %edi
	movl	%ebp, 64(%esp)
	.cfi_offset 5, -8
	movl	72(%esp), %ebp
	movl	%edx, 36(%esp)
	cmpl	$2, %eax
	ja	L1699
	cmpl	%ecx, %edx
	je	L1700
	testl	%ecx, %ecx
	je	L1700
	movl	%ecx, %edx
	movl	$__mi_stats_main+96, %eax
	negl	%edx
	sbbl	%ecx, %ecx
	call	__ZL14mi_stat_updateP15mi_stat_count_sx.part.0
L1700:
	movl	36(%esp), %edx
	movl	40(%esp), %eax
	movl	%esi, 76(%esp)
	movl	%ebp, %ecx
	movl	60(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	64(%esp), %ebp
	.cfi_restore 5
	movl	%ebx, 72(%esp)
	movl	56(%esp), %esi
	movl	52(%esp), %ebx
	.cfi_restore 3
	addl	$68, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z11_mi_os_freePvj10mi_memid_sP10mi_stats_s.isra.0
	.p2align 4,,10
	.p2align 3
L1699:
	.cfi_restore_state
	cmpl	$6, %ebx
	je	L1725
L1723:
	movl	52(%esp), %ebx
	.cfi_restore 3
	movl	60(%esp), %edi
	.cfi_restore 7
	movl	64(%esp), %ebp
	.cfi_restore 5
L1697:
	movl	56(%esp), %esi
	addl	$68, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1725:
	.cfi_def_cfa_offset 72
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	76(%esp), %edx
	leal	-4(,%edx,4), %eax
	testl	%edx, %edx
	movl	$528, %edx
	cmovle	%edx, %eax
	movl	__ZL9mi_arenas(%eax), %ebx
	testl	%ebx, %ebx
	je	L1726
	movl	%ebp, %eax
	shrl	$5, %eax
	cmpl	32(%ebx), %eax
	jnb	L1727
	movl	36(%esp), %ecx
	leal	2097151(%ecx), %eax
	shrl	$21, %eax
	movl	%eax, 44(%esp)
	movl	%eax, %edx
	cmpb	$0, 16(%ebx)
	jne	L1704
	movl	108(%ebx), %eax
	testl	%eax, %eax
	je	L1704
	cmpl	%edi, %ecx
	je	L1705
	movl	%ebp, %ecx
	call	__Z25_mi_bitmap_unclaim_acrossPSt6atomicIjEjjj.isra.0
	testl	%edi, %edi
	jne	L1728
L1705:
	movl	__ZL7options+304, %edx
	testl	%edx, %edx
	je	L1729
L1706:
	movl	__ZL7options+484, %eax
	movl	__ZL7options+300, %edx
	testl	%eax, %eax
	je	L1730
L1707:
	imull	__ZL7options+480, %edx
	testl	%edx, %edx
	js	L1704
	movl	%esi, (%esp)
	movl	44(%esp), %ecx
	movl	%ebp, %edx
	movl	%ebx, %eax
	call	__ZL14mi_arena_purgeP10mi_arena_sjjP10mi_stats_s
	.p2align 4
	.p2align 3
L1704:
	movl	44(%esp), %edx
	leal	120(%ebx), %eax
	movl	%ebp, %ecx
	call	__Z25_mi_bitmap_unclaim_acrossPSt6atomicIjEjjj.isra.0
	testb	%al, %al
	jne	L1723
	movl	36(%esp), %eax
	movl	52(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	$LC44, 76(%esp)
	movl	60(%esp), %edi
	.cfi_restore 7
	movl	64(%esp), %ebp
	.cfi_restore 5
	movl	$11, 72(%esp)
	movl	%eax, 84(%esp)
	movl	40(%esp), %eax
	movl	56(%esp), %esi
	movl	%eax, 80(%esp)
	addl	$68, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z17_mi_error_messageiPKcz
	.p2align 4,,10
	.p2align 3
L1726:
	.cfi_restore_state
	movl	72(%esp), %eax
	movl	$LC42, 4(%esp)
	movl	%eax, 16(%esp)
	movl	76(%esp), %eax
	movl	%eax, 20(%esp)
	movl	80(%esp), %eax
	movl	%eax, 24(%esp)
	movl	84(%esp), %eax
	movl	%eax, 28(%esp)
	movl	88(%esp), %eax
	movl	%eax, 32(%esp)
	movl	36(%esp), %eax
	movl	%eax, 12(%esp)
	movl	40(%esp), %eax
	movl	%eax, 8(%esp)
L1724:
	movl	$22, (%esp)
	call	__Z17_mi_error_messageiPKcz
	movl	52(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	60(%esp), %edi
	.cfi_restore 7
	movl	64(%esp), %ebp
	.cfi_restore 5
	jmp	L1697
	.p2align 4,,10
	.p2align 3
L1727:
	.cfi_restore_state
	movl	72(%esp), %eax
	movl	$LC43, 4(%esp)
	movl	%eax, 16(%esp)
	movl	76(%esp), %eax
	movl	%eax, 20(%esp)
	movl	80(%esp), %eax
	movl	%eax, 24(%esp)
	movl	84(%esp), %eax
	movl	%eax, 28(%esp)
	movl	88(%esp), %eax
	movl	%eax, 32(%esp)
	movl	36(%esp), %eax
	movl	%eax, 12(%esp)
	movl	40(%esp), %eax
	movl	%eax, 8(%esp)
	jmp	L1724
L1728:
	movl	%edi, %eax
	negl	%eax
	sbbl	%edx, %edx
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	$__mi_stats_main+96, %eax
	call	__ZL14mi_stat_updateP15mi_stat_count_sx.part.0
	jmp	L1705
L1730:
	movl	$__ZL7options+480, %eax
	movl	%edx, 48(%esp)
	call	__ZL14mi_option_initP16mi_option_desc_s
	movl	48(%esp), %edx
	jmp	L1707
L1729:
	movl	$__ZL7options+300, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	jmp	L1706
	.cfi_endproc
LFE232:
	.section	.text.unlikely,"x"
LCOLDB45:
	.text
LHOTB45:
	.p2align 4
	.def	__ZL16mi_segment_allocj14mi_page_kind_ejjiP17mi_segments_tld_sP11mi_os_tld_s;	.scl	3;	.type	32;	.endef
__ZL16mi_segment_allocj14mi_page_kind_ejjiP17mi_segments_tld_sP11mi_os_tld_s:
LFB234:
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
	subl	$100, %esp
	.cfi_def_cfa_offset 120
	movl	%edx, 32(%esp)
	movl	120(%esp), %esi
	movl	%ecx, 36(%esp)
	cmpl	$3, %edx
	je	L1835
	movzbl	36(%esp), %ecx
	movl	$2097152, %edi
	shrl	%cl, %edi
	leal	(%edi,%edi,2), %ecx
	movl	%edi, 28(%esp)
	movl	$2097152, %edi
	sall	$4, %ecx
	addl	$359, %ecx
	xorb	%cl, %cl
	movl	%ecx, 24(%esp)
	leal	262143(%ecx,%eax), %ecx
	andl	$-262144, %ecx
	testl	%eax, %eax
	movl	32(%esp), %eax
	cmovne	%ecx, %edi
	cmpl	$2, %eax
	je	L1794
	movl	%eax, 48(%esp)
	cmpl	$1, __ZL12thread_count
	ja	L1836
L1733:
	movl	__ZL7options+64, %ebp
	testl	%ebp, %ebp
	je	L1837
L1739:
	movl	__ZL7options+60, %ebx
	movb	$1, 44(%esp)
	testl	%ebx, %ebx
	setne	40(%esp)
L1737:
	movl	$2097152, %ebp
	testl	%esi, %esi
	je	L1740
	leal	2097152(%edi), %eax
	subl	24(%esp), %eax
	movl	%esi, %ebp
	movl	$2097152, %esi
	movl	%eax, %edi
L1740:
	movl	$0, 80(%esp)
	movl	$0, 84(%esp)
	movl	$0, 88(%esp)
	movl	$0, 92(%esp)
	movl	$0, 96(%esp)
	movl	$0, 60(%esp)
	movl	$0, 64(%esp)
	movl	$0, 68(%esp)
	movl	$0, 72(%esp)
	movl	$0, 76(%esp)
	cmpl	$1, __mi_numa_node_count
	jne	L1838
L1741:
	xorl	%ebx, %ebx
L1744:
	movl	__ZL7options+544, %eax
	testl	%eax, %eax
	je	L1839
L1750:
	movl	__ZL7options+540, %eax
	testl	%eax, %eax
	je	L1799
	movl	124(%esp), %eax
	testl	%eax, %eax
	je	L1751
L1799:
	cmpl	$1048575, %edi
	seta	%dl
	cmpl	$2097152, %ebp
	setbe	%al
	testb	%al, %dl
	je	L1753
	testl	$2097152, %esi
	je	L1840
L1753:
	movl	__ZL7options+344, %eax
	testl	%eax, %eax
	je	L1759
L1761:
	movl	124(%esp), %eax
	orl	__ZL7options+340, %eax
	jne	L1757
L1760:
	testl	%esi, %esi
	jne	L1762
	leal	60(%esp), %eax
	movzbl	40(%esp), %ecx
	movzbl	44(%esp), %esi
	movl	%eax, 40(%esp)
L1758:
	movl	132(%esp), %eax
	movl	%ebp, %edx
	movl	4(%eax), %eax
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	movl	40(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%edi, %eax
	call	__Z20_mi_os_alloc_alignedjjbbP10mi_memid_sP10mi_stats_s
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1770
L1754:
	cmpb	$0, 73(%esp)
	je	L1841
L1769:
	movl	60(%esp), %eax
	movl	%eax, (%ebx)
	movl	64(%esp), %eax
	movl	%eax, 4(%ebx)
	movl	68(%esp), %eax
	movl	%eax, 8(%ebx)
	movl	72(%esp), %eax
	movl	%eax, 12(%ebx)
	movl	76(%esp), %eax
	movl	%eax, 16(%ebx)
	movzbl	72(%esp), %eax
	xorb	$1, %al
	movb	%al, 20(%ebx)
	jne	L1842
L1771:
	movb	%al, 21(%ebx)
	movl	128(%esp), %eax
	movl	%edi, 24(%ebx)
	movl	128(%esp), %edx
	movl	48(%eax), %eax
	movl	%eax, 28(%ebx)
	movl	%edi, %eax
	call	__ZL22mi_segments_track_sizelP17mi_segments_tld_s
	cmpl	$6, 16(%ebx)
	je	L1773
	cmpl	$-1, %ebx
	je	L1798
	movl	%ebx, %eax
	movl	%ebx, 40(%esp)
	shrl	$31, %eax
	movl	__ZL14mi_segment_map(,%eax,4), %edi
	leal	__ZL14mi_segment_map(,%eax,4), %ebp
	testl	%edi, %edi
	jne	L1775
	leal	80(%esp), %edx
	xorl	%ecx, %ecx
	movl	$3988, %eax
	call	__Z12_mi_os_allocjP10mi_memid_sP10mi_stats_s
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1776
	movl	%edi, %eax
	lock cmpxchgl	%esi, 0(%ebp)
	movl	%eax, %edi
	jne	L1843
L1778:
	movl	%ebx, %eax
	movl	%ebx, %ecx
	movl	$1, %edx
	shrl	$26, %eax
	shrl	$21, %ecx
	andl	$31, %eax
	sall	%cl, %edx
	leal	20(%esi,%eax,4), %esi
	movl	(%esi), %eax
L1779:
	movl	%edx, %ecx
	orl	%eax, %ecx
	lock cmpxchgl	%ecx, (%esi)
	jne	L1779
L1773:
	movl	%ebx, 40(%esp)
	leal	32(%ebx), %edi
	leal	76(%ebx), %esi
L1774:
	movl	24(%esp), %eax
	leal	-32(%eax), %ecx
	cmpb	$0, __mi_cpu_has_fsrm
	je	L1781
	xorl	%eax, %eax
/APP
 # 1857 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	rep stosb
 # 0 "" 2
/NO_APP
L1782:
	movl	28(%esp), %edx
	testl	%edx, %edx
	je	L1783
	movzbl	14(%ebx), %ecx
	movzbl	13(%ebx), %ebp
	movl	%esi, 44(%esp)
	leal	88(%ebx), %edi
	cmpl	$3, 32(%esp)
	movl	28(%esp), %esi
	sete	%al
	sall	$2, %ecx
	addl	%ebp, %ebp
	xorl	%edx, %edx
	orl	%ecx, %ebp
	sall	$3, %eax
	orl	%eax, %ebp
	andl	$14, %ebp
	.p2align 5
	.p2align 4
	.p2align 3
L1784:
	leal	(%edx,%edx,2), %eax
	movb	%dl, (%edi)
	addl	$1, %edx
	addl	$48, %edi
	sall	$4, %eax
	movzbl	89(%ebx,%eax), %ecx
	andl	$-15, %ecx
	orl	%ebp, %ecx
	movb	%cl, 89(%ebx,%eax)
	cmpl	%edx, %esi
	jne	L1784
	movl	44(%esp), %esi
L1783:
	movl	32(%esp), %eax
	movl	%eax, 84(%ebx)
	movl	28(%esp), %eax
	movl	%eax, 56(%ebx)
	movl	36(%esp), %eax
	movl	%eax, 80(%ebx)
	movl	24(%esp), %eax
	movl	%eax, 60(%ebx)
/APP
 # 2248 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:24, %eax 
 # 0 "" 2
/NO_APP
	xchgl	(%esi), %eax
	movl	40(%esp), %eax
	xorl	__mi_heap_main+16, %eax
	movl	%eax, 64(%ebx)
	cmpl	$1, 48(%esp)
	jle	L1844
	addl	$100, %esp
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
L1794:
	.cfi_restore_state
	movl	$2, 48(%esp)
	jmp	L1733
	.p2align 4,,10
	.p2align 3
L1762:
	movl	132(%esp), %eax
	leal	2097151(%ebp), %ecx
	movl	4(%eax), %ebx
	movl	$__mi_stats_main, %eax
	testl	%ebx, %ebx
	cmove	%eax, %ebx
	leal	-1(%ebp), %eax
	testl	%ebp, %eax
	je	L1845
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	%ecx, %esi
	divl	%ebp
	subl	%edx, %esi
L1766:
	leal	60(%esp), %edx
	movl	%ebx, 8(%esp)
	subl	$2097152, %esi
	movzbl	40(%esp), %ecx
	movl	%edx, 4(%esp)
	movzbl	44(%esp), %edx
	leal	(%edi,%esi), %eax
	movl	%edx, (%esp)
	movl	%ebp, %edx
	call	__Z20_mi_os_alloc_alignedjjbbP10mi_memid_sP10mi_stats_s
	testl	%eax, %eax
	je	L1770
	leal	(%eax,%esi), %ebx
	cmpb	$0, 40(%esp)
	je	L1754
	cmpl	%esi, __ZL16mi_os_mem_config
	jnb	L1754
	leal	80(%esp), %ecx
	movl	%esi, %edx
	call	__ZL17mi_os_decommit_exPvjPbP10mi_stats_s.isra.0
	jmp	L1754
	.p2align 4,,10
	.p2align 3
L1835:
	testl	%eax, %eax
	je	L1792
	addl	$262399, %eax
	movl	$256, 24(%esp)
	andl	$-262144, %eax
	movl	$1, 28(%esp)
	movl	$3, 48(%esp)
	movl	%eax, %edi
	jmp	L1733
	.p2align 4,,10
	.p2align 3
L1841:
	movl	24(%esp), %edx
	xorl	%ecx, %ecx
	movl	%ebx, %eax
	call	__Z13_mi_os_commitPvjPbP10mi_stats_s.isra.0
	testb	%al, %al
	jne	L1769
	movl	132(%esp), %eax
	xorl	%ecx, %ecx
	movl	%edi, %edx
	movl	4(%eax), %eax
	movl	%eax, 20(%esp)
	movl	60(%esp), %eax
	movl	%eax, (%esp)
	movl	64(%esp), %eax
	movl	%eax, 4(%esp)
	movl	68(%esp), %eax
	movl	%eax, 8(%esp)
	movl	72(%esp), %eax
	movl	%eax, 12(%esp)
	movl	76(%esp), %eax
	movl	%eax, 16(%esp)
	movl	%ebx, %eax
	call	__Z14_mi_arena_freePvjj10mi_memid_sP10mi_stats_s
L1770:
	xorl	%ebx, %ebx
L1847:
	addl	$100, %esp
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
L1842:
	.cfi_restore_state
	movl	__ZL7options+304, %esi
	testl	%esi, %esi
	je	L1846
L1772:
	movl	__ZL7options+300, %eax
	notl	%eax
	shrl	$31, %eax
	jmp	L1771
	.p2align 4,,10
	.p2align 3
L1751:
	movl	__ZL7options+344, %eax
	testl	%eax, %eax
	je	L1759
	movl	__ZL7options+340, %eax
	testl	%eax, %eax
	je	L1760
	.p2align 4
	.p2align 3
L1757:
	call	*__imp___errno
	xorl	%ebx, %ebx
	movl	$12, (%eax)
	jmp	L1847
L1843:
	movl	96(%esp), %eax
	xorl	%ecx, %ecx
	movl	$3988, %edx
	movl	%ecx, 4(%esp)
	movl	80(%esp), %ecx
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__Z11_mi_os_freePvj10mi_memid_sP10mi_stats_s.isra.0
	testl	%edi, %edi
	je	L1776
	.p2align 4
	.p2align 3
L1775:
	movl	%edi, %esi
	jmp	L1778
	.p2align 4,,10
	.p2align 3
L1781:
	movl	%ecx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	_memset
	jmp	L1782
	.p2align 4,,10
	.p2align 3
L1845:
	movl	%ebp, %esi
	negl	%esi
	andl	%ecx, %esi
	jmp	L1766
	.p2align 4,,10
	.p2align 3
L1838:
	movl	__mi_numa_node_count, %ebx
	testl	%ebx, %ebx
	je	L1848
L1742:
	cmpl	$1, %ebx
	je	L1741
	movl	__ZL28pGetCurrentProcessorNumberEx, %eax
	testl	%eax, %eax
	je	L1745
	movl	__ZL23pGetNumaProcessorNodeEx, %ecx
	testl	%ecx, %ecx
	je	L1745
	movl	%ebx, 52(%esp)
	leal	80(%esp), %ebx
	movl	%ebx, (%esp)
	call	*%eax
	.cfi_def_cfa_offset 116
	xorl	%edx, %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 120
	leal	58(%esp), %eax
	movl	%ebx, (%esp)
	movw	%dx, 58(%esp)
	movl	%eax, 4(%esp)
	call	*__ZL23pGetNumaProcessorNodeEx
	.cfi_def_cfa_offset 112
	subl	$8, %esp
	.cfi_def_cfa_offset 120
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1744
	movzwl	58(%esp), %eax
	movl	52(%esp), %ebx
L1747:
	cmpl	%ebx, %eax
	jb	L1849
	xorl	%edx, %edx
	divl	%ebx
	movl	%edx, %ebx
	jmp	L1744
	.p2align 4,,10
	.p2align 3
L1844:
	movl	84(%ebx), %eax
	testl	%eax, %eax
	je	L1850
	cmpl	$1, %eax
	jne	L1788
	movl	128(%esp), %eax
	addl	$8, %eax
L1787:
	movl	$0, 32(%ebx)
	movl	4(%eax), %edx
	movl	%edx, 36(%ebx)
	testl	%edx, %edx
	je	L1789
	movl	%ebx, 32(%edx)
L1790:
	movl	%ebx, 4(%eax)
	addl	$100, %esp
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
L1836:
	.cfi_restore_state
	movl	128(%esp), %eax
	movl	32(%eax), %ebx
	movl	__ZL7options+284, %eax
	testl	%eax, %eax
	je	L1851
L1736:
	cmpl	__ZL7options+280, %ebx
	jnb	L1733
	movb	$0, 44(%esp)
	movb	$0, 40(%esp)
	jmp	L1737
	.p2align 4,,10
	.p2align 3
L1840:
	leal	60(%esp), %eax
	movzbl	40(%esp), %ecx
	movzbl	44(%esp), %esi
	movl	%edi, %edx
	movl	%eax, 40(%esp)
	movl	%eax, 8(%esp)
	movl	124(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, %eax
	movl	%ecx, 44(%esp)
	call	__ZL18mi_arena_try_allocijjbbiP10mi_memid_sP11mi_os_tld_s.isra.0
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L1754
	movl	124(%esp), %eax
	movl	44(%esp), %ecx
	testl	%eax, %eax
	je	L1852
	movl	__ZL7options+344, %eax
	testl	%eax, %eax
	jne	L1757
	movl	$__ZL7options+340, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	jmp	L1757
	.p2align 4,,10
	.p2align 3
L1792:
	movl	$256, 24(%esp)
	movl	$2097152, %edi
	movl	$1, 28(%esp)
	movl	$3, 48(%esp)
	jmp	L1733
	.p2align 4,,10
	.p2align 3
L1839:
	movl	$__ZL7options+540, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	jmp	L1750
	.p2align 4,,10
	.p2align 3
L1837:
	movl	$__ZL7options+60, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	jmp	L1739
	.p2align 4,,10
	.p2align 3
L1798:
	movl	$-1, 40(%esp)
	movl	$75, %esi
	movl	$31, %edi
	jmp	L1774
	.p2align 4,,10
	.p2align 3
L1759:
	movl	$__ZL7options+340, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	jmp	L1761
L1850:
	movl	128(%esp), %eax
	jmp	L1787
L1789:
	movl	%ebx, (%eax)
	jmp	L1790
L1745:
	movl	__ZL21pGetNumaProcessorNode, %eax
	testl	%eax, %eax
	je	L1741
	movl	%ebx, 52(%esp)
	call	*__imp__GetCurrentProcessorNumber@0
	movb	$0, 80(%esp)
	movl	%eax, %ecx
	leal	80(%esp), %eax
	movzbl	%cl, %ecx
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	*__ZL21pGetNumaProcessorNode
	.cfi_def_cfa_offset 112
	subl	$8, %esp
	.cfi_def_cfa_offset 120
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1744
	movzbl	80(%esp), %eax
	movl	52(%esp), %ebx
	jmp	L1747
L1852:
	movl	__ZL7options+344, %ebx
	testl	%ebx, %ebx
	je	L1853
	movl	__ZL7options+340, %eax
	testl	%eax, %eax
	je	L1758
	jmp	L1757
	.p2align 4,,10
	.p2align 3
L1846:
	movl	$__ZL7options+300, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	jmp	L1772
L1776:
	leal	32(%ebx), %edi
	leal	76(%ebx), %esi
	jmp	L1774
L1851:
	movl	$__ZL7options+280, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	jmp	L1736
L1848:
	call	__Z26_mi_os_numa_node_count_getv
	movl	%eax, %ebx
	jmp	L1742
L1853:
	movl	$__ZL7options+340, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	movl	__ZL7options+340, %edx
	movl	44(%esp), %ecx
	testl	%edx, %edx
	je	L1758
	jmp	L1757
L1849:
	movl	%eax, %ebx
	jmp	L1744
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__ZL16mi_segment_allocj14mi_page_kind_ejjiP17mi_segments_tld_sP11mi_os_tld_s.cold;	.scl	3;	.type	32;	.endef
__ZL16mi_segment_allocj14mi_page_kind_ejjiP17mi_segments_tld_sP11mi_os_tld_s.cold:
LFSB234:
L1788:
	.cfi_def_cfa_offset 120
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	xorl	%eax, %eax
	movl	%eax, 32(%ebx)
	movl	4, %eax
	ud2
	.cfi_endproc
LFE234:
	.text
	.section	.text.unlikely,"x"
LCOLDE45:
	.text
LHOTE45:
	.p2align 4
	.def	__ZL26mi_segment_huge_page_allocjjiP17mi_segments_tld_sP11mi_os_tld_s;	.scl	3;	.type	32;	.endef
__ZL26mi_segment_huge_page_allocjjiP17mi_segments_tld_sP11mi_os_tld_s:
LFB256:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%edx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %esi
	movl	36(%esp), %ebx
	movl	%ecx, 4(%esp)
	movl	$22, %ecx
	movl	%edx, (%esp)
	movl	$3, %edx
	movl	%ebx, 12(%esp)
	movl	%esi, 8(%esp)
	call	__ZL16mi_segment_allocj14mi_page_kind_ejjiP17mi_segments_tld_sP11mi_os_tld_s
	testl	%eax, %eax
	je	L1863
	movl	%esi, %edx
	movl	%eax, %ebx
	call	__ZL20mi_segment_find_freeP12mi_segment_sP17mi_segments_tld_s
	movl	%eax, %esi
	movzbl	(%eax), %eax
	cmpl	$3, 84(%ebx)
	je	L1871
	movl	80(%ebx), %ecx
	movl	$1, %edx
	sall	%cl, %edx
L1857:
	movzbl	%al, %ecx
	imull	%edx, %ecx
	addl	%ebx, %ecx
	testb	%al, %al
	jne	L1858
	movl	60(%ebx), %eax
	addl	%eax, %ecx
	subl	%eax, %edx
L1858:
	movl	%edx, 20(%esi)
	testl	%edi, %edi
	je	L1854
	cmpb	$0, 20(%ebx)
	je	L1854
	testb	$2, 1(%esi)
	je	L1854
	leal	-1(%edi), %eax
	leal	(%ecx,%eax), %ebx
	testl	%eax, %edi
	jne	L1861
	negl	%edi
	andl	%edi, %ebx
L1862:
	movl	36(%esp), %edi
	leal	4(%ecx), %eax
	subl	%eax, %ebx
	movl	4(%edi), %ecx
	movl	%ebx, %edx
	call	__Z12_mi_os_resetPvjP10mi_stats_s.isra.0
L1854:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
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
L1871:
	.cfi_restore_state
	movl	24(%ebx), %edx
	jmp	L1857
	.p2align 4,,10
	.p2align 3
L1863:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%esi, %esi
	movl	%esi, %eax
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
L1861:
	.cfi_restore_state
	movl	%ebx, %eax
	xorl	%edx, %edx
	divl	%edi
	subl	%edx, %ebx
	jmp	L1862
	.cfi_endproc
LFE256:
	.p2align 4
	.def	__ZL15mi_segment_freeP12mi_segment_sbP17mi_segments_tld_s.isra.0;	.scl	3;	.type	32;	.endef
__ZL15mi_segment_freeP12mi_segment_sbP17mi_segments_tld_s.isra.0:
LFB258:
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
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	cmpb	$0, 12(%eax)
	jne	L1873
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	L1873
	leal	88(%ebx), %ebp
	xorl	%edi, %edi
	jmp	L1875
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1874:
	addl	$1, %edi
	addl	$48, %ebp
	cmpl	56(%ebx), %edi
	jnb	L1873
L1875:
	leal	(%edi,%edi,2), %eax
	sall	$4, %eax
	testb	$1, 89(%ebx,%eax)
	jne	L1874
	movl	%ebp, %eax
	movl	%esi, %edx
	addl	$1, %edi
	addl	$48, %ebp
	call	__ZL20mi_page_purge_removeP9mi_page_sP17mi_segments_tld_s
	cmpl	56(%ebx), %edi
	jb	L1875
	.p2align 4
	.p2align 3
L1873:
	movl	%esi, %edx
	movl	%ebx, %eax
	call	__ZL33mi_segment_remove_from_free_queueP12mi_segment_sP17mi_segments_tld_s
	movl	60(%ebx), %edx
	testl	%edx, %edx
	je	L1876
	movl	52(%esi), %eax
	negl	%edx
	sbbl	%ecx, %ecx
	addl	$192, %eax
	call	__ZL14mi_stat_updateP15mi_stat_count_sx.part.0
L1876:
	movl	24(%ebx), %eax
	movl	%eax, 24(%esp)
	xorl	%eax, %eax
	xchgl	76(%ebx), %eax
	cmpl	$6, 16(%ebx)
	je	L1877
	cmpl	$-1, %ebx
	je	L1877
	movl	%ebx, %eax
	shrl	$31, %eax
	movl	__ZL14mi_segment_map(,%eax,4), %edx
	testl	%edx, %edx
	jne	L1899
L1877:
	movl	24(%esp), %eax
	movl	%esi, %edx
	negl	%eax
	call	__ZL22mi_segments_track_sizelP17mi_segments_tld_s
	cmpb	$0, 40(%ebx)
	je	L1879
	subl	$1, 44(%esi)
	movb	$0, 40(%ebx)
L1879:
	cmpl	$3, 84(%ebx)
	je	L1900
	movl	80(%ebx), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, %edx
L1881:
	movl	56(%ebx), %edi
	xorl	%ecx, %ecx
	testl	%edi, %edi
	je	L1882
	movl	%esi, 28(%esp)
	xorl	%eax, %eax
	xorl	%ebp, %ebp
	movl	%edx, %esi
	.p2align 5
	.p2align 4
	.p2align 3
L1884:
	leal	(%eax,%eax,2), %edx
	sall	$4, %edx
	testb	$2, 89(%ebx,%edx)
	movl	%ebp, %edx
	cmovne	%esi, %edx
	addl	$1, %eax
	addl	%edx, %ecx
	cmpl	%eax, %edi
	jne	L1884
	movl	28(%esp), %esi
L1882:
	movl	52(%esi), %eax
	movl	24(%esp), %edx
	movl	%eax, 20(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	movl	4(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	%ebx, %eax
	call	__Z14_mi_arena_freePvjj10mi_memid_sP10mi_stats_s
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
L1899:
	.cfi_restore_state
	movl	%ebx, %eax
	movl	%ebx, %ecx
	shrl	$26, %eax
	shrl	$21, %ecx
	andl	$31, %eax
	leal	20(%edx,%eax,4), %edi
	movl	$-2, %edx
	movl	(%edi), %eax
	roll	%cl, %edx
L1878:
	movl	%edx, %ecx
	andl	%eax, %ecx
	lock cmpxchgl	%ecx, (%edi)
	je	L1877
	jmp	L1878
	.p2align 4,,10
	.p2align 3
L1900:
	movl	24(%ebx), %edx
	jmp	L1881
	.cfi_endproc
LFE258:
	.p2align 4
	.def	__Z18_mi_os_random_weakj;	.scl	3;	.type	32;	.endef
__Z18_mi_os_random_weakj:
LFB261:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %ebx
	xorl	$__Z18_mi_os_random_weakj, %ebx
	call	__Z18_mi_prim_clock_nowv
	xorl	%ecx, %ecx
	xorl	%ebx, %eax
	movl	%eax, %ebx
	shrl	$17, %ebx
	xorl	%eax, %ebx
	andl	$15, %ebx
	jmp	L1903
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1908:
	movl	%eax, %edx
	shrl	$16, %edx
	xorl	%eax, %edx
	imull	$2146121005, %edx, %eax
	movl	%eax, %edx
	shrl	$15, %edx
	xorl	%eax, %edx
	imull	$-2073254261, %edx, %edx
	movl	%edx, %eax
	shrl	$16, %eax
	xorl	%edx, %eax
	cmpl	%ecx, %ebx
	je	L1907
L1905:
	addl	$1, %ecx
L1903:
	testl	%eax, %eax
	jne	L1908
	movl	$1285909221, %eax
	cmpl	%ecx, %ebx
	jne	L1905
L1907:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE261:
	.section .rdata,"dr"
	.align 4
LC46:
	.ascii "unable to use secure randomness\12\0"
LC47:
	.ascii "expand 32-byte k\0"
	.text
	.p2align 4
	.def	__ZL17mi_random_init_exP15mi_random_cxt_sb;	.scl	3;	.type	32;	.endef
__ZL17mi_random_init_exP15mi_random_cxt_sb:
LFB263:
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
	movl	%eax, %ebx
	subl	$40, %esp
	.cfi_def_cfa_offset 56
	leal	8(%esp), %esi
	testb	%dl, %dl
	je	L1925
L1910:
	movl	$0, (%esp)
	call	__Z18_mi_os_random_weakj
	movl	%esi, %edx
	jmp	L1913
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1926:
	movl	%eax, %ecx
	addl	$4, %edx
	leal	40(%esp), %edi
	shrl	$16, %ecx
	xorl	%ecx, %eax
	imull	$2146121005, %eax, %eax
	movl	%eax, %ecx
	shrl	$15, %ecx
	xorl	%eax, %ecx
	imull	$-2073254261, %ecx, %ecx
	movl	%ecx, %eax
	shrl	$16, %eax
	xorl	%ecx, %eax
	movl	%eax, -4(%edx)
	cmpl	%edi, %edx
	je	L1911
L1913:
	testl	%eax, %eax
	jne	L1926
	movl	$1285909221, %eax
	addl	$4, %edx
	leal	40(%esp), %edi
	movl	%eax, -4(%edx)
	cmpl	%edi, %edx
	jne	L1913
L1911:
	movl	$0, 120(%ebx)
	xorl	%eax, %eax
	movl	$0, 124(%ebx)
	movl	$0, 128(%ebx)
	movl	$0, 132(%ebx)
L1914:
	movl	$0, (%ebx,%eax)
	movl	$0, 4(%ebx,%eax)
	movl	$0, 8(%ebx,%eax)
	movl	$0, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	$128, %eax
	jb	L1914
	movl	$LC47, %ecx
	movl	%ebx, %edx
	.p2align 6
	.p2align 4
	.p2align 3
L1916:
	movzbl	1(%ecx), %eax
	movzbl	2(%ecx), %edi
	addl	$4, %ecx
	addl	$4, %edx
	sall	$16, %edi
	sall	$8, %eax
	orl	%edi, %eax
	movzbl	-4(%ecx), %edi
	orl	%edi, %eax
	movzbl	-1(%ecx), %edi
	sall	$24, %edi
	orl	%edi, %eax
	movl	%eax, -4(%edx)
	cmpl	$LC47+16, %ecx
	jne	L1916
	movl	%esi, %edx
	leal	16(%ebx), %ecx
	.p2align 6
	.p2align 4
	.p2align 3
L1917:
	movzbl	1(%edx), %eax
	movzbl	2(%edx), %esi
	addl	$4, %edx
	addl	$4, %ecx
	sall	$16, %esi
	sall	$8, %eax
	orl	%esi, %eax
	movzbl	-4(%edx), %esi
	orl	%esi, %eax
	movzbl	-1(%edx), %esi
	sall	$24, %esi
	orl	%esi, %eax
	movl	%eax, -4(%ecx)
	leal	40(%esp), %eax
	cmpl	%eax, %edx
	jne	L1917
	movl	%ebx, 56(%ebx)
	addl	$40, %esp
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
L1925:
	.cfi_restore_state
	movl	$32, 4(%esp)
	movl	%esi, (%esp)
	call	_SystemFunction036@8
	.cfi_def_cfa_offset 48
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	testb	%al, %al
	jne	L1911
	movl	$LC46, (%esp)
	call	__Z19_mi_warning_messagePKcz
	jmp	L1910
	.cfi_endproc
LFE263:
	.p2align 4
	.def	__ZL17mi_heap_main_initv.part.0;	.scl	3;	.type	32;	.endef
__ZL17mi_heap_main_initv.part.0:
LFB268:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	$1, %edx
/APP
 # 2248 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:24, %eax 
 # 0 "" 2
/NO_APP
	movl	%eax, __mi_heap_main+8
	movl	$__mi_heap_main+28, %eax
	movl	$1, __mi_heap_main+16
	call	__ZL17mi_random_init_exP15mi_random_cxt_sb
	movl	__mi_heap_main+156, %eax
	testl	%eax, %eax
	jle	L1934
	movl	$16, %edx
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -8
	movl	%edx, %ecx
	subl	%eax, %ecx
	addl	$16, %ecx
	movl	__mi_heap_main+28(,%ecx,4), %ebx
	movl	$0, __mi_heap_main+28(,%ecx,4)
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%ebx, __mi_heap_main+16
	movl	%ecx, __mi_heap_main+156
	je	L1935
	subl	%ecx, %edx
	addl	$16, %edx
	subl	$2, %eax
	movl	__mi_heap_main+28(,%edx,4), %ebx
	movl	%eax, __mi_heap_main+156
	movl	$0, __mi_heap_main+28(,%edx,4)
	movl	%eax, %edx
	movl	%ebx, __mi_heap_main+20
	je	L1932
	movl	8(%esp), %ebx
	.cfi_restore 3
L1929:
	movl	$16, %eax
	subl	$2, %ecx
	subl	%edx, %eax
	movl	%eax, %edx
L1931:
	leal	16(%edx), %eax
	movl	%ecx, __mi_heap_main+156
	movl	__mi_heap_main+28(,%eax,4), %edx
	movl	$0, __mi_heap_main+28(,%eax,4)
	movl	$__ZL18mi_subproc_default+8, (%esp)
	movl	%edx, __mi_heap_main+24
	call	*__imp__InitializeCriticalSection@4
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	$__ZL18mi_subproc_default+32, (%esp)
	call	*__imp__InitializeCriticalSection@4
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1935:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -8
	movl	$__mi_heap_main+28, %eax
	call	__ZL12chacha_blockP15mi_random_cxt_s
	movl	__mi_heap_main+92, %eax
	movl	8(%esp), %ebx
	.cfi_restore 3
	movl	$0, __mi_heap_main+92
	movl	$14, %ecx
	movl	$1, %edx
	movl	%eax, __mi_heap_main+20
	jmp	L1931
	.p2align 4,,10
	.p2align 3
L1934:
	movl	$__mi_heap_main+28, %eax
	call	__ZL12chacha_blockP15mi_random_cxt_s
	movl	__mi_heap_main+92, %eax
	movl	$15, %ecx
	movl	$0, __mi_heap_main+92
	movl	$14, %edx
	movl	%eax, __mi_heap_main+16
	movl	__mi_heap_main+96, %eax
	movl	$0, __mi_heap_main+96
	movl	%eax, __mi_heap_main+20
	jmp	L1929
	.p2align 4,,10
	.p2align 3
L1932:
	.cfi_offset 3, -8
	movl	%eax, 4(%esp)
	movl	$__mi_heap_main+28, %eax
	call	__ZL12chacha_blockP15mi_random_cxt_s
	movl	4(%esp), %edx
	movl	8(%esp), %ebx
	.cfi_restore 3
	movl	$15, %ecx
	jmp	L1931
	.cfi_endproc
LFE268:
	.section .rdata,"dr"
LC48:
	.ascii "process init: 0x%zx\12\0"
LC49:
	.ascii "kernelbase.dll\0"
LC50:
	.ascii "VirtualAlloc2FromApp\0"
LC51:
	.ascii "VirtualAlloc2\0"
LC52:
	.ascii "ntdll.dll\0"
LC53:
	.ascii "NtAllocateVirtualMemoryEx\0"
LC54:
	.ascii "kernel32.dll\0"
LC55:
	.ascii "GetCurrentProcessorNumberEx\0"
LC56:
	.ascii "GetNumaProcessorNodeEx\0"
LC57:
	.ascii "GetNumaNodeProcessorMaskEx\0"
LC58:
	.ascii "GetNumaProcessorNode\0"
LC59:
	.ascii "SeLockMemoryPrivilege\0"
	.align 4
LC60:
	.ascii "cannot enable large OS page support, error %lu\12\0"
LC61:
	.ascii "secure level: %d\12\0"
LC62:
	.ascii "none\0"
LC63:
	.ascii "mem tracking: %s\12\0"
	.align 4
LC65:
	.ascii "unable to allocate thread local heap metadata (%zu bytes)\12\0"
	.text
	.p2align 4
	.def	_mi_thread_init;	.scl	3;	.type	32;	.endef
_mi_thread_init:
LFB271:
	.cfi_startproc
	.cfi_personality 0x9b,LDFCM0
	.cfi_lsda 0x1b,LLSDA271
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
	subl	$100, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	__mi_heap_main+16, %ebx
	testl	%ebx, %ebx
	je	L2057
L1937:
	movl	__ZZ15mi_process_initE12process_init, %eax
	testl	%eax, %eax
	jne	L2056
	movl	$1, %edx
	lock cmpxchgl	%edx, __ZZ15mi_process_initE12process_init
	jne	L2056
/APP
 # 2248 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:24, %eax 
 # 0 "" 2
/NO_APP
	movl	$LC48, (%esp)
	movl	%eax, 4(%esp)
	call	__Z19_mi_verbose_messagePKcz
	cmpb	$0, __ZZL33mi_process_setup_auto_thread_donevE15tls_initialized
	je	L2052
	movl	__tls_index, %eax
	movl	%eax, -76(%ebp)
	movl	%fs:44, %eax
	movl	%eax, -80(%ebp)
L1939:
	movl	$7, %eax
/APP
 # 2101 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	cpuid
 # 0 "" 2
/NO_APP
	shrl	$4, %edx
	movl	%eax, -52(%ebp)
	leal	-52(%ebp), %eax
	movl	%ecx, -44(%ebp)
	andl	$1, %edx
	xorl	%ecx, %ecx
	movl	%ebx, -48(%ebp)
	movb	%dl, __mi_cpu_has_fsrm
	movw	%cx, __ZL16mi_os_mem_config+12
	movb	$1, __ZL16mi_os_mem_config+14
	movl	%eax, (%esp)
	call	*__imp__GetSystemInfo@4
	movl	-48(%ebp), %eax
	subl	$4, %esp
	testl	%eax, %eax
	je	L1940
	movl	%eax, __ZL16mi_os_mem_config
L1940:
	movl	-24(%ebp), %eax
	testl	%eax, %eax
	je	L1941
	movl	%eax, __ZL16mi_os_mem_config+8
L1941:
	movl	$LC49, (%esp)
	movl	__imp__LoadLibraryA@4, %ebx
	call	*%ebx
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1942
	movl	__imp__GetProcAddress@8, %edx
	movl	$LC50, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -84(%ebp)
	call	*%edx
	movl	-84(%ebp), %edx
	subl	$8, %esp
	testl	%eax, %eax
	movl	%eax, __ZL14pVirtualAlloc2
	je	L2058
L1943:
	movl	%esi, (%esp)
	call	*__imp__FreeLibrary@4
	subl	$4, %esp
L1942:
	movl	$LC52, (%esp)
	call	*%ebx
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1944
	movl	$LC53, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__GetProcAddress@8
	subl	$8, %esp
	movl	%esi, (%esp)
	call	*__imp__FreeLibrary@4
	subl	$4, %esp
L1944:
	movl	$LC54, (%esp)
	call	*%ebx
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1945
	movl	__imp__GetProcAddress@8, %esi
	movl	$LC55, 4(%esp)
	movl	%eax, (%esp)
	call	*%esi
	subl	$8, %esp
	movl	%eax, __ZL28pGetCurrentProcessorNumberEx
	movl	$LC56, 4(%esp)
	movl	%ebx, (%esp)
	call	*%esi
	subl	$8, %esp
	movl	%eax, __ZL23pGetNumaProcessorNodeEx
	movl	$LC57, 4(%esp)
	movl	%ebx, (%esp)
	call	*%esi
	subl	$8, %esp
	movl	%eax, __ZL27pGetNumaNodeProcessorMaskEx
	movl	$LC58, 4(%esp)
	movl	%ebx, (%esp)
	call	*%esi
	subl	$8, %esp
	movl	%eax, __ZL21pGetNumaProcessorNode
	movl	%ebx, (%esp)
	call	*__imp__FreeLibrary@4
	subl	$4, %esp
L1945:
	movl	__ZL7options+124, %edx
	testl	%edx, %edx
	je	L2059
L1946:
	movl	__ZL7options+120, %eax
	testl	%eax, %eax
	jne	L1947
	movl	__ZL7options+144, %eax
	testl	%eax, %eax
	je	L2060
L1948:
	movl	__ZL7options+140, %eax
	testl	%eax, %eax
	jne	L1947
L1949:
	movl	__mi_heap_main+16, %eax
	testl	%eax, %eax
	je	L2061
L1956:
	movl	$0, 4(%esp)
	movl	$LC61, (%esp)
	call	__Z19_mi_verbose_messagePKcz
	movl	$LC62, 4(%esp)
	movl	$LC63, (%esp)
	call	__Z19_mi_verbose_messagePKcz
	call	_mi_thread_init
	call	_mi_thread_init
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edi
	movl	(%eax,%edi,4), %eax
	movl	__mi_heap_default@secrel32(%eax), %eax
	movl	(%eax), %eax
	leal	88(%eax), %edx
	cmpl	$__mi_stats_main-88, %eax
	je	L1957
	movl	$672, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	_memset
L1957:
	movl	$672, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__mi_stats_main, (%esp)
	call	_memset
	movl	__ZL16mi_process_start, %eax
	orl	__ZL16mi_process_start+4, %eax
	je	L2062
L1958:
	movl	__ZL7options+144, %eax
	testl	%eax, %eax
	je	L2063
	movl	__ZL7options+140, %ebx
	testl	%ebx, %ebx
	jne	L1963
L1962:
	movl	__ZL7options+184, %esi
	testl	%esi, %esi
	je	L2064
	movl	__ZL7options+180, %eax
	testl	%eax, %eax
	jne	L1972
L1938:
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edi
	movl	(%eax,%edi,4), %eax
	cmpl	$__mi_heap_empty, __mi_heap_default@secrel32(%eax)
	je	L2065
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
L2052:
	.cfi_restore_state
	movl	__tls_index, %eax
	movl	%fs:44, %ecx
	movb	$1, __ZZL33mi_process_setup_auto_thread_donevE15tls_initialized
	movl	%eax, -76(%ebp)
	movl	(%ecx,%eax,4), %eax
	movl	%ecx, -80(%ebp)
	movl	$__mi_heap_main, __mi_heap_default@secrel32(%eax)
	jmp	L1939
	.p2align 4,,10
	.p2align 3
L1947:
	cmpb	$0, __ZZL25win_enable_large_os_pagesPjE17large_initialized
	jne	L1949
	movb	$1, __ZZL25win_enable_large_os_pagesPjE17large_initialized
	movl	$0, -72(%ebp)
	call	*__imp__GetCurrentProcess@0
	leal	-72(%ebp), %edx
	movl	$40, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, (%esp)
	call	*__imp__OpenProcessToken@12
	subl	$12, %esp
	testl	%eax, %eax
	jne	L2066
L1950:
	call	*__imp__GetLastError@0
	movl	%eax, %ebx
L1955:
	movl	%ebx, 4(%esp)
	movl	$LC60, (%esp)
	call	__Z19_mi_warning_messagePKcz
	movl	__mi_heap_main+16, %eax
	testl	%eax, %eax
	jne	L1956
L2061:
	call	__ZL17mi_heap_main_initv.part.0
	jmp	L1956
	.p2align 4,,10
	.p2align 3
L2065:
	movl	__mi_heap_main+8, %eax
	testl	%eax, %eax
	je	L1974
/APP
 # 2248 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:24, %edx 
 # 0 "" 2
/NO_APP
	cmpl	%edx, %eax
	je	L1974
	movl	$__ZL8td_cache, %eax
	jmp	L1977
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1975:
	addl	$4, %eax
	cmpl	$__ZL8td_cache+128, %eax
	je	L2067
L1977:
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	je	L1975
	xorl	%ebx, %ebx
	xchgl	(%eax), %ebx
	testl	%ebx, %ebx
	je	L1975
L1979:
	cmpb	$0, __mi_cpu_has_fsrm
	je	L1983
	movl	$2360, %ecx
	xorl	%eax, %eax
	movl	%ebx, %edi
/APP
 # 1857 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	rep stosb
 # 0 "" 2
/NO_APP
L1982:
	leal	1600(%ebx), %edx
	movl	%edx, -84(%ebp)
	cmpb	$0, __mi_cpu_has_fsrm
	je	L1986
	movl	$760, %ecx
	xorl	%eax, %eax
	movl	%edx, %edi
/APP
 # 1857 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	rep stosb
 # 0 "" 2
/NO_APP
L1987:
	leal	1688(%ebx), %eax
	leal	1680(%ebx), %edx
	movl	%ebx, 1612(%ebx)
	movl	$0, 1616(%ebx)
	movl	$__ZL18mi_subproc_default, 1668(%ebx)
	movl	%eax, 1672(%ebx)
	movl	%edx, 1676(%ebx)
	movl	%eax, 1684(%ebx)
	cmpb	$0, __mi_cpu_has_fsrm
	je	L1988
	movl	$__mi_heap_empty, %esi
	movl	$1600, %ecx
	movl	%ebx, %edi
/APP
 # 2169 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	rep movsb
 # 0 "" 2
/NO_APP
L1989:
	movl	-84(%ebp), %eax
	movl	%eax, (%ebx)
/APP
 # 2248 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:24, %eax 
 # 0 "" 2
/NO_APP
	movl	%eax, 8(%ebx)
	movl	1612(%ebx), %edx
	xorl	%eax, %eax
	movw	%ax, 180(%ebx)
	leal	28(%ebx), %eax
	movl	$0, 12(%ebx)
	movl	%eax, -84(%ebp)
	cmpl	%edx, %ebx
	je	L2068
	movl	-84(%ebp), %ecx
	xorl	%eax, %eax
	movl	$0, 120(%ecx)
	movl	$0, 124(%ecx)
	movl	$0, 128(%ecx)
	movl	$0, 132(%ecx)
L1992:
	movl	$0, (%ecx,%eax)
	movl	$0, 4(%ecx,%eax)
	movl	$0, 8(%ecx,%eax)
	movl	$0, 12(%ecx,%eax)
	addl	$16, %eax
	cmpl	$128, %eax
	jb	L1992
	leal	28(%edx), %eax
	cmpb	$0, __mi_cpu_has_fsrm
	je	L1994
	movl	%eax, %esi
	movl	$64, %ecx
	movl	-84(%ebp), %edi
/APP
 # 2169 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	rep movsb
 # 0 "" 2
/NO_APP
L1995:
	movl	-84(%ebp), %eax
	movl	$0, 76(%ebx)
	movl	$0, 80(%ebx)
	movl	%eax, 84(%ebx)
	movl	$0, 88(%ebx)
	call	__ZL12chacha_blockP15mi_random_cxt_s
L1991:
	movl	156(%ebx), %eax
	testl	%eax, %eax
	jle	L2069
	movl	$16, %ecx
	movl	%ecx, %edx
	subl	%eax, %edx
	addl	$16, %edx
	movl	28(%ebx,%edx,4), %esi
	movl	$0, 28(%ebx,%edx,4)
	leal	-1(%eax), %edx
	movl	%edx, 156(%ebx)
	orl	$1, %esi
	movl	%esi, 16(%ebx)
	testl	%edx, %edx
	je	L2070
	subl	%edx, %ecx
	subl	$2, %eax
	leal	16(%ecx), %esi
	movl	28(%ebx,%esi,4), %ecx
	movl	$0, 28(%ebx,%esi,4)
	movl	%eax, %esi
	movl	%eax, 156(%ebx)
	movl	%ecx, 20(%ebx)
	jne	L1997
	movl	-84(%ebp), %eax
	call	__ZL12chacha_blockP15mi_random_cxt_s
	movl	$15, %edx
L1999:
	leal	16(%esi), %eax
	movl	-76(%ebp), %edi
	movl	28(%ebx,%eax,4), %ecx
	movl	$0, 28(%ebx,%eax,4)
	movl	(%ebx), %eax
	movl	%edx, 156(%ebx)
	movl	%ecx, 24(%ebx)
	movl	16(%eax), %edx
	movl	%edx, 176(%ebx)
	movl	%ebx, 16(%eax)
	movl	-80(%ebp), %eax
	movl	(%eax,%edi,4), %eax
	movl	%ebx, __mi_heap_default@secrel32(%eax)
	jmp	L1981
	.p2align 4,,10
	.p2align 3
L1974:
	movl	__mi_heap_main+16, %edx
	testl	%edx, %edx
	je	L2071
L1985:
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edi
	movl	(%eax,%edi,4), %eax
	movl	$__mi_heap_main, __mi_heap_default@secrel32(%eax)
L1981:
	movl	$1, %edx
	xorl	%ecx, %ecx
	movl	$__mi_stats_main+288, %eax
	call	__ZL14mi_stat_updateP15mi_stat_count_sx.part.0
	lock addl	$1, __ZL12thread_count
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
L2056:
	.cfi_restore_state
	movl	__tls_index, %eax
	movl	%eax, -76(%ebp)
	movl	%fs:44, %eax
	movl	%eax, -80(%ebp)
	jmp	L1938
	.p2align 4,,10
	.p2align 3
L2057:
	call	__ZL17mi_heap_main_initv.part.0
	jmp	L1937
	.p2align 4,,10
	.p2align 3
L2064:
	movl	$__ZL7options+180, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	movl	__ZL7options+180, %eax
	testl	%eax, %eax
	je	L1938
	movl	__ZL7options+184, %ebx
	testl	%ebx, %ebx
	jne	L1972
	movl	$__ZL7options+180, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	movl	__ZL7options+180, %eax
	.p2align 4
	.p2align 3
L1972:
	testl	%eax, %eax
	jle	L1938
	movl	$0, (%esp)
	sall	$10, %eax
	movl	$1, %ecx
	movl	$1, %edx
	call	_mi_reserve_os_memory_ex.constprop.0
	jmp	L1938
	.p2align 4,,10
	.p2align 3
L2063:
	movl	$__ZL7options+140, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	movl	__ZL7options+140, %ebx
	testl	%ebx, %ebx
	je	L1962
	movl	__ZL7options+144, %edi
	testl	%edi, %edi
	jne	L1963
	movl	$__ZL7options+140, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	movl	__ZL7options+140, %ebx
	.p2align 4
	.p2align 3
L1963:
	movl	__ZL7options+164, %edx
	testl	%ebx, %ebx
	js	L2072
	movl	$131072, %eax
	cmpl	%eax, %ebx
	cmovle	%ebx, %eax
	movl	%eax, %esi
	testl	%edx, %edx
	je	L2073
L1965:
	movl	__ZL7options+160, %edx
	cmpl	$-1, %edx
	je	L1966
	testl	%ebx, %ebx
	je	L1962
	movl	%esi, %eax
	call	_mi_reserve_huge_os_pages_at_ex.part.0.constprop.0.isra.0
	jmp	L1962
	.p2align 4,,10
	.p2align 3
L2062:
	fildq	__ZL13mi_clock_diff
	fldz
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L1959
	je	L2074
L1959:
	call	__Z18_mi_prim_clock_nowv
	movl	%eax, __ZL16mi_process_start
	movl	%edx, __ZL16mi_process_start+4
	jmp	L1958
	.p2align 4,,10
	.p2align 3
L2072:
	testl	%edx, %edx
	jne	L1962
	movl	$__ZL7options+160, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	jmp	L1962
	.p2align 4,,10
	.p2align 3
L2066:
	leal	-64(%ebp), %eax
	movl	$LC59, 4(%esp)
	leal	-68(%ebp), %ebx
	movl	%eax, 8(%esp)
	movl	$0, (%esp)
	call	*__imp__LookupPrivilegeValueA@12
	subl	$12, %esp
	testl	%eax, %eax
	movl	-72(%ebp), %eax
	jne	L1951
L2055:
	movl	%eax, (%esp)
	call	*__imp__CloseHandle@4
	subl	$4, %esp
	jmp	L1950
	.p2align 4,,10
	.p2align 3
L2074:
	call	__Z18_mi_prim_clock_nowv
	movl	%eax, %ebx
	movl	%edx, %esi
	call	__Z18_mi_prim_clock_nowv
	subl	%ebx, %eax
	sbbl	%esi, %edx
	movl	%eax, __ZL13mi_clock_diff
	movl	%edx, __ZL13mi_clock_diff+4
	jmp	L1959
	.p2align 4,,10
	.p2align 3
L2071:
	call	__ZL17mi_heap_main_initv.part.0
	jmp	L1985
	.p2align 4,,10
	.p2align 3
L2067:
	movl	$__mi_stats_main, %ecx
	leal	-52(%ebp), %edx
	movl	$2384, %eax
	call	__Z12_mi_os_allocjP10mi_memid_sP10mi_stats_s
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L2075
L1980:
	movl	-52(%ebp), %eax
	movl	%eax, 2360(%ebx)
	movl	-48(%ebp), %eax
	movl	%eax, 2364(%ebx)
	movl	-44(%ebp), %eax
	movl	%eax, 2368(%ebx)
	movl	-40(%ebp), %eax
	movl	%eax, 2372(%ebx)
	movl	-36(%ebp), %eax
	movl	%eax, 2376(%ebx)
	cmpb	$0, -38(%ebp)
	jne	L1982
	jmp	L1979
	.p2align 4,,10
	.p2align 3
L2059:
	movl	$__ZL7options+120, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	jmp	L1946
	.p2align 4,,10
	.p2align 3
L2058:
	movl	$LC51, 4(%esp)
	movl	%esi, (%esp)
	call	*%edx
	subl	$8, %esp
	movl	%eax, __ZL14pVirtualAlloc2
	jmp	L1943
L2069:
	movl	-84(%ebp), %eax
	movl	$14, %esi
	call	__ZL12chacha_blockP15mi_random_cxt_s
	movl	92(%ebx), %eax
	movl	$0, 92(%ebx)
	movl	$15, %edx
	orl	$1, %eax
	movl	%eax, 16(%ebx)
	movl	96(%ebx), %eax
	movl	$0, 96(%ebx)
	movl	%eax, 20(%ebx)
L1997:
	movl	$16, %eax
	subl	$2, %edx
	subl	%esi, %eax
	movl	%eax, %esi
	jmp	L1999
	.p2align 4,,10
	.p2align 3
L1966:
	testl	%ebx, %ebx
	je	L1962
	movl	__mi_numa_node_count, %ecx
	testl	%ecx, %ecx
	je	L2076
	movl	%esi, %eax
	xorl	%edx, %edx
	divl	%ecx
L1968:
	testl	%edx, %edx
	jne	L1969
	testl	%eax, %eax
	je	L1962
	.p2align 4
	.p2align 3
L1970:
	xorl	%edx, %edx
	call	_mi_reserve_huge_os_pages_at_ex.part.0.constprop.0.isra.0
	jmp	L1962
L1969:
	addl	$1, %eax
	jmp	L1970
	.p2align 4,,10
	.p2align 3
L1988:
	movl	$1600, 8(%esp)
	movl	$__mi_heap_empty, 4(%esp)
	movl	%ebx, (%esp)
	call	_memcpy
	jmp	L1989
	.p2align 4,,10
	.p2align 3
L1986:
	movl	$760, 8(%esp)
	movl	$0, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	jmp	L1987
	.p2align 4,,10
	.p2align 3
L2060:
	movl	$__ZL7options+140, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	jmp	L1948
	.p2align 4,,10
	.p2align 3
L2068:
	xorl	%edx, %edx
	call	__ZL17mi_random_init_exP15mi_random_cxt_sb
	jmp	L1991
L1951:
	movl	$1, -68(%ebp)
	movl	$2, -56(%ebp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__AdjustTokenPrivileges@24
	subl	$24, %esp
	testl	%eax, %eax
	jne	L2077
	movl	-72(%ebp), %eax
	jmp	L2055
L2070:
	movl	-84(%ebp), %eax
	movl	$1, %esi
	call	__ZL12chacha_blockP15mi_random_cxt_s
	movl	92(%ebx), %eax
	movl	$14, %edx
	movl	$0, 92(%ebx)
	movl	%eax, 20(%ebx)
	jmp	L1999
L1994:
	movl	28(%edx), %edx
	movl	-84(%ebp), %edi
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
	movl	%eax, 60(%edi)
	jmp	L1995
L1983:
	movl	$2360, 8(%esp)
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	call	_memset
	jmp	L1982
L2073:
	movl	$__ZL7options+160, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	jmp	L1965
L2077:
	call	*__imp__GetLastError@0
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L2078
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	*__imp__CloseHandle@4
	subl	$4, %esp
	jmp	L1955
L2076:
	call	__Z26_mi_os_numa_node_count_getv
	xorl	%edx, %edx
	movl	%eax, %ecx
	movl	%esi, %eax
	divl	%ecx
	jmp	L1968
L2075:
	movl	$__mi_stats_main, %ecx
	leal	-52(%ebp), %edx
	movl	$2384, %eax
	call	__Z12_mi_os_allocjP10mi_memid_sP10mi_stats_s
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L1980
	movl	$2384, 8(%esp)
	movl	$LC65, 4(%esp)
	movl	$12, (%esp)
	call	__Z17_mi_error_messageiPKcz
	jmp	L1981
L2078:
	call	*__imp__GetLargePageMinimum@0
	movl	%eax, __ZL16mi_os_mem_config+4
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	*__imp__CloseHandle@4
	subl	$4, %esp
	jmp	L1949
	.cfi_endproc
LFE271:
	.section	.gcc_except_table,"w"
LLSDA271:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE271-LLSDACSB271
LLSDACSB271:
LLSDACSE271:
	.text
	.p2align 4
	.def	__ZL21mi_segment_page_clearP12mi_segment_sP9mi_page_sP17mi_segments_tld_s;	.scl	3;	.type	32;	.endef
__ZL21mi_segment_page_clearP12mi_segment_sP9mi_page_sP17mi_segments_tld_s:
LFB315:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	%esi, 20(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	%ebp, 28(%esp)
	movzwl	2(%edx), %edx
	.cfi_offset 5, -8
	movl	%ecx, %ebp
	imull	20(%ebx), %edx
	movl	52(%ecx), %eax
	testl	%edx, %edx
	je	L2080
	negl	%edx
	sbbl	%ecx, %ecx
	addl	$192, %eax
	call	__ZL14mi_stat_updateP15mi_stat_count_sx.part.0
	movl	52(%ebp), %eax
L2080:
	movl	$-1, %edx
	addl	$32, %eax
	movl	%edx, %ecx
	call	__ZL14mi_stat_updateP15mi_stat_count_sx.part.0
	movl	20(%ebx), %eax
	andb	$-6, 1(%ebx)
	movl	%eax, (%esp)
	movzwl	18(%ebx), %eax
	movw	%ax, 14(%esp)
	movl	24(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	2(%ebx), %eax
	movl	%eax, 8(%esp)
	cmpb	$0, __mi_cpu_has_fsrm
	je	L2081
	movl	%edi, 24(%esp)
	.cfi_offset 7, -12
	movl	$46, %ecx
	xorl	%eax, %eax
	leal	2(%ebx), %edi
/APP
 # 1857 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	rep stosb
 # 0 "" 2
/NO_APP
	movl	24(%esp), %edi
	.cfi_restore 7
L2082:
	movl	8(%esp), %eax
	movl	%eax, 2(%ebx)
	movl	(%esp), %eax
	movl	%eax, 20(%ebx)
	movzwl	14(%esp), %eax
	movw	%ax, 18(%ebx)
	movl	4(%esp), %eax
	movl	%eax, 24(%ebx)
	subl	$1, 52(%esi)
	cmpb	$0, 21(%esi)
	jne	L2098
L2085:
	movl	$0, 2(%ebx)
	movl	16(%esp), %ebx
	movl	20(%esp), %esi
	movl	28(%esp), %ebp
	addl	$32, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2098:
	.cfi_restore_state
	movl	__ZL7options+304, %eax
	testl	%eax, %eax
	je	L2099
	movl	__ZL7options+300, %eax
	testl	%eax, %eax
	je	L2091
L2088:
	movl	__ZL7options+300, %ecx
	testl	%ecx, %ecx
	jle	L2085
	call	__Z18_mi_prim_clock_nowv
	movl	__ZL7options+304, %edx
	movl	%eax, %esi
	testl	%edx, %edx
	je	L2100
L2089:
	addl	__ZL7options+300, %esi
	movl	%esi, 8(%ebx)
	movl	16(%ebp), %eax
	movl	$0, 40(%ebx)
	movl	%eax, 36(%ebx)
	movl	16(%ebp), %eax
	testl	%eax, %eax
	je	L2101
	movl	%ebx, 40(%eax)
	movl	%ebx, 16(%ebp)
	jmp	L2085
	.p2align 4,,10
	.p2align 3
L2081:
	movl	$0, 32(%ebx)
	xorl	%eax, %eax
	movl	$0, 36(%ebx)
	movl	$0, 40(%ebx)
	movl	$0, 44(%ebx)
L2083:
	movl	$0, 6(%ebx,%eax)
	movl	$0, 10(%ebx,%eax)
	movl	$0, 14(%ebx,%eax)
	movl	$0, 18(%ebx,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L2083
	jmp	L2082
	.p2align 4,,10
	.p2align 3
L2099:
	movl	$__ZL7options+300, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	movl	__ZL7options+300, %eax
	testl	%eax, %eax
	jne	L2087
	cmpb	$0, 21(%esi)
	je	L2085
	.p2align 4
	.p2align 3
L2091:
	movl	%ebp, %ecx
	movl	%ebx, %edx
	movl	%esi, %eax
	call	__ZL13mi_page_purgeP12mi_segment_sP9mi_page_sP17mi_segments_tld_s.part.0
	jmp	L2085
	.p2align 4,,10
	.p2align 3
L2101:
	movl	%ebx, 20(%ebp)
	movl	%ebx, 16(%ebp)
	jmp	L2085
L2100:
	movl	$__ZL7options+300, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	jmp	L2089
L2087:
	cmpl	$0, __ZL7options+304
	jne	L2088
	movl	$__ZL7options+300, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	jmp	L2088
	.cfi_endproc
LFE315:
	.section	.text.unlikely,"x"
LCOLDB69:
	.text
LHOTB69:
	.p2align 4
	.def	__Z13_mi_page_freeP9mi_page_sP15mi_page_queue_sb.isra.0;	.scl	3;	.type	32;	.endef
__Z13_mi_page_freeP9mi_page_sP15mi_page_queue_sb.isra.0:
LFB319:
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
	movl	%edx, %eax
	andb	$-3, 6(%ebx)
	movl	32(%ebx), %edx
	leal	-1(%ebx), %esi
	andl	$-2097152, %esi
	movl	(%edx), %ebp
	movl	%ebx, %edx
	call	__ZL20mi_page_queue_removeP15mi_page_queue_sP9mi_page_s
	leal	20(%ebp), %edi
	movl	$0, 32(%ebx)
	movl	__ZL7options+304, %ecx
	testl	%ecx, %ecx
	je	L2116
L2103:
	movl	__ZL7options+300, %edx
	testl	%edx, %edx
	js	L2104
	movl	%edi, %edx
	xorl	%eax, %eax
	call	__ZL18mi_pages_try_purgebP17mi_segments_tld_s.part.0
L2104:
	movl	%esi, %eax
	movl	%edi, %ecx
	movl	%ebx, %edx
	call	__ZL21mi_segment_page_clearP12mi_segment_sP9mi_page_sP17mi_segments_tld_s
	movl	52(%esi), %eax
	testl	%eax, %eax
	je	L2117
	cmpl	44(%esi), %eax
	je	L2118
	addl	$1, %eax
	cmpl	56(%esi), %eax
	je	L2119
L2102:
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
L2117:
	.cfi_restore_state
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	%edi, %edx
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
	jmp	__ZL15mi_segment_freeP12mi_segment_sbP17mi_segments_tld_s.isra.0
	.p2align 4,,10
	.p2align 3
L2119:
	.cfi_restore_state
	movl	84(%esi), %eax
	cmpl	$1, %eax
	jg	L2102
	testl	%eax, %eax
	je	L2108
	cmpl	$1, %eax
	jne	L2109
	leal	28(%ebp), %edi
L2108:
	movl	$0, 32(%esi)
	movl	4(%edi), %eax
	movl	%eax, 36(%esi)
	testl	%eax, %eax
	je	L2110
	movl	%esi, 32(%eax)
L2111:
	movl	%esi, 4(%edi)
	jmp	L2102
	.p2align 4,,10
	.p2align 3
L2118:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	%edi, %edx
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
	jmp	__ZL18mi_segment_abandonP12mi_segment_sP17mi_segments_tld_s
	.p2align 4,,10
	.p2align 3
L2116:
	.cfi_restore_state
	movl	$__ZL7options+300, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	jmp	L2103
L2110:
	movl	%esi, (%edi)
	jmp	L2111
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__Z13_mi_page_freeP9mi_page_sP15mi_page_queue_sb.isra.0.cold;	.scl	3;	.type	32;	.endef
__Z13_mi_page_freeP9mi_page_sP15mi_page_queue_sb.isra.0.cold:
LFSB319:
L2109:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	xorl	%eax, %eax
	movl	%eax, 32(%esi)
	movl	4, %eax
	ud2
	.cfi_endproc
LFE319:
	.text
	.section	.text.unlikely,"x"
LCOLDE69:
	.text
LHOTE69:
	.p2align 4
	.def	__Z15_mi_page_retireP9mi_page_s;	.scl	3;	.type	32;	.endef
__Z15_mi_page_retireP9mi_page_s:
LFB322:
	.cfi_startproc
	.cfi_personality 0x9b,LDFCM0
	.cfi_lsda 0x1b,LLSDA322
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, (%esp)
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	movzbl	6(%eax), %edx
	movl	%edx, %ecx
	andl	$-3, %ecx
	andl	$1, %edx
	movb	%cl, 6(%eax)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	32(%eax), %esi
	movl	20(%eax), %ebx
	jne	L2131
	testb	$8, 1(%eax)
	je	L2122
L2124:
	movl	$1576, %edx
	movl	$73, %edi
	movl	$146, %ecx
	jmp	L2121
	.p2align 4,,10
	.p2align 3
L2131:
	movl	$1588, %edx
	movl	$74, %edi
	movl	$148, %ecx
L2121:
	addl	%edi, %ecx
	addl	%esi, %edx
	leal	(%esi,%ecx,4), %ecx
	cmpl	$1048576, 708(%ecx)
	ja	L2127
	cmpl	%eax, 704(%ecx)
	je	L2135
L2127:
	call	__Z13_mi_page_freeP9mi_page_sP15mi_page_queue_sb.isra.0
L2120:
	movl	(%esp), %ebx
	movl	4(%esp), %esi
	movl	8(%esp), %edi
	addl	$16, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2122:
	.cfi_restore_state
	leal	3(%ebx), %edx
	movl	%edx, %edi
	shrl	$2, %edi
	cmpl	$7, %edx
	jbe	L2132
	cmpl	$4, %edi
	ja	L2123
	addl	$1, %edi
	andl	$254, %edi
	leal	(%edi,%edi), %ecx
	leal	(%ecx,%edi), %edx
	leal	700(,%edx,4), %edx
	jmp	L2121
	.p2align 4,,10
	.p2align 3
L2135:
	cmpl	%eax, 700(%ecx)
	jne	L2127
	cmpl	$8193, %ebx
	sbbl	%ecx, %ecx
	andl	$12, %ecx
	leal	8(%ecx,%ecx), %ebx
	movzbl	7(%eax), %ecx
	andl	$1, %ecx
	orl	%ebx, %ecx
	movb	%cl, 7(%eax)
	movl	32(%eax), %ecx
	leal	700(%ecx), %eax
	subl	%eax, %edx
	sarl	$2, %edx
	imull	$-1431655765, %edx, %eax
	cmpl	168(%ecx), %eax
	jnb	L2129
	movl	%eax, 168(%ecx)
L2129:
	cmpl	%eax, 172(%ecx)
	jnb	L2120
	movl	%eax, 172(%ecx)
	jmp	L2120
	.p2align 4,,10
	.p2align 3
L2132:
	movl	$712, %edx
	movl	$1, %edi
	movl	$2, %ecx
	jmp	L2121
	.p2align 4,,10
	.p2align 3
L2123:
	cmpl	$262144, %edi
	ja	L2124
	leal	3(%edi), %edx
	leal	-1(%edi), %ecx
	movl	%ebp, 12(%esp)
	.cfi_offset 5, -8
	movl	$29, %ebp
	andl	$-4, %edx
	subl	$1, %edx
	cmpl	$17, %edi
	movl	$31, %edi
	cmovnb	%ecx, %edx
	bsrl	%edx, %ecx
	xorl	$31, %ecx
	subl	%ecx, %ebp
	subl	%ecx, %edi
	movl	%ebp, %ecx
	movl	12(%esp), %ebp
	.cfi_restore 5
	shrl	%cl, %edx
	andl	$3, %edx
	leal	-3(%edx,%edi,4), %edx
	movzbl	%dl, %edi
	leal	(%edi,%edi), %ecx
	leal	(%ecx,%edi), %edx
	leal	700(,%edx,4), %edx
	jmp	L2121
	.cfi_endproc
LFE322:
	.section	.gcc_except_table,"w"
LLSDA322:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE322-LLSDACSB322
LLSDACSB322:
LLSDACSE322:
	.text
	.p2align 4
	.def	__Z29_mi_heap_delayed_free_partialP9mi_heap_s;	.scl	3;	.type	32;	.endef
__Z29_mi_heap_delayed_free_partialP9mi_heap_s:
LFB324:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	leal	4(%eax), %edx
	movl	4(%eax), %eax
	xorl	%ecx, %ecx
L2139:
	testl	%eax, %eax
	je	L2140
	lock cmpxchgl	%ecx, (%edx)
	jne	L2139
	testl	%eax, %eax
	je	L2140
	movl	%ebp, 28(%esp)
	.cfi_offset 5, -8
	movl	%eax, %ebp
	movl	%ebx, 16(%esp)
	movl	%esi, 20(%esp)
	movl	%edi, 24(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movb	$1, 15(%esp)
	movl	%edx, 8(%esp)
	jmp	L2147
	.p2align 4,,10
	.p2align 3
L2160:
	movl	(%esp), %eax
	addl	%esi, %ebx
	xorl	%edx, %edx
	call	__Z21_mi_page_free_collectP9mi_page_sb
	movl	100(%ebx), %eax
	movl	%eax, (%edi)
	subw	$1, 104(%ebx)
	movl	%edi, 100(%ebx)
	je	L2157
	testb	$1, 94(%ebx)
	jne	L2158
L2145:
	movl	4(%esp), %eax
	testl	%eax, %eax
	je	L2159
L2147:
	movl	%ebp, %edi
	movl	0(%ebp), %eax
	xorl	%edx, %edx
	leal	-1(%edi), %ebx
	andl	$-2097152, %ebx
	movl	%eax, 4(%esp)
	movl	%eax, %ebp
	movl	%edi, %eax
	movl	80(%ebx), %ecx
	subl	%ebx, %eax
	shrl	%cl, %eax
	xorl	%ecx, %ecx
	leal	(%eax,%eax,2), %esi
	sall	$4, %esi
	leal	88(%ebx,%esi), %eax
	movl	%eax, (%esp)
	call	__Z29_mi_page_try_use_delayed_freeP9mi_page_s12mi_delayed_eb
	testb	%al, %al
	jne	L2160
	movl	8(%esp), %eax
	movl	(%eax), %eax
L2146:
	movl	8(%esp), %edx
	movl	%eax, (%edi)
	lock cmpxchgl	%edi, (%edx)
	jne	L2146
	movl	4(%esp), %eax
	movb	$0, 15(%esp)
	testl	%eax, %eax
	jne	L2147
L2159:
	movzbl	15(%esp), %eax
	movl	16(%esp), %ebx
	.cfi_restore 3
	movl	20(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %edi
	.cfi_restore 7
	movl	28(%esp), %ebp
	.cfi_restore 5
	addl	$32, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2140:
	.cfi_def_cfa_offset 36
	movb	$1, 15(%esp)
	movzbl	15(%esp), %eax
	addl	$32, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2157:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	(%esp), %eax
	call	__Z15_mi_page_retireP9mi_page_s
	jmp	L2145
	.p2align 4,,10
	.p2align 3
L2158:
	movl	(%esp), %eax
	call	__Z15_mi_page_unfullP9mi_page_s
	jmp	L2145
	.cfi_endproc
LFE324:
	.p2align 4
	.def	__ZL21mi_free_generic_localP9mi_page_sP12mi_segment_sPv.isra.0;	.scl	3;	.type	32;	.endef
__ZL21mi_free_generic_localP9mi_page_sP12mi_segment_sPv.isra.0:
LFB330:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	testb	$2, 6(%eax)
	je	L2162
	movzbl	18(%ebx), %ecx
	movl	%edx, %eax
	subl	24(%ebx), %eax
	testb	%cl, %cl
	je	L2163
	movl	$-1, %edx
	sall	%cl, %edx
	notl	%edx
	andl	%eax, %edx
	subl	%edx, %esi
L2162:
	movl	12(%ebx), %eax
	movl	%eax, (%esi)
	subw	$1, 16(%ebx)
	movl	%esi, 12(%ebx)
	je	L2171
	testb	$1, 6(%ebx)
	jne	L2172
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
L2163:
	.cfi_restore_state
	xorl	%edx, %edx
	divl	20(%ebx)
	subl	%edx, %esi
	jmp	L2162
	.p2align 4,,10
	.p2align 3
L2171:
	movl	%ebx, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z15_mi_page_retireP9mi_page_s
	.p2align 4,,10
	.p2align 3
L2172:
	.cfi_restore_state
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z15_mi_page_unfullP9mi_page_s
	.cfi_endproc
LFE330:
	.p2align 4
	.def	__Z24_mi_heap_collect_retiredP9mi_heap_sb;	.scl	3;	.type	32;	.endef
__Z24_mi_heap_collect_retiredP9mi_heap_sb:
LFB331:
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
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	168(%eax), %ebx
	cmpl	%ebx, 172(%eax)
	jb	L2174
	leal	(%ebx,%ebx,2), %eax
	testb	%dl, %dl
	jne	L2175
	leal	700(%esi,%eax,4), %edx
	xorl	%edi, %edi
	movl	$74, %ebp
	jmp	L2181
	.p2align 4,,10
	.p2align 3
L2195:
	andb	$1, 7(%eax)
L2178:
	addl	$1, %ebx
	addl	$12, %edx
	cmpl	%ebx, 172(%esi)
	jb	L2182
L2181:
	movl	(%edx), %eax
	testl	%eax, %eax
	je	L2178
	cmpb	$1, 7(%eax)
	jbe	L2178
	cmpw	$0, 16(%eax)
	jne	L2195
	subb	$2, 7(%eax)
	cmpb	$1, 7(%eax)
	jbe	L2180
	cmpl	%ebx, %ebp
	cmova	%ebx, %ebp
	cmpl	%ebx, %edi
	cmovb	%ebx, %edi
	addl	$1, %ebx
	addl	$12, %edx
	cmpl	%ebx, 172(%esi)
	jnb	L2181
L2182:
	movl	%ebp, 168(%esi)
	movl	%edi, 172(%esi)
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
L2180:
	.cfi_restore_state
	movl	(%edx), %eax
	movl	%edx, (%esp)
	call	__Z13_mi_page_freeP9mi_page_sP15mi_page_queue_sb.isra.0
	movl	(%esp), %edx
	jmp	L2178
	.p2align 4,,10
	.p2align 3
L2174:
	xorl	%edi, %edi
	movl	$74, %ebp
	jmp	L2182
	.p2align 4,,10
	.p2align 3
L2175:
	leal	700(%esi,%eax,4), %edi
	jmp	L2185
	.p2align 4,,10
	.p2align 3
L2196:
	subb	$2, 7(%eax)
	movl	(%edi), %eax
	movl	%edi, %edx
	call	__Z13_mi_page_freeP9mi_page_sP15mi_page_queue_sb.isra.0
L2183:
	addl	$1, %ebx
	addl	$12, %edi
	cmpl	%ebx, 172(%esi)
	jb	L2174
L2185:
	movl	(%edi), %eax
	testl	%eax, %eax
	je	L2183
	cmpb	$1, 7(%eax)
	jbe	L2183
	cmpw	$0, 16(%eax)
	je	L2196
	andb	$1, 7(%eax)
	jmp	L2183
	.cfi_endproc
LFE331:
	.section .rdata,"dr"
	.align 4
LC70:
	.ascii "page with tag %u cannot be reclaimed by a heap with the same tag (using heap tag %u instead)\12\0"
	.section	.text.unlikely,"x"
LCOLDB71:
	.text
LHOTB71:
	.p2align 4
	.def	__ZL18mi_segment_reclaimP12mi_segment_sP9mi_heap_sjPbP17mi_segments_tld_s;	.scl	3;	.type	32;	.endef
__ZL18mi_segment_reclaimP12mi_segment_sP9mi_heap_sjPbP17mi_segments_tld_s:
LFB332:
	.cfi_startproc
	.cfi_personality 0x9b,LDFCM0
	.cfi_lsda 0x1b,LLSDA332
	subl	$56, %esp
	.cfi_def_cfa_offset 60
	movl	%ebp, 52(%esp)
	.cfi_offset 5, -8
	movl	%eax, %ebp
	movl	60(%esp), %eax
	movl	%edx, 20(%esp)
	movl	%ecx, 36(%esp)
	testl	%eax, %eax
	je	L2198
	movl	60(%esp), %eax
	movb	$0, (%eax)
L2198:
/APP
 # 2248 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:24, %eax 
 # 0 "" 2
/NO_APP
	movl	%eax, 76(%ebp)
	movl	$0, 48(%ebp)
	movb	$1, 40(%ebp)
	movl	64(%esp), %eax
	movl	64(%esp), %edx
	addl	$1, 44(%eax)
	movl	24(%ebp), %eax
	call	__ZL22mi_segments_track_sizelP17mi_segments_tld_s
	movl	64(%esp), %eax
	movl	$-1, %edx
	movl	%edx, %ecx
	movl	52(%eax), %eax
	movl	%eax, 16(%esp)
	addl	$224, %eax
	call	__ZL14mi_stat_updateP15mi_stat_count_sx.part.0
	movl	56(%ebp), %eax
	testl	%eax, %eax
	je	L2199
	movl	%esi, 44(%esp)
	.cfi_offset 6, -16
	leal	88(%ebp), %esi
	movl	%edi, 48(%esp)
	.cfi_offset 7, -12
	xorl	%edi, %edi
	movl	%ebx, 40(%esp)
	.cfi_offset 3, -20
	jmp	L2216
	.p2align 5
	.p2align 4,,10
	.p2align 3
L2200:
	movl	56(%ebp), %eax
	addl	$1, %edi
	addl	$48, %esi
	cmpl	%eax, %edi
	jnb	L2258
L2216:
	leal	(%edi,%edi), %eax
	movl	%eax, 16(%esp)
	addl	%edi, %eax
	sall	$4, %eax
	testb	$1, 89(%ebp,%eax)
	je	L2200
	movl	64(%esp), %eax
	subl	$1, 44(%ebp)
	movl	$-1, %edx
	movl	%edx, %ecx
	movl	52(%eax), %eax
	movl	%eax, 24(%esp)
	addl	$256, %eax
	call	__ZL14mi_stat_updateP15mi_stat_count_sx.part.0
	movl	20(%esp), %ebx
	movzbl	19(%esi), %eax
	leal	32(%esi), %ecx
	movzbl	181(%ebx), %edx
	cmpb	%dl, %al
	je	L2201
	movl	(%ebx), %ebx
	movl	16(%ebx), %ebx
	testl	%ebx, %ebx
	jne	L2204
	jmp	L2202
	.p2align 5
	.p2align 4,,10
	.p2align 3
L2259:
	movl	176(%ebx), %ebx
	testl	%ebx, %ebx
	je	L2202
L2204:
	cmpb	181(%ebx), %al
	jne	L2259
	movl	%ebx, (%ecx)
L2227:
	movzbl	181(%ebx), %eax
	movb	%al, 19(%esi)
	jmp	L2206
	.p2align 4,,10
	.p2align 3
L2207:
	call	_sched_yield
L2206:
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	%esi, %eax
	call	__Z29_mi_page_try_use_delayed_freeP9mi_page_s12mi_delayed_eb
	testb	%al, %al
	je	L2207
	xorl	%edx, %edx
	movl	%esi, %eax
LEHB0:
	call	__Z21_mi_page_free_collectP9mi_page_sb
	cmpw	$0, 16(%esi)
	jne	L2208
	movl	64(%esp), %ecx
	movl	%esi, %edx
	movl	%ebp, %eax
	addl	$1, %edi
	addl	$48, %esi
	call	__ZL21mi_segment_page_clearP12mi_segment_sP9mi_page_sP17mi_segments_tld_s
	movl	56(%ebp), %eax
	cmpl	%eax, %edi
	jb	L2216
	.p2align 4
	.p2align 3
L2258:
	movl	52(%ebp), %edx
	testl	%edx, %edx
	je	L2260
	movl	84(%ebp), %ecx
	cmpl	$1, %ecx
	jg	L2256
	cmpl	%eax, %edx
	jb	L2261
L2256:
	movl	40(%esp), %ebx
	.cfi_restore 3
	movl	44(%esp), %esi
	.cfi_restore 6
	movl	48(%esp), %edi
	.cfi_restore 7
L2219:
	movl	%ebp, %eax
	movl	52(%esp), %ebp
	addl	$56, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2208:
	.cfi_def_cfa_offset 60
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	20(%esi), %eax
	addl	$3, %eax
	movl	%eax, %edx
	shrl	$2, %edx
	cmpl	$7, %eax
	jbe	L2228
	cmpl	$4, %edx
	jbe	L2262
	cmpl	$262144, %edx
	ja	L2229
	leal	3(%edx), %eax
	leal	-1(%edx), %ecx
	andl	$-4, %eax
	subl	$1, %eax
	cmpl	$17, %edx
	cmovnb	%ecx, %eax
	movl	$31, %ecx
	bsrl	%eax, %edx
	xorl	$31, %edx
	subl	%edx, %ecx
	movl	%ecx, 24(%esp)
	movl	$29, %ecx
	subl	%edx, %ecx
	shrl	%cl, %eax
	movzbl	24(%esp), %ecx
	andl	$3, %eax
	leal	-3(%eax,%ecx,4), %eax
	movzbl	%al, %eax
L2257:
	leal	(%eax,%eax), %ecx
	movl	%eax, 24(%esp)
	addl	%ecx, %eax
	movl	%ecx, 28(%esp)
	leal	700(,%eax,4), %eax
	jmp	L2209
	.p2align 4,,10
	.p2align 3
L2201:
	movl	20(%esp), %eax
	movl	%eax, 32(%esi)
L2205:
	movl	20(%esp), %ebx
	jmp	L2227
	.p2align 4,,10
	.p2align 3
L2228:
	movl	$1, 24(%esp)
	movl	$712, %eax
	movl	$2, 28(%esp)
L2209:
	addl	%ebx, %eax
	movl	%eax, 32(%esp)
	movl	16(%esp), %eax
	addl	%edi, %eax
	sall	$4, %eax
	leal	80(%ebp,%eax), %ecx
	movl	28(%esp), %eax
	addl	24(%esp), %eax
	leal	(%ebx,%eax,4), %edx
	movzbl	14(%ecx), %eax
	cmpl	$1048584, 708(%edx)
	sete	16(%esp)
	andl	$-2, %eax
	orb	16(%esp), %al
	movb	%al, 14(%ecx)
	movl	700(%edx), %eax
	movl	$0, 40(%esi)
	movl	%eax, 36(%esi)
	movl	700(%edx), %eax
	testl	%eax, %eax
	je	L2213
	movl	%esi, 40(%eax)
L2214:
	movl	28(%esp), %eax
	addl	24(%esp), %eax
	movl	%esi, 700(%ebx,%eax,4)
	movl	32(%esp), %edx
	movl	%ebx, %eax
	call	__ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s
	addl	$1, 164(%ebx)
	movl	36(%esp), %eax
	cmpl	20(%esi), %eax
	jne	L2200
	movzwl	4(%esi), %eax
	cmpw	%ax, 16(%esi)
	jnb	L2263
L2215:
	cmpl	%ebx, 20(%esp)
	jne	L2200
	movl	60(%esp), %ecx
	testl	%ecx, %ecx
	je	L2200
	movl	60(%esp), %eax
	movb	$1, (%eax)
	jmp	L2200
	.p2align 4,,10
	.p2align 3
L2262:
	addl	$1, %edx
	movl	%edx, %eax
	andl	$254, %eax
	jmp	L2257
	.p2align 4,,10
	.p2align 3
L2202:
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	$LC70, 4(%esp)
	movl	$14, (%esp)
	movl	%ecx, 24(%esp)
	call	__Z17_mi_error_messageiPKcz
	movl	20(%esp), %eax
	movl	24(%esp), %ecx
	movl	%eax, (%ecx)
	jmp	L2205
	.p2align 4,,10
	.p2align 3
L2213:
	movl	%esi, 704(%edx)
	jmp	L2214
L2261:
	testl	%ecx, %ecx
	je	L2264
	cmpl	$1, %ecx
	jne	L2224
	movl	64(%esp), %eax
	addl	$8, %eax
L2223:
	movl	$0, 32(%ebp)
	movl	4(%eax), %edx
	movl	%edx, 36(%ebp)
	testl	%edx, %edx
	je	L2225
	movl	%ebp, 32(%edx)
L2226:
	movl	%ebp, 4(%eax)
	movl	40(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	44(%esp), %esi
	.cfi_restore 6
	movl	48(%esp), %edi
	.cfi_restore 7
	jmp	L2219
L2263:
	.cfi_restore_state
	cmpl	$3, 28(%esi)
	jbe	L2200
	jmp	L2215
L2260:
	movl	40(%esp), %ebx
	.cfi_restore 3
	movl	44(%esp), %esi
	.cfi_restore 6
	movl	48(%esp), %edi
	.cfi_restore 7
L2218:
	movl	64(%esp), %edx
	movl	%ebp, %eax
	call	__ZL15mi_segment_freeP12mi_segment_sbP17mi_segments_tld_s.isra.0
LEHE0:
	movl	52(%esp), %ebp
	xorl	%eax, %eax
	addl	$56, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
L2229:
	.cfi_def_cfa_offset 60
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$73, 24(%esp)
	movl	$1576, %eax
	movl	$146, 28(%esp)
	jmp	L2209
L2199:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	movl	52(%ebp), %edx
	testl	%edx, %edx
	jne	L2219
	jmp	L2218
L2264:
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	64(%esp), %eax
	jmp	L2223
L2225:
	movl	%ebp, (%eax)
	jmp	L2226
	.section	.gcc_except_table,"w"
LLSDA332:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE332-LLSDACSB332
LLSDACSB332:
	.uleb128 LEHB0-LFB332
	.uleb128 LEHE0-LEHB0
	.uleb128 0
	.uleb128 0
LLSDACSE332:
	.text
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.cfi_personality 0x9b,LDFCM0
	.cfi_lsda 0x1b,LLSDAC332
	.def	__ZL18mi_segment_reclaimP12mi_segment_sP9mi_heap_sjPbP17mi_segments_tld_s.cold;	.scl	3;	.type	32;	.endef
__ZL18mi_segment_reclaimP12mi_segment_sP9mi_heap_sjPbP17mi_segments_tld_s.cold:
LFSB332:
L2224:
	.cfi_def_cfa_offset 60
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	xorl	%eax, %eax
	movl	%eax, 32(%ebp)
	movl	4, %eax
	ud2
	.cfi_endproc
LFE332:
	.section	.gcc_except_table,"w"
LLSDAC332:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSEC332-LLSDACSBC332
LLSDACSBC332:
LLSDACSEC332:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
LCOLDE71:
	.text
LHOTE71:
	.p2align 4
	.def	__ZL18mi_heap_collect_exP9mi_heap_s12mi_collect_e;	.scl	3;	.type	32;	.endef
__ZL18mi_heap_collect_exP9mi_heap_s12mi_collect_e:
LFB339:
	.cfi_startproc
	.cfi_personality 0x9b,LDFCM0
	.cfi_lsda 0x1b,LLSDA339
	subl	$60, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	sete	%cl
	cmpl	$__mi_heap_empty, %eax
	movl	%esi, 48(%esp)
	.cfi_offset 6, -16
	movl	%edx, %esi
	sete	%dl
	orb	%dl, %cl
	jne	L2265
	movl	%ebx, 44(%esp)
	.cfi_offset 3, -20
	movl	%esi, %ebx
	andl	$1, %ebx
	movl	%edi, 52(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	movl	%ebx, %edx
	movl	%ebp, 56(%esp)
	.cfi_offset 5, -8
	movl	%ecx, %ebp
LEHB1:
	call	__Z17_mi_deferred_freeP9mi_heap_sb
	movl	__mi_heap_main+8, %eax
	testl	%eax, %eax
	jne	L2332
L2267:
	movl	8(%edi), %edx
/APP
 # 2248 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:24, %eax 
 # 0 "" 2
/NO_APP
	cmpl	%eax, %edx
	jne	L2276
	cmpl	$1, %esi
	jne	L2276
	movl	(%edi), %eax
	cmpl	12(%eax), %edi
	je	L2333
L2271:
	movl	%edi, %eax
	movl	$1, %ebp
	call	__Z29_mi_heap_delayed_free_partialP9mi_heap_s
LEHE1:
	testb	%al, %al
	jne	L2334
	.p2align 4
	.p2align 3
L2277:
	call	_sched_yield
L2276:
	movl	%edi, %eax
LEHB2:
	call	__Z29_mi_heap_delayed_free_partialP9mi_heap_s
	testb	%al, %al
	je	L2277
L2334:
	movl	%ebx, %edx
	movl	%edi, %eax
	call	__Z24_mi_heap_collect_retiredP9mi_heap_sb
	movl	164(%edi), %esi
	testl	%esi, %esi
	je	L2278
	leal	1600(%edi), %eax
	movl	%edi, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%ebp, %eax
	leal	700(%edi), %ebp
	movb	%al, 12(%esp)
	.p2align 4
	.p2align 3
L2282:
	movl	0(%ebp), %esi
	.p2align 4
	.p2align 3
L2331:
	testl	%esi, %esi
	je	L2279
L2335:
	movl	%esi, %edi
	movl	%ebx, %edx
	movl	36(%esi), %esi
	movl	%edi, %eax
	call	__Z21_mi_page_free_collectP9mi_page_sb
	cmpw	$0, 16(%edi)
	jne	L2331
	movl	%ebp, %edx
	movl	%edi, %eax
	call	__Z13_mi_page_freeP9mi_page_sP15mi_page_queue_sb.isra.0
	testl	%esi, %esi
	jne	L2335
L2279:
	addl	$12, %ebp
	cmpl	8(%esp), %ebp
	jne	L2282
	movzbl	12(%esp), %ebp
	movl	16(%esp), %edi
L2278:
	movl	__ZL7options+304, %ecx
	movl	(%edi), %esi
	testl	%ecx, %ecx
	je	L2336
L2283:
	movl	__ZL7options+300, %edx
	testl	%edx, %edx
	js	L2284
	leal	20(%esi), %edx
	movl	%ebx, %eax
	call	__ZL18mi_pages_try_purgebP17mi_segments_tld_s.part.0
L2284:
	movl	%ebp, %eax
	testb	%al, %al
	je	L2330
	movl	(%edi), %eax
	cmpl	12(%eax), %edi
	je	L2337
L2330:
	movl	44(%esp), %ebx
	.cfi_restore 3
	movl	52(%esp), %edi
	.cfi_restore 7
	movl	56(%esp), %ebp
	.cfi_restore 5
L2265:
	movl	48(%esp), %esi
	addl	$60, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L2332:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
/APP
 # 2248 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:24, %edx 
 # 0 "" 2
/NO_APP
	cmpl	%edx, %eax
	jne	L2276
	jmp	L2267
L2336:
	movl	$__ZL7options+300, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	jmp	L2283
L2333:
	movzbl	180(%edi), %ebp
	movl	%ebp, %ecx
	testb	%cl, %cl
	jne	L2276
	leal	20(%esp), %esi
	movl	68(%eax), %edx
	leal	20(%eax), %ebp
	movl	$1, %ecx
	movl	%esi, (%esp)
	movl	%edi, %eax
	call	__Z27_mi_arena_field_cursor_initP9mi_heap_sP12mi_subproc_sbP23mi_arena_field_cursor_s
	jmp	L2272
L2338:
	movl	%esi, %eax
	call	__ZL43mi_arena_segment_clear_abandoned_next_fieldP23mi_arena_field_cursor_s
	testl	%eax, %eax
	je	L2273
L2274:
	movl	%ebp, 4(%esp)
	xorl	%ecx, %ecx
	movl	%edi, %edx
	movl	$0, (%esp)
	call	__ZL18mi_segment_reclaimP12mi_segment_sP9mi_heap_sjPbP17mi_segments_tld_s
L2272:
	movl	28(%esp), %eax
	cmpl	%eax, 24(%esp)
	jb	L2338
L2273:
	movl	%esi, %eax
	call	__ZL42mi_arena_segment_clear_abandoned_next_listP23mi_arena_field_cursor_s
	testl	%eax, %eax
	jne	L2274
	cmpb	$0, 41(%esp)
	je	L2271
	movl	36(%esp), %eax
	addl	$32, %eax
	movl	%eax, (%esp)
	call	*__imp__LeaveCriticalSection@4
	.cfi_def_cfa_offset 60
	subl	$4, %esp
	.cfi_def_cfa_offset 64
	jmp	L2271
	.p2align 4,,10
	.p2align 3
L2337:
	movl	$__ZL8td_cache, %ebp
	movl	$__ZL8td_cache+128, %edi
	jmp	L2294
	.p2align 4
	.p2align 4,,10
	.p2align 3
L2285:
	addl	$4, %ebp
	cmpl	%ebp, %edi
	je	L2330
L2294:
	movl	0(%ebp), %eax
	testl	%eax, %eax
	je	L2285
	xorl	%ebx, %ebx
	xchgl	0(%ebp), %ebx
	testl	%ebx, %ebx
	je	L2285
	movl	2376(%ebx), %eax
	movl	%ebx, 8(%esp)
	movl	%eax, 12(%esp)
	subl	$3, %eax
	cmpl	$2, %eax
	ja	L2285
	movl	__ZL16mi_os_mem_config, %ecx
	movl	2360(%ebx), %esi
	cmpl	$-2386, %ecx
	ja	L2339
	leal	2383(%ecx), %edx
	leal	-1(%ecx), %eax
	movl	%edx, 16(%esp)
	testl	%ecx, %eax
	jne	L2289
	movl	%ecx, %eax
	negl	%eax
	andl	%edx, %eax
L2290:
	testl	%esi, %esi
	je	L2291
L2287:
	movl	%esi, 8(%esp)
	subl	%esi, %ebx
	addl	%ebx, %eax
L2291:
	cmpl	$4, 12(%esp)
	je	L2340
	testl	%eax, %eax
	je	L2285
L2288:
	movl	%eax, %edx
	movl	8(%esp), %eax
	movl	$1, %ecx
	call	__ZL15mi_os_prim_freePvjbP10mi_stats_s.part.0
	jmp	L2285
L2289:
	movl	16(%esp), %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	16(%esp), %eax
	subl	%edx, %eax
	jmp	L2290
L2340:
	cmpl	$1073741823, %eax
	jbe	L2285
	movl	8(%esp), %ebx
	leal	(%ebx,%eax), %esi
L2293:
	movl	%ebx, %eax
	movl	$1, %ecx
	movl	$1073741824, %edx
	addl	$1073741824, %ebx
	call	__ZL15mi_os_prim_freePvjbP10mi_stats_s.part.0
LEHE2:
	movl	%esi, %eax
	subl	%ebx, %eax
	cmpl	$1073741823, %eax
	ja	L2293
	jmp	L2285
L2339:
	movl	$2384, %eax
	testl	%esi, %esi
	jne	L2287
	cmpl	$4, 12(%esp)
	jne	L2288
	jmp	L2285
	.cfi_endproc
LFE339:
	.section	.gcc_except_table,"w"
LLSDA339:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE339-LLSDACSB339
LLSDACSB339:
	.uleb128 LEHB1-LFB339
	.uleb128 LEHE1-LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB2-LFB339
	.uleb128 LEHE2-LEHB2
	.uleb128 0
	.uleb128 0
LLSDACSE339:
	.text
	.p2align 4
	.def	__ZL22mi_segment_try_reclaimP9mi_heap_sj14mi_page_kind_ePbP17mi_segments_tld_s;	.scl	3;	.type	32;	.endef
__ZL22mi_segment_try_reclaimP9mi_heap_sj14mi_page_kind_ePbP17mi_segments_tld_s:
LFB358:
	.cfi_startproc
	subl	$76, %esp
	.cfi_def_cfa_offset 80
	movl	%esi, 64(%esp)
	.cfi_offset 6, -16
	movl	80(%esp), %esi
	movl	%ebp, 72(%esp)
	movl	%edx, 28(%esp)
	movb	$0, (%esi)
	movl	__ZL7options+424, %edx
	movl	%eax, 24(%esp)
	movl	%ecx, 32(%esp)
	testl	%edx, %edx
	.cfi_offset 5, -8
	je	L2393
L2342:
	movl	__ZL7options+420, %ecx
	testl	%ecx, %ecx
	jle	L2343
	movl	84(%esp), %eax
	movl	%ebx, 60(%esp)
	movl	%edi, 68(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	movl	48(%eax), %ebx
	movl	(%ebx), %edi
	testl	%edi, %edi
	je	L2394
	movl	$100, %eax
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	cmpl	$10000, %edi
	ja	L2395
	imull	%edi, %ecx
	cmpl	$8, %edi
	jbe	L2367
	movl	$7, 16(%esp)
	cmpl	$799, %ecx
	ja	L2367
L2347:
	leal	36(%esp), %eax
	xorl	%ecx, %ecx
	movl	%ebx, %edx
	movl	%eax, (%esp)
	movl	24(%esp), %eax
	call	__Z27_mi_arena_field_cursor_initP9mi_heap_sP12mi_subproc_sbP23mi_arena_field_cursor_s
	movl	%esi, 80(%esp)
	.p2align 4
	.p2align 3
L2349:
	movl	44(%esp), %eax
	cmpl	%eax, 40(%esp)
	jnb	L2354
	leal	36(%esp), %eax
	call	__ZL43mi_arena_segment_clear_abandoned_next_fieldP23mi_arena_field_cursor_s
	movl	%eax, %ebp
	testl	%eax, %eax
	je	L2354
L2355:
	movl	24(%esp), %eax
	addl	$1, 48(%ebp)
	movl	12(%eax), %eax
	testl	%eax, %eax
	sete	23(%esp)
	cmpl	$6, 16(%ebp)
	jne	L2356
	movzbl	8(%ebp), %edx
	xorl	$1, %edx
	andb	23(%esp), %dl
	cmpl	%eax, 4(%ebp)
	sete	%al
	orl	%eax, %edx
	movb	%dl, 23(%esp)
L2356:
	movl	56(%ebp), %eax
	testl	%eax, %eax
	je	L2391
	movl	$0, 12(%esp)
	leal	116(%ebp), %esi
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
	jmp	L2360
	.p2align 5
	.p2align 4,,10
	.p2align 3
L2366:
	movl	$1, %edi
L2358:
	addl	$1, %ebx
	addl	$48, %esi
	cmpl	56(%ebp), %ebx
	jnb	L2396
L2360:
	leal	(%ebx,%ebx,2), %eax
	sall	$4, %eax
	testb	$1, 89(%ebp,%eax)
	je	L2366
	addl	$1, %ecx
	leal	-28(%esi), %eax
	xorl	%edx, %edx
	movl	%ecx, 8(%esp)
	call	__Z21_mi_page_free_collectP9mi_page_sb
	movzwl	-12(%esi), %eax
	movl	8(%esp), %ecx
	testw	%ax, %ax
	jne	L2359
	addl	$1, 12(%esp)
	movl	$1, %edi
	addl	$1, %ebx
	addl	$48, %esi
	cmpl	56(%ebp), %ebx
	jb	L2360
	.p2align 4
	.p2align 3
L2396:
	cmpl	12(%esp), %ecx
	je	L2391
	movl	%edi, %eax
	testb	%al, %al
	je	L2351
	movl	32(%esp), %eax
	cmpl	%eax, 84(%ebp)
	je	L2397
L2351:
	cmpl	$2, 48(%ebp)
	jbe	L2352
	cmpb	$0, 23(%esp)
	jne	L2391
L2352:
	movl	%ebp, %eax
	call	__Z32_mi_arena_segment_mark_abandonedP12mi_segment_s
L2350:
	subl	$1, 16(%esp)
	cmpl	$-1, 16(%esp)
	jne	L2349
	xorl	%ebp, %ebp
L2353:
	cmpb	$0, 57(%esp)
	jne	L2398
L2390:
	movl	%ebp, %eax
	movl	60(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	68(%esp), %edi
	.cfi_restore 7
	movl	64(%esp), %esi
	movl	72(%esp), %ebp
	addl	$76, %esp
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
L2394:
	.cfi_restore_state
	movl	60(%esp), %ebx
	.cfi_restore 3
	movl	68(%esp), %edi
	.cfi_restore 7
L2343:
	xorl	%ebp, %ebp
	movl	64(%esp), %esi
	movl	%ebp, %eax
	movl	72(%esp), %ebp
	addl	$76, %esp
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
L2395:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$1374389535, %eax
	mull	%edi
	shrl	$5, %edx
	movl	%edx, %eax
	movl	$1024, %edx
	imull	%ecx, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	subl	$1, %eax
	movl	%eax, 16(%esp)
	jmp	L2347
	.p2align 4,,10
	.p2align 3
L2359:
	movl	28(%esp), %edx
	cmpl	-8(%esi), %edx
	jne	L2358
	cmpw	-24(%esi), %ax
	jb	L2366
	cmpl	$3, (%esi)
	seta	%al
	orl	%eax, %edi
	jmp	L2358
	.p2align 4,,10
	.p2align 3
L2354:
	leal	36(%esp), %eax
	call	__ZL42mi_arena_segment_clear_abandoned_next_listP23mi_arena_field_cursor_s
	movl	%eax, %ebp
	testl	%eax, %eax
	jne	L2355
	cmpb	$0, 57(%esp)
	je	L2390
L2398:
	movl	52(%esp), %eax
	addl	$32, %eax
	movl	%eax, (%esp)
	call	*__imp__LeaveCriticalSection@4
	.cfi_def_cfa_offset 76
	movl	%ebp, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	movl	60(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	68(%esp), %edi
	.cfi_restore 7
	movl	64(%esp), %esi
	movl	72(%esp), %ebp
	addl	$76, %esp
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2391:
	.cfi_restore_state
	movl	84(%esp), %eax
	movl	24(%esp), %edx
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	movl	%eax, 4(%esp)
	movl	%ebp, %eax
	call	__ZL18mi_segment_reclaimP12mi_segment_sP9mi_heap_sjPbP17mi_segments_tld_s
	jmp	L2350
	.p2align 4,,10
	.p2align 3
L2397:
	cmpb	$0, 23(%esp)
	je	L2352
	movl	84(%esp), %eax
	movl	80(%esp), %esi
	movl	28(%esp), %ecx
	movl	24(%esp), %edx
	movl	%eax, 4(%esp)
	movl	%ebp, %eax
	movl	%esi, (%esp)
	call	__ZL18mi_segment_reclaimP12mi_segment_sP9mi_heap_sjPbP17mi_segments_tld_s
	movl	%eax, %ebp
	jmp	L2353
L2393:
	.cfi_restore 3
	.cfi_restore 7
	movl	$__ZL7options+420, %eax
	call	__ZL14mi_option_initP16mi_option_desc_s
	jmp	L2342
L2367:
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	movl	$1374389535, %eax
	mull	%ecx
	movl	%edx, %eax
	movl	$1024, %edx
	shrl	$5, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	movl	$1, %edx
	testl	%eax, %eax
	cmove	%edx, %eax
	subl	$1, %eax
	movl	%eax, 16(%esp)
	jmp	L2347
	.cfi_endproc
LFE358:
	.p2align 4
	.def	__ZL21mi_segment_page_allocP9mi_heap_sj14mi_page_kind_ejP17mi_segments_tld_sP11mi_os_tld_s.part.0;	.scl	3;	.type	32;	.endef
__ZL21mi_segment_page_allocP9mi_heap_sj14mi_page_kind_ejP17mi_segments_tld_sP11mi_os_tld_s.part.0:
LFB363:
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
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	movl	44(%esp), %eax
	movl	48(%esp), %edi
	movl	52(%esp), %ebp
	movl	%eax, 16(%esp)
	leal	23(%esp), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	movl	%edi, 4(%esp)
	call	__ZL22mi_segment_try_reclaimP9mi_heap_sj14mi_page_kind_ePbP17mi_segments_tld_s
	cmpb	$0, 23(%esp)
	jne	L2399
	testl	%eax, %eax
	je	L2408
L2403:
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%edi, %ecx
	movl	%esi, %edx
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
	jmp	__ZL34mi_segment_page_try_alloc_in_queueP9mi_heap_s14mi_page_kind_eP17mi_segments_tld_s
	.p2align 4,,10
	.p2align 3
L2408:
	.cfi_restore_state
	movl	%ebp, 12(%esp)
	movl	16(%esp), %ecx
	movl	%esi, %edx
	movl	%edi, 8(%esp)
	movl	12(%ebx), %eax
	movl	$0, (%esp)
	movl	%eax, 4(%esp)
	xorl	%eax, %eax
	call	__ZL16mi_segment_allocj14mi_page_kind_ejjiP17mi_segments_tld_sP11mi_os_tld_s
	testl	%eax, %eax
	jne	L2403
L2399:
	addl	$24, %esp
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
LFE363:
	.p2align 4
	.def	__ZL19mi_page_fresh_allocP9mi_heap_sP15mi_page_queue_sjj;	.scl	3;	.type	32;	.endef
__ZL19mi_page_fresh_allocP9mi_heap_sP15mi_page_queue_sjj:
LFB367:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%edx, %ebp
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	(%eax), %eax
	movl	48(%esp), %edx
	leal	80(%eax), %ecx
	addl	$20, %eax
	movl	%ecx, 20(%esp)
	movl	%eax, 16(%esp)
	cmpl	$1048576, %edx
	ja	L2445
	cmpl	$8192, %esi
	jbe	L2446
	cmpl	$65536, %esi
	jbe	L2447
	cmpl	$1048576, %esi
	ja	L2415
	movl	16(%esp), %eax
	movl	$2, %ecx
	movl	%esi, %edx
	movl	%eax, 4(%esp)
	leal	24(%esp), %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__ZL22mi_segment_try_reclaimP9mi_heap_sj14mi_page_kind_ePbP17mi_segments_tld_s
	movl	%eax, %ebx
	cmpb	$0, 24(%esp)
	jne	L2448
	testl	%eax, %eax
	je	L2449
L2419:
	movl	16(%esp), %edx
	movl	%ebx, %eax
	call	__ZL20mi_segment_find_freeP12mi_segment_sP17mi_segments_tld_s
	movl	%eax, %ebx
	jmp	L2411
	.p2align 4,,10
	.p2align 3
L2446:
	movl	16(%esp), %ecx
	xorl	%edx, %edx
	movl	%edi, %eax
	call	__ZL34mi_segment_page_try_alloc_in_queueP9mi_heap_s14mi_page_kind_eP17mi_segments_tld_s
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L2450
L2413:
	leal	-1(%ebx), %eax
	leal	32(%ebx), %edx
	andl	$-2097152, %eax
	testl	%ebp, %ebp
	je	L2420
	testb	$8, 1(%ebx)
	jne	L2420
	movl	%edi, 32(%ebx)
L2422:
	movzbl	181(%edi), %edx
	movl	%esi, 20(%ebx)
	leal	24(%esp), %ecx
	movb	%dl, 19(%ebx)
	movl	%ebx, %edx
	call	__Z22_mi_segment_page_startPK12mi_segment_sPK9mi_page_sPj
	xorl	%edx, %edx
	movzbl	1(%ebx), %ecx
	movl	%eax, 24(%ebx)
	movl	24(%esp), %eax
	shrb	$2, %cl
	divl	%esi
	movzbl	7(%ebx), %edx
	andl	$1, %ecx
	andl	$-2, %edx
	orl	%ecx, %edx
	movb	%dl, 7(%ebx)
	movw	%ax, 4(%ebx)
	testl	%esi, %esi
	je	L2425
	leal	-1(%esi), %edx
	testl	%esi, %edx
	jne	L2425
	xorl	%edx, %edx
	rep bsfl	%esi, %edx
	movb	%dl, 18(%ebx)
	movl	8(%ebx), %edx
	testl	%edx, %edx
	je	L2451
	.p2align 4
	.p2align 3
L2426:
	testl	%ebp, %ebp
	je	L2409
	movzbl	6(%ebx), %eax
	cmpl	$1048584, 8(%ebp)
	sete	%dl
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, 6(%ebx)
	movl	0(%ebp), %eax
	movl	$0, 40(%ebx)
	movl	%eax, 36(%ebx)
	movl	0(%ebp), %eax
	testl	%eax, %eax
	je	L2428
	movl	%ebx, 40(%eax)
L2429:
	movl	%ebx, 0(%ebp)
	movl	%ebp, %edx
	movl	%edi, %eax
	call	__ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s
	addl	$1, 164(%edi)
L2409:
	addl	$28, %esp
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
L2425:
	.cfi_restore_state
	xorl	%edx, %edx
	movb	%dl, 18(%ebx)
	movl	8(%ebx), %edx
	testl	%edx, %edx
	jne	L2426
L2451:
	cmpw	%ax, 2(%ebx)
	jnb	L2426
	movl	%ebx, %eax
	call	__ZL19mi_page_extend_freeP9mi_heap_sP9mi_page_sP8mi_tld_s.part.0.isra.0
	jmp	L2426
	.p2align 4,,10
	.p2align 3
L2420:
	movl	20(%ebx), %esi
	movl	%edi, (%edx)
	jmp	L2422
	.p2align 4,,10
	.p2align 3
L2415:
	movl	12(%edi), %ecx
L2443:
	movl	20(%esp), %eax
	movl	%eax, 4(%esp)
	movl	16(%esp), %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__ZL26mi_segment_huge_page_allocjjiP17mi_segments_tld_sP11mi_os_tld_s
	movl	%eax, %ebx
L2411:
	testl	%ebx, %ebx
	jne	L2413
	addl	$28, %esp
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
L2447:
	.cfi_restore_state
	movl	16(%esp), %ecx
	movl	$1, %edx
	movl	%edi, %eax
	call	__ZL34mi_segment_page_try_alloc_in_queueP9mi_heap_s14mi_page_kind_eP17mi_segments_tld_s
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L2413
	movl	20(%esp), %eax
	movl	$18, (%esp)
	movl	$1, %ecx
	movl	%esi, %edx
	movl	%eax, 8(%esp)
	movl	16(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%edi, %eax
	call	__ZL21mi_segment_page_allocP9mi_heap_sj14mi_page_kind_ejP17mi_segments_tld_sP11mi_os_tld_s.part.0
	movl	%eax, %ebx
	jmp	L2411
	.p2align 4,,10
	.p2align 3
L2428:
	movl	%ebx, 4(%ebp)
	jmp	L2429
	.p2align 4,,10
	.p2align 3
L2445:
	movl	$2097152, %eax
	movl	12(%edi), %ecx
	cmpl	%eax, %edx
	cmovb	%eax, %edx
	jmp	L2443
	.p2align 4,,10
	.p2align 3
L2450:
	movl	20(%esp), %eax
	movl	$15, (%esp)
	xorl	%ecx, %ecx
	movl	%esi, %edx
	movl	%eax, 8(%esp)
	movl	16(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%edi, %eax
	call	__ZL21mi_segment_page_allocP9mi_heap_sj14mi_page_kind_ejP17mi_segments_tld_sP11mi_os_tld_s.part.0
	movl	%eax, %ebx
	jmp	L2411
	.p2align 4,,10
	.p2align 3
L2448:
	xorl	%ebx, %ebx
	jmp	L2409
	.p2align 4,,10
	.p2align 3
L2449:
	movl	20(%esp), %eax
	movl	$21, %ecx
	movl	$2, %edx
	movl	%eax, 12(%esp)
	movl	16(%esp), %eax
	movl	%eax, 8(%esp)
	movl	12(%edi), %eax
	movl	$0, (%esp)
	movl	%eax, 4(%esp)
	xorl	%eax, %eax
	call	__ZL16mi_segment_allocj14mi_page_kind_ejjiP17mi_segments_tld_sP11mi_os_tld_s
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L2419
	jmp	L2409
	.cfi_endproc
LFE367:
	.section .rdata,"dr"
	.align 4
LC72:
	.ascii "allocation request is too large (%zu bytes)\12\0"
	.text
	.p2align 4
	.def	__ZL12mi_find_pageP9mi_heap_sjj;	.scl	3;	.type	32;	.endef
__ZL12mi_find_pageP9mi_heap_sjj:
LFB375:
	.cfi_startproc
	.cfi_personality 0x9b,LDFCM0
	.cfi_lsda 0x1b,LLSDA375
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	cmpl	$1048576, %edx
	movl	%edi, 28(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	seta	%al
	testl	%ecx, %ecx
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -20
	setne	%bl
	orb	%bl, %al
	jne	L2488
	addl	$3, %edx
	movl	%esi, 24(%esp)
	movl	%edx, %eax
	movl	%ebp, 32(%esp)
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	shrl	$2, %eax
	cmpl	$7, %edx
	jbe	L2468
	cmpl	$4, %eax
	ja	L2457
	leal	1(%eax), %ebp
	andl	$254, %ebp
	leal	(%ebp,%ebp), %ecx
	leal	(%ecx,%ebp), %eax
	leal	700(,%eax,4), %eax
	movl	%eax, 12(%esp)
L2456:
	leal	(%ecx,%ebp), %eax
	leal	(%edi,%eax,4), %esi
	movl	700(%esi), %ebx
	testl	%ebx, %ebx
	je	L2460
	xorl	%edx, %edx
	movl	%ebx, %eax
	movl	%ecx, 16(%esp)
	call	__Z21_mi_page_free_collectP9mi_page_sb
	movl	8(%ebx), %edx
	testl	%edx, %edx
	je	L2489
	andb	$1, 7(%ebx)
	movl	24(%esp), %esi
	.cfi_restore 6
	movl	32(%esp), %ebp
	.cfi_restore 5
L2452:
	movl	%ebx, %eax
	movl	28(%esp), %edi
	movl	20(%esp), %ebx
	addl	$36, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L2489:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	700(%esi), %ebx
	movl	16(%esp), %ecx
L2460:
	addl	%ebp, %ecx
	movl	12(%esp), %esi
	movb	$1, 12(%esp)
	leal	0(,%ecx,4), %eax
	movl	%eax, 16(%esp)
	addl	%edi, %esi
	.p2align 4
	.p2align 3
L2467:
	testl	%ebx, %ebx
	je	L2462
L2491:
	movl	%ebx, %ebp
	xorl	%edx, %edx
	movl	36(%ebx), %ebx
	movl	%ebp, %eax
	call	__Z21_mi_page_free_collectP9mi_page_sb
	movl	8(%ebp), %eax
	testl	%eax, %eax
	jne	L2463
	movzwl	4(%ebp), %eax
	cmpw	%ax, 2(%ebp)
	jb	L2490
	testb	$1, 6(%ebp)
	jne	L2467
	movl	32(%ebp), %eax
	movl	%esi, %edx
	movl	%ebp, %ecx
	addl	$1588, %eax
	call	__ZL26mi_page_queue_enqueue_fromP15mi_page_queue_sS0_P9mi_page_s
	xorl	%edx, %edx
	movl	%ebp, %eax
	call	__Z21_mi_page_free_collectP9mi_page_sb
	testl	%ebx, %ebx
	jne	L2491
L2462:
	xorl	%edx, %edx
	movl	%edi, %eax
	call	__Z24_mi_heap_collect_retiredP9mi_heap_sb
	movl	16(%esp), %eax
	movl	%esi, %edx
	leal	(%edi,%eax), %ebp
	movl	%edi, %eax
	movl	708(%ebp), %ecx
	movl	$0, (%esp)
	call	__ZL19mi_page_fresh_allocP9mi_heap_sP15mi_page_queue_sjj
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L2487
	cmpb	$0, 12(%esp)
	je	L2487
	movb	$0, 12(%esp)
	movl	700(%ebp), %ebx
	jmp	L2467
	.p2align 4,,10
	.p2align 3
L2490:
	movl	%ebp, %eax
	call	__ZL19mi_page_extend_freeP9mi_heap_sP9mi_page_sP8mi_tld_s.part.0.isra.0
L2463:
	movl	%ebp, %ebx
	andb	$1, 7(%ebp)
	movl	24(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	%ebx, %eax
	movl	32(%esp), %ebp
	.cfi_restore 5
	movl	20(%esp), %ebx
	movl	28(%esp), %edi
	addl	$36, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L2468:
	.cfi_restore_state
	movl	$712, 12(%esp)
	movl	$1, %ebp
	movl	$2, %ecx
	jmp	L2456
L2487:
	movl	%ebx, %eax
	movl	24(%esp), %esi
	.cfi_remember_state
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
L2457:
	.cfi_restore_state
	leal	3(%eax), %edx
	movl	$29, %ecx
	movl	$31, %ebp
	andl	$-4, %edx
	subl	$1, %edx
	cmpl	$17, %eax
	leal	-1(%eax), %eax
	cmovb	%edx, %eax
	bsrl	%eax, %edx
	xorl	$31, %edx
	subl	%edx, %ecx
	subl	%edx, %ebp
	shrl	%cl, %eax
	andl	$3, %eax
	leal	-3(%eax,%ebp,4), %eax
	movzbl	%al, %ebp
	leal	(%ebp,%ebp), %ecx
	leal	(%ecx,%ebp), %eax
	leal	700(,%eax,4), %eax
	movl	%eax, 12(%esp)
	jmp	L2456
L2488:
	.cfi_restore 5
	.cfi_restore 6
	testl	%edx, %edx
	js	L2492
	movl	%edx, %eax
	movl	%ecx, 12(%esp)
	call	__Z22_mi_os_good_alloc_sizej
	movl	12(%esp), %ecx
	leal	1576(%edi), %edx
	movl	%ecx, (%esp)
	movl	%eax, %ecx
	movl	%edi, %eax
	call	__ZL19mi_page_fresh_allocP9mi_heap_sP15mi_page_queue_sjj
	movl	%eax, %ebx
	jmp	L2452
L2492:
	movl	%edx, 8(%esp)
	xorl	%ebx, %ebx
	movl	$LC72, 4(%esp)
	movl	$132, (%esp)
	call	__Z17_mi_error_messageiPKcz
	jmp	L2452
	.cfi_endproc
LFE375:
	.section	.gcc_except_table,"w"
LLSDA375:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE375-LLSDACSB375
LLSDACSB375:
LLSDACSE375:
	.text
	.section .rdata,"dr"
LC73:
	.ascii "count   \0"
LC74:
	.ascii "unit   \0"
LC75:
	.ascii "current   \0"
LC76:
	.ascii "freed   \0"
LC77:
	.ascii "total   \0"
LC78:
	.ascii "peak   \0"
LC79:
	.ascii "heap stats\0"
	.align 4
LC80:
	.ascii "%10s: %11s %11s %11s %11s %11s %11s\12\0"
LC81:
	.ascii "reserved\0"
LC82:
	.ascii "committed\0"
LC83:
	.ascii "reset\0"
LC84:
	.ascii "purged\0"
LC85:
	.ascii "touched\0"
LC86:
	.ascii "segments\0"
LC87:
	.ascii "-abandoned\0"
LC88:
	.ascii "-cached\0"
LC89:
	.ascii "pages\0"
LC90:
	.ascii "-extended\0"
LC91:
	.ascii "-noretire\0"
LC92:
	.ascii "arenas\0"
LC93:
	.ascii "-crossover\0"
LC94:
	.ascii "-rollback\0"
LC95:
	.ascii "mmaps\0"
LC96:
	.ascii "commits\0"
LC97:
	.ascii "resets\0"
LC98:
	.ascii "purges\0"
LC99:
	.ascii "threads\0"
LC100:
	.ascii "searches\0"
LC101:
	.ascii "%10s: %5ld.%ld avg\12\0"
LC102:
	.ascii "numa nodes\0"
LC103:
	.ascii "%10s: %5zu\12\0"
LC104:
	.ascii "psapi.dll\0"
LC105:
	.ascii "GetProcessMemoryInfo\0"
LC106:
	.ascii "elapsed\0"
LC107:
	.ascii "%10s: %5ld.%03ld s\12\0"
LC108:
	.ascii "process\0"
	.align 4
LC109:
	.ascii "%10s: user: %ld.%03ld s, system: %ld.%03ld s, faults: %lu, rss: \0"
LC110:
	.ascii "%s\0"
LC111:
	.ascii ", commit: \0"
	.text
	.p2align 4
	.def	__ZL15_mi_stats_printP10mi_stats_sPU5cdeclFvPKcPvES3_.constprop.0;	.scl	3;	.type	32;	.endef
__ZL15_mi_stats_printP10mi_stats_sPU5cdeclFvPKcPvES3_.constprop.0:
LFB383:
	.cfi_startproc
	.cfi_personality 0x9b,LDFCM0
	.cfi_lsda 0x1b,LLSDA383
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	xorps	%xmm0, %xmm0
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
	leal	-384(%ebp), %esi
	pushl	%ebx
	subl	$508, %esp
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%eax, -384(%ebp)
	leal	-272(%ebp), %eax
	movl	%eax, -440(%ebp)
	movss	-440(%ebp), %xmm1
	movl	$0, -372(%ebp)
	movl	$255, -368(%ebp)
	unpcklps	%xmm1, %xmm0
	movlps	%xmm0, -380(%ebp)
	movl	$LC73, 36(%esp)
	movl	$LC74, 32(%esp)
	movl	$LC75, 28(%esp)
	movl	$LC76, 24(%esp)
	movl	$LC77, 20(%esp)
	movl	$LC78, 16(%esp)
	movl	$LC79, 12(%esp)
	movl	$LC80, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
	movl	%esi, 8(%esp)
	movl	$LC81, %edx
	movl	$__mi_stats_main+64, %eax
	movl	$LC2, 12(%esp)
	movl	$1, (%esp)
	movl	$0, 4(%esp)
	call	__ZL16mi_stat_print_exPK15mi_stat_count_sPKcxPU5cdeclFvS3_PvES4_S3_.constprop.0
	movl	%esi, 8(%esp)
	movl	$LC82, %edx
	movl	$__mi_stats_main+96, %eax
	movl	$LC2, 12(%esp)
	movl	$1, (%esp)
	movl	$0, 4(%esp)
	call	__ZL16mi_stat_print_exPK15mi_stat_count_sPKcxPU5cdeclFvS3_PvES4_S3_.constprop.0
	movl	$LC83, 12(%esp)
	movl	$LC12, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
	movl	$0, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$1, (%esp)
	movl	$0, 4(%esp)
	movl	__mi_stats_main+144, %eax
	movl	__mi_stats_main+148, %edx
	call	__ZL16mi_printf_amountxxPU5cdeclFvPKcPvES1_S0_.constprop.0
	movl	$LC15, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
	movl	$LC84, 12(%esp)
	movl	$LC12, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
	movl	$0, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$1, (%esp)
	movl	$0, 4(%esp)
	movl	__mi_stats_main+176, %eax
	movl	__mi_stats_main+180, %edx
	call	__ZL16mi_printf_amountxxPU5cdeclFvPKcPvES1_S0_.constprop.0
	movl	$LC15, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
	movl	%esi, 8(%esp)
	movl	$LC85, %edx
	movl	$__mi_stats_main+192, %eax
	movl	$0, 12(%esp)
	movl	$1, (%esp)
	movl	$0, 4(%esp)
	call	__ZL16mi_stat_print_exPK15mi_stat_count_sPKcxPU5cdeclFvS3_PvES4_S3_.constprop.0
	movl	%esi, 8(%esp)
	movl	$LC86, %edx
	movl	$__mi_stats_main, %eax
	movl	$0, 12(%esp)
	movl	$-1, (%esp)
	movl	$-1, 4(%esp)
	call	__ZL16mi_stat_print_exPK15mi_stat_count_sPKcxPU5cdeclFvS3_PvES4_S3_.constprop.0
	movl	%esi, 8(%esp)
	movl	$LC87, %edx
	movl	$__mi_stats_main+224, %eax
	movl	$0, 12(%esp)
	movl	$-1, (%esp)
	movl	$-1, 4(%esp)
	call	__ZL16mi_stat_print_exPK15mi_stat_count_sPKcxPU5cdeclFvS3_PvES4_S3_.constprop.0
	movl	%esi, 8(%esp)
	movl	$LC88, %edx
	movl	$__mi_stats_main+448, %eax
	movl	$0, 12(%esp)
	movl	$-1, (%esp)
	movl	$-1, 4(%esp)
	call	__ZL16mi_stat_print_exPK15mi_stat_count_sPKcxPU5cdeclFvS3_PvES4_S3_.constprop.0
	movl	%esi, 8(%esp)
	movl	$LC89, %edx
	movl	$__mi_stats_main+32, %eax
	movl	$0, 12(%esp)
	movl	$-1, (%esp)
	movl	$-1, 4(%esp)
	call	__ZL16mi_stat_print_exPK15mi_stat_count_sPKcxPU5cdeclFvS3_PvES4_S3_.constprop.0
	movl	%esi, 8(%esp)
	movl	$LC87, %edx
	movl	$__mi_stats_main+256, %eax
	movl	$0, 12(%esp)
	movl	$-1, (%esp)
	movl	$-1, 4(%esp)
	call	__ZL16mi_stat_print_exPK15mi_stat_count_sPKcxPU5cdeclFvS3_PvES4_S3_.constprop.0
	movl	$LC90, 12(%esp)
	movl	$LC12, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
	movl	$0, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$-1, (%esp)
	movl	$-1, 4(%esp)
	movl	__mi_stats_main+480, %eax
	movl	__mi_stats_main+484, %edx
	call	__ZL16mi_printf_amountxxPU5cdeclFvPKcPvES1_S0_.constprop.0
	movl	$LC15, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
	movl	$LC91, 12(%esp)
	movl	$LC12, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
	movl	$0, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$-1, (%esp)
	movl	$-1, 4(%esp)
	movl	__mi_stats_main+560, %eax
	movl	__mi_stats_main+564, %edx
	call	__ZL16mi_printf_amountxxPU5cdeclFvPKcPvES1_S0_.constprop.0
	movl	$LC15, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
	movl	$LC92, 12(%esp)
	movl	$LC12, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
	movl	$0, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$-1, (%esp)
	movl	$-1, 4(%esp)
	movl	__mi_stats_main+624, %eax
	movl	__mi_stats_main+628, %edx
	call	__ZL16mi_printf_amountxxPU5cdeclFvPKcPvES1_S0_.constprop.0
	movl	$LC15, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
	movl	$LC93, 12(%esp)
	movl	$LC12, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
	movl	$0, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$-1, (%esp)
	movl	$-1, 4(%esp)
	movl	__mi_stats_main+640, %eax
	movl	__mi_stats_main+644, %edx
	call	__ZL16mi_printf_amountxxPU5cdeclFvPKcPvES1_S0_.constprop.0
	movl	$LC15, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
	movl	$LC94, 12(%esp)
	movl	$LC12, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
	movl	$0, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$-1, (%esp)
	movl	$-1, 4(%esp)
	movl	__mi_stats_main+656, %eax
	movl	__mi_stats_main+660, %edx
	call	__ZL16mi_printf_amountxxPU5cdeclFvPKcPvES1_S0_.constprop.0
	movl	$LC15, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
	movl	$LC95, 12(%esp)
	movl	$LC12, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
	movl	$0, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$-1, (%esp)
	movl	$-1, 4(%esp)
	movl	__mi_stats_main+496, %eax
	movl	__mi_stats_main+500, %edx
	call	__ZL16mi_printf_amountxxPU5cdeclFvPKcPvES1_S0_.constprop.0
	movl	$LC15, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
	movl	$LC96, 12(%esp)
	movl	$LC12, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
	movl	$0, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$-1, (%esp)
	movl	$-1, 4(%esp)
	movl	__mi_stats_main+512, %eax
	movl	__mi_stats_main+516, %edx
	call	__ZL16mi_printf_amountxxPU5cdeclFvPKcPvES1_S0_.constprop.0
	movl	$LC15, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
	movl	$LC97, 12(%esp)
	movl	$LC12, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
	movl	$0, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$-1, (%esp)
	movl	$-1, 4(%esp)
	movl	__mi_stats_main+528, %eax
	movl	__mi_stats_main+532, %edx
	call	__ZL16mi_printf_amountxxPU5cdeclFvPKcPvES1_S0_.constprop.0
	movl	$LC15, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
	movl	$LC98, 12(%esp)
	movl	$LC12, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
	movl	$0, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$-1, (%esp)
	movl	$-1, 4(%esp)
	movl	__mi_stats_main+544, %eax
	movl	__mi_stats_main+548, %edx
	call	__ZL16mi_printf_amountxxPU5cdeclFvPKcPvES1_S0_.constprop.0
	movl	$LC15, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
	movl	%esi, 8(%esp)
	movl	$__mi_stats_main+288, %eax
	movl	$LC99, %edx
	movl	$0, 12(%esp)
	movl	$-1, (%esp)
	movl	$-1, 4(%esp)
	call	__ZL16mi_stat_print_exPK15mi_stat_count_sPKcxPU5cdeclFvS3_PvES4_S3_.constprop.0
	movl	__mi_stats_main+584, %ebx
	movl	__mi_stats_main+588, %ecx
	movl	%ebx, %eax
	orl	%ecx, %eax
	je	L2509
	movl	__mi_stats_main+576, %eax
	movl	__mi_stats_main+580, %edx
	shldl	$2, %eax, %edx
	sall	$2, %eax
	addl	__mi_stats_main+576, %eax
	adcl	__mi_stats_main+580, %edx
	addl	%eax, %eax
	movl	%ebx, 8(%esp)
	adcl	%edx, %edx
	movl	%ecx, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___divdi3
	movl	%eax, %ecx
	movl	%edx, %ebx
	movl	%edx, %edi
	movl	%ecx, -440(%ebp)
	movl	%ecx, %edx
	shrdl	$28, %ebx, %ecx
	andl	$268435455, %edx
	andl	$268435455, %ecx
	movl	%ebx, -436(%ebp)
	sarl	$31, %edi
	addl	%edx, %ecx
	movl	-436(%ebp), %edx
	movl	%edi, %eax
	movl	$-858993459, %ebx
	andl	$3, %eax
	andl	$-4, %edi
	shrl	$24, %edx
	addl	%edx, %ecx
	addl	%eax, %ecx
	movl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	andl	$-4, %edx
	shrl	$2, %eax
	addl	%eax, %edx
	movl	-440(%ebp), %eax
	subl	%edx, %ecx
	movl	-436(%ebp), %edx
	addl	%edi, %ecx
	movl	%ecx, -448(%ebp)
	sarl	$31, %ecx
	subl	-448(%ebp), %eax
	movl	%ecx, -444(%ebp)
	sbbl	-444(%ebp), %edx
	movl	%eax, -440(%ebp)
	imull	$-858993459, %edx, %ecx
	movl	-440(%ebp), %eax
	imull	$-858993460, -440(%ebp), %edx
	addl	%edx, %ecx
	mull	%ebx
	movl	%edx, -436(%ebp)
	addl	%ecx, -436(%ebp)
	movl	-436(%ebp), %edx
	movl	%eax, -440(%ebp)
	movl	-440(%ebp), %eax
	movl	%edx, %ebx
	sarl	$31, %ebx
	xorl	%ebx, %eax
	subl	%ebx, %eax
	xorl	%edx, %edx
	andl	$1, %eax
	xorl	%ebx, %edx
	xorl	%ebx, %eax
	subl	%ebx, %eax
	sbbl	%ebx, %edx
	movl	%eax, -456(%ebp)
	movl	-456(%ebp), %eax
	movl	%edx, -452(%ebp)
	movl	$5, %edx
	mull	%edx
	addl	-448(%ebp), %eax
	movl	-436(%ebp), %ebx
	movl	%ebx, %ecx
	xorl	%ebx, %ebx
	shrl	$31, %ecx
	addl	-440(%ebp), %ecx
	adcl	-436(%ebp), %ebx
	movl	%ecx, %edi
	shrdl	$1, %ebx, %edi
L2494:
	movl	%eax, 20(%esp)
	movl	%edi, 16(%esp)
	movl	$LC100, 12(%esp)
	movl	$LC101, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
	movl	__mi_numa_node_count, %eax
	testl	%eax, %eax
	je	L2520
L2495:
	movl	%eax, 16(%esp)
	movl	$LC102, 12(%esp)
	movl	$LC103, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
	xorl	%eax, %eax
	movl	$0, -320(%ebp)
	movl	$0, -316(%ebp)
L2496:
	movl	$0, -312(%ebp,%eax)
	movl	$0, -308(%ebp,%eax)
	movl	$0, -304(%ebp,%eax)
	movl	$0, -300(%ebp,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L2496
	movl	__ZL16mi_process_start, %ecx
	movl	__ZL16mi_process_start+4, %ebx
	movl	$0, -312(%ebp,%eax)
	movl	$0, -308(%ebp,%eax)
	movl	%ecx, -440(%ebp)
	movl	%ebx, -436(%ebp)
	call	__Z18_mi_prim_clock_nowv
	movl	-440(%ebp), %ecx
	movl	-436(%ebp), %ebx
	subl	%ecx, %eax
	sbbl	%ebx, %edx
	subl	__ZL13mi_clock_diff, %eax
	sbbl	__ZL13mi_clock_diff+4, %edx
	movl	%eax, -472(%ebp)
	movl	%edx, -468(%ebp)
	movlps	__mi_stats_main+120, %xmm2
	movlps	%xmm2, -424(%ebp)
	movl	-424(%ebp), %eax
	movl	%eax, -288(%ebp)
	movlps	__mi_stats_main+112, %xmm0
	movl	__imp__GetCurrentProcess@0, %ecx
	movl	%ecx, -448(%ebp)
	call	*%ecx
	leal	-416(%ebp), %edx
	movl	%edx, 16(%esp)
	leal	-408(%ebp), %edx
	movl	%edx, 12(%esp)
	leal	-392(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	-400(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__GetProcessTimes@20
	subl	$20, %esp
	movl	$10000, 8(%esp)
	movl	$0, 12(%esp)
	movl	-416(%ebp), %eax
	movl	-412(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	%edx, -464(%ebp)
	movl	%eax, %edi
	movl	$10000, 8(%esp)
	movl	$0, 12(%esp)
	movl	-408(%ebp), %eax
	movl	-404(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	-448(%ebp), %ecx
	movl	%edx, -476(%ebp)
	movl	__ZL21pGetProcessMemoryInfo, %edx
	movl	%eax, -440(%ebp)
	testl	%edx, %edx
	je	L2498
	leal	-360(%ebp), %ebx
	xorl	%eax, %eax
L2499:
	movl	$0, (%ebx,%eax)
	movl	$0, 4(%ebx,%eax)
	movl	$0, 8(%ebx,%eax)
	movl	$0, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L2499
	movl	$0, (%ebx,%eax)
	movl	$0, 4(%ebx,%eax)
L2501:
	movl	%edx, -448(%ebp)
	call	*%ecx
	movl	$40, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	movl	-448(%ebp), %edx
	call	*%edx
	movl	-352(%ebp), %eax
	xorl	%edx, %edx
	subl	$12, %esp
	movl	%edx, -452(%ebp)
	movl	%eax, -456(%ebp)
	movl	-324(%ebp), %eax
	movl	%eax, -448(%ebp)
	movl	-356(%ebp), %eax
	movl	%eax, -460(%ebp)
L2506:
	movl	-468(%ebp), %ecx
	movl	-472(%ebp), %edx
	testl	%ecx, %ecx
	js	L2511
	movl	$2147483646, %eax
	cmpl	%edx, %eax
	movl	$0, %eax
	sbbl	%ecx, %eax
	jl	L2512
	movl	$274877907, %eax
	movl	%edx, %ecx
	mull	%edx
	movl	%edx, %eax
	shrl	$6, %edx
	shrl	$6, %eax
	imull	$1000, %eax, %ebx
	movl	%ecx, %eax
	subl	%ebx, %eax
L2507:
	movl	$2147483647, %ebx
	xorl	%ecx, %ecx
	cmpl	%edi, %ebx
	sbbl	-464(%ebp), %ecx
	cmovnc	%edi, %ebx
	xorl	%ecx, %ecx
	movl	$2147483647, %edi
	cmpl	-440(%ebp), %edi
	sbbl	-476(%ebp), %ecx
	cmovnc	-440(%ebp), %edi
	movl	%eax, 20(%esp)
	movl	%edx, 16(%esp)
	movl	$LC106, 12(%esp)
	movl	$LC107, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
	movl	-460(%ebp), %eax
	movl	$274877907, %ecx
	movl	$LC108, 12(%esp)
	movl	$LC109, 8(%esp)
	movl	%eax, 32(%esp)
	movl	%edi, %eax
	mull	%ecx
	movl	%esi, 4(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	shrl	$6, %edx
	imull	$1000, %edx, %eax
	movl	%edx, 24(%esp)
	subl	%eax, %edi
	movl	%ebx, %eax
	mull	%ecx
	movl	%edi, 28(%esp)
	movl	%edx, %ecx
	shrl	$6, %ecx
	imull	$1000, %ecx, %eax
	movl	%ecx, 16(%esp)
	subl	%eax, %ebx
	movl	%ebx, 20(%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
	movl	$LC110, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$1, (%esp)
	movl	$0, 4(%esp)
	movl	-456(%ebp), %eax
	movl	-452(%ebp), %edx
	call	__ZL16mi_printf_amountxxPU5cdeclFvPKcPvES1_S0_.constprop.0
	movl	-448(%ebp), %eax
	testl	%eax, %eax
	jne	L2521
L2508:
	movl	%esi, 4(%esp)
	movl	$LC15, 8(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
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
L2509:
	.cfi_restore_state
	xorl	%eax, %eax
	xorl	%edi, %edi
	jmp	L2494
	.p2align 4,,10
	.p2align 3
L2511:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	L2507
	.p2align 4,,10
	.p2align 3
L2521:
	movl	$LC111, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$__ZL15mi_buffered_outPKcPv, (%esp)
	call	__Z11_mi_fprintfPU5cdeclFvPKcPvES1_S0_z.constprop.0
	movl	-448(%ebp), %eax
	movl	%esi, 8(%esp)
	xorl	%edx, %edx
	movl	$LC110, 12(%esp)
	movl	$1, (%esp)
	movl	$0, 4(%esp)
	call	__ZL16mi_printf_amountxxPU5cdeclFvPKcPvES1_S0_.constprop.0
	jmp	L2508
	.p2align 4,,10
	.p2align 3
L2512:
	movl	$2147483, %edx
	movl	$647, %eax
	jmp	L2507
	.p2align 4,,10
	.p2align 3
L2498:
	movl	%ecx, -448(%ebp)
	movl	$LC104, (%esp)
	call	*__imp__LoadLibraryA@4
	movl	__ZL21pGetProcessMemoryInfo, %edx
	movl	-448(%ebp), %ecx
	subl	$4, %esp
	testl	%eax, %eax
	je	L2503
	movl	%ecx, -448(%ebp)
	movl	$LC105, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__GetProcAddress@8
	movl	-448(%ebp), %ecx
	subl	$8, %esp
	movl	%eax, __ZL21pGetProcessMemoryInfo
	movl	%eax, %edx
L2503:
	leal	-360(%ebp), %ebx
	xorl	%eax, %eax
L2504:
	movl	$0, (%ebx,%eax)
	movl	$0, 4(%ebx,%eax)
	movl	$0, 8(%ebx,%eax)
	movl	$0, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L2504
	movl	$0, (%ebx,%eax)
	movl	$0, 4(%ebx,%eax)
	testl	%edx, %edx
	jne	L2501
	movl	$0, -460(%ebp)
	movl	$0, -448(%ebp)
	movl	$0, -456(%ebp)
	movl	$0, -452(%ebp)
	jmp	L2506
	.p2align 4,,10
	.p2align 3
L2520:
	call	__Z26_mi_os_numa_node_count_getv
	jmp	L2495
	.cfi_endproc
LFE383:
	.section	.gcc_except_table,"w"
LLSDA383:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE383-LLSDACSB383
LLSDACSB383:
LLSDACSE383:
	.text
	.p2align 4
	.globl	__ZN5ImGui5TextVEPKcPc
	.def	__ZN5ImGui5TextVEPKcPc;	.scl	2;	.type	32;	.endef
__ZN5ImGui5TextVEPKcPc:
LFB395:
	.cfi_startproc
	subl	$116, %esp
	.cfi_def_cfa_offset 120
	movl	_GImGui, %edx
	movl	120(%esp), %eax
	movl	16148(%edx), %ecx
	movb	$1, 225(%ecx)
	movl	16148(%edx), %ecx
	cmpb	$0, 228(%ecx)
	je	L2598
L2522:
	addl	$116, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2598:
	.cfi_restore_state
	movl	%ebx, 100(%esp)
	movl	%esi, 104(%esp)
	cmpb	$37, (%eax)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	jne	L2524
	cmpb	$115, 1(%eax)
	je	L2599
L2524:
	movl	23948(%edx), %ebx
	movl	23940(%edx), %esi
	movl	%eax, 8(%esp)
	movl	124(%esp), %ecx
	movl	%edx, 24(%esp)
	movl	%esi, 4(%esp)
	movl	%ecx, 12(%esp)
	movl	%ebx, (%esp)
	call	___mingw_vsnprintf
	testl	%ebx, %ebx
	movl	24(%esp), %edx
	je	L2527
	cmpl	$-1, %eax
	je	L2571
	cmpl	%eax, %esi
	jle	L2571
L2528:
	movb	$0, (%ebx,%eax)
L2527:
	movl	23948(%edx), %esi
	movl	_GImGui, %edx
	movl	16148(%edx), %ecx
	leal	(%esi,%eax), %ebx
L2525:
	movb	$1, 225(%ecx)
	movl	16148(%edx), %ecx
	cmpb	$0, 228(%ecx)
	jne	L2592
	movl	%ebp, 112(%esp)
	movss	300(%ecx), %xmm2
	movss	296(%ecx), %xmm3
	addss	352(%ecx), %xmm2
	movss	476(%ecx), %xmm0
	cmpl	%ebx, %esi
	.cfi_offset 5, -8
	je	L2531
	testl	%ebx, %ebx
	je	L2600
L2532:
	movl	%ebx, %eax
	movss	%xmm3, 24(%esp)
	movl	24(%esp), %ebp
	subl	%esi, %eax
	movss	%xmm2, 28(%esp)
	cmpl	$2000, %eax
	jle	L2533
	xorps	%xmm1, %xmm1
	comiss	%xmm1, %xmm0
	jb	L2601
L2534:
	xorps	%xmm1, %xmm1
	comiss	%xmm1, %xmm0
	jp	L2543
	je	L2538
	jbe	L2543
	movss	68(%ecx), %xmm1
	subss	172(%ecx), %xmm1
	addss	%xmm1, %xmm0
L2543:
	movss	LC112, %xmm4
	subss	%xmm3, %xmm0
	movaps	%xmm4, %xmm1
	cmpless	%xmm0, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm4, %xmm1
	orps	%xmm0, %xmm1
	movss	%xmm1, 24(%esp)
L2536:
	movss	24(%esp), %xmm0
	xorl	%ecx, %ecx
	movl	%ebx, %edx
	movl	%esi, %eax
	movss	%xmm3, 40(%esp)
	movss	%xmm2, 36(%esp)
	call	__ZN5ImGui12CalcTextSizeEPKcS1_bf
	movss	40(%esp), %xmm3
	movss	36(%esp), %xmm2
	movl	%ebp, 68(%esp)
	movl	%edx, 32(%esp)
	movss	32(%esp), %xmm1
	movl	%eax, 32(%esp)
	movss	32(%esp), %xmm0
	addss	%xmm1, %xmm2
	movl	28(%esp), %eax
	addss	%xmm0, %xmm3
	movl	%eax, 72(%esp)
	movss	%xmm2, 80(%esp)
	movss	%xmm3, 76(%esp)
	call	__ZN5ImGui8ItemSizeERK6ImVec2f.constprop.0.isra.0
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leal	68(%esp), %eax
	call	__ZN5ImGui7ItemAddERK6ImRectjPS1_i.constprop.0
	testb	%al, %al
	je	L2595
	movl	68(%esp), %eax
	movl	72(%esp), %edx
	movl	%eax, 60(%esp)
	movl	%edx, 64(%esp)
	cmpl	%ebx, %esi
	je	L2595
	movl	_GImGui, %edx
	movl	16148(%edx), %eax
	movss	14404(%edx), %xmm0
	movl	%edx, 28(%esp)
	mulss	14636(%edx), %xmm0
	movl	676(%eax), %ecx
	movl	14624(%edx), %eax
	movl	%eax, 84(%esp)
	movl	14628(%edx), %eax
	movl	%ecx, 32(%esp)
	movl	%eax, 88(%esp)
	movl	14632(%edx), %eax
	movss	%xmm0, 96(%esp)
	movl	%eax, 92(%esp)
	leal	84(%esp), %eax
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movl	28(%esp), %edx
	movss	24(%esp), %xmm1
	movl	32(%esp), %ecx
	movss	15516(%edx), %xmm0
	movl	%eax, 8(%esp)
	leal	60(%esp), %eax
	movl	$0, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%eax, 4(%esp)
	movl	15512(%edx), %eax
	movl	%eax, (%esp)
	call	__ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4
	.cfi_def_cfa_offset 96
	subl	$24, %esp
	.cfi_def_cfa_offset 120
	movl	28(%esp), %edx
	leal	60(%esp), %eax
	cmpb	$0, 23524(%edx)
	jne	L2602
L2595:
	movl	100(%esp), %ebx
	.cfi_restore 3
	movl	104(%esp), %esi
	.cfi_restore 6
	movl	112(%esp), %ebp
	.cfi_restore 5
	addl	$116, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2571:
	.cfi_def_cfa_offset 120
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	leal	-1(%esi), %eax
	jmp	L2528
	.p2align 4,,10
	.p2align 3
L2599:
	cmpb	$0, 2(%eax)
	jne	L2524
	movl	124(%esp), %eax
	movl	%edx, 24(%esp)
	movl	%ecx, 28(%esp)
	movl	(%eax), %esi
	movl	%esi, (%esp)
	call	_strlen
	movl	24(%esp), %edx
	movl	28(%esp), %ecx
	leal	(%esi,%eax), %ebx
	jmp	L2525
	.p2align 4,,10
	.p2align 3
L2600:
	.cfi_offset 5, -8
	movl	%esi, (%esp)
	movl	%ecx, 28(%esp)
	movl	%edx, 24(%esp)
	movss	%xmm3, 40(%esp)
	movss	%xmm2, 36(%esp)
	movss	%xmm0, 32(%esp)
	call	_strlen
	movss	40(%esp), %xmm3
	movss	36(%esp), %xmm2
	movss	32(%esp), %xmm0
	movl	28(%esp), %ecx
	leal	(%esi,%eax), %ebx
	movl	24(%esp), %edx
	jmp	L2532
	.p2align 4,,10
	.p2align 3
L2531:
	movss	%xmm3, 24(%esp)
	movl	$LC2, %esi
	movl	24(%esp), %ebp
	movss	%xmm2, 28(%esp)
	movl	%esi, %ebx
L2533:
	xorps	%xmm1, %xmm1
	comiss	%xmm1, %xmm0
	jnb	L2534
	movl	$0x00000000, 24(%esp)
	jmp	L2536
	.p2align 4,,10
	.p2align 3
L2592:
	.cfi_restore 5
	movl	100(%esp), %ebx
	.cfi_restore 3
	movl	104(%esp), %esi
	.cfi_restore 6
	addl	$116, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2538:
	.cfi_def_cfa_offset 120
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movss	560(%ecx), %xmm0
	jmp	L2543
	.p2align 4,,10
	.p2align 3
L2602:
	movl	%ebx, %ecx
	movl	%esi, %edx
	call	__ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_
	movl	100(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	104(%esp), %esi
	.cfi_restore 6
	movl	112(%esp), %ebp
	.cfi_restore 5
	jmp	L2522
	.p2align 4,,10
	.p2align 3
L2601:
	.cfi_restore_state
	movss	15516(%edx), %xmm6
	movss	%xmm6, 44(%esp)
	cmpb	$0, 23524(%edx)
	jne	L2548
	movss	588(%ecx), %xmm0
	subss	%xmm2, %xmm0
	divss	44(%esp), %xmm0
	cvttss2sil	%xmm0, %ecx
	testl	%ecx, %ecx
	jle	L2548
	cmpl	%ebx, %esi
	jnb	L2603
	movl	%edi, 108(%esp)
	.cfi_offset 7, -12
	movl	%ebx, %edi
	xorl	%ebx, %ebx
	movl	%ecx, 24(%esp)
	movss	%xmm2, 32(%esp)
	movss	%xmm3, 36(%esp)
	jmp	L2549
	.p2align 4,,10
	.p2align 3
L2604:
	leal	1(%eax), %esi
	cmpl	%edi, %esi
	jnb	L2572
	cmpl	%ebx, 24(%esp)
	jle	L2572
L2549:
	movl	%edi, %eax
	movl	$10, 4(%esp)
	addl	$1, %ebx
	subl	%esi, %eax
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	_memchr
	testl	%eax, %eax
	jne	L2604
	xorps	%xmm0, %xmm0
	movss	32(%esp), %xmm2
	movss	36(%esp), %xmm3
	movl	$0x00000000, 36(%esp)
	cvtsi2ssl	%ebx, %xmm0
	mulss	44(%esp), %xmm0
	movl	108(%esp), %edi
	.cfi_restore 7
	addss	%xmm2, %xmm0
	movss	%xmm0, 24(%esp)
L2550:
	movss	24(%esp), %xmm1
	movss	36(%esp), %xmm0
	movl	%ebp, 84(%esp)
	movl	28(%esp), %eax
	subss	%xmm2, %xmm1
	addss	%xmm0, %xmm3
	movl	%eax, 88(%esp)
	addss	%xmm1, %xmm2
	movss	%xmm3, 92(%esp)
	movss	%xmm2, 96(%esp)
	call	__ZN5ImGui8ItemSizeERK6ImVec2f.constprop.0.isra.0
	leal	84(%esp), %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	call	__ZN5ImGui7ItemAddERK6ImRectjPS1_i.constprop.0
	movl	100(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	104(%esp), %esi
	.cfi_restore 6
	movl	112(%esp), %ebp
	.cfi_restore 5
	jmp	L2522
	.p2align 4,,10
	.p2align 3
L2548:
	.cfi_restore_state
	movss	%xmm2, 24(%esp)
L2547:
	movl	$0x00000000, 36(%esp)
	cmpl	%ebx, %esi
	jnb	L2550
	movss	24(%esp), %xmm4
	addss	44(%esp), %xmm4
	movl	%edi, 108(%esp)
	.cfi_offset 7, -12
	movl	%ebx, %edi
	movss	%xmm2, 52(%esp)
	movss	%xmm3, 48(%esp)
	movss	%xmm4, 32(%esp)
	movss	LC113, %xmm4
	addss	%xmm3, %xmm4
	movss	%xmm4, 56(%esp)
	jmp	L2563
	.p2align 4,,10
	.p2align 3
L2557:
	movl	%edi, %eax
	movl	$10, 4(%esp)
	subl	%esi, %eax
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	_memchr
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L2560
	movss	LC114, %xmm0
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movl	%esi, %eax
	call	__ZN5ImGui12CalcTextSizeEPKcS1_bf
	movss	36(%esp), %xmm5
	movl	%ebx, (%esp)
	movl	%esi, %ecx
	movl	%eax, 40(%esp)
	movss	40(%esp), %xmm1
	leal	1(%ebx), %esi
	movl	48(%esp), %eax
	movl	24(%esp), %edx
	movl	$0, 4(%esp)
	movaps	%xmm1, %xmm0
	cmpnless	%xmm5, %xmm0
	andps	%xmm0, %xmm1
	andnps	%xmm5, %xmm0
	orps	%xmm1, %xmm0
	movss	%xmm0, 36(%esp)
	call	__ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	movss	24(%esp), %xmm6
	movss	44(%esp), %xmm7
	movss	32(%esp), %xmm4
	addss	%xmm7, %xmm6
	addss	%xmm7, %xmm4
	movss	%xmm6, 24(%esp)
	movss	%xmm4, 32(%esp)
	cmpl	%edi, %esi
	jnb	L2605
L2563:
	movl	_GImGui, %eax
	movss	32(%esp), %xmm6
	movl	16148(%eax), %edx
	comiss	588(%edx), %xmm6
	jbe	L2553
	movss	596(%edx), %xmm0
	comiss	24(%esp), %xmm0
	jbe	L2553
	movss	56(%esp), %xmm4
	comiss	584(%edx), %xmm4
	jbe	L2553
	movss	592(%edx), %xmm0
	comiss	48(%esp), %xmm0
	ja	L2557
	.p2align 4
	.p2align 3
L2553:
	cmpb	$0, 23524(%eax)
	jne	L2557
	movss	52(%esp), %xmm2
	movss	48(%esp), %xmm3
	cmpl	%edi, %esi
	jnb	L2596
	xorl	%ebx, %ebx
	movss	%xmm2, 32(%esp)
	movss	%xmm3, 40(%esp)
	jmp	L2558
	.p2align 4,,10
	.p2align 3
L2606:
	leal	1(%eax), %esi
	cmpl	%edi, %esi
	jnb	L2597
L2558:
	movl	%edi, %eax
	movl	$10, 4(%esp)
	addl	$1, %ebx
	subl	%esi, %eax
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	_memchr
	testl	%eax, %eax
	jne	L2606
L2597:
	xorps	%xmm0, %xmm0
	movss	32(%esp), %xmm2
	movss	40(%esp), %xmm3
	cvtsi2ssl	%ebx, %xmm0
L2559:
	mulss	44(%esp), %xmm0
	movl	108(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	addss	24(%esp), %xmm0
	movss	%xmm0, 24(%esp)
	jmp	L2550
	.p2align 4,,10
	.p2align 3
L2560:
	.cfi_restore_state
	movss	48(%esp), %xmm3
	xorl	%ecx, %ecx
	movl	%edi, %edx
	movl	%esi, %eax
	movss	LC114, %xmm0
	movss	%xmm3, 40(%esp)
	call	__ZN5ImGui12CalcTextSizeEPKcS1_bf
	movss	36(%esp), %xmm6
	movl	%edi, (%esp)
	movl	%esi, %ecx
	movss	40(%esp), %xmm3
	movl	24(%esp), %edx
	movl	%eax, 32(%esp)
	movss	32(%esp), %xmm1
	movl	$0, 4(%esp)
	movss	%xmm3, 32(%esp)
	movl	32(%esp), %eax
	movaps	%xmm1, %xmm0
	cmpnless	%xmm6, %xmm0
	andps	%xmm0, %xmm1
	andnps	%xmm6, %xmm0
	orps	%xmm1, %xmm0
	movss	%xmm0, 36(%esp)
	call	__ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	movss	24(%esp), %xmm4
	addss	44(%esp), %xmm4
	xorps	%xmm0, %xmm0
	movss	40(%esp), %xmm3
	movss	52(%esp), %xmm2
	movss	%xmm4, 24(%esp)
	jmp	L2559
L2603:
	.cfi_restore 7
	mulss	44(%esp), %xmm1
	movl	$0x00000000, 36(%esp)
	addss	%xmm2, %xmm1
	movss	%xmm1, 24(%esp)
	jmp	L2550
L2572:
	.cfi_offset 7, -12
	movl	%ebx, %edx
	xorps	%xmm0, %xmm0
	movss	32(%esp), %xmm2
	movl	%edi, %ebx
	cvtsi2ssl	%edx, %xmm0
	mulss	44(%esp), %xmm0
	movss	36(%esp), %xmm3
	movl	108(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	addss	%xmm2, %xmm0
	movss	%xmm0, 24(%esp)
	jmp	L2547
L2605:
	.cfi_restore_state
	movss	52(%esp), %xmm2
	movss	48(%esp), %xmm3
L2596:
	xorps	%xmm0, %xmm0
	jmp	L2559
	.cfi_endproc
LFE395:
	.section .rdata,"dr"
LC115:
	.ascii "##Foreground\0"
	.text
	.p2align 4
	.globl	__ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	.def	__ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i;	.scl	2;	.type	32;	.endef
__ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i:
LFB410:
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
	subl	$52, %esp
	.cfi_def_cfa_offset 72
	movl	_GImGui, %ebx
	movl	%eax, 40(%esp)
	movl	76(%esp), %eax
	movl	16148(%ebx), %edx
	movl	%ecx, 28(%esp)
	movl	%eax, %ecx
	movb	$1, 225(%edx)
	movl	%eax, %edx
	movl	16148(%ebx), %edi
	orl	$33, %ecx
	orl	$1, %edx
	testl	$1008, %eax
	cmove	%ecx, %edx
	movl	%edi, 24(%esp)
	movl	16152(%ebx), %edi
	movl	16204(%ebx), %ecx
	movl	%edx, 12(%esp)
	shrl	$11, %edx
	testl	%edi, %edi
	setne	16(%esp)
	testl	%ecx, %ecx
	setne	%al
	cmpl	%ebp, %ecx
	movl	%eax, %esi
	movzbl	16(%esp), %eax
	setne	%cl
	andl	%ecx, %esi
	andb	%dl, %al
	jne	L2791
L2610:
	movl	%esi, %eax
	testb	%al, %al
	jne	L2613
	cmpl	24(%esp), %edi
	je	L2612
L2614:
	movb	$0, 16(%esp)
	cmpl	%ebp, 18684(%ebx)
	je	L2792
	.p2align 4
	.p2align 3
L2664:
	cmpl	%ebp, 18696(%ebx)
	je	L2793
L2669:
	xorl	%ecx, %ecx
	cmpl	%ebp, 16224(%ebx)
	je	L2794
L2666:
	movl	28(%esp), %edi
	movl	%esi, %eax
	movb	%al, (%edi)
	movl	72(%esp), %eax
	movb	%cl, (%eax)
	movzbl	16(%esp), %eax
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
L2792:
	.cfi_restore_state
	cmpb	$0, 18738(%ebx)
	jne	L2664
	movzbl	18739(%ebx), %eax
	movb	%al, 16(%esp)
	testb	%al, %al
	je	L2664
	movl	16224(%ebx), %eax
	testl	%eax, %eax
	sete	%cl
	cmpl	%ebp, %eax
	sete	%dl
	orb	%dl, %cl
	movb	%cl, 16(%esp)
	je	L2795
	movzbl	16(%esp), %esi
	movb	$0, 16(%esp)
	jmp	L2664
	.p2align 4,,10
	.p2align 3
L2613:
	movzbl	16212(%ebx), %esi
	movl	%esi, %eax
	testb	%al, %al
	je	L2614
	xorl	%esi, %esi
	cmpl	24(%esp), %edi
	jne	L2615
	.p2align 4
	.p2align 3
L2612:
	movl	16224(%ebx), %ecx
	testl	%ecx, %ecx
	je	L2617
	cmpl	%ecx, %ebp
	jne	L2796
L2617:
	movl	40(%esp), %eax
	movl	%ecx, 44(%esp)
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	$1, 8(%esp)
	movl	%edx, 16(%esp)
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	%ecx, 20(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 32(%esp)
	movl	16(%esp), %eax
	movl	%edx, 36(%esp)
	movl	20(%esp), %edx
	call	__ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.isra.0
	movb	%al, 16(%esp)
	testb	%al, %al
	je	L2618
	cmpl	18312(%ebx), %ebp
	movl	44(%esp), %ecx
	je	L2797
	movl	18284(%ebx), %eax
	movl	%eax, 32(%esp)
L2620:
	testb	$1, 33(%esp)
	jne	L2621
	movl	18680(%ebx), %edx
	testl	%edx, %edx
	je	L2622
	movl	840(%edx), %edx
	testl	%edx, %edx
	je	L2622
	cmpb	$0, 224(%edx)
	je	L2622
	movl	24(%esp), %eax
	cmpl	840(%eax), %edx
	je	L2622
	movl	%edx, 44(%esp)
	testb	$12, 15(%edx)
	je	L2622
	movl	832(%eax), %edx
	movl	44(%esp), %eax
	cmpl	832(%edx), %eax
	je	L2622
	movl	%ecx, 48(%esp)
	movl	32(%esp), %eax
	movl	44(%esp), %ecx
	jmp	L2623
	.p2align 4
	.p2align 4,,10
	.p2align 3
L2798:
	movl	828(%edx), %edx
	testl	%edx, %edx
	je	L2631
L2623:
	cmpl	%edx, %ecx
	jne	L2798
	movl	%eax, 32(%esp)
	movl	48(%esp), %ecx
	.p2align 4
	.p2align 3
L2622:
	movl	24(%esp), %eax
	movl	18628(%ebx), %edx
	cmpl	%edx, 48(%eax)
	je	L2621
	movl	16160(%ebx), %edx
	testl	%edx, %edx
	je	L2631
	movl	840(%edx), %edx
	cmpl	%edx, 840(%eax)
	je	L2621
L2631:
	movb	$1, 16213(%ebx)
L2618:
	movl	%esi, %eax
	testb	%al, %al
	je	L2614
L2616:
	movl	%edi, 16152(%ebx)
L2615:
	movb	$0, 16(%esp)
	xorl	%esi, %esi
	cmpl	%ebp, 18684(%ebx)
	jne	L2664
	jmp	L2792
	.p2align 4,,10
	.p2align 3
L2791:
	movl	24(%esp), %ecx
	movl	840(%ecx), %ecx
	cmpl	%ecx, 840(%edi)
	jne	L2610
	movl	24(%esp), %ecx
	movl	%esi, %edx
	movl	%eax, %esi
	movl	%ecx, 16152(%ebx)
	testb	%dl, %dl
	je	L2612
	movzbl	16212(%ebx), %esi
	movl	%esi, %eax
	testb	%al, %al
	jne	L2612
	jmp	L2616
	.p2align 4,,10
	.p2align 3
L2793:
	cmpl	%ebp, 18692(%ebx)
	je	L2668
	cmpl	%ebp, 18700(%ebx)
	jne	L2669
L2668:
	movl	24(%esp), %edx
	movl	%ebp, %eax
	call	__ZN5ImGui11SetActiveIDEjP11ImGuiWindow
	movl	$5, 16256(%ebx)
	testb	$4, 14(%esp)
	je	L2799
	movb	$1, 16(%esp)
	xorl	%ecx, %ecx
	cmpl	16224(%ebx), %ebp
	jne	L2666
	cmpl	18696(%ebx), %ebp
	je	L2683
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	__ZN5ImGui11SetActiveIDEjP11ImGuiWindow
L2683:
	xorl	%ecx, %ecx
	jmp	L2678
	.p2align 4,,10
	.p2align 3
L2794:
	movl	16256(%ebx), %eax
	cmpl	$1, %eax
	je	L2800
	cmpl	$5, %eax
	je	L2680
L2682:
	xorl	%ecx, %ecx
L2681:
	cmpb	$0, 16(%esp)
	je	L2666
L2678:
	movb	$1, 16239(%ebx)
	movb	$1, 16(%esp)
	jmp	L2666
	.p2align 4,,10
	.p2align 3
L2796:
	cmpb	$0, 16237(%ebx)
	jne	L2617
	jmp	L2618
	.p2align 4,,10
	.p2align 3
L2800:
	cmpb	$0, 16236(%ebx)
	je	L2672
	movl	40(%esp), %eax
	movss	3532(%ebx), %xmm0
	movss	3528(%ebx), %xmm1
	subss	4(%eax), %xmm0
	subss	(%eax), %xmm1
	movss	%xmm0, 16248(%ebx)
	movss	%xmm1, 16244(%ebx)
L2672:
	movl	16260(%ebx), %edi
	movl	_GImGui, %eax
	cmpb	$0, 3536(%eax,%edi)
	je	L2673
	leal	641(%edi), %eax
	movl	%ebp, %edx
	call	__ZN5ImGui12TestKeyOwnerE8ImGuiKeyj
	movl	%eax, %ecx
	testb	%al, %al
	je	L2673
L2674:
	testb	$4, 14(%esp)
	jne	L2681
	movb	$1, 18738(%ebx)
	jmp	L2681
	.p2align 4,,10
	.p2align 3
L2797:
	movl	18316(%ebx), %eax
	movl	%eax, 32(%esp)
	jmp	L2620
	.p2align 4,,10
	.p2align 3
L2680:
	cmpl	%ebp, 18696(%ebx)
	je	L2682
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	__ZN5ImGui11SetActiveIDEjP11ImGuiWindow
	jmp	L2682
	.p2align 4,,10
	.p2align 3
L2621:
	movl	32(%esp), %eax
	andl	$4, %eax
	testl	%ebp, %ebp
	jne	L2801
	testl	%eax, %eax
	jne	L2627
L2630:
	cmpb	$0, 18739(%ebx)
	jne	L2618
	cmpb	$0, 19068(%ebx)
	je	L2632
	cmpl	%ebp, 19092(%ebx)
	je	L2802
L2632:
	movl	%esi, %eax
	testb	%al, %al
	je	L2634
	movl	%edi, 16152(%ebx)
L2634:
	testb	$16, 13(%esp)
	je	L2636
	movl	16208(%ebx), %eax
	testl	%eax, %eax
	je	L2636
	cmpl	%ebp, %eax
	jne	L2615
L2636:
	movl	$-1, 32(%esp)
	movl	_GImGui, %esi
	movl	%ebp, %edx
	movl	$-1, %edi
	movl	%ebx, %ebp
	movl	$641, %ebx
L2645:
	movl	12(%esp), %eax
	leal	-641(%ebx), %ecx
	btl	%ecx, %eax
	jc	L2803
L2639:
	addl	$1, %ebx
	cmpl	$644, %ebx
	jne	L2645
	movl	%ebp, %ebx
	movl	%edx, %ebp
	movzbl	12(%esp), %edx
	shrb	$7, %dl
	cmpl	$-1, %edi
	setne	%al
	movl	%edx, %edi
	andl	%eax, %edi
	cmpl	$-1, 32(%esp)
	je	L2655
	cmpl	%ebp, 16224(%ebx)
	je	L2655
	testb	$16, 14(%esp)
	je	L2804
L2648:
	testb	$96, 12(%esp)
	jne	L2805
L2652:
	movl	12(%esp), %eax
	testb	$16, %al
	jne	L2654
	testb	$1, %ah
	je	L2655
	movl	32(%esp), %eax
	cmpw	$2, 14098(%ebx,%eax,2)
	je	L2654
	.p2align 4
	.p2align 3
L2655:
	movl	%edi, %eax
	testb	%al, %al
	jne	L2661
	movzbl	16(%esp), %esi
	movb	$0, 16(%esp)
	cmpl	%ebp, 18684(%ebx)
	jne	L2664
	jmp	L2792
	.p2align 4,,10
	.p2align 3
L2654:
	testb	$2, 14(%esp)
	je	L2656
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	__ZN5ImGui11SetActiveIDEjP11ImGuiWindow
L2657:
	testb	$4, 14(%esp)
	je	L2806
	movl	32(%esp), %eax
	movl	%eax, 16260(%ebx)
	movl	24(%esp), %eax
	call	__ZN5ImGui11FocusWindowEP11ImGuiWindow
	movl	%edi, %eax
	testb	%al, %al
	jne	L2663
L2660:
	movb	$1, 18738(%ebx)
	movzbl	16(%esp), %esi
	jmp	L2664
	.p2align 4,,10
	.p2align 3
L2673:
	movl	%esi, %eax
	testb	%al, %al
	je	L2675
	movl	12(%esp), %eax
	testb	$32, %al
	je	L2675
	movzbl	19068(%ebx), %ecx
	testb	%cl, %cl
	jne	L2675
	testb	$1, %ah
	je	L2676
	cmpb	$0, 14118(%ebx,%edi)
	je	L2676
	cmpw	$2, 14108(%ebx,%edi,2)
	je	L2675
L2676:
	leal	641(%edi), %eax
	movl	%ebp, %edx
	movb	%cl, 24(%esp)
	call	__ZN5ImGui12TestKeyOwnerE8ImGuiKeyj
	movl	%eax, %edi
	testb	%al, %al
	je	L2675
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	__ZN5ImGui11SetActiveIDEjP11ImGuiWindow
	testb	$4, 14(%esp)
	movzbl	24(%esp), %ecx
	jne	L2677
	movb	$1, 18738(%ebx)
L2677:
	movl	%edi, %esi
	jmp	L2678
	.p2align 4,,10
	.p2align 3
L2675:
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	__ZN5ImGui11SetActiveIDEjP11ImGuiWindow
	xorl	%ecx, %ecx
	jmp	L2674
	.p2align 4,,10
	.p2align 3
L2803:
	cmpb	$0, 2895(%esi,%ebx)
	je	L2641
	movss	11572(%esi,%ebx,4), %xmm1
	xorps	%xmm0, %xmm0
	comiss	%xmm1, %xmm0
	ja	L2641
	ucomiss	%xmm0, %xmm1
	jp	L2641
	jne	L2641
	movl	%ebx, %eax
	movl	%ecx, 48(%esp)
	movl	%edx, 44(%esp)
	call	__ZN5ImGui12TestKeyOwnerE8ImGuiKeyj
	cmpl	$-1, 32(%esp)
	movl	44(%esp), %edx
	movl	48(%esp), %ecx
	jne	L2641
	testb	%al, %al
	movl	32(%esp), %eax
	cmovne	%ecx, %eax
	movl	%eax, 32(%esp)
	.p2align 4
	.p2align 3
L2641:
	cmpb	$0, 13477(%esi,%ebx)
	je	L2639
	movl	%ebx, %eax
	movl	%edx, 44(%esp)
	movl	%ecx, 48(%esp)
	call	__ZN5ImGui12TestKeyOwnerE8ImGuiKeyj
	cmpl	$-1, %edi
	movl	44(%esp), %edx
	jne	L2639
	testb	%al, %al
	cmovne	48(%esp), %edi
	jmp	L2639
	.p2align 4,,10
	.p2align 3
L2661:
	testb	$4, 14(%esp)
	je	L2659
L2663:
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	__ZN5ImGui11SetActiveIDEjP11ImGuiWindow
	jmp	L2660
	.p2align 4,,10
	.p2align 3
L2806:
	movl	24(%esp), %esi
	movl	%ebp, %eax
	movl	%esi, %edx
	call	__ZN5ImGui10SetFocusIDEjP11ImGuiWindow
	movl	32(%esp), %eax
	movl	%eax, 16260(%ebx)
	movl	%esi, %eax
	call	__ZN5ImGui11FocusWindowEP11ImGuiWindow
	movl	%edi, %eax
	testb	%al, %al
	je	L2660
L2659:
	movl	24(%esp), %edx
	movl	%ebp, %eax
	call	__ZN5ImGui10SetFocusIDEjP11ImGuiWindow
	jmp	L2663
	.p2align 4,,10
	.p2align 3
L2802:
	testb	$2, 19072(%ebx)
	je	L2618
	jmp	L2632
	.p2align 4,,10
	.p2align 3
L2805:
	movl	24(%esp), %edx
	movl	%ebp, %eax
	call	__ZN5ImGui11SetActiveIDEjP11ImGuiWindow
	movl	32(%esp), %eax
	movl	%eax, 16260(%ebx)
	testb	$4, 14(%esp)
	je	L2807
L2653:
	movl	24(%esp), %eax
	call	__ZN5ImGui11FocusWindowEP11ImGuiWindow
	jmp	L2652
	.p2align 4,,10
	.p2align 3
L2804:
	movl	32(%esp), %eax
	addl	$641, %eax
	testb	$-8, %ah
	je	L2649
	cmpl	$4096, %eax
	je	L2686
	cmpl	$8192, %eax
	je	L2687
	cmpl	$16384, %eax
	je	L2688
	cmpl	$32768, %eax
	je	L2689
	cmpl	$2048, %eax
	jne	L2649
	cmpb	$1, 105(%esi)
	sbbl	%eax, %eax
	andl	$-3, %eax
	addl	$139, %eax
	jmp	L2650
	.p2align 4,,10
	.p2align 3
L2649:
	movl	32(%esp), %eax
	addl	$129, %eax
L2650:
	leal	(%eax,%eax,2), %eax
	xorl	%edx, %edx
	movl	%ebp, 16288(%esi,%eax,4)
	movl	%ebp, 16284(%esi,%eax,4)
	movw	%dx, 16292(%esi,%eax,4)
	jmp	L2648
	.p2align 4,,10
	.p2align 3
L2627:
	cmpl	%ecx, %ebp
	jne	L2631
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	__ZN5ImGui11SetActiveIDEjP11ImGuiWindow
	jmp	L2631
	.p2align 4,,10
	.p2align 3
L2801:
	movl	%ebp, 16204(%ebx)
	movb	$0, 16212(%ebx)
	cmpl	16208(%ebx), %ebp
	je	L2626
	movl	$0x00000000, 16220(%ebx)
	movl	$0x00000000, 16216(%ebx)
	testl	%eax, %eax
	jne	L2627
L2628:
	cmpl	23616(%ebx), %ebp
	jne	L2630
/APP
 # 4088 "source/imgui/src/imgui.cpp" 1
	int $0x03
 # 0 "" 2
/NO_APP
	jmp	L2630
	.p2align 4,,10
	.p2align 3
L2656:
	movl	24(%esp), %edx
	movl	%ebp, %eax
	call	__ZN5ImGui11SetActiveIDEjP11ImGuiWindow
	jmp	L2657
	.p2align 4,,10
	.p2align 3
L2807:
	movl	24(%esp), %edx
	movl	%ebp, %eax
	call	__ZN5ImGui10SetFocusIDEjP11ImGuiWindow
	jmp	L2653
	.p2align 4,,10
	.p2align 3
L2626:
	testl	%eax, %eax
	jne	L2627
	cmpb	$0, 23611(%ebx)
	je	L2628
	movl	24(%esp), %eax
	movl	$LC115, %ecx
	movl	$1, %edx
	movl	48(%eax), %eax
	call	__ZL19GetViewportDrawListP14ImGuiViewportPjPKc.lto_priv.0
	movl	40(%esp), %ecx
	xorps	%xmm2, %xmm2
	movss	8(%ecx), %xmm0
	movl	%ecx, (%esp)
	movl	$0x3f800000, 8(%esp)
	movl	$-16711681, 4(%esp)
	movss	12(%ecx), %xmm1
	movl	%eax, %ecx
	call	__ZN10ImDrawList7AddRectERK6ImVec2S2_jfif.part.0.constprop.0.isra.0
	.cfi_def_cfa_offset 60
	subl	$12, %esp
	.cfi_def_cfa_offset 72
	jmp	L2628
	.p2align 4,,10
	.p2align 3
L2799:
	movl	24(%esp), %edx
	movl	%ebp, %eax
	call	__ZN5ImGui10SetFocusIDEjP11ImGuiWindow
	movb	$1, 16(%esp)
	jmp	L2669
	.p2align 4,,10
	.p2align 3
L2795:
	movl	24(%esp), %edi
	cmpl	%eax, 160(%edi)
	sete	%al
	orl	%eax, %esi
	cmpl	18696(%ebx), %ebp
	je	L2665
	xorl	%ecx, %ecx
	jmp	L2666
L2665:
	cmpl	%ebp, 18692(%ebx)
	sete	%dl
	cmpl	%ebp, 18700(%ebx)
	sete	%al
	orb	%al, %dl
	movb	%dl, 16(%esp)
	jne	L2668
	xorl	%ecx, %ecx
	jmp	L2666
L2686:
	movl	$136, %eax
	jmp	L2650
L2687:
	movl	$137, %eax
	jmp	L2650
L2688:
	movl	$138, %eax
	jmp	L2650
L2689:
	movl	$139, %eax
	jmp	L2650
	.cfi_endproc
LFE410:
	.section .rdata,"dr"
LC116:
	.ascii "#SCROLLX\0"
LC117:
	.ascii "#SCROLLY\0"
	.text
	.p2align 4
	.globl	__ZN5ImGui9ScrollbarE9ImGuiAxis
	.def	__ZN5ImGui9ScrollbarE9ImGuiAxis;	.scl	2;	.type	32;	.endef
__ZN5ImGui9ScrollbarE9ImGuiAxis:
LFB432:
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
	movl	$LC117, %esi
	pushl	%ebx
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%eax, %ebx
	subl	$172, %esp
	movl	_GImGui, %eax
	testl	%ebx, %ebx
	movl	16148(%eax), %edi
	movl	%eax, -88(%ebp)
	movl	$LC116, %eax
	cmove	%eax, %esi
	movl	284(%edi), %edx
	movl	292(%edi), %eax
	movl	-4(%eax,%edx,4), %ecx
	xorl	%edx, %edx
	movl	%esi, %eax
	call	__Z9ImHashStrPKcjj
	movl	%edi, -84(%ebp)
	movl	%eax, -116(%ebp)
	movl	%eax, %ecx
	movl	(%edi), %eax
	cmpl	16200(%eax), %ecx
	je	L2882
L2810:
	movl	%ebx, %eax
	movss	128(%edi), %xmm4
	xorl	$1, %eax
	movss	212(%edi,%eax,4), %xmm0
	testl	%ebx, %ebx
	jne	L2811
	movss	72(%edi), %xmm1
	movss	80(%edi), %xmm3
	cmpb	$1, 221(%edi)
	addss	%xmm1, %xmm3
	sbbl	%eax, %eax
	andl	$128, %eax
	addl	$320, %eax
	movaps	%xmm3, %xmm2
	movl	%eax, -120(%ebp)
	subss	%xmm4, %xmm2
	subss	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	cmpless	%xmm1, %xmm0
	andps	%xmm0, %xmm1
	andnps	%xmm2, %xmm0
	movss	528(%edi), %xmm2
	orps	%xmm1, %xmm0
	movss	520(%edi), %xmm1
	unpcklps	%xmm3, %xmm2
	unpcklps	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movlhps	%xmm2, %xmm0
	movups	%xmm0, -72(%ebp)
L2812:
	leal	172(%edi,%ebx,4), %eax
	flds	(%eax)
	movl	%eax, -100(%ebp)
	fnstcw	-78(%ebp)
	movzwl	-78(%ebp), %eax
	orb	$12, %ah
	movw	%ax, -80(%ebp)
	movl	-84(%ebp), %eax
	fldcw	-80(%ebp)
	fistpq	-96(%ebp)
	fldcw	-78(%ebp)
	cmpb	$0, 228(%eax)
	jne	L2883
	movss	-64(%ebp), %xmm7
	movss	-72(%ebp), %xmm0
	xorps	%xmm3, %xmm3
	movaps	%xmm7, %xmm1
	subss	%xmm0, %xmm1
	comiss	%xmm1, %xmm3
	jnb	L2884
	movss	-60(%ebp), %xmm5
	movss	-68(%ebp), %xmm4
	movaps	%xmm5, %xmm2
	movss	%xmm5, -104(%ebp)
	subss	%xmm4, %xmm2
	comiss	%xmm2, %xmm3
	jnb	L2885
	cmpl	$1, %ebx
	je	L2818
L2820:
	movss	LC112, %xmm5
	movss	%xmm5, -156(%ebp)
	movss	%xmm5, -152(%ebp)
L2819:
	movss	116(%edi,%ebx,4), %xmm3
	xorps	%xmm5, %xmm5
	addss	%xmm3, %xmm3
	addss	92(%edi,%ebx,4), %xmm3
	movss	%xmm3, -112(%ebp)
	flds	-112(%ebp)
	movss	528(%edi,%ebx,4), %xmm3
	subss	520(%edi,%ebx,4), %xmm3
	fldcw	-80(%ebp)
	fistpq	-112(%ebp)
	fldcw	-78(%ebp)
	movss	%xmm3, -128(%ebp)
	movss	LC118, %xmm3
	flds	-128(%ebp)
	subss	%xmm3, %xmm2
	mulss	LC119, %xmm2
	fldcw	-80(%ebp)
	fistpq	-128(%ebp)
	fldcw	-78(%ebp)
	cvttss2sil	%xmm2, %eax
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm5
	comiss	%xmm5, %xmm2
	jbe	L2886
L2822:
	subss	%xmm3, %xmm1
	xorps	%xmm3, %xmm3
	mulss	LC119, %xmm1
	cvttss2sil	%xmm1, %eax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm3
	comiss	%xmm3, %xmm1
	jbe	L2887
L2823:
	movaps	%xmm0, %xmm6
	addss	%xmm2, %xmm4
	addss	%xmm1, %xmm6
	movaps	%xmm7, %xmm1
	movaps	%xmm4, %xmm5
	movss	%xmm4, -136(%ebp)
	movaps	%xmm6, %xmm0
	movss	%xmm6, -148(%ebp)
	movaps	%xmm6, %xmm4
	movss	-104(%ebp), %xmm6
	unpcklps	%xmm5, %xmm0
	unpcklps	%xmm6, %xmm1
	movlhps	%xmm1, %xmm0
	movups	%xmm0, -56(%ebp)
	testl	%ebx, %ebx
	je	L2888
	movss	-104(%ebp), %xmm0
	subss	-136(%ebp), %xmm0
L2825:
	movl	-128(%ebp), %esi
	movl	-124(%ebp), %edi
	movl	$1, %edx
	movl	-88(%ebp), %eax
	movl	%edi, %ecx
	movss	14528(%eax), %xmm6
	xorl	%eax, %eax
	cmpl	%edx, %esi
	sbbl	%eax, %ecx
	cmovge	%esi, %edx
	cmovge	%edi, %eax
	movl	-112(%ebp), %esi
	movss	%xmm6, -132(%ebp)
	movl	%eax, %ecx
	cmpl	%esi, %edx
	movl	%edx, %edi
	sbbl	-108(%ebp), %ecx
	movl	-112(%ebp), %edx
	movl	-108(%ebp), %ecx
	cmovl	%edx, %edi
	cmovl	%ecx, %eax
	movl	%edi, -144(%ebp)
	movl	%eax, -140(%ebp)
	fildq	-144(%ebp)
	fstps	-144(%ebp)
	fildq	-128(%ebp)
	fstps	-160(%ebp)
	movss	-160(%ebp), %xmm1
	divss	-144(%ebp), %xmm1
	mulss	%xmm0, %xmm1
	comiss	%xmm1, %xmm6
	ja	L2826
	movaps	%xmm0, %xmm2
	minss	%xmm1, %xmm2
	movss	%xmm2, -132(%ebp)
L2826:
	movl	-116(%ebp), %edi
	movl	$8, %ecx
	leal	-72(%ebp), %eax
	movss	%xmm0, -160(%ebp)
	movss	%xmm7, -144(%ebp)
	movl	%edi, %edx
	call	__ZN5ImGui7ItemAddERK6ImRectjPS1_i.constprop.0
	leal	-74(%ebp), %edx
	movl	$262144, 4(%esp)
	leal	-73(%ebp), %ecx
	movl	%edx, (%esp)
	leal	-56(%ebp), %eax
	movl	%edi, %edx
	movl	$1, %edi
	call	__ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	xorps	%xmm2, %xmm2
	subl	-128(%ebp), %eax
	sbbl	-124(%ebp), %edx
	xorl	%ecx, %ecx
	movl	%edx, %esi
	cmpl	%edi, %eax
	movss	-144(%ebp), %xmm7
	movss	-160(%ebp), %xmm0
	sbbl	%ecx, %esi
	cmovl	%edi, %eax
	cmovl	%ecx, %edx
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	fildq	-112(%ebp)
	fstps	-128(%ebp)
	fildq	-96(%ebp)
	fstps	-96(%ebp)
	movss	-96(%ebp), %xmm1
	divss	-128(%ebp), %xmm1
	comiss	%xmm1, %xmm2
	ja	L2829
	movss	-156(%ebp), %xmm4
	movaps	%xmm4, %xmm2
	cmpltss	%xmm1, %xmm2
	andps	%xmm2, %xmm4
	andnps	%xmm1, %xmm2
	orps	%xmm4, %xmm2
L2829:
	movss	-132(%ebp), %xmm4
	movaps	%xmm0, %xmm1
	movl	_GImGui, %edx
	subss	%xmm4, %xmm1
	mulss	%xmm1, %xmm2
	divss	%xmm0, %xmm2
	movss	%xmm2, -112(%ebp)
	cmpb	$0, -74(%ebp)
	je	L2830
	movss	-152(%ebp), %xmm6
	movss	-156(%ebp), %xmm5
	comiss	%xmm5, %xmm6
	jb	L2832
	divss	%xmm0, %xmm4
	comiss	%xmm4, %xmm5
	movaps	%xmm4, %xmm3
	ja	L2889
L2832:
	movl	14848(%edx), %eax
	leal	-40(%ebp), %edi
	movl	%edx, -116(%ebp)
	movss	%xmm7, -144(%ebp)
	movl	%eax, -40(%ebp)
	movl	14852(%edx), %eax
	movl	%eax, -36(%ebp)
	movl	14856(%edx), %eax
	movl	%eax, -32(%ebp)
	movl	14860(%edx), %eax
	movl	%eax, -28(%ebp)
	movss	14404(%edx), %xmm0
	movl	%edi, %eax
	movaps	%xmm0, %xmm1
	movss	%xmm0, -128(%ebp)
	mulss	14860(%edx), %xmm1
	movss	%xmm1, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movl	-116(%ebp), %edx
	movss	-128(%ebp), %xmm0
	movss	-144(%ebp), %xmm7
	movl	%eax, %esi
	movl	$17, %eax
L2847:
	mulss	-152(%ebp), %xmm0
	addl	$13, %eax
	movss	%xmm7, -128(%ebp)
	sall	$4, %eax
	addl	%edx, %eax
	movl	14416(%eax), %edx
	movl	%edx, -40(%ebp)
	movl	14420(%eax), %edx
	movl	%edx, -36(%ebp)
	movl	14424(%eax), %edx
	movl	%edx, -32(%ebp)
	movl	14428(%eax), %edx
	movl	%edx, -28(%ebp)
	mulss	14428(%eax), %xmm0
	movl	%edi, %eax
	movss	%xmm0, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	leal	-64(%ebp), %edx
	movl	%eax, -116(%ebp)
	movl	-84(%ebp), %eax
	movss	124(%eax), %xmm0
	movl	676(%eax), %ecx
	movl	-120(%ebp), %eax
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, 12(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movl	-116(%ebp), %eax
	movss	-128(%ebp), %xmm7
	subl	$16, %esp
	testl	%ebx, %ebx
	jne	L2845
	movss	-148(%ebp), %xmm6
	movss	-112(%ebp), %xmm0
	subss	%xmm6, %xmm7
	mulss	%xmm7, %xmm0
	movss	-132(%ebp), %xmm7
	addss	%xmm6, %xmm0
	addss	%xmm0, %xmm7
	movss	%xmm0, -148(%ebp)
L2846:
	movaps	%xmm7, %xmm1
	movss	-104(%ebp), %xmm7
	movss	-148(%ebp), %xmm0
	movl	-88(%ebp), %esi
	unpcklps	%xmm7, %xmm1
	movss	-136(%ebp), %xmm7
	unpcklps	%xmm7, %xmm0
	movlhps	%xmm1, %xmm0
	movups	%xmm0, -40(%ebp)
	movss	14524(%esi), %xmm0
	movl	-84(%ebp), %esi
	movl	676(%esi), %ecx
	movl	%eax, 8(%esp)
	leal	-32(%ebp), %eax
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	subl	$16, %esp
	jmp	L2817
	.p2align 4,,10
	.p2align 3
L2811:
	movss	68(%edi), %xmm1
	movss	76(%edi), %xmm2
	movl	$256, %edx
	addss	%xmm1, %xmm2
	movaps	%xmm2, %xmm3
	subss	%xmm4, %xmm3
	subss	%xmm0, %xmm3
	movaps	%xmm3, %xmm0
	cmpless	%xmm1, %xmm0
	andps	%xmm0, %xmm1
	andnps	%xmm3, %xmm0
	orps	%xmm1, %xmm0
	movss	532(%edi), %xmm1
	unpcklps	%xmm1, %xmm2
	movss	524(%edi), %xmm1
	unpcklps	%xmm1, %xmm0
	movlhps	%xmm2, %xmm0
	movups	%xmm0, -72(%ebp)
	movl	12(%edi), %eax
	andl	$1025, %eax
	cmpl	$1, %eax
	movl	$288, %eax
	cmovne	%edx, %eax
	movl	%eax, %esi
	orb	$-128, %al
	cmpb	$0, 220(%edi)
	cmovne	%esi, %eax
	movl	%eax, -120(%ebp)
	jmp	L2812
	.p2align 4,,10
	.p2align 3
L2883:
	fildq	-96(%ebp)
	fstps	-96(%ebp)
L2817:
	movl	-100(%ebp), %eax
	movss	-96(%ebp), %xmm6
	movss	%xmm6, (%eax)
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
L2882:
	.cfi_restore_state
	movl	-116(%ebp), %eax
	movl	%esi, %ecx
	movl	$11, %edx
	call	__ZN5ImGui15DebugHookIdInfoEjiPKvS1_.constprop.0
	movl	_GImGui, %eax
	movl	%eax, -88(%ebp)
	movl	16148(%eax), %eax
	movl	%eax, -84(%ebp)
	jmp	L2810
	.p2align 4,,10
	.p2align 3
L2884:
	fildq	-96(%ebp)
	fstps	-96(%ebp)
	jmp	L2817
	.p2align 4,,10
	.p2align 3
L2886:
	movss	LC120, %xmm6
	movaps	%xmm6, %xmm2
	cmpltss	%xmm5, %xmm2
	andps	%xmm2, %xmm6
	andnps	%xmm5, %xmm2
	orps	%xmm6, %xmm2
	movss	-104(%ebp), %xmm6
	subss	%xmm2, %xmm6
	movss	%xmm6, -104(%ebp)
	jmp	L2822
	.p2align 4,,10
	.p2align 3
L2888:
	movaps	%xmm7, %xmm0
	subss	%xmm4, %xmm0
	jmp	L2825
	.p2align 4,,10
	.p2align 3
L2887:
	movss	LC120, %xmm5
	movaps	%xmm5, %xmm1
	cmpltss	%xmm3, %xmm1
	andps	%xmm1, %xmm5
	andnps	%xmm3, %xmm1
	orps	%xmm5, %xmm1
	subss	%xmm1, %xmm7
	jmp	L2823
	.p2align 4,,10
	.p2align 3
L2830:
	movl	14848(%edx), %eax
	leal	-40(%ebp), %edi
	movl	%edx, -116(%ebp)
	movss	%xmm7, -144(%ebp)
	movl	%eax, -40(%ebp)
	movl	14852(%edx), %eax
	movl	%eax, -36(%ebp)
	movl	14856(%edx), %eax
	movl	%eax, -32(%ebp)
	movl	14860(%edx), %eax
	movl	%eax, -28(%ebp)
	movss	14404(%edx), %xmm0
	movl	%edi, %eax
	movaps	%xmm0, %xmm1
	movss	%xmm0, -128(%ebp)
	mulss	14860(%edx), %xmm1
	movss	%xmm1, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movl	-116(%ebp), %edx
	movss	-128(%ebp), %xmm0
	movl	%eax, %esi
	movzbl	-73(%ebp), %eax
	movss	-144(%ebp), %xmm7
	addl	$15, %eax
	jmp	L2847
	.p2align 4,,10
	.p2align 3
L2845:
	movss	-136(%ebp), %xmm4
	movss	-104(%ebp), %xmm0
	movss	-132(%ebp), %xmm5
	subss	%xmm4, %xmm0
	mulss	-112(%ebp), %xmm0
	addss	%xmm4, %xmm0
	addss	%xmm0, %xmm5
	movss	%xmm0, -136(%ebp)
	movss	%xmm5, -104(%ebp)
	jmp	L2846
	.p2align 4,,10
	.p2align 3
L2885:
	fildq	-96(%ebp)
	fstps	-96(%ebp)
	jmp	L2817
	.p2align 4,,10
	.p2align 3
L2818:
	movl	-88(%ebp), %eax
	movss	14468(%eax), %xmm5
	movss	15516(%eax), %xmm6
	addss	%xmm5, %xmm5
	movss	%xmm6, -112(%ebp)
	addss	%xmm5, %xmm6
	movss	%xmm5, -128(%ebp)
	comiss	%xmm2, %xmm6
	jbe	L2820
	movaps	%xmm2, %xmm5
	subss	-112(%ebp), %xmm5
	movaps	%xmm5, %xmm6
	divss	-128(%ebp), %xmm6
	comiss	%xmm6, %xmm3
	movss	%xmm6, -112(%ebp)
	ja	L2890
	movss	LC112, %xmm5
	movaps	%xmm5, %xmm6
	movss	%xmm5, -156(%ebp)
	cmpltss	-112(%ebp), %xmm5
	andps	%xmm5, %xmm6
	movss	%xmm6, -128(%ebp)
	movss	-112(%ebp), %xmm6
	andnps	%xmm6, %xmm5
	movss	-128(%ebp), %xmm6
	orps	%xmm5, %xmm6
	comiss	%xmm6, %xmm3
	movss	%xmm6, -152(%ebp)
	jb	L2819
	fildq	-96(%ebp)
	fstps	-96(%ebp)
	jmp	L2817
	.p2align 4,,10
	.p2align 3
L2890:
	fildq	-96(%ebp)
	fstps	-96(%ebp)
	jmp	L2817
	.p2align 4,,10
	.p2align 3
L2889:
	movl	-88(%ebp), %eax
	xorps	%xmm6, %xmm6
	movss	3528(%eax,%ebx,4), %xmm2
	subss	-56(%ebp,%ebx,4), %xmm2
	divss	%xmm0, %xmm2
	comiss	%xmm2, %xmm6
	ja	L2835
	movaps	%xmm5, %xmm4
	cmpltss	%xmm2, %xmm4
	andps	%xmm4, %xmm5
	andnps	%xmm2, %xmm4
	orps	%xmm5, %xmm4
	movaps	%xmm4, %xmm6
L2835:
	movl	-116(%ebp), %eax
	movb	$0, 16212(%edx)
	movl	%eax, 16204(%edx)
	testl	%eax, %eax
	je	L2836
	cmpl	16208(%edx), %eax
	je	L2836
	movl	$0x00000000, 16220(%edx)
	movl	$0x00000000, 16216(%edx)
L2836:
	movss	LC119, %xmm5
	movl	-88(%ebp), %esi
	mulss	%xmm3, %xmm5
	movzbl	16236(%esi), %eax
	movss	%xmm5, -116(%ebp)
	testb	%al, %al
	jne	L2837
	movaps	%xmm6, %xmm2
	subss	23300(%esi), %xmm2
L2838:
	movss	-156(%ebp), %xmm5
	subss	-116(%ebp), %xmm2
	movaps	%xmm5, %xmm4
	subss	%xmm3, %xmm4
	divss	%xmm4, %xmm2
	xorps	%xmm4, %xmm4
	comiss	%xmm2, %xmm4
	ja	L2856
	fnstcw	-78(%ebp)
	movaps	%xmm5, %xmm3
	cmpltss	%xmm2, %xmm3
	movzwl	-78(%ebp), %ecx
	andps	%xmm3, %xmm5
	andnps	%xmm2, %xmm3
	orb	$12, %ch
	orps	%xmm5, %xmm3
	movw	%cx, -80(%ebp)
	mulss	-128(%ebp), %xmm3
	movss	%xmm3, -96(%ebp)
	flds	-96(%ebp)
	movaps	%xmm4, %xmm3
	fldcw	-80(%ebp)
	fistpq	-96(%ebp)
	fldcw	-78(%ebp)
	fildq	-96(%ebp)
	fstps	-96(%ebp)
	movss	-96(%ebp), %xmm2
	divss	-128(%ebp), %xmm2
	comiss	%xmm2, %xmm4
	jbe	L2891
L2841:
	mulss	%xmm3, %xmm1
	divss	%xmm0, %xmm1
	movss	%xmm1, -112(%ebp)
	testb	%al, %al
	je	L2832
	subss	%xmm1, %xmm6
	subss	-116(%ebp), %xmm6
	movl	-88(%ebp), %eax
	movss	%xmm6, 23300(%eax)
	jmp	L2832
L2891:
	comiss	-156(%ebp), %xmm2
	jbe	L2843
	movss	-156(%ebp), %xmm2
L2843:
	movaps	%xmm2, %xmm3
	jmp	L2841
	.p2align 4,,10
	.p2align 3
L2837:
	movss	-112(%ebp), %xmm5
	comiss	%xmm6, %xmm5
	ja	L2839
	movaps	%xmm5, %xmm2
	addss	%xmm3, %xmm2
	comiss	%xmm2, %xmm6
	ja	L2839
	movaps	%xmm6, %xmm4
	movl	-88(%ebp), %eax
	movaps	%xmm6, %xmm2
	subss	%xmm5, %xmm4
	subss	-116(%ebp), %xmm4
	movss	%xmm4, 23300(%eax)
	subss	%xmm4, %xmm2
	xorl	%eax, %eax
	jmp	L2838
	.p2align 4,,10
	.p2align 3
L2856:
	xorps	%xmm2, %xmm2
	movss	%xmm2, -96(%ebp)
	jmp	L2843
	.p2align 4,,10
	.p2align 3
L2839:
	movl	-88(%ebp), %esi
	movaps	%xmm6, %xmm2
	movl	$0x00000000, 23300(%esi)
	jmp	L2838
	.cfi_endproc
LFE432:
	.section .rdata,"dr"
	.align 4
LC122:
	.ascii "[popup] CloseCurrentPopup %d -> %d\12\0"
	.text
	.p2align 4
	.globl	__ZN5ImGui10SelectableEPKcbiRK6ImVec2
	.def	__ZN5ImGui10SelectableEPKcbiRK6ImVec2;	.scl	2;	.type	32;	.endef
__ZN5ImGui10SelectableEPKcbiRK6ImVec2:
LFB439:
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
	subl	$140, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	_GImGui, %ebx
	movl	(%edi), %esi
	movl	16148(%ebx), %edi
	movb	$1, 225(%edi)
	movl	16148(%ebx), %edi
	cmpb	$0, 228(%edi)
	je	L2971
	movb	$0, -96(%ebp)
L2892:
	movzbl	-96(%ebp), %eax
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
L2971:
	.cfi_restore_state
	movl	%eax, -104(%ebp)
	movl	292(%edi), %eax
	movb	%dl, -124(%ebp)
	movl	284(%edi), %edx
	movl	%ecx, -112(%ebp)
	movl	-4(%eax,%edx,4), %ecx
	movl	-104(%ebp), %eax
	xorl	%edx, %edx
	call	__Z9ImHashStrPKcjj
	movl	%eax, -108(%ebp)
	movl	%eax, %edx
	movl	(%edi), %eax
	cmpl	16200(%eax), %edx
	je	L2972
L2894:
	movss	LC114, %xmm0
	movl	-104(%ebp), %eax
	xorl	%edx, %edx
	movl	$1, %ecx
	call	__ZN5ImGui12CalcTextSizeEPKcS1_bf
	movss	4(%esi), %xmm7
	xorps	%xmm0, %xmm0
	movl	%eax, -72(%ebp)
	ucomiss	%xmm0, %xmm7
	movl	%edx, -68(%ebp)
	movss	%xmm7, -100(%ebp)
	jp	L2895
	movl	-100(%ebp), %eax
	cmove	-68(%ebp), %eax
	movl	%eax, -100(%ebp)
L2895:
	movss	(%esi), %xmm3
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm3
	movss	%xmm3, -96(%ebp)
	jp	L2897
	movl	-96(%ebp), %eax
	cmove	-72(%ebp), %eax
	movl	%eax, -96(%ebp)
L2897:
	movss	352(%edi), %xmm4
	addss	300(%edi), %xmm4
	movss	296(%edi), %xmm2
	movss	-96(%ebp), %xmm0
	movss	-100(%ebp), %xmm1
	movss	%xmm2, -120(%ebp)
	movss	%xmm4, -116(%ebp)
	call	__ZN5ImGui8ItemSizeERK6ImVec2f.constprop.0.isra.0
	xorps	%xmm0, %xmm0
	ucomiss	(%esi), %xmm0
	movss	-116(%ebp), %xmm4
	movss	-120(%ebp), %xmm2
	jp	L2936
	je	L2899
L2936:
	testb	$1, -109(%ebp)
	jne	L2899
L2901:
	movss	-100(%ebp), %xmm3
	movss	%xmm2, -80(%ebp)
	movl	-108(%ebp), %esi
	xorl	%ecx, %ecx
	movss	14480(%ebx), %xmm1
	movss	-96(%ebp), %xmm0
	movss	%xmm4, -76(%ebp)
	movss	LC119, %xmm6
	movss	14484(%ebx), %xmm5
	addss	%xmm4, %xmm3
	movl	%esi, %edx
	movaps	%xmm1, %xmm7
	addss	%xmm2, %xmm0
	mulss	%xmm6, %xmm7
	mulss	%xmm5, %xmm6
	movss	%xmm3, -84(%ebp)
	movss	%xmm0, -88(%ebp)
	cvttss2sil	%xmm7, %eax
	xorps	%xmm7, %xmm7
	cvtsi2ssl	%eax, %xmm7
	cvttss2sil	%xmm6, %eax
	xorps	%xmm6, %xmm6
	subss	%xmm7, %xmm1
	subss	%xmm7, %xmm2
	cvtsi2ssl	%eax, %xmm6
	leal	-56(%ebp), %eax
	addss	%xmm0, %xmm1
	subss	%xmm6, %xmm5
	subss	%xmm6, %xmm4
	addss	%xmm3, %xmm5
	unpcklps	%xmm4, %xmm2
	unpcklps	%xmm5, %xmm1
	movlhps	%xmm1, %xmm2
	movups	%xmm2, -56(%ebp)
	call	__ZN5ImGui7ItemAddERK6ImRectjPS1_i.constprop.0
	movb	%al, -96(%ebp)
	testb	%al, %al
	je	L2892
	movl	-112(%ebp), %eax
	leal	-89(%ebp), %ecx
	movl	%esi, %edx
	andl	$134217728, %eax
	negl	%eax
	sbbl	%eax, %eax
	andl	$1048704, %eax
	movl	%eax, 4(%esp)
	leal	-90(%ebp), %eax
	movl	%eax, (%esp)
	leal	-56(%ebp), %eax
	call	__ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	movzbl	-89(%ebp), %ecx
	movl	_GImGui, %edx
	movb	%al, -116(%ebp)
	movb	%cl, -100(%ebp)
	testb	%al, %al
	je	L2905
	cmpb	$0, 18739(%ebx)
	jne	L2906
	cmpl	18680(%ebx), %edi
	je	L2973
L2906:
	movl	$257, %eax
	orl	$4, 18320(%edx)
	movw	%ax, 16240(%edx)
L2914:
	cmpb	$0, -100(%ebp)
	je	L2908
L2910:
	movzbl	-90(%ebp), %eax
	addl	$25, %eax
L2915:
	addl	$13, %eax
	movl	%edx, -100(%ebp)
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
	movss	14428(%eax), %xmm0
	leal	-40(%ebp), %eax
	mulss	14404(%edx), %xmm0
	movss	%xmm0, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movl	-56(%ebp), %edx
	movl	-52(%ebp), %ecx
	xorps	%xmm0, %xmm0
	movl	%edx, -64(%ebp)
	movl	-48(%ebp), %edx
	movl	%ecx, -60(%ebp)
	movl	-44(%ebp), %ecx
	movl	%edx, -40(%ebp)
	movl	-100(%ebp), %edx
	movl	%ecx, -36(%ebp)
	leal	-40(%ebp), %ecx
	movl	16148(%edx), %edx
	movl	676(%edx), %edx
	movl	%eax, 8(%esp)
	leal	-64(%ebp), %eax
	movl	%ecx, 4(%esp)
	movl	$0, 12(%esp)
	movl	%edx, %ecx
	movl	%eax, (%esp)
	call	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movl	_GImGui, %edx
	subl	$16, %esp
L2916:
	movl	-108(%ebp), %eax
	cmpl	18684(%edx), %eax
	jne	L2917
	cmpb	$0, 18738(%edx)
	jne	L2917
	movl	16148(%edx), %eax
	cmpb	$0, 392(%eax)
	jne	L2917
	movss	-52(%ebp), %xmm6
	movss	588(%eax), %xmm4
	movss	584(%eax), %xmm0
	movss	596(%eax), %xmm7
	movl	676(%eax), %esi
	movss	%xmm6, -100(%ebp)
	movss	-56(%ebp), %xmm2
	movss	-48(%ebp), %xmm5
	movss	-44(%ebp), %xmm3
	movss	%xmm4, -120(%ebp)
	movss	592(%eax), %xmm6
	movl	15440(%edx), %eax
	movss	%xmm0, -116(%ebp)
	movss	%xmm2, -132(%ebp)
	movl	%eax, -40(%ebp)
	movl	15444(%edx), %eax
	movss	%xmm5, -128(%ebp)
	movl	%eax, -36(%ebp)
	movl	15448(%edx), %eax
	movss	%xmm3, -124(%ebp)
	movl	%eax, -32(%ebp)
	movl	15452(%edx), %eax
	movss	%xmm7, -112(%ebp)
	movl	%eax, -28(%ebp)
	movss	15452(%edx), %xmm1
	leal	-40(%ebp), %eax
	mulss	14404(%edx), %xmm1
	movss	%xmm6, -108(%ebp)
	movss	%xmm1, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	cmpl	$16777215, %eax
	jbe	L2917
	movss	-108(%ebp), %xmm6
	movss	-112(%ebp), %xmm7
	leal	-40(%ebp), %edx
	movl	%esi, %ecx
	movss	-124(%ebp), %xmm3
	movss	-128(%ebp), %xmm5
	movss	-116(%ebp), %xmm0
	movss	-132(%ebp), %xmm2
	minss	%xmm7, %xmm3
	minss	%xmm6, %xmm5
	movss	-120(%ebp), %xmm4
	movss	-100(%ebp), %xmm6
	movaps	%xmm3, %xmm1
	movaps	%xmm5, %xmm3
	movaps	%xmm0, %xmm5
	cmpnless	%xmm2, %xmm5
	andps	%xmm5, %xmm0
	andnps	%xmm2, %xmm5
	movaps	%xmm3, %xmm2
	orps	%xmm0, %xmm5
	movaps	%xmm4, %xmm0
	unpcklps	%xmm1, %xmm2
	cmpless	%xmm6, %xmm0
	andps	%xmm0, %xmm6
	andnps	%xmm4, %xmm0
	orps	%xmm6, %xmm0
	unpcklps	%xmm0, %xmm5
	movaps	%xmm3, %xmm0
	movlhps	%xmm2, %xmm5
	movups	%xmm5, -40(%ebp)
	xorps	%xmm2, %xmm2
	movl	$0x3f800000, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ZN10ImDrawList7AddRectERK6ImVec2S2_jfif.part.0.constprop.0.isra.0
	subl	$12, %esp
	.p2align 4
	.p2align 3
L2917:
	leal	-56(%ebp), %ecx
	leal	-88(%ebp), %edx
	movl	%ecx, 8(%esp)
	leal	14564(%ebx), %ecx
	leal	-80(%ebp), %eax
	movl	%ecx, 4(%esp)
	leal	-72(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	-104(%ebp), %ecx
	call	__ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.constprop.0
	cmpb	$0, -96(%ebp)
	je	L2892
	testb	$4, 15(%edi)
	je	L2892
	testb	$32, 18316(%ebx)
	jne	L2892
	movl	_GImGui, %edi
	movl	18592(%edi), %ecx
	subl	$1, %ecx
	movl	%ecx, %esi
	js	L2892
	cmpl	18580(%edi), %ecx
	jge	L2892
	leal	(%ecx,%ecx,4), %eax
	movl	18588(%edi), %edx
	movl	18600(%edi), %ebx
	sall	$3, %eax
	movl	(%edx,%eax), %ecx
	cmpl	%ecx, (%ebx,%eax)
	jne	L2892
	movl	%esi, %ebx
	movl	%esi, %ecx
	leal	-36(%edx,%eax), %eax
	movzbl	-96(%ebp), %esi
	jmp	L2925
	.p2align 4,,10
	.p2align 3
L2927:
	movl	40(%eax), %edx
	testl	%edx, %edx
	je	L2926
	testb	$16, 15(%edx)
	je	L2926
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L2926
	subl	$40, %eax
	testb	$4, 13(%edx)
	jne	L2926
	subl	$1, %ebx
L2925:
	testl	%ebx, %ebx
	jne	L2927
L2926:
	movl	%esi, %eax
	movb	%al, -96(%ebp)
	testb	$4, 23576(%edi)
	jne	L2974
L2928:
	movl	%ebx, %eax
	movl	$1, %edx
	call	__ZN5ImGui17ClosePopupToLevelEib
	movl	18680(%edi), %eax
	testl	%eax, %eax
	je	L2892
	movb	$1, 392(%eax)
	jmp	L2892
	.p2align 4,,10
	.p2align 3
L2899:
	movss	560(%edi), %xmm1
	movss	-72(%ebp), %xmm3
	subss	%xmm2, %xmm1
	movaps	%xmm1, %xmm0
	cmpnless	%xmm3, %xmm0
	andps	%xmm0, %xmm1
	andnps	%xmm3, %xmm0
	orps	%xmm1, %xmm0
	movss	%xmm0, -96(%ebp)
	jmp	L2901
	.p2align 4,,10
	.p2align 3
L2905:
	cmpb	$0, -100(%ebp)
	je	L2930
	testb	$2, -109(%ebp)
	je	L2912
	cmpb	$0, 18739(%ebx)
	jne	L2912
	cmpl	%edi, 18680(%ebx)
	jne	L2912
	movl	18732(%ebx), %ecx
	movl	%ecx, %esi
	cmpl	%ecx, 384(%edi)
	jne	L2912
L2913:
	movss	316(%edi), %xmm1
	movss	312(%edi), %xmm0
	movl	%esi, %ecx
	movl	18280(%ebx), %eax
	movl	%esi, 18732(%edx)
	unpcklps	%xmm1, %xmm0
	movups	-56(%ebp), %xmm1
	movl	18680(%edx), %esi
	movl	%eax, 18688(%edx)
	movl	-108(%ebp), %eax
	movlhps	%xmm0, %xmm0
	subps	%xmm0, %xmm1
	movl	%eax, 18684(%edx)
	movl	%eax, 856(%esi,%ecx,4)
	addl	$54, %ecx
	sall	$4, %ecx
	addl	18680(%edx), %ecx
	movups	%xmm1, (%ecx)
	movb	$1, 18738(%ebx)
	cmpb	$0, -116(%ebp)
	jne	L2906
	movb	$0, -96(%ebp)
	jmp	L2914
	.p2align 4,,10
	.p2align 3
L2912:
	movb	$0, -96(%ebp)
	jmp	L2910
	.p2align 4,,10
	.p2align 3
L2930:
	movb	$0, -96(%ebp)
L2908:
	cmpb	$0, -124(%ebp)
	je	L2916
	movl	$24, %eax
	jmp	L2915
	.p2align 4,,10
	.p2align 3
L2972:
	movl	-104(%ebp), %ecx
	movl	-108(%ebp), %eax
	movl	$11, %edx
	call	__ZN5ImGui15DebugHookIdInfoEjiPKvS1_.constprop.0
	jmp	L2894
	.p2align 4,,10
	.p2align 3
L2973:
	movl	18732(%ebx), %ecx
	movl	%ecx, %esi
	cmpl	%ecx, 384(%edi)
	jne	L2906
	jmp	L2913
L2974:
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$LC122, (%esp)
	call	__ZN5ImGui8DebugLogEPKcz
	jmp	L2928
	.cfi_endproc
LFE439:
	.p2align 4
	.globl	__ZN5ImGui12TabBarAddTabEP11ImGuiTabBariP11ImGuiWindow
	.def	__ZN5ImGui12TabBarAddTabEP11ImGuiTabBariP11ImGuiWindow;	.scl	2;	.type	32;	.endef
__ZN5ImGui12TabBarAddTabEP11ImGuiTabBariP11ImGuiWindow:
LFB460:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	movl	%edx, %eax
	orl	$1048576, %eax
	subl	$68, %esp
	.cfi_def_cfa_offset 80
	cmpb	$0, 233(%ecx)
	movl	_GImGui, %esi
	cmovne	%edx, %eax
	movl	164(%ecx), %edx
	movl	$0, 40(%esp)
	movl	$0, 44(%esp)
	movl	%eax, 24(%esp)
	movl	32(%ebx), %eax
	movl	$0, 48(%esp)
	movl	$0, 64(%esp)
	movl	$-1, 36(%esp)
	movl	$0xbf800000, 52(%esp)
	movl	$-1, 56(%esp)
	movl	$-1, 60(%esp)
	movl	%edx, 20(%esp)
	cmpl	$-1, %eax
	jne	L2977
	movl	16048(%esi), %eax
	subl	$1, %eax
L2977:
	movl	%eax, 32(%esp)
	movl	(%ebx), %edx
	movl	%ecx, 28(%esp)
	cmpl	4(%ebx), %edx
	je	L2995
L2978:
	movl	8(%ebx), %esi
L2981:
	leal	(%edx,%edx,2), %edx
	sall	$4, %edx
	leal	(%esi,%edx), %eax
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
	movl	56(%esp), %edx
	movl	%edx, 36(%eax)
	movl	60(%esp), %edx
	movl	%edx, 40(%eax)
	movl	64(%esp), %edx
	movl	%edx, 44(%eax)
	addl	$1, (%ebx)
	addl	$68, %esp
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
L2995:
	.cfi_restore_state
	leal	1(%edx), %eax
	testl	%edx, %edx
	jne	L2979
	movl	$8, %ecx
	cmpl	%ecx, %eax
	cmovge	%eax, %ecx
L2980:
	leal	(%ecx,%ecx,2), %eax
	sall	$4, %eax
	testl	%esi, %esi
	je	L2982
	addl	$1, 188(%esi)
L2982:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 12(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	8(%ebx), %edx
	movl	12(%esp), %ecx
	movl	%eax, %esi
	testl	%edx, %edx
	je	L2983
	movl	(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%esi, (%esp)
	leal	(%eax,%eax,2), %eax
	movl	%ecx, 16(%esp)
	sall	$4, %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	_GImGui, %eax
	movl	12(%esp), %edx
	movl	16(%esp), %ecx
	testl	%eax, %eax
	je	L2984
	subl	$1, 188(%eax)
L2984:
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 12(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	12(%esp), %ecx
L2983:
	movl	%esi, 8(%ebx)
	movl	(%ebx), %edx
	movl	%ecx, 4(%ebx)
	jmp	L2981
	.p2align 4,,10
	.p2align 3
L2979:
	movl	%edx, %ecx
	shrl	$31, %ecx
	addl	%edx, %ecx
	sarl	%ecx
	addl	%edx, %ecx
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	cmpl	%ecx, %edx
	jge	L2978
	jmp	L2980
	.cfi_endproc
LFE460:
	.p2align 4
	.globl	__ZN5ImGui15TabItemCalcSizeEP11ImGuiWindow
	.def	__ZN5ImGui15TabItemCalcSizeEP11ImGuiWindow;	.scl	2;	.type	32;	.endef
__ZN5ImGui15TabItemCalcSizeEP11ImGuiWindow:
LFB464:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -16
	movl	_GImGui, %ebx
	movl	%esi, 24(%esp)
	.cfi_offset 6, -12
	movl	4(%eax), %esi
	movss	14468(%ebx), %xmm0
	movss	14464(%ebx), %xmm3
	movss	15516(%ebx), %xmm2
	movaps	%xmm0, %xmm1
	addss	%xmm0, %xmm1
	cmpb	$0, 233(%eax)
	jne	L2997
	movss	LC114, %xmm0
	movl	%edi, 28(%esp)
	.cfi_offset 7, -8
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	12(%eax), %edi
	movl	%esi, %eax
	movss	%xmm2, 16(%esp)
	movss	%xmm3, 12(%esp)
	movss	%xmm1, 8(%esp)
	call	__ZN5ImGui12CalcTextSizeEPKcS1_bf
	movss	12(%esp), %xmm3
	andl	$1048576, %edi
	movss	8(%esp), %xmm1
	movl	%eax, (%esp)
	movss	(%esp), %xmm0
	movl	%edx, 4(%esp)
	movss	16(%esp), %xmm2
	addss	4(%esp), %xmm1
	addss	%xmm3, %xmm0
	jne	L3003
	addss	LC112, %xmm3
	movl	28(%esp), %edi
	.cfi_restore 7
	addss	%xmm3, %xmm0
L2999:
	mulss	LC123, %xmm2
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	minss	%xmm2, %xmm0
	movss	%xmm0, (%esp)
	movl	(%esp), %eax
	movss	%xmm1, (%esp)
	movl	(%esp), %edx
	addl	$32, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2997:
	.cfi_restore_state
	movl	$1, %ecx
	xorl	%edx, %edx
	movl	%esi, %eax
	movss	%xmm2, 16(%esp)
	movss	LC114, %xmm0
	movss	%xmm3, 12(%esp)
	movss	%xmm1, 8(%esp)
	call	__ZN5ImGui12CalcTextSizeEPKcS1_bf
	movss	12(%esp), %xmm3
	movss	8(%esp), %xmm1
	movl	%eax, (%esp)
	movss	(%esp), %xmm0
	movl	%edx, 4(%esp)
	addss	4(%esp), %xmm1
	addss	%xmm3, %xmm0
	movss	16(%esp), %xmm2
L3000:
	movss	14488(%ebx), %xmm4
	addss	%xmm2, %xmm4
	addss	%xmm4, %xmm3
	addss	%xmm3, %xmm0
	jmp	L2999
L3003:
	.cfi_offset 7, -8
	movl	28(%esp), %edi
	.cfi_restore 7
	jmp	L3000
	.cfi_endproc
LFE464:
	.p2align 4
	.globl	_mi_free
	.def	_mi_free;	.scl	2;	.type	32;	.endef
_mi_free:
LFB466:
	.cfi_startproc
	leal	-1(%eax), %edx
	cmpl	$2097151, %edx
	jbe	L3009
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	%ebx, (%esp)
	.cfi_offset 3, -16
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L3004
	andl	$-2097152, %edx
	movl	%edi, 8(%esp)
	movl	%esi, 4(%esp)
	.cfi_offset 7, -8
	.cfi_offset 6, -12
	subl	%edx, %eax
/APP
 # 2248 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:24, %esi 
 # 0 "" 2
/NO_APP
	movl	80(%edx), %ecx
	shrl	%cl, %eax
	leal	(%eax,%eax,2), %eax
	sall	$4, %eax
	leal	88(%edx,%eax), %edi
	cmpl	%esi, 76(%edx)
	jne	L3006
	addl	%edx, %eax
	cmpb	$0, 94(%eax)
	jne	L3007
	movl	100(%eax), %edx
	movl	%edx, (%ebx)
	subw	$1, 104(%eax)
	movl	%ebx, 100(%eax)
	je	L3013
	movl	4(%esp), %esi
	.cfi_restore 6
	movl	8(%esp), %edi
	.cfi_restore 7
L3004:
	movl	(%esp), %ebx
	addl	$12, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L3009:
	ret
	.p2align 4,,10
	.p2align 3
L3006:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movl	4(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	%ebx, %ecx
	movl	%edi, %eax
	movl	(%esp), %ebx
	movl	8(%esp), %edi
	.cfi_restore 7
	addl	$12, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__ZL18mi_free_generic_mtP9mi_page_sP12mi_segment_sPv
	.p2align 4,,10
	.p2align 3
L3007:
	.cfi_restore_state
	movl	4(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	%ebx, %edx
	movl	%edi, %eax
	movl	(%esp), %ebx
	movl	8(%esp), %edi
	.cfi_restore 7
	addl	$12, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__ZL21mi_free_generic_localP9mi_page_sP12mi_segment_sPv.isra.0
	.p2align 4,,10
	.p2align 3
L3013:
	.cfi_restore_state
	movl	4(%esp), %esi
	.cfi_restore 6
	movl	(%esp), %ebx
	movl	%edi, %eax
	movl	8(%esp), %edi
	.cfi_restore 7
	addl	$12, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z15_mi_page_retireP9mi_page_s
	.cfi_endproc
LFE466:
	.p2align 4
	.def	__ZL16mi_free_block_mtP9mi_page_sP12mi_segment_sP10mi_block_s;	.scl	3;	.type	32;	.endef
__ZL16mi_free_block_mtP9mi_page_sP12mi_segment_sP10mi_block_s:
LFB467:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%edi, 20(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	movl	__ZL7options+520, %eax
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	movl	%ecx, %esi
	testl	%eax, %eax
	jne	L3041
L3015:
	cmpl	$3, 84(%ebx)
	je	L3042
L3023:
	movl	12(%esp), %ebx
	movl	%esi, %edx
	movl	%edi, %eax
	movl	16(%esp), %esi
	movl	20(%esp), %edi
	addl	$28, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	__ZL24mi_free_block_delayed_mtP9mi_page_sP10mi_block_s
	.p2align 4,,10
	.p2align 3
L3041:
	.cfi_restore_state
	movl	76(%edx), %ecx
	testl	%ecx, %ecx
	jne	L3015
	movl	__tls_index, %eax
	movl	%fs:44, %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$__mi_heap_empty, __mi_heap_default@secrel32(%eax)
	je	L3015
	movl	%eax, 8(%esp)
	call	_mi_thread_init
	movl	8(%esp), %eax
	movl	__mi_heap_default@secrel32(%eax), %eax
	movl	%eax, 8(%esp)
	movl	76(%ebx), %edx
	testl	%edx, %edx
	jne	L3015
	movl	(%eax), %eax
	movl	68(%eax), %ecx
	cmpl	%ecx, 28(%ebx)
	jne	L3015
	movl	8(%esp), %ecx
	movl	12(%ecx), %ecx
	cmpl	$6, 16(%ebx)
	je	L3043
	testl	%ecx, %ecx
	jne	L3015
	movl	$1, %edx
	movl	%ebx, %eax
	call	__ZL35mi_arena_segment_os_clear_abandonedP12mi_segment_sb
	testb	%al, %al
	je	L3015
L3021:
	movl	8(%esp), %edx
	xorl	%ecx, %ecx
	movl	(%edx), %eax
	movl	$0, (%esp)
	movl	%eax, 8(%esp)
	addl	$20, %eax
	movl	%eax, 4(%esp)
	movl	%ebx, %eax
	call	__ZL18mi_segment_reclaimP12mi_segment_sP9mi_heap_sjPbP17mi_segments_tld_s
	testl	%eax, %eax
	je	L3015
	movl	12(%esp), %ebx
	movl	20(%esp), %edi
	movl	%esi, %eax
	movl	16(%esp), %esi
	addl	$28, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	_mi_free
	.p2align 4,,10
	.p2align 3
L3042:
	.cfi_restore_state
	cmpb	$0, 20(%ebx)
	je	L3023
	testb	$2, 1(%edi)
	je	L3023
	leal	-1(%esi), %eax
	testl	%esi, %esi
	je	L3023
	cmpl	$2097151, %eax
	jbe	L3023
	andl	$-2097152, %eax
	movl	%esi, %edx
	movl	80(%eax), %ecx
	subl	%eax, %edx
	shrl	%cl, %edx
	leal	(%edx,%edx,2), %edx
	sall	$4, %edx
	leal	(%eax,%edx), %ecx
	testb	$2, 94(%ecx)
	jne	L3024
	movl	108(%ecx), %eax
L3025:
	cmpl	$4, %eax
	jbe	L3023
	leal	-4(%eax), %edx
	movl	$__mi_stats_main, %ecx
	leal	4(%esi), %eax
	call	__Z12_mi_os_resetPvjP10mi_stats_s.isra.0
	jmp	L3023
L3043:
	movl	4(%ebx), %edx
	cmpb	$1, 8(%ebx)
	je	L3027
	testl	%ecx, %ecx
	je	L3039
L3027:
	cmpl	%edx, %ecx
	jne	L3015
L3039:
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	movl	64(%eax), %ecx
	addl	%ecx, %ecx
	cmpl	%ecx, 48(%eax)
	jb	L3040
	testl	%edx, %edx
	leal	-4(,%edx,4), %eax
	movl	$528, %edx
	movl	(%ebx), %ecx
	cmovle	%edx, %eax
	movl	$1, %ebp
	sall	%cl, %ebp
	movl	__ZL9mi_arenas(%eax), %edx
	movl	%ecx, %eax
	shrl	$5, %ecx
	andl	$31, %eax
	movl	116(%edx), %edx
	lock btrl	%eax, (%edx,%ecx,4)
	setc	%dl
	movl	%eax, %ecx
	movzbl	%dl, %edx
	sall	%cl, %edx
	cmpl	%ebp, %edx
	je	L3044
L3040:
	movl	24(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L3015
L3044:
	.cfi_restore_state
	movl	28(%ebx), %eax
	lock subl	$1, (%eax)
/APP
 # 2248 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	movl %fs:24, %eax 
 # 0 "" 2
/NO_APP
	movl	%eax, 76(%ebx)
	movl	24(%esp), %ebp
	.cfi_restore 5
	jmp	L3021
L3024:
	leal	88(%eax,%edx), %eax
	movl	%esi, %edx
	call	__ZL30mi_page_usable_aligned_size_ofPK9mi_page_sPKv
	jmp	L3025
	.cfi_endproc
LFE467:
	.p2align 4
	.def	__ZL18mi_free_generic_mtP9mi_page_sP12mi_segment_sPv;	.scl	3;	.type	32;	.endef
__ZL18mi_free_generic_mtP9mi_page_sP12mi_segment_sPv:
LFB479:
	.cfi_startproc
	.cfi_personality 0x9b,LDFCM0
	.cfi_lsda 0x1b,LLSDA479
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%edx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %ebx
	movl	%ecx, %eax
	movzbl	18(%ebx), %ecx
	subl	24(%ebx), %eax
	testb	%cl, %cl
	je	L3046
	movl	$-1, %edx
	sall	%cl, %edx
	notl	%edx
	andl	%eax, %edx
L3047:
	subl	%edx, %esi
	movl	%ebx, %eax
	movl	%edi, %edx
	movl	%esi, %ecx
	call	__ZL16mi_free_block_mtP9mi_page_sP12mi_segment_sP10mi_block_s
	popl	%ebx
	.cfi_remember_state
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
L3046:
	.cfi_restore_state
	xorl	%edx, %edx
	divl	20(%ebx)
	jmp	L3047
	.cfi_endproc
LFE479:
	.section	.gcc_except_table,"w"
LLSDA479:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE479-LLSDACSB479
LLSDACSB479:
LLSDACSE479:
	.text
	.p2align 4
	.globl	_mi_usable_size
	.def	_mi_usable_size;	.scl	2;	.type	32;	.endef
_mi_usable_size:
LFB478:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$1, %eax
	cmpl	$2097151, %eax
	jbe	L3052
	testl	%ebx, %ebx
	je	L3052
	andl	$-2097152, %eax
	movl	%ebx, %edx
	movl	80(%eax), %ecx
	subl	%eax, %edx
	shrl	%cl, %edx
	leal	(%edx,%edx,2), %edx
	sall	$4, %edx
	leal	(%eax,%edx), %ecx
	testb	$2, 94(%ecx)
	jne	L3051
	movl	108(%ecx), %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L3052:
	.cfi_restore_state
	xorl	%eax, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L3051:
	.cfi_restore_state
	leal	88(%eax,%edx), %eax
	movl	%ebx, %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__ZL30mi_page_usable_aligned_size_ofPK9mi_page_sPKv
	.cfi_endproc
LFE478:
	.p2align 4
	.globl	_mi_collect.constprop.0
	.def	_mi_collect.constprop.0;	.scl	2;	.type	32;	.endef
_mi_collect.constprop.0:
LFB481:
	.cfi_startproc
	.cfi_personality 0x9b,LDFCM0
	.cfi_lsda 0x1b,LLSDA481
	movl	%fs:44, %edx
	movl	__tls_index, %eax
	movl	(%edx,%eax,4), %eax
	movl	$1, %edx
	movl	__mi_heap_default@secrel32(%eax), %eax
	call	__ZL18mi_heap_collect_exP9mi_heap_s12mi_collect_e
	ret
	.cfi_endproc
LFE481:
	.section	.gcc_except_table,"w"
LLSDA481:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE481-LLSDACSB481
LLSDACSB481:
LLSDACSE481:
	.text
	.p2align 4
	.globl	_mi_register_output.constprop.0
	.def	_mi_register_output.constprop.0;	.scl	2;	.type	32;	.endef
_mi_register_output.constprop.0:
LFB483:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	$16384, %eax
	movl	$__Z6mi_logPKcPv, __ZL14mi_out_default
	movl	$0, __ZL10mi_out_arg
	lock xaddl	%eax, __ZL7out_len
	movl	$16384, %edx
	cmpl	%edx, %eax
	cmova	%edx, %eax
	movb	$0, __ZL7out_buf(%eax)
	movl	$0, 4(%esp)
	movl	$__ZL7out_buf, (%esp)
	call	__Z6mi_logPKcPv
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE483:
	.section .rdata,"dr"
	.align 4
LC124:
	.ascii "unable to allocate memory (%zu bytes)\12\0"
	.text
	.p2align 4
	.globl	__Z18_mi_malloc_genericP9mi_heap_sjbj
	.def	__Z18_mi_malloc_genericP9mi_heap_sjbj;	.scl	2;	.type	32;	.endef
__Z18_mi_malloc_genericP9mi_heap_sjbj:
LFB488:
	.cfi_startproc
	.cfi_personality 0x9b,LDFCM0
	.cfi_lsda 0x1b,LLSDA488
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -16
	movl	%eax, %ebx
	movl	%esi, 20(%esp)
	.cfi_offset 6, -12
	movl	%edx, %esi
	testb	%cl, %cl
	jne	L3096
L3063:
	cmpl	$__mi_heap_empty, %ebx
	je	L3099
L3059:
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	__Z17_mi_deferred_freeP9mi_heap_sb
	movl	%ebx, %eax
	call	__Z29_mi_heap_delayed_free_partialP9mi_heap_s
	movl	32(%esp), %ecx
	movl	%esi, %edx
	movl	%ebx, %eax
	call	__ZL12mi_find_pageP9mi_heap_sjj
	testl	%eax, %eax
	je	L3100
L3061:
	movl	8(%eax), %edx
	movl	$0, 32(%esp)
	testl	%edx, %edx
	je	L3063
	movl	(%edx), %ecx
	addw	$1, 16(%eax)
	movl	%ecx, 8(%eax)
L3057:
	movl	16(%esp), %ebx
	movl	20(%esp), %esi
	movl	%edx, %eax
	addl	$28, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L3096:
	.cfi_restore_state
	movl	%edi, 24(%esp)
	.cfi_offset 7, -8
L3058:
	cmpl	$__mi_heap_empty, %ebx
	je	L3101
L3065:
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	__Z17_mi_deferred_freeP9mi_heap_sb
	movl	%ebx, %eax
	call	__Z29_mi_heap_delayed_free_partialP9mi_heap_s
	movl	32(%esp), %ecx
	movl	%esi, %edx
	movl	%ebx, %eax
	call	__ZL12mi_find_pageP9mi_heap_sjj
	movl	%eax, %edi
	testl	%eax, %eax
	je	L3102
L3066:
	testb	$8, 1(%edi)
	movl	8(%edi), %edx
	jne	L3068
	movl	$0, 32(%esp)
	testl	%edx, %edx
	je	L3058
	movl	(%edx), %eax
	addw	$1, 16(%edi)
	movl	%eax, 8(%edi)
	movzbl	7(%edi), %eax
	movb	%al, 12(%esp)
	andl	$1, %eax
	je	L3103
	movl	$0, (%edx)
	movl	24(%esp), %edi
	.cfi_restore 7
	jmp	L3057
	.p2align 4,,10
	.p2align 3
L3099:
	call	_mi_thread_init
	movl	__tls_index, %eax
	movl	%fs:44, %edx
	movl	(%edx,%eax,4), %eax
	movl	__mi_heap_default@secrel32(%eax), %ebx
	cmpl	$__mi_heap_empty, %ebx
	jne	L3059
	xorl	%edx, %edx
	jmp	L3057
	.p2align 4,,10
	.p2align 3
L3100:
	movl	$1, %edx
	movl	%ebx, %eax
	call	__ZL18mi_heap_collect_exP9mi_heap_s12mi_collect_e
	movl	32(%esp), %ecx
	movl	%esi, %edx
	movl	%ebx, %eax
	call	__ZL12mi_find_pageP9mi_heap_sjj
	testl	%eax, %eax
	jne	L3061
L3062:
	movl	%esi, 8(%esp)
	movl	$LC124, 4(%esp)
	movl	$12, (%esp)
	call	__Z17_mi_error_messageiPKcz
	xorl	%edx, %edx
	jmp	L3057
	.p2align 4,,10
	.p2align 3
L3103:
	.cfi_offset 7, -8
	movl	20(%edi), %ecx
	cmpb	$0, __mi_cpu_has_fsrm
	je	L3074
L3098:
	movl	%edx, %edi
/APP
 # 1857 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	rep stosb
 # 0 "" 2
/NO_APP
	movl	24(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L3057
	.p2align 4,,10
	.p2align 3
L3074:
	.cfi_restore_state
	movl	%edx, (%esp)
	movl	%ecx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, 12(%esp)
	call	_memset
	movl	12(%esp), %edx
	movl	24(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L3057
	.p2align 4,,10
	.p2align 3
L3101:
	.cfi_restore_state
	call	_mi_thread_init
	movl	__tls_index, %eax
	movl	%fs:44, %edx
	movl	(%edx,%eax,4), %eax
	movl	__mi_heap_default@secrel32(%eax), %ebx
	cmpl	$__mi_heap_empty, %ebx
	jne	L3065
	movl	24(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	xorl	%edx, %edx
	jmp	L3057
	.p2align 4,,10
	.p2align 3
L3102:
	.cfi_restore_state
	movl	$1, %edx
	movl	%ebx, %eax
	call	__ZL18mi_heap_collect_exP9mi_heap_s12mi_collect_e
	movl	32(%esp), %ecx
	movl	%esi, %edx
	movl	%ebx, %eax
	call	__ZL12mi_find_pageP9mi_heap_sjj
	movl	%eax, %edi
	testl	%eax, %eax
	jne	L3066
	movl	24(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L3062
	.p2align 4,,10
	.p2align 3
L3068:
	.cfi_restore_state
	testl	%edx, %edx
	je	L3104
	movl	(%edx), %eax
	addw	$1, 16(%edi)
	movl	%eax, 8(%edi)
L3073:
	movl	20(%edi), %ecx
	cmpb	$0, __mi_cpu_has_fsrm
	je	L3074
	xorl	%eax, %eax
	jmp	L3098
L3104:
	movl	$0, (%esp)
	movl	%esi, %edx
	xorl	%ecx, %ecx
	movl	%ebx, %eax
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	movl	%eax, %edx
	jmp	L3073
	.cfi_endproc
LFE488:
	.section	.gcc_except_table,"w"
LLSDA488:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE488-LLSDACSB488
LLSDACSB488:
LLSDACSE488:
	.text
	.p2align 4
	.def	__ZL40mi_heap_malloc_zero_aligned_at_overallocP9mi_heap_sjjjb.constprop.0;	.scl	3;	.type	32;	.endef
__ZL40mi_heap_malloc_zero_aligned_at_overallocP9mi_heap_sjjjb.constprop.0:
LFB495:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -16
	movl	%ecx, %ebx
	movl	%esi, 8(%esp)
	.cfi_offset 6, -12
	movl	%eax, %esi
	cmpl	$1048576, %ecx
	ja	L3125
	movl	%edi, 12(%esp)
	.cfi_offset 7, -8
	leal	-1(%edx,%ecx), %edi
	cmpl	$512, %edi
	ja	L3109
	leal	2(%edx,%ecx), %edx
	shrl	$2, %edx
	movl	184(%eax,%edx,4), %edx
	movl	8(%edx), %eax
	testl	%eax, %eax
	je	L3109
	movl	(%eax), %ecx
	addw	$1, 16(%edx)
	movl	%ecx, 8(%edx)
	movl	12(%esp), %edi
	.cfi_restore 7
L3108:
	movl	20(%esp), %edx
	leal	-1(%ebx), %ecx
	addl	%eax, %edx
	andl	%edx, %ecx
	je	L3105
	addl	%eax, %ebx
	subl	%ecx, %ebx
	cmpl	%ebx, %eax
	je	L3112
	leal	-1(%eax), %edx
	andl	$-2097152, %edx
	movl	80(%edx), %ecx
	subl	%edx, %eax
	shrl	%cl, %eax
	leal	(%eax,%eax,2), %eax
	sall	$4, %eax
	orb	$2, 94(%edx,%eax)
L3112:
	movl	%ebx, %eax
L3105:
	movl	4(%esp), %ebx
	movl	8(%esp), %esi
	addl	$16, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L3109:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movl	$0, (%esp)
	movl	%edi, %edx
	xorl	%ecx, %ecx
	movl	%esi, %eax
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	movl	12(%esp), %edi
	.cfi_restore 7
	testl	%eax, %eax
	jne	L3108
	jmp	L3105
	.p2align 4,,10
	.p2align 3
L3125:
	movl	20(%esp), %eax
	testl	%eax, %eax
	jne	L3113
	movl	$513, %eax
	movl	%ecx, (%esp)
	cmpl	%eax, %edx
	cmovb	%eax, %edx
	xorl	%ecx, %ecx
	movl	%esi, %eax
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	testl	%eax, %eax
	jne	L3108
	jmp	L3105
	.p2align 4,,10
	.p2align 3
L3113:
	xorl	%eax, %eax
	jmp	L3105
	.cfi_endproc
LFE495:
	.p2align 4
	.globl	__ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_sjjjb.constprop.0
	.def	__ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_sjjjb.constprop.0;	.scl	2;	.type	32;	.endef
__ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_sjjjb.constprop.0:
LFB503:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	movl	32(%esp), %ebp
	testl	%edx, %edx
	js	L3143
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	movl	%ecx, %esi
	movl	%edi, 20(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	cmpl	%ecx, %edx
	jb	L3128
	testl	%ebp, %ebp
	je	L3159
L3128:
	movl	%ebp, 32(%esp)
	movl	%esi, %ecx
	movl	24(%esp), %ebp
	movl	%ebx, %edx
	movl	16(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	%edi, %eax
	movl	20(%esp), %edi
	.cfi_restore 7
	addl	$28, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	__ZL40mi_heap_malloc_zero_aligned_at_overallocP9mi_heap_sjjjb.constprop.0
	.p2align 4,,10
	.p2align 3
L3159:
	.cfi_restore_state
	leal	-1(%ecx), %eax
	cmpl	$16, %ecx
	ja	L3160
L3129:
	movl	%eax, 4(%esp)
	cmpl	$512, %ebx
	ja	L3140
	leal	3(%ebx), %ecx
	shrl	$2, %ecx
L3132:
	movl	184(%edi,%ecx,4), %edx
	movl	8(%edx), %eax
	testl	%eax, %eax
	je	L3140
	movl	(%eax), %ecx
	addw	$1, 16(%edx)
	movl	%ecx, 8(%edx)
L3142:
	testl	%eax, 4(%esp)
	jne	L3161
	movl	12(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	20(%esp), %edi
	.cfi_restore 7
	movl	24(%esp), %ebp
	addl	$28, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L3160:
	.cfi_restore_state
	cmpl	$1048576, %edx
	ja	L3130
	leal	3(%edx), %edx
	movl	%edx, %ecx
	shrl	$2, %ecx
	cmpl	$7, %edx
	jbe	L3162
	cmpl	$4, %ecx
	ja	L3133
	leal	1(%ecx), %edx
	andl	$254, %edx
	leal	(%edx,%edx,2), %edx
	movl	__mi_heap_empty+708(,%edx,4), %edx
	cmpl	$65536, %edx
	ja	L3128
	movl	%eax, 4(%esp)
	testl	%edx, %eax
	je	L3132
	jmp	L3128
	.p2align 4,,10
	.p2align 3
L3143:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	movl	24(%esp), %ebp
	xorl	%eax, %eax
	addl	$28, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L3133:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	leal	-1(%ecx), %edx
	movl	%edx, 4(%esp)
	leal	3(%ecx), %edx
	andl	$-4, %edx
	subl	$1, %edx
	cmpl	$17, %ecx
	cmovnb	4(%esp), %edx
	bsrl	%edx, %ecx
	movl	%edx, 4(%esp)
	xorl	$31, %ecx
	movl	%ecx, %edx
	movl	$29, %ecx
	subl	%edx, %ecx
	movl	%edx, 8(%esp)
	movl	4(%esp), %edx
	shrl	%cl, %edx
	movl	%edx, %ecx
	andl	$3, %ecx
	movb	%cl, 4(%esp)
	movzbl	4(%esp), %edx
	movl	$31, %ecx
	subl	8(%esp), %ecx
	leal	-3(%edx,%ecx,4), %ecx
	movzbl	%cl, %ecx
	leal	(%ecx,%ecx,2), %edx
	movl	__mi_heap_empty+708(,%edx,4), %edx
	cmpl	$65536, %edx
	ja	L3128
	testl	%edx, %eax
	jne	L3128
	jmp	L3129
	.p2align 4,,10
	.p2align 3
L3130:
	movl	__ZL16mi_os_mem_config, %edx
	leal	-1(%edx), %eax
	leal	(%ebx,%eax), %ecx
	testl	%eax, %edx
	jne	L3138
	negl	%edx
	andl	%edx, %ecx
	cmpl	$65536, %ecx
	ja	L3128
L3139:
	leal	-1(%esi), %eax
	movl	%eax, 4(%esp)
	testl	%ecx, %eax
	jne	L3128
L3140:
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	movl	%ebx, %edx
	movl	%edi, %eax
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	jmp	L3142
	.p2align 4,,10
	.p2align 3
L3162:
	movl	%eax, 4(%esp)
	testb	$4, %al
	je	L3132
	jmp	L3128
	.p2align 4,,10
	.p2align 3
L3138:
	movl	%edx, 4(%esp)
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	4(%esp)
	subl	%edx, %ecx
	cmpl	$65536, %ecx
	jbe	L3139
	jmp	L3128
	.p2align 4,,10
	.p2align 3
L3161:
	call	_mi_free
	jmp	L3128
	.cfi_endproc
LFE503:
	.p2align 4
	.globl	__ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_sjjjb.constprop.0
	.def	__ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_sjjjb.constprop.0;	.scl	2;	.type	32;	.endef
__ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_sjjjb.constprop.0:
LFB508:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%ebp, 16(%esp)
	.cfi_offset 5, -8
	movl	24(%esp), %ebp
	movl	%eax, (%esp)
	testl	%ecx, %ecx
	je	L3166
	movl	%edi, 12(%esp)
	.cfi_offset 7, -12
	leal	-1(%ecx), %edi
	testl	%edi, %ecx
	jne	L3178
	cmpl	$512, %edx
	ja	L3167
	cmpl	%ecx, %edx
	jb	L3167
	movl	%ebx, 4(%esp)
	leal	3(%edx), %eax
	.cfi_offset 3, -20
	movl	(%esp), %ebx
	shrl	$2, %eax
	movl	184(%ebx,%eax,4), %ebx
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	L3179
	movl	%esi, 8(%esp)
	.cfi_offset 6, -16
	leal	(%eax,%ebp), %esi
	testl	%edi, %esi
	jne	L3180
	movl	(%eax), %edx
	addw	$1, 16(%ebx)
	movl	%edx, 8(%ebx)
	movl	4(%esp), %ebx
	.cfi_restore 3
	movl	8(%esp), %esi
	.cfi_restore 6
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	16(%esp), %ebp
	addl	$20, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L3179:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	4(%esp), %ebx
	.cfi_restore 3
L3167:
	movl	(%esp), %eax
	movl	12(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	%ebp, 24(%esp)
	movl	16(%esp), %ebp
	addl	$20, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	__ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_sjjjb.constprop.0
	.p2align 4,,10
	.p2align 3
L3178:
	.cfi_restore_state
	movl	12(%esp), %edi
	.cfi_restore 7
L3166:
	movl	16(%esp), %ebp
	xorl	%eax, %eax
	addl	$20, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L3180:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	4(%esp), %ebx
	.cfi_restore 3
	movl	8(%esp), %esi
	.cfi_restore 6
	jmp	L3167
	.cfi_endproc
LFE508:
	.p2align 4
	.globl	_mi_strdup
	.def	_mi_strdup;	.scl	2;	.type	32;	.endef
_mi_strdup:
LFB509:
	.cfi_startproc
	testl	%eax, %eax
	je	L3191
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	__tls_index, %eax
	movl	%fs:44, %edx
	movl	(%edx,%eax,4), %eax
	movl	__mi_heap_default@secrel32(%eax), %edi
	cmpb	$0, (%esi)
	je	L3192
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 4
	.p2align 3
L3184:
	movl	%ebx, %eax
	addl	$1, %ebx
	cmpb	$0, (%esi,%ebx)
	jne	L3184
	addl	$2, %eax
	cmpl	$512, %eax
	ja	L3185
	movl	%ebx, %edx
	shrl	$2, %edx
	addl	$1, %edx
L3183:
	movl	184(%edi,%edx,4), %ecx
	movl	8(%ecx), %edx
	testl	%edx, %edx
	je	L3185
	movl	(%edx), %eax
	addw	$1, 16(%ecx)
	movl	%eax, 8(%ecx)
L3188:
	cmpb	$0, __mi_cpu_has_fsrm
	je	L3189
	movl	%edx, %edi
	movl	%ebx, %ecx
/APP
 # 2169 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	rep movsb
 # 0 "" 2
/NO_APP
L3190:
	movb	$0, (%edx,%ebx)
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%edx, %eax
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
L3189:
	.cfi_restore_state
	movl	%edx, (%esp)
	movl	%ebx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edx, 12(%esp)
	call	_memcpy
	movl	12(%esp), %edx
	jmp	L3190
	.p2align 4,,10
	.p2align 3
L3185:
	movl	$0, (%esp)
	movl	%eax, %edx
	xorl	%ecx, %ecx
	movl	%edi, %eax
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	movl	%eax, %edx
	testl	%eax, %eax
	jne	L3188
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	movl	%edx, %eax
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
L3191:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L3192:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movl	$1, %edx
	xorl	%ebx, %ebx
	movl	$1, %eax
	jmp	L3183
	.cfi_endproc
LFE509:
	.section .rdata,"dr"
LC125:
	.ascii "out of memory in 'new'\0"
	.section	.text.unlikely,"x"
LCOLDB126:
	.text
LHOTB126:
	.p2align 4
	.globl	__Z15mi_heap_try_newP9mi_heap_sjb
	.def	__Z15mi_heap_try_newP9mi_heap_sjb;	.scl	2;	.type	32;	.endef
__Z15mi_heap_try_newP9mi_heap_sjb:
LFB511:
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
	leal	3(%edx), %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	shrl	$2, %esi
	movl	%eax, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	cmpl	$512, %edx
	ja	L3205
L3203:
	call	__ZSt15get_new_handlerv
	testl	%eax, %eax
	je	L3204
	call	*%eax
	movl	184(%ebx,%esi,4), %edx
	movl	8(%edx), %eax
	testl	%eax, %eax
	je	L3220
	movl	(%eax), %ecx
	addw	$1, 16(%edx)
	movl	%ecx, 8(%edx)
L3202:
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
L3221:
	.cfi_restore_state
	call	*%eax
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	movl	%edi, %edx
	movl	%ebx, %eax
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	testl	%eax, %eax
	jne	L3202
L3205:
	call	__ZSt15get_new_handlerv
	testl	%eax, %eax
	jne	L3221
	.p2align 4
	.p2align 3
L3204:
	movl	$LC125, 4(%esp)
	movl	$12, (%esp)
	call	__Z17_mi_error_messageiPKcz
	movl	%ebp, %eax
	testb	%al, %al
	je	L3218
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
L3220:
	.cfi_restore_state
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	movl	%edi, %edx
	movl	%ebx, %eax
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	testl	%eax, %eax
	je	L3203
	jmp	L3202
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__Z15mi_heap_try_newP9mi_heap_sjb.cold;	.scl	3;	.type	32;	.endef
__Z15mi_heap_try_newP9mi_heap_sjb.cold:
LFSB511:
L3218:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$4, (%esp)
	call	___cxa_allocate_exception
	movl	$__ZTVSt9bad_alloc+8, (%eax)
	movl	$__ZNSt9bad_allocD1Ev, 8(%esp)
	movl	$__ZTISt9bad_alloc, 4(%esp)
	movl	%eax, (%esp)
	call	___cxa_throw
	.cfi_endproc
LFE511:
	.text
	.section	.text.unlikely,"x"
LCOLDE126:
	.text
LHOTE126:
	.p2align 4
	.def	__ZL10mi_try_newjb.constprop.0;	.scl	3;	.type	32;	.endef
__ZL10mi_try_newjb.constprop.0:
LFB515:
	.cfi_startproc
	movl	%fs:44, %ecx
	movl	%eax, %edx
	movl	__tls_index, %eax
	movl	(%ecx,%eax,4), %eax
	movl	$1, %ecx
	movl	__mi_heap_default@secrel32(%eax), %eax
	jmp	__Z15mi_heap_try_newP9mi_heap_sjb
	.cfi_endproc
LFE515:
	.p2align 4
	.globl	_mi_new_nothrow
	.def	_mi_new_nothrow;	.scl	2;	.type	32;	.endef
_mi_new_nothrow:
LFB516:
	.cfi_startproc
	.cfi_personality 0x9b,LDFCM0
	.cfi_lsda 0x1b,LLSDA516
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	__tls_index, %eax
	movl	%fs:44, %edx
	movl	(%edx,%eax,4), %eax
	movl	__mi_heap_default@secrel32(%eax), %esi
	cmpl	$512, %ebx
	ja	L3224
	leal	3(%ebx), %eax
	shrl	$2, %eax
	movl	184(%esi,%eax,4), %edx
	movl	8(%edx), %eax
	testl	%eax, %eax
	je	L3224
	movl	(%eax), %ecx
	addw	$1, 16(%edx)
	movl	%ecx, 8(%edx)
L3223:
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
L3224:
	.cfi_restore_state
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	movl	%ebx, %edx
	movl	%esi, %eax
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	testl	%eax, %eax
	jne	L3223
	movl	%ebx, %eax
	call	__ZL10mi_try_newjb.constprop.0
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
LFE516:
	.section	.gcc_except_table,"w"
LLSDA516:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE516-LLSDACSB516
LLSDACSB516:
LLSDACSE516:
	.text
	.p2align 4
	.globl	_mi_stats_print_out.constprop.0
	.def	_mi_stats_print_out.constprop.0;	.scl	2;	.type	32;	.endef
_mi_stats_print_out.constprop.0:
LFB519:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	%esi, 24(%esp)
	movl	%edi, 28(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%eax, %edi
	call	_mi_thread_init
	movl	__tls_index, %eax
	movl	%fs:44, %edx
	movl	(%edx,%eax,4), %eax
	movl	__mi_heap_default@secrel32(%eax), %eax
	movl	(%eax), %esi
	cmpl	$__mi_stats_main-88, %esi
	je	L3230
	movl	%ebp, 32(%esp)
	.cfi_offset 5, -8
	leal	88(%esi), %ebp
	movl	$__mi_stats_main, %eax
	movl	%ebp, %edx
	call	__ZL11mi_stat_addP15mi_stat_count_sPKS_x.constprop.0
	leal	120(%esi), %edx
	movl	$__mi_stats_main+32, %eax
	call	__ZL11mi_stat_addP15mi_stat_count_sPKS_x.constprop.0
	leal	152(%esi), %edx
	movl	$__mi_stats_main+64, %eax
	call	__ZL11mi_stat_addP15mi_stat_count_sPKS_x.constprop.0
	leal	184(%esi), %edx
	movl	$__mi_stats_main+96, %eax
	call	__ZL11mi_stat_addP15mi_stat_count_sPKS_x.constprop.0
	leal	216(%esi), %edx
	movl	$__mi_stats_main+128, %eax
	call	__ZL11mi_stat_addP15mi_stat_count_sPKS_x.constprop.0
	leal	248(%esi), %edx
	movl	$__mi_stats_main+160, %eax
	call	__ZL11mi_stat_addP15mi_stat_count_sPKS_x.constprop.0
	leal	280(%esi), %edx
	movl	$__mi_stats_main+192, %eax
	call	__ZL11mi_stat_addP15mi_stat_count_sPKS_x.constprop.0
	leal	344(%esi), %edx
	movl	$__mi_stats_main+256, %eax
	call	__ZL11mi_stat_addP15mi_stat_count_sPKS_x.constprop.0
	leal	312(%esi), %edx
	movl	$__mi_stats_main+224, %eax
	call	__ZL11mi_stat_addP15mi_stat_count_sPKS_x.constprop.0
	leal	376(%esi), %edx
	movl	$__mi_stats_main+288, %eax
	call	__ZL11mi_stat_addP15mi_stat_count_sPKS_x.constprop.0
	leal	504(%esi), %edx
	movl	$__mi_stats_main+416, %eax
	call	__ZL11mi_stat_addP15mi_stat_count_sPKS_x.constprop.0
	leal	536(%esi), %edx
	movl	$__mi_stats_main+448, %eax
	call	__ZL11mi_stat_addP15mi_stat_count_sPKS_x.constprop.0
	leal	408(%esi), %edx
	movl	$__mi_stats_main+320, %eax
	call	__ZL11mi_stat_addP15mi_stat_count_sPKS_x.constprop.0
	leal	440(%esi), %edx
	movl	$__mi_stats_main+352, %eax
	call	__ZL11mi_stat_addP15mi_stat_count_sPKS_x.constprop.0
	leal	472(%esi), %edx
	movl	$__mi_stats_main+384, %eax
	call	__ZL11mi_stat_addP15mi_stat_count_sPKS_x.constprop.0
	cmpl	$__mi_stats_main-88, %esi
	je	L3255
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -20
	movl	__mi_stats_main+480, %eax
	movl	__mi_stats_main+484, %edx
L3232:
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	568(%esi), %ecx
	adcl	572(%esi), %ebx
	movl	%ecx, 12(%esp)
	movl	%ebx, 16(%esp)
	movl	12(%esp), %ebx
	movl	16(%esp), %ecx
	lock cmpxchg8b	__mi_stats_main+480
	jne	L3232
	movl	__mi_stats_main+488, %eax
	movl	__mi_stats_main+492, %edx
L3233:
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	576(%esi), %ecx
	adcl	580(%esi), %ebx
	movl	%ecx, 12(%esp)
	movl	%ebx, 16(%esp)
	movl	12(%esp), %ebx
	movl	16(%esp), %ecx
	lock cmpxchg8b	__mi_stats_main+488
	jne	L3233
	cmpl	$__mi_stats_main-88, %esi
	je	L3332
	movl	__mi_stats_main+496, %eax
	movl	__mi_stats_main+500, %edx
L3235:
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	584(%esi), %ecx
	adcl	588(%esi), %ebx
	movl	%ecx, 12(%esp)
	movl	%ebx, 16(%esp)
	movl	12(%esp), %ebx
	movl	16(%esp), %ecx
	lock cmpxchg8b	__mi_stats_main+496
	jne	L3235
	movl	__mi_stats_main+504, %eax
	movl	__mi_stats_main+508, %edx
L3236:
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	592(%esi), %ecx
	adcl	596(%esi), %ebx
	movl	%ecx, 12(%esp)
	movl	%ebx, 16(%esp)
	movl	12(%esp), %ebx
	movl	16(%esp), %ecx
	lock cmpxchg8b	__mi_stats_main+504
	jne	L3236
	cmpl	$__mi_stats_main-88, %esi
	je	L3332
	movl	__mi_stats_main+512, %eax
	movl	__mi_stats_main+516, %edx
L3238:
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	600(%esi), %ecx
	adcl	604(%esi), %ebx
	movl	%ecx, 12(%esp)
	movl	%ebx, 16(%esp)
	movl	12(%esp), %ebx
	movl	16(%esp), %ecx
	lock cmpxchg8b	__mi_stats_main+512
	jne	L3238
	movl	__mi_stats_main+520, %eax
	movl	__mi_stats_main+524, %edx
L3239:
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	608(%esi), %ecx
	adcl	612(%esi), %ebx
	movl	%ecx, 12(%esp)
	movl	%ebx, 16(%esp)
	movl	12(%esp), %ebx
	movl	16(%esp), %ecx
	lock cmpxchg8b	__mi_stats_main+520
	jne	L3239
	cmpl	$__mi_stats_main-88, %esi
	je	L3332
	movl	__mi_stats_main+528, %eax
	movl	__mi_stats_main+532, %edx
L3241:
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	616(%esi), %ecx
	adcl	620(%esi), %ebx
	movl	%ecx, 12(%esp)
	movl	%ebx, 16(%esp)
	movl	12(%esp), %ebx
	movl	16(%esp), %ecx
	lock cmpxchg8b	__mi_stats_main+528
	jne	L3241
	movl	__mi_stats_main+536, %eax
	movl	__mi_stats_main+540, %edx
L3242:
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	624(%esi), %ecx
	adcl	628(%esi), %ebx
	movl	%ecx, 12(%esp)
	movl	%ebx, 16(%esp)
	movl	12(%esp), %ebx
	movl	16(%esp), %ecx
	lock cmpxchg8b	__mi_stats_main+536
	jne	L3242
	cmpl	$__mi_stats_main-88, %esi
	je	L3332
	movl	__mi_stats_main+544, %eax
	movl	__mi_stats_main+548, %edx
L3244:
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	632(%esi), %ecx
	adcl	636(%esi), %ebx
	movl	%ecx, 12(%esp)
	movl	%ebx, 16(%esp)
	movl	12(%esp), %ebx
	movl	16(%esp), %ecx
	lock cmpxchg8b	__mi_stats_main+544
	jne	L3244
	movl	__mi_stats_main+552, %eax
	movl	__mi_stats_main+556, %edx
L3245:
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	640(%esi), %ecx
	adcl	644(%esi), %ebx
	movl	%ecx, 12(%esp)
	movl	%ebx, 16(%esp)
	movl	12(%esp), %ebx
	movl	16(%esp), %ecx
	lock cmpxchg8b	__mi_stats_main+552
	jne	L3245
	cmpl	$__mi_stats_main-88, %esi
	je	L3332
	movl	__mi_stats_main+560, %eax
	movl	__mi_stats_main+564, %edx
L3247:
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	648(%esi), %ecx
	adcl	652(%esi), %ebx
	movl	%ecx, 12(%esp)
	movl	%ebx, 16(%esp)
	movl	12(%esp), %ebx
	movl	16(%esp), %ecx
	lock cmpxchg8b	__mi_stats_main+560
	jne	L3247
	movl	__mi_stats_main+568, %eax
	movl	__mi_stats_main+572, %edx
L3248:
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	656(%esi), %ecx
	adcl	660(%esi), %ebx
	movl	%ecx, 12(%esp)
	movl	%ebx, 16(%esp)
	movl	12(%esp), %ebx
	movl	16(%esp), %ecx
	lock cmpxchg8b	__mi_stats_main+568
	jne	L3248
	cmpl	$__mi_stats_main-88, %esi
	je	L3332
	movl	__mi_stats_main+576, %eax
	movl	__mi_stats_main+580, %edx
L3250:
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	664(%esi), %ecx
	adcl	668(%esi), %ebx
	movl	%ecx, 12(%esp)
	movl	%ebx, 16(%esp)
	movl	12(%esp), %ebx
	movl	16(%esp), %ecx
	lock cmpxchg8b	__mi_stats_main+576
	jne	L3250
	movl	__mi_stats_main+584, %eax
	movl	__mi_stats_main+588, %edx
L3251:
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	672(%esi), %ecx
	adcl	676(%esi), %ebx
	movl	%ecx, 12(%esp)
	movl	%ebx, 16(%esp)
	movl	12(%esp), %ebx
	movl	16(%esp), %ecx
	lock cmpxchg8b	__mi_stats_main+584
	jne	L3251
	cmpl	$__mi_stats_main-88, %esi
	je	L3332
	movl	__mi_stats_main+592, %eax
	movl	__mi_stats_main+596, %edx
L3253:
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	680(%esi), %ecx
	adcl	684(%esi), %ebx
	movl	%ecx, 12(%esp)
	movl	%ebx, 16(%esp)
	movl	12(%esp), %ebx
	movl	16(%esp), %ecx
	lock cmpxchg8b	__mi_stats_main+592
	jne	L3253
	movl	__mi_stats_main+600, %eax
	movl	__mi_stats_main+604, %edx
L3254:
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	688(%esi), %ecx
	adcl	692(%esi), %ebx
	movl	%ecx, 12(%esp)
	movl	%ebx, 16(%esp)
	movl	12(%esp), %ebx
	movl	16(%esp), %ecx
	lock cmpxchg8b	__mi_stats_main+600
	jne	L3254
	cmpl	$__mi_stats_main-88, %esi
	je	L3332
	movl	__mi_stats_main+608, %eax
	movl	__mi_stats_main+612, %edx
L3256:
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	696(%esi), %ecx
	adcl	700(%esi), %ebx
	movl	%ecx, 12(%esp)
	movl	%ebx, 16(%esp)
	movl	12(%esp), %ebx
	movl	16(%esp), %ecx
	lock cmpxchg8b	__mi_stats_main+608
	jne	L3256
	movl	__mi_stats_main+616, %eax
	movl	__mi_stats_main+620, %edx
L3257:
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	704(%esi), %ecx
	adcl	708(%esi), %ebx
	movl	%ecx, 12(%esp)
	movl	%ebx, 16(%esp)
	movl	12(%esp), %ebx
	movl	16(%esp), %ecx
	lock cmpxchg8b	__mi_stats_main+616
	jne	L3257
L3332:
	movl	20(%esp), %ebx
	.cfi_restore 3
L3255:
	movl	%ebp, (%esp)
	movl	$672, 8(%esp)
	movl	$0, 4(%esp)
	call	_memset
	movl	32(%esp), %ebp
	.cfi_restore 5
L3230:
	movl	24(%esp), %esi
	movl	%edi, %eax
	movl	28(%esp), %edi
	addl	$36, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	__ZL15_mi_stats_printP10mi_stats_sPU5cdeclFvPKcPvES3_.constprop.0
	.cfi_endproc
LFE519:
	.data
	.align 64
__ZL8tld_main:
	.long	0
	.long	0
	.byte	0
	.space 3
	.long	__mi_heap_main
	.long	__mi_heap_main
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
	.long	0
	.long	0
	.long	__ZL18mi_subproc_default
	.long	__ZL8tld_main+88
	.long	__ZL8tld_main+80
	.long	0
	.long	__ZL8tld_main+88
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
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
.lcomm __ZZL11mi_to_msecs14_LARGE_INTEGERE5mfreq,8,8
.lcomm __ZL21pGetProcessMemoryInfo,4,4
.lcomm __ZL14mi_segment_map,8,4
.lcomm __ZL12deferred_arg,4,4
.lcomm __ZL13deferred_free,4,4
.lcomm __ZZL17win_virtual_allocPvjjmbbPbE17large_page_try_ok,4,4
.lcomm __ZL11error_count,4,4
.lcomm __ZL12mi_error_arg,4,4
.lcomm __ZL16mi_error_handler,4,4
.lcomm __ZL13warning_count,4,4
	.section	.tls$,"dw"
__ZL7recurse:
	.space 1
.lcomm __ZL10mi_out_arg,4,4
.lcomm __ZL14mi_out_default,4,4
.lcomm __ZL7out_buf,16385,32
.lcomm __ZL7out_len,4,4
.lcomm __ZL13mi_clock_diff,8,8
.lcomm __ZL16mi_process_start,8,8
.lcomm __ZZL25win_enable_large_os_pagesPjE17large_initialized,1,1
.lcomm __ZL21pGetNumaProcessorNode,4,4
.lcomm __ZL27pGetNumaNodeProcessorMaskEx,4,4
.lcomm __ZL23pGetNumaProcessorNodeEx,4,4
.lcomm __ZL28pGetCurrentProcessorNumberEx,4,4
.lcomm __ZL14pVirtualAlloc2,4,4
.lcomm __ZZL33mi_process_setup_auto_thread_donevE15tls_initialized,1,1
.lcomm __ZZ15mi_process_initE12process_init,4,4
.lcomm __ZL18mi_subproc_default,84,64
	.data
	.align 4
__ZL12thread_count:
	.long	1
	.align 64
__mi_heap_main:
	.long	__ZL8tld_main
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-2073254261
	.space 60
	.long	0
	.space 60
	.long	0
	.byte	1
	.space 3
	.long	0
	.long	74
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	0
	.long	0
	.long	4
	.long	0
	.long	0
	.long	4
	.long	0
	.long	0
	.long	8
	.long	0
	.long	0
	.long	12
	.long	0
	.long	0
	.long	16
	.long	0
	.long	0
	.long	20
	.long	0
	.long	0
	.long	24
	.long	0
	.long	0
	.long	28
	.long	0
	.long	0
	.long	32
	.long	0
	.long	0
	.long	40
	.long	0
	.long	0
	.long	48
	.long	0
	.long	0
	.long	56
	.long	0
	.long	0
	.long	64
	.long	0
	.long	0
	.long	80
	.long	0
	.long	0
	.long	96
	.long	0
	.long	0
	.long	112
	.long	0
	.long	0
	.long	128
	.long	0
	.long	0
	.long	160
	.long	0
	.long	0
	.long	192
	.long	0
	.long	0
	.long	224
	.long	0
	.long	0
	.long	256
	.long	0
	.long	0
	.long	320
	.long	0
	.long	0
	.long	384
	.long	0
	.long	0
	.long	448
	.long	0
	.long	0
	.long	512
	.long	0
	.long	0
	.long	640
	.long	0
	.long	0
	.long	768
	.long	0
	.long	0
	.long	896
	.long	0
	.long	0
	.long	1024
	.long	0
	.long	0
	.long	1280
	.long	0
	.long	0
	.long	1536
	.long	0
	.long	0
	.long	1792
	.long	0
	.long	0
	.long	2048
	.long	0
	.long	0
	.long	2560
	.long	0
	.long	0
	.long	3072
	.long	0
	.long	0
	.long	3584
	.long	0
	.long	0
	.long	4096
	.long	0
	.long	0
	.long	5120
	.long	0
	.long	0
	.long	6144
	.long	0
	.long	0
	.long	7168
	.long	0
	.long	0
	.long	8192
	.long	0
	.long	0
	.long	10240
	.long	0
	.long	0
	.long	12288
	.long	0
	.long	0
	.long	14336
	.long	0
	.long	0
	.long	16384
	.long	0
	.long	0
	.long	20480
	.long	0
	.long	0
	.long	24576
	.long	0
	.long	0
	.long	28672
	.long	0
	.long	0
	.long	32768
	.long	0
	.long	0
	.long	40960
	.long	0
	.long	0
	.long	49152
	.long	0
	.long	0
	.long	57344
	.long	0
	.long	0
	.long	65536
	.long	0
	.long	0
	.long	81920
	.long	0
	.long	0
	.long	98304
	.long	0
	.long	0
	.long	114688
	.long	0
	.long	0
	.long	131072
	.long	0
	.long	0
	.long	163840
	.long	0
	.long	0
	.long	196608
	.long	0
	.long	0
	.long	229376
	.long	0
	.long	0
	.long	262144
	.long	0
	.long	0
	.long	327680
	.long	0
	.long	0
	.long	393216
	.long	0
	.long	0
	.long	458752
	.long	0
	.long	0
	.long	524288
	.long	0
	.long	0
	.long	655360
	.long	0
	.long	0
	.long	786432
	.long	0
	.long	0
	.long	917504
	.long	0
	.long	0
	.long	1048576
	.long	0
	.long	0
	.long	1310720
	.long	0
	.long	0
	.long	1572864
	.long	0
	.long	0
	.long	1835008
	.long	0
	.long	0
	.long	2097152
	.long	0
	.long	0
	.long	1048580
	.long	0
	.long	0
	.long	1048584
.lcomm __ZL8td_cache,128,32
.lcomm __mi_numa_node_count,4,4
.lcomm __ZL15mi_arena_static,2048,64
.lcomm __ZL19mi_arena_static_top,4,64
.lcomm __ZL14mi_arena_count,4,64
	.section .rdata,"dr"
LC127:
	.ascii "show_errors\0"
LC128:
	.ascii "show_stats\0"
LC129:
	.ascii "verbose\0"
LC130:
	.ascii "eager_commit\0"
LC131:
	.ascii "arena_eager_commit\0"
LC132:
	.ascii "eager_region_commit\0"
LC133:
	.ascii "purge_decommits\0"
LC134:
	.ascii "reset_decommits\0"
LC135:
	.ascii "allow_large_os_pages\0"
LC136:
	.ascii "large_os_pages\0"
LC137:
	.ascii "reserve_huge_os_pages\0"
LC138:
	.ascii "reserve_huge_os_pages_at\0"
LC139:
	.ascii "reserve_os_memory\0"
LC140:
	.ascii "deprecated_segment_cache\0"
LC141:
	.ascii "deprecated_page_reset\0"
LC142:
	.ascii "abandoned_page_purge\0"
LC143:
	.ascii "deprecated_segment_reset\0"
LC144:
	.ascii "eager_commit_delay\0"
LC145:
	.ascii "purge_delay\0"
LC146:
	.ascii "reset_delay\0"
LC147:
	.ascii "use_numa_nodes\0"
LC148:
	.ascii "disallow_os_alloc\0"
LC149:
	.ascii "limit_os_alloc\0"
LC150:
	.ascii "os_tag\0"
LC151:
	.ascii "max_errors\0"
LC152:
	.ascii "max_warnings\0"
LC153:
	.ascii "max_segment_reclaim\0"
LC154:
	.ascii "destroy_on_exit\0"
LC155:
	.ascii "arena_reserve\0"
LC156:
	.ascii "arena_purge_mult\0"
LC157:
	.ascii "purge_extend_delay\0"
LC158:
	.ascii "decommit_extend_delay\0"
LC159:
	.ascii "abandoned_reclaim_on_free\0"
LC160:
	.ascii "disallow_arena_alloc\0"
LC161:
	.ascii "retry_on_oom\0"
LC162:
	.ascii "visit_abandoned\0"
LC163:
	.ascii "debug_guarded_min\0"
LC164:
	.ascii "debug_guarded_max\0"
	.data
	.align 32
__ZL7options:
	.long	1
	.long	0
	.long	0
	.long	LC127
	.long	0
	.long	0
	.long	0
	.long	1
	.long	LC128
	.long	0
	.long	0
	.long	0
	.long	2
	.long	LC129
	.long	0
	.long	1
	.long	0
	.long	3
	.long	LC130
	.long	0
	.long	2
	.long	0
	.long	4
	.long	LC131
	.long	LC132
	.long	1
	.long	0
	.long	5
	.long	LC133
	.long	LC134
	.long	0
	.long	0
	.long	6
	.long	LC135
	.long	LC136
	.long	0
	.long	0
	.long	7
	.long	LC137
	.long	0
	.long	-1
	.long	0
	.long	8
	.long	LC138
	.long	0
	.long	0
	.long	0
	.long	9
	.long	LC139
	.long	0
	.long	0
	.long	0
	.long	10
	.long	LC140
	.long	0
	.long	0
	.long	0
	.long	11
	.long	LC141
	.long	0
	.long	1
	.long	0
	.long	12
	.long	LC142
	.long	0
	.long	0
	.long	0
	.long	13
	.long	LC143
	.long	0
	.long	1
	.long	0
	.long	14
	.long	LC144
	.long	0
	.long	10
	.long	0
	.long	15
	.long	LC145
	.long	LC146
	.long	0
	.long	0
	.long	16
	.long	LC147
	.long	0
	.long	0
	.long	0
	.long	17
	.long	LC148
	.long	LC149
	.long	100
	.long	0
	.long	18
	.long	LC150
	.long	0
	.long	32
	.long	0
	.long	19
	.long	LC151
	.long	0
	.long	32
	.long	0
	.long	20
	.long	LC152
	.long	0
	.long	10
	.long	0
	.long	21
	.long	LC153
	.long	0
	.long	0
	.long	0
	.long	22
	.long	LC154
	.long	0
	.long	131072
	.long	0
	.long	23
	.long	LC155
	.long	0
	.long	10
	.long	0
	.long	24
	.long	LC156
	.long	0
	.long	1
	.long	0
	.long	25
	.long	LC157
	.long	LC158
	.long	1
	.long	0
	.long	26
	.long	LC159
	.long	0
	.long	0
	.long	0
	.long	27
	.long	LC160
	.long	0
	.long	400
	.long	0
	.long	28
	.long	LC161
	.long	0
	.long	0
	.long	0
	.long	29
	.long	LC162
	.long	0
	.long	0
	.long	0
	.long	30
	.long	LC163
	.long	0
	.long	0
	.long	0
	.long	31
	.long	LC164
	.long	0
.lcomm __ZL9mi_arenas,528,64
.lcomm __mi_stats_main,672,64
	.align 4
__ZL16mi_os_mem_config:
	.long	4096
	.long	0
	.long	4096
	.byte	1
	.byte	0
	.byte	1
	.space 1
	.section .rdata,"dr"
	.align 4
LC112:
	.long	1065353216
	.align 4
LC113:
	.long	2139095039
	.align 4
LC114:
	.long	-1082130432
	.align 4
LC118:
	.long	1073741824
	.align 4
LC119:
	.long	1056964608
	.align 4
LC120:
	.long	1077936128
	.align 4
LC123:
	.long	1101004800
	.data
	.align 4
LDFCM0:
	.long	___gxx_personality_v0
	.def	___udivdi3;	.scl	2;	.type	32;	.endef
	.def	___divdi3;	.scl	2;	.type	32;	.endef
	.def	___gxx_personality_v0;	.scl	2;	.type	32;	.endef
	.def	___udivmoddi4;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_sched_yield;	.scl	2;	.type	32;	.endef
	.def	_strtol;	.scl	2;	.type	32;	.endef
	.def	_SystemFunction036@8;	.scl	2;	.type	32;	.endef
	.def	___mingw_vsnprintf;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui12CalcTextSizeEPKcS1_bf;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui8ItemSizeERK6ImVec2f.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui7ItemAddERK6ImRectjPS1_i.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui10RenderTextE6ImVec2PKcS2_b;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui11SetActiveIDEjP11ImGuiWindow;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui12TestKeyOwnerE8ImGuiKeyj;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui11FocusWindowEP11ImGuiWindow;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui10SetFocusIDEjP11ImGuiWindow;	.scl	2;	.type	32;	.endef
	.def	__ZL19GetViewportDrawListP14ImGuiViewportPjPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList7AddRectERK6ImVec2S2_jfif.part.0.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z9ImHashStrPKcjj;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui15DebugHookIdInfoEjiPKvS1_.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui17ClosePopupToLevelEib;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui8DebugLogEPKcz;	.scl	2;	.type	32;	.endef
	.def	__ZL13MallocWrapperjPv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL11FreeWrapperPvS_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z6mi_logPKcPv;	.scl	2;	.type	32;	.endef
	.def	__ZSt15get_new_handlerv;	.scl	2;	.type	32;	.endef
	.def	___cxa_allocate_exception;	.scl	2;	.type	32;	.endef
	.def	__ZNSt9bad_allocD1Ev;	.scl	2;	.type	32;	.endef
	.def	___cxa_throw;	.scl	2;	.type	32;	.endef
