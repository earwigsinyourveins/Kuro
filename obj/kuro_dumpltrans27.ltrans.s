	.file	"<artificial>"
	.text
	.p2align 4
	.def	__ZL11dosetaspectv;	.scl	3;	.type	32;	.endef
__ZL11dosetaspectv:
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
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	_xyaspect, %eax
	cmpl	_oxyaspect, %eax
	jne	L57
L2:
	movl	_xdimen, %ecx
	movl	__ZL7oxdimen.lto_priv.0, %ebp
	movl	_viewingrange, %eax
	cmpl	%ebp, %ecx
	je	L58
L6:
	movl	%eax, __ZL13oviewingrange.lto_priv.0
	leal	(%eax,%eax,4), %eax
	movl	_xdimenrecip, %edx
	movl	$0, __ZL12no_radarang2.lto_priv.0
	sall	$9, %eax
/APP
 # 8566 "source/build/src/engine.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	%edx, %edi
	movl	%edx, %eax
	movl	%ecx, %edx
/APP
 # 8567 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $1, %edx, %eax
 # 0 "" 2
/NO_APP
	testl	%ecx, %ecx
	jle	L8
	movl	$335544320, %ebx
	xorl	%esi, %esi
	subl	%eax, %ebx
	jmp	L11
	.p2align 4,,10
	.p2align 3
L9:
	movzwl	%bx, %edx
	movl	__ZL9qradarang.lto_priv.0(,%eax,4), %ecx
	addl	%edi, %ebx
	testl	%edx, %edx
	je	L10
	movl	__ZL9qradarang.lto_priv.0+4(,%eax,4), %eax
	subl	%ecx, %eax
/APP
 # 8584 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
L10:
	movl	__ZL9radarang2.lto_priv.0, %eax
	sarl	$6, %ecx
	movl	%ecx, (%eax,%esi,4)
	movl	_xdimen, %ecx
	addl	$1, %esi
	cmpl	%esi, %ecx
	jle	L8
L11:
	movl	%ebx, %eax
	sarl	$16, %eax
	cmpl	$671023103, %ebx
	jbe	L9
	movl	$1, __ZL12no_radarang2.lto_priv.0
L8:
	cmpl	%ecx, %ebp
	je	L13
	cmpl	__ZL14distrecipcache+4, %ecx
	je	L14
	cmpl	%ecx, __ZL14distrecipcache+16
	je	L15
	cmpl	%ecx, __ZL14distrecipcache+28
	je	L16
	movl	$0, __ZL9distrecip.lto_priv.0
L17:
	movl	__ZL14distrecipcache+8, %eax
	xorl	%edx, %edx
	cmpl	%eax, __ZL14distrecipcache+20
	setl	%dl
	leal	(%edx,%edx), %ebx
	leal	(%ebx,%edx), %eax
	movl	__ZL14distrecipcache+8(,%eax,4), %eax
	cmpl	%eax, __ZL14distrecipcache+32
	movl	$2, %eax
	cmovl	%eax, %edx
	movl	$4, %eax
	cmovl	%eax, %ebx
	leal	(%ebx,%edx), %esi
	movl	__ZL14distrecipcache(,%esi,4), %eax
	movl	%eax, 16(%esp)
	testl	%eax, %eax
	je	L59
L21:
	movl	__ZL15distrecipagecnt, %eax
	addl	%edx, %ebx
	leal	__ZL14distrecipcache(,%ebx,4), %edx
	movl	%ecx, %ebx
	addl	$1, %eax
	movl	%ecx, 4(%edx)
	movl	%eax, __ZL15distrecipagecnt
	movl	%eax, 8(%edx)
	movl	16(%esp), %eax
	movl	%eax, __ZL9distrecip.lto_priv.0
	cmpl	$2047, %ecx
	jg	L33
	movl	$1, %edi
	jmp	L31
	.p2align 4,,10
	.p2align 3
L61:
	movl	%esi, %eax
	movl	%ebx, %edx
	sarb	$7, %al
	sarl	$31, %edx
	movsbl	%al, %esi
	movl	$-1, %eax
	sall	%cl, %eax
	notl	%eax
	andl	%edx, %eax
	addl	%ebx, %eax
	sarl	%cl, %eax
	xorl	%esi, %eax
	subl	%esi, %eax
L29:
	movl	16(%esp), %esi
	movl	%eax, (%esi,%edi,4)
	addl	$1, %edi
	cmpl	$131072, %edi
	je	L60
	movl	__ZL9distrecip.lto_priv.0, %eax
	movl	_xdimen, %ebx
	movl	%eax, 16(%esp)
L31:
	sall	$20, %ebx
	cmpl	%edi, _lastd_s32
	je	L24
	cmpl	$16383, %edi
	jle	L24
	movl	%edi, %esi
	movl	$31, %eax
	movl	%edi, _lastd_s32
	negl	%esi
	cmovs	%edi, %esi
	bsrl	%esi, %edx
	leal	-1(%esi), %ebp
	xorl	$31, %edx
	subl	%edx, %eax
	movl	%eax, 20(%esp)
	xorl	%eax, %eax
	movzbl	20(%esp), %ecx
	testl	%esi, %ebp
	je	L25
	movl	$1, %ebp
	movl	$30, %ecx
	subl	%edx, %ecx
	movl	%ebp, %edx
	sall	%cl, %edx
	movl	%esi, %ecx
/APP
 # 477 "source/build/include/libdivide.h" 1
	divl %esi
 # 0 "" 2
/NO_APP
	subl	%edx, %ecx
	movl	%ecx, 24(%esp)
	movzbl	20(%esp), %ecx
	sall	%cl, %ebp
	subl	$1, %ecx
	cmpl	%ebp, 24(%esp)
	jb	L27
	leal	(%edx,%edx), %ebp
	cmpl	%esi, %ebp
	setnb	%cl
	cmpl	%edx, %ebp
	setb	%dl
	orl	%edx, %ecx
	movzbl	%cl, %ecx
	leal	(%ecx,%eax,2), %eax
	movzbl	20(%esp), %ecx
	orl	$64, %ecx
L27:
	addl	$1, %eax
L25:
	movl	%eax, _divtable32
	movb	%cl, _divtable32+4
L24:
	xorl	%eax, %eax
	cmpl	$16383, %edi
	cmovle	%edi, %eax
	movzbl	_divtable32+4(%eax,%eax,4), %esi
	movl	_divtable32(%eax,%eax,4), %edx
	movl	%esi, %ecx
	andl	$31, %ecx
	testl	%edx, %edx
	je	L61
	movl	%edx, %eax
	imull	%ebx
	movl	%esi, %eax
	sarb	$7, %al
	movsbl	%al, %eax
	xorl	%eax, %ebx
	addl	%edx, %ebx
	subl	%eax, %ebx
	andl	$64, %esi
	cmovne	%ebx, %edx
	movl	%edx, %eax
	shrl	$31, %edx
	sarl	%cl, %eax
	addl	%edx, %eax
	jmp	L29
	.p2align 4,,10
	.p2align 3
L14:
	cmpl	__ZL14distrecipcache+16, %ecx
	je	L15
	movl	__ZL14distrecipcache, %eax
	cmpl	%ecx, __ZL14distrecipcache+28
	je	L16
L18:
	movl	%eax, __ZL9distrecip.lto_priv.0
	testl	%eax, %eax
	je	L17
L19:
	imull	$2100, %ecx, %eax
	movl	%eax, __ZL10nytooclose.lto_priv.0
L13:
	movl	%ecx, __ZL7oxdimen.lto_priv.0
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
L57:
	.cfi_restore_state
	leal	(%eax,%eax,4), %esi
	movl	%eax, _oxyaspect
	movl	_ydim, %edi
	sall	$6, %esi
	movl	$0, (%esp)
	movl	__ZL12horizlookup2.lto_priv.0, %ecx
	movl	%esi, %eax
	movl	%esi, 8(%esp)
	leal	0(,%edi,4), %edx
	sarl	$31, %eax
	movl	$131072, 4(%esp)
	sarl	%edx
	movl	%eax, 12(%esp)
	leal	-4(%ecx,%edx,4), %ebx
	movl	%edx, __ZL10horizycent.lto_priv.0
	call	_tabledivide64.lto_priv.9
	movl	%eax, (%ebx)
	movl	__ZL10horizycent.lto_priv.0, %eax
	leal	-1(%eax), %edx
	movl	%eax, %ebx
	testl	%edx, %edx
	jle	L3
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L4:
	movl	%edi, %eax
	movl	$268435456, (%esp)
	movl	__ZL11horizlookup.lto_priv.0, %ebp
	leal	0(,%edi,4), %ebx
	subl	%edx, %eax
	movl	$0, 4(%esp)
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	addl	%ebx, %ebp
	movl	%eax, 12(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, 0(%ebp)
	movl	__ZL11horizlookup.lto_priv.0, %eax
	movl	(%eax,%edi,4), %eax
/APP
 # 8549 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%esi, %edx
	movl	%esi, 8(%esp)
	addl	__ZL12horizlookup2.lto_priv.0, %ebx
	addl	$1, %edi
	sarl	$31, %edx
	movl	%edx, 12(%esp)
	cltd
	shldl	$20, %eax, %edx
	sall	$20, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, (%ebx)
	movl	__ZL10horizycent.lto_priv.0, %eax
	leal	-1(%eax), %edx
	movl	%eax, %ebx
	cmpl	%edi, %edx
	jg	L4
L3:
	movl	_ydim, %edx
	leal	-1(,%edx,4), %edx
	cmpl	%eax, %edx
	jg	L5
	jmp	L2
	.p2align 4,,10
	.p2align 3
L62:
	movl	__ZL10horizycent.lto_priv.0, %eax
L5:
	subl	$1, %eax
	movl	%ebx, %edx
	movl	$268435456, (%esp)
	movl	__ZL11horizlookup.lto_priv.0, %ebp
	subl	%eax, %edx
	movl	$0, 4(%esp)
	leal	0(,%ebx,4), %edi
	movl	%edx, 8(%esp)
	sarl	$31, %edx
	addl	%edi, %ebp
	movl	%edx, 12(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, 0(%ebp)
	movl	__ZL11horizlookup.lto_priv.0, %eax
	movl	(%eax,%ebx,4), %eax
/APP
 # 8555 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%esi, %edx
	movl	%esi, 8(%esp)
	addl	__ZL12horizlookup2.lto_priv.0, %edi
	addl	$1, %ebx
	sarl	$31, %edx
	movl	%edx, 12(%esp)
	cltd
	shldl	$20, %eax, %edx
	sall	$20, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, (%edi)
	movl	_ydim, %eax
	leal	-1(,%eax,4), %eax
	cmpl	%ebx, %eax
	jg	L62
	jmp	L2
	.p2align 4,,10
	.p2align 3
L58:
	cmpl	%eax, __ZL13oviewingrange.lto_priv.0
	jne	L6
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
L15:
	.cfi_restore_state
	movl	__ZL14distrecipcache+12, %eax
	cmpl	%ecx, __ZL14distrecipcache+28
	jne	L18
L16:
	movl	__ZL14distrecipcache+24, %eax
	jmp	L18
L33:
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L23:
	movl	%ecx, %ebx
	movl	%esi, 8(%esp)
	sarl	$31, %ebx
	movl	%edi, 12(%esp)
	shldl	$20, %ecx, %ebx
	sall	$20, %ecx
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	__ZL9distrecip.lto_priv.0, %ecx
	movl	%eax, (%ecx,%esi,4)
	addl	$1, %esi
	movl	_xdimen, %ecx
	movl	%esi, %eax
	adcl	$0, %edi
	xorl	$131072, %eax
	orl	%edi, %eax
	jne	L23
	jmp	L19
L60:
	movl	_xdimen, %ecx
	jmp	L19
L59:
	movl	$16, 4(%esp)
	movl	_g_sm_heap, %ecx
	movl	$524288, (%esp)
	movl	%edx, 20(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj
	.cfi_def_cfa_offset 40
	subl	$8, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, 16(%esp)
	testl	%eax, %eax
	je	L22
	movl	%eax, __ZL14distrecipcache(,%esi,4)
	movl	_xdimen, %ecx
	movl	20(%esp), %edx
	jmp	L21
L22:
	movl	$524288, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE0:
	.section .rdata,"dr"
	.align 4
LC3:
	.ascii "polymost_dorotatespritemodel(sx:%d, sy:%d, z:%d, a:%hd, picnum:%hd, dashade:%hhd, dapalnum:%hhu, dastat:%d, daalpha:%hhu, dablend:%hhu, uniqid:%d)\0"
	.align 4
LC21:
	.ascii "polymost_dorotatesprite(sx:%d, sy:%d, z:%d, a:%hd, picnum:%hd, dashade:%hhd, dapalnum:%hhu, dastat:%d, daalpha:%hhu, dablend:%hhu, cx1:%d, cy1:%d, cx2:%d, cy2:%d, uniqid:%d)\0"
	.text
	.p2align 4
	.globl	__ZL14dorotatespriteiiissacihhiiiii.lto_priv.0
	.def	__ZL14dorotatespriteiiissacihhiiiii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL14dorotatespriteiiissacihhiiiii.lto_priv.0:
LFB2:
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
	subl	$528, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%eax, -304(%ebp)
	movzwl	(%edi), %eax
	movl	%edx, -308(%ebp)
	movw	%ax, -368(%ebp)
	movzwl	4(%edi), %eax
	movl	%ecx, -312(%ebp)
	movw	%ax, -320(%ebp)
	movzbl	8(%edi), %eax
	movb	%al, -400(%ebp)
	movzbl	12(%edi), %eax
	movb	%al, -392(%ebp)
	movl	16(%edi), %eax
	movl	%eax, -352(%ebp)
	movzbl	20(%edi), %eax
	movb	%al, -376(%ebp)
	movzbl	24(%edi), %eax
	movb	%al, -404(%ebp)
	movl	28(%edi), %eax
	movl	%eax, -316(%ebp)
	movl	32(%edi), %eax
	movl	%eax, -344(%ebp)
	movl	36(%edi), %eax
	movl	%eax, -328(%ebp)
	movl	40(%edi), %eax
	movl	44(%edi), %edi
	movl	%eax, -360(%ebp)
	testl	%edi, %edi
	je	L71
	cmpb	$0, __ZGVZL14dorotatespriteiiissacihhiiiiiE6smooth
	jne	L65
	movl	$__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+36, %eax
	movl	$__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+13348, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L66:
	movl	$0, 8(%eax)
	addl	$52, %eax
	movl	$0, -40(%eax)
	movl	$0, -52(%eax)
	cmpl	%eax, %edx
	jne	L66
	movb	$1, __ZGVZL14dorotatespriteiiissacihhiiiiiE6smooth
L65:
	movl	%edi, %eax
	movzwl	-352(%ebp), %ebx
	movzwl	-320(%ebp), %ecx
	movzbl	%al, %esi
	movswl	-368(%ebp), %eax
	movss	-304(%ebp), %xmm3
	andl	$-34, %ebx
	movss	-312(%ebp), %xmm1
	movss	-308(%ebp), %xmm2
	movw	%cx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+32
	movl	%eax, -324(%ebp)
	movl	_totalclock+8, %eax
	movaps	%xmm3, %xmm0
	movw	%bx, -348(%ebp)
	movaps	%xmm1, %xmm4
	unpcklps	%xmm2, %xmm0
	movss	-324(%ebp), %xmm7
	movw	%bx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+34
	imull	$52, %esi, %ebx
	movl	_totalclock+12, %edx
	movl	%eax, %ecx
	xorw	%cx, %cx
	unpcklps	%xmm7, %xmm4
	movl	%ecx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+44
	movlhps	%xmm4, %xmm0
	movl	%edx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+48
	cmpl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+44(%ebx), %eax
	leal	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth(%ebx), %ecx
	movl	%edx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+36
	sbbl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+48(%ebx), %edx
	movups	%xmm0, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth
	movups	%xmm0, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+16
	cmpl	$3, %edx
	jle	L530
L67:
	imull	$52, %esi, %eax
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+16(%eax), %edx
	movl	%edx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth(%eax)
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+20(%eax), %edx
	movl	%edx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+4(%eax)
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+24(%eax), %edx
	movl	%edx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+8(%eax)
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+28(%eax), %edx
	movl	%edx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+12(%eax)
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+16, %edx
	movl	%edx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+16(%eax)
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+20, %edx
	movl	%edx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+20(%eax)
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+24, %edx
	movl	%edx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+24(%eax)
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+28, %edx
	movl	%edx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+28(%eax)
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+44, %ecx
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+48, %ebx
	xorw	%cx, %cx
	movl	%ebx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+36(%eax)
	movl	%ecx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+44(%eax)
	movl	%ebx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+48(%eax)
L68:
	imull	$52, %esi, %esi
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+16, %ebx
	movl	%ebx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+16(%esi)
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+20, %ecx
	movl	%ebx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth(%esi)
	movl	%ecx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+20(%esi)
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+24, %edx
	movl	%ecx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+4(%esi)
	movl	%edx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+24(%esi)
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+28, %eax
	movl	%edx, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+8(%esi)
	movl	%eax, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+28(%esi)
	movl	%eax, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+12(%esi)
	movzwl	-320(%ebp), %eax
	movw	%ax, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+32(%esi)
	movzwl	-348(%ebp), %eax
	movw	%ax, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+34(%esi)
	movl	_r_rotatespriteinterp, %eax
	testl	%eax, %eax
	je	L71
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth, %eax
	movl	%eax, -304(%ebp)
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+4, %eax
	movl	%eax, -308(%ebp)
	movl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+8, %eax
	movl	%eax, -312(%ebp)
	movzwl	__ZZL14dorotatespriteiiissacihhiiiiiE6smooth+12, %eax
	movw	%ax, -368(%ebp)
L71:
	cmpb	$-1, -376(%ebp)
	je	L63
	movswl	-320(%ebp), %eax
	movl	%eax, -372(%ebp)
	cmpl	$2, _rendmode
	jle	L73
	cmpl	$200, _qsetmode
	je	L74
L73:
	movl	-316(%ebp), %esi
	testl	%esi, %esi
	js	L531
	movl	-316(%ebp), %esi
	movl	_xdim, %eax
	cmpl	%esi, %eax
	leal	-1(%eax), %edx
	cmovg	%esi, %edx
	movl	-344(%ebp), %esi
	movl	%edx, -316(%ebp)
	testl	%esi, %esi
	js	L320
L534:
	movl	_ydim, %eax
	cmpl	%esi, %eax
	jle	L159
	sall	$16, %esi
	movl	%esi, -320(%ebp)
L158:
	movl	-328(%ebp), %esi
	testl	%esi, %esi
	js	L321
L535:
	movl	_xdim, %eax
	cmpl	%esi, %eax
	jle	L161
	movl	-316(%ebp), %eax
	addl	%eax, %esi
L160:
	movl	-360(%ebp), %edi
	testl	%edi, %edi
	js	L322
L536:
	movl	_ydim, %eax
	cmpl	%edi, %eax
	jle	L163
	addl	%edi, -344(%ebp)
L162:
	movl	-372(%ebp), %eax
	movswl	_tilesiz(,%eax,4), %edi
	movswl	_tilesiz+2(,%eax,4), %ebx
	movl	%edi, -364(%ebp)
	movl	%ebx, -356(%ebp)
	testb	$16, -352(%ebp)
	jne	L323
	movsbl	_picanm+1(%eax,%eax,4), %ecx
	movsbl	_picanm+2(%eax,%eax,4), %edx
	movl	%ebx, %eax
	sarl	%edi
	sarl	%eax
	addl	%ecx, %edi
	addl	%edx, %eax
	movl	%edi, -380(%ebp)
	movl	%eax, -324(%ebp)
L164:
	movl	-352(%ebp), %edi
	movl	-324(%ebp), %edx
	leal	-312(%ebp), %ecx
	movl	-356(%ebp), %eax
	movl	%edi, %ebx
	subl	%edx, %eax
	andl	$4, %ebx
	movl	%ebx, -408(%ebp)
	cmove	%edx, %eax
	movzwl	-368(%ebp), %ebx
	leal	-308(%ebp), %edx
	movl	%eax, -324(%ebp)
	leal	512(%ebx), %eax
	andl	$2047, %ebx
	movswl	_sintable(%ebx,%ebx), %ebx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	movl	%ebx, -388(%ebp)
	leal	-248(%ebp), %ebx
	movl	%eax, -384(%ebp)
	leal	-304(%ebp), %eax
	movl	%ebx, 16(%esp)
	leal	-216(%ebp), %ebx
	movl	%ebx, 12(%esp)
	movl	-344(%ebp), %ebx
	movl	%esi, 4(%esp)
	movl	%ebx, 8(%esp)
	movl	%edi, (%esp)
	call	_dorotspr_handle_bit2
	movl	-384(%ebp), %eax
	movl	-312(%ebp), %edx
/APP
 # 7997 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	-312(%ebp), %edx
	movl	-388(%ebp), %eax
/APP
 # 7998 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	andl	$10, %edi
	movl	%eax, %ebx
	movl	%edi, -412(%ebp)
	cmpl	$8, %edi
	je	L324
	movl	%ecx, %eax
	movl	-248(%ebp), %edx
/APP
 # 8001 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	-248(%ebp), %edx
	movl	%ebx, %eax
/APP
 # 8002 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, -344(%ebp)
L166:
	movl	-380(%ebp), %eax
	movl	-324(%ebp), %edi
	movl	-308(%ebp), %edx
	imull	%ecx, %edi
	imull	%ebx, %eax
	imull	-356(%ebp), %ecx
	imull	-364(%ebp), %ebx
	addl	%edi, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%edx, __ZL4nry1
	leal	(%ebx,%edx), %edx
	addl	%eax, %ecx
	movl	%eax, %ebx
	movl	%edx, __ZL4nry1+4
	leal	(%edx,%ecx), %eax
	movl	%ecx, %edi
	movl	%ebx, -348(%ebp)
	subl	%ebx, %eax
	cmpl	%ecx, %edx
	movl	%ecx, __ZL4nry1+12
	cmovge	%edx, %edi
	movl	%eax, __ZL4nry1+8
	movl	%edi, %ebx
	movl	-348(%ebp), %edi
	cmpl	%edi, %ebx
	cmovl	%edi, %ebx
	cmpl	%eax, %ebx
	cmovl	%eax, %ebx
	cmpl	-320(%ebp), %ebx
	jl	L63
	cmpl	%ecx, %edx
	movl	-348(%ebp), %edi
	cmovg	%ecx, %edx
	movl	-360(%ebp), %ecx
	cmpl	%edi, %edx
	cmovg	%edi, %edx
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	sall	$16, %ecx
	cmpl	%ecx, %edx
	jg	L63
	movl	-380(%ebp), %eax
	movl	-344(%ebp), %edx
	imull	-324(%ebp), %edx
	movl	-304(%ebp), %ebx
	imull	%esi, %eax
	imull	-364(%ebp), %esi
	subl	%edx, %eax
	movl	-344(%ebp), %edx
	imull	-356(%ebp), %edx
	subl	%eax, %ebx
	movl	%ebx, %eax
	leal	(%esi,%ebx), %edi
	movl	-316(%ebp), %esi
	movl	%ebx, -424(%ebp)
	subl	%edx, %eax
	movl	%ebx, __ZL4nrx1
	leal	(%edi,%eax), %edx
	sall	$16, %esi
	movl	%eax, %ecx
	movl	%edi, __ZL4nrx1+4
	subl	%ebx, %edx
	cmpl	%eax, %edi
	movl	%eax, __ZL4nrx1+12
	cmovge	%edi, %ecx
	movl	%edx, __ZL4nrx1+8
	movl	%esi, -344(%ebp)
	cmpl	%ebx, %ecx
	cmovl	%ebx, %ecx
	cmpl	%edx, %ecx
	cmovl	%edx, %ecx
	cmpl	%esi, %ecx
	jl	L63
	movl	-328(%ebp), %ecx
	sall	$16, %ecx
	cmpl	%eax, %edi
	cmovle	%edi, %eax
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	cmpl	%eax, %ecx
	jl	L63
	movl	-328(%ebp), %eax
	xorl	%ecx, %ecx
	movl	$4, -364(%ebp)
	movl	$0, -316(%ebp)
	addl	$1, %eax
	sall	$16, %eax
	movl	%eax, -328(%ebp)
L174:
	movl	%edi, %eax
	leal	1(%ecx), %esi
	subl	%ebx, %eax
	andl	$3, %esi
	movl	%eax, -324(%ebp)
	cmpl	%ebx, -344(%ebp)
	jg	L167
	cmpl	%ebx, -328(%ebp)
	jl	L167
	movl	-316(%ebp), %edx
	movl	__ZL4nry1(,%ecx,4), %eax
	movl	%ebx, __ZL4nrx2(,%edx,4)
	movl	%eax, __ZL4nry2(,%edx,4)
	addl	$1, %edx
	movl	%edx, -316(%ebp)
L167:
	movl	-324(%ebp), %eax
	testl	%eax, %eax
	jle	L168
	movl	-344(%ebp), %eax
	movl	%eax, %edx
	subl	%edi, %eax
	subl	%ebx, %edx
	xorl	%edx, %eax
	movl	%edx, -380(%ebp)
	js	L169
	movl	-328(%ebp), %eax
L170:
	movl	%eax, %edx
	subl	%ebx, %edx
	movl	%eax, %ebx
	subl	%edi, %ebx
	xorl	%edx, %ebx
	js	L532
L172:
	subl	$1, -364(%ebp)
	je	L173
L537:
	leal	1(%esi), %eax
	movl	__ZL4nrx1(,%esi,4), %ebx
	movl	%esi, %ecx
	andl	$3, %eax
	movl	__ZL4nrx1(,%eax,4), %edi
	jmp	L174
L281:
	movl	%edi, %esi
	movl	-356(%ebp), %edi
	movl	%ebx, -396(%ebp)
	movl	%ecx, %ebx
	movl	-352(%ebp), %ecx
	subl	$1, %edi
L280:
	cmpl	%edi, %ecx
	jge	L63
	movl	%ecx, %eax
	movl	-384(%ebp), %ecx
	testl	%ecx, %ecx
	je	L533
	movl	-392(%ebp), %edx
	testl	%edx, %edx
	jne	L515
	movl	%edi, -328(%ebp)
	movl	-396(%ebp), %edi
	jmp	L286
	.p2align 4,,10
	.p2align 3
L352:
	movl	%edi, %eax
L286:
	movl	%edi, %ecx
	leal	1(%eax), %edi
	movl	-360(%ebp), %edx
	movl	%edi, %eax
	subl	%ecx, %eax
	movl	-344(%ebp), %ecx
	imull	%eax, %ecx
	imull	-324(%ebp), %eax
	addl	%ecx, %esi
	addl	%eax, %ebx
	movl	_ylookup, %eax
	movl	(%eax,%edi,4), %ecx
	movl	_frameplace, %eax
	movl	$0, 8(%esp)
	addl	%edx, %ecx
	addl	%ecx, %eax
	movl	%ebx, %ecx
	movl	%eax, 20(%esp)
	movl	%ebx, %eax
	sarl	$16, %ecx
	sall	$16, %eax
	movl	%eax, 16(%esp)
	movl	%esi, %eax
	sall	$16, %eax
	movl	%eax, 12(%esp)
	movl	%esi, %eax
	sarl	$16, %eax
	imull	-316(%ebp), %eax
	addl	%ecx, %eax
	addl	-320(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	__ZL5lastx.lto_priv.0, %eax
	subl	(%eax,%edi,4), %edx
	movl	%edx, (%esp)
	call	_rhlineasm4
	cmpl	-328(%ebp), %edi
	jne	L352
L63:
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
L531:
	.cfi_restore_state
	movl	$0, -316(%ebp)
	movl	-344(%ebp), %esi
	testl	%esi, %esi
	jns	L534
L320:
	movl	$0, -320(%ebp)
	movl	-328(%ebp), %esi
	movl	$0, -344(%ebp)
	testl	%esi, %esi
	jns	L535
L321:
	movl	-360(%ebp), %edi
	movl	-316(%ebp), %esi
	movl	$0, -328(%ebp)
	testl	%edi, %edi
	jns	L536
L322:
	movl	$0, -360(%ebp)
	jmp	L162
L530:
	movss	%xmm3, -356(%ebp)
	movl	-356(%ebp), %eax
	cmpl	%eax, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+16(%ebx)
	setne	%dl
	movss	%xmm2, -356(%ebp)
	movl	-356(%ebp), %eax
	cmpl	%eax, __ZZL14dorotatespriteiiissacihhiiiiiE6smooth+20(%ebx)
	setne	%al
	movss	%xmm1, -356(%ebp)
	movl	-356(%ebp), %ebx
	orl	%edx, %eax
	cmpl	%ebx, 24(%ecx)
	setne	%dl
	orb	%al, %dl
	jne	L67
	movl	-324(%ebp), %eax
	cmpl	%eax, 28(%ecx)
	je	L68
	jmp	L67
	.p2align 4,,10
	.p2align 3
L168:
	movl	-328(%ebp), %eax
	movl	%eax, %edx
	subl	%edi, %eax
	subl	%ebx, %edx
	xorl	%edx, %eax
	movl	%edx, -380(%ebp)
	js	L171
	movl	-344(%ebp), %eax
	movl	%eax, %edx
	subl	%ebx, %edx
	movl	%eax, %ebx
	subl	%edi, %ebx
	xorl	%edx, %ebx
	jns	L172
L532:
	movl	-316(%ebp), %edi
	movl	__ZL4nry1(,%ecx,4), %ebx
	movl	%eax, __ZL4nrx2(,%edi,4)
	movl	-324(%ebp), %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	__ZL4nry1(,%esi,4), %eax
	subl	%ebx, %eax
	imull	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	addl	%eax, %ebx
	movl	%ebx, __ZL4nry2(,%edi,4)
	addl	$1, %edi
	subl	$1, -364(%ebp)
	movl	%edi, -316(%ebp)
	jne	L537
L173:
	cmpl	$2, -316(%ebp)
	jle	L63
	movl	-360(%ebp), %eax
	xorl	%ecx, %ecx
	movl	$0, -344(%ebp)
	addl	$1, %eax
	sall	$16, %eax
	movl	%eax, -328(%ebp)
	jmp	L182
	.p2align 4,,10
	.p2align 3
L540:
	movl	-320(%ebp), %eax
	movl	%eax, %edx
	subl	%esi, %eax
	subl	%edi, %edx
	xorl	%edx, %eax
	movl	%edx, -360(%ebp)
	js	L178
	movl	-328(%ebp), %eax
L179:
	movl	%eax, %edx
	subl	%edi, %edx
	movl	%eax, %edi
	subl	%esi, %edi
	xorl	%edx, %edi
	js	L538
L181:
	testl	%ebx, %ebx
	je	L539
L326:
	movl	%ebx, %ecx
L182:
	xorl	%eax, %eax
	leal	1(%ecx), %ebx
	cmpl	%ebx, -316(%ebp)
	movl	__ZL4nry2(,%ecx,4), %edi
	cmove	%eax, %ebx
	movl	__ZL4nry2(,%ebx,4), %esi
	movl	%esi, %eax
	subl	%edi, %eax
	movl	%eax, -324(%ebp)
	cmpl	-320(%ebp), %edi
	jl	L176
	cmpl	%edi, -328(%ebp)
	jl	L176
	movl	-344(%ebp), %edx
	movl	__ZL4nrx2(,%ecx,4), %eax
	movl	%edi, __ZL4nry1(,%edx,4)
	movl	%eax, __ZL4nrx1(,%edx,4)
	addl	$1, %edx
	movl	%edx, -344(%ebp)
L176:
	movl	-324(%ebp), %eax
	testl	%eax, %eax
	jg	L540
	movl	-328(%ebp), %eax
	movl	%eax, %edx
	subl	%esi, %eax
	subl	%edi, %edx
	xorl	%edx, %eax
	movl	%edx, -360(%ebp)
	js	L180
	movl	-320(%ebp), %eax
	movl	%eax, %edx
	subl	%edi, %edx
	movl	%eax, %edi
	subl	%esi, %edi
	xorl	%edx, %edi
	jns	L181
L538:
	movl	-344(%ebp), %edi
	movl	__ZL4nrx2(,%ecx,4), %esi
	movl	%eax, __ZL4nry1(,%edi,4)
	movl	-324(%ebp), %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	__ZL4nrx2(,%ebx,4), %eax
	subl	%esi, %eax
	imull	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	addl	%eax, %esi
	movl	%esi, __ZL4nrx1(,%edi,4)
	addl	$1, %edi
	movl	%edi, -344(%ebp)
	testl	%ebx, %ebx
	jne	L326
L539:
	movl	-344(%ebp), %edi
	movl	%ebx, -416(%ebp)
	cmpl	$2, %edi
	jle	L63
	movl	__ZL4nrx1, %eax
	leal	-1(%edi), %esi
	xorl	%edx, %edx
	movl	%esi, -316(%ebp)
	movl	%eax, -324(%ebp)
	movl	%eax, %ecx
	movl	%eax, -344(%ebp)
	jmp	L186
	.p2align 4,,10
	.p2align 3
L541:
	movl	%ebx, %eax
	orl	$65535, %eax
	subl	%ebx, %eax
/APP
 # 8043 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	-328(%ebp), %edx
	movl	__ZL4uplc.lto_priv.0, %eax
	subl	%esi, %edi
	movl	%edi, %ecx
	leal	(%eax,%esi,2), %eax
	addl	%ebx, %edx
	movl	-320(%ebp), %esi
/APP
 # 8049 "source/build/src/engine.cpp" 1
	testl %ecx, %ecx; jz 3f; testb $2, %al; jz 0f; movl %edx, %ebx; sarl $16, %ebx; movw %bx, (%eax); addl %esi, %edx; addl $2, %eax; decl %ecx; jz 3f; 0: subl $2, %ecx; jc 2f; 1: movl %edx, %ebx; addl %esi, %edx; sarl $16, %ebx; movl %edx, %edi; andl $0xffff0000, %edi; addl %esi, %edx; addl %edi, %ebx; movl %ebx, (%eax); addl $4, %eax; subl $2, %ecx; jnc 1b; testb $1, %cl; jz 3f; 2: movl %edx, %ebx; sarl $16, %ebx; movw %bx, (%eax); 3:
 # 0 "" 2
/NO_APP
L183:
	movl	-316(%ebp), %edx
	leal	-1(%edx), %eax
	testl	%edx, %edx
	je	L185
L542:
	movl	%eax, -316(%ebp)
	movl	__ZL4nrx1+4(,%eax,4), %ecx
L186:
	movl	-316(%ebp), %eax
	movl	%ecx, %edi
	movl	__ZL4nrx1(,%eax,4), %ebx
	movl	-324(%ebp), %eax
	movl	%ebx, %esi
	sarl	$16, %esi
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	sarl	$16, %edi
	movl	%eax, -324(%ebp)
	movl	-344(%ebp), %eax
	cmpl	%ebx, %eax
	cmovl	%ebx, %eax
	movl	%eax, -344(%ebp)
	cmpl	%edi, %esi
	je	L183
	movl	-316(%ebp), %eax
	movl	__ZL4nry1(,%edx,4), %edx
	movl	%ecx, -360(%ebp)
	movl	__ZL4nry1(,%eax,4), %eax
	movl	%edx, -364(%ebp)
	movl	%eax, -328(%ebp)
	movl	%ecx, %eax
	subl	%ebx, %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%edx, %eax
	subl	-328(%ebp), %eax
	cltd
	shldl	$16, %eax, %edx
	sall	$16, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, -320(%ebp)
	movl	%eax, %edx
	cmpl	%edi, %esi
	jl	L541
	movl	-360(%ebp), %eax
	movl	-320(%ebp), %edx
	orl	$65535, %eax
	subl	-360(%ebp), %eax
/APP
 # 8053 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	__ZL4dplc.lto_priv.0, %eax
	movl	%esi, %ecx
	movl	-320(%ebp), %esi
	subl	%edi, %ecx
	leal	(%eax,%edi,2), %eax
	movl	-364(%ebp), %edi
	leal	(%edi,%ebx), %edx
/APP
 # 8055 "source/build/src/engine.cpp" 1
	testl %ecx, %ecx; jz 3f; testb $2, %al; jz 0f; movl %edx, %ebx; sarl $16, %ebx; movw %bx, (%eax); addl %esi, %edx; addl $2, %eax; decl %ecx; jz 3f; 0: subl $2, %ecx; jc 2f; 1: movl %edx, %ebx; addl %esi, %edx; sarl $16, %ebx; movl %edx, %edi; andl $0xffff0000, %edi; addl %esi, %edx; addl %edi, %ebx; movl %ebx, (%eax); addl $4, %eax; subl $2, %ecx; jnc 1b; testb $1, %cl; jz 3f; 2: movl %edx, %ebx; sarl $16, %ebx; movw %bx, (%eax); 3:
 # 0 "" 2
/NO_APP
	movl	-316(%ebp), %edx
	leal	-1(%edx), %eax
	testl	%edx, %edx
	jne	L542
L185:
	movl	-372(%ebp), %eax
/APP
 # 8061 "source/build/src/engine.cpp" 1
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
	movl	-372(%ebp), %eax
	call	__Z12tileLoadHighi
	movl	%eax, __ZL8globalht.lto_priv.0
	testl	%eax, %eax
	je	L187
	movl	(%eax), %esi
	movl	%esi, -320(%ebp)
	movzwl	4(%eax), %esi
	movzwl	6(%eax), %eax
	movw	%si, -428(%ebp)
	movw	%ax, -432(%ebp)
L188:
	movzbl	-392(%ebp), %eax
	movzwl	_numshades, %esi
	movl	_palookup(,%eax,4), %ebx
	movl	-352(%ebp), %eax
	testl	%ebx, %ebx
	cmove	_palookup, %ebx
	andl	$1, %eax
	movl	%eax, -396(%ebp)
	jne	L190
	cmpb	$0, -376(%ebp)
	je	L190
	movzbl	_numalphatabs, %eax
	testb	%al, %al
	jne	L543
	movzbl	-376(%ebp), %eax
	movl	$0, -396(%ebp)
	cmpb	$84, %al
	ja	L544
	.p2align 4
	.p2align 3
L190:
	movsbl	-400(%ebp), %edx
	movswl	%si, %eax
	xorl	%ecx, %ecx
	subl	$1, %eax
	testl	%edx, %edx
	cmovs	%ecx, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	sall	$8, %eax
	addl	%ebx, %eax
	movl	%eax, -392(%ebp)
	movl	-312(%ebp), %eax
	movl	$0, (%esp)
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	$1, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, %ecx
	movl	-388(%ebp), %eax
	movl	%ecx, %edx
/APP
 # 8089 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, -364(%ebp)
	movl	%ecx, %edx
	movl	-384(%ebp), %eax
/APP
 # 8090 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	%eax, -388(%ebp)
	movl	-352(%ebp), %edi
	movl	%eax, -384(%ebp)
	movl	-364(%ebp), %eax
	andl	$8, %edi
	movl	%esi, -380(%ebp)
	negl	%eax
	movl	%edi, -376(%ebp)
	movl	%eax, -372(%ebp)
	cmpl	$8, -412(%ebp)
	je	L195
	movl	-216(%ebp), %edx
/APP
 # 8093 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, -372(%ebp)
	movl	-216(%ebp), %edx
	movl	%esi, %eax
/APP
 # 8094 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, -380(%ebp)
L195:
	movl	-324(%ebp), %eax
	movl	$65535, %ecx
	subl	-348(%ebp), %ecx
	movl	-380(%ebp), %edx
	movl	-364(%ebp), %edi
	movl	%eax, %esi
	xorw	%ax, %ax
	sarl	$16, %esi
	subl	$1, %eax
	subl	-424(%ebp), %eax
	movl	%esi, -328(%ebp)
	movl	-344(%ebp), %esi
	movl	%eax, -316(%ebp)
	sarl	$16, %esi
	movl	%esi, -360(%ebp)
	movl	%ecx, %esi
/APP
 # 8108 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, -348(%ebp)
	movl	-372(%ebp), %edx
	movl	%ecx, %esi
	movl	-316(%ebp), %eax
	movl	-388(%ebp), %edi
/APP
 # 8109 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-408(%ebp), %edx
	testl	%edx, %edx
	jne	L545
L196:
	movzwl	-432(%ebp), %edi
	movzwl	-428(%ebp), %ebx
	movl	-356(%ebp), %edx
	movl	-364(%ebp), %esi
	movl	%edi, %ecx
	sall	%cl, %edx
	movl	%ebx, %ecx
	sall	%cl, %esi
	movl	%edi, %ecx
	movl	%edx, -316(%ebp)
	movl	%esi, -344(%ebp)
	movl	-384(%ebp), %esi
	sall	%cl, %esi
	movl	%ebx, %ecx
	movl	%esi, -324(%ebp)
	movl	-380(%ebp), %esi
	sall	%cl, %esi
	movl	%edi, %ecx
	movl	%esi, -364(%ebp)
	movl	-372(%ebp), %esi
	sall	%cl, %esi
	movl	%ebx, %ecx
	movl	%esi, -380(%ebp)
	movl	-348(%ebp), %esi
	sall	%cl, %esi
	movl	%edi, %ecx
	movl	-396(%ebp), %edi
	sall	%cl, %eax
	movl	%eax, %ebx
	testl	%edi, %edi
	jne	L197
	movl	-352(%ebp), %eax
	andl	$64, %eax
	movl	%eax, -384(%ebp)
	testw	$1023, -368(%ebp)
	jne	L198
	cmpl	$256, %edx
	jle	L546
L198:
	movl	-364(%ebp), %ecx
	movl	-380(%ebp), %edi
	movl	%ecx, %eax
	movl	%edi, %edx
	sall	$16, %edi
	sarl	$16, %eax
	imull	-316(%ebp), %eax
	sarl	$16, %edx
	addl	%edx, %eax
	movl	%edi, %edx
	movl	-384(%ebp), %edi
	movl	$0, 20(%esp)
	testl	%edi, %edi
	je	L240
	testw	%cx, %cx
	jne	L241
	movl	$0, 16(%esp)
	movl	-392(%ebp), %edi
	movl	%eax, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	_setupqrhlineasm4
	movl	$1, -392(%ebp)
L242:
	movl	__ZL4uplc.lto_priv.0, %eax
	movl	-328(%ebp), %edi
	movl	-376(%ebp), %ecx
	movzwl	(%eax,%edi,2), %eax
	movl	%eax, %edx
	testl	%ecx, %ecx
	jne	L243
	movl	_startumost, %edx
	movzwl	(%edx,%edi,2), %edx
	cmpw	%dx, %ax
	cmovge	%eax, %edx
L243:
	movswl	%dx, %ecx
	movl	-360(%ebp), %edi
	movl	-328(%ebp), %edx
	cmpl	%edi, %edx
	jge	L63
	subl	$1, %edi
	movl	%ecx, -356(%ebp)
	movl	%ecx, -352(%ebp)
	movl	%ebx, %ecx
	movl	-396(%ebp), %ebx
	movl	%edi, -400(%ebp)
	movl	%esi, %edi
	movl	%edx, %esi
	.p2align 4
	.p2align 3
L282:
	leal	(%esi,%esi), %edx
	movl	%edx, -368(%ebp)
	movswl	%ax, %edx
	subl	$1, %edx
	movl	%edx, -348(%ebp)
	movl	__ZL4dplc.lto_priv.0, %edx
	movzwl	(%edx,%esi,2), %edx
	movw	%dx, -328(%ebp)
	cmpl	$0, -376(%ebp)
	jne	L525
	movl	_startumost, %edx
	movzwl	(%edx,%esi,2), %edx
	movw	%dx, -372(%ebp)
	subl	$1, %edx
	cmpw	%ax, -372(%ebp)
	movl	-348(%ebp), %eax
	movswl	%dx, %edx
	movl	%edx, -388(%ebp)
	cmovg	%edx, %eax
	movzwl	-328(%ebp), %edx
	movl	%eax, -348(%ebp)
	movl	_startdmost, %eax
	movzwl	(%eax,%esi,2), %eax
	cmpw	%ax, %dx
	cmovg	%eax, %edx
L525:
	movswl	%dx, %eax
	movl	%eax, -328(%ebp)
	movl	-328(%ebp), %eax
	subl	$1, %eax
	cmpl	-348(%ebp), %eax
	jg	L247
	movl	-356(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -328(%ebp)
	cmpl	-352(%ebp), %eax
	jle	L249
	movl	%esi, %edx
	movl	%ecx, %esi
	movl	-384(%ebp), %ecx
	movl	-352(%ebp), %eax
	testl	%ecx, %ecx
	je	L276
	movl	-392(%ebp), %ecx
	testl	%ecx, %ecx
	jne	L277
	jmp	L278
	.p2align 4,,10
	.p2align 3
L347:
	movl	%ebx, %eax
L278:
	movl	%ebx, %ecx
	leal	1(%eax), %ebx
	movl	%ebx, %eax
	subl	%ecx, %eax
	movl	-344(%ebp), %ecx
	imull	%eax, %ecx
	imull	-324(%ebp), %eax
	addl	%ecx, %edi
	addl	%eax, %esi
	movl	_ylookup, %eax
	movl	(%eax,%ebx,4), %ecx
	movl	_frameplace, %eax
	movl	$0, 8(%esp)
	addl	%edx, %ecx
	addl	%ecx, %eax
	movl	%esi, %ecx
	movl	%eax, 20(%esp)
	movl	%esi, %eax
	sarl	$16, %ecx
	sall	$16, %eax
	movl	%eax, 16(%esp)
	movl	%edi, %eax
	sall	$16, %eax
	movl	%eax, 12(%esp)
	movl	%edi, %eax
	sarl	$16, %eax
	imull	-316(%ebp), %eax
	addl	%ecx, %eax
	addl	-320(%ebp), %eax
	movl	%edx, %ecx
	movl	%eax, 4(%esp)
	movl	__ZL5lastx.lto_priv.0, %eax
	movl	%edx, -348(%ebp)
	subl	(%eax,%ebx,4), %ecx
	movl	%ecx, (%esp)
	call	_rhlineasm4
	cmpl	%ebx, -328(%ebp)
	movl	-348(%ebp), %edx
	jne	L347
L528:
	movl	-328(%ebp), %eax
	movl	%esi, %ecx
	movl	%edx, %esi
	movl	%eax, -352(%ebp)
L249:
	cmpl	%esi, -400(%ebp)
	je	L547
	movl	__ZL4uplc.lto_priv.0, %eax
	movl	-368(%ebp), %edx
	movswl	2(%eax,%edx), %eax
	movw	%ax, -328(%ebp)
	movl	%eax, -352(%ebp)
	movl	%eax, -356(%ebp)
	movl	-376(%ebp), %eax
	testl	%eax, %eax
	jne	L270
	movl	-368(%ebp), %edx
	movl	_startumost, %eax
	movswl	2(%eax,%edx), %eax
	movl	-352(%ebp), %edx
	cmpw	%ax, -328(%ebp)
	cmovl	%eax, %edx
	movl	%edx, -352(%ebp)
	movl	%edx, -356(%ebp)
	.p2align 4
	.p2align 3
L270:
	addl	-364(%ebp), %edi
	addl	-380(%ebp), %ecx
	addl	$1, %esi
	cmpl	%esi, -360(%ebp)
	je	L281
	movl	__ZL4uplc.lto_priv.0, %eax
	movl	-368(%ebp), %edx
	movzwl	2(%eax,%edx), %eax
	jmp	L282
	.p2align 4,,10
	.p2align 3
L178:
	movl	-344(%ebp), %eax
	movl	-320(%ebp), %edx
	movl	%ecx, -380(%ebp)
	movl	%edx, __ZL4nry1(,%eax,4)
	movl	__ZL4nrx2(,%ecx,4), %eax
	movl	%eax, %ecx
	movl	-324(%ebp), %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	__ZL4nrx2(,%ebx,4), %eax
	movl	%ecx, -364(%ebp)
	subl	%ecx, %eax
	imull	-360(%ebp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	-344(%ebp), %edx
	addl	-364(%ebp), %eax
	movl	-380(%ebp), %ecx
	movl	%eax, __ZL4nrx1(,%edx,4)
	addl	$1, %edx
	movl	-328(%ebp), %eax
	movl	%edx, -344(%ebp)
	jmp	L179
	.p2align 4,,10
	.p2align 3
L180:
	movl	-344(%ebp), %eax
	movl	-328(%ebp), %edx
	movl	%ecx, -380(%ebp)
	movl	%edx, __ZL4nry1(,%eax,4)
	movl	__ZL4nrx2(,%ecx,4), %eax
	movl	%eax, %ecx
	movl	-324(%ebp), %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	__ZL4nrx2(,%ebx,4), %eax
	movl	%ecx, -364(%ebp)
	subl	%ecx, %eax
	imull	-360(%ebp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	-344(%ebp), %edx
	addl	-364(%ebp), %eax
	movl	-380(%ebp), %ecx
	movl	%eax, __ZL4nrx1(,%edx,4)
	addl	$1, %edx
	movl	-320(%ebp), %eax
	movl	%edx, -344(%ebp)
	jmp	L179
	.p2align 4,,10
	.p2align 3
L323:
	movl	$0, -324(%ebp)
	movl	$0, -380(%ebp)
	jmp	L164
	.p2align 4,,10
	.p2align 3
L169:
	movl	-316(%ebp), %eax
	movl	-344(%ebp), %edx
	movl	%ecx, -416(%ebp)
	movl	%edx, __ZL4nrx2(,%eax,4)
	movl	__ZL4nry1(,%ecx,4), %eax
	movl	%eax, %ecx
	movl	-324(%ebp), %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	__ZL4nry1(,%esi,4), %eax
	movl	%ecx, -396(%ebp)
	subl	%ecx, %eax
	imull	-380(%ebp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	-316(%ebp), %edx
	addl	-396(%ebp), %eax
	movl	-416(%ebp), %ecx
	movl	%eax, __ZL4nry2(,%edx,4)
	addl	$1, %edx
	movl	-328(%ebp), %eax
	movl	%edx, -316(%ebp)
	jmp	L170
	.p2align 4,,10
	.p2align 3
L171:
	movl	-316(%ebp), %eax
	movl	-328(%ebp), %edx
	movl	%ecx, -416(%ebp)
	movl	%edx, __ZL4nrx2(,%eax,4)
	movl	__ZL4nry1(,%ecx,4), %eax
	movl	%eax, %ecx
	movl	-324(%ebp), %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	__ZL4nry1(,%esi,4), %eax
	movl	%ecx, -396(%ebp)
	subl	%ecx, %eax
	imull	-380(%ebp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	-316(%ebp), %edx
	addl	-396(%ebp), %eax
	movl	-416(%ebp), %ecx
	movl	%eax, __ZL4nry2(,%edx,4)
	addl	$1, %edx
	movl	-344(%ebp), %eax
	movl	%edx, -316(%ebp)
	jmp	L170
L163:
	subl	$1, %eax
	addl	%eax, -344(%ebp)
	movl	%eax, -360(%ebp)
	jmp	L162
L159:
	subl	$1, %eax
	movl	%eax, -344(%ebp)
	sall	$16, %eax
	movl	%eax, -320(%ebp)
	jmp	L158
L161:
	movl	-316(%ebp), %esi
	subl	$1, %eax
	movl	%eax, -328(%ebp)
	addl	%eax, %esi
	jmp	L160
L545:
	movl	-356(%ebp), %edx
	negl	%edi
	negl	-372(%ebp)
	movl	%edi, -384(%ebp)
	sall	$16, %edx
	subl	$1, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	L196
	.p2align 4,,10
	.p2align 3
L348:
	movl	%ebx, %eax
L277:
	movl	%ebx, %ecx
	leal	1(%eax), %ebx
	movl	%ebx, %eax
	subl	%ecx, %eax
	movl	-344(%ebp), %ecx
	imull	%eax, %ecx
	imull	-324(%ebp), %eax
	addl	%ecx, %edi
	addl	%eax, %esi
	movl	_ylookup, %eax
	movl	(%eax,%ebx,4), %ecx
	movl	_frameplace, %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	addl	%edx, %ecx
	addl	%ecx, %eax
	movl	%esi, %ecx
	movl	%eax, 20(%esp)
	movl	%esi, %eax
	sarl	$16, %ecx
	sall	$16, %eax
	movl	%eax, 16(%esp)
	movl	%edi, %eax
	sarl	$16, %eax
	imull	-316(%ebp), %eax
	addl	%ecx, %eax
	addl	-320(%ebp), %eax
	movl	%edx, %ecx
	movl	%eax, 4(%esp)
	movl	__ZL5lastx.lto_priv.0, %eax
	movl	%edx, -348(%ebp)
	subl	(%eax,%ebx,4), %ecx
	movl	%ecx, (%esp)
	call	_qrhlineasm4
	cmpl	-328(%ebp), %ebx
	movl	-348(%ebp), %edx
	jne	L348
	movl	%esi, %ecx
	movl	%ebx, -352(%ebp)
	movl	%edx, %esi
	jmp	L249
	.p2align 4,,10
	.p2align 3
L346:
	movl	%ebx, %eax
L276:
	movl	%ebx, %ecx
	leal	1(%eax), %ebx
	movl	%ebx, %eax
	subl	%ecx, %eax
	movl	-344(%ebp), %ecx
	imull	%eax, %ecx
	imull	-324(%ebp), %eax
	addl	%ecx, %edi
	addl	%eax, %esi
	movl	_ylookup, %eax
	movl	(%eax,%ebx,4), %ecx
	movl	_frameplace, %eax
	movl	$0, 8(%esp)
	addl	%edx, %ecx
	addl	%ecx, %eax
	movl	%esi, %ecx
	movl	%eax, 20(%esp)
	movl	%esi, %eax
	sarl	$16, %ecx
	sall	$16, %eax
	movl	%eax, 16(%esp)
	movl	%edi, %eax
	sall	$16, %eax
	movl	%eax, 12(%esp)
	movl	%edi, %eax
	sarl	$16, %eax
	imull	-316(%ebp), %eax
	addl	%ecx, %eax
	addl	-320(%ebp), %eax
	movl	%edx, %ecx
	movl	%eax, 4(%esp)
	movl	__ZL5lastx.lto_priv.0, %eax
	movl	%edx, -348(%ebp)
	subl	(%eax,%ebx,4), %ecx
	movl	%ecx, (%esp)
	call	_rmhlineasm4
	cmpl	%ebx, -328(%ebp)
	movl	-348(%ebp), %edx
	jne	L346
	jmp	L528
	.p2align 4,,10
	.p2align 3
L247:
	movl	-348(%ebp), %eax
	cmpl	-356(%ebp), %eax
	jge	L250
	cmpl	-352(%ebp), %eax
	jle	L548
	movl	%esi, %edx
	movl	%ecx, %esi
	movl	-384(%ebp), %ecx
	movl	-352(%ebp), %eax
	testl	%ecx, %ecx
	je	L259
	movl	-392(%ebp), %ecx
	testl	%ecx, %ecx
	jne	L261
	jmp	L262
	.p2align 4,,10
	.p2align 3
L336:
	movl	%ebx, %eax
L262:
	movl	%ebx, %ecx
	leal	1(%eax), %ebx
	movl	%ebx, %eax
	subl	%ecx, %eax
	movl	-344(%ebp), %ecx
	imull	%eax, %ecx
	imull	-324(%ebp), %eax
	addl	%ecx, %edi
	addl	%eax, %esi
	movl	_ylookup, %eax
	movl	(%eax,%ebx,4), %ecx
	movl	_frameplace, %eax
	movl	$0, 8(%esp)
	addl	%edx, %ecx
	addl	%ecx, %eax
	movl	%esi, %ecx
	movl	%eax, 20(%esp)
	movl	%esi, %eax
	sarl	$16, %ecx
	sall	$16, %eax
	movl	%eax, 16(%esp)
	movl	%edi, %eax
	sall	$16, %eax
	movl	%eax, 12(%esp)
	movl	%edi, %eax
	sarl	$16, %eax
	imull	-316(%ebp), %eax
	addl	%ecx, %eax
	addl	-320(%ebp), %eax
	movl	%edx, %ecx
	movl	%eax, 4(%esp)
	movl	__ZL5lastx.lto_priv.0, %eax
	movl	%edx, -352(%ebp)
	subl	(%eax,%ebx,4), %ecx
	movl	%ecx, (%esp)
	call	_rhlineasm4
	cmpl	%ebx, -348(%ebp)
	movl	-352(%ebp), %edx
	jne	L336
	movl	%esi, %ecx
	movl	%edx, %esi
	movl	-356(%ebp), %edx
	cmpl	%edx, -328(%ebp)
	movl	%ebx, -352(%ebp)
	jge	L253
L263:
	movl	%esi, %edx
	movl	-356(%ebp), %eax
	movl	%ecx, %esi
	jmp	L271
	.p2align 4,,10
	.p2align 3
L344:
	movl	%ebx, %eax
L271:
	movl	%ebx, %ecx
	leal	-1(%eax), %ebx
	movl	%ebx, %eax
	subl	%ecx, %eax
	movl	-344(%ebp), %ecx
	imull	%eax, %ecx
	imull	-324(%ebp), %eax
	addl	%ecx, %edi
	addl	%eax, %esi
	movl	_ylookup, %eax
	movl	(%eax,%ebx,4), %ecx
	movl	_frameplace, %eax
	movl	$0, 8(%esp)
	addl	%edx, %ecx
	addl	%ecx, %eax
	movl	%esi, %ecx
	movl	%eax, 20(%esp)
	movl	%esi, %eax
	sarl	$16, %ecx
	sall	$16, %eax
	movl	%eax, 16(%esp)
	movl	%edi, %eax
	sall	$16, %eax
	movl	%eax, 12(%esp)
	movl	%edi, %eax
	sarl	$16, %eax
	imull	-316(%ebp), %eax
	addl	%ecx, %eax
	addl	-320(%ebp), %eax
	movl	%edx, %ecx
	movl	%eax, 4(%esp)
	movl	__ZL5lastx.lto_priv.0, %eax
	movl	%edx, -348(%ebp)
	subl	(%eax,%ebx,4), %ecx
	movl	%ecx, (%esp)
	call	_rhlineasm4
	cmpl	%ebx, -328(%ebp)
	movl	-348(%ebp), %edx
	jne	L344
	movl	%esi, %ecx
	movl	%ebx, -356(%ebp)
	movl	%edx, %esi
	jmp	L270
	.p2align 4,,10
	.p2align 3
L338:
	movl	%ebx, %eax
L261:
	movl	%ebx, %ecx
	leal	1(%eax), %ebx
	movl	%ebx, %eax
	subl	%ecx, %eax
	movl	-344(%ebp), %ecx
	imull	%eax, %ecx
	imull	-324(%ebp), %eax
	addl	%ecx, %edi
	addl	%eax, %esi
	movl	_ylookup, %eax
	movl	(%eax,%ebx,4), %ecx
	movl	_frameplace, %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	addl	%edx, %ecx
	addl	%ecx, %eax
	movl	%esi, %ecx
	movl	%eax, 20(%esp)
	movl	%esi, %eax
	sarl	$16, %ecx
	sall	$16, %eax
	movl	%eax, 16(%esp)
	movl	%edi, %eax
	sarl	$16, %eax
	imull	-316(%ebp), %eax
	addl	%ecx, %eax
	addl	-320(%ebp), %eax
	movl	%edx, %ecx
	movl	%eax, 4(%esp)
	movl	__ZL5lastx.lto_priv.0, %eax
	movl	%edx, -352(%ebp)
	subl	(%eax,%ebx,4), %ecx
	movl	%ecx, (%esp)
	call	_qrhlineasm4
	cmpl	%ebx, -348(%ebp)
	movl	-352(%ebp), %edx
	jne	L338
	movl	%esi, %ecx
	movl	%edx, %esi
	movl	-356(%ebp), %edx
	cmpl	%edx, -328(%ebp)
	movl	%ebx, -352(%ebp)
	jge	L253
L264:
	movl	%esi, %edx
	movl	-356(%ebp), %eax
	movl	%ecx, %esi
	jmp	L272
	.p2align 4,,10
	.p2align 3
L345:
	movl	%ebx, %eax
L272:
	movl	%ebx, %ecx
	leal	-1(%eax), %ebx
	movl	%ebx, %eax
	subl	%ecx, %eax
	movl	-344(%ebp), %ecx
	imull	%eax, %ecx
	imull	-324(%ebp), %eax
	addl	%ecx, %edi
	addl	%eax, %esi
	movl	_ylookup, %eax
	movl	(%eax,%ebx,4), %ecx
	movl	_frameplace, %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	addl	%edx, %ecx
	addl	%ecx, %eax
	movl	%esi, %ecx
	movl	%eax, 20(%esp)
	movl	%esi, %eax
	sarl	$16, %ecx
	sall	$16, %eax
	movl	%eax, 16(%esp)
	movl	%edi, %eax
	sarl	$16, %eax
	imull	-316(%ebp), %eax
	addl	%ecx, %eax
	addl	-320(%ebp), %eax
	movl	%edx, %ecx
	movl	%eax, 4(%esp)
	movl	__ZL5lastx.lto_priv.0, %eax
	movl	%edx, -348(%ebp)
	subl	(%eax,%ebx,4), %ecx
	movl	%ecx, (%esp)
	call	_qrhlineasm4
	cmpl	%ebx, -328(%ebp)
	movl	-348(%ebp), %edx
	jne	L345
	movl	%esi, %ecx
	movl	%ebx, -356(%ebp)
	movl	%edx, %esi
	jmp	L270
	.p2align 4,,10
	.p2align 3
L335:
	movl	%ebx, %eax
L259:
	movl	%ebx, %ecx
	leal	1(%eax), %ebx
	movl	%ebx, %eax
	subl	%ecx, %eax
	movl	-344(%ebp), %ecx
	imull	%eax, %ecx
	imull	-324(%ebp), %eax
	addl	%ecx, %edi
	addl	%eax, %esi
	movl	_ylookup, %eax
	movl	(%eax,%ebx,4), %ecx
	movl	_frameplace, %eax
	movl	$0, 8(%esp)
	addl	%edx, %ecx
	addl	%ecx, %eax
	movl	%esi, %ecx
	movl	%eax, 20(%esp)
	movl	%esi, %eax
	sarl	$16, %ecx
	sall	$16, %eax
	movl	%eax, 16(%esp)
	movl	%edi, %eax
	sall	$16, %eax
	movl	%eax, 12(%esp)
	movl	%edi, %eax
	sarl	$16, %eax
	imull	-316(%ebp), %eax
	addl	%ecx, %eax
	addl	-320(%ebp), %eax
	movl	%edx, %ecx
	movl	%eax, 4(%esp)
	movl	__ZL5lastx.lto_priv.0, %eax
	movl	%edx, -352(%ebp)
	subl	(%eax,%ebx,4), %ecx
	movl	%ecx, (%esp)
	call	_rmhlineasm4
	cmpl	%ebx, -348(%ebp)
	movl	-352(%ebp), %edx
	jne	L335
	movl	%esi, %ecx
	movl	%edx, %esi
	movl	-356(%ebp), %edx
	cmpl	%edx, -328(%ebp)
	movl	%ebx, -352(%ebp)
	jge	L253
L265:
	movl	%esi, %edx
	movl	-356(%ebp), %eax
	movl	%ecx, %esi
	jmp	L269
	.p2align 4,,10
	.p2align 3
L342:
	movl	%ebx, %eax
L269:
	movl	%ebx, %ecx
	leal	-1(%eax), %ebx
	movl	%ebx, %eax
	subl	%ecx, %eax
	movl	-344(%ebp), %ecx
	imull	%eax, %ecx
	imull	-324(%ebp), %eax
	addl	%ecx, %edi
	addl	%eax, %esi
	movl	_ylookup, %eax
	movl	(%eax,%ebx,4), %ecx
	movl	_frameplace, %eax
	movl	$0, 8(%esp)
	addl	%edx, %ecx
	addl	%ecx, %eax
	movl	%esi, %ecx
	movl	%eax, 20(%esp)
	movl	%esi, %eax
	sarl	$16, %ecx
	sall	$16, %eax
	movl	%eax, 16(%esp)
	movl	%edi, %eax
	sall	$16, %eax
	movl	%eax, 12(%esp)
	movl	%edi, %eax
	sarl	$16, %eax
	imull	-316(%ebp), %eax
	addl	%ecx, %eax
	addl	-320(%ebp), %eax
	movl	%edx, %ecx
	movl	%eax, 4(%esp)
	movl	__ZL5lastx.lto_priv.0, %eax
	movl	%edx, -348(%ebp)
	subl	(%eax,%ebx,4), %ecx
	movl	%ecx, (%esp)
	call	_rmhlineasm4
	cmpl	%ebx, -328(%ebp)
	movl	-348(%ebp), %edx
	jne	L342
	movl	%esi, %ecx
	movl	%ebx, -356(%ebp)
	movl	%edx, %esi
	jmp	L270
	.p2align 4,,10
	.p2align 3
L250:
	movl	-356(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -372(%ebp)
	cmpl	%eax, -352(%ebp)
	jge	L331
	movl	%esi, %edx
	movl	%ecx, %esi
	movl	-384(%ebp), %ecx
	movl	-352(%ebp), %eax
	testl	%ecx, %ecx
	je	L255
	movl	-392(%ebp), %ecx
	testl	%ecx, %ecx
	jne	L256
	jmp	L257
	.p2align 4,,10
	.p2align 3
L333:
	movl	%ebx, %eax
L257:
	movl	%ebx, %ecx
	leal	1(%eax), %ebx
	movl	%ebx, %eax
	subl	%ecx, %eax
	movl	-344(%ebp), %ecx
	imull	%eax, %ecx
	imull	-324(%ebp), %eax
	addl	%ecx, %edi
	addl	%eax, %esi
	movl	_ylookup, %eax
	movl	(%eax,%ebx,4), %ecx
	movl	_frameplace, %eax
	movl	$0, 8(%esp)
	addl	%edx, %ecx
	addl	%ecx, %eax
	movl	%esi, %ecx
	movl	%eax, 20(%esp)
	movl	%esi, %eax
	sarl	$16, %ecx
	sall	$16, %eax
	movl	%eax, 16(%esp)
	movl	%edi, %eax
	sall	$16, %eax
	movl	%eax, 12(%esp)
	movl	%edi, %eax
	sarl	$16, %eax
	imull	-316(%ebp), %eax
	addl	%ecx, %eax
	addl	-320(%ebp), %eax
	movl	%edx, %ecx
	movl	%eax, 4(%esp)
	movl	__ZL5lastx.lto_priv.0, %eax
	movl	%edx, -352(%ebp)
	subl	(%eax,%ebx,4), %ecx
	movl	%ecx, (%esp)
	call	_rhlineasm4
	cmpl	%ebx, -372(%ebp)
	movl	-352(%ebp), %edx
	jne	L333
	movl	-348(%ebp), %eax
	movl	%esi, %ecx
	movl	%edx, %esi
	movl	%eax, -352(%ebp)
L253:
	movl	-328(%ebp), %edx
	movl	-356(%ebp), %eax
	cmpl	%eax, %edx
	jle	L270
	movl	%ecx, -348(%ebp)
	sall	$2, %eax
	sall	$2, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L274:
	movl	__ZL5lastx.lto_priv.0, %ecx
	movl	%esi, (%ecx,%eax)
	addl	$4, %eax
	cmpl	%edx, %eax
	jne	L274
	movl	-328(%ebp), %eax
	movl	-348(%ebp), %ecx
	movl	%eax, -356(%ebp)
	jmp	L270
	.p2align 4,,10
	.p2align 3
L334:
	movl	%ebx, %eax
L256:
	movl	%ebx, %ecx
	leal	1(%eax), %ebx
	movl	%ebx, %eax
	subl	%ecx, %eax
	movl	-344(%ebp), %ecx
	imull	%eax, %ecx
	imull	-324(%ebp), %eax
	addl	%ecx, %edi
	addl	%eax, %esi
	movl	_ylookup, %eax
	movl	(%eax,%ebx,4), %ecx
	movl	_frameplace, %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	addl	%edx, %ecx
	addl	%ecx, %eax
	movl	%esi, %ecx
	movl	%eax, 20(%esp)
	movl	%esi, %eax
	sarl	$16, %ecx
	sall	$16, %eax
	movl	%eax, 16(%esp)
	movl	%edi, %eax
	sarl	$16, %eax
	imull	-316(%ebp), %eax
	addl	%ecx, %eax
	addl	-320(%ebp), %eax
	movl	%edx, %ecx
	movl	%eax, 4(%esp)
	movl	__ZL5lastx.lto_priv.0, %eax
	movl	%edx, -352(%ebp)
	subl	(%eax,%ebx,4), %ecx
	movl	%ecx, (%esp)
	call	_qrhlineasm4
	cmpl	-372(%ebp), %ebx
	movl	-352(%ebp), %edx
	jne	L334
	movl	-348(%ebp), %eax
	movl	%esi, %ecx
	movl	%edx, %esi
	movl	%eax, -352(%ebp)
	jmp	L253
	.p2align 4,,10
	.p2align 3
L332:
	movl	%ebx, %eax
L255:
	movl	%ebx, %ecx
	leal	1(%eax), %ebx
	movl	%ebx, %eax
	subl	%ecx, %eax
	movl	-344(%ebp), %ecx
	imull	%eax, %ecx
	imull	-324(%ebp), %eax
	addl	%ecx, %edi
	addl	%eax, %esi
	movl	_ylookup, %eax
	movl	(%eax,%ebx,4), %ecx
	movl	_frameplace, %eax
	movl	$0, 8(%esp)
	addl	%edx, %ecx
	addl	%ecx, %eax
	movl	%esi, %ecx
	movl	%eax, 20(%esp)
	movl	%esi, %eax
	sarl	$16, %ecx
	sall	$16, %eax
	movl	%eax, 16(%esp)
	movl	%edi, %eax
	sall	$16, %eax
	movl	%eax, 12(%esp)
	movl	%edi, %eax
	sarl	$16, %eax
	imull	-316(%ebp), %eax
	addl	%ecx, %eax
	addl	-320(%ebp), %eax
	movl	%edx, %ecx
	movl	%eax, 4(%esp)
	movl	__ZL5lastx.lto_priv.0, %eax
	movl	%edx, -352(%ebp)
	subl	(%eax,%ebx,4), %ecx
	movl	%ecx, (%esp)
	call	_rmhlineasm4
	cmpl	%ebx, -372(%ebp)
	movl	-352(%ebp), %edx
	jne	L332
	movl	-348(%ebp), %eax
	movl	%esi, %ecx
	movl	%edx, %esi
	movl	%eax, -352(%ebp)
	jmp	L253
L548:
	movl	-352(%ebp), %eax
	jge	L341
	movl	-348(%ebp), %edx
	movl	%ecx, -352(%ebp)
	sall	$2, %eax
	sall	$2, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L267:
	movl	__ZL5lastx.lto_priv.0, %ecx
	movl	%esi, (%ecx,%eax)
	subl	$4, %eax
	cmpl	%edx, %eax
	jne	L267
	movl	-352(%ebp), %ecx
L266:
	movl	-356(%ebp), %edx
	cmpl	%edx, -328(%ebp)
	jge	L331
	movl	-384(%ebp), %edx
	movl	-348(%ebp), %eax
	testl	%edx, %edx
	je	L549
	movl	-392(%ebp), %edx
	movl	%eax, -352(%ebp)
	testl	%edx, %edx
	jne	L264
	jmp	L263
L324:
	movl	%eax, -344(%ebp)
	movl	%ecx, %esi
	jmp	L166
L197:
	movl	$0, 20(%esp)
	movl	-324(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-316(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-344(%ebp), %edi
	movl	%edi, %eax
	sall	$16, %eax
	movl	%eax, 8(%esp)
	movl	%edi, %eax
	sarl	$16, %eax
	imull	%edx, %eax
	movl	%eax, 4(%esp)
	movl	-392(%ebp), %eax
	movl	%eax, (%esp)
	call	_tsetupspritevline
	movzbl	-404(%ebp), %eax
	movl	-352(%ebp), %edi
	xorl	%edx, %edx
	movl	_blendtable(,%eax,4), %ecx
	andl	$32, %edi
	testl	%ecx, %ecx
	cmove	%edx, %eax
	cmpl	%eax, _globalblend
	je	L289
	movl	%eax, _globalblend
	movl	_blendtable(,%eax,4), %eax
	movl	%eax, (%esp)
	call	_fixtransluscence
L289:
	testl	%edi, %edi
	je	L290
	call	_settransreverse
L291:
	movl	-328(%ebp), %eax
	cmpl	-360(%ebp), %eax
	jge	L63
	movl	-376(%ebp), %ecx
	movl	%esi, %edi
	testl	%ecx, %ecx
	je	L516
	movl	%ebx, -328(%ebp)
	movl	%eax, %esi
	jmp	L298
L550:
	cmpl	$-1, %eax
	je	L296
	movl	-344(%ebp), %ebx
	movl	%ecx, -416(%ebp)
	imull	%eax, %ebx
	imull	-324(%ebp), %eax
	addl	%eax, -328(%ebp)
	addl	%ebx, %edi
L294:
	movl	_ylookup, %eax
	subl	%ecx, %edx
	addl	$1, %edx
	movl	(%eax,%ecx,4), %ebx
	movl	_frameplace, %eax
	addl	%esi, %ebx
	addl	%ebx, %eax
	movl	%eax, 20(%esp)
	movl	%edi, %eax
	movl	-328(%ebp), %ebx
	sarl	$16, %eax
	imull	-316(%ebp), %eax
	sarl	$16, %ebx
	addl	%ebx, %eax
	addl	-320(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 16(%esp)
	movl	%edi, %eax
	sall	$16, %eax
	movl	%eax, 12(%esp)
	movl	-328(%ebp), %eax
	movl	$0, (%esp)
	sall	$16, %eax
	movl	%eax, 4(%esp)
	call	_tspritevline
L293:
	addl	$1, %esi
	cmpl	%esi, -360(%ebp)
	je	L63
L298:
	movl	-380(%ebp), %eax
	addl	%eax, -328(%ebp)
	movl	__ZL4uplc.lto_priv.0, %eax
	addl	-364(%ebp), %edi
	movswl	(%eax,%esi,2), %ecx
	movl	__ZL4dplc.lto_priv.0, %eax
	movswl	(%eax,%esi,2), %edx
	cmpl	%ecx, %edx
	jle	L293
	movl	%ecx, %eax
	subl	-416(%ebp), %eax
	je	L294
	cmpl	$1, %eax
	jne	L550
	movl	-324(%ebp), %eax
	movl	%ecx, -416(%ebp)
	addl	%eax, -328(%ebp)
	addl	-344(%ebp), %edi
	jmp	L294
L187:
	movl	-372(%ebp), %eax
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movw	%bx, -432(%ebp)
	movl	_waloff(,%eax,4), %eax
	movw	%si, -428(%ebp)
	movl	%eax, -320(%ebp)
	testl	%eax, %eax
	jne	L188
	movl	-372(%ebp), %esi
	movl	%esi, %eax
	call	_tileLoad.isra.0
	movl	_waloff(,%esi,4), %eax
	movl	%eax, -320(%ebp)
	jmp	L188
L296:
	movl	-324(%ebp), %eax
	movl	%ecx, -416(%ebp)
	subl	%eax, -328(%ebp)
	subl	-344(%ebp), %edi
	jmp	L294
L241:
	movl	-316(%ebp), %edi
	movl	%edi, 16(%esp)
	movl	-392(%ebp), %edi
	movl	%eax, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%edx, 4(%esp)
	movl	-364(%ebp), %eax
	sall	$16, %eax
	movl	%eax, (%esp)
	call	_setuprhlineasm4
	movl	$0, -392(%ebp)
	jmp	L242
L240:
	movl	-316(%ebp), %edi
	movl	%edi, 16(%esp)
	movl	-392(%ebp), %edi
	movl	%eax, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%edx, 4(%esp)
	movl	-364(%ebp), %eax
	sall	$16, %eax
	movl	%eax, (%esp)
	call	_setuprmhlineasm4
	movl	$0, -392(%ebp)
	jmp	L242
L546:
	movss	-392(%ebp), %xmm0
	shufps	$0, %xmm0, %xmm0
	movups	%xmm0, -344(%ebp)
	testl	%eax, %eax
	jne	L551
	movl	$0, 4(%esp)
	movl	$24, (%esp)
	call	_setupmvlineasm
	movups	-344(%ebp), %xmm0
L200:
	movl	-324(%ebp), %eax
	movups	%xmm0, _palookupoffse
	sall	$8, %eax
	movl	%eax, -324(%ebp)
	movss	-324(%ebp), %xmm0
	movl	%eax, -380(%ebp)
	movl	-328(%ebp), %eax
	shufps	$0, %xmm0, %xmm0
	movups	%xmm0, _vince
	cmpl	-360(%ebp), %eax
	jge	L63
	sall	$8, %ebx
	addl	%eax, %eax
	movl	%esi, -388(%ebp)
	movl	%ebx, -348(%ebp)
	movl	%eax, -396(%ebp)
	movl	$0, -344(%ebp)
	.p2align 4
	.p2align 3
L239:
	movl	$4, %eax
	movl	-360(%ebp), %esi
	subl	-328(%ebp), %esi
	cmpl	%eax, %esi
	movl	-376(%ebp), %ebx
	movl	__ZL4uplc.lto_priv.0, %ecx
	cmovle	%esi, %eax
	movl	__ZL4dplc.lto_priv.0, %edx
	movl	%eax, -352(%ebp)
	xorl	%eax, %eax
	testl	%ebx, %ebx
	je	L202
	movl	-396(%ebp), %edi
	movb	$15, -324(%ebp)
	movl	-388(%ebp), %esi
	leal	(%ecx,%edi), %ebx
	addl	%edx, %edi
	movl	%ebx, -356(%ebp)
	movl	%edi, -368(%ebp)
L204:
	movl	-356(%ebp), %ebx
	addl	-364(%ebp), %esi
	movswl	(%ebx,%eax,2), %edx
	movl	-368(%ebp), %ebx
	movswl	(%ebx,%eax,2), %ecx
	cmpl	%edx, %ecx
	jle	L203
	subl	$1, %ecx
	movl	%edx, %ebx
	subl	-344(%ebp), %ebx
	movl	%edx, -88(%ebp,%eax,4)
	movl	%ecx, -152(%ebp,%eax,4)
	movzbl	__ZL8pow2char.lto_priv.9(%eax), %ecx
	imull	-380(%ebp), %ebx
	addl	%ebx, -348(%ebp)
	movl	%esi, %ebx
	movl	-348(%ebp), %edi
	shrl	$16, %ebx
	notl	%ecx
	andb	%cl, -324(%ebp)
	imull	-316(%ebp), %ebx
	addl	-320(%ebp), %ebx
	movl	%edx, -344(%ebp)
	movl	%ebx, _bufplce(,%eax,4)
	movl	%edi, _vplce(,%eax,4)
L203:
	addl	$1, %eax
	cmpl	%eax, -352(%ebp)
	jne	L204
	movl	-352(%ebp), %eax
L522:
	movl	-364(%ebp), %esi
	subl	$1, %eax
	movl	-388(%ebp), %edx
	movl	$-2147483648, %ebx
	movl	$2147483647, %edi
	leal	-152(%ebp), %ecx
	imull	%esi, %eax
	addl	%esi, %edx
	leal	-88(%ebp), %esi
	addl	%edx, %eax
	movl	%eax, -388(%ebp)
	movl	-328(%ebp), %eax
	addl	_frameplace, %eax
	movl	%eax, -352(%ebp)
	xorl	%eax, %eax
L210:
	movzbl	-324(%ebp), %edx
	testb	%dl, __ZL8pow2char.lto_priv.9(%eax)
	jne	L209
	movl	(%esi,%eax,4), %edx
	cmpl	%edx, %ebx
	cmovl	%edx, %ebx
	movl	(%ecx,%eax,4), %edx
	cmpl	%edx, %edi
	cmovg	%edx, %edi
L209:
	addl	$1, %eax
	cmpl	$4, %eax
	jne	L210
	movl	-384(%ebp), %eax
	testl	%eax, %eax
	je	L211
	cmpb	$0, -324(%ebp)
	jne	L212
	cmpl	%ebx, %edi
	jle	L213
	movl	-88(%ebp), %eax
	cmpl	%eax, %ebx
	jg	L552
L219:
	movl	-84(%ebp), %eax
	cmpl	%ebx, %eax
	jl	L553
L220:
	movl	-80(%ebp), %eax
	cmpl	%ebx, %eax
	jl	L554
L221:
	movl	-76(%ebp), %eax
	cmpl	%ebx, %eax
	jl	L555
L222:
	movl	_ylookup, %eax
	movl	-352(%ebp), %esi
	movl	(%eax,%ebx,4), %edx
	movl	%edi, %eax
	subl	%ebx, %eax
	addl	%esi, %edx
	addl	$1, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_vlineasm4
	movl	_ylookup, %eax
	addl	4(%eax,%edi,4), %esi
	movl	-152(%ebp), %eax
	movl	%esi, %ebx
	cmpl	%edi, %eax
	jg	L556
L223:
	movl	-148(%ebp), %eax
	cmpl	%edi, %eax
	jg	L557
L224:
	movl	-144(%ebp), %eax
	cmpl	%edi, %eax
	jg	L558
L225:
	movl	-140(%ebp), %eax
	cmpl	%edi, %eax
	jg	L559
	.p2align 4
	.p2align 3
L218:
	addl	$4, -328(%ebp)
	movl	-328(%ebp), %eax
	addl	$8, -396(%ebp)
	cmpl	%eax, -360(%ebp)
	jg	L239
	jmp	L63
L290:
	call	_settransnormal
	jmp	L291
L331:
	movl	-348(%ebp), %eax
	movl	%eax, -352(%ebp)
	jmp	L253
L547:
	movl	%edi, %esi
	movl	%ebx, -396(%ebp)
	movl	-328(%ebp), %edi
	movl	%ecx, %ebx
	addl	-364(%ebp), %esi
	movl	-352(%ebp), %ecx
	addl	-380(%ebp), %ebx
	jmp	L280
L516:
	movl	%ebx, -348(%ebp)
	movl	-328(%ebp), %esi
	jmp	L292
L560:
	cmpl	$-1, %ecx
	jne	L302
	movl	-324(%ebp), %ebx
	subl	%ebx, -348(%ebp)
	movl	%edx, -376(%ebp)
	subl	-344(%ebp), %edi
L300:
	movl	_ylookup, %ecx
	subl	%edx, %eax
	addl	$1, %eax
	movl	(%ecx,%edx,4), %ebx
	movl	_frameplace, %ecx
	addl	%esi, %ebx
	addl	%ebx, %ecx
	movl	%ecx, 20(%esp)
	movl	%edi, %ecx
	movl	-348(%ebp), %ebx
	sarl	$16, %ecx
	imull	-316(%ebp), %ecx
	sarl	$16, %ebx
	addl	%ebx, %ecx
	addl	-320(%ebp), %ecx
	movl	%eax, 8(%esp)
	movl	%ecx, 16(%esp)
	movl	%edi, %ecx
	sall	$16, %ecx
	movl	%ecx, 12(%esp)
	movl	-348(%ebp), %eax
	movl	$0, (%esp)
	sall	$16, %eax
	movl	%eax, 4(%esp)
	call	_tspritevline
L299:
	addl	$1, %esi
	cmpl	%esi, -360(%ebp)
	je	L63
L292:
	movl	-380(%ebp), %eax
	addl	%eax, -348(%ebp)
	movl	__ZL4uplc.lto_priv.0, %eax
	addl	-364(%ebp), %edi
	movl	_startdmost, %ecx
	movswl	(%eax,%esi,2), %edx
	movl	_startumost, %eax
	movswl	(%ecx,%esi,2), %ecx
	movswl	(%eax,%esi,2), %eax
	cmpw	%ax, %dx
	cmovl	%eax, %edx
	movl	__ZL4dplc.lto_priv.0, %eax
	movswl	(%eax,%esi,2), %eax
	cmpw	%cx, %ax
	cmovg	%ecx, %eax
	cmpl	%edx, %eax
	jle	L299
	movl	%edx, %ecx
	subl	-376(%ebp), %ecx
	je	L300
	cmpl	$1, %ecx
	jne	L560
	movl	-324(%ebp), %ebx
	movl	%edx, -376(%ebp)
	addl	%ebx, -348(%ebp)
	addl	-344(%ebp), %edi
	jmp	L300
L302:
	movl	-344(%ebp), %ebx
	movl	%edx, -376(%ebp)
	imull	%ecx, %ebx
	imull	-324(%ebp), %ecx
	addl	%ecx, -348(%ebp)
	addl	%ebx, %edi
	jmp	L300
L515:
	movl	%ebx, %edx
	movl	%edi, -328(%ebp)
	movl	%esi, %ebx
	movl	-396(%ebp), %edi
	movl	%edx, %esi
	jmp	L285
	.p2align 4,,10
	.p2align 3
L353:
	movl	%edi, %eax
L285:
	movl	%edi, %ecx
	leal	1(%eax), %edi
	movl	-360(%ebp), %edx
	movl	%edi, %eax
	subl	%ecx, %eax
	movl	-344(%ebp), %ecx
	imull	%eax, %ecx
	imull	-324(%ebp), %eax
	addl	%ecx, %ebx
	addl	%eax, %esi
	movl	_ylookup, %eax
	movl	(%eax,%edi,4), %ecx
	movl	_frameplace, %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	addl	%edx, %ecx
	addl	%ecx, %eax
	movl	%esi, %ecx
	movl	%eax, 20(%esp)
	movl	%esi, %eax
	sarl	$16, %ecx
	sall	$16, %eax
	movl	%eax, 16(%esp)
	movl	%ebx, %eax
	sarl	$16, %eax
	imull	-316(%ebp), %eax
	addl	%ecx, %eax
	addl	-320(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	__ZL5lastx.lto_priv.0, %eax
	subl	(%eax,%edi,4), %edx
	movl	%edx, (%esp)
	call	_qrhlineasm4
	cmpl	-328(%ebp), %edi
	jne	L353
	jmp	L63
L533:
	movl	%edi, -328(%ebp)
	movl	-396(%ebp), %edi
	jmp	L284
	.p2align 4,,10
	.p2align 3
L351:
	movl	%edi, %eax
L284:
	movl	%edi, %ecx
	leal	1(%eax), %edi
	movl	-360(%ebp), %edx
	movl	%edi, %eax
	subl	%ecx, %eax
	movl	-344(%ebp), %ecx
	imull	%eax, %ecx
	imull	-324(%ebp), %eax
	addl	%ecx, %esi
	addl	%eax, %ebx
	movl	_ylookup, %eax
	movl	(%eax,%edi,4), %ecx
	movl	_frameplace, %eax
	movl	$0, 8(%esp)
	addl	%edx, %ecx
	addl	%ecx, %eax
	movl	%ebx, %ecx
	movl	%eax, 20(%esp)
	movl	%ebx, %eax
	sarl	$16, %ecx
	sall	$16, %eax
	movl	%eax, 16(%esp)
	movl	%esi, %eax
	sall	$16, %eax
	movl	%eax, 12(%esp)
	movl	%esi, %eax
	sarl	$16, %eax
	imull	-316(%ebp), %eax
	addl	%ecx, %eax
	addl	-320(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	__ZL5lastx.lto_priv.0, %eax
	subl	(%eax,%edi,4), %edx
	movl	%edx, (%esp)
	call	_rmhlineasm4
	cmpl	-328(%ebp), %edi
	jne	L351
	jmp	L63
L549:
	movl	%eax, -352(%ebp)
	jmp	L265
L544:
	cmpb	$-88, %al
	jbe	L194
	orl	$33, -352(%ebp)
	movl	$1, -396(%ebp)
	jmp	L190
L74:
	movl	-304(%ebp), %ebx
	movl	-308(%ebp), %esi
	movl	-312(%ebp), %eax
	movl	%ebx, -380(%ebp)
	movl	%ebx, -300(%ebp)
	movl	_usemodels, %ebx
	movl	%esi, -364(%ebp)
	movl	%esi, -296(%ebp)
	movzbl	-392(%ebp), %esi
	movl	%eax, -348(%ebp)
	movl	%eax, -292(%ebp)
	testl	%ebx, %ebx
	je	L77
	movl	-352(%ebp), %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%eax, %ebx
	movl	-372(%ebp), %eax
	leal	(%eax,%eax,4), %eax
	addl	%ebx, %eax
	movl	_tile2model+8(,%eax,4), %ecx
	testl	%ecx, %ecx
	jne	L561
L77:
	movzbl	-376(%ebp), %edx
	movswl	-368(%ebp), %ecx
	movsbl	-400(%ebp), %ebx
	movl	%edx, -324(%ebp)
	movl	%ecx, -384(%ebp)
	movl	%ebx, -464(%ebp)
	movl	%edi, 64(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 60(%esp)
	movl	-328(%ebp), %eax
	movl	%eax, 56(%esp)
	movl	-344(%ebp), %eax
	movl	%eax, 52(%esp)
	movl	-316(%ebp), %eax
	movl	%eax, 48(%esp)
	movzbl	-404(%ebp), %eax
	movl	%eax, -468(%ebp)
	movl	%edx, 40(%esp)
	movl	%eax, 44(%esp)
	movl	-352(%ebp), %eax
	movl	%esi, 32(%esp)
	movl	%eax, 36(%esp)
	movl	%ebx, 28(%esp)
	movl	-372(%ebp), %eax
	movl	%ecx, 20(%esp)
	movl	%eax, 24(%esp)
	movl	-348(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-364(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-380(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC21, 4(%esp)
	movl	$3, (%esp)
	call	__Z26buildgl_outputDebugMessagehPKcz.constprop.0
	movl	_ydim, %eax
	xorl	%edx, %edx
	movl	%eax, (%esp)
	movl	_xdim, %ecx
	xorl	%eax, %eax
	call	__Z19buildgl_setViewportiiii
	movl	$5889, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glPushMatrix
	movl	$3, %eax
	movl	$0, _globvis
	movl	$0, _globvis2
	call	__Z17polymost_setClampc
	xorps	%xmm0, %xmm0
	cvtsi2ssl	_globvis2, %xmm0
	call	__Z22polymost_setVisibilityf
	movzwl	_globalpicnum, %eax
	movss	_fxdim, %xmm0
	movss	LC22, %xmm1
	movss	_ghalfx, %xmm5
	movaps	%xmm0, %xmm2
	movw	%ax, -380(%ebp)
	movzwl	-320(%ebp), %eax
	mulss	%xmm1, %xmm2
	movss	%xmm5, -400(%ebp)
	movss	LC0, %xmm5
	movss	_fydim, %xmm3
	movss	_ghalfy, %xmm6
	movw	%ax, _globalpicnum
	movl	_globalshade, %eax
	mulss	%xmm3, %xmm1
	movaps	%xmm5, %xmm4
	movss	_grhalfxdown10, %xmm7
	movss	%xmm6, -408(%ebp)
	movss	_grhalfxdown10x, %xmm6
	movl	%eax, -388(%ebp)
	movl	_globalclipdist, %eax
	movss	%xmm2, _ghalfx
	mulss	LC23, %xmm2
	movl	%eax, -392(%ebp)
	movl	_globalpal, %eax
	movss	%xmm7, -412(%ebp)
	movss	__ZL6ghoriz.lto_priv.0, %xmm7
	movl	%eax, -396(%ebp)
	movss	%xmm6, -424(%ebp)
	divss	%xmm2, %xmm4
	movl	%ebx, _globalshade
	movl	$0, _globalclipdist
	movl	%esi, _globalpal
	movss	%xmm1, _ghalfy
	movss	%xmm5, -356(%ebp)
	movss	%xmm4, _grhalfxdown10
	movss	%xmm4, _grhalfxdown10x
	movss	%xmm7, -416(%ebp)
	movl	_frameoffset, %eax
	movss	_gchang, %xmm6
	movss	_gshang, %xmm7
	movss	%xmm1, __ZL6ghoriz.lto_priv.0
	movss	%xmm6, -432(%ebp)
	movss	_gctang, %xmm6
	movl	%eax, -428(%ebp)
	movl	_frameplace, %eax
	movss	%xmm7, -436(%ebp)
	movss	_gstang, %xmm7
	movss	%xmm6, -440(%ebp)
	movss	_gvrcorrection, %xmm6
	movl	%eax, _frameoffset
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$0x00000000, _gshang
	movl	$0x00000000, _gstang
	movss	%xmm5, _gchang
	movss	%xmm5, _gctang
	movss	%xmm7, -444(%ebp)
	movss	%xmm6, -448(%ebp)
	movss	%xmm5, _gvrcorrection
	cmpl	%eax, _gl
	je	L562
L116:
	xorl	%eax, %eax
L117:
	movl	$0, -212(%ebp,%eax)
	movl	$0, -208(%ebp,%eax)
	movl	$0, -204(%ebp,%eax)
	movl	$0, -200(%ebp,%eax)
	addl	$16, %eax
	cmpl	$48, %eax
	jb	L117
	divss	%xmm3, %xmm0
	movss	-356(%ebp), %xmm7
	movl	$0, -212(%ebp,%eax)
	movl	$0, -208(%ebp,%eax)
	movl	$0, -204(%ebp,%eax)
	leal	-216(%ebp), %eax
	movss	%xmm7, -172(%ebp)
	movss	%xmm7, -216(%ebp)
	movl	$0x3f800347, -176(%ebp)
	movl	$0xb8d1c000, -160(%ebp)
	movss	%xmm0, -196(%ebp)
	movl	%eax, (%esp)
	call	*_glad_glLoadMatrixf
	subl	$4, %esp
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glPushMatrix
	call	*_glad_glLoadIdentity
	movl	$2929, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L119
	movl	$2929, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$2929, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L119:
	movl	_r_detailmapping, %eax
	movl	$3008, %edx
	movl	%eax, -452(%ebp)
	movl	_r_glowmapping, %eax
	movl	%eax, -456(%ebp)
	movl	_pr_normalmapping, %eax
	movl	%eax, -460(%ebp)
	movl	$_gl+88, %eax
	call	_inthash_find
	testb	$64, -352(%ebp)
	jne	L120
	cmpl	$1, %eax
	je	L121
	movl	$3008, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L121:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L122
	movl	$3042, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L122:
	movl	$5, -376(%ebp)
	movl	-352(%ebp), %eax
	movl	%eax, %ebx
	andl	$32, %ebx
	testb	$1, %al
	je	L123
	testl	%ebx, %ebx
	movl	$32, %eax
	movl	$6, %edi
	cmovne	%eax, %ebx
	movl	$7, %eax
	cmove	%edi, %eax
	movl	%eax, -376(%ebp)
L123:
	movl	-352(%ebp), %eax
	shrl	$5, %ebx
	movl	-468(%ebp), %edx
	movl	%ebx, %ecx
	andl	$1, %eax
	call	_handle_blend
	cmpl	$4, _rendmode
	je	L563
L126:
	movzbl	-404(%ebp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-324(%ebp), %xmm0
	mulss	LC20, %xmm0
	movb	%al, __ZL14drawpoly_blend.lto_priv.0
	movswl	_globalpicnum, %eax
	movzwl	_tilesiz(,%eax,4), %esi
	movzwl	_tilesiz+2(,%eax,4), %edi
	movw	%si, -404(%ebp)
	movw	%di, -348(%ebp)
	movss	%xmm0, __ZL14drawpoly_alpha.lto_priv.0
	testb	$16, -352(%ebp)
	jne	L313
	movsbw	_picanm+2(%eax,%eax,4), %cx
	sarw	%si
	sarw	%di
	movsbw	_picanm+1(%eax,%eax,4), %ax
	addl	%esi, %eax
	leal	(%ecx,%edi), %ebx
	cwtl
	movl	%eax, -364(%ebp)
L127:
	movl	-352(%ebp), %esi
	movzwl	-348(%ebp), %eax
	leal	-292(%ebp), %ecx
	movl	%esi, %edx
	subl	%ebx, %eax
	movl	%esi, %edi
	andl	$4, %edx
	cmovne	%eax, %ebx
	leal	-288(%ebp), %eax
	movl	%edx, -464(%ebp)
	leal	-296(%ebp), %edx
	movl	%eax, 16(%esp)
	leal	-284(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-344(%ebp), %eax
	addl	-360(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-316(%ebp), %eax
	addl	-328(%ebp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	leal	-300(%ebp), %eax
	call	_dorotspr_handle_bit2
	movl	-384(%ebp), %eax
	movl	-292(%ebp), %edx
	addl	$512, %eax
	movl	%edx, -372(%ebp)
	andl	$2047, %eax
	movl	%eax, -384(%ebp)
	movswl	_sintable(%eax,%eax), %eax
/APP
 # 9261 "source/build/src/polymost.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-368(%ebp), %ecx
	movl	%eax, %esi
	movl	-372(%ebp), %edx
	andl	$2047, %ecx
	movl	%ecx, -468(%ebp)
	movswl	_sintable(%ecx,%ecx), %eax
/APP
 # 9263 "source/build/src/polymost.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	%edi, %eax
	andl	$10, %eax
	movl	%eax, -472(%ebp)
	cmpl	$8, %eax
	je	L314
	movl	%esi, %eax
	movl	-288(%ebp), %edx
/APP
 # 9268 "source/build/src/polymost.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, -320(%ebp)
	movl	-288(%ebp), %edx
	movl	%ecx, %eax
/APP
 # 9269 "source/build/src/polymost.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, -324(%ebp)
L129:
	movl	-364(%ebp), %edi
	movl	-320(%ebp), %edx
	movswl	%bx, %ebx
	movl	$0, -120(%ebp)
	movl	-300(%ebp), %eax
	movl	$0, -116(%ebp)
	imull	%edi, %edx
	movl	$0, -112(%ebp)
	imull	%ecx, %edi
	movl	$0, -108(%ebp)
	movl	$0, -104(%ebp)
	subl	%edx, %eax
	movl	-324(%ebp), %edx
	movl	$0, -100(%ebp)
	movl	$0, -96(%ebp)
	imull	%ebx, %edx
	movl	$0, -92(%ebp)
	imull	%esi, %ebx
	addl	%edx, %eax
	movl	%eax, -352(%ebp)
	movl	-296(%ebp), %eax
	movl	%ebx, %edx
	subl	%edi, %eax
	movl	-352(%ebp), %edi
	movl	%eax, %ebx
	movswl	-404(%ebp), %eax
	subl	%edx, %ebx
	movl	-320(%ebp), %edx
	movl	%edi, -152(%ebp)
	imull	%eax, %ecx
	movl	%ebx, -148(%ebp)
	imull	%eax, %edx
	movl	-324(%ebp), %eax
	addl	%edi, %edx
	leal	(%ecx,%ebx), %edi
	movswl	-348(%ebp), %ecx
	movl	%edx, -144(%ebp)
	imull	%ecx, %eax
	movl	%ecx, -368(%ebp)
	movl	-352(%ebp), %ecx
	movl	%edi, -140(%ebp)
	subl	%eax, %ecx
	movl	-368(%ebp), %eax
	movl	%ecx, -128(%ebp)
	addl	%ecx, %edx
	movl	-352(%ebp), %ecx
	imull	%esi, %eax
	subl	%ecx, %edx
	movl	%edx, -136(%ebp)
	addl	%ebx, %eax
	movl	%eax, -124(%ebp)
	addl	%edi, %eax
	xorl	%edi, %edi
	subl	%ebx, %eax
	movl	%eax, -132(%ebp)
	movl	-328(%ebp), %eax
	movl	-316(%ebp), %esi
	movl	%ebx, -404(%ebp)
	movl	%ecx, %ebx
	addl	$1, %eax
	movl	%edi, -320(%ebp)
	sall	$16, %esi
	sall	$16, %eax
	movl	%esi, -328(%ebp)
	movl	%eax, -348(%ebp)
	jmp	L137
L132:
	movl	-328(%ebp), %eax
	movl	%eax, %edx
	subl	%ebx, %edx
	cmpl	-316(%ebp), %eax
	movl	%edx, %eax
	setl	%cl
	shrl	$31, %eax
	cmpb	%al, %cl
	jne	L135
	movl	-348(%ebp), %eax
L134:
	movl	%eax, %edx
	subl	%ebx, %edx
	cmpl	-316(%ebp), %eax
	movl	%edx, %ecx
	setl	%bl
	shrl	$31, %ecx
	cmpb	%cl, %bl
	je	L136
	movl	%eax, -280(%ebp,%edi,4)
	movl	-320(%ebp), %eax
	movl	-148(%ebp,%eax,8), %ebx
	movl	-324(%ebp), %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	-148(%ebp,%esi,8), %eax
	subl	%ebx, %eax
	imull	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.11
	addl	%eax, %ebx
	movl	%ebx, -248(%ebp,%edi,4)
	addl	$1, %edi
L136:
	testl	%esi, %esi
	je	L564
	movl	%esi, -320(%ebp)
	movl	-316(%ebp), %ebx
L137:
	movl	-320(%ebp), %eax
	leal	1(%eax), %esi
	cmpl	$3, %eax
	je	L315
	movl	-152(%ebp,%esi,8), %eax
	movl	%eax, -316(%ebp)
L130:
	movl	-316(%ebp), %eax
	subl	%ebx, %eax
	movl	%eax, -324(%ebp)
	cmpl	%ebx, -328(%ebp)
	jg	L131
	cmpl	%ebx, -348(%ebp)
	jl	L131
	movl	-320(%ebp), %eax
	movl	%ebx, -280(%ebp,%edi,4)
	movl	-148(%ebp,%eax,8), %eax
	movl	%eax, -248(%ebp,%edi,4)
	addl	$1, %edi
L131:
	movl	-324(%ebp), %eax
	testl	%eax, %eax
	jg	L132
	movl	-348(%ebp), %eax
	movl	%eax, %ecx
	subl	%ebx, %ecx
	cmpl	-316(%ebp), %eax
	movl	%ecx, %eax
	setl	%dl
	shrl	$31, %eax
	cmpb	%al, %dl
	je	L520
	movl	-348(%ebp), %eax
	movl	%eax, -280(%ebp,%edi,4)
	movl	-320(%ebp), %eax
	movl	-148(%ebp,%eax,8), %edx
	movl	-324(%ebp), %eax
	movl	%edx, -364(%ebp)
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	-148(%ebp,%esi,8), %eax
	subl	-364(%ebp), %eax
	imull	%ecx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.11
	addl	-364(%ebp), %eax
	movl	%eax, -248(%ebp,%edi,4)
	addl	$1, %edi
L520:
	movl	-328(%ebp), %eax
	jmp	L134
L551:
	movl	$24, (%esp)
	call	_setupvlineasm
	movups	-344(%ebp), %xmm0
	jmp	L200
L562:
	call	__ZL21polymost_updaterotmatv.part.0.lto_priv.0
	movss	_fxdim, %xmm0
	movss	_fydim, %xmm3
	jmp	L116
	.p2align 4,,10
	.p2align 3
L202:
	movl	-396(%ebp), %esi
	movl	-388(%ebp), %ebx
	movb	$15, -324(%ebp)
	leal	(%ecx,%esi), %edi
	movl	%ebx, -372(%ebp)
	movl	%edi, -356(%ebp)
	leal	(%edx,%esi), %edi
	movl	%edi, -368(%ebp)
	movl	%esi, %edi
	addl	_startdmost, %edi
	movl	%edi, -392(%ebp)
	addl	_startumost, %esi
L207:
	movl	-364(%ebp), %edi
	addl	%edi, -372(%ebp)
	movl	-356(%ebp), %edi
	movswl	(%esi,%eax,2), %ecx
	movswl	(%edi,%eax,2), %edx
	movl	-368(%ebp), %edi
	cmpw	%cx, %dx
	cmovl	%ecx, %edx
	movswl	(%edi,%eax,2), %ecx
	movl	-392(%ebp), %edi
	movswl	(%edi,%eax,2), %edi
	cmpw	%di, %cx
	cmovg	%edi, %ecx
	cmpl	%edx, %ecx
	jle	L206
	movl	%edx, %edi
	subl	-344(%ebp), %edi
	subl	$1, %ecx
	movl	%edx, -88(%ebp,%eax,4)
	imull	-380(%ebp), %edi
	addl	%edi, -348(%ebp)
	movl	-372(%ebp), %edi
	movl	%ecx, -152(%ebp,%eax,4)
	movzbl	__ZL8pow2char.lto_priv.9(%eax), %ecx
	movl	%edx, -344(%ebp)
	shrl	$16, %edi
	imull	-316(%ebp), %edi
	addl	-320(%ebp), %edi
	movl	%edi, _bufplce(,%eax,4)
	movl	-348(%ebp), %edi
	notl	%ecx
	andb	%cl, -324(%ebp)
	movl	%edi, _vplce(,%eax,4)
L206:
	addl	$1, %eax
	cmpl	-352(%ebp), %eax
	jne	L207
	jmp	L522
	.p2align 4,,10
	.p2align 3
L211:
	cmpb	$0, -324(%ebp)
	jne	L226
	cmpl	%ebx, %edi
	jle	L227
	movl	-88(%ebp), %eax
	cmpl	%eax, %ebx
	jg	L565
L232:
	movl	-84(%ebp), %eax
	cmpl	%ebx, %eax
	jl	L566
L233:
	movl	-80(%ebp), %eax
	cmpl	%ebx, %eax
	jl	L567
L234:
	movl	-76(%ebp), %eax
	cmpl	%ebx, %eax
	jl	L568
L235:
	movl	_ylookup, %eax
	movl	-352(%ebp), %esi
	movl	(%eax,%ebx,4), %edx
	movl	%edi, %eax
	subl	%ebx, %eax
	addl	%esi, %edx
	addl	$1, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_mvlineasm4
	movl	_ylookup, %eax
	addl	4(%eax,%edi,4), %esi
	movl	-152(%ebp), %eax
	movl	%esi, %ebx
	cmpl	%edi, %eax
	jg	L569
L236:
	movl	-148(%ebp), %eax
	cmpl	%edi, %eax
	jg	L570
L237:
	movl	-144(%ebp), %eax
	cmpl	%edi, %eax
	jg	L571
L238:
	movl	-140(%ebp), %eax
	cmpl	%edi, %eax
	jle	L218
	leal	3(%ebx), %edx
	subl	%edi, %eax
	movl	%edx, 20(%esp)
	movl	_bufplce+12, %edx
	subl	$1, %eax
	movl	%edx, 16(%esp)
	movl	_vplce+12, %edx
	movl	%edx, 12(%esp)
L524:
	movl	%eax, 8(%esp)
	movl	_palookupoffse+12, %eax
	movl	%eax, 4(%esp)
	movl	_vince+12, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	jmp	L218
L315:
	movl	-352(%ebp), %eax
	xorl	%esi, %esi
	movl	%eax, -316(%ebp)
	jmp	L130
L135:
	movl	-328(%ebp), %eax
	movl	%eax, -280(%ebp,%edi,4)
	movl	-320(%ebp), %eax
	movl	-148(%ebp,%eax,8), %ecx
	movl	-324(%ebp), %eax
	movl	%ecx, -364(%ebp)
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	-148(%ebp,%esi,8), %eax
	subl	-364(%ebp), %eax
	imull	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.11
	movl	-364(%ebp), %ecx
	addl	%eax, %ecx
	movl	-348(%ebp), %eax
	movl	%ecx, -248(%ebp,%edi,4)
	addl	$1, %edi
	jmp	L134
L212:
	testb	$1, -324(%ebp)
	je	L213
L215:
	testb	$2, -324(%ebp)
	je	L572
L216:
	testb	$4, -324(%ebp)
	je	L573
L217:
	testb	$8, -324(%ebp)
	jne	L218
	movl	-76(%ebp), %edx
	movl	_ylookup, %eax
	movl	-352(%ebp), %esi
	addl	(%eax,%edx,4), %esi
	leal	3(%esi), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+12, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+12, %eax
	movl	%eax, 12(%esp)
	movl	-140(%ebp), %eax
	subl	%edx, %eax
L523:
	movl	%eax, 8(%esp)
	movl	_palookupoffse+12, %eax
	movl	%eax, 4(%esp)
	movl	_vince+12, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	jmp	L218
L226:
	testb	$1, -324(%ebp)
	je	L227
L229:
	testb	$2, -324(%ebp)
	je	L574
L230:
	testb	$4, -324(%ebp)
	je	L575
L231:
	testb	$8, -324(%ebp)
	jne	L218
	movl	-76(%ebp), %edx
	movl	_ylookup, %eax
	movl	-352(%ebp), %esi
	addl	(%eax,%edx,4), %esi
	leal	3(%esi), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+12, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+12, %eax
	movl	%eax, 12(%esp)
	movl	-140(%ebp), %eax
	subl	%edx, %eax
	jmp	L524
L227:
	movl	-88(%ebp), %edx
	movl	_ylookup, %eax
	movl	-352(%ebp), %esi
	addl	(%eax,%edx,4), %esi
	movl	%esi, 20(%esp)
	movl	_bufplce, %eax
	movl	%eax, 16(%esp)
	movl	_vplce, %eax
	movl	%eax, 12(%esp)
	movl	-152(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse, %eax
	movl	%eax, 4(%esp)
	movl	_vince, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	jmp	L229
L575:
	movl	-80(%ebp), %edx
	movl	_ylookup, %eax
	movl	-352(%ebp), %esi
	addl	(%eax,%edx,4), %esi
	leal	2(%esi), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+8, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+8, %eax
	movl	%eax, 12(%esp)
	movl	-144(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+8, %eax
	movl	%eax, 4(%esp)
	movl	_vince+8, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	jmp	L231
L574:
	movl	-84(%ebp), %edx
	movl	_ylookup, %eax
	movl	-352(%ebp), %esi
	addl	(%eax,%edx,4), %esi
	leal	1(%esi), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+4, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+4, %eax
	movl	%eax, 12(%esp)
	movl	-148(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+4, %eax
	movl	%eax, 4(%esp)
	movl	_vince+4, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	jmp	L230
L573:
	movl	-80(%ebp), %edx
	movl	_ylookup, %eax
	movl	-352(%ebp), %esi
	addl	(%eax,%edx,4), %esi
	leal	2(%esi), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+8, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+8, %eax
	movl	%eax, 12(%esp)
	movl	-144(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+8, %eax
	movl	%eax, 4(%esp)
	movl	_vince+8, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	jmp	L217
L572:
	movl	-84(%ebp), %edx
	movl	_ylookup, %eax
	movl	-352(%ebp), %esi
	addl	(%eax,%edx,4), %esi
	leal	1(%esi), %eax
	movl	%eax, 20(%esp)
	movl	_bufplce+4, %eax
	movl	%eax, 16(%esp)
	movl	_vplce+4, %eax
	movl	%eax, 12(%esp)
	movl	-148(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse+4, %eax
	movl	%eax, 4(%esp)
	movl	_vince+4, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	jmp	L216
L213:
	movl	-88(%ebp), %edx
	movl	_ylookup, %eax
	movl	-352(%ebp), %esi
	addl	(%eax,%edx,4), %esi
	movl	%esi, 20(%esp)
	movl	_bufplce, %eax
	movl	%eax, 16(%esp)
	movl	_vplce, %eax
	movl	%eax, 12(%esp)
	movl	-152(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, 8(%esp)
	movl	_palookupoffse, %eax
	movl	%eax, 4(%esp)
	movl	_vince, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	jmp	L215
L543:
	movzbl	%al, %edi
	xorps	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	andl	$1, %eax
	leal	(%eax,%edi,2), %edx
	movzbl	-376(%ebp), %eax
	cvtsi2ssl	%edx, %xmm1
	movl	%edx, -316(%ebp)
	cvtsi2ssl	%eax, %xmm0
	divss	LC26, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, (%esp)
	call	_lrintf
	movl	%eax, -396(%ebp)
	cmpl	%eax, %edi
	jge	L192
	movl	-316(%ebp), %edx
	subl	%eax, %edx
	movl	%edx, -396(%ebp)
	testl	%edx, %edx
	jle	L63
	orl	$33, -352(%ebp)
L193:
	movzbl	-396(%ebp), %eax
	movl	$1, -396(%ebp)
	movb	%al, -404(%ebp)
	movl	-352(%ebp), %eax
	movl	%eax, %edi
	andl	$10, %eax
	andl	$4, %edi
	movl	%eax, -412(%ebp)
	movl	%edi, -408(%ebp)
	jmp	L190
L559:
	leal	3(%ebx), %edx
	subl	%edi, %eax
	movl	%edx, 20(%esp)
	movl	_bufplce+12, %edx
	subl	$1, %eax
	movl	%edx, 16(%esp)
	movl	_vplce+12, %edx
	movl	%edx, 12(%esp)
	jmp	L523
L558:
	leal	2(%ebx), %edx
	subl	%edi, %eax
	movl	%edx, 20(%esp)
	movl	_bufplce+8, %edx
	subl	$1, %eax
	movl	%edx, 16(%esp)
	movl	_vplce+8, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	_palookupoffse+8, %eax
	movl	%eax, 4(%esp)
	movl	_vince+8, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	jmp	L225
L557:
	leal	1(%ebx), %edx
	subl	%edi, %eax
	movl	%edx, 20(%esp)
	movl	_bufplce+4, %edx
	subl	$1, %eax
	movl	%edx, 16(%esp)
	movl	_vplce+4, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	_palookupoffse+4, %eax
	movl	%eax, 4(%esp)
	movl	_vince+4, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	jmp	L224
L571:
	leal	2(%ebx), %edx
	subl	%edi, %eax
	movl	%edx, 20(%esp)
	movl	_bufplce+8, %edx
	subl	$1, %eax
	movl	%edx, 16(%esp)
	movl	_vplce+8, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	_palookupoffse+8, %eax
	movl	%eax, 4(%esp)
	movl	_vince+8, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	jmp	L238
L566:
	movl	_ylookup, %edx
	movl	-352(%ebp), %esi
	addl	(%edx,%eax,4), %esi
	leal	1(%esi), %edx
	movl	%edx, 20(%esp)
	movl	_bufplce+4, %edx
	movl	%edx, 16(%esp)
	movl	_vplce+4, %edx
	movl	%edx, 12(%esp)
	movl	%ebx, %edx
	subl	%eax, %edx
	subl	$1, %edx
	movl	%edx, 8(%esp)
	movl	_palookupoffse+4, %eax
	movl	%eax, 4(%esp)
	movl	_vince+4, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	movl	%eax, _vplce+4
	jmp	L233
L565:
	movl	_ylookup, %edx
	movl	-352(%ebp), %esi
	addl	(%edx,%eax,4), %esi
	movl	%esi, 20(%esp)
	movl	_bufplce, %edx
	movl	%edx, 16(%esp)
	movl	_vplce, %edx
	movl	%edx, 12(%esp)
	movl	%ebx, %edx
	subl	%eax, %edx
	subl	$1, %edx
	movl	%edx, 8(%esp)
	movl	_palookupoffse, %eax
	movl	%eax, 4(%esp)
	movl	_vince, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	movl	%eax, _vplce
	jmp	L232
L570:
	leal	1(%ebx), %edx
	subl	%edi, %eax
	movl	%edx, 20(%esp)
	movl	_bufplce+4, %edx
	subl	$1, %eax
	movl	%edx, 16(%esp)
	movl	_vplce+4, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	_palookupoffse+4, %eax
	movl	%eax, 4(%esp)
	movl	_vince+4, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	jmp	L237
L569:
	movl	%esi, 20(%esp)
	movl	_bufplce, %edx
	subl	%edi, %eax
	subl	$1, %eax
	movl	%edx, 16(%esp)
	movl	_vplce, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	_palookupoffse, %eax
	movl	%eax, 4(%esp)
	movl	_vince, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	jmp	L236
L568:
	movl	_ylookup, %edx
	movl	-352(%ebp), %esi
	addl	(%edx,%eax,4), %esi
	leal	3(%esi), %edx
	movl	%edx, 20(%esp)
	movl	_bufplce+12, %edx
	movl	%edx, 16(%esp)
	movl	_vplce+12, %edx
	movl	%edx, 12(%esp)
	movl	%ebx, %edx
	subl	%eax, %edx
	subl	$1, %edx
	movl	%edx, 8(%esp)
	movl	_palookupoffse+12, %eax
	movl	%eax, 4(%esp)
	movl	_vince+12, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	movl	%eax, _vplce+12
	jmp	L235
L567:
	movl	_ylookup, %edx
	movl	-352(%ebp), %esi
	addl	(%edx,%eax,4), %esi
	leal	2(%esi), %edx
	movl	%edx, 20(%esp)
	movl	_bufplce+8, %edx
	movl	%edx, 16(%esp)
	movl	_vplce+8, %edx
	movl	%edx, 12(%esp)
	movl	%ebx, %edx
	subl	%eax, %edx
	subl	$1, %edx
	movl	%edx, 8(%esp)
	movl	_palookupoffse+8, %eax
	movl	%eax, 4(%esp)
	movl	_vince+8, %eax
	movl	%eax, (%esp)
	call	_mvlineasm1
	movl	%eax, _vplce+8
	jmp	L234
L552:
	movl	_ylookup, %edx
	movl	-352(%ebp), %esi
	addl	(%edx,%eax,4), %esi
	movl	%esi, 20(%esp)
	movl	_bufplce, %edx
	movl	%edx, 16(%esp)
	movl	_vplce, %edx
	movl	%edx, 12(%esp)
	movl	%ebx, %edx
	subl	%eax, %edx
	subl	$1, %edx
	movl	%edx, 8(%esp)
	movl	_palookupoffse, %eax
	movl	%eax, 4(%esp)
	movl	_vince, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	movl	%eax, _vplce
	jmp	L219
L556:
	movl	%esi, 20(%esp)
	movl	_bufplce, %edx
	subl	%edi, %eax
	subl	$1, %eax
	movl	%edx, 16(%esp)
	movl	_vplce, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	_palookupoffse, %eax
	movl	%eax, 4(%esp)
	movl	_vince, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	jmp	L223
L555:
	movl	_ylookup, %edx
	movl	-352(%ebp), %esi
	addl	(%edx,%eax,4), %esi
	leal	3(%esi), %edx
	movl	%edx, 20(%esp)
	movl	_bufplce+12, %edx
	movl	%edx, 16(%esp)
	movl	_vplce+12, %edx
	movl	%edx, 12(%esp)
	movl	%ebx, %edx
	subl	%eax, %edx
	subl	$1, %edx
	movl	%edx, 8(%esp)
	movl	_palookupoffse+12, %eax
	movl	%eax, 4(%esp)
	movl	_vince+12, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	movl	%eax, _vplce+12
	jmp	L222
L554:
	movl	_ylookup, %edx
	movl	-352(%ebp), %esi
	addl	(%edx,%eax,4), %esi
	leal	2(%esi), %edx
	movl	%edx, 20(%esp)
	movl	_bufplce+8, %edx
	movl	%edx, 16(%esp)
	movl	_vplce+8, %edx
	movl	%edx, 12(%esp)
	movl	%ebx, %edx
	subl	%eax, %edx
	subl	$1, %edx
	movl	%edx, 8(%esp)
	movl	_palookupoffse+8, %eax
	movl	%eax, 4(%esp)
	movl	_vince+8, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	movl	%eax, _vplce+8
	jmp	L221
L553:
	movl	_ylookup, %edx
	movl	-352(%ebp), %esi
	addl	(%edx,%eax,4), %esi
	leal	1(%esi), %edx
	movl	%edx, 20(%esp)
	movl	_bufplce+4, %edx
	movl	%edx, 16(%esp)
	movl	_vplce+4, %edx
	movl	%edx, 12(%esp)
	movl	%ebx, %edx
	subl	%eax, %edx
	subl	$1, %edx
	movl	%edx, 8(%esp)
	movl	_palookupoffse+4, %eax
	movl	%eax, 4(%esp)
	movl	_vince+4, %eax
	movl	%eax, (%esp)
	call	_prevlineasm1
	movl	%eax, _vplce+4
	jmp	L220
L564:
	movl	%edi, -364(%ebp)
	movl	-404(%ebp), %ebx
	cmpl	$2, %edi
	jle	L138
	movl	-360(%ebp), %eax
	movl	-344(%ebp), %esi
	movl	$0, -316(%ebp)
	movl	%ebx, -360(%ebp)
	movl	-248(%ebp), %edi
	addl	$1, %eax
	sall	$16, %esi
	sall	$16, %eax
	movl	%esi, -328(%ebp)
	xorl	%esi, %esi
	movl	%eax, -348(%ebp)
	jmp	L146
L577:
	movl	-328(%ebp), %edx
	movl	%edx, %ecx
	subl	%edi, %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	cmpl	-320(%ebp), %edx
	movl	%eax, -344(%ebp)
	setl	%dl
	cmpb	-344(%ebp), %dl
	je	L521
	movl	-316(%ebp), %eax
	movl	-328(%ebp), %edx
	movl	%edx, -148(%ebp,%eax,8)
	movl	-280(%ebp,%esi,4), %edx
	movl	-324(%ebp), %eax
	movl	%edx, -344(%ebp)
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	-280(%ebp,%ebx,4), %eax
	subl	-344(%ebp), %eax
	imull	%ecx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.11
	movl	-316(%ebp), %edx
	addl	-344(%ebp), %eax
	movl	%eax, -152(%ebp,%edx,8)
	leal	1(%edx), %eax
	movl	%eax, -316(%ebp)
L521:
	movl	-348(%ebp), %eax
L143:
	movl	%eax, %edx
	subl	%edi, %edx
	cmpl	%eax, -320(%ebp)
	setg	%cl
	movl	%edx, -344(%ebp)
	shrl	$31, %edx
	movl	%ecx, %edi
	movl	%edx, %ecx
	movl	%edi, %edx
	cmpb	%cl, %dl
	je	L145
	movl	-316(%ebp), %edi
	movl	-280(%ebp,%esi,4), %esi
	movl	%eax, -148(%ebp,%edi,8)
	movl	-324(%ebp), %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	-280(%ebp,%ebx,4), %eax
	subl	%esi, %eax
	imull	-344(%ebp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.11
	addl	%eax, %esi
	movl	%esi, -152(%ebp,%edi,8)
	addl	$1, %edi
	movl	%edi, -316(%ebp)
L145:
	testl	%ebx, %ebx
	je	L576
	movl	-320(%ebp), %edi
	movl	%ebx, %esi
L146:
	xorl	%eax, %eax
	leal	1(%esi), %ebx
	cmpl	%ebx, -364(%ebp)
	cmove	%eax, %ebx
	movl	-248(%ebp,%ebx,4), %eax
	movl	%eax, -320(%ebp)
	subl	%edi, %eax
	movl	%eax, -324(%ebp)
	cmpl	%edi, -328(%ebp)
	jg	L140
	cmpl	%edi, -348(%ebp)
	jl	L140
	movl	-316(%ebp), %edx
	movl	-280(%ebp,%esi,4), %eax
	movl	%edi, -148(%ebp,%edx,8)
	movl	%eax, -152(%ebp,%edx,8)
	addl	$1, %edx
	movl	%edx, -316(%ebp)
L140:
	movl	-324(%ebp), %ecx
	testl	%ecx, %ecx
	jg	L577
	movl	-348(%ebp), %eax
	movl	%eax, %ecx
	subl	%edi, %ecx
	cmpl	-320(%ebp), %eax
	movl	%ecx, %eax
	setl	%dl
	shrl	$31, %eax
	cmpb	%al, %dl
	jne	L144
	movl	-328(%ebp), %eax
	jmp	L143
L576:
	movl	%ebx, -344(%ebp)
	movl	-360(%ebp), %ebx
	cmpl	$2, -316(%ebp)
	jle	L138
	movl	-372(%ebp), %eax
	movl	$0, (%esp)
	movl	$1, 4(%esp)
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	call	_tabledivide64.lto_priv.11
	movl	%eax, %ecx
	movl	-468(%ebp), %eax
	movl	%ecx, %edx
	movswl	_sintable(%eax,%eax), %eax
/APP
 # 9333 "source/build/src/polymost.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-384(%ebp), %esi
	movl	%eax, -348(%ebp)
	movl	%ecx, %edx
	movswl	_sintable(%esi,%esi), %eax
/APP
 # 9334 "source/build/src/polymost.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	%eax, -372(%ebp)
	movl	%eax, -360(%ebp)
	movl	-348(%ebp), %eax
	movl	%esi, -328(%ebp)
	negl	%eax
	movl	%eax, -320(%ebp)
	cmpl	$8, -472(%ebp)
	je	L147
	movl	-284(%ebp), %edx
/APP
 # 9338 "source/build/src/polymost.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, -320(%ebp)
	movl	-284(%ebp), %edx
	movl	%esi, %eax
/APP
 # 9339 "source/build/src/polymost.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, -328(%ebp)
L147:
	movl	-316(%ebp), %edi
	leal	-152(%ebp), %esi
	movl	-152(%ebp), %eax
	movl	%esi, -324(%ebp)
	leal	(%esi,%edi,8), %edx
	leal	-144(%ebp), %esi
	movl	%edx, %ecx
	subl	%esi, %ecx
	andl	$8, %ecx
	je	L148
	movl	-8(%edx), %ecx
	cmpl	%ecx, %eax
	cmovg	%ecx, %eax
	subl	$8, %edx
	cmpl	%edx, %esi
	je	L511
L148:
	movl	-8(%edx), %ecx
	cmpl	%ecx, %eax
	cmovg	%ecx, %eax
	movl	-16(%edx), %ecx
	cmpl	%ecx, %eax
	cmovg	%ecx, %eax
	subl	$16, %edx
	cmpl	%edx, %esi
	jne	L148
L511:
	movl	%eax, %esi
	movl	$65535, %ecx
	xorw	%ax, %ax
	movl	-328(%ebp), %edx
	sarl	$16, %esi
	subl	$1, %eax
	subl	%ebx, %ecx
	subl	-352(%ebp), %eax
	movl	%esi, -364(%ebp)
	movl	-348(%ebp), %edi
	movl	%ecx, %esi
	movl	%eax, -352(%ebp)
/APP
 # 9354 "source/build/src/polymost.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, -384(%ebp)
	movl	-320(%ebp), %edx
	movl	%ecx, %esi
	movl	-352(%ebp), %eax
	movl	-372(%ebp), %edi
/APP
 # 9355 "source/build/src/polymost.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-464(%ebp), %edx
	testl	%edx, %edx
	je	L149
	movl	-368(%ebp), %edx
	negl	%edi
	negl	-320(%ebp)
	movl	%edi, -360(%ebp)
	sall	$16, %edx
	subl	$1, %edx
	subl	%eax, %edx
	movl	%edx, %eax
L149:
	movl	-344(%ebp), %edx
	movl	-324(%ebp), %ebx
	leal	-88(%ebp), %esi
L150:
	movl	4(%ebx,%edx,8), %edi
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	leal	8192(%edi), %ecx
	movl	(%ebx,%edx,8), %edi
	sarl	$16, %ecx
	cvtsi2ssl	%ecx, %xmm0
	leal	8192(%edi), %ecx
	sarl	$16, %ecx
	cvtsi2ssl	%ecx, %xmm1
	movss	%xmm0, 4(%esi,%edx,8)
	movss	%xmm1, (%esi,%edx,8)
	addl	$1, %edx
	cmpl	%edx, -316(%ebp)
	jne	L150
	movl	%edx, -344(%ebp)
	movl	-364(%ebp), %edx
	movl	$0, __ZL4xtex.lto_priv.0
	movl	$0, __ZL4xtex.lto_priv.0+4
	subl	$1, %edx
	movl	%edx, -316(%ebp)
	fildl	-316(%ebp)
	faddl	LC25
	movl	%eax, -316(%ebp)
	fildl	-328(%ebp)
	fildl	-348(%ebp)
	movl	$0, __ZL4ytex.lto_priv.0
	fildl	-384(%ebp)
	movl	$0, __ZL4ytex.lto_priv.0+4
	movl	$0, __ZL4otex.lto_priv.0
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$1072693248, __ZL4otex.lto_priv.0+4
	fld	%st(3)
	fmul	%st(3), %st
	fsubrp	%st, %st(1)
	fldl	LC25
	fmul	%st(2), %st
	fsubrp	%st, %st(1)
	flds	LC8
	fmul	%st, %st(1)
	fxch	%st(1)
	fstpl	__ZL4otex.lto_priv.0+8
	fmul	%st, %st(2)
	fxch	%st(2)
	fstpl	__ZL4xtex.lto_priv.0+8
	fmul	%st(1), %st
	fstpl	__ZL4ytex.lto_priv.0+8
	fildl	-320(%ebp)
	fildl	-360(%ebp)
	fildl	-316(%ebp)
	fxch	%st(4)
	fmul	%st(2), %st
	fsubrp	%st, %st(4)
	fldl	LC25
	fmul	%st(1), %st
	fsubrp	%st, %st(4)
	fxch	%st(3)
	fmul	%st(2), %st
	fstpl	__ZL4otex.lto_priv.0+16
	fmul	%st(1), %st
	fstpl	__ZL4xtex.lto_priv.0+16
	fmulp	%st, %st(1)
	fstpl	__ZL4ytex.lto_priv.0+16
	cmpl	%eax, _gl
	jne	L151
	movl	$0x00000000, -316(%ebp)
	xorps	%xmm5, %xmm5
	ucomiss	__ZL19polymost1FogEnabled.lto_priv.0, %xmm5
	jp	L357
	je	L151
L357:
	movl	$0x00000000, __ZL19polymost1FogEnabled.lto_priv.0
	movl	$0x00000000, 4(%esp)
	movl	__ZL22polymost1FogEnabledLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
L151:
	movl	-376(%ebp), %ecx
	movl	%esi, %eax
	movl	-344(%ebp), %edx
	movl	$0, __ZL10pow2xsplit.lto_priv.0
	call	__ZL17polymost_drawpolyPK4vec2IfEii.lto_priv.0
	movl	_nofog, %eax
	testl	%eax, %eax
	jne	L138
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L138
	movss	-356(%ebp), %xmm5
	ucomiss	__ZL19polymost1FogEnabled.lto_priv.0, %xmm5
	jp	L358
	je	L138
L358:
	movss	-356(%ebp), %xmm5
	movss	%xmm5, __ZL19polymost1FogEnabled.lto_priv.0
	movss	%xmm5, 4(%esp)
	movl	__ZL22polymost1FogEnabledLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	pushl	%eax
	pushl	%eax
L138:
	movl	$3008, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L155
	movl	$3008, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L155:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L156
	movl	$3042, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L156:
	xorl	%eax, %eax
	call	__Z17polymost_setClampc
	cmpl	$4, _rendmode
	je	L578
L157:
	call	*_glad_glPopMatrix
	movl	$5889, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glPopMatrix
	movzwl	-380(%ebp), %eax
	movss	-400(%ebp), %xmm3
	movss	-408(%ebp), %xmm5
	movss	-432(%ebp), %xmm7
	movw	%ax, _globalpicnum
	movl	-388(%ebp), %eax
	movss	%xmm3, _ghalfx
	movss	-412(%ebp), %xmm3
	movss	-444(%ebp), %xmm6
	movl	%eax, _globalshade
	movl	-396(%ebp), %eax
	movss	%xmm5, _ghalfy
	movss	-424(%ebp), %xmm5
	movl	%eax, _globalpal
	movl	-392(%ebp), %eax
	movss	%xmm3, _grhalfxdown10
	movss	-416(%ebp), %xmm3
	movl	%eax, _globalclipdist
	movl	-428(%ebp), %eax
	movss	%xmm5, _grhalfxdown10x
	movss	-436(%ebp), %xmm5
	movss	%xmm3, __ZL6ghoriz.lto_priv.0
	movss	-440(%ebp), %xmm3
	movss	%xmm7, _gchang
	movss	-448(%ebp), %xmm7
	movl	%eax, _frameoffset
	movss	%xmm5, _gshang
	movss	%xmm3, _gctang
	movss	%xmm6, _gstang
	movss	%xmm7, _gvrcorrection
	call	__ZL23polymost_identityrotmatv.lto_priv.0
	jmp	L63
L144:
	movl	-316(%ebp), %eax
	movl	-348(%ebp), %edx
	movl	%edx, -148(%ebp,%eax,8)
	movl	-280(%ebp,%esi,4), %edx
	movl	-324(%ebp), %eax
	movl	%edx, -344(%ebp)
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	-280(%ebp,%ebx,4), %eax
	subl	-344(%ebp), %eax
	imull	%ecx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.11
	movl	-316(%ebp), %edx
	addl	-344(%ebp), %eax
	movl	%eax, -152(%ebp,%edx,8)
	leal	1(%edx), %eax
	movl	%eax, -316(%ebp)
	movl	-328(%ebp), %eax
	jmp	L143
L194:
	movl	$1, -396(%ebp)
	movl	-352(%ebp), %eax
	andl	$-33, %eax
	orl	$1, %eax
	movl	%eax, -352(%ebp)
	jmp	L190
L192:
	movl	-396(%ebp), %ecx
	testl	%ecx, %ecx
	je	L190
	movl	-352(%ebp), %eax
	andl	$-33, %eax
	orl	$1, %eax
	movl	%eax, -352(%ebp)
	jmp	L193
L120:
	testl	%eax, %eax
	je	L124
	movl	$3008, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L124:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	movl	-352(%ebp), %ebx
	andl	$32, %ebx
	testl	%eax, %eax
	je	L125
	movl	$3042, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L125:
	movl	$4, -376(%ebp)
	jmp	L123
L313:
	movl	$0, -364(%ebp)
	xorl	%ebx, %ebx
	jmp	L127
L561:
	movl	-372(%ebp), %edx
	movl	%ebx, -316(%ebp)
	movl	%edx, %eax
	leal	0(,%edx,4), %edx
	jmp	L78
L80:
	leal	0(,%eax,4), %edx
	movzbl	-392(%ebp), %ebx
	leal	(%edx,%eax), %ecx
	cmpb	_tile2model+17(,%ecx,4), %bl
	je	L579
L78:
	addl	%edx, %eax
	movswl	_tile2model+4(,%eax,4), %eax
	cmpl	$-1, %eax
	jne	L80
	movl	-372(%ebp), %edx
	movl	-316(%ebp), %ebx
	movl	%edx, -316(%ebp)
	leal	0(,%edx,4), %edx
L79:
	movl	-316(%ebp), %eax
	leal	(%edx,%eax), %ecx
	sall	$2, %ecx
	cmpw	$-1, _tile2model(%ecx)
	je	L63
	cmpw	$-1, _tile2model+2(%ecx)
	je	L63
	leal	-152(%ebp), %ecx
	movl	%ecx, -324(%ebp)
	xorl	%ecx, %ecx
L82:
	movl	$0, -152(%ebp,%ecx)
	movl	$0, -148(%ebp,%ecx)
	movl	$0, -144(%ebp,%ecx)
	movl	$0, -140(%ebp,%ecx)
	addl	$16, %ecx
	cmpl	$32, %ecx
	jb	L82
	movl	%eax, -316(%ebp)
	movl	-316(%ebp), %eax
	addl	-324(%ebp), %ecx
	addl	%edx, %eax
	movl	$0, (%ecx)
	addl	%ebx, %eax
	movl	$0, 4(%ecx)
	movl	_tile2model+8(,%eax,4), %ebx
	movl	$0, 8(%ecx)
	testl	%ebx, %ebx
	je	L63
	testb	$1, 14(%ebx)
	jne	L63
	movzbl	-376(%ebp), %eax
	movswl	-368(%ebp), %ecx
	movl	%eax, -328(%ebp)
	movsbl	-400(%ebp), %eax
	movl	%edi, 48(%esp)
	movzbl	-404(%ebp), %edx
	movl	%edx, 44(%esp)
	movl	-328(%ebp), %edx
	movl	%edx, 40(%esp)
	movl	-352(%ebp), %edx
	movl	%esi, 32(%esp)
	movl	%edx, 36(%esp)
	movl	%eax, 28(%esp)
	movl	%eax, -360(%ebp)
	movl	-372(%ebp), %eax
	movl	%ecx, 20(%esp)
	movl	%eax, 24(%esp)
	movl	-348(%ebp), %eax
	movl	%ecx, -316(%ebp)
	movl	%eax, 16(%esp)
	movl	-364(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-380(%ebp), %eax
	movl	$LC3, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$3, (%esp)
	call	__Z26buildgl_outputDebugMessagehPKcz.constprop.0
	movl	-316(%ebp), %eax
	xorps	%xmm1, %xmm1
	movss	_gctang, %xmm5
	xorps	%xmm0, %xmm0
	fldl	_gxyaspect
	movss	_gchang, %xmm7
	movl	$0, _gxyaspect
	addl	$512, %eax
	movl	-360(%ebp), %edx
	cvtsi2ssl	-348(%ebp), %xmm0
	movss	%xmm5, -388(%ebp)
	andl	$2047, %eax
	xorps	%xmm5, %xmm5
	movss	%xmm7, -376(%ebp)
	movss	_gshang, %xmm7
	movswl	_sintable(%eax,%eax), %eax
	mulss	LC5, %xmm0
	movl	$0x00000000, _gshang
	movss	LC0, %xmm6
	movss	%xmm7, -384(%ebp)
	movss	_gstang, %xmm7
	cvtsi2ssl	%eax, %xmm1
	movl	-368(%ebp), %eax
	movl	$1072693248, _gxyaspect+4
	movss	%xmm7, -396(%ebp)
	andl	$2047, %eax
	movss	%xmm6, -356(%ebp)
	movswl	_sintable(%eax,%eax), %eax
	fstpl	-424(%ebp)
	movss	%xmm6, _gchang
	mulss	%xmm0, %xmm1
	cvtsi2ssl	%eax, %xmm5
	movl	_globalshade, %eax
	movl	%edx, _globalshade
	movl	%eax, -408(%ebp)
	movl	_globalpal, %eax
	movl	%esi, _globalpal
	mulss	%xmm0, %xmm5
	movl	%eax, -412(%ebp)
	movss	%xmm1, -344(%ebp)
	movss	%xmm1, _gctang
	movss	%xmm5, _gstang
	movl	_viewingrange, %eax
	movss	_fviewingrange, %xmm7
	movl	$65536, _viewingrange
	movl	%eax, -416(%ebp)
	movl	_pr_overridehud, %eax
	movss	%xmm7, -428(%ebp)
	movss	_gvrcorrection, %xmm7
	movl	$0x47800000, _fviewingrange
	movl	%eax, -436(%ebp)
	movss	%xmm7, -432(%ebp)
	movss	%xmm6, _gvrcorrection
	testl	%eax, %eax
	jne	L84
	movss	8(%ebx), %xmm6
	movl	-352(%ebp), %esi
	movss	(%ebx), %xmm3
	movss	4(%ebx), %xmm0
	movzwl	_globalang, %eax
	movss	%xmm6, -316(%ebp)
	andl	$10, %esi
	testb	$2, 14(%ebx)
	je	L85
L86:
	addw	12(%ebx), %ax
L92:
	movw	%ax, -124(%ebp)
	testb	$4, -352(%ebp)
	je	L93
	xorps	LC9, %xmm3
	xorps	LC9, %xmm0
L93:
	movss	_gcosang, %xmm4
	movss	-316(%ebp), %xmm2
	movaps	%xmm3, %xmm5
	movss	_gsinang, %xmm1
	mulss	%xmm4, %xmm2
	mulss	%xmm1, %xmm5
	subss	%xmm5, %xmm2
	cmpl	$4, _rendmode
	jne	L94
	mulss	%xmm3, %xmm4
	movl	$1285, %eax
	movss	LC12, %xmm3
	mulss	-316(%ebp), %xmm1
	movw	%ax, -132(%ebp)
	mulss	LC13, %xmm0
	mulss	%xmm3, %xmm2
	addss	%xmm4, %xmm1
	movss	_fglobalposz, %xmm4
	addss	%xmm0, %xmm4
	movss	_fglobalposx, %xmm0
	mulss	%xmm3, %xmm1
	addss	_fglobalposy, %xmm1
	addss	%xmm2, %xmm0
	movss	%xmm4, -144(%ebp)
	movss	%xmm0, -152(%ebp)
	movss	%xmm1, -148(%ebp)
L95:
	movzwl	-320(%ebp), %eax
	movw	%ax, -138(%ebp)
	movzbl	-400(%ebp), %eax
	movb	%al, -136(%ebp)
	movzbl	-392(%ebp), %eax
	movb	%al, -135(%ebp)
	leal	16384(%edi), %eax
	movl	-352(%ebp), %edi
	movw	%ax, -122(%ebp)
	movl	%edi, %eax
	leal	(%edi,%edi), %edx
	andl	$1, %edi
	sall	$4, %eax
	andl	$8, %edx
	andl	$512, %eax
	orl	%edx, %eax
	orl	%edi, %eax
	movl	%eax, _globalorientation
	movw	%ax, -140(%ebp)
	movl	_ydim, %eax
	cmpl	$2, %esi
	je	L580
	movl	%eax, (%esp)
	movl	_xdim, %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	__Z19buildgl_setViewportiiii
	cmpl	$3, _rendmode
	jg	L98
	movl	$5889, (%esp)
	leal	-84(%ebp), %edi
	leal	-88(%ebp), %esi
	call	*_glad_glMatrixMode
	movl	$15, %ecx
	xorl	%eax, %eax
	pushl	%edx
	movss	-356(%ebp), %xmm6
	rep stosl
	movl	$0x3f800347, -48(%ebp)
	movss	_fxdim, %xmm0
	divss	_fydim, %xmm0
	movss	%xmm0, -68(%ebp)
	movss	LC2, %xmm0
	movss	%xmm6, -44(%ebp)
	movss	%xmm6, -88(%ebp)
L303:
	movss	%xmm0, -32(%ebp)
	movl	%esi, (%esp)
	call	*_glad_glLoadMatrixf
	subl	$4, %esp
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glLoadIdentity
L98:
	movl	$2929, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testb	$8, 14(%ebx)
	je	L101
	testl	%eax, %eax
	je	L102
	movl	$2929, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$2929, %edx
	pushl	%eax
	movl	$_gl+88, %eax
	movl	$1, (%esp)
	call	_inthash_add
L102:
	xorps	%xmm0, %xmm0
	movswl	-122(%ebp), %eax
	cvtsi2ssl	-328(%ebp), %xmm0
	mulss	LC20, %xmm0
	sall	$6, %eax
	addl	_spriteext, %eax
	movss	%xmm0, 8(%eax)
	movzbl	-404(%ebp), %eax
	movb	%al, -133(%ebp)
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L104
	xorps	%xmm0, %xmm0
	ucomiss	__ZL19polymost1FogEnabled.lto_priv.0, %xmm0
	jp	L355
	je	L104
L355:
	movl	$0x00000000, __ZL19polymost1FogEnabled.lto_priv.0
	movl	$0x00000000, 4(%esp)
	movl	__ZL22polymost1FogEnabledLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	pushl	%esi
	pushl	%esi
L104:
	movl	_maxspritesonscreen, %eax
	movl	-324(%ebp), %esi
	movl	%esi, _tspriteptr(,%eax,4)
	cmpl	$3, _rendmode
	je	L581
	movl	$3008, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L108
	movl	$3008, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L108:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L109
	movl	$3042, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L109:
	movswl	-122(%ebp), %eax
	movl	_spriteext, %edx
	movzwl	-368(%ebp), %esi
	sall	$6, %eax
	movw	%si, 26(%edx,%eax)
	movswl	-122(%ebp), %eax
	movl	-348(%ebp), %esi
	sall	$6, %eax
	movl	%esi, 36(%edx,%eax)
	movswl	16(%ebx), %eax
	movl	$512, %edx
	cmpl	$-1, %eax
	cmove	%edx, %eax
	movl	_pr_overridehud, %edx
	testl	%edx, %edx
	cmovne	_pr_hudfov, %eax
	call	_polymer_setaspect
	movl	_maxspritesonscreen, %eax
	call	_polymer_drawsprite
	movl	$512, %eax
	call	_polymer_setaspect
	movswl	-122(%ebp), %eax
	xorl	%ecx, %ecx
	movl	$3008, %edx
	sall	$6, %eax
	addl	_spriteext, %eax
	movl	$0, 36(%eax)
	movw	%cx, 26(%eax)
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L112
	movl	$3008, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L112:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L107
	movl	$3042, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L107:
	movl	_maxspritesonscreen, %eax
	movl	$0, _tspriteptr(,%eax,4)
	movl	_nofog, %eax
	testl	%eax, %eax
	je	L582
L113:
	movl	-416(%ebp), %eax
	movss	-432(%ebp), %xmm5
	movss	-428(%ebp), %xmm6
	movss	-376(%ebp), %xmm7
	movl	%eax, _viewingrange
	movl	-408(%ebp), %eax
	movss	%xmm5, _gvrcorrection
	fldl	-424(%ebp)
	movss	-384(%ebp), %xmm5
	movl	%eax, _globalshade
	movl	-412(%ebp), %eax
	movss	%xmm6, _fviewingrange
	movss	-388(%ebp), %xmm6
	movss	%xmm7, _gchang
	movss	-396(%ebp), %xmm7
	movl	%eax, _globalpal
	fstpl	_gxyaspect
	movss	%xmm5, _gshang
	movss	%xmm6, _gctang
	movss	%xmm7, _gstang
	jmp	L63
L314:
	movl	%ecx, -324(%ebp)
	movl	%esi, -320(%ebp)
	jmp	L129
L578:
	movl	-452(%ebp), %eax
	movl	%eax, _r_detailmapping
	movl	-456(%ebp), %eax
	movl	%eax, _r_glowmapping
	movl	_rotatespritematerialbits, %eax
	call	_polymer_unbindmaterial.lto_priv.0
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj.constprop.0
	movl	-460(%ebp), %eax
	movl	%eax, _pr_normalmapping
	jmp	L157
L563:
	movl	-376(%ebp), %eax
	movl	%esi, %edx
	movl	$0, _pr_normalmapping
	movl	%eax, (%esp)
	movl	-464(%ebp), %ecx
	movl	-372(%ebp), %eax
	call	_polymer_inb4rotatesprite
	movl	$0, _r_detailmapping
	movl	$0, _r_glowmapping
	jmp	L126
L579:
	movl	-316(%ebp), %ebx
	movl	%eax, -316(%ebp)
	jmp	L79
L84:
	movss	_pr_hudzadd, %xmm6
	movl	-352(%ebp), %esi
	movss	_pr_hudxadd, %xmm3
	movzwl	_globalang, %eax
	movss	_pr_hudyadd, %xmm0
	movss	%xmm6, -316(%ebp)
	andl	$10, %esi
	testb	$2, 14(%ebx)
	jne	L87
L85:
	movss	LC8, %xmm6
	xorps	%xmm2, %xmm2
	xorps	%xmm1, %xmm1
	cvtsi2ssl	-380(%ebp), %xmm2
	cvtsi2ssl	-364(%ebp), %xmm1
	mulss	%xmm6, %xmm2
	mulss	%xmm6, %xmm1
	testb	$16, -352(%ebp)
	je	L88
	movl	-372(%ebp), %edx
	movzwl	_tilesiz(,%edx,4), %eax
	leal	(%edx,%edx,4), %edx
	movsbw	_picanm+1(%edx), %cx
	movsbw	_picanm+2(%edx), %dx
	movw	%ax, -360(%ebp)
	sarw	%ax
	addl	%eax, %ecx
	movl	-372(%ebp), %eax
	movzwl	_tilesiz+2(,%eax,4), %eax
	sarw	%ax
	addl	%edx, %eax
	cmpl	$8, %esi
	je	L308
	xorps	%xmm4, %xmm4
	cvtsi2ssl	_xyaspect, %xmm4
	mulss	%xmm6, %xmm4
	movss	-344(%ebp), %xmm6
	mulss	%xmm4, %xmm6
	movaps	%xmm4, %xmm7
	mulss	%xmm5, %xmm7
L89:
	cwtl
	xorps	%xmm4, %xmm4
	cvtsi2ssl	%eax, %xmm4
	movswl	%cx, %eax
	movss	%xmm4, -360(%ebp)
	xorps	%xmm4, %xmm4
	cvtsi2ssl	%eax, %xmm4
	xorps	LC9, %xmm4
	mulss	-360(%ebp), %xmm7
	mulss	%xmm4, %xmm6
	mulss	%xmm5, %xmm4
	movss	-344(%ebp), %xmm5
	mulss	-360(%ebp), %xmm5
	addss	%xmm7, %xmm6
	subss	%xmm5, %xmm4
	addss	%xmm6, %xmm2
	addss	%xmm4, %xmm1
L88:
	testb	$2, -352(%ebp)
	jne	L90
	movl	_xdim, %eax
	xorps	%xmm4, %xmm4
	movss	-356(%ebp), %xmm5
	sall	$15, %eax
	cvtsi2ssl	%eax, %xmm4
	movl	_ydim, %eax
	sall	$15, %eax
	divss	%xmm4, %xmm2
	subss	%xmm5, %xmm2
	addss	%xmm2, %xmm3
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	divss	%xmm2, %xmm1
	subss	%xmm5, %xmm1
	addss	%xmm1, %xmm0
L91:
	movl	-436(%ebp), %edx
	movzwl	_globalang, %eax
	testl	%edx, %edx
	je	L86
L87:
	addw	_pr_hudangadd, %ax
	jmp	L92
L101:
	cmpl	$1, %eax
	je	L103
	movl	$2929, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$2929, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L103:
	movl	_numframes, %eax
	cmpl	%eax, __ZZ28polymost_dorotatespritemodeliiissacihhiE10onumframes
	je	L102
	movl	%eax, __ZZ28polymost_dorotatespritemodeliiissacihhiE10onumframes
	movl	$256, (%esp)
	call	*_glad_glClear
	pushl	%edi
	jmp	L102
L94:
	mulss	LC16, %xmm2
	movl	$8224, %eax
	movss	%xmm4, -364(%ebp)
	movw	%ax, -132(%ebp)
	movss	%xmm0, -360(%ebp)
	movss	%xmm1, -372(%ebp)
	movss	%xmm3, -344(%ebp)
	movss	%xmm2, (%esp)
	call	_lrintf
	movss	-372(%ebp), %xmm1
	movss	-344(%ebp), %xmm3
	mulss	-316(%ebp), %xmm1
	addl	_globalposx, %eax
	mulss	-364(%ebp), %xmm3
	movl	%eax, -152(%ebp)
	addss	%xmm3, %xmm1
	mulss	LC16, %xmm1
	movss	%xmm1, (%esp)
	call	_lrintf
	movss	-360(%ebp), %xmm0
	mulss	LC17, %xmm0
	addl	_globalposy, %eax
	movl	%eax, -148(%ebp)
	movss	%xmm0, (%esp)
	call	_lrintf
	addl	_globalposz, %eax
	movl	%eax, -144(%ebp)
	jmp	L95
L90:
	mulss	LC10, %xmm2
	movss	-356(%ebp), %xmm5
	mulss	LC11, %xmm1
	subss	%xmm5, %xmm2
	subss	%xmm5, %xmm1
	addss	%xmm2, %xmm3
	addss	%xmm1, %xmm0
	jmp	L91
L308:
	movss	-344(%ebp), %xmm6
	movaps	%xmm5, %xmm7
	jmp	L89
L580:
	movl	_windowxy2+4, %edi
	movl	_windowxy1, %esi
	movl	_windowxy2, %ecx
	leal	1(%edi), %edx
	subl	_windowxy1+4, %edi
	subl	%edx, %eax
	leal	1(%edi), %edx
	subl	%esi, %ecx
	movl	%edx, (%esp)
	addl	$1, %ecx
	movl	%eax, %edx
	movl	%esi, %eax
	call	__Z19buildgl_setViewportiiii
	cmpl	$3, _rendmode
	jg	L98
	movl	$5889, (%esp)
	leal	-88(%ebp), %esi
	call	*_glad_glMatrixMode
	movl	%esi, %edi
	movl	$16, %ecx
	pushl	%eax
	xorl	%eax, %eax
	rep stosl
	movl	_pr_hudfov, %eax
	cmpl	$0, _pr_overridehud
	jne	L305
	movswl	16(%ebx), %eax
L305:
	cmpl	$-1, %eax
	je	L309
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	LC18, %xmm0
	mulss	LC19, %xmm0
	movss	%xmm0, (%esp)
	call	_tanf
	movss	-356(%ebp), %xmm0
	fstps	-316(%ebp)
	divss	-316(%ebp), %xmm0
L100:
	movss	_fydimen, %xmm1
	movss	-356(%ebp), %xmm6
	movaps	%xmm1, %xmm2
	movss	%xmm6, -80(%ebp)
	mulss	%xmm0, %xmm2
	movss	%xmm6, -64(%ebp)
	mulss	_fxdimen, %xmm0
	movss	%xmm6, -48(%ebp)
	movss	%xmm1, -44(%ebp)
	movss	%xmm2, -88(%ebp)
	movss	%xmm0, -68(%ebp)
	movss	LC1, %xmm0
	jmp	L303
L582:
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L113
	movss	-356(%ebp), %xmm6
	ucomiss	__ZL19polymost1FogEnabled.lto_priv.0, %xmm6
	jp	L356
	je	L113
L356:
	movss	-356(%ebp), %xmm6
	movss	%xmm6, __ZL19polymost1FogEnabled.lto_priv.0
	movss	%xmm6, 4(%esp)
	movl	__ZL22polymost1FogEnabledLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	pushl	%eax
	pushl	%eax
	jmp	L113
L309:
	movss	-356(%ebp), %xmm0
	jmp	L100
L581:
	movl	%esi, %eax
	call	_polymost_mddraw
	jmp	L107
L341:
	movl	%eax, -348(%ebp)
	jmp	L266
	.cfi_endproc
LFE2:
	.p2align 4
	.globl	_do_insertsprite_at_headofsect
	.def	_do_insertsprite_at_headofsect;	.scl	2;	.type	32;	.endef
_do_insertsprite_at_headofsect:
LFB28:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movswl	%dx, %esi
	cwtl
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movswl	_headspritesect(%esi,%esi), %edx
	movl	%eax, %ebx
	movl	%esi, %ecx
	movw	$-1, _prevspritesect(%eax,%eax)
	movw	%dx, _nextspritesect(%eax,%eax)
	testw	%dx, %dx
	js	L584
	movw	%ax, _prevspritesect(%edx,%edx)
L584:
	imull	$44, %eax, %eax
	movw	%bx, _headspritesect(%esi,%esi)
	movl	$-1171354717, %esi
	movl	_sprite, %ebx
	addl	%eax, %ebx
	addl	$24, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 24(%ebx)
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
	.globl	_do_deletespritesect
	.def	_do_deletespritesect;	.scl	2;	.type	32;	.endef
_do_deletespritesect:
LFB29:
	.cfi_startproc
	cwtl
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	imull	$44, %eax, %edx
	addl	_sprite, %edx
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%eax, %ecx
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movswl	_prevspritesect(%eax,%eax), %esi
	movswl	24(%edx), %edi
	movswl	_nextspritesect(%eax,%eax), %edx
	movl	%esi, %ebx
	movl	%edx, %eax
	cmpw	%cx, _headspritesect(%edi,%edi)
	jne	L587
	movw	%dx, _headspritesect(%edi,%edi)
L587:
	testl	%esi, %esi
	js	L588
	movw	%ax, _nextspritesect(%esi,%esi)
L588:
	testl	%edx, %edx
	js	L586
	movw	%bx, _prevspritesect(%edx,%edx)
L586:
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
LFE29:
	.p2align 4
	.globl	_do_insertsprite_at_headofstat
	.def	_do_insertsprite_at_headofstat;	.scl	2;	.type	32;	.endef
_do_insertsprite_at_headofstat:
LFB30:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movswl	%dx, %esi
	cwtl
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movswl	_headspritestat(%esi,%esi), %edx
	movl	%eax, %ebx
	movl	%esi, %ecx
	movw	$-1, _prevspritestat(%eax,%eax)
	movw	%dx, _nextspritestat(%eax,%eax)
	testw	%dx, %dx
	js	L592
	movw	%ax, _prevspritestat(%edx,%edx)
L592:
	imull	$44, %eax, %eax
	movw	%bx, _headspritestat(%esi,%esi)
	movl	$-1171354717, %esi
	movl	_sprite, %ebx
	addl	%eax, %ebx
	addl	$26, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 26(%ebx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE30:
	.p2align 4
	.globl	_do_deletespritestat
	.def	_do_deletespritestat;	.scl	2;	.type	32;	.endef
_do_deletespritestat:
LFB31:
	.cfi_startproc
	cwtl
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	imull	$44, %eax, %edx
	addl	_sprite, %edx
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%eax, %ecx
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movswl	_prevspritestat(%eax,%eax), %esi
	movswl	26(%edx), %edi
	movswl	_nextspritestat(%eax,%eax), %edx
	movl	%esi, %ebx
	movl	%edx, %eax
	cmpw	%cx, _headspritestat(%edi,%edi)
	jne	L595
	movw	%dx, _headspritestat(%edi,%edi)
L595:
	testl	%esi, %esi
	js	L596
	movw	%ax, _nextspritestat(%esi,%esi)
L596:
	testl	%edx, %edx
	js	L594
	movw	%bx, _prevspritestat(%edx,%edx)
L594:
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
LFE31:
	.p2align 4
	.globl	_insertsprite
	.def	_insertsprite;	.scl	2;	.type	32;	.endef
_insertsprite:
LFB32:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	%esi, 4(%esp)
	cmpw	$1023, %dx
	.cfi_offset 6, -12
	jg	L602
	movl	%ebx, (%esp)
	.cfi_offset 3, -16
	movswl	_headspritestat+2048, %ebx
	cmpw	$-1, %bx
	je	L610
	movl	%edi, 8(%esp)
	.cfi_offset 7, -8
	movl	%eax, %edi
	movswl	_nextspritestat(%ebx,%ebx), %eax
	movl	%ebx, %esi
	movw	%ax, _headspritestat+2048
	testw	%ax, %ax
	js	L603
	movl	$-1, %ecx
	movw	%cx, _prevspritestat(%eax,%eax)
L604:
	movswl	%dx, %edx
	movl	%ebx, %eax
	call	_do_insertsprite_at_headofstat
	testl	%ebx, %ebx
	jns	L612
	movl	(%esp), %ebx
	.cfi_restore 3
	movl	8(%esp), %edi
	.cfi_restore 7
L599:
	movl	%esi, %eax
	movl	4(%esp), %esi
	addl	$12, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L612:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movl	%ebx, %eax
	movswl	%di, %edx
	call	_do_insertsprite_at_headofsect
	movl	%esi, %eax
	movl	(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	8(%esp), %edi
	.cfi_restore 7
	addl	$1, _Numsprites
	movl	4(%esp), %esi
	addl	$12, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L603:
	.cfi_restore_state
	cmpl	$2147483647, _enginecompatibilitymode
	jne	L604
	movl	$-1, %eax
	movw	%ax, _tailspritefree
	jmp	L604
L610:
	.cfi_restore 7
	movl	(%esp), %ebx
	.cfi_restore 3
L602:
	movl	$-1, %esi
	jmp	L599
	.cfi_endproc
LFE32:
	.p2align 4
	.globl	_deletesprite.isra.0
	.def	_deletesprite.isra.0;	.scl	2;	.type	32;	.endef
_deletesprite.isra.0:
LFB35:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	_sprite, %edx
	movl	%ebx, (%esp)
	.cfi_offset 3, -20
	movswl	%ax, %ebx
	movl	%ebp, 12(%esp)
	.cfi_offset 5, -8
	imull	$44, %ebx, %ebp
	cmpw	$1024, 26(%edx,%ebp)
	je	L613
	movl	%esi, 4(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	%ebx, %eax
	movl	%edi, 8(%esp)
	.cfi_offset 7, -12
	call	_do_deletespritestat
	movl	%ebx, %eax
	call	_do_deletespritesect
	movl	_sprite, %edi
	leal	24(%ebp), %eax
	leal	(%edi,%ebp), %ecx
	movl	$-1171354717, %ebp
	mull	%ebp
	movl	$4096, %ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%bp, 24(%ecx)
	cmpl	$2147483647, _enginecompatibilitymode
	jne	L620
	movswl	_tailspritefree, %eax
	movl	$-1, %edx
	movw	%dx, _nextspritestat(%ebx,%ebx)
	movw	%ax, _prevspritestat(%ebx,%ebx)
	testw	%ax, %ax
	js	L617
	movw	%si, _nextspritestat(%eax,%eax)
L618:
	leal	26(%ecx), %edx
	movl	$-1171354717, %eax
	movw	%si, _tailspritefree
	subl	%edi, %edx
	mull	%edx
	movl	$1024, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 26(%ecx)
L616:
	subl	$1, _Numsprites
	movl	4(%esp), %esi
	.cfi_restore 6
	movl	8(%esp), %edi
	.cfi_restore 7
L613:
	movl	(%esp), %ebx
	movl	12(%esp), %ebp
	addl	$16, %esp
	.cfi_restore 3
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L617:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movw	%si, _headspritestat+2048
	jmp	L618
	.p2align 4,,10
	.p2align 3
L620:
	movl	$1024, %edx
	movl	%ebx, %eax
	call	_do_insertsprite_at_headofstat
	jmp	L616
	.cfi_endproc
LFE35:
	.p2align 4
	.globl	_lintersect
	.def	_lintersect;	.scl	2;	.type	32;	.endef
_lintersect:
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
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	64(%esp), %edi
	movl	68(%esp), %ebp
	movl	%eax, 32(%esp)
	movl	%edx, %eax
	movl	76(%esp), %edx
	movl	88(%esp), %ebx
	movl	%eax, 36(%esp)
	subl	%esi, %edi
	subl	%eax, %ebp
	movl	%ecx, 40(%esp)
	movl	80(%esp), %ecx
	movl	%edi, 16(%esp)
	movl	%eax, %edi
	movl	84(%esp), %eax
	subl	%ecx, %ebx
	subl	%edi, %ecx
	subl	%edx, %eax
	subl	%esi, %edx
	movl	16(%esp), %esi
	movl	%ecx, 28(%esp)
	imull	16(%esp), %ecx
	imull	%ebx, %esi
	movl	%esi, 20(%esp)
	movl	%ebp, %esi
	imull	%eax, %esi
	movl	%esi, %edi
	movl	%ebp, %esi
	imull	%edx, %esi
	movl	%esi, 24(%esp)
	movl	24(%esp), %esi
	subl	%ecx, %esi
	movl	%edi, %ecx
	movl	20(%esp), %edi
	subl	%ecx, %edi
	movl	%edi, %ecx
	jne	L622
	testl	%esi, %esi
	jne	L621
	cmpl	$2147483647, _enginecompatibilitymode
	jne	L630
	movl	16(%esp), %esi
	movl	%ebp, %ecx
	imull	%ebp, %ebx
	imull	%ebp, %ecx
	movl	%esi, %edi
	imull	%esi, %esi
	imull	%edi, %edx
	imull	%edi, %eax
	addl	%ecx, %esi
	movl	28(%esp), %ecx
	imull	%ebp, %ecx
	addl	%edx, %ecx
	addl	%ecx, %eax
	addl	%ebx, %eax
	testl	%ecx, %ecx
	js	L634
	cmpl	%esi, %ecx
	jle	L635
	cmpl	%esi, %eax
	jle	L636
	.p2align 4
	.p2align 3
L630:
	xorl	%ecx, %ecx
L621:
	addl	$44, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
L622:
	.cfi_restore_state
	imull	%ebx, %edx
	movl	%edi, %ebx
	imull	28(%esp), %eax
	subl	%eax, %edx
	movl	%edi, %eax
	xorl	%edx, %ebx
	xorl	%esi, %eax
	orl	%ebx, %eax
	js	L630
	movl	%edx, %eax
/APP
 # 8966 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	%edi, %eax
/APP
 # 8966 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, %ebx
	jg	L630
	movl	%esi, %eax
/APP
 # 8967 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	%edi, %eax
/APP
 # 8967 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, %esi
	jg	L630
	movl	%edx, %eax
	sarl	$31, %ecx
	movl	%edi, 8(%esp)
	cltd
	movl	%ecx, 12(%esp)
	shldl	$24, %eax, %edx
	sall	$24, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
L633:
	call	_tabledivide64.lto_priv.9
	movl	%eax, %ecx
	movl	16(%esp), %eax
	movl	%ecx, %edx
/APP
 # 8947 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	32(%esp), %edi
	movl	%ecx, %edx
	addl	%edi, %eax
	movl	92(%esp), %edi
	movl	%eax, (%edi)
	movl	%ebp, %eax
/APP
 # 8948 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	36(%esp), %edi
	movl	%ecx, %edx
	addl	%edi, %eax
	movl	96(%esp), %edi
	movl	%eax, (%edi)
	movl	72(%esp), %eax
	movl	40(%esp), %edi
	subl	%edi, %eax
/APP
 # 8949 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%edi, %eax
	movl	100(%esp), %edi
	movl	$1, %ecx
	movl	%eax, (%edi)
	addl	$44, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
L634:
	.cfi_restore_state
	testl	%eax, %eax
	js	L630
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
L627:
	movl	%esi, 8(%esp)
	sarl	$31, %esi
	movl	%esi, 12(%esp)
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	jmp	L633
	.p2align 4,,10
	.p2align 3
L636:
	cltd
	shldl	$24, %eax, %edx
	sall	$24, %eax
	movl	%eax, %ecx
	movl	%edx, %ebx
	jmp	L627
	.p2align 4,,10
	.p2align 3
L635:
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	%ecx, %ebx
	sarl	$31, %ebx
	shldl	$24, %ecx, %ebx
	sall	$24, %ecx
	jmp	L627
	.cfi_endproc
LFE36:
	.p2align 4
	.globl	_rintersect
	.def	_rintersect;	.scl	2;	.type	32;	.endef
_rintersect:
LFB37:
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
	subl	$56, %esp
	.cfi_def_cfa_offset 76
	movl	88(%esp), %edi
	movl	88(%esp), %esi
	movl	%eax, 32(%esp)
	movl	92(%esp), %eax
	subl	96(%esp), %esi
	movl	%edx, 24(%esp)
	subl	%ebx, %edi
	movl	%ecx, 36(%esp)
	movl	%eax, %ebp
	subl	24(%esp), %eax
	subl	100(%esp), %ebp
	movl	%edi, 28(%esp)
	movl	%eax, %edi
	cmpl	$2147483647, _enginecompatibilitymode
	jne	L654
	movl	76(%esp), %eax
	movl	%eax, 40(%esp)
	sarl	$31, %eax
	movl	%eax, 44(%esp)
	movl	80(%esp), %eax
	movl	%eax, 48(%esp)
	sarl	$31, %eax
	movl	%eax, 52(%esp)
	movl	%ebp, %eax
	imull	76(%esp)
	movl	%eax, %ecx
	movl	%edx, %ebx
	movl	%esi, %eax
	imull	80(%esp)
	subl	%eax, %ecx
	sbbl	%edx, %ebx
	movl	%ecx, %eax
	movl	%ecx, 16(%esp)
	movl	%ebx, 20(%esp)
	orl	20(%esp), %eax
	je	L642
	movl	28(%esp), %eax
	imull	%ebp
	movl	%eax, %ecx
	movl	%esi, %eax
	movl	%edx, %ebx
	imull	%edi
	subl	%eax, %ecx
	movl	%edi, %eax
	sbbl	%edx, %ebx
	imull	76(%esp)
	movl	%edx, %edi
	movl	%eax, %esi
	movl	28(%esp), %eax
	imull	80(%esp)
	movl	%edi, %ebp
	movl	%esi, %edi
	subl	%eax, %edi
	sbbl	%edx, %ebp
	xorl	%eax, %eax
	cmpl	16(%esp), %eax
	sbbl	20(%esp), %eax
	jge	L644
	movl	%ebx, %edx
	orl	%ebp, %edx
	js	L642
	movl	16(%esp), %eax
	movl	20(%esp), %edx
	movl	%ebp, %esi
	cmpl	%eax, %edi
	sbbl	%edx, %esi
	jge	L642
L646:
	movl	16(%esp), %eax
	movl	20(%esp), %edx
	shldl	$16, %ecx, %ebx
	sall	$16, %ecx
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	call	_tabledivide64.lto_priv.12
	movl	44(%esp), %esi
	movl	%edx, %ebx
	movl	76(%esp), %edx
	movl	%eax, %ecx
	imull	%eax, %esi
	movl	%ecx, %eax
	imull	%ebx, %edx
	addl	%edx, %esi
	mull	76(%esp)
	addl	%esi, %edx
	movl	32(%esp), %esi
	shrdl	$16, %edx, %eax
	movl	80(%esp), %edx
	addl	%esi, %eax
	movl	104(%esp), %esi
	imull	%ebx, %edx
	movl	%eax, (%esi)
	movl	52(%esp), %esi
	movl	%ecx, %eax
	imull	84(%esp), %ebx
	imull	%ecx, %esi
	addl	%edx, %esi
	mull	80(%esp)
	addl	%esi, %edx
	movl	24(%esp), %esi
	shrdl	$16, %edx, %eax
	movl	108(%esp), %edx
	addl	%esi, %eax
	movl	%eax, (%edx)
	movl	84(%esp), %eax
	cltd
	movl	%ecx, %eax
	movl	%edx, %esi
	mull	84(%esp)
	imull	%ecx, %esi
	movl	112(%esp), %ecx
	addl	%esi, %ebx
	addl	%ebx, %edx
	movl	36(%esp), %ebx
	shrdl	$16, %edx, %eax
	movl	20(%esp), %edx
	addl	%ebx, %eax
	movl	%eax, (%ecx)
	movl	16(%esp), %eax
	movl	%edx, 12(%esp)
	movl	%ebp, %edx
	movl	%eax, 8(%esp)
	movl	%edi, %eax
	shldl	$16, %edi, %edx
	sall	$16, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_tabledivide64.lto_priv.12
L637:
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
L644:
	.cfi_restore_state
	movl	%ebx, %edx
	sarl	$31, %edx
	cmpl	%ecx, %edx
	sbbl	%ebx, %edx
	movl	%edx, %esi
	movl	%ebp, %edx
	sarl	$31, %edx
	shrl	$31, %esi
	movl	%edx, %eax
	cmpl	%edi, %eax
	sbbl	%ebp, %edx
	movl	%edx, %eax
	movl	%esi, %edx
	shrl	$31, %eax
	orb	%dl, %al
	jne	L642
	movl	16(%esp), %eax
	movl	20(%esp), %edx
	cmpl	%edi, %eax
	movl	%edx, %eax
	sbbl	%ebp, %eax
	jl	L646
L642:
	movl	$-1, %eax
	jmp	L637
	.p2align 4,,10
	.p2align 3
L654:
	movl	76(%esp), %ebx
	movl	80(%esp), %eax
	imull	%ebp, %ebx
	imull	%esi, %eax
	subl	%eax, %ebx
	je	L642
	movl	28(%esp), %eax
	imull	%edi, %esi
	imull	76(%esp), %edi
	movl	%eax, %ecx
	imull	80(%esp), %eax
	imull	%ebp, %ecx
	subl	%esi, %ecx
	movl	%edi, %esi
	subl	%eax, %esi
	testl	%ebx, %ebx
	jle	L641
	movl	%ecx, %eax
	orl	%esi, %eax
	js	L642
	cmpl	%esi, %ebx
	jle	L642
L643:
	movl	%ebx, %eax
	movl	%ebx, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%ecx, %eax
	cltd
	sall	$16, %eax
	shldl	$16, %ecx, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, %ecx
	movl	76(%esp), %eax
	movl	%ecx, %edx
/APP
 # 9018 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	32(%esp), %edi
	movl	%ecx, %edx
	addl	%edi, %eax
	movl	104(%esp), %edi
	movl	%eax, (%edi)
	movl	80(%esp), %eax
/APP
 # 9019 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	24(%esp), %edi
	movl	%ecx, %edx
	addl	%edi, %eax
	movl	108(%esp), %edi
	movl	%eax, (%edi)
	movl	84(%esp), %eax
/APP
 # 9020 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	36(%esp), %edi
	movl	112(%esp), %ecx
	addl	%edi, %eax
	movl	%esi, %edi
	sarl	$31, %edi
	movl	%eax, (%ecx)
	shldl	$16, %esi, %edi
	movl	%ebx, 8(%esp)
	sall	$16, %esi
	sarl	$31, %ebx
	movl	%esi, (%esp)
	movl	%ebx, 12(%esp)
	movl	%edi, 4(%esp)
	call	_tabledivide64.lto_priv.9
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
L641:
	.cfi_restore_state
	testl	%ecx, %ecx
	setg	%dl
	testl	%esi, %esi
	setg	%al
	orb	%dl, %al
	jne	L642
	cmpl	%esi, %ebx
	jl	L643
	jmp	L642
	.cfi_endproc
LFE37:
	.p2align 4
	.globl	_tileSetupSky
	.def	_tileSetupSky;	.scl	2;	.type	32;	.endef
_tileSetupSky:
LFB39:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, %edx
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -16
	movl	_pskynummultis, %ebx
	testl	%ebx, %ebx
	jle	L656
	movl	_multipskytile, %ecx
	xorl	%eax, %eax
	jmp	L659
	.p2align 4
	.p2align 4,,10
	.p2align 3
L657:
	addl	$1, %eax
	cmpl	%ebx, %eax
	je	L656
L659:
	cmpl	%edx, (%ecx,%eax,4)
	jne	L657
	movl	12(%esp), %ebx
	sall	$5, %eax
	addl	_multipsky, %eax
	addl	$24, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L656:
	.cfi_restore_state
	movl	%esi, 16(%esp)
	movl	_multipsky, %eax
	.cfi_offset 6, -12
	leal	1(%ebx), %esi
	movl	%esi, _pskynummultis
	sall	$5, %esi
	movl	_g_sm_heap, %ecx
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	movl	%edi, 20(%esp)
	.cfi_offset 7, -8
	movl	%edx, %edi
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	testl	%eax, %eax
	jne	L664
	testl	%esi, %esi
	jne	L660
L664:
	movl	%eax, _multipsky
	movl	_pskynummultis, %eax
	movl	_g_sm_heap, %ecx
	leal	0(,%eax,4), %edx
	movl	_multipskytile, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	testl	%eax, %eax
	jne	L662
	movl	8(%esp), %edx
	testl	%edx, %edx
	jne	L668
L662:
	movl	%eax, _multipskytile
	movl	_multipsky, %eax
	leal	-32(%eax,%esi), %eax
	movl	$0, (%eax)
	movl	_multipskytile, %edx
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	movl	$0, 20(%eax)
	movl	$0, 24(%eax)
	movl	%edi, (%edx,%ebx,4)
	movl	$65536, 28(%eax)
	movl	16(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	20(%esp), %edi
	.cfi_restore 7
	movl	12(%esp), %ebx
	addl	$24, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
L660:
	.cfi_restore_state
	movl	%esi, %eax
	call	__Z13handle_memerri
L668:
	movl	%edx, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE39:
	.section .rdata,"dr"
LC28:
	.ascii "\0"
LC29:
	.ascii "95\0"
LC30:
	.ascii "98\0"
LC31:
	.ascii "ME\0"
LC32:
	.ascii "2000\0"
LC33:
	.ascii "XP\0"
LC34:
	.ascii "XP x64\0"
LC35:
	.ascii "Server 2003\0"
LC36:
	.ascii "10\0"
LC37:
	.ascii "Server\0"
LC38:
	.ascii "setrendermode\0"
	.align 4
LC39:
	.ascii "setrendermode <number>: sets the engine's rendering mode.\12Mode numbers are:\12   0 - Classic Build software\12   3 - Polygonal OpenGL\12   4 - Great justice renderer (Polymer)\12\0"
LC40:
	.ascii "glinfo\0"
	.align 4
LC41:
	.ascii "glinfo: shows OpenGL information about the current OpenGL mode\0"
LC42:
	.ascii "Windows %s\0"
LC43:
	.ascii "OS: %s (build %lu.%lu.%lu)\0"
LC44:
	.ascii "source/build/src/winbits.cpp\0"
LC45:
	.ascii "powrprof.dll\0"
LC46:
	.ascii "PowerGetActiveScheme\0"
LC47:
	.ascii "PowerSetActiveScheme\0"
	.align 4
LC48:
	.ascii "PowerGetActiveScheme or PowerSetActiveScheme symbols missing from powrprof.dll!\0"
LC49:
	.ascii "avrt.dll\0"
LC50:
	.ascii "AvSetMmThreadCharacteristicsA\0"
LC51:
	.ascii "AvSetMmThreadPriority\0"
	.align 4
LC52:
	.ascii "AvRevertMmThreadCharacteristics\0"
	.align 4
LC53:
	.ascii "AvSetMmThreadCharacteristicsA, AvSetMmThreadPriority or AvRevertMmThreadCharacteristics symbols missing from avrt.dll!\0"
LC54:
	.ascii "ntdll.dll\0"
LC55:
	.ascii "NtQueryTimerResolution\0"
LC56:
	.ascii "NtSetTimerResolution\0"
	.align 4
LC57:
	.ascii "NtQueryTimerResolution or NtSetTimerResolution symbols missing from ntdll.dll!\0"
LC58:
	.ascii "CPU: %s\0"
LC59:
	.ascii "source/build/src/cpuid.cpp\0"
	.align 4
LC60:
	.ascii "SDL initialization failed: %s.\0"
LC61:
	.ascii "source/build/src/sdlayer.cpp\0"
	.align 4
LC62:
	.ascii "Non-interactive mode enabled; this is probably not what you want.\0"
LC63:
	.ascii "Video output disabled.\0"
	.align 4
LC64:
	.ascii "Failed loading OpenGL driver: %s; all OpenGL modes are unavailable.\0"
LC65:
	.ascii "enginePreInit\0"
LC66:
	.ascii "source/build/src/engine.cpp\0"
LC67:
	.ascii "Failure in initsystem()!\0"
	.align 4
LC68:
	.ascii "fatal_exit(%s) at %s:%d in %s()\12\0"
	.align 4
LC69:
	.ascii "VirtualProtect() error! Crashing in 3... 2... 1...\0"
	.align 4
LC70:
	.ascii "source/build/src/baselayer.cpp\0"
LC71:
	.ascii "ABORT: \0"
	.text
	.p2align 4
	.globl	_enginePreInit
	.def	_enginePreInit;	.scl	2;	.type	32;	.endef
_enginePreInit:
LFB40:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	$__ZZ14baselayer_initE12cvars_engine, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$__ZZ14baselayer_initE12cvars_engine+384, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	$__ZL25osdcmd_cvar_set_baselayerPK13osdfuncparm_t.lto_priv.0, %ebx
	subl	$132, %esp
	.cfi_def_cfa_offset 152
	.p2align 4
	.p2align 3
L671:
	testb	$2, 13(%edi)
	movl	$__Z15osdcmd_cvar_setPK13osdfuncparm_t, %edx
	movl	%edi, %eax
	cmovne	%ebx, %edx
	addl	$24, %edi
	call	__Z16OSD_RegisterCvarP13osdcvardata_tPFiPK13osdfuncparm_tE
	cmpl	%edi, %esi
	jne	L671
	movl	$__ZL19osdcmd_displayindexPK13osdfuncparm_t.lto_priv.0, %edx
	movl	$__ZZ14baselayer_initE12displayindex, %eax
	call	__Z16OSD_RegisterCvarP13osdcvardata_tPFiPK13osdfuncparm_tE
	movl	_osd, %edi
	testl	%edi, %edi
	je	L797
L672:
	movl	$LC38, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L798
L673:
	movl	_osd, %esi
	movl	$LC39, 8(%eax)
	movl	$__ZL21osdfunc_setrendermodePK13osdfuncparm_t.lto_priv.0, 12(%eax)
	testl	%esi, %esi
	je	L799
L674:
	movl	$LC40, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L800
L675:
	movl	$__ZZ21polymost_initosdfuncsvE14cvars_polymost, %edi
	movl	$__ZZ21polymost_initosdfuncsvE14cvars_polymost+1752, %esi
	movl	$__ZL24osdcmd_cvar_set_polymostPK13osdfuncparm_t.lto_priv.0, %ebx
	movl	$LC41, 8(%eax)
	movl	$_osdcmd_glinfo, 12(%eax)
	.p2align 4
	.p2align 3
L677:
	testb	$2, 13(%edi)
	movl	$__Z15osdcmd_cvar_setPK13osdfuncparm_t, %edx
	movl	%edi, %eax
	cmovne	%ebx, %edx
	addl	$24, %edi
	call	__Z16OSD_RegisterCvarP13osdcvardata_tPFiPK13osdfuncparm_tE
	cmpl	%edi, %esi
	jne	L677
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L679:
	cmpb	$0, _g_keyRemapTable(%eax)
	jne	L678
	movb	%al, _g_keyRemapTable(%eax)
L678:
	addl	$1, %eax
	cmpl	$256, %eax
	jne	L679
	movl	$_divtable64, 72(%esp)
	movl	$63, %ebp
	movl	$2, 88(%esp)
	movl	$0, 92(%esp)
	movl	$1, 76(%esp)
	movl	$0, 80(%esp)
	movl	$31, 52(%esp)
	movl	$1, 32(%esp)
	movl	$0, 84(%esp)
	jmp	L697
	.p2align 4,,10
	.p2align 3
L801:
	movl	72(%esp), %esi
	movzbl	56(%esp), %eax
	movl	$0, 9(%esi)
	movl	$0, 13(%esi)
	movb	%al, 17(%esi)
	testl	%edi, %edi
	jne	L682
L681:
	movzbl	44(%esp), %ecx
	xorl	%esi, %esi
	xorl	%eax, %eax
L691:
	movl	84(%esp), %ebx
	addl	$1, 32(%esp)
	movl	%eax, _bfdivtable32+5(%ebx)
	movzbl	51(%esp), %eax
	movl	%esi, _divtable32+5(%ebx)
	movb	%cl, _divtable32+9(%ebx)
	movb	%al, _bfdivtable32+9(%ebx)
	cmpl	$16384, 32(%esp)
	je	L694
	leal	5(%ebx), %esi
	movl	88(%esp), %ebx
	addl	$1, 76(%esp)
	movl	%esi, 84(%esp)
	movl	92(%esp), %esi
	movl	%ebx, %eax
	adcl	$0, 80(%esp)
	movl	%esi, %edx
	addl	$9, 72(%esp)
	negl	%eax
	adcl	$0, %edx
	negl	%edx
	cmovs	%esi, %edx
	cmovs	%ebx, %eax
	testl	%edx, %edx
	je	L695
	bsrl	%edx, %eax
	xorl	$31, %eax
L696:
	movl	32(%esp), %edi
	movl	%eax, %ebp
	movl	%edi, %eax
	negl	%eax
	cmovs	%edi, %eax
	bsrl	%eax, %eax
	xorl	$31, %eax
	addl	$1, 88(%esp)
	adcl	$0, 92(%esp)
	movl	%eax, 52(%esp)
L697:
	movl	76(%esp), %ecx
	movl	80(%esp), %ebx
	movl	$31, %esi
	movl	%ecx, %edx
	movl	%ebx, %eax
	negl	%edx
	adcl	$0, %eax
	negl	%eax
	cmovs	%ebx, %eax
	movl	32(%esp), %ebx
	cmovs	%ecx, %edx
	subl	52(%esp), %esi
	movl	%esi, 44(%esp)
	movl	%eax, 40(%esp)
	movl	$63, %eax
	subl	%ebp, %eax
	movl	%edx, 36(%esp)
	movl	36(%esp), %ecx
	movl	%eax, 56(%esp)
	movl	%ebx, %eax
	negl	%eax
	movl	%eax, %edi
	movl	%esi, %eax
	cmovs	%ebx, %edi
	movb	%al, 51(%esp)
	movl	40(%esp), %ebx
	leal	-1(%edi), %eax
	movl	%edi, 68(%esp)
	movl	%ebx, %edx
	andl	%eax, %edi
	movl	%ecx, %eax
	addl	$-1, %eax
	movl	%edi, 104(%esp)
	adcl	$-1, %edx
	andl	%ecx, %eax
	andl	%ebx, %edx
	orl	%edx, %eax
	je	L801
	movl	$62, %ecx
	xorl	%eax, %eax
	xorl	%edx, %edx
	movl	$1, %esi
	subl	%ebp, %ecx
	testb	$32, %cl
	sete	%al
	setne	%dl
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	sall	%cl, %eax
	sall	%cl, %edx
	movzbl	56(%esp), %ecx
	shldl	%cl, %esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	cmovne	%esi, %edi
	cmovne	%ebx, %esi
	movl	%edx, %ebx
	movl	%esi, 120(%esp)
	movl	36(%esp), %esi
	movl	%edi, 124(%esp)
	movl	40(%esp), %edi
	cmpl	%esi, %eax
	sbbl	%edi, %ebx
	jnc	L802
	movl	36(%esp), %esi
	movl	40(%esp), %edi
	movl	%ebp, %ecx
	xorl	%ebx, %ebx
	movl	$0, 12(%esp)
	shldl	%cl, %esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	cmovne	%esi, %edi
	cmovne	%ebx, %esi
	shldl	%cl, %eax, %edx
	sall	%cl, %eax
	movl	%esi, 60(%esp)
	xorl	%esi, %esi
	testb	$32, %cl
	cmovne	%eax, %edx
	movl	%edi, 64(%esp)
	cmovne	%esi, %eax
	movl	64(%esp), %ebx
	movl	%eax, (%esp)
	movl	%ebx, 8(%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	64(%esp), %edx
	movl	%ebx, 8(%esp)
	movl	%eax, %edi
	movl	%eax, %ecx
	movl	60(%esp), %eax
	movl	$0, 12(%esp)
	imull	%edx, %ecx
	movl	%edi, 116(%esp)
	mull	%edi
	addl	%ecx, %edx
	negl	%eax
	adcl	$0, %edx
	movl	%eax, (%esp)
	xorl	%edi, %edi
	negl	%edx
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	64(%esp), %ebx
	movl	$0, 108(%esp)
	movl	%eax, %esi
	movl	%eax, 96(%esp)
	movl	60(%esp), %eax
	movl	96(%esp), %ecx
	movl	%edx, 100(%esp)
	imull	%ecx, %ebx
	mull	%ecx
	movl	%ebp, %ecx
	addl	%ebx, %edx
	negl	%eax
	movl	116(%esp), %ebx
	adcl	$0, %edx
	xorl	%ebp, %ebp
	negl	%edx
	movl	%ebx, 112(%esp)
	movl	40(%esp), %ebx
	shrdl	%cl, %edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	movl	36(%esp), %ecx
	cmovne	%edx, %eax
	cmovne	%ebp, %edx
	movl	%eax, 60(%esp)
	movl	%esi, %eax
	movl	120(%esp), %esi
	movl	%edx, 64(%esp)
	orl	108(%esp), %eax
	movl	%edi, %edx
	movl	124(%esp), %edi
	orl	112(%esp), %edx
	subl	60(%esp), %ecx
	sbbl	64(%esp), %ebx
	cmpl	%esi, %ecx
	sbbl	%edi, %ebx
	jnc	L686
	addl	$1, %eax
	adcl	$0, %edx
L684:
	movzbl	56(%esp), %ecx
	subl	$1, %ecx
L687:
	movl	72(%esp), %esi
	movl	104(%esp), %edi
	movl	%eax, 9(%esi)
	movl	%edx, 13(%esi)
	movb	%cl, 17(%esi)
	testl	%edi, %edi
	je	L681
L682:
	movl	44(%esp), %ebp
	movl	$1, %esi
	movl	68(%esp), %edi
	xorl	%eax, %eax
	movl	%esi, %ebx
	movl	$30, %ecx
	subl	52(%esp), %ecx
	sall	%cl, %ebx
	movl	%ebp, %ecx
	movl	%ebx, %edx
	sall	%cl, %esi
	leal	-1(%ebp), %ecx
/APP
 # 477 "source/build/include/libdivide.h" 1
	divl %edi
 # 0 "" 2
/NO_APP
	subl	%edx, %edi
	cmpl	%esi, %edi
	jb	L693
	leal	(%edx,%edx), %esi
	cmpl	68(%esp), %esi
	setnb	%cl
	cmpl	%edx, %esi
	setb	%dl
	orl	%edx, %ecx
	movzbl	%cl, %ecx
	leal	(%ecx,%eax,2), %eax
	movzbl	44(%esp), %ecx
	orl	$64, %ecx
L693:
	movl	68(%esp), %edi
	movl	%ebx, %edx
	leal	1(%eax), %esi
	xorl	%eax, %eax
/APP
 # 477 "source/build/include/libdivide.h" 1
	divl %edi
 # 0 "" 2
/NO_APP
	leal	(%edx,%edx), %ebx
	cmpl	%edx, %ebx
	setb	%dl
	cmpl	%edi, %ebx
	setnb	%bl
	orl	%ebx, %edx
	movzbl	44(%esp), %ebx
	movzbl	%dl, %edx
	orl	$64, %ebx
	leal	1(%edx,%eax,2), %eax
	movb	%bl, 51(%esp)
	jmp	L691
	.p2align 4,,10
	.p2align 3
L695:
	bsrl	%eax, %eax
	xorl	$31, %eax
	addl	$32, %eax
	jmp	L696
	.p2align 4,,10
	.p2align 3
L686:
	addl	%eax, %eax
	movl	%eax, %ebx
	movl	60(%esp), %eax
	adcl	%edx, %edx
	movl	%edx, %esi
	xorl	%edx, %edx
	addl	%eax, %eax
	adcl	%edx, %edx
	cmpl	60(%esp), %eax
	movl	%edx, %edi
	sbbl	64(%esp), %edi
	jc	L688
	cmpl	36(%esp), %eax
	movl	%edx, %eax
	sbbl	40(%esp), %eax
	jnc	L688
	movl	%ebx, %eax
	movl	%esi, %edx
	addl	$1, %eax
	adcl	$0, %edx
L685:
	movzbl	56(%esp), %ecx
	orl	$64, %ecx
	jmp	L687
	.p2align 4,,10
	.p2align 3
L688:
	movl	%ebx, %eax
	movl	%esi, %edx
	addl	$2, %eax
	adcl	$0, %edx
	jmp	L685
	.p2align 4,,10
	.p2align 3
L802:
	movl	%esi, %eax
	movl	%edi, %edx
	movl	120(%esp), %esi
	movl	124(%esp), %edi
	addl	$1, %eax
	adcl	$0, %edx
	cmpl	%esi, %eax
	movl	%edx, %eax
	movl	$0, %edx
	sbbl	%edi, %eax
	movl	$0, %eax
	jc	L684
	jmp	L685
L694:
	movl	$__ZL26osdcmd_win_systemtimermodePK13osdfuncparm_t.lto_priv.0, %edx
	movl	$__ZZ19windowsPlatformInitvE14win_timer_cvar, %eax
	movl	$__ZZ19windowsPlatformInitvE9cvars_win, %ebx
	movl	$0, __ZL12m_initprintf
	call	__Z16OSD_RegisterCvarP13osdcvardata_tPFiPK13osdfuncparm_tE
	movl	$__ZZ19windowsPlatformInitvE9cvars_win+72, %esi
L698:
	movl	%ebx, %eax
	movl	$__Z15osdcmd_cvar_setPK13osdfuncparm_t, %edx
	addl	$24, %ebx
	call	__Z16OSD_RegisterCvarP13osdcvardata_tPFiPK13osdfuncparm_tE
	cmpl	%ebx, %esi
	jne	L698
	movl	__ZL3osv.lto_priv.0+16, %eax
	cmpl	$1, %eax
	je	L699
	cmpl	$2, %eax
	je	L700
L704:
	movl	$LC28, %ebx
L701:
	movl	$256, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 148
	subl	$4, %esp
	.cfi_def_cfa_offset 152
	movl	%eax, %esi
	testl	%eax, %eax
	je	L707
	movl	$0, 240(%eax)
	movl	$0, 244(%eax)
	movl	$0, 248(%eax)
	movl	$0, 252(%eax)
	xorl	%eax, %eax
L708:
	movl	$0, (%esi,%eax)
	movl	$0, 4(%esi,%eax)
	movl	$0, 8(%esi,%eax)
	movl	$0, 12(%esi,%eax)
	addl	$16, %eax
	cmpl	$240, %eax
	jb	L708
	movl	%ebx, 8(%esp)
	movl	$LC42, 4(%esp)
	movl	%esi, (%esp)
	call	_sprintf
	cmpl	$2, __ZL3osv.lto_priv.0+16
	jne	L710
	cmpl	$5, __ZL3osv.lto_priv.0+4
	ja	L712
L710:
	movl	%esi, (%esp)
	call	_strlen
	movl	$1163153999, 8(%esi,%eax)
	movl	$1314203680, (%esi,%eax)
	movl	$1347442003, 4(%esi,%eax)
	movl	$2704453, 11(%esi,%eax)
	addl	$14, %eax
L712:
	cmpb	$0, __ZL3osv.lto_priv.0+20
	jne	L803
L713:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L714
	movl	__ZL3osv.lto_priv.0+12, %eax
	movl	%esi, 16(%esp)
	movl	$LC43, 12(%esp)
	movl	%eax, 28(%esp)
	movl	__ZL3osv.lto_priv.0+8, %eax
	movl	$268, 8(%esp)
	movl	%eax, 24(%esp)
	movl	__ZL3osv.lto_priv.0+4, %eax
	movl	$LC44, 4(%esp)
	movl	%eax, 20(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L714:
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 148
	subl	$4, %esp
	.cfi_def_cfa_offset 152
	cmpl	$5, __ZL3osv.lto_priv.0+4
	jbe	L715
	movl	__ZL9hPOWRPROF, %esi
	testl	%esi, %esi
	je	L804
L716:
	movl	__ZL5hAVRT.lto_priv.0, %ecx
	testl	%ecx, %ecx
	je	L805
L715:
	movl	__ZL6hNTDLL.lto_priv.0, %edi
	testl	%edi, %edi
	je	L806
L723:
	xorl	%eax, %eax
/APP
 # 2101 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	cpuid
 # 0 "" 2
/NO_APP
	movb	$0, __ZL19g_cpuVendorIDString+12
	movl	$-2147483648, %eax
	movl	%ebx, __ZL19g_cpuVendorIDString
	movl	%ecx, __ZL19g_cpuVendorIDString+8
	movl	%edx, __ZL19g_cpuVendorIDString+4
	movl	$__ZL19g_cpuVendorIDString, _cpu
/APP
 # 2101 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	cpuid
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	cmpl	$-2147483645, %eax
	ja	L807
L726:
	call	__Z20sdlayer_checkversionv
	testl	%eax, %eax
	jne	L728
	movl	$32, (%esp)
	call	_SDL_WasInit
	cmpl	$32, %eax
	je	L729
	movl	$32, (%esp)
	call	_SDL_InitSubSystem
	testl	%eax, %eax
	jne	L808
L729:
	call	_SDL_StopTextInput
	movl	$2, (%esp)
	call	_SDL_SetThreadPriority
	movl	$120, %eax
	call	__Z9timerIniti.isra.0
	movl	$0, _frameplace
	movl	$0, _lockcount
	cmpb	$0, _novideo
	je	L809
L731:
	leal	128(%esp), %eax
	movl	$64, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$_dep_end, %eax
	subl	$_dep_begin, %eax
	movl	$_dep_begin, (%esp)
	movl	%eax, 4(%esp)
	call	*__imp__VirtualProtect@16
	.cfi_def_cfa_offset 136
	subl	$16, %esp
	.cfi_def_cfa_offset 152
	testl	%eax, %eax
	je	L810
	movl	$__ZL8sector_s, _sector
	xorl	%ebx, %ebx
	movl	$__ZL6wall_s, _wall
	movl	$__ZL9wallext_s, _wallext
	movl	$__ZL8sprite_s, _sprite
	movl	$__ZL9tsprite_s, _tsprite
	movl	$__ZL11spriteext_s, _spriteext
	movl	$__ZL14spritesmooth_s, _spritesmooth
	call	_mmxoverlay
	movl	$1, _upscalefactor
	movl	$0, _validmodecnt
	call	_videoGetModes.constprop.0
	call	_initcrc16
	.p2align 4
	.p2align 3
L738:
	movl	%ebx, %eax
	movl	$8, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L737:
	movl	%eax, %ecx
	andl	$1, %eax
	negl	%eax
	shrl	%ecx
	andl	$-306674912, %eax
	xorl	%ecx, %eax
	subl	$1, %edx
	jne	L737
	movl	%eax, _crc32table(,%ebx,4)
	addl	$1, %ebx
	cmpl	$256, %ebx
	jne	L738
	xorl	%edx, %edx
	.p2align 4
	.p2align 3
L739:
	movl	_crc32table(,%edx,4), %eax
	movzbl	%al, %ecx
	shrl	$8, %eax
	xorl	_crc32table(,%ecx,4), %eax
	movzbl	%al, %ecx
	movl	%eax, _crc32table+1024(,%edx,4)
	shrl	$8, %eax
	xorl	_crc32table(,%ecx,4), %eax
	movzbl	%al, %ecx
	movl	%eax, _crc32table+2048(,%edx,4)
	shrl	$8, %eax
	xorl	_crc32table(,%ecx,4), %eax
	movl	%eax, _crc32table+3072(,%edx,4)
	addl	$1, %edx
	cmpl	$256, %edx
	jne	L739
	movl	__ZL5sectq.lto_priv.0, %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 148
	movl	__ZL8sectoidx, %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 152
	movl	$0, __ZL5sectq.lto_priv.0
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 148
	movl	__ZL11tempictoidx, %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 152
	movl	$0, __ZL8sectoidx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 148
	movl	__ZL10loadsector, %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 152
	movl	$0, __ZL11tempictoidx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 148
	movl	__ZL8loadwall, %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 152
	movl	$0, __ZL10loadsector
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 148
	movl	__ZL11loadwallinv.lto_priv.0, %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 152
	movl	$0, __ZL8loadwall
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 148
	movl	__ZL10loadsprite, %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 152
	movl	$0, __ZL11loadwallinv.lto_priv.0
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 148
	subl	$4, %esp
	.cfi_def_cfa_offset 152
	movl	$0, __ZL10loadsprite
	movl	$61440, 8(%esp)
	movl	$-1, 4(%esp)
	movl	$__ZL8pictoidx.lto_priv.0, (%esp)
	call	_memset
	xorl	%eax, %eax
	xorl	%edx, %edx
	movl	$0, __ZL11clipmapinfo.lto_priv.0
	movw	%ax, _numsectors
	xorl	%eax, %eax
	movl	$0, __ZL11clipmapinfo.lto_priv.0+4
	movl	$0, __ZL11clipmapinfo.lto_priv.0+8
	movw	%dx, _numwalls
	movl	$1, __ZL13preinitcalled.lto_priv.0
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
L700:
	.cfi_restore_state
	movl	__ZL3osv.lto_priv.0+4, %eax
	cmpl	$6, %eax
	je	L702
	cmpl	$10, %eax
	je	L703
	cmpl	$5, %eax
	jne	L704
	movl	__ZL3osv.lto_priv.0+8, %eax
	movl	$LC33, %ebx
	cmpl	$1, %eax
	je	L701
	cmpl	$2, %eax
	je	L705
	testl	%eax, %eax
	movl	$LC28, %ebx
	movl	$LC32, %eax
	cmove	%eax, %ebx
	jmp	L701
L699:
	movl	__ZL3osv.lto_priv.0+8, %eax
	movl	$LC29, %ebx
	cmpl	$9, %eax
	jbe	L701
	cmpl	$89, %eax
	movl	$LC31, %ebx
	movl	$LC30, %eax
	cmovbe	%eax, %ebx
	jmp	L701
L703:
	cmpb	$1, __ZL3osv.lto_priv.0+154
	movl	$LC37, %ebx
	movl	$LC36, %eax
	cmove	%eax, %ebx
	jmp	L701
L728:
	movl	$LC65, 16(%esp)
	movl	$9173, 12(%esp)
	movl	$LC66, 8(%esp)
	movl	$LC67, 4(%esp)
	movl	$LC68, (%esp)
	call	_initprintf
	movl	_g_sm_heap, %ebx
	testl	%ebx, %ebx
	je	L734
	call	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0
	movl	_g_sm_heap, %ebx
	testl	%ebx, %ebx
	je	L734
	movl	372(%ebx), %eax
	testl	%eax, %eax
	je	L735
	call	_mi_free
L735:
	movl	%ebx, %eax
	call	_mi_free
L734:
	movl	$LC67, 4(%esp)
	movl	$0, (%esp)
	call	*__imp__FatalAppExitA@8
	.cfi_def_cfa_offset 144
	subl	$8, %esp
	.cfi_def_cfa_offset 152
	jmp	L731
L807:
	movl	$-2147483646, %eax
/APP
 # 2101 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	cpuid
 # 0 "" 2
/NO_APP
	movl	%eax, __ZL16g_cpuBrandString
	movl	$-2147483645, %eax
	movl	%ebx, __ZL16g_cpuBrandString+4
	movl	%ecx, __ZL16g_cpuBrandString+8
	movl	%edx, __ZL16g_cpuBrandString+12
/APP
 # 2101 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	cpuid
 # 0 "" 2
/NO_APP
	movl	%eax, __ZL16g_cpuBrandString+16
	movl	$-2147483644, %eax
	movl	%ebx, __ZL16g_cpuBrandString+20
	movl	%ecx, __ZL16g_cpuBrandString+24
	movl	%edx, __ZL16g_cpuBrandString+28
/APP
 # 2101 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	cpuid
 # 0 "" 2
/NO_APP
	movl	%eax, __ZL16g_cpuBrandString+32
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	%edx, __ZL16g_cpuBrandString+44
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	%ebx, __ZL16g_cpuBrandString+36
	cmpl	%edx, %eax
	movl	%ecx, __ZL16g_cpuBrandString+40
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L727
	movl	$__ZL16g_cpuBrandString, 16(%esp)
	movl	$LC58, 12(%esp)
	movl	$68, 8(%esp)
	movl	$LC59, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L727:
	movl	$__ZL16g_cpuBrandString, _cpu+4
	cmpl	$-2147483642, %esi
	jbe	L726
	movl	$-2147483641, %eax
/APP
 # 2101 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	cpuid
 # 0 "" 2
/NO_APP
	movzbl	_cpu+8, %eax
	shrl	$8, %edx
	andl	$1, %edx
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, _cpu+8
	jmp	L726
L809:
	movl	$0, (%esp)
	call	_SDL_GL_LoadLibrary
	testl	%eax, %eax
	jne	L811
L732:
	movl	$_apptitle, %eax
	call	_wm_setapptitle
	call	_SDL_GetNumVideoDisplays
	movl	%eax, _g_numdisplays
	jmp	L731
L803:
	addl	%esi, %eax
	movb	$32, (%eax)
	movl	$__ZL3osv.lto_priv.0+20, 4(%esp)
	movl	%eax, (%esp)
	call	_strcat
	jmp	L713
L806:
	movl	$LC54, (%esp)
	call	*__imp__GetModuleHandleA@4
	.cfi_def_cfa_offset 148
	subl	$4, %esp
	.cfi_def_cfa_offset 152
	movl	%eax, __ZL6hNTDLL.lto_priv.0
	testl	%eax, %eax
	je	L723
	movl	__imp__GetProcAddress@8, %ebx
	movl	$LC55, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	.cfi_def_cfa_offset 144
	subl	$8, %esp
	.cfi_def_cfa_offset 152
	movl	%eax, __ZL28ntdll_NtQueryTimerResolution.lto_priv.0
	movl	__ZL6hNTDLL.lto_priv.0, %eax
	movl	$LC56, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	.cfi_def_cfa_offset 144
	movl	__ZL28ntdll_NtQueryTimerResolution.lto_priv.0, %esi
	subl	$8, %esp
	.cfi_def_cfa_offset 152
	movl	%eax, __ZL26ntdll_NtSetTimerResolution.lto_priv.0
	testl	%esi, %esi
	je	L750
	testl	%eax, %eax
	jne	L723
L750:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L812
L725:
	movl	$0, __ZL6hNTDLL.lto_priv.0
	movl	$0, __ZL19win_systemtimermode.lto_priv.0
	jmp	L723
L808:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L813
L730:
	movb	$1, _novideo
	movb	$1, _nogl
	jmp	L729
L798:
	movl	$LC38, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	$LC38, (%eax)
	jmp	L673
L800:
	movl	$LC40, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	$LC40, (%eax)
	jmp	L675
L797:
	call	__Z8OSD_Initv
	jmp	L672
L799:
	call	__Z8OSD_Initv
	jmp	L674
L811:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L814
L733:
	movb	$1, _nogl
	jmp	L732
L813:
	call	_SDL_GetError
	movl	$LC60, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$801, 8(%esp)
	movl	$LC61, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L730
	movl	$LC62, 12(%esp)
	movl	$802, 8(%esp)
	movl	$LC61, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$1, %eax
	jle	L730
	movl	$LC63, 12(%esp)
	movl	$803, 8(%esp)
	movl	$LC61, 4(%esp)
	movl	$2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L730
L702:
	movl	__ZL3osv.lto_priv.0+8, %eax
	andl	$3, %eax
	cmpb	$1, __ZL3osv.lto_priv.0+154
	je	L815
	movl	__ZZL19windowsPrintVersionvE6server(,%eax,4), %ebx
	jmp	L701
L707:
	movl	$256, %eax
	call	__Z13handle_memerri
L805:
	movl	$LC49, (%esp)
	call	*__imp__LoadLibraryA@4
	.cfi_def_cfa_offset 148
	subl	$4, %esp
	.cfi_def_cfa_offset 152
	movl	%eax, __ZL5hAVRT.lto_priv.0
	testl	%eax, %eax
	je	L715
	movl	__imp__GetProcAddress@8, %ebx
	movl	$LC50, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	.cfi_def_cfa_offset 144
	subl	$8, %esp
	.cfi_def_cfa_offset 152
	movl	%eax, __ZL33avrt_AvSetMmThreadCharacteristics.lto_priv.0
	movl	__ZL5hAVRT.lto_priv.0, %eax
	movl	$LC51, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	.cfi_def_cfa_offset 144
	subl	$8, %esp
	.cfi_def_cfa_offset 152
	movl	%eax, __ZL26avrt_AvSetMmThreadPriority.lto_priv.0
	movl	__ZL5hAVRT.lto_priv.0, %eax
	movl	$LC52, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	.cfi_def_cfa_offset 144
	movl	__ZL33avrt_AvSetMmThreadCharacteristics.lto_priv.0, %edx
	subl	$8, %esp
	.cfi_def_cfa_offset 152
	movl	%eax, __ZL36avrt_AvRevertMmThreadCharacteristics.lto_priv.0
	testl	%edx, %edx
	je	L720
	movl	__ZL26avrt_AvSetMmThreadPriority.lto_priv.0, %ebp
	testl	%ebp, %ebp
	je	L720
	testl	%eax, %eax
	jne	L715
L720:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L816
L722:
	movl	$0, __ZL5hAVRT.lto_priv.0
	jmp	L715
L804:
	movl	$LC45, (%esp)
	call	*__imp__GetModuleHandleA@4
	.cfi_def_cfa_offset 148
	subl	$4, %esp
	.cfi_def_cfa_offset 152
	movl	%eax, __ZL9hPOWRPROF
	testl	%eax, %eax
	je	L716
	movl	__imp__GetProcAddress@8, %ebx
	movl	$LC46, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	.cfi_def_cfa_offset 144
	subl	$8, %esp
	.cfi_def_cfa_offset 152
	movl	%eax, __ZL29powrprof_PowerGetActiveScheme
	movl	__ZL9hPOWRPROF, %eax
	movl	$LC47, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	.cfi_def_cfa_offset 144
	subl	$8, %esp
	.cfi_def_cfa_offset 152
	movl	%eax, %edx
	movl	%eax, __ZL29powrprof_PowerSetActiveScheme.lto_priv.0
	movl	__ZL29powrprof_PowerGetActiveScheme, %eax
	testl	%eax, %eax
	je	L749
	testl	%edx, %edx
	je	L749
	movl	__ZL21systemPowerSchemeGUID.lto_priv.0, %ebx
	testl	%ebx, %ebx
	jne	L716
	movl	$__ZL21systemPowerSchemeGUID.lto_priv.0, 4(%esp)
	movl	$0, (%esp)
	call	*%eax
	.cfi_def_cfa_offset 144
	subl	$8, %esp
	.cfi_def_cfa_offset 152
	jmp	L716
L749:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L817
L719:
	movl	$0, __ZL9hPOWRPROF
	jmp	L716
L815:
	movl	__ZZL19windowsPrintVersionvE6client(,%eax,4), %ebx
	jmp	L701
L814:
	call	_SDL_GetError
	movl	$LC64, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$826, 8(%esp)
	movl	$LC61, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L733
L817:
	movl	$LC48, 12(%esp)
	movl	$378, 8(%esp)
	movl	$LC44, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L719
L810:
	xorl	%ecx, %ecx
	movl	$LC69, 16(%esp)
	movl	$407, 12(%esp)
	movl	$LC70, 8(%esp)
	movl	$LC71, 4(%esp)
	movl	%ecx, (%esp)
	call	__ZN6loguru13log_and_abortEiPKcS1_jS1_z.constprop.0
	.p2align 4,,10
	.p2align 3
L812:
	movl	$LC57, 12(%esp)
	movl	$406, 8(%esp)
	movl	$LC44, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L725
L705:
	cmpb	$1, __ZL3osv.lto_priv.0+154
	movl	$LC35, %ebx
	movl	$LC34, %eax
	cmove	%eax, %ebx
	jmp	L701
L816:
	movl	$LC53, 12(%esp)
	movl	$393, 8(%esp)
	movl	$LC44, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L722
	.cfi_endproc
LFE40:
	.p2align 4
	.globl	_engineUnInit
	.def	_engineUnInit;	.scl	2;	.type	32;	.endef
_engineUnInit:
LFB65:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$24, %esp
	.cfi_def_cfa_offset 36
	movl	_qsetmode, %ecx
	testl	%ecx, %ecx
	jne	L871
L819:
	call	_hicinit
	movl	__ZL6artfil.lto_priv.0, %eax
	cmpl	$-1, %eax
	je	L820
	call	_kclose
L820:
	movl	__ZL9g_vm_data.lto_priv.0, %eax
	movl	_g_sm_heap, %ecx
	movl	$__ZL14distrecipcache, %ebx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	$0, __ZL9g_vm_data.lto_priv.0
L821:
	movl	(%ebx), %eax
	movl	_g_sm_heap, %ecx
	addl	$12, %ebx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	$0, -12(%ebx)
	cmpl	$__ZL14distrecipcache+36, %ebx
	jne	L821
	movl	_palookup, %eax
	movl	$1, %ebx
	movl	_g_sm_heap, %ecx
	movl	$0, __ZL14distrecipcache
	movl	$0, __ZL14distrecipcache+4
	movl	%eax, (%esp)
	movl	$0, __ZL14distrecipcache+8
	movl	$0, __ZL14distrecipcache+12
	movl	$0, __ZL14distrecipcache+16
	movl	$0, __ZL14distrecipcache+20
	movl	$0, __ZL14distrecipcache+24
	movl	$0, __ZL14distrecipcache+28
	movl	$0, __ZL14distrecipcache+32
	movb	$0, _paletteloaded
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	.p2align 4
	.p2align 3
L822:
	movl	_palookup(,%ebx,4), %eax
	cmpl	%eax, _palookup
	je	L825
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
L825:
	addl	$1, %ebx
	cmpl	$256, %ebx
	jne	L822
	movl	$1024, 8(%esp)
	xorl	%ebx, %ebx
	movl	$0, 4(%esp)
	movl	$_palookup, (%esp)
	call	_memset
	.p2align 4
	.p2align 3
L826:
	movl	_blendtable(,%ebx,4), %eax
	movl	_g_sm_heap, %ecx
	addl	$1, %ebx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	cmpl	$256, %ebx
	jne	L826
	movl	$1024, 8(%esp)
	movl	$1, %ebx
	movl	$0, 4(%esp)
	movl	$_blendtable, (%esp)
	call	_memset
	.p2align 4
	.p2align 3
L827:
	movl	_basepaltable(,%ebx,4), %eax
	movl	_g_sm_heap, %ecx
	addl	$1, %ebx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	cmpl	$256, %ebx
	jne	L827
	movl	$1024, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_basepaltable, (%esp)
	call	_memset
	movl	_kpzbuf, %eax
	movl	_g_sm_heap, %ecx
	movl	$_palette, _basepaltable
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 32
	movl	_num_usermaphacks, %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	$0, _kpzbuf
	movl	$0, _kpzbufsiz
	testl	%edx, %edx
	jle	L828
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L829:
	movl	_usermaphacks, %eax
	movl	_g_sm_heap, %ecx
	addl	$1, %esi
	movl	(%eax,%ebx), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 32
	movl	_usermaphacks, %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	4(%eax,%ebx), %eax
	addl	$28, %ebx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	cmpl	%esi, _num_usermaphacks
	jg	L829
L828:
	movl	_usermaphacks, %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 32
	movl	_multipsky, %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	$0, _usermaphacks
	movl	%eax, (%esp)
	movl	$0, _num_usermaphacks
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 32
	movl	_multipskytile, %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	$0, _multipsky
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 32
	movl	_g_defNamePtr, %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	$0, _multipskytile
	movl	%eax, (%esp)
	movl	$0, _pskynummultis
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	$0, _g_defNamePtr
	call	_mouseGrabInput
	movl	__ZL10controller.lto_priv.0, %eax
	movb	$0, _g_mouseEnabled
	testl	%eax, %eax
	je	L830
	movl	%eax, (%esp)
	call	_SDL_GameControllerClose
	movl	$0, __ZL10controller.lto_priv.0
L830:
	movl	__ZL6joydev.lto_priv.0, %eax
	testl	%eax, %eax
	je	L831
	movl	%eax, (%esp)
	call	_SDL_JoystickClose
	movl	$0, __ZL6joydev.lto_priv.0
L831:
	movl	__ZL5hAVRT.lto_priv.0, %eax
	testl	%eax, %eax
	je	L832
	movl	__ZL9hMMTHREAD.lto_priv.0, %edx
	testl	%edx, %edx
	je	L833
	movl	%edx, (%esp)
	call	*__ZL36avrt_AvRevertMmThreadCharacteristics.lto_priv.0
	.cfi_def_cfa_offset 32
	movl	__ZL5hAVRT.lto_priv.0, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	$0, __ZL9hMMTHREAD.lto_priv.0
L833:
	movl	%eax, (%esp)
	call	*__imp__FreeLibrary@4
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	$0, __ZL5hAVRT.lto_priv.0
L832:
	movl	__ZL25g_singleInstanceSemaphore.lto_priv.0, %eax
	testl	%eax, %eax
	je	L834
	movl	%eax, (%esp)
	call	*__imp__CloseHandle@4
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
L834:
	movl	__ZZ34windowsGetSystemKeyboardLayoutNamevE11layoutSaved.lto_priv.0, %eax
	testl	%eax, %eax
	je	L872
L835:
	leal	15(%esp), %ebx
	movl	%ebx, (%esp)
	call	*__imp__GetKeyboardLayoutNameA@4
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	$__ZZ34windowsGetSystemKeyboardLayoutNamevE16systemLayoutName.lto_priv.0, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcmp
	testl	%eax, %eax
	je	L836
	xorl	%edx, %edx
	movl	$__ZZ34windowsGetSystemKeyboardLayoutNamevE16systemLayoutName.lto_priv.0, %eax
	call	__Z24windowsSetKeyboardLayoutPKci.part.0
L836:
	movl	__ZL21systemPowerSchemeGUID.lto_priv.0, %eax
	testl	%eax, %eax
	je	L837
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	*__ZL29powrprof_PowerSetActiveScheme.lto_priv.0
	.cfi_def_cfa_offset 28
	movl	__ZL21systemPowerSchemeGUID.lto_priv.0, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 36
	movl	%eax, (%esp)
	call	*__imp__LocalFree@4
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
L837:
	movl	__ZL7appicon.lto_priv.0, %eax
	testl	%eax, %eax
	je	L838
	movl	%eax, (%esp)
	call	_SDL_FreeSurface
	movl	$0, __ZL7appicon.lto_priv.0
L838:
	call	_SDL_GL_UnloadLibrary
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	_SDL_Quit
L871:
	.cfi_restore_state
	call	_polymost_glreset
	call	_freeallmodels
	call	_polymer_uninit
	jmp	L819
L872:
	call	__Z34windowsGetSystemKeyboardLayoutNamev.part.0
	jmp	L835
	.cfi_endproc
LFE65:
	.p2align 4
	.globl	_set_globalang
	.def	_set_globalang;	.scl	2;	.type	32;	.endef
_set_globalang:
LFB73:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%eax, %edx
	sarl	$31, %eax
	xorps	%xmm0, %xmm0
	xorw	%ax, %ax
	cvtsi2ssl	%edx, %xmm0
	leal	32768(%eax,%edx), %ecx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-8, %esp
	leal	65535(%ecx), %eax
	subl	$28, %esp
	testl	%ecx, %ecx
	fldl	LC72
	mulss	LC8, %xmm0
	cmovns	%ecx, %eax
	leal	20(%esp), %ecx
	movl	%ecx, 8(%esp)
	sarl	$16, %eax
	andw	$2047, %ax
	movw	%ax, _globalang
	movl	%edx, %eax
	movss	%xmm0, 16(%esp)
	fmuls	16(%esp)
	andl	$134217727, %eax
	fmuls	LC73
	movl	%eax, _qglobalang
	leal	24(%esp), %eax
	movl	%eax, 4(%esp)
	fstps	16(%esp)
	movss	16(%esp), %xmm0
	movss	%xmm0, (%esp)
	call	_sincosf
	movss	20(%esp), %xmm1
	movss	LC16, %xmm0
	movl	_viewingrange, %edx
	mulss	%xmm0, %xmm1
	mulss	24(%esp), %xmm0
	movss	%xmm1, _fcosglobalang
	cvttss2sil	%xmm1, %eax
	movss	%xmm0, _fsinglobalang
	cvttss2sil	%xmm0, %ecx
	movl	%eax, _cosglobalang
	movl	%ecx, _singlobalang
/APP
 # 9427 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_viewingrange, %edx
	movl	%eax, _cosviewingrangeglobalang
	movl	%ecx, %eax
/APP
 # 9428 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, _sinviewingrangeglobalang
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE73:
	.section .rdata,"dr"
LC75:
	.ascii "Drawing rooms...\0"
LC76:
	.ascii "source/build/src/polymer.cpp\0"
LC82:
	.ascii "Drawing shadow %i\0"
LC89:
	.ascii "got sector %d after update!\0"
LC90:
	.ascii "EXT sec=%d  z=%d (%d, %d)\0"
LC91:
	.ascii "EXT sec=%d  z=%d\0"
LC93:
	.ascii "Rooms drawn.\0"
LC94:
	.ascii "polymost_drawrooms()\0"
	.text
	.p2align 4
	.globl	_renderDrawRoomsQ16.isra.0
	.def	_renderDrawRoomsQ16.isra.0;	.scl	2;	.type	32;	.endef
_renderDrawRoomsQ16.isra.0:
LFB75:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	xorps	%xmm4, %xmm4
	xorps	%xmm6, %xmm6
	xorps	%xmm7, %xmm7
	cvtsi2ssl	%edx, %xmm6
	cvtsi2ssl	%ecx, %xmm7
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
	cvtsi2ssl	%ebx, %xmm4
	subl	$332, %esp
	movl	%eax, -252(%ebp)
	movl	4(%edi), %esi
	movl	(%edi), %eax
	movzwl	8(%edi), %edi
	movl	%edx, -256(%ebp)
	movl	%ecx, -248(%ebp)
	movl	%eax, -264(%ebp)
	movss	%xmm4, -268(%ebp)
	movss	%xmm4, _fglobalposx
	movss	%xmm6, -272(%ebp)
	movss	%xmm6, _fglobalposy
	movl	%edx, _globalposy
	movl	%esi, -280(%ebp)
	movw	%di, -244(%ebp)
	movl	%ebx, _globalposx
	movl	$0, __ZL15beforedrawrooms.lto_priv.0
	movl	%ecx, _globalposz
	movss	%xmm7, -276(%ebp)
	movss	%xmm7, _fglobalposz
	call	_set_globalang
	movl	_viewingrange, %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	_xdimenscale, %eax
	cltd
	shldl	$16, %eax, %edx
	sall	$16, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, %edx
	leal	-6553600(%esi), %eax
/APP
 # 9451 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_ydimen, %edx
	movl	_xdimscale, %ebx
	movl	%edx, %ecx
	sarl	%ecx
	sall	$16, %ecx
	addl	%ecx, %eax
	movl	%eax, %ecx
	movl	%eax, _qglobalhoriz
	sarl	$31, %ecx
	xorw	%cx, %cx
	leal	32768(%eax,%ecx), %ecx
	testl	%ecx, %ecx
	leal	65535(%ecx), %eax
	cmovns	%ecx, %eax
	sarl	$16, %eax
	movl	%eax, %ecx
	subl	%eax, %edx
	movl	%eax, _globalhoriz
	movl	_xdimenscale, %eax
	negl	%ecx
	imull	%ebx, %edx
	imull	%ebx, %ecx
	movl	%edx, __ZL11globaldclip.lto_priv.0
	movl	__ZL17viewingrangerecip.lto_priv.0, %edx
	movl	%ecx, __ZL11globaluclip.lto_priv.0
/APP
 # 9457 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	_parallaxvisibility, %eax
	movl	%ebx, %edx
/APP
 # 9458 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, _globalpisibility
	movl	_rendmode, %eax
	cmpl	$3, %eax
	je	L879
	cmpl	$4, %eax
	je	L880
	testl	%eax, %eax
	jne	L1310
	movl	_g_visibility, %eax
	movl	%ebx, %edx
/APP
 # 9464 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, _globalvisibility
	movl	_globalvisibility2, %ebx
	movl	%eax, %ecx
L882:
	movl	_xyaspect, %esi
	movl	%ecx, %eax
	movl	%esi, %edx
/APP
 # 9492 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$320, %edx
	movl	%eax, _globalhisibility
/APP
 # 9493 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $8, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, _globalcisibility
	movl	%esi, %edx
	movl	%ebx, %eax
/APP
 # 9496 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$320, %edx
	movl	%eax, _globalhisibility2
/APP
 # 9497 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $8, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, _globalcisibility2
	movzwl	-244(%ebp), %eax
	movl	_totalclock+12, %edx
	movw	%ax, _globalcursectnum
	movl	_totalclock+12, %eax
	movl	%edx, _totalclocklock+12
	movl	%eax, _totalclocklock
	movl	_totalclock+8, %eax
	xorw	%ax, %ax
	movl	%eax, _totalclocklock+8
	cmpl	_oxyaspect, %esi
	jne	L888
	movl	_xdimen, %esi
	cmpl	__ZL7oxdimen.lto_priv.0, %esi
	je	L1311
L888:
	call	__ZL11dosetaspectv
	movl	_xdimen, %esi
L889:
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_gotsector, (%esp)
	call	_memset
	movl	_windowxy1, %eax
	movl	_startumost, %ebx
	leal	(%eax,%eax), %ecx
	leal	-2(%esi,%esi), %eax
	addl	%ecx, %ebx
	addl	_startdmost, %ecx
	.p2align 6
	.p2align 4
	.p2align 3
L890:
	movl	__ZL5umost.lto_priv.0, %esi
	movzwl	(%ebx,%eax), %edx
	subw	_windowxy1+4, %dx
	movw	%dx, (%esi,%eax)
	movl	__ZL5dmost.lto_priv.0, %esi
	movzwl	(%ecx,%eax), %edx
	subw	_windowxy1+4, %dx
	movw	%dx, (%esi,%eax)
	subl	$2, %eax
	cmpl	$-2, %eax
	jne	L890
	movl	__ZL5umost.lto_priv.0, %edx
	movzwl	(%ebx), %eax
	subw	_windowxy1+4, %ax
	movw	%ax, (%edx)
	movl	__ZL5dmost.lto_priv.0, %edx
	movzwl	(%ecx), %eax
	subw	_windowxy1+4, %ax
	movw	%ax, (%edx)
	cmpw	$0, _numwalls
	jle	L891
	xorl	%edi, %edi
	jmp	L898
	.p2align 6
	.p2align 4,,10
	.p2align 3
L892:
	movswl	_numwalls, %eax
	addl	$1, %edi
	cmpl	%eax, %edi
	jge	L891
L898:
	movl	%edi, %esi
	sall	$5, %esi
	addl	_wall, %esi
	testb	$16, 15(%esi)
	je	L892
	movswl	16(%esi), %ebx
	movl	%ebx, %eax
	call	_animateoffs
	leal	(%ebx,%eax), %edx
	movswl	_rottile(,%edx,4), %eax
	cmpw	$-1, %ax
	je	L1312
L893:
	movl	_waloff(,%eax,4), %edx
	testl	%edx, %edx
	jne	L892
	call	_tileLoad.isra.0
	movswl	_numwalls, %eax
	addl	$1, %edi
	cmpl	%eax, %edi
	jl	L898
	.p2align 4
	.p2align 3
L891:
	movl	_rendmode, %eax
	cmpl	$4, %eax
	je	L1313
	movzwl	_globalcursectnum, %ebx
	cmpw	$4095, %bx
	jle	L968
	subw	$4096, %bx
	movw	%bx, _globalcursectnum
L969:
	testl	%eax, %eax
	jne	L1314
L1077:
	call	_videoBeginDrawing
	movl	_windowxy1+4, %eax
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
	imull	_bytesperline, %eax
	addl	_frameplace, %eax
	xorl	%esi, %esi
	movw	%cx, _numscans
	addl	_windowxy1, %eax
	movw	%bx, _numbunches
	movl	%eax, _frameoffset
	movl	_xdimen, %eax
	movw	%si, _maskwallcnt
	movw	%ax, __ZL7numhits.lto_priv.0
	movzwl	_globalcursectnum, %eax
	movl	$0, __ZL12smostwallcnt.lto_priv.0
	movl	$0, __ZL8smostcnt.lto_priv.0
	movl	$0, _spritesortcnt
	testw	%ax, %ax
	js	L1078
	movl	_automapping, %edx
	testl	%edx, %edx
	je	L1079
	movswl	%ax, %edx
	movl	%eax, %ecx
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.9(%ecx), %ecx
	orb	%cl, _show2dsector(%edx)
L1079:
	movw	%ax, _sectorborder
	call	__ZL17classicScanSectors.part.0.lto_priv.0
	movzwl	_numbunches, %ebx
	cmpb	$0, _inpreparemirror
	je	L1080
	testw	%bx, %bx
	je	L1125
	movl	_xdimen, %edx
	movl	$0, __ZL9mirrorsx2.lto_priv.0
	leal	-1(%edx), %eax
	movl	%eax, -244(%ebp)
	movl	%eax, __ZL9mirrorsx1.lto_priv.0
	movswl	_numscans, %eax
	subl	$1, %eax
	js	L1088
	movl	_wall, %ecx
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	%edx, -248(%ebp)
	movl	%ecx, -240(%ebp)
	movl	-244(%ebp), %ecx
	movl	%ecx, -236(%ebp)
	.p2align 4
	.p2align 3
L1086:
	movswl	_thewall(%eax,%eax), %edx
	movl	-240(%ebp), %ecx
	sall	$5, %edx
	cmpw	$0, 12(%ecx,%edx)
	js	L1084
	movl	-236(%ebp), %ecx
	movl	_xb1(,%eax,4), %edx
	cmpl	%ecx, %edx
	cmovge	%ecx, %edx
	movl	%edx, -236(%ebp)
	movl	$1, %edx
	cmovl	%edx, %esi
	movl	%edx, %ecx
	movl	__ZL3xb2.lto_priv.0(,%eax,4), %edx
	cmpl	%ebx, %edx
	cmovg	%edx, %ebx
	cmovg	%ecx, %edi
L1084:
	subl	$1, %eax
	jnb	L1086
	movl	%edi, %eax
	movl	-236(%ebp), %ecx
	movl	-248(%ebp), %edx
	testb	%al, %al
	je	L1087
	movl	%ebx, __ZL9mirrorsx2.lto_priv.0
L1087:
	movl	%esi, %eax
	testb	%al, %al
	je	L1088
	movl	%ecx, __ZL9mirrorsx1.lto_priv.0
L1083:
	testl	%ecx, %ecx
	jle	L1089
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L1091:
	movl	__ZL5dmost.lto_priv.0, %ecx
	movl	__ZL5umost.lto_priv.0, %edx
	movzwl	(%ecx,%eax,2), %ecx
	cmpw	%cx, (%edx,%eax,2)
	jg	L1090
	movl	$1, %esi
	xorl	%edi, %edi
	movw	%si, (%edx,%eax,2)
	movl	__ZL5dmost.lto_priv.0, %edx
	movw	%di, (%edx,%eax,2)
	subw	$1, __ZL7numhits.lto_priv.0
L1090:
	addl	$1, %eax
	cmpl	__ZL9mirrorsx1.lto_priv.0, %eax
	jl	L1091
	movl	_xdimen, %edx
L1089:
	movl	__ZL9mirrorsx2.lto_priv.0, %eax
	addl	$1, %eax
	cmpl	%edx, %eax
	jge	L1092
	.p2align 4
	.p2align 3
L1094:
	movl	__ZL5dmost.lto_priv.0, %ecx
	movl	__ZL5umost.lto_priv.0, %edx
	movzwl	(%ecx,%eax,2), %ecx
	cmpw	%cx, (%edx,%eax,2)
	jg	L1093
	movl	$1, %ecx
	xorl	%ebx, %ebx
	movw	%cx, (%edx,%eax,2)
	movl	__ZL5dmost.lto_priv.0, %edx
	movw	%bx, (%edx,%eax,2)
	subw	$1, __ZL7numhits.lto_priv.0
L1093:
	addl	$1, %eax
	cmpl	_xdimen, %eax
	jl	L1094
L1092:
	xorl	%eax, %eax
	call	__ZL18classicDrawBunchesi.lto_priv.0
	movzwl	_numbunches, %eax
	movl	__ZL5umost.lto_priv.0, %esi
	movl	__ZL9mirrorsx1.lto_priv.0, %ecx
	leal	-1(%eax), %ebx
	movswl	%bx, %eax
	movw	%bx, _numbunches
	movzwl	_bunchfirst(%eax,%eax), %edx
	movzwl	_bunchlast(%eax,%eax), %eax
	movw	%dx, _bunchfirst
	movl	__ZL9mirrorsx2.lto_priv.0, %edx
	movw	%ax, _bunchlast
	movswl	(%esi,%edx,2), %eax
	movswl	(%esi,%ecx,2), %esi
	cmpw	%si, %ax
	cmovg	%esi, %eax
	movl	__ZL5dmost.lto_priv.0, %esi
	movl	%eax, __ZL9mirrorsy1.lto_priv.0
	movswl	(%esi,%ecx,2), %eax
	movswl	(%esi,%edx,2), %edx
	cmpw	%dx, %ax
	cmovl	%edx, %eax
	movl	%eax, __ZL9mirrorsy2.lto_priv.0
L1080:
	testw	%bx, %bx
	jle	L1123
	.p2align 4
	.p2align 3
L1122:
	cmpw	$0, __ZL7numhits.lto_priv.0
	jle	L1123
	movswl	%bx, %eax
	movl	%eax, -240(%ebp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.1, (%esp)
	call	_memset
	movb	$1, __ZL7tempbuf.lto_priv.1
	movl	$0, -236(%ebp)
	cmpw	$1, %bx
	je	L1095
	movl	$1, %ebx
	.p2align 4
	.p2align 3
L1105:
	movl	-236(%ebp), %edi
	movswl	_bunchfirst(%ebx,%ebx), %eax
	movswl	_bunchlast(%edi,%edi), %edx
	movl	_xb1(,%eax,4), %ecx
	movl	__ZL3xb2.lto_priv.0(,%edx,4), %edx
	addl	$1, %edx
	cmpl	%edx, %ecx
	jge	L1104
	movswl	_bunchfirst(%edi,%edi), %edx
	movswl	_bunchlast(%ebx,%ebx), %edi
	movl	__ZL3xb2.lto_priv.0(,%edi,4), %edi
	movl	_xb1(,%edx,4), %esi
	addl	$1, %edi
	cmpl	%edi, %esi
	jge	L1104
	cmpl	%esi, %ecx
	jge	L1097
	cmpl	%esi, __ZL3xb2.lto_priv.0(,%eax,4)
	jge	L1099
	.p2align 5
	.p2align 4
	.p2align 3
L1098:
	movswl	_bunchp2(%eax,%eax), %eax
	cmpl	__ZL3xb2.lto_priv.0(,%eax,4), %esi
	jg	L1098
L1099:
	call	_wallfront
	testl	%eax, %eax
	js	L1104
	movb	$1, __ZL7tempbuf.lto_priv.1(%ebx)
	jne	L1104
	movl	-236(%ebp), %eax
	movl	%ebx, -236(%ebp)
	movb	$1, __ZL7tempbuf.lto_priv.1(%eax)
L1104:
	addl	$1, %ebx
	cmpl	%ebx, -240(%ebp)
	jne	L1105
L1095:
	movl	$1, %eax
	xorl	%ebx, %ebx
	testb	%al, %al
	jne	L1308
	.p2align 4
	.p2align 3
L1315:
	movl	-236(%ebp), %edi
	movswl	_bunchfirst(%ebx,%ebx), %eax
	movswl	_bunchlast(%edi,%edi), %edx
	movl	_xb1(,%eax,4), %ecx
	movl	__ZL3xb2.lto_priv.0(,%edx,4), %edx
	addl	$1, %edx
	cmpl	%edx, %ecx
	jge	L1308
	movl	-236(%ebp), %edi
	movswl	_bunchfirst(%edi,%edi), %edx
	movswl	_bunchlast(%ebx,%ebx), %edi
	movl	__ZL3xb2.lto_priv.0(,%edi,4), %edi
	movl	_xb1(,%edx,4), %esi
	addl	$1, %edi
	cmpl	%edi, %esi
	jge	L1308
	cmpl	%esi, %ecx
	jge	L1110
	cmpl	%esi, __ZL3xb2.lto_priv.0(,%eax,4)
	jge	L1112
	.p2align 5
	.p2align 4
	.p2align 3
L1111:
	movswl	_bunchp2(%eax,%eax), %eax
	cmpl	__ZL3xb2.lto_priv.0(,%eax,4), %esi
	jg	L1111
L1112:
	call	_wallfront
	testl	%eax, %eax
	js	L1308
	movb	$1, __ZL7tempbuf.lto_priv.1(%ebx)
	jne	L1308
	movl	-236(%ebp), %eax
	movl	%ebx, -236(%ebp)
	movl	$1, %ebx
	movb	$1, __ZL7tempbuf.lto_priv.1(%eax)
	cmpl	%ebx, -240(%ebp)
	jle	L1118
	.p2align 5
	.p2align 4
	.p2align 3
L1316:
	movzbl	__ZL7tempbuf.lto_priv.1(%ebx), %eax
	testb	%al, %al
	je	L1315
L1308:
	addl	$1, %ebx
	cmpl	%ebx, -240(%ebp)
	jg	L1316
L1118:
	movl	-236(%ebp), %eax
	call	__ZL18classicDrawBunchesi.lto_priv.0
	movl	_automapping, %eax
	testl	%eax, %eax
	jne	L1317
L1120:
	movzwl	_numbunches, %eax
	movl	-236(%ebp), %ecx
	leal	-1(%eax), %ebx
	movswl	%bx, %eax
	movw	%bx, _numbunches
	movzwl	_bunchfirst(%eax,%eax), %edx
	movzwl	_bunchlast(%eax,%eax), %eax
	movw	%dx, _bunchfirst(%ecx,%ecx)
	movw	%ax, _bunchlast(%ecx,%ecx)
	testw	%bx, %bx
	jg	L1122
L1123:
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
L1310:
	.cfi_restore_state
	movl	_globalvisibility, %ecx
	movl	_globalvisibility2, %ebx
	jmp	L882
	.p2align 4,,10
	.p2align 3
L1312:
	movl	__ZZL14findUnusedTilevE14lastUnusedTile, %ebx
	testl	%ebx, %ebx
	js	L1128
	movl	%esi, -236(%ebp)
	xorl	%ecx, %ecx
	movl	-260(%ebp), %esi
	movw	%ax, -240(%ebp)
	jmp	L897
	.p2align 4,,10
	.p2align 3
L1129:
	movl	%ebx, %esi
L897:
	movzwl	_tilesiz(,%ebx,4), %eax
	orw	_tilesiz+2(,%ebx,4), %ax
	jne	L895
	movl	_waloff(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1318
L895:
	subl	$1, %ebx
	movl	$1, %ecx
	cmpl	$-1, %ebx
	jne	L1129
	movl	%esi, -260(%ebp)
	movzwl	-240(%ebp), %eax
	movl	$-1, __ZZL14findUnusedTilevE14lastUnusedTile
	movl	-236(%ebp), %esi
L894:
	movw	%ax, _rottile(,%edx,4)
	movswl	16(%esi), %eax
	movl	%edx, -240(%ebp)
	movl	%eax, -236(%ebp)
	call	_animateoffs
	movl	-236(%ebp), %ecx
	addl	%eax, %ecx
	movw	%cx, _rottile+2(,%ebx,4)
	movswl	16(%esi), %esi
	movl	%esi, %eax
	call	_animateoffs
	addl	%eax, %esi
	movzwl	_tilesiz(,%esi,4), %ecx
	movzwl	_tilesiz+2(,%esi,4), %eax
	sall	$16, %ecx
	orl	%ecx, %eax
	movl	%eax, _tilesiz(,%ebx,4)
	movl	%ebx, %eax
	call	_tileUpdatePicSiz
	movl	-240(%ebp), %edx
	movswl	_rottile(,%edx,4), %eax
	cmpw	$-1, %ax
	je	L892
	jmp	L893
	.p2align 4,,10
	.p2align 3
L1097:
	cmpl	%ecx, __ZL3xb2.lto_priv.0(,%edx,4)
	jge	L1099
	.p2align 5
	.p2align 4
	.p2align 3
L1101:
	movswl	_bunchp2(%edx,%edx), %edx
	cmpl	__ZL3xb2.lto_priv.0(,%edx,4), %ecx
	jg	L1101
	jmp	L1099
	.p2align 4,,10
	.p2align 3
L1110:
	cmpl	%ecx, __ZL3xb2.lto_priv.0(,%edx,4)
	jge	L1112
	.p2align 5
	.p2align 4
	.p2align 3
L1114:
	movswl	_bunchp2(%edx,%edx), %edx
	cmpl	__ZL3xb2.lto_priv.0(,%edx,4), %ecx
	jg	L1114
	jmp	L1112
L1317:
	movl	-236(%ebp), %eax
	movswl	_bunchfirst(%eax,%eax), %ecx
	testl	%ecx, %ecx
	js	L1120
	.p2align 6
	.p2align 4
	.p2align 3
L1121:
	movswl	_thewall(%ecx,%ecx), %eax
	movswl	_bunchp2(%ecx,%ecx), %ecx
	movl	%eax, %edx
	sarl	$3, %eax
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.9(%edx), %edx
	orb	%dl, _show2dwall(%eax)
	testl	%ecx, %ecx
	jns	L1121
	jmp	L1120
L1314:
	movl	$LC94, 4(%esp)
	movl	$3, (%esp)
	call	__Z26buildgl_outputDebugMessagehPKcz.constprop.0
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_didwall, (%esp)
	call	_memset
	call	_videoBeginDrawing
	movl	_numyaxbunches, %ebx
	movl	_windowxy1+4, %eax
	imull	_bytesperline, %eax
	addl	_frameplace, %eax
	addl	_windowxy1, %eax
	movl	%eax, _frameoffset
	testl	%ebx, %ebx
	je	L1319
L972:
	movl	$256, (%esp)
	call	*_glad_glClear
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	call	_inthash_find
	testl	%eax, %eax
	je	L973
	movl	$3042, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L973:
	movl	$3008, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L974
	movl	$3008, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L974:
	movl	$2929, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L975
	movl	$2929, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$2929, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L975:
	movl	$2932, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$519, %eax
	je	L976
	movl	$519, (%esp)
	call	*_glad_glDepthFunc
	movl	$519, %ecx
	movl	$2932, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L976:
	movl	_viewingrange, %ebx
	xorps	%xmm2, %xmm2
	movss	LC8, %xmm4
	movss	_fviewingrange, %xmm1
	cvtsi2ssl	%ebx, %xmm2
	movss	%xmm4, -240(%ebp)
	mulss	%xmm4, %xmm2
	movss	%xmm2, _gvrcorrection
	cmpl	$2, _glprojectionhacks
	je	L1320
L977:
	movl	_xdimenscale, %eax
	xorps	%xmm0, %xmm0
	movss	-240(%ebp), %xmm6
	movss	%xmm1, -236(%ebp)
	movss	_fcosglobalang, %xmm2
	movl	_xdimen, %edx
	cvtsi2ssl	%eax, %xmm0
	fildl	_xyaspect
	mulss	LC100, %xmm0
	sarl	%edx
	fmuls	-236(%ebp)
	fmuls	LC101
	movss	%xmm0, _gyxscale
	movss	_fxdimen, %xmm0
	fstpl	_gxyaspect
	mulss	%xmm1, %xmm0
	mulss	LC102, %xmm0
	mulss	%xmm6, %xmm1
	movss	%xmm0, __ZL11gviewxrange.lto_priv.0
	movss	LC92, %xmm0
	mulss	%xmm0, %xmm2
	mulss	_fsinglobalang, %xmm0
	movss	%xmm2, _gcosang
	mulss	%xmm1, %xmm2
	movss	%xmm0, _gsinang
	mulss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	movss	%xmm2, _gcosang2
	movss	%xmm0, _gsinang2
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movl	_ydimen, %edx
	sarl	%edx
	cvtsi2ssl	%edx, %xmm1
	cltd
	movss	%xmm0, _ghalfx
	shldl	$16, %eax, %edx
	sall	$16, %eax
	mulss	LC23, %xmm0
	movss	%xmm1, _ghalfy
	movss	LC0, %xmm1
	divss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	_qglobalhoriz, %xmm0
	mulss	%xmm6, %xmm0
	movss	%xmm0, __ZL6ghoriz.lto_priv.0
	movss	%xmm1, _grhalfxdown10
	movl	%ebx, 8(%esp)
	sarl	$31, %ebx
	movl	%ebx, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.11
	xorps	%xmm0, %xmm0
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	movl	$0x00000000, __ZL13ghorizcorrect.lto_priv.0
	cvtsi2ssl	_globalvisibility, %xmm0
	mulss	LC77, %xmm0
	movss	%xmm0, _gvisibility
	cmpl	%eax, _gl
	je	L1321
L979:
	xorps	%xmm1, %xmm1
L982:
	movl	_ydimen, %eax
	xorps	%xmm2, %xmm2
	addss	__ZL6ghoriz.lto_priv.0, %xmm1
	movl	_r_yshearing, %edi
	sarl	%eax
	cvtsi2ssl	%eax, %xmm2
	movaps	%xmm2, %xmm0
	subss	%xmm1, %xmm0
	testl	%edi, %edi
	je	L983
	movl	$0x00000000, _gshang
	movss	LC0, %xmm1
L984:
	movss	%xmm1, _gchang
	movss	%xmm0, __ZL7ghoriz2.lto_priv.0
	movss	%xmm2, __ZL6ghoriz.lto_priv.0
	call	__ZL13resizeglcheckv.lto_priv.0
	cmpl	$1, _glprojectionhacks
	je	L1322
L989:
	movss	LC0, %xmm4
L991:
	movl	$0x3f800000, _gctang
	fldz
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	fstp	%st(0)
	movzbl	_inpreparemirror, %ecx
	testb	%cl, %cl
	jne	L1131
	xorps	%xmm0, %xmm0
	movaps	%xmm0, %xmm3
L992:
	movss	%xmm0, _gstang
	xorl	%eax, %eax
L993:
	movl	$0, -144(%ebp,%eax)
	movl	$0, -140(%ebp,%eax)
	movl	$0, -136(%ebp,%eax)
	movl	$0, -132(%ebp,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L993
	movss	LC1, %xmm0
	movl	$0, -144(%ebp,%eax)
	movl	$0, -140(%ebp,%eax)
	movl	_windowxy2, %eax
	subl	_windowxy1, %eax
	movss	%xmm0, -116(%ebp)
	movss	__ZL13ghorizcorrect.lto_priv.0, %xmm1
	addl	$3, %eax
	movss	%xmm0, -152(%ebp)
	xorps	%xmm0, %xmm0
	movss	__ZL7ghoriz2.lto_priv.0, %xmm5
	movss	_ghalfx, %xmm6
	cvtsi2ssl	%eax, %xmm0
	movaps	%xmm1, %xmm2
	movl	_windowxy2+4, %eax
	subl	_windowxy1+4, %eax
	subss	LC0, %xmm2
	movss	%xmm5, -236(%ebp)
	movss	__ZL6ghoriz.lto_priv.0, %xmm7
	addl	$3, %eax
	movaps	%xmm6, %xmm5
	divss	_gvrcorrection, %xmm5
	movss	%xmm5, -260(%ebp)
	movss	%xmm0, -140(%ebp)
	movss	%xmm0, -128(%ebp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm2, -148(%ebp)
	leal	-152(%ebp), %eax
	movss	%xmm2, -136(%ebp)
	movaps	%xmm5, %xmm2
	movl	%eax, %edx
	addss	%xmm1, %xmm0
	movss	_gchang, %xmm1
	mulss	%xmm1, %xmm5
	movss	%xmm1, -240(%ebp)
	movss	%xmm0, -124(%ebp)
	movss	%xmm0, -112(%ebp)
	movss	_gshang, %xmm0
	mulss	%xmm0, %xmm2
	movss	%xmm0, -244(%ebp)
	movss	%xmm5, -252(%ebp)
	movss	%xmm2, -248(%ebp)
	.p2align 4
	.p2align 3
L995:
	movss	4(%edx), %xmm0
	movss	(%edx), %xmm2
	leal	-104(%ebp), %edi
	addl	$12, %edx
	subss	%xmm7, %xmm0
	subss	%xmm6, %xmm2
	mulss	%xmm4, %xmm0
	mulss	%xmm4, %xmm2
	movaps	%xmm0, %xmm1
	mulss	%xmm3, %xmm0
	movaps	%xmm2, %xmm5
	mulss	%xmm3, %xmm5
	addss	%xmm2, %xmm0
	subss	%xmm5, %xmm1
	addss	-236(%ebp), %xmm1
	movss	%xmm0, -12(%edx)
	movss	-240(%ebp), %xmm0
	mulss	%xmm1, %xmm0
	addss	-248(%ebp), %xmm0
	mulss	-244(%ebp), %xmm1
	movss	%xmm0, -8(%edx)
	movss	-252(%ebp), %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, -4(%edx)
	cmpl	%edx, %edi
	jne	L995
	testb	%cl, %cl
	je	L996
	xorps	LC9, %xmm3
	movss	%xmm3, _gstang
L996:
	movl	$0, -236(%ebp)
	xorl	%edi, %edi
	xorl	%esi, %esi
	movss	LC103, %xmm5
L1001:
	movl	-236(%ebp), %ebx
	movss	8(%eax), %xmm0
	movl	%ebx, %ecx
	addl	$1, %ebx
	cmpl	$3, %ecx
	movl	%esi, %ecx
	movl	%ebx, -236(%ebp)
	cmovne	%ebx, %ecx
	comiss	LC103, %xmm0
	jb	L998
	leal	(%edi,%edi,2), %ebx
	addl	$1, %edi
	leal	-104(%ebp,%ebx,4), %edx
	movl	%edx, -240(%ebp)
	movl	(%eax), %edx
	movl	%edx, -104(%ebp,%ebx,4)
	movl	4(%eax), %ebx
	movl	-240(%ebp), %edx
	movl	%ebx, 4(%edx)
	movl	8(%eax), %ebx
	movl	%ebx, 8(%edx)
L998:
	comiss	LC103, %xmm0
	leal	(%ecx,%ecx,2), %ecx
	movss	-144(%ebp,%ecx,4), %xmm1
	setnb	-240(%ebp)
	comiss	LC103, %xmm1
	setnb	%bl
	cmpb	%bl, -240(%ebp)
	je	L1000
	movaps	%xmm5, %xmm3
	subss	%xmm0, %xmm1
	movss	(%eax), %xmm2
	leal	(%edi,%edi,2), %ebx
	subss	%xmm0, %xmm3
	movss	%xmm5, -96(%ebp,%ebx,4)
	addl	$1, %edi
	movss	-148(%ebp,%ecx,4), %xmm0
	divss	%xmm1, %xmm3
	movss	4(%eax), %xmm1
	subss	%xmm1, %xmm0
	mulss	%xmm3, %xmm0
	addss	%xmm1, %xmm0
	movss	-152(%ebp,%ecx,4), %xmm1
	subss	%xmm2, %xmm1
	movss	%xmm0, -100(%ebp,%ebx,4)
	mulss	%xmm3, %xmm1
	addss	%xmm2, %xmm1
	movss	%xmm1, -104(%ebp,%ebx,4)
L1000:
	addl	$12, %eax
	cmpl	$4, -236(%ebp)
	jne	L1001
	movl	%edi, -240(%ebp)
	cmpl	$2, %edi
	jle	L1323
	movl	-240(%ebp), %eax
	leal	-1(%eax), %ecx
	movl	%ecx, -256(%ebp)
	cmpl	$3, %eax
	je	L1133
	movups	-104(%ebp), %xmm0
	movups	-88(%ebp), %xmm2
	movss	-260(%ebp), %xmm1
	movaps	%xmm0, %xmm3
	movaps	%xmm2, %xmm5
	shufps	$90, -72(%ebp), %xmm5
	shufps	$90, %xmm2, %xmm3
	shufps	$0, %xmm1, %xmm1
	shufps	$200, -72(%ebp), %xmm3
	divps	%xmm3, %xmm1
	movaps	%xmm0, %xmm3
	shufps	$5, %xmm2, %xmm0
	shufps	$175, -72(%ebp), %xmm2
	shufps	$136, %xmm2, %xmm0
	shufps	$140, %xmm5, %xmm3
	movaps	%xmm6, %xmm5
	shufps	$0, %xmm5, %xmm5
	mulps	%xmm1, %xmm3
	mulps	%xmm1, %xmm0
	movaps	%xmm7, %xmm1
	shufps	$0, %xmm1, %xmm1
	addps	%xmm5, %xmm3
	addps	%xmm1, %xmm0
	movups	%xmm3, -216(%ebp)
	movups	%xmm0, -184(%ebp)
	testb	$3, %al
	je	L1324
	movl	-240(%ebp), %eax
	andl	$-4, %eax
L1005:
	leal	-184(%ebp), %esi
	leal	(%eax,%eax,2), %edx
	movl	-240(%ebp), %ecx
	movss	-260(%ebp), %xmm2
	leal	-216(%ebp), %ebx
	movl	%esi, -244(%ebp)
	leal	-104(%ebp,%edx,4), %edx
	movl	%ebx, -252(%ebp)
L1007:
	movss	(%edx), %xmm1
	movaps	%xmm2, %xmm0
	divss	8(%edx), %xmm0
	addl	$12, %edx
	mulss	%xmm0, %xmm1
	mulss	-8(%edx), %xmm0
	addss	%xmm6, %xmm1
	addss	%xmm7, %xmm0
	movss	%xmm1, (%ebx,%eax,4)
	movss	%xmm0, (%esi,%eax,4)
	addl	$1, %eax
	cmpl	%eax, %ecx
	jg	L1007
L1006:
	xorl	%edx, %edx
	movss	-216(%ebp), %xmm3
	comiss	-212(%ebp), %xmm3
	movl	-256(%ebp), %eax
	movl	-252(%ebp), %ebx
	seta	%dl
	movl	%eax, -264(%ebp)
	movss	-216(%ebp,%edx,4), %xmm1
	jmp	L1011
L1326:
	leal	0(,%eax,4), %ecx
	movl	%eax, %edx
	movaps	%xmm0, %xmm1
	subl	$1, %eax
	cmpl	$1, %eax
	je	L1325
L1011:
	movss	(%ebx,%eax,4), %xmm0
	comiss	%xmm0, %xmm1
	ja	L1326
	subl	$1, %eax
	leal	0(,%edx,4), %ecx
	cmpl	$1, %eax
	jne	L1011
L1325:
	movss	-184(%ebp,%ecx), %xmm0
	leal	-1(%edx), %ecx
	leal	1(%edx), %eax
	movss	%xmm1, __ZL3vsp.lto_priv.0+32
	movl	%ecx, -236(%ebp)
	movss	%xmm0, __ZL3vsp.lto_priv.0+44
	movss	%xmm0, __ZL3vsp.lto_priv.0+36
	cmpl	%eax, -240(%ebp)
	jle	L1134
	movss	-216(%ebp,%eax,4), %xmm0
L1012:
	movl	-236(%ebp), %ecx
	movl	-256(%ebp), %edi
	movl	$2, %esi
	testl	%ecx, %ecx
	cmovs	%edi, %ecx
	movss	-216(%ebp,%ecx,4), %xmm2
	movl	%ecx, -236(%ebp)
	movl	-252(%ebp), %ecx
	leal	(%ecx,%edi,4), %ecx
	movl	%ecx, -260(%ebp)
	jmp	L1031
	.p2align 4,,10
	.p2align 3
L1327:
	comiss	%xmm0, %xmm1
	movss	-184(%ebp,%edx), %xmm1
	cmovb	%esi, %edi
	cmovb	%ebx, %esi
	movl	%edi, %ebx
	sall	$5, %ebx
	movss	%xmm0, __ZL3vsp.lto_priv.0(%ebx)
	movss	%xmm1, __ZL3vsp.lto_priv.0+4(%ebx)
	movl	-236(%ebp), %ebx
	leal	1(%ebx), %edx
	cmpl	%edx, -240(%ebp)
	jle	L1136
	movss	-212(%ebp,%ecx), %xmm6
	movl	-244(%ebp), %ebx
	leal	4(%ebx,%ecx), %edx
L1017:
	movss	(%edx), %xmm5
	subss	%xmm6, %xmm0
	movl	%edi, %edx
	addl	$1, %eax
	movss	-184(%ebp,%ecx), %xmm1
	sall	$5, %edx
	xorl	%ebx, %ebx
	cmpl	%eax, -240(%ebp)
	cmovle	%ebx, %eax
	subss	%xmm5, %xmm1
	mulss	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	subss	%xmm6, %xmm1
	divss	%xmm1, %xmm0
	addss	%xmm5, %xmm0
	movss	%xmm0, __ZL3vsp.lto_priv.0+12(%edx)
L1018:
	cmpl	-236(%ebp), %eax
	je	L1294
L1028:
	movss	-216(%ebp,%eax,4), %xmm0
	sall	$5, %edi
	movss	__ZL3vsp.lto_priv.0(%edi), %xmm1
L1031:
	movl	-236(%ebp), %ecx
	leal	0(,%eax,4), %edx
	leal	-1(%esi), %edi
	leal	1(%esi), %ebx
	sall	$2, %ecx
	comiss	%xmm0, %xmm2
	ja	L1327
	comiss	%xmm2, %xmm0
	jbe	L1287
	comiss	%xmm2, %xmm1
	movss	-184(%ebp,%ecx), %xmm1
	cmovb	%esi, %edi
	cmovb	%ebx, %esi
	movl	%edi, %ebx
	sall	$5, %ebx
	movl	%ebx, -248(%ebp)
	movss	%xmm2, __ZL3vsp.lto_priv.0(%ebx)
	movss	%xmm1, __ZL3vsp.lto_priv.0+12(%ebx)
	movl	%eax, %ebx
	movss	-184(%ebp,%edx), %xmm1
	subl	$1, %ebx
	cmovs	-256(%ebp), %ebx
	subl	$1, -236(%ebp)
	movss	-216(%ebp,%ebx,4), %xmm6
	movss	-184(%ebp,%ebx,4), %xmm5
	movl	-248(%ebp), %ebx
	subss	%xmm5, %xmm1
	subss	%xmm6, %xmm2
	mulss	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	subss	%xmm6, %xmm1
	divss	%xmm1, %xmm2
	movaps	%xmm2, %xmm0
	addss	%xmm5, %xmm0
	movss	%xmm0, __ZL3vsp.lto_priv.0+4(%ebx)
	js	L1029
L1027:
	subl	$4, %ecx
	movss	-216(%ebp,%ecx), %xmm2
	cmpl	-236(%ebp), %eax
	jne	L1028
L1294:
	movl	%esi, %edx
L1030:
	movl	%edi, %eax
	sall	$5, %eax
	comiss	__ZL3vsp.lto_priv.0(%eax), %xmm2
	jbe	L1032
	movss	-184(%ebp,%ecx), %xmm0
	movl	%edx, %eax
	movl	%edx, %edi
	addl	$1, %edx
	sall	$5, %eax
	movss	%xmm2, __ZL3vsp.lto_priv.0(%eax)
	movss	%xmm0, __ZL3vsp.lto_priv.0+12(%eax)
	movss	%xmm0, __ZL3vsp.lto_priv.0+4(%eax)
L1032:
	movl	$0, _domost_rejectcount
	testl	%edx, %edx
	jle	L1034
	movl	$__ZL3vsp.lto_priv.0+16, %eax
	movl	%edx, %ebx
	xorl	%ecx, %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L1035:
	movss	28(%eax), %xmm0
	movw	%cx, 14(%eax)
	addl	$1, %ecx
	addl	$32, %eax
	movss	%xmm0, -32(%eax)
	cmpw	%bx, %cx
	jne	L1035
	movl	$__ZL3vsp.lto_priv.0+8, %eax
	xorl	%ecx, %ecx
	.p2align 6
	.p2align 4
	.p2align 3
L1036:
	addl	$1, %ecx
	movss	28(%eax), %xmm0
	addl	$32, %eax
	leal	-1(%ecx), %ebx
	movw	%cx, -16(%eax)
	movw	%bx, -12(%eax)
	leal	-2(%ecx), %ebx
	movss	%xmm0, -32(%eax)
	movw	%bx, -14(%eax)
	cmpl	%ecx, %edx
	jne	L1036
L1034:
	movl	%edi, %eax
	xorl	%ebx, %ebx
	movl	%edx, %ecx
	sall	$5, %eax
	sall	$5, %ecx
	movw	%bx, __ZL3vsp.lto_priv.0+24(%eax)
	leal	-1(%edx), %eax
	addl	$__ZL3vsp.lto_priv.0, %ecx
	movw	%ax, __ZL3vsp.lto_priv.0+26
	leal	1(%edx), %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1037:
	movw	%ax, 24(%ecx)
	leal	-2(%eax), %ebx
	addl	$1, %eax
	addl	$32, %ecx
	movw	%bx, -6(%ecx)
	cmpw	$2049, %ax
	jne	L1037
	movss	-184(%ebp), %xmm6
	movl	%edx, %eax
	movaps	%xmm3, %xmm2
	xorl	%edi, %edi
	movb	$0, -236(%ebp)
	sall	$5, %eax
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	movw	%dx, __ZL3vsp.lto_priv.0+65528
	movaps	%xmm6, %xmm1
	movaps	%xmm6, %xmm5
	movl	$2047, %ecx
	movl	%edx, -240(%ebp)
	movl	-264(%ebp), %edx
	movw	%cx, __ZL3vsp.lto_priv.0+26(%eax)
	movl	$1, %eax
	movss	%xmm3, __ZL3xbl.lto_priv.0
	movss	%xmm3, __ZL3xbr.lto_priv.0
	movss	%xmm6, __ZL3xbt.lto_priv.0
	.p2align 4
	.p2align 3
L1042:
	movl	-252(%ebp), %ecx
	movss	(%ecx,%edx,4), %xmm0
	movzbl	-236(%ebp), %ecx
	comiss	%xmm0, %xmm3
	movaps	%xmm0, %xmm7
	minss	%xmm3, %xmm7
	cmova	%eax, %ecx
	comiss	%xmm2, %xmm0
	maxss	%xmm2, %xmm0
	movaps	%xmm7, %xmm3
	movb	%cl, -236(%ebp)
	movl	-244(%ebp), %ecx
	movaps	%xmm0, %xmm2
	cmova	%eax, %ebx
	movss	(%ecx,%edx,4), %xmm0
	comiss	%xmm0, %xmm5
	movaps	%xmm0, %xmm7
	minss	%xmm5, %xmm7
	cmova	%eax, %esi
	comiss	%xmm1, %xmm0
	maxss	%xmm1, %xmm0
	movaps	%xmm7, %xmm5
	cmova	%eax, %edi
	movaps	%xmm0, %xmm1
	subl	$1, %edx
	jne	L1042
	movl	%edi, %eax
	movl	-240(%ebp), %edx
	movzbl	-236(%ebp), %ecx
	testb	%al, %al
	je	L1328
L1043:
	movss	%xmm1, __ZL3xbb.lto_priv.0
	movl	%esi, %eax
	testb	%al, %al
	je	L1044
	movss	%xmm5, __ZL3xbt.lto_priv.0
L1044:
	testb	%bl, %bl
	je	L1045
	movss	%xmm2, __ZL3xbr.lto_priv.0
L1045:
	testb	%cl, %cl
	je	L1046
	movss	%xmm3, __ZL3xbl.lto_priv.0
L1046:
	movl	_numyaxbunches, %eax
	movl	%edx, __ZL4gtag.lto_priv.0
	movl	%edx, __ZL17viewportNodeCount.lto_priv.0
	movl	__ZL22numyaxbunchesallocated, %ebx
	leal	(%eax,%eax), %edx
	leal	1(%edx), %eax
	cmpl	%ebx, %eax
	je	L1048
	cmpl	%ebx, %edx
	jl	L1051
	movss	%xmm4, -236(%ebp)
	jmp	L1050
L1330:
	movl	$49152, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	_numyaxbunches, %eax
	movl	%esi, __ZL7yax_vsp.lto_priv.0(,%ebx,4)
	movl	__ZL22numyaxbunchesallocated, %ebx
	addl	%eax, %eax
	cmpl	%eax, %ebx
	jg	L1329
L1050:
	leal	1(%ebx), %eax
	movl	%eax, __ZL22numyaxbunchesallocated
	movl	$49152, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L1330
	movl	$49152, %eax
	call	__Z13handle_memerri
L1318:
	movl	%esi, -260(%ebp)
	movl	%esi, %eax
	movl	-236(%ebp), %esi
	testb	%cl, %cl
	je	L896
	movl	%eax, __ZZL14findUnusedTilevE14lastUnusedTile
L896:
	movl	%ebx, %eax
	movswl	%bx, %ebx
	jmp	L894
L968:
	movl	$_globalcursectnum, 8(%esp)
	movl	_globalposy, %eax
	movl	%eax, 4(%esp)
	movl	_globalposx, %eax
	movl	%eax, (%esp)
	call	_updatesector
	cmpw	$0, _globalcursectnum
	js	L970
L1304:
	movl	_rendmode, %eax
	jmp	L969
L880:
	movl	_r_usenewshading, %eax
	movl	_g_visibility, %ebx
	cmpl	$4, %eax
	je	L1331
	sall	$2, %ebx
	cmpl	$1, %eax
	jle	L887
	imull	$150, %ebx, %ebx
	movl	$-2109602569, %eax
	imull	%ebx
	leal	(%edx,%ebx), %ecx
	sarl	$31, %ebx
	sarl	$12, %ecx
	subl	%ebx, %ecx
	movl	_globalvisibility2, %ebx
	movl	%ecx, _globalvisibility
	jmp	L882
L879:
	movl	_r_usenewshading, %ecx
	movl	_g_visibility, %eax
	cmpl	$4, %ecx
	je	L1332
	sall	$2, %eax
	imull	_xdimen
	cmpl	$1, %ecx
	jle	L885
	movl	$1680, 8(%esp)
L1300:
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, _globalvisibility
	movl	%eax, %ecx
	movl	_g_visibility, %eax
L884:
	movl	%ebx, %edx
/APP
 # 9475 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, _globalvisibility2
	movl	%eax, %ebx
	jmp	L882
L1313:
	cmpw	$0, _editstatus
	je	L900
	cmpb	$0, _showinvisibility
	je	L900
	movl	_numyaxbunches, %eax
	testl	%eax, %eax
	jle	L900
	xorl	%ebx, %ebx
L901:
	movl	%ebx, %eax
	xorl	%edx, %edx
	call	_yax_tweakpicnums.constprop.0
	movl	%ebx, %eax
	movl	$1, %edx
	addl	$1, %ebx
	call	_yax_tweakpicnums.constprop.0
	cmpl	_numyaxbunches, %ebx
	jl	L901
L900:
	call	_polymer_glinit
	movl	_rendmode, %eax
	movl	$0, -152(%ebp)
	movl	$0, -104(%ebp)
	testl	%eax, %eax
	jne	L1333
L902:
	movl	$2884, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L966
	movl	$2884, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$2884, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L966:
	movl	$0, _polymost2d
L877:
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
L1131:
	.cfi_restore_state
	movss	LC74, %xmm0
	movaps	%xmm0, %xmm3
	jmp	L992
L1321:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	_r_shadeinterpolate, %xmm0
	ucomiss	__ZL25polymost1ShadeInterpolate.lto_priv.0, %xmm0
	jp	L980
	je	L979
L980:
	movss	%xmm0, __ZL25polymost1ShadeInterpolate.lto_priv.0
	movss	%xmm0, 4(%esp)
	movl	__ZL28polymost1ShadeInterpolateLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	movss	__ZL13ghorizcorrect.lto_priv.0, %xmm1
	subl	$8, %esp
	jmp	L982
L1319:
	cmpw	$0, _editstatus
	je	L972
	movl	$16384, (%esp)
	call	*_glad_glClear
	subl	$4, %esp
	jmp	L972
L1333:
	call	_videoBeginDrawing
	cmpl	$2, _pr_verbosity
	jg	L1334
L903:
	xorps	%xmm0, %xmm0
	movl	$_prlights, %esi
	xorl	%ebx, %ebx
	movss	LC8, %xmm7
	cvtsi2ssl	_globalvisibility, %xmm0
	mulss	LC77, %xmm0
	movss	%xmm7, -240(%ebp)
	movss	%xmm0, _gvisibility
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-264(%ebp), %xmm0
	mulss	%xmm7, %xmm0
	mulss	LC78, %xmm0
	movss	%xmm0, -260(%ebp)
	xorps	%xmm0, %xmm0
	movl	$0x43000000, 4(%esp)
	cvtsi2ssl	-280(%ebp), %xmm0
	mulss	%xmm7, %xmm0
	subss	LC80, %xmm0
	movss	%xmm0, (%esp)
	call	_atan2f
	fstps	-236(%ebp)
	movss	-236(%ebp), %xmm0
	mulss	LC107, %xmm0
	movss	%xmm0, _horizang
	jmp	L911
	.p2align 4,,10
	.p2align 3
L904:
	testb	$1, %al
	je	L907
	cmpw	$0, 24(%esi)
	je	L908
	movzwl	34(%esi), %edi
	testw	%di, %di
	jle	L908
	movswl	%di, %eax
	cmpb	$63, _picanm+3(%eax,%eax,4)
	ja	L1335
L909:
	movl	_waloff(,%eax,4), %edi
	testl	%edi, %edi
	je	L1336
L910:
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	call	_texcache_fetch
	testl	%eax, %eax
	je	L908
	movl	12(%eax), %eax
	movl	%eax, 258(%esi)
L908:
	movl	$-1, 250(%esi)
L907:
	addl	$1, %ebx
	addl	$270, %esi
	cmpl	$1024, %ebx
	je	L1337
L911:
	imull	$270, %ebx, %eax
	movzbl	_prlights+254(%eax), %eax
	movl	%eax, %edx
	notl	%edx
	andl	$3, %edx
	jne	L904
	movswl	%bx, %eax
	movl	%ebx, %edi
	call	_polymer_removelight.lto_priv.0
	cmpw	$0, 24(%esi)
	jne	L1338
L905:
	movswl	%di, %eax
	call	_polymer_culllight.lto_priv.0
	testl	%eax, %eax
	je	L906
	imull	$270, %ebx, %eax
	movzbl	_prlights+254(%eax), %eax
	jmp	L904
L970:
	movw	%bx, _globalcursectnum
	testw	%bx, %bx
	js	L877
	jmp	L1304
L1331:
	movl	%ebx, %ecx
	movl	_globalvisibility2, %ebx
	sall	$5, %ecx
	movl	%ecx, _globalvisibility
	jmp	L882
L1332:
	movl	_xdimen, %ecx
	imull	%eax, %ecx
	movl	%ecx, _globalvisibility
	jmp	L884
	.p2align 4,,10
	.p2align 3
L906:
	imull	$270, %ebx, %edx
	movzbl	_prlights+254(%edx), %eax
	andl	$-3, %eax
	movb	%al, _prlights+254(%edx)
	jmp	L904
L1338:
	movl	%esi, %eax
	call	_polymer_processspotlight.lto_priv.0
	jmp	L905
L1336:
	movl	%eax, -236(%ebp)
	call	_tileLoad.isra.0
	movl	-236(%ebp), %eax
	jmp	L910
L1335:
	call	_animateoffs
	addl	%eax, %edi
	movswl	%di, %eax
	jmp	L909
L1136:
	movl	-244(%ebp), %edx
	movaps	%xmm3, %xmm6
	jmp	L1017
L1287:
	comiss	%xmm0, %xmm1
	cmovb	%esi, %edi
	cmovb	%ebx, %esi
	addl	$1, %eax
	movl	%edi, %ebx
	sall	$5, %ebx
	movss	%xmm0, __ZL3vsp.lto_priv.0(%ebx)
	movss	-184(%ebp,%edx), %xmm0
	movss	%xmm0, __ZL3vsp.lto_priv.0+4(%ebx)
	movss	-184(%ebp,%ecx), %xmm0
	movss	%xmm0, __ZL3vsp.lto_priv.0+12(%ebx)
	movl	-236(%ebp), %ebx
	cmpl	%eax, -240(%ebp)
	jg	L1025
	testl	%ebx, %ebx
	je	L1139
	xorl	%eax, %eax
	subl	$1, %ebx
	movl	%ebx, -236(%ebp)
	jns	L1027
	movl	-260(%ebp), %ecx
	movss	(%ecx), %xmm2
	movl	-256(%ebp), %ecx
	movl	%ecx, -236(%ebp)
	jmp	L1028
L1025:
	cmpl	%eax, %ebx
	je	L1293
	subl	$1, %ebx
	movl	%ebx, -236(%ebp)
	jns	L1027
L1029:
	movl	-260(%ebp), %ecx
	movl	-256(%ebp), %ebx
	movss	(%ecx), %xmm2
	movl	%ebx, -236(%ebp)
	leal	0(,%ebx,4), %ecx
	jmp	L1018
L1311:
	movl	__ZL13oviewingrange.lto_priv.0, %eax
	cmpl	%eax, _viewingrange
	jne	L888
	jmp	L889
L1329:
	movss	-236(%ebp), %xmm4
	addl	$1, %eax
L1051:
	cmpl	%ebx, %eax
	jge	L1048
	movss	%xmm4, -236(%ebp)
L1052:
	subl	$1, %ebx
	movl	__ZL7yax_vsp.lto_priv.0(,%ebx,4), %eax
	movl	%ebx, __ZL22numyaxbunchesallocated
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	__ZL22numyaxbunchesallocated, %eax
	subl	$4, %esp
	leal	-1(%eax), %ebx
	movl	_numyaxbunches, %eax
	movl	%ebx, __ZL22numyaxbunchesallocated
	movl	$0, __ZL7yax_vsp.lto_priv.0(,%ebx,4)
	leal	1(%eax,%eax), %eax
	cmpl	%eax, %ebx
	jg	L1052
	movss	-236(%ebp), %xmm4
L1048:
	movzwl	_searchit, %eax
	movl	$0, _doeditorcheck
	testw	%ax, %ax
	jle	L1053
	movss	_ghalfx, %xmm3
	xorps	%xmm0, %xmm0
	xorps	%xmm2, %xmm2
	movss	__ZL6ghoriz.lto_priv.0, %xmm5
	cvtsi2ssl	_searchx, %xmm0
	movss	_gctang, %xmm1
	movss	_gchang, %xmm6
	cvtsi2ssl	_searchy, %xmm2
	movss	_gshang, %xmm7
	subss	%xmm3, %xmm0
	subss	%xmm5, %xmm2
	mulss	%xmm4, %xmm0
	mulss	%xmm4, %xmm2
	movss	_gstang, %xmm4
	mulss	%xmm0, %xmm4
	mulss	%xmm2, %xmm1
	mulss	_gctang, %xmm0
	mulss	_gstang, %xmm2
	subss	%xmm4, %xmm1
	movaps	%xmm3, %xmm4
	addss	__ZL7ghoriz2.lto_priv.0, %xmm1
	divss	_gvrcorrection, %xmm4
	mulss	%xmm4, %xmm6
	addss	%xmm2, %xmm0
	movss	_gchang, %xmm2
	mulss	%xmm1, %xmm7
	mulss	%xmm1, %xmm2
	subss	%xmm7, %xmm6
	movaps	%xmm4, %xmm7
	mulss	_gshang, %xmm4
	divss	%xmm6, %xmm7
	addss	%xmm4, %xmm2
	mulss	%xmm7, %xmm0
	mulss	%xmm7, %xmm2
	addss	%xmm3, %xmm0
	addss	%xmm5, %xmm2
	movss	%xmm0, _fsearchx
	movss	%xmm2, _fsearchy
	cmpw	$2, %ax
	jne	L1054
	movl	$0x00000000, _fsearchz
L1054:
	movss	LC0, %xmm1
	movl	_r_usenewaspect, %eax
	testl	%eax, %eax
	je	L1055
	movss	_fxdim, %xmm1
	divss	_fydim, %xmm1
	divss	LC104, %xmm1
L1055:
	subss	%xmm3, %xmm0
	movss	%xmm2, -252(%ebp)
	movss	%xmm5, -248(%ebp)
	divss	%xmm3, %xmm0
	movss	_fcosglobalang, %xmm3
	movaps	%xmm3, %xmm4
	movss	%xmm3, -236(%ebp)
	mulss	%xmm1, %xmm0
	movss	_fsinglobalang, %xmm1
	movss	%xmm1, -240(%ebp)
	movaps	%xmm0, %xmm6
	movss	%xmm0, -244(%ebp)
	mulss	%xmm1, %xmm6
	subss	%xmm6, %xmm4
	movss	%xmm4, (%esp)
	call	_lrintf
	movss	-244(%ebp), %xmm0
	mulss	-236(%ebp), %xmm0
	addss	-240(%ebp), %xmm0
	movl	%eax, %ebx
	movss	%xmm0, (%esp)
	call	_lrintf
	movss	-248(%ebp), %xmm5
	movss	-252(%ebp), %xmm2
	movss	LC105, %xmm0
	movl	%eax, %esi
	subss	%xmm5, %xmm2
	mulss	%xmm2, %xmm0
	mulss	LC106, %xmm0
	divss	%xmm5, %xmm0
	mulss	LC16, %xmm0
	movss	%xmm0, (%esp)
	call	_lrintf
	movl	_globalposz, %edx
	movss	_globalposx, %xmm0
	movl	$1, _hitallsprites
	movss	_globalposy, %xmm6
	movl	%edx, -224(%ebp)
	unpcklps	%xmm6, %xmm0
	movlps	%xmm0, -232(%ebp)
	movl	$-65488, 24(%esp)
	movl	$_polymost_hitdata, 20(%esp)
	movl	%eax, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movswl	_globalcursectnum, %eax
	movl	%eax, 4(%esp)
	leal	-232(%ebp), %eax
	movl	%eax, (%esp)
	call	_hitscan
	movl	$0, _hitallsprites
L1053:
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	je	L1339
L1056:
	movswl	_globalcursectnum, %eax
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	xorl	%edi, %edi
	movw	%bx, _numbunches
	movw	%si, _numscans
	movl	%eax, %edx
	movw	%di, _maskwallcnt
	testl	%eax, %eax
	js	L1057
	movl	_automapping, %ecx
	testl	%ecx, %ecx
	je	L1058
	movl	%edx, %ecx
	sarl	$3, %eax
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.12(%ecx), %ecx
	orb	%cl, _show2dsector(%eax)
L1058:
	movw	%dx, _sectorborder
	call	_polymost_scansector.part.0
	movzwl	_numbunches, %ebx
	movss	_grhalfxdown10, %xmm0
	movss	%xmm0, _grhalfxdown10x
	cmpb	$0, _inpreparemirror
	je	L1059
	testw	%bx, %bx
	jle	L1060
	xorps	LC9, %xmm0
	xorl	%eax, %eax
	movss	%xmm0, _grhalfxdown10x
	call	__ZL17polymost_drawallsi.lto_priv.0
	movzwl	_numbunches, %eax
	leal	-1(%eax), %ebx
	movswl	%bx, %edi
	movw	%bx, _numbunches
	movzwl	_bunchfirst(%edi,%edi), %eax
	movw	%ax, _bunchfirst
	movzwl	_bunchlast(%edi,%edi), %eax
	movw	%ax, _bunchlast
L1059:
	testw	%bx, %bx
	jle	L1061
	movswl	%bx, %edi
	.p2align 4
	.p2align 3
L1075:
	leal	3(%edi), %eax
	movl	$0, 4(%esp)
	xorl	%esi, %esi
	movl	%eax, 8(%esp)
	movl	$_ptempbuf, (%esp)
	call	_memset
	movb	$1, _ptempbuf
	cmpw	$1, %bx
	je	L1062
	movl	$1, %ebx
	.p2align 4
	.p2align 3
L1066:
	movl	%esi, %edx
	movl	%ebx, %eax
	call	__ZL19polymost_bunchfrontii.lto_priv.0
	testl	%eax, %eax
	js	L1064
	movb	$1, _ptempbuf(%ebx)
	jne	L1064
	movb	$1, _ptempbuf(%esi)
	movl	%ebx, %esi
L1064:
	addl	$1, %ebx
	cmpl	%ebx, %edi
	jne	L1066
L1062:
	xorl	%ebx, %ebx
	movl	$1, %eax
	jmp	L1072
	.p2align 4,,10
	.p2align 3
L1340:
	movl	%esi, %edx
	movl	%ebx, %eax
	call	__ZL19polymost_bunchfrontii.lto_priv.0
	testl	%eax, %eax
	js	L1305
	movb	$1, _ptempbuf(%ebx)
	jne	L1305
	movb	$1, _ptempbuf(%esi)
	movl	%ebx, %esi
	movl	$1, %ebx
	cmpl	%ebx, %edi
	jle	L1071
	.p2align 5
	.p2align 4
	.p2align 3
L1341:
	movzbl	_ptempbuf(%ebx), %eax
L1072:
	testb	%al, %al
	je	L1340
L1305:
	addl	$1, %ebx
	cmpl	%ebx, %edi
	jg	L1341
L1071:
	movl	%esi, %eax
	call	__ZL17polymost_drawallsi.lto_priv.0
	movl	_automapping, %edi
	testl	%edi, %edi
	jne	L1342
L1073:
	movzwl	_numbunches, %eax
	leal	-1(%eax), %ebx
	movswl	%bx, %edi
	movw	%bx, _numbunches
	movzwl	_bunchfirst(%edi,%edi), %eax
	movw	%ax, _bunchfirst(%esi,%esi)
	movzwl	_bunchlast(%edi,%edi), %eax
	movw	%ax, _bunchlast(%esi,%esi)
	testw	%bx, %bx
	jg	L1075
	jmp	L1061
L1057:
	movss	_grhalfxdown10, %xmm0
	movss	%xmm0, _grhalfxdown10x
	cmpb	$0, _inpreparemirror
	je	L1061
L1060:
	movb	$0, _inpreparemirror
L1061:
	movl	$2932, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$515, %eax
	je	L1076
	movl	$515, (%esp)
	call	*_glad_glDepthFunc
	movl	$515, %ecx
	movl	$2932, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1076:
	call	__ZL23polymost_identityrotmatv.lto_priv.0
L1306:
	call	_videoEndDrawing
	movl	_rendmode, %eax
	testl	%eax, %eax
	je	L1077
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
L1342:
	.cfi_restore_state
	movswl	_bunchfirst(%esi,%esi), %ecx
	testl	%ecx, %ecx
	js	L1073
	.p2align 6
	.p2align 4
	.p2align 3
L1074:
	movswl	_thewall(%ecx,%ecx), %eax
	movswl	_bunchp2(%ecx,%ecx), %ecx
	movl	%eax, %edx
	sarl	$3, %eax
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.12(%edx), %edx
	orb	%dl, _show2dwall(%eax)
	testl	%ecx, %ecx
	jns	L1074
	jmp	L1073
L1322:
	movl	_r_yshearing, %esi
	testl	%esi, %esi
	jne	L989
	call	__ZL18get_projhack_ratiov.part.0.lto_priv.0
	movss	LC0, %xmm4
	fstps	-236(%ebp)
	divss	-236(%ebp), %xmm4
	jmp	L991
L1320:
	movl	_windowxy2+4, %eax
	xorps	%xmm0, %xmm0
	xorps	%xmm3, %xmm3
	xorps	%xmm4, %xmm4
	subl	_windowxy1+4, %eax
	movss	%xmm1, -244(%ebp)
	cvtsi2ssl	_yxaspect, %xmm4
	cvtsi2ssl	%eax, %xmm0
	movl	_windowxy2, %eax
	subl	_windowxy1, %eax
	movss	%xmm2, -248(%ebp)
	cvtsi2ssl	%eax, %xmm3
	mulss	%xmm1, %xmm0
	mulss	%xmm4, %xmm3
	mulss	LC95, %xmm3
	mulss	LC84, %xmm0
	divss	%xmm3, %xmm0
	movss	%xmm0, (%esp)
	call	_atanf
	xorps	%xmm3, %xmm3
	movss	-244(%ebp), %xmm1
	fstps	-236(%ebp)
	movss	-236(%ebp), %xmm0
	mulss	LC96, %xmm0
	addss	LC97, %xmm0
	subss	LC98, %xmm0
	comiss	%xmm3, %xmm0
	jbe	L977
	mulss	LC99, %xmm0
	movss	-248(%ebp), %xmm2
	addss	LC0, %xmm0
	divss	%xmm0, %xmm2
	movss	%xmm2, _gvrcorrection
	jmp	L977
L983:
	movss	_ghalfx, %xmm1
	movss	_gvrcorrection, %xmm3
	mulss	%xmm1, %xmm1
	mulss	%xmm3, %xmm3
	divss	%xmm3, %xmm1
	movaps	%xmm0, %xmm3
	mulss	%xmm0, %xmm3
	addss	%xmm3, %xmm1
	xorps	%xmm3, %xmm3
	ucomiss	%xmm1, %xmm3
	ja	L1282
	sqrtss	%xmm1, %xmm1
	divss	%xmm1, %xmm0
	movss	LC0, %xmm1
	movss	%xmm0, _gshang
	mulss	%xmm0, %xmm0
	subss	%xmm0, %xmm1
	ucomiss	%xmm1, %xmm3
	ja	L1343
L987:
	sqrtss	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	jmp	L984
L1337:
	movl	_pr_shadows, %ebx
	movl	$0, _depth
	testl	%ebx, %ebx
	je	L912
	movl	_lightcount, %edx
	testl	%edx, %edx
	je	L912
	movl	_pr_shadowcount, %ecx
	testl	%ecx, %ecx
	jle	L912
	movl	_globalposx, %eax
	movl	_qglobalang, %edi
	xorl	%esi, %esi
	movl	$0, -236(%ebp)
	movl	_globalposz, %ecx
	movl	_viewangle, %ebx
	movl	%eax, -280(%ebp)
	movl	_globalposy, %eax
	movl	%edi, -296(%ebp)
	xorl	%edi, %edi
	testl	%edx, %edx
	jle	L914
	movl	%eax, -284(%ebp)
	movl	%ecx, -288(%ebp)
	movl	%ebx, -292(%ebp)
	jmp	L1302
	.p2align 5
	.p2align 4,,10
	.p2align 3
L915:
	addl	$1, %edi
L1302:
	imull	$270, %edi, %eax
	testb	$1, _prlights+254(%eax)
	je	L915
	imull	$270, %edi, %eax
	leal	_prlights(%eax), %ebx
	cmpw	$0, _prlights+24(%eax)
	je	L917
	testb	$1, _prlights+38(%eax)
	je	L917
	movzbl	_prlights+254(%eax), %ecx
	testb	$4, %cl
	je	L917
	andl	$-5, %ecx
	addl	$1, %esi
	movb	%cl, _prlights+254(%eax)
	movl	%esi, 250(%ebx)
	cmpl	$2, _pr_verbosity
	jg	L919
L921:
	movl	%esi, %eax
L920:
	movl	_prrts, %edx
	imull	$270, %edi, %ebx
	leal	(%eax,%eax,2), %eax
	leal	(%edx,%eax,8), %eax
	movl	12(%eax), %eax
	movl	$36160, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glBindFramebufferEXT
	subl	$8, %esp
	movl	$2048, (%esp)
	call	*_glad_glPushAttrib
	movl	_prlights+250(%ebx), %edx
	subl	$4, %esp
	leal	(%edx,%edx,2), %ecx
	movl	_prrts, %edx
	leal	(%edx,%ecx,8), %edx
	movl	20(%edx), %ecx
	movl	%ecx, 12(%esp)
	movl	16(%edx), %edx
	movl	$0, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	*_glad_glViewport
	subl	$16, %esp
	movl	$16640, (%esp)
	call	*_glad_glClear
	subl	$4, %esp
	movl	$5889, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glPushMatrix
	leal	_prlights+42(%ebx), %edx
	movl	%edx, (%esp)
	call	*_glad_glLoadMatrixf
	subl	$4, %esp
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	leal	_prlights+106(%ebx), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	call	*_glad_glLoadMatrixf
	movl	$32823, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	call	_inthash_find
	cmpl	$1, %eax
	je	L922
	movl	$32823, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$32823, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L922:
	movss	LC83, %xmm6
	movss	LC84, %xmm7
	movss	%xmm6, 4(%esp)
	movss	%xmm7, (%esp)
	call	*_glad_glPolygonOffset
	imull	$270, %edi, %edx
	xorps	%xmm0, %xmm0
	subl	$8, %esp
	movl	_prlights(%edx), %ecx
	movl	_prlights+4(%edx), %eax
	movl	%edx, -300(%ebp)
	cvtsi2ssl	%ecx, %xmm0
	movl	%eax, _globalposy
	movl	%ecx, _globalposx
	movss	%xmm0, _fglobalposx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movl	_prlights+8(%edx), %eax
	movl	%eax, _globalposz
	movss	%xmm0, _fglobalposy
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movswl	_prlights+20(%edx), %eax
	sall	$16, %eax
	movl	%eax, _viewangle
	movss	%xmm0, _fglobalposz
	call	_set_globalang
	movl	_depth, %eax
	movl	-300(%ebp), %edx
	movl	_overridematerial, %ebx
	movl	$290, _overridematerial
	movl	$0, _mirrors(,%eax,8)
	leal	1(%eax), %ecx
	movswl	_prlights+26(%edx), %eax
	movl	%ecx, _depth
	call	_polymer_displayrooms.lto_priv.0
	movl	$32823, %edx
	movl	$_gl+88, %eax
	subl	$1, _depth
	movl	%ebx, _overridematerial
	call	_inthash_find
	testl	%eax, %eax
	je	L923
	movl	$32823, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$32823, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L923:
	movl	$5889, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glPopMatrix
	call	*_glad_glPopAttrib
	movl	$0, 4(%esp)
	movl	$36160, (%esp)
	call	*_glad_glBindFramebufferEXT
	subl	$8, %esp
L917:
	addl	$1, -236(%ebp)
	movl	-236(%ebp), %eax
	cmpl	_lightcount, %eax
	jge	L1290
	addl	$1, %edi
	cmpl	_pr_shadowcount, %esi
	jl	L1302
L1290:
	movl	-284(%ebp), %eax
	movl	-288(%ebp), %ecx
	movl	-292(%ebp), %ebx
L914:
	movl	-280(%ebp), %edi
	xorps	%xmm0, %xmm0
	movl	%eax, _globalposy
	movl	%ecx, _globalposz
	cvtsi2ssl	%edi, %xmm0
	movl	%edi, _globalposx
	movl	%ebx, _viewangle
	movss	%xmm0, _fglobalposx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movl	-296(%ebp), %eax
	movss	%xmm0, _fglobalposy
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	movss	%xmm0, _fglobalposz
	call	_set_globalang
L912:
	movss	_horizang, %xmm0
	movss	LC85, %xmm1
	comiss	%xmm0, %xmm1
	jbe	L925
	addss	LC86, %xmm0
L925:
	movss	%xmm0, -236(%ebp)
	movswl	__ZL6cursky.lto_priv.0, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$1, _drawingskybox
	movl	$0, (%esp)
	call	_texcache_fetch
	movss	-236(%ebp), %xmm0
	movl	$0, _drawingskybox
	testl	%eax, %eax
	je	L927
	testb	$4, 34(%eax)
	je	L927
L928:
	movss	%xmm0, -236(%ebp)
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glLoadIdentity
	movl	$0xbf800000, 12(%esp)
	movl	$0x00000000, 8(%esp)
	movl	$0x00000000, 4(%esp)
	movl	$0x00000000, (%esp)
	call	*_glad_glRotatef
	subl	$16, %esp
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 8(%esp)
	movl	$0x3f800000, 4(%esp)
	movss	-236(%ebp), %xmm0
	movss	%xmm0, (%esp)
	call	*_glad_glRotatef
	subl	$16, %esp
	movl	$0x00000000, 12(%esp)
	movl	$0x3f800000, 8(%esp)
	movl	$0x00000000, 4(%esp)
	movss	-260(%ebp), %xmm4
	movss	%xmm4, (%esp)
	call	*_glad_glRotatef
	movss	LC87, %xmm2
	subl	$16, %esp
	movss	%xmm2, 8(%esp)
	movss	%xmm2, 4(%esp)
	movss	%xmm2, (%esp)
	call	*_glad_glScalef
	movss	-276(%ebp), %xmm1
	mulss	LC88, %xmm1
	movss	-268(%ebp), %xmm7
	movss	-272(%ebp), %xmm0
	subl	$12, %esp
	xorps	LC9, %xmm0
	movss	%xmm7, 8(%esp)
	movss	%xmm1, 4(%esp)
	movss	%xmm1, -272(%ebp)
	movss	%xmm0, (%esp)
	movss	%xmm0, -236(%ebp)
	call	*_glad_glTranslatef
	subl	$12, %esp
	movl	$_rootskymodelviewmatrix, 4(%esp)
	movl	$2982, (%esp)
	call	*_glad_glGetFloatv
	subl	$8, %esp
	movl	$_rootskymodelviewmatrix, _curskymodelviewmatrix
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glLoadIdentity
	movl	$0xbf800000, 12(%esp)
	movl	$0x00000000, 8(%esp)
	movl	$0x00000000, 4(%esp)
	movl	$0x00000000, (%esp)
	call	*_glad_glRotatef
	subl	$16, %esp
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 8(%esp)
	movl	$0x3f800000, 4(%esp)
	movss	_horizang, %xmm3
	movss	%xmm3, (%esp)
	call	*_glad_glRotatef
	subl	$16, %esp
	movl	$0x00000000, 12(%esp)
	movl	$0x3f800000, 8(%esp)
	movl	$0x00000000, 4(%esp)
	movss	-260(%ebp), %xmm4
	movss	%xmm4, (%esp)
	call	*_glad_glRotatef
	movss	LC87, %xmm2
	subl	$16, %esp
	movss	%xmm2, 8(%esp)
	movss	%xmm2, 4(%esp)
	movss	%xmm2, (%esp)
	call	*_glad_glScalef
	movss	-268(%ebp), %xmm7
	subl	$12, %esp
	movss	%xmm7, 8(%esp)
	movss	-272(%ebp), %xmm1
	movss	%xmm1, 4(%esp)
	movss	-236(%ebp), %xmm0
	movss	%xmm0, (%esp)
	call	*_glad_glTranslatef
	subl	$12, %esp
	movl	$_rootmodelviewmatrix, 4(%esp)
	movl	$2982, (%esp)
	call	*_glad_glGetFloatv
	movzwl	-244(%ebp), %eax
	subl	$8, %esp
	movw	%ax, -184(%ebp)
	leal	-184(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-256(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-252(%ebp), %eax
	movl	%eax, (%esp)
	call	_updatesector
	movswl	-184(%ebp), %ecx
	testw	%cx, %cx
	js	L929
	movzwl	_numsectors, %edx
	cmpw	%dx, %cx
	jge	L929
	leal	-1(%edx), %eax
	movw	%cx, -244(%ebp)
	cwtl
	jmp	L935
L927:
	mulss	__ZL12curskyangmul.lto_priv.0, %xmm0
	jmp	L928
L929:
	cmpl	$1, _pr_verbosity
	jg	L931
L1303:
	movzwl	_numsectors, %edx
	movswl	%dx, %eax
	subl	$1, %eax
	js	L934
	.p2align 6
	.p2align 4
	.p2align 3
L935:
	movl	_prsectors(,%eax,4), %ecx
	andb	$-3, 560(%ecx)
	movl	_prsectors(,%eax,4), %ecx
	movl	$0x00000000, 516(%ecx)
	movl	_prsectors(,%eax,4), %ecx
	movl	$0x00000000, 520(%ecx)
	subl	$1, %eax
	jnb	L935
L934:
	movswl	_numwalls, %eax
	subl	$1, %eax
	js	L936
	.p2align 5
	.p2align 4
	.p2align 3
L937:
	movl	_prwalls(,%eax,4), %ecx
	andb	$-3, 796(%ecx)
	subl	$1, %eax
	jnb	L937
L936:
	movzwl	_searchit, %eax
	cmpw	$2, %ax
	je	L1344
	testw	%ax, %ax
	jne	L939
	movl	_polymersearching, %edi
	testl	%edi, %edi
	jne	L1345
L939:
	movzwl	-244(%ebp), %eax
	testw	%ax, %ax
	js	L942
	cmpw	%ax, %dx
	jg	L1346
L942:
	movl	$1, _prcanbucket
	cmpw	$0, _editstatus
	je	L944
L948:
	movl	$_rootmodelviewmatrix, _curmodelviewmatrix
	testw	%dx, %dx
	jle	L952
L945:
	movswl	%dx, %esi
L962:
	leal	-1(%esi), %ebx
	movswl	%bx, %ebx
	cmpl	$2, _pr_nullrender
	jg	L953
	movl	%ebx, %eax
	call	_polymer_updatesector.part.0.isra.0
L953:
	movl	%ebx, %eax
	xorl	%edx, %edx
	call	_polymer_drawsector.lto_priv.0
	movswl	_headspritesect-2(%esi,%esi), %eax
	testl	%eax, %eax
	js	L954
	movl	_tsprite, %ecx
	movl	%ecx, -240(%ebp)
	movl	_sprite, %ecx
	cmpb	$0, _showinvisibility
	jne	L1292
	movl	_spritesortcnt, %ebx
	xorl	%edi, %edi
	movl	%ebx, -236(%ebp)
	.p2align 4
	.p2align 3
L959:
	imull	$44, %eax, %edx
	addl	%ecx, %edx
	cmpw	$0, 12(%edx)
	js	L958
	cmpb	$0, 20(%edx)
	je	L958
	cmpb	$0, 21(%edx)
	je	L958
	cmpl	$4095, -236(%ebp)
	jle	L1347
	.p2align 4
	.p2align 3
L958:
	movswl	_nextspritesect(%eax,%eax), %eax
	testl	%eax, %eax
	jns	L959
	movl	%edi, %eax
	movl	-236(%ebp), %ebx
	testb	%al, %al
	je	L954
	movl	%ebx, _spritesortcnt
L954:
	subl	$1, %esi
	jne	L962
L952:
	movswl	_numwalls, %ebx
	testw	%bx, %bx
	jle	L963
L964:
	leal	-1(%ebx), %esi
	movswl	%si, %eax
	call	_polymer_updatewall.lto_priv.0
	movswl	_wallsect-2(%ebx,%ebx), %eax
	movswl	%si, %edx
	call	_polymer_drawwall.lto_priv.0
	subl	$1, %ebx
	jne	L964
L963:
	call	_polymer_emptybuckets.lto_priv.0
	movl	-264(%ebp), %eax
	movl	%eax, _viewangle
	call	_videoEndDrawing
	jmp	L902
L1292:
	movl	%ecx, -236(%ebp)
	jmp	L955
	.p2align 5
	.p2align 4,,10
	.p2align 3
L961:
	movswl	_nextspritesect(%eax,%eax), %eax
	testl	%eax, %eax
	js	L954
L955:
	imull	$44, %eax, %edx
	addl	-236(%ebp), %edx
	cmpb	$0, 20(%edx)
	je	L961
	cmpb	$0, 21(%edx)
	je	L961
	movl	_spritesortcnt, %ebx
	cmpl	$4095, %ebx
	jg	L961
	leal	1(%ebx), %edi
	movl	%edi, _spritesortcnt
	movl	(%edx), %edi
	imull	$44, %ebx, %ebx
	addl	-240(%ebp), %ebx
	movl	%edi, (%ebx)
	movl	4(%edx), %edi
	movl	%edi, 4(%ebx)
	movl	8(%edx), %edi
	movl	%edi, 8(%ebx)
	movzwl	12(%edx), %edi
	movw	%di, 12(%ebx)
	movzwl	14(%edx), %edi
	movw	%di, 14(%ebx)
	movzbl	16(%edx), %ecx
	movb	%cl, 16(%ebx)
	movzbl	17(%edx), %ecx
	movb	%cl, 17(%ebx)
	movzbl	19(%edx), %ecx
	movb	%cl, 19(%ebx)
	movzbl	20(%edx), %ecx
	movb	%cl, 20(%ebx)
	movzbl	21(%edx), %ecx
	movb	%cl, 21(%ebx)
	movzbl	22(%edx), %ecx
	movb	%cl, 22(%ebx)
	movzbl	23(%edx), %ecx
	movb	%cl, 23(%ebx)
	movzwl	24(%edx), %edi
	movw	%di, 24(%ebx)
	movzwl	26(%edx), %edi
	movw	%di, 26(%ebx)
	movzwl	28(%edx), %edi
	movw	%di, 28(%ebx)
	movl	32(%edx), %edi
	movl	%edi, 32(%ebx)
	movzwl	36(%edx), %edi
	movw	%di, 36(%ebx)
	movzwl	38(%edx), %edi
	movw	%di, 38(%ebx)
	movzwl	40(%edx), %edi
	movw	%di, 40(%ebx)
	movzwl	42(%edx), %edx
	movb	$0, 18(%ebx)
	movw	%dx, 42(%ebx)
	movw	%ax, 30(%ebx)
	jmp	L961
L1347:
	movl	(%edx), %ebx
	imull	$44, -236(%ebp), %edi
	addl	-240(%ebp), %edi
	movl	%ebx, (%edi)
	movl	4(%edx), %ebx
	movl	%ebx, 4(%edi)
	movl	8(%edx), %ebx
	movl	%ebx, 8(%edi)
	movzwl	12(%edx), %ebx
	movw	%bx, 12(%edi)
	movzwl	14(%edx), %ebx
	movw	%bx, 14(%edi)
	movzbl	16(%edx), %ebx
	movb	%bl, 16(%edi)
	movzbl	17(%edx), %ebx
	movb	%bl, 17(%edi)
	movzbl	19(%edx), %ebx
	movb	%bl, 19(%edi)
	movzbl	20(%edx), %ebx
	movb	%bl, 20(%edi)
	movzbl	21(%edx), %ebx
	movb	%bl, 21(%edi)
	movzbl	22(%edx), %ebx
	movb	%bl, 22(%edi)
	movzbl	23(%edx), %ebx
	movb	%bl, 23(%edi)
	movzwl	24(%edx), %ebx
	movw	%bx, 24(%edi)
	movzwl	26(%edx), %ebx
	movw	%bx, 26(%edi)
	movzwl	28(%edx), %ebx
	movw	%bx, 28(%edi)
	movl	32(%edx), %ebx
	movl	%ebx, 32(%edi)
	movzwl	36(%edx), %ebx
	movw	%bx, 36(%edi)
	movzwl	38(%edx), %ebx
	movw	%bx, 38(%edi)
	movzwl	40(%edx), %ebx
	movw	%bx, 40(%edi)
	movzwl	42(%edx), %edx
	movb	$0, 18(%edi)
	movw	%dx, 42(%edi)
	movw	%ax, 30(%edi)
	movl	-236(%ebp), %edi
	addl	$1, %edi
	movl	%edi, -236(%ebp)
	movl	$1, %edi
	jmp	L958
L1134:
	movaps	%xmm3, %xmm0
	xorl	%eax, %eax
	jmp	L1012
L1078:
	cmpb	$0, _inpreparemirror
	je	L1123
L1125:
	movb	$0, _inpreparemirror
	jmp	L1123
L887:
	movl	$-368140053, %eax
	imull	%ebx
	leal	(%edx,%ebx), %ecx
	sarl	$31, %ebx
	sarl	$5, %ecx
	subl	%ebx, %ecx
	movl	_globalvisibility2, %ebx
	movl	%ecx, _globalvisibility
	jmp	L882
L885:
	movl	$1100, 8(%esp)
	jmp	L1300
L1323:
	movl	$2932, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$515, %eax
	je	L1306
	movl	$515, (%esp)
	call	*_glad_glDepthFunc
	movl	$515, %ecx
	movl	$2932, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
	jmp	L1306
L1324:
	leal	-184(%ebp), %eax
	movl	%eax, -244(%ebp)
	leal	-216(%ebp), %eax
	movl	%eax, -252(%ebp)
	jmp	L1006
L1128:
	movl	$-1, %ebx
	jmp	L894
L1328:
	movaps	%xmm6, %xmm1
	jmp	L1043
L1088:
	movl	-244(%ebp), %ecx
	jmp	L1083
L944:
	movl	_pr_verbosity, %esi
	testl	%esi, %esi
	jle	L948
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movswl	%dx, %ebx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	movswl	-244(%ebp), %ecx
	cmpl	%ebx, %ecx
	jnb	L950
	cmpl	$6, %eax
	jle	L948
	movl	-104(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-152(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-248(%ebp), %eax
	movl	%ecx, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$LC90, 12(%esp)
	movl	$1223, 8(%esp)
	movl	$LC76, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movzwl	_numsectors, %edx
	jmp	L948
L931:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L1303
	movl	%ecx, 16(%esp)
	movl	$LC89, 12(%esp)
	movl	$1180, 8(%esp)
	movl	$LC76, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1303
L1345:
	movl	_globaloldoverridematerial, %eax
	movl	$0, _polymersearching
	movl	%eax, _overridematerial
	jmp	L939
L1346:
	leal	-152(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-256(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-252(%ebp), %eax
	movl	%eax, 4(%esp)
	movswl	-244(%ebp), %ebx
	movl	_sector, %eax
	leal	(%ebx,%ebx,4), %edx
	leal	(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movzwl	_numsectors, %edx
	cmpw	%dx, %bx
	jge	L942
	movl	-248(%ebp), %eax
	cmpl	-152(%ebp), %eax
	jg	L1348
	movl	-248(%ebp), %eax
	cmpl	-104(%ebp), %eax
	jl	L942
	movl	%ebx, %eax
	call	_polymer_displayrooms.lto_priv.0
	movl	-264(%ebp), %eax
	movl	$_rootmodelviewmatrix, _curmodelviewmatrix
	movl	%eax, _viewangle
	call	_set_globalang
	movss	-240(%ebp), %xmm4
	movss	LC92, %xmm0
	movss	_fcosglobalang, %xmm1
	movss	_fviewingrange, %xmm2
	mulss	%xmm0, %xmm1
	mulss	_fsinglobalang, %xmm0
	movss	%xmm1, _gcosang
	mulss	%xmm2, %xmm1
	movss	%xmm0, _gsinang
	mulss	%xmm2, %xmm0
	mulss	%xmm4, %xmm1
	mulss	%xmm4, %xmm0
	movss	%xmm1, _gcosang2
	movss	%xmm0, _gsinang2
	cmpl	$2, _pr_verbosity
	jg	L1349
L965:
	call	_videoEndDrawing
	jmp	L902
L1344:
	movl	_polymersearching, %eax
	testl	%eax, %eax
	jne	L939
	movl	_overridematerial, %eax
	movl	$1, _polymersearching
	movl	$384, _overridematerial
	movl	%eax, _globaloldoverridematerial
	jmp	L939
L1339:
	call	__ZL21polymost_updaterotmatv.part.0.lto_priv.0
	jmp	L1056
L1334:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L903
	movl	$LC75, 12(%esp)
	movl	$1109, 8(%esp)
	movl	$LC76, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L903
L1133:
	xorl	%eax, %eax
	jmp	L1005
L950:
	cmpl	$6, %eax
	jle	L948
	movl	-248(%ebp), %eax
	movl	%ecx, 16(%esp)
	movl	$LC91, 12(%esp)
	movl	%eax, 20(%esp)
	movl	$1225, 8(%esp)
	movl	$LC76, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movzwl	_numsectors, %edx
	jmp	L948
L1293:
	movl	%esi, %edx
L1026:
	leal	0(,%eax,4), %ecx
	movss	-216(%ebp,%ecx), %xmm2
	jmp	L1030
L1139:
	movl	%esi, %edx
	xorl	%eax, %eax
	jmp	L1026
L1348:
	movl	$1, _prcanbucket
	cmpw	$0, _editstatus
	je	L944
	movl	$_rootmodelviewmatrix, _curmodelviewmatrix
	jmp	L945
L1349:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L965
	movl	$LC93, 12(%esp)
	movl	$1268, 8(%esp)
	movl	$LC76, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L965
L919:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$6, %eax
	jle	L921
	movl	%edi, 16(%esp)
	movl	$LC82, 12(%esp)
	movl	$6218, 8(%esp)
	movl	$LC76, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	250(%ebx), %eax
	jmp	L920
L1343:
	movss	%xmm1, (%esp)
	call	_sqrtf
	movl	_ydimen, %eax
	xorps	%xmm2, %xmm2
	xorps	%xmm0, %xmm0
	fstps	-236(%ebp)
	movss	-236(%ebp), %xmm1
	sarl	%eax
	cvtsi2ssl	%eax, %xmm2
	jmp	L984
L1282:
	movss	%xmm0, -240(%ebp)
	movss	%xmm1, (%esp)
	call	_sqrtf
	movss	-240(%ebp), %xmm0
	movl	_ydimen, %eax
	xorps	%xmm2, %xmm2
	movss	LC0, %xmm1
	fstps	-236(%ebp)
	divss	-236(%ebp), %xmm0
	movss	%xmm0, _gshang
	mulss	%xmm0, %xmm0
	sarl	%eax
	cvtsi2ssl	%eax, %xmm2
	subss	%xmm0, %xmm1
	jmp	L987
	.cfi_endproc
LFE75:
	.p2align 4
	.globl	_wallvisible
	.def	_wallvisible;	.scl	2;	.type	32;	.endef
_wallvisible:
LFB98:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movswl	%cx, %ecx
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	sall	$5, %ecx
	movl	%edx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	_wall, %ebx
	addl	%ebx, %ecx
	movswl	8(%ecx), %eax
	movl	4(%ecx), %edx
	movl	(%ecx), %ecx
	sall	$5, %eax
	subl	%edi, %edx
	addl	%eax, %ebx
	subl	%esi, %ecx
	call	@gethiq16angle@8
	movl	4(%ebx), %edx
	movl	(%ebx), %ecx
	movl	%eax, %ebp
	subl	%edi, %edx
	subl	%esi, %ecx
	call	@gethiq16angle@8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	subl	%ebp, %eax
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	andl	$134217727, %eax
	cmpl	$67108864, %eax
	setle	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc
LFE98:
	.globl	_pr_wireframe
	.bss
	.align 4
_pr_wireframe:
	.space 4
	.globl	_pr_specularpower
	.data
	.align 4
_pr_specularpower:
	.long	1097859072
	.globl	_pr_specularmapping
	.align 4
_pr_specularmapping:
	.long	1
	.globl	_pr_specularfactor
	.align 4
_pr_specularfactor:
	.long	1065353216
	.globl	_pr_shadowfiltering
	.align 4
_pr_shadowfiltering:
	.long	1
	.globl	_pr_shadowdetail
	.align 4
_pr_shadowdetail:
	.long	4
	.globl	_pr_parallaxscale
	.align 4
_pr_parallaxscale:
	.long	1036831949
	.globl	_pr_parallaxbias
	.bss
	.align 4
_pr_parallaxbias:
	.space 4
	.globl	_pr_overridespecular
	.align 4
_pr_overridespecular:
	.space 4
	.globl	_pr_overrideparallax
	.align 4
_pr_overrideparallax:
	.space 4
	.globl	_pr_overridemodelscale
	.align 4
_pr_overridemodelscale:
	.space 4
	.globl	_pr_maxlightpriority
	.data
	.align 4
_pr_maxlightpriority:
	.long	6
	.globl	_r_pr_maxlightpasses
	.align 4
_r_pr_maxlightpasses:
	.long	5
	.globl	_pr_lighting
	.align 4
_pr_lighting:
	.long	1
	.globl	_pr_highpalookups
	.align 4
_pr_highpalookups:
	.long	1
	.globl	_pr_gpusmoothing
	.align 4
_pr_gpusmoothing:
	.long	1
	.globl	_pr_customaspect
	.bss
	.align 8
_pr_customaspect:
	.space 8
	.globl	_r_pr_constrained
	.data
	.align 4
_r_pr_constrained:
	.long	1
	.globl	_pr_buckets
	.bss
	.align 4
_pr_buckets:
	.space 4
	.globl	_pr_billboardingmode
	.data
	.align 4
_pr_billboardingmode:
	.long	1
	.globl	_pr_ati_nodepthoffset
	.bss
	.align 4
_pr_ati_nodepthoffset:
	.space 4
	.globl	_pr_ati_fboworkaround
	.align 4
_pr_ati_fboworkaround:
	.space 4
	.globl	_pr_artmapping
	.data
	.align 4
_pr_artmapping:
	.long	1
	.globl	_r_drawpolyVertsBufferLength
	.align 4
_r_drawpolyVertsBufferLength:
	.long	30000
	.globl	_r_persistentStreamBuffer
	.align 4
_r_persistentStreamBuffer:
	.long	1
	.globl	_r_vbocount
	.align 4
_r_vbocount:
	.long	64
	.globl	_r_skyzbufferhack
	.bss
	.align 4
_r_skyzbufferhack:
	.space 4
	.globl	_r_flatsky
	.data
	.align 4
_r_flatsky:
	.long	1
	.globl	_r_vertexarrays
	.align 4
_r_vertexarrays:
	.long	1
	.globl	_r_usetileshades
	.align 4
_r_usetileshades:
	.long	1
	.globl	_r_usesamplerobjects
	.align 4
_r_usesamplerobjects:
	.long	1
	.globl	_r_useindexedcolortextures
	.align 4
_r_useindexedcolortextures:
	.long	1
	.globl	_gltexmiplevel
	.bss
	.align 4
_gltexmiplevel:
	.space 4
	.globl	_gltexmaxsize
	.align 4
_gltexmaxsize:
	.space 4
	.globl	_r_spritedepthmul
	.data
	.align 4
_r_spritedepthmul:
	.long	1040187392
	.globl	_r_spritedepth
	.align 4
_r_spritedepth:
	.long	1065354055
	.globl	_shadescale_unbounded
	.bss
	.align 4
_shadescale_unbounded:
	.space 4
	.globl	_shadescale
	.data
	.align 4
_shadescale:
	.long	1065353216
	.globl	_r_parallaxskypanning
	.align 4
_r_parallaxskypanning:
	.long	1
	.globl	_r_parallaxskyclamping
	.align 4
_r_parallaxskyclamping:
	.long	1
	.globl	_r_npotwallmode
	.align 4
_r_npotwallmode:
	.long	2
	.globl	_r_glfinish
	.bss
	.align 4
_r_glfinish:
	.space 4
	.globl	_r_fullbrights
	.data
	.align 4
_r_fullbrights:
	.long	1
	.globl	_r_finishbeforeswap
	.bss
	.align 4
_r_finishbeforeswap:
	.space 4
	.globl	_r_downsize
	.align 4
_r_downsize:
	.space 4
	.globl	_r_animsmoothing
	.data
	.align 4
_r_animsmoothing:
	.long	1
	.globl	_r_polygonmode
	.bss
	.align 4
_r_polygonmode:
	.space 4
	.globl	_glusememcache
	.data
	.align 4
_glusememcache:
	.long	1
	.globl	_r_polymostDebug
	.bss
	.align 4
_r_polymostDebug:
	.space 4
	.globl	_g_videoSaturation
	.data
	.align 4
_g_videoSaturation:
	.long	1065353216
	.globl	_g_videoContrast
	.align 4
_g_videoContrast:
	.long	1065353216
	.globl	_r_screenxy
	.bss
	.align 4
_r_screenxy:
	.space 4
	.globl	_r_borderless
	.data
	.align 4
_r_borderless:
	.long	2
	.align 4
_lz4CompressionLevel:
	.long	5
	.globl	__ZL19win_performancemode.lto_priv.0
	.bss
	.align 4
__ZL19win_performancemode.lto_priv.0:
	.space 4
	.globl	_win_boostpriority
	.data
	.align 4
_win_boostpriority:
	.long	2
	.globl	__ZL21win_togglecomposition.lto_priv.0
	.bss
	.align 4
__ZL21win_togglecomposition.lto_priv.0:
	.space 4
	.globl	__ZL28polymost1ShadeInterpolateLoc.lto_priv.0
	.data
	.align 4
__ZL28polymost1ShadeInterpolateLoc.lto_priv.0:
	.long	-1
	.globl	__ZL25polymost1ShadeInterpolate.lto_priv.0
	.align 4
__ZL25polymost1ShadeInterpolate.lto_priv.0:
	.long	1065353216
.lcomm __ZL22numyaxbunchesallocated,4,4
	.globl	__ZL4gtag.lto_priv.0
	.bss
	.align 4
__ZL4gtag.lto_priv.0:
	.space 4
	.globl	__ZL3xbb.lto_priv.0
	.align 4
__ZL3xbb.lto_priv.0:
	.space 4
	.globl	__ZL3xbt.lto_priv.0
	.align 4
__ZL3xbt.lto_priv.0:
	.space 4
	.globl	__ZL3xbr.lto_priv.0
	.align 4
__ZL3xbr.lto_priv.0:
	.space 4
	.globl	__ZL3xbl.lto_priv.0
	.align 4
__ZL3xbl.lto_priv.0:
	.space 4
	.globl	_domost_rejectcount
	.align 4
_domost_rejectcount:
	.space 4
.lcomm _polymost_hitdata,20,4
	.globl	_glad_glDepthFunc
	.align 4
_glad_glDepthFunc:
	.space 4
	.globl	_ptempbuf
	.align 32
_ptempbuf:
	.space 16384
	.globl	_fsearchz
	.align 4
_fsearchz:
	.space 4
	.globl	_fsearchy
	.align 4
_fsearchy:
	.space 4
	.globl	_fsearchx
	.align 4
_fsearchx:
	.space 4
	.globl	_doeditorcheck
	.align 4
_doeditorcheck:
	.space 4
	.globl	__ZL17viewportNodeCount.lto_priv.0
	.align 4
__ZL17viewportNodeCount.lto_priv.0:
	.space 4
	.globl	__ZL3vsp.lto_priv.0
	.align 32
__ZL3vsp.lto_priv.0:
	.space 65536
	.globl	__ZL7yax_vsp.lto_priv.0
	.align 32
__ZL7yax_vsp.lto_priv.0:
	.space 2048
	.globl	__ZL7ghoriz2.lto_priv.0
	.align 4
__ZL7ghoriz2.lto_priv.0:
	.space 4
	.globl	_r_yshearing
	.align 4
_r_yshearing:
	.space 4
	.data
	.align 4
_r_shadeinterpolate:
	.long	1
	.globl	__ZL13ghorizcorrect.lto_priv.0
	.bss
	.align 4
__ZL13ghorizcorrect.lto_priv.0:
	.space 4
	.globl	_polymostcenterhoriz
	.section .rdata,"dr"
	.align 4
_polymostcenterhoriz:
	.long	100
	.globl	__ZL11gviewxrange.lto_priv.0
	.bss
	.align 4
__ZL11gviewxrange.lto_priv.0:
	.space 4
	.globl	_gyxscale
	.align 4
_gyxscale:
	.space 4
	.globl	_glprojectionhacks
	.data
	.align 4
_glprojectionhacks:
	.long	2
	.globl	_didwall
	.bss
	.align 32
_didwall:
	.space 2048
	.globl	_glad_glPopAttrib
	.align 4
_glad_glPopAttrib:
	.space 4
	.globl	_mirrors
	.align 32
_mirrors:
	.space 80
	.globl	_glad_glPolygonOffset
	.align 4
_glad_glPolygonOffset:
	.space 4
	.globl	_glad_glPushAttrib
	.align 4
_glad_glPushAttrib:
	.space 4
	.globl	_prrts
	.align 4
_prrts:
	.space 4
	.globl	_glad_glBindFramebufferEXT
	.align 4
_glad_glBindFramebufferEXT:
	.space 4
	.globl	_prlights
	.align 32
_prlights:
	.space 276480
	.globl	_pr_nullrender
	.align 4
_pr_nullrender:
	.space 4
	.globl	_gsinang2
	.align 4
_gsinang2:
	.space 4
	.globl	_gcosang2
	.align 4
_gcosang2:
	.space 4
	.globl	_viewangle
	.align 4
_viewangle:
	.space 4
	.globl	_curmodelviewmatrix
	.align 4
_curmodelviewmatrix:
	.space 4
	.globl	_prcanbucket
	.align 4
_prcanbucket:
	.space 4
.lcomm _globaloldoverridematerial,4,4
	.globl	_overridematerial
	.align 4
_overridematerial:
	.space 4
	.globl	_polymersearching
	.align 4
_polymersearching:
	.space 4
	.globl	_prsectors
	.align 32
_prsectors:
	.space 16384
	.globl	_rootmodelviewmatrix
	.align 32
_rootmodelviewmatrix:
	.space 64
	.globl	_curskymodelviewmatrix
	.align 4
_curskymodelviewmatrix:
	.space 4
.lcomm _rootskymodelviewmatrix,64,32
	.globl	_glad_glGetFloatv
	.align 4
_glad_glGetFloatv:
	.space 4
	.globl	_glad_glTranslatef
	.align 4
_glad_glTranslatef:
	.space 4
	.globl	_glad_glScalef
	.align 4
_glad_glScalef:
	.space 4
	.globl	_glad_glRotatef
	.align 4
_glad_glRotatef:
	.space 4
	.globl	__ZL12curskyangmul.lto_priv.0
	.data
	.align 4
__ZL12curskyangmul.lto_priv.0:
	.long	1065353216
	.globl	__ZL6cursky.lto_priv.0
	.bss
	.align 2
__ZL6cursky.lto_priv.0:
	.space 2
	.globl	_drawingskybox
	.align 4
_drawingskybox:
	.space 4
	.globl	_pr_shadowcount
	.data
	.align 4
_pr_shadowcount:
	.long	5
	.globl	_lightcount
	.bss
	.align 4
_lightcount:
	.space 4
	.data
	.align 4
_pr_shadows:
	.long	1
	.globl	_depth
	.bss
	.align 4
_depth:
	.space 4
	.globl	_gtang
	.section .rdata,"dr"
	.align 4
_gtang:
	.space 4
	.globl	_horizang
	.bss
	.align 4
_horizang:
	.space 4
	.globl	_gvisibility
	.align 4
_gvisibility:
	.space 4
	.data
	.align 4
__ZZL14findUnusedTilevE14lastUnusedTile:
	.long	30463
	.globl	__ZL7tempbuf.lto_priv.1
	.bss
	.align 32
__ZL7tempbuf.lto_priv.1:
	.space 16384
	.globl	_numbunches
	.align 2
_numbunches:
	.space 2
	.globl	_numscans
	.align 2
_numscans:
	.space 2
	.globl	_globalcursectnum
	.align 2
_globalcursectnum:
	.space 2
	.globl	_globalcisibility2
	.align 4
_globalcisibility2:
	.space 4
	.globl	_globalhisibility2
	.align 4
_globalhisibility2:
	.space 4
	.globl	_globalvisibility2
	.align 4
_globalvisibility2:
	.space 4
	.globl	_r_usenewshading
	.data
	.align 4
_r_usenewshading:
	.long	4
	.globl	_qglobalhoriz
	.bss
	.align 4
_qglobalhoriz:
	.space 4
	.globl	_fsinglobalang
	.align 4
_fsinglobalang:
	.space 4
	.globl	_fcosglobalang
	.align 4
_fcosglobalang:
	.space 4
	.globl	__ZL18steamworks_enabled.lto_priv.0
	.section .rdata,"dr"
__ZL18steamworks_enabled.lto_priv.0:
	.space 1
	.globl	__ZL6joydev.lto_priv.0
	.bss
	.align 4
__ZL6joydev.lto_priv.0:
	.space 4
	.globl	__ZZ34windowsGetSystemKeyboardLayoutNamevE16systemLayoutName.lto_priv.0
	.align 4
__ZZ34windowsGetSystemKeyboardLayoutNamevE16systemLayoutName.lto_priv.0:
	.space 9
	.globl	__ZZ34windowsGetSystemKeyboardLayoutNamevE11layoutSaved.lto_priv.0
	.align 4
__ZZ34windowsGetSystemKeyboardLayoutNamevE11layoutSaved.lto_priv.0:
	.space 4
	.globl	__ZL25g_singleInstanceSemaphore.lto_priv.0
	.align 4
__ZL25g_singleInstanceSemaphore.lto_priv.0:
	.space 4
	.globl	__ZL9hMMTHREAD.lto_priv.0
	.align 4
__ZL9hMMTHREAD.lto_priv.0:
	.space 4
	.globl	__ZL7appicon.lto_priv.0
	.align 4
__ZL7appicon.lto_priv.0:
	.space 4
	.globl	_kpzbufsiz
	.align 4
_kpzbufsiz:
	.space 4
	.section .rdata,"dr"
LC109:
	.ascii "r_texfilter\0"
	.align 4
LC110:
	.ascii "changes the texture filtering settings (overrides r_useindexedcolortextures)\0"
LC111:
	.ascii "r_polymostDebug\0"
	.align 4
LC112:
	.ascii "Set the verbosity of Polymost GL debug messages\0"
LC113:
	.ascii "r_detailmapping\0"
LC114:
	.ascii "enable/disable detail mapping\0"
LC115:
	.ascii "r_glowmapping\0"
LC116:
	.ascii "enable/disable glow mapping\0"
LC117:
	.ascii "r_memcache\0"
	.align 4
LC118:
	.ascii "enable/disable texture cache memory cache\0"
LC119:
	.ascii "r_polygonmode\0"
LC120:
	.ascii "debugging feature\0"
LC121:
	.ascii "r_texcache\0"
	.align 4
LC122:
	.ascii "enable/disable OpenGL compressed texture cache\0"
LC123:
	.ascii "r_animsmoothing\0"
	.align 4
LC124:
	.ascii "enable/disable model animation smoothing\0"
LC125:
	.ascii "r_anisotropy\0"
	.align 4
LC126:
	.ascii "changes the OpenGL texture anisotropy setting (requires r_useindexedcolortextures to be off)\0"
LC127:
	.ascii "r_downsize\0"
	.align 4
LC128:
	.ascii "controls downsizing factor (quality) for hires textures\0"
LC129:
	.ascii "r_finishbeforeswap\0"
	.align 4
LC130:
	.ascii "run glFinish() before swapping when 'r_glfinish' is 1 and when not using KMT vsync\0"
LC131:
	.ascii "r_fullbrights\0"
	.align 4
LC132:
	.ascii "enable/disable fullbright textures\0"
LC133:
	.ascii "r_glfinish\0"
	.align 4
LC134:
	.ascii "run glFinish() after swapping buffers when not using KMT vsync\0"
LC135:
	.ascii "r_models\0"
	.align 4
LC136:
	.ascii "enable/disable model rendering\0"
LC137:
	.ascii "r_nofog\0"
LC138:
	.ascii "enable/disable GL fog\0"
LC139:
	.ascii "r_npotwallmode\0"
	.align 4
LC140:
	.ascii "enable/disable emulation of walls with non-power-of-two height textures (Polymost, r_hightile 0)\0"
LC141:
	.ascii "r_parallaxskyclamping\0"
	.align 4
LC142:
	.ascii "enable/disable parallaxed floor/ceiling sky texture clamping\0"
LC143:
	.ascii "r_parallaxskypanning\0"
	.align 4
LC144:
	.ascii "enable/disable parallaxed floor/ceiling panning when drawing a parallaxing sky\0"
LC145:
	.ascii "r_projectionhack\0"
	.align 4
LC146:
	.ascii "enable/disable projection hack\0"
LC147:
	.ascii "r_shadeinterpolate\0"
	.align 4
LC148:
	.ascii "enable/disable shade interpolation\0"
LC149:
	.ascii "r_shadescale\0"
LC150:
	.ascii "multiplier for shading\0"
LC151:
	.ascii "r_shadescale_unbounded\0"
	.align 4
LC152:
	.ascii "enable/disable allowance of complete blackness\0"
LC153:
	.ascii "r_spritedepth\0"
LC154:
	.ascii "depth offset for sprites\0"
LC155:
	.ascii "r_spritedepthmul\0"
	.align 4
LC156:
	.ascii "depth offset multiplier for sprites\0"
LC157:
	.ascii "r_texcompr\0"
	.align 4
LC158:
	.ascii "enable/disable OpenGL texture compression: 0: off  1: hightile only  2: ART and hightile\0"
LC159:
	.ascii "r_texturemaxsize\0"
	.align 4
LC160:
	.ascii "changes the maximum OpenGL texture size limit\0"
LC161:
	.ascii "r_texturemiplevel\0"
	.align 4
LC162:
	.ascii "changes the highest OpenGL mipmap level used\0"
LC163:
	.ascii "r_useindexedcolortextures\0"
	.align 4
LC164:
	.ascii "enable/disable indexed color texture rendering (disabled by r_texfilter, disables r_anisotropy)\0"
LC165:
	.ascii "r_usenewshading\0"
	.align 4
LC166:
	.ascii "visibility/fog code: 0: orig. Polymost   1: 07/2011   2: linear 12/2012   3: no neg. start 03/2014   4: base constant on shade table 11/2017\0"
LC167:
	.ascii "r_usesamplerobjects\0"
	.align 4
LC168:
	.ascii "enable/disable OpenGL sampler objects\0"
LC169:
	.ascii "r_usetileshades\0"
	.align 4
LC170:
	.ascii "enable/disable apply shade tables to art tiles\0"
LC171:
	.ascii "r_vsync\0"
	.align 4
LC172:
	.ascii "VSync mode:\12  -1: adaptive (video driver)\12   0: disabled\12   1: enabled (video driver)\12   2: KMT\12\0"
LC173:
	.ascii "r_vertexarrays\0"
	.align 4
LC174:
	.ascii "enable/disable using vertex arrays when drawing models\0"
LC175:
	.ascii "r_yshearing\0"
LC176:
	.ascii "enable/disable y-shearing\0"
LC177:
	.ascii "r_flatsky\0"
LC178:
	.ascii "enable/disable flat skies\0"
LC179:
	.ascii "r_skyzbufferhack\0"
	.align 4
LC180:
	.ascii "enable/disable polymost sky z-buffer hack\0"
LC181:
	.ascii "r_vbocount\0"
	.align 4
LC182:
	.ascii "sets the number of Vertex Buffer Objects to use when drawing models\0"
LC183:
	.ascii "r_persistentStreamBuffer\0"
	.align 4
LC184:
	.ascii "enable/disable persistent stream buffering (requires renderer restart)\0"
LC185:
	.ascii "r_drawpolyVertsBufferLength\0"
	.align 4
LC186:
	.ascii "sets the size of the vertex buffer for polymost's streaming VBO rendering (requires renderer restart)\0"
LC187:
	.ascii "r_pr_artmapping\0"
LC188:
	.ascii "enable/disable art mapping\0"
LC189:
	.ascii "r_pr_ati_fboworkaround\0"
	.align 4
LC190:
	.ascii "enable this to workaround an ATI driver bug that causes sprite shadows to be square - you need to restart the renderer for it to take effect\0"
LC191:
	.ascii "r_pr_ati_nodepthoffset\0"
	.align 4
LC192:
	.ascii "enable this to workaround an ATI driver bug that causes sprite drawing to freeze the game on Radeon X1x00 hardware - you need to restart the renderer for it to take effect\0"
LC193:
	.ascii "r_pr_billboardingmode\0"
	.align 4
LC194:
	.ascii "face sprite display method. 0: classic mode; 1: polymost mode\0"
LC195:
	.ascii "r_pr_buckets\0"
	.align 4
LC196:
	.ascii "controls batching of primitives. 0: no batching. 1: buckets of materials.\0"
LC197:
	.ascii "r_pr_constrained\0"
	.align 4
LC198:
	.ascii "tessellation mode. 0: normal. 1: constrained Delaunay triangulation.\0"
LC199:
	.ascii "r_pr_customaspect\0"
	.align 4
LC200:
	.ascii "if non-zero, forces the 3D view aspect ratio\0"
LC201:
	.ascii "r_pr_gpusmoothing\0"
	.align 4
LC202:
	.ascii "toggles model animation interpolation\0"
LC203:
	.ascii "r_pr_highpalookups\0"
LC204:
	.ascii "enable/disable highpalookups\0"
LC205:
	.ascii "r_pr_hudangadd\0"
	.align 4
LC206:
	.ascii "overriden HUD angadd; see r_pr_overridehud\0"
LC207:
	.ascii "r_pr_hudfov\0"
	.align 4
LC208:
	.ascii "overriden HUD fov; see r_pr_overridehud\0"
LC209:
	.ascii "r_pr_hudxadd\0"
	.align 4
LC210:
	.ascii "overriden HUD xadd; see r_pr_overridehud\0"
LC211:
	.ascii "r_pr_hudyadd\0"
	.align 4
LC212:
	.ascii "overriden HUD yadd; see r_pr_overridehud\0"
LC213:
	.ascii "r_pr_hudzadd\0"
	.align 4
LC214:
	.ascii "overriden HUD zadd; see r_pr_overridehud\0"
LC215:
	.ascii "r_pr_lighting\0"
	.align 4
LC216:
	.ascii "enable/disable dynamic lights - restarts renderer\0"
LC217:
	.ascii "r_pr_maxlightpasses\0"
	.align 4
LC218:
	.ascii "the maximal amount of lights a single object can by affected by\0"
LC219:
	.ascii "r_pr_maxlightpriority\0"
	.align 4
LC220:
	.ascii "lowering that value removes less meaningful lights from the scene\0"
LC221:
	.ascii "r_pr_normalmapping\0"
	.align 4
LC222:
	.ascii "enable/disable virtual displacement mapping\0"
LC223:
	.ascii "r_pr_nullrender\0"
	.align 4
LC224:
	.ascii "disable all draws when enabled, 2: disables updates too\0"
LC225:
	.ascii "r_pr_overridehud\0"
	.align 4
LC226:
	.ascii "overrides hud model parameters with values from the pr_hud* cvars; use it to fine-tune DEF tokens\0"
LC227:
	.ascii "r_pr_overridemodelscale\0"
	.align 4
LC228:
	.ascii "overrides model scale if non-zero; use it to fine-tune DEF tokens\0"
LC229:
	.ascii "r_pr_overrideparallax\0"
	.align 4
LC230:
	.ascii "overrides parallax mapping scale and bias values with values from the pr_parallaxscale and pr_parallaxbias cvars; use it to fine-tune DEF tokens\0"
LC231:
	.ascii "r_pr_overridespecular\0"
	.align 4
LC232:
	.ascii "overrides specular material power and factor values with values from the pr_specularpower and pr_specularfactor cvars; use it to fine-tune DEF tokens\0"
LC233:
	.ascii "r_pr_parallaxbias\0"
	.align 4
LC234:
	.ascii "overriden parallax mapping offset bias\0"
LC235:
	.ascii "r_pr_parallaxscale\0"
	.align 4
LC236:
	.ascii "overriden parallax mapping offset scale\0"
LC237:
	.ascii "r_pr_shadowcount\0"
	.align 4
LC238:
	.ascii "maximal amount of shadow emitting lights on screen - you need to restart the renderer for it to take effect\0"
LC239:
	.ascii "r_pr_shadowdetail\0"
	.align 4
LC240:
	.ascii "sets the shadow map resolution - you need to restart the renderer for it to take effect\0"
LC241:
	.ascii "r_pr_shadowfiltering\0"
	.align 4
LC242:
	.ascii "enable/disable shadow edges filtering - you need to restart the renderer for it to take effect\0"
LC243:
	.ascii "r_pr_shadows\0"
	.align 4
LC244:
	.ascii "enable/disable dynamic shadows\0"
LC245:
	.ascii "r_pr_specularfactor\0"
	.align 4
LC246:
	.ascii "overriden specular material factor\0"
LC247:
	.ascii "r_pr_specularmapping\0"
	.align 4
LC248:
	.ascii "enable/disable specular mapping\0"
LC249:
	.ascii "r_pr_specularpower\0"
	.align 4
LC250:
	.ascii "overriden specular material power\0"
LC251:
	.ascii "r_pr_verbosity\0"
	.align 4
LC252:
	.ascii "verbosity level of the polymer renderer\0"
LC253:
	.ascii "r_pr_wireframe\0"
LC254:
	.ascii "toggles wireframe mode\0"
	.data
	.align 32
__ZZ21polymost_initosdfuncsvE14cvars_polymost:
	.long	LC109
	.long	LC110
	.long	_gltexfiltermode
	.long	5634
	.long	0
	.long	5
	.long	LC111
	.long	LC112
	.long	_r_polymostDebug
	.long	2
	.long	0
	.long	3
	.long	LC113
	.long	LC114
	.long	_r_detailmapping
	.long	8
	.long	0
	.long	1
	.long	LC115
	.long	LC116
	.long	_r_glowmapping
	.long	8
	.long	0
	.long	1
	.long	LC117
	.long	LC118
	.long	_glusememcache
	.long	8
	.long	0
	.long	1
	.long	LC119
	.long	LC120
	.long	_r_polygonmode
	.long	258
	.long	0
	.long	3
	.long	LC121
	.long	LC122
	.long	_glusetexcache
	.long	2
	.long	0
	.long	2
	.long	LC123
	.long	LC124
	.long	_r_animsmoothing
	.long	8
	.long	0
	.long	1
	.long	LC125
	.long	LC126
	.long	_glanisotropy
	.long	1538
	.long	1
	.long	16
	.long	LC127
	.long	LC128
	.long	_r_downsize
	.long	514
	.long	0
	.long	5
	.long	LC129
	.long	LC130
	.long	_r_finishbeforeswap
	.long	8
	.long	0
	.long	1
	.long	LC131
	.long	LC132
	.long	_r_fullbrights
	.long	8
	.long	0
	.long	1
	.long	LC133
	.long	LC134
	.long	_r_glfinish
	.long	8
	.long	0
	.long	1
	.long	LC135
	.long	LC136
	.long	_usemodels
	.long	8
	.long	0
	.long	1
	.long	LC137
	.long	LC138
	.long	_nofog
	.long	8
	.long	0
	.long	1
	.long	LC139
	.long	LC140
	.long	_r_npotwallmode
	.long	258
	.long	0
	.long	2
	.long	LC141
	.long	LC142
	.long	_r_parallaxskyclamping
	.long	8
	.long	0
	.long	1
	.long	LC143
	.long	LC144
	.long	_r_parallaxskypanning
	.long	8
	.long	0
	.long	1
	.long	LC145
	.long	LC146
	.long	_glprojectionhacks
	.long	2
	.long	0
	.long	2
	.long	LC147
	.long	LC148
	.long	_r_shadeinterpolate
	.long	8
	.long	0
	.long	1
	.long	LC149
	.long	LC150
	.long	_shadescale
	.long	1
	.long	0
	.long	10
	.long	LC151
	.long	LC152
	.long	_shadescale_unbounded
	.long	8
	.long	0
	.long	1
	.long	LC153
	.long	LC154
	.long	_r_spritedepth
	.long	257
	.long	1
	.long	10
	.long	LC155
	.long	LC156
	.long	_r_spritedepthmul
	.long	257
	.long	0
	.long	1
	.long	LC157
	.long	LC158
	.long	_glusetexcompr
	.long	2
	.long	0
	.long	2
	.long	LC159
	.long	LC160
	.long	_gltexmaxsize
	.long	258
	.long	0
	.long	4096
	.long	LC161
	.long	LC162
	.long	_gltexmiplevel
	.long	2
	.long	0
	.long	6
	.long	LC163
	.long	LC164
	.long	_r_useindexedcolortextures
	.long	5128
	.long	0
	.long	1
	.long	LC165
	.long	LC166
	.long	_r_usenewshading
	.long	514
	.long	0
	.long	4
	.long	LC167
	.long	LC168
	.long	_r_usesamplerobjects
	.long	5640
	.long	0
	.long	1
	.long	LC169
	.long	LC170
	.long	_r_usetileshades
	.long	8
	.long	0
	.long	1
	.long	LC171
	.long	LC172
	.long	_vsync
	.long	514
	.long	-1
	.long	2
	.long	LC173
	.long	LC174
	.long	_r_vertexarrays
	.long	8
	.long	0
	.long	1
	.long	LC175
	.long	LC176
	.long	_r_yshearing
	.long	8
	.long	0
	.long	1
	.long	LC177
	.long	LC178
	.long	_r_flatsky
	.long	8
	.long	0
	.long	1
	.long	LC179
	.long	LC180
	.long	_r_skyzbufferhack
	.long	8
	.long	0
	.long	1
	.long	LC181
	.long	LC182
	.long	_r_vbocount
	.long	2
	.long	1
	.long	256
	.long	LC183
	.long	LC184
	.long	_r_persistentStreamBuffer
	.long	1032
	.long	0
	.long	1
	.long	LC185
	.long	LC186
	.long	_r_drawpolyVertsBufferLength
	.long	2
	.long	8
	.long	1000000
	.long	LC187
	.long	LC188
	.long	_pr_artmapping
	.long	4104
	.long	0
	.long	1
	.long	LC189
	.long	LC190
	.long	_pr_ati_fboworkaround
	.long	264
	.long	0
	.long	1
	.long	LC191
	.long	LC192
	.long	_pr_ati_nodepthoffset
	.long	264
	.long	0
	.long	1
	.long	LC193
	.long	LC194
	.long	_pr_billboardingmode
	.long	8
	.long	0
	.long	1
	.long	LC195
	.long	LC196
	.long	_pr_buckets
	.long	1288
	.long	0
	.long	1
	.long	LC197
	.long	LC198
	.long	_r_pr_constrained
	.long	1032
	.long	0
	.long	1
	.long	LC199
	.long	LC200
	.long	_pr_customaspect
	.long	32
	.long	0
	.long	3
	.long	LC201
	.long	LC202
	.long	_pr_gpusmoothing
	.long	8
	.long	0
	.long	1
	.long	LC203
	.long	LC204
	.long	_pr_highpalookups
	.long	8
	.long	0
	.long	1
	.long	LC205
	.long	LC206
	.long	_pr_hudangadd
	.long	258
	.long	-1024
	.long	1024
	.long	LC207
	.long	LC208
	.long	_pr_hudfov
	.long	258
	.long	0
	.long	1023
	.long	LC209
	.long	LC210
	.long	_pr_hudxadd
	.long	257
	.long	-100
	.long	100
	.long	LC211
	.long	LC212
	.long	_pr_hudyadd
	.long	257
	.long	-100
	.long	100
	.long	LC213
	.long	LC214
	.long	_pr_hudzadd
	.long	257
	.long	-100
	.long	100
	.long	LC215
	.long	LC216
	.long	_pr_lighting
	.long	1026
	.long	0
	.long	2
	.long	LC217
	.long	LC218
	.long	_r_pr_maxlightpasses
	.long	514
	.long	0
	.long	32
	.long	LC219
	.long	LC220
	.long	_pr_maxlightpriority
	.long	2
	.long	0
	.long	6
	.long	LC221
	.long	LC222
	.long	_pr_normalmapping
	.long	8
	.long	0
	.long	1
	.long	LC223
	.long	LC224
	.long	_pr_nullrender
	.long	258
	.long	0
	.long	3
	.long	LC225
	.long	LC226
	.long	_pr_overridehud
	.long	264
	.long	0
	.long	1
	.long	LC227
	.long	LC228
	.long	_pr_overridemodelscale
	.long	257
	.long	0
	.long	500
	.long	LC229
	.long	LC230
	.long	_pr_overrideparallax
	.long	264
	.long	0
	.long	1
	.long	LC231
	.long	LC232
	.long	_pr_overridespecular
	.long	264
	.long	0
	.long	1
	.long	LC233
	.long	LC234
	.long	_pr_parallaxbias
	.long	257
	.long	-10
	.long	10
	.long	LC235
	.long	LC236
	.long	_pr_parallaxscale
	.long	257
	.long	-10
	.long	10
	.long	LC237
	.long	LC238
	.long	_pr_shadowcount
	.long	1026
	.long	0
	.long	64
	.long	LC239
	.long	LC240
	.long	_pr_shadowdetail
	.long	1026
	.long	0
	.long	5
	.long	LC241
	.long	LC242
	.long	_pr_shadowfiltering
	.long	1032
	.long	0
	.long	1
	.long	LC243
	.long	LC244
	.long	_pr_shadows
	.long	8
	.long	0
	.long	1
	.long	LC245
	.long	LC246
	.long	_pr_specularfactor
	.long	257
	.long	-10
	.long	1000
	.long	LC247
	.long	LC248
	.long	_pr_specularmapping
	.long	8
	.long	0
	.long	1
	.long	LC249
	.long	LC250
	.long	_pr_specularpower
	.long	257
	.long	-10
	.long	1000
	.long	LC251
	.long	LC252
	.long	_pr_verbosity
	.long	2
	.long	0
	.long	3
	.long	LC253
	.long	LC254
	.long	_pr_wireframe
	.long	264
	.long	0
	.long	1
	.globl	_g_keyRemapTable
	.bss
	.align 32
_g_keyRemapTable:
	.space 256
	.section .rdata,"dr"
LC255:
	.ascii "r_displayindex\0"
LC256:
	.ascii "index of output display\0"
	.data
	.align 4
__ZZ14baselayer_initE12displayindex:
	.long	LC255
	.long	LC256
	.long	_r_displayindex
	.long	514
	.long	0
	.long	8
	.section .rdata,"dr"
LC257:
	.ascii "lz4compressionlevel\0"
	.align 4
LC258:
	.ascii "adjust LZ4 compression level used for savegames\0"
LC259:
	.ascii "r_borderless\0"
	.align 4
LC260:
	.ascii "borderless windowed mode: 0: never  1: always  2: if resolution matches desktop\0"
LC261:
	.ascii "r_usenewaspect\0"
	.align 4
LC262:
	.ascii "enable/disable new screen aspect ratio determination code\0"
LC263:
	.ascii "r_screenaspect\0"
	.align 4
LC264:
	.ascii "if using r_usenewaspect and in fullscreen, screen aspect ratio in the form XXYY, e.g. 1609 for 16:9\0"
LC265:
	.ascii "r_fpgrouscan\0"
	.align 4
LC266:
	.ascii "use floating-point numbers for slope rendering\0"
LC267:
	.ascii "r_hightile\0"
	.align 4
LC268:
	.ascii "enable/disable hightile texture rendering\0"
LC269:
	.ascii "r_maxspritesonscreen\0"
	.align 4
LC270:
	.ascii "maximum number of sprites to draw per frame\0"
LC271:
	.ascii "r_novoxmips\0"
	.align 4
LC272:
	.ascii "turn off/on the use of mipmaps when rendering 8-bit voxels\0"
LC273:
	.ascii "r_rotatespriteinterp\0"
	.align 4
LC274:
	.ascii "interpolate repeated rotatesprite calls\0"
LC275:
	.ascii "r_voxels\0"
	.align 4
LC276:
	.ascii "enable/disable automatic sprite->voxel rendering\0"
LC277:
	.ascii "r_maxfps\0"
LC278:
	.ascii "limit the frame rate\0"
LC279:
	.ascii "r_tror_nomaskpass\0"
	.align 4
LC280:
	.ascii "enable/disable additional pass in TROR software rendering\0"
LC281:
	.ascii "vid_gamma\0"
LC282:
	.ascii "gamma/brightness correction\0"
LC283:
	.ascii "vid_contrast\0"
LC284:
	.ascii "contrast correction\0"
LC285:
	.ascii "vid_saturation\0"
LC286:
	.ascii "saturation correction\0"
LC287:
	.ascii "screenshot_dir\0"
LC288:
	.ascii "Screenshot save path\0"
	.data
	.align 32
__ZZ14baselayer_initE12cvars_engine:
	.long	LC257
	.long	LC258
	.long	_lz4CompressionLevel
	.long	2
	.long	1
	.long	32
	.long	LC259
	.long	LC260
	.long	_r_borderless
	.long	1026
	.long	0
	.long	2
	.long	LC261
	.long	LC262
	.long	_r_usenewaspect
	.long	8
	.long	0
	.long	1
	.long	LC263
	.long	LC264
	.long	_r_screenxy
	.long	260
	.long	0
	.long	9999
	.long	LC265
	.long	LC266
	.long	_r_fpgrouscan
	.long	8
	.long	0
	.long	1
	.long	LC267
	.long	LC268
	.long	_usehightile
	.long	8
	.long	0
	.long	1
	.long	LC269
	.long	LC270
	.long	_maxspritesonscreen
	.long	2
	.long	0
	.long	4096
	.long	LC271
	.long	LC272
	.long	_novoxmips
	.long	8
	.long	0
	.long	1
	.long	LC273
	.long	LC274
	.long	_r_rotatespriteinterp
	.long	8
	.long	0
	.long	1
	.long	LC275
	.long	LC276
	.long	_usevoxels
	.long	8
	.long	0
	.long	1
	.long	LC277
	.long	LC278
	.long	_r_maxfps
	.long	514
	.long	-2
	.long	1000
	.long	LC279
	.long	LC280
	.long	_r_tror_nomaskpass
	.long	8
	.long	0
	.long	1
	.long	LC281
	.long	LC282
	.long	_g_videoGamma
	.long	513
	.long	0
	.long	2
	.long	LC283
	.long	LC284
	.long	_g_videoContrast
	.long	513
	.long	0
	.long	2
	.long	LC285
	.long	LC286
	.long	_g_videoSaturation
	.long	513
	.long	0
	.long	2
	.long	LC287
	.long	LC288
	.long	_screenshot_dir
	.long	16
	.long	0
	.long	255
	.globl	_bfdivtable32
	.bss
	.align 32
_bfdivtable32:
	.space 81920
	.section .rdata,"dr"
LC289:
	.ascii "Server 2008\0"
LC290:
	.ascii "Server 2008 R2\0"
LC291:
	.ascii "Server 2012\0"
LC292:
	.ascii "Server 2012 R2\0"
	.align 4
__ZZL19windowsPrintVersionvE6server:
	.long	LC289
	.long	LC290
	.long	LC291
	.long	LC292
LC293:
	.ascii "Vista\0"
LC294:
	.ascii "7\0"
LC295:
	.ascii "8\0"
LC296:
	.ascii "8.1\0"
	.align 4
__ZZL19windowsPrintVersionvE6client:
	.long	LC293
	.long	LC294
	.long	LC295
	.long	LC296
	.globl	__ZL19win_systemtimermode.lto_priv.0
	.data
	.align 4
__ZL19win_systemtimermode.lto_priv.0:
	.long	1
	.globl	__ZL26ntdll_NtSetTimerResolution.lto_priv.0
	.bss
	.align 4
__ZL26ntdll_NtSetTimerResolution.lto_priv.0:
	.space 4
	.globl	__ZL28ntdll_NtQueryTimerResolution.lto_priv.0
	.align 4
__ZL28ntdll_NtQueryTimerResolution.lto_priv.0:
	.space 4
	.globl	__ZL6hNTDLL.lto_priv.0
	.align 4
__ZL6hNTDLL.lto_priv.0:
	.space 4
	.globl	__ZL36avrt_AvRevertMmThreadCharacteristics.lto_priv.0
	.align 4
__ZL36avrt_AvRevertMmThreadCharacteristics.lto_priv.0:
	.space 4
	.globl	__ZL26avrt_AvSetMmThreadPriority.lto_priv.0
	.align 4
__ZL26avrt_AvSetMmThreadPriority.lto_priv.0:
	.space 4
	.globl	__ZL33avrt_AvSetMmThreadCharacteristics.lto_priv.0
	.align 4
__ZL33avrt_AvSetMmThreadCharacteristics.lto_priv.0:
	.space 4
	.globl	__ZL5hAVRT.lto_priv.0
	.align 4
__ZL5hAVRT.lto_priv.0:
	.space 4
	.globl	__ZL21systemPowerSchemeGUID.lto_priv.0
	.align 4
__ZL21systemPowerSchemeGUID.lto_priv.0:
	.space 4
	.globl	__ZL29powrprof_PowerSetActiveScheme.lto_priv.0
	.align 4
__ZL29powrprof_PowerSetActiveScheme.lto_priv.0:
	.space 4
.lcomm __ZL29powrprof_PowerGetActiveScheme,4,4
.lcomm __ZL9hPOWRPROF,4,4
	.section .rdata,"dr"
LC297:
	.ascii "win_togglecomposition\0"
	.align 4
LC298:
	.ascii "disables Windows Vista/7 DWM composition\0"
LC299:
	.ascii "win_boostpriority\0"
	.align 4
LC300:
	.ascii "Windows process priority class:\12   0: do not alter process priority\12   1: ABOVE NORMAL when game has focus, IDLE when interacting with other programs   2: HIGH when game has focus, BELOW NORMAL when interacting with other programs\12\0"
LC301:
	.ascii "win_performancemode\0"
	.align 4
LC302:
	.ascii "Windows performance mode:\12   0: do not alter performance mode\12   1: use HIGH PERFORMANCE power plan when game has focus\0"
	.data
	.align 32
__ZZ19windowsPlatformInitvE9cvars_win:
	.long	LC297
	.long	LC298
	.long	__ZL21win_togglecomposition.lto_priv.0
	.long	8
	.long	0
	.long	1
	.long	LC299
	.long	LC300
	.long	_win_boostpriority
	.long	2
	.long	0
	.long	2
	.long	LC301
	.long	LC302
	.long	__ZL19win_performancemode.lto_priv.0
	.long	8
	.long	0
	.long	1
	.section .rdata,"dr"
LC303:
	.ascii "win_systemtimermode\0"
	.align 4
LC304:
	.ascii "Windows timer interrupt resolution:\12   0: 1.0ms\12   1: 0.5ms low-latency\12This option has no effect when running on battery power.\0"
	.data
	.align 4
__ZZ19windowsPlatformInitvE14win_timer_cvar:
	.long	LC303
	.long	LC304
	.long	__ZL19win_systemtimermode.lto_priv.0
	.long	8
	.long	0
	.long	1
.lcomm __ZL16g_cpuBrandString,48,32
	.globl	_cpu
	.bss
	.align 4
_cpu:
	.space 12
.lcomm __ZL19g_cpuVendorIDString,16,4
	.globl	_lockcount
	.align 4
_lockcount:
	.space 4
	.globl	_novideo
_novideo:
	.space 1
.lcomm __ZL12m_initprintf,4,4
.lcomm __ZL10loadsprite,4,4
.lcomm __ZL8loadwall,4,4
.lcomm __ZL10loadsector,4,4
.lcomm __ZL11tempictoidx,4,4
.lcomm __ZL8sectoidx,4,4
.lcomm __ZL14spritesmooth_s,166400,32
	.globl	_spritesmooth
	.align 4
_spritesmooth:
	.space 4
.lcomm __ZL11spriteext_s,1064960,32
.lcomm __ZL9tsprite_s,180224,32
.lcomm __ZL8sprite_s,720896,32
.lcomm __ZL9wallext_s,16384,32
.lcomm __ZL6wall_s,540672,32
.lcomm __ZL8sector_s,163920,32
	.globl	_tabledivide64_noinline
	.section .rdata,"dr"
	.align 4
_tabledivide64_noinline:
	.long	_tabledivide64.lto_priv.12
.lcomm __ZL15distrecipagecnt,4,4
.lcomm __ZL14distrecipcache,36,32
	.globl	__ZL13oviewingrange.lto_priv.0
	.data
	.align 4
__ZL13oviewingrange.lto_priv.0:
	.long	-1
	.globl	__ZL7oxdimen.lto_priv.0
	.align 4
__ZL7oxdimen.lto_priv.0:
	.long	-1
	.globl	_oxyaspect
	.align 4
_oxyaspect:
	.long	-1
	.globl	_pr_fov
	.section .rdata,"dr"
	.align 4
_pr_fov:
	.long	512
	.globl	_glad_glClear
	.bss
	.align 4
_glad_glClear:
	.space 4
.lcomm __ZZ28polymost_dorotatespritemodeliiissacihhiE10onumframes,4,4
	.globl	_fydimen
	.align 4
_fydimen:
	.space 4
	.data
	.align 4
_pr_hudfov:
	.long	512
	.globl	_gsinang
	.bss
	.align 4
_gsinang:
	.space 4
	.globl	_gcosang
	.align 4
_gcosang:
	.space 4
.lcomm _pr_hudangadd,4,4
	.globl	_globalang
	.align 2
_globalang:
	.space 2
.lcomm _pr_hudzadd,4,4
.lcomm _pr_hudyadd,4,4
.lcomm _pr_hudxadd,4,4
.lcomm _pr_overridehud,4,4
	.globl	_fviewingrange
	.align 4
_fviewingrange:
	.space 4
	.globl	_gxyaspect
	.align 8
_gxyaspect:
	.space 8
	.globl	_rotatespritematerialbits
	.align 4
_rotatespritematerialbits:
	.space 4
	.globl	_glad_glPopMatrix
	.align 4
_glad_glPopMatrix:
	.space 4
	.globl	_nofog
	.align 4
_nofog:
	.space 4
	.globl	__ZL10pow2xsplit.lto_priv.0
	.align 4
__ZL10pow2xsplit.lto_priv.0:
	.space 4
	.globl	__ZL4otex.lto_priv.0
	.align 8
__ZL4otex.lto_priv.0:
	.space 24
	.globl	__ZL4ytex.lto_priv.0
	.align 8
__ZL4ytex.lto_priv.0:
	.space 24
	.globl	__ZL4xtex.lto_priv.0
	.align 8
__ZL4xtex.lto_priv.0:
	.space 24
	.globl	__ZL14drawpoly_blend.lto_priv.0
__ZL14drawpoly_blend.lto_priv.0:
	.space 1
	.globl	__ZL14drawpoly_alpha.lto_priv.0
	.align 4
__ZL14drawpoly_alpha.lto_priv.0:
	.space 4
	.globl	_pr_normalmapping
	.data
	.align 4
_pr_normalmapping:
	.long	1
	.globl	_r_glowmapping
	.align 4
_r_glowmapping:
	.long	1
	.globl	_r_detailmapping
	.align 4
_r_detailmapping:
	.long	1
	.globl	_glad_glLoadMatrixf
	.bss
	.align 4
_glad_glLoadMatrixf:
	.space 4
	.globl	_gvrcorrection
	.data
	.align 4
_gvrcorrection:
	.long	1065353216
	.globl	_gstang
	.bss
	.align 4
_gstang:
	.space 4
	.globl	_gctang
	.align 4
_gctang:
	.space 4
	.globl	_gshang
	.align 4
_gshang:
	.space 4
	.globl	_gchang
	.align 4
_gchang:
	.space 4
	.globl	__ZL6ghoriz.lto_priv.0
	.align 4
__ZL6ghoriz.lto_priv.0:
	.space 4
	.globl	_grhalfxdown10x
	.align 4
_grhalfxdown10x:
	.space 4
	.globl	_grhalfxdown10
	.align 4
_grhalfxdown10:
	.space 4
	.globl	_fydim
	.align 4
_fydim:
	.space 4
	.globl	_ghalfy
	.align 4
_ghalfy:
	.space 4
	.globl	_fxdim
	.align 4
_fxdim:
	.space 4
	.globl	_ghalfx
	.align 4
_ghalfx:
	.space 4
	.globl	_globalclipdist
	.align 4
_globalclipdist:
	.space 4
	.globl	_globvis2
	.align 4
_globvis2:
	.space 4
	.globl	_glad_glPushMatrix
	.align 4
_glad_glPushMatrix:
	.space 4
.lcomm __ZL4nry2,32,32
.lcomm __ZL4nrx2,32,32
.lcomm __ZL4nrx1,32,32
.lcomm __ZL4nry1,32,32
	.data
	.align 4
_r_rotatespriteinterp:
	.long	1
.lcomm __ZZL14dorotatespriteiiissacihhiiiiiE6smooth,13312,32
.lcomm __ZGVZL14dorotatespriteiiissacihhiiiiiE6smooth,8,8
	.globl	_g_rotatespriteNoWidescreen
	.section .rdata,"dr"
	.align 4
_g_rotatespriteNoWidescreen:
	.space 4
	.globl	_mdpause
	.set	_mdpause,_g_rotatespriteNoWidescreen
	.globl	_natfree
	.set	_natfree,_g_rotatespriteNoWidescreen
	.globl	__ZL9ErrorCode.lto_priv.0
	.set	__ZL9ErrorCode.lto_priv.0,_g_rotatespriteNoWidescreen
	.globl	__ZZ15SDLDrv_PCM_InitPiS_PvE4done.lto_priv.0
	.set	__ZZ15SDLDrv_PCM_InitPiS_PvE4done.lto_priv.0,_g_rotatespriteNoWidescreen
	.align 4
LC0:
	.long	1065353216
	.align 4
LC1:
	.long	-1082130432
	.align 4
LC2:
	.long	-1194213376
	.align 4
LC5:
	.long	813694976
	.align 4
LC8:
	.long	931135488
	.align 16
LC9:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 4
LC10:
	.long	1003277517
	.align 4
LC11:
	.long	1008981770
	.align 4
LC12:
	.long	1159725056
	.align 4
LC13:
	.long	1157627904
	.align 4
LC16:
	.long	1182793728
	.align 4
LC17:
	.long	1179438285
	.align 4
LC18:
	.long	1076090634
	.align 4
LC19:
	.long	977866715
	.align 4
LC20:
	.long	998277249
	.align 4
LC22:
	.long	1056964608
	.align 4
LC23:
	.long	1149239296
	.align 8
LC25:
	.long	1717986918
	.long	1072064102
	.align 4
LC26:
	.long	1132396544
	.align 8
LC72:
	.long	1413754136
	.long	1074340347
	.align 4
LC73:
	.long	981467136
	.set	LC74,LC9
	.align 4
LC77:
	.long	950079408
	.align 4
LC78:
	.long	1043595264
	.align 4
LC80:
	.long	1120403456
	.align 4
LC83:
	.long	1106247680
	.align 4
LC84:
	.long	1084227584
	.align 4
LC85:
	.long	-1020002304
	.align 4
LC86:
	.long	1135869952
	.align 4
LC87:
	.long	981668463
	.align 4
LC88:
	.long	1031798784
	.align 4
LC92:
	.long	914358272
	.align 4
LC95:
	.long	1082130432
	.align 4
LC96:
	.long	1059256707
	.align 4
LC97:
	.long	1059248215
	.align 4
LC98:
	.long	1064514355
	.align 4
LC99:
	.long	1075838976
	.align 4
LC100:
	.long	922746880
	.align 4
LC101:
	.long	799014912
	.align 4
LC102:
	.long	855638016
	.align 4
LC103:
	.long	1036831949
	.align 4
LC104:
	.long	1068149419
	.align 4
LC105:
	.long	1098907648
	.align 4
LC106:
	.long	1061158912
	.align 4
LC107:
	.long	-1033556256
	.def	___udivdi3;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_tabledivide64.lto_priv.9;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_dorotspr_handle_bit2;	.scl	2;	.type	32;	.endef
	.def	_rhlineasm4;	.scl	2;	.type	32;	.endef
	.def	__Z12tileLoadHighi;	.scl	2;	.type	32;	.endef
	.def	_setupqrhlineasm4;	.scl	2;	.type	32;	.endef
	.def	_qrhlineasm4;	.scl	2;	.type	32;	.endef
	.def	_rmhlineasm4;	.scl	2;	.type	32;	.endef
	.def	_tsetupspritevline;	.scl	2;	.type	32;	.endef
	.def	_fixtransluscence;	.scl	2;	.type	32;	.endef
	.def	_settransreverse;	.scl	2;	.type	32;	.endef
	.def	_tspritevline;	.scl	2;	.type	32;	.endef
	.def	_tileLoad.isra.0;	.scl	2;	.type	32;	.endef
	.def	_setuprhlineasm4;	.scl	2;	.type	32;	.endef
	.def	_setuprmhlineasm4;	.scl	2;	.type	32;	.endef
	.def	_setupmvlineasm;	.scl	2;	.type	32;	.endef
	.def	_vlineasm4;	.scl	2;	.type	32;	.endef
	.def	_settransnormal;	.scl	2;	.type	32;	.endef
	.def	__Z26buildgl_outputDebugMessagehPKcz.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z19buildgl_setViewportiiii;	.scl	2;	.type	32;	.endef
	.def	__Z17polymost_setClampc;	.scl	2;	.type	32;	.endef
	.def	__Z22polymost_setVisibilityf;	.scl	2;	.type	32;	.endef
	.def	_inthash_find;	.scl	2;	.type	32;	.endef
	.def	_inthash_add;	.scl	2;	.type	32;	.endef
	.def	_handle_blend;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.11;	.scl	2;	.type	32;	.endef
	.def	_setupvlineasm;	.scl	2;	.type	32;	.endef
	.def	__ZL21polymost_updaterotmatv.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_mvlineasm4;	.scl	2;	.type	32;	.endef
	.def	_mvlineasm1;	.scl	2;	.type	32;	.endef
	.def	_prevlineasm1;	.scl	2;	.type	32;	.endef
	.def	_lrintf;	.scl	2;	.type	32;	.endef
	.def	__ZL17polymost_drawpolyPK4vec2IfEii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL23polymost_identityrotmatv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_polymer_setaspect;	.scl	2;	.type	32;	.endef
	.def	_polymer_drawsprite;	.scl	2;	.type	32;	.endef
	.def	_polymer_unbindmaterial.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z18buildgl_bindBufferjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_polymer_inb4rotatesprite;	.scl	2;	.type	32;	.endef
	.def	_tanf;	.scl	2;	.type	32;	.endef
	.def	_polymost_mddraw;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.12;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZL25osdcmd_cvar_set_baselayerPK13osdfuncparm_t.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z15osdcmd_cvar_setPK13osdfuncparm_t;	.scl	2;	.type	32;	.endef
	.def	__Z16OSD_RegisterCvarP13osdcvardata_tPFiPK13osdfuncparm_tE;	.scl	2;	.type	32;	.endef
	.def	__ZL19osdcmd_displayindexPK13osdfuncparm_t.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL19osd_findexactsymbolPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL21osdfunc_setrendermodePK13osdfuncparm_t.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL24osdcmd_cvar_set_polymostPK13osdfuncparm_t.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_osdcmd_glinfo;	.scl	2;	.type	32;	.endef
	.def	__ZL26osdcmd_win_systemtimermodePK13osdfuncparm_t.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	__Z20sdlayer_checkversionv;	.scl	2;	.type	32;	.endef
	.def	_SDL_WasInit;	.scl	2;	.type	32;	.endef
	.def	_SDL_InitSubSystem;	.scl	2;	.type	32;	.endef
	.def	_SDL_StopTextInput;	.scl	2;	.type	32;	.endef
	.def	_SDL_SetThreadPriority;	.scl	2;	.type	32;	.endef
	.def	__Z9timerIniti.isra.0;	.scl	2;	.type	32;	.endef
	.def	_mmxoverlay;	.scl	2;	.type	32;	.endef
	.def	_videoGetModes.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_initcrc16;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_initprintf;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	_SDL_GL_LoadLibrary;	.scl	2;	.type	32;	.endef
	.def	_wm_setapptitle;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetNumVideoDisplays;	.scl	2;	.type	32;	.endef
	.def	_strcat;	.scl	2;	.type	32;	.endef
	.def	__ZL13osd_addsymbolPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z8OSD_Initv;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetError;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru13log_and_abortEiPKcS1_jS1_z.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_hicinit;	.scl	2;	.type	32;	.endef
	.def	_kclose;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_mouseGrabInput;	.scl	2;	.type	32;	.endef
	.def	_SDL_GameControllerClose;	.scl	2;	.type	32;	.endef
	.def	_SDL_JoystickClose;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	__Z24windowsSetKeyboardLayoutPKci.part.0;	.scl	2;	.type	32;	.endef
	.def	_SDL_FreeSurface;	.scl	2;	.type	32;	.endef
	.def	_SDL_GL_UnloadLibrary;	.scl	2;	.type	32;	.endef
	.def	_SDL_Quit;	.scl	2;	.type	32;	.endef
	.def	_polymost_glreset;	.scl	2;	.type	32;	.endef
	.def	_freeallmodels;	.scl	2;	.type	32;	.endef
	.def	_polymer_uninit;	.scl	2;	.type	32;	.endef
	.def	__Z34windowsGetSystemKeyboardLayoutNamev.part.0;	.scl	2;	.type	32;	.endef
	.def	_sincosf;	.scl	2;	.type	32;	.endef
	.def	_animateoffs;	.scl	2;	.type	32;	.endef
	.def	_videoBeginDrawing;	.scl	2;	.type	32;	.endef
	.def	__ZL17classicScanSectors.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL18classicDrawBunchesi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_wallfront;	.scl	2;	.type	32;	.endef
	.def	_videoEndDrawing;	.scl	2;	.type	32;	.endef
	.def	_tileUpdatePicSiz;	.scl	2;	.type	32;	.endef
	.def	__ZL13resizeglcheckv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_updatesector;	.scl	2;	.type	32;	.endef
	.def	_yax_tweakpicnums.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_polymer_glinit;	.scl	2;	.type	32;	.endef
	.def	_atan2f;	.scl	2;	.type	32;	.endef
	.def	_texcache_fetch;	.scl	2;	.type	32;	.endef
	.def	_polymer_removelight.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_polymer_culllight.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_polymer_processspotlight.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_hitscan;	.scl	2;	.type	32;	.endef
	.def	_polymost_scansector.part.0;	.scl	2;	.type	32;	.endef
	.def	__ZL17polymost_drawallsi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL19polymost_bunchfrontii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL18get_projhack_ratiov.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_atanf;	.scl	2;	.type	32;	.endef
	.def	_polymer_displayrooms.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_polymer_updatesector.part.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	_polymer_drawsector.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_polymer_updatewall.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_polymer_drawwall.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_polymer_emptybuckets.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_getzsofslopeptr;	.scl	2;	.type	32;	.endef
	.def	_sqrtf;	.scl	2;	.type	32;	.endef
	.def	@gethiq16angle@8;	.scl	2;	.type	32;	.endef
