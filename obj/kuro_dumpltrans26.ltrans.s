	.file	"<artificial>"
	.text
	.p2align 4
	.def	__ZL16classicDrawVoxeliiiiiiicPKiS0_siiii;	.scl	3;	.type	32;	.endef
__ZL16classicDrawVoxeliiiiiiicPKiS0_siiii:
LFB0:
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
	movl	%edx, %ebx
	subl	$352, %esp
	.cfi_def_cfa_offset 372
	movl	%ecx, 104(%esp)
	movl	384(%esp), %ecx
	movl	%eax, 88(%esp)
	movl	372(%esp), %eax
	movl	%ecx, 24(%esp)
	movl	392(%esp), %ecx
	movl	376(%esp), %edi
	movl	%edx, 96(%esp)
	leal	512(%eax), %edx
	andl	$2047, %eax
	movl	%ecx, 192(%esp)
	movl	396(%esp), %ecx
	andl	$2047, %edx
	movl	%edi, 44(%esp)
	movl	380(%esp), %ebp
	movl	%ecx, 196(%esp)
	movzwl	400(%esp), %ecx
	movw	%cx, 72(%esp)
	movl	404(%esp), %ecx
	movl	%ecx, 172(%esp)
	movl	408(%esp), %ecx
	movl	%ecx, 120(%esp)
	movl	412(%esp), %ecx
	movl	%ecx, 124(%esp)
	movl	_cosglobalang, %ecx
	movl	%ecx, 112(%esp)
	movzwl	_sintable(%edx,%edx), %edx
	movl	_singlobalang, %edi
	subl	_globalposx, %esi
	movw	%dx, 28(%esp)
	movzwl	_sintable(%eax,%eax), %edx
	movl	%esi, %eax
	movl	%ebx, %esi
	movl	%edi, 116(%esp)
	subl	_globalposy, %esi
	movw	%dx, 52(%esp)
	movl	%ecx, %edx
/APP
 # 5050 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $6, %edx, %eax
 # 0 "" 2
 # 5050 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	_xdimscale, %edx
	movl	%eax, %ebx
	movl	416(%esp), %eax
/APP
 # 5051 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $19, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_globvis, %edx
/APP
 # 5052 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$0, %edx
	sarl	$8, %eax
	addl	_globalshade, %eax
	cmovs	%edx, %eax
	movswl	_numshades, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movzbl	388(%esp), %edx
	sall	$8, %eax
	addl	_palookup(,%edx,4), %eax
	movl	%eax, 4(%esp)
	movl	_ylookup, %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	_setupdrawslab
	movl	44(%esp), %edi
	movl	24(%esp), %ecx
	cmpl	%ebp, %edi
	movl	%edi, %eax
	cmovl	%ebp, %eax
	xorl	%edx, %edx
	sall	$21, %eax
	sarl	$5, %eax
L3:
	cmpl	%eax, %ebx
	jl	L224
	addl	$1, %edx
	addl	%eax, %eax
	cmpl	$5, %edx
	jne	L3
	movl	$4, 160(%esp)
L2:
	movl	_novoxmips, %edi
	testl	%edi, %edi
	je	L4
	leal	(%ecx,%ecx,4), %eax
	xorl	%ebx, %ebx
	movl	_voxoff(,%eax,4), %eax
	movl	%eax, 36(%esp)
L5:
	movl	36(%esp), %esi
	testl	%esi, %esi
	je	L1
	.p2align 4
	.p2align 3
L235:
	movswl	28(%esp), %eax
	movl	_voxscale(,%ecx,4), %edi
	movl	%eax, 28(%esp)
	movswl	52(%esp), %eax
	movl	%eax, 24(%esp)
	cmpl	$65536, %edi
	je	L232
	movl	44(%esp), %eax
	movl	%ebx, %ecx
	movl	%edi, %edx
	sall	%cl, %eax
/APP
 # 5082 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $8, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	%ebp, %eax
	movl	%edi, %edx
	sall	%cl, %eax
/APP
 # 5083 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $8, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 56(%esp)
L11:
	movl	_xyaspect, %edx
	movl	%esi, %eax
/APP
 # 5087 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	_xdimen, %eax
	sall	$8, %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%esi, %eax
	imull	_xdimenscale
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	__ZL17viewingrangerecip.lto_priv.0, %edx
	movl	%eax, %ebp
	movl	_xdimenscale, %eax
/APP
 # 5089 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	56(%esp), %edi
	movl	%eax, %ecx
	movl	%edi, %eax
	movl	%edi, 144(%esp)
	sarl	$31, %eax
	movl	%eax, 148(%esp)
	movl	_xdimen, %eax
	sall	$8, %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%edi, %eax
	imull	%ecx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%ebp, 4(%esp)
	movl	$1073741824, (%esp)
	movl	%eax, 140(%esp)
	call	_divideu32.lto_priv.0
	movl	36(%esp), %edi
	movl	%eax, %ebx
	movl	8(%edi), %esi
	movl	12(%edi), %edx
	movl	(%edi), %ecx
	movl	4(%edi), %eax
	movl	%esi, 68(%esp)
	movl	16(%edi), %esi
	movl	20(%edi), %edi
	movl	%eax, 264(%esp)
	movl	%ecx, %eax
	sall	$8, %eax
	movl	%esi, 60(%esp)
	movl	%edi, 128(%esp)
	movzwl	72(%esp), %edi
	subl	%edx, %eax
	movl	%ecx, 44(%esp)
	andw	$4, %di
	movw	%di, 210(%esp)
	movl	%eax, %edi
	cmove	%edx, %edi
	movl	_globalposx, %edx
	movl	%edi, 52(%esp)
	movl	88(%esp), %edi
	movl	%edx, 132(%esp)
	subl	%edi, %edx
	movl	%edx, %eax
	movl	%ebx, %edx
/APP
 # 5099 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_globalposy, %edx
	movl	96(%esp), %edi
	movl	%eax, %ecx
	movl	%edx, 136(%esp)
	subl	%edi, %edx
	movl	%edx, %eax
	movl	%ebx, %edx
/APP
 # 5100 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	28(%esp), %edx
	movl	24(%esp), %edi
	movl	%eax, 80(%esp)
	movl	%ecx, %eax
	movl	80(%esp), %esi
/APP
 # 5101 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 152(%esp)
	movl	28(%esp), %edx
	negl	%edi
	movl	%ecx, %esi
	movl	80(%esp), %eax
/APP
 # 5102 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 156(%esp)
	movl	28(%esp), %edx
	movl	%ebp, %eax
/APP
 # 5106 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 28(%esp)
	movl	24(%esp), %edx
	movl	%ebp, %eax
/APP
 # 5107 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edi
	movl	%eax, %ebp
	movl	28(%esp), %edx
	movl	52(%esp), %eax
	movl	60(%esp), %esi
	negl	%edi
/APP
 # 5109 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $18, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 164(%esp)
	movl	28(%esp), %edx
	movl	%ebp, %edi
	movl	60(%esp), %eax
	movl	52(%esp), %esi
/APP
 # 5110 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $18, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	112(%esp), %esi
	movl	160(%esp), %edi
	movl	%eax, 168(%esp)
	movl	%ebp, %eax
	sall	$2, %esi
	movl	%edi, %ecx
	movl	%esi, %edx
	movl	116(%esp), %esi
	sarl	%cl, %edx
	sall	$2, %esi
	movl	%edx, 24(%esp)
	sarl	%cl, %esi
	movl	%esi, %edi
	movl	%esi, 80(%esp)
	movl	%esi, %ecx
	movl	28(%esp), %esi
	negl	%edi
/APP
 # 5120 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 252(%esp)
	movl	24(%esp), %edx
	movl	%ebp, %esi
	movl	%ecx, %edi
	movl	28(%esp), %eax
/APP
 # 5121 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	44(%esp), %ecx
	movl	264(%esp), %ebx
	movl	%eax, 248(%esp)
	cmpl	%ebx, %ecx
	cmovge	%ecx, %ebx
	testl	%ebx, %ebx
	js	L13
	movl	252(%esp), %esi
	addl	$1, %ebx
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	248(%esp), %edi
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L14:
	movl	%edx, __ZL6ggxinc(,%eax,4)
	addl	%esi, %edx
	movl	%ecx, __ZL6ggyinc(,%eax,4)
	addl	$1, %eax
	addl	%edi, %ecx
	cmpl	%ebx, %eax
	jne	L14
L13:
	movl	104(%esp), %eax
	movl	_globalposz, %ebp
	subl	%eax, %ebp
	movl	%ebp, %eax
/APP
 # 5130 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	56(%esp), %eax
/APP
 # 5130 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	sarl	$10, %edx
	cmpl	%eax, %edx
	jge	L1
	movl	36(%esp), %eax
	movl	152(%esp), %esi
	movl	96(%esp), %ecx
	addl	$24, %eax
	movl	%eax, 328(%esp)
	movl	52(%esp), %eax
	addl	%esi, %eax
	movl	156(%esp), %esi
	sarl	$8, %eax
	movl	%eax, %edi
	movl	%eax, 308(%esp)
	movl	60(%esp), %eax
	addl	%esi, %eax
	sarl	$8, %eax
	movl	%eax, %esi
	movl	%eax, 312(%esp)
	movl	44(%esp), %eax
	leal	-1(%eax), %ebx
	xorl	%eax, %eax
	testl	%edi, %edi
	cmovns	%edi, %eax
	movl	%ebx, 220(%esp)
	cmpl	%ebx, %eax
	movl	%eax, 320(%esp)
	cmovle	%eax, %ebx
	movl	264(%esp), %eax
	leal	-1(%eax), %edi
	xorl	%eax, %eax
	testl	%esi, %esi
	movl	%ebx, 256(%esp)
	cmovns	%esi, %eax
	movl	88(%esp), %esi
	movl	%edi, 316(%esp)
	cmpl	%eax, %edi
	movl	%eax, 324(%esp)
	cmovle	%edi, %eax
	movl	%eax, 268(%esp)
	movl	132(%esp), %eax
	subl	%eax, %esi
	movl	164(%esp), %eax
	subl	%eax, %esi
	movl	136(%esp), %eax
	movl	%esi, %ebx
	subl	%eax, %ecx
	movl	168(%esp), %eax
	subl	%eax, %ecx
	movl	24(%esp), %eax
	imull	%ecx
	movl	%eax, %esi
	movl	80(%esp), %eax
	movl	%edx, %edi
	imull	%ebx
	subl	%eax, %esi
	movl	24(%esp), %eax
	sbbl	%edx, %edi
	movl	%esi, 332(%esp)
	imull	%ebx
	movl	%edi, 336(%esp)
	movl	68(%esp), %ebx
	movl	%eax, %esi
	movl	80(%esp), %eax
	movl	%edx, %edi
	imull	%ecx
	addl	%eax, %esi
	movl	128(%esp), %eax
	adcl	%edx, %edi
	movl	%esi, 340(%esp)
	sall	$14, %ebx
	movl	%edi, 344(%esp)
	sall	$7, %eax
	testb	$-128, 72(%esp)
	je	L233
	testb	$16, 172(%esp)
	cmove	%eax, %ebx
L16:
	movl	%ebp, %eax
	movl	144(%esp), %esi
	movl	148(%esp), %edi
	cltd
	sall	$21, %eax
	shldl	$21, %ebp, %edx
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	56(%esp), %edx
	addl	%ebx, %eax
	movl	%eax, 52(%esp)
	movl	68(%esp), %eax
	sall	$15, %eax
	subl	%ebx, %eax
/APP
 # 5143 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $21, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	%ebx, %eax
	movl	56(%esp), %edx
	negl	%eax
/APP
 # 5144 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $21, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	104(%esp), %edx
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	leal	(%edx,%eax), %ebx
	movl	124(%esp), %eax
	cmpl	%eax, %ebx
	cmovl	%eax, %ebx
	leal	(%edx,%ecx), %eax
	movl	120(%esp), %ecx
	cmpl	%ecx, %eax
	cmovg	%ecx, %eax
	subl	_globalposz, %eax
	cltd
	shldl	$21, %eax, %edx
	sall	$21, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%esi, 8(%esp)
	movl	%eax, 236(%esp)
	movl	%ebx, %eax
	subl	_globalposz, %eax
	cltd
	movl	%edi, 12(%esp)
	shldl	$21, %eax, %edx
	sall	$21, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, 240(%esp)
	movl	252(%esp), %eax
/APP
 # 5147 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	248(%esp), %eax
/APP
 # 5147 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%eax, %ebx
	movl	44(%esp), %eax
	xorl	%ebp, %ebp
	sarl	%ebx
	leal	4(,%eax,4), %eax
	movl	%eax, 212(%esp)
	call	_videoBeginDrawing
	testb	$8, 72(%esp)
	jne	L136
	movl	%ebx, 184(%esp)
	sarl	$31, %ebx
	movl	%ebp, %edi
	movl	%ebx, 188(%esp)
	.p2align 4
	.p2align 3
L78:
	cmpl	$7, %edi
	ja	L18
	jmp	*L20(,%edi,4)
	.section .rdata,"dr"
	.align 4
L20:
	.long	L18
	.long	L26
	.long	L25
	.long	L24
	.long	L23
	.long	L150
	.long	L21
	.long	L19
	.text
L4:
	movl	160(%esp), %ebx
	leal	(%ecx,%ecx,4), %edx
	leal	(%edx,%ebx), %eax
	movl	_voxoff(,%eax,4), %eax
	testl	%eax, %eax
	jne	L6
	testl	%ebx, %ebx
	je	L6
	sall	$2, %edx
	jmp	L7
	.p2align 5
	.p2align 4,,10
	.p2align 3
L234:
	testl	%ebx, %ebx
	je	L168
L7:
	subl	$1, %ebx
	movl	_voxoff(%edx,%ebx,4), %eax
	testl	%eax, %eax
	je	L234
L168:
	movl	%eax, 36(%esp)
	movl	36(%esp), %esi
	movl	%ebx, 160(%esp)
	testl	%esi, %esi
	jne	L235
L1:
	addl	$352, %esp
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
L26:
	.cfi_restore_state
	movl	220(%esp), %edi
	cmpl	%edi, 320(%esp)
	jl	L236
L25:
	movl	256(%esp), %esi
	testl	%esi, %esi
	jle	L24
	movl	$1, 232(%esp)
	movl	$2, %edi
	xorl	%esi, %esi
L76:
	movl	316(%esp), %eax
	movl	324(%esp), %ebx
	cmpl	%ebx, %eax
	jle	L74
	movl	%eax, 24(%esp)
	movl	268(%esp), %eax
	movl	$-1, 104(%esp)
	movl	%eax, 80(%esp)
	movl	256(%esp), %eax
	movl	%eax, 244(%esp)
L73:
	movl	24(%esp), %ebx
	movl	312(%esp), %eax
	subl	%eax, %ebx
/APP
 # 5197 "source/build/src/engine.cpp" 1
	addl %ebx, %ebx; sbbl %eax, %eax; cmpl %ebx, %eax; adcb $0, %al
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	308(%esp), %eax
	movl	%esi, %ebx
	subl	%eax, %ebx
/APP
 # 5197 "source/build/src/engine.cpp" 1
	addl %ebx, %ebx; sbbl %eax, %eax; cmpl %ebx, %eax; adcb $0, %al
 # 0 "" 2
/NO_APP
	leal	(%eax,%eax,2), %eax
	addl	%edx, %eax
	leal	4(%eax), %edx
	cmpl	$8, %edx
	ja	L27
	jmp	*L29(,%edx,4)
	.section .rdata,"dr"
	.align 4
L29:
	.long	L30
	.long	L31
	.long	L31
	.long	L30
	.long	L27
	.long	L28
	.long	L27
	.long	L27
	.long	L28
	.text
L233:
	addl	%eax, %ebx
	jmp	L16
L19:
	movl	316(%esp), %eax
	movl	$-1, 104(%esp)
	movl	$2, 232(%esp)
	movl	256(%esp), %esi
	movl	%eax, 24(%esp)
L22:
	movl	232(%esp), %ebx
	movl	256(%esp), %eax
	addl	%ebx, %eax
	movl	104(%esp), %ebx
	movl	%eax, 244(%esp)
	movl	268(%esp), %eax
	addl	%ebx, %eax
	movl	%eax, 80(%esp)
	jmp	L73
L24:
	movl	220(%esp), %edi
	cmpl	%edi, 320(%esp)
	jl	L237
L23:
	movl	256(%esp), %eax
	testl	%eax, %eax
	jns	L238
L150:
	movl	268(%esp), %eax
	movl	$2, 104(%esp)
	movl	$5, %edi
	movl	$-1, 232(%esp)
	movl	220(%esp), %esi
	movl	%eax, 24(%esp)
	jmp	L22
L232:
	leal	8(%ebx), %ecx
	movl	44(%esp), %esi
	sall	%cl, %ebp
	movl	%ebp, 56(%esp)
	sall	%cl, %esi
	jmp	L11
L136:
	movl	%ebx, 200(%esp)
	sarl	$31, %ebx
	movl	%ebp, %edi
	movl	%ebx, 204(%esp)
	.p2align 4
	.p2align 3
L17:
	cmpl	$7, %edi
	ja	L79
	jmp	*L81(,%edi,4)
	.section .rdata,"dr"
	.align 4
L81:
	.long	L79
	.long	L87
	.long	L86
	.long	L85
	.long	L84
	.long	L153
	.long	L82
	.long	L80
	.text
L82:
	movl	268(%esp), %ecx
	testl	%ecx, %ecx
	jns	L154
	movl	316(%esp), %eax
	movl	$-1, 112(%esp)
	movl	$7, %edi
	movl	$2, 244(%esp)
	movl	256(%esp), %ecx
	movl	%eax, 24(%esp)
	jmp	L83
L87:
	movl	220(%esp), %edi
	cmpl	%edi, 320(%esp)
	jl	L239
L86:
	movl	256(%esp), %ebx
	testl	%ebx, %ebx
	jle	L85
	movl	$1, 244(%esp)
	movl	$2, %edi
	xorl	%ecx, %ecx
L88:
	movl	316(%esp), %eax
	movl	324(%esp), %esi
	cmpl	%esi, %eax
	jg	L240
L90:
	addl	$1, %edi
	jmp	L17
L85:
	movl	220(%esp), %edi
	cmpl	%edi, 320(%esp)
	jl	L241
L84:
	movl	256(%esp), %edx
	movl	268(%esp), %eax
	testl	%edx, %edx
	movl	%eax, 24(%esp)
	jns	L242
	movl	$-1, 244(%esp)
	movl	220(%esp), %ecx
	movl	$5, %edi
	movl	$2, 112(%esp)
L83:
	movl	244(%esp), %esi
	movl	256(%esp), %eax
	addl	%esi, %eax
	movl	112(%esp), %esi
	movl	%eax, 260(%esp)
	movl	268(%esp), %eax
	addl	%esi, %eax
	movl	%eax, 88(%esp)
L91:
	movl	24(%esp), %ebx
	movl	312(%esp), %eax
	subl	%eax, %ebx
/APP
 # 5197 "source/build/src/engine.cpp" 1
	addl %ebx, %ebx; sbbl %eax, %eax; cmpl %ebx, %eax; adcb $0, %al
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	308(%esp), %eax
	movl	%ecx, %ebx
	subl	%eax, %ebx
/APP
 # 5197 "source/build/src/engine.cpp" 1
	addl %ebx, %ebx; sbbl %eax, %eax; cmpl %ebx, %eax; adcb $0, %al
 # 0 "" 2
/NO_APP
	leal	(%eax,%eax,2), %eax
	addl	%edx, %eax
	leal	4(%eax), %edx
	cmpl	$8, %edx
	ja	L92
	jmp	*L94(,%edx,4)
	.section .rdata,"dr"
	.align 4
L94:
	.long	L95
	.long	L96
	.long	L96
	.long	L95
	.long	L92
	.long	L93
	.long	L92
	.long	L92
	.long	L93
	.text
L224:
	movl	%edx, 160(%esp)
	jmp	L2
L21:
	movl	268(%esp), %ebp
	movl	256(%esp), %esi
	testl	%ebp, %ebp
	jns	L152
	movl	316(%esp), %eax
	movl	$-1, 104(%esp)
	movl	$7, %edi
	movl	$2, 232(%esp)
	movl	%eax, 24(%esp)
	jmp	L22
L80:
	movl	316(%esp), %eax
	movl	$-1, 112(%esp)
	movl	$2, 244(%esp)
	movl	256(%esp), %ecx
	movl	%eax, 24(%esp)
	jmp	L83
L153:
	movl	268(%esp), %eax
	movl	$2, 112(%esp)
	movl	$5, %edi
	movl	$-1, 244(%esp)
	movl	220(%esp), %ecx
	movl	%eax, 24(%esp)
	jmp	L83
L154:
	movl	$0, 24(%esp)
	movl	256(%esp), %ecx
	movl	$2, 244(%esp)
	movl	$1, 112(%esp)
	jmp	L83
L239:
	movl	$-1, 244(%esp)
	movl	%edi, %ecx
	movl	$1, %edi
L89:
	movl	268(%esp), %eax
	testl	%eax, %eax
	jle	L90
	movl	268(%esp), %eax
	movl	$1, 112(%esp)
	movl	$0, 24(%esp)
	movl	%eax, 88(%esp)
	movl	256(%esp), %eax
	movl	%eax, 260(%esp)
	jmp	L91
L237:
	movl	$-1, 232(%esp)
	movl	%edi, %esi
	movl	$3, %edi
	jmp	L76
L242:
	movl	$2, 112(%esp)
	movl	$4, %edi
	xorl	%ecx, %ecx
	movl	$1, 244(%esp)
	jmp	L83
L238:
	movl	268(%esp), %eax
	movl	$2, 104(%esp)
	movl	$4, %edi
	xorl	%esi, %esi
	movl	$1, 232(%esp)
	movl	%eax, 24(%esp)
	jmp	L22
L236:
	movl	$-1, 232(%esp)
	movl	%edi, %esi
	movl	$1, %edi
L75:
	movl	268(%esp), %eax
	testl	%eax, %eax
	jg	L243
L74:
	addl	$1, %edi
	jmp	L78
L241:
	movl	$-1, 244(%esp)
	movl	%edi, %ecx
	movl	$3, %edi
	jmp	L88
L93:
	movl	248(%esp), %eax
	movl	252(%esp), %ebp
	movl	%eax, 164(%esp)
	cmpl	$6, %edx
	jg	L97
L160:
	movl	$0, 168(%esp)
	xorl	%ebx, %ebx
	jmp	L98
L96:
	movl	248(%esp), %esi
	movl	252(%esp), %ebx
	movl	%esi, %eax
	leal	(%ebx,%esi), %ebp
	subl	%ebx, %eax
	movl	%eax, 164(%esp)
	xorl	%eax, %eax
	cmpl	$2, %edx
	cmove	%eax, %esi
	cmovne	%ebx, %eax
	movl	%esi, 168(%esp)
	movl	%eax, %ebx
L98:
	xorl	%edx, %edx
	cmpl	%ecx, 308(%esp)
	movl	24(%esp), %esi
	setg	%dl
	cmpl	%esi, 312(%esp)
	movl	__ZL17viewingrangerecip.lto_priv.0, %esi
	setg	%al
	leal	4(,%eax,4), %eax
	addb	__ZL8pow2char.lto_priv.9(%edx), %al
	movl	%esi, 28(%esp)
	movl	%eax, %edx
	xorl	$3, %eax
	cmpw	$0, 210(%esp)
	cmovne	%eax, %edx
	movl	112(%esp), %eax
	movb	%dl, 184(%esp)
	testl	%eax, %eax
	jle	L103
	movl	248(%esp), %eax
	movl	%esi, %edx
/APP
 # 5245 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 276(%esp)
	movl	252(%esp), %eax
	movl	%eax, 272(%esp)
L104:
	movl	%ebx, %eax
	movl	28(%esp), %edx
	subl	%ebp, %eax
/APP
 # 5249 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 176(%esp)
	movl	28(%esp), %edx
	movl	%ebp, %eax
/APP
 # 5250 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebp
	movl	260(%esp), %eax
	cmpl	%eax, %ecx
	je	L105
	movzbl	184(%esp), %esi
	movl	24(%esp), %ebx
	movl	%ebp, 292(%esp)
	movl	%edi, 348(%esp)
	movl	328(%esp), %edi
	leal	16(%esi), %eax
	movb	%al, 216(%esp)
	leal	32(%esi), %eax
	movl	344(%esp), %esi
	movb	%al, 136(%esp)
	movl	__ZL6ggxinc(,%ebx,4), %eax
	movl	340(%esp), %ebx
	cltd
	subl	%eax, %ebx
	movl	264(%esp), %eax
	movl	%ebx, 300(%esp)
	movl	24(%esp), %ebx
	sbbl	%edx, %esi
	sarl	$31, %ebp
	addl	$1, %eax
	movl	%ebp, 296(%esp)
	movl	%eax, 284(%esp)
	movl	332(%esp), %eax
	addl	__ZL6ggyinc(,%ebx,4), %eax
	movl	%esi, 304(%esp)
	movl	%eax, 288(%esp)
	movl	28(%esp), %esi
	.p2align 4
	.p2align 3
L133:
	cmpw	$0, 210(%esp)
	jne	L109
	movl	88(%esp), %eax
	movl	%ecx, %ebp
	cmpl	%eax, %ebx
	je	L110
L108:
	movl	(%edi,%ecx,4), %eax
	movl	%ebx, 24(%esp)
	movl	%ebx, 224(%esp)
	addl	%edi, %eax
	movl	%edi, 228(%esp)
	movl	%eax, 152(%esp)
	movl	284(%esp), %eax
	movl	%ebp, 232(%esp)
	imull	%eax, %ecx
	movl	212(%esp), %eax
	leal	(%eax,%ecx,2), %eax
	addl	%edi, %eax
	movl	%eax, 156(%esp)
	movl	288(%esp), %eax
	addl	__ZL6ggxinc(,%ebp,4), %eax
	imull	%esi
	shrdl	$16, %edx, %eax
	sarl	$16, %edx
	addl	292(%esp), %eax
	adcl	296(%esp), %edx
	movl	%eax, 60(%esp)
	movl	__ZL6ggyinc(,%ebp,4), %eax
	movl	%edx, 64(%esp)
	cltd
	addl	300(%esp), %eax
	adcl	304(%esp), %edx
	movl	%eax, 28(%esp)
	movl	276(%esp), %eax
	movl	%edx, 32(%esp)
	movl	%eax, 96(%esp)
	sarl	$31, %eax
	movl	%eax, 100(%esp)
	movl	272(%esp), %eax
	movl	%eax, 104(%esp)
	sarl	$31, %eax
	movl	%eax, 108(%esp)
	jmp	L132
	.p2align 4,,10
	.p2align 3
L111:
	movl	112(%esp), %eax
	movl	96(%esp), %edi
	addl	%eax, 24(%esp)
	movl	100(%esp), %ebp
	addl	%edi, 60(%esp)
	movl	104(%esp), %ebx
	adcl	%ebp, 64(%esp)
	movl	108(%esp), %esi
	subl	%ebx, 28(%esp)
	movl	24(%esp), %ecx
	sbbl	%esi, 32(%esp)
	cmpl	%ecx, 88(%esp)
	je	L244
L132:
	movl	__ZL10nytooclose.lto_priv.0, %ecx
	movl	28(%esp), %esi
	movl	32(%esp), %edi
	movl	%ecx, %eax
	cltd
	cmpl	%esi, %ecx
	movl	%edx, %eax
	sbbl	%edi, %eax
	jge	L111
	movl	$2146435071, %eax
	cmpl	%esi, %eax
	movl	$0, %eax
	sbbl	%edi, %eax
	jl	L111
	movl	156(%esp), %ebx
	movl	24(%esp), %ecx
	movl	152(%esp), %edx
	movswl	(%ebx,%ecx,2), %eax
	leal	(%eax,%edx), %ebp
	movswl	2(%ebx,%ecx,2), %eax
	movl	%ebp, 44(%esp)
	addl	%edx, %eax
	movl	%eax, 56(%esp)
	cmpl	%eax, %ebp
	je	L111
	movl	164(%esp), %ecx
	movl	64(%esp), %edx
	movl	60(%esp), %eax
	movl	%ecx, %ebx
	shrdl	$3, %edx, %eax
	sarl	$31, %ebx
	sarl	$3, %edx
	addl	%esi, %ecx
	movl	$131071, %esi
	movl	%eax, 72(%esp)
	adcl	%edi, %ebx
	xorl	%ebp, %ebp
	movl	%edx, 76(%esp)
	movl	__ZL9distrecip.lto_priv.0, %edx
	shrdl	$14, %ebx, %ecx
	movl	%ebp, %edi
	sarl	$14, %ebx
	movl	72(%esp), %eax
	cmpl	%ecx, %esi
	movl	%edx, 36(%esp)
	sbbl	%ebx, %edi
	cmovl	%ebp, %ebx
	cmovl	%esi, %ecx
	movl	$1, %ebp
	cmpl	%ebp, %ecx
	movl	%ebx, %edi
	sbbl	$0, %edi
	cmovl	%ebp, %ecx
	movl	(%edx,%ecx,4), %edx
/APP
 # 5279 "source/build/src/engine.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	176(%esp), %eax
	movl	168(%esp), %ecx
	movl	$0, %edi
	addl	_halfxdimen, %edx
	cmovns	%edx, %edi
	movl	%ecx, %ebx
	cltd
	addl	60(%esp), %eax
	adcl	64(%esp), %edx
	sarl	$31, %ebx
	shrdl	$3, %edx, %eax
	sarl	$3, %edx
	addl	28(%esp), %ecx
	adcl	32(%esp), %ebx
	shrdl	$14, %ebx, %ecx
	xorl	%ebp, %ebp
	sarl	$14, %ebx
	movl	%edi, 72(%esp)
	cmpl	%ecx, %esi
	movl	%ebp, %edi
	movl	%eax, 80(%esp)
	movl	80(%esp), %eax
	sbbl	%ebx, %edi
	movl	%edx, 84(%esp)
	cmovl	%ebp, %ebx
	cmovl	%esi, %ecx
	movl	$1, %ebp
	movl	36(%esp), %esi
	cmpl	%ebp, %ecx
	movl	%ebx, %edi
	sbbl	$0, %edi
	cmovl	%ebp, %ecx
	movl	(%esi,%ecx,4), %edx
/APP
 # 5284 "source/build/src/engine.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	_xdimen, %eax
	addl	_halfxdimen, %edx
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, %edi
	cmpl	%eax, 72(%esp)
	jge	L111
	movl	28(%esp), %eax
	movl	32(%esp), %edx
	movl	$131071, %ebx
	subl	200(%esp), %eax
	sbbl	204(%esp), %edx
	xorl	%ecx, %ecx
	shrdl	$14, %edx, %eax
	movl	%ecx, %ebp
	sarl	$14, %edx
	cmpl	%eax, %ebx
	sbbl	%edx, %ebp
	cmovl	%ecx, %edx
	cmovl	%ebx, %eax
	movl	$1, %ecx
	cmpl	%ecx, %eax
	movl	%edx, %ebp
	movl	140(%esp), %edx
	sbbl	$0, %ebp
	cmovl	%ecx, %eax
	movl	160(%esp), %ecx
	movl	(%esi,%eax,4), %eax
	addl	$12, %ecx
/APP
 # 5293 "source/build/src/engine.cpp" 1
	imull %edx; shrdl %cl, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	200(%esp), %ebx
	addl	28(%esp), %ebx
	movl	%eax, 80(%esp)
	movl	204(%esp), %esi
	movl	%ebx, %eax
	adcl	32(%esp), %esi
	xorl	%ebx, %ebx
	shrdl	$14, %esi, %eax
	movl	%esi, %edx
	movl	$131071, %esi
	movl	%ebx, %ebp
	sarl	$14, %edx
	cmpl	%eax, %esi
	sbbl	%edx, %ebp
	cmovl	%ebx, %edx
	cmovl	%esi, %eax
	movl	$1, %ebx
	movl	36(%esp), %esi
	cmpl	%ebx, %eax
	movl	%edx, %ebp
	movl	140(%esp), %edx
	sbbl	$0, %ebp
	cmovl	%ebx, %eax
	movl	(%esi,%eax,4), %eax
/APP
 # 5296 "source/build/src/engine.cpp" 1
	imull %edx; shrdl %cl, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 132(%esp)
	testb	$16, 172(%esp)
	jne	L163
	movl	240(%esp), %edx
	movl	80(%esp), %esi
	movl	%eax, %ebp
	testl	%edx, %edx
	movl	%esi, %ebx
	cmovns	%eax, %ebx
	movl	%ebx, %eax
/APP
 # 5301 "source/build/src/engine.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	_globalhoriz, %ecx
	leal	(%ecx,%edx), %eax
	movl	236(%esp), %edx
	movl	%eax, 116(%esp)
	movl	%ebp, %eax
	testl	%edx, %edx
	cmovns	%esi, %eax
/APP
 # 5302 "source/build/src/engine.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	leal	(%ecx,%edx), %eax
	movl	%eax, 120(%esp)
L114:
	movl	56(%esp), %eax
	cmpl	%eax, 44(%esp)
	jnb	L111
	movl	72(%esp), %eax
	movl	44(%esp), %ebp
	subl	%eax, %edi
	sall	$2, %eax
	movl	%edi, 144(%esp)
	movl	192(%esp), %edi
	leal	(%edi,%eax), %esi
	movl	%esi, 124(%esp)
	movl	196(%esp), %esi
	addl	%esi, %eax
	movl	%eax, 128(%esp)
	jmp	L130
	.p2align 4,,10
	.p2align 3
L117:
	testb	%al, 136(%esp)
	je	L120
	movl	132(%esp), %eax
	movl	%ecx, %edx
/APP
 # 5331 "source/build/src/engine.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	_globalhoriz, %edi
	movl	80(%esp), %eax
	leal	(%edi,%edx), %ebx
	movl	%esi, %edx
	sall	$15, %edx
	addl	%ecx, %edx
/APP
 # 5332 "source/build/src/engine.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	leal	(%edi,%edx), %eax
	movl	%eax, 36(%esp)
L123:
	movl	124(%esp), %eax
	movl	120(%esp), %edx
	movl	(%eax), %edi
	movl	116(%esp), %eax
	cmpl	%edi, %eax
	cmovge	%eax, %edi
	movl	128(%esp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, %ecx
	cmpb	$1, 44(%esp)
	je	L245
	movl	36(%esp), %eax
	subl	%ebx, %eax
	movl	%eax, 44(%esp)
	cmpl	$1023, %eax
	jg	L246
	movl	36(%esp), %eax
	xorl	%edx, %edx
	cmpl	%eax, %ebx
	jge	L127
	movl	44(%esp), %eax
	imull	__ZL8lowrecip.lto_priv.0(,%eax,4), %esi
	movl	%esi, %edx
	sarl	$8, %edx
L127:
	movl	%edi, %eax
	xorl	%esi, %esi
	subl	%ebx, %eax
	imull	%edx, %eax
	cmpl	%edi, %ebx
	cmovl	%edi, %ebx
	movl	%edx, %edi
	cmovl	%eax, %esi
	movzbl	1(%ebp), %eax
	negl	%edi
	sall	$16, %eax
	subl	%esi, %eax
	subl	%edx, %eax
L125:
	movl	36(%esp), %esi
	cmpl	%ecx, %esi
	movl	%esi, %edx
	cmovg	%ecx, %edx
	subl	%ebx, %edx
	testl	%edx, %edx
	jle	L230
	movl	_ylookup, %ecx
	movl	72(%esp), %esi
	addl	(%ecx,%ebx,4), %esi
	movl	_frameoffset, %ecx
	movl	%eax, 4(%esp)
	movl	144(%esp), %eax
	movl	%edi, 12(%esp)
	addl	%esi, %ecx
	movl	%edx, 8(%esp)
	movl	%ecx, 20(%esp)
	leal	3(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	%eax, (%esp)
	call	_drawslab
L230:
	movzbl	1(%ebp), %esi
L120:
	movl	56(%esp), %eax
	leal	3(%ebp,%esi), %ebp
	cmpl	%eax, %ebp
	jnb	L111
L130:
	movzbl	1(%ebp), %esi
	movl	68(%esp), %ecx
	movl	52(%esp), %ebx
	movl	%esi, %eax
	movb	%al, 44(%esp)
	movzbl	0(%ebp), %eax
	subl	%eax, %ecx
	movzbl	2(%ebp), %eax
	subl	%esi, %ecx
	sall	$15, %ecx
	subl	%ebx, %ecx
	jns	L117
	movl	%esi, %edx
	sall	$15, %edx
	addl	%ecx, %edx
	js	L247
	testb	%al, 184(%esp)
	je	L120
	movl	80(%esp), %eax
/APP
 # 5324 "source/build/src/engine.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	_globalhoriz, %ebx
	leal	(%ebx,%edx), %eax
	movl	%eax, 36(%esp)
L121:
	movl	80(%esp), %eax
	movl	%ecx, %edx
/APP
 # 5326 "source/build/src/engine.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	addl	%edx, %ebx
	jmp	L123
L107:
	movl	244(%esp), %eax
	addl	%eax, %ecx
	cmpl	%ecx, 260(%esp)
	je	L227
	.p2align 4
	.p2align 3
L109:
	movl	88(%esp), %eax
	cmpl	%eax, %ebx
	je	L107
	movl	220(%esp), %eax
	movl	%ecx, %ebp
	subl	%ecx, %eax
	movl	%eax, %ecx
	jmp	L108
L95:
	movl	252(%esp), %ebx
	movl	%ebx, %eax
	negl	%eax
	movl	%eax, 164(%esp)
	cmpl	$1, %edx
	jg	L158
	movl	248(%esp), %eax
	movl	%eax, 168(%esp)
	movl	%eax, %ebp
	jmp	L98
L28:
	movl	248(%esp), %eax
	movl	252(%esp), %ecx
	movl	%eax, 164(%esp)
	cmpl	$6, %edx
	jg	L34
L229:
	movl	$0, 156(%esp)
	xorl	%ebp, %ebp
	jmp	L33
L31:
	movl	248(%esp), %ebx
	movl	252(%esp), %ebp
	movl	%ebx, %eax
	leal	0(%ebp,%ebx), %ecx
	subl	%ebp, %eax
	movl	%eax, 164(%esp)
	xorl	%eax, %eax
	cmpl	$2, %edx
	cmove	%eax, %ebx
	cmovne	%ebp, %eax
	movl	%ebx, 156(%esp)
	movl	%eax, %ebp
L33:
	xorl	%edx, %edx
	cmpl	%esi, 308(%esp)
	movl	24(%esp), %ebx
	setg	%dl
	cmpl	%ebx, 312(%esp)
	setg	%al
	leal	4(,%eax,4), %eax
	addb	__ZL8pow2char.lto_priv.9(%edx), %al
	movl	%eax, %ebx
	xorl	$3, %eax
	cmpw	$0, 210(%esp)
	cmovne	%eax, %ebx
	movl	__ZL17viewingrangerecip.lto_priv.0, %eax
	movb	%bl, 180(%esp)
	movl	104(%esp), %ebx
	movl	%eax, 28(%esp)
	testl	%ebx, %ebx
	jle	L248
	movl	248(%esp), %eax
	movl	28(%esp), %edx
/APP
 # 5245 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 260(%esp)
	movl	252(%esp), %eax
	movl	%eax, 272(%esp)
L71:
	movl	%ebp, %eax
	movl	28(%esp), %edx
	subl	%ecx, %eax
/APP
 # 5249 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 168(%esp)
	movl	28(%esp), %edx
	movl	%ecx, %eax
/APP
 # 5250 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 36(%esp)
	movl	244(%esp), %eax
	cmpl	%eax, %esi
	je	L39
	movzbl	180(%esp), %ebx
	movl	24(%esp), %ebp
	movl	%edi, 300(%esp)
	movl	340(%esp), %ecx
	movl	328(%esp), %edi
	leal	16(%ebx), %eax
	movb	%al, 132(%esp)
	leal	32(%ebx), %eax
	movl	344(%esp), %ebx
	movb	%al, 200(%esp)
	movl	__ZL6ggxinc(,%ebp,4), %eax
	cltd
	subl	%eax, %ecx
	movl	264(%esp), %eax
	sbbl	%edx, %ebx
	movl	%ecx, 292(%esp)
	addl	$1, %eax
	movl	%ebx, 296(%esp)
	movl	%ebp, %ebx
	movl	%eax, 288(%esp)
	movl	332(%esp), %eax
	addl	__ZL6ggyinc(,%ebp,4), %eax
	movl	%eax, 284(%esp)
	movl	36(%esp), %eax
	cltd
	movl	%eax, 276(%esp)
	movl	%edx, 280(%esp)
	movl	28(%esp), %edx
	.p2align 4
	.p2align 3
L42:
	cmpw	$0, 210(%esp)
	jne	L40
	movl	80(%esp), %eax
	movl	%esi, %ebp
	cmpl	%eax, %ebx
	je	L48
L41:
	movl	(%edi,%esi,4), %eax
	movl	%ebx, 24(%esp)
	movl	%edi, 216(%esp)
	addl	%edi, %eax
	movl	%ebp, 224(%esp)
	movl	%eax, 152(%esp)
	movl	288(%esp), %eax
	movl	%ebx, 228(%esp)
	imull	%eax, %esi
	movl	212(%esp), %eax
	leal	(%eax,%esi,2), %eax
	addl	%edi, %eax
	movl	%eax, 144(%esp)
	movl	284(%esp), %eax
	addl	__ZL6ggxinc(,%ebp,4), %eax
	imull	%edx
	shrdl	$16, %edx, %eax
	sarl	$16, %edx
	addl	276(%esp), %eax
	adcl	280(%esp), %edx
	movl	%eax, 60(%esp)
	movl	__ZL6ggyinc(,%ebp,4), %eax
	movl	%edx, 64(%esp)
	cltd
	addl	292(%esp), %eax
	adcl	296(%esp), %edx
	movl	%eax, 36(%esp)
	movl	260(%esp), %eax
	movl	%edx, 40(%esp)
	movl	%eax, 96(%esp)
	sarl	$31, %eax
	movl	%eax, 100(%esp)
	movl	272(%esp), %eax
	movl	%eax, 88(%esp)
	sarl	$31, %eax
	movl	%eax, 92(%esp)
	jmp	L47
	.p2align 4,,10
	.p2align 3
L49:
	movl	104(%esp), %eax
	addl	%eax, 24(%esp)
	movl	80(%esp), %eax
	movl	24(%esp), %edi
	movl	96(%esp), %ebx
	movl	100(%esp), %esi
	addl	%ebx, 60(%esp)
	movl	88(%esp), %ebx
	adcl	%esi, 64(%esp)
	movl	92(%esp), %esi
	subl	%ebx, 36(%esp)
	sbbl	%esi, 40(%esp)
	cmpl	%eax, %edi
	je	L249
L47:
	movl	__ZL10nytooclose.lto_priv.0, %ecx
	movl	36(%esp), %edi
	movl	40(%esp), %ebp
	movl	%ecx, %eax
	cltd
	cmpl	%edi, %ecx
	movl	%edi, %eax
	movl	%edx, %esi
	sbbl	%ebp, %esi
	jge	L49
	movl	$2146435071, %edi
	cmpl	%eax, %edi
	movl	$0, %edi
	sbbl	%ebp, %edi
	jl	L49
	movl	144(%esp), %edi
	movl	24(%esp), %ebx
	movl	152(%esp), %esi
	movswl	(%edi,%ebx,2), %eax
	leal	(%eax,%esi), %edx
	movswl	2(%edi,%ebx,2), %eax
	movl	%edx, 120(%esp)
	addl	%esi, %eax
	movl	%eax, 56(%esp)
	cmpl	%edx, %eax
	je	L49
	movl	164(%esp), %ecx
	movl	64(%esp), %edx
	movl	$131071, %esi
	movl	60(%esp), %eax
	movl	__ZL9distrecip.lto_priv.0, %edi
	movl	%ecx, %ebx
	shrdl	$3, %edx, %eax
	sarl	$31, %ebx
	addl	36(%esp), %ecx
	adcl	40(%esp), %ebx
	shrdl	$14, %ebx, %ecx
	xorl	%ebp, %ebp
	sarl	$14, %ebx
	movl	%eax, 44(%esp)
	cmpl	%ecx, %esi
	movl	$0, %eax
	movl	%edi, 28(%esp)
	sbbl	%ebx, %ebp
	movl	$1, %ebp
	cmovl	%eax, %ebx
	cmovl	%esi, %ecx
	movl	44(%esp), %eax
	cmpl	%ebp, %ecx
	movl	%ebx, %esi
	sbbl	$0, %esi
	cmovl	%ebp, %ecx
	movl	(%edi,%ecx,4), %edx
/APP
 # 5279 "source/build/src/engine.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	168(%esp), %eax
	movl	156(%esp), %ecx
	movl	$0, %edi
	movl	$131071, %esi
	addl	_halfxdimen, %edx
	cmovns	%edx, %edi
	movl	%ecx, %ebx
	cltd
	addl	60(%esp), %eax
	adcl	64(%esp), %edx
	sarl	$31, %ebx
	shrdl	$3, %edx, %eax
	sarl	$3, %edx
	addl	36(%esp), %ecx
	adcl	40(%esp), %ebx
	shrdl	$14, %ebx, %ecx
	movl	%edi, 68(%esp)
	xorl	%edi, %edi
	sarl	$14, %ebx
	movl	%edi, %ebp
	cmpl	%ecx, %esi
	movl	%eax, 44(%esp)
	movl	44(%esp), %eax
	sbbl	%ebx, %ebp
	movl	%edx, 48(%esp)
	cmovl	%esi, %ecx
	cmovl	%edi, %ebx
	movl	$1, %esi
	cmpl	%esi, %ecx
	movl	%ebx, %ebp
	sbbl	$0, %ebp
	cmovl	%esi, %ecx
	movl	28(%esp), %esi
	movl	(%esi,%ecx,4), %edx
/APP
 # 5284 "source/build/src/engine.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	_xdimen, %eax
	addl	_halfxdimen, %edx
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, %edi
	cmpl	%eax, 68(%esp)
	jge	L49
	movl	36(%esp), %eax
	movl	40(%esp), %edx
	movl	$131071, %ebx
	subl	184(%esp), %eax
	sbbl	188(%esp), %edx
	xorl	%ecx, %ecx
	shrdl	$14, %edx, %eax
	movl	%ecx, %ebp
	sarl	$14, %edx
	cmpl	%eax, %ebx
	sbbl	%edx, %ebp
	cmovl	%ecx, %edx
	cmovl	%ebx, %eax
	movl	$1, %ecx
	cmpl	%ecx, %eax
	movl	%edx, %ebx
	movl	140(%esp), %edx
	sbbl	$0, %ebx
	movl	160(%esp), %ebx
	cmovl	%ecx, %eax
	leal	12(%ebx), %ecx
	movl	(%esi,%eax,4), %eax
/APP
 # 5293 "source/build/src/engine.cpp" 1
	imull %edx; shrdl %cl, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 72(%esp)
	movl	188(%esp), %edx
	movl	$131071, %esi
	movl	184(%esp), %eax
	addl	36(%esp), %eax
	adcl	40(%esp), %edx
	xorl	%ebx, %ebx
	shrdl	$14, %edx, %eax
	movl	%ebx, %ebp
	sarl	$14, %edx
	cmpl	%eax, %esi
	sbbl	%edx, %ebp
	cmovl	%ebx, %edx
	cmovl	%esi, %eax
	movl	$1, %ebx
	movl	28(%esp), %esi
	cmpl	%ebx, %eax
	movl	%edx, %ebp
	movl	140(%esp), %edx
	sbbl	$0, %ebp
	cmovl	%ebx, %eax
	movl	(%esi,%eax,4), %eax
/APP
 # 5296 "source/build/src/engine.cpp" 1
	imull %edx; shrdl %cl, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 128(%esp)
	testb	$16, 172(%esp)
	je	L50
	movl	$0, 116(%esp)
	movl	$2147483647, 112(%esp)
L69:
	movl	56(%esp), %eax
	movl	120(%esp), %ebp
	cmpl	%eax, %ebp
	jnb	L49
	movl	68(%esp), %eax
	subl	%eax, %edi
	sall	$2, %eax
	movl	%edi, 136(%esp)
	movl	192(%esp), %edi
	addl	%eax, %edi
	movl	%edi, 120(%esp)
	movl	196(%esp), %edi
	addl	%edi, %eax
	movl	%eax, 124(%esp)
	jmp	L53
	.p2align 4,,10
	.p2align 3
L220:
	movzbl	28(%esp), %esi
	testb	%al, 132(%esp)
	je	L57
	movl	128(%esp), %eax
	movl	%ecx, %edx
/APP
 # 5331 "source/build/src/engine.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	_globalhoriz, %edi
	movl	72(%esp), %eax
	leal	(%edx,%edi), %ebx
	movl	%esi, %edx
	sall	$15, %edx
	addl	%ecx, %edx
/APP
 # 5332 "source/build/src/engine.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	leal	(%edi,%edx), %eax
	movl	%eax, 44(%esp)
L63:
	movl	120(%esp), %eax
	movl	112(%esp), %edx
	movl	(%eax), %edi
	movl	116(%esp), %eax
	cmpl	%edi, %eax
	cmovge	%eax, %edi
	movl	124(%esp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, %ecx
	cmpb	$1, 28(%esp)
	je	L250
	movl	44(%esp), %edx
	subl	%ebx, %edx
	movl	%edx, 28(%esp)
	cmpl	$1023, %edx
	jg	L251
	movl	44(%esp), %edx
	xorl	%eax, %eax
	cmpl	%edx, %ebx
	jge	L61
	movl	%esi, %eax
	movl	28(%esp), %esi
	imull	__ZL8lowrecip.lto_priv.0(,%esi,4), %eax
	sarl	$8, %eax
L61:
	movl	%edi, %esi
	xorl	%edx, %edx
	subl	%ebx, %esi
	imull	%eax, %esi
	cmpl	%edi, %ebx
	cmovl	%edi, %ebx
	cmovl	%esi, %edx
L60:
	movl	44(%esp), %edi
	cmpl	%ecx, %edi
	cmovle	%edi, %ecx
	subl	%ebx, %ecx
	testl	%ecx, %ecx
	jle	L56
	movl	_ylookup, %esi
	movl	68(%esp), %edi
	addl	(%esi,%ebx,4), %edi
	movl	_frameoffset, %ebx
	movl	%eax, 12(%esp)
	movl	136(%esp), %eax
	movl	%ecx, 8(%esp)
	addl	%edi, %ebx
	movl	%edx, 4(%esp)
	movl	%ebx, 20(%esp)
	leal	3(%ebp), %ebx
	movl	%ebx, 16(%esp)
	movl	%eax, (%esp)
	call	_drawslab
	movzbl	1(%ebp), %esi
L57:
	movl	56(%esp), %eax
	leal	3(%ebp,%esi), %ebp
	cmpl	%eax, %ebp
	jnb	L49
L53:
	movzbl	0(%ebp), %ecx
	movzbl	1(%ebp), %eax
	movl	52(%esp), %esi
	sall	$15, %ecx
	movb	%al, 28(%esp)
	movzbl	2(%ebp), %eax
	subl	%esi, %ecx
	jns	L220
	movzbl	28(%esp), %esi
	movl	%esi, %edx
	sall	$15, %edx
	addl	%ecx, %edx
	js	L252
	testb	%al, 180(%esp)
	je	L57
	movl	72(%esp), %eax
/APP
 # 5324 "source/build/src/engine.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	_globalhoriz, %ebx
	leal	(%edx,%ebx), %eax
	movl	%eax, 44(%esp)
L66:
	movl	72(%esp), %eax
	movl	%ecx, %edx
/APP
 # 5326 "source/build/src/engine.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	addl	%edx, %ebx
	jmp	L63
L70:
	movl	232(%esp), %eax
	addl	%eax, %esi
	cmpl	%esi, 244(%esp)
	je	L226
	.p2align 4
	.p2align 3
L40:
	movl	80(%esp), %eax
	cmpl	%eax, %ebx
	je	L70
	movl	220(%esp), %eax
	movl	%esi, %ebp
	subl	%esi, %eax
	movl	%eax, %esi
	jmp	L41
L30:
	movl	252(%esp), %ebp
	movl	%ebp, %eax
	negl	%eax
	movl	%eax, 164(%esp)
	cmpl	$1, %edx
	jg	L148
	movl	248(%esp), %eax
	movl	%eax, 156(%esp)
	movl	%eax, %ecx
	jmp	L33
L27:
	cmpl	$6, %edx
	je	L138
	jg	L253
	movl	$0, 164(%esp)
	xorl	%ecx, %ecx
	jmp	L229
L92:
	cmpl	$6, %edx
	je	L157
	jle	L254
	movl	$0, 164(%esp)
	subl	$3, %eax
	xorl	%ebp, %ebp
	cmpl	$1, %eax
	ja	L160
L97:
	movl	252(%esp), %eax
	movl	248(%esp), %ebx
	negl	%eax
	movl	%eax, 168(%esp)
	jmp	L98
L253:
	movl	$0, 164(%esp)
	subl	$3, %eax
	xorl	%ecx, %ecx
	cmpl	$1, %eax
	ja	L229
L34:
	movl	252(%esp), %eax
	movl	248(%esp), %ebp
	negl	%eax
	movl	%eax, 156(%esp)
	jmp	L33
	.p2align 4,,10
	.p2align 3
L56:
	movzbl	1(%ebp), %esi
	jmp	L57
	.p2align 4,,10
	.p2align 3
L245:
	cmpl	%edi, %ebx
	cmovl	%edi, %ebx
	xorl	%edi, %edi
	xorl	%eax, %eax
	jmp	L125
	.p2align 4,,10
	.p2align 3
L250:
	cmpl	%edi, %ebx
	cmovl	%edi, %ebx
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	L60
	.p2align 4,,10
	.p2align 3
L252:
	testb	%al, 200(%esp)
	je	L57
	movl	128(%esp), %eax
/APP
 # 5319 "source/build/src/engine.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	_globalhoriz, %ebx
	leal	(%edx,%ebx), %eax
	movl	%eax, 44(%esp)
	jmp	L66
	.p2align 4,,10
	.p2align 3
L247:
	testb	%al, 216(%esp)
	je	L120
	movl	132(%esp), %eax
/APP
 # 5319 "source/build/src/engine.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	_globalhoriz, %ebx
	leal	(%ebx,%edx), %eax
	movl	%eax, 36(%esp)
	jmp	L121
	.p2align 4,,10
	.p2align 3
L251:
	movl	28(%esp), %edx
	movl	%esi, %eax
	movl	%ecx, 176(%esp)
	sall	$16, %eax
	movl	%edx, 8(%esp)
	sarl	$31, %edx
	movl	%edx, 12(%esp)
	xorl	%edx, %edx
	shldl	$16, %esi, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	176(%esp), %ecx
	jmp	L61
	.p2align 4,,10
	.p2align 3
L246:
	movl	%eax, %edx
	movl	%eax, 8(%esp)
	movl	%esi, %eax
	sarl	$31, %edx
	sall	$16, %eax
	movl	%ecx, 180(%esp)
	movl	%edx, 12(%esp)
	xorl	%edx, %edx
	shldl	$16, %esi, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	180(%esp), %ecx
	movl	%eax, %edx
	jmp	L127
	.p2align 4,,10
	.p2align 3
L249:
	movl	216(%esp), %edi
	movl	224(%esp), %ebp
	movl	228(%esp), %ebx
L48:
	movl	232(%esp), %eax
	leal	0(%ebp,%eax), %esi
	movl	244(%esp), %eax
	cmpl	%eax, %esi
	je	L226
	movl	__ZL17viewingrangerecip.lto_priv.0, %edx
	jmp	L42
	.p2align 4,,10
	.p2align 3
L244:
	movl	224(%esp), %ebx
	movl	228(%esp), %edi
	movl	232(%esp), %ebp
L110:
	movl	244(%esp), %eax
	leal	(%eax,%ebp), %ecx
	cmpl	%ecx, 260(%esp)
	je	L227
	movl	__ZL17viewingrangerecip.lto_priv.0, %esi
	jmp	L133
	.p2align 4,,10
	.p2align 3
L163:
	movl	$0, 116(%esp)
	movl	$2147483647, 120(%esp)
	jmp	L114
	.p2align 4,,10
	.p2align 3
L50:
	movl	240(%esp), %edx
	movl	128(%esp), %esi
	movl	72(%esp), %ebx
	testl	%edx, %edx
	movl	%esi, %eax
	cmovs	%ebx, %eax
/APP
 # 5301 "source/build/src/engine.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	_globalhoriz, %ecx
	leal	(%edx,%ecx), %eax
	movl	236(%esp), %edx
	movl	%eax, 116(%esp)
	movl	%ebx, %eax
	testl	%edx, %edx
	cmovs	%esi, %eax
/APP
 # 5302 "source/build/src/engine.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	leal	(%ecx,%edx), %eax
	movl	%eax, 112(%esp)
	jmp	L69
L226:
	movl	300(%esp), %edi
L39:
	addl	$1, %edi
	cmpl	$8, %edi
	jne	L78
	addl	$352, %esp
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
L227:
	.cfi_restore_state
	movl	348(%esp), %edi
L105:
	addl	$1, %edi
	cmpl	$8, %edi
	jne	L17
	addl	$352, %esp
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
L103:
	.cfi_restore_state
	movl	252(%esp), %eax
	movl	28(%esp), %edx
	negl	%eax
	movl	%eax, 272(%esp)
	movl	248(%esp), %eax
/APP
 # 5246 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	negl	%eax
	movl	%eax, 276(%esp)
	jmp	L104
L248:
	movl	252(%esp), %eax
	movl	28(%esp), %edx
	negl	%eax
	movl	%eax, 272(%esp)
	movl	248(%esp), %eax
/APP
 # 5246 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	negl	%eax
	movl	%eax, 260(%esp)
	jmp	L71
L240:
	movl	%eax, 24(%esp)
	movl	268(%esp), %eax
	movl	$-1, 112(%esp)
	movl	%eax, 88(%esp)
	movl	256(%esp), %eax
	movl	%eax, 260(%esp)
	jmp	L91
L158:
	movl	248(%esp), %ebp
L99:
	movl	252(%esp), %esi
	movl	248(%esp), %eax
	leal	(%esi,%eax), %ebx
	subl	%esi, %eax
	movl	%eax, 168(%esp)
	jmp	L98
L148:
	movl	248(%esp), %ecx
L32:
	movl	252(%esp), %ebx
	movl	248(%esp), %eax
	leal	(%ebx,%eax), %ebp
	subl	%ebx, %eax
	movl	%eax, 156(%esp)
	jmp	L33
L254:
	movl	$0, 164(%esp)
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	movl	$0, 168(%esp)
	jmp	L98
L6:
	movl	160(%esp), %ebx
	movl	%eax, 36(%esp)
	movl	$0, 160(%esp)
	jmp	L5
L152:
	movl	$1, 104(%esp)
	movl	$0, 24(%esp)
	movl	$2, 232(%esp)
	jmp	L22
L138:
	movl	$0, 164(%esp)
	xorl	%ecx, %ecx
	jmp	L32
L157:
	movl	$0, 164(%esp)
	xorl	%ebp, %ebp
	jmp	L99
L79:
	cmpl	$0, 256(%esp)
	jle	L87
	movl	$1, 244(%esp)
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	jmp	L89
L18:
	cmpl	$0, 256(%esp)
	jle	L26
	movl	$1, 232(%esp)
	xorl	%edi, %edi
	xorl	%esi, %esi
	jmp	L75
L243:
	movl	268(%esp), %eax
	movl	$1, 104(%esp)
	movl	%eax, 80(%esp)
	movl	256(%esp), %eax
	movl	%eax, 244(%esp)
	xorl	%eax, %eax
	movl	%eax, 24(%esp)
	jmp	L73
	.cfi_endproc
LFE0:
	.p2align 4
	.def	__ZL21setup_globals_sprite1P11tspritetypePK13usectortypev7iiiiPiS4_4vec2IsE.isra.0;	.scl	3;	.type	32;	.endef
__ZL21setup_globals_sprite1P11tspritetypePK13usectortypev7iiiiPiS4_4vec2IsE.isra.0:
LFB2:
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
	movzbl	%dl, %ebx
	subl	$20, %esp
	.cfi_def_cfa_offset 40
	movl	48(%esp), %edx
	movl	68(%esp), %ebp
	movl	52(%esp), %edi
	imull	%ebx, %edx
	sarl	$16, %ebp
	sall	$2, %edx
	subl	%edx, %eax
	movl	%eax, %esi
	movl	44(%esp), %eax
	imull	%ebx, %eax
	testb	$-128, 56(%esp)
	je	L256
	leal	(%esi,%eax,2), %esi
	testb	$1, 44(%esp)
	leal	(%esi,%ebx,2), %edx
	cmovne	%edx, %esi
L256:
	sall	$2, %eax
	movl	%esi, %edx
	subl	%eax, %edx
	movl	%edi, %eax
	movl	%edx, 16(%esp)
	cmpl	$30719, %edi
	jbe	L257
	xorl	%eax, %eax
	xorl	%edi, %edi
L257:
	movswl	%cx, %ecx
	movw	%ax, _globalpicnum
	movswl	_tilesiz(,%edi,4), %edx
	movl	$0, _globalorientation
	sall	$6, %ecx
	addl	_spriteext, %ecx
	movl	$0, __ZL14globalypanning.lto_priv.0
	movzbl	22(%ecx), %eax
	movzbl	68(%esp), %ecx
	negl	%eax
	movzbl	%al, %eax
	sall	%cl, %edx
	imull	%edx, %eax
	sarl	$8, %eax
	movl	%eax, __ZL14globalxpanning.lto_priv.0
	movl	_globalvisibility, %eax
	cmpb	$0, 40(%esp)
	je	L258
	movzbl	40(%esp), %ecx
	leal	16(%ecx), %edx
	movzbl	%dl, %edx
/APP
 # 5410 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
L258:
	movzbl	_picsiz(%edi), %edx
	movl	%ebp, %ecx
	movswl	_tilesiz+2(,%edi,4), %edi
	movl	%eax, _globvis
	movswl	%bp, %eax
	shrb	$4, %dl
	sall	%cl, %edi
	movzbl	%dl, %edx
	addl	%ebp, %edx
	cmpl	%edi, _pow2long.lto_priv.0(,%edx,4)
	jne	L264
	cmpl	$511, %edi
	jle	L259
L264:
	leal	22(%eax), %ecx
	movl	%edi, _globaltilesizy
	movl	$1, %eax
	imull	%ebx, %edi
	sall	%cl, %eax
	cltd
	idivl	%edi
	movl	%eax, __ZL12globalyscale.lto_priv.0
	movl	%eax, %ecx
	xorl	%eax, %eax
	movw	%ax, __ZL14globalshiftval.lto_priv.0
L261:
	movl	_globalposz, %ebx
	movl	%ebx, %eax
	subl	16(%esp), %eax
	imull	%ecx
	shldl	$8, %eax, %edx
	sall	$8, %eax
	movl	%eax, __ZL8globalzd.lto_priv.0
	movl	%edx, __ZL8globalzd.lto_priv.0+4
	testb	$8, 56(%esp)
	je	L262
	subl	%esi, %ebx
	negl	%ecx
	movl	%ebx, %eax
	movl	%ecx, __ZL12globalyscale.lto_priv.0
	imull	%ecx
	shldl	$8, %eax, %edx
	sall	$8, %eax
	movl	%eax, __ZL8globalzd.lto_priv.0
	movl	%edx, __ZL8globalzd.lto_priv.0+4
L262:
	movl	60(%esp), %eax
	movl	16(%esp), %ebx
	movl	%ebx, (%eax)
	movl	64(%esp), %eax
	movl	%esi, (%eax)
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
L259:
	.cfi_restore_state
	movl	$32, %edi
	movl	%eax, %ecx
	xorl	%ebp, %ebp
	movl	%ebx, 8(%esp)
	subl	%edx, %edi
	movl	$512, %edx
	movl	$0, 12(%esp)
	sall	%cl, %edx
	leal	-19(%edi), %ecx
	movw	%di, __ZL14globalshiftval.lto_priv.0
	movl	%edx, %eax
	cltd
	shldl	%cl, %eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	cmovne	%eax, %edx
	cmovne	%ebp, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, __ZL12globalyscale.lto_priv.0
	movl	%eax, %ecx
	jmp	L261
	.cfi_endproc
LFE2:
	.section .rdata,"dr"
LC27:
	.ascii "classicDrawSprite\0"
	.align 4
LC28:
	.ascii "%s:%d: slopalookup[%d] overflow drawing sprite %d!\0"
LC29:
	.ascii "source/build/src/engine.cpp\0"
	.align 4
LC31:
	.ascii "%s:%d: slopalookup[%d] overflow drawing spritenum %d!\0"
	.text
	.p2align 4
	.globl	__ZL17classicDrawSpritei.lto_priv.0
	.def	__ZL17classicDrawSpritei.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL17classicDrawSpritei.lto_priv.0:
LFB4:
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
	subl	$304, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	_tspriteptr(,%eax,4), %esi
	movswl	24(%esi), %ebx
	movl	%esi, 248(%esp)
	testw	%bx, %bx
	js	L916
	movzwl	30(%esi), %edi
	movw	%di, 232(%esp)
	testw	%di, %di
	js	L916
	movl	%eax, %edx
	movswl	14(%esi), %eax
	movw	%ax, 236(%esp)
	cmpl	$30719, %eax
	ja	L916
	movzbl	19(%esi), %ecx
	leal	(%edx,%edx,2), %edx
	sall	$2, %edx
	movb	%cl, 176(%esp)
	movl	__ZL10spritesxyz.lto_priv.0(%edx), %ecx
	movl	%ecx, 156(%esp)
	movl	__ZL10spritesxyz.lto_priv.0+4(%edx), %ecx
	movl	%ecx, 208(%esp)
	movswl	%di, %ecx
	movl	%ecx, %edi
	movl	%ecx, 220(%esp)
	movzwl	12(%esi), %ecx
	sall	$6, %edi
	movl	%edi, %edx
	movl	%edi, 164(%esp)
	movl	_sector, %edi
	movl	%ecx, 216(%esp)
	addl	_spriteext, %edx
	movl	%edi, 192(%esp)
	movl	%ecx, %edi
	movzbl	18(%esi), %ecx
	movss	8(%edx), %xmm0
	movb	%cl, 240(%esp)
	movl	%edi, %ecx
	andl	$2, %ecx
	movw	%cx, 224(%esp)
	movzbl	240(%esp), %ecx
	andl	$16, %ecx
	movb	%cl, 188(%esp)
	jne	L279
	movl	220(%esp), %ecx
	addl	$32768, %ecx
	movl	%ecx, 200(%esp)
	cmpb	$63, _picanm+3(%eax,%eax,4)
	jbe	L280
	movl	%edx, 184(%esp)
	movss	%xmm0, 168(%esp)
	call	_animateoffs
	addw	236(%esp), %ax
	movss	168(%esp), %xmm0
	movw	%ax, 14(%esi)
	movl	184(%esp), %edx
L280:
	testb	$64, 201(%esp)
	je	L281
	testb	$16, _globalorientation+1
	je	L281
	movl	248(%esp), %esi
	movswl	14(%esi), %ecx
	movl	%ecx, 200(%esp)
	movl	%ecx, %eax
	movzwl	_rottile(,%ecx,4), %ecx
	movw	%cx, 236(%esp)
	cmpw	$-1, %cx
	je	L283
	movw	%cx, 14(%esi)
	cmpw	$0, 224(%esp)
	je	L284
	movswl	%cx, %eax
	movl	%eax, 200(%esp)
	jmp	L285
	.p2align 4,,10
	.p2align 3
L279:
	cmpw	$0, 224(%esp)
	jne	L927
	xorps	%xmm1, %xmm1
	comiss	%xmm1, %xmm0
	jbe	L927
L286:
	comiss	LC0, %xmm0
	jb	L941
L916:
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
L281:
	.cfi_restore_state
	cmpw	$0, 224(%esp)
	je	L289
L929:
	movl	248(%esp), %eax
	movswl	14(%eax), %eax
	movw	%ax, 236(%esp)
	movl	%eax, 200(%esp)
L285:
	movl	216(%esp), %ecx
	testb	$32, %cl
	je	L942
L302:
	movl	200(%esp), %eax
	cmpw	$0, _tilesiz(,%eax,4)
	jle	L916
	cmpw	$0, _tilesiz+2(,%eax,4)
	jle	L916
	movl	$0, 184(%esp)
L301:
	movl	248(%esp), %ecx
	cmpb	$0, 20(%ecx)
	je	L916
	cmpb	$0, 21(%ecx)
	je	L916
	leal	(%ebx,%ebx,4), %eax
	movl	192(%esp), %ebx
	xorl	%edx, %edx
	leal	(%ebx,%eax,8), %eax
	movl	%eax, 144(%esp)
	movzbl	17(%ecx), %eax
	movl	_palookup(,%eax,4), %ebx
	testl	%ebx, %ebx
	cmove	%edx, %eax
	movl	%eax, _globalpal
	movsbl	16(%ecx), %eax
	movl	%eax, _globalshade
	movl	216(%esp), %eax
	andl	$2, %eax
	movl	%eax, 140(%esp)
	jne	L943
L305:
	movl	200(%esp), %eax
	movsbl	_picanm+1(%eax,%eax,4), %ebx
	movsbl	_picanm+2(%eax,%eax,4), %eax
	movl	%ebx, 152(%esp)
	movl	248(%esp), %ebx
	movl	%eax, 148(%esp)
	movzwl	12(%ebx), %eax
	movw	%ax, 224(%esp)
	andl	$48, %eax
	cmpw	$48, %ax
	je	L944
L309:
	movl	248(%esp), %ebx
	xorl	%esi, %esi
	movl	$0, 224(%esp)
	movw	%si, 192(%esp)
	movsbl	22(%ebx), %edx
	addl	%edx, 152(%esp)
	movsbl	23(%ebx), %edx
	addl	%edx, 148(%esp)
L310:
	testb	$16, 240(%esp)
	je	L311
	movl	248(%esp), %ebx
	imull	$44, 220(%esp), %edx
	addl	_sprite, %edx
	movzbl	20(%ebx), %ebx
	movzwl	12(%edx), %ecx
	leal	(%ebx,%ebx,4), %edx
	andl	$48, %ecx
	sarl	$2, %edx
	cmpw	$16, %cx
	movl	_xdimen, %ecx
	cmovne	%ebx, %edx
	movl	%ecx, %ebx
	subl	$1, %ebx
	movl	%edx, 136(%esp)
	movl	%ebx, 224(%esp)
	js	L313
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L314:
	movl	_windowxy1, %ebx
	movl	_startumost, %edx
	addl	%eax, %ebx
	movswl	(%edx,%ebx,2), %edx
	movl	__ZL5lwall.lto_priv.0, %ebx
	subl	_windowxy1+4, %edx
	movl	%edx, (%ebx,%eax,4)
	movl	_windowxy1, %ebx
	movl	_startdmost, %edx
	addl	%eax, %ebx
	movswl	(%edx,%ebx,2), %edx
	movl	__ZL5swall.lto_priv.0, %ebx
	subl	_windowxy1+4, %edx
	movl	%edx, (%ebx,%eax,4)
	addl	$1, %eax
	cmpl	%eax, %ecx
	jne	L314
	movl	248(%esp), %eax
	movzwl	12(%eax), %eax
	movw	%ax, 240(%esp)
	andl	$48, %eax
L313:
	cmpw	$16, %ax
	je	L945
	movl	__ZL12smostwallcnt.lto_priv.0, %eax
	subl	$1, %eax
	movl	%eax, 240(%esp)
	js	L317
	.p2align 4
	.p2align 3
L371:
	movl	240(%esp), %eax
	movl	__ZL9smostwall.lto_priv.0(,%eax,4), %ecx
	movl	_xb1(,%ecx,4), %eax
	movl	%eax, 192(%esp)
	cmpl	%eax, 224(%esp)
	jl	L350
	movl	__ZL3xb2.lto_priv.0(,%ecx,4), %eax
	movl	%eax, 188(%esp)
	testl	%eax, %eax
	js	L350
	movl	__ZL3yb1.lto_priv.0(,%ecx,4), %eax
	movl	208(%esp), %ebx
	movl	%eax, 160(%esp)
	cmpl	%ebx, %eax
	jl	L351
	cmpl	%ebx, __ZL3yb2.lto_priv.0(,%ecx,4)
	jge	L350
L351:
	movswl	_thewall(%ecx,%ecx), %eax
	movl	_wall, %edi
	movl	248(%esp), %esi
	sall	$5, %eax
	addl	%edi, %eax
	movswl	8(%eax), %edx
	movl	4(%eax), %ebx
	sall	$5, %edx
	addl	%edx, %edi
	movl	(%eax), %edx
	movl	(%edi), %eax
	movl	4(%edi), %edi
	subl	%edx, %eax
	subl	(%esi), %edx
	subl	%ebx, %edi
	movl	%eax, 176(%esp)
	movl	4(%esi), %eax
	movl	%edx, %esi
	movl	%eax, 168(%esp)
	subl	%ebx, %eax
	movl	%eax, %edx
	movl	176(%esp), %eax
/APP
 # 2267 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx
 # 0 "" 2
/NO_APP
	testl	%edx, %edx
	js	L352
	movl	208(%esp), %eax
	cmpl	%eax, 160(%esp)
	jge	L350
	cmpl	%eax, __ZL3yb2.lto_priv.0(,%ecx,4)
	jge	L350
L352:
	movl	192(%esp), %edx
	xorl	%eax, %eax
	movl	188(%esp), %ebx
	movl	224(%esp), %esi
	testl	%edx, %edx
	movl	%ebx, %edi
	cmovns	%edx, %eax
	cmpl	%ebx, %esi
	cmovle	%esi, %edi
	movl	%eax, %ecx
	movl	240(%esp), %eax
	movl	%edi, 188(%esp)
	movzbl	__ZL13smostwalltype.lto_priv.0(%eax), %eax
	cmpb	$1, %al
	je	L353
	cmpb	$2, %al
	je	L354
	testb	%al, %al
	jne	L350
	cmpl	%edi, %ecx
	jg	L350
	testl	%edx, %edx
	jg	L706
	cmpl	%ebx, %esi
	jle	L916
L706:
	movl	188(%esp), %edx
	addl	$1, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L356:
	movl	__ZL5swall.lto_priv.0, %eax
	movl	$0, (%eax,%ecx,4)
	addl	$1, %ecx
	cmpl	%edx, %ecx
	jne	L356
	.p2align 4
	.p2align 3
L350:
	subl	$1, 240(%esp)
	cmpl	$-1, 240(%esp)
	jne	L371
L317:
	movl	__ZL5swall.lto_priv.0, %ecx
	movl	224(%esp), %ebx
	movl	__ZL5lwall.lto_priv.0, %edx
	movl	(%ecx,%ebx,4), %eax
	cmpl	%eax, (%edx,%ebx,4)
	jl	L372
	xorl	%eax, %eax
	testl	%ebx, %ebx
	jg	L374
	jmp	L373
	.p2align 4
	.p2align 4,,10
	.p2align 3
L946:
	addl	$1, %eax
	cmpl	%eax, %ebx
	je	L916
L374:
	movl	(%ecx,%eax,4), %edi
	cmpl	%edi, (%edx,%eax,4)
	jge	L946
L373:
	cmpl	%eax, 224(%esp)
	je	L916
L372:
	movl	184(%esp), %eax
	leal	(%eax,%eax,4), %eax
	movl	_voxoff(,%eax,4), %eax
	movl	%eax, 192(%esp)
	testl	%eax, %eax
	je	L947
	movl	184(%esp), %eax
	movl	248(%esp), %ebx
	movl	_voxscale(,%eax,4), %eax
	movzbl	21(%ebx), %ebx
	movl	%ebx, 240(%esp)
	cmpl	$65536, %eax
	je	L948
	movl	136(%esp), %ebx
	imull	%eax, %ebx
	imull	240(%esp), %eax
	movl	%ebx, 176(%esp)
	movl	%eax, 188(%esp)
L378:
	movl	248(%esp), %ebx
	movl	216(%esp), %esi
	movsbl	22(%ebx), %edi
	movl	%esi, %ecx
	movsbl	23(%ebx), %eax
	movl	%edi, %edx
	negl	%edx
	andl	$4, %ecx
	movl	%ecx, 200(%esp)
	movzwl	12(%ebx), %ecx
	cmovne	%edx, %edi
	movl	%ecx, %edx
	movw	%cx, 236(%esp)
	movl	8(%ebx), %ecx
	andl	$48, %edx
	andl	$8, %esi
	je	L380
	testw	%dx, %dx
	jne	L381
	testb	$16, 18(%ebx)
	je	L382
	negl	%eax
	imull	240(%esp), %eax
	sall	$2, %eax
	subl	%eax, %ecx
	movl	%ecx, 8(%ebx)
	.p2align 4
	.p2align 3
L383:
	movss	LC1, %xmm1
L384:
	movl	248(%esp), %esi
	xorps	%xmm0, %xmm0
	movswl	28(%esi), %ebx
	movzbl	20(%esi), %edx
	leal	3584(%ebx), %ecx
	movl	%ebx, %eax
	andl	$2047, %ecx
	andl	$2047, %eax
	movswl	_sintable(%ecx,%ecx), %ecx
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %ecx
	imull	%edx, %eax
	movl	%edi, %edx
	cvtsi2ssl	%ecx, %xmm0
	mulss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
/APP
 # 5849 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	subl	%eax, (%esi)
	movl	%edi, %edx
	movl	%ecx, %eax
/APP
 # 5850 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	4(%esi), %ecx
	movl	144(%esp), %edx
	movl	%ecx, 236(%esp)
	subl	%eax, %ecx
	movl	_globalvisibility, %eax
	movl	%ecx, 4(%esi)
	movzbl	32(%edx), %edx
	testb	%dl, %dl
	je	L385
	addl	$16, %edx
	movzbl	%dl, %edx
/APP
 # 5853 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
L385:
	movl	%eax, _globvis
	movl	__ZL5lwall.lto_priv.0, %eax
	movl	%eax, 236(%esp)
	movl	__ZL5swall.lto_priv.0, %eax
	movl	%eax, 224(%esp)
	cmpw	$0, _searchit
	jle	L938
	cmpl	$1024, 208(%esp)
	jg	L386
L938:
	movl	248(%esp), %eax
	movl	8(%eax), %edi
L931:
	movl	144(%esp), %eax
	movzwl	12(%eax), %edx
	movzwl	14(%eax), %eax
	movw	%dx, 216(%esp)
	movw	%ax, 200(%esp)
L388:
	movl	164(%esp), %edx
	addl	_spriteext, %edx
	addl	44(%edx), %ecx
	movl	40(%edx), %eax
	movl	%ecx, 192(%esp)
	movl	248(%esp), %esi
	movl	48(%edx), %ecx
	movswl	20(%edx), %edx
	addl	(%esi), %eax
	addl	%edi, %ecx
	leal	1536(%ebx,%edx), %edi
	movl	$-2147483648, %ebx
	testb	$3, 216(%esp)
	jne	L403
	movl	144(%esp), %ebx
	movl	4(%ebx), %ebx
L403:
	movl	$2147483647, %edx
	testb	$3, 200(%esp)
	jne	L404
	movl	144(%esp), %edx
	movl	8(%edx), %edx
L404:
	movl	%ebx, 40(%esp)
	movl	208(%esp), %esi
	movl	248(%esp), %ebx
	movl	%edx, 36(%esp)
	movl	%esi, 44(%esp)
	movzbl	18(%ebx), %edx
	movl	%edx, 32(%esp)
	movswl	12(%ebx), %edx
	movl	%edx, 28(%esp)
	movl	224(%esp), %edx
	movl	%edx, 24(%esp)
	movl	236(%esp), %edx
	movl	%edx, 20(%esp)
	movzbl	17(%ebx), %edx
	movl	184(%esp), %ebx
	movl	%edi, (%esp)
	movl	%edx, 16(%esp)
	movl	192(%esp), %edx
	movl	%ebx, 12(%esp)
	movl	240(%esp), %ebx
	movl	%ebx, 8(%esp)
	movl	136(%esp), %ebx
	movl	%ebx, 4(%esp)
	call	__ZL16classicDrawVoxeliiiiiiicPKiS0_siiii
L405:
	cmpl	$1, _automapping
	jne	L916
	cmpl	$16383, 220(%esp)
	ja	L916
	movl	220(%esp), %eax
	movl	232(%esp), %edx
	sarl	$3, %eax
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.9(%edx), %edx
	orb	%dl, _show2dsprite(%eax)
	jmp	L916
	.p2align 4,,10
	.p2align 3
L941:
	movzbl	_numalphatabs, %eax
	testb	%al, %al
	jne	L949
	comiss	LC4, %xmm0
	jb	L296
	comiss	LC5, %xmm0
	jb	L902
	orw	$514, %di
	movzwl	%di, %eax
	movl	%eax, 216(%esp)
	.p2align 4
	.p2align 3
L296:
	movl	248(%esp), %eax
	movw	%di, 12(%eax)
	movswl	14(%eax), %eax
	movw	%ax, 236(%esp)
	movl	%eax, 200(%esp)
	cmpb	$0, 188(%esp)
	je	L285
	.p2align 4
	.p2align 3
L927:
	movl	%eax, 184(%esp)
	cmpl	$2047, %eax
	ja	L950
	movl	184(%esp), %eax
	movl	%eax, 200(%esp)
	jmp	L301
	.p2align 4,,10
	.p2align 3
L950:
	movl	184(%esp), %eax
	andb	$-17, 240(%esp)
	movl	%eax, 200(%esp)
	jmp	L302
	.p2align 4,,10
	.p2align 3
L942:
	movl	_usevoxels, %esi
	testl	%esi, %esi
	je	L302
	movl	200(%esp), %eax
	movswl	_tiletovox(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L302
	testb	$1, 12(%edx)
	jne	L302
	andl	$-49, %ecx
	orb	$16, 240(%esp)
	movl	%eax, 184(%esp)
	movl	%ecx, 216(%esp)
	jmp	L301
	.p2align 4,,10
	.p2align 3
L289:
	xorps	%xmm1, %xmm1
	comiss	%xmm1, %xmm0
	ja	L286
	jmp	L929
	.p2align 4,,10
	.p2align 3
L944:
	movswl	22(%ebx), %ebx
	movw	%bx, 192(%esp)
	movl	%ebx, 224(%esp)
	testl	%ebx, %ebx
	jne	L310
	jmp	L309
	.p2align 4,,10
	.p2align 3
L943:
	movzbl	176(%esp), %eax
	movl	216(%esp), %ebx
	movl	_blendtable(,%eax,4), %edi
	andl	$512, %ebx
	testl	%edi, %edi
	cmove	%edx, %eax
	cmpl	%eax, _globalblend
	je	L307
	movl	%eax, _globalblend
	movl	_blendtable(,%eax,4), %eax
	movl	%eax, (%esp)
	call	_fixtransluscence
L307:
	testl	%ebx, %ebx
	je	L308
	call	_settransreverse
	jmp	L305
	.p2align 4,,10
	.p2align 3
L311:
	movl	216(%esp), %edx
	andl	$48, %edx
	je	L376
	movl	_globalposy, %ebx
	movl	%ebx, 240(%esp)
	movl	_globalposx, %ebx
	movl	%ebx, 188(%esp)
	movl	216(%esp), %ebx
	andl	$8, %ebx
	movl	%ebx, 184(%esp)
	cmpl	$16, %edx
	je	L951
	testb	$64, 216(%esp)
	jne	L952
L529:
	movl	152(%esp), %ebx
	movl	216(%esp), %ecx
	movl	184(%esp), %edi
	movl	%ebx, %eax
	negl	%eax
	andl	$4, %ecx
	cmove	%ebx, %eax
	movl	148(%esp), %ebx
	movl	%ecx, 136(%esp)
	movl	%eax, 152(%esp)
	movl	%ebx, %eax
	negl	%eax
	testl	%edi, %edi
	cmove	%ebx, %eax
	movl	200(%esp), %ebx
	movl	%eax, 148(%esp)
	movzwl	_tilesiz(,%ebx,4), %eax
	movzwl	_tilesiz+2(,%ebx,4), %ebx
	movw	%ax, 160(%esp)
	movw	%bx, 164(%esp)
	movl	224(%esp), %ebx
	movl	%ebx, %eax
	imull	%ebx, %eax
	addl	$16777216, %eax
/APP
 # 6414 "source/build/src/engine.cpp" 1
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
	movl	248(%esp), %ebx
	movl	%eax, 168(%esp)
	movl	_cosglobalang, %eax
	movl	4(%ebx), %esi
	movl	(%ebx), %edi
	movl	%ebx, 248(%esp)
	subl	240(%esp), %esi
	subl	188(%esp), %edi
	movl	%esi, %ecx
	movl	%edi, 240(%esp)
	movl	%edi, %edx
	movl	_singlobalang, %esi
	movl	%ecx, %edi
/APP
 # 6419 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_singlobalang, %esi
	movl	%eax, 188(%esp)
	movl	%ecx, %edx
	movl	_cosglobalang, %eax
	movl	240(%esp), %edi
	negl	%esi
	movl	%esi, 200(%esp)
/APP
 # 6420 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	248(%esp), %ebx
	movl	%eax, 184(%esp)
	movzwl	28(%ebx), %eax
	leal	512(%eax), %edx
	andl	$2047, %eax
	andl	$2047, %edx
	movswl	_sintable(%eax,%eax), %ecx
	movswl	_sintable(%edx,%edx), %edi
	movl	_cosglobalang, %edx
	movl	%ecx, %esi
	movl	%edi, 176(%esp)
	movl	%edi, %eax
	movl	_singlobalang, %edi
/APP
 # 6423 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_cosglobalang, %edi
	movl	%eax, 240(%esp)
	movl	%ecx, %esi
	movl	176(%esp), %eax
	movl	200(%esp), %edx
/APP
 # 6424 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	248(%esp), %ebx
	movzwl	160(%esp), %ecx
	movl	%eax, 200(%esp)
	movzbl	20(%ebx), %edx
	sarw	%cx
	movswl	%cx, %eax
	addl	152(%esp), %eax
	imull	%edx, %eax
	movl	168(%esp), %edx
	movl	%edx, 8(%esp)
	sarl	$31, %edx
	movl	%edx, 12(%esp)
	movzwl	164(%esp), %edx
	movl	%eax, %edi
	sall	$8, %edi
	sarw	%dx
	movswl	%dx, %eax
	movzbl	21(%ebx), %edx
	addl	148(%esp), %eax
	imull	%edx, %eax
	cltd
	movl	%eax, %ebx
	movl	%edx, %esi
	sall	$20, %ebx
	shldl	$20, %eax, %esi
	movl	%ebx, (%esp)
	movl	%esi, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%edi, 156(%esp)
	movl	%edi, %edx
	movl	240(%esp), %esi
	movl	%eax, %ecx
	movl	200(%esp), %eax
	movl	%ecx, %edi
/APP
 # 6427 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $20, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	240(%esp), %esi
	addl	188(%esp), %eax
	movl	%ecx, %edx
	movl	%eax, __ZL3rzi
	movl	156(%esp), %edi
	negl	%esi
	movl	200(%esp), %eax
	movl	%esi, 176(%esp)
/APP
 # 6428 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $20, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	248(%esp), %ecx
	movl	168(%esp), %edx
	movswl	160(%esp), %edi
	addl	184(%esp), %eax
	movzbl	20(%ecx), %ebx
	movl	%eax, _rxi
	movl	%edx, 8(%esp)
	sarl	$31, %edx
	movl	%edx, 12(%esp)
	imull	%edi, %ebx
	movzbl	21(%ecx), %eax
	movl	%edi, 128(%esp)
	movswl	164(%esp), %edi
	imull	%edi, %eax
	movl	%edi, 132(%esp)
	sall	$8, %ebx
	cltd
	movl	%edx, %ecx
	movl	%eax, %edx
	shldl	$20, %eax, %ecx
	sall	$20, %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%ebx, %edx
	movl	%eax, %esi
	movl	200(%esp), %eax
/APP
 # 6433 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $20, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	__ZL3rzi, %edi
	movl	%ebx, %edx
	subl	%eax, %edi
	movl	240(%esp), %eax
	movl	%edi, __ZL3rzi+4
/APP
 # 6434 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $20, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_rxi, %ecx
	movl	%esi, %edx
	addl	%eax, %ecx
	movl	240(%esp), %eax
	movl	%ecx, _rxi+4
	movl	%ecx, %ebx
/APP
 # 6435 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $20, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	%esi, %edx
	movl	200(%esp), %eax
/APP
 # 6436 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $20, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	__ZL3rzi, %edx
	subl	%eax, %ebx
	subl	%ecx, %edi
	movl	%edi, __ZL3rzi+8
	subl	%ecx, %edx
	movl	%ebx, _rxi+8
	movl	%edx, __ZL3rzi+12
	movl	_rxi, %edx
	subl	%eax, %edx
	movl	224(%esp), %eax
	movl	%edx, _rxi+12
	testl	%eax, %eax
	je	L535
	movswl	192(%esp), %eax
	xorps	%xmm6, %xmm6
	xorl	%ecx, %ecx
	movl	$0, 152(%esp)
	cvtsi2ssl	%eax, %xmm6
	movl	200(%esp), %eax
	movss	%xmm6, 148(%esp)
	xorps	%xmm6, %xmm6
	cvtsi2ssl	%eax, %xmm6
	negl	%eax
	movl	%eax, 160(%esp)
	movss	%xmm6, 192(%esp)
	xorps	%xmm6, %xmm6
	cvtsi2ssl	240(%esp), %xmm6
	movss	%xmm6, 164(%esp)
L538:
	movl	_rxi(,%ecx,4), %edx
	movl	__ZL3rzi(,%ecx,4), %edi
	movl	160(%esp), %eax
	movl	176(%esp), %esi
	subl	184(%esp), %edx
	subl	188(%esp), %edi
/APP
 # 6453 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $8, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	224(%esp), %eax
/APP
 # 6455 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $18, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	248(%esp), %ebx
	addl	8(%ebx), %eax
	subl	_globalposz, %eax
	movl	$81920, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, %ebx
	testl	%ecx, %ecx
	je	L536
	imull	_yxaspect
	movl	%ecx, 156(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	156(%esp), %ecx
	movl	%eax, _ryi(,%ecx,4)
	addl	$1, %ecx
	cmpl	$4, %ecx
	jne	L538
	movl	_halfxdimen, %eax
	xorps	%xmm3, %xmm3
	xorps	%xmm6, %xmm6
	xorps	%xmm1, %xmm1
	cvtsi2ssl	__ZL17viewingrangerecip.lto_priv.0, %xmm6
	movl	_xdimenrecip, %edx
	movss	164(%esp), %xmm2
	movss	192(%esp), %xmm0
	negl	%eax
	movss	LC16, %xmm5
	movss	148(%esp), %xmm7
	imull	%edx, %eax
	movss	192(%esp), %xmm4
	cvtsi2ssl	%edx, %xmm1
	mulss	%xmm6, %xmm2
	mulss	LC14, %xmm2
	cvtsi2ssl	%eax, %xmm3
	movl	$1, %eax
	subl	_globalhoriz, %eax
	mulss	%xmm1, %xmm4
	mulss	LC13, %xmm4
	mulss	%xmm3, %xmm0
	mulss	LC15, %xmm0
	mulss	164(%esp), %xmm1
	mulss	LC13, %xmm1
	addss	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsi2ssl	_xdimscale, %xmm0
	mulss	%xmm0, %xmm5
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movl	248(%esp), %eax
	movzbl	20(%eax), %ecx
	movzbl	21(%eax), %eax
	movss	%xmm5, 120(%esp)
	mulss	%xmm5, %xmm0
	movaps	%xmm7, %xmm5
	mulss	%xmm2, %xmm5
	mulss	LC18, %xmm5
	mulss	LC17, %xmm0
	mulss	%xmm4, %xmm7
	addss	%xmm5, %xmm0
	movss	%xmm0, 112(%esp)
	movss	LC19, %xmm0
	mulss	%xmm7, %xmm0
	xorps	%xmm7, %xmm7
	cvtsi2ssl	%ecx, %xmm7
	movss	%xmm0, 116(%esp)
	movss	LC20, %xmm0
	movaps	%xmm0, %xmm5
	divss	%xmm7, %xmm5
	xorps	%xmm7, %xmm7
	cvtsi2ssl	%eax, %xmm7
	divss	%xmm7, %xmm0
	xorps	%xmm7, %xmm7
	cvtsi2ssl	168(%esp), %xmm7
	mulss	%xmm5, %xmm1
	movss	%xmm1, 124(%esp)
	mulss	%xmm7, %xmm0
	mulss	LC14, %xmm0
	mulss	%xmm0, %xmm4
	mulss	%xmm0, %xmm2
	movss	%xmm4, 156(%esp)
	movss	192(%esp), %xmm4
	xorps	LC21, %xmm4
	mulss	%xmm6, %xmm4
	mulss	LC14, %xmm4
	mulss	164(%esp), %xmm3
	movl	_rxi, %eax
	movss	%xmm2, 188(%esp)
	mulss	LC15, %xmm3
	movl	176(%esp), %edx
	movl	__ZL3rzi, %esi
	movl	200(%esp), %edi
	addss	%xmm3, %xmm4
	mulss	%xmm5, %xmm4
	movss	%xmm4, 184(%esp)
/APP
 # 6480 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	cltd
	movl	%ecx, 8(%esp)
	shldl	$6, %eax, %edx
	sall	$6, %eax
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%edi, %edx
	movl	__ZL3rzi, %esi
	movl	240(%esp), %edi
	movl	%eax, 160(%esp)
	movl	_rxi, %eax
/APP
 # 6481 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	248(%esp), %ebx
	movzbl	21(%ebx), %edx
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	cltd
	shldl	$6, %eax, %edx
	sall	$6, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	168(%esp), %edx
/APP
 # 6481 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $12, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	136(%esp), %esi
	movl	%eax, 108(%esp)
	movss	184(%esp), %xmm3
	movss	124(%esp), %xmm1
	movss	156(%esp), %xmm7
	testl	%esi, %esi
	je	L539
	negl	160(%esp)
	xorps	LC21, %xmm3
	xorps	LC21, %xmm1
L539:
	movl	_rxi, %eax
	xorps	%xmm0, %xmm0
	xorps	%xmm2, %xmm2
	movl	_viewingrange, %ecx
	movl	%eax, 240(%esp)
	movl	__ZL3rzi, %eax
	movl	%ecx, %edx
	cvtsi2ssl	%eax, %xmm2
	mulss	164(%esp), %xmm2
	cvtsi2ssl	240(%esp), %xmm0
	mulss	192(%esp), %xmm0
	addss	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	mulss	148(%esp), %xmm0
	cvtsi2ssl	152(%esp), %xmm2
	mulss	LC22, %xmm0
	mulss	LC23, %xmm2
	addss	%xmm2, %xmm0
	movss	LC24, %xmm2
	movss	%xmm0, 164(%esp)
	mulss	%xmm0, %xmm1
	movaps	%xmm0, %xmm6
	xorps	LC21, %xmm0
	mulss	%xmm6, %xmm3
	mulss	%xmm0, %xmm7
	mulss	188(%esp), %xmm0
	mulss	%xmm2, %xmm1
	mulss	%xmm2, %xmm7
	movss	%xmm1, 168(%esp)
	movss	LC25, %xmm1
	movss	%xmm7, 156(%esp)
	mulss	%xmm1, %xmm3
	mulss	%xmm1, %xmm0
	movss	%xmm3, 152(%esp)
	movss	%xmm0, 148(%esp)
/APP
 # 6494 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 192(%esp)
	movl	%ecx, %edx
	movl	%eax, __ZL3rzi
	movl	__ZL3rzi+4, %eax
/APP
 # 6495 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 184(%esp)
	movl	%ecx, %edx
	movl	%eax, __ZL3rzi+4
	movl	__ZL3rzi+8, %eax
/APP
 # 6496 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, __ZL3rzi+8
	movl	%ecx, %edx
	movl	__ZL3rzi+12, %eax
/APP
 # 6497 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	248(%esp), %ebx
	movl	%eax, 176(%esp)
	movl	%eax, __ZL3rzi+12
	movzwl	12(%ebx), %ecx
	movl	8(%ebx), %eax
	movl	%eax, 200(%esp)
	movl	%ecx, %eax
	notl	%eax
	movw	%cx, 188(%esp)
	testb	$48, %al
	jne	L541
	movzwl	22(%ebx), %ecx
	movw	%cx, 188(%esp)
	testw	%cx, %cx
	je	L541
	movswl	28(%ebx), %ecx
	movl	_globalposy, %edx
	movl	_globalposx, %edi
	subl	4(%ebx), %edx
	leal	1024(%ecx), %eax
	addl	$512, %ecx
	subl	(%ebx), %edi
	andl	$2047, %ecx
	andl	$2047, %eax
	movswl	_sintable(%ecx,%ecx), %ecx
	movswl	_sintable(%eax,%eax), %eax
	negl	%ecx
	movl	%ecx, %esi
/APP
 # 1822 "source/build/include/build.h" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movswl	188(%esp), %eax
/APP
 # 1824 "source/build/include/build.h" 1
	imull %edx; shrdl $18, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, 200(%esp)
L541:
	movl	200(%esp), %eax
	cmpl	%eax, _globalposz
	jle	L544
	movl	_rxi+4, %eax
	movl	_rxi+12, %edx
	movl	%eax, _rxi+12
	movl	176(%esp), %eax
	movl	%edx, _rxi+4
	movl	_ryi+12, %edx
	movl	%eax, __ZL3rzi+4
	movl	184(%esp), %eax
	movl	%eax, __ZL3rzi+12
	movl	_ryi+4, %eax
	movl	%edx, _ryi+4
	movl	%eax, _ryi+12
L544:
	movl	240(%esp), %eax
	addl	192(%esp), %eax
	xorl	%ebx, %ebx
	movl	$0, 240(%esp)
	cltd
L551:
	addl	$1, %ebx
	xorl	%edi, %edi
	cmpl	$4, %ebx
	cmovne	%ebx, %edi
	movl	__ZL3rzi(,%edi,4), %ecx
	addl	_rxi(,%edi,4), %ecx
	movl	%edi, 192(%esp)
	movl	%ecx, 200(%esp)
	sarl	$31, %ecx
	movl	%ecx, 204(%esp)
	testl	%edx, %edx
	js	L549
	movl	240(%esp), %edi
	movl	_rxi-4(,%ebx,4), %ecx
	movl	%ecx, __ZL4rxi2(,%edi,4)
	movl	_ryi-4(,%ebx,4), %ecx
	movl	%ecx, __ZL4ryi2(,%edi,4)
	movl	__ZL3rzi-4(,%ebx,4), %ecx
	movl	%ecx, __ZL4rzi2(,%edi,4)
	addl	$1, %edi
	movl	%edi, 240(%esp)
L549:
	movl	204(%esp), %edi
	xorl	%edx, %edi
	js	L953
L550:
	cmpl	$4, %ebx
	je	L954
	movl	200(%esp), %eax
	movl	204(%esp), %edx
	jmp	L551
L947:
	movl	248(%esp), %eax
	movl	$-1, %ebx
	movl	$32, _globalshade
	movw	%bx, 20(%eax)
L376:
	movl	208(%esp), %eax
	cmpl	$1024, %eax
	jle	L916
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	_xdimenscale, %eax
	cltd
	shldl	$19, %eax, %edx
	sall	$19, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	_xyaspect, %edx
	movl	%eax, %ebx
	movl	248(%esp), %eax
	movzbl	20(%eax), %eax
	sall	$16, %eax
/APP
 # 5933 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edi
	movl	200(%esp), %eax
	movswl	_tilesiz(,%eax,4), %edx
	movswl	_tilesiz+2(,%eax,4), %esi
	movl	%ebx, %eax
	movl	%edx, 188(%esp)
	movl	%edx, %ecx
	imull	%edi, %edx
	movw	%si, 192(%esp)
/APP
 # 5935 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	248(%esp), %edx
	movl	%eax, 240(%esp)
	movl	%ebx, %eax
	movl	%esi, 168(%esp)
	movzbl	21(%edx), %edx
	imull	%esi, %edx
/APP
 # 5935 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%ecx, %edx
	movl	%eax, 224(%esp)
	sarw	$11, %dx
	movswl	%dx, %eax
	movl	240(%esp), %edx
	cmpl	%edx, %eax
	jge	L916
	movl	224(%esp), %edx
	sarl	%edx
	movl	%edx, 184(%esp)
	cmpl	%edx, %esi
	jge	L916
	movl	200(%esp), %eax
	movl	%ecx, 176(%esp)
	movl	$0, 136(%esp)
	call	__Z12tileLoadHighi
	movl	176(%esp), %ecx
	testl	%eax, %eax
	movl	%eax, __ZL8globalht.lto_priv.0
	je	L408
	movl	4(%eax), %edx
	movzwl	4(%eax), %eax
	movl	%edx, 136(%esp)
	movw	%ax, 132(%esp)
L409:
	movl	240(%esp), %eax
	movl	156(%esp), %esi
	sarl	%eax
	subl	%eax, %esi
	andl	$1, %ecx
	je	L411
	movl	%ebx, %eax
	movl	%edi, %edx
/APP
 # 5944 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $31, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, %esi
L411:
	movl	152(%esp), %edx
	movl	%ebx, %eax
	imull	%edi, %edx
/APP
 # 5945 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%esi, %ecx
	movl	%esi, %edx
	movl	216(%esp), %esi
	movl	248(%esp), %edi
	addl	%eax, %ecx
	subl	%eax, %edx
	movl	%ecx, %eax
	movl	%esi, %ecx
	andl	$4, %ecx
	cmovne	%eax, %edx
	movl	%ecx, 156(%esp)
	movl	8(%edi), %eax
	movl	_globalposz, %ecx
	movl	%edx, 176(%esp)
	movl	%ebx, %edx
	movl	%ecx, 164(%esp)
	subl	%ecx, %eax
/APP
 # 5948 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movzbl	21(%edi), %edi
	movl	148(%esp), %edx
	movl	%eax, %ecx
	movl	%ebx, %eax
	imull	%edi, %edx
/APP
 # 5949 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_globalhoriz, %edx
	movl	%eax, 236(%esp)
	movl	224(%esp), %eax
	movl	%edx, 160(%esp)
	sall	$8, %edx
	subl	%eax, %edx
	movl	236(%esp), %eax
	subl	%eax, %ecx
	addl	%edx, %ecx
	andl	$128, %esi
	je	L414
	movl	184(%esp), %eax
	addl	%eax, %ecx
	testb	$1, 192(%esp)
	je	L414
	movl	%ebx, %eax
	movl	%edi, %edx
/APP
 # 5954 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $15, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
L414:
	movl	224(%esp), %eax
	movl	%ecx, %edx
	movl	%ecx, 268(%esp)
	orb	$-1, %dl
	leal	-1(%ecx,%eax), %edi
	movl	%edi, %eax
	movl	%edi, 264(%esp)
	orb	$-1, %al
	cmpl	%eax, %edx
	jge	L916
	movl	176(%esp), %eax
	movl	240(%esp), %edx
	leal	-1(%eax,%edx), %edx
	sarl	$8, %eax
	leal	1(%eax), %esi
	xorl	%eax, %eax
	movl	%edx, 184(%esp)
	testl	%esi, %esi
	cmovns	%esi, %eax
	sarl	$8, %edx
	movl	%edx, %esi
	movl	%eax, 224(%esp)
	movl	_xdimen, %eax
	leal	-1(%eax), %edx
	cmpl	%eax, %esi
	cmovl	%esi, %edx
	movl	%edx, 236(%esp)
	cmpl	%edx, 224(%esp)
	jg	L916
	movl	144(%esp), %eax
	xorl	%esi, %esi
	testb	$3, 12(%eax)
	jne	L416
	movl	4(%eax), %eax
	movl	%eax, 192(%esp)
	movl	%eax, %edx
	movl	164(%esp), %eax
	subl	%eax, %edx
	movl	%ebx, %eax
/APP
 # 5965 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	160(%esp), %edx
	leal	-1(%edx,%eax), %eax
	movl	%eax, %esi
L416:
	movl	144(%esp), %eax
	sarl	$8, %edi
	sarl	$8, %ecx
	movl	%edi, 192(%esp)
	testb	$3, 14(%eax)
	je	L417
	movl	%esi, %eax
	cmpl	%ecx, %esi
	cmovl	%ecx, %eax
	movl	%eax, %edi
L418:
	cmpl	$-32768, %edi
	jge	L419
	movl	$-32768, %edi
	cmpl	$32767, 192(%esp)
	jle	L421
	movl	$32767, 192(%esp)
L420:
	movzbl	132(%esp), %ecx
	movl	188(%esp), %eax
	movl	156(%esp), %esi
	movl	224(%esp), %ebx
	sall	%cl, %eax
	movl	240(%esp), %ecx
	cltd
	sall	$8, %ebx
	shldl	$24, %eax, %edx
	sall	$24, %eax
	testl	%esi, %esi
	movl	%ecx, 8(%esp)
	movl	%ecx, %esi
	jne	L422
	sarl	$31, %esi
	movl	%eax, (%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, 124(%esp)
	movl	%eax, %edx
	movl	176(%esp), %eax
	subl	%eax, %ebx
	movl	%ebx, %eax
/APP
 # 5978 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $8, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 128(%esp)
L423:
	movl	216(%esp), %eax
	andl	$8, %eax
	movl	%eax, 152(%esp)
	je	L424
	leal	268(%esp), %eax
	leal	264(%esp), %ebx
/APP
 # 5987 "source/build/src/engine.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
L424:
	movl	236(%esp), %eax
	subl	$3, %eax
	movl	%eax, 240(%esp)
	movl	%eax, %ebx
	movl	224(%esp), %eax
	cmpl	%eax, %ebx
	jle	L678
	movl	192(%esp), %ecx
	leal	(%eax,%eax), %edx
L426:
	movl	_windowxy1, %ebx
	movl	_startumost, %esi
	addl	%eax, %ebx
	movswl	(%esi,%ebx,2), %ebx
	subl	_windowxy1+4, %ebx
	cmpl	%edi, %ebx
	movl	__ZL5uwall.lto_priv.0, %esi
	cmovl	%edi, %ebx
	movw	%bx, (%esi,%edx)
	movl	_windowxy1, %ebx
	movl	_startumost, %esi
	addl	%eax, %ebx
	movswl	2(%esi,%ebx,2), %ebx
	subl	_windowxy1+4, %ebx
	cmpl	%edi, %ebx
	movl	__ZL5uwall.lto_priv.0, %esi
	cmovl	%edi, %ebx
	movw	%bx, 2(%esi,%edx)
	movl	_windowxy1, %ebx
	movl	_startumost, %esi
	addl	%eax, %ebx
	movswl	4(%esi,%ebx,2), %ebx
	subl	_windowxy1+4, %ebx
	cmpl	%edi, %ebx
	movl	__ZL5uwall.lto_priv.0, %esi
	cmovl	%edi, %ebx
	movw	%bx, 4(%esi,%edx)
	movl	_windowxy1, %ebx
	movl	_startumost, %esi
	addl	%eax, %ebx
	movswl	6(%esi,%ebx,2), %ebx
	subl	_windowxy1+4, %ebx
	cmpl	%edi, %ebx
	movl	__ZL5uwall.lto_priv.0, %esi
	cmovl	%edi, %ebx
	movw	%bx, 6(%esi,%edx)
	movl	_windowxy1, %ebx
	movl	_startdmost, %esi
	addl	%eax, %ebx
	movswl	(%esi,%ebx,2), %ebx
	subl	_windowxy1+4, %ebx
	cmpl	%ecx, %ebx
	movl	__ZL5dwall.lto_priv.0, %esi
	cmovg	%ecx, %ebx
	movw	%bx, (%esi,%edx)
	movl	_windowxy1, %ebx
	movl	_startdmost, %esi
	addl	%eax, %ebx
	movswl	2(%esi,%ebx,2), %ebx
	subl	_windowxy1+4, %ebx
	cmpl	%ecx, %ebx
	movl	__ZL5dwall.lto_priv.0, %esi
	cmovg	%ecx, %ebx
	movw	%bx, 2(%esi,%edx)
	movl	_windowxy1, %ebx
	movl	_startdmost, %esi
	addl	%eax, %ebx
	movswl	4(%esi,%ebx,2), %ebx
	subl	_windowxy1+4, %ebx
	cmpl	%ecx, %ebx
	movl	__ZL5dwall.lto_priv.0, %esi
	cmovg	%ecx, %ebx
	movw	%bx, 4(%esi,%edx)
	movl	_windowxy1, %ebx
	movl	_startdmost, %esi
	addl	%eax, %ebx
	movswl	6(%esi,%ebx,2), %ebx
	subl	_windowxy1+4, %ebx
	cmpl	%ecx, %ebx
	movl	__ZL5dwall.lto_priv.0, %esi
	cmovg	%ecx, %ebx
	addl	$4, %eax
	movw	%bx, 6(%esi,%edx)
	addl	$8, %edx
	cmpl	%eax, 240(%esp)
	jg	L426
	movl	236(%esp), %ebx
	movl	224(%esp), %ecx
	movl	%ebx, %eax
	subl	%ecx, %eax
	subl	$4, %eax
	andl	$-4, %eax
	leal	4(%ecx,%eax), %eax
	cmpl	%eax, %ebx
	jl	L427
	movl	236(%esp), %ebx
	movl	192(%esp), %ecx
L428:
	movl	_windowxy1, %edx
	movl	_startumost, %esi
	addl	%eax, %edx
	movswl	(%esi,%edx,2), %edx
	subl	_windowxy1+4, %edx
	cmpl	%edi, %edx
	movl	__ZL5uwall.lto_priv.0, %esi
	cmovl	%edi, %edx
	movw	%dx, (%esi,%eax,2)
	movl	_windowxy1, %edx
	movl	_startdmost, %esi
	addl	%eax, %edx
	movswl	(%esi,%edx,2), %edx
	subl	_windowxy1+4, %edx
	cmpl	%ecx, %edx
	movl	__ZL5dwall.lto_priv.0, %esi
	cmovg	%ecx, %edx
	movw	%dx, (%esi,%eax,2)
	addl	$1, %eax
	cmpl	%ebx, %eax
	jle	L428
L427:
	movl	__ZL12smostwallcnt.lto_priv.0, %eax
	subl	$1, %eax
	movl	%eax, 240(%esp)
	js	L429
	xorl	%esi, %esi
	movl	%esi, 184(%esp)
	.p2align 4
	.p2align 3
L454:
	movl	240(%esp), %ebx
	movzbl	__ZL13smostwalltype.lto_priv.0(%ebx), %eax
	movb	%al, 192(%esp)
	testl	%eax, 184(%esp)
	jne	L437
	movl	__ZL9smostwall.lto_priv.0(,%ebx,4), %ecx
	movl	236(%esp), %ebx
	movl	_xb1(,%ecx,4), %eax
	movl	%eax, 176(%esp)
	cmpl	%ebx, %eax
	jg	L437
	movl	__ZL3xb2.lto_priv.0(,%ecx,4), %eax
	movl	224(%esp), %ebx
	movl	%eax, 188(%esp)
	cmpl	%ebx, %eax
	jl	L437
	movl	__ZL3yb1.lto_priv.0(,%ecx,4), %eax
	movl	208(%esp), %ebx
	movl	%eax, 156(%esp)
	cmpl	%ebx, %eax
	jl	L431
	cmpl	%ebx, __ZL3yb2.lto_priv.0(,%ecx,4)
	jge	L437
L431:
	movswl	_thewall(%ecx,%ecx), %eax
	movl	_wall, %edi
	movl	248(%esp), %esi
	sall	$5, %eax
	addl	%edi, %eax
	movswl	8(%eax), %edx
	movl	4(%eax), %ebx
	sall	$5, %edx
	addl	%edx, %edi
	movl	(%eax), %edx
	movl	(%edi), %eax
	movl	4(%edi), %edi
	subl	%edx, %eax
	subl	(%esi), %edx
	subl	%ebx, %edi
	movl	%eax, 164(%esp)
	movl	4(%esi), %eax
	movl	%edx, %esi
	movl	%eax, 160(%esp)
	subl	%ebx, %eax
	movl	%eax, %edx
	movl	164(%esp), %eax
/APP
 # 2267 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx
 # 0 "" 2
/NO_APP
	testl	%edx, %edx
	js	L432
	movl	208(%esp), %eax
	cmpl	%eax, 156(%esp)
	jge	L437
	cmpl	%eax, __ZL3yb2.lto_priv.0(,%ecx,4)
	jge	L437
L432:
	movl	176(%esp), %esi
	movl	224(%esp), %edx
	movl	188(%esp), %eax
	movl	236(%esp), %ebx
	cmpl	%edx, %esi
	movl	%edx, %ecx
	cmovge	%esi, %ecx
	movl	%ebx, %edi
	cmpl	%ebx, %eax
	cmovle	%eax, %edi
	movzbl	192(%esp), %eax
	movl	%edi, 164(%esp)
	cmpb	$1, %al
	je	L433
	cmpb	$2, %al
	je	L434
	testb	%al, %al
	jne	L437
	cmpl	%edi, %ecx
	jg	L437
	cmpl	%edx, %esi
	jg	L707
	cmpl	%ebx, 188(%esp)
	jge	L916
L707:
	movl	164(%esp), %edx
	leal	(%ecx,%ecx), %eax
	addl	$1, %edx
	addl	%edx, %edx
L436:
	movl	__ZL5dwall.lto_priv.0, %ecx
	xorl	%ebx, %ebx
	movw	%bx, (%ecx,%eax)
	addl	$2, %eax
	cmpl	%edx, %eax
	jne	L436
	.p2align 4
	.p2align 3
L437:
	subl	$1, 240(%esp)
	movl	240(%esp), %eax
	cmpl	$-1, %eax
	jne	L454
L429:
	movl	__ZL5dwall.lto_priv.0, %edx
	movl	236(%esp), %ebx
	movl	__ZL5uwall.lto_priv.0, %ecx
	movzwl	(%edx,%ebx,2), %eax
	cmpw	%ax, (%ecx,%ebx,2)
	jl	L455
	movl	224(%esp), %eax
	cmpl	%ebx, %eax
	jl	L457
	jmp	L916
	.p2align 5
	.p2align 4,,10
	.p2align 3
L955:
	addl	$1, %eax
	cmpl	%ebx, %eax
	je	L916
L457:
	movzwl	(%edx,%eax,2), %edi
	cmpw	%di, (%ecx,%eax,2)
	jge	L955
	cmpl	%eax, 236(%esp)
	je	L916
L455:
	cmpw	$0, _searchit
	jle	L458
	movl	_searchx, %eax
	movl	224(%esp), %ebx
	cmpl	%ebx, %eax
	jl	L458
	movl	236(%esp), %ebx
	cmpl	%ebx, %eax
	jle	L956
L458:
	movl	248(%esp), %ecx
	movl	144(%esp), %eax
	movl	136(%esp), %esi
	movw	132(%esp), %si
	movl	%ecx, %edi
	movl	8(%ecx), %ebx
	movzbl	32(%eax), %eax
	movzbl	21(%edi), %edx
	leal	256(%esp), %edi
	movswl	30(%ecx), %ecx
	movl	%esi, 28(%esp)
	movl	%edi, 24(%esp)
	leal	260(%esp), %edi
	movl	%edi, 20(%esp)
	movl	216(%esp), %edi
	movl	%eax, (%esp)
	movl	%ebx, %eax
	movl	%edi, 16(%esp)
	movl	200(%esp), %edi
	movl	%edi, 12(%esp)
	movl	148(%esp), %edi
	movl	%edi, 8(%esp)
	movl	168(%esp), %edi
	movl	%edi, 4(%esp)
	call	__ZL21setup_globals_sprite1P11tspritetypePK13usectortypev7iiiiPiS4_4vec2IsE.isra.0
	movl	224(%esp), %ebx
	movl	236(%esp), %edx
	movl	124(%esp), %esi
	subl	%ebx, %edx
	leal	0(,%ebx,4), %eax
	leal	1(%edx), %ecx
	movl	%eax, 240(%esp)
	movl	128(%esp), %edx
	movl	%ecx, 216(%esp)
	addl	__ZL5lwall.lto_priv.0, %eax
/APP
 # 6085 "source/build/src/engine.cpp" 1
	movl %ecx, %ebx; shrl $1, %ecx; jz 1f; 0: leal (%edx,%esi,), %edi; sarl $16, %edx; movl %edx, (%eax); leal (%edi,%esi,), %edx; sarl $16, %edi; movl %edi, 4(%eax); addl $8, %eax; decl %ecx; jnz 0b; testl $1, %ebx; jz 2f; 1: sarl $16, %edx; movl %edx, (%eax); 2:
 # 0 "" 2
/NO_APP
	movl	240(%esp), %eax
	addl	__ZL5swall.lto_priv.0, %eax
	movl	%eax, %edi
	movl	_xdimscale, %edx
	movl	208(%esp), %eax
/APP
 # 6086 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $19, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	216(%esp), %ecx
/APP
 # 6086 "source/build/src/engine.cpp" 1
	rep; stosl
 # 0 "" 2
/NO_APP
	movss	LC0, %xmm1
	cmpl	$0, 152(%esp)
	je	L459
	movss	LC2, %xmm1
L459:
	xorps	%xmm0, %xmm0
	movl	248(%esp), %eax
	movl	168(%esp), %ebx
	cvtsi2ssl	208(%esp), %xmm0
	movl	240(%esp), %edi
	movl	216(%esp), %ecx
	movzbl	21(%eax), %eax
	addl	__ZL6swallf.lto_priv.0, %edi
	imull	%ebx, %eax
	mulss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	_xdimscale, %xmm1
	mulss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	mulss	LC7, %xmm0
	cvtsi2ssl	%eax, %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, 248(%esp)
	movl	248(%esp), %eax
/APP
 # 6097 "source/build/src/engine.cpp" 1
	rep; stosl
 # 0 "" 2
/NO_APP
	movl	152(%esp), %ecx
	movl	236(%esp), %edx
	movl	$1, __ZL14drawing_sprite.lto_priv.0
	movl	224(%esp), %eax
	shrl	$3, %ecx
	xorl	$1, %ecx
	cmpl	$0, 140(%esp)
	jne	L527
L940:
	call	__ZL12maskwallscaniii.lto_priv.0
L528:
	movl	$0, __ZL14drawing_sprite.lto_priv.0
	movl	$0, __ZL8globalht.lto_priv.0
	jmp	L405
	.p2align 4,,10
	.p2align 3
L354:
	movl	240(%esp), %eax
	movl	188(%esp), %edi
	movl	__ZL10smoststart.lto_priv.0(,%eax,4), %eax
	subl	192(%esp), %eax
	movl	%eax, 176(%esp)
	movl	%eax, %ebx
	leal	-3(%edi), %eax
	cmpl	%eax, %ecx
	jge	L363
	subl	$4, %edi
	leal	(%ebx,%ecx), %edx
	movl	%ecx, 160(%esp)
	leal	0(,%ecx,4), %ebx
	subl	%ecx, %edi
	leal	(%edx,%edx), %eax
	movl	%edi, 168(%esp)
	andl	$-4, %edi
	leal	4(%edx,%edi), %edx
	leal	(%edx,%edx), %edi
	movl	%edi, 192(%esp)
	.p2align 4
	.p2align 3
L368:
	movl	__ZL5smost.lto_priv.0, %ecx
	movl	__ZL5swall.lto_priv.0, %edx
	movswl	(%ecx,%eax), %edi
	cmpl	(%edx,%ebx), %edi
	jge	L364
	movl	%edi, (%edx,%ebx)
	movl	__ZL5smost.lto_priv.0, %ecx
	movl	__ZL5swall.lto_priv.0, %edx
L364:
	movswl	2(%ecx,%eax), %edi
	cmpl	4(%edx,%ebx), %edi
	jge	L365
	movl	%edi, 4(%edx,%ebx)
	movl	__ZL5smost.lto_priv.0, %ecx
	movl	__ZL5swall.lto_priv.0, %edx
L365:
	movswl	4(%ecx,%eax), %edi
	cmpl	8(%edx,%ebx), %edi
	jge	L366
	movl	%edi, 8(%edx,%ebx)
	movl	__ZL5smost.lto_priv.0, %ecx
	movl	__ZL5swall.lto_priv.0, %edx
L366:
	movswl	6(%ecx,%eax), %ecx
	cmpl	12(%edx,%ebx), %ecx
	jge	L367
	movl	%ecx, 12(%edx,%ebx)
L367:
	addl	$8, %eax
	addl	$16, %ebx
	cmpl	%eax, 192(%esp)
	jne	L368
	movl	168(%esp), %eax
	movl	160(%esp), %ecx
	andl	$-4, %eax
	leal	4(%ecx,%eax), %ecx
L363:
	movl	188(%esp), %ebx
	cmpl	%ecx, %ebx
	jl	L350
	movl	176(%esp), %eax
	leal	0(,%ecx,4), %edx
	leal	4(,%ebx,4), %edi
	addl	%ecx, %eax
	addl	%eax, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L370:
	movl	__ZL5smost.lto_priv.0, %ecx
	movswl	(%ecx,%eax), %ebx
	movl	__ZL5swall.lto_priv.0, %ecx
	addl	%edx, %ecx
	cmpl	(%ecx), %ebx
	jge	L369
	movl	%ebx, (%ecx)
L369:
	addl	$4, %edx
	addl	$2, %eax
	cmpl	%edx, %edi
	jne	L370
	jmp	L350
	.p2align 4,,10
	.p2align 3
L353:
	movl	240(%esp), %eax
	movl	188(%esp), %edi
	movl	__ZL10smoststart.lto_priv.0(,%eax,4), %eax
	movl	%eax, 176(%esp)
	subl	192(%esp), %eax
	movl	%eax, 160(%esp)
	movl	%eax, %ebx
	leal	-1(%edi), %eax
	cmpl	%eax, %ecx
	jge	L357
	subl	$2, %edi
	addl	%ecx, %ebx
	movl	%ecx, 168(%esp)
	leal	0(,%ecx,4), %edx
	subl	%ecx, %edi
	leal	(%ebx,%ebx), %eax
	movl	%edi, 176(%esp)
	andl	$-2, %edi
	leal	2(%ebx,%edi), %ebx
	addl	%ebx, %ebx
	movl	%ebx, 192(%esp)
	.p2align 4
	.p2align 3
L360:
	movl	__ZL5smost.lto_priv.0, %ebx
	movl	__ZL5lwall.lto_priv.0, %ecx
	movswl	(%ebx,%eax), %edi
	cmpl	(%ecx,%edx), %edi
	jle	L358
	movl	%edi, (%ecx,%edx)
	movl	__ZL5smost.lto_priv.0, %ebx
	movl	__ZL5lwall.lto_priv.0, %ecx
L358:
	movswl	2(%ebx,%eax), %ebx
	cmpl	4(%ecx,%edx), %ebx
	jle	L359
	movl	%ebx, 4(%ecx,%edx)
L359:
	addl	$4, %eax
	addl	$8, %edx
	cmpl	%eax, 192(%esp)
	jne	L360
	movl	176(%esp), %eax
	movl	168(%esp), %ecx
	andl	$-2, %eax
	leal	2(%ecx,%eax), %ecx
L357:
	movl	188(%esp), %edi
	cmpl	%ecx, %edi
	jl	L350
	movl	160(%esp), %ebx
L362:
	movl	__ZL5smost.lto_priv.0, %eax
	leal	(%ecx,%ebx), %edx
	movswl	(%eax,%edx,2), %edx
	movl	__ZL5lwall.lto_priv.0, %eax
	cmpl	(%eax,%ecx,4), %edx
	jle	L361
	movl	%edx, (%eax,%ecx,4)
L361:
	addl	$1, %ecx
	cmpl	%edi, %ecx
	jle	L362
	jmp	L350
L381:
	negl	%eax
L380:
	imull	240(%esp), %eax
	sall	$2, %eax
	subl	%eax, %ecx
	movl	248(%esp), %eax
	movl	%ecx, 8(%eax)
	cmpw	$16, %dx
	jne	L383
	movss	LC1, %xmm1
	testb	$16, 18(%eax)
	jne	L384
	movss	LC0, %xmm1
	jmp	L384
	.p2align 4,,10
	.p2align 3
L949:
	movzbl	%al, %ecx
	andl	$1, %eax
	xorps	%xmm1, %xmm1
	movl	%edx, 224(%esp)
	leal	(%eax,%ecx,2), %esi
	movl	%ecx, 236(%esp)
	cvtsi2ssl	%esi, %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, (%esp)
	call	_lrintf
	cmpl	%eax, 236(%esp)
	movl	224(%esp), %edx
	jge	L293
	subl	%eax, %esi
	movl	%esi, %eax
	testl	%esi, %esi
	jle	L916
	orw	$514, %di
	movzwl	%di, %ecx
	movl	%ecx, 216(%esp)
L294:
	movb	%al, 176(%esp)
	jmp	L296
L945:
	movl	248(%esp), %esi
	movl	200(%esp), %eax
	movswl	_tilesiz(,%eax,4), %edi
	movzwl	28(%esi), %eax
	movzbl	20(%esi), %edx
	movl	%eax, %ecx
	addl	$1536, %eax
	movl	%edi, 240(%esp)
	sarl	%edi
	andl	$2047, %ecx
	andl	$2047, %eax
	movswl	_sintable(%ecx,%ecx), %ebx
	movswl	_sintable(%eax,%eax), %ecx
	movl	152(%esp), %eax
	imull	%edx, %ecx
	imull	%edx, %ebx
	leal	(%edi,%eax), %edx
	movl	(%esi), %eax
	movl	%edx, 168(%esp)
	movl	%ecx, 192(%esp)
	movl	_globalposx, %ecx
	subl	%ecx, %eax
	movl	%ecx, 128(%esp)
	movl	%eax, %edi
	movl	%ebx, %eax
/APP
 # 5596 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	%edi, %eax
	movl	240(%esp), %edx
	subl	%ecx, %eax
	movl	%eax, 188(%esp)
	movl	%ebx, %eax
/APP
 # 5596 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	188(%esp), %ebx
	movl	168(%esp), %edx
	addl	%eax, %ebx
	movl	192(%esp), %eax
	movl	%ebx, 176(%esp)
	movl	_globalposy, %ebx
/APP
 # 5597 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	4(%esi), %edx
	movl	%ebx, 120(%esp)
	subl	%ebx, %edx
	movl	%edx, %esi
	movl	240(%esp), %edx
	subl	%eax, %esi
	movl	192(%esp), %eax
/APP
 # 5597 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%esi, %eax
	subl	%edi, %ecx
	movl	%esi, 240(%esp)
	movl	_cosglobalang, %edx
	movl	%eax, 192(%esp)
	movl	_singlobalang, %edi
	movl	%esi, %eax
	movl	%ecx, %esi
/APP
 # 1708 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_cosviewingrangeglobalang, %edx
	movl	%eax, 108(%esp)
	movl	240(%esp), %esi
	movl	188(%esp), %eax
	movl	_sinviewingrangeglobalang, %edi
/APP
 # 1709 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	176(%esp), %ecx
	movl	%eax, 168(%esp)
	movl	_cosglobalang, %edx
	movl	192(%esp), %eax
	negl	%ecx
	movl	_singlobalang, %edi
	movl	%ecx, %esi
/APP
 # 1708 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_cosviewingrangeglobalang, %edx
	movl	%eax, 104(%esp)
	movl	192(%esp), %esi
	movl	176(%esp), %eax
	movl	_sinviewingrangeglobalang, %edi
/APP
 # 1709 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	168(%esp), %edi
	movl	%eax, 112(%esp)
	movl	%eax, %ecx
	testl	%edi, %edi
	setle	%dl
	testl	%eax, %eax
	setle	%al
	andb	%al, %dl
	movb	%dl, 160(%esp)
	jne	L916
	movl	128(%esp), %edx
	movl	188(%esp), %ebx
	movl	240(%esp), %esi
	movl	108(%esp), %eax
	addl	%edx, %ebx
	movl	%ebx, 128(%esp)
	movl	120(%esp), %ebx
	addl	%ebx, %esi
	movl	%esi, 240(%esp)
	movl	%esi, 268(%esp)
	movl	176(%esp), %esi
	addl	%edx, %esi
	movl	192(%esp), %edx
	movl	%esi, 116(%esp)
	addl	%ebx, %edx
	movl	104(%esp), %ebx
	movl	%edx, 192(%esp)
	negl	%ebx
	movl	%edx, 264(%esp)
	movl	%ecx, %edx
	movl	%ebx, %esi
/APP
 # 5608 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx
 # 0 "" 2
/NO_APP
	testl	%edx, %edx
	js	L316
	movl	240(%esp), %esi
	movl	128(%esp), %eax
	movl	%edi, %ecx
	movl	192(%esp), %edx
	movl	112(%esp), %edi
	movl	%esi, 264(%esp)
	movl	116(%esp), %esi
	movl	%edx, 268(%esp)
	movl	%edi, 168(%esp)
	movl	%esi, 128(%esp)
	movl	%eax, 116(%esp)
L316:
	movl	__ZL12smostwallcnt.lto_priv.0, %edi
	subl	$1, %edi
	js	L317
	movl	168(%esp), %eax
	cmpl	%ecx, %eax
	movl	%eax, %ebx
	cmovl	%ecx, %ebx
	cmovle	%eax, %ecx
	movl	%ebx, 176(%esp)
	movl	%ecx, 120(%esp)
	movl	%edi, %ecx
	jmp	L349
	.p2align 4,,10
	.p2align 3
L959:
	movswl	_thewall(%eax,%eax), %eax
	movl	_wall, %edx
	sall	$5, %eax
	leal	(%edx,%eax), %esi
	movl	4(%esi), %eax
	movl	(%esi), %edi
	movl	%esi, 104(%esp)
	movl	%eax, 240(%esp)
	movswl	8(%esi), %eax
	movl	%edi, 188(%esp)
	sall	$5, %eax
	addl	%eax, %edx
	movl	240(%esp), %eax
	movl	(%edx), %esi
	movl	4(%edx), %edx
	movl	%esi, 96(%esp)
	subl	%edi, %esi
	movl	268(%esp), %edi
	movl	%edx, 92(%esp)
	subl	%eax, %edx
	movl	%edi, 108(%esp)
	subl	%eax, %edi
	movl	%edi, %eax
	movl	128(%esp), %edi
	movl	%edx, 168(%esp)
	imull	%esi, %eax
	movl	%esi, 88(%esp)
	movl	%eax, 160(%esp)
	movl	188(%esp), %eax
	subl	%eax, %edi
	imull	%edx, %edi
	movl	%edi, 132(%esp)
	movl	264(%esp), %edi
	movl	%edi, 100(%esp)
	subl	240(%esp), %edi
	imull	%esi, %edi
	movl	%edi, 124(%esp)
	movl	116(%esp), %edi
	subl	%eax, %edi
	movl	168(%esp), %eax
	imull	%edi, %eax
	movl	%eax, 112(%esp)
	movl	160(%esp), %eax
	subl	132(%esp), %eax
	movl	%eax, 132(%esp)
	sete	%al
	movl	124(%esp), %edx
	movl	%eax, %edi
	subl	112(%esp), %edx
	movl	%edx, 124(%esp)
	sete	%al
	movl	%edi, %edx
	orb	%al, %dl
	movb	%dl, 160(%esp)
	je	L322
	movl	248(%esp), %eax
	movl	4(%eax), %edi
	movl	%edi, %edx
	subl	240(%esp), %edx
	movl	%edi, 112(%esp)
	imull	%esi, %edx
	movl	(%eax), %esi
	movl	168(%esp), %eax
	movl	%esi, %edi
	subl	188(%esp), %edi
	movl	%esi, 240(%esp)
	imull	%edi, %eax
	movl	132(%esp), %edi
	addl	124(%esp), %edi
	cmpl	%eax, %edx
	je	L957
L324:
	movb	$1, 160(%esp)
	testl	%edi, %edi
	js	L321
	.p2align 5
	.p2align 4
	.p2align 3
L319:
	subl	$1, %ecx
	jb	L958
L349:
	movl	__ZL9smostwall.lto_priv.0(,%ecx,4), %eax
	movl	_xb1(,%eax,4), %ebx
	cmpl	%ebx, 224(%esp)
	jl	L319
	movl	__ZL3xb2.lto_priv.0(,%eax,4), %edi
	movl	%edi, 192(%esp)
	testl	%edi, %edi
	js	L319
	movl	__ZL3yb2.lto_priv.0(,%eax,4), %edx
	movl	__ZL3yb1.lto_priv.0(,%eax,4), %edi
	cmpl	%edi, %edx
	movl	%edi, %esi
	movl	%edx, 240(%esp)
	cmovle	%edx, %esi
	cmpl	176(%esp), %esi
	jge	L319
	movl	240(%esp), %edx
	cmpl	%edi, %edx
	cmovl	%edi, %edx
	cmpl	120(%esp), %edx
	jge	L959
L321:
	movl	224(%esp), %esi
	movl	192(%esp), %edx
	xorl	%eax, %eax
	testl	%ebx, %ebx
	cmovns	%ebx, %eax
	cmpl	%edx, %esi
	cmovg	%edx, %esi
	movl	%eax, %edi
	movzbl	__ZL13smostwalltype.lto_priv.0(%ecx), %eax
	movl	%esi, 240(%esp)
	cmpb	$1, %al
	je	L330
	cmpb	$2, %al
	je	L331
	testb	%al, %al
	jne	L319
	cmpl	%esi, %edi
	jg	L319
	testl	%ebx, %ebx
	jg	L705
	cmpl	%edx, 224(%esp)
	jle	L916
L705:
	movl	240(%esp), %edx
	addl	$1, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L334:
	movl	__ZL5swall.lto_priv.0, %eax
	movl	$0, (%eax,%edi,4)
	addl	$1, %edi
	cmpl	%edx, %edi
	jne	L334
	jmp	L319
L308:
	call	_settransnormal
	jmp	L305
L322:
	movl	132(%esp), %eax
	movl	124(%esp), %edx
	movl	%eax, %edi
	xorl	%edx, %edi
	leal	(%eax,%edx), %edi
	jns	L324
	movl	108(%esp), %esi
	movl	100(%esp), %edx
	movl	240(%esp), %eax
	movl	116(%esp), %edi
	subl	%esi, %edx
	subl	128(%esp), %edi
	subl	%esi, %eax
	movl	%edx, 160(%esp)
	movl	188(%esp), %edx
	imull	%edi, %eax
	subl	128(%esp), %edx
	imull	160(%esp), %edx
	movl	%eax, %esi
	movl	160(%esp), %eax
	movl	%edx, 132(%esp)
	movl	92(%esp), %edx
	subl	108(%esp), %edx
	imull	%edx, %edi
	movl	96(%esp), %edx
	subl	128(%esp), %edx
	imull	%edx, %eax
	subl	132(%esp), %esi
	sete	%dl
	movl	%esi, 132(%esp)
	subl	%eax, %edi
	sete	%al
	movl	%edi, 124(%esp)
	orb	%dl, %al
	jne	L704
	xorl	%edi, %esi
	jns	L704
	movl	248(%esp), %edi
	movl	88(%esp), %edx
	movl	4(%edi), %eax
	movl	%eax, 160(%esp)
	subl	240(%esp), %eax
	imull	%eax, %edx
	movl	(%edi), %eax
	movl	%eax, 240(%esp)
	subl	188(%esp), %eax
	imull	168(%esp), %eax
	cmpl	%eax, %edx
	je	L328
L329:
	movb	$1, 160(%esp)
	jmp	L319
L283:
	cmpw	$0, 224(%esp)
	jne	L287
	xorps	%xmm1, %xmm1
	comiss	%xmm1, %xmm0
	ja	L286
L287:
	movw	%ax, 236(%esp)
	jmp	L285
L284:
	xorps	%xmm1, %xmm1
	comiss	%xmm1, %xmm0
	ja	L286
	movswl	236(%esp), %eax
	movl	%eax, 200(%esp)
	jmp	L285
L536:
	imull	_yxaspect
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%ebx, 152(%esp)
	movl	$1, %ecx
	movl	%eax, _ryi
	jmp	L538
L958:
	cmpb	$0, 160(%esp)
	je	L317
	movl	124(%esp), %eax
	movl	%eax, 256(%esp)
	movl	132(%esp), %eax
	movl	%eax, 260(%esp)
	jmp	L317
L330:
	movl	__ZL10smoststart.lto_priv.0(,%ecx,4), %eax
	movl	240(%esp), %esi
	subl	%ebx, %eax
	movl	%eax, 188(%esp)
	movl	%eax, %ebx
	leal	-1(%esi), %eax
	cmpl	%eax, %edi
	jge	L335
	subl	$2, %esi
	addl	%edi, %ebx
	movl	%ecx, 112(%esp)
	leal	0(,%edi,4), %edx
	subl	%edi, %esi
	leal	(%ebx,%ebx), %eax
	movl	%edi, 108(%esp)
	movl	%esi, 168(%esp)
	andl	$-2, %esi
	leal	2(%ebx,%esi), %ebx
	addl	%ebx, %ebx
	movl	%ebx, 192(%esp)
	.p2align 4
	.p2align 3
L338:
	movl	__ZL5smost.lto_priv.0, %ebx
	movswl	(%ebx,%eax), %ecx
	movl	%ecx, %esi
	movl	__ZL5lwall.lto_priv.0, %ecx
	cmpl	(%ecx,%edx), %esi
	jle	L336
	movl	%esi, (%ecx,%edx)
	movl	__ZL5smost.lto_priv.0, %ebx
	movl	__ZL5lwall.lto_priv.0, %ecx
L336:
	movswl	2(%ebx,%eax), %ebx
	cmpl	4(%ecx,%edx), %ebx
	jle	L337
	movl	%ebx, 4(%ecx,%edx)
L337:
	addl	$4, %eax
	addl	$8, %edx
	cmpl	%eax, 192(%esp)
	jne	L338
	movl	168(%esp), %eax
	movl	108(%esp), %edi
	movl	112(%esp), %ecx
	andl	$-2, %eax
	leal	2(%edi,%eax), %edi
L335:
	cmpl	%edi, 240(%esp)
	jl	L319
	movl	188(%esp), %ebx
L340:
	movl	__ZL5smost.lto_priv.0, %eax
	leal	(%edi,%ebx), %edx
	movswl	(%eax,%edx,2), %edx
	movl	__ZL5lwall.lto_priv.0, %eax
	cmpl	(%eax,%edi,4), %edx
	jle	L339
	movl	%edx, (%eax,%edi,4)
L339:
	addl	$1, %edi
	cmpl	240(%esp), %edi
	jle	L340
	jmp	L319
L953:
	movl	%eax, %esi
	movl	%edx, %edi
	subl	200(%esp), %esi
	sbbl	204(%esp), %edi
	shldl	$30, %eax, %edx
	sall	$30, %eax
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, %edi
	movl	192(%esp), %eax
	movl	%edx, %esi
	movl	%edi, 188(%esp)
	movl	_rxi(,%eax,4), %ecx
	subl	_rxi-4(,%ebx,4), %ecx
	movl	%ecx, %eax
	cltd
	movl	%esi, %eax
	imull	%edi, %edx
	imull	%ecx, %eax
	addl	%edx, %eax
	movl	%eax, 184(%esp)
	movl	%edi, %eax
	mull	%ecx
	movl	240(%esp), %ecx
	addl	184(%esp), %edx
	shrdl	$30, %edx, %eax
	addl	_rxi-4(,%ebx,4), %eax
	movl	%eax, __ZL4rxi2(,%ecx,4)
	movl	192(%esp), %eax
	movl	_ryi(,%eax,4), %edx
	subl	_ryi-4(,%ebx,4), %edx
	movl	%edx, %eax
	movl	%edx, %ecx
	cltd
	movl	188(%esp), %eax
	imull	%edi, %edx
	movl	%esi, %edi
	imull	%ecx, %edi
	addl	%edx, %edi
	mull	%ecx
	movl	240(%esp), %ecx
	addl	%edi, %edx
	movl	188(%esp), %edi
	shrdl	$30, %edx, %eax
	addl	_ryi-4(,%ebx,4), %eax
	movl	%eax, __ZL4ryi2(,%ecx,4)
	movl	192(%esp), %eax
	movl	__ZL3rzi(,%eax,4), %ecx
	subl	__ZL3rzi-4(,%ebx,4), %ecx
	movl	%ecx, %eax
	imull	%ecx, %esi
	cltd
	movl	188(%esp), %eax
	imull	%edx, %edi
	mull	%ecx
	movl	240(%esp), %ecx
	addl	%esi, %edi
	addl	%edi, %edx
	shrdl	$30, %edx, %eax
	addl	__ZL3rzi-4(,%ebx,4), %eax
	movl	%eax, __ZL4rzi2(,%ecx,4)
	addl	$1, %ecx
	movl	%ecx, 240(%esp)
	jmp	L550
L331:
	movl	__ZL10smoststart.lto_priv.0(,%ecx,4), %eax
	movl	240(%esp), %esi
	subl	%ebx, %eax
	movl	%eax, 188(%esp)
	movl	%eax, %ebx
	leal	-3(%esi), %eax
	cmpl	%eax, %edi
	jge	L341
	subl	$4, %esi
	leal	(%ebx,%edi), %edx
	movl	%ecx, 112(%esp)
	leal	0(,%edi,4), %ebx
	subl	%edi, %esi
	leal	(%edx,%edx), %eax
	movl	%edi, 108(%esp)
	movl	%esi, 168(%esp)
	andl	$-4, %esi
	leal	4(%edx,%esi), %edx
	addl	%edx, %edx
	movl	%edx, 192(%esp)
	.p2align 4
	.p2align 3
L346:
	movl	__ZL5smost.lto_priv.0, %ecx
	movl	__ZL5swall.lto_priv.0, %edx
	movswl	(%ecx,%eax), %edi
	cmpl	(%edx,%ebx), %edi
	jge	L342
	movl	%edi, (%edx,%ebx)
	movl	__ZL5smost.lto_priv.0, %ecx
	movl	__ZL5swall.lto_priv.0, %edx
L342:
	movswl	2(%ecx,%eax), %edi
	cmpl	4(%edx,%ebx), %edi
	jge	L343
	movl	%edi, 4(%edx,%ebx)
	movl	__ZL5smost.lto_priv.0, %ecx
	movl	__ZL5swall.lto_priv.0, %edx
L343:
	movswl	4(%ecx,%eax), %edi
	cmpl	8(%edx,%ebx), %edi
	jge	L344
	movl	%edi, 8(%edx,%ebx)
	movl	__ZL5smost.lto_priv.0, %ecx
	movl	__ZL5swall.lto_priv.0, %edx
L344:
	movswl	6(%ecx,%eax), %ecx
	cmpl	12(%edx,%ebx), %ecx
	jge	L345
	movl	%ecx, 12(%edx,%ebx)
L345:
	addl	$8, %eax
	addl	$16, %ebx
	cmpl	%eax, 192(%esp)
	jne	L346
	movl	168(%esp), %eax
	movl	108(%esp), %edi
	movl	112(%esp), %ecx
	andl	$-4, %eax
	leal	4(%edi,%eax), %edi
L341:
	movl	240(%esp), %ebx
	cmpl	%edi, %ebx
	jl	L319
	movl	188(%esp), %eax
	movl	%ecx, %esi
	leal	4(,%ebx,4), %ecx
	addl	%edi, %eax
	sall	$2, %edi
	addl	%eax, %eax
L348:
	movl	__ZL5smost.lto_priv.0, %edx
	movswl	(%edx,%eax), %ebx
	movl	__ZL5swall.lto_priv.0, %edx
	addl	%edi, %edx
	cmpl	(%edx), %ebx
	jge	L347
	movl	%ebx, (%edx)
L347:
	addl	$4, %edi
	addl	$2, %eax
	cmpl	%edi, %ecx
	jne	L348
	movl	%esi, %ecx
	jmp	L319
L902:
	movl	%edi, %eax
	andw	$-513, %di
	orl	$2, %eax
	orl	$2, %edi
	andl	$65023, %eax
	movl	%eax, 216(%esp)
	jmp	L296
L954:
	cmpl	$2, 240(%esp)
	jle	L916
	movl	__ZL4rxi2, %eax
	subl	__ZL4rzi2, %eax
	xorl	%ebx, %ebx
	movl	$0, 200(%esp)
	cltd
	jmp	L555
	.p2align 4,,10
	.p2align 3
L554:
	cmpl	%ebx, 240(%esp)
	je	L960
	movl	192(%esp), %eax
	movl	196(%esp), %edx
L555:
	addl	$1, %ebx
	xorl	%edi, %edi
	cmpl	%ebx, 240(%esp)
	cmovne	%ebx, %edi
	movl	__ZL4rxi2(,%edi,4), %ecx
	subl	__ZL4rzi2(,%edi,4), %ecx
	movl	%edi, 188(%esp)
	movl	%ecx, 192(%esp)
	sarl	$31, %ecx
	movl	%ecx, 196(%esp)
	xorl	%ecx, %ecx
	cmpl	%eax, %ecx
	sbbl	%edx, %ecx
	jl	L553
	movl	200(%esp), %edi
	movl	__ZL4rxi2-4(,%ebx,4), %ecx
	movl	%ecx, _rxi(,%edi,4)
	movl	__ZL4ryi2-4(,%ebx,4), %ecx
	movl	%ecx, _ryi(,%edi,4)
	movl	__ZL4rzi2-4(,%ebx,4), %ecx
	movl	%ecx, __ZL3rzi(,%edi,4)
	addl	$1, %edi
	movl	%edi, 200(%esp)
L553:
	movl	196(%esp), %edi
	xorl	%edx, %edi
	jns	L554
	movl	%eax, %esi
	movl	%edx, %edi
	subl	192(%esp), %esi
	sbbl	196(%esp), %edi
	shldl	$30, %eax, %edx
	sall	$30, %eax
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, %edi
	movl	188(%esp), %eax
	movl	%edx, %esi
	movl	%edi, 184(%esp)
	movl	__ZL4rxi2(,%eax,4), %ecx
	subl	__ZL4rxi2-4(,%ebx,4), %ecx
	movl	%ecx, %eax
	cltd
	movl	%esi, %eax
	imull	%edi, %edx
	imull	%ecx, %eax
	addl	%edx, %eax
	movl	%eax, 176(%esp)
	movl	%edi, %eax
	mull	%ecx
	movl	200(%esp), %ecx
	addl	176(%esp), %edx
	shrdl	$30, %edx, %eax
	addl	__ZL4rxi2-4(,%ebx,4), %eax
	movl	%eax, _rxi(,%ecx,4)
	movl	188(%esp), %eax
	movl	__ZL4ryi2(,%eax,4), %edx
	subl	__ZL4ryi2-4(,%ebx,4), %edx
	movl	%edx, %eax
	movl	%edx, %ecx
	cltd
	movl	184(%esp), %eax
	imull	%edi, %edx
	movl	%esi, %edi
	imull	%ecx, %edi
	addl	%edx, %edi
	mull	%ecx
	movl	200(%esp), %ecx
	addl	%edi, %edx
	movl	184(%esp), %edi
	shrdl	$30, %edx, %eax
	addl	__ZL4ryi2-4(,%ebx,4), %eax
	movl	%eax, _ryi(,%ecx,4)
	movl	188(%esp), %eax
	movl	__ZL4rzi2(,%eax,4), %ecx
	subl	__ZL4rzi2-4(,%ebx,4), %ecx
	movl	%ecx, %eax
	imull	%ecx, %esi
	cltd
	movl	184(%esp), %eax
	imull	%edx, %edi
	mull	%ecx
	movl	200(%esp), %ecx
	addl	%esi, %edi
	addl	%edi, %edx
	shrdl	$30, %edx, %eax
	addl	__ZL4rzi2-4(,%ebx,4), %eax
	movl	%eax, __ZL3rzi(,%ecx,4)
	addl	$1, %ecx
	movl	%ecx, 200(%esp)
	jmp	L554
L293:
	testl	%eax, %eax
	je	L296
	movl	%edi, %ecx
	andw	$-513, %di
	orl	$2, %ecx
	orl	$2, %edi
	andl	$65023, %ecx
	movl	%ecx, 216(%esp)
	jmp	L294
L948:
	movl	136(%esp), %eax
	sall	$16, %eax
	movl	%eax, 176(%esp)
	movl	%ebx, %eax
	sall	$16, %eax
	movl	%eax, 188(%esp)
	jmp	L378
L951:
	movl	200(%esp), %eax
	movl	152(%esp), %edi
	movswl	_tilesiz(,%eax,4), %ebx
	movl	248(%esp), %eax
	movzbl	20(%eax), %edx
	movzwl	28(%eax), %eax
	movl	%eax, %ecx
	addl	$1536, %eax
	andl	$2047, %ecx
	andl	$2047, %eax
	movswl	_sintable(%ecx,%ecx), %ecx
	imull	%edx, %ecx
	movl	%ecx, 224(%esp)
	movswl	_sintable(%eax,%eax), %ecx
	imull	%edx, %ecx
	movl	%edi, %edx
	negl	%edx
	movl	%edx, %eax
	movl	216(%esp), %edx
	andl	$4, %edx
	movl	%edx, 116(%esp)
	movl	%eax, %edx
	cmove	%edi, %edx
	movl	148(%esp), %edi
	movl	%edx, 152(%esp)
	movl	%edi, %edx
	negl	%edx
	movl	%edx, %eax
	movl	184(%esp), %edx
	movl	%eax, %esi
	movl	188(%esp), %eax
	testl	%edx, %edx
	movl	152(%esp), %edx
	cmove	%edi, %esi
	movl	%ebx, %edi
	sarl	%edi
	movl	%esi, 148(%esp)
	movl	%ebx, %esi
	movl	248(%esp), %ebx
	addl	%edi, %edx
	movl	%edx, 208(%esp)
	movl	(%ebx), %edi
	subl	%eax, %edi
	movl	224(%esp), %eax
/APP
 # 6122 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	%edi, %eax
	movl	%esi, 168(%esp)
	movl	%esi, %edx
	subl	%ebx, %eax
	movl	%eax, 192(%esp)
	movl	224(%esp), %eax
/APP
 # 6122 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	192(%esp), %esi
	movl	208(%esp), %edx
	addl	%esi, %eax
	movl	%eax, 176(%esp)
	movl	%ecx, %eax
/APP
 # 6123 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	248(%esp), %esi
	movl	4(%esi), %edx
	movl	240(%esp), %esi
	subl	%esi, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	movl	%edx, %esi
	movl	168(%esp), %edx
/APP
 # 6123 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	leal	(%esi,%eax), %ecx
	subl	%edi, %ebx
	movl	%esi, 224(%esp)
	movl	%esi, %eax
	movl	%ecx, 208(%esp)
	movl	_cosglobalang, %edx
	movl	%ebx, %esi
	movl	_singlobalang, %edi
/APP
 # 1708 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_cosviewingrangeglobalang, %edx
	movl	%eax, 128(%esp)
	movl	%eax, 160(%esp)
	movl	224(%esp), %esi
	movl	192(%esp), %eax
	movl	_sinviewingrangeglobalang, %edi
/APP
 # 1709 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	176(%esp), %ebx
	movl	%eax, 164(%esp)
	movl	%eax, %ecx
	movl	_cosglobalang, %edx
	movl	208(%esp), %eax
	negl	%ebx
	movl	_singlobalang, %edi
	movl	%ebx, %esi
/APP
 # 1708 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_cosviewingrangeglobalang, %edx
	movl	%eax, 124(%esp)
	movl	%eax, 132(%esp)
	movl	208(%esp), %esi
	movl	176(%esp), %eax
	movl	_sinviewingrangeglobalang, %edi
/APP
 # 1709 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 120(%esp)
	movl	%eax, 156(%esp)
	testl	%ecx, %ecx
	jg	L708
	testl	%eax, %eax
	jle	L916
L708:
	movl	200(%esp), %eax
	movl	188(%esp), %edx
	movl	176(%esp), %edi
	movl	240(%esp), %esi
	movzwl	_tilesiz+2(,%eax,4), %eax
	movl	224(%esp), %ebx
	addl	%edx, %edi
	movw	%ax, 112(%esp)
	movl	192(%esp), %eax
	addl	%esi, %ebx
	movl	%edi, 136(%esp)
	movl	%ecx, %edi
	addl	%edx, %eax
	movl	208(%esp), %edx
	movl	%ebx, 240(%esp)
	movl	%eax, 152(%esp)
	movl	128(%esp), %eax
	addl	%esi, %edx
	movl	124(%esp), %esi
	movl	%ebx, 268(%esp)
	movl	%edx, 224(%esp)
	movl	%edx, 264(%esp)
	negl	%esi
	movl	120(%esp), %edx
/APP
 # 6135 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx
 # 0 "" 2
/NO_APP
	testl	%edx, %edx
	js	L680
	testb	$64, 216(%esp)
	jne	L916
	movl	224(%esp), %esi
	movl	240(%esp), %ebx
	movl	%ecx, 156(%esp)
	movl	152(%esp), %eax
	movl	136(%esp), %edi
	movl	$1, 108(%esp)
	movl	%esi, 268(%esp)
	movl	120(%esp), %edx
	movl	%ebx, 264(%esp)
	movl	124(%esp), %esi
	movl	128(%esp), %ebx
	movl	%edx, 164(%esp)
	movl	%esi, 160(%esp)
	movl	%ebx, 132(%esp)
	movl	%edi, 152(%esp)
	movl	%eax, 136(%esp)
L467:
	movl	160(%esp), %eax
	leal	272(%esp), %ebx
	leal	284(%esp), %ecx
	movl	%ebx, 8(%esp)
	leal	280(%esp), %ebx
	leal	288(%esp), %edx
	movl	%eax, 296(%esp)
	movl	164(%esp), %eax
	movl	%ebx, 4(%esp)
	leal	276(%esp), %ebx
	movl	%eax, 300(%esp)
	movl	132(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 288(%esp)
	movl	156(%esp), %eax
	movl	%eax, 292(%esp)
	leal	296(%esp), %eax
	call	__ZL17get_screen_coordsRK4vec2IiES2_PiS3_S3_S3_.lto_priv.0
	testl	%eax, %eax
	je	L916
	movswl	112(%esp), %eax
	movl	$0, 120(%esp)
	movl	%eax, 104(%esp)
	movl	200(%esp), %eax
	call	__Z12tileLoadHighi
	movl	%eax, __ZL8globalht.lto_priv.0
	testl	%eax, %eax
	je	L468
	movl	4(%eax), %ebx
	movzwl	4(%eax), %eax
	movl	%ebx, 120(%esp)
	movw	%ax, 112(%esp)
L469:
	movzbl	112(%esp), %ecx
	movl	168(%esp), %eax
	sall	%cl, %eax
	movl	%eax, 124(%esp)
	movl	284(%esp), %eax
	movl	%eax, 128(%esp)
	movl	%eax, %edi
	movl	160(%esp), %eax
	imull	_xdimen
	subl	_halfxdimen, %edi
	movl	%eax, %ecx
	movl	164(%esp), %eax
	movl	%edx, %ebx
	shrdl	$10, %edx, %ecx
	sarl	$10, %ebx
	imull	%edi
	shrdl	$9, %edx, %eax
	sarl	$9, %edx
	subl	%eax, %ecx
	movl	%ecx, 240(%esp)
	movl	124(%esp), %ecx
	sbbl	%edx, %ebx
	movl	%ebx, 244(%esp)
	movl	244(%esp), %ebx
	movl	%ecx, %esi
	movl	%ecx, %eax
	sarl	$31, %esi
	imull	%ecx, %ebx
	movl	%esi, %edx
	movl	240(%esp), %esi
	imull	%esi, %edx
	addl	%edx, %ebx
	mull	%esi
	addl	%ebx, %edx
	movl	%eax, %ebx
	movl	164(%esp), %eax
	shrdl	$3, %edx, %ebx
	movl	%edx, %esi
	movl	156(%esp), %edx
	sarl	$3, %esi
	movl	%ebx, 224(%esp)
	movl	132(%esp), %ebx
	subl	%eax, %edx
	movl	%esi, 228(%esp)
	sarl	$8, %edx
	movl	%edx, %esi
	movl	%edx, 176(%esp)
	sarl	$31, %edx
	movl	%edx, 180(%esp)
	movl	160(%esp), %edx
	subl	%ebx, %edx
	movl	%edx, %eax
	imull	_xdimen
	movl	%eax, %ecx
	movl	%esi, %eax
	movl	%edx, %ebx
	movl	224(%esp), %esi
	shrdl	$11, %edx, %ecx
	imull	%edi
	sarl	$11, %ebx
	movl	228(%esp), %edi
	shrdl	$2, %edx, %eax
	sarl	$2, %edx
	addl	%eax, %ecx
	adcl	%edx, %ebx
	movl	280(%esp), %edx
	shldl	$10, %esi, %edi
	movl	%ecx, 8(%esp)
	sall	$10, %esi
	movl	%ecx, 240(%esp)
	movl	%edx, 236(%esp)
	addl	$3, %edx
	movl	%ebx, 244(%esp)
	movl	%edx, 188(%esp)
	movl	%ebx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	128(%esp), %ecx
	movl	%eax, %edi
	leal	0(,%ecx,4), %ebx
	movl	%ebx, 100(%esp)
	movl	%eax, %ebx
	movl	__ZL5lwall.lto_priv.0, %eax
	sarl	$8, %ebx
	movl	%ebx, (%eax,%ecx,4)
	addl	$4, %ecx
	movl	%ecx, 192(%esp)
	movl	%ecx, %ebx
	cmpl	%ecx, 188(%esp)
	jl	L471
	movl	164(%esp), %eax
	imull	124(%esp)
	shrdl	$10, %edx, %eax
	sarl	$10, %edx
	movl	%eax, 208(%esp)
	negl	%eax
	movl	%edx, 212(%esp)
	adcl	$0, %edx
	negl	%edx
	movl	%edx, %ecx
	movl	%eax, %edx
	sall	$10, %edx
	shldl	$10, %eax, %ecx
	movl	224(%esp), %eax
	subl	208(%esp), %eax
	movl	%edx, 168(%esp)
	movl	228(%esp), %edx
	sbbl	212(%esp), %edx
	movl	%ecx, 172(%esp)
	shldl	$10, %eax, %edx
	sall	$10, %eax
	movl	%edi, 208(%esp)
	movl	%eax, 224(%esp)
	movl	%edx, 228(%esp)
	.p2align 4
	.p2align 3
L472:
	movl	176(%esp), %esi
	movl	180(%esp), %edi
	addl	%esi, 240(%esp)
	movl	240(%esp), %eax
	adcl	%edi, 244(%esp)
	movl	244(%esp), %edx
	movl	%eax, 8(%esp)
	movl	224(%esp), %eax
	movl	%edx, 12(%esp)
	movl	228(%esp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	208(%esp), %edx
	movl	%eax, %esi
	movl	%eax, 208(%esp)
	leal	(%eax,%edx), %ecx
	movl	%ecx, %edi
	sarl	$9, %ecx
	sarl	%edi
	addl	%edi, %edx
	movl	%edi, %eax
	movl	__ZL5lwall.lto_priv.0, %edi
	sarl	$9, %edx
	addl	%esi, %eax
	movl	%edx, -12(%edi,%ebx,4)
	movl	__ZL5lwall.lto_priv.0, %edx
	sarl	$9, %eax
	movl	%esi, %edi
	sarl	$8, %edi
	movl	168(%esp), %esi
	movl	%ecx, -8(%edx,%ebx,4)
	movl	__ZL5lwall.lto_priv.0, %edx
	movl	%eax, -4(%edx,%ebx,4)
	movl	__ZL5lwall.lto_priv.0, %eax
	movl	%edi, (%eax,%ebx,4)
	movl	172(%esp), %edi
	addl	$4, %ebx
	addl	%esi, 224(%esp)
	adcl	%edi, 228(%esp)
	cmpl	%ebx, 188(%esp)
	jge	L472
L471:
	movl	__ZL5lwall.lto_priv.0, %eax
	movl	100(%esp), %ebx
	leal	(%eax,%ebx), %edx
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	jns	L473
	xorl	%edi, %edi
	movl	%edi, (%edx)
	movl	__ZL5lwall.lto_priv.0, %eax
L473:
	movl	236(%esp), %ebx
	leal	(%eax,%ebx,4), %eax
	movl	124(%esp), %ebx
	cmpl	(%eax), %ebx
	jg	L474
	leal	-1(%ebx), %edx
	movl	%edx, (%eax)
L474:
	movl	116(%esp), %eax
	movl	108(%esp), %ebx
	shrl	$2, %eax
	cmpl	%ebx, %eax
	jne	L961
L475:
	movl	160(%esp), %eax
	movl	120(%esp), %ecx
	movw	112(%esp), %cx
	movl	144(%esp), %esi
	movl	%eax, _rx1+32764
	movl	164(%esp), %eax
	movl	%ecx, 120(%esp)
	movl	%eax, _ry1+32764
	movl	132(%esp), %eax
	movl	%eax, __ZL3rx2.lto_priv.0+32764
	movl	156(%esp), %eax
	movl	%eax, __ZL3ry2.lto_priv.0+32764
	movl	248(%esp), %eax
	movzbl	32(%esi), %edi
	movl	8(%eax), %ebx
	movswl	30(%eax), %ecx
	movzbl	21(%eax), %edx
	movl	120(%esp), %eax
	movl	%eax, 28(%esp)
	leal	256(%esp), %eax
	movl	%eax, 24(%esp)
	leal	260(%esp), %eax
	movl	%eax, 20(%esp)
	movl	216(%esp), %eax
	movl	%eax, 16(%esp)
	movl	200(%esp), %eax
	movl	%eax, 12(%esp)
	movl	148(%esp), %eax
	movl	%eax, 8(%esp)
	movl	104(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%edi, %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__ZL21setup_globals_sprite1P11tspritetypePK13usectortypev7iiiiPiS4_4vec2IsE.isra.0
	testb	$1, 12(%esi)
	jne	L477
	movl	4(%esi), %eax
	cmpl	260(%esp), %eax
	jle	L477
	movl	%eax, 260(%esp)
L477:
	movl	144(%esp), %eax
	testb	$1, 14(%eax)
	jne	L478
	movl	8(%eax), %eax
	cmpl	256(%esp), %eax
	jge	L478
	movl	%eax, 256(%esp)
L478:
	movl	128(%esp), %eax
	movl	276(%esp), %edi
	movl	$8191, %edx
	movl	272(%esp), %esi
	movl	236(%esp), %ebx
	movl	%eax, _xb1+32764
	movl	260(%esp), %eax
	subl	_globalposz, %eax
	movl	%ebx, __ZL3xb2.lto_priv.0+32764
	movl	%edi, __ZL3yb1.lto_priv.0+32764
	movl	%esi, __ZL3yb2.lto_priv.0+32764
	movl	%eax, (%esp)
	sarl	$31, %eax
	movl	%eax, 4(%esp)
	movl	__ZL5uwall.lto_priv.0, %eax
	movl	%edi, 200(%esp)
	movl	%esi, 188(%esp)
	call	__ZL9owallmostPsix.lto_priv.0
	movl	256(%esp), %eax
	movl	$8191, %edx
	subl	_globalposz, %eax
	movl	%eax, (%esp)
	sarl	$31, %eax
	movl	%eax, 4(%esp)
	movl	__ZL5dwall.lto_priv.0, %eax
	call	__ZL9owallmostPsix.lto_priv.0
	movl	%edi, 8(%esp)
	sarl	$31, %edi
	movl	%edi, 12(%esp)
	movl	_xdimenscale, %eax
	cltd
	shldl	$19, %eax, %edx
	sall	$19, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%esi, 8(%esp)
	sarl	$31, %esi
	movl	%esi, 12(%esp)
	movl	%eax, %edi
	movl	_xdimenscale, %eax
	cltd
	shldl	$19, %eax, %edx
	sall	$19, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	128(%esp), %ecx
	subl	%ecx, %ebx
	movl	%ebx, 208(%esp)
	jne	L962
	movl	$0, 224(%esp)
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	movl	$0, 240(%esp)
L479:
	movl	184(%esp), %eax
	xorps	%xmm1, %xmm1
	movl	$LC0, %ecx
	xorps	%xmm2, %xmm2
	movss	LC8, %xmm0
	mulss	_fxdimen, %xmm0
	cvtsi2ssl	_yxaspect, %xmm1
	movss	LC9, %xmm3
	testl	%eax, %eax
	movl	$LC2, %eax
	cvtsi2ssl	200(%esp), %xmm2
	cmove	%ecx, %eax
	movl	104(%esp), %ecx
	mulss	%xmm1, %xmm0
	movss	(%eax), %xmm1
	movl	248(%esp), %eax
	mulss	LC10, %xmm1
	movzbl	21(%eax), %eax
	imull	%ecx, %eax
	mulss	%xmm0, %xmm3
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movl	208(%esp), %eax
	divss	%xmm0, %xmm1
	movaps	%xmm3, %xmm0
	divss	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	testl	%eax, %eax
	je	L488
	xorps	%xmm4, %xmm4
	movaps	%xmm3, %xmm2
	xorps	%xmm3, %xmm3
	cvtsi2ssl	188(%esp), %xmm4
	cvtsi2ssl	208(%esp), %xmm3
	divss	%xmm4, %xmm2
	subss	%xmm0, %xmm2
	divss	%xmm3, %xmm2
L488:
	movl	236(%esp), %eax
	subl	$3, %eax
	cmpl	%eax, 128(%esp)
	jge	L489
	movss	LC11, %xmm6
	movaps	%xmm2, %xmm7
	movss	LC12, %xmm5
	movl	%edx, 208(%esp)
	addss	%xmm2, %xmm7
	movl	%ebx, 236(%esp)
	movl	100(%esp), %edx
	mulss	%xmm2, %xmm6
	mulss	%xmm2, %xmm5
	jmp	L490
	.p2align 4,,10
	.p2align 3
L963:
	leal	4(%esi), %eax
	movl	%eax, 192(%esp)
L490:
	movl	%edi, %eax
/APP
 # 6230 "source/build/src/engine.cpp" 1
	movl %eax, (_fpuasm); fildl (_fpuasm); addl %eax, %eax; fstps (_fpuasm); sbbl %ebx, %ebx; movl (_fpuasm), %eax; movl %eax, %ecx; andl $0x007ff000, %eax; shrl $10, %eax; subl $0x3f800000, %ecx; shrl $23, %ecx; movl _reciptable(%eax), %eax; sarl %cl, %eax; xorl %ebx, %eax
 # 0 "" 2
/NO_APP
	movl	__ZL5swall.lto_priv.0, %ecx
	sall	$2, %eax
	movl	%eax, (%ecx,%edx)
	movl	208(%esp), %eax
	addl	%edi, %eax
/APP
 # 6231 "source/build/src/engine.cpp" 1
	movl %eax, (_fpuasm); fildl (_fpuasm); addl %eax, %eax; fstps (_fpuasm); sbbl %ebx, %ebx; movl (_fpuasm), %eax; movl %eax, %ecx; andl $0x007ff000, %eax; shrl $10, %eax; subl $0x3f800000, %ecx; shrl $23, %ecx; movl _reciptable(%eax), %eax; sarl %cl, %eax; xorl %ebx, %eax
 # 0 "" 2
/NO_APP
	movl	__ZL5swall.lto_priv.0, %ecx
	sall	$2, %eax
	movl	%eax, 4(%ecx,%edx)
	movl	240(%esp), %eax
	addl	%edi, %eax
/APP
 # 6232 "source/build/src/engine.cpp" 1
	movl %eax, (_fpuasm); fildl (_fpuasm); addl %eax, %eax; fstps (_fpuasm); sbbl %ebx, %ebx; movl (_fpuasm), %eax; movl %eax, %ecx; andl $0x007ff000, %eax; shrl $10, %eax; subl $0x3f800000, %ecx; shrl $23, %ecx; movl _reciptable(%eax), %eax; sarl %cl, %eax; xorl %ebx, %eax
 # 0 "" 2
/NO_APP
	movl	__ZL5swall.lto_priv.0, %ecx
	sall	$2, %eax
	movl	%eax, 8(%ecx,%edx)
	movl	224(%esp), %eax
	addl	%edi, %eax
/APP
 # 6233 "source/build/src/engine.cpp" 1
	movl %eax, (_fpuasm); fildl (_fpuasm); addl %eax, %eax; fstps (_fpuasm); sbbl %ebx, %ebx; movl (_fpuasm), %eax; movl %eax, %ecx; andl $0x007ff000, %eax; shrl $10, %eax; subl $0x3f800000, %ecx; shrl $23, %ecx; movl _reciptable(%eax), %eax; sarl %cl, %eax; xorl %ebx, %eax
 # 0 "" 2
/NO_APP
	movaps	%xmm1, %xmm3
	movl	__ZL5swall.lto_priv.0, %ecx
	sall	$2, %eax
	movaps	%xmm2, %xmm4
	divss	%xmm0, %xmm3
	addss	%xmm0, %xmm4
	movl	192(%esp), %esi
	movl	%eax, 12(%ecx,%edx)
	movl	236(%esp), %eax
	addl	%eax, %edi
	movl	__ZL6swallf.lto_priv.0, %eax
	movss	%xmm3, (%eax,%edx)
	movaps	%xmm1, %xmm3
	movl	__ZL6swallf.lto_priv.0, %eax
	divss	%xmm4, %xmm3
	movaps	%xmm7, %xmm4
	addss	%xmm0, %xmm4
	movss	%xmm3, 4(%eax,%edx)
	movaps	%xmm1, %xmm3
	movl	__ZL6swallf.lto_priv.0, %eax
	divss	%xmm4, %xmm3
	movaps	%xmm6, %xmm4
	addss	%xmm0, %xmm4
	addss	%xmm5, %xmm0
	movss	%xmm3, 8(%eax,%edx)
	movaps	%xmm1, %xmm3
	movl	__ZL6swallf.lto_priv.0, %eax
	divss	%xmm4, %xmm3
	movss	%xmm3, 12(%eax,%edx)
	movl	280(%esp), %eax
	addl	$16, %edx
	leal	-3(%eax), %ecx
	cmpl	%esi, %ecx
	jg	L963
	movl	%eax, 236(%esp)
	movl	208(%esp), %edx
	movl	%esi, 128(%esp)
L489:
	movl	128(%esp), %eax
	movl	236(%esp), %ebx
	cmpl	%ebx, %eax
	jg	L491
	movl	%edx, %esi
	movl	%eax, %edx
	.p2align 4
	.p2align 3
L492:
	movl	%edi, %eax
/APP
 # 6247 "source/build/src/engine.cpp" 1
	movl %eax, (_fpuasm); fildl (_fpuasm); addl %eax, %eax; fstps (_fpuasm); sbbl %ebx, %ebx; movl (_fpuasm), %eax; movl %eax, %ecx; andl $0x007ff000, %eax; shrl $10, %eax; subl $0x3f800000, %ecx; shrl $23, %ecx; movl _reciptable(%eax), %eax; sarl %cl, %eax; xorl %ebx, %eax
 # 0 "" 2
/NO_APP
	movaps	%xmm1, %xmm3
	movl	__ZL5swall.lto_priv.0, %ecx
	sall	$2, %eax
	addl	%esi, %edi
	divss	%xmm0, %xmm3
	addss	%xmm2, %xmm0
	movl	%eax, (%ecx,%edx,4)
	movl	__ZL6swallf.lto_priv.0, %eax
	movss	%xmm3, (%eax,%edx,4)
	movl	280(%esp), %eax
	addl	$1, %edx
	cmpl	%edx, %eax
	jge	L492
	movl	%eax, 236(%esp)
L491:
	movl	284(%esp), %eax
	movl	%eax, 200(%esp)
	movl	__ZL12smostwallcnt.lto_priv.0, %eax
	subl	$1, %eax
	movl	%eax, 240(%esp)
	jns	L525
	jmp	L493
	.p2align 4,,10
	.p2align 3
L964:
	movswl	_thewall(%ecx,%ecx), %edx
	movl	_wall, %eax
	sall	$5, %edx
	leal	(%eax,%edx), %ebx
	movl	4(%ebx), %edx
	movl	(%ebx), %edi
	movl	%ebx, 160(%esp)
	movl	%edx, 216(%esp)
	movswl	8(%ebx), %edx
	sall	$5, %edx
	addl	%edx, %eax
	movl	%edi, %edx
	movl	(%eax), %ebx
	movl	4(%eax), %esi
	movl	%edx, 192(%esp)
	movl	268(%esp), %eax
	movl	%ebx, 144(%esp)
	subl	%edi, %ebx
	movl	216(%esp), %edi
	movl	%eax, 188(%esp)
	subl	%edi, %eax
	movl	%esi, 148(%esp)
	subl	%edi, %esi
	movl	152(%esp), %edi
	imull	%ebx, %eax
	movl	%ebx, 176(%esp)
	subl	%edx, %edi
	movl	%esi, 168(%esp)
	movl	%edi, %edx
	movl	216(%esp), %edi
	movl	%eax, 164(%esp)
	movl	264(%esp), %eax
	imull	%esi, %edx
	movl	%eax, 156(%esp)
	subl	%edi, %eax
	movl	136(%esp), %edi
	imull	%ebx, %eax
	movl	192(%esp), %ebx
	subl	%ebx, %edi
	movl	%edi, %ebx
	imull	%esi, %ebx
	subl	%ebx, %eax
	movl	164(%esp), %ebx
	subl	%edx, %ebx
	je	L709
	testl	%eax, %eax
	je	L709
	movl	%ebx, %edi
	xorl	%eax, %edi
	js	L501
	addl	%ebx, %eax
L500:
	testl	%eax, %eax
	js	L499
	.p2align 6
	.p2align 4
	.p2align 3
L494:
	subl	$1, 240(%esp)
	movl	240(%esp), %eax
	cmpl	$-1, %eax
	je	L493
L525:
	movl	240(%esp), %eax
	movl	236(%esp), %ebx
	movl	__ZL9smostwall.lto_priv.0(,%eax,4), %ecx
	movl	_xb1(,%ecx,4), %eax
	movl	%eax, 224(%esp)
	cmpl	%ebx, %eax
	jg	L494
	movl	__ZL3xb2.lto_priv.0(,%ecx,4), %eax
	movl	200(%esp), %ebx
	movl	%eax, 208(%esp)
	cmpl	%ebx, %eax
	jl	L494
	movl	276(%esp), %eax
	movl	272(%esp), %edi
	movl	__ZL3yb2.lto_priv.0(,%ecx,4), %edx
	movl	__ZL3yb1.lto_priv.0(,%ecx,4), %ebx
	cmpl	%edi, %eax
	movl	%edi, %esi
	movl	%eax, 216(%esp)
	cmovge	%eax, %esi
	cmpl	%ebx, %edx
	movl	%ebx, %eax
	cmovle	%edx, %eax
	cmpl	%eax, %esi
	jle	L494
	movl	216(%esp), %eax
	cmpl	%ebx, %edx
	cmovl	%ebx, %edx
	cmpl	%edi, %eax
	cmovg	%edi, %eax
	cmpl	%eax, %edx
	jge	L964
L499:
	movl	224(%esp), %eax
	movl	200(%esp), %esi
	movl	236(%esp), %edi
	cmpl	%esi, %eax
	movl	%esi, %ebx
	cmovge	%eax, %ebx
	movl	208(%esp), %eax
	movl	%edi, %edx
	cmpl	%edi, %eax
	cmovle	%eax, %edx
	movl	240(%esp), %eax
	movzbl	__ZL13smostwalltype.lto_priv.0(%eax), %eax
	movl	%edx, 216(%esp)
	cmpb	$1, %al
	je	L507
	cmpb	$2, %al
	je	L508
	testb	%al, %al
	jne	L494
	cmpl	%ebx, %edx
	jl	L494
	cmpl	%esi, 224(%esp)
	jg	L711
	cmpl	%edi, 208(%esp)
	jge	L916
L711:
	movl	216(%esp), %edx
	addl	$1, %edx
L510:
	movl	__ZL5dwall.lto_priv.0, %eax
	xorl	%esi, %esi
	movw	%si, (%eax,%ebx,2)
	addl	$1, %ebx
	cmpl	%edx, %ebx
	jne	L510
	jmp	L494
	.p2align 4,,10
	.p2align 3
L386:
	movl	_searchx, %eax
	movl	236(%esp), %esi
	movl	_searchy, %edx
	cmpl	%edx, (%esi,%eax,4)
	jg	L938
	movl	224(%esp), %esi
	cmpl	(%esi,%eax,4), %edx
	jge	L938
	movl	208(%esp), %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	_xdimenscale, %eax
	cltd
	shldl	$19, %eax, %edx
	sall	$19, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	_xyaspect, %edx
	movl	%eax, 240(%esp)
	movl	%eax, %ecx
	movl	176(%esp), %eax
/APP
 # 5861 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	192(%esp), %ebx
	movl	%eax, 236(%esp)
	movl	236(%esp), %eax
	movl	4(%ebx), %esi
	addl	(%ebx), %esi
	imull	%ecx
	movl	%esi, %ebx
	sarl	%ebx
	movl	%ebx, 152(%esp)
	movl	%eax, 224(%esp)
	movl	%ebx, %eax
	sarl	$31, %ebx
	movl	%edx, 228(%esp)
	movl	228(%esp), %ecx
	movl	%ebx, 180(%esp)
	movl	224(%esp), %ebx
	movl	180(%esp), %edx
	imull	%eax, %ecx
	imull	%ebx, %edx
	addl	%edx, %ecx
	mull	%ebx
	movl	%eax, %ebx
	addl	%ecx, %edx
	movl	%esi, %eax
	shrdl	$30, %edx, %ebx
	sarl	$12, %eax
	movl	%ebx, 176(%esp)
	cmpl	%ebx, %eax
	jge	L939
	movl	192(%esp), %eax
	movl	8(%eax), %esi
	movl	240(%esp), %eax
	imull	188(%esp)
	movl	%esi, %ebx
	sarl	$31, %ebx
	movl	%edx, 228(%esp)
	movl	%ebx, 172(%esp)
	movl	228(%esp), %ebx
	movl	%eax, 224(%esp)
	movl	172(%esp), %edx
	imull	%esi, %ebx
	movl	224(%esp), %eax
	imull	224(%esp), %edx
	movl	%ebx, %ecx
	addl	%edx, %ecx
	mull	%esi
	addl	%ecx, %edx
	movl	%eax, %ecx
	shrdl	$30, %edx, %ecx
	movl	%ecx, %eax
	movl	%ecx, 160(%esp)
	sarl	%eax
	movl	%eax, 168(%esp)
	cmpl	%eax, %esi
	jge	L939
	movl	176(%esp), %eax
	movl	156(%esp), %ecx
	sarl	%eax
	subl	%eax, %ecx
	testb	$1, 152(%esp)
	je	L392
	movl	240(%esp), %eax
	movl	236(%esp), %edx
/APP
 # 5872 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $31, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
L392:
	movl	236(%esp), %edx
	movl	240(%esp), %eax
	imull	%edi, %edx
/APP
 # 5873 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%ecx, %ebx
	addl	%eax, %ecx
	movl	240(%esp), %edx
	subl	%eax, %ebx
	cmpl	$0, 200(%esp)
	cmovne	%ecx, %ebx
	movl	248(%esp), %ecx
	movl	8(%ecx), %edi
	movl	%ebx, 224(%esp)
	movl	_globalposz, %ebx
	movl	%edi, %eax
	subl	%ebx, %eax
/APP
 # 5876 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	testb	$-128, 216(%esp)
	jne	L395
	movl	192(%esp), %esi
	movl	188(%esp), %edx
	movl	20(%esi), %eax
/APP
 # 5879 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $22, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	240(%esp), %edx
/APP
 # 5879 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	subl	%eax, %ecx
L395:
	movl	_globalhoriz, %eax
	movl	160(%esp), %edx
	movl	%eax, 236(%esp)
	sall	$8, %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	movl	168(%esp), %ecx
	addl	%eax, %ecx
	leal	-1(%ecx,%edx), %eax
	movl	%ecx, %edx
	movl	%ecx, 268(%esp)
	movl	%eax, 192(%esp)
	orb	$-1, %dl
	movl	%eax, 264(%esp)
	orb	$-1, %al
	cmpl	%eax, %edx
	jge	L932
	movl	224(%esp), %eax
	movl	_searchx, %edx
	sarl	$8, %eax
	cmpl	%edx, %eax
	jge	L932
	movl	224(%esp), %eax
	movl	176(%esp), %esi
	leal	-1(%eax,%esi), %eax
	sarl	$8, %eax
	cmpl	%eax, %edx
	jg	L932
	movl	144(%esp), %eax
	xorl	%esi, %esi
	movl	%esi, 224(%esp)
	movzwl	12(%eax), %edx
	movw	%dx, 216(%esp)
	andb	$3, %dl
	jne	L399
	movl	4(%eax), %edx
	movl	240(%esp), %eax
	subl	%ebx, %edx
/APP
 # 5892 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	236(%esp), %edx
	leal	-1(%edx,%eax), %eax
	movl	%eax, 224(%esp)
L399:
	movl	144(%esp), %edx
	movzwl	14(%edx), %eax
	testb	$3, %al
	movw	%ax, 200(%esp)
	movl	$2147483647, %eax
	jne	L400
	movl	8(%edx), %eax
	movl	%eax, %edx
	movl	%eax, 188(%esp)
	movl	240(%esp), %eax
	subl	%ebx, %edx
/APP
 # 5897 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	236(%esp), %ebx
	leal	1(%ebx,%eax), %eax
L400:
	movl	224(%esp), %edx
	sarl	$8, %ecx
	movl	_searchy, %ebx
	cmpl	%edx, %ecx
	cmovl	%edx, %ecx
	cmpl	%ecx, %ebx
	jl	L930
	movl	192(%esp), %edx
	sarl	$8, %edx
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	cmpl	%edx, %ebx
	jge	L930
	movw	$1, _searchit
L930:
	movl	248(%esp), %eax
	movl	__ZL5swall.lto_priv.0, %edx
	movl	4(%eax), %ecx
	movswl	28(%eax), %ebx
	movl	%edx, 224(%esp)
	movzbl	21(%eax), %eax
	movl	__ZL5lwall.lto_priv.0, %edx
	movl	%eax, 240(%esp)
	movl	%edx, 236(%esp)
	jmp	L388
	.p2align 4,,10
	.p2align 3
L960:
	cmpl	$2, 200(%esp)
	jle	L916
	movl	_halfxdimen, %eax
	movl	_globalhoriz, %edi
	movl	$0, 240(%esp)
	movl	%eax, %esi
	imull	_ryi
	movl	%edi, 188(%esp)
	movl	%eax, %ecx
	movl	%edx, %ebx
	movl	%edi, %eax
	imull	__ZL3rzi
	addl	%eax, %ecx
	movl	%esi, %eax
	adcl	%edx, %ebx
	xorl	%edi, %edi
	jmp	L560
	.p2align 4,,10
	.p2align 3
L558:
	cmpl	%edi, 200(%esp)
	je	L559
	movl	_globalhoriz, %ebx
	movl	_halfxdimen, %eax
	movl	192(%esp), %ecx
	movl	%ebx, 188(%esp)
	movl	196(%esp), %ebx
L560:
	addl	$1, %edi
	xorl	%esi, %esi
	cmpl	%edi, 200(%esp)
	cmovne	%edi, %esi
	imull	_ryi(,%esi,4)
	movl	%esi, 184(%esp)
	movl	%eax, 192(%esp)
	movl	188(%esp), %eax
	movl	%edx, 196(%esp)
	imull	__ZL3rzi(,%esi,4)
	addl	192(%esp), %eax
	adcl	196(%esp), %edx
	movl	%eax, 192(%esp)
	movl	%edx, 196(%esp)
	testl	%ebx, %ebx
	js	L557
	movl	240(%esp), %edx
	movl	_rxi-4(,%edi,4), %eax
	movl	%eax, __ZL4rxi2(,%edx,4)
	movl	_ryi-4(,%edi,4), %eax
	movl	%eax, __ZL4ryi2(,%edx,4)
	movl	__ZL3rzi-4(,%edi,4), %eax
	movl	%eax, __ZL4rzi2(,%edx,4)
	addl	$1, %edx
	movl	%edx, 240(%esp)
L557:
	movl	196(%esp), %edx
	xorl	%ebx, %edx
	jns	L558
	movl	%ecx, %eax
	movl	%ebx, %edx
	subl	192(%esp), %eax
	sbbl	196(%esp), %edx
	shldl	$30, %ecx, %ebx
	sall	$30, %ecx
	movl	%eax, 8(%esp)
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	movl	%edx, 12(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, %esi
	movl	184(%esp), %eax
	movl	%edx, 188(%esp)
	movl	%esi, %edx
	movl	_rxi(,%eax,4), %ebx
	subl	_rxi-4(,%edi,4), %ebx
	movl	%ebx, %eax
	sarl	$31, %ebx
	imull	%ebx, %edx
	movl	240(%esp), %ebx
	movl	%edx, %ecx
	movl	188(%esp), %edx
	imull	%eax, %edx
	addl	%edx, %ecx
	mull	%esi
	addl	%ecx, %edx
	shrdl	$30, %edx, %eax
	addl	_rxi-4(,%edi,4), %eax
	movl	%esi, %edx
	movl	%eax, __ZL4rxi2(,%ebx,4)
	movl	184(%esp), %eax
	movl	_ryi(,%eax,4), %ecx
	movl	%ecx, 176(%esp)
	subl	_ryi-4(,%edi,4), %ecx
	movl	%ecx, %ebx
	movl	%ecx, %eax
	sarl	$31, %ebx
	imull	%ebx, %edx
	movl	240(%esp), %ebx
	movl	%edx, %ecx
	movl	188(%esp), %edx
	imull	%eax, %edx
	addl	%edx, %ecx
	mull	%esi
	addl	%ecx, %edx
	shrdl	$30, %edx, %eax
	addl	_ryi-4(,%edi,4), %eax
	movl	%esi, %edx
	movl	%eax, __ZL4ryi2(,%ebx,4)
	movl	184(%esp), %eax
	movl	__ZL3rzi(,%eax,4), %eax
	subl	__ZL3rzi-4(,%edi,4), %eax
	movl	%eax, %ebx
	sarl	$31, %ebx
	imull	%ebx, %edx
	movl	240(%esp), %ebx
	movl	%edx, %ecx
	movl	188(%esp), %edx
	imull	%eax, %edx
	addl	%edx, %ecx
	mull	%esi
	addl	%ecx, %edx
	shrdl	$30, %edx, %eax
	addl	__ZL3rzi-4(,%edi,4), %eax
	movl	%eax, __ZL4rzi2(,%ebx,4)
	addl	$1, %ebx
	movl	%ebx, 240(%esp)
	jmp	L558
L952:
	movl	248(%esp), %ebx
	movl	8(%ebx), %ecx
	movl	%ecx, 176(%esp)
	cmpw	$48, %ax
	jne	L531
	movzwl	22(%ebx), %eax
	movw	%ax, 168(%esp)
	testw	%ax, %ax
	je	L531
	movswl	28(%ebx), %ecx
	movl	240(%esp), %edx
	movl	188(%esp), %edi
	subl	4(%ebx), %edx
	leal	1024(%ecx), %eax
	addl	$512, %ecx
	subl	(%ebx), %edi
	andl	$2047, %ecx
	andl	$2047, %eax
	movswl	_sintable(%ecx,%ecx), %ecx
	movswl	_sintable(%eax,%eax), %eax
	negl	%ecx
	movl	%ecx, %esi
/APP
 # 1822 "source/build/include/build.h" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movswl	168(%esp), %eax
/APP
 # 1824 "source/build/include/build.h" 1
	imull %edx; shrdl $18, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, 176(%esp)
L531:
	movl	176(%esp), %eax
	cmpl	%eax, _globalposz
	movl	184(%esp), %eax
	setg	%dl
	shrl	$3, %eax
	xorl	$1, %eax
	cmpb	%al, %dl
	jne	L529
	jmp	L916
L957:
	movl	104(%esp), %edi
	movl	248(%esp), %eax
	movzwl	12(%edi), %edi
	cmpw	%di, 24(%eax)
	jne	L319
	jmp	L321
L535:
	movl	248(%esp), %eax
	movl	$81920, 8(%esp)
	movl	$0, 12(%esp)
	movl	8(%eax), %eax
	subl	_globalposz, %eax
	imull	_yxaspect
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, _ryi
	testl	%eax, %eax
	je	L916
	movl	136(%esp), %esi
	movl	%eax, _ryi+12
	movl	%eax, _ryi+8
	movl	%eax, _ryi+4
	testl	%esi, %esi
	jne	L684
	movl	$3, 240(%esp)
	movl	$1, %eax
L546:
	movl	240(%esp), %edi
	movl	136(%esp), %ebx
	movl	%eax, 260(%esp)
	movl	__ZL3rzi(,%eax,4), %ecx
	movl	%edi, 256(%esp)
	subl	__ZL3rzi(,%ebx,4), %ecx
	movl	_rxi(,%eax,4), %edi
	subl	_rxi(,%ebx,4), %edi
	movl	%ecx, %eax
	movl	%ecx, %edx
	movl	%edi, %esi
/APP
 # 6520 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $8, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	%ecx, %eax
/APP
 # 6521 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	sarl	$13, %eax
	cmpl	%esi, %eax
	jge	L916
	movl	%edi, %eax
/APP
 # 6521 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	sarl	$13, %eax
	cmpl	%esi, %eax
	jge	L916
	movl	%esi, %edx
	movl	%ecx, %eax
	movl	%esi, 8(%esp)
	sarl	$31, %edx
	movl	%edx, 12(%esp)
	cltd
	sall	$18, %eax
	shldl	$18, %ecx, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, _globalx1
	movl	%edi, %eax
	cltd
	movl	%esi, 8(%esp)
	sall	$18, %eax
	shldl	$18, %edi, %edx
	sarl	$31, %esi
	movl	%eax, (%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	240(%esp), %edi
	movl	136(%esp), %ebx
	movl	%eax, __ZL8globalx2.lto_priv.0
	movl	__ZL3rzi(,%edi,4), %eax
	subl	__ZL3rzi(,%ebx,4), %eax
	movl	%eax, %ecx
	movl	_rxi(,%edi,4), %eax
	subl	_rxi(,%ebx,4), %eax
	movl	%eax, %esi
	movl	%ecx, %edx
	movl	%ecx, %eax
	movl	%esi, 240(%esp)
	movl	%esi, %edi
/APP
 # 6527 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $8, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edi
	movl	%ecx, %eax
/APP
 # 6528 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	sarl	$13, %eax
	cmpl	%edi, %eax
	jge	L916
	movl	240(%esp), %eax
/APP
 # 6528 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	sarl	$13, %eax
	cmpl	%edi, %eax
	jge	L916
	movl	%edi, %eax
	movl	%edi, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%ecx, %eax
	cltd
	sall	$18, %eax
	shldl	$18, %ecx, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, __ZL8globaly1.lto_priv.0
	movl	240(%esp), %eax
	movl	%edi, 8(%esp)
	sarl	$31, %edi
	cltd
	movl	%edi, 12(%esp)
	shldl	$18, %eax, %edx
	sall	$18, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	136(%esp), %ebx
	movl	_viewingrange, %ecx
	movl	%eax, _globaly2
	movl	_rxi(,%ebx,4), %eax
	movl	%ecx, %edx
	movl	%eax, __ZL14globalxpanning.lto_priv.0
	movl	__ZL3rzi(,%ebx,4), %eax
	movl	%eax, __ZL14globalypanning.lto_priv.0
	movl	_ryi(,%ebx,4), %eax
	movl	%eax, __ZL8globalzd.lto_priv.0
	sarl	$31, %eax
	movl	%eax, __ZL8globalzd.lto_priv.0+4
	movl	__ZL3rzi, %eax
/APP
 # 6538 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 192(%esp)
	movl	%ecx, %edx
	movl	%eax, __ZL3rzi
	movl	__ZL3rzi+4, %eax
/APP
 # 6539 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, __ZL3rzi+4
	movl	%eax, %ebx
	movl	%ecx, %edx
	movl	__ZL3rzi+8, %eax
/APP
 # 6540 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, __ZL3rzi+8
	movl	%ecx, %edx
	movl	__ZL3rzi+12, %eax
/APP
 # 6541 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, __ZL3rzi+12
	cmpl	$0, _ryi
	jns	L934
	movl	_rxi+4, %edx
	movl	_rxi+12, %ecx
	movl	%eax, __ZL3rzi+4
	movl	%ebx, __ZL3rzi+12
	movl	%ecx, _rxi+4
	movl	%edx, _rxi+12
L934:
	movl	_rxi, %eax
	xorl	%ebx, %ebx
	movl	$0x00000000, 148(%esp)
	movl	%ebx, 108(%esp)
	movl	%eax, 240(%esp)
	movl	%ebx, 160(%esp)
	movl	$0x00000000, 152(%esp)
	movl	$0x00000000, 156(%esp)
	movl	$0x00000000, 168(%esp)
	movl	$0x00000000, 164(%esp)
	movl	$0x00000000, 116(%esp)
	movl	$0x00000000, 112(%esp)
	movl	$0x00000000, 120(%esp)
	jmp	L544
	.p2align 4,,10
	.p2align 3
L559:
	cmpl	$2, 240(%esp)
	jle	L916
	movl	_globalhoriz, %esi
	movl	_ydimen, %ebx
	movl	$0, 188(%esp)
	movl	_halfxdimen, %edi
	movl	%esi, %eax
	movl	%ebx, 200(%esp)
	subl	%ebx, %eax
	imull	__ZL4rzi2
	movl	%edi, 192(%esp)
	movl	%eax, %ecx
	movl	%edx, %ebx
	movl	%edi, %eax
	imull	__ZL4ryi2
	addl	%eax, %ecx
	movl	%esi, %eax
	adcl	%edx, %ebx
	movl	200(%esp), %edx
	xorl	%edi, %edi
	jmp	L565
	.p2align 4,,10
	.p2align 3
L563:
	cmpl	%edi, 240(%esp)
	je	L564
	movl	_halfxdimen, %eax
	movl	_ydimen, %edx
	movl	200(%esp), %ecx
	movl	204(%esp), %ebx
	movl	%eax, 192(%esp)
	movl	_globalhoriz, %eax
L565:
	addl	$1, %edi
	xorl	%esi, %esi
	cmpl	%edi, 240(%esp)
	cmovne	%edi, %esi
	subl	%edx, %eax
	imull	__ZL4rzi2(,%esi,4)
	movl	%esi, 184(%esp)
	movl	%eax, 200(%esp)
	movl	192(%esp), %eax
	movl	%edx, 204(%esp)
	imull	__ZL4ryi2(,%esi,4)
	addl	200(%esp), %eax
	adcl	204(%esp), %edx
	movl	%eax, 200(%esp)
	xorl	%eax, %eax
	cmpl	%ecx, %eax
	movl	%edx, 204(%esp)
	sbbl	%ebx, %eax
	jl	L562
	movl	188(%esp), %edx
	movl	__ZL4rxi2-4(,%edi,4), %eax
	movl	%eax, _rxi(,%edx,4)
	movl	__ZL4ryi2-4(,%edi,4), %eax
	movl	%eax, _ryi(,%edx,4)
	movl	__ZL4rzi2-4(,%edi,4), %eax
	movl	%eax, __ZL3rzi(,%edx,4)
	addl	$1, %edx
	movl	%edx, 188(%esp)
L562:
	movl	204(%esp), %edx
	xorl	%ebx, %edx
	jns	L563
	movl	%ecx, %eax
	movl	%ebx, %edx
	subl	200(%esp), %eax
	sbbl	204(%esp), %edx
	shldl	$30, %ecx, %ebx
	sall	$30, %ecx
	movl	%eax, 8(%esp)
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	movl	%edx, 12(%esp)
	call	_tabledivide64.lto_priv.9
	movl	__ZL4rxi2-4(,%edi,4), %ebx
	movl	%eax, %ecx
	movl	184(%esp), %eax
	movl	__ZL4rxi2(,%eax,4), %edx
	movl	%ecx, %eax
	subl	%ebx, %edx
/APP
 # 6641 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, %ebx
	movl	188(%esp), %esi
	movl	184(%esp), %eax
	movl	%ebx, _rxi(,%esi,4)
	movl	__ZL4ryi2(,%eax,4), %edx
	movl	%ecx, %eax
	movl	__ZL4ryi2-4(,%edi,4), %ebx
	movl	%edx, 192(%esp)
	subl	%ebx, %edx
/APP
 # 6642 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, %ebx
	movl	184(%esp), %eax
	movl	%ebx, _ryi(,%esi,4)
	movl	__ZL4rzi2-4(,%edi,4), %ebx
	movl	__ZL4rzi2(,%eax,4), %edx
	movl	%ecx, %eax
	subl	%ebx, %edx
/APP
 # 6643 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, %ebx
	movl	%ebx, __ZL3rzi(,%esi,4)
	addl	$1, %esi
	movl	%esi, 188(%esp)
	jmp	L563
L382:
	imull	240(%esp), %eax
	sall	$2, %eax
	subl	%eax, %ecx
	movl	248(%esp), %eax
	movl	%ecx, 8(%eax)
	jmp	L383
L704:
	movl	132(%esp), %eax
	movl	124(%esp), %edi
	addl	%eax, %edi
	negl	%edi
	jmp	L324
L564:
	cmpl	$2, 188(%esp)
	jle	L916
	movl	$-2147483648, 176(%esp)
	xorl	%edi, %edi
	movl	_xdimen, %ebx
	movl	$-1, 192(%esp)
	movl	$2147483647, 184(%esp)
	movl	$-1, 200(%esp)
	jmp	L570
L693:
	movl	%eax, %edi
L570:
	movl	__ZL3rzi(,%edi,4), %eax
	sall	$15, %ebx
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%ebx, %eax
	imull	_rxi(,%edi,4)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	_xdimen, %edx
	sall	$15, %edx
	addl	%edx, %eax
	movl	%eax, __ZL3xsi(,%edi,4)
	movl	__ZL3rzi(,%edi,4), %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%edx, %eax
	imull	_ryi(,%edi,4)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, %edx
	movl	_globalhoriz, %eax
	sall	$16, %eax
	addl	%edx, %eax
	movl	__ZL3xsi(,%edi,4), %edx
	testl	%edx, %edx
	jns	L566
	movl	$0, __ZL3xsi(,%edi,4)
	xorl	%edx, %edx
L566:
	movl	_xdimen, %ebx
	movl	%ebx, %ecx
	sall	$16, %ecx
	cmpl	%edx, %ecx
	jge	L567
	movl	%ecx, __ZL3xsi(,%edi,4)
	movl	%ecx, %edx
L567:
	movl	_ydimen, %ecx
	xorl	%esi, %esi
	sall	$16, %ecx
	testl	%eax, %eax
	cmovs	%esi, %eax
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	184(%esp), %eax
	cmpl	%edx, %eax
	movl	%ecx, __ZL3ysi(,%edi,4)
	cmovg	%edx, %eax
	movl	%eax, 184(%esp)
	movl	200(%esp), %eax
	cmovg	%edi, %eax
	movl	%eax, 200(%esp)
	movl	176(%esp), %eax
	cmpl	%edx, %eax
	cmovge	%eax, %edx
	movl	192(%esp), %eax
	cmovl	%edi, %eax
	movl	%edx, 176(%esp)
	movl	%eax, 192(%esp)
	leal	1(%edi), %eax
	cmpl	%eax, 188(%esp)
	jne	L693
	movl	200(%esp), %eax
	cmpl	192(%esp), %eax
	je	L571
	movl	%edi, 188(%esp)
	movl	%eax, %ebx
	jmp	L574
L573:
	movl	192(%esp), %ebx
	cmpl	%ebx, 240(%esp)
	je	L697
	movl	240(%esp), %ebx
L574:
	xorl	%ecx, %ecx
	leal	1(%ebx), %eax
	cmpl	%ebx, 188(%esp)
	movl	__ZL3xsi(,%ebx,4), %edx
	cmove	%ecx, %eax
	leal	65535(%edx), %edi
	movl	%eax, 240(%esp)
	movl	__ZL3xsi(,%eax,4), %eax
	movl	%edi, %esi
	sarl	$16, %esi
	leal	65535(%eax), %ecx
	sarl	$16, %ecx
	cmpl	%ecx, %esi
	jge	L573
	subl	%edx, %eax
	movl	%ecx, 124(%esp)
	xorw	%di, %di
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	240(%esp), %eax
	movl	__ZL3ysi(,%eax,4), %eax
	subl	__ZL3ysi(,%ebx,4), %eax
	cltd
	shldl	$16, %eax, %edx
	sall	$16, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	subl	__ZL3xsi(,%ebx,4), %edi
	movl	%eax, %edx
	movl	%edi, %eax
	movl	%edx, 136(%esp)
/APP
 # 6674 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	124(%esp), %ecx
	movl	%eax, %edi
	movl	__ZL5uwall.lto_priv.0, %eax
	addl	__ZL3ysi(,%ebx,4), %edi
	leal	(%eax,%esi,2), %eax
	subl	%esi, %ecx
	movl	%edi, %edx
	movl	136(%esp), %esi
/APP
 # 6675 "source/build/src/engine.cpp" 1
	testl %ecx, %ecx; jz 3f; testb $2, %al; jz 0f; movl %edx, %ebx; sarl $16, %ebx; movw %bx, (%eax); addl %esi, %edx; addl $2, %eax; decl %ecx; jz 3f; 0: subl $2, %ecx; jc 2f; 1: movl %edx, %ebx; addl %esi, %edx; sarl $16, %ebx; movl %edx, %edi; andl $0xffff0000, %edi; addl %esi, %edx; addl %edi, %ebx; movl %ebx, (%eax); addl $4, %eax; subl $2, %ecx; jnc 1b; testb $1, %cl; jz 3f; 2: movl %edx, %ebx; sarl $16, %ebx; movw %bx, (%eax); 3:
 # 0 "" 2
/NO_APP
	jmp	L573
L965:
	movl	240(%esp), %esi
	subl	%ebx, %edx
	movl	%ecx, 136(%esp)
	movl	%edx, 8(%esp)
	sarl	$31, %edx
	movl	%edx, 12(%esp)
	movl	__ZL3ysi(,%esi,4), %edx
	subl	__ZL3ysi(,%eax,4), %edx
	movl	%edx, %eax
	cltd
	shldl	$16, %eax, %edx
	sall	$16, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	192(%esp), %ebx
	movl	%eax, %edx
	xorw	%bx, %bx
	subl	__ZL3xsi(,%esi,4), %ebx
	movl	%edx, 192(%esp)
	movl	%ebx, %eax
/APP
 # 6689 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	136(%esp), %ecx
	movl	%eax, %ebx
	movl	__ZL5dwall.lto_priv.0, %eax
	addl	__ZL3ysi(,%esi,4), %ebx
	movl	192(%esp), %esi
	leal	(%eax,%edi,2), %eax
	subl	%edi, %ecx
	movl	%ebx, %edx
/APP
 # 6690 "source/build/src/engine.cpp" 1
	testl %ecx, %ecx; jz 3f; testb $2, %al; jz 0f; movl %edx, %ebx; sarl $16, %ebx; movw %bx, (%eax); addl %esi, %edx; addl $2, %eax; decl %ecx; jz 3f; 0: subl $2, %ecx; jc 2f; 1: movl %edx, %ebx; addl %esi, %edx; sarl $16, %ebx; movl %edx, %edi; andl $0xffff0000, %edi; addl %esi, %edx; addl %edi, %ebx; movl %ebx, (%eax); addl $4, %eax; subl $2, %ecx; jnc 1b; testb $1, %cl; jz 3f; 2: movl %edx, %ebx; sarl $16, %ebx; movw %bx, (%eax); 3:
 # 0 "" 2
/NO_APP
L576:
	movl	200(%esp), %ebx
	cmpl	%ebx, 240(%esp)
	je	L571
L697:
	movl	240(%esp), %eax
	xorl	%ebx, %ebx
	cmpl	%eax, 188(%esp)
	leal	1(%eax), %edx
	cmove	%ebx, %edx
	movl	%edx, 240(%esp)
	movl	__ZL3xsi(,%edx,4), %edx
	leal	65535(%edx), %ebx
	movl	%ebx, %edi
	movl	%ebx, 192(%esp)
	movl	__ZL3xsi(,%eax,4), %ebx
	sarl	$16, %edi
	leal	65535(%ebx), %ecx
	sarl	$16, %ecx
	cmpl	%ecx, %edi
	jge	L576
	jmp	L965
L493:
	cmpw	$0, _searchit
	jle	L526
	movl	_searchx, %eax
	movl	200(%esp), %ebx
	cmpl	%ebx, %eax
	jl	L526
	movl	236(%esp), %ebx
	cmpl	%ebx, %eax
	jle	L966
L526:
	movl	184(%esp), %ecx
	movl	140(%esp), %ebx
	movl	$1, __ZL14drawing_sprite.lto_priv.0
	movl	236(%esp), %edx
	movl	200(%esp), %eax
	shrl	$3, %ecx
	xorl	$1, %ecx
	testl	%ebx, %ebx
	je	L940
L527:
	call	__ZL17transmaskwallscaniii.lto_priv.0
	jmp	L528
L709:
	movl	248(%esp), %esi
	addl	%ebx, %eax
	movl	4(%esi), %edi
	movl	%edi, %edx
	movl	%edi, 188(%esp)
	movl	216(%esp), %edi
	subl	%edi, %edx
	movl	176(%esp), %edi
	imull	%edx, %edi
	movl	(%esi), %edx
	movl	192(%esp), %esi
	movl	%edx, 216(%esp)
	subl	%esi, %edx
	movl	168(%esp), %esi
	imull	%esi, %edx
	cmpl	%edx, %edi
	jne	L500
	movl	160(%esp), %ebx
	movl	248(%esp), %eax
	movzwl	12(%ebx), %ebx
	cmpw	%bx, 24(%eax)
	jne	L494
	jmp	L499
L419:
	movl	192(%esp), %ebx
	movl	$32767, %eax
	cmpl	%eax, %ebx
	cmovle	%ebx, %eax
	movl	%eax, 192(%esp)
L421:
	movl	192(%esp), %eax
	cmpl	%eax, %edi
	jl	L420
	jmp	L916
L571:
	movl	184(%esp), %eax
	addl	$65535, %eax
	sarl	$16, %eax
	movl	%eax, 192(%esp)
	movl	%eax, %ebx
	movl	_xdim, %eax
	leal	-1(%eax), %edx
	movl	176(%esp), %eax
	addl	$65535, %eax
	sarl	$16, %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, 200(%esp)
	cmpl	%ebx, %eax
	jle	L916
	leal	1(%eax), %esi
	movl	%ebx, %edx
L578:
	movl	__ZL5uwall.lto_priv.0, %edi
	movl	_windowxy1, %eax
	leal	(%edx,%edx), %ebx
	movl	_startumost, %ecx
	addl	%ebx, %edi
	addl	%edx, %eax
	movswl	(%ecx,%eax,2), %eax
	movswl	(%edi), %ecx
	subl	_windowxy1+4, %eax
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	movw	%ax, (%edi)
	movl	_windowxy1, %edi
	movl	_startdmost, %eax
	addl	__ZL5dwall.lto_priv.0, %ebx
	addl	%edx, %edi
	movswl	(%eax,%edi,2), %eax
	movswl	(%ebx), %edi
	subl	_windowxy1+4, %eax
	cmpl	%edi, %eax
	cmovg	%edi, %eax
	addl	$1, %edx
	movw	%ax, (%ebx)
	cmpl	%esi, %edx
	jne	L578
	movl	__ZL12smostwallcnt.lto_priv.0, %edi
	subl	$1, %edi
	js	L579
	.p2align 4
	.p2align 3
L592:
	movl	__ZL9smostwall.lto_priv.0(,%edi,4), %edx
	movl	_xb1(,%edx,4), %eax
	cmpl	%eax, 200(%esp)
	jl	L580
	movl	__ZL3xb2.lto_priv.0(,%edx,4), %ebx
	movl	%ebx, 240(%esp)
	cmpl	%ebx, 192(%esp)
	jg	L580
	movl	208(%esp), %ebx
	cmpl	%ebx, __ZL3yb1.lto_priv.0(,%edx,4)
	jge	L967
	movl	208(%esp), %ebx
	cmpl	%ebx, __ZL3yb2.lto_priv.0(,%edx,4)
	jl	L583
L582:
	movswl	_thewall(%edx,%edx), %edx
	movl	_wall, %ebx
	sall	$5, %edx
	addl	%ebx, %edx
	movswl	8(%edx), %ecx
	sall	$5, %ecx
	addl	%ebx, %ecx
	movl	248(%esp), %ebx
	movl	(%ecx), %esi
	subl	(%edx), %esi
	movl	4(%ebx), %ebx
	subl	4(%edx), %ebx
	imull	%ebx, %esi
	movl	248(%esp), %ebx
	movl	4(%ecx), %ecx
	subl	4(%edx), %ecx
	movl	(%ebx), %ebx
	movl	%ebx, 188(%esp)
	subl	(%edx), %ebx
	imull	%ecx, %ebx
	cmpl	%ebx, %esi
	js	L583
	jne	L580
	movl	248(%esp), %ebx
	movzwl	12(%edx), %ecx
	cmpw	%cx, 24(%ebx)
	jne	L580
L583:
	movl	192(%esp), %esi
	movl	200(%esp), %ecx
	movl	240(%esp), %ebx
	cmpl	%eax, %esi
	movl	%esi, %edx
	cmovl	%eax, %edx
	cmpl	%ebx, %ecx
	cmovle	%ecx, %ebx
	movzbl	__ZL13smostwalltype.lto_priv.0(%edi), %ecx
	cmpb	$1, %cl
	je	L584
	cmpb	$2, %cl
	je	L585
	testb	%cl, %cl
	jne	L580
	cmpl	%edx, %ebx
	jl	L580
	cmpl	%eax, %esi
	jl	L712
	movl	240(%esp), %eax
	cmpl	%eax, 200(%esp)
	jle	L916
L712:
	leal	1(%ebx), %eax
	addl	%edx, %edx
	addl	%eax, %eax
L587:
	movl	__ZL5dwall.lto_priv.0, %ecx
	xorl	%ebx, %ebx
	movw	%bx, (%ecx,%edx)
	addl	$2, %edx
	cmpl	%edx, %eax
	jne	L587
	.p2align 4
	.p2align 3
L580:
	subl	$1, %edi
	jnb	L592
L579:
	cmpw	$0, _searchit
	jle	L593
	movl	_searchx, %eax
	cmpl	%eax, 192(%esp)
	jg	L593
	cmpl	%eax, 200(%esp)
	jge	L968
L593:
	movswl	236(%esp), %eax
	movl	%eax, %edx
	cmpl	$30719, %eax
	jbe	L594
	xorl	%edx, %edx
	xorl	%eax, %eax
L594:
	movl	216(%esp), %ebx
	movw	%dx, _globalpicnum
	movl	%ebx, _globalorientation
/APP
 # 6768 "source/build/src/engine.cpp" 1
	movl %eax, %ebx
	cmpb $200, _walock(%eax)
	jae 0f
	movb $199, _walock(%eax)
	0:
	shrl $3, %eax
	andl $7, %ebx
	movb _gotpic(%eax), %dl
	movb _pow2char_(%ebx), %bl
	orb %bl, %dl
	movb %dl, _gotpic(%eax)
 # 0 "" 2
/NO_APP
	movswl	_globalpicnum, %ebx
	movl	%ebx, %eax
	call	__Z12tileLoadHighi
	movl	%eax, __ZL8globalht.lto_priv.0
	testl	%eax, %eax
	je	L595
	movl	(%eax), %ebx
	movzwl	4(%eax), %edx
	movzwl	6(%eax), %ecx
L596:
	movl	132(%esp), %edi
	movswl	_globalpicnum, %eax
	movswl	%cx, %esi
	movl	%ebx, __ZL12globalbufplc.lto_priv.0
	movswl	%dx, %ebx
	sall	%cl, %edi
	movzbl	_picsiz(%eax), %eax
	movl	%edx, %ecx
	movl	%edi, 104(%esp)
	movl	128(%esp), %edi
	movl	%eax, %edx
	sarl	$4, %eax
	sall	%cl, %edi
	andl	$15, %edx
	addl	%esi, %eax
	movswl	%di, %ecx
	movl	%eax, 248(%esp)
	leal	(%edx,%ebx), %edi
	movl	%ecx, 208(%esp)
	cmpl	$0, 224(%esp)
	jne	L969
	movl	_viewingrange, %ecx
	movl	_globalhisibility, %eax
	movl	%ecx, %edx
/APP
 # 7109 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	144(%esp), %ebx
	movzbl	32(%ebx), %edx
	testb	%dl, %dl
	je	L658
	addl	$16, %edx
	movzbl	%dl, %edx
/APP
 # 7110 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
L658:
	movl	__ZL14globalxpanning.lto_priv.0, %ebx
	movl	__ZL8globalx2.lto_priv.0, %edx
	movl	%eax, _globvis
	movl	_globalx1, %eax
	imull	__ZL14globalypanning.lto_priv.0, %eax
	imull	%ebx, %edx
	imull	_globaly2, %ebx
	addl	%edx, %eax
	movl	%ecx, %edx
	sall	$6, %eax
	negl	%eax
	movl	%eax, __ZL14globalxpanning.lto_priv.0
	movl	__ZL8globaly1.lto_priv.0, %eax
	imull	__ZL14globalypanning.lto_priv.0, %eax
	addl	%ebx, %eax
	sall	$6, %eax
	negl	%eax
	movl	%eax, __ZL14globalypanning.lto_priv.0
	movl	__ZL8globalx2.lto_priv.0, %eax
/APP
 # 7127 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, __ZL8globalx2.lto_priv.0
	movl	%eax, %ebx
	movl	%ecx, %edx
	movl	_globaly2, %eax
/APP
 # 7128 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	__ZL17viewingrangerecip.lto_priv.0, %ecx
	movl	%eax, _globaly2
	movl	%eax, %esi
	movl	__ZL8globalzd.lto_priv.0+4, %eax
	imull	__ZL17viewingrangerecip.lto_priv.0, %eax
	sarl	$31, %ecx
	imull	__ZL8globalzd.lto_priv.0, %ecx
	addl	%eax, %ecx
	movl	__ZL8globalzd.lto_priv.0, %eax
	mull	__ZL17viewingrangerecip.lto_priv.0
	addl	%ecx, %edx
	shrdl	$4, %edx, %eax
	sarl	$4, %edx
	movl	%eax, __ZL8globalzd.lto_priv.0
	movl	_globalx1, %eax
	movl	%edx, __ZL8globalzd.lto_priv.0+4
	movl	_halfxdimen, %edx
	subl	%ebx, %eax
	movl	__ZL8globaly1.lto_priv.0, %ebx
	imull	%edx, %eax
	subl	%esi, %ebx
	movl	%eax, _globalx1
	movl	%ebx, %eax
	imull	%edx, %eax
	cmpl	$0, 140(%esp)
	movl	%eax, __ZL8globaly1.lto_priv.0
	movl	248(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	jne	L659
	call	_msethlineshift
L660:
	movswl	104(%esp), %eax
	movl	208(%esp), %ebx
	xorl	%edx, %edx
	cmpl	%ebx, _pow2long.lto_priv.0(,%edi,4)
	jne	L661
	movl	248(%esp), %ebx
	cmpl	%eax, _pow2long.lto_priv.0(,%ebx,4)
	sete	%dl
L661:
	movzbl	%dl, %edx
	movl	%eax, __ZL11globalyspan.lto_priv.0
	movl	208(%esp), %ebx
	movl	%edx, __ZL12globalispow2.lto_priv.0
	movl	200(%esp), %edx
	movl	192(%esp), %eax
	movl	%ebx, __ZL11globalxspan.lto_priv.0
	subl	$1, %edx
	call	__ZL14ceilspritescanii.lto_priv.0
	movl	$1, __ZL12globalispow2.lto_priv.0
	jmp	L405
L967:
	cmpl	%ebx, __ZL3yb2.lto_priv.0(,%edx,4)
	jl	L582
	jmp	L580
L408:
	movl	200(%esp), %eax
	movl	_waloff(,%eax,4), %eax
	testl	%eax, %eax
	je	L970
L410:
	xorl	%eax, %eax
	movw	%ax, 132(%esp)
	jmp	L409
L680:
	movl	$0, 108(%esp)
	jmp	L467
L508:
	movl	240(%esp), %eax
	movl	__ZL10smoststart.lto_priv.0(,%eax,4), %eax
	subl	_xb1(,%ecx,4), %eax
	movl	%eax, %edx
	movl	216(%esp), %eax
	subl	$3, %eax
	movl	%eax, 208(%esp)
	cmpl	%eax, %ebx
	jge	L517
	movl	%ebx, 224(%esp)
	leal	(%edx,%ebx), %eax
	movl	%edx, 192(%esp)
	addl	%eax, %eax
	movl	%ebx, 188(%esp)
L522:
	movl	224(%esp), %ebx
	movl	__ZL5dwall.lto_priv.0, %edx
	movl	__ZL5smost.lto_priv.0, %ecx
	addl	%ebx, %ebx
	leal	(%edx,%ebx), %edi
	movzwl	(%ecx,%eax), %esi
	cmpw	(%edi), %si
	jge	L518
	movw	%si, (%edi)
	movl	__ZL5smost.lto_priv.0, %ecx
	movl	__ZL5dwall.lto_priv.0, %edx
L518:
	leal	2(%edx,%ebx), %edi
	movzwl	2(%ecx,%eax), %esi
	cmpw	(%edi), %si
	jge	L519
	movw	%si, (%edi)
	movl	__ZL5smost.lto_priv.0, %ecx
	movl	__ZL5dwall.lto_priv.0, %edx
L519:
	leal	4(%edx,%ebx), %edi
	movzwl	4(%ecx,%eax), %esi
	cmpw	(%edi), %si
	jge	L520
	movw	%si, (%edi)
	movl	__ZL5smost.lto_priv.0, %ecx
	movl	__ZL5dwall.lto_priv.0, %edx
L520:
	leal	6(%edx,%ebx), %edx
	movzwl	6(%ecx,%eax), %ecx
	cmpw	(%edx), %cx
	jge	L521
	movw	%cx, (%edx)
L521:
	addl	$4, 224(%esp)
	movl	208(%esp), %ecx
	addl	$8, %eax
	movl	224(%esp), %ebx
	cmpl	%ecx, %ebx
	jl	L522
	movl	216(%esp), %eax
	movl	188(%esp), %ecx
	movl	192(%esp), %edx
	subl	$4, %eax
	subl	%ecx, %eax
	andl	$-4, %eax
	leal	4(%ecx,%eax), %ebx
L517:
	movl	216(%esp), %ecx
	cmpl	%ebx, %ecx
	jl	L494
	addl	$1, %ecx
	leal	(%ebx,%ebx), %eax
	leal	(%edx,%edx), %edi
	addl	%ecx, %ecx
L524:
	movl	__ZL5smost.lto_priv.0, %edx
	addl	%edi, %edx
	movzwl	(%edx,%eax), %ebx
	movl	__ZL5dwall.lto_priv.0, %edx
	addl	%eax, %edx
	cmpw	(%edx), %bx
	jge	L523
	movw	%bx, (%edx)
L523:
	addl	$2, %eax
	cmpl	%eax, %ecx
	jne	L524
	jmp	L494
L507:
	movl	240(%esp), %eax
	movl	__ZL10smoststart.lto_priv.0(,%eax,4), %eax
	subl	_xb1(,%ecx,4), %eax
	movl	%eax, %edi
	movl	216(%esp), %eax
	subl	$1, %eax
	movl	%eax, 208(%esp)
	cmpl	%ebx, %eax
	jle	L511
	movl	%ebx, 188(%esp)
	leal	(%edi,%ebx), %eax
	movl	%edi, 192(%esp)
	addl	%eax, %eax
	movl	%ebx, %edi
L514:
	movl	__ZL5uwall.lto_priv.0, %edx
	leal	(%edi,%edi), %ebx
	movl	__ZL5smost.lto_priv.0, %ecx
	movl	%ebx, 224(%esp)
	addl	%edx, %ebx
	movzwl	(%ecx,%eax), %esi
	cmpw	(%ebx), %si
	jle	L512
	movw	%si, (%ebx)
	movl	__ZL5smost.lto_priv.0, %ecx
	movl	__ZL5uwall.lto_priv.0, %edx
L512:
	movl	224(%esp), %ebx
	movzwl	2(%ecx,%eax), %ecx
	leal	2(%edx,%ebx), %edx
	cmpw	(%edx), %cx
	jle	L513
	movw	%cx, (%edx)
L513:
	addl	$2, %edi
	addl	$4, %eax
	cmpl	%edi, 208(%esp)
	jg	L514
	movl	216(%esp), %eax
	movl	188(%esp), %ecx
	movl	192(%esp), %edi
	subl	$2, %eax
	subl	%ecx, %eax
	andl	$-2, %eax
	leal	2(%ecx,%eax), %ebx
L511:
	movl	216(%esp), %ecx
	cmpl	%ebx, %ecx
	jl	L494
	addl	$1, %ecx
	leal	(%ebx,%ebx), %eax
	addl	%edi, %edi
	movl	%ecx, %edx
	addl	%ecx, %edx
L516:
	movl	__ZL5smost.lto_priv.0, %ecx
	addl	%edi, %ecx
	movzwl	(%ecx,%eax), %ebx
	movl	__ZL5uwall.lto_priv.0, %ecx
	addl	%eax, %ecx
	cmpw	(%ecx), %bx
	jle	L515
	movw	%bx, (%ecx)
L515:
	addl	$2, %eax
	cmpl	%eax, %edx
	jne	L516
	jmp	L494
L684:
	movl	$2, 240(%esp)
	xorl	%eax, %eax
	movl	$1, 136(%esp)
	jmp	L546
L585:
	cmpl	%edx, %ebx
	jl	L580
	leal	1(%ebx), %ecx
	movl	__ZL10smoststart.lto_priv.0(,%edi,4), %ebx
	movl	%edi, 240(%esp)
	addl	%edx, %edx
	leal	(%ecx,%ecx), %esi
	subl	%eax, %ebx
	movl	%esi, %ecx
	leal	(%ebx,%ebx), %edi
L591:
	movl	__ZL5smost.lto_priv.0, %eax
	addl	%edi, %eax
	movzwl	(%eax,%edx), %ebx
	movl	__ZL5dwall.lto_priv.0, %eax
	addl	%edx, %eax
	cmpw	(%eax), %bx
	jge	L590
	movw	%bx, (%eax)
L590:
	addl	$2, %edx
	cmpl	%edx, %ecx
	jne	L591
L935:
	movl	240(%esp), %edi
	jmp	L580
L584:
	cmpl	%edx, %ebx
	jl	L580
	movl	__ZL10smoststart.lto_priv.0(,%edi,4), %ecx
	addl	$1, %ebx
	movl	%edi, 240(%esp)
	addl	%edx, %edx
	leal	(%ebx,%ebx), %esi
	subl	%eax, %ecx
	movl	%esi, %ebx
	leal	(%ecx,%ecx), %edi
L589:
	movl	__ZL5smost.lto_priv.0, %eax
	addl	%edi, %eax
	movzwl	(%eax,%edx), %ecx
	movl	__ZL5uwall.lto_priv.0, %eax
	addl	%edx, %eax
	cmpw	(%eax), %cx
	jle	L588
	movw	%cx, (%eax)
L588:
	addl	$2, %edx
	cmpl	%edx, %ebx
	jne	L589
	jmp	L935
L434:
	movl	240(%esp), %eax
	movl	164(%esp), %edi
	movl	__ZL10smoststart.lto_priv.0(,%eax,4), %eax
	movl	%eax, %ebx
	movl	%eax, 192(%esp)
	movl	176(%esp), %eax
	subl	%eax, %ebx
	leal	-3(%edi), %eax
	movl	%ebx, 160(%esp)
	cmpl	%ecx, %eax
	jle	L445
	subl	$4, %edi
	leal	(%ebx,%ecx), %edx
	movl	%ecx, 120(%esp)
	leal	(%ecx,%ecx), %ebx
	subl	%ecx, %edi
	leal	(%edx,%edx), %eax
	movl	%edi, 156(%esp)
	andl	$-4, %edi
	leal	4(%edx,%edi), %edx
	leal	(%edx,%edx), %edi
	movl	%edi, 192(%esp)
L450:
	movl	__ZL5dwall.lto_priv.0, %edx
	movl	__ZL5smost.lto_priv.0, %ecx
	leal	(%edx,%ebx), %edi
	movzwl	(%ecx,%eax), %esi
	cmpw	(%edi), %si
	jge	L446
	movw	%si, (%edi)
	movl	__ZL5smost.lto_priv.0, %ecx
	movl	__ZL5dwall.lto_priv.0, %edx
L446:
	leal	2(%edx,%ebx), %edi
	movzwl	2(%ecx,%eax), %esi
	cmpw	(%edi), %si
	jge	L447
	movw	%si, (%edi)
	movl	__ZL5smost.lto_priv.0, %ecx
	movl	__ZL5dwall.lto_priv.0, %edx
L447:
	leal	4(%edx,%ebx), %edi
	movzwl	4(%ecx,%eax), %esi
	cmpw	(%edi), %si
	jge	L448
	movw	%si, (%edi)
	movl	__ZL5smost.lto_priv.0, %ecx
	movl	__ZL5dwall.lto_priv.0, %edx
L448:
	leal	6(%edx,%ebx), %edx
	movzwl	6(%ecx,%eax), %ecx
	cmpw	(%edx), %cx
	jge	L449
	movw	%cx, (%edx)
L449:
	addl	$8, %eax
	addl	$8, %ebx
	cmpl	%eax, 192(%esp)
	jne	L450
	movl	156(%esp), %eax
	movl	120(%esp), %ecx
	andl	$-4, %eax
	leal	4(%ecx,%eax), %ecx
L445:
	movl	164(%esp), %eax
	cmpl	%ecx, %eax
	jl	L451
	movl	160(%esp), %edi
	addl	$1, %eax
	leal	(%ecx,%ecx), %edx
	addl	%eax, %eax
	addl	%edi, %edi
L453:
	movl	__ZL5smost.lto_priv.0, %ecx
	addl	%edi, %ecx
	movzwl	(%ecx,%edx), %ebx
	movl	__ZL5dwall.lto_priv.0, %ecx
	addl	%edx, %ecx
	cmpw	(%ecx), %bx
	jge	L452
	movw	%bx, (%ecx)
L452:
	addl	$2, %edx
	cmpl	%edx, %eax
	jne	L453
L451:
	movl	224(%esp), %ebx
	cmpl	%ebx, 176(%esp)
	setle	%dl
	movl	236(%esp), %ebx
	xorl	%eax, %eax
	cmpl	%ebx, 188(%esp)
	setge	%al
	andl	%edx, %eax
	addl	%eax, %eax
	orl	%eax, 184(%esp)
	jmp	L437
L433:
	movl	240(%esp), %eax
	movl	164(%esp), %edi
	movl	__ZL10smoststart.lto_priv.0(,%eax,4), %eax
	movl	%eax, %ebx
	movl	%eax, 192(%esp)
	movl	176(%esp), %eax
	subl	%eax, %ebx
	leal	-1(%edi), %eax
	movl	%ebx, 160(%esp)
	cmpl	%ecx, %eax
	jle	L438
	subl	$2, %edi
	addl	%ecx, %ebx
	movl	%ecx, 120(%esp)
	leal	(%ecx,%ecx), %edx
	subl	%ecx, %edi
	leal	(%ebx,%ebx), %eax
	movl	%edi, 156(%esp)
	andl	$-2, %edi
	leal	2(%ebx,%edi), %ebx
	addl	%ebx, %ebx
	movl	%ebx, 192(%esp)
L441:
	movl	__ZL5uwall.lto_priv.0, %ecx
	movl	__ZL5smost.lto_priv.0, %ebx
	leal	(%ecx,%edx), %edi
	movzwl	(%ebx,%eax), %esi
	cmpw	(%edi), %si
	jle	L439
	movw	%si, (%edi)
	movl	__ZL5smost.lto_priv.0, %ebx
	movl	__ZL5uwall.lto_priv.0, %ecx
L439:
	leal	2(%ecx,%edx), %ecx
	movzwl	2(%ebx,%eax), %ebx
	cmpw	(%ecx), %bx
	jle	L440
	movw	%bx, (%ecx)
L440:
	addl	$4, %eax
	addl	$4, %edx
	cmpl	%eax, 192(%esp)
	jne	L441
	movl	156(%esp), %eax
	movl	120(%esp), %ecx
	andl	$-2, %eax
	leal	2(%ecx,%eax), %ecx
L438:
	movl	164(%esp), %ebx
	cmpl	%ecx, %ebx
	jl	L442
	addl	$1, %ebx
	movl	160(%esp), %edi
	leal	(%ecx,%ecx), %eax
	movl	%ebx, %edx
	addl	%ebx, %edx
	addl	%edi, %edi
L444:
	movl	__ZL5smost.lto_priv.0, %ecx
	addl	%edi, %ecx
	movzwl	(%ecx,%eax), %ebx
	movl	__ZL5uwall.lto_priv.0, %ecx
	addl	%eax, %ecx
	cmpw	(%ecx), %bx
	jle	L443
	movw	%bx, (%ecx)
L443:
	addl	$2, %eax
	cmpl	%eax, %edx
	jne	L444
L442:
	movl	224(%esp), %ebx
	cmpl	%ebx, 176(%esp)
	setle	%dl
	movl	236(%esp), %ebx
	xorl	%eax, %eax
	cmpl	%ebx, 188(%esp)
	setge	%al
	andl	%edx, %eax
	orl	%eax, 184(%esp)
	jmp	L437
L417:
	movl	144(%esp), %eax
	movl	8(%eax), %eax
	movl	%eax, 152(%esp)
	movl	%eax, %edx
	movl	164(%esp), %eax
	subl	%eax, %edx
	movl	%ebx, %eax
/APP
 # 5966 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	cmpl	%ecx, %esi
	movl	%esi, %ebx
	cmovl	%ecx, %ebx
	movl	%ebx, %edi
	movl	160(%esp), %ebx
	leal	1(%ebx,%eax), %eax
	movl	192(%esp), %ebx
	cmpl	%eax, %ebx
	cmovle	%ebx, %eax
	movl	%eax, 192(%esp)
	jmp	L418
L328:
	movl	104(%esp), %edi
	movl	248(%esp), %eax
	movzwl	12(%edi), %edi
	cmpw	%di, 24(%eax)
	jne	L329
	movb	$1, 160(%esp)
	jmp	L321
L961:
	movl	128(%esp), %eax
	movl	236(%esp), %ebx
	cmpl	%ebx, %eax
	jg	L475
	movl	124(%esp), %edx
	leal	1(%ebx), %edi
	subl	$1, %edx
L476:
	movl	__ZL5lwall.lto_priv.0, %ecx
	movl	%edx, %ebx
	leal	(%ecx,%eax,4), %ecx
	addl	$1, %eax
	subl	(%ecx), %ebx
	movl	%ebx, (%ecx)
	cmpl	%edi, %eax
	jne	L476
	jmp	L475
L939:
	movl	__ZL5swall.lto_priv.0, %edi
	movl	248(%esp), %eax
	movl	4(%eax), %ecx
	movswl	28(%eax), %ebx
	movl	%edi, 224(%esp)
	movl	__ZL5lwall.lto_priv.0, %edi
	movl	%edi, 236(%esp)
	movzbl	21(%eax), %edi
	movl	%edi, 240(%esp)
	movl	8(%eax), %edi
	jmp	L931
L501:
	movl	188(%esp), %eax
	movl	216(%esp), %edi
	movl	152(%esp), %esi
	movl	156(%esp), %ebx
	movl	136(%esp), %edx
	subl	%eax, %edi
	subl	%eax, %ebx
	movl	%edi, %eax
	movl	148(%esp), %edi
	subl	%esi, %edx
	imull	%edx, %eax
	movl	%eax, 164(%esp)
	movl	192(%esp), %eax
	subl	%esi, %eax
	imull	%ebx, %eax
	movl	%eax, 156(%esp)
	movl	188(%esp), %eax
	subl	%eax, %edi
	movl	144(%esp), %eax
	imull	%edi, %edx
	movl	164(%esp), %edi
	subl	%esi, %eax
	imull	%ebx, %eax
	movl	156(%esp), %ebx
	subl	%ebx, %edi
	sete	%bl
	movl	%edi, 188(%esp)
	movl	%ebx, %esi
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%esi, %edx
	sete	%al
	orb	%dl, %al
	jne	L710
	xorl	%ebx, %edi
	jns	L710
	movl	248(%esp), %edi
	movl	216(%esp), %eax
	movl	192(%esp), %esi
	movl	4(%edi), %edx
	subl	%eax, %edx
	movl	176(%esp), %eax
	imull	%eax, %edx
	movl	(%edi), %eax
	movl	%eax, 164(%esp)
	subl	%esi, %eax
	movl	168(%esp), %esi
	imull	%esi, %eax
	cmpl	%eax, %edx
	jne	L504
	movl	160(%esp), %eax
	movzwl	12(%eax), %eax
	cmpw	%ax, 24(%edi)
	jne	L494
	jmp	L499
L962:
	subl	%edi, %eax
	movl	%ebx, %ecx
	movl	%eax, 240(%esp)
	cmpl	%ebx, _lastd_s32
	je	L480
	cmpl	$16383, %ebx
	jbe	L480
	movl	%ebx, %eax
	movl	%ebx, _lastd_s32
	movl	$31, %edx
	negl	%eax
	cmovs	%ebx, %eax
	movl	%eax, %ebx
	bsrl	%eax, %eax
	xorl	$31, %eax
	subl	%eax, %edx
	movl	%edx, 224(%esp)
	movl	%edx, %esi
	leal	-1(%ebx), %edx
	testl	%ebx, %edx
	jne	L481
	movl	%ecx, %eax
	xorl	%edx, %edx
	sarl	$24, %eax
	andl	$-128, %eax
	orl	%esi, %eax
L482:
	movl	%edx, _divtable32
	movb	%al, _divtable32+4
L480:
	movl	208(%esp), %ebx
	xorl	%eax, %eax
	cmpl	$16383, %ebx
	cmovbe	%ebx, %eax
	leal	(%eax,%eax,4), %eax
	movl	_divtable32(%eax), %edx
	movzbl	_divtable32+4(%eax), %ebx
	testl	%edx, %edx
	jne	L485
	movl	240(%esp), %esi
	movl	%ebx, %ecx
	movl	$-1, %edx
	movl	%ebx, %eax
	sall	%cl, %edx
	sarb	$7, %al
	movl	%esi, %ecx
	notl	%edx
	movsbl	%al, %eax
	sarl	$31, %ecx
	andl	%ecx, %edx
	movl	%ebx, %ecx
	addl	%esi, %edx
	sarl	%cl, %edx
	xorl	%eax, %edx
	subl	%eax, %edx
L933:
	leal	(%edx,%edx), %eax
	leal	0(,%edx,4), %ebx
	movl	%eax, 240(%esp)
	leal	(%edx,%edx,2), %eax
	movl	%eax, 224(%esp)
	jmp	L479
L422:
	sarl	$31, %esi
	movl	%eax, (%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, %edx
	movl	%ebx, %eax
	movl	184(%esp), %ebx
	negl	%edx
	movl	%edx, 124(%esp)
	subl	%ebx, %eax
/APP
 # 5983 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $8, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 128(%esp)
	jmp	L423
L468:
	movl	200(%esp), %eax
	cmpl	$0, _waloff(,%eax,4)
	je	L971
L470:
	movw	$0, 112(%esp)
	jmp	L469
L970:
	movswl	236(%esp), %eax
	movl	%ecx, 176(%esp)
	call	_tileLoad.isra.0
	movl	176(%esp), %ecx
	jmp	L410
L659:
	call	_tsethlineshift
	jmp	L660
L969:
	movl	128(%esp), %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	160(%esp), %eax
	cltd
	shldl	$20, %eax, %edx
	sall	$20, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, %esi
	movl	132(%esp), %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	108(%esp), %eax
	cltd
	shldl	$20, %eax, %edx
	sall	$20, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movb	$0, 79(%esp)
	movl	%eax, 236(%esp)
	movl	208(%esp), %eax
	cmpl	%eax, _pow2long.lto_priv.0(,%edi,4)
	jne	L599
	movl	248(%esp), %ebx
	movswl	104(%esp), %eax
	cmpl	%eax, _pow2long.lto_priv.0(,%ebx,4)
	sete	79(%esp)
L599:
	movss	120(%esp), %xmm0
	xorps	LC21, %xmm0
	mulss	LC19, %xmm0
	movl	144(%esp), %eax
	movzbl	32(%eax), %edx
	movl	_globalhisibility, %eax
	movss	%xmm0, 160(%esp)
	testb	%dl, %dl
	je	L600
	addl	$16, %edx
	movzbl	%dl, %edx
/APP
 # 6792 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
L600:
	fnstcw	254(%esp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	164(%esp), %xmm0
	movzwl	254(%esp), %eax
	orb	$12, %ah
	movw	%ax, 252(%esp)
	movl	_xdimscale, %ebx
	movss	%xmm0, 240(%esp)
	flds	240(%esp)
	fldcw	252(%esp)
	fistpq	240(%esp)
	fldcw	254(%esp)
	sarl	$31, %ebx
	movl	244(%esp), %edx
	movl	240(%esp), %eax
	shrdl	$13, %edx, %eax
	sarl	$13, %edx
	movl	%eax, 240(%esp)
	movl	240(%esp), %eax
	movl	%edx, 244(%esp)
	movl	%ebx, %edx
	movl	244(%esp), %ecx
	movl	$131072, %ebx
	imull	_xdimscale, %ecx
	imull	%eax, %edx
	addl	%edx, %ecx
	mull	_xdimscale
	addl	%ecx, %edx
	shrdl	$16, %edx, %eax
	movl	__ZL12globalbufplc.lto_priv.0, %edx
	movl	%eax, _globvis
	movl	_globalpal, %eax
	movl	_palookup(,%eax,4), %eax
	movl	%eax, 124(%esp)
	movl	_ylookup, %eax
	movl	4(%eax), %ecx
	movl	248(%esp), %eax
	sall	$8, %eax
	negl	%ecx
	addl	%edi, %eax
	call	__ZL24setupslopevlin_alsotransiii.lto_priv.0
	movss	160(%esp), %xmm0
	xorps	LC21, %xmm0
	movss	%xmm0, (%esp)
	call	_lrintf
	xorps	%xmm0, %xmm0
	cvtsi2ssl	_xdimenscale, %xmm0
	mulss	116(%esp), %xmm0
	movl	%eax, 164(%esp)
	mulss	LC19, %xmm0
	movss	%xmm0, (%esp)
	call	_lrintf
	movl	%eax, 68(%esp)
	testl	%eax, %eax
	jg	L601
	movl	$16380, %ebx
	subl	_ydimen, %ebx
	sall	$15, %ebx
L601:
	movl	__ZL5uwall.lto_priv.0, %eax
	movl	192(%esp), %ecx
	xorps	%xmm0, %xmm0
	movss	LC26, %xmm1
	mulss	112(%esp), %xmm1
	movswl	(%eax,%ecx,2), %edi
	cvtsi2ssl	%edi, %xmm0
	mulss	120(%esp), %xmm0
	mulss	LC19, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, (%esp)
	call	_lrintf
	movl	%eax, %edx
	movl	164(%esp), %eax
/APP
 # 6808 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	%ebx, %eax
	sarl	$15, %eax
	addl	%eax, %edi
	cmpl	$16382, %edi
	ja	L972
	movss	LC23, %xmm1
	xorps	%xmm0, %xmm0
	movl	%esi, %eax
	movss	156(%esp), %xmm6
	cvtsi2ssl	128(%esp), %xmm0
	sarl	$16, %eax
	movss	168(%esp), %xmm5
	movss	160(%esp), %xmm7
	movaps	%xmm1, %xmm2
	movl	%eax, 144(%esp)
	movl	236(%esp), %eax
	mulss	LC30, %xmm7
	sarl	$16, %eax
	divss	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	movl	%eax, 136(%esp)
	leal	(%edx,%ecx), %eax
	cvtsi2ssl	132(%esp), %xmm0
	movl	164(%esp), %ecx
	movl	%eax, 96(%esp)
	movss	%xmm7, 156(%esp)
	addl	%ecx, %eax
	movl	%eax, 92(%esp)
	leal	__ZL11slopalookup.lto_priv.0(,%edi,4), %eax
	movl	%eax, 88(%esp)
	addl	$4, %eax
	movl	%eax, 84(%esp)
	movl	192(%esp), %eax
	divss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	imull	68(%esp), %eax
	mulss	%xmm2, %xmm5
	mulss	152(%esp), %xmm2
	addl	%ebx, %eax
	movl	%eax, 72(%esp)
	movss	%xmm5, 64(%esp)
	mulss	%xmm0, %xmm5
	addss	%xmm5, %xmm2
	movss	%xmm2, 108(%esp)
	mulss	%xmm1, %xmm6
	mulss	148(%esp), %xmm1
	movss	%xmm6, 60(%esp)
	mulss	%xmm0, %xmm6
	mulss	116(%esp), %xmm0
	addss	112(%esp), %xmm0
	addss	%xmm6, %xmm1
	movss	%xmm0, 112(%esp)
	movss	%xmm1, 100(%esp)
L657:
	movl	__ZL5uwall.lto_priv.0, %eax
	movl	192(%esp), %ecx
	movswl	(%eax,%ecx,2), %ebx
	movl	__ZL5dwall.lto_priv.0, %eax
	movswl	(%eax,%ecx,2), %edi
	movl	%ebx, 240(%esp)
	subl	$1, %edi
	movl	%edi, 264(%esp)
	cmpl	%ebx, %edi
	jl	L628
	movl	72(%esp), %eax
	sarl	$15, %eax
	addl	%eax, %ebx
	addl	%eax, %edi
	movl	%ebx, %eax
	orl	%edi, %eax
	cmpl	$16383, %eax
	ja	L973
	leal	__ZL11slopalookup.lto_priv.0(,%edi,4), %eax
	leal	__ZL11slopalookup.lto_priv.0(,%ebx,4), %ecx
	movl	%eax, 224(%esp)
	movl	88(%esp), %eax
	cmpl	%ecx, %eax
	jb	L606
	movl	%eax, %edi
	movl	96(%esp), %eax
	movl	%ecx, %esi
	movl	%eax, 248(%esp)
L607:
	movl	248(%esp), %eax
/APP
 # 6845 "source/build/src/engine.cpp" 1
	movl %eax, (_fpuasm); fildl (_fpuasm); addl %eax, %eax; fstps (_fpuasm); sbbl %ebx, %ebx; movl (_fpuasm), %eax; movl %eax, %ecx; andl $0x007ff000, %eax; shrl $10, %eax; subl $0x3f800000, %ecx; shrl $23, %ecx; movl _reciptable(%eax), %eax; sarl %cl, %eax; xorl %ebx, %eax
 # 0 "" 2
/NO_APP
	movl	_globvis, %edx
/APP
 # 6845 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$0, %edx
	subl	$4, %edi
	sarl	$8, %eax
	movl	124(%esp), %ebx
	addl	_globalshade, %eax
	cmovs	%edx, %eax
	movswl	_numshades, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	sall	$8, %eax
	addl	%ebx, %eax
	movl	164(%esp), %ebx
	subl	%ebx, 248(%esp)
	movl	%eax, 4(%edi)
	cmpl	%esi, %edi
	jnb	L607
	movl	88(%esp), %ebx
	movl	%ebx, %eax
	subl	%esi, %eax
	imull	$1073741823, %eax, %edx
	shrl	$2, %eax
	leal	-4(%ebx,%edx), %ebx
	movl	96(%esp), %edx
	movl	%ebx, 88(%esp)
	movl	164(%esp), %ebx
	imull	%ebx, %eax
	subl	%ebx, %edx
	subl	%eax, %edx
	movl	%edx, 96(%esp)
L606:
	movl	84(%esp), %eax
	cmpl	%eax, 224(%esp)
	jb	L608
	movl	92(%esp), %esi
	movl	%eax, %edi
L609:
	movl	%esi, %eax
/APP
 # 6850 "source/build/src/engine.cpp" 1
	movl %eax, (_fpuasm); fildl (_fpuasm); addl %eax, %eax; fstps (_fpuasm); sbbl %ebx, %ebx; movl (_fpuasm), %eax; movl %eax, %ecx; andl $0x007ff000, %eax; shrl $10, %eax; subl $0x3f800000, %ecx; shrl $23, %ecx; movl _reciptable(%eax), %eax; sarl %cl, %eax; xorl %ebx, %eax
 # 0 "" 2
/NO_APP
	movl	_globvis, %edx
/APP
 # 6850 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$0, %edx
	addl	$4, %edi
	sarl	$8, %eax
	movl	124(%esp), %ebx
	addl	_globalshade, %eax
	cmovs	%edx, %eax
	movswl	_numshades, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	sall	$8, %eax
	addl	%ebx, %eax
	movl	164(%esp), %ebx
	movl	%eax, -4(%edi)
	addl	%ebx, %esi
	cmpl	%edi, 224(%esp)
	jnb	L609
	movl	224(%esp), %ebx
	movl	84(%esp), %ecx
	movl	92(%esp), %edx
	movl	%ebx, %eax
	addl	$4, %ebx
	movl	%ebx, 84(%esp)
	subl	%ecx, %eax
	movl	164(%esp), %ebx
	shrl	$2, %eax
	imull	%ebx, %eax
	addl	%ebx, %edx
	addl	%edx, %eax
	movl	%eax, 92(%esp)
L608:
	movss	LC17, %xmm0
	mulss	108(%esp), %xmm0
	movss	LC32, %xmm7
	movl	264(%esp), %edx
	movss	LC32, %xmm5
	movl	_ylookup, %eax
	movss	LC26, %xmm1
	mulss	112(%esp), %xmm1
	movl	192(%esp), %ebx
	addl	(%eax,%edx,4), %ebx
	mulss	%xmm0, %xmm7
	movl	_frameoffset, %eax
	movss	LC17, %xmm0
	mulss	100(%esp), %xmm0
	addl	%ebx, %eax
	movl	240(%esp), %ebx
	movl	%eax, %edi
	movl	%edx, %eax
	subl	%ebx, %eax
	movss	%xmm7, 184(%esp)
	addl	$1, %eax
	mulss	%xmm0, %xmm5
	xorps	%xmm0, %xmm0
	movl	%eax, 236(%esp)
	cvtsi2ssl	%edx, %xmm0
	mulss	120(%esp), %xmm0
	mulss	LC19, %xmm0
	movss	%xmm5, 188(%esp)
	addss	%xmm1, %xmm0
	movss	LC0, %xmm1
	movss	%xmm0, 176(%esp)
	divss	%xmm0, %xmm1
	movss	%xmm1, 240(%esp)
	mulss	%xmm1, %xmm7
	movss	%xmm7, (%esp)
	call	_lrintf
	movss	240(%esp), %xmm1
	mulss	188(%esp), %xmm1
	movl	%eax, 248(%esp)
	movss	%xmm1, (%esp)
	call	_lrintf
	cmpb	$0, 79(%esp)
	movss	176(%esp), %xmm0
	movl	%eax, 240(%esp)
	je	L610
	cmpl	$0, 140(%esp)
	je	L611
	movl	_globalblend, %eax
	movl	_blendtable(,%eax,4), %eax
	movl	%eax, 152(%esp)
	testb	$2, 217(%esp)
	je	L621
L620:
	cmpl	$0, 236(%esp)
	jle	L628
	cmpl	$15, 236(%esp)
	jle	L622
	addss	156(%esp), %xmm0
	movl	248(%esp), %ebx
	movss	LC0, %xmm1
	movss	184(%esp), %xmm2
	divss	%xmm0, %xmm1
	mulss	%xmm1, %xmm2
	mulss	188(%esp), %xmm1
	cvttss2sil	%xmm2, %eax
	subl	%ebx, %eax
	movl	240(%esp), %ebx
	sarl	$4, %eax
	movl	%eax, %ecx
	cvttss2sil	%xmm1, %eax
	subl	%ebx, %eax
	sarl	$4, %eax
	movl	%eax, %edx
	movl	$16, %eax
L623:
	movzwl	144(%esp), %ebx
	addl	248(%esp), %ebx
	movw	%cx, 128(%esp)
	movw	%bx, 168(%esp)
	movzwl	136(%esp), %ebx
	addl	240(%esp), %ebx
	movl	224(%esp), %esi
	movw	%dx, 132(%esp)
	movw	%bx, 176(%esp)
	imull	$-4, %eax, %ebx
	movl	%ecx, 56(%esp)
	movl	%edx, 52(%esp)
	movl	%ebx, 80(%esp)
	addl	%esi, %ebx
	movl	%ebx, 148(%esp)
	movl	%esi, %ebx
	movl	%eax, %esi
L625:
	movzwl	168(%esp), %eax
	movl	$16, %ecx
	subl	__ZL6gglogx.lto_priv.0, %ecx
	movzwl	176(%esp), %edx
	sarl	%cl, %eax
	movzbl	__ZL6gglogy.lto_priv.0, %ecx
	sall	%cl, %eax
	movl	$16, %ecx
	subl	__ZL6gglogy.lto_priv.0, %ecx
	addl	__ZL5ggbuf.lto_priv.0, %eax
	sarl	%cl, %edx
	movzbl	(%eax,%edx), %eax
	cmpb	$-1, %al
	je	L624
	addl	(%ebx), %eax
	movzbl	(%edi), %edx
	movzbl	(%eax), %eax
	movl	152(%esp), %ecx
	sall	$8, %eax
	orl	%edx, %eax
	movzbl	(%ecx,%eax), %eax
	movb	%al, (%edi)
L624:
	movl	148(%esp), %eax
	subl	$4, %ebx
	movzwl	128(%esp), %ecx
	addl	__ZL6ggpinc.lto_priv.0, %edi
	addw	%cx, 168(%esp)
	movzwl	132(%esp), %ecx
	addw	%cx, 176(%esp)
	cmpl	%eax, %ebx
	jne	L625
	movl	52(%esp), %edx
	movl	%esi, %eax
	movl	240(%esp), %esi
	subl	$1, %eax
	movl	56(%esp), %ecx
	subl	$16, 236(%esp)
	movl	%edx, %ebx
	addl	%edx, %esi
	imull	%eax, %ebx
	imull	%ecx, %eax
	addl	%esi, %ebx
	movl	%ebx, 240(%esp)
	movl	248(%esp), %ebx
	addl	%ecx, %ebx
	addl	%ebx, %eax
	movl	80(%esp), %ebx
	movl	%eax, 248(%esp)
	movl	224(%esp), %eax
	addl	%ebx, %eax
	movl	%eax, 224(%esp)
	jmp	L620
L974:
	movl	52(%esp), %edx
	movl	%esi, %eax
	movl	240(%esp), %esi
	subl	$1, %eax
	movl	56(%esp), %ecx
	subl	$16, 236(%esp)
	movl	%edx, %ebx
	addl	%edx, %esi
	imull	%eax, %ebx
	imull	%ecx, %eax
	addl	%esi, %ebx
	movl	%ebx, 240(%esp)
	movl	248(%esp), %ebx
	addl	%ecx, %ebx
	addl	%ebx, %eax
	movl	80(%esp), %ebx
	movl	%eax, 248(%esp)
	movl	224(%esp), %eax
	addl	%ebx, %eax
	movl	%eax, 224(%esp)
L621:
	cmpl	$0, 236(%esp)
	jle	L628
	cmpl	$15, 236(%esp)
	jle	L629
	addss	156(%esp), %xmm0
	movl	248(%esp), %ebx
	movss	LC0, %xmm1
	movss	184(%esp), %xmm2
	divss	%xmm0, %xmm1
	mulss	%xmm1, %xmm2
	mulss	188(%esp), %xmm1
	cvttss2sil	%xmm2, %eax
	subl	%ebx, %eax
	movl	240(%esp), %ebx
	sarl	$4, %eax
	movl	%eax, %ecx
	cvttss2sil	%xmm1, %eax
	subl	%ebx, %eax
	sarl	$4, %eax
	movl	%eax, %edx
	movl	$16, %eax
L630:
	movzwl	144(%esp), %ebx
	addl	248(%esp), %ebx
	movw	%cx, 128(%esp)
	movw	%bx, 168(%esp)
	movzwl	136(%esp), %ebx
	addl	240(%esp), %ebx
	movl	224(%esp), %esi
	movw	%dx, 132(%esp)
	movw	%bx, 176(%esp)
	imull	$-4, %eax, %ebx
	movl	%ecx, 56(%esp)
	movl	%edx, 52(%esp)
	movl	%ebx, 80(%esp)
	addl	%esi, %ebx
	movl	%ebx, 148(%esp)
	movl	%esi, %ebx
	movl	%eax, %esi
L632:
	movzwl	168(%esp), %eax
	movl	$16, %ecx
	subl	__ZL6gglogx.lto_priv.0, %ecx
	movzwl	176(%esp), %edx
	sarl	%cl, %eax
	movzbl	__ZL6gglogy.lto_priv.0, %ecx
	sall	%cl, %eax
	movl	$16, %ecx
	subl	__ZL6gglogy.lto_priv.0, %ecx
	addl	__ZL5ggbuf.lto_priv.0, %eax
	sarl	%cl, %edx
	movzbl	(%eax,%edx), %eax
	cmpb	$-1, %al
	je	L631
	movzbl	(%edi), %edx
	addl	(%ebx), %eax
	movzbl	(%eax), %eax
	sall	$8, %edx
	orl	%eax, %edx
	movl	152(%esp), %eax
	movzbl	(%eax,%edx), %eax
	movb	%al, (%edi)
L631:
	movl	148(%esp), %eax
	subl	$4, %ebx
	movzwl	128(%esp), %ecx
	addl	__ZL6ggpinc.lto_priv.0, %edi
	addw	%cx, 168(%esp)
	movzwl	132(%esp), %ecx
	addw	%cx, 176(%esp)
	cmpl	%eax, %ebx
	jne	L632
	jmp	L974
L975:
	movl	56(%esp), %edx
	movl	%esi, %eax
	movl	240(%esp), %esi
	subl	$1, %eax
	movl	80(%esp), %ecx
	subl	$16, 236(%esp)
	movl	%edx, %ebx
	addl	%edx, %esi
	imull	%eax, %ebx
	imull	%ecx, %eax
	addl	%esi, %ebx
	movl	%ebx, 240(%esp)
	movl	248(%esp), %ebx
	addl	%ecx, %ebx
	addl	%ebx, %eax
	movl	128(%esp), %ebx
	movl	%eax, 248(%esp)
	movl	224(%esp), %eax
	addl	%ebx, %eax
	movl	%eax, 224(%esp)
L611:
	cmpl	$0, 236(%esp)
	jle	L628
	cmpl	$15, 236(%esp)
	jle	L613
	addss	156(%esp), %xmm0
	movl	248(%esp), %ebx
	movss	LC0, %xmm1
	movss	184(%esp), %xmm2
	divss	%xmm0, %xmm1
	mulss	%xmm1, %xmm2
	mulss	188(%esp), %xmm1
	cvttss2sil	%xmm2, %eax
	subl	%ebx, %eax
	movl	240(%esp), %ebx
	sarl	$4, %eax
	movl	%eax, %ecx
	cvttss2sil	%xmm1, %eax
	subl	%ebx, %eax
	sarl	$4, %eax
	movl	%eax, %edx
	movl	$16, %eax
L614:
	movzwl	144(%esp), %ebx
	addl	248(%esp), %ebx
	movw	%cx, 132(%esp)
	movw	%bx, 168(%esp)
	movzwl	136(%esp), %ebx
	addl	240(%esp), %ebx
	movl	224(%esp), %esi
	movw	%dx, 148(%esp)
	movw	%bx, 176(%esp)
	imull	$-4, %eax, %ebx
	movl	%ecx, 80(%esp)
	movl	%edx, 56(%esp)
	movl	%ebx, 128(%esp)
	addl	%esi, %ebx
	movl	%ebx, 152(%esp)
	movl	%esi, %ebx
	movl	%eax, %esi
L616:
	movzwl	168(%esp), %eax
	movl	$16, %ecx
	subl	__ZL6gglogx.lto_priv.0, %ecx
	movzwl	176(%esp), %edx
	sarl	%cl, %eax
	movzbl	__ZL6gglogy.lto_priv.0, %ecx
	sall	%cl, %eax
	movl	$16, %ecx
	subl	__ZL6gglogy.lto_priv.0, %ecx
	addl	__ZL5ggbuf.lto_priv.0, %eax
	sarl	%cl, %edx
	movzbl	(%eax,%edx), %eax
	cmpb	$-1, %al
	je	L615
	movl	(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	movb	%al, (%edi)
L615:
	movl	152(%esp), %eax
	subl	$4, %ebx
	movzwl	132(%esp), %ecx
	addl	__ZL6ggpinc.lto_priv.0, %edi
	addw	%cx, 168(%esp)
	movzwl	148(%esp), %ecx
	addw	%cx, 176(%esp)
	cmpl	%eax, %ebx
	jne	L616
	jmp	L975
L973:
	call	__ZN6loguru24current_verbosity_cutoffEv
	cmpl	$-2, %eax
	jl	L628
	cmpl	$16384, %ebx
	movl	220(%esp), %eax
	movl	$6835, 20(%esp)
	cmovnb	%ebx, %edi
	movl	$LC27, 16(%esp)
	movl	%eax, 28(%esp)
	movl	%edi, 24(%esp)
	movl	$LC31, 12(%esp)
	movl	$6835, 8(%esp)
	movl	$LC29, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L628:
	movss	108(%esp), %xmm6
	addss	64(%esp), %xmm6
	movss	112(%esp), %xmm5
	addss	116(%esp), %xmm5
	addl	$1, 192(%esp)
	movl	68(%esp), %ebx
	movss	%xmm6, 108(%esp)
	movss	100(%esp), %xmm6
	addss	60(%esp), %xmm6
	addl	%ebx, 72(%esp)
	movl	192(%esp), %eax
	movss	%xmm5, 112(%esp)
	movss	%xmm6, 100(%esp)
	cmpl	%eax, 200(%esp)
	jne	L657
	jmp	L405
L629:
	movl	236(%esp), %ebx
	xorps	%xmm1, %xmm1
	movss	184(%esp), %xmm2
	movl	248(%esp), %ecx
	cvtsi2ssl	%ebx, %xmm1
	movl	%ebx, 4(%esp)
	mulss	160(%esp), %xmm1
	addss	%xmm1, %xmm0
	movss	LC0, %xmm1
	movss	%xmm0, 148(%esp)
	divss	%xmm0, %xmm1
	movss	%xmm1, 168(%esp)
	mulss	%xmm1, %xmm2
	cvttss2sil	%xmm2, %eax
	subl	%ecx, %eax
	movl	%eax, (%esp)
	call	_tabledivide32_branchfree.lto_priv.0
	movl	240(%esp), %ecx
	movl	%ebx, 4(%esp)
	movss	168(%esp), %xmm1
	movl	%eax, 176(%esp)
	mulss	188(%esp), %xmm1
	cvttss2sil	%xmm1, %eax
	subl	%ecx, %eax
	movl	%eax, (%esp)
	call	_tabledivide32_branchfree.lto_priv.0
	movl	176(%esp), %ecx
	movss	148(%esp), %xmm0
	movl	%eax, %edx
	movl	%ebx, %eax
	jmp	L630
L622:
	movl	236(%esp), %ebx
	xorps	%xmm1, %xmm1
	movss	184(%esp), %xmm2
	movl	248(%esp), %ecx
	cvtsi2ssl	%ebx, %xmm1
	movl	%ebx, 4(%esp)
	mulss	160(%esp), %xmm1
	addss	%xmm1, %xmm0
	movss	LC0, %xmm1
	movss	%xmm0, 148(%esp)
	divss	%xmm0, %xmm1
	movss	%xmm1, 168(%esp)
	mulss	%xmm1, %xmm2
	cvttss2sil	%xmm2, %eax
	subl	%ecx, %eax
	movl	%eax, (%esp)
	call	_tabledivide32_branchfree.lto_priv.0
	movl	240(%esp), %ecx
	movl	%ebx, 4(%esp)
	movss	168(%esp), %xmm1
	movl	%eax, 176(%esp)
	mulss	188(%esp), %xmm1
	cvttss2sil	%xmm1, %eax
	subl	%ecx, %eax
	movl	%eax, (%esp)
	call	_tabledivide32_branchfree.lto_priv.0
	movl	176(%esp), %ecx
	movss	148(%esp), %xmm0
	movl	%eax, %edx
	movl	%ebx, %eax
	jmp	L623
L710:
	movl	188(%esp), %eax
	addl	%ebx, %eax
	negl	%eax
	jmp	L500
L485:
	movl	240(%esp), %eax
	movl	%ebx, %ecx
	sarb	$7, %cl
	imull	%edx
	movl	240(%esp), %eax
	movsbl	%cl, %ecx
	xorl	%ecx, %eax
	subl	%ecx, %eax
	movl	%ebx, %ecx
	addl	%edx, %eax
	testb	$64, %bl
	cmove	%edx, %eax
	movl	%eax, %edx
	shrl	$31, %eax
	sarl	%cl, %edx
	addl	%eax, %edx
	jmp	L933
L932:
	movl	248(%esp), %eax
	movl	__ZL5swall.lto_priv.0, %edx
	movl	4(%eax), %ecx
	movswl	28(%eax), %ebx
	movl	%edx, 224(%esp)
	movzbl	21(%eax), %eax
	movl	__ZL5lwall.lto_priv.0, %edx
	movl	%eax, 240(%esp)
	movl	%edx, 236(%esp)
	jmp	L931
L595:
	cmpl	$0, _waloff(,%ebx,4)
	je	L976
L597:
	movl	_waloff(,%ebx,4), %ebx
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	L596
L504:
	movl	188(%esp), %esi
	movl	192(%esp), %edi
	movl	%ecx, 164(%esp)
	subl	_globalposx, %edi
	movl	%esi, %eax
	subl	%ebx, %eax
	movl	%eax, 8(%esp)
	movl	%eax, %ebx
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	176(%esp), %eax
	imull	%esi
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%esi, 188(%esp)
	addl	%edi, %eax
	movl	216(%esp), %edi
	subl	_globalposy, %edi
	movl	%ebx, 8(%esp)
	movl	%eax, 192(%esp)
	movl	%esi, %eax
	imull	168(%esp)
	sarl	$31, %ebx
	movl	%ebx, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	_cosviewingrangeglobalang, %edx
	leal	(%edi,%eax), %ecx
	movl	_sinviewingrangeglobalang, %edi
	movl	192(%esp), %eax
	movl	%ecx, 216(%esp)
	movl	%ecx, %esi
/APP
 # 6314 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	testl	%eax, %eax
	jle	L494
	movl	192(%esp), %esi
	movl	_cosglobalang, %edx
	movl	_singlobalang, %edi
	movl	216(%esp), %eax
	negl	%esi
/APP
 # 6318 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edi
	movl	%ecx, %eax
	movl	%ecx, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%edi, %eax
	imull	_halfxdimen
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	cmpl	$-2147483648, %edi
	adcl	_halfxdimen, %eax
	cmpl	$0, 188(%esp)
	movl	164(%esp), %ecx
	js	L977
	movl	208(%esp), %ebx
	cmpl	%eax, %ebx
	cmovle	%ebx, %eax
	movl	%eax, 208(%esp)
	jmp	L499
L613:
	movl	236(%esp), %ebx
	xorps	%xmm1, %xmm1
	movss	184(%esp), %xmm2
	movl	248(%esp), %ecx
	cvtsi2ssl	%ebx, %xmm1
	movl	%ebx, 4(%esp)
	mulss	160(%esp), %xmm1
	addss	%xmm1, %xmm0
	movss	LC0, %xmm1
	movss	%xmm0, 152(%esp)
	divss	%xmm0, %xmm1
	movss	%xmm1, 168(%esp)
	mulss	%xmm1, %xmm2
	cvttss2sil	%xmm2, %eax
	subl	%ecx, %eax
	movl	%eax, (%esp)
	call	_tabledivide32_branchfree.lto_priv.0
	movl	240(%esp), %ecx
	movl	%ebx, 4(%esp)
	movss	168(%esp), %xmm1
	movl	%eax, 176(%esp)
	mulss	188(%esp), %xmm1
	cvttss2sil	%xmm1, %eax
	subl	%ecx, %eax
	movl	%eax, (%esp)
	call	_tabledivide32_branchfree.lto_priv.0
	movl	176(%esp), %ecx
	movss	152(%esp), %xmm0
	movl	%eax, %edx
	movl	%ebx, %eax
	jmp	L614
L971:
	movswl	236(%esp), %eax
	call	_tileLoad.isra.0
	jmp	L470
L966:
	movl	__ZL5uwall.lto_priv.0, %ecx
	addl	%eax, %eax
	movl	_searchy, %edx
	movswl	(%ecx,%eax), %ecx
	cmpl	%edx, %ecx
	jg	L526
	movl	__ZL5dwall.lto_priv.0, %ecx
	movswl	(%ecx,%eax), %eax
	cmpl	%eax, %edx
	jg	L526
	movw	$1, _searchit
	jmp	L526
L610:
	cmpl	$0, 140(%esp)
	je	L978
	movl	_globalblend, %eax
	testb	$2, 217(%esp)
	movl	_blendtable(,%eax,4), %eax
	movl	%eax, 152(%esp)
	movswl	104(%esp), %eax
	movl	%eax, 168(%esp)
	je	L644
L643:
	cmpl	$0, 236(%esp)
	jle	L628
	cmpl	$15, 236(%esp)
	jle	L645
	addss	156(%esp), %xmm0
	movl	248(%esp), %ebx
	movl	$16, 80(%esp)
	movss	LC0, %xmm1
	movss	184(%esp), %xmm2
	divss	%xmm0, %xmm1
	mulss	%xmm1, %xmm2
	mulss	188(%esp), %xmm1
	cvttss2sil	%xmm2, %eax
	subl	%ebx, %eax
	movl	240(%esp), %ebx
	sarl	$4, %eax
	movl	%eax, %edx
	cvttss2sil	%xmm1, %eax
	subl	%ebx, %eax
	sarl	$4, %eax
	movl	%eax, %ecx
L646:
	movzwl	144(%esp), %eax
	addl	248(%esp), %eax
	movw	%dx, 128(%esp)
	movw	%ax, 176(%esp)
	movzwl	136(%esp), %eax
	addl	240(%esp), %eax
	movl	224(%esp), %ebx
	movw	%cx, 132(%esp)
	movl	%eax, %esi
	imull	$-4, 80(%esp), %eax
	movl	%edx, 52(%esp)
	movl	%ecx, 48(%esp)
	movl	%eax, 56(%esp)
	addl	%ebx, %eax
	movl	%eax, 148(%esp)
L648:
	movzwl	176(%esp), %eax
	movl	208(%esp), %edx
/APP
 # 7043 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	168(%esp), %edx
	movzwl	%si, %eax
/APP
 # 7043 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	168(%esp), %edx
	addl	__ZL5ggbuf.lto_priv.0, %eax
	imull	%edx, %ecx
	movzbl	(%eax,%ecx), %eax
	cmpb	$-1, %al
	je	L647
	addl	(%ebx), %eax
	movzbl	(%edi), %edx
	movzbl	(%eax), %eax
	movl	152(%esp), %ecx
	sall	$8, %eax
	orl	%edx, %eax
	movzbl	(%ecx,%eax), %eax
	movb	%al, (%edi)
L647:
	movzwl	128(%esp), %ecx
	movl	%esi, %eax
	addw	%cx, 176(%esp)
	subl	$4, %ebx
	movzwl	132(%esp), %ecx
	addl	__ZL6ggpinc.lto_priv.0, %edi
	addl	%ecx, %eax
	movl	%eax, %esi
	movl	148(%esp), %eax
	cmpl	%eax, %ebx
	jne	L648
	movl	48(%esp), %ecx
	movl	80(%esp), %eax
	movl	240(%esp), %esi
	movl	52(%esp), %edx
	subl	$1, %eax
	movl	%ecx, %ebx
	subl	$16, 236(%esp)
	imull	%eax, %ebx
	addl	%ecx, %esi
	imull	%edx, %eax
	addl	%esi, %ebx
	movl	%ebx, 240(%esp)
	movl	248(%esp), %ebx
	addl	%edx, %ebx
	addl	%ebx, %eax
	movl	56(%esp), %ebx
	movl	%eax, 248(%esp)
	movl	224(%esp), %eax
	addl	%ebx, %eax
	movl	%eax, 224(%esp)
	jmp	L643
L979:
	movl	48(%esp), %ecx
	movl	80(%esp), %eax
	movl	240(%esp), %esi
	movl	52(%esp), %edx
	subl	$1, %eax
	movl	%ecx, %ebx
	subl	$16, 236(%esp)
	imull	%eax, %ebx
	addl	%ecx, %esi
	imull	%edx, %eax
	addl	%esi, %ebx
	movl	%ebx, 240(%esp)
	movl	248(%esp), %ebx
	addl	%edx, %ebx
	addl	%ebx, %eax
	movl	56(%esp), %ebx
	movl	%eax, 248(%esp)
	movl	224(%esp), %eax
	addl	%ebx, %eax
	movl	%eax, 224(%esp)
L644:
	cmpl	$0, 236(%esp)
	jle	L628
	cmpl	$15, 236(%esp)
	jle	L651
	addss	156(%esp), %xmm0
	movl	248(%esp), %ebx
	movl	$16, 80(%esp)
	movss	LC0, %xmm1
	movss	184(%esp), %xmm2
	divss	%xmm0, %xmm1
	mulss	%xmm1, %xmm2
	mulss	188(%esp), %xmm1
	cvttss2sil	%xmm2, %eax
	subl	%ebx, %eax
	movl	240(%esp), %ebx
	sarl	$4, %eax
	movl	%eax, %edx
	cvttss2sil	%xmm1, %eax
	subl	%ebx, %eax
	sarl	$4, %eax
	movl	%eax, %ecx
L652:
	movzwl	144(%esp), %eax
	addl	248(%esp), %eax
	movw	%dx, 128(%esp)
	movw	%ax, 176(%esp)
	movzwl	136(%esp), %eax
	addl	240(%esp), %eax
	movl	224(%esp), %ebx
	movw	%cx, 132(%esp)
	movl	%eax, %esi
	imull	$-4, 80(%esp), %eax
	movl	%edx, 52(%esp)
	movl	%ecx, 48(%esp)
	movl	%eax, 56(%esp)
	addl	%ebx, %eax
	movl	%eax, 148(%esp)
L654:
	movzwl	176(%esp), %eax
	movl	208(%esp), %edx
/APP
 # 7081 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	168(%esp), %edx
	movzwl	%si, %eax
/APP
 # 7081 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	168(%esp), %edx
	addl	__ZL5ggbuf.lto_priv.0, %eax
	imull	%edx, %ecx
	movzbl	(%eax,%ecx), %eax
	cmpb	$-1, %al
	je	L653
	movzbl	(%edi), %edx
	addl	(%ebx), %eax
	movzbl	(%eax), %eax
	movl	152(%esp), %ecx
	sall	$8, %edx
	orl	%edx, %eax
	movzbl	(%ecx,%eax), %eax
	movb	%al, (%edi)
L653:
	movzwl	128(%esp), %ecx
	movl	%esi, %eax
	addw	%cx, 176(%esp)
	subl	$4, %ebx
	movzwl	132(%esp), %ecx
	addl	__ZL6ggpinc.lto_priv.0, %edi
	addl	%ecx, %eax
	movl	%eax, %esi
	movl	148(%esp), %eax
	cmpl	%eax, %ebx
	jne	L654
	jmp	L979
L651:
	movl	236(%esp), %ebx
	xorps	%xmm1, %xmm1
	movss	184(%esp), %xmm2
	movl	248(%esp), %ecx
	cvtsi2ssl	%ebx, %xmm1
	movl	%ebx, 4(%esp)
	mulss	160(%esp), %xmm1
	addss	%xmm1, %xmm0
	movss	LC0, %xmm1
	movss	%xmm0, 132(%esp)
	divss	%xmm0, %xmm1
	movss	%xmm1, 148(%esp)
	mulss	%xmm1, %xmm2
	cvttss2sil	%xmm2, %eax
	subl	%ecx, %eax
	movl	%eax, (%esp)
	call	_tabledivide32_branchfree.lto_priv.0
	movl	240(%esp), %ecx
	movl	%ebx, 4(%esp)
	movss	148(%esp), %xmm1
	movl	%eax, 176(%esp)
	mulss	188(%esp), %xmm1
	cvttss2sil	%xmm1, %eax
	subl	%ecx, %eax
	movl	%eax, (%esp)
	call	_tabledivide32_branchfree.lto_priv.0
	movl	%ebx, 80(%esp)
	movl	176(%esp), %edx
	movss	132(%esp), %xmm0
	movl	%eax, %ecx
	jmp	L652
L645:
	movl	236(%esp), %ebx
	xorps	%xmm1, %xmm1
	movss	184(%esp), %xmm2
	movl	248(%esp), %ecx
	cvtsi2ssl	%ebx, %xmm1
	movl	%ebx, 4(%esp)
	mulss	160(%esp), %xmm1
	addss	%xmm1, %xmm0
	movss	LC0, %xmm1
	movss	%xmm0, 132(%esp)
	divss	%xmm0, %xmm1
	movss	%xmm1, 148(%esp)
	mulss	%xmm1, %xmm2
	cvttss2sil	%xmm2, %eax
	subl	%ecx, %eax
	movl	%eax, (%esp)
	call	_tabledivide32_branchfree.lto_priv.0
	movl	240(%esp), %ecx
	movl	%ebx, 4(%esp)
	movss	148(%esp), %xmm1
	movl	%eax, 176(%esp)
	mulss	188(%esp), %xmm1
	cvttss2sil	%xmm1, %eax
	subl	%ecx, %eax
	movl	%eax, (%esp)
	call	_tabledivide32_branchfree.lto_priv.0
	movl	%ebx, 80(%esp)
	movl	176(%esp), %edx
	movss	132(%esp), %xmm0
	movl	%eax, %ecx
	jmp	L646
L978:
	movswl	104(%esp), %eax
	movl	%eax, 168(%esp)
L635:
	cmpl	$0, 236(%esp)
	jle	L628
	cmpl	$15, 236(%esp)
	jle	L637
	addss	156(%esp), %xmm0
	movl	248(%esp), %ebx
	movl	$16, 128(%esp)
	movss	LC0, %xmm1
	movss	184(%esp), %xmm2
	divss	%xmm0, %xmm1
	mulss	%xmm1, %xmm2
	mulss	188(%esp), %xmm1
	cvttss2sil	%xmm2, %eax
	subl	%ebx, %eax
	movl	240(%esp), %ebx
	sarl	$4, %eax
	movl	%eax, %edx
	cvttss2sil	%xmm1, %eax
	subl	%ebx, %eax
	sarl	$4, %eax
	movl	%eax, %ecx
L638:
	movzwl	144(%esp), %eax
	addl	248(%esp), %eax
	movw	%dx, 132(%esp)
	movw	%ax, 176(%esp)
	movzwl	136(%esp), %eax
	addl	240(%esp), %eax
	movl	224(%esp), %ebx
	movw	%cx, 148(%esp)
	movl	%eax, %esi
	imull	$-4, 128(%esp), %eax
	movl	%edx, 56(%esp)
	movl	%ecx, 52(%esp)
	movl	%eax, 80(%esp)
	addl	%ebx, %eax
	movl	%eax, 152(%esp)
L640:
	movzwl	176(%esp), %eax
	movl	208(%esp), %edx
/APP
 # 7005 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	168(%esp), %edx
	movzwl	%si, %eax
/APP
 # 7005 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	168(%esp), %edx
	addl	__ZL5ggbuf.lto_priv.0, %eax
	imull	%edx, %ecx
	movzbl	(%eax,%ecx), %eax
	cmpb	$-1, %al
	je	L639
	movl	(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	movb	%al, (%edi)
L639:
	movzwl	132(%esp), %ecx
	movl	%esi, %eax
	addw	%cx, 176(%esp)
	subl	$4, %ebx
	movzwl	148(%esp), %ecx
	addl	__ZL6ggpinc.lto_priv.0, %edi
	addl	%ecx, %eax
	movl	%eax, %esi
	movl	152(%esp), %eax
	cmpl	%eax, %ebx
	jne	L640
	movl	52(%esp), %ecx
	movl	128(%esp), %eax
	movl	240(%esp), %esi
	movl	56(%esp), %edx
	subl	$1, %eax
	movl	%ecx, %ebx
	subl	$16, 236(%esp)
	imull	%eax, %ebx
	addl	%ecx, %esi
	imull	%edx, %eax
	addl	%esi, %ebx
	movl	%ebx, 240(%esp)
	movl	248(%esp), %ebx
	addl	%edx, %ebx
	addl	%ebx, %eax
	movl	80(%esp), %ebx
	movl	%eax, 248(%esp)
	movl	224(%esp), %eax
	addl	%ebx, %eax
	movl	%eax, 224(%esp)
	jmp	L635
L637:
	movl	236(%esp), %ebx
	xorps	%xmm1, %xmm1
	movss	184(%esp), %xmm2
	movl	248(%esp), %ecx
	cvtsi2ssl	%ebx, %xmm1
	movl	%ebx, 4(%esp)
	mulss	160(%esp), %xmm1
	addss	%xmm1, %xmm0
	movss	LC0, %xmm1
	movss	%xmm0, 148(%esp)
	divss	%xmm0, %xmm1
	movss	%xmm1, 152(%esp)
	mulss	%xmm1, %xmm2
	cvttss2sil	%xmm2, %eax
	subl	%ecx, %eax
	movl	%eax, (%esp)
	call	_tabledivide32_branchfree.lto_priv.0
	movl	240(%esp), %ecx
	movl	%ebx, 4(%esp)
	movss	152(%esp), %xmm1
	movl	%eax, 176(%esp)
	mulss	188(%esp), %xmm1
	cvttss2sil	%xmm1, %eax
	subl	%ecx, %eax
	movl	%eax, (%esp)
	call	_tabledivide32_branchfree.lto_priv.0
	movl	%ebx, 128(%esp)
	movl	176(%esp), %edx
	movss	148(%esp), %xmm0
	movl	%eax, %ecx
	jmp	L638
L956:
	addl	%eax, %eax
	movl	_searchy, %ebx
	movswl	(%ecx,%eax), %ecx
	cmpl	%ebx, %ecx
	jg	L458
	movswl	(%edx,%eax), %eax
	cmpl	%eax, %ebx
	jge	L458
	movw	$1, _searchit
	jmp	L458
L481:
	movl	$30, %ecx
	movl	$1, %edx
	movl	$1, %esi
	subl	%eax, %ecx
	xorl	%eax, %eax
	sall	%cl, %edx
	movzbl	224(%esp), %ecx
/APP
 # 477 "source/build/include/libdivide.h" 1
	divl %ebx
 # 0 "" 2
/NO_APP
	movl	%eax, 216(%esp)
	movl	%ebx, %eax
	sall	%cl, %esi
	subl	%edx, %eax
	cmpl	%esi, %eax
	jnb	L483
	movzbl	224(%esp), %eax
	subl	$1, %eax
L484:
	movl	216(%esp), %ebx
	movl	208(%esp), %esi
	movl	%eax, %ecx
	orl	$-128, %ecx
	leal	1(%ebx), %edx
	testl	%esi, %esi
	notl	%ebx
	cmovs	%ecx, %eax
	cmovs	%ebx, %edx
	jmp	L482
L972:
	call	__ZN6loguru24current_verbosity_cutoffEv
	cmpl	$-2, %eax
	jl	L916
	movl	220(%esp), %eax
	movl	%edi, 24(%esp)
	movl	$6814, 20(%esp)
	movl	%eax, 28(%esp)
	movl	$LC27, 16(%esp)
	movl	$LC28, 12(%esp)
	movl	$6814, 8(%esp)
	movl	$LC29, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L916
L678:
	movl	224(%esp), %eax
	movl	236(%esp), %ebx
	movl	192(%esp), %ecx
	jmp	L428
L976:
	movl	%ebx, %eax
	call	_tileLoad.isra.0
	jmp	L597
L968:
	movl	__ZL5uwall.lto_priv.0, %ecx
	addl	%eax, %eax
	movl	_searchy, %edx
	movswl	(%ecx,%eax), %ecx
	cmpl	%edx, %ecx
	jg	L593
	movl	__ZL5dwall.lto_priv.0, %ecx
	movswl	(%ecx,%eax), %eax
	cmpl	%eax, %edx
	jg	L593
	movw	$1, _searchit
	jmp	L593
L483:
	leal	(%edx,%edx), %ecx
	cmpl	%ebx, %ecx
	setnb	%al
	cmpl	%edx, %ecx
	setb	%dl
	orl	%edx, %eax
	movl	216(%esp), %edx
	movzbl	%al, %eax
	addl	%edx, %edx
	addl	%edx, %eax
	movl	%eax, 216(%esp)
	movzbl	224(%esp), %eax
	orl	$64, %eax
	jmp	L484
L977:
	movl	224(%esp), %ebx
	cmpl	%eax, %ebx
	cmovge	%ebx, %eax
	movl	%eax, 224(%esp)
	jmp	L499
	.cfi_endproc
LFE4:
	.section .rdata,"dr"
LC34:
	.ascii "Masked wall %i\0"
LC35:
	.ascii "source/build/src/polymer.cpp\0"
	.text
	.p2align 4
	.globl	__ZL20renderDrawMaskedWalls.lto_priv.0
	.def	__ZL20renderDrawMaskedWalls.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL20renderDrawMaskedWalls.lto_priv.0:
LFB14:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movl	%ebx, 32(%esp)
	.cfi_offset 3, -20
	movswl	%ax, %ebx
	movl	_rendmode, %eax
	testl	%eax, %eax
	jne	L1041
	movl	%edi, 40(%esp)
	movl	_sector, %eax
	movl	%esi, 36(%esp)
	movl	%ebp, 44(%esp)
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	movswl	_maskwall(%ebx,%ebx), %ebp
	movswl	_thesector(%ebp,%ebp), %esi
	movswl	_thewall(%ebp,%ebp), %ebx
	leal	(%esi,%esi,4), %edx
	sall	$5, %ebx
	addl	_wall, %ebx
	leal	(%eax,%edx,8), %edi
	movswl	12(%ebx), %edx
	leal	(%edx,%edx,4), %edx
	leal	(%eax,%edx,8), %eax
	movl	4(%edi), %edx
	movl	4(%eax), %ecx
	movl	8(%eax), %eax
	cmpl	%edx, %ecx
	cmovge	%ecx, %edx
	movl	%esi, %ecx
	movl	%edx, 20(%esp)
	movl	8(%edi), %edx
	movl	$0, (%esp)
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%ebp, %edx
	movl	%eax, 24(%esp)
	movl	__ZL5uwall.lto_priv.0, %eax
	call	__ZL8wallmostPsiic.lto_priv.0
	movswl	12(%ebx), %ecx
	movl	$0, (%esp)
	movl	%ebp, %edx
	movl	__ZL4uplc.lto_priv.0, %eax
	call	__ZL8wallmostPsiic.lto_priv.0
	movl	_xb1(,%ebp,4), %eax
	cmpl	__ZL3xb2.lto_priv.0(,%ebp,4), %eax
	jg	L992
	.p2align 6
	.p2align 4
	.p2align 3
L994:
	movl	__ZL4uplc.lto_priv.0, %edx
	movzwl	(%edx,%eax,2), %ecx
	movl	__ZL5uwall.lto_priv.0, %edx
	cmpw	(%edx,%eax,2), %cx
	jle	L993
	movw	%cx, (%edx,%eax,2)
L993:
	addl	$1, %eax
	cmpl	__ZL3xb2.lto_priv.0(,%ebp,4), %eax
	jle	L994
L992:
	movl	$1, (%esp)
	movl	__ZL5dwall.lto_priv.0, %eax
	movl	%esi, %ecx
	movl	%ebp, %edx
	call	__ZL8wallmostPsiic.lto_priv.0
	movswl	12(%ebx), %ecx
	movl	$1, (%esp)
	movl	%ebp, %edx
	movl	__ZL4dplc.lto_priv.0, %eax
	call	__ZL8wallmostPsiic.lto_priv.0
	movl	_xb1(,%ebp,4), %eax
	cmpl	%eax, __ZL3xb2.lto_priv.0(,%ebp,4)
	jl	L995
	.p2align 6
	.p2align 4
	.p2align 3
L997:
	movl	__ZL4dplc.lto_priv.0, %edx
	movzwl	(%edx,%eax,2), %ecx
	movl	__ZL5dwall.lto_priv.0, %edx
	cmpw	(%edx,%eax,2), %cx
	jge	L996
	movw	%cx, (%edx,%eax,2)
L996:
	addl	$1, %eax
	cmpl	__ZL3xb2.lto_priv.0(,%ebp,4), %eax
	jle	L997
L995:
	movswl	18(%ebx), %edx
	movl	%ebx, %eax
	call	__ZL19setup_globals_wall1PK11uwalltypev7i.lto_priv.0
	movl	24(%esp), %eax
	movzbl	32(%edi), %edx
	movl	20(%esp), %ecx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__ZL19setup_globals_wall2PK11uwalltypev7hii.lto_priv.0
	movl	%ebx, %edx
	movl	%ebp, %eax
	call	__ZL8prepwalliPK11uwalltypev7.lto_priv.0
	movl	__ZL12smostwallcnt.lto_priv.0, %edi
	subl	$1, %edi
	js	L998
	movl	%ebp, %edx
	.p2align 4
	.p2align 3
L1008:
	movl	__ZL9smostwall.lto_priv.0(,%edi,4), %eax
	movl	__ZL3xb2.lto_priv.0(,%edx,4), %esi
	movl	_xb1(,%eax,4), %ebx
	cmpl	%esi, %ebx
	jg	L999
	movl	__ZL3xb2.lto_priv.0(,%eax,4), %ebp
	movl	_xb1(,%edx,4), %ecx
	cmpl	%ecx, %ebp
	jl	L999
	movl	%edx, 20(%esp)
	movl	%ecx, 24(%esp)
	call	_wallfront
	movl	20(%esp), %edx
	testl	%eax, %eax
	jne	L999
	movl	24(%esp), %ecx
	cmpl	%ecx, %ebx
	movl	%ecx, %eax
	cmovge	%ebx, %eax
	cmpl	%ebp, %esi
	movl	%eax, 24(%esp)
	movl	%ebp, %eax
	cmovle	%esi, %eax
	movl	%eax, 20(%esp)
	movzbl	__ZL13smostwalltype.lto_priv.0(%edi), %eax
	cmpb	$1, %al
	je	L1000
	cmpb	$2, %al
	je	L1001
	testb	%al, %al
	jne	L999
	movl	20(%esp), %eax
	cmpl	%eax, 24(%esp)
	jg	L999
	cmpl	%ebp, %esi
	jg	L1018
	cmpl	%ecx, %ebx
	jle	L980
L1018:
	movl	20(%esp), %ebx
	movl	24(%esp), %eax
	addl	$1, %ebx
	.p2align 5
	.p2align 4
	.p2align 3
L1003:
	movl	__ZL5dwall.lto_priv.0, %ecx
	xorl	%esi, %esi
	movw	%si, (%ecx,%eax,2)
	addl	$1, %eax
	cmpl	%ebx, %eax
	jne	L1003
	.p2align 4
	.p2align 3
L999:
	subl	$1, %edi
	jnb	L1008
L1042:
	movl	%edx, %ebp
L998:
	cmpw	$0, _searchit
	jle	L1009
	movl	_searchx, %eax
	cmpl	%eax, _xb1(,%ebp,4)
	jg	L1009
	cmpl	__ZL3xb2.lto_priv.0(,%ebp,4), %eax
	jg	L1009
	movl	__ZL5uwall.lto_priv.0, %ecx
	movl	_searchy, %edx
	movswl	(%ecx,%eax,2), %ecx
	cmpl	%edx, %ecx
	jg	L1009
	movl	__ZL5dwall.lto_priv.0, %ecx
	movswl	(%ecx,%eax,2), %eax
	cmpl	%eax, %edx
	jg	L1009
	movl	$1, %ebx
	movw	%bx, _searchit
	.p2align 4
	.p2align 3
L1009:
	movl	_globalorientation, %ebx
	testb	$-128, %bl
	jne	L1010
	movl	__ZL3xb2.lto_priv.0(,%ebp,4), %edx
	movl	_xb1(,%ebp,4), %eax
	xorl	%ecx, %ecx
	call	__ZL12maskwallscaniii.lto_priv.0
L1011:
	movl	$0, __ZL8globalht.lto_priv.0
L980:
	movl	36(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	40(%esp), %edi
	.cfi_restore 7
	movl	44(%esp), %ebp
	.cfi_restore 5
	movl	32(%esp), %ebx
	addl	$48, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1001:
	.cfi_restore_state
	movl	20(%esp), %eax
	movl	24(%esp), %esi
	cmpl	%eax, %esi
	jg	L999
	movl	__ZL10smoststart.lto_priv.0(,%edi,4), %ecx
	leal	1(%eax), %ebp
	movl	%esi, %eax
	subl	%ebx, %ecx
	addl	%esi, %ecx
	addl	%ecx, %ecx
	.p2align 6
	.p2align 4
	.p2align 3
L1007:
	movl	__ZL5smost.lto_priv.0, %ebx
	movzwl	(%ebx,%ecx), %esi
	movl	__ZL5dwall.lto_priv.0, %ebx
	cmpw	(%ebx,%eax,2), %si
	jge	L1006
	movw	%si, (%ebx,%eax,2)
L1006:
	addl	$1, %eax
	addl	$2, %ecx
	cmpl	%ebp, %eax
	jne	L1007
	subl	$1, %edi
	jnb	L1008
	jmp	L1042
	.p2align 4,,10
	.p2align 3
L1000:
	movl	20(%esp), %eax
	movl	24(%esp), %esi
	cmpl	%eax, %esi
	jg	L999
	movl	__ZL10smoststart.lto_priv.0(,%edi,4), %ecx
	leal	1(%eax), %ebp
	movl	%esi, %eax
	subl	%ebx, %ecx
	addl	%esi, %ecx
	addl	%ecx, %ecx
	.p2align 6
	.p2align 4
	.p2align 3
L1005:
	movl	__ZL5smost.lto_priv.0, %ebx
	movzwl	(%ebx,%ecx), %esi
	movl	__ZL5uwall.lto_priv.0, %ebx
	cmpw	(%ebx,%eax,2), %si
	jle	L1004
	movw	%si, (%ebx,%eax,2)
L1004:
	addl	$1, %eax
	addl	$2, %ecx
	cmpl	%ebp, %eax
	jne	L1005
	subl	$1, %edi
	jnb	L1008
	jmp	L1042
	.p2align 4,,10
	.p2align 3
L1010:
	movl	_wallext, %edx
	movswl	_thewall(%ebp,%ebp), %eax
	movzbl	(%edx,%eax), %eax
	xorl	%edx, %edx
	movl	_blendtable(,%eax,4), %ecx
	testl	%ecx, %ecx
	cmove	%edx, %eax
	cmpl	%eax, _globalblend
	jne	L1043
	andb	$2, %bh
	jne	L1044
L1014:
	call	_settransnormal
L1015:
	movl	__ZL3xb2.lto_priv.0(,%ebp,4), %edx
	movl	_xb1(,%ebp,4), %eax
	xorl	%ecx, %ecx
	call	__ZL17transmaskwallscaniii.lto_priv.0
	jmp	L1011
	.p2align 4,,10
	.p2align 3
L1041:
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movl	$3008, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L982
	movl	$3008, (%esp)
	call	*_glad_glEnable
	.cfi_def_cfa_offset 48
	movl	$1, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	movl	$1, (%esp)
	call	_inthash_add
L982:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L983
	movl	$3042, (%esp)
	call	*_glad_glEnable
	.cfi_def_cfa_offset 48
	movl	$1, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	movl	$1, (%esp)
	call	_inthash_add
L983:
	cmpl	$3, _rendmode
	je	L1045
	movl	%esi, 36(%esp)
	movl	%edi, 40(%esp)
	movl	%ebp, 44(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	cmpl	$2, _pr_verbosity
	jg	L1046
L985:
	movswl	_maskwall(%ebx,%ebx), %ebx
	movl	$2884, %edx
	movl	_sector, %ebp
	movzwl	_wallsect(%ebx,%ebx), %eax
	movl	_prwalls(,%ebx,4), %esi
	movl	%ebx, %edi
	movw	%ax, 24(%esp)
	movl	_wall, %eax
	movl	%eax, 28(%esp)
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L986
	movl	$2884, (%esp)
	call	*_glad_glEnable
	.cfi_def_cfa_offset 48
	movl	$1, %ecx
	movl	$2884, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	movl	$1, (%esp)
	call	_inthash_add
L986:
	leal	504(%esi), %eax
	movl	%eax, 20(%esp)
	cmpw	$2, _searchit
	je	L1047
	movswl	24(%esp), %eax
	movl	%ebx, %esi
	sall	$5, %esi
	leal	(%eax,%eax,4), %eax
	leal	0(%ebp,%eax,8), %edx
	movl	28(%esp), %eax
	movzbl	33(%edx), %ecx
	addl	%eax, %esi
	testb	%cl, %cl
	jne	L989
	movzbl	29(%edx), %ecx
L989:
	movl	_globalflags, %eax
	movzbl	32(%edx), %edx
	andl	$4, %eax
	jne	L1016
	movzbl	21(%esi), %edi
	testb	$2, _hictinting+1(,%edi,8)
	je	L1048
L990:
	call	_calc_and_apply_fog
	movzwl	14(%esi), %eax
	movl	_wallext, %edx
	movl	%eax, %ecx
	movzbl	(%edx,%ebx), %edx
	shrb	$7, %al
	shrw	$9, %cx
	movzbl	%al, %eax
	andl	$1, %ecx
	call	_handle_blend
	movl	20(%esp), %eax
	call	_polymer_drawplane.lto_priv.0
L988:
	movl	$2884, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L980
	movl	$2884, (%esp)
	call	*_glad_glDisable
	.cfi_def_cfa_offset 48
	xorl	%ecx, %ecx
	movl	$2884, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	movl	$1, (%esp)
	call	_inthash_add
	jmp	L980
	.p2align 4,,10
	.p2align 3
L1044:
	call	_settransreverse
	jmp	L1015
	.p2align 4,,10
	.p2align 3
L1043:
	movl	%eax, _globalblend
	movl	_blendtable(,%eax,4), %eax
	movl	%eax, (%esp)
	call	_fixtransluscence
	andb	$2, %bh
	je	L1014
	jmp	L1044
L1046:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L985
	movl	%ebx, 16(%esp)
	movl	$LC34, 12(%esp)
	movl	$1482, 8(%esp)
	movl	$LC35, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L985
L1045:
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movswl	_maskwall(%ebx,%ebx), %eax
	movl	32(%esp), %ebx
	movswl	_thewall(%eax,%eax), %eax
	addl	$48, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__ZL29polymost_drawmaskwallinternali.lto_priv.0
L1016:
	.cfi_def_cfa_offset 52
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	xorl	%eax, %eax
	jmp	L990
L1047:
	movl	%edi, %eax
	movl	648(%esi), %ebx
	movb	$4, 648(%esi)
	movb	%al, 649(%esi)
	movl	%edi, %eax
	movb	%ah, 650(%esi)
	movl	20(%esp), %eax
	movb	$-1, 651(%esi)
	call	_polymer_drawplane.lto_priv.0
	movl	%ebx, 648(%esi)
	jmp	L988
L1048:
	movsbl	20(%esi), %eax
	jmp	L990
	.cfi_endproc
LFE14:
	.p2align 4
	.globl	__ZL17renderFillPolygoni.lto_priv.0
	.def	__ZL17renderFillPolygoni.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL17renderFillPolygoni.lto_priv.0:
LFB21:
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
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	movl	_rendmode, %edx
	testl	%eax, %eax
	je	L1050
	xorl	%eax, %eax
	jmp	L1052
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1094:
	movl	%ecx, %eax
L1052:
	cmpl	%ebx, _xb1(,%eax,4)
	jb	L1051
	movl	$0, _xb1(,%eax,4)
L1051:
	leal	1(%eax), %ecx
	cmpl	%ecx, %ebx
	jne	L1094
	movl	%eax, 24(%esp)
	cmpl	$2, %edx
	jg	L1126
L1097:
	movl	24(%esp), %edx
	movl	$2147483647, %ecx
	movl	$-2147483648, %ebx
	.p2align 5
	.p2align 4
	.p2align 3
L1061:
	movl	_ry1(,%edx,4), %eax
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	cmpl	%eax, %ebx
	cmovl	%eax, %ebx
	subl	$1, %edx
	jnb	L1061
	movl	_ydim, %eax
	sarl	$12, %ebx
	movl	$0, %esi
	sarl	$12, %ecx
	cmovns	%ecx, %esi
	leal	-1(%eax), %edx
	cmpl	%eax, %ebx
	cmovge	%edx, %ebx
	leal	1(%esi), %edi
	movl	%edi, 40(%esp)
	cmpl	%esi, %ebx
	jl	L1127
	leal	1(%ebx), %eax
	movl	%esi, 32(%esp)
	leal	0(,%esi,4), %ecx
	xorl	%edx, %edx
	movl	%ebx, 28(%esp)
	subl	%esi, %eax
	movl	%eax, %ebp
	.p2align 6
	.p2align 4
	.p2align 3
L1065:
	movl	__ZL12nodesperline.lto_priv.0, %eax
	movl	__ZL5smost.lto_priv.0, %edi
	movl	__ZL5dotp1.lto_priv.0, %esi
	movl	%eax, %ebx
	sarl	%eax
	imull	%edx, %ebx
	addl	$1, %edx
	leal	(%edi,%ebx,2), %edi
	addl	%ebx, %eax
	movl	%edi, (%esi,%ecx)
	movl	__ZL5smost.lto_priv.0, %ebx
	leal	(%ebx,%eax,2), %ebx
	movl	__ZL5dotp2.lto_priv.0, %eax
	movl	%ebx, (%eax,%ecx)
	addl	$4, %ecx
	cmpl	%ebp, %edx
	jne	L1065
	movl	28(%esp), %ebx
	movl	32(%esp), %esi
	movl	_ydim, %ecx
	movl	24(%esp), %edi
	movl	%ebx, 44(%esp)
	movl	%esi, 48(%esp)
	.p2align 4
	.p2align 3
L1075:
	movl	_xb1(,%edi,4), %eax
	movl	%ecx, %ebp
	movl	_ry1(,%edi,4), %ebx
	sall	$12, %ebp
	movl	_ry1(,%eax,4), %edx
	subl	$1, %ebp
	testl	%ebx, %ebx
	jg	L1066
	testl	%edx, %edx
	jle	L1071
	movl	$0, 24(%esp)
	movl	$0, 28(%esp)
L1067:
	cmpl	%edx, %ebp
	cmovg	%edx, %ebp
	movl	%ebp, %esi
	sarl	$12, %esi
L1069:
	cmpl	%esi, 24(%esp)
	je	L1071
	movl	_rx1(,%eax,4), %edx
	movl	28(%esp), %eax
	movl	%ebp, %ebx
	movl	_rx1(,%edi,4), %ecx
	subl	%eax, %ebx
	movl	%edx, 32(%esp)
	movl	%ebx, %eax
	subl	%ecx, %edx
	movl	%ebx, 8(%esp)
	sarl	$31, %eax
	movl	%ecx, 36(%esp)
	movl	%eax, 12(%esp)
	movl	%edx, %eax
	cltd
	shldl	$12, %eax, %edx
	sall	$12, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, %ebx
	cmpl	%esi, 24(%esp)
	jge	L1072
	movl	28(%esp), %ecx
	movl	%ecx, %edx
	orl	$4095, %edx
	movl	%edx, %eax
	movl	%ebx, %edx
	subl	%ecx, %eax
/APP
 # 7354 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $12, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	24(%esp), %edx
	movl	36(%esp), %ecx
	movl	%edi, 24(%esp)
	addl	%eax, %ecx
	sall	$2, %edx
	leal	0(,%esi,4), %eax
	.p2align 6
	.p2align 4
	.p2align 3
L1073:
	movl	__ZL5dotp2.lto_priv.0, %edi
	addl	%edx, %edi
	addl	$4, %edx
	movl	(%edi), %esi
	leal	2(%esi), %ebp
	movl	%ebp, (%edi)
	movl	%ecx, %edi
	addl	%ebx, %ecx
	sarl	$12, %edi
	movw	%di, (%esi)
	cmpl	%eax, %edx
	jne	L1073
	movl	24(%esp), %edi
	movl	_ydim, %ecx
L1071:
	subl	$1, %edi
	jnb	L1075
	movl	44(%esp), %ebx
	movl	48(%esp), %esi
L1056:
	movl	_xyaspect, %ebp
	movl	_globalx1, %eax
	movl	%ebp, %edx
/APP
 # 7375 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, _globalx1
	movl	%eax, %edi
	movl	%ebp, %edx
	movl	_globaly2, %eax
/APP
 # 7376 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	40(%esp), %edx
	sarl	%ecx
	movl	%eax, _globaly2
	subl	%ecx, %edx
	imull	%edx, %eax
	addl	%eax, _globalposy
	movl	_asm2, %eax
	imull	%edx, %edi
	addl	%edi, _globalposx
	movl	%eax, 4(%esp)
	movl	_asm1, %eax
	movl	%eax, (%esp)
	call	_setuphlineasm4
	cmpl	%esi, %ebx
	jl	L1049
	addl	$1, %ebx
	leal	0(,%esi,4), %eax
	xorl	%ebp, %ebp
	subl	%esi, %ebx
	movl	%eax, 64(%esp)
	movl	%ebx, 72(%esp)
	movl	%ebp, 68(%esp)
	.p2align 4
	.p2align 3
L1090:
	movl	__ZL12nodesperline.lto_priv.0, %eax
	movl	68(%esp), %ecx
	movl	__ZL5dotp1.lto_priv.0, %ebx
	movl	64(%esp), %esi
	imull	%eax, %ecx
	movl	__ZL5smost.lto_priv.0, %edx
	movl	(%ebx,%esi), %ebx
	leal	(%edx,%ecx,2), %edi
	subl	%edi, %ebx
	sarl	%ebx
	subl	$1, %ebx
	movl	%ebx, 32(%esp)
	js	L1076
	sarl	%eax
	addl	%ecx, %eax
	leal	(%edx,%eax,2), %ebp
	.p2align 4
	.p2align 3
L1077:
	movl	32(%esp), %ebx
	movl	$0, 24(%esp)
	xorl	%esi, %esi
	movl	%ebx, %eax
	testl	%ebx, %ebx
	je	L1128
	movl	%esi, 28(%esp)
	.p2align 4
	.p2align 3
L1080:
	movl	28(%esp), %esi
	movzwl	(%edi,%eax,2), %edx
	leal	(%eax,%eax), %ebx
	leal	(%edi,%esi,2), %ecx
	cmpw	%dx, (%ecx)
	jle	L1078
	movl	%eax, 28(%esp)
	leal	(%edi,%ebx), %ecx
L1078:
	movl	24(%esp), %edx
	movzwl	0(%ebp,%eax,2), %esi
	leal	0(%ebp,%edx,2), %edx
	cmpw	%si, (%edx)
	jle	L1079
	movl	%eax, 24(%esp)
	leal	0(%ebp,%ebx), %edx
L1079:
	subl	$1, %eax
	jne	L1080
	movl	32(%esp), %esi
	movswl	(%ecx), %eax
	movzwl	(%edi,%esi,2), %ebx
	movw	%bx, (%ecx)
	movswl	(%edx), %ebx
	movzwl	0(%ebp,%esi,2), %esi
	leal	-1(%ebx), %ecx
	movl	%ebx, 24(%esp)
	movw	%si, (%edx)
	cmpl	%eax, %ecx
	jl	L1091
	movl	%eax, %esi
	movl	_xdim, %edx
	cmovnb	%ecx, %esi
	cmpl	%edx, %esi
	jb	L1082
L1091:
	subl	$1, 32(%esp)
	jmp	L1077
	.p2align 4,,10
	.p2align 3
L1128:
	movswl	0(%ebp), %ecx
	movswl	(%edi), %eax
	movl	%ecx, 24(%esp)
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jg	L1076
	cmpl	%eax, %ecx
	movl	%eax, %esi
	movl	_xdim, %edx
	cmovnb	%ecx, %esi
	cmpl	%edx, %esi
	jnb	L1076
	.p2align 4
	.p2align 3
L1082:
	movzbl	__ZL14globalpolytype.lto_priv.0, %ebx
	sarl	%edx
	movl	_asm1, %esi
	movl	%edx, 36(%esp)
	movl	64(%esp), %edx
	movb	%bl, 28(%esp)
	movl	_globalposx, %ebx
	movl	%ebx, 40(%esp)
	movl	_asm2, %ebx
	movl	%ebx, 44(%esp)
	movl	_globalposy, %ebx
	movl	%ebx, 48(%esp)
	movl	_ylookup, %ebx
	movl	(%ebx,%edx), %edx
	movl	%ecx, %ebx
	subl	%eax, %ebx
	movl	%edx, 52(%esp)
	movl	_frameplace, %edx
	movl	%ebx, 60(%esp)
	movl	%edx, 56(%esp)
	cmpb	$0, 28(%esp)
	je	L1129
	movl	36(%esp), %ebx
	leal	1(%eax), %ecx
	movl	52(%esp), %edx
	subl	%ebx, %ecx
	movl	40(%esp), %ebx
	addl	%eax, %edx
	movl	56(%esp), %eax
	imull	%ecx, %esi
	addl	%eax, %edx
	movl	__ZL12globalbufplc.lto_priv.0, %eax
	addl	%ebx, %esi
	movl	44(%esp), %ebx
	imull	%ebx, %ecx
	movl	%ecx, %ebx
	movl	48(%esp), %ecx
	subl	%ecx, %ebx
	movl	60(%esp), %ecx
	sall	$16, %ecx
	cmpl	$0, __ZL12globalispow2.lto_priv.0
	je	L1086
	cmpb	$1, 28(%esp)
	movl	%edx, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	$0, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	je	L1130
	call	_thline
L1085:
	subl	$1, 32(%esp)
	movl	32(%esp), %eax
	cmpl	$-1, %eax
	jne	L1077
L1076:
	movl	_globalx1, %eax
	addl	$1, 68(%esp)
	addl	%eax, _globalposx
	movl	_globaly2, %eax
	addl	$4, 64(%esp)
	addl	%eax, _globalposy
	movl	68(%esp), %eax
	cmpl	%eax, 72(%esp)
	jne	L1090
L1049:
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
L1086:
	.cfi_restore_state
	cmpb	$1, 28(%esp)
	movl	%edx, 4(%esp)
	movl	%esi, %edx
	movl	%ebx, (%esp)
	je	L1131
	call	__ZL14nonpow2_thlineijijPc.lto_priv.0
	jmp	L1085
	.p2align 4,,10
	.p2align 3
L1129:
	movl	36(%esp), %eax
	movl	24(%esp), %ebx
	movl	$-1, 4(%esp)
	movl	52(%esp), %edx
	subl	%eax, %ebx
	movl	56(%esp), %eax
	addl	%ecx, %edx
	addl	%eax, %edx
	movl	%esi, %eax
	movl	40(%esp), %esi
	imull	%ebx, %eax
	movl	%edx, 20(%esp)
	addl	%esi, %eax
	movl	%eax, 16(%esp)
	movl	44(%esp), %eax
	imull	%eax, %ebx
	movl	48(%esp), %eax
	subl	%eax, %ebx
	movl	_globalshade, %eax
	movl	%ebx, 12(%esp)
	sall	$8, %eax
	movl	%eax, 8(%esp)
	movl	60(%esp), %eax
	movl	%eax, (%esp)
	call	_hlineasm4
	jmp	L1085
L1066:
	cmpl	%ebx, %ebp
	cmovle	%ebp, %ebx
	movl	%ebx, 28(%esp)
	sarl	$12, %ebx
	movl	%ebx, 24(%esp)
	testl	%edx, %edx
	jg	L1067
	xorl	%esi, %esi
	xorl	%ebp, %ebp
	jmp	L1069
L1130:
	call	_mhline
	jmp	L1085
L1131:
	call	__ZL14nonpow2_mhlineijijPc.lto_priv.0
	jmp	L1085
L1072:
	movl	%ebp, %eax
	movl	%ebx, %edx
	orl	$4095, %eax
	subl	%ebp, %eax
/APP
 # 7364 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $12, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	32(%esp), %ecx
	movl	24(%esp), %ebp
	movl	%edi, 28(%esp)
	addl	%eax, %ecx
	movl	%ecx, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L1074:
	movl	__ZL5dotp1.lto_priv.0, %edx
	leal	(%edx,%esi,4), %ecx
	addl	$1, %esi
	movl	(%ecx), %edx
	leal	2(%edx), %edi
	movl	%edi, (%ecx)
	movl	%eax, %ecx
	addl	%ebx, %eax
	sarl	$12, %ecx
	movw	%cx, (%edx)
	cmpl	%ebp, %esi
	jl	L1074
	movl	28(%esp), %edi
	movl	_ydim, %ecx
	jmp	L1071
L1126:
	cmpl	$200, _qsetmode
	jne	L1097
L1055:
	cmpl	$4, %edx
	je	L1132
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
	jmp	__Z20polymost_fillpolygoni
L1050:
	.cfi_restore_state
	cmpl	$2, %edx
	jle	L1054
	cmpl	$200, _qsetmode
	je	L1055
	movl	_ydim, %ecx
	movl	$-524287, %eax
	movl	$524287, %esi
	movl	$524288, 40(%esp)
	cmpl	%eax, %ecx
	cmovle	%ecx, %eax
	leal	-1(%eax), %ebx
	jmp	L1056
L1054:
	movl	_ydim, %ecx
	cmpl	$-524287, %ecx
	jge	L1095
	movl	$524288, 40(%esp)
	leal	-1(%ecx), %ebx
	movl	$524287, %esi
	jmp	L1056
L1095:
	movl	$524288, 40(%esp)
	movl	$524287, %esi
	movl	$-524288, %ebx
	jmp	L1056
L1132:
	movl	$3553, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1059
	movl	$3553, (%esp)
	call	*_glad_glEnable
	.cfi_def_cfa_offset 92
	movl	$1, %ecx
	movl	$3553, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 96
	movl	$1, (%esp)
	call	_inthash_add
L1059:
	movl	%ebx, %eax
	call	__Z20polymost_fillpolygoni
	movl	$3553, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L1049
	movl	$3553, (%esp)
	call	*_glad_glDisable
	.cfi_def_cfa_offset 92
	xorl	%ecx, %ecx
	movl	$3553, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 96
	movl	$1, (%esp)
	call	_inthash_add
	jmp	L1049
L1127:
	movl	%ebx, 44(%esp)
	movl	24(%esp), %edi
	movl	%eax, %ecx
	movl	%esi, 48(%esp)
	jmp	L1075
	.cfi_endproc
LFE21:
	.p2align 4
	.globl	__ZL8clippolyii.lto_priv.0
	.def	__ZL8clippolyii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL8clippolyii.lto_priv.0:
LFB23:
	.cfi_startproc
	subl	$88, %esp
	.cfi_def_cfa_offset 92
	movl	%ebx, 72(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	_windowxy2, %eax
	movl	%edi, 80(%esp)
	.cfi_offset 7, -12
	movl	%edx, %edi
	andl	$10, %edx
	movl	%eax, 60(%esp)
	movl	_windowxy2+4, %eax
	movl	%esi, 76(%esp)
	movl	%eax, 64(%esp)
	.cfi_offset 6, -16
	je	L1134
	movl	_windowxy1, %eax
	movl	_windowxy1+4, %esi
	movl	$0, 36(%esp)
	xorl	%ecx, %ecx
	movl	%ebp, 84(%esp)
	.cfi_offset 5, -8
	movl	_xb1, %ebp
	sall	$12, %eax
	movl	%esi, 56(%esp)
	movl	%edi, %esi
	movl	%ebx, %edi
	movl	%eax, 24(%esp)
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L1145:
	movl	24(%esp), %eax
	subl	_rx1(,%ecx,4), %eax
	movl	%edi, 44(%esp)
	movl	%ebx, %edi
	movl	%esi, 48(%esp)
	movl	%ebp, %esi
	movl	%eax, 16(%esp)
	movl	%ebx, 40(%esp)
	movl	%ecx, 20(%esp)
	jmp	L1140
	.p2align 4,,10
	.p2align 3
L1136:
	movl	_xb1(,%esi,4), %eax
	movl	%esi, 20(%esp)
	testl	%eax, %eax
	js	L1245
L1202:
	movl	%eax, %esi
L1140:
	movl	_rx1(,%esi,4), %eax
	movl	24(%esp), %ebx
	movl	20(%esp), %ecx
	movl	16(%esp), %ebp
	subl	%eax, %ebx
	movl	$-1, _xb1(,%ecx,4)
	movl	%ebx, 16(%esp)
	testl	%ebp, %ebp
	jns	L1135
	movl	_rx1(,%ecx,4), %edx
	movl	%edx, __ZL3rx2.lto_priv.0(,%edi,4)
	movl	_ry1(,%ecx,4), %edx
	movl	%edx, __ZL3ry2.lto_priv.0(,%edi,4)
	leal	1(%edi), %edx
	movl	%edx, __ZL3xb2.lto_priv.0(,%edi,4)
	movl	%edx, %edi
L1135:
	movl	16(%esp), %ebx
	xorl	%ebp, %ebx
	jns	L1136
	movl	20(%esp), %ebx
	movl	_rx1(,%ebx,4), %ecx
	movl	%ebp, %ebx
	subl	16(%esp), %ebx
	movl	%ebx, 28(%esp)
	subl	%ecx, %eax
	movl	%ebx, 8(%esp)
	sarl	$31, %ebx
	imull	%ebp
	movl	%ebx, 12(%esp)
	movl	%ecx, 32(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	32(%esp), %ecx
	movl	%ecx, %ebx
	sarl	$31, %ebx
	addl	%eax, %ecx
	adcl	%edx, %ebx
	cmpl	$-2147483646, %ecx
	movl	%ebx, %eax
	sbbl	$-1, %eax
	jl	L1198
	movl	$2147483646, %eax
	cmpl	%ecx, %eax
	movl	$0, %eax
	sbbl	%ebx, %eax
	movl	$2147483647, %eax
	cmovge	%ecx, %eax
L1137:
	movl	%eax, __ZL3rx2.lto_priv.0(,%edi,4)
	movl	20(%esp), %eax
	movl	_ry1(,%eax,4), %ebx
	movl	28(%esp), %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	_ry1(,%esi,4), %eax
	subl	%ebx, %eax
	imull	%ebp
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%ebx, %ecx
	sarl	$31, %ebx
	addl	%eax, %ecx
	adcl	%edx, %ebx
	cmpl	$-2147483646, %ecx
	movl	%ebx, %eax
	sbbl	$-1, %eax
	jl	L1200
	movl	$2147483646, %eax
	cmpl	%ecx, %eax
	movl	$0, %eax
	sbbl	%ebx, %eax
	movl	$2147483647, %eax
	cmovl	%eax, %ecx
L1138:
	movl	%ecx, __ZL3ry2.lto_priv.0(,%edi,4)
	testl	%ebp, %ebp
	jns	L1139
	movl	36(%esp), %eax
	movw	%di, _bunchp2(%eax,%eax)
	addl	$1, %eax
	movl	%eax, 36(%esp)
L1139:
	leal	1(%edi), %eax
	movl	%esi, 20(%esp)
	movl	%eax, __ZL3xb2.lto_priv.0(,%edi,4)
	movl	%eax, %edi
	movl	_xb1(,%esi,4), %eax
	testl	%eax, %eax
	jns	L1202
L1245:
	movl	40(%esp), %ebx
	movl	%edi, %ecx
	movl	48(%esp), %esi
	movl	44(%esp), %edi
	leal	2(%ebx), %eax
	cmpl	%ecx, %eax
	jge	L1141
	movl	%ebx, __ZL3xb2.lto_priv.0-4(,%ecx,4)
	movl	%ecx, %ebx
L1141:
	cmpl	$1, %edi
	jle	L1242
	movl	$1, %ecx
	jmp	L1142
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1144:
	addl	$1, %ecx
	cmpl	%ecx, %edi
	je	L1242
L1142:
	movl	_xb1(,%ecx,4), %ebp
	testl	%ebp, %ebp
	js	L1144
	cmpl	%ecx, %edi
	jg	L1145
	.p2align 4
	.p2align 3
L1242:
	movl	%esi, %edi
	movl	%ebx, 52(%esp)
	movl	56(%esp), %esi
	cmpl	$2, 52(%esp)
	jle	L1146
	movl	36(%esp), %eax
	sall	$12, %esi
	movl	%esi, 44(%esp)
	cmpl	$1, %eax
	jle	L1147
	leal	_bunchp2(%eax,%eax), %edx
	movl	$_bunchp2+2, 40(%esp)
	movl	%edx, 56(%esp)
	movl	%edi, 68(%esp)
	.p2align 4
	.p2align 3
L1148:
	movl	40(%esp), %eax
	movl	$_bunchp2, 16(%esp)
	movswl	(%eax), %eax
	movl	__ZL3rx2.lto_priv.0(,%eax,4), %edi
	movl	%eax, 36(%esp)
	movl	__ZL3ry2.lto_priv.0(,%eax,4), %eax
	movl	%edi, 24(%esp)
	movl	%eax, 48(%esp)
	.p2align 4
	.p2align 3
L1150:
	movl	36(%esp), %eax
	movl	16(%esp), %ebx
	movl	__ZL3xb2.lto_priv.0(,%eax,4), %edi
	movswl	(%ebx), %ebx
	movl	24(%esp), %eax
	movl	__ZL3xb2.lto_priv.0(,%ebx,4), %ecx
	subl	__ZL3rx2.lto_priv.0(,%edi,4), %eax
/APP
 # 7530 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	48(%esp), %ebp
	movl	%eax, %edx
	movl	%ebp, %esi
	subl	__ZL3ry2.lto_priv.0(,%edi,4), %esi
	movl	%esi, %eax
/APP
 # 7530 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%eax, %edx
	movl	%ecx, %esi
	movl	__ZL3rx2.lto_priv.0(,%ecx,4), %ecx
	movl	%edx, 28(%esp)
	movl	__ZL3rx2.lto_priv.0(,%ebx,4), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
/APP
 # 7531 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	__ZL3ry2.lto_priv.0(,%esi,4), %edx
	movl	%esi, 20(%esp)
	movl	__ZL3ry2.lto_priv.0(,%ebx,4), %esi
	movl	%eax, 32(%esp)
	subl	%edx, %esi
	movl	%esi, %eax
/APP
 # 7531 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	24(%esp), %eax
	subl	%ecx, %eax
/APP
 # 7532 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	%ebp, %eax
	subl	%edx, %eax
/APP
 # 7532 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
	movl	__ZL3rx2.lto_priv.0(,%ebx,4), %eax
	subl	__ZL3rx2.lto_priv.0(,%edi,4), %eax
/APP
 # 7533 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	__ZL3ry2.lto_priv.0(,%ebx,4), %eax
	subl	__ZL3ry2.lto_priv.0(,%edi,4), %eax
/APP
 # 7533 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	32(%esp), %ebp
	addl	%eax, %edx
	addl	%ecx, %edx
	addl	%ebp, %esi
	movl	28(%esp), %ebp
	addl	%ebp, %esi
	cmpl	%edx, %esi
	jle	L1149
	movl	36(%esp), %eax
	movl	20(%esp), %esi
	movl	%esi, __ZL3xb2.lto_priv.0(,%eax,4)
	movl	%edi, __ZL3xb2.lto_priv.0(,%ebx,4)
L1149:
	addl	$2, 16(%esp)
	movl	16(%esp), %eax
	cmpl	%eax, 40(%esp)
	jne	L1150
	addl	$2, 40(%esp)
	movl	40(%esp), %eax
	cmpl	%eax, 56(%esp)
	jne	L1148
	movl	68(%esp), %edi
L1147:
	movl	$0, 32(%esp)
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
	movl	%edi, %esi
	movl	__ZL3xb2.lto_priv.0, %ebp
	.p2align 4
	.p2align 3
L1161:
	movl	44(%esp), %eax
	subl	__ZL3ry2.lto_priv.0(,%ecx,4), %eax
	movl	%ebx, 36(%esp)
	movl	%ebx, %edi
	movl	%eax, 16(%esp)
	movl	%ecx, 20(%esp)
	movl	%esi, 40(%esp)
	jmp	L1156
	.p2align 4,,10
	.p2align 3
L1152:
	movl	__ZL3xb2.lto_priv.0(,%ebp,4), %eax
	movl	%ebp, 20(%esp)
	testl	%eax, %eax
	js	L1246
L1208:
	movl	%eax, %ebp
L1156:
	movl	20(%esp), %ebx
	movl	16(%esp), %esi
	movl	44(%esp), %eax
	subl	__ZL3ry2.lto_priv.0(,%ebp,4), %eax
	movl	$-1, __ZL3xb2.lto_priv.0(,%ebx,4)
	movl	%eax, 16(%esp)
	testl	%esi, %esi
	jns	L1151
	movl	__ZL3rx2.lto_priv.0(,%ebx,4), %eax
	movl	%eax, _rx1(,%edi,4)
	movl	__ZL3ry2.lto_priv.0(,%ebx,4), %eax
	movl	%eax, _ry1(,%edi,4)
	leal	1(%edi), %eax
	movl	%eax, _xb1(,%edi,4)
	movl	%eax, %edi
L1151:
	movl	16(%esp), %eax
	xorl	%esi, %eax
	jns	L1152
	movl	20(%esp), %eax
	movl	__ZL3rx2.lto_priv.0(,%eax,4), %ecx
	movl	%esi, %eax
	subl	16(%esp), %eax
	movl	%eax, 8(%esp)
	movl	%eax, 24(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	__ZL3rx2.lto_priv.0(,%ebp,4), %eax
	movl	%ecx, 28(%esp)
	subl	%ecx, %eax
	imull	%esi
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	28(%esp), %ecx
	movl	%ecx, %ebx
	sarl	$31, %ebx
	addl	%eax, %ecx
	adcl	%edx, %ebx
	cmpl	$-2147483646, %ecx
	movl	%ebx, %eax
	sbbl	$-1, %eax
	jl	L1204
	movl	$2147483646, %eax
	cmpl	%ecx, %eax
	movl	$0, %eax
	sbbl	%ebx, %eax
	movl	$2147483647, %eax
	cmovge	%ecx, %eax
L1153:
	movl	%eax, _rx1(,%edi,4)
	movl	20(%esp), %eax
	movl	__ZL3ry2.lto_priv.0(,%eax,4), %ebx
	movl	24(%esp), %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	__ZL3ry2.lto_priv.0(,%ebp,4), %eax
	subl	%ebx, %eax
	imull	%esi
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%ebx, %ecx
	sarl	$31, %ebx
	addl	%eax, %ecx
	adcl	%edx, %ebx
	cmpl	$-2147483646, %ecx
	movl	%ebx, %eax
	sbbl	$-1, %eax
	jl	L1206
	movl	$2147483646, %eax
	cmpl	%ecx, %eax
	movl	$0, %eax
	sbbl	%ebx, %eax
	movl	$2147483647, %eax
	cmovl	%eax, %ecx
L1154:
	movl	%ecx, _ry1(,%edi,4)
	testl	%esi, %esi
	jns	L1155
	movl	32(%esp), %eax
	movw	%di, _bunchp2(%eax,%eax)
	addl	$1, %eax
	movl	%eax, 32(%esp)
L1155:
	leal	1(%edi), %eax
	movl	%ebp, 20(%esp)
	movl	%eax, _xb1(,%edi,4)
	movl	%eax, %edi
	movl	__ZL3xb2.lto_priv.0(,%ebp,4), %eax
	testl	%eax, %eax
	jns	L1208
L1246:
	movl	36(%esp), %ebx
	movl	40(%esp), %esi
	leal	2(%ebx), %eax
	cmpl	%edi, %eax
	jge	L1157
	movl	%ebx, _xb1-4(,%edi,4)
	movl	%edi, %ebx
L1157:
	movl	52(%esp), %edi
	movl	$1, %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L1158:
	movl	__ZL3xb2.lto_priv.0(,%ecx,4), %ebp
	testl	%ebp, %ebp
	jns	L1247
	addl	$1, %ecx
	cmpl	%ecx, %edi
	jne	L1158
L1235:
	movl	%esi, %edi
	cmpl	$2, %ebx
	jle	L1146
	movl	32(%esp), %eax
	cmpl	$1, %eax
	jle	L1241
	leal	_bunchp2(%eax,%eax), %edx
	movl	$_bunchp2+2, 40(%esp)
	movl	%edx, 48(%esp)
	movl	%ebx, 52(%esp)
	movl	%esi, 56(%esp)
	.p2align 4
	.p2align 3
L1163:
	movl	40(%esp), %eax
	movl	$_bunchp2, 16(%esp)
	movswl	(%eax), %eax
	movl	_rx1(,%eax,4), %edi
	movl	%eax, 36(%esp)
	movl	_ry1(,%eax,4), %eax
	movl	%edi, 24(%esp)
	movl	%eax, 44(%esp)
	.p2align 4
	.p2align 3
L1165:
	movl	36(%esp), %eax
	movl	16(%esp), %esi
	movl	_xb1(,%eax,4), %edi
	movswl	(%esi), %ebx
	movl	24(%esp), %eax
	movl	_xb1(,%ebx,4), %ecx
	subl	_rx1(,%edi,4), %eax
/APP
 # 7579 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	44(%esp), %ebp
	movl	%eax, %edx
	movl	%ebp, %esi
	subl	_ry1(,%edi,4), %esi
	movl	%esi, %eax
/APP
 # 7579 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%eax, %edx
	movl	%ecx, %esi
	movl	_rx1(,%ecx,4), %ecx
	movl	%edx, 28(%esp)
	movl	_rx1(,%ebx,4), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
/APP
 # 7580 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	_ry1(,%esi,4), %edx
	movl	%esi, 20(%esp)
	movl	_ry1(,%ebx,4), %esi
	movl	%eax, 32(%esp)
	subl	%edx, %esi
	movl	%esi, %eax
/APP
 # 7580 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	24(%esp), %eax
	subl	%ecx, %eax
/APP
 # 7581 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	%ebp, %eax
	subl	%edx, %eax
/APP
 # 7581 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
	movl	_rx1(,%ebx,4), %eax
	subl	_rx1(,%edi,4), %eax
/APP
 # 7582 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	_ry1(,%ebx,4), %eax
	subl	_ry1(,%edi,4), %eax
/APP
 # 7582 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	32(%esp), %ebp
	addl	%eax, %edx
	addl	%ecx, %edx
	addl	%ebp, %esi
	movl	28(%esp), %ebp
	addl	%ebp, %esi
	cmpl	%edx, %esi
	jle	L1164
	movl	36(%esp), %eax
	movl	20(%esp), %esi
	movl	%esi, _xb1(,%eax,4)
	movl	%edi, _xb1(,%ebx,4)
L1164:
	addl	$2, 16(%esp)
	movl	16(%esp), %eax
	cmpl	%eax, 40(%esp)
	jne	L1165
	addl	$2, 40(%esp)
	movl	40(%esp), %eax
	cmpl	%eax, 48(%esp)
	jne	L1163
	movl	52(%esp), %ebx
	movl	56(%esp), %edi
	movl	84(%esp), %ebp
	.cfi_restore 5
L1134:
	andl	$5, %edi
	movl	%ebx, %esi
	je	L1133
	movl	60(%esp), %eax
	movl	$0, 36(%esp)
	movl	%ebx, %edi
	xorl	%ecx, %ecx
	movl	%ebp, 84(%esp)
	.cfi_offset 5, -8
	movl	_xb1, %ebp
	xorl	%ebx, %ebx
	addl	$1, %eax
	sall	$12, %eax
	movl	%eax, 24(%esp)
	.p2align 4
	.p2align 3
L1177:
	movl	_rx1(,%ecx,4), %eax
	subl	24(%esp), %eax
	movl	%edi, 44(%esp)
	movl	%ebp, %esi
	movl	%eax, 16(%esp)
	movl	%ebx, %edi
	movl	%ebx, 40(%esp)
	movl	%ecx, 20(%esp)
	jmp	L1172
	.p2align 4,,10
	.p2align 3
L1168:
	movl	_xb1(,%esi,4), %eax
	movl	%esi, 20(%esp)
	testl	%eax, %eax
	js	L1248
L1214:
	movl	%eax, %esi
L1172:
	movl	_rx1(,%esi,4), %eax
	movl	20(%esp), %ecx
	movl	16(%esp), %ebp
	movl	$-1, _xb1(,%ecx,4)
	movl	%eax, %ebx
	subl	24(%esp), %ebx
	movl	%ebx, 16(%esp)
	testl	%ebp, %ebp
	jns	L1167
	movl	_rx1(,%ecx,4), %edx
	movl	%edx, __ZL3rx2.lto_priv.0(,%edi,4)
	movl	_ry1(,%ecx,4), %edx
	movl	%edx, __ZL3ry2.lto_priv.0(,%edi,4)
	leal	1(%edi), %edx
	movl	%edx, __ZL3xb2.lto_priv.0(,%edi,4)
	movl	%edx, %edi
L1167:
	movl	16(%esp), %ebx
	xorl	%ebp, %ebx
	jns	L1168
	movl	20(%esp), %ebx
	movl	_rx1(,%ebx,4), %ecx
	movl	%ebp, %ebx
	subl	16(%esp), %ebx
	movl	%ebx, 28(%esp)
	subl	%ecx, %eax
	movl	%ebx, 8(%esp)
	sarl	$31, %ebx
	imull	%ebp
	movl	%ebx, 12(%esp)
	movl	%ecx, 32(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	32(%esp), %ecx
	movl	%ecx, %ebx
	sarl	$31, %ebx
	addl	%eax, %ecx
	adcl	%edx, %ebx
	cmpl	$-2147483646, %ecx
	movl	%ebx, %eax
	sbbl	$-1, %eax
	jl	L1210
	movl	$2147483646, %eax
	cmpl	%ecx, %eax
	movl	$0, %eax
	sbbl	%ebx, %eax
	movl	$2147483647, %eax
	cmovge	%ecx, %eax
L1169:
	movl	%eax, __ZL3rx2.lto_priv.0(,%edi,4)
	movl	20(%esp), %eax
	movl	_ry1(,%eax,4), %ebx
	movl	28(%esp), %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	_ry1(,%esi,4), %eax
	subl	%ebx, %eax
	imull	%ebp
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%ebx, %ecx
	sarl	$31, %ebx
	addl	%eax, %ecx
	adcl	%edx, %ebx
	cmpl	$-2147483646, %ecx
	movl	%ebx, %eax
	sbbl	$-1, %eax
	jl	L1212
	movl	$2147483646, %eax
	cmpl	%ecx, %eax
	movl	$0, %eax
	sbbl	%ebx, %eax
	movl	$2147483647, %eax
	cmovl	%eax, %ecx
L1170:
	movl	%ecx, __ZL3ry2.lto_priv.0(,%edi,4)
	testl	%ebp, %ebp
	jns	L1171
	movl	36(%esp), %eax
	movw	%di, _bunchp2(%eax,%eax)
	addl	$1, %eax
	movl	%eax, 36(%esp)
L1171:
	leal	1(%edi), %eax
	movl	%esi, 20(%esp)
	movl	%eax, __ZL3xb2.lto_priv.0(,%edi,4)
	movl	%eax, %edi
	movl	_xb1(,%esi,4), %eax
	testl	%eax, %eax
	jns	L1214
L1248:
	movl	40(%esp), %ebx
	movl	%edi, %esi
	movl	44(%esp), %edi
	leal	2(%ebx), %eax
	cmpl	%esi, %eax
	jge	L1173
	movl	%ebx, __ZL3xb2.lto_priv.0-4(,%esi,4)
	movl	%esi, %ebx
L1173:
	cmpl	$1, %edi
	jle	L1243
	movl	$1, %ecx
	jmp	L1174
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1176:
	addl	$1, %ecx
	cmpl	%ecx, %edi
	je	L1243
L1174:
	movl	_xb1(,%ecx,4), %ebp
	testl	%ebp, %ebp
	js	L1176
	cmpl	%ecx, %edi
	jg	L1177
	.p2align 4
	.p2align 3
L1243:
	movl	%ebx, 52(%esp)
	cmpl	$2, 52(%esp)
	jle	L1146
	movl	64(%esp), %eax
	addl	$1, %eax
	sall	$12, %eax
	movl	%eax, 44(%esp)
	movl	36(%esp), %eax
	cmpl	$1, %eax
	jle	L1178
	leal	_bunchp2(%eax,%eax), %edx
	movl	$_bunchp2+2, 40(%esp)
	movl	%edx, 56(%esp)
	.p2align 4
	.p2align 3
L1179:
	movl	40(%esp), %eax
	movl	$_bunchp2, 16(%esp)
	movswl	(%eax), %eax
	movl	__ZL3rx2.lto_priv.0(,%eax,4), %edi
	movl	%eax, 36(%esp)
	movl	__ZL3ry2.lto_priv.0(,%eax,4), %eax
	movl	%edi, 24(%esp)
	movl	%eax, 48(%esp)
	.p2align 4
	.p2align 3
L1181:
	movl	36(%esp), %eax
	movl	16(%esp), %ebx
	movl	__ZL3xb2.lto_priv.0(,%eax,4), %edi
	movswl	(%ebx), %ebx
	movl	24(%esp), %eax
	movl	__ZL3xb2.lto_priv.0(,%ebx,4), %ecx
	subl	__ZL3rx2.lto_priv.0(,%edi,4), %eax
/APP
 # 7629 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	48(%esp), %ebp
	movl	%eax, %edx
	movl	%ebp, %esi
	subl	__ZL3ry2.lto_priv.0(,%edi,4), %esi
	movl	%esi, %eax
/APP
 # 7629 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%eax, %edx
	movl	%ecx, %esi
	movl	__ZL3rx2.lto_priv.0(,%ecx,4), %ecx
	movl	%edx, 28(%esp)
	movl	__ZL3rx2.lto_priv.0(,%ebx,4), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
/APP
 # 7630 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	__ZL3ry2.lto_priv.0(,%esi,4), %edx
	movl	%esi, 20(%esp)
	movl	__ZL3ry2.lto_priv.0(,%ebx,4), %esi
	movl	%eax, 32(%esp)
	subl	%edx, %esi
	movl	%esi, %eax
/APP
 # 7630 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	24(%esp), %eax
	subl	%ecx, %eax
/APP
 # 7631 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	%ebp, %eax
	subl	%edx, %eax
/APP
 # 7631 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
	movl	__ZL3rx2.lto_priv.0(,%ebx,4), %eax
	subl	__ZL3rx2.lto_priv.0(,%edi,4), %eax
/APP
 # 7632 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	__ZL3ry2.lto_priv.0(,%ebx,4), %eax
	subl	__ZL3ry2.lto_priv.0(,%edi,4), %eax
/APP
 # 7632 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	32(%esp), %ebp
	addl	%eax, %edx
	addl	%ecx, %edx
	addl	%ebp, %esi
	movl	28(%esp), %ebp
	addl	%ebp, %esi
	cmpl	%edx, %esi
	jle	L1180
	movl	36(%esp), %eax
	movl	20(%esp), %esi
	movl	%esi, __ZL3xb2.lto_priv.0(,%eax,4)
	movl	%edi, __ZL3xb2.lto_priv.0(,%ebx,4)
L1180:
	addl	$2, 16(%esp)
	movl	40(%esp), %edi
	cmpl	%edi, 16(%esp)
	jne	L1181
	addl	$2, 40(%esp)
	movl	56(%esp), %edi
	cmpl	%edi, 40(%esp)
	jne	L1179
L1178:
	movl	$0, 32(%esp)
	movl	__ZL3xb2.lto_priv.0, %ebp
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L1192:
	movl	__ZL3ry2.lto_priv.0(,%ecx,4), %ebx
	subl	44(%esp), %ebx
	movl	%ecx, 20(%esp)
	movl	%esi, %edi
	movl	%ebx, 16(%esp)
	movl	%esi, 36(%esp)
	jmp	L1187
	.p2align 4,,10
	.p2align 3
L1183:
	movl	__ZL3xb2.lto_priv.0(,%ebp,4), %eax
	movl	%ebp, 20(%esp)
	testl	%eax, %eax
	js	L1249
L1220:
	movl	%eax, %ebp
L1187:
	movl	20(%esp), %edx
	movl	16(%esp), %esi
	movl	__ZL3ry2.lto_priv.0(,%ebp,4), %eax
	subl	44(%esp), %eax
	movl	$-1, __ZL3xb2.lto_priv.0(,%edx,4)
	movl	%eax, 16(%esp)
	testl	%esi, %esi
	jns	L1182
	movl	__ZL3rx2.lto_priv.0(,%edx,4), %eax
	movl	%eax, _rx1(,%edi,4)
	movl	__ZL3ry2.lto_priv.0(,%edx,4), %eax
	movl	%eax, _ry1(,%edi,4)
	leal	1(%edi), %eax
	movl	%eax, _xb1(,%edi,4)
	movl	%eax, %edi
L1182:
	movl	16(%esp), %eax
	xorl	%esi, %eax
	jns	L1183
	movl	20(%esp), %eax
	movl	__ZL3rx2.lto_priv.0(,%eax,4), %ecx
	movl	%esi, %eax
	subl	16(%esp), %eax
	movl	%eax, 8(%esp)
	movl	%eax, 24(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	__ZL3rx2.lto_priv.0(,%ebp,4), %eax
	movl	%ecx, 28(%esp)
	subl	%ecx, %eax
	imull	%esi
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	28(%esp), %ecx
	movl	%ecx, %ebx
	sarl	$31, %ebx
	addl	%eax, %ecx
	adcl	%edx, %ebx
	cmpl	$-2147483646, %ecx
	movl	%ebx, %eax
	sbbl	$-1, %eax
	jl	L1216
	movl	$2147483646, %eax
	cmpl	%ecx, %eax
	movl	$0, %eax
	sbbl	%ebx, %eax
	movl	$2147483647, %eax
	cmovge	%ecx, %eax
L1184:
	movl	%eax, _rx1(,%edi,4)
	movl	20(%esp), %eax
	movl	__ZL3ry2.lto_priv.0(,%eax,4), %ebx
	movl	24(%esp), %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	__ZL3ry2.lto_priv.0(,%ebp,4), %eax
	subl	%ebx, %eax
	imull	%esi
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%ebx, %ecx
	sarl	$31, %ebx
	addl	%eax, %ecx
	adcl	%edx, %ebx
	cmpl	$-2147483646, %ecx
	movl	%ebx, %eax
	sbbl	$-1, %eax
	jl	L1218
	movl	$2147483646, %eax
	cmpl	%ecx, %eax
	movl	$0, %eax
	sbbl	%ebx, %eax
	movl	$2147483647, %eax
	cmovl	%eax, %ecx
L1185:
	movl	%ecx, _ry1(,%edi,4)
	testl	%esi, %esi
	jns	L1186
	movl	32(%esp), %eax
	movw	%di, _bunchp2(%eax,%eax)
	addl	$1, %eax
	movl	%eax, 32(%esp)
L1186:
	leal	1(%edi), %eax
	movl	%ebp, 20(%esp)
	movl	%eax, _xb1(,%edi,4)
	movl	%eax, %edi
	movl	__ZL3xb2.lto_priv.0(,%ebp,4), %eax
	testl	%eax, %eax
	jns	L1220
L1249:
	movl	36(%esp), %esi
	leal	2(%esi), %eax
	cmpl	%edi, %eax
	jge	L1188
	movl	%esi, _xb1-4(,%edi,4)
	movl	%edi, %esi
L1188:
	movl	52(%esp), %edi
	movl	$1, %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L1189:
	movl	__ZL3xb2.lto_priv.0(,%ecx,4), %ebp
	testl	%ebp, %ebp
	jns	L1250
	addl	$1, %ecx
	cmpl	%ecx, %edi
	jne	L1189
L1190:
	cmpl	$2, %esi
	jle	L1146
	movl	32(%esp), %eax
	movl	$_bunchp2+2, 40(%esp)
	leal	_bunchp2(%eax,%eax), %edx
	cmpl	$1, %eax
	jle	L1244
	movl	%edx, 48(%esp)
	movl	%esi, 52(%esp)
	.p2align 4
	.p2align 3
L1194:
	movl	40(%esp), %eax
	movl	$_bunchp2, 16(%esp)
	movswl	(%eax), %eax
	movl	_rx1(,%eax,4), %edi
	movl	%eax, 36(%esp)
	movl	_ry1(,%eax,4), %eax
	movl	%edi, 24(%esp)
	movl	%eax, 44(%esp)
	.p2align 4
	.p2align 3
L1196:
	movl	36(%esp), %eax
	movl	16(%esp), %esi
	movl	_xb1(,%eax,4), %edi
	movswl	(%esi), %ebx
	movl	24(%esp), %eax
	movl	_xb1(,%ebx,4), %ecx
	subl	_rx1(,%edi,4), %eax
/APP
 # 7678 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	44(%esp), %ebp
	movl	%eax, %edx
	movl	%ebp, %esi
	subl	_ry1(,%edi,4), %esi
	movl	%esi, %eax
/APP
 # 7678 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%eax, %edx
	movl	%ecx, %esi
	movl	_rx1(,%ecx,4), %ecx
	movl	%edx, 28(%esp)
	movl	_rx1(,%ebx,4), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
/APP
 # 7679 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	_ry1(,%esi,4), %edx
	movl	%esi, 20(%esp)
	movl	_ry1(,%ebx,4), %esi
	movl	%eax, 32(%esp)
	subl	%edx, %esi
	movl	%esi, %eax
/APP
 # 7679 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	24(%esp), %eax
	subl	%ecx, %eax
/APP
 # 7680 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	%ebp, %eax
	subl	%edx, %eax
/APP
 # 7680 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
	movl	_rx1(,%ebx,4), %eax
	subl	_rx1(,%edi,4), %eax
/APP
 # 7681 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	_ry1(,%ebx,4), %eax
	subl	_ry1(,%edi,4), %eax
/APP
 # 7681 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	32(%esp), %ebp
	addl	%eax, %edx
	addl	%ecx, %edx
	addl	%ebp, %esi
	movl	28(%esp), %ebp
	addl	%ebp, %esi
	cmpl	%edx, %esi
	jle	L1195
	movl	36(%esp), %eax
	movl	20(%esp), %esi
	movl	%esi, _xb1(,%eax,4)
	movl	%edi, _xb1(,%ebx,4)
L1195:
	addl	$2, 16(%esp)
	movl	16(%esp), %eax
	cmpl	%eax, 40(%esp)
	jne	L1196
	addl	$2, 40(%esp)
	movl	48(%esp), %edi
	cmpl	%edi, 40(%esp)
	jne	L1194
	movl	52(%esp), %esi
L1244:
	movl	84(%esp), %ebp
	.cfi_restore 5
L1133:
	movl	%esi, %eax
	movl	72(%esp), %ebx
	movl	76(%esp), %esi
	movl	80(%esp), %edi
	addl	$88, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1200:
	.cfi_def_cfa_offset 92
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$-2147483647, %ecx
	jmp	L1138
	.p2align 4,,10
	.p2align 3
L1198:
	movl	$-2147483647, %eax
	jmp	L1137
	.p2align 4,,10
	.p2align 3
L1146:
	movl	84(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	xorl	%esi, %esi
	jmp	L1133
	.p2align 4,,10
	.p2align 3
L1247:
	.cfi_restore_state
	cmpl	%ecx, 52(%esp)
	jg	L1161
	jmp	L1235
	.p2align 4,,10
	.p2align 3
L1250:
	cmpl	%ecx, 52(%esp)
	jg	L1192
	jmp	L1190
	.p2align 4,,10
	.p2align 3
L1212:
	movl	$-2147483647, %ecx
	jmp	L1170
	.p2align 4,,10
	.p2align 3
L1210:
	movl	$-2147483647, %eax
	jmp	L1169
	.p2align 4,,10
	.p2align 3
L1206:
	movl	$-2147483647, %ecx
	jmp	L1154
	.p2align 4,,10
	.p2align 3
L1204:
	movl	$-2147483647, %eax
	jmp	L1153
	.p2align 4,,10
	.p2align 3
L1216:
	movl	$-2147483647, %eax
	jmp	L1184
	.p2align 4,,10
	.p2align 3
L1218:
	movl	$-2147483647, %ecx
	jmp	L1185
L1241:
	movl	84(%esp), %ebp
	.cfi_restore 5
	jmp	L1134
	.cfi_endproc
LFE23:
	.p2align 4
	.globl	_dorotspr_handle_bit2
	.def	_dorotspr_handle_bit2;	.scl	2;	.type	32;	.endef
_dorotspr_handle_bit2:
LFB25:
	.cfi_startproc
	subl	$80, %esp
	.cfi_def_cfa_offset 84
	movl	%esi, 68(%esp)
	.cfi_offset 6, -16
	movl	84(%esp), %esi
	movl	%edi, 72(%esp)
	testl	$2, %esi
	.cfi_offset 7, -12
	je	L1269
	movl	%ebx, 64(%esp)
	.cfi_offset 3, -20
	movl	_ydim, %ebx
	movl	%ebp, 76(%esp)
	.cfi_offset 5, -8
	movl	(%eax), %ebp
	movl	%eax, 44(%esp)
	movl	_rotatesprite_y_offset, %eax
	addl	(%edx), %eax
	movl	_xdim, %edi
	movl	%ecx, 52(%esp)
	movl	%eax, 40(%esp)
	movl	%esi, %eax
	andl	$768, %eax
	movl	%edx, 48(%esp)
	movl	%ebx, 32(%esp)
	movl	%eax, 36(%esp)
	testl	$1024, %esi
	je	L1270
L1255:
	movl	%edi, %edx
	movl	_xyaspect, %ecx
	movl	%edi, 16(%esp)
	sarl	$31, %edx
	movl	%edi, 56(%esp)
	movl	_yxaspect, %eax
	movl	%edx, 20(%esp)
	movl	32(%esp), %edx
	movl	%ecx, %ebx
	sarl	$31, %ebx
	movl	%edx, 60(%esp)
	shldl	$16, %ecx, %ebx
	sall	$16, %ecx
L1257:
	movl	_rotatesprite_yxaspect, %edx
/APP
 # 7800 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 28(%esp)
	movl	_rotatesprite_yxaspect, %eax
	movl	%ebx, 4(%esp)
	leal	-10485760(%ebp), %ebx
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%ecx, (%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, 24(%esp)
	movl	40(%esp), %eax
	subl	$6553600, %eax
	movl	%eax, 40(%esp)
	movl	%ebx, %eax
	cltd
	testl	$8, %esi
	jne	L1261
	movl	_xdimen, %eax
	movl	16(%esp), %ecx
	movl	%edi, 8(%esp)
	sarl	$31, %edi
	movl	20(%esp), %edx
	movl	16(%esp), %esi
	movl	%edi, 12(%esp)
	movl	%eax, %edi
	sarl	$31, %edi
	imull	%eax, %edx
	imull	%edi, %ecx
	addl	%edx, %ecx
	mull	%esi
	addl	%ecx, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	$320, 8(%esp)
	movl	%eax, %edx
	movl	%ebx, %eax
	movl	$0, 12(%esp)
	imull	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	88(%esp), %edi
	movl	_rotatesprite_yxaspect, %edx
	leal	2(%edi), %ebx
	sall	$15, %ebx
	addl	%eax, %ebx
	movl	_xdimenscale, %eax
/APP
 # 7817 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	cmpl	$768, 36(%esp)
	je	L1271
L1262:
	movl	40(%esp), %eax
	movl	%ecx, %edx
/APP
 # 7822 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	92(%esp), %esi
	leal	2(%esi), %edx
	sall	$15, %edx
	addl	%edx, %eax
L1263:
	movl	48(%esp), %edi
	movl	44(%esp), %esi
	movl	%ecx, %edx
	movl	%ebx, (%esi)
	movl	%eax, (%edi)
	movl	52(%esp), %edi
	movl	(%edi), %eax
/APP
 # 7845 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, (%edi)
	movl	28(%esp), %esi
	movl	96(%esp), %eax
	movl	%esi, (%eax)
	movl	64(%esp), %ebx
	.cfi_restore 3
	movl	76(%esp), %ebp
	.cfi_restore 5
L1254:
	movl	24(%esp), %edi
	movl	100(%esp), %eax
	movl	%edi, (%eax)
	movl	68(%esp), %esi
	movl	72(%esp), %edi
	addl	$80, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1270:
	.cfi_def_cfa_offset 84
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	leal	0(,%ebx,4), %edx
	leal	(%edi,%edi,2), %eax
	cmpl	%eax, %edx
	jg	L1255
	movl	36(%esp), %eax
	testl	%eax, %eax
	je	L1258
	movl	%edi, %ebx
	movl	%edi, 16(%esp)
	sarl	$31, %ebx
	movl	%ebx, 20(%esp)
	cmpl	$768, %eax
	je	L1259
	movl	32(%esp), %ecx
	movl	$7864320, %edx
	movl	%edi, %eax
	imull	%edx
	movl	%ecx, %ebx
	movl	%ecx, 8(%esp)
	sarl	$31, %ebx
	movl	%ecx, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	%ebx, 20(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%esi, %edx
	movl	16(%esp), %ecx
	shrl	$9, %edx
	subl	$10485760, %eax
	andl	$1, %edx
	movl	%edx, %ebx
	subl	$1, %edx
	xorl	$1, %ebx
	xorl	%edx, %eax
	addl	%ebx, %eax
	movl	20(%esp), %ebx
	addl	%eax, %ebp
L1260:
	movl	%ecx, %eax
	movl	%ebx, %edx
	movl	$3, 8(%esp)
	xorl	%ebx, %ebx
	shldl	$2, %ecx, %edx
	sall	$2, %eax
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	$-715849728, %ecx
	movl	%eax, 56(%esp)
	movl	%eax, 16(%esp)
	sarl	$31, %eax
	movl	%eax, 20(%esp)
	movl	32(%esp), %eax
	movl	%eax, 60(%esp)
	movl	$78643, %eax
	jmp	L1257
	.p2align 4,,10
	.p2align 3
L1269:
	.cfi_restore 3
	.cfi_restore 5
	andl	$1024, %esi
	jne	L1253
	movl	_ydim, %eax
	movl	_xdim, %edx
	sall	$2, %eax
	leal	(%edx,%edx,2), %edx
	cmpl	%edx, %eax
	jg	L1253
	movl	96(%esp), %eax
	movl	$54613, 24(%esp)
	movl	$78643, (%eax)
	jmp	L1254
	.p2align 4,,10
	.p2align 3
L1253:
	movl	_yxaspect, %eax
	movl	96(%esp), %edi
	movl	%eax, (%edi)
	movl	_xyaspect, %eax
	movl	%eax, 24(%esp)
	jmp	L1254
	.p2align 4,,10
	.p2align 3
L1261:
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	movl	20(%esp), %ecx
	movl	16(%esp), %ebp
	movl	$320, 8(%esp)
	movl	16(%esp), %eax
	movl	$0, 12(%esp)
	imull	%edx, %ebp
	imull	%ebx, %ecx
	mull	%ebx
	addl	%ebp, %ecx
	addl	%ecx, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	56(%esp), %edx
	movl	28(%esp), %ebp
	movl	$320, 8(%esp)
	movl	16(%esp), %ecx
	movl	$0, 12(%esp)
	sall	$15, %edx
	leal	32768(%edx,%eax), %ebx
	movl	%ebp, %eax
	cltd
	imull	%edx, %ecx
	movl	%ebp, %edx
	movl	20(%esp), %ebp
	imull	%ebp, %eax
	addl	%eax, %ecx
	movl	%edx, %eax
	mull	16(%esp)
	addl	%ecx, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, %ecx
	movl	40(%esp), %eax
	movl	%ecx, %edx
/APP
 # 7832 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	60(%esp), %edx
	sall	$15, %edx
	leal	32768(%eax,%edx), %eax
	cmpl	$768, 36(%esp)
	je	L1272
	movl	56(%esp), %ebp
	movl	%edi, %edx
	subl	%ebp, %edx
	sall	$15, %edx
	addl	%edx, %ebx
L1265:
	sall	$15, %edi
	addl	%ebx, %edi
	andl	$1073741824, %esi
	cmovne	%edi, %ebx
	jmp	L1263
	.p2align 4,,10
	.p2align 3
L1272:
	movl	32(%esp), %edx
	movl	60(%esp), %ebp
	subl	%ebp, %edx
	sall	$15, %edx
	addl	%edx, %eax
	jmp	L1265
	.p2align 4,,10
	.p2align 3
L1271:
	movl	32(%esp), %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	60(%esp), %eax
	imull	%ecx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, %ecx
	jmp	L1262
	.p2align 4,,10
	.p2align 3
L1258:
	movl	32(%esp), %ecx
	movl	%ecx, %ebx
	sarl	$31, %ebx
	jmp	L1260
	.p2align 4,,10
	.p2align 3
L1259:
	movl	$3, %edx
	movl	%edi, %eax
	xorl	%ebx, %ebx
	movl	$4, 8(%esp)
	imull	%edx
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%edi, 56(%esp)
	movl	$-715849728, %ecx
	movl	%eax, 60(%esp)
	movl	$78643, %eax
	jmp	L1257
	.cfi_endproc
LFE25:
	.globl	__ZL5dotp2.lto_priv.0
	.bss
	.align 4
__ZL5dotp2.lto_priv.0:
	.space 4
	.globl	__ZL5dotp1.lto_priv.0
	.align 4
__ZL5dotp1.lto_priv.0:
	.space 4
	.globl	__ZL12nodesperline.lto_priv.0
	.align 4
__ZL12nodesperline.lto_priv.0:
	.space 4
	.globl	_prwalls
	.align 32
_prwalls:
	.space 65536
	.globl	_wallsect
	.align 32
_wallsect:
	.space 32768
	.globl	_pr_verbosity
	.data
	.align 4
_pr_verbosity:
	.long	1
	.globl	_wallext
	.bss
	.align 4
_wallext:
	.space 4
.lcomm __ZL3ysi,32,32
.lcomm __ZL3xsi,32,32
.lcomm __ZL4rzi2,32,32
.lcomm __ZL4ryi2,32,32
.lcomm __ZL4rxi2,32,32
.lcomm __ZL3rzi,32,32
	.globl	_fxdimen
	.data
	.align 4
_fxdimen:
	.long	-1082130432
	.globl	__ZL10spritesxyz.lto_priv.0
	.bss
	.align 32
__ZL10spritesxyz.lto_priv.0:
	.space 49164
	.globl	_tspriteptr
	.align 32
_tspriteptr:
	.space 16388
	.globl	__ZL9distrecip.lto_priv.0
	.align 4
__ZL9distrecip.lto_priv.0:
	.space 4
	.globl	__ZL10nytooclose.lto_priv.0
	.align 4
__ZL10nytooclose.lto_priv.0:
	.space 4
.lcomm __ZL6ggyinc,1028,32
.lcomm __ZL6ggxinc,1028,32
	.globl	_novoxmips
	.align 4
_novoxmips:
	.space 4
	.section .rdata,"dr"
	.align 4
LC0:
	.long	1065353216
	.align 4
LC1:
	.long	1061997773
	.align 4
LC2:
	.long	-1082130432
	.align 4
LC4:
	.long	1051372203
	.align 4
LC5:
	.long	1059760811
	.align 4
LC7:
	.long	1090519040
	.align 4
LC8:
	.long	1224736768
	.align 4
LC9:
	.long	994888909
	.align 4
LC10:
	.long	1518338048
	.align 4
LC11:
	.long	1077936128
	.align 4
LC12:
	.long	1082130432
	.align 4
LC13:
	.long	905969664
	.align 4
LC14:
	.long	964689920
	.align 4
LC15:
	.long	838860800
	.align 4
LC16:
	.long	1140850688
	.align 4
LC17:
	.long	981467136
	.align 4
LC18:
	.long	998244352
	.align 4
LC19:
	.long	931135488
	.align 4
LC20:
	.long	1115684864
	.align 16
LC21:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 4
LC22:
	.long	914358272
	.align 4
LC23:
	.long	1132462080
	.align 4
LC24:
	.long	830472192
	.align 4
LC25:
	.long	897581056
	.align 4
LC26:
	.long	1015021568
	.align 4
LC30:
	.long	1098907648
	.align 4
LC32:
	.long	1233125376
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_setupdrawslab;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.9;	.scl	2;	.type	32;	.endef
	.def	_divideu32.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_videoBeginDrawing;	.scl	2;	.type	32;	.endef
	.def	_drawslab;	.scl	2;	.type	32;	.endef
	.def	_videoEndDrawing;	.scl	2;	.type	32;	.endef
	.def	_animateoffs;	.scl	2;	.type	32;	.endef
	.def	_fixtransluscence;	.scl	2;	.type	32;	.endef
	.def	_settransreverse;	.scl	2;	.type	32;	.endef
	.def	__Z12tileLoadHighi;	.scl	2;	.type	32;	.endef
	.def	__ZL12maskwallscaniii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_lrintf;	.scl	2;	.type	32;	.endef
	.def	_settransnormal;	.scl	2;	.type	32;	.endef
	.def	__ZL17get_screen_coordsRK4vec2IiES2_PiS3_S3_S3_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL9owallmostPsix.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL17transmaskwallscaniii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_msethlineshift;	.scl	2;	.type	32;	.endef
	.def	__ZL14ceilspritescanii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_tileLoad.isra.0;	.scl	2;	.type	32;	.endef
	.def	_tsethlineshift;	.scl	2;	.type	32;	.endef
	.def	__ZL24setupslopevlin_alsotransiii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru24current_verbosity_cutoffEv;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_tabledivide32_branchfree.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL8wallmostPsiic.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL19setup_globals_wall1PK11uwalltypev7i.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL19setup_globals_wall2PK11uwalltypev7hii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL8prepwalliPK11uwalltypev7.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_wallfront;	.scl	2;	.type	32;	.endef
	.def	_inthash_find;	.scl	2;	.type	32;	.endef
	.def	_inthash_add;	.scl	2;	.type	32;	.endef
	.def	_calc_and_apply_fog;	.scl	2;	.type	32;	.endef
	.def	_handle_blend;	.scl	2;	.type	32;	.endef
	.def	_polymer_drawplane.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL29polymost_drawmaskwallinternali.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_setuphlineasm4;	.scl	2;	.type	32;	.endef
	.def	_thline;	.scl	2;	.type	32;	.endef
	.def	__ZL14nonpow2_thlineijijPc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_hlineasm4;	.scl	2;	.type	32;	.endef
	.def	_mhline;	.scl	2;	.type	32;	.endef
	.def	__ZL14nonpow2_mhlineijijPc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z20polymost_fillpolygoni;	.scl	2;	.type	32;	.endef
