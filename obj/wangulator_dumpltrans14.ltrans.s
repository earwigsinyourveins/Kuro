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
	.def	__ZL8initpassv.isra.0;	.scl	3;	.type	32;	.endef
__ZL8initpassv.isra.0:
LFB4:
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
L75:
	movl	$67240192, %ebp
	movl	$4202512, %edi
	sarl	%cl, %ebp
	sarl	%cl, %edi
	andl	$15, %ebp
	andl	$15, %edi
	cmpl	%ebp, %ebx
	jle	L71
	cmpl	%edi, 16(%esp)
	jle	L71
L72:
	testl	%ecx, %ecx
	js	L75
	movl	%edi, 24(%esp)
	movl	%ecx, %eax
	cmpb	$0, 12(%esp)
	je	L76
	movl	%edx, _intlac
L76:
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
	je	L77
	cmpb	$4, %cl
	je	L78
	leal	7(%edx), %eax
	sarl	$3, %eax
	cmpb	$1, %cl
	cmove	%eax, %edx
L79:
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
	je	L91
	cmpb	$2, 16(%esp)
	je	L92
	cmpb	$6, 16(%esp)
	je	L93
	movzbl	35(%esp), %eax
	cmpb	$2, %al
	je	L84
	cmpb	$4, %al
	je	L85
	cmpb	$1, %al
	jne	L81
	negl	%ebx
	andl	$7, %ebx
	leal	7(%ecx,%ebx), %eax
	movl	%eax, __ZL3xr0
	leal	7(%edx,%ebx), %eax
	movl	%eax, __ZL3xr1
	jmp	L81
	.p2align 4,,10
	.p2align 3
L71:
	cmpl	$1, %edx
	jle	L72
	subl	$1, %edx
	movb	$1, 12(%esp)
	leal	0(,%edx,4), %ecx
	jmp	L75
	.p2align 4,,10
	.p2align 3
L92:
	leal	-2(%ecx,%ecx,2), %eax
	movl	%eax, __ZL3xr0
	leal	-2(%edx,%edx,2), %eax
	movl	%eax, __ZL3xr1
L81:
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
L91:
	.cfi_restore_state
	addl	%ecx, %ecx
	addl	%edx, %edx
	movl	%ecx, __ZL3xr0
	movl	%edx, __ZL3xr1
	jmp	L81
	.p2align 4,,10
	.p2align 3
L78:
	addl	$1, %edx
	sarl	%edx
	jmp	L79
	.p2align 4,,10
	.p2align 3
L77:
	addl	$3, %edx
	sarl	$2, %edx
	jmp	L79
L85:
	andl	$1, %ebx
	leal	1(%ecx,%ebx), %eax
	sall	$2, %eax
	movl	%eax, __ZL3xr0
	leal	1(%edx,%ebx), %eax
	sall	$2, %eax
	movl	%eax, __ZL3xr1
	jmp	L81
	.p2align 4,,10
	.p2align 3
L93:
	leal	-2(,%ecx,4), %eax
	movl	%eax, __ZL3xr0
	leal	-2(,%edx,4), %eax
	movl	%eax, __ZL3xr1
	jmp	L81
L84:
	negl	%ebx
	andl	$3, %ebx
	leal	3(%ecx,%ebx), %eax
	addl	%eax, %eax
	movl	%eax, __ZL3xr0
	leal	3(%edx,%ebx), %eax
	addl	%eax, %eax
	movl	%eax, __ZL3xr1
	jmp	L81
	.cfi_endproc
LFE4:
	.p2align 4
	.def	__ZL6putbufPKhi;	.scl	3;	.type	32;	.endef
__ZL6putbufPKhi:
LFB5:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%ebp, 28(%esp)
	.cfi_offset 5, -8
	movl	__ZL4filt, %ebp
	movl	%ebx, 16(%esp)
	testl	%ebp, %ebp
	.cfi_offset 3, -20
	js	L177
	xorl	%ebp, %ebp
L95:
	movl	%edx, 4(%esp)
	movl	__ZL4filt, %ecx
	movl	%eax, 12(%esp)
	cmpl	%ebp, %edx
	jle	L94
	movl	%esi, 20(%esp)
	movl	%edi, 24(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.p2align 4
	.p2align 3
L143:
	movl	__ZL4xplc, %edi
	movl	4(%esp), %eax
	leal	(%edi,%ebp), %esi
	cmpl	%eax, %esi
	cmovle	%esi, %eax
	movl	%eax, (%esp)
	cmpl	$4, %ecx
	ja	L99
	jmp	*L101(,%ecx,4)
	.section .rdata,"dr"
	.align 4
L101:
	.long	L105
	.long	L104
	.long	L103
	.long	L102
	.long	L100
	.text
	.p2align 4,,10
	.p2align 3
L102:
	cmpl	%ebp, (%esp)
	jle	L99
	movl	(%esp), %ecx
	leal	olinbuf(%edi), %eax
	movl	12(%esp), %edi
	movl	__ZL2xm, %ebx
	leal	(%edi,%ebp), %edx
	leal	(%edi,%ecx), %ebp
	.p2align 6
	.p2align 4
	.p2align 3
L115:
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
	jne	L115
	subl	(%esp), %esi
	movl	%ebx, __ZL2xm
	movl	%esi, __ZL4xplc
	movl	%esi, %edi
	.p2align 4
	.p2align 3
L106:
	testl	%edi, %edi
	jg	L175
	movl	__ZL4yplc, %ebx
	cmpl	__ZL7kp_yres, %ebx
	jnb	L117
	movl	__ZL7nfplace, %esi
	movzbl	__ZL8kcoltype, %edx
	movl	__ZL3xr0, %eax
	movl	%esi, 8(%esp)
	cmpb	$4, %dl
	je	L118
	cmpb	$6, %dl
	je	L119
	cmpb	$2, %dl
	je	L120
	movzbl	__ZL8bitdepth, %edx
	cmpb	$4, %dl
	je	L128
	jg	L129
	cmpb	$1, %dl
	je	L130
	cmpb	$2, %dl
	jne	L125
	movl	__ZL3xr1, %edi
	movl	_ixstp, %ebp
	movl	8(%esp), %esi
	cmpl	%edi, %eax
	jle	L125
	.p2align 6
	.p2align 4
	.p2align 3
L136:
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
	jg	L136
	.p2align 4
	.p2align 3
L125:
	movl	8(%esp), %eax
	addl	_nbpl, %eax
	movl	%eax, __ZL7nfplace
L117:
	movl	_xsizbpl, %eax
	addl	_iystp, %ebx
	movl	$0, __ZL8opixbuf0
	movl	$0, __ZL8opixbuf1
	movl	%eax, __ZL4xplc
	movl	_intlac, %eax
	movl	%ebx, __ZL4yplc
	testl	%eax, %eax
	je	L138
	cmpl	__ZL4ysiz, %ebx
	jge	L178
L138:
	movl	(%esp), %eax
	cmpl	4(%esp), %eax
	jge	L139
	movl	12(%esp), %esi
	leal	1(%eax), %ebp
	movzbl	(%esi,%eax), %ecx
	movl	__ZL9filter1st, %eax
	movl	%ecx, __ZL4filt
	testl	%eax, %eax
	js	L179
	movl	$1, %eax
	sall	%cl, %eax
	orl	%eax, __ZL9filterest
L141:
	cmpl	%ebp, 4(%esp)
	jg	L143
L175:
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
L103:
	.cfi_restore_state
	movl	12(%esp), %ebx
	movl	(%esp), %ecx
	leal	olinbuf(%edi), %eax
	leal	(%ebx,%ebp), %edx
	addl	%ebx, %ecx
	cmpl	%ebp, (%esp)
	jle	L99
	.p2align 4
	.p2align 4
	.p2align 3
L114:
	movzbl	(%edx), %ebx
	addl	$1, %edx
	addb	%bl, (%eax)
	subl	$1, %eax
	cmpl	%edx, %ecx
	jne	L114
	subl	(%esp), %esi
	movl	%esi, __ZL4xplc
	movl	%esi, %edi
	jmp	L106
	.p2align 4,,10
	.p2align 3
L104:
	cmpl	%ebp, (%esp)
	jle	L99
	movl	12(%esp), %ecx
	leal	olinbuf(%edi), %eax
	movl	(%esp), %edi
	movl	__ZL2xm, %ebx
	leal	(%ecx,%ebp), %edx
	addl	%ecx, %edi
	.p2align 6
	.p2align 4
	.p2align 3
L113:
	movzbl	(%edx), %ecx
	addl	$1, %edx
	addb	__ZL8opixbuf1(%ebx), %cl
	subl	$1, %eax
	movb	%cl, __ZL8opixbuf1(%ebx)
	movl	__ZL3xmn(,%ebx,4), %ebx
	movb	%cl, 1(%eax)
	cmpl	%edx, %edi
	jne	L113
	subl	(%esp), %esi
	movl	%ebx, __ZL2xm
	movl	%esi, __ZL4xplc
	movl	%esi, %edi
	jmp	L106
	.p2align 4,,10
	.p2align 3
L105:
	movl	(%esp), %ebx
	cmpl	%ebp, %ebx
	jle	L99
	movl	12(%esp), %ecx
	leal	olinbuf(%edi), %eax
	leal	(%ecx,%ebp), %edx
	addl	%ecx, %ebx
	.p2align 4
	.p2align 4
	.p2align 3
L111:
	movzbl	(%edx), %ecx
	addl	$1, %edx
	subl	$1, %eax
	movb	%cl, 1(%eax)
	cmpl	%edx, %ebx
	jne	L111
	subl	(%esp), %esi
	movl	%esi, __ZL4xplc
	movl	%esi, %edi
	jmp	L106
	.p2align 4,,10
	.p2align 3
L100:
	cmpl	%ebp, (%esp)
	jle	L99
	movl	12(%esp), %eax
	movl	__ZL2xm, %edx
	addl	%eax, %ebp
	addl	(%esp), %eax
	movl	%eax, 8(%esp)
	.p2align 4
	.p2align 3
L116:
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
	jne	L116
	jmp	L106
	.p2align 4,,10
	.p2align 3
L139:
	movl	$-1, __ZL4filt
	movl	20(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %edi
	.cfi_restore 7
L94:
	movl	16(%esp), %ebx
	movl	28(%esp), %ebp
	addl	$32, %esp
	.cfi_restore 3
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L179:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%ecx, __ZL9filter1st
	jmp	L141
	.p2align 4,,10
	.p2align 3
L178:
	subl	$1, %eax
	movl	%eax, _intlac
	call	__ZL8initpassv.isra.0
	jmp	L138
	.p2align 4,,10
	.p2align 3
L118:
	movl	__ZL3xr1, %edi
	movl	_ixstp, %ebp
	movl	8(%esp), %esi
	cmpl	%edi, %eax
	jle	L125
	.p2align 6
	.p2align 4
	.p2align 3
L126:
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
	jg	L126
	jmp	L125
	.p2align 4,,10
	.p2align 3
L120:
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
	jmp	L125
	.p2align 4,,10
	.p2align 3
L119:
	movl	__ZL3xr1, %ecx
	movl	_ixstp, %esi
	movl	%ebx, %edi
	movl	8(%esp), %edx
	cmpl	%ecx, %eax
	jle	L125
	.p2align 6
	.p2align 4
	.p2align 3
L127:
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
	jg	L127
	movl	%edi, %ebx
	jmp	L125
	.p2align 4,,10
	.p2align 3
L99:
	movl	%ebp, (%esp)
	jmp	L106
	.p2align 4,,10
	.p2align 3
L129:
	cmpb	$8, %dl
	jne	L125
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
	jmp	L125
	.p2align 4,,10
	.p2align 3
L177:
	.cfi_restore 6
	.cfi_restore 7
	testl	%edx, %edx
	jle	L94
	movzbl	(%eax), %ecx
	movl	__ZL9filter1st, %ebx
	movl	%ecx, __ZL4filt
	testl	%ebx, %ebx
	js	L180
	movl	$1, %ebx
	sall	%cl, %ebx
	orl	%ebx, __ZL9filterest
L98:
	movl	$1, %ebp
	jmp	L95
	.p2align 4,,10
	.p2align 3
L180:
	movl	%ecx, __ZL9filter1st
	jmp	L98
	.p2align 4,,10
	.p2align 3
L130:
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	__ZL3xr1, %ebp
	cmpl	%ebp, %eax
	jle	L125
	movl	_ixstp, %edi
	movl	8(%esp), %esi
	.p2align 6
	.p2align 4
	.p2align 3
L135:
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
	jne	L135
	jmp	L125
	.p2align 4,,10
	.p2align 3
L128:
	movl	__ZL3xr1, %edi
	movl	_ixstp, %ebp
	movl	8(%esp), %esi
	cmpl	%edi, %eax
	jle	L125
	.p2align 6
	.p2align 4
	.p2align 3
L137:
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
	jg	L137
	jmp	L125
	.cfi_endproc
LFE5:
	.p2align 4
	.def	__ZL8kpegrendPKciiiii;	.scl	3;	.type	32;	.endef
__ZL8kpegrendPKciiiii:
LFB8:
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
	je	L588
L182:
	movl	-420(%ebp), %eax
	cmpw	$-9985, (%eax)
	jne	L239
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
L374:
	leal	1(%esi), %eax
	cmpb	$-1, (%esi)
	je	L198
L401:
	movl	%eax, %esi
L197:
	movl	%esi, %eax
	subl	-420(%ebp), %eax
	cmpl	-436(%ebp), %eax
	jl	L374
	movl	-328(%ebp), %ebx
	testl	%ebx, %ebx
	je	L373
	movzbl	__ZL14gnumcomponents, %eax
	movl	%eax, -324(%ebp)
	movl	%eax, __ZL14lnumcomponents
	testl	%eax, %eax
	je	L375
	xorl	%eax, %eax
	leal	-268(%ebp), %ecx
	leal	-284(%ebp), %ebx
L376:
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
	jg	L376
L375:
	movl	__ZL15gcomphsampshift, %eax
	movl	__ZL15gcompvsampshift, %ecx
	movl	%eax, __ZL16lcomphsampshift0
	movl	__ZL10lcomphsamp, %eax
	movl	%ecx, __ZL16lcompvsampshift0
	sall	%cl, %eax
	movl	-400(%ebp), %ecx
	movl	%eax, __ZL12lcomphvsamp0
	testl	%ecx, %ecx
	je	L377
	movl	-380(%ebp), %edx
	testl	%edx, %edx
	je	L377
	movl	__ZL10gcompvsamp, %esi
	xorl	%edi, %edi
L378:
	movl	-324(%ebp), %eax
	movl	__ZL10gcomphsamp, %ebx
	movl	$0, -320(%ebp)
	testl	%eax, %eax
	jne	L589
	movl	%ebx, %eax
	movl	%esi, %ebx
	movl	%eax, %esi
L389:
	movl	-320(%ebp), %eax
	movl	$__ZL3dct, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL7yrbrendiiPi
	addl	%esi, -320(%ebp)
	movl	-380(%ebp), %ecx
	cmpl	%ecx, -320(%ebp)
	jl	L389
	movl	%ebx, %esi
L388:
	addl	%esi, %edi
	cmpl	-400(%ebp), %edi
	jl	L378
L377:
	movl	-328(%ebp), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L373:
	movl	-8(%ebp), %esi
	.cfi_restore 6
	xorl	%eax, %eax
L181:
	movl	-12(%ebp), %ebx
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
L198:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%eax, %ebx
	movzbl	(%eax), %edx
	leal	1(%eax), %eax
	cmpb	$-1, %dl
	je	L198
	cmpb	$-39, %dl
	je	L401
	movzwl	1(%ebx), %eax
	leal	3(%ebx), %esi
	rolw	$8, %ax
	movzwl	%ax, %eax
	subl	$2, %eax
	movl	%eax, -312(%ebp)
	leal	64(%edx), %eax
	cmpb	$29, %al
	ja	L199
	movzbl	%al, %eax
	jmp	*L201(,%eax,4)
	.section .rdata,"dr"
	.align 4
L201:
	.long	L205
	.long	L205
	.long	L205
	.long	L199
	.long	L204
	.long	L199
	.long	L199
	.long	L199
	.long	L199
	.long	L199
	.long	L199
	.long	L199
	.long	L199
	.long	L199
	.long	L199
	.long	L199
	.long	L199
	.long	L199
	.long	L199
	.long	L199
	.long	L199
	.long	L199
	.long	L199
	.long	L199
	.long	L199
	.long	L199
	.long	L203
	.long	L202
	.long	L199
	.long	L200
	.text
L200:
	movzwl	3(%ebx), %eax
	addl	-312(%ebp), %esi
	rolw	$8, %ax
	movzwl	%ax, %eax
	movl	%eax, -432(%ebp)
	jmp	L197
L590:
	subl	$65, -312(%ebp)
	addl	$65, %esi
L236:
	movl	-312(%ebp), %ecx
	testl	%ecx, %ecx
	jle	L197
L202:
	movzbl	(%esi), %eax
	xorl	%ebx, %ebx
	movl	%eax, %edx
	andl	$15, %edx
	movl	%edx, %edi
	sall	$6, %edi
	shrb	$4, %al
	jne	L229
L232:
	movl	__ZL5unzig(,%ebx,4), %ecx
	movzbl	1(%esi,%ebx), %eax
	movl	%ecx, %edx
	sall	$19, %eax
	andl	$7, %edx
	je	L230
	movl	__ZL7cosqr16(,%edx,4), %edx
/APP
 # 1358 "source/build/src/kplib.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
L230:
	movl	%ecx, %edx
	sarl	$3, %edx
	je	L231
	movl	__ZL7cosqr16(,%edx,4), %edx
/APP
 # 1359 "source/build/src/kplib.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
L231:
	leal	(%edi,%ecx), %edx
	addl	$1, %ebx
	movl	%eax, __ZL7quantab(,%edx,4)
	cmpl	$64, %ebx
	jne	L232
	jmp	L590
L229:
	movzwl	1(%esi,%ebx,2), %eax
	movl	__ZL5unzig(,%ebx,4), %ecx
	rolw	$8, %ax
	movl	%ecx, %edx
	sall	$19, %eax
	andl	$7, %edx
	je	L234
	movl	__ZL7cosqr16(,%edx,4), %edx
/APP
 # 1358 "source/build/src/kplib.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
L234:
	movl	%ecx, %edx
	sarl	$3, %edx
	je	L235
	movl	__ZL7cosqr16(,%edx,4), %edx
/APP
 # 1359 "source/build/src/kplib.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
L235:
	leal	(%edi,%ecx), %edx
	addl	$1, %ebx
	movl	%eax, __ZL7quantab(,%edx,4)
	cmpl	$64, %ebx
	jne	L229
	subl	$129, -312(%ebp)
	addl	$129, %esi
	jmp	L236
L589:
	leal	8(%edi), %eax
	movl	%esi, -352(%ebp)
	movl	%ebx, %esi
	movl	%edi, %ebx
	movl	%eax, -348(%ebp)
L387:
	movl	$__ZL3dct, -336(%ebp)
	xorl	%edx, %edx
L390:
	movl	__ZL10gcompvsamp(,%edx,4), %ecx
	testl	%ecx, %ecx
	jle	L382
	movl	-348(%ebp), %eax
	subl	$1, %ecx
	movl	__ZL10gcomphsamp(,%edx,4), %edi
	andl	$-8, %ecx
	addl	%ecx, %eax
	movl	%eax, -332(%ebp)
	movl	%ebx, %eax
L386:
	testl	%edi, %edi
	jg	L591
	addl	$8, %eax
	cmpl	%eax, -332(%ebp)
	jne	L386
L382:
	addl	$1, %edx
	cmpl	%edx, -324(%ebp)
	jg	L390
L385:
	movl	-320(%ebp), %edi
	movl	$__ZL3dct, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%edi, (%esp)
	call	__ZL7yrbrendiiPi
	leal	(%edi,%esi), %eax
	movl	%eax, -320(%ebp)
	cmpl	-380(%ebp), %eax
	jl	L387
	movl	-352(%ebp), %esi
	movl	%ebx, %edi
	jmp	L388
L591:
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
L381:
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
L380:
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
L379:
	movl	__ZL5zigit(,%eax,4), %edx
	leal	(%esi,%edx,2), %edx
	movswl	(%edx,%ecx), %edx
	imull	__ZL7quantab(%ebx,%eax,4), %edx
	movl	%edx, (%edi,%eax,4)
	addl	$1, %eax
	cmpl	$64, %eax
	jne	L379
	movl	%edi, %eax
	movl	$255, %edx
	addl	$256, %edi
	call	__ZL9invdct8x8Pih
	addl	$8, -304(%ebp)
	movl	-304(%ebp), %eax
	cmpl	%eax, -308(%ebp)
	jne	L380
	movl	-344(%ebp), %edi
	movl	-372(%ebp), %eax
	movl	-376(%ebp), %edx
	leal	1(%edi), %ecx
	addl	$8, %eax
	sall	$8, %ecx
	addl	%ecx, -336(%ebp)
	cmpl	%eax, -332(%ebp)
	jne	L381
	movl	-364(%ebp), %ebx
	movl	-368(%ebp), %esi
	addl	$1, %edx
	cmpl	%edx, -324(%ebp)
	jg	L390
	jmp	L385
L203:
	movl	-380(%ebp), %edx
	testl	%edx, %edx
	je	L577
	movl	-400(%ebp), %eax
	testl	%eax, %eax
	je	L577
	movzbl	3(%ebx), %esi
	movl	%esi, -364(%ebp)
	movl	%esi, __ZL14lnumcomponents
	testl	%esi, %esi
	je	L577
	cmpl	$1, %esi
	je	L241
	movb	$2, __ZL8kcoltype
	xorl	%eax, %eax
L242:
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
	jg	L242
L398:
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
	jne	L243
	movl	%ebx, %eax
	orl	%edx, %eax
	orb	%cl, %al
	jne	L423
	cmpl	$63, %esi
	jne	L423
L243:
	movzbl	-308(%ebp), %eax
	movzbl	__ZL14gnumcomponents, %ebx
	addl	$5, %edi
	movl	%eax, -376(%ebp)
	movzbl	-320(%ebp), %eax
	movb	%bl, -324(%ebp)
	movl	%eax, -360(%ebp)
	movl	%ebx, -308(%ebp)
	testb	%bl, %bl
	je	L578
L397:
	movl	__ZL7lcompid, %eax
	movb	$0, -320(%ebp)
	xorl	%ebx, %ebx
	movl	$2147483647, %ecx
	movl	%edi, -336(%ebp)
	movl	-444(%ebp), %edx
	movl	$2147483647, %esi
	movl	%eax, -332(%ebp)
	xorl	%eax, %eax
L253:
	movl	-332(%ebp), %edi
	cmpl	__ZL7gcompid(,%eax,4), %edi
	jne	L257
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
L257:
	addl	$1, %eax
	cmpl	-308(%ebp), %eax
	jl	L253
	movl	%edx, -444(%ebp)
	movl	-336(%ebp), %edi
L396:
	xorl	%edx, %edx
	movl	-364(%ebp), %eax
	addl	$1, %edx
	cmpl	%eax, %edx
	je	L258
L593:
	cmpb	$0, -324(%ebp)
	je	L592
	movl	__ZL7lcompid(,%edx,4), %eax
	movl	%edi, -336(%ebp)
	movl	%eax, -332(%ebp)
	xorl	%eax, %eax
L255:
	movl	-332(%ebp), %edi
	cmpl	__ZL7gcompid(,%eax,4), %edi
	jne	L254
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
L254:
	addl	$1, %eax
	cmpl	%eax, -308(%ebp)
	jg	L255
	movl	-364(%ebp), %eax
	addl	$1, %edx
	movl	-336(%ebp), %edi
	cmpl	%eax, %edx
	jne	L593
L258:
	cmpb	$0, -320(%ebp)
	je	L261
	movl	-444(%ebp), %eax
	movl	%eax, __ZL16lcompvsampshift0
L261:
	testb	%bl, %bl
	je	L250
	movl	-424(%ebp), %eax
	movl	%eax, __ZL16lcomphsampshift0
L250:
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
L263:
	movl	%edx, -480(%ebp)
	movzbl	-308(%ebp), %ecx
	movl	$0, -372(%ebp)
L372:
	leal	-4(%edi), %eax
	subl	-420(%ebp), %eax
	cmpl	-436(%ebp), %eax
	jge	L572
	movl	-328(%ebp), %eax
	testl	%eax, %eax
	je	L265
	movl	-364(%ebp), %eax
	testl	%eax, %eax
	jle	L267
L266:
	movl	$0, -336(%ebp)
	movl	%ecx, %edx
L367:
	movl	-328(%ebp), %ecx
	movl	-336(%ebp), %eax
	testl	%ecx, %ecx
	je	L271
	movl	__ZL10lcompvsamp(,%eax,4), %eax
	movl	%eax, -308(%ebp)
	sall	$3, %eax
	testl	%eax, %eax
	jle	L273
L270:
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
L274:
	movl	-332(%ebp), %eax
	sall	$3, %eax
	testl	%eax, %eax
	jle	L296
	movl	$0, -324(%ebp)
	movl	-328(%ebp), %eax
	testl	%eax, %eax
	jne	L275
L365:
	movl	-376(%ebp), %edi
	testl	%edi, %edi
	je	L276
L277:
	movl	-368(%ebp), %eax
	movl	-320(%ebp), %edi
	xorl	%edx, %edx
	addl	$4, %eax
L304:
	movl	$0, (%eax,%edx)
	movl	$0, 4(%eax,%edx)
	movl	$0, 8(%eax,%edx)
	movl	$0, 12(%eax,%edx)
	addl	$16, %edx
	cmpl	$240, %edx
	jb	L304
	movl	-340(%ebp), %ecx
	movl	%edi, -320(%ebp)
	movl	$0, (%eax,%edx)
	movl	$0, 4(%eax,%edx)
	movl	$0, 8(%eax,%edx)
	testl	%ecx, %ecx
	jle	L594
	cmpb	$0, -344(%ebp)
	jne	L354
	subl	$1, -340(%ebp)
L583:
	movb	$1, -348(%ebp)
L307:
	movl	-368(%ebp), %ecx
	movl	-452(%ebp), %edi
	movl	$63, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L364:
	movl	(%ecx,%eax,4), %edx
	imull	(%edi,%eax,4), %edx
	movl	%edx, (%ecx,%eax,4)
	subl	$1, %eax
	jnb	L364
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
	jl	L365
L296:
	movl	-336(%ebp), %eax
	addl	$8, -396(%ebp)
	movl	-396(%ebp), %edi
	movl	__ZL10lcompvsamp(,%eax,4), %eax
	movl	%eax, -308(%ebp)
	sall	$3, %eax
	cmpl	%edi, %eax
	jg	L274
	movzbl	-481(%ebp), %edx
	movl	-320(%ebp), %edi
L273:
	addl	$1, -336(%ebp)
	movl	-364(%ebp), %ecx
	cmpl	%ecx, -336(%ebp)
	jl	L367
	movl	-328(%ebp), %eax
	movl	%edx, %ecx
	testl	%eax, %eax
	je	L268
L267:
	subl	$1, -448(%ebp)
	je	L595
L368:
	movl	-460(%ebp), %edx
	addl	%edx, -372(%ebp)
	movl	-380(%ebp), %edx
	cmpl	%edx, -372(%ebp)
	jl	L372
	movl	-392(%ebp), %eax
	movl	-480(%ebp), %edx
	movb	%cl, -308(%ebp)
	leal	(%eax,%edx,8), %eax
	movl	%eax, -392(%ebp)
	cmpl	-400(%ebp), %eax
	jl	L263
L572:
L264:
	movl	-328(%ebp), %eax
	testl	%eax, %eax
	je	L373
	movl	%ebx, %eax
	addl	$1, -456(%ebp)
	sarl	$3, %eax
	notl	%eax
	leal	(%edi,%eax), %esi
	jmp	L197
L205:
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
	je	L402
	movl	%eax, -308(%ebp)
	movl	%esi, %edi
	xorl	%ebx, %ebx
	movl	$0, -388(%ebp)
	movl	$0, -384(%ebp)
	movl	$0, -408(%ebp)
	movl	$0, -404(%ebp)
L214:
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
L208:
	cmpl	__ZL8pow2long(,%ecx,4), %edx
	je	L596
	addl	$1, %ecx
	cmpl	$8, %ecx
	jne	L208
L207:
	xorl	%ecx, %ecx
L211:
	cmpl	__ZL8pow2long(,%ecx,4), %eax
	je	L597
	addl	$1, %ecx
	cmpl	$8, %ecx
	jne	L211
L210:
	cmpl	-404(%ebp), %edx
	jle	L212
	movl	__ZL15gcomphsampshift(,%ebx,4), %ecx
	movl	%edx, -404(%ebp)
	movl	%ecx, -384(%ebp)
L212:
	cmpl	-408(%ebp), %eax
	jle	L213
	movl	__ZL15gcompvsampshift(,%ebx,4), %ecx
	movl	%eax, -408(%ebp)
	movl	%ecx, -388(%ebp)
L213:
	movl	-308(%ebp), %eax
	addl	$1, %ebx
	addl	$3, %edi
	cmpl	%eax, %ebx
	jl	L214
	leal	-3(%eax,%eax,2), %eax
	leal	3(%esi,%eax), %esi
	jmp	L197
L227:
	movl	-312(%ebp), %ebx
	testl	%ebx, %ebx
	jle	L197
L204:
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
L228:
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
	jnb	L216
	testb	$8, %al
	jne	L598
	testb	$4, -308(%ebp)
	jne	L599
	movl	-308(%ebp), %edx
	testl	%edx, %edx
	je	L217
	movzbl	(%esi), %eax
	andl	$2, %edx
	movb	%al, __ZL8huftable(%ecx)
	jne	L600
L217:
	cmpl	$10, %edi
	jg	L223
	movl	-308(%ebp), %eax
	testl	%eax, %eax
	je	L224
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
L226:
	movl	-332(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-336(%ebp), %eax
	.p2align 5
	.p2align 4
	.p2align 3
L225:
	movl	%edx, __ZL11hufquickval(%ebx,%eax,4)
	movl	%edi, __ZL12hufquickbits(%ebx,%eax,4)
	addl	$1, %eax
	cmpl	%eax, %ecx
	jne	L225
	movl	-340(%ebp), %eax
	addl	$1, -332(%ebp)
	addl	-352(%ebp), %ecx
	movl	-332(%ebp), %edx
	movl	%eax, -336(%ebp)
	cmpl	%edx, -356(%ebp)
	je	L555
	movl	%eax, %edx
	movl	-352(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -340(%ebp)
	jmp	L226
L555:
	movl	-324(%ebp), %eax
	movl	-340(%ebp), %ecx
	movl	%ebx, -336(%ebp)
	movl	%ecx, __ZL11hufquickcnt(,%eax,4)
L224:
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
	jmp	L228
L223:
	movl	-308(%ebp), %eax
	movl	-324(%ebp), %ecx
	addl	$1, %edi
	subl	%eax, -312(%ebp)
	addl	%eax, -320(%ebp)
	addl	%eax, %esi
	movl	-320(%ebp), %eax
	movl	%eax, __ZL6hufcnt(,%ecx,4)
	cmpl	$17, %edi
	je	L227
	movl	-344(%ebp), %eax
	addl	%eax, %eax
	jmp	L228
L216:
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
	jb	L217
	andl	$-16, %eax
	movl	-336(%ebp), %ebx
	movl	%eax, -332(%ebp)
	xorl	%eax, %eax
L221:
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
	jb	L221
	movl	%ebx, -336(%ebp)
	jmp	L217
L599:
	movl	(%esi), %eax
	movl	%eax, __ZL8huftable(%ecx)
	movl	-308(%ebp), %edx
	movl	-4(%esi,%edx), %eax
	movl	%eax, __ZL8huftable-4(%edx,%ecx)
	jmp	L217
L199:
	addl	-312(%ebp), %esi
	jmp	L197
L596:
	movl	%ecx, __ZL15gcomphsampshift(,%ebx,4)
	jmp	L207
L597:
	movl	%ecx, __ZL15gcompvsampshift(,%ebx,4)
	jmp	L210
L423:
	movzbl	__ZL14gnumcomponents, %eax
	testb	%al, %al
	je	L404
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
L246:
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
	jl	L246
	movl	-324(%ebp), %ebx
	sall	$7, %ebx
L245:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -328(%ebp)
	testl	%eax, %eax
	je	L601
	movl	-328(%ebp), %eax
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movzbl	__ZL14gnumcomponents, %ecx
	testb	%cl, %cl
	je	L602
	movb	%cl, -340(%ebp)
	movzbl	%cl, %eax
	leal	-60(%ebp), %ebx
	leal	-108(%ebp), %esi
	leal	-204(%ebp), %edx
	movl	%eax, -332(%ebp)
	xorl	%eax, %eax
	movl	$0, -324(%ebp)
	movl	%edx, -336(%ebp)
L251:
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
	jne	L251
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
	jg	L397
L579:
	movl	$2147483647, %ecx
	movl	$2147483647, %esi
	jmp	L250
	.p2align 4,,10
	.p2align 3
L598:
	movl	(%esi), %eax
	movl	4(%esi), %edx
	movl	%eax, __ZL8huftable(%ecx)
	movl	%edx, __ZL8huftable+4(%ecx)
	movl	-308(%ebp), %ebx
	movl	-8(%esi,%ebx), %eax
	movl	-4(%esi,%ebx), %edx
	movl	%eax, __ZL8huftable-8(%ebx,%ecx)
	movl	%edx, __ZL8huftable-4(%ebx,%ecx)
	jmp	L217
L600:
	movl	-308(%ebp), %edx
	movzwl	-2(%esi,%edx), %eax
	movw	%ax, __ZL8huftable-2(%edx,%ecx)
	jmp	L217
L343:
	movl	-320(%ebp), %eax
	movl	%esi, %edx
	subl	%eax, %ebx
	movl	__ZL8pow2mask.lto_priv.0(,%eax,4), %eax
	movl	%ebx, %ecx
	shrl	%cl, %edx
	movl	-320(%ebp), %ecx
	andl	%eax, %edx
	testl	%ecx, %ecx
	je	L348
	cmpl	%edx, __ZL8pow2mask.lto_priv.0-4(,%ecx,4)
	jl	L348
	subl	%eax, %edx
L348:
	movl	-308(%ebp), %ecx
	movl	-328(%ebp), %eax
	movzbl	__ZL8dcflagor(%ecx), %ecx
	orb	%cl, -348(%ebp)
	testl	%eax, %eax
	je	L603
	movzbl	-360(%ebp), %ecx
	movl	-316(%ebp), %eax
	sall	%cl, %edx
	movl	-308(%ebp), %ecx
	movw	%dx, (%eax,%ecx,2)
L351:
	addl	$1, -308(%ebp)
	movl	-308(%ebp), %eax
	cmpl	%eax, -312(%ebp)
	jge	L310
L567:
	movl	%edi, -320(%ebp)
L331:
	movl	-328(%ebp), %eax
	testl	%eax, %eax
	je	L307
	movl	-336(%ebp), %eax
	movl	__ZL10lcomphsamp(,%eax,4), %eax
	movl	%eax, -332(%ebp)
L309:
	movl	-332(%ebp), %eax
	addl	$8, -324(%ebp)
	sall	$3, %eax
	cmpl	%eax, -324(%ebp)
	jge	L296
L275:
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
	je	L276
	movl	-340(%ebp), %edx
	testl	%edx, %edx
	jle	L604
	cmpb	$0, -344(%ebp)
	je	L605
	movl	-416(%ebp), %eax
	subl	$1, -340(%ebp)
	movb	$1, -348(%ebp)
	movl	%eax, -308(%ebp)
	cmpl	%eax, -312(%ebp)
	jl	L309
L570:
	movl	-308(%ebp), %edx
	movl	-320(%ebp), %edi
	jmp	L363
	.p2align 5
	.p2align 4,,10
	.p2align 3
L356:
	addl	$1, %edx
	cmpl	%edx, -312(%ebp)
	jl	L567
L363:
	movl	-316(%ebp), %eax
	movzwl	(%eax,%edx,2), %ecx
	testw	%cx, %cx
	je	L356
	cmpl	$7, %ebx
	jg	L357
	movw	%cx, -308(%ebp)
	jmp	L360
	.p2align 5
	.p2align 4,,10
	.p2align 3
L607:
	addl	$1, %edi
	movl	%ecx, %ebx
L359:
	cmpl	$7, %ebx
	jg	L606
L360:
	movzbl	(%edi), %ecx
	sall	$8, %esi
	movl	%ecx, %eax
	addl	%ecx, %esi
	leal	8(%ebx), %ecx
	cmpb	$-1, %al
	jne	L607
	addl	$2, %edi
	cmpl	-304(%ebp), %edi
	jb	L420
	addl	$16, %ebx
	sall	$8, %esi
	cmpl	$7, %ebx
	jle	L360
L606:
	movzwl	-308(%ebp), %ecx
L357:
	subl	$1, %ebx
	testl	%esi, __ZL8pow2long(,%ebx,4)
	je	L356
	movswl	%cx, %eax
	shrl	$31, %eax
	addw	-292(%ebp,%eax,4), %cx
	movl	-316(%ebp), %eax
	movw	%cx, (%eax,%edx,2)
	jmp	L356
L420:
	movl	%ecx, %ebx
	jmp	L359
L276:
	cmpl	$15, %ebx
	jg	L279
	movl	-304(%ebp), %edx
	movl	-320(%ebp), %edi
	jmp	L282
L609:
	addl	$1, %edi
	movl	%ecx, %ebx
L281:
	cmpl	$15, %ebx
	jg	L608
L282:
	movzbl	(%edi), %ecx
	sall	$8, %esi
	movl	%ecx, %eax
	addl	%ecx, %esi
	leal	8(%ebx), %ecx
	cmpb	$-1, %al
	jne	L609
	addl	$2, %edi
	cmpl	%edx, %edi
	jb	L407
	addl	$16, %ebx
	sall	$8, %esi
	cmpl	$15, %ebx
	jle	L282
L608:
	movl	%edi, -320(%ebp)
L279:
	cmpb	$0, -344(%ebp)
	jne	L283
	movl	-336(%ebp), %eax
	leal	-10(%ebx), %ecx
	movl	%esi, %edx
	sarl	%cl, %edx
	movl	__ZL7lcompdc(,%eax,4), %eax
	andl	$1023, %edx
	cmpl	%edx, __ZL11hufquickcnt(,%eax,4)
	jle	L284
	sall	$10, %eax
	addl	%edx, %eax
	movl	__ZL11hufquickval(,%eax,4), %edx
	subl	__ZL12hufquickbits(,%eax,4), %ebx
	movl	%edx, -296(%ebp)
	testl	%edx, %edx
	jne	L286
L619:
	movl	-336(%ebp), %eax
	movl	-328(%ebp), %edx
	movl	__ZL6lastdc(,%eax,4), %eax
	testl	%edx, %edx
	je	L610
L293:
	movzbl	-360(%ebp), %ecx
	movl	-316(%ebp), %edi
	sall	%cl, %eax
	movw	%ax, (%edi)
	movl	-340(%ebp), %eax
	testl	%eax, %eax
	jle	L611
	subl	$1, -340(%ebp)
L580:
	movl	-336(%ebp), %eax
	addl	$8, -324(%ebp)
	movl	-324(%ebp), %edi
	movl	__ZL10lcomphsamp(,%eax,4), %eax
	movl	%eax, -332(%ebp)
	sall	$3, %eax
	cmpl	%eax, %edi
	jl	L275
	jmp	L296
L407:
	movl	%ecx, %ebx
	jmp	L281
L605:
	subl	$1, -340(%ebp)
	jmp	L309
L283:
	subl	$1, %ebx
	testl	%esi, __ZL8pow2long(,%ebx,4)
	je	L587
	movl	-316(%ebp), %eax
	movzwl	-428(%ebp), %edi
	orw	%di, (%eax)
L587:
	movl	-328(%ebp), %eax
	testl	%eax, %eax
	je	L277
	movl	-340(%ebp), %eax
	testl	%eax, %eax
	jle	L612
	movl	-312(%ebp), %edi
	subl	$1, -340(%ebp)
	movb	$1, -348(%ebp)
	movl	$1, -308(%ebp)
	testl	%edi, %edi
	je	L309
	movl	-320(%ebp), %edi
	movl	$1, %edx
	jmp	L363
L604:
	movl	-416(%ebp), %eax
	cmpl	%eax, -312(%ebp)
	jl	L309
	movl	%eax, -308(%ebp)
L295:
	movb	$1, -348(%ebp)
	movl	-320(%ebp), %edi
	.p2align 4
	.p2align 3
L310:
	movl	-304(%ebp), %edx
	cmpl	$15, %ebx
	jle	L313
	jmp	L353
	.p2align 5
	.p2align 4,,10
	.p2align 3
L613:
	addl	$1, %edi
	movl	%ecx, %ebx
L312:
	cmpl	$15, %ebx
	jg	L353
L313:
	movzbl	(%edi), %ecx
	sall	$8, %esi
	movl	%ecx, %eax
	addl	%ecx, %esi
	leal	8(%ebx), %ecx
	cmpb	$-1, %al
	jne	L613
	addl	$2, %edi
	cmpl	%edx, %edi
	jb	L413
	addl	$16, %ebx
	sall	$8, %esi
	cmpl	$15, %ebx
	jle	L313
	.p2align 4
	.p2align 3
L353:
	leal	-10(%ebx), %ecx
	movl	%esi, %edx
	sarl	%cl, %edx
	andl	$1023, %edx
	cmpl	%edx, -352(%ebp)
	jle	L314
	movl	-356(%ebp), %ecx
	movl	__ZL11hufquickval(%ecx,%edx,4), %eax
	subl	__ZL12hufquickbits(%ecx,%edx,4), %ebx
L315:
	movl	%eax, %ecx
	sarl	$4, %ecx
	andl	$15, %eax
	movl	%eax, -320(%ebp)
	movl	%eax, -296(%ebp)
	je	L316
	cmpb	$0, -344(%ebp)
	jne	L582
L317:
	addl	%ecx, -308(%ebp)
	movl	-308(%ebp), %eax
	cmpl	%eax, -312(%ebp)
	jl	L567
	movl	-320(%ebp), %eax
	cmpl	%ebx, %eax
	jle	L343
	movl	%eax, %edx
	jmp	L346
	.p2align 5
	.p2align 4,,10
	.p2align 3
L614:
	addl	$1, %edi
	movl	%ecx, %ebx
L345:
	cmpl	%ebx, %edx
	jle	L343
L346:
	movzbl	(%edi), %ecx
	sall	$8, %esi
	movl	%ecx, %eax
	addl	%ecx, %esi
	leal	8(%ebx), %ecx
	cmpb	$-1, %al
	jne	L614
	addl	$2, %edi
	cmpl	-304(%ebp), %edi
	jb	L417
	sall	$8, %esi
	addl	$16, %ebx
	jmp	L345
	.p2align 4,,10
	.p2align 3
L413:
	movl	%ecx, %ebx
	jmp	L312
	.p2align 4,,10
	.p2align 3
L319:
	addl	$2, %edi
	cmpl	-304(%ebp), %edi
	jb	L414
	sall	$8, %esi
	addl	$16, %ebx
L582:
	cmpl	$7, %ebx
	jg	L318
L615:
	movzbl	(%edi), %edx
	sall	$8, %esi
	movl	%edx, %eax
	addl	%edx, %esi
	leal	8(%ebx), %edx
	cmpb	$-1, %al
	je	L319
	movl	%edx, %ebx
	addl	$1, %edi
	cmpl	$7, %ebx
	jle	L615
L318:
	subl	$1, %ebx
	testl	%esi, __ZL8pow2long(,%ebx,4)
	je	L322
	movl	-428(%ebp), %eax
	movl	-308(%ebp), %edx
	movl	%ecx, -308(%ebp)
	movl	%eax, -296(%ebp)
	movl	%eax, -320(%ebp)
	jmp	L341
	.p2align 4,,10
	.p2align 3
L332:
	subl	$1, -308(%ebp)
	js	L340
L338:
	addl	$1, %edx
	cmpl	%edx, -312(%ebp)
	jl	L340
L341:
	movl	-316(%ebp), %eax
	movzwl	(%eax,%edx,2), %ecx
	testw	%cx, %cx
	je	L332
	cmpl	$7, %ebx
	jg	L333
	movw	%cx, -332(%ebp)
	jmp	L336
	.p2align 5
	.p2align 4,,10
	.p2align 3
L617:
	addl	$1, %edi
	movl	%ecx, %ebx
L335:
	cmpl	$7, %ebx
	jg	L616
L336:
	movzbl	(%edi), %ecx
	sall	$8, %esi
	movl	%ecx, %eax
	addl	%ecx, %esi
	leal	8(%ebx), %ecx
	cmpb	$-1, %al
	jne	L617
	addl	$2, %edi
	cmpl	-304(%ebp), %edi
	jb	L416
	addl	$16, %ebx
	sall	$8, %esi
	cmpl	$7, %ebx
	jle	L336
	.p2align 4
	.p2align 3
L616:
	movzwl	-332(%ebp), %ecx
L333:
	subl	$1, %ebx
	testl	%esi, __ZL8pow2long(,%ebx,4)
	je	L338
	movswl	%cx, %eax
	shrl	$31, %eax
	addw	-292(%ebp,%eax,4), %cx
	movl	-316(%ebp), %eax
	movw	%cx, (%eax,%edx,2)
	addl	$1, %edx
	cmpl	%edx, -312(%ebp)
	jge	L341
L340:
	movl	-320(%ebp), %eax
	movl	%edx, -308(%ebp)
	testl	%eax, %eax
	je	L351
	movl	-316(%ebp), %ecx
	movw	%ax, (%ecx,%edx,2)
	jmp	L351
	.p2align 4,,10
	.p2align 3
L416:
	movl	%ecx, %ebx
	jmp	L335
	.p2align 4,,10
	.p2align 3
L417:
	movl	%ecx, %ebx
	jmp	L345
L316:
	cmpl	$14, %ecx
	jle	L618
	cmpb	$0, -344(%ebp)
	je	L317
	movl	-308(%ebp), %edx
	movl	%ecx, -308(%ebp)
	jmp	L341
L414:
	movl	%edx, %ebx
	jmp	L582
L314:
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
	jmp	L315
L603:
	movl	-308(%ebp), %eax
	movl	-368(%ebp), %ecx
	movl	__ZL5unzig(,%eax,4), %eax
	movl	%edx, (%ecx,%eax,4)
	jmp	L351
L322:
	movl	-440(%ebp), %eax
	movl	-308(%ebp), %edx
	movl	%ecx, -308(%ebp)
	movl	%eax, -296(%ebp)
	movl	%eax, -320(%ebp)
	jmp	L341
L354:
	movl	-416(%ebp), %eax
	subl	$1, -340(%ebp)
	movb	$1, -348(%ebp)
	movl	%eax, -308(%ebp)
	cmpl	%eax, -312(%ebp)
	jge	L570
	jmp	L307
L284:
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
	je	L619
L286:
	cmpl	%edx, %ebx
	jge	L288
	movl	-320(%ebp), %edi
	jmp	L291
L621:
	addl	$1, %edi
	movl	%ecx, %ebx
L290:
	cmpl	%edx, %ebx
	jge	L620
L291:
	movzbl	(%edi), %ecx
	sall	$8, %esi
	movl	%ecx, %eax
	addl	%ecx, %esi
	leal	8(%ebx), %ecx
	cmpb	$-1, %al
	jne	L621
	addl	$2, %edi
	cmpl	-304(%ebp), %edi
	jb	L408
	addl	$16, %ebx
	sall	$8, %esi
	cmpl	%edx, %ebx
	jl	L291
L620:
	movl	%edi, -320(%ebp)
L288:
	subl	%edx, %ebx
	movl	__ZL8pow2mask.lto_priv.0(,%edx,4), %edi
	movl	%esi, %eax
	movl	%ebx, %ecx
	shrl	%cl, %eax
	andl	%edi, %eax
	cmpl	%eax, __ZL8pow2mask.lto_priv.0-4(,%edx,4)
	jl	L292
	subl	%edi, %eax
L292:
	movl	-336(%ebp), %edi
	movl	-328(%ebp), %edx
	addl	__ZL6lastdc(,%edi,4), %eax
	movl	%eax, __ZL6lastdc(,%edi,4)
	testl	%edx, %edx
	jne	L293
L610:
	movl	-368(%ebp), %edi
	movl	%eax, (%edi)
	jmp	L277
L618:
	movl	%ecx, -332(%ebp)
	movl	%edi, -320(%ebp)
	testl	%ecx, %ecx
	jne	L622
	cmpb	$0, -344(%ebp)
	movl	$1, -340(%ebp)
	je	L392
L393:
	subl	$1, -340(%ebp)
	movl	-308(%ebp), %eax
	cmpl	%eax, -312(%ebp)
	jl	L331
	movl	-320(%ebp), %edi
	movl	%eax, %edx
	jmp	L363
	.p2align 4,,10
	.p2align 3
L408:
	movl	%ecx, %ebx
	jmp	L290
L594:
	movl	-416(%ebp), %eax
	movl	%eax, -308(%ebp)
	cmpl	%eax, -312(%ebp)
	jge	L295
	jmp	L583
L612:
	movl	-312(%ebp), %eax
	testl	%eax, %eax
	je	L309
	movl	$1, -308(%ebp)
	jmp	L295
L611:
	movl	$1, -308(%ebp)
	movl	-312(%ebp), %eax
	testl	%eax, %eax
	jne	L295
	jmp	L580
L392:
	subl	$1, -340(%ebp)
	jmp	L331
L622:
	movl	__ZL8pow2long(,%ecx,4), %eax
	cmpl	%ecx, %ebx
	jge	L326
	movl	-320(%ebp), %edi
	jmp	L329
L624:
	addl	$1, %edi
	movl	%ecx, %ebx
L328:
	cmpl	%ebx, -332(%ebp)
	jle	L623
L329:
	movzbl	(%edi), %ecx
	sall	$8, %esi
	movl	%ecx, %edx
	addl	%ecx, %esi
	leal	8(%ebx), %ecx
	cmpb	$-1, %dl
	jne	L624
	addl	$2, %edi
	cmpl	-304(%ebp), %edi
	jb	L415
	sall	$8, %esi
	addl	$16, %ebx
	cmpl	%ebx, -332(%ebp)
	jg	L329
L623:
	movl	%edi, -320(%ebp)
L326:
	movl	-332(%ebp), %edi
	movl	%esi, %edx
	subl	%edi, %ebx
	movl	%ebx, %ecx
	shrl	%cl, %edx
	andl	__ZL8pow2mask.lto_priv.0(,%edi,4), %edx
	addl	%edx, %eax
	movl	%eax, -340(%ebp)
	cmpb	$0, -344(%ebp)
	je	L392
	movl	-340(%ebp), %eax
	testl	%eax, %eax
	jg	L393
	jmp	L331
	.p2align 4,,10
	.p2align 3
L415:
	movl	%ecx, %ebx
	jmp	L328
L265:
	movl	$__ZL3dct, -368(%ebp)
	movl	-364(%ebp), %eax
	testl	%eax, %eax
	jg	L266
L268:
	movl	-392(%ebp), %eax
	movl	$__ZL3dct, 8(%esp)
	movb	%cl, -308(%ebp)
	movl	%eax, 4(%esp)
	movl	-372(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL7yrbrendiiPi
	subl	$1, -448(%ebp)
	movzbl	-308(%ebp), %ecx
	jne	L368
L595:
	sarl	$3, %ebx
	movl	$1, %eax
	subl	%ebx, %eax
	addl	%eax, %edi
	cmpb	$-1, -2(%edi)
	je	L625
L369:
	subl	$1, %edi
L370:
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
	jmp	L368
L625:
	cmpb	%cl, -1(%edi)
	jne	L369
	jmp	L370
L627:
	addl	$1, %eax
	cmpl	-364(%ebp), %eax
	jge	L626
L271:
	movl	__ZL12lcompquantab(,%eax,4), %ecx
	sall	$8, %ecx
	addl	$__ZL7quantab, %ecx
	movl	%ecx, -452(%ebp)
	movl	__ZL10lcompvsamp(,%eax,4), %ecx
	sall	$3, %ecx
	testl	%ecx, %ecx
	jle	L627
	movl	%eax, -336(%ebp)
	jmp	L270
L588:
	.cfi_restore 6
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	xorl	%edx, %edx
	movl	$-7, %edi
	movl	$1, %eax
	movl	$1, __ZL10kpeginited
L183:
	leal	48(%eax), %ecx
	movl	%edi, %esi
L185:
	cmpl	$7, %esi
	ja	L184
	movl	%ecx, __ZL5unzig(,%edx,4)
	addl	$1, %edx
L184:
	subl	$7, %ecx
	addl	$1, %esi
	cmpl	%edi, %ecx
	jne	L185
	movl	%eax, -308(%ebp)
	leal	56(%eax), %ecx
	movl	%eax, %esi
	movl	%ecx, -304(%ebp)
	movl	%eax, %ecx
L187:
	cmpl	$7, %esi
	ja	L186
	movl	%ecx, __ZL5unzig(,%edx,4)
	addl	$1, %edx
L186:
	subl	$1, %esi
	addl	$7, %ecx
	cmpl	-304(%ebp), %ecx
	jne	L187
	movl	-308(%ebp), %eax
	addl	$2, %edi
	addl	$2, %eax
	cmpl	$17, %eax
	jne	L183
	movl	$63, %eax
L188:
	movl	__ZL5unzig(,%eax,4), %edx
	movl	%eax, __ZL5zigit(,%edx,4)
	subl	$1, %eax
	jnb	L188
	movl	$63, %eax
L189:
	movl	__ZL5unzig(,%eax,4), %ecx
	movl	$1, %edx
	sarl	$3, %ecx
	sall	%cl, %edx
	movb	%dl, __ZL8dcflagor(%eax)
	subl	$1, %eax
	jnb	L189
	movl	$128, %eax
L190:
	movl	%eax, __ZL7colclip-512(,%eax,4)
	leal	1(%eax), %edx
	addl	$2, %eax
	movl	%edx, __ZL7colclip-512(,%edx,4)
	cmpl	$256, %eax
	jne	L190
	movl	$255, -304(%ebp)
	movl	$__ZL7colclip+512, %eax
	movl	$__ZL7colclip+2048, %edx
	movss	-304(%ebp), %xmm0
	shufps	$0, %xmm0, %xmm0
L191:
	movups	%xmm0, (%eax)
	addl	$32, %eax
	movups	%xmm0, -16(%eax)
	cmpl	%eax, %edx
	jne	L191
	movl	$1536, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL7colclip+2048, (%esp)
	call	_memset
	xorl	%eax, %eax
L192:
	movl	%eax, __ZL7colclip+3584(,%eax,4)
	leal	1(%eax), %edx
	addl	$2, %eax
	movl	%edx, __ZL7colclip+3584(,%edx,4)
	cmpl	$128, %eax
	jne	L192
	xorl	%eax, %eax
L193:
	movl	__ZL7colclip(,%eax,4), %edx
	movl	%edx, %ecx
	sall	$16, %edx
	sall	$8, %ecx
	subl	$16777216, %edx
	movl	%ecx, __ZL10colclipup8(,%eax,4)
	movl	%edx, __ZL11colclipup16(,%eax,4)
	addl	$1, %eax
	cmpl	$1024, %eax
	jne	L193
	movl	$766801920, %eax
	movl	$-1505386496, %ecx
L194:
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
	jne	L194
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL3dct+2560, (%esp)
	call	_memset
	movl	-8(%ebp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L182
L626:
	.cfi_restore_state
	movl	%edx, %ecx
	jmp	L268
L402:
	movl	$0, -388(%ebp)
	movl	$0, -384(%ebp)
	movl	$0, -408(%ebp)
	movl	$0, -404(%ebp)
	jmp	L197
L241:
	movzbl	4(%ebx), %eax
	movl	%eax, __ZL7lcompid
	movzbl	5(%ebx), %eax
	movl	%eax, %edx
	andl	$15, %eax
	shrb	$4, %dl
	movl	%eax, __ZL7lcompac
	movzbl	%dl, %edx
	movl	%edx, __ZL7lcompdc
	jmp	L398
L602:
	movzbl	-308(%ebp), %eax
	movl	__ZL14lnumcomponents, %ebx
	addl	$5, %edi
	movl	%eax, -376(%ebp)
	movzbl	-320(%ebp), %eax
	movl	%ebx, -364(%ebp)
	movl	%eax, -360(%ebp)
	testl	%ebx, %ebx
	jle	L579
	movb	$0, -324(%ebp)
L578:
	movb	$0, -320(%ebp)
	xorl	%ebx, %ebx
	movl	$2147483647, %ecx
	movl	$2147483647, %esi
	movl	$0, -308(%ebp)
	jmp	L396
L404:
	xorl	%ebx, %ebx
	jmp	L245
L577:
	movl	-328(%ebp), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	movl	-8(%ebp), %esi
	.cfi_restore 6
	subl	$4, %esp
L239:
	movl	$-1, %eax
	jmp	L181
L601:
	.cfi_offset 6, -16
	movl	%ebx, %eax
	call	__Z13handle_memerri
L592:
	subl	%edx, %eax
	testb	$1, %al
	je	L260
	addl	$1, %edx
	cmpl	-364(%ebp), %edx
	je	L258
L260:
	addl	$2, %edx
	cmpl	-364(%ebp), %edx
	jne	L260
	jmp	L258
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
LFB10:
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
	jc	L637
	movl	$10589, 44(%esp)
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	xorl	%edi, %edi
	movl	$0, 40(%esp)
	movl	$187, %ecx
	jmp	L629
	.p2align 4,,10
	.p2align 3
L638:
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
	je	L634
L639:
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
L629:
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
	jc	L638
	movl	44(%esp), %ebx
	movl	24(%esp), %eax
	cmpl	%ebx, 28(%esp)
	sbbl	40(%esp), %eax
	jnc	L628
	movl	32(%esp), %ecx
	movl	36(%esp), %ebx
	movl	%esi, %eax
	movl	%edi, %edx
	xorl	%ecx, %eax
	xorl	%ebx, %edx
	orl	%edx, %eax
	jne	L639
L634:
	movl	__ZL6primes(,%esi,8), %edi
	movl	__ZL6primes+4(,%esi,8), %eax
	movl	%edi, 44(%esp)
	movl	%eax, 40(%esp)
L628:
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
L637:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L640
L630:
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
L640:
	.cfi_restore_state
	movl	24(%esp), %eax
	movl	%edi, 16(%esp)
	movl	$LC2, 12(%esp)
	movl	%eax, 20(%esp)
	movl	$29, 8(%esp)
	movl	$LC3, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L630
	.cfi_endproc
LFE10:
	.p2align 4
	.globl	_getsectordist
	.def	_getsectordist;	.scl	2;	.type	32;	.endef
_getsectordist:
LFB13:
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
	ja	L642
	movswl	%cx, %ecx
	call	_inside
	cmpl	$1, %eax
	je	L658
L642:
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
	jge	L659
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
	jmp	L650
	.p2align 4,,10
	.p2align 3
L661:
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
	jge	L648
	shldl	$15, %ecx, %ebx
	sall	$15, %ecx
	movl	%eax, 8(%esp)
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	movl	%edx, 12(%esp)
	call	_tabledivide64.lto_priv.1
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
L648:
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
	je	L660
L650:
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
	jl	L661
	movl	32(%esp), %eax
	movl	%eax, 40(%esp)
	movl	44(%esp), %eax
	movl	%eax, 36(%esp)
	jmp	L648
	.p2align 4,,10
	.p2align 3
L660:
	movl	124(%esp), %esi
	movl	116(%esp), %ebp
	.cfi_restore 5
L646:
	testl	%esi, %esi
	je	L657
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
L657:
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
L658:
	.cfi_def_cfa_offset 124
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	testl	%esi, %esi
	je	L647
	movl	76(%esp), %eax
	movl	%eax, (%esi)
	movl	80(%esp), %eax
	movl	%eax, 4(%esi)
L647:
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
L659:
	.cfi_def_cfa_offset 124
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$0, 72(%esp)
	movl	$0, 68(%esp)
	movl	$2147483647, 64(%esp)
	jmp	L646
	.cfi_endproc
LFE13:
	.p2align 4
	.globl	_updatesectorexclude.constprop.0
	.def	_updatesectorexclude.constprop.0;	.scl	2;	.type	32;	.endef
_updatesectorexclude.constprop.0:
LFB17:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	40(%esp), %eax
	movl	%ebx, 12(%esp)
	movl	%ebp, 24(%esp)
	movswl	(%eax), %ecx
	movw	%cx, (%esp)
	cmpl	$4095, %ecx
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	ja	L663
	movl	%ecx, %eax
	movl	%ecx, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.7(%eax), %eax
	movzbl	__ZL18hlorgraysectbitmap.lto_priv.0(%edx), %ebx
	andl	%eax, %ebx
	cmpb	%bl, %al
	je	L689
	movl	36(%esp), %edx
	movl	32(%esp), %eax
	movl	%ecx, 4(%esp)
	call	_inside
	movl	4(%esp), %ecx
	cmpl	$1, %eax
	je	L662
L689:
	movl	%esi, 16(%esp)
	movl	%edi, 20(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
L665:
	movswl	_numsectors, %ebp
	cmpw	%bp, (%esp)
	jl	L690
L671:
	movl	%ebp, %edi
	movzwl	(%esp), %ebx
	subl	%ecx, %edi
	cmpl	%ecx, %edi
	movl	%ebx, %esi
	cmovl	%ecx, %edi
	subl	$1, %ebp
	jmp	L679
	.p2align 4,,10
	.p2align 3
L676:
	subl	$1, %edi
	jb	L687
	movswl	%bx, %ecx
L679:
	cmpl	%ebp, %ecx
	jge	L672
	addl	$1, %ebx
	movswl	%bx, %eax
	movl	%eax, (%esp)
	cmpl	$4095, %eax
	ja	L672
	movl	%ebx, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.7(%eax), %edx
	movzwl	%bx, %eax
	sarl	$3, %eax
	movzbl	__ZL18hlorgraysectbitmap.lto_priv.0(%eax), %ecx
	andl	%edx, %ecx
	cmpb	%cl, %dl
	je	L672
	movl	(%esp), %ecx
	movl	36(%esp), %edx
	movl	32(%esp), %eax
	call	_inside
	cmpl	$1, %eax
	je	L674
	.p2align 4
	.p2align 3
L672:
	testw	%si, %si
	jle	L676
	subl	$1, %esi
	cmpw	$4095, %si
	ja	L676
	movl	%esi, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.7(%eax), %edx
	movzwl	%si, %eax
	sarl	$3, %eax
	movzbl	__ZL18hlorgraysectbitmap.lto_priv.0(%eax), %ecx
	andl	%edx, %ecx
	cmpb	%cl, %dl
	je	L676
	movl	36(%esp), %edx
	movl	32(%esp), %eax
	movswl	%si, %ecx
	call	_inside
	cmpl	$1, %eax
	jne	L676
	movl	40(%esp), %eax
	movw	%si, (%eax)
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	20(%esp), %edi
	.cfi_restore 7
L662:
	movl	12(%esp), %ebx
	movl	24(%esp), %ebp
	addl	$28, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L663:
	.cfi_restore_state
	movl	%esi, 16(%esp)
	movl	%edi, 20(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpw	$0, (%esp)
	jns	L665
	movswl	_numsectors, %ebp
	cmpw	$-1, (%esp)
	jne	L671
	movl	%ebp, %ebx
	sarw	%bx
	movw	%bx, (%esp)
	movswl	%bx, %ecx
	jmp	L671
	.p2align 4,,10
	.p2align 3
L690:
	movl	_sector, %edx
	leal	(%ecx,%ecx,4), %eax
	movw	%bp, 10(%esp)
	movl	%ecx, %ebp
	leal	(%edx,%eax,8), %eax
	movswl	(%eax), %esi
	movswl	2(%eax), %ebx
	sall	$5, %esi
	movl	%ebx, 4(%esp)
	addl	_wall, %esi
	jmp	L670
	.p2align 5
	.p2align 4,,10
	.p2align 3
L669:
	addl	$32, %esi
	subl	$1, 4(%esp)
	je	L691
L670:
	movswl	12(%esi), %ecx
	movl	%ecx, %edi
	cmpl	$4095, %ecx
	ja	L669
	movl	%ecx, %eax
	movl	%ecx, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.7(%eax), %eax
	movzbl	__ZL18hlorgraysectbitmap.lto_priv.0(%edx), %ebx
	andl	%eax, %ebx
	cmpb	%bl, %al
	je	L669
	movl	36(%esp), %edx
	movl	32(%esp), %eax
	call	_inside
	cmpl	$1, %eax
	jne	L669
	movl	40(%esp), %eax
	movw	%di, (%eax)
	movl	16(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	20(%esp), %edi
	.cfi_restore 7
	movl	12(%esp), %ebx
	movl	24(%esp), %ebp
	addl	$28, %esp
	.cfi_restore 3
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L674:
	.cfi_restore_state
	movl	40(%esp), %eax
	movw	%bx, (%eax)
	movl	16(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	20(%esp), %edi
	.cfi_restore 7
	movl	12(%esp), %ebx
	movl	24(%esp), %ebp
	addl	$28, %esp
	.cfi_restore 3
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L687:
	.cfi_restore_state
	movl	40(%esp), %eax
	movl	$-1, %edx
	movw	%dx, (%eax)
	movl	16(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	20(%esp), %edi
	.cfi_restore 7
	movl	12(%esp), %ebx
	movl	24(%esp), %ebp
	addl	$28, %esp
	.cfi_restore 3
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L691:
	.cfi_restore_state
	movl	%ebp, %ecx
	movswl	10(%esp), %ebp
	jmp	L671
	.cfi_endproc
LFE17:
	.p2align 4
	.globl	_updatesectorneighbor.constprop.0
	.def	_updatesectorneighbor.constprop.0;	.scl	2;	.type	32;	.endef
_updatesectorneighbor.constprop.0:
LFB19:
	.cfi_startproc
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movswl	_numsectors, %eax
	movl	%edi, 32(%esp)
	.cfi_offset 7, -12
	movl	52(%esp), %edi
	movl	%esi, 28(%esp)
	.cfi_offset 6, -16
	movswl	(%edi), %esi
	cmpl	%eax, %esi
	jnb	L693
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_updatesectorneighbormap, (%esp)
	movl	%ebx, 24(%esp)
	.cfi_offset 3, -20
	movl	%esi, %ebx
	andl	$7, %ebx
	call	_memset
	movl	%esi, %eax
	movzbl	__ZL8pow2char.lto_priv.1(%ebx), %edx
	movl	%esi, %ecx
	sarl	$3, %eax
	movw	%si, _updatesectorneighborlist
	orb	%dl, _updatesectorneighbormap(%eax)
	movl	44(%esp), %eax
	movl	$0, (%esp)
	movl	48(%esp), %edx
	call	_getsectordist
	testl	%eax, %eax
	je	L708
	cmpl	56(%esp), %eax
	jg	L709
	movl	$1, %edx
	movl	%ebp, 36(%esp)
	.cfi_offset 5, -8
	xorl	%ebp, %ebp
	movw	%dx, 18(%esp)
	movl	%edi, 52(%esp)
	movl	%ebp, %edi
L701:
	movswl	_updatesectorneighborlist(%edi,%edi), %esi
	cmpl	$4095, %esi
	ja	L695
	movl	48(%esp), %edx
	movl	44(%esp), %eax
	movl	%esi, %ecx
	call	_inside
	cmpl	$1, %eax
	je	L710
L695:
	movl	_sector, %eax
	leal	(%esi,%esi,4), %edx
	leal	(%eax,%edx,8), %eax
	movswl	(%eax), %ebx
	movswl	2(%eax), %eax
	leal	(%eax,%ebx), %ebp
	cmpl	%ebp, %ebx
	jge	L696
	movl	%ebx, 12(%esp)
	movl	%ebx, %esi
	movl	%edi, 20(%esp)
	sall	$5, %esi
	addl	_wall, %esi
	.p2align 4
	.p2align 3
L700:
	movzwl	12(%esi), %eax
	testw	%ax, %ax
	js	L699
	movswl	%ax, %ecx
	andl	$7, %eax
	movl	%ecx, %edx
	movzbl	__ZL8pow2char.lto_priv.7(%eax), %eax
	sarl	$3, %edx
	movzbl	_updatesectorneighbormap(%edx), %ebx
	andl	%eax, %ebx
	cmpb	%bl, %al
	je	L699
	movl	44(%esp), %eax
	movl	48(%esp), %edx
	movl	$0, (%esp)
	call	_getsectordist
	cmpl	$1536, %eax
	jle	L711
	.p2align 4
	.p2align 3
L699:
	addl	$1, 12(%esp)
	addl	$32, %esi
	cmpl	12(%esp), %ebp
	jne	L700
	movl	20(%esp), %edi
L696:
	movswl	18(%esp), %eax
	addl	$1, %edi
	cmpl	%eax, %edi
	jl	L701
	movl	52(%esp), %edi
	movl	24(%esp), %ebx
	.cfi_restore 3
	movl	36(%esp), %ebp
	.cfi_restore 5
L693:
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_updatesectorneighbormap, (%esp)
	call	_memset
	movl	$-1, %eax
	movw	%ax, (%edi)
	movl	28(%esp), %esi
	movl	32(%esp), %edi
	addl	$40, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L708:
	.cfi_def_cfa_offset 44
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	24(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	28(%esp), %esi
	movl	32(%esp), %edi
	addl	$40, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L709:
	.cfi_restore_state
	movl	24(%esp), %ebx
	.cfi_restore 3
	jmp	L693
	.p2align 4,,10
	.p2align 3
L711:
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	movswl	12(%esi), %eax
	movl	%eax, %edi
	sarl	$3, %eax
	movzbl	_updatesectorneighbormap(%eax), %edx
	movl	%edi, %ecx
	andl	$7, %ecx
	movl	%edx, %ebx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	notl	%ebx
	testb	%cl, %bl
	je	L699
	orl	%ecx, %edx
	movb	%dl, _updatesectorneighbormap(%eax)
	movswl	18(%esp), %eax
	movl	%eax, %ecx
	movw	%di, _updatesectorneighborlist(%eax,%eax)
	addl	$1, %ecx
	movw	%cx, 18(%esp)
	jmp	L699
	.p2align 4,,10
	.p2align 3
L710:
	movl	52(%esp), %edi
	movw	%si, (%edi)
	movl	24(%esp), %ebx
	.cfi_restore 3
	movl	36(%esp), %ebp
	.cfi_restore 5
	movl	28(%esp), %esi
	movl	32(%esp), %edi
	addl	$40, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE19:
	.p2align 4
	.globl	_updatesector
	.def	_updatesector;	.scl	2;	.type	32;	.endef
_updatesector:
LFB22:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movl	60(%esp), %eax
	movl	%ebp, 44(%esp)
	movzwl	(%eax), %eax
	movl	$1536, 16(%esp)
	movl	$256, 12(%esp)
	movw	%ax, 30(%esp)
	leal	30(%esp), %eax
	movl	%eax, 8(%esp)
	movl	56(%esp), %eax
	movl	%eax, 4(%esp)
	movl	52(%esp), %eax
	movl	%eax, (%esp)
	.cfi_offset 5, -8
	call	_updatesectorneighbor.constprop.0
	movzwl	30(%esp), %ebp
	cmpw	$-1, %bp
	je	L729
L714:
	movl	60(%esp), %eax
	movw	%bp, (%eax)
	movl	44(%esp), %ebp
	addl	$48, %esp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L729:
	.cfi_restore_state
	movl	60(%esp), %eax
	movl	%esi, 36(%esp)
	.cfi_offset 6, -16
	movswl	_numsectors, %esi
	movl	%edi, 40(%esp)
	movl	%ebx, 32(%esp)
	.cfi_offset 7, -12
	.cfi_offset 3, -20
	movzwl	(%eax), %ebx
	movl	%esi, %eax
	sarw	%ax
	cmpw	$-1, %bx
	cmove	%eax, %ebx
	movswl	%bx, %edx
	movl	%edx, 20(%esp)
	movl	%edx, %edi
	cmpl	$4095, %edx
	jbe	L730
L716:
	movl	20(%esp), %ecx
	movl	%esi, %edi
	leal	-1(%esi), %eax
	movw	%bp, 26(%esp)
	movl	%ebx, %esi
	movl	%eax, %ebp
	subl	%ecx, %edi
	cmpl	%ecx, %edi
	cmovl	%ecx, %edi
	jmp	L721
	.p2align 4,,10
	.p2align 3
L719:
	subl	$1, %edi
	jb	L727
	movswl	%bx, %ecx
L721:
	cmpl	%ebp, %ecx
	jge	L717
	addl	$1, %ebx
	movswl	%bx, %eax
	movl	%eax, 20(%esp)
	cmpl	$4095, %eax
	ja	L717
	movl	%ebx, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.7(%eax), %edx
	movzwl	%bx, %eax
	sarl	$3, %eax
	movzbl	_updatesectorneighbormap(%eax), %ecx
	andl	%edx, %ecx
	cmpb	%cl, %dl
	je	L717
	movl	20(%esp), %ecx
	movl	56(%esp), %edx
	movl	52(%esp), %eax
	call	_inside
	cmpl	$1, %eax
	je	L724
	.p2align 4
	.p2align 3
L717:
	testw	%si, %si
	jle	L719
	subl	$1, %esi
	cmpw	$4095, %si
	ja	L719
	movl	%esi, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.7(%eax), %edx
	movzwl	%si, %eax
	sarl	$3, %eax
	movzbl	_updatesectorneighbormap(%eax), %ecx
	andl	%edx, %ecx
	cmpb	%cl, %dl
	je	L719
	movl	56(%esp), %edx
	movl	52(%esp), %eax
	movswl	%si, %ecx
	call	_inside
	cmpl	$1, %eax
	jne	L719
	movl	60(%esp), %eax
	movl	%esi, %ebp
	movl	32(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	36(%esp), %esi
	.cfi_restore 6
	movl	40(%esp), %edi
	.cfi_restore 7
	movw	%bp, (%eax)
	movl	44(%esp), %ebp
	addl	$48, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L730:
	.cfi_restore_state
	movl	%ebx, %eax
	sarl	$3, %edx
	andl	$7, %eax
	movzbl	_updatesectorneighbormap(%edx), %ecx
	movzbl	__ZL8pow2char.lto_priv.7(%eax), %eax
	andl	%eax, %ecx
	cmpb	%cl, %al
	je	L716
	movl	56(%esp), %edx
	movl	52(%esp), %eax
	movl	%edi, %ecx
	call	_inside
	cmpl	$1, %eax
	jne	L716
L724:
	movl	60(%esp), %eax
	movl	%ebx, %ebp
	movl	36(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	32(%esp), %ebx
	.cfi_restore 3
	movl	40(%esp), %edi
	.cfi_restore 7
	movw	%bp, (%eax)
	movl	44(%esp), %ebp
	addl	$48, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L727:
	.cfi_restore_state
	movzwl	26(%esp), %ebp
	movl	32(%esp), %ebx
	.cfi_restore 3
	movl	36(%esp), %esi
	.cfi_restore 6
	movl	40(%esp), %edi
	.cfi_restore 7
	jmp	L714
	.cfi_endproc
LFE22:
	.p2align 4
	.globl	_rotatepoint
	.def	_rotatepoint;	.scl	2;	.type	32;	.endef
_rotatepoint:
LFB25:
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
LFE25:
	.p2align 4
	.globl	_renderSetAspect
	.def	_renderSetAspect;	.scl	2;	.type	32;	.endef
_renderSetAspect:
LFB26:
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
	call	_tabledivide64.lto_priv.1
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
	call	_tabledivide64.lto_priv.1
	movl	$320, 8(%esp)
	movl	%eax, _xyaspect
	movl	_xdimen, %eax
	imull	_yxaspect
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	%eax, _xdimenscale
	movl	_xdimen, %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	$320, %eax
	imull	_xyaspect
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
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
LFE26:
	.p2align 4
	.globl	_videoSetCorrectedAspect
	.def	_videoSetCorrectedAspect;	.scl	2;	.type	32;	.endef
_videoSetCorrectedAspect:
LFB27:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	_r_usenewaspect, %eax
	movl	_xdim, %ecx
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -20
	movl	_ydim, %ebx
	testl	%eax, %eax
	je	L736
	movl	_newaspect_enable, %eax
	testl	%eax, %eax
	je	L736
	cmpl	$4, _rendmode
	je	L736
	movl	%ebp, 32(%esp)
	.cfi_offset 5, -8
	movl	_fullscreen, %ebp
	movl	%esi, 24(%esp)
	testl	%ebp, %ebp
	.cfi_offset 6, -16
	je	L738
	movl	_r_screenxy, %esi
	movl	$1374389535, %edx
	movl	%esi, %eax
	movl	%esi, 16(%esp)
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	imull	$100, %eax, %eax
	cmpl	$99, %esi
	jbe	L738
	subl	%eax, %esi
	movl	%esi, %ebp
	jne	L739
L738:
	movl	$81920, %ebp
L741:
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
	call	_tabledivide64.lto_priv.1
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
L736:
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
	call	_tabledivide64.lto_priv.1
	movl	20(%esp), %ebx
	addl	$36, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	movl	%eax, %edx
	movl	$65536, %eax
	jmp	_renderSetAspect
	.p2align 4,,10
	.p2align 3
L739:
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
	call	_tabledivide64.lto_priv.1
	movl	$1073741824, (%esp)
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	$1, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	28(%esp), %edi
	.cfi_restore 7
	movl	%esi, %ecx
	movl	%eax, %ebp
	jmp	L741
	.cfi_endproc
LFE27:
	.p2align 4
	.globl	_videoSetViewableArea
	.def	_videoSetViewableArea;	.scl	2;	.type	32;	.endef
_videoSetViewableArea:
LFB28:
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
	call	_tabledivide64.lto_priv.1
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
	jle	L754
	xorl	%eax, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L745:
	movl	_startumost, %edx
	movl	$1, %esi
	xorl	%ecx, %ecx
	movw	%si, (%edx,%eax,2)
	movl	_startdmost, %edx
	movw	%cx, (%edx,%eax,2)
	movl	_windowxy1, %edx
	addl	$1, %eax
	cmpl	%eax, %edx
	jg	L745
	movl	_windowxy2, %eax
	cmpl	%edx, %eax
	jl	L755
	.p2align 4
	.p2align 3
L747:
	movl	_startumost, %eax
	movl	_windowxy1+4, %ecx
	movw	%cx, (%eax,%edx,2)
	movzwl	_windowxy2+4, %eax
	movl	_startdmost, %ecx
	addl	$1, %eax
	movw	%ax, (%ecx,%edx,2)
	addl	$1, %edx
L754:
	movl	_windowxy2, %eax
	cmpl	%edx, %eax
	jge	L747
L755:
	addl	$1, %eax
	cmpl	_xdim, %eax
	jge	L743
	.p2align 6
	.p2align 4
	.p2align 3
L749:
	movl	_startumost, %edx
	movl	$1, %ecx
	xorl	%ebx, %ebx
	movw	%cx, (%edx,%eax,2)
	movl	_startdmost, %edx
	movw	%bx, (%edx,%eax,2)
	addl	$1, %eax
	cmpl	%eax, _xdim
	jg	L749
L743:
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
LFE28:
	.p2align 4
	.globl	__ZL21sectorofwall_internals.lto_priv.0
	.def	__ZL21sectorofwall_internals.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL21sectorofwall_internals.lto_priv.0:
LFB29:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movswl	%ax, %ecx
	movzwl	_numsectors, %eax
	movl	%ebx, (%esp)
	sarw	%ax
	movl	%esi, 4(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	_sector, %esi
	movl	%edi, 8(%esp)
	movswl	%ax, %ebx
	cmpw	$1, %ax
	.cfi_offset 7, -12
	jle	L763
	movl	%ebp, 12(%esp)
	.cfi_offset 5, -8
	movl	%ebx, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L758:
	leal	(%eax,%eax,4), %edx
	sarl	%ebx
	movzwl	(%esi,%edx,8), %edi
	xorl	%edx, %edx
	cmpw	%di, %cx
	setle	%dl
	negl	%edx
	movl	%edx, %ebp
	xorl	%edx, %edx
	cmpw	%di, %cx
	setg	%dl
	movl	%edx, %edi
	movl	%ebp, %edx
	xorl	%edi, %edx
	imull	%ebx, %edx
	addl	%edx, %eax
	cmpl	$1, %ebx
	jne	L758
	movl	12(%esp), %ebp
	.cfi_restore 5
L757:
	leal	(%eax,%eax,4), %edx
	sall	$3, %edx
	leal	(%esi,%edx), %edi
	movswl	(%edi), %ebx
	cmpw	%bx, %cx
	jge	L759
	leal	-40(%esi,%edx), %edx
	.p2align 4
	.p2align 4
	.p2align 3
L760:
	movl	%edx, %edi
	movswl	(%edx), %ebx
	subl	$40, %edx
	subl	$1, %eax
	cmpw	%bx, %cx
	jl	L760
L759:
	movswl	2(%edi), %edx
	addl	%ebx, %edx
	cmpl	%ecx, %edx
	jg	L756
	leal	(%eax,%eax,4), %edx
	leal	40(%esi,%edx,8), %ebx
	.p2align 5
	.p2align 4
	.p2align 3
L762:
	movl	%ebx, %esi
	addl	$1, %eax
	addl	$40, %ebx
	movswl	(%esi), %edx
	movswl	2(%esi), %esi
	addl	%esi, %edx
	cmpl	%ecx, %edx
	jle	L762
L756:
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
L763:
	.cfi_restore_state
	movl	%ebx, %eax
	jmp	L757
	.cfi_endproc
LFE29:
	.p2align 4
	.globl	_sectorofwall
	.def	_sectorofwall;	.scl	2;	.type	32;	.endef
_sectorofwall:
LFB30:
	.cfi_startproc
	movswl	_numwalls, %edx
	cwtl
	cmpl	%edx, %eax
	jnb	L772
	cmpw	$0, _editstatus
	je	L776
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ecx
	movl	_wall, %ebx
	sall	$5, %ecx
	movswl	10(%ebx,%ecx), %ecx
	cmpl	%edx, %ecx
	jnb	L771
	sall	$5, %ecx
	movswl	12(%ebx,%ecx), %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L771:
	.cfi_restore_state
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__ZL21sectorofwall_internals.lto_priv.0
	.p2align 4,,10
	.p2align 3
L776:
	movswl	_wallsect(%eax,%eax), %eax
	ret
	.p2align 4,,10
	.p2align 3
L772:
	movl	$-1, %eax
	ret
	.cfi_endproc
LFE30:
	.p2align 4
	.globl	_wallength
	.def	_wallength;	.scl	2;	.type	32;	.endef
_wallength:
LFB31:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movswl	%ax, %edx
	sall	$5, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	andl	$-8, %esp
	subl	$16, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	_wall, %ecx
	addl	%ecx, %edx
	movswl	8(%edx), %eax
	sall	$5, %eax
	leal	(%ecx,%eax), %ebx
	movl	(%ebx), %eax
	subl	(%edx), %eax
	movl	4(%ebx), %esi
	subl	4(%edx), %esi
	imull	%eax
	movl	%eax, %ecx
	movl	%esi, %eax
	movl	%edx, %ebx
	imull	%esi
	addl	%ecx, %eax
	adcl	%ebx, %edx
	testl	%edx, %edx
	jg	L778
/APP
 # 14254 "source/build/src/engine.cpp" 1
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
L778:
	.cfi_restore_state
	fnstcw	14(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	fildq	(%esp)
	movzwl	14(%esp), %eax
	orb	$12, %ah
	fsqrt
	movw	%ax, 12(%esp)
	fldcw	12(%esp)
	fistpl	(%esp)
	fldcw	14(%esp)
	movl	(%esp), %eax
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
LFE31:
	.p2align 4
	.globl	_getzsofslopeptr
	.def	_getzsofslopeptr;	.scl	2;	.type	32;	.endef
_getzsofslopeptr:
LFB32:
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
	je	L782
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
	je	L799
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
	movl	%eax, %edi
	testb	$2, 20(%esp)
	jne	L800
L784:
	testb	$2, 22(%esp)
	jne	L801
L799:
	movl	28(%esp), %ebx
	.cfi_restore 3
L782:
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
L801:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	24(%esp), %eax
	sarl	%edi
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movswl	26(%ebp), %edx
	movl	%edi, %eax
	imull	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	64(%esp), %edx
	addl	%eax, %eax
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
L800:
	.cfi_restore_state
	movl	24(%esp), %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%edi, %eax
	movswl	18(%ebp), %edx
	sarl	%eax
	imull	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	60(%esp), %edx
	addl	%eax, %eax
	addl	%eax, (%edx)
	movzwl	14(%ebp), %eax
	movw	%ax, 22(%esp)
	jmp	L784
	.cfi_endproc
LFE32:
	.p2align 4
	.globl	_alignceilslope
	.def	_alignceilslope;	.scl	2;	.type	32;	.endef
_alignceilslope:
LFB33:
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
	jne	L809
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
L809:
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
	call	_tabledivide64.lto_priv.1
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
	jne	L804
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
L804:
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
LFE33:
	.p2align 4
	.globl	_alignflorslope
	.def	_alignflorslope;	.scl	2;	.type	32;	.endef
_alignflorslope:
LFB34:
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
	jne	L817
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
L817:
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
	call	_tabledivide64.lto_priv.1
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
	jne	L812
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
L812:
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
LFE34:
	.p2align 4
	.globl	_videoSet2dMode
	.def	_videoSet2dMode;	.scl	2;	.type	32;	.endef
_videoSet2dMode:
LFB35:
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
	movl	%ecx, %ebx
	subl	$20, %esp
	.cfi_def_cfa_offset 40
	movl	40(%esp), %edi
	movb	%al, 15(%esp)
	movl	%edx, %eax
	cltd
	idivl	%edi
	movl	$640, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	imull	%edi, %eax
	cmpl	%esi, %eax
	cmovle	%eax, %esi
	movl	$640, %eax
	cmpl	%eax, %esi
	cmovl	%eax, %esi
	movl	%ecx, %eax
	cltd
	idivl	%edi
	movl	$480, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	imull	%edi, %eax
	cmpl	%ecx, %eax
	movzbl	_divtable32+2404, %ecx
	cmovle	%eax, %ebx
	movl	$480, %eax
	movl	%ecx, %ebp
	cmpl	%eax, %ebx
	cmovl	%eax, %ebx
	movl	_divtable32+2400, %eax
	andl	$31, %ebp
	testl	%eax, %eax
	jne	L819
	sarb	$7, %cl
	movl	%ebx, %eax
	movsbl	%cl, %edx
	movl	%ebp, %ecx
	sarl	%cl, %eax
	xorl	%edx, %eax
	subl	%edx, %eax
L820:
	cmpl	%eax, %edi
	movl	$8, %ecx
	movl	%ebx, %edx
	movl	$0, _g_lastpalettesum
	movl	$0, _g_lastpalettesum+4
	cmovg	%eax, %edi
	movl	$1, %eax
	testl	%edi, %edi
	cmovle	%eax, %edi
	movzbl	15(%esp), %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	_videoSetMode
	testl	%eax, %eax
	js	L818
	movl	%esi, %eax
	xorps	%xmm0, %xmm0
	movl	%edi, _upscalefactor
	movl	$0, _rendmode
	cltd
	idivl	%edi
	movl	%eax, %esi
	movl	%eax, _xdim
	movl	%ebx, %eax
	cltd
	cvtsi2ssl	%esi, %xmm0
	idivl	%edi
	movss	%xmm0, _fxdim
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movl	%eax, %edx
	movl	%eax, _ydim
	movl	%esi, %eax
	movss	%xmm0, _fydim
	call	__Z17OSD_ResizeDisplayii
	call	__ZL20videoAllocateBuffersv.lto_priv.0
	movl	_xdim, %eax
	xorl	%edx, %edx
	leal	-1(%eax), %ecx
	movl	_ydim, %eax
	subl	$1, %eax
	movl	%eax, (%esp)
	xorl	%eax, %eax
	call	_videoSetViewableArea
	movl	_ydim, %eax
	movl	_xdim, %edx
	subl	$26, %eax
	sarl	%edx
	movl	%eax, _ydim16
	sarl	%eax
	movl	%edx, _halfxdim16
	movl	%eax, _midydim16
	call	_videoBeginDrawing
	movl	_ydim, %eax
	imull	_bytesperline, %eax
	movl	$0, 4(%esp)
	movl	%eax, 8(%esp)
	movl	_frameplace, %eax
	movl	%eax, (%esp)
	call	_memset
	call	_videoEndDrawing
	movl	_xres, %eax
	movzwl	_yres, %edx
	sall	$16, %eax
	orl	%edx, %eax
	movl	%eax, _qsetmode
L818:
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
L819:
	.cfi_restore_state
	imull	%ebx
	movl	%ecx, %eax
	sarb	$7, %al
	movl	%edx, 16(%esp)
	movsbl	%al, %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	16(%esp), %edx
	addl	%edx, %eax
	andl	$64, %ecx
	movl	%ebp, %ecx
	cmovne	%eax, %edx
	movl	%edx, %eax
	shrl	$31, %edx
	sarl	%cl, %eax
	addl	%edx, %eax
	jmp	L820
	.cfi_endproc
LFE35:
	.p2align 4
	.globl	_printext16
	.def	_printext16;	.scl	2;	.type	32;	.endef
_printext16:
LFB37:
	.cfi_startproc
	subl	$92, %esp
	.cfi_def_cfa_offset 96
	movl	%edi, 84(%esp)
	movzbl	116(%esp), %eax
	.cfi_offset 7, -12
	movl	100(%esp), %edi
	movb	%al, 60(%esp)
	testl	%edi, %edi
	js	L827
	movl	100(%esp), %edi
	movl	_ydim, %eax
	leal	7(%edi), %edx
	cmpl	%eax, %edx
	jge	L828
L827:
	movl	%ebx, 76(%esp)
	movl	$7, 44(%esp)
	testb	$2, 60(%esp)
	.cfi_offset 3, -20
	jne	L897
L831:
	movzbl	60(%esp), %ebx
	movl	$_textfont, %edx
	movl	$_smalltextfont, %eax
	movl	%ebx, %ecx
	andl	$1, %ecx
	cmove	%edx, %eax
	movl	%eax, 64(%esp)
	movl	112(%esp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L869
	movl	96(%esp), %edi
	leal	0(,%ebx,4), %edx
	movl	%esi, 80(%esp)
	movl	$8, %ebx
	andl	$4, %edx
	movl	%ebp, 88(%esp)
	movl	%edi, 40(%esp)
	movzwl	108(%esp), %edi
	subl	%edx, %ebx
	movl	%ebx, 56(%esp)
	cmpw	$-1, 108(%esp)
	movw	%di, 68(%esp)
	movzwl	104(%esp), %edi
	movl	$0, 36(%esp)
	movw	%di, 26(%esp)
	movzbl	%cl, %edi
	movl	%edi, 52(%esp)
	setl	71(%esp)
	xorl	%edx, %edx
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	.p2align 4
	.p2align 3
L867:
	cmpb	$94, %al
	je	L898
	movl	112(%esp), %eax
	movl	36(%esp), %edi
	movzbl	(%eax,%edi), %eax
	cmpb	$10, %al
	je	L899
L844:
	movl	56(%esp), %edi
	movl	40(%esp), %esi
	addl	%esi, %edi
	testl	%esi, %esi
	js	L874
	movl	64(%esp), %ebx
	leal	(%ebx,%eax,8), %ebx
	call	_videoBeginDrawing
	movl	100(%esp), %edx
	movl	%esi, %eax
	movzwl	68(%esp), %esi
	imull	_bytesperline, %edx
	subl	52(%esp), %eax
	addl	%eax, %edx
	addl	_frameplace, %edx
	testw	%si, %si
	jns	L850
	cmpb	$0, 71(%esp)
	je	L846
	negw	%si
	movw	%si, 68(%esp)
	js	L875
	movl	44(%esp), %esi
	testl	%esi, %esi
	js	L849
L848:
	movl	44(%esp), %eax
	movl	%edi, 32(%esp)
	movl	%ebx, %ecx
	leal	1(%ebx,%eax), %ebp
	movl	40(%esp), %eax
	subl	52(%esp), %eax
	movl	%ebp, 48(%esp)
	movl	%eax, %edi
	.p2align 4
	.p2align 3
L855:
	movl	40(%esp), %esi
	movl	%edx, 28(%esp)
	movl	%edx, %ebx
	movl	%esi, %eax
	subl	%esi, %ebx
	.p2align 4
	.p2align 3
L863:
	cmpl	_xdim, %eax
	jnb	L860
	movl	28(%esp), %edx
	cmpl	_frameplace, %edx
	jb	L860
	movl	%eax, %esi
	negl	%esi
	movzbl	__ZL8pow2char.lto_priv.7+7(%esi,%edi), %edx
	movzbl	26(%esp), %esi
	testb	%dl, (%ecx)
	jne	L862
	movzbl	(%ebx,%eax), %esi
	movswl	68(%esp), %ebp
	sall	$8, %esi
	addl	_blendtable, %esi
	movzbl	(%esi,%ebp), %esi
L862:
	movl	%esi, %edx
	movb	%dl, (%ebx,%eax)
	addl	$1, %eax
	cmpl	%eax, 32(%esp)
	jne	L863
L860:
	movl	28(%esp), %edx
	addl	$1, %ecx
	addl	_bytesperline, %edx
	cmpl	48(%esp), %ecx
	jne	L855
	movl	32(%esp), %edi
L849:
	call	_videoEndDrawing
	cmpl	%edi, _xdim
	movl	%edi, 40(%esp)
	jle	L877
L835:
	addl	$1, 36(%esp)
	movl	112(%esp), %edi
	movl	36(%esp), %eax
	movl	%eax, %edx
	movzbl	(%edi,%eax), %eax
	testb	%al, %al
	jne	L867
L877:
	movl	76(%esp), %ebx
	.cfi_restore 3
	movl	80(%esp), %esi
	.cfi_restore 6
	movl	88(%esp), %ebp
	.cfi_restore 5
L826:
	movl	40(%esp), %eax
	movl	84(%esp), %edi
	addl	$92, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L898:
	.cfi_def_cfa_offset 96
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	36(%esp), %eax
	movl	112(%esp), %edi
	leal	1(%edi,%eax), %ebx
	leal	1(%eax), %esi
	movzbl	(%ebx), %eax
	cmpb	$79, %al
	je	L900
	movzbl	%al, %ecx
	subl	$48, %ecx
	cmpl	$9, %ecx
	jbe	L901
	movl	36(%esp), %edi
	addl	$1, %edi
	movl	%edi, 36(%esp)
	cmpb	$10, %al
	jne	L844
	.p2align 4
	.p2align 3
L899:
	movl	100(%esp), %eax
	addl	$8, %eax
	js	L873
	movl	100(%esp), %edi
	movl	_ydim, %edx
	leal	15(%edi), %ecx
	cmpl	%edx, %ecx
	jl	L873
	subl	%eax, %edx
	subl	$1, %edx
	movl	%edx, 44(%esp)
	js	L896
	movl	96(%esp), %edi
	movl	%eax, 100(%esp)
	movl	%edi, 40(%esp)
	jmp	L835
	.p2align 4,,10
	.p2align 3
L874:
	movl	%edi, 40(%esp)
	jmp	L835
	.p2align 4,,10
	.p2align 3
L873:
	movl	96(%esp), %edi
	movl	%eax, 100(%esp)
	movl	$7, 44(%esp)
	movl	%edi, 40(%esp)
	jmp	L835
L900:
	movzwl	68(%esp), %eax
	testb	$4, 60(%esp)
	movl	%esi, 36(%esp)
	cmove	108(%esp), %ax
	movw	%ax, 68(%esp)
	movzwl	26(%esp), %eax
	cmove	104(%esp), %ax
	movw	%ax, 26(%esp)
	jmp	L835
L850:
	movl	44(%esp), %eax
	testl	%eax, %eax
	js	L849
	cmpw	$-1, 108(%esp)
	jl	L848
	movl	44(%esp), %eax
	movl	40(%esp), %ebp
	subl	52(%esp), %ebp
	leal	1(%eax,%ebx), %eax
	movl	%eax, 28(%esp)
	.p2align 4
	.p2align 3
L859:
	movl	40(%esp), %ecx
	movl	%edx, %esi
	movl	%ecx, %eax
	subl	%ecx, %esi
	.p2align 4
	.p2align 3
L858:
	cmpl	_xdim, %eax
	jnb	L856
	cmpl	_frameplace, %edx
	jb	L856
	movl	%eax, %ecx
	negl	%ecx
	movzbl	__ZL8pow2char.lto_priv.7+7(%ecx,%ebp), %ecx
	testb	%cl, (%ebx)
	movzwl	68(%esp), %ecx
	cmovne	26(%esp), %cx
	movb	%cl, (%esi,%eax)
	addl	$1, %eax
	cmpl	%edi, %eax
	jne	L858
L856:
	addl	_bytesperline, %edx
	addl	$1, %ebx
	cmpl	%ebx, 28(%esp)
	jne	L859
	jmp	L849
L846:
	cmpw	$0, 68(%esp)
	jns	L850
L847:
	movl	44(%esp), %eax
	testl	%eax, %eax
	js	L849
	leal	1(%eax,%ebx), %eax
	movl	40(%esp), %esi
	subl	52(%esp), %esi
	movl	%eax, 28(%esp)
	.p2align 4
	.p2align 3
L852:
	movl	40(%esp), %ecx
	movl	%edx, %ebp
	movl	%ecx, %eax
	subl	%ecx, %ebp
	.p2align 4
	.p2align 3
L866:
	cmpl	_xdim, %eax
	jnb	L864
	cmpl	_frameplace, %edx
	jb	L864
	movl	%eax, %ecx
	negl	%ecx
	movzbl	__ZL8pow2char.lto_priv.7+7(%ecx,%esi), %ecx
	testb	%cl, (%ebx)
	je	L865
	movzbl	26(%esp), %ecx
	movb	%cl, 0(%ebp,%eax)
L865:
	addl	$1, %eax
	cmpl	%eax, %edi
	jne	L866
L864:
	addl	_bytesperline, %edx
	addl	$1, %ebx
	cmpl	28(%esp), %ebx
	jne	L852
	jmp	L849
L901:
	movl	112(%esp), %edi
	movzbl	2(%edi,%edx), %ecx
	subl	$48, %ecx
	cmpl	$9, %ecx
	jbe	L902
	movb	%al, 72(%esp)
	movb	$0, 73(%esp)
	movl	%esi, 36(%esp)
L839:
	testb	$4, 60(%esp)
	je	L903
L840:
	movl	112(%esp), %eax
	cmpb	$44, 1(%eax,%esi)
	jne	L835
	leal	2(%eax,%esi), %edx
	movzbl	(%edx), %eax
	movl	%eax, %ecx
	subl	$48, %eax
	cmpl	$9, %eax
	ja	L835
	movl	112(%esp), %eax
	movzbl	3(%eax,%esi), %eax
	subl	$48, %eax
	cmpl	$9, %eax
	ja	L841
	movl	112(%esp), %eax
	movzbl	4(%eax,%esi), %eax
	subl	$48, %eax
	cmpl	$9, %eax
	jbe	L904
	movzwl	(%edx), %eax
	addl	$3, 36(%esp)
	movb	$0, 74(%esp)
	movw	%ax, 72(%esp)
L843:
	testb	$4, 60(%esp)
	jne	L835
	leal	72(%esp), %eax
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_strtol
	movzbl	_editorcolors(%eax), %eax
	movw	%ax, 68(%esp)
	jmp	L835
	.p2align 4,,10
	.p2align 3
L875:
	movl	$-32768, %ecx
	movw	%cx, 68(%esp)
	jmp	L847
L902:
	movzbl	3(%edi,%edx), %eax
	subl	$48, %eax
	cmpl	$9, %eax
	movzwl	(%ebx), %eax
	movw	%ax, 72(%esp)
	jbe	L905
	addl	$2, 36(%esp)
	movl	36(%esp), %esi
	movb	$0, 74(%esp)
	testb	$4, 60(%esp)
	jne	L840
L903:
	leal	72(%esp), %eax
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_strtol
	movzbl	_editorcolors(%eax), %eax
	movw	%ax, 26(%esp)
	jmp	L840
L828:
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	subl	100(%esp), %eax
	subl	$1, %eax
	movl	%eax, 44(%esp)
	js	L845
	movl	%ebx, 76(%esp)
	.cfi_offset 3, -20
	testb	$2, 60(%esp)
	je	L831
L897:
	movl	60(%esp), %eax
	movl	$-1, 12(%esp)
	movl	$0, 8(%esp)
	andl	$249, %eax
	orl	$4, %eax
	movl	%eax, 20(%esp)
	movl	112(%esp), %eax
	movl	%eax, 16(%esp)
	movl	100(%esp), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	movl	96(%esp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	_printext16
	jmp	L831
L896:
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	76(%esp), %ebx
	.cfi_restore 3
	movl	80(%esp), %esi
	.cfi_restore 6
	movl	88(%esp), %ebp
	.cfi_restore 5
L845:
	movl	$0, 40(%esp)
	movl	84(%esp), %edi
	movl	40(%esp), %eax
	addl	$92, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L905:
	.cfi_def_cfa_offset 96
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movzbl	2(%ebx), %eax
	addl	$3, 36(%esp)
	movb	$0, 75(%esp)
	movl	36(%esp), %esi
	movb	%al, 74(%esp)
	jmp	L839
L841:
	addl	$2, 36(%esp)
	movb	%cl, 72(%esp)
	movb	$0, 73(%esp)
	jmp	L843
L869:
	.cfi_restore 5
	.cfi_restore 6
	movl	96(%esp), %eax
	movl	76(%esp), %ebx
	.cfi_restore 3
	movl	%eax, 40(%esp)
	jmp	L826
L904:
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movzwl	(%edx), %eax
	addl	$4, 36(%esp)
	movb	$0, 75(%esp)
	movw	%ax, 72(%esp)
	movzbl	2(%edx), %eax
	movb	%al, 74(%esp)
	jmp	L843
	.cfi_endproc
LFE37:
	.p2align 4
	.globl	__ZL11sortspritesii.part.0.lto_priv.0
	.def	__ZL11sortspritesii.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL11sortspritesii.part.0.lto_priv.0:
LFB38:
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
	jle	L907
	movl	$1, %eax
	.p2align 3
	.p2align 4
	.p2align 3
L908:
	leal	1(%eax,%eax), %eax
	cmpl	%edx, %eax
	jl	L908
	sarl	%eax
	movl	%ebx, 32(%esp)
	movl	%eax, %edx
	movl	(%esp), %eax
	leal	(%eax,%eax,2), %eax
	leal	__ZL10spritesxyz.lto_priv.0+4(,%eax,4), %edi
	movl	%edi, 36(%esp)
	.p2align 4
	.p2align 3
L909:
	movl	32(%esp), %eax
	subl	%edx, %eax
	movl	%eax, 24(%esp)
	movl	%eax, %edi
	movl	(%esp), %eax
	cmpl	%edi, %eax
	jge	L912
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
L914:
	movl	28(%esp), %ebx
	movl	%edx, %edi
	movl	%eax, %esi
	leal	(%ebx,%edx), %ebp
	cmpl	%eax, (%esp)
	jg	L910
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	jmp	L911
	.p2align 4,,10
	.p2align 3
L963:
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
	jg	L954
L911:
	movl	4(%ebp), %eax
	cmpl	%eax, (%edi)
	jg	L963
L954:
	movl	16(%esp), %eax
	movl	20(%esp), %edx
L910:
	addl	$1, %eax
	addl	$12, %edx
	cmpl	24(%esp), %eax
	jne	L914
	movl	4(%esp), %edx
L912:
	sarl	%edx
	jne	L909
	movl	32(%esp), %ebx
L907:
	movl	(%esp), %esi
	leal	1(%esi), %eax
	movl	%eax, 16(%esp)
	cmpl	%eax, %ebx
	jl	L906
	movl	_globalposz, %edx
	leal	(%esi,%esi,2), %eax
	movl	__ZL10spritesxyz.lto_priv.0+4(,%eax,4), %eax
	movl	%edx, 4(%esp)
	movl	_rendmode, %edx
	movl	%edx, 32(%esp)
	jmp	L940
L965:
	leal	(%edx,%edx,2), %edx
	movl	__ZL10spritesxyz.lto_priv.0+4(,%edx,4), %ecx
	cmpl	%eax, %ecx
	je	L917
	leal	1(%esi), %ebp
	cmpl	16(%esp), %ebp
	jl	L964
L918:
	movl	16(%esp), %esi
	movl	%ecx, %eax
L917:
	addl	$1, 16(%esp)
	cmpl	16(%esp), %ebx
	jl	L906
L940:
	movl	16(%esp), %edx
	cmpl	%edx, %ebx
	jg	L965
	movl	%eax, %ecx
	leal	1(%esi), %ebp
	cmpl	16(%esp), %ebp
	jge	L918
L964:
	movl	%ecx, (%esp)
	movl	%esi, %edx
	movl	%ebp, 8(%esp)
	movl	%esi, 12(%esp)
	movl	%ebx, 20(%esp)
	.p2align 4
	.p2align 3
L921:
	movl	_tspriteptr(,%edx,4), %eax
	movzwl	12(%eax), %esi
	movl	8(%eax), %ecx
	testl	$32, %esi
	jne	L919
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
L919:
	leal	(%edx,%edx,2), %eax
	addl	$1, %edx
	movl	%ecx, __ZL10spritesxyz.lto_priv.0+8(,%eax,4)
	cmpl	16(%esp), %edx
	jne	L921
	movl	12(%esp), %esi
	movl	(%esp), %ecx
	movl	8(%esp), %ebp
	movl	20(%esp), %ebx
	leal	(%esi,%esi,2), %eax
	cmpl	$3, 32(%esp)
	je	L966
	leal	0(,%eax,4), %edx
	movl	%ecx, 36(%esp)
	movl	%edx, 28(%esp)
	movl	%ebx, 40(%esp)
	movl	%ebp, (%esp)
	leal	__ZL10spritesxyz.lto_priv.0+12(%edx), %ebp
	.p2align 4
	.p2align 3
L931:
	cmpl	%esi, (%esp)
	jle	L924
	movl	28(%esp), %eax
	movl	%ebp, %edi
	movl	%esi, 24(%esp)
	movl	%esi, %ebp
	leal	__ZL10spritesxyz.lto_priv.0(%eax), %ecx
	jmp	L930
	.p2align 4,,10
	.p2align 3
L968:
	movl	(%esi), %eax
	cmpl	%eax, (%ebx)
	je	L926
L929:
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
	je	L927
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
L928:
	testl	%edx, %edx
	jns	L927
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
L927:
	addl	$1, %ebp
	addl	$12, %ecx
	cmpl	%ebp, (%esp)
	je	L967
L930:
	movl	(%esp), %eax
	movl	_tspriteptr(,%ebp,4), %esi
	movl	_tspriteptr(,%eax,4), %ebx
	movswl	26(%esi), %eax
	movswl	26(%ebx), %edx
	cmpw	%dx, %ax
	je	L968
	subl	%eax, %edx
	jmp	L928
	.p2align 4,,10
	.p2align 3
L926:
	movl	4(%ebx), %eax
	cmpl	%eax, 4(%esi)
	jne	L929
	movl	8(%ebx), %eax
	cmpl	%eax, 8(%esi)
	jne	L929
	movzwl	12(%esi), %eax
	xorw	12(%ebx), %ax
	testb	$48, %al
	jne	L929
	movswl	30(%ebx), %eax
	movzwl	30(%esi), %edx
	cmpw	%dx, %ax
	je	L929
	movl	%eax, 8(%esp)
	movswl	%dx, %eax
	movl	8(%esp), %edx
	subl	%eax, %edx
	jmp	L928
	.p2align 4,,10
	.p2align 3
L967:
	movl	24(%esp), %esi
	movl	%edi, %ebp
L924:
	addl	$1, (%esp)
	addl	$12, %ebp
	movl	(%esp), %eax
	cmpl	%eax, 16(%esp)
	jne	L931
	movl	36(%esp), %ecx
	movl	40(%esp), %ebx
	jmp	L918
L906:
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
L966:
	.cfi_restore_state
	sall	$2, %eax
	movl	%ecx, 36(%esp)
	movl	%eax, 28(%esp)
	movl	%ebx, 40(%esp)
	movl	%ebp, (%esp)
	leal	__ZL10spritesxyz.lto_priv.0+12(%eax), %ebp
L923:
	movl	28(%esp), %eax
	leal	__ZL10spritesxyz.lto_priv.0(%eax), %ecx
	cmpl	(%esp), %esi
	jge	L939
	movl	%ecx, 8(%esp)
	movl	%ebp, %edi
	movl	%esi, %ebp
	movl	%esi, 24(%esp)
	.p2align 4
	.p2align 3
L938:
	movl	(%esp), %eax
	movl	_tspriteptr(,%ebp,4), %esi
	movl	_tspriteptr(,%eax,4), %ebx
	movzwl	12(%esi), %eax
	movzwl	12(%ebx), %edx
	movl	%edx, %ecx
	xorl	%eax, %edx
	andl	$48, %ecx
	andl	$48, %edx
	jne	L969
	cmpw	$16, %cx
	je	L970
L934:
	movswl	26(%ebx), %edx
	movswl	26(%esi), %eax
	cmpw	%ax, %dx
	jne	L961
	movl	(%esi), %eax
	cmpl	%eax, (%ebx)
	je	L971
L936:
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
	je	L937
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
L961:
	subl	%eax, %edx
L933:
	testl	%edx, %edx
	jns	L937
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
L937:
	addl	$12, 8(%esp)
	addl	$1, %ebp
	cmpl	(%esp), %ebp
	jne	L938
	movl	24(%esp), %esi
	movl	%edi, %ebp
L939:
	addl	$1, (%esp)
	movl	16(%esp), %edx
	addl	$12, %ebp
	cmpl	%edx, (%esp)
	jne	L923
	movl	36(%esp), %ecx
	movl	40(%esp), %ebx
	jmp	L918
L971:
	movl	4(%esi), %eax
	cmpl	%eax, 4(%ebx)
	jne	L936
	movl	8(%esi), %eax
	cmpl	%eax, 8(%ebx)
	jne	L936
	movzwl	30(%ebx), %eax
	movzwl	30(%esi), %edx
	cmpw	%dx, %ax
	je	L936
	movswl	%ax, %ecx
	movswl	%dx, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	jmp	L933
	.p2align 4,,10
	.p2align 3
L969:
	movzwl	%cx, %edx
	andl	$48, %eax
	subl	%eax, %edx
	jmp	L933
L970:
	movswl	28(%ebx), %edx
	movswl	28(%esi), %eax
	cmpw	%ax, %dx
	je	L934
	jmp	L961
	.cfi_endproc
LFE38:
	.p2align 4
	.globl	_getceilzofslopeptr.part.0
	.def	_getceilzofslopeptr.part.0;	.scl	2;	.type	32;	.endef
_getceilzofslopeptr.part.0:
LFB40:
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
	movl	_wall, %ecx
	movl	44(%esp), %eax
	movswl	(%eax), %eax
	sall	$5, %eax
	addl	%ecx, %eax
	movswl	8(%eax), %edx
	movl	(%eax), %edi
	sall	$5, %edx
	addl	%edx, %ecx
	movl	4(%eax), %edx
	movl	(%ecx), %ebp
	movl	4(%ecx), %esi
	subl	%edi, %ebp
	movl	%esi, %eax
	subl	%edx, %eax
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
	movl	44(%esp), %ebx
	sall	$5, %eax
	movl	%eax, 16(%esp)
	movl	4(%ebx), %ecx
	je	L972
	movl	%ecx, 20(%esp)
	movl	52(%esp), %ecx
	movl	%ebp, %eax
	subl	%edx, %ecx
	subl	%esi, %edx
	movl	%edx, %esi
	movl	48(%esp), %edx
	subl	%edi, %edx
	movl	%edx, %edi
	movl	%ecx, %edx
/APP
 # 14273 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $3, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	16(%esp), %ebx
	sarl	%eax
	movl	%ebx, 8(%esp)
	sarl	$31, %ebx
	movl	%ebx, 12(%esp)
	movl	44(%esp), %ebx
	movswl	18(%ebx), %edx
	imull	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	20(%esp), %ecx
	leal	(%ecx,%eax,2), %ecx
L972:
	addl	$24, %esp
	.cfi_def_cfa_offset 20
	movl	%ecx, %eax
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
LFE40:
	.p2align 4
	.globl	_getflorzofslopeptr.part.0
	.def	_getflorzofslopeptr.part.0;	.scl	2;	.type	32;	.endef
_getflorzofslopeptr.part.0:
LFB41:
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
	movl	_wall, %ecx
	movl	44(%esp), %eax
	movswl	(%eax), %eax
	sall	$5, %eax
	addl	%ecx, %eax
	movswl	8(%eax), %edx
	movl	(%eax), %edi
	sall	$5, %edx
	addl	%edx, %ecx
	movl	4(%eax), %edx
	movl	(%ecx), %ebp
	movl	4(%ecx), %esi
	subl	%edi, %ebp
	movl	%esi, %eax
	subl	%edx, %eax
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
	movl	44(%esp), %ebx
	sall	$5, %eax
	movl	%eax, 16(%esp)
	movl	8(%ebx), %ecx
	je	L978
	movl	%ecx, 20(%esp)
	movl	52(%esp), %ecx
	movl	%ebp, %eax
	subl	%edx, %ecx
	subl	%esi, %edx
	movl	%edx, %esi
	movl	48(%esp), %edx
	subl	%edi, %edx
	movl	%edx, %edi
	movl	%ecx, %edx
/APP
 # 14292 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $3, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	16(%esp), %ebx
	sarl	%eax
	movl	%ebx, 8(%esp)
	sarl	$31, %ebx
	movl	%ebx, 12(%esp)
	movl	44(%esp), %ebx
	movswl	26(%ebx), %edx
	imull	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	20(%esp), %ecx
	leal	(%ecx,%eax,2), %ecx
L978:
	addl	$24, %esp
	.cfi_def_cfa_offset 20
	movl	%ecx, %eax
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
LFE41:
	.p2align 4
	.globl	_updatesectorz_compat
	.def	_updatesectorz_compat;	.scl	2;	.type	32;	.endef
_updatesectorz_compat:
LFB42:
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
	subl	$48, %esp
	.cfi_def_cfa_offset 68
	movl	80(%esp), %eax
	movl	72(%esp), %ebp
	movl	76(%esp), %esi
	movswl	(%eax), %edx
	cmpl	$8191, %edx
	ja	L985
	movl	%edx, %ecx
	xorl	%eax, %eax
	cmpw	$4095, %dx
	jg	L1031
L986:
	movl	%eax, 24(%esp)
	movl	68(%esp), %edi
	movl	$-1, %ebx
	jmp	L987
	.p2align 4,,10
	.p2align 3
L995:
	movl	%ebp, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 20(%esp)
	call	_getflorzofslopeptr.part.0
	movl	20(%esp), %edx
	cmpl	%eax, %esi
	jle	L1032
L1008:
	movl	$1, %ebx
L988:
	movl	80(%esp), %eax
	movw	%dx, (%eax)
	movswl	%dx, %edx
L987:
	leal	32(%esp), %eax
	leal	(%edx,%edx,4), %edx
	movl	%ebp, 8(%esp)
	movl	%eax, 16(%esp)
	leal	36(%esp), %eax
	movl	%eax, 12(%esp)
	movl	_sector, %eax
	movl	%edi, 4(%esp)
	leal	(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	cmpl	$1, %ebx
	je	L989
	cmpl	%esi, 36(%esp)
	jg	L1033
L990:
	cmpl	$-1, %ebx
	jne	L994
L989:
	cmpl	%esi, 32(%esp)
	jge	L994
	movl	80(%esp), %eax
	movl	%ebp, %edx
	movswl	(%eax), %ecx
	movl	$1, (%esp)
	movl	%edi, %eax
	call	_yax_getneighborsect
	movl	%eax, %ebx
	testl	%eax, %eax
	js	L994
	movl	_sector, %ecx
	movl	%eax, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %eax
	testb	$2, 14(%eax)
	jne	L995
	movl	8(%eax), %eax
	cmpl	%eax, %esi
	jg	L1008
L1032:
	movl	80(%esp), %eax
	movw	%bx, (%eax)
	addl	$48, %esp
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
L1036:
	.cfi_restore_state
	movl	72(%esp), %ebp
	movl	76(%esp), %esi
L985:
	movzwl	_numsectors, %eax
	testw	%ax, %ax
	jle	L1003
	movswl	%ax, %edi
	jmp	L1005
	.p2align 4,,10
	.p2align 3
L1004:
	movl	%ebx, %edi
	testl	%ebx, %ebx
	je	L1003
L1005:
	leal	40(%esp), %eax
	movl	_sector, %edx
	leal	-1(%edi), %ebx
	movl	%ebp, 8(%esp)
	movl	%eax, 16(%esp)
	leal	44(%esp), %eax
	leal	(%ebx,%ebx,4), %ecx
	movl	%eax, 12(%esp)
	movl	68(%esp), %eax
	leal	(%edx,%ecx,8), %edx
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	call	_getzsofslopeptr
	cmpl	44(%esp), %esi
	jl	L1004
	cmpl	40(%esp), %esi
	jg	L1004
	cmpl	$4095, %ebx
	ja	L1004
	subl	$1, %edi
	movl	68(%esp), %eax
	movl	%ebp, %edx
	movswl	%di, %ecx
	call	_inside
	cmpl	$1, %eax
	jne	L1004
L1030:
	movl	80(%esp), %eax
	movw	%di, (%eax)
L984:
	addl	$48, %esp
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
L1031:
	.cfi_restore_state
	movl	80(%esp), %eax
	subw	$4096, %cx
	movswl	%cx, %edx
	movw	%cx, (%eax)
	movl	$1, %eax
	jmp	L986
	.p2align 4,,10
	.p2align 3
L1033:
	movl	80(%esp), %eax
	movl	%ebp, %edx
	movswl	(%eax), %ecx
	movl	$0, (%esp)
	movl	%edi, %eax
	call	_yax_getneighborsect
	movl	%eax, %ecx
	testl	%eax, %eax
	js	L990
	movl	_sector, %ebx
	movl	%eax, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%ebx,%eax,8), %eax
	testb	$2, 12(%eax)
	je	L1034
	movl	%ebp, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 28(%esp)
	movl	%ecx, 20(%esp)
	call	_getceilzofslopeptr.part.0
	movl	28(%esp), %edx
	movl	20(%esp), %ecx
L992:
	cmpl	%eax, %esi
	jge	L1035
	xorl	%ebx, %ebx
	jmp	L988
	.p2align 4,,10
	.p2align 3
L1003:
	movl	80(%esp), %eax
	movl	$-1, %edx
	movw	%dx, (%eax)
	addl	$48, %esp
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
L994:
	.cfi_restore_state
	movl	80(%esp), %edi
	movl	24(%esp), %ecx
	movswl	(%edi), %ebx
	testl	%ecx, %ecx
	jne	L997
	cmpl	%esi, 36(%esp)
	jg	L998
	cmpl	%esi, 32(%esp)
	jge	L997
	.p2align 4
	.p2align 3
L998:
	movl	_sector, %eax
	leal	(%ebx,%ebx,4), %edx
	movl	%ebp, 72(%esp)
	movl	%esi, 76(%esp)
	leal	(%eax,%edx,8), %eax
	movswl	(%eax), %ebx
	movswl	2(%eax), %eax
	sall	$5, %ebx
	movl	%eax, %ebp
	addl	_wall, %ebx
	jmp	L1001
	.p2align 5
	.p2align 4,,10
	.p2align 3
L999:
	addl	$32, %ebx
	subl	$1, %ebp
	je	L1036
L1001:
	movzwl	12(%ebx), %edi
	testw	%di, %di
	js	L999
	leal	40(%esp), %eax
	movswl	%di, %esi
	movl	%eax, 16(%esp)
	leal	44(%esp), %eax
	leal	(%esi,%esi,4), %edx
	movl	%eax, 12(%esp)
	movl	72(%esp), %eax
	movl	%eax, 8(%esp)
	movl	68(%esp), %eax
	movl	%eax, 4(%esp)
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movl	44(%esp), %eax
	cmpl	%eax, 76(%esp)
	jl	L999
	movl	40(%esp), %eax
	cmpl	%eax, 76(%esp)
	jg	L999
	cmpl	$4095, %esi
	ja	L999
	movl	72(%esp), %edx
	movl	68(%esp), %eax
	movl	%esi, %ecx
	call	_inside
	cmpl	$1, %eax
	jne	L999
	jmp	L1030
	.p2align 4,,10
	.p2align 3
L997:
	cmpl	$4095, %ebx
	ja	L998
	movl	68(%esp), %eax
	movl	%ebx, %ecx
	movl	%ebp, %edx
	call	_inside
	cmpl	$1, %eax
	jne	L998
	jmp	L984
	.p2align 4,,10
	.p2align 3
L1034:
	movl	4(%eax), %eax
	jmp	L992
L1035:
	movl	80(%esp), %eax
	movw	%cx, (%eax)
	jmp	L984
	.cfi_endproc
LFE42:
	.p2align 4
	.globl	_updatesectorneighborz.constprop.0
	.def	_updatesectorneighborz.constprop.0;	.scl	2;	.type	32;	.endef
_updatesectorneighborz.constprop.0:
LFB46:
	.cfi_startproc
	subl	$64, %esp
	.cfi_def_cfa_offset 68
	movl	80(%esp), %eax
	movl	%ebp, 60(%esp)
	movl	%ebx, 48(%esp)
	.cfi_offset 5, -8
	.cfi_offset 3, -20
	movl	72(%esp), %ebp
	movl	%edi, 56(%esp)
	movzwl	(%eax), %ebx
	movswl	_numsectors, %eax
	cmpw	$4095, %bx
	.cfi_offset 7, -12
	jle	L1040
	leal	-4095(%ebx), %edx
	cmpw	%ax, %dx
	jle	L1086
L1040:
	movb	$0, 20(%esp)
L1039:
	movswl	%bx, %edi
	cmpl	%eax, %edi
	jnb	L1041
	movl	%esi, 52(%esp)
	.cfi_offset 6, -16
	movl	$-1, %esi
	jmp	L1061
	.p2align 4,,10
	.p2align 3
L1049:
	movl	68(%esp), %edi
	movl	%ebp, 8(%esp)
	movl	%eax, (%esp)
	movl	%edi, 4(%esp)
	call	_getflorzofslopeptr.part.0
	cmpl	%eax, 76(%esp)
	jle	L1085
L1063:
	movl	$1, %esi
L1046:
	movl	80(%esp), %eax
	movswl	%bx, %edi
	movw	%bx, (%eax)
	movswl	_numsectors, %eax
	cmpl	%eax, %edi
	jnb	L1083
L1061:
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_updatesectorneighbormap, (%esp)
	call	_memset
	movl	%edi, %eax
	movl	%ebx, %ecx
	movw	%bx, _updatesectorneighborlist
	sarl	$3, %eax
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %edx
	orb	%dl, _updatesectorneighbormap(%eax)
	movl	%edi, %ecx
	movl	%ebp, %edx
	movl	$0, (%esp)
	movl	68(%esp), %eax
	call	_getsectordist
	cmpl	84(%esp), %eax
	jg	L1083
	leal	36(%esp), %eax
	movl	_sector, %edx
	movl	%ebp, 8(%esp)
	movl	%eax, 16(%esp)
	leal	32(%esp), %eax
	movl	%eax, 12(%esp)
	movl	68(%esp), %eax
	movl	%eax, 4(%esp)
	leal	(%edi,%edi,4), %eax
	leal	(%edx,%eax,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	cmpl	$1, %esi
	je	L1042
	movl	76(%esp), %eax
	cmpl	%eax, 32(%esp)
	jg	L1087
L1043:
	cmpl	$-1, %esi
	jne	L1048
L1042:
	movl	36(%esp), %eax
	cmpl	%eax, 76(%esp)
	jle	L1048
	movl	$1, (%esp)
	movl	68(%esp), %eax
	movl	%edi, %ecx
	movl	%ebp, %edx
	call	_yax_getneighborsect
	movl	%eax, %esi
	testl	%eax, %eax
	js	L1048
	movl	_sector, %edx
	movl	%eax, %ebx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$2, 14(%eax)
	jne	L1049
	movl	8(%eax), %eax
	cmpl	%eax, 76(%esp)
	jg	L1063
L1085:
	movl	80(%esp), %eax
	movw	%si, (%eax)
	movl	52(%esp), %esi
	.cfi_restore 6
L1093:
	movl	48(%esp), %ebx
	movl	56(%esp), %edi
	movl	60(%esp), %ebp
	addl	$64, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1087:
	.cfi_def_cfa_offset 68
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$0, (%esp)
	movl	68(%esp), %eax
	movl	%ebp, %edx
	movl	%edi, %ecx
	call	_yax_getneighborsect
	movl	%eax, %edx
	testl	%eax, %eax
	js	L1043
	movl	_sector, %esi
	movl	%eax, %ebx
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %eax
	testb	$2, 12(%eax)
	je	L1088
	movl	68(%esp), %edi
	movl	%ebp, 8(%esp)
	movl	%eax, (%esp)
	movl	%edi, 4(%esp)
	movl	%edx, 24(%esp)
	call	_getceilzofslopeptr.part.0
	movl	24(%esp), %edx
L1045:
	cmpl	%eax, 76(%esp)
	jge	L1089
	xorl	%esi, %esi
	jmp	L1046
	.p2align 4,,10
	.p2align 3
L1048:
	cmpb	$0, 20(%esp)
	jne	L1051
	movl	32(%esp), %eax
	cmpl	%eax, 76(%esp)
	jl	L1066
	movl	36(%esp), %eax
	cmpl	%eax, 76(%esp)
	jg	L1066
L1051:
	movl	80(%esp), %eax
	movswl	(%eax), %ecx
	cmpl	$4095, %ecx
	jbe	L1090
L1066:
	movl	$1, %ecx
	movl	%ebp, 72(%esp)
	xorl	%edi, %edi
	movw	%cx, 24(%esp)
	.p2align 4
	.p2align 3
L1059:
	leal	44(%esp), %eax
	movswl	_updatesectorneighborlist(%edi,%edi), %ebp
	movl	%eax, 16(%esp)
	leal	40(%esp), %eax
	movl	%eax, 12(%esp)
	movl	72(%esp), %eax
	leal	0(%ebp,%ebp,4), %ebx
	movl	%ebp, %esi
	sall	$3, %ebx
	movl	%eax, 8(%esp)
	movl	68(%esp), %eax
	movl	%eax, 4(%esp)
	movl	_sector, %eax
	addl	%ebx, %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movl	40(%esp), %eax
	cmpl	%eax, 76(%esp)
	jl	L1053
	movl	44(%esp), %eax
	cmpl	%eax, 76(%esp)
	jg	L1053
	cmpl	$4095, %ebp
	jbe	L1091
	.p2align 4
	.p2align 3
L1053:
	movl	_sector, %eax
	addl	%ebx, %eax
	movswl	(%eax), %ebx
	movswl	2(%eax), %eax
	leal	(%eax,%ebx), %ebp
	cmpl	%ebp, %ebx
	jge	L1054
	movl	%ebx, 20(%esp)
	movl	%ebx, %esi
	movl	%edi, 28(%esp)
	sall	$5, %esi
	addl	_wall, %esi
	.p2align 4
	.p2align 3
L1058:
	movzwl	12(%esi), %eax
	testw	%ax, %ax
	js	L1057
	movswl	%ax, %ecx
	andl	$7, %eax
	movl	%ecx, %edx
	movzbl	__ZL8pow2char.lto_priv.7(%eax), %eax
	sarl	$3, %edx
	movzbl	_updatesectorneighbormap(%edx), %ebx
	andl	%eax, %ebx
	cmpb	%bl, %al
	je	L1057
	movl	68(%esp), %eax
	movl	72(%esp), %edx
	movl	$0, (%esp)
	call	_getsectordist
	cmpl	$1536, %eax
	jle	L1092
	.p2align 4
	.p2align 3
L1057:
	addl	$1, 20(%esp)
	addl	$32, %esi
	cmpl	20(%esp), %ebp
	jne	L1058
	movl	28(%esp), %edi
L1054:
	movswl	24(%esp), %eax
	addl	$1, %edi
	cmpl	%eax, %edi
	jl	L1059
L1083:
	movl	52(%esp), %esi
	.cfi_restore 6
L1041:
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_updatesectorneighbormap, (%esp)
	call	_memset
	movl	80(%esp), %eax
	movl	$-1, %edx
	movw	%dx, (%eax)
L1037:
	movl	48(%esp), %ebx
	movl	56(%esp), %edi
	movl	60(%esp), %ebp
	addl	$64, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
L1086:
	.cfi_restore_state
	movl	80(%esp), %eax
	subw	$4096, %bx
	movb	$1, 20(%esp)
	movw	%bx, (%eax)
	movswl	_numsectors, %eax
	jmp	L1039
	.p2align 4,,10
	.p2align 3
L1092:
	.cfi_offset 6, -16
	movswl	12(%esi), %eax
	movl	%eax, %edi
	sarl	$3, %eax
	movzbl	_updatesectorneighbormap(%eax), %edx
	movl	%edi, %ecx
	andl	$7, %ecx
	movl	%edx, %ebx
	movzbl	__ZL8pow2char.lto_priv.1(%ecx), %ecx
	notl	%ebx
	testb	%cl, %bl
	je	L1057
	orl	%ecx, %edx
	movb	%dl, _updatesectorneighbormap(%eax)
	movswl	24(%esp), %eax
	movl	%eax, %ecx
	movw	%di, _updatesectorneighborlist(%eax,%eax)
	addl	$1, %ecx
	movw	%cx, 24(%esp)
	jmp	L1057
	.p2align 4,,10
	.p2align 3
L1091:
	movl	72(%esp), %edx
	movl	68(%esp), %eax
	movl	%ebp, %ecx
	call	_inside
	cmpl	$1, %eax
	jne	L1053
	movl	80(%esp), %eax
	movw	%si, (%eax)
	movl	52(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L1093
	.p2align 4,,10
	.p2align 3
L1088:
	.cfi_restore_state
	movl	4(%eax), %eax
	jmp	L1045
L1090:
	movl	68(%esp), %eax
	movl	%ebp, %edx
	call	_inside
	cmpl	$1, %eax
	jne	L1066
	movl	52(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L1037
L1089:
	.cfi_restore_state
	movl	80(%esp), %eax
	movw	%dx, (%eax)
	movl	52(%esp), %esi
	.cfi_restore 6
	jmp	L1037
	.cfi_endproc
LFE46:
	.p2align 4
	.globl	_updatesectorz
	.def	_updatesectorz;	.scl	2;	.type	32;	.endef
_updatesectorz:
LFB47:
	.cfi_startproc
	subl	$60, %esp
	.cfi_def_cfa_offset 64
	movl	76(%esp), %eax
	movl	%ebp, 56(%esp)
	movl	%edi, 52(%esp)
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	72(%esp), %ebp
	movzwl	(%eax), %eax
	movl	$1536, 20(%esp)
	movl	$256, 16(%esp)
	movw	%ax, 34(%esp)
	leal	34(%esp), %eax
	movl	%eax, 12(%esp)
	movl	68(%esp), %eax
	movl	%ebp, 8(%esp)
	movl	%eax, 4(%esp)
	movl	64(%esp), %eax
	movl	%eax, (%esp)
	call	_updatesectorneighborz.constprop.0
	movzwl	34(%esp), %eax
	movw	%ax, 30(%esp)
	cmpw	$-1, %ax
	je	L1127
L1096:
	movzwl	30(%esp), %edi
	movl	76(%esp), %eax
	movw	%di, (%eax)
	movl	52(%esp), %edi
	movl	56(%esp), %ebp
	addl	$60, %esp
	.cfi_remember_state
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1127:
	.cfi_restore_state
	movl	76(%esp), %eax
	movl	%esi, 48(%esp)
	.cfi_offset 6, -16
	movzwl	_numsectors, %esi
	movl	%ebx, 44(%esp)
	.cfi_offset 3, -20
	movzwl	(%eax), %edi
	movl	%esi, %eax
	sarw	%ax
	cmpw	$-1, %di
	cmove	%eax, %edi
	leal	40(%esp), %eax
	movl	%eax, 16(%esp)
	leal	36(%esp), %eax
	movl	%eax, 12(%esp)
	movl	68(%esp), %eax
	movswl	%di, %ecx
	leal	(%ecx,%ecx,4), %edx
	movl	%ecx, 24(%esp)
	movl	%eax, 8(%esp)
	movl	64(%esp), %eax
	movl	%eax, 4(%esp)
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	cmpl	36(%esp), %ebp
	movl	24(%esp), %ecx
	jge	L1128
L1098:
	movswl	%si, %ebx
	movl	%edi, %esi
	subl	%ecx, %ebx
	cmpl	%ecx, %ebx
	cmovl	%ecx, %ebx
	jmp	L1103
	.p2align 4,,10
	.p2align 3
L1101:
	subl	$1, %ebx
	jb	L1125
	movswl	%di, %ecx
L1103:
	movswl	_numsectors, %eax
	subl	$1, %eax
	cmpl	%eax, %ecx
	jl	L1129
L1099:
	testw	%si, %si
	jle	L1101
	leal	40(%esp), %eax
	subl	$1, %esi
	movl	_sector, %edx
	movl	%eax, 16(%esp)
	leal	36(%esp), %eax
	movl	%eax, 12(%esp)
	movl	68(%esp), %eax
	movl	%eax, 8(%esp)
	movl	64(%esp), %eax
	movl	%eax, 4(%esp)
	movzwl	%si, %eax
	leal	(%eax,%eax,4), %ecx
	movl	%eax, 24(%esp)
	leal	(%edx,%ecx,8), %edx
	movl	%edx, (%esp)
	call	_getzsofslopeptr
	cmpl	36(%esp), %ebp
	jl	L1101
	cmpl	40(%esp), %ebp
	jg	L1101
	cmpw	$4095, %si
	ja	L1101
	movl	24(%esp), %eax
	movl	%esi, %edx
	andl	$7, %edx
	sarl	$3, %eax
	movzbl	__ZL8pow2char.lto_priv.7(%edx), %edx
	movzbl	_updatesectorneighbormap(%eax), %ecx
	andl	%edx, %ecx
	cmpb	%cl, %dl
	je	L1101
	movl	68(%esp), %edx
	movl	64(%esp), %eax
	movswl	%si, %ecx
	call	_inside
	cmpl	$1, %eax
	jne	L1101
	movw	%si, 30(%esp)
	movl	44(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	48(%esp), %esi
	.cfi_restore 6
	jmp	L1096
	.p2align 4,,10
	.p2align 3
L1129:
	.cfi_restore_state
	leal	40(%esp), %eax
	addl	$1, %edi
	movl	%eax, 16(%esp)
	leal	36(%esp), %eax
	movswl	%di, %edx
	movl	%eax, 12(%esp)
	movl	68(%esp), %eax
	movl	%edx, 24(%esp)
	leal	(%edx,%edx,4), %edx
	movl	%eax, 8(%esp)
	movl	64(%esp), %eax
	movl	%eax, 4(%esp)
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	cmpl	36(%esp), %ebp
	jl	L1099
	cmpl	40(%esp), %ebp
	jg	L1099
	movl	24(%esp), %edx
	cmpl	$4095, %edx
	ja	L1099
	movl	%edi, %eax
	sarl	$3, %edx
	andl	$7, %eax
	movzbl	_updatesectorneighbormap(%edx), %ecx
	movzbl	__ZL8pow2char.lto_priv.7(%eax), %eax
	andl	%eax, %ecx
	cmpb	%cl, %al
	je	L1099
	movl	24(%esp), %ecx
	movl	68(%esp), %edx
	movl	64(%esp), %eax
	call	_inside
	cmpl	$1, %eax
	jne	L1099
L1126:
	movl	44(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	48(%esp), %esi
	.cfi_restore 6
	movw	%di, 30(%esp)
	jmp	L1096
	.p2align 4,,10
	.p2align 3
L1125:
	.cfi_restore_state
	movl	44(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	48(%esp), %esi
	.cfi_restore 6
	jmp	L1096
	.p2align 4,,10
	.p2align 3
L1128:
	.cfi_restore_state
	cmpl	40(%esp), %ebp
	jg	L1098
	cmpl	$4095, %ecx
	ja	L1098
	movl	%edi, %eax
	movl	%ecx, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.7(%eax), %eax
	movzbl	_updatesectorneighbormap(%edx), %ebx
	andl	%eax, %ebx
	cmpb	%bl, %al
	je	L1098
	movl	68(%esp), %edx
	movl	64(%esp), %eax
	call	_inside
	movl	24(%esp), %ecx
	cmpl	$1, %eax
	jne	L1098
	jmp	L1126
	.cfi_endproc
LFE47:
	.p2align 4
	.globl	_yax_getzsofslope
	.def	_yax_getzsofslope;	.scl	2;	.type	32;	.endef
_yax_getzsofslope:
LFB49:
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
	je	L1146
	testb	$2, 15(%eax)
	jne	L1139
L1132:
	movl	$0, 16(%esp)
	movl	$0, 20(%esp)
L1137:
	movl	%edi, %ecx
	movl	$-1, %eax
	jmp	L1140
	.p2align 4,,10
	.p2align 3
L1149:
	movl	%eax, %ecx
L1140:
	movl	$1, (%esp)
	movl	%eax, %ebp
	movl	%esi, %edx
	movl	%ebx, %eax
	call	_yax_getneighborsect
	testl	%eax, %eax
	jns	L1149
	cmpl	$-1, %ebp
	je	L1141
	leal	0(%ebp,%ebp,4), %eax
	sall	$3, %eax
	movl	%eax, 16(%esp)
L1142:
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
	je	L1157
	movl	28(%esp), %eax
	movl	%ebp, (%esp)
	movl	%eax, 8(%esp)
	movl	24(%esp), %eax
	movl	%eax, 4(%esp)
	call	_getflorzofslopeptr.part.0
L1144:
	movl	64(%esp), %edx
	movl	20(%esp), %ecx
	movl	$1, 16(%esp)
	movl	%eax, (%edx)
	testl	%ecx, %ecx
	je	L1151
L1130:
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
L1146:
	.cfi_restore_state
	movl	%edi, %ecx
	movl	$-1, %eax
	jmp	L1131
	.p2align 4,,10
	.p2align 3
L1147:
	movl	%eax, %ecx
L1131:
	movl	$0, (%esp)
	movl	%eax, %ebp
	movl	%esi, %edx
	movl	%ebx, %eax
	call	_yax_getneighborsect
	testl	%eax, %eax
	jns	L1147
	cmpl	$-1, %ebp
	je	L1134
	leal	0(%ebp,%ebp,4), %eax
	movl	$0, 16(%esp)
	sall	$3, %eax
	movl	%eax, 20(%esp)
L1133:
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
	je	L1158
	movl	36(%esp), %eax
	movl	%ebp, (%esp)
	movl	%eax, 8(%esp)
	movl	32(%esp), %eax
	movl	%eax, 4(%esp)
	call	_getceilzofslopeptr.part.0
L1136:
	movl	60(%esp), %edx
	movl	%eax, (%edx)
	movl	12(%esp), %edx
	movl	_sector, %eax
	testb	$2, 15(%eax,%edx)
	je	L1148
L1138:
	movl	16(%esp), %eax
	testl	%eax, %eax
	jne	L1130
	movl	12(%esp), %eax
	movl	$1, 20(%esp)
	movl	%edi, %ebp
	movl	%eax, 16(%esp)
	jmp	L1142
	.p2align 4,,10
	.p2align 3
L1134:
	movl	_sector, %eax
	movl	12(%esp), %edx
	testb	$2, 15(%eax,%edx)
	je	L1132
L1139:
	movl	12(%esp), %eax
	movl	$0, 16(%esp)
	movl	%edi, %ebp
	movl	%eax, 20(%esp)
	jmp	L1133
	.p2align 4,,10
	.p2align 3
L1148:
	movl	$1, 20(%esp)
	jmp	L1137
	.p2align 4,,10
	.p2align 3
L1141:
	movl	20(%esp), %edx
	testl	%edx, %edx
	jne	L1138
	.p2align 4
	.p2align 3
L1151:
	movl	12(%esp), %eax
	movl	%edi, %ebp
	movl	%eax, 20(%esp)
	jmp	L1133
	.p2align 4,,10
	.p2align 3
L1158:
	movl	4(%ebp), %eax
	jmp	L1136
	.p2align 4,,10
	.p2align 3
L1157:
	movl	8(%ebp), %eax
	jmp	L1144
	.cfi_endproc
LFE49:
	.p2align 4
	.globl	_yax_getbunch.part.0
	.def	_yax_getbunch.part.0;	.scl	2;	.type	32;	.endef
_yax_getbunch.part.0:
LFB50:
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
	je	L1161
	addl	$22, %ecx
	movl	%ecx, %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movzbl	(%ecx,%ebx,8), %eax
L1159:
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
L1161:
	.cfi_restore_state
	movl	$-1, %eax
	jmp	L1159
	.cfi_endproc
LFE50:
	.p2align 4
	.globl	_yax_setnextwall.part.0
	.def	_yax_setnextwall.part.0;	.scl	2;	.type	32;	.endef
_yax_setnextwall.part.0:
LFB51:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	cwtl
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	sall	$5, %eax
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movswl	%dx, %esi
	movl	%ecx, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	leal	10(%esi), %ecx
	movl	$1, %ebx
	movl	%esi, %edi
	sall	%cl, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	_wall, %ecx
	movl	%ebx, (%esp)
	leal	(%ecx,%eax), %ebx
	shrl	$5, %eax
	movl	_wallchanged(,%eax,4), %ecx
	leal	26(%ebx), %ebp
	leal	0(%ebp,%esi,4), %esi
	addl	$1, %ecx
	movl	%ecx, 4(%esp)
	movl	%ebp, %ecx
	subl	_wall, %ecx
	shrl	$5, %ecx
	testw	%dx, %dx
	js	L1164
	movl	4(%esp), %edi
	movl	%edi, _wallchanged(,%eax,4)
	movzwl	(%esp), %eax
	orw	%ax, 14(%ebx)
	movl	_wallchanged(,%ecx,4), %eax
	addl	$1, %eax
L1165:
	movl	%eax, _wallchanged(,%ecx,4)
	movw	%dx, (%esi)
	addl	$8, %esp
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
L1164:
	.cfi_restore_state
	movl	4(%esp), %edx
	movl	%edx, _wallchanged(,%eax,4)
	movl	(%esp), %eax
	notl	%eax
	andw	%ax, 14(%ebx)
	movl	_wallchanged(,%ecx,4), %eax
	negw	%di
	sbbl	%edx, %edx
	addl	$1, %eax
	jmp	L1165
	.cfi_endproc
LFE51:
	.p2align 4
	.globl	_setfirstwall
	.def	_setfirstwall;	.scl	2;	.type	32;	.endef
_setfirstwall:
LFB52:
	.cfi_startproc
	subl	$80, %esp
	.cfi_def_cfa_offset 84
	cwtl
	movl	%ebx, 64(%esp)
	.cfi_offset 3, -20
	leal	(%eax,%eax,4), %ebx
	movl	%eax, 36(%esp)
	movl	_sector, %eax
	sall	$3, %ebx
	movl	%esi, 68(%esp)
	addl	%ebx, %eax
	movl	%edi, 72(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movswl	(%eax), %edi
	movswl	2(%eax), %eax
	leal	(%edi,%eax), %ecx
	movw	%di, 56(%esp)
	movl	%edi, 28(%esp)
	movw	%ax, 20(%esp)
	movl	%eax, 40(%esp)
	movl	%ecx, 16(%esp)
	cmpw	%di, %dx
	jl	L1167
	movl	%ebp, 76(%esp)
	.cfi_offset 5, -8
	movswl	%dx, %ebp
	cmpl	%ecx, %ebp
	jl	L1214
	movl	76(%esp), %ebp
	.cfi_restore 5
L1167:
	movl	64(%esp), %ebx
	movl	68(%esp), %esi
	movl	72(%esp), %edi
	addl	$80, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1214:
	.cfi_def_cfa_offset 84
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	sall	$5, %eax
	movl	_g_sm_heap, %ecx
	movw	%dx, 58(%esp)
	movl	%eax, (%esp)
	movl	%eax, %esi
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 80
	subl	$4, %esp
	.cfi_def_cfa_offset 84
	movl	%eax, %ecx
	movl	%eax, 12(%esp)
	testl	%eax, %eax
	je	L1169
	movl	_wall, %eax
	sall	$5, %edi
	movl	%ecx, (%esp)
	movl	%esi, 8(%esp)
	addl	%edi, %eax
	movl	%edi, 48(%esp)
	movl	%eax, 4(%esp)
	call	_memcpy
	movl	%ebx, 24(%esp)
	movzwl	58(%esp), %ebx
	movl	%ebp, %ecx
	movl	_wall, %eax
	xorl	%edx, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L1170:
	sall	$5, %ecx
	movl	%edx, %edi
	addl	$1, %edx
	movswl	8(%eax,%ecx), %ecx
	cmpw	%bx, %cx
	jne	L1170
	movl	24(%esp), %ebx
	addl	_sector, %ebx
	movl	%edi, 52(%esp)
	movswl	2(%ebx), %esi
	movswl	(%ebx), %edi
	addl	%edi, %esi
	movl	%edi, 24(%esp)
	cmpl	%esi, %edi
	jge	L1176
	movl	%edi, %ecx
	xorl	%ebx, %ebx
	movl	%eax, %edi
	jmp	L1174
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1216:
	movl	%ecx, %eax
	sall	$5, %eax
	movswl	8(%edi,%eax), %eax
	cmpl	%ecx, %eax
	setl	%al
	addl	$1, %ecx
	movzbl	%al, %eax
	addl	%eax, %ebx
	cmpl	%ecx, %esi
	je	L1215
L1174:
	cmpl	%ecx, %ebp
	jne	L1216
	movl	%edi, %eax
	testl	%ebx, %ebx
	je	L1176
	movl	$0, 32(%esp)
	movzwl	56(%esp), %ebp
	movl	%edx, 60(%esp)
	movl	%ebx, 44(%esp)
	.p2align 4
	.p2align 3
L1175:
	movl	24(%esp), %edx
	movswl	%bp, %edi
	xorl	%ecx, %ecx
	jmp	L1179
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1217:
	movl	%edx, %ebx
	sall	$5, %ebx
	movswl	8(%eax,%ebx), %ebx
	cmpl	%edx, %ebx
	setl	%bl
	addl	$1, %edx
	movzbl	%bl, %ebx
	addl	%ebx, %ecx
	cmpl	%edx, %esi
	je	L1181
L1179:
	cmpl	%edx, %edi
	jne	L1217
	cmpl	%ecx, 44(%esp)
	je	L1218
L1181:
	addl	$1, 32(%esp)
	addl	$1, %ebp
	jmp	L1175
	.p2align 4,,10
	.p2align 3
L1218:
	movl	32(%esp), %ebx
	movl	40(%esp), %edi
	movl	60(%esp), %edx
	movl	%ebx, %esi
	testl	%edi, %edi
	jle	L1182
	movl	28(%esp), %ebp
	movl	%edi, %ecx
	movw	%bx, 40(%esp)
	movl	%edx, 44(%esp)
	subl	%ebp, %ecx
	movl	%edi, %ebp
	leal	(%edi,%ebx), %edi
	subl	%ebx, %ecx
	movl	%edi, 24(%esp)
	movl	48(%esp), %edi
	movw	%cx, 32(%esp)
	.p2align 4
	.p2align 3
L1185:
	xorl	%ecx, %ecx
	cmpl	%ebx, %ebp
	movl	%ebx, %edx
	movzwl	32(%esp), %esi
	cmovle	%ebp, %ecx
	subl	%ecx, %edx
	sall	$5, %edx
	addl	12(%esp), %edx
	movl	(%edx), %ecx
	movl	%ecx, (%eax,%edi)
	movl	4(%edx), %ecx
	movl	%ecx, 4(%eax,%edi)
	movl	8(%edx), %ecx
	movl	%ecx, 8(%eax,%edi)
	movl	12(%edx), %ecx
	movl	%ecx, 12(%eax,%edi)
	movl	16(%edx), %ecx
	movl	%ecx, 16(%eax,%edi)
	movl	20(%edx), %ecx
	movl	%ecx, 20(%eax,%edi)
	movl	24(%edx), %ecx
	movl	%ecx, 24(%eax,%edi)
	movl	28(%edx), %edx
	movl	%edx, 28(%eax,%edi)
	movl	_wall, %eax
	leal	8(%edi), %edx
	shrl	$5, %edx
	leal	(%eax,%edi), %ecx
	addl	$1, _wallchanged(,%edx,4)
	addw	8(%ecx), %si
	movw	%si, 8(%ecx)
	cmpw	%si, 20(%esp)
	jg	L1184
	addl	$1, _wallchanged(,%edx,4)
	movzwl	20(%esp), %esi
	subw	%si, 8(%ecx)
L1184:
	addl	$1, _wallchanged(,%edx,4)
	movzwl	56(%esp), %esi
	addl	$1, %ebx
	addl	$32, %edi
	addw	%si, 8(%ecx)
	cmpl	%ebx, 24(%esp)
	jne	L1185
	movzwl	40(%esp), %esi
	movl	44(%esp), %edx
L1182:
	movzwl	20(%esp), %edi
	movzwl	58(%esp), %ecx
	addl	%edi, %ecx
	subl	%esi, %ecx
	movswl	%cx, %ebp
	subl	%edi, %ecx
	cmpl	16(%esp), %ebp
	movswl	%cx, %ecx
	cmovge	%ecx, %ebp
L1176:
	movl	28(%esp), %edi
	movl	48(%esp), %esi
	movl	%edx, 24(%esp)
	movl	%ebp, 20(%esp)
	leal	1(%edi), %ebx
	movl	52(%esp), %edi
	addl	%ebx, %edi
	sall	$5, %edi
	movl	%edi, %ecx
	movl	12(%esp), %edi
	movl	%ecx, %ebp
	subl	%esi, %edi
	.p2align 4
	.p2align 3
L1186:
	addl	%esi, %eax
	movl	(%eax), %edx
	movl	%edx, (%edi,%esi)
	movl	4(%eax), %edx
	addl	$32, %esi
	movl	%edx, -28(%esi,%edi)
	movl	8(%eax), %edx
	movl	%edx, -24(%esi,%edi)
	movl	12(%eax), %edx
	movl	%edx, -20(%esi,%edi)
	movl	16(%eax), %edx
	movl	%edx, -16(%esi,%edi)
	movl	20(%eax), %edx
	movl	%edx, -12(%esi,%edi)
	movl	24(%eax), %edx
	movl	%edx, -8(%esi,%edi)
	movl	28(%eax), %eax
	movl	%eax, -4(%esi,%edi)
	movl	_wall, %eax
	cmpl	%esi, %ebp
	jne	L1186
	movl	24(%esp), %edx
	movl	20(%esp), %ebp
	movl	%ebx, 32(%esp)
	movl	28(%esp), %esi
	movl	52(%esp), %ecx
	movl	%edx, %edi
	subl	%ebp, %edi
	subl	%esi, %ecx
	movw	%di, 24(%esp)
	movl	%ebp, %edi
	subl	%esi, %edi
	leal	1(%ebp,%ecx), %esi
	movl	%esi, 20(%esp)
	movl	48(%esp), %esi
	.p2align 4
	.p2align 3
L1189:
	xorl	%ebx, %ebx
	cmpl	%edi, %edx
	movl	%edi, %ecx
	movzwl	24(%esp), %ebp
	cmovle	%edx, %ebx
	subl	%ebx, %ecx
	sall	$5, %ecx
	addl	12(%esp), %ecx
	movl	(%ecx), %ebx
	movl	%ebx, (%eax,%esi)
	movl	4(%ecx), %ebx
	movl	%ebx, 4(%eax,%esi)
	movl	8(%ecx), %ebx
	movl	%ebx, 8(%eax,%esi)
	movl	12(%ecx), %ebx
	movl	%ebx, 12(%eax,%esi)
	movl	16(%ecx), %ebx
	movl	%ebx, 16(%eax,%esi)
	movl	20(%ecx), %ebx
	movl	%ebx, 20(%eax,%esi)
	movl	24(%ecx), %ebx
	movl	%ebx, 24(%eax,%esi)
	movl	28(%ecx), %ecx
	movl	%ecx, 28(%eax,%esi)
	movl	_wall, %eax
	leal	8(%esi), %ecx
	shrl	$5, %ecx
	leal	(%eax,%esi), %ebx
	addl	$1, _wallchanged(,%ecx,4)
	addw	8(%ebx), %bp
	movw	%bp, 8(%ebx)
	movswl	%bp, %ebp
	cmpl	%edx, %ebp
	jl	L1188
	addl	$1, _wallchanged(,%ecx,4)
	subw	%dx, 8(%ebx)
L1188:
	addl	$1, _wallchanged(,%ecx,4)
	addl	$1, %edi
	addl	$32, %esi
	movzwl	56(%esp), %ecx
	addw	%cx, 8(%ebx)
	cmpl	%edi, 20(%esp)
	jne	L1189
	movl	28(%esp), %edi
	movl	16(%esp), %esi
	movl	32(%esp), %ebx
	cmpl	%esi, %edi
	jge	L1190
	movl	%edi, %ecx
	.p2align 6
	.p2align 4
	.p2align 3
L1192:
	movl	%ecx, %edx
	sall	$5, %edx
	movswl	10(%eax,%edx), %edx
	testw	%dx, %dx
	js	L1191
	movl	%edx, %edi
	andl	$134217727, %edx
	sall	$5, %edi
	addl	$1, _wallchanged(,%edx,4)
	movw	%cx, 10(%eax,%edi)
L1191:
	addl	$1, %ecx
	cmpl	%ecx, %esi
	jne	L1192
	movl	36(%esp), %edi
	movl	%edi, %eax
	call	_yax_getbunch.constprop.1
	movl	%eax, %esi
	movl	%edi, %eax
	call	_yax_getbunch.constprop.0
	testw	%ax, %si
	js	L1193
	movl	28(%esp), %ebp
	jmp	L1198
	.p2align 4,,10
	.p2align 3
L1194:
	movswl	%di, %eax
	call	_yax_getnextwall.constprop.0
	testw	%ax, %ax
	jns	L1219
L1196:
	movl	%ebx, %ebp
	cmpl	%ebx, 16(%esp)
	je	L1193
L1222:
	addl	$1, %ebx
L1198:
	xorl	%edx, %edx
	movswl	%bp, %eax
	movl	%ebp, %edi
	call	_yax_getnextwall
	testw	%ax, %ax
	js	L1194
	cwtl
	cmpw	$0, _editstatus
	je	L1220
	movswl	%bp, %ecx
	movl	$1, %edx
	call	_yax_setnextwall.part.0
	movswl	%di, %eax
	call	_yax_getnextwall.constprop.0
	testw	%ax, %ax
	js	L1196
L1219:
	cwtl
	cmpw	$0, _editstatus
	je	L1221
	movswl	%di, %ecx
	xorl	%edx, %edx
	movl	%ebx, %ebp
	call	_yax_setnextwall.part.0
	cmpl	%ebx, 16(%esp)
	jne	L1222
L1193:
	movl	12(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 80
	subl	$4, %esp
	.cfi_def_cfa_offset 84
	movl	76(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	movl	64(%esp), %ebx
	movl	68(%esp), %esi
	movl	72(%esp), %edi
	addl	$80, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1220:
	.cfi_restore_state
	movw	%bp, _yax_nextwall+2(,%eax,4)
	jmp	L1194
	.p2align 4,,10
	.p2align 3
L1221:
	movw	%di, _yax_nextwall(,%eax,4)
	jmp	L1196
L1215:
	movl	%edi, %eax
	jmp	L1176
L1169:
	movl	%esi, %eax
	call	__Z13handle_memerri
L1190:
	movl	36(%esp), %edi
	movl	%edi, %eax
	call	_yax_getbunch.constprop.1
	movl	%edi, %eax
	call	_yax_getbunch.constprop.0
	jmp	L1193
	.cfi_endproc
LFE52:
	.p2align 4
	.globl	_yax_setbunch.part.0
	.def	_yax_setbunch.part.0;	.scl	2;	.type	32;	.endef
_yax_setbunch.part.0:
LFB55:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	cwtl
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -20
	leal	(%eax,%eax,4), %ebx
	movl	%edi, 12(%esp)
	.cfi_offset 7, -12
	movl	%ecx, %edi
	movl	_sector, %ecx
	sall	$3, %ebx
	movl	%esi, 8(%esp)
	.cfi_offset 6, -16
	movswl	%dx, %esi
	leal	(%ecx,%ebx), %eax
	testw	%di, %di
	js	L1238
	movl	%ebp, 16(%esp)
	.cfi_offset 5, -8
	leal	12(%eax), %ebp
	movl	%ebp, %edx
	subl	%ecx, %edx
	movl	$-858993459, %ecx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	orw	$1024, 0(%ebp,%esi,2)
	movl	_sector, %eax
	leal	22(%eax,%ebx), %ebp
	leal	22(%ebx), %eax
	mull	%ecx
	movl	%edi, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movb	%al, 0(%ebp,%esi,8)
	movl	16(%esp), %ebp
	.cfi_restore 5
	movl	4(%esp), %ebx
	movl	8(%esp), %esi
	movl	12(%esp), %edi
	addl	$20, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1238:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpw	$-2, %di
	jl	L1226
	cmpw	$0, 2(%eax)
	jle	L1226
	cmpw	$-1, %di
	movl	%ebp, 16(%esp)
	.cfi_offset 5, -8
	movswl	(%eax), %edi
	je	L1228
	.p2align 4
	.p2align 3
L1230:
	movswl	%di, %ebp
	movl	%esi, %edx
	movl	%ebp, %eax
	call	_yax_getnextwall
	testw	%ax, %ax
	js	L1229
	movl	%esi, %edx
	movl	%ebp, %eax
	call	_yax_setnextwall.constprop.0
L1229:
	movl	_sector, %ecx
	addl	$1, %edi
	leal	(%ecx,%ebx), %eax
	movswl	2(%eax), %edx
	movswl	(%eax), %ebp
	addl	%ebp, %edx
	cmpl	%edi, %edx
	jg	L1230
L1237:
	movl	16(%esp), %ebp
	.cfi_restore 5
L1226:
	leal	12(%eax), %ebx
	movl	$-858993459, %eax
	movl	%ebx, %edx
	subl	%ecx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	andw	$-1025, (%ebx,%esi,2)
	movl	4(%esp), %ebx
	movl	8(%esp), %esi
	movl	12(%esp), %edi
	addl	$20, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1228:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	xorl	%eax, %eax
	testw	%dx, %dx
	sete	%al
	movl	%eax, (%esp)
	.p2align 4
	.p2align 3
L1232:
	movswl	%di, %ebp
	movl	%esi, %edx
	movl	%ebp, %eax
	call	_yax_getnextwall
	testw	%ax, %ax
	js	L1231
	movl	(%esp), %edx
	cwtl
	call	_yax_setnextwall.constprop.0
	movl	%esi, %edx
	movl	%ebp, %eax
	call	_yax_setnextwall.constprop.0
L1231:
	movl	_sector, %ecx
	addl	$1, %edi
	leal	(%ecx,%ebx), %eax
	movswl	(%eax), %edx
	movswl	2(%eax), %ebp
	addl	%ebp, %edx
	cmpl	%edx, %edi
	jl	L1232
	jmp	L1237
	.cfi_endproc
LFE55:
	.section .rdata,"dr"
LC5:
	.ascii "!!numscans\0"
LC6:
	.ascii "source/build/src/engine.cpp\0"
	.text
	.p2align 4
	.globl	__ZL17classicScanSectors.part.0.lto_priv.0
	.def	__ZL17classicScanSectors.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL17classicScanSectors.part.0.lto_priv.0:
LFB56:
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
	subl	$120, %esp
	.cfi_def_cfa_offset 140
	movl	$1, 80(%esp)
L1271:
	subl	$1, 80(%esp)
	movl	80(%esp), %eax
	movl	_scansector_collectsprites, %ecx
	movswl	_sectorborder(%eax,%eax), %eax
	movw	%ax, 84(%esp)
	movl	%eax, 16(%esp)
	testl	%ecx, %ecx
	jne	L1296
L1240:
	movl	16(%esp), %ecx
	movl	84(%esp), %edx
	movl	%ecx, %eax
	andl	$7, %edx
	sarl	$3, %eax
	movzbl	__ZL8pow2char.lto_priv.7(%edx), %edx
	orb	%dl, _gotsector(%eax)
	movl	_sector, %eax
	leal	(%ecx,%ecx,4), %edx
	leal	(%eax,%edx,8), %eax
	movswl	(%eax), %ebp
	movswl	2(%eax), %eax
	addl	%ebp, %eax
	movl	%ebp, 68(%esp)
	movl	%eax, 72(%esp)
	cmpl	%eax, %ebp
	jge	L1246
	movswl	_numscans, %ebx
	movzwl	_numbunches, %eax
	movl	%ebp, 16(%esp)
	movl	$0, 64(%esp)
	movl	_wall, %ecx
	movw	%ax, 100(%esp)
	movl	%ebx, 76(%esp)
	movl	$0, 60(%esp)
	movl	%ebx, 88(%esp)
	jmp	L1260
	.p2align 4,,10
	.p2align 3
L1251:
	movl	%ebp, %esi
	movl	20(%esp), %eax
	movl	36(%esp), %edx
	subl	%edi, %esi
	movl	40(%esp), %edi
/APP
 # 1708 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	44(%esp), %edx
	movl	20(%esp), %esi
	movl	%eax, 24(%esp)
	movl	%ecx, %edi
	movl	56(%esp), %eax
/APP
 # 1709 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 20(%esp)
L1252:
	movl	24(%esp), %eax
	movl	%ebp, %esi
	movl	36(%esp), %edx
	movl	40(%esp), %edi
	subl	52(%esp), %esi
	movl	%eax, 112(%esp)
	movl	20(%esp), %eax
	movl	%eax, 116(%esp)
	movl	28(%esp), %eax
/APP
 # 1708 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	44(%esp), %edx
	movl	28(%esp), %esi
	movl	%eax, 36(%esp)
	movl	%ecx, %edi
	movl	%eax, 60(%esp)
	movl	48(%esp), %eax
/APP
 # 1709 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 64(%esp)
	movl	%eax, %ebp
	cmpl	$255, %eax
	jg	L1275
	cmpl	$255, 20(%esp)
	jle	L1253
L1275:
	movl	36(%esp), %esi
	movl	24(%esp), %eax
	movl	%ebp, %edx
	movl	20(%esp), %edi
	negl	%esi
/APP
 # 1888 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx
 # 0 "" 2
/NO_APP
	testl	%edx, %edx
	jns	L1253
	movswl	_numscans, %eax
	cmpw	$8190, %ax
	jg	L1297
	sall	$2, %eax
	movl	36(%esp), %edi
	movl	%ebp, 108(%esp)
	leal	__ZL3yb2.lto_priv.0(%eax), %edx
	leal	_xb1(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	__ZL3xb2.lto_priv.0(%eax), %edx
	addl	$__ZL3yb1.lto_priv.0, %eax
	movl	%edx, 4(%esp)
	leal	104(%esp), %edx
	movl	%eax, (%esp)
	leal	112(%esp), %eax
	movl	%edi, 104(%esp)
	call	__ZL17get_screen_coordsRK4vec2IiES2_PiS3_S3_S3_.lto_priv.0
	testl	%eax, %eax
	je	L1253
	movswl	_numscans, %eax
	movzwl	84(%esp), %ecx
	movw	%cx, _thesector(%eax,%eax)
	movzwl	16(%esp), %ecx
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edi, __ZL3rx2.lto_priv.0(,%eax,4)
	movw	%cx, _thewall(%eax,%eax)
	movl	24(%esp), %ecx
	movl	%ebp, __ZL3ry2.lto_priv.0(,%eax,4)
	movl	%ecx, _rx1(,%eax,4)
	movl	20(%esp), %ecx
	movw	%dx, _bunchp2(%eax,%eax)
	movl	%ecx, _ry1(,%eax,4)
	movw	%dx, _numscans
L1253:
	movl	_wall, %ecx
	movl	32(%esp), %eax
	movswl	8(%ecx,%eax), %eax
	cmpl	16(%esp), %eax
	jge	L1258
	movswl	_numscans, %eax
	movl	76(%esp), %edi
	cmpl	%edi, %eax
	jle	L1258
	movw	%di, _bunchp2-2(%eax,%eax)
	movl	%eax, 76(%esp)
L1258:
	addl	$1, 16(%esp)
	movl	16(%esp), %eax
	cmpl	%eax, 72(%esp)
	je	L1298
L1260:
	movl	16(%esp), %eax
	movl	_globalposx, %ebp
	sall	$5, %eax
	movl	%eax, 32(%esp)
	addl	%ecx, %eax
	movswl	12(%eax), %ebx
	movl	(%eax), %edi
	movswl	8(%eax), %edx
	movl	%ebx, 24(%esp)
	movl	%ebx, %esi
	movl	%edi, %ebx
	sall	$5, %edx
	subl	%ebp, %ebx
	addl	%edx, %ecx
	movl	%ebx, 56(%esp)
	movl	_globalposy, %edx
	movl	4(%eax), %ebx
	movl	%ebx, 36(%esp)
	subl	%edx, %ebx
	movl	%ebx, 20(%esp)
	movl	(%ecx), %ebx
	movl	4(%ecx), %ecx
	movl	%ebx, 52(%esp)
	subl	%ebp, %ebx
	movl	%ebx, 48(%esp)
	movl	%ecx, %ebx
	subl	%edx, %ebx
	movl	24(%esp), %edx
	movl	%ebx, 28(%esp)
	testl	%edx, %edx
	js	L1250
	testb	$32, 14(%eax)
	jne	L1250
	cmpl	$255, 80(%esp)
	jle	L1299
L1250:
	movl	_cosglobalang, %eax
	movl	_sinviewingrangeglobalang, %ecx
	movl	16(%esp), %esi
	movl	%eax, 36(%esp)
	movl	_singlobalang, %eax
	movl	%eax, 40(%esp)
	movl	_cosviewingrangeglobalang, %eax
	movl	%eax, 44(%esp)
	cmpl	%esi, 68(%esp)
	je	L1251
	movl	_wall, %eax
	movl	32(%esp), %ebx
	movswl	-24(%eax,%ebx), %eax
	cmpl	%esi, %eax
	jne	L1251
	movl	64(%esp), %eax
	movl	%eax, 20(%esp)
	movl	60(%esp), %eax
	movl	%eax, 24(%esp)
	jmp	L1252
	.p2align 4,,10
	.p2align 3
L1299:
	movl	_yax_nomaskpass, %eax
	testl	%eax, %eax
	jne	L1300
L1248:
	movswl	%si, %eax
	sarl	$3, %eax
	movzbl	_gotsector(%eax), %edx
	movl	%eax, 44(%esp)
	movl	%esi, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.7(%eax), %ebx
	movl	%edx, %eax
	movb	%dl, 24(%esp)
	notl	%eax
	movb	%bl, 40(%esp)
	testb	%al, %bl
	je	L1250
	cmpl	$8, _yax_globallev
	jne	L1250
	movl	56(%esp), %eax
	imull	28(%esp)
	movw	%si, 102(%esp)
	movl	%eax, 92(%esp)
	movl	48(%esp), %eax
	movl	%edx, 96(%esp)
	imull	20(%esp)
	movl	92(%esp), %ebx
	movl	96(%esp), %esi
	subl	%eax, %ebx
	movl	%ebx, 92(%esp)
	movl	92(%esp), %eax
	sbbl	%edx, %esi
	movl	%esi, 96(%esp)
	cltd
	addl	$262144, %eax
	movl	%eax, %ebx
	movl	$524287, %eax
	adcl	$0, %edx
	cmpl	%ebx, %eax
	movl	$0, %eax
	sbbl	%edx, %eax
	jc	L1250
	movl	92(%esp), %ebx
	movl	%ebx, %eax
	movl	%ebx, %edx
/APP
 # 1874 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $5, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 92(%esp)
	movl	52(%esp), %eax
	subl	36(%esp), %ecx
	subl	%edi, %eax
	movl	%ecx, %edx
	imull	%eax, %eax
	imull	%ecx, %edx
	addl	%edx, %eax
	cmpl	%eax, 92(%esp)
	jg	L1250
	movl	80(%esp), %ecx
	movl	44(%esp), %ebx
	movzwl	102(%esp), %esi
	movzbl	24(%esp), %eax
	orb	40(%esp), %al
	movb	%al, _gotsector(%ebx)
	leal	1(%ecx), %eax
	movw	%si, _sectorborder(%ecx,%ecx)
	movl	%eax, 80(%esp)
	jmp	L1250
	.p2align 4,,10
	.p2align 3
L1302:
	movl	24(%esp), %esi
	cmpb	$0, 20(%esp)
	je	L1274
	movw	%bx, _numbunches
L1266:
	movswl	%bx, %ebx
L1262:
	cmpl	%ebx, %esi
	jge	L1246
	.p2align 4
	.p2align 3
L1267:
	movswl	_bunchfirst+0(%esi,%esi), %eax
	movl	%eax, %edx
	movzwl	_bunchp2(%eax,%eax), %eax
	testw	%ax, %ax
	js	L1268
	.p2align 4
	.p2align 4
	.p2align 3
L1269:
	cwtl
	movl	%eax, %edx
	movzwl	_bunchp2(%eax,%eax), %eax
	testw	%ax, %ax
	jns	L1269
L1268:
	movw	%dx, _bunchlast+0(%esi,%esi)
	addl	$1, %esi
	cmpl	%ebx, %esi
	jne	L1267
L1246:
	movl	80(%esp), %eax
	testl	%eax, %eax
	jg	L1271
L1239:
	addl	$120, %esp
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
L1298:
	.cfi_restore_state
	movl	88(%esp), %ebx
	movswl	_numscans, %ebp
	movswl	100(%esp), %esi
	movzwl	_numbunches, %edi
	cmpl	%ebp, %ebx
	jge	L1301
	movl	%ebx, %edx
	movb	$0, 20(%esp)
	movl	%edi, %ebx
	movl	%esi, 24(%esp)
	movw	%di, 28(%esp)
	movl	%ebp, 16(%esp)
	jmp	L1265
	.p2align 4,,10
	.p2align 3
L1263:
	movswl	%bx, %eax
	movb	$1, 20(%esp)
	addl	$1, %ebx
	movw	%si, _bunchfirst(%eax,%eax)
	movl	$-1, %esi
	movw	%si, _bunchp2(%edx,%edx)
L1264:
	addl	$1, %edx
	cmpl	16(%esp), %edx
	je	L1302
L1265:
	movswl	_thewall(%edx,%edx), %eax
	movswl	_bunchp2(%edx,%edx), %edi
	sall	$5, %eax
	movzwl	_thewall(%edi,%edi), %ebp
	movl	%edi, %esi
	cmpw	%bp, 8(%ecx,%eax)
	jne	L1263
	movl	_xb1(,%edi,4), %eax
	cmpl	%eax, __ZL3xb2.lto_priv.0(,%edx,4)
	jl	L1264
	jmp	L1263
	.p2align 4,,10
	.p2align 3
L1300:
	movl	_yax_globalcf, %eax
	xorl	%edx, %edx
	movl	%ecx, 24(%esp)
	testl	%eax, %eax
	movswl	16(%esp), %eax
	sete	%dl
	call	_yax_getnextwall
	movl	24(%esp), %ecx
	testw	%ax, %ax
	js	L1248
	cwtl
	sall	$5, %eax
	addl	_wall, %eax
	cmpw	$0, 12(%eax)
	js	L1248
	movl	$1, _yax_nomaskdidit
	jmp	L1250
L1297:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1239
	movl	$LC5, 12(%esp)
	movl	$1893, 8(%esp)
	movl	$LC6, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	addl	$120, %esp
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
L1296:
	.cfi_restore_state
	movswl	_headspritesect(%eax,%eax), %ebp
	testl	%ebp, %ebp
	jns	L1245
	jmp	L1240
	.p2align 4,,10
	.p2align 3
L1241:
	cmpb	$0, 20(%eax)
	je	L1242
	cmpb	$0, 21(%eax)
	je	L1242
	movl	(%eax), %ecx
	movl	_globalposx, %edx
	movl	4(%eax), %esi
	movl	_globalposy, %edi
	testb	$48, %bl
	jne	L1243
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
	jge	L1242
L1244:
	movl	16(%esp), %edx
	movswl	%bp, %eax
	call	_renderAddTsprite
	testl	%eax, %eax
	jne	L1240
L1242:
	movswl	_nextspritesect(%ebp,%ebp), %ebp
	testl	%ebp, %ebp
	js	L1240
L1245:
	imull	$44, %ebp, %eax
	addl	_sprite, %eax
	movzwl	12(%eax), %ebx
	testw	%bx, %bx
	jns	L1241
	cmpb	$0, _showinvisibility
	jne	L1241
	jmp	L1242
	.p2align 4,,10
	.p2align 3
L1243:
	andl	$112, %ebx
	cmpw	$80, %bx
	jne	L1244
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
	jg	L1244
	jmp	L1242
L1274:
	movzwl	28(%esp), %ebx
	jmp	L1266
L1301:
	movswl	%di, %ebx
	jmp	L1262
	.cfi_endproc
LFE56:
	.p2align 4
	.globl	_rotatesprite_.part.0.constprop.0
	.def	_rotatesprite_.part.0.constprop.0;	.scl	2;	.type	32;	.endef
_rotatesprite_.part.0.constprop.0:
LFB59:
	.cfi_startproc
	subl	$84, %esp
	.cfi_def_cfa_offset 88
	movl	%esi, 72(%esp)
	.cfi_offset 6, -16
	movzwl	92(%esp), %esi
	cmpl	$16, %ecx
	jle	L1303
	movl	%ebx, 68(%esp)
	.cfi_offset 3, -20
	movswl	%si, %ebx
	movl	%edi, 76(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	movl	%ebp, 80(%esp)
	.cfi_offset 5, -8
	movl	%edx, %ebp
	movl	%ecx, 48(%esp)
	cmpb	$63, _picanm+3(%ebx,%ebx,4)
	jbe	L1305
	movl	%ebx, %eax
	call	_animateoffs
	addl	%eax, %esi
	movswl	%si, %ebx
L1305:
	testb	$16, _globalorientation+1
	je	L1307
	movswl	_rottile(,%ebx,4), %edx
	cmpw	$-1, %dx
	cmovne	%edx, %ebx
	cmovne	%edx, %esi
L1307:
	cmpw	$0, _tilesiz(,%ebx,4)
	jle	L1396
	cmpw	$0, _tilesiz+2(,%ebx,4)
	jle	L1396
	movl	104(%esp), %edx
	andl	$64, %edx
	movl	%edx, 52(%esp)
	testb	$-128, 104(%esp)
	je	L1309
	cmpl	$4, _rendmode
	je	L1309
	movl	_numpages, %eax
	movl	%eax, 56(%esp)
	cmpl	$1, %eax
	jle	L1310
	movl	__ZL15beforedrawrooms.lto_priv.0, %ecx
	movl	%ecx, 64(%esp)
	testl	%ecx, %ecx
	je	L1398
L1310:
	call	_videoBeginDrawing
	movl	_guniqhudid, %eax
	movl	48(%esp), %ecx
	movl	%ebp, %edx
	movl	$0, 24(%esp)
	movl	%eax, 44(%esp)
	movl	124(%esp), %eax
	movl	%eax, 40(%esp)
	movl	120(%esp), %eax
	movl	%eax, 36(%esp)
	movl	116(%esp), %eax
	movl	%eax, 32(%esp)
	movl	112(%esp), %eax
	movl	%eax, 28(%esp)
	movzbl	108(%esp), %eax
	movl	%eax, 20(%esp)
	movl	104(%esp), %eax
	movl	%eax, 16(%esp)
	movzbl	100(%esp), %eax
	movl	%eax, 12(%esp)
	movsbl	96(%esp), %eax
	movl	%eax, 8(%esp)
	movswl	%si, %eax
	movl	%eax, 4(%esp)
	movswl	88(%esp), %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__ZL14dorotatespriteiiissacihhiiiii.lto_priv.0
	call	_videoEndDrawing
	movl	52(%esp), %eax
	testl	%eax, %eax
	jne	L1332
	movl	_numpages, %eax
	movl	%eax, 56(%esp)
L1333:
	cmpl	$1, 56(%esp)
	jle	L1396
	movl	__ZL15beforedrawrooms.lto_priv.0, %eax
	movl	%eax, 64(%esp)
L1311:
	movl	__ZL8permhead.lto_priv.0, %eax
	movzbl	56(%esp), %ecx
	imull	$44, %eax, %edx
	movl	%eax, 60(%esp)
	movl	48(%esp), %eax
	movl	%eax, __ZL8permfifo.lto_priv.0+8(%edx)
	movzwl	88(%esp), %eax
	movw	%si, __ZL8permfifo.lto_priv.0+14(%edx)
	movzbl	64(%esp), %esi
	movw	%ax, __ZL8permfifo.lto_priv.0+12(%edx)
	movzbl	96(%esp), %eax
	sall	$7, %esi
	movl	%edi, __ZL8permfifo.lto_priv.0(%edx)
	movb	%al, __ZL8permfifo.lto_priv.0+16(%edx)
	movzbl	100(%esp), %eax
	addl	%esi, %ecx
	movb	%cl, __ZL8permfifo.lto_priv.0+21(%edx)
	movl	_guniqhudid, %ecx
	movb	%al, __ZL8permfifo.lto_priv.0+17(%edx)
	movzbl	104(%esp), %eax
	movl	%ecx, __ZL8permfifo.lto_priv.0+40(%edx)
	movl	52(%esp), %ecx
	movb	%al, __ZL8permfifo.lto_priv.0+18(%edx)
	movzbl	108(%esp), %eax
	movl	%ebp, __ZL8permfifo.lto_priv.0+4(%edx)
	movb	%al, __ZL8permfifo.lto_priv.0+19(%edx)
	movl	112(%esp), %eax
	movb	$0, __ZL8permfifo.lto_priv.0+20(%edx)
	movl	%eax, __ZL8permfifo.lto_priv.0+24(%edx)
	movl	116(%esp), %eax
	movl	%eax, __ZL8permfifo.lto_priv.0+28(%edx)
	movl	120(%esp), %eax
	movl	%eax, __ZL8permfifo.lto_priv.0+32(%edx)
	movl	124(%esp), %eax
	movl	%eax, __ZL8permfifo.lto_priv.0+36(%edx)
	testl	%ecx, %ecx
	je	L1324
	movl	__ZL8permtail.lto_priv.0, %eax
	movl	60(%esp), %esi
	movl	%eax, 56(%esp)
	cmpl	%eax, %esi
	je	L1324
	movl	%ebp, 52(%esp)
	movl	%eax, %edx
	movl	%esi, %eax
	.p2align 4
	.p2align 3
L1326:
	imull	$44, %edx, %ecx
	leal	__ZL8permfifo.lto_priv.0(%ecx), %esi
	testb	$127, __ZL8permfifo.lto_priv.0+21(%ecx)
	je	L1325
	cmpl	__ZL8permfifo.lto_priv.0(%ecx), %edi
	jne	L1325
	movl	52(%esp), %ecx
	cmpl	4(%esi), %ecx
	jne	L1325
	movl	48(%esp), %ecx
	cmpl	8(%esi), %ecx
	jne	L1325
	movzwl	12(%esi), %ecx
	cmpw	%cx, 88(%esp)
	jne	L1325
	movswl	14(%esi), %ecx
	movzwl	_tilesiz(,%ebx,4), %ebp
	cmpw	%bp, _tilesiz(,%ecx,4)
	jg	L1325
	movzwl	_tilesiz+2(,%ebx,4), %ebp
	cmpw	%bp, _tilesiz+2(,%ecx,4)
	jg	L1325
	movl	24(%esi), %ecx
	cmpl	%ecx, 112(%esp)
	jg	L1325
	movl	28(%esi), %ecx
	cmpl	%ecx, 116(%esp)
	jg	L1325
	movl	32(%esi), %esi
	cmpl	%esi, 120(%esp)
	jl	L1325
	imull	$44, %edx, %ecx
	leal	__ZL8permfifo.lto_priv.0(%ecx), %esi
	movl	__ZL8permfifo.lto_priv.0+36(%ecx), %ecx
	cmpl	%ecx, 124(%esp)
	jl	L1325
	movb	$0, 21(%esi)
	.p2align 4
	.p2align 3
L1325:
	addl	$1, %edx
	andl	$511, %edx
	cmpl	%edx, %eax
	jne	L1326
	movl	%eax, 60(%esp)
	movl	52(%esp), %ebp
	cmpw	$0, 88(%esp)
	jne	L1324
	cmpl	$65536, 48(%esp)
	jne	L1324
	movl	%ebx, 52(%esp)
	movl	56(%esp), %edx
	movl	%edi, 48(%esp)
	.p2align 4
	.p2align 3
L1328:
	imull	$44, %edx, %esi
	leal	__ZL8permfifo.lto_priv.0(%esi), %ecx
	testb	$127, __ZL8permfifo.lto_priv.0+21(%esi)
	je	L1327
	cmpl	$65536, __ZL8permfifo.lto_priv.0+8(%esi)
	jne	L1327
	cmpw	$0, __ZL8permfifo.lto_priv.0+12(%esi)
	jne	L1327
	movl	__ZL8permfifo.lto_priv.0+24(%esi), %edi
	cmpl	%edi, 112(%esp)
	jg	L1327
	movl	__ZL8permfifo.lto_priv.0+28(%esi), %edi
	cmpl	%edi, 116(%esp)
	jg	L1327
	movl	__ZL8permfifo.lto_priv.0+32(%esi), %edi
	cmpl	%edi, 120(%esp)
	jl	L1327
	movl	__ZL8permfifo.lto_priv.0+36(%esi), %edi
	cmpl	%edi, 124(%esp)
	jl	L1327
	movl	48(%esp), %edi
	movswl	__ZL8permfifo.lto_priv.0+2(%esi), %esi
	sarl	$16, %edi
	cmpl	%edi, %esi
	jl	L1327
	movswl	6(%ecx), %ebx
	movl	%ebx, 56(%esp)
	movl	%ebp, %ebx
	sarl	$16, %ebx
	movl	%ebx, 60(%esp)
	cmpl	%ebx, 56(%esp)
	jl	L1327
	movswl	14(%ecx), %ecx
	movl	%ecx, %ebx
	movswl	_tilesiz(,%ecx,4), %ecx
	addl	%ecx, %esi
	movl	52(%esp), %ecx
	movswl	_tilesiz(,%ecx,4), %ecx
	addl	%edi, %ecx
	cmpl	%ecx, %esi
	jg	L1327
	movl	52(%esp), %edi
	movswl	_tilesiz+2(,%ebx,4), %esi
	addl	56(%esp), %esi
	movswl	_tilesiz+2(,%edi,4), %ecx
	addl	60(%esp), %ecx
	cmpl	%ecx, %esi
	jg	L1327
	imull	$44, %edx, %ecx
	movb	$0, __ZL8permfifo.lto_priv.0+21(%ecx)
	.p2align 4
	.p2align 3
L1327:
	addl	$1, %edx
	andl	$511, %edx
	cmpl	%edx, %eax
	jne	L1328
	movl	%eax, 60(%esp)
L1324:
	movl	60(%esp), %eax
	movl	68(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	76(%esp), %edi
	.cfi_restore 7
	movl	80(%esp), %ebp
	.cfi_restore 5
	addl	$1, %eax
	movl	72(%esp), %esi
	andl	$511, %eax
	movl	%eax, __ZL8permhead.lto_priv.0
	addl	$84, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1309:
	.cfi_restore_state
	call	_videoBeginDrawing
	movl	_guniqhudid, %eax
	movl	48(%esp), %ecx
	movl	%ebp, %edx
	movl	$0, 24(%esp)
	movl	%eax, 44(%esp)
	movl	124(%esp), %eax
	movl	%eax, 40(%esp)
	movl	120(%esp), %eax
	movl	%eax, 36(%esp)
	movl	116(%esp), %eax
	movl	%eax, 32(%esp)
	movl	112(%esp), %eax
	movl	%eax, 28(%esp)
	movzbl	108(%esp), %eax
	movl	%eax, 20(%esp)
	movl	104(%esp), %eax
	movl	%eax, 16(%esp)
	movzbl	100(%esp), %eax
	movl	%eax, 12(%esp)
	movsbl	96(%esp), %eax
	movl	%eax, 8(%esp)
	movswl	%si, %eax
	movl	%eax, 4(%esp)
	movswl	88(%esp), %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__ZL14dorotatespriteiiissacihhiiiii.lto_priv.0
	call	_videoEndDrawing
	movl	52(%esp), %edx
	testl	%edx, %edx
	je	L1396
	movl	116(%esp), %eax
	testl	%eax, %eax
	movl	112(%esp), %eax
	setle	%dl
	testl	%eax, %eax
	setle	%al
	andb	%al, %dl
	jne	L1317
	.p2align 4
	.p2align 3
L1396:
	movl	68(%esp), %ebx
	.cfi_restore 3
	movl	76(%esp), %edi
	.cfi_restore 7
	movl	80(%esp), %ebp
	.cfi_restore 5
L1303:
	movl	72(%esp), %esi
	addl	$84, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1332:
	.cfi_def_cfa_offset 88
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	112(%esp), %eax
	testl	%eax, %eax
	jg	L1397
	movl	116(%esp), %eax
	testl	%eax, %eax
	jg	L1397
	movl	_xdim, %eax
	subl	$1, %eax
	cmpl	%eax, 120(%esp)
	jge	L1336
L1397:
	movl	_numpages, %eax
L1316:
	movl	%eax, 56(%esp)
	movl	$64, 52(%esp)
	jmp	L1333
	.p2align 4,,10
	.p2align 3
L1317:
	movl	_xdim, %eax
	subl	$1, %eax
	cmpl	%eax, 120(%esp)
	jl	L1396
	movl	_ydim, %eax
	subl	$1, %eax
	cmpl	%eax, 124(%esp)
	jl	L1396
L1318:
	cmpl	$10485760, %edi
	jne	L1322
	cmpl	$6553600, %ebp
	jne	L1322
	cmpl	$65536, 48(%esp)
	jne	L1322
	cmpw	$0, 88(%esp)
	jne	L1322
L1320:
	testb	$1, 104(%esp)
	jne	L1322
	movl	$0, __ZL8permtail.lto_priv.0
	movl	$0, __ZL8permhead.lto_priv.0
	.p2align 4
	.p2align 3
L1322:
	testb	%dl, %dl
	je	L1397
	jmp	L1396
	.p2align 4,,10
	.p2align 3
L1398:
	testl	%edx, %edx
	je	L1311
	movl	116(%esp), %ecx
	testl	%ecx, %ecx
	jg	L1339
	movl	112(%esp), %edx
	testl	%edx, %edx
	jg	L1339
	movl	_xdim, %ecx
	leal	-1(%ecx), %edx
	cmpl	%edx, 120(%esp)
	jl	L1339
	movl	_ydim, %ecx
	leal	-1(%ecx), %edx
	cmpl	%edx, 124(%esp)
	jl	L1316
	cmpl	$6553600, %ebp
	jne	L1316
	cmpl	$10485760, %edi
	jne	L1316
	cmpw	$0, 88(%esp)
	jne	L1316
	xorl	%edx, %edx
	cmpl	$65536, 48(%esp)
	je	L1320
	jmp	L1316
	.p2align 4,,10
	.p2align 3
L1339:
	movl	$64, 52(%esp)
	jmp	L1311
L1336:
	movl	_ydim, %eax
	subl	$1, %eax
	cmpl	%eax, 124(%esp)
	jl	L1397
	xorl	%edx, %edx
	jmp	L1318
	.cfi_endproc
LFE59:
	.p2align 4
	.globl	__Z26buildgl_outputDebugMessagehPKcz.constprop.0
	.def	__Z26buildgl_outputDebugMessagehPKcz.constprop.0;	.scl	2;	.type	32;	.endef
__Z26buildgl_outputDebugMessagehPKcz.constprop.0:
LFB61:
	.cfi_startproc
	testb	$4, _glinfo+28
	je	L1416
	cmpl	$2, _r_polymostDebug
	jle	L1416
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
	jbe	L1407
	movl	$1, %ebx
	.p2align 3
	.p2align 4
	.p2align 3
L1402:
	addl	%ebx, %ebx
	cmpl	%ebx, %eax
	jg	L1402
	movl	$16, %eax
	cmpl	%eax, %ebx
	cmovl	%eax, %ebx
L1401:
	movl	__imp___vsnprintf, %ebp
	xorl	%edi, %edi
	leal	56(%esp), %esi
	jmp	L1405
	.p2align 4,,10
	.p2align 3
L1408:
	movl	52(%esp), %eax
	movl	%esi, 24(%esp)
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%edi, (%esp)
	call	*%ebp
	cmpl	%ebx, %eax
	jb	L1419
L1405:
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
	jne	L1408
	testl	%ebx, %ebx
	je	L1408
	movl	%ebx, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1416:
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	ret
	.p2align 4,,10
	.p2align 3
L1419:
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
L1407:
	.cfi_restore_state
	movl	$16, %ebx
	jmp	L1401
	.cfi_endproc
LFE61:
	.p2align 4
	.globl	__Z19buildgl_setViewportiiii
	.def	__Z19buildgl_setViewportiiii;	.scl	2;	.type	32;	.endef
__Z19buildgl_setViewportiiii:
LFB62:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	cmpl	%eax, _gl+72
	je	L1424
L1421:
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
L1420:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1424:
	.cfi_restore_state
	cmpl	%edx, _gl+76
	jne	L1421
	cmpl	%ecx, _gl+80
	jne	L1421
	movl	24(%esp), %ebx
	cmpl	%ebx, _gl+84
	jne	L1421
	jmp	L1420
	.cfi_endproc
LFE62:
	.p2align 4
	.globl	__Z27buildgl_resetSamplerObjectsv
	.def	__Z27buildgl_resetSamplerObjectsv;	.scl	2;	.type	32;	.endef
__Z27buildgl_resetSamplerObjectsv:
LFB63:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	_glanisotropy, %edx
	movl	$1, %eax
	movl	%ebx, 12(%esp)
	cmpl	$1, %edx
	.cfi_offset 3, -16
	jle	L1426
	cvttss2sil	_glinfo+16, %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
L1426:
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
	je	L1425
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
	je	L1447
L1428:
	leal	(%ebx,%ebx,2), %eax
	movl	$1, %ebx
	leal	_glfiltermodes(,%eax,4), %esi
	movl	8(%esi), %edi
	jmp	L1436
	.p2align 4,,10
	.p2align 3
L1443:
	movss	_glinfo+16, %xmm2
	movaps	%xmm2, %xmm0
	cmpnless	%xmm1, %xmm0
	andps	%xmm0, %xmm1
	andnps	%xmm2, %xmm0
	orps	%xmm1, %xmm0
L1433:
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
	je	L1448
L1436:
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
	je	L1449
L1429:
	movss	LC7, %xmm3
	xorps	%xmm1, %xmm1
	cvtsi2ssl	_glanisotropy, %xmm1
	comiss	%xmm1, %xmm3
	jb	L1443
	movss	LC7, %xmm0
	jmp	L1433
	.p2align 4,,10
	.p2align 3
L1449:
	movl	_r_useindexedcolortextures, %ecx
	testl	%ecx, %ecx
	je	L1429
	movl	_gltexfiltermode, %edx
	testl	%edx, %edx
	jne	L1429
	movss	LC7, %xmm0
	jmp	L1433
	.p2align 4,,10
	.p2align 3
L1448:
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
L1425:
	movl	12(%esp), %ebx
	addl	$24, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1447:
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
	jmp	L1428
	.cfi_endproc
LFE63:
	.p2align 4
	.globl	__Z25buildgl_bindSamplerObjectii
	.def	__Z25buildgl_bindSamplerObjectii;	.scl	2;	.type	32;	.endef
__Z25buildgl_bindSamplerObjectii:
LFB64:
	.cfi_startproc
	testb	$8, _glinfo+29
	je	L1451
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	_r_usesamplerobjects, %ecx
	testl	%ecx, %ecx
	je	L1452
	andl	$49731, %edx
	cmpl	$67, %edx
	je	L1460
	jg	L1454
	cmpl	$2, %edx
	je	L1461
	jle	L1478
	cmpl	$3, %edx
	je	L1462
	cmpl	$66, %edx
	sete	%dl
	movzbl	%dl, %edx
	leal	2(%edx,%edx), %edx
	jmp	L1453
	.p2align 4,,10
	.p2align 3
L1451:
	.cfi_def_cfa_offset 4
	movl	$0, _gl+8(,%eax,4)
	ret
	.p2align 4,,10
	.p2align 3
L1452:
	.cfi_def_cfa_offset 12
	movl	$0, _gl+8(,%eax,4)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glBindSampler
	.cfi_def_cfa_offset 4
	subl	$8, %esp
	.cfi_def_cfa_offset 12
L1450:
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1454:
	.cfi_restore_state
	cmpl	$16384, %edx
	je	L1464
	jg	L1457
	cmpl	$512, %edx
	jne	L1479
	xorl	%edx, %edx
	cmpl	$4, _rendmode
	setne	%dl
	leal	2(,%edx,4), %edx
	.p2align 4
	.p2align 3
L1453:
	cmpl	%edx, _gl+8(,%eax,4)
	je	L1450
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
L1457:
	.cfi_restore_state
	cmpl	$32768, %edx
	movl	$8, %ecx
	movl	$2, %edx
	cmove	%ecx, %edx
	jmp	L1453
	.p2align 4,,10
	.p2align 3
L1462:
	movl	$7, %edx
	jmp	L1453
	.p2align 4,,10
	.p2align 3
L1478:
	testl	%edx, %edx
	je	L1453
L1456:
	xorl	%edx, %edx
	cmpl	$4, _rendmode
	setne	%dl
	leal	1(,%edx,4), %edx
	jmp	L1453
	.p2align 4,,10
	.p2align 3
L1461:
	movl	$10, %edx
	jmp	L1453
	.p2align 4,,10
	.p2align 3
L1464:
	movl	$11, %edx
	jmp	L1453
	.p2align 4,,10
	.p2align 3
L1460:
	movl	$3, %edx
	jmp	L1453
	.p2align 4,,10
	.p2align 3
L1479:
	cmpl	$513, %edx
	je	L1456
	movl	$2, %edx
	jmp	L1453
	.cfi_endproc
LFE64:
	.p2align 4
	.globl	__Z33buildgl_unprojectMatrixToViewport4vec3IfEPKfS2_PKiPfS5_S5_.isra.0
	.def	__Z33buildgl_unprojectMatrixToViewport4vec3IfEPKfS2_PKiPfS5_S5_.isra.0;	.scl	2;	.type	32;	.endef
__Z33buildgl_unprojectMatrixToViewport4vec3IfEPKfS2_PKiPfS5_S5_.isra.0:
LFB67:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$576, %esp
	movl	%eax, 436(%esp)
	movl	12(%ebp), %eax
	movl	%edx, 440(%esp)
	movl	8(%ebp), %edx
	movups	(%eax), %xmm4
	movups	16(%eax), %xmm3
	movl	%ecx, 444(%esp)
	movl	16(%ebp), %ecx
	movups	32(%eax), %xmm2
	movups	48(%eax), %xmm1
	xorl	%eax, %eax
L1481:
	movss	4(%edx,%eax), %xmm0
	movss	(%edx,%eax), %xmm5
	shufps	$0, %xmm0, %xmm0
	shufps	$0, %xmm5, %xmm5
	mulps	%xmm3, %xmm0
	mulps	%xmm4, %xmm5
	addps	%xmm5, %xmm0
	movss	8(%edx,%eax), %xmm5
	shufps	$0, %xmm5, %xmm5
	mulps	%xmm2, %xmm5
	addps	%xmm5, %xmm0
	movss	12(%edx,%eax), %xmm5
	shufps	$0, %xmm5, %xmm5
	mulps	%xmm1, %xmm5
	addps	%xmm5, %xmm0
	movups	%xmm0, 448(%esp,%eax)
	addl	$16, %eax
	cmpl	$64, %eax
	jne	L1481
	movups	464(%esp), %xmm2
	movups	480(%esp), %xmm0
	movss	468(%esp), %xmm4
	movaps	%xmm2, %xmm1
	unpckhps	448(%esp), %xmm1
	movaps	%xmm0, %xmm6
	movss	%xmm4, 420(%esp)
	shufps	$85, %xmm2, %xmm6
	movaps	%xmm0, %xmm7
	movaps	%xmm0, %xmm4
	movups	%xmm6, 368(%esp)
	movaps	%xmm1, %xmm6
	shufps	$255, %xmm2, %xmm7
	shufps	$85, %xmm0, %xmm4
	shufps	$84, %xmm1, %xmm6
	shufps	$254, %xmm1, %xmm1
	movups	%xmm1, 304(%esp)
	movaps	%xmm0, %xmm1
	shufps	$170, %xmm2, %xmm1
	movups	%xmm1, 288(%esp)
	movups	496(%esp), %xmm1
	movups	%xmm6, 320(%esp)
	movaps	%xmm1, %xmm5
	movups	%xmm7, 336(%esp)
	movss	%xmm4, 424(%esp)
	unpckhps	%xmm0, %xmm5
	movaps	%xmm1, %xmm4
	movaps	%xmm5, %xmm6
	movaps	%xmm5, %xmm3
	shufps	$85, %xmm1, %xmm4
	movss	%xmm4, 428(%esp)
	shufps	$64, %xmm5, %xmm6
	movaps	%xmm1, %xmm5
	shufps	$234, %xmm3, %xmm3
	movaps	%xmm0, %xmm4
	unpckhps	%xmm1, %xmm5
	movups	%xmm3, 384(%esp)
	movss	448(%esp), %xmm3
	shufps	$78, 448(%esp), %xmm4
	movss	%xmm5, 176(%esp)
	movaps	%xmm1, %xmm5
	shufps	$253, %xmm4, %xmm4
	unpcklps	%xmm0, %xmm5
	movups	%xmm6, 352(%esp)
	movss	%xmm3, 416(%esp)
	movaps	%xmm5, %xmm6
	movaps	%xmm2, %xmm3
	unpcklps	448(%esp), %xmm3
	shufps	$234, %xmm5, %xmm6
	movups	%xmm6, 400(%esp)
	movss	488(%esp), %xmm6
	movss	%xmm6, 432(%esp)
	movaps	%xmm3, %xmm6
	shufps	$84, %xmm3, %xmm6
	mulps	%xmm7, %xmm6
	movaps	%xmm0, %xmm7
	shufps	$0, %xmm2, %xmm0
	shufps	$95, %xmm2, %xmm7
	shufps	$242, %xmm2, %xmm7
	mulps	%xmm7, %xmm4
	shufps	$254, %xmm3, %xmm3
	mulps	%xmm0, %xmm3
	movaps	%xmm4, %xmm7
	movups	352(%esp), %xmm4
	mulps	%xmm4, %xmm7
	movups	%xmm7, 160(%esp)
	movaps	%xmm4, %xmm7
	mulps	%xmm6, %xmm7
	movups	%xmm7, 144(%esp)
	movups	400(%esp), %xmm7
	mulps	%xmm6, %xmm7
	movups	%xmm7, 128(%esp)
	movups	320(%esp), %xmm7
	movaps	%xmm7, %xmm6
	mulps	%xmm0, %xmm6
	movaps	%xmm6, %xmm2
	unpckhps	%xmm6, %xmm2
	movss	%xmm2, 188(%esp)
	movaps	%xmm6, %xmm2
	shufps	$85, %xmm6, %xmm2
	movss	%xmm2, 272(%esp)
	movups	368(%esp), %xmm2
	mulps	%xmm7, %xmm2
	movups	384(%esp), %xmm7
	shufps	$228, 448(%esp), %xmm1
	mulps	%xmm7, %xmm2
	movups	%xmm2, 80(%esp)
	movaps	%xmm7, %xmm2
	mulps	%xmm3, %xmm7
	mulps	%xmm6, %xmm2
	movups	%xmm7, 96(%esp)
	movaps	%xmm3, %xmm7
	unpckhps	%xmm3, %xmm3
	movss	%xmm3, 184(%esp)
	movaps	%xmm7, %xmm3
	shufps	$85, %xmm7, %xmm3
	movups	%xmm7, 256(%esp)
	movss	472(%esp), %xmm7
	movss	%xmm3, 180(%esp)
	movups	304(%esp), %xmm3
	movups	%xmm2, 112(%esp)
	movaps	%xmm7, %xmm2
	mulps	%xmm3, %xmm0
	shufps	$0, %xmm2, %xmm2
	shufps	$228, 448(%esp), %xmm2
	shufps	$168, %xmm2, %xmm2
	mulps	368(%esp), %xmm3
	mulps	%xmm4, %xmm3
	mulps	%xmm0, %xmm4
	mulps	400(%esp), %xmm0
	movss	%xmm7, 400(%esp)
	movups	%xmm3, 192(%esp)
	movaps	%xmm5, %xmm3
	shufps	$64, %xmm5, %xmm3
	mulps	%xmm3, %xmm2
	movups	%xmm4, 64(%esp)
	movss	424(%esp), %xmm5
	movups	%xmm0, 48(%esp)
	movaps	%xmm3, %xmm0
	movups	%xmm2, 352(%esp)
	shufps	$85, %xmm2, %xmm2
	movss	%xmm2, 280(%esp)
	movss	452(%esp), %xmm2
	movaps	%xmm2, %xmm3
	unpcklps	%xmm2, %xmm2
	movaps	%xmm2, %xmm4
	movss	420(%esp), %xmm2
	unpcklps	%xmm3, %xmm2
	movlhps	%xmm4, %xmm2
	movaps	%xmm2, %xmm3
	movss	428(%esp), %xmm4
	mulps	%xmm0, %xmm3
	movaps	%xmm3, %xmm7
	movaps	%xmm1, %xmm3
	shufps	$169, %xmm1, %xmm3
	movaps	%xmm3, %xmm2
	movaps	%xmm4, %xmm3
	shufps	$253, %xmm1, %xmm1
	unpcklps	%xmm5, %xmm3
	movaps	%xmm3, %xmm5
	movss	400(%esp), %xmm3
	unpcklps	%xmm4, %xmm3
	movaps	%xmm3, %xmm4
	movlhps	%xmm5, %xmm4
	mulps	%xmm4, %xmm2
	movups	352(%esp), %xmm5
	movaps	%xmm2, %xmm3
	movups	336(%esp), %xmm2
	mulps	%xmm2, %xmm3
	mulps	%xmm2, %xmm5
	mulps	%xmm7, %xmm2
	movups	%xmm3, 32(%esp)
	movaps	%xmm7, %xmm3
	shufps	$85, %xmm7, %xmm3
	movups	%xmm5, 16(%esp)
	movups	%xmm2, (%esp)
	movss	476(%esp), %xmm2
	movss	%xmm3, 276(%esp)
	shufps	$0, %xmm2, %xmm2
	shufps	$228, 448(%esp), %xmm2
	shufps	$252, %xmm2, %xmm2
	mulps	%xmm2, %xmm0
	movss	484(%esp), %xmm2
	movss	428(%esp), %xmm3
	movss	400(%esp), %xmm5
	unpcklps	%xmm2, %xmm3
	movss	428(%esp), %xmm2
	movaps	%xmm3, %xmm4
	movss	476(%esp), %xmm3
	unpcklps	%xmm2, %xmm3
	movaps	%xmm3, %xmm2
	movlhps	%xmm4, %xmm2
	mulps	%xmm1, %xmm2
	movups	288(%esp), %xmm1
	movss	464(%esp), %xmm4
	movaps	%xmm2, %xmm3
	mulps	%xmm1, %xmm3
	mulps	%xmm0, %xmm1
	mulps	368(%esp), %xmm0
	movups	%xmm3, 240(%esp)
	movups	%xmm1, 224(%esp)
	movaps	%xmm4, %xmm1
	xorps	LC8, %xmm1
	movups	%xmm0, 208(%esp)
	movss	452(%esp), %xmm0
	mulss	%xmm5, %xmm0
	movaps	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movss	432(%esp), %xmm1
	mulss	%xmm1, %xmm0
	movaps	%xmm0, %xmm3
	movss	416(%esp), %xmm0
	mulss	%xmm0, %xmm1
	xorps	LC8, %xmm0
	movss	%xmm1, 320(%esp)
	movaps	%xmm5, %xmm1
	mulss	%xmm0, %xmm1
	movaps	%xmm1, %xmm5
	xorps	LC8, %xmm5
	movss	%xmm5, 368(%esp)
	movaps	%xmm4, %xmm5
	movss	424(%esp), %xmm4
	mulss	%xmm4, %xmm5
	movss	%xmm5, 304(%esp)
	movaps	%xmm0, %xmm5
	mulss	%xmm4, %xmm5
	movss	420(%esp), %xmm4
	movss	%xmm5, 288(%esp)
	movss	416(%esp), %xmm5
	mulss	%xmm4, %xmm5
	movss	%xmm5, 336(%esp)
	movaps	%xmm5, %xmm0
	xorps	LC8, %xmm0
	movss	432(%esp), %xmm5
	movss	%xmm0, 284(%esp)
	movaps	%xmm4, %xmm0
	movss	452(%esp), %xmm4
	xorps	LC8, %xmm4
	mulss	%xmm5, %xmm0
	mulss	%xmm5, %xmm4
	movaps	%xmm2, %xmm5
	xorps	LC8, %xmm5
	unpcklps	%xmm5, %xmm2
	movaps	%xmm3, %xmm5
	unpcklps	%xmm4, %xmm0
	movups	384(%esp), %xmm4
	movlhps	%xmm2, %xmm0
	movaps	%xmm1, %xmm2
	movss	368(%esp), %xmm1
	movss	%xmm3, 384(%esp)
	movss	288(%esp), %xmm3
	mulps	%xmm4, %xmm0
	unpcklps	%xmm1, %xmm2
	movss	320(%esp), %xmm1
	unpcklps	%xmm1, %xmm5
	movaps	%xmm5, %xmm1
	movss	284(%esp), %xmm5
	movlhps	%xmm2, %xmm1
	mulps	%xmm4, %xmm1
	movss	336(%esp), %xmm2
	unpcklps	%xmm5, %xmm2
	movss	304(%esp), %xmm5
	unpcklps	%xmm3, %xmm5
	movups	80(%esp), %xmm3
	movlhps	%xmm2, %xmm5
	movups	160(%esp), %xmm2
	mulps	%xmm4, %xmm5
	movaps	%xmm0, %xmm4
	subps	%xmm2, %xmm4
	addps	%xmm2, %xmm0
	shufps	$216, %xmm0, %xmm4
	movups	144(%esp), %xmm0
	shufps	$216, %xmm4, %xmm4
	movaps	%xmm0, %xmm2
	addps	%xmm1, %xmm2
	subps	%xmm0, %xmm1
	movups	128(%esp), %xmm0
	shufps	$216, %xmm1, %xmm2
	movaps	%xmm5, %xmm1
	addps	%xmm0, %xmm5
	shufps	$216, %xmm2, %xmm2
	subps	%xmm0, %xmm1
	movaps	%xmm4, %xmm0
	addps	%xmm3, %xmm4
	subps	%xmm3, %xmm0
	shufps	$216, %xmm5, %xmm1
	movups	112(%esp), %xmm5
	shufps	$216, %xmm1, %xmm1
	movaps	%xmm1, %xmm3
	shufps	$216, %xmm4, %xmm0
	shufps	$216, %xmm0, %xmm0
	movaps	%xmm5, %xmm4
	addps	%xmm2, %xmm4
	subps	%xmm5, %xmm2
	movups	96(%esp), %xmm5
	subps	%xmm5, %xmm3
	addps	%xmm5, %xmm1
	movups	64(%esp), %xmm5
	shufps	$216, %xmm2, %xmm4
	shufps	$216, %xmm4, %xmm4
	movaps	%xmm3, %xmm2
	movups	192(%esp), %xmm3
	shufps	$216, %xmm1, %xmm2
	shufps	$216, %xmm2, %xmm2
	movaps	%xmm3, %xmm1
	addps	%xmm0, %xmm1
	subps	%xmm3, %xmm0
	movaps	%xmm4, %xmm3
	subps	%xmm5, %xmm3
	addps	%xmm5, %xmm4
	movups	16(%esp), %xmm5
	shufps	$216, %xmm0, %xmm1
	shufps	$216, %xmm1, %xmm1
	movaps	%xmm3, %xmm0
	movups	48(%esp), %xmm3
	shufps	$216, %xmm4, %xmm0
	shufps	$216, %xmm0, %xmm0
	movaps	%xmm3, %xmm4
	addps	%xmm2, %xmm4
	subps	%xmm3, %xmm2
	movups	32(%esp), %xmm3
	shufps	$216, %xmm2, %xmm4
	movaps	%xmm3, %xmm2
	shufps	$216, %xmm4, %xmm4
	addps	%xmm1, %xmm2
	subps	%xmm3, %xmm1
	movaps	%xmm0, %xmm3
	subps	%xmm5, %xmm3
	addps	%xmm5, %xmm0
	movups	(%esp), %xmm5
	shufps	$216, %xmm1, %xmm2
	shufps	$216, %xmm2, %xmm2
	movaps	%xmm3, %xmm1
	movaps	%xmm2, %xmm3
	addps	240(%esp), %xmm2
	shufps	$216, %xmm0, %xmm1
	movaps	%xmm5, %xmm0
	subps	240(%esp), %xmm3
	shufps	$216, %xmm1, %xmm1
	addps	%xmm4, %xmm0
	subps	%xmm5, %xmm4
	movups	%xmm3, 240(%esp)
	shufps	$216, %xmm2, %xmm3
	shufps	$216, %xmm4, %xmm0
	movups	224(%esp), %xmm4
	shufps	$216, %xmm0, %xmm0
	movaps	%xmm0, %xmm5
	subps	208(%esp), %xmm5
	addps	208(%esp), %xmm0
	addps	%xmm1, %xmm4
	subps	224(%esp), %xmm1
	movups	%xmm5, 192(%esp)
	movaps	%xmm3, %xmm5
	movaps	%xmm4, %xmm2
	shufps	$216, %xmm3, %xmm5
	movups	%xmm5, 512(%esp)
	movss	304(%esp), %xmm3
	shufps	$216, %xmm1, %xmm2
	shufps	$216, %xmm2, %xmm2
	movups	%xmm2, 528(%esp)
	movups	192(%esp), %xmm2
	shufps	$216, %xmm0, %xmm2
	movaps	%xmm2, %xmm1
	shufps	$216, %xmm2, %xmm1
	movups	%xmm1, 544(%esp)
	movss	176(%esp), %xmm5
	movss	428(%esp), %xmm2
	mulss	452(%esp), %xmm4
	mulss	%xmm5, %xmm3
	mulss	%xmm2, %xmm6
	movaps	%xmm3, %xmm0
	movss	384(%esp), %xmm3
	xorps	LC8, %xmm3
	movaps	%xmm3, %xmm1
	movss	256(%esp), %xmm3
	mulss	%xmm2, %xmm1
	mulss	%xmm5, %xmm3
	subss	%xmm0, %xmm1
	movss	352(%esp), %xmm0
	mulss	424(%esp), %xmm0
	addss	%xmm1, %xmm3
	movss	320(%esp), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm6, %xmm3
	movss	432(%esp), %xmm6
	mulss	%xmm6, %xmm7
	mulss	276(%esp), %xmm6
	subss	%xmm7, %xmm3
	movss	288(%esp), %xmm7
	xorps	LC8, %xmm7
	addss	%xmm0, %xmm3
	movaps	%xmm7, %xmm0
	movaps	%xmm5, %xmm7
	mulss	%xmm5, %xmm0
	movss	%xmm3, 560(%esp)
	subss	%xmm1, %xmm0
	movss	180(%esp), %xmm1
	mulss	%xmm5, %xmm1
	movss	284(%esp), %xmm5
	mulss	%xmm7, %xmm5
	mulss	184(%esp), %xmm7
	subss	%xmm1, %xmm0
	movss	272(%esp), %xmm1
	mulss	%xmm2, %xmm1
	addss	%xmm0, %xmm1
	movaps	%xmm6, %xmm0
	movss	424(%esp), %xmm6
	mulss	280(%esp), %xmm6
	addss	%xmm1, %xmm0
	movss	368(%esp), %xmm1
	mulss	%xmm2, %xmm1
	mulss	188(%esp), %xmm2
	subss	%xmm6, %xmm0
	movss	276(%esp), %xmm6
	mulss	400(%esp), %xmm6
	movss	%xmm0, 564(%esp)
	movaps	%xmm5, %xmm0
	movss	280(%esp), %xmm5
	mulss	420(%esp), %xmm5
	addss	%xmm1, %xmm0
	movaps	%xmm7, %xmm1
	addss	%xmm0, %xmm1
	movss	240(%esp), %xmm0
	mulss	416(%esp), %xmm0
	subss	%xmm2, %xmm1
	addss	%xmm0, %xmm4
	movups	448(%esp), %xmm0
	subss	%xmm6, %xmm1
	unpckhps	%xmm0, %xmm0
	addss	%xmm5, %xmm1
	movss	%xmm1, 568(%esp)
	movss	192(%esp), %xmm1
	mulss	%xmm1, %xmm0
	movups	448(%esp), %xmm1
	shufps	$255, %xmm1, %xmm1
	mulss	%xmm3, %xmm1
	addss	%xmm4, %xmm0
	addss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jp	L1482
	je	L1480
L1482:
	movss	432(%esp), %xmm6
	xorl	%eax, %eax
	movss	424(%esp), %xmm7
	movss	336(%esp), %xmm0
	movss	368(%esp), %xmm2
	mulss	%xmm6, %xmm0
	mulss	%xmm7, %xmm2
	mulss	184(%esp), %xmm6
	mulss	188(%esp), %xmm7
	subss	%xmm2, %xmm0
	movss	400(%esp), %xmm2
	mulss	180(%esp), %xmm2
	subss	%xmm6, %xmm0
	addss	%xmm7, %xmm0
	addss	%xmm2, %xmm0
	movss	420(%esp), %xmm2
	mulss	272(%esp), %xmm2
	subss	%xmm2, %xmm0
	movss	LC7, %xmm2
	movss	%xmm0, 572(%esp)
	movaps	%xmm2, %xmm0
	divss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	shufps	$0, %xmm1, %xmm1
L1485:
	movups	512(%esp,%eax), %xmm0
	mulps	%xmm1, %xmm0
	movups	%xmm0, 448(%esp,%eax)
	addl	$16, %eax
	cmpl	$64, %eax
	jne	L1485
	movss	436(%esp), %xmm1
	xorps	%xmm0, %xmm0
	xorps	%xmm3, %xmm3
	cvtsi2ssl	(%ecx), %xmm0
	cvtsi2ssl	4(%ecx), %xmm3
	subss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	8(%ecx), %xmm0
	divss	%xmm0, %xmm1
	movss	440(%esp), %xmm0
	subss	%xmm3, %xmm0
	xorps	%xmm3, %xmm3
	cvtsi2ssl	12(%ecx), %xmm3
	divss	%xmm3, %xmm0
	movss	444(%esp), %xmm3
	addss	%xmm3, %xmm3
	addss	%xmm1, %xmm1
	subss	%xmm2, %xmm3
	subss	%xmm2, %xmm1
	shufps	$0, %xmm1, %xmm1
	mulps	448(%esp), %xmm1
	addss	%xmm0, %xmm0
	subss	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	shufps	$0, %xmm0, %xmm0
	mulps	464(%esp), %xmm0
	addps	%xmm1, %xmm0
	movaps	%xmm3, %xmm1
	shufps	$0, %xmm1, %xmm1
	mulps	480(%esp), %xmm1
	addps	%xmm1, %xmm0
	addps	496(%esp), %xmm0
	movaps	%xmm0, %xmm1
	shufps	$255, %xmm0, %xmm1
	ucomiss	%xmm2, %xmm1
	jp	L1487
	je	L1480
L1487:
	movaps	%xmm0, %xmm2
	movl	20(%ebp), %eax
	divss	%xmm1, %xmm2
	movss	%xmm2, (%eax)
	movaps	%xmm0, %xmm2
	movl	24(%ebp), %eax
	shufps	$85, %xmm0, %xmm2
	divss	%xmm1, %xmm2
	unpckhps	%xmm0, %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm2, (%eax)
	movl	28(%ebp), %eax
	movss	%xmm0, (%eax)
L1480:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE67:
	.p2align 4
	.globl	__Z22buildgl_setPerspectiveffff
	.def	__Z22buildgl_setPerspectiveffff;	.scl	2;	.type	32;	.endef
__Z22buildgl_setPerspectiveffff:
LFB72:
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
	mulss	LC10, %xmm0
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
	jne	L1491
	ucomiss	%xmm0, %xmm5
	movss	-88(%ebp), %xmm2
	movss	-92(%ebp), %xmm3
	setnp	%dl
	cmove	%edx, %eax
	testb	%al, %al
	je	L1497
L1491:
	movl	-4(%ebp), %edi
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L1497:
	.cfi_restore_state
	divss	%xmm5, %xmm6
	xorl	%eax, %eax
L1493:
	movl	$0, -64(%ebp,%eax)
	movl	$0, -60(%ebp,%eax)
	movl	$0, -56(%ebp,%eax)
	movl	$0, -52(%ebp,%eax)
	addl	$16, %eax
	cmpl	$48, %eax
	jb	L1493
	movaps	%xmm6, %xmm0
	movl	$0, -64(%ebp,%eax)
	movss	LC7, %xmm5
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
	xorps	LC8, %xmm0
	mulss	LC12, %xmm2
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
LFE72:
	.section .rdata,"dr"
LC13:
	.ascii "Compile Status: %u\12\0"
LC14:
	.ascii "Log:\12%s\12\0"
	.text
	.p2align 4
	.globl	__ZL13compileShaderjPKc.lto_priv.0
	.def	__ZL13compileShaderjPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL13compileShaderjPKc.lto_priv.0:
LFB73:
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
	je	L1498
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
	jne	L1498
	leal	28(%esp), %eax
	movl	$35716, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, (%esp)
	call	*_glad_glGetShaderiv
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	movl	20(%esp), %eax
	movl	$LC13, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	movl	28(%esp), %esi
	testl	%esi, %esi
	jg	L1506
L1498:
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
L1506:
	.cfi_restore_state
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	testl	%eax, %eax
	je	L1501
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
	movl	$LC14, (%esp)
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
L1501:
	.cfi_restore_state
	movl	%esi, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE73:
	.p2align 4
	.globl	__Z17glsurface_destroyv
	.def	__Z17glsurface_destroyv;	.scl	2;	.type	32;	.endef
__Z17glsurface_destroyv:
LFB74:
	.cfi_startproc
	movl	__ZL6buffer.lto_priv.0, %eax
	testl	%eax, %eax
	je	L1513
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
L1513:
	ret
	.cfi_endproc
LFE74:
	.section .rdata,"dr"
LC15:
	.ascii "divider must be != 0\0"
LC16:
	.ascii "libdivide_internal_u32_gen\0"
	.align 4
LC17:
	.ascii "libdivide.h:%d: %s(): Error: %s\12\0"
	.text
	.p2align 4
	.globl	_hash_init
	.def	_hash_init;	.scl	2;	.type	32;	.endef
_hash_init:
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
	movl	%eax, %edi
	pushl	%esi
	pushl	%ebx
	subl	$88, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%eax, -72(%ebp)
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L1517
	movl	(%edi), %edi
	movl	%edi, -44(%ebp)
	leal	-1(%edi), %esi
	.p2align 4
	.p2align 3
L1532:
	movl	(%eax,%esi,4), %edi
	testl	%edi, %edi
	je	L1518
	movl	%esi, -68(%ebp)
	jmp	L1531
	.p2align 4,,10
	.p2align 3
L1559:
	leal	(%eax,%eax,4), %eax
	leal	0(,%eax,8), %edx
	movl	%edx, -48(%ebp)
	leal	48(%ecx), %edx
	movl	%edx, -52(%ebp)
	lock addl	$1, 80(%ecx,%eax,8)
	movl	%fs:44, %eax
	movl	__tls_index, %edx
	movl	(%eax,%edx,4), %edx
	movl	%ebx, %eax
	movl	%edx, -56(%ebp)
	sall	$6, %eax
	movl	%eax, -60(%ebp)
	addl	%edx, %eax
	movl	_tlsCacheBuckets@secrel32+52(%eax), %edx
	testl	%edx, %edx
	je	L1521
	movl	_tlsCacheBuckets@secrel32(%eax), %ecx
	subl	%ecx, %esi
	movl	%ecx, -64(%ebp)
	movzbl	_tlsCacheBuckets@secrel32+60(%eax), %ecx
	movl	%esi, -52(%ebp)
	cmpb	$9, %cl
	jbe	L1557
	movl	_tlsCacheBuckets@secrel32+56(%eax), %esi
	movl	%esi, -48(%ebp)
	movl	_tlsCacheBuckets@secrel32+4(%eax), %esi
	movl	%esi, -56(%ebp)
	cmpl	%edx, -48(%ebp)
	jnb	L1523
	movl	-48(%ebp), %edx
	movl	-52(%ebp), %ebx
	movl	%ebx, (%esi,%edx,4)
	addl	$1, %edx
	movl	_g_sm_heap, %ecx
	movl	%edx, _tlsCacheBuckets@secrel32+56(%eax)
	.p2align 4
	.p2align 3
L1519:
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	testl	%edi, %edi
	je	L1558
L1531:
	movl	%edi, %eax
	movl	%edi, -44(%ebp)
	movl	_g_sm_heap, %ecx
	movl	(%eax), %esi
	movl	8(%edi), %edi
	cmpl	$16384, %esi
	jbe	L1519
	movl	%esi, %eax
	xorl	%edx, %edx
	subl	12(%ecx), %eax
	divl	4(%ecx)
	movl	%eax, %ebx
	cmpl	(%ecx), %eax
	jb	L1559
	movl	%esi, %eax
	call	_mi_free
L1556:
	movl	_g_sm_heap, %ecx
	jmp	L1519
	.p2align 4,,10
	.p2align 3
L1521:
	movl	-48(%ebp), %edx
	movl	$1, %ebx
	leal	48(%ecx,%edx), %eax
	movl	%eax, -52(%ebp)
	lock xaddl	%ebx, 8(%eax)
	movl	%ebx, -48(%ebp)
	movl	%esi, %ebx
	subl	60(%ecx,%edx), %ebx
	movl	%ebx, %ecx
	movlps	(%eax), %xmm0
	movlps	%xmm0, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	movl	%esi, -56(%ebp)
	movl	-48(%ebp), %ebx
L1530:
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	-56(%ebp), %esi
	movl	%eax, (%esi)
	movl	%edx, 4(%esi)
	movl	-52(%ebp), %esi
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	lock cmpxchg8b	(%esi)
	je	L1556
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	jmp	L1530
	.p2align 4,,10
	.p2align 3
L1558:
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %esi
	movl	12(%eax), %eax
L1518:
	subl	$1, %esi
	jns	L1532
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-72(%ebp), %eax
	subl	$4, %esp
	movl	$0, 12(%eax)
L1517:
	movl	-72(%ebp), %edi
	xorl	%edx, %edx
	movl	(%edi), %eax
	call	__ZL14hash_findprimey
	movl	%eax, (%edi)
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1560
	bsrl	%eax, %ecx
	leal	-1(%eax), %eax
	movl	%ecx, %edi
	andl	%ebx, %eax
	je	L1534
	movl	$1, %esi
	xorl	%eax, %eax
	sall	%cl, %esi
	movl	%esi, %edx
/APP
 # 477 "source/build/include/libdivide.h" 1
	divl %ebx
 # 0 "" 2
/NO_APP
	movl	%eax, -44(%ebp)
	movl	%ebx, %eax
	subl	%edx, %eax
	cmpl	%esi, %eax
	jb	L1535
	leal	(%edx,%edx), %edi
	cmpl	%ebx, %edi
	setnb	%al
	cmpl	%edx, %edi
	movl	%ecx, %edi
	setb	%dl
	orl	$64, %edi
	orl	%eax, %edx
	movl	-44(%ebp), %eax
	movzbl	%dl, %edx
	leal	(%edx,%eax,2), %eax
	movl	%eax, -44(%ebp)
L1535:
	movl	-44(%ebp), %eax
	addl	$1, %eax
L1534:
	movl	-72(%ebp), %esi
	leal	(%ebx,%ebx,2), %ebx
	sall	$2, %ebx
	movl	%eax, 4(%esi)
	movl	%edi, %eax
	movb	%al, 8(%esi)
	movl	$16, 4(%esp)
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj
	subl	$8, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1536
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	-72(%ebp), %eax
	movl	%esi, 12(%eax)
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
L1557:
	.cfi_restore_state
	movl	-56(%ebp), %ebx
	movl	-60(%ebp), %esi
	leal	_tlsCacheBuckets@secrel32(%ebx,%esi), %edx
	movl	-52(%ebp), %ebx
	movl	%ebx, 12(%edx,%ecx,4)
	movl	_g_sm_heap, %ecx
	addb	$1, _tlsCacheBuckets@secrel32+60(%eax)
	jmp	L1519
	.p2align 4,,10
	.p2align 3
L1523:
	movl	-48(%ebp), %esi
	movl	$1, %edx
	shrl	%esi
	je	L1524
	movl	-48(%ebp), %edx
	movl	-56(%ebp), %ecx
	movl	%esi, -60(%ebp)
	subl	%esi, %edx
	movl	-64(%ebp), %esi
	addl	(%ecx,%edx,4), %esi
	movl	%esi, -64(%ebp)
	movl	%esi, -80(%ebp)
	movl	%edx, %esi
	addl	$1, %edx
	cmpl	-48(%ebp), %edx
	jnb	L1538
	movl	%esi, %edx
	movl	%esi, -76(%ebp)
	movl	-56(%ebp), %esi
	movl	4(%esi,%edx,4), %esi
	movl	-64(%ebp), %edx
	movl	$16777215, (%edx)
	movl	%esi, 4(%edx)
	movl	_tlsCacheBuckets@secrel32(%eax), %edx
	addl	%esi, %edx
	movl	%edx, -56(%ebp)
	movl	-76(%ebp), %edx
	addl	$2, %edx
	cmpl	_tlsCacheBuckets@secrel32+56(%eax), %edx
	jnb	L1525
	movl	-60(%ebp), %esi
	subl	-48(%ebp), %esi
	movl	%ebx, -64(%ebp)
	leal	16777214(%esi), %ecx
	movl	-56(%ebp), %esi
	movl	%edi, -48(%ebp)
	movl	%ecx, %edi
	.p2align 6
	.p2align 4
	.p2align 3
L1526:
	movl	_tlsCacheBuckets@secrel32+4(%eax), %ecx
	leal	(%edi,%edx), %ebx
	movl	(%ecx,%edx,4), %ecx
	movl	%ebx, (%esi)
	addl	$1, %edx
	movl	%ecx, 4(%esi)
	movl	_tlsCacheBuckets@secrel32(%eax), %esi
	addl	%ecx, %esi
	cmpl	_tlsCacheBuckets@secrel32+56(%eax), %edx
	jb	L1526
	movl	-48(%ebp), %edi
	movl	-64(%ebp), %ebx
	movl	%esi, -56(%ebp)
L1525:
	movl	%fs:44, %esi
	movl	__tls_index, %edx
	movl	%ebx, %eax
	sall	$6, %eax
	addl	(%esi,%edx,4), %eax
	movl	$1, %esi
	movl	_tlsCacheBuckets@secrel32+8(%eax), %eax
	movl	%eax, -48(%ebp)
	lock xaddl	%esi, 8(%eax)
	movl	-80(%ebp), %ecx
	subl	12(%eax), %ecx
	movl	%esi, -64(%ebp)
	movlps	(%eax), %xmm1
	movlps	%xmm1, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	movl	%edi, -76(%ebp)
	movl	%ebx, %edi
L1528:
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	-56(%ebp), %ebx
	movl	-48(%ebp), %esi
	movl	%eax, (%ebx)
	movl	%edx, 4(%ebx)
	movl	-64(%ebp), %ebx
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	lock cmpxchg8b	(%esi)
	je	L1539
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	jmp	L1528
	.p2align 4,,10
	.p2align 3
L1539:
	movl	__tls_index, %edx
	movl	%edi, %ebx
	movl	%fs:44, %esi
	movl	%ebx, %eax
	movl	-76(%ebp), %edi
	sall	$6, %eax
	addl	(%esi,%edx,4), %eax
	movl	_tlsCacheBuckets@secrel32+56(%eax), %edx
	subl	-60(%ebp), %edx
L1524:
	movl	%ebx, %eax
	movl	__tls_index, %esi
	movl	%fs:44, %ebx
	sall	$6, %eax
	addl	(%ebx,%esi,4), %eax
	movl	-52(%ebp), %ebx
	movl	_tlsCacheBuckets@secrel32+4(%eax), %ecx
	movl	%ebx, (%ecx,%edx,4)
	addl	$1, %edx
	movl	_g_sm_heap, %ecx
	movl	%edx, _tlsCacheBuckets@secrel32+56(%eax)
	jmp	L1519
L1538:
	movl	-80(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	L1525
L1536:
	movl	$12, %eax
	call	__Z13handle_memerri
L1560:
	movl	$2, (%esp)
	call	*__imp____acrt_iob_func
	movl	$LC15, 16(%esp)
	movl	$LC16, 12(%esp)
	movl	$872, 8(%esp)
	movl	$LC17, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	call	_abort
	.cfi_endproc
LFE76:
	.p2align 4
	.globl	_hash_add
	.def	_hash_add;	.scl	2;	.type	32;	.endef
_hash_add:
LFB88:
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
	jmp	L1562
	.p2align 4,,10
	.p2align 3
L1563:
	movl	%ebx, %eax
	addl	$1, %edi
	sall	$5, %eax
	addl	%eax, %ebx
	xorl	%edx, %ebx
L1562:
	movzbl	(%edi), %eax
	movl	%eax, (%esp)
	call	*%ebp
	movl	%eax, %edx
	testl	%eax, %eax
	jne	L1563
	movl	8(%esp), %eax
	movzbl	8(%eax), %ecx
	movl	4(%eax), %edx
	movl	%ebx, %eax
	shrl	%cl, %eax
	testl	%edx, %edx
	je	L1565
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
L1565:
	movl	8(%esp), %ecx
	imull	(%ecx), %eax
	subl	%eax, %ebx
	movl	12(%ecx), %eax
	movl	(%eax,%ebx,4), %ebp
	testl	%ebp, %ebp
	jne	L1567
	jmp	L1588
	.p2align 4,,10
	.p2align 3
L1572:
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	L1589
	movl	%eax, %ebp
L1567:
	movl	0(%ebp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L1572
	movl	40(%esp), %eax
	testl	%eax, %eax
	je	L1561
	movl	12(%esp), %eax
	movl	%eax, 4(%ebp)
L1561:
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
L1589:
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
	je	L1568
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
	je	L1573
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
L1588:
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
	je	L1568
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
	je	L1590
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
L1568:
	.cfi_restore_state
	movl	$12, %eax
	call	__Z13handle_memerri
L1573:
	movl	8(%esp), %eax
	call	__Z13handle_memerri
L1590:
	movl	16(%esp), %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE88:
	.p2align 4
	.globl	_hash_find
	.def	_hash_find;	.scl	2;	.type	32;	.endef
_hash_find:
LFB90:
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
	jmp	L1592
	.p2align 4,,10
	.p2align 3
L1593:
	movl	%ebx, %eax
	addl	$1, %ebp
	sall	$5, %eax
	addl	%eax, %ebx
	xorl	%edx, %ebx
L1592:
	movzbl	0(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edi
	movl	%eax, %edx
	testl	%eax, %eax
	jne	L1593
	movl	8(%esp), %eax
	movzbl	8(%eax), %ecx
	movl	4(%eax), %edx
	movl	%ebx, %eax
	shrl	%cl, %eax
	testl	%edx, %edx
	je	L1595
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
L1595:
	movl	8(%esp), %ecx
	imull	(%ecx), %eax
	subl	%eax, %ebx
	movl	12(%esp), %eax
	movl	(%eax,%ebx,4), %ebx
	testl	%ebx, %ebx
	jne	L1597
	jmp	L1600
	.p2align 4,,10
	.p2align 3
L1599:
	movl	8(%ebx), %ebx
	testl	%ebx, %ebx
	je	L1600
L1597:
	movl	(%ebx), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L1599
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
L1600:
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
LFE90:
	.p2align 4
	.globl	_hash_findcase
	.def	_hash_findcase;	.scl	2;	.type	32;	.endef
_hash_findcase:
LFB91:
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
	jmp	L1606
	.p2align 4,,10
	.p2align 3
L1607:
	movl	%ebx, %eax
	addl	$1, %ebp
	sall	$5, %eax
	addl	%eax, %ebx
	xorl	%edx, %ebx
L1606:
	movzbl	0(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edi
	movl	%eax, %edx
	testl	%eax, %eax
	jne	L1607
	movl	8(%esp), %eax
	movzbl	8(%eax), %ecx
	movl	4(%eax), %edx
	movl	%ebx, %eax
	shrl	%cl, %eax
	testl	%edx, %edx
	je	L1609
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
L1609:
	movl	8(%esp), %ecx
	imull	(%ecx), %eax
	subl	%eax, %ebx
	movl	12(%esp), %eax
	movl	(%eax,%ebx,4), %ebx
	testl	%ebx, %ebx
	jne	L1611
	jmp	L1614
	.p2align 4,,10
	.p2align 3
L1613:
	movl	8(%ebx), %ebx
	testl	%ebx, %ebx
	je	L1614
L1611:
	movl	(%ebx), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L1613
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
L1614:
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
	je	L1629
	bsrl	%eax, %ebp
	movl	%eax, %ebx
	leal	-1(%eax), %eax
	movl	%ebp, %edi
	andl	%ebx, %eax
	je	L1621
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
	jb	L1622
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
L1622:
	movl	20(%esp), %eax
	addl	$1, %eax
L1621:
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
	je	L1623
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
L1623:
	.cfi_restore_state
	movl	$12, %eax
	call	__Z13handle_memerri
L1629:
	movl	$2, (%esp)
	call	*__imp____acrt_iob_func
	movl	$LC15, 16(%esp)
	movl	$LC16, 12(%esp)
	movl	$872, 8(%esp)
	movl	$LC17, 4(%esp)
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
L1631:
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
	jne	L1631
	movl	$348, 8(%esp)
	movl	$_gl+88, %esi
	movl	$33984, %ebx
	movl	$0, 4(%esp)
	movl	$_gl, (%esp)
	call	_memset
	.p2align 4
	.p2align 3
L1632:
	movl	$-1, _gl-135928(,%ebx,4)
	movl	%esi, %eax
	addl	$1, %ebx
	addl	$16, %esi
	movl	$64, -12(%esi)
	call	_inthash_init
	cmpl	$34000, %ebx
	jne	L1632
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
LC18:
	.ascii "inthash_add\0"
LC19:
	.ascii "inthash_add(): table full!\0"
	.align 4
LC20:
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
L1637:
	movl	%ebx, %edx
	addl	$1, %eax
	leal	40(%esp), %ecx
	sall	$5, %edx
	addl	%edx, %ebx
	movzbl	-1(%eax), %edx
	xorl	%edx, %ebx
	cmpl	%ecx, %eax
	jne	L1637
	movl	8(%ebp), %eax
	movzbl	12(%ebp), %ecx
	movl	%eax, 20(%esp)
	testl	%eax, %eax
	je	L1679
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
L1639:
	movl	4(%ebp), %edx
	movl	24(%esp), %eax
	imull	%edx, %eax
	movl	%edx, 32(%esp)
	subl	%eax, %ebx
	leal	(%ebx,%ebx,2), %eax
	leal	(%edi,%eax,4), %ebp
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	L1680
	cmpl	%esi, 0(%ebp)
	jne	L1643
	jmp	L1681
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1645:
	cmpl	%esi, (%eax)
	je	L1644
	movl	%eax, %ebp
	movl	8(%eax), %eax
L1643:
	cmpl	%eax, %ebp
	jne	L1645
	movl	28(%esp), %eax
	movl	%esi, %edx
	movl	%ebp, %ebx
	movl	%eax, 24(%esp)
	movl	20(%esp), %eax
	testl	%eax, %eax
	je	L1654
	testb	$64, %cl
	jne	L1655
	movl	%edx, 28(%esp)
	movl	32(%esp), %esi
	jmp	L1649
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1682:
	cmpl	%ebx, %ebp
	je	L1678
L1649:
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
	jne	L1682
L1675:
	movl	28(%esp), %edx
L1648:
	cmpl	%ebx, %ebp
	je	L1650
L1651:
	movl	24(%esp), %eax
	movl	%edx, (%ebx)
	movl	%eax, 4(%ebx)
	movl	%ebx, 8(%ebp)
	movl	%ebx, 8(%ebx)
L1636:
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
L1679:
	.cfi_restore_state
	movl	%ebx, %eax
	shrl	%cl, %eax
	movl	%eax, 24(%esp)
	jmp	L1639
	.p2align 4,,10
	.p2align 3
L1644:
	movl	60(%esp), %edx
	testl	%edx, %edx
	je	L1636
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
L1655:
	.cfi_restore_state
	movl	%edx, 28(%esp)
	movl	32(%esp), %esi
	andl	$31, %ecx
	jmp	L1647
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1683:
	cmpl	%ebx, %ebp
	je	L1678
L1647:
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
	jne	L1683
	jmp	L1675
	.p2align 4,,10
	.p2align 3
L1680:
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
L1681:
	.cfi_restore_state
	movl	60(%esp), %ecx
	testl	%ecx, %ecx
	je	L1636
	movl	28(%esp), %eax
	movl	%eax, 4(%ebp)
	jmp	L1636
	.p2align 4,,10
	.p2align 3
L1654:
	movl	32(%esp), %esi
	.p2align 6
	.p2align 4
	.p2align 3
L1646:
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
	je	L1648
	cmpl	%ebx, %ebp
	jne	L1646
	jmp	L1650
	.p2align 4,,10
	.p2align 3
L1678:
	movl	28(%esp), %edx
L1650:
	movl	$LC18, 16(%esp)
	movl	$263, 12(%esp)
	movl	$LC3, 8(%esp)
	movl	$LC19, 4(%esp)
	movl	$LC20, (%esp)
	movl	%edx, 20(%esp)
	call	_initprintf
	movl	_g_sm_heap, %eax
	movl	20(%esp), %edx
	testl	%eax, %eax
	je	L1652
	call	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0
	movl	_g_sm_heap, %esi
	movl	20(%esp), %edx
	testl	%esi, %esi
	je	L1652
	movl	372(%esi), %eax
	testl	%eax, %eax
	je	L1653
	call	_mi_free
	movl	20(%esp), %edx
L1653:
	movl	%esi, %eax
	movl	%edx, 20(%esp)
	call	_mi_free
	movl	20(%esp), %edx
L1652:
	movl	%edx, 20(%esp)
	movl	$LC19, 4(%esp)
	movl	$0, (%esp)
	call	*__imp__FatalAppExitA@8
	.cfi_def_cfa_offset 52
	subl	$8, %esp
	.cfi_def_cfa_offset 60
	movl	20(%esp), %edx
	jmp	L1651
	.cfi_endproc
LFE95:
	.p2align 4
	.globl	_inthash_delete
	.def	_inthash_delete;	.scl	2;	.type	32;	.endef
_inthash_delete:
LFB100:
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
L1685:
	movl	%ebx, %edx
	addl	$1, %eax
	leal	8(%esp), %ecx
	sall	$5, %edx
	addl	%edx, %ebx
	movzbl	-1(%eax), %edx
	xorl	%edx, %ebx
	cmpl	%ecx, %eax
	jne	L1685
	movzbl	12(%edi), %ecx
	movl	8(%edi), %edx
	movl	%ebx, %eax
	shrl	%cl, %eax
	testl	%edx, %edx
	je	L1687
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
L1687:
	imull	4(%edi), %eax
	movl	(%esp), %edi
	subl	%eax, %ebx
	leal	(%ebx,%ebx,2), %eax
	leal	(%edi,%eax,4), %edx
	movl	8(%edx), %eax
	testl	%eax, %eax
	je	L1689
	cmpl	%esi, (%edx)
	jne	L1690
	jmp	L1689
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1693:
	movl	8(%eax), %ecx
	cmpl	%esi, (%eax)
	je	L1702
	movl	%eax, %edx
	movl	%ecx, %eax
L1690:
	cmpl	%eax, %edx
	jne	L1693
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
L1689:
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
L1702:
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
LFE100:
	.p2align 4
	.globl	_inthash_find
	.def	_inthash_find;	.scl	2;	.type	32;	.endef
_inthash_find:
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
L1704:
	movl	%ebx, %edx
	addl	$1, %eax
	leal	8(%esp), %ecx
	sall	$5, %edx
	addl	%edx, %ebx
	movzbl	-1(%eax), %edx
	xorl	%edx, %ebx
	cmpl	%ecx, %eax
	jne	L1704
	movzbl	12(%edi), %ecx
	movl	8(%edi), %edx
	movl	%ebx, %eax
	shrl	%cl, %eax
	testl	%edx, %edx
	je	L1706
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
L1706:
	imull	4(%edi), %eax
	movl	(%esp), %edi
	subl	%eax, %ebx
	leal	(%ebx,%ebx,2), %eax
	leal	(%edi,%eax,4), %edx
	movl	8(%edx), %eax
	testl	%eax, %eax
	je	L1708
	cmpl	%esi, (%edx)
	jne	L1709
	jmp	L1720
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1712:
	cmpl	%esi, (%eax)
	je	L1711
	movl	%eax, %edx
	movl	8(%eax), %eax
L1709:
	cmpl	%eax, %edx
	jne	L1712
L1708:
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
L1711:
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
L1720:
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
LFE101:
	.p2align 4
	.globl	_printext256
	.def	_printext256;	.scl	2;	.type	32;	.endef
_printext256:
LFB102:
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
	subl	$64, %esp
	.cfi_def_cfa_offset 84
	movl	84(%esp), %eax
	movzbl	104(%esp), %ebx
	movl	88(%esp), %esi
	movzwl	92(%esp), %edi
	movl	%eax, 28(%esp)
	movl	100(%esp), %eax
	movzwl	96(%esp), %ebp
	movl	%eax, 24(%esp)
	testb	%bl, %bl
	je	L1746
	movl	$_smalltextfont, 44(%esp)
	movl	$4, 32(%esp)
	cmpl	$4, _rendmode
	je	L1775
L1723:
	movzbl	%bl, %eax
	movswl	%di, %ecx
	movl	%esi, %edx
	movl	%eax, 36(%esp)
	movl	%eax, 8(%esp)
	movl	24(%esp), %eax
	movl	%eax, 4(%esp)
	movswl	%bp, %eax
	movl	%eax, (%esp)
	movl	28(%esp), %eax
	call	__Z21polymost_printtext256iissPKcc
	testl	%eax, %eax
	je	L1721
L1729:
	call	_videoBeginDrawing
	movl	24(%esp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L1728
	leal	28(,%esi,4), %ebx
	movw	%di, 22(%esp)
	xorl	%edx, %edx
	movl	$7, %ecx
	movl	%ebx, 48(%esp)
	subl	36(%esp), %ecx
	movl	%ecx, 52(%esp)
	movl	%edx, %ecx
	.p2align 4
	.p2align 3
L1745:
	cmpb	$94, %al
	jne	L1730
	movl	24(%esp), %edi
	movzbl	1(%edi,%ecx), %ecx
	subl	$48, %ecx
	cmpl	$9, %ecx
	jbe	L1776
L1730:
	movl	32(%esp), %esi
	movl	28(%esp), %ecx
	subl	36(%esp), %ecx
	leal	(%ecx,%esi), %ebx
	cmpl	_xdim, %ebx
	jg	L1728
	movl	48(%esp), %edi
	movl	_ylookup, %ebx
	sall	$3, %eax
	addl	(%ebx,%edi), %ecx
	leal	-1(%esi), %edi
	addl	_frameplace, %ecx
	movl	%edi, 12(%esp)
	movl	44(%esp), %edi
	leal	(%eax,%edi), %esi
	leal	-8(%edi,%eax), %eax
	cmpw	$-1, %bp
	je	L1777
	movl	%eax, 16(%esp)
	movl	52(%esp), %eax
	movl	%edx, 40(%esp)
	movzwl	22(%esp), %edi
	leal	__ZL8pow2char.lto_priv.7(%eax), %ebx
	.p2align 4
	.p2align 3
L1744:
	movl	12(%esp), %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1743:
	movl	%eax, %edx
	negl	%edx
	movzbl	(%ebx,%edx), %edx
	testb	%dl, 7(%esi)
	movl	%edi, %edx
	cmove	%ebp, %edx
	movb	%dl, (%ecx,%eax)
	subl	$1, %eax
	jnb	L1743
	movl	_ylookup, %eax
	subl	$1, %esi
	subl	4(%eax), %ecx
	cmpl	16(%esp), %esi
	jne	L1744
	movw	%di, 22(%esp)
	movl	40(%esp), %edx
L1741:
	movl	32(%esp), %edi
	addl	%edi, 28(%esp)
L1736:
	movl	24(%esp), %eax
	addl	$1, %edx
	movl	%edx, %ecx
	movzbl	(%eax,%edx), %eax
	testb	%al, %al
	jne	L1745
L1728:
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
	jmp	_videoEndDrawing
L1777:
	.cfi_restore_state
	movl	52(%esp), %edi
	movl	%edx, 16(%esp)
	movw	%bp, 40(%esp)
	movl	%eax, %ebp
	leal	__ZL8pow2char.lto_priv.7(%edi), %ebx
	movzwl	22(%esp), %edi
	.p2align 4
	.p2align 3
L1740:
	movl	12(%esp), %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1739:
	movl	%eax, %edx
	negl	%edx
	movzbl	(%ebx,%edx), %edx
	testb	%dl, 7(%esi)
	je	L1738
	movl	%edi, %edx
	movb	%dl, (%ecx,%eax)
L1738:
	subl	$1, %eax
	jnb	L1739
	movl	_ylookup, %eax
	subl	$1, %esi
	subl	4(%eax), %ecx
	cmpl	%ebp, %esi
	jne	L1740
	movl	16(%esp), %edx
	movzwl	40(%esp), %ebp
	movw	%di, 22(%esp)
	jmp	L1741
L1776:
	movzbl	1(%edi,%edx), %eax
	movl	%edx, %esi
	movl	%eax, %ebx
	subl	$48, %eax
	cmpl	$9, %eax
	movl	$0, %eax
	ja	L1731
	addl	%edx, %edi
	movl	%edi, 12(%esp)
	movzwl	22(%esp), %edi
L1733:
	addl	$1, %eax
	movb	%bl, 55(%esp,%eax)
	movl	12(%esp), %ebx
	leal	(%eax,%esi), %edx
	movzbl	1(%ebx,%eax), %ecx
	movl	%ecx, %ebx
	subl	$48, %ecx
	cmpl	$9, %ecx
	ja	L1773
	cmpl	$3, %eax
	jne	L1733
L1773:
	movw	%di, 22(%esp)
L1731:
	movb	$0, 56(%esp,%eax)
	cmpw	$0, 22(%esp)
	je	L1736
	leal	56(%esp), %eax
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 12(%esp)
	call	_strtol
	movl	12(%esp), %edx
	movw	%ax, 22(%esp)
	jmp	L1736
L1746:
	movl	$_textfont, 44(%esp)
	movl	$8, 32(%esp)
	cmpl	$4, _rendmode
	jne	L1723
L1775:
	movl	$3553, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1724
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
L1724:
	movzbl	%bl, %eax
	movl	%esi, %edx
	movswl	%di, %ecx
	movl	%eax, 36(%esp)
	movl	%eax, 8(%esp)
	movl	24(%esp), %eax
	movl	%eax, 4(%esp)
	movswl	%bp, %eax
	movl	%eax, (%esp)
	movl	28(%esp), %eax
	call	__Z21polymost_printtext256iissPKcc
	movl	$3553, %edx
	movl	%eax, %ebx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L1725
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
L1725:
	testl	%ebx, %ebx
	jne	L1729
L1721:
	addl	$64, %esp
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
LFE102:
	.p2align 4
	.globl	__Z20buildgl_setAlphaFuncjf.constprop.0
	.def	__Z20buildgl_setAlphaFuncjf.constprop.0;	.scl	2;	.type	32;	.endef
__Z20buildgl_setAlphaFuncjf.constprop.0:
LFB107:
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
	je	L1782
L1779:
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
L1778:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1782:
	.cfi_restore_state
	movl	$3010, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	%ebx, %eax
	jne	L1779
	jmp	L1778
	.cfi_endproc
LFE107:
	.p2align 4
	.globl	__Z18buildgl_bindBufferjj
	.def	__Z18buildgl_bindBufferjj;	.scl	2;	.type	32;	.endef
__Z18buildgl_bindBufferjj:
LFB108:
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
	je	L1783
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
	jne	L1786
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
L1786:
	.cfi_restore_state
	movl	$1, (%esp)
	movl	%edi, %ecx
	movl	%ebx, %edx
	call	_inthash_add
L1783:
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
LFE108:
	.p2align 4
	.globl	__Z18buildgl_bindBufferjj.constprop.0
	.def	__Z18buildgl_bindBufferjj.constprop.0;	.scl	2;	.type	32;	.endef
__Z18buildgl_bindBufferjj.constprop.0:
LFB109:
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
	je	L1793
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
L1793:
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
LFE109:
	.p2align 4
	.globl	__Z19buildgl_bindTexturejj
	.def	__Z19buildgl_bindTexturejj;	.scl	2;	.type	32;	.endef
__Z19buildgl_bindTexturejj:
LFB110:
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
	je	L1800
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
	jne	L1803
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
L1803:
	.cfi_restore_state
	movl	$1, (%esp)
	movl	%edi, %ecx
	movl	%ebx, %edx
	call	_inthash_add
L1800:
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
LFE110:
	.p2align 4
	.globl	__Z19buildgl_bindTexturejj.constprop.0
	.def	__Z19buildgl_bindTexturejj.constprop.0;	.scl	2;	.type	32;	.endef
__Z19buildgl_bindTexturejj.constprop.0:
LFB111:
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
	je	L1810
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
	jne	L1813
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
L1813:
	.cfi_restore_state
	movl	$1, (%esp)
	movl	%esi, %ecx
	movl	$3553, %edx
	call	_inthash_add
L1810:
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
LFE111:
	.p2align 4
	.globl	__Z20glsurface_setPalettePv.part.0.constprop.0
	.def	__Z20glsurface_setPalettePv.part.0.constprop.0;	.scl	2;	.type	32;	.endef
__Z20glsurface_setPalettePv.part.0.constprop.0:
LFB113:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	cmpl	$33985, _gl+4
	je	L1821
	movl	$33985, _gl+4
	movl	$33985, (%esp)
	call	*_glad_glActiveTexture
	.cfi_def_cfa_offset 36
	subl	$4, %esp
	.cfi_def_cfa_offset 40
L1821:
	movl	__ZL12paletteTexID, %eax
	testl	%eax, %eax
	jne	L1825
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
L1825:
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
LFE113:
	.p2align 4
	.globl	_hicfindsubst
	.def	_hicfindsubst;	.scl	2;	.type	32;	.endef
_hicfindsubst:
LFB116:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%esi, 8(%esp)
	.cfi_offset 6, -16
	movl	_hicreplc(,%eax,4), %esi
	testl	%esi, %esi
	je	L1832
	cmpl	$0, _hicinitcounter
	je	L1832
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
L1830:
	movl	%esi, %eax
	.p2align 4
	.p2align 3
L1829:
	movzbl	32(%eax), %edx
	cmpl	%ebx, %edx
	jne	L1833
	movzbl	3(%esp), %ecx
	cmpb	%cl, 34(%eax)
	je	L1841
L1833:
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L1829
	testl	%ebx, %ebx
	movl	%edi, %edx
	sete	%cl
	xorl	%ebx, %ebx
	orb	%dl, %cl
	je	L1830
L1841:
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
L1832:
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -16
	movl	8(%esp), %esi
	xorl	%eax, %eax
	addl	$20, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE116:
	.p2align 4
	.globl	_hicfindskybox.constprop.0
	.def	_hicfindskybox.constprop.0;	.scl	2;	.type	32;	.endef
_hicfindskybox.constprop.0:
LFB118:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	movl	_hicreplc(,%eax,4), %esi
	testl	%esi, %esi
	je	L1849
	movl	_hicinitcounter, %ecx
	testl	%ecx, %ecx
	je	L1849
	movl	%ebx, (%esp)
	.cfi_offset 3, -12
	movzbl	_tilefilenum(%eax), %ebx
L1847:
	movl	%esi, %eax
	.p2align 4
	.p2align 3
L1846:
	movl	8(%eax), %ecx
	testl	%ecx, %ecx
	je	L1844
	movzbl	32(%eax), %ecx
	cmpl	%edx, %ecx
	jne	L1844
	cmpb	%bl, 34(%eax)
	je	L1856
L1844:
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L1846
	testl	%edx, %edx
	je	L1856
	xorl	%edx, %edx
	jmp	L1847
	.p2align 4,,10
	.p2align 3
L1856:
	movl	(%esp), %ebx
	.cfi_restore 3
	movl	4(%esp), %esi
	addl	$8, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1849:
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -8
	movl	4(%esp), %esi
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE118:
	.p2align 4
	.globl	_hicinit
	.def	_hicinit;	.scl	2;	.type	32;	.endef
_hicinit:
LFB119:
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
L1858:
	xorl	%ecx, %ecx
	movb	$-1, _hictinting+4(,%eax,8)
	movw	%dx, _hictinting+2(,%eax,8)
	movw	%cx, _hictinting(,%eax,8)
	addl	$1, %eax
	cmpl	$256, %eax
	jne	L1858
	movl	_hicinitcounter, %ebx
	testl	%ebx, %ebx
	je	L1859
	movl	$30719, %edi
	.p2align 4
	.p2align 3
L1900:
	movl	_hicreplc(,%edi,4), %eax
	movl	%eax, -80(%ebp)
	testl	%eax, %eax
	je	L1860
	movl	%edi, -116(%ebp)
	jmp	L1899
	.p2align 4,,10
	.p2align 3
L1861:
	movl	-76(%ebp), %eax
	movl	_g_sm_heap, %ecx
	movl	4(%eax), %esi
	cmpl	$16384, %esi
	jbe	L1875
	movl	%esi, %eax
	xorl	%edx, %edx
	subl	12(%ecx), %eax
	divl	4(%ecx)
	movl	%eax, %edi
	cmpl	(%ecx), %eax
	jnb	L1876
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
	je	L1877
	movl	_tlsCacheBuckets@secrel32(%eax), %ecx
	subl	%ecx, %esi
	movl	%ecx, -96(%ebp)
	movzbl	_tlsCacheBuckets@secrel32+60(%eax), %ecx
	movl	%esi, -88(%ebp)
	cmpb	$9, %cl
	jbe	L1938
	movl	_tlsCacheBuckets@secrel32+56(%eax), %ecx
	movl	_tlsCacheBuckets@secrel32+4(%eax), %ebx
	cmpl	%edx, %ecx
	jnb	L1879
	movl	-88(%ebp), %edi
	leal	1(%ecx), %edx
	movl	%edi, (%ebx,%ecx,4)
	movl	_g_sm_heap, %ecx
	movl	%edx, _tlsCacheBuckets@secrel32+56(%eax)
	.p2align 4
	.p2align 3
L1875:
	movl	-76(%ebp), %eax
	cmpl	$16384, %eax
	jbe	L1887
	subl	12(%ecx), %eax
	xorl	%edx, %edx
	divl	4(%ecx)
	movl	%eax, %esi
	cmpl	(%ecx), %eax
	jnb	L1888
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
	je	L1889
	movl	-76(%ebp), %ecx
	movl	_tlsCacheBuckets@secrel32(%eax), %edi
	subl	%edi, %ecx
	movl	%ecx, -76(%ebp)
	movzbl	_tlsCacheBuckets@secrel32+60(%eax), %ecx
	cmpb	$9, %cl
	jbe	L1939
	movl	_tlsCacheBuckets@secrel32+4(%eax), %ebx
	movl	_tlsCacheBuckets@secrel32+56(%eax), %ecx
	movl	%ebx, -88(%ebp)
	cmpl	%edx, %ecx
	jnb	L1891
	movl	-76(%ebp), %edi
	movl	%edi, (%ebx,%ecx,4)
	addl	$1, %ecx
	movl	%ecx, _tlsCacheBuckets@secrel32+56(%eax)
	.p2align 4
	.p2align 3
L1887:
	movl	-80(%ebp), %eax
	testl	%eax, %eax
	je	L1940
L1899:
	movl	-80(%ebp), %ebx
	movl	(%ebx), %edi
	movl	8(%ebx), %eax
	movl	%ebx, -76(%ebp)
	movl	%edi, -80(%ebp)
	testl	%eax, %eax
	je	L1861
	movl	_g_sm_heap, %ecx
	movl	$5, %edi
	jmp	L1874
	.p2align 4,,10
	.p2align 3
L1943:
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
	je	L1864
	movl	_tlsCacheBuckets@secrel32(%eax), %ecx
	subl	%ecx, %esi
	movl	%ecx, -104(%ebp)
	movzbl	_tlsCacheBuckets@secrel32+60(%eax), %ecx
	movl	%esi, -92(%ebp)
	cmpb	$9, %cl
	jbe	L1941
	movl	_tlsCacheBuckets@secrel32+56(%eax), %esi
	movl	%esi, -84(%ebp)
	movl	_tlsCacheBuckets@secrel32+4(%eax), %esi
	movl	%esi, -96(%ebp)
	cmpl	%edx, -84(%ebp)
	jnb	L1866
	movl	-92(%ebp), %ebx
	movl	-84(%ebp), %edx
	movl	%ebx, (%esi,%edx,4)
L1933:
	addl	$1, %edx
	movl	_g_sm_heap, %ecx
	movl	%edx, _tlsCacheBuckets@secrel32+56(%eax)
	movl	-76(%ebp), %eax
	movl	8(%eax), %eax
L1862:
	subl	$1, %edi
	jb	L1942
L1874:
	movl	(%eax,%edi,4), %esi
	cmpl	$16384, %esi
	jbe	L1862
	movl	%esi, %eax
	xorl	%edx, %edx
	subl	12(%ecx), %eax
	divl	4(%ecx)
	movl	%eax, %ebx
	cmpl	(%ecx), %eax
	jb	L1943
	movl	%esi, %eax
	call	_mi_free
L1934:
	movl	-76(%ebp), %eax
	movl	_g_sm_heap, %ecx
	movl	8(%eax), %eax
	subl	$1, %edi
	jnb	L1874
L1942:
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L1861
	.p2align 4,,10
	.p2align 3
L1876:
	movl	%esi, %eax
	call	_mi_free
L1936:
	movl	_g_sm_heap, %ecx
	jmp	L1875
	.p2align 4,,10
	.p2align 3
L1888:
	movl	-76(%ebp), %eax
	call	_mi_free
	movl	-80(%ebp), %eax
	testl	%eax, %eax
	jne	L1899
L1940:
	movl	-116(%ebp), %edi
L1860:
	subl	$1, %edi
	jnb	L1900
	movl	_hicinitcounter, %ebx
L1859:
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
L1864:
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
L1873:
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	-92(%ebp), %esi
	movl	%eax, (%esi)
	movl	%edx, 4(%esi)
	movl	-88(%ebp), %esi
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	lock cmpxchg8b	(%esi)
	je	L1934
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	jmp	L1873
	.p2align 4,,10
	.p2align 3
L1941:
	movl	-96(%ebp), %ebx
	movl	-100(%ebp), %esi
	leal	_tlsCacheBuckets@secrel32(%ebx,%esi), %edx
	movl	-92(%ebp), %ebx
	movl	%ebx, 12(%edx,%ecx,4)
	movl	_g_sm_heap, %ecx
	addb	$1, _tlsCacheBuckets@secrel32+60(%eax)
	movl	-76(%ebp), %eax
	movl	8(%eax), %eax
	jmp	L1862
	.p2align 4,,10
	.p2align 3
L1866:
	movl	-84(%ebp), %esi
	movl	$1, %edx
	shrl	%esi
	je	L1867
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
	jnb	L1902
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
	jnb	L1868
	movl	-100(%ebp), %esi
	subl	-84(%ebp), %esi
	movl	%ebx, -104(%ebp)
	movl	%edi, -84(%ebp)
	leal	16777214(%esi), %edi
	movl	-96(%ebp), %esi
	.p2align 6
	.p2align 4
	.p2align 3
L1869:
	movl	_tlsCacheBuckets@secrel32+4(%eax), %ecx
	leal	(%edi,%edx), %ebx
	movl	(%ecx,%edx,4), %ecx
	movl	%ebx, (%esi)
	addl	$1, %edx
	movl	%ecx, 4(%esi)
	movl	_tlsCacheBuckets@secrel32(%eax), %esi
	addl	%ecx, %esi
	cmpl	_tlsCacheBuckets@secrel32+56(%eax), %edx
	jb	L1869
	movl	-84(%ebp), %edi
	movl	-104(%ebp), %ebx
	movl	%esi, -96(%ebp)
L1868:
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
L1871:
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
	je	L1907
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	jmp	L1871
	.p2align 4,,10
	.p2align 3
L1907:
	movl	__tls_index, %edx
	movl	%edi, %ebx
	movl	-88(%ebp), %esi
	movl	%ebx, %eax
	movl	-108(%ebp), %edi
	sall	$6, %eax
	addl	(%esi,%edx,4), %eax
	movl	_tlsCacheBuckets@secrel32+56(%eax), %edx
	subl	-100(%ebp), %edx
L1867:
	movl	%ebx, %eax
	movl	__tls_index, %esi
	movl	-88(%ebp), %ebx
	sall	$6, %eax
	addl	(%ebx,%esi,4), %eax
	movl	-92(%ebp), %ebx
	movl	_tlsCacheBuckets@secrel32+4(%eax), %ecx
	movl	%ebx, (%ecx,%edx,4)
	jmp	L1933
	.p2align 4,,10
	.p2align 3
L1877:
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
L1935:
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	%edx, -20(%ebp)
	movl	-20(%ebp), %edx
	movl	%eax, (%esi)
	movl	%edx, 4(%esi)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	lock cmpxchg8b	(%edi)
	je	L1936
	jmp	L1935
	.p2align 4,,10
	.p2align 3
L1889:
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
L1937:
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
	je	L1887
	jmp	L1937
	.p2align 4,,10
	.p2align 3
L1939:
	movl	-88(%ebp), %edi
	leal	_tlsCacheBuckets@secrel32(%ebx,%edi), %edx
	movl	-76(%ebp), %edi
	movl	%edi, 12(%edx,%ecx,4)
	addb	$1, _tlsCacheBuckets@secrel32+60(%eax)
	jmp	L1887
	.p2align 4,,10
	.p2align 3
L1938:
	movl	-92(%ebp), %edi
	leal	_tlsCacheBuckets@secrel32(%ebx,%edi), %edx
	movl	%esi, 12(%edx,%ecx,4)
	movl	_g_sm_heap, %ecx
	addb	$1, _tlsCacheBuckets@secrel32+60(%eax)
	jmp	L1875
	.p2align 4,,10
	.p2align 3
L1891:
	movl	%ecx, %ebx
	movl	$1, %edx
	shrl	%ebx
	je	L1892
	movl	%ecx, %edx
	movl	%ebx, -92(%ebp)
	subl	%ebx, %edx
	movl	-88(%ebp), %ebx
	addl	(%ebx,%edx,4), %edi
	movl	%edx, %ebx
	leal	1(%edx), %edx
	movl	%edi, -96(%ebp)
	cmpl	%ecx, %edx
	jnb	L1906
	movl	-88(%ebp), %edx
	movl	-96(%ebp), %edi
	movl	4(%edx,%ebx,4), %edx
	movl	$16777215, (%edi)
	movl	%edx, 4(%edi)
	movl	_tlsCacheBuckets@secrel32(%eax), %edi
	addl	%edx, %edi
	leal	2(%ebx), %edx
	cmpl	_tlsCacheBuckets@secrel32+56(%eax), %edx
	jnb	L1893
	movl	-92(%ebp), %ebx
	movl	%esi, -88(%ebp)
	subl	%ecx, %ebx
	leal	16777214(%ebx), %esi
	.p2align 6
	.p2align 4
	.p2align 3
L1894:
	movl	_tlsCacheBuckets@secrel32+4(%eax), %ecx
	leal	(%esi,%edx), %ebx
	movl	(%ecx,%edx,4), %ecx
	movl	%ebx, (%edi)
	addl	$1, %edx
	movl	%ecx, 4(%edi)
	movl	_tlsCacheBuckets@secrel32(%eax), %edi
	addl	%ecx, %edi
	cmpl	_tlsCacheBuckets@secrel32+56(%eax), %edx
	jb	L1894
	movl	-88(%ebp), %esi
L1893:
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
L1896:
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	-88(%ebp), %ecx
	movl	%eax, (%edi)
	movl	%edx, 4(%edi)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	lock cmpxchg8b	(%esi)
	je	L1911
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	jmp	L1896
L1911:
	movl	-96(%ebp), %esi
	movl	-84(%ebp), %edi
	movl	__tls_index, %ebx
	movl	%esi, %eax
	sall	$6, %eax
	addl	(%edi,%ebx,4), %eax
	movl	_tlsCacheBuckets@secrel32+56(%eax), %edx
	subl	-92(%ebp), %edx
L1892:
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
	jmp	L1887
	.p2align 4,,10
	.p2align 3
L1879:
	movl	%ecx, %esi
	movl	$1, %edx
	shrl	%esi
	je	L1880
	movl	%ecx, %edx
	movl	%esi, -92(%ebp)
	subl	%esi, %edx
	movl	-96(%ebp), %esi
	addl	(%ebx,%edx,4), %esi
	movl	%esi, -96(%ebp)
	movl	%edx, %esi
	addl	$1, %edx
	cmpl	%ecx, %edx
	jnb	L1904
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
	jnb	L1881
	movl	-92(%ebp), %ebx
	movl	%edi, -100(%ebp)
	subl	%ecx, %ebx
	leal	16777214(%ebx), %edi
	.p2align 6
	.p2align 4
	.p2align 3
L1882:
	movl	_tlsCacheBuckets@secrel32+4(%eax), %ecx
	leal	(%edi,%edx), %ebx
	movl	(%ecx,%edx,4), %ecx
	movl	%ebx, (%esi)
	addl	$1, %edx
	movl	%ecx, 4(%esi)
	movl	_tlsCacheBuckets@secrel32(%eax), %esi
	addl	%ecx, %esi
	cmpl	_tlsCacheBuckets@secrel32+56(%eax), %edx
	jb	L1882
	movl	-100(%ebp), %edi
L1881:
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
L1884:
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	-96(%ebp), %esi
	movl	%eax, (%esi)
	movl	%edx, 4(%esi)
	movl	-100(%ebp), %esi
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	lock cmpxchg8b	(%esi)
	je	L1909
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	jmp	L1884
L1909:
	movl	-84(%ebp), %ebx
	movl	__tls_index, %esi
	movl	%edi, %eax
	sall	$6, %eax
	addl	(%ebx,%esi,4), %eax
	movl	_tlsCacheBuckets@secrel32+56(%eax), %edx
	subl	-92(%ebp), %edx
L1880:
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
	jmp	L1875
L1902:
	movl	-112(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	L1868
L1904:
	movl	-96(%ebp), %esi
	jmp	L1881
L1906:
	movl	-96(%ebp), %edi
	jmp	L1893
	.cfi_endproc
LFE119:
	.p2align 4
	.globl	_hicsetsubsttex.isra.0
	.def	_hicsetsubsttex.isra.0;	.scl	2;	.type	32;	.endef
_hicsetsubsttex.isra.0:
LFB121:
	.cfi_startproc
	cmpl	$30719, %eax
	ja	L1964
	cmpl	$255, %edx
	ja	L1964
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
	je	L1967
L1946:
	movl	_hicreplc(,%esi,4), %ebx
	movzbl	_tilefilenum(%esi), %edx
	testl	%ebx, %ebx
	jne	L1950
	jmp	L1947
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1955:
	movl	(%ebx), %ebx
	testl	%ebx, %ebx
	je	L1947
L1950:
	movzbl	32(%ebx), %eax
	cmpl	%ebp, %eax
	jne	L1955
	cmpb	%dl, 34(%ebx)
	jne	L1955
	movl	%ebx, 24(%esp)
	movl	4(%ebx), %eax
L1952:
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
	je	L1953
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 8(%esp)
	call	_strcpy
	movss	12(%esp), %xmm3
	movl	8(%esp), %ecx
	movss	LC7, %xmm1
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
	je	L1968
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
L1967:
	.cfi_restore_state
	call	_hicinit
	jmp	L1946
	.p2align 4,,10
	.p2align 3
L1947:
	movl	$36, (%esp)
	movl	_g_sm_heap, %ecx
	movb	%dl, 8(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 44
	subl	$4, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1951
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
	jmp	L1952
	.p2align 4,,10
	.p2align 3
L1968:
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
L1953:
	.cfi_restore_state
	movl	8(%esp), %eax
	call	__Z13handle_memerri
L1951:
	movl	$36, %eax
	call	__Z13handle_memerri
L1964:
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	ret
	.cfi_endproc
LFE121:
	.p2align 4
	.globl	_hictinting_applypixcolor
	.def	_hictinting_applypixcolor;	.scl	2;	.type	32;	.endef
_hictinting_applypixcolor:
LFB122:
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
	jne	L2003
	movzwl	_hictinting(,%edx,8), %edx
	movl	%edx, %ecx
	andl	$192, %ecx
	movl	%ecx, 4(%esp)
	movl	%edi, %ecx
	testb	%cl, %cl
	jne	L1974
	movl	8(%esp), %ecx
	testb	$1, _glinfo+28
	movl	%ebx, %edi
	cmove	%ecx, %edi
	cmovne	%ecx, %ebx
	movl	%edi, 8(%esp)
L1974:
	testb	$1, %dl
	je	L1975
	movzbl	2(%eax), %edi
	movl	%edi, (%esp)
	movzbl	1(%eax), %edi
	fildl	(%esp)
	fmull	LC22
	movl	%edi, (%esp)
	fildl	(%esp)
	fmull	LC23
	movzbl	(%eax), %edi
	fnstcw	14(%esp)
	movl	%edi, (%esp)
	movzwl	14(%esp), %edi
	faddp	%st, %st(1)
	fildl	(%esp)
	fmull	LC24
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
L1975:
	testb	$2, %dl
	je	L1976
	movzwl	(%eax), %edi
	notb	2(%eax)
	notl	%edi
	movw	%di, (%eax)
L1976:
	andl	$4, %edx
	je	L1973
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
L1973:
	movl	4(%esp), %ecx
	cmpl	$128, %ecx
	je	L1978
	cmpl	$192, %ecx
	je	L1979
	cmpl	$64, %ecx
	jne	L2003
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
L2003:
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
L1979:
	.cfi_restore_state
	movzbl	2(%eax), %edi
	cmpl	$127, %ebx
	jle	L2005
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
	jg	L1988
L2007:
	imull	%esi, %ebx
	movl	8(%esp), %esi
	sarl	$7, %ebx
	movl	%ebx, %edx
	movzbl	(%eax), %ebx
	movb	%dl, 1(%eax)
	cmpl	$127, %esi
	jg	L1990
L2008:
	imull	%esi, %ebx
	sarl	$7, %ebx
	movl	%ebx, %edx
	movb	%dl, (%eax)
L2006:
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
L1978:
	.cfi_restore_state
	movzbl	2(%eax), %edi
	movl	%edi, %edx
	testb	%dl, %dl
	js	L1980
	imull	%ebx, %edi
	movzbl	1(%eax), %ebx
	movl	%edi, %edx
	sarl	$7, %edx
	movb	%dl, 2(%eax)
	testb	%bl, %bl
	js	L1982
L2009:
	imull	%esi, %ebx
	movl	%ebx, %edx
	sarl	$7, %edx
	movb	%dl, 1(%eax)
	movzbl	(%eax), %edx
	testb	%dl, %dl
	js	L1984
L2010:
	imull	8(%esp), %edx
	sarl	$7, %edx
	movb	%dl, (%eax)
	jmp	L2006
	.p2align 4,,10
	.p2align 3
L2005:
	imull	%ebx, %edi
	movzbl	1(%eax), %ebx
	movl	%edi, %edx
	sarl	$7, %edx
	movb	%dl, 2(%eax)
	cmpl	$127, %esi
	jle	L2007
L1988:
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
	jle	L2008
L1990:
	movl	$255, %esi
	movl	%esi, %edx
	subl	8(%esp), %esi
	subl	%ebx, %edx
	imull	%esi, %edx
	sarl	$7, %edx
	notl	%edx
	movb	%dl, (%eax)
	jmp	L2006
	.p2align 4,,10
	.p2align 3
L1980:
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
	jns	L2009
L1982:
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
	jns	L2010
L1984:
	movl	$255, %esi
	movl	%esi, %ebx
	subl	8(%esp), %esi
	subl	%edx, %ebx
	imull	%esi, %ebx
	movl	%ebx, %edx
	sarl	$7, %edx
	notl	%edx
	movb	%dl, (%eax)
	jmp	L2006
	.cfi_endproc
LFE122:
	.p2align 4
	.globl	_hicclearsubst.part.0.isra.0
	.def	_hicclearsubst.part.0.isra.0;	.scl	2;	.type	32;	.endef
_hicclearsubst.part.0.isra.0:
LFB124:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -20
	movl	_hicreplc(,%eax,4), %ebx
	testl	%ebx, %ebx
	je	L2011
	movl	%edi, 12(%esp)
	movl	%eax, %ecx
	.cfi_offset 7, -12
	xorl	%edi, %edi
	movl	%esi, 8(%esp)
	.cfi_offset 6, -16
	movzbl	_tilefilenum(%eax), %esi
	jmp	L2015
	.p2align 5
	.p2align 4,,10
	.p2align 3
L2022:
	movl	(%ebx), %eax
	movl	%ebx, %edi
	testl	%eax, %eax
	je	L2032
	movl	%eax, %ebx
L2015:
	movzbl	32(%ebx), %eax
	cmpl	%edx, %eax
	jne	L2022
	movl	%esi, %eax
	cmpb	%al, 34(%ebx)
	jne	L2022
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
	je	L2019
	.p2align 4
	.p2align 3
L2016:
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
	jne	L2016
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
L2019:
	movl	(%ebx), %eax
	testl	%edi, %edi
	je	L2017
	movl	%eax, (%edi)
L2018:
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
L2011:
	movl	4(%esp), %ebx
	addl	$20, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2017:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%eax, _hicreplc(,%ebp,4)
	jmp	L2018
	.p2align 4,,10
	.p2align 3
L2032:
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
LFE124:
	.p2align 4
	.globl	_hicsetskybox.part.0.isra.0
	.def	_hicsetskybox.part.0.isra.0;	.scl	2;	.type	32;	.endef
_hicsetskybox.part.0.isra.0:
LFB126:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movl	%ebp, 44(%esp)
	.cfi_offset 5, -8
	movl	%eax, %ebp
	leal	20(%ecx), %eax
	cmpl	$0, (%eax)
	je	L2033
L2066:
	cmpl	%eax, %ecx
	je	L2065
	subl	$4, %eax
	cmpl	$0, (%eax)
	jne	L2066
L2033:
	movl	44(%esp), %ebp
	addl	$48, %esp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2065:
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
	je	L2067
L2036:
	movl	_hicreplc(,%ebp,4), %ebx
	movzbl	_tilefilenum(%ebp), %edx
	testl	%ebx, %ebx
	jne	L2040
	jmp	L2037
	.p2align 4
	.p2align 4,,10
	.p2align 3
L2052:
	movl	(%ebx), %ebx
	testl	%ebx, %ebx
	je	L2037
L2040:
	movzbl	32(%ebx), %eax
	cmpl	%esi, %eax
	jne	L2052
	cmpb	%dl, 34(%ebx)
	jne	L2052
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	L2051
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L2045:
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
	jne	L2045
	movl	%ebx, %edi
L2044:
	movl	%ebx, 20(%esp)
	xorl	%esi, %esi
	movl	%edi, 24(%esp)
	movl	%eax, 8(%esp)
	movl	%ebp, 28(%esp)
L2049:
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
	je	L2046
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
	je	L2068
	movl	20(%esp), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%esp)
	jmp	L2049
	.p2align 4,,10
	.p2align 3
L2068:
	movl	24(%esp), %edx
	movl	20(%esp), %ebx
	movss	LC7, %xmm0
	movl	52(%esp), %eax
	testl	%edx, %edx
	movl	28(%esp), %ebp
	movb	%al, 33(%ebx)
	movss	%xmm0, 12(%ebx)
	movss	%xmm0, 16(%ebx)
	je	L2069
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
L2046:
	.cfi_restore_state
	movl	%ebx, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L2067:
	call	_hicinit
	jmp	L2036
	.p2align 4,,10
	.p2align 3
L2069:
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
L2037:
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
	je	L2041
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
L2042:
	movl	$24, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 48
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	testl	%eax, %eax
	je	L2043
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	movl	$0, 20(%eax)
	movl	%eax, 8(%ebx)
	jmp	L2044
L2041:
	movl	$36, %eax
	call	__Z13handle_memerri
L2043:
	movl	$24, %eax
	call	__Z13handle_memerri
L2051:
	movl	%ebx, %edi
	jmp	L2042
	.cfi_endproc
LFE126:
	.p2align 4
	.globl	__ZL17suckbitsnextblockv.lto_priv.0
	.def	__ZL17suckbitsnextblockv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL17suckbitsnextblockv.lto_priv.0:
LFB127:
	.cfi_startproc
	movl	__ZL10zipfilmode.lto_priv.0, %eax
	testl	%eax, %eax
	jne	L2079
	movl	__ZL7nfilptr, %edx
	movl	__ZL6bitpos.lto_priv.0, %eax
	testl	%edx, %edx
	je	L2073
	movl	%edx, __ZL6filptr.lto_priv.0
	movl	__ZL7nbitpos, %edx
	movl	$0, __ZL7nfilptr
	leal	-32(,%edx,8), %edx
	subl	%edx, %eax
	movl	%eax, __ZL6bitpos.lto_priv.0
	ret
	.p2align 4,,10
	.p2align 3
L2073:
	movl	__ZL6filptr.lto_priv.0, %edx
	movl	8(%edx), %ecx
	bswap	%ecx
	movl	%ecx, __ZL7nbitpos
	leal	12(%edx,%ecx), %ecx
	movl	%ecx, __ZL7nfilptr
	movl	(%edx), %ecx
	movl	%ecx, __ZL7fakebuf
	cmpl	$1413563465, 12(%edx)
	jne	L2074
	movl	16(%edx), %edx
	movl	%edx, __ZL7fakebuf+4
L2074:
	movl	$__ZL7fakebuf+4, __ZL6filptr.lto_priv.0
	subl	$32, %eax
	movl	%eax, __ZL6bitpos.lto_priv.0
	ret
	.p2align 4,,10
	.p2align 3
L2079:
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
LFE127:
	.p2align 4
	.globl	__ZL9hufgetsymPiPKi.lto_priv.0
	.def	__ZL9hufgetsymPiPKi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL9hufgetsymPiPKi.lto_priv.0:
LFB128:
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
L2082:
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
	js	L2081
	call	__ZL17suckbitsnextblockv.lto_priv.0
L2081:
	leal	(%esi,%ebp), %eax
	addl	(%edi), %eax
	addl	$4, %edi
	movl	%eax, %edx
	subl	(%edi), %edx
	testl	%edx, %edx
	jns	L2082
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
LFE128:
	.p2align 4
	.globl	__ZL11qhufgencodePKiS0_PiPhi.lto_priv.0
	.def	__ZL11qhufgencodePKiS0_PiPhi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL11qhufgencodePKiS0_PiPhi.lto_priv.0:
LFB131:
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
L2089:
	movl	16(%esp), %edx
	movl	-4(%edx,%ebx,4), %ecx
	cmpl	(%edx,%ebx,4), %ecx
	jge	L2086
	movl	-4(%eax), %esi
	movl	%eax, 24(%esp)
	movl	%ebx, %edx
	movl	%ebx, 12(%esp)
	movl	%esi, 20(%esp)
	movl	32(%esp), %esi
	leal	(%esi,%ecx,4), %esi
	.p2align 4
	.p2align 3
L2088:
	movl	20(%esp), %eax
	movl	%ecx, 8(%esp)
	addl	%ebp, %eax
	movl	%eax, (%esp)
	.p2align 4
	.p2align 3
L2087:
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
	jge	L2087
	movl	8(%esp), %ecx
	movl	16(%esp), %eax
	addl	$4, %esi
	movl	12(%esp), %ebx
	addl	$1, %ecx
	cmpl	%ecx, (%eax,%ebx,4)
	jg	L2088
	movl	24(%esp), %eax
L2086:
	addl	$1, %ebx
	subl	$4, %eax
	cmpl	28(%esp), %ebx
	jne	L2089
	movl	60(%esp), %eax
	movl	__ZL8pow2mask.lto_priv.0(,%eax,4), %edx
	cmpl	%ebp, %edx
	jl	L2085
	.p2align 4
	.p2align 3
L2091:
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
	jge	L2091
L2085:
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
LFE131:
	.p2align 4
	.globl	__ZL10hufgencodePKiiPiS1_.lto_priv.0
	.def	__ZL10hufgencodePKiiPiS1_.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL10hufgencodePKiiPiS1_.lto_priv.0:
LFB132:
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
L2098:
	movl	$0, 4(%esp,%eax)
	movl	$0, 8(%esp,%eax)
	movl	$0, 12(%esp,%eax)
	movl	$0, 16(%esp,%eax)
	addl	$16, %eax
	cmpl	$112, %eax
	jb	L2098
	leal	-4(%esi), %ecx
	movl	$0, 4(%esp,%eax)
	movl	$0, 8(%esp,%eax)
	movl	$0, 12(%esp,%eax)
	leal	(%ecx,%edi,4), %eax
	.p2align 4
	.p2align 4
	.p2align 3
L2100:
	movl	(%eax), %edx
	subl	$4, %eax
	addl	$1, 4(%esp,%edx,4)
	cmpl	%eax, %ecx
	jne	L2100
	movl	$0, (%ebx)
	leal	4(%esp), %edx
	leal	4(%ebx), %ecx
	xorl	%eax, %eax
	movl	$0, 4(%esp)
	leal	116(%esp), %ebp
	.p2align 6
	.p2align 4
	.p2align 3
L2101:
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
	jne	L2101
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
L2103:
	movl	(%esi,%eax,4), %edx
	testl	%edx, %edx
	je	L2102
	leal	(%ebx,%edx,4), %ecx
	movl	(%ecx), %edx
	leal	1(%edx), %ebp
	movl	%ebp, (%ecx)
	movl	(%esp), %ecx
	movl	%eax, (%ecx,%edx,4)
L2102:
	addl	$1, %eax
	cmpl	%eax, %edi
	jne	L2103
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
LFE132:
	.p2align 4
	.globl	__ZL13initpngtablesv.lto_priv.0
	.def	__ZL13initpngtablesv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL13initpngtablesv.lto_priv.0:
LFB133:
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
L2113:
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
	jne	L2113
	xorl	%ecx, %ecx
	movl	$3, %ebx
	movl	$257, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L2114:
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
	jne	L2114
	xorl	%eax, %eax
	movl	$258, %edx
	movl	%eax, __ZL5hxbit.lto_priv.0+464
	xorl	%eax, %eax
	movl	%edx, __ZL5hxbit.lto_priv.0+468
	movl	$512, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L2115:
	movl	%eax, abstab10(,%edx,4)
	movl	%eax, abstab10+2048(,%eax,4)
	addl	$1, %eax
	subl	$1, %edx
	jne	L2115
	movl	-12(%ebp), %ebx
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE133:
	.p2align 4
	.globl	__ZL7istargaPKhi.lto_priv.0
	.def	__ZL7istargaPKhi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL7istargaPKhi.lto_priv.0:
LFB134:
	.cfi_startproc
	cmpl	$18, %edx
	jle	L2136
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	cmpb	$1, 1(%eax)
	jbe	L2137
L2123:
	xorl	%eax, %eax
L2120:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2136:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L2137:
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movzbl	2(%eax), %ecx
	cmpb	$11, %cl
	ja	L2123
	movl	$3598, %eax
	sarl	%cl, %eax
	andl	$1, %eax
	je	L2120
	movzbl	16(%ebx), %eax
	testb	$7, %al
	jne	L2123
	subl	$1, %eax
	cmpb	$31, %al
	ja	L2123
	xorl	%eax, %eax
	cmpb	$63, 17(%ebx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	setbe	%al
	ret
	.cfi_endproc
LFE134:
	.section	.text.unlikely,"x"
LCOLDB34:
	.text
LHOTB34:
	.p2align 4
	.globl	_kprender
	.def	_kprender;	.scl	2;	.type	32;	.endef
_kprender:
LFB135:
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
	je	L2956
	cmpw	$-9985, %ax
	je	L2957
	movl	92(%esp), %eax
	movl	%ebx, -12(%ebp)
	.cfi_offset 3, -20
	movzbl	(%eax), %ebx
	cmpb	$71, %bl
	je	L2958
	cmpb	$66, %bl
	jne	L2304
	movl	92(%esp), %eax
	cmpb	$77, 1(%eax)
	je	L2959
L2304:
	movl	92(%esp), %eax
	cmpl	$134284554, (%eax)
	je	L2960
	movl	92(%esp), %edi
	movl	%edi, %eax
	call	__ZL7istargaPKhi.lto_priv.0
	testb	$1, %al
	je	L2920
	cmpl	$18, %edx
	jle	L2920
	movzbl	1(%edi), %eax
	movb	%al, 100(%esp)
	cmpb	$1, %al
	ja	L2920
	movzbl	2(%edi), %esi
	movl	%esi, %ecx
	cmpb	$11, %cl
	ja	L2920
	movl	$3598, %edx
	sarl	%cl, %edx
	andl	$1, %edx
	movl	%edx, 64(%esp)
	je	L2920
	movzbl	16(%edi), %edx
	leal	-1(%edx), %ecx
	cmpb	$31, %cl
	ja	L2920
	testb	$7, %dl
	jne	L2920
	movzbl	17(%edi), %ecx
	cmpb	$63, %cl
	ja	L2920
	movzwl	12(%edi), %eax
	movl	%eax, 108(%esp)
	testl	%eax, %eax
	je	L2920
	movzwl	14(%edi), %eax
	movl	%eax, 60(%esp)
	testl	%eax, %eax
	je	L2920
	addl	$7, %edx
	leal	18(%edi,%ebx), %edi
	movzbl	%dl, %edx
	sarl	$3, %edx
	movl	%edx, 80(%esp)
	cmpb	$1, 100(%esp)
	je	L2433
	cmpl	$4, %edx
	je	L2526
	cmpl	$1, %edx
	jne	L2527
	movl	$0, 72(%esp)
L2436:
	movb	$0, __ZL8kcoltype
	movl	64(%esp), %edx
	movl	$-16777216, %eax
	movb	$8, __ZL8bitdepth
	movl	$-16777216, palcol
	.p2align 5
	.p2align 4
	.p2align 3
L2439:
	addl	$65793, %eax
	movl	%eax, palcol(,%edx,4)
	addl	$1, %edx
	cmpl	$256, %edx
	jne	L2439
	movl	92(%esp), %eax
	movl	64(%esp), %ebx
	movzbl	17(%eax), %ecx
	movzbl	2(%eax), %esi
L2438:
	testb	$16, %cl
	je	L2440
L2972:
	movl	108(%esp), %eax
	subl	$1, %eax
	andl	$32, %ecx
	movl	%eax, 56(%esp)
	je	L2528
	movl	%esi, %eax
	movl	$-1, 108(%esp)
	cmpb	$8, %al
	movl	$-1, 100(%esp)
	movl	$0, 52(%esp)
	sbbl	%eax, %eax
	subl	$1, %eax
L2442:
	cmpl	$1, 80(%esp)
	je	L2876
L2973:
	movl	%eax, 96(%esp)
	cmpl	$1, %ebx
	je	L2877
	movl	%ebx, %esi
	movl	52(%esp), %ebx
	.p2align 4
	.p2align 3
L2458:
	cmpl	68(%esp), %ebx
	movl	56(%esp), %ecx
	movl	%ebx, 52(%esp)
	movl	96(%esp), %eax
	setb	84(%esp)
	jmp	L2457
	.p2align 4,,10
	.p2align 3
L2446:
	subl	$1, %eax
	cmpl	104(%esp), %ecx
	jnb	L2456
	cmpb	$0, 84(%esp)
	je	L2456
L2452:
	movl	88(%esp), %ebx
	movl	%edx, (%ebx,%ecx,4)
L2456:
	addl	100(%esp), %ecx
	cmpl	%ecx, 108(%esp)
	je	L2932
L2457:
	cmpl	$127, %eax
	jg	L2446
	movl	%ecx, 96(%esp)
L2454:
	movl	%eax, %ecx
	notl	%ecx
	andl	$127, %ecx
	jne	L2447
	movzbl	(%edi), %eax
	addl	$1, %edi
L2447:
	movl	92(%esp), %ebx
	movl	%edi, %ecx
	cmpb	$1, 1(%ebx)
	jne	L2448
	movzwl	(%edi), %edx
	movl	%esi, %ecx
	imull	%edx, %ecx
	addl	72(%esp), %ecx
L2448:
	cmpl	$3, %esi
	je	L2449
	cmpl	$4, %esi
	je	L2450
	cmpl	$2, %esi
	jne	L2451
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
L2451:
	addl	80(%esp), %edi
	testl	%eax, %eax
	js	L2961
	movl	96(%esp), %ecx
	jmp	L2446
L2958:
	cmpb	$73, 1(%eax)
	jne	L2304
	cmpb	$70, 2(%eax)
	jne	L2304
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
	jne	L2306
L2311:
	cmpb	$-7, 1(%eax)
	je	L2962
L2308:
	addl	$2, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L2310:
	movzbl	(%eax), %ecx
	leal	1(%eax,%ecx), %eax
	testb	%cl, %cl
	jne	L2310
	movzbl	(%eax), %edx
	cmpb	$33, %dl
	je	L2311
L2306:
	cmpb	$44, %dl
	jne	L2920
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
	jns	L2313
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
L2313:
	movl	%edi, %edx
	xorl	%ecx, %ecx
L2314:
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
	jne	L2314
	cmpl	$256, %esi
	je	L2315
	testl	$1, %esi
	je	L2316
	movl	$-16777216, palcol(,%esi,4)
	addl	$1, %esi
	cmpl	$256, %esi
	je	L2315
L2316:
	movl	$-16777216, palcol(,%esi,4)
	movl	$-16777216, palcol+4(,%esi,4)
	addl	$2, %esi
	cmpl	$256, %esi
	jne	L2316
L2315:
	movl	96(%esp), %eax
	cmpl	$-1, %eax
	je	L2317
	andl	$16777215, palcol(,%eax,4)
L2317:
	movzwl	64(%esp), %eax
	orw	80(%esp), %ax
	jne	L2318
	movl	92(%esp), %edi
	movzwl	6(%edi), %eax
	cmpl	84(%esp), %eax
	jne	L2318
	movzwl	8(%edi), %eax
	cmpl	72(%esp), %eax
	jne	L2318
	movl	$0, 36(%esp)
	xorl	%eax, %eax
	movl	$0, 92(%esp)
	movl	$0, 44(%esp)
L2319:
	cmpl	68(%esp), %eax
	jnb	L2321
	movl	76(%esp), %eax
	imull	92(%esp), %eax
	addl	88(%esp), %eax
	movl	44(%esp), %edi
	movl	%eax, 100(%esp)
	movl	84(%esp), %eax
	movl	%eax, 48(%esp)
L2322:
	movzbl	(%ebx), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movb	%cl, 30(%esp)
	movl	%eax, 60(%esp)
	subl	$1, %eax
	js	L2323
L2324:
	movl	%eax, __ZL6prefix(,%eax,4)
	movb	%al, __ZL6suffix(%eax)
	subl	$1, %eax
	jnb	L2324
L2323:
	leal	2(%ebx), %esi
	movzbl	1(%ebx), %ebx
	movl	$__ZL9filbuffer, %ecx
	movl	%esi, %edx
	cmpl	$16, %ebx
	jnb	L2963
L2325:
	movl	%ebx, %eax
	andl	$15, %eax
	movl	%eax, 96(%esp)
	je	L2329
	movl	%ebx, 80(%esp)
	xorl	%eax, %eax
L2328:
	movzbl	(%edx,%eax), %ebx
	movb	%bl, (%ecx,%eax)
	addl	$1, %eax
	cmpl	96(%esp), %eax
	jb	L2328
	movl	80(%esp), %ebx
L2329:
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
L2330:
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
	jle	L2964
L2331:
	movl	64(%esp), %esi
	cmpl	%esi, 60(%esp)
	je	L2515
	movl	56(%esp), %eax
	cmpl	80(%esp), %eax
	jne	L2340
	movzbl	52(%esp), %ecx
	cmpb	$11, %cl
	setbe	%dl
	addl	%edx, %ecx
	testb	%dl, %dl
	movb	%cl, 52(%esp)
	leal	(%eax,%eax), %ecx
	cmove	%eax, %ecx
	movl	%ecx, 56(%esp)
L2340:
	movl	64(%esp), %edx
	movl	80(%esp), %eax
	movl	60(%esp), %esi
	movl	%edx, __ZL6prefix(,%eax,4)
	movl	%edx, %eax
	xorl	%edx, %edx
	cmpl	%eax, %esi
	jg	L2341
L2342:
	movzbl	__ZL6suffix(%eax), %ecx
	movl	__ZL6prefix(,%eax,4), %eax
	addl	$1, %edx
	movb	%cl, __ZL9tempstack-1(%edx)
	cmpl	%eax, %esi
	jle	L2342
	movl	%eax, 64(%esp)
L2341:
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
	jmp	L2352
	.p2align 4,,10
	.p2align 3
L2344:
	subl	$1, %edx
	jb	L2965
L2352:
	cmpl	%ecx, %edi
	jnb	L2343
	movzbl	__ZL9tempstack(%edx), %esi
	movl	100(%esp), %ebx
	movl	palcol(,%esi,4), %esi
	movl	%esi, (%ebx,%edi,4)
L2343:
	addl	$1, %edi
	cmpl	%edi, %eax
	jne	L2344
	movl	96(%esp), %edi
	cmpl	%edi, 72(%esp)
	jg	L2349
	movl	108(%esp), %eax
	cmpl	$4, %eax
	je	L2347
	jg	L2348
	subl	$1, %eax
	cmpl	$1, %eax
	jbe	L2301
L2349:
	movl	96(%esp), %esi
L2346:
	cmpl	68(%esp), %esi
	jnb	L2351
	movl	76(%esp), %eax
	movl	44(%esp), %edi
	imull	%esi, %eax
	addl	108(%esp), %esi
	addl	88(%esp), %eax
	movl	%eax, 100(%esp)
	movl	84(%esp), %eax
	movl	%esi, 96(%esp)
	jmp	L2344
L2956:
	.cfi_restore 3
	cmpb	$0, __ZL9pnginited.lto_priv.0
	je	L2966
L2140:
	movl	92(%esp), %eax
	cmpl	$1196314761, (%eax)
	jne	L2141
	cmpl	$169478669, 4(%eax)
	jne	L2141
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
	jmp	L2222
	.p2align 4,,10
	.p2align 3
L2142:
	cmpl	$1163152464, %eax
	je	L2202
	cmpl	$1145523042, %eax
	je	L2967
L2182:
	cmpl	$1397641844, %eax
	je	L2968
L2205:
	cmpl	$1413563465, %eax
	je	L2221
L2167:
	leal	4(%edi,%esi), %ebx
	movl	%ebx, __ZL6filptr.lto_priv.0
L2222:
	movl	(%ebx), %eax
	leal	8(%ebx), %edi
	movl	%edi, __ZL6filptr.lto_priv.0
	bswap	%eax
	movl	%eax, %esi
	movl	4(%ebx), %eax
	cmpl	$1380206665, %eax
	jne	L2142
L2201:
	movl	8(%ebx), %eax
	bswap	%eax
	movl	%eax, 84(%esp)
	testl	%eax, %eax
	jle	L2969
	movl	12(%ebx), %eax
	bswap	%eax
	movl	%eax, 80(%esp)
	testl	%eax, %eax
	jle	L2970
	movsbl	16(%ebx), %ecx
	movl	$278, %eax
	btl	%ecx, %eax
	movb	%cl, 100(%esp)
	jnc	L2971
	movzbl	17(%ebx), %edx
	movl	$93, %eax
	btl	%edx, %eax
	movb	%dl, 108(%esp)
	jnc	L2166
	cmpb	$0, 18(%ebx)
	jne	L2166
	cmpb	$0, 19(%ebx)
	jne	L2166
	movzbl	20(%ebx), %eax
	cmpb	$1, %al
	ja	L2166
	negl	%eax
	movb	$1, 92(%esp)
	andl	$7, %eax
	movl	%eax, 72(%esp)
	testb	$-5, 108(%esp)
	jne	L2167
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, 96(%esp)
	leal	-1(%eax), %ebx
	cmpl	%ebx, _lastd_s32
	je	L2168
	cmpl	$16383, %ebx
	jbe	L2168
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
	jne	L2169
	movl	%ebx, %eax
	xorl	%edx, %edx
	sarl	$24, %eax
	andl	$-128, %eax
	orb	92(%esp), %al
L2170:
	movl	%edx, _divtable32
	movb	%al, _divtable32+4
L2168:
	xorl	%eax, %eax
	cmpl	$16383, %ebx
	cmova	%eax, %ebx
	leal	(%ebx,%ebx,4), %eax
	movzbl	_divtable32+4(%eax), %ebx
	movl	_divtable32(%eax), %edx
	movl	%ebx, %ecx
	andl	$31, %ecx
	testl	%edx, %edx
	jne	L2173
	movl	$255, %edx
	sarb	$7, %bl
	sarl	%cl, %edx
	movsbl	%bl, %eax
	movl	%edx, %ecx
	xorl	%eax, %ecx
	subl	%eax, %ecx
L2174:
	movl	96(%esp), %edx
	testl	%edx, %edx
	jle	L2178
	imull	$65793, %ecx, %ecx
	movl	96(%esp), %ebx
	xorl	%eax, %eax
	movl	$-16777216, %edx
	.p2align 4
	.p2align 4
	.p2align 3
L2177:
	movl	%edx, palcol(,%eax,4)
	addl	$1, %eax
	addl	%ecx, %edx
	cmpl	%eax, %ebx
	jne	L2177
L2178:
	movb	$1, 64(%esp)
	movb	$1, 92(%esp)
	jmp	L2167
L2166:
	cmpb	$0, 64(%esp)
	je	L2488
	movl	96(%esp), %eax
	movl	%eax, __ZL6paleng
L2488:
	movzbl	108(%esp), %eax
	movb	%al, __ZL8kcoltype
	movzbl	100(%esp), %eax
	movb	%al, __ZL8bitdepth
	movl	80(%esp), %eax
	movl	%eax, __ZL4ysiz
	movl	84(%esp), %eax
	movl	%eax, __ZL4xsiz
	cmpb	$0, 56(%esp)
	je	L2489
	movl	60(%esp), %eax
	movl	%eax, __ZL6bakcol
L2489:
	cmpb	$0, 92(%esp)
	je	L2920
L2923:
	movl	72(%esp), %eax
	movl	-12(%ebp), %ebx
	.cfi_restore 3
	movl	%eax, _intlac
L2141:
	movl	-8(%ebp), %esi
	movl	-4(%ebp), %edi
	movl	$-1, %eax
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 6
	.cfi_def_cfa 4, 4
	ret
L2526:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$0, 72(%esp)
L2434:
	movb	$6, __ZL8kcoltype
	movl	$4, %ebx
	xorl	%edx, %edx
L2981:
	testb	$16, %cl
	jne	L2972
L2440:
	andl	$32, %ecx
	je	L2530
	movl	64(%esp), %eax
	movl	$0, 56(%esp)
	movl	$0, 52(%esp)
	movl	%eax, 100(%esp)
	movl	%esi, %eax
	cmpb	$8, %al
	sbbl	%eax, %eax
	subl	$1, %eax
	cmpl	$1, 80(%esp)
	jne	L2973
L2876:
	movl	%ebx, 84(%esp)
	movl	88(%esp), %esi
	movl	52(%esp), %ebx
	.p2align 4
	.p2align 3
L2444:
	cmpl	68(%esp), %ebx
	movl	56(%esp), %ecx
	movl	%ebx, 80(%esp)
	setb	96(%esp)
	jmp	L2487
	.p2align 4,,10
	.p2align 3
L2472:
	subl	$1, %eax
	cmpl	104(%esp), %ecx
	jnb	L2486
	cmpb	$0, 96(%esp)
	je	L2486
L2482:
	movl	%edx, (%esi,%ecx,4)
L2486:
	addl	100(%esp), %ecx
	cmpl	108(%esp), %ecx
	je	L2974
L2487:
	cmpl	$127, %eax
	jg	L2472
	movl	%esi, 88(%esp)
L2484:
	movl	%eax, %ebx
	notl	%ebx
	andl	$127, %ebx
	jne	L2473
	movzbl	(%edi), %eax
	addl	$1, %edi
L2473:
	movl	92(%esp), %esi
	movl	%edi, %ebx
	cmpb	$1, 1(%esi)
	jne	L2474
	movzbl	(%edi), %edx
	movl	84(%esp), %ebx
	imull	%edx, %ebx
	addl	72(%esp), %ebx
L2474:
	movl	84(%esp), %esi
	cmpl	$3, %esi
	je	L2475
	jg	L2476
	cmpl	$1, %esi
	je	L2477
	cmpl	$2, %esi
	jne	L2479
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
L2479:
	addl	$1, %edi
	testl	%eax, %eax
	js	L2975
	movl	88(%esp), %esi
	jmp	L2472
L2966:
	.cfi_restore 3
	movb	$1, __ZL9pnginited.lto_priv.0
	call	__ZL13initpngtablesv.lto_priv.0
	jmp	L2140
	.p2align 4,,10
	.p2align 3
L2961:
	.cfi_offset 3, -20
	movl	104(%esp), %ecx
	cmpl	%ecx, 96(%esp)
	jnb	L2536
	cmpb	$0, 84(%esp)
	je	L2536
	movl	96(%esp), %ecx
	jmp	L2452
	.p2align 4,,10
	.p2align 3
L2536:
	movl	100(%esp), %ebx
	addl	%ebx, 96(%esp)
	movl	108(%esp), %ebx
	cmpl	%ebx, 96(%esp)
	jne	L2454
	.p2align 4
	.p2align 3
L2932:
	movl	%eax, 96(%esp)
	movl	52(%esp), %ebx
	movl	76(%esp), %eax
	addl	64(%esp), %ebx
	addl	%eax, 88(%esp)
	cmpl	%ebx, 60(%esp)
	jne	L2458
L2301:
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
L2449:
	.cfi_restore_state
	movl	(%ecx), %edx
	orl	$-16777216, %edx
	jmp	L2451
	.p2align 4,,10
	.p2align 3
L2450:
	movl	(%ecx), %edx
	jmp	L2451
	.p2align 4,,10
	.p2align 3
L2967:
	movzbl	108(%esp), %eax
	cmpb	$6, %al
	ja	L2167
	jmp	*L2184(,%eax,4)
	.section .rdata,"dr"
	.align 4
L2184:
	.long	L2185
	.long	L2167
	.long	L2183
	.long	L2203
	.long	L2185
	.long	L2167
	.long	L2183
	.text
L2499:
	movb	$0, 108(%esp)
L2185:
	movzwl	8(%ebx), %eax
	movzbl	100(%esp), %ecx
	rolw	$8, %ax
	movzwl	%ax, %eax
	movl	%eax, 60(%esp)
	movl	$1, %eax
	sall	%cl, %eax
	leal	-1(%eax), %ebx
	cmpl	%ebx, _lastd_s32
	je	L2187
	cmpl	$16383, %ebx
	jbe	L2187
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
	je	L2976
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
	jnb	L2190
	leal	-1(%ecx), %eax
L2191:
	movl	40(%esp), %edx
	movl	%eax, %ecx
	orl	$-128, %ecx
	addl	$1, %edx
	testl	%ebx, %ebx
	cmovs	%ecx, %eax
	movl	40(%esp), %ecx
	notl	%ecx
	cmovs	%ecx, %edx
	jmp	L2189
L2183:
	cmpb	$8, 100(%esp)
	jne	L2195
L2215:
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
	jmp	L2167
L2977:
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
	je	L2201
	cmpl	$1163152464, %eax
	je	L2202
	cmpl	$1145523042, %eax
	jne	L2212
L2203:
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
	je	L2492
	cmpl	$1163152464, %eax
	je	L2493
	cmpl	$1145523042, %eax
	je	L2203
	movl	%edx, 60(%esp)
	movb	$3, 108(%esp)
	movb	$1, 56(%esp)
	jmp	L2182
	.p2align 4,,10
	.p2align 3
L2968:
	movzbl	108(%esp), %eax
	cmpb	$2, %al
	je	L2207
	cmpb	$3, %al
	je	L2208
	testb	%al, %al
	jne	L2210
L2760:
	cmpb	$8, 100(%esp)
	jg	L2211
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
	je	L2497
	cmpl	$1163152464, %eax
	je	L2498
	cmpl	$1145523042, %eax
	je	L2499
	movb	$0, 108(%esp)
L2212:
	cmpl	$1397641844, %eax
	jne	L2205
	movzbl	108(%esp), %eax
	cmpb	$2, %al
	je	L2207
	cmpb	$3, %al
	jne	L2760
L2208:
	movl	96(%esp), %eax
	cmpl	%eax, %esi
	cmovle	%esi, %eax
	subl	$1, %eax
	js	L2977
	.p2align 5
	.p2align 4
	.p2align 3
L2217:
	movzbl	8(%ebx,%eax), %edx
	sall	$24, %edx
	orl	$16777215, %edx
	andl	%edx, palcol(,%eax,4)
	subl	$1, %eax
	jnb	L2217
	movb	$3, 108(%esp)
	jmp	L2167
L2493:
	movl	%edx, 60(%esp)
	movb	$3, 108(%esp)
	movb	$1, 56(%esp)
	.p2align 4
	.p2align 3
L2202:
	movl	$1431655766, %eax
	imull	%esi
	movl	%esi, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, 96(%esp)
	movl	%edx, %eax
	subl	$1, %edx
	js	L2180
	leal	(%eax,%eax,2), %ecx
	addl	%ebx, %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L2181:
	movl	5(%ecx), %eax
	subl	$3, %ecx
	bswap	%eax
	shrl	$8, %eax
	orl	$-16777216, %eax
	movl	%eax, palcol(,%edx,4)
	subl	$1, %edx
	cmpl	$-1, %edx
	jne	L2181
L2180:
	movb	$1, 64(%esp)
	jmp	L2167
L2976:
	movl	%ebx, %eax
	xorl	%edx, %edx
	sarl	$24, %eax
	andl	$-128, %eax
	orb	56(%esp), %al
L2189:
	movl	%edx, _divtable32
	movb	%al, _divtable32+4
L2187:
	xorl	%eax, %eax
	cmpl	$16383, %ebx
	cmova	%eax, %ebx
	movzbl	_divtable32+4(%ebx,%ebx,4), %ecx
	movl	_divtable32(%ebx,%ebx,4), %edx
	movl	%ecx, %ebx
	andl	$31, %ebx
	movb	%bl, 56(%esp)
	testl	%edx, %edx
	jne	L2192
	sarb	$7, %cl
	movl	$255, %eax
	movsbl	%cl, %edx
	movl	%ebx, %ecx
	sarl	%cl, %eax
	xorl	%edx, %eax
	subl	%edx, %eax
L2193:
	movl	60(%esp), %edx
	movb	$1, 56(%esp)
	imull	%eax, %edx
	imull	$65793, %edx, %eax
	subl	$16777216, %eax
	movl	%eax, 60(%esp)
	jmp	L2167
L2173:
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
	jmp	L2174
L2957:
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
L2207:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpb	$8, 100(%esp)
	je	L2206
	leal	4(%edi,%esi), %ebx
	movl	%ebx, __ZL6filptr.lto_priv.0
	movl	(%ebx), %eax
	leal	8(%ebx), %edi
	movl	%edi, __ZL6filptr.lto_priv.0
	bswap	%eax
	movl	%eax, %esi
	movl	4(%ebx), %eax
	cmpl	$1380206665, %eax
	je	L2503
	cmpl	$1163152464, %eax
	je	L2504
	movb	$2, 108(%esp)
	cmpl	$1145523042, %eax
	jne	L2212
L2195:
	movzbl	_divtable32+1289, %eax
	movl	_divtable32+1285, %edx
	addl	$9, %ebx
	movb	%al, 56(%esp)
	movl	%edx, 52(%esp)
	testl	%edx, %edx
	je	L2196
	testb	$64, %al
	jne	L2197
	movl	$16, 40(%esp)
	movl	$-16777216, 60(%esp)
L2198:
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
	jne	L2198
	jmp	L2922
L2206:
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
	je	L2503
	cmpl	$1163152464, %eax
	je	L2504
	cmpl	$1145523042, %eax
	je	L2978
	cmpl	$1397641844, %eax
	je	L2206
	movb	$2, 108(%esp)
	jmp	L2205
L2503:
	movb	$2, 108(%esp)
	jmp	L2201
L2433:
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
	jg	L2437
	cmpl	$1, %ebx
	jg	L2435
	je	L2436
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	jmp	L2438
L2960:
	movl	%eax, %esi
	movzwl	8(%eax), %eax
	movzwl	4(%esi), %ecx
	subl	%ecx, %eax
	leal	1(%eax), %ebx
	testl	%ebx, %ebx
	jle	L2920
	movzwl	10(%esi), %eax
	movzwl	6(%esi), %ecx
	subl	%ecx, %eax
	addl	$1, %eax
	movl	%eax, 84(%esp)
	testl	%eax, %eax
	jle	L2920
	movzbl	65(%esi), %eax
	movzwl	66(%esi), %edi
	cmpl	$1, %eax
	je	L2979
	cmpl	$3, %eax
	jne	L2301
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
	jle	L2414
	testl	%eax, %eax
	jle	L2414
	movl	88(%esp), %esi
	movl	%edi, 80(%esp)
	movl	%ebx, 96(%esp)
	movl	76(%esp), %ebx
	leal	3(%esi), %ecx
	xorl	%esi, %esi
	leal	(%ecx,%eax,4), %edx
L2415:
	movl	%edx, %edi
	movl	%ecx, %eax
	subl	%ecx, %edi
	andl	$4, %edi
	je	L2416
	leal	4(%ecx), %eax
	movb	$-1, (%ecx)
	cmpl	%eax, %edx
	je	L2859
	.p2align 4
	.p2align 4
	.p2align 3
L2416:
	movb	$-1, (%eax)
	addl	$8, %eax
	movb	$-1, -4(%eax)
	cmpl	%eax, %edx
	jne	L2416
L2859:
	addl	$1, %esi
	addl	%ebx, %ecx
	addl	%ebx, %edx
	cmpl	%esi, 108(%esp)
	jne	L2415
	movl	96(%esp), %ebx
	movl	80(%esp), %edi
L2414:
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
	ja	L2427
L2980:
	addl	$1, %eax
	movl	%esi, 108(%esp)
	movl	$1, 104(%esp)
	movl	%eax, 92(%esp)
	movl	80(%esp), %eax
	.p2align 4
	.p2align 3
L2432:
	cmpl	%edi, %ebx
	jnb	L2430
	cmpl	100(%esp), %eax
	jnb	L2430
	movl	88(%esp), %esi
	movzbl	96(%esp), %edx
	movb	%dl, (%eax,%esi)
L2430:
	addl	$4, %eax
	cmpl	%eax, 108(%esp)
	jg	L2431
	subl	$1, %ecx
	movl	%ecx, %eax
	jns	L2431
	movl	76(%esp), %esi
	addl	%esi, 88(%esp)
	addl	$1, %ebx
	movl	$2, %eax
	movl	$2, %ecx
L2431:
	subl	$1, 104(%esp)
	jne	L2432
	movl	%eax, 80(%esp)
	movl	108(%esp), %esi
L2429:
	cmpl	%ebx, 84(%esp)
	jle	L2301
	movl	92(%esp), %eax
	movzbl	(%eax), %edx
	movb	%dl, 96(%esp)
	cmpb	$-65, %dl
	jbe	L2980
L2427:
	movzbl	96(%esp), %edx
	andl	$63, %edx
	je	L2524
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
	jmp	L2432
	.p2align 4,,10
	.p2align 3
L2975:
	cmpl	104(%esp), %ecx
	jnb	L2538
	cmpb	$0, 96(%esp)
	je	L2538
	movl	88(%esp), %esi
	jmp	L2482
	.p2align 4,,10
	.p2align 3
L2476:
	cmpl	$4, 84(%esp)
	jne	L2479
	movl	(%ebx), %edx
	jmp	L2479
	.p2align 4,,10
	.p2align 3
L2538:
	addl	100(%esp), %ecx
	cmpl	%ecx, 108(%esp)
	jne	L2484
	movl	80(%esp), %ebx
	movl	88(%esp), %esi
	.p2align 4
	.p2align 3
L2485:
	addl	64(%esp), %ebx
	addl	76(%esp), %esi
	cmpl	60(%esp), %ebx
	jne	L2444
	jmp	L2301
	.p2align 4,,10
	.p2align 3
L2477:
	movzbl	(%ebx), %edx
	movl	palcol(,%edx,4), %edx
	jmp	L2479
	.p2align 4,,10
	.p2align 3
L2475:
	movl	(%ebx), %edx
	orl	$-16777216, %edx
	jmp	L2479
	.p2align 4,,10
	.p2align 3
L2974:
	movl	80(%esp), %ebx
	jmp	L2485
L2920:
	movl	-12(%ebp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	jmp	L2141
L2528:
	.cfi_restore_state
	movl	$-1, 108(%esp)
	movl	$-1, 64(%esp)
L2441:
	movl	%esi, %eax
	movl	108(%esp), %ecx
	cmpb	$7, %al
	seta	%al
	movzbl	%al, %eax
	subl	$2, %eax
	cmpl	%ecx, 56(%esp)
	je	L2301
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
	jmp	L2442
L2527:
	movl	$0, 72(%esp)
	movl	80(%esp), %ebx
L2435:
	movb	$2, __ZL8kcoltype
	xorl	%edx, %edx
	jmp	L2438
L2530:
	movl	$0, 56(%esp)
	jmp	L2441
L2192:
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
	jmp	L2193
L2169:
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
	jnb	L2171
	movzbl	92(%esp), %eax
	subl	$1, %eax
L2172:
	movl	52(%esp), %edx
	movl	%eax, %ecx
	orl	$-128, %ecx
	addl	$1, %edx
	testl	%ebx, %ebx
	cmovs	%ecx, %eax
	movl	52(%esp), %ecx
	notl	%ecx
	cmovs	%ecx, %edx
	jmp	L2170
L2211:
	leal	4(%edi,%esi), %ebx
	movl	%ebx, __ZL6filptr.lto_priv.0
	movl	4(%ebx), %eax
	leal	8(%ebx), %edi
	movl	(%ebx), %esi
	movl	%edi, __ZL6filptr.lto_priv.0
	bswap	%esi
	cmpl	$1380206665, %eax
	je	L2497
	cmpl	$1163152464, %eax
	je	L2498
	cmpl	$1145523042, %eax
	je	L2499
	movb	$0, 108(%esp)
	cmpl	$1397641844, %eax
	jne	L2205
	jmp	L2760
L2492:
	movl	%edx, 60(%esp)
	movb	$3, 108(%esp)
	movb	$1, 56(%esp)
	jmp	L2201
L2497:
	movb	$0, 108(%esp)
	jmp	L2201
L2437:
	cmpl	$4, %ebx
	je	L2434
	xorl	%edx, %edx
	jmp	L2981
L2171:
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
	jmp	L2172
L2959:
	movl	14(%eax), %ebx
	cmpl	$12, %ebx
	je	L2982
	movl	92(%esp), %eax
	cmpw	$1, 26(%eax)
	jne	L2920
	movl	22(%eax), %esi
	movl	18(%eax), %edi
	movl	30(%eax), %ecx
	movl	%esi, 100(%esp)
	movzwl	28(%eax), %esi
	movl	%esi, 80(%esp)
L2354:
	testl	%edi, %edi
	jle	L2920
	movl	100(%esp), %eax
	testl	%eax, %eax
	je	L2920
	movl	80(%esp), %esi
	leal	-1(%esi), %eax
	cmpl	$31, %eax
	ja	L2920
	movl	$16843027, %eax
	movl	%esi, %edx
	btl	%edx, %eax
	jnc	L2920
	testl	%ecx, %ecx
	je	L2535
	cmpl	$3, %ecx
	jne	L2920
L2535:
	movl	92(%esp), %eax
	movl	10(%eax), %esi
	addl	%eax, %esi
	movl	80(%esp), %eax
	cmpl	$15, %eax
	jg	L2356
	cmpl	$2, %eax
	jne	L2357
	movl	$-1, %eax
	movl	$-16777216, %edx
	movl	%eax, palcol
	movl	%edx, palcol+4
L2357:
	movl	92(%esp), %eax
	xorl	%ecx, %ecx
	cmpl	$12, %ebx
	setne	%cl
	leal	14(%eax,%ebx), %eax
	addl	$3, %ecx
	xorl	%ebx, %ebx
	cmpl	%esi, %eax
	jnb	L2359
L2360:
	movl	(%eax), %edx
	addl	%ecx, %eax
	orl	$-16777216, %edx
	movl	%edx, palcol(,%ebx,4)
	addl	$1, %ebx
	cmpl	%esi, %eax
	jb	L2360
L2359:
	movzbl	80(%esp), %eax
	movb	$3, __ZL8kcoltype
	movl	%ebx, __ZL6paleng
	movb	%al, __ZL8bitdepth
L2361:
	movl	80(%esp), %eax
	imull	%edi, %eax
	addl	$31, %eax
	sarl	$3, %eax
	andl	$-4, %eax
	movl	%eax, 96(%esp)
	movl	100(%esp), %eax
	testl	%eax, %eax
	js	L2983
	movl	100(%esp), %eax
	movl	96(%esp), %ebx
	subl	$1, %eax
	imull	%ebx, %eax
	negl	%ebx
	movl	%ebx, 96(%esp)
	addl	%eax, %esi
L2370:
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
L2408:
	cmpl	68(%esp), %eax
	jnb	L2373
	movl	80(%esp), %esi
	cmpl	$32, %esi
	ja	L2373
	jmp	*L2375(,%esi,4)
	.section .rdata,"dr"
	.align 4
L2375:
	.long	L2373
	.long	L2864
	.long	L2373
	.long	L2373
	.long	L2865
	.long	L2373
	.long	L2373
	.long	L2373
	.long	L2866
	.long	L2373
	.long	L2373
	.long	L2373
	.long	L2373
	.long	L2373
	.long	L2373
	.long	L2373
	.long	L2686
	.long	L2373
	.long	L2373
	.long	L2373
	.long	L2373
	.long	L2373
	.long	L2373
	.long	L2373
	.long	L2867
	.long	L2373
	.long	L2373
	.long	L2373
	.long	L2373
	.long	L2373
	.long	L2373
	.long	L2373
	.long	L2868
	.text
L2196:
	movzbl	56(%esp), %eax
	movl	%esi, 60(%esp)
	movl	$16, %edx
	movl	%edi, 52(%esp)
	movl	$-16777216, %edi
	sarb	$7, %al
	movsbl	%al, %esi
L2200:
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
	jne	L2200
	movl	60(%esp), %esi
	movl	%edi, 60(%esp)
	movl	52(%esp), %edi
L2922:
	movb	$1, 56(%esp)
	jmp	L2167
L2864:
	movl	108(%esp), %edx
L2380:
	movl	84(%esp), %ecx
	testl	%ecx, %ecx
	jle	L2391
	movl	%eax, 108(%esp)
	movl	%edx, %esi
	xorl	%ebx, %ebx
	movl	%edx, 72(%esp)
	movl	%ecx, %edx
L2392:
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
	jne	L2392
	movl	108(%esp), %eax
	movl	72(%esp), %edx
	addl	$1, %eax
	cmpl	100(%esp), %eax
	je	L2301
L2946:
	movl	76(%esp), %esi
	movl	88(%esp), %ecx
	addl	%esi, 104(%esp)
	addl	96(%esp), %edi
	addl	%ecx, 92(%esp)
	addl	%esi, %edx
	cmpl	68(%esp), %eax
	jb	L2380
L2925:
	movl	%edx, 108(%esp)
L2373:
	movl	76(%esp), %ebx
	movl	88(%esp), %edx
	addl	$1, %eax
	addl	%ebx, 108(%esp)
	addl	96(%esp), %edi
	addl	%edx, 92(%esp)
	addl	%ebx, 104(%esp)
	cmpl	100(%esp), %eax
	jne	L2408
	jmp	L2301
L2498:
	movb	$0, 108(%esp)
	jmp	L2202
L2351:
	movl	36(%esp), %eax
	addl	108(%esp), %esi
	movl	%esi, 96(%esp)
	leal	-2147483648(%eax), %edi
	movl	12(%esp), %eax
	jmp	L2344
L2877:
	movl	52(%esp), %esi
	movl	104(%esp), %ebx
	.p2align 4
	.p2align 3
L2445:
	cmpl	68(%esp), %esi
	movl	56(%esp), %ecx
	movl	%esi, 48(%esp)
	movl	96(%esp), %eax
	movl	100(%esp), %esi
	movl	%ebx, 104(%esp)
	setb	52(%esp)
	jmp	L2464
	.p2align 4,,10
	.p2align 3
L2460:
	subl	$1, %eax
	cmpl	104(%esp), %ecx
	jnb	L2465
	cmpb	$0, 52(%esp)
	je	L2465
L2461:
	movl	88(%esp), %ebx
	movl	%edx, (%ebx,%ecx,4)
L2465:
	addl	%esi, %ecx
	cmpl	%ecx, 108(%esp)
	je	L2984
L2464:
	cmpl	$127, %eax
	jg	L2460
	movl	%eax, %edx
	movl	%esi, 84(%esp)
	movl	104(%esp), %ebx
	andl	$127, %edx
	movl	%edx, 96(%esp)
L2459:
	cmpl	$127, 96(%esp)
	je	L2467
	movl	92(%esp), %edx
	cmpb	$1, 1(%edx)
	je	L2468
	movl	%edi, %edx
L2470:
	movzbl	(%edx), %edx
	addl	80(%esp), %edi
	movl	palcol(,%edx,4), %esi
	movl	%esi, 104(%esp)
	testl	%eax, %eax
	jns	L2985
	cmpl	%ebx, %ecx
	jnb	L2537
	cmpb	$0, 52(%esp)
	je	L2537
	movl	104(%esp), %edx
	movl	84(%esp), %esi
	movl	%ebx, 104(%esp)
	jmp	L2461
	.p2align 4,,10
	.p2align 3
L2467:
	movl	92(%esp), %edx
	movl	84(%esp), %esi
	movl	%ebx, 104(%esp)
	movzbl	(%edi), %eax
	cmpb	$1, 1(%edx)
	je	L2471
	movzbl	1(%edi), %edx
	movl	80(%esp), %ebx
	movl	palcol(,%edx,4), %edx
	leal	1(%edi,%ebx), %edi
	jmp	L2460
	.p2align 4,,10
	.p2align 3
L2985:
	movl	104(%esp), %edx
	movl	84(%esp), %esi
	movl	%ebx, 104(%esp)
	jmp	L2460
	.p2align 4,,10
	.p2align 3
L2468:
	movzwl	(%edi), %edx
	addl	72(%esp), %edx
	jmp	L2470
	.p2align 4,,10
	.p2align 3
L2537:
	addl	84(%esp), %ecx
	cmpl	%ecx, 108(%esp)
	jne	L2459
	movl	104(%esp), %edx
	movl	48(%esp), %esi
	movl	%eax, 96(%esp)
	.p2align 4
	.p2align 3
L2463:
	movl	76(%esp), %eax
	addl	64(%esp), %esi
	addl	%eax, 88(%esp)
	cmpl	%esi, 60(%esp)
	jne	L2445
	jmp	L2301
	.p2align 4,,10
	.p2align 3
L2984:
	movl	48(%esp), %esi
	movl	104(%esp), %ebx
	movl	%eax, 96(%esp)
	jmp	L2463
L2471:
	movzwl	1(%edi), %edx
	movl	72(%esp), %ebx
	movzbl	(%ebx,%edx), %edx
	movl	80(%esp), %ebx
	movl	palcol(,%edx,4), %edx
	leal	1(%edi,%ebx), %edi
	jmp	L2460
L2962:
	testb	$1, 3(%eax)
	je	L2308
	movzbl	6(%eax), %ebx
	movl	%ebx, 96(%esp)
	jmp	L2308
L2979:
	leal	-768(%esi,%edx), %edx
	xorl	%ecx, %ecx
	.p2align 6
	.p2align 4
	.p2align 3
L2411:
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
	jne	L2411
	movl	92(%esp), %eax
	movb	$3, __ZL8kcoltype
	movb	$8, __ZL8bitdepth
	movl	$256, __ZL6paleng
	subl	$-128, %eax
	movl	%eax, 96(%esp)
	cmpl	%edi, %ebx
	jge	L2986
	movl	104(%esp), %eax
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	leal	0(,%edi,4), %ebx
	leal	0(,%eax,4), %esi
L2417:
	movl	96(%esp), %eax
	movl	%esi, 104(%esp)
	movl	%ebx, %edi
	xorl	%ecx, %ecx
	movl	88(%esp), %ebx
	movl	68(%esp), %esi
	movl	$0, 92(%esp)
	movzbl	(%eax), %edx
	cmpb	$-65, %dl
	ja	L2420
L2987:
	addl	$1, %eax
	movl	$1, 108(%esp)
	movl	%eax, 96(%esp)
	movl	palcol(,%edx,4), %eax
	movl	%ebx, %edx
	movl	%eax, 100(%esp)
	movl	92(%esp), %eax
	.p2align 4
	.p2align 3
L2425:
	cmpl	%esi, %ecx
	jnb	L2423
	cmpl	104(%esp), %eax
	jnb	L2423
	movl	100(%esp), %ebx
	movl	%ebx, (%eax,%edx)
L2423:
	addl	$4, %eax
	cmpl	%eax, %edi
	jg	L2424
	movl	76(%esp), %ebx
	addl	$1, %ecx
	xorl	%eax, %eax
	addl	%edx, %ebx
	movl	%ebx, %edx
L2424:
	subl	$1, 108(%esp)
	jne	L2425
	movl	%eax, 92(%esp)
	movl	%edx, %ebx
L2422:
	cmpl	84(%esp), %ecx
	jge	L2301
	movl	96(%esp), %eax
	movzbl	(%eax), %edx
	cmpb	$-65, %dl
	jbe	L2987
L2420:
	andl	$63, %edx
	je	L2523
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
	jmp	L2425
L2523:
	movl	96(%esp), %eax
	addl	$2, %eax
	movl	%eax, 96(%esp)
	jmp	L2422
L2524:
	movl	92(%esp), %eax
	addl	$2, %eax
	movl	%eax, 92(%esp)
	jmp	L2429
L2971:
	cmpb	$0, 64(%esp)
	je	L2154
	movl	96(%esp), %eax
	movl	%eax, __ZL6paleng
L2154:
	cmpb	$0, 92(%esp)
	je	L2988
L2155:
	movzbl	108(%esp), %eax
	movb	%al, __ZL8kcoltype
	movzbl	100(%esp), %eax
	movb	%al, __ZL8bitdepth
	movl	80(%esp), %eax
	movl	%eax, __ZL4ysiz
	movl	84(%esp), %eax
	movl	%eax, __ZL4xsiz
	cmpb	$0, 56(%esp)
	je	L2923
	movl	60(%esp), %eax
	movl	%eax, __ZL6bakcol
	jmp	L2923
L2970:
	cmpb	$0, 64(%esp)
	je	L2149
	movl	96(%esp), %eax
	movl	%eax, __ZL6paleng
L2149:
	cmpb	$0, 92(%esp)
	jne	L2155
L2936:
	movl	80(%esp), %eax
	movl	%eax, __ZL4ysiz
L2934:
	movl	84(%esp), %eax
	movl	%eax, __ZL4xsiz
	cmpb	$0, 56(%esp)
	je	L2920
	movl	60(%esp), %eax
	movl	-12(%ebp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	%eax, __ZL6bakcol
	jmp	L2141
L2969:
	.cfi_restore_state
	cmpb	$0, 64(%esp)
	je	L2144
	movl	96(%esp), %eax
	movl	%eax, __ZL6paleng
L2144:
	cmpb	$0, 92(%esp)
	jne	L2155
	jmp	L2934
L2190:
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
	jmp	L2191
L2356:
	movl	80(%esp), %eax
	testb	$15, %al
	jne	L2361
	movb	$2, __ZL8kcoltype
	cmpl	$32, %eax
	je	L2519
	movl	$10, %edx
	movl	$5, %eax
L2362:
	movl	%edx, palcol
	movl	%eax, palcol+4
	movl	$0, palcol+8
	movl	%eax, palcol+12
	movl	%eax, palcol+16
	movl	%eax, palcol+20
	cmpl	$3, %ecx
	je	L2989
	movl	%eax, 92(%esp)
	movl	%eax, %ebx
	movl	%eax, 96(%esp)
	movl	%eax, 108(%esp)
L2363:
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
	jmp	L2361
L2348:
	cmpl	$8, 108(%esp)
	jne	L2349
	movl	92(%esp), %eax
	cmpb	$0, 31(%esp)
	jne	L2350
	movl	$4, 108(%esp)
	leal	2(%eax), %esi
	jmp	L2346
L2986:
	movl	104(%esp), %esi
	sall	$2, %ebx
	sall	$2, %esi
	jmp	L2417
L2221:
	movzbl	48(%esp), %eax
	movzbl	44(%esp), %edx
	cmpb	$0, 64(%esp)
	je	L2223
	movl	96(%esp), %ebx
	movl	%ebx, __ZL6paleng
L2223:
	cmpb	$0, 92(%esp)
	je	L2990
	movzbl	108(%esp), %eax
	movb	%al, __ZL8kcoltype
	movzbl	100(%esp), %eax
	movb	%al, __ZL8bitdepth
	movl	80(%esp), %eax
	movl	%eax, __ZL4ysiz
	movl	84(%esp), %eax
	movl	%eax, __ZL4xsiz
	cmpb	$0, 56(%esp)
	je	L2228
	movl	60(%esp), %eax
	movl	%eax, __ZL6bakcol
L2228:
	movl	72(%esp), %eax
	movl	%eax, _intlac
L2226:
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
	je	L2230
	cmpb	$6, %al
	je	L2231
	cmpb	$2, %al
	je	L2232
	movl	$0, __ZL3xmn
L2234:
	movzbl	100(%esp), %eax
	cmpb	$2, %al
	je	L2508
	cmpb	$4, %al
	je	L2509
	cmpb	$1, %al
	jne	L2237
	movl	$2, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L2238:
	movl	%eax, %edx
	andl	$1, %edx
	movl	palcol(,%edx,4), %edx
	movl	%edx, palcol(,%eax,4)
	addl	$1, %eax
	cmpl	$256, %eax
	jne	L2238
	movzbl	108(%esp), %ecx
	movl	$67244801, %eax
	sall	$2, %ecx
	sarl	%cl, %eax
	andl	$15, %eax
	imull	84(%esp), %eax
	addl	$7, %eax
	sarl	$3, %eax
L2490:
	movl	%eax, _xsizbpl
	addl	$1, %eax
	cmpl	$131072, %eax
	ja	L2920
	call	__ZL8initpassv.isra.0
	movl	$16, %eax
	subl	%esi, %eax
	movl	%eax, 96(%esp)
	movl	%eax, __ZL6bitpos.lto_priv.0
	cmpl	$16, %esi
	jg	L2242
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6bitpos.lto_priv.0, %eax
	movl	__ZL6filptr.lto_priv.0, %ebx
	movl	%eax, 96(%esp)
L2242:
	movl	$16384, 108(%esp)
	xorl	%esi, %esi
L2299:
	movl	96(%esp), %edi
	movl	%edi, %eax
	sarl	$3, %eax
	movl	(%ebx,%eax), %eax
	movl	%eax, 92(%esp)
	movl	%edi, %eax
	addl	$1, %eax
	movl	%eax, __ZL6bitpos.lto_priv.0
	js	L2243
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6bitpos.lto_priv.0, %eax
	movl	__ZL6filptr.lto_priv.0, %ebx
L2243:
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
	js	L2244
	call	__ZL17suckbitsnextblockv.lto_priv.0
L2244:
	testl	%ebx, %ebx
	je	L2991
	cmpl	$3, %ebx
	je	L2258
	cmpl	$1, %ebx
	jne	L2259
	movl	$8, 104(%esp)
	movss	104(%esp), %xmm0
	movl	$__ZL4clen.lto_priv.0+576, %edx
	movl	$__ZL4clen.lto_priv.0, %eax
	shufps	$0, %xmm0, %xmm0
	.p2align 5
	.p2align 4
	.p2align 3
L2260:
	movups	%xmm0, (%eax)
	addl	$32, %eax
	movups	%xmm0, -16(%eax)
	cmpl	$__ZL4clen.lto_priv.0+576, %eax
	jne	L2260
	movl	$9, 104(%esp)
	movss	104(%esp), %xmm0
	movl	$__ZL4clen.lto_priv.0+1024, %eax
	shufps	$0, %xmm0, %xmm0
	.p2align 4
	.p2align 4
	.p2align 3
L2261:
	movups	%xmm0, (%edx)
	addl	$32, %edx
	movups	%xmm0, -16(%edx)
	cmpl	%edx, %eax
	jne	L2261
	movl	$7, 104(%esp)
	movss	104(%esp), %xmm0
	shufps	$0, %xmm0, %xmm0
L2262:
	movups	%xmm0, (%eax)
	addl	$32, %eax
	movups	%xmm0, -16(%eax)
	cmpl	$__ZL4clen.lto_priv.0+1120, %eax
	jne	L2262
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
L2263:
	movups	%xmm0, (%eax)
	addl	$32, %eax
	movups	%xmm0, -16(%eax)
	cmpl	%eax, %edx
	jne	L2263
	movl	$32, 84(%esp)
	movl	$1152, %ebx
	movl	$288, 88(%esp)
L2264:
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
L2283:
	movl	108(%esp), %eax
	cmpl	%eax, %esi
	jge	L2992
L2284:
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
	je	L2287
	addl	%ecx, __ZL6bitpos.lto_priv.0
	movl	__ZL8qhufval0.lto_priv.0(,%eax,4), %ebx
	js	L2289
	call	__ZL17suckbitsnextblockv.lto_priv.0
L2289:
	cmpl	$255, %ebx
	jg	L2290
L2993:
	movl	%esi, %eax
	addl	$1, %esi
	andl	$32767, %eax
	movb	%bl, __ZL8slidebuf.lto_priv.0(%eax)
	movl	108(%esp), %eax
	cmpl	%eax, %esi
	jl	L2284
L2992:
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
	jl	L2284
	cmpl	$1, _intlac
	jg	L2284
L2254:
	cmpb	$4, __ZL8kcoltype
	jne	L2301
	movl	$0, __ZL6paleng
	jmp	L2301
	.p2align 4,,10
	.p2align 3
L2287:
	movl	$__ZL5nbuf0.lto_priv.0, %edx
	movl	$__ZL5ibuf0.lto_priv.0, %eax
	call	__ZL9hufgetsymPiPKi.lto_priv.0
	movl	%eax, %ebx
	cmpl	$255, %ebx
	jle	L2993
L2290:
	cmpl	$256, %ebx
	je	L2258
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
	js	L2292
	movl	%eax, 104(%esp)
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6filptr.lto_priv.0, %edx
	movl	__ZL6bitpos.lto_priv.0, %edi
	movl	104(%esp), %eax
L2292:
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
	je	L2293
	addl	%edi, %eax
	movl	__ZL8qhufval1.lto_priv.0(,%ecx,4), %ebx
	movl	%eax, __ZL6bitpos.lto_priv.0
	js	L2294
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6bitpos.lto_priv.0, %eax
	movl	__ZL6filptr.lto_priv.0, %edx
L2294:
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
	js	L2295
	movl	%edx, 100(%esp)
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	100(%esp), %edx
L2295:
	movl	104(%esp), %eax
	addl	__ZL5hxbit.lto_priv.0+4(,%ebx,8), %edx
	movl	%esi, %ecx
	subl	%edx, %ecx
	leal	(%esi,%eax), %edi
	movl	%esi, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L2296:
	movl	%ecx, %edx
	addl	$1, %ecx
	andl	$32767, %edx
	movzbl	__ZL8slidebuf.lto_priv.0(%edx), %ebx
	movl	%eax, %edx
	addl	$1, %eax
	andl	$32767, %edx
	movb	%bl, __ZL8slidebuf.lto_priv.0(%edx)
	cmpl	%eax, %edi
	jg	L2296
	movl	104(%esp), %eax
	subl	$1, %eax
	cmpl	%edi, %esi
	movl	$0, %edi
	cmovge	%edi, %eax
	leal	1(%esi,%eax), %esi
	jmp	L2283
	.p2align 4,,10
	.p2align 3
L2293:
	movl	$__ZL5nbuf1.lto_priv.0, %edx
	movl	$__ZL5ibuf1.lto_priv.0, %eax
	call	__ZL9hufgetsymPiPKi.lto_priv.0
	movl	__ZL6filptr.lto_priv.0, %edx
	movl	%eax, %ebx
	movl	__ZL6bitpos.lto_priv.0, %eax
	jmp	L2294
L2998:
	movl	%edi, %esi
L2258:
	movl	96(%esp), %eax
	movl	92(%esp), %edi
	andl	$7, %eax
	btl	%eax, %edi
	jc	L2298
	movl	__ZL6bitpos.lto_priv.0, %eax
	movl	__ZL6filptr.lto_priv.0, %ebx
	movl	%eax, 96(%esp)
	jmp	L2299
L2259:
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
	js	L2265
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6filptr.lto_priv.0, %eax
	movl	%eax, 100(%esp)
	movl	__ZL6bitpos.lto_priv.0, %eax
L2265:
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
	js	L2266
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6filptr.lto_priv.0, %eax
	movl	%eax, 100(%esp)
	movl	__ZL6bitpos.lto_priv.0, %eax
L2266:
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
	js	L2267
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6filptr.lto_priv.0, %eax
	movl	%eax, 100(%esp)
	movl	__ZL6bitpos.lto_priv.0, %eax
L2267:
	addl	$4, %ebx
	movl	%esi, 80(%esp)
	xorl	%edi, %edi
	movl	100(%esp), %esi
	movl	%ebx, 104(%esp)
	jmp	L2270
L2994:
	movl	__ZL6bitpos.lto_priv.0, %eax
	movl	__ZL6filptr.lto_priv.0, %esi
L2270:
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
	js	L2268
	call	__ZL17suckbitsnextblockv.lto_priv.0
L2268:
	movl	%esi, __ZL5cclen.lto_priv.0(,%ebx,4)
	addl	$1, %edi
	cmpl	%edi, 104(%esp)
	jne	L2994
	movl	104(%esp), %ebx
	movl	80(%esp), %esi
	cmpl	$19, %ebx
	je	L2271
L2272:
	movl	__ZL5ccind.lto_priv.0(,%ebx,4), %eax
	addl	$1, %ebx
	movl	$0, __ZL5cclen.lto_priv.0(,%eax,4)
	cmpl	$19, %ebx
	jne	L2272
L2271:
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
	jmp	L2282
L2273:
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
	je	L2995
	cmpl	$17, %ebx
	je	L2996
	andl	$127, %eax
	addl	$7, %edx
	movl	%edx, __ZL6bitpos.lto_priv.0
	movl	%eax, %ebx
	js	L2281
	call	__ZL17suckbitsnextblockv.lto_priv.0
L2281:
	addl	$11, %ebx
L2280:
	leal	__ZL4clen.lto_priv.0(,%edi,4), %eax
	leal	0(,%ebx,4), %edx
	addl	%ebx, %edi
	movl	$0, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, (%esp)
	call	_memset
L2274:
	cmpl	%edi, %esi
	jle	L2997
L2282:
	movl	$__ZL5nbuf0.lto_priv.0, %edx
	movl	$__ZL5ibuf0.lto_priv.0, %eax
	call	__ZL9hufgetsymPiPKi.lto_priv.0
	movl	%eax, %ebx
	cmpl	$15, %eax
	jg	L2273
	movl	%eax, __ZL4clen.lto_priv.0(,%edi,4)
	addl	$1, %edi
	jmp	L2274
L2996:
	andl	$7, %eax
	addl	$3, %edx
	movl	%edx, __ZL6bitpos.lto_priv.0
	movl	%eax, %ebx
	js	L2279
	call	__ZL17suckbitsnextblockv.lto_priv.0
L2279:
	addl	$3, %ebx
	jmp	L2280
L2995:
	andl	$3, %eax
	addl	$2, %edx
	movl	%edx, __ZL6bitpos.lto_priv.0
	movl	%eax, %ebx
	js	L2276
	call	__ZL17suckbitsnextblockv.lto_priv.0
L2276:
	leal	3(%edi,%ebx), %edx
	andl	$1, %ebx
	movl	__ZL4clen.lto_priv.0-4(,%edi,4), %eax
	jne	L2277
	movl	%eax, __ZL4clen.lto_priv.0(,%edi,4)
	addl	$1, %edi
	cmpl	%edx, %edi
	je	L2274
L2277:
	movl	%eax, __ZL4clen.lto_priv.0(,%edi,4)
	movl	%eax, __ZL4clen.lto_priv.0+4(,%edi,4)
	addl	$2, %edi
	cmpl	%edx, %edi
	jne	L2277
	jmp	L2274
L2997:
	movl	88(%esp), %eax
	movl	100(%esp), %esi
	leal	0(,%eax,4), %ebx
	jmp	L2264
L2991:
	movl	__ZL6bitpos.lto_priv.0, %edx
	movl	%edx, %eax
	negl	%eax
	andl	$7, %eax
	addl	%edx, %eax
	movl	%eax, __ZL6bitpos.lto_priv.0
	js	L2246
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6bitpos.lto_priv.0, %eax
L2246:
	movl	%eax, %ebx
	movl	__ZL6filptr.lto_priv.0, %edx
	movl	%eax, %ecx
	sarl	$3, %ebx
	andl	$7, %ecx
	movl	(%edx,%ebx), %edi
	shrl	%cl, %edi
	addl	$16, %eax
	movl	%eax, __ZL6bitpos.lto_priv.0
	js	L2247
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6bitpos.lto_priv.0, %eax
	movl	__ZL6filptr.lto_priv.0, %edx
L2247:
	movl	%eax, %ebx
	movl	%eax, %ecx
	sarl	$3, %ebx
	andl	$7, %ecx
	movl	(%edx,%ebx), %ebx
	shrl	%cl, %ebx
	addl	$16, %eax
	movl	%eax, __ZL6bitpos.lto_priv.0
	js	L2248
	call	__ZL17suckbitsnextblockv.lto_priv.0
L2248:
	movl	%ebx, %eax
	xorl	%edi, %eax
	movzwl	%ax, %eax
	cmpl	$65535, %eax
	jne	L2920
	movl	%edi, %eax
	andl	$65535, %eax
	je	L2258
	movl	%esi, %ebx
	leal	(%esi,%eax), %edi
	movl	108(%esp), %esi
	cmpl	%ebx, %esi
	jg	L2252
L2999:
	leal	-16384(%esi), %eax
	movl	$16384, %edx
	addl	$16384, %esi
	andl	$32767, %eax
	addl	$__ZL8slidebuf.lto_priv.0, %eax
	call	__ZL6putbufPKhi
	movl	%esi, 108(%esp)
	movl	__ZL7kp_yres, %eax
	cmpl	%eax, __ZL4yplc
	jl	L2252
	cmpl	$1, _intlac
	jle	L2254
L2252:
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
	js	L2256
	call	__ZL17suckbitsnextblockv.lto_priv.0
L2256:
	leal	1(%ebx), %eax
	movl	%esi, %ecx
	andl	$32767, %ebx
	movb	%cl, __ZL8slidebuf.lto_priv.0(%ebx)
	cmpl	%edi, %eax
	je	L2998
	movl	108(%esp), %esi
	movl	%eax, %ebx
	cmpl	%ebx, %esi
	jg	L2252
	jmp	L2999
L2504:
	movb	$2, 108(%esp)
	jmp	L2202
L2983:
	negl	%eax
	movl	%eax, 100(%esp)
	jmp	L2370
L2965:
	addl	$1, 80(%esp)
	movl	64(%esp), %ebx
	movl	%eax, 48(%esp)
	jmp	L2330
L2197:
	movzbl	56(%esp), %eax
	movl	$16, 40(%esp)
	movl	$-16777216, 60(%esp)
	sarb	$7, %al
	movsbl	%al, %eax
	movl	%eax, 36(%esp)
L2199:
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
	jne	L2199
	jmp	L2922
L2982:
	cmpw	$1, 22(%eax)
	jne	L2920
	movzwl	20(%eax), %esi
	movzwl	18(%eax), %edi
	xorl	%ecx, %ecx
	movzwl	24(%eax), %eax
	movl	%esi, 100(%esp)
	movl	%eax, 80(%esp)
	jmp	L2354
L2347:
	movl	92(%esp), %eax
	movl	$2, 108(%esp)
	leal	1(%eax), %esi
	jmp	L2346
L2964:
	movzwl	__ZL9filbuffer(%esi), %ecx
	movl	32(%esp), %eax
	subl	%esi, %ebx
	movw	%cx, __ZL9filbuffer
	movl	%ebx, %ecx
	movzbl	(%eax), %ebx
	leal	1(%eax), %esi
	cmpl	$16, %ebx
	jnb	L2332
	testb	$8, %bl
	jne	L3000
	testb	$4, %bl
	jne	L3001
	testl	%ebx, %ebx
	je	L2333
	movl	32(%esp), %eax
	movzbl	1(%eax), %edx
	movb	%dl, __ZL9filbuffer(%ecx)
	testb	$2, %bl
	jne	L3002
L2333:
	leal	(%esi,%ebx), %eax
	andl	$7, 40(%esp)
	addl	%ecx, %ebx
	movl	%eax, 32(%esp)
	jmp	L2331
L2515:
	movzbl	30(%esp), %eax
	addl	$1, %eax
	movb	%al, 52(%esp)
	movl	60(%esp), %eax
	leal	(%eax,%eax), %esi
	addl	$2, %eax
	movl	%esi, 56(%esp)
	movl	%eax, 80(%esp)
	jmp	L2330
L2978:
	movb	$2, 108(%esp)
	jmp	L2215
L2988:
	movzbl	100(%esp), %eax
	movb	%al, __ZL8bitdepth
	jmp	L2936
L2318:
	movzwl	80(%esp), %edi
	movl	60(%esp), %eax
	addl	%edi, 84(%esp)
	addl	%eax, 72(%esp)
	movl	%edi, 44(%esp)
	movl	%edi, 36(%esp)
	movl	%eax, 92(%esp)
	jmp	L2319
L2332:
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
	jb	L2333
	andl	$-16, %edx
	movl	%edx, 32(%esp)
	xorl	%edx, %edx
L2337:
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
	jb	L2337
	jmp	L2333
L2350:
	movb	$0, 31(%esp)
	leal	4(%eax), %esi
	jmp	L2346
L2963:
	movl	%ebx, %eax
	andl	$-16, %eax
	movl	%eax, 96(%esp)
	xorl	%eax, %eax
L2326:
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
	jb	L2326
	leal	__ZL9filbuffer(%eax), %ecx
	leal	(%esi,%eax), %edx
	jmp	L2325
L2321:
	movl	36(%esp), %eax
	leal	-2147483648(%eax), %edi
	movl	84(%esp), %eax
	addl	$-2147483648, %eax
	movl	%eax, 48(%esp)
	jmp	L2322
L2237:
	movzbl	108(%esp), %ecx
	movl	$67244801, %eax
	sall	$2, %ecx
	sarl	%cl, %eax
	andl	$15, %eax
	imull	84(%esp), %eax
	jmp	L2490
L2509:
	movl	$16, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L2236:
	movl	%eax, %edx
	andl	$15, %edx
	movl	palcol(,%edx,4), %edx
	movl	%edx, palcol(,%eax,4)
	addl	$1, %eax
	cmpl	$256, %eax
	jne	L2236
	movzbl	108(%esp), %ecx
	movl	$67244801, %eax
	sall	$2, %ecx
	sarl	%cl, %eax
	andl	$15, %eax
	imull	84(%esp), %eax
	addl	$1, %eax
	sarl	%eax
	jmp	L2490
L2508:
	movl	$4, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L2235:
	movl	%eax, %edx
	andl	$3, %edx
	movl	palcol(,%edx,4), %edx
	movl	%edx, palcol(,%eax,4)
	addl	$1, %eax
	cmpl	$256, %eax
	jne	L2235
	movzbl	108(%esp), %ecx
	movl	$67244801, %eax
	sall	$2, %ecx
	sarl	%cl, %eax
	andl	$15, %eax
	imull	84(%esp), %eax
	addl	$3, %eax
	sarl	$2, %eax
	jmp	L2490
L2232:
	movl	$1, %eax
	movl	$2, %edx
	movl	$0, __ZL3xmn+8
	movl	%eax, __ZL3xmn
	movl	%edx, __ZL3xmn+4
	jmp	L2234
L2231:
	movups	LC28, %xmm0
	movups	%xmm0, __ZL3xmn
	jmp	L2234
L2230:
	movl	$1, %eax
	xorl	%edx, %edx
	movl	%eax, __ZL3xmn
	movl	%edx, __ZL3xmn+4
	jmp	L2234
L2990:
	movl	__ZL4xsiz, %ebx
	movl	%ebx, 84(%esp)
	cmpb	$0, 56(%esp)
	je	L2229
	movl	60(%esp), %ebx
	movl	%ebx, __ZL6bakcol
L2229:
	movb	%dl, 100(%esp)
	movb	%al, 108(%esp)
	jmp	L2226
L2298:
	movl	108(%esp), %eax
	leal	-16384(%eax), %edx
	movl	%edx, %eax
	movl	%edx, %ecx
	andl	$32767, %eax
	xorl	%esi, %ecx
	addl	$__ZL8slidebuf.lto_priv.0, %eax
	andb	$-128, %ch
	jne	L2300
	subl	%edx, %esi
	movl	%esi, %edx
	call	__ZL6putbufPKhi
	jmp	L2254
L2989:
	movl	92(%esp), %eax
	xorl	%edx, %edx
	addl	%eax, %ebx
L2368:
	movl	14(%ebx,%edx,4), %eax
	xorl	%ecx, %ecx
	movl	$0, palcol(,%edx,4)
	jmp	L2365
L3003:
	addl	$1, %ecx
	shrl	%eax
	movl	%ecx, palcol(,%edx,4)
	cmpl	$32, %ecx
	je	L2364
L2365:
	testb	$1, %al
	je	L3003
L2364:
	movl	$0, palcol+12(,%edx,4)
	xorl	%ecx, %ecx
	jmp	L2367
L3004:
	addl	$1, %ecx
	shrl	%eax
	movl	%ecx, palcol+12(,%edx,4)
	cmpl	$32, %ecx
	je	L2366
L2367:
	testb	$1, %al
	jne	L3004
L2366:
	addl	$1, %edx
	cmpl	$3, %edx
	jne	L2368
	movl	palcol+4, %ecx
	movl	palcol, %edx
	movl	palcol+12, %eax
	movl	palcol+16, %ebx
	movl	%ecx, 108(%esp)
	movl	palcol+20, %ecx
	movl	%ecx, 96(%esp)
	addl	palcol+8, %ecx
	movl	%ecx, 92(%esp)
	jmp	L2363
L2519:
	movl	$16, %edx
	movl	$8, %eax
	jmp	L2362
L2686:
	movl	84(%esp), %esi
	movl	%eax, %ecx
	movl	%edi, %ebx
	leal	(%esi,%esi), %eax
L2377:
	movl	108(%esp), %esi
	movl	%ebx, %edx
	leal	(%eax,%ebx), %edi
	cmpl	$0, 84(%esp)
	jle	L2951
	movl	%ebx, 64(%esp)
	movl	%ecx, 60(%esp)
	movl	%edi, 72(%esp)
	movl	%eax, 56(%esp)
L2397:
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
	jne	L2397
	movl	64(%esp), %ebx
	movl	60(%esp), %ecx
	movl	56(%esp), %eax
L2951:
	addl	$1, %ecx
	cmpl	%ecx, 100(%esp)
	je	L2301
	movl	76(%esp), %esi
	movl	88(%esp), %edx
	addl	%esi, 108(%esp)
	addl	96(%esp), %ebx
	addl	%edx, 92(%esp)
	addl	%esi, 104(%esp)
	cmpl	68(%esp), %ecx
	jb	L2377
	movl	%ebx, %edi
	movl	%ecx, %eax
	jmp	L2373
L2866:
	movl	108(%esp), %ebx
L2378:
	movl	84(%esp), %esi
	movl	%ebx, %ecx
	movl	%edi, %edx
	addl	%edi, %esi
	cmpl	$0, 84(%esp)
	jle	L2949
	movl	%edi, 108(%esp)
L2395:
	movzbl	(%edx), %edi
	addl	$1, %edx
	addl	$4, %ecx
	movl	palcol(,%edi,4), %edi
	movl	%edi, -4(%ecx)
	cmpl	%edx, %esi
	jne	L2395
	movl	108(%esp), %edi
L2949:
	addl	$1, %eax
	cmpl	%eax, 100(%esp)
	je	L2301
	movl	76(%esp), %esi
	movl	88(%esp), %ecx
	addl	%esi, 104(%esp)
	addl	96(%esp), %edi
	addl	%ecx, 92(%esp)
	addl	%esi, %ebx
	cmpl	68(%esp), %eax
	jb	L2378
	movl	%ebx, 108(%esp)
	jmp	L2373
L2865:
	movl	%eax, %ecx
	movl	108(%esp), %eax
L2379:
	movl	$-4, %ebx
	xorl	%edx, %edx
	leal	-4(%eax), %esi
	cmpl	$0, 84(%esp)
	jle	L3005
	movl	%ecx, 108(%esp)
	movl	%eax, 72(%esp)
L2389:
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
	jne	L2389
	movl	108(%esp), %ecx
	movl	72(%esp), %eax
	addl	$1, %ecx
	cmpl	100(%esp), %ecx
	je	L2301
L2938:
	movl	76(%esp), %esi
	movl	88(%esp), %edx
	addl	%esi, 104(%esp)
	addl	96(%esp), %edi
	addl	%edx, 92(%esp)
	addl	%esi, %eax
	cmpl	68(%esp), %ecx
	jb	L2379
	movl	%eax, 108(%esp)
	movl	%ecx, %eax
	jmp	L2373
L3005:
	addl	$1, %ecx
	cmpl	%ecx, 100(%esp)
	jne	L2938
	jmp	L2301
L2391:
	addl	$1, %eax
	cmpl	%eax, 100(%esp)
	jne	L2946
	jmp	L2301
L2300:
	movl	$16384, %edx
	subl	108(%esp), %edx
	andl	$32767, %esi
	andl	$32767, %edx
	call	__ZL6putbufPKhi
	movl	%esi, %edx
	movl	$__ZL8slidebuf.lto_priv.0, %eax
	call	__ZL6putbufPKhi
	jmp	L2254
L2868:
	movl	%edi, %ecx
	movl	108(%esp), %edx
	movl	92(%esp), %edi
	movl	76(%esp), %esi
L2374:
	movl	%edx, %ebx
	cmpl	$0, 84(%esp)
	jle	L3006
	movl	%eax, 72(%esp)
	movl	104(%esp), %eax
	movl	%ecx, 92(%esp)
	movl	%edx, 64(%esp)
	movl	%esi, 60(%esp)
	movl	%eax, 108(%esp)
L2381:
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
	jne	L2381
	movl	72(%esp), %eax
	movl	92(%esp), %ecx
	movl	64(%esp), %edx
	movl	60(%esp), %esi
	addl	$1, %eax
	cmpl	%eax, 100(%esp)
	je	L2301
L2944:
	addl	%esi, 104(%esp)
	addl	96(%esp), %ecx
	addl	%esi, %edx
	addl	88(%esp), %edi
	cmpl	68(%esp), %eax
	jb	L2374
	movl	%edi, 92(%esp)
	movl	%ecx, %edi
	jmp	L2925
L3006:
	addl	$1, %eax
	cmpl	%eax, 100(%esp)
	jne	L2944
	jmp	L2301
L2867:
	movl	108(%esp), %ecx
L2376:
	movl	84(%esp), %esi
	movl	%edi, %ebx
	movl	%ecx, %edx
	testl	%esi, %esi
	jle	L3007
	movl	%edi, 108(%esp)
	movl	104(%esp), %esi
L2399:
	movl	(%ebx), %edi
	addl	$4, %edx
	addl	$3, %ebx
	orl	$-16777216, %edi
	movl	%edi, -4(%edx)
	cmpl	%edx, %esi
	jne	L2399
	movl	%esi, 104(%esp)
	movl	108(%esp), %edi
	addl	$1, %eax
	cmpl	%eax, 100(%esp)
	je	L2301
	movl	76(%esp), %ebx
	movl	88(%esp), %esi
	addl	%ebx, 104(%esp)
	addl	96(%esp), %edi
	addl	%esi, 92(%esp)
	addl	%ebx, %ecx
	cmpl	68(%esp), %eax
	jb	L2376
L2927:
	movl	%ecx, 108(%esp)
	jmp	L2373
L3007:
	addl	$1, %eax
	cmpl	%eax, 100(%esp)
	je	L2301
	movl	76(%esp), %esi
	movl	88(%esp), %ebx
	addl	%esi, 104(%esp)
	addl	96(%esp), %edi
	addl	%ebx, 92(%esp)
	addl	%esi, %ecx
	cmpl	68(%esp), %eax
	jb	L2376
	jmp	L2927
L3001:
	movl	(%esi), %edx
	movl	%edx, __ZL9filbuffer(%ecx)
	movl	-4(%esi,%ebx), %edx
	movl	%edx, __ZL9filbuffer-4(%ecx,%ebx)
	jmp	L2333
L3002:
	movzwl	-2(%esi,%ebx), %edx
	movw	%dx, __ZL9filbuffer-2(%ecx,%ebx)
	jmp	L2333
L3000:
	movl	(%esi), %eax
	movl	4(%esi), %edx
	movl	%eax, __ZL9filbuffer(%ecx)
	movl	%edx, __ZL9filbuffer+4(%ecx)
	movl	-8(%esi,%ebx), %eax
	movl	-4(%esi,%ebx), %edx
	movl	%eax, __ZL9filbuffer-8(%ecx,%ebx)
	movl	%edx, __ZL9filbuffer-4(%ecx,%ebx)
	jmp	L2333
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	_kprender.cold;	.scl	3;	.type	32;	.endef
_kprender.cold:
LFSB135:
L2210:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpb	$0, 64(%esp)
	je	L2218
	movl	96(%esp), %eax
	movl	%eax, __ZL6paleng
L2218:
	cmpb	$0, 92(%esp)
	je	L2219
	movzbl	108(%esp), %eax
	movb	%al, __ZL8kcoltype
	movzbl	100(%esp), %eax
	movb	%al, __ZL8bitdepth
	movl	80(%esp), %eax
	movl	%eax, __ZL4ysiz
	movl	84(%esp), %eax
	movl	%eax, __ZL4xsiz
	cmpb	$0, 56(%esp)
	je	L2220
L2219:
	movl	60(%esp), %eax
	movl	%eax, __ZL6bakcol
L2220:
	movl	72(%esp), %eax
	movl	%eax, _intlac
	.cfi_endproc
LFE135:
	.text
	.section	.text.unlikely,"x"
LCOLDE34:
	.text
LHOTE34:
	.p2align 4
	.globl	_wildmatch
	.def	_wildmatch;	.scl	2;	.type	32;	.endef
_wildmatch:
LFB144:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%eax, %ecx
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
	movzbl	(%edx), %esi
	movl	%edx, (%esp)
	movl	%esi, %eax
	movzbl	%al, %ebp
L3009:
	movzbl	(%ecx), %edx
	movl	%edx, %eax
	testl	%edx, %edx
	je	L3012
L3010:
	movzbl	_toupperlookup(%edx), %edx
	cmpb	%dl, _toupperlookup(%ebp)
	je	L3028
	cmpl	$63, %ebp
	je	L3028
L3011:
	cmpl	$42, %ebp
	jne	L3017
	.p2align 5
	.p2align 4
	.p2align 3
L3018:
	addl	$1, (%esp)
	movl	(%esp), %edi
	movzbl	(%edi), %esi
	movl	%esi, %ebx
	cmpb	$42, %bl
	je	L3018
	testb	%bl, %bl
	je	L3016
	movzbl	%bl, %ebp
	movzbl	%al, %edx
	movzbl	_toupperlookup(%ebp), %edi
	testb	%al, %al
	jne	L3023
	jmp	L3043
	.p2align 5
	.p2align 4,,10
	.p2align 3
L3025:
	addl	$1, %ecx
	testb	%al, %al
	je	L3043
	movzbl	%al, %edx
L3023:
	movzbl	1(%ecx), %eax
	movl	%edi, %ebx
	cmpb	%bl, _toupperlookup(%edx)
	jne	L3025
	testb	%al, %al
	je	L3009
	movzbl	%al, %edx
	movl	(%esp), %eax
	movzbl	1(%eax), %eax
	movzbl	_toupperlookup(%eax), %eax
	cmpb	%al, _toupperlookup(%edx)
	je	L3009
	addl	$1, %ecx
	jmp	L3023
	.p2align 4,,10
	.p2align 3
L3043:
	movzbl	_toupperlookup, %eax
	movl	%edi, %edx
	cmpb	%al, %dl
	je	L3027
L3017:
	xorl	%eax, %eax
L3008:
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
L3012:
	.cfi_restore_state
	movl	%esi, %eax
	testb	%al, %al
	je	L3016
	xorl	%eax, %eax
	jmp	L3011
	.p2align 4,,10
	.p2align 3
L3028:
	movl	(%esp), %eax
	addl	$1, %ecx
	movzbl	1(%eax), %esi
	addl	$1, %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	movzbl	%al, %ebp
	jmp	L3009
L3016:
	movl	$1, %eax
	jmp	L3008
L3027:
	movzbl	(%ecx), %edx
	movl	%edx, %eax
	testl	%edx, %edx
	jne	L3010
	xorl	%eax, %eax
	jmp	L3011
	.cfi_endproc
LFE144:
	.p2align 4
	.globl	__ZL14kzcheckhashsizi.lto_priv.0
	.def	__ZL14kzcheckhashsizi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL14kzcheckhashsizi.lto_priv.0:
LFB145:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	movl	__ZL9kzhashbuf.lto_priv.0, %eax
	testl	%eax, %eax
	je	L3063
	movl	__ZL9kzhashsiz, %edx
	addl	__ZL9kzhashpos.lto_priv.0, %ebx
L3050:
	cmpl	%edx, %ebx
	jg	L3051
L3056:
	movl	$1, %eax
L3047:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 3
	.p2align 4,,10
	.p2align 3
L3051:
	.cfi_restore_state
	addl	%edx, %edx
	cmpl	%ebx, %edx
	jl	L3051
	movl	__ZL9kzhashbuf.lto_priv.0, %eax
	movl	_g_sm_heap, %ecx
	movl	%edx, 4(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 16
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	testl	%eax, %eax
	movl	12(%esp), %edx
	jne	L3058
	testl	%edx, %edx
	jne	L3053
L3058:
	movl	%eax, __ZL9kzhashbuf.lto_priv.0
	testl	%eax, %eax
	je	L3064
	movl	%edx, __ZL9kzhashsiz
	jmp	L3056
	.p2align 4,,10
	.p2align 3
L3063:
	movl	$1024, 8(%esp)
	movl	$-1, 4(%esp)
	movl	$__ZL9kzhashead.lto_priv.0, (%esp)
	call	_memset
	movl	$8192, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	testl	%eax, %eax
	je	L3049
	movl	%eax, __ZL9kzhashbuf.lto_priv.0
	movl	$8192, %edx
	movl	$0, __ZL9kzhashpos.lto_priv.0
	movl	$-1, __ZL10kzlastfnam.lto_priv.0
	movl	$8192, __ZL9kzhashsiz
	movl	$-1, __ZL12kzdirnamhead.lto_priv.0
	jmp	L3050
	.p2align 4,,10
	.p2align 3
L3064:
	xorl	%eax, %eax
	jmp	L3047
	.p2align 4,,10
	.p2align 3
L3053:
	movl	%edx, %eax
	call	__Z13handle_memerri
L3049:
	movl	$8192, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE145:
	.p2align 4
	.globl	_kzfindfilestart
	.def	_kzfindfilestart;	.scl	2;	.type	32;	.endef
_kzfindfilestart:
LFB146:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	__ZL5hfind, %eax
	cmpl	$-1, %eax
	je	L3066
	movl	%eax, (%esp)
	call	*__imp__FindClose@4
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	$-1, __ZL5hfind
L3066:
	movl	%ebx, 4(%esp)
	movl	$__ZL6wildst, (%esp)
	call	_strcpy
	movl	%ebx, 4(%esp)
	movl	$__ZL8newildst, (%esp)
	call	_strcpy
	movl	__ZL10kzlastfnam.lto_priv.0, %eax
	movl	$0, __ZL8srchstat
	movl	%eax, __ZL8srchzoff
	movl	__ZL12kzdirnamhead.lto_priv.0, %eax
	movl	%eax, __ZL8srchdoff
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE146:
	.p2align 4
	.globl	_kzfindfile
	.def	_kzfindfile;	.scl	2;	.type	32;	.endef
_kzfindfile:
LFB147:
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
	movl	__ZL8srchstat, %edx
	movb	$0, (%eax)
	movl	%eax, 12(%esp)
	testl	%edx, %edx
	je	L3099
	cmpl	$1, %edx
	je	L3134
L3085:
	cmpl	$2, %edx
	jne	L3096
L3080:
	movl	__ZL9kzhashbuf.lto_priv.0, %ebp
	movl	__ZL8srchzoff, %ebx
	jmp	L3095
	.p2align 4,,10
	.p2align 3
L3136:
	leal	21(%ebp,%ebx), %esi
	movl	$__ZL8newildst, %edx
	leal	4(%ebp,%ebx), %ebx
	movl	%esi, %eax
	call	_wildmatch
	testl	%eax, %eax
	jne	L3135
	movl	(%ebx), %ebx
	movl	%ebx, __ZL8srchzoff
L3095:
	testl	%ebx, %ebx
	jns	L3136
L3093:
	movl	__ZL8srchdoff, %ebx
	testl	%ebx, %ebx
	js	L3097
	movl	__ZL9kzhashbuf.lto_priv.0, %esi
	movl	$__ZL8newildst, (%esp)
	leal	4(%esi,%ebx), %eax
	movl	%eax, 4(%esp)
	call	_strcpy
	movl	$__ZL8newildst, (%esp)
	call	_strlen
	testl	%eax, %eax
	je	L3098
	movzbl	__ZL8newildst-1(%eax), %edx
	cmpb	$47, %dl
	je	L3098
	cmpb	$92, %dl
	je	L3098
	movl	12(%esp), %ecx
	movzbl	(%ecx), %edx
	cmpb	$47, %dl
	je	L3098
	cmpb	$92, %dl
	je	L3098
	movl	$92, %edx
	movw	%dx, __ZL8newildst(%eax)
	.p2align 4
	.p2align 3
L3098:
	movl	$__ZL6wildst, 4(%esp)
	movl	$__ZL8newildst, (%esp)
	call	_strcat
	movl	(%esi,%ebx), %eax
	movl	%eax, __ZL8srchdoff
	movl	12(%esp), %eax
	movb	$0, (%eax)
L3099:
	movzbl	__ZL8newildst, %edx
	testb	%dl, %dl
	je	L3097
	movl	$1, __ZL8srchstat
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	movl	$0, __ZL14wildstpathleng
	.p2align 6
	.p2align 4
	.p2align 3
L3076:
	cmpb	$47, %dl
	sete	%al
	cmpb	$92, %dl
	sete	%dl
	addl	$1, %ecx
	orb	%dl, %al
	movzbl	__ZL8newildst(%ecx), %edx
	cmovne	%eax, %ebx
	cmovne	%ecx, %edi
	testb	%dl, %dl
	jne	L3076
	xorl	%eax, %eax
	testb	%bl, %bl
	je	L3077
	movl	%edi, __ZL14wildstpathleng
	movl	%edi, %eax
L3077:
	movl	%eax, 8(%esp)
	movl	12(%esp), %eax
	movl	$__ZL8newildst, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movl	$__ZL7findata, 4(%esp)
	movl	$__ZL8newildst, (%esp)
	call	*__imp__FindFirstFileA@8
	.cfi_def_cfa_offset 32
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	movl	%eax, __ZL5hfind
	cmpl	$-1, %eax
	je	L3133
	movl	__ZL7findata, %eax
	testb	$2, %al
	jne	L3083
	testb	$16, %al
	je	L3082
	cmpb	$46, __ZL7findata+44
	jne	L3082
	cmpb	$0, __ZL7findata+45
	je	L3083
L3082:
	movl	12(%esp), %ebp
	addl	__ZL14wildstpathleng, %ebp
	movl	$__ZL7findata+44, 4(%esp)
	movl	%ebp, (%esp)
	call	_strcpy
	testb	$16, __ZL7findata
	jne	L3137
L3084:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1, %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	%edx, %eax
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
L3096:
	.cfi_restore_state
	cmpl	$3, %edx
	je	L3093
L3102:
	xorl	%edx, %edx
L3139:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%edx, %eax
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
L3083:
	.cfi_restore_state
	movl	__ZL8srchstat, %edx
	cmpl	$1, %edx
	jne	L3085
	.p2align 4
	.p2align 3
L3134:
	movl	__ZL14wildstpathleng, %eax
	movl	__imp__FindNextFileA@8, %ebx
L3086:
	movl	%eax, 8(%esp)
	movl	12(%esp), %eax
	movl	$__ZL8newildst, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 16(%esp)
	call	_memcpy
	movl	__ZL5hfind, %eax
	movl	$__ZL7findata, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	.cfi_def_cfa_offset 32
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	testl	%eax, %eax
	movl	16(%esp), %edx
	je	L3138
	movl	__ZL7findata, %ecx
	movl	__ZL14wildstpathleng, %eax
	testb	$2, %cl
	jne	L3086
	andl	$16, %ecx
	je	L3090
	cmpb	$46, __ZL7findata+44
	jne	L3090
	cmpb	$0, __ZL7findata+45
	je	L3086
L3090:
	movl	12(%esp), %ebx
	movl	$__ZL7findata+44, 4(%esp)
	movl	%edx, 16(%esp)
	addl	%eax, %ebx
	movl	%ebx, (%esp)
	call	_strcpy
	testb	$16, __ZL7findata
	movl	16(%esp), %edx
	je	L3071
	movl	%ebx, (%esp)
	movl	%edx, 12(%esp)
	call	_strlen
	movl	$92, %ecx
	movl	12(%esp), %edx
	movw	%cx, (%ebx,%eax)
	jmp	L3071
	.p2align 4,,10
	.p2align 3
L3135:
	movl	%eax, 16(%esp)
	movl	12(%esp), %eax
	leal	1(%eax), %ebp
	movb	$124, (%eax)
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	call	_strcpy
	movl	(%ebx), %eax
	movl	16(%esp), %edx
	movl	%eax, __ZL8srchzoff
L3071:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%edx, %eax
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
L3138:
	.cfi_restore_state
	movl	__ZL5hfind, %eax
	movl	%eax, (%esp)
	call	*__imp__FindClose@4
	.cfi_def_cfa_offset 36
	subl	$4, %esp
	.cfi_def_cfa_offset 40
	movl	$-1, __ZL5hfind
	.p2align 4
	.p2align 3
L3133:
	movl	__ZL9kzhashbuf.lto_priv.0, %ebx
	testl	%ebx, %ebx
	je	L3102
	movl	$2, __ZL8srchstat
	jmp	L3080
L3137:
	movl	%ebp, (%esp)
	movl	$92, %esi
	call	_strlen
	movw	%si, 0(%ebp,%eax)
	jmp	L3084
L3097:
	movl	$-1, __ZL8srchstat
	xorl	%edx, %edx
	jmp	L3139
	.cfi_endproc
LFE147:
.lcomm __ZL7findata,320,32
.lcomm __ZL14wildstpathleng,4,4
	.data
	.align 4
__ZL8srchdoff:
	.long	-1
.lcomm __ZL8srchzoff,4,4
	.align 4
__ZL8srchstat:
	.long	-1
.lcomm __ZL8newildst,260,32
.lcomm __ZL6wildst,260,32
	.align 4
__ZL5hfind:
	.long	-1
	.globl	__ZL12kzdirnamhead.lto_priv.0
	.align 4
__ZL12kzdirnamhead.lto_priv.0:
	.long	-1
.lcomm __ZL9kzhashsiz,4,4
	.globl	__ZL10kzlastfnam.lto_priv.0
	.align 4
__ZL10kzlastfnam.lto_priv.0:
	.long	-1
	.globl	__ZL9kzhashpos.lto_priv.0
	.bss
	.align 4
__ZL9kzhashpos.lto_priv.0:
	.space 4
	.globl	__ZL9kzhashead.lto_priv.0
	.align 32
__ZL9kzhashead.lto_priv.0:
	.space 1024
	.globl	__ZL9kzhashbuf.lto_priv.0
	.align 4
__ZL9kzhashbuf.lto_priv.0:
	.space 4
	.globl	_toupperlookup
	.data
	.align 32
_toupperlookup:
	.ascii "\0\1\2\3\4\5\6\7\10\11\12\13\14\15\16\17\20\21\22\23\24\25\26\27\30\31\32\33\34\35\36\37 !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~\177\200\201\202\203\204\205\206\207\210\211\212\213\214\215\216\217\220\221\222\223\224\225\226\227\230\231\232\233\234\235\236\237\240\241\242\243\244\245\246\247\250\251\252\253\254\255\256\257\260\261\262\263\264\265\266\267\270\271\272\273\274\275\276\277\300\301\302\303\304\305\306\307\310\311\312\313\314\315\316\317\320\321\322\323\324\325\326\327\330\331\332\333\334\335\336\337\340\341\342\343\344\345\346\347\350\351\352\353\354\355\356\357\360\361\362\363\364\365\366\367\370\371\372\373\374\375\376\377"
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
	.globl	_kzfs
	.align 32
_kzfs:
	.space 44
	.globl	olinbuf
	.align 32
olinbuf:
	.space 131072
	.globl	__ZL10zipfilmode.lto_priv.0
	.align 4
__ZL10zipfilmode.lto_priv.0:
	.space 4
	.globl	_globalnoeffect
	.align 4
_globalnoeffect:
	.space 4
	.globl	_tilefilenum
	.align 32
_tilefilenum:
	.space 30720
.lcomm _hicreplc,122880,32
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
	.globl	_glad_glDeleteTextures
	.align 4
_glad_glDeleteTextures:
	.space 4
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
LC35:
	.ascii "GL_NEAREST\0"
LC36:
	.ascii "GL_LINEAR\0"
LC37:
	.ascii "GL_NEAREST_MIPMAP_NEAREST\0"
LC38:
	.ascii "GL_LINEAR_MIPMAP_NEAREST\0"
LC39:
	.ascii "GL_NEAREST_MIPMAP_LINEAR\0"
LC40:
	.ascii "GL_LINEAR_MIPMAP_LINEAR\0"
	.align 32
_glfiltermodes:
	.long	LC35
	.long	9728
	.long	9728
	.long	LC36
	.long	9729
	.long	9729
	.long	LC37
	.long	9984
	.long	9728
	.long	LC38
	.long	9985
	.long	9729
	.long	LC39
	.long	9986
	.long	9728
	.long	LC40
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
.lcomm _updatesectorneighborlist,8192,32
.lcomm _updatesectorneighbormap,512,32
	.section .rdata,"dr"
	.align 4
LC7:
	.long	1065353216
	.align 16
LC8:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 4
LC10:
	.long	1007614518
	.align 4
LC12:
	.long	-1073741824
	.align 8
LC22:
	.long	858993459
	.long	1070805811
	.align 8
LC23:
	.long	-1374389535
	.long	1071833415
	.align 8
LC24:
	.long	-1030792151
	.long	1069295861
	.align 16
LC28:
	.long	1
	.long	2
	.long	3
	.long	0
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_inside;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.1;	.scl	2;	.type	32;	.endef
	.def	_videoSetMode;	.scl	2;	.type	32;	.endef
	.def	__Z17OSD_ResizeDisplayii;	.scl	2;	.type	32;	.endef
	.def	__ZL20videoAllocateBuffersv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_videoBeginDrawing;	.scl	2;	.type	32;	.endef
	.def	_videoEndDrawing;	.scl	2;	.type	32;	.endef
	.def	_strtol;	.scl	2;	.type	32;	.endef
	.def	_yax_getneighborsect;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.1;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_yax_getnextwall.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_yax_getnextwall;	.scl	2;	.type	32;	.endef
	.def	_yax_setnextwall.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZL17get_screen_coordsRK4vec2IiES2_PiS3_S3_S3_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_renderAddTsprite;	.scl	2;	.type	32;	.endef
	.def	_animateoffs;	.scl	2;	.type	32;	.endef
	.def	__ZL14dorotatespriteiiissacihhiiiii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_sincosf;	.scl	2;	.type	32;	.endef
	.def	__Z10OSD_PrintfPKcz;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj;	.scl	2;	.type	32;	.endef
	.def	_fprintf;	.scl	2;	.type	32;	.endef
	.def	_abort;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_strcasecmp;	.scl	2;	.type	32;	.endef
	.def	_initprintf;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z21polymost_printtext256iissPKcc;	.scl	2;	.type	32;	.endef
	.def	_fread;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_strcat;	.scl	2;	.type	32;	.endef
