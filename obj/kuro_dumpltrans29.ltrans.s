	.file	"<artificial>"
	.text
	.p2align 4
	.def	__ZL10huffgetvaliiiPiS_;	.scl	3;	.type	32;	.endef
__ZL10huffgetvaliiiPiS_:
LFB0:
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
	leal	0(,%eax,4), %ebx
	leal	(%ebx,%eax), %edi
	xorl	%eax, %eax
	sall	$4, %edi
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	__ZL8pow2long-4(,%edx,4), %ecx
	addl	$__ZL11hufmaxatbit, %edi
	movl	$1, %edx
	movl	%ebx, (%esp)
	testl	%ebp, %ecx
	setne	%al
	.p2align 5
	.p2align 4
	.p2align 3
L5:
	cmpl	%eax, (%edi,%edx,4)
	jg	L11
	sarl	%ecx
	movl	%ebp, %ebx
	addl	%eax, %eax
	andl	%ecx, %ebx
	cmpl	$1, %ebx
	sbbl	$-1, %eax
	addl	$1, %edx
	cmpl	$17, %edx
	jne	L5
	movl	28(%esp), %eax
	xorl	%edx, %edx
	movl	$16, (%eax)
	movl	24(%esp), %eax
	movl	%edx, (%eax)
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
L11:
	.cfi_restore_state
	movl	(%esp), %ebx
	movl	28(%esp), %edi
	addl	%esi, %ebx
	movl	%edx, (%edi)
	sall	$8, %esi
	leal	(%edx,%ebx,4), %edx
	leal	__ZL8huftable(%eax,%esi), %eax
	addl	__ZL11hufvalatbit(,%edx,4), %eax
	movzbl	(%eax), %edx
	movl	24(%esp), %eax
	movl	%edx, (%eax)
	addl	$4, %esp
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
LFE0:
	.p2align 4
	.def	__ZL9invdct8x8Pih;	.scl	3;	.type	32;	.endef
__ZL9invdct8x8Pih:
LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	leal	256(%eax), %eax
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%edi, %ebp
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, 8(%esp)
	movl	%edi, 24(%esp)
	movl	%edx, %edi
	.p2align 4
	.p2align 3
L14:
	testl	$1, %edi
	je	L13
	movl	24(%ebp), %edx
	movl	8(%ebp), %eax
	leal	(%eax,%edx), %ecx
	subl	%edx, %eax
	movl	$1518500224, %edx
/APP
 # 1116 "source/build/src/kplib.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	16(%ebp), %esi
	movl	0(%ebp), %eax
	sall	$2, %edx
	subl	%ecx, %edx
	leal	(%eax,%esi), %ebx
	subl	%esi, %eax
	leal	(%ecx,%ebx), %esi
	subl	%ecx, %ebx
	leal	(%edx,%eax), %ecx
	subl	%edx, %eax
	movl	%eax, 20(%esp)
	movl	4(%ebp), %eax
	movl	20(%ebp), %edx
	subl	12(%ebp), %edx
	movl	%esi, (%esp)
	addl	%edx, %eax
	movl	%ebx, 12(%esp)
	subl	28(%ebp), %eax
	movl	$1984016192, %edx
	movl	%ecx, 16(%esp)
/APP
 # 1119 "source/build/src/kplib.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	leal	0(,%edx,4), %ebx
	movl	20(%ebp), %edx
	movl	4(%ebp), %ecx
	movl	12(%ebp), %esi
	addl	28(%ebp), %ecx
	addl	%ecx, %edx
	addl	%edx, %esi
	movl	12(%ebp), %edx
	subl	20(%ebp), %edx
	movl	%edx, %eax
	movl	$1402911296, %edx
/APP
 # 1121 "source/build/src/kplib.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	leal	(%ebx,%edx,8), %edx
	subl	20(%ebp), %ecx
	movl	%ebx, 4(%esp)
	subl	%esi, %edx
	movl	%ecx, %eax
	subl	12(%ebp), %eax
	movl	%edx, %ebx
	movl	$1518500224, %edx
/APP
 # 1122 "source/build/src/kplib.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	leal	0(,%edx,4), %ecx
	movl	4(%ebp), %edx
	subl	28(%ebp), %edx
	movl	%edx, %eax
	subl	%ebx, %ecx
	movl	$1162209792, %edx
/APP
 # 1123 "source/build/src/kplib.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	(%esp), %eax
	sall	$2, %edx
	subl	4(%esp), %edx
	addl	%ecx, %edx
	addl	%esi, %eax
	movl	%eax, 0(%ebp)
	movl	(%esp), %eax
	subl	%esi, %eax
	movl	16(%esp), %esi
	movl	%eax, 28(%ebp)
	leal	(%esi,%ebx), %eax
	movl	%eax, 4(%ebp)
	movl	%esi, %eax
	movl	20(%esp), %esi
	subl	%ebx, %eax
	movl	12(%esp), %ebx
	movl	%eax, 24(%ebp)
	leal	(%esi,%ecx), %eax
	movl	%eax, 8(%ebp)
	movl	%esi, %eax
	subl	%ecx, %eax
	movl	%eax, 20(%ebp)
	leal	(%ebx,%edx), %eax
	movl	%eax, 16(%ebp)
	movl	%ebx, %eax
	subl	%edx, %eax
	movl	%eax, 12(%ebp)
L13:
	movl	%edi, %eax
	addl	$32, %ebp
	shrb	%al
	movl	%eax, %edi
	cmpl	8(%esp), %ebp
	jne	L14
	movl	24(%esp), %edi
	leal	160(%edi), %eax
	leal	128(%edi), %ebp
	movl	%eax, 16(%esp)
	.p2align 4
	.p2align 3
L15:
	movl	64(%ebp), %edx
	movl	-64(%ebp), %eax
	leal	(%eax,%edx), %ecx
	subl	%edx, %eax
	movl	$1518500224, %edx
/APP
 # 1134 "source/build/src/kplib.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	0(%ebp), %esi
	movl	-128(%ebp), %eax
	sall	$2, %edx
	subl	%ecx, %edx
	leal	(%eax,%esi), %ebx
	subl	%esi, %eax
	leal	(%edx,%eax), %esi
	subl	%edx, %eax
	leal	(%ecx,%ebx), %edi
	subl	%ecx, %ebx
	movl	%eax, 12(%esp)
	movl	-96(%ebp), %eax
	movl	$1984016192, %edx
	movl	32(%ebp), %ecx
	subl	-32(%ebp), %ecx
	movl	%edi, (%esp)
	addl	%ecx, %eax
	movl	%esi, 8(%esp)
	subl	96(%ebp), %eax
/APP
 # 1137 "source/build/src/kplib.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	leal	0(,%edx,4), %edi
	movl	32(%ebp), %edx
	movl	-96(%ebp), %ecx
	movl	-32(%ebp), %esi
	addl	96(%ebp), %ecx
	addl	%ecx, %edx
	addl	%edx, %esi
	movl	-32(%ebp), %edx
	subl	32(%ebp), %edx
	movl	%edx, %eax
	movl	$1402911296, %edx
/APP
 # 1139 "source/build/src/kplib.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	leal	(%edi,%edx,8), %edx
	subl	32(%ebp), %ecx
	movl	%edi, 4(%esp)
	subl	%esi, %edx
	movl	%ecx, %eax
	subl	-32(%ebp), %eax
	movl	%edx, %edi
	movl	$1518500224, %edx
/APP
 # 1140 "source/build/src/kplib.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	leal	0(,%edx,4), %ecx
	movl	-96(%ebp), %edx
	subl	96(%ebp), %edx
	movl	%edx, %eax
	subl	%edi, %ecx
	movl	$1162209792, %edx
/APP
 # 1141 "source/build/src/kplib.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	(%esp), %eax
	sall	$2, %edx
	subl	4(%esp), %edx
	addl	$4, %ebp
	addl	%ecx, %edx
	addl	%esi, %eax
	movl	%eax, -132(%ebp)
	movl	(%esp), %eax
	subl	%esi, %eax
	movl	8(%esp), %esi
	movl	%eax, 92(%ebp)
	leal	(%esi,%edi), %eax
	subl	%edi, %esi
	movl	12(%esp), %edi
	movl	%eax, -100(%ebp)
	leal	(%edi,%ecx), %eax
	movl	%esi, 60(%ebp)
	movl	%eax, -68(%ebp)
	movl	%edi, %eax
	subl	%ecx, %eax
	movl	%eax, 28(%ebp)
	leal	(%ebx,%edx), %eax
	movl	%eax, -4(%ebp)
	movl	%ebx, %eax
	subl	%edx, %eax
	movl	%eax, -36(%ebp)
	cmpl	%ebp, 16(%esp)
	jne	L15
	addl	$28, %esp
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
LFE1:
	.p2align 4
	.def	__ZL7yrbrendiiPi;	.scl	3;	.type	32;	.endef
__ZL7yrbrendiiPi:
LFB2:
	.cfi_startproc
	subl	$152, %esp
	.cfi_def_cfa_offset 156
	movl	__ZL10lcompvsamp, %eax
	movl	%ebx, 136(%esp)
	.cfi_offset 3, -20
	movl	160(%esp), %ebx
	leal	0(,%eax,8), %ecx
	movl	%eax, 92(%esp)
	testl	%ecx, %ecx
	jle	L22
	movl	164(%esp), %eax
	movl	%edi, 144(%esp)
	.cfi_offset 7, -12
	movl	__ZL10lcomphsamp, %edi
	movl	__ZL15kp_bytesperline, %edx
	movl	%ebp, 148(%esp)
	addl	$2560, %eax
	movl	%esi, 140(%esp)
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	__ZL8clipydim, %esi
	movl	%eax, 16(%esp)
	movl	__ZL8clipxdim, %eax
	cmpl	$2, %edi
	movl	%edx, %ebp
	sete	107(%esp)
	movl	%eax, 56(%esp)
	movl	__ZL14lnumcomponents, %eax
	movl	%edx, 40(%esp)
	movl	%eax, 80(%esp)
	movl	__ZL12lcomphvsamp0, %eax
	movl	%esi, 100(%esp)
	movl	%eax, 84(%esp)
	movl	__ZL16lcompvsampshift0, %eax
	movl	%edi, 20(%esp)
	movl	%eax, 124(%esp)
	movl	__ZL16lcomphsampshift0, %eax
	movl	$0, (%esp)
	movl	%eax, 88(%esp)
	movl	%edi, %eax
	sall	$8, %eax
	movl	%eax, 116(%esp)
	leal	0(,%edx,8), %eax
	movl	156(%esp), %edx
	movl	%eax, 112(%esp)
	movl	__ZL13kp_frameplace, %eax
	leal	(%eax,%edx,4), %edx
	movl	%ebp, %eax
	imull	%ebx, %eax
	addl	%eax, %edx
	movl	%esi, %eax
	subl	%ebx, %esi
	subl	%ecx, %eax
	movl	%esi, 128(%esp)
	subl	%ebx, %eax
	movl	%esi, 52(%esp)
	movl	%eax, 108(%esp)
	movl	164(%esp), %eax
	movl	%eax, 96(%esp)
	leal	0(,%edi,8), %eax
	sall	$8, %edi
	movl	$0, 4(%esp)
	movl	%eax, 60(%esp)
	movl	%edi, 132(%esp)
	jmp	L47
L66:
	movl	116(%esp), %edi
	addl	%edi, 96(%esp)
L25:
	subl	$8, 52(%esp)
	addl	112(%esp), %edx
	movl	52(%esp), %eax
	cmpl	%eax, 108(%esp)
	je	L65
L47:
	movl	100(%esp), %edi
	movl	%edi, %eax
	subl	52(%esp), %eax
	cmpl	%edi, %eax
	jnb	L66
	movl	60(%esp), %ebx
	testl	%ebx, %ebx
	jle	L25
	movl	56(%esp), %edi
	subl	156(%esp), %edi
	leal	0(,%edx,8), %ecx
	movl	%edx, 120(%esp)
	movl	128(%esp), %eax
	movl	52(%esp), %ebp
	movl	%edi, 32(%esp)
	movl	96(%esp), %edi
	movl	%edx, 48(%esp)
	subl	%ebp, %eax
	subl	%ecx, %edi
	movzbl	124(%esp), %ecx
	movl	%edi, 72(%esp)
	xorl	%edi, %edi
	sarl	%cl, %eax
	leal	0(,%eax,8), %eax
	movl	%eax, 76(%esp)
	.p2align 4
	.p2align 3
L46:
	movl	156(%esp), %eax
	addl	%edi, %eax
	cmpl	56(%esp), %eax
	jnb	L26
	movl	48(%esp), %eax
	movl	72(%esp), %esi
	movl	%edi, %edx
	movzbl	88(%esp), %ecx
	leal	0(,%eax,8), %ebx
	movl	%eax, 24(%esp)
	movl	84(%esp), %eax
	addl	%ebx, %esi
	sarl	%cl, %edx
	movl	%esi, 8(%esp)
	movl	76(%esp), %esi
	sall	$6, %eax
	addl	%esi, %eax
	movl	164(%esp), %esi
	addl	%edx, %eax
	cmpl	$2, 80(%esp)
	leal	(%esi,%eax,4), %eax
	cmovl	16(%esp), %eax
	movl	%eax, 16(%esp)
	movl	$8, %eax
	cmpl	%eax, %ebp
	cmovle	%ebp, %eax
	movl	%eax, 36(%esp)
	cmpl	$1, 20(%esp)
	je	L67
	cmpl	$7, 32(%esp)
	jle	L35
	cmpb	$0, 107(%esp)
	jne	L68
L35:
	testl	%ebp, %ebp
	jle	L26
L48:
	movl	32(%esp), %esi
	movl	$8, %eax
	movl	%edi, 64(%esp)
	movl	%ebp, 68(%esp)
	cmpl	%eax, %esi
	cmovle	%esi, %eax
	movl	4(%esp), %esi
	xorl	%edx, %edx
	movl	%eax, 12(%esp)
	movl	92(%esp), %eax
	leal	-1(%eax), %ecx
	movl	%ecx, 44(%esp)
	movl	24(%esp), %ecx
	.p2align 4
	.p2align 3
L43:
	movl	32(%esp), %eax
	testl	%eax, %eax
	jle	L45
	movl	$1, 4(%esp)
	movl	%ecx, %edi
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	movl	%edx, 24(%esp)
	movl	%ecx, 28(%esp)
	.p2align 4
	.p2align 3
L41:
	subl	$1, 4(%esp)
	movl	8(%esp), %eax
	movl	(%eax,%ebx,4), %eax
	jne	L40
	movl	16(%esp), %ecx
	movl	(%ecx,%ebp,4), %edx
	movl	256(%ecx,%ebp,4), %esi
	addl	$1, %ebp
	movl	20(%esp), %ecx
	sarl	$19, %edx
	sarl	$19, %esi
	andl	$-2, %edx
	movl	%ecx, 4(%esp)
	andl	$-2, %esi
	movl	%edx, (%esp)
L40:
	movl	(%esp), %edx
	movl	__ZL5crmul+8196(,%esi,4), %ecx
	addl	$1, %ebx
	addl	$4, %edi
	addl	%eax, %ecx
	addl	__ZL5cbmul+8192(,%edx,4), %ecx
	movl	__ZL5crmul+8192(,%esi,4), %edx
	shrl	$22, %ecx
	addl	%eax, %edx
	shrl	$22, %edx
	movl	__ZL11colclipup16(,%edx,4), %edx
	addl	__ZL10colclipup8(,%ecx,4), %edx
	movl	(%esp), %ecx
	addl	__ZL5cbmul+8196(,%ecx,4), %eax
	shrl	$22, %eax
	addl	__ZL7colclip(,%eax,4), %edx
	movl	%edx, -4(%edi)
	cmpl	%ebx, 12(%esp)
	jg	L41
	movl	24(%esp), %edx
	movl	28(%esp), %ecx
L45:
	movl	16(%esp), %edi
	addl	$32, 8(%esp)
	addl	$1, %edx
	addl	40(%esp), %ecx
	testl	%edx, 44(%esp)
	leal	32(%edi), %eax
	cmovne	%edi, %eax
	movl	%eax, 16(%esp)
	cmpl	36(%esp), %edx
	jl	L43
	movl	64(%esp), %edi
	movl	68(%esp), %ebp
	movl	%esi, 4(%esp)
L26:
	subl	$8, 32(%esp)
	addl	$8, %edi
	addl	$32, 48(%esp)
	cmpl	60(%esp), %edi
	jl	L46
L64:
	movl	120(%esp), %edx
L31:
	movl	132(%esp), %edi
	addl	%edi, 96(%esp)
	jmp	L25
L67:
	cmpl	$7, 32(%esp)
	jg	L69
	testl	%ebp, %ebp
	jg	L48
	jmp	L64
L68:
	testl	%ebp, %ebp
	jle	L26
	movl	92(%esp), %eax
	movl	%ebp, 44(%esp)
	xorl	%edx, %edx
	movl	8(%esp), %ebp
	leal	-1(%eax), %ebx
	movl	%ebx, 28(%esp)
	movl	24(%esp), %ebx
	movl	%edi, 24(%esp)
	.p2align 4
	.p2align 3
L37:
	movl	%edx, 8(%esp)
	movl	%ebx, %esi
	xorl	%ecx, %ecx
	movl	%ebx, 12(%esp)
L38:
	movl	16(%esp), %ebx
	movl	%ecx, %eax
	movl	0(%ebp,%ecx,4), %edx
	addl	$8, %esi
	sarl	%eax
	movl	256(%ebx,%eax,4), %edi
	movl	(%ebx,%ecx,2), %ebx
	sarl	$19, %edi
	sarl	$19, %ebx
	andl	$-2, %edi
	andl	$-2, %ebx
	movl	__ZL5cbmul+8192(,%ebx,4), %eax
	movl	__ZL5cbmul+8196(,%ebx,4), %ebx
	addl	__ZL5crmul+8196(,%edi,4), %eax
	movl	__ZL5crmul+8192(,%edi,4), %edi
	movl	%ebx, (%esp)
	leal	(%edx,%eax), %ebx
	movl	%edi, 4(%esp)
	addl	%edx, %edi
	addl	(%esp), %edx
	shrl	$22, %ebx
	shrl	$22, %edi
	shrl	$22, %edx
	movl	__ZL10colclipup8(,%ebx,4), %ebx
	addl	__ZL11colclipup16(,%edi,4), %ebx
	addl	__ZL7colclip(,%edx,4), %ebx
	movl	%ebx, -8(%esi)
	movl	4(%esp), %edi
	movl	4(%ebp,%ecx,4), %edx
	addl	$2, %ecx
	leal	(%edi,%edx), %ebx
	addl	%edx, %eax
	addl	(%esp), %edx
	shrl	$22, %ebx
	shrl	$22, %eax
	shrl	$22, %edx
	movl	__ZL10colclipup8(,%eax,4), %eax
	addl	__ZL11colclipup16(,%ebx,4), %eax
	addl	__ZL7colclip(,%edx,4), %eax
	movl	%eax, -4(%esi)
	cmpl	$8, %ecx
	jne	L38
	movl	16(%esp), %edi
	movl	8(%esp), %edx
	addl	$32, %ebp
	movl	12(%esp), %ebx
	addl	40(%esp), %ebx
	addl	$1, %edx
	leal	32(%edi), %eax
	testl	%edx, 28(%esp)
	cmovne	%edi, %eax
	movl	%eax, 16(%esp)
	cmpl	36(%esp), %edx
	jl	L37
	movl	24(%esp), %edi
	movl	44(%esp), %ebp
	jmp	L26
L69:
	movl	52(%esp), %ecx
	movl	120(%esp), %edx
	testl	%ecx, %ecx
	jle	L31
	movl	24(%esp), %esi
	movl	92(%esp), %eax
	movl	%edx, 24(%esp)
	movl	72(%esp), %edi
	subl	%esi, %ebx
	leal	32(%esi), %ebp
	subl	$1, %eax
	addl	%ebx, %edi
	movl	%ebp, (%esp)
	movl	%eax, 28(%esp)
	movl	$32, %eax
	subl	40(%esp), %eax
	movl	%edi, 8(%esp)
	movl	16(%esp), %edi
	movl	%eax, 32(%esp)
	xorl	%eax, %eax
L32:
	movl	%eax, 4(%esp)
	movl	%edi, %ebp
	movl	%esi, %edx
	movl	%edi, 12(%esp)
	subl	%esi, %ebp
	movl	%esi, 16(%esp)
	.p2align 4
	.p2align 3
L33:
	movl	256(%ebp,%edx), %ecx
	movl	0(%ebp,%edx), %ebx
	movl	8(%esp), %eax
	sarl	$19, %ecx
	sarl	$19, %ebx
	andl	$-2, %ecx
	movl	(%eax,%edx), %eax
	andl	$-2, %ebx
	addl	$4, %edx
	movl	__ZL5crmul+8196(,%ecx,4), %edi
	movl	__ZL5crmul+8192(,%ecx,4), %esi
	addl	%eax, %edi
	addl	%eax, %esi
	addl	__ZL5cbmul+8192(,%ebx,4), %edi
	addl	__ZL5cbmul+8196(,%ebx,4), %eax
	shrl	$22, %edi
	shrl	$22, %esi
	shrl	$22, %eax
	movl	__ZL11colclipup16(,%esi,4), %esi
	addl	__ZL10colclipup8(,%edi,4), %esi
	addl	__ZL7colclip(,%eax,4), %esi
	movl	%esi, -4(%edx)
	cmpl	%edx, (%esp)
	jne	L33
	movl	4(%esp), %eax
	movl	12(%esp), %edi
	movl	%ecx, 4(%esp)
	movl	40(%esp), %ebp
	movl	16(%esp), %esi
	addl	$1, %eax
	leal	32(%edi), %edx
	movl	32(%esp), %ecx
	addl	%ebp, %esi
	testl	%eax, 28(%esp)
	cmove	%edx, %edi
	addl	%ecx, 8(%esp)
	addl	%ebp, (%esp)
	cmpl	36(%esp), %eax
	jl	L32
	movl	%ebx, (%esp)
	movl	24(%esp), %edx
	movl	%edi, 16(%esp)
	jmp	L31
L65:
	movl	140(%esp), %esi
	.cfi_restore 6
	movl	144(%esp), %edi
	.cfi_restore 7
	movl	148(%esp), %ebp
	.cfi_restore 5
L22:
	movl	136(%esp), %ebx
	addl	$152, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE2:
	.p2align 4
	.def	__ZL13compress_partP13compress_info;	.scl	3;	.type	32;	.endef
__ZL13compress_partP13compress_info:
LFB3:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$253, %ecx
	movl	$254, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	movl	$-1, %esi
	pushl	%ebx
	movl	%esi, %edi
	subl	$48, %esp
	.cfi_offset 3, -20
	movl	%eax, 12(%esp)
	movl	8(%eax), %eax
	movl	%eax, 40(%esp)
	movl	$255, %eax
	.p2align 4
	.p2align 3
L71:
	leal	1(%eax), %ebx
	movb	%dl, __ZL9lzwtmpbuf-1(%eax)
	andw	$255, %bx
	movb	%cl, __ZL9lzwtmpbuf-2(%eax)
	movw	%bx, __ZL7lzwbuf3(%eax,%eax)
	leal	-3(%eax), %ebx
	movw	%dx, __ZL7lzwbuf3-4(%eax,%eax)
	subl	$4, %edx
	movw	%cx, __ZL7lzwbuf3-6(%eax,%eax)
	subl	$4, %ecx
	movb	%al, __ZL9lzwtmpbuf(%eax)
	movw	%ax, __ZL7lzwbuf3-2(%eax,%eax)
	movb	%bl, __ZL9lzwtmpbuf-3(%eax)
	movl	%esi, __ZL7lzwbuf2-6(%eax,%eax)
	movl	%edi, __ZL7lzwbuf2-2(%eax,%eax)
	subl	$4, %eax
	cmpl	$3, %eax
	jne	L71
	movl	40(%esp), %edi
	movl	$131073, %eax
	movl	$0, 4(%esp)
	movl	$262147, %edx
	movl	%eax, __ZL7lzwbuf3
	leal	5(%edi), %eax
	movl	$__ZL10lzwcompbuf, (%esp)
	movl	%eax, 8(%esp)
	movl	%edx, __ZL7lzwbuf3+4
	movl	$50462976, __ZL9lzwtmpbuf
	movl	$-1, __ZL7lzwbuf2
	movl	$-1, __ZL7lzwbuf2+4
	call	_memset
	movzbl	__ZL9lzwrawbuf, %ebx
	leal	0(,%edi,8), %eax
	movl	$256, 24(%esp)
	movl	$8, 20(%esp)
	movl	$256, %edx
	movl	$32, 32(%esp)
	movl	%eax, 16(%esp)
	movl	$0, 28(%esp)
	movb	%bl, 36(%esp)
	.p2align 4
	.p2align 3
L82:
	movl	28(%esp), %esi
	movzbl	36(%esp), %edi
	movw	%dx, 36(%esp)
	addl	$1, %esi
	movzbl	__ZL9lzwrawbuf(%esi), %ebx
	cmpl	%esi, 40(%esp)
	je	L95
	.p2align 4
	.p2align 3
L100:
	movswl	__ZL7lzwbuf2(%edi,%edi), %eax
	testw	%ax, %ax
	jns	L97
	jmp	L98
	.p2align 5
	.p2align 4,,10
	.p2align 3
L77:
	movzwl	__ZL7lzwbuf3(%eax,%eax), %ecx
	testw	%cx, %cx
	js	L99
	movswl	%cx, %eax
L97:
	cmpb	%bl, __ZL9lzwtmpbuf(%eax)
	jne	L77
	movswl	__ZL7lzwbuf3(%eax,%eax), %ecx
L76:
	cmpl	%ecx, %edx
	je	L95
	addl	$1, %esi
	movl	%eax, %edi
	movzbl	__ZL9lzwrawbuf(%esi), %ebx
	cmpl	%esi, 40(%esp)
	jne	L100
L95:
	movl	%esi, 28(%esp)
	movb	%bl, 36(%esp)
L72:
	movl	32(%esp), %esi
	movzbl	36(%esp), %eax
	movl	$-1, %ecx
	movl	$-1, %ebx
	movw	%cx, __ZL7lzwbuf2(%edx,%edx)
	movb	%al, __ZL9lzwtmpbuf(%edx)
	movl	%esi, %ecx
	movl	%esi, %eax
	sarl	$3, %eax
	andl	$7, %ecx
	movw	%bx, __ZL7lzwbuf3(%edx,%edx)
	movl	%edi, %ebx
	sall	%cl, %ebx
	orl	%ebx, __ZL10lzwcompbuf(%eax)
	movl	20(%esp), %ebx
	movl	24(%esp), %eax
	leal	(%esi,%ebx), %ecx
	sarl	%eax
	movl	%ecx, 32(%esp)
	leal	-1(%eax), %ecx
	movl	%edi, %eax
	andl	%ecx, %eax
	movl	%eax, %esi
	leal	-1(%edx), %eax
	andl	%ecx, %eax
	cmpl	%eax, %esi
	movl	24(%esp), %esi
	setg	%al
	movzbl	%al, %eax
	subl	%eax, 32(%esp)
	leal	1(%edx), %eax
	cmpl	%eax, %esi
	jge	L80
	addl	$1, %ebx
	leal	(%esi,%esi), %ecx
	movl	%ebx, 20(%esp)
	movl	%ecx, 24(%esp)
	sarl	%ecx
	subl	$1, %ecx
L80:
	movl	28(%esp), %ebx
	cmpl	%ebx, 40(%esp)
	jle	L81
	movl	32(%esp), %esi
	cmpl	%esi, 16(%esp)
	jle	L81
	movl	%eax, %edx
	jmp	L82
	.p2align 4,,10
	.p2align 3
L99:
	movw	%dx, __ZL7lzwbuf3(%eax,%eax)
	movswl	36(%esp), %ecx
	jmp	L76
L98:
	movl	%esi, 28(%esp)
	movb	%bl, 36(%esp)
	movw	%dx, __ZL7lzwbuf2(%edi,%edi)
	jmp	L72
L81:
	movl	32(%esp), %esi
	movl	%edx, 36(%esp)
	movl	%ecx, %edx
	movl	%eax, 28(%esp)
	movl	%edi, %eax
	andl	%edx, %edi
	movl	%esi, %ecx
	movl	%esi, %ebx
	addl	20(%esp), %esi
	andl	$7, %ecx
	sarl	$3, %ebx
	sall	%cl, %eax
	movl	36(%esp), %ecx
	orl	%eax, __ZL10lzwcompbuf(%ebx)
	movl	%esi, %ebx
	movl	40(%esp), %eax
	andl	%edx, %ecx
	cmpl	%ecx, %edi
	movw	%ax, __ZL10lzwcompbuf
	setg	%cl
	movzbl	%cl, %ecx
	subl	%ecx, %ebx
	leal	7(%ebx), %edx
	sarl	$3, %edx
	movl	%edx, %ebx
	cmpl	%edx, %eax
	jg	L101
	xorl	%eax, %eax
	movw	%ax, __ZL10lzwcompbuf+2
	movl	40(%esp), %eax
	cmpl	$4, %eax
	jle	L91
	leal	-4(%eax), %ecx
	xorl	%eax, %eax
L87:
	movl	__ZL9lzwrawbuf(%eax), %edx
	addl	$4, %eax
	movl	%edx, __ZL10lzwcompbuf(%eax)
	cmpl	%ecx, %eax
	jl	L87
	movl	40(%esp), %eax
	subl	$5, %eax
	andl	$-4, %eax
	addl	$4, %eax
L86:
	movl	40(%esp), %edi
	cmpl	%eax, %edi
	jle	L88
	leal	__ZL10lzwcompbuf+4(%eax), %edx
	subl	%eax, %edi
	addl	$__ZL9lzwrawbuf, %eax
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
L88:
	movl	40(%esp), %ebx
	addl	$4, %ebx
L85:
	movl	12(%esp), %eax
	movw	%bx, 46(%esp)
	movswl	%bx, %ebx
	movl	4(%eax), %edi
	movl	(%eax), %esi
	movl	$0, 8(%eax)
	leal	46(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	$2, 8(%esp)
	call	*%esi
	movl	%ebx, 8(%esp)
	movl	%edi, (%esp)
	movl	$__ZL10lzwcompbuf, 4(%esp)
	call	*%esi
	addl	$48, %esp
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
L101:
	.cfi_restore_state
	movzwl	28(%esp), %eax
	movw	%ax, __ZL10lzwcompbuf+2
	jmp	L85
L91:
	xorl	%eax, %eax
	jmp	L86
	.cfi_endproc
LFE3:
	.p2align 4
	.def	__ZL8initpassv.isra.0;	.scl	3;	.type	32;	.endef
__ZL8initpassv.isra.0:
LFB7:
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
	movl	__ZL4ysiz, %eax
	movl	_intlac, %edx
	movb	$0, 12(%esp)
	movl	__ZL4xsiz, %ebx
	movl	%eax, 16(%esp)
	leal	0(,%edx,4), %ecx
	.p2align 4
	.p2align 3
L107:
	movl	$67240192, %ebp
	movl	$4202512, %edi
	sarl	%cl, %ebp
	sarl	%cl, %edi
	andl	$15, %ebp
	andl	$15, %edi
	cmpl	%ebp, %ebx
	jle	L103
	cmpl	%edi, 16(%esp)
	jle	L103
L104:
	testl	%ecx, %ecx
	js	L107
	movl	%edi, 24(%esp)
	movl	%ecx, %eax
	cmpb	$0, 12(%esp)
	je	L108
	movl	%edx, _intlac
L108:
	movl	%eax, %ecx
	movl	$857870592, %edx
	movl	$1, %esi
	sarl	%cl, %edx
	movl	%esi, %edi
	andl	$15, %edx
	movl	%edx, 12(%esp)
	movzbl	12(%esp), %ecx
	movl	$858923280, %edx
	sall	%cl, %edi
	movl	%eax, %ecx
	sarl	%cl, %edx
	leal	-1(%ebx,%edi), %ebx
	movl	%edi, 20(%esp)
	andl	$15, %edx
	subl	%ebp, %ebx
	movl	%edx, %ecx
	sall	%cl, %esi
	movzbl	12(%esp), %ecx
	movl	%esi, _iystp
	movl	__ZL15kp_bytesperline, %esi
	sarl	%cl, %ebx
	movl	%edx, %ecx
	movl	$67244801, %edx
	movl	%esi, %eax
	sall	%cl, %eax
	movl	%eax, _nbpl
	movzbl	__ZL8kcoltype, %eax
	leal	0(,%eax,4), %ecx
	movb	%al, 16(%esp)
	sarl	%cl, %edx
	movzbl	__ZL8bitdepth, %ecx
	andl	$15, %edx
	imull	%ebx, %edx
	movb	%cl, 35(%esp)
	cmpb	$2, %cl
	je	L109
	cmpb	$4, %cl
	je	L110
	leal	7(%edx), %eax
	sarl	$3, %eax
	cmpb	$1, %cl
	cmove	%eax, %edx
L111:
	leal	1(%edx), %eax
	movl	$0, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$olinbuf, (%esp)
	movl	%edx, _xsizbpl
	movl	%edx, 28(%esp)
	call	_memset
	movl	28(%esp), %edx
	movl	%esi, %eax
	movl	20(%esp), %esi
	movl	$0, __ZL8opixbuf0
	movzbl	12(%esp), %ecx
	movl	%edx, __ZL4xplc
	movl	24(%esp), %edx
	movl	$0, __ZL8opixbuf1
	imull	%edx, %eax
	movl	%edx, __ZL4yplc
	movl	$0, __ZL2xm
	movl	$-1, __ZL4filt
	leal	(%eax,%ebp,4), %eax
	addl	__ZL13kp_frameplace, %eax
	movl	%eax, __ZL7nfplace
	movl	__ZL7kp_xres, %eax
	addl	%esi, %eax
	subl	%ebp, %eax
	subl	$1, %eax
	sarl	%cl, %eax
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	subl	%ebp, %esi
	leal	-1(%esi), %edx
	sarl	%cl, %edx
	xorl	%ecx, %ecx
	testl	%edx, %edx
	cmovs	%ecx, %edx
	movl	%ebx, %ecx
	subl	%edx, %ecx
	movl	%ebx, %edx
	subl	%eax, %edx
	movl	%ecx, __ZL3xr0
	movl	%edx, __ZL3xr1
	cmpb	$4, 16(%esp)
	je	L123
	cmpb	$2, 16(%esp)
	je	L124
	cmpb	$6, 16(%esp)
	je	L125
	movzbl	35(%esp), %eax
	cmpb	$2, %al
	je	L116
	cmpb	$4, %al
	je	L117
	cmpb	$1, %al
	jne	L113
	negl	%ebx
	andl	$7, %ebx
	leal	7(%ecx,%ebx), %eax
	movl	%eax, __ZL3xr0
	leal	7(%edx,%ebx), %eax
	movl	%eax, __ZL3xr1
	jmp	L113
	.p2align 4,,10
	.p2align 3
L103:
	cmpl	$1, %edx
	jle	L104
	subl	$1, %edx
	movb	$1, 12(%esp)
	leal	0(,%edx,4), %ecx
	jmp	L107
	.p2align 4,,10
	.p2align 3
L124:
	leal	-2(%ecx,%ecx,2), %eax
	movl	%eax, __ZL3xr0
	leal	-2(%edx,%edx,2), %eax
	movl	%eax, __ZL3xr1
L113:
	movl	20(%esp), %edi
	sall	$2, %edi
	movl	%edi, _ixstp
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
L123:
	.cfi_restore_state
	addl	%ecx, %ecx
	addl	%edx, %edx
	movl	%ecx, __ZL3xr0
	movl	%edx, __ZL3xr1
	jmp	L113
	.p2align 4,,10
	.p2align 3
L110:
	addl	$1, %edx
	sarl	%edx
	jmp	L111
	.p2align 4,,10
	.p2align 3
L109:
	addl	$3, %edx
	sarl	$2, %edx
	jmp	L111
L117:
	andl	$1, %ebx
	leal	1(%ecx,%ebx), %eax
	sall	$2, %eax
	movl	%eax, __ZL3xr0
	leal	1(%edx,%ebx), %eax
	sall	$2, %eax
	movl	%eax, __ZL3xr1
	jmp	L113
	.p2align 4,,10
	.p2align 3
L125:
	leal	-2(,%ecx,4), %eax
	movl	%eax, __ZL3xr0
	leal	-2(,%edx,4), %eax
	movl	%eax, __ZL3xr1
	jmp	L113
L116:
	negl	%ebx
	andl	$3, %ebx
	leal	3(%ecx,%ebx), %eax
	addl	%eax, %eax
	movl	%eax, __ZL3xr0
	leal	3(%edx,%ebx), %eax
	addl	%eax, %eax
	movl	%eax, __ZL3xr1
	jmp	L113
	.cfi_endproc
LFE7:
	.p2align 4
	.def	__ZL6putbufPKhi;	.scl	3;	.type	32;	.endef
__ZL6putbufPKhi:
LFB8:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%ebp, 28(%esp)
	.cfi_offset 5, -8
	movl	__ZL4filt, %ebp
	movl	%ebx, 16(%esp)
	testl	%ebp, %ebp
	.cfi_offset 3, -20
	js	L209
	xorl	%ebp, %ebp
L127:
	movl	%edx, 4(%esp)
	movl	__ZL4filt, %ecx
	movl	%eax, 12(%esp)
	cmpl	%ebp, %edx
	jle	L126
	movl	%esi, 20(%esp)
	movl	%edi, 24(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.p2align 4
	.p2align 3
L175:
	movl	__ZL4xplc, %edi
	movl	4(%esp), %eax
	leal	(%edi,%ebp), %esi
	cmpl	%eax, %esi
	cmovle	%esi, %eax
	movl	%eax, (%esp)
	cmpl	$4, %ecx
	ja	L131
	jmp	*L133(,%ecx,4)
	.section .rdata,"dr"
	.align 4
L133:
	.long	L137
	.long	L136
	.long	L135
	.long	L134
	.long	L132
	.text
	.p2align 4,,10
	.p2align 3
L134:
	cmpl	%ebp, (%esp)
	jle	L131
	movl	(%esp), %ecx
	leal	olinbuf(%edi), %eax
	movl	12(%esp), %edi
	movl	__ZL2xm, %ebx
	leal	(%edi,%ebp), %edx
	leal	(%edi,%ecx), %ebp
	.p2align 6
	.p2align 4
	.p2align 3
L147:
	movzbl	__ZL8opixbuf1(%ebx), %ecx
	movzbl	(%eax), %edi
	addl	$1, %edx
	subl	$1, %eax
	addl	%edi, %ecx
	sarl	%ecx
	addb	-1(%edx), %cl
	movb	%cl, __ZL8opixbuf1(%ebx)
	movl	__ZL3xmn(,%ebx,4), %ebx
	movb	%cl, 1(%eax)
	cmpl	%edx, %ebp
	jne	L147
	subl	(%esp), %esi
	movl	%ebx, __ZL2xm
	movl	%esi, __ZL4xplc
	movl	%esi, %edi
	.p2align 4
	.p2align 3
L138:
	testl	%edi, %edi
	jg	L207
	movl	__ZL4yplc, %ebx
	cmpl	__ZL7kp_yres, %ebx
	jnb	L149
	movl	__ZL7nfplace, %esi
	movzbl	__ZL8kcoltype, %edx
	movl	__ZL3xr0, %eax
	movl	%esi, 8(%esp)
	cmpb	$4, %dl
	je	L150
	cmpb	$6, %dl
	je	L151
	cmpb	$2, %dl
	je	L152
	movzbl	__ZL8bitdepth, %edx
	cmpb	$4, %dl
	je	L160
	jg	L161
	cmpb	$1, %dl
	je	L162
	cmpb	$2, %dl
	jne	L157
	movl	__ZL3xr1, %edi
	movl	_ixstp, %ebp
	movl	8(%esp), %esi
	cmpl	%edi, %eax
	jle	L157
	.p2align 6
	.p2align 4
	.p2align 3
L168:
	movl	%eax, %edx
	movl	%eax, %ecx
	subl	$2, %eax
	sarl	$3, %edx
	andl	$6, %ecx
	movzbl	olinbuf(%edx), %edx
	sarl	%cl, %edx
	movl	palcol(,%edx,4), %edx
	movl	%edx, (%esi)
	addl	%ebp, %esi
	cmpl	%edi, %eax
	jg	L168
	.p2align 4
	.p2align 3
L157:
	movl	8(%esp), %eax
	addl	_nbpl, %eax
	movl	%eax, __ZL7nfplace
L149:
	movl	_xsizbpl, %eax
	addl	_iystp, %ebx
	movl	$0, __ZL8opixbuf0
	movl	$0, __ZL8opixbuf1
	movl	%eax, __ZL4xplc
	movl	_intlac, %eax
	movl	%ebx, __ZL4yplc
	testl	%eax, %eax
	je	L170
	cmpl	__ZL4ysiz, %ebx
	jge	L210
L170:
	movl	(%esp), %eax
	cmpl	4(%esp), %eax
	jge	L171
	movl	12(%esp), %esi
	leal	1(%eax), %ebp
	movzbl	(%esi,%eax), %ecx
	movl	__ZL9filter1st, %eax
	movl	%ecx, __ZL4filt
	testl	%eax, %eax
	js	L211
	movl	$1, %eax
	sall	%cl, %eax
	orl	%eax, __ZL9filterest
L173:
	cmpl	%ebp, 4(%esp)
	jg	L175
L207:
	movl	20(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	24(%esp), %edi
	.cfi_restore 7
	movl	16(%esp), %ebx
	movl	28(%esp), %ebp
	addl	$32, %esp
	.cfi_restore 3
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L135:
	.cfi_restore_state
	movl	12(%esp), %ebx
	movl	(%esp), %ecx
	leal	olinbuf(%edi), %eax
	leal	(%ebx,%ebp), %edx
	addl	%ebx, %ecx
	cmpl	%ebp, (%esp)
	jle	L131
	.p2align 4
	.p2align 4
	.p2align 3
L146:
	movzbl	(%edx), %ebx
	addl	$1, %edx
	addb	%bl, (%eax)
	subl	$1, %eax
	cmpl	%edx, %ecx
	jne	L146
	subl	(%esp), %esi
	movl	%esi, __ZL4xplc
	movl	%esi, %edi
	jmp	L138
	.p2align 4,,10
	.p2align 3
L136:
	cmpl	%ebp, (%esp)
	jle	L131
	movl	12(%esp), %ecx
	leal	olinbuf(%edi), %eax
	movl	(%esp), %edi
	movl	__ZL2xm, %ebx
	leal	(%ecx,%ebp), %edx
	addl	%ecx, %edi
	.p2align 6
	.p2align 4
	.p2align 3
L145:
	movzbl	(%edx), %ecx
	addl	$1, %edx
	addb	__ZL8opixbuf1(%ebx), %cl
	subl	$1, %eax
	movb	%cl, __ZL8opixbuf1(%ebx)
	movl	__ZL3xmn(,%ebx,4), %ebx
	movb	%cl, 1(%eax)
	cmpl	%edx, %edi
	jne	L145
	subl	(%esp), %esi
	movl	%ebx, __ZL2xm
	movl	%esi, __ZL4xplc
	movl	%esi, %edi
	jmp	L138
	.p2align 4,,10
	.p2align 3
L137:
	movl	(%esp), %ebx
	cmpl	%ebp, %ebx
	jle	L131
	movl	12(%esp), %ecx
	leal	olinbuf(%edi), %eax
	leal	(%ecx,%ebp), %edx
	addl	%ecx, %ebx
	.p2align 4
	.p2align 4
	.p2align 3
L143:
	movzbl	(%edx), %ecx
	addl	$1, %edx
	subl	$1, %eax
	movb	%cl, 1(%eax)
	cmpl	%edx, %ebx
	jne	L143
	subl	(%esp), %esi
	movl	%esi, __ZL4xplc
	movl	%esi, %edi
	jmp	L138
	.p2align 4,,10
	.p2align 3
L132:
	cmpl	%ebp, (%esp)
	jle	L131
	movl	12(%esp), %eax
	movl	__ZL2xm, %edx
	addl	%eax, %ebp
	addl	(%esp), %eax
	movl	%eax, 8(%esp)
	.p2align 4
	.p2align 3
L148:
	movzbl	__ZL8opixbuf1(%edx), %eax
	movzbl	olinbuf(%edi), %ebx
	movzbl	__ZL8opixbuf0(%edx), %ecx
/APP
 # 484 "source/build/src/kplib.cpp" 1
	movl %ecx, %edx 
subl %eax, %edx 
subl %ebx, %edx 
leal (abstab10+2048)(,%edx,4), %edx 
movl (%edx,%ebx,4), %esi 
movl (%edx,%ecx,4), %edi 
cmpl %esi, %edi 
cmovgel %esi, %edi 
cmovgel %ebx, %ecx 
cmpl (%edx,%eax,4), %edi 
cmovgel %eax, %ecx 

 # 0 "" 2
/NO_APP
	movl	__ZL4xplc, %edx
	movl	__ZL2xm, %eax
	addl	$1, %ebp
	addb	-1(%ebp), %cl
	movzbl	olinbuf(%edx), %ebx
	leal	-1(%edx), %edi
	movb	%cl, olinbuf(%edx)
	movl	__ZL3xmn(,%eax,4), %edx
	movb	%cl, __ZL8opixbuf1(%eax)
	movb	%bl, __ZL8opixbuf0(%eax)
	movl	%edi, __ZL4xplc
	movl	%edx, __ZL2xm
	cmpl	%ebp, 8(%esp)
	jne	L148
	jmp	L138
	.p2align 4,,10
	.p2align 3
L171:
	movl	$-1, __ZL4filt
	movl	20(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %edi
	.cfi_restore 7
L126:
	movl	16(%esp), %ebx
	movl	28(%esp), %ebp
	addl	$32, %esp
	.cfi_restore 3
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L211:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%ecx, __ZL9filter1st
	jmp	L173
	.p2align 4,,10
	.p2align 3
L210:
	subl	$1, %eax
	movl	%eax, _intlac
	call	__ZL8initpassv.isra.0
	jmp	L170
	.p2align 4,,10
	.p2align 3
L150:
	movl	__ZL3xr1, %edi
	movl	_ixstp, %ebp
	movl	8(%esp), %esi
	cmpl	%edi, %eax
	jle	L157
	.p2align 6
	.p2align 4
	.p2align 3
L158:
	movzbl	olinbuf(%eax), %edx
	movzbl	olinbuf-1(%eax), %ecx
	subl	$2, %eax
	movl	palcol(,%edx,4), %edx
	sall	$24, %ecx
	andl	$16777215, %edx
	orl	%ecx, %edx
	movl	%edx, (%esi)
	addl	%ebp, %esi
	cmpl	%edi, %eax
	jg	L158
	jmp	L157
	.p2align 4,,10
	.p2align 3
L152:
	movl	__ZL3xr1, %edx
	movl	8(%esp), %edi
	movl	%eax, %ecx
	movl	_ixstp, %ebx
/APP
 # 504 "source/build/src/kplib.cpp" 1
	subl %edx, %ecx 
jle 3f 
addl $olinbuf, %edx 
cmpl $0, trnsrgb(,1) 
jz 2f 
0: movl (%ecx,%edx,1), %eax 
orl $0xff000000, %eax 
cmpl trnsrgb(,1), %eax 
jne 1f 
andl $0xffffff, %eax 
1: subl $3, %ecx 
movl %eax, (%edi) 
leal (%edi,%ebx,1), %edi 
jnz 0b 
jmp 3f 
2: movl (%ecx,%edx,1), %eax 
orl $0xff000000, %eax 
subl $3, %ecx 
movl %eax, (%edi) 
leal (%edi,%ebx,1), %edi 
jnz 2b 
3: 

 # 0 "" 2
/NO_APP
	movl	__ZL7nfplace, %eax
	movl	__ZL4yplc, %ebx
	movl	%eax, 8(%esp)
	jmp	L157
	.p2align 4,,10
	.p2align 3
L151:
	movl	__ZL3xr1, %ecx
	movl	_ixstp, %esi
	movl	%ebx, %edi
	movl	8(%esp), %edx
	cmpl	%ecx, %eax
	jle	L157
	.p2align 6
	.p2align 4
	.p2align 3
L159:
	movzbl	olinbuf(%eax), %ebx
	subl	$4, %eax
	movb	%bl, (%edx)
	movzbl	olinbuf+5(%eax), %ebx
	movb	%bl, 1(%edx)
	movzbl	olinbuf+6(%eax), %ebx
	movb	%bl, 2(%edx)
	movzbl	olinbuf+3(%eax), %ebx
	movb	%bl, 3(%edx)
	addl	%esi, %edx
	cmpl	%ecx, %eax
	jg	L159
	movl	%edi, %ebx
	jmp	L157
	.p2align 4,,10
	.p2align 3
L131:
	movl	%ebp, (%esp)
	jmp	L138
	.p2align 4,,10
	.p2align 3
L161:
	cmpb	$8, %dl
	jne	L157
	movl	__ZL3xr1, %edx
	movl	8(%esp), %edi
	movl	%eax, %ecx
	movl	_ixstp, %ebx
/APP
 # 533 "source/build/src/kplib.cpp" 1
	subl %edx, %ecx 
jle 1f 
addl $olinbuf, %edx 
0: movzbl (%ecx,%edx,1), %eax 
movl palcol(,%eax,4), %eax 
subl $1, %ecx 
movl %eax, (%edi) 
leal (%edi,%ebx,1), %edi 
jnz 0b 
1: 

 # 0 "" 2
/NO_APP
	movl	__ZL7nfplace, %eax
	movl	__ZL4yplc, %ebx
	movl	%eax, 8(%esp)
	jmp	L157
	.p2align 4,,10
	.p2align 3
L209:
	.cfi_restore 6
	.cfi_restore 7
	testl	%edx, %edx
	jle	L126
	movzbl	(%eax), %ecx
	movl	__ZL9filter1st, %ebx
	movl	%ecx, __ZL4filt
	testl	%ebx, %ebx
	js	L212
	movl	$1, %ebx
	sall	%cl, %ebx
	orl	%ebx, __ZL9filterest
L130:
	movl	$1, %ebp
	jmp	L127
	.p2align 4,,10
	.p2align 3
L212:
	movl	%ecx, __ZL9filter1st
	jmp	L130
	.p2align 4,,10
	.p2align 3
L162:
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	__ZL3xr1, %ebp
	cmpl	%ebp, %eax
	jle	L157
	movl	_ixstp, %edi
	movl	8(%esp), %esi
	.p2align 6
	.p2align 4
	.p2align 3
L167:
	movl	%eax, %edx
	movl	%eax, %ecx
	subl	$1, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	olinbuf(%edx), %edx
	sarl	%cl, %edx
	movl	palcol(,%edx,4), %edx
	movl	%edx, (%esi)
	addl	%edi, %esi
	cmpl	%ebp, %eax
	jne	L167
	jmp	L157
	.p2align 4,,10
	.p2align 3
L160:
	movl	__ZL3xr1, %edi
	movl	_ixstp, %ebp
	movl	8(%esp), %esi
	cmpl	%edi, %eax
	jle	L157
	.p2align 6
	.p2align 4
	.p2align 3
L169:
	movl	%eax, %edx
	movl	%eax, %ecx
	subl	$4, %eax
	sarl	$3, %edx
	andl	$4, %ecx
	movzbl	olinbuf(%edx), %edx
	sarl	%cl, %edx
	movl	palcol(,%edx,4), %edx
	movl	%edx, (%esi)
	addl	%ebp, %esi
	cmpl	%edi, %eax
	jg	L169
	jmp	L157
	.cfi_endproc
LFE8:
	.section .rdata,"dr"
	.align 4
LC2:
	.ascii "hash_findprime: size %I64urequested, consider expanding prime table!\0"
LC3:
	.ascii "source/build/src/hash.cpp\0"
	.text
	.p2align 4
	.def	__ZL14hash_findprimey;	.scl	3;	.type	32;	.endef
__ZL14hash_findprimey:
LFB11:
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
	subl	$48, %esp
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%eax, 28(%esp)
	movl	$1056048, %eax
	cmpl	%edi, %eax
	movl	$0, %eax
	movl	%edx, 24(%esp)
	sbbl	%edx, %eax
	jc	L222
	movl	$10589, 44(%esp)
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	xorl	%edi, %edi
	movl	$0, 40(%esp)
	movl	$187, %ecx
	jmp	L214
	.p2align 4,,10
	.p2align 3
L223:
	movl	32(%esp), %eax
	movl	36(%esp), %edx
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	xorl	%ecx, %eax
	xorl	%ebx, %edx
	orl	%edx, %eax
	je	L219
L224:
	movl	%ecx, %eax
	movl	%ebx, %edx
	subl	%esi, %eax
	sbbl	%edi, %edx
	shrdl	$1, %edx, %eax
	addl	%esi, %eax
	movl	__ZL6primes(,%eax,8), %edx
	movl	__ZL6primes+4(,%eax,8), %eax
	movl	%edx, 44(%esp)
	movl	%eax, 40(%esp)
L214:
	movl	%ecx, %eax
	movl	%ebx, %edx
	subl	%esi, %eax
	sbbl	%edi, %edx
	shrdl	$1, %edx, %eax
	shrl	%edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, 32(%esp)
	movl	28(%esp), %eax
	cmpl	%eax, 44(%esp)
	movl	40(%esp), %eax
	movl	%edx, 36(%esp)
	sbbl	24(%esp), %eax
	jc	L223
	movl	44(%esp), %ebx
	movl	24(%esp), %eax
	cmpl	%ebx, 28(%esp)
	sbbl	40(%esp), %eax
	jnc	L213
	movl	32(%esp), %ecx
	movl	36(%esp), %ebx
	movl	%esi, %eax
	movl	%edi, %edx
	xorl	%ecx, %eax
	xorl	%ebx, %edx
	orl	%edx, %eax
	jne	L224
L219:
	movl	__ZL6primes(,%esi,8), %edi
	movl	__ZL6primes+4(,%esi,8), %eax
	movl	%edi, 44(%esp)
	movl	%eax, 40(%esp)
L213:
	movl	44(%esp), %eax
	movl	40(%esp), %edx
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
L222:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L225
L215:
	movl	$1056049, 44(%esp)
	movl	44(%esp), %eax
	movl	$0, 40(%esp)
	movl	40(%esp), %edx
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
L225:
	.cfi_restore_state
	movl	24(%esp), %eax
	movl	%edi, 16(%esp)
	movl	$LC2, 12(%esp)
	movl	%eax, 20(%esp)
	movl	$29, 8(%esp)
	movl	$LC3, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L215
	.cfi_endproc
LFE11:
	.p2align 4
	.def	__ZL13lzwuncompressPKciPc.constprop.0;	.scl	3;	.type	32;	.endef
__ZL13lzwuncompressPKciPc.constprop.0:
LFB15:
	.cfi_startproc
	subl	$56, %esp
	.cfi_def_cfa_offset 60
	movl	%edi, 48(%esp)
	.cfi_offset 7, -12
	movswl	__ZL10lzwcompbuf+2, %edi
	movl	%ebx, 40(%esp)
	.cfi_offset 3, -20
	movswl	__ZL10lzwcompbuf, %ebx
	movl	%edi, 32(%esp)
	testl	%edi, %edi
	je	L250
	movl	%esi, 44(%esp)
	movl	$63, %eax
	movl	$255, %edx
	movl	%ebp, 52(%esp)
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	.p2align 4
	.p2align 3
L227:
	leal	-1(%edx), %ecx
	movw	%dx, __ZL7lzwbuf3+6(,%eax,8)
	movw	%cx, __ZL7lzwbuf3+4(,%eax,8)
	movw	%cx, __ZL7lzwbuf2+4(,%eax,8)
	leal	-2(%edx), %ecx
	movw	%cx, __ZL7lzwbuf3+2(,%eax,8)
	movw	%cx, __ZL7lzwbuf2+2(,%eax,8)
	leal	-3(%edx), %ecx
	movw	%dx, __ZL7lzwbuf2+6(,%eax,8)
	subl	$4, %edx
	movw	%cx, __ZL7lzwbuf3(,%eax,8)
	movw	%cx, __ZL7lzwbuf2(,%eax,8)
	subl	$1, %eax
	jne	L227
	movl	$1, %eax
	movl	$1, %edx
	movl	$196610, __ZL7lzwbuf3+4
	movl	$256, %ebp
	movw	%ax, __ZL7lzwbuf3+2
	movw	%dx, __ZL7lzwbuf2+2
	movl	$196610, __ZL7lzwbuf2+4
	movl	$0, 20(%esp)
	movl	$32, 24(%esp)
	movl	$256, 12(%esp)
	movl	$8, 16(%esp)
	movl	%ebx, 36(%esp)
	.p2align 4
	.p2align 3
L238:
	movl	24(%esp), %edi
	movl	12(%esp), %ebx
	movl	%edi, %eax
	movl	%edi, %ecx
	addl	16(%esp), %edi
	sarl	$3, %eax
	andl	$7, %ecx
	movl	__ZL10lzwcompbuf(%eax), %eax
	sarl	%cl, %eax
	movl	%eax, %ecx
	leal	-1(%ebx), %eax
	andl	%eax, %ecx
	movl	%ebx, %eax
	leal	-1(%ebp), %ebx
	sarl	%eax
	movl	%ecx, %edx
	subl	$1, %eax
	andl	%eax, %edx
	andl	%ebx, %eax
	leal	-1(%edi), %ebx
	cmpl	%eax, %edx
	movl	20(%esp), %eax
	cmovg	%edx, %ecx
	cmovle	%edi, %ebx
	leal	__ZL9lzwrawbuf(%eax), %edi
	movl	%ebx, 24(%esp)
	movl	%ecx, %esi
	leal	1(%eax), %edx
	movw	%cx, __ZL7lzwbuf3(%ebp,%ebp)
	movl	%edi, 28(%esp)
	cmpl	$255, %ecx
	jle	L230
	xorl	%edi, %edi
	.p2align 6
	.p2align 4
	.p2align 3
L231:
	movzwl	__ZL7lzwbuf2(%ecx,%ecx), %eax
	movswl	__ZL7lzwbuf3(%ecx,%ecx), %ecx
	movl	%edi, %ebx
	movb	%al, __ZL9lzwtmpbuf(%edi)
	movl	%ecx, %esi
	movl	%edi, %eax
	leal	1(%edi), %edi
	cmpw	$255, %cx
	jg	L231
	movl	28(%esp), %edi
	movb	%cl, (%edi)
	cmpl	$3, %ebx
	jle	L234
	.p2align 6
	.p2align 4
	.p2align 3
L235:
	movzbl	__ZL9lzwtmpbuf(%eax), %ecx
	subl	$4, %eax
	addl	$4, %edx
	movb	%cl, __ZL9lzwrawbuf-4(%edx)
	movzbl	__ZL9lzwtmpbuf+3(%eax), %ecx
	movb	%cl, __ZL9lzwrawbuf-3(%edx)
	movzbl	__ZL9lzwtmpbuf+2(%eax), %ecx
	movb	%cl, __ZL9lzwrawbuf-2(%edx)
	movzbl	__ZL9lzwtmpbuf+1(%eax), %ecx
	movb	%cl, __ZL9lzwrawbuf-1(%edx)
	cmpl	$3, %eax
	jg	L235
	movl	20(%esp), %edi
	leal	-4(%ebx), %edx
	movl	%ebx, %eax
	andl	$-4, %edx
	andl	$3, %eax
	leal	5(%edi,%edx), %edx
L234:
	leal	(%eax,%edx), %ecx
L236:
	movzbl	__ZL9lzwtmpbuf(%eax), %ebx
	movl	%eax, %edx
	negl	%edx
	movb	%bl, __ZL9lzwrawbuf(%edx,%ecx)
	subl	$1, %eax
	jnb	L236
	leal	1(%ecx), %eax
	movl	%eax, 20(%esp)
L233:
	movl	16(%esp), %edi
	movw	%si, __ZL7lzwbuf2-2(%ebp,%ebp)
	movw	%si, __ZL7lzwbuf2(%ebp,%ebp)
	movl	12(%esp), %esi
	addl	$1, %ebp
	leal	1(%edi), %eax
	cmpl	%ebp, %esi
	cmovge	%edi, %eax
	movl	%eax, 16(%esp)
	leal	(%esi,%esi), %eax
	cmovge	%esi, %eax
	movl	%eax, 12(%esp)
	cmpl	%ebp, 32(%esp)
	jg	L238
	movl	36(%esp), %ebx
	movl	44(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	52(%esp), %ebp
	.cfi_restore 5
	movl	48(%esp), %edi
	movl	%ebx, %eax
	movl	40(%esp), %ebx
	addl	$56, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L230:
	.cfi_restore_state
	movl	20(%esp), %eax
	movl	%edx, 20(%esp)
	movb	%cl, __ZL9lzwrawbuf(%eax)
	jmp	L233
L250:
	.cfi_restore 5
	.cfi_restore 6
	leal	-1(%eax), %eax
	movl	$__ZL10lzwcompbuf+4, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$__ZL9lzwrawbuf, (%esp)
	call	_memcpy
	movl	%ebx, %eax
	movl	48(%esp), %edi
	movl	40(%esp), %ebx
	addl	$56, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE15:
	.p2align 4
	.def	__ZL8kpegrendPKciiiii;	.scl	3;	.type	32;	.endef
__ZL8kpegrendPKciiiii:
LFB16:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$496, %esp
	movl	%eax, -420(%ebp)
	movl	8(%ebp), %eax
	movl	%ebx, -12(%ebp)
	.cfi_offset 3, -20
	movl	__ZL10kpeginited, %ebx
	movl	%eax, -464(%ebp)
	movl	12(%ebp), %eax
	movl	%edi, -4(%ebp)
	movl	%eax, -468(%ebp)
	movl	16(%ebp), %eax
	movl	%edx, -436(%ebp)
	movl	%ecx, -476(%ebp)
	movl	%eax, -472(%ebp)
	testl	%ebx, %ebx
	.cfi_offset 7, -12
	je	L658
L252:
	movl	-420(%ebp), %eax
	cmpw	$-9985, (%eax)
	jne	L309
	movl	-420(%ebp), %eax
	xorps	%xmm0, %xmm0
	movl	-436(%ebp), %edi
	movl	$0, __ZL6hufcnt
	movl	$0, __ZL6hufcnt+4
	addl	%eax, %edi
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	leal	2(%eax), %esi
	movl	%edi, -304(%ebp)
	movl	$0, __ZL6hufcnt+8
	movl	$0, __ZL6hufcnt+12
	movl	$0, __ZL6hufcnt+16
	movl	$0, __ZL6hufcnt+20
	movl	$0, __ZL6hufcnt+24
	movl	$0, __ZL6hufcnt+28
	movb	$0, __ZL8kcoltype
	movb	$8, __ZL8bitdepth
	movl	$0, -380(%ebp)
	movl	$0, -400(%ebp)
	movl	$0, -316(%ebp)
	movl	$0, -328(%ebp)
	movl	$0, -388(%ebp)
	movl	$0, -384(%ebp)
	movl	$0, -408(%ebp)
	movl	$0, -404(%ebp)
	movl	$0, -456(%ebp)
	movl	$0, -452(%ebp)
	movl	$0, -368(%ebp)
	movl	$0, -432(%ebp)
	movups	%xmm0, __ZL6lastdc
L444:
	leal	1(%esi), %eax
	cmpb	$-1, (%esi)
	je	L268
L471:
	movl	%eax, %esi
L267:
	movl	%esi, %eax
	subl	-420(%ebp), %eax
	cmpl	-436(%ebp), %eax
	jl	L444
	movl	-328(%ebp), %ebx
	testl	%ebx, %ebx
	je	L443
	movzbl	__ZL14gnumcomponents, %eax
	movl	%eax, -324(%ebp)
	movl	%eax, __ZL14lnumcomponents
	testl	%eax, %eax
	je	L445
	xorl	%eax, %eax
	leal	-268(%ebp), %ecx
	leal	-284(%ebp), %ebx
L446:
	movl	__ZL10gcomphsamp(,%eax,4), %edx
	movl	%edx, __ZL10lcomphsamp(,%eax,4)
	sall	$3, %edx
	movl	%edx, __ZL10gcomphsamp(,%eax,4)
	movl	__ZL10gcompvsamp(,%eax,4), %edx
	movl	%edx, __ZL10lcompvsamp(,%eax,4)
	sall	$3, %edx
	movl	%edx, __ZL10gcompvsamp(,%eax,4)
	movl	-384(%ebp), %edx
	subl	__ZL15gcomphsampshift(,%eax,4), %edx
	addl	$3, %edx
	movl	%edx, (%ecx,%eax,4)
	movl	-388(%ebp), %edx
	subl	__ZL15gcompvsampshift(,%eax,4), %edx
	addl	$3, %edx
	movl	%edx, (%ebx,%eax,4)
	addl	$1, %eax
	cmpl	%eax, -324(%ebp)
	jg	L446
L445:
	movl	__ZL15gcomphsampshift, %eax
	movl	__ZL15gcompvsampshift, %ecx
	movl	%eax, __ZL16lcomphsampshift0
	movl	__ZL10lcomphsamp, %eax
	movl	%ecx, __ZL16lcompvsampshift0
	sall	%cl, %eax
	movl	-400(%ebp), %ecx
	movl	%eax, __ZL12lcomphvsamp0
	testl	%ecx, %ecx
	je	L447
	movl	-380(%ebp), %edx
	testl	%edx, %edx
	je	L447
	movl	__ZL10gcompvsamp, %esi
	xorl	%edi, %edi
L448:
	movl	-324(%ebp), %eax
	movl	__ZL10gcomphsamp, %ebx
	movl	$0, -320(%ebp)
	testl	%eax, %eax
	jne	L659
	movl	%ebx, %eax
	movl	%esi, %ebx
	movl	%eax, %esi
L459:
	movl	-320(%ebp), %eax
	movl	$__ZL3dct, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL7yrbrendiiPi
	addl	%esi, -320(%ebp)
	movl	-380(%ebp), %ecx
	cmpl	%ecx, -320(%ebp)
	jl	L459
	movl	%ebx, %esi
L458:
	addl	%esi, %edi
	cmpl	-400(%ebp), %edi
	jl	L448
L447:
	movl	-328(%ebp), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L443:
	movl	-8(%ebp), %esi
	.cfi_restore 6
	xorl	%eax, %eax
L251:
	movl	-12(%ebp), %ebx
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
L268:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%eax, %ebx
	movzbl	(%eax), %edx
	leal	1(%eax), %eax
	cmpb	$-1, %dl
	je	L268
	cmpb	$-39, %dl
	je	L471
	movzwl	1(%ebx), %eax
	leal	3(%ebx), %esi
	rolw	$8, %ax
	movzwl	%ax, %eax
	subl	$2, %eax
	movl	%eax, -312(%ebp)
	leal	64(%edx), %eax
	cmpb	$29, %al
	ja	L269
	movzbl	%al, %eax
	jmp	*L271(,%eax,4)
	.section .rdata,"dr"
	.align 4
L271:
	.long	L275
	.long	L275
	.long	L275
	.long	L269
	.long	L274
	.long	L269
	.long	L269
	.long	L269
	.long	L269
	.long	L269
	.long	L269
	.long	L269
	.long	L269
	.long	L269
	.long	L269
	.long	L269
	.long	L269
	.long	L269
	.long	L269
	.long	L269
	.long	L269
	.long	L269
	.long	L269
	.long	L269
	.long	L269
	.long	L269
	.long	L273
	.long	L272
	.long	L269
	.long	L270
	.text
L270:
	movzwl	3(%ebx), %eax
	addl	-312(%ebp), %esi
	rolw	$8, %ax
	movzwl	%ax, %eax
	movl	%eax, -432(%ebp)
	jmp	L267
L660:
	subl	$65, -312(%ebp)
	addl	$65, %esi
L306:
	movl	-312(%ebp), %ecx
	testl	%ecx, %ecx
	jle	L267
L272:
	movzbl	(%esi), %eax
	xorl	%ebx, %ebx
	movl	%eax, %edx
	andl	$15, %edx
	movl	%edx, %edi
	sall	$6, %edi
	shrb	$4, %al
	jne	L299
L302:
	movl	__ZL5unzig(,%ebx,4), %ecx
	movzbl	1(%esi,%ebx), %eax
	movl	%ecx, %edx
	sall	$19, %eax
	andl	$7, %edx
	je	L300
	movl	__ZL7cosqr16(,%edx,4), %edx
/APP
 # 1358 "source/build/src/kplib.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
L300:
	movl	%ecx, %edx
	sarl	$3, %edx
	je	L301
	movl	__ZL7cosqr16(,%edx,4), %edx
/APP
 # 1359 "source/build/src/kplib.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
L301:
	leal	(%edi,%ecx), %edx
	addl	$1, %ebx
	movl	%eax, __ZL7quantab(,%edx,4)
	cmpl	$64, %ebx
	jne	L302
	jmp	L660
L299:
	movzwl	1(%esi,%ebx,2), %eax
	movl	__ZL5unzig(,%ebx,4), %ecx
	rolw	$8, %ax
	movl	%ecx, %edx
	sall	$19, %eax
	andl	$7, %edx
	je	L304
	movl	__ZL7cosqr16(,%edx,4), %edx
/APP
 # 1358 "source/build/src/kplib.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
L304:
	movl	%ecx, %edx
	sarl	$3, %edx
	je	L305
	movl	__ZL7cosqr16(,%edx,4), %edx
/APP
 # 1359 "source/build/src/kplib.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
L305:
	leal	(%edi,%ecx), %edx
	addl	$1, %ebx
	movl	%eax, __ZL7quantab(,%edx,4)
	cmpl	$64, %ebx
	jne	L299
	subl	$129, -312(%ebp)
	addl	$129, %esi
	jmp	L306
L659:
	leal	8(%edi), %eax
	movl	%esi, -352(%ebp)
	movl	%ebx, %esi
	movl	%edi, %ebx
	movl	%eax, -348(%ebp)
L457:
	movl	$__ZL3dct, -336(%ebp)
	xorl	%edx, %edx
L460:
	movl	__ZL10gcompvsamp(,%edx,4), %ecx
	testl	%ecx, %ecx
	jle	L452
	movl	-348(%ebp), %eax
	subl	$1, %ecx
	movl	__ZL10gcomphsamp(,%edx,4), %edi
	andl	$-8, %ecx
	addl	%ecx, %eax
	movl	%eax, -332(%ebp)
	movl	%ebx, %eax
L456:
	testl	%edi, %edi
	jg	L661
	addl	$8, %eax
	cmpl	%eax, -332(%ebp)
	jne	L456
L452:
	addl	$1, %edx
	cmpl	%edx, -324(%ebp)
	jg	L460
L455:
	movl	-320(%ebp), %edi
	movl	$__ZL3dct, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%edi, (%esp)
	call	__ZL7yrbrendiiPi
	leal	(%edi,%esi), %eax
	movl	%eax, -320(%ebp)
	cmpl	-380(%ebp), %eax
	jl	L457
	movl	-352(%ebp), %esi
	movl	%ebx, %edi
	jmp	L458
L661:
	leal	-204(%ebp), %ecx
	movl	%eax, -304(%ebp)
	movl	-320(%ebp), %eax
	movl	%ecx, -340(%ebp)
	leal	-268(%ebp), %ecx
	movl	%ecx, -360(%ebp)
	leal	-284(%ebp), %ecx
	movl	%ecx, -356(%ebp)
	leal	-1(%edi), %ecx
	movl	%ecx, %edi
	shrl	$3, %ecx
	movl	%ebx, -364(%ebp)
	andl	$-8, %edi
	movl	%ecx, -344(%ebp)
	leal	8(%eax,%edi), %eax
	movl	%esi, -368(%ebp)
	movl	%eax, -308(%ebp)
	movl	-304(%ebp), %eax
L451:
	movl	-340(%ebp), %edi
	movl	__ZL12gcompquantab(,%edx,4), %ebx
	movl	%eax, -372(%ebp)
	movl	%edx, -376(%ebp)
	movl	(%edi,%edx,4), %esi
	movl	-356(%ebp), %edi
	sall	$8, %ebx
	movl	(%edi,%edx,4), %ecx
	movl	%eax, %edi
	sarl	%cl, %edi
	movl	-60(%ebp,%edx,4), %ecx
	imull	%edi, %ecx
	movl	-360(%ebp), %edi
	movl	(%edi,%edx,4), %edi
	movl	%ecx, -312(%ebp)
	movl	%edi, -316(%ebp)
	movl	-320(%ebp), %edi
	movl	%edi, -304(%ebp)
	movl	-336(%ebp), %edi
	.p2align 4
	.p2align 3
L450:
	movzbl	-316(%ebp), %ecx
	movl	-304(%ebp), %eax
	sarl	%cl, %eax
	movl	-312(%ebp), %ecx
	addl	%eax, %ecx
	xorl	%eax, %eax
	sall	$7, %ecx
	.p2align 6
	.p2align 4
	.p2align 3
L449:
	movl	__ZL5zigit(,%eax,4), %edx
	leal	(%esi,%edx,2), %edx
	movswl	(%edx,%ecx), %edx
	imull	__ZL7quantab(%ebx,%eax,4), %edx
	movl	%edx, (%edi,%eax,4)
	addl	$1, %eax
	cmpl	$64, %eax
	jne	L449
	movl	%edi, %eax
	movl	$255, %edx
	addl	$256, %edi
	call	__ZL9invdct8x8Pih
	addl	$8, -304(%ebp)
	movl	-304(%ebp), %eax
	cmpl	%eax, -308(%ebp)
	jne	L450
	movl	-344(%ebp), %edi
	movl	-372(%ebp), %eax
	movl	-376(%ebp), %edx
	leal	1(%edi), %ecx
	addl	$8, %eax
	sall	$8, %ecx
	addl	%ecx, -336(%ebp)
	cmpl	%eax, -332(%ebp)
	jne	L451
	movl	-364(%ebp), %ebx
	movl	-368(%ebp), %esi
	addl	$1, %edx
	cmpl	%edx, -324(%ebp)
	jg	L460
	jmp	L455
L273:
	movl	-380(%ebp), %edx
	testl	%edx, %edx
	je	L647
	movl	-400(%ebp), %eax
	testl	%eax, %eax
	je	L647
	movzbl	3(%ebx), %esi
	movl	%esi, -364(%ebp)
	movl	%esi, __ZL14lnumcomponents
	testl	%esi, %esi
	je	L647
	cmpl	$1, %esi
	je	L311
	movb	$2, __ZL8kcoltype
	xorl	%eax, %eax
L312:
	movzbl	4(%ebx,%eax,2), %edx
	movl	%edx, __ZL7lcompid(,%eax,4)
	movzbl	5(%ebx,%eax,2), %edx
	movl	%edx, %ecx
	andl	$15, %edx
	shrb	$4, %cl
	movl	%edx, __ZL7lcompac(,%eax,4)
	movzbl	%cl, %ecx
	movl	%ecx, __ZL7lcompdc(,%eax,4)
	addl	$1, %eax
	cmpl	%eax, %esi
	jg	L312
L468:
	leal	4(%ebx,%esi,2), %eax
	leal	2(%ebx,%esi,2), %edi
	movzbl	(%eax), %ecx
	movzbl	1(%eax), %esi
	movzbl	2(%eax), %eax
	movb	%cl, -308(%ebp)
	movl	%eax, %ebx
	movl	%eax, %edx
	movl	-456(%ebp), %eax
	movl	%esi, -312(%ebp)
	shrb	$4, %bl
	andl	$15, %edx
	movb	%bl, -344(%ebp)
	movb	%dl, -320(%ebp)
	testl	%eax, %eax
	jne	L313
	movl	%ebx, %eax
	orl	%edx, %eax
	orb	%cl, %al
	jne	L493
	cmpl	$63, %esi
	jne	L493
L313:
	movzbl	-308(%ebp), %eax
	movzbl	__ZL14gnumcomponents, %ebx
	addl	$5, %edi
	movl	%eax, -376(%ebp)
	movzbl	-320(%ebp), %eax
	movb	%bl, -324(%ebp)
	movl	%eax, -360(%ebp)
	movl	%ebx, -308(%ebp)
	testb	%bl, %bl
	je	L648
L467:
	movl	__ZL7lcompid, %eax
	movb	$0, -320(%ebp)
	xorl	%ebx, %ebx
	movl	$2147483647, %ecx
	movl	%edi, -336(%ebp)
	movl	-444(%ebp), %edx
	movl	$2147483647, %esi
	movl	%eax, -332(%ebp)
	xorl	%eax, %eax
L323:
	movl	-332(%ebp), %edi
	cmpl	__ZL7gcompid(,%eax,4), %edi
	jne	L327
	movl	-204(%ebp,%eax,4), %edx
	movl	__ZL15gcomphsampshift(,%eax,4), %ebx
	movb	$1, -320(%ebp)
	movl	-384(%ebp), %edi
	movl	%edx, -252(%ebp)
	movl	-60(%ebp,%eax,4), %edx
	subl	%ebx, %edi
	movl	%ebx, -424(%ebp)
	movl	%edx, -156(%ebp)
	movl	__ZL10gcomphsamp(,%eax,4), %edx
	leal	3(%edi), %ebx
	movl	-388(%ebp), %edi
	movl	%ebx, -268(%ebp)
	movl	%edx, __ZL10lcomphsamp
	movl	__ZL10gcompvsamp(,%eax,4), %edx
	movl	%edx, __ZL10lcompvsamp
	movl	__ZL12gcompquantab(,%eax,4), %edx
	movl	%edx, __ZL12lcompquantab
	movl	__ZL15gcompvsampshift(,%eax,4), %edx
	subl	%edx, %edi
	leal	3(%edi), %ebx
	movl	%ebx, -284(%ebp)
	movl	-424(%ebp), %ebx
	cmpl	%ebx, %ecx
	cmovg	%ebx, %ecx
	cmpl	%edx, %esi
	movl	$1, %ebx
	cmovg	%edx, %esi
L327:
	addl	$1, %eax
	cmpl	-308(%ebp), %eax
	jl	L323
	movl	%edx, -444(%ebp)
	movl	-336(%ebp), %edi
L466:
	xorl	%edx, %edx
	movl	-364(%ebp), %eax
	addl	$1, %edx
	cmpl	%eax, %edx
	je	L328
L663:
	cmpb	$0, -324(%ebp)
	je	L662
	movl	__ZL7lcompid(,%edx,4), %eax
	movl	%edi, -336(%ebp)
	movl	%eax, -332(%ebp)
	xorl	%eax, %eax
L325:
	movl	-332(%ebp), %edi
	cmpl	__ZL7gcompid(,%eax,4), %edi
	jne	L324
	movl	-204(%ebp,%eax,4), %edi
	movl	%edi, -252(%ebp,%edx,4)
	movl	-60(%ebp,%eax,4), %edi
	movl	%edi, -156(%ebp,%edx,4)
	movl	__ZL10gcomphsamp(,%eax,4), %edi
	movl	%edi, __ZL10lcomphsamp(,%edx,4)
	movl	__ZL10gcompvsamp(,%eax,4), %edi
	movl	%edi, __ZL10lcompvsamp(,%edx,4)
	movl	__ZL12gcompquantab(,%eax,4), %edi
	movl	%edi, __ZL12lcompquantab(,%edx,4)
	movl	-384(%ebp), %edi
	subl	__ZL15gcomphsampshift(,%eax,4), %edi
	addl	$3, %edi
	movl	%edi, -268(%ebp,%edx,4)
	movl	-388(%ebp), %edi
	subl	__ZL15gcompvsampshift(,%eax,4), %edi
	addl	$3, %edi
	cmpl	__ZL15gcomphsampshift(,%eax,4), %ecx
	cmovg	__ZL15gcomphsampshift(,%eax,4), %ecx
	movl	%edi, -284(%ebp,%edx,4)
	cmpl	__ZL15gcompvsampshift(,%eax,4), %esi
	cmovg	__ZL15gcompvsampshift(,%eax,4), %esi
L324:
	addl	$1, %eax
	cmpl	%eax, -308(%ebp)
	jg	L325
	movl	-364(%ebp), %eax
	addl	$1, %edx
	movl	-336(%ebp), %edi
	cmpl	%eax, %edx
	jne	L663
L328:
	cmpb	$0, -320(%ebp)
	je	L331
	movl	-444(%ebp), %eax
	movl	%eax, __ZL16lcompvsampshift0
L331:
	testb	%bl, %bl
	je	L320
	movl	-424(%ebp), %eax
	movl	%eax, __ZL16lcomphsampshift0
L320:
	movl	-404(%ebp), %edx
	movl	__ZL10lcomphsamp, %eax
	movl	$0, -340(%ebp)
	movl	$0, -392(%ebp)
	sarl	%cl, %edx
	movl	%esi, %ecx
	movb	$-48, -308(%ebp)
	cmpl	%eax, %edx
	leal	0(,%edx,8), %ebx
	cmovle	%edx, %eax
	movl	-408(%ebp), %edx
	movl	%ebx, -460(%ebp)
	movl	-380(%ebp), %ebx
	sarl	%cl, %edx
	movl	__ZL10lcompvsamp, %ecx
	movl	%eax, __ZL10lcomphsamp
	cmpl	%ecx, %edx
	cmovle	%edx, %ecx
	imull	%ecx, %eax
	movl	%ecx, __ZL10lcompvsamp
	movzbl	-360(%ebp), %ecx
	movl	%eax, __ZL12lcomphvsamp0
	movl	__ZL7kp_xres, %eax
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	movl	-400(%ebp), %ebx
	movl	%eax, __ZL8clipxdim
	movl	__ZL7kp_yres, %eax
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	movl	-376(%ebp), %ebx
	movl	%eax, __ZL8clipydim
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -428(%ebp)
	movl	%eax, -292(%ebp)
	negl	%eax
	testl	%ebx, %ebx
	movl	%eax, -440(%ebp)
	movl	%eax, -288(%ebp)
	movl	$1, %eax
	cmovg	%ebx, %eax
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	movl	%eax, -416(%ebp)
	movl	-432(%ebp), %eax
	movl	%eax, -448(%ebp)
L333:
	movl	%edx, -480(%ebp)
	movzbl	-308(%ebp), %ecx
	movl	$0, -372(%ebp)
L442:
	leal	-4(%edi), %eax
	subl	-420(%ebp), %eax
	cmpl	-436(%ebp), %eax
	jge	L642
	movl	-328(%ebp), %eax
	testl	%eax, %eax
	je	L335
	movl	-364(%ebp), %eax
	testl	%eax, %eax
	jle	L337
L336:
	movl	$0, -336(%ebp)
	movl	%ecx, %edx
L437:
	movl	-328(%ebp), %ecx
	movl	-336(%ebp), %eax
	testl	%ecx, %ecx
	je	L341
	movl	__ZL10lcompvsamp(,%eax,4), %eax
	movl	%eax, -308(%ebp)
	sall	$3, %eax
	testl	%eax, %eax
	jle	L343
L340:
	movl	-336(%ebp), %eax
	movb	%dl, -481(%ebp)
	movl	$0, -396(%ebp)
	movl	__ZL7lcompac(,%eax,4), %ecx
	movl	%edi, -320(%ebp)
	leal	4(%ecx), %eax
	movl	%ecx, -308(%ebp)
	movl	%eax, %ecx
	movl	%eax, -412(%ebp)
	sall	$12, %ecx
	movl	%ecx, -356(%ebp)
	movl	__ZL11hufquickcnt(,%eax,4), %ecx
	movl	-336(%ebp), %eax
	movl	%ecx, -352(%ebp)
	movl	__ZL10lcomphsamp(,%eax,4), %eax
	movl	%eax, -332(%ebp)
L344:
	movl	-332(%ebp), %eax
	sall	$3, %eax
	testl	%eax, %eax
	jle	L366
	movl	$0, -324(%ebp)
	movl	-328(%ebp), %eax
	testl	%eax, %eax
	jne	L345
L435:
	movl	-376(%ebp), %edi
	testl	%edi, %edi
	je	L346
L347:
	movl	-368(%ebp), %eax
	movl	-320(%ebp), %edi
	xorl	%edx, %edx
	addl	$4, %eax
L374:
	movl	$0, (%eax,%edx)
	movl	$0, 4(%eax,%edx)
	movl	$0, 8(%eax,%edx)
	movl	$0, 12(%eax,%edx)
	addl	$16, %edx
	cmpl	$240, %edx
	jb	L374
	movl	-340(%ebp), %ecx
	movl	%edi, -320(%ebp)
	movl	$0, (%eax,%edx)
	movl	$0, 4(%eax,%edx)
	movl	$0, 8(%eax,%edx)
	testl	%ecx, %ecx
	jle	L664
	cmpb	$0, -344(%ebp)
	jne	L424
	subl	$1, -340(%ebp)
L653:
	movb	$1, -348(%ebp)
L377:
	movl	-368(%ebp), %ecx
	movl	-452(%ebp), %edi
	movl	$63, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L434:
	movl	(%ecx,%eax,4), %edx
	imull	(%edi,%eax,4), %edx
	movl	%edx, (%ecx,%eax,4)
	subl	$1, %eax
	jnb	L434
	movl	-368(%ebp), %edi
	movzbl	-348(%ebp), %edx
	movl	%edi, %eax
	call	__ZL9invdct8x8Pih
	leal	256(%edi), %eax
	addl	$8, -324(%ebp)
	movl	-324(%ebp), %edi
	movl	%eax, -368(%ebp)
	movl	-336(%ebp), %eax
	movl	__ZL10lcomphsamp(,%eax,4), %eax
	movl	%eax, -332(%ebp)
	sall	$3, %eax
	cmpl	%eax, %edi
	jl	L435
L366:
	movl	-336(%ebp), %eax
	addl	$8, -396(%ebp)
	movl	-396(%ebp), %edi
	movl	__ZL10lcompvsamp(,%eax,4), %eax
	movl	%eax, -308(%ebp)
	sall	$3, %eax
	cmpl	%edi, %eax
	jg	L344
	movzbl	-481(%ebp), %edx
	movl	-320(%ebp), %edi
L343:
	addl	$1, -336(%ebp)
	movl	-364(%ebp), %ecx
	cmpl	%ecx, -336(%ebp)
	jl	L437
	movl	-328(%ebp), %eax
	movl	%edx, %ecx
	testl	%eax, %eax
	je	L338
L337:
	subl	$1, -448(%ebp)
	je	L665
L438:
	movl	-460(%ebp), %edx
	addl	%edx, -372(%ebp)
	movl	-380(%ebp), %edx
	cmpl	%edx, -372(%ebp)
	jl	L442
	movl	-392(%ebp), %eax
	movl	-480(%ebp), %edx
	movb	%cl, -308(%ebp)
	leal	(%eax,%edx,8), %eax
	movl	%eax, -392(%ebp)
	cmpl	-400(%ebp), %eax
	jl	L333
L642:
L334:
	movl	-328(%ebp), %eax
	testl	%eax, %eax
	je	L443
	movl	%ebx, %eax
	addl	$1, -456(%ebp)
	sarl	$3, %eax
	notl	%eax
	leal	(%edi,%eax), %esi
	jmp	L267
L275:
	movzwl	4(%ebx), %eax
	leal	9(%ebx), %esi
	rolw	$8, %ax
	movzwl	%ax, %eax
	movl	%eax, -400(%ebp)
	movzwl	6(%ebx), %eax
	rolw	$8, %ax
	movzwl	%ax, %eax
	movl	%eax, -380(%ebp)
	movl	-476(%ebp), %eax
	movl	%eax, __ZL13kp_frameplace
	movl	-464(%ebp), %eax
	movl	%eax, __ZL15kp_bytesperline
	movl	-468(%ebp), %eax
	movl	%eax, __ZL7kp_xres
	movl	-472(%ebp), %eax
	movl	%eax, __ZL7kp_yres
	movzbl	8(%ebx), %eax
	movb	%al, __ZL14gnumcomponents
	testb	%al, %al
	je	L472
	movl	%eax, -308(%ebp)
	movl	%esi, %edi
	xorl	%ebx, %ebx
	movl	$0, -388(%ebp)
	movl	$0, -384(%ebp)
	movl	$0, -408(%ebp)
	movl	$0, -404(%ebp)
L284:
	movzbl	(%edi), %eax
	movzbl	2(%edi), %ecx
	movl	%eax, __ZL7gcompid(,%ebx,4)
	movzbl	1(%edi), %eax
	movl	%ecx, __ZL12gcompquantab(,%ebx,4)
	xorl	%ecx, %ecx
	movl	%eax, %edx
	andl	$15, %eax
	shrb	$4, %dl
	movl	%eax, __ZL10gcompvsamp(,%ebx,4)
	movzbl	%dl, %edx
	movl	%edx, __ZL10gcomphsamp(,%ebx,4)
L278:
	cmpl	__ZL8pow2long(,%ecx,4), %edx
	je	L666
	addl	$1, %ecx
	cmpl	$8, %ecx
	jne	L278
L277:
	xorl	%ecx, %ecx
L281:
	cmpl	__ZL8pow2long(,%ecx,4), %eax
	je	L667
	addl	$1, %ecx
	cmpl	$8, %ecx
	jne	L281
L280:
	cmpl	-404(%ebp), %edx
	jle	L282
	movl	__ZL15gcomphsampshift(,%ebx,4), %ecx
	movl	%edx, -404(%ebp)
	movl	%ecx, -384(%ebp)
L282:
	cmpl	-408(%ebp), %eax
	jle	L283
	movl	__ZL15gcompvsampshift(,%ebx,4), %ecx
	movl	%eax, -408(%ebp)
	movl	%ecx, -388(%ebp)
L283:
	movl	-308(%ebp), %eax
	addl	$1, %ebx
	addl	$3, %edi
	cmpl	%eax, %ebx
	jl	L284
	leal	-3(%eax,%eax,2), %eax
	leal	3(%esi,%eax), %esi
	jmp	L267
L297:
	movl	-312(%ebp), %ebx
	testl	%ebx, %ebx
	jle	L267
L274:
	movzbl	(%esi), %ebx
	movl	1(%esi), %edx
	movl	$0, -320(%ebp)
	cmpb	$15, %bl
	leal	-12(%ebx), %edi
	cmovbe	%ebx, %edi
	subl	$17, -312(%ebp)
	addl	$17, %esi
	leal	(%edi,%edi,4), %ebx
	movl	%edi, %eax
	movl	%edi, -324(%ebp)
	movl	%edx, __ZL11hufnumatbit+1(,%ebx,4)
	movl	-12(%esi), %edx
	movl	%ebx, -360(%ebp)
	movl	%edx, __ZL11hufnumatbit+5(,%ebx,4)
	movl	-8(%esi), %edx
	movl	$0, __ZL11hufquickcnt(,%edi,4)
	sall	$8, %edi
	movl	%edx, __ZL11hufnumatbit+9(,%ebx,4)
	movl	-4(%esi), %edx
	movl	%edi, -348(%ebp)
	movl	%eax, %edi
	xorl	%eax, %eax
	movl	%edx, __ZL11hufnumatbit+13(,%ebx,4)
	sall	$4, %ebx
	sall	$12, %edi
	movl	%ebx, -364(%ebp)
	movl	%edi, -336(%ebp)
	movl	$1, %edi
L298:
	movl	-360(%ebp), %ecx
	movl	-364(%ebp), %ebx
	movl	-320(%ebp), %edx
	movzbl	__ZL11hufnumatbit(%edi,%ecx,4), %ecx
	movl	%ecx, -308(%ebp)
	addl	%eax, %ecx
	movl	%ecx, -344(%ebp)
	movl	%ecx, __ZL11hufmaxatbit(%ebx,%edi,4)
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-348(%ebp), %eax
	movl	%ecx, __ZL11hufvalatbit(%ebx,%edi,4)
	leal	(%eax,%edx), %ecx
	movl	-308(%ebp), %eax
	cmpl	$16, %eax
	jnb	L286
	testb	$8, %al
	jne	L668
	testb	$4, -308(%ebp)
	jne	L669
	movl	-308(%ebp), %edx
	testl	%edx, %edx
	je	L287
	movzbl	(%esi), %eax
	andl	$2, %edx
	movb	%al, __ZL8huftable(%ecx)
	jne	L670
L287:
	cmpl	$10, %edi
	jg	L293
	movl	-308(%ebp), %eax
	testl	%eax, %eax
	je	L294
	movl	-324(%ebp), %eax
	movl	$10, %ecx
	movl	$1, %edx
	subl	%edi, %ecx
	movl	__ZL11hufquickcnt(,%eax,4), %eax
	sall	%cl, %edx
	movl	-348(%ebp), %ecx
	movl	%edx, -352(%ebp)
	leal	(%eax,%edx), %ebx
	movl	-320(%ebp), %edx
	movl	%ebx, -340(%ebp)
	leal	__ZL8huftable(%edx,%ecx), %edx
	movl	-308(%ebp), %ecx
	movl	%edx, -332(%ebp)
	addl	%edx, %ecx
	movl	%ecx, -356(%ebp)
	movl	%ebx, %ecx
	movl	-336(%ebp), %ebx
	movl	%eax, -336(%ebp)
L296:
	movl	-332(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-336(%ebp), %eax
	.p2align 5
	.p2align 4
	.p2align 3
L295:
	movl	%edx, __ZL11hufquickval(%ebx,%eax,4)
	movl	%edi, __ZL12hufquickbits(%ebx,%eax,4)
	addl	$1, %eax
	cmpl	%eax, %ecx
	jne	L295
	movl	-340(%ebp), %eax
	addl	$1, -332(%ebp)
	addl	-352(%ebp), %ecx
	movl	-332(%ebp), %edx
	movl	%eax, -336(%ebp)
	cmpl	%edx, -356(%ebp)
	je	L625
	movl	%eax, %edx
	movl	-352(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -340(%ebp)
	jmp	L296
L625:
	movl	-324(%ebp), %eax
	movl	-340(%ebp), %ecx
	movl	%ebx, -336(%ebp)
	movl	%ecx, __ZL11hufquickcnt(,%eax,4)
L294:
	movl	-308(%ebp), %eax
	movl	-324(%ebp), %ecx
	addl	$1, %edi
	subl	%eax, -312(%ebp)
	addl	%eax, -320(%ebp)
	addl	%eax, %esi
	movl	-320(%ebp), %eax
	movl	%eax, __ZL6hufcnt(,%ecx,4)
	movl	-344(%ebp), %eax
	addl	%eax, %eax
	jmp	L298
L293:
	movl	-308(%ebp), %eax
	movl	-324(%ebp), %ecx
	addl	$1, %edi
	subl	%eax, -312(%ebp)
	addl	%eax, -320(%ebp)
	addl	%eax, %esi
	movl	-320(%ebp), %eax
	movl	%eax, __ZL6hufcnt(,%ecx,4)
	cmpl	$17, %edi
	je	L297
	movl	-344(%ebp), %eax
	addl	%eax, %eax
	jmp	L298
L286:
	movl	-308(%ebp), %edx
	movl	-16(%esi,%edx), %eax
	movl	%eax, __ZL8huftable-16(%edx,%ecx)
	movl	-12(%esi,%edx), %eax
	movl	%eax, __ZL8huftable-12(%edx,%ecx)
	movl	-8(%esi,%edx), %eax
	movl	%eax, __ZL8huftable-8(%edx,%ecx)
	movl	-4(%esi,%edx), %eax
	movl	%eax, __ZL8huftable-4(%edx,%ecx)
	leal	-1(%edx), %eax
	cmpl	$16, %eax
	jb	L287
	andl	$-16, %eax
	movl	-336(%ebp), %ebx
	movl	%eax, -332(%ebp)
	xorl	%eax, %eax
L291:
	movl	4(%esi,%eax), %edx
	movl	%edx, -336(%ebp)
	movl	8(%esi,%eax), %edx
	movl	%edx, -340(%ebp)
	movl	12(%esi,%eax), %edx
	movl	%edx, -352(%ebp)
	movl	(%esi,%eax), %edx
	movl	%edx, __ZL8huftable(%ecx,%eax)
	movl	-336(%ebp), %edx
	movl	%edx, __ZL8huftable+4(%ecx,%eax)
	movl	-340(%ebp), %edx
	movl	%edx, __ZL8huftable+8(%ecx,%eax)
	movl	-352(%ebp), %edx
	movl	%edx, __ZL8huftable+12(%ecx,%eax)
	addl	$16, %eax
	cmpl	-332(%ebp), %eax
	jb	L291
	movl	%ebx, -336(%ebp)
	jmp	L287
L669:
	movl	(%esi), %eax
	movl	%eax, __ZL8huftable(%ecx)
	movl	-308(%ebp), %edx
	movl	-4(%esi,%edx), %eax
	movl	%eax, __ZL8huftable-4(%edx,%ecx)
	jmp	L287
L269:
	addl	-312(%ebp), %esi
	jmp	L267
L666:
	movl	%ecx, __ZL15gcomphsampshift(,%ebx,4)
	jmp	L277
L667:
	movl	%ecx, __ZL15gcompvsampshift(,%ebx,4)
	jmp	L280
L493:
	movzbl	__ZL14gnumcomponents, %eax
	testb	%al, %al
	je	L474
	movl	-404(%ebp), %ebx
	movl	%eax, -336(%ebp)
	leal	-108(%ebp), %esi
	movl	$0, -324(%ebp)
	movl	-380(%ebp), %eax
	leal	-1(%eax,%ebx,8), %eax
	movl	-384(%ebp), %ebx
	leal	3(%ebx), %ecx
	movl	-408(%ebp), %ebx
	sarl	%cl, %eax
	movl	%eax, -328(%ebp)
	movl	-400(%ebp), %eax
	leal	-1(%eax,%ebx,8), %eax
	movl	-388(%ebp), %ebx
	leal	3(%ebx), %ecx
	leal	-60(%ebp), %ebx
	movl	%ebx, -340(%ebp)
	sarl	%cl, %eax
	movl	%eax, -332(%ebp)
	xorl	%eax, %eax
L316:
	movl	__ZL15gcomphsampshift(,%eax,4), %ecx
	movl	-328(%ebp), %edx
	movl	-340(%ebp), %ebx
	sall	%cl, %edx
	movl	__ZL15gcompvsampshift(,%eax,4), %ecx
	movl	%edx, (%ebx,%eax,4)
	movl	-332(%ebp), %ebx
	sall	%cl, %ebx
	movl	%ebx, (%esi,%eax,4)
	imull	%ebx, %edx
	addl	$1, %eax
	addl	%edx, -324(%ebp)
	cmpl	-336(%ebp), %eax
	jl	L316
	movl	-324(%ebp), %ebx
	sall	$7, %ebx
L315:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -328(%ebp)
	testl	%eax, %eax
	je	L671
	movl	-328(%ebp), %eax
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movzbl	__ZL14gnumcomponents, %ecx
	testb	%cl, %cl
	je	L672
	movb	%cl, -340(%ebp)
	movzbl	%cl, %eax
	leal	-60(%ebp), %ebx
	leal	-108(%ebp), %esi
	leal	-204(%ebp), %edx
	movl	%eax, -332(%ebp)
	xorl	%eax, %eax
	movl	$0, -324(%ebp)
	movl	%edx, -336(%ebp)
L321:
	movl	-324(%ebp), %edx
	movl	-336(%ebp), %ecx
	sall	$7, %edx
	addl	-328(%ebp), %edx
	movl	%edx, (%ecx,%eax,4)
	movl	(%ebx,%eax,4), %edx
	imull	(%esi,%eax,4), %edx
	addl	$1, %eax
	addl	%edx, -324(%ebp)
	cmpl	-332(%ebp), %eax
	jne	L321
	movzbl	-308(%ebp), %eax
	movzbl	-340(%ebp), %ecx
	addl	$5, %edi
	movl	__ZL14lnumcomponents, %ebx
	movl	%eax, -376(%ebp)
	movzbl	-320(%ebp), %eax
	movl	%ebx, -364(%ebp)
	movl	%eax, -360(%ebp)
	movzbl	%cl, %eax
	movb	%cl, -324(%ebp)
	movl	%eax, -308(%ebp)
	testl	%ebx, %ebx
	jg	L467
L649:
	movl	$2147483647, %ecx
	movl	$2147483647, %esi
	jmp	L320
	.p2align 4,,10
	.p2align 3
L668:
	movl	(%esi), %eax
	movl	4(%esi), %edx
	movl	%eax, __ZL8huftable(%ecx)
	movl	%edx, __ZL8huftable+4(%ecx)
	movl	-308(%ebp), %ebx
	movl	-8(%esi,%ebx), %eax
	movl	-4(%esi,%ebx), %edx
	movl	%eax, __ZL8huftable-8(%ebx,%ecx)
	movl	%edx, __ZL8huftable-4(%ebx,%ecx)
	jmp	L287
L670:
	movl	-308(%ebp), %edx
	movzwl	-2(%esi,%edx), %eax
	movw	%ax, __ZL8huftable-2(%edx,%ecx)
	jmp	L287
L413:
	movl	-320(%ebp), %eax
	movl	%esi, %edx
	subl	%eax, %ebx
	movl	__ZL8pow2mask.lto_priv.0(,%eax,4), %eax
	movl	%ebx, %ecx
	shrl	%cl, %edx
	movl	-320(%ebp), %ecx
	andl	%eax, %edx
	testl	%ecx, %ecx
	je	L418
	cmpl	%edx, __ZL8pow2mask.lto_priv.0-4(,%ecx,4)
	jl	L418
	subl	%eax, %edx
L418:
	movl	-308(%ebp), %ecx
	movl	-328(%ebp), %eax
	movzbl	__ZL8dcflagor(%ecx), %ecx
	orb	%cl, -348(%ebp)
	testl	%eax, %eax
	je	L673
	movzbl	-360(%ebp), %ecx
	movl	-316(%ebp), %eax
	sall	%cl, %edx
	movl	-308(%ebp), %ecx
	movw	%dx, (%eax,%ecx,2)
L421:
	addl	$1, -308(%ebp)
	movl	-308(%ebp), %eax
	cmpl	%eax, -312(%ebp)
	jge	L380
L637:
	movl	%edi, -320(%ebp)
L401:
	movl	-328(%ebp), %eax
	testl	%eax, %eax
	je	L377
	movl	-336(%ebp), %eax
	movl	__ZL10lcomphsamp(,%eax,4), %eax
	movl	%eax, -332(%ebp)
L379:
	movl	-332(%ebp), %eax
	addl	$8, -324(%ebp)
	sall	$3, %eax
	cmpl	%eax, -324(%ebp)
	jge	L366
L345:
	movl	-336(%ebp), %edx
	movl	-392(%ebp), %eax
	addl	-396(%ebp), %eax
	movl	-284(%ebp,%edx,4), %ecx
	sarl	%cl, %eax
	imull	-156(%ebp,%edx,4), %eax
	movl	%edx, %ecx
	movl	-324(%ebp), %edx
	movl	%ecx, %edi
	movl	-268(%ebp,%ecx,4), %ecx
	addl	-372(%ebp), %edx
	sarl	%cl, %edx
	movl	-376(%ebp), %ecx
	addl	%edx, %eax
	sall	$7, %eax
	addl	-252(%ebp,%edi,4), %eax
	movl	%eax, -316(%ebp)
	testl	%ecx, %ecx
	je	L346
	movl	-340(%ebp), %edx
	testl	%edx, %edx
	jle	L674
	cmpb	$0, -344(%ebp)
	je	L675
	movl	-416(%ebp), %eax
	subl	$1, -340(%ebp)
	movb	$1, -348(%ebp)
	movl	%eax, -308(%ebp)
	cmpl	%eax, -312(%ebp)
	jl	L379
L640:
	movl	-308(%ebp), %edx
	movl	-320(%ebp), %edi
	jmp	L433
	.p2align 5
	.p2align 4,,10
	.p2align 3
L426:
	addl	$1, %edx
	cmpl	%edx, -312(%ebp)
	jl	L637
L433:
	movl	-316(%ebp), %eax
	movzwl	(%eax,%edx,2), %ecx
	testw	%cx, %cx
	je	L426
	cmpl	$7, %ebx
	jg	L427
	movw	%cx, -308(%ebp)
	jmp	L430
	.p2align 5
	.p2align 4,,10
	.p2align 3
L677:
	addl	$1, %edi
	movl	%ecx, %ebx
L429:
	cmpl	$7, %ebx
	jg	L676
L430:
	movzbl	(%edi), %ecx
	sall	$8, %esi
	movl	%ecx, %eax
	addl	%ecx, %esi
	leal	8(%ebx), %ecx
	cmpb	$-1, %al
	jne	L677
	addl	$2, %edi
	cmpl	-304(%ebp), %edi
	jb	L490
	addl	$16, %ebx
	sall	$8, %esi
	cmpl	$7, %ebx
	jle	L430
L676:
	movzwl	-308(%ebp), %ecx
L427:
	subl	$1, %ebx
	testl	%esi, __ZL8pow2long(,%ebx,4)
	je	L426
	movswl	%cx, %eax
	shrl	$31, %eax
	addw	-292(%ebp,%eax,4), %cx
	movl	-316(%ebp), %eax
	movw	%cx, (%eax,%edx,2)
	jmp	L426
L490:
	movl	%ecx, %ebx
	jmp	L429
L346:
	cmpl	$15, %ebx
	jg	L349
	movl	-304(%ebp), %edx
	movl	-320(%ebp), %edi
	jmp	L352
L679:
	addl	$1, %edi
	movl	%ecx, %ebx
L351:
	cmpl	$15, %ebx
	jg	L678
L352:
	movzbl	(%edi), %ecx
	sall	$8, %esi
	movl	%ecx, %eax
	addl	%ecx, %esi
	leal	8(%ebx), %ecx
	cmpb	$-1, %al
	jne	L679
	addl	$2, %edi
	cmpl	%edx, %edi
	jb	L477
	addl	$16, %ebx
	sall	$8, %esi
	cmpl	$15, %ebx
	jle	L352
L678:
	movl	%edi, -320(%ebp)
L349:
	cmpb	$0, -344(%ebp)
	jne	L353
	movl	-336(%ebp), %eax
	leal	-10(%ebx), %ecx
	movl	%esi, %edx
	sarl	%cl, %edx
	movl	__ZL7lcompdc(,%eax,4), %eax
	andl	$1023, %edx
	cmpl	%edx, __ZL11hufquickcnt(,%eax,4)
	jle	L354
	sall	$10, %eax
	addl	%edx, %eax
	movl	__ZL11hufquickval(,%eax,4), %edx
	subl	__ZL12hufquickbits(,%eax,4), %ebx
	movl	%edx, -296(%ebp)
	testl	%edx, %edx
	jne	L356
L689:
	movl	-336(%ebp), %eax
	movl	-328(%ebp), %edx
	movl	__ZL6lastdc(,%eax,4), %eax
	testl	%edx, %edx
	je	L680
L363:
	movzbl	-360(%ebp), %ecx
	movl	-316(%ebp), %edi
	sall	%cl, %eax
	movw	%ax, (%edi)
	movl	-340(%ebp), %eax
	testl	%eax, %eax
	jle	L681
	subl	$1, -340(%ebp)
L650:
	movl	-336(%ebp), %eax
	addl	$8, -324(%ebp)
	movl	-324(%ebp), %edi
	movl	__ZL10lcomphsamp(,%eax,4), %eax
	movl	%eax, -332(%ebp)
	sall	$3, %eax
	cmpl	%eax, %edi
	jl	L345
	jmp	L366
L477:
	movl	%ecx, %ebx
	jmp	L351
L675:
	subl	$1, -340(%ebp)
	jmp	L379
L353:
	subl	$1, %ebx
	testl	%esi, __ZL8pow2long(,%ebx,4)
	je	L657
	movl	-316(%ebp), %eax
	movzwl	-428(%ebp), %edi
	orw	%di, (%eax)
L657:
	movl	-328(%ebp), %eax
	testl	%eax, %eax
	je	L347
	movl	-340(%ebp), %eax
	testl	%eax, %eax
	jle	L682
	movl	-312(%ebp), %edi
	subl	$1, -340(%ebp)
	movb	$1, -348(%ebp)
	movl	$1, -308(%ebp)
	testl	%edi, %edi
	je	L379
	movl	-320(%ebp), %edi
	movl	$1, %edx
	jmp	L433
L674:
	movl	-416(%ebp), %eax
	cmpl	%eax, -312(%ebp)
	jl	L379
	movl	%eax, -308(%ebp)
L365:
	movb	$1, -348(%ebp)
	movl	-320(%ebp), %edi
	.p2align 4
	.p2align 3
L380:
	movl	-304(%ebp), %edx
	cmpl	$15, %ebx
	jle	L383
	jmp	L423
	.p2align 5
	.p2align 4,,10
	.p2align 3
L683:
	addl	$1, %edi
	movl	%ecx, %ebx
L382:
	cmpl	$15, %ebx
	jg	L423
L383:
	movzbl	(%edi), %ecx
	sall	$8, %esi
	movl	%ecx, %eax
	addl	%ecx, %esi
	leal	8(%ebx), %ecx
	cmpb	$-1, %al
	jne	L683
	addl	$2, %edi
	cmpl	%edx, %edi
	jb	L483
	addl	$16, %ebx
	sall	$8, %esi
	cmpl	$15, %ebx
	jle	L383
	.p2align 4
	.p2align 3
L423:
	leal	-10(%ebx), %ecx
	movl	%esi, %edx
	sarl	%cl, %edx
	andl	$1023, %edx
	cmpl	%edx, -352(%ebp)
	jle	L384
	movl	-356(%ebp), %ecx
	movl	__ZL11hufquickval(%ecx,%edx,4), %eax
	subl	__ZL12hufquickbits(%ecx,%edx,4), %ebx
L385:
	movl	%eax, %ecx
	sarl	$4, %ecx
	andl	$15, %eax
	movl	%eax, -320(%ebp)
	movl	%eax, -296(%ebp)
	je	L386
	cmpb	$0, -344(%ebp)
	jne	L652
L387:
	addl	%ecx, -308(%ebp)
	movl	-308(%ebp), %eax
	cmpl	%eax, -312(%ebp)
	jl	L637
	movl	-320(%ebp), %eax
	cmpl	%ebx, %eax
	jle	L413
	movl	%eax, %edx
	jmp	L416
	.p2align 5
	.p2align 4,,10
	.p2align 3
L684:
	addl	$1, %edi
	movl	%ecx, %ebx
L415:
	cmpl	%ebx, %edx
	jle	L413
L416:
	movzbl	(%edi), %ecx
	sall	$8, %esi
	movl	%ecx, %eax
	addl	%ecx, %esi
	leal	8(%ebx), %ecx
	cmpb	$-1, %al
	jne	L684
	addl	$2, %edi
	cmpl	-304(%ebp), %edi
	jb	L487
	sall	$8, %esi
	addl	$16, %ebx
	jmp	L415
	.p2align 4,,10
	.p2align 3
L483:
	movl	%ecx, %ebx
	jmp	L382
	.p2align 4,,10
	.p2align 3
L389:
	addl	$2, %edi
	cmpl	-304(%ebp), %edi
	jb	L484
	sall	$8, %esi
	addl	$16, %ebx
L652:
	cmpl	$7, %ebx
	jg	L388
L685:
	movzbl	(%edi), %edx
	sall	$8, %esi
	movl	%edx, %eax
	addl	%edx, %esi
	leal	8(%ebx), %edx
	cmpb	$-1, %al
	je	L389
	movl	%edx, %ebx
	addl	$1, %edi
	cmpl	$7, %ebx
	jle	L685
L388:
	subl	$1, %ebx
	testl	%esi, __ZL8pow2long(,%ebx,4)
	je	L392
	movl	-428(%ebp), %eax
	movl	-308(%ebp), %edx
	movl	%ecx, -308(%ebp)
	movl	%eax, -296(%ebp)
	movl	%eax, -320(%ebp)
	jmp	L411
	.p2align 4,,10
	.p2align 3
L402:
	subl	$1, -308(%ebp)
	js	L410
L408:
	addl	$1, %edx
	cmpl	%edx, -312(%ebp)
	jl	L410
L411:
	movl	-316(%ebp), %eax
	movzwl	(%eax,%edx,2), %ecx
	testw	%cx, %cx
	je	L402
	cmpl	$7, %ebx
	jg	L403
	movw	%cx, -332(%ebp)
	jmp	L406
	.p2align 5
	.p2align 4,,10
	.p2align 3
L687:
	addl	$1, %edi
	movl	%ecx, %ebx
L405:
	cmpl	$7, %ebx
	jg	L686
L406:
	movzbl	(%edi), %ecx
	sall	$8, %esi
	movl	%ecx, %eax
	addl	%ecx, %esi
	leal	8(%ebx), %ecx
	cmpb	$-1, %al
	jne	L687
	addl	$2, %edi
	cmpl	-304(%ebp), %edi
	jb	L486
	addl	$16, %ebx
	sall	$8, %esi
	cmpl	$7, %ebx
	jle	L406
	.p2align 4
	.p2align 3
L686:
	movzwl	-332(%ebp), %ecx
L403:
	subl	$1, %ebx
	testl	%esi, __ZL8pow2long(,%ebx,4)
	je	L408
	movswl	%cx, %eax
	shrl	$31, %eax
	addw	-292(%ebp,%eax,4), %cx
	movl	-316(%ebp), %eax
	movw	%cx, (%eax,%edx,2)
	addl	$1, %edx
	cmpl	%edx, -312(%ebp)
	jge	L411
L410:
	movl	-320(%ebp), %eax
	movl	%edx, -308(%ebp)
	testl	%eax, %eax
	je	L421
	movl	-316(%ebp), %ecx
	movw	%ax, (%ecx,%edx,2)
	jmp	L421
	.p2align 4,,10
	.p2align 3
L486:
	movl	%ecx, %ebx
	jmp	L405
	.p2align 4,,10
	.p2align 3
L487:
	movl	%ecx, %ebx
	jmp	L415
L386:
	cmpl	$14, %ecx
	jle	L688
	cmpb	$0, -344(%ebp)
	je	L387
	movl	-308(%ebp), %edx
	movl	%ecx, -308(%ebp)
	jmp	L411
L484:
	movl	%edx, %ebx
	jmp	L652
L384:
	leal	-300(%ebp), %eax
	movl	%ebx, %edx
	movl	%esi, %ecx
	movl	%eax, 4(%esp)
	leal	-296(%ebp), %eax
	movl	%eax, (%esp)
	movl	-412(%ebp), %eax
	call	__ZL10huffgetvaliiiPiS_
	movl	-296(%ebp), %eax
	subl	-300(%ebp), %ebx
	jmp	L385
L673:
	movl	-308(%ebp), %eax
	movl	-368(%ebp), %ecx
	movl	__ZL5unzig(,%eax,4), %eax
	movl	%edx, (%ecx,%eax,4)
	jmp	L421
L392:
	movl	-440(%ebp), %eax
	movl	-308(%ebp), %edx
	movl	%ecx, -308(%ebp)
	movl	%eax, -296(%ebp)
	movl	%eax, -320(%ebp)
	jmp	L411
L424:
	movl	-416(%ebp), %eax
	subl	$1, -340(%ebp)
	movb	$1, -348(%ebp)
	movl	%eax, -308(%ebp)
	cmpl	%eax, -312(%ebp)
	jge	L640
	jmp	L377
L354:
	leal	-296(%ebp), %edx
	leal	-300(%ebp), %edi
	movl	%esi, %ecx
	movl	%edx, (%esp)
	movl	%ebx, %edx
	movl	%edi, 4(%esp)
	call	__ZL10huffgetvaliiiPiS_
	movl	-296(%ebp), %edx
	subl	-300(%ebp), %ebx
	testl	%edx, %edx
	je	L689
L356:
	cmpl	%edx, %ebx
	jge	L358
	movl	-320(%ebp), %edi
	jmp	L361
L691:
	addl	$1, %edi
	movl	%ecx, %ebx
L360:
	cmpl	%edx, %ebx
	jge	L690
L361:
	movzbl	(%edi), %ecx
	sall	$8, %esi
	movl	%ecx, %eax
	addl	%ecx, %esi
	leal	8(%ebx), %ecx
	cmpb	$-1, %al
	jne	L691
	addl	$2, %edi
	cmpl	-304(%ebp), %edi
	jb	L478
	addl	$16, %ebx
	sall	$8, %esi
	cmpl	%edx, %ebx
	jl	L361
L690:
	movl	%edi, -320(%ebp)
L358:
	subl	%edx, %ebx
	movl	__ZL8pow2mask.lto_priv.0(,%edx,4), %edi
	movl	%esi, %eax
	movl	%ebx, %ecx
	shrl	%cl, %eax
	andl	%edi, %eax
	cmpl	%eax, __ZL8pow2mask.lto_priv.0-4(,%edx,4)
	jl	L362
	subl	%edi, %eax
L362:
	movl	-336(%ebp), %edi
	movl	-328(%ebp), %edx
	addl	__ZL6lastdc(,%edi,4), %eax
	movl	%eax, __ZL6lastdc(,%edi,4)
	testl	%edx, %edx
	jne	L363
L680:
	movl	-368(%ebp), %edi
	movl	%eax, (%edi)
	jmp	L347
L688:
	movl	%ecx, -332(%ebp)
	movl	%edi, -320(%ebp)
	testl	%ecx, %ecx
	jne	L692
	cmpb	$0, -344(%ebp)
	movl	$1, -340(%ebp)
	je	L462
L463:
	subl	$1, -340(%ebp)
	movl	-308(%ebp), %eax
	cmpl	%eax, -312(%ebp)
	jl	L401
	movl	-320(%ebp), %edi
	movl	%eax, %edx
	jmp	L433
	.p2align 4,,10
	.p2align 3
L478:
	movl	%ecx, %ebx
	jmp	L360
L664:
	movl	-416(%ebp), %eax
	movl	%eax, -308(%ebp)
	cmpl	%eax, -312(%ebp)
	jge	L365
	jmp	L653
L682:
	movl	-312(%ebp), %eax
	testl	%eax, %eax
	je	L379
	movl	$1, -308(%ebp)
	jmp	L365
L681:
	movl	$1, -308(%ebp)
	movl	-312(%ebp), %eax
	testl	%eax, %eax
	jne	L365
	jmp	L650
L462:
	subl	$1, -340(%ebp)
	jmp	L401
L692:
	movl	__ZL8pow2long(,%ecx,4), %eax
	cmpl	%ecx, %ebx
	jge	L396
	movl	-320(%ebp), %edi
	jmp	L399
L694:
	addl	$1, %edi
	movl	%ecx, %ebx
L398:
	cmpl	%ebx, -332(%ebp)
	jle	L693
L399:
	movzbl	(%edi), %ecx
	sall	$8, %esi
	movl	%ecx, %edx
	addl	%ecx, %esi
	leal	8(%ebx), %ecx
	cmpb	$-1, %dl
	jne	L694
	addl	$2, %edi
	cmpl	-304(%ebp), %edi
	jb	L485
	sall	$8, %esi
	addl	$16, %ebx
	cmpl	%ebx, -332(%ebp)
	jg	L399
L693:
	movl	%edi, -320(%ebp)
L396:
	movl	-332(%ebp), %edi
	movl	%esi, %edx
	subl	%edi, %ebx
	movl	%ebx, %ecx
	shrl	%cl, %edx
	andl	__ZL8pow2mask.lto_priv.0(,%edi,4), %edx
	addl	%edx, %eax
	movl	%eax, -340(%ebp)
	cmpb	$0, -344(%ebp)
	je	L462
	movl	-340(%ebp), %eax
	testl	%eax, %eax
	jg	L463
	jmp	L401
	.p2align 4,,10
	.p2align 3
L485:
	movl	%ecx, %ebx
	jmp	L398
L335:
	movl	$__ZL3dct, -368(%ebp)
	movl	-364(%ebp), %eax
	testl	%eax, %eax
	jg	L336
L338:
	movl	-392(%ebp), %eax
	movl	$__ZL3dct, 8(%esp)
	movb	%cl, -308(%ebp)
	movl	%eax, 4(%esp)
	movl	-372(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL7yrbrendiiPi
	subl	$1, -448(%ebp)
	movzbl	-308(%ebp), %ecx
	jne	L438
L665:
	sarl	$3, %ebx
	movl	$1, %eax
	subl	%ebx, %eax
	addl	%eax, %edi
	cmpb	$-1, -2(%edi)
	je	L695
L439:
	subl	$1, %edi
L440:
	addl	$1, %ecx
	movl	$-48, %eax
	xorps	%xmm0, %xmm0
	movl	$0, -340(%ebp)
	cmpb	$-41, %cl
	movups	%xmm0, __ZL6lastdc
	cmova	%eax, %ecx
	movl	-432(%ebp), %eax
	xorl	%ebx, %ebx
	movl	%eax, -448(%ebp)
	jmp	L438
L695:
	cmpb	%cl, -1(%edi)
	jne	L439
	jmp	L440
L697:
	addl	$1, %eax
	cmpl	-364(%ebp), %eax
	jge	L696
L341:
	movl	__ZL12lcompquantab(,%eax,4), %ecx
	sall	$8, %ecx
	addl	$__ZL7quantab, %ecx
	movl	%ecx, -452(%ebp)
	movl	__ZL10lcompvsamp(,%eax,4), %ecx
	sall	$3, %ecx
	testl	%ecx, %ecx
	jle	L697
	movl	%eax, -336(%ebp)
	jmp	L340
L658:
	.cfi_restore 6
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	xorl	%edx, %edx
	movl	$-7, %edi
	movl	$1, %eax
	movl	$1, __ZL10kpeginited
L253:
	leal	48(%eax), %ecx
	movl	%edi, %esi
L255:
	cmpl	$7, %esi
	ja	L254
	movl	%ecx, __ZL5unzig(,%edx,4)
	addl	$1, %edx
L254:
	subl	$7, %ecx
	addl	$1, %esi
	cmpl	%edi, %ecx
	jne	L255
	movl	%eax, -308(%ebp)
	leal	56(%eax), %ecx
	movl	%eax, %esi
	movl	%ecx, -304(%ebp)
	movl	%eax, %ecx
L257:
	cmpl	$7, %esi
	ja	L256
	movl	%ecx, __ZL5unzig(,%edx,4)
	addl	$1, %edx
L256:
	subl	$1, %esi
	addl	$7, %ecx
	cmpl	-304(%ebp), %ecx
	jne	L257
	movl	-308(%ebp), %eax
	addl	$2, %edi
	addl	$2, %eax
	cmpl	$17, %eax
	jne	L253
	movl	$63, %eax
L258:
	movl	__ZL5unzig(,%eax,4), %edx
	movl	%eax, __ZL5zigit(,%edx,4)
	subl	$1, %eax
	jnb	L258
	movl	$63, %eax
L259:
	movl	__ZL5unzig(,%eax,4), %ecx
	movl	$1, %edx
	sarl	$3, %ecx
	sall	%cl, %edx
	movb	%dl, __ZL8dcflagor(%eax)
	subl	$1, %eax
	jnb	L259
	movl	$128, %eax
L260:
	movl	%eax, __ZL7colclip-512(,%eax,4)
	leal	1(%eax), %edx
	addl	$2, %eax
	movl	%edx, __ZL7colclip-512(,%edx,4)
	cmpl	$256, %eax
	jne	L260
	movl	$255, -304(%ebp)
	movl	$__ZL7colclip+512, %eax
	movl	$__ZL7colclip+2048, %edx
	movss	-304(%ebp), %xmm0
	shufps	$0, %xmm0, %xmm0
L261:
	movups	%xmm0, (%eax)
	addl	$32, %eax
	movups	%xmm0, -16(%eax)
	cmpl	%eax, %edx
	jne	L261
	movl	$1536, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL7colclip+2048, (%esp)
	call	_memset
	xorl	%eax, %eax
L262:
	movl	%eax, __ZL7colclip+3584(,%eax,4)
	leal	1(%eax), %edx
	addl	$2, %eax
	movl	%edx, __ZL7colclip+3584(,%edx,4)
	cmpl	$128, %eax
	jne	L262
	xorl	%eax, %eax
L263:
	movl	__ZL7colclip(,%eax,4), %edx
	movl	%edx, %ecx
	sall	$16, %edx
	sall	$8, %ecx
	subl	$16777216, %edx
	movl	%ecx, __ZL10colclipup8(,%eax,4)
	movl	%edx, __ZL11colclipup16(,%eax,4)
	addl	$1, %eax
	cmpl	$1024, %eax
	jne	L263
	movl	$766801920, %eax
	movl	$-1505386496, %ecx
L264:
	imull	$-360857, %ebx, %edx
	movl	%ecx, __ZL5crmul(,%ebx,8)
	addl	$1470104, %ecx
	movl	%eax, __ZL5crmul+4(,%ebx,8)
	subl	$748830, %eax
	addl	$369517568, %edx
	movl	%edx, __ZL5cbmul(,%ebx,8)
	leal	-1024(%ebx), %edx
	imull	$1858077, %edx, %edx
	movl	%edx, __ZL5cbmul+4(,%ebx,8)
	addl	$1, %ebx
	cmpl	$2048, %ebx
	jne	L264
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL3dct+2560, (%esp)
	call	_memset
	movl	-8(%ebp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L252
L696:
	.cfi_restore_state
	movl	%edx, %ecx
	jmp	L338
L472:
	movl	$0, -388(%ebp)
	movl	$0, -384(%ebp)
	movl	$0, -408(%ebp)
	movl	$0, -404(%ebp)
	jmp	L267
L311:
	movzbl	4(%ebx), %eax
	movl	%eax, __ZL7lcompid
	movzbl	5(%ebx), %eax
	movl	%eax, %edx
	andl	$15, %eax
	shrb	$4, %dl
	movl	%eax, __ZL7lcompac
	movzbl	%dl, %edx
	movl	%edx, __ZL7lcompdc
	jmp	L468
L672:
	movzbl	-308(%ebp), %eax
	movl	__ZL14lnumcomponents, %ebx
	addl	$5, %edi
	movl	%eax, -376(%ebp)
	movzbl	-320(%ebp), %eax
	movl	%ebx, -364(%ebp)
	movl	%eax, -360(%ebp)
	testl	%ebx, %ebx
	jle	L649
	movb	$0, -324(%ebp)
L648:
	movb	$0, -320(%ebp)
	xorl	%ebx, %ebx
	movl	$2147483647, %ecx
	movl	$2147483647, %esi
	movl	$0, -308(%ebp)
	jmp	L466
L474:
	xorl	%ebx, %ebx
	jmp	L315
L647:
	movl	-328(%ebp), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	movl	-8(%ebp), %esi
	.cfi_restore 6
	subl	$4, %esp
L309:
	movl	$-1, %eax
	jmp	L251
L671:
	.cfi_offset 6, -16
	movl	%ebx, %eax
	call	__Z13handle_memerri
L662:
	subl	%edx, %eax
	testb	$1, %al
	je	L330
	addl	$1, %edx
	cmpl	-364(%ebp), %edx
	je	L328
L330:
	addl	$2, %edx
	cmpl	-364(%ebp), %edx
	jne	L330
	jmp	L328
	.cfi_endproc
LFE16:
	.p2align 4
	.globl	_neartag.constprop.0
	.def	_neartag.constprop.0;	.scl	2;	.type	32;	.endef
_neartag.constprop.0:
LFB19:
	.cfi_startproc
	subl	$156, %esp
	.cfi_def_cfa_offset 160
	movl	%esi, 144(%esp)
	.cfi_offset 6, -16
	movzwl	176(%esp), %esi
	movl	%ebx, 140(%esp)
	.cfi_offset 3, -20
	movl	196(%esp), %ebx
	leal	512(%esi), %eax
	movl	%edi, 148(%esp)
	movswl	172(%esp), %ecx
	andl	$2047, %eax
	movl	%ebx, %edx
	movl	%eax, 96(%esp)
	movswl	_sintable(%eax,%eax), %eax
/APP
 # 12934 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	andl	$2047, %esi
	movl	%eax, 88(%esp)
	movl	%ebx, %edx
	movl	%esi, 100(%esp)
	movswl	_sintable(%esi,%esi), %eax
/APP
 # 12935 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	160(%esp), %esi
	movl	164(%esp), %ebx
	movl	$-1, %edx
	movl	%eax, 92(%esp)
	.cfi_offset 7, -12
	movl	168(%esp), %edi
	movl	%esi, 128(%esp)
	movl	180(%esp), %esi
	movl	%ebx, 132(%esp)
	movl	184(%esp), %ebx
	movl	%edi, 136(%esp)
	movl	$-1, %edi
	movw	%di, (%esi)
	movl	188(%esp), %edi
	movl	192(%esp), %esi
	movw	%dx, (%ebx)
	movl	$-1, %ebx
	movw	%bx, (%edi)
	movl	$0, (%esi)
	testw	%cx, %cx
	js	L698
	testb	$3, 200(%esp)
	je	L698
	movl	88(%esp), %ebx
	addl	160(%esp), %ebx
	xorl	%esi, %esi
	movl	%ebp, 152(%esp)
	.cfi_offset 5, -8
	movl	%ebx, 68(%esp)
	addl	164(%esp), %eax
	movl	$1, %ebx
	movl	%eax, 76(%esp)
	movw	%cx, _clipsectorlist
	movl	$0, 72(%esp)
	movw	%bx, 86(%esp)
	movw	%si, 84(%esp)
	.p2align 4
	.p2align 3
L730:
	movl	_sector, %eax
	leal	(%ecx,%ecx,4), %edx
	leal	(%eax,%edx,8), %eax
	movswl	(%eax), %edi
	movswl	2(%eax), %eax
	addl	%edi, %eax
	movl	%edi, 40(%esp)
	movl	%eax, 60(%esp)
	subl	$1, %eax
	cmpl	%eax, %edi
	jg	L701
	movl	_wall, %eax
	sall	$5, %edi
	movl	%ecx, 80(%esp)
	leal	(%eax,%edi), %ebp
	movl	%eax, %ecx
	jmp	L717
	.p2align 4,,10
	.p2align 3
L770:
	testb	$1, 200(%esp)
	jne	L703
	xorl	%esi, %esi
	testb	$2, 200(%esp)
	je	L705
	movl	56(%esp), %eax
	movl	_sector, %edx
	xorl	%esi, %esi
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	cmpw	$0, 36(%eax)
	jne	L731
L732:
	cmpw	$0, 28(%ebp)
	je	L705
L765:
	orl	$2, %esi
	.p2align 4
	.p2align 3
L705:
	movswl	8(%ebp), %eax
	movl	4(%ebp), %edi
	movl	0(%ebp), %ebx
	sall	$5, %eax
	movl	%edi, 48(%esp)
	addl	%ecx, %eax
	movl	%ebx, %ecx
	subl	160(%esp), %ecx
	movl	%ebx, 44(%esp)
	movl	(%eax), %edi
	movl	4(%eax), %eax
	movl	%eax, %edx
	subl	164(%esp), %edx
	movl	%eax, 52(%esp)
	movl	%edx, %eax
	imull	%ecx
	movl	%eax, %ecx
	movl	%edx, %ebx
	movl	%edi, %eax
	movl	48(%esp), %edx
	subl	160(%esp), %eax
	subl	164(%esp), %edx
	imull	%edx
	cmpl	%eax, %ecx
	movl	%ebx, %ecx
	sbbl	%edx, %ecx
	jl	L710
	leal	104(%esp), %eax
	movl	48(%esp), %edx
	leal	112(%esp), %ecx
	movl	44(%esp), %ebx
	movl	%eax, 28(%esp)
	movl	52(%esp), %eax
	movl	%ecx, 36(%esp)
	leal	108(%esp), %ecx
	movl	%eax, 24(%esp)
	movl	72(%esp), %eax
	movl	%ecx, 32(%esp)
	movl	168(%esp), %ecx
	movl	%eax, 8(%esp)
	movl	76(%esp), %eax
	movl	%edx, 16(%esp)
	movl	164(%esp), %edx
	movl	%eax, 4(%esp)
	movl	68(%esp), %eax
	movl	%edi, 20(%esp)
	movl	%eax, (%esp)
	movl	160(%esp), %eax
	movl	%ebx, 12(%esp)
	call	_lintersect
	cmpl	$1, %eax
	je	L769
L710:
	addl	$1, 40(%esp)
	movl	40(%esp), %eax
	cmpl	%eax, 60(%esp)
	je	L762
L771:
	movl	_wall, %ecx
	addl	$32, %ebp
L717:
	movswl	12(%ebp), %eax
	movw	%ax, 66(%esp)
	movl	%eax, 56(%esp)
	testl	%eax, %eax
	jns	L770
	testb	$1, 200(%esp)
	je	L707
	cmpw	$0, 26(%ebp)
	je	L707
L708:
	movl	$2, %esi
	jmp	L705
	.p2align 4,,10
	.p2align 3
L764:
	movl	152(%esp), %ebp
	.cfi_restore 5
L698:
	movl	140(%esp), %ebx
	movl	144(%esp), %esi
	movl	148(%esp), %edi
	addl	$156, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L703:
	.cfi_def_cfa_offset 160
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	56(%esp), %eax
	movl	_sector, %edx
	xorl	%ebx, %ebx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	cmpw	$0, 34(%eax)
	setne	%bl
	movl	%ebx, %esi
	testb	$2, 200(%esp)
	jne	L706
	movl	%esi, %eax
	orl	$2, %eax
	cmpw	$0, 26(%ebp)
	cmovne	%eax, %esi
	jmp	L705
	.p2align 4,,10
	.p2align 3
L707:
	testb	$2, 200(%esp)
	je	L710
	cmpw	$0, 28(%ebp)
	jne	L708
	addl	$1, 40(%esp)
	movl	40(%esp), %eax
	cmpl	%eax, 60(%esp)
	jne	L771
	.p2align 4
	.p2align 3
L762:
	movl	80(%esp), %ecx
L701:
	movzwl	84(%esp), %edx
	addl	$1, %edx
	movw	%dx, 84(%esp)
	testb	$4, 200(%esp)
	je	L772
L721:
	cmpw	86(%esp), %dx
	jge	L764
	movswl	%dx, %edx
	movswl	_clipsectorlist(%edx,%edx), %ecx
	jmp	L730
	.p2align 4,,10
	.p2align 3
L706:
	cmpw	$0, 36(%eax)
	je	L773
	movl	$3, %esi
	cmpw	$0, 26(%ebp)
	jne	L705
L731:
	cmpw	$1, 28(%ebp)
	sbbl	%esi, %esi
	andl	$-2, %esi
	addl	$3, %esi
	jmp	L705
	.p2align 4,,10
	.p2align 3
L769:
	testl	%esi, %esi
	je	L712
	testl	$1, %esi
	je	L713
	movl	180(%esp), %eax
	movzwl	66(%esp), %ebx
	movw	%bx, (%eax)
	cmpl	$1, %esi
	jne	L713
L714:
	movl	96(%esp), %ebx
	movl	104(%esp), %eax
	movl	108(%esp), %esi
	movswl	_sintable(%ebx,%ebx), %edx
	movl	100(%esp), %ebx
	movl	%eax, 68(%esp)
	movl	%esi, 76(%esp)
	subl	160(%esp), %eax
	subl	164(%esp), %esi
	movswl	_sintable(%ebx,%ebx), %edi
/APP
 # 12983 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	192(%esp), %esi
	movl	%eax, (%esi)
	movl	112(%esp), %eax
	movl	%eax, 72(%esp)
L712:
	movl	56(%esp), %ecx
	testl	%ecx, %ecx
	js	L710
	movswl	86(%esp), %edx
	movl	%edx, %eax
	subl	$1, %eax
	js	L715
	movzwl	66(%esp), %ecx
	.p2align 4
	.p2align 4
	.p2align 3
L716:
	cmpw	_clipsectorlist(%eax,%eax), %cx
	je	L710
	subl	$1, %eax
	jnb	L716
L715:
	movzwl	66(%esp), %eax
	addw	$1, 86(%esp)
	movw	%ax, _clipsectorlist(%edx,%edx)
	jmp	L710
	.p2align 4,,10
	.p2align 3
L773:
	cmpw	$0, 26(%ebp)
	jne	L765
	jmp	L732
	.p2align 4,,10
	.p2align 3
L772:
	movswl	_headspritesect(%ecx,%ecx), %ebp
	testl	%ebp, %ebp
	js	L721
	testb	$1, 200(%esp)
	je	L759
	movw	%dx, 40(%esp)
	movl	76(%esp), %ecx
	jmp	L719
	.p2align 4,,10
	.p2align 3
L725:
	movl	128(%esp), %edx
	movl	68(%esp), %ebx
	movl	%ecx, 120(%esp)
	movl	72(%esp), %esi
	movl	$1, 28(%esp)
	movl	%edx, (%esp)
	movl	132(%esp), %edx
	movl	%ebx, 116(%esp)
	leal	116(%esp), %ebx
	movl	%esi, 124(%esp)
	movl	92(%esp), %esi
	movl	%ebx, 24(%esp)
	movl	88(%esp), %ebx
	movl	%edx, 4(%esp)
	movl	136(%esp), %edx
	movl	%esi, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	$0, 20(%esp)
	movl	%edx, 8(%esp)
	call	_try_facespr_intersect
	movl	116(%esp), %ebx
	movl	124(%esp), %esi
	movl	120(%esp), %ecx
	movl	%ebx, 68(%esp)
	movl	%esi, 72(%esp)
	testl	%eax, %eax
	je	L727
	movl	188(%esp), %eax
	movl	96(%esp), %esi
	movw	%bp, (%eax)
	movl	%ebx, %eax
	movl	100(%esp), %ebx
	movswl	_sintable(%esi,%esi), %edx
	subl	160(%esp), %eax
	movl	%ecx, %esi
	movswl	_sintable(%ebx,%ebx), %edi
	subl	164(%esp), %esi
/APP
 # 13014 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	192(%esp), %edi
	movl	%eax, (%edi)
L727:
	movswl	_nextspritesect(%ebp,%ebp), %ebp
	testl	%ebp, %ebp
	js	L766
L719:
	imull	$44, %ebp, %eax
	addl	_sprite, %eax
	cmpw	$0, 38(%eax)
	jne	L725
	testb	$2, 200(%esp)
	je	L727
	cmpw	$0, 40(%eax)
	jne	L725
	movswl	_nextspritesect(%ebp,%ebp), %ebp
	testl	%ebp, %ebp
	jns	L719
	.p2align 4
	.p2align 3
L766:
	movl	%ecx, 76(%esp)
	movzwl	40(%esp), %edx
	jmp	L721
	.p2align 4,,10
	.p2align 3
L713:
	movl	184(%esp), %eax
	movzwl	40(%esp), %edi
	movw	%di, (%eax)
	jmp	L714
	.p2align 4,,10
	.p2align 3
L759:
	testb	$2, 200(%esp)
	je	L721
	movw	%dx, 40(%esp)
	movl	76(%esp), %ecx
	.p2align 4
	.p2align 3
L720:
	imull	$44, %ebp, %eax
	addl	_sprite, %eax
	cmpw	$0, 40(%eax)
	je	L722
	movl	128(%esp), %edx
	movl	68(%esp), %ebx
	movl	%ecx, 120(%esp)
	movl	72(%esp), %edi
	movl	$1, 28(%esp)
	movl	%edx, (%esp)
	movl	132(%esp), %edx
	movl	%ebx, 116(%esp)
	leal	116(%esp), %ebx
	movl	%edi, 124(%esp)
	movl	92(%esp), %edi
	movl	%ebx, 24(%esp)
	movl	88(%esp), %ebx
	movl	%edx, 4(%esp)
	movl	136(%esp), %edx
	movl	%edi, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	$0, 20(%esp)
	movl	%edx, 8(%esp)
	call	_try_facespr_intersect
	movl	116(%esp), %ebx
	movl	124(%esp), %edi
	movl	120(%esp), %ecx
	movl	%ebx, 68(%esp)
	movl	%edi, 72(%esp)
	testl	%eax, %eax
	je	L722
	movl	188(%esp), %eax
	movl	100(%esp), %edi
	movl	%ecx, %esi
	subl	164(%esp), %esi
	movw	%bp, (%eax)
	movl	%ebx, %eax
	movl	96(%esp), %ebx
	subl	160(%esp), %eax
	movswl	_sintable(%edi,%edi), %edi
	movswl	_sintable(%ebx,%ebx), %edx
/APP
 # 13014 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	192(%esp), %esi
	movl	%eax, (%esi)
L722:
	movswl	_nextspritesect(%ebp,%ebp), %ebp
	testl	%ebp, %ebp
	jns	L720
	movl	%ecx, 76(%esp)
	movzwl	40(%esp), %edx
	jmp	L721
	.cfi_endproc
LFE19:
	.p2align 4
	.globl	_yax_getnextwall.part.0
	.def	_yax_getnextwall.part.0;	.scl	2;	.type	32;	.endef
_yax_getnextwall.part.0:
LFB20:
	.cfi_startproc
	movl	_wall, %ecx
	cwtl
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	sall	$5, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	leal	10(%edx), %ebx
	addl	%ecx, %eax
	movzwl	14(%eax), %esi
	btl	%ebx, %esi
	jnc	L776
	addl	$26, %eax
	movswl	%dx, %edx
	movl	%eax, %ebx
	subl	%ecx, %ebx
	movl	%ebx, %ecx
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	movzwl	(%eax,%edx,4), %eax
L774:
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
L776:
	.cfi_restore_state
	movl	$-1, %eax
	jmp	L774
	.cfi_endproc
LFE20:
	.p2align 4
	.globl	_lastwall
	.def	_lastwall;	.scl	2;	.type	32;	.endef
_lastwall:
LFB22:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movswl	%ax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	_wall, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %ebx
	testw	%ax, %ax
	jle	L779
	movl	%edi, %eax
	leal	-1(%ebx), %ecx
	sall	$5, %eax
	movswl	%cx, %ecx
	cmpw	-24(%eax,%esi), %bx
	je	L778
L779:
	movswl	_numwalls, %edx
	movl	%edi, %ecx
	jmp	L781
	.p2align 5
	.p2align 4,,10
	.p2align 3
L787:
	movswl	%ax, %ecx
	subl	$1, %edx
	je	L786
L781:
	movl	%ecx, %eax
	sall	$5, %eax
	movzwl	8(%esi,%eax), %eax
	cmpw	%ax, %bx
	jne	L787
L778:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	movl	%ecx, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L786:
	.cfi_restore_state
	movl	%edi, %ecx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	movl	%ecx, %eax
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE22:
	.section .rdata,"dr"
LC6:
	.ascii "dragpoint %d: infloop!\0"
LC7:
	.ascii "source/build/src/engine.cpp\0"
	.text
	.p2align 4
	.globl	_dragpoint.constprop.0
	.def	_dragpoint.constprop.0;	.scl	2;	.type	32;	.endef
_dragpoint.constprop.0:
LFB24:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%eax, %ebp
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	$1, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	subl	$64, %esp
	.cfi_def_cfa_offset 84
	movswl	_numwalls, %eax
	movl	$0, 4(%esp)
	addl	$7, %eax
	movl	$__ZL7tempbuf.lto_priv.1, (%esp)
	sarl	$3, %eax
	movl	%edx, 44(%esp)
	movl	%eax, 8(%esp)
	movl	%ecx, 48(%esp)
	call	_memset
	movw	%bp, __ZZ9dragpointE8yaxwalls
	movl	_wall, %esi
	movw	%bp, 60(%esp)
	movw	%bp, 62(%esp)
	.p2align 4
	.p2align 3
L809:
	movswl	60(%esp), %eax
	movl	%ebx, 56(%esp)
	movl	$16384, %ecx
	xorl	%ebp, %ebp
	movl	%eax, 52(%esp)
	movl	%eax, 28(%esp)
L789:
	movl	28(%esp), %ebx
	movl	%ebx, %edx
	movl	%ebx, %eax
	sall	$5, %edx
	andl	$134217727, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%edx, %eax
	movl	%edx, 32(%esp)
	movl	44(%esp), %edx
	movl	%edx, (%esi,%eax)
	movl	_wall, %edx
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	48(%esp), %eax
	movl	%eax, 4(%edx)
	movl	%ebx, %edx
	movl	%ebx, %eax
	andl	$7, %edx
	sarl	$3, %eax
	movzbl	__ZL8pow2char.lto_priv.9(%edx), %esi
	movl	%esi, %edx
	orb	__ZL7tempbuf.lto_priv.1(%eax), %dl
	movb	%dl, __ZL7tempbuf.lto_priv.1(%eax)
	cmpl	$-1, %ebx
	je	L790
	movl	$0, 20(%esp)
	movl	%ebx, %eax
	movl	%ebp, 36(%esp)
	movl	%ecx, 40(%esp)
	jmp	L799
	.p2align 4,,10
	.p2align 3
L792:
	movswl	20(%esp), %edx
	movswl	26(%esp), %eax
	call	_yax_getnextwall.part.0
	movl	%eax, %edx
	cwtl
	cmpw	$-1, %dx
	jne	L795
	movl	%esi, %ebx
	testb	%bl, %bl
	je	L795
	cmpw	$0, _editstatus
	je	L793
	movl	_wall, %ecx
	movl	32(%esp), %eax
	leal	(%ecx,%eax), %edx
	testb	$8, 15(%edx)
	je	L843
	leal	26(%edx), %eax
	subl	%ecx, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movswl	30(%edx), %eax
L797:
	movl	$1, 20(%esp)
L795:
	cmpl	$-1, %eax
	je	L843
L839:
	movl	%eax, %edx
	movl	%eax, %ecx
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL7tempbuf.lto_priv.1(%edx), %edx
	movzbl	__ZL8pow2char.lto_priv.9(%ecx), %esi
L799:
	movl	%edx, %ebp
	movl	%esi, %ebx
	movw	%ax, 26(%esp)
	notl	%ebp
	movl	%ebp, %ecx
	testb	%bl, %cl
	je	L791
	movl	%eax, %ebp
	orl	%esi, %edx
	movw	%ax, __ZZ9dragpointE8yaxwalls(%edi,%edi)
	addl	$1, %edi
	sarl	$3, %ebp
	movb	%dl, __ZL7tempbuf.lto_priv.1(%ebp)
L791:
	movzbl	20(%esp), %esi
	xorl	$1, %esi
	cmpw	$0, _editstatus
	jne	L792
	movl	20(%esp), %ebx
	leal	(%ebx,%eax,2), %eax
	movswl	_yax_nextwall(%eax,%eax), %eax
	cmpl	$-1, %eax
	jne	L839
	movl	%esi, %ebx
	testb	%bl, %bl
	je	L795
L793:
	movl	28(%esp), %eax
	movswl	_yax_nextwall+2(,%eax,4), %eax
	jmp	L797
	.p2align 4,,10
	.p2align 3
L843:
	movl	36(%esp), %ebp
	movl	40(%esp), %ecx
L790:
	leal	-1(%ecx), %ebx
	testl	%ebp, %ebp
	jne	L846
	movl	_wall, %esi
	movl	32(%esp), %eax
	movswl	10(%esi,%eax), %eax
	testw	%ax, %ax
	js	L803
	testl	%ebx, %ebx
	je	L845
	sall	$5, %eax
	movswl	8(%esi,%eax), %ecx
	movl	%ecx, %eax
	movl	%ecx, %edx
	movl	%ecx, 28(%esp)
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.9(%eax), %eax
	movzbl	__ZL7tempbuf.lto_priv.1(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%cl, %al
	movl	28(%esp), %ecx
	cmove	52(%esp), %ecx
	movl	$1, %eax
	cmove	%eax, %ebp
	movl	%ecx, 28(%esp)
	movl	%ebx, %ecx
	jmp	L789
	.p2align 4,,10
	.p2align 3
L846:
	cmpl	$1, %ecx
	je	L845
	movl	_wall, %esi
	movswl	28(%esp), %eax
L805:
	call	_lastwall
	sall	$5, %eax
	movzwl	10(%esi,%eax), %eax
	testw	%ax, %ax
	js	L807
	movswl	%ax, %ecx
	andl	$7, %eax
	movl	%ecx, 28(%esp)
	sarl	$3, %ecx
	movzbl	__ZL8pow2char.lto_priv.9(%eax), %eax
	movzbl	__ZL7tempbuf.lto_priv.1(%ecx), %ecx
	andl	%eax, %ecx
	cmpb	%cl, %al
	je	L807
	movl	$1, %ebp
	movl	%ebx, %ecx
	jmp	L789
	.p2align 4,,10
	.p2align 3
L807:
	movl	56(%esp), %ebx
	addl	$1, %ebx
	cmpl	%edi, %ebx
	jge	L806
	movzwl	__ZZ9dragpointE8yaxwalls(%ebx,%ebx), %eax
	movw	%ax, 60(%esp)
	jmp	L809
	.p2align 4,,10
	.p2align 3
L803:
	testl	%ebx, %ebx
	je	L845
	movswl	60(%esp), %eax
	jmp	L805
L845:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movzwl	62(%esp), %ebp
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L847
L806:
	cmpw	$0, _editstatus
	je	L788
	movswl	_numwalls, %esi
	testw	%si, %si
	jle	L788
	movl	$1, %edx
	xorl	%eax, %eax
	jmp	L812
	.p2align 6
	.p2align 4,,10
	.p2align 3
L848:
	movl	%eax, %edx
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.9(%edx), %edx
L812:
	movl	%eax, %ecx
	sarl	$3, %ecx
	movzbl	__ZL7tempbuf.lto_priv.1(%ecx), %ebx
	andl	%edx, %ebx
	cmpb	%dl, %bl
	jne	L811
	orb	%dl, _editwall(%ecx)
L811:
	addl	$1, %eax
	cmpl	%esi, %eax
	jne	L848
L788:
	addl	$64, %esp
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
L847:
	.cfi_restore_state
	movswl	%bp, %edi
	movl	$LC6, 12(%esp)
	movl	%edi, 16(%esp)
	movl	$13081, 8(%esp)
	movl	$LC7, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L806
	.cfi_endproc
LFE24:
	.p2align 4
	.globl	_getsectordist
	.def	_getsectordist;	.scl	2;	.type	32;	.endef
_getsectordist:
LFB26:
	.cfi_startproc
	subl	$120, %esp
	.cfi_def_cfa_offset 124
	movl	%ebx, 104(%esp)
	.cfi_offset 3, -20
	movl	%ecx, %ebx
	movl	%esi, 108(%esp)
	.cfi_offset 6, -16
	movl	124(%esp), %esi
	movl	%eax, 76(%esp)
	movl	%edx, 80(%esp)
	cmpl	$4095, %ecx
	ja	L850
	movswl	%cx, %ecx
	call	_inside
	cmpl	$1, %eax
	je	L866
L850:
	movl	_sector, %eax
	leal	(%ebx,%ebx,4), %edx
	movl	%edi, 112(%esp)
	leal	(%eax,%edx,8), %eax
	.cfi_offset 7, -12
	movswl	(%eax), %edi
	movswl	2(%eax), %eax
	addl	%edi, %eax
	movl	%edi, 20(%esp)
	movl	%eax, 84(%esp)
	cmpl	%eax, %edi
	jge	L867
	movl	76(%esp), %eax
	movl	%ebp, 116(%esp)
	.cfi_offset 5, -8
	movl	$0, 72(%esp)
	movl	%eax, 88(%esp)
	sarl	$31, %eax
	movl	%eax, 92(%esp)
	movl	80(%esp), %eax
	movl	$0, 68(%esp)
	movl	%eax, 96(%esp)
	sarl	$31, %eax
	movl	%eax, 100(%esp)
	movl	$2147483647, 64(%esp)
	movl	%esi, 124(%esp)
	jmp	L858
	.p2align 4,,10
	.p2align 3
L869:
	movl	16(%esp), %eax
	imull	%eax
	movl	%eax, %esi
	movl	%ebp, %eax
	movl	%edx, %edi
	imull	%ebp
	addl	%esi, %eax
	adcl	%edi, %edx
	cmpl	%eax, %ecx
	movl	%ebx, %edi
	sbbl	%edx, %edi
	jge	L856
	shldl	$15, %ecx, %ebx
	sall	$15, %ecx
	movl	%eax, 8(%esp)
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	movl	%edx, 12(%esp)
	call	_tabledivide64.lto_priv.9
	movl	44(%esp), %edi
	movl	%eax, %ecx
	movl	%edx, %ebx
	shldl	$15, %eax, %ebx
	sall	$15, %ecx
	movl	16(%esp), %eax
	movl	%ebx, %esi
	movl	%ecx, %ebx
	movl	52(%esp), %ecx
	movl	%ebx, 24(%esp)
	imull	24(%esp), %ecx
	movl	%esi, 28(%esp)
	movl	24(%esp), %edx
	movl	%ecx, %esi
	movl	28(%esp), %ecx
	imull	%ecx, %eax
	movl	%ecx, %ebx
	movl	%edx, %ecx
	addl	%eax, %esi
	movl	16(%esp), %eax
	mull	%edx
	addl	%esi, %edx
	movl	32(%esp), %esi
	shrdl	$30, %edx, %eax
	movl	60(%esp), %edx
	addl	%eax, %edi
	movl	%ebp, %eax
	imull	%ecx, %edx
	movl	%edi, 36(%esp)
	imull	%ebx, %eax
	leal	(%edx,%eax), %ebx
	movl	%ecx, %eax
	mull	%ebp
	addl	%ebx, %edx
	shrdl	$30, %edx, %eax
	addl	%eax, %esi
	movl	%esi, 40(%esp)
L856:
	movl	36(%esp), %edi
	movl	%edi, %eax
	subl	76(%esp), %eax
/APP
 # 13221 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	40(%esp), %esi
	movl	%eax, %edx
	movl	%esi, %eax
	subl	80(%esp), %eax
/APP
 # 13221 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	64(%esp), %ebx
	addl	%edx, %eax
	movl	68(%esp), %edx
	cmpl	%eax, %ebx
	cmovg	%esi, %edx
	movl	72(%esp), %esi
	cmovle	%ebx, %eax
	cmovg	%edi, %esi
	movl	%eax, 64(%esp)
	addl	$1, 20(%esp)
	movl	20(%esp), %eax
	movl	%edx, 68(%esp)
	movl	%esi, 72(%esp)
	cmpl	%eax, 84(%esp)
	je	L868
L858:
	movl	20(%esp), %edx
	movl	_wall, %eax
	sall	$5, %edx
	addl	%eax, %edx
	movswl	8(%edx), %ecx
	movl	4(%edx), %esi
	movl	(%edx), %edi
	sall	$5, %ecx
	movl	%esi, 32(%esp)
	addl	%ecx, %eax
	movl	%edi, 44(%esp)
	movl	(%eax), %ebx
	movl	4(%eax), %eax
	movl	%eax, 40(%esp)
	subl	%esi, %eax
	movl	88(%esp), %esi
	movl	%eax, %ebp
	movl	%ebx, 36(%esp)
	subl	%edi, %ebx
	movl	%ebp, %ecx
	movl	%ebx, %eax
	movl	%ebx, 16(%esp)
	movl	%edi, %ebx
	sarl	$31, %ecx
	cltd
	sarl	$31, %ebx
	movl	%eax, 48(%esp)
	movl	%ecx, 60(%esp)
	movl	%edi, %ecx
	movl	92(%esp), %edi
	subl	%ecx, %esi
	movl	%edx, 52(%esp)
	movl	52(%esp), %edx
	sbbl	%ebx, %edi
	movl	16(%esp), %ebx
	movl	%ebp, 56(%esp)
	imull	%esi, %edx
	movl	%ebx, %ecx
	movl	%ebx, %eax
	imull	%edi, %ecx
	addl	%edx, %ecx
	mull	%esi
	movl	%edx, %edi
	movl	%eax, %esi
	movl	96(%esp), %eax
	movl	100(%esp), %edx
	addl	%ecx, %edi
	movl	32(%esp), %ecx
	movl	%ecx, %ebx
	sarl	$31, %ebx
	subl	%ecx, %eax
	sbbl	%ebx, %edx
	movl	%eax, 24(%esp)
	movl	24(%esp), %ecx
	movl	%edx, %ebx
	movl	%ebp, %edx
	movl	%ebx, 28(%esp)
	imull	28(%esp), %edx
	movl	%ecx, %eax
	movl	%edx, %ebx
	movl	60(%esp), %edx
	imull	%ecx, %edx
	addl	%edx, %ebx
	mull	%ebp
	addl	%ebx, %edx
	addl	%eax, %esi
	adcl	%edx, %edi
	xorl	%edx, %edx
	movl	%esi, %ecx
	cmpl	%esi, %edx
	movl	%edi, %ebx
	sbbl	%edi, %edx
	jl	L869
	movl	32(%esp), %eax
	movl	%eax, 40(%esp)
	movl	44(%esp), %eax
	movl	%eax, 36(%esp)
	jmp	L856
	.p2align 4,,10
	.p2align 3
L868:
	movl	124(%esp), %esi
	movl	116(%esp), %ebp
	.cfi_restore 5
L854:
	testl	%esi, %esi
	je	L865
	movl	72(%esp), %eax
	movl	%eax, (%esi)
	movl	68(%esp), %eax
	movl	%eax, 4(%esi)
	movl	64(%esp), %eax
	movl	112(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	104(%esp), %ebx
	movl	108(%esp), %esi
	addl	$120, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L865:
	.cfi_restore_state
	movl	64(%esp), %eax
	movl	112(%esp), %edi
	.cfi_restore 7
	movl	104(%esp), %ebx
	movl	108(%esp), %esi
	addl	$120, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L866:
	.cfi_def_cfa_offset 124
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	testl	%esi, %esi
	je	L855
	movl	76(%esp), %eax
	movl	%eax, (%esi)
	movl	80(%esp), %eax
	movl	%eax, 4(%esi)
L855:
	movl	104(%esp), %ebx
	movl	108(%esp), %esi
	movl	$0, 64(%esp)
	movl	64(%esp), %eax
	addl	$120, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L867:
	.cfi_def_cfa_offset 124
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$0, 72(%esp)
	movl	$0, 68(%esp)
	movl	$2147483647, 64(%esp)
	jmp	L854
	.cfi_endproc
LFE26:
	.p2align 4
	.globl	_updatesector
	.def	_updatesector;	.scl	2;	.type	32;	.endef
_updatesector:
LFB29:
	.cfi_startproc
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	52(%esp), %eax
	movl	%ebp, 36(%esp)
	.cfi_offset 5, -8
	movswl	(%eax), %ebp
	cmpl	$2147483647, _enginecompatibilitymode
	je	L871
	cmpl	$4095, %ebp
	jbe	L926
L872:
	movl	%ebx, 24(%esp)
	.cfi_offset 3, -20
	movswl	_numsectors, %ebx
	movl	%esi, 28(%esp)
	movl	%edi, 32(%esp)
	movl	%ebx, %eax
	cmpl	%ebx, %ebp
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	jnb	L874
	movl	_sector, %edx
	leal	0(%ebp,%ebp,4), %ecx
	movw	%bx, 12(%esp)
	leal	(%edx,%ecx,8), %edx
	movswl	(%edx), %esi
	movswl	2(%edx), %edi
	sall	$5, %esi
	addl	_wall, %esi
L877:
	movswl	12(%esi), %ecx
	movl	%ecx, %ebp
	cmpl	$4095, %ecx
	ja	L875
	movl	48(%esp), %edx
	movl	44(%esp), %eax
	call	_inside
	cmpl	$1, %eax
	je	L876
L875:
	addl	$32, %esi
	subl	$1, %edi
	jne	L877
	movzwl	12(%esp), %eax
	.p2align 4
	.p2align 3
L874:
	subl	$1, %ebx
	js	L878
	leal	-1(%eax), %esi
	subl	%ebx, %esi
L882:
	cmpl	$4095, %ebx
	jle	L879
L927:
	subl	$1, %ebx
	cmpl	$4095, %ebx
	jg	L927
L879:
	leal	(%esi,%ebx), %edi
	movl	48(%esp), %edx
	movl	44(%esp), %eax
	movswl	%di, %ecx
	call	_inside
	cmpl	$1, %eax
	je	L881
	subl	$1, %ebx
	jnb	L882
L878:
	movl	52(%esp), %eax
	movl	$-1, %edx
	movw	%dx, (%eax)
	movl	24(%esp), %ebx
	.cfi_restore 3
	movl	28(%esp), %esi
	.cfi_restore 6
	movl	32(%esp), %edi
	.cfi_restore 7
L870:
	movl	36(%esp), %ebp
	addl	$40, %esp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L871:
	.cfi_restore_state
	movswl	_numsectors, %eax
	movl	%edi, 32(%esp)
	movl	%ebx, 24(%esp)
	.cfi_offset 7, -12
	.cfi_offset 3, -20
	movl	%eax, %edi
	cmpl	%eax, %ebp
	jb	L928
	movl	%esi, 28(%esp)
	.cfi_offset 6, -16
L883:
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_updatesectorneighbormap, (%esp)
	call	_memset
	movl	52(%esp), %eax
	movzwl	(%eax), %ebx
	movl	%edi, %eax
	sarw	%ax
	cmpw	$-1, %bx
	cmove	%eax, %ebx
	movswl	%bx, %eax
	movl	%eax, %esi
	cmpl	$4095, %eax
	jbe	L929
L894:
	movl	%edi, %ebp
	movl	%esi, %ecx
	subl	%esi, %ebp
	cmpl	%esi, %ebp
	cmovl	%esi, %ebp
	subl	$1, %edi
	movl	%ebx, %esi
	jmp	L902
	.p2align 4,,10
	.p2align 3
L899:
	subl	$1, %ebp
	jb	L878
	movswl	%bx, %ecx
L902:
	cmpl	%edi, %ecx
	jge	L895
	addl	$1, %ebx
	movswl	%bx, %eax
	movl	%eax, 12(%esp)
	cmpl	$4095, %eax
	ja	L895
	movl	%ebx, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.9(%eax), %edx
	movzwl	%bx, %eax
	sarl	$3, %eax
	movzbl	_updatesectorneighbormap(%eax), %ecx
	andl	%edx, %ecx
	cmpb	%cl, %dl
	je	L895
	movl	12(%esp), %ecx
	movl	48(%esp), %edx
	movl	44(%esp), %eax
	call	_inside
	cmpl	$1, %eax
	je	L897
	.p2align 4
	.p2align 3
L895:
	testw	%si, %si
	jle	L899
	subl	$1, %esi
	cmpw	$4095, %si
	ja	L899
	movl	%esi, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.9(%eax), %edx
	movzwl	%si, %eax
	sarl	$3, %eax
	movzbl	_updatesectorneighbormap(%eax), %ecx
	andl	%edx, %ecx
	cmpb	%cl, %dl
	je	L899
	movl	48(%esp), %edx
	movl	44(%esp), %eax
	movswl	%si, %ecx
	call	_inside
	cmpl	$1, %eax
	jne	L899
	movl	52(%esp), %eax
	movw	%si, (%eax)
	movl	24(%esp), %ebx
	.cfi_restore 3
	movl	28(%esp), %esi
	.cfi_restore 6
	movl	32(%esp), %edi
	.cfi_restore 7
	jmp	L870
	.p2align 4,,10
	.p2align 3
L926:
	movl	48(%esp), %edx
	movl	44(%esp), %eax
	movl	%ebp, %ecx
	call	_inside
	cmpl	$1, %eax
	jne	L872
	jmp	L870
	.p2align 4,,10
	.p2align 3
L928:
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	movl	$512, 8(%esp)
	movl	%ebp, %ebx
	movl	$0, 4(%esp)
	movl	$_updatesectorneighbormap, (%esp)
	call	_memset
	movl	%ebp, %eax
	movl	%ebp, %edx
	movl	%ebp, %ecx
	sarl	$3, %eax
	andl	$7, %edx
	movw	%bp, _updatesectorneighborlist
	movzbl	__ZL8pow2char.lto_priv.6(%edx), %edx
	orb	%dl, _updatesectorneighbormap(%eax)
	movl	44(%esp), %eax
	movl	48(%esp), %edx
	movl	$0, (%esp)
	call	_getsectordist
	testl	%eax, %eax
	je	L884
	movl	%esi, 28(%esp)
	.cfi_offset 6, -16
	cmpl	$256, %eax
	jg	L925
	movl	$1, %eax
	xorl	%edi, %edi
	movw	%ax, 18(%esp)
L885:
	movswl	_updatesectorneighborlist(%edi,%edi), %esi
	movl	%esi, %ebx
	cmpl	$4095, %esi
	ja	L886
	movl	48(%esp), %edx
	movl	44(%esp), %eax
	movl	%esi, %ecx
	call	_inside
	cmpl	$1, %eax
	je	L924
L886:
	movl	_sector, %eax
	leal	(%esi,%esi,4), %edx
	leal	(%eax,%edx,8), %eax
	movswl	(%eax), %ebx
	movswl	2(%eax), %eax
	leal	(%eax,%ebx), %ebp
	cmpl	%ebp, %ebx
	jge	L887
	movl	%ebx, 12(%esp)
	movl	%ebx, %esi
	movl	%edi, 20(%esp)
	sall	$5, %esi
	addl	_wall, %esi
	.p2align 4
	.p2align 3
L891:
	movzwl	12(%esi), %eax
	testw	%ax, %ax
	js	L890
	movswl	%ax, %ecx
	andl	$7, %eax
	movl	%ecx, %edx
	movzbl	__ZL8pow2char.lto_priv.9(%eax), %eax
	sarl	$3, %edx
	movzbl	_updatesectorneighbormap(%edx), %ebx
	andl	%eax, %ebx
	cmpb	%bl, %al
	je	L890
	movl	44(%esp), %eax
	movl	48(%esp), %edx
	movl	$0, (%esp)
	call	_getsectordist
	cmpl	$1536, %eax
	jle	L930
	.p2align 4
	.p2align 3
L890:
	addl	$1, 12(%esp)
	addl	$32, %esi
	cmpl	12(%esp), %ebp
	jne	L891
	movl	20(%esp), %edi
L887:
	movswl	18(%esp), %eax
	addl	$1, %edi
	cmpl	%eax, %edi
	jl	L885
L925:
	movswl	_numsectors, %edi
	jmp	L883
	.p2align 4,,10
	.p2align 3
L924:
	movl	28(%esp), %esi
	.cfi_restore 6
L884:
	movl	52(%esp), %eax
	movw	%bx, (%eax)
	movl	24(%esp), %ebx
	.cfi_restore 3
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %ebp
	addl	$40, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L929:
	.cfi_def_cfa_offset 44
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%ebx, %eax
	movl	%esi, %ecx
	andl	$7, %eax
	sarl	$3, %ecx
	movzbl	__ZL8pow2char.lto_priv.9(%eax), %eax
	movzbl	_updatesectorneighbormap(%ecx), %ecx
	andl	%eax, %ecx
	cmpb	%cl, %al
	je	L894
	movl	48(%esp), %edx
	movl	44(%esp), %eax
	movl	%esi, %ecx
	call	_inside
	cmpl	$1, %eax
	jne	L894
L897:
	movl	52(%esp), %eax
	movw	%bx, (%eax)
	movl	24(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	28(%esp), %esi
	.cfi_restore 6
	movl	32(%esp), %edi
	.cfi_restore 7
	jmp	L870
	.p2align 4,,10
	.p2align 3
L930:
	.cfi_restore_state
	movswl	12(%esi), %eax
	movl	%eax, %edi
	sarl	$3, %eax
	movzbl	_updatesectorneighbormap(%eax), %edx
	movl	%edi, %ecx
	andl	$7, %ecx
	movl	%edx, %ebx
	movzbl	__ZL8pow2char.lto_priv.6(%ecx), %ecx
	notl	%ebx
	testb	%cl, %bl
	je	L890
	orl	%ecx, %edx
	movb	%dl, _updatesectorneighbormap(%eax)
	movswl	18(%esp), %eax
	movl	%eax, %ecx
	movw	%di, _updatesectorneighborlist(%eax,%eax)
	addl	$1, %ecx
	movw	%cx, 18(%esp)
	jmp	L890
	.p2align 4,,10
	.p2align 3
L881:
	movl	52(%esp), %eax
	movw	%di, (%eax)
	movl	24(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	28(%esp), %esi
	.cfi_restore 6
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %ebp
	addl	$40, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L876:
	.cfi_restore_state
	movl	52(%esp), %eax
	movw	%bp, (%eax)
	movl	24(%esp), %ebx
	.cfi_restore 3
	movl	28(%esp), %esi
	.cfi_restore 6
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %ebp
	addl	$40, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE29:
	.p2align 4
	.globl	_rotatepoint
	.def	_rotatepoint;	.scl	2;	.type	32;	.endef
_rotatepoint:
LFB36:
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
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movzwl	40(%esp), %eax
	movl	32(%esp), %ecx
	subl	24(%esp), %ecx
	movl	28(%esp), %esi
	leal	512(%eax), %edx
	andl	$2047, %eax
	subl	36(%esp), %esi
	andl	$2047, %edx
	movswl	_sintable(%eax,%eax), %edi
	movl	%ecx, %eax
	movswl	_sintable(%edx,%edx), %ebp
	movl	%ebp, %edx
/APP
 # 13639 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, (%esp)
	movl	%ebp, %edx
	movl	36(%esp), %eax
	movl	%ecx, %esi
	subl	28(%esp), %eax
/APP
 # 13639 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	44(%esp), %ebx
	movl	(%esp), %edx
	addl	28(%esp), %eax
	addl	24(%esp), %edx
	movl	%edx, (%ebx)
	movl	%eax, 4(%ebx)
	addl	$4, %esp
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
LFE36:
	.p2align 4
	.globl	_renderSetAspect
	.def	_renderSetAspect;	.scl	2;	.type	32;	.endef
_renderSetAspect:
LFB37:
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
	movl	%eax, _viewingrange
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	$0, (%esp)
	movl	$1, 4(%esp)
	call	_tabledivide64.lto_priv.9
	xorps	%xmm0, %xmm0
	movl	%esi, 8(%esp)
	cvtsi2ssl	%ebx, %xmm0
	movl	%esi, _yxaspect
	sarl	$31, %esi
	movl	%esi, 12(%esp)
	movl	$0, (%esp)
	movl	$1, 4(%esp)
	movss	%xmm0, _fviewingrange
	movl	%eax, __ZL17viewingrangerecip.lto_priv.0
	call	_tabledivide64.lto_priv.9
	movl	$320, 8(%esp)
	movl	%eax, _xyaspect
	movl	_xdimen, %eax
	imull	_yxaspect
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, _xdimenscale
	movl	_xdimen, %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	$320, %eax
	imull	_xyaspect
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, _xdimscale
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
LFE37:
	.p2align 4
	.globl	_videoSetCorrectedAspect
	.def	_videoSetCorrectedAspect;	.scl	2;	.type	32;	.endef
_videoSetCorrectedAspect:
LFB38:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	_r_usenewaspect, %eax
	movl	_xdim, %ecx
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -20
	movl	_ydim, %ebx
	testl	%eax, %eax
	je	L936
	movl	_newaspect_enable, %eax
	testl	%eax, %eax
	je	L936
	cmpl	$4, _rendmode
	je	L936
	movl	%ebp, 32(%esp)
	.cfi_offset 5, -8
	movl	_fullscreen, %ebp
	movl	%esi, 24(%esp)
	testl	%ebp, %ebp
	.cfi_offset 6, -16
	je	L938
	movl	_r_screenxy, %esi
	movl	$1374389535, %edx
	movl	%esi, %eax
	movl	%esi, 16(%esp)
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	imull	$100, %eax, %eax
	cmpl	$99, %esi
	jbe	L938
	subl	%eax, %esi
	movl	%esi, %ebp
	jne	L939
L938:
	movl	$81920, %ebp
L941:
	leal	0(,%ebx,4), %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	leal	(%ecx,%ecx,2), %eax
	cltd
	shldl	$16, %eax, %edx
	sall	$16, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	24(%esp), %esi
	.cfi_restore 6
	movl	20(%esp), %ebx
	movl	%ebp, %edx
	movl	32(%esp), %ebp
	.cfi_restore 5
	addl	$36, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	_renderSetAspect
	.p2align 4,,10
	.p2align 3
L936:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -20
	imull	$200, %ecx, %ecx
	leal	(%ebx,%ebx,4), %eax
	sall	$6, %eax
	cltd
	movl	%ecx, 8(%esp)
	shldl	$16, %eax, %edx
	sarl	$31, %ecx
	sall	$16, %eax
	movl	%ecx, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	20(%esp), %ebx
	addl	$36, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	movl	%eax, %edx
	movl	$65536, %eax
	jmp	_renderSetAspect
	.p2align 4,,10
	.p2align 3
L939:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	imull	%ebp, %ecx
	shrl	$5, %edx
	movl	%edi, 28(%esp)
	.cfi_offset 7, -12
	movl	%edx, %eax
	movl	%edx, %esi
	imull	%ebx, %eax
	movl	%ecx, %ebx
	sarl	$31, %ebx
	shldl	$16, %ecx, %ebx
	movl	%eax, 8(%esp)
	sall	$16, %ecx
	sarl	$31, %eax
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	movl	%ebp, %ebx
	movl	%eax, 12(%esp)
	call	_tabledivide64.lto_priv.9
	movl	$1073741824, (%esp)
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	$1, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	28(%esp), %edi
	.cfi_restore 7
	movl	%esi, %ecx
	movl	%eax, %ebp
	jmp	L941
	.cfi_endproc
LFE38:
	.p2align 4
	.globl	_videoSetViewableArea
	.def	_videoSetViewableArea;	.scl	2;	.type	32;	.endef
_videoSetViewableArea:
LFB39:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%edx, %esi
	movl	%eax, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	sall	$12, %edx
	subl	$16, %esp
	.cfi_def_cfa_offset 28
	movl	%edx, _wx1
	movl	%esi, %edx
	sall	$12, %edx
	movl	28(%esp), %ebx
	movl	%ecx, _windowxy2
	movl	%edx, _wy1
	leal	1(%ecx), %edx
	subl	%eax, %ecx
	addl	$1, %ecx
	movl	%eax, _windowxy1
	sall	$12, %edx
	movl	%ecx, _xdimen
	movl	%ecx, %eax
	movl	%ecx, 8(%esp)
	sarl	$31, %ecx
	sarl	%eax
	movl	%ecx, 12(%esp)
	movl	$0, (%esp)
	movl	$1, 4(%esp)
	movl	%edx, _wx2
	leal	1(%ebx), %edx
	sall	$12, %edx
	movl	%ebx, _windowxy2+4
	subl	%esi, %ebx
	movl	%esi, _windowxy1+4
	addl	$1, %ebx
	movl	%edx, _wy2
	movl	%eax, _halfxdimen
	call	_tabledivide64.lto_priv.9
	xorps	%xmm0, %xmm0
	movl	%ebx, _ydimen
	cvtsi2ssl	_xdimen, %xmm0
	movl	%eax, _xdimenrecip
	movss	%xmm0, _fxdimen
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebx, %xmm0
	movss	%xmm0, _fydimen
	call	_videoSetCorrectedAspect
	movl	_windowxy1, %edx
	testl	%edx, %edx
	jle	L954
	xorl	%eax, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L945:
	movl	_startumost, %edx
	movl	$1, %esi
	xorl	%ecx, %ecx
	movw	%si, (%edx,%eax,2)
	movl	_startdmost, %edx
	movw	%cx, (%edx,%eax,2)
	movl	_windowxy1, %edx
	addl	$1, %eax
	cmpl	%eax, %edx
	jg	L945
	movl	_windowxy2, %eax
	cmpl	%edx, %eax
	jl	L955
	.p2align 4
	.p2align 3
L947:
	movl	_startumost, %eax
	movl	_windowxy1+4, %ecx
	movw	%cx, (%eax,%edx,2)
	movzwl	_windowxy2+4, %eax
	movl	_startdmost, %ecx
	addl	$1, %eax
	movw	%ax, (%ecx,%edx,2)
	addl	$1, %edx
L954:
	movl	_windowxy2, %eax
	cmpl	%edx, %eax
	jge	L947
L955:
	addl	$1, %eax
	cmpl	_xdim, %eax
	jge	L943
	.p2align 6
	.p2align 4
	.p2align 3
L949:
	movl	_startumost, %edx
	movl	$1, %ecx
	xorl	%ebx, %ebx
	movw	%cx, (%edx,%eax,2)
	movl	_startdmost, %edx
	movw	%bx, (%edx,%eax,2)
	addl	$1, %eax
	cmpl	%eax, _xdim
	jg	L949
L943:
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
LFE39:
	.p2align 4
	.globl	_videoClearViewableArea
	.def	_videoClearViewableArea;	.scl	2;	.type	32;	.endef
_videoClearViewableArea:
LFB40:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%edi, 24(%esp)
	cmpl	$200, _qsetmode
	.cfi_offset 7, -12
	je	L957
	xorl	%edi, %edi
	cmpl	$-1, %eax
	jne	L956
	cmpl	$2, _rendmode
	jg	L965
L960:
	movl	%esi, 20(%esp)
	.cfi_offset 6, -16
	call	_videoBeginDrawing
	movl	_windowxy1+4, %esi
	cmpl	_windowxy2+4, %esi
	jg	L961
	movl	%ebp, 28(%esp)
	movl	_windowxy1, %eax
	movl	_ylookup, %edx
	.cfi_offset 5, -8
	movl	_windowxy2, %ebp
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -20
	movl	_frameplace, %ebx
	subl	%eax, %ebp
	addl	(%edx,%esi,4), %ebx
	addl	%eax, %ebx
	addl	$1, %ebp
	.p2align 4
	.p2align 3
L962:
	movl	%ebx, (%esp)
	addl	$1, %esi
	movl	%ebp, 8(%esp)
	movl	%edi, 4(%esp)
	call	_memset
	movl	_ylookup, %eax
	addl	4(%eax), %ebx
	cmpl	%esi, _windowxy2+4
	jge	L962
	movl	16(%esp), %ebx
	.cfi_restore 3
	movl	28(%esp), %ebp
	.cfi_restore 5
L961:
	movl	20(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %edi
	addl	$32, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	_videoEndDrawing
	.p2align 4,,10
	.p2align 3
L965:
	.cfi_def_cfa_offset 36
	.cfi_offset 7, -12
	movl	%edi, %eax
	call	_paletteGetColor
	xorps	%xmm0, %xmm0
	movl	$0x00000000, 12(%esp)
	movss	LC9, %xmm1
	movl	%eax, %edx
	shrl	$16, %edx
	movzbl	%dl, %edx
	cvtsi2ssl	%edx, %xmm0
	movzbl	%ah, %edx
	movzbl	%al, %eax
	mulss	%xmm1, %xmm0
	movss	%xmm0, 8(%esp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, 4(%esp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, (%esp)
	call	*_glad_glClearColor
	.cfi_def_cfa_offset 20
	subl	$16, %esp
	.cfi_def_cfa_offset 36
	movl	$16384, (%esp)
	call	*_glad_glClear
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
L956:
	movl	24(%esp), %edi
	addl	$32, %esp
	.cfi_remember_state
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L957:
	.cfi_restore_state
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovns	%eax, %edx
	movl	%edx, %edi
	cmpl	$2, _rendmode
	jle	L960
	jmp	L965
	.cfi_endproc
LFE40:
	.p2align 4
	.globl	_renderSetTarget
	.def	_renderSetTarget;	.scl	2;	.type	32;	.endef
_renderSetTarget:
LFB42:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -20
	movl	__ZL10setviewcnt, %ebx
	cmpl	$2, %ebx
	jg	L966
	testl	%edx, %edx
	jle	L966
	testl	%ecx, %ecx
	jle	L966
	movl	%esi, 8(%esp)
	.cfi_offset 6, -16
	movl	_xdim, %esi
	cwtl
	movl	%edi, 12(%esp)
	.cfi_offset 7, -12
	movl	_windowxy1+4, %edi
	movl	%ebp, 16(%esp)
	.cfi_offset 5, -8
	movl	%esi, __ZL7bakxsiz(,%ebx,4)
	movl	_ydim, %esi
	movl	%edi, __ZL12bakwindowxy1+4(,%ebx,8)
	movl	_windowxy2+4, %edi
	movl	%esi, __ZL7bakysiz(,%ebx,4)
	movl	_viewingrange, %esi
	movw	%dx, _tilesiz(,%eax,4)
	movl	%esi, __ZL15bakviewingrange(,%ebx,4)
	movl	_yxaspect, %esi
	movw	%cx, _tilesiz+2(,%eax,4)
	movl	%esi, __ZL11bakyxaspect(,%ebx,4)
	movl	_frameplace, %esi
	movl	%edi, __ZL12bakwindowxy2+4(,%ebx,8)
	movl	%esi, __ZL13bakframeplace(,%ebx,4)
	movl	_waloff(,%eax,4), %esi
	movl	%esi, _frameplace
	movl	_windowxy1, %esi
	movl	%esi, __ZL12bakwindowxy1(,%ebx,8)
	movl	_windowxy2, %esi
	movl	%esi, __ZL12bakwindowxy2(,%ebx,8)
	testl	%ebx, %ebx
	jne	L968
	movl	_rendmode, %esi
	movl	%eax, __ZL7baktile
	movl	%esi, __ZL11bakrendmode
L968:
	movl	%ecx, %edi
	movl	_windowxy2, %eax
	movl	%edx, %esi
	addl	$1, %ebx
	movl	_windowxy1, %ecx
	movl	__ZL8bakumost.lto_priv.0, %ebp
	movl	$0, _rendmode
	subl	%ecx, %eax
	leal	(%ecx,%ecx), %edx
	leal	2(%eax,%eax), %ecx
	movl	_startumost, %eax
	addl	%edx, %ebp
	addl	%edx, %eax
	movl	%ebp, %edx
	call	_copybufbyte
	movl	_windowxy1, %ecx
	movl	_windowxy2, %eax
	movl	__ZL8bakdmost.lto_priv.0, %ebp
	subl	%ecx, %eax
	leal	(%ecx,%ecx), %edx
	leal	2(%eax,%eax), %ecx
	movl	_startdmost, %eax
	addl	%edx, %ebp
	addl	%edx, %eax
	movl	%ebp, %edx
	call	_copybufbyte
	leal	-1(%esi), %eax
	leal	-1(%edi), %ecx
	xorl	%edx, %edx
	movl	%eax, (%esp)
	xorl	%eax, %eax
	movl	%ebx, __ZL10setviewcnt
	movl	%edi, _xdim
	movl	%esi, _ydim
	movb	$1, _offscreenrendering
	call	_videoSetViewableArea
	movl	$65536, %edx
	movl	$65536, %eax
	call	_renderSetAspect
	movl	16(%esp), %ebp
	.cfi_restore 5
	movl	4(%esp), %ebx
	movl	%esi, %edx
	movl	%edi, %eax
	movl	8(%esp), %esi
	.cfi_restore 6
	movl	12(%esp), %edi
	.cfi_restore 7
	addl	$20, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	_calc_ylookup
	.p2align 4,,10
	.p2align 3
L966:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -20
	movl	4(%esp), %ebx
	addl	$20, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE42:
	.p2align 4
	.globl	_renderRestoreTarget
	.def	_renderRestoreTarget;	.scl	2;	.type	32;	.endef
_renderRestoreTarget:
LFB43:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -20
	movl	__ZL10setviewcnt, %ebx
	testl	%ebx, %ebx
	jle	L970
	subl	$1, %ebx
	movl	%esi, 12(%esp)
	movl	%edi, 16(%esp)
	movl	%ebp, 20(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	%ebx, __ZL10setviewcnt
	setne	_offscreenrendering
	je	L981
L973:
	movl	__ZL12bakwindowxy2+4(,%ebx,8), %ebp
	movl	__ZL7bakysiz(,%ebx,4), %edi
	movl	__ZL7bakxsiz(,%ebx,4), %esi
	movl	__ZL12bakwindowxy2(,%ebx,8), %ecx
	movl	__ZL12bakwindowxy1+4(,%ebx,8), %edx
	movl	__ZL12bakwindowxy1(,%ebx,8), %eax
	movl	%ebp, (%esp)
	movl	%esi, _xdim
	movl	%edi, _ydim
	call	_videoSetViewableArea
	movl	__ZL11bakyxaspect(,%ebx,4), %edx
	movl	__ZL15bakviewingrange(,%ebx,4), %eax
	call	_renderSetAspect
	movl	_windowxy1, %ecx
	movl	_windowxy2, %edx
	subl	%ecx, %edx
	leal	(%ecx,%ecx), %eax
	leal	2(%edx,%edx), %ecx
	movl	_startumost, %edx
	addl	%eax, %edx
	addl	__ZL8bakumost.lto_priv.0, %eax
	call	_copybufbyte
	movl	_windowxy1, %ecx
	movl	_windowxy2, %edx
	subl	%ecx, %edx
	leal	(%ecx,%ecx), %eax
	leal	2(%edx,%edx), %ecx
	movl	_startdmost, %edx
	addl	%eax, %edx
	addl	__ZL8bakdmost.lto_priv.0, %eax
	call	_copybufbyte
	movl	__ZL13bakframeplace(,%ebx,4), %eax
	testl	%ebx, %ebx
	movl	%edi, %edx
	cmove	_bytesperline, %esi
	movl	%eax, _frameplace
	movl	%esi, %eax
	call	_calc_ylookup
	movl	12(%esp), %esi
	.cfi_restore 6
	movl	16(%esp), %edi
	.cfi_restore 7
	movb	$1, _modechange
	movl	20(%esp), %ebp
	.cfi_restore 5
L970:
	movl	8(%esp), %ebx
	addl	$24, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L981:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	__ZL11bakrendmode, %eax
	movl	%eax, _rendmode
	cmpl	$2, %eax
	jle	L973
	movswl	__ZL7baktile, %edi
	xorl	%esi, %esi
L975:
	movl	%esi, %edx
	xorl	%ecx, %ecx
	movl	%edi, %eax
	addl	$1, %esi
	call	__Z15gltexinvalidateiii
	cmpl	$256, %esi
	jne	L975
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L976:
	movl	%esi, %edx
	movl	$4, %ecx
	movl	%edi, %eax
	addl	$1, %esi
	call	__Z15gltexinvalidateiii
	cmpl	$256, %esi
	jne	L976
	cmpl	$4, _rendmode
	jne	L973
	movl	_prartmaps(,%edi,4), %eax
	testl	%eax, %eax
	je	L973
	leal	_prartmaps(,%edi,4), %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteTextures
	.cfi_def_cfa_offset 20
	movl	__ZL10setviewcnt, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	$0, _prartmaps(,%edi,4)
	jmp	L973
	.cfi_endproc
LFE43:
	.p2align 4
	.globl	_getzsofslopeptr
	.def	_getzsofslopeptr;	.scl	2;	.type	32;	.endef
_getzsofslopeptr:
LFB47:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	%ebp, 40(%esp)
	.cfi_offset 5, -8
	movl	48(%esp), %ebp
	movl	%edi, 36(%esp)
	.cfi_offset 7, -12
	movl	60(%esp), %edi
	movl	%esi, 32(%esp)
	movl	4(%ebp), %eax
	movl	%eax, (%edi)
	movl	64(%esp), %edi
	movl	8(%ebp), %eax
	movl	%eax, (%edi)
	movzwl	12(%ebp), %eax
	.cfi_offset 6, -16
	movzwl	14(%ebp), %esi
	movw	%ax, 20(%esp)
	orl	%esi, %eax
	movw	%si, 22(%esp)
	testb	$2, %al
	je	L982
	movl	%ebx, 28(%esp)
	.cfi_offset 3, -20
	movswl	0(%ebp), %eax
	movl	_wall, %ecx
	sall	$5, %eax
	addl	%ecx, %eax
	movswl	8(%eax), %edx
	movl	4(%eax), %edi
	sall	$5, %edx
	addl	%edx, %ecx
	movl	(%eax), %edx
	movl	4(%ecx), %esi
	movl	(%ecx), %ebx
	movl	%esi, %ecx
	subl	%edx, %ebx
	subl	%edi, %ecx
	movl	%ebx, 16(%esp)
	movl	%ecx, %eax
	imull	%ecx, %eax
	movl	%ebx, %ecx
	imull	%ebx, %ecx
	addl	%ecx, %eax
/APP
 # 14309 "source/build/src/engine.cpp" 1
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
	movl	%eax, %ecx
	sall	$5, %ecx
	movl	%ecx, 24(%esp)
	je	L999
	movl	56(%esp), %ecx
	movl	16(%esp), %eax
	subl	%edi, %ecx
	subl	%esi, %edi
	movl	%edi, %esi
	movl	52(%esp), %edi
	subl	%edx, %edi
	movl	%ecx, %edx
/APP
 # 14312 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $3, %edx, %eax
 # 0 "" 2
/NO_APP
	cmpl	$2147483647, _enginecompatibilitymode
	movl	%eax, %edi
	sete	%bl
	testb	$2, 20(%esp)
	jne	L1000
L984:
	testb	$2, 22(%esp)
	jne	L1001
L999:
	movl	28(%esp), %ebx
	.cfi_restore 3
L982:
	movl	32(%esp), %esi
	movl	36(%esp), %edi
	movl	40(%esp), %ebp
	addl	$44, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1001:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	24(%esp), %eax
	movl	%ebx, %ecx
	sarl	%cl, %edi
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movswl	26(%ebp), %edx
	movl	%edi, %eax
	imull	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	64(%esp), %edx
	movl	%ebx, %ecx
	sall	%cl, %eax
	addl	%eax, (%edx)
	movl	28(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	32(%esp), %esi
	movl	36(%esp), %edi
	movl	40(%esp), %ebp
	addl	$44, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1000:
	.cfi_restore_state
	movl	24(%esp), %eax
	movl	%ebx, %ecx
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%edi, %eax
	movswl	18(%ebp), %edx
	sarl	%cl, %eax
	imull	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	60(%esp), %edx
	movl	%ebx, %ecx
	sall	%cl, %eax
	addl	%eax, (%edx)
	movzwl	14(%ebp), %eax
	movw	%ax, 22(%esp)
	jmp	L984
	.cfi_endproc
LFE47:
	.p2align 4
	.globl	_cansee.constprop.0
	.def	_cansee.constprop.0;	.scl	2;	.type	32;	.endef
_cansee.constprop.0:
LFB49:
	.cfi_startproc
	subl	$176, %esp
	.cfi_def_cfa_offset 180
	movl	%ebp, 172(%esp)
	.cfi_offset 5, -8
	movl	%eax, %ebp
	movzwl	180(%esp), %eax
	movl	%edx, 40(%esp)
	movw	%ax, 48(%esp)
	movzwl	196(%esp), %eax
	movl	%ecx, 44(%esp)
	movw	%ax, 60(%esp)
	movl	_enginecompatibilitymode, %eax
	cmpl	$2147483647, %eax
	je	L1099
	cmpl	$19950829, %eax
	je	L1100
L1004:
	movzwl	48(%esp), %eax
	orw	60(%esp), %ax
	cmpw	$4095, %ax
	jbe	L1101
L1016:
	xorl	%eax, %eax
L1002:
	movl	172(%esp), %ebp
	addl	$176, %esp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1101:
	.cfi_restore_state
	movl	__ZL16reachablesectors.lto_priv.0, %edx
	movl	%ebx, 160(%esp)
	movl	%edi, 168(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	movswl	48(%esp), %ebx
	movl	%esi, 164(%esp)
	movswl	60(%esp), %edi
	testl	%edx, %edx
	.cfi_offset 6, -16
	je	L1102
L1017:
	movl	60(%esp), %eax
	sarl	$3, %edi
	addl	%edi, %edx
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.9(%eax), %esi
	movswl	_numsectors, %eax
	addl	$7, %eax
	movl	%esi, %ecx
	sarl	$3, %eax
	imull	%ebx, %eax
	andb	(%edx,%eax), %cl
	movl	%ecx, %eax
	movl	%esi, %ecx
	cmpb	%al, %cl
	je	L1018
L1097:
	movl	160(%esp), %ebx
	.cfi_restore 3
	movl	164(%esp), %esi
	.cfi_restore 6
	movl	168(%esp), %edi
	.cfi_restore 7
	jmp	L1016
	.p2align 4,,10
	.p2align 3
L1099:
	movl	_numyaxbunches, %eax
	testl	%eax, %eax
	jle	L1004
	movswl	48(%esp), %eax
	movl	%eax, (%esp)
	movl	%ebp, %eax
	call	__ZL20yax_cansee_fixsectoriiis.lto_priv.0
	movl	192(%esp), %ecx
	movl	188(%esp), %edx
	movw	%ax, 48(%esp)
	movswl	60(%esp), %eax
	movl	%eax, (%esp)
	movl	184(%esp), %eax
	call	__ZL20yax_cansee_fixsectoriiis.lto_priv.0
	movw	%ax, 60(%esp)
	movl	_enginecompatibilitymode, %eax
	cmpl	$19950829, %eax
	jne	L1004
	.p2align 4
	.p2align 3
L1100:
	cmpl	184(%esp), %ebp
	movl	40(%esp), %eax
	sete	%dl
	cmpl	188(%esp), %eax
	sete	%al
	testb	%al, %dl
	je	L1056
	movzwl	60(%esp), %eax
	cmpw	%ax, 48(%esp)
	je	L1053
L1056:
	movzwl	48(%esp), %eax
	movl	%ebx, 160(%esp)
	movl	%esi, 164(%esp)
	movl	%edi, 168(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movw	%ax, _clipsectorlist
	movl	$1, 56(%esp)
	movl	$0, 68(%esp)
L1015:
	movswl	%ax, %edx
	leal	(%edx,%edx,4), %ecx
	movl	_sector, %edx
	leal	(%edx,%ecx,8), %edi
	movswl	2(%edi), %esi
	movl	%edi, 64(%esp)
	testl	%esi, %esi
	jle	L1007
	movswl	(%edi), %ebx
	movl	_wall, %eax
	movl	%ebp, 48(%esp)
	leal	136(%esp), %edi
	movl	184(%esp), %ebp
	sall	$5, %ebx
	addl	%eax, %ebx
	jmp	L1013
	.p2align 4,,10
	.p2align 3
L1052:
	subl	$1, %esi
	je	L1103
L1012:
	movl	_wall, %eax
	addl	$32, %ebx
L1013:
	movswl	8(%ebx), %edx
	leal	152(%esp), %ecx
	movl	%edi, 28(%esp)
	movl	%ecx, 36(%esp)
	leal	144(%esp), %ecx
	sall	$5, %edx
	movl	%ecx, 32(%esp)
	movl	44(%esp), %ecx
	addl	%edx, %eax
	movl	4(%eax), %edx
	movl	%edx, 24(%esp)
	movl	(%eax), %eax
	movl	40(%esp), %edx
	movl	%eax, 20(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	(%ebx), %eax
	movl	%ebp, (%esp)
	movl	%eax, 12(%esp)
	movl	192(%esp), %eax
	movl	%eax, 8(%esp)
	movl	188(%esp), %eax
	movl	%eax, 4(%esp)
	movl	48(%esp), %eax
	call	_lintersect
	testl	%eax, %eax
	je	L1052
	movzwl	12(%ebx), %eax
	testw	%ax, %ax
	js	L1009
	movl	64(%esp), %ecx
	movl	152(%esp), %edx
	cmpl	%edx, 4(%ecx)
	jge	L1009
	cmpl	8(%ecx), %edx
	jge	L1009
	movswl	%ax, %ecx
	movw	%ax, 52(%esp)
	movl	_sector, %eax
	leal	(%ecx,%ecx,4), %ecx
	cmpl	4(%eax,%ecx,8), %edx
	jle	L1009
	cmpl	8(%eax,%ecx,8), %edx
	jge	L1009
	movl	56(%esp), %eax
	leal	-1(%eax), %edx
	movzwl	52(%esp), %eax
	.p2align 4
	.p2align 4
	.p2align 3
L1010:
	cmpw	_clipsectorlist(%edx,%edx), %ax
	je	L1052
	subl	$1, %edx
	jnb	L1010
	movw	%ax, 52(%esp)
	movl	56(%esp), %eax
	movzwl	52(%esp), %ecx
	movw	%cx, _clipsectorlist(%eax,%eax)
	addl	$1, %eax
	movl	%eax, 56(%esp)
	subl	$1, %esi
	jne	L1012
L1103:
	movl	68(%esp), %eax
	movl	48(%esp), %ebp
	movzwl	_clipsectorlist(%eax,%eax), %eax
L1007:
	cmpw	%ax, 60(%esp)
	je	L1054
	addl	$1, 68(%esp)
	movl	68(%esp), %eax
	cmpl	56(%esp), %eax
	jge	L1009
	movzwl	_clipsectorlist(%eax,%eax), %eax
	jmp	L1015
L1018:
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZZ6canseeE10sectbitmap, (%esp)
	call	_memset
	cmpl	184(%esp), %ebp
	jne	L1019
	movl	40(%esp), %eax
	cmpl	188(%esp), %eax
	je	L1047
L1019:
	movl	184(%esp), %eax
	movl	$0, 120(%esp)
	movl	$0, 116(%esp)
	subl	%ebp, %eax
	movl	$0, 112(%esp)
	movl	%eax, 56(%esp)
	movl	188(%esp), %eax
	subl	40(%esp), %eax
	movl	%edi, 124(%esp)
	movl	%eax, 64(%esp)
	movl	192(%esp), %eax
	subl	44(%esp), %eax
	movl	%ebp, 68(%esp)
	movl	%eax, 84(%esp)
	leal	136(%esp), %eax
	movl	%eax, 108(%esp)
L1049:
	movzwl	48(%esp), %edi
	sarl	$3, %ebx
	movl	$1, 100(%esp)
	movl	%edi, %eax
	movw	%di, _clipsectorlist
	xorl	%edi, %edi
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.9(%eax), %eax
	orb	%al, __ZZ6canseeE10sectbitmap(%ebx)
L1050:
	movswl	_clipsectorlist(%edi,%edi), %ecx
	movl	_sector, %ebx
	leal	(%ecx,%ecx,4), %eax
	movl	%ecx, 76(%esp)
	leal	0(,%eax,8), %ebp
	movl	%ecx, %eax
	movl	%ebp, 92(%esp)
	addl	%ebp, %ebx
	call	_yax_getbunch.constprop.1
	movw	%ax, 98(%esp)
	movl	76(%esp), %eax
	call	_yax_getbunch.constprop.0
	leal	140(%esp), %ecx
	movl	%ecx, 16(%esp)
	movl	108(%esp), %ecx
	movw	%ax, 132(%esp)
	movl	%ecx, 12(%esp)
	movl	40(%esp), %ecx
	movl	%ecx, 8(%esp)
	movl	68(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	_sector, %ecx
	addl	%ebp, %ecx
	movl	%ecx, (%esp)
	call	_getzsofslopeptr
	leal	148(%esp), %ecx
	addl	_sector, %ebp
	movl	%ecx, 16(%esp)
	leal	144(%esp), %ecx
	movl	%ecx, 12(%esp)
	movl	188(%esp), %ecx
	movl	%ebp, (%esp)
	movl	%ecx, 8(%esp)
	movl	184(%esp), %ecx
	movl	%ecx, 4(%esp)
	call	_getzsofslopeptr
	movswl	2(%ebx), %ecx
	movl	%ecx, 72(%esp)
	testl	%ecx, %ecx
	jle	L1020
	movswl	(%ebx), %edx
	movl	_wall, %eax
	movl	%esi, %ecx
	movl	%edi, 128(%esp)
	movzwl	98(%esp), %ebx
	andw	132(%esp), %bx
	movb	%cl, 135(%esp)
	sall	$5, %edx
	movw	%bx, 96(%esp)
	leal	(%eax,%edx), %ebp
	movl	$-1, %edx
	movw	%dx, 48(%esp)
	jmp	L1046
	.p2align 4,,10
	.p2align 3
L1024:
	movswl	12(%ebp), %edi
	movl	%edi, 88(%esp)
	cmpw	$0, 96(%esp)
	js	L1104
L1034:
	movl	%edx, 8(%esp)
	sarl	$31, %edx
	movl	%edx, 12(%esp)
	cltd
	shldl	$24, %eax, %edx
	sall	$24, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, %ebx
	movl	56(%esp), %eax
	movl	%ebx, %edx
/APP
 # 12851 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	68(%esp), %esi
	movl	%ebx, %edx
	leal	(%eax,%esi), %ecx
	movl	64(%esp), %eax
/APP
 # 12852 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	40(%esp), %eax
	movl	%ebx, %edx
	movl	%eax, 52(%esp)
	movl	84(%esp), %eax
/APP
 # 12853 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	44(%esp), %edx
	movl	%eax, 104(%esp)
	movl	%ecx, 4(%esp)
	leal	(%eax,%edx), %esi
	movl	52(%esp), %eax
	leal	156(%esp), %edx
	movl	%ecx, 80(%esp)
	movl	%edx, 16(%esp)
	leal	152(%esp), %edx
	movl	%eax, 8(%esp)
	movl	92(%esp), %eax
	addl	_sector, %eax
	movl	%edx, 12(%esp)
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movl	152(%esp), %eax
	cmpl	%eax, %esi
	jle	L1036
	cmpl	156(%esp), %esi
	movl	80(%esp), %ecx
	jge	L1042
	testl	%edi, %edi
	js	L1097
	testb	$32, 14(%ebp)
	jne	L1097
	leal	156(%esp), %eax
	leal	(%edi,%edi,4), %edx
	movl	%ecx, 4(%esp)
	movl	%eax, 16(%esp)
	leal	152(%esp), %eax
	movl	%eax, 12(%esp)
	movl	52(%esp), %eax
	movl	%eax, 8(%esp)
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	cmpl	152(%esp), %esi
	jle	L1097
	cmpl	156(%esp), %esi
	jge	L1097
L1044:
	movl	88(%esp), %edx
	movl	88(%esp), %ecx
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZZ6canseeE10sectbitmap(%edx), %eax
	movzbl	__ZL8pow2char.lto_priv.9(%ecx), %ecx
	movl	%eax, %ebx
	notl	%ebx
	testb	%cl, %bl
	je	L1022
	orl	%ecx, %eax
	movzwl	88(%esp), %edi
	movb	%al, __ZZ6canseeE10sectbitmap(%edx)
	movl	100(%esp), %eax
	movw	%di, _clipsectorlist(%eax,%eax)
	addl	$1, %eax
	movl	%eax, 100(%esp)
	.p2align 6
	.p2align 4
	.p2align 3
L1022:
	subl	$1, 72(%esp)
	je	L1045
	movl	_wall, %eax
	addl	$32, %ebp
L1046:
	movswl	8(%ebp), %edx
	movl	0(%ebp), %ecx
	movl	4(%ebp), %ebx
	movl	56(%esp), %esi
	sall	$5, %edx
	addl	%eax, %edx
	movl	%ebx, %edi
	movl	%ecx, %eax
	subl	4(%edx), %edi
	subl	(%edx), %eax
	movl	64(%esp), %edx
	imull	%edi, %esi
	movl	%eax, 52(%esp)
	imull	%eax, %edx
	subl	%esi, %edx
	testl	%edx, %edx
	jle	L1022
	movl	64(%esp), %esi
	movl	56(%esp), %eax
	subl	68(%esp), %ecx
	subl	40(%esp), %ebx
	imull	%ecx, %esi
	imull	%ebx, %eax
	subl	%eax, %esi
	cmpl	%edx, %esi
	jnb	L1022
	movl	52(%esp), %eax
	imull	%edi, %ecx
	imull	%ebx, %eax
	subl	%ecx, %eax
	cmpl	%edx, %eax
	jb	L1024
	cmpl	%eax, %edx
	jg	L1022
	cmpw	$0, 98(%esp)
	js	L1026
	movl	136(%esp), %edx
	cmpl	%edx, 44(%esp)
	jle	L1026
	movl	144(%esp), %eax
	cmpl	%eax, 192(%esp)
	jge	L1026
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	44(%esp), %eax
	subl	192(%esp), %eax
	cmpl	%eax, %ecx
	je	L1026
	xorl	%ebx, %ebx
L1051:
	subl	%ecx, %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	44(%esp), %eax
	subl	%edx, %eax
	cltd
	shldl	$24, %eax, %edx
	sall	$24, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, %esi
	cmpl	$16777215, %eax
	ja	L1033
	movl	56(%esp), %eax
	movl	%esi, %edx
/APP
 # 12820 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	68(%esp), %edi
	movl	%esi, %edx
	addl	%eax, %edi
	movl	64(%esp), %eax
	movl	%edi, 80(%esp)
/APP
 # 12821 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	40(%esp), %eax
	movl	76(%esp), %ecx
	movl	%ebx, (%esp)
	movl	%eax, 88(%esp)
	movl	%eax, %edx
	movl	%edi, %eax
	call	_yax_getneighborsect
	testl	%eax, %eax
	js	L1033
	movl	%eax, %edi
	movl	%eax, %edx
	sarl	$3, %edi
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.9(%edx), %edx
	movzbl	__ZZ6canseeE10sectbitmap(%edi), %ecx
	movb	%dl, 52(%esp)
	movl	%ecx, %edx
	notl	%edx
	testb	%dl, 52(%esp)
	je	L1033
	cmpw	$-1, 48(%esp)
	jne	L1033
	movzbl	52(%esp), %edx
	movw	%ax, 48(%esp)
	movl	84(%esp), %eax
	orl	%ecx, %edx
	movb	%dl, __ZZ6canseeE10sectbitmap(%edi)
	movl	%esi, %edx
/APP
 # 12833 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	44(%esp), %eax
	movl	%eax, 120(%esp)
	movl	88(%esp), %eax
	movl	%eax, 116(%esp)
	movl	80(%esp), %eax
	movl	%eax, 112(%esp)
L1033:
	cmpl	$1, %ebx
	je	L1022
L1026:
	cmpw	$0, 132(%esp)
	js	L1022
	movl	44(%esp), %eax
	cmpl	%eax, 140(%esp)
	jle	L1022
	movl	148(%esp), %eax
	cmpl	%eax, 192(%esp)
	jle	L1022
	movl	140(%esp), %edx
	movl	44(%esp), %eax
	movl	$1, %ebx
	subl	192(%esp), %eax
	movl	%edx, %ecx
	subl	148(%esp), %ecx
	cmpl	%ecx, %eax
	jne	L1051
	jmp	L1022
	.p2align 4,,10
	.p2align 3
L1009:
	movl	160(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	164(%esp), %esi
	.cfi_restore 6
	xorl	%eax, %eax
	movl	168(%esp), %edi
	.cfi_restore 7
	movl	172(%esp), %ebp
	addl	$176, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
L1104:
	.cfi_restore_state
	testl	%edi, %edi
	js	L1097
	testb	$32, 14(%ebp)
	je	L1034
	jmp	L1097
	.p2align 4,,10
	.p2align 3
L1036:
	cmpw	$0, 98(%esp)
	js	L1042
	movl	136(%esp), %edx
	cmpl	44(%esp), %edx
	jg	L1042
	movl	%edx, %ecx
	xorl	%edi, %edi
	subl	%eax, %ecx
	movl	104(%esp), %eax
	negl	%eax
	cmpl	%eax, %ecx
	jne	L1041
L1042:
	cmpw	$0, 132(%esp)
	js	L1097
	movl	156(%esp), %eax
	cmpl	%eax, %esi
	jl	L1097
	movl	140(%esp), %edx
	cmpl	44(%esp), %edx
	jl	L1097
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	104(%esp), %eax
	negl	%eax
	cmpl	%eax, %ecx
	je	L1097
	movl	$1, %edi
L1041:
	subl	%ecx, %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	44(%esp), %eax
	subl	%edx, %eax
	cltd
	shldl	$24, %eax, %edx
	sall	$24, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, %edx
	movl	%ebx, %eax
/APP
 # 12871 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	cmpl	$16777215, %eax
	jbe	L1105
L1043:
	cmpl	$1, %edi
	je	L1097
	jmp	L1042
L1102:
	call	_calc_sector_reachability
	movl	__ZL16reachablesectors.lto_priv.0, %edx
	jmp	L1017
L1053:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	movl	$1, %eax
	jmp	L1002
L1020:
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	addl	$1, %edi
	cmpl	100(%esp), %edi
	jl	L1050
	movl	124(%esp), %edi
	movl	%esi, %eax
	movl	%esi, %ecx
	andb	__ZZ6canseeE10sectbitmap(%edi), %al
	cmpb	%cl, %al
L1098:
	sete	%al
	movl	160(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	164(%esp), %esi
	.cfi_restore 6
	movl	168(%esp), %edi
	.cfi_restore 7
	movzbl	%al, %eax
	jmp	L1002
L1045:
	.cfi_restore_state
	movl	128(%esp), %edi
	movzbl	135(%esp), %esi
	cmpw	$-1, 48(%esp)
	je	L1020
	movl	112(%esp), %eax
	cmpl	%eax, 184(%esp)
	jne	L1057
	movl	116(%esp), %eax
	cmpl	%eax, 188(%esp)
	je	L1047
L1057:
	movl	120(%esp), %eax
	movswl	48(%esp), %ebx
	movl	%eax, 44(%esp)
	movl	116(%esp), %eax
	movl	%eax, 40(%esp)
	movl	112(%esp), %eax
	movl	%eax, 68(%esp)
	jmp	L1049
	.p2align 4,,10
	.p2align 3
L1105:
	movl	56(%esp), %eax
	movl	%ebx, %edx
/APP
 # 12875 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	%ebx, %edx
	movl	64(%esp), %eax
/APP
 # 12876 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	40(%esp), %edx
	movl	%edi, (%esp)
	addl	%eax, %edx
	movl	68(%esp), %eax
	addl	%ecx, %eax
	movl	76(%esp), %ecx
	call	_yax_getneighborsect
	movl	%eax, 88(%esp)
	testl	%eax, %eax
	js	L1043
	jmp	L1044
	.p2align 4,,10
	.p2align 3
L1054:
	movl	160(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	164(%esp), %esi
	.cfi_restore 6
	movl	$1, %eax
	movl	168(%esp), %edi
	.cfi_restore 7
	jmp	L1002
L1047:
	.cfi_restore_state
	movzwl	60(%esp), %eax
	cmpw	%ax, 48(%esp)
	jmp	L1098
	.cfi_endproc
LFE49:
	.p2align 4
	.globl	_alignceilslope
	.def	_alignceilslope;	.scl	2;	.type	32;	.endef
_alignceilslope:
LFB53:
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
	subl	$20, %esp
	.cfi_def_cfa_offset 40
	movl	%edx, 16(%esp)
	movswl	%ax, %edx
	movl	_wall, %eax
	leal	(%edx,%edx,4), %esi
	leal	0(,%esi,8), %edi
	addl	_sector, %edi
	movswl	(%edi), %ebp
	movl	%edi, %edx
	sall	$5, %ebp
	addl	%eax, %ebp
	movswl	8(%ebp), %ebx
	movl	0(%ebp), %edi
	movl	4(%ebp), %ebp
	sall	$5, %ebx
	addl	%ebx, %eax
	subl	%ebp, %ecx
	movl	(%eax), %ebx
	movl	4(%eax), %eax
	subl	%ebp, %eax
	movl	16(%esp), %ebp
	subl	%edi, %ebx
	imull	%ebx, %ecx
	subl	%edi, %ebp
	imull	%eax, %ebp
	subl	%ebp, %ecx
	jne	L1113
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
L1113:
	.cfi_restore_state
	imull	%eax, %eax
	movl	%ecx, %edi
	imull	%ebx, %ebx
	addl	%ebx, %eax
/APP
 # 14407 "source/build/src/engine.cpp" 1
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
	movl	%edi, 8(%esp)
	sarl	$31, %edi
	movl	%eax, %ebp
	movl	40(%esp), %eax
	movl	%edi, 12(%esp)
	subl	4(%edx), %eax
	sall	$8, %eax
	imull	%ebp
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	_sector, %edi
	movl	%eax, %ebx
	leal	18(,%esi,8), %eax
	leal	(%edi,%esi,8), %ecx
	movl	$-858993459, %esi
	mull	%esi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	12(%ecx), %edx
	subl	%edi, %edx
	movw	%bx, 18(%ecx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	movl	_sectorchanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _sectorchanged(,%edx,4)
	testw	%bx, %bx
	jne	L1108
	andw	$-3, 12(%ecx)
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
L1108:
	.cfi_restore_state
	orw	$2, 12(%ecx)
	addl	$20, %esp
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
LFE53:
	.p2align 4
	.globl	_alignflorslope
	.def	_alignflorslope;	.scl	2;	.type	32;	.endef
_alignflorslope:
LFB54:
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
	subl	$20, %esp
	.cfi_def_cfa_offset 40
	movl	%edx, 16(%esp)
	movswl	%ax, %edx
	movl	_wall, %eax
	leal	(%edx,%edx,4), %esi
	leal	0(,%esi,8), %edi
	addl	_sector, %edi
	movswl	(%edi), %ebp
	movl	%edi, %edx
	sall	$5, %ebp
	addl	%eax, %ebp
	movswl	8(%ebp), %ebx
	movl	0(%ebp), %edi
	movl	4(%ebp), %ebp
	sall	$5, %ebx
	addl	%ebx, %eax
	subl	%ebp, %ecx
	movl	(%eax), %ebx
	movl	4(%eax), %eax
	subl	%ebp, %eax
	movl	16(%esp), %ebp
	subl	%edi, %ebx
	imull	%ebx, %ecx
	subl	%edi, %ebp
	imull	%eax, %ebp
	subl	%ebp, %ecx
	jne	L1121
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
L1121:
	.cfi_restore_state
	imull	%eax, %eax
	movl	%ecx, %edi
	imull	%ebx, %ebx
	addl	%ebx, %eax
/APP
 # 14428 "source/build/src/engine.cpp" 1
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
	movl	%edi, 8(%esp)
	sarl	$31, %edi
	movl	%eax, %ebp
	movl	40(%esp), %eax
	movl	%edi, 12(%esp)
	subl	8(%edx), %eax
	sall	$8, %eax
	imull	%ebp
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	_sector, %edi
	movl	%eax, %ebx
	leal	26(,%esi,8), %eax
	leal	(%edi,%esi,8), %ecx
	movl	$-858993459, %esi
	mull	%esi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	14(%ecx), %edx
	subl	%edi, %edx
	movw	%bx, 26(%ecx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	movl	_sectorchanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _sectorchanged(,%edx,4)
	testw	%bx, %bx
	jne	L1116
	andw	$-3, 14(%ecx)
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
L1116:
	.cfi_restore_state
	orw	$2, 14(%ecx)
	addl	$20, %esp
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
LFE54:
	.p2align 4
	.globl	__ZL11sortspritesii.part.0.lto_priv.0
	.def	__ZL11sortspritesii.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL11sortspritesii.part.0.lto_priv.0:
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
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %ebx
	subl	%eax, %edx
	subl	$56, %esp
	.cfi_def_cfa_offset 76
	movl	%eax, (%esp)
	cmpl	$1, %edx
	jle	L1123
	movl	$1, %eax
	.p2align 3
	.p2align 4
	.p2align 3
L1124:
	leal	1(%eax,%eax), %eax
	cmpl	%edx, %eax
	jl	L1124
	sarl	%eax
	movl	%ebx, 32(%esp)
	movl	%eax, %edx
	movl	(%esp), %eax
	leal	(%eax,%eax,2), %eax
	leal	__ZL10spritesxyz.lto_priv.0+4(,%eax,4), %edi
	movl	%edi, 36(%esp)
	.p2align 4
	.p2align 3
L1125:
	movl	32(%esp), %eax
	subl	%edx, %eax
	movl	%eax, 24(%esp)
	movl	%eax, %edi
	movl	(%esp), %eax
	cmpl	%edi, %eax
	jge	L1128
	imull	$-12, %edx, %edi
	leal	0(,%edx,4), %ebx
	movl	36(%esp), %ecx
	movl	%edx, 4(%esp)
	movl	%ebx, 12(%esp)
	movl	$-4, %ebx
	movl	%ecx, %edx
	subl	%edi, %ebx
	movl	%edi, 8(%esp)
	movl	%ebx, 28(%esp)
	.p2align 4
	.p2align 3
L1130:
	movl	28(%esp), %ebx
	movl	%edx, %edi
	movl	%eax, %esi
	leal	(%ebx,%edx), %ebp
	cmpl	%eax, (%esp)
	jg	L1126
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	jmp	L1127
	.p2align 4,,10
	.p2align 3
L1179:
	movl	12(%esp), %ecx
	movl	_tspriteptr(,%esi,4), %eax
	movl	%ebp, %ebx
	movl	_tspriteptr(%ecx,%esi,4), %edx
	movl	%edx, _tspriteptr(,%esi,4)
	movl	%eax, _tspriteptr(%ecx,%esi,4)
	leal	-4(%edi), %eax
/APP
 # 9932 "source/build/src/engine.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	leal	4(%ebp), %ebx
	movl	%edi, %eax
/APP
 # 9933 "source/build/src/engine.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	8(%esp), %eax
	subl	4(%esp), %esi
	addl	%eax, %edi
	addl	%eax, %ebp
	cmpl	%esi, (%esp)
	jg	L1170
L1127:
	movl	4(%ebp), %eax
	cmpl	%eax, (%edi)
	jg	L1179
L1170:
	movl	16(%esp), %eax
	movl	20(%esp), %edx
L1126:
	addl	$1, %eax
	addl	$12, %edx
	cmpl	24(%esp), %eax
	jne	L1130
	movl	4(%esp), %edx
L1128:
	sarl	%edx
	jne	L1125
	movl	32(%esp), %ebx
L1123:
	movl	(%esp), %esi
	leal	1(%esi), %eax
	movl	%eax, 16(%esp)
	cmpl	%eax, %ebx
	jl	L1122
	movl	_globalposz, %edx
	leal	(%esi,%esi,2), %eax
	movl	__ZL10spritesxyz.lto_priv.0+4(,%eax,4), %eax
	movl	%edx, 4(%esp)
	movl	_rendmode, %edx
	movl	%edx, 32(%esp)
	jmp	L1156
L1181:
	leal	(%edx,%edx,2), %edx
	movl	__ZL10spritesxyz.lto_priv.0+4(,%edx,4), %ecx
	cmpl	%eax, %ecx
	je	L1133
	leal	1(%esi), %ebp
	cmpl	16(%esp), %ebp
	jl	L1180
L1134:
	movl	16(%esp), %esi
	movl	%ecx, %eax
L1133:
	addl	$1, 16(%esp)
	cmpl	16(%esp), %ebx
	jl	L1122
L1156:
	movl	16(%esp), %edx
	cmpl	%edx, %ebx
	jg	L1181
	movl	%eax, %ecx
	leal	1(%esi), %ebp
	cmpl	16(%esp), %ebp
	jge	L1134
L1180:
	movl	%ecx, (%esp)
	movl	%esi, %edx
	movl	%ebp, 8(%esp)
	movl	%esi, 12(%esp)
	movl	%ebx, 20(%esp)
	.p2align 4
	.p2align 3
L1137:
	movl	_tspriteptr(,%edx,4), %eax
	movzwl	12(%eax), %esi
	movl	8(%eax), %ecx
	testl	$32, %esi
	jne	L1135
	movswl	14(%eax), %edi
	movzbl	21(%eax), %ebp
	movsbl	23(%eax), %eax
	movsbl	_picanm+2(%edi,%edi,4), %ebx
	addl	%eax, %ebx
	imull	%ebp, %ebx
	leal	0(,%ebx,4), %eax
	movswl	_tilesiz+2(,%edi,4), %ebx
	movl	4(%esp), %edi
	subl	%eax, %ecx
	xorl	%eax, %eax
	imull	%ebp, %ebx
	addl	%ebx, %ebx
	andl	$128, %esi
	cmove	%ebx, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	subl	%edi, %eax
/APP
 # 9967 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%ebx, %eax
	cmovl	%edi, %ecx
L1135:
	leal	(%edx,%edx,2), %eax
	addl	$1, %edx
	movl	%ecx, __ZL10spritesxyz.lto_priv.0+8(,%eax,4)
	cmpl	16(%esp), %edx
	jne	L1137
	movl	12(%esp), %esi
	movl	(%esp), %ecx
	movl	8(%esp), %ebp
	movl	20(%esp), %ebx
	leal	(%esi,%esi,2), %eax
	cmpl	$3, 32(%esp)
	je	L1182
	leal	0(,%eax,4), %edx
	movl	%ecx, 36(%esp)
	movl	%edx, 28(%esp)
	movl	%ebx, 40(%esp)
	movl	%ebp, (%esp)
	leal	__ZL10spritesxyz.lto_priv.0+12(%edx), %ebp
	.p2align 4
	.p2align 3
L1147:
	cmpl	%esi, (%esp)
	jle	L1140
	movl	28(%esp), %eax
	movl	%ebp, %edi
	movl	%esi, 24(%esp)
	movl	%esi, %ebp
	leal	__ZL10spritesxyz.lto_priv.0(%eax), %ecx
	jmp	L1146
	.p2align 4,,10
	.p2align 3
L1184:
	movl	(%esi), %eax
	cmpl	%eax, (%ebx)
	je	L1142
L1145:
	movl	8(%edi), %edx
	subl	4(%esp), %edx
	movl	%edx, 12(%esp)
	movl	%edx, %eax
/APP
 # 9909 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	8(%ecx), %edx
	subl	4(%esp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 8(%esp)
	movl	%edx, %eax
/APP
 # 9909 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	20(%esp), %eax
	je	L1143
	movl	12(%esp), %eax
/APP
 # 9910 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	8(%esp), %eax
/APP
 # 9910 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	subl	%eax, %edx
L1144:
	testl	%edx, %edx
	jns	L1143
	movl	(%esp), %eax
	movl	4(%edi), %edx
	movl	%esi, _tspriteptr(,%eax,4)
	movl	(%ecx), %esi
	movl	%ebx, _tspriteptr(,%ebp,4)
	movl	(%edi), %ebx
	movl	%esi, (%edi)
	movl	4(%ecx), %esi
	movl	8(%edi), %eax
	movl	%ebx, 44(%esp)
	movl	%esi, 4(%edi)
	movl	8(%ecx), %esi
	movl	%edx, 48(%esp)
	movl	%esi, 8(%edi)
	movl	%eax, 52(%esp)
	movl	%ebx, (%ecx)
	movl	%edx, 4(%ecx)
	movl	%eax, 8(%ecx)
L1143:
	addl	$1, %ebp
	addl	$12, %ecx
	cmpl	%ebp, (%esp)
	je	L1183
L1146:
	movl	(%esp), %eax
	movl	_tspriteptr(,%ebp,4), %esi
	movl	_tspriteptr(,%eax,4), %ebx
	movswl	26(%esi), %eax
	movswl	26(%ebx), %edx
	cmpw	%dx, %ax
	je	L1184
	subl	%eax, %edx
	jmp	L1144
	.p2align 4,,10
	.p2align 3
L1142:
	movl	4(%ebx), %eax
	cmpl	%eax, 4(%esi)
	jne	L1145
	movl	8(%ebx), %eax
	cmpl	%eax, 8(%esi)
	jne	L1145
	movzwl	12(%esi), %eax
	xorw	12(%ebx), %ax
	testb	$48, %al
	jne	L1145
	movswl	30(%ebx), %eax
	movzwl	30(%esi), %edx
	cmpw	%dx, %ax
	je	L1145
	movl	%eax, 8(%esp)
	movswl	%dx, %eax
	movl	8(%esp), %edx
	subl	%eax, %edx
	jmp	L1144
	.p2align 4,,10
	.p2align 3
L1183:
	movl	24(%esp), %esi
	movl	%edi, %ebp
L1140:
	addl	$1, (%esp)
	addl	$12, %ebp
	movl	(%esp), %eax
	cmpl	%eax, 16(%esp)
	jne	L1147
	movl	36(%esp), %ecx
	movl	40(%esp), %ebx
	jmp	L1134
L1122:
	addl	$56, %esp
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
L1182:
	.cfi_restore_state
	sall	$2, %eax
	movl	%ecx, 36(%esp)
	movl	%eax, 28(%esp)
	movl	%ebx, 40(%esp)
	movl	%ebp, (%esp)
	leal	__ZL10spritesxyz.lto_priv.0+12(%eax), %ebp
L1139:
	movl	28(%esp), %eax
	leal	__ZL10spritesxyz.lto_priv.0(%eax), %ecx
	cmpl	(%esp), %esi
	jge	L1155
	movl	%ecx, 8(%esp)
	movl	%ebp, %edi
	movl	%esi, %ebp
	movl	%esi, 24(%esp)
	.p2align 4
	.p2align 3
L1154:
	movl	(%esp), %eax
	movl	_tspriteptr(,%ebp,4), %esi
	movl	_tspriteptr(,%eax,4), %ebx
	movzwl	12(%esi), %eax
	movzwl	12(%ebx), %edx
	movl	%edx, %ecx
	xorl	%eax, %edx
	andl	$48, %ecx
	andl	$48, %edx
	jne	L1185
	cmpw	$16, %cx
	je	L1186
L1150:
	movswl	26(%ebx), %edx
	movswl	26(%esi), %eax
	cmpw	%ax, %dx
	jne	L1177
	movl	(%esi), %eax
	cmpl	%eax, (%ebx)
	je	L1187
L1152:
	movl	8(%edi), %edx
	movl	4(%esp), %ecx
	subl	%ecx, %edx
	movl	%edx, %eax
/APP
 # 9909 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 20(%esp)
	movl	8(%esp), %eax
	movl	8(%eax), %eax
	subl	%ecx, %eax
	movl	%eax, 12(%esp)
/APP
 # 9909 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, 20(%esp)
	je	L1153
	movl	%edx, %eax
/APP
 # 9910 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	12(%esp), %eax
/APP
 # 9910 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
L1177:
	subl	%eax, %edx
L1149:
	testl	%edx, %edx
	jns	L1153
	movl	8(%esp), %ecx
	movl	(%esp), %eax
	movl	4(%edi), %edx
	movl	%esi, _tspriteptr(,%eax,4)
	movl	(%ecx), %esi
	movl	%ebx, _tspriteptr(,%ebp,4)
	movl	(%edi), %ebx
	movl	%esi, (%edi)
	movl	4(%ecx), %esi
	movl	8(%edi), %eax
	movl	%ebx, 44(%esp)
	movl	%esi, 4(%edi)
	movl	8(%ecx), %esi
	movl	%edx, 48(%esp)
	movl	%esi, 8(%edi)
	movl	%eax, 52(%esp)
	movl	%ebx, (%ecx)
	movl	%edx, 4(%ecx)
	movl	%eax, 8(%ecx)
L1153:
	addl	$12, 8(%esp)
	addl	$1, %ebp
	cmpl	(%esp), %ebp
	jne	L1154
	movl	24(%esp), %esi
	movl	%edi, %ebp
L1155:
	addl	$1, (%esp)
	movl	16(%esp), %edx
	addl	$12, %ebp
	cmpl	%edx, (%esp)
	jne	L1139
	movl	36(%esp), %ecx
	movl	40(%esp), %ebx
	jmp	L1134
L1187:
	movl	4(%esi), %eax
	cmpl	%eax, 4(%ebx)
	jne	L1152
	movl	8(%esi), %eax
	cmpl	%eax, 8(%ebx)
	jne	L1152
	movzwl	30(%ebx), %eax
	movzwl	30(%esi), %edx
	cmpw	%dx, %ax
	je	L1152
	movswl	%ax, %ecx
	movswl	%dx, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	jmp	L1149
	.p2align 4,,10
	.p2align 3
L1185:
	movzwl	%cx, %edx
	andl	$48, %eax
	subl	%eax, %edx
	jmp	L1149
L1186:
	movswl	28(%ebx), %edx
	movswl	28(%esi), %eax
	cmpw	%ax, %dx
	je	L1150
	jmp	L1177
	.cfi_endproc
LFE55:
	.p2align 4
	.globl	_getceilzofslopeptr.part.0
	.def	_getceilzofslopeptr.part.0;	.scl	2;	.type	32;	.endef
_getceilzofslopeptr.part.0:
LFB57:
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
	subl	$20, %esp
	.cfi_def_cfa_offset 40
	movl	_wall, %ecx
	movl	40(%esp), %eax
	movswl	(%eax), %eax
	sall	$5, %eax
	addl	%ecx, %eax
	movswl	8(%eax), %edx
	movl	4(%eax), %edi
	sall	$5, %edx
	addl	%edx, %ecx
	movl	(%eax), %edx
	movl	(%ecx), %ebp
	movl	4(%ecx), %esi
	subl	%edx, %ebp
	movl	%esi, %eax
	subl	%edi, %eax
	movl	%ebp, %ecx
	imull	%eax, %eax
	imull	%ebp, %ecx
	addl	%ecx, %eax
/APP
 # 14270 "source/build/src/engine.cpp" 1
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
	movl	40(%esp), %ebx
	sall	$5, %eax
	movl	4(%ebx), %ebx
	movl	%ebx, 16(%esp)
	je	L1188
	movl	%eax, %ecx
	movl	48(%esp), %eax
	subl	%edi, %eax
	subl	%esi, %edi
	movl	%edi, %esi
	movl	44(%esp), %edi
	subl	%edx, %edi
	movl	%eax, %edx
	movl	%ebp, %eax
/APP
 # 14273 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $3, %edx, %eax
 # 0 "" 2
/NO_APP
	cmpl	$2147483647, _enginecompatibilitymode
	movl	%ecx, 8(%esp)
	movl	%eax, %ebp
	sete	%bl
	movl	40(%esp), %eax
	sarl	$31, %ecx
	movl	%ecx, 12(%esp)
	movl	%ebx, %ecx
	movswl	18(%eax), %edx
	sarl	%cl, %ebp
	movl	%ebp, %eax
	imull	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%ebx, %ecx
	sall	%cl, %eax
	addl	%eax, 16(%esp)
L1188:
	movl	16(%esp), %eax
	addl	$20, %esp
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
LFE57:
	.p2align 4
	.globl	_getflorzofslopeptr.part.0
	.def	_getflorzofslopeptr.part.0;	.scl	2;	.type	32;	.endef
_getflorzofslopeptr.part.0:
LFB58:
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
	subl	$20, %esp
	.cfi_def_cfa_offset 40
	movl	_wall, %ecx
	movl	40(%esp), %eax
	movswl	(%eax), %eax
	sall	$5, %eax
	addl	%ecx, %eax
	movswl	8(%eax), %edx
	movl	4(%eax), %edi
	sall	$5, %edx
	addl	%edx, %ecx
	movl	(%eax), %edx
	movl	(%ecx), %ebp
	movl	4(%ecx), %esi
	subl	%edx, %ebp
	movl	%esi, %eax
	subl	%edi, %eax
	movl	%ebp, %ecx
	imull	%eax, %eax
	imull	%ebp, %ecx
	addl	%ecx, %eax
/APP
 # 14289 "source/build/src/engine.cpp" 1
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
	movl	40(%esp), %ebx
	sall	$5, %eax
	movl	8(%ebx), %ebx
	movl	%ebx, 16(%esp)
	je	L1194
	movl	%eax, %ecx
	movl	48(%esp), %eax
	subl	%edi, %eax
	subl	%esi, %edi
	movl	%edi, %esi
	movl	44(%esp), %edi
	subl	%edx, %edi
	movl	%eax, %edx
	movl	%ebp, %eax
/APP
 # 14292 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $3, %edx, %eax
 # 0 "" 2
/NO_APP
	cmpl	$2147483647, _enginecompatibilitymode
	movl	%ecx, 8(%esp)
	movl	%eax, %ebp
	sete	%bl
	movl	40(%esp), %eax
	sarl	$31, %ecx
	movl	%ecx, 12(%esp)
	movl	%ebx, %ecx
	movswl	26(%eax), %edx
	sarl	%cl, %ebp
	movl	%ebp, %eax
	imull	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%ebx, %ecx
	sall	%cl, %eax
	addl	%eax, 16(%esp)
L1194:
	movl	16(%esp), %eax
	addl	$20, %esp
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
LFE58:
	.p2align 4
	.globl	_updatesectorz
	.def	_updatesectorz;	.scl	2;	.type	32;	.endef
_updatesectorz:
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
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$56, %esp
	.cfi_def_cfa_offset 76
	movl	88(%esp), %eax
	movl	80(%esp), %ebp
	movzwl	(%eax), %ebx
	cmpl	$2147483647, _enginecompatibilitymode
	je	L1201
	movswl	%bx, %esi
	cmpl	$8191, %esi
	jbe	L1324
L1202:
	movswl	_numsectors, %esi
	testw	%si, %si
	jle	L1220
	leal	52(%esp), %eax
	movl	84(%esp), %edi
	movl	%eax, 28(%esp)
	leal	48(%esp), %eax
	movl	%eax, 24(%esp)
	jmp	L1222
	.p2align 4,,10
	.p2align 3
L1221:
	movl	%ebx, %esi
	testl	%ebx, %ebx
	je	L1220
L1222:
	movl	28(%esp), %eax
	movl	_sector, %edx
	leal	-1(%esi), %ebx
	movl	%ebp, 8(%esp)
	leal	(%ebx,%ebx,4), %ecx
	movl	%eax, 16(%esp)
	movl	24(%esp), %eax
	leal	(%edx,%ecx,8), %edx
	movl	%edx, (%esp)
	movl	%eax, 12(%esp)
	movl	76(%esp), %eax
	movl	%eax, 4(%esp)
	call	_getzsofslopeptr
	cmpl	48(%esp), %edi
	jl	L1221
	cmpl	52(%esp), %edi
	jg	L1221
	cmpl	$4095, %ebx
	ja	L1221
	subl	$1, %esi
	movl	76(%esp), %eax
	movl	%ebp, %edx
	movswl	%si, %ecx
	call	_inside
	cmpl	$1, %eax
	jne	L1221
L1323:
	movl	88(%esp), %eax
	movw	%si, (%eax)
	addl	$56, %esp
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
L1201:
	.cfi_restore_state
	movzwl	_numsectors, %eax
	movw	%ax, 20(%esp)
	cmpw	$4095, %bx
	jg	L1223
L1225:
	movb	$0, 24(%esp)
L1224:
	movswl	20(%esp), %eax
	movswl	%bx, %esi
	cmpl	%eax, %esi
	jnb	L1321
	movl	$-1, 20(%esp)
	movl	76(%esp), %edi
	jmp	L1246
	.p2align 4,,10
	.p2align 3
L1235:
	movl	%ebp, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_getflorzofslopeptr.part.0
L1236:
	cmpl	%eax, 84(%esp)
	jle	L1232
	movl	$1, 20(%esp)
L1233:
	movswl	_numsectors, %edx
	movswl	%bx, %esi
	movl	%edx, %eax
	cmpl	%edx, %esi
	jnb	L1320
L1246:
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_updatesectorneighbormap, (%esp)
	call	_memset
	movl	%esi, %eax
	movl	%ebx, %edx
	movl	%esi, %ecx
	sarl	$3, %eax
	andl	$7, %edx
	movw	%bx, _updatesectorneighborlist
	movzbl	__ZL8pow2char.lto_priv.6(%edx), %edx
	orb	%dl, _updatesectorneighbormap(%eax)
	movl	%edi, %eax
	movl	%ebp, %edx
	movl	$0, (%esp)
	call	_getsectordist
	cmpl	$256, %eax
	jg	L1325
	leal	44(%esp), %eax
	movl	_sector, %edx
	movl	%ebp, 8(%esp)
	movl	%eax, 16(%esp)
	leal	40(%esp), %eax
	movl	%eax, 12(%esp)
	leal	(%esi,%esi,4), %eax
	leal	(%edx,%eax,8), %eax
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	cmpl	$1, 20(%esp)
	je	L1228
	movl	40(%esp), %eax
	cmpl	%eax, 84(%esp)
	jl	L1326
L1229:
	cmpl	$-1, 20(%esp)
	jne	L1234
L1228:
	movl	44(%esp), %eax
	cmpl	%eax, 84(%esp)
	jle	L1234
	movl	$1, (%esp)
	movl	%esi, %ecx
	movl	%ebp, %edx
	movl	%edi, %eax
	call	_yax_getneighborsect
	testl	%eax, %eax
	js	L1234
	leal	(%eax,%eax,4), %edx
	movl	%eax, %ebx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	testb	$2, 14(%eax)
	jne	L1235
	movl	8(%eax), %eax
	jmp	L1236
	.p2align 4,,10
	.p2align 3
L1324:
	xorl	%eax, %eax
	cmpw	$4095, %bx
	jg	L1327
L1203:
	movl	%esi, %ecx
	movl	%eax, 24(%esp)
	movl	76(%esp), %esi
	movl	$-1, %ebx
	leal	40(%esp), %edi
	jmp	L1204
	.p2align 4,,10
	.p2align 3
L1212:
	movl	%ebp, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 20(%esp)
	call	_getflorzofslopeptr.part.0
	movl	20(%esp), %ecx
L1213:
	cmpl	%eax, 84(%esp)
	jle	L1232
	movl	$1, %ebx
L1205:
	movl	88(%esp), %eax
	movw	%cx, (%eax)
	movswl	%cx, %ecx
L1204:
	leal	44(%esp), %eax
	leal	(%ecx,%ecx,4), %edx
	movl	%edi, 12(%esp)
	movl	%eax, 16(%esp)
	movl	_sector, %eax
	movl	%ebp, 8(%esp)
	leal	(%eax,%edx,8), %eax
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	cmpl	$1, %ebx
	je	L1206
	movl	40(%esp), %eax
	cmpl	%eax, 84(%esp)
	jl	L1328
L1207:
	cmpl	$-1, %ebx
	jne	L1211
L1206:
	movl	44(%esp), %eax
	cmpl	%eax, 84(%esp)
	jle	L1211
	movl	88(%esp), %eax
	movl	%ebp, %edx
	movswl	(%eax), %ecx
	movl	$1, (%esp)
	movl	%esi, %eax
	call	_yax_getneighborsect
	movl	%eax, %ebx
	testl	%eax, %eax
	js	L1211
	movl	_sector, %edx
	movl	%eax, %ecx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$2, 14(%eax)
	jne	L1212
	movl	8(%eax), %eax
	jmp	L1213
	.p2align 4,,10
	.p2align 3
L1223:
	leal	-4095(%ebx), %eax
	cmpw	20(%esp), %ax
	jg	L1225
	movb	$1, 24(%esp)
	subw	$4096, %bx
	jmp	L1224
	.p2align 4,,10
	.p2align 3
L1326:
	movl	$0, (%esp)
	movl	%esi, %ecx
	movl	%ebp, %edx
	movl	%edi, %eax
	call	_yax_getneighborsect
	testl	%eax, %eax
	js	L1229
	leal	(%eax,%eax,4), %edx
	movl	%eax, %ebx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	testb	$2, 12(%eax)
	je	L1329
	movl	%ebp, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_getceilzofslopeptr.part.0
L1231:
	cmpl	%eax, 84(%esp)
	jge	L1232
	movl	$0, 20(%esp)
	jmp	L1233
	.p2align 4,,10
	.p2align 3
L1328:
	movl	88(%esp), %eax
	movl	%ebp, %edx
	movswl	(%eax), %ecx
	movl	$0, (%esp)
	movl	%esi, %eax
	call	_yax_getneighborsect
	movl	%eax, %edx
	testl	%eax, %eax
	js	L1207
	movl	_sector, %ebx
	movl	%eax, %ecx
	leal	(%eax,%eax,4), %eax
	leal	(%ebx,%eax,8), %eax
	testb	$2, 12(%eax)
	je	L1330
	movl	%ebp, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 28(%esp)
	movl	%edx, 20(%esp)
	call	_getceilzofslopeptr.part.0
	movl	28(%esp), %ecx
	movl	20(%esp), %edx
L1209:
	cmpl	%eax, 84(%esp)
	jge	L1331
	xorl	%ebx, %ebx
	jmp	L1205
	.p2align 4,,10
	.p2align 3
L1333:
	movl	80(%esp), %edx
	movl	76(%esp), %eax
	movl	%ebp, %ecx
	call	_inside
	cmpl	$1, %eax
	jne	L1239
L1232:
	movl	88(%esp), %eax
	movw	%bx, (%eax)
L1200:
	addl	$56, %esp
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
L1220:
	.cfi_restore_state
	movl	88(%esp), %eax
	movl	$-1, %edx
	movw	%dx, (%eax)
	addl	$56, %esp
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
L1234:
	.cfi_restore_state
	cmpb	$0, 24(%esp)
	je	L1332
L1237:
	cmpl	$4095, %esi
	ja	L1259
	movl	76(%esp), %eax
	movl	%esi, %ecx
	movl	%ebp, %edx
	call	_inside
	cmpl	$1, %eax
	je	L1232
L1259:
	movl	$1, %eax
	movl	%ebp, 80(%esp)
	xorl	%edi, %edi
	movw	%ax, 32(%esp)
	leal	52(%esp), %eax
	movl	%eax, 28(%esp)
	leal	48(%esp), %eax
	movl	%eax, 24(%esp)
	.p2align 4
	.p2align 3
L1245:
	movl	28(%esp), %eax
	movswl	_updatesectorneighborlist(%edi,%edi), %ebp
	movl	%eax, 16(%esp)
	movl	24(%esp), %eax
	leal	0(%ebp,%ebp,4), %esi
	movl	%ebp, %ebx
	sall	$3, %esi
	movl	%eax, 12(%esp)
	movl	80(%esp), %eax
	movl	%eax, 8(%esp)
	movl	76(%esp), %eax
	movl	%eax, 4(%esp)
	movl	_sector, %eax
	addl	%esi, %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movl	48(%esp), %eax
	cmpl	%eax, 84(%esp)
	jl	L1239
	movl	52(%esp), %eax
	cmpl	%eax, 84(%esp)
	jg	L1239
	cmpl	$4095, %ebp
	jbe	L1333
	.p2align 4
	.p2align 3
L1239:
	addl	_sector, %esi
	movswl	(%esi), %ebx
	movswl	2(%esi), %eax
	leal	(%eax,%ebx), %ebp
	cmpl	%ebp, %ebx
	jge	L1240
	movl	%edi, 36(%esp)
	movl	%ebx, %esi
	movl	%ebx, 20(%esp)
	sall	$5, %esi
	addl	_wall, %esi
	.p2align 4
	.p2align 3
L1244:
	movzwl	12(%esi), %eax
	testw	%ax, %ax
	js	L1243
	movswl	%ax, %ecx
	andl	$7, %eax
	movl	%ecx, %edx
	movzbl	__ZL8pow2char.lto_priv.9(%eax), %eax
	sarl	$3, %edx
	movzbl	_updatesectorneighbormap(%edx), %ebx
	andl	%eax, %ebx
	cmpb	%bl, %al
	je	L1243
	movl	76(%esp), %eax
	movl	80(%esp), %edx
	movl	$0, (%esp)
	call	_getsectordist
	cmpl	$1536, %eax
	jle	L1334
	.p2align 4
	.p2align 3
L1243:
	addl	$1, 20(%esp)
	addl	$32, %esi
	cmpl	20(%esp), %ebp
	jne	L1244
	movl	36(%esp), %edi
L1240:
	movswl	32(%esp), %eax
	addl	$1, %edi
	cmpl	%eax, %edi
	jl	L1245
	movzwl	_numsectors, %eax
	movl	80(%esp), %ebp
	movw	%ax, 20(%esp)
L1226:
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_updatesectorneighbormap, (%esp)
	call	_memset
	movl	88(%esp), %eax
	movzwl	(%eax), %edi
	movzwl	20(%esp), %eax
	movl	%ebp, 8(%esp)
	sarw	%ax
	cmpw	$-1, %di
	cmove	%eax, %edi
	movl	28(%esp), %eax
	movl	%eax, 16(%esp)
	movl	24(%esp), %eax
	movswl	%di, %ecx
	leal	(%ecx,%ecx,4), %edx
	movl	%ecx, 32(%esp)
	movl	%eax, 12(%esp)
	movl	76(%esp), %eax
	movl	%eax, 4(%esp)
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movl	48(%esp), %eax
	cmpl	%eax, 84(%esp)
	movl	32(%esp), %ecx
	jl	L1248
	movl	52(%esp), %eax
	cmpl	%eax, 84(%esp)
	jg	L1248
	cmpl	$4095, %ecx
	jbe	L1335
	.p2align 4
	.p2align 3
L1248:
	movswl	20(%esp), %esi
	movl	%ebp, 80(%esp)
	movl	84(%esp), %ebp
	subl	%ecx, %esi
	cmpl	%ecx, %esi
	movl	%esi, %ebx
	movl	%edi, %esi
	cmovl	%ecx, %ebx
	jmp	L1253
	.p2align 4,,10
	.p2align 3
L1251:
	subl	$1, %ebx
	jb	L1220
	movswl	%di, %ecx
L1253:
	movswl	_numsectors, %eax
	subl	$1, %eax
	cmpl	%eax, %ecx
	jl	L1336
L1249:
	testw	%si, %si
	jle	L1251
	movl	28(%esp), %eax
	subl	$1, %esi
	movl	_sector, %edx
	movl	%eax, 16(%esp)
	movl	24(%esp), %eax
	movl	%eax, 12(%esp)
	movl	80(%esp), %eax
	movl	%eax, 8(%esp)
	movl	76(%esp), %eax
	movl	%eax, 4(%esp)
	movzwl	%si, %eax
	leal	(%eax,%eax,4), %ecx
	movl	%eax, 20(%esp)
	leal	(%edx,%ecx,8), %edx
	movl	%edx, (%esp)
	call	_getzsofslopeptr
	cmpl	48(%esp), %ebp
	jl	L1251
	cmpl	52(%esp), %ebp
	jg	L1251
	cmpw	$4095, %si
	ja	L1251
	movl	20(%esp), %eax
	movl	%esi, %edx
	andl	$7, %edx
	sarl	$3, %eax
	movzbl	__ZL8pow2char.lto_priv.9(%edx), %edx
	movzbl	_updatesectorneighbormap(%eax), %ecx
	andl	%edx, %ecx
	cmpb	%cl, %dl
	je	L1251
	movl	80(%esp), %edx
	movl	76(%esp), %eax
	movswl	%si, %ecx
	call	_inside
	cmpl	$1, %eax
	jne	L1251
	jmp	L1323
L1327:
	movl	88(%esp), %eax
	subw	$4096, %bx
	movswl	%bx, %esi
	movw	%bx, (%eax)
	movl	$1, %eax
	jmp	L1203
L1332:
	movl	40(%esp), %eax
	cmpl	%eax, 84(%esp)
	jl	L1259
	movl	44(%esp), %eax
	cmpl	%eax, 84(%esp)
	jg	L1259
	jmp	L1237
L1330:
	movl	4(%eax), %eax
	jmp	L1209
	.p2align 4,,10
	.p2align 3
L1334:
	movswl	12(%esi), %eax
	movl	%eax, %edi
	sarl	$3, %eax
	movzbl	_updatesectorneighbormap(%eax), %edx
	movl	%edi, %ecx
	andl	$7, %ecx
	movl	%edx, %ebx
	movzbl	__ZL8pow2char.lto_priv.6(%ecx), %ecx
	notl	%ebx
	testb	%cl, %bl
	je	L1243
	orl	%ecx, %edx
	movb	%dl, _updatesectorneighbormap(%eax)
	movswl	32(%esp), %eax
	movl	%eax, %ecx
	movw	%di, _updatesectorneighborlist(%eax,%eax)
	addl	$1, %ecx
	movw	%cx, 32(%esp)
	jmp	L1243
	.p2align 4,,10
	.p2align 3
L1336:
	movl	28(%esp), %eax
	addl	$1, %edi
	movswl	%di, %ecx
	movl	%eax, 16(%esp)
	movl	24(%esp), %eax
	leal	(%ecx,%ecx,4), %edx
	movl	%ecx, 20(%esp)
	movl	%eax, 12(%esp)
	movl	80(%esp), %eax
	movl	%eax, 8(%esp)
	movl	76(%esp), %eax
	movl	%eax, 4(%esp)
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	cmpl	48(%esp), %ebp
	jl	L1249
	cmpl	52(%esp), %ebp
	jg	L1249
	movl	20(%esp), %ecx
	cmpl	$4095, %ecx
	ja	L1249
	movl	%edi, %eax
	sarl	$3, %ecx
	andl	$7, %eax
	movzbl	_updatesectorneighbormap(%ecx), %ecx
	movzbl	__ZL8pow2char.lto_priv.9(%eax), %eax
	andl	%eax, %ecx
	cmpb	%cl, %al
	je	L1249
	movl	20(%esp), %ecx
	movl	80(%esp), %edx
	movl	76(%esp), %eax
	call	_inside
	cmpl	$1, %eax
	jne	L1249
L1322:
	movl	88(%esp), %eax
	movw	%di, (%eax)
	jmp	L1200
	.p2align 4,,10
	.p2align 3
L1211:
	movl	88(%esp), %edi
	movl	24(%esp), %ecx
	movswl	(%edi), %ebx
	testl	%ecx, %ecx
	jne	L1214
	movl	40(%esp), %eax
	cmpl	%eax, 84(%esp)
	jge	L1337
L1215:
	movl	_sector, %eax
	leal	(%ebx,%ebx,4), %edx
	movl	%ebp, 80(%esp)
	leal	(%eax,%edx,8), %eax
	movswl	(%eax), %ebx
	movswl	2(%eax), %esi
	sall	$5, %ebx
	addl	_wall, %ebx
	jmp	L1218
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1216:
	addl	$32, %ebx
	subl	$1, %esi
	je	L1338
L1218:
	movzwl	12(%ebx), %edi
	testw	%di, %di
	js	L1216
	leal	52(%esp), %eax
	movswl	%di, %ebp
	movl	%eax, 16(%esp)
	leal	48(%esp), %eax
	leal	0(%ebp,%ebp,4), %edx
	movl	%eax, 12(%esp)
	movl	80(%esp), %eax
	movl	%eax, 8(%esp)
	movl	76(%esp), %eax
	movl	%eax, 4(%esp)
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movl	48(%esp), %eax
	cmpl	%eax, 84(%esp)
	jl	L1216
	movl	52(%esp), %eax
	cmpl	%eax, 84(%esp)
	jg	L1216
	cmpl	$4095, %ebp
	ja	L1216
	movl	80(%esp), %edx
	movl	76(%esp), %eax
	movl	%ebp, %ecx
	call	_inside
	cmpl	$1, %eax
	jne	L1216
	jmp	L1322
L1325:
	movzwl	_numsectors, %eax
L1320:
	movw	%ax, 20(%esp)
L1321:
	leal	52(%esp), %eax
	movl	%eax, 28(%esp)
	leal	48(%esp), %eax
	movl	%eax, 24(%esp)
	jmp	L1226
	.p2align 4,,10
	.p2align 3
L1329:
	movl	4(%eax), %eax
	jmp	L1231
L1338:
	movl	80(%esp), %ebp
	jmp	L1202
L1337:
	movl	44(%esp), %eax
	cmpl	%eax, 84(%esp)
	jg	L1215
L1214:
	cmpl	$4095, %ebx
	ja	L1215
	movl	76(%esp), %eax
	movl	%ebx, %ecx
	movl	%ebp, %edx
	call	_inside
	cmpl	$1, %eax
	jne	L1215
	jmp	L1200
L1335:
	movl	%edi, %eax
	movl	%ecx, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.9(%eax), %eax
	movzbl	_updatesectorneighbormap(%edx), %ebx
	andl	%eax, %ebx
	cmpb	%bl, %al
	je	L1248
	movl	76(%esp), %eax
	movl	%ebp, %edx
	call	_inside
	movl	32(%esp), %ecx
	cmpl	$1, %eax
	jne	L1248
	jmp	L1322
L1331:
	movl	88(%esp), %eax
	movw	%dx, (%eax)
	jmp	L1200
	.cfi_endproc
LFE59:
	.p2align 4
	.globl	_yax_getzsofslope
	.def	_yax_getzsofslope;	.scl	2;	.type	32;	.endef
_yax_getzsofslope:
LFB66:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	leal	(%eax,%eax,4), %eax
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	sall	$3, %eax
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %ebx
	subl	$40, %esp
	.cfi_def_cfa_offset 60
	movl	%eax, 12(%esp)
	addl	_sector, %eax
	testb	$2, 13(%eax)
	je	L1355
	testb	$2, 15(%eax)
	jne	L1348
L1341:
	movl	$0, 16(%esp)
	movl	$0, 20(%esp)
L1346:
	movl	%edi, %ecx
	movl	$-1, %eax
	jmp	L1349
	.p2align 4,,10
	.p2align 3
L1358:
	movl	%eax, %ecx
L1349:
	movl	$1, (%esp)
	movl	%eax, %ebp
	movl	%esi, %edx
	movl	%ebx, %eax
	call	_yax_getneighborsect
	testl	%eax, %eax
	jns	L1358
	cmpl	$-1, %ebp
	je	L1350
	leal	0(%ebp,%ebp,4), %eax
	sall	$3, %eax
	movl	%eax, 16(%esp)
L1351:
	leal	24(%esp), %eax
	movl	%ebx, 24(%esp)
	movl	%ebp, %ecx
	movl	%eax, (%esp)
	movl	24(%esp), %eax
	movl	%esi, 28(%esp)
	movl	28(%esp), %edx
	call	_getsectordist
	movl	16(%esp), %ebp
	addl	_sector, %ebp
	testb	$2, 14(%ebp)
	je	L1366
	movl	28(%esp), %eax
	movl	%ebp, (%esp)
	movl	%eax, 8(%esp)
	movl	24(%esp), %eax
	movl	%eax, 4(%esp)
	call	_getflorzofslopeptr.part.0
L1353:
	movl	64(%esp), %edx
	movl	20(%esp), %ecx
	movl	$1, 16(%esp)
	movl	%eax, (%edx)
	testl	%ecx, %ecx
	je	L1360
L1339:
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
L1355:
	.cfi_restore_state
	movl	%edi, %ecx
	movl	$-1, %eax
	jmp	L1340
	.p2align 4,,10
	.p2align 3
L1356:
	movl	%eax, %ecx
L1340:
	movl	$0, (%esp)
	movl	%eax, %ebp
	movl	%esi, %edx
	movl	%ebx, %eax
	call	_yax_getneighborsect
	testl	%eax, %eax
	jns	L1356
	cmpl	$-1, %ebp
	je	L1343
	leal	0(%ebp,%ebp,4), %eax
	movl	$0, 16(%esp)
	sall	$3, %eax
	movl	%eax, 20(%esp)
L1342:
	leal	32(%esp), %eax
	movl	%ebx, 32(%esp)
	movl	%ebp, %ecx
	movl	%eax, (%esp)
	movl	32(%esp), %eax
	movl	%esi, 36(%esp)
	movl	36(%esp), %edx
	call	_getsectordist
	movl	20(%esp), %ebp
	addl	_sector, %ebp
	testb	$2, 12(%ebp)
	je	L1367
	movl	36(%esp), %eax
	movl	%ebp, (%esp)
	movl	%eax, 8(%esp)
	movl	32(%esp), %eax
	movl	%eax, 4(%esp)
	call	_getceilzofslopeptr.part.0
L1345:
	movl	60(%esp), %edx
	movl	%eax, (%edx)
	movl	12(%esp), %edx
	movl	_sector, %eax
	testb	$2, 15(%eax,%edx)
	je	L1357
L1347:
	movl	16(%esp), %eax
	testl	%eax, %eax
	jne	L1339
	movl	12(%esp), %eax
	movl	$1, 20(%esp)
	movl	%edi, %ebp
	movl	%eax, 16(%esp)
	jmp	L1351
	.p2align 4,,10
	.p2align 3
L1343:
	movl	_sector, %eax
	movl	12(%esp), %edx
	testb	$2, 15(%eax,%edx)
	je	L1341
L1348:
	movl	12(%esp), %eax
	movl	$0, 16(%esp)
	movl	%edi, %ebp
	movl	%eax, 20(%esp)
	jmp	L1342
	.p2align 4,,10
	.p2align 3
L1357:
	movl	$1, 20(%esp)
	jmp	L1346
	.p2align 4,,10
	.p2align 3
L1350:
	movl	20(%esp), %edx
	testl	%edx, %edx
	jne	L1347
	.p2align 4
	.p2align 3
L1360:
	movl	12(%esp), %eax
	movl	%edi, %ebp
	movl	%eax, 20(%esp)
	jmp	L1342
	.p2align 4,,10
	.p2align 3
L1367:
	movl	4(%ebp), %eax
	jmp	L1345
	.p2align 4,,10
	.p2align 3
L1366:
	movl	8(%ebp), %eax
	jmp	L1353
	.cfi_endproc
LFE66:
	.p2align 4
	.globl	_yax_getbunch.part.0
	.def	_yax_getbunch.part.0;	.scl	2;	.type	32;	.endef
_yax_getbunch.part.0:
LFB67:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	cwtl
	movl	%esi, 4(%esp)
	.cfi_offset 6, -16
	movl	_sector, %esi
	leal	(%eax,%eax,4), %eax
	movl	%ebx, (%esp)
	.cfi_offset 3, -20
	movswl	%dx, %ebx
	leal	(%esi,%eax,8), %ecx
	movl	%ebp, 12(%esp)
	.cfi_offset 5, -8
	movl	$-858993459, %ebp
	leal	12(%ecx), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	testb	$4, 13(%ecx,%ebx,2)
	je	L1370
	addl	$22, %ecx
	movl	%ecx, %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movzbl	(%ecx,%ebx,8), %eax
L1368:
	movl	(%esp), %ebx
	movl	4(%esp), %esi
	movl	12(%esp), %ebp
	addl	$16, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1370:
	.cfi_restore_state
	movl	$-1, %eax
	jmp	L1368
	.cfi_endproc
LFE67:
	.section .rdata,"dr"
LC10:
	.ascii "!!numscans\0"
	.text
	.p2align 4
	.globl	__ZL17classicScanSectors.part.0.lto_priv.0
	.def	__ZL17classicScanSectors.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL17classicScanSectors.part.0.lto_priv.0:
LFB68:
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
	subl	$132, %esp
	.cfi_def_cfa_offset 152
	movl	$1, 88(%esp)
L1405:
	subl	$1, 88(%esp)
	movl	88(%esp), %eax
	movswl	_sectorborder(%eax,%eax), %eax
	movswl	_headspritesect(%eax,%eax), %ebp
	movw	%ax, 92(%esp)
	movl	%eax, 16(%esp)
	testl	%ebp, %ebp
	jns	L1378
	jmp	L1373
	.p2align 4,,10
	.p2align 3
L1374:
	cmpb	$0, 20(%eax)
	je	L1375
	cmpb	$0, 21(%eax)
	je	L1375
	movl	(%eax), %ecx
	movl	_globalposx, %edx
	movl	4(%eax), %esi
	movl	_globalposy, %edi
	testb	$48, %bl
	jne	L1376
	subl	%edx, %ecx
	movl	%ecx, %eax
	imull	_cosglobalang
	movl	%eax, %ecx
	movl	%esi, %eax
	movl	%edx, %ebx
	subl	%edi, %eax
	imull	_singlobalang
	addl	%eax, %ecx
	adcl	%edx, %ebx
	xorl	%eax, %eax
	cmpl	%ecx, %eax
	sbbl	%ebx, %eax
	jge	L1375
L1377:
	movl	16(%esp), %edx
	movswl	%bp, %eax
	call	_renderAddTsprite
	testl	%eax, %eax
	jne	L1373
L1375:
	movswl	_nextspritesect(%ebp,%ebp), %ebp
	testl	%ebp, %ebp
	js	L1373
L1378:
	imull	$44, %ebp, %eax
	addl	_sprite, %eax
	movzwl	12(%eax), %ebx
	testw	%bx, %bx
	jns	L1374
	cmpb	$0, _showinvisibility
	jne	L1374
	movswl	_nextspritesect(%ebp,%ebp), %ebp
	testl	%ebp, %ebp
	jns	L1378
	.p2align 4
	.p2align 3
L1373:
	movl	16(%esp), %ecx
	movl	92(%esp), %edx
	movl	%ecx, %eax
	andl	$7, %edx
	sarl	$3, %eax
	movzbl	__ZL8pow2char.lto_priv.9(%edx), %edx
	orb	%dl, _gotsector(%eax)
	movl	_sector, %eax
	leal	(%ecx,%ecx,4), %edx
	leal	(%eax,%edx,8), %eax
	movswl	(%eax), %ecx
	movswl	2(%eax), %eax
	addl	%ecx, %eax
	movl	%ecx, 76(%esp)
	movl	%eax, 80(%esp)
	cmpl	%eax, %ecx
	jge	L1379
	movswl	_numscans, %eax
	movzwl	_numbunches, %ebp
	movl	%ecx, 16(%esp)
	movl	_wall, %ebx
	movl	$0, 72(%esp)
	movw	%ax, 108(%esp)
	movl	%ebx, 24(%esp)
	movl	%eax, 84(%esp)
	movl	$0, 68(%esp)
	movw	%bp, 110(%esp)
	movl	%eax, 112(%esp)
	jmp	L1394
	.p2align 4,,10
	.p2align 3
L1383:
	movl	%ebp, %esi
	movl	20(%esp), %eax
	movl	40(%esp), %edx
	subl	%ebx, %esi
	movl	44(%esp), %edi
/APP
 # 1708 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	48(%esp), %edx
	movl	20(%esp), %esi
	movl	%eax, 32(%esp)
	movl	%ecx, %edi
	movl	64(%esp), %eax
/APP
 # 1709 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 20(%esp)
L1384:
	movl	32(%esp), %eax
	movl	%ebp, %esi
	movl	40(%esp), %edx
	movl	44(%esp), %edi
	subl	36(%esp), %esi
	movl	%eax, 124(%esp)
	movl	20(%esp), %eax
	movl	%eax, 128(%esp)
	movl	28(%esp), %eax
/APP
 # 1708 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	48(%esp), %edx
	movl	28(%esp), %esi
	movl	%eax, 36(%esp)
	movl	%ecx, %edi
	movl	%eax, 68(%esp)
	movl	60(%esp), %eax
/APP
 # 1709 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 72(%esp)
	movl	%eax, %ebp
	cmpl	$255, %eax
	jg	L1385
	cmpl	$255, 20(%esp)
	jle	L1386
L1385:
	movl	36(%esp), %esi
	movl	32(%esp), %eax
	movl	%ebp, %edx
	movl	20(%esp), %edi
	negl	%esi
/APP
 # 1888 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx
 # 0 "" 2
/NO_APP
	testl	%edx, %edx
	jns	L1386
	cmpw	$8190, 108(%esp)
	jg	L1430
	movswl	108(%esp), %ecx
	movl	36(%esp), %eax
	leal	116(%esp), %edx
	movl	%ebp, 120(%esp)
	sall	$2, %ecx
	movl	%eax, 116(%esp)
	leal	124(%esp), %eax
	leal	__ZL3yb2.lto_priv.0(%ecx), %esi
	leal	_xb1(%ecx), %ebx
	movl	%esi, 8(%esp)
	leal	__ZL3xb2.lto_priv.0(%ecx), %esi
	addl	$__ZL3yb1.lto_priv.0, %ecx
	movl	%ecx, (%esp)
	movl	%ebx, %ecx
	movl	%esi, 4(%esp)
	call	__ZL17get_screen_coordsRK4vec2IiES2_PiS3_S3_S3_.lto_priv.0
	movzwl	_numscans, %ebx
	movw	%bx, 108(%esp)
	testl	%eax, %eax
	jne	L1390
	movl	_wall, %eax
	movl	56(%esp), %ecx
	addl	%eax, %ecx
	movl	%eax, 24(%esp)
	movl	%ecx, 52(%esp)
L1386:
	movl	52(%esp), %eax
	movswl	8(%eax), %eax
	cmpl	16(%esp), %eax
	jge	L1392
	movswl	108(%esp), %eax
	movl	84(%esp), %ebx
	cmpl	%eax, %ebx
	jge	L1392
	movw	%bx, _bunchp2-2(%eax,%eax)
	movl	%eax, 84(%esp)
L1392:
	addl	$1, 16(%esp)
	movl	16(%esp), %eax
	cmpl	%eax, 80(%esp)
	je	L1431
L1394:
	movl	16(%esp), %eax
	movl	24(%esp), %ebx
	movl	_globalposx, %ebp
	sall	$5, %eax
	leal	(%ebx,%eax), %edi
	movl	%eax, 56(%esp)
	movswl	8(%edi), %ecx
	movl	4(%edi), %esi
	movl	%edi, 52(%esp)
	movswl	12(%edi), %edx
	sall	$5, %ecx
	movl	%esi, 40(%esp)
	addl	%ebx, %ecx
	movl	(%edi), %ebx
	movw	%dx, 32(%esp)
	movl	%ebx, %eax
	subl	%ebp, %eax
	movl	%eax, 64(%esp)
	movl	_globalposy, %eax
	subl	%eax, %esi
	movl	%esi, 20(%esp)
	movl	(%ecx), %esi
	movl	%esi, 36(%esp)
	subl	%ebp, %esi
	movl	%esi, 60(%esp)
	movl	4(%ecx), %esi
	movl	%esi, %ecx
	subl	%eax, %ecx
	movl	%ecx, 28(%esp)
	testl	%edx, %edx
	js	L1382
	testb	$32, 14(%edi)
	jne	L1382
	cmpl	$255, 88(%esp)
	jle	L1432
L1382:
	movl	_cosglobalang, %eax
	movl	_sinviewingrangeglobalang, %ecx
	movl	16(%esp), %edx
	movl	%eax, 40(%esp)
	movl	_singlobalang, %eax
	movl	%eax, 44(%esp)
	movl	_cosviewingrangeglobalang, %eax
	movl	%eax, 48(%esp)
	cmpl	%edx, 76(%esp)
	je	L1383
	movl	24(%esp), %eax
	movl	56(%esp), %edi
	movswl	-24(%eax,%edi), %eax
	cmpl	%edx, %eax
	jne	L1383
	movl	72(%esp), %eax
	movl	%eax, 20(%esp)
	movl	68(%esp), %eax
	movl	%eax, 32(%esp)
	jmp	L1384
	.p2align 4,,10
	.p2align 3
L1376:
	andl	$112, %ebx
	cmpw	$80, %bx
	jne	L1377
	movzwl	28(%eax), %ebx
	subl	%ecx, %edx
	subl	%esi, %edi
	leal	512(%ebx), %eax
	andl	$2047, %ebx
	movswl	_sintable(%ebx,%ebx), %ecx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	movl	%ecx, %esi
/APP
 # 1828 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	testl	%eax, %eax
	jg	L1377
	jmp	L1375
	.p2align 4,,10
	.p2align 3
L1390:
	movswl	108(%esp), %eax
	movzwl	92(%esp), %ebx
	movw	%bx, _thesector(%eax,%eax)
	movzwl	16(%esp), %ebx
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ebp, __ZL3ry2.lto_priv.0(,%eax,4)
	movw	%bx, _thewall(%eax,%eax)
	movl	32(%esp), %ebx
	movw	%cx, _bunchp2(%eax,%eax)
	movl	%ebx, _rx1(,%eax,4)
	movl	20(%esp), %ebx
	movw	%cx, 108(%esp)
	movl	%ebx, _ry1(,%eax,4)
	movl	36(%esp), %ebx
	movw	%cx, _numscans
	movl	%ebx, __ZL3rx2.lto_priv.0(,%eax,4)
	movl	_wall, %eax
	movl	56(%esp), %ebx
	movl	%eax, 24(%esp)
	addl	%eax, %ebx
	movl	%ebx, 52(%esp)
	jmp	L1386
	.p2align 4,,10
	.p2align 3
L1432:
	movl	32(%esp), %edi
	sarl	$3, %edx
	movl	%edx, %ecx
	movzbl	_gotsector(%edx), %edx
	andl	$7, %edi
	movzbl	__ZL8pow2char.lto_priv.9(%edi), %eax
	movb	%dl, 44(%esp)
	notl	%edx
	movb	%al, 48(%esp)
	testb	%dl, 48(%esp)
	je	L1382
	movl	64(%esp), %eax
	imull	28(%esp)
	movl	%ebp, 104(%esp)
	movl	%eax, 96(%esp)
	movl	60(%esp), %eax
	movl	%edx, 100(%esp)
	imull	20(%esp)
	movl	96(%esp), %edi
	movl	100(%esp), %ebp
	subl	%eax, %edi
	movl	%edi, 96(%esp)
	movl	96(%esp), %eax
	sbbl	%edx, %ebp
	movl	%ebp, 100(%esp)
	movl	$524287, %ebp
	cltd
	addl	$262144, %eax
	adcl	$0, %edx
	cmpl	%eax, %ebp
	movl	$0, %ebp
	sbbl	%edx, %ebp
	movl	104(%esp), %ebp
	jc	L1382
	movl	96(%esp), %eax
	movl	%eax, %edx
/APP
 # 1874 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $5, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	36(%esp), %edi
	subl	40(%esp), %esi
	movl	%eax, 96(%esp)
	imull	%esi, %esi
	subl	%ebx, %edi
	movl	%edi, %eax
	imull	%edi, %eax
	addl	%esi, %eax
	cmpl	%eax, 96(%esp)
	jg	L1382
	movl	88(%esp), %edi
	movzwl	32(%esp), %esi
	movzbl	44(%esp), %eax
	orb	48(%esp), %al
	movb	%al, _gotsector(%ecx)
	leal	1(%edi), %eax
	movw	%si, _sectorborder(%edi,%edi)
	movl	%eax, 88(%esp)
	jmp	L1382
	.p2align 4,,10
	.p2align 3
L1434:
	movl	28(%esp), %ebx
	cmpb	$0, 20(%esp)
	je	L1408
	movw	%cx, _numbunches
L1400:
	movswl	%cx, %ecx
L1396:
	cmpl	%ecx, %ebx
	jge	L1379
	.p2align 4
	.p2align 3
L1401:
	movswl	_bunchfirst+0(%ebx,%ebx), %eax
	movl	%eax, %edx
	movzwl	_bunchp2(%eax,%eax), %eax
	testw	%ax, %ax
	js	L1402
	.p2align 4
	.p2align 4
	.p2align 3
L1403:
	cwtl
	movl	%eax, %edx
	movzwl	_bunchp2(%eax,%eax), %eax
	testw	%ax, %ax
	jns	L1403
L1402:
	movw	%dx, _bunchlast+0(%ebx,%ebx)
	addl	$1, %ebx
	cmpl	%ecx, %ebx
	jne	L1401
L1379:
	movl	88(%esp), %eax
	testl	%eax, %eax
	jg	L1405
L1372:
	addl	$132, %esp
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
L1431:
	.cfi_restore_state
	movl	112(%esp), %eax
	movswl	108(%esp), %ebp
	movswl	110(%esp), %ebx
	movzwl	_numbunches, %esi
	cmpl	%ebp, %eax
	jge	L1433
	movl	%ebx, 28(%esp)
	movl	%esi, %ecx
	movb	$0, 20(%esp)
	movw	%si, 32(%esp)
	movl	%ebp, 16(%esp)
	jmp	L1399
	.p2align 4,,10
	.p2align 3
L1397:
	movswl	%cx, %edx
	movb	$1, 20(%esp)
	addl	$1, %ecx
	movw	%bx, _bunchfirst(%edx,%edx)
	movl	$-1, %edx
	movw	%dx, _bunchp2(%eax,%eax)
L1398:
	addl	$1, %eax
	cmpl	16(%esp), %eax
	je	L1434
L1399:
	movswl	_thewall(%eax,%eax), %edx
	movswl	_bunchp2(%eax,%eax), %esi
	movl	24(%esp), %edi
	sall	$5, %edx
	movzwl	_thewall(%esi,%esi), %ebp
	movl	%esi, %ebx
	cmpw	%bp, 8(%edi,%edx)
	jne	L1397
	movl	_xb1(,%esi,4), %edi
	cmpl	%edi, __ZL3xb2.lto_priv.0(,%eax,4)
	jl	L1398
	jmp	L1397
L1430:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1372
	movl	$LC10, 12(%esp)
	movl	$1893, 8(%esp)
	movl	$LC7, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	addl	$132, %esp
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
L1408:
	.cfi_restore_state
	movzwl	32(%esp), %ecx
	jmp	L1400
L1433:
	movswl	%si, %ecx
	jmp	L1396
	.cfi_endproc
LFE68:
	.p2align 4
	.globl	_rotatesprite_.part.0.constprop.0
	.def	_rotatesprite_.part.0.constprop.0;	.scl	2;	.type	32;	.endef
_rotatesprite_.part.0.constprop.0:
LFB71:
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
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	movzwl	100(%esp), %ebx
	movl	112(%esp), %esi
	movl	%eax, 56(%esp)
	movzwl	96(%esp), %eax
	movl	116(%esp), %edi
	movl	120(%esp), %ebp
	movw	%ax, 60(%esp)
	movzbl	104(%esp), %eax
	movb	%al, 62(%esp)
	movzbl	108(%esp), %eax
	movb	%al, 63(%esp)
	movl	124(%esp), %eax
	movl	%eax, 48(%esp)
	movl	128(%esp), %eax
	movl	%eax, 52(%esp)
	cmpl	$16, %ecx
	jle	L1435
	movswl	%bx, %eax
	movl	%ecx, 68(%esp)
	movl	%edx, 64(%esp)
	cmpb	$63, _picanm+3(%eax,%eax,4)
	jbe	L1437
	call	_animateoffs
	addl	%eax, %ebx
	movswl	%bx, %eax
L1437:
	testb	$16, _globalorientation+1
	je	L1439
	movswl	_rottile(,%eax,4), %ecx
	cmpw	$-1, %cx
	cmovne	%ecx, %eax
	cmovne	%ecx, %ebx
L1439:
	cmpw	$0, _tilesiz(,%eax,4)
	jle	L1435
	cmpw	$0, _tilesiz+2(,%eax,4)
	jle	L1435
	testl	$128, %esi
	je	L1441
	cmpl	$4, _rendmode
	je	L1442
	movl	_numpages, %ecx
	cmpl	$1, %ecx
	jle	L1443
	movl	__ZL15beforedrawrooms.lto_priv.0, %eax
	movl	%eax, 72(%esp)
	testl	%eax, %eax
	je	L1444
L1443:
	call	_videoBeginDrawing
	movl	_guniqhudid, %eax
	movl	%ebp, 32(%esp)
	movl	%edi, 28(%esp)
	movl	68(%esp), %ecx
	movl	%eax, 44(%esp)
	movl	52(%esp), %eax
	movl	$0, 24(%esp)
	movl	64(%esp), %edx
	movl	%eax, 40(%esp)
	movl	48(%esp), %eax
	movl	$0, 20(%esp)
	movl	%eax, 36(%esp)
	movzbl	63(%esp), %eax
	movl	%esi, 16(%esp)
	movl	%eax, 12(%esp)
	movsbl	62(%esp), %eax
	movl	%eax, 8(%esp)
	movswl	%bx, %eax
	movl	%eax, 4(%esp)
	movswl	60(%esp), %eax
	movl	%eax, (%esp)
	movl	56(%esp), %eax
	call	__ZL14dorotatespriteiiissacihhiiiii.lto_priv.0
	call	_videoEndDrawing
	movl	_numpages, %ecx
	cmpl	$1, %ecx
	jle	L1435
	movl	__ZL15beforedrawrooms.lto_priv.0, %eax
	movl	%eax, 72(%esp)
L1444:
	imull	$44, __ZL8permhead.lto_priv.0, %eax
	movl	56(%esp), %edx
	movl	%edx, __ZL8permfifo.lto_priv.0(%eax)
	movl	64(%esp), %edx
	movw	%bx, __ZL8permfifo.lto_priv.0+14(%eax)
	movzbl	62(%esp), %ebx
	movl	%edx, __ZL8permfifo.lto_priv.0+4(%eax)
	movl	68(%esp), %edx
	movl	%edi, __ZL8permfifo.lto_priv.0+24(%eax)
	movl	48(%esp), %edi
	movl	%edx, __ZL8permfifo.lto_priv.0+8(%eax)
	movzwl	60(%esp), %edx
	movb	%bl, __ZL8permfifo.lto_priv.0+16(%eax)
	movzbl	63(%esp), %ebx
	movw	%dx, __ZL8permfifo.lto_priv.0+12(%eax)
	xorl	%edx, %edx
	movw	%dx, __ZL8permfifo.lto_priv.0+19(%eax)
	movzbl	72(%esp), %edx
	movl	%edi, __ZL8permfifo.lto_priv.0+32(%eax)
	movl	52(%esp), %edi
	sall	$7, %edx
	movb	%bl, __ZL8permfifo.lto_priv.0+17(%eax)
	movl	%esi, %ebx
	addl	%ecx, %edx
	movb	%bl, __ZL8permfifo.lto_priv.0+18(%eax)
	movb	%dl, __ZL8permfifo.lto_priv.0+21(%eax)
	movl	_guniqhudid, %edx
	movl	%ebp, __ZL8permfifo.lto_priv.0+28(%eax)
	movl	%edi, __ZL8permfifo.lto_priv.0+36(%eax)
	movl	%edx, __ZL8permfifo.lto_priv.0+40(%eax)
	movl	__ZL8permhead.lto_priv.0, %eax
	addl	$1, %eax
	andl	$511, %eax
	movl	%eax, __ZL8permhead.lto_priv.0
L1435:
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
L1441:
	.cfi_restore_state
	call	_videoBeginDrawing
	movswl	%bx, %ebx
	movl	%ebp, 32(%esp)
	movl	68(%esp), %ecx
	movl	_guniqhudid, %eax
	movl	%edi, 28(%esp)
	movl	$0, 24(%esp)
	movl	64(%esp), %edx
	movl	%eax, 44(%esp)
	movl	52(%esp), %eax
	movl	$0, 20(%esp)
	movl	%eax, 40(%esp)
	movl	48(%esp), %eax
	movl	%esi, 16(%esp)
	movl	%eax, 36(%esp)
	movzbl	63(%esp), %eax
	movl	%ebx, 4(%esp)
	movl	%eax, 12(%esp)
	movsbl	62(%esp), %eax
	movl	%eax, 8(%esp)
	movswl	60(%esp), %eax
	movl	%eax, (%esp)
	movl	56(%esp), %eax
	call	__ZL14dorotatespriteiiissacihhiiiii.lto_priv.0
	call	_videoEndDrawing
	testl	$64, %esi
	je	L1435
	testl	%edi, %edi
	jg	L1435
	testl	%ebp, %ebp
	jg	L1435
	movl	_xdim, %eax
	subl	$1, %eax
	cmpl	%eax, 48(%esp)
	jl	L1435
	movl	_ydim, %eax
	subl	$1, %eax
	cmpl	%eax, 52(%esp)
	jl	L1435
	cmpl	$10485760, 56(%esp)
	jne	L1435
	cmpl	$6553600, 64(%esp)
	jne	L1435
	cmpl	$65536, 68(%esp)
	jne	L1435
	cmpw	$0, 60(%esp)
	jne	L1435
	andl	$1, %esi
	jne	L1435
	movl	$0, __ZL8permtail.lto_priv.0
	movl	$0, __ZL8permhead.lto_priv.0
	jmp	L1435
L1442:
	call	_videoBeginDrawing
	movswl	%bx, %ebx
	movl	%ebp, 32(%esp)
	movl	68(%esp), %ecx
	movl	_guniqhudid, %eax
	movl	64(%esp), %edx
	movl	%edi, 28(%esp)
	movl	%esi, 16(%esp)
	movl	%eax, 44(%esp)
	movl	52(%esp), %eax
	movl	%ebx, 4(%esp)
	movl	%eax, 40(%esp)
	movl	48(%esp), %eax
	movl	%eax, 36(%esp)
	xorl	%eax, %eax
	movl	%eax, 24(%esp)
	movl	%eax, 20(%esp)
	movzbl	63(%esp), %eax
	movl	%eax, 12(%esp)
	movsbl	62(%esp), %eax
	movl	%eax, 8(%esp)
	movswl	60(%esp), %eax
	movl	%eax, (%esp)
	movl	56(%esp), %eax
	call	__ZL14dorotatespriteiiissacihhiiiii.lto_priv.0
	addl	$76, %esp
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
	jmp	_videoEndDrawing
	.cfi_endproc
LFE71:
	.section .rdata,"dr"
LC11:
	.ascii "divider must be != 0\0"
LC12:
	.ascii "libdivide_internal_u32_gen\0"
	.align 4
LC13:
	.ascii "libdivide.h:%d: %s(): Error: %s\12\0"
	.text
	.p2align 4
	.globl	_divideu32.part.0.lto_priv.0
	.def	_divideu32.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
_divideu32.part.0.lto_priv.0:
LFB72:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	$2, (%esp)
	call	*__imp____acrt_iob_func
	movl	$LC11, 16(%esp)
	movl	$LC12, 12(%esp)
	movl	$872, 8(%esp)
	movl	$LC13, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	call	_abort
	.cfi_endproc
LFE72:
	.globl	_divideu32.part.0.lto_priv.1
	.def	_divideu32.part.0.lto_priv.1;	.scl	2;	.type	32;	.endef
	.set	_divideu32.part.0.lto_priv.1,_divideu32.part.0.lto_priv.0
	.p2align 4
	.globl	_fix16_div
	.def	_fix16_div;	.scl	2;	.type	32;	.endef
_fix16_div:
LFB73:
	.cfi_startproc
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	testl	%edx, %edx
	je	L1471
	movl	%ebx, 24(%esp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	%esi, 28(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	negl	%eax
	cmovs	%esi, %eax
	negl	%ebx
	movl	%edi, 32(%esp)
	cmovs	%edx, %ebx
	movl	%ebp, 36(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	$0, 8(%esp)
	movl	%eax, %edi
	movl	%eax, %esi
	movl	%ebx, %ebp
	cmpl	$1048575, %ebx
	jg	L1543
L1472:
	movl	$17, %ebx
L1483:
	shrl	$4, %ebp
	subl	$4, %ebx
	testl	$15, %ebp
	jne	L1544
	cmpl	$1, %ebx
	jne	L1483
	testl	%esi, %esi
	je	L1510
	movl	__ZZ9divideu32E5lastd, %eax
	movl	%eax, (%esp)
	movl	__ZZ9divideu32E4udiv, %eax
	movl	%eax, 4(%esp)
	movzbl	__ZZ9divideu32E4udiv+4, %eax
	movb	%al, 14(%esp)
	testl	%ebp, %ebp
	je	L1485
	leal	-1(%ebp), %eax
	andl	%ebp, %eax
L1514:
	movb	$0, 15(%esp)
	testl	%eax, %eax
	jne	L1493
	movl	%esi, %edx
	jmp	L1486
	.p2align 4,,10
	.p2align 3
L1545:
	bsrl	%ebp, %eax
	movl	$31, %ecx
	movl	%ebp, (%esp)
	movl	%edx, %esi
	xorl	$31, %eax
	movb	$1, 15(%esp)
	subl	%eax, %ecx
	movb	%cl, 14(%esp)
	bsrl	%edx, %ecx
	xorl	$31, %ecx
	cmpl	%ebx, %ecx
	cmovg	%ebx, %ecx
	sall	%cl, %esi
	subl	%ecx, %ebx
L1497:
	movzbl	14(%esp), %ecx
	movl	$0, 4(%esp)
	movl	%esi, %edi
	shrl	%cl, %edi
L1499:
	movl	$-1, %eax
	movl	%ebx, %ecx
	shrl	%cl, %eax
	notl	%eax
	testl	%edi, %eax
	jne	L1492
L1546:
	movl	%esi, %eax
	xorl	%edx, %edx
	sall	%cl, %edi
	addl	%edi, 8(%esp)
	divl	%ebp
	addl	%edx, %edx
	je	L1495
	subl	$1, %ebx
	js	L1495
L1486:
	cmpl	(%esp), %ebp
	jne	L1545
	bsrl	%edx, %ecx
	movl	4(%esp), %eax
	movl	%edx, %esi
	xorl	$31, %ecx
	cmpl	%ebx, %ecx
	cmovg	%ebx, %ecx
	sall	%cl, %esi
	subl	%ecx, %ebx
	testl	%eax, %eax
	je	L1497
	movzbl	14(%esp), %ecx
	mull	%esi
	testb	$64, %cl
	jne	L1498
	shrl	%cl, %edx
	movl	$-1, %eax
	movl	%ebx, %ecx
	shrl	%cl, %eax
	movl	%edx, %edi
	notl	%eax
	testl	%edi, %eax
	je	L1546
	.p2align 4
	.p2align 3
L1492:
	cmpb	$0, 15(%esp)
	je	L1542
	movzbl	14(%esp), %eax
	movl	24(%esp), %ebx
	.cfi_restore 3
	movl	28(%esp), %esi
	.cfi_restore 6
	movl	32(%esp), %edi
	.cfi_restore 7
	movb	%al, __ZZ9divideu32E4udiv+4
	movl	4(%esp), %eax
	movl	36(%esp), %ebp
	.cfi_restore 5
	movl	%eax, __ZZ9divideu32E4udiv
	movl	(%esp), %eax
	movl	%eax, __ZZ9divideu32E5lastd
L1471:
	movl	$-2147483648, %eax
L1549:
	addl	$40, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1489:
	.cfi_def_cfa_offset 44
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	4(%esp), %eax
	movzbl	14(%esp), %ecx
	mull	%esi
	movl	%esi, %eax
	subl	%edx, %eax
	movl	%edx, %edi
	shrl	%eax
	shrl	%cl, %edi
	addl	%edx, %eax
	shrl	%cl, %eax
	andl	$64, %ecx
	cmovne	%eax, %edi
L1490:
	movl	$-1, %eax
	movl	%ebx, %ecx
	shrl	%cl, %eax
	notl	%eax
	testl	%edi, %eax
	jne	L1492
	movl	%esi, %eax
	xorl	%edx, %edx
	sall	%cl, %edi
	addl	%edi, 8(%esp)
	divl	%ebp
	movl	%edx, %esi
	addl	%esi, %esi
	je	L1495
	subl	$1, %ebx
	js	L1495
L1493:
	cmpl	(%esp), %ebp
	je	L1487
	bsrl	%ebp, %eax
	movl	$31, %ecx
	movl	$1, %edi
	xorl	$31, %eax
	subl	%eax, %ecx
	xorl	%eax, %eax
	sall	%cl, %edi
	movb	%cl, 14(%esp)
	movl	%edi, %edx
/APP
 # 477 "source/build/include/libdivide.h" 1
	divl %ebp
 # 0 "" 2
/NO_APP
	movl	%eax, (%esp)
	movl	%ebp, %eax
	subl	%edx, %eax
	cmpl	%edi, %eax
	jb	L1488
	leal	(%edx,%edx), %edi
	cmpl	%edx, %edi
	setb	%dl
	cmpl	%ebp, %edi
	setnb	%al
	orl	%eax, %edx
	movl	(%esp), %eax
	movzbl	%dl, %edx
	leal	(%edx,%eax,2), %eax
	movl	%eax, (%esp)
	movl	%ecx, %eax
	orl	$64, %eax
	movb	%al, 14(%esp)
L1488:
	movl	(%esp), %eax
	movb	$1, 15(%esp)
	movl	%ebp, (%esp)
	addl	$1, %eax
	movl	%eax, 4(%esp)
L1487:
	bsrl	%esi, %ecx
	movl	4(%esp), %edx
	xorl	$31, %ecx
	cmpl	%ecx, %ebx
	cmovle	%ebx, %ecx
	sall	%cl, %esi
	subl	%ecx, %ebx
	testl	%edx, %edx
	jne	L1489
	movzbl	14(%esp), %ecx
	movl	%esi, %edi
	shrl	%cl, %edi
	jmp	L1490
	.p2align 4,,10
	.p2align 3
L1495:
	cmpb	$0, 15(%esp)
	je	L1510
	movzbl	14(%esp), %eax
	movb	%al, __ZZ9divideu32E4udiv+4
	movl	4(%esp), %eax
	movl	%eax, __ZZ9divideu32E4udiv
	movl	(%esp), %eax
	movl	%eax, __ZZ9divideu32E5lastd
L1510:
	movl	8(%esp), %eax
	movl	20(%esp), %esi
	movl	24(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	32(%esp), %edi
	.cfi_restore 7
	addl	$1, %eax
	movl	36(%esp), %ebp
	.cfi_restore 5
	shrl	%eax
	movl	%eax, %edx
	negl	%edx
	xorl	16(%esp), %esi
	movl	28(%esp), %esi
	.cfi_restore 6
	cmovs	%edx, %eax
	addl	$40, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1498:
	.cfi_restore_state
	movl	%esi, %edi
	movzbl	14(%esp), %ecx
	subl	%edx, %edi
	shrl	%edi
	addl	%edx, %edi
	shrl	%cl, %edi
	jmp	L1499
	.p2align 4,,10
	.p2align 3
L1543:
	movl	%ebx, %eax
	shrl	$17, %eax
	leal	1(%eax), %esi
	cmpl	__ZZ9divideu32E5lastd, %esi
	je	L1547
	bsrl	%esi, %ecx
	movl	%esi, __ZZ9divideu32E5lastd
	movb	%cl, 14(%esp)
	testl	%esi, %eax
	je	L1548
	movl	$1, %edx
	xorl	%eax, %eax
	sall	%cl, %edx
	movl	%edx, (%esp)
/APP
 # 477 "source/build/include/libdivide.h" 1
	divl %esi
 # 0 "" 2
/NO_APP
	movl	%eax, 4(%esp)
	movl	%esi, %eax
	movl	%edx, 8(%esp)
	subl	%edx, %eax
	cmpl	(%esp), %eax
	jb	L1477
	movl	8(%esp), %edx
	leal	(%edx,%edx), %eax
	cmpl	%esi, %eax
	setnb	%dl
	cmpl	8(%esp), %eax
	movl	%edx, %esi
	setb	%al
	orl	%esi, %eax
	movl	4(%esp), %esi
	movzbl	%al, %eax
	leal	(%eax,%esi,2), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, %eax
	orl	$64, %eax
	movb	%al, 14(%esp)
L1477:
	movl	4(%esp), %edx
	movzbl	14(%esp), %eax
	addl	$1, %edx
	movb	%al, __ZZ9divideu32E4udiv+4
	movl	%edx, __ZZ9divideu32E4udiv
L1474:
	testl	%edx, %edx
	je	L1476
	movl	%edi, %eax
	movzbl	14(%esp), %ecx
	mull	%edx
	movl	%edi, %eax
	subl	%edx, %eax
	movl	%edx, %esi
	shrl	%eax
	shrl	%cl, %esi
	addl	%edx, %eax
	shrl	%cl, %eax
	andl	$64, %ecx
	cmove	%esi, %eax
	movl	%eax, 8(%esp)
L1479:
	movl	8(%esp), %eax
	movl	%edi, %esi
	mull	%ebx
	shrdl	$17, %edx, %eax
	subl	%eax, %esi
	jmp	L1472
	.p2align 4,,10
	.p2align 3
L1544:
	testl	%esi, %esi
	je	L1510
	movl	__ZZ9divideu32E4udiv, %edx
	movl	__ZZ9divideu32E5lastd, %eax
	movl	%edx, 4(%esp)
	movzbl	__ZZ9divideu32E4udiv+4, %edx
	movl	%eax, (%esp)
	leal	-1(%ebp), %eax
	movb	%dl, 14(%esp)
	andl	%ebp, %eax
	jmp	L1514
	.p2align 4,,10
	.p2align 3
L1548:
	movl	$0, __ZZ9divideu32E4udiv
	movb	%cl, __ZZ9divideu32E4udiv+4
L1476:
	movzbl	14(%esp), %ecx
	movl	%edi, %eax
	shrl	%cl, %eax
	movl	%eax, 8(%esp)
	jmp	L1479
	.p2align 4,,10
	.p2align 3
L1542:
	movl	24(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	28(%esp), %esi
	.cfi_restore 6
	movl	$-2147483648, %eax
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %ebp
	.cfi_restore 5
	jmp	L1549
	.p2align 4,,10
	.p2align 3
L1547:
	.cfi_restore_state
	movzbl	__ZZ9divideu32E4udiv+4, %eax
	movl	__ZZ9divideu32E4udiv, %edx
	movb	%al, 14(%esp)
	jmp	L1474
L1485:
	cmpl	$0, (%esp)
	je	L1501
	movl	$0, __ZZ9divideu32E5lastd
	call	_divideu32.part.0.lto_priv.0
L1501:
	movzbl	14(%esp), %eax
	movl	$-1, %ebp
	movl	%eax, %edx
	andl	$31, %eax
	andl	$64, %edx
	movb	%al, 15(%esp)
	movb	%dl, (%esp)
	jmp	L1508
	.p2align 4,,10
	.p2align 3
L1502:
	movl	4(%esp), %eax
	movzbl	14(%esp), %ecx
	mull	%esi
	movl	%esi, %eax
	subl	%edx, %eax
	movl	%edx, %edi
	shrl	%cl, %edi
	shrl	%eax
	movzbl	15(%esp), %ecx
	addl	%edx, %eax
	shrl	%cl, %eax
	cmpb	$0, (%esp)
	cmovne	%eax, %edi
L1503:
	movl	%ebx, %ecx
	movl	%ebp, %eax
	shrl	%cl, %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	%edi, %ecx
	jne	L1542
	movl	%esi, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%ebx, %ecx
	sall	%cl, %edi
	addl	%edi, 8(%esp)
	movl	%edx, %esi
	addl	%esi, %esi
	je	L1510
	subl	$1, %ebx
	js	L1510
L1508:
	bsrl	%esi, %ecx
	movl	4(%esp), %eax
	xorl	$31, %ecx
	cmpl	%ecx, %ebx
	cmovle	%ebx, %ecx
	sall	%cl, %esi
	subl	%ecx, %ebx
	testl	%eax, %eax
	jne	L1502
	movzbl	14(%esp), %ecx
	movl	%esi, %edi
	shrl	%cl, %edi
	jmp	L1503
	.cfi_endproc
LFE73:
	.p2align 4
	.globl	__Z26buildgl_outputDebugMessagehPKcz.constprop.0
	.def	__Z26buildgl_outputDebugMessagehPKcz.constprop.0;	.scl	2;	.type	32;	.endef
__Z26buildgl_outputDebugMessagehPKcz.constprop.0:
LFB76:
	.cfi_startproc
	testb	$4, _glinfo+28
	je	L1567
	cmpl	$2, _r_polymostDebug
	jle	L1567
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
	movl	52(%esp), %eax
	movl	%eax, (%esp)
	call	_strlen
	cmpl	$1, %eax
	jbe	L1558
	movl	$1, %ebx
	.p2align 3
	.p2align 4
	.p2align 3
L1553:
	addl	%ebx, %ebx
	cmpl	%ebx, %eax
	jg	L1553
	movl	$16, %eax
	cmpl	%eax, %ebx
	cmovl	%eax, %ebx
L1552:
	movl	__imp___vsnprintf, %ebp
	xorl	%edi, %edi
	leal	56(%esp), %esi
	jmp	L1556
	.p2align 4,,10
	.p2align 3
L1559:
	movl	52(%esp), %eax
	movl	%esi, 24(%esp)
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%edi, (%esp)
	call	*%ebp
	cmpl	%ebx, %eax
	jb	L1570
L1556:
	addl	%ebx, %ebx
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%ebx, 4(%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 40
	subl	$8, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, %edi
	testl	%eax, %eax
	jne	L1559
	testl	%ebx, %ebx
	je	L1559
	movl	%ebx, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1567:
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	ret
	.p2align 4,,10
	.p2align 3
L1570:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%edi, 20(%esp)
	movl	$-1, 16(%esp)
	movl	$37192, 12(%esp)
	movl	$0, 8(%esp)
	movl	$33361, 4(%esp)
	movl	$33354, (%esp)
	call	*_glad_glDebugMessageInsertARB
	.cfi_def_cfa_offset 24
	movl	_g_sm_heap, %ecx
	subl	$24, %esp
	.cfi_def_cfa_offset 48
	movl	%edi, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 44
	subl	$4, %esp
	.cfi_def_cfa_offset 48
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
L1558:
	.cfi_restore_state
	movl	$16, %ebx
	jmp	L1552
	.cfi_endproc
LFE76:
	.p2align 4
	.globl	__Z19buildgl_setViewportiiii
	.def	__Z19buildgl_setViewportiiii;	.scl	2;	.type	32;	.endef
__Z19buildgl_setViewportiiii:
LFB77:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	cmpl	%eax, _gl+72
	je	L1575
L1572:
	movl	24(%esp), %ebx
	movl	%eax, _gl+72
	movl	%edx, _gl+76
	movl	%ecx, _gl+80
	movl	%ebx, _gl+84
	movl	%ebx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glViewport
	.cfi_def_cfa_offset 8
	subl	$16, %esp
	.cfi_def_cfa_offset 24
L1571:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1575:
	.cfi_restore_state
	cmpl	%edx, _gl+76
	jne	L1572
	cmpl	%ecx, _gl+80
	jne	L1572
	movl	24(%esp), %ebx
	cmpl	%ebx, _gl+84
	jne	L1572
	jmp	L1571
	.cfi_endproc
LFE77:
	.p2align 4
	.globl	__Z27buildgl_resetSamplerObjectsv
	.def	__Z27buildgl_resetSamplerObjectsv;	.scl	2;	.type	32;	.endef
__Z27buildgl_resetSamplerObjectsv:
LFB78:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	_glanisotropy, %edx
	movl	$1, %eax
	movl	%ebx, 12(%esp)
	cmpl	$1, %edx
	.cfi_offset 3, -16
	jle	L1577
	cvttss2sil	_glinfo+16, %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
L1577:
	movl	_gltexfiltermode, %ebx
	movl	%eax, _glanisotropy
	movl	$5, %eax
	cmpl	%eax, %ebx
	cmovg	%eax, %ebx
	xorl	%eax, %eax
	testl	%ebx, %ebx
	cmovs	%eax, %ebx
	movl	%ebx, _gltexfiltermode
	testb	$8, _glinfo+29
	je	L1576
	movl	_samplerObjectIDs+4, %eax
	movl	%esi, 16(%esp)
	movl	%edi, 20(%esp)
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movl	%eax, (%esp)
	call	*_glad_glIsSampler
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	testb	%al, %al
	je	L1598
L1579:
	leal	(%ebx,%ebx,2), %eax
	movl	$1, %ebx
	leal	_glfiltermodes(,%eax,4), %esi
	movl	8(%esi), %edi
	jmp	L1587
	.p2align 4,,10
	.p2align 3
L1594:
	movss	_glinfo+16, %xmm2
	movaps	%xmm2, %xmm0
	cmpnless	%xmm1, %xmm0
	andps	%xmm0, %xmm1
	andnps	%xmm2, %xmm0
	orps	%xmm1, %xmm0
L1584:
	movl	$34046, 4(%esp)
	movss	%xmm0, 8(%esp)
	movl	_samplerObjectIDs(,%ebx,4), %edx
	addl	$1, %ebx
	movl	%edx, (%esp)
	call	*%eax
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	cmpl	$12, %ebx
	je	L1599
L1587:
	movl	%edi, 8(%esp)
	movl	$10240, 4(%esp)
	movl	_samplerObjectIDs(,%ebx,4), %eax
	movl	%eax, (%esp)
	call	*_glad_glSamplerParameteri
	.cfi_def_cfa_offset 16
	movl	4(%esi), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, 8(%esp)
	movl	$10241, 4(%esp)
	movl	_samplerObjectIDs(,%ebx,4), %eax
	movl	%eax, (%esp)
	call	*_glad_glSamplerParameteri
	.cfi_def_cfa_offset 16
	movl	_glad_glSamplerParameterf, %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	cmpl	$3, _rendmode
	je	L1600
L1580:
	movss	LC14, %xmm3
	xorps	%xmm1, %xmm1
	cvtsi2ssl	_glanisotropy, %xmm1
	comiss	%xmm1, %xmm3
	jb	L1594
	movss	LC14, %xmm0
	jmp	L1584
	.p2align 4,,10
	.p2align 3
L1600:
	movl	_r_useindexedcolortextures, %ecx
	testl	%ecx, %ecx
	je	L1580
	movl	_gltexfiltermode, %edx
	testl	%edx, %edx
	jne	L1580
	movss	LC14, %xmm0
	jmp	L1584
	.p2align 4,,10
	.p2align 3
L1599:
	movl	_samplerObjectIDs+28, %ebx
	movl	$33071, 8(%esp)
	movl	$10242, 4(%esp)
	movl	%ebx, (%esp)
	call	*_glad_glSamplerParameteri
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, (%esp)
	movl	$33071, 8(%esp)
	movl	$10243, 4(%esp)
	call	*_glad_glSamplerParameteri
	.cfi_def_cfa_offset 16
	movl	_samplerObjectIDs+32, %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, (%esp)
	movl	$33071, 8(%esp)
	movl	$10242, 4(%esp)
	call	*_glad_glSamplerParameteri
	.cfi_def_cfa_offset 16
	movl	_samplerObjectIDs+36, %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, (%esp)
	movl	$33071, 8(%esp)
	movl	$10243, 4(%esp)
	call	*_glad_glSamplerParameteri
	.cfi_def_cfa_offset 16
	movl	_samplerObjectIDs+4, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, (%esp)
	movl	$9728, 8(%esp)
	movl	$10240, 4(%esp)
	call	*_glad_glSamplerParameteri
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, (%esp)
	movl	$9728, 8(%esp)
	movl	$10241, 4(%esp)
	call	*_glad_glSamplerParameteri
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, (%esp)
	movl	$33071, 8(%esp)
	movl	$10242, 4(%esp)
	call	*_glad_glSamplerParameteri
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, (%esp)
	movl	$33071, 8(%esp)
	movl	$10243, 4(%esp)
	call	*_glad_glSamplerParameteri
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, (%esp)
	movl	$1, 8(%esp)
	movl	$34046, 4(%esp)
	call	*_glad_glSamplerParameteri
	.cfi_def_cfa_offset 16
	movl	_samplerObjectIDs+8, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, (%esp)
	movl	$9728, 8(%esp)
	movl	$10240, 4(%esp)
	call	*_glad_glSamplerParameteri
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, (%esp)
	movl	$9728, 8(%esp)
	movl	$10241, 4(%esp)
	call	*_glad_glSamplerParameteri
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, (%esp)
	movl	$1, 8(%esp)
	movl	$34046, 4(%esp)
	call	*_glad_glSamplerParameteri
	.cfi_def_cfa_offset 16
	movl	_samplerObjectIDs+12, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, (%esp)
	movl	$9729, 8(%esp)
	movl	$10240, 4(%esp)
	call	*_glad_glSamplerParameteri
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, (%esp)
	movl	$9987, 8(%esp)
	movl	$10241, 4(%esp)
	call	*_glad_glSamplerParameteri
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, (%esp)
	movl	$33071, 8(%esp)
	movl	$10242, 4(%esp)
	call	*_glad_glSamplerParameteri
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, (%esp)
	movl	$33071, 8(%esp)
	movl	$10243, 4(%esp)
	call	*_glad_glSamplerParameteri
	.cfi_def_cfa_offset 16
	movl	_samplerObjectIDs+16, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, (%esp)
	movl	$9729, 8(%esp)
	movl	$10240, 4(%esp)
	call	*_glad_glSamplerParameteri
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, (%esp)
	movl	$9987, 8(%esp)
	movl	$10241, 4(%esp)
	call	*_glad_glSamplerParameteri
	.cfi_def_cfa_offset 16
	movl	_samplerObjectIDs+20, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, (%esp)
	movl	$9728, 8(%esp)
	movl	$10240, 4(%esp)
	call	*_glad_glSamplerParameteri
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, (%esp)
	movl	$9984, 8(%esp)
	movl	$10241, 4(%esp)
	call	*_glad_glSamplerParameteri
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, (%esp)
	movl	$33071, 8(%esp)
	movl	$10242, 4(%esp)
	call	*_glad_glSamplerParameteri
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, (%esp)
	movl	$33071, 8(%esp)
	movl	$10243, 4(%esp)
	call	*_glad_glSamplerParameteri
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, (%esp)
	movl	$1, 8(%esp)
	movl	$34046, 4(%esp)
	call	*_glad_glSamplerParameteri
	.cfi_def_cfa_offset 16
	movl	_samplerObjectIDs+24, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, (%esp)
	movl	$9728, 8(%esp)
	movl	$10240, 4(%esp)
	call	*_glad_glSamplerParameteri
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, (%esp)
	movl	$9984, 8(%esp)
	movl	$10241, 4(%esp)
	call	*_glad_glSamplerParameteri
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, (%esp)
	movl	$1, 8(%esp)
	movl	$34046, 4(%esp)
	call	*_glad_glSamplerParameteri
	.cfi_def_cfa_offset 16
	movl	_samplerObjectIDs+44, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	$34894, 8(%esp)
	movl	$34892, 4(%esp)
	movl	%ebx, (%esp)
	call	*_glad_glSamplerParameteri
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	$515, 8(%esp)
	movl	$34893, 4(%esp)
	movl	%ebx, (%esp)
	call	*_glad_glSamplerParameteri
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	20(%esp), %edi
	.cfi_restore 7
L1576:
	movl	12(%esp), %ebx
	addl	$24, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1598:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movl	$_samplerObjectIDs+4, 4(%esp)
	movl	$11, (%esp)
	call	*_glad_glGenSamplers
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	jmp	L1579
	.cfi_endproc
LFE78:
	.p2align 4
	.globl	__Z25buildgl_bindSamplerObjectii
	.def	__Z25buildgl_bindSamplerObjectii;	.scl	2;	.type	32;	.endef
__Z25buildgl_bindSamplerObjectii:
LFB79:
	.cfi_startproc
	testb	$8, _glinfo+29
	je	L1602
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	_r_usesamplerobjects, %ecx
	testl	%ecx, %ecx
	je	L1603
	andl	$49731, %edx
	cmpl	$67, %edx
	je	L1611
	jg	L1605
	cmpl	$2, %edx
	je	L1612
	jle	L1629
	cmpl	$3, %edx
	je	L1613
	cmpl	$66, %edx
	sete	%dl
	movzbl	%dl, %edx
	leal	2(%edx,%edx), %edx
	jmp	L1604
	.p2align 4,,10
	.p2align 3
L1602:
	.cfi_def_cfa_offset 4
	movl	$0, _gl+8(,%eax,4)
	ret
	.p2align 4,,10
	.p2align 3
L1603:
	.cfi_def_cfa_offset 12
	movl	$0, _gl+8(,%eax,4)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glBindSampler
	.cfi_def_cfa_offset 4
	subl	$8, %esp
	.cfi_def_cfa_offset 12
L1601:
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1605:
	.cfi_restore_state
	cmpl	$16384, %edx
	je	L1615
	jg	L1608
	cmpl	$512, %edx
	jne	L1630
	xorl	%edx, %edx
	cmpl	$4, _rendmode
	setne	%dl
	leal	2(,%edx,4), %edx
	.p2align 4
	.p2align 3
L1604:
	cmpl	%edx, _gl+8(,%eax,4)
	je	L1601
	movl	%edx, _gl+8(,%eax,4)
	movl	_samplerObjectIDs(,%edx,4), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	*_glad_glBindSampler
	.cfi_def_cfa_offset 4
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1608:
	.cfi_restore_state
	cmpl	$32768, %edx
	movl	$8, %ecx
	movl	$2, %edx
	cmove	%ecx, %edx
	jmp	L1604
	.p2align 4,,10
	.p2align 3
L1613:
	movl	$7, %edx
	jmp	L1604
	.p2align 4,,10
	.p2align 3
L1629:
	testl	%edx, %edx
	je	L1604
L1607:
	xorl	%edx, %edx
	cmpl	$4, _rendmode
	setne	%dl
	leal	1(,%edx,4), %edx
	jmp	L1604
	.p2align 4,,10
	.p2align 3
L1612:
	movl	$10, %edx
	jmp	L1604
	.p2align 4,,10
	.p2align 3
L1615:
	movl	$11, %edx
	jmp	L1604
	.p2align 4,,10
	.p2align 3
L1611:
	movl	$3, %edx
	jmp	L1604
	.p2align 4,,10
	.p2align 3
L1630:
	cmpl	$513, %edx
	je	L1607
	movl	$2, %edx
	jmp	L1604
	.cfi_endproc
LFE79:
	.p2align 4
	.globl	__Z22buildgl_setPerspectiveffff
	.def	__Z22buildgl_setPerspectiveffff;	.scl	2;	.type	32;	.endef
__Z22buildgl_setPerspectiveffff:
LFB81:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	leal	-72(%ebp), %eax
	leal	-76(%ebp), %edx
	subl	$100, %esp
	.cfi_offset 7, -12
	movss	8(%ebp), %xmm3
	movss	%xmm1, -84(%ebp)
	mulss	LC15, %xmm0
	movl	%edx, 8(%esp)
	movaps	%xmm3, %xmm4
	movl	%eax, 4(%esp)
	subss	%xmm2, %xmm4
	movss	%xmm3, -92(%ebp)
	movss	%xmm2, -88(%ebp)
	movss	%xmm0, (%esp)
	movss	%xmm4, -80(%ebp)
	call	_sincosf
	movss	-80(%ebp), %xmm4
	xorps	%xmm0, %xmm0
	movss	-84(%ebp), %xmm1
	movl	$0, %ecx
	movss	-76(%ebp), %xmm6
	movss	-72(%ebp), %xmm5
	ucomiss	%xmm0, %xmm4
	setnp	%al
	cmovne	%ecx, %eax
	ucomiss	%xmm0, %xmm1
	setnp	%dl
	cmovne	%ecx, %edx
	orb	%dl, %al
	jne	L1631
	ucomiss	%xmm0, %xmm5
	movss	-88(%ebp), %xmm2
	movss	-92(%ebp), %xmm3
	setnp	%dl
	cmove	%edx, %eax
	testb	%al, %al
	je	L1637
L1631:
	movl	-4(%ebp), %edi
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L1637:
	.cfi_restore_state
	divss	%xmm5, %xmm6
	xorl	%eax, %eax
L1633:
	movl	$0, -64(%ebp,%eax)
	movl	$0, -60(%ebp,%eax)
	movl	$0, -56(%ebp,%eax)
	movl	$0, -52(%ebp,%eax)
	addl	$16, %eax
	cmpl	$48, %eax
	jb	L1633
	movaps	%xmm6, %xmm0
	movl	$0, -64(%ebp,%eax)
	movss	LC14, %xmm5
	movl	$0, -60(%ebp,%eax)
	movl	$0, -56(%ebp,%eax)
	leal	-68(%ebp), %eax
	movl	$0xbf800000, -24(%ebp)
	movss	%xmm6, -48(%ebp)
	movl	%eax, (%esp)
	divss	%xmm1, %xmm0
	divss	%xmm4, %xmm5
	movss	%xmm0, -68(%ebp)
	movaps	%xmm3, %xmm0
	addss	%xmm2, %xmm0
	xorps	LC16, %xmm0
	mulss	LC18, %xmm2
	mulss	%xmm3, %xmm2
	mulss	%xmm5, %xmm0
	mulss	%xmm5, %xmm2
	movss	%xmm0, -28(%ebp)
	movss	%xmm2, -12(%ebp)
	call	*_glad_glMultMatrixf
	movl	-4(%ebp), %edi
	subl	$4, %esp
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE81:
	.section .rdata,"dr"
LC19:
	.ascii "Compile Status: %u\12\0"
LC20:
	.ascii "Log:\12%s\12\0"
	.text
	.p2align 4
	.globl	__ZL13compileShaderjPKc.lto_priv.0
	.def	__ZL13compileShaderjPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL13compileShaderjPKc.lto_priv.0:
LFB82:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$32, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, (%esp)
	call	*_glad_glCreateShader
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1638
	leal	24(%esp), %eax
	movl	%esi, 24(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 12(%esp)
	movl	$1, 4(%esp)
	movl	%ebx, (%esp)
	call	*_glad_glShaderSource
	.cfi_def_cfa_offset 28
	subl	$16, %esp
	.cfi_def_cfa_offset 44
	movl	%ebx, (%esp)
	call	*_glad_glCompileShader
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	leal	20(%esp), %eax
	movl	$35713, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, (%esp)
	call	*_glad_glGetShaderiv
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	movl	20(%esp), %eax
	testl	%eax, %eax
	jne	L1638
	leal	28(%esp), %eax
	movl	$35716, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, (%esp)
	call	*_glad_glGetShaderiv
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	movl	20(%esp), %eax
	movl	$LC19, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	movl	28(%esp), %esi
	testl	%esi, %esi
	jg	L1646
L1638:
	addl	$32, %esp
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
L1646:
	.cfi_restore_state
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	testl	%eax, %eax
	je	L1641
	movl	%eax, 12(%esp)
	movl	%eax, 16(%esp)
	leal	28(%esp), %eax
	movl	%eax, 8(%esp)
	movl	28(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glGetShaderInfoLog
	.cfi_def_cfa_offset 28
	subl	$16, %esp
	.cfi_def_cfa_offset 44
	movl	16(%esp), %edx
	movl	$LC20, (%esp)
	movl	%edx, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	movl	16(%esp), %edx
	movl	_g_sm_heap, %ecx
	movl	%edx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 40
	movl	%ebx, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 44
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
L1641:
	.cfi_restore_state
	movl	%esi, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE82:
	.p2align 4
	.globl	__Z17glsurface_destroyv
	.def	__Z17glsurface_destroyv;	.scl	2;	.type	32;	.endef
__Z17glsurface_destroyv:
LFB83:
	.cfi_startproc
	movl	__ZL6buffer.lto_priv.0, %eax
	testl	%eax, %eax
	je	L1653
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	$0, __ZL6buffer.lto_priv.0
	movl	$__ZL11quadVertsID.lto_priv.0, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glDeleteBuffers
	.cfi_def_cfa_offset 4
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	$0, __ZL11quadVertsID.lto_priv.0
	movl	$0, (%esp)
	call	*_glad_glDisableVertexAttribArray
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	$1, (%esp)
	call	*_glad_glDisableVertexAttribArray
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	$__ZL11bufferTexID.lto_priv.0, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glDeleteTextures
	.cfi_def_cfa_offset 4
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	$0, __ZL11bufferTexID.lto_priv.0
	movl	$__ZL12paletteTexID, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glDeleteTextures
	.cfi_def_cfa_offset 4
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	$0, __ZL12paletteTexID
	movl	$0, (%esp)
	call	*_glad_glUseProgram
	.cfi_def_cfa_offset 8
	movl	__ZL15shaderProgramID.lto_priv.0, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	$0, _gl
	movl	%eax, (%esp)
	call	*_glad_glDeleteProgram
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	$0, __ZL15shaderProgramID.lto_priv.0
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1653:
	ret
	.cfi_endproc
LFE83:
	.p2align 4
	.globl	_hash_init
	.def	_hash_init;	.scl	2;	.type	32;	.endef
_hash_init:
LFB85:
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
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L1657
	movl	(%ebx), %edx
	leal	-1(%edx), %ebp
	.p2align 4
	.p2align 3
L1660:
	movl	(%eax,%ebp,4), %esi
	testl	%esi, %esi
	je	L1658
	.p2align 4
	.p2align 3
L1659:
	movl	%esi, %edi
	movl	8(%esi), %esi
	movl	_g_sm_heap, %ecx
	movl	(%edi), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 40
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	movl	%edi, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	testl	%esi, %esi
	jne	L1659
	movl	12(%ebx), %eax
L1658:
	subl	$1, %ebp
	jns	L1660
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	movl	$0, 12(%ebx)
L1657:
	movl	(%ebx), %eax
	xorl	%edx, %edx
	call	__ZL14hash_findprimey
	movl	%eax, (%ebx)
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1678
	bsrl	%eax, %ecx
	leal	-1(%eax), %eax
	movl	%ecx, %edi
	andl	%esi, %eax
	je	L1662
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, %ebp
	xorl	%eax, %eax
	movl	%ebp, %edx
/APP
 # 477 "source/build/include/libdivide.h" 1
	divl %esi
 # 0 "" 2
/NO_APP
	movl	%eax, 20(%esp)
	movl	%esi, %eax
	subl	%edx, %eax
	cmpl	%ebp, %eax
	jb	L1663
	leal	(%edx,%edx), %edi
	cmpl	%edx, %edi
	setb	%dl
	cmpl	%esi, %edi
	movl	%ecx, %edi
	setnb	%al
	orl	$64, %edi
	orl	%eax, %edx
	movl	20(%esp), %eax
	movzbl	%dl, %edx
	leal	(%edx,%eax,2), %eax
	movl	%eax, 20(%esp)
L1663:
	movl	20(%esp), %eax
	addl	$1, %eax
L1662:
	leal	(%esi,%esi,2), %esi
	movl	%eax, 4(%ebx)
	movl	%edi, %eax
	movl	_g_sm_heap, %ecx
	sall	$2, %esi
	movb	%al, 8(%ebx)
	movl	$16, 4(%esp)
	movl	%esi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj
	.cfi_def_cfa_offset 36
	subl	$8, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1664
	movl	%esi, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	%edi, 12(%ebx)
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
L1664:
	.cfi_restore_state
	movl	$12, %eax
	call	__Z13handle_memerri
L1678:
	movl	$2, (%esp)
	call	*__imp____acrt_iob_func
	movl	$LC11, 16(%esp)
	movl	$LC12, 12(%esp)
	movl	$872, 8(%esp)
	movl	$LC13, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	call	_abort
	.cfi_endproc
LFE85:
	.p2align 4
	.globl	_hash_add
	.def	_hash_add;	.scl	2;	.type	32;	.endef
_hash_add:
LFB87:
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
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	$5381, %ebx
	subl	$20, %esp
	.cfi_def_cfa_offset 40
	movl	__imp__tolower, %ebp
	movl	%eax, 8(%esp)
	movl	%ecx, 12(%esp)
	jmp	L1680
	.p2align 4,,10
	.p2align 3
L1681:
	movl	%ebx, %eax
	addl	$1, %edi
	sall	$5, %eax
	addl	%eax, %ebx
	xorl	%edx, %ebx
L1680:
	movzbl	(%edi), %eax
	movl	%eax, (%esp)
	call	*%ebp
	movl	%eax, %edx
	testl	%eax, %eax
	jne	L1681
	movl	8(%esp), %eax
	movzbl	8(%eax), %ecx
	movl	4(%eax), %edx
	movl	%ebx, %eax
	shrl	%cl, %eax
	testl	%edx, %edx
	je	L1683
	movl	%edx, %eax
	movl	%ebx, %ebp
	mull	%ebx
	subl	%edx, %ebp
	movl	%edx, %eax
	shrl	%ebp
	shrl	%cl, %eax
	addl	%ebp, %edx
	shrl	%cl, %edx
	andl	$64, %ecx
	cmovne	%edx, %eax
L1683:
	movl	8(%esp), %ecx
	imull	(%ecx), %eax
	subl	%eax, %ebx
	movl	12(%ecx), %eax
	movl	(%eax,%ebx,4), %ebp
	testl	%ebp, %ebp
	jne	L1685
	jmp	L1706
	.p2align 4,,10
	.p2align 3
L1690:
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	L1707
	movl	%eax, %ebp
L1685:
	movl	0(%ebp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L1690
	movl	40(%esp), %eax
	testl	%eax, %eax
	je	L1679
	movl	12(%esp), %eax
	movl	%eax, 4(%ebp)
L1679:
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
L1707:
	.cfi_restore_state
	movl	$16, 4(%esp)
	movl	_g_sm_heap, %ecx
	movl	$12, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj
	.cfi_def_cfa_offset 32
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1686
	movl	%esi, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %edx
	movl	%eax, %edi
	movl	%edx, (%esp)
	movl	%edx, 8(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 36
	subl	$4, %esp
	.cfi_def_cfa_offset 40
	testl	%eax, %eax
	je	L1691
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 8(%esp)
	call	_strcpy
	movl	8(%esp), %ecx
	movl	12(%esp), %eax
	movb	$0, (%ecx,%edi)
	movl	%ecx, (%ebx)
	movl	%eax, 4(%ebx)
	movl	$0, 8(%ebx)
	movl	%ebx, 8(%ebp)
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
L1706:
	.cfi_restore_state
	movl	$16, 4(%esp)
	movl	_g_sm_heap, %ecx
	movl	$12, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj
	.cfi_def_cfa_offset 32
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	movl	%eax, %ebp
	testl	%eax, %eax
	je	L1686
	movl	%esi, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	movl	%eax, %edi
	leal	1(%eax), %eax
	movl	%eax, (%esp)
	movl	%eax, 16(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 36
	subl	$4, %esp
	.cfi_def_cfa_offset 40
	testl	%eax, %eax
	je	L1708
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 16(%esp)
	call	_strcpy
	movl	16(%esp), %ecx
	movl	12(%esp), %eax
	movb	$0, (%ecx,%edi)
	movl	%eax, 4(%ebp)
	movl	8(%esp), %eax
	movl	%ecx, 0(%ebp)
	movl	$0, 8(%ebp)
	movl	12(%eax), %eax
	movl	%ebp, (%eax,%ebx,4)
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
L1686:
	.cfi_restore_state
	movl	$12, %eax
	call	__Z13handle_memerri
L1691:
	movl	8(%esp), %eax
	call	__Z13handle_memerri
L1708:
	movl	16(%esp), %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE87:
	.p2align 4
	.globl	_hash_find
	.def	_hash_find;	.scl	2;	.type	32;	.endef
_hash_find:
LFB89:
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
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	$5381, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 36
	movl	__imp__tolower, %edi
	movl	%eax, 8(%esp)
	movl	12(%eax), %eax
	movl	%eax, 12(%esp)
	jmp	L1710
	.p2align 4,,10
	.p2align 3
L1711:
	movl	%ebx, %eax
	addl	$1, %ebp
	sall	$5, %eax
	addl	%eax, %ebx
	xorl	%edx, %ebx
L1710:
	movzbl	0(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edi
	movl	%eax, %edx
	testl	%eax, %eax
	jne	L1711
	movl	8(%esp), %eax
	movzbl	8(%eax), %ecx
	movl	4(%eax), %edx
	movl	%ebx, %eax
	shrl	%cl, %eax
	testl	%edx, %edx
	je	L1713
	movl	%edx, %eax
	movl	%ebx, %edi
	mull	%ebx
	subl	%edx, %edi
	movl	%edx, %eax
	shrl	%edi
	shrl	%cl, %eax
	addl	%edi, %edx
	shrl	%cl, %edx
	andl	$64, %ecx
	cmovne	%edx, %eax
L1713:
	movl	8(%esp), %ecx
	imull	(%ecx), %eax
	subl	%eax, %ebx
	movl	12(%esp), %eax
	movl	(%eax,%ebx,4), %ebx
	testl	%ebx, %ebx
	jne	L1715
	jmp	L1718
	.p2align 4,,10
	.p2align 3
L1717:
	movl	8(%ebx), %ebx
	testl	%ebx, %ebx
	je	L1718
L1715:
	movl	(%ebx), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L1717
	movl	4(%ebx), %eax
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
L1718:
	.cfi_restore_state
	addl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	$-1, %eax
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
LFE89:
	.p2align 4
	.globl	_hash_findcase.constprop.0
	.def	_hash_findcase.constprop.0;	.scl	2;	.type	32;	.endef
_hash_findcase.constprop.0:
LFB91:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$5381, %ebp
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
	movl	%esi, %edi
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	__ZL7h_cvars.lto_priv.0+12, %eax
	movl	__imp__tolower, %ebx
	movl	%eax, 8(%esp)
	jmp	L1724
	.p2align 4,,10
	.p2align 3
L1725:
	movl	%ebp, %eax
	addl	$1, %edi
	sall	$5, %eax
	addl	%ebp, %eax
	xorl	%eax, %ecx
	movl	%ecx, %ebp
L1724:
	movzbl	(%edi), %eax
	movl	%eax, (%esp)
	call	*%ebx
	movl	%eax, %ecx
	testl	%eax, %eax
	jne	L1725
	movzbl	__ZL7h_cvars.lto_priv.0+8, %ecx
	movl	__ZL7h_cvars.lto_priv.0+4, %edx
	movl	%ebp, %eax
	shrl	%cl, %eax
	testl	%edx, %edx
	je	L1727
	movl	%edx, %eax
	movl	%ebp, %ebx
	mull	%ebp
	subl	%edx, %ebx
	movl	%edx, %eax
	shrl	%ebx
	shrl	%cl, %eax
	addl	%ebx, %edx
	shrl	%cl, %edx
	andl	$64, %ecx
	cmovne	%edx, %eax
L1727:
	imull	__ZL7h_cvars.lto_priv.0, %eax
	subl	%eax, %ebp
	movl	8(%esp), %eax
	movl	(%eax,%ebp,4), %ebx
	testl	%ebx, %ebx
	jne	L1729
	jmp	L1732
	.p2align 4,,10
	.p2align 3
L1731:
	movl	8(%ebx), %ebx
	testl	%ebx, %ebx
	je	L1732
L1729:
	movl	(%ebx), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L1731
	movl	4(%ebx), %eax
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
L1732:
	.cfi_restore_state
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	movl	$-1, %eax
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
LFE91:
	.p2align 4
	.globl	_inthash_init
	.def	_inthash_init;	.scl	2;	.type	32;	.endef
_inthash_init:
LFB92:
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
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	movl	(%eax), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 40
	movl	4(%esi), %eax
	xorl	%edx, %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	movl	$0, (%esi)
	call	__ZL14hash_findprimey
	movl	%eax, 4(%esi)
	testl	%eax, %eax
	je	L1746
	bsrl	%eax, %ebp
	movl	%eax, %ebx
	leal	-1(%eax), %eax
	movl	%ebp, %edi
	andl	%ebx, %eax
	je	L1738
	movl	%ebp, %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
	movl	%ecx, %edx
/APP
 # 477 "source/build/include/libdivide.h" 1
	divl %ebx
 # 0 "" 2
/NO_APP
	movl	%eax, 20(%esp)
	movl	%ebx, %eax
	subl	%edx, %eax
	cmpl	%ecx, %eax
	jb	L1739
	leal	(%edx,%edx), %ecx
	movl	20(%esp), %eax
	cmpl	%edx, %ecx
	setb	%dl
	cmpl	%ebx, %ecx
	setnb	%cl
	orl	$64, %edi
	orl	%ecx, %edx
	movzbl	%dl, %edx
	leal	(%edx,%eax,2), %eax
	movl	%eax, 20(%esp)
L1739:
	movl	20(%esp), %eax
	addl	$1, %eax
L1738:
	leal	(%ebx,%ebx,2), %ebx
	movl	%eax, 8(%esi)
	movl	%edi, %eax
	movl	_g_sm_heap, %ecx
	sall	$2, %ebx
	movb	%al, 12(%esi)
	movl	$16, 4(%esp)
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj
	.cfi_def_cfa_offset 36
	subl	$8, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1740
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	%edi, (%esi)
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
L1740:
	.cfi_restore_state
	movl	$12, %eax
	call	__Z13handle_memerri
L1746:
	movl	$2, (%esp)
	call	*__imp____acrt_iob_func
	movl	$LC11, 16(%esp)
	movl	$LC12, 12(%esp)
	movl	$872, 8(%esp)
	movl	$LC13, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	call	_abort
	.cfi_endproc
LFE92:
	.p2align 4
	.globl	__Z28buildgl_resetStateAccountingv
	.def	__Z28buildgl_resetStateAccountingv;	.scl	2;	.type	32;	.endef
__Z28buildgl_resetStateAccountingv:
LFB93:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	xorl	%ebx, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 24
	.p2align 4
	.p2align 3
L1748:
	movl	%ebx, %esi
	movl	%ebx, %eax
	xorl	%edx, %edx
	addl	$1, %ebx
	call	__Z25buildgl_bindSamplerObjectii
	sall	$4, %esi
	movl	_g_sm_heap, %ecx
	movl	_gl+88(%esi), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	$0, _gl+88(%esi)
	cmpl	$16, %ebx
	jne	L1748
	movl	$348, 8(%esp)
	movl	$_gl+88, %esi
	movl	$33984, %ebx
	movl	$0, 4(%esp)
	movl	$_gl, (%esp)
	call	_memset
	.p2align 4
	.p2align 3
L1749:
	movl	$-1, _gl-135928(,%ebx,4)
	movl	%esi, %eax
	addl	$1, %ebx
	addl	$16, %esi
	movl	$64, -12(%esi)
	call	_inthash_init
	cmpl	$34000, %ebx
	jne	L1749
	movl	$1, _gl+344
	addl	$12, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE93:
	.section .rdata,"dr"
LC21:
	.ascii "inthash_add\0"
LC22:
	.ascii "inthash_add(): table full!\0"
	.align 4
LC23:
	.ascii "fatal_exit(%s) at %s:%d in %s()\12\0"
	.text
	.p2align 4
	.globl	_inthash_add
	.def	_inthash_add;	.scl	2;	.type	32;	.endef
_inthash_add:
LFB95:
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
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	$5381, %ebx
	subl	$40, %esp
	.cfi_def_cfa_offset 60
	movl	(%eax), %edi
	movl	%ecx, 28(%esp)
	leal	36(%esp), %eax
	movl	%edx, 36(%esp)
L1754:
	movl	%ebx, %edx
	addl	$1, %eax
	leal	40(%esp), %ecx
	sall	$5, %edx
	addl	%edx, %ebx
	movzbl	-1(%eax), %edx
	xorl	%edx, %ebx
	cmpl	%ecx, %eax
	jne	L1754
	movl	8(%ebp), %eax
	movzbl	12(%ebp), %ecx
	movl	%eax, 20(%esp)
	testl	%eax, %eax
	je	L1796
	movl	20(%esp), %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	%cl, %eax
	movl	%eax, 24(%esp)
	movl	%ebx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%eax, %edx
	shrl	%cl, %edx
	testb	$64, %cl
	cmove	24(%esp), %edx
	movl	%edx, 24(%esp)
L1756:
	movl	4(%ebp), %edx
	movl	24(%esp), %eax
	imull	%edx, %eax
	movl	%edx, 32(%esp)
	subl	%eax, %ebx
	leal	(%ebx,%ebx,2), %eax
	leal	(%edi,%eax,4), %ebp
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	L1797
	cmpl	%esi, 0(%ebp)
	jne	L1760
	jmp	L1798
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1762:
	cmpl	%esi, (%eax)
	je	L1761
	movl	%eax, %ebp
	movl	8(%eax), %eax
L1760:
	cmpl	%eax, %ebp
	jne	L1762
	movl	28(%esp), %eax
	movl	%esi, %edx
	movl	%ebp, %ebx
	movl	%eax, 24(%esp)
	movl	20(%esp), %eax
	testl	%eax, %eax
	je	L1771
	testb	$64, %cl
	jne	L1772
	movl	%edx, 28(%esp)
	movl	32(%esp), %esi
	jmp	L1766
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1799:
	cmpl	%ebx, %ebp
	je	L1795
L1766:
	subl	%edi, %ebx
	movl	20(%esp), %eax
	sarl	$2, %ebx
	imull	$-1431655765, %ebx, %ebx
	addl	$1, %ebx
	mull	%ebx
	shrl	%cl, %edx
	imull	%esi, %edx
	subl	%edx, %ebx
	leal	(%ebx,%ebx,2), %eax
	leal	(%edi,%eax,4), %ebx
	movl	8(%ebx), %eax
	testl	%eax, %eax
	jne	L1799
L1792:
	movl	28(%esp), %edx
L1765:
	cmpl	%ebx, %ebp
	je	L1767
L1768:
	movl	24(%esp), %eax
	movl	%edx, (%ebx)
	movl	%eax, 4(%ebx)
	movl	%ebx, 8(%ebp)
	movl	%ebx, 8(%ebx)
L1753:
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
L1796:
	.cfi_restore_state
	movl	%ebx, %eax
	shrl	%cl, %eax
	movl	%eax, 24(%esp)
	jmp	L1756
	.p2align 4,,10
	.p2align 3
L1761:
	movl	60(%esp), %edx
	testl	%edx, %edx
	je	L1753
	movl	28(%esp), %edi
	movl	%edi, 4(%eax)
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
L1772:
	.cfi_restore_state
	movl	%edx, 28(%esp)
	movl	32(%esp), %esi
	andl	$31, %ecx
	jmp	L1764
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1800:
	cmpl	%ebx, %ebp
	je	L1795
L1764:
	subl	%edi, %ebx
	movl	20(%esp), %eax
	sarl	$2, %ebx
	imull	$-1431655765, %ebx, %ebx
	addl	$1, %ebx
	mull	%ebx
	movl	%ebx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%eax, %edx
	shrl	%cl, %edx
	imull	%esi, %edx
	subl	%edx, %ebx
	leal	(%ebx,%ebx,2), %eax
	leal	(%edi,%eax,4), %ebx
	movl	8(%ebx), %eax
	testl	%eax, %eax
	jne	L1800
	jmp	L1792
	.p2align 4,,10
	.p2align 3
L1797:
	movl	28(%esp), %eax
	movl	%esi, 0(%ebp)
	movl	%ebp, 8(%ebp)
	movl	%eax, 4(%ebp)
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
L1798:
	.cfi_restore_state
	movl	60(%esp), %ecx
	testl	%ecx, %ecx
	je	L1753
	movl	28(%esp), %eax
	movl	%eax, 4(%ebp)
	jmp	L1753
	.p2align 4,,10
	.p2align 3
L1771:
	movl	32(%esp), %esi
	.p2align 6
	.p2align 4
	.p2align 3
L1763:
	subl	%edi, %ebx
	sarl	$2, %ebx
	imull	$-1431655765, %ebx, %eax
	addl	$1, %eax
	movl	%eax, %ebx
	shrl	%cl, %ebx
	imull	%esi, %ebx
	subl	%ebx, %eax
	leal	(%eax,%eax,2), %eax
	leal	(%edi,%eax,4), %ebx
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	L1765
	cmpl	%ebx, %ebp
	jne	L1763
	jmp	L1767
	.p2align 4,,10
	.p2align 3
L1795:
	movl	28(%esp), %edx
L1767:
	movl	$LC21, 16(%esp)
	movl	$263, 12(%esp)
	movl	$LC3, 8(%esp)
	movl	$LC22, 4(%esp)
	movl	$LC23, (%esp)
	movl	%edx, 20(%esp)
	call	_initprintf
	movl	_g_sm_heap, %eax
	movl	20(%esp), %edx
	testl	%eax, %eax
	je	L1769
	call	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0
	movl	_g_sm_heap, %esi
	movl	20(%esp), %edx
	testl	%esi, %esi
	je	L1769
	movl	372(%esi), %eax
	testl	%eax, %eax
	je	L1770
	call	_mi_free
	movl	20(%esp), %edx
L1770:
	movl	%esi, %eax
	movl	%edx, 20(%esp)
	call	_mi_free
	movl	20(%esp), %edx
L1769:
	movl	%edx, 20(%esp)
	movl	$LC22, 4(%esp)
	movl	$0, (%esp)
	call	*__imp__FatalAppExitA@8
	.cfi_def_cfa_offset 52
	subl	$8, %esp
	.cfi_def_cfa_offset 60
	movl	20(%esp), %edx
	jmp	L1768
	.cfi_endproc
LFE95:
	.p2align 4
	.globl	_inthash_delete
	.def	_inthash_delete;	.scl	2;	.type	32;	.endef
_inthash_delete:
LFB101:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -20
	movl	$5381, %ebx
	movl	%esi, 12(%esp)
	.cfi_offset 6, -16
	movl	%edx, %esi
	movl	%edi, 16(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	leal	4(%esp), %eax
L1802:
	movl	%ebx, %edx
	addl	$1, %eax
	leal	8(%esp), %ecx
	sall	$5, %edx
	addl	%edx, %ebx
	movzbl	-1(%eax), %edx
	xorl	%edx, %ebx
	cmpl	%ecx, %eax
	jne	L1802
	movzbl	12(%edi), %ecx
	movl	8(%edi), %edx
	movl	%ebx, %eax
	shrl	%cl, %eax
	testl	%edx, %edx
	je	L1804
	movl	%edx, %eax
	movl	%ebp, 20(%esp)
	.cfi_offset 5, -8
	movl	%ebx, %ebp
	mull	%ebx
	subl	%edx, %ebp
	movl	%edx, %eax
	shrl	%ebp
	shrl	%cl, %eax
	addl	%ebp, %edx
	movl	20(%esp), %ebp
	.cfi_restore 5
	shrl	%cl, %edx
	andl	$64, %ecx
	cmovne	%edx, %eax
L1804:
	imull	4(%edi), %eax
	movl	(%esp), %edi
	subl	%eax, %ebx
	leal	(%ebx,%ebx,2), %eax
	leal	(%edi,%eax,4), %edx
	movl	8(%edx), %eax
	testl	%eax, %eax
	je	L1806
	cmpl	%esi, (%edx)
	jne	L1807
	jmp	L1806
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1810:
	movl	8(%eax), %ecx
	cmpl	%esi, (%eax)
	je	L1819
	movl	%eax, %edx
	movl	%ecx, %eax
L1807:
	cmpl	%eax, %edx
	jne	L1810
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	movl	16(%esp), %edi
	addl	$24, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1806:
	.cfi_restore_state
	movl	$0, 8(%edx)
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	movl	16(%esp), %edi
	addl	$24, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1819:
	.cfi_restore_state
	cmpl	%ecx, %eax
	cmove	%edx, %ecx
	movl	%ecx, 8(%edx)
	movl	$0, 8(%eax)
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	movl	16(%esp), %edi
	addl	$24, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE101:
	.p2align 4
	.globl	_inthash_find
	.def	_inthash_find;	.scl	2;	.type	32;	.endef
_inthash_find:
LFB102:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -20
	movl	$5381, %ebx
	movl	%esi, 12(%esp)
	.cfi_offset 6, -16
	movl	%edx, %esi
	movl	%edi, 16(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	leal	4(%esp), %eax
L1821:
	movl	%ebx, %edx
	addl	$1, %eax
	leal	8(%esp), %ecx
	sall	$5, %edx
	addl	%edx, %ebx
	movzbl	-1(%eax), %edx
	xorl	%edx, %ebx
	cmpl	%ecx, %eax
	jne	L1821
	movzbl	12(%edi), %ecx
	movl	8(%edi), %edx
	movl	%ebx, %eax
	shrl	%cl, %eax
	testl	%edx, %edx
	je	L1823
	movl	%edx, %eax
	movl	%ebp, 20(%esp)
	.cfi_offset 5, -8
	movl	%ebx, %ebp
	mull	%ebx
	subl	%edx, %ebp
	movl	%edx, %eax
	shrl	%ebp
	shrl	%cl, %eax
	addl	%ebp, %edx
	movl	20(%esp), %ebp
	.cfi_restore 5
	shrl	%cl, %edx
	andl	$64, %ecx
	cmovne	%edx, %eax
L1823:
	imull	4(%edi), %eax
	movl	(%esp), %edi
	subl	%eax, %ebx
	leal	(%ebx,%ebx,2), %eax
	leal	(%edi,%eax,4), %edx
	movl	8(%edx), %eax
	testl	%eax, %eax
	je	L1825
	cmpl	%esi, (%edx)
	jne	L1826
	jmp	L1837
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1829:
	cmpl	%esi, (%eax)
	je	L1828
	movl	%eax, %edx
	movl	8(%eax), %eax
L1826:
	cmpl	%eax, %edx
	jne	L1829
L1825:
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	movl	$-1, %eax
	movl	16(%esp), %edi
	addl	$24, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1828:
	.cfi_restore_state
	movl	4(%eax), %eax
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	movl	16(%esp), %edi
	addl	$24, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1837:
	.cfi_restore_state
	movl	4(%edx), %eax
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	movl	16(%esp), %edi
	addl	$24, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE102:
	.section .rdata,"dr"
LC24:
	.ascii "polymost_prepareMirror(%u)\0"
	.text
	.p2align 4
	.globl	_renderPrepareMirror
	.def	_renderPrepareMirror;	.scl	2;	.type	32;	.endef
_renderPrepareMirror:
LFB103:
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
	subl	$68, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	4(%edi), %esi
	movl	(%edi), %ebx
	movl	%ecx, -28(%ebp)
	movl	20(%edi), %ecx
	movl	%esi, -56(%ebp)
	movl	12(%edi), %esi
	movl	%ebx, -36(%ebp)
	movl	%esi, -40(%ebp)
	movl	16(%edi), %esi
	movswl	8(%edi), %edi
	movl	%ecx, -48(%ebp)
	movl	%esi, -44(%ebp)
	movl	_wall, %esi
	movl	%edi, %ebx
	movl	%edi, -52(%ebp)
	sall	$5, %ebx
	addl	%esi, %ebx
	movl	(%ebx), %edi
	movl	%edi, -20(%ebp)
	movswl	8(%ebx), %ecx
	sall	$5, %ecx
	addl	%esi, %ecx
	movl	4(%ebx), %esi
	movl	4(%ecx), %ebx
	movl	(%ecx), %edi
	subl	-20(%ebp), %edi
	movl	%esi, -24(%ebp)
	subl	%esi, %ebx
	movl	%edi, %esi
	movl	%ebx, %ecx
	imull	%edi, %esi
	imull	%ebx, %ecx
	addl	%esi, %ecx
	jne	L1879
L1838:
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
L1879:
	.cfi_restore_state
	movl	-28(%ebp), %esi
	movl	%edx, -32(%ebp)
	movl	%eax, %edx
	subl	-20(%ebp), %edx
	movl	%eax, -28(%ebp)
	movl	%esi, -64(%ebp)
	movl	-32(%ebp), %eax
	movl	%edx, %esi
	subl	-24(%ebp), %eax
	imull	%edi, %esi
	movl	%ecx, 8(%esp)
	imull	%ebx, %eax
	addl	%eax, %esi
	movl	%ecx, %eax
	sarl	$31, %eax
	addl	%esi, %esi
	movl	%eax, 12(%esp)
	movl	%edi, %eax
	imull	%esi
	movl	%ecx, -60(%ebp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	-20(%ebp), %edx
	movl	-40(%ebp), %ecx
	leal	(%eax,%edx,2), %eax
	subl	-28(%ebp), %eax
	movl	%eax, (%ecx)
	movl	%ebx, %eax
	movl	-60(%ebp), %ecx
	imull	%esi
	movl	%ecx, 8(%esp)
	sarl	$31, %ecx
	movl	%ecx, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	-24(%ebp), %edx
	movl	-44(%ebp), %esi
	movl	%edi, %ecx
	leal	(%eax,%edx,2), %eax
	subl	-32(%ebp), %eax
	movl	%ebx, %edx
	movl	%eax, (%esi)
	call	@getangle@8
	movl	-48(%ebp), %ecx
	movb	$1, _inpreparemirror
	sall	$17, %eax
	subl	-36(%ebp), %eax
	andl	$134217727, %eax
	movl	%eax, (%ecx)
	cmpl	$3, _rendmode
	jne	L1838
	movl	-52(%ebp), %eax
	movl	$LC24, 4(%esp)
	movl	$3, (%esp)
	movl	%eax, 8(%esp)
	call	__Z26buildgl_outputDebugMessagehPKcz.constprop.0
	xorps	%xmm0, %xmm0
	cvtsi2ssl	_viewingrange, %xmm0
	mulss	LC25, %xmm0
	movss	%xmm0, _gvrcorrection
	cmpl	$2, _glprojectionhacks
	je	L1880
L1840:
	movl	-28(%ebp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movl	%eax, _globalposx
	movl	-32(%ebp), %eax
	movl	%eax, _globalposy
	movss	%xmm0, _fglobalposx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movl	-64(%ebp), %eax
	movl	%eax, _globalposz
	movss	%xmm0, _fglobalposy
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movl	-36(%ebp), %eax
	movss	%xmm0, _fglobalposz
	call	_set_globalang
	movl	-56(%ebp), %edi
	movl	%edi, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%eax,%edi), %eax
	testl	%eax, %eax
	leal	65535(%eax), %ebx
	cmovns	%eax, %ebx
	movl	_viewingrange, %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	sarl	$16, %ebx
	movl	%eax, 12(%esp)
	movl	_xdimenscale, %eax
	cltd
	shldl	$16, %eax, %edx
	sall	$16, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.11
	movl	%eax, %edx
	leal	-100(%ebx), %eax
/APP
 # 7420 "source/build/src/polymost.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_ydimen, %edx
	sarl	%edx
	addl	%eax, %edx
	movl	_viewingrange, %eax
	movl	%edx, _globalhoriz
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	_xdimenscale, %eax
	cltd
	shldl	$16, %eax, %edx
	sall	$16, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.11
	movl	%eax, %edx
	leal	-6553600(%edi), %eax
/APP
 # 7421 "source/build/src/polymost.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_ydimen, %ecx
	xorps	%xmm0, %xmm0
	movss	_fcosglobalang, %xmm2
	movss	LC25, %xmm1
	movl	_xdimen, %ebx
	sarl	%ecx
	fildl	_xyaspect
	fmuls	_fviewingrange
	movl	%ecx, %edx
	sarl	%ebx
	fmuls	LC33
	mulss	_fviewingrange, %xmm1
	sall	$16, %edx
	addl	%eax, %edx
	movl	_xdimenscale, %eax
	movl	%edx, _qglobalhoriz
	cvtsi2ssl	%eax, %xmm0
	fstpl	_gxyaspect
	mulss	LC32, %xmm0
	movss	%xmm0, _gyxscale
	movss	_fviewingrange, %xmm0
	mulss	_fxdimen, %xmm0
	mulss	LC34, %xmm0
	movss	%xmm0, __ZL11gviewxrange.lto_priv.0
	movss	LC35, %xmm0
	mulss	%xmm0, %xmm2
	mulss	_fsinglobalang, %xmm0
	movss	%xmm2, _gcosang
	mulss	%xmm1, %xmm2
	movss	%xmm0, _gsinang
	mulss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm1
	movss	%xmm2, _gcosang2
	movss	%xmm0, _gsinang2
	xorps	%xmm0, %xmm0
	movss	%xmm1, _ghalfy
	cvtsi2ssl	%ebx, %xmm0
	movss	LC14, %xmm1
	movss	%xmm0, _ghalfx
	mulss	LC36, %xmm0
	divss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movl	_viewingrange, %edx
	mulss	LC25, %xmm0
	movss	%xmm0, __ZL6ghoriz.lto_priv.0
	movss	%xmm1, _grhalfxdown10
	movl	%edx, 8(%esp)
	sarl	$31, %edx
	movl	%edx, 12(%esp)
	cltd
	shldl	$16, %eax, %edx
	sall	$16, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.11
	xorps	%xmm0, %xmm0
	movl	$0x00000000, __ZL13ghorizcorrect.lto_priv.0
	cvtsi2ssl	_globalvisibility, %xmm0
	mulss	LC37, %xmm0
	movss	%xmm0, _gvisibility
	call	__ZL13resizeglcheckv.lto_priv.0
	movl	_ydimen, %eax
	xorps	%xmm2, %xmm2
	movss	__ZL6ghoriz.lto_priv.0, %xmm1
	addss	__ZL13ghorizcorrect.lto_priv.0, %xmm1
	movl	_r_yshearing, %edi
	sarl	%eax
	cvtsi2ssl	%eax, %xmm2
	movaps	%xmm2, %xmm0
	subss	%xmm1, %xmm0
	testl	%edi, %edi
	je	L1843
	movl	$0x00000000, _gshang
	movss	LC14, %xmm1
L1844:
	movl	$0x3f800000, _gctang
	fldz
	movl	$0x00000000, _gstang
	movss	%xmm1, _gchang
	movss	%xmm0, __ZL7ghoriz2.lto_priv.0
	movss	%xmm2, __ZL6ghoriz.lto_priv.0
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	fstp	%st(0)
	movss	_grhalfxdown10, %xmm0
	movl	$2960, %edx
	movl	$_gl+88, %eax
	movss	%xmm0, _grhalfxdown10x
	call	_inthash_find
	cmpl	$1, %eax
	je	L1849
	movl	$2960, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$2960, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1849:
	movl	$1024, (%esp)
	call	*_glad_glClear
	subl	$4, %esp
	movl	$7681, 8(%esp)
	movl	$7681, 4(%esp)
	movl	$7681, (%esp)
	call	*_glad_glStencilOp
	subl	$12, %esp
	movl	$255, 8(%esp)
	movl	$1, 4(%esp)
	movl	$519, (%esp)
	call	*_glad_glStencilFunc
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$12, %esp
	call	_inthash_find
	testl	%eax, %eax
	je	L1850
	movl	$3008, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1850:
	movl	$2929, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L1851
	movl	$2929, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$2929, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1851:
	movl	-52(%ebp), %eax
	call	__ZL29polymost_drawmaskwallinternali.lto_priv.0
	movl	$3008, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1852
	movl	$3008, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1852:
	movl	$2929, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1853
	movl	$2929, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$2929, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1853:
	movl	$255, 8(%esp)
	movl	$1, 4(%esp)
	movl	$514, (%esp)
	call	*_glad_glStencilFunc
	subl	$12, %esp
	movl	$7680, 8(%esp)
	movl	$7680, 4(%esp)
	movl	$7680, (%esp)
	call	*_glad_glStencilOp
	subl	$12, %esp
	jmp	L1838
	.p2align 4,,10
	.p2align 3
L1880:
	movl	_windowxy2+4, %eax
	xorps	%xmm1, %xmm1
	xorps	%xmm2, %xmm2
	xorps	%xmm3, %xmm3
	subl	_windowxy1+4, %eax
	movss	%xmm0, -24(%ebp)
	cvtsi2ssl	_yxaspect, %xmm3
	cvtsi2ssl	%eax, %xmm1
	movl	_windowxy2, %eax
	subl	_windowxy1, %eax
	mulss	_fviewingrange, %xmm1
	cvtsi2ssl	%eax, %xmm2
	mulss	LC26, %xmm1
	mulss	%xmm3, %xmm2
	mulss	LC27, %xmm2
	divss	%xmm2, %xmm1
	movss	%xmm1, (%esp)
	call	_atanf
	xorps	%xmm2, %xmm2
	fstps	-20(%ebp)
	movss	-20(%ebp), %xmm1
	mulss	LC28, %xmm1
	addss	LC29, %xmm1
	subss	LC30, %xmm1
	comiss	%xmm2, %xmm1
	jbe	L1840
	mulss	LC31, %xmm1
	movss	-24(%ebp), %xmm0
	addss	LC14, %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, _gvrcorrection
	jmp	L1840
	.p2align 4,,10
	.p2align 3
L1843:
	movss	_ghalfx, %xmm1
	xorps	%xmm4, %xmm4
	movss	_gvrcorrection, %xmm3
	mulss	%xmm1, %xmm1
	mulss	%xmm3, %xmm3
	divss	%xmm3, %xmm1
	movaps	%xmm0, %xmm3
	mulss	%xmm0, %xmm3
	addss	%xmm3, %xmm1
	ucomiss	%xmm1, %xmm4
	ja	L1876
	sqrtss	%xmm1, %xmm1
	divss	%xmm1, %xmm0
	movss	LC14, %xmm1
	movss	%xmm0, _gshang
	mulss	%xmm0, %xmm0
	subss	%xmm0, %xmm1
	ucomiss	%xmm1, %xmm4
	ja	L1881
L1847:
	sqrtss	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	jmp	L1844
L1876:
	movss	%xmm0, -24(%ebp)
	movss	%xmm1, (%esp)
	call	_sqrtf
	movss	-24(%ebp), %xmm0
	movl	_ydimen, %eax
	xorps	%xmm2, %xmm2
	movss	LC14, %xmm1
	fstps	-20(%ebp)
	divss	-20(%ebp), %xmm0
	movss	%xmm0, _gshang
	mulss	%xmm0, %xmm0
	sarl	%eax
	cvtsi2ssl	%eax, %xmm2
	subss	%xmm0, %xmm1
	jmp	L1847
L1881:
	movss	%xmm1, (%esp)
	call	_sqrtf
	movl	_ydimen, %eax
	xorps	%xmm2, %xmm2
	xorps	%xmm0, %xmm0
	fstps	-20(%ebp)
	movss	-20(%ebp), %xmm1
	sarl	%eax
	cvtsi2ssl	%eax, %xmm2
	jmp	L1844
	.cfi_endproc
LFE103:
	.p2align 4
	.globl	_printext256
	.def	_printext256;	.scl	2;	.type	32;	.endef
_printext256:
LFB107:
	.cfi_startproc
	subl	$80, %esp
	.cfi_def_cfa_offset 84
	movl	84(%esp), %eax
	movl	%ebx, 64(%esp)
	.cfi_offset 3, -20
	movzbl	104(%esp), %ebx
	movl	%esi, 68(%esp)
	movl	%eax, 24(%esp)
	movzwl	96(%esp), %eax
	movl	%ebp, 76(%esp)
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	movl	88(%esp), %esi
	movw	%ax, 34(%esp)
	movl	100(%esp), %eax
	movzwl	92(%esp), %ebp
	movl	%eax, 20(%esp)
	testb	%bl, %bl
	je	L1907
	movl	$_smalltextfont, 44(%esp)
	movl	$4, 28(%esp)
	cmpl	$4, _rendmode
	je	L1937
L1884:
	movzbl	%bl, %eax
	movswl	%bp, %ecx
	movl	%esi, %edx
	movl	%eax, 36(%esp)
	movl	%eax, 8(%esp)
	movl	20(%esp), %eax
	movl	%eax, 4(%esp)
	movswl	34(%esp), %eax
	movl	%eax, (%esp)
	movl	24(%esp), %eax
	call	__Z21polymost_printtext256iissPKcc
	testl	%eax, %eax
	je	L1882
L1890:
	call	_videoBeginDrawing
	movl	20(%esp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L1889
	movl	%edi, 72(%esp)
	.cfi_offset 7, -12
	movl	$7, %ebx
	subl	36(%esp), %ebx
	xorl	%edx, %edx
	leal	28(,%esi,4), %edi
	movl	%ebx, 52(%esp)
	xorl	%ecx, %ecx
	movl	%edi, 48(%esp)
	.p2align 4
	.p2align 3
L1906:
	cmpb	$94, %al
	jne	L1891
	movl	20(%esp), %edi
	movzbl	1(%edi,%ecx), %ecx
	subl	$48, %ecx
	cmpl	$9, %ecx
	jbe	L1938
L1891:
	movl	28(%esp), %edi
	movl	24(%esp), %ecx
	subl	36(%esp), %ecx
	leal	(%ecx,%edi), %ebx
	cmpl	_xdim, %ebx
	jg	L1936
	subl	$1, %edi
	movl	48(%esp), %esi
	movl	_ylookup, %ebx
	sall	$3, %eax
	movl	%edi, 12(%esp)
	movl	44(%esp), %edi
	addl	(%ebx,%esi), %ecx
	addl	_frameplace, %ecx
	leal	(%eax,%edi), %esi
	cmpw	$-1, 34(%esp)
	je	L1939
	leal	-8(%edi,%eax), %eax
	movl	%edx, 40(%esp)
	movl	%eax, 16(%esp)
	movl	52(%esp), %eax
	leal	__ZL8pow2char.lto_priv.9(%eax), %ebx
	.p2align 4
	.p2align 3
L1905:
	movl	12(%esp), %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1904:
	movl	%eax, %edx
	negl	%edx
	movzbl	(%ebx,%edx), %edx
	testb	%dl, 7(%esi)
	movl	$31, %edx
	cmovne	%ebp, %edx
	movb	%dl, (%ecx,%eax)
	subl	$1, %eax
	jnb	L1904
	movl	_ylookup, %eax
	subl	$1, %esi
	subl	4(%eax), %ecx
	cmpl	16(%esp), %esi
	jne	L1905
	movl	40(%esp), %edx
L1902:
	movl	28(%esp), %edi
	addl	%edi, 24(%esp)
L1897:
	movl	20(%esp), %eax
	addl	$1, %edx
	movl	%edx, %ecx
	movzbl	(%eax,%edx), %eax
	testb	%al, %al
	jne	L1906
L1936:
	movl	72(%esp), %edi
	.cfi_restore 7
L1889:
	movl	64(%esp), %ebx
	movl	68(%esp), %esi
	movl	76(%esp), %ebp
	addl	$80, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	_videoEndDrawing
L1939:
	.cfi_def_cfa_offset 84
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	leal	-8(%edi,%eax), %edi
	movl	%edx, 16(%esp)
	movl	52(%esp), %eax
	leal	__ZL8pow2char.lto_priv.9(%eax), %ebx
	.p2align 4
	.p2align 3
L1901:
	movl	12(%esp), %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1900:
	movl	%eax, %edx
	negl	%edx
	movzbl	(%ebx,%edx), %edx
	testb	%dl, 7(%esi)
	je	L1899
	movl	%ebp, %edx
	movb	%dl, (%ecx,%eax)
L1899:
	subl	$1, %eax
	jnb	L1900
	movl	_ylookup, %eax
	subl	$1, %esi
	subl	4(%eax), %ecx
	cmpl	%edi, %esi
	jne	L1901
	movl	16(%esp), %edx
	jmp	L1902
L1938:
	movzbl	1(%edi,%edx), %eax
	movl	%edx, %esi
	movl	%eax, %ebx
	subl	$48, %eax
	cmpl	$9, %eax
	movl	$0, %eax
	ja	L1892
	addl	%edx, %edi
L1894:
	addl	$1, %eax
	movzbl	1(%edi,%eax), %ecx
	movb	%bl, 55(%esp,%eax)
	leal	(%eax,%esi), %edx
	movl	%ecx, %ebx
	subl	$48, %ecx
	cmpl	$9, %ecx
	ja	L1892
	cmpl	$3, %eax
	jne	L1894
L1892:
	movb	$0, 56(%esp,%eax)
	testw	%bp, %bp
	je	L1897
	leal	56(%esp), %eax
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 12(%esp)
	call	_strtol
	movl	12(%esp), %edx
	movl	%eax, %ebp
	jmp	L1897
L1907:
	.cfi_restore 7
	movl	$_textfont, 44(%esp)
	movl	$8, 28(%esp)
	cmpl	$4, _rendmode
	jne	L1884
L1937:
	movl	$3553, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1885
	movl	$3553, (%esp)
	call	*_glad_glEnable
	.cfi_def_cfa_offset 80
	movl	$1, %ecx
	movl	$3553, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 84
	movl	$1, (%esp)
	call	_inthash_add
L1885:
	movzbl	%bl, %eax
	movl	%esi, %edx
	movswl	%bp, %ecx
	movl	%eax, 36(%esp)
	movl	%eax, 8(%esp)
	movl	20(%esp), %eax
	movl	%eax, 4(%esp)
	movswl	34(%esp), %eax
	movl	%eax, (%esp)
	movl	24(%esp), %eax
	call	__Z21polymost_printtext256iissPKcc
	movl	$3553, %edx
	movl	%eax, %ebx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L1886
	movl	$3553, (%esp)
	call	*_glad_glDisable
	.cfi_def_cfa_offset 80
	xorl	%ecx, %ecx
	movl	$3553, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 84
	movl	$1, (%esp)
	call	_inthash_add
L1886:
	testl	%ebx, %ebx
	jne	L1890
L1882:
	movl	64(%esp), %ebx
	movl	68(%esp), %esi
	movl	76(%esp), %ebp
	addl	$80, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE107:
	.p2align 4
	.globl	__Z20buildgl_setAlphaFuncjf.constprop.0
	.def	__Z20buildgl_setAlphaFuncjf.constprop.0;	.scl	2;	.type	32;	.endef
__Z20buildgl_setAlphaFuncjf.constprop.0:
LFB110:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	$3009, %edx
	movl	$_gl+88, %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	call	_inthash_find
	movss	%xmm0, 8(%esp)
	movl	8(%esp), %ebx
	cmpl	$516, %eax
	je	L1944
L1941:
	movss	%xmm0, 4(%esp)
	movl	$516, (%esp)
	call	*_glad_glAlphaFunc
	.cfi_def_cfa_offset 12
	movl	$516, %ecx
	movl	$3009, %edx
	movl	$_gl+88, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 20
	movl	$1, (%esp)
	call	_inthash_add
	movl	$1, (%esp)
	movl	%ebx, %ecx
	movl	$3010, %edx
	movl	$_gl+88, %eax
	call	_inthash_add
L1940:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1944:
	.cfi_restore_state
	movl	$3010, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	%ebx, %eax
	jne	L1941
	jmp	L1940
	.cfi_endproc
LFE110:
	.p2align 4
	.globl	__Z18buildgl_bindBufferjj
	.def	__Z18buildgl_bindBufferjj;	.scl	2;	.type	32;	.endef
__Z18buildgl_bindBufferjj:
LFB111:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%edx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	$88, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	_gl+4, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	$543656, %eax
	testl	%edx, %edx
	movl	%ebx, %edx
	cmove	%esi, %eax
	addl	$_gl, %eax
	call	_inthash_find
	cmpl	%edi, %eax
	je	L1945
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	call	*_glad_glBindBuffer
	.cfi_def_cfa_offset 16
	movl	_gl+4, %edx
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	%edx, %eax
	sall	$4, %eax
	subl	$543656, %eax
	testl	%edx, %edx
	cmove	%esi, %eax
	addl	$_gl, %eax
	testl	%edi, %edi
	jne	L1948
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%ebx, %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	_inthash_delete
	.p2align 4,,10
	.p2align 3
L1948:
	.cfi_restore_state
	movl	$1, (%esp)
	movl	%edi, %ecx
	movl	%ebx, %edx
	call	_inthash_add
L1945:
	addl	$8, %esp
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
LFE111:
	.p2align 4
	.globl	__Z18buildgl_bindBufferjj.constprop.0
	.def	__Z18buildgl_bindBufferjj.constprop.0;	.scl	2;	.type	32;	.endef
__Z18buildgl_bindBufferjj.constprop.0:
LFB112:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	$88, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 20
	movl	_gl+4, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	$543656, %eax
	testl	%edx, %edx
	movl	%ebx, %edx
	cmove	%esi, %eax
	addl	$_gl, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L1955
	movl	%ebx, (%esp)
	movl	$0, 4(%esp)
	call	*_glad_glBindBuffer
	.cfi_def_cfa_offset 12
	movl	_gl+4, %edx
	subl	$8, %esp
	.cfi_def_cfa_offset 20
	movl	%edx, %eax
	sall	$4, %eax
	subl	$543656, %eax
	testl	%edx, %edx
	movl	%ebx, %edx
	cmove	%esi, %eax
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	addl	$_gl, %eax
	jmp	_inthash_delete
	.p2align 4,,10
	.p2align 3
L1955:
	.cfi_restore_state
	addl	$8, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE112:
	.p2align 4
	.globl	__Z19buildgl_bindTexturejj
	.def	__Z19buildgl_bindTexturejj;	.scl	2;	.type	32;	.endef
__Z19buildgl_bindTexturejj:
LFB113:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%edx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	$88, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	_gl+4, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	$543656, %eax
	testl	%edx, %edx
	movl	%ebx, %edx
	cmove	%esi, %eax
	addl	$_gl, %eax
	call	_inthash_find
	cmpl	%edi, %eax
	je	L1962
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	call	*_glad_glBindTexture
	.cfi_def_cfa_offset 16
	movl	_gl+4, %edx
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	%edx, %eax
	sall	$4, %eax
	subl	$543656, %eax
	testl	%edx, %edx
	cmove	%esi, %eax
	addl	$_gl, %eax
	testl	%edi, %edi
	jne	L1965
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%ebx, %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	_inthash_delete
	.p2align 4,,10
	.p2align 3
L1965:
	.cfi_restore_state
	movl	$1, (%esp)
	movl	%edi, %ecx
	movl	%ebx, %edx
	call	_inthash_add
L1962:
	addl	$8, %esp
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
LFE113:
	.p2align 4
	.globl	__Z19buildgl_bindTexturejj.constprop.0
	.def	__Z19buildgl_bindTexturejj.constprop.0;	.scl	2;	.type	32;	.endef
__Z19buildgl_bindTexturejj.constprop.0:
LFB114:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	$88, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 20
	movl	_gl+4, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	$543656, %eax
	testl	%edx, %edx
	movl	$3553, %edx
	cmove	%ebx, %eax
	addl	$_gl, %eax
	call	_inthash_find
	cmpl	%esi, %eax
	je	L1972
	movl	%esi, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glBindTexture
	.cfi_def_cfa_offset 12
	movl	_gl+4, %edx
	subl	$8, %esp
	.cfi_def_cfa_offset 20
	movl	%edx, %eax
	sall	$4, %eax
	subl	$543656, %eax
	testl	%edx, %edx
	cmove	%ebx, %eax
	addl	$_gl, %eax
	testl	%esi, %esi
	jne	L1975
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	$3553, %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	_inthash_delete
	.p2align 4,,10
	.p2align 3
L1975:
	.cfi_restore_state
	movl	$1, (%esp)
	movl	%esi, %ecx
	movl	$3553, %edx
	call	_inthash_add
L1972:
	addl	$8, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE114:
	.p2align 4
	.globl	__Z20glsurface_setPalettePv.part.0.constprop.0
	.def	__Z20glsurface_setPalettePv.part.0.constprop.0;	.scl	2;	.type	32;	.endef
__Z20glsurface_setPalettePv.part.0.constprop.0:
LFB116:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	cmpl	$33985, _gl+4
	je	L1983
	movl	$33985, _gl+4
	movl	$33985, (%esp)
	call	*_glad_glActiveTexture
	.cfi_def_cfa_offset 36
	subl	$4, %esp
	.cfi_def_cfa_offset 40
L1983:
	movl	__ZL12paletteTexID, %eax
	testl	%eax, %eax
	jne	L1987
	movl	$__ZL12paletteTexID, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glGenTextures
	.cfi_def_cfa_offset 32
	movl	__ZL12paletteTexID, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	$0, 8(%esp)
	movl	$33084, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 28
	subl	$12, %esp
	.cfi_def_cfa_offset 40
	movl	$0, 8(%esp)
	movl	$33085, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 28
	subl	$12, %esp
	.cfi_def_cfa_offset 40
	movl	$9728, 8(%esp)
	movl	$10240, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 28
	subl	$12, %esp
	.cfi_def_cfa_offset 40
	movl	$9728, 8(%esp)
	movl	$10241, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 28
	subl	$12, %esp
	.cfi_def_cfa_offset 40
	movl	$1, 8(%esp)
	movl	$34046, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 28
	subl	$12, %esp
	.cfi_def_cfa_offset 40
	movl	$33071, 8(%esp)
	movl	$10242, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 28
	subl	$12, %esp
	.cfi_def_cfa_offset 40
	movl	$33071, 8(%esp)
	movl	$10243, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	.cfi_def_cfa_offset 28
	subl	$12, %esp
	.cfi_def_cfa_offset 40
	movl	$_curpalettefaded, 32(%esp)
	movl	$5121, 28(%esp)
	movl	$6408, 24(%esp)
	movl	$0, 20(%esp)
	movl	$1, 16(%esp)
	movl	$256, 12(%esp)
	movl	$6408, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexImage2D
	.cfi_def_cfa_offset 4
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	addl	$36, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1987:
	.cfi_restore_state
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	$_curpalettefaded, 32(%esp)
	movl	$5121, 28(%esp)
	movl	$6408, 24(%esp)
	movl	$1, 20(%esp)
	movl	$256, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexSubImage2D
	.cfi_def_cfa_offset 4
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	addl	$36, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE116:
	.p2align 4
	.globl	_hicfindsubst
	.def	_hicfindsubst;	.scl	2;	.type	32;	.endef
_hicfindsubst:
LFB119:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%esi, 8(%esp)
	.cfi_offset 6, -16
	movl	_hicreplc(,%eax,4), %esi
	testl	%esi, %esi
	je	L1994
	cmpl	$0, _hicinitcounter
	je	L1994
	movl	%ebx, 4(%esp)
	testl	%ecx, %ecx
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	%edi, 12(%esp)
	.cfi_offset 7, -12
	movzbl	_tilefilenum(%eax), %eax
	movb	%al, 3(%esp)
	setne	%al
	movl	%eax, %edi
L1992:
	movl	%esi, %eax
	.p2align 4
	.p2align 3
L1991:
	movzbl	32(%eax), %edx
	cmpl	%ebx, %edx
	jne	L1995
	movzbl	3(%esp), %ecx
	cmpb	%cl, 34(%eax)
	je	L2003
L1995:
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L1991
	testl	%ebx, %ebx
	movl	%edi, %edx
	sete	%cl
	xorl	%ebx, %ebx
	orb	%dl, %cl
	je	L1992
L2003:
	movl	4(%esp), %ebx
	.cfi_restore 3
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	8(%esp), %esi
	addl	$20, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1994:
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -16
	movl	8(%esp), %esi
	xorl	%eax, %eax
	addl	$20, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE119:
	.p2align 4
	.globl	_hicfindskybox.constprop.0
	.def	_hicfindskybox.constprop.0;	.scl	2;	.type	32;	.endef
_hicfindskybox.constprop.0:
LFB121:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	movl	_hicreplc(,%eax,4), %esi
	testl	%esi, %esi
	je	L2011
	movl	_hicinitcounter, %ecx
	testl	%ecx, %ecx
	je	L2011
	movl	%ebx, (%esp)
	.cfi_offset 3, -12
	movzbl	_tilefilenum(%eax), %ebx
L2009:
	movl	%esi, %eax
	.p2align 4
	.p2align 3
L2008:
	movl	8(%eax), %ecx
	testl	%ecx, %ecx
	je	L2006
	movzbl	32(%eax), %ecx
	cmpl	%edx, %ecx
	jne	L2006
	cmpb	%bl, 34(%eax)
	je	L2018
L2006:
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L2008
	testl	%edx, %edx
	je	L2018
	xorl	%edx, %edx
	jmp	L2009
	.p2align 4,,10
	.p2align 3
L2018:
	movl	(%esp), %ebx
	.cfi_restore 3
	movl	4(%esp), %esi
	addl	$8, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2011:
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -8
	movl	4(%esp), %esi
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE121:
	.p2align 4
	.globl	_hicinit
	.def	_hicinit;	.scl	2;	.type	32;	.endef
_hicinit:
LFB122:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	xorl	%eax, %eax
	movl	$-1, %edx
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
	.p2align 6
	.p2align 4
	.p2align 3
L2020:
	xorl	%ecx, %ecx
	movb	$-1, _hictinting+4(,%eax,8)
	movw	%dx, _hictinting+2(,%eax,8)
	movw	%cx, _hictinting(,%eax,8)
	addl	$1, %eax
	cmpl	$256, %eax
	jne	L2020
	movl	_hicinitcounter, %ebx
	testl	%ebx, %ebx
	je	L2021
	movl	$30719, %edi
	.p2align 4
	.p2align 3
L2062:
	movl	_hicreplc(,%edi,4), %eax
	movl	%eax, -80(%ebp)
	testl	%eax, %eax
	je	L2022
	movl	%edi, -116(%ebp)
	jmp	L2061
	.p2align 4,,10
	.p2align 3
L2023:
	movl	-76(%ebp), %eax
	movl	_g_sm_heap, %ecx
	movl	4(%eax), %esi
	cmpl	$16384, %esi
	jbe	L2037
	movl	%esi, %eax
	xorl	%edx, %edx
	subl	12(%ecx), %eax
	divl	4(%ecx)
	movl	%eax, %edi
	cmpl	(%ecx), %eax
	jnb	L2038
	leal	(%eax,%eax,4), %eax
	leal	0(,%eax,8), %ebx
	movl	%ebx, -88(%ebp)
	leal	48(%ecx), %ebx
	movl	%ebx, -84(%ebp)
	lock addl	$1, 80(%ecx,%eax,8)
	movl	%fs:44, %eax
	movl	__tls_index, %ebx
	movl	(%eax,%ebx,4), %ebx
	movl	%eax, -84(%ebp)
	movl	%edi, %eax
	sall	$6, %eax
	movl	%eax, -92(%ebp)
	addl	%ebx, %eax
	movl	_tlsCacheBuckets@secrel32+52(%eax), %edx
	testl	%edx, %edx
	je	L2039
	movl	_tlsCacheBuckets@secrel32(%eax), %ecx
	subl	%ecx, %esi
	movl	%ecx, -96(%ebp)
	movzbl	_tlsCacheBuckets@secrel32+60(%eax), %ecx
	movl	%esi, -88(%ebp)
	cmpb	$9, %cl
	jbe	L2100
	movl	_tlsCacheBuckets@secrel32+56(%eax), %ecx
	movl	_tlsCacheBuckets@secrel32+4(%eax), %ebx
	cmpl	%edx, %ecx
	jnb	L2041
	movl	-88(%ebp), %edi
	leal	1(%ecx), %edx
	movl	%edi, (%ebx,%ecx,4)
	movl	_g_sm_heap, %ecx
	movl	%edx, _tlsCacheBuckets@secrel32+56(%eax)
	.p2align 4
	.p2align 3
L2037:
	movl	-76(%ebp), %eax
	cmpl	$16384, %eax
	jbe	L2049
	subl	12(%ecx), %eax
	xorl	%edx, %edx
	divl	4(%ecx)
	movl	%eax, %esi
	cmpl	(%ecx), %eax
	jnb	L2050
	leal	(%eax,%eax,4), %eax
	leal	48(%ecx), %ebx
	leal	0(,%eax,8), %edi
	movl	%ebx, -84(%ebp)
	lock addl	$1, 80(%ecx,%eax,8)
	movl	%fs:44, %ebx
	movl	__tls_index, %edx
	movl	%ebx, -84(%ebp)
	movl	(%ebx,%edx,4), %ebx
	movl	%esi, %edx
	sall	$6, %edx
	leal	(%edx,%ebx), %eax
	movl	%edx, -88(%ebp)
	movl	_tlsCacheBuckets@secrel32+52(%eax), %edx
	testl	%edx, %edx
	je	L2051
	movl	-76(%ebp), %ecx
	movl	_tlsCacheBuckets@secrel32(%eax), %edi
	subl	%edi, %ecx
	movl	%ecx, -76(%ebp)
	movzbl	_tlsCacheBuckets@secrel32+60(%eax), %ecx
	cmpb	$9, %cl
	jbe	L2101
	movl	_tlsCacheBuckets@secrel32+4(%eax), %ebx
	movl	_tlsCacheBuckets@secrel32+56(%eax), %ecx
	movl	%ebx, -88(%ebp)
	cmpl	%edx, %ecx
	jnb	L2053
	movl	-76(%ebp), %edi
	movl	%edi, (%ebx,%ecx,4)
	addl	$1, %ecx
	movl	%ecx, _tlsCacheBuckets@secrel32+56(%eax)
	.p2align 4
	.p2align 3
L2049:
	movl	-80(%ebp), %eax
	testl	%eax, %eax
	je	L2102
L2061:
	movl	-80(%ebp), %ebx
	movl	(%ebx), %edi
	movl	8(%ebx), %eax
	movl	%ebx, -76(%ebp)
	movl	%edi, -80(%ebp)
	testl	%eax, %eax
	je	L2023
	movl	_g_sm_heap, %ecx
	movl	$5, %edi
	jmp	L2036
	.p2align 4,,10
	.p2align 3
L2105:
	leal	(%eax,%eax,4), %eax
	leal	0(,%eax,8), %edx
	movl	%edx, -84(%ebp)
	leal	48(%ecx), %edx
	movl	%edx, -88(%ebp)
	lock addl	$1, 80(%ecx,%eax,8)
	movl	%fs:44, %eax
	movl	__tls_index, %edx
	movl	(%eax,%edx,4), %edx
	movl	%eax, -88(%ebp)
	movl	%ebx, %eax
	sall	$6, %eax
	movl	%edx, -96(%ebp)
	movl	%eax, -100(%ebp)
	addl	%edx, %eax
	movl	_tlsCacheBuckets@secrel32+52(%eax), %edx
	testl	%edx, %edx
	je	L2026
	movl	_tlsCacheBuckets@secrel32(%eax), %ecx
	subl	%ecx, %esi
	movl	%ecx, -104(%ebp)
	movzbl	_tlsCacheBuckets@secrel32+60(%eax), %ecx
	movl	%esi, -92(%ebp)
	cmpb	$9, %cl
	jbe	L2103
	movl	_tlsCacheBuckets@secrel32+56(%eax), %esi
	movl	%esi, -84(%ebp)
	movl	_tlsCacheBuckets@secrel32+4(%eax), %esi
	movl	%esi, -96(%ebp)
	cmpl	%edx, -84(%ebp)
	jnb	L2028
	movl	-92(%ebp), %ebx
	movl	-84(%ebp), %edx
	movl	%ebx, (%esi,%edx,4)
L2095:
	addl	$1, %edx
	movl	_g_sm_heap, %ecx
	movl	%edx, _tlsCacheBuckets@secrel32+56(%eax)
	movl	-76(%ebp), %eax
	movl	8(%eax), %eax
L2024:
	subl	$1, %edi
	jb	L2104
L2036:
	movl	(%eax,%edi,4), %esi
	cmpl	$16384, %esi
	jbe	L2024
	movl	%esi, %eax
	xorl	%edx, %edx
	subl	12(%ecx), %eax
	divl	4(%ecx)
	movl	%eax, %ebx
	cmpl	(%ecx), %eax
	jb	L2105
	movl	%esi, %eax
	call	_mi_free
L2096:
	movl	-76(%ebp), %eax
	movl	_g_sm_heap, %ecx
	movl	8(%eax), %eax
	subl	$1, %edi
	jnb	L2036
L2104:
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L2023
	.p2align 4,,10
	.p2align 3
L2038:
	movl	%esi, %eax
	call	_mi_free
L2098:
	movl	_g_sm_heap, %ecx
	jmp	L2037
	.p2align 4,,10
	.p2align 3
L2050:
	movl	-76(%ebp), %eax
	call	_mi_free
	movl	-80(%ebp), %eax
	testl	%eax, %eax
	jne	L2061
L2102:
	movl	-116(%ebp), %edi
L2022:
	subl	$1, %edi
	jnb	L2062
	movl	_hicinitcounter, %ebx
L2021:
	movl	$122880, 8(%esp)
	addl	$1, %ebx
	movl	$0, 4(%esp)
	movl	$_hicreplc, (%esp)
	call	_memset
	movl	%ebx, _hicinitcounter
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
L2026:
	.cfi_restore_state
	movl	-84(%ebp), %edx
	movl	$1, %ebx
	leal	48(%ecx,%edx), %eax
	movl	%eax, -88(%ebp)
	lock xaddl	%ebx, 8(%eax)
	movl	%ebx, -84(%ebp)
	movl	%esi, %ebx
	subl	60(%ecx,%edx), %ebx
	movl	%ebx, %ecx
	movlps	(%eax), %xmm0
	movlps	%xmm0, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	movl	%esi, -92(%ebp)
	movl	-84(%ebp), %ebx
L2035:
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	-92(%ebp), %esi
	movl	%eax, (%esi)
	movl	%edx, 4(%esi)
	movl	-88(%ebp), %esi
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	lock cmpxchg8b	(%esi)
	je	L2096
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	jmp	L2035
	.p2align 4,,10
	.p2align 3
L2103:
	movl	-96(%ebp), %ebx
	movl	-100(%ebp), %esi
	leal	_tlsCacheBuckets@secrel32(%ebx,%esi), %edx
	movl	-92(%ebp), %ebx
	movl	%ebx, 12(%edx,%ecx,4)
	movl	_g_sm_heap, %ecx
	addb	$1, _tlsCacheBuckets@secrel32+60(%eax)
	movl	-76(%ebp), %eax
	movl	8(%eax), %eax
	jmp	L2024
	.p2align 4,,10
	.p2align 3
L2028:
	movl	-84(%ebp), %esi
	movl	$1, %edx
	shrl	%esi
	je	L2029
	movl	-84(%ebp), %edx
	movl	-96(%ebp), %ecx
	movl	%esi, -100(%ebp)
	subl	%esi, %edx
	movl	-104(%ebp), %esi
	addl	(%ecx,%edx,4), %esi
	movl	%esi, -104(%ebp)
	movl	%esi, -112(%ebp)
	movl	%edx, %esi
	addl	$1, %edx
	cmpl	-84(%ebp), %edx
	jnb	L2064
	movl	%esi, %edx
	movl	%esi, -108(%ebp)
	movl	-96(%ebp), %esi
	movl	4(%esi,%edx,4), %esi
	movl	-104(%ebp), %edx
	movl	$16777215, (%edx)
	movl	%esi, 4(%edx)
	movl	_tlsCacheBuckets@secrel32(%eax), %edx
	addl	%esi, %edx
	movl	%edx, -96(%ebp)
	movl	-108(%ebp), %edx
	addl	$2, %edx
	cmpl	_tlsCacheBuckets@secrel32+56(%eax), %edx
	jnb	L2030
	movl	-100(%ebp), %esi
	subl	-84(%ebp), %esi
	movl	%ebx, -104(%ebp)
	movl	%edi, -84(%ebp)
	leal	16777214(%esi), %edi
	movl	-96(%ebp), %esi
	.p2align 6
	.p2align 4
	.p2align 3
L2031:
	movl	_tlsCacheBuckets@secrel32+4(%eax), %ecx
	leal	(%edi,%edx), %ebx
	movl	(%ecx,%edx,4), %ecx
	movl	%ebx, (%esi)
	addl	$1, %edx
	movl	%ecx, 4(%esi)
	movl	_tlsCacheBuckets@secrel32(%eax), %esi
	addl	%ecx, %esi
	cmpl	_tlsCacheBuckets@secrel32+56(%eax), %edx
	jb	L2031
	movl	-84(%ebp), %edi
	movl	-104(%ebp), %ebx
	movl	%esi, -96(%ebp)
L2030:
	movl	-88(%ebp), %esi
	movl	__tls_index, %edx
	movl	%ebx, %eax
	sall	$6, %eax
	addl	(%esi,%edx,4), %eax
	movl	$1, %esi
	movl	_tlsCacheBuckets@secrel32+8(%eax), %eax
	movl	%eax, -84(%ebp)
	lock xaddl	%esi, 8(%eax)
	movl	-112(%ebp), %ecx
	subl	12(%eax), %ecx
	movl	%esi, -104(%ebp)
	movlps	(%eax), %xmm3
	movlps	%xmm3, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	movl	%edi, -108(%ebp)
	movl	%ebx, %edi
L2033:
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	-96(%ebp), %ebx
	movl	-84(%ebp), %esi
	movl	%eax, (%ebx)
	movl	%edx, 4(%ebx)
	movl	-104(%ebp), %ebx
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	lock cmpxchg8b	(%esi)
	je	L2069
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	jmp	L2033
	.p2align 4,,10
	.p2align 3
L2069:
	movl	__tls_index, %edx
	movl	%edi, %ebx
	movl	-88(%ebp), %esi
	movl	%ebx, %eax
	movl	-108(%ebp), %edi
	sall	$6, %eax
	addl	(%esi,%edx,4), %eax
	movl	_tlsCacheBuckets@secrel32+56(%eax), %edx
	subl	-100(%ebp), %edx
L2029:
	movl	%ebx, %eax
	movl	__tls_index, %esi
	movl	-88(%ebp), %ebx
	sall	$6, %eax
	addl	(%ebx,%esi,4), %eax
	movl	-92(%ebp), %ebx
	movl	_tlsCacheBuckets@secrel32+4(%eax), %ecx
	movl	%ebx, (%ecx,%edx,4)
	jmp	L2095
	.p2align 4,,10
	.p2align 3
L2039:
	movl	-88(%ebp), %eax
	movl	$1, %ebx
	leal	48(%ecx,%eax), %edi
	lock xaddl	%ebx, 8(%edi)
	movl	%esi, %edx
	subl	60(%ecx,%eax), %edx
	movl	%edx, %ecx
	movlps	(%edi), %xmm1
	movlps	%xmm1, -56(%ebp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
L2097:
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	%edx, -20(%ebp)
	movl	-20(%ebp), %edx
	movl	%eax, (%esi)
	movl	%edx, 4(%esi)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	lock cmpxchg8b	(%edi)
	je	L2098
	jmp	L2097
	.p2align 4,,10
	.p2align 3
L2051:
	leal	48(%ecx,%edi), %esi
	movl	$1, %ebx
	lock xaddl	%ebx, 8(%esi)
	movl	-76(%ebp), %eax
	subl	60(%ecx,%edi), %eax
	movl	%eax, %ecx
	movlps	(%esi), %xmm2
	movlps	%xmm2, -72(%ebp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
L2099:
	movl	%eax, -24(%ebp)
	movl	-76(%ebp), %edi
	movl	%edx, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, (%edi)
	movl	%edx, 4(%edi)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	lock cmpxchg8b	(%esi)
	je	L2049
	jmp	L2099
	.p2align 4,,10
	.p2align 3
L2101:
	movl	-88(%ebp), %edi
	leal	_tlsCacheBuckets@secrel32(%ebx,%edi), %edx
	movl	-76(%ebp), %edi
	movl	%edi, 12(%edx,%ecx,4)
	addb	$1, _tlsCacheBuckets@secrel32+60(%eax)
	jmp	L2049
	.p2align 4,,10
	.p2align 3
L2100:
	movl	-92(%ebp), %edi
	leal	_tlsCacheBuckets@secrel32(%ebx,%edi), %edx
	movl	%esi, 12(%edx,%ecx,4)
	movl	_g_sm_heap, %ecx
	addb	$1, _tlsCacheBuckets@secrel32+60(%eax)
	jmp	L2037
	.p2align 4,,10
	.p2align 3
L2053:
	movl	%ecx, %ebx
	movl	$1, %edx
	shrl	%ebx
	je	L2054
	movl	%ecx, %edx
	movl	%ebx, -92(%ebp)
	subl	%ebx, %edx
	movl	-88(%ebp), %ebx
	addl	(%ebx,%edx,4), %edi
	movl	%edx, %ebx
	leal	1(%edx), %edx
	movl	%edi, -96(%ebp)
	cmpl	%ecx, %edx
	jnb	L2068
	movl	-88(%ebp), %edx
	movl	-96(%ebp), %edi
	movl	4(%edx,%ebx,4), %edx
	movl	$16777215, (%edi)
	movl	%edx, 4(%edi)
	movl	_tlsCacheBuckets@secrel32(%eax), %edi
	addl	%edx, %edi
	leal	2(%ebx), %edx
	cmpl	_tlsCacheBuckets@secrel32+56(%eax), %edx
	jnb	L2055
	movl	-92(%ebp), %ebx
	movl	%esi, -88(%ebp)
	subl	%ecx, %ebx
	leal	16777214(%ebx), %esi
	.p2align 6
	.p2align 4
	.p2align 3
L2056:
	movl	_tlsCacheBuckets@secrel32+4(%eax), %ecx
	leal	(%esi,%edx), %ebx
	movl	(%ecx,%edx,4), %ecx
	movl	%ebx, (%edi)
	addl	$1, %edx
	movl	%ecx, 4(%edi)
	movl	_tlsCacheBuckets@secrel32(%eax), %edi
	addl	%ecx, %edi
	cmpl	_tlsCacheBuckets@secrel32+56(%eax), %edx
	jb	L2056
	movl	-88(%ebp), %esi
L2055:
	movl	-84(%ebp), %ebx
	movl	__tls_index, %edx
	movl	%esi, %eax
	sall	$6, %eax
	addl	(%ebx,%edx,4), %eax
	movl	$1, %ebx
	movl	_tlsCacheBuckets@secrel32+8(%eax), %ecx
	lock xaddl	%ebx, 8(%ecx)
	movl	-96(%ebp), %eax
	subl	12(%ecx), %eax
	movl	%eax, -88(%ebp)
	movlps	(%ecx), %xmm5
	movlps	%xmm5, -64(%ebp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	movl	%esi, -96(%ebp)
	movl	%ecx, %esi
L2058:
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	-88(%ebp), %ecx
	movl	%eax, (%edi)
	movl	%edx, 4(%edi)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	lock cmpxchg8b	(%esi)
	je	L2073
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	jmp	L2058
L2073:
	movl	-96(%ebp), %esi
	movl	-84(%ebp), %edi
	movl	__tls_index, %ebx
	movl	%esi, %eax
	sall	$6, %eax
	addl	(%edi,%ebx,4), %eax
	movl	_tlsCacheBuckets@secrel32+56(%eax), %edx
	subl	-92(%ebp), %edx
L2054:
	movl	-84(%ebp), %edi
	movl	__tls_index, %ebx
	movl	%esi, %eax
	sall	$6, %eax
	addl	(%edi,%ebx,4), %eax
	movl	-76(%ebp), %edi
	movl	_tlsCacheBuckets@secrel32+4(%eax), %ecx
	movl	%edi, (%ecx,%edx,4)
	addl	$1, %edx
	movl	%edx, _tlsCacheBuckets@secrel32+56(%eax)
	jmp	L2049
	.p2align 4,,10
	.p2align 3
L2041:
	movl	%ecx, %esi
	movl	$1, %edx
	shrl	%esi
	je	L2042
	movl	%ecx, %edx
	movl	%esi, -92(%ebp)
	subl	%esi, %edx
	movl	-96(%ebp), %esi
	addl	(%ebx,%edx,4), %esi
	movl	%esi, -96(%ebp)
	movl	%edx, %esi
	addl	$1, %edx
	cmpl	%ecx, %edx
	jnb	L2066
	movl	4(%ebx,%esi,4), %edx
	movl	-96(%ebp), %ebx
	movl	%esi, -100(%ebp)
	movl	%edx, 4(%ebx)
	movl	$16777215, (%ebx)
	movl	_tlsCacheBuckets@secrel32(%eax), %ebx
	addl	%edx, %ebx
	movl	-100(%ebp), %edx
	movl	%ebx, %esi
	addl	$2, %edx
	cmpl	_tlsCacheBuckets@secrel32+56(%eax), %edx
	jnb	L2043
	movl	-92(%ebp), %ebx
	movl	%edi, -100(%ebp)
	subl	%ecx, %ebx
	leal	16777214(%ebx), %edi
	.p2align 6
	.p2align 4
	.p2align 3
L2044:
	movl	_tlsCacheBuckets@secrel32+4(%eax), %ecx
	leal	(%edi,%edx), %ebx
	movl	(%ecx,%edx,4), %ecx
	movl	%ebx, (%esi)
	addl	$1, %edx
	movl	%ecx, 4(%esi)
	movl	_tlsCacheBuckets@secrel32(%eax), %esi
	addl	%ecx, %esi
	cmpl	_tlsCacheBuckets@secrel32+56(%eax), %edx
	jb	L2044
	movl	-100(%ebp), %edi
L2043:
	movl	-84(%ebp), %ebx
	movl	__tls_index, %edx
	movl	%edi, %eax
	sall	$6, %eax
	addl	(%ebx,%edx,4), %eax
	movl	$1, %ebx
	movl	_tlsCacheBuckets@secrel32+8(%eax), %eax
	movl	%eax, -100(%ebp)
	lock xaddl	%ebx, 8(%eax)
	movl	-96(%ebp), %ecx
	subl	12(%eax), %ecx
	movlps	(%eax), %xmm4
	movlps	%xmm4, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	movl	%esi, -96(%ebp)
L2046:
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	-96(%ebp), %esi
	movl	%eax, (%esi)
	movl	%edx, 4(%esi)
	movl	-100(%ebp), %esi
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	lock cmpxchg8b	(%esi)
	je	L2071
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	jmp	L2046
L2071:
	movl	-84(%ebp), %ebx
	movl	__tls_index, %esi
	movl	%edi, %eax
	sall	$6, %eax
	addl	(%ebx,%esi,4), %eax
	movl	_tlsCacheBuckets@secrel32+56(%eax), %edx
	subl	-92(%ebp), %edx
L2042:
	movl	%edi, %eax
	movl	__tls_index, %ebx
	movl	-84(%ebp), %edi
	sall	$6, %eax
	addl	(%edi,%ebx,4), %eax
	movl	-88(%ebp), %edi
	movl	_tlsCacheBuckets@secrel32+4(%eax), %ecx
	movl	%edi, (%ecx,%edx,4)
	addl	$1, %edx
	movl	_g_sm_heap, %ecx
	movl	%edx, _tlsCacheBuckets@secrel32+56(%eax)
	jmp	L2037
L2064:
	movl	-112(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	L2030
L2066:
	movl	-96(%ebp), %esi
	jmp	L2043
L2068:
	movl	-96(%ebp), %edi
	jmp	L2055
	.cfi_endproc
LFE122:
	.p2align 4
	.globl	_hicsetsubsttex.isra.0
	.def	_hicsetsubsttex.isra.0;	.scl	2;	.type	32;	.endef
_hicsetsubsttex.isra.0:
LFB132:
	.cfi_startproc
	cmpl	$30719, %eax
	ja	L2126
	cmpl	$255, %edx
	ja	L2126
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
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	_hicinitcounter, %edx
	movss	%xmm2, 20(%esp)
	movss	%xmm1, 16(%esp)
	movss	%xmm0, 12(%esp)
	testl	%edx, %edx
	je	L2129
L2108:
	movl	_hicreplc(,%esi,4), %ebx
	movzbl	_tilefilenum(%esi), %edx
	testl	%ebx, %ebx
	jne	L2112
	jmp	L2109
	.p2align 4
	.p2align 4,,10
	.p2align 3
L2117:
	movl	(%ebx), %ebx
	testl	%ebx, %ebx
	je	L2109
L2112:
	movzbl	32(%ebx), %eax
	cmpl	%ebp, %eax
	jne	L2117
	cmpb	%dl, 34(%ebx)
	jne	L2117
	movl	%ebx, 24(%esp)
	movl	4(%ebx), %eax
L2114:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 44
	subl	$4, %esp
	.cfi_def_cfa_offset 48
	movl	%edi, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %edx
	movl	%eax, %ebp
	movl	%edx, (%esp)
	movl	%edx, 8(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 44
	subl	$4, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	je	L2115
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 8(%esp)
	call	_strcpy
	movss	12(%esp), %xmm3
	movl	8(%esp), %ecx
	movss	LC14, %xmm1
	movzbl	56(%esp), %eax
	movss	16(%esp), %xmm4
	movss	20(%esp), %xmm5
	movb	$0, (%ecx,%ebp)
	movaps	%xmm1, %xmm0
	movb	%al, 33(%ebx)
	movl	24(%esp), %eax
	cmpltss	%xmm3, %xmm0
	movl	%ecx, 4(%ebx)
	movss	%xmm4, 12(%ebx)
	movss	%xmm5, 16(%ebx)
	andps	%xmm0, %xmm1
	andnps	%xmm3, %xmm0
	orps	%xmm1, %xmm0
	movss	%xmm0, 20(%ebx)
	movss	48(%esp), %xmm0
	movss	%xmm0, 24(%ebx)
	movss	52(%esp), %xmm0
	movss	%xmm0, 28(%ebx)
	testl	%eax, %eax
	je	L2130
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
L2129:
	.cfi_restore_state
	call	_hicinit
	jmp	L2108
	.p2align 4,,10
	.p2align 3
L2109:
	movl	$36, (%esp)
	movl	_g_sm_heap, %ecx
	movb	%dl, 8(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 44
	subl	$4, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L2113
	movzbl	8(%esp), %edx
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	movl	$0, 20(%eax)
	movl	$0, 24(%eax)
	movl	$0, 28(%eax)
	movl	$0, 32(%eax)
	movl	%ebp, %eax
	movb	%al, 32(%ebx)
	xorl	%eax, %eax
	movb	%dl, 34(%ebx)
	movl	$0, 24(%esp)
	jmp	L2114
	.p2align 4,,10
	.p2align 3
L2130:
	movl	_hicreplc(,%esi,4), %eax
	movl	%eax, (%ebx)
	movl	%ebx, _hicreplc(,%esi,4)
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
L2115:
	.cfi_restore_state
	movl	8(%esp), %eax
	call	__Z13handle_memerri
L2113:
	movl	$36, %eax
	call	__Z13handle_memerri
L2126:
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	ret
	.cfi_endproc
LFE132:
	.p2align 4
	.globl	_hictinting_applypixcolor
	.def	_hictinting_applypixcolor;	.scl	2;	.type	32;	.endef
_hictinting_applypixcolor:
LFB133:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movzbl	%dl, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	movl	%ecx, %edi
	pushl	%esi
	pushl	%ebx
	andl	$-8, %esp
	subl	$16, %esp
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movzbl	_hictinting+2(,%edx,8), %ecx
	movzbl	_hictinting+4(,%edx,8), %ebx
	movzbl	_hictinting+3(,%edx,8), %esi
	movl	%ecx, 8(%esp)
	movl	_globalnoeffect, %ecx
	testl	%ecx, %ecx
	jne	L2165
	movzwl	_hictinting(,%edx,8), %edx
	movl	%edx, %ecx
	andl	$192, %ecx
	movl	%ecx, 4(%esp)
	movl	%edi, %ecx
	testb	%cl, %cl
	jne	L2136
	movl	8(%esp), %ecx
	testb	$1, _glinfo+28
	movl	%ebx, %edi
	cmove	%ecx, %edi
	cmovne	%ecx, %ebx
	movl	%edi, 8(%esp)
L2136:
	testb	$1, %dl
	je	L2137
	movzbl	2(%eax), %edi
	movl	%edi, (%esp)
	movzbl	1(%eax), %edi
	fildl	(%esp)
	fmull	LC41
	movl	%edi, (%esp)
	fildl	(%esp)
	fmull	LC42
	movzbl	(%eax), %edi
	fnstcw	14(%esp)
	movl	%edi, (%esp)
	movzwl	14(%esp), %edi
	faddp	%st, %st(1)
	fildl	(%esp)
	fmull	LC43
	orw	$3072, %di
	movw	%di, 12(%esp)
	faddp	%st, %st(1)
	fldcw	12(%esp)
	fistps	(%esp)
	fldcw	14(%esp)
	movzbl	(%esp), %ecx
	movb	%cl, 2(%eax)
	movb	%cl, (%eax)
	movb	%cl, 1(%eax)
L2137:
	testb	$2, %dl
	je	L2138
	movzwl	(%eax), %edi
	notb	2(%eax)
	notl	%edi
	movw	%di, (%eax)
L2138:
	andl	$4, %edx
	je	L2135
	movzbl	2(%eax), %edx
	movl	$255, %edi
	imull	%ebx, %edx
	sarl	$6, %edx
	cmpl	%edi, %edx
	cmovg	%edi, %edx
	movb	%dl, 2(%eax)
	movzbl	1(%eax), %edx
	imull	%esi, %edx
	sarl	$6, %edx
	cmpl	%edi, %edx
	cmovg	%edi, %edx
	movb	%dl, 1(%eax)
	movzbl	(%eax), %edx
	imull	8(%esp), %edx
	sarl	$6, %edx
	cmpl	%edi, %edx
	cmovg	%edi, %edx
	movb	%dl, (%eax)
L2135:
	movl	4(%esp), %ecx
	cmpl	$128, %ecx
	je	L2140
	cmpl	$192, %ecx
	je	L2141
	cmpl	$64, %ecx
	jne	L2165
	movl	$255, %edx
	movzbl	2(%eax), %edi
	movl	%edx, %ecx
	subl	%edi, %ecx
	movl	%edx, %edi
	subl	%ebx, %edi
	movl	%ecx, %ebx
	imull	%edi, %ebx
	movzbl	1(%eax), %edi
	sarl	$8, %ebx
	notl	%ebx
	movb	%bl, 2(%eax)
	movl	%edx, %ebx
	subl	%edi, %ebx
	movl	%edx, %edi
	subl	%esi, %edi
	movzbl	(%eax), %esi
	imull	%edi, %ebx
	sarl	$8, %ebx
	notl	%ebx
	movb	%bl, 1(%eax)
	movl	%edx, %ebx
	subl	8(%esp), %edx
	subl	%esi, %ebx
	imull	%ebx, %edx
	sarl	$8, %edx
	notl	%edx
	movb	%dl, (%eax)
L2165:
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
L2141:
	.cfi_restore_state
	movzbl	2(%eax), %edi
	cmpl	$127, %ebx
	jle	L2167
	movl	$255, %edx
	movl	%edx, %ecx
	subl	%ebx, %edx
	movzbl	1(%eax), %ebx
	subl	%edi, %ecx
	imull	%ecx, %edx
	sarl	$7, %edx
	notl	%edx
	movb	%dl, 2(%eax)
	cmpl	$127, %esi
	jg	L2150
L2169:
	imull	%esi, %ebx
	movl	8(%esp), %esi
	sarl	$7, %ebx
	movl	%ebx, %edx
	movzbl	(%eax), %ebx
	movb	%dl, 1(%eax)
	cmpl	$127, %esi
	jg	L2152
L2170:
	imull	%esi, %ebx
	sarl	$7, %ebx
	movl	%ebx, %edx
	movb	%dl, (%eax)
L2168:
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
L2140:
	.cfi_restore_state
	movzbl	2(%eax), %edi
	movl	%edi, %edx
	testb	%dl, %dl
	js	L2142
	imull	%ebx, %edi
	movzbl	1(%eax), %ebx
	movl	%edi, %edx
	sarl	$7, %edx
	movb	%dl, 2(%eax)
	testb	%bl, %bl
	js	L2144
L2171:
	imull	%esi, %ebx
	movl	%ebx, %edx
	sarl	$7, %edx
	movb	%dl, 1(%eax)
	movzbl	(%eax), %edx
	testb	%dl, %dl
	js	L2146
L2172:
	imull	8(%esp), %edx
	sarl	$7, %edx
	movb	%dl, (%eax)
	jmp	L2168
	.p2align 4,,10
	.p2align 3
L2167:
	imull	%ebx, %edi
	movzbl	1(%eax), %ebx
	movl	%edi, %edx
	sarl	$7, %edx
	movb	%dl, 2(%eax)
	cmpl	$127, %esi
	jle	L2169
L2150:
	movl	$255, %edi
	movl	%edi, %edx
	subl	%esi, %edi
	movl	8(%esp), %esi
	subl	%ebx, %edx
	movzbl	(%eax), %ebx
	imull	%edi, %edx
	sarl	$7, %edx
	notl	%edx
	movb	%dl, 1(%eax)
	cmpl	$127, %esi
	jle	L2170
L2152:
	movl	$255, %esi
	movl	%esi, %edx
	subl	8(%esp), %esi
	subl	%ebx, %edx
	imull	%esi, %edx
	sarl	$7, %edx
	notl	%edx
	movb	%dl, (%eax)
	jmp	L2168
	.p2align 4,,10
	.p2align 3
L2142:
	movl	$255, %edx
	movl	%edx, %ecx
	subl	%ebx, %edx
	movzbl	1(%eax), %ebx
	subl	%edi, %ecx
	imull	%ecx, %edx
	sarl	$7, %edx
	notl	%edx
	movb	%dl, 2(%eax)
	testb	%bl, %bl
	jns	L2171
L2144:
	movl	$255, %edi
	movl	%edi, %edx
	subl	%esi, %edi
	subl	%ebx, %edx
	imull	%edi, %edx
	sarl	$7, %edx
	notl	%edx
	movb	%dl, 1(%eax)
	movzbl	(%eax), %edx
	testb	%dl, %dl
	jns	L2172
L2146:
	movl	$255, %esi
	movl	%esi, %ebx
	subl	8(%esp), %esi
	subl	%edx, %ebx
	imull	%esi, %ebx
	movl	%ebx, %edx
	sarl	$7, %edx
	notl	%edx
	movb	%dl, (%eax)
	jmp	L2168
	.cfi_endproc
LFE133:
	.p2align 4
	.globl	_hicclearsubst.part.0.isra.0
	.def	_hicclearsubst.part.0.isra.0;	.scl	2;	.type	32;	.endef
_hicclearsubst.part.0.isra.0:
LFB135:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -20
	movl	_hicreplc(,%eax,4), %ebx
	testl	%ebx, %ebx
	je	L2173
	movl	%edi, 12(%esp)
	movl	%eax, %ecx
	.cfi_offset 7, -12
	xorl	%edi, %edi
	movl	%esi, 8(%esp)
	.cfi_offset 6, -16
	movzbl	_tilefilenum(%eax), %esi
	jmp	L2177
	.p2align 5
	.p2align 4,,10
	.p2align 3
L2184:
	movl	(%ebx), %eax
	movl	%ebx, %edi
	testl	%eax, %eax
	je	L2194
	movl	%eax, %ebx
L2177:
	movzbl	32(%ebx), %eax
	cmpl	%edx, %eax
	jne	L2184
	movl	%esi, %eax
	cmpb	%al, 34(%ebx)
	jne	L2184
	movl	%ebp, 16(%esp)
	.cfi_offset 5, -8
	movl	4(%ebx), %eax
	movl	%ecx, %ebp
	movl	$5, %esi
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	movl	8(%ebx), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	testl	%eax, %eax
	je	L2181
	.p2align 4
	.p2align 3
L2178:
	movl	(%eax,%esi,4), %eax
	movl	_g_sm_heap, %ecx
	subl	$1, %esi
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	movl	8(%ebx), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	cmpl	$-1, %esi
	jne	L2178
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
L2181:
	movl	(%ebx), %eax
	testl	%edi, %edi
	je	L2179
	movl	%eax, (%edi)
L2180:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	8(%esp), %esi
	.cfi_restore 6
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	16(%esp), %ebp
	.cfi_restore 5
L2173:
	movl	4(%esp), %ebx
	addl	$20, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2179:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%eax, _hicreplc(,%ebp,4)
	jmp	L2180
	.p2align 4,,10
	.p2align 3
L2194:
	.cfi_restore 5
	movl	8(%esp), %esi
	.cfi_restore 6
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	4(%esp), %ebx
	addl	$20, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE135:
	.p2align 4
	.globl	_hicsetskybox.part.0.isra.0
	.def	_hicsetskybox.part.0.isra.0;	.scl	2;	.type	32;	.endef
_hicsetskybox.part.0.isra.0:
LFB137:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movl	%ebp, 44(%esp)
	.cfi_offset 5, -8
	movl	%eax, %ebp
	leal	20(%ecx), %eax
	cmpl	$0, (%eax)
	je	L2195
L2228:
	cmpl	%eax, %ecx
	je	L2227
	subl	$4, %eax
	cmpl	$0, (%eax)
	jne	L2228
L2195:
	movl	44(%esp), %ebp
	addl	$48, %esp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2227:
	.cfi_restore_state
	movl	%ecx, 16(%esp)
	movl	_hicinitcounter, %ecx
	movl	%esi, 36(%esp)
	.cfi_offset 6, -16
	movl	%edx, %esi
	movl	%ebx, 32(%esp)
	movl	%edi, 40(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	testl	%ecx, %ecx
	je	L2229
L2198:
	movl	_hicreplc(,%ebp,4), %ebx
	movzbl	_tilefilenum(%ebp), %edx
	testl	%ebx, %ebx
	jne	L2202
	jmp	L2199
	.p2align 4
	.p2align 4,,10
	.p2align 3
L2214:
	movl	(%ebx), %ebx
	testl	%ebx, %ebx
	je	L2199
L2202:
	movzbl	32(%ebx), %eax
	cmpl	%esi, %eax
	jne	L2214
	cmpb	%dl, 34(%ebx)
	jne	L2214
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	L2213
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L2207:
	movl	(%eax,%esi,4), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 48
	movl	8(%ebx), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	movl	$0, (%eax,%esi,4)
	addl	$1, %esi
	movl	8(%ebx), %eax
	cmpl	$6, %esi
	jne	L2207
	movl	%ebx, %edi
L2206:
	movl	%ebx, 20(%esp)
	xorl	%esi, %esi
	movl	%edi, 24(%esp)
	movl	%eax, 8(%esp)
	movl	%ebp, 28(%esp)
L2211:
	movl	16(%esp), %eax
	movl	(%eax,%esi,4), %ebp
	movl	%ebp, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %ebx
	movl	%eax, %edi
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 48
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	testl	%eax, %eax
	je	L2208
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 12(%esp)
	call	_strcpy
	movl	12(%esp), %ecx
	movl	8(%esp), %eax
	movb	$0, (%ecx,%edi)
	movl	%ecx, (%eax,%esi,4)
	addl	$1, %esi
	cmpl	$6, %esi
	je	L2230
	movl	20(%esp), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%esp)
	jmp	L2211
	.p2align 4,,10
	.p2align 3
L2230:
	movl	24(%esp), %edx
	movl	20(%esp), %ebx
	movss	LC14, %xmm0
	movl	52(%esp), %eax
	testl	%edx, %edx
	movl	28(%esp), %ebp
	movb	%al, 33(%ebx)
	movss	%xmm0, 12(%ebx)
	movss	%xmm0, 16(%ebx)
	je	L2231
	movl	32(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	36(%esp), %esi
	.cfi_restore 6
	movl	40(%esp), %edi
	.cfi_restore 7
	movl	44(%esp), %ebp
	addl	$48, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2208:
	.cfi_restore_state
	movl	%ebx, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L2229:
	call	_hicinit
	jmp	L2198
	.p2align 4,,10
	.p2align 3
L2231:
	movl	_hicreplc(,%ebp,4), %eax
	movl	%eax, (%ebx)
	movl	%ebx, _hicreplc(,%ebp,4)
	movl	32(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	36(%esp), %esi
	.cfi_restore 6
	movl	40(%esp), %edi
	.cfi_restore 7
	movl	44(%esp), %ebp
	addl	$48, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2199:
	.cfi_restore_state
	movl	$36, (%esp)
	movl	_g_sm_heap, %ecx
	movb	%dl, 8(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 48
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L2203
	movzbl	8(%esp), %edx
	movl	$0, (%eax)
	xorl	%edi, %edi
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	movl	$0, 20(%eax)
	movl	$0, 24(%eax)
	movl	$0, 28(%eax)
	movl	$0, 32(%eax)
	movl	%esi, %eax
	movb	%al, 32(%ebx)
	movb	%dl, 34(%ebx)
L2204:
	movl	$24, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 48
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	testl	%eax, %eax
	je	L2205
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	movl	$0, 20(%eax)
	movl	%eax, 8(%ebx)
	jmp	L2206
L2203:
	movl	$36, %eax
	call	__Z13handle_memerri
L2205:
	movl	$24, %eax
	call	__Z13handle_memerri
L2213:
	movl	%ebx, %edi
	jmp	L2204
	.cfi_endproc
LFE137:
	.p2align 4
	.globl	_klzw_read_compressed.constprop.0.isra.0
	.def	_klzw_read_compressed.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
_klzw_read_compressed.constprop.0.isra.0:
LFB140:
	.cfi_startproc
	subl	$56, %esp
	.cfi_def_cfa_offset 60
	movl	%ebp, 52(%esp)
	.cfi_offset 5, -8
	movl	%eax, %ebp
	movl	%ecx, %eax
	imull	%edx, %eax
	cmpl	$16385, %edx
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	cmovge	%eax, %ecx
	movl	$1, %eax
	movl	%ebx, 40(%esp)
	cmovl	%edx, %eax
	leal	38(%esp), %edx
	movl	%ecx, 24(%esp)
	movl	$2, %ecx
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	60(%esp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$2, %eax
	jne	L2232
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movswl	38(%esp), %ecx
	movl	$__ZL10lzwcompbuf, %edx
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	60(%esp), %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	%esi, 44(%esp)
	movl	%edi, 48(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	__Z14kread_internaliPviPKhPKiPi
	movl	%eax, %edx
	movswl	38(%esp), %eax
	cmpl	%edx, %eax
	je	L2257
	.p2align 4
	.p2align 3
L2255:
	movl	44(%esp), %esi
	.cfi_restore 6
	movl	48(%esp), %edi
	.cfi_restore 7
L2232:
	movl	40(%esp), %ebx
	movl	52(%esp), %ebp
	addl	$56, %esp
	.cfi_restore 3
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
L2257:
	.cfi_def_cfa_offset 60
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	__ZL13lzwuncompressPKciPc.constprop.0
	movl	%ebx, 8(%esp)
	movl	$__ZL9lzwrawbuf, 4(%esp)
	movl	%ebp, (%esp)
	movl	%eax, 20(%esp)
	call	_memcpy
	cmpl	$1, 24(%esp)
	jle	L2255
	leal	-5(%ebx), %eax
	movl	$1, 16(%esp)
	andl	$-4, %eax
	leal	4(%eax), %esi
	xorl	%eax, %eax
	cmpl	$3, %ebx
	cmovg	%esi, %eax
	movl	%esi, 32(%esp)
	movl	%ebx, %esi
	movl	%eax, 28(%esp)
	cmpl	%esi, 20(%esp)
	jle	L2258
	.p2align 4
	.p2align 3
L2237:
	movl	%esi, %ecx
	addl	%ebx, %esi
	cmpl	$3, %ebx
	jg	L2259
L2240:
	movl	28(%esp), %edi
	movl	%edi, %eax
	cmpl	%edi, %ebx
	jle	L2244
L2241:
	movl	%ebx, 12(%esp)
	leal	0(%ebp,%eax), %edx
	.p2align 5
	.p2align 4
	.p2align 3
L2243:
	movl	12(%esp), %edi
	movzbl	(%edx), %ebx
	addl	$1, %edx
	addb	__ZL9lzwrawbuf(%ecx,%eax), %bl
	addl	$1, %eax
	movb	%bl, -1(%edx,%edi)
	cmpl	%eax, %edi
	jg	L2243
	movl	%edi, %ebx
L2244:
	addl	$1, 16(%esp)
	movl	24(%esp), %edi
	addl	%ebx, %ebp
	cmpl	%edi, 16(%esp)
	je	L2255
	cmpl	%esi, 20(%esp)
	jg	L2237
L2258:
	leal	38(%esp), %eax
	movl	$2, 8(%esp)
	movl	%eax, 4(%esp)
	movl	60(%esp), %eax
	movl	%eax, (%esp)
	call	__ZL12kdfread_funciPvi.lto_priv.0
	cmpl	$2, %eax
	jne	L2255
	movswl	38(%esp), %eax
	movl	$__ZL10lzwcompbuf, 4(%esp)
	movl	%eax, 8(%esp)
	movl	60(%esp), %eax
	movl	%eax, (%esp)
	call	__ZL12kdfread_funciPvi.lto_priv.0
	movswl	38(%esp), %edx
	cmpl	%edx, %eax
	jne	L2255
	call	__ZL13lzwuncompressPKciPc.constprop.0
	movl	%ebx, %esi
	xorl	%ecx, %ecx
	movl	%eax, 20(%esp)
	cmpl	$3, %ebx
	jle	L2240
	.p2align 4
	.p2align 3
L2259:
	cmpl	$4, %ebx
	je	L2246
	movl	32(%esp), %edi
	movl	%ecx, 12(%esp)
	movl	%ebp, %eax
	leal	__ZL9lzwrawbuf(%ecx), %edx
	addl	%ebp, %edi
	.p2align 6
	.p2align 4
	.p2align 3
L2242:
	movzbl	(%edx), %ecx
	addb	(%eax), %cl
	addl	$4, %eax
	addl	$4, %edx
	movb	%cl, -4(%eax,%ebx)
	movzbl	-3(%edx), %ecx
	addb	-3(%eax), %cl
	movb	%cl, -3(%eax,%ebx)
	movzbl	-2(%edx), %ecx
	addb	-2(%eax), %cl
	movb	%cl, -2(%eax,%ebx)
	movzbl	-1(%edx), %ecx
	addb	-1(%eax), %cl
	movb	%cl, -1(%eax,%ebx)
	cmpl	%eax, %edi
	jne	L2242
	movl	12(%esp), %ecx
	jmp	L2240
L2246:
	xorl	%eax, %eax
	jmp	L2241
	.cfi_endproc
LFE140:
	.p2align 4
	.globl	_klzw_write_compressed.constprop.0
	.def	_klzw_write_compressed.constprop.0;	.scl	2;	.type	32;	.endef
_klzw_write_compressed.constprop.0:
LFB144:
	.cfi_startproc
	subl	$64, %esp
	.cfi_def_cfa_offset 68
	movl	%ebx, 48(%esp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	%esi, 52(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	%edi, 56(%esp)
	movl	%ecx, 16(%esp)
	cmpl	$16384, %edx
	.cfi_offset 7, -12
	jle	L2261
	movzbl	(%eax), %eax
	movl	%ecx, %edi
	movl	$__ZL12dfwrite_funciPKvi.lto_priv.0, 36(%esp)
	movl	$1, %ecx
	imull	%edx, %edi
	movb	%al, __ZL9lzwrawbuf
	movl	68(%esp), %eax
	movl	%edi, 16(%esp)
	movl	%eax, 40(%esp)
	cmpl	$1, %edi
	jle	L2263
	movl	%ebp, 60(%esp)
	movl	$1, %ebx
	movl	$1, %ecx
	movl	$16383, 24(%esp)
	movl	$1, 20(%esp)
	.cfi_offset 5, -8
	jmp	L2262
L2261:
	.cfi_restore 5
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$__ZL9lzwrawbuf, (%esp)
	movl	%edx, 20(%esp)
	call	_memcpy
	movl	68(%esp), %eax
	movl	$__ZL12dfwrite_funciPKvi.lto_priv.0, 36(%esp)
	movl	%ebx, %ecx
	movl	%eax, 40(%esp)
	movl	$16384, %eax
	subl	%ebx, %eax
	movl	%eax, 24(%esp)
	cmpl	%eax, %ebx
	jle	L2264
	leal	36(%esp), %eax
	movl	%ebx, 44(%esp)
	call	__ZL13compress_partP13compress_info
	movl	44(%esp), %ecx
L2264:
	cmpl	$1, 16(%esp)
	jle	L2265
	movl	%ebp, 60(%esp)
	.cfi_offset 5, -8
L2262:
	leal	-5(%ebx), %eax
	movl	$1, %ebp
	andl	$-4, %eax
	leal	4(%eax), %edi
	xorl	%eax, %eax
	cmpl	$3, %ebx
	cmovg	%edi, %eax
	movl	%edi, 32(%esp)
	movl	%eax, 28(%esp)
	.p2align 4
	.p2align 3
L2273:
	cmpl	$3, %ebx
	jg	L2284
L2266:
	movl	28(%esp), %edi
	movl	%edi, %eax
	cmpl	%ebx, %edi
	jge	L2272
L2267:
	movl	%ecx, 12(%esp)
	leal	(%esi,%eax), %edx
	.p2align 5
	.p2align 4
	.p2align 3
L2269:
	movl	12(%esp), %edi
	movzbl	(%edx,%ebx), %ecx
	addl	$1, %edx
	subb	-1(%edx), %cl
	movb	%cl, __ZL9lzwrawbuf(%edi,%eax)
	addl	$1, %eax
	cmpl	%ebx, %eax
	jl	L2269
	movl	%edi, %ecx
L2272:
	addl	%ebx, %ecx
	cmpl	24(%esp), %ecx
	jg	L2285
L2271:
	addl	20(%esp), %esi
	addl	$1, %ebp
	cmpl	16(%esp), %ebp
	jl	L2273
	movl	60(%esp), %ebp
	.cfi_restore 5
L2265:
	testl	%ecx, %ecx
	jg	L2263
	movl	48(%esp), %ebx
	movl	52(%esp), %esi
	movl	56(%esp), %edi
	addl	$64, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L2263:
	.cfi_restore_state
	leal	36(%esp), %eax
	movl	%ecx, 44(%esp)
	call	__ZL13compress_partP13compress_info
	movl	48(%esp), %ebx
	movl	52(%esp), %esi
	movl	56(%esp), %edi
	addl	$64, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2285:
	.cfi_def_cfa_offset 68
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	leal	36(%esp), %eax
	movl	%ecx, 44(%esp)
	call	__ZL13compress_partP13compress_info
	movl	44(%esp), %ecx
	jmp	L2271
	.p2align 4,,10
	.p2align 3
L2284:
	cmpl	$4, %ebx
	je	L2277
	movl	32(%esp), %edi
	movl	%ecx, 12(%esp)
	movl	%esi, %eax
	leal	__ZL9lzwrawbuf(%ecx), %edx
	addl	%esi, %edi
	.p2align 6
	.p2align 4
	.p2align 3
L2268:
	movzbl	(%eax,%ebx), %ecx
	subb	(%eax), %cl
	addl	$4, %eax
	addl	$4, %edx
	movb	%cl, -4(%edx)
	movzbl	-3(%eax,%ebx), %ecx
	subb	-3(%eax), %cl
	movb	%cl, -3(%edx)
	movzbl	-2(%eax,%ebx), %ecx
	subb	-2(%eax), %cl
	movb	%cl, -2(%edx)
	movzbl	-1(%eax,%ebx), %ecx
	subb	-1(%eax), %cl
	movb	%cl, -1(%edx)
	cmpl	%eax, %edi
	jne	L2268
	movl	12(%esp), %ecx
	jmp	L2266
L2277:
	xorl	%eax, %eax
	jmp	L2267
	.cfi_endproc
LFE144:
	.p2align 4
	.globl	__ZL17suckbitsnextblockv.lto_priv.0
	.def	__ZL17suckbitsnextblockv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL17suckbitsnextblockv.lto_priv.0:
LFB145:
	.cfi_startproc
	movl	__ZL10zipfilmode.lto_priv.0, %eax
	testl	%eax, %eax
	jne	L2295
	movl	__ZL7nfilptr, %edx
	movl	__ZL6bitpos.lto_priv.0, %eax
	testl	%edx, %edx
	je	L2289
	movl	%edx, __ZL6filptr.lto_priv.0
	movl	__ZL7nbitpos, %edx
	movl	$0, __ZL7nfilptr
	leal	-32(,%edx,8), %edx
	subl	%edx, %eax
	movl	%eax, __ZL6bitpos.lto_priv.0
	ret
	.p2align 4,,10
	.p2align 3
L2289:
	movl	__ZL6filptr.lto_priv.0, %edx
	movl	8(%edx), %ecx
	bswap	%ecx
	movl	%ecx, __ZL7nbitpos
	leal	12(%edx,%ecx), %ecx
	movl	%ecx, __ZL7nfilptr
	movl	(%edx), %ecx
	movl	%ecx, __ZL7fakebuf
	cmpl	$1413563465, 12(%edx)
	jne	L2290
	movl	16(%edx), %edx
	movl	%edx, __ZL7fakebuf+4
L2290:
	movl	$__ZL7fakebuf+4, __ZL6filptr.lto_priv.0
	subl	$32, %eax
	movl	%eax, __ZL6bitpos.lto_priv.0
	ret
	.p2align 4,,10
	.p2align 3
L2295:
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	olinbuf+131068, %eax
	movl	_kzfs+12, %edx
	subl	_kzfs+16, %edx
	movl	$1, 8(%esp)
	movl	%eax, olinbuf
	movl	$131068, %eax
	cmpl	%eax, %edx
	movl	$olinbuf+4, (%esp)
	cmova	%eax, %edx
	movl	_kzfs, %eax
	movl	%edx, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	call	_fread
	movl	__ZL6bitpos.lto_priv.0, %eax
	movl	16(%esp), %edx
	addl	%edx, _kzfs+16
	subl	$1048544, %eax
	movl	%eax, __ZL6bitpos.lto_priv.0
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE145:
	.p2align 4
	.globl	__ZL9hufgetsymPiPKi.lto_priv.0
	.def	__ZL9hufgetsymPiPKi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL9hufgetsymPiPKi.lto_priv.0:
LFB146:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%edx, %edi
	xorl	%edx, %edx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	.p2align 4
	.p2align 3
L2298:
	movl	__ZL6bitpos.lto_priv.0, %eax
	movl	__ZL6filptr.lto_priv.0, %ebp
	leal	(%edx,%edx), %esi
	movl	%eax, %edx
	movl	%eax, %ecx
	sarl	$3, %edx
	andl	$7, %ecx
	movl	0(%ebp,%edx), %edx
	shrl	%cl, %edx
	andl	$1, %edx
	addl	$1, %eax
	movl	%eax, __ZL6bitpos.lto_priv.0
	movl	%edx, %ebp
	js	L2297
	call	__ZL17suckbitsnextblockv.lto_priv.0
L2297:
	leal	(%esi,%ebp), %eax
	addl	(%edi), %eax
	addl	$4, %edi
	movl	%eax, %edx
	subl	(%edi), %edx
	testl	%edx, %edx
	jns	L2298
	movl	(%ebx,%eax,4), %eax
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
LFE146:
	.p2align 4
	.globl	__ZL11qhufgencodePKiS0_PiPhi.lto_priv.0
	.def	__ZL11qhufgencodePKiS0_PiPhi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL11qhufgencodePKiS0_PiPhi.lto_priv.0:
LFB149:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%ebp, %ebp
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %ebx
	subl	$36, %esp
	.cfi_def_cfa_offset 56
	movl	60(%esp), %edx
	movl	56(%esp), %edi
	movl	%eax, 32(%esp)
	movl	%ecx, 4(%esp)
	movl	60(%esp), %eax
	addl	$1, %edx
	movl	%ebx, 16(%esp)
	movl	$1, %ebx
	movl	%edx, 28(%esp)
	leal	__ZL8pow2mask.lto_priv.0(,%eax,4), %eax
	.p2align 4
	.p2align 3
L2305:
	movl	16(%esp), %edx
	movl	-4(%edx,%ebx,4), %ecx
	cmpl	(%edx,%ebx,4), %ecx
	jge	L2302
	movl	-4(%eax), %esi
	movl	%eax, 24(%esp)
	movl	%ebx, %edx
	movl	%ebx, 12(%esp)
	movl	%esi, 20(%esp)
	movl	32(%esp), %esi
	leal	(%esi,%ecx,4), %esi
	.p2align 4
	.p2align 3
L2304:
	movl	20(%esp), %eax
	movl	%ecx, 8(%esp)
	addl	%ebp, %eax
	movl	%eax, (%esp)
	.p2align 4
	.p2align 3
L2303:
	movl	60(%esp), %ecx
	xorl	%eax, %eax
	movl	%ebp, %ebx
/APP
 # 164 "source/build/src/kplib.cpp" 1
	xorl %eax, %eax
	0:
	shrl $1, %ebx
	adcl %eax, %eax
	subl $1, %ecx
	jnz 0b
 # 0 "" 2
/NO_APP
	movl	(%esi), %ecx
	movl	4(%esp), %ebx
	addl	$1, %ebp
	movl	%ecx, (%ebx,%eax,4)
	movb	%dl, (%edi,%eax)
	cmpl	%ebp, (%esp)
	jge	L2303
	movl	8(%esp), %ecx
	movl	16(%esp), %eax
	addl	$4, %esi
	movl	12(%esp), %ebx
	addl	$1, %ecx
	cmpl	%ecx, (%eax,%ebx,4)
	jg	L2304
	movl	24(%esp), %eax
L2302:
	addl	$1, %ebx
	subl	$4, %eax
	cmpl	28(%esp), %ebx
	jne	L2305
	movl	60(%esp), %eax
	movl	__ZL8pow2mask.lto_priv.0(,%eax,4), %edx
	cmpl	%ebp, %edx
	jl	L2301
	.p2align 4
	.p2align 3
L2307:
	movl	60(%esp), %ecx
	xorl	%eax, %eax
	movl	%ebp, %ebx
/APP
 # 164 "source/build/src/kplib.cpp" 1
	xorl %eax, %eax
	0:
	shrl $1, %ebx
	adcl %eax, %eax
	subl $1, %ecx
	jnz 0b
 # 0 "" 2
/NO_APP
	addl	$1, %ebp
	movb	$0, (%edi,%eax)
	cmpl	%ebp, %edx
	jge	L2307
L2301:
	addl	$36, %esp
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
LFE149:
	.p2align 4
	.globl	__ZL10hufgencodePKiiPiS1_.lto_priv.0
	.def	__ZL10hufgencodePKiiPiS1_.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL10hufgencodePKiiPiS1_.lto_priv.0:
LFB150:
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
	xorl	%eax, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	addl	$-128, %esp
	.cfi_def_cfa_offset 148
	movl	%ecx, (%esp)
	movl	148(%esp), %ebx
L2314:
	movl	$0, 4(%esp,%eax)
	movl	$0, 8(%esp,%eax)
	movl	$0, 12(%esp,%eax)
	movl	$0, 16(%esp,%eax)
	addl	$16, %eax
	cmpl	$112, %eax
	jb	L2314
	leal	-4(%esi), %ecx
	movl	$0, 4(%esp,%eax)
	movl	$0, 8(%esp,%eax)
	movl	$0, 12(%esp,%eax)
	leal	(%ecx,%edi,4), %eax
	.p2align 4
	.p2align 4
	.p2align 3
L2316:
	movl	(%eax), %edx
	subl	$4, %eax
	addl	$1, 4(%esp,%edx,4)
	cmpl	%eax, %ecx
	jne	L2316
	movl	$0, (%ebx)
	leal	4(%esp), %edx
	leal	4(%ebx), %ecx
	xorl	%eax, %eax
	movl	$0, 4(%esp)
	leal	116(%esp), %ebp
	.p2align 6
	.p2align 4
	.p2align 3
L2317:
	addl	(%edx), %eax
	addl	$16, %edx
	addl	$16, %ecx
	movl	%eax, -16(%ecx)
	addl	-12(%edx), %eax
	movl	%eax, -12(%ecx)
	addl	-8(%edx), %eax
	movl	%eax, -8(%ecx)
	addl	-4(%edx), %eax
	movl	%eax, -4(%ecx)
	cmpl	%edx, %ebp
	jne	L2317
	movl	116(%esp), %eax
	addl	112(%ebx), %eax
	movl	%eax, 116(%ebx)
	addl	120(%esp), %eax
	movl	%eax, 120(%ebx)
	addl	124(%esp), %eax
	movl	%eax, 124(%ebx)
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L2319:
	movl	(%esi,%eax,4), %edx
	testl	%edx, %edx
	je	L2318
	leal	(%ebx,%edx,4), %ecx
	movl	(%ecx), %edx
	leal	1(%edx), %ebp
	movl	%ebp, (%ecx)
	movl	(%esp), %ecx
	movl	%eax, (%ecx,%edx,4)
L2318:
	addl	$1, %eax
	cmpl	%eax, %edi
	jne	L2319
	subl	$-128, %esp
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
LFE150:
	.p2align 4
	.globl	__ZL13initpngtablesv.lto_priv.0
	.def	__ZL13initpngtablesv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL13initpngtablesv.lto_priv.0:
LFB151:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	movl	%edi, -4(%ebp)
	movl	%ebx, -12(%ebp)
	.cfi_offset 7, -12
	.cfi_offset 3, -20
	movl	$1, %ebx
	.p2align 6
	.p2align 4
	.p2align 3
L2329:
	movl	$1, %edx
	movl	%ebx, __ZL5hxbit.lto_priv.0+4(,%eax,8)
	sall	%cl, %edx
	movl	%ecx, __ZL5hxbit.lto_priv.0(,%eax,8)
	addl	%edx, %ebx
	xorl	%edx, %edx
	cmpl	$1, %eax
	setne	%dl
	andl	%eax, %edx
	addl	$1, %eax
	addl	%edx, %ecx
	cmpl	$30, %eax
	jne	L2329
	xorl	%ecx, %ecx
	movl	$3, %ebx
	movl	$257, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L2330:
	movl	$1, %edx
	movl	%ebx, __ZL5hxbit.lto_priv.0-1812(,%eax,8)
	sall	%cl, %edx
	movl	%ecx, __ZL5hxbit.lto_priv.0-1816(,%eax,8)
	addl	%edx, %ebx
	testb	$3, %al
	sete	%dl
	movl	%edx, %edi
	xorl	%edx, %edx
	cmpl	$263, %eax
	setg	%dl
	addl	$1, %eax
	andl	%edi, %edx
	addl	%edx, %ecx
	cmpl	$285, %eax
	jne	L2330
	xorl	%eax, %eax
	movl	$258, %edx
	movl	%eax, __ZL5hxbit.lto_priv.0+464
	xorl	%eax, %eax
	movl	%edx, __ZL5hxbit.lto_priv.0+468
	movl	$512, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L2331:
	movl	%eax, abstab10(,%edx,4)
	movl	%eax, abstab10+2048(,%eax,4)
	addl	$1, %eax
	subl	$1, %edx
	jne	L2331
	movl	-12(%ebp), %ebx
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE151:
	.p2align 4
	.globl	__ZL7istargaPKhi.lto_priv.0
	.def	__ZL7istargaPKhi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL7istargaPKhi.lto_priv.0:
LFB152:
	.cfi_startproc
	cmpl	$18, %edx
	jle	L2352
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	cmpb	$1, 1(%eax)
	jbe	L2353
L2339:
	xorl	%eax, %eax
L2336:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2352:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L2353:
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movzbl	2(%eax), %ecx
	cmpb	$11, %cl
	ja	L2339
	movl	$3598, %eax
	sarl	%cl, %eax
	andl	$1, %eax
	je	L2336
	movzbl	16(%ebx), %eax
	testb	$7, %al
	jne	L2339
	subl	$1, %eax
	cmpb	$31, %al
	ja	L2339
	xorl	%eax, %eax
	cmpb	$63, 17(%ebx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	setbe	%al
	ret
	.cfi_endproc
LFE152:
	.section	.text.unlikely,"x"
LCOLDB53:
	.text
LHOTB53:
	.p2align 4
	.globl	_kprender
	.def	_kprender;	.scl	2;	.type	32;	.endef
_kprender:
LFB153:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$124, %esp
	movl	$0, __ZL6paleng
	movl	%edi, -4(%ebp)
	.cfi_offset 7, -12
	movl	8(%ebp), %edi
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	movl	12(%ebp), %esi
	movl	%eax, 92(%esp)
	movzwl	(%eax), %eax
	movl	%edi, 76(%esp)
	movl	16(%ebp), %edi
	movl	%ecx, 88(%esp)
	movl	%esi, 104(%esp)
	movl	%edi, 68(%esp)
	movl	$0, __ZL6bakcol
	movl	$0, __ZL12numhufblocks
	cmpw	$20617, %ax
	je	L3172
	cmpw	$-9985, %ax
	je	L3173
	movl	92(%esp), %eax
	movl	%ebx, -12(%ebp)
	.cfi_offset 3, -20
	movzbl	(%eax), %ebx
	cmpb	$71, %bl
	je	L3174
	cmpb	$66, %bl
	jne	L2520
	movl	92(%esp), %eax
	cmpb	$77, 1(%eax)
	je	L3175
L2520:
	movl	92(%esp), %eax
	cmpl	$134284554, (%eax)
	je	L3176
	movl	92(%esp), %edi
	movl	%edi, %eax
	call	__ZL7istargaPKhi.lto_priv.0
	testb	$1, %al
	je	L3136
	cmpl	$18, %edx
	jle	L3136
	movzbl	1(%edi), %eax
	movb	%al, 100(%esp)
	cmpb	$1, %al
	ja	L3136
	movzbl	2(%edi), %esi
	movl	%esi, %ecx
	cmpb	$11, %cl
	ja	L3136
	movl	$3598, %edx
	sarl	%cl, %edx
	andl	$1, %edx
	movl	%edx, 64(%esp)
	je	L3136
	movzbl	16(%edi), %edx
	leal	-1(%edx), %ecx
	cmpb	$31, %cl
	ja	L3136
	testb	$7, %dl
	jne	L3136
	movzbl	17(%edi), %ecx
	cmpb	$63, %cl
	ja	L3136
	movzwl	12(%edi), %eax
	movl	%eax, 108(%esp)
	testl	%eax, %eax
	je	L3136
	movzwl	14(%edi), %eax
	movl	%eax, 60(%esp)
	testl	%eax, %eax
	je	L3136
	addl	$7, %edx
	leal	18(%edi,%ebx), %edi
	movzbl	%dl, %edx
	sarl	$3, %edx
	movl	%edx, 80(%esp)
	cmpb	$1, 100(%esp)
	je	L2649
	cmpl	$4, %edx
	je	L2742
	cmpl	$1, %edx
	jne	L2743
	movl	$0, 72(%esp)
L2652:
	movb	$0, __ZL8kcoltype
	movl	64(%esp), %edx
	movl	$-16777216, %eax
	movb	$8, __ZL8bitdepth
	movl	$-16777216, palcol
	.p2align 5
	.p2align 4
	.p2align 3
L2655:
	addl	$65793, %eax
	movl	%eax, palcol(,%edx,4)
	addl	$1, %edx
	cmpl	$256, %edx
	jne	L2655
	movl	92(%esp), %eax
	movl	64(%esp), %ebx
	movzbl	17(%eax), %ecx
	movzbl	2(%eax), %esi
L2654:
	testb	$16, %cl
	je	L2656
L3188:
	movl	108(%esp), %eax
	subl	$1, %eax
	andl	$32, %ecx
	movl	%eax, 56(%esp)
	je	L2744
	movl	%esi, %eax
	movl	$-1, 108(%esp)
	cmpb	$8, %al
	movl	$-1, 100(%esp)
	movl	$0, 52(%esp)
	sbbl	%eax, %eax
	subl	$1, %eax
L2658:
	cmpl	$1, 80(%esp)
	je	L3092
L3189:
	movl	%eax, 96(%esp)
	cmpl	$1, %ebx
	je	L3093
	movl	%ebx, %esi
	movl	52(%esp), %ebx
	.p2align 4
	.p2align 3
L2674:
	cmpl	68(%esp), %ebx
	movl	56(%esp), %ecx
	movl	%ebx, 52(%esp)
	movl	96(%esp), %eax
	setb	84(%esp)
	jmp	L2673
	.p2align 4,,10
	.p2align 3
L2662:
	subl	$1, %eax
	cmpl	104(%esp), %ecx
	jnb	L2672
	cmpb	$0, 84(%esp)
	je	L2672
L2668:
	movl	88(%esp), %ebx
	movl	%edx, (%ebx,%ecx,4)
L2672:
	addl	100(%esp), %ecx
	cmpl	%ecx, 108(%esp)
	je	L3148
L2673:
	cmpl	$127, %eax
	jg	L2662
	movl	%ecx, 96(%esp)
L2670:
	movl	%eax, %ecx
	notl	%ecx
	andl	$127, %ecx
	jne	L2663
	movzbl	(%edi), %eax
	addl	$1, %edi
L2663:
	movl	92(%esp), %ebx
	movl	%edi, %ecx
	cmpb	$1, 1(%ebx)
	jne	L2664
	movzwl	(%edi), %edx
	movl	%esi, %ecx
	imull	%edx, %ecx
	addl	72(%esp), %ecx
L2664:
	cmpl	$3, %esi
	je	L2665
	cmpl	$4, %esi
	je	L2666
	cmpl	$2, %esi
	jne	L2667
	movzwl	(%ecx), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	andl	$63488, %ecx
	movl	%ecx, %ebx
	movl	%edx, %ecx
	sall	$3, %edx
	sall	$9, %ecx
	movzbl	%dl, %edx
	andl	$16252928, %ecx
	orl	%ebx, %ecx
	leal	-16777216(%ecx,%edx), %edx
L2667:
	addl	80(%esp), %edi
	testl	%eax, %eax
	js	L3177
	movl	96(%esp), %ecx
	jmp	L2662
L3174:
	cmpb	$73, 1(%eax)
	jne	L2520
	cmpb	$70, 2(%eax)
	jne	L2520
	movzbl	10(%eax), %ebx
	movl	%eax, %edi
	movl	$1, %eax
	movl	$3, %edx
	movb	$3, __ZL8kcoltype
	movl	%ebx, %ecx
	movb	$8, __ZL8bitdepth
	andl	$7, %ecx
	movl	$-1, 96(%esp)
	addl	$1, %ecx
	sall	%cl, %eax
	sall	%cl, %edx
	movl	%eax, __ZL6paleng
	movl	%eax, %esi
	leal	13(%edi), %eax
	xorl	%edi, %edi
	addl	%eax, %edx
	testb	%bl, %bl
	cmovs	%eax, %edi
	cmovs	%edx, %eax
	movzbl	(%eax), %edx
	cmpb	$33, %dl
	jne	L2522
L2527:
	cmpb	$-7, 1(%eax)
	je	L3178
L2524:
	addl	$2, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L2526:
	movzbl	(%eax), %ecx
	leal	1(%eax,%ecx), %eax
	testb	%cl, %cl
	jne	L2526
	movzbl	(%eax), %edx
	cmpb	$33, %dl
	je	L2527
L2522:
	cmpb	$44, %dl
	jne	L3136
	movzwl	1(%eax), %ebx
	movl	$1, %edx
	movl	$1, 108(%esp)
	movw	%bx, 80(%esp)
	movzwl	3(%eax), %ebx
	movw	%bx, 64(%esp)
	movl	%ebx, 60(%esp)
	movl	%ebx, 100(%esp)
	movzwl	5(%eax), %ebx
	movl	%ebx, 84(%esp)
	movzwl	7(%eax), %ebx
	movl	%ebx, 72(%esp)
	leal	10(%eax), %ebx
	movzbl	9(%eax), %eax
	movl	%eax, %ecx
	andl	$64, %ecx
	cmovne	%edx, %ecx
	movl	$8, %edx
	cmove	108(%esp), %edx
	movb	%cl, 31(%esp)
	movl	%edx, 108(%esp)
	testb	%al, %al
	jns	L2529
	andl	$7, %eax
	movl	%ebx, %edi
	leal	1(%eax), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, __ZL6paleng
	movl	%eax, %esi
	movl	$3, %eax
	sall	%cl, %eax
	addl	%eax, %ebx
L2529:
	movl	%edi, %edx
	xorl	%ecx, %ecx
L2530:
	movzbl	(%edx), %eax
	movzbl	1(%edx), %edi
	addl	$3, %edx
	sall	$8, %edi
	sall	$16, %eax
	addl	%edi, %eax
	movzbl	-1(%edx), %edi
	leal	-16777216(%eax,%edi), %eax
	movl	%eax, palcol(,%ecx,4)
	addl	$1, %ecx
	cmpl	%esi, %ecx
	jne	L2530
	cmpl	$256, %esi
	je	L2531
	testl	$1, %esi
	je	L2532
	movl	$-16777216, palcol(,%esi,4)
	addl	$1, %esi
	cmpl	$256, %esi
	je	L2531
L2532:
	movl	$-16777216, palcol(,%esi,4)
	movl	$-16777216, palcol+4(,%esi,4)
	addl	$2, %esi
	cmpl	$256, %esi
	jne	L2532
L2531:
	movl	96(%esp), %eax
	cmpl	$-1, %eax
	je	L2533
	andl	$16777215, palcol(,%eax,4)
L2533:
	movzwl	64(%esp), %eax
	orw	80(%esp), %ax
	jne	L2534
	movl	92(%esp), %edi
	movzwl	6(%edi), %eax
	cmpl	84(%esp), %eax
	jne	L2534
	movzwl	8(%edi), %eax
	cmpl	72(%esp), %eax
	jne	L2534
	movl	$0, 36(%esp)
	xorl	%eax, %eax
	movl	$0, 92(%esp)
	movl	$0, 44(%esp)
L2535:
	cmpl	68(%esp), %eax
	jnb	L2537
	movl	76(%esp), %eax
	imull	92(%esp), %eax
	addl	88(%esp), %eax
	movl	44(%esp), %edi
	movl	%eax, 100(%esp)
	movl	84(%esp), %eax
	movl	%eax, 48(%esp)
L2538:
	movzbl	(%ebx), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movb	%cl, 30(%esp)
	movl	%eax, 60(%esp)
	subl	$1, %eax
	js	L2539
L2540:
	movl	%eax, __ZL6prefix(,%eax,4)
	movb	%al, __ZL6suffix(%eax)
	subl	$1, %eax
	jnb	L2540
L2539:
	leal	2(%ebx), %esi
	movzbl	1(%ebx), %ebx
	movl	$__ZL9filbuffer, %ecx
	movl	%esi, %edx
	cmpl	$16, %ebx
	jnb	L3179
L2541:
	movl	%ebx, %eax
	andl	$15, %eax
	movl	%eax, 96(%esp)
	je	L2545
	movl	%ebx, 80(%esp)
	xorl	%eax, %eax
L2544:
	movzbl	(%edx,%eax), %ebx
	movb	%bl, (%ecx,%eax)
	addl	$1, %eax
	cmpl	96(%esp), %eax
	jb	L2544
	movl	80(%esp), %ebx
L2545:
	movzbl	30(%esp), %eax
	addl	%ebx, %esi
	movl	$0, 40(%esp)
	movl	%esi, 32(%esp)
	addl	$1, %eax
	movb	%al, 52(%esp)
	movl	60(%esp), %eax
	leal	(%eax,%eax), %edx
	addl	$2, %eax
	movl	%eax, 80(%esp)
	movl	92(%esp), %eax
	addl	108(%esp), %eax
	movl	%edx, 56(%esp)
	movl	%eax, 96(%esp)
	movl	84(%esp), %eax
	addl	$-2147483648, %eax
	movl	%eax, 12(%esp)
L2546:
	movl	40(%esp), %esi
	movl	56(%esp), %edx
	movl	%esi, %eax
	movl	%esi, %ecx
	subl	$1, %edx
	sarl	$3, %eax
	andl	$7, %ecx
	movl	__ZL9filbuffer(%eax), %eax
	shrl	%cl, %eax
	leal	-2(%ebx), %ecx
	andl	%edx, %eax
	movzbl	52(%esp), %edx
	movl	%eax, 64(%esp)
	addl	%edx, %esi
	movl	%esi, 40(%esp)
	sarl	$3, %esi
	cmpl	%esi, %ecx
	jle	L3180
L2547:
	movl	64(%esp), %esi
	cmpl	%esi, 60(%esp)
	je	L2731
	movl	56(%esp), %eax
	cmpl	80(%esp), %eax
	jne	L2556
	movzbl	52(%esp), %ecx
	cmpb	$11, %cl
	setbe	%dl
	addl	%edx, %ecx
	testb	%dl, %dl
	movb	%cl, 52(%esp)
	leal	(%eax,%eax), %ecx
	cmove	%eax, %ecx
	movl	%ecx, 56(%esp)
L2556:
	movl	64(%esp), %edx
	movl	80(%esp), %eax
	movl	60(%esp), %esi
	movl	%edx, __ZL6prefix(,%eax,4)
	movl	%edx, %eax
	xorl	%edx, %edx
	cmpl	%eax, %esi
	jg	L2557
L2558:
	movzbl	__ZL6suffix(%eax), %ecx
	movl	__ZL6prefix(,%eax,4), %eax
	addl	$1, %edx
	movb	%cl, __ZL9tempstack-1(%edx)
	cmpl	%eax, %esi
	jle	L2558
	movl	%eax, 64(%esp)
L2557:
	movl	64(%esp), %esi
	movl	80(%esp), %eax
	movl	%ebx, 64(%esp)
	movl	__ZL6prefix(,%esi,4), %ecx
	movb	%cl, __ZL9tempstack(%edx)
	movl	%esi, %ecx
	movb	%cl, __ZL6suffix(%eax)
	movb	%cl, __ZL6suffix-1(%eax)
	movl	48(%esp), %eax
	movl	104(%esp), %ecx
	jmp	L2568
	.p2align 4,,10
	.p2align 3
L2560:
	subl	$1, %edx
	jb	L3181
L2568:
	cmpl	%ecx, %edi
	jnb	L2559
	movzbl	__ZL9tempstack(%edx), %esi
	movl	100(%esp), %ebx
	movl	palcol(,%esi,4), %esi
	movl	%esi, (%ebx,%edi,4)
L2559:
	addl	$1, %edi
	cmpl	%edi, %eax
	jne	L2560
	movl	96(%esp), %edi
	cmpl	%edi, 72(%esp)
	jg	L2565
	movl	108(%esp), %eax
	cmpl	$4, %eax
	je	L2563
	jg	L2564
	subl	$1, %eax
	cmpl	$1, %eax
	jbe	L2517
L2565:
	movl	96(%esp), %esi
L2562:
	cmpl	68(%esp), %esi
	jnb	L2567
	movl	76(%esp), %eax
	movl	44(%esp), %edi
	imull	%esi, %eax
	addl	108(%esp), %esi
	addl	88(%esp), %eax
	movl	%eax, 100(%esp)
	movl	84(%esp), %eax
	movl	%esi, 96(%esp)
	jmp	L2560
L3172:
	.cfi_restore 3
	cmpb	$0, __ZL9pnginited.lto_priv.0
	je	L3182
L2356:
	movl	92(%esp), %eax
	cmpl	$1196314761, (%eax)
	jne	L2357
	cmpl	$169478669, 4(%eax)
	jne	L2357
	movzbl	__ZL8bitdepth, %edx
	movl	%ebx, -12(%ebp)
	.cfi_offset 3, -20
	leal	8(%eax), %ebx
	movzbl	__ZL8kcoltype, %eax
	movb	$0, 64(%esp)
	movl	%ebx, __ZL6filptr.lto_priv.0
	movl	$0, trnsrgb
	movl	$-1, __ZL9filter1st
	movl	$0, __ZL9filterest
	movb	%al, 108(%esp)
	movb	%dl, 100(%esp)
	movl	$0, 96(%esp)
	movb	$0, 56(%esp)
	movl	$0, 60(%esp)
	movb	$0, 92(%esp)
	movb	%al, 48(%esp)
	movb	%dl, 44(%esp)
	jmp	L2438
	.p2align 4,,10
	.p2align 3
L2358:
	cmpl	$1163152464, %eax
	je	L2418
	cmpl	$1145523042, %eax
	je	L3183
L2398:
	cmpl	$1397641844, %eax
	je	L3184
L2421:
	cmpl	$1413563465, %eax
	je	L2437
L2383:
	leal	4(%edi,%esi), %ebx
	movl	%ebx, __ZL6filptr.lto_priv.0
L2438:
	movl	(%ebx), %eax
	leal	8(%ebx), %edi
	movl	%edi, __ZL6filptr.lto_priv.0
	bswap	%eax
	movl	%eax, %esi
	movl	4(%ebx), %eax
	cmpl	$1380206665, %eax
	jne	L2358
L2417:
	movl	8(%ebx), %eax
	bswap	%eax
	movl	%eax, 84(%esp)
	testl	%eax, %eax
	jle	L3185
	movl	12(%ebx), %eax
	bswap	%eax
	movl	%eax, 80(%esp)
	testl	%eax, %eax
	jle	L3186
	movsbl	16(%ebx), %ecx
	movl	$278, %eax
	btl	%ecx, %eax
	movb	%cl, 100(%esp)
	jnc	L3187
	movzbl	17(%ebx), %edx
	movl	$93, %eax
	btl	%edx, %eax
	movb	%dl, 108(%esp)
	jnc	L2382
	cmpb	$0, 18(%ebx)
	jne	L2382
	cmpb	$0, 19(%ebx)
	jne	L2382
	movzbl	20(%ebx), %eax
	cmpb	$1, %al
	ja	L2382
	negl	%eax
	movb	$1, 92(%esp)
	andl	$7, %eax
	movl	%eax, 72(%esp)
	testb	$-5, 108(%esp)
	jne	L2383
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, 96(%esp)
	leal	-1(%eax), %ebx
	cmpl	%ebx, _lastd_s32
	je	L2384
	cmpl	$16383, %ebx
	jbe	L2384
	movl	%ebx, %eax
	movl	$31, %edx
	movl	%ebx, _lastd_s32
	negl	%eax
	cmovs	%ebx, %eax
	movl	%eax, %ecx
	movl	%eax, 64(%esp)
	bsrl	%eax, %eax
	xorl	$31, %eax
	subl	%eax, %edx
	movl	%edx, 92(%esp)
	leal	-1(%ecx), %edx
	testl	%edx, %ecx
	jne	L2385
	movl	%ebx, %eax
	xorl	%edx, %edx
	sarl	$24, %eax
	andl	$-128, %eax
	orb	92(%esp), %al
L2386:
	movl	%edx, _divtable32
	movb	%al, _divtable32+4
L2384:
	xorl	%eax, %eax
	cmpl	$16383, %ebx
	cmova	%eax, %ebx
	leal	(%ebx,%ebx,4), %eax
	movzbl	_divtable32+4(%eax), %ebx
	movl	_divtable32(%eax), %edx
	movl	%ebx, %ecx
	andl	$31, %ecx
	testl	%edx, %edx
	jne	L2389
	movl	$255, %edx
	sarb	$7, %bl
	sarl	%cl, %edx
	movsbl	%bl, %eax
	movl	%edx, %ecx
	xorl	%eax, %ecx
	subl	%eax, %ecx
L2390:
	movl	96(%esp), %edx
	testl	%edx, %edx
	jle	L2394
	imull	$65793, %ecx, %ecx
	movl	96(%esp), %ebx
	xorl	%eax, %eax
	movl	$-16777216, %edx
	.p2align 4
	.p2align 4
	.p2align 3
L2393:
	movl	%edx, palcol(,%eax,4)
	addl	$1, %eax
	addl	%ecx, %edx
	cmpl	%eax, %ebx
	jne	L2393
L2394:
	movb	$1, 64(%esp)
	movb	$1, 92(%esp)
	jmp	L2383
L2382:
	cmpb	$0, 64(%esp)
	je	L2704
	movl	96(%esp), %eax
	movl	%eax, __ZL6paleng
L2704:
	movzbl	108(%esp), %eax
	movb	%al, __ZL8kcoltype
	movzbl	100(%esp), %eax
	movb	%al, __ZL8bitdepth
	movl	80(%esp), %eax
	movl	%eax, __ZL4ysiz
	movl	84(%esp), %eax
	movl	%eax, __ZL4xsiz
	cmpb	$0, 56(%esp)
	je	L2705
	movl	60(%esp), %eax
	movl	%eax, __ZL6bakcol
L2705:
	cmpb	$0, 92(%esp)
	je	L3136
L3139:
	movl	72(%esp), %eax
	movl	-12(%ebp), %ebx
	.cfi_restore 3
	movl	%eax, _intlac
L2357:
	movl	-8(%ebp), %esi
	movl	-4(%ebp), %edi
	movl	$-1, %eax
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 6
	.cfi_def_cfa 4, 4
	ret
L2742:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$0, 72(%esp)
L2650:
	movb	$6, __ZL8kcoltype
	movl	$4, %ebx
	xorl	%edx, %edx
L3197:
	testb	$16, %cl
	jne	L3188
L2656:
	andl	$32, %ecx
	je	L2746
	movl	64(%esp), %eax
	movl	$0, 56(%esp)
	movl	$0, 52(%esp)
	movl	%eax, 100(%esp)
	movl	%esi, %eax
	cmpb	$8, %al
	sbbl	%eax, %eax
	subl	$1, %eax
	cmpl	$1, 80(%esp)
	jne	L3189
L3092:
	movl	%ebx, 84(%esp)
	movl	88(%esp), %esi
	movl	52(%esp), %ebx
	.p2align 4
	.p2align 3
L2660:
	cmpl	68(%esp), %ebx
	movl	56(%esp), %ecx
	movl	%ebx, 80(%esp)
	setb	96(%esp)
	jmp	L2703
	.p2align 4,,10
	.p2align 3
L2688:
	subl	$1, %eax
	cmpl	104(%esp), %ecx
	jnb	L2702
	cmpb	$0, 96(%esp)
	je	L2702
L2698:
	movl	%edx, (%esi,%ecx,4)
L2702:
	addl	100(%esp), %ecx
	cmpl	108(%esp), %ecx
	je	L3190
L2703:
	cmpl	$127, %eax
	jg	L2688
	movl	%esi, 88(%esp)
L2700:
	movl	%eax, %ebx
	notl	%ebx
	andl	$127, %ebx
	jne	L2689
	movzbl	(%edi), %eax
	addl	$1, %edi
L2689:
	movl	92(%esp), %esi
	movl	%edi, %ebx
	cmpb	$1, 1(%esi)
	jne	L2690
	movzbl	(%edi), %edx
	movl	84(%esp), %ebx
	imull	%edx, %ebx
	addl	72(%esp), %ebx
L2690:
	movl	84(%esp), %esi
	cmpl	$3, %esi
	je	L2691
	jg	L2692
	cmpl	$1, %esi
	je	L2693
	cmpl	$2, %esi
	jne	L2695
	movzwl	(%ebx), %edx
	movl	%edx, %ebx
	sall	$9, %ebx
	movl	%ebx, %esi
	movl	%edx, %ebx
	sall	$3, %edx
	sall	$6, %ebx
	andl	$16252928, %esi
	movzbl	%dl, %edx
	andl	$63488, %ebx
	orl	%esi, %ebx
	leal	-16777216(%ebx,%edx), %edx
L2695:
	addl	$1, %edi
	testl	%eax, %eax
	js	L3191
	movl	88(%esp), %esi
	jmp	L2688
L3182:
	.cfi_restore 3
	movb	$1, __ZL9pnginited.lto_priv.0
	call	__ZL13initpngtablesv.lto_priv.0
	jmp	L2356
	.p2align 4,,10
	.p2align 3
L3177:
	.cfi_offset 3, -20
	movl	104(%esp), %ecx
	cmpl	%ecx, 96(%esp)
	jnb	L2752
	cmpb	$0, 84(%esp)
	je	L2752
	movl	96(%esp), %ecx
	jmp	L2668
	.p2align 4,,10
	.p2align 3
L2752:
	movl	100(%esp), %ebx
	addl	%ebx, 96(%esp)
	movl	108(%esp), %ebx
	cmpl	%ebx, 96(%esp)
	jne	L2670
	.p2align 4
	.p2align 3
L3148:
	movl	%eax, 96(%esp)
	movl	52(%esp), %ebx
	movl	76(%esp), %eax
	addl	64(%esp), %ebx
	addl	%eax, 88(%esp)
	cmpl	%ebx, 60(%esp)
	jne	L2674
L2517:
	movl	-12(%ebp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	-8(%ebp), %esi
	xorl	%eax, %eax
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 6
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L2665:
	.cfi_restore_state
	movl	(%ecx), %edx
	orl	$-16777216, %edx
	jmp	L2667
	.p2align 4,,10
	.p2align 3
L2666:
	movl	(%ecx), %edx
	jmp	L2667
	.p2align 4,,10
	.p2align 3
L3183:
	movzbl	108(%esp), %eax
	cmpb	$6, %al
	ja	L2383
	jmp	*L2400(,%eax,4)
	.section .rdata,"dr"
	.align 4
L2400:
	.long	L2401
	.long	L2383
	.long	L2399
	.long	L2419
	.long	L2401
	.long	L2383
	.long	L2399
	.text
L2715:
	movb	$0, 108(%esp)
L2401:
	movzwl	8(%ebx), %eax
	movzbl	100(%esp), %ecx
	rolw	$8, %ax
	movzwl	%ax, %eax
	movl	%eax, 60(%esp)
	movl	$1, %eax
	sall	%cl, %eax
	leal	-1(%eax), %ebx
	cmpl	%ebx, _lastd_s32
	je	L2403
	cmpl	$16383, %ebx
	jbe	L2403
	movl	%ebx, %eax
	movl	$31, %edx
	movl	%ebx, _lastd_s32
	negl	%eax
	cmovs	%ebx, %eax
	movl	%eax, %ecx
	movl	%eax, 52(%esp)
	bsrl	%eax, %eax
	xorl	$31, %eax
	subl	%eax, %edx
	movl	%edx, 56(%esp)
	leal	-1(%ecx), %edx
	testl	%edx, %ecx
	je	L3192
	movl	$30, %ecx
	movl	$1, %edx
	subl	%eax, %ecx
	xorl	%eax, %eax
	sall	%cl, %edx
	movl	52(%esp), %ecx
/APP
 # 477 "source/build/include/libdivide.h" 1
	divl %ecx
 # 0 "" 2
/NO_APP
	movl	%eax, 40(%esp)
	movl	%ecx, %eax
	movzbl	56(%esp), %ecx
	movl	%edx, 36(%esp)
	subl	%edx, %eax
	movl	$1, %edx
	sall	%cl, %edx
	cmpl	%edx, %eax
	jnb	L2406
	leal	-1(%ecx), %eax
L2407:
	movl	40(%esp), %edx
	movl	%eax, %ecx
	orl	$-128, %ecx
	addl	$1, %edx
	testl	%ebx, %ebx
	cmovs	%ecx, %eax
	movl	40(%esp), %ecx
	notl	%ecx
	cmovs	%ecx, %edx
	jmp	L2405
L2399:
	cmpb	$8, 100(%esp)
	jne	L2411
L2431:
	movzbl	9(%ebx), %eax
	movzbl	11(%ebx), %edx
	movb	$8, 100(%esp)
	movb	$1, 56(%esp)
	sall	$8, %edx
	sall	$16, %eax
	addl	%edx, %eax
	movzbl	13(%ebx), %edx
	leal	-16777216(%eax,%edx), %eax
	movl	%eax, 60(%esp)
	jmp	L2383
L3193:
	leal	4(%edi,%esi), %ebx
	movb	$3, 108(%esp)
	movl	%ebx, __ZL6filptr.lto_priv.0
	movl	(%ebx), %eax
	leal	8(%ebx), %edi
	movl	%edi, __ZL6filptr.lto_priv.0
	bswap	%eax
	movl	%eax, %esi
	movl	4(%ebx), %eax
	cmpl	$1380206665, %eax
	je	L2417
	cmpl	$1163152464, %eax
	je	L2418
	cmpl	$1145523042, %eax
	jne	L2428
L2419:
	movzbl	8(%ebx), %eax
	leal	4(%edi,%esi), %ebx
	movl	%ebx, __ZL6filptr.lto_priv.0
	movl	(%ebx), %esi
	leal	8(%ebx), %edi
	movl	palcol(,%eax,4), %edx
	movl	4(%ebx), %eax
	movl	%edi, __ZL6filptr.lto_priv.0
	bswap	%esi
	cmpl	$1380206665, %eax
	je	L2708
	cmpl	$1163152464, %eax
	je	L2709
	cmpl	$1145523042, %eax
	je	L2419
	movl	%edx, 60(%esp)
	movb	$3, 108(%esp)
	movb	$1, 56(%esp)
	jmp	L2398
	.p2align 4,,10
	.p2align 3
L3184:
	movzbl	108(%esp), %eax
	cmpb	$2, %al
	je	L2423
	cmpb	$3, %al
	je	L2424
	testb	%al, %al
	jne	L2426
L2976:
	cmpb	$8, 100(%esp)
	jg	L2427
	movzbl	9(%ebx), %eax
	leal	4(%edi,%esi), %ebx
	movl	%ebx, __ZL6filptr.lto_priv.0
	leal	8(%ebx), %edi
	andl	$16777215, palcol(,%eax,4)
	movl	(%ebx), %eax
	movl	%edi, __ZL6filptr.lto_priv.0
	bswap	%eax
	movl	%eax, %esi
	movl	4(%ebx), %eax
	cmpl	$1380206665, %eax
	je	L2713
	cmpl	$1163152464, %eax
	je	L2714
	cmpl	$1145523042, %eax
	je	L2715
	movb	$0, 108(%esp)
L2428:
	cmpl	$1397641844, %eax
	jne	L2421
	movzbl	108(%esp), %eax
	cmpb	$2, %al
	je	L2423
	cmpb	$3, %al
	jne	L2976
L2424:
	movl	96(%esp), %eax
	cmpl	%eax, %esi
	cmovle	%esi, %eax
	subl	$1, %eax
	js	L3193
	.p2align 5
	.p2align 4
	.p2align 3
L2433:
	movzbl	8(%ebx,%eax), %edx
	sall	$24, %edx
	orl	$16777215, %edx
	andl	%edx, palcol(,%eax,4)
	subl	$1, %eax
	jnb	L2433
	movb	$3, 108(%esp)
	jmp	L2383
L2709:
	movl	%edx, 60(%esp)
	movb	$3, 108(%esp)
	movb	$1, 56(%esp)
	.p2align 4
	.p2align 3
L2418:
	movl	$1431655766, %eax
	imull	%esi
	movl	%esi, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, 96(%esp)
	movl	%edx, %eax
	subl	$1, %edx
	js	L2396
	leal	(%eax,%eax,2), %ecx
	addl	%ebx, %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L2397:
	movl	5(%ecx), %eax
	subl	$3, %ecx
	bswap	%eax
	shrl	$8, %eax
	orl	$-16777216, %eax
	movl	%eax, palcol(,%edx,4)
	subl	$1, %edx
	cmpl	$-1, %edx
	jne	L2397
L2396:
	movb	$1, 64(%esp)
	jmp	L2383
L3192:
	movl	%ebx, %eax
	xorl	%edx, %edx
	sarl	$24, %eax
	andl	$-128, %eax
	orb	56(%esp), %al
L2405:
	movl	%edx, _divtable32
	movb	%al, _divtable32+4
L2403:
	xorl	%eax, %eax
	cmpl	$16383, %ebx
	cmova	%eax, %ebx
	movzbl	_divtable32+4(%ebx,%ebx,4), %ecx
	movl	_divtable32(%ebx,%ebx,4), %edx
	movl	%ecx, %ebx
	andl	$31, %ebx
	movb	%bl, 56(%esp)
	testl	%edx, %edx
	jne	L2408
	sarb	$7, %cl
	movl	$255, %eax
	movsbl	%cl, %edx
	movl	%ebx, %ecx
	sarl	%cl, %eax
	xorl	%edx, %eax
	subl	%edx, %eax
L2409:
	movl	60(%esp), %edx
	movb	$1, 56(%esp)
	imull	%eax, %edx
	imull	$65793, %edx, %eax
	subl	$16777216, %eax
	movl	%eax, 60(%esp)
	jmp	L2383
L2389:
	movl	$255, %eax
	imull	%edx
	movl	%ebx, %eax
	sarb	$7, %al
	movsbl	%al, %eax
	movl	%eax, 64(%esp)
	xorb	$-1, %al
	addl	%edx, %eax
	movl	%edx, 92(%esp)
	subl	64(%esp), %eax
	andl	$64, %ebx
	cmove	92(%esp), %eax
	movl	%eax, %edx
	shrl	$31, %eax
	sarl	%cl, %edx
	leal	(%edx,%eax), %ecx
	jmp	L2390
L3173:
	.cfi_restore 3
	movl	88(%esp), %ecx
	movl	92(%esp), %eax
	movl	-8(%ebp), %esi
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 6
	.cfi_def_cfa 4, 4
	jmp	__ZL8kpegrendPKciiiii
L2423:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpb	$8, 100(%esp)
	je	L2422
	leal	4(%edi,%esi), %ebx
	movl	%ebx, __ZL6filptr.lto_priv.0
	movl	(%ebx), %eax
	leal	8(%ebx), %edi
	movl	%edi, __ZL6filptr.lto_priv.0
	bswap	%eax
	movl	%eax, %esi
	movl	4(%ebx), %eax
	cmpl	$1380206665, %eax
	je	L2719
	cmpl	$1163152464, %eax
	je	L2720
	movb	$2, 108(%esp)
	cmpl	$1145523042, %eax
	jne	L2428
L2411:
	movzbl	_divtable32+1289, %eax
	movl	_divtable32+1285, %edx
	addl	$9, %ebx
	movb	%al, 56(%esp)
	movl	%edx, 52(%esp)
	testl	%edx, %edx
	je	L2412
	testb	$64, %al
	jne	L2413
	movl	$16, 40(%esp)
	movl	$-16777216, 60(%esp)
L2414:
	movzbl	-1(%ebx), %edx
	movzbl	(%ebx), %eax
	addl	$2, %ebx
	movl	56(%esp), %ecx
	sall	$8, %edx
	addl	%eax, %edx
	movl	52(%esp), %eax
	imull	%edx
	movl	%edx, %eax
	sarl	%cl, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	movl	40(%esp), %edx
	shrl	$31, %eax
	addl	%ecx, %eax
	movl	%edx, %ecx
	subl	$8, %edx
	sall	%cl, %eax
	movl	%edx, 40(%esp)
	addl	%eax, 60(%esp)
	cmpl	$-8, %edx
	jne	L2414
	jmp	L3138
L2422:
	movzbl	11(%ebx), %eax
	movzbl	9(%ebx), %edx
	sall	$8, %eax
	sall	$16, %edx
	addl	%edx, %eax
	movzbl	13(%ebx), %edx
	leal	4(%edi,%esi), %ebx
	movl	%ebx, __ZL6filptr.lto_priv.0
	leal	8(%ebx), %edi
	leal	-16777216(%eax,%edx), %eax
	movl	%eax, trnsrgb
	movl	4(%ebx), %eax
	movl	(%ebx), %esi
	movl	%edi, __ZL6filptr.lto_priv.0
	bswap	%esi
	cmpl	$1380206665, %eax
	je	L2719
	cmpl	$1163152464, %eax
	je	L2720
	cmpl	$1145523042, %eax
	je	L3194
	cmpl	$1397641844, %eax
	je	L2422
	movb	$2, 108(%esp)
	jmp	L2421
L2719:
	movb	$2, 108(%esp)
	jmp	L2417
L2649:
	movl	92(%esp), %edx
	movzbl	7(%edx), %eax
	addl	$7, %eax
	sarl	$3, %eax
	movl	%eax, %ebx
	movzwl	3(%edx), %eax
	movl	%edi, %edx
	imull	%ebx, %eax
	subl	%eax, %edx
	movl	%edx, 72(%esp)
	movl	92(%esp), %edx
	movzwl	5(%edx), %eax
	imull	%ebx, %eax
	addl	%eax, %edi
	cmpl	$3, %ebx
	jg	L2653
	cmpl	$1, %ebx
	jg	L2651
	je	L2652
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	jmp	L2654
L3176:
	movl	%eax, %esi
	movzwl	8(%eax), %eax
	movzwl	4(%esi), %ecx
	subl	%ecx, %eax
	leal	1(%eax), %ebx
	testl	%ebx, %ebx
	jle	L3136
	movzwl	10(%esi), %eax
	movzwl	6(%esi), %ecx
	subl	%ecx, %eax
	addl	$1, %eax
	movl	%eax, 84(%esp)
	testl	%eax, %eax
	jle	L3136
	movzbl	65(%esi), %eax
	movzwl	66(%esi), %edi
	cmpl	$1, %eax
	je	L3195
	cmpl	$3, %eax
	jne	L2517
	movl	104(%esp), %eax
	movl	68(%esp), %edx
	movb	$2, __ZL8kcoltype
	movl	84(%esp), %esi
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	cmpl	%esi, %edx
	cmovle	%edx, %esi
	movl	%eax, 100(%esp)
	movl	%esi, 108(%esp)
	testl	%esi, %esi
	jle	L2630
	testl	%eax, %eax
	jle	L2630
	movl	88(%esp), %esi
	movl	%edi, 80(%esp)
	movl	%ebx, 96(%esp)
	movl	76(%esp), %ebx
	leal	3(%esi), %ecx
	xorl	%esi, %esi
	leal	(%ecx,%eax,4), %edx
L2631:
	movl	%edx, %edi
	movl	%ecx, %eax
	subl	%ecx, %edi
	andl	$4, %edi
	je	L2632
	leal	4(%ecx), %eax
	movb	$-1, (%ecx)
	cmpl	%eax, %edx
	je	L3075
	.p2align 4
	.p2align 4
	.p2align 3
L2632:
	movb	$-1, (%eax)
	addl	$8, %eax
	movb	$-1, -4(%eax)
	cmpl	%eax, %edx
	jne	L2632
L3075:
	addl	$1, %esi
	addl	%ebx, %ecx
	addl	%ebx, %edx
	cmpl	%esi, 108(%esp)
	jne	L2631
	movl	96(%esp), %ebx
	movl	80(%esp), %edi
L2630:
	movl	92(%esp), %eax
	movl	$2, 80(%esp)
	movl	$2, %ecx
	subl	$-128, %eax
	cmpl	%edi, %ebx
	cmovge	%ebx, %edi
	movl	%eax, 92(%esp)
	movl	104(%esp), %eax
	cmovl	100(%esp), %eax
	xorl	%ebx, %ebx
	leal	0(,%edi,4), %esi
	leal	0(,%eax,4), %edi
	movl	92(%esp), %eax
	movl	%edi, 100(%esp)
	movl	68(%esp), %edi
	movzbl	(%eax), %edx
	movb	%dl, 96(%esp)
	cmpb	$-65, %dl
	ja	L2643
L3196:
	addl	$1, %eax
	movl	%esi, 108(%esp)
	movl	$1, 104(%esp)
	movl	%eax, 92(%esp)
	movl	80(%esp), %eax
	.p2align 4
	.p2align 3
L2648:
	cmpl	%edi, %ebx
	jnb	L2646
	cmpl	100(%esp), %eax
	jnb	L2646
	movl	88(%esp), %esi
	movzbl	96(%esp), %edx
	movb	%dl, (%eax,%esi)
L2646:
	addl	$4, %eax
	cmpl	%eax, 108(%esp)
	jg	L2647
	subl	$1, %ecx
	movl	%ecx, %eax
	jns	L2647
	movl	76(%esp), %esi
	addl	%esi, 88(%esp)
	addl	$1, %ebx
	movl	$2, %eax
	movl	$2, %ecx
L2647:
	subl	$1, 104(%esp)
	jne	L2648
	movl	%eax, 80(%esp)
	movl	108(%esp), %esi
L2645:
	cmpl	%ebx, 84(%esp)
	jle	L2517
	movl	92(%esp), %eax
	movzbl	(%eax), %edx
	movb	%dl, 96(%esp)
	cmpb	$-65, %dl
	jbe	L3196
L2643:
	movzbl	96(%esp), %edx
	andl	$63, %edx
	je	L2740
	movl	92(%esp), %eax
	movzbl	%dl, %edx
	movl	%esi, 108(%esp)
	movl	%edx, 104(%esp)
	movzbl	1(%eax), %eax
	movb	%al, 96(%esp)
	movl	92(%esp), %eax
	addl	$2, %eax
	movl	%eax, 92(%esp)
	movl	80(%esp), %eax
	jmp	L2648
	.p2align 4,,10
	.p2align 3
L3191:
	cmpl	104(%esp), %ecx
	jnb	L2754
	cmpb	$0, 96(%esp)
	je	L2754
	movl	88(%esp), %esi
	jmp	L2698
	.p2align 4,,10
	.p2align 3
L2692:
	cmpl	$4, 84(%esp)
	jne	L2695
	movl	(%ebx), %edx
	jmp	L2695
	.p2align 4,,10
	.p2align 3
L2754:
	addl	100(%esp), %ecx
	cmpl	%ecx, 108(%esp)
	jne	L2700
	movl	80(%esp), %ebx
	movl	88(%esp), %esi
	.p2align 4
	.p2align 3
L2701:
	addl	64(%esp), %ebx
	addl	76(%esp), %esi
	cmpl	60(%esp), %ebx
	jne	L2660
	jmp	L2517
	.p2align 4,,10
	.p2align 3
L2693:
	movzbl	(%ebx), %edx
	movl	palcol(,%edx,4), %edx
	jmp	L2695
	.p2align 4,,10
	.p2align 3
L2691:
	movl	(%ebx), %edx
	orl	$-16777216, %edx
	jmp	L2695
	.p2align 4,,10
	.p2align 3
L3190:
	movl	80(%esp), %ebx
	jmp	L2701
L3136:
	movl	-12(%ebp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	jmp	L2357
L2744:
	.cfi_restore_state
	movl	$-1, 108(%esp)
	movl	$-1, 64(%esp)
L2657:
	movl	%esi, %eax
	movl	108(%esp), %ecx
	cmpb	$7, %al
	seta	%al
	movzbl	%al, %eax
	subl	$2, %eax
	cmpl	%ecx, 56(%esp)
	je	L2517
	movl	60(%esp), %esi
	movl	76(%esp), %ecx
	movl	$-1, 60(%esp)
	negl	76(%esp)
	subl	$1, %esi
	imull	%esi, %ecx
	movl	%esi, 52(%esp)
	movl	64(%esp), %esi
	addl	%ecx, 88(%esp)
	movl	%esi, 100(%esp)
	movl	$-1, 64(%esp)
	jmp	L2658
L2743:
	movl	$0, 72(%esp)
	movl	80(%esp), %ebx
L2651:
	movb	$2, __ZL8kcoltype
	xorl	%edx, %edx
	jmp	L2654
L2746:
	movl	$0, 56(%esp)
	jmp	L2657
L2408:
	movl	%ecx, %ebx
	movl	$255, %eax
	sarb	$7, %bl
	imull	%edx
	movsbl	%bl, %ebx
	movl	%ebx, %eax
	xorb	$-1, %al
	addl	%edx, %eax
	subl	%ebx, %eax
	andl	$64, %ecx
	movzbl	56(%esp), %ecx
	cmove	%edx, %eax
	movl	%eax, %edx
	shrl	$31, %eax
	sarl	%cl, %edx
	addl	%edx, %eax
	jmp	L2409
L2385:
	movl	$30, %ecx
	movl	$1, %edx
	subl	%eax, %ecx
	xorl	%eax, %eax
	sall	%cl, %edx
	movl	64(%esp), %ecx
/APP
 # 477 "source/build/include/libdivide.h" 1
	divl %ecx
 # 0 "" 2
/NO_APP
	movl	%eax, 52(%esp)
	movl	%ecx, %eax
	movzbl	92(%esp), %ecx
	subl	%edx, %eax
	movl	%eax, 40(%esp)
	movl	$1, %eax
	sall	%cl, %eax
	cmpl	%eax, 40(%esp)
	jnb	L2387
	movzbl	92(%esp), %eax
	subl	$1, %eax
L2388:
	movl	52(%esp), %edx
	movl	%eax, %ecx
	orl	$-128, %ecx
	addl	$1, %edx
	testl	%ebx, %ebx
	cmovs	%ecx, %eax
	movl	52(%esp), %ecx
	notl	%ecx
	cmovs	%ecx, %edx
	jmp	L2386
L2427:
	leal	4(%edi,%esi), %ebx
	movl	%ebx, __ZL6filptr.lto_priv.0
	movl	4(%ebx), %eax
	leal	8(%ebx), %edi
	movl	(%ebx), %esi
	movl	%edi, __ZL6filptr.lto_priv.0
	bswap	%esi
	cmpl	$1380206665, %eax
	je	L2713
	cmpl	$1163152464, %eax
	je	L2714
	cmpl	$1145523042, %eax
	je	L2715
	movb	$0, 108(%esp)
	cmpl	$1397641844, %eax
	jne	L2421
	jmp	L2976
L2708:
	movl	%edx, 60(%esp)
	movb	$3, 108(%esp)
	movb	$1, 56(%esp)
	jmp	L2417
L2713:
	movb	$0, 108(%esp)
	jmp	L2417
L2653:
	cmpl	$4, %ebx
	je	L2650
	xorl	%edx, %edx
	jmp	L3197
L2387:
	leal	(%edx,%edx), %ecx
	cmpl	64(%esp), %ecx
	setnb	%al
	cmpl	%edx, %ecx
	setb	%dl
	orl	%edx, %eax
	movl	52(%esp), %edx
	movzbl	%al, %eax
	leal	(%eax,%edx,2), %eax
	movl	%eax, 52(%esp)
	movzbl	92(%esp), %eax
	orl	$64, %eax
	jmp	L2388
L3175:
	movl	14(%eax), %ebx
	cmpl	$12, %ebx
	je	L3198
	movl	92(%esp), %eax
	cmpw	$1, 26(%eax)
	jne	L3136
	movl	22(%eax), %esi
	movl	18(%eax), %edi
	movl	30(%eax), %ecx
	movl	%esi, 100(%esp)
	movzwl	28(%eax), %esi
	movl	%esi, 80(%esp)
L2570:
	testl	%edi, %edi
	jle	L3136
	movl	100(%esp), %eax
	testl	%eax, %eax
	je	L3136
	movl	80(%esp), %esi
	leal	-1(%esi), %eax
	cmpl	$31, %eax
	ja	L3136
	movl	$16843027, %eax
	movl	%esi, %edx
	btl	%edx, %eax
	jnc	L3136
	testl	%ecx, %ecx
	je	L2751
	cmpl	$3, %ecx
	jne	L3136
L2751:
	movl	92(%esp), %eax
	movl	10(%eax), %esi
	addl	%eax, %esi
	movl	80(%esp), %eax
	cmpl	$15, %eax
	jg	L2572
	cmpl	$2, %eax
	jne	L2573
	movl	$-1, %eax
	movl	$-16777216, %edx
	movl	%eax, palcol
	movl	%edx, palcol+4
L2573:
	movl	92(%esp), %eax
	xorl	%ecx, %ecx
	cmpl	$12, %ebx
	setne	%cl
	leal	14(%eax,%ebx), %eax
	addl	$3, %ecx
	xorl	%ebx, %ebx
	cmpl	%esi, %eax
	jnb	L2575
L2576:
	movl	(%eax), %edx
	addl	%ecx, %eax
	orl	$-16777216, %edx
	movl	%edx, palcol(,%ebx,4)
	addl	$1, %ebx
	cmpl	%esi, %eax
	jb	L2576
L2575:
	movzbl	80(%esp), %eax
	movb	$3, __ZL8kcoltype
	movl	%ebx, __ZL6paleng
	movb	%al, __ZL8bitdepth
L2577:
	movl	80(%esp), %eax
	imull	%edi, %eax
	addl	$31, %eax
	sarl	$3, %eax
	andl	$-4, %eax
	movl	%eax, 96(%esp)
	movl	100(%esp), %eax
	testl	%eax, %eax
	js	L3199
	movl	100(%esp), %eax
	movl	96(%esp), %ebx
	subl	$1, %eax
	imull	%ebx, %eax
	negl	%ebx
	movl	%ebx, 96(%esp)
	addl	%eax, %esi
L2586:
	movl	104(%esp), %ebx
	movl	%edi, %eax
	cmpl	%edi, %ebx
	movl	88(%esp), %edi
	cmovle	%ebx, %eax
	movl	96(%esp), %ebx
	subl	76(%esp), %ebx
	movl	%ebx, 88(%esp)
	movl	%esi, %ebx
	subl	%edi, %ebx
	movl	%eax, 84(%esp)
	leal	(%edi,%eax,4), %eax
	movl	%ebx, 92(%esp)
	movl	%edi, 108(%esp)
	movl	%esi, %edi
	movl	%eax, 104(%esp)
	xorl	%eax, %eax
L2624:
	cmpl	68(%esp), %eax
	jnb	L2589
	movl	80(%esp), %esi
	cmpl	$32, %esi
	ja	L2589
	jmp	*L2591(,%esi,4)
	.section .rdata,"dr"
	.align 4
L2591:
	.long	L2589
	.long	L3080
	.long	L2589
	.long	L2589
	.long	L3081
	.long	L2589
	.long	L2589
	.long	L2589
	.long	L3082
	.long	L2589
	.long	L2589
	.long	L2589
	.long	L2589
	.long	L2589
	.long	L2589
	.long	L2589
	.long	L2902
	.long	L2589
	.long	L2589
	.long	L2589
	.long	L2589
	.long	L2589
	.long	L2589
	.long	L2589
	.long	L3083
	.long	L2589
	.long	L2589
	.long	L2589
	.long	L2589
	.long	L2589
	.long	L2589
	.long	L2589
	.long	L3084
	.text
L2412:
	movzbl	56(%esp), %eax
	movl	%esi, 60(%esp)
	movl	$16, %edx
	movl	%edi, 52(%esp)
	movl	$-16777216, %edi
	sarb	$7, %al
	movsbl	%al, %esi
L2416:
	movzbl	-1(%ebx), %ecx
	movzbl	(%ebx), %eax
	addl	$2, %ebx
	sall	$8, %ecx
	addl	%ecx, %eax
	movl	56(%esp), %ecx
	sarl	%cl, %eax
	movl	%edx, %ecx
	subl	$8, %edx
	xorl	%esi, %eax
	subl	%esi, %eax
	sall	%cl, %eax
	addl	%eax, %edi
	cmpl	$-8, %edx
	jne	L2416
	movl	60(%esp), %esi
	movl	%edi, 60(%esp)
	movl	52(%esp), %edi
L3138:
	movb	$1, 56(%esp)
	jmp	L2383
L3080:
	movl	108(%esp), %edx
L2596:
	movl	84(%esp), %ecx
	testl	%ecx, %ecx
	jle	L2607
	movl	%eax, 108(%esp)
	movl	%edx, %esi
	xorl	%ebx, %ebx
	movl	%edx, 72(%esp)
	movl	%ecx, %edx
L2608:
	movl	%ebx, %eax
	movl	%ebx, %ecx
	addl	$1, %ebx
	addl	$4, %esi
	sarl	$3, %eax
	notl	%ecx
	movzbl	(%edi,%eax), %eax
	andl	$7, %ecx
	sarl	%cl, %eax
	andl	$1, %eax
	movl	palcol(,%eax,4), %eax
	movl	%eax, -4(%esi)
	cmpl	%ebx, %edx
	jne	L2608
	movl	108(%esp), %eax
	movl	72(%esp), %edx
	addl	$1, %eax
	cmpl	100(%esp), %eax
	je	L2517
L3162:
	movl	76(%esp), %esi
	movl	88(%esp), %ecx
	addl	%esi, 104(%esp)
	addl	96(%esp), %edi
	addl	%ecx, 92(%esp)
	addl	%esi, %edx
	cmpl	68(%esp), %eax
	jb	L2596
L3141:
	movl	%edx, 108(%esp)
L2589:
	movl	76(%esp), %ebx
	movl	88(%esp), %edx
	addl	$1, %eax
	addl	%ebx, 108(%esp)
	addl	96(%esp), %edi
	addl	%edx, 92(%esp)
	addl	%ebx, 104(%esp)
	cmpl	100(%esp), %eax
	jne	L2624
	jmp	L2517
L2714:
	movb	$0, 108(%esp)
	jmp	L2418
L2567:
	movl	36(%esp), %eax
	addl	108(%esp), %esi
	movl	%esi, 96(%esp)
	leal	-2147483648(%eax), %edi
	movl	12(%esp), %eax
	jmp	L2560
L3093:
	movl	52(%esp), %esi
	movl	104(%esp), %ebx
	.p2align 4
	.p2align 3
L2661:
	cmpl	68(%esp), %esi
	movl	56(%esp), %ecx
	movl	%esi, 48(%esp)
	movl	96(%esp), %eax
	movl	100(%esp), %esi
	movl	%ebx, 104(%esp)
	setb	52(%esp)
	jmp	L2680
	.p2align 4,,10
	.p2align 3
L2676:
	subl	$1, %eax
	cmpl	104(%esp), %ecx
	jnb	L2681
	cmpb	$0, 52(%esp)
	je	L2681
L2677:
	movl	88(%esp), %ebx
	movl	%edx, (%ebx,%ecx,4)
L2681:
	addl	%esi, %ecx
	cmpl	%ecx, 108(%esp)
	je	L3200
L2680:
	cmpl	$127, %eax
	jg	L2676
	movl	%eax, %edx
	movl	%esi, 84(%esp)
	movl	104(%esp), %ebx
	andl	$127, %edx
	movl	%edx, 96(%esp)
L2675:
	cmpl	$127, 96(%esp)
	je	L2683
	movl	92(%esp), %edx
	cmpb	$1, 1(%edx)
	je	L2684
	movl	%edi, %edx
L2686:
	movzbl	(%edx), %edx
	addl	80(%esp), %edi
	movl	palcol(,%edx,4), %esi
	movl	%esi, 104(%esp)
	testl	%eax, %eax
	jns	L3201
	cmpl	%ebx, %ecx
	jnb	L2753
	cmpb	$0, 52(%esp)
	je	L2753
	movl	104(%esp), %edx
	movl	84(%esp), %esi
	movl	%ebx, 104(%esp)
	jmp	L2677
	.p2align 4,,10
	.p2align 3
L2683:
	movl	92(%esp), %edx
	movl	84(%esp), %esi
	movl	%ebx, 104(%esp)
	movzbl	(%edi), %eax
	cmpb	$1, 1(%edx)
	je	L2687
	movzbl	1(%edi), %edx
	movl	80(%esp), %ebx
	movl	palcol(,%edx,4), %edx
	leal	1(%edi,%ebx), %edi
	jmp	L2676
	.p2align 4,,10
	.p2align 3
L3201:
	movl	104(%esp), %edx
	movl	84(%esp), %esi
	movl	%ebx, 104(%esp)
	jmp	L2676
	.p2align 4,,10
	.p2align 3
L2684:
	movzwl	(%edi), %edx
	addl	72(%esp), %edx
	jmp	L2686
	.p2align 4,,10
	.p2align 3
L2753:
	addl	84(%esp), %ecx
	cmpl	%ecx, 108(%esp)
	jne	L2675
	movl	104(%esp), %edx
	movl	48(%esp), %esi
	movl	%eax, 96(%esp)
	.p2align 4
	.p2align 3
L2679:
	movl	76(%esp), %eax
	addl	64(%esp), %esi
	addl	%eax, 88(%esp)
	cmpl	%esi, 60(%esp)
	jne	L2661
	jmp	L2517
	.p2align 4,,10
	.p2align 3
L3200:
	movl	48(%esp), %esi
	movl	104(%esp), %ebx
	movl	%eax, 96(%esp)
	jmp	L2679
L2687:
	movzwl	1(%edi), %edx
	movl	72(%esp), %ebx
	movzbl	(%ebx,%edx), %edx
	movl	80(%esp), %ebx
	movl	palcol(,%edx,4), %edx
	leal	1(%edi,%ebx), %edi
	jmp	L2676
L3178:
	testb	$1, 3(%eax)
	je	L2524
	movzbl	6(%eax), %ebx
	movl	%ebx, 96(%esp)
	jmp	L2524
L3195:
	leal	-768(%esi,%edx), %edx
	xorl	%ecx, %ecx
	.p2align 6
	.p2align 4
	.p2align 3
L2627:
	movzbl	(%edx), %eax
	movzbl	1(%edx), %esi
	addl	$3, %edx
	sall	$8, %esi
	sall	$16, %eax
	addl	%esi, %eax
	movzbl	-1(%edx), %esi
	leal	-16777216(%eax,%esi), %eax
	movl	%eax, palcol(,%ecx,4)
	addl	$1, %ecx
	cmpl	$256, %ecx
	jne	L2627
	movl	92(%esp), %eax
	movb	$3, __ZL8kcoltype
	movb	$8, __ZL8bitdepth
	movl	$256, __ZL6paleng
	subl	$-128, %eax
	movl	%eax, 96(%esp)
	cmpl	%edi, %ebx
	jge	L3202
	movl	104(%esp), %eax
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	leal	0(,%edi,4), %ebx
	leal	0(,%eax,4), %esi
L2633:
	movl	96(%esp), %eax
	movl	%esi, 104(%esp)
	movl	%ebx, %edi
	xorl	%ecx, %ecx
	movl	88(%esp), %ebx
	movl	68(%esp), %esi
	movl	$0, 92(%esp)
	movzbl	(%eax), %edx
	cmpb	$-65, %dl
	ja	L2636
L3203:
	addl	$1, %eax
	movl	$1, 108(%esp)
	movl	%eax, 96(%esp)
	movl	palcol(,%edx,4), %eax
	movl	%ebx, %edx
	movl	%eax, 100(%esp)
	movl	92(%esp), %eax
	.p2align 4
	.p2align 3
L2641:
	cmpl	%esi, %ecx
	jnb	L2639
	cmpl	104(%esp), %eax
	jnb	L2639
	movl	100(%esp), %ebx
	movl	%ebx, (%eax,%edx)
L2639:
	addl	$4, %eax
	cmpl	%eax, %edi
	jg	L2640
	movl	76(%esp), %ebx
	addl	$1, %ecx
	xorl	%eax, %eax
	addl	%edx, %ebx
	movl	%ebx, %edx
L2640:
	subl	$1, 108(%esp)
	jne	L2641
	movl	%eax, 92(%esp)
	movl	%edx, %ebx
L2638:
	cmpl	84(%esp), %ecx
	jge	L2517
	movl	96(%esp), %eax
	movzbl	(%eax), %edx
	cmpb	$-65, %dl
	jbe	L3203
L2636:
	andl	$63, %edx
	je	L2739
	movl	96(%esp), %eax
	movzbl	%dl, %edx
	movl	%edx, 108(%esp)
	movl	%ebx, %edx
	movzbl	1(%eax), %eax
	movl	palcol(,%eax,4), %eax
	movl	%eax, 100(%esp)
	movl	96(%esp), %eax
	addl	$2, %eax
	movl	%eax, 96(%esp)
	movl	92(%esp), %eax
	jmp	L2641
L2739:
	movl	96(%esp), %eax
	addl	$2, %eax
	movl	%eax, 96(%esp)
	jmp	L2638
L2740:
	movl	92(%esp), %eax
	addl	$2, %eax
	movl	%eax, 92(%esp)
	jmp	L2645
L3187:
	cmpb	$0, 64(%esp)
	je	L2370
	movl	96(%esp), %eax
	movl	%eax, __ZL6paleng
L2370:
	cmpb	$0, 92(%esp)
	je	L3204
L2371:
	movzbl	108(%esp), %eax
	movb	%al, __ZL8kcoltype
	movzbl	100(%esp), %eax
	movb	%al, __ZL8bitdepth
	movl	80(%esp), %eax
	movl	%eax, __ZL4ysiz
	movl	84(%esp), %eax
	movl	%eax, __ZL4xsiz
	cmpb	$0, 56(%esp)
	je	L3139
	movl	60(%esp), %eax
	movl	%eax, __ZL6bakcol
	jmp	L3139
L3186:
	cmpb	$0, 64(%esp)
	je	L2365
	movl	96(%esp), %eax
	movl	%eax, __ZL6paleng
L2365:
	cmpb	$0, 92(%esp)
	jne	L2371
L3152:
	movl	80(%esp), %eax
	movl	%eax, __ZL4ysiz
L3150:
	movl	84(%esp), %eax
	movl	%eax, __ZL4xsiz
	cmpb	$0, 56(%esp)
	je	L3136
	movl	60(%esp), %eax
	movl	-12(%ebp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	%eax, __ZL6bakcol
	jmp	L2357
L3185:
	.cfi_restore_state
	cmpb	$0, 64(%esp)
	je	L2360
	movl	96(%esp), %eax
	movl	%eax, __ZL6paleng
L2360:
	cmpb	$0, 92(%esp)
	jne	L2371
	jmp	L3150
L2406:
	movl	36(%esp), %ecx
	leal	(%ecx,%ecx), %edx
	cmpl	52(%esp), %edx
	setnb	%al
	cmpl	%ecx, %edx
	setb	%dl
	orl	%edx, %eax
	movl	40(%esp), %edx
	movzbl	%al, %eax
	leal	(%eax,%edx,2), %eax
	movl	%eax, 40(%esp)
	movzbl	56(%esp), %eax
	orl	$64, %eax
	jmp	L2407
L2572:
	movl	80(%esp), %eax
	testb	$15, %al
	jne	L2577
	movb	$2, __ZL8kcoltype
	cmpl	$32, %eax
	je	L2735
	movl	$10, %edx
	movl	$5, %eax
L2578:
	movl	%edx, palcol
	movl	%eax, palcol+4
	movl	$0, palcol+8
	movl	%eax, palcol+12
	movl	%eax, palcol+16
	movl	%eax, palcol+20
	cmpl	$3, %ecx
	je	L3205
	movl	%eax, 92(%esp)
	movl	%eax, %ebx
	movl	%eax, 96(%esp)
	movl	%eax, 108(%esp)
L2579:
	addl	%eax, %edx
	movl	$24, %ecx
	subl	%edx, %ecx
	movl	108(%esp), %edx
	movl	%ecx, palcol
	movl	$16, %ecx
	addl	%ebx, %edx
	subl	%edx, %ecx
	movl	$8, %edx
	subl	92(%esp), %edx
	movl	%ecx, palcol+4
	movl	$24, %ecx
	subl	%eax, %ecx
	movl	$1, %eax
	movl	%edx, palcol+8
	movl	%eax, %edx
	sall	%cl, %edx
	movl	$16, %ecx
	negl	%edx
	subl	%ebx, %ecx
	andl	$16711680, %edx
	movl	%edx, palcol+12
	movl	%eax, %edx
	sall	%cl, %edx
	movl	$8, %ecx
	subl	96(%esp), %ecx
	sall	%cl, %eax
	negl	%edx
	negl	%eax
	andl	$65280, %edx
	andl	$255, %eax
	movl	%edx, palcol+16
	movl	%eax, palcol+20
	jmp	L2577
L2564:
	cmpl	$8, 108(%esp)
	jne	L2565
	movl	92(%esp), %eax
	cmpb	$0, 31(%esp)
	jne	L2566
	movl	$4, 108(%esp)
	leal	2(%eax), %esi
	jmp	L2562
L3202:
	movl	104(%esp), %esi
	sall	$2, %ebx
	sall	$2, %esi
	jmp	L2633
L2437:
	movzbl	48(%esp), %eax
	movzbl	44(%esp), %edx
	cmpb	$0, 64(%esp)
	je	L2439
	movl	96(%esp), %ebx
	movl	%ebx, __ZL6paleng
L2439:
	cmpb	$0, 92(%esp)
	je	L3206
	movzbl	108(%esp), %eax
	movb	%al, __ZL8kcoltype
	movzbl	100(%esp), %eax
	movb	%al, __ZL8bitdepth
	movl	80(%esp), %eax
	movl	%eax, __ZL4ysiz
	movl	84(%esp), %eax
	movl	%eax, __ZL4xsiz
	cmpb	$0, 56(%esp)
	je	L2444
	movl	60(%esp), %eax
	movl	%eax, __ZL6bakcol
L2444:
	movl	72(%esp), %eax
	movl	%eax, _intlac
L2442:
	movl	$0, __ZL10zipfilmode.lto_priv.0
	leal	-4(%esi), %eax
	leal	0(,%eax,8), %esi
	leal	(%edi,%eax), %ebx
	movl	$0, __ZL7nfilptr
	movl	%esi, %eax
	movl	%ebx, __ZL6filptr.lto_priv.0
	negl	%eax
	movl	%eax, __ZL6bitpos.lto_priv.0
	movl	88(%esp), %eax
	movl	%eax, __ZL13kp_frameplace
	movl	76(%esp), %eax
	movl	%eax, __ZL15kp_bytesperline
	movl	104(%esp), %eax
	movl	%eax, __ZL7kp_xres
	movl	68(%esp), %eax
	movl	%eax, __ZL7kp_yres
	movzbl	108(%esp), %eax
	cmpb	$4, %al
	je	L2446
	cmpb	$6, %al
	je	L2447
	cmpb	$2, %al
	je	L2448
	movl	$0, __ZL3xmn
L2450:
	movzbl	100(%esp), %eax
	cmpb	$2, %al
	je	L2724
	cmpb	$4, %al
	je	L2725
	cmpb	$1, %al
	jne	L2453
	movl	$2, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L2454:
	movl	%eax, %edx
	andl	$1, %edx
	movl	palcol(,%edx,4), %edx
	movl	%edx, palcol(,%eax,4)
	addl	$1, %eax
	cmpl	$256, %eax
	jne	L2454
	movzbl	108(%esp), %ecx
	movl	$67244801, %eax
	sall	$2, %ecx
	sarl	%cl, %eax
	andl	$15, %eax
	imull	84(%esp), %eax
	addl	$7, %eax
	sarl	$3, %eax
L2706:
	movl	%eax, _xsizbpl
	addl	$1, %eax
	cmpl	$131072, %eax
	ja	L3136
	call	__ZL8initpassv.isra.0
	movl	$16, %eax
	subl	%esi, %eax
	movl	%eax, 96(%esp)
	movl	%eax, __ZL6bitpos.lto_priv.0
	cmpl	$16, %esi
	jg	L2458
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6bitpos.lto_priv.0, %eax
	movl	__ZL6filptr.lto_priv.0, %ebx
	movl	%eax, 96(%esp)
L2458:
	movl	$16384, 108(%esp)
	xorl	%esi, %esi
L2515:
	movl	96(%esp), %edi
	movl	%edi, %eax
	sarl	$3, %eax
	movl	(%ebx,%eax), %eax
	movl	%eax, 92(%esp)
	movl	%edi, %eax
	addl	$1, %eax
	movl	%eax, __ZL6bitpos.lto_priv.0
	js	L2459
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6bitpos.lto_priv.0, %eax
	movl	__ZL6filptr.lto_priv.0, %ebx
L2459:
	movl	%eax, %edx
	movl	%eax, %ecx
	sarl	$3, %edx
	andl	$7, %ecx
	movl	(%ebx,%edx), %edx
	shrl	%cl, %edx
	andl	$3, %edx
	addl	$2, %eax
	movl	%eax, __ZL6bitpos.lto_priv.0
	movl	%edx, %ebx
	js	L2460
	call	__ZL17suckbitsnextblockv.lto_priv.0
L2460:
	testl	%ebx, %ebx
	je	L3207
	cmpl	$3, %ebx
	je	L2474
	cmpl	$1, %ebx
	jne	L2475
	movl	$8, 104(%esp)
	movss	104(%esp), %xmm0
	movl	$__ZL4clen.lto_priv.0+576, %edx
	movl	$__ZL4clen.lto_priv.0, %eax
	shufps	$0, %xmm0, %xmm0
	.p2align 5
	.p2align 4
	.p2align 3
L2476:
	movups	%xmm0, (%eax)
	addl	$32, %eax
	movups	%xmm0, -16(%eax)
	cmpl	$__ZL4clen.lto_priv.0+576, %eax
	jne	L2476
	movl	$9, 104(%esp)
	movss	104(%esp), %xmm0
	movl	$__ZL4clen.lto_priv.0+1024, %eax
	shufps	$0, %xmm0, %xmm0
	.p2align 4
	.p2align 4
	.p2align 3
L2477:
	movups	%xmm0, (%edx)
	addl	$32, %edx
	movups	%xmm0, -16(%edx)
	cmpl	%edx, %eax
	jne	L2477
	movl	$7, 104(%esp)
	movss	104(%esp), %xmm0
	shufps	$0, %xmm0, %xmm0
L2478:
	movups	%xmm0, (%eax)
	addl	$32, %eax
	movups	%xmm0, -16(%eax)
	cmpl	$__ZL4clen.lto_priv.0+1120, %eax
	jne	L2478
	movl	$8, 104(%esp)
	movss	104(%esp), %xmm0
	movl	$__ZL4clen.lto_priv.0+1152, %eax
	movl	$__ZL4clen.lto_priv.0+1280, %edx
	movl	$5, 104(%esp)
	shufps	$0, %xmm0, %xmm0
	movups	%xmm0, __ZL4clen.lto_priv.0+1120
	movups	%xmm0, __ZL4clen.lto_priv.0+1136
	movss	104(%esp), %xmm0
	shufps	$0, %xmm0, %xmm0
L2479:
	movups	%xmm0, (%eax)
	addl	$32, %eax
	movups	%xmm0, -16(%eax)
	cmpl	%eax, %edx
	jne	L2479
	movl	$32, 84(%esp)
	movl	$1152, %ebx
	movl	$288, 88(%esp)
L2480:
	movl	$__ZL5nbuf0.lto_priv.0, (%esp)
	movl	88(%esp), %edx
	movl	$__ZL5ibuf0.lto_priv.0, %ecx
	movl	$__ZL4clen.lto_priv.0, %eax
	call	__ZL10hufgencodePKiiPiS1_.lto_priv.0
	movl	$__ZL8qhufval0.lto_priv.0, %ecx
	movl	$__ZL5nbuf0.lto_priv.0, %edx
	movl	$9, 4(%esp)
	movl	$__ZL8qhufbit0.lto_priv.0, (%esp)
	movl	$__ZL5ibuf0.lto_priv.0, %eax
	call	__ZL11qhufgencodePKiS0_PiPhi.lto_priv.0
	movl	$__ZL5nbuf1.lto_priv.0, (%esp)
	movl	84(%esp), %edx
	leal	__ZL4clen.lto_priv.0(%ebx), %eax
	movl	$__ZL5ibuf1.lto_priv.0, %ecx
	call	__ZL10hufgencodePKiiPiS1_.lto_priv.0
	movl	$__ZL8qhufval1.lto_priv.0, %ecx
	movl	$__ZL5nbuf1.lto_priv.0, %edx
	movl	$6, 4(%esp)
	movl	$__ZL8qhufbit1.lto_priv.0, (%esp)
	movl	$__ZL5ibuf1.lto_priv.0, %eax
	call	__ZL11qhufgencodePKiS0_PiPhi.lto_priv.0
	.p2align 4
	.p2align 3
L2499:
	movl	108(%esp), %eax
	cmpl	%eax, %esi
	jge	L3208
L2500:
	movl	__ZL6bitpos.lto_priv.0, %eax
	movl	__ZL6filptr.lto_priv.0, %ebx
	movl	__ZL6bitpos.lto_priv.0, %ecx
	sarl	$3, %eax
	movl	(%ebx,%eax), %eax
	andl	$7, %ecx
	shrl	%cl, %eax
	andl	$511, %eax
	movzbl	__ZL8qhufbit0.lto_priv.0(%eax), %ecx
	testb	%cl, %cl
	je	L2503
	addl	%ecx, __ZL6bitpos.lto_priv.0
	movl	__ZL8qhufval0.lto_priv.0(,%eax,4), %ebx
	js	L2505
	call	__ZL17suckbitsnextblockv.lto_priv.0
L2505:
	cmpl	$255, %ebx
	jg	L2506
L3209:
	movl	%esi, %eax
	addl	$1, %esi
	andl	$32767, %eax
	movb	%bl, __ZL8slidebuf.lto_priv.0(%eax)
	movl	108(%esp), %eax
	cmpl	%eax, %esi
	jl	L2500
L3208:
	movl	%eax, %edi
	leal	-16384(%eax), %eax
	movl	$16384, %edx
	andl	$32767, %eax
	addl	$16384, %edi
	addl	$__ZL8slidebuf.lto_priv.0, %eax
	call	__ZL6putbufPKhi
	movl	%edi, 108(%esp)
	movl	__ZL7kp_yres, %eax
	cmpl	%eax, __ZL4yplc
	jl	L2500
	cmpl	$1, _intlac
	jg	L2500
L2470:
	cmpb	$4, __ZL8kcoltype
	jne	L2517
	movl	$0, __ZL6paleng
	jmp	L2517
	.p2align 4,,10
	.p2align 3
L2503:
	movl	$__ZL5nbuf0.lto_priv.0, %edx
	movl	$__ZL5ibuf0.lto_priv.0, %eax
	call	__ZL9hufgetsymPiPKi.lto_priv.0
	movl	%eax, %ebx
	cmpl	$255, %ebx
	jle	L3209
L2506:
	cmpl	$256, %ebx
	je	L2474
	movl	__ZL6bitpos.lto_priv.0, %edi
	movl	__ZL6filptr.lto_priv.0, %edx
	subl	$227, %ebx
	movl	%edi, %eax
	movl	%edi, %ecx
	sarl	$3, %eax
	andl	$7, %ecx
	movl	(%edx,%eax), %eax
	shrl	%cl, %eax
	movl	__ZL5hxbit.lto_priv.0(,%ebx,8), %ecx
	andl	__ZL8pow2mask.lto_priv.0(,%ecx,4), %eax
	addl	%ecx, %edi
	movl	%edi, __ZL6bitpos.lto_priv.0
	js	L2508
	movl	%eax, 104(%esp)
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6filptr.lto_priv.0, %edx
	movl	__ZL6bitpos.lto_priv.0, %edi
	movl	104(%esp), %eax
L2508:
	addl	__ZL5hxbit.lto_priv.0+4(,%ebx,8), %eax
	movl	%edi, %ecx
	movl	%eax, 104(%esp)
	movl	%edi, %eax
	andl	$7, %ecx
	sarl	$3, %eax
	movl	(%edx,%eax), %eax
	shrl	%cl, %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movzbl	__ZL8qhufbit1.lto_priv.0(%ecx), %eax
	testb	%al, %al
	je	L2509
	addl	%edi, %eax
	movl	__ZL8qhufval1.lto_priv.0(,%ecx,4), %ebx
	movl	%eax, __ZL6bitpos.lto_priv.0
	js	L2510
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6bitpos.lto_priv.0, %eax
	movl	__ZL6filptr.lto_priv.0, %edx
L2510:
	movl	%eax, %edi
	movl	%eax, %ecx
	sarl	$3, %edi
	andl	$7, %ecx
	movl	(%edx,%edi), %edx
	movl	__ZL5hxbit.lto_priv.0(,%ebx,8), %edi
	shrl	%cl, %edx
	andl	__ZL8pow2mask.lto_priv.0(,%edi,4), %edx
	addl	%edi, %eax
	movl	%eax, __ZL6bitpos.lto_priv.0
	js	L2511
	movl	%edx, 100(%esp)
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	100(%esp), %edx
L2511:
	movl	104(%esp), %eax
	addl	__ZL5hxbit.lto_priv.0+4(,%ebx,8), %edx
	movl	%esi, %ecx
	subl	%edx, %ecx
	leal	(%esi,%eax), %edi
	movl	%esi, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L2512:
	movl	%ecx, %edx
	addl	$1, %ecx
	andl	$32767, %edx
	movzbl	__ZL8slidebuf.lto_priv.0(%edx), %ebx
	movl	%eax, %edx
	addl	$1, %eax
	andl	$32767, %edx
	movb	%bl, __ZL8slidebuf.lto_priv.0(%edx)
	cmpl	%eax, %edi
	jg	L2512
	movl	104(%esp), %eax
	subl	$1, %eax
	cmpl	%edi, %esi
	movl	$0, %edi
	cmovge	%edi, %eax
	leal	1(%esi,%eax), %esi
	jmp	L2499
	.p2align 4,,10
	.p2align 3
L2509:
	movl	$__ZL5nbuf1.lto_priv.0, %edx
	movl	$__ZL5ibuf1.lto_priv.0, %eax
	call	__ZL9hufgetsymPiPKi.lto_priv.0
	movl	__ZL6filptr.lto_priv.0, %edx
	movl	%eax, %ebx
	movl	__ZL6bitpos.lto_priv.0, %eax
	jmp	L2510
L3214:
	movl	%edi, %esi
L2474:
	movl	96(%esp), %eax
	movl	92(%esp), %edi
	andl	$7, %eax
	btl	%eax, %edi
	jc	L2514
	movl	__ZL6bitpos.lto_priv.0, %eax
	movl	__ZL6filptr.lto_priv.0, %ebx
	movl	%eax, 96(%esp)
	jmp	L2515
L2475:
	movl	__ZL6bitpos.lto_priv.0, %eax
	movl	__ZL6filptr.lto_priv.0, %edi
	movl	__ZL6bitpos.lto_priv.0, %ecx
	addl	$1, __ZL12numhufblocks
	sarl	$3, %eax
	movl	%edi, 100(%esp)
	movl	(%edi,%eax), %eax
	andl	$7, %ecx
	shrl	%cl, %eax
	andl	$31, %eax
	movl	%eax, %ebx
	movl	__ZL6bitpos.lto_priv.0, %eax
	addl	$5, %eax
	movl	%eax, __ZL6bitpos.lto_priv.0
	js	L2481
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6filptr.lto_priv.0, %eax
	movl	%eax, 100(%esp)
	movl	__ZL6bitpos.lto_priv.0, %eax
L2481:
	leal	257(%ebx), %edi
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	%edi, 88(%esp)
	movl	100(%esp), %edi
	sarl	$3, %edx
	andl	$7, %ecx
	movl	(%edi,%edx), %edx
	shrl	%cl, %edx
	movl	%edx, %ebx
	andl	$31, %ebx
	addl	$5, %eax
	movl	%eax, __ZL6bitpos.lto_priv.0
	js	L2482
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6filptr.lto_priv.0, %eax
	movl	%eax, 100(%esp)
	movl	__ZL6bitpos.lto_priv.0, %eax
L2482:
	leal	1(%ebx), %edi
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	%edi, 84(%esp)
	movl	100(%esp), %edi
	sarl	$3, %edx
	andl	$7, %ecx
	movl	(%edi,%edx), %edx
	shrl	%cl, %edx
	movl	%edx, %ebx
	andl	$15, %ebx
	addl	$4, %eax
	movl	%eax, __ZL6bitpos.lto_priv.0
	js	L2483
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6filptr.lto_priv.0, %eax
	movl	%eax, 100(%esp)
	movl	__ZL6bitpos.lto_priv.0, %eax
L2483:
	addl	$4, %ebx
	movl	%esi, 80(%esp)
	xorl	%edi, %edi
	movl	100(%esp), %esi
	movl	%ebx, 104(%esp)
	jmp	L2486
L3210:
	movl	__ZL6bitpos.lto_priv.0, %eax
	movl	__ZL6filptr.lto_priv.0, %esi
L2486:
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	__ZL5ccind.lto_priv.0(,%edi,4), %ebx
	sarl	$3, %edx
	andl	$7, %ecx
	movl	(%esi,%edx), %edx
	shrl	%cl, %edx
	movl	%edx, %esi
	andl	$7, %esi
	addl	$3, %eax
	movl	%eax, __ZL6bitpos.lto_priv.0
	js	L2484
	call	__ZL17suckbitsnextblockv.lto_priv.0
L2484:
	movl	%esi, __ZL5cclen.lto_priv.0(,%ebx,4)
	addl	$1, %edi
	cmpl	%edi, 104(%esp)
	jne	L3210
	movl	104(%esp), %ebx
	movl	80(%esp), %esi
	cmpl	$19, %ebx
	je	L2487
L2488:
	movl	__ZL5ccind.lto_priv.0(,%ebx,4), %eax
	addl	$1, %ebx
	movl	$0, __ZL5cclen.lto_priv.0(,%eax,4)
	cmpl	$19, %ebx
	jne	L2488
L2487:
	movl	$__ZL5nbuf0.lto_priv.0, (%esp)
	movl	$__ZL5cclen.lto_priv.0, %eax
	movl	$__ZL5ibuf0.lto_priv.0, %ecx
	xorl	%edi, %edi
	movl	$19, %edx
	call	__ZL10hufgencodePKiiPiS1_.lto_priv.0
	movl	88(%esp), %eax
	addl	84(%esp), %eax
	movl	%esi, 100(%esp)
	movl	%eax, %esi
	jmp	L2498
L2489:
	movl	__ZL6bitpos.lto_priv.0, %edx
	movl	%edx, %ecx
	movl	%edx, %eax
	andl	$7, %ecx
	sarl	$3, %eax
	movl	%ecx, 104(%esp)
	movl	__ZL6filptr.lto_priv.0, %ecx
	movl	(%ecx,%eax), %eax
	movzbl	104(%esp), %ecx
	shrl	%cl, %eax
	cmpl	$16, %ebx
	je	L3211
	cmpl	$17, %ebx
	je	L3212
	andl	$127, %eax
	addl	$7, %edx
	movl	%edx, __ZL6bitpos.lto_priv.0
	movl	%eax, %ebx
	js	L2497
	call	__ZL17suckbitsnextblockv.lto_priv.0
L2497:
	addl	$11, %ebx
L2496:
	leal	__ZL4clen.lto_priv.0(,%edi,4), %eax
	leal	0(,%ebx,4), %edx
	addl	%ebx, %edi
	movl	$0, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, (%esp)
	call	_memset
L2490:
	cmpl	%edi, %esi
	jle	L3213
L2498:
	movl	$__ZL5nbuf0.lto_priv.0, %edx
	movl	$__ZL5ibuf0.lto_priv.0, %eax
	call	__ZL9hufgetsymPiPKi.lto_priv.0
	movl	%eax, %ebx
	cmpl	$15, %eax
	jg	L2489
	movl	%eax, __ZL4clen.lto_priv.0(,%edi,4)
	addl	$1, %edi
	jmp	L2490
L3212:
	andl	$7, %eax
	addl	$3, %edx
	movl	%edx, __ZL6bitpos.lto_priv.0
	movl	%eax, %ebx
	js	L2495
	call	__ZL17suckbitsnextblockv.lto_priv.0
L2495:
	addl	$3, %ebx
	jmp	L2496
L3211:
	andl	$3, %eax
	addl	$2, %edx
	movl	%edx, __ZL6bitpos.lto_priv.0
	movl	%eax, %ebx
	js	L2492
	call	__ZL17suckbitsnextblockv.lto_priv.0
L2492:
	leal	3(%edi,%ebx), %edx
	andl	$1, %ebx
	movl	__ZL4clen.lto_priv.0-4(,%edi,4), %eax
	jne	L2493
	movl	%eax, __ZL4clen.lto_priv.0(,%edi,4)
	addl	$1, %edi
	cmpl	%edx, %edi
	je	L2490
L2493:
	movl	%eax, __ZL4clen.lto_priv.0(,%edi,4)
	movl	%eax, __ZL4clen.lto_priv.0+4(,%edi,4)
	addl	$2, %edi
	cmpl	%edx, %edi
	jne	L2493
	jmp	L2490
L3213:
	movl	88(%esp), %eax
	movl	100(%esp), %esi
	leal	0(,%eax,4), %ebx
	jmp	L2480
L3207:
	movl	__ZL6bitpos.lto_priv.0, %edx
	movl	%edx, %eax
	negl	%eax
	andl	$7, %eax
	addl	%edx, %eax
	movl	%eax, __ZL6bitpos.lto_priv.0
	js	L2462
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6bitpos.lto_priv.0, %eax
L2462:
	movl	%eax, %ebx
	movl	__ZL6filptr.lto_priv.0, %edx
	movl	%eax, %ecx
	sarl	$3, %ebx
	andl	$7, %ecx
	movl	(%edx,%ebx), %edi
	shrl	%cl, %edi
	addl	$16, %eax
	movl	%eax, __ZL6bitpos.lto_priv.0
	js	L2463
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6bitpos.lto_priv.0, %eax
	movl	__ZL6filptr.lto_priv.0, %edx
L2463:
	movl	%eax, %ebx
	movl	%eax, %ecx
	sarl	$3, %ebx
	andl	$7, %ecx
	movl	(%edx,%ebx), %ebx
	shrl	%cl, %ebx
	addl	$16, %eax
	movl	%eax, __ZL6bitpos.lto_priv.0
	js	L2464
	call	__ZL17suckbitsnextblockv.lto_priv.0
L2464:
	movl	%ebx, %eax
	xorl	%edi, %eax
	movzwl	%ax, %eax
	cmpl	$65535, %eax
	jne	L3136
	movl	%edi, %eax
	andl	$65535, %eax
	je	L2474
	movl	%esi, %ebx
	leal	(%esi,%eax), %edi
	movl	108(%esp), %esi
	cmpl	%ebx, %esi
	jg	L2468
L3215:
	leal	-16384(%esi), %eax
	movl	$16384, %edx
	addl	$16384, %esi
	andl	$32767, %eax
	addl	$__ZL8slidebuf.lto_priv.0, %eax
	call	__ZL6putbufPKhi
	movl	%esi, 108(%esp)
	movl	__ZL7kp_yres, %eax
	cmpl	%eax, __ZL4yplc
	jl	L2468
	cmpl	$1, _intlac
	jle	L2470
L2468:
	movl	__ZL6bitpos.lto_priv.0, %eax
	movl	__ZL6filptr.lto_priv.0, %esi
	movl	%eax, %edx
	movl	%eax, %ecx
	sarl	$3, %edx
	andl	$7, %ecx
	movl	(%esi,%edx), %esi
	shrl	%cl, %esi
	addl	$8, %eax
	movl	%eax, __ZL6bitpos.lto_priv.0
	js	L2472
	call	__ZL17suckbitsnextblockv.lto_priv.0
L2472:
	leal	1(%ebx), %eax
	movl	%esi, %ecx
	andl	$32767, %ebx
	movb	%cl, __ZL8slidebuf.lto_priv.0(%ebx)
	cmpl	%edi, %eax
	je	L3214
	movl	108(%esp), %esi
	movl	%eax, %ebx
	cmpl	%ebx, %esi
	jg	L2468
	jmp	L3215
L2720:
	movb	$2, 108(%esp)
	jmp	L2418
L3199:
	negl	%eax
	movl	%eax, 100(%esp)
	jmp	L2586
L3181:
	addl	$1, 80(%esp)
	movl	64(%esp), %ebx
	movl	%eax, 48(%esp)
	jmp	L2546
L2413:
	movzbl	56(%esp), %eax
	movl	$16, 40(%esp)
	movl	$-16777216, 60(%esp)
	sarb	$7, %al
	movsbl	%al, %eax
	movl	%eax, 36(%esp)
L2415:
	movzbl	-1(%ebx), %ecx
	movzbl	(%ebx), %eax
	addl	$2, %ebx
	sall	$8, %ecx
	addl	%eax, %ecx
	movl	52(%esp), %eax
	imull	%ecx
	movl	36(%esp), %eax
	xorl	%ecx, %eax
	subl	36(%esp), %eax
	movl	56(%esp), %ecx
	addl	%edx, %eax
	movl	%eax, %edx
	shrl	$31, %eax
	sarl	%cl, %edx
	addl	%edx, %eax
	movl	40(%esp), %edx
	movl	%edx, %ecx
	subl	$8, %edx
	sall	%cl, %eax
	movl	%edx, 40(%esp)
	addl	%eax, 60(%esp)
	cmpl	$-8, %edx
	jne	L2415
	jmp	L3138
L3198:
	cmpw	$1, 22(%eax)
	jne	L3136
	movzwl	20(%eax), %esi
	movzwl	18(%eax), %edi
	xorl	%ecx, %ecx
	movzwl	24(%eax), %eax
	movl	%esi, 100(%esp)
	movl	%eax, 80(%esp)
	jmp	L2570
L2563:
	movl	92(%esp), %eax
	movl	$2, 108(%esp)
	leal	1(%eax), %esi
	jmp	L2562
L3180:
	movzwl	__ZL9filbuffer(%esi), %ecx
	movl	32(%esp), %eax
	subl	%esi, %ebx
	movw	%cx, __ZL9filbuffer
	movl	%ebx, %ecx
	movzbl	(%eax), %ebx
	leal	1(%eax), %esi
	cmpl	$16, %ebx
	jnb	L2548
	testb	$8, %bl
	jne	L3216
	testb	$4, %bl
	jne	L3217
	testl	%ebx, %ebx
	je	L2549
	movl	32(%esp), %eax
	movzbl	1(%eax), %edx
	movb	%dl, __ZL9filbuffer(%ecx)
	testb	$2, %bl
	jne	L3218
L2549:
	leal	(%esi,%ebx), %eax
	andl	$7, 40(%esp)
	addl	%ecx, %ebx
	movl	%eax, 32(%esp)
	jmp	L2547
L2731:
	movzbl	30(%esp), %eax
	addl	$1, %eax
	movb	%al, 52(%esp)
	movl	60(%esp), %eax
	leal	(%eax,%eax), %esi
	addl	$2, %eax
	movl	%esi, 56(%esp)
	movl	%eax, 80(%esp)
	jmp	L2546
L3194:
	movb	$2, 108(%esp)
	jmp	L2431
L3204:
	movzbl	100(%esp), %eax
	movb	%al, __ZL8bitdepth
	jmp	L3152
L2534:
	movzwl	80(%esp), %edi
	movl	60(%esp), %eax
	addl	%edi, 84(%esp)
	addl	%eax, 72(%esp)
	movl	%edi, 44(%esp)
	movl	%edi, 36(%esp)
	movl	%eax, 92(%esp)
	jmp	L2535
L2548:
	movl	-16(%esi,%ebx), %edx
	movl	%edx, __ZL9filbuffer-16(%ecx,%ebx)
	movl	-12(%esi,%ebx), %edx
	movl	%edx, __ZL9filbuffer-12(%ecx,%ebx)
	movl	-8(%esi,%ebx), %edx
	movl	%edx, __ZL9filbuffer-8(%ecx,%ebx)
	movl	-4(%esi,%ebx), %edx
	movl	%edx, __ZL9filbuffer-4(%ecx,%ebx)
	leal	-1(%ebx), %edx
	cmpl	$16, %edx
	jb	L2549
	andl	$-16, %edx
	movl	%edx, 32(%esp)
	xorl	%edx, %edx
L2553:
	movl	4(%esi,%edx), %eax
	movl	%eax, 24(%esp)
	movl	8(%esi,%edx), %eax
	movl	%eax, 20(%esp)
	movl	12(%esi,%edx), %eax
	movl	%eax, 16(%esp)
	movl	(%esi,%edx), %eax
	movl	%eax, __ZL9filbuffer(%ecx,%edx)
	movl	24(%esp), %eax
	movl	%eax, __ZL9filbuffer+4(%ecx,%edx)
	movl	20(%esp), %eax
	movl	%eax, __ZL9filbuffer+8(%ecx,%edx)
	movl	16(%esp), %eax
	movl	%eax, __ZL9filbuffer+12(%ecx,%edx)
	addl	$16, %edx
	cmpl	32(%esp), %edx
	jb	L2553
	jmp	L2549
L2566:
	movb	$0, 31(%esp)
	leal	4(%eax), %esi
	jmp	L2562
L3179:
	movl	%ebx, %eax
	andl	$-16, %eax
	movl	%eax, 96(%esp)
	xorl	%eax, %eax
L2542:
	movl	4(%esi,%eax), %ecx
	movl	12(%esi,%eax), %edx
	movl	%ecx, 80(%esp)
	movl	8(%esi,%eax), %ecx
	movl	%ecx, 64(%esp)
	movl	(%esi,%eax), %ecx
	addl	$16, %eax
	movl	%edx, __ZL9filbuffer-4(%eax)
	movl	%ecx, __ZL9filbuffer-16(%eax)
	movl	80(%esp), %ecx
	movl	%ecx, __ZL9filbuffer-12(%eax)
	movl	64(%esp), %ecx
	movl	%ecx, __ZL9filbuffer-8(%eax)
	cmpl	96(%esp), %eax
	jb	L2542
	leal	__ZL9filbuffer(%eax), %ecx
	leal	(%esi,%eax), %edx
	jmp	L2541
L2537:
	movl	36(%esp), %eax
	leal	-2147483648(%eax), %edi
	movl	84(%esp), %eax
	addl	$-2147483648, %eax
	movl	%eax, 48(%esp)
	jmp	L2538
L2453:
	movzbl	108(%esp), %ecx
	movl	$67244801, %eax
	sall	$2, %ecx
	sarl	%cl, %eax
	andl	$15, %eax
	imull	84(%esp), %eax
	jmp	L2706
L2725:
	movl	$16, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L2452:
	movl	%eax, %edx
	andl	$15, %edx
	movl	palcol(,%edx,4), %edx
	movl	%edx, palcol(,%eax,4)
	addl	$1, %eax
	cmpl	$256, %eax
	jne	L2452
	movzbl	108(%esp), %ecx
	movl	$67244801, %eax
	sall	$2, %ecx
	sarl	%cl, %eax
	andl	$15, %eax
	imull	84(%esp), %eax
	addl	$1, %eax
	sarl	%eax
	jmp	L2706
L2724:
	movl	$4, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L2451:
	movl	%eax, %edx
	andl	$3, %edx
	movl	palcol(,%edx,4), %edx
	movl	%edx, palcol(,%eax,4)
	addl	$1, %eax
	cmpl	$256, %eax
	jne	L2451
	movzbl	108(%esp), %ecx
	movl	$67244801, %eax
	sall	$2, %ecx
	sarl	%cl, %eax
	andl	$15, %eax
	imull	84(%esp), %eax
	addl	$3, %eax
	sarl	$2, %eax
	jmp	L2706
L2448:
	movl	$1, %eax
	movl	$2, %edx
	movl	$0, __ZL3xmn+8
	movl	%eax, __ZL3xmn
	movl	%edx, __ZL3xmn+4
	jmp	L2450
L2447:
	movups	LC47, %xmm0
	movups	%xmm0, __ZL3xmn
	jmp	L2450
L2446:
	movl	$1, %eax
	xorl	%edx, %edx
	movl	%eax, __ZL3xmn
	movl	%edx, __ZL3xmn+4
	jmp	L2450
L3206:
	movl	__ZL4xsiz, %ebx
	movl	%ebx, 84(%esp)
	cmpb	$0, 56(%esp)
	je	L2445
	movl	60(%esp), %ebx
	movl	%ebx, __ZL6bakcol
L2445:
	movb	%dl, 100(%esp)
	movb	%al, 108(%esp)
	jmp	L2442
L2514:
	movl	108(%esp), %eax
	leal	-16384(%eax), %edx
	movl	%edx, %eax
	movl	%edx, %ecx
	andl	$32767, %eax
	xorl	%esi, %ecx
	addl	$__ZL8slidebuf.lto_priv.0, %eax
	andb	$-128, %ch
	jne	L2516
	subl	%edx, %esi
	movl	%esi, %edx
	call	__ZL6putbufPKhi
	jmp	L2470
L3205:
	movl	92(%esp), %eax
	xorl	%edx, %edx
	addl	%eax, %ebx
L2584:
	movl	14(%ebx,%edx,4), %eax
	xorl	%ecx, %ecx
	movl	$0, palcol(,%edx,4)
	jmp	L2581
L3219:
	addl	$1, %ecx
	shrl	%eax
	movl	%ecx, palcol(,%edx,4)
	cmpl	$32, %ecx
	je	L2580
L2581:
	testb	$1, %al
	je	L3219
L2580:
	movl	$0, palcol+12(,%edx,4)
	xorl	%ecx, %ecx
	jmp	L2583
L3220:
	addl	$1, %ecx
	shrl	%eax
	movl	%ecx, palcol+12(,%edx,4)
	cmpl	$32, %ecx
	je	L2582
L2583:
	testb	$1, %al
	jne	L3220
L2582:
	addl	$1, %edx
	cmpl	$3, %edx
	jne	L2584
	movl	palcol+4, %ecx
	movl	palcol, %edx
	movl	palcol+12, %eax
	movl	palcol+16, %ebx
	movl	%ecx, 108(%esp)
	movl	palcol+20, %ecx
	movl	%ecx, 96(%esp)
	addl	palcol+8, %ecx
	movl	%ecx, 92(%esp)
	jmp	L2579
L2735:
	movl	$16, %edx
	movl	$8, %eax
	jmp	L2578
L2902:
	movl	84(%esp), %esi
	movl	%eax, %ecx
	movl	%edi, %ebx
	leal	(%esi,%esi), %eax
L2593:
	movl	108(%esp), %esi
	movl	%ebx, %edx
	leal	(%eax,%ebx), %edi
	cmpl	$0, 84(%esp)
	jle	L3167
	movl	%ebx, 64(%esp)
	movl	%ecx, 60(%esp)
	movl	%edi, 72(%esp)
	movl	%eax, 56(%esp)
L2613:
	movzwl	(%edx), %eax
	movl	palcol, %ecx
	addl	$2, %edx
	addl	$4, %esi
	movl	%eax, %ebx
	movl	%eax, %edi
	roll	%cl, %ebx
	movl	palcol+4, %ecx
	andl	palcol+12, %ebx
	roll	%cl, %edi
	movl	palcol+16, %ecx
	andl	%edi, %ecx
	leal	-16777216(%ebx,%ecx), %ebx
	movl	palcol+8, %ecx
	roll	%cl, %eax
	andl	palcol+20, %eax
	addl	%eax, %ebx
	movl	%ebx, -4(%esi)
	cmpl	%edx, 72(%esp)
	jne	L2613
	movl	64(%esp), %ebx
	movl	60(%esp), %ecx
	movl	56(%esp), %eax
L3167:
	addl	$1, %ecx
	cmpl	%ecx, 100(%esp)
	je	L2517
	movl	76(%esp), %esi
	movl	88(%esp), %edx
	addl	%esi, 108(%esp)
	addl	96(%esp), %ebx
	addl	%edx, 92(%esp)
	addl	%esi, 104(%esp)
	cmpl	68(%esp), %ecx
	jb	L2593
	movl	%ebx, %edi
	movl	%ecx, %eax
	jmp	L2589
L3082:
	movl	108(%esp), %ebx
L2594:
	movl	84(%esp), %esi
	movl	%ebx, %ecx
	movl	%edi, %edx
	addl	%edi, %esi
	cmpl	$0, 84(%esp)
	jle	L3165
	movl	%edi, 108(%esp)
L2611:
	movzbl	(%edx), %edi
	addl	$1, %edx
	addl	$4, %ecx
	movl	palcol(,%edi,4), %edi
	movl	%edi, -4(%ecx)
	cmpl	%edx, %esi
	jne	L2611
	movl	108(%esp), %edi
L3165:
	addl	$1, %eax
	cmpl	%eax, 100(%esp)
	je	L2517
	movl	76(%esp), %esi
	movl	88(%esp), %ecx
	addl	%esi, 104(%esp)
	addl	96(%esp), %edi
	addl	%ecx, 92(%esp)
	addl	%esi, %ebx
	cmpl	68(%esp), %eax
	jb	L2594
	movl	%ebx, 108(%esp)
	jmp	L2589
L3081:
	movl	%eax, %ecx
	movl	108(%esp), %eax
L2595:
	movl	$-4, %ebx
	xorl	%edx, %edx
	leal	-4(%eax), %esi
	cmpl	$0, 84(%esp)
	jle	L3221
	movl	%ecx, 108(%esp)
	movl	%eax, 72(%esp)
L2605:
	movl	%edx, %eax
	movl	%ebx, %ecx
	addl	$1, %edx
	sarl	%eax
	andl	$4, %ecx
	movzbl	(%edi,%eax), %eax
	sarl	%cl, %eax
	andl	$15, %eax
	movl	palcol(,%eax,4), %ecx
	movl	%esi, %eax
	subl	%ebx, %eax
	subl	$4, %ebx
	movl	%ecx, (%eax)
	cmpl	%edx, 84(%esp)
	jne	L2605
	movl	108(%esp), %ecx
	movl	72(%esp), %eax
	addl	$1, %ecx
	cmpl	100(%esp), %ecx
	je	L2517
L3154:
	movl	76(%esp), %esi
	movl	88(%esp), %edx
	addl	%esi, 104(%esp)
	addl	96(%esp), %edi
	addl	%edx, 92(%esp)
	addl	%esi, %eax
	cmpl	68(%esp), %ecx
	jb	L2595
	movl	%eax, 108(%esp)
	movl	%ecx, %eax
	jmp	L2589
L3221:
	addl	$1, %ecx
	cmpl	%ecx, 100(%esp)
	jne	L3154
	jmp	L2517
L2607:
	addl	$1, %eax
	cmpl	%eax, 100(%esp)
	jne	L3162
	jmp	L2517
L2516:
	movl	$16384, %edx
	subl	108(%esp), %edx
	andl	$32767, %esi
	andl	$32767, %edx
	call	__ZL6putbufPKhi
	movl	%esi, %edx
	movl	$__ZL8slidebuf.lto_priv.0, %eax
	call	__ZL6putbufPKhi
	jmp	L2470
L3084:
	movl	%edi, %ecx
	movl	108(%esp), %edx
	movl	92(%esp), %edi
	movl	76(%esp), %esi
L2590:
	movl	%edx, %ebx
	cmpl	$0, 84(%esp)
	jle	L3222
	movl	%eax, 72(%esp)
	movl	104(%esp), %eax
	movl	%ecx, 92(%esp)
	movl	%edx, 64(%esp)
	movl	%esi, 60(%esp)
	movl	%eax, 108(%esp)
L2597:
	movl	(%edi,%ebx), %eax
	movl	palcol, %ecx
	addl	$4, %ebx
	movl	%eax, %edx
	movl	%eax, %esi
	roll	%cl, %edx
	movl	palcol+4, %ecx
	andl	palcol+12, %edx
	roll	%cl, %esi
	movl	palcol+16, %ecx
	andl	%esi, %ecx
	leal	-16777216(%edx,%ecx), %edx
	movl	palcol+8, %ecx
	roll	%cl, %eax
	andl	palcol+20, %eax
	addl	%eax, %edx
	movl	%edx, -4(%ebx)
	cmpl	%ebx, 108(%esp)
	jne	L2597
	movl	72(%esp), %eax
	movl	92(%esp), %ecx
	movl	64(%esp), %edx
	movl	60(%esp), %esi
	addl	$1, %eax
	cmpl	%eax, 100(%esp)
	je	L2517
L3160:
	addl	%esi, 104(%esp)
	addl	96(%esp), %ecx
	addl	%esi, %edx
	addl	88(%esp), %edi
	cmpl	68(%esp), %eax
	jb	L2590
	movl	%edi, 92(%esp)
	movl	%ecx, %edi
	jmp	L3141
L3222:
	addl	$1, %eax
	cmpl	%eax, 100(%esp)
	jne	L3160
	jmp	L2517
L3083:
	movl	108(%esp), %ecx
L2592:
	movl	84(%esp), %esi
	movl	%edi, %ebx
	movl	%ecx, %edx
	testl	%esi, %esi
	jle	L3223
	movl	%edi, 108(%esp)
	movl	104(%esp), %esi
L2615:
	movl	(%ebx), %edi
	addl	$4, %edx
	addl	$3, %ebx
	orl	$-16777216, %edi
	movl	%edi, -4(%edx)
	cmpl	%edx, %esi
	jne	L2615
	movl	%esi, 104(%esp)
	movl	108(%esp), %edi
	addl	$1, %eax
	cmpl	%eax, 100(%esp)
	je	L2517
	movl	76(%esp), %ebx
	movl	88(%esp), %esi
	addl	%ebx, 104(%esp)
	addl	96(%esp), %edi
	addl	%esi, 92(%esp)
	addl	%ebx, %ecx
	cmpl	68(%esp), %eax
	jb	L2592
L3143:
	movl	%ecx, 108(%esp)
	jmp	L2589
L3223:
	addl	$1, %eax
	cmpl	%eax, 100(%esp)
	je	L2517
	movl	76(%esp), %esi
	movl	88(%esp), %ebx
	addl	%esi, 104(%esp)
	addl	96(%esp), %edi
	addl	%ebx, 92(%esp)
	addl	%esi, %ecx
	cmpl	68(%esp), %eax
	jb	L2592
	jmp	L3143
L3217:
	movl	(%esi), %edx
	movl	%edx, __ZL9filbuffer(%ecx)
	movl	-4(%esi,%ebx), %edx
	movl	%edx, __ZL9filbuffer-4(%ecx,%ebx)
	jmp	L2549
L3218:
	movzwl	-2(%esi,%ebx), %edx
	movw	%dx, __ZL9filbuffer-2(%ecx,%ebx)
	jmp	L2549
L3216:
	movl	(%esi), %eax
	movl	4(%esi), %edx
	movl	%eax, __ZL9filbuffer(%ecx)
	movl	%edx, __ZL9filbuffer+4(%ecx)
	movl	-8(%esi,%ebx), %eax
	movl	-4(%esi,%ebx), %edx
	movl	%eax, __ZL9filbuffer-8(%ecx,%ebx)
	movl	%edx, __ZL9filbuffer-4(%ecx,%ebx)
	jmp	L2549
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	_kprender.cold;	.scl	3;	.type	32;	.endef
_kprender.cold:
LFSB153:
L2426:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpb	$0, 64(%esp)
	je	L2434
	movl	96(%esp), %eax
	movl	%eax, __ZL6paleng
L2434:
	cmpb	$0, 92(%esp)
	je	L2435
	movzbl	108(%esp), %eax
	movb	%al, __ZL8kcoltype
	movzbl	100(%esp), %eax
	movb	%al, __ZL8bitdepth
	movl	80(%esp), %eax
	movl	%eax, __ZL4ysiz
	movl	84(%esp), %eax
	movl	%eax, __ZL4xsiz
	cmpb	$0, 56(%esp)
	je	L2436
L2435:
	movl	60(%esp), %eax
	movl	%eax, __ZL6bakcol
L2436:
	movl	72(%esp), %eax
	movl	%eax, _intlac
	.cfi_endproc
LFE153:
	.text
	.section	.text.unlikely,"x"
LCOLDE53:
	.text
LHOTE53:
	.globl	__ZL8qhufbit1.lto_priv.0
	.bss
	.align 32
__ZL8qhufbit1.lto_priv.0:
	.space 64
	.globl	__ZL8qhufval1.lto_priv.0
	.align 32
__ZL8qhufval1.lto_priv.0:
	.space 256
	.globl	__ZL5nbuf1.lto_priv.0
	.align 32
__ZL5nbuf1.lto_priv.0:
	.space 128
	.globl	__ZL5ibuf1.lto_priv.0
	.align 32
__ZL5ibuf1.lto_priv.0:
	.space 128
	.globl	__ZL8qhufbit0.lto_priv.0
	.align 32
__ZL8qhufbit0.lto_priv.0:
	.space 512
	.globl	__ZL8qhufval0.lto_priv.0
	.align 32
__ZL8qhufval0.lto_priv.0:
	.space 2048
	.globl	__ZL5nbuf0.lto_priv.0
	.align 32
__ZL5nbuf0.lto_priv.0:
	.space 128
	.globl	__ZL5ibuf0.lto_priv.0
	.align 32
__ZL5ibuf0.lto_priv.0:
	.space 1152
	.globl	__ZL5cclen.lto_priv.0
	.align 32
__ZL5cclen.lto_priv.0:
	.space 76
	.globl	__ZL5ccind.lto_priv.0
	.section .rdata,"dr"
	.align 32
__ZL5ccind.lto_priv.0:
	.long	16
	.long	17
	.long	18
	.long	0
	.long	8
	.long	7
	.long	9
	.long	6
	.long	10
	.long	5
	.long	11
	.long	4
	.long	12
	.long	3
	.long	13
	.long	2
	.long	14
	.long	1
	.long	15
	.globl	__ZL4clen.lto_priv.0
	.bss
	.align 32
__ZL4clen.lto_priv.0:
	.space 1280
	.globl	__ZL8slidebuf.lto_priv.0
	.align 32
__ZL8slidebuf.lto_priv.0:
	.space 32768
	.globl	trnsrgb
	.align 4
trnsrgb:
	.space 4
	.globl	__ZL9pnginited.lto_priv.0
__ZL9pnginited.lto_priv.0:
	.space 1
.lcomm __ZL9tempstack,4096,32
.lcomm __ZL9filbuffer,768,32
.lcomm __ZL6suffix,4100,32
.lcomm __ZL6prefix,16400,32
.lcomm __ZL12numhufblocks,4,4
.lcomm __ZL6bakcol,4,4
.lcomm __ZL6paleng,4,4
.lcomm __ZL5zigit,256,32
.lcomm __ZL8dcflagor,64,32
.lcomm __ZL3dct,3072,32
.lcomm __ZL12lcompquantab,16,4
.lcomm __ZL7lcompac,16,4
.lcomm __ZL7lcompdc,16,4
.lcomm __ZL7lcompid,16,4
.lcomm __ZL7quantab,1024,32
	.section .rdata,"dr"
	.align 32
__ZL7cosqr16:
	.long	23726566
	.long	23270667
	.long	21920489
	.long	19727919
	.long	16777216
	.long	13181774
	.long	9079764
	.long	4628823
.lcomm __ZL5unzig,256,32
.lcomm __ZL12hufquickbits,32768,32
.lcomm __ZL11hufquickval,32768,32
.lcomm __ZL11hufquickcnt,32,32
.lcomm __ZL11hufnumatbit,160,32
.lcomm __ZL15gcompvsampshift,16,4
.lcomm __ZL15gcomphsampshift,16,4
.lcomm __ZL12gcompquantab,16,4
.lcomm __ZL10gcompvsamp,16,4
.lcomm __ZL10gcomphsamp,16,4
.lcomm __ZL7gcompid,16,4
.lcomm __ZL14gnumcomponents,1,1
.lcomm __ZL6hufcnt,32,32
.lcomm __ZL6lastdc,16,16
.lcomm __ZL10kpeginited,4,4
.lcomm __ZL10lcompvsamp,16,4
.lcomm __ZL7colclip,4096,32
.lcomm __ZL10colclipup8,4096,32
.lcomm __ZL5cbmul,16384,32
.lcomm __ZL11colclipup16,4096,32
.lcomm __ZL5crmul,16384,32
.lcomm __ZL16lcomphsampshift0,4,4
.lcomm __ZL16lcompvsampshift0,4,4
.lcomm __ZL12lcomphvsamp0,4,4
.lcomm __ZL14lnumcomponents,4,4
.lcomm __ZL8clipxdim,4,4
.lcomm __ZL10lcomphsamp,16,4
.lcomm __ZL8clipydim,4,4
.lcomm __ZL8huftable,2048,32
.lcomm __ZL11hufvalatbit,640,32
	.align 32
__ZL8pow2long:
	.long	1
	.long	2
	.long	4
	.long	8
	.long	16
	.long	32
	.long	64
	.long	128
	.long	256
	.long	512
	.long	1024
	.long	2048
	.long	4096
	.long	8192
	.long	16384
	.long	32768
	.long	65536
	.long	131072
	.long	262144
	.long	524288
	.long	1048576
	.long	2097152
	.long	4194304
	.long	8388608
	.long	16777216
	.long	33554432
	.long	67108864
	.long	134217728
	.long	268435456
	.long	536870912
	.long	1073741824
	.long	-2147483648
.lcomm __ZL11hufmaxatbit,640,32
	.globl	abstab10
	.bss
	.align 32
abstab10:
	.space 4096
	.globl	__ZL5hxbit.lto_priv.0
	.align 32
__ZL5hxbit.lto_priv.0:
	.space 472
	.globl	palcol
	.align 32
palcol:
	.space 1024
.lcomm __ZL7kp_yres,4,4
.lcomm __ZL3xmn,16,16
.lcomm __ZL9filterest,4,4
.lcomm __ZL9filter1st,4,4
.lcomm _ixstp,4,4
.lcomm __ZL3xr1,4,4
.lcomm __ZL3xr0,4,4
.lcomm __ZL7kp_xres,4,4
.lcomm __ZL7nfplace,4,4
.lcomm __ZL13kp_frameplace,4,4
.lcomm __ZL4filt,4,4
.lcomm __ZL2xm,4,4
.lcomm __ZL4yplc,4,4
.lcomm __ZL4xplc,4,4
.lcomm __ZL8opixbuf1,4,4
.lcomm __ZL8opixbuf0,4,4
.lcomm __ZL8bitdepth,1,1
.lcomm _xsizbpl,4,4
.lcomm __ZL8kcoltype,1,1
.lcomm _nbpl,4,4
.lcomm __ZL15kp_bytesperline,4,4
.lcomm _iystp,4,4
.lcomm __ZL4ysiz,4,4
.lcomm __ZL4xsiz,4,4
.lcomm _intlac,4,4
	.globl	__ZL8pow2mask.lto_priv.0
	.section .rdata,"dr"
	.align 32
__ZL8pow2mask.lto_priv.0:
	.long	0
	.long	1
	.long	3
	.long	7
	.long	15
	.long	31
	.long	63
	.long	127
	.long	255
	.long	511
	.long	1023
	.long	2047
	.long	4095
	.long	8191
	.long	16383
	.long	32767
	.long	65535
	.long	131071
	.long	262143
	.long	524287
	.long	1048575
	.long	2097151
	.long	4194303
	.long	8388607
	.long	16777215
	.long	33554431
	.long	67108863
	.long	134217727
	.long	268435455
	.long	536870911
	.long	1073741823
	.long	2147483647
.lcomm __ZL7fakebuf,8,4
.lcomm __ZL7nbitpos,4,4
	.globl	__ZL6filptr.lto_priv.0
	.bss
	.align 4
__ZL6filptr.lto_priv.0:
	.space 4
.lcomm __ZL7nfilptr,4,4
	.globl	__ZL6bitpos.lto_priv.0
	.align 4
__ZL6bitpos.lto_priv.0:
	.space 4
	.globl	olinbuf
	.align 32
olinbuf:
	.space 131072
	.globl	__ZL10zipfilmode.lto_priv.0
	.align 4
__ZL10zipfilmode.lto_priv.0:
	.space 4
.lcomm __ZL9lzwrawbuf,17408,32
.lcomm __ZL10lzwcompbuf,17408,32
.lcomm __ZL9lzwtmpbuf,17408,32
.lcomm __ZL7lzwbuf2,34816,32
.lcomm __ZL7lzwbuf3,34816,32
	.globl	_globalnoeffect
	.align 4
_globalnoeffect:
	.space 4
	.globl	_tilefilenum
	.align 32
_tilefilenum:
	.space 30720
.lcomm _hicreplc,122880,32
	.globl	__ZL7h_cvars.lto_priv.0
	.data
	.align 4
__ZL7h_cvars.lto_priv.0:
	.long	256
	.space 8
	.long	0
	.section .rdata,"dr"
	.align 32
__ZL6primes:
	.long	11
	.long	0
	.long	13
	.long	0
	.long	17
	.long	0
	.long	19
	.long	0
	.long	37
	.long	0
	.long	41
	.long	0
	.long	43
	.long	0
	.long	59
	.long	0
	.long	67
	.long	0
	.long	73
	.long	0
	.long	79
	.long	0
	.long	83
	.long	0
	.long	109
	.long	0
	.long	113
	.long	0
	.long	131
	.long	0
	.long	139
	.long	0
	.long	149
	.long	0
	.long	157
	.long	0
	.long	163
	.long	0
	.long	173
	.long	0
	.long	191
	.long	0
	.long	211
	.long	0
	.long	227
	.long	0
	.long	241
	.long	0
	.long	257
	.long	0
	.long	269
	.long	0
	.long	283
	.long	0
	.long	307
	.long	0
	.long	331
	.long	0
	.long	349
	.long	0
	.long	373
	.long	0
	.long	397
	.long	0
	.long	419
	.long	0
	.long	439
	.long	0
	.long	461
	.long	0
	.long	499
	.long	0
	.long	523
	.long	0
	.long	557
	.long	0
	.long	587
	.long	0
	.long	617
	.long	0
	.long	647
	.long	0
	.long	691
	.long	0
	.long	727
	.long	0
	.long	769
	.long	0
	.long	809
	.long	0
	.long	877
	.long	0
	.long	941
	.long	0
	.long	997
	.long	0
	.long	1049
	.long	0
	.long	1103
	.long	0
	.long	1163
	.long	0
	.long	1223
	.long	0
	.long	1283
	.long	0
	.long	1367
	.long	0
	.long	1439
	.long	0
	.long	1523
	.long	0
	.long	1609
	.long	0
	.long	1693
	.long	0
	.long	1783
	.long	0
	.long	1871
	.long	0
	.long	1987
	.long	0
	.long	2087
	.long	0
	.long	2203
	.long	0
	.long	2333
	.long	0
	.long	2459
	.long	0
	.long	2591
	.long	0
	.long	2719
	.long	0
	.long	2857
	.long	0
	.long	2999
	.long	0
	.long	3163
	.long	0
	.long	3323
	.long	0
	.long	3491
	.long	0
	.long	3671
	.long	0
	.long	3863
	.long	0
	.long	4091
	.long	0
	.long	4297
	.long	0
	.long	4513
	.long	0
	.long	4751
	.long	0
	.long	4987
	.long	0
	.long	5237
	.long	0
	.long	5501
	.long	0
	.long	5791
	.long	0
	.long	6079
	.long	0
	.long	6397
	.long	0
	.long	6733
	.long	0
	.long	7079
	.long	0
	.long	7433
	.long	0
	.long	7877
	.long	0
	.long	8269
	.long	0
	.long	8681
	.long	0
	.long	9127
	.long	0
	.long	9587
	.long	0
	.long	10067
	.long	0
	.long	10589
	.long	0
	.long	11117
	.long	0
	.long	11677
	.long	0
	.long	12263
	.long	0
	.long	12893
	.long	0
	.long	13537
	.long	0
	.long	14221
	.long	0
	.long	14947
	.long	0
	.long	15727
	.long	0
	.long	16519
	.long	0
	.long	17351
	.long	0
	.long	18217
	.long	0
	.long	19139
	.long	0
	.long	20101
	.long	0
	.long	21107
	.long	0
	.long	22189
	.long	0
	.long	23297
	.long	0
	.long	24473
	.long	0
	.long	25717
	.long	0
	.long	27011
	.long	0
	.long	28387
	.long	0
	.long	29819
	.long	0
	.long	31321
	.long	0
	.long	32887
	.long	0
	.long	34537
	.long	0
	.long	36263
	.long	0
	.long	38083
	.long	0
	.long	39989
	.long	0
	.long	41999
	.long	0
	.long	44101
	.long	0
	.long	46307
	.long	0
	.long	48623
	.long	0
	.long	51059
	.long	0
	.long	53611
	.long	0
	.long	56333
	.long	0
	.long	59149
	.long	0
	.long	62119
	.long	0
	.long	65239
	.long	0
	.long	68501
	.long	0
	.long	71933
	.long	0
	.long	75533
	.long	0
	.long	79309
	.long	0
	.long	83273
	.long	0
	.long	87481
	.long	0
	.long	91867
	.long	0
	.long	96461
	.long	0
	.long	101287
	.long	0
	.long	106357
	.long	0
	.long	111697
	.long	0
	.long	117281
	.long	0
	.long	123191
	.long	0
	.long	129379
	.long	0
	.long	135851
	.long	0
	.long	142657
	.long	0
	.long	149791
	.long	0
	.long	157279
	.long	0
	.long	165161
	.long	0
	.long	173431
	.long	0
	.long	182101
	.long	0
	.long	191227
	.long	0
	.long	200789
	.long	0
	.long	210827
	.long	0
	.long	221399
	.long	0
	.long	232499
	.long	0
	.long	244157
	.long	0
	.long	256369
	.long	0
	.long	269189
	.long	0
	.long	282661
	.long	0
	.long	296797
	.long	0
	.long	311677
	.long	0
	.long	327263
	.long	0
	.long	343627
	.long	0
	.long	360817
	.long	0
	.long	378869
	.long	0
	.long	397811
	.long	0
	.long	417719
	.long	0
	.long	438611
	.long	0
	.long	460543
	.long	0
	.long	483611
	.long	0
	.long	507803
	.long	0
	.long	533213
	.long	0
	.long	559877
	.long	0
	.long	587891
	.long	0
	.long	617311
	.long	0
	.long	648181
	.long	0
	.long	680597
	.long	0
	.long	714673
	.long	0
	.long	750413
	.long	0
	.long	787981
	.long	0
	.long	827389
	.long	0
	.long	868771
	.long	0
	.long	912211
	.long	0
	.long	957821
	.long	0
	.long	1005761
	.long	0
	.long	1056049
	.long	0
	.globl	_glad_glDeleteProgram
	.bss
	.align 4
_glad_glDeleteProgram:
	.space 4
.lcomm __ZL12paletteTexID,4,4
	.globl	_glad_glDisableVertexAttribArray
	.align 4
_glad_glDisableVertexAttribArray:
	.space 4
	.globl	_glad_glGetShaderInfoLog
	.align 4
_glad_glGetShaderInfoLog:
	.space 4
	.globl	_glad_glGetShaderiv
	.align 4
_glad_glGetShaderiv:
	.space 4
	.globl	_glad_glCompileShader
	.align 4
_glad_glCompileShader:
	.space 4
	.globl	_glad_glShaderSource
	.align 4
_glad_glShaderSource:
	.space 4
	.globl	_glad_glCreateShader
	.align 4
_glad_glCreateShader:
	.space 4
	.globl	_glad_glMultMatrixf
	.align 4
_glad_glMultMatrixf:
	.space 4
	.globl	_glad_glBindSampler
	.align 4
_glad_glBindSampler:
	.space 4
	.globl	_glad_glSamplerParameterf
	.align 4
_glad_glSamplerParameterf:
	.space 4
	.globl	_glfiltermodes
	.section .rdata,"dr"
LC54:
	.ascii "GL_NEAREST\0"
LC55:
	.ascii "GL_LINEAR\0"
LC56:
	.ascii "GL_NEAREST_MIPMAP_NEAREST\0"
LC57:
	.ascii "GL_LINEAR_MIPMAP_NEAREST\0"
LC58:
	.ascii "GL_NEAREST_MIPMAP_LINEAR\0"
LC59:
	.ascii "GL_LINEAR_MIPMAP_LINEAR\0"
	.align 32
_glfiltermodes:
	.long	LC54
	.long	9728
	.long	9728
	.long	LC55
	.long	9729
	.long	9729
	.long	LC56
	.long	9984
	.long	9728
	.long	LC57
	.long	9985
	.long	9729
	.long	LC58
	.long	9986
	.long	9728
	.long	LC59
	.long	9987
	.long	9729
	.globl	_glad_glSamplerParameteri
	.bss
	.align 4
_glad_glSamplerParameteri:
	.space 4
	.globl	_glad_glGenSamplers
	.align 4
_glad_glGenSamplers:
	.space 4
.lcomm _samplerObjectIDs,48,32
	.globl	_glad_glIsSampler
	.align 4
_glad_glIsSampler:
	.space 4
	.globl	_glad_glBindTexture
	.align 4
_glad_glBindTexture:
	.space 4
	.globl	_glad_glBindBuffer
	.align 4
_glad_glBindBuffer:
	.space 4
	.globl	_glad_glAlphaFunc
	.align 4
_glad_glAlphaFunc:
	.space 4
	.globl	_glad_glDebugMessageInsertARB
	.align 4
_glad_glDebugMessageInsertARB:
	.space 4
.lcomm __ZZ9divideu32E4udiv,5,4
.lcomm __ZZ9divideu32E5lastd,4,4
	.globl	_scansector_collectsprites
	.section .rdata,"dr"
	.align 4
_scansector_collectsprites:
	.long	1
	.globl	_textfont
	.data
	.align 32
_textfont:
	.ascii "\377\201\201\201\201\201\201\377~\201\245\201\275\201~\0~\377\333\377\303\377~\0"
	.ascii "6\177\177\177>\34\10\0\10\34>\177>\34\10\0\34\34\10k\177k\10\34\10\34>\177>\10\34>\0\0\30<<\30\0\0\377\377\347\303\303\347\377\377\0\0\0\0\0\0\0\0\377\303\231\275\275\231\303\377\17\7\15<fff<<fff<\30~\30"
	.ascii "08<64p\360\340\177c\177ccg\346\300\30\333~ff~\333\30@p|\177|p@\0\1\7\37\177\37\7\1\0\30<~\30\30~<\30fffff\0f\0?zz:\12\12\12\0\36"
	.ascii "3\34"
	.ascii "66\34f<\0\0\0\0~~~\0\30<~\30~<\30~\30<~\30\30\30\30\0\30\30\30\30~<\30\0\0\14\16\177\16\14\0\0\0\30"
	.ascii "8\177"
	.ascii "8\30\0\0\0\0```\177\0\0\0$f\377f$\0\0\0\30<~\377\377\0\0\0\377\377~<\30\0\0\0\0\0\0\0\0\0\0\6\16\14\30\20\0 \0ll$H\0\0\0\0ll\376l\376ll\0\20|\320|\26|\20\0\0\306\314\30"
	.ascii "0f\306\0"
	.ascii "8l8v\334\314v\0\30\30\10\20\0\0\0\0\14\30"
	.ascii "000\30\14\0"
	.ascii "0\30\14\14\14\30"
	.ascii "0\0\0l8\376"
	.ascii "8l\0\0\0\30\30~~\30\30\0\0\0\0\0\30\30\10\20\0\0\0<\0\0\0\0\0\0\0\0\0"
	.ascii "00\0\3\6\14\30"
	.ascii "0`\300\200<fffff<\0\14\34<\14\14\14\14\0<f\6\34"
	.ascii "0`~\0<f\6\34\6f<\0\34<l\314\377\14\14\0~``|\6f<\0<``|ff<\0~\6\6\14\30"
	.ascii "00\0<ff<ff<\0<ff>\6\6<\0\0"
	.ascii "00\0"
	.ascii "00\0\0\0\30\30\0\30\30\10\20\14\30"
	.ascii "0`0\30\14\0\0\0~\0\0~\0\0"
	.ascii "0\30\14\6\14\30"
	.ascii "0\0<f\6\14\30\0\30\0<fnnl`<\0\34"
	.ascii "6ff~ff\0\34"
	.ascii "6f|ff|\0\34"
	.ascii "6```f<\0xlffff|\0\36"
	.ascii "0`|``~\0\36"
	.ascii "0`|```\0\34"
	.ascii "6`nff<\0fff~fff\0<\30\30\30\30\30<\0\6\6\6\6fl8\0flxpxlf\0`````b>\0\306\356\376\376\326\306\306\0&v~nfff\0\34"
	.ascii "6ffff<\0\34"
	.ascii "6f|```\0\34"
	.ascii "6fffn<\6\34"
	.ascii "6f|fff\0<f`<\6f<\0~\30\30\30\30\30\30\0ffffff<\0fffff<\30\0\306\306\306\326\376\356\306\0ff<\30<ff\0fff<\30\30\30\0~\6\14\30"
	.ascii "0`~\0<00000<\0\200\300`0\30\14\6\3<\14\14\14\14\14<\0\30<f\0\0\0\0\0\0\0\0\0\0\0\377\0\30\30\20\10\0\0\0\0\0\0<lll6\0"
	.ascii "00<666\\\0\0\0"
	.ascii "8d`d8\0\14\14<lll6\0\0\0"
	.ascii "8d|`8\0\30"
	.ascii "40|000\0\0\0<h8|L8``xllll\0\30\0"
	.ascii "8\30\30\30\30\0\30\0\30\30\30\30X0``flxlf\0"
	.ascii "000000\30\0\0\0\354\326\326\326\306\0\0\0\270llll\0\0\0"
	.ascii "8lll8\0\0\0\\66<00\0\0:ll<\14\16\0\0\\:000\0\0\0"
	.ascii "8`8\14x\0"
	.ascii "00|004\30\0\0\0llll6\0\0\0lll8\20\0\0\0\306\306\326\326l\0\0\0b4\30\34f\0\0\0lll>,8\0\0|\14\30"
	.ascii "0|\0\34"
	.ascii "00`00\34\0\30\30\30\30\30\30\30\30"
	.ascii "8\14\14\6\14\14"
	.ascii "8\0v\334\0\0\0\0\0\0\0\0\30<ff~\0?ac\370`\371a?f\0ffff>\0\16\0<f~`<\0<f<\6>f>\0f\0<\6>f>\0p\0<\6>f>\0\34\34<\6>f>\0\0\0>``>\30"
	.ascii "0<f<f~`<\0f\0<f~`<\0p\0<f~`<\0f\0\30\30\30\30\30\0<f\30\30\30\30\30\0p\0\30\30\30\30\30\0\306"
	.ascii "8l\306\376\306\306\0\34\34\0<f~f\0\14\30|`x`|\0\0\0~\32~\330~\0>x\330\336\370\330\336\0<f<fff<\0f\0<fff<\0p\0<fff<\0<f\0fff>\0p\0ffff>\0f\0fff>\6<f<fffff<f\0fffff<\14\14>``>\14\14"
	.ascii "8l`\360`f\374\0ff<\30~\30~\30|ff|fofc\16\33\30<\30\30x0\16\0<\6>f>\0\16\0\30\30\30\30\30\0\16\0<fff<\0\16\0ffff>\0;n\0|fff\0;n\0fv~nf>ff>\0~\0\0<ff<\0~\0\0\30\0\30"
	.ascii "0`f<\0\0\0\0~``\0\0\0\0\0~\6\6\0\0\306\314\330>c\306\14\37\306\314\330"
	.ascii "6n\326\37\6\30\0\30\30\30\30\30\0\0"
	.ascii "6l\330l6\0\0\0\330l6l\330\0\0\"\210\"\210\"\210\"\210U\252U\252U\252U\252\335w\335w\335w\335w\10\10\10\10\10\10\10\10\10\10\10\10\370\10\10\10\10\10\10\370\370\10\10\10\34\34\34\34\374\34\34\34\0\0\0\0\374\34\34\34\0\0\0\370\370\10\10\10\34\34\34\374\374\34\34\34\34\34\34\34\34\34\34\34\0\0\0\374\374\34\34\34\34\34\34\374\374\0\0\0\34\34\34\34\374\0\0\0\10\10\10\370\370\0\0\0\0\0\0\0\370\10\10\10\10\10\10\10\17\0\0\0\10\10\10\10\377\0\0\0\0\0\0\0\377\10\10\10\10\10\10\10\17\10\10\10\0\0\0\0\377\0\0\0\10\10\10\10\377\10\10\10\10\10\10\17\17\10\10\10\34\34\34\34\37\34\34\34\34\34\34\37\37\0\0\0\0\0\0\37\37\34\34\34\34\34\34\377\377\0\0\0\0\0\0\377\377\34\34\34\34\34\34\37\37\34\34\34\0\0\0\377\377\0\0\0\34\34\34\377\377\34\34\34\10\10\10\377\377\0\0\0\34\34\34\34\377\0\0\0\0\0\0\377\377\10\10\10\0\0\0\0\377\34\34\34\34\34\34\34\37\0\0\0\10\10\10\17\17\0\0\0\0\0\0\17\17\10\10\10\0\0\0\0\37\34\34\34\34\34\34\34\377\34\34\34\10\10\10\377\377\10\10\10\10\10\10\10\370\0\0\0\0\0\0\0\17\10\10\10\177\177\177\177\177\177\177\177\0\0\0\0\377\377\377\377\360\360\360\360\360\360\360\360\17\17\17\17\17\17\17\17\377\377\377\377\0\0\0\0\0\0v\314\314\314v\0<ff|ff|`~f`````\0\0\0\376lllf\0~f0\30"
	.ascii "0f~\0\0\0>lll8\0\0\0ffff\177\300\0\0~\330\30\30\14\0|8|\326\326|8||\306\306\376\306\306|\0|\306\306\306ll\356\0\36"
	.ascii "0\30<ff<\0\0\0~\333\333~\0\0\3\6>ks>`\300\36"
	.ascii "0`~`0\36\0|\306\306\306\306\306\306\0\0~\0~\0~\0\0\30\30~\30\30\0~\0"
	.ascii "0\30\14\30"
	.ascii "0\0~\0\14\30"
	.ascii "0\30\14\0~\0\16\33\33\30\30\30\30\30\30\30\30\30\30\330\330p\30\30\0~\0\30\30\0\0v\334\0v\334\0\0<ff<\0\0\0\0\0\0\0\30\30\0\0\0"
	.ascii "\0\0\0\0\30\0\0\0\36\30\30\30\30\330x8xllll\0\0\0"
	.ascii "8\14\30"
	.ascii "0<\0\0\0\0\0<<<<\0\0\0\0\0\30\30\0\0\0"
	.globl	_smalltextfont
	.align 32
_smalltextfont:
	.ascii "\0\0\0\0\0\0\0\0\0\30<$<\30\0\0\0\30$<$\30\0\0\0(<<8\20\0\0\0\20"
	.ascii "8<8\20\0\0\0\30<<\30<\0\0\0\30\30<\30<\0\0\0\0\0\0\0\0\0\0\0"
	.ascii "88(88\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\34\34\24\24"
	.ascii "0\0\0\0$\30<\30$\0\0\0 080 \0\0\0\10\30"
	.ascii "8\30\10\0\0\0\20"
	.ascii "8\20"
	.ascii "8\20\0\0\0(((\0(\0\0\0\34"
	.ascii "44\24\24\0\0\0\34"
	.ascii "0(\30"
	.ascii "0\0\0\0\0\0\0"
	.ascii "88\0\0\0\20"
	.ascii "8\20"
	.ascii "88\0\0\0\20"
	.ascii "8\20\20\20\0\0\0\20\20\20"
	.ascii "8\20\0\0\0\0\10<\10\0\0\0\0\0\20<\20\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\20\20\20\0\20\0\0\0((\0\0\0\0\0\0(<(<(\0\0\0\30"
	.ascii "0\20\30"
	.ascii "0\0\0\0(\10\20 (\0\0\0\20(\20"
	.ascii "08\0\0\0\10\20\0\0\0\0\0\0\20   \20\0\0\0\20\10\10\10\20\0\0\0\0(\20(\0\0\0\0\0\20"
	.ascii "8\20\0\0\0\0\0\0\0\10\10\20\0\0\0\0"
	.ascii "8\0\0\0\0\0\0\0\0\0\20\0\0\0\10\10\20\20 \0\0\0"
	.ascii "8(((8\0\0\0\20\20\20\20\20\0\0\0"
	.ascii "8\10"
	.ascii "8 8\0\0\0"
	.ascii "8\10"
	.ascii "8\10"
	.ascii "8\0\0\0((8\10\10\0\0\0"
	.ascii "8 8\10"
	.ascii "8\0\0\0"
	.ascii "8 8(8\0\0\0"
	.ascii "8\10\10\10\10\0\0\0"
	.ascii "8(8(8\0\0\0"
	.ascii "8(8\10\10\0\0\0\0\20\0\20\0\0\0\0\0\20\0\20 \0\0\0\10\20 \20\10\0\0\0\0"
	.ascii "8\0"
	.ascii "8\0\0\0\0 \20\10\20 \0\0\0"
	.ascii "0\10\20\0\20\0\0\0"
	.ascii "8(808\0\0\0\20(8((\0\0\0"
	.ascii "0(0(0\0\0\0\30   \30\0\0\0"
	.ascii "0(((0\0\0\0"
	.ascii "8 0 8\0\0\0"
	.ascii "8 0  \0\0\0"
	.ascii "8 ((8\0\0\0((8((\0\0\0"
	.ascii "8\20\20\20"
	.ascii "8\0\0\0"
	.ascii "8\10\10(\30\0\0\0((0((\0\0\0    8\0\0\0(88((\0\0\0(888(\0\0\0"
	.ascii "8(((8\0\0\0"
	.ascii "8(8  \0\0\0"
	.ascii "8((8\30\0\0\0"
	.ascii "8(0((\0\0\0"
	.ascii "8 8\10"
	.ascii "8\0\0\0"
	.ascii "8\20\20\20\20\0\0\0((((8\0\0\0(((\20\20\0\0\0((88(\0\0\0((\20((\0\0\0((8\20\20\0\0\0"
	.ascii "8\10\20 8\0\0\0"
	.ascii "0   0\0\0\0 \20\20\10\10\0\0\0\30\10\10\10\30\0\0\0\20(\0\0\0\0\0\0\0\0\0\0"
	.ascii "8\0\0\0\20\10\0\0\0\0\0\0\0\0\30(\30\0\0\0  8(8\0\0\0\0\0"
	.ascii "8 8\0\0\0\10\10"
	.ascii "8(8\0\0\0\0\0\30"
	.ascii "8\30\0\0\0\10\20"
	.ascii "8\20\20\0\0\0\0\30(\30\10"
	.ascii "0\0\0  8((\0\0\0\0\20\0\20\20\0\0\0\0\20\0\20\20 \0\0  (0(\0\0\0\20\20\20\20\20\0\0\0\0 888\0\0\0\0\0"
	.ascii "0((\0\0\0\0\0"
	.ascii "8(8\0\0\0\0\0"
	.ascii "8(8 \0\0\0\0"
	.ascii "8(8\10\0\0\0\0"
	.ascii "8  \0\0\0\0\0\30\20"
	.ascii "0\0\0\0\0\20"
	.ascii "8\20\20\0\0\0\0\0((\30\0\0\0\0\0((\20\0\0\0\0\0"
	.ascii "888\0\0\0\0\0(\20(\0\0\0\0\0((\30"
	.ascii "0\0\0\0\0"
	.ascii "0\20\30\0\0\0\30\20 \20\30\0\0\0\20\20\0\20\20\0\0\0"
	.ascii "0\20\10\20"
	.ascii "0\0\0\0\30"
	.ascii "0\0\0\0\0\0\0\0\20(8\0\0\0\0\30   \30"
	.ascii "0\0\0(\0((\30\0\0\0\30\0\30"
	.ascii "8\30\0\0\0"
	.ascii "8\0\30(\30\0\0\0(\0\30(\30\0\0\0"
	.ascii "0\0\30(\30\0\0\0\0\20\30(\30\0\0\0\0\0"
	.ascii "8 8\20\0\0"
	.ascii "8\0\30"
	.ascii "8\30\0\0\0(\0\30"
	.ascii "8\30\0\0\0"
	.ascii "0\0\30"
	.ascii "8\30\0\0\0\0(\0\20\20\0\0\0\0"
	.ascii "8\0\20\20\0\0\0\0"
	.ascii "0\0\20\20\0\0\0(\20(8(\0\0\0\20\0\20"
	.ascii "8(\0\0\0\30\0"
	.ascii "808\0\0\0\0\0\34(\34\0\0\0\34(<(,\0\0\0"
	.ascii "8\0"
	.ascii "8(8\0\0\0(\0"
	.ascii "8(8\0\0\0"
	.ascii "0\0"
	.ascii "8(8\0\0\0"
	.ascii "8\0((\30\0\0\0"
	.ascii "0\0((\30\0\0\0(\0((\30"
	.ascii "0\0\0(\0"
	.ascii "8(8\0\0\0(\0((8\0\0\0\20"
	.ascii "8 8\20\0\0\0\30\24"
	.ascii "0\20<\0\0\0(\20"
	.ascii "88\20\0\0\0"
	.ascii "0(<(,\0\0\0\30\20"
	.ascii "8\20"
	.ascii "0\0\0\0\30\0\30(\30\0\0\0\0\30\0\20\20\0\0\0\30\0"
	.ascii "8(8\0\0\0\30\0((\30\0\0\0"
	.ascii "0\0"
	.ascii "0((\0\0\0"
	.ascii "8\0(8(\0\0\0\30(\30\0"
	.ascii "8\0\0\0"
	.ascii "8(8\0"
	.ascii "8\0\0\0\20\0\20 \30\0\0\0\0\0\34\20\0\0\0\0\0\0"
	.ascii "0\20\0\0\0\0 (\20"
	.ascii "8\30\0\0\0 (\30"
	.ascii "8\10\0\0\0\20\0\20\20\20\0\0\0\0\24(\24\0\0\0\0\0(\24(\0\0\0\0\10 \10 \10 \0\0\24(\24(\24(\0\0"
	.ascii "4\34"
	.ascii "4\34"
	.ascii "4\34\0\0\20\20\20\20\20\20\0\0\20\20"
	.ascii "0\20\20\20\0\0\20\20"
	.ascii "00\20\20\0\0\30\30"
	.ascii "8\30\30\30\0\0\0\0"
	.ascii "8\30\30\30\0\0\0\0"
	.ascii "00\20\20\0\0\30\30"
	.ascii "88\30\30\0\0\30\30\30\30\30\30\0\0\0\0"
	.ascii "88\30\30\0\0\30\30"
	.ascii "88\0\0\0\0\30\30"
	.ascii "8\0\0\0\0\0\20\20"
	.ascii "00\0\0\0\0\0\0"
	.ascii "0\20\20\20\0\0\20\20\34\0\0\0\0\0\20\20<\0\0\0\0\0\0\0<\20\20\20\0\0\20\20\34\20\20\20\0\0\0\0<\0\0\0\0\0\20\20<\20\20\20\0\0\20\20\34\34\20\20\0\0\30\30\34\30\30\30\0\0\30\30\34\34\0\0\0\0\0\0\34\34\30\30\0\0\30\30<<\0\0\0\0\0\0<<\30\30\0\0\30\30\34\34\30\30\0\0\0\0<<\0\0\0\0\30\30<<\30\30\0\0\20\20<<\0\0\0\0\30\30<\0\0\0\0\0\0\0<<\20\20\0\0\0\0<\30\30\30\0\0\30\30\34\0\0\0\0\0\20\20\34\34\0\0\0\0\0\0\34\34\20\20\0\0\0\0\34\30\30\30\0\0\30\30<\30\30\30\0\0\20\20<<\20\20\0\0\20\20"
	.ascii "0\0\0\0\0\0\0\0\34\20\20\20\0\0<<<<<<\0\0\0\0\0<<<\0\0"
	.ascii "000000\0\0\14\14\14\14\14\14\0\0<<<\0\0\0\0\0\0\0"
	.ascii "4(4\0\0\0"
	.ascii "0(0(0 \0\0"
	.ascii "8(   \0\0\0\0\0<\30\30\0\0\0"
	.ascii "8 \20 8\0\0\0\0\0\34(\20\0\0\0\0((0 \0\0\0\0\24(\10\10\0\0\0"
	.ascii "8\20(\20"
	.ascii "8\0\0\0\20(8(\20\0\0\0\30$$\30<\0\0\0\30\20\30(8\0\0\0\0\30<\30\0\0\0\0\4\30<\30 \0\0\0\30 0 \30\0\0\0\20((((\0\0\0"
	.ascii "8\0"
	.ascii "8\0"
	.ascii "8\0\0\0\20"
	.ascii "8\20\0"
	.ascii "8\0\0\0\20\10\20\0"
	.ascii "8\0\0\0\20 \20\0"
	.ascii "8\0\0\0\20(   \0\0\0\10\10\10(\20\0\0\0\20\0"
	.ascii "8\0\20\0\0\0\0\30"
	.ascii "80\0\0\0\0"
	.ascii "8(8\0\0\0\0\0\0"
	.ascii "00\0\0\0\0"
	.ascii "\0\0\0"
	.ascii "0\0\0\0\0\0\30\20\20"
	.ascii "0\20\0\0\0"
	.ascii "0((\0\0\0\0\0"
	.ascii "0\20"
	.ascii "8\0\0\0\0\0\0"
	.ascii "888\0\0\0\0\0\0\0\0\0\0\0"
	.globl	_glad_glStencilFunc
	.bss
	.align 4
_glad_glStencilFunc:
	.space 4
	.globl	_glad_glStencilOp
	.align 4
_glad_glStencilOp:
	.space 4
	.globl	_modechange
	.data
_modechange:
	.byte	1
.lcomm __ZL7baktile,4,4
.lcomm __ZL11bakrendmode,4,4
.lcomm __ZL12bakwindowxy2,32,32
.lcomm __ZL12bakwindowxy1,32,32
.lcomm __ZL13bakframeplace,16,4
.lcomm __ZL11bakyxaspect,16,4
.lcomm __ZL15bakviewingrange,16,4
.lcomm __ZL7bakysiz,16,4
.lcomm __ZL7bakxsiz,16,4
.lcomm __ZL10setviewcnt,4,4
.lcomm _updatesectorneighborlist,8192,32
.lcomm _updatesectorneighbormap,512,32
.lcomm __ZZ9dragpointE8yaxwalls,32768,32
.lcomm __ZZ6canseeE10sectbitmap,512,32
	.section .rdata,"dr"
	.align 4
LC9:
	.long	998277249
	.align 4
LC14:
	.long	1065353216
	.align 4
LC15:
	.long	1007614518
	.align 16
LC16:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 4
LC18:
	.long	-1073741824
	.align 4
LC25:
	.long	931135488
	.align 4
LC26:
	.long	1084227584
	.align 4
LC27:
	.long	1082130432
	.align 4
LC28:
	.long	1059256707
	.align 4
LC29:
	.long	1059248215
	.align 4
LC30:
	.long	1064514355
	.align 4
LC31:
	.long	1075838976
	.align 4
LC32:
	.long	922746880
	.align 4
LC33:
	.long	799014912
	.align 4
LC34:
	.long	855638016
	.align 4
LC35:
	.long	914358272
	.align 4
LC36:
	.long	1149239296
	.align 4
LC37:
	.long	950079408
	.align 8
LC41:
	.long	858993459
	.long	1070805811
	.align 8
LC42:
	.long	-1374389535
	.long	1071833415
	.align 8
LC43:
	.long	-1030792151
	.long	1069295861
	.align 16
LC47:
	.long	1
	.long	2
	.long	3
	.long	0
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_lintersect;	.scl	2;	.type	32;	.endef
	.def	_try_facespr_intersect;	.scl	2;	.type	32;	.endef
	.def	_inside;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.9;	.scl	2;	.type	32;	.endef
	.def	_videoBeginDrawing;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_videoEndDrawing;	.scl	2;	.type	32;	.endef
	.def	_paletteGetColor;	.scl	2;	.type	32;	.endef
	.def	_copybufbyte;	.scl	2;	.type	32;	.endef
	.def	_calc_ylookup;	.scl	2;	.type	32;	.endef
	.def	__Z15gltexinvalidateiii;	.scl	2;	.type	32;	.endef
	.def	__ZL20yax_cansee_fixsectoriiis.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.1;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_yax_getneighborsect;	.scl	2;	.type	32;	.endef
	.def	_calc_sector_reachability;	.scl	2;	.type	32;	.endef
	.def	_renderAddTsprite;	.scl	2;	.type	32;	.endef
	.def	__ZL17get_screen_coordsRK4vec2IiES2_PiS3_S3_S3_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_animateoffs;	.scl	2;	.type	32;	.endef
	.def	__ZL14dorotatespriteiiissacihhiiiii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_fprintf;	.scl	2;	.type	32;	.endef
	.def	_abort;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_sincosf;	.scl	2;	.type	32;	.endef
	.def	__Z10OSD_PrintfPKcz;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_strcasecmp;	.scl	2;	.type	32;	.endef
	.def	_initprintf;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	@getangle@8;	.scl	2;	.type	32;	.endef
	.def	_set_globalang;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.11;	.scl	2;	.type	32;	.endef
	.def	__ZL13resizeglcheckv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL29polymost_drawmaskwallinternali.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_atanf;	.scl	2;	.type	32;	.endef
	.def	_sqrtf;	.scl	2;	.type	32;	.endef
	.def	__Z21polymost_printtext256iissPKcc;	.scl	2;	.type	32;	.endef
	.def	_strtol;	.scl	2;	.type	32;	.endef
	.def	__Z14kread_internaliPviPKhPKiPi;	.scl	2;	.type	32;	.endef
	.def	__ZL12kdfread_funciPvi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL12dfwrite_funciPKvi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_fread;	.scl	2;	.type	32;	.endef
